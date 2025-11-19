uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::RtpTransceiverInterface,std::vector<webrtc::RtpCodecCapability>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = (**a1 + (v3 >> 1));
  if (v3)
  {
    (*(*v4 + v2))(&v14);
    v5 = *(v1 + 24);
    if (!v5)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v2(&v14, v4);
    v5 = *(v1 + 24);
    if (!v5)
    {
      goto LABEL_11;
    }
  }

  v6 = *(v1 + 32);
  v7 = v5;
  if (v6 != v5)
  {
    v8 = v6 - 160;
    v9 = v6 - 160;
    v10 = v6 - 160;
    do
    {
      v11 = *v10;
      v10 -= 160;
      (*v11)(v9);
      v8 -= 160;
      v12 = v9 == v5;
      v9 = v10;
    }

    while (!v12);
    v7 = *(v1 + 24);
  }

  *(v1 + 32) = v5;
  operator delete(v7);
LABEL_11:
  *(v1 + 24) = v14;
  *(v1 + 40) = v15;
  pthread_mutex_lock((v1 + 56));
  *(v1 + 169) = 1;
  pthread_cond_broadcast((v1 + 120));
  return pthread_mutex_unlock((v1 + 56));
}

void webrtc::ConstMethodCall<webrtc::RtpTransceiverInterface,std::vector<webrtc::RtpHeaderExtensionCapability>>::Marshal(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = &unk_280905000;
  {
    v6 = &unk_280905000;
    if (v18)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v6[403] + 88)) == a2)
  {
    v11 = a1[1];
    v12 = a1[2];
    v13 = (*a1 + (v12 >> 1));
    if (v12)
    {
      (*(*v13 + v11))(&v21);
      v14 = a1[3];
      if (!v14)
      {
LABEL_15:
        v9 = v21;
        v10 = v22;
        goto LABEL_16;
      }
    }

    else
    {
      v11(&v21, v13);
      v14 = a1[3];
      if (!v14)
      {
        goto LABEL_15;
      }
    }

    v15 = a1[4];
    v16 = v14;
    if (v15 != v14)
    {
      do
      {
        v17 = *(v15 - 17);
        v15 -= 5;
        if (v17 < 0)
        {
          operator delete(*v15);
        }
      }

      while (v15 != v14);
      v16 = a1[3];
    }

    a1[4] = v14;
    operator delete(v16);
    goto LABEL_15;
  }

  *&v21 = a1;
  v22 = absl::internal_any_invocable::LocalManagerTrivial;
  v23 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::RtpTransceiverInterface,std::vector<webrtc::RtpHeaderExtensionCapability>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
  (*(*a2 + 8))(a2, &v21, &v20, &v19);
  v22(1, &v21, &v21);
  v7.var0 = 0x7FFFFFFFFFFFFFFFLL;
  v8.var0 = 3000000;
  webrtc::Event::Wait((a1 + 7), v7, v8);
  v9 = *(a1 + 3);
  v10 = a1[5];
LABEL_16:
  *a3 = v9;
  *(a3 + 16) = v10;
  a1[4] = 0;
  a1[5] = 0;
  a1[3] = 0;
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::RtpTransceiverInterface,std::vector<webrtc::RtpHeaderExtensionCapability>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = (**a1 + (v3 >> 1));
  if (v3)
  {
    (*(*v4 + v2))(&v10);
    v5 = *(v1 + 24);
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v2(&v10, v4);
    v5 = *(v1 + 24);
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  v6 = *(v1 + 32);
  v7 = v5;
  if (v6 != v5)
  {
    do
    {
      v8 = *(v6 - 17);
      v6 -= 5;
      if (v8 < 0)
      {
        operator delete(*v6);
      }
    }

    while (v6 != v5);
    v7 = *(v1 + 24);
  }

  *(v1 + 32) = v5;
  operator delete(v7);
LABEL_12:
  *(v1 + 24) = v10;
  *(v1 + 40) = v11;
  pthread_mutex_lock((v1 + 56));
  *(v1 + 169) = 1;
  pthread_cond_broadcast((v1 + 120));
  return pthread_mutex_unlock((v1 + 56));
}

__n128 webrtc::MethodCall<webrtc::RtpTransceiverInterface,webrtc::RTCError,webrtc::ArrayView<webrtc::RtpHeaderExtensionCapability const,-4711l>>::Marshal@<Q0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = &unk_280905000;
  {
    v6 = &unk_280905000;
    if (v13)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v6[403] + 88)) == a2)
  {
    v9 = *(a1 + 8);
    v10 = *(a1 + 16);
    v11 = (*a1 + (v10 >> 1));
    if (v10)
    {
      v9 = *(*v11 + v9);
    }

    v9(&v15, v11, **(a1 + 64), *(*(a1 + 64) + 8));
    *(a1 + 24) = v15;
    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    *(a1 + 32) = v16;
    *(a1 + 48) = v17;
    *(a1 + 56) = v18[0];
    *(a1 + 59) = *(v18 + 3);
  }

  else
  {
    v15 = a1;
    *(&v16 + 1) = absl::internal_any_invocable::LocalManagerTrivial;
    v17 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::RtpTransceiverInterface,webrtc::RTCError,webrtc::ArrayView<webrtc::RtpHeaderExtensionCapability const,-4711l>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*a2 + 8))(a2, &v15, &v19, &v14);
    (*(&v16 + 1))(1, &v15, &v15);
    v7.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v8.var0 = 3000000;
    webrtc::Event::Wait((a1 + 72), v7, v8);
  }

  *a3 = *(a1 + 24);
  result = *(a1 + 32);
  *(a3 + 8) = result;
  *(a3 + 24) = *(a1 + 48);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a3 + 32) = *(a1 + 56);
  *(a3 + 35) = *(a1 + 59);
  return result;
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::RtpTransceiverInterface,webrtc::RTCError,webrtc::ArrayView<webrtc::RtpHeaderExtensionCapability const,-4711l>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 64);
  v5 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v5 + v2);
  }

  v2(&v7, v5, *v4, v4[1]);
  *(v1 + 24) = v7;
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  *(v1 + 32) = v8;
  *(v1 + 48) = v9;
  *(v1 + 56) = v10[0];
  *(v1 + 59) = *(v10 + 3);
  pthread_mutex_lock((v1 + 72));
  *(v1 + 185) = 1;
  pthread_cond_broadcast((v1 + 136));
  return pthread_mutex_unlock((v1 + 72));
}

BOOL webrtc::RefCountedObject<webrtc::RtpTransceiver>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 90, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

void webrtc::RefCountedObject<webrtc::RtpTransceiver>::~RefCountedObject(webrtc::RtpTransceiver *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  webrtc::RtpTransceiver::~RtpTransceiver(a1, a2, a3, a4, a5, a6, a7, a8);

  JUMPOUT(0x2743DA540);
}

uint64_t std::__function::__func<webrtc::PeerConnection::PeerConnection(webrtc::PeerConnectionInterface::RTCConfiguration const&,webrtc::Environment const&,webrtc::scoped_refptr<webrtc::ConnectionContext>,webrtc::PeerConnectionFactoryInterface::Options const&,BOOL,std::unique_ptr<webrtc::Call>,webrtc::PeerConnectionDependencies &,std::set<webrtc::SocketAddress> const&,std::vector<webrtc::RelayServerConfig> const&,BOOL)::$_2,std::allocator<webrtc::PeerConnection::PeerConnection(webrtc::PeerConnectionInterface::RTCConfiguration const&,webrtc::Environment const&,webrtc::scoped_refptr<webrtc::ConnectionContext>,webrtc::PeerConnectionFactoryInterface::Options const&,BOOL,std::unique_ptr<webrtc::Call>,webrtc::PeerConnectionDependencies &,std::set<webrtc::SocketAddress> const&,std::vector<webrtc::RelayServerConfig> const&,BOOL)::$_2>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2882984C8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<webrtc::PeerConnection::PeerConnection(webrtc::PeerConnectionInterface::RTCConfiguration const&,webrtc::Environment const&,webrtc::scoped_refptr<webrtc::ConnectionContext>,webrtc::PeerConnectionFactoryInterface::Options const&,BOOL,std::unique_ptr<webrtc::Call>,webrtc::PeerConnectionDependencies &,std::set<webrtc::SocketAddress> const&,std::vector<webrtc::RelayServerConfig> const&,BOOL)::$_2,std::allocator<webrtc::PeerConnection::PeerConnection(webrtc::PeerConnectionInterface::RTCConfiguration const&,webrtc::Environment const&,webrtc::scoped_refptr<webrtc::ConnectionContext>,webrtc::PeerConnectionFactoryInterface::Options const&,BOOL,std::unique_ptr<webrtc::Call>,webrtc::PeerConnectionDependencies &,std::set<webrtc::SocketAddress> const&,std::vector<webrtc::RelayServerConfig> const&,BOOL)::$_2>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 120);
  if (v1)
  {
    v2 = *(*v1 + 160);

    v2();
  }

  else if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v3, v4, v5, v6, v7, v8, v9, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/usage_pattern.cc");
  }
}

uint64_t webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::PeerConnection::~PeerConnection()::$_0>(void **a1)
{
  v1 = *a1;
  v5 = 0;
  v8[14] = 0;
  v7 = 0;
  memset(v8, 0, 13);
  v6 = 0;
  webrtc::PeerConnection::TeardownDataChannelTransport_n(v1, &v5);
  v2 = v1[117];
  v1[117] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  result = v1[69];
  v1[69] = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  v4 = v1[74];
  if (v4)
  {
    *(v4 + 4) = 0;
  }

  return result;
}

uint64_t webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::PeerConnection::~PeerConnection()::$_1>(uint64_t *a1)
{
  v1 = *a1;
  *(*(*a1 + 600) + 4) = 0;
  result = *(v1 + 576);
  *(v1 + 576) = 0;
  if (result)
  {
    return (*(*result + 256))();
  }

  return result;
}

void webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::JsepTransportController * webrtc::Thread::BlockingCall<webrtc::PeerConnection::InitializeNetworkThread(std::set<webrtc::SocketAddress> const&,std::vector<webrtc::RelayServerConfig> const&)::$_0,webrtc::JsepTransportController *,void>(webrtc::PeerConnection::InitializeNetworkThread(std::set<webrtc::SocketAddress> const&,std::vector<webrtc::RelayServerConfig> const&)::$_0 &&,webrtc::Location const&)::{lambda(void)#1}>(uint64_t a1)
{
  v56 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 8);
  v3 = v1[2];
  v2 = v1[3];
  v5 = *v1;
  v4 = v1[1];
  (*(*v4[69] + 16))(v4[69]);
  v6 = *(v4[69] + 29);
  v7 = ((*v4)[114])(v4);
  (*(*v7 + 16))(&__p);
  v8 = HIBYTE(v55);
  if (v55 < 0)
  {
    v8 = v54;
  }

  if (v8 >= 8)
  {
    p_p = __p;
    if (v55 >= 0)
    {
      p_p = &__p;
    }

    v9 = *p_p == 0x64656C6261736944;
    v10 = v6 | 0x4140;
    if ((SHIBYTE(v55) & 0x80000000) == 0)
    {
LABEL_10:
      if (v9)
      {
        v12 = v10 & 0xFFFFFFBF;
      }

      else
      {
        v12 = v10;
      }

      if (*(v5 + 68) == 1)
      {
        v12 &= ~0x4000u;
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log("\r\t", v13, v14, v15, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/peer_connection.cc");
        }
      }

      if (*(v5 + 88) == 1)
      {
        v12 |= 8u;
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log("\r\t", v20, v21, v22, v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/peer_connection.cc");
        }
      }

      if (*(v5 + 92) == 1)
      {
        v12 |= 0x2000u;
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log("\r\t", v27, v28, v29, v30, v31, v32, v33, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/peer_connection.cc");
        }
      }

      if (*(v5 + 76) == 1)
      {
        v12 |= 0x10000u;
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log("\r\t", v34, v35, v36, v37, v38, v39, v40, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/peer_connection.cc");
        }
      }

      v41 = v4[69];
      *(v41 + 116) = v12;
      *(v41 + 132) = 50;
      v42 = *(v5 + 24) - 1;
      if (v42 > 2)
      {
        v43 = 0;
        v44 = *(v41 + 140);
        if (!v44)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v43 = dword_273BA03AC[v42];
        v44 = *(v41 + 140);
        if (v44 == v43)
        {
          goto LABEL_32;
        }
      }

      *(v41 + 140) = v43;
      v45 = *(v41 + 80);
      *(v41 + 96) = v45;
      if (v45 != v41 + 72)
      {
        do
        {
          v47 = *(v45 + 16);
          v46 = v45 + 16;
          *(v41 + 96) = *(v46 - 8);
          v47(v46, v44, v43);
          v45 = *(v41 + 96);
        }

        while (v45 != v41 + 72);
        v41 = v4[69];
      }

LABEL_32:
      *(v41 + 128) = *(v5 + 72);
      __p = 0;
      v54 = 0;
      v55 = 0;
      v48 = v2[1];
      if (v48 != *v2)
      {
        if (0xCCCCCCCCCCCCCCCDLL * ((v48 - *v2) >> 5) < 0x19999999999999ALL)
        {
          operator new();
        }

        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      if (*(v5 + 148))
      {
        v49 = 1;
      }

      else
      {
        v49 = *(v5 + 152);
      }

      webrtc::PortAllocator::SetConfiguration(v41, v3, &__p, *(v5 + 64), v49, *(v5 + 216), (v5 + 208));
      v50 = __p;
      if (__p)
      {
        v51 = v54;
        v52 = __p;
        if (v54 != __p)
        {
          do
          {
            webrtc::RelayServerConfig::~RelayServerConfig(v51 - 20);
          }

          while (v51 != v50);
          v52 = __p;
        }

        v54 = v50;
        operator delete(v52);
      }

      operator new();
    }
  }

  else
  {
    v9 = 0;
    v10 = v6 | 0x4140;
    if ((SHIBYTE(v55) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }
  }

  operator delete(__p);
  goto LABEL_10;
}

uint64_t absl::internal_any_invocable::RemoteInvoker<false,void,std::function<void ()(webrtc::CopyOnWriteBuffer const&,long long)> const&,webrtc::CopyOnWriteBuffer const&,long long>(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v9 = a3;
  v4 = *(v3 + 24);
  if (v4)
  {
    return (*(*v4 + 48))(v4, a2, &v9);
  }

  v6 = std::__throw_bad_function_call[abi:sn200100]();
  return absl::internal_any_invocable::RemoteManagerNontrivial<std::function<void ()(webrtc::CopyOnWriteBuffer const&,long long)>>(v6, v7, v8);
}

uint64_t absl::internal_any_invocable::RemoteManagerNontrivial<std::function<void ()(webrtc::CopyOnWriteBuffer const&,long long)>>(uint64_t result, uint64_t *a2, void *a3)
{
  v3 = *a2;
  if (result)
  {
    if (v3)
    {
      v4 = *(v3 + 24);
      if (v4 == v3)
      {
        (*(*v4 + 32))(v4);
      }

      else if (v4)
      {
        (*(*v4 + 40))(v4);
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

uint64_t absl::internal_any_invocable::RemoteInvoker<false,void,std::function<void ()(webrtc::RtpPacketReceived const&)> const&,webrtc::RtpPacketReceived const&>(uint64_t a1)
{
  v2 = *(*a1 + 24);
  if (v2)
  {
    v3 = *(*v2 + 48);

    return v3();
  }

  else
  {
    v5 = std::__throw_bad_function_call[abi:sn200100]();
    return absl::internal_any_invocable::RemoteManagerNontrivial<std::function<void ()(webrtc::RtpPacketReceived const&)>>(v5, v6, v7);
  }
}

uint64_t absl::internal_any_invocable::RemoteManagerNontrivial<std::function<void ()(webrtc::RtpPacketReceived const&)>>(uint64_t result, uint64_t *a2, void *a3)
{
  v3 = *a2;
  if (result)
  {
    if (v3)
    {
      v4 = *(v3 + 24);
      if (v4 == v3)
      {
        (*(*v4 + 32))(v4);
      }

      else if (v4)
      {
        (*(*v4 + 40))(v4);
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

void *std::__function::__func<webrtc::PeerConnection::InitializeTransportController_n(webrtc::PeerConnectionInterface::RTCConfiguration const&)::$_0,std::allocator<webrtc::PeerConnection::InitializeTransportController_n(webrtc::PeerConnectionInterface::RTCConfiguration const&)::$_0>,void ()(webrtc::SSLHandshakeError)>::~__func(void *result)
{
  *result = &unk_288298510;
  v1 = result[1];
  if (v1)
  {
    if (atomic_fetch_add((v1 + 4), 0xFFFFFFFF) == 1)
    {
      v2 = result;
      MEMORY[0x2743DA540](v1, 0x1000C404A09149ALL);
      return v2;
    }
  }

  return result;
}

void std::__function::__func<webrtc::PeerConnection::InitializeTransportController_n(webrtc::PeerConnectionInterface::RTCConfiguration const&)::$_0,std::allocator<webrtc::PeerConnection::InitializeTransportController_n(webrtc::PeerConnectionInterface::RTCConfiguration const&)::$_0>,void ()(webrtc::SSLHandshakeError)>::~__func(void *a1)
{
  *a1 = &unk_288298510;
  v2 = a1[1];
  if (v2 && atomic_fetch_add((v2 + 4), 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540](v2, 0x1000C404A09149ALL);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t std::__function::__func<webrtc::PeerConnection::InitializeTransportController_n(webrtc::PeerConnectionInterface::RTCConfiguration const&)::$_0,std::allocator<webrtc::PeerConnection::InitializeTransportController_n(webrtc::PeerConnectionInterface::RTCConfiguration const&)::$_0>,void ()(webrtc::SSLHandshakeError)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_288298510;
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 4), 1u, memory_order_relaxed);
  }

  a2[2] = *(result + 16);
  return result;
}

uint64_t std::__function::__func<webrtc::PeerConnection::InitializeTransportController_n(webrtc::PeerConnectionInterface::RTCConfiguration const&)::$_0,std::allocator<webrtc::PeerConnection::InitializeTransportController_n(webrtc::PeerConnectionInterface::RTCConfiguration const&)::$_0>,void ()(webrtc::SSLHandshakeError)>::destroy(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    if (atomic_fetch_add((result + 4), 0xFFFFFFFF) == 1)
    {
      JUMPOUT(0x2743DA540);
    }
  }

  return result;
}

void std::__function::__func<webrtc::PeerConnection::InitializeTransportController_n(webrtc::PeerConnectionInterface::RTCConfiguration const&)::$_0,std::allocator<webrtc::PeerConnection::InitializeTransportController_n(webrtc::PeerConnectionInterface::RTCConfiguration const&)::$_0>,void ()(webrtc::SSLHandshakeError)>::destroy_deallocate(void *a1)
{
  v2 = a1[1];
  if (v2 && atomic_fetch_add((v2 + 4), 0xFFFFFFFF) == 1)
  {
    v3 = a1;
    MEMORY[0x2743DA540](v2, 0x1000C404A09149ALL);
    a1 = v3;
  }

  operator delete(a1);
}

void webrtc::webrtc_function_impl::CallHelpers<void ()(webrtc::IceConnectionState)>::CallInlineStorage<webrtc::PeerConnection::InitializeTransportController_n(webrtc::PeerConnectionInterface::RTCConfiguration const&)::$_1>(uint64_t a1)
{
  v1 = *(*a1 + 584);
  if (v1)
  {
    atomic_fetch_add_explicit(v1, 1u, memory_order_relaxed);
  }

  operator new();
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::PeerConnection::InitializeTransportController_n(webrtc::PeerConnectionInterface::RTCConfiguration const&)::$_1::operator() const(webrtc::IceConnectionState)::{lambda(void)#2} &&>(uint64_t result)
{
  v1 = *result;
  v2 = *(result + 8);
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log("\r\t", v13, v14, v15, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/peer_connection.cc");
      }

      if (*(*(v1 + 64) + 96))
      {
        v20 = (*(*v1 + 760))(v1);
        v21 = *(v20 + 48);
        v22 = *(v20 + 56);
        if (v22 != v21)
        {
          if (((v22 - v21) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
        }
      }

      v23 = *(v1 + 592);
      if (v23)
      {
        atomic_fetch_add_explicit(v23, 1u, memory_order_relaxed);
      }

      operator new();
    }

    if (v2 == 3)
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log("\r\t", v6, v7, v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/peer_connection.cc");
      }

      if (*(v1 + 132) != 2)
      {
        (*(*v1 + 816))(v1, 2);
      }

      (*(*v1 + 816))(v1, 3);
      v3 = *(*v1 + 824);
      v4 = v1;
      v5 = 512;

      return v3(v4, v5);
    }
  }

  else if (v2)
  {
    if (v2 == 1)
    {
      v3 = *(*v1 + 816);
      v4 = *result;
      v5 = 4;
      goto LABEL_13;
    }
  }

  else if ((*(v1 + 132) & 0xFFFFFFFE) == 2)
  {
    v3 = *(*v1 + 816);
    v4 = *result;
    v5 = 5;
LABEL_13:

    return v3(v4, v5);
  }

  return result;
}

void webrtc::webrtc_function_impl::CallHelpers<void ()(webrtc::PeerConnectionInterface::PeerConnectionState)>::CallInlineStorage<webrtc::PeerConnection::InitializeTransportController_n(webrtc::PeerConnectionInterface::RTCConfiguration const&)::$_2>(uint64_t a1)
{
  v1 = *(*a1 + 584);
  if (v1)
  {
    atomic_fetch_add_explicit(v1, 1u, memory_order_relaxed);
  }

  operator new();
}

void absl::internal_any_invocable::LocalInvoker<false,void,webrtc::PeerConnection::InitializeTransportController_n(webrtc::PeerConnectionInterface::RTCConfiguration const&)::$_2::operator() const(webrtc::PeerConnectionInterface::PeerConnectionState)::{lambda(void)#2} &&>(unsigned int *a1)
{
  v1 = *a1;
  v2 = a1[2];
  if (*(*a1 + 140) != v2 && ((*(*v1 + 704))(*a1) & 1) == 0)
  {
    *(v1 + 35) = v2;
    v3 = (*(*v1 + 696))(v1);
    (*(*v3 + 80))(v3, v2);
    if (v2 == 2 && (v1[131] & 1) == 0)
    {
      v1[131] = 1;
      v4 = (*(*v1 + 208))(v1);
      if ((*(*v4 + 56))(v4) != 1)
      {
        v5 = (*(*v1 + 216))(v1);
        (*(*v5 + 56))(v5);
      }

      v6 = (*(*v1 + 216))(v1);
      v7 = (*(*v6 + 32))(v6);
      v8 = *(v7 + 24);
      v9 = *(v7 + 32);
      if (v9 != v8)
      {
        if ((0x6DB6DB6DB6DB6DB7 * ((v9 - v8) >> 4)) < 0x24924924924924ALL)
        {
          operator new();
        }

        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      v10 = (*(*v1 + 208))(v1);
      (*(*v10 + 56))(v10);
    }
  }
}

void webrtc::webrtc_function_impl::CallHelpers<void ()(webrtc::PeerConnectionInterface::IceConnectionState)>::CallInlineStorage<webrtc::PeerConnection::InitializeTransportController_n(webrtc::PeerConnectionInterface::RTCConfiguration const&)::$_3>(uint64_t a1)
{
  v1 = *(*a1 + 584);
  if (v1)
  {
    atomic_fetch_add_explicit(v1, 1u, memory_order_relaxed);
  }

  operator new();
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::PeerConnection::InitializeTransportController_n(webrtc::PeerConnectionInterface::RTCConfiguration const&)::$_3::operator() const(webrtc::PeerConnectionInterface::IceConnectionState)::{lambda(void)#2} &&>(uint64_t result)
{
  v1 = *result;
  v2 = *(result + 8);
  if (*(*result + 136) != v2)
  {
    result = (*(*v1 + 704))(*result);
    if ((result & 1) == 0)
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v3, v4, v5, v6, v7, v8, v9, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/peer_connection.cc");
      }

      v1[34] = v2;
      v10 = *(*(*(*v1 + 696))(v1) + 72);

      return v10();
    }
  }

  return result;
}

void webrtc::webrtc_function_impl::CallHelpers<void ()(webrtc::IceGatheringState)>::CallInlineStorage<webrtc::PeerConnection::InitializeTransportController_n(webrtc::PeerConnectionInterface::RTCConfiguration const&)::$_4>(uint64_t a1)
{
  v1 = *(*a1 + 584);
  if (v1)
  {
    atomic_fetch_add_explicit(v1, 1u, memory_order_relaxed);
  }

  operator new();
}

void absl::internal_any_invocable::LocalInvoker<false,void,webrtc::PeerConnection::InitializeTransportController_n(webrtc::PeerConnectionInterface::RTCConfiguration const&)::$_4::operator() const(webrtc::IceGatheringState)::{lambda(void)#2} &&>(void *a1)
{
  v1 = *a1;
  v2 = *(a1 + 2);
  switch(v2)
  {
    case 0:
      if ((*(*v1 + 704))(*a1))
      {
        return;
      }

      v1[36] = 0;
      goto LABEL_11;
    case 2:
      if ((*(*v1 + 704))(*a1))
      {
        return;
      }

      v3 = 2;
      goto LABEL_8;
    case 1:
      if ((*(*v1 + 704))(*a1))
      {
        return;
      }

      v3 = 1;
LABEL_8:
      v1[36] = v3;
LABEL_11:
      v4 = *(*(*(*v1 + 696))(v1) + 88);

      v4();
      return;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v5, v6, v7, v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/peer_connection.cc");
  }
}

void webrtc::webrtc_function_impl::CallHelpers<void ()(std::string const&,std::vector<webrtc::Candidate> const&)>::CallInlineStorage<webrtc::PeerConnection::InitializeTransportController_n(webrtc::PeerConnectionInterface::RTCConfiguration const&)::$_5>(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 584);
  if (v5)
  {
    atomic_fetch_add_explicit(v5, 1u, memory_order_relaxed);
  }

  v7 = v4;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v8, *a2, *(a2 + 8));
    __p[0] = 0;
    __p[1] = 0;
    v10 = 0;
    v6 = a3[1] - *a3;
    if (!v6)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v8 = *a2;
    __p[0] = 0;
    __p[1] = 0;
    v10 = 0;
    v6 = a3[1] - *a3;
    if (!v6)
    {
LABEL_9:
      operator new();
    }
  }

  if (0x84BDA12F684BDA13 * (v6 >> 4) < 0x97B425ED097B43)
  {
    operator new();
  }

  std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
}

void absl::internal_any_invocable::RemoteInvoker<false,void,webrtc::PeerConnection::InitializeTransportController_n(webrtc::PeerConnectionInterface::RTCConfiguration const&)::$_5::operator() const(std::string const&,std::vector<webrtc::Candidate> const&)::{lambda(void)#2} &&>(uint64_t **a1)
{
  v1 = *a1;
  v3 = (*a1 + 1);
  v2 = **a1;
  if ((*(*v2 + 208))(v2) && (v4 = (*(*v2 + 208))(v2), v5 = (*(*v4 + 32))(v4), (v6 = v5[1] - *v5) != 0))
  {
    v7 = 0;
    v8 = 0xCCCCCCCCCCCCCCCDLL * (v6 >> 3);
    v9 = *(v1 + 31);
    if (v9 >= 0)
    {
      v10 = *(v1 + 31);
    }

    else
    {
      v10 = v1[2];
    }

    if (v9 >= 0)
    {
      v11 = v3;
    }

    else
    {
      v11 = v1[1];
    }

    if (v8 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = v8;
    }

    v13 = *v5 + 16;
    while (1)
    {
      v14 = *(v13 + 15);
      v15 = v14;
      if ((v14 & 0x80u) != 0)
      {
        v14 = *v13;
      }

      if (v14 == v10)
      {
        v16 = v15 >= 0 ? (v13 - 8) : *(v13 - 8);
        if (!memcmp(v16, v11, v10))
        {
          break;
        }
      }

      ++v7;
      v13 += 40;
      if (v12 == v7)
      {
        goto LABEL_23;
      }
    }

    if (v1[4] != v1[5])
    {
      operator new();
    }
  }

  else
  {
LABEL_23:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t\n\t", v17, v18, v19, v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/peer_connection.cc");
    }
  }
}

uint64_t absl::internal_any_invocable::RemoteManagerNontrivial<webrtc::PeerConnection::InitializeTransportController_n(webrtc::PeerConnectionInterface::RTCConfiguration const&)::$_5::operator() const(std::string const&,std::vector<webrtc::Candidate> const&)::{lambda(void)#2}>(uint64_t result, uint64_t *a2, void *a3)
{
  v3 = *a2;
  if (result)
  {
    if (v3)
    {
      v4 = *(v3 + 32);
      if (v4)
      {
        v5 = *(v3 + 40);
        v6 = *(v3 + 32);
        if (v5 != v4)
        {
          do
          {
            webrtc::Candidate::~Candidate((v5 - 432));
          }

          while (v5 != v4);
          v6 = *(v3 + 32);
        }

        *(v3 + 40) = v4;
        operator delete(v6);
      }

      if (*(v3 + 31) < 0)
      {
        operator delete(*(v3 + 8));
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

void webrtc::webrtc_function_impl::CallHelpers<void ()(webrtc::IceCandidateErrorEvent const&)>::CallInlineStorage<webrtc::PeerConnection::InitializeTransportController_n(webrtc::PeerConnectionInterface::RTCConfiguration const&)::$_6>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 584);
  if (v4)
  {
    atomic_fetch_add_explicit(v4, 1u, memory_order_relaxed);
  }

  v5 = v3;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v6, *a2, *(a2 + 8));
    v7 = *(a2 + 24);
    if ((*(a2 + 55) & 0x80000000) == 0)
    {
LABEL_5:
      v8 = *(a2 + 32);
      v9 = *(a2 + 56);
      if ((*(a2 + 87) & 0x80000000) == 0)
      {
LABEL_6:
        __p = *(a2 + 64);
        goto LABEL_10;
      }

LABEL_9:
      std::string::__init_copy_ctor_external(&__p, *(a2 + 64), *(a2 + 72));
LABEL_10:
      operator new();
    }
  }

  else
  {
    v6 = *a2;
    v7 = *(a2 + 24);
    if ((*(a2 + 55) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  std::string::__init_copy_ctor_external(&v8, *(a2 + 32), *(a2 + 40));
  v9 = *(a2 + 56);
  if ((*(a2 + 87) & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  goto LABEL_9;
}

uint64_t absl::internal_any_invocable::RemoteInvoker<false,void,webrtc::PeerConnection::InitializeTransportController_n(webrtc::PeerConnectionInterface::RTCConfiguration const&)::$_6::operator() const(webrtc::IceCandidateErrorEvent const&)::{lambda(void)#2} &&>(uint64_t **a1)
{
  v1 = **a1;
  result = (*(*v1 + 704))(v1);
  if ((result & 1) == 0)
  {
    v3 = *(*(*(*v1 + 696))(v1) + 104);

    return v3();
  }

  return result;
}

uint64_t absl::internal_any_invocable::RemoteManagerNontrivial<webrtc::PeerConnection::InitializeTransportController_n(webrtc::PeerConnectionInterface::RTCConfiguration const&)::$_6::operator() const(webrtc::IceCandidateErrorEvent const&)::{lambda(void)#2}>(uint64_t result, uint64_t *a2, void *a3)
{
  v3 = *a2;
  if (result)
  {
    if (v3)
    {
      if (*(v3 + 95) < 0)
      {
        operator delete(*(v3 + 72));
        if ((*(v3 + 63) & 0x80000000) == 0)
        {
LABEL_5:
          if ((*(v3 + 31) & 0x80000000) == 0)
          {
            goto LABEL_6;
          }

LABEL_13:
          operator delete(*(v3 + 8));
LABEL_6:

          JUMPOUT(0x2743DA540);
        }
      }

      else if ((*(v3 + 63) & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      operator delete(*(v3 + 40));
      if ((*(v3 + 31) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  else
  {
    *a3 = v3;
  }

  return result;
}

void webrtc::webrtc_function_impl::CallHelpers<void ()(std::vector<webrtc::Candidate> const&)>::CallInlineStorage<webrtc::PeerConnection::InitializeTransportController_n(webrtc::PeerConnectionInterface::RTCConfiguration const&)::$_7>(uint64_t a1, void *a2)
{
  v2 = *(*a1 + 584);
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 1u, memory_order_relaxed);
  }

  v3 = a2[1];
  if (v3 != *a2)
  {
    if (0x84BDA12F684BDA13 * ((v3 - *a2) >> 4) < 0x97B425ED097B43)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  operator new();
}

void absl::internal_any_invocable::RemoteInvoker<false,void,webrtc::PeerConnection::InitializeTransportController_n(webrtc::PeerConnectionInterface::RTCConfiguration const&)::$_7::operator() const(std::vector<webrtc::Candidate> const&)::{lambda(void)#2} &&>(void **a1)
{
  v1 = **a1;
  v2 = (*a1)[2];
  v3 = *a1 + 1;
  v4 = *v3;
  if (*v3 == v2)
  {
LABEL_6:
    v6 = v1[119];
    if ((*(*v6 + 24))(v6))
    {
      v7 = v6[5];
      if (!v7)
      {
        v7 = v6[4];
      }

      (*(*v7 + 80))(v7, v3);
    }

    if (((*(*v1 + 704))(v1) & 1) == 0)
    {
      v8 = *(*(*(*v1 + 696))(v1) + 112);

      v8();
    }
  }

  else
  {
    while (1)
    {
      v5 = *(v4 + 399);
      if (v5 < 0)
      {
        v5 = *(v4 + 384);
      }

      if (!v5)
      {
        break;
      }

      v4 += 432;
      if (v4 == v2)
      {
        goto LABEL_6;
      }
    }

    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::Candidate::ToStringInternal(v4, 0, &__p);
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v9, v10, v11, v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/peer_connection.cc");
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }
}

uint64_t absl::internal_any_invocable::RemoteManagerNontrivial<webrtc::PeerConnection::InitializeTransportController_n(webrtc::PeerConnectionInterface::RTCConfiguration const&)::$_7::operator() const(std::vector<webrtc::Candidate> const&)::{lambda(void)#2}>(uint64_t result, uint64_t *a2, void *a3)
{
  v3 = *a2;
  if (result)
  {
    if (v3)
    {
      v4 = *(v3 + 8);
      if (v4)
      {
        v5 = *(v3 + 16);
        v6 = *(v3 + 8);
        if (v5 != v4)
        {
          do
          {
            webrtc::Candidate::~Candidate((v5 - 432));
          }

          while (v5 != v4);
          v6 = *(v3 + 8);
        }

        *(v3 + 16) = v4;
        operator delete(v6);
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

void webrtc::webrtc_function_impl::CallHelpers<void ()(webrtc::CandidatePairChangeEvent const&)>::CallInlineStorage<webrtc::PeerConnection::InitializeTransportController_n(webrtc::PeerConnectionInterface::RTCConfiguration const&)::$_8>(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 584);
  if (v3)
  {
    atomic_fetch_add_explicit(v3, 1u, memory_order_relaxed);
  }

  webrtc::Candidate::Candidate(v4, (a2 + 8));
  webrtc::Candidate::Candidate(v5, (a2 + 440));
  v6 = *(a2 + 872);
  if (*(a2 + 903) < 0)
  {
    std::string::__init_copy_ctor_external(&v7, *(a2 + 880), *(a2 + 888));
  }

  else
  {
    v7 = *(a2 + 880);
  }

  v8 = *(a2 + 904);
  operator new();
}

uint64_t absl::internal_any_invocable::RemoteInvoker<false,void,webrtc::PeerConnection::InitializeTransportController_n(webrtc::PeerConnectionInterface::RTCConfiguration const&)::$_8::operator() const(webrtc::CandidatePairChangeEvent const&)::{lambda(void)#2} &&>(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  result = (*(*v2 + 704))(v2);
  if ((result & 1) == 0)
  {
    if (!*(v1 + 56) && !*(v1 + 164))
    {
      (*(*v2 + 824))(v2, 0x40000);
    }

    v4 = *(*(*(*v2 + 696))(v2) + 128);

    return v4();
  }

  return result;
}

uint64_t absl::internal_any_invocable::RemoteManagerNontrivial<webrtc::PeerConnection::InitializeTransportController_n(webrtc::PeerConnectionInterface::RTCConfiguration const&)::$_8::operator() const(webrtc::CandidatePairChangeEvent const&)::{lambda(void)#2}>(uint64_t result, uint64_t *a2, void *a3)
{
  v3 = *a2;
  if (result)
  {
    if (v3)
    {
      if (*(v3 + 911) < 0)
      {
        operator delete(*(v3 + 888));
      }

      webrtc::Candidate::~Candidate((v3 + 448));
      webrtc::Candidate::~Candidate((v3 + 16));

      JUMPOUT(0x2743DA540);
    }
  }

  else
  {
    *a3 = v3;
  }

  return result;
}

BOOL webrtc::RefCountedObject<webrtc::RtpSenderProxyWithInternal<webrtc::RtpSenderInternal>>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 8, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

void *webrtc::RefCountedObject<webrtc::RtpSenderProxyWithInternal<webrtc::RtpSenderInternal>>::~RefCountedObject(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288298730;
  a1[1] = &unk_288298800;
  v14 = a1;
  v15 = webrtc::RtpSenderProxyWithInternal<webrtc::RtpSenderInternal>::DestroyInternal;
  v16 = 0;
  webrtc::Event::Event(&v17, 0, 0);
  v2 = a1[2];
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
    v13 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::RtpSenderProxyWithInternal<webrtc::RtpSenderInternal>,void>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
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

void webrtc::RefCountedObject<webrtc::RtpSenderProxyWithInternal<webrtc::RtpSenderInternal>>::~RefCountedObject(void *a1)
{
  webrtc::RefCountedObject<webrtc::RtpSenderProxyWithInternal<webrtc::RtpSenderInternal>>::~RefCountedObject(a1);

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::RtpSenderProxyWithInternal<webrtc::RtpSenderInternal>::SetTrack(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 24);
  v6 = a2;
  v7[0] = v3;
  v7[1] = webrtc::RtpSenderInterface::SetTrack;
  v7[2] = 0;
  v7[4] = &v6;
  webrtc::Event::Event(&v8, 0, 0);
  v4 = webrtc::MethodCall<webrtc::RtpSenderInterface,BOOL,webrtc::MediaStreamTrackInterface *>::Marshal(v7, *(a1 + 16));
  pthread_mutex_destroy(&v8);
  pthread_cond_destroy(&v9);
  return v4;
}

uint64_t webrtc::RtpSenderProxyWithInternal<webrtc::RtpSenderInternal>::track@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 24);
  v6[2] = 0;
  v7 = 0;
  v6[0] = v4;
  v6[1] = webrtc::RtpSenderInterface::track;
  webrtc::Event::Event(&v8, 0, 0);
  webrtc::ConstMethodCall<webrtc::RtpSenderInterface,webrtc::scoped_refptr<webrtc::MediaStreamTrackInterface>>::Marshal(v6, *(a1 + 16), a2);
  pthread_mutex_destroy(&v8);
  pthread_cond_destroy(&v9);
  result = v7;
  if (v7)
  {
    return (*(*v7 + 8))(v7);
  }

  return result;
}

uint64_t webrtc::RtpSenderProxyWithInternal<webrtc::RtpSenderInternal>::dtls_transport@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 24);
  v6[2] = 0;
  v7 = 0;
  v6[0] = v4;
  v6[1] = webrtc::RtpSenderInterface::dtls_transport;
  webrtc::Event::Event(&v8, 0, 0);
  webrtc::ConstMethodCall<webrtc::RtpSenderInterface,webrtc::scoped_refptr<webrtc::DtlsTransportInterface>>::Marshal(v6, *(a1 + 16), a2);
  pthread_mutex_destroy(&v8);
  pthread_cond_destroy(&v9);
  result = v7;
  if (v7)
  {
    return (*(*v7 + 8))(v7);
  }

  return result;
}

uint64_t webrtc::RtpSenderProxyWithInternal<webrtc::RtpSenderInternal>::ssrc(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v14 = *(a1 + 24);
  v15 = webrtc::RtpSenderInterface::ssrc;
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
    v13 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::RtpSenderInterface,unsigned int>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
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

void webrtc::RtpSenderProxyWithInternal<webrtc::RtpSenderInternal>::stream_ids(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  v8[0] = *(a1 + 24);
  v8[1] = webrtc::RtpSenderInterface::stream_ids;
  *__p = 0u;
  v10 = 0u;
  webrtc::Event::Event(&v11, 0, 0);
  webrtc::ConstMethodCall<webrtc::RtpSenderInterface,std::vector<std::string>>::Marshal(v8, *(a1 + 16), a2);
  pthread_mutex_destroy(&v11);
  pthread_cond_destroy(&v12);
  v4 = __p[1];
  if (__p[1])
  {
    v5 = v10;
    v6 = __p[1];
    if (v10 != __p[1])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p[1];
    }

    *&v10 = v4;
    operator delete(v6);
  }
}

uint64_t webrtc::RtpSenderProxyWithInternal<webrtc::RtpSenderInternal>::SetStreams(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v14 = *(a1 + 24);
  v15 = webrtc::RtpSenderInterface::SetStreams;
  v16 = 0;
  v17 = a2;
  webrtc::Event::Event(&v18, 0, 0);
  v3 = *(a1 + 16);
  v4 = &unk_280905000;
  {
    v4 = &unk_280905000;
    if (v8)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v4[403] + 88)) == v3)
  {
    (v15)(v14 + (v16 >> 1), v17);
  }

  else
  {
    v11.n128_u64[0] = &v14;
    v12 = absl::internal_any_invocable::LocalManagerTrivial;
    v13 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::RtpSenderInterface,void,std::vector<std::string> const&>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v3 + 8))(v3, &v11, &v10, &v9);
    v12(1, &v11, &v11);
    v5.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v6.var0 = 3000000;
    webrtc::Event::Wait(&v18, v5, v6);
  }

  pthread_mutex_destroy(&v18);
  return pthread_cond_destroy(&v19);
}

void webrtc::RtpSenderProxyWithInternal<webrtc::RtpSenderInternal>::init_send_encodings(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  v7[0] = *(a1 + 24);
  v7[1] = webrtc::RtpSenderInterface::init_send_encodings;
  *__p = 0u;
  v9 = 0u;
  webrtc::Event::Event(&v10, 0, 0);
  webrtc::ConstMethodCall<webrtc::RtpSenderInterface,std::vector<webrtc::RtpEncodingParameters>>::Marshal(v7, *(a1 + 16), a2);
  pthread_mutex_destroy(&v10);
  pthread_cond_destroy(&v11);
  v4 = __p[1];
  if (__p[1])
  {
    v5 = v9;
    v6 = __p[1];
    if (v9 != __p[1])
    {
      do
      {
        webrtc::RtpEncodingParameters::~RtpEncodingParameters((v5 - 272));
      }

      while (v5 != v4);
      v6 = __p[1];
    }

    *&v9 = v4;
    operator delete(v6);
  }
}

void webrtc::RtpSenderProxyWithInternal<webrtc::RtpSenderInternal>::GetParameters(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  v4[0] = *(a1 + 24);
  v4[1] = webrtc::RtpSenderInterface::GetParameters;
  v6 = 0;
  v8 = 0;
  v9 = 0;
  v7 = 0;
  v10 = 256;
  memset(&v4[2], 0, 128);
  v5 = 0;
  v11 = 0;
  v12 = 0;
  webrtc::Event::Event(&v13, 0, 0);
  webrtc::ConstMethodCall<webrtc::RtpSenderInterface,webrtc::RtpParameters>::Marshal(v4, *(a1 + 16), a2);
  pthread_mutex_destroy(&v13);
  pthread_cond_destroy(&v14);
  webrtc::RtpParameters::~RtpParameters(&v4[3]);
}

void webrtc::RtpSenderProxyWithInternal<webrtc::RtpSenderInternal>::SetParameters(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  v5[0] = *(a1 + 24);
  v5[1] = webrtc::RtpSenderInterface::SetParameters;
  v5[2] = 0;
  v6 = 0;
  v9[14] = 0;
  v8 = 0;
  memset(v9, 0, 13);
  __p = 0;
  v10 = a2;
  webrtc::Event::Event(&v11, 0, 0);
  webrtc::MethodCall<webrtc::RtpSenderInterface,webrtc::RTCError,webrtc::RtpParameters const&>::Marshal(v5, *(a1 + 16), a3);
  pthread_mutex_destroy(&v11);
  pthread_cond_destroy(&v12);
  if ((v9[7] & 0x80000000) != 0)
  {
    operator delete(__p);
  }
}

uint64_t webrtc::RtpSenderProxyWithInternal<webrtc::RtpSenderInternal>::SetParametersAsync(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = *(a1 + 24);
  v5[1] = webrtc::RtpSenderInterface::SetParametersAsync;
  v5[2] = 0;
  v5[4] = a2;
  v5[5] = a3;
  webrtc::Event::Event(&v6, 0, 0);
  _ZN6webrtc10MethodCallINS_18RtpSenderInterfaceEvJRKNS_13RtpParametersEN4absl12AnyInvocableIFvNS_8RTCErrorEOEEEEE7MarshalEPNS_6ThreadE(v5, *(a1 + 16));
  pthread_mutex_destroy(&v6);
  return pthread_cond_destroy(&v7);
}

uint64_t webrtc::RtpSenderProxyWithInternal<webrtc::RtpSenderInternal>::SetObserver(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v17 = *(a1 + 24);
  v18 = webrtc::RtpSenderInterface::SetObserver;
  v19 = 0;
  v20 = &v11;
  webrtc::Event::Event(&v21, 0, 0);
  v3 = *(a1 + 16);
  v4 = &unk_280905000;
  {
    v4 = &unk_280905000;
    if (v10)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v4[403] + 88)) == v3)
  {
    v7 = v18;
    v8 = (v17 + (v19 >> 1));
    if (v19)
    {
      v7 = *(*v8 + v18);
    }

    (v7)(v8, *v20);
  }

  else
  {
    v14.n128_u64[0] = &v17;
    v15 = absl::internal_any_invocable::LocalManagerTrivial;
    v16 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::RtpSenderInterface,void,webrtc::RtpSenderObserverInterface *>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v3 + 8))(v3, &v14, &v13, &v12);
    v15(1, &v14, &v14);
    v5.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v6.var0 = 3000000;
    webrtc::Event::Wait(&v21, v5, v6);
  }

  pthread_mutex_destroy(&v21);
  return pthread_cond_destroy(&v22);
}

uint64_t webrtc::RtpSenderProxyWithInternal<webrtc::RtpSenderInternal>::GetDtmfSender@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 24);
  v6[2] = 0;
  v7 = 0;
  v6[0] = v4;
  v6[1] = webrtc::RtpSenderInterface::GetDtmfSender;
  webrtc::Event::Event(&v8, 0, 0);
  webrtc::ConstMethodCall<webrtc::RtpSenderInterface,webrtc::scoped_refptr<webrtc::DtmfSenderInterface>>::Marshal(v6, *(a1 + 16), a2);
  pthread_mutex_destroy(&v8);
  pthread_cond_destroy(&v9);
  result = v7;
  if (v7)
  {
    return (*(*v7 + 8))(v7);
  }

  return result;
}

uint64_t webrtc::RtpSenderProxyWithInternal<webrtc::RtpSenderInternal>::SetFrameEncryptor(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = *(a1 + 24);
  v4[1] = webrtc::RtpSenderInterface::SetFrameEncryptor;
  v4[2] = 0;
  v4[4] = a2;
  webrtc::Event::Event(&v5, 0, 0);
  webrtc::MethodCall<webrtc::RtpSenderInterface,void,webrtc::scoped_refptr<webrtc::FrameEncryptorInterface>>::Marshal(v4, *(a1 + 16));
  pthread_mutex_destroy(&v5);
  return pthread_cond_destroy(&v6);
}

uint64_t webrtc::RtpSenderProxyWithInternal<webrtc::RtpSenderInternal>::GetFrameEncryptor@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 24);
  v6[2] = 0;
  v7 = 0;
  v6[0] = v4;
  v6[1] = webrtc::RtpSenderInterface::GetFrameEncryptor;
  webrtc::Event::Event(&v8, 0, 0);
  webrtc::ConstMethodCall<webrtc::RtpSenderInterface,webrtc::scoped_refptr<webrtc::FrameEncryptorInterface>>::Marshal(v6, *(a1 + 16), a2);
  pthread_mutex_destroy(&v8);
  pthread_cond_destroy(&v9);
  result = v7;
  if (v7)
  {
    return (*(*v7 + 8))(v7);
  }

  return result;
}

uint64_t webrtc::RtpSenderInterface::SetEncoderToPacketizerFrameTransformer(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  v4 = v2;
  (*(*a1 + 184))(a1, &v4);
  result = v4;
  if (v4)
  {
    return (*(*v4 + 8))(v4);
  }

  return result;
}

uint64_t webrtc::RtpSenderProxyWithInternal<webrtc::RtpSenderInternal>::SetEncoderSelector(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = *(a1 + 24);
  v4[1] = webrtc::RtpSenderInterface::SetEncoderSelector;
  v4[2] = 0;
  v4[4] = a2;
  webrtc::Event::Event(&v5, 0, 0);
  webrtc::MethodCall<webrtc::RtpSenderInterface,void,std::unique_ptr<webrtc::VideoEncoderFactory::EncoderSelectorInterface>>::Marshal(v4, *(a1 + 16));
  pthread_mutex_destroy(&v5);
  return pthread_cond_destroy(&v6);
}

void webrtc::RtpSenderProxyWithInternal<webrtc::RtpSenderInternal>::GenerateKeyFrame(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  v5[0] = *(a1 + 24);
  v5[1] = webrtc::RtpSenderInterface::GenerateKeyFrame;
  v5[2] = 0;
  v6 = 0;
  v9[14] = 0;
  v8 = 0;
  memset(v9, 0, 13);
  __p = 0;
  v10 = a2;
  webrtc::Event::Event(&v11, 0, 0);
  webrtc::MethodCall<webrtc::RtpSenderInterface,webrtc::RTCError,std::vector<std::string> const&>::Marshal(v5, *(a1 + 16), a3);
  pthread_mutex_destroy(&v11);
  pthread_cond_destroy(&v12);
  if ((v9[7] & 0x80000000) != 0)
  {
    operator delete(__p);
  }
}

uint64_t webrtc::RtpSenderProxyWithInternal<webrtc::RtpSenderInternal>::SetFrameTransformer(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = *(a1 + 24);
  v4[1] = webrtc::RtpSenderInterface::SetFrameTransformer;
  v4[2] = 0;
  v4[4] = a2;
  webrtc::Event::Event(&v5, 0, 0);
  webrtc::MethodCall<webrtc::RtpSenderInterface,void,webrtc::scoped_refptr<webrtc::FrameTransformerInterface>>::Marshal(v4, *(a1 + 16));
  pthread_mutex_destroy(&v5);
  return pthread_cond_destroy(&v6);
}

void non-virtual thunk towebrtc::RefCountedObject<webrtc::RtpSenderProxyWithInternal<webrtc::RtpSenderInternal>>::~RefCountedObject(uint64_t a1)
{
  webrtc::RefCountedObject<webrtc::RtpSenderProxyWithInternal<webrtc::RtpSenderInternal>>::~RefCountedObject((a1 - 8));

  JUMPOUT(0x2743DA540);
}

uint64_t non-virtual thunk towebrtc::RtpSenderProxyWithInternal<webrtc::RtpSenderInternal>::SetFrameTransformer(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = *(a1 + 16);
  v4[1] = webrtc::RtpSenderInterface::SetFrameTransformer;
  v4[2] = 0;
  v4[4] = a2;
  webrtc::Event::Event(&v5, 0, 0);
  webrtc::MethodCall<webrtc::RtpSenderInterface,void,webrtc::scoped_refptr<webrtc::FrameTransformerInterface>>::Marshal(v4, *(a1 + 8));
  pthread_mutex_destroy(&v5);
  return pthread_cond_destroy(&v6);
}

uint64_t webrtc::RtpSenderProxyWithInternal<webrtc::RtpSenderInternal>::DestroyInternal(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(a1 + 24) = 0;
  return result;
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::RtpSenderProxyWithInternal<webrtc::RtpSenderInternal>,void>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
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

uint64_t webrtc::MethodCall<webrtc::RtpSenderInterface,BOOL,webrtc::MediaStreamTrackInterface *>::Marshal(unint64_t a1, void *a2)
{
  v4 = &unk_280905000;
  {
    v4 = &unk_280905000;
    if (v12)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v4[403] + 88)) == a2)
  {
    v8 = *(a1 + 8);
    v9 = *(a1 + 16);
    v10 = (*a1 + (v9 >> 1));
    if (v9)
    {
      v8 = *(*v10 + v8);
    }

    v11 = v8(v10, **(a1 + 32));
    *(a1 + 24) = v11;
    return v11 & 1;
  }

  else
  {
    v15.n128_u64[0] = a1;
    v16 = absl::internal_any_invocable::LocalManagerTrivial;
    v17 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::RtpSenderInterface,BOOL,webrtc::MediaStreamTrackInterface *>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*a2 + 8))(a2, &v15, &v14, &v13);
    v16(1, &v15, &v15);
    v5.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v6.var0 = 3000000;
    webrtc::Event::Wait((a1 + 40), v5, v6);
    return *(a1 + 24) & 1;
  }
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::RtpSenderInterface,BOOL,webrtc::MediaStreamTrackInterface *>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
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

  *(v1 + 24) = v2(v5, *v4);
  pthread_mutex_lock((v1 + 40));
  *(v1 + 153) = 1;
  pthread_cond_broadcast((v1 + 104));

  return pthread_mutex_unlock((v1 + 40));
}

uint64_t webrtc::ConstMethodCall<webrtc::RtpSenderInterface,webrtc::scoped_refptr<webrtc::MediaStreamTrackInterface>>::Marshal@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = &unk_280905000;
  {
    v6 = &unk_280905000;
    if (v15)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v6[403] + 88)) == a2)
  {
    v11 = a1[1];
    v12 = a1[2];
    v13 = (*a1 + (v12 >> 1));
    if (v12)
    {
      v11 = *(*v13 + v11);
    }

    v11(&v18, v13);
    v14 = v18.n128_u64[0];
    v18.n128_u64[0] = 0;
    result = a1[3];
    a1[3] = v14;
    if (result)
    {
      (*(*result + 8))(result);
      result = v18.n128_u64[0];
      if (v18.n128_u64[0])
      {
        result = (*(*v18.n128_u64[0] + 8))(v18.n128_u64[0]);
      }
    }
  }

  else
  {
    v18.n128_u64[0] = a1;
    v19 = absl::internal_any_invocable::LocalManagerTrivial;
    v20 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::RtpSenderInterface,webrtc::scoped_refptr<webrtc::MediaStreamTrackInterface>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*a2 + 8))(a2, &v18, &v17, &v16);
    v19(1, &v18, &v18);
    v7.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v8.var0 = 3000000;
    result = webrtc::Event::Wait((a1 + 5), v7, v8);
  }

  v10 = a1[3];
  a1[3] = 0;
  *a3 = v10;
  return result;
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::RtpSenderInterface,webrtc::scoped_refptr<webrtc::MediaStreamTrackInterface>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  v2(&v8, v4);
  v5 = v8;
  v8 = 0;
  v6 = *(v1 + 24);
  *(v1 + 24) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }
  }

  pthread_mutex_lock((v1 + 40));
  *(v1 + 153) = 1;
  pthread_cond_broadcast((v1 + 104));
  return pthread_mutex_unlock((v1 + 40));
}

uint64_t webrtc::ConstMethodCall<webrtc::RtpSenderInterface,webrtc::scoped_refptr<webrtc::DtlsTransportInterface>>::Marshal@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = &unk_280905000;
  {
    v6 = &unk_280905000;
    if (v15)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v6[403] + 88)) == a2)
  {
    v11 = a1[1];
    v12 = a1[2];
    v13 = (*a1 + (v12 >> 1));
    if (v12)
    {
      v11 = *(*v13 + v11);
    }

    v11(&v18, v13);
    v14 = v18.n128_u64[0];
    v18.n128_u64[0] = 0;
    result = a1[3];
    a1[3] = v14;
    if (result)
    {
      (*(*result + 8))(result);
      result = v18.n128_u64[0];
      if (v18.n128_u64[0])
      {
        result = (*(*v18.n128_u64[0] + 8))(v18.n128_u64[0]);
      }
    }
  }

  else
  {
    v18.n128_u64[0] = a1;
    v19 = absl::internal_any_invocable::LocalManagerTrivial;
    v20 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::RtpSenderInterface,webrtc::scoped_refptr<webrtc::DtlsTransportInterface>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*a2 + 8))(a2, &v18, &v17, &v16);
    v19(1, &v18, &v18);
    v7.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v8.var0 = 3000000;
    result = webrtc::Event::Wait((a1 + 5), v7, v8);
  }

  v10 = a1[3];
  a1[3] = 0;
  *a3 = v10;
  return result;
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::RtpSenderInterface,webrtc::scoped_refptr<webrtc::DtlsTransportInterface>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  v2(&v8, v4);
  v5 = v8;
  v8 = 0;
  v6 = *(v1 + 24);
  *(v1 + 24) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }
  }

  pthread_mutex_lock((v1 + 40));
  *(v1 + 153) = 1;
  pthread_cond_broadcast((v1 + 104));
  return pthread_mutex_unlock((v1 + 40));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::RtpSenderInterface,unsigned int>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
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

void webrtc::ConstMethodCall<webrtc::RtpSenderInterface,std::vector<std::string>>::Marshal(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = &unk_280905000;
  {
    v6 = &unk_280905000;
    if (v18)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v6[403] + 88)) == a2)
  {
    v11 = a1[1];
    v12 = a1[2];
    v13 = (*a1 + (v12 >> 1));
    if (v12)
    {
      (*(*v13 + v11))(&v21);
      v14 = a1[3];
      if (!v14)
      {
LABEL_15:
        v9 = v21;
        v10 = v22;
        goto LABEL_16;
      }
    }

    else
    {
      v11(&v21, v13);
      v14 = a1[3];
      if (!v14)
      {
        goto LABEL_15;
      }
    }

    v15 = a1[4];
    v16 = v14;
    if (v15 != v14)
    {
      do
      {
        v17 = *(v15 - 1);
        v15 -= 3;
        if (v17 < 0)
        {
          operator delete(*v15);
        }
      }

      while (v15 != v14);
      v16 = a1[3];
    }

    a1[4] = v14;
    operator delete(v16);
    goto LABEL_15;
  }

  *&v21 = a1;
  v22 = absl::internal_any_invocable::LocalManagerTrivial;
  v23 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::RtpSenderInterface,std::vector<std::string>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
  (*(*a2 + 8))(a2, &v21, &v20, &v19);
  v22(1, &v21, &v21);
  v7.var0 = 0x7FFFFFFFFFFFFFFFLL;
  v8.var0 = 3000000;
  webrtc::Event::Wait((a1 + 7), v7, v8);
  v9 = *(a1 + 3);
  v10 = a1[5];
LABEL_16:
  *a3 = v9;
  *(a3 + 16) = v10;
  a1[4] = 0;
  a1[5] = 0;
  a1[3] = 0;
}

uint64_t std::invoke[abi:sn200100]<webrtc::ConstMethodCall<webrtc::RtpSenderInterface,std::vector<std::string>>::Marshal(webrtc::Thread *)::{lambda(void)#1}>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = (**a1 + (v3 >> 1));
  if (v3)
  {
    (*(*v4 + v2))(&v10);
    v5 = *(v1 + 24);
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v2(&v10, v4);
    v5 = *(v1 + 24);
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  v6 = *(v1 + 32);
  v7 = v5;
  if (v6 != v5)
  {
    do
    {
      v8 = *(v6 - 1);
      v6 -= 3;
      if (v8 < 0)
      {
        operator delete(*v6);
      }
    }

    while (v6 != v5);
    v7 = *(v1 + 24);
  }

  *(v1 + 32) = v5;
  operator delete(v7);
LABEL_12:
  *(v1 + 24) = v10;
  *(v1 + 40) = v11;
  pthread_mutex_lock((v1 + 56));
  *(v1 + 169) = 1;
  pthread_cond_broadcast((v1 + 120));
  return pthread_mutex_unlock((v1 + 56));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::RtpSenderInterface,void,std::vector<std::string> const&>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
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

  v2(v5, v4);
  pthread_mutex_lock((v1 + 40));
  *(v1 + 153) = 1;
  pthread_cond_broadcast((v1 + 104));

  return pthread_mutex_unlock((v1 + 40));
}

void webrtc::ConstMethodCall<webrtc::RtpSenderInterface,std::vector<webrtc::RtpEncodingParameters>>::Marshal(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = &unk_280905000;
  {
    v6 = &unk_280905000;
    if (v17)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v6[403] + 88)) == a2)
  {
    v11 = a1[1];
    v12 = a1[2];
    v13 = (*a1 + (v12 >> 1));
    if (v12)
    {
      (*(*v13 + v11))(&v20);
      v14 = a1[3];
      if (!v14)
      {
LABEL_12:
        v9 = v20;
        v10 = v21;
        goto LABEL_13;
      }
    }

    else
    {
      v11(&v20, v13);
      v14 = a1[3];
      if (!v14)
      {
        goto LABEL_12;
      }
    }

    v15 = a1[4];
    v16 = v14;
    if (v15 != v14)
    {
      do
      {
        webrtc::RtpEncodingParameters::~RtpEncodingParameters((v15 - 272));
      }

      while (v15 != v14);
      v16 = a1[3];
    }

    a1[4] = v14;
    operator delete(v16);
    goto LABEL_12;
  }

  *&v20 = a1;
  v21 = absl::internal_any_invocable::LocalManagerTrivial;
  v22 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::RtpSenderInterface,std::vector<webrtc::RtpEncodingParameters>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
  (*(*a2 + 8))(a2, &v20, &v19, &v18);
  v21(1, &v20, &v20);
  v7.var0 = 0x7FFFFFFFFFFFFFFFLL;
  v8.var0 = 3000000;
  webrtc::Event::Wait((a1 + 7), v7, v8);
  v9 = *(a1 + 3);
  v10 = a1[5];
LABEL_13:
  *a3 = v9;
  *(a3 + 16) = v10;
  a1[4] = 0;
  a1[5] = 0;
  a1[3] = 0;
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::RtpSenderInterface,std::vector<webrtc::RtpEncodingParameters>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = (**a1 + (v3 >> 1));
  if (v3)
  {
    (*(*v4 + v2))(&v9);
    v5 = *(v1 + 24);
    if (!v5)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v2(&v9, v4);
    v5 = *(v1 + 24);
    if (!v5)
    {
      goto LABEL_9;
    }
  }

  v6 = *(v1 + 32);
  v7 = v5;
  if (v6 != v5)
  {
    do
    {
      webrtc::RtpEncodingParameters::~RtpEncodingParameters((v6 - 272));
    }

    while (v6 != v5);
    v7 = *(v1 + 24);
  }

  *(v1 + 32) = v5;
  operator delete(v7);
LABEL_9:
  *(v1 + 24) = v9;
  *(v1 + 40) = v10;
  pthread_mutex_lock((v1 + 56));
  *(v1 + 169) = 1;
  pthread_cond_broadcast((v1 + 120));
  return pthread_mutex_unlock((v1 + 56));
}

std::string *webrtc::ConstMethodCall<webrtc::RtpSenderInterface,webrtc::RtpParameters>::Marshal@<X0>(std::string *a1@<X0>, void *a2@<X1>, std::string *a3@<X8>)
{
  v6 = &unk_280905000;
  {
    v6 = &unk_280905000;
    if (v13)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v6[403] + 88)) == a2)
  {
    size = a1->__r_.__value_.__l.__size_;
    v10 = a1->__r_.__value_.__r.__words[2];
    v11 = (a1->__r_.__value_.__r.__words[0] + (v10 >> 1));
    if (v10)
    {
      size = *(*v11 + size);
    }

    size(&v15, v11);
    webrtc::RtpParameters::operator=(a1 + 1, &v15);
    webrtc::RtpParameters::~RtpParameters(&v15.__r_.__value_.__l.__data_);
  }

  else
  {
    v15.__r_.__value_.__r.__words[0] = a1;
    v15.__r_.__value_.__r.__words[2] = absl::internal_any_invocable::LocalManagerTrivial;
    v16 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::RtpSenderInterface,webrtc::RtpParameters>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*a2 + 8))(a2, &v15, &v17, &v14);
    (v15.__r_.__value_.__r.__words[2])(1, &v15, &v15);
    v7.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v8.var0 = 3000000;
    webrtc::Event::Wait(&a1[8].__r_.__value_.__r.__words[1], v7, v8);
  }

  return webrtc::RtpParameters::RtpParameters(a3, &a1[1]);
}

std::string *webrtc::RtpParameters::operator=(std::string *__dst, std::string *a2)
{
  v2 = a2;
  if (__dst == a2)
  {
    data = a2[5].__r_.__value_.__l.__data_;
    __dst[5].__r_.__value_.__s.__data_[4] = a2[5].__r_.__value_.__s.__data_[4];
    LODWORD(__dst[5].__r_.__value_.__l.__data_) = data;
    goto LABEL_33;
  }

  if (SHIBYTE(__dst->__r_.__value_.__r.__words[2]) < 0)
  {
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
    }

    else
    {
      a2 = a2->__r_.__value_.__r.__words[0];
      size = v2->__r_.__value_.__l.__size_;
    }

    std::string::__assign_no_alias<false>(__dst, a2, size);
    v5 = v2 + 1;
    v6 = HIBYTE(v2[1].__r_.__value_.__r.__words[2]);
    if (SHIBYTE(__dst[1].__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_14;
    }
  }

  else if ((*(&a2->__r_.__value_.__s + 23) & 0x80) != 0)
  {
    std::string::__assign_no_alias<true>(__dst, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
    v5 = v2 + 1;
    v6 = HIBYTE(v2[1].__r_.__value_.__r.__words[2]);
    if (SHIBYTE(__dst[1].__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_14:
      if ((v6 & 0x80u) == 0)
      {
        v10 = v5;
      }

      else
      {
        v10 = v2[1].__r_.__value_.__l.__data_;
      }

      if ((v6 & 0x80u) == 0)
      {
        v11 = v6;
      }

      else
      {
        v11 = v2[1].__r_.__value_.__l.__size_;
      }

      std::string::__assign_no_alias<false>(__dst + 1, v10, v11);
      goto LABEL_22;
    }
  }

  else
  {
    v4 = *&a2->__r_.__value_.__l.__data_;
    __dst->__r_.__value_.__r.__words[2] = a2->__r_.__value_.__r.__words[2];
    *&__dst->__r_.__value_.__l.__data_ = v4;
    v5 = a2 + 1;
    v6 = HIBYTE(a2[1].__r_.__value_.__r.__words[2]);
    if (SHIBYTE(__dst[1].__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_14;
    }
  }

  if ((v6 & 0x80) != 0)
  {
    std::string::__assign_no_alias<true>(&__dst[1], v2[1].__r_.__value_.__l.__data_, v2[1].__r_.__value_.__l.__size_);
  }

  else
  {
    v9 = *&v5->__r_.__value_.__l.__data_;
    __dst[1].__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
    *&__dst[1].__r_.__value_.__l.__data_ = v9;
  }

LABEL_22:
  std::vector<webrtc::RtpCodecParameters>::__assign_with_size[abi:sn200100]<webrtc::RtpCodecParameters*,webrtc::RtpCodecParameters*>(&__dst[2], v2[2].__r_.__value_.__l.__data_, v2[2].__r_.__value_.__l.__size_, 0x6DB6DB6DB6DB6DB7 * ((v2[2].__r_.__value_.__l.__size_ - v2[2].__r_.__value_.__r.__words[0]) >> 4));
  std::vector<webrtc::RtpExtension>::__assign_with_size[abi:sn200100]<webrtc::RtpExtension*,webrtc::RtpExtension*>(&__dst[3].__r_.__value_.__l.__data_, v2[3].__r_.__value_.__l.__data_, v2[3].__r_.__value_.__l.__size_, (v2[3].__r_.__value_.__l.__size_ - v2[3].__r_.__value_.__r.__words[0]) >> 5);
  std::vector<webrtc::RtpEncodingParameters>::__assign_with_size[abi:sn200100]<webrtc::RtpEncodingParameters*,webrtc::RtpEncodingParameters*>(&__dst[4], v2[4].__r_.__value_.__l.__data_, v2[4].__r_.__value_.__l.__size_, 0xF0F0F0F0F0F0F0F1 * ((v2[4].__r_.__value_.__l.__size_ - v2[4].__r_.__value_.__r.__words[0]) >> 4));
  v12 = v2[5].__r_.__value_.__l.__data_;
  __dst[5].__r_.__value_.__s.__data_[4] = v2[5].__r_.__value_.__s.__data_[4];
  LODWORD(__dst[5].__r_.__value_.__l.__data_) = v12;
  v13 = v2[6].__r_.__value_.__s.__data_[7];
  if (__dst[6].__r_.__value_.__s.__data_[7] < 0)
  {
    if (v13 >= 0)
    {
      v15 = &v2[5].__r_.__value_.__s.__data_[8];
    }

    else
    {
      v15 = v2[5].__r_.__value_.__l.__size_;
    }

    if (v13 >= 0)
    {
      v16 = v2[6].__r_.__value_.__s.__data_[7];
    }

    else
    {
      v16 = v2[5].__r_.__value_.__r.__words[2];
    }

    std::string::__assign_no_alias<false>((__dst + 128), v15, v16);
  }

  else if (v2[6].__r_.__value_.__s.__data_[7] < 0)
  {
    std::string::__assign_no_alias<true>(&__dst[5].__r_.__value_.__s.__data_[8], v2[5].__r_.__value_.__l.__size_, v2[5].__r_.__value_.__r.__words[2]);
  }

  else
  {
    v14 = *&v2[5].__r_.__value_.__r.__words[1];
    __dst[6].__r_.__value_.__r.__words[0] = v2[6].__r_.__value_.__r.__words[0];
    *&__dst[5].__r_.__value_.__r.__words[1] = v14;
  }

LABEL_33:
  LOWORD(__dst[6].__r_.__value_.__r.__words[1]) = v2[6].__r_.__value_.__r.__words[1];
  v17 = v2[6].__r_.__value_.__r.__words[2];
  __dst[6].__r_.__value_.__s.__data_[20] = v2[6].__r_.__value_.__s.__data_[20];
  LODWORD(__dst[6].__r_.__value_.__r.__words[2]) = v17;
  return __dst;
}

void std::vector<webrtc::RtpCodecParameters>::__assign_with_size[abi:sn200100]<webrtc::RtpCodecParameters*,webrtc::RtpCodecParameters*>(uint64_t *a1, uint64_t a2, const webrtc::RtpCodec *a3, unint64_t a4)
{
  v7 = a1[2];
  v8 = *a1;
  if (0x6DB6DB6DB6DB6DB7 * ((v7 - *a1) >> 4) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v8)
      {
        v12 = v10 - 112;
        v13 = (v10 - 112);
        v14 = (v10 - 112);
        do
        {
          v15 = *v14;
          v14 -= 14;
          (*v15)(v13);
          v12 -= 112;
          v16 = v13 == v8;
          v13 = v14;
        }

        while (!v16);
        v11 = *a1;
      }

      a1[1] = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0x249249249249249)
    {
      v17 = 0x6DB6DB6DB6DB6DB7 * (v7 >> 4);
      v18 = 2 * v17;
      if (2 * v17 <= a4)
      {
        v18 = a4;
      }

      if (v17 >= 0x124924924924924)
      {
        v19 = 0x249249249249249;
      }

      else
      {
        v19 = v18;
      }

      if (v19 <= 0x249249249249249)
      {
        operator new();
      }
    }

    goto LABEL_46;
  }

  v20 = a1[1];
  v21 = 0x6DB6DB6DB6DB6DB7 * ((v20 - v8) >> 4);
  if (v21 >= a4)
  {
    if (a2 != a3)
    {
      v26 = 0;
      do
      {
        while (1)
        {
          v28 = v8 + v26;
          v29 = a2 + v26;
          if (a2 != v8)
          {
            break;
          }

          v27 = *(v29 + 32);
          *(v28 + 48) = *(v29 + 48);
          *(v28 + 32) = v27;
          *(v28 + 104) = *(v29 + 104);
          v26 += 112;
          if ((v29 + 112) == a3)
          {
            goto LABEL_39;
          }
        }

        v30 = (v29 + 8);
        v31 = *(v29 + 31);
        if (*(v28 + 31) < 0)
        {
          if (v31 >= 0)
          {
            v33 = (v29 + 8);
          }

          else
          {
            v33 = *v30;
          }

          if (v31 >= 0)
          {
            v34 = *(v29 + 31);
          }

          else
          {
            v34 = *(a2 + v26 + 16);
          }

          std::string::__assign_no_alias<false>((v28 + 8), v33, v34);
        }

        else if ((*(v29 + 31) & 0x80) != 0)
        {
          std::string::__assign_no_alias<true>((v28 + 8), *v30, *(a2 + v26 + 16));
        }

        else
        {
          v32 = *v30;
          *(v28 + 24) = *(v29 + 24);
          *(v28 + 8) = v32;
        }

        v35 = v8 + v26;
        v36 = *(a2 + v26 + 32);
        *(v35 + 48) = *(a2 + v26 + 48);
        *(v35 + 32) = v36;
        std::vector<webrtc::RtcpFeedback>::__assign_with_size[abi:sn200100]<webrtc::RtcpFeedback*,webrtc::RtcpFeedback*>(v8 + v26 + 56, *(a2 + v26 + 56), *(a2 + v26 + 64), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + v26 + 64) - *(a2 + v26 + 56)) >> 2));
        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>(v8 + v26 + 80, *(a2 + v26 + 80), (a2 + 88 + v26));
        *(v28 + 104) = *(v29 + 104);
        v26 += 112;
      }

      while ((v29 + 112) != a3);
LABEL_39:
      v20 = a1[1];
      v8 += v26;
    }

    if (v20 != v8)
    {
      v37 = v20 - 112;
      v38 = (v20 - 112);
      v39 = (v20 - 112);
      do
      {
        v40 = *v39;
        v39 -= 14;
        (*v40)(v38);
        v37 -= 112;
        v16 = v38 == v8;
        v38 = v39;
      }

      while (!v16);
    }
  }

  else
  {
    v22 = std::ranges::__copy_n::__go[abi:sn200100]<webrtc::RtpCodecParameters *,long,webrtc::RtpCodecParameters *>(a2, v21, v8);
    v8 = a1[1];
    if (v22 != a3)
    {
      v23 = v22;
      v24 = a1[1];
      while (v24)
      {
        v25 = webrtc::RtpCodec::RtpCodec(v24, v23);
        *v25 = &unk_28829C0B8;
        *(v25 + 26) = *(v23 + 26);
        v23 = (v23 + 112);
        v24 = (v25 + 112);
        v8 += 112;
        if (v23 == a3)
        {
          goto LABEL_44;
        }
      }

      __break(1u);
LABEL_46:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }
  }

LABEL_44:
  a1[1] = v8;
}

uint64_t std::ranges::__copy_n::__go[abi:sn200100]<webrtc::RtpCodecParameters *,long,webrtc::RtpCodecParameters *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return a1;
  }

  v5 = 0;
  v6 = a1 + 112 * a2;
  do
  {
    while (1)
    {
      v11 = a3 + v5;
      v12 = a1 + v5;
      if (a1 != a3)
      {
        break;
      }

      v16 = *(v12 + 32);
      *(v11 + 48) = *(v12 + 48);
      *(v11 + 32) = v16;
      *(v11 + 104) = *(v12 + 104);
      v5 += 112;
      if (v12 + 112 == v6)
      {
        return v6;
      }
    }

    v13 = (v12 + 8);
    v14 = *(v12 + 31);
    if (*(v11 + 31) < 0)
    {
      if (v14 >= 0)
      {
        v7 = (v12 + 8);
      }

      else
      {
        v7 = *v13;
      }

      if (v14 >= 0)
      {
        v8 = *(v12 + 31);
      }

      else
      {
        v8 = *(a1 + v5 + 16);
      }

      std::string::__assign_no_alias<false>((v11 + 8), v7, v8);
    }

    else if ((*(v12 + 31) & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>((v11 + 8), *v13, *(a1 + v5 + 16));
    }

    else
    {
      v15 = *v13;
      *(v11 + 24) = *(v12 + 24);
      *(v11 + 8) = v15;
    }

    v9 = a3 + v5;
    v10 = *(a1 + v5 + 32);
    *(v9 + 48) = *(a1 + v5 + 48);
    *(v9 + 32) = v10;
    std::vector<webrtc::RtcpFeedback>::__assign_with_size[abi:sn200100]<webrtc::RtcpFeedback*,webrtc::RtcpFeedback*>(a3 + v5 + 56, *(a1 + v5 + 56), *(a1 + v5 + 64), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + v5 + 64) - *(a1 + v5 + 56)) >> 2));
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>(a3 + v5 + 80, *(a1 + v5 + 80), (a1 + 88 + v5));
    *(v11 + 104) = *(v12 + 104);
    v5 += 112;
  }

  while (v12 + 112 != v6);
  return v6;
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::RtpSenderInterface,webrtc::RtpParameters>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  v2(v6, v4);
  webrtc::RtpParameters::operator=((v1 + 24), v6);
  webrtc::RtpParameters::~RtpParameters(&v6[0].__r_.__value_.__l.__data_);
  pthread_mutex_lock((v1 + 200));
  *(v1 + 313) = 1;
  pthread_cond_broadcast((v1 + 264));
  return pthread_mutex_unlock((v1 + 200));
}

__n128 webrtc::MethodCall<webrtc::RtpSenderInterface,webrtc::RTCError,webrtc::RtpParameters const&>::Marshal@<Q0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = &unk_280905000;
  {
    v6 = &unk_280905000;
    if (v13)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v6[403] + 88)) == a2)
  {
    v9 = *(a1 + 8);
    v10 = *(a1 + 16);
    v11 = (*a1 + (v10 >> 1));
    if (v10)
    {
      (*(*v11 + v9))(&v15);
      *(a1 + 24) = v15;
      if (*(a1 + 55) < 0)
      {
LABEL_8:
        operator delete(*(a1 + 32));
      }
    }

    else
    {
      v9(&v15, v11, *(a1 + 64));
      *(a1 + 24) = v15;
      if (*(a1 + 55) < 0)
      {
        goto LABEL_8;
      }
    }

    *(a1 + 32) = v16;
    *(a1 + 48) = v17;
    *(a1 + 56) = v18[0];
    *(a1 + 59) = *(v18 + 3);
    goto LABEL_10;
  }

  v15 = a1;
  *(&v16 + 1) = absl::internal_any_invocable::LocalManagerTrivial;
  v17 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::RtpSenderInterface,webrtc::RTCError,webrtc::RtpParameters const&>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
  (*(*a2 + 8))(a2, &v15, &v19, &v14);
  (*(&v16 + 1))(1, &v15, &v15);
  v7.var0 = 0x7FFFFFFFFFFFFFFFLL;
  v8.var0 = 3000000;
  webrtc::Event::Wait((a1 + 72), v7, v8);
LABEL_10:
  *a3 = *(a1 + 24);
  result = *(a1 + 32);
  *(a3 + 8) = result;
  *(a3 + 24) = *(a1 + 48);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a3 + 32) = *(a1 + 56);
  *(a3 + 35) = *(a1 + 59);
  return result;
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::RtpSenderInterface,webrtc::RTCError,webrtc::RtpParameters const&>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 64);
  v5 = (**a1 + (v3 >> 1));
  if (v3)
  {
    (*(*v5 + v2))(&v7);
    *(v1 + 24) = v7;
    if (*(v1 + 55) < 0)
    {
LABEL_5:
      operator delete(*(v1 + 32));
    }
  }

  else
  {
    v2(&v7, v5, v4);
    *(v1 + 24) = v7;
    if (*(v1 + 55) < 0)
    {
      goto LABEL_5;
    }
  }

  *(v1 + 32) = v8;
  *(v1 + 48) = v9;
  *(v1 + 56) = v10[0];
  *(v1 + 59) = *(v10 + 3);
  pthread_mutex_lock((v1 + 72));
  *(v1 + 185) = 1;
  pthread_cond_broadcast((v1 + 136));
  return pthread_mutex_unlock((v1 + 72));
}

uint64_t _ZN6webrtc10MethodCallINS_18RtpSenderInterfaceEvJRKNS_13RtpParametersEN4absl12AnyInvocableIFvNS_8RTCErrorEOEEEEE7MarshalEPNS_6ThreadE(void *a1, void *a2)
{
  {
    operator new();
  }

  if (pthread_getspecific(*(webrtc::ThreadManager::Instance(void)::thread_manager + 88)) == a2)
  {
    v7 = a1[1];
    v8 = a1[2];
    v9 = a1[4];
    v10 = a1[5];
    v11 = (*a1 + (v8 >> 1));
    if (v8)
    {
      v7 = *(*v11 + v7);
    }

    (*(v10 + 16))(0, v10, v14);
    v15 = *(v10 + 16);
    *(v10 + 16) = absl::internal_any_invocable::EmptyManager;
    *(v10 + 24) = 0;
    v7(v11, v9, v14);
    return (v15)(1, v14, v14);
  }

  else
  {
    v14[0] = a1;
    *&v15 = absl::internal_any_invocable::LocalManagerTrivial;
    *(&v15 + 1) = _ZN4absl22internal_any_invocable12LocalInvokerILb0EvOZN6webrtc10MethodCallINS2_18RtpSenderInterfaceEvJRKNS2_13RtpParametersENS_12AnyInvocableIFvNS2_8RTCErrorEOEEEEE7MarshalEPNS2_6ThreadEEUlvE_JEEET0_PNS0_15TypeErasedStateEDpNS0_18ForwardedParameterIT2_E4typeE;
    (*(*a2 + 8))(a2, v14, &v13, &v12);
    (v15)(1, v14, v14);
    v4.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v5.var0 = 3000000;
    return webrtc::Event::Wait((a1 + 6), v4, v5);
  }
}

uint64_t _ZN4absl22internal_any_invocable12LocalInvokerILb0EvOZN6webrtc10MethodCallINS2_18RtpSenderInterfaceEvJRKNS2_13RtpParametersENS_12AnyInvocableIFvNS2_8RTCErrorEOEEEEE7MarshalEPNS2_6ThreadEEUlvE_JEEET0_PNS0_15TypeErasedStateEDpNS0_18ForwardedParameterIT2_E4typeE(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v6 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v6 + v2);
  }

  (*(v5 + 16))(0, v5, v8);
  v9 = *(v5 + 16);
  *(v5 + 16) = absl::internal_any_invocable::EmptyManager;
  *(v5 + 24) = 0;
  v2(v6, v4, v8);
  (v9)(1, v8, v8);
  pthread_mutex_lock((v1 + 48));
  *(v1 + 161) = 1;
  pthread_cond_broadcast((v1 + 112));
  return pthread_mutex_unlock((v1 + 48));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::RtpSenderInterface,void,webrtc::RtpSenderObserverInterface *>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
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

  v2(v5, *v4);
  pthread_mutex_lock((v1 + 40));
  *(v1 + 153) = 1;
  pthread_cond_broadcast((v1 + 104));

  return pthread_mutex_unlock((v1 + 40));
}

uint64_t webrtc::ConstMethodCall<webrtc::RtpSenderInterface,webrtc::scoped_refptr<webrtc::DtmfSenderInterface>>::Marshal@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = &unk_280905000;
  {
    v6 = &unk_280905000;
    if (v15)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v6[403] + 88)) == a2)
  {
    v11 = a1[1];
    v12 = a1[2];
    v13 = (*a1 + (v12 >> 1));
    if (v12)
    {
      v11 = *(*v13 + v11);
    }

    v11(&v18, v13);
    v14 = v18.n128_u64[0];
    v18.n128_u64[0] = 0;
    result = a1[3];
    a1[3] = v14;
    if (result)
    {
      (*(*result + 8))(result);
      result = v18.n128_u64[0];
      if (v18.n128_u64[0])
      {
        result = (*(*v18.n128_u64[0] + 8))(v18.n128_u64[0]);
      }
    }
  }

  else
  {
    v18.n128_u64[0] = a1;
    v19 = absl::internal_any_invocable::LocalManagerTrivial;
    v20 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::RtpSenderInterface,webrtc::scoped_refptr<webrtc::DtmfSenderInterface>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*a2 + 8))(a2, &v18, &v17, &v16);
    v19(1, &v18, &v18);
    v7.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v8.var0 = 3000000;
    result = webrtc::Event::Wait((a1 + 5), v7, v8);
  }

  v10 = a1[3];
  a1[3] = 0;
  *a3 = v10;
  return result;
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::RtpSenderInterface,webrtc::scoped_refptr<webrtc::DtmfSenderInterface>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  v2(&v8, v4);
  v5 = v8;
  v8 = 0;
  v6 = *(v1 + 24);
  *(v1 + 24) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }
  }

  pthread_mutex_lock((v1 + 40));
  *(v1 + 153) = 1;
  pthread_cond_broadcast((v1 + 104));
  return pthread_mutex_unlock((v1 + 40));
}

uint64_t webrtc::MethodCall<webrtc::RtpSenderInterface,void,webrtc::scoped_refptr<webrtc::FrameEncryptorInterface>>::Marshal(void *a1, void *a2)
{
  v4 = &unk_280905000;
  {
    v4 = &unk_280905000;
    if (v13)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v4[403] + 88)) == a2)
  {
    v8 = a1[1];
    v9 = a1[2];
    v10 = a1[4];
    v11 = (*a1 + (v9 >> 1));
    if (v9)
    {
      v8 = *(*v11 + v8);
    }

    v12 = *v10;
    *v10 = 0;
    v16.n128_u64[0] = v12;
    v8(v11, &v16);
    result = v16.n128_u64[0];
    if (v16.n128_u64[0])
    {
      return (*(*v16.n128_u64[0] + 8))(v16.n128_u64[0]);
    }
  }

  else
  {
    v16.n128_u64[0] = a1;
    v17 = absl::internal_any_invocable::LocalManagerTrivial;
    v18 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::RtpSenderInterface,void,webrtc::scoped_refptr<webrtc::FrameEncryptorInterface>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*a2 + 8))(a2, &v16, &v15, &v14);
    v17(1, &v16, &v16);
    v5.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v6.var0 = 3000000;
    return webrtc::Event::Wait((a1 + 5), v5, v6);
  }

  return result;
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::RtpSenderInterface,void,webrtc::scoped_refptr<webrtc::FrameEncryptorInterface>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
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

  v6 = *v4;
  *v4 = 0;
  v8 = v6;
  v2(v5, &v8);
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  pthread_mutex_lock((v1 + 40));
  *(v1 + 153) = 1;
  pthread_cond_broadcast((v1 + 104));
  return pthread_mutex_unlock((v1 + 40));
}

uint64_t webrtc::ConstMethodCall<webrtc::RtpSenderInterface,webrtc::scoped_refptr<webrtc::FrameEncryptorInterface>>::Marshal@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = &unk_280905000;
  {
    v6 = &unk_280905000;
    if (v15)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v6[403] + 88)) == a2)
  {
    v11 = a1[1];
    v12 = a1[2];
    v13 = (*a1 + (v12 >> 1));
    if (v12)
    {
      v11 = *(*v13 + v11);
    }

    v11(&v18, v13);
    v14 = v18.n128_u64[0];
    v18.n128_u64[0] = 0;
    result = a1[3];
    a1[3] = v14;
    if (result)
    {
      (*(*result + 8))(result);
      result = v18.n128_u64[0];
      if (v18.n128_u64[0])
      {
        result = (*(*v18.n128_u64[0] + 8))(v18.n128_u64[0]);
      }
    }
  }

  else
  {
    v18.n128_u64[0] = a1;
    v19 = absl::internal_any_invocable::LocalManagerTrivial;
    v20 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::RtpSenderInterface,webrtc::scoped_refptr<webrtc::FrameEncryptorInterface>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*a2 + 8))(a2, &v18, &v17, &v16);
    v19(1, &v18, &v18);
    v7.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v8.var0 = 3000000;
    result = webrtc::Event::Wait((a1 + 5), v7, v8);
  }

  v10 = a1[3];
  a1[3] = 0;
  *a3 = v10;
  return result;
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::RtpSenderInterface,webrtc::scoped_refptr<webrtc::FrameEncryptorInterface>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  v2(&v8, v4);
  v5 = v8;
  v8 = 0;
  v6 = *(v1 + 24);
  *(v1 + 24) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }
  }

  pthread_mutex_lock((v1 + 40));
  *(v1 + 153) = 1;
  pthread_cond_broadcast((v1 + 104));
  return pthread_mutex_unlock((v1 + 40));
}

uint64_t webrtc::MethodCall<webrtc::RtpSenderInterface,void,std::unique_ptr<webrtc::VideoEncoderFactory::EncoderSelectorInterface>>::Marshal(void *a1, void *a2)
{
  v4 = &unk_280905000;
  {
    v4 = &unk_280905000;
    if (v13)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v4[403] + 88)) == a2)
  {
    v8 = a1[1];
    v9 = a1[2];
    v10 = a1[4];
    v11 = (*a1 + (v9 >> 1));
    if (v9)
    {
      v8 = *(*v11 + v8);
    }

    v12 = *v10;
    *v10 = 0;
    v16.n128_u64[0] = v12;
    v8(v11, &v16);
    result = v16.n128_u64[0];
    v16.n128_u64[0] = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  else
  {
    v16.n128_u64[0] = a1;
    v17 = absl::internal_any_invocable::LocalManagerTrivial;
    v18 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::RtpSenderInterface,void,std::unique_ptr<webrtc::VideoEncoderFactory::EncoderSelectorInterface>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*a2 + 8))(a2, &v16, &v15, &v14);
    v17(1, &v16, &v16);
    v5.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v6.var0 = 3000000;
    return webrtc::Event::Wait((a1 + 5), v5, v6);
  }

  return result;
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::RtpSenderInterface,void,std::unique_ptr<webrtc::VideoEncoderFactory::EncoderSelectorInterface>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
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

  v6 = *v4;
  *v4 = 0;
  v9 = v6;
  v2(v5, &v9);
  v7 = v9;
  v9 = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  pthread_mutex_lock((v1 + 40));
  *(v1 + 153) = 1;
  pthread_cond_broadcast((v1 + 104));
  return pthread_mutex_unlock((v1 + 40));
}

__n128 webrtc::MethodCall<webrtc::RtpSenderInterface,webrtc::RTCError,std::vector<std::string> const&>::Marshal@<Q0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = &unk_280905000;
  {
    v6 = &unk_280905000;
    if (v13)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v6[403] + 88)) == a2)
  {
    v9 = *(a1 + 8);
    v10 = *(a1 + 16);
    v11 = (*a1 + (v10 >> 1));
    if (v10)
    {
      (*(*v11 + v9))(&v15);
      *(a1 + 24) = v15;
      if (*(a1 + 55) < 0)
      {
LABEL_8:
        operator delete(*(a1 + 32));
      }
    }

    else
    {
      v9(&v15, v11, *(a1 + 64));
      *(a1 + 24) = v15;
      if (*(a1 + 55) < 0)
      {
        goto LABEL_8;
      }
    }

    *(a1 + 32) = v16;
    *(a1 + 48) = v17;
    *(a1 + 56) = v18[0];
    *(a1 + 59) = *(v18 + 3);
    goto LABEL_10;
  }

  v15 = a1;
  *(&v16 + 1) = absl::internal_any_invocable::LocalManagerTrivial;
  v17 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::RtpSenderInterface,webrtc::RTCError,std::vector<std::string> const&>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
  (*(*a2 + 8))(a2, &v15, &v19, &v14);
  (*(&v16 + 1))(1, &v15, &v15);
  v7.var0 = 0x7FFFFFFFFFFFFFFFLL;
  v8.var0 = 3000000;
  webrtc::Event::Wait((a1 + 72), v7, v8);
LABEL_10:
  *a3 = *(a1 + 24);
  result = *(a1 + 32);
  *(a3 + 8) = result;
  *(a3 + 24) = *(a1 + 48);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a3 + 32) = *(a1 + 56);
  *(a3 + 35) = *(a1 + 59);
  return result;
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::RtpSenderInterface,webrtc::RTCError,std::vector<std::string> const&>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 64);
  v5 = (**a1 + (v3 >> 1));
  if (v3)
  {
    (*(*v5 + v2))(&v7);
    *(v1 + 24) = v7;
    if (*(v1 + 55) < 0)
    {
LABEL_5:
      operator delete(*(v1 + 32));
    }
  }

  else
  {
    v2(&v7, v5, v4);
    *(v1 + 24) = v7;
    if (*(v1 + 55) < 0)
    {
      goto LABEL_5;
    }
  }

  *(v1 + 32) = v8;
  *(v1 + 48) = v9;
  *(v1 + 56) = v10[0];
  *(v1 + 59) = *(v10 + 3);
  pthread_mutex_lock((v1 + 72));
  *(v1 + 185) = 1;
  pthread_cond_broadcast((v1 + 136));
  return pthread_mutex_unlock((v1 + 72));
}

uint64_t webrtc::MethodCall<webrtc::RtpSenderInterface,void,webrtc::scoped_refptr<webrtc::FrameTransformerInterface>>::Marshal(void *a1, void *a2)
{
  v4 = &unk_280905000;
  {
    v4 = &unk_280905000;
    if (v13)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v4[403] + 88)) == a2)
  {
    v8 = a1[1];
    v9 = a1[2];
    v10 = a1[4];
    v11 = (*a1 + (v9 >> 1));
    if (v9)
    {
      v8 = *(*v11 + v8);
    }

    v12 = *v10;
    *v10 = 0;
    v16.n128_u64[0] = v12;
    v8(v11, &v16);
    result = v16.n128_u64[0];
    if (v16.n128_u64[0])
    {
      return (*(*v16.n128_u64[0] + 8))(v16.n128_u64[0]);
    }
  }

  else
  {
    v16.n128_u64[0] = a1;
    v17 = absl::internal_any_invocable::LocalManagerTrivial;
    v18 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::RtpSenderInterface,void,webrtc::scoped_refptr<webrtc::FrameTransformerInterface>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*a2 + 8))(a2, &v16, &v15, &v14);
    v17(1, &v16, &v16);
    v5.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v6.var0 = 3000000;
    return webrtc::Event::Wait((a1 + 5), v5, v6);
  }

  return result;
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::RtpSenderInterface,void,webrtc::scoped_refptr<webrtc::FrameTransformerInterface>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
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

  v6 = *v4;
  *v4 = 0;
  v8 = v6;
  v2(v5, &v8);
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  pthread_mutex_lock((v1 + 40));
  *(v1 + 153) = 1;
  pthread_cond_broadcast((v1 + 104));
  return pthread_mutex_unlock((v1 + 40));
}

void webrtc::FunctionView<void ()(void)>::CallVoidPtr<BOOL webrtc::Thread::BlockingCall<webrtc::PeerConnection::SetConfiguration(webrtc::PeerConnectionInterface::RTCConfiguration const&)::$_0,BOOL,void>(webrtc::PeerConnection::SetConfiguration(webrtc::PeerConnectionInterface::RTCConfiguration const&)::$_0 &&,webrtc::Location const&)::{lambda(void)#1}>(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *v2;
  if (*(v2 + 8) == 1)
  {
    webrtc::JsepTransportController::SetNeedsIceRestartFlag(*(v3 + 936));
  }

  v4 = *(v3 + 936);
  v5 = v2[2];
  v6 = v4 + 740;
  v8 = v5[5];
  v7 = v5[6];
  v9 = v5[4];
  *(v4 + 849) = *(v5 + 109);
  *(v4 + 820) = v8;
  *(v4 + 836) = v7;
  *(v4 + 804) = v9;
  v10 = *v5;
  v11 = v5[1];
  v12 = v5[3];
  *(v4 + 772) = v5[2];
  *(v4 + 788) = v12;
  *(v4 + 740) = v10;
  *(v4 + 756) = v11;
  webrtc::JsepTransportController::GetDtlsTransports(v4, &v38);
  v14 = v38;
  v13 = v39;
  if (v38 != v39)
  {
    do
    {
      v15 = *v14;
      v14 = (v14 + 8);
      v16 = (*(*v15 + 216))(v15);
      (*(*v16 + 184))(v16, v6);
    }

    while (v14 != v13);
    v14 = v38;
  }

  if (v14)
  {
    v39 = v14;
    operator delete(v14);
  }

  webrtc::JsepTransportController::SetActiveResetSrtpParams(*(v3 + 936), *(v2[5] + 236));
  v17 = v2[5];
  v18 = *(v17 + 24);
  v37 = a1;
  if (*(v17 + 148))
  {
    v19 = 1;
  }

  else
  {
    v19 = *(v17 + 152);
  }

  v36 = v19;
  v21 = v2[3];
  v20 = v2[4];
  v22 = *(v17 + 64);
  v23 = *(v17 + 216);
  v41 = *(v17 + 208);
  v24 = *(v3 + 552);
  v25 = v18 - 1;
  if (v25 > 2)
  {
    v26 = 0;
    v27 = *(v24 + 140);
    if (!v27)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v26 = dword_273BA03AC[v25];
    v27 = *(v24 + 140);
    if (v27 == v26)
    {
      goto LABEL_15;
    }
  }

  *(v24 + 140) = v26;
  v33 = *(v24 + 80);
  for (*(v24 + 96) = v33; v33 != v24 + 72; v33 = *(v24 + 96))
  {
    v35 = *(v33 + 16);
    v34 = v33 + 16;
    *(v24 + 96) = *(v34 - 8);
    v35(v34, v27, v26);
  }

LABEL_15:
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v28 = v20[1];
  if (v28 != *v20)
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((v28 - *v20) >> 5) < 0x19999999999999ALL)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v29 = webrtc::PortAllocator::SetConfiguration(*(v3 + 552), v21, &v38, v22, v36, v23, &v41);
  v30 = v38;
  if (v38)
  {
    v31 = v39;
    v32 = v38;
    if (v39 != v38)
    {
      do
      {
        webrtc::RelayServerConfig::~RelayServerConfig(v31 - 20);
      }

      while (v31 != v30);
      v32 = v38;
    }

    v39 = v30;
    operator delete(v32);
  }

  **v37 = v29;
}

void *std::__function::__func<webrtc::PeerConnection::AddIceCandidate(std::unique_ptr<webrtc::IceCandidateInterface>,std::function<void ()(webrtc::RTCError)>)::$_0,std::allocator<webrtc::PeerConnection::AddIceCandidate(std::unique_ptr<webrtc::IceCandidateInterface>,std::function<void ()(webrtc::RTCError)>)::$_0>,void ()(webrtc::RTCError)>::~__func(void *a1)
{
  *a1 = &unk_288298558;
  v2 = a1 + 2;
  v3 = a1[5];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    return a1;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    return a1;
  }
}

void std::__function::__func<webrtc::PeerConnection::AddIceCandidate(std::unique_ptr<webrtc::IceCandidateInterface>,std::function<void ()(webrtc::RTCError)>)::$_0,std::allocator<webrtc::PeerConnection::AddIceCandidate(std::unique_ptr<webrtc::IceCandidateInterface>,std::function<void ()(webrtc::RTCError)>)::$_0>,void ()(webrtc::RTCError)>::~__func(void *a1)
{
  *a1 = &unk_288298558;
  v1 = a1 + 2;
  v2 = a1[5];
  if (v2 == v1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t std::__function::__func<webrtc::PeerConnection::AddIceCandidate(std::unique_ptr<webrtc::IceCandidateInterface>,std::function<void ()(webrtc::RTCError)>)::$_0,std::allocator<webrtc::PeerConnection::AddIceCandidate(std::unique_ptr<webrtc::IceCandidateInterface>,std::function<void ()(webrtc::RTCError)>)::$_0>,void ()(webrtc::RTCError)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  *a2 = &unk_288298558;
  a2[1] = v3;
  v4 = *(result + 40);
  if (v4)
  {
    if (v4 == result + 16)
    {
      a2[5] = a2 + 2;
      v5 = *(**(result + 40) + 24);

      return v5();
    }

    else
    {
      result = (*(*v4 + 16))(*(result + 40));
      a2[5] = result;
    }
  }

  else
  {
    a2[5] = 0;
  }

  return result;
}

uint64_t std::__function::__func<webrtc::PeerConnection::AddIceCandidate(std::unique_ptr<webrtc::IceCandidateInterface>,std::function<void ()(webrtc::RTCError)>)::$_0,std::allocator<webrtc::PeerConnection::AddIceCandidate(std::unique_ptr<webrtc::IceCandidateInterface>,std::function<void ()(webrtc::RTCError)>)::$_0>,void ()(webrtc::RTCError)>::destroy(uint64_t a1)
{
  v1 = a1 + 16;
  result = *(a1 + 40);
  if (result == v1)
  {
    return (*(*result + 32))();
  }

  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void std::__function::__func<webrtc::PeerConnection::AddIceCandidate(std::unique_ptr<webrtc::IceCandidateInterface>,std::function<void ()(webrtc::RTCError)>)::$_0,std::allocator<webrtc::PeerConnection::AddIceCandidate(std::unique_ptr<webrtc::IceCandidateInterface>,std::function<void ()(webrtc::RTCError)>)::$_0>,void ()(webrtc::RTCError)>::destroy_deallocate(char *__p)
{
  v2 = __p + 16;
  v3 = *(__p + 5);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = __p;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = __p;
  }

  operator delete(v4);
}

void std::__function::__func<webrtc::PeerConnection::AddIceCandidate(std::unique_ptr<webrtc::IceCandidateInterface>,std::function<void ()(webrtc::RTCError)>)::$_0,std::allocator<webrtc::PeerConnection::AddIceCandidate(std::unique_ptr<webrtc::IceCandidateInterface>,std::function<void ()(webrtc::RTCError)>)::$_0>,void ()(webrtc::RTCError)>::operator()(uint64_t a1, int *a2)
{
  v3 = *a2;
  v4 = *(a2 + 1);
  v5 = *(a2 + 2);
  *v9 = a2[6];
  *&v9[3] = *(a2 + 27);
  v6 = *(a2 + 31);
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  *(a2 + 1) = 0;
  *v8 = a2[8];
  *&v8[3] = *(a2 + 35);
  (*(**(a1 + 8) + 184))(*(a1 + 8));
  v10 = v3;
  if ((v6 & 0x80000000) == 0)
  {
    __p.__r_.__value_.__r.__words[0] = v4;
    __p.__r_.__value_.__l.__size_ = v5;
    LODWORD(__p.__r_.__value_.__r.__words[2]) = *v9;
    *(&__p.__r_.__value_.__r.__words[2] + 3) = *&v9[3];
    *(&__p.__r_.__value_.__s + 23) = v6;
    v12[0] = *v8;
    *(v12 + 3) = *&v8[3];
    v7 = *(a1 + 40);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_7:
    std::__throw_bad_function_call[abi:sn200100]();
    goto LABEL_8;
  }

  std::string::__init_copy_ctor_external(&__p, v4, v5);
  v12[0] = *v8;
  *(v12 + 3) = *&v8[3];
  v7 = *(a1 + 40);
  if (!v7)
  {
    goto LABEL_7;
  }

LABEL_3:
  (*(*v7 + 48))(v7, &v10);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v6 & 0x80000000) == 0)
    {
      return;
    }

LABEL_9:
    operator delete(v4);
    return;
  }

LABEL_8:
  operator delete(__p.__r_.__value_.__l.__data_);
  if (v6 < 0)
  {
    goto LABEL_9;
  }
}

__n128 webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::RTCError webrtc::Thread::BlockingCall<webrtc::PeerConnection::SetBitrate(webrtc::BitrateSettings const&)::$_0,webrtc::RTCError,void>(webrtc::PeerConnection::SetBitrate(webrtc::BitrateSettings const&)::$_0 &&,webrtc::Location const&)::{lambda(void)#1}>(uint64_t *a1)
{
  (*(**a1[1] + 376))(&v5);
  v2 = *a1;
  *v2 = v5;
  if (*(v2 + 31) < 0)
  {
    operator delete(*(v2 + 8));
  }

  result = v6;
  *(v2 + 24) = v7;
  *(v2 + 8) = result;
  v4 = v8[0];
  *(v2 + 35) = *(v8 + 3);
  *(v2 + 32) = v4;
  return result;
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::PeerConnection::ReconfigureBandwidthEstimation(webrtc::BandwidthEstimationSettings const&)::$_0 &&>(uint64_t a1)
{
  v1 = *(*(*(**(*a1 + 576) + 104))(*(*a1 + 576)) + 80);

  return v1();
}

uint64_t webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::PeerConnection::AddAdaptationResource(webrtc::scoped_refptr<webrtc::Resource>)::$_0>(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4 = v1;
  if (v1)
  {
    (**v1)(v1);
  }

  (*(*v2 + 472))(v2, &v4);
  result = v4;
  if (v4)
  {
    return ((*v4)[1])(v4);
  }

  return result;
}

uint64_t webrtc::FunctionView<void ()(void)>::CallVoidPtr<BOOL webrtc::Thread::BlockingCall<webrtc::PeerConnection::StartRtcEventLog(std::unique_ptr<webrtc::RtcEventLogOutput>,long long)::$_0,BOOL,void>(webrtc::PeerConnection::StartRtcEventLog(std::unique_ptr<webrtc::RtcEventLogOutput>,long long)::$_0 &&,webrtc::Location const&)::{lambda(void)#1}>(uint64_t a1)
{
  v2 = *(a1 + 8);
  v4 = *v2;
  result = v2[1];
  v2[1] = 0;
  if (*(*(v4 + 600) + 4) == 1)
  {
    v5 = v2[2];
    v6 = *(v4 + 56);
    v8 = result;
    v7 = (*(*v6 + 16))(v6, &v8, v5);
    result = v8;
    v8 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    **a1 = v7;
  }

  else
  {
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    **a1 = 0;
  }

  return result;
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::PeerConnection::SetDataChannelEventObserver(std::unique_ptr<webrtc::DataChannelEventObserverInterface>)::$_0 &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  a1[1] = 0;
  result = *(v1 + 832);
  *(v1 + 832) = v2;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t absl::internal_any_invocable::LocalManagerNontrivial<webrtc::PeerConnection::SetDataChannelEventObserver(std::unique_ptr<webrtc::DataChannelEventObserverInterface>)::$_0>(char a1, __int128 *a2, _OWORD *a3)
{
  if ((a1 & 1) == 0)
  {
    v3 = *a2;
    *(a2 + 1) = 0;
    *a3 = v3;
  }

  result = *(a2 + 1);
  *(a2 + 1) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::PeerConnection::Close(void)::$_0>(void **a1)
{
  v1 = *a1;
  v8 = 0;
  v11[14] = 0;
  v10 = 0;
  memset(v11, 0, 13);
  v9 = 0;
  webrtc::PeerConnection::TeardownDataChannelTransport_n(v1, &v8);
  result = v1[117];
  v1[117] = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  v3 = v1[69];
  v4 = *(v3 + 232);
  v5 = *(v3 + 240);
  while (v5 != v4)
  {
    v6 = *--v5;
    result = v6;
    *v5 = 0;
    if (v6)
    {
      result = (*(*result + 8))(result);
    }
  }

  *(v3 + 240) = v4;
  v7 = v1[74];
  if (v7)
  {
    *(v7 + 4) = 0;
  }

  return result;
}

uint64_t webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::PeerConnection::Close(void)::$_1>(uint64_t *a1)
{
  v1 = *a1;
  *(*(*a1 + 600) + 4) = 0;
  v2 = *(v1 + 576);
  *(v1 + 576) = 0;
  if (v2)
  {
    (*(*v2 + 256))(v2);
  }

  v3 = *(**(v1 + 56) + 24);

  return v3();
}

__n128 webrtc::FunctionView<void ()(void)>::CallVoidPtr<std::optional<std::string> webrtc::Thread::BlockingCall<webrtc::PeerConnection::CreateDataChannelTransport(std::string_view)::$_0,std::optional<std::string>,void>(webrtc::PeerConnection::CreateDataChannelTransport(std::string_view)::$_0 &&,webrtc::Location const&)::{lambda(void)#1}>(uint64_t *a1)
{
  v1 = a1[1];
  v3 = *v1;
  v2 = v1[1];
  v4 = *v2;
  v5 = *(v2 + 8);
  v34 = *v2;
  v35 = v5;
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
LABEL_52:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (v5 > 0x16)
  {
    operator new();
  }

  *(&__p.__r_.__value_.__s + 23) = v5;
  v7 = (&__p + v5);
  if (&__p <= v4 && v7 > v4)
  {
    goto LABEL_51;
  }

  if (v5)
  {
    memmove(&__p, v4, v5);
  }

  v7->__r_.__value_.__s.__data_[0] = 0;
  v9 = (v3 + 688);
  if (*(v3 + 712) != 1)
  {
    *v9 = *&__p.__r_.__value_.__l.__data_;
    *(v3 + 704) = *(&__p.__r_.__value_.__l + 2);
    *(v3 + 712) = 1;
    goto LABEL_16;
  }

  if (*(v3 + 711) < 0)
  {
    operator delete(*(v3 + 688));
    v10 = *(v3 + 712);
    *v9 = *&__p.__r_.__value_.__l.__data_;
    *(v3 + 704) = *(&__p.__r_.__value_.__l + 2);
    if (v10)
    {
      goto LABEL_16;
    }

LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  *v9 = *&__p.__r_.__value_.__l.__data_;
  *(v3 + 704) = *(&__p.__r_.__value_.__l + 2);
LABEL_16:
  v11 = *(v3 + 936);
  v12 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(v11 + 408, (v3 + 688));
  if ((v11 + 416) == v12 || (v13 = v12[7]) == 0 || (v14 = *(v13 + 120)) == 0)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)11,std::string_view const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)11,std::string_view const*> const&)::t, v22, v23, v24, v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/peer_connection.cc");
    }

    if (*(v3 + 712) == 1)
    {
      if (*(v3 + 711) < 0)
      {
        operator delete(*v9);
      }

      *(v3 + 712) = 0;
    }

    __p.__r_.__value_.__s.__data_[0] = 0;
    v33 = 0;
    v30 = *a1;
    v31 = *(v30 + 24);
    if (*(v30 + 24))
    {
      goto LABEL_40;
    }

    goto LABEL_33;
  }

  __p.__r_.__value_.__s.__data_[0] = 0;
  v33 = 0;
  if ((*(v3 + 712) & 1) == 0)
  {
    goto LABEL_51;
  }

  v15 = *(v3 + 936);
  v16 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(v15 + 408, (v3 + 688));
  if ((v15 + 416) != v16 && (v17 = v16[7]) != 0 && (v18 = *(v17 + 104)) != 0 && (v19 = *(v18 + 144)) != 0)
  {
    v20 = (*(*v19 + 16))(v19);
    if (*(v20 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *v20, *(v20 + 8));
    }

    else
    {
      v21 = *v20;
      __p.__r_.__value_.__r.__words[2] = *(v20 + 16);
      *&__p.__r_.__value_.__l.__data_ = v21;
    }
  }

  else
  {
    __p.__r_.__value_.__r.__words[0] = 0;
    *(&__p.__r_.__value_.__s + 23) = 0;
  }

  v33 = 1;
  webrtc::DataChannelController::set_data_channel_transport((v3 + 752), v14 + 8);
  v30 = *a1;
  v31 = *(v30 + 24);
  if (v31 != v33)
  {
LABEL_40:
    if (!v31)
    {
      result = *&__p.__r_.__value_.__l.__data_;
      *(v30 + 16) = *(&__p.__r_.__value_.__l + 2);
      *v30 = result;
      memset(&__p, 0, sizeof(__p));
      *(v30 + 24) = 1;
      if (v33 != 1)
      {
        return result;
      }

      goto LABEL_45;
    }

    if (*(v30 + 23) < 0)
    {
      operator delete(*v30);
    }

    *(v30 + 24) = 0;
    goto LABEL_44;
  }

LABEL_33:
  if (!v31)
  {
LABEL_44:
    if (v33 != 1)
    {
      return result;
    }

    goto LABEL_45;
  }

  if (*(v30 + 23) < 0)
  {
    operator delete(*v30);
  }

  result = *&__p.__r_.__value_.__l.__data_;
  *(v30 + 16) = *(&__p.__r_.__value_.__l + 2);
  *v30 = result;
  *(&__p.__r_.__value_.__s + 23) = 0;
  __p.__r_.__value_.__s.__data_[0] = 0;
  if (v33 == 1)
  {
LABEL_45:
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  return result;
}

void webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::PeerConnection::DestroyDataChannelTransport(webrtc::RTCError)::$_0>(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v5 = *v2;
  if (*(v2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(v2 + 8), *(v2 + 16));
  }

  else
  {
    v3 = *(v2 + 8);
    __p.__r_.__value_.__r.__words[2] = *(v2 + 24);
    *&__p.__r_.__value_.__l.__data_ = v3;
  }

  v4 = *(v2 + 32);
  *&v7[3] = *(v2 + 35);
  *v7 = v4;
  webrtc::PeerConnection::TeardownDataChannelTransport_n(v1, &v5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

uint64_t webrtc::FunctionView<void ()(void)>::CallVoidPtr<std::optional<webrtc::SSLRole> webrtc::Thread::BlockingCall<webrtc::PeerConnection::GetSslRole(std::string const&,webrtc::SSLRole *)::$_0,std::optional<webrtc::SSLRole>,void>(webrtc::PeerConnection::GetSslRole(std::string const&,webrtc::SSLRole *)::$_0 &&,webrtc::Location const&)::{lambda(void)#1}>(uint64_t *a1)
{
  result = webrtc::JsepTransportController::GetDtlsRole(*(*a1[1] + 936), (a1[1] + 8));
  v3 = *a1;
  *v3 = result;
  *(v3 + 4) = BYTE4(result);
  return result;
}

uint64_t *webrtc::FunctionView<void ()(void)>::CallVoidPtr<BOOL webrtc::Thread::BlockingCall<webrtc::PeerConnection::NeedsIceRestart(std::string const&)::$_0,BOOL,void>(webrtc::PeerConnection::NeedsIceRestart(std::string const&)::$_0 &&,webrtc::Location const&)::{lambda(void)#1}>(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = (*v2)[117];
  result = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>((v3 + 384), v2[1]);
  if (v3 + 392 == result)
  {
    **a1 = 0;
  }

  else
  {
    v5 = result[7];
    if (v5)
    {
      LOBYTE(v5) = *(v5 + 32);
    }

    **a1 = v5 & 1;
  }

  return result;
}

void absl::internal_any_invocable::RemoteInvoker<false,void,webrtc::PeerConnection::OnTransportControllerConnectionState(webrtc::IceConnectionState)::$_0 &&>(uint64_t **a1)
{
  v1 = *a1;
  memset(v4, 0, sizeof(v4));
  v2 = v1[1];
  v3 = v1[2];
  if (v3 != v2)
  {
    if (((v3 - v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  webrtc::PeerConnection::ReportTransportStats(*v1, v4);
}

uint64_t absl::internal_any_invocable::RemoteManagerNontrivial<webrtc::PeerConnection::OnTransportControllerConnectionState(webrtc::IceConnectionState)::$_0>(uint64_t result, uint64_t *a2, void *a3)
{
  v3 = *a2;
  if (result)
  {
    if (v3)
    {
      v4 = *(v3 + 8);
      if (v4)
      {
        v5 = *(v3 + 16);
        v6 = *(v3 + 8);
        if (v5 != v4)
        {
          do
          {
            v8 = *(v5 - 8);
            v5 -= 8;
            v7 = v8;
            if (v8)
            {
              (*(*v7 + 8))(v7);
            }
          }

          while (v5 != v4);
          v6 = *(v3 + 8);
        }

        *(v3 + 16) = v4;
        operator delete(v6);
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

double webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::Call::Stats webrtc::Thread::BlockingCall<webrtc::PeerConnection::GetCallStats(void)::$_0,webrtc::Call::Stats,void>(webrtc::PeerConnection::GetCallStats(void)::$_0 &&,webrtc::Location const&)::{lambda(void)#1}>(uint64_t a1)
{
  (*(***(a1 + 8) + 600))(v5);
  v2 = *a1;
  result = *v5;
  v4 = v5[1];
  *v2 = v5[0];
  v2[1] = v4;
  return result;
}

void absl::internal_any_invocable::RemoteInvoker<false,void,webrtc::PeerConnection::AddRemoteCandidate(std::string_view,webrtc::Candidate const&)::$_0 &&>(uint64_t a1)
{
  v2 = *MEMORY[0x277D85DE8];
  webrtc::Candidate::Candidate(&v1, (*a1 + 32));
  operator new();
}

uint64_t absl::internal_any_invocable::RemoteManagerNontrivial<webrtc::PeerConnection::AddRemoteCandidate(std::string_view,webrtc::Candidate const&)::$_0>(uint64_t result, uint64_t *a2, void *a3)
{
  v3 = *a2;
  if (result)
  {
    if (v3)
    {
      webrtc::Candidate::~Candidate((v3 + 32));
      if (*(v3 + 31) < 0)
      {
        operator delete(*(v3 + 8));
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

uint64_t absl::internal_any_invocable::RemoteInvoker<false,void,webrtc::PeerConnection::AddRemoteCandidate(std::string_view,webrtc::Candidate const&)::$_0::operator() const(void)::{lambda(void)#2} &&>(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  (*(*v2 + 824))(v2, 0x20000);
  v3 = *(v1 + 30);
  if (v3 == 2)
  {
    v7 = *(v1 + 31);
    if (v7 == 65193 || *(v1 + 31) == 127)
    {
      goto LABEL_32;
    }

    v8 = bswap32(v7);
    v9 = HIWORD(v8) == 49320 || (v8 & 0xFF000000) == 167772160;
    if (v9 || (v8 & 0xFFF00000) == -1408237568)
    {
      goto LABEL_32;
    }
  }

  else
  {
    if (v3 == 30)
    {
      if ((*(v1 + 124) & 0xC0FF) != 0x80FE)
      {
        v4 = *(v1 + 124) == *MEMORY[0x277D85EF0] && *(v1 + 132) == *(MEMORY[0x277D85EF0] + 8);
        v5 = !v4;
        if (*(v1 + 124) != 253 && v5)
        {
          goto LABEL_35;
        }
      }

      goto LABEL_32;
    }

    v7 = *(v1 + 31);
  }

  v11 = v7 & 0xC0FF;
  if (v3 == 2 && v11 == 16484)
  {
LABEL_32:
    (*(*v2 + 824))(v2, 4096);
    v3 = *(v1 + 30);
  }

  if (v3)
  {
    if (v3 == 30)
    {
LABEL_35:
      (*(*v2 + 824))(v2, 0x10000);
    }
  }

  else if ((v1[19] & 1) == 0)
  {
    v13 = *(v1 + 111);
    if (v13 < 0)
    {
      v13 = v1[12];
    }

    if (v13)
    {
      (*(*v2 + 824))(v2, 0x4000);
      if (*(v1 + 30) == 30)
      {
        goto LABEL_35;
      }
    }
  }

  if (!(*(*v2 + 432))(v2) || (result = (*(*v2 + 432))(v2), result == 5))
  {
    v15 = *(*v2 + 816);

    return v15(v2, 1);
  }

  return result;
}

uint64_t absl::internal_any_invocable::RemoteManagerNontrivial<webrtc::PeerConnection::AddRemoteCandidate(std::string_view,webrtc::Candidate const&)::$_0::operator() const(void)::{lambda(void)#2}>(uint64_t result, uint64_t *a2, void *a3)
{
  v3 = *a2;
  if (result)
  {
    if (v3)
    {
      webrtc::Candidate::~Candidate((v3 + 8));

      JUMPOUT(0x2743DA540);
    }
  }

  else
  {
    *a3 = v3;
  }

  return result;
}

void std::__tree<std::__value_type<std::string,std::set<webrtc::MediaType>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<webrtc::MediaType>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<webrtc::MediaType>>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::set<webrtc::MediaType>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<webrtc::MediaType>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<webrtc::MediaType>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::set<webrtc::MediaType>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<webrtc::MediaType>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<webrtc::MediaType>>>>::destroy(*(a1 + 1));
    std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(*(a1 + 8));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
      v2 = a1;
    }

    else
    {
      v2 = a1;
    }

    operator delete(v2);
  }
}

void *std::__tree<std::__value_type<std::string,std::set<webrtc::MediaType>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<webrtc::MediaType>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<webrtc::MediaType>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_27:
    operator new();
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (v3 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  while (1)
  {
    while (1)
    {
      v6 = v2;
      v9 = v2[4];
      v7 = v2 + 4;
      v8 = v9;
      v10 = *(v7 + 23);
      v11 = v10 >= 0 ? v7 : v8;
      v12 = v10 >= 0 ? *(v7 + 23) : v7[1];
      v13 = (v12 >= v5 ? v5 : v12);
      v14 = memcmp(v4, v11, v13);
      if (v14)
      {
        break;
      }

      if (v5 >= v12)
      {
        goto LABEL_22;
      }

LABEL_8:
      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_27;
      }
    }

    if (v14 < 0)
    {
      goto LABEL_8;
    }

LABEL_22:
    v15 = memcmp(v11, v4, v13);
    if (v15)
    {
      if ((v15 & 0x80000000) == 0)
      {
        return v6;
      }

      goto LABEL_26;
    }

    if (v12 >= v5)
    {
      return v6;
    }

LABEL_26:
    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_27;
    }
  }
}

void absl::internal_any_invocable::RemoteInvoker<false,void,webrtc::PeerConnection::OnTransportChanged(std::string const&,webrtc::RtpTransportInternal *,webrtc::scoped_refptr<webrtc::DtlsTransport>,webrtc::DataChannelTransportInterface *)::$_0 &&>(char ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if ((*(*a1 + 31) & 0x80000000) == 0)
  {
    v3 = *(v1 + 1);
    __p.__r_.__value_.__r.__words[2] = v1[3];
    *&__p.__r_.__value_.__l.__data_ = v3;
    v4 = (v2 + 720);
    if ((v2[743] & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  std::string::__init_copy_ctor_external(&__p, v1[1], v1[2]);
  v4 = (v2 + 720);
  if (v2[743] < 0)
  {
LABEL_3:
    operator delete(*v4);
  }

LABEL_4:
  *v4 = __p;
  *(&__p.__r_.__value_.__s + 23) = 0;
  __p.__r_.__value_.__s.__data_[0] = 0;
  (*(*v2 + 184))(v2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

uint64_t absl::internal_any_invocable::RemoteManagerNontrivial<webrtc::PeerConnection::OnTransportChanged(std::string const&,webrtc::RtpTransportInternal *,webrtc::scoped_refptr<webrtc::DtlsTransport>,webrtc::DataChannelTransportInterface *)::$_0>(uint64_t result, uint64_t *a2, void *a3)
{
  v3 = *a2;
  if (result)
  {
    if (v3)
    {
      if (*(v3 + 31) < 0)
      {
        operator delete(*(v3 + 8));
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

uint64_t *absl::internal_any_invocable::RemoteInvoker<false,void,webrtc::PeerConnection::StartSctpTransport(webrtc::SctpOptions const&)::$_0 &&>(void **a1)
{
  v1 = *a1;
  v2 = (*a1 + 1);
  v3 = (*(***a1 + 784))(**a1);
  result = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(v3 + 408, v2);
  if ((v3 + 416) != result)
  {
    v5 = result[7];
    if (v5)
    {
      v6 = *(v5 + 120);
      if (v6)
      {
        (**v6)(v6);
        webrtc::SctpTransport::Start(v6, v1 + 32);
        v7 = *(*v6 + 8);

        return v7(v6);
      }
    }
  }

  return result;
}

uint64_t absl::internal_any_invocable::RemoteManagerNontrivial<webrtc::PeerConnection::StartSctpTransport(webrtc::SctpOptions const&)::$_0>(uint64_t result, uint64_t *a2, void *a3)
{
  v3 = *a2;
  if (result)
  {
    if (v3)
    {
      if (*(v3 + 31) < 0)
      {
        operator delete(*(v3 + 8));
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

uint64_t std::__function::__func<webrtc::PeerConnection::InitializeRtcpCallback(void)::$_0,std::allocator<webrtc::PeerConnection::InitializeRtcpCallback(void)::$_0>,void ()(webrtc::CopyOnWriteBuffer const&,long long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2882985A0;
  a2[1] = v2;
  return result;
}

void std::__function::__func<webrtc::PeerConnection::InitializeRtcpCallback(void)::$_0,std::allocator<webrtc::PeerConnection::InitializeRtcpCallback(void)::$_0>,void ()(webrtc::CopyOnWriteBuffer const&,long long)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 8) + 600);
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

uint64_t absl::internal_any_invocable::RemoteInvoker<false,void,webrtc::PeerConnection::InitializeRtcpCallback(void)::$_0::operator() const(webrtc::CopyOnWriteBuffer const&,long long)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = (*(**(**a1 + 608) + 96))(*(**a1 + 608));
  v3 = *(v1 + 8);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 24), 1u, memory_order_relaxed);
  }

  v8 = *(v1 + 16);
  result = (**v2)(v2, &v7);
  v5 = v7;
  if (v7 && atomic_fetch_add((v7 + 24), 0xFFFFFFFF) == 1)
  {
    v6 = *(v5 + 16);
    *(v5 + 16) = 0;
    if (v6)
    {
      MEMORY[0x2743DA520](v6, 0x1000C8077774924);
    }

    return MEMORY[0x2743DA540](v5, 0x1010C40EE34DA14);
  }

  return result;
}

uint64_t absl::internal_any_invocable::RemoteManagerNontrivial<webrtc::PeerConnection::InitializeRtcpCallback(void)::$_0::operator() const(webrtc::CopyOnWriteBuffer const&,long long)::{lambda(void)#1}>(char a1, uint64_t *a2, void *a3)
{
  result = *a2;
  if (a1)
  {
    if (result)
    {
      v5 = *(result + 8);
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
    *a3 = result;
  }

  return result;
}

uint64_t std::__function::__func<webrtc::PeerConnection::InitializeUnDemuxablePacketHandler(void)::$_0,std::allocator<webrtc::PeerConnection::InitializeUnDemuxablePacketHandler(void)::$_0>,void ()(webrtc::RtpPacketReceived const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2882985E8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<webrtc::PeerConnection::InitializeUnDemuxablePacketHandler(void)::$_0,std::allocator<webrtc::PeerConnection::InitializeUnDemuxablePacketHandler(void)::$_0>,void ()(webrtc::RtpPacketReceived const&)>::operator()(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 8) + 600);
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 1u, memory_order_relaxed);
  }

  v4 = a2[7];
  v3 = a2[8];
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v6 = a2[11];
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 24), 1u, memory_order_relaxed);
  }

  v5 = a2[17];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1u, memory_order_relaxed);
  }

  operator new();
}

void absl::internal_any_invocable::RemoteInvoker<false,void,webrtc::PeerConnection::InitializeUnDemuxablePacketHandler(void)::$_0::operator() const(webrtc::RtpPacketReceived const&)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = (*(**(**a1 + 608) + 96))(*(**a1 + 608));
  v3 = *(v1 + 8);
  v4 = *(v1 + 24);
  v5 = *(v1 + 40);
  *&v19[15] = *(v1 + 55);
  v18[1] = v4;
  *v19 = v5;
  v18[0] = v3;
  v21 = 0;
  v22 = 0;
  __p = 0;
  v7 = *(v1 + 64);
  v6 = *(v1 + 72);
  if (v6 != v7)
  {
    if (((v6 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v8 = *(v1 + 96);
  v23 = *(v1 + 88);
  v24 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 24), 1u, memory_order_relaxed);
  }

  v9 = *(v1 + 136);
  v10 = *(v1 + 120);
  v25 = *(v1 + 104);
  v26 = v10;
  v27 = v9;
  v11 = *(v1 + 144);
  v28 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1u, memory_order_relaxed);
  }

  v17 = absl::internal_any_invocable::LocalInvoker<false,BOOL,webrtc::PeerConnection::InitializeUnDemuxablePacketHandler(void)::$_0::operator() const(webrtc::RtpPacketReceived const&)::{lambda(void)#1}::operator() const(void)::{lambda(webrtc::RtpPacketReceived const&)#1} &,webrtc::RtpPacketReceived const&>;
  v16 = absl::internal_any_invocable::LocalManagerTrivial;
  (*(*v2 + 8))(v2, 4, v18, v15);
  v16(1, v15, v15);
  v12 = v28;
  if (v28 && atomic_fetch_add((v28 + 8), 0xFFFFFFFF) == 1)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = v24;
  if (v24 && atomic_fetch_add((v24 + 24), 0xFFFFFFFF) == 1)
  {
    v14 = *(v13 + 16);
    *(v13 + 16) = 0;
    if (v14)
    {
      MEMORY[0x2743DA520](v14, 0x1000C8077774924);
    }

    MEMORY[0x2743DA540](v13, 0x1010C40EE34DA14);
  }

  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }
}

uint64_t absl::internal_any_invocable::RemoteManagerNontrivial<webrtc::PeerConnection::InitializeUnDemuxablePacketHandler(void)::$_0::operator() const(webrtc::RtpPacketReceived const&)::{lambda(void)#1}>(uint64_t result, void *a2, void *a3)
{
  v3 = *a2;
  if (result)
  {
    if (v3)
    {
      v4 = v3[18];
      if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v4 + 8))(v4);
      }

      v5 = v3[12];
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

      v7 = v3[8];
      if (v7)
      {
        v3[9] = v7;
        operator delete(v7);
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

uint64_t webrtc::CreateModularPeerConnectionFactory@<X0>(uint64_t a1@<X0>, atomic_uint *a2@<X8>)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_5;
  }

  {
    operator new();
  }

  if (pthread_getspecific(*(webrtc::ThreadManager::Instance(void)::thread_manager + 88)) == v4)
  {
LABEL_5:
    v7 = webrtc::PeerConnectionFactoryDependencies::PeerConnectionFactoryDependencies(v19, a1);
    if (v25 == 1)
    {
      v8 = v20;
      if (v20)
      {
        atomic_fetch_add_explicit(v20 + 2, 1u, memory_order_relaxed);
      }

      v10 = v21;
      v9 = v22;
      v12 = v23;
      v11 = v24;
      v13 = v27;
      v27 = 0;
      if (!v13)
      {
LABEL_12:
        v15 = v26;
        v26 = 0;
        if (v15)
        {
          operator new();
        }

        if (v25 == 1)
        {
          v16 = v20;
          if (v20 && atomic_fetch_add(v20 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v16 + 8))(v16, v7);
          }

          v25 = 0;
        }

        v30 = v8;
        if (v8)
        {
          atomic_fetch_add_explicit(v8 + 2, 1u, memory_order_relaxed);
        }

        v31 = v10;
        v32 = v9;
        v33 = v12;
        v34 = v11;
        v17 = webrtc::EnvironmentFactory::CreateWithDefaults(&v30, v29);
        v18 = v30;
        if (v30 && atomic_fetch_add(v30 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v18 + 8))(v18, v17);
        }

        if (v8 && atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v8 + 8))(v8, v17);
        }

        operator new();
      }
    }

    else
    {
      v8 = 0;
      v10 = 0;
      v9 = 0;
      v12 = 0;
      v11 = 0;
      v14 = v27;
      v27 = 0;
      if (!v14)
      {
        goto LABEL_12;
      }
    }

    operator new();
  }

  v5 = *(a1 + 16);
  v29[0] = a1;
  *a2 = 0;
  v30 = a2;
  v31 = v29;
  return (*(*v5 + 96))(v5, &v30, webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::scoped_refptr<webrtc::PeerConnectionFactoryInterface> webrtc::Thread::BlockingCall<webrtc::CreateModularPeerConnectionFactory(webrtc::PeerConnectionFactoryDependencies)::$_0,webrtc::scoped_refptr<webrtc::PeerConnectionFactoryInterface>,void>(webrtc::CreateModularPeerConnectionFactory(webrtc::PeerConnectionFactoryDependencies)::$_0 &&,webrtc::Location const&)::{lambda(void)#1}>, &v28);
}

void webrtc::PeerConnectionFactory::~PeerConnectionFactory(webrtc::PeerConnectionFactory *this)
{
  *this = &unk_288298A90;
  v2 = *(*(this + 1) + 40);
  v14 = this;
  (*(*v2 + 96))(v2, &v14, webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::PeerConnectionFactory::~PeerConnectionFactory()::$_0>, &v13);
  v3 = *(this + 27);
  *(this + 27) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 26);
  *(this + 26) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 25);
  *(this + 25) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 24);
  *(this + 24) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 23);
  *(this + 23) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 22);
  *(this + 22) = 0;
  if (v8)
  {
    (*(*v8 + 16))(v8);
  }

  v9 = *(this + 21);
  *(this + 21) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(this + 20);
  *(this + 20) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  webrtc::CodecVendor::~CodecVendor((this + 64));
  v11 = *(this + 5);
  if (v11)
  {
    *(this + 6) = v11;
    operator delete(v11);
  }

  v12 = *(this + 1);
  if (v12)
  {
    if (atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
    {
      webrtc::ConnectionContext::~ConnectionContext(v12);
      MEMORY[0x2743DA540]();
    }
  }
}

char *webrtc::PeerConnectionFactory::SetOptions(char *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  *(result + 2) = *a2;
  *(result + 6) = v2;
  v3 = *(a2 + 16);
  result[36] = *(a2 + 20);
  *(result + 8) = v3;
  if (result + 16 != a2)
  {
    return std::vector<unsigned short>::__assign_with_size[abi:sn200100]<unsigned short *,unsigned short *>(result + 5, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 1);
  }

  return result;
}

void webrtc::PeerConnectionFactory::GetRtpSenderCapabilities(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (a2 == 1)
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
    if (&v28 != (a1 + 112))
    {
      std::vector<webrtc::Codec>::__assign_with_size[abi:sn200100]<webrtc::Codec*,webrtc::Codec*>(&v28, *(a1 + 112), *(a1 + 120), 0x84BDA12F684BDA13 * ((*(a1 + 120) - *(a1 + 112)) >> 3));
    }

    v10 = (*(**(*(a1 + 8) + 96) + 32))(*(*(a1 + 8) + 96));
    webrtc::GetDefaultEnabledRtpHeaderExtensions(v10, &__p);
    webrtc::ToRtpCapabilities(&v28, &__p, a3);
    v11 = __p;
    if (__p)
    {
      v12 = v27;
      v13 = __p;
      if (v27 != __p)
      {
        do
        {
          v14 = *(v12 - 9);
          v12 -= 4;
          if (v14 < 0)
          {
            operator delete(*v12);
          }
        }

        while (v12 != v11);
        v13 = __p;
      }

      v27 = v11;
      operator delete(v13);
    }

    v15 = v28;
    if (v28)
    {
      v16 = v28;
      if (v29 != v28)
      {
        v22 = v29 - 216;
        v23 = v29 - 216;
        v24 = (v29 - 216);
        do
        {
          v25 = *v24;
          v24 -= 27;
          (*v25)(v23);
          v22 -= 216;
          v21 = v23 == v15;
          v23 = v24;
        }

        while (!v21);
        goto LABEL_36;
      }

LABEL_37:
      v29 = v15;
      operator delete(v16);
    }
  }

  else if (a2)
  {
    *(a3 + 64) = 0;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  else
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
    if (&v28 != (a1 + 64))
    {
      std::vector<webrtc::Codec>::__assign_with_size[abi:sn200100]<webrtc::Codec*,webrtc::Codec*>(&v28, *(a1 + 64), *(a1 + 72), 0x84BDA12F684BDA13 * ((*(a1 + 72) - *(a1 + 64)) >> 3));
    }

    v5 = (*(**(*(a1 + 8) + 96) + 24))(*(*(a1 + 8) + 96));
    webrtc::GetDefaultEnabledRtpHeaderExtensions(v5, &__p);
    webrtc::ToRtpCapabilities(&v28, &__p, a3);
    v6 = __p;
    if (__p)
    {
      v7 = v27;
      v8 = __p;
      if (v27 != __p)
      {
        do
        {
          v9 = *(v7 - 9);
          v7 -= 4;
          if (v9 < 0)
          {
            operator delete(*v7);
          }
        }

        while (v7 != v6);
        v8 = __p;
      }

      v27 = v6;
      operator delete(v8);
    }

    v15 = v28;
    if (v28)
    {
      v16 = v28;
      if (v29 != v28)
      {
        v17 = v29 - 216;
        v18 = v29 - 216;
        v19 = (v29 - 216);
        do
        {
          v20 = *v19;
          v19 -= 27;
          (*v20)(v18);
          v17 -= 216;
          v21 = v18 == v15;
          v18 = v19;
        }

        while (!v21);
LABEL_36:
        v16 = v28;
        goto LABEL_37;
      }

      goto LABEL_37;
    }
  }
}

void webrtc::PeerConnectionFactory::GetRtpReceiverCapabilities(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (a2 == 1)
  {
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v10 = *(a1 + 136);
    v11 = *(a1 + 144);
    if (v11 != v10)
    {
      if (0x84BDA12F684BDA13 * ((v11 - v10) >> 3) < 0x12F684BDA12F685)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    v12 = (*(**(*(a1 + 8) + 96) + 32))(*(*(a1 + 8) + 96));
    webrtc::GetDefaultEnabledRtpHeaderExtensions(v12, &__p);
    webrtc::ToRtpCapabilities(&v30, &__p, a3);
    v13 = __p;
    if (__p)
    {
      v14 = v29;
      v15 = __p;
      if (v29 != __p)
      {
        do
        {
          v16 = *(v14 - 9);
          v14 -= 4;
          if (v16 < 0)
          {
            operator delete(*v14);
          }
        }

        while (v14 != v13);
        v15 = __p;
      }

      v29 = v13;
      operator delete(v15);
    }

    v17 = v30;
    if (v30)
    {
      v18 = v30;
      if (v31 != v30)
      {
        v24 = v31 - 216;
        v25 = v31 - 216;
        v26 = (v31 - 216);
        do
        {
          v27 = *v26;
          v26 -= 27;
          (*v27)(v25);
          v24 -= 216;
          v23 = v25 == v17;
          v25 = v26;
        }

        while (!v23);
        goto LABEL_37;
      }

LABEL_38:
      v31 = v17;
      operator delete(v18);
    }
  }

  else if (a2)
  {
    *(a3 + 64) = 0;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  else
  {
    v30 = 0;
    v31 = 0;
    v32 = 0;
    if (&v30 != (a1 + 88))
    {
      std::vector<webrtc::Codec>::__assign_with_size[abi:sn200100]<webrtc::Codec*,webrtc::Codec*>(&v30, *(a1 + 88), *(a1 + 96), 0x84BDA12F684BDA13 * ((*(a1 + 96) - *(a1 + 88)) >> 3));
    }

    v5 = (*(**(*(a1 + 8) + 96) + 24))(*(*(a1 + 8) + 96));
    webrtc::GetDefaultEnabledRtpHeaderExtensions(v5, &__p);
    webrtc::ToRtpCapabilities(&v30, &__p, a3);
    v6 = __p;
    if (__p)
    {
      v7 = v29;
      v8 = __p;
      if (v29 != __p)
      {
        do
        {
          v9 = *(v7 - 9);
          v7 -= 4;
          if (v9 < 0)
          {
            operator delete(*v7);
          }
        }

        while (v7 != v6);
        v8 = __p;
      }

      v29 = v6;
      operator delete(v8);
    }

    v17 = v30;
    if (v30)
    {
      v18 = v30;
      if (v31 != v30)
      {
        v19 = v31 - 216;
        v20 = v31 - 216;
        v21 = (v31 - 216);
        do
        {
          v22 = *v21;
          v21 -= 27;
          (*v22)(v20);
          v19 -= 216;
          v23 = v20 == v17;
          v20 = v21;
        }

        while (!v23);
LABEL_37:
        v18 = v30;
        goto LABEL_38;
      }

      goto LABEL_38;
    }
  }
}

uint64_t webrtc::PeerConnectionFactory::StartAecDump(webrtc::PeerConnectionFactory *this, __sFILE *a2, uint64_t a3)
{
  v5 = (*(**(*(this + 1) + 96) + 24))(*(*(this + 1) + 96));
  v8 = a2;
  result = (*(*v5 + 88))(v5, &v8, a3);
  if (v8)
  {
    v7 = result;
    fclose(v8);
    return v7;
  }

  return result;
}

uint64_t webrtc::PeerConnectionFactory::StopAecDump(webrtc::PeerConnectionFactory *this)
{
  v1 = *(*(*(**(*(this + 1) + 96) + 24))(*(*(this + 1) + 96)) + 96);

  return v1();
}

void webrtc::PeerConnectionFactory::CreatePeerConnectionOrError(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  if (!*(a2 + 232) && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v8, v9, v10, v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/peer_connection_factory.cc");
  }

  v15 = *(a2 + 108);
  v16 = *(a2 + 112);
  v17 = v15 == -1;
  if (v15 == -1)
  {
    v15 = 0;
  }

  LODWORD(v62) = v15;
  v18 = !v17;
  BYTE4(v62) = v18;
  v19 = v16 != -1;
  if (v16 == -1)
  {
    v16 = 0;
  }

  LODWORD(v63) = v16;
  BYTE4(v63) = v19;
  DWORD2(v63) = *(a2 + 116) == 1;
  BYTE12(v63) = *(a2 + 120);
  *&v64 = *(a2 + 324);
  BYTE8(v64) = *(a2 + 156);
  BYTE9(v64) = *(a2 + 159);
  BYTE12(v64) = 0;
  v65 = 0;
  v66 = 0;
  v67 = 0;
  v68 = 2;
  v20 = *(a2 + 176);
  v69 = *(a2 + 160);
  v70 = v20;
  v71 = *(a2 + 192);
  v21 = *(a2 + 224);
  v72 = *(a2 + 208);
  v73 = v21;
  v74 = 0;
  v75 = 0;
  webrtc::IceConfig::IsValid(&v62, &v76);
  if (v76)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v22, v23, v24, v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/peer_connection_factory.cc");
    }

    *a4 = v76;
    *(a4 + 8) = v77;
    *(a4 + 24) = v78;
    *(a4 + 32) = v79[0];
    *(a4 + 35) = *(v79 + 3);
    *(a4 + 40) = 0;
    *(a4 + 48) = 0;
  }

  else
  {
    v61[0] = 0;
    v61[1] = 0;
    v59 = 0;
    v60 = v61;
    __p = 0;
    v58 = 0;
    webrtc::ParseAndValidateIceServersFromConfiguration(a2, &v60, &__p, &v62);
    v29 = v62;
    v76 = v62;
    if (SHIBYTE(v78) < 0)
    {
      operator delete(v77);
      v29 = v76;
    }

    v77 = v63;
    v78 = v64;
    v79[0] = DWORD2(v64);
    *(v79 + 3) = *(&v64 + 11);
    if (!v29)
    {
      if (*a3)
      {
        v33 = *(a1 + 8);
        v34 = *(v33 + 56);
        v54 = v34;
        if (v34)
        {
          atomic_fetch_add_explicit(v34 + 2, 1u, memory_order_relaxed);
        }

        v35 = *(v33 + 80);
        v55 = *(v33 + 64);
        v56 = v35;
        v36 = a3[8];
        a3[8] = 0;
        if (v36)
        {
          *&v55 = v36;
          operator new();
        }

        if (*(a1 + 160))
        {
          v37 = *(*(a1 + 8) + 40);
          v62 = &v54;
          *&v63 = a1;
          (*(*v37 + 96))(v37, &v62, webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::PeerConnectionFactory::CreatePeerConnectionOrError(webrtc::PeerConnectionInterface::RTCConfiguration const&,webrtc::PeerConnectionDependencies)::$_0>, v53);
          v34 = v54;
        }

        v62 = v34;
        if (v34)
        {
          atomic_fetch_add_explicit(v34 + 2, 1u, memory_order_relaxed);
        }

        v63 = v55;
        v64 = v56;
        v38 = webrtc::EnvironmentFactory::CreateWithDefaults(&v62, v53);
        v39 = v62;
        if (v62 && atomic_fetch_add(v62 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v39 + 8))(v39, v38);
        }

        if (!a3[4])
        {
          operator new();
        }

        if (!a3[2])
        {
          operator new();
        }

        if (!a3[1])
        {
          operator new();
        }

        if (!a3[3])
        {
          operator new();
        }

        (*(*a3[1] + 32))(a3[1], *(a1 + 20), v38);
        (*(*a3[1] + 48))(a3[1], a2 + 336);
        v40 = a3[7];
        a3[7] = 0;
        v51 = 0;
        v52 = v40;
        v41 = *(*(a1 + 8) + 40);
        v62 = a1;
        *&v63 = v53;
        *(&v63 + 1) = a2;
        *&v64 = &v52;
        v80[0] = &v51;
        v80[1] = &v62;
        (*(*v41 + 96))(v41, v80, webrtc::FunctionView<void ()(void)>::CallVoidPtr<std::unique_ptr<webrtc::Call> webrtc::Thread::BlockingCall<webrtc::PeerConnectionFactory::CreatePeerConnectionOrError(webrtc::PeerConnectionInterface::RTCConfiguration const&,webrtc::PeerConnectionDependencies)::$_1,std::unique_ptr<webrtc::Call>,void>(webrtc::PeerConnectionFactory::CreatePeerConnectionOrError(webrtc::PeerConnectionInterface::RTCConfiguration const&,webrtc::PeerConnectionDependencies)::$_1 &&,webrtc::Location const&)::{lambda(void)#1}>, &v50);
        v42 = *(a1 + 8);
        if (v42)
        {
          atomic_fetch_add_explicit(v42, 1u, memory_order_relaxed);
        }

        v51 = 0;
        operator new();
      }

      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log("\r\t", v43, v44, v45, v46, v47, v48, v49, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/peer_connection_factory.cc");
      }

      operator new();
    }

    *a4 = v29;
    *(a4 + 8) = v77;
    *(a4 + 24) = v78;
    v77 = 0uLL;
    v78 = 0;
    *(a4 + 32) = v79[0];
    *(a4 + 35) = *(v79 + 3);
    *(a4 + 40) = 0;
    *(a4 + 48) = 0;
    v30 = __p;
    if (__p)
    {
      v31 = v58;
      v32 = __p;
      if (v58 != __p)
      {
        do
        {
          webrtc::RelayServerConfig::~RelayServerConfig(v31 - 20);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v58 = v30;
      operator delete(v32);
    }

    std::__tree<webrtc::SocketAddress>::destroy(&v60, v61[0]);
    if (SHIBYTE(v78) < 0)
    {
      operator delete(v77);
    }
  }
}

void webrtc::PeerConnectionFactory::CreateVideoTrack(uint64_t a1, void (****a2)(void), uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  v7 = v6;
  if (v6)
  {
    (**v6)(v6);
  }

  webrtc::VideoTrack::Create(a3, a4, &v7);
}

void webrtc::PeerConnectionFactory::CreateAudioTrack(uint64_t a1, uint64_t a2, void (***a3)(void))
{
  if (a3)
  {
    (**a3)(a3);
  }

  operator new();
}

uint64_t webrtc::PeerConnectionFactoryInterface::CreateVideoTrack(uint64_t a1, uint64_t *a2, void (***a3)(void))
{
  v9 = a3;
  if (a3)
  {
    v4 = a1;
    (**a3)(a3);
    a1 = v4;
  }

  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = a2[1];
  }

  (*(*a1 + 80))(a1, &v9, v6, v7);
  result = v9;
  if (v9)
  {
    return ((*v9)[1])(v9);
  }

  return result;
}

uint64_t webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::scoped_refptr<webrtc::PeerConnectionFactoryInterface> webrtc::Thread::BlockingCall<webrtc::CreateModularPeerConnectionFactory(webrtc::PeerConnectionFactoryDependencies)::$_0,webrtc::scoped_refptr<webrtc::PeerConnectionFactoryInterface>,void>(webrtc::CreateModularPeerConnectionFactory(webrtc::PeerConnectionFactoryDependencies)::$_0 &&,webrtc::Location const&)::{lambda(void)#1}>(uint64_t **a1)
{
  v2 = webrtc::PeerConnectionFactoryDependencies::PeerConnectionFactoryDependencies(v8, *a1[1]);
  webrtc::CreateModularPeerConnectionFactory(&v7, v8, v2);
  webrtc::PeerConnectionFactoryDependencies::~PeerConnectionFactoryDependencies(v8);
  v3 = *a1;
  v4 = v7;
  v7 = 0;
  v5 = *v3;
  *v3 = v4;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  result = v7;
  if (v7)
  {
    return (*(*v7 + 8))(v7);
  }

  return result;
}

BOOL webrtc::RefCountedObject<webrtc::PeerConnectionFactoryProxyWithInternal<webrtc::PeerConnectionFactoryInterface>>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 8, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

void *webrtc::RefCountedObject<webrtc::PeerConnectionFactoryProxyWithInternal<webrtc::PeerConnectionFactoryInterface>>::~RefCountedObject(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288298BA8;
  v14 = a1;
  v15 = webrtc::PeerConnectionFactoryProxyWithInternal<webrtc::PeerConnectionFactoryInterface>::DestroyInternal;
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
    v13 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionFactoryProxyWithInternal<webrtc::PeerConnectionFactoryInterface>,void>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
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

uint64_t webrtc::RefCountedObject<webrtc::PeerConnectionFactoryProxyWithInternal<webrtc::PeerConnectionFactoryInterface>>::~RefCountedObject(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288298BA8;
  v14 = a1;
  v15 = webrtc::PeerConnectionFactoryProxyWithInternal<webrtc::PeerConnectionFactoryInterface>::DestroyInternal;
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
    v13 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionFactoryProxyWithInternal<webrtc::PeerConnectionFactoryInterface>,void>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
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

  return MEMORY[0x2743DA540](a1, 0x10A1C40A28EC2F6);
}

uint64_t webrtc::PeerConnectionFactoryProxyWithInternal<webrtc::PeerConnectionFactoryInterface>::SetOptions(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v14 = *(a1 + 24);
  v15 = webrtc::PeerConnectionFactoryInterface::SetOptions;
  v16 = 0;
  v17 = a2;
  webrtc::Event::Event(&v18, 0, 0);
  v3 = *(a1 + 8);
  v4 = &unk_280905000;
  {
    v4 = &unk_280905000;
    if (v8)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v4[403] + 88)) == v3)
  {
    (v15)(v14 + (v16 >> 1), v17);
  }

  else
  {
    v11.n128_u64[0] = &v14;
    v12 = absl::internal_any_invocable::LocalManagerTrivial;
    v13 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionFactoryInterface,void,webrtc::PeerConnectionFactoryInterface::Options const&>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v3 + 8))(v3, &v11, &v10, &v9);
    v12(1, &v11, &v11);
    v5.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v6.var0 = 3000000;
    webrtc::Event::Wait(&v18, v5, v6);
  }

  pthread_mutex_destroy(&v18);
  return pthread_cond_destroy(&v19);
}

void webrtc::PeerConnectionFactoryProxyWithInternal<webrtc::PeerConnectionFactoryInterface>::CreatePeerConnectionOrError(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v30 = *MEMORY[0x277D85DE8];
  v18 = *(a1 + 24);
  v19 = webrtc::PeerConnectionFactoryInterface::CreatePeerConnectionOrError;
  v20 = 0;
  v21 = 10;
  v23[14] = 0;
  *v23 = 0;
  __p = 0uLL;
  *&v23[5] = 0;
  LOBYTE(v24) = 0;
  v25 = 0;
  v26 = a2;
  v27 = a3;
  webrtc::Event::Event(&v28, 0, 0);
  v6 = *(a1 + 8);
  v7 = &unk_280905000;
  {
    v7 = &unk_280905000;
    if (v12)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v7[403] + 88)) == v6)
  {
    webrtc::ReturnType<webrtc::RTCErrorOr<webrtc::scoped_refptr<webrtc::PeerConnectionInterface>>>::Invoke<webrtc::PeerConnectionFactoryInterface,webrtc::RTCErrorOr<webrtc::scoped_refptr<webrtc::PeerConnectionInterface>> (webrtc::PeerConnectionFactoryInterface::*)(webrtc::PeerConnectionInterface::RTCConfiguration const&,webrtc::PeerConnectionDependencies),webrtc::PeerConnectionInterface::RTCConfiguration const,webrtc::PeerConnectionDependencies>(&v21, v18, v19, v20, v26, v27);
  }

  else
  {
    v15.n128_u64[0] = &v18;
    v16 = absl::internal_any_invocable::LocalManagerTrivial;
    v17 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionFactoryInterface,webrtc::RTCErrorOr<webrtc::scoped_refptr<webrtc::PeerConnectionInterface>>,webrtc::PeerConnectionInterface::RTCConfiguration const&,webrtc::PeerConnectionDependencies>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v6 + 8))(v6, &v15, &v14, &v13);
    v16(1, &v15, &v15);
    v8.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v9.var0 = 3000000;
    webrtc::Event::Wait(&v28, v8, v9);
  }

  v10 = *&v23[8];
  *a4 = v21;
  *(a4 + 24) = *v23;
  *(a4 + 8) = __p;
  __p = 0uLL;
  *v23 = 0;
  *(a4 + 32) = v10;
  *(a4 + 35) = *&v23[11];
  *(a4 + 40) = 0;
  *(a4 + 48) = 0;
  if (v25 == 1)
  {
    v11 = v24;
    v24 = 0;
    *(a4 + 40) = v11;
    *(a4 + 48) = 1;
  }

  pthread_mutex_destroy(&v28);
  pthread_cond_destroy(&v29);
  if (v25 == 1 && v24)
  {
    (*(*v24 + 8))(v24);
  }

  if ((v23[7] & 0x80000000) != 0)
  {
    operator delete(__p);
  }
}

void webrtc::PeerConnectionFactoryProxyWithInternal<webrtc::PeerConnectionFactoryInterface>::GetRtpSenderCapabilities(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v16 = a2;
  v17[0] = *(a1 + 24);
  v17[1] = webrtc::PeerConnectionFactoryInterface::GetRtpSenderCapabilities;
  *v18 = 0u;
  v19 = 0u;
  *v20 = 0u;
  *__p = 0u;
  v22 = 0u;
  v23 = &v16;
  webrtc::Event::Event(&v24, 0, 0);
  webrtc::ConstMethodCall<webrtc::PeerConnectionFactoryInterface,webrtc::RtpCapabilities,webrtc::MediaType>::Marshal(a3, v17, *(a1 + 8));
  pthread_mutex_destroy(&v24);
  pthread_cond_destroy(&v25);
  if (__p[1])
  {
    *&v22 = __p[1];
    operator delete(__p[1]);
  }

  v5 = v20[0];
  if (v20[0])
  {
    v6 = v20[1];
    v7 = v20[0];
    if (v20[1] != v20[0])
    {
      do
      {
        v8 = *(v6 - 17);
        v6 -= 5;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = v20[0];
    }

    v20[1] = v5;
    operator delete(v7);
  }

  v9 = v18[1];
  if (v18[1])
  {
    v10 = v18[1];
    if (v19 != v18[1])
    {
      v11 = v19 - 160;
      v12 = (v19 - 160);
      v13 = (v19 - 160);
      do
      {
        v14 = *v13;
        v13 -= 20;
        (*v14)(v12);
        v11 -= 160;
        v15 = v12 == v9;
        v12 = v13;
      }

      while (!v15);
      v10 = v18[1];
    }

    *&v19 = v9;
    operator delete(v10);
  }
}

void webrtc::PeerConnectionFactoryProxyWithInternal<webrtc::PeerConnectionFactoryInterface>::GetRtpReceiverCapabilities(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v16 = a2;
  v17[0] = *(a1 + 24);
  v17[1] = webrtc::PeerConnectionFactoryInterface::GetRtpReceiverCapabilities;
  *v18 = 0u;
  v19 = 0u;
  *v20 = 0u;
  *__p = 0u;
  v22 = 0u;
  v23 = &v16;
  webrtc::Event::Event(&v24, 0, 0);
  webrtc::ConstMethodCall<webrtc::PeerConnectionFactoryInterface,webrtc::RtpCapabilities,webrtc::MediaType>::Marshal(a3, v17, *(a1 + 8));
  pthread_mutex_destroy(&v24);
  pthread_cond_destroy(&v25);
  if (__p[1])
  {
    *&v22 = __p[1];
    operator delete(__p[1]);
  }

  v5 = v20[0];
  if (v20[0])
  {
    v6 = v20[1];
    v7 = v20[0];
    if (v20[1] != v20[0])
    {
      do
      {
        v8 = *(v6 - 17);
        v6 -= 5;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = v20[0];
    }

    v20[1] = v5;
    operator delete(v7);
  }

  v9 = v18[1];
  if (v18[1])
  {
    v10 = v18[1];
    if (v19 != v18[1])
    {
      v11 = v19 - 160;
      v12 = (v19 - 160);
      v13 = (v19 - 160);
      do
      {
        v14 = *v13;
        v13 -= 20;
        (*v14)(v12);
        v11 -= 160;
        v15 = v12 == v9;
        v12 = v13;
      }

      while (!v15);
      v10 = v18[1];
    }

    *&v19 = v9;
    operator delete(v10);
  }
}

uint64_t webrtc::PeerConnectionFactoryProxyWithInternal<webrtc::PeerConnectionFactoryInterface>::CreateLocalMediaStream@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v19 = *(a1 + 24);
  v20 = webrtc::PeerConnectionFactoryInterface::CreateLocalMediaStream;
  v21 = 0;
  v22 = 0;
  v23 = a2;
  webrtc::Event::Event(&v24, 0, 0);
  v5 = *(a1 + 8);
  v6 = &unk_280905000;
  {
    v6 = &unk_280905000;
    if (v13)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v6[403] + 88)) == v5)
  {
    (v20)(&v16, v19 + (v21 >> 1), v23);
    v11 = v16.n128_u64[0];
    v16.n128_u64[0] = 0;
    v12 = v22;
    v22 = v11;
    if (v12)
    {
      (*(*v12 + 8))(v12);
      if (v16.n128_u64[0])
      {
        (*(*v16.n128_u64[0] + 8))(v16.n128_u64[0]);
      }
    }
  }

  else
  {
    v16.n128_u64[0] = &v19;
    v17 = absl::internal_any_invocable::LocalManagerTrivial;
    v18 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionFactoryInterface,webrtc::scoped_refptr<webrtc::MediaStreamInterface>,std::string const&>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v5 + 8))(v5, &v16, &v15, &v14);
    v17(1, &v16, &v16);
    v7.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v8.var0 = 3000000;
    webrtc::Event::Wait(&v24, v7, v8);
  }

  v9 = v22;
  v22 = 0;
  *a3 = v9;
  pthread_mutex_destroy(&v24);
  pthread_cond_destroy(&v25);
  result = v22;
  if (v22)
  {
    return (*(*v22 + 8))(v22);
  }

  return result;
}

uint64_t webrtc::PeerConnectionFactoryProxyWithInternal<webrtc::PeerConnectionFactoryInterface>::CreateAudioSource@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v19 = *(a1 + 24);
  v20 = webrtc::PeerConnectionFactoryInterface::CreateAudioSource;
  v21 = 0;
  v22 = 0;
  v23 = a2;
  webrtc::Event::Event(&v24, 0, 0);
  v5 = *(a1 + 8);
  v6 = &unk_280905000;
  {
    v6 = &unk_280905000;
    if (v13)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v6[403] + 88)) == v5)
  {
    (v20)(&v16, v19 + (v21 >> 1), v23);
    v11 = v16.n128_u64[0];
    v16.n128_u64[0] = 0;
    v12 = v22;
    v22 = v11;
    if (v12)
    {
      (*(*v12 + 8))(v12);
      if (v16.n128_u64[0])
      {
        (*(*v16.n128_u64[0] + 8))(v16.n128_u64[0]);
      }
    }
  }

  else
  {
    v16.n128_u64[0] = &v19;
    v17 = absl::internal_any_invocable::LocalManagerTrivial;
    v18 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionFactoryInterface,webrtc::scoped_refptr<webrtc::AudioSourceInterface>,webrtc::AudioOptions const&>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v5 + 8))(v5, &v16, &v15, &v14);
    v17(1, &v16, &v16);
    v7.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v8.var0 = 3000000;
    webrtc::Event::Wait(&v24, v7, v8);
  }

  v9 = v22;
  v22 = 0;
  *a3 = v9;
  pthread_mutex_destroy(&v24);
  pthread_cond_destroy(&v25);
  result = v22;
  if (v22)
  {
    return (*(*v22 + 8))(v22);
  }

  return result;
}

uint64_t webrtc::PeerConnectionFactoryProxyWithInternal<webrtc::PeerConnectionFactoryInterface>::CreateVideoTrack@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v34 = *MEMORY[0x277D85DE8];
  v20[0] = a3;
  v20[1] = a4;
  v26 = *(a1 + 24);
  v27 = webrtc::PeerConnectionFactoryInterface::CreateVideoTrack;
  v28 = 0;
  v29 = 0;
  v30 = a2;
  v31 = v20;
  webrtc::Event::Event(&v32, 0, 0);
  v7 = *(a1 + 8);
  v8 = &unk_280905000;
  {
    v8 = &unk_280905000;
    if (v19)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v8[403] + 88)) == v7)
  {
    v11 = v27;
    v12 = v31;
    v13 = (v26 + (v28 >> 1));
    if (v28)
    {
      v11 = *(*v13 + v27);
    }

    v14 = *v30;
    *v30 = 0;
    v25 = v14;
    (v11)(&v22, v13, &v25, *v12, v12[1]);
    v15 = v22.n128_u64[0];
    v22.n128_u64[0] = 0;
    v16 = v29;
    v29 = v15;
    if (v16)
    {
      (*(*v16 + 8))(v16);
      if (v22.n128_u64[0])
      {
        (*(*v22.n128_u64[0] + 8))(v22.n128_u64[0]);
      }
    }

    if (v25)
    {
      (*(*v25 + 8))(v25);
    }
  }

  else
  {
    v22.n128_u64[0] = &v26;
    v23 = absl::internal_any_invocable::LocalManagerTrivial;
    v24 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionFactoryInterface,webrtc::scoped_refptr<webrtc::VideoTrackInterface>,webrtc::scoped_refptr<webrtc::VideoTrackSourceInterface>,std::string_view>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v7 + 8))(v7, &v22, &v25, &v21);
    v23(1, &v22, &v22);
    v9.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v10.var0 = 3000000;
    webrtc::Event::Wait(&v32, v9, v10);
  }

  v17 = v29;
  v29 = 0;
  *a5 = v17;
  pthread_mutex_destroy(&v32);
  pthread_cond_destroy(&v33);
  result = v29;
  if (v29)
  {
    return (*(*v29 + 8))(v29);
  }

  return result;
}

uint64_t webrtc::PeerConnectionFactoryProxyWithInternal<webrtc::PeerConnectionFactoryInterface>::CreateAudioTrack@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v31 = *MEMORY[0x277D85DE8];
  v17 = a3;
  v23 = *(a1 + 24);
  v24 = webrtc::PeerConnectionFactoryInterface::CreateAudioTrack;
  v25 = 0;
  v26 = 0;
  v27 = a2;
  v28 = &v17;
  webrtc::Event::Event(&v29, 0, 0);
  v6 = *(a1 + 8);
  v7 = &unk_280905000;
  {
    v7 = &unk_280905000;
    if (v16)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v7[403] + 88)) == v6)
  {
    v12 = v24;
    v13 = (v23 + (v25 >> 1));
    if (v25)
    {
      v12 = *(*v13 + v24);
    }

    (v12)(&v20, v13, v27, *v28);
    v14 = v20.n128_u64[0];
    v20.n128_u64[0] = 0;
    v15 = v26;
    v26 = v14;
    if (v15)
    {
      (*(*v15 + 8))(v15);
      if (v20.n128_u64[0])
      {
        (*(*v20.n128_u64[0] + 8))(v20.n128_u64[0]);
      }
    }
  }

  else
  {
    v20.n128_u64[0] = &v23;
    v21 = absl::internal_any_invocable::LocalManagerTrivial;
    v22 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionFactoryInterface,webrtc::scoped_refptr<webrtc::AudioTrackInterface>,std::string const&,webrtc::AudioSourceInterface *>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v6 + 8))(v6, &v20, &v19, &v18);
    v21(1, &v20, &v20);
    v8.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v9.var0 = 3000000;
    webrtc::Event::Wait(&v29, v8, v9);
  }

  v10 = v26;
  v26 = 0;
  *a4 = v10;
  pthread_mutex_destroy(&v29);
  pthread_cond_destroy(&v30);
  result = v26;
  if (v26)
  {
    return (*(*v26 + 8))(v26);
  }

  return result;
}

uint64_t webrtc::PeerConnectionFactoryProxyWithInternal<webrtc::PeerConnectionFactoryInterface>::StartAecDump(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a2;
  v20 = *(a1 + 24);
  v21 = webrtc::PeerConnectionFactoryInterface::StartAecDump;
  v22 = 0;
  v24 = &v14;
  v25 = &v13;
  webrtc::Event::Event(&v26, 0, 0);
  v4 = *(a1 + 16);
  v5 = &unk_280905000;
  {
    v5 = &unk_280905000;
    if (v12)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v5[403] + 88)) == v4)
  {
    v9 = v21;
    v10 = (v20 + (v22 >> 1));
    if (v22)
    {
      v9 = *(*v10 + v21);
    }

    v8 = (v9)(v10, *v24, *v25);
    v23 = v8;
  }

  else
  {
    v17.n128_u64[0] = &v20;
    v18 = absl::internal_any_invocable::LocalManagerTrivial;
    v19 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionFactoryInterface,BOOL,__sFILE *,long long>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v4 + 8))(v4, &v17, &v16, &v15);
    v18(1, &v17, &v17);
    v6.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v7.var0 = 3000000;
    webrtc::Event::Wait(&v26, v6, v7);
    v8 = v23;
  }

  pthread_mutex_destroy(&v26);
  pthread_cond_destroy(&v27);
  return v8 & 1;
}

uint64_t webrtc::PeerConnectionFactoryProxyWithInternal<webrtc::PeerConnectionFactoryInterface>::StopAecDump(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = *(a1 + 24);
  v14 = webrtc::PeerConnectionFactoryInterface::StopAecDump;
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
    v12 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionFactoryInterface,void>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v2 + 8))(v2, &v10, &v9, &v8);
    v11(1, &v10, &v10);
    v4.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v5.var0 = 3000000;
    webrtc::Event::Wait(&v16, v4, v5);
  }

  pthread_mutex_destroy(&v16);
  return pthread_cond_destroy(&v17);
}

uint64_t webrtc::PeerConnectionFactoryProxyWithInternal<webrtc::PeerConnectionFactoryInterface>::DestroyInternal(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(a1 + 24) = 0;
  return result;
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionFactoryProxyWithInternal<webrtc::PeerConnectionFactoryInterface>,void>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
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

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionFactoryInterface,void,webrtc::PeerConnectionFactoryInterface::Options const&>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
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

  v2(v5, v4);
  pthread_mutex_lock((v1 + 40));
  *(v1 + 153) = 1;
  pthread_cond_broadcast((v1 + 104));

  return pthread_mutex_unlock((v1 + 40));
}

void webrtc::ReturnType<webrtc::RTCErrorOr<webrtc::scoped_refptr<webrtc::PeerConnectionInterface>>>::Invoke<webrtc::PeerConnectionFactoryInterface,webrtc::RTCErrorOr<webrtc::scoped_refptr<webrtc::PeerConnectionInterface>> (webrtc::PeerConnectionFactoryInterface::*)(webrtc::PeerConnectionInterface::RTCConfiguration const&,webrtc::PeerConnectionDependencies),webrtc::PeerConnectionInterface::RTCConfiguration const,webrtc::PeerConnectionDependencies>(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, void *, uint64_t, _OWORD *), uint64_t a4, uint64_t a5, __int128 *a6)
{
  v6 = a3;
  v8 = (a2 + (a4 >> 1));
  if (a4)
  {
    v6 = *(*v8 + a3);
  }

  v9 = *a6;
  v10 = a6[1];
  *(a6 + 8) = 0u;
  v18[0] = v9;
  v18[1] = v10;
  v11 = a6[2];
  v12 = a6[3];
  *(a6 + 24) = 0u;
  *(a6 + 40) = 0u;
  v18[2] = v11;
  v18[3] = v12;
  v13 = *(a6 + 8);
  *(a6 + 56) = 0u;
  v19 = v13;
  v6(&v20, v8, a5, v18);
  *a1 = v20;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  *(a1 + 8) = *__p;
  *(a1 + 24) = v22;
  HIBYTE(v22) = 0;
  LOBYTE(__p[0]) = 0;
  *(a1 + 32) = v23[0];
  *(a1 + 35) = *(v23 + 3);
  if (*(a1 + 48) == v25)
  {
    if (*(a1 + 48))
    {
      v14 = v24;
      v24 = 0;
      v15 = *(a1 + 40);
      *(a1 + 40) = v14;
      if (v15)
      {
        (*(*v15 + 8))(v15);
        if (v25 != 1)
        {
          goto LABEL_18;
        }

        goto LABEL_15;
      }
    }
  }

  else
  {
    if (!*(a1 + 48))
    {
      v17 = v24;
      v24 = 0;
      *(a1 + 40) = v17;
      *(a1 + 48) = 1;
      if (v25 != 1)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    v16 = *(a1 + 40);
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    *(a1 + 48) = 0;
  }

  if (v25 != 1)
  {
    goto LABEL_18;
  }

LABEL_15:
  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

LABEL_18:
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[0]);
  }

  webrtc::PeerConnectionDependencies::~PeerConnectionDependencies(v18);
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionFactoryInterface,webrtc::RTCErrorOr<webrtc::scoped_refptr<webrtc::PeerConnectionInterface>>,webrtc::PeerConnectionInterface::RTCConfiguration const&,webrtc::PeerConnectionDependencies>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t **a1)
{
  v1 = *a1;
  webrtc::ReturnType<webrtc::RTCErrorOr<webrtc::scoped_refptr<webrtc::PeerConnectionInterface>>>::Invoke<webrtc::PeerConnectionFactoryInterface,webrtc::RTCErrorOr<webrtc::scoped_refptr<webrtc::PeerConnectionInterface>> (webrtc::PeerConnectionFactoryInterface::*)(webrtc::PeerConnectionInterface::RTCConfiguration const&,webrtc::PeerConnectionDependencies),webrtc::PeerConnectionInterface::RTCConfiguration const,webrtc::PeerConnectionDependencies>((*a1 + 3), **a1, (*a1)[1], (*a1)[2], (*a1)[10], (*a1)[11]);
  pthread_mutex_lock((v1 + 12));
  *(v1 + 209) = 1;
  pthread_cond_broadcast((v1 + 20));

  return pthread_mutex_unlock((v1 + 12));
}

void *webrtc::ConstMethodCall<webrtc::PeerConnectionFactoryInterface,webrtc::RtpCapabilities,webrtc::MediaType>::Marshal(void *a1, unint64_t a2, void *a3)
{
  {
    operator new();
  }

  if (pthread_getspecific(*(webrtc::ThreadManager::Instance(void)::thread_manager + 88)) == a3)
  {
    webrtc::ReturnType<webrtc::RtpCapabilities>::Invoke<webrtc::PeerConnectionFactoryInterface const,webrtc::RtpCapabilities (webrtc::PeerConnectionFactoryInterface::*)(webrtc::MediaType)const,webrtc::MediaType>(a2 + 24, *a2, *(a2 + 8), *(a2 + 16), **(a2 + 96));
  }

  else
  {
    v15.n128_u64[0] = a2;
    v16 = absl::internal_any_invocable::LocalManagerTrivial;
    v17 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::PeerConnectionFactoryInterface,webrtc::RtpCapabilities,webrtc::MediaType>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*a3 + 8))(a3, &v15, &v14, &v13);
    v16(1, &v15, &v15);
    v6.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v7.var0 = 3000000;
    webrtc::Event::Wait((a2 + 104), v6, v7);
  }

  result = std::vector<webrtc::RtpCodecCapability>::vector[abi:sn200100](a1, (a2 + 24));
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  if (v10 != v9)
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((v10 - v9) >> 3) < 0x666666666666667)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  v12 = *(a2 + 72);
  v11 = *(a2 + 80);
  if (v11 != v12)
  {
    if (((v11 - v12) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  return result;
}

void webrtc::ReturnType<webrtc::RtpCapabilities>::Invoke<webrtc::PeerConnectionFactoryInterface const,webrtc::RtpCapabilities (webrtc::PeerConnectionFactoryInterface::*)(webrtc::MediaType)const,webrtc::MediaType>(uint64_t a1, uint64_t a2, void (*a3)(void **__return_ptr, void *, uint64_t), uint64_t a4, uint64_t a5)
{
  v6 = (a2 + (a4 >> 1));
  if (a4)
  {
    (*(*v6 + a3))(&v63);
    if (&v63 == a1)
    {
      goto LABEL_87;
    }
  }

  else
  {
    a3(&v63, v6, a5);
    if (&v63 == a1)
    {
      goto LABEL_87;
    }
  }

  std::vector<webrtc::RtpCodecCapability>::__assign_with_size[abi:sn200100]<webrtc::RtpCodecCapability*,webrtc::RtpCodecCapability*>(a1, v63, v64, 0xCCCCCCCCCCCCCCCDLL * ((v64 - v63) >> 5));
  v8 = (a1 + 24);
  v7 = *(a1 + 24);
  v10 = v65;
  v9 = v66;
  v11 = v66 - v65;
  v12 = *(a1 + 40);
  if (v12 - v7 < (v66 - v65))
  {
    v13 = 0xCCCCCCCCCCCCCCCDLL * (v11 >> 3);
    if (v7)
    {
      v14 = *(a1 + 32);
      v15 = *(a1 + 24);
      if (v14 != v7)
      {
        do
        {
          v16 = *(v14 - 17);
          v14 -= 5;
          if (v16 < 0)
          {
            operator delete(*v14);
          }
        }

        while (v14 != v7);
        v15 = *v8;
      }

      *(a1 + 32) = v7;
      operator delete(v15);
      v12 = 0;
      *v8 = 0;
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
    }

    if (v13 <= 0x666666666666666)
    {
      v30 = 0xCCCCCCCCCCCCCCCDLL * (v12 >> 3);
      v31 = 2 * v30;
      if (2 * v30 <= v13)
      {
        v31 = v13;
      }

      if (v30 >= 0x333333333333333)
      {
        v32 = 0x666666666666666;
      }

      else
      {
        v32 = v31;
      }

      if (v32 <= 0x666666666666666)
      {
        operator new();
      }
    }

    goto LABEL_106;
  }

  v17 = *(a1 + 32);
  v18 = v17 - v7;
  if (v17 - v7 >= v11)
  {
    if (v65 != v66)
    {
      do
      {
        if (v10 != v7)
        {
          v28 = v10[23];
          if (*(v7 + 23) < 0)
          {
            if (v28 >= 0)
            {
              v26 = v10;
            }

            else
            {
              v26 = *v10;
            }

            if (v28 >= 0)
            {
              v27 = v10[23];
            }

            else
            {
              v27 = *(v10 + 1);
            }

            std::string::__assign_no_alias<false>(v7, v26, v27);
          }

          else if ((v10[23] & 0x80) != 0)
          {
            std::string::__assign_no_alias<true>(v7, *v10, *(v10 + 1));
          }

          else
          {
            v29 = *v10;
            *(v7 + 16) = *(v10 + 2);
            *v7 = v29;
          }
        }

        *(v7 + 24) = *(v10 + 24);
        v10 += 40;
        v7 += 40;
      }

      while (v10 != v9);
      v17 = *(a1 + 32);
    }

    while (v17 != v7)
    {
      v36 = *(v17 - 17);
      v17 -= 5;
      if (v36 < 0)
      {
        operator delete(*v17);
      }
    }

    *(a1 + 32) = v7;
  }

  else
  {
    if (v17 != v7)
    {
      v19 = 0;
      do
      {
        v22 = &v19[v7];
        v23 = &v19[v10];
        if (v10 != v7)
        {
          v24 = v23[23];
          if (v22[23] < 0)
          {
            if (v24 >= 0)
            {
              v20 = &v19[v10];
            }

            else
            {
              v20 = *&v19[v10];
            }

            if (v24 >= 0)
            {
              v21 = v23[23];
            }

            else
            {
              v21 = *&v19[v10 + 8];
            }

            std::string::__assign_no_alias<false>(&v19[v7], v20, v21);
          }

          else if ((v23[23] & 0x80) != 0)
          {
            std::string::__assign_no_alias<true>(&v19[v7], *&v19[v10], *&v19[v10 + 8]);
          }

          else
          {
            v25 = *v23;
            *(v22 + 2) = *(v23 + 2);
            *v22 = v25;
          }
        }

        *(v22 + 24) = *(v23 + 24);
        v19 += 40;
      }

      while (v18 != v19);
      v17 = *(a1 + 32);
      v10 = &v18[v10];
    }

    v33 = v17;
    if (v10 != v9)
    {
      v33 = v17;
      v34 = v17;
      while (v34)
      {
        if (v10[23] < 0)
        {
          std::string::__init_copy_ctor_external(v34, *v10, *(v10 + 1));
        }

        else
        {
          v35 = *v10;
          v34[2] = *(v10 + 2);
          *v34 = v35;
        }

        *(v34 + 3) = *(v10 + 24);
        v10 += 40;
        v34 += 5;
        v33 += 5;
        if (v10 == v9)
        {
          goto LABEL_61;
        }
      }

      __break(1u);
LABEL_106:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

LABEL_61:
    *(a1 + 32) = v33;
  }

  v37 = *(a1 + 48);
  v38 = __p;
  v39 = v68;
  v40 = v68 - __p;
  v41 = *(a1 + 64);
  if (v41 - v37 < (v68 - __p))
  {
    v42 = v40 >> 2;
    if (v37)
    {
      *(a1 + 56) = v37;
      operator delete(v37);
      v41 = 0;
      *(a1 + 48) = 0;
      *(a1 + 56) = 0;
      *(a1 + 64) = 0;
    }

    if (!(v42 >> 62))
    {
      v43 = v41 >> 1;
      if (v41 >> 1 <= v42)
      {
        v43 = v40 >> 2;
      }

      v44 = v41 >= 0x7FFFFFFFFFFFFFFCLL;
      v45 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v44)
      {
        v45 = v43;
      }

      if (!(v45 >> 62))
      {
        operator new();
      }
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v46 = *(a1 + 56);
  v47 = v46 - v37;
  if (v46 - v37 >= v40)
  {
    if (v68 != __p)
    {
      v51 = *(a1 + 48);
      memmove(v37, __p, v68 - __p);
      v37 = v51;
    }

    v50 = &v37[v40];
  }

  else
  {
    if (v46 != v37)
    {
      memmove(v37, __p, v46 - v37);
      v46 = *(a1 + 56);
    }

    v48 = &v38[v47];
    v49 = v39 - &v38[v47];
    if (v49)
    {
      memmove(v46, v48, v49);
    }

    v50 = &v46[v49];
  }

  *(a1 + 56) = v50;
LABEL_87:
  if (__p)
  {
    v68 = __p;
    operator delete(__p);
  }

  v52 = v65;
  if (v65)
  {
    v53 = v66;
    v54 = v65;
    if (v66 != v65)
    {
      do
      {
        v55 = *(v53 - 17);
        v53 -= 5;
        if (v55 < 0)
        {
          operator delete(*v53);
        }
      }

      while (v53 != v52);
      v54 = v65;
    }

    v66 = v52;
    operator delete(v54);
  }

  v56 = v63;
  if (v63)
  {
    v57 = v63;
    if (v64 != v63)
    {
      v58 = v64 - 160;
      v59 = v64 - 160;
      v60 = (v64 - 160);
      do
      {
        v61 = *v60;
        v60 -= 20;
        (*v61)(v59);
        v58 -= 160;
        v62 = v59 == v56;
        v59 = v60;
      }

      while (!v62);
      v57 = v63;
    }

    v64 = v56;
    operator delete(v57);
  }
}

void std::vector<webrtc::RtpCodecCapability>::__assign_with_size[abi:sn200100]<webrtc::RtpCodecCapability*,webrtc::RtpCodecCapability*>(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((v7 - *a1) >> 5) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v8)
      {
        v12 = v10 - 160;
        v13 = (v10 - 160);
        v14 = (v10 - 160);
        do
        {
          v15 = *v14;
          v14 -= 20;
          (*v15)(v13);
          v12 -= 160;
          v16 = v13 == v8;
          v13 = v14;
        }

        while (!v16);
        v11 = *a1;
      }

      a1[1] = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0x199999999999999)
    {
      v17 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 5);
      v18 = 2 * v17;
      if (2 * v17 <= a4)
      {
        v18 = a4;
      }

      if (v17 >= 0xCCCCCCCCCCCCCCLL)
      {
        v19 = 0x199999999999999;
      }

      else
      {
        v19 = v18;
      }

      if (v19 <= 0x199999999999999)
      {
        operator new();
      }
    }

    goto LABEL_41;
  }

  v20 = a1[1];
  v21 = v20 - v8;
  if (0xCCCCCCCCCCCCCCCDLL * ((v20 - v8) >> 5) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        webrtc::RtpCodecCapability::operator=(v8, v5);
        v5 += 160;
        v8 += 160;
      }

      while (v5 != a3);
      v20 = a1[1];
    }

    if (v20 != v8)
    {
      v32 = v20 - 160;
      v33 = (v20 - 160);
      v34 = (v20 - 160);
      do
      {
        v35 = *v34;
        v34 -= 20;
        (*v35)(v33);
        v32 -= 160;
        v16 = v33 == v8;
        v33 = v34;
      }

      while (!v16);
    }

    a1[1] = v8;
  }

  else
  {
    if (v20 != v8)
    {
      v22 = a2 + v21;
      do
      {
        webrtc::RtpCodecCapability::operator=(v8, v5);
        v5 += 160;
        v8 += 160;
        v21 -= 160;
      }

      while (v21);
      v20 = a1[1];
      v5 = v22;
    }

    v23 = v20;
    if (v5 != a3)
    {
      v24 = 0;
      while (v20 + v24)
      {
        webrtc::RtpCodec::RtpCodec((v20 + v24), (v5 + v24));
        v25 = (v20 + v24);
        *v25 = &unk_28829C098;
        v26 = *(v5 + v24 + 104);
        v25[14] = 0;
        v27 = (v20 + v24 + 112);
        *(v20 + v24 + 104) = v26;
        v28 = *(v5 + v24 + 112);
        if (v28 >= 2)
        {
          if (v28)
          {
            absl::inlined_vector_internal::Storage<webrtc::ScalabilityMode,34ul,std::allocator<webrtc::ScalabilityMode>>::InitFrom(v27, (v5 + v24 + 112));
          }

          else
          {
            *v27 = v28;
            v29 = v20 + v24;
            v30 = *(v5 + v24 + 120);
            v31 = *(v5 + v24 + 136);
            *(v29 + 152) = *(v5 + v24 + 152);
            *(v29 + 136) = v31;
            *(v29 + 120) = v30;
          }
        }

        v24 += 160;
        if (v5 + v24 == a3)
        {
          v23 = v20 + v24;
          goto LABEL_39;
        }
      }

      __break(1u);
LABEL_41:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

LABEL_39:
    a1[1] = v23;
  }
}

void webrtc::RtpCodecCapability::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    v6 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v6;
    v7 = *(a2 + 104);
    *(a1 + 108) = *(a2 + 108);
    *(a1 + 104) = v7;
    return;
  }

  v4 = *(a2 + 31);
  if (*(a1 + 31) < 0)
  {
    if (v4 >= 0)
    {
      v8 = (a2 + 8);
    }

    else
    {
      v8 = *(a2 + 8);
    }

    if (v4 >= 0)
    {
      v9 = *(a2 + 31);
    }

    else
    {
      v9 = *(a2 + 16);
    }

    std::string::__assign_no_alias<false>((a1 + 8), v8, v9);
  }

  else if ((*(a2 + 31) & 0x80) != 0)
  {
    std::string::__assign_no_alias<true>((a1 + 8), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v5 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v5;
  }

  v10 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v10;
  std::vector<webrtc::RtcpFeedback>::__assign_with_size[abi:sn200100]<webrtc::RtcpFeedback*,webrtc::RtcpFeedback*>(a1 + 56, *(a2 + 56), *(a2 + 64), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 64) - *(a2 + 56)) >> 2));
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>(a1 + 80, *(a2 + 80), (a2 + 88));
  v11 = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 104) = v11;
  v14 = *(a2 + 120);
  v13 = a2 + 120;
  v12 = v14;
  v15 = *(v13 - 8);
  if (v15)
  {
    v16 = v12;
  }

  else
  {
    v16 = v13;
  }

  v17 = v15 >> 1;
  v18 = *(a1 + 112);
  if ((v18 & 1) == 0)
  {
    v19 = a1 + 120;
    if (v17 <= 0x22)
    {
      goto LABEL_19;
    }

LABEL_35:
    operator new();
  }

  v19 = *(a1 + 120);
  if (*(a1 + 128) < v17)
  {
    goto LABEL_35;
  }

LABEL_19:
  v20 = v18 >> 1;
  v21 = v17 - (v18 >> 1);
  if (v17 < v18 >> 1)
  {
    v21 = 0;
  }

  if (v20 >= v17)
  {
    v22 = v15 >> 1;
  }

  else
  {
    v22 = v18 >> 1;
  }

  if (v22)
  {
    v23 = 0;
    if (v22 < 0x20)
    {
      goto LABEL_30;
    }

    if ((v19 - v16) < 0x20)
    {
      goto LABEL_30;
    }

    v23 = v22 & 0x7FFFFFFFFFFFFFE0;
    v24 = (v16 + (v22 & 0x7FFFFFFFFFFFFFE0));
    v25 = (v16 + 16);
    v26 = (v19 + 16);
    v27 = v22 & 0x7FFFFFFFFFFFFFE0;
    do
    {
      v28 = *v25;
      *(v26 - 1) = *(v25 - 1);
      *v26 = v28;
      v25 += 2;
      v26 += 2;
      v27 -= 32;
    }

    while (v27);
    v16 += v22 & 0x7FFFFFFFFFFFFFE0;
    if (v22 != v23)
    {
LABEL_30:
      v29 = v22 - v23;
      v30 = (v19 + v23);
      v24 = v16;
      do
      {
        v31 = *v24++;
        *v30++ = v31;
        --v29;
      }

      while (v29);
    }

    if (v20 >= v17)
    {
      goto LABEL_55;
    }
  }

  else
  {
    v24 = v16;
    if (v20 >= v17)
    {
LABEL_55:
      *(a1 + 112) = v15 & 0xFFFFFFFFFFFFFFFELL | v18 & 1;
      return;
    }
  }

  if (v19)
  {
    v32 = v19 + v20;
    v33 = v21;
    v34 = v24;
    v35 = 0;
    if (v21 < 8 || (v32 - v24) < 0x20)
    {
      v36 = v24;
    }

    else
    {
      if (v21 < 0x20)
      {
        v35 = 0;
        goto LABEL_47;
      }

      v35 = v21 & 0xFFFFFFFFFFFFFFE0;
      v37 = (v24 + 16);
      v38 = (v32 + 16);
      v39 = v33 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v40 = *v37;
        *(v38 - 1) = *(v37 - 1);
        *v38 = v40;
        v37 += 2;
        v38 += 2;
        v39 -= 32;
      }

      while (v39);
      if (v33 == v35)
      {
        goto LABEL_54;
      }

      if ((v33 & 0x18) != 0)
      {
LABEL_47:
        v41 = v35;
        v35 = v33 & 0xFFFFFFFFFFFFFFF8;
        v36 = &v34[v33 & 0xFFFFFFFFFFFFFFF8];
        v42 = &v34[v41];
        v43 = (v32 + v41);
        v44 = v41 - (v33 & 0xFFFFFFFFFFFFFFF8);
        do
        {
          v45 = *v42++;
          *v43++ = v45;
          v44 += 8;
        }

        while (v44);
        if (v33 == v35)
        {
          goto LABEL_54;
        }

        goto LABEL_52;
      }

      v36 = &v34[v35];
    }

LABEL_52:
    v46 = v33 - v35;
    v47 = (v32 + v35);
    do
    {
      v48 = *v36++;
      *v47++ = v48;
      --v46;
    }

    while (v46);
LABEL_54:
    v18 = *(a1 + 112);
    goto LABEL_55;
  }

  __break(1u);
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::PeerConnectionFactoryInterface,webrtc::RtpCapabilities,webrtc::MediaType>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t **a1)
{
  v1 = *a1;
  webrtc::ReturnType<webrtc::RtpCapabilities>::Invoke<webrtc::PeerConnectionFactoryInterface const,webrtc::RtpCapabilities (webrtc::PeerConnectionFactoryInterface::*)(webrtc::MediaType)const,webrtc::MediaType>((*a1 + 3), **a1, (*a1)[1], (*a1)[2], *(*a1)[12]);
  pthread_mutex_lock((v1 + 13));
  *(v1 + 217) = 1;
  pthread_cond_broadcast((v1 + 21));

  return pthread_mutex_unlock((v1 + 13));
}

void *std::vector<webrtc::RtpCodecCapability>::vector[abi:sn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((v2 - *a2) >> 5) < 0x19999999999999ALL)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  return result;
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionFactoryInterface,webrtc::scoped_refptr<webrtc::MediaStreamInterface>,std::string const&>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
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

  v2(&v9, v5, v4);
  v6 = v9;
  v9 = 0;
  v7 = *(v1 + 24);
  *(v1 + 24) = v6;
  if (v7)
  {
    (*(*v7 + 8))(v7);
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }
  }

  pthread_mutex_lock((v1 + 40));
  *(v1 + 153) = 1;
  pthread_cond_broadcast((v1 + 104));
  return pthread_mutex_unlock((v1 + 40));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionFactoryInterface,webrtc::scoped_refptr<webrtc::AudioSourceInterface>,webrtc::AudioOptions const&>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
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

  v2(&v9, v5, v4);
  v6 = v9;
  v9 = 0;
  v7 = *(v1 + 24);
  *(v1 + 24) = v6;
  if (v7)
  {
    (*(*v7 + 8))(v7);
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }
  }

  pthread_mutex_lock((v1 + 40));
  *(v1 + 153) = 1;
  pthread_cond_broadcast((v1 + 104));
  return pthread_mutex_unlock((v1 + 40));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionFactoryInterface,webrtc::scoped_refptr<webrtc::VideoTrackInterface>,webrtc::scoped_refptr<webrtc::VideoTrackSourceInterface>,std::string_view>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v5 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v6 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v6 + v2);
  }

  v7 = *v5;
  *v5 = 0;
  v11 = v7;
  v2(&v12, v6, &v11, *v4, v4[1]);
  v8 = v12;
  v12 = 0;
  v9 = *(v1 + 24);
  *(v1 + 24) = v8;
  if (v9)
  {
    (*(*v9 + 8))(v9);
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }
  }

  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  pthread_mutex_lock((v1 + 48));
  *(v1 + 161) = 1;
  pthread_cond_broadcast((v1 + 112));

  return pthread_mutex_unlock((v1 + 48));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionFactoryInterface,webrtc::scoped_refptr<webrtc::AudioTrackInterface>,std::string const&,webrtc::AudioSourceInterface *>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v6 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v6 + v2);
  }

  v2(&v10, v6, v4, *v5);
  v7 = v10;
  v10 = 0;
  v8 = *(v1 + 24);
  *(v1 + 24) = v7;
  if (v8)
  {
    (*(*v8 + 8))(v8);
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

  pthread_mutex_lock((v1 + 48));
  *(v1 + 161) = 1;
  pthread_cond_broadcast((v1 + 112));
  return pthread_mutex_unlock((v1 + 48));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionFactoryInterface,BOOL,__sFILE *,long long>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v6 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v6 + v2);
  }

  *(v1 + 24) = v2(v6, *v4, *v5);
  pthread_mutex_lock((v1 + 48));
  *(v1 + 161) = 1;
  pthread_cond_broadcast((v1 + 112));

  return pthread_mutex_unlock((v1 + 48));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionFactoryInterface,void>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
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

BOOL webrtc::RefCountedObject<webrtc::PeerConnectionFactory>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 56, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

void webrtc::RefCountedObject<webrtc::PeerConnectionFactory>::~RefCountedObject(webrtc::PeerConnectionFactory *a1)
{
  webrtc::PeerConnectionFactory::~PeerConnectionFactory(a1);

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::PeerConnectionFactory::~PeerConnectionFactory()::$_0>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 208);
  *(v1 + 208) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  result = *(v1 + 216);
  *(v1 + 216) = 0;
  if (result)
  {
    v4 = *(*result + 8);

    return v4();
  }

  return result;
}

uint64_t webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::PeerConnectionFactory::CreatePeerConnectionOrError(webrtc::PeerConnectionInterface::RTCConfiguration const&,webrtc::PeerConnectionDependencies)::$_0>(uint64_t **a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = **a1;
  v10 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1u, memory_order_relaxed);
  }

  v11 = *(v2 + 1);
  v12 = *(v2 + 3);
  v5 = webrtc::EnvironmentFactory::CreateWithDefaults(&v10, v9);
  v6 = v10;
  if (v10 && atomic_fetch_add((v10 + 8), 0xFFFFFFFF) == 1)
  {
    (*(*v6 + 8))(v6, v5);
  }

  v7 = *a1;
  (*(*v3[20] + 16))(&v10, v5);
  if (v10)
  {
    v7[4] = v10;
    v10 = 0;
    operator new();
  }

  result = v9[0];
  if (v9[0])
  {
    if (atomic_fetch_add((v9[0] + 8), 0xFFFFFFFF) == 1)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void **webrtc::FunctionView<void ()(void)>::CallVoidPtr<std::unique_ptr<webrtc::Call> webrtc::Thread::BlockingCall<webrtc::PeerConnectionFactory::CreatePeerConnectionOrError(webrtc::PeerConnectionInterface::RTCConfiguration const&,webrtc::PeerConnectionDependencies)::$_1,std::unique_ptr<webrtc::Call>,void>(webrtc::PeerConnectionFactory::CreatePeerConnectionOrError(webrtc::PeerConnectionInterface::RTCConfiguration const&,webrtc::PeerConnectionDependencies)::$_1 &&,webrtc::Location const&)::{lambda(void)#1}>(uint64_t a1)
{
  v75 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v4 = *v2;
  v3 = v2[1];
  v5 = v2[3];
  v6 = *v5;
  *v5 = 0;
  v7 = *(v4 + 8);
  v8 = *v3;
  if (*v3)
  {
    atomic_fetch_add_explicit(v8 + 2, 1u, memory_order_relaxed);
    v7 = *(v4 + 8);
  }

  v9 = *(v3 + 24);
  v70 = *(v3 + 8);
  v71 = v9;
  v10 = *(v7 + 96);
  if (v10 && *(v7 + 208))
  {
    v11 = (*(*v10 + 24))(v10);
    (*(*v11 + 32))(&v62);
    v12 = v62;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v67 = 3;
    if (v66 <= "min" && v66 + 3 > "min" || (strcpy(v66, "min"), v68 = 0, v62 = &unk_28828FF08, v69 = 30000, v55 = 0, v56 = 0, v57 = 0, v59 = 5, v58 <= "start") && v58 + 5 > "start" || (strcpy(v58, "start"), v60 = 0, v54 = &unk_28828FF08, v61 = 300000, v47 = 0, v48 = 0, v49 = 0, v51 = 3, v50 <= "max") && v50 + 3 > "max")
    {
      __break(1u);
    }

    v43 = v12;
    strcpy(v50, "max");
    v52 = 0;
    v46 = &unk_28828FF08;
    v53 = 2000000;
    v72 = &v62;
    v73 = &v54;
    v74 = &v46;
    (*(**(v3 + 8) + 16))(__p);
    if ((v45 & 0x80u) == 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    if ((v45 & 0x80u) == 0)
    {
      v14 = v45;
    }

    else
    {
      v14 = __p[1];
    }

    webrtc::ParseFieldTrial(&v72, 3, v13, v14);
    if (v45 < 0)
    {
      operator delete(__p[0]);
    }

    v16 = (v69 < 0xFFFFFFFF80000000) | (2 * (v69 > 0x7FFFFFFF));
    if ((v16 <= 1 || v16 == 2) && ((v61 < 0xFFFFFFFF80000000) | (2 * (v61 > 0x7FFFFFFF))) <= 2)
    {
      v17 = (v53 < 0xFFFFFFFF80000000) | (2 * (v53 > 0x7FFFFFFF));
      if (v17 <= 1)
      {
        if (v6)
        {
          goto LABEL_30;
        }

        goto LABEL_35;
      }

      if (v17 == 2)
      {
        if (v6)
        {
LABEL_30:
          if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
          {
            webrtc::webrtc_logging_impl::Log("\r\t", v18, v19, v20, v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/peer_connection_factory.cc");
          }

LABEL_56:
          (*(**(*(v4 + 8) + 208) + 16))(&v72);
          if (v6)
          {
            (*(*v6 + 8))(v6);
          }

          if (v43)
          {
            (*(*v43 + 8))(v43);
          }

          if (v8 && atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v8 + 8))(v8);
          }

          v46 = &unk_288293910;
          if (v51 < 0)
          {
            operator delete(v50[0]);
          }

          if (v47)
          {
            v48 = v47;
            operator delete(v47);
          }

          v54 = &unk_288293910;
          if (v59 < 0)
          {
            operator delete(v58[0]);
          }

          if (v55)
          {
            v56 = v55;
            operator delete(v55);
          }

          v62 = &unk_288293910;
          if (v67 < 0)
          {
            operator delete(v66[0]);
          }

          if (v63)
          {
            v64 = v63;
            operator delete(v63);
          }

          goto LABEL_75;
        }

LABEL_35:
        (*(**(*(v4 + 8) + 64) + 16))(&v72);
        v25 = HIBYTE(v74);
        if (SHIBYTE(v74) < 0)
        {
          v25 = v73;
        }

        if (v25 >= 7)
        {
          v27 = v72;
          if (SHIBYTE(v74) >= 0)
          {
            v27 = &v72;
          }

          v28 = *v27;
          v29 = *(v27 + 3);
          v26 = v28 == 1650552389 && v29 == 1684368482;
          if ((SHIBYTE(v74) & 0x80000000) == 0)
          {
            goto LABEL_50;
          }
        }

        else
        {
          v26 = 0;
          if ((SHIBYTE(v74) & 0x80000000) == 0)
          {
            goto LABEL_50;
          }
        }

        operator delete(v72);
LABEL_50:
        v31 = webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>();
        if (v26)
        {
          if ((v31 & 1) == 0)
          {
            webrtc::webrtc_logging_impl::Log("\r\t", v32, v33, v34, v35, v36, v37, v38, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/peer_connection_factory.cc");
          }
        }

        else if ((v31 & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log("\r\t", v32, v33, v34, v35, v36, v37, v38, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/peer_connection_factory.cc");
        }

        goto LABEL_56;
      }
    }

    webrtc::webrtc_checks_impl::UnreachableCodeReached(v15);
  }

  v72 = 0;
  if (v8 && atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v8 + 8))(v8);
  }

  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

LABEL_75:
  v39 = *a1;
  v40 = v72;
  v72 = 0;
  v41 = *v39;
  *v39 = v40;
  if (v41)
  {
    (*(*v41 + 32))(v41);
  }

  result = v72;
  v72 = 0;
  if (result)
  {
    return (*(*result + 32))(result);
  }

  return result;
}

BOOL webrtc::RefCountedObject<webrtc::PeerConnectionProxyWithInternal<webrtc::PeerConnectionInterface>>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 8, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

void *webrtc::RefCountedObject<webrtc::PeerConnectionProxyWithInternal<webrtc::PeerConnectionInterface>>::~RefCountedObject(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288298EF0;
  v14 = a1;
  v15 = webrtc::PeerConnectionProxyWithInternal<webrtc::PeerConnectionInterface>::DestroyInternal;
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
    v13 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionProxyWithInternal<webrtc::PeerConnectionInterface>,void>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
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

uint64_t webrtc::RefCountedObject<webrtc::PeerConnectionProxyWithInternal<webrtc::PeerConnectionInterface>>::~RefCountedObject(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288298EF0;
  v14 = a1;
  v15 = webrtc::PeerConnectionProxyWithInternal<webrtc::PeerConnectionInterface>::DestroyInternal;
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
    v13 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionProxyWithInternal<webrtc::PeerConnectionInterface>,void>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
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

  return MEMORY[0x2743DA540](a1, 0x10A1C40A28EC2F6);
}

uint64_t webrtc::PeerConnectionProxyWithInternal<webrtc::PeerConnectionInterface>::local_streams@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 24);
  v6[2] = 0;
  v7 = 0;
  v6[0] = v4;
  v6[1] = webrtc::PeerConnectionInterface::local_streams;
  webrtc::Event::Event(&v8, 0, 0);
  webrtc::MethodCall<webrtc::PeerConnectionInterface,webrtc::scoped_refptr<webrtc::StreamCollectionInterface>>::Marshal(a2, v6, *(a1 + 8));
  pthread_mutex_destroy(&v8);
  pthread_cond_destroy(&v9);
  result = v7;
  if (v7)
  {
    return (*(*v7 + 8))(v7);
  }

  return result;
}

uint64_t webrtc::PeerConnectionProxyWithInternal<webrtc::PeerConnectionInterface>::remote_streams@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 24);
  v6[2] = 0;
  v7 = 0;
  v6[0] = v4;
  v6[1] = webrtc::PeerConnectionInterface::remote_streams;
  webrtc::Event::Event(&v8, 0, 0);
  webrtc::MethodCall<webrtc::PeerConnectionInterface,webrtc::scoped_refptr<webrtc::StreamCollectionInterface>>::Marshal(a2, v6, *(a1 + 8));
  pthread_mutex_destroy(&v8);
  pthread_cond_destroy(&v9);
  result = v7;
  if (v7)
  {
    return (*(*v7 + 8))(v7);
  }

  return result;
}

uint64_t webrtc::PeerConnectionProxyWithInternal<webrtc::PeerConnectionInterface>::AddStream(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v12 = a2;
  v18 = *(a1 + 24);
  v19 = webrtc::PeerConnectionInterface::AddStream;
  v20 = 0;
  v22 = &v12;
  webrtc::Event::Event(&v23, 0, 0);
  v3 = *(a1 + 8);
  v4 = &unk_280905000;
  {
    v4 = &unk_280905000;
    if (v11)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v4[403] + 88)) == v3)
  {
    v8 = v19;
    v9 = (v18 + (v20 >> 1));
    if (v20)
    {
      v8 = *(*v9 + v19);
    }

    v7 = (v8)(v9, *v22);
    v21 = v7;
  }

  else
  {
    v15.n128_u64[0] = &v18;
    v16 = absl::internal_any_invocable::LocalManagerTrivial;
    v17 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,BOOL,webrtc::MediaStreamInterface *>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v3 + 8))(v3, &v15, &v14, &v13);
    v16(1, &v15, &v15);
    v5.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v6.var0 = 3000000;
    webrtc::Event::Wait(&v23, v5, v6);
    v7 = v21;
  }

  pthread_mutex_destroy(&v23);
  pthread_cond_destroy(&v24);
  return v7 & 1;
}

uint64_t webrtc::PeerConnectionProxyWithInternal<webrtc::PeerConnectionInterface>::RemoveStream(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v17 = *(a1 + 24);
  v18 = webrtc::PeerConnectionInterface::RemoveStream;
  v19 = 0;
  v20 = &v11;
  webrtc::Event::Event(&v21, 0, 0);
  v3 = *(a1 + 8);
  v4 = &unk_280905000;
  {
    v4 = &unk_280905000;
    if (v10)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v4[403] + 88)) == v3)
  {
    v7 = v18;
    v8 = (v17 + (v19 >> 1));
    if (v19)
    {
      v7 = *(*v8 + v18);
    }

    (v7)(v8, *v20);
  }

  else
  {
    v14.n128_u64[0] = &v17;
    v15 = absl::internal_any_invocable::LocalManagerTrivial;
    v16 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,void,webrtc::MediaStreamInterface *>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v3 + 8))(v3, &v14, &v13, &v12);
    v15(1, &v14, &v14);
    v5.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v6.var0 = 3000000;
    webrtc::Event::Wait(&v21, v5, v6);
  }

  pthread_mutex_destroy(&v21);
  return pthread_cond_destroy(&v22);
}

void webrtc::PeerConnectionProxyWithInternal<webrtc::PeerConnectionInterface>::AddTrack(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = *MEMORY[0x277D85DE8];
  v18[0] = *(a1 + 24);
  v18[1] = webrtc::PeerConnectionInterface::AddTrack;
  v18[2] = 0;
  v19 = 10;
  v21[14] = 0;
  *v21 = 0;
  __p = 0uLL;
  *&v21[5] = 0;
  LOBYTE(v22) = 0;
  v23 = 0;
  v24 = a2;
  v25 = a3;
  webrtc::Event::Event(&v26, 0, 0);
  v6 = *(a1 + 8);
  v7 = &unk_280905000;
  {
    v7 = &unk_280905000;
    if (v12)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v7[403] + 88)) == v6)
  {
    webrtc::MethodCall<webrtc::PeerConnectionInterface,webrtc::RTCErrorOr<webrtc::scoped_refptr<webrtc::RtpSenderInterface>>,webrtc::scoped_refptr<webrtc::MediaStreamTrackInterface>,std::vector<std::string> const&>::Invoke<0ul,1ul>(v18);
  }

  else
  {
    v15.n128_u64[0] = v18;
    v16 = absl::internal_any_invocable::LocalManagerTrivial;
    v17 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,webrtc::RTCErrorOr<webrtc::scoped_refptr<webrtc::RtpSenderInterface>>,webrtc::scoped_refptr<webrtc::MediaStreamTrackInterface>,std::vector<std::string> const&>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v6 + 8))(v6, &v15, &v14, &v13);
    v16(1, &v15, &v15);
    v8.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v9.var0 = 3000000;
    webrtc::Event::Wait(&v26, v8, v9);
  }

  v10 = *&v21[8];
  *a4 = v19;
  *(a4 + 24) = *v21;
  *(a4 + 8) = __p;
  __p = 0uLL;
  *v21 = 0;
  *(a4 + 32) = v10;
  *(a4 + 35) = *&v21[11];
  *(a4 + 40) = 0;
  *(a4 + 48) = 0;
  if (v23 == 1)
  {
    v11 = v22;
    v22 = 0;
    *(a4 + 40) = v11;
    *(a4 + 48) = 1;
  }

  pthread_mutex_destroy(&v26);
  pthread_cond_destroy(&v27);
  if (v23 == 1 && v22)
  {
    (*(*v22 + 8))(v22);
  }

  if ((v21[7] & 0x80000000) != 0)
  {
    operator delete(__p);
  }
}

void webrtc::PeerConnectionProxyWithInternal<webrtc::PeerConnectionInterface>::AddTrack(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30 = *MEMORY[0x277D85DE8];
  v19[0] = *(a1 + 24);
  v19[1] = webrtc::PeerConnectionInterface::AddTrack;
  v19[2] = 0;
  v20 = 10;
  v22[14] = 0;
  *v22 = 0;
  __p = 0uLL;
  *&v22[5] = 0;
  LOBYTE(v23) = 0;
  v24 = 0;
  v25 = a2;
  v26 = a3;
  v27 = a4;
  webrtc::Event::Event(&v28, 0, 0);
  v7 = *(a1 + 8);
  v8 = &unk_280905000;
  {
    v8 = &unk_280905000;
    if (v13)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v8[403] + 88)) == v7)
  {
    webrtc::MethodCall<webrtc::PeerConnectionInterface,webrtc::RTCErrorOr<webrtc::scoped_refptr<webrtc::RtpSenderInterface>>,webrtc::scoped_refptr<webrtc::MediaStreamTrackInterface>,std::vector<std::string> const&,std::vector<webrtc::RtpEncodingParameters> const&>::Invoke<0ul,1ul,2ul>(v19);
  }

  else
  {
    v16.n128_u64[0] = v19;
    v17 = absl::internal_any_invocable::LocalManagerTrivial;
    v18 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,webrtc::RTCErrorOr<webrtc::scoped_refptr<webrtc::RtpSenderInterface>>,webrtc::scoped_refptr<webrtc::MediaStreamTrackInterface>,std::vector<std::string> const&,std::vector<webrtc::RtpEncodingParameters> const&>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v7 + 8))(v7, &v16, &v15, &v14);
    v17(1, &v16, &v16);
    v9.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v10.var0 = 3000000;
    webrtc::Event::Wait(&v28, v9, v10);
  }

  v11 = *&v22[8];
  *a5 = v20;
  *(a5 + 24) = *v22;
  *(a5 + 8) = __p;
  __p = 0uLL;
  *v22 = 0;
  *(a5 + 32) = v11;
  *(a5 + 35) = *&v22[11];
  *(a5 + 40) = 0;
  *(a5 + 48) = 0;
  if (v24 == 1)
  {
    v12 = v23;
    v23 = 0;
    *(a5 + 40) = v12;
    *(a5 + 48) = 1;
  }

  pthread_mutex_destroy(&v28);
  pthread_cond_destroy(&v29);
  if (v24 == 1 && v23)
  {
    (*(*v23 + 8))(v23);
  }

  if ((v22[7] & 0x80000000) != 0)
  {
    operator delete(__p);
  }
}

void webrtc::PeerConnectionProxyWithInternal<webrtc::PeerConnectionInterface>::RemoveTrackOrError(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v29 = *MEMORY[0x277D85DE8];
  v20 = *(a1 + 24);
  v21 = webrtc::PeerConnectionInterface::RemoveTrackOrError;
  v22 = 0;
  v23 = 0;
  v25[14] = 0;
  *v25 = 0;
  __p = 0uLL;
  *&v25[5] = 0;
  v26 = a2;
  webrtc::Event::Event(&v27, 0, 0);
  v5 = *(a1 + 8);
  v6 = &unk_280905000;
  {
    v6 = &unk_280905000;
    if (v13)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v6[403] + 88)) == v5)
  {
    v9 = v21;
    v10 = v20 + (v22 >> 1);
    v11 = *v26;
    *v26 = 0;
    v15 = v11;
    (v9)(&v16, v10, &v15);
    v23 = v16;
    if ((v25[7] & 0x80000000) != 0)
    {
      operator delete(__p);
    }

    __p = v17;
    *v25 = v18;
    HIBYTE(v18) = 0;
    LOBYTE(v17) = 0;
    *&v25[8] = v19[0];
    *&v25[11] = *(v19 + 3);
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }
  }

  else
  {
    v16 = &v20;
    *(&v17 + 1) = absl::internal_any_invocable::LocalManagerTrivial;
    v18 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,webrtc::RTCError,webrtc::scoped_refptr<webrtc::RtpSenderInterface>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v5 + 8))(v5, &v16, &v15, &v14);
    (*(&v17 + 1))(1, &v16, &v16);
    v7.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v8.var0 = 3000000;
    webrtc::Event::Wait(&v27, v7, v8);
  }

  v12 = *&v25[8];
  *a3 = v23;
  *(a3 + 8) = __p;
  *(a3 + 24) = *v25;
  __p = 0uLL;
  *v25 = 0;
  *(a3 + 32) = v12;
  *(a3 + 35) = *&v25[11];
  pthread_mutex_destroy(&v27);
  pthread_cond_destroy(&v28);
  if ((v25[7] & 0x80000000) != 0)
  {
    operator delete(__p);
  }
}

void webrtc::PeerConnectionProxyWithInternal<webrtc::PeerConnectionInterface>::AddTransceiver(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v17[0] = *(a1 + 24);
  v17[1] = webrtc::PeerConnectionInterface::AddTransceiver;
  v17[2] = 0;
  v18 = 10;
  v20[14] = 0;
  *v20 = 0;
  __p = 0uLL;
  *&v20[5] = 0;
  LOBYTE(v21) = 0;
  v22 = 0;
  v23 = a2;
  webrtc::Event::Event(&v24, 0, 0);
  v5 = *(a1 + 8);
  v6 = &unk_280905000;
  {
    v6 = &unk_280905000;
    if (v11)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v6[403] + 88)) == v5)
  {
    webrtc::MethodCall<webrtc::PeerConnectionInterface,webrtc::RTCErrorOr<webrtc::scoped_refptr<webrtc::RtpTransceiverInterface>>,webrtc::scoped_refptr<webrtc::MediaStreamTrackInterface>>::Invoke<0ul>(v17);
  }

  else
  {
    v14.n128_u64[0] = v17;
    v15 = absl::internal_any_invocable::LocalManagerTrivial;
    v16 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,webrtc::RTCErrorOr<webrtc::scoped_refptr<webrtc::RtpTransceiverInterface>>,webrtc::scoped_refptr<webrtc::MediaStreamTrackInterface>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v5 + 8))(v5, &v14, &v13, &v12);
    v15(1, &v14, &v14);
    v7.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v8.var0 = 3000000;
    webrtc::Event::Wait(&v24, v7, v8);
  }

  v9 = *&v20[8];
  *a3 = v18;
  *(a3 + 24) = *v20;
  *(a3 + 8) = __p;
  __p = 0uLL;
  *v20 = 0;
  *(a3 + 32) = v9;
  *(a3 + 35) = *&v20[11];
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  if (v22 == 1)
  {
    v10 = v21;
    v21 = 0;
    *(a3 + 40) = v10;
    *(a3 + 48) = 1;
  }

  pthread_mutex_destroy(&v24);
  pthread_cond_destroy(&v25);
  if (v22 == 1 && v21)
  {
    (*(*v21 + 8))(v21);
  }

  if ((v20[7] & 0x80000000) != 0)
  {
    operator delete(__p);
  }
}

void webrtc::PeerConnectionProxyWithInternal<webrtc::PeerConnectionInterface>::AddTransceiver(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = *MEMORY[0x277D85DE8];
  v18[0] = *(a1 + 24);
  v18[1] = webrtc::PeerConnectionInterface::AddTransceiver;
  v18[2] = 0;
  v19 = 10;
  v21[14] = 0;
  *v21 = 0;
  __p = 0uLL;
  *&v21[5] = 0;
  LOBYTE(v22) = 0;
  v23 = 0;
  v24 = a2;
  v25 = a3;
  webrtc::Event::Event(&v26, 0, 0);
  v6 = *(a1 + 8);
  v7 = &unk_280905000;
  {
    v7 = &unk_280905000;
    if (v12)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v7[403] + 88)) == v6)
  {
    webrtc::MethodCall<webrtc::PeerConnectionInterface,webrtc::RTCErrorOr<webrtc::scoped_refptr<webrtc::RtpTransceiverInterface>>,webrtc::scoped_refptr<webrtc::MediaStreamTrackInterface>,webrtc::RtpTransceiverInit const&>::Invoke<0ul,1ul>(v18);
  }

  else
  {
    v15.n128_u64[0] = v18;
    v16 = absl::internal_any_invocable::LocalManagerTrivial;
    v17 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,webrtc::RTCErrorOr<webrtc::scoped_refptr<webrtc::RtpTransceiverInterface>>,webrtc::scoped_refptr<webrtc::MediaStreamTrackInterface>,webrtc::RtpTransceiverInit const&>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v6 + 8))(v6, &v15, &v14, &v13);
    v16(1, &v15, &v15);
    v8.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v9.var0 = 3000000;
    webrtc::Event::Wait(&v26, v8, v9);
  }

  v10 = *&v21[8];
  *a4 = v19;
  *(a4 + 24) = *v21;
  *(a4 + 8) = __p;
  __p = 0uLL;
  *v21 = 0;
  *(a4 + 32) = v10;
  *(a4 + 35) = *&v21[11];
  *(a4 + 40) = 0;
  *(a4 + 48) = 0;
  if (v23 == 1)
  {
    v11 = v22;
    v22 = 0;
    *(a4 + 40) = v11;
    *(a4 + 48) = 1;
  }

  pthread_mutex_destroy(&v26);
  pthread_cond_destroy(&v27);
  if (v23 == 1 && v22)
  {
    (*(*v22 + 8))(v22);
  }

  if ((v21[7] & 0x80000000) != 0)
  {
    operator delete(__p);
  }
}

void webrtc::PeerConnectionProxyWithInternal<webrtc::PeerConnectionInterface>::AddTransceiver(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  v12 = a2;
  v18[0] = *(a1 + 24);
  v18[1] = webrtc::PeerConnectionInterface::AddTransceiver;
  v18[2] = 0;
  v19 = 10;
  v21[14] = 0;
  *v21 = 0;
  __p = 0uLL;
  *&v21[5] = 0;
  LOBYTE(v22) = 0;
  v23 = 0;
  v24 = &v12;
  webrtc::Event::Event(&v25, 0, 0);
  v5 = *(a1 + 8);
  v6 = &unk_280905000;
  {
    v6 = &unk_280905000;
    if (v11)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v6[403] + 88)) == v5)
  {
    webrtc::MethodCall<webrtc::PeerConnectionInterface,webrtc::RTCErrorOr<webrtc::scoped_refptr<webrtc::RtpTransceiverInterface>>,webrtc::MediaType>::Invoke<0ul>(v18);
  }

  else
  {
    v15.n128_u64[0] = v18;
    v16 = absl::internal_any_invocable::LocalManagerTrivial;
    v17 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,webrtc::RTCErrorOr<webrtc::scoped_refptr<webrtc::RtpTransceiverInterface>>,webrtc::MediaType>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v5 + 8))(v5, &v15, &v14, &v13);
    v16(1, &v15, &v15);
    v7.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v8.var0 = 3000000;
    webrtc::Event::Wait(&v25, v7, v8);
  }

  v9 = *&v21[8];
  *a3 = v19;
  *(a3 + 24) = *v21;
  *(a3 + 8) = __p;
  __p = 0uLL;
  *v21 = 0;
  *(a3 + 32) = v9;
  *(a3 + 35) = *&v21[11];
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  if (v23 == 1)
  {
    v10 = v22;
    v22 = 0;
    *(a3 + 40) = v10;
    *(a3 + 48) = 1;
  }

  pthread_mutex_destroy(&v25);
  pthread_cond_destroy(&v26);
  if (v23 == 1 && v22)
  {
    (*(*v22 + 8))(v22);
  }

  if ((v21[7] & 0x80000000) != 0)
  {
    operator delete(__p);
  }
}

void webrtc::PeerConnectionProxyWithInternal<webrtc::PeerConnectionInterface>::AddTransceiver(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = *MEMORY[0x277D85DE8];
  v13 = a2;
  v19[0] = *(a1 + 24);
  v19[1] = webrtc::PeerConnectionInterface::AddTransceiver;
  v19[2] = 0;
  v20 = 10;
  v22[14] = 0;
  *v22 = 0;
  __p = 0uLL;
  *&v22[5] = 0;
  LOBYTE(v23) = 0;
  v24 = 0;
  v25 = &v13;
  v26 = a3;
  webrtc::Event::Event(&v27, 0, 0);
  v6 = *(a1 + 8);
  v7 = &unk_280905000;
  {
    v7 = &unk_280905000;
    if (v12)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v7[403] + 88)) == v6)
  {
    webrtc::MethodCall<webrtc::PeerConnectionInterface,webrtc::RTCErrorOr<webrtc::scoped_refptr<webrtc::RtpTransceiverInterface>>,webrtc::MediaType,webrtc::RtpTransceiverInit const&>::Invoke<0ul,1ul>(v19);
  }

  else
  {
    v16.n128_u64[0] = v19;
    v17 = absl::internal_any_invocable::LocalManagerTrivial;
    v18 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,webrtc::RTCErrorOr<webrtc::scoped_refptr<webrtc::RtpTransceiverInterface>>,webrtc::MediaType,webrtc::RtpTransceiverInit const&>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v6 + 8))(v6, &v16, &v15, &v14);
    v17(1, &v16, &v16);
    v8.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v9.var0 = 3000000;
    webrtc::Event::Wait(&v27, v8, v9);
  }

  v10 = *&v22[8];
  *a4 = v20;
  *(a4 + 24) = *v22;
  *(a4 + 8) = __p;
  __p = 0uLL;
  *v22 = 0;
  *(a4 + 32) = v10;
  *(a4 + 35) = *&v22[11];
  *(a4 + 40) = 0;
  *(a4 + 48) = 0;
  if (v24 == 1)
  {
    v11 = v23;
    v23 = 0;
    *(a4 + 40) = v11;
    *(a4 + 48) = 1;
  }

  pthread_mutex_destroy(&v27);
  pthread_cond_destroy(&v28);
  if (v24 == 1 && v23)
  {
    (*(*v23 + 8))(v23);
  }

  if ((v22[7] & 0x80000000) != 0)
  {
    operator delete(__p);
  }
}

uint64_t webrtc::PeerConnectionProxyWithInternal<webrtc::PeerConnectionInterface>::CreateSender@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v28 = *MEMORY[0x277D85DE8];
  v20 = *(a1 + 24);
  v21 = webrtc::PeerConnectionInterface::CreateSender;
  v22 = 0;
  v23 = 0;
  v24 = a2;
  v25 = a3;
  webrtc::Event::Event(&v26, 0, 0);
  v6 = *(a1 + 8);
  v7 = &unk_280905000;
  {
    v7 = &unk_280905000;
    if (v14)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v7[403] + 88)) == v6)
  {
    (v21)(&v17, v20 + (v22 >> 1), v24, v25);
    v12 = v17.n128_u64[0];
    v17.n128_u64[0] = 0;
    v13 = v23;
    v23 = v12;
    if (v13)
    {
      (*(*v13 + 8))(v13);
      if (v17.n128_u64[0])
      {
        (*(*v17.n128_u64[0] + 8))(v17.n128_u64[0]);
      }
    }
  }

  else
  {
    v17.n128_u64[0] = &v20;
    v18 = absl::internal_any_invocable::LocalManagerTrivial;
    v19 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,webrtc::scoped_refptr<webrtc::RtpSenderInterface>,std::string const&,std::string const&>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v6 + 8))(v6, &v17, &v16, &v15);
    v18(1, &v17, &v17);
    v8.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v9.var0 = 3000000;
    webrtc::Event::Wait(&v26, v8, v9);
  }

  v10 = v23;
  v23 = 0;
  *a4 = v10;
  pthread_mutex_destroy(&v26);
  pthread_cond_destroy(&v27);
  result = v23;
  if (v23)
  {
    return (*(*v23 + 8))(v23);
  }

  return result;
}

void webrtc::PeerConnectionProxyWithInternal<webrtc::PeerConnectionInterface>::GetSenders(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = *MEMORY[0x277D85DE8];
  v25 = *(a1 + 24);
  v26 = webrtc::PeerConnectionInterface::GetSenders;
  memset(__p, 0, sizeof(__p));
  webrtc::Event::Event(&v28, 0, 0);
  v4 = *(a1 + 8);
  {
    operator new();
  }

  if (pthread_getspecific(*(webrtc::ThreadManager::Instance(void)::thread_manager + 88)) != v4)
  {
    *&v22 = &v25;
    v23 = absl::internal_any_invocable::LocalManagerTrivial;
    v24 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::PeerConnectionInterface,std::vector<webrtc::scoped_refptr<webrtc::RtpSenderInterface>>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v4 + 8))(v4, &v22, &v21, &v20);
    v23(1, &v22, &v22);
    v5.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v6.var0 = 3000000;
    webrtc::Event::Wait(&v28, v5, v6);
    v7 = *&__p[1];
    v8 = __p[3];
    goto LABEL_16;
  }

  v9 = (v25 + (__p[0] >> 1));
  if ((__p[0] & 1) == 0)
  {
    (v26)(&v22, v9);
    v10 = __p[1];
    if (!__p[1])
    {
      goto LABEL_15;
    }

LABEL_8:
    v11 = __p[2];
    v12 = v10;
    if (__p[2] != v10)
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
      v12 = __p[1];
    }

    __p[2] = v10;
    operator delete(v12);
    goto LABEL_15;
  }

  (*(*v9 + v26))(&v22);
  v10 = __p[1];
  if (__p[1])
  {
    goto LABEL_8;
  }

LABEL_15:
  v7 = v22;
  v8 = v23;
LABEL_16:
  *a2 = v7;
  *(a2 + 16) = v8;
  memset(&__p[1], 0, 24);
  pthread_mutex_destroy(&v28);
  pthread_cond_destroy(&v29);
  v15 = __p[1];
  if (__p[1])
  {
    v16 = __p[2];
    v17 = __p[1];
    if (__p[2] != __p[1])
    {
      do
      {
        v19 = *(v16 - 1);
        v16 -= 8;
        v18 = v19;
        if (v19)
        {
          (*(*v18 + 8))(v18);
        }
      }

      while (v16 != v15);
      v17 = __p[1];
    }

    __p[2] = v15;
    operator delete(v17);
  }
}

void webrtc::PeerConnectionProxyWithInternal<webrtc::PeerConnectionInterface>::GetReceivers(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = *MEMORY[0x277D85DE8];
  v25 = *(a1 + 24);
  v26 = webrtc::PeerConnectionInterface::GetReceivers;
  memset(__p, 0, sizeof(__p));
  webrtc::Event::Event(&v28, 0, 0);
  v4 = *(a1 + 8);
  {
    operator new();
  }

  if (pthread_getspecific(*(webrtc::ThreadManager::Instance(void)::thread_manager + 88)) != v4)
  {
    *&v22 = &v25;
    v23 = absl::internal_any_invocable::LocalManagerTrivial;
    v24 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::PeerConnectionInterface,std::vector<webrtc::scoped_refptr<webrtc::RtpReceiverInterface>>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v4 + 8))(v4, &v22, &v21, &v20);
    v23(1, &v22, &v22);
    v5.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v6.var0 = 3000000;
    webrtc::Event::Wait(&v28, v5, v6);
    v7 = *&__p[1];
    v8 = __p[3];
    goto LABEL_16;
  }

  v9 = (v25 + (__p[0] >> 1));
  if ((__p[0] & 1) == 0)
  {
    (v26)(&v22, v9);
    v10 = __p[1];
    if (!__p[1])
    {
      goto LABEL_15;
    }

LABEL_8:
    v11 = __p[2];
    v12 = v10;
    if (__p[2] != v10)
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
      v12 = __p[1];
    }

    __p[2] = v10;
    operator delete(v12);
    goto LABEL_15;
  }

  (*(*v9 + v26))(&v22);
  v10 = __p[1];
  if (__p[1])
  {
    goto LABEL_8;
  }

LABEL_15:
  v7 = v22;
  v8 = v23;
LABEL_16:
  *a2 = v7;
  *(a2 + 16) = v8;
  memset(&__p[1], 0, 24);
  pthread_mutex_destroy(&v28);
  pthread_cond_destroy(&v29);
  v15 = __p[1];
  if (__p[1])
  {
    v16 = __p[2];
    v17 = __p[1];
    if (__p[2] != __p[1])
    {
      do
      {
        v19 = *(v16 - 1);
        v16 -= 8;
        v18 = v19;
        if (v19)
        {
          (*(*v18 + 8))(v18);
        }
      }

      while (v16 != v15);
      v17 = __p[1];
    }

    __p[2] = v15;
    operator delete(v17);
  }
}

void webrtc::PeerConnectionProxyWithInternal<webrtc::PeerConnectionInterface>::GetTransceivers(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = *MEMORY[0x277D85DE8];
  v25 = *(a1 + 24);
  v26 = webrtc::PeerConnectionInterface::GetTransceivers;
  memset(__p, 0, sizeof(__p));
  webrtc::Event::Event(&v28, 0, 0);
  v4 = *(a1 + 8);
  {
    operator new();
  }

  if (pthread_getspecific(*(webrtc::ThreadManager::Instance(void)::thread_manager + 88)) != v4)
  {
    *&v22 = &v25;
    v23 = absl::internal_any_invocable::LocalManagerTrivial;
    v24 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::PeerConnectionInterface,std::vector<webrtc::scoped_refptr<webrtc::RtpTransceiverInterface>>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v4 + 8))(v4, &v22, &v21, &v20);
    v23(1, &v22, &v22);
    v5.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v6.var0 = 3000000;
    webrtc::Event::Wait(&v28, v5, v6);
    v7 = *&__p[1];
    v8 = __p[3];
    goto LABEL_16;
  }

  v9 = (v25 + (__p[0] >> 1));
  if ((__p[0] & 1) == 0)
  {
    (v26)(&v22, v9);
    v10 = __p[1];
    if (!__p[1])
    {
      goto LABEL_15;
    }

LABEL_8:
    v11 = __p[2];
    v12 = v10;
    if (__p[2] != v10)
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
      v12 = __p[1];
    }

    __p[2] = v10;
    operator delete(v12);
    goto LABEL_15;
  }

  (*(*v9 + v26))(&v22);
  v10 = __p[1];
  if (__p[1])
  {
    goto LABEL_8;
  }

LABEL_15:
  v7 = v22;
  v8 = v23;
LABEL_16:
  *a2 = v7;
  *(a2 + 16) = v8;
  memset(&__p[1], 0, 24);
  pthread_mutex_destroy(&v28);
  pthread_cond_destroy(&v29);
  v15 = __p[1];
  if (__p[1])
  {
    v16 = __p[2];
    v17 = __p[1];
    if (__p[2] != __p[1])
    {
      do
      {
        v19 = *(v16 - 1);
        v16 -= 8;
        v18 = v19;
        if (v19)
        {
          (*(*v18 + 8))(v18);
        }
      }

      while (v16 != v15);
      v17 = __p[1];
    }

    __p[2] = v15;
    operator delete(v17);
  }
}

uint64_t webrtc::PeerConnectionProxyWithInternal<webrtc::PeerConnectionInterface>::GetStats(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a2;
  v14 = a4;
  v22 = *(a1 + 24);
  v23 = webrtc::PeerConnectionInterface::GetStats;
  v24 = 0;
  v26 = &v16;
  v27 = &v15;
  v28 = &v14;
  webrtc::Event::Event(&v29, 0, 0);
  v5 = *(a1 + 8);
  v6 = &unk_280905000;
  {
    v6 = &unk_280905000;
    if (v13)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v6[403] + 88)) == v5)
  {
    v10 = v23;
    v11 = (v22 + (v24 >> 1));
    if (v24)
    {
      v10 = *(*v11 + v23);
    }

    v9 = (v10)(v11, *v26, *v27, *v28);
    v25 = v9;
  }

  else
  {
    v19.n128_u64[0] = &v22;
    v20 = absl::internal_any_invocable::LocalManagerTrivial;
    v21 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,BOOL,webrtc::StatsObserver *,webrtc::MediaStreamTrackInterface *,webrtc::PeerConnectionInterface::StatsOutputLevel>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v5 + 8))(v5, &v19, &v18, &v17);
    v20(1, &v19, &v19);
    v7.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v8.var0 = 3000000;
    webrtc::Event::Wait(&v29, v7, v8);
    v9 = v25;
  }

  pthread_mutex_destroy(&v29);
  pthread_cond_destroy(&v30);
  return v9 & 1;
}

uint64_t webrtc::PeerConnectionProxyWithInternal<webrtc::PeerConnectionInterface>::GetStats(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v17 = *(a1 + 24);
  v18 = webrtc::PeerConnectionInterface::GetStats;
  v19 = 0;
  v20 = &v11;
  webrtc::Event::Event(&v21, 0, 0);
  v3 = *(a1 + 8);
  v4 = &unk_280905000;
  {
    v4 = &unk_280905000;
    if (v10)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v4[403] + 88)) == v3)
  {
    v7 = v18;
    v8 = (v17 + (v19 >> 1));
    if (v19)
    {
      v7 = *(*v8 + v18);
    }

    (v7)(v8, *v20);
  }

  else
  {
    v14.n128_u64[0] = &v17;
    v15 = absl::internal_any_invocable::LocalManagerTrivial;
    v16 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,void,webrtc::RTCStatsCollectorCallback *>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v3 + 8))(v3, &v14, &v13, &v12);
    v15(1, &v14, &v14);
    v5.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v6.var0 = 3000000;
    webrtc::Event::Wait(&v21, v5, v6);
  }

  pthread_mutex_destroy(&v21);
  return pthread_cond_destroy(&v22);
}

uint64_t webrtc::PeerConnectionProxyWithInternal<webrtc::PeerConnectionInterface>::GetStats(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v20 = *(a1 + 24);
  v21 = webrtc::PeerConnectionInterface::GetStats;
  v22 = 0;
  v23 = a2;
  v24 = a3;
  webrtc::Event::Event(&v25, 0, 0);
  v4 = *(a1 + 8);
  v5 = &unk_280905000;
  {
    v5 = &unk_280905000;
    if (v14)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v5[403] + 88)) == v4)
  {
    v8 = v21;
    v9 = v24;
    v10 = v20 + (v22 >> 1);
    v11 = *v23;
    *v23 = 0;
    v17.n128_u64[0] = v11;
    v12 = *v9;
    *v9 = 0;
    v16 = v12;
    (v8)(v10, &v17, &v16);
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    if (v17.n128_u64[0])
    {
      (*(*v17.n128_u64[0] + 8))(v17.n128_u64[0]);
    }
  }

  else
  {
    v17.n128_u64[0] = &v20;
    v18 = absl::internal_any_invocable::LocalManagerTrivial;
    v19 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,void,webrtc::scoped_refptr<webrtc::RtpSenderInterface>,webrtc::scoped_refptr<webrtc::RTCStatsCollectorCallback>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v4 + 8))(v4, &v17, &v16, &v15);
    v18(1, &v17, &v17);
    v6.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v7.var0 = 3000000;
    webrtc::Event::Wait(&v25, v6, v7);
  }

  pthread_mutex_destroy(&v25);
  return pthread_cond_destroy(&v26);
}

{
  v27 = *MEMORY[0x277D85DE8];
  v20 = *(a1 + 24);
  v21 = webrtc::PeerConnectionInterface::GetStats;
  v22 = 0;
  v23 = a2;
  v24 = a3;
  webrtc::Event::Event(&v25, 0, 0);
  v4 = *(a1 + 8);
  v5 = &unk_280905000;
  {
    v5 = &unk_280905000;
    if (v14)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v5[403] + 88)) == v4)
  {
    v8 = v21;
    v9 = v24;
    v10 = v20 + (v22 >> 1);
    v11 = *v23;
    *v23 = 0;
    v17.n128_u64[0] = v11;
    v12 = *v9;
    *v9 = 0;
    v16 = v12;
    (v8)(v10, &v17, &v16);
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    if (v17.n128_u64[0])
    {
      (*(*v17.n128_u64[0] + 8))(v17.n128_u64[0]);
    }
  }

  else
  {
    v17.n128_u64[0] = &v20;
    v18 = absl::internal_any_invocable::LocalManagerTrivial;
    v19 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,void,webrtc::scoped_refptr<webrtc::RtpReceiverInterface>,webrtc::scoped_refptr<webrtc::RTCStatsCollectorCallback>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v4 + 8))(v4, &v17, &v16, &v15);
    v18(1, &v17, &v17);
    v6.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v7.var0 = 3000000;
    webrtc::Event::Wait(&v25, v6, v7);
  }

  pthread_mutex_destroy(&v25);
  return pthread_cond_destroy(&v26);
}

uint64_t webrtc::PeerConnectionProxyWithInternal<webrtc::PeerConnectionInterface>::ClearStatsCache(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = *(a1 + 24);
  v14 = webrtc::PeerConnectionInterface::ClearStatsCache;
  v15 = 0;
  webrtc::Event::Event(&v16, 0, 0);
  v2 = *(a1 + 8);
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
    v12 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,void>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v2 + 8))(v2, &v10, &v9, &v8);
    v11(1, &v10, &v10);
    v4.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v5.var0 = 3000000;
    webrtc::Event::Wait(&v16, v4, v5);
  }

  pthread_mutex_destroy(&v16);
  return pthread_cond_destroy(&v17);
}

void webrtc::PeerConnectionProxyWithInternal<webrtc::PeerConnectionInterface>::CreateDataChannelOrError(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v19[0] = *(a1 + 24);
  v19[1] = webrtc::PeerConnectionInterface::CreateDataChannelOrError;
  v19[2] = 0;
  v20 = 10;
  v22[14] = 0;
  *v22 = 0;
  __p = 0uLL;
  *&v22[5] = 0;
  LOBYTE(v23) = 0;
  v24 = 0;
  v25 = a2;
  v26 = &v13;
  webrtc::Event::Event(&v27, 0, 0);
  v6 = *(a1 + 8);
  v7 = &unk_280905000;
  {
    v7 = &unk_280905000;
    if (v12)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v7[403] + 88)) == v6)
  {
    webrtc::MethodCall<webrtc::PeerConnectionInterface,webrtc::RTCErrorOr<webrtc::scoped_refptr<webrtc::DataChannelInterface>>,std::string const&,webrtc::DataChannelInit const*>::Invoke<0ul,1ul>(v19);
  }

  else
  {
    v16.n128_u64[0] = v19;
    v17 = absl::internal_any_invocable::LocalManagerTrivial;
    v18 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::PeerConnectionInterface,webrtc::RTCErrorOr<webrtc::scoped_refptr<webrtc::DataChannelInterface>>,std::string const&,webrtc::DataChannelInit const*>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v6 + 8))(v6, &v16, &v15, &v14);
    v17(1, &v16, &v16);
    v8.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v9.var0 = 3000000;
    webrtc::Event::Wait(&v27, v8, v9);
  }

  v10 = *&v22[8];
  *a4 = v20;
  *(a4 + 24) = *v22;
  *(a4 + 8) = __p;
  __p = 0uLL;
  *v22 = 0;
  *(a4 + 32) = v10;
  *(a4 + 35) = *&v22[11];
  *(a4 + 40) = 0;
  *(a4 + 48) = 0;
  if (v24 == 1)
  {
    v11 = v23;
    v23 = 0;
    *(a4 + 40) = v11;
    *(a4 + 48) = 1;
  }

  pthread_mutex_destroy(&v27);
  pthread_cond_destroy(&v28);
  if (v24 == 1 && v23)
  {
    (*(*v23 + 8))(v23);
  }

  if ((v22[7] & 0x80000000) != 0)
  {
    operator delete(__p);
  }
}

uint64_t webrtc::PeerConnectionProxyWithInternal<webrtc::PeerConnectionInterface>::local_description(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v14 = *(a1 + 24);
  v15 = webrtc::PeerConnectionInterface::local_description;
  v16 = 0;
  webrtc::Event::Event(&v18, 0, 0);
  v2 = *(a1 + 8);
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
    v13 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::PeerConnectionInterface,webrtc::SessionDescriptionInterface const*>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
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