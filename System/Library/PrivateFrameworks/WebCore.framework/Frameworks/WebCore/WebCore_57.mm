void webrtc::SctpDataChannel::SendControlMessage(webrtc::SctpDataChannel *this, const webrtc::CopyOnWriteBuffer *a2)
{
  v3 = *(this + 56) == 1;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v17 = *(this + 101) | v3;
  v16 = 2;
  v4 = *(this + 26);
  if (v4 && *v4 == 1)
  {
    v5 = *(this + 27);
    if ((*(this + 26) & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v5 = 0;
    if ((*(this + 26) & 1) == 0)
    {
LABEL_18:
      __break(1u);
      return;
    }
  }

  (**v5)(v14);
  if (LODWORD(v14[0]))
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)11,std::string_view const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)11,std::string_view const*> const&)::t, v6, v7, v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sctp_data_channel.cc");
    }

    operator new();
  }

  v13 = *(this + 56);
  if (v13 == 1)
  {
    *(this + 56) = 3;
    if ((v15 & 0x80000000) == 0)
    {
      return;
    }

LABEL_10:
    operator delete(v14[1]);
    return;
  }

  if (v13 == 2)
  {
    *(this + 56) = 4;
  }

  if (v15 < 0)
  {
    goto LABEL_10;
  }
}

uint64_t webrtc::SctpDataChannel::DeliverQueuedReceivedData(uint64_t this)
{
  if (*(this + 112))
  {
    v1 = this;
    if (*(this + 128) == 1)
    {
      for (i = *(this + 272); i; i = *(v1 + 272))
      {
        v3 = *(v1 + 240);
        v4 = *(v1 + 264);
        v5 = *(v3 + ((v4 >> 6) & 0x3FFFFFFFFFFFFF8));
        v6 = *(v5 + 8 * (v4 & 0x1FF));
        v7 = *(v1 + 280) - v6[2];
        *(v5 + 8 * (v4++ & 0x1FF)) = 0;
        *(v1 + 272) = i - 1;
        *(v1 + 280) = v7;
        *(v1 + 264) = v4;
        if (v4 >= 0x400)
        {
          operator delete(*v3);
          *(v1 + 240) += 8;
          *(v1 + 264) -= 512;
        }

        ++*(v1 + 192);
        *(v1 + 200) += v6[2];
        (*(**(v1 + 112) + 8))(*(v1 + 112), v6);
        v8 = *v6;
        if (*v6 && atomic_fetch_add((v8 + 24), 0xFFFFFFFF) == 1)
        {
          v9 = *(v8 + 16);
          *(v8 + 16) = 0;
          if (v9)
          {
            MEMORY[0x2743DA520](v9, 0x1000C8077774924);
          }

          MEMORY[0x2743DA540](v8, 0x1010C40EE34DA14);
        }

        this = MEMORY[0x2743DA540](v6, 0x1020C4059E634C0);
      }
    }
  }

  return this;
}

void webrtc::SctpDataChannel::ObserverAdapter::OnStateChange(webrtc::SctpDataChannel::ObserverAdapter *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    atomic_fetch_add_explicit(v1, 1u, memory_order_relaxed);
  }

  operator new();
}

void webrtc::SctpDataChannel::ObserverAdapter::OnMessage(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 1u, memory_order_relaxed);
  }

  if (*a2)
  {
    atomic_fetch_add_explicit((*a2 + 24), 1u, memory_order_relaxed);
  }

  operator new();
}

void webrtc::SctpDataChannel::ObserverAdapter::OnBufferedAmountChange(webrtc::SctpDataChannel::ObserverAdapter *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    atomic_fetch_add_explicit(v1, 1u, memory_order_relaxed);
  }

  operator new();
}

void webrtc::SctpDataChannel::ObserverAdapter::~ObserverAdapter(webrtc::SctpDataChannel::ObserverAdapter *this)
{
  *this = &unk_28829EC58;
  v2 = *(this + 5);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  v3 = *(this + 4);
  *(v3 + 4) = 0;
  if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }
}

{
  *this = &unk_28829EC58;
  v2 = *(this + 5);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  v3 = *(this + 4);
  *(v3 + 4) = 0;
  if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  JUMPOUT(0x2743DA540);
}

uint64_t *absl::internal_any_invocable::LocalInvoker<false,void,webrtc::SctpDataChannel::ObserverAdapter::OnStateChange(void)::{lambda(void)#2} &&>(uint64_t *result)
{
  v1 = *result;
  v2 = result[1];
  *(v2 + 8) = 0;
  v3 = *v2;
  v3[6] = v2;
  if (v3[1])
  {
    if (*(v3[5] + 4) == 1)
    {
      return (***(v1 + 8))(*(v1 + 8));
    }
  }

  return result;
}

uint64_t absl::internal_any_invocable::LocalManagerNontrivial<webrtc::SctpDataChannel::ObserverAdapter::OnStateChange(void)::{lambda(void)#2}>(uint64_t result, __int128 *a2, _OWORD *a3)
{
  if ((result & 1) == 0)
  {
    v3 = *a2;
    *(a2 + 1) = 0;
    *a3 = v3;
  }

  v4 = *(a2 + 1);
  *(a2 + 1) = 0;
  if (v4)
  {
    if ((*(v4 + 8) & 1) == 0)
    {
      *(*v4 + 48) = 0;
    }

    if (*(v4 + 47) < 0)
    {
      operator delete(*(v4 + 24));
    }

    JUMPOUT(0x2743DA540);
  }

  return result;
}

uint64_t **absl::internal_any_invocable::RemoteInvoker<false,void,webrtc::SctpDataChannel::ObserverAdapter::OnMessage(webrtc::DataBuffer const&)::{lambda(void)#2} &&>(uint64_t **result)
{
  v1 = *result;
  v2 = **result;
  v3 = (*result)[5];
  *(v3 + 8) = 0;
  v4 = *v3;
  v4[6] = v3;
  if (v4[1])
  {
    if (*(v4[5] + 4) == 1)
    {
      return (*(**(v2 + 8) + 8))(*(v2 + 8), v1 + 1);
    }
  }

  return result;
}

uint64_t absl::internal_any_invocable::RemoteManagerNontrivial<webrtc::SctpDataChannel::ObserverAdapter::OnMessage(webrtc::DataBuffer const&)::{lambda(void)#2}>(uint64_t result, uint64_t *a2, void *a3)
{
  v3 = *a2;
  if (result)
  {
    if (v3)
    {
      v4 = *(v3 + 40);
      *(v3 + 40) = 0;
      if (v4)
      {
        if ((*(v4 + 8) & 1) == 0)
        {
          *(*v4 + 48) = 0;
        }

        if (*(v4 + 47) < 0)
        {
          operator delete(*(v4 + 24));
        }

        MEMORY[0x2743DA540](v4, 0x1072C4086750BB0);
      }

      v5 = *(v3 + 8);
      if (v5 && atomic_fetch_add((v5 + 24), 0xFFFFFFFF) == 1)
      {
        v6 = *(v5 + 16);
        *(v5 + 16) = 0;
        if (v6)
        {
          MEMORY[0x2743DA520](v6, 0x1000C8077774924);
        }

        MEMORY[0x2743DA540](v5, 0x1010C40EE34DA14);
      }

      JUMPOUT(0x2743DA540);
    }
  }

  else
  {
    *a3 = v3;
  }

  return result;
}

uint64_t **absl::internal_any_invocable::RemoteInvoker<false,void,webrtc::SctpDataChannel::ObserverAdapter::OnBufferedAmountChange(unsigned long long)::{lambda(void)#2} &&>(uint64_t **result)
{
  v1 = *result;
  v2 = **result;
  v3 = (*result)[2];
  *(v3 + 8) = 0;
  v4 = *v3;
  v4[6] = v3;
  if (v4[1])
  {
    if (*(v4[5] + 4) == 1)
    {
      return (*(**(v2 + 8) + 16))(*(v2 + 8), v1[1]);
    }
  }

  return result;
}

uint64_t absl::internal_any_invocable::RemoteManagerNontrivial<webrtc::SctpDataChannel::ObserverAdapter::OnBufferedAmountChange(unsigned long long)::{lambda(void)#2}>(uint64_t result, uint64_t *a2, void *a3)
{
  v3 = *a2;
  if (result)
  {
    if (v3)
    {
      v4 = *(v3 + 16);
      *(v3 + 16) = 0;
      if (v4)
      {
        if ((*(v4 + 8) & 1) == 0)
        {
          *(*v4 + 48) = 0;
        }

        if (*(v4 + 47) < 0)
        {
          operator delete(*(v4 + 24));
        }

        MEMORY[0x2743DA540](v4, 0x1072C4086750BB0);
      }

      JUMPOUT(0x2743DA540);
    }
  }

  else
  {
    *a3 = v3;
  }

  return result;
}

uint64_t absl::internal_any_invocable::LocalManagerNontrivial<webrtc::SctpDataChannel::ObserverAdapter::DeleteOnSignalingThread(std::unique_ptr<webrtc::SctpDataChannel::ObserverAdapter>)::{lambda(void)#1}>(char a1, uint64_t *a2, uint64_t *a3)
{
  if ((a1 & 1) == 0)
  {
    v3 = *a2;
    *a2 = 0;
    *a3 = v3;
  }

  result = *a2;
  *a2 = 0;
  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

char *std::vector<webrtc::StreamId>::emplace<webrtc::StreamId const&>(uint64_t a1, char *__src, __int16 *a3)
{
  v6 = *a1;
  v5 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v5 < v7)
  {
    if (__src != v5)
    {
      v8 = *a3;
      v9 = __src + 2;
      if (v5 < 2)
      {
        *(a1 + 8) = v5;
        if (v5 == v9)
        {
LABEL_27:
          *__src = v8;
          return __src;
        }
      }

      else
      {
        *v5 = *(v5 - 1);
        *(a1 + 8) = v5 + 2;
        if (v5 == v9)
        {
          goto LABEL_27;
        }
      }

      memmove(__src + 2, __src, v5 - v9);
      goto LABEL_27;
    }

    if (v6)
    {
      *v5 = *a3;
      *(a1 + 8) = v5 + 2;
      return __src;
    }

    goto LABEL_32;
  }

  v10 = (v5 - v6) >> 1;
  if (v10 <= -2)
  {
    goto LABEL_33;
  }

  v11 = v7 - v6;
  if (v11 <= v10 + 1)
  {
    v12 = v10 + 1;
  }

  else
  {
    v12 = v11;
  }

  if (v11 >= 0x7FFFFFFFFFFFFFFELL)
  {
    v13 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v13 = v12;
  }

  if (v13)
  {
    if ((v13 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_34;
  }

  v15 = __src - v6;
  v16 = (__src - v6) >> 1;
  v17 = (2 * v16);
  if (!v16)
  {
    if (v15 < 1)
    {
      if (v6 == __src)
      {
        v15 = 1;
      }

      if ((v15 & 0x8000000000000000) == 0)
      {
        operator new();
      }

LABEL_34:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    v17 = (v17 - (((v15 >> 1) + 1) & 0x7FFFFFFFFFFFFFFELL));
  }

  if (!v17)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  *v17 = *a3;
  memcpy(v17 + 1, __src, *(a1 + 8) - __src);
  v18 = *a1;
  v19 = v17 + *(a1 + 8) - __src + 2;
  *(a1 + 8) = __src;
  v20 = (__src - v18);
  v21 = v17 - (__src - v18);
  memcpy(v21, v18, v20);
  v22 = *a1;
  *a1 = v21;
  *(a1 + 8) = v19;
  *(a1 + 16) = 0;
  if (v22)
  {
    operator delete(v22);
  }

  return v17;
}

BOOL webrtc::RefCountedObject<webrtc::SctpDataChannel>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 74, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

void webrtc::RefCountedObject<webrtc::SctpDataChannel>::~RefCountedObject(webrtc::SctpDataChannel *a1)
{
  webrtc::SctpDataChannel::~SctpDataChannel(a1);

  JUMPOUT(0x2743DA540);
}

BOOL webrtc::RefCountedObject<webrtc::anonymous namespace::DataChannelProxyWithInternal<webrtc::DataChannelInterface>>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 8, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

void *webrtc::RefCountedObject<webrtc::anonymous namespace::DataChannelProxyWithInternal<webrtc::DataChannelInterface>>::~RefCountedObject(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = &unk_28829EE58;
  v14 = a1;
  v16 = 0;
  webrtc::Event::Event(&v17, 0, 0);
  v2 = a1[1];
  v3 = &unk_280905000;
  {
    v3 = &unk_280905000;
    if (v8)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v3[403] + 88)) == v2)
  {
    v15(v14 + (v16 >> 1));
  }

  else
  {
    v11.n128_u64[0] = &v14;
    v12 = absl::internal_any_invocable::LocalManagerTrivial;
    (*(*v2 + 8))(v2, &v11, &v10, &v9);
    v12(1, &v11, &v11);
    v4.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v5.var0 = 3000000;
    webrtc::Event::Wait(&v17, v4, v5);
  }

  pthread_mutex_destroy(&v17);
  pthread_cond_destroy(&v18);
  v6 = a1[3];
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  return a1;
}

void webrtc::RefCountedObject<webrtc::anonymous namespace::DataChannelProxyWithInternal<webrtc::DataChannelInterface>>::~RefCountedObject(void *a1)
{

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::anonymous namespace::DataChannelProxyWithInternal<webrtc::DataChannelInterface>::id(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v14 = *(a1 + 24);
  v15 = webrtc::DataChannelInterface::id;
  v16 = 0;
  webrtc::Event::Event(&v18, 0, 0);
  v2 = *(a1 + 16);
  v3 = &unk_280905000;
  {
    v3 = &unk_280905000;
    if (v8)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v3[403] + 88)) == v2)
  {
    v6 = v15(v14 + (v16 >> 1));
    v17 = v6;
  }

  else
  {
    v11.n128_u64[0] = &v14;
    v12 = absl::internal_any_invocable::LocalManagerTrivial;
    v13 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::DataChannelInterface,int>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v2 + 8))(v2, &v11, &v10, &v9);
    v12(1, &v11, &v11);
    v4.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v5.var0 = 3000000;
    webrtc::Event::Wait(&v18, v4, v5);
    v6 = v17;
  }

  pthread_mutex_destroy(&v18);
  pthread_cond_destroy(&v19);
  return v6;
}

uint64_t webrtc::anonymous namespace::DataChannelProxyWithInternal<webrtc::DataChannelInterface>::messages_sent(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v14 = *(a1 + 24);
  v15 = webrtc::DataChannelInterface::messages_sent;
  v16 = 0;
  webrtc::Event::Event(&v18, 0, 0);
  v2 = *(a1 + 16);
  v3 = &unk_280905000;
  {
    v3 = &unk_280905000;
    if (v8)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v3[403] + 88)) == v2)
  {
    v6 = v15(v14 + (v16 >> 1));
    v17 = v6;
  }

  else
  {
    v11.n128_u64[0] = &v14;
    v12 = absl::internal_any_invocable::LocalManagerTrivial;
    v13 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::DataChannelInterface,unsigned int>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v2 + 8))(v2, &v11, &v10, &v9);
    v12(1, &v11, &v11);
    v4.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v5.var0 = 3000000;
    webrtc::Event::Wait(&v18, v4, v5);
    v6 = v17;
  }

  pthread_mutex_destroy(&v18);
  pthread_cond_destroy(&v19);
  return v6;
}

uint64_t webrtc::anonymous namespace::DataChannelProxyWithInternal<webrtc::DataChannelInterface>::bytes_sent(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v14 = *(a1 + 24);
  v15 = webrtc::DataChannelInterface::bytes_sent;
  v16 = 0;
  webrtc::Event::Event(&v18, 0, 0);
  v2 = *(a1 + 16);
  v3 = &unk_280905000;
  {
    v3 = &unk_280905000;
    if (v8)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v3[403] + 88)) == v2)
  {
    v6 = v15(v14 + (v16 >> 1));
    v17 = v6;
  }

  else
  {
    v11.n128_u64[0] = &v14;
    v12 = absl::internal_any_invocable::LocalManagerTrivial;
    v13 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::DataChannelInterface,unsigned long long>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v2 + 8))(v2, &v11, &v10, &v9);
    v12(1, &v11, &v11);
    v4.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v5.var0 = 3000000;
    webrtc::Event::Wait(&v18, v4, v5);
    v6 = v17;
  }

  pthread_mutex_destroy(&v18);
  pthread_cond_destroy(&v19);
  return v6;
}

uint64_t webrtc::anonymous namespace::DataChannelProxyWithInternal<webrtc::DataChannelInterface>::messages_received(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v14 = *(a1 + 24);
  v15 = webrtc::DataChannelInterface::messages_received;
  v16 = 0;
  webrtc::Event::Event(&v18, 0, 0);
  v2 = *(a1 + 16);
  v3 = &unk_280905000;
  {
    v3 = &unk_280905000;
    if (v8)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v3[403] + 88)) == v2)
  {
    v6 = v15(v14 + (v16 >> 1));
    v17 = v6;
  }

  else
  {
    v11.n128_u64[0] = &v14;
    v12 = absl::internal_any_invocable::LocalManagerTrivial;
    v13 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::DataChannelInterface,unsigned int>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v2 + 8))(v2, &v11, &v10, &v9);
    v12(1, &v11, &v11);
    v4.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v5.var0 = 3000000;
    webrtc::Event::Wait(&v18, v4, v5);
    v6 = v17;
  }

  pthread_mutex_destroy(&v18);
  pthread_cond_destroy(&v19);
  return v6;
}

uint64_t webrtc::anonymous namespace::DataChannelProxyWithInternal<webrtc::DataChannelInterface>::bytes_received(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v14 = *(a1 + 24);
  v15 = webrtc::DataChannelInterface::bytes_received;
  v16 = 0;
  webrtc::Event::Event(&v18, 0, 0);
  v2 = *(a1 + 16);
  v3 = &unk_280905000;
  {
    v3 = &unk_280905000;
    if (v8)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v3[403] + 88)) == v2)
  {
    v6 = v15(v14 + (v16 >> 1));
    v17 = v6;
  }

  else
  {
    v11.n128_u64[0] = &v14;
    v12 = absl::internal_any_invocable::LocalManagerTrivial;
    v13 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::DataChannelInterface,unsigned long long>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v2 + 8))(v2, &v11, &v10, &v9);
    v12(1, &v11, &v11);
    v4.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v5.var0 = 3000000;
    webrtc::Event::Wait(&v18, v4, v5);
    v6 = v17;
  }

  pthread_mutex_destroy(&v18);
  pthread_cond_destroy(&v19);
  return v6;
}

uint64_t webrtc::anonymous namespace::DataChannelProxyWithInternal<webrtc::DataChannelInterface>::buffered_amount(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v14 = *(a1 + 24);
  v15 = webrtc::DataChannelInterface::buffered_amount;
  v16 = 0;
  webrtc::Event::Event(&v18, 0, 0);
  v2 = *(a1 + 16);
  v3 = &unk_280905000;
  {
    v3 = &unk_280905000;
    if (v8)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v3[403] + 88)) == v2)
  {
    v6 = v15(v14 + (v16 >> 1));
    v17 = v6;
  }

  else
  {
    v11.n128_u64[0] = &v14;
    v12 = absl::internal_any_invocable::LocalManagerTrivial;
    v13 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::DataChannelInterface,unsigned long long>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v2 + 8))(v2, &v11, &v10, &v9);
    v12(1, &v11, &v11);
    v4.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v5.var0 = 3000000;
    webrtc::Event::Wait(&v18, v4, v5);
    v6 = v17;
  }

  pthread_mutex_destroy(&v18);
  pthread_cond_destroy(&v19);
  return v6;
}

uint64_t webrtc::anonymous namespace::DataChannelProxyWithInternal<webrtc::DataChannelInterface>::Close(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = *(a1 + 24);
  v14 = webrtc::DataChannelInterface::Close;
  v15 = 0;
  webrtc::Event::Event(&v16, 0, 0);
  v2 = *(a1 + 16);
  v3 = &unk_280905000;
  {
    v3 = &unk_280905000;
    if (v7)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v3[403] + 88)) == v2)
  {
    v14(v13 + (v15 >> 1));
  }

  else
  {
    v10.n128_u64[0] = &v13;
    v11 = absl::internal_any_invocable::LocalManagerTrivial;
    v12 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::DataChannelInterface,void>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v2 + 8))(v2, &v10, &v9, &v8);
    v11(1, &v10, &v10);
    v4.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v5.var0 = 3000000;
    webrtc::Event::Wait(&v16, v4, v5);
  }

  pthread_mutex_destroy(&v16);
  return pthread_cond_destroy(&v17);
}

uint64_t webrtc::anonymous namespace::DataChannelProxyWithInternal<webrtc::DataChannelInterface>::Send(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v15 = *(a1 + 24);
  v16 = webrtc::DataChannelInterface::Send;
  v17 = 0;
  v19 = a2;
  webrtc::Event::Event(&v20, 0, 0);
  v3 = *(a1 + 16);
  v4 = &unk_280905000;
  {
    v4 = &unk_280905000;
    if (v9)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v4[403] + 88)) == v3)
  {
    v7 = (v16)(v15 + (v17 >> 1), v19);
    v18 = v7;
  }

  else
  {
    v12.n128_u64[0] = &v15;
    v13 = absl::internal_any_invocable::LocalManagerTrivial;
    v14 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::DataChannelInterface,BOOL,webrtc::DataBuffer const&>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v3 + 8))(v3, &v12, &v11, &v10);
    v13(1, &v12, &v12);
    v5.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v6.var0 = 3000000;
    webrtc::Event::Wait(&v20, v5, v6);
    v7 = v18;
  }

  pthread_mutex_destroy(&v20);
  pthread_cond_destroy(&v21);
  return v7 & 1;
}

uint64_t webrtc::anonymous namespace::DataChannelProxyWithInternal<webrtc::DataChannelInterface>::SendAsync(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a1 + 24);
  v10 = *a2;
  v11 = *(a2 + 1);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v12 = *(a2 + 24);
  (*(a3 + 16))(0, a3, v8);
  v9 = *(a3 + 16);
  *(a3 + 16) = absl::internal_any_invocable::EmptyManager;
  *(a3 + 24) = 0;
  (*(*v4 + 192))(v4, &v10, v8);
  result = (v9)(1, v8, v8);
  v6 = v10;
  if (v10 && atomic_fetch_add((v10 + 24), 0xFFFFFFFF) == 1)
  {
    v7 = *(v6 + 16);
    *(v6 + 16) = 0;
    if (v7)
    {
      MEMORY[0x2743DA520](v7, 0x1000C8077774924);
    }

    return MEMORY[0x2743DA540](v6, 0x1010C40EE34DA14);
  }

  return result;
}

uint64_t webrtc::anonymous namespace::DataChannelProxyWithInternal<webrtc::DataChannelInterface>::DestroyInternal(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(a1 + 24) = 0;
  return result;
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::anonymous namespace::DataChannelProxyWithInternal<webrtc::DataChannelInterface>,void>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  v2(v4);
  pthread_mutex_lock((v1 + 32));
  *(v1 + 145) = 1;
  pthread_cond_broadcast((v1 + 96));

  return pthread_mutex_unlock((v1 + 32));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::DataChannelInterface,int>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  *(v1 + 24) = v2(v4);
  pthread_mutex_lock((v1 + 32));
  *(v1 + 145) = 1;
  pthread_cond_broadcast((v1 + 96));

  return pthread_mutex_unlock((v1 + 32));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::DataChannelInterface,unsigned int>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  *(v1 + 24) = v2(v4);
  pthread_mutex_lock((v1 + 32));
  *(v1 + 145) = 1;
  pthread_cond_broadcast((v1 + 96));

  return pthread_mutex_unlock((v1 + 32));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::DataChannelInterface,unsigned long long>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  *(v1 + 24) = v2(v4);
  pthread_mutex_lock((v1 + 40));
  *(v1 + 153) = 1;
  pthread_cond_broadcast((v1 + 104));

  return pthread_mutex_unlock((v1 + 40));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::DataChannelInterface,void>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  v2(v4);
  pthread_mutex_lock((v1 + 32));
  *(v1 + 145) = 1;
  pthread_cond_broadcast((v1 + 96));

  return pthread_mutex_unlock((v1 + 32));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::DataChannelInterface,BOOL,webrtc::DataBuffer const&>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 32);
  v5 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v5 + v2);
  }

  *(v1 + 24) = v2(v5, v4);
  pthread_mutex_lock((v1 + 40));
  *(v1 + 153) = 1;
  pthread_cond_broadcast((v1 + 104));

  return pthread_mutex_unlock((v1 + 40));
}

uint64_t webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::SctpDataChannel::RegisterObserver(webrtc::DataChannelObserver *)::$_1>(uint64_t *a1)
{
  v1 = *a1;
  *(v1 + 112) = a1[1];
  return webrtc::SctpDataChannel::DeliverQueuedReceivedData(v1);
}

uint64_t webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::SctpDataChannel::UnregisterObserver(void)::$_1>(uint64_t result)
{
  v1 = *(*result + 120);
  if (v1)
  {
    *(v1 + 8) = 0;
    operator new();
  }

  return result;
}

__n128 webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::RTCError webrtc::Thread::BlockingCall<webrtc::SctpDataChannel::error(void)::$_0,webrtc::RTCError,void>(webrtc::SctpDataChannel::error(void)::$_0 &&,webrtc::Location const&)::{lambda(void)#1}>(uint64_t *a1)
{
  v2 = *a1[1];
  v3 = *(v2 + 136);
  v7 = v3;
  if (*(v2 + 167) < 0)
  {
    std::string::__init_copy_ctor_external(&v8, *(v2 + 144), *(v2 + 152));
    v3 = v7;
  }

  else
  {
    v8 = *(v2 + 144);
  }

  v9[0] = *(v2 + 168);
  *(v9 + 3) = *(v2 + 171);
  v4 = *a1;
  *v4 = v3;
  if (*(v4 + 31) < 0)
  {
    operator delete(*(v4 + 8));
  }

  result = *&v8.__r_.__value_.__l.__data_;
  *(v4 + 24) = *(&v8.__r_.__value_.__l + 2);
  *(v4 + 8) = result;
  v6 = v9[0];
  *(v4 + 35) = *(v9 + 3);
  *(v4 + 32) = v6;
  return result;
}

void _ZN4absl22internal_any_invocable13RemoteInvokerILb0EvOZN6webrtc15SctpDataChannel9SendAsyncENS2_10DataBufferENS_12AnyInvocableIFvNS2_8RTCErrorEOEEEE3__0JEEET0_PNS0_15TypeErasedStateEDpNS0_18ForwardedParameterIT2_E4typeE(unint64_t **a1)
{
  v1 = *a1;
  v3 = **a1;
  v2 = (*a1)[1];
  v4 = (*a1)[2];
  v5 = (*a1)[3];
  v12[0] = v2;
  v12[1] = v4;
  v12[2] = v5;
  v1[1] = 0;
  v1[2] = 0;
  v1[3] = 0;
  v13 = *(v1 + 32);
  *(v3 + 104) += v5;
  if (*(v3 + 128) == 1)
  {
    webrtc::SctpDataChannel::SendDataMessage(v14, v3, v12);
    v2 = v12[0];
    if (!v12[0])
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  v6 = 6;
  *(v3 + 136) = 6;
  if (*(v3 + 167) < 0)
  {
    operator delete(*(v3 + 144));
    v6 = *(v3 + 136);
  }

  *(v3 + 174) = 0;
  *(v3 + 165) = 0;
  *(v3 + 152) = 0;
  *(v3 + 160) = 0;
  *(v3 + 144) = 0;
  v14[0] = v6;
  memset(&v14[2], 0, 24);
  v15[0] = *(v3 + 168);
  *(v15 + 3) = *(v3 + 171);
  if (v2)
  {
LABEL_7:
    if (atomic_fetch_add((v2 + 24), 0xFFFFFFFF) == 1)
    {
      v7 = *(v2 + 16);
      *(v2 + 16) = 0;
      if (v7)
      {
        MEMORY[0x2743DA520](v7, 0x1000C8077774924);
      }

      MEMORY[0x2743DA540](v2, 0x1010C40EE34DA14);
    }
  }

LABEL_11:
  v8 = v1[8];
  if (!v8)
  {
    goto LABEL_16;
  }

  v9 = v14[0];
  if (SHIBYTE(v14[7]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *&v14[2], *&v14[4]);
    v8 = v1[8];
  }

  else
  {
    __p = *&v14[2];
  }

  v11[0] = v15[0];
  *(v11 + 3) = *(v15 + 3);
  v8(v1 + 5, &v9);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_16:
    if ((SHIBYTE(v14[7]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_19:
    operator delete(*&v14[2]);
    return;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v14[7]) < 0)
  {
    goto LABEL_19;
  }
}

uint64_t _ZN4absl22internal_any_invocable23RemoteManagerNontrivialIZN6webrtc15SctpDataChannel9SendAsyncENS2_10DataBufferENS_12AnyInvocableIFvNS2_8RTCErrorEOEEEE3__0EEvNS0_14FunctionToCallEPNS0_15TypeErasedStateESC_(uint64_t result, uint64_t *a2, void *a3)
{
  v3 = *a2;
  if (result)
  {
    if (v3)
    {
      (*(v3 + 56))(1, v3 + 40, v3 + 40);
      v4 = *(v3 + 8);
      if (v4 && atomic_fetch_add((v4 + 24), 0xFFFFFFFF) == 1)
      {
        v5 = *(v4 + 16);
        *(v4 + 16) = 0;
        if (v5)
        {
          MEMORY[0x2743DA520](v5, 0x1000C8077774924);
        }

        MEMORY[0x2743DA540](v4, 0x1010C40EE34DA14);
      }

      JUMPOUT(0x2743DA540);
    }
  }

  else
  {
    *a3 = v3;
  }

  return result;
}

uint64_t dcsctp::SctpPacket::Builder::Add(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 16);
  v9 = a1 + 16;
  if (v10 == *(a1 + 24))
  {
    v11 = *(a1 + 8);
    v12 = *(a1 + 16);
    if (*(a1 + 32) - v10 < v11)
    {
      if ((v11 & 0x8000000000000000) == 0)
      {
        operator new();
      }

LABEL_21:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    v13 = v12 - v10;
    if ((v12 - v10) > 0xB)
    {
      if (v13 != 12)
      {
        v12 = v10 + 12;
        *(a1 + 24) = v10 + 12;
      }
    }

    else
    {
      v14 = a2;
      std::vector<unsigned char>::__append(v9, 12 - v13);
      a2 = v14;
      v10 = *(a1 + 16);
      v12 = *(a1 + 24);
    }

    if ((v12 - v10) <= 0xB)
    {
      webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/net/dcsctp/packet/bounded_byte_writer.h", 59, "data.size() >= FixedSize", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v20);
      goto LABEL_21;
    }

    if (v12 == v10)
    {
      v15 = 0;
    }

    else
    {
      v15 = v10;
    }

    *v15 = bswap32(*(a1 + 4)) >> 16;
    *(v15 + 2) = bswap32(*(a1 + 6)) >> 16;
    *(v15 + 4) = bswap32(*a1);
  }

  (*(*a2 + 16))(a2, v9);
  v16 = *(a1 + 16);
  v17 = *(a1 + 24) - v16;
  if ((v17 & 3) != 0)
  {
    v18 = (v17 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    if (v18 <= v17)
    {
      if (v18 < v17)
      {
        *(a1 + 24) = v16 + v18;
      }
    }

    else
    {
      std::vector<unsigned char>::__append(v9, v18 - v17);
    }
  }

  return a1;
}

void dcsctp::SctpPacket::Parse(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  if ((a1 - 0x10000) > 0xFFFFFFFFFFFF000FLL)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  *a2 = 0;
  a2[64] = 0;
}

unint64_t webrtc::SctpTransport::SctpTransport(unint64_t a1, uint64_t *a2, void (****a3)(void))
{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = &unk_28829EF30;
  *(a1 + 8) = &unk_28829EFC0;
  {
    operator new();
  }

  *(a1 + 16) = pthread_getspecific(*(webrtc::ThreadManager::Instance(void)::thread_manager + 88));
  v6 = *a3;
  if (*a3)
  {
    (**v6)(*a3);
  }

  *(a1 + 24) = 1;
  *(a1 + 32) = v6;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v7 = *a2;
  *a2 = 0;
  *(a1 + 64) = v7;
  *(a1 + 72) = 0;
  v8 = *a3;
  *(a1 + 80) = *a3;
  (**v8)();
  v14 = webrtc::callback_list_impl::CallbackListReceivers::AddReceiver<webrtc::UntypedFunction::TrivialUntypedFunctionArgs<1ul>>(*(*(a1 + 80) + 144) + 440, a1, webrtc::webrtc_function_impl::CallHelpers<void ()(webrtc::DtlsTransportInternal *,webrtc::DtlsTransportState)>::CallInlineStorage<webrtc::SctpTransport::SctpTransport(std::unique_ptr<webrtc::SctpTransportInternal>,webrtc::scoped_refptr<webrtc::DtlsTransport>)::$_1>, v9, v10, v11, v12, v13);
  (*(**(a1 + 64) + 32))(*(a1 + 64), (*a3)[18], v14);
  v15 = *(a1 + 64);
  v17[0] = &unk_28829F020;
  v17[1] = a1;
  v18 = v17;
  (*(*v15 + 16))(v15, v17);
  if (v18 == v17)
  {
    (*(*v18 + 32))(v18);
  }

  else if (v18)
  {
    (*(*v18 + 40))();
  }

  return a1;
}

__n128 webrtc::SctpTransport::Information@<Q0>(webrtc::SctpTransport *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 2);
  v5 = &unk_280905000;
  {
    v5 = &unk_280905000;
    if (v9)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v5[403] + 88)) == v4)
  {
    *a2 = *(this + 6);
    v8 = *(this + 4);
    *(a2 + 8) = v8;
    if (v8)
    {
      (**v8)(v8);
    }

    result = *(this + 40);
    *(a2 + 16) = result;
    *(a2 + 29) = *(this + 53);
  }

  else
  {
    v6 = *(this + 2);
    v11 = this;
    v12[0] = a2;
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 36) = 0;
    v12[1] = &v11;
    (*(*v6 + 96))(v6, v12, webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::SctpTransportInformation webrtc::Thread::BlockingCall<webrtc::SctpTransport::Information(void)::$_0,webrtc::SctpTransportInformation,void>(webrtc::SctpTransport::Information(void)::$_0 &&,webrtc::Location const&)::{lambda(void)#1}>, &v10);
  }

  return result;
}

uint64_t webrtc::SctpTransport::OpenChannel@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int16 a3@<W2>, uint64_t a4@<X8>)
{
  result = (*(**(a1 + 64) + 56))(*(a1 + 64), a2, a3);
  *a4 = 0;
  *(a4 + 38) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 8) = 0;
  *(a4 + 29) = 0;
  return result;
}

uint64_t non-virtual thunk towebrtc::SctpTransport::OpenChannel@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int16 a3@<W2>, uint64_t a4@<X8>)
{
  result = (*(**(a1 + 56) + 56))(*(a1 + 56), a2, a3);
  *a4 = 0;
  *(a4 + 38) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 8) = 0;
  *(a4 + 29) = 0;
  return result;
}

uint64_t webrtc::SctpTransport::CloseChannel@<X0>(webrtc::SctpTransport *this@<X0>, uint64_t a2@<X8>)
{
  result = (*(**(this + 8) + 64))(*(this + 8));
  *a2 = 0;
  *(a2 + 38) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  *(a2 + 29) = 0;
  return result;
}

uint64_t non-virtual thunk towebrtc::SctpTransport::CloseChannel@<X0>(webrtc::SctpTransport *this@<X0>, uint64_t a2@<X8>)
{
  result = (*(**(this + 7) + 64))(*(this + 7));
  *a2 = 0;
  *(a2 + 38) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  *(a2 + 29) = 0;
  return result;
}

uint64_t (***webrtc::SctpTransport::dtls_transport@<X0>(webrtc::SctpTransport *this@<X0>, void *a2@<X8>))(void)
{
  result = *(this + 10);
  *a2 = result;
  if (result)
  {
    return (**result)(result);
  }

  return result;
}

uint64_t webrtc::SctpTransport::UpdateInformation(uint64_t a1, int a2)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 80);
  if (v5)
  {
    (**v5)(*(a1 + 80));
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    *(a1 + 24) = a2;
    (**v5)(v5);
    result = *(a1 + 32);
    if (!result)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  result = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  *(a1 + 24) = a2;
  if (result)
  {
LABEL_3:
    result = (*(*result + 8))(result);
  }

LABEL_4:
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;
  *(a1 + 56) = v8;
  *(a1 + 60) = BYTE4(v8);
  if (v5)
  {
    result = (*(*v5 + 8))(v5);
  }

  v10 = *(a1 + 72);
  if (v10 && v4 != a2)
  {
    v12 = *(a1 + 24);
    v11 = *(a1 + 32);
    v13 = v11;
    if (v11)
    {
      (**v11)(v11);
    }

    *v14 = *(a1 + 40);
    *&v14[13] = *(a1 + 53);
    (**v10)(v10, &v12);
    result = v13;
    if (v13)
    {
      return ((*v13)[1])(v13);
    }
  }

  return result;
}

uint64_t webrtc::SctpTransport::Start(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(a1 + 24);
    (**v4)(*(a1 + 32));
    v6 = *(a2 + 8);
    v7 = *(a1 + 56);
    *(a1 + 24) = v5;
    (**v4)(v4);
    v8 = v6;
    v9 = *(a1 + 32);
    if (!v9)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = *(a1 + 56);
  v8 = *(a2 + 8);
  v9 = *(a1 + 32);
  if (v9)
  {
LABEL_3:
    (*(*v9 + 8))(v9);
  }

LABEL_4:
  *(a1 + 32) = v4;
  *(a1 + 40) = v8;
  *(a1 + 48) = 1;
  *(a1 + 56) = v7;
  *(a1 + 60) = BYTE4(v7);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  result = (*(**(a1 + 64) + 40))(*(a1 + 64), a2);
  if ((result & 1) == 0)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v11, v12, v13, v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sctp_transport.cc");
    }

    return webrtc::SctpTransport::UpdateInformation(a1, 3);
  }

  return result;
}

uint64_t webrtc::webrtc_function_impl::CallHelpers<void ()(webrtc::DtlsTransportInternal *,webrtc::DtlsTransportState)>::CallInlineStorage<webrtc::SctpTransport::SctpTransport(std::unique_ptr<webrtc::SctpTransportInternal>,webrtc::scoped_refptr<webrtc::DtlsTransport>)::$_1>(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = *a1;
  if (*(*(result + 80) + 144) != a2)
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sctp_transport.cc", 203, "transport == dtls_transport_->internal()", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v8);
    JUMPOUT(0x273446CA0);
  }

  if ((a3 - 3) <= 1)
  {

    return webrtc::SctpTransport::UpdateInformation(result, 3);
  }

  return result;
}

uint64_t std::__function::__func<webrtc::SctpTransport::SctpTransport(std::unique_ptr<webrtc::SctpTransportInternal>,webrtc::scoped_refptr<webrtc::DtlsTransport>)::$_0,std::allocator<webrtc::SctpTransport::SctpTransport(std::unique_ptr<webrtc::SctpTransportInternal>,webrtc::scoped_refptr<webrtc::DtlsTransport>)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28829F020;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<webrtc::SctpTransport::SctpTransport(std::unique_ptr<webrtc::SctpTransportInternal>,webrtc::scoped_refptr<webrtc::DtlsTransport>)::$_0,std::allocator<webrtc::SctpTransport::SctpTransport(std::unique_ptr<webrtc::SctpTransportInternal>,webrtc::scoped_refptr<webrtc::DtlsTransport>)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (((*(**(v1 + 64) + 96))(*(v1 + 64)) & 0x100000000) != 0 && ((*(**(v1 + 64) + 104))(*(v1 + 64)) & 0x100000000) != 0)
  {
    result = (*(**(v1 + 64) + 96))(*(v1 + 64));
    if ((result & 0x100000000) == 0 || (v3 = result, result = (*(**(v1 + 64) + 104))(*(v1 + 64)), (result & 0x100000000) == 0))
    {
      __break(1u);
      return result;
    }

    if (result >= v3)
    {
      v4 = v3;
    }

    else
    {
      v4 = result;
    }

    v5 = *(v1 + 32);
    if (v5)
    {
      v6 = *(v1 + 24);
      (**v5)(*(v1 + 32));
      v7 = *(v1 + 40);
      v8 = *(v1 + 48);
      *(v1 + 24) = v6;
      (**v5)(v5);
      v9 = *(v1 + 32);
      v10 = v4 | 0x100000000;
      if (v9)
      {
        (*(*v9 + 8))(v9);
      }

      *(v1 + 32) = v5;
      *(v1 + 40) = v7;
      *(v1 + 48) = v8;
      *(v1 + 56) = v10;
      *(v1 + 60) = BYTE4(v10);
      (*(*v5 + 8))(v5);
    }

    else
    {
      *(v1 + 48) = *(v1 + 48);
      *(v1 + 56) = v4;
      *(v1 + 60) = 1;
    }
  }

  return webrtc::SctpTransport::UpdateInformation(v1, 2);
}

uint64_t webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::SctpTransportInformation webrtc::Thread::BlockingCall<webrtc::SctpTransport::Information(void)::$_0,webrtc::SctpTransportInformation,void>(webrtc::SctpTransport::Information(void)::$_0 &&,webrtc::Location const&)::{lambda(void)#1}>(uint64_t a1)
{
  (*(***(a1 + 8) + 40))(&v7);
  v2 = *a1;
  **a1 = v7;
  v3 = v8;
  if (v8)
  {
    (**v8)(v8);
  }

  v4 = *(v2 + 1);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  *(v2 + 1) = v3;
  v5 = *v9;
  *(v2 + 29) = *&v9[13];
  *(v2 + 1) = v5;
  result = v8;
  if (v8)
  {
    return (*(*v8 + 8))(v8);
  }

  return result;
}

void webrtc::SctpTransportInformation::~SctpTransportInformation(webrtc::SctpTransportInformation *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    (*(*v1 + 8))(*(this + 1));
  }
}

uint64_t webrtc::ParseDataChannelOpenMessage(uint64_t *a1, std::string *a2, uint64_t a3)
{
  v3 = *a1;
  if (*a1)
  {
    v3 = *(v3 + 16) + a1[1];
  }

  v4 = a1[2];
  if (!v4)
  {
    v3 = 0;
  }

  v28[0] = v3;
  v28[1] = v4;
  v28[3] = v4;
  if (!v4)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      return 0;
    }

LABEL_54:
    webrtc::webrtc_logging_impl::Log("\r\t", v5, v6, v7, v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sctp_utils.cc");
    return 0;
  }

  if (*v3 != 3)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      return 0;
    }

    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v13, v14, v15, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sctp_utils.cc");
    return 0;
  }

  if (v4 == 1)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      return 0;
    }

    goto LABEL_54;
  }

  v20 = v4 & 0xFFFFFFFFFFFFFFFELL;
  if ((v4 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      return 0;
    }

    goto LABEL_54;
  }

  v21 = *(v3 + 1);
  v22 = bswap32(*(v3 + 2)) >> 16;
  if ((*(a3 + 58) & 1) == 0)
  {
    *(a3 + 58) = 1;
  }

  *(a3 + 56) = v22;
  if ((v4 & 0xFFFFFFFFFFFFFFFCLL) == 4)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      return 0;
    }

    goto LABEL_54;
  }

  if (v20 == 10)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      return 0;
    }

    goto LABEL_54;
  }

  if (v20 == 8)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      return 0;
    }

    goto LABEL_54;
  }

  v24 = *(v3 + 4);
  v25 = bswap32(*(v3 + 8)) >> 16;
  v26 = *(v3 + 10);
  v28[2] = 12;
  if ((webrtc::ByteBufferReader::ReadString(v28, a2, v25) & 1) == 0)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      return 0;
    }

    goto LABEL_54;
  }

  if ((webrtc::ByteBufferReader::ReadString(v28, (a3 + 24), __rev16(v26)) & 1) == 0)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      return 0;
    }

    goto LABEL_54;
  }

  *(a3 + 1) = v21 > -126;
  if (*(a3 + 16) == 1)
  {
    *(a3 + 16) = 0;
    if (*(a3 + 8) != 1)
    {
LABEL_38:
      v27 = bswap32(v24);
      result = 1;
      if (v21 <= 128)
      {
        goto LABEL_39;
      }

LABEL_51:
      if (v21 == 130)
      {
        goto LABEL_56;
      }

      if (v21 != 129)
      {
        return result;
      }

LABEL_53:
      *(a3 + 16) = 1;
      *(a3 + 12) = v27;
      return result;
    }
  }

  else if (*(a3 + 8) != 1)
  {
    goto LABEL_38;
  }

  *(a3 + 8) = 0;
  v27 = bswap32(v24);
  result = 1;
  if (v21 > 128)
  {
    goto LABEL_51;
  }

LABEL_39:
  if (v21 == 1)
  {
    goto LABEL_53;
  }

  if (v21 == 2)
  {
LABEL_56:
    *(a3 + 8) = 1;
    *(a3 + 4) = v27;
  }

  return result;
}

void webrtc::WriteDataChannelOpenMessage(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 23);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a1 + 8);
  }

  v3 = *(a2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  if (v2 + v3 != -20)
  {
    operator new[]();
  }

  operator new[]();
}

void webrtc::rtcp::Sdes::~Sdes(webrtc::rtcp::Sdes *this)
{
  *this = &unk_28829F090;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(this + 3);
    v4 = *(this + 2);
    if (v3 != v2)
    {
      do
      {
        if (*(v3 - 1) < 0)
        {
          operator delete(*(v3 - 24));
        }

        v3 -= 32;
      }

      while (v3 != v2);
      v4 = *(this + 2);
    }

    *(this + 3) = v2;
    operator delete(v4);
  }
}

{
  *this = &unk_28829F090;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(this + 3);
    v4 = *(this + 2);
    if (v3 != v2)
    {
      do
      {
        if (*(v3 - 1) < 0)
        {
          operator delete(*(v3 - 24));
        }

        v3 -= 32;
      }

      while (v3 != v2);
      v4 = *(this + 2);
    }

    *(this + 3) = v2;
    operator delete(v4);
  }

  JUMPOUT(0x2743DA540);
}

void webrtc::rtcp::Sdes::Parse(void *a1, uint64_t a2)
{
  v4 = *(a2 + 1);
  __p[0] = 0;
  __p[1] = 0;
  v68 = 0;
  v5 = *(a2 + 4);
  if ((v5 & 3) != 0)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v6, v7, v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtcp_packet/sdes.cc");
    }

    v5 = *(a2 + 4);
  }

  if (!v4)
  {
    v66 = 4;
LABEL_39:
    v38 = a1[2];
    if (v38)
    {
      v39 = a1[3];
      v40 = a1[2];
      if (v39 != v38)
      {
        do
        {
          if (*(v39 - 1) < 0)
          {
            operator delete(*(v39 - 24));
          }

          v39 -= 32;
        }

        while (v39 != v38);
        v40 = a1[2];
      }

      a1[3] = v38;
      operator delete(v40);
    }

    *(a1 + 1) = *__p;
    a1[4] = v68;
    a1[5] = v66;
    return;
  }

  v13 = *(a2 + 8);
  v14 = &v13[v5];
  std::vector<webrtc::rtcp::Sdes::Chunk>::__append(__p, v4);
  v15 = 0;
  v66 = 4;
  v16 = v4;
  while (1)
  {
    if ((v14 - v13) <= 7)
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_56;
    }

    v17 = __p[0];
    v18 = __p[1];
    v19 = (__p[1] - __p[0]) >> 5;
    if (v19 <= v15)
    {
      __break(1u);
      return;
    }

    v20 = __p[0] + 32 * v15;
    *v20 = bswap32(*v13);
    v23 = v13[4];
    v22 = v13 + 4;
    v21 = v23;
    v24 = v22 + 1;
    if (v23)
    {
      break;
    }

LABEL_22:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      v65 = v65 & 0xFFFFFFFF00000000 | 0x452;
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v30, v31, v32, v33, v34, v35, v36, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtcp_packet/sdes.cc");
    }

    v29 = --v16;
    if (v16 <= v19)
    {
      if (v16 < v19)
      {
        while (v18 != &v17[32 * v16])
        {
          if (*(v18 - 1) < 0)
          {
            operator delete(*(v18 - 3));
          }

          v18 -= 4;
        }

        __p[1] = &v17[32 * v16];
      }
    }

    else
    {
      std::vector<webrtc::rtcp::Sdes::Chunk>::__append(__p, v16 - v19);
    }

LABEL_33:
    if (&v24[-v14] >= 0)
    {
      v37 = -(&v24[-v14] & 3);
    }

    else
    {
      v37 = (v14 - v24) & 3;
    }

    v13 = &v24[v37];
    if (v15 >= v29)
    {
      goto LABEL_39;
    }
  }

  v25 = 0;
  while (1)
  {
    if (v24 >= v14)
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v41, v42, v43, v44, v45, v46, v47, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtcp_packet/sdes.cc");
      }

      goto LABEL_56;
    }

    v26 = v22 + 2;
    v27 = *v24;
    v22 += v27 + 2;
    v24 = v22 + 1;
    if ((v22 + 1) > v14)
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v48, v49, v50, v51, v52, v53, v54, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtcp_packet/sdes.cc");
      }

      goto LABEL_56;
    }

    if (v21 != 1)
    {
      goto LABEL_12;
    }

    if (v25)
    {
      break;
    }

    std::string::__assign_external((v20 + 8), v26, v27);
    v25 = 1;
LABEL_12:
    v21 = *v22;
    if (!*v22)
    {
      if ((v25 & 1) == 0)
      {
        goto LABEL_22;
      }

      v28 = *(v20 + 2);
      if (v20[31] >= 0)
      {
        v28 = v20[31];
      }

      v66 += v28 + (v28 & 3 ^ 0xFFFFFFFFFFFFFFFDLL) + 11;
      ++v15;
      v29 = v16;
      goto LABEL_33;
    }
  }

  v55 = webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>();
  if (v55)
  {
    goto LABEL_56;
  }

LABEL_55:
  webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long> const&)::t, v56, v57, v58, v59, v60, v61, v62, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtcp_packet/sdes.cc");
LABEL_56:
  v63 = __p[0];
  if (__p[0])
  {
    for (i = __p[1]; i != v63; i -= 4)
    {
      if (*(i - 1) < 0)
      {
        operator delete(*(i - 3));
      }
    }

    operator delete(v63);
  }
}

BOOL webrtc::rtcp::Sdes::AddCName(void *a1, int a2, void *__src, size_t __len)
{
  v4 = a1[3] - a1[2];
  if (v4 < 0x3E0)
  {
    if (__len < 0x7FFFFFFFFFFFFFF8)
    {
      if (__len > 0x16)
      {
        operator new();
      }

      v33 = __len;
      v7 = v31 + __len;
      if (v31 > __src || v7 <= __src)
      {
        if (__len)
        {
          memmove(v31, __src, __len);
        }

        *v7 = 0;
        v16 = a1[3];
        v15 = a1[4];
        v18 = v31[0];
        v17 = v31[1];
        v34[0] = *v32;
        *(v34 + 3) = *&v32[3];
        v19 = v33;
        v20 = v33;
        __p = v31[0];
        if (v16 >= v15)
        {
          v21 = a1[2];
          v22 = v16 - v21;
          v23 = (v22 >> 5) + 1;
          if (v23 >> 59)
          {
            std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
          }

          v24 = v15 - v21;
          v25 = v24 >> 4;
          if (v24 >> 4 <= v23)
          {
            v25 = (v22 >> 5) + 1;
          }

          v26 = v24 >= 0x7FFFFFFFFFFFFFE0;
          v27 = 0x7FFFFFFFFFFFFFFLL;
          if (!v26)
          {
            v27 = v25;
          }

          if (v27)
          {
            if (!(v27 >> 59))
            {
              operator new();
            }

            std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
          }
        }

        else if (v16)
        {
          *v16 = a2;
          if (v20 < 0)
          {
            std::string::__init_copy_ctor_external((v16 + 8), v18, v17);
          }

          else
          {
            *(v16 + 8) = v18;
            *(v16 + 16) = v17;
            *(v16 + 24) = v34[0];
            *(v16 + 27) = *(v34 + 3);
            *(v16 + 31) = v20;
          }

          a1[3] = v16 + 32;
          if (v20 >= 0)
          {
            v28 = v19;
          }

          else
          {
            v28 = v17;
          }

          a1[5] += v28 + (v28 & 3 ^ 0xFFFFFFFFFFFFFFFDLL) + 11;
          if (v20 < 0)
          {
            operator delete(__p);
          }

          return v4 < 0x3E0;
        }
      }

      __break(1u);
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v8, v9, v10, v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtcp_packet/sdes.cc");
  }

  return v4 < 0x3E0;
}

void webrtc::rtcp::Sdes::Create(const void ***a1, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v12 = *a3;
  if (((*a1)[2])(a1) + v12 <= a4)
  {
LABEL_4:
    v13 = *a3;
    v35 = ((*a1)[2])(a1) + v13;
    LODWORD(v13) = (*(a1 + 6) - *(a1 + 4)) >> 5;
    v14 = ((*a1)[2])(a1);
    *(a2 + *a3) = v13 | 0x80;
    *(a2 + *a3 + 1) = -54;
    *(a2 + *a3 + 2) = (v14 - 4) >> 10;
    *(a2 + *a3 + 3) = (v14 - 4) >> 2;
    v19 = *a3 + 4;
    *a3 = v19;
    v20 = a1[2];
    v21 = a1[3];
    if (v20 == v21)
    {
LABEL_16:
      if (v19 != v35)
      {
        webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtcp_packet/sdes.cc", 197, "*index == index_end", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, v15, v16, v17, v18, v19);
        std::vector<webrtc::rtcp::Sdes::Chunk>::__append(v33, v34);
      }

      return;
    }

    v22 = a2 + 5;
    v23 = a2 + 6;
    v24 = v20 + 1;
    while (1)
    {
      v26 = v24 - 1;
      *(a2 + v19) = bswap32(*(v24 - 2));
      *(a2 + 4 + *a3) = 1;
      v27 = *(v24 + 23);
      if (v27 < 0)
      {
        *(v22 + *a3) = *(v24 + 8);
        v28 = *a3;
        v29 = *(v24 + 23);
        if ((v29 & 0x8000000000000000) == 0)
        {
LABEL_9:
          memcpy((v23 + v28), v24, v29);
          v30 = *(v24 + 23);
          if ((v30 & 0x8000000000000000) == 0)
          {
            goto LABEL_10;
          }

          goto LABEL_14;
        }
      }

      else
      {
        *(v22 + *a3) = v27;
        v28 = *a3;
        v29 = *(v24 + 23);
        if ((v29 & 0x8000000000000000) == 0)
        {
          goto LABEL_9;
        }
      }

      memcpy((v23 + v28), *v24, v24[1]);
      v30 = *(v24 + 23);
      if ((v30 & 0x8000000000000000) == 0)
      {
LABEL_10:
        v31 = v30 + *a3 + 6;
        *a3 = v31;
        v32 = *(v24 + 23);
        if ((v32 & 0x8000000000000000) != 0)
        {
          goto LABEL_15;
        }

        goto LABEL_6;
      }

LABEL_14:
      v31 = v24[1] + *a3 + 6;
      *a3 = v31;
      v32 = *(v24 + 23);
      if ((v32 & 0x8000000000000000) != 0)
      {
LABEL_15:
        v32 = v24[1];
      }

LABEL_6:
      v25 = 4 - (v32 & 3 ^ 2);
      bzero((a2 + v31), v25);
      v19 = v25 + *a3;
      *a3 = v19;
      v24 += 4;
      if (v26 + 4 == v21)
      {
        goto LABEL_16;
      }
    }
  }

  while (*a3)
  {
    a6(a5, a2);
    *a3 = 0;
    if (((*a1)[2])(a1) <= a4)
    {
      goto LABEL_4;
    }
  }
}

void std::vector<webrtc::rtcp::Sdes::Chunk>::__append(uint64_t *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (a2 > (v4 - v3) >> 5)
  {
    v5 = (v3 - *a1) >> 5;
    v6 = v5 + a2;
    if (!((v5 + a2) >> 59))
    {
      v7 = v4 - *a1;
      if (v7 >> 4 > v6)
      {
        v6 = v7 >> 4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFE0)
      {
        v8 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v8 = v6;
      }

      if (v8)
      {
        if (!(v8 >> 59))
        {
          operator new();
        }

        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      v11 = 32 * v5;
      v12 = 32 * a2;
      v13 = 32 * v5 + 32 * a2;
      v14 = (32 * v5);
      do
      {
        if (!v14)
        {
          goto LABEL_35;
        }

        *v14 = 0uLL;
        v14[1] = 0uLL;
        v14 += 2;
        v12 -= 32;
      }

      while (v12);
      v15 = *a1;
      v16 = a1[1];
      v17 = v11 + *a1 - v16;
      if (v16 != *a1)
      {
        v18 = *a1;
        v19 = v17;
        do
        {
          if (!v19)
          {
            goto LABEL_35;
          }

          *v19 = *v18;
          v20 = *(v18 + 8);
          *(v19 + 24) = *(v18 + 24);
          *(v19 + 8) = v20;
          *(v18 + 16) = 0;
          *(v18 + 24) = 0;
          *(v18 + 8) = 0;
          v18 += 32;
          v19 += 32;
        }

        while (v18 != v16);
        do
        {
          if (!v15)
          {
            goto LABEL_35;
          }

          if (*(v15 + 31) < 0)
          {
            operator delete(*(v15 + 8));
          }

          v15 += 32;
        }

        while (v15 != v16);
        v15 = *a1;
      }

      *a1 = v17;
      a1[1] = v13;
      a1[2] = 0;
      if (v15)
      {

        operator delete(v15);
      }

      return;
    }

LABEL_36:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (!a2)
  {
    goto LABEL_16;
  }

  v9 = 32 * a2;
  v10 = &v3[2 * a2];
  do
  {
    if (!v3)
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    *v3 = 0uLL;
    v3[1] = 0uLL;
    v3 += 2;
    v9 -= 32;
  }

  while (v9);
  v3 = v10;
LABEL_16:
  a1[1] = v3;
}

uint64_t webrtc::DetermineSdpMungingType(webrtc *this, const webrtc::SessionDescriptionInterface *a2, const webrtc::SessionDescriptionInterface *a3)
{
  v450[6] = *MEMORY[0x277D85DE8];
  if (!this || (v3 = a2, v4 = this, !(*(*this + 32))(this, a2, a3)))
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v20, v21, v22, v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_munging_detector.cc");
    }

    return 1;
  }

  if (!v3 || !(*(*v3 + 32))(v3))
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v28, v29, v30, v31, v32, v33, v34, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_munging_detector.cc");
    }

    if ((*(*v4 + 56))(v4))
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }

  v5 = (*(*v4 + 32))(v4);
  if (v5 == (*(*v3 + 32))(v3))
  {
    return 0;
  }

  v6 = (*(*v3 + 32))(v3);
  v7 = (*(*v4 + 32))(v4);
  v8 = *v6;
  v9 = v6[1];
  if (v9 - *v6 != v7[1] - *v7)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      goto LABEL_443;
    }

    return 4;
  }

  v435 = v3;
  v436 = v4;
  if (v9 == v8)
  {
    goto LABEL_444;
  }

  v10 = v7;
  v11 = 0;
  v13 = __s2 <= "stereo" && __s2 + 6 > "stereo";
  v430 = v13;
  v15 = __s2 <= "stereo" && __s2 + 6 > "stereo";
  v431 = v15;
  v17 = __p <= "nack" && __p + 4 > "nack";
  v19 = __p <= "nack" && __p + 4 > "nack";
  v428 = v19;
  v429 = v17;
  v433 = v7;
  v434 = v6;
LABEL_46:
  v35 = *v10;
  if (0xCCCCCCCCCCCCCCCDLL * ((v10[1] - *v10) >> 3) <= v11)
  {
    goto LABEL_612;
  }

  v36 = v8 + 40 * v11;
  v37 = v35 + 40 * v11;
  v38 = *(v36 + 31);
  if (v38 >= 0)
  {
    v39 = *(v36 + 31);
  }

  else
  {
    v39 = *(v36 + 16);
  }

  v40 = *(v37 + 31);
  v41 = v40;
  if ((v40 & 0x80u) != 0)
  {
    v40 = *(v37 + 16);
  }

  if (v39 != v40 || (v38 >= 0 ? (v42 = (v36 + 8)) : (v42 = *(v36 + 8)), (v45 = *(v37 + 8), v43 = (v37 + 8), v44 = v45, v41 >= 0) ? (v46 = v43) : (v46 = v44), memcmp(v42, v46, v39)))
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v251, v252, v253, v254, v255, v256, v257, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_munging_detector.cc");
    }

    return 25;
  }

  v47 = *(v36 + 32);
  v439 = *(v35 + 40 * v11 + 32);
  if (v47)
  {
    v48 = *(v35 + 40 * v11 + 32) == 0;
  }

  else
  {
    v48 = 1;
  }

  if (v48)
  {
    goto LABEL_45;
  }

  v49 = (*(*v47 + 16))(v47);
  v437 = v11;
  v438 = v47;
  if (v49 != 1)
  {
    v72 = v47;
    if (v49)
    {
      goto LABEL_394;
    }

    v74 = v47[35];
    v73 = v47[36];
    v75 = *(v439 + 280);
    v76 = *(v439 + 288);
    if (v73 - v74 > (v76 - v75))
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log("\r\t", v315, v316, v317, v318, v319, v320, v321, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_munging_detector.cc");
      }

      return 60;
    }

    if (v74 == v73)
    {
      v74 = v47[36];
      goto LABEL_157;
    }

LABEL_99:
    webrtc::Codec::Codec(&v445, v74);
    __p[0] = 0;
    __p[1] = 0;
    *&v443 = 0;
    if (SHIBYTE(v447) < 0)
    {
      if (v446 != 4 || *v445.__r_.__value_.__r.__words[2] != *"opus")
      {
LABEL_97:
        webrtc::Codec::~Codec(&v445);
        goto LABEL_98;
      }
    }

    else if (SHIBYTE(v447) != 4 || LODWORD(v445.__r_.__value_.__r.__words[2]) != *"opus")
    {
      goto LABEL_97;
    }

    v441 = 6;
    if (v430)
    {
      goto LABEL_612;
    }

    strcpy(__s2, "stereo");
    v77 = v450[0];
    if (!v450[0])
    {
      goto LABEL_139;
    }

    v78 = v450;
    while (1)
    {
      v79 = *(v77 + 55);
      if (v79 >= 0)
      {
        v80 = v77 + 4;
      }

      else
      {
        v80 = v77[4];
      }

      if (v79 >= 0)
      {
        v81 = *(v77 + 55);
      }

      else
      {
        v81 = v77[5];
      }

      if (v81 >= 6)
      {
        v82 = 6;
      }

      else
      {
        v82 = v81;
      }

      v83 = memcmp(v80, __s2, v82);
      if (v83)
      {
        if (v83 < 0)
        {
          goto LABEL_108;
        }

LABEL_122:
        v78 = v77;
        v77 = *v77;
        if (!v77)
        {
LABEL_123:
          if (v78 == v450)
          {
            goto LABEL_139;
          }

          v84 = *(v78 + 55);
          if (v84 >= 0)
          {
            v85 = v78 + 4;
          }

          else
          {
            v85 = v78[4];
          }

          if (v84 >= 0)
          {
            v86 = *(v78 + 55);
          }

          else
          {
            v86 = v78[5];
          }

          if (v86 >= 6)
          {
            v87 = 6;
          }

          else
          {
            v87 = v86;
          }

          v88 = memcmp(__s2, v85, v87);
          if (v88)
          {
            if ((v88 & 0x80000000) == 0)
            {
              goto LABEL_135;
            }

LABEL_139:
            v89 = 0;
LABEL_140:
            v90 = 0;
            if ((v441 & 0x80000000) == 0)
            {
              goto LABEL_141;
            }

LABEL_151:
            operator delete(__s2[0]);
            if ((BYTE7(v443) & 0x80) != 0)
            {
              goto LABEL_152;
            }

LABEL_142:
            webrtc::Codec::~Codec(&v445);
            if (v90)
            {
              goto LABEL_155;
            }

LABEL_98:
            v74 = (v74 + 216);
            if (v74 == v73)
            {
              v74 = v73;
              goto LABEL_155;
            }

            goto LABEL_99;
          }

          if (v86 > 6)
          {
            goto LABEL_139;
          }

LABEL_135:
          if (v78 + 7 != __p)
          {
            if (*(v78 + 79) < 0)
            {
              std::string::__assign_no_alias<true>(__p, v78[7], v78[8]);
            }

            else
            {
              *__p = *(v78 + 7);
              *&v443 = v78[9];
            }
          }

          v89 = BYTE7(v443);
          if (SBYTE7(v443) < 0)
          {
            if (__p[1] != 1)
            {
              goto LABEL_140;
            }

            v91 = __p[0];
          }

          else
          {
            if (SBYTE7(v443) != 1)
            {
              goto LABEL_140;
            }

            v91 = __p;
          }

          v90 = *v91 == 49;
          if (v441 < 0)
          {
            goto LABEL_151;
          }

LABEL_141:
          if ((v89 & 0x80) == 0)
          {
            goto LABEL_142;
          }

LABEL_152:
          operator delete(__p[0]);
          webrtc::Codec::~Codec(&v445);
          if (!v90)
          {
            goto LABEL_98;
          }

LABEL_155:
          v73 = v438[36];
          v75 = *(v439 + 280);
          v76 = *(v439 + 288);
LABEL_157:
          if (v75 == v76)
          {
            v72 = v438;
            goto LABEL_220;
          }

LABEL_161:
          webrtc::Codec::Codec(&v445, v75);
          __p[0] = 0;
          __p[1] = 0;
          *&v443 = 0;
          if (SHIBYTE(v447) < 0)
          {
            if (v446 != 4 || *v445.__r_.__value_.__r.__words[2] != *"opus")
            {
LABEL_159:
              webrtc::Codec::~Codec(&v445);
              goto LABEL_160;
            }
          }

          else if (SHIBYTE(v447) != 4 || LODWORD(v445.__r_.__value_.__r.__words[2]) != *"opus")
          {
            goto LABEL_159;
          }

          v441 = 6;
          if (v431)
          {
            goto LABEL_612;
          }

          strcpy(__s2, "stereo");
          v92 = v450[0];
          if (!v450[0])
          {
            goto LABEL_201;
          }

          v93 = v450;
          while (1)
          {
            v94 = *(v92 + 55);
            if (v94 >= 0)
            {
              v95 = v92 + 4;
            }

            else
            {
              v95 = v92[4];
            }

            if (v94 >= 0)
            {
              v96 = *(v92 + 55);
            }

            else
            {
              v96 = v92[5];
            }

            if (v96 >= 6)
            {
              v97 = 6;
            }

            else
            {
              v97 = v96;
            }

            v98 = memcmp(v95, __s2, v97);
            if (v98)
            {
              if (v98 < 0)
              {
                goto LABEL_170;
              }
            }

            else if (v96 < 6)
            {
LABEL_170:
              v92 = v92[1];
              if (!v92)
              {
                goto LABEL_185;
              }

              continue;
            }

            v93 = v92;
            v92 = *v92;
            if (!v92)
            {
LABEL_185:
              if (v93 == v450)
              {
                goto LABEL_201;
              }

              v99 = *(v93 + 55);
              if (v99 >= 0)
              {
                v100 = v93 + 4;
              }

              else
              {
                v100 = v93[4];
              }

              if (v99 >= 0)
              {
                v101 = *(v93 + 55);
              }

              else
              {
                v101 = v93[5];
              }

              if (v101 >= 6)
              {
                v102 = 6;
              }

              else
              {
                v102 = v101;
              }

              v103 = memcmp(__s2, v100, v102);
              if (v103)
              {
                if ((v103 & 0x80000000) == 0)
                {
                  goto LABEL_197;
                }

LABEL_201:
                v104 = 0;
LABEL_202:
                v105 = 0;
                if ((v441 & 0x80000000) == 0)
                {
                  goto LABEL_203;
                }

LABEL_213:
                operator delete(__s2[0]);
                if ((BYTE7(v443) & 0x80) != 0)
                {
                  goto LABEL_214;
                }

LABEL_204:
                webrtc::Codec::~Codec(&v445);
                if (v105)
                {
                  goto LABEL_217;
                }

LABEL_160:
                v75 = (v75 + 216);
                if (v75 == v76)
                {
                  v75 = v76;
                  goto LABEL_217;
                }

                goto LABEL_161;
              }

              if (v101 > 6)
              {
                goto LABEL_201;
              }

LABEL_197:
              if (v93 + 7 != __p)
              {
                if (*(v93 + 79) < 0)
                {
                  std::string::__assign_no_alias<true>(__p, v93[7], v93[8]);
                }

                else
                {
                  *__p = *(v93 + 7);
                  *&v443 = v93[9];
                }
              }

              v104 = BYTE7(v443);
              if (SBYTE7(v443) < 0)
              {
                if (__p[1] != 1)
                {
                  goto LABEL_202;
                }

                v106 = __p[0];
              }

              else
              {
                if (SBYTE7(v443) != 1)
                {
                  goto LABEL_202;
                }

                v106 = __p;
              }

              v105 = *v106 == 49;
              if (v441 < 0)
              {
                goto LABEL_213;
              }

LABEL_203:
              if ((v104 & 0x80) == 0)
              {
                goto LABEL_204;
              }

LABEL_214:
              operator delete(__p[0]);
              webrtc::Codec::~Codec(&v445);
              if (!v105)
              {
                goto LABEL_160;
              }

LABEL_217:
              v76 = *(v439 + 288);
              if (v74 == v73 && v75 != v76)
              {
                if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
                {
                  webrtc::webrtc_logging_impl::Log("\r\t", v394, v395, v396, v397, v398, v399, v400, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_munging_detector.cc");
                }

                return 68;
              }

              v72 = v438;
              v73 = v438[36];
LABEL_220:
              v107 = v72[35];
              if (v107 == v73)
              {
                v107 = v73;
                v108 = v439;
                goto LABEL_239;
              }

              while (2)
              {
                webrtc::Codec::Codec(&v445, v107);
                if (SHIBYTE(v447) < 0)
                {
                  if (v446 != 9)
                  {
                    goto LABEL_222;
                  }

                  v109 = v445.__r_.__value_.__r.__words[2];
LABEL_229:
                  v110 = *v109;
                  v111 = v109[8];
                  v113 = v110 != 0x75706F69746C756DLL || v111 != 115;
                  webrtc::Codec::~Codec(&v445);
                  if (!v113)
                  {
                    goto LABEL_238;
                  }
                }

                else
                {
                  v109 = &v445.__r_.__value_.__s.__data_[16];
                  if (SHIBYTE(v447) == 9)
                  {
                    goto LABEL_229;
                  }

LABEL_222:
                  webrtc::Codec::~Codec(&v445);
                }

                v107 = (v107 + 216);
                if (v107 == v73)
                {
                  v107 = v73;
LABEL_238:
                  v73 = v72[36];
                  v108 = v439;
                  v76 = *(v439 + 288);
LABEL_239:
                  v114 = *(v108 + 280);
                  if (v114 == v76)
                  {
                    v115 = v439;
                    goto LABEL_260;
                  }

                  while (2)
                  {
                    webrtc::Codec::Codec(&v445, v114);
                    if (SHIBYTE(v447) < 0)
                    {
                      if (v446 != 9)
                      {
                        goto LABEL_241;
                      }

                      v116 = v445.__r_.__value_.__r.__words[2];
LABEL_248:
                      v117 = *v116;
                      v118 = v116[8];
                      v120 = v117 != 0x75706F69746C756DLL || v118 != 115;
                      webrtc::Codec::~Codec(&v445);
                      if (!v120)
                      {
                        goto LABEL_257;
                      }
                    }

                    else
                    {
                      v116 = &v445.__r_.__value_.__s.__data_[16];
                      if (SHIBYTE(v447) == 9)
                      {
                        goto LABEL_248;
                      }

LABEL_241:
                      webrtc::Codec::~Codec(&v445);
                    }

                    v114 = (v114 + 216);
                    if (v114 == v76)
                    {
                      v114 = v76;
LABEL_257:
                      v115 = v439;
                      v76 = *(v439 + 288);
                      if (v107 == v73 && v114 != v76)
                      {
                        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
                        {
                          webrtc::webrtc_logging_impl::Log("\r\t", v401, v402, v403, v404, v405, v406, v407, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_munging_detector.cc");
                        }

                        return 63;
                      }

                      v73 = v72[36];
LABEL_260:
                      v121 = v72[35];
                      if (v121 == v73)
                      {
                        v121 = v73;
                        goto LABEL_279;
                      }

                      while (2)
                      {
                        webrtc::Codec::Codec(&v445, v121);
                        if (SHIBYTE(v447) < 0)
                        {
                          if (v446 != 3)
                          {
                            goto LABEL_262;
                          }

                          v122 = v445.__r_.__value_.__r.__words[2];
LABEL_269:
                          v123 = *v122;
                          v124 = *(v122 + 2);
                          v126 = v123 != *"L16" || v124 != webrtc::kL16CodecName[2];
                          webrtc::Codec::~Codec(&v445);
                          if (!v126)
                          {
                            goto LABEL_278;
                          }
                        }

                        else
                        {
                          v122 = &v445.__r_.__value_.__r.__words[2];
                          if (SHIBYTE(v447) == 3)
                          {
                            goto LABEL_269;
                          }

LABEL_262:
                          webrtc::Codec::~Codec(&v445);
                        }

                        v121 = (v121 + 216);
                        if (v121 == v73)
                        {
                          v121 = v73;
LABEL_278:
                          v73 = v72[36];
                          v76 = *(v115 + 288);
LABEL_279:
                          v127 = *(v115 + 280);
                          if (v127 == v76)
                          {
                            goto LABEL_300;
                          }

                          while (2)
                          {
                            webrtc::Codec::Codec(&v445, v127);
                            if (SHIBYTE(v447) < 0)
                            {
                              if (v446 != 3)
                              {
                                goto LABEL_281;
                              }

                              v128 = v445.__r_.__value_.__r.__words[2];
LABEL_288:
                              v129 = *v128;
                              v130 = *(v128 + 2);
                              v132 = v129 != *"L16" || v130 != webrtc::kL16CodecName[2];
                              webrtc::Codec::~Codec(&v445);
                              if (!v132)
                              {
                                goto LABEL_297;
                              }
                            }

                            else
                            {
                              v128 = &v445.__r_.__value_.__r.__words[2];
                              if (SHIBYTE(v447) == 3)
                              {
                                goto LABEL_288;
                              }

LABEL_281:
                              webrtc::Codec::~Codec(&v445);
                            }

                            v127 = (v127 + 216);
                            if (v127 == v76)
                            {
                              v127 = v76;
LABEL_297:
                              v76 = *(v115 + 288);
                              if (v121 == v73 && v127 != v76)
                              {
                                if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
                                {
                                  webrtc::webrtc_logging_impl::Log("\r\t", v408, v409, v410, v411, v412, v413, v414, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_munging_detector.cc");
                                }

                                return 64;
                              }

                              v73 = v72[36];
                              v127 = *(v115 + 280);
LABEL_300:
                              v133 = v72[35];
                              if (v73 - v133 < (v76 - v127))
                              {
                                if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
                                {
                                  webrtc::webrtc_logging_impl::Log("\r\t", v337, v338, v339, v340, v341, v342, v343, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_munging_detector.cc");
                                }

                                return 61;
                              }

                              if (v133 == v73)
                              {
                                v133 = v73;
                                goto LABEL_313;
                              }

                              if (v429)
                              {
                                webrtc::Codec::Codec(&v445, v72[35]);
                                __break(1u);
                                goto LABEL_617;
                              }

                              while (2)
                              {
                                webrtc::Codec::Codec(&v445, v133);
                                *(&v443 + 7) = 4;
                                strcpy(__p, "nack");
                                v444 = 0;
                                HasFeedbackParam = webrtc::Codec::HasFeedbackParam(&v445, __p);
                                if (v444 < 0)
                                {
                                  operator delete(*(&v443 + 1));
                                  if ((SBYTE7(v443) & 0x80000000) == 0)
                                  {
                                    goto LABEL_305;
                                  }
                                }

                                else if ((SBYTE7(v443) & 0x80000000) == 0)
                                {
LABEL_305:
                                  webrtc::Codec::~Codec(&v445);
                                  if (HasFeedbackParam)
                                  {
                                    goto LABEL_311;
                                  }

                                  goto LABEL_309;
                                }

                                operator delete(__p[0]);
                                webrtc::Codec::~Codec(&v445);
                                if (HasFeedbackParam)
                                {
                                  goto LABEL_311;
                                }

LABEL_309:
                                v133 = (v133 + 216);
                                if (v133 == v73)
                                {
                                  v133 = v73;
LABEL_311:
                                  v73 = v72[36];
                                  v127 = *(v115 + 280);
                                  v76 = *(v115 + 288);
LABEL_313:
                                  if (v127 == v76)
                                  {
                                    goto LABEL_326;
                                  }

                                  if (!v428)
                                  {
                                    while (2)
                                    {
                                      webrtc::Codec::Codec(&v445, v127);
                                      *(&v443 + 7) = 4;
                                      strcpy(__p, "nack");
                                      v444 = 0;
                                      v135 = webrtc::Codec::HasFeedbackParam(&v445, __p);
                                      if (v444 < 0)
                                      {
                                        operator delete(*(&v443 + 1));
                                        if ((SBYTE7(v443) & 0x80000000) == 0)
                                        {
                                          goto LABEL_317;
                                        }
                                      }

                                      else if ((SBYTE7(v443) & 0x80000000) == 0)
                                      {
LABEL_317:
                                        webrtc::Codec::~Codec(&v445);
                                        if (v135)
                                        {
                                          goto LABEL_323;
                                        }

                                        goto LABEL_321;
                                      }

                                      operator delete(__p[0]);
                                      webrtc::Codec::~Codec(&v445);
                                      if (v135)
                                      {
                                        goto LABEL_323;
                                      }

LABEL_321:
                                      v127 = (v127 + 216);
                                      if (v127 == v76)
                                      {
                                        v127 = v76;
LABEL_323:
                                        v115 = v439;
                                        if (v133 == v73 && v127 != *(v439 + 288))
                                        {
                                          goto LABEL_613;
                                        }

                                        v73 = v72[36];
LABEL_326:
                                        v137 = v72[36];
                                        if (v137 == v136 && *(v115 + 288) != v138)
                                        {
                                          if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
                                          {
                                            webrtc::webrtc_logging_impl::Log("\r\t", v344, v345, v346, v347, v348, v349, v350, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_munging_detector.cc");
                                          }

                                          return 72;
                                        }

                                        v140 = v72[36];
                                        if (v140 != v139 && *(v115 + 288) == v141)
                                        {
                                          if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
                                          {
                                            webrtc::webrtc_logging_impl::Log("\r\t", v351, v352, v353, v354, v355, v356, v357, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_munging_detector.cc");
                                          }

                                          return 66;
                                        }

                                        v143 = v72[36];
                                        if (v143 == v142 && *(v115 + 288) != v144)
                                        {
                                          if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
                                          {
                                            webrtc::webrtc_logging_impl::Log("\r\t", v358, v359, v360, v361, v362, v363, v364, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_munging_detector.cc");
                                          }

                                          return 69;
                                        }

                                        v146 = v72[36];
                                        if (v146 == v145 && *(v439 + 288) != v147)
                                        {
                                          v365 = webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>();
                                          if ((v365 & 1) == 0)
                                          {
                                            webrtc::webrtc_logging_impl::Log("\r\t", v366, v367, v368, v369, v370, v371, v372, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_munging_detector.cc");
                                          }

                                          return 67;
                                        }

LABEL_394:
                                        v170 = v72[35];
                                        v169 = v72[36];
                                        if (v169 != v170)
                                        {
                                          if (0x84BDA12F684BDA13 * ((v169 - v170) >> 3) <= 0x12F684BDA12F684)
                                          {
                                            operator new();
                                          }

                                          goto LABEL_619;
                                        }

                                        v172 = *(v439 + 280);
                                        v171 = *(v439 + 288);
                                        if (v171 != v172)
                                        {
                                          if (0x84BDA12F684BDA13 * ((v171 - v172) >> 3) <= 0x12F684BDA12F684)
                                          {
                                            operator new();
                                          }

LABEL_619:
                                          std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
                                        }

                                        if (*(v438 + 31) == *(v439 + 124))
                                        {
                                          v173 = v438[12];
                                          v174 = v438[13];
                                          v175 = *(v439 + 96);
                                          v4 = v436;
                                          if (v174 - v173 != *(v439 + 104) - v175)
                                          {
                                            if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
                                            {
                                              goto LABEL_419;
                                            }

                                            v426 = v426 & 0xFFFFFFFF00000000 | 0xEF2;
                                            goto LABEL_424;
                                          }

                                          if (v174 != v173)
                                          {
                                            if (0x8E38E38E38E38E39 * ((v174 - v173) >> 4) <= 1)
                                            {
                                              v176 = 1;
                                            }

                                            else
                                            {
                                              v176 = 0x8E38E38E38E38E39 * ((v174 - v173) >> 4);
                                            }

                                            v177 = (v175 + 32);
                                            v178 = (v173 + 32);
                                            while (1)
                                            {
                                              v179 = *(v178 - 1);
                                              v180 = *v178 - v179;
                                              v181 = *(v177 - 1);
                                              if (v180 != *v177 - v181 || memcmp(v179, v181, v180))
                                              {
                                                break;
                                              }

                                              v177 += 18;
                                              v178 += 18;
                                              if (!--v176)
                                              {
                                                goto LABEL_410;
                                              }
                                            }

                                            if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
                                            {
LABEL_419:
                                              v432 = 27;
                                              v198 = 1;
                                              goto LABEL_440;
                                            }

                                            v425 = v425 & 0xFFFFFFFF00000000 | 0xF32;
LABEL_424:
                                            webrtc::webrtc_logging_impl::Log("\r\t", v199, v200, v201, v202, v203, v204, v205, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_munging_detector.cc");
                                            v432 = 27;
                                            v198 = 1;
                                            goto LABEL_440;
                                          }

LABEL_410:
                                          std::vector<webrtc::RtpExtension>::vector[abi:sn200100](&v445, v438 + 8);
                                          std::vector<webrtc::RtpExtension>::vector[abi:sn200100](__p, (v439 + 64));
                                          v182 = (v445.__r_.__value_.__l.__size_ - v445.__r_.__value_.__r.__words[0]) >> 5;
                                          v183 = (__p[1] - __p[0]) >> 5;
                                          if (v182 < v183)
                                          {
                                            if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
                                            {
                                              v432 = 41;
                                              goto LABEL_438;
                                            }

                                            v432 = 41;
                                            v424 = v424 & 0xFFFFFFFF00000000 | 0xF8A;
LABEL_437:
                                            webrtc::webrtc_logging_impl::Log("\r\t", v184, v185, v186, v187, v188, v189, v190, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_munging_detector.cc");
                                            goto LABEL_438;
                                          }

                                          if (v182 > v183)
                                          {
                                            if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
                                            {
                                              v432 = 40;
                                              v423 = v423 & 0xFFFFFFFF00000000 | 0xFAA;
                                              goto LABEL_437;
                                            }

                                            v432 = 40;
                                            goto LABEL_438;
                                          }

                                          if (v445.__r_.__value_.__l.__size_ == v445.__r_.__value_.__r.__words[0])
                                          {
LABEL_432:
                                            v198 = 0;
                                          }

                                          else
                                          {
                                            if (v182 <= 1)
                                            {
                                              v182 = 1;
                                            }

                                            v206 = (__p[0] + 24);
                                            v207 = (v445.__r_.__value_.__r.__words[0] + 24);
                                            while (1)
                                            {
                                              v209 = *v207;
                                              v207 += 8;
                                              v208 = v209;
                                              v210 = *v206;
                                              v206 += 8;
                                              if (v208 != v210)
                                              {
                                                break;
                                              }

                                              if (!--v182)
                                              {
                                                goto LABEL_432;
                                              }
                                            }

                                            if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
                                            {
                                              v432 = 42;
                                              v422 = v422 & 0xFFFFFFFF00000000 | 0xFD2;
                                              goto LABEL_437;
                                            }

                                            v432 = 42;
LABEL_438:
                                            v198 = 1;
                                          }

                                          std::vector<webrtc::RtpExtension>::~vector[abi:sn200100](__p);
                                          std::vector<webrtc::RtpExtension>::~vector[abi:sn200100](&v445);
                                          goto LABEL_440;
                                        }

                                        v4 = v436;
                                        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
                                        {
                                          v427 = v427 & 0xFFFFFFFF00000000 | 0xEBA;
                                          webrtc::webrtc_logging_impl::Log("\r\t", v191, v192, v193, v194, v195, v196, v197, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_munging_detector.cc");
                                        }

                                        v432 = 29;
                                        v198 = 1;
LABEL_440:
                                        v3 = v435;
                                        v10 = v433;
                                        v6 = v434;
                                        if ((v198 | 4) != 4)
                                        {
                                          return v432;
                                        }

                                        v11 = v437;
LABEL_45:
                                        ++v11;
                                        v8 = *v6;
                                        if (v11 < 0xCCCCCCCCCCCCCCCDLL * ((v6[1] - *v6) >> 3))
                                        {
                                          goto LABEL_46;
                                        }

LABEL_444:
                                        v218 = (*(*v3 + 32))(v3);
                                        v219 = (*(*v4 + 32))(v4);
                                        v221 = *(v218 + 24);
                                        v220 = *(v218 + 32);
                                        v222 = *(v219 + 24);
                                        if (v220 - v221 == *(v219 + 32) - v222)
                                        {
                                          if (v220 == v221)
                                          {
LABEL_494:
                                            memset(&v445, 0, sizeof(v445));
                                            __p[0] = 0;
                                            __p[1] = 0;
                                            *&v443 = 0;
                                            result = !(*(*v4 + 104))(v4, &v445) || !(*(*v435 + 104))(v435, __p) || !std::operator==[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>(&v445, __p);
                                            if (SBYTE7(v443) < 0)
                                            {
                                              v284 = result;
                                              operator delete(__p[0]);
                                              result = v284;
                                              if ((SHIBYTE(v445.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                              {
                                                return result;
                                              }
                                            }

                                            else if ((SHIBYTE(v445.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                            {
                                              return result;
                                            }

                                            v285 = result;
                                            operator delete(v445.__r_.__value_.__l.__data_);
                                            return v285;
                                          }

                                          v223 = v219;
                                          v224 = 0;
                                          if ((0x6DB6DB6DB6DB6DB7 * ((v220 - v221) >> 4)) <= 1)
                                          {
                                            v225 = 1;
                                          }

                                          else
                                          {
                                            v225 = 0x6DB6DB6DB6DB6DB7 * ((v220 - v221) >> 4);
                                          }

                                          while (1)
                                          {
                                            v226 = v221 + 112 * v224;
                                            v227 = v222 + 112 * v224;
                                            v228 = *(v226 + 71);
                                            if (v228 >= 0)
                                            {
                                              v229 = *(v226 + 71);
                                            }

                                            else
                                            {
                                              v229 = *(v226 + 56);
                                            }

                                            v230 = *(v227 + 71);
                                            v231 = v230;
                                            if ((v230 & 0x80u) != 0)
                                            {
                                              v230 = *(v227 + 56);
                                            }

                                            if (v229 != v230 || (v228 >= 0 ? (v232 = (v226 + 48)) : (v232 = *(v226 + 48)), v231 >= 0 ? (v233 = (v227 + 48)) : (v233 = *(v227 + 48)), memcmp(v232, v233, v229)))
                                            {
                                              if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
                                              {
                                                webrtc::webrtc_logging_impl::Log("\r\t", v301, v302, v303, v304, v305, v306, v307, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_munging_detector.cc");
                                              }

                                              return 22;
                                            }

                                            v234 = *(v226 + 95);
                                            if (v234 >= 0)
                                            {
                                              v235 = *(v226 + 95);
                                            }

                                            else
                                            {
                                              v235 = *(v226 + 80);
                                            }

                                            v236 = *(v227 + 95);
                                            v237 = v236;
                                            if ((v236 & 0x80u) != 0)
                                            {
                                              v236 = *(v227 + 80);
                                            }

                                            if (v235 != v236 || (v234 >= 0 ? (v238 = (v226 + 72)) : (v238 = *(v226 + 72)), v237 >= 0 ? (v239 = (v227 + 72)) : (v239 = *(v227 + 72)), memcmp(v238, v239, v235)))
                                            {
                                              if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
                                              {
                                                webrtc::webrtc_logging_impl::Log("\r\t", v308, v309, v310, v311, v312, v313, v314, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_munging_detector.cc");
                                              }

                                              return 21;
                                            }

                                            if (*(v226 + 96) != *(v227 + 96))
                                            {
                                              if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
                                              {
                                                webrtc::webrtc_logging_impl::Log("\r\t", v373, v374, v375, v376, v377, v378, v379, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_munging_detector.cc");
                                              }

                                              return 23;
                                            }

                                            if (*(v226 + 100) != *(v227 + 100))
                                            {
                                              if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
                                              {
                                                webrtc::webrtc_logging_impl::Log("\r\t", v387, v388, v389, v390, v391, v392, v393, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_munging_detector.cc");
                                              }

                                              return 24;
                                            }

                                            v242 = v226 + 24;
                                            v240 = *(v226 + 24);
                                            v241 = *(v242 + 8);
                                            v244 = v227 + 24;
                                            v243 = *(v227 + 24);
                                            if (v241 - v240 != *(v244 + 8) - v243)
                                            {
                                              goto LABEL_503;
                                            }

                                            if (v240 != v241)
                                            {
                                              break;
                                            }

LABEL_493:
                                            ++v224;
                                            v4 = v436;
                                            if (v224 == v225)
                                            {
                                              goto LABEL_494;
                                            }
                                          }

                                          while (1)
                                          {
                                            v245 = *(v240 + 23);
                                            if (v245 >= 0)
                                            {
                                              v246 = *(v240 + 23);
                                            }

                                            else
                                            {
                                              v246 = *(v240 + 8);
                                            }

                                            v247 = *(v243 + 23);
                                            v248 = v247;
                                            if ((v247 & 0x80u) != 0)
                                            {
                                              v247 = *(v243 + 8);
                                            }

                                            if (v246 != v247)
                                            {
                                              break;
                                            }

                                            v249 = v245 >= 0 ? v240 : *v240;
                                            v250 = v248 >= 0 ? v243 : *v243;
                                            if (memcmp(v249, v250, v246))
                                            {
                                              break;
                                            }

                                            v240 += 24;
                                            v243 += 24;
                                            if (v240 == v241)
                                            {
                                              goto LABEL_493;
                                            }
                                          }

LABEL_503:
                                          if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
                                          {
                                            webrtc::webrtc_logging_impl::Log("\r\t", v258, v259, v260, v261, v262, v263, v264, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_munging_detector.cc");
                                          }

                                          v265 = *(v218 + 24);
                                          if (0x6DB6DB6DB6DB6DB7 * ((*(v218 + 32) - v265) >> 4) <= v224)
                                          {
                                            goto LABEL_612;
                                          }

                                          v266 = v265 + 112 * v224;
                                          v267 = *(v266 + 24);
                                          v268 = *(v266 + 32);
                                          if (v267 == v268)
                                          {
LABEL_523:
                                            v274 = *(v223 + 24);
                                            if (0x6DB6DB6DB6DB6DB7 * ((*(v223 + 32) - v274) >> 4) > v224)
                                            {
                                              v275 = v274 + 112 * v224;
                                              v276 = *(v275 + 24);
                                              v277 = *(v275 + 32);
                                              if (v276 == v277)
                                              {
LABEL_537:
                                                if (v276 != v277 && v267 == v268)
                                                {
                                                  return 28;
                                                }

                                                else
                                                {
                                                  return 20;
                                                }
                                              }

                                              while (2)
                                              {
                                                v281 = *(v276 + 23);
                                                if (v281 < 0)
                                                {
                                                  if (v276[1] != 12)
                                                  {
                                                    goto LABEL_530;
                                                  }

                                                  v282 = *v276;
                                                }

                                                else
                                                {
                                                  v282 = v276;
                                                  if (v281 != 12)
                                                  {
                                                    goto LABEL_530;
                                                  }
                                                }

                                                v278 = *v282;
                                                v279 = *(v282 + 2);
                                                if (v278 == 0x616E696D6F6E6572 && v279 == 1852795252)
                                                {
                                                  goto LABEL_537;
                                                }

LABEL_530:
                                                v276 += 3;
                                                if (v276 == v277)
                                                {
                                                  v276 = v277;
                                                  goto LABEL_537;
                                                }

                                                continue;
                                              }
                                            }

LABEL_612:
                                            __break(1u);
LABEL_613:
                                            if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
                                            {
                                              webrtc::webrtc_logging_impl::Log("\r\t", v415, v416, v417, v418, v419, v420, v421, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_munging_detector.cc");
                                            }

                                            return 65;
                                          }

                                          while (2)
                                          {
                                            v272 = *(v267 + 23);
                                            if (v272 < 0)
                                            {
                                              if (v267[1] != 12)
                                              {
                                                goto LABEL_512;
                                              }

                                              v273 = *v267;
                                            }

                                            else
                                            {
                                              v273 = v267;
                                              if (v272 != 12)
                                              {
                                                goto LABEL_512;
                                              }
                                            }

                                            v269 = *v273;
                                            v270 = *(v273 + 2);
                                            if (v269 == 0x616E696D6F6E6572 && v270 == 1852795252)
                                            {
                                              goto LABEL_523;
                                            }

LABEL_512:
                                            v267 += 3;
                                            if (v267 == v268)
                                            {
                                              v267 = v268;
                                              goto LABEL_523;
                                            }

                                            continue;
                                          }
                                        }

                                        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
                                        {
LABEL_443:
                                          webrtc::webrtc_logging_impl::Log("\r\t", v211, v212, v213, v214, v215, v216, v217, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_munging_detector.cc");
                                          return 4;
                                        }

                                        return 4;
                                      }

                                      continue;
                                    }
                                  }

LABEL_617:
                                  webrtc::Codec::Codec(&v445, v127);
                                  __break(1u);
                                }

                                continue;
                              }
                            }

                            continue;
                          }
                        }

                        continue;
                      }
                    }

                    continue;
                  }
                }

                continue;
              }
            }
          }
        }
      }

      else
      {
        if (v81 >= 6)
        {
          goto LABEL_122;
        }

LABEL_108:
        v77 = v77[1];
        if (!v77)
        {
          goto LABEL_123;
        }
      }
    }
  }

  v51 = v47[35];
  v50 = v47[36];
  v52 = 0x84BDA12F684BDA13 * ((v50 - v51) >> 3);
  v53 = v439;
  v55 = *(v439 + 280);
  v54 = *(v439 + 288);
  v56 = 0x84BDA12F684BDA13 * ((v54 - v55) >> 3);
  if (v52 > v56)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v286, v287, v288, v289, v290, v291, v292, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_munging_detector.cc");
    }

    return 80;
  }

  if (v52 < v56)
  {
    if (v51 == v50)
    {
      v51 = v47[36];
    }

    else
    {
      do
      {
        webrtc::Codec::Codec(&v445, v51);
        v293 = v449;
        webrtc::Codec::~Codec(&v445);
        if (v293)
        {
          goto LABEL_552;
        }

        v51 = (v51 + 216);
      }

      while (v51 != v50);
      v51 = v50;
LABEL_552:
      v50 = v47[36];
      v55 = *(v439 + 280);
      v54 = *(v439 + 288);
    }

    if (v55 != v54)
    {
      do
      {
        webrtc::Codec::Codec(&v445, v55);
        v322 = v449;
        webrtc::Codec::~Codec(&v445);
        if (v322)
        {
          goto LABEL_571;
        }

        v55 = (v55 + 216);
      }

      while (v55 != v54);
      v55 = v54;
LABEL_571:
      if (v51 == v50 && v55 != *(v439 + 288))
      {
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log("\r\t", v323, v324, v325, v326, v327, v328, v329, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_munging_detector.cc");
        }

        return 87;
      }
    }

    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v330, v331, v332, v333, v334, v335, v336, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_munging_detector.cc");
    }

    return 81;
  }

  v57 = v47[12];
  v58 = v47[13];
  if (v58 - v57 != 144 || *(v439 + 104) - *(v439 + 96) != 144)
  {
LABEL_369:
    if (v51 == v50)
    {
      v164 = v50;
      v168 = v53;
      v166 = *(v53 + 280);
      v167 = *(v168 + 288);
      if (v166 != v167)
      {
        do
        {
LABEL_384:
          webrtc::Codec::Codec(&v445, v166);
          __p[0] = 0;
          __p[1] = 0;
          *&v443 = 0;
          if (SHIBYTE(v447) < 0)
          {
            if (v446 == 4 && *v445.__r_.__value_.__r.__words[2] == *"H264")
            {
LABEL_390:
              operator new();
            }
          }

          else if (SHIBYTE(v447) == 4 && LODWORD(v445.__r_.__value_.__r.__words[2]) == *"H264")
          {
            goto LABEL_390;
          }

          webrtc::Codec::~Codec(&v445);
          v166 = (v166 + 216);
        }

        while (v166 != v167);
        v166 = v167;
        v167 = *(v439 + 288);
      }
    }

    else
    {
      do
      {
        webrtc::Codec::Codec(&v445, v51);
        __p[0] = 0;
        __p[1] = 0;
        *&v443 = 0;
        if (SHIBYTE(v447) < 0)
        {
          if (v446 == 4 && *v445.__r_.__value_.__r.__words[2] == *"H264")
          {
LABEL_378:
            operator new();
          }
        }

        else if (SHIBYTE(v447) == 4 && LODWORD(v445.__r_.__value_.__r.__words[2]) == *"H264")
        {
          goto LABEL_378;
        }

        webrtc::Codec::~Codec(&v445);
        v51 = (v51 + 216);
      }

      while (v51 != v50);
      v164 = v50;
      v50 = v438[36];
      v165 = v53;
      v166 = *(v53 + 280);
      v167 = *(v165 + 288);
      if (v166 != v167)
      {
        goto LABEL_384;
      }
    }

    v72 = v438;
    if (v164 == v50 && v166 != v167)
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log("\r\t", v294, v295, v296, v297, v298, v299, v300, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_munging_detector.cc");
      }

      return 84;
    }

    goto LABEL_394;
  }

  v60 = *(v57 + 48);
  v59 = *(v57 + 56);
  if (v60 == v59)
  {
    goto LABEL_337;
  }

  do
  {
    if (*(v60 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v445, *v60, *(v60 + 1));
      v446 = 0;
      v447 = 0;
      v448 = 0;
      v67 = *(v60 + 3);
      v66 = *(v60 + 4);
      v64 = v66 - v67;
      if (v66 != v67)
      {
LABEL_75:
        if ((v64 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_618;
      }
    }

    else
    {
      v61 = *v60;
      v445.__r_.__value_.__r.__words[2] = *(v60 + 2);
      *&v445.__r_.__value_.__l.__data_ = v61;
      v446 = 0;
      v447 = 0;
      v448 = 0;
      v63 = *(v60 + 3);
      v62 = *(v60 + 4);
      v64 = v62 - v63;
      if (v62 != v63)
      {
        goto LABEL_75;
      }
    }

    if (SHIBYTE(v445.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v445.__r_.__value_.__l.__size_ != 3)
      {
LABEL_91:
        if ((*(&v445.__r_.__value_.__s + 23) & 0x80) != 0)
        {
          operator delete(v445.__r_.__value_.__l.__data_);
        }

        goto LABEL_72;
      }

      v65 = v445.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (SHIBYTE(v445.__r_.__value_.__r.__words[2]) != 3)
      {
        goto LABEL_91;
      }

      v65 = &v445;
    }

    data_low = LOWORD(v65->__r_.__value_.__l.__data_);
    v69 = v65->__r_.__value_.__s.__data_[2];
    v71 = data_low != *"SIM" || v69 != webrtc::kSimSsrcGroupSemantics[2];
    if ((*(&v445.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      operator delete(v445.__r_.__value_.__l.__data_);
    }

    if (!v71)
    {
      goto LABEL_336;
    }

LABEL_72:
    v60 += 3;
  }

  while (v60 != v59);
  v60 = v59;
LABEL_336:
  v57 = v438[12];
  v58 = v438[13];
LABEL_337:
  if (v58 == v57)
  {
    goto LABEL_612;
  }

  v148 = *(v439 + 96);
  v149 = *(v439 + 104);
  if (v149 == v148)
  {
    goto LABEL_612;
  }

  v150 = *(v57 + 56);
  v151 = *(v148 + 48);
  v152 = *(v148 + 56);
  if (v151 == v152)
  {
    goto LABEL_365;
  }

  while (2)
  {
    if (*(v151 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v445, *v151, *(v151 + 1));
      v446 = 0;
      v447 = 0;
      v448 = 0;
      v159 = *(v151 + 3);
      v158 = *(v151 + 4);
      v156 = v158 - v159;
      if (v158 != v159)
      {
LABEL_345:
        if ((v156 & 0x8000000000000000) == 0)
        {
          operator new();
        }

LABEL_618:
        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }
    }

    else
    {
      v153 = *v151;
      v445.__r_.__value_.__r.__words[2] = *(v151 + 2);
      *&v445.__r_.__value_.__l.__data_ = v153;
      v446 = 0;
      v447 = 0;
      v448 = 0;
      v155 = *(v151 + 3);
      v154 = *(v151 + 4);
      v156 = v154 - v155;
      if (v154 != v155)
      {
        goto LABEL_345;
      }
    }

    if (SHIBYTE(v445.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v445.__r_.__value_.__l.__size_ == 3)
      {
        v157 = v445.__r_.__value_.__r.__words[0];
        goto LABEL_353;
      }

LABEL_361:
      if ((*(&v445.__r_.__value_.__s + 23) & 0x80) != 0)
      {
        operator delete(v445.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      if (SHIBYTE(v445.__r_.__value_.__r.__words[2]) != 3)
      {
        goto LABEL_361;
      }

      v157 = &v445;
LABEL_353:
      v160 = LOWORD(v157->__r_.__value_.__l.__data_);
      v161 = v157->__r_.__value_.__s.__data_[2];
      v163 = v160 != *"SIM" || v161 != webrtc::kSimSsrcGroupSemantics[2];
      if ((*(&v445.__r_.__value_.__s + 23) & 0x80) != 0)
      {
        operator delete(v445.__r_.__value_.__l.__data_);
      }

      if (!v163)
      {
        goto LABEL_364;
      }
    }

    v151 += 3;
    if (v151 != v152)
    {
      continue;
    }

    break;
  }

  v151 = v152;
LABEL_364:
  v148 = *(v439 + 96);
  v149 = *(v439 + 104);
LABEL_365:
  if (v149 == v148)
  {
    goto LABEL_612;
  }

  if (v60 != v150 || v151 == *(v148 + 56))
  {
    v51 = v438[35];
    v50 = v438[36];
    v53 = v439;
    goto LABEL_369;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v380, v381, v382, v383, v384, v385, v386, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_munging_detector.cc");
  }

  return 83;
}

void *std::vector<webrtc::RtpExtension>::vector[abi:sn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  return result;
}

void ***std::vector<webrtc::RtpExtension>::~vector[abi:sn200100](void ***a1)
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
        v5 = *(v3 - 9);
        v3 -= 4;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t webrtc::HasUfragSdpMunging(webrtc *this, const webrtc::SessionDescriptionInterface *a2, const webrtc::SessionDescriptionInterface *a3)
{
  if (!this || !(*(*this + 32))(this, a2, a3))
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      return 0;
    }

LABEL_11:
    webrtc::webrtc_logging_impl::Log("\r\t", v8, v9, v10, v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_munging_detector.cc");
    return 0;
  }

  if (!a2 || !(*(*a2 + 32))(a2))
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      return 0;
    }

    goto LABEL_11;
  }

  v5 = (*(*a2 + 32))(a2);
  v6 = *(v5 + 24);
  v7 = *(v5 + 32);
  if (v7 != v6)
  {
    if ((0x6DB6DB6DB6DB6DB7 * ((v7 - v6) >> 4)) <= 0x249249249249249)
    {
      operator new();
    }

    goto LABEL_17;
  }

  v16 = (*(*this + 32))(this);
  v17 = *(v16 + 24);
  v18 = *(v16 + 32);
  if (v18 != v17)
  {
    if ((0x6DB6DB6DB6DB6DB7 * ((v18 - v17) >> 4)) <= 0x249249249249249)
    {
      operator new();
    }

LABEL_17:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  return 0;
}

webrtc::Codec *absl::c_find_if<std::vector<webrtc::Codec> const,webrtc::anonymous namespace::DetermineAudioSdpMungingType(webrtc::MediaContentDescription const*,webrtc::MediaContentDescription const*)::$_8>(webrtc::Codec *a1, webrtc::Codec *a2)
{
  v2 = a1;
  v11 = *MEMORY[0x277D85DE8];
  if (a1 != a2)
  {
    if (v7 <= "rrtr" && v7 + 4 > "rrtr")
    {
      webrtc::Codec::Codec(v10, a1);
      __break(1u);
    }

    while (1)
    {
      webrtc::Codec::Codec(v10, v2);
      *__p = 4;
      strcpy(v7, "rrtr");
      v9 = 0;
      HasFeedbackParam = webrtc::Codec::HasFeedbackParam(v10, v7);
      if (v9 < 0)
      {
        operator delete(*&__p[1]);
        if (__p[0] < 0)
        {
LABEL_11:
          operator delete(v7[0]);
          webrtc::Codec::~Codec(v10);
          if (HasFeedbackParam)
          {
            return v2;
          }

          goto LABEL_12;
        }
      }

      else if (__p[0] < 0)
      {
        goto LABEL_11;
      }

      webrtc::Codec::~Codec(v10);
      if (HasFeedbackParam)
      {
        return v2;
      }

LABEL_12:
      v2 = (v2 + 216);
      if (v2 == a2)
      {
        return a2;
      }
    }
  }

  return v2;
}

webrtc::Codec *absl::c_find_if<std::vector<webrtc::Codec> const,webrtc::anonymous namespace::DetermineAudioSdpMungingType(webrtc::MediaContentDescription const*,webrtc::MediaContentDescription const*)::$_10>(webrtc::Codec *a1, webrtc::Codec *a2)
{
  v2 = a1;
  v29[5] = *MEMORY[0x277D85DE8];
  if (a1 == a2)
  {
    return v2;
  }

  if (__s2 > "useinbandfec" || &__s2[1] + 4 <= "useinbandfec")
  {
LABEL_9:
    webrtc::Codec::Codec(v25, v2);
    __p[0] = 0;
    __p[1] = 0;
    v24 = 0;
    if (v28 < 0)
    {
      if (v27 != 4 || *v26 != *"opus")
      {
LABEL_7:
        webrtc::Codec::~Codec(v25);
        goto LABEL_8;
      }
    }

    else if (v28 != 4 || v26 != *"opus")
    {
      goto LABEL_7;
    }

    v22 = 12;
    strcpy(__s2, "useinbandfec");
    v5 = v29[0];
    v6 = v29;
    if (!v29[0])
    {
      goto LABEL_7;
    }

    while (1)
    {
      v7 = *(v5 + 55);
      if (v7 >= 0)
      {
        v8 = v5 + 4;
      }

      else
      {
        v8 = v5[4];
      }

      if (v7 >= 0)
      {
        v9 = *(v5 + 55);
      }

      else
      {
        v9 = v5[5];
      }

      if (v9 >= 0xC)
      {
        v10 = 12;
      }

      else
      {
        v10 = v9;
      }

      v11 = memcmp(v8, __s2, v10);
      if (v11)
      {
        if (v11 < 0)
        {
          goto LABEL_17;
        }

LABEL_31:
        v6 = v5;
        v5 = *v5;
        if (!v5)
        {
LABEL_32:
          if (v6 == v29)
          {
            goto LABEL_52;
          }

          v12 = *(v6 + 55);
          if (v12 >= 0)
          {
            v13 = v6 + 4;
          }

          else
          {
            v13 = v6[4];
          }

          if (v12 >= 0)
          {
            v14 = *(v6 + 55);
          }

          else
          {
            v14 = v6[5];
          }

          if (v14 >= 0xC)
          {
            v15 = 12;
          }

          else
          {
            v15 = v14;
          }

          v16 = memcmp(__s2, v13, v15);
          if (!v16)
          {
            if (v14 > 0xC)
            {
              goto LABEL_52;
            }

LABEL_44:
            if (v6 + 7 == __p)
            {
LABEL_47:
              v17 = SHIBYTE(v24);
              if (SHIBYTE(v24) < 0)
              {
                goto LABEL_58;
              }
            }

            else
            {
              if ((*(v6 + 79) & 0x80000000) == 0)
              {
                *__p = *(v6 + 7);
                v24 = v6[9];
                goto LABEL_47;
              }

              std::string::__assign_no_alias<true>(__p, v6[7], v6[8]);
              v17 = SHIBYTE(v24);
              if (SHIBYTE(v24) < 0)
              {
LABEL_58:
                if (__p[1] != 1)
                {
                  goto LABEL_53;
                }

                v18 = *__p[0] == 49;
                if (v22 < 0)
                {
                  goto LABEL_60;
                }

LABEL_54:
                if ((v17 & 0x80) != 0)
                {
                  goto LABEL_61;
                }

LABEL_55:
                webrtc::Codec::~Codec(v25);
                if (v18)
                {
                  return v2;
                }

                goto LABEL_8;
              }
            }

            if (v17 != 1)
            {
              goto LABEL_53;
            }

            v18 = LOBYTE(__p[0]) == 49;
            if ((v22 & 0x80000000) == 0)
            {
              goto LABEL_54;
            }

            goto LABEL_60;
          }

          if ((v16 & 0x80000000) == 0)
          {
            goto LABEL_44;
          }

LABEL_52:
          LOBYTE(v17) = 0;
LABEL_53:
          v18 = 0;
          if ((v22 & 0x80000000) == 0)
          {
            goto LABEL_54;
          }

LABEL_60:
          operator delete(__s2[0]);
          if ((v24 & 0x8000000000000000) == 0)
          {
            goto LABEL_55;
          }

LABEL_61:
          operator delete(__p[0]);
          webrtc::Codec::~Codec(v25);
          if (v18)
          {
            return v2;
          }

LABEL_8:
          v2 = (v2 + 216);
          if (v2 == a2)
          {
            return a2;
          }

          goto LABEL_9;
        }
      }

      else
      {
        if (v9 >= 0xC)
        {
          goto LABEL_31;
        }

LABEL_17:
        v5 = v5[1];
        if (!v5)
        {
          goto LABEL_32;
        }
      }
    }
  }

  while (1)
  {
    result = webrtc::Codec::Codec(v25, v2);
    if (v28 < 0)
    {
      if (v27 != 4)
      {
        goto LABEL_65;
      }

      v20 = v26;
    }

    else
    {
      v20 = &v26;
      if (v28 != 4)
      {
        goto LABEL_65;
      }
    }

    if (*v20 == *"opus")
    {
      break;
    }

LABEL_65:
    webrtc::Codec::~Codec(v25);
    v2 = (v2 + 216);
    if (v2 == a2)
    {
      return a2;
    }
  }

  __break(1u);
  return result;
}

webrtc::Codec *absl::c_find_if<std::vector<webrtc::Codec> const,webrtc::anonymous namespace::DetermineAudioSdpMungingType(webrtc::MediaContentDescription const*,webrtc::MediaContentDescription const*)::$_12>(webrtc::Codec *a1, webrtc::Codec *a2)
{
  v2 = a1;
  v29[5] = *MEMORY[0x277D85DE8];
  if (a1 == a2)
  {
    return v2;
  }

  if (__s2 > "usedtx" || __s2 + 6 <= "usedtx")
  {
LABEL_9:
    webrtc::Codec::Codec(v25, v2);
    __p[0] = 0;
    __p[1] = 0;
    v24 = 0;
    if (v28 < 0)
    {
      if (v27 != 4 || *v26 != *"opus")
      {
LABEL_7:
        webrtc::Codec::~Codec(v25);
        goto LABEL_8;
      }
    }

    else if (v28 != 4 || v26 != *"opus")
    {
      goto LABEL_7;
    }

    v22 = 6;
    strcpy(__s2, "usedtx");
    v5 = v29[0];
    v6 = v29;
    if (!v29[0])
    {
      goto LABEL_7;
    }

    while (1)
    {
      v7 = *(v5 + 55);
      if (v7 >= 0)
      {
        v8 = v5 + 4;
      }

      else
      {
        v8 = v5[4];
      }

      if (v7 >= 0)
      {
        v9 = *(v5 + 55);
      }

      else
      {
        v9 = v5[5];
      }

      if (v9 >= 6)
      {
        v10 = 6;
      }

      else
      {
        v10 = v9;
      }

      v11 = memcmp(v8, __s2, v10);
      if (v11)
      {
        if (v11 < 0)
        {
          goto LABEL_17;
        }

LABEL_31:
        v6 = v5;
        v5 = *v5;
        if (!v5)
        {
LABEL_32:
          if (v6 == v29)
          {
            goto LABEL_52;
          }

          v12 = *(v6 + 55);
          if (v12 >= 0)
          {
            v13 = v6 + 4;
          }

          else
          {
            v13 = v6[4];
          }

          if (v12 >= 0)
          {
            v14 = *(v6 + 55);
          }

          else
          {
            v14 = v6[5];
          }

          if (v14 >= 6)
          {
            v15 = 6;
          }

          else
          {
            v15 = v14;
          }

          v16 = memcmp(__s2, v13, v15);
          if (!v16)
          {
            if (v14 > 6)
            {
              goto LABEL_52;
            }

LABEL_44:
            if (v6 + 7 == __p)
            {
LABEL_47:
              v17 = SHIBYTE(v24);
              if (SHIBYTE(v24) < 0)
              {
                goto LABEL_58;
              }
            }

            else
            {
              if ((*(v6 + 79) & 0x80000000) == 0)
              {
                *__p = *(v6 + 7);
                v24 = v6[9];
                goto LABEL_47;
              }

              std::string::__assign_no_alias<true>(__p, v6[7], v6[8]);
              v17 = SHIBYTE(v24);
              if (SHIBYTE(v24) < 0)
              {
LABEL_58:
                if (__p[1] != 1)
                {
                  goto LABEL_53;
                }

                v18 = *__p[0] == 49;
                if (v22 < 0)
                {
                  goto LABEL_60;
                }

LABEL_54:
                if ((v17 & 0x80) != 0)
                {
                  goto LABEL_61;
                }

LABEL_55:
                webrtc::Codec::~Codec(v25);
                if (v18)
                {
                  return v2;
                }

                goto LABEL_8;
              }
            }

            if (v17 != 1)
            {
              goto LABEL_53;
            }

            v18 = LOBYTE(__p[0]) == 49;
            if ((v22 & 0x80000000) == 0)
            {
              goto LABEL_54;
            }

            goto LABEL_60;
          }

          if ((v16 & 0x80000000) == 0)
          {
            goto LABEL_44;
          }

LABEL_52:
          LOBYTE(v17) = 0;
LABEL_53:
          v18 = 0;
          if ((v22 & 0x80000000) == 0)
          {
            goto LABEL_54;
          }

LABEL_60:
          operator delete(__s2[0]);
          if ((v24 & 0x8000000000000000) == 0)
          {
            goto LABEL_55;
          }

LABEL_61:
          operator delete(__p[0]);
          webrtc::Codec::~Codec(v25);
          if (v18)
          {
            return v2;
          }

LABEL_8:
          v2 = (v2 + 216);
          if (v2 == a2)
          {
            return a2;
          }

          goto LABEL_9;
        }
      }

      else
      {
        if (v9 >= 6)
        {
          goto LABEL_31;
        }

LABEL_17:
        v5 = v5[1];
        if (!v5)
        {
          goto LABEL_32;
        }
      }
    }
  }

  while (1)
  {
    result = webrtc::Codec::Codec(v25, v2);
    if (v28 < 0)
    {
      if (v27 != 4)
      {
        goto LABEL_65;
      }

      v20 = v26;
    }

    else
    {
      v20 = &v26;
      if (v28 != 4)
      {
        goto LABEL_65;
      }
    }

    if (*v20 == *"opus")
    {
      break;
    }

LABEL_65:
    webrtc::Codec::~Codec(v25);
    v2 = (v2 + 216);
    if (v2 == a2)
    {
      return a2;
    }
  }

  __break(1u);
  return result;
}

webrtc::Codec *absl::c_find_if<std::vector<webrtc::Codec> const,webrtc::anonymous namespace::DetermineAudioSdpMungingType(webrtc::MediaContentDescription const*,webrtc::MediaContentDescription const*)::$_14>(webrtc::Codec *a1, webrtc::Codec *a2)
{
  v2 = a1;
  v29[5] = *MEMORY[0x277D85DE8];
  if (a1 == a2)
  {
    return v2;
  }

  if (__s2 > "cbr" || __s2 + 3 <= "cbr")
  {
LABEL_9:
    webrtc::Codec::Codec(v25, v2);
    __p[0] = 0;
    __p[1] = 0;
    v24 = 0;
    if (v28 < 0)
    {
      if (v27 != 4 || *v26 != *"opus")
      {
LABEL_7:
        webrtc::Codec::~Codec(v25);
        goto LABEL_8;
      }
    }

    else if (v28 != 4 || v26 != *"opus")
    {
      goto LABEL_7;
    }

    v22 = 3;
    LOWORD(__s2[0]) = *"cbr";
    WORD1(__s2[0]) = webrtc::kCodecParamCbr[2];
    v5 = v29[0];
    v6 = v29;
    if (!v29[0])
    {
      goto LABEL_7;
    }

    while (1)
    {
      v7 = *(v5 + 55);
      if (v7 >= 0)
      {
        v8 = v5 + 4;
      }

      else
      {
        v8 = v5[4];
      }

      if (v7 >= 0)
      {
        v9 = *(v5 + 55);
      }

      else
      {
        v9 = v5[5];
      }

      if (v9 >= 3)
      {
        v10 = 3;
      }

      else
      {
        v10 = v9;
      }

      v11 = memcmp(v8, __s2, v10);
      if (v11)
      {
        if (v11 < 0)
        {
          goto LABEL_17;
        }

LABEL_31:
        v6 = v5;
        v5 = *v5;
        if (!v5)
        {
LABEL_32:
          if (v6 == v29)
          {
            goto LABEL_52;
          }

          v12 = *(v6 + 55);
          if (v12 >= 0)
          {
            v13 = v6 + 4;
          }

          else
          {
            v13 = v6[4];
          }

          if (v12 >= 0)
          {
            v14 = *(v6 + 55);
          }

          else
          {
            v14 = v6[5];
          }

          if (v14 >= 3)
          {
            v15 = 3;
          }

          else
          {
            v15 = v14;
          }

          v16 = memcmp(__s2, v13, v15);
          if (!v16)
          {
            if (v14 > 3)
            {
              goto LABEL_52;
            }

LABEL_44:
            if (v6 + 7 == __p)
            {
LABEL_47:
              v17 = SHIBYTE(v24);
              if (SHIBYTE(v24) < 0)
              {
                goto LABEL_58;
              }
            }

            else
            {
              if ((*(v6 + 79) & 0x80000000) == 0)
              {
                *__p = *(v6 + 7);
                v24 = v6[9];
                goto LABEL_47;
              }

              std::string::__assign_no_alias<true>(__p, v6[7], v6[8]);
              v17 = SHIBYTE(v24);
              if (SHIBYTE(v24) < 0)
              {
LABEL_58:
                if (__p[1] != 1)
                {
                  goto LABEL_53;
                }

                v18 = *__p[0] == 49;
                if (v22 < 0)
                {
                  goto LABEL_60;
                }

LABEL_54:
                if ((v17 & 0x80) != 0)
                {
                  goto LABEL_61;
                }

LABEL_55:
                webrtc::Codec::~Codec(v25);
                if (v18)
                {
                  return v2;
                }

                goto LABEL_8;
              }
            }

            if (v17 != 1)
            {
              goto LABEL_53;
            }

            v18 = LOBYTE(__p[0]) == 49;
            if ((v22 & 0x80000000) == 0)
            {
              goto LABEL_54;
            }

            goto LABEL_60;
          }

          if ((v16 & 0x80000000) == 0)
          {
            goto LABEL_44;
          }

LABEL_52:
          LOBYTE(v17) = 0;
LABEL_53:
          v18 = 0;
          if ((v22 & 0x80000000) == 0)
          {
            goto LABEL_54;
          }

LABEL_60:
          operator delete(__s2[0]);
          if ((v24 & 0x8000000000000000) == 0)
          {
            goto LABEL_55;
          }

LABEL_61:
          operator delete(__p[0]);
          webrtc::Codec::~Codec(v25);
          if (v18)
          {
            return v2;
          }

LABEL_8:
          v2 = (v2 + 216);
          if (v2 == a2)
          {
            return a2;
          }

          goto LABEL_9;
        }
      }

      else
      {
        if (v9 >= 3)
        {
          goto LABEL_31;
        }

LABEL_17:
        v5 = v5[1];
        if (!v5)
        {
          goto LABEL_32;
        }
      }
    }
  }

  while (1)
  {
    result = webrtc::Codec::Codec(v25, v2);
    if (v28 < 0)
    {
      if (v27 != 4)
      {
        goto LABEL_65;
      }

      v20 = v26;
    }

    else
    {
      v20 = &v26;
      if (v28 != 4)
      {
        goto LABEL_65;
      }
    }

    if (*v20 == *"opus")
    {
      break;
    }

LABEL_65:
    webrtc::Codec::~Codec(v25);
    v2 = (v2 + 216);
    if (v2 == a2)
    {
      return a2;
    }
  }

  __break(1u);
  return result;
}

void webrtc::UpdateRtpHeaderExtensionPreferencesFromSdpMunging(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 != a2)
  {
    v3 = a1;
    while (1)
    {
      webrtc::TransceiverList::FindByMid(a3, (v3 + 8), &v34);
      v5 = v34;
      if (!v34)
      {
        goto LABEL_6;
      }

      (*(*v34 + 160))(&__p, v34);
      v6 = *(v3 + 32);
      v7 = *(v6 + 64);
      v8 = *(v6 + 72);
      v9 = __p;
      v10 = v33;
      if (v7 == v8)
      {
        goto LABEL_40;
      }

      v11 = __p;
      if (__p != v33)
      {
        break;
      }

LABEL_41:
      v23 = v11 - v9;
      if (v23)
      {
        v24 = v9;
      }

      else
      {
        v24 = 0;
      }

      (*(*v5 + 176))(v30, v5, v24, 0xCCCCCCCCCCCCCCCDLL * (v23 >> 3));
      if (v31 < 0)
      {
        operator delete(v30[1]);
        v25 = __p;
        if (__p)
        {
LABEL_48:
          v26 = v33;
          v4 = v25;
          if (v33 != v25)
          {
            do
            {
              v27 = *(v26 - 17);
              v26 -= 5;
              if (v27 < 0)
              {
                operator delete(*v26);
              }
            }

            while (v26 != v25);
            v4 = __p;
          }

          v33 = v25;
          operator delete(v4);
        }
      }

      else
      {
        v25 = __p;
        if (__p)
        {
          goto LABEL_48;
        }
      }

      (*(*v5 + 8))(v5);
LABEL_6:
      v3 += 40;
      if (v3 == a2)
      {
        return;
      }
    }

    do
    {
      v12 = __p;
      if (__p != v10)
      {
        do
        {
          if (*(v12 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&v35, *v12, v12[1]);
          }

          else
          {
            v18 = *v12;
            v35.__r_.__value_.__r.__words[2] = v12[2];
            *&v35.__r_.__value_.__l.__data_ = v18;
          }

          v36 = *(v12 + 3);
          v19 = *(v7 + 23);
          if (v19 >= 0)
          {
            v20 = *(v7 + 23);
          }

          else
          {
            v20 = v7[1];
          }

          size = HIBYTE(v35.__r_.__value_.__r.__words[2]);
          v22 = SHIBYTE(v35.__r_.__value_.__r.__words[2]);
          if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            size = v35.__r_.__value_.__l.__size_;
          }

          if (v20 == size)
          {
            if (v19 >= 0)
            {
              v13 = v7;
            }

            else
            {
              v13 = *v7;
            }

            v14 = v35.__r_.__value_.__r.__words[0];
            if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v15 = &v35;
            }

            else
            {
              v15 = v35.__r_.__value_.__r.__words[0];
            }

            v16 = memcmp(v13, v15, v20);
            v17 = v16;
            if (v22 < 0)
            {
              operator delete(v14);
              if (!v17)
              {
                goto LABEL_37;
              }
            }

            else if (!v16)
            {
              goto LABEL_37;
            }
          }

          else if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v35.__r_.__value_.__l.__data_);
          }

          v12 += 5;
        }

        while (v12 != v10);
        v12 = v10;
LABEL_37:
        v10 = v33;
        if (v12 != v33)
        {
          *(v12 + 9) = 0;
        }
      }

      v7 += 4;
    }

    while (v7 != v8);
    v9 = __p;
LABEL_40:
    v11 = v10;
    goto LABEL_41;
  }
}

void webrtc::SdpOfferAnswerHandler::SdpOfferAnswerHandler(webrtc::SdpOfferAnswerHandler *this, webrtc::PeerConnectionSdpMethods *a2, webrtc::ConnectionContext *a3)
{
  v3 = *MEMORY[0x277D85DE8];
  *this = &unk_28829F0C0;
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 44) = 0;
  operator new();
}

void webrtc::SdpOfferAnswerHandler::~SdpOfferAnswerHandler(webrtc::SdpOfferAnswerHandler *this)
{
  *this = &unk_28829F0C0;
  *(this + 54) = 0;
  v2 = *(this + 53);
  if (v2)
  {
    *v2 = 0;
    if (atomic_fetch_add((v2 + 4), 0xFFFFFFFF) == 1)
    {
      MEMORY[0x2743DA540]();
    }

    *(this + 53) = 0;
  }

  v3 = *(this + 49);
  *(this + 49) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (*(this + 352) != 1 || (*(this + 351) & 0x80000000) == 0)
  {
    if ((*(this + 287) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  operator delete(*(this + 41));
  if (*(this + 287) < 0)
  {
LABEL_10:
    operator delete(*(this + 33));
  }

LABEL_11:
  v4 = *(this + 31);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 28);
  *(this + 28) = 0;
  if (v5)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v5, *(v5 + 8));
    MEMORY[0x2743DA540](v5, 0x1020C4062D53EE8);
  }

  std::__tree<webrtc::SocketAddress>::destroy(this + 200, *(this + 26));
  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 176, *(this + 23));
  if (*(this + 167) < 0)
  {
    operator delete(*(this + 18));
  }

  v6 = *(this + 17);
  if (v6 && atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
  {
    webrtc::OperationsChain::~OperationsChain(v6);
    MEMORY[0x2743DA540]();
  }

  v7 = *(this + 14);
  if (v7)
  {
    v8 = *(this + 15);
    v9 = *(this + 14);
    if (v8 != v7)
    {
      do
      {
        v11 = *--v8;
        v10 = v11;
        *v8 = 0;
        if (v11)
        {
          (*(*v10 + 16))(v10);
        }
      }

      while (v8 != v7);
      v9 = *(this + 14);
    }

    *(this + 15) = v7;
    operator delete(v9);
  }

  v12 = *(this + 13);
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = *(this + 12);
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = *(this + 9);
  *(this + 9) = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v15 = *(this + 8);
  *(this + 8) = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v16 = *(this + 7);
  *(this + 7) = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  v17 = *(this + 6);
  *(this + 6) = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  v18 = *(this + 5);
  *(this + 5) = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  v19 = *(this + 4);
  *(this + 4) = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  v20 = *(this + 3);
  *(this + 3) = 0;
  if (v20)
  {
    webrtc::WebRtcSessionDescriptionFactory::~WebRtcSessionDescriptionFactory(v20);
  }
}

{
  webrtc::SdpOfferAnswerHandler::~SdpOfferAnswerHandler(this);

  JUMPOUT(0x2743DA540);
}

void webrtc::SdpOfferAnswerHandler::Initialize(uint64_t a1, uint64_t a2)
{
  __p[9] = *MEMORY[0x277D85DE8];
  if (*(a2 + 84))
  {
    v3 = *(a2 + 80);
  }

  else
  {
    v3 = 100;
  }

  *(a1 + 372) = v3;
  *(a1 + 376) = 1;
  *(a1 + 300) = *(a2 + 96);
  *(a1 + 304) = 1;
  *(a1 + 308) = *(a2 + 100) | 0x100;
  *(a1 + 312) = *(a2 + 104);
  *(a1 + 316) = 1;
  v4 = *(a2 + 40);
  if (v4 != *(a2 + 48))
  {
    if (*v4)
    {
      atomic_fetch_add_explicit(*v4, 1u, memory_order_relaxed);
    }
  }

  (*(**(a1 + 8) + 16))(__p);
  (*(**(a1 + 8) + 80))(*(a1 + 8));
  (*(**(a1 + 8) + 272))();
  operator new();
}

uint64_t webrtc::SdpOfferAnswerHandler::transceivers(webrtc::SdpOfferAnswerHandler *this)
{
  result = (*(**(this + 1) + 64))(*(this + 1));
  if (result)
  {
    return (*(**(this + 1) + 64))(*(this + 1)) + 48;
  }

  return result;
}

uint64_t webrtc::SdpOfferAnswerHandler::ChangeSignalingState(uint64_t result, int a2)
{
  if (*(result + 84) != a2)
  {
    v16 = v2;
    v17 = v3;
    v5 = result;
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      (*(**(v5 + 8) + 16))(&v14);
      webrtc::webrtc_logging_impl::Log("\r\t\n\t\v\t\v", v6, v7, v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_offer_answer.cc");
      if (v15 < 0)
      {
        operator delete(v14);
      }
    }

    *(v5 + 84) = a2;
    v13 = (*(**(v5 + 8) + 144))(*(v5 + 8));
    return (*(*v13 + 16))(v13, *(v5 + 84));
  }

  return result;
}

void webrtc::SdpOfferAnswerHandler::UpdateNegotiationNeeded(webrtc::SdpOfferAnswerHandler *this)
{
  v2 = (*(**(this + 1) + 192))(*(this + 1));
  v3 = **(this + 1);
  if ((v2 & 1) == 0)
  {
    v4 = *(v3 + 144);
LABEL_8:
    v5 = v4();
    (*(*v5 + 48))(v5);
    ++*(this + 59);
    v6 = *(*(*(**(this + 1) + 144))(*(this + 1)) + 56);

    v6();
    return;
  }

  if (((*(v3 + 184))() & 1) != 0 || (*(*this + 16))(this))
  {
    return;
  }

  if (*(*(this + 28) + 16) || (v25 = (*(*this + 40))(this)) == 0)
  {
LABEL_5:
    if (*(this + 233))
    {
      return;
    }

    *(this + 233) = 1;
    v4 = *(**(this + 1) + 144);
    goto LABEL_8;
  }

  if (*((*(**(this + 1) + 120))(*(this + 1)) + 72))
  {
    v7 = (*(*v25 + 32))(v25);
    v8 = *v7;
    v9 = v7[1];
    while (v8 != v9)
    {
      if (v8)
      {
        v10 = *(v8 + 32);
        if (v10)
        {
          if ((*(*v10 + 16))(v10) == 2)
          {
            if ((*(*this + 48))(this))
            {
              v11 = (*(*this + 48))(this);
              v12 = (*(*v11 + 32))(v11);
              v15 = *(v8 + 8);
              v14 = v8 + 8;
              v13 = v15;
              v16 = *(v14 + 23);
              if (v16 >= 0)
              {
                v17 = v14;
              }

              else
              {
                v17 = v13;
              }

              if (v16 >= 0)
              {
                v18 = *(v14 + 23);
              }

              else
              {
                v18 = *(v14 + 8);
              }

              v19 = *v12;
              v20 = v12[1];
              while (v19 != v20)
              {
                v21 = *(v19 + 31);
                if (v21 < 0)
                {
                  v22 = *(v19 + 8);
                  v21 = *(v19 + 16);
                }

                else
                {
                  v22 = (v19 + 8);
                }

                if (v18 == v21 && !memcmp(v17, v22, v18))
                {
                  if (*(v19 + 4))
                  {
                    goto LABEL_5;
                  }

                  goto LABEL_36;
                }

                v19 += 40;
              }
            }

            goto LABEL_36;
          }
        }
      }

      v8 += 40;
    }

    goto LABEL_5;
  }

LABEL_36:
  if (*(*(this + 2) + 96))
  {
    (*(**(this + 1) + 64))(*(this + 1));
    v23 = (*(**(this + 1) + 64))(*(this + 1));
    v24 = *(v23 + 48);
    if (v24 != *(v23 + 56))
    {
      if (*v24)
      {
        (***v24)(*v24);
      }

      operator new();
    }
  }

  *(this + 233) = 0;
  ++*(this + 59);
}

void webrtc::SdpOfferAnswerHandler::CreateOffer(uint64_t a1, void (***a2)(void))
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

void webrtc::SdpOfferAnswerHandler::SetLocalDescription(uint64_t a1, void (***a2)(void))
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

{
  v3 = *(a1 + 424);
  if (!v3 || atomic_load_explicit((v3 + 4), memory_order_acquire) == 1)
  {
    operator new();
  }

  v4 = *(a1 + 424);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 4), 1u, memory_order_relaxed);
    atomic_fetch_add_explicit((v4 + 4), 1u, memory_order_relaxed);
    if (atomic_fetch_add((v4 + 4), 0xFFFFFFFF) == 1)
    {
      MEMORY[0x2743DA540](v4, 0x1000C404A09149ALL);
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

  operator new();
}

void webrtc::SdpOfferAnswerHandler::SetLocalDescription(uint64_t a1, void *a2, void (****a3)(void))
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

void webrtc::SdpOfferAnswerHandler::SetLocalDescription(uint64_t a1)
{
  v1 = *(a1 + 424);
  if (!v1 || atomic_load_explicit((v1 + 4), memory_order_acquire) == 1)
  {
    operator new();
  }

  v2 = *(a1 + 424);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 4), 1u, memory_order_relaxed);
    atomic_fetch_add_explicit((v2 + 4), 1u, memory_order_relaxed);
    if (atomic_fetch_add((v2 + 4), 0xFFFFFFFF) == 1)
    {
      MEMORY[0x2743DA540](v2, 0x1000C404A09149ALL);
    }
  }

  operator new();
}

void webrtc::SdpOfferAnswerHandler::UpdateTransceiversAndDataChannels(_DWORD *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!(*(*a4 + 56))(a4) && *((*(**(a2 + 8) + 40))(*(a2 + 8)) + 28) == 1 && *(a7 + 16) == 0)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      __p[0] = "INVALID_PARAMETER";
      __p[1] = 17;
      webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v205, v206, v207, v208, v209, v210, v211, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_offer_answer.cc");
    }

    *a1 = 3;
    operator new();
  }

  v233 = a7;
  v229 = a1;
  v226 = a4;
  v12 = (*(*a4 + 32))(a4);
  v13 = *v12;
  v232 = v12;
  if (v12[1] == *v12)
  {
LABEL_334:
    *v229 = 0;
    *(v229 + 38) = 0;
    *(v229 + 16) = 0;
    *(v229 + 24) = 0;
    *(v229 + 8) = 0;
    *(v229 + 29) = 0;
    return;
  }

  v14 = 0;
  v224 = (a1 + 2);
  v16 = __p <= "data" && __p + 4 > "data";
  v221 = v16;
  v18 = __p <= "video" && __p + 5 > "video";
  v220 = v18;
  v20 = __p <= "audio" && __p + 5 > "audio";
  v219 = v20;
  v234 = a2;
  while (1)
  {
    v21 = (v13 + 40 * v14);
    v22 = (*(**(v21 + 4) + 16))(*(v21 + 4));
    v23 = (v21 + 8);
    v24 = v21[31];
    if ((v24 & 0x8000000000000000) != 0)
    {
      v25 = *(v21 + 1);
      v24 = *(v21 + 2);
    }

    else
    {
      v25 = (v21 + 8);
    }

    webrtc::UniqueStringGenerator::AddKnownId(a2 + 168, v25, v24);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(v233, v21 + 1);
    if (v22 <= 1)
    {
      break;
    }

    if (v22 == 3)
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
      {
        v225 = v225 & 0xFFFFFFFF00000000 | 0x7D59;
        webrtc::webrtc_logging_impl::Log("\r\t", v44, v45, v46, v47, v48, v49, v50, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_offer_answer.cc");
      }
    }

    else
    {
      if (v22 != 2)
      {
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
        {
          __p[0] = "INTERNAL_ERROR";
          __p[1] = 14;
          webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v212, v213, v214, v215, v216, v217, v218, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_offer_answer.cc");
        }

        *v229 = 10;
        *(v229 + 31) = 21;
        if (v224 <= "Unknown section type." && v229 + 29 > "Unknown section type.")
        {
          goto LABEL_343;
        }

        qmemcpy(v224, "Unknown section type.", 21);
        *(v229 + 29) = 0;
        *(v229 + 32) = 0;
        *(v229 + 36) = 0;
        *(v229 + 38) = 0;
        return;
      }

      (*(**(a2 + 8) + 32))(&v244);
      if (v245 != 1)
      {
        goto LABEL_85;
      }

      v30 = v21[31];
      if (v30 >= 0)
      {
        v31 = v21[31];
      }

      else
      {
        v31 = *(v21 + 2);
      }

      size = HIBYTE(v244.__r_.__value_.__r.__words[2]);
      if ((v244.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v244.__r_.__value_.__l.__size_;
      }

      if (v31 == size && (v30 >= 0 ? (v33 = v21 + 8) : (v33 = *v23), (v244.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v34 = &v244) : (v34 = v244.__r_.__value_.__r.__words[0]), !memcmp(v33, v34, v31)))
      {
LABEL_85:
        if (v21[4] == 1)
        {
          if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
          {
            webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v68, v69, v70, v71, v72, v73, v74, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_offer_answer.cc");
          }

          operator new();
        }

        v75 = v21[31];
        if (v75 >= 0)
        {
          v76 = v21 + 8;
        }

        else
        {
          v76 = *(v21 + 1);
        }

        if (v75 >= 0)
        {
          v77 = v21[31];
        }

        else
        {
          v77 = *(v21 + 2);
        }

        if (((*(**(a2 + 8) + 256))(*(a2 + 8), v76, v77) & 1) == 0)
        {
          if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
          {
            __p[0] = "INTERNAL_ERROR";
            __p[1] = 14;
            webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v78, v79, v80, v81, v82, v83, v84, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_offer_answer.cc");
          }

          *v229 = 10;
          operator new();
        }

        v43 = 0;
        *v229 = 0;
        *(v229 + 38) = 0;
        v224[1] = 0;
        v224[2] = 0;
        *v224 = 0;
        v42 = 1;
        *(v224 + 21) = 0;
      }

      else
      {
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
        {
          v222 = v222 & 0xFFFFFFFF00000000 | 0x7D09;
          webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v35, v36, v37, v38, v39, v40, v41, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_offer_answer.cc");
        }

        v42 = 0;
        v43 = 1;
      }

      if (v245 == 1 && SHIBYTE(v244.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v244.__r_.__value_.__l.__data_);
      }

      if (((v42 | v43) & 1) == 0)
      {
        return;
      }
    }

LABEL_27:
    ++v14;
    v13 = *v232;
    if (v14 >= 0xCCCCCCCCCCCCCCCDLL * ((v232[1] - *v232) >> 3))
    {
      goto LABEL_334;
    }
  }

  v235 = v21;
  if (a5)
  {
    v26 = (*(*a5 + 32))(a5);
    v27 = a6;
    if (v14 >= 0xCCCCCCCCCCCCCCCDLL * ((v26[1] - *v26) >> 3))
    {
      v29 = 0;
      v21 = 0xCCCCCCCCCCCCCCCDLL;
      if (!a6)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v28 = (*(*a5 + 32))(a5);
      v21 = 0xCCCCCCCCCCCCCCCDLL;
      if (0xCCCCCCCCCCCCCCCDLL * ((v28[1] - *v28) >> 3) <= v14)
      {
        goto LABEL_343;
      }

      v29 = *v28 + 40 * v14;
      if (!a6)
      {
        goto LABEL_63;
      }
    }
  }

  else
  {
    v29 = 0;
    v27 = a6;
    v21 = 0xCCCCCCCCCCCCCCCDLL;
    if (!a6)
    {
      goto LABEL_63;
    }
  }

  v51 = (*(*v27 + 32))(v27);
  if (v14 < 0xCCCCCCCCCCCCCCCDLL * ((v51[1] - *v51) >> 3))
  {
    v52 = (*(*v27 + 32))(v27);
    if (0xCCCCCCCCCCCCCCCDLL * ((v52[1] - *v52) >> 3) <= v14)
    {
      goto LABEL_343;
    }
  }

LABEL_63:
  v230 = (*(*v226 + 56))(v226);
  v21 = *(v235 + 32);
  v53 = (*(**(a2 + 8) + 64))(*(a2 + 8));
  if (v53)
  {
    v53 = ((*(**(a2 + 8) + 64))(*(a2 + 8)) + 48);
  }

  webrtc::TransceiverList::FindByMid(v53, v23, &v249);
  v54 = v249;
  v236 = v14;
  v237 = v23;
  if (!a3)
  {
    if (!v249)
    {
      (*(**(a2 + 8) + 64))(*(a2 + 8));
      v64 = (*(**(a2 + 8) + 64))(*(a2 + 8));
      v65 = *(v64 + 48);
      v66 = *(v64 + 56);
      while (1)
      {
        if (v65 == v66)
        {
          if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
          {
            __p[0] = "INVALID_PARAMETER";
            __p[1] = 17;
            webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v85, v86, v87, v88, v89, v90, v91, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_offer_answer.cc");
          }

          operator new();
        }

        v54 = *v65;
        if (*v65)
        {
          (**v54)(*v65);
        }

        v67 = v54[2];
        if ((*(v67 + 36) & 1) != 0 && *(v67 + 17) == v14)
        {
          break;
        }

        (*(*v54 + 1))(v54);
        ++v65;
      }

      v249 = v54;
    }

    goto LABEL_184;
  }

  if (!v249)
  {
    if ((*(v21 + 31) & 0xFFFFFFFD) == 0 && *(v21 + 26) == *(v21 + 27) && *(v21 + 29) == *(v21 + 30))
    {
      (*(*v21 + 16))(v21);
      (*(**(a2 + 8) + 64))(*(a2 + 8));
      v188 = (*(**(a2 + 8) + 64))(*(a2 + 8));
      v189 = *(v188 + 48);
      v190 = *(v188 + 56);
      if (v190 != v189)
      {
        if (((v190 - v189) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      v249 = 0;
      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
      {
LABEL_110:
        webrtc::CreateRandomUuid(&v244);
      }
    }

    else if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
    {
      goto LABEL_110;
    }

    v55 = (*(*v21 + 16))(v21);
    if (v55 == 2)
    {
      HIBYTE(v254[0]) = 4;
      if (v221)
      {
        goto LABEL_343;
      }

      LODWORD(__p[0]) = 1635017060;
      v92 = (__p + 4);
      goto LABEL_108;
    }

    if (v55 == 1)
    {
      HIBYTE(v254[0]) = 5;
      if (v220)
      {
        goto LABEL_343;
      }

      v63 = "video";
    }

    else
    {
      if (v55)
      {
        HIBYTE(v254[0]) = 0;
        v92 = __p;
LABEL_108:
        *v92 = 0;
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v56, v57, v58, v59, v60, v61, v62, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_offer_answer.cc");
        if (SHIBYTE(v254[0]) < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_110;
      }

      HIBYTE(v254[0]) = 5;
      if (v219)
      {
        goto LABEL_343;
      }

      v63 = "audio";
    }

    LODWORD(__p[0]) = *v63;
    BYTE4(__p[0]) = v63[4];
    v92 = (__p + 5);
    goto LABEL_108;
  }

  (*(**(a2 + 8) + 96))(__p);
  if (!v29)
  {
    LODWORD(v97) = 0;
LABEL_120:
    if (*(v21 + 26) != *(v21 + 27))
    {
      goto LABEL_121;
    }

    goto LABEL_115;
  }

  v97 = *(v29 + 32);
  if (!v97)
  {
    goto LABEL_120;
  }

  if (v97[26] != v97[27])
  {
    LODWORD(v97) = 1;
    if (*(v21 + 26) == *(v21 + 27))
    {
      goto LABEL_115;
    }

LABEL_121:
    v98 = 0;
    v99 = *(v21 + 8);
    v100 = *(v21 + 9);
    if (v99 == v100)
    {
LABEL_116:
      v101 = 1;
      if (v97)
      {
        goto LABEL_150;
      }

LABEL_117:
      v102 = 0;
      v103 = __p[1];
      if (__p[1])
      {
        goto LABEL_151;
      }

      goto LABEL_152;
    }

    goto LABEL_122;
  }

  LODWORD(v97) = v97[29] != v97[30];
  if (*(v21 + 26) != *(v21 + 27))
  {
    goto LABEL_121;
  }

LABEL_115:
  v98 = *(v21 + 29) == *(v21 + 30);
  v99 = *(v21 + 8);
  v100 = *(v21 + 9);
  if (v99 == v100)
  {
    goto LABEL_116;
  }

LABEL_122:
  v104 = 0;
  while (1)
  {
    v105 = *(v99 + 23);
    if (v105 < 0)
    {
      v106 = *v99;
      if (*(v99 + 8) != 45)
      {
        goto LABEL_124;
      }
    }

    else
    {
      v106 = v99;
      if (v105 != 45)
      {
        goto LABEL_124;
      }
    }

    v108 = *v106;
    v107 = v106[1];
    v109 = v106[2];
    v93 = v106[3];
    v94 = *"rtp-stream-id";
    v95 = v106[4];
    v96 = *"tream-id";
    v110 = *(v106 + 37);
    if (*"urn:ietf:params:rtp-hdrext:sdes:rtp-stream-id" != v108 || *":params:rtp-hdrext:sdes:rtp-stream-id" != v107 || *"rtp-hdrext:sdes:rtp-stream-id" != v109 || *"xt:sdes:rtp-stream-id" != v93 || *"rtp-stream-id" != v95 || *"tream-id" != v110)
    {
      goto LABEL_124;
    }

    if (BYTE3(__p[0]))
    {
      break;
    }

    if ((*(v99 + 28) & 1) == 0)
    {
      goto LABEL_148;
    }

LABEL_124:
    v99 += 32;
    if (v99 == v100)
    {
      goto LABEL_149;
    }
  }

  v104 = v99;
  if ((*(v99 + 28) & 1) == 0)
  {
    goto LABEL_124;
  }

LABEL_148:
  v104 = v99;
LABEL_149:
  v101 = v104 == 0;
  if (!v97)
  {
    goto LABEL_117;
  }

LABEL_150:
  v102 = v98 || v101;
  v103 = __p[1];
  if (__p[1])
  {
LABEL_151:
    v254[0] = v103;
    operator delete(v103);
  }

LABEL_152:
  v54 = v249;
  if (!v102)
  {
    goto LABEL_184;
  }

  v116 = *(v249[2] + 4);
  if (*(v249[2] + 5) - v116 != 8)
  {
LABEL_347:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/rtp_transceiver.cc", 460, "1u == senders_.size()", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, v93, v94, v95, v96, 1);
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v117 = *(*v116 + 24);
  if (v117)
  {
    (**v117)(v117);
  }

  (*(*v117 + 256))(__p, v117);
  v118 = v256;
  if (0xF0F0F0F0F0F0F0F1 * ((v256 - v255) >> 4) <= 1)
  {
    LODWORD(v250) = 0;
    v252[14] = 0;
    *v252 = 0;
    *v251 = 0uLL;
    *&v252[5] = 0;
    goto LABEL_177;
  }

  v257 = 0;
  v258 = 0;
  v259 = 0;
  v119 = v255 + 272;
  while (2)
  {
    if (v119 != v118)
    {
      if (*(v119 + 151) < 0)
      {
        std::string::__init_copy_ctor_external(&v244, *(v119 + 128), *(v119 + 136));
        std::vector<std::string>::push_back[abi:sn200100](&v257, &v244);
        if (SHIBYTE(v244.__r_.__value_.__r.__words[2]) < 0)
        {
LABEL_159:
          operator delete(v244.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v244 = *(v119 + 128);
        std::vector<std::string>::push_back[abi:sn200100](&v257, &v244);
        if (SHIBYTE(v244.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_159;
        }
      }

      v119 += 272;
      continue;
    }

    break;
  }

  (*(*v117 + 288))(&v250, v117, &v257);
  v120 = v257;
  if (v257)
  {
    v121 = v258;
    v122 = v257;
    if (v258 != v257)
    {
      do
      {
        v123 = *(v121 - 1);
        v121 -= 3;
        if (v123 < 0)
        {
          operator delete(*v121);
        }
      }

      while (v121 != v120);
      v122 = v257;
    }

    v258 = v120;
    operator delete(v122);
  }

LABEL_177:
  webrtc::RtpParameters::~RtpParameters(__p);
  (*(*v117 + 8))(v117);
  if (v250)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v124, v125, v126, v127, v128, v129, v130, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_offer_answer.cc");
    }

    data = v250;
    v132 = v251[1];
    v21 = v251[0];
    v133 = *v252;
    v134 = *&v252[8];
    v135 = v252[12];
    v223 = v252[13];
    v136 = v252[14];
    v137 = HIBYTE(*v252);
    if (!v54)
    {
      goto LABEL_267;
    }

LABEL_266:
    (*(*v54 + 1))(v54);
    goto LABEL_267;
  }

  if ((v252[7] & 0x80000000) != 0)
  {
    operator delete(v251[0]);
  }

LABEL_184:
  v138 = (*(*v54 + 4))(v54);
  if (v138 != (*(*v21 + 16))(v21))
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      __p[0] = "INVALID_PARAMETER";
      __p[1] = 17;
      webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v142, v143, v144, v145, v146, v147, v148, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_offer_answer.cc");
    }

    operator new();
  }

  if (*(v21 + 26) == *(v21 + 27) && *(v21 + 29) == *(v21 + 30))
  {
    goto LABEL_274;
  }

  if (a3)
  {
    v139 = (v21 + 232);
  }

  else
  {
    v139 = (v21 + 208);
  }

  webrtc::SimulcastLayerList::GetAllLayers(v139, &v247);
  v140 = *(v54[2] + 4);
  if (*(v54[2] + 5) - v140 != 8)
  {
    goto LABEL_347;
  }

  v141 = *(*v140 + 24);
  if (v141)
  {
    (**v141)(v141);
  }

  (*(*v141 + 256))(__p, v141);
  v257 = 0;
  v258 = 0;
  v259 = 0;
  v149 = v255;
  v150 = v256;
  if (v255 != v256)
  {
    v21 = 0;
    while (1)
    {
      v151 = v247;
      v152 = v248;
      if (v247 != v248)
      {
        if (*(v149 + 151) >= 0)
        {
          v153 = *(v149 + 151);
        }

        else
        {
          v153 = *(v149 + 136);
        }

        if ((*(v149 + 151) & 0x80) != 0)
        {
          while (1)
          {
            v157 = *(v151 + 23);
            v158 = v157;
            if (v157 < 0)
            {
              v157 = v151[1];
            }

            if (v157 == v153)
            {
              v159 = v158 >= 0 ? v151 : *v151;
              if (!memcmp(v159, *(v149 + 128), v153))
              {
                break;
              }
            }

            v151 += 4;
            if (v151 == v152)
            {
              goto LABEL_224;
            }
          }
        }

        else
        {
          while (1)
          {
            v154 = *(v151 + 23);
            v155 = v154;
            if (v154 < 0)
            {
              v154 = v151[1];
            }

            if (v154 == v153)
            {
              v156 = v155 >= 0 ? v151 : *v151;
              if (!memcmp(v156, (v149 + 128), v153))
              {
                break;
              }
            }

            v151 += 4;
            if (v151 == v152)
            {
              goto LABEL_224;
            }
          }
        }
      }

      if (v151 == v152)
      {
        break;
      }

      *(v149 + 124) = *(v151 + 24) ^ 1;
      v149 += 272;
      if (v149 == v150)
      {
        goto LABEL_234;
      }
    }

LABEL_224:
    if (!v259)
    {
      v160 = 1 - 0x5555555555555555 * (-v257 >> 3);
      if (v160 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      if (0x5555555555555556 * ((v259 - v257) >> 3) > v160)
      {
        v160 = 0x5555555555555556 * ((v259 - v257) >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v259 - v257) >> 3) >= 0x555555555555555)
      {
        v161 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v161 = v160;
      }

      if (v161)
      {
        if (v161 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }
    }

    goto LABEL_343;
  }

LABEL_234:
  (*(*v141 + 264))(&v244, v141, __p);
  v23 = v237;
  if (!LODWORD(v244.__r_.__value_.__l.__data_))
  {
    (*(*v141 + 288))(&v250, v141, &v257);
    LODWORD(v244.__r_.__value_.__l.__data_) = v250;
    if (SHIBYTE(v245) < 0)
    {
      operator delete(v244.__r_.__value_.__l.__size_);
    }

    *&v244.__r_.__value_.__r.__words[1] = *v251;
    v245 = *v252;
    *v246 = *&v252[8];
    *&v246[3] = *&v252[11];
  }

  v162 = v257;
  if (v257)
  {
    v163 = v258;
    v164 = v257;
    if (v258 != v257)
    {
      do
      {
        v165 = *(v163 - 1);
        v163 -= 3;
        if (v165 < 0)
        {
          operator delete(*v163);
        }
      }

      while (v163 != v162);
      v164 = v257;
    }

    v258 = v162;
    operator delete(v164);
  }

  webrtc::RtpParameters::~RtpParameters(__p);
  (*(*v141 + 8))(v141);
  if (!LODWORD(v244.__r_.__value_.__l.__data_))
  {
    if (SHIBYTE(v245) < 0)
    {
      operator delete(v244.__r_.__value_.__l.__size_);
    }

    v177 = v247;
    if (v247)
    {
      v178 = v248;
      v179 = v247;
      if (v248 != v247)
      {
        do
        {
          v180 = *(v178 - 9);
          v178 -= 4;
          if (v180 < 0)
          {
            operator delete(*v178);
          }
        }

        while (v178 != v177);
        v179 = v247;
      }

      v248 = v177;
      operator delete(v179);
    }

    v54 = v249;
LABEL_274:
    if (v230)
    {
      goto LABEL_313;
    }

    (*(*v54[2] + 40))(__p);
    if (LOBYTE(v254[1]) == 1)
    {
      v181 = SHIBYTE(v254[0]);
      if ((v254[0] & 0x8000000000000000) == 0)
      {
        v182 = HIBYTE(v254[0]);
      }

      else
      {
        v182 = __p[1];
      }

      v183 = *(v235 + 31);
      v184 = v183;
      if ((v183 & 0x80u) != 0)
      {
        v183 = *(v235 + 16);
      }

      if (v182 == v183 && ((v185 = __p[0], (v254[0] & 0x8000000000000000) == 0) ? (v186 = __p) : (v186 = __p[0]), v184 >= 0 ? (v187 = v23) : (v187 = *v23), !memcmp(v186, v187, v182)))
      {
        v191 = v54[2];
        v192 = *(v191 + 36);
        v193 = *(v191 + 17) == v14;
        if (v181 < 0)
        {
          operator delete(v185);
        }

        if (v192 & v193)
        {
LABEL_313:
          v199 = v54[2];
          if (*(v235 + 31) < 0)
          {
            std::string::__init_copy_ctor_external(__p, *(v235 + 8), *(v235 + 16));
          }

          else
          {
            v200 = *v23;
            v254[0] = v23[2];
            *__p = v200;
          }

          LOBYTE(v254[1]) = 1;
          std::__optional_storage_base<std::string,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<std::string,false> const&>(v199 + 104, __p);
          if (LOBYTE(v254[1]) == 1 && SHIBYTE(v254[0]) < 0)
          {
            operator delete(__p[0]);
          }

          v201 = v54[2];
          *(v201 + 17) = v14;
          *(v201 + 144) = 1;
          (**v54)(v54);
          webrtc::SdpOfferAnswerHandler::UpdateTransceiverChannel(v229, a2, v54[2], v235);
          (*(*v54 + 1))(v54);
          if (!a3 && *(v235 + 4) == 1)
          {
            v202 = (*(*v226 + 56))(v226);
            v203 = *v54[2];
            if (v202)
            {
              if (((*(v203 + 64))() & 1) == 0)
              {
                webrtc::RtpTransceiver::StopTransceiverProcedure(v54[2]);
              }
            }

            else if (((*(v203 + 72))() & 1) == 0)
            {
              (*(*v54[2] + 120))(v238);
              if (v239 < 0)
              {
                operator delete(v238[1]);
              }
            }
          }

          v204 = *v229;
          if (!*v229 && *(v229 + 31) < 0)
          {
            operator delete(*v224);
          }

          (*(*v54 + 1))(v54);
          if (v204)
          {
            return;
          }

          goto LABEL_27;
        }
      }

      else if (v181 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if ((*(**(a2 + 8) + 64))(*(a2 + 8)))
    {
      v194 = (*(**(a2 + 8) + 64))(*(a2 + 8)) + 48;
    }

    else
    {
      v194 = 0;
    }

    v243 = v54;
    (**v54)(v54);
    __p[0] = &v243;
    v195 = std::__tree<std::__value_type<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>,webrtc::TransceiverStableState>,std::__map_value_compare<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>,std::__value_type<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>,webrtc::TransceiverStableState>,std::less<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>>,true>,std::allocator<std::__value_type<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>,webrtc::TransceiverStableState>>>::__emplace_unique_key_args<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>,std::piecewise_construct_t const&,std::tuple<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>> const&>,std::tuple<>>(v194 + 24, v54);
    v54 = v249;
    (*(*v249[2] + 40))(&__src);
    if ((v195[19] & 1) == 0)
    {
      v196 = v54[2];
      v198 = *(v196 + 17);
      v197 = *(v196 + 18);
      std::__optional_storage_base<std::string,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<std::string,false> const&>((v195 + 5), &__src);
      v195[9] = v198;
      *(v195 + 80) = v197;
      *(v195 + 152) = 1;
    }

    if (__len_1 == 1 && __len < 0)
    {
      operator delete(__src);
    }

    if (v243)
    {
      (*(*v243 + 1))(v243);
    }

    goto LABEL_313;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v166, v167, v168, v169, v170, v171, v172, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_offer_answer.cc");
  }

  data = v244.__r_.__value_.__l.__data_;
  v132 = v244.__r_.__value_.__r.__words[2];
  v21 = v244.__r_.__value_.__l.__size_;
  v133 = v245;
  v134 = *v246;
  v135 = v246[4];
  v223 = v246[5];
  v136 = v246[6];
  v173 = v247;
  if (v247)
  {
    v174 = v248;
    v175 = v247;
    if (v248 != v247)
    {
      do
      {
        v176 = *(v174 - 9);
        v174 -= 4;
        if (v176 < 0)
        {
          operator delete(*v174);
        }
      }

      while (v174 != v173);
      v175 = v247;
    }

    v248 = v173;
    operator delete(v175);
  }

  v54 = v249;
  v137 = HIBYTE(v133);
  if (v249)
  {
    goto LABEL_266;
  }

LABEL_267:
  if (data)
  {
    if (*(v235 + 4))
    {
      a2 = v234;
      if ((v137 & 0x80) != 0)
      {
        operator delete(v21);
      }

      v14 = v236;
      goto LABEL_27;
    }
  }

  else
  {
LABEL_343:
    __break(1u);
    v135 = 0;
    v134 = 0;
    v136 = 0;
    data = 3;
    LOBYTE(v137) = 0x80;
    v133 = 48;
    v132 = 43;
  }

  *v229 = data;
  *(v229 + 8) = v21;
  *(v229 + 16) = v132;
  *(v229 + 24) = v133 & 0xFFFFFFFFFFFFFFLL | (v137 << 56);
  *(v229 + 32) = v134;
  *(v229 + 36) = v135;
  *(v229 + 37) = v223;
  *(v229 + 38) = v136;
}

void *webrtc::SdpOfferAnswerHandler::FindMediaSectionForTransceiver(webrtc::SdpOfferAnswerHandler *this, const webrtc::RtpTransceiver *a2, const webrtc::SessionDescriptionInterface *a3)
{
  if (!(*(*this + 192))(this))
  {
    v15 = (*(*a3 + 32))(a3);
    v16 = (*(*a2 + 32))(a2);
    v11 = *v15;
    v17 = v15[1];
    if (v11 != v17)
    {
      v18 = v16;
      do
      {
        if (v11)
        {
          v19 = *(v11 + 32);
          if (v19)
          {
            if ((*(*v19 + 16))(v19) == v18)
            {
              return v11;
            }
          }
        }

        v11 += 40;
      }

      while (v11 != v17);
    }

    return 0;
  }

  (*(*a2 + 40))(__p, a2);
  if (v22 != 1)
  {
    return 0;
  }

  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  v5 = (*(*a3 + 32))(a3);
  v6 = __p;
  result = (*(*a2 + 40))(__p, a2);
  if ((v22 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v8 = v21;
  v9 = __p[0];
  if ((v21 & 0x80u) == 0)
  {
    v10 = v21;
  }

  else
  {
    v6 = __p[0];
    v10 = __p[1];
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
        goto LABEL_10;
      }
    }

    else
    {
      v14 = (v11 + 8);
      if (v10 != v13)
      {
        goto LABEL_10;
      }
    }

    if (!memcmp(v6, v14, v10))
    {
      if ((v8 & 0x80000000) == 0)
      {
        return v11;
      }

      goto LABEL_29;
    }

LABEL_10:
    v11 += 40;
  }

  v11 = 0;
  if ((v8 & 0x80000000) == 0)
  {
    return v11;
  }

LABEL_29:
  operator delete(v9);
  return v11;
}

void webrtc::SdpOfferAnswerHandler::ProcessRemovalOfRemoteTrack(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    (*(**a2 + 40))(&__p);
    if ((v38 & 1) == 0)
    {
      goto LABEL_35;
    }

    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v12, v13, v14, v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_offer_answer.cc");
    if (v38 == 1 && v37 < 0)
    {
      operator delete(__p);
    }
  }

  v15 = *(*(*a2 + 16) + 56);
  if (*(*(*a2 + 16) + 64) - v15 != 8)
  {
    goto LABEL_36;
  }

  v16 = *(*v15 + 32);
  if (v16)
  {
    (**v16)(v16);
  }

  (*(*v16 + 56))(&__p, v16);
  (*(*v16 + 8))(v16);
  v17 = *(*(*a2 + 16) + 56);
  if (*(*(*a2 + 16) + 64) - v17 != 8)
  {
    goto LABEL_36;
  }

  v18 = *(*v17 + 32);
  if (v18)
  {
    (**v18)(v18);
  }

  v32 = 0;
  v33 = 0;
  v34 = 0;
  (*(*v18 + 216))(v18, &v32);
  v19 = v32;
  if (v32)
  {
    v20 = v33;
    v21 = v32;
    if (v33 != v32)
    {
      do
      {
        v22 = *(v20 - 1);
        v20 -= 3;
        if (v22 < 0)
        {
          operator delete(*v20);
        }
      }

      while (v20 != v19);
      v21 = v32;
    }

    v33 = v19;
    operator delete(v21);
  }

  (*(*v18 + 8))(v18);
  v23 = *a2;
  if (v23)
  {
    (**v23)(v23);
  }

  v24 = a3[1];
  if (v24 >= a3[2])
  {
    std::vector<webrtc::scoped_refptr<webrtc::RtpTransceiverInterface>>::__emplace_back_slow_path<webrtc::scoped_refptr<webrtc::RtpTransceiverInterface>>(a3);
  }

  if (!v24)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/rtp_transceiver.cc", 466, "1u == receivers_.size()", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, v8, v9, v10, v11, 1);
    webrtc::SdpOfferAnswerHandler::CreateChannels(v30, v31);
    return;
  }

  *v24 = v23;
  a3[1] = v24 + 1;
  webrtc::SdpOfferAnswerHandler::RemoveRemoteStreamsIfEmpty(a1, __p, v36, a4);
  v25 = __p;
  if (__p)
  {
    v26 = v36;
    v27 = __p;
    if (v36 != __p)
    {
      do
      {
        v29 = *--v26;
        v28 = v29;
        if (v29)
        {
          (*(*v28 + 8))(v28);
        }
      }

      while (v26 != v25);
      v27 = __p;
    }

    v36 = v25;
    operator delete(v27);
  }
}

void webrtc::SdpOfferAnswerHandler::CreateChannels(webrtc::SdpOfferAnswerHandler *this, const webrtc::SessionDescription *a2, uint64_t *a3)
{
  v54 = *MEMORY[0x277D85DE8];
  v7 = *a3;
  v6 = a3[1];
  while (1)
  {
    if (v7 == v6)
    {
      goto LABEL_9;
    }

    if (v7)
    {
      v8 = *(v7 + 32);
      if (v8)
      {
        if (!(*(*v8 + 16))(v8))
        {
          break;
        }
      }
    }

    v7 += 40;
  }

  if ((*(v7 + 4) & 1) == 0)
  {
    v9 = (*(**(a2 + 1) + 64))(*(a2 + 1));
    webrtc::RtpTransmissionManager::GetAudioTransceiver(v9, v43);
    v10 = *(*(v43[0] + 16) + 160);
    (*(*v43[0] + 8))(v43[0]);
    if (!v10)
    {
      v20 = (*(**(a2 + 1) + 64))(*(a2 + 1));
      webrtc::RtpTransmissionManager::GetAudioTransceiver(v20, v43);
      v21 = *(v43[0] + 16);
      v22 = *(v7 + 31);
      if ((v22 & 0x8000000000000000) != 0)
      {
        v23 = *(v7 + 8);
        v22 = *(v7 + 16);
      }

      else
      {
        v23 = (v7 + 8);
      }

      v35 = (*(**(a2 + 1) + 240))(*(a2 + 1));
      v36 = (*(**(a2 + 1) + 40))(*(a2 + 1));
      v37 = (*(**(a2 + 1) + 248))(*(a2 + 1));
      (*(**(a2 + 1) + 96))(&v47);
      v38 = *(a2 + 49);
      v52[0] = &unk_28829F838;
      v52[1] = a2;
      v53 = v52;
      webrtc::RtpTransceiver::CreateChannel(v21, v23, v22, v35, v36 + 124, v37, &v47, a2 + 288, this, a2 + 368, v38, v52);
      if (v53 == v52)
      {
        (*(*v53 + 32))(v53);
      }

      else if (v53)
      {
        (*(*v53 + 40))(v53);
      }

      if (__p)
      {
        v49 = __p;
        operator delete(__p);
      }

      if (v43[0])
      {
        (*(*v43[0] + 8))(v43[0]);
      }

      if (*this)
      {
        return;
      }

      if (*(this + 31) < 0)
      {
        operator delete(*(this + 1));
      }
    }
  }

LABEL_9:
  v12 = *a3;
  v11 = a3[1];
  while (1)
  {
    if (v12 == v11)
    {
      goto LABEL_17;
    }

    if (v12)
    {
      v13 = *(v12 + 32);
      if (v13)
      {
        if ((*(*v13 + 16))(v13) == 1)
        {
          break;
        }
      }
    }

    v12 += 40;
  }

  if ((*(v12 + 4) & 1) != 0 || (v14 = (*(**(a2 + 1) + 64))(*(a2 + 1)), webrtc::RtpTransmissionManager::GetVideoTransceiver(v14, v43), v15 = *(*(v43[0] + 16) + 160), (*(*v43[0] + 8))(v43[0]), v15))
  {
LABEL_17:
    v17 = *a3;
    v16 = a3[1];
    while (1)
    {
      if (v17 == v16)
      {
        goto LABEL_26;
      }

      if (v17)
      {
        v18 = *(v17 + 32);
        if (v18)
        {
          if ((*(*v18 + 16))(v18) == 2)
          {
            break;
          }
        }
      }

      v17 += 40;
    }

    if (*(v17 + 4))
    {
      goto LABEL_26;
    }

    v19 = *(a2 + 1);
    if ((*(v17 + 31) & 0x8000000000000000) != 0)
    {
      if ((*(*v19 + 256))(v19, *(v17 + 8), *(v17 + 16)))
      {
        goto LABEL_26;
      }
    }

    else if ((*(*v19 + 256))(v19, v17 + 8))
    {
LABEL_26:
      *this = 0;
      *(this + 38) = 0;
      *(this + 2) = 0;
      *(this + 3) = 0;
      *(this + 1) = 0;
      *(this + 29) = 0;
      return;
    }

    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      v43[0] = "INTERNAL_ERROR";
      v43[1] = 14;
      webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v28, v29, v30, v31, v32, v33, v34, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_offer_answer.cc");
    }

    *this = 10;
    operator new();
  }

  v24 = (*(**(a2 + 1) + 64))(*(a2 + 1));
  webrtc::RtpTransmissionManager::GetVideoTransceiver(v24, v43);
  v25 = *(v43[0] + 16);
  v26 = *(v12 + 31);
  if ((v26 & 0x8000000000000000) != 0)
  {
    v27 = *(v12 + 8);
    v26 = *(v12 + 16);
  }

  else
  {
    v27 = (v12 + 8);
  }

  v39 = (*(**(a2 + 1) + 240))(*(a2 + 1));
  v40 = (*(**(a2 + 1) + 40))(*(a2 + 1));
  v41 = (*(**(a2 + 1) + 248))(*(a2 + 1));
  (*(**(a2 + 1) + 96))(&v44);
  v42 = *(a2 + 49);
  v50[0] = &unk_28829F880;
  v50[1] = a2;
  v51 = v50;
  webrtc::RtpTransceiver::CreateChannel(v25, v27, v26, v39, v40 + 124, v41, &v44, a2 + 288, this, a2 + 368, v42, v50);
  if (v51 == v50)
  {
    (*(*v51 + 32))(v51);
  }

  else if (v51)
  {
    (*(*v51 + 40))();
  }

  if (v45)
  {
    v46 = v45;
    operator delete(v45);
  }

  if (v43[0])
  {
    (*(*v43[0] + 8))(v43[0]);
  }

  if (!*this)
  {
    if (*(this + 31) < 0)
    {
      operator delete(*(this + 1));
    }

    goto LABEL_17;
  }
}

uint64_t webrtc::SdpOfferAnswerHandler::RemoveUnusedChannels(uint64_t a1, uint64_t *a2)
{
  if (*(*(a1 + 16) + 96))
  {
    if (a2)
    {
      v4 = *a2;
      v5 = a2[1];
      while (v4 != v5)
      {
        if (v4)
        {
          v6 = *(v4 + 32);
          if (v6)
          {
            if ((*(*v6 + 16))(v6) == 1)
            {
              if (*(v4 + 4) != 1)
              {
                goto LABEL_12;
              }

              break;
            }
          }
        }

        v4 += 40;
      }
    }

    v7 = (*(**(a1 + 8) + 64))(*(a1 + 8));
    webrtc::RtpTransmissionManager::GetVideoTransceiver(v7, &v16);
    webrtc::RtpTransceiver::ClearChannel(v16[2]);
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

LABEL_12:
    if (a2)
    {
      v8 = *a2;
      v9 = a2[1];
      while (v8 != v9)
      {
        if (v8)
        {
          v10 = *(v8 + 32);
          if (v10)
          {
            if (!(*(*v10 + 16))(v10))
            {
              if (*(v8 + 4) != 1)
              {
                goto LABEL_22;
              }

              break;
            }
          }
        }

        v8 += 40;
      }
    }

    v11 = (*(**(a1 + 8) + 64))(*(a1 + 8));
    webrtc::RtpTransmissionManager::GetAudioTransceiver(v11, &v16);
    webrtc::RtpTransceiver::ClearChannel(v16[2]);
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }
  }

LABEL_22:
  if (!a2)
  {
LABEL_31:
    operator new();
  }

  v13 = *a2;
  v12 = a2[1];
  while (1)
  {
    if (v13 == v12)
    {
      goto LABEL_31;
    }

    if (v13)
    {
      v14 = *(v13 + 32);
      if (v14)
      {
        result = (*(*v14 + 16))(v14);
        if (result == 2)
        {
          break;
        }
      }
    }

    v13 += 40;
  }

  if (*(v13 + 4) == 1)
  {
    memset(&v17, 0, sizeof(v17));
    operator new();
  }

  return result;
}

void webrtc::SdpOfferAnswerHandler::UpdateSessionState(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  if ((a3 - 1) <= 1)
  {
    if (*(*(a2 + 16) + 96))
    {
      (*(**(a2 + 8) + 64))(*(a2 + 8));
      v8 = (*(**(a2 + 8) + 64))(*(a2 + 8));
      v9 = *(v8 + 48);
      if (v9 != *(v8 + 56))
      {
        if (*v9)
        {
          (***v9)(*v9);
        }

        operator new();
      }
    }
  }

  if (a3 == 1)
  {
    if (a4)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    v10 = a2;
    goto LABEL_16;
  }

  v10 = a2;
  if (!a3)
  {
    if (a4)
    {
      v11 = 3;
    }

    else
    {
      v11 = 1;
    }

LABEL_16:
    webrtc::SdpOfferAnswerHandler::ChangeSignalingState(v10, v11);
    goto LABEL_22;
  }

  webrtc::SdpOfferAnswerHandler::ChangeSignalingState(a2, 0);
  if (*(*(a2 + 16) + 96))
  {
    if ((*(**(a2 + 8) + 64))(*(a2 + 8)))
    {
      v12 = (*(**(a2 + 8) + 64))(*(a2 + 8)) + 48;
    }

    else
    {
      v12 = 0;
    }

    v14 = *(v12 + 32);
    v13 = (v12 + 32);
    std::__tree<std::__value_type<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>,webrtc::TransceiverStableState>,std::__map_value_compare<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>,std::__value_type<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>,webrtc::TransceiverStableState>,std::less<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>>,true>,std::allocator<std::__value_type<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>,webrtc::TransceiverStableState>>>::destroy((v13 - 1), v14);
    *v13 = 0;
    v13[1] = 0;
    *(v13 - 1) = v13;
  }

LABEL_22:
  v107 = a4;
  v108 = a3;
  v15 = *v10;
  if (a4)
  {
    (*(v15 + 32))(v10);
    if (!*(v10[2] + 96))
    {
      goto LABEL_143;
    }

    v16 = (*(*v10 + 32))(v10);
  }

  else
  {
    (*(v15 + 24))(v10);
    if (!*(v10[2] + 96))
    {
      goto LABEL_143;
    }

    v16 = (*(*v10 + 24))(v10);
  }

  v103 = 0;
  v104 = 0;
  v102 = &v103;
  v17 = (*(*v16 + 32))();
  v18 = *v17;
  v19 = v17[1];
  v99 = a5;
  if (*v17 != v19)
  {
    v98 = 0;
    v96 = 0;
    v20 = (a5 + 8);
    while (1)
    {
      v21 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a5, (v18 + 8));
      if (v20 == v21)
      {
        goto LABEL_30;
      }

      v22 = v21[7];
      if (!v22)
      {
        goto LABEL_30;
      }

      v23 = v103;
LABEL_35:
      if (!v23)
      {
LABEL_39:
        operator new();
      }

      while (1)
      {
        v24 = v23;
        v25 = v23[4];
        if (v25 > v22)
        {
          v23 = *v24;
          goto LABEL_35;
        }

        if (v25 >= v22)
        {
          break;
        }

        v23 = v24[1];
        if (!v23)
        {
          goto LABEL_39;
        }
      }

      if (*(v18 + 4))
      {
        goto LABEL_30;
      }

      v26 = *(v18 + 32);
      if (!a4)
      {
        break;
      }

      if (a4 != 1 || v26[31] <= 1u)
      {
        goto LABEL_46;
      }

LABEL_30:
      v18 += 40;
      if (v18 == v19)
      {
        goto LABEL_128;
      }
    }

    if ((v26[31] & 0xFFFFFFFD) != 0)
    {
      goto LABEL_30;
    }

LABEL_46:
    v27 = (*(*v26 + 16))(v26);
    if (v27 > 1)
    {
      goto LABEL_30;
    }

    if ((v27 != 0) | v98 & 1)
    {
      v28 = *(v18 + 32);
      if ((v27 != 1) | v96 & 1)
      {
        goto LABEL_92;
      }

      v29 = v28[8];
      while (2)
      {
        if (v29 == v28[9])
        {
          v96 = 1;
          v53 = v28[35];
          v54 = v28[36];
          if (v53 == v54)
          {
            goto LABEL_30;
          }

          goto LABEL_93;
        }

        v39 = *(v29 + 23);
        if ((v39 & 0x8000000000000000) == 0)
        {
          v40 = v29;
          if (v39 == 35)
          {
            goto LABEL_50;
          }

LABEL_63:
          v29 += 32;
          continue;
        }

        break;
      }

      v40 = *v29;
      if (*(v29 + 8) != 35)
      {
        goto LABEL_63;
      }

LABEL_50:
      v30 = *v40;
      v31 = v40[1];
      v32 = v40[2];
      v33 = v40[3];
      v34 = *(v40 + 27);
      if (*"urn:ietf:params:rtp-hdrext:sdes:mid" != v30 || *":params:rtp-hdrext:sdes:mid" != v31 || *"rtp-hdrext:sdes:mid" != v32 || *"xt:sdes:mid" != v33 || *"sdes:mid" != v34)
      {
        goto LABEL_63;
      }

      v96 = 0;
      v53 = v28[35];
      v54 = v28[36];
      if (v53 == v54)
      {
        goto LABEL_30;
      }

LABEL_93:
      if (v27)
      {
        v55 = v24 + 9;
        while (1)
        {
          v56 = *v55;
          if (!*v55)
          {
LABEL_107:
            operator new();
          }

          v57 = *(v53 + 12);
          v58 = *v55;
          while (1)
          {
            v59 = *(v58 + 7);
            if (v57 >= v59)
            {
              break;
            }

LABEL_98:
            v58 = *v58;
            if (!v58)
            {
              goto LABEL_104;
            }
          }

          if (v59 < v57)
          {
            break;
          }

          *(v24 + 89) = 0;
          while (1)
          {
LABEL_104:
            while (1)
            {
              v60 = v56;
              v61 = *(v56 + 28);
              if (v57 >= v61)
              {
                break;
              }

              v56 = *v60;
              if (!*v60)
              {
                goto LABEL_107;
              }
            }

            if (v61 >= v57)
            {
              break;
            }

            v56 = v60[1];
            if (!v56)
            {
              goto LABEL_107;
            }
          }

          v53 += 216;
          if (v53 == v54)
          {
            goto LABEL_29;
          }
        }

        ++v58;
        goto LABEL_98;
      }

      v62 = v24 + 6;
LABEL_110:
      v63 = *v62;
      if (!*v62)
      {
LABEL_121:
        operator new();
      }

      v64 = *(v53 + 12);
      v65 = *v62;
      while (1)
      {
        v66 = *(v65 + 7);
        if (v64 >= v66)
        {
          if (v66 >= v64)
          {
            *(v24 + 88) = 0;
            while (1)
            {
LABEL_118:
              while (1)
              {
                v67 = v63;
                v68 = *(v63 + 28);
                if (v64 >= v68)
                {
                  break;
                }

                v63 = *v67;
                if (!*v67)
                {
                  goto LABEL_121;
                }
              }

              if (v68 >= v64)
              {
                break;
              }

              v63 = v67[1];
              if (!v63)
              {
                goto LABEL_121;
              }
            }

            v53 += 216;
            if (v53 == v54)
            {
LABEL_29:
              v10 = a2;
              a5 = v99;
              goto LABEL_30;
            }

            goto LABEL_110;
          }

          ++v65;
        }

        v65 = *v65;
        if (!v65)
        {
          goto LABEL_118;
        }
      }
    }

    v28 = *(v18 + 32);
    for (i = v28[8]; ; i += 32)
    {
      if (i == v28[9])
      {
        v98 = 1;
LABEL_92:
        v53 = v28[35];
        v54 = v28[36];
        if (v53 == v54)
        {
          goto LABEL_30;
        }

        goto LABEL_93;
      }

      v51 = *(i + 23);
      if (v51 < 0)
      {
        v52 = *i;
        if (*(i + 8) != 35)
        {
          continue;
        }
      }

      else
      {
        v52 = i;
        if (v51 != 35)
        {
          continue;
        }
      }

      v42 = *v52;
      v43 = v52[1];
      v44 = v52[2];
      v45 = v52[3];
      v46 = *(v52 + 27);
      if (*"urn:ietf:params:rtp-hdrext:sdes:mid" == v42 && *":params:rtp-hdrext:sdes:mid" == v43 && *"rtp-hdrext:sdes:mid" == v44 && *"xt:sdes:mid" == v45 && *"sdes:mid" == v46)
      {
        v98 = 0;
        v53 = v28[35];
        v54 = v28[36];
        if (v53 == v54)
        {
          goto LABEL_30;
        }

        goto LABEL_93;
      }
    }
  }

LABEL_128:
  (*(*v10[1] + 192))(v10[1]);
  (*(*v10[1] + 192))(v10[1]);
  __src = 0;
  v110 = 0;
  v111 = 0;
  (*(*v10[1] + 64))(v10[1]);
  v69 = (*(*v10[1] + 64))(v10[1]);
  v70 = *(v69 + 48);
  if (v70 != *(v69 + 56))
  {
    if (*v70)
    {
      (***v70)(*v70);
    }

    operator new();
  }

  std::__tree<std::__value_type<webrtc::ContentGroup const*,webrtc::SdpOfferAnswerHandler::UpdatePayloadTypeDemuxingState(webrtc::ContentSource,std::map<std::string,webrtc::ContentGroup const*> const&)::PayloadTypes>,std::__map_value_compare<webrtc::ContentGroup const*,std::__value_type<webrtc::ContentGroup const*,webrtc::SdpOfferAnswerHandler::UpdatePayloadTypeDemuxingState(webrtc::ContentSource,std::map<std::string,webrtc::ContentGroup const*> const&)::PayloadTypes>,std::less<webrtc::ContentGroup const*>,true>,std::allocator<std::__value_type<webrtc::ContentGroup const*,webrtc::SdpOfferAnswerHandler::UpdatePayloadTypeDemuxingState(webrtc::ContentSource,std::map<std::string,webrtc::ContentGroup const*> const&)::PayloadTypes>>>::destroy(v103);
  v71 = a2;
  (*(**(v71 + 8) + 64))(*(v71 + 8));
  v72 = (*(**(v71 + 8) + 64))(*(v71 + 8));
  v73 = *(v72 + 48);
  if (v73 != *(v72 + 56))
  {
    if (*v73)
    {
      (***v73)(*v73);
    }

    operator new();
  }

  v10 = a2;
  (*(**(*(a2 + 16) + 64) + 16))(&v102);
  v74 = HIBYTE(v104);
  if (v104 < 0)
  {
    v74 = v103;
  }

  if (v74 >= 7)
  {
    if ((SHIBYTE(v104) & 0x80000000) == 0)
    {
      goto LABEL_143;
    }
  }

  else if ((SHIBYTE(v104) & 0x80000000) == 0)
  {
    goto LABEL_143;
  }

  operator delete(v102);
LABEL_143:
  (*(*v10[1] + 32))(&v102);
  if (v105 == 1)
  {
    if ((*(*v10 + 24))(v10))
    {
      v75 = (*(*v10 + 32))(v10);
      if (v105 == 1 && SHIBYTE(v104) < 0)
      {
        operator delete(v102);
      }

      if (v75)
      {
        v76 = (*(*v10 + 24))(v10);
        v77 = (*(*v76 + 32))(v76);
        if (!v77)
        {
          goto LABEL_151;
        }

        v78 = *v77;
        v79 = v77[1];
        if (*v77 == v79)
        {
          goto LABEL_151;
        }

        while (1)
        {
          if (v78)
          {
            v94 = *(v78 + 32);
            if (v94)
            {
              if ((*(*v94 + 16))(v94) == 2)
              {
                break;
              }
            }
          }

          v78 += 40;
          if (v78 == v79)
          {
            goto LABEL_151;
          }
        }

        v95 = *(v78 + 32);
        if (v95)
        {
          v80 = (*(*v95 + 64))(v95);
        }

        else
        {
LABEL_151:
          v80 = 0;
        }

        v81 = (*(*v10 + 32))(v10);
        v82 = (*(*v81 + 32))(v81);
        if (v82)
        {
          v83 = *v82;
          v84 = v82[1];
          while (v83 != v84)
          {
            if (v83)
            {
              v85 = *(v83 + 32);
              if (v85)
              {
                if ((*(*v85 + 16))(v85) == 2)
                {
                  v86 = *(v83 + 32);
                  if (v86)
                  {
                    v87 = (*(*v86 + 64))(v86);
                    if (v80)
                    {
                      if (v87)
                      {
                        v88 = *(v87 + 312);
                        v89 = v88 >= *(v80 + 312) ? *(v80 + 312) : *(v87 + 312);
                        v90 = v88 ? v89 : *(v80 + 312);
                        v91 = v10[1];
                        v92 = *(v87 + 308);
                        LODWORD(__src) = *(v80 + 308);
                        HIDWORD(__src) = v92;
                        LODWORD(v110) = v90;
                        (*(*v91 + 216))(&v102, v91, &__src);
                        if (v106 < 0)
                        {
                          v93 = v103;
                          goto LABEL_179;
                        }
                      }
                    }
                  }

                  break;
                }
              }
            }

            v83 += 40;
          }
        }
      }
    }

    else if ((v105 & 1) != 0 && SHIBYTE(v104) < 0)
    {
      v93 = v102;
LABEL_179:
      operator delete(v93);
    }
  }

  *a1 = 0;
  *(a1 + 38) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 29) = 0;
}

uint64_t webrtc::SdpOfferAnswerHandler::UseCandidatesInRemoteDescription(webrtc::SdpOfferAnswerHandler *this)
{
  v3 = (*(*this + 32))(this);
  if (v3 && (v4 = v3, (*(*v3 + 88))(v3)))
  {
    v5 = 0;
    v6 = 1;
    do
    {
      v7 = (*(*v4 + 96))(v4, v5);
      if ((*(*v7 + 16))(v7))
      {
        for (i = 0; i < (*(*v7 + 16))(v7); ++i)
        {
          v9 = (*(*v7 + 32))(v7, i);
          v18 = 0;
          if (webrtc::SdpOfferAnswerHandler::ReadyToUseRemoteCandidate(this, v9, v4, &v18))
          {
            if (!webrtc::SdpOfferAnswerHandler::UseCandidate(this, v9))
            {
              v6 = 0;
              break;
            }

            v6 = 1;
          }

          else if (v18 && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
          {
            v1 = v1 & 0xFFFFFFFF00000000 | 0xA491;
            webrtc::webrtc_logging_impl::Log("\r\t", v10, v11, v12, v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_offer_answer.cc");
          }
        }
      }

      ++v5;
    }

    while (v5 < (*(*v4 + 88))(v4));
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

double webrtc::SdpOfferAnswerHandler::GetSessionErrorMsg(std::string *this, uint64_t a2)
{
  v35.__r_.__value_.__r.__words[2] = 0x1400000000000000;
  if (&v35 <= "Session error code: " && &v35.__r_.__value_.__r.__words[2] + 4 > "Session error code: ")
  {
    goto LABEL_86;
  }

  LODWORD(v35.__r_.__value_.__r.__words[2]) = 540697956;
  *&v35.__r_.__value_.__l.__data_ = *"Session error code: ";
  v4 = *(a2 + 256);
  if (v4 <= 2)
  {
    v5 = off_279E95228[v4];
    v6 = strlen(v5);
    if (v6 <= 2)
    {
      goto LABEL_5;
    }

LABEL_11:
    if (v6 - 0x7FFFFFFFFFFFFFE3 > 0x800000000000001ELL)
    {
      operator new();
    }

LABEL_87:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v5 = "";
  v6 = strlen("");
  if (v6 > 2)
  {
    goto LABEL_11;
  }

LABEL_5:
  if (v6)
  {
    if (&v35.__r_.__value_.__r.__words[2] + 4 <= v5 && &v35.__r_.__value_.__r.__words[2] + v6 + 4 > v5)
    {
      goto LABEL_86;
    }

    memcpy(&v35.__r_.__value_.__r.__words[2] + 4, v5, v6);
    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      v35.__r_.__value_.__l.__size_ = v6 | 0x14;
    }

    else
    {
      *(&v35.__r_.__value_.__s + 23) = v6 | 0x14;
    }

    v35.__r_.__value_.__s.__data_[v6 | 0x14] = 0;
    v7 = HIBYTE(v35.__r_.__value_.__r.__words[2]);
    size = v35.__r_.__value_.__l.__size_;
  }

  else
  {
    v7 = 20;
    size = 0x6F6320726F727265;
  }

  if ((v7 & 0x80u) == 0)
  {
    v9 = 22;
  }

  else
  {
    v9 = (v35.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v7 & 0x80u) == 0)
  {
    v10 = v7;
  }

  else
  {
    v10 = size;
  }

  if (v9 - v10 >= 2)
  {
    v11 = v35.__r_.__value_.__r.__words[0];
    if ((v7 & 0x80u) == 0)
    {
      v11 = &v35;
    }

    v12 = (v11 + v10);
    if (v11 + v10 <= ". " && v12 + 1 > ". ")
    {
      goto LABEL_86;
    }

    *v12 = 8238;
    v13 = v10 + 2;
    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      v35.__r_.__value_.__l.__size_ = v10 + 2;
    }

    else
    {
      *(&v35.__r_.__value_.__s + 23) = v13 & 0x7F;
    }

    v11->__r_.__value_.__s.__data_[v13] = 0;
  }

  else
  {
    std::string::__grow_by_and_replace(&v35, v9, v10 - v9 + 2, v10, v10, 0, 2uLL, ". ");
  }

  v14 = v35.__r_.__value_.__r.__words[2];
  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = 22;
  }

  else
  {
    v15 = (v35.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = HIBYTE(v35.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v16 = v35.__r_.__value_.__l.__size_;
  }

  if (v15 - v16 >= 0x1B)
  {
    v20 = &v35;
    if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v20 = v35.__r_.__value_.__r.__words[0];
    }

    v21 = v20 + v16;
    if (v20 + v16 <= "Session error description: " && v21 + 27 > "Session error description: ")
    {
      goto LABEL_86;
    }

    qmemcpy(v21, "Session error description: ", 27);
    v22 = v16 + 27;
    if ((v14 & 0x8000000000000000) != 0)
    {
      v35.__r_.__value_.__l.__size_ = v16 + 27;
      v20->__r_.__value_.__s.__data_[v22] = 0;
      v17 = *(a2 + 287);
      if ((v17 & 0x8000000000000000) == 0)
      {
        goto LABEL_40;
      }
    }

    else
    {
      *(&v35.__r_.__value_.__s + 23) = v22 & 0x7F;
      v20->__r_.__value_.__s.__data_[v22] = 0;
      v17 = *(a2 + 287);
      if ((v17 & 0x8000000000000000) == 0)
      {
        goto LABEL_40;
      }
    }
  }

  else
  {
    std::string::__grow_by_and_replace(&v35, v15, v16 - v15 + 27, v16, v16, 0, 0x1BuLL, "Session error description: ");
    v17 = *(a2 + 287);
    if ((v17 & 0x8000000000000000) == 0)
    {
LABEL_40:
      v18 = (a2 + 264);
      v19 = v17 == 0;
      goto LABEL_49;
    }
  }

  v18 = *(a2 + 264);
  v17 = *(a2 + 272);
  v19 = v17 == 0;
  if (!v18 && v17)
  {
    goto LABEL_86;
  }

LABEL_49:
  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = 22;
  }

  else
  {
    v23 = (v35.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v24 = HIBYTE(v35.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v24 = v35.__r_.__value_.__l.__size_;
  }

  if (v23 - v24 < v17)
  {
    std::string::__grow_by_and_replace(&v35, v23, v24 + v17 - v23, v24, v24, 0, v17, v18);
    goto LABEL_70;
  }

  if (!v19)
  {
    if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v25 = &v35;
    }

    else
    {
      v25 = v35.__r_.__value_.__r.__words[0];
    }

    if ((v17 & 0x8000000000000000) == 0)
    {
      v26 = v25 + v24;
      if (v25 + v24 > v18 || &v26[v17] <= v18)
      {
        v27 = v17;
        memmove(v26, v18, v17);
        v28 = v24 + v27;
        if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
        {
          v35.__r_.__value_.__l.__size_ = v24 + v27;
        }

        else
        {
          *(&v35.__r_.__value_.__s + 23) = v28 & 0x7F;
        }

        v25->__r_.__value_.__s.__data_[v28] = 0;
        goto LABEL_70;
      }
    }

LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

LABEL_70:
  v29 = HIBYTE(v35.__r_.__value_.__r.__words[2]);
  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v30 = 22;
  }

  else
  {
    v30 = (v35.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v29 = v35.__r_.__value_.__l.__size_;
  }

  if (v30 == v29)
  {
    std::string::__grow_by_and_replace(&v35, v30, 1uLL, v30, v30, 0, 1uLL, ".");
    goto LABEL_85;
  }

  v31 = &v35;
  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v31 = v35.__r_.__value_.__r.__words[0];
  }

  v32 = v31 + v29;
  if (v31 + v29 <= "." && v32 + 1 > ".")
  {
    goto LABEL_86;
  }

  *v32 = 46;
  v33 = v29 + 1;
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    v35.__r_.__value_.__l.__size_ = v33;
  }

  else
  {
    *(&v35.__r_.__value_.__s + 23) = v33 & 0x7F;
  }

  v31->__r_.__value_.__s.__data_[v33] = 0;
LABEL_85:
  result = *&v35.__r_.__value_.__l.__data_;
  *this = v35;
  return result;
}

uint64_t webrtc::SdpOfferAnswerHandler::AllocateSctpSids(webrtc::SdpOfferAnswerHandler *this)
{
  result = (*(*this + 24))(this);
  if (result)
  {
    result = (*(*this + 32))(this);
    if (result)
    {
      (*(**(this + 1) + 32))(__p);
      if (v10 == 1)
      {
        if (SHIBYTE(v9) < 0)
        {
          operator delete(__p[0]);
        }

        v3 = (*(this + 44) >> 8) & 1 | 0x100000000;
      }

      else
      {
        v3 = 0;
      }

      v6 = v3;
      v7 = BYTE4(v3);
      v4 = *(*(this + 2) + 24);
      __p[0] = (*(**(this + 1) + 120))(*(this + 1));
      __p[1] = this;
      v9 = &v6;
      return (*(*v4 + 96))(v4, __p, webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::SdpOfferAnswerHandler::AllocateSctpSids(void)::$_0>, &v5);
    }
  }

  return result;
}

void webrtc::SdpOfferAnswerHandler::RemoveSenders(uint64_t a1, int a2)
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  webrtc::SdpOfferAnswerHandler::UpdateLocalSenders(a1, &v4, a2);
  v4 = 0;
  v5 = 0;
  v6 = 0;
  webrtc::SdpOfferAnswerHandler::UpdateRemoteSendersList(a1, &v4, 0, a2);
}

void webrtc::SdpOfferAnswerHandler::UpdateLocalSenders(uint64_t a1, __int128 **a2, int a3)
{
  v5 = (*(**(a1 + 8) + 64))(*(a1 + 8));
  v71 = a3;
  v6 = 192;
  if (!a3)
  {
    v6 = 168;
  }

  v7 = (v5 + v6);
  v8 = *(v5 + v6);
  if (v8 == *(v5 + v6 + 8))
  {
LABEL_79:
    v45 = *a2;
    v44 = a2[1];
    for (i = v44; ; v44 = i)
    {
      if (v45 == v44)
      {
        return;
      }

      v46 = *(v45 + 12);
      if (v46 == *(v45 + 13))
      {
        *(&v76.__r_.__value_.__s + 23) = 0;
        v76.__r_.__value_.__s.__data_[0] = 0;
        v48 = *(v45 + 3);
        if (v48 != *(v45 + 4))
        {
          goto LABEL_87;
        }
      }

      else if (*(v46 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v76, *v46, *(v46 + 1));
        v48 = *(v45 + 3);
        if (v48 != *(v45 + 4))
        {
LABEL_87:
          v49 = *v48;
          goto LABEL_90;
        }
      }

      else
      {
        v47 = *v46;
        v76.__r_.__value_.__r.__words[2] = *(v46 + 2);
        *&v76.__r_.__value_.__l.__data_ = v47;
        v48 = *(v45 + 3);
        if (v48 != *(v45 + 4))
        {
          goto LABEL_87;
        }
      }

      v49 = 0;
LABEL_90:
      (*(**(a1 + 8) + 64))(*(a1 + 8));
      v50 = *v7;
      v51 = v7[1];
      v52 = SHIBYTE(v76.__r_.__value_.__r.__words[2]);
      if (*v7 != v51)
      {
        if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v76.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v76.__r_.__value_.__l.__size_;
        }

        if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v54 = &v76;
        }

        else
        {
          v54 = v76.__r_.__value_.__r.__words[0];
        }

        v55 = *(v45 + 23);
        if (v55 >= 0)
        {
          v56 = *(v45 + 23);
        }

        else
        {
          v56 = *(v45 + 1);
        }

        if (v55 >= 0)
        {
          v57 = v45;
        }

        else
        {
          v57 = *v45;
        }

        while (1)
        {
          v58 = *(v50 + 23);
          v59 = v58;
          if ((v58 & 0x80u) != 0)
          {
            v58 = *(v50 + 8);
          }

          if (v58 == size)
          {
            v60 = v59 >= 0 ? v50 : *v50;
            if (!memcmp(v60, v54, size))
            {
              v61 = *(v50 + 47);
              v62 = v61;
              if ((v61 & 0x80u) != 0)
              {
                v61 = *(v50 + 32);
              }

              if (v61 == v56)
              {
                v63 = v62 >= 0 ? (v50 + 24) : *(v50 + 24);
                if (!memcmp(v63, v57, v56))
                {
                  break;
                }
              }
            }
          }

          v50 += 56;
          if (v50 == v51)
          {
            goto LABEL_120;
          }
        }

        if ((v52 & 0x80) != 0)
        {
          goto LABEL_131;
        }

        goto LABEL_80;
      }

LABEL_120:
      if (v52 < 0)
      {
        std::string::__init_copy_ctor_external(&v73, v76.__r_.__value_.__l.__data_, v76.__r_.__value_.__l.__size_);
        if ((*(v45 + 23) & 0x80000000) == 0)
        {
LABEL_122:
          v64 = *v45;
          __p.__r_.__value_.__r.__words[2] = *(v45 + 2);
          *&__p.__r_.__value_.__l.__data_ = v64;
          v75 = v49;
          v65 = v7[1];
          if (v65 >= v7[2])
          {
            goto LABEL_128;
          }

          goto LABEL_123;
        }
      }

      else
      {
        v73 = v76;
        if ((*(v45 + 23) & 0x80000000) == 0)
        {
          goto LABEL_122;
        }
      }

      std::string::__init_copy_ctor_external(&__p, *v45, *(v45 + 1));
      v75 = v49;
      v65 = v7[1];
      if (v65 >= v7[2])
      {
LABEL_128:
        std::vector<webrtc::RtpSenderInfo>::__emplace_back_slow_path<webrtc::RtpSenderInfo>(v7);
      }

LABEL_123:
      if (!v65)
      {
        goto LABEL_133;
      }

      v66 = *&v73.__r_.__value_.__l.__data_;
      *(v65 + 16) = *(&v73.__r_.__value_.__l + 2);
      *v65 = v66;
      memset(&v73, 0, sizeof(v73));
      v67 = __p.__r_.__value_.__r.__words[2];
      *(v65 + 24) = *&__p.__r_.__value_.__l.__data_;
      *(v65 + 40) = v67;
      memset(&__p, 0, sizeof(__p));
      *(v65 + 48) = v75;
      v7[1] = v65 + 56;
      if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v73.__r_.__value_.__l.__data_);
      }

      v68 = (*(**(a1 + 8) + 64))(*(a1 + 8));
      v69 = v7[1];
      if (*v7 == v69)
      {
        goto LABEL_133;
      }

      webrtc::RtpTransmissionManager::OnLocalSenderAdded(v68, v69 - 56, v71);
      if ((*(&v76.__r_.__value_.__s + 23) & 0x80) != 0)
      {
LABEL_131:
        operator delete(v76.__r_.__value_.__l.__data_);
      }

LABEL_80:
      v45 += 9;
    }
  }

  while (1)
  {
    while (1)
    {
      v10 = *a2;
      v9 = a2[1];
      if (*a2 != v9)
      {
        break;
      }

LABEL_13:
      if (v10 == v9 || v10 == 0)
      {
        goto LABEL_52;
      }

      v14 = *(v10 + 23);
      if (v14 >= 0)
      {
        v15 = *(v10 + 23);
      }

      else
      {
        v15 = *(v10 + 1);
      }

      v16 = *(v8 + 47);
      v17 = v16;
      if (v16 < 0)
      {
        v16 = v8[4];
      }

      if (v15 != v16)
      {
        goto LABEL_52;
      }

      v18 = v14 >= 0 ? v10 : *v10;
      v19 = v17 >= 0 ? v8 + 3 : v8[3];
      if (memcmp(v18, v19, v15))
      {
        goto LABEL_52;
      }

      v20 = *(v10 + 12);
      if (v20 == *(v10 + 13))
      {
        v22 = 0;
        *(&v73.__r_.__value_.__s + 23) = 0;
        v73.__r_.__value_.__s.__data_[0] = 0;
      }

      else
      {
        if (*(v20 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v73, *v20, *(v20 + 1));
        }

        else
        {
          v21 = *v20;
          v73.__r_.__value_.__r.__words[2] = *(v20 + 2);
          *&v73.__r_.__value_.__l.__data_ = v21;
        }

        v22 = HIBYTE(v73.__r_.__value_.__r.__words[2]);
      }

      v23 = v22;
      if ((v22 & 0x80u) == 0)
      {
        v24 = v22;
      }

      else
      {
        v24 = v73.__r_.__value_.__l.__size_;
      }

      v25 = *(v8 + 23);
      v26 = v25;
      if (v25 < 0)
      {
        v25 = v8[1];
      }

      if (v24 == v25)
      {
        if (v23 >= 0)
        {
          v27 = &v73;
        }

        else
        {
          v27 = v73.__r_.__value_.__r.__words[0];
        }

        if (v26 >= 0)
        {
          v28 = v8;
        }

        else
        {
          v28 = *v8;
        }

        v29 = memcmp(v27, v28, v24) != 0;
        if ((v23 & 0x80000000) == 0)
        {
LABEL_51:
          if (v29)
          {
            goto LABEL_52;
          }

          goto LABEL_78;
        }
      }

      else
      {
        v29 = 1;
        if ((v23 & 0x80000000) == 0)
        {
          goto LABEL_51;
        }
      }

      operator delete(v73.__r_.__value_.__l.__data_);
      if (v29)
      {
        goto LABEL_52;
      }

LABEL_78:
      v8 += 7;
      if (v8 == v7[1])
      {
        goto LABEL_79;
      }
    }

    v11 = *(v10 + 3);
    v12 = *(v10 + 4);
    if (v11 != v12)
    {
      goto LABEL_10;
    }

LABEL_8:
    while (1)
    {
      v10 += 9;
      if (v10 == v9)
      {
        break;
      }

      v11 = *(v10 + 3);
      v12 = *(v10 + 4);
      if (v11 != v12)
      {
LABEL_10:
        while (*v11 != *(v8 + 12))
        {
          if (++v11 == v12)
          {
            goto LABEL_8;
          }
        }

        if (v11 != v12)
        {
          goto LABEL_13;
        }
      }
    }

LABEL_52:
    v30 = (*(**(a1 + 8) + 64))(*(a1 + 8));
    webrtc::RtpTransmissionManager::FindSenderById(v30, &v73);
    v31 = v73.__r_.__value_.__r.__words[0];
    if (v73.__r_.__value_.__r.__words[0])
    {
      if ((*(*v73.__r_.__value_.__l.__data_ + 64))(v73.__r_.__value_.__r.__words[0]) == v71)
      {
        (*(*v31[3] + 200))(v31[3], 0);
      }

      else if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log("\r\t", v32, v33, v34, v35, v36, v37, v38, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/rtp_transmission_manager.cc");
      }

      ((*v31)[1])(v31);
    }

    v39 = v7[1];
    if (v39 == v8)
    {
      break;
    }

    if (v8 + 7 == v39)
    {
      v41 = v8;
      if (v39 != v8)
      {
        goto LABEL_72;
      }

      goto LABEL_69;
    }

    v40 = v8;
    do
    {
      if (*(v40 + 23) < 0)
      {
        operator delete(*v40);
      }

      *v40 = *(v40 + 7);
      v40[2] = v40[9];
      *(v40 + 79) = 0;
      *(v40 + 56) = 0;
      if (*(v40 + 47) < 0)
      {
        operator delete(v40[3]);
      }

      *(v40 + 3) = *(v40 + 5);
      v40[5] = v40[12];
      *(v40 + 103) = 0;
      *(v40 + 80) = 0;
      *(v40 + 12) = *(v40 + 26);
      v41 = (v40 + 7);
      v42 = (v40 + 14);
      v40 += 7;
    }

    while (v42 != v39);
    v39 = v7[1];
    if (v39 != v41)
    {
      do
      {
LABEL_72:
        if (*(v39 - 9) < 0)
        {
          operator delete(*(v39 - 4));
          v43 = v39 - 7;
          if (*(v39 - 33) < 0)
          {
LABEL_76:
            operator delete(*v43);
          }
        }

        else
        {
          v43 = v39 - 7;
          if (*(v39 - 33) < 0)
          {
            goto LABEL_76;
          }
        }

        v39 = v43;
      }

      while (v43 != v41);
    }

LABEL_69:
    v7[1] = v41;
    if (v8 == v41)
    {
      goto LABEL_79;
    }
  }

LABEL_133:
  __break(1u);
}