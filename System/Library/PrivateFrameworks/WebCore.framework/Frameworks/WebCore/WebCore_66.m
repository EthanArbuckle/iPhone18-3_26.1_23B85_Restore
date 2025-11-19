uint64_t webrtc::StunBindingRequest::OnErrorResponse(webrtc::StunBindingRequest *this, webrtc::StunMessage *a2)
{
  v3 = *(a2 + 1);
  v4 = *(a2 + 2);
  if (v3 == v4)
  {
LABEL_4:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v6, v7, v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/stun_port.cc");
    }

    operator new();
  }

  while (1)
  {
    v5 = *v3;
    if (*(*v3 + 8) == 9)
    {
      break;
    }

    if (++v3 == v4)
    {
      goto LABEL_4;
    }
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v13, v14, v15, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/stun_port.cc");
  }

  v20 = *(this + 7);
  v21 = *(v5 + 13);
  if (*(v5 + 39) < 0)
  {
    v22 = *(v5 + 16);
    v23 = *(v5 + 24);
    v24 = *(v5 + 13);
    std::string::__init_copy_ctor_external(&v33, v22, v23);
    v21 = v24;
  }

  else
  {
    v33 = *(v5 + 16);
  }

  if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = &v33;
  }

  else
  {
    v25 = v33.__r_.__value_.__r.__words[0];
  }

  if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v33.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v33.__r_.__value_.__l.__size_;
  }

  webrtc::UDPPort::OnStunBindingOrResolveRequestFailed(v20, (this + 64), v21, v25, size);
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
    v27 = webrtc::g_clock;
    if (webrtc::g_clock)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v27 = webrtc::g_clock;
    if (webrtc::g_clock)
    {
LABEL_20:
      result = (*(*v27 + 16))(v27);
      goto LABEL_25;
    }
  }

  if (!dword_28100D8E4)
  {
    mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
  }

  result = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
LABEL_25:
  v29 = *(*(this + 7) + 984);
  v30 = result / 1000000 - *(this + 17);
  if ((v30 <= v29 || v29 < 0) && v30 <= 49999)
  {
    operator new();
  }

  return result;
}

void *webrtc::StunBindingRequest::OnTimeout(webrtc::StunBindingRequest *this)
{
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    (*(**(*(this + 7) + 952) + 16))(__p);
    webrtc::SocketAddress::ToSensitiveString(__p, &v12);
    (*(**(this + 7) + 24))(*(this + 7));
    webrtc::webrtc_logging_impl::Log("\r\t\n\t\n\t", v2, v3, v4, v5, v6, v7, v8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/stun_port.cc");
    if (v13 < 0)
    {
      operator delete(v12);
      if ((v11 & 0x80000000) == 0)
      {
        return webrtc::UDPPort::OnStunBindingOrResolveRequestFailed(*(this + 7), (this + 64), 701, "STUN binding request timed out.", 0x1FuLL);
      }
    }

    else if ((v11 & 0x80000000) == 0)
    {
      return webrtc::UDPPort::OnStunBindingOrResolveRequestFailed(*(this + 7), (this + 64), 701, "STUN binding request timed out.", 0x1FuLL);
    }

    operator delete(__p[0]);
  }

  return webrtc::UDPPort::OnStunBindingOrResolveRequestFailed(*(this + 7), (this + 64), 701, "STUN binding request timed out.", 0x1FuLL);
}

unint64_t webrtc::IceCandidateErrorEvent::IceCandidateErrorEvent(unint64_t a1, _BYTE *a2, size_t a3, int a4, _BYTE *__src, size_t __len, int a7, int a8, _BYTE *__srca, size_t __lena)
{
  if (a3 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_27;
  }

  if (a3 > 0x16)
  {
    operator new();
  }

  *(a1 + 23) = a3;
  v15 = (a1 + a3);
  if (a1 <= a2 && v15 > a2)
  {
    goto LABEL_26;
  }

  if (a3)
  {
    memmove(a1, a2, a3);
  }

  *v15 = 0;
  *(a1 + 24) = a4;
  if (__len > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_27;
  }

  if (__len > 0x16)
  {
    operator new();
  }

  *(a1 + 55) = __len;
  v16 = (a1 + 32 + __len);
  if (a1 + 32 <= __src && v16 > __src)
  {
    goto LABEL_26;
  }

  if (__len)
  {
    memmove((a1 + 32), __src, __len);
  }

  *v16 = 0;
  *(a1 + 56) = a7;
  if (__lena > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_27:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (__lena > 0x16)
  {
    operator new();
  }

  *(a1 + 87) = __lena;
  v17 = (a1 + 64 + __lena);
  if (a1 + 64 <= __srca && v17 > __srca)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (__lena)
  {
    memmove((a1 + 64), __srca, __lena);
  }

  *v17 = 0;
  return a1;
}

uint64_t absl::internal_any_invocable::RemoteInvoker<false,void,webrtc::UDPPort::AddressResolver::Resolve(webrtc::SocketAddress const&,int,webrtc::FieldTrialsView const&)::$_0 &>(uint64_t result)
{
  v1 = (*result + 8);
  v2 = **result;
  v3 = *(v2 + 48);
  if (v3)
  {
    v4 = v2 + 48;
    do
    {
      result = webrtc::SocketAddress::operator<((v3 + 32), v1);
      if (result)
      {
        v5 = 8;
      }

      else
      {
        v5 = 0;
      }

      if (!result)
      {
        v4 = v3;
      }

      v3 = *(v3 + v5);
    }

    while (v3);
    if (v4 != v2 + 48)
    {
      result = webrtc::SocketAddress::operator<(v1, (v4 + 32));
      if ((result & 1) == 0)
      {
        v6 = (*(**(v4 + 104) + 32))(*(v4 + 104));
        v9 = (*(*v6 + 24))(v6);
        v7 = *(v2 + 32);
        if (v7)
        {
          return (*(*v7 + 48))(v7, v4 + 32, &v9);
        }

        else
        {
          v8 = std::__throw_bad_function_call[abi:sn200100]();
          return absl::internal_any_invocable::RemoteManagerNontrivial<webrtc::UDPPort::AddressResolver::Resolve(webrtc::SocketAddress const&,int,webrtc::FieldTrialsView const&)::$_0>(v8);
        }
      }
    }
  }

  return result;
}

uint64_t absl::internal_any_invocable::RemoteManagerNontrivial<webrtc::UDPPort::AddressResolver::Resolve(webrtc::SocketAddress const&,int,webrtc::FieldTrialsView const&)::$_0>(uint64_t result, uint64_t *a2, void *a3)
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

uint64_t std::__function::__func<webrtc::UDPPort::UDPPort(webrtc::Port::PortParametersRef const&,webrtc::IceCandidateType,webrtc::AsyncPacketSocket *,BOOL)::$_0,std::allocator<webrtc::UDPPort::UDPPort(webrtc::Port::PortParametersRef const&,webrtc::IceCandidateType,webrtc::AsyncPacketSocket *,BOOL)::$_0>,void ()(void const*,unsigned long,webrtc::StunRequest *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2882A07F0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<webrtc::UDPPort::UDPPort(webrtc::Port::PortParametersRef const&,webrtc::IceCandidateType,unsigned short,unsigned short,BOOL)::$_0,std::allocator<webrtc::UDPPort::UDPPort(webrtc::Port::PortParametersRef const&,webrtc::IceCandidateType,unsigned short,unsigned short,BOOL)::$_0>,void ()(void const*,unsigned long,webrtc::StunRequest *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2882A0838;
  a2[1] = v2;
  return result;
}

uint64_t sigslot::_opaque_connection::emitter<webrtc::UDPPort,webrtc::AsyncPacketSocket *,webrtc::SentPacketInfo const&>(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = a1[1];
  if (v3)
  {
    v4 = v3 - 232;
  }

  else
  {
    v4 = 0;
  }

  v5 = (v4 + (v2 >> 1));
  if (v2)
  {
    return (*(*v5 + v1))();
  }

  else
  {
    return v1(v5);
  }
}

uint64_t sigslot::_opaque_connection::emitter<webrtc::UDPPort,webrtc::AsyncPacketSocket *>(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = a1[1];
  if (v3)
  {
    v4 = v3 - 232;
  }

  else
  {
    v4 = 0;
  }

  v5 = (v4 + (v2 >> 1));
  if (v2)
  {
    return (*(*v5 + v1))();
  }

  else
  {
    return v1(v5);
  }
}

uint64_t sigslot::_opaque_connection::emitter<webrtc::UDPPort,webrtc::AsyncPacketSocket *,webrtc::SocketAddress const&>(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = a1[1];
  if (v3)
  {
    v4 = v3 - 232;
  }

  else
  {
    v4 = 0;
  }

  v5 = (v4 + (v2 >> 1));
  if (v2)
  {
    return (*(*v5 + v1))();
  }

  else
  {
    return v1(v5);
  }
}

uint64_t std::__function::__func<webrtc::UDPPort::ResolveStunAddress(webrtc::SocketAddress const&)::$_0,std::allocator<webrtc::UDPPort::ResolveStunAddress(webrtc::SocketAddress const&)::$_0>,void ()(webrtc::SocketAddress const&,int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2882A0880;
  a2[1] = v2;
  return result;
}

void std::__function::__func<webrtc::UDPPort::ResolveStunAddress(webrtc::SocketAddress const&)::$_0,std::allocator<webrtc::UDPPort::ResolveStunAddress(webrtc::SocketAddress const&)::$_0>,void ()(webrtc::SocketAddress const&,int)>::operator()(uint64_t a1, const void **a2, int *a3)
{
  v4 = *(a1 + 8);
  v5 = *a3;
  __p[0] = 0;
  __p[1] = 0;
  v38 = 0;
  v39 = &unk_28828CE50;
  v44 = 0;
  memset(&v45[1], 0, 20);
  v40 = 0;
  v41 = *(&v45[1] + 4);
  v42 = 0;
  v43 = 0;
  if (v5)
  {
    goto LABEL_54;
  }

  v13 = *(v4 + 121);
  v14 = (*(*v4 + 24))(v4);
  webrtc::Network::GetBestIP(v14, v45);
  v17 = *(v13 + 48);
  v15 = v13 + 48;
  v16 = v17;
  if (!v17)
  {
    goto LABEL_54;
  }

  v18 = LODWORD(v45[1]);
  v19 = v15;
  do
  {
    v20 = webrtc::SocketAddress::operator<((v16 + 32), a2);
    if (v20)
    {
      v21 = 8;
    }

    else
    {
      v21 = 0;
    }

    if (!v20)
    {
      v19 = v16;
    }

    v16 = *(v16 + v21);
  }

  while (v16);
  if (v19 == v15 || (webrtc::SocketAddress::operator<(a2, (v19 + 32)) & 1) != 0 || (v22 = (*(**(v19 + 104) + 32))(*(v19 + 104)), ((*(*v22 + 16))(v22, v18, __p) & 1) == 0))
  {
LABEL_54:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      (*(*v4 + 176))(v45, v4);
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v6, v7, v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/stun_port.cc");
      if (SHIBYTE(v45[2]) < 0)
      {
        operator delete(v45[0]);
      }
    }

    webrtc::UDPPort::OnStunBindingOrResolveRequestFailed(v4, a2, 701, "STUN host lookup received error.", 0x20uLL);
  }

  else
  {
    v23 = (v4 + 816);
    v24 = *(v4 + 103);
    if (!v24)
    {
      goto LABEL_51;
    }

    v25 = (v4 + 824);
    v26 = (v4 + 824);
    do
    {
      v27 = webrtc::SocketAddress::operator<(v24 + 4, a2);
      if (v27)
      {
        v28 = 1;
      }

      else
      {
        v28 = 0;
      }

      if (!v27)
      {
        v26 = v24;
      }

      v24 = v24[v28];
    }

    while (v24);
    if (v26 != v25 && (webrtc::SocketAddress::operator<(a2, v26 + 4) & 1) == 0)
    {
      v29 = v26[1];
      if (v29)
      {
        do
        {
          v30 = v29;
          v29 = *v29;
        }

        while (v29);
      }

      else
      {
        v31 = v26;
        do
        {
          v30 = v31[2];
          v32 = *v30 == v31;
          v31 = v30;
        }

        while (!v32);
      }

      if (*v23 == v26)
      {
        *v23 = v30;
      }

      --*(v4 + 104);
      std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(*(v4 + 103), v26);
      if (*(v26 + 55) < 0)
      {
        operator delete(v26[4]);
      }

      operator delete(v26);
    }

    v33 = *v25;
    if (!*v25)
    {
      goto LABEL_51;
    }

    v34 = (v4 + 824);
    do
    {
      v35 = webrtc::SocketAddress::operator<(v33 + 4, __p);
      if (v35)
      {
        v36 = 1;
      }

      else
      {
        v36 = 0;
      }

      if (!v35)
      {
        v34 = v33;
      }

      v33 = v33[v36];
    }

    while (v33);
    if (v34 == v25 || webrtc::SocketAddress::operator<(__p, v34 + 4))
    {
LABEL_51:
      std::__tree<webrtc::SocketAddress>::__emplace_unique_key_args<webrtc::SocketAddress,webrtc::SocketAddress const&>(v4 + 816, __p);
      webrtc::UDPPort::SendStunBindingRequest(v4, __p);
    }
  }

  if (SHIBYTE(v38) < 0)
  {
    operator delete(__p[0]);
  }
}

void webrtc::StunRequestManager::SendDelayed(webrtc::StunRequestManager *this, webrtc::StunRequest *a2, int a3)
{
  std::__tree<std::__value_type<std::string,std::unique_ptr<webrtc::StunRequest>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<webrtc::StunRequest>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<webrtc::StunRequest>>>>::__emplace_unique_key_args<std::string,std::string const&,std::unique_ptr<webrtc::StunRequest>>(this + 8, (*(a2 + 2) + 40));
  if (a2)
  {
    (*(*a2 + 8))(a2);
  }

  v5.var0 = 1000 * a3;
  webrtc::StunRequest::Send(a2, v5);
}

void webrtc::StunRequest::Send(webrtc::StunRequest *this, TimeDelta a2)
{
  v4 = *(this + 5);
  if (v4)
  {
    atomic_fetch_add_explicit(v4, 1u, memory_order_relaxed);
    *(v4 + 4) = 1;
    if (atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
    {
      MEMORY[0x2743DA540]();
    }

    if (a2.var0)
    {
LABEL_5:
      v5 = *(this + 5);
      if (v5)
      {
        atomic_fetch_add_explicit(v5, 1u, memory_order_relaxed);
      }

      operator new();
    }
  }

  else
  {
    MEMORY[4] = 1;
    if (a2.var0)
    {
      goto LABEL_5;
    }
  }

  webrtc::StunRequest::SendInternal(this);
}

uint64_t webrtc::StunRequestManager::CheckResponse(webrtc::StunRequestManager *this, webrtc::StunMessage *a2)
{
  v4 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(this + 8, a2 + 5);
  if ((this + 16) == v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = v4[7];
  v7 = *(v6 + 16);
  v8 = *(v7 + 96);
  if (*(v6 + 48) != 1)
  {
    goto LABEL_44;
  }

  if (!v8)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v10, v11, v12, v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/stun_request.cc");
      v60 = 0;
      v18 = *(a2 + 1);
      v17 = *(a2 + 2);
      if (v18 == v17)
      {
        goto LABEL_52;
      }

      goto LABEL_47;
    }

    goto LABEL_44;
  }

  v9 = *(a2 + 24);
  if (v9 == 2)
  {
    if (*(a2 + 127) < 0)
    {
      std::string::__init_copy_ctor_external(&v62, *(a2 + 13), *(a2 + 14));
      v19 = *(v6 + 16);
      if ((*(v19 + 127) & 0x80000000) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v62 = *(a2 + 104);
      v19 = *(v6 + 16);
      if ((*(v19 + 127) & 0x80000000) == 0)
      {
LABEL_13:
        v61 = *(v19 + 104);
        goto LABEL_17;
      }
    }

    std::string::__init_copy_ctor_external(&v61, *(v19 + 104), *(v19 + 112));
LABEL_17:
    v20 = HIBYTE(v62.__r_.__value_.__r.__words[2]);
    if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v62.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v62.__r_.__value_.__l.__size_;
    }

    v22 = HIBYTE(v61.__r_.__value_.__r.__words[2]);
    v23 = SHIBYTE(v61.__r_.__value_.__r.__words[2]);
    if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v22 = v61.__r_.__value_.__l.__size_;
    }

    if (size == v22)
    {
      if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24 = &v62;
      }

      else
      {
        v24 = v62.__r_.__value_.__r.__words[0];
      }

      if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v25 = &v61;
      }

      else
      {
        v25 = v61.__r_.__value_.__r.__words[0];
      }

      v4 = memcmp(v24, v25, size);
      v26 = v4 == 0;
      if ((v23 & 0x80000000) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v26 = 0;
      if ((SHIBYTE(v61.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_33:
        if (v20 < 0)
        {
          operator delete(v62.__r_.__value_.__l.__data_);
          if (v26)
          {
            goto LABEL_44;
          }
        }

        else if (v26)
        {
          goto LABEL_44;
        }

        v9 = *(a2 + 24);
LABEL_38:
        if (v9 != 3)
        {
          webrtc::webrtc_checks_impl::UnreachableCodeReached(v4);
        }

        v27 = *(v6 + 16);
        if (*(v27 + 127) < 0)
        {
          std::string::__init_copy_ctor_external(&v62, *(v27 + 104), *(v27 + 112));
          if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
          {
            goto LABEL_42;
          }
        }

        else
        {
          v62 = *(v27 + 104);
          if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
          {
LABEL_42:
            *(a2 + 24) = 0;
            goto LABEL_43;
          }
        }

        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v28, v29, v30, v31, v32, v33, v34, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/transport/stun.cc");
        goto LABEL_42;
      }
    }

    operator delete(v61.__r_.__value_.__l.__data_);
    v20 = HIBYTE(v62.__r_.__value_.__r.__words[2]);
    goto LABEL_33;
  }

  if (v9)
  {
    goto LABEL_38;
  }

  if (*(v7 + 127) < 0)
  {
    std::string::__init_copy_ctor_external(&v62, *(v7 + 104), *(v7 + 112));
  }

  else
  {
    v62 = *(v7 + 104);
  }

LABEL_43:
  webrtc::StunMessage::ValidateMessageIntegrity(a2, &v62);
  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
    v60 = v8;
    v18 = *(a2 + 1);
    v17 = *(a2 + 2);
    if (v18 == v17)
    {
      goto LABEL_52;
    }

    goto LABEL_47;
  }

LABEL_44:
  v60 = v8;
  v18 = *(a2 + 1);
  v17 = *(a2 + 2);
  if (v18 == v17)
  {
    goto LABEL_52;
  }

  do
  {
LABEL_47:
    if ((*(*v18 + 8) & 0x80000000) == 0 && !(*(*a2 + 24))(a2))
    {
      operator new();
    }

    v18 += 8;
  }

  while (v18 != v17);
LABEL_52:
  v35 = *(a2 + 16);
  v36 = *(*(v6 + 16) + 32);
  v37 = v36 & 0x110;
  v38 = (v36 & 0x110) == 0 && (v36 | 0x100) == v35;
  if (v38)
  {
    if (*(a2 + 24) != 2 && v60)
    {
      return 0;
    }

    v49 = v5[7];
    v5[7] = 0;
    v50 = v5[1];
    if (v50)
    {
      do
      {
        v51 = v50;
        v50 = *v50;
      }

      while (v50);
    }

    else
    {
      v54 = v5;
      do
      {
        v51 = v54[2];
        v38 = *v51 == v54;
        v54 = v51;
      }

      while (!v38);
    }

    if (*(this + 1) == v5)
    {
      *(this + 1) = v51;
    }

    v55 = *(this + 2);
    --*(this + 3);
    std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v55, v5);
    v56 = v5[7];
    v5[7] = 0;
    if (v56)
    {
      (*(*v56 + 8))(v56);
    }

    if (*(v5 + 55) < 0)
    {
      operator delete(v5[4]);
    }

    operator delete(v5);
    (*(*v49 + 16))(v49, a2);
  }

  else
  {
    v39 = v36 | 0x110;
    if (v37)
    {
      v40 = 0;
    }

    else
    {
      v40 = v39 == v35;
    }

    if (!v40)
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v41, v42, v43, v44, v45, v46, v47, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/stun_request.cc");
      }

      return 0;
    }

    v49 = v5[7];
    v5[7] = 0;
    v52 = v5[1];
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
      v57 = v5;
      do
      {
        v53 = v57[2];
        v38 = *v53 == v57;
        v57 = v53;
      }

      while (!v38);
    }

    if (*(this + 1) == v5)
    {
      *(this + 1) = v53;
    }

    v58 = *(this + 2);
    --*(this + 3);
    std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v58, v5);
    v59 = v5[7];
    v5[7] = 0;
    if (v59)
    {
      (*(*v59 + 8))(v59);
    }

    if (*(v5 + 55) < 0)
    {
      operator delete(v5[4]);
    }

    operator delete(v5);
    (*(*v49 + 24))(v49, a2);
  }

  (*(*v49 + 8))(v49);
  return 1;
}

uint64_t webrtc::StunRequestManager::CheckResponse(webrtc::StunRequestManager *this, const void **a2, unint64_t a3)
{
  if (a3 < 0x14)
  {
    return 0;
  }

  v29 = 0;
  v30 = 0;
  v7 = (a2 + 1);
  if (&v28 <= a2 + 1 && &v29 + 4 > v7)
  {
    __break(1u);
    goto LABEL_36;
  }

  v28 = *v7;
  LODWORD(v29) = *(a2 + 4);
  HIBYTE(v30) = 12;
  v8 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(this + 8, &v28);
  if ((this + 16) == v8)
  {
    return 0;
  }

  v27[0] = a2;
  v27[1] = a3;
  v27[2] = 0;
  v27[3] = a3;
  v9 = (*(**(v8[7] + 16) + 16))(*(v8[7] + 16));
  if (webrtc::StunMessage::Read(v9, v27))
  {
    result = webrtc::StunRequestManager::CheckResponse(this, v9);
    if (!v9)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    if (v30 >= 0)
    {
      v18 = &v28;
    }

    else
    {
      v18 = v28;
    }

    if (v30 >= 0)
    {
      v19 = HIBYTE(v30);
    }

    else
    {
      v19 = v29;
    }

    v20 = 2 * v19;
    if ((2 * v19) < 0x7FFFFFFFFFFFFFF8)
    {
      if (v20 >= 0x17)
      {
        operator new();
      }

      v26 = 2 * v19;
      if (v20)
      {
        bzero(&__p, 2 * v19);
      }

      *(&__p + 2 * v19) = 0;
      p_p = __p;
      if (v26 >= 0)
      {
        p_p = &__p;
      }

      if (v19)
      {
        v23 = p_p + 1;
        do
        {
          v24 = *v18;
          v18 = (v18 + 1);
          v23 += 2;
          --v19;
        }

        while (v19);
      }

      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v11, v12, v13, v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/stun_request.cc");
      if (v26 < 0)
      {
        operator delete(__p);
      }

      goto LABEL_33;
    }

LABEL_36:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

LABEL_33:
  result = 0;
  if (v9)
  {
LABEL_8:
    v10 = result;
    (*(*v9 + 8))(v9);
    result = v10;
  }

LABEL_9:
  if (SHIBYTE(v30) < 0)
  {
    v21 = result;
    operator delete(v28);
    return v21;
  }

  return result;
}

void webrtc::StunRequest::StunRequest(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *a1 = &unk_2882A08C8;
  *(a1 + 8) = a2;
  v3 = *a3;
  *a3 = 0;
  *(a1 + 16) = v3;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 36) = 0;
  operator new();
}

void webrtc::StunRequest::~StunRequest(webrtc::StunRequest *this)
{
  *this = &unk_2882A08C8;
  v2 = *(this + 5);
  *(v2 + 4) = 0;
  if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }
}

{
  *this = &unk_2882A08C8;
  v2 = *(this + 5);
  *(v2 + 4) = 0;
  if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  JUMPOUT(0x2743DA540);
}

void webrtc::StunRequest::SendInternal(webrtc::StunRequest *this)
{
  if (*(this + 36) != 1)
  {
    if (webrtc::g_clock)
    {
      v7 = (*(*webrtc::g_clock + 16))(webrtc::g_clock);
    }

    else
    {
      if (!dword_28100D8E4)
      {
        mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
      }

      v7 = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
    }

    *(this + 3) = v7 / 1000000;
    operator new[]();
  }

  (*(*this + 32))(this);
  v2 = *(this + 1);
  v3 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>((v2 + 1), (*(this + 2) + 40));
  if (v2 + 2 != v3)
  {
    v4 = v3;
    v5 = v3[1];
    if (v5)
    {
      do
      {
        v6 = v5;
        v5 = *v5;
      }

      while (v5);
    }

    else
    {
      v8 = v3;
      do
      {
        v6 = v8[2];
        v9 = *v6 == v8;
        v8 = v6;
      }

      while (!v9);
    }

    if (v2[1] == v3)
    {
      v2[1] = v6;
    }

    v10 = v2[2];
    --v2[3];
    std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v10, v4);
    v11 = v4[7];
    v4[7] = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    if (*(v4 + 55) < 0)
    {
      operator delete(v4[4]);
    }

    operator delete(v4);
  }
}

uint64_t webrtc::StunRequest::OnSent(uint64_t this)
{
  v1 = *(this + 32);
  *(this + 32) = v1 + 1;
  if (v1 >= 8)
  {
    *(this + 36) = 1;
  }

  return this;
}

uint64_t webrtc::StunRequest::resend_delay(webrtc::StunRequest *this)
{
  v1 = *(this + 8);
  v2 = 250 << (v1 - 1);
  if (v2 >= 8000)
  {
    v2 = 8000;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

void std::__tree<std::__value_type<std::string,std::unique_ptr<webrtc::StunRequest>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<webrtc::StunRequest>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<webrtc::StunRequest>>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::unique_ptr<webrtc::StunRequest>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<webrtc::StunRequest>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<webrtc::StunRequest>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::unique_ptr<webrtc::StunRequest>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<webrtc::StunRequest>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<webrtc::StunRequest>>>>::destroy(a1, *(a2 + 1));
    v4 = *(a2 + 7);
    *(a2 + 7) = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
      v5 = a2;
    }

    else
    {
      v5 = a2;
    }

    operator delete(v5);
  }
}

void *std::__tree<std::__value_type<std::string,std::unique_ptr<webrtc::StunRequest>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<webrtc::StunRequest>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<webrtc::StunRequest>>>>::__emplace_unique_key_args<std::string,std::string const&,std::unique_ptr<webrtc::StunRequest>>(uint64_t a1, const void **a2)
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

uint64_t webrtc::SubbandErleEstimator::SubbandErleEstimator(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, double a5, int32x2_t a6)
{
  *a1 = *(a3 + 252);
  *(a1 + 4) = *(a3 + 240);
  a6.i32[0] = *(a3 + 248);
  v8 = vdupq_lane_s32(*(a3 + 244), 0);
  *(a1 + 8) = v8;
  *(a1 + 24) = v8;
  *(a1 + 40) = v8;
  *(a1 + 56) = v8;
  *(a1 + 72) = v8;
  *(a1 + 88) = v8;
  *(a1 + 104) = v8;
  *(a1 + 120) = v8;
  v9 = vdupq_lane_s32(a6, 0);
  *(a1 + 136) = v9;
  *(a1 + 152) = v9;
  *(a1 + 168) = v9;
  *(a1 + 184) = v9;
  *(a1 + 200) = v9;
  *(a1 + 216) = v9;
  *(a1 + 232) = v9;
  *(a1 + 248) = v9;
  *(a1 + 264) = a6.i32[0];
  (*(**(a2 + 8) + 16))(__p);
  v12 = v20;
  if ((v20 & 0x80u) != 0)
  {
    v12 = __p[1];
  }

  if (v12 >= 7)
  {
    v14 = __p[0];
    if ((v20 & 0x80u) == 0)
    {
      v14 = __p;
    }

    v15 = *v14;
    v16 = *(v14 + 3);
    v13 = v15 != 1650552389 || v16 != 1684368482;
    if (v20 < 0)
    {
LABEL_18:
      operator delete(__p[0]);
      *(a1 + 268) = v13;
      *(a1 + 280) = 0;
      *(a1 + 288) = 0;
      *(a1 + 272) = 0;
      if (!a4)
      {
        goto LABEL_19;
      }

LABEL_16:
      if (a4 < 0xFC0FC0FC0FC0FDLL)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }
  }

  else
  {
    v13 = 1;
    if (v20 < 0)
    {
      goto LABEL_18;
    }
  }

  *(a1 + 268) = v13;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 272) = 0;
  if (a4)
  {
    goto LABEL_16;
  }

LABEL_19:
  *(a1 + 504) = 0;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 296) = 0u;
  webrtc::SubbandErleEstimator::Reset(a1, 0.0, v10, v11);
  return a1;
}

uint64_t webrtc::SubbandErleEstimator::Reset(uint64_t this, double a2, double a3, int32x2_t a4)
{
  v5 = *(this + 368);
  v4 = *(this + 376);
  v6 = v4 - v5;
  if (v4 != v5)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0xFC0FC0FC0FC0FC1 * (v6 >> 2);
    if (v10 <= 1)
    {
      v10 = 1;
    }

    *&v11 = 0x101010101010101;
    *(&v11 + 1) = 0x101010101010101;
    do
    {
      v12 = *(this + 368);
      if (0xFC0FC0FC0FC0FC1 * ((*(this + 376) - v12) >> 2) <= v9)
      {
        goto LABEL_20;
      }

      a4.i32[0] = *(this + 4);
      v13 = vdupq_lane_s32(a4, 0);
      v14 = (v12 + v8);
      *v14 = v13;
      v14[1] = v13;
      v14[2] = v13;
      v14[3] = v13;
      v14[4] = v13;
      v14[5] = v13;
      v14[6] = v13;
      v14[7] = v13;
      v14[8] = v13;
      v14[9] = v13;
      v14[10] = v13;
      v14[11] = v13;
      v14[12] = v13;
      v14[13] = v13;
      v14[14] = v13;
      v14[15] = v13;
      v14[16].i32[0] = a4.i32[0];
      v15 = *(this + 392);
      if (0xFC0FC0FC0FC0FC1 * ((*(this + 400) - v15) >> 2) <= v9)
      {
        goto LABEL_20;
      }

      a4.i32[0] = *(this + 4);
      v16 = vdupq_lane_s32(a4, 0);
      v17 = (v15 + v8);
      *v17 = v16;
      v17[1] = v16;
      v17[2] = v16;
      v17[3] = v16;
      v17[4] = v16;
      v17[5] = v16;
      v17[6] = v16;
      v17[7] = v16;
      v17[8] = v16;
      v17[9] = v16;
      v17[10] = v16;
      v17[11] = v16;
      v17[12] = v16;
      v17[13] = v16;
      v17[14] = v16;
      v17[15] = v16;
      v17[16].i32[0] = a4.i32[0];
      v18 = *(this + 416);
      if (0xFC0FC0FC0FC0FC1 * ((*(this + 424) - v18) >> 2) <= v9)
      {
        goto LABEL_20;
      }

      a4.i32[0] = *(this + 4);
      v19 = vdupq_lane_s32(a4, 0);
      v20 = (v18 + v8);
      *v20 = v19;
      v20[1] = v19;
      v20[2] = v19;
      v20[3] = v19;
      v20[4] = v19;
      v20[5] = v19;
      v20[6] = v19;
      v20[7] = v19;
      v20[8] = v19;
      v20[9] = v19;
      v20[10] = v19;
      v20[11] = v19;
      v20[12] = v19;
      v20[13] = v19;
      v20[14] = v19;
      v20[15] = v19;
      v20[16].i32[0] = a4.i32[0];
      v21 = *(this + 440);
      if (0xFC0FC0FC0FC0FC1 * ((*(this + 448) - v21) >> 2) <= v9)
      {
        goto LABEL_20;
      }

      v22 = (v21 + v8);
      a4.i32[0] = *(this + 4);
      v23 = vdupq_lane_s32(a4, 0);
      *v22 = v23;
      v22[1] = v23;
      v22[2] = v23;
      v22[3] = v23;
      v22[4] = v23;
      v22[5] = v23;
      v22[6] = v23;
      v22[7] = v23;
      v22[8] = v23;
      v22[9] = v23;
      v22[10] = v23;
      v22[11] = v23;
      v22[12] = v23;
      v22[13] = v23;
      v22[14] = v23;
      v22[15] = v23;
      v22[16].i32[0] = a4.i32[0];
      v24 = *(this + 464);
      if (0xFC0FC0FC0FC0FC1 * (*(this + 472) - v24) <= v9)
      {
        goto LABEL_20;
      }

      v25 = v24 + v7;
      *(v25 + 64) = 1;
      *(v25 + 32) = v11;
      *(v25 + 48) = v11;
      *v25 = v11;
      *(v25 + 16) = v11;
      v26 = *(this + 488);
      if (0xFC0FC0FC0FC0FC1 * ((*(this + 496) - v26) >> 2) <= v9)
      {
        goto LABEL_20;
      }

      v27 = v26 + v8;
      *(v27 + 256) = 0;
      ++v9;
      *(v27 + 224) = 0uLL;
      *(v27 + 240) = 0uLL;
      *(v27 + 192) = 0uLL;
      *(v27 + 208) = 0uLL;
      *(v27 + 160) = 0uLL;
      *(v27 + 176) = 0uLL;
      *(v27 + 128) = 0uLL;
      *(v27 + 144) = 0uLL;
      *(v27 + 96) = 0uLL;
      *(v27 + 112) = 0uLL;
      *(v27 + 64) = 0uLL;
      *(v27 + 80) = 0uLL;
      *(v27 + 32) = 0uLL;
      *(v27 + 48) = 0uLL;
      v8 += 260;
      v7 += 65;
      *v27 = 0uLL;
      *(v27 + 16) = 0uLL;
    }

    while (v10 != v9);
  }

  if (*(this + 448) != *(this + 440))
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
    while (1)
    {
      v31 = *(this + 272);
      if (0xFC0FC0FC0FC0FC1 * ((*(this + 280) - v31) >> 2) <= v30)
      {
        break;
      }

      v32 = v31 + v28;
      *(v32 + 256) = 0;
      *(v32 + 224) = 0uLL;
      *(v32 + 240) = 0uLL;
      *(v32 + 192) = 0uLL;
      *(v32 + 208) = 0uLL;
      *(v32 + 160) = 0uLL;
      *(v32 + 176) = 0uLL;
      *(v32 + 128) = 0uLL;
      *(v32 + 144) = 0uLL;
      *(v32 + 96) = 0uLL;
      *(v32 + 112) = 0uLL;
      *(v32 + 64) = 0uLL;
      *(v32 + 80) = 0uLL;
      *(v32 + 32) = 0uLL;
      *(v32 + 48) = 0uLL;
      *v32 = 0uLL;
      *(v32 + 16) = 0uLL;
      v33 = *(this + 296);
      if (0xFC0FC0FC0FC0FC1 * ((*(this + 304) - v33) >> 2) <= v30)
      {
        break;
      }

      v34 = v33 + v28;
      *(v34 + 256) = 0;
      *(v34 + 224) = 0uLL;
      *(v34 + 240) = 0uLL;
      *(v34 + 192) = 0uLL;
      *(v34 + 208) = 0uLL;
      *(v34 + 160) = 0uLL;
      *(v34 + 176) = 0uLL;
      *(v34 + 128) = 0uLL;
      *(v34 + 144) = 0uLL;
      *(v34 + 96) = 0uLL;
      *(v34 + 112) = 0uLL;
      *(v34 + 64) = 0uLL;
      *(v34 + 80) = 0uLL;
      *(v34 + 32) = 0uLL;
      *(v34 + 48) = 0uLL;
      *v34 = 0uLL;
      *(v34 + 16) = 0uLL;
      v35 = *(this + 344);
      if (v30 >= (*(this + 352) - v35) >> 2)
      {
        break;
      }

      *(v35 + 4 * v30) = 0;
      v36 = *(this + 320);
      if (0xFC0FC0FC0FC0FC1 * (*(this + 328) - v36) <= v30)
      {
        break;
      }

      v37 = v36 + v29;
      *(v37 + 64) = 0;
      *(v37 + 32) = 0uLL;
      *(v37 + 48) = 0uLL;
      *v37 = 0uLL;
      *(v37 + 16) = 0uLL;
      ++v30;
      v29 += 65;
      v28 += 260;
      if (v30 >= 0xFC0FC0FC0FC0FC1 * ((*(this + 448) - *(this + 440)) >> 2))
      {
        return this;
      }
    }

LABEL_20:
    __break(1u);
  }

  return this;
}

void webrtc::SubbandErleEstimator::~SubbandErleEstimator(webrtc::SubbandErleEstimator *this)
{
  v2 = *(this + 61);
  if (v2)
  {
    *(this + 62) = v2;
    operator delete(v2);
  }

  v3 = *(this + 58);
  if (v3)
  {
    *(this + 59) = v3;
    operator delete(v3);
  }

  v4 = *(this + 55);
  if (v4)
  {
    *(this + 56) = v4;
    operator delete(v4);
  }

  v5 = *(this + 52);
  if (v5)
  {
    *(this + 53) = v5;
    operator delete(v5);
  }

  v6 = *(this + 49);
  if (v6)
  {
    *(this + 50) = v6;
    operator delete(v6);
  }

  v7 = *(this + 46);
  if (v7)
  {
    *(this + 47) = v7;
    operator delete(v7);
  }

  v8 = *(this + 43);
  if (v8)
  {
    *(this + 44) = v8;
    operator delete(v8);
  }

  v9 = *(this + 40);
  if (v9)
  {
    *(this + 41) = v9;
    operator delete(v9);
  }

  v10 = *(this + 37);
  if (v10)
  {
    *(this + 38) = v10;
    operator delete(v10);
  }

  v11 = *(this + 34);
  if (v11)
  {
    *(this + 35) = v11;
    operator delete(v11);
  }
}

uint64_t webrtc::SubbandErleEstimator::Update(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t *a7)
{
  if (!a4)
  {
    a3 = 0;
  }

  if (!a6)
  {
    a5 = 0;
  }

  webrtc::SubbandErleEstimator::UpdateAccumulatedSpectra(a1, a2, a3, a4, a5, a6, a7);
  result = webrtc::SubbandErleEstimator::UpdateBands(a1, a7);
  if (*a1 == 1)
  {
    result = webrtc::SubbandErleEstimator::DecreaseErlePerBandForLowRenderSignals(a1);
  }

  v10 = a1[46];
  v11 = a1[47];
  v12 = v11 - v10;
  if (v11 != v10)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0xFC0FC0FC0FC0FC1 * (v12 >> 2);
    v16 = a1[49];
    v17 = 0xFC0FC0FC0FC0FC1 * ((a1[50] - v16) >> 2);
    if (v15 <= 1)
    {
      v15 = 1;
    }

    while (1)
    {
      v18 = (v10 + v13);
      *v18 = *(v10 + v13 + 4);
      v18[64] = *(v10 + v13 + 252);
      if (v17 == v14)
      {
        break;
      }

      v19 = (v16 + v13);
      *v19 = *(v16 + v13 + 4);
      v19[64] = *(v16 + v13 + 252);
      v20 = a1[52];
      if (0xFC0FC0FC0FC0FC1 * ((a1[53] - v20) >> 2) <= v14)
      {
        break;
      }

      v21 = (v20 + v13);
      *v21 = v21[1];
      v21[64] = v21[63];
      ++v14;
      v13 += 260;
      if (v15 == v14)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

void *webrtc::SubbandErleEstimator::UpdateAccumulatedSpectra(void *result, uint64_t a2, unint64_t a3, int a4, unint64_t a5, uint64_t a6, void *a7)
{
  if (a4 >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = a4 & 0x7FFFFFFF;
    v10 = a5;
    v11 = a3;
    while (a7[1] > v8)
    {
      if ((*(*a7 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v8))
      {
        v12 = result[43];
        if (v8 >= (result[44] - v12) >> 2)
        {
          break;
        }

        v14 = result[34];
        v13 = result[35];
        if (*(v12 + 4 * v8) == 6)
        {
          *(v12 + 4 * v8) = 0;
          if (0xFC0FC0FC0FC0FC1 * ((v13 - v14) >> 2) <= v8)
          {
            break;
          }

          v15 = v14 + 260 * v8;
          *(v15 + 256) = 0;
          *(v15 + 224) = 0uLL;
          *(v15 + 240) = 0uLL;
          *(v15 + 192) = 0uLL;
          *(v15 + 208) = 0uLL;
          *(v15 + 160) = 0uLL;
          *(v15 + 176) = 0uLL;
          *(v15 + 128) = 0uLL;
          *(v15 + 144) = 0uLL;
          *(v15 + 96) = 0uLL;
          *(v15 + 112) = 0uLL;
          *(v15 + 64) = 0uLL;
          *(v15 + 80) = 0uLL;
          *(v15 + 32) = 0uLL;
          *(v15 + 48) = 0uLL;
          *v15 = 0uLL;
          *(v15 + 16) = 0uLL;
          v16 = result[37];
          if (0xFC0FC0FC0FC0FC1 * ((result[38] - v16) >> 2) <= v8)
          {
            break;
          }

          v17 = v16 + 260 * v8;
          *(v17 + 256) = 0;
          *(v17 + 224) = 0uLL;
          *(v17 + 240) = 0uLL;
          *(v17 + 192) = 0uLL;
          *(v17 + 208) = 0uLL;
          *(v17 + 160) = 0uLL;
          *(v17 + 176) = 0uLL;
          *(v17 + 128) = 0uLL;
          *(v17 + 144) = 0uLL;
          *(v17 + 96) = 0uLL;
          *(v17 + 112) = 0uLL;
          *(v17 + 64) = 0uLL;
          *(v17 + 80) = 0uLL;
          *(v17 + 32) = 0uLL;
          *(v17 + 48) = 0uLL;
          *v17 = 0uLL;
          *(v17 + 16) = 0uLL;
          v18 = result[40];
          if (0xFC0FC0FC0FC0FC1 * (result[41] - v18) <= v8)
          {
            break;
          }

          v19 = v18 + 65 * v8;
          *(v19 + 64) = 0;
          *(v19 + 32) = 0uLL;
          *(v19 + 48) = 0uLL;
          *v19 = 0uLL;
          *(v19 + 16) = 0uLL;
          v14 = result[34];
          v13 = result[35];
        }

        if (0xFC0FC0FC0FC0FC1 * ((v13 - v14) >> 2) <= v8)
        {
          break;
        }

        v20 = 260 * v8;
        v21 = (v14 + 260 * v8);
        if (v21 >= a3 + 260 * v9 || v14 + v20 + 260 <= a3)
        {
          v23 = (a3 + 260 * v8);
          v24 = vaddq_f32(v23[1], v21[1]);
          *v21 = vaddq_f32(*v23, *v21);
          v21[1] = v24;
          v25 = vaddq_f32(v23[3], v21[3]);
          v21[2] = vaddq_f32(v23[2], v21[2]);
          v21[3] = v25;
          v26 = vaddq_f32(v23[5], v21[5]);
          v21[4] = vaddq_f32(v23[4], v21[4]);
          v21[5] = v26;
          v27 = vaddq_f32(v23[7], v21[7]);
          v21[6] = vaddq_f32(v23[6], v21[6]);
          v21[7] = v27;
          v28 = vaddq_f32(v23[9], v21[9]);
          v21[8] = vaddq_f32(v23[8], v21[8]);
          v21[9] = v28;
          v29 = vaddq_f32(v23[11], v21[11]);
          v21[10] = vaddq_f32(v23[10], v21[10]);
          v21[11] = v29;
          v30 = vaddq_f32(v23[13], v21[13]);
          v21[12] = vaddq_f32(v23[12], v21[12]);
          v21[13] = v30;
          v31 = vaddq_f32(v23[15], v21[15]);
          v21[14] = vaddq_f32(v23[14], v21[14]);
          v21[15] = v31;
          v21 += 16;
          v22 = 256;
        }

        else
        {
          v22 = 0;
        }

        do
        {
          v21->f32[0] = *(v11 + v22) + v21->f32[0];
          v21 = (v21 + 4);
          v22 += 4;
        }

        while (v22 != 260);
        v32 = result[37];
        if (0xFC0FC0FC0FC0FC1 * ((result[38] - v32) >> 2) <= v8)
        {
          break;
        }

        v33 = (v32 + 260 * v8);
        v34 = v32 + v20 + 260;
        if (v33 < a5 + 260 * v9 && v34 > a5)
        {
          v45 = 0;
        }

        else
        {
          v36 = (a5 + 260 * v8);
          v37 = vaddq_f32(v36[1], v33[1]);
          *v33 = vaddq_f32(*v36, *v33);
          v33[1] = v37;
          v38 = vaddq_f32(v36[3], v33[3]);
          v33[2] = vaddq_f32(v36[2], v33[2]);
          v33[3] = v38;
          v39 = vaddq_f32(v36[5], v33[5]);
          v33[4] = vaddq_f32(v36[4], v33[4]);
          v33[5] = v39;
          v40 = vaddq_f32(v36[7], v33[7]);
          v33[6] = vaddq_f32(v36[6], v33[6]);
          v33[7] = v40;
          v41 = vaddq_f32(v36[9], v33[9]);
          v33[8] = vaddq_f32(v36[8], v33[8]);
          v33[9] = v41;
          v42 = vaddq_f32(v36[11], v33[11]);
          v33[10] = vaddq_f32(v36[10], v33[10]);
          v33[11] = v42;
          v43 = vaddq_f32(v36[13], v33[13]);
          v33[12] = vaddq_f32(v36[12], v33[12]);
          v33[13] = v43;
          v44 = vaddq_f32(v36[15], v33[15]);
          v33[14] = vaddq_f32(v36[14], v33[14]);
          v33[15] = v44;
          v33 += 16;
          v45 = 256;
        }

        do
        {
          v33->f32[0] = *(v10 + v45) + v33->f32[0];
          v33 = (v33 + 4);
          v45 += 4;
        }

        while (v45 != 260);
        v46 = result[40];
        if (0xFC0FC0FC0FC0FC1 * (result[41] - v46) <= v8)
        {
          break;
        }

        v47 = 0;
        v48 = v46 + v7;
        do
        {
          while ((*(v48 + v47) & 1) == 0)
          {
            *(v48 + v47) = *(a2 + 4 * v47) < 44015000.0;
            if (++v47 == 65)
            {
              goto LABEL_31;
            }
          }

          *(v48 + v47++) = 1;
        }

        while (v47 != 65);
LABEL_31:
        v49 = result[43];
        if (v8 >= (result[44] - v49) >> 2)
        {
          break;
        }

        ++*(v49 + 4 * v8);
      }

      ++v8;
      v11 += 260;
      v10 += 260;
      v7 += 65;
      if (v8 == v9)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t webrtc::SubbandErleEstimator::UpdateBands(uint64_t result, uint64_t *a2)
{
  v54 = *MEMORY[0x277D85DE8];
  v2 = *(result + 272);
  v3 = 0xFC0FC0FC0FC0FC1 * ((*(result + 280) - v2) >> 2);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = result + 12;
    v8 = *a2;
    v7 = a2[1];
    for (i = 1; ; i += 65)
    {
      if (v5 == v7)
      {
        goto LABEL_129;
      }

      if ((*(v8 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v5))
      {
        v10 = *(result + 344);
        if (v5 >= (*(result + 352) - v10) >> 2)
        {
          goto LABEL_129;
        }

        if (*(v10 + 4 * v5) == 6)
        {
          break;
        }
      }

LABEL_3:
      ++v5;
      v2 += 260;
      v4 += 260;
      if (v5 == (v3 & 0x7FFFFFFF))
      {
        return result;
      }
    }

    memset(v53, 0, sizeof(v53));
    v11 = *(result + 296);
    if (0xFC0FC0FC0FC0FC1 * ((*(result + 304) - v11) >> 2) > v5)
    {
      if (v3 > v5)
      {
        v12 = v11 + v4;
        for (j = 1; j != 64; ++j)
        {
          v14 = *(v12 + 4 * j);
          if (v14 > 0.0)
          {
            *&v52[4 * j] = *(v2 + 4 * j) / v14;
            *(v53 + j) = 1;
          }
        }

        goto LABEL_77;
      }

      v15 = (v11 + 260 * v5);
      if (v15[1] <= 0.0 && v15[2] <= 0.0 && v15[3] <= 0.0 && v15[4] <= 0.0 && v15[5] <= 0.0 && v15[6] <= 0.0 && v15[7] <= 0.0 && v15[8] <= 0.0 && v15[9] <= 0.0 && v15[10] <= 0.0 && v15[11] <= 0.0 && v15[12] <= 0.0 && v15[13] <= 0.0 && v15[14] <= 0.0 && v15[15] <= 0.0 && v15[16] <= 0.0 && v15[17] <= 0.0 && v15[18] <= 0.0 && v15[19] <= 0.0 && v15[20] <= 0.0 && v15[21] <= 0.0 && v15[22] <= 0.0 && v15[23] <= 0.0 && v15[24] <= 0.0 && v15[25] <= 0.0 && v15[26] <= 0.0 && v15[27] <= 0.0 && v15[28] <= 0.0 && v15[29] <= 0.0 && v15[30] <= 0.0 && v15[31] <= 0.0 && v15[32] <= 0.0 && v15[33] <= 0.0 && v15[34] <= 0.0 && v15[35] <= 0.0 && v15[36] <= 0.0 && v15[37] <= 0.0 && v15[38] <= 0.0 && v15[39] <= 0.0 && v15[40] <= 0.0 && v15[41] <= 0.0 && v15[42] <= 0.0 && v15[43] <= 0.0 && v15[44] <= 0.0 && v15[45] <= 0.0 && v15[46] <= 0.0 && v15[47] <= 0.0 && v15[48] <= 0.0 && v15[49] <= 0.0 && v15[50] <= 0.0 && v15[51] <= 0.0 && v15[52] <= 0.0 && v15[53] <= 0.0 && v15[54] <= 0.0 && v15[55] <= 0.0 && v15[56] <= 0.0 && v15[57] <= 0.0 && v15[58] <= 0.0 && v15[59] <= 0.0 && v15[60] <= 0.0 && v15[61] <= 0.0 && v15[62] <= 0.0 && v15[63] <= 0.0)
      {
LABEL_77:
        if (*result != 1)
        {
LABEL_97:
          v29 = 0;
          while (1)
          {
            if (*(v53 + v29 + 1) == 1)
            {
              v37 = *(result + 320);
              if (0xFC0FC0FC0FC0FC1 * (*(result + 328) - v37) <= v5)
              {
                goto LABEL_129;
              }

              v38 = *(result + 368);
              if (0xFC0FC0FC0FC0FC1 * ((*(result + 376) - v38) >> 2) <= v5)
              {
                goto LABEL_129;
              }

              v39 = v38 + v4 + 4 * v29;
              v40 = *&v52[4 * v29 + 4];
              v41 = *(result + 4);
              v42 = *(v6 + 4 * v29);
              v43 = *(v39 + 4);
              v33 = 0.1;
              if (*(v37 + i + v29))
              {
                v33 = 0.0;
              }

              v44 = 0.05;
              if (v43 > v40)
              {
                v44 = v33;
              }

              v45 = v43 + (v44 * (v40 - v43));
              if (v45 < v42)
              {
                v42 = v45;
              }

              if (v45 > v41)
              {
                v41 = v42;
              }

              *(v39 + 4) = v41;
              if (*result == 1)
              {
                v46 = *(result + 392);
                if (0xFC0FC0FC0FC0FC1 * ((*(result + 400) - v46) >> 2) <= v5)
                {
                  goto LABEL_129;
                }

                v47 = v46 + v4 + 4 * v29;
                v48 = *(v6 + 4 * v29);
                v49 = *(v47 + 4);
                v50 = 0.05;
                if (v49 > v40)
                {
                  v50 = v33;
                }

                v51 = v49 + (v50 * (v40 - v49));
                if (v51 < v48)
                {
                  v48 = v51;
                }

                if (v51 <= *(result + 4))
                {
                  v48 = *(result + 4);
                }

                *(v47 + 4) = v48;
              }

              v30 = *(result + 416);
              if (0xFC0FC0FC0FC0FC1 * ((*(result + 424) - v30) >> 2) <= v5)
              {
                goto LABEL_129;
              }

              v31 = v30 + v4 + 4 * v29;
              v32 = *(v31 + 4);
              if (v32 <= v40)
              {
                v33 = 0.05;
              }

              v34 = v32 + (v33 * (v40 - v32));
              v35 = 100000.0;
              if (v34 < 100000.0)
              {
                v35 = v34;
              }

              if (v34 > *(result + 4))
              {
                v36 = v35;
              }

              else
              {
                v36 = *(result + 4);
              }

              *(v31 + 4) = v36;
            }

            if (++v29 == 63)
            {
              goto LABEL_3;
            }
          }
        }

        v16 = 0;
        while (1)
        {
          if (*(v53 + v16 + 1) == 1)
          {
            v18 = *(result + 320);
            if (0xFC0FC0FC0FC0FC1 * (*(result + 328) - v18) <= v5)
            {
              break;
            }

            if ((*(v18 + i + v16) & 1) == 0)
            {
              v19 = *(result + 464);
              if (0xFC0FC0FC0FC0FC1 * (*(result + 472) - v19) <= v5)
              {
                break;
              }

              v20 = v19 + i;
              if (*(v20 + v16) == 1)
              {
                *(v20 + v16) = 0;
                if ((*(result + 268) & 1) == 0)
                {
                  v21 = *(result + 440);
                  if (0xFC0FC0FC0FC0FC1 * ((*(result + 448) - v21) >> 2) <= v5)
                  {
                    break;
                  }

                  v22 = *&v52[4 * v16 + 4];
                  v23 = v21 + v4 + 4 * v16;
                  v24 = *(v23 + 4);
                  v25 = 0.15;
                  if (v22 < v24)
                  {
                    v25 = 0.3;
                  }

                  v26 = v24 + (v25 * (v22 - v24));
                  v27 = *(v6 + 4 * v16);
                  if (v26 < v27)
                  {
                    v27 = v26;
                  }

                  if (v26 > *(result + 4))
                  {
                    v28 = v27;
                  }

                  else
                  {
                    v28 = *(result + 4);
                  }

                  *(v23 + 4) = v28;
                }
              }

              v17 = *(result + 488);
              if (0xFC0FC0FC0FC0FC1 * ((*(result + 496) - v17) >> 2) <= v5)
              {
                break;
              }

              *(v17 + v4 + 4 * v16 + 4) = 250;
            }
          }

          if (++v16 == 63)
          {
            goto LABEL_97;
          }
        }
      }
    }

LABEL_129:
    __break(1u);
  }

  return result;
}

void *webrtc::SubbandErleEstimator::DecreaseErlePerBandForLowRenderSignals(void *this)
{
  v1 = -1057222719 * ((this[35] - this[34]) >> 2);
  if (v1 >= 1)
  {
    v2 = 0;
    v3 = this[61];
    v4 = 0xFC0FC0FC0FC0FC1 * ((this[62] - v3) >> 2);
    v5 = v1 & 0x7FFFFFFF;
    v6 = 1;
    while (v2 != v4)
    {
      v7 = v6;
      v8 = 63;
      do
      {
        v9 = *(v3 + 4 * v7);
        *(v3 + 4 * v7) = v9 - 1;
        if (v9 < 152)
        {
          v10 = this[49];
          if (0xFC0FC0FC0FC0FC1 * ((this[50] - v10) >> 2) <= v2)
          {
            goto LABEL_17;
          }

          v11 = this[55];
          if (0xFC0FC0FC0FC0FC1 * ((this[56] - v11) >> 2) <= v2)
          {
            goto LABEL_17;
          }

          v12 = *(v10 + 4 * v7);
          v13 = *(v11 + 4 * v7);
          if (v12 > v13)
          {
            v14 = v12 * 0.97;
            if (v13 >= v14)
            {
              v14 = *(v11 + 4 * v7);
            }

            *(v10 + 4 * v7) = v14;
          }

          if (v9 <= 1)
          {
            v15 = this[58];
            if (0xFC0FC0FC0FC0FC1 * (this[59] - v15) <= v2)
            {
              goto LABEL_17;
            }

            *(v15 + v7) = 1;
            *(v3 + 4 * v7) = 0;
          }
        }

        ++v7;
        --v8;
      }

      while (v8);
      ++v2;
      v6 += 65;
      if (v2 == v5)
      {
        return this;
      }
    }

LABEL_17:
    __break(1u);
  }

  return this;
}

uint64_t webrtc::SubbandNearendDetector::SubbandNearendDetector(uint64_t a1, __int128 *a2, unint64_t a3)
{
  *a1 = &unk_2882A0910;
  v4 = *a2;
  v5 = a2[1];
  *(a1 + 40) = a2[2];
  *(a1 + 24) = v5;
  *(a1 + 8) = v4;
  *(a1 + 56) = a3;
  if (*(a1 + 8) != 1)
  {
    if (!((65 * (*(a1 + 8) - 1)) >> 62))
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  std::vector<webrtc::aec3::MovingAverage>::vector[abi:sn200100]((a1 + 64), a3);
  v6 = 1.0 / (*(a1 + 40) - *(a1 + 32) + 1);
  *(a1 + 88) = 1.0 / (*(a1 + 24) - *(a1 + 16) + 1);
  *(a1 + 92) = v6;
  *(a1 + 96) = 0;
  return a1;
}

__int8 *webrtc::SubbandNearendDetector::Update(__int8 *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result[96] = 0;
  if (*(result + 7))
  {
    v8 = result;
    for (i = 0; i < *(v8 + 7); ++i)
    {
      v11 = *(v8 + 8);
      if (0x6DB6DB6DB6DB6DB7 * ((*(v8 + 9) - v11) >> 3) <= i)
      {
        __break(1u);
        return result;
      }

      v12 = 260 * i;
      v13 = (v11 + 56 * i);
      result = memmove(&__dst, (260 * i + a2), 0x104uLL);
      v14 = v13[3];
      v15 = v13[4];
      if (v14 < v15)
      {
        v16 = *v13;
        if (*v13)
        {
          v17 = 0;
          v18 = 4 * v16;
          v19 = v14 + 1;
          result = v13[3];
          do
          {
            v20 = &result[v18 + -4 - v14 + -4 * v16 * v17];
            p_dst = &__dst;
            if (v20 >= 0x1C)
            {
              if (&__dst >= (&v14->i32[1] + v18 * v17 + (v20 & 0xFFFFFFFFFFFFFFFCLL)) || result >= &__dst.i8[(v20 & 0xFFFFFFFFFFFFFFFCLL) + 4])
              {
                v24 = (v20 >> 2) + 1;
                v25 = 4 * (v24 & 0x7FFFFFFFFFFFFFF8);
                p_dst = (&__dst + v25);
                v22 = &result[v25];
                v26 = (((4 * v16 - 4) >> 2) + 1) & 0x7FFFFFFFFFFFFFF8;
                v27 = &v59;
                v28 = v19;
                do
                {
                  v29 = vaddq_f32(*v28, *v27);
                  v27[-1] = vaddq_f32(v28[-1], v27[-1]);
                  *v27 = v29;
                  v28 += 2;
                  v27 += 2;
                  v26 -= 8;
                }

                while (v26);
                if (v24 == (v24 & 0x7FFFFFFFFFFFFFF8))
                {
                  goto LABEL_9;
                }
              }

              else
              {
                v22 = result;
              }
            }

            else
            {
              v22 = result;
            }

            do
            {
              v30 = *v22++;
              p_dst->f32[0] = v30 + p_dst->f32[0];
              p_dst = (p_dst + 4);
            }

            while (v22 != &result[v18]);
LABEL_9:
            result += 4 * v16;
            ++v17;
            v19 = (v19 + v18);
          }

          while (result < v15);
        }
      }

      v31 = (v13 + 2);
      if (&__dst >= v11 + 56 * i + 20 || v31 >= &v74)
      {
        v33 = *v31;
        v34 = vmulq_n_f32(v59, *v31);
        __dst = vmulq_n_f32(__dst, *v31);
        v59 = v34;
        v60 = vmulq_n_f32(v60, v33);
        v61 = vmulq_n_f32(v61, v33);
        v62 = vmulq_n_f32(v62, v33);
        v63 = vmulq_n_f32(v63, v33);
        v64 = vmulq_n_f32(v64, v33);
        v65 = vmulq_n_f32(v65, v33);
        v66 = vmulq_n_f32(v66, v33);
        v67 = vmulq_n_f32(v67, v33);
        v35 = vmulq_n_f32(v69, *v31);
        v68 = vmulq_n_f32(v68, *v31);
        v69 = v35;
        v36 = vmulq_n_f32(v71, *v31);
        v70 = vmulq_n_f32(v70, *v31);
        v71 = v36;
        v37 = vmulq_n_f32(v73, *v31);
        v32 = 64;
        v72 = vmulq_n_f32(v72, *v31);
        v73 = v37;
      }

      else
      {
        v32 = 0;
      }

      v38 = a6 + v12;
      do
      {
        __dst.f32[v32] = *v31 * __dst.f32[v32];
        ++v32;
      }

      while (v32 != 65);
      if (v13[1])
      {
        result = memmove(&v14->f32[v13[6] * *v13], (v12 + a2), 0x104uLL);
        v13[6] = (v13[6] + 1) % v13[1];
      }

      v39 = *(v8 + 2);
      v40 = *(v8 + 3);
      v41 = (v38 + 4 * v39);
      v42 = 0.0;
      v43 = 4 * v40;
      v44 = 0.0;
      if (v41 != (v38 + 4 * v40 + 4))
      {
        v45 = v43 - 4 * v39 + 4;
        do
        {
          v46 = *v41++;
          v44 = v44 + v46;
          v45 -= 4;
        }

        while (v45);
      }

      v47 = *(v8 + 22);
      v48 = (&__dst + 4 * v39);
      if (v48 != &__dst.i32[v40 + 1])
      {
        v49 = v43 - 4 * v39 + 4;
        v42 = 0.0;
        do
        {
          v50 = v48->f32[0];
          v48 = (v48 + 4);
          v42 = v42 + v50;
          v49 -= 4;
        }

        while (v49);
      }

      v51 = *(v8 + 4);
      v52 = *(v8 + 5);
      v53 = (&__dst + 4 * v51);
      if (v53 == &__dst.i32[v52 + 1])
      {
        v55 = 0.0;
        if ((v8[96] & 1) == 0)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v54 = 4 * v52 - 4 * v51 + 4;
        v55 = 0.0;
        do
        {
          v56 = v53->f32[0];
          v53 = (v53 + 4);
          v55 = v55 + v56;
          v54 -= 4;
        }

        while (v54);
        if ((v8[96] & 1) == 0)
        {
LABEL_42:
          v57 = v47 * v42;
          v10 = v57 < (*(v8 + 12) * (v55 * *(v8 + 23))) && v57 > ((v44 * v47) * *(v8 + 13));
          goto LABEL_4;
        }
      }

      v10 = 1;
LABEL_4:
      v8[96] = v10;
    }
  }

  return result;
}

void webrtc::SubbandNearendDetector::~SubbandNearendDetector(webrtc::SubbandNearendDetector *this)
{
  *this = &unk_2882A0910;
  v2 = *(this + 8);
  if (v2)
  {
    v3 = *(this + 9);
    v4 = *(this + 8);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 32);
        if (v5)
        {
          *(v3 - 24) = v5;
          operator delete(v5);
        }

        v3 -= 56;
      }

      while (v3 != v2);
      v4 = *(this + 8);
    }

    *(this + 9) = v2;
    operator delete(v4);
  }
}

{
  *this = &unk_2882A0910;
  v2 = *(this + 8);
  if (v2)
  {
    v3 = *(this + 9);
    v4 = *(this + 8);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 32);
        if (v5)
        {
          *(v3 - 24) = v5;
          operator delete(v5);
        }

        v3 -= 56;
      }

      while (v3 != v2);
      v4 = *(this + 8);
    }

    *(this + 9) = v2;
    operator delete(v4);
  }

  JUMPOUT(0x2743DA540);
}

void *std::vector<webrtc::aec3::MovingAverage>::vector[abi:sn200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (a2 < 0x492492492492493)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  return result;
}

uint64_t webrtc::Subtractor::Subtractor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  *a1 = 0;
  *(a1 + 8) = a6;
  *(a1 + 16) = a7;
  *(a1 + 24) = *a3;
  v9 = *(a3 + 80);
  v8 = *(a3 + 96);
  v10 = *(a3 + 112);
  *(a1 + 88) = *(a3 + 64);
  *(a1 + 136) = v10;
  *(a1 + 120) = v8;
  *(a1 + 104) = v9;
  v11 = *(a3 + 16);
  v12 = *(a3 + 32);
  *(a1 + 72) = *(a3 + 48);
  *(a1 + 56) = v12;
  *(a1 + 40) = v11;
  v13 = *(a3 + 168);
  v14 = *(a3 + 200);
  v15 = *(a3 + 152);
  *(a1 + 208) = *(a3 + 184);
  *(a1 + 224) = v14;
  *(a1 + 176) = v15;
  *(a1 + 192) = v13;
  v16 = *(a3 + 232);
  v17 = *(a3 + 264);
  v18 = *(a3 + 216);
  *(a1 + 272) = *(a3 + 248);
  *(a1 + 288) = v17;
  *(a1 + 240) = v18;
  *(a1 + 256) = v16;
  v20 = *(a3 + 296);
  v19 = *(a3 + 312);
  v21 = *(a3 + 280);
  *(a1 + 350) = *(a3 + 326);
  *(a1 + 320) = v20;
  *(a1 + 336) = v19;
  *(a1 + 304) = v21;
  v22 = *(a3 + 136);
  *(a1 + 144) = *(a3 + 120);
  *(a1 + 160) = v22;
  v23 = *(a3 + 336);
  v24 = *(a3 + 352);
  *(a1 + 385) = *(a3 + 361);
  *(a1 + 360) = v23;
  *(a1 + 376) = v24;
  *(a1 + 408) = *(a3 + 384);
  *(a1 + 416) = *(a3 + 392);
  v25 = *(a3 + 400);
  *(a1 + 432) = *(a3 + 408);
  *(a1 + 424) = v25;
  v26 = *(a3 + 412);
  *(a1 + 444) = *(a3 + 420);
  *(a1 + 436) = v26;
  *(a1 + 448) = *(a3 + 424);
  v27 = *(a3 + 432);
  *(a1 + 464) = *(a3 + 440);
  *(a1 + 456) = v27;
  v28 = *(a3 + 444);
  *(a1 + 476) = *(a3 + 452);
  *(a1 + 468) = v28;
  *(a1 + 480) = *(a3 + 456);
  v29 = *(a3 + 464);
  v30 = *(a3 + 480);
  v31 = *(a3 + 512);
  *(a1 + 520) = *(a3 + 496);
  *(a1 + 536) = v31;
  *(a1 + 488) = v29;
  *(a1 + 504) = v30;
  v32 = *(a3 + 528);
  v33 = *(a3 + 544);
  v34 = *(a3 + 560);
  *(a1 + 593) = *(a3 + 569);
  *(a1 + 568) = v33;
  *(a1 + 584) = v34;
  *(a1 + 552) = v32;
  *(a1 + 616) = *(a3 + 592);
  *(a1 + 632) = a5;
  (*(**(a2 + 8) + 16))(&__p);
  v35 = HIBYTE(v49);
  if (v49 < 0)
  {
    v35 = v48;
  }

  if (v35 < 7)
  {
    v36 = 1;
    if ((SHIBYTE(v49) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  p_p = __p;
  if (v49 >= 0)
  {
    p_p = &__p;
  }

  v38 = *p_p;
  v39 = *(p_p + 3);
  v36 = v38 != 1650552389 || v39 != 1684368482;
  if (SHIBYTE(v49) < 0)
  {
LABEL_15:
    operator delete(__p);
  }

LABEL_16:
  *(a1 + 640) = v36;
  v41 = *(a1 + 632);
  *(a1 + 648) = 0;
  *(a1 + 664) = 0;
  *(a1 + 656) = 0;
  if (v41)
  {
    if (!(v41 >> 61))
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  *(a1 + 688) = 0;
  *(a1 + 672) = 0u;
  *(a1 + 712) = 0;
  *(a1 + 696) = 0u;
  *(a1 + 736) = 0;
  *(a1 + 720) = 0u;
  *(a1 + 760) = 0;
  *(a1 + 744) = 0u;
  *(a1 + 784) = 0;
  *(a1 + 768) = 0u;
  *(a1 + 808) = 0;
  *(a1 + 792) = 0u;
  v42 = *(a1 + 192);
  if (v42 <= *(a1 + 144))
  {
    v42 = *(a1 + 144);
  }

  v48 = 0;
  v49 = 0;
  __p = 0;
  if (v42)
  {
    if (v42 < 0xFC0FC0FC0FC0FDLL)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  std::vector<std::vector<std::array<float,65ul>>>::vector[abi:sn200100]((a1 + 816), 0);
  if (__p)
  {
    v48 = __p;
    operator delete(__p);
  }

  v43 = *(a1 + 632);
  v44 = *(a1 + 192);
  if (v44 <= *(a1 + 144))
  {
    v44 = *(a1 + 144);
  }

  v45 = v44 << 6;
  if (v45)
  {
    if ((v45 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  *(a1 + 840) = 0;
  *(a1 + 848) = 0;
  *(a1 + 856) = 0;
  if (v43)
  {
    if (v43 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  *(a1 + 880) = 0;
  *(a1 + 864) = 0u;
  if (*(a1 + 632))
  {
    operator new();
  }

  return a1;
}

void webrtc::Subtractor::~Subtractor(webrtc::Subtractor *this)
{
  v2 = *(this + 108);
  if (v2)
  {
    v3 = *(this + 109);
    v4 = *(this + 108);
    if (v3 != v2)
    {
      v5 = *(this + 109);
      do
      {
        v7 = *(v5 - 24);
        v5 -= 24;
        v6 = v7;
        if (v7)
        {
          *(v3 - 16) = v6;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *(this + 108);
    }

    *(this + 109) = v2;
    operator delete(v4);
  }

  v8 = *(this + 105);
  if (v8)
  {
    v9 = *(this + 106);
    v10 = *(this + 105);
    if (v9 != v8)
    {
      v11 = *(this + 106);
      do
      {
        v13 = *(v11 - 24);
        v11 -= 24;
        v12 = v13;
        if (v13)
        {
          *(v9 - 16) = v12;
          operator delete(v12);
        }

        v9 = v11;
      }

      while (v11 != v8);
      v10 = *(this + 105);
    }

    *(this + 106) = v8;
    operator delete(v10);
  }

  v14 = *(this + 102);
  if (v14)
  {
    v15 = *(this + 103);
    v16 = *(this + 102);
    if (v15 != v14)
    {
      v17 = *(this + 103);
      do
      {
        v19 = *(v17 - 24);
        v17 -= 24;
        v18 = v19;
        if (v19)
        {
          *(v15 - 16) = v18;
          operator delete(v18);
        }

        v15 = v17;
      }

      while (v17 != v14);
      v16 = *(this + 102);
    }

    *(this + 103) = v14;
    operator delete(v16);
  }

  v20 = *(this + 99);
  if (v20)
  {
    *(this + 100) = v20;
    operator delete(v20);
  }

  v21 = *(this + 96);
  if (v21)
  {
    *(this + 97) = v21;
    operator delete(v21);
  }

  v22 = *(this + 93);
  if (v22)
  {
    *(this + 94) = v22;
    operator delete(v22);
  }

  v23 = *(this + 90);
  if (v23)
  {
    v24 = *(this + 91);
    v25 = *(this + 90);
    if (v24 != v23)
    {
      do
      {
        v27 = *--v24;
        v26 = v27;
        *v24 = 0;
        if (v27)
        {
          MEMORY[0x2743DA540](v26, 0x1000C40D9C97D19);
        }
      }

      while (v24 != v23);
      v25 = *(this + 90);
    }

    *(this + 91) = v23;
    operator delete(v25);
  }

  v28 = *(this + 87);
  if (v28)
  {
    v29 = *(this + 88);
    v30 = *(this + 87);
    if (v29 != v28)
    {
      do
      {
        v32 = *--v29;
        v31 = v32;
        *v29 = 0;
        if (v32)
        {
          v33 = *v31;
          *v31 = 0;
          if (v33)
          {
            MEMORY[0x2743DA540](v33, 0xC400A2AC0F1);
          }

          MEMORY[0x2743DA540](v31, 0x1020C40743614A2);
        }
      }

      while (v29 != v28);
      v30 = *(this + 87);
    }

    *(this + 88) = v28;
    operator delete(v30);
  }

  v34 = *(this + 84);
  if (v34)
  {
    v35 = *(this + 85);
    v36 = *(this + 84);
    if (v35 != v34)
    {
      do
      {
        v39 = *--v35;
        v38 = v39;
        *v35 = 0;
        if (v39)
        {
          v40 = *(v38 + 72);
          if (v40)
          {
            v41 = *(v38 + 80);
            v37 = *(v38 + 72);
            if (v41 != v40)
            {
              v42 = *(v38 + 80);
              do
              {
                v44 = *(v42 - 24);
                v42 -= 24;
                v43 = v44;
                if (v44)
                {
                  *(v41 - 16) = v43;
                  operator delete(v43);
                }

                v41 = v42;
              }

              while (v42 != v40);
              v37 = *(v38 + 72);
            }

            *(v38 + 80) = v40;
            operator delete(v37);
          }

          MEMORY[0x2743DA540](v38, 0x1060C403DE63BB8);
        }
      }

      while (v35 != v34);
      v36 = *(this + 84);
    }

    *(this + 85) = v34;
    operator delete(v36);
  }

  v45 = *(this + 81);
  if (v45)
  {
    v46 = *(this + 82);
    v47 = *(this + 81);
    if (v46 != v45)
    {
      do
      {
        v50 = *--v46;
        v49 = v50;
        *v46 = 0;
        if (v50)
        {
          v51 = *(v49 + 72);
          if (v51)
          {
            v52 = *(v49 + 80);
            v48 = *(v49 + 72);
            if (v52 != v51)
            {
              v53 = *(v49 + 80);
              do
              {
                v55 = *(v53 - 24);
                v53 -= 24;
                v54 = v55;
                if (v55)
                {
                  *(v52 - 16) = v54;
                  operator delete(v54);
                }

                v52 = v53;
              }

              while (v53 != v51);
              v48 = *(v49 + 72);
            }

            *(v49 + 80) = v51;
            operator delete(v48);
          }

          MEMORY[0x2743DA540](v49, 0x1060C403DE63BB8);
        }
      }

      while (v46 != v45);
      v47 = *(this + 81);
    }

    *(this + 82) = v45;
    operator delete(v47);
  }
}

void webrtc::Subtractor::HandleEchoPathChange(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4) && *(a1 + 632))
  {
    v4 = 0;
    do
    {
      v5 = *(a1 + 648);
      if (v4 >= (*(a1 + 656) - v5) >> 3)
      {
        goto LABEL_75;
      }

      v66 = v4;
      v6 = *(v5 + 8 * v4);
      v7 = v6[5];
      v8 = v6[3];
      if (v7 < v8)
      {
        v9 = v6[9];
        v10 = v6[10];
        do
        {
          v11 = v10 - v9;
          if (v10 == v9)
          {
            goto LABEL_75;
          }

          if (*(v9 + 1) != *v9)
          {
            v12 = 0;
            v13 = 0;
            while (0xAAAAAAAAAAAAAAABLL * (v11 >> 3) > v7)
            {
              v15 = &v9[24 * v7];
              v14 = *v15;
              if (0xFC0FC0FC0FC0FC1 * ((*(v15 + 1) - *v15) >> 3) <= v13)
              {
                break;
              }

              bzero((v14 + v12), 0x208uLL);
              v9 = v6[9];
              v10 = v6[10];
              v11 = v10 - v9;
              if (v10 == v9)
              {
                break;
              }

              ++v13;
              v12 += 520;
              if (v13 >= 0xFC0FC0FC0FC0FC1 * ((*(v9 + 1) - *v9) >> 3))
              {
                goto LABEL_7;
              }
            }

            goto LABEL_75;
          }

LABEL_7:
          ;
        }

        while (++v7 != v8);
      }

      v16 = *(a1 + 672);
      if (v66 >= (*(a1 + 680) - v16) >> 3)
      {
        goto LABEL_75;
      }

      v17 = *(v16 + 8 * v66);
      v18 = v17[5];
      v19 = v17[3];
      if (v18 < v19)
      {
        v20 = v17[9];
        v21 = v17[10];
        do
        {
          v22 = v21 - v20;
          if (v21 == v20)
          {
            goto LABEL_75;
          }

          if (*(v20 + 1) != *v20)
          {
            v23 = 0;
            v24 = 0;
            while (0xAAAAAAAAAAAAAAABLL * (v22 >> 3) > v18)
            {
              v26 = &v20[24 * v18];
              v25 = *v26;
              if (0xFC0FC0FC0FC0FC1 * ((*(v26 + 1) - *v26) >> 3) <= v24)
              {
                break;
              }

              bzero((v25 + v23), 0x208uLL);
              v20 = v17[9];
              v21 = v17[10];
              v22 = v21 - v20;
              if (v21 == v20)
              {
                break;
              }

              ++v24;
              v23 += 520;
              if (v24 >= 0xFC0FC0FC0FC0FC1 * ((*(v20 + 1) - *v20) >> 3))
              {
                goto LABEL_19;
              }
            }

            goto LABEL_75;
          }

LABEL_19:
          ;
        }

        while (++v18 != v19);
      }

      v27 = *(a1 + 696);
      v28 = v66;
      if (v66 >= (*(a1 + 704) - v27) >> 3)
      {
        goto LABEL_75;
      }

      webrtc::RefinedFilterUpdateGain::HandleEchoPathChange(*(v27 + 8 * v66), a2);
      v29 = *(a1 + 720);
      if (v66 >= (*(a1 + 728) - v29) >> 3)
      {
        goto LABEL_75;
      }

      v30 = *(v29 + 8 * v66);
      *(v30 + 56) = 0;
      *(v30 + 64) = 0;
      v31 = *(a1 + 696);
      if (v66 >= (*(a1 + 704) - v31) >> 3)
      {
        goto LABEL_75;
      }

      v32 = *(v31 + 8 * v66);
      v33 = *(a1 + 208);
      *(v32 + 48) = *(a1 + 192);
      *(v32 + 64) = v33;
      v34 = *(a1 + 192);
      v35 = *(a1 + 208);
      *(v32 + 16) = v34;
      *(v32 + 32) = v35;
      *(v32 + 80) = v34;
      *(v32 + 96) = v35;
      *(v32 + 392) = 0;
      v36 = *(a1 + 720);
      if (v66 >= (*(a1 + 728) - v36) >> 3)
      {
        goto LABEL_75;
      }

      v37 = *(v36 + 8 * v66);
      *(v37 + 16) = *(a1 + 224);
      v38 = *(a1 + 224);
      *v37 = v38;
      *(v37 + 32) = v38;
      *(v37 + 72) = 0;
      v39 = *(a1 + 648);
      if (v66 >= (*(a1 + 656) - v39) >> 3)
      {
        goto LABEL_75;
      }

      v40 = *(v39 + 8 * v66);
      if (*(v40 + 24) >= *(a1 + 192))
      {
        v41 = *(a1 + 192);
      }

      else
      {
        v41 = *(v40 + 24);
      }

      v42 = *(v40 + 40);
      *(v40 + 48) = v41;
      *(v40 + 56) = v41;
      *(v40 + 40) = v41;
      if (v42 < v41)
      {
        v43 = *(v40 + 72);
        v44 = *(v40 + 80);
        while (1)
        {
          v45 = v44 - v43;
          if (v44 == v43)
          {
            goto LABEL_75;
          }

          if (*(v43 + 1) != *v43)
          {
            v46 = 0;
            v47 = 0;
            while (0xAAAAAAAAAAAAAAABLL * (v45 >> 3) > v42)
            {
              v49 = &v43[24 * v42];
              v48 = *v49;
              if (0xFC0FC0FC0FC0FC1 * ((*(v49 + 1) - *v49) >> 3) <= v47)
              {
                break;
              }

              bzero((v48 + v46), 0x208uLL);
              v43 = *(v40 + 72);
              v44 = *(v40 + 80);
              v45 = v44 - v43;
              if (v44 == v43)
              {
                break;
              }

              ++v47;
              v46 += 520;
              if (v47 >= 0xFC0FC0FC0FC0FC1 * ((*(v43 + 1) - *v43) >> 3))
              {
                goto LABEL_38;
              }
            }

            goto LABEL_75;
          }

LABEL_38:
          if (++v42 == v41)
          {
            v41 = *(v40 + 40);
            v28 = v66;
            break;
          }
        }
      }

      v50 = v41 - 1;
      if (v41 - 1 >= *(v40 + 96))
      {
        v50 = *(v40 + 96);
      }

      *(v40 + 96) = v50;
      *(v40 + 64) = 0;
      v51 = *(a1 + 672);
      if (v28 >= (*(a1 + 680) - v51) >> 3)
      {
        goto LABEL_75;
      }

      v52 = v28;
      v53 = *(v51 + 8 * v28);
      if (*(v53 + 24) >= *(a1 + 224))
      {
        v54 = *(a1 + 224);
      }

      else
      {
        v54 = *(v53 + 24);
      }

      v55 = *(v53 + 40);
      *(v53 + 48) = v54;
      *(v53 + 56) = v54;
      *(v53 + 40) = v54;
      if (v55 < v54)
      {
        v56 = *(v53 + 72);
        v57 = *(v53 + 80);
        while (1)
        {
          v58 = v57 - v56;
          if (v57 == v56)
          {
            goto LABEL_75;
          }

          if (*(v56 + 1) != *v56)
          {
            v59 = 0;
            v60 = 0;
            while (0xAAAAAAAAAAAAAAABLL * (v58 >> 3) > v55)
            {
              v62 = &v56[24 * v55];
              v61 = *v62;
              if (0xFC0FC0FC0FC0FC1 * ((*(v62 + 1) - *v62) >> 3) <= v60)
              {
                break;
              }

              bzero((v61 + v59), 0x208uLL);
              v56 = *(v53 + 72);
              v57 = *(v53 + 80);
              v58 = v57 - v56;
              if (v57 == v56)
              {
                break;
              }

              ++v60;
              v59 += 520;
              if (v60 >= 0xFC0FC0FC0FC0FC1 * ((*(v56 + 1) - *v56) >> 3))
              {
                goto LABEL_56;
              }
            }

            goto LABEL_75;
          }

LABEL_56:
          if (++v55 == v54)
          {
            v54 = *(v53 + 40);
            v52 = v66;
            break;
          }
        }
      }

      v63 = v54 - 1;
      if (v54 - 1 >= *(v53 + 96))
      {
        v63 = *(v53 + 96);
      }

      *(v53 + 96) = v63;
      *(v53 + 64) = 0;
      v4 = v52 + 1;
    }

    while (v4 < *(a1 + 632));
  }

  if (*a2 == 1 && *(a1 + 632))
  {
    v64 = 0;
    while (1)
    {
      v65 = *(a1 + 696);
      if (v64 >= (*(a1 + 704) - v65) >> 3)
      {
        break;
      }

      webrtc::RefinedFilterUpdateGain::HandleEchoPathChange(*(v65 + 8 * v64++), a2);
      if (v64 >= *(a1 + 632))
      {
        return;
      }
    }

LABEL_75:
    __break(1u);
  }
}

uint64_t webrtc::Subtractor::ExitInitialState(uint64_t this)
{
  if (*(this + 632))
  {
    v1 = 0;
    while (1)
    {
      v2 = *(this + 696);
      if (v1 >= (*(this + 704) - v2) >> 3)
      {
        break;
      }

      v3 = *(v2 + 8 * v1);
      v4 = *(v3 + 32);
      *(v3 + 80) = *(v3 + 16);
      *(v3 + 96) = v4;
      v5 = *(this + 160);
      *(v3 + 48) = *(this + 144);
      *(v3 + 64) = v5;
      *(v3 + 392) = *(v3 + 8);
      v6 = *(this + 720);
      if (v1 >= (*(this + 728) - v6) >> 3)
      {
        break;
      }

      v7 = *(v6 + 8 * v1);
      *(v7 + 32) = *v7;
      *(v7 + 16) = *(this + 176);
      *(v7 + 72) = *(v7 + 48);
      v8 = *(this + 648);
      if (v1 >= (*(this + 656) - v8) >> 3)
      {
        break;
      }

      v9 = *(v8 + 8 * v1);
      v10 = *(this + 144);
      if (*(v9 + 24) < v10)
      {
        v10 = *(v9 + 24);
      }

      *(v9 + 48) = v10;
      *(v9 + 64) = *(v9 + 32);
      v11 = *(this + 672);
      if (v1 >= (*(this + 680) - v11) >> 3)
      {
        break;
      }

      v12 = *(v11 + 8 * v1);
      v13 = *(this + 176);
      if (*(v12 + 24) < v13)
      {
        v13 = *(v12 + 24);
      }

      *(v12 + 48) = v13;
      *(v12 + 64) = *(v12 + 32);
      if (++v1 >= *(this + 632))
      {
        return this;
      }
    }

    __break(1u);
  }

  return this;
}

void webrtc::Subtractor::Process(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 648);
  if (*(a1 + 656) == v6 || (v8 = *(a1 + 672), *(a1 + 680) == v8))
  {
LABEL_160:
    __break(1u);
    return;
  }

  v9 = *(*v6 + 40);
  v10 = *(*v8 + 40);
  p_src = &v354[4];
  if (v9 == v10)
  {
    p_src = &__src;
  }

  v269 = p_src;
  if (v9 == v10)
  {
    v371 = 0;
    v369 = 0u;
    v370 = 0u;
    v367 = 0u;
    v368 = 0u;
    v365 = 0u;
    v366 = 0u;
    v363 = 0u;
    v364 = 0u;
    v361 = 0u;
    v362 = 0u;
    v359 = 0u;
    v360 = 0u;
    v357 = 0u;
    v358 = 0u;
    __src = 0u;
    v356 = 0u;
    if (v9)
    {
      v12 = 0;
      v13 = *(a2 + 8);
      v14 = *(v13 + 8);
      v15 = 0xAAAAAAAAAAAAAAABLL * ((*(v13 + 16) - v14) >> 3);
      v16 = *(v13 + 36);
      while (v15 > v16)
      {
        v17 = (v14 + 24 * v16);
        v18 = *v17;
        v19 = v17[1];
        if (v18 != v19)
        {
          v21 = &__src < &v18[16].i32[65 * ((&v19[-17].u64[1] + 4 - v18) / 0x104uLL) + 1] && v18 < &v372;
          do
          {
            if (v21)
            {
              v22 = 0;
            }

            else
            {
              v23 = vaddq_f32(v18[1], v356);
              __src = vaddq_f32(*v18, __src);
              v356 = v23;
              v24 = vaddq_f32(v18[3], v358);
              v357 = vaddq_f32(v18[2], v357);
              v358 = v24;
              v25 = vaddq_f32(v18[5], v360);
              v359 = vaddq_f32(v18[4], v359);
              v360 = v25;
              v26 = vaddq_f32(v18[7], v362);
              v361 = vaddq_f32(v18[6], v361);
              v362 = v26;
              v27 = vaddq_f32(v18[9], v364);
              v363 = vaddq_f32(v18[8], v363);
              v364 = v27;
              v28 = vaddq_f32(v18[11], v366);
              v365 = vaddq_f32(v18[10], v365);
              v366 = v28;
              v29 = vaddq_f32(v18[13], v368);
              v367 = vaddq_f32(v18[12], v367);
              v368 = v29;
              v30 = vaddq_f32(v18[15], v370);
              v22 = 64;
              v369 = vaddq_f32(v18[14], v369);
              v370 = v30;
            }

            v31 = v22;
            do
            {
              __src.f32[v31] = v18->f32[v31] + __src.f32[v31];
              ++v31;
            }

            while (v31 != 65);
            v18 = (v18 + 260);
          }

          while (v18 != v19);
        }

        if (*v13 - 1 > v16)
        {
          ++v16;
        }

        else
        {
          v16 = 0;
        }

        if (++v12 == v9)
        {
          goto LABEL_31;
        }
      }

      goto LABEL_160;
    }
  }

  else
  {
    if (v9 <= v10)
    {
      v32 = &__src;
      v33 = &v354[4];
      v34 = a2;
      v35 = v9;
      v9 = v10;
    }

    else
    {
      v32 = &v354[4];
      v33 = &__src;
      v34 = a2;
      v35 = v10;
    }

    webrtc::RenderBuffer::SpectralSums(v34, v35, v9, v32, v33);
  }

LABEL_31:
  if (*(a1 + 632))
  {
    v36 = 0;
    v37 = 0;
    v38 = a6;
    v39 = a6 + 512;
    while (1)
    {
      v54 = *(a3 + 8);
      if ((v37 << 6) >= ((*(a3 + 16) - v54) >> 2))
      {
        goto LABEL_160;
      }

      v55 = *(a1 + 648);
      if (v37 >= (*(a1 + 656) - v55) >> 3)
      {
        goto LABEL_160;
      }

      v273 = v36;
      v275 = 4 * v36;
      v277 = *(a3 + 8);
      v56 = a6 + 2092 * v37;
      v57 = (v54 + 4 * (v37 << 6));
      webrtc::aec3::ApplyFilter(a2, *(*(v55 + 8 * v37) + 40), (*(v55 + 8 * v37) + 72), &v279);
      v405.val[0] = v280;
      v407.val[0] = v281;
      v405.val[1] = v302;
      v407.val[1] = v303;
      v58 = &v375.f32[2];
      v59 = &v373.f32[2];
      vst2q_f32(v59, v405);
      vst2q_f32(v58, v407);
      v405.val[0] = v282;
      v407.val[0] = v283;
      v405.val[1] = v304;
      v407.val[1] = v305;
      v60 = &v379.f32[2];
      v61 = &v377.f32[2];
      vst2q_f32(v61, v405);
      vst2q_f32(v60, v407);
      v405.val[0] = v284;
      v407.val[0] = v285;
      v405.val[1] = v306;
      v407.val[1] = v307;
      v62 = &v383.f32[2];
      v63 = &v381.f32[2];
      vst2q_f32(v63, v405);
      vst2q_f32(v62, v407);
      v405.val[0] = v286;
      v407.val[0] = v287;
      v405.val[1] = v308;
      v407.val[1] = v309;
      v64 = &v387.f32[2];
      v65 = &v385.f32[2];
      vst2q_f32(v65, v405);
      vst2q_f32(v64, v407);
      v405.val[0] = v288;
      v407.val[0] = v289;
      v405.val[1] = v310;
      v407.val[1] = v311;
      v66 = &v391.f32[2];
      v67 = &v389.f32[2];
      vst2q_f32(v67, v405);
      vst2q_f32(v66, v407);
      v405.val[0] = v290;
      v407.val[0] = v291;
      v405.val[1] = v312;
      v407.val[1] = v313;
      v68 = &v395.f32[2];
      v69 = &v393.f32[2];
      vst2q_f32(v69, v405);
      v405.val[0].i32[0] = v279;
      vst2q_f32(v68, v407);
      v407.val[0].i32[0] = v300;
      v373.i64[0] = __PAIR64__(v301, v405.val[0].u32[0]);
      v405.val[0] = v292;
      v407.val[1] = v293;
      v405.val[1] = v314;
      v70 = v315;
      v71 = &v397.f32[2];
      vst2q_f32(v71, v405);
      v401.i64[1] = __PAIR64__(v316, v294);
      v402.i64[0] = __PAIR64__(v317, v295);
      v402.i64[1] = __PAIR64__(v318, v296);
      v403.i64[0] = __PAIR64__(v319, v297);
      v403.i64[1] = __PAIR64__(v320, v298);
      v404.i64[0] = __PAIR64__(v321, v299);
      v404.i64[1] = __PAIR64__(v322, v407.val[0].u32[0]);
      v72 = &v399.f32[2];
      vst2q_f32(v72, *(&v407 + 16));
      webrtc::OouraFft::InverseFft(a1, &v373);
      v73 = 2092 * v37;
      v276 = 4 * (v37 << 6);
      if (a6 + 512 + 2092 * v37 - (v276 + v277) < 0x20 || a6 - &v373 + 256 + 2092 * v37 <= 0x1F)
      {
        for (i = 0; i != 64; ++i)
        {
          *(v39 + i * 4) = *(v277 + v275 + i * 4) + (v389.f32[i] * -0.015625);
        }
      }

      else
      {
        v74 = vdupq_n_s32(0x3C800000u);
        v75 = vmlsq_f32(v57[1], v74, v390);
        *(v56 + 512) = vmlsq_f32(*v57, v74, v389);
        *(v56 + 528) = v75;
        v76 = vmlsq_f32(v57[3], v74, v392);
        *(v56 + 544) = vmlsq_f32(v57[2], v74, v391);
        *(v56 + 560) = v76;
        v77 = vmlsq_f32(v57[5], v74, v394);
        *(v56 + 576) = vmlsq_f32(v57[4], v74, v393);
        *(v56 + 592) = v77;
        v78 = vmlsq_f32(v57[7], v74, v396);
        *(v56 + 608) = vmlsq_f32(v57[6], v74, v395);
        *(v56 + 624) = v78;
        v79 = vmlsq_f32(v57[9], v74, v398);
        *(v56 + 640) = vmlsq_f32(v57[8], v74, v397);
        *(v56 + 656) = v79;
        v80 = vmlsq_f32(v57[11], v74, v400);
        *(v56 + 672) = vmlsq_f32(v57[10], v74, v399);
        *(v56 + 688) = v80;
        v81 = vmlsq_f32(v57[13], v74, v402);
        *(v56 + 704) = vmlsq_f32(v57[12], v74, v401);
        *(v56 + 720) = v81;
        v82 = vmlsq_f32(v57[15], v74, v404);
        *(v56 + 736) = vmlsq_f32(v57[14], v74, v403);
        *(v56 + 752) = v82;
      }

      if (a6)
      {
        if ((a6 - &v373 - 256 + v73) > 0x1F)
        {
          v85 = vdupq_n_s32(0x3C800000u);
          v86 = vmulq_f32(v390, v85);
          *v56 = vmulq_f32(v389, v85);
          *(v56 + 16) = v86;
          v87 = vmulq_f32(v392, v85);
          *(v56 + 32) = vmulq_f32(v391, v85);
          *(v56 + 48) = v87;
          v88 = vmulq_f32(v394, v85);
          *(v56 + 64) = vmulq_f32(v393, v85);
          *(v56 + 80) = v88;
          v89 = vmulq_f32(v396, v85);
          *(v56 + 96) = vmulq_f32(v395, v85);
          *(v56 + 112) = v89;
          v90 = vmulq_f32(v398, v85);
          *(v56 + 128) = vmulq_f32(v397, v85);
          *(v56 + 144) = v90;
          v91 = vmulq_f32(v400, v85);
          *(v56 + 160) = vmulq_f32(v399, v85);
          *(v56 + 176) = v91;
          v92 = vmulq_f32(v402, v85);
          *(v56 + 192) = vmulq_f32(v401, v85);
          *(v56 + 208) = v92;
          v93 = vmulq_f32(v404, v85);
          *(v56 + 224) = vmulq_f32(v403, v85);
          *(v56 + 240) = v93;
        }

        else
        {
          for (j = 0; j != 64; ++j)
          {
            *(v38 + j * 4) = v389.f32[j] * 0.015625;
          }
        }
      }

      v94 = *(a1 + 672);
      if (v37 >= (*(a1 + 680) - v94) >> 3)
      {
        goto LABEL_160;
      }

      v95 = a6 + 768 + v73;
      webrtc::aec3::ApplyFilter(a2, *(*(v94 + 8 * v37) + 40), (*(v94 + 8 * v37) + 72), &v279);
      v406.val[0] = v280;
      v408.val[0] = v281;
      v406.val[1] = v302;
      v408.val[1] = v303;
      v96 = &v375.f32[2];
      v97 = &v373.f32[2];
      vst2q_f32(v97, v406);
      vst2q_f32(v96, v408);
      v406.val[0] = v282;
      v408.val[0] = v283;
      v406.val[1] = v304;
      v408.val[1] = v305;
      v98 = &v379.f32[2];
      v99 = &v377.f32[2];
      vst2q_f32(v99, v406);
      vst2q_f32(v98, v408);
      v406.val[0] = v284;
      v408.val[0] = v285;
      v406.val[1] = v306;
      v408.val[1] = v307;
      v100 = &v383.f32[2];
      v101 = &v381.f32[2];
      vst2q_f32(v101, v406);
      vst2q_f32(v100, v408);
      v406.val[0] = v286;
      v408.val[0] = v287;
      v406.val[1] = v308;
      v408.val[1] = v309;
      v102 = &v387.f32[2];
      v103 = &v385.f32[2];
      vst2q_f32(v103, v406);
      vst2q_f32(v102, v408);
      v406.val[0] = v288;
      v408.val[0] = v289;
      v406.val[1] = v310;
      v408.val[1] = v311;
      v104 = &v391.f32[2];
      v105 = &v389.f32[2];
      vst2q_f32(v105, v406);
      vst2q_f32(v104, v408);
      v406.val[0] = v290;
      v408.val[0] = v291;
      v406.val[1] = v312;
      v408.val[1] = v313;
      v106 = &v395.f32[2];
      v107 = &v393.f32[2];
      vst2q_f32(v107, v406);
      v406.val[0].i32[0] = v279;
      vst2q_f32(v106, v408);
      v408.val[0].i32[0] = v300;
      v373.i64[0] = __PAIR64__(v301, v406.val[0].u32[0]);
      v406.val[0] = v292;
      v408.val[1] = v293;
      v406.val[1] = v314;
      v108 = v315;
      v109 = &v397.f32[2];
      vst2q_f32(v109, v406);
      v401.i64[1] = __PAIR64__(v316, v294);
      v402.i64[0] = __PAIR64__(v317, v295);
      v402.i64[1] = __PAIR64__(v318, v296);
      v403.i64[0] = __PAIR64__(v319, v297);
      v403.i64[1] = __PAIR64__(v320, v298);
      v404.i64[0] = __PAIR64__(v321, v299);
      v404.i64[1] = __PAIR64__(v322, v408.val[0].u32[0]);
      v110 = &v399.f32[2];
      vst2q_f32(v110, *(&v408 + 16));
      webrtc::OouraFft::InverseFft(a1, &v373);
      if (v95 - (v276 + v277) < 0x20 || a6 + 512 - &v373 + 2092 * v37 <= 0x1F)
      {
        for (k = 0; k != 64; ++k)
        {
          *(v38 + k * 4 + 768) = *(v277 + v275 + k * 4) + (v389.f32[k] * -0.015625);
        }
      }

      else
      {
        v111 = vdupq_n_s32(0x3C800000u);
        v112 = vmlsq_f32(v57[1], v111, v390);
        *(v56 + 768) = vmlsq_f32(*v57, v111, v389);
        *(v56 + 784) = v112;
        v113 = vmlsq_f32(v57[3], v111, v392);
        *(v56 + 800) = vmlsq_f32(v57[2], v111, v391);
        *(v56 + 816) = v113;
        v114 = vmlsq_f32(v57[5], v111, v394);
        *(v56 + 832) = vmlsq_f32(v57[4], v111, v393);
        *(v56 + 848) = v114;
        v115 = vmlsq_f32(v57[7], v111, v396);
        *(v56 + 864) = vmlsq_f32(v57[6], v111, v395);
        *(v56 + 880) = v115;
        v116 = vmlsq_f32(v57[9], v111, v398);
        *(v56 + 896) = vmlsq_f32(v57[8], v111, v397);
        *(v56 + 912) = v116;
        v117 = vmlsq_f32(v57[11], v111, v400);
        *(v56 + 928) = vmlsq_f32(v57[10], v111, v399);
        *(v56 + 944) = v117;
        v118 = vmlsq_f32(v57[13], v111, v402);
        *(v56 + 960) = vmlsq_f32(v57[12], v111, v401);
        *(v56 + 976) = v118;
        v119 = vmlsq_f32(v57[15], v111, v404);
        *(v56 + 992) = vmlsq_f32(v57[14], v111, v403);
        *(v56 + 1008) = v119;
      }

      if (a6 - &v373 + 2092 * v37 > 0x1F)
      {
        v122 = vdupq_n_s32(0x3C800000u);
        v123 = vmulq_f32(v390, v122);
        *(v56 + 256) = vmulq_f32(v389, v122);
        *(v56 + 272) = v123;
        v124 = vmulq_f32(v392, v122);
        *(v56 + 288) = vmulq_f32(v391, v122);
        *(v56 + 304) = v124;
        v125 = vmulq_f32(v394, v122);
        *(v56 + 320) = vmulq_f32(v393, v122);
        *(v56 + 336) = v125;
        v126 = vmulq_f32(v396, v122);
        *(v56 + 352) = vmulq_f32(v395, v122);
        *(v56 + 368) = v126;
        v127 = vmulq_f32(v398, v122);
        *(v56 + 384) = vmulq_f32(v397, v122);
        *(v56 + 400) = v127;
        v128 = vmulq_f32(v400, v122);
        *(v56 + 416) = vmulq_f32(v399, v122);
        *(v56 + 432) = v128;
        v129 = vmulq_f32(v402, v122);
        *(v56 + 448) = vmulq_f32(v401, v122);
        *(v56 + 464) = v129;
        v130 = vmulq_f32(v404, v122);
        *(v56 + 480) = vmulq_f32(v403, v122);
        *(v56 + 496) = v130;
      }

      else
      {
        for (m = 64; m != 128; ++m)
        {
          *(v38 + m * 4) = v373.f32[m] * 0.015625;
        }
      }

      webrtc::SubtractorOutput::ComputeMetrics(v56, v57->f32, 64);
      v132 = *(a1 + 744);
      if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 752) - v132) >> 3) <= v37)
      {
        goto LABEL_160;
      }

      v133 = (v132 + 24 * v37);
      v134 = v133[3];
      v135 = *(v56 + 2072) + v133[2];
      v133[2] = v135;
      v136 = *(v56 + 2080) + v134;
      v133[3] = v136;
      v137 = *v133;
      v138 = *(v133 + 1) + 1;
      *(v133 + 1) = v138;
      v139 = 2092 * v37;
      if (v138 == LODWORD(v137))
      {
        break;
      }

LABEL_72:
      v146 = v133[4];
      if (v146 > 10.0)
      {
        v147 = *(a1 + 648);
        if (v37 >= (*(a1 + 656) - v147) >> 3)
        {
          goto LABEL_160;
        }

        *&v131 = 2.0 / sqrtf(v146);
        v268 = *&v131;
        webrtc::AdaptiveFirFilter::ScaleFilter(*(v147 + 8 * v37), v131);
        v148 = *(a1 + 840);
        if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 848) - v148) >> 3) <= v37)
        {
          goto LABEL_160;
        }

        v149 = (v148 + 24 * v37);
        v151 = *v149;
        v150 = v149[1];
        if (v151 != v150)
        {
          v152 = v150 - v151 - 4;
          v153 = v151;
          if (v152 <= 0x1B)
          {
            goto LABEL_163;
          }

          v154 = (v152 >> 2) + 1;
          v153 = &v151->f32[v154 & 0x7FFFFFFFFFFFFFF8];
          v155 = v151 + 1;
          v156 = v154 & 0x7FFFFFFFFFFFFFF8;
          do
          {
            v157 = vmulq_n_f32(*v155, v268);
            v155[-1] = vmulq_n_f32(v155[-1], v268);
            *v155 = v157;
            v155 += 2;
            v156 -= 8;
          }

          while (v156);
          if (v154 != (v154 & 0x7FFFFFFFFFFFFFF8))
          {
LABEL_163:
            do
            {
              *v153 = v268 * *v153;
              ++v153;
            }

            while (v153 != v150);
          }
        }

        if (v56 >= v277 + v276 + 256 || v57 >= v95)
        {
          v159 = vmulq_n_f32(*v56, v268);
          v160 = vmulq_n_f32(*(v56 + 16), v268);
          *v56 = v159;
          *(v56 + 16) = v160;
          v161 = vsubq_f32(v57[1], v160);
          *(v56 + 512) = vsubq_f32(*v57, v159);
          *(v56 + 528) = v161;
          v162 = vmulq_n_f32(*(v56 + 32), v268);
          v163 = vmulq_n_f32(*(v56 + 48), v268);
          *(v56 + 32) = v162;
          *(v56 + 48) = v163;
          v164 = vsubq_f32(v57[3], v163);
          *(v56 + 544) = vsubq_f32(v57[2], v162);
          *(v56 + 560) = v164;
          v165 = vmulq_n_f32(*(v56 + 64), v268);
          v166 = vmulq_n_f32(*(v56 + 80), v268);
          *(v56 + 64) = v165;
          *(v56 + 80) = v166;
          v167 = vsubq_f32(v57[5], v166);
          *(v56 + 576) = vsubq_f32(v57[4], v165);
          *(v56 + 592) = v167;
          v168 = vmulq_n_f32(*(v56 + 96), v268);
          v169 = vmulq_n_f32(*(v56 + 112), v268);
          *(v56 + 96) = v168;
          *(v56 + 112) = v169;
          v170 = vsubq_f32(v57[7], v169);
          *(v56 + 608) = vsubq_f32(v57[6], v168);
          *(v56 + 624) = v170;
          v171 = vmulq_n_f32(*(v56 + 128), v268);
          v172 = vmulq_n_f32(*(v56 + 144), v268);
          *(v56 + 128) = v171;
          *(v56 + 144) = v172;
          v173 = vsubq_f32(v57[9], v172);
          *(v56 + 640) = vsubq_f32(v57[8], v171);
          *(v56 + 656) = v173;
          v174 = vmulq_n_f32(*(v56 + 160), v268);
          v175 = vmulq_n_f32(*(v56 + 176), v268);
          *(v56 + 160) = v174;
          *(v56 + 176) = v175;
          v176 = vsubq_f32(v57[11], v175);
          *(v56 + 672) = vsubq_f32(v57[10], v174);
          *(v56 + 688) = v176;
          v177 = vmulq_n_f32(*(v56 + 192), v268);
          v178 = vmulq_n_f32(*(v56 + 208), v268);
          *(v56 + 192) = v177;
          *(v56 + 208) = v178;
          v179 = vsubq_f32(v57[13], v178);
          *(v56 + 704) = vsubq_f32(v57[12], v177);
          *(v56 + 720) = v179;
          v180 = vmulq_n_f32(*(v56 + 224), v268);
          v181 = vmulq_n_f32(*(v56 + 240), v268);
          *(v56 + 224) = v180;
          *(v56 + 240) = v181;
          v182 = vsubq_f32(v57[15], v181);
          *(v56 + 736) = vsubq_f32(v57[14], v180);
          *(v56 + 752) = v182;
          v139 = 2092 * v37;
        }

        else
        {
          v183 = 0;
          v139 = 2092 * v37;
          do
          {
            v184 = v268 * *(v38 + v183);
            *(v38 + v183) = v184;
            *(v39 + v183) = *(v277 + v275 + v183) - v184;
            v183 += 4;
          }

          while (v183 != 256);
        }

        v185 = *(a1 + 744);
        if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 752) - v185) >> 3) <= v37)
        {
          goto LABEL_160;
        }

        v186 = v185 + 24 * v37;
        *(v186 + 12) = 0;
        *(v186 + 4) = 0;
        *(v186 + 20) = 0;
      }

      v187 = a6 + 1804 + v139;
      v188 = a6 + 2064 + v139;
      webrtc::Aec3Fft::ZeroPaddedFft(a1, (v56 + 512), 64, 1, v56 + 1024);
      webrtc::Aec3Fft::ZeroPaddedFft(a1, (v56 + 768), 64, 1, v323);
      v189 = (v56 + 1804);
      if (v187 >= v354 || v323 >= v188)
      {
        v192 = v323[1];
        v193 = v338[1];
        *v189 = vmlaq_f32(vmulq_f32(v338[0], v338[0]), v323[0], v323[0]);
        v189 = (v56 + 2060);
        *(v56 + 1820) = vmlaq_f32(vmulq_f32(v193, v193), v192, v192);
        v194 = vmlaq_f32(vmulq_f32(v340, v340), v325, v325);
        *(v56 + 1836) = vmlaq_f32(vmulq_f32(v339, v339), v324, v324);
        *(v56 + 1852) = v194;
        v195 = vmlaq_f32(vmulq_f32(v342, v342), v327, v327);
        *(v56 + 1868) = vmlaq_f32(vmulq_f32(v341, v341), v326, v326);
        *(v56 + 1884) = v195;
        v196 = vmlaq_f32(vmulq_f32(v344, v344), v329, v329);
        *(v56 + 1900) = vmlaq_f32(vmulq_f32(v343, v343), v328, v328);
        *(v56 + 1916) = v196;
        v197 = vmlaq_f32(vmulq_f32(v346, v346), v331, v331);
        *(v56 + 1932) = vmlaq_f32(vmulq_f32(v345, v345), v330, v330);
        *(v56 + 1948) = v197;
        v198 = vmlaq_f32(vmulq_f32(v348, v348), v333, v333);
        *(v56 + 1964) = vmlaq_f32(vmulq_f32(v347, v347), v332, v332);
        *(v56 + 1980) = v198;
        v199 = vmlaq_f32(vmulq_f32(v350, v350), v335, v335);
        *(v56 + 1996) = vmlaq_f32(vmulq_f32(v349, v349), v334, v334);
        *(v56 + 2012) = v199;
        v200 = vmlaq_f32(vmulq_f32(v352, v352), v337, v337);
        *(v56 + 2028) = vmlaq_f32(vmulq_f32(v351, v351), v336, v336);
        *(v56 + 2044) = v200;
        v191 = &v353;
        v190 = 64;
      }

      else
      {
        v190 = 0;
        v191 = v338;
      }

      do
      {
        v201 = v191->f32[0];
        v191 = (v191 + 4);
        v189->f32[0] = (v201 * v201) + (v323[0].f32[v190] * v323[0].f32[v190]);
        v189 = (v189 + 4);
        ++v190;
      }

      while (v190 != 65);
      v202 = vmlaq_f32(vmulq_f32(*(v56 + 1300), *(v56 + 1300)), *(v56 + 1040), *(v56 + 1040));
      *(v56 + 1544) = vmlaq_f32(vmulq_f32(*(v56 + 1284), *(v56 + 1284)), *(v56 + 1024), *(v56 + 1024));
      *(v56 + 1560) = v202;
      v203 = vmlaq_f32(vmulq_f32(*(v56 + 1332), *(v56 + 1332)), *(v56 + 1072), *(v56 + 1072));
      *(v56 + 1576) = vmlaq_f32(vmulq_f32(*(v56 + 1316), *(v56 + 1316)), *(v56 + 1056), *(v56 + 1056));
      *(v56 + 1592) = v203;
      v204 = vmlaq_f32(vmulq_f32(*(v56 + 1364), *(v56 + 1364)), *(v56 + 1104), *(v56 + 1104));
      *(v56 + 1608) = vmlaq_f32(vmulq_f32(*(v56 + 1348), *(v56 + 1348)), *(v56 + 1088), *(v56 + 1088));
      *(v56 + 1624) = v204;
      v205 = vmlaq_f32(vmulq_f32(*(v56 + 1396), *(v56 + 1396)), *(v56 + 1136), *(v56 + 1136));
      *(v56 + 1640) = vmlaq_f32(vmulq_f32(*(v56 + 1380), *(v56 + 1380)), *(v56 + 1120), *(v56 + 1120));
      *(v56 + 1656) = v205;
      v206 = vmlaq_f32(vmulq_f32(*(v56 + 1428), *(v56 + 1428)), *(v56 + 1168), *(v56 + 1168));
      *(v56 + 1672) = vmlaq_f32(vmulq_f32(*(v56 + 1412), *(v56 + 1412)), *(v56 + 1152), *(v56 + 1152));
      *(v56 + 1688) = v206;
      v207 = vmlaq_f32(vmulq_f32(*(v56 + 1460), *(v56 + 1460)), *(v56 + 1200), *(v56 + 1200));
      *(v56 + 1704) = vmlaq_f32(vmulq_f32(*(v56 + 1444), *(v56 + 1444)), *(v56 + 1184), *(v56 + 1184));
      *(v56 + 1720) = v207;
      v208 = vmlaq_f32(vmulq_f32(*(v56 + 1492), *(v56 + 1492)), *(v56 + 1232), *(v56 + 1232));
      *(v56 + 1736) = vmlaq_f32(vmulq_f32(*(v56 + 1476), *(v56 + 1476)), *(v56 + 1216), *(v56 + 1216));
      *(v56 + 1752) = v208;
      v210 = *(v56 + 1264);
      v209 = vmlaq_f32(vmulq_f32(*(v56 + 1524), *(v56 + 1524)), v210, v210);
      v210.f32[0] = *(v56 + 1540) * *(v56 + 1540);
      v211 = v210.f32[0] + (*(v56 + 1280) * *(v56 + 1280));
      *(v56 + 1768) = vmlaq_f32(vmulq_f32(*(v56 + 1508), *(v56 + 1508)), *(v56 + 1248), *(v56 + 1248));
      *(v56 + 1784) = v209;
      *(v56 + 1800) = v211;
      if (v146 <= 10.0)
      {
        v212 = *(a1 + 792);
        if (v37 >= (*(a1 + 800) - v212) >> 2)
        {
          goto LABEL_160;
        }

        v213 = *(v212 + 4 * v37) < 1 ? 0 : *(a1 + 640);
        v214 = *(a1 + 816);
        if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 824) - v214) >> 3) <= v37)
        {
          goto LABEL_160;
        }

        v389.i32[0] = 0;
        v215 = 0uLL;
        v388 = 0u;
        v216 = (v214 + 24 * v37);
        v387 = 0u;
        v386 = 0u;
        v385 = 0u;
        v384 = 0u;
        v383 = 0u;
        v382 = 0u;
        v381 = 0u;
        v380 = 0u;
        v379 = 0u;
        v378 = 0u;
        v377 = 0u;
        v376 = 0u;
        v375 = 0u;
        v374 = 0u;
        v373 = 0u;
        v217 = *v216;
        v218 = v216[1];
        if (v217 != v218)
        {
          v220 = &v373 < &v217[16].i32[65 * ((&v218[-17].u64[1] + 4 - v217) / 0x104uLL) + 1] && v217 < &v389.i32[1];
          do
          {
            if (v220)
            {
              v221 = 0;
              v222 = &v373;
            }

            else
            {
              v223 = vaddq_f32(v217[1], v374);
              v373 = vaddq_f32(*v217, v373);
              v374 = v223;
              v224 = vaddq_f32(v217[3], v376);
              v375 = vaddq_f32(v217[2], v375);
              v376 = v224;
              v225 = vaddq_f32(v217[5], v378);
              v377 = vaddq_f32(v217[4], v377);
              v378 = v225;
              v226 = vaddq_f32(v217[7], v380);
              v379 = vaddq_f32(v217[6], v379);
              v380 = v226;
              v227 = vaddq_f32(v217[9], v382);
              v381 = vaddq_f32(v217[8], v381);
              v382 = v227;
              v228 = vaddq_f32(v217[11], v384);
              v383 = vaddq_f32(v217[10], v383);
              v384 = v228;
              v229 = vaddq_f32(v217[13], v386);
              v385 = vaddq_f32(v217[12], v385);
              v386 = v229;
              v215 = vaddq_f32(v217[14], v387);
              v210 = vaddq_f32(v217[15], v388);
              v387 = v215;
              v222 = &v389;
              v221 = 64;
              v388 = v210;
            }

            do
            {
              v210.i32[0] = v222->i32[0];
              v215.f32[0] = v217->f32[v221] + v222->f32[0];
              v222->i32[0] = v215.i32[0];
              v222 = (v222 + 4);
              ++v221;
            }

            while (v221 != 65);
            v217 = (v217 + 260);
          }

          while (v217 != v218);
        }

        v230 = *(a1 + 696);
        if (v37 >= (*(a1 + 704) - v230) >> 3)
        {
          goto LABEL_160;
        }

        v231 = *(a1 + 648);
        if (v37 >= (*(a1 + 656) - v231) >> 3)
        {
          goto LABEL_160;
        }

        webrtc::RefinedFilterUpdateGain::Compute(*(v230 + 8 * v37), &__src, a4, v56, &v373, 65, *(*(v231 + 8 * v37) + 40), *(a5 + 2000), v215, v210, v213 & 1, &v279);
      }

      else
      {
        bzero(&v279, 0x208uLL);
      }

      v232 = *(a1 + 648);
      if (v37 >= (*(a1 + 656) - v232) >> 3)
      {
        goto LABEL_160;
      }

      v233 = *(a1 + 840);
      if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 848) - v233) >> 3) <= v37)
      {
        goto LABEL_160;
      }

      v234 = *(v232 + 8 * v37);
      v235 = (v233 + 24 * v37);
      webrtc::AdaptiveFirFilter::UpdateSize(v234);
      webrtc::aec3::AdaptPartitions(a2, &v279, v234[5], v234 + 9);
      webrtc::AdaptiveFirFilter::ConstrainAndUpdateImpulseResponse(v234, v235);
      v236 = *(a1 + 648);
      if (v37 >= (*(a1 + 656) - v236) >> 3)
      {
        goto LABEL_160;
      }

      v237 = *(a1 + 816);
      if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 824) - v237) >> 3) <= v37)
      {
        goto LABEL_160;
      }

      v238 = *(v236 + 8 * v37);
      v239 = v237 + 24 * v37;
      v240 = *(v238 + 40);
      v241 = 0xFC0FC0FC0FC0FC1 * ((*(v239 + 8) - *v239) >> 2);
      if (v240 <= v241)
      {
        if (v240 < v241)
        {
          *(v239 + 8) = *v239 + 260 * v240;
        }
      }

      else
      {
        std::vector<std::array<float,65ul>>::__append(v239, v240 - v241);
        v240 = *(v238 + 40);
      }

      webrtc::aec3::ComputeFrequencyResponse(v240, v238 + 72, v239);
      v242 = *(a1 + 768);
      v243 = (*(a1 + 776) - v242) >> 3;
      if (*(v56 + 2072) >= *(v56 + 2076))
      {
        if (v243 <= v37)
        {
          goto LABEL_160;
        }

        *(v242 + 8 * v37) = 0;
      }

      else
      {
        if (v243 <= v37)
        {
          goto LABEL_160;
        }

        v244 = *(v242 + 8 * v37) + 1;
        *(v242 + 8 * v37) = v244;
        if (v244 > 4)
        {
          *(v242 + 8 * v37) = 0;
          v245 = *(a1 + 672);
          if (v37 >= (*(a1 + 680) - v245) >> 3)
          {
            goto LABEL_160;
          }

          v246 = *(a1 + 648);
          if (v37 >= (*(a1 + 656) - v246) >> 3)
          {
            goto LABEL_160;
          }

          webrtc::AdaptiveFirFilter::SetFilter(*(v245 + 8 * v37), *(*(v246 + 8 * v37) + 40), (*(v246 + 8 * v37) + 72));
          v247 = *(a1 + 720);
          if (v37 >= (*(a1 + 728) - v247) >> 3)
          {
            goto LABEL_160;
          }

          v248 = *(a1 + 672);
          if (v37 >= (*(a1 + 680) - v248) >> 3)
          {
            goto LABEL_160;
          }

          webrtc::CoarseFilterUpdateGain::Compute(*(v247 + 8 * v37), v269, a4, v56 + 1024, *(*(v248 + 8 * v37) + 40), *(a5 + 2000), &v279);
          v249 = *(a1 + 792);
          if (v37 >= (*(a1 + 800) - v249) >> 2)
          {
            goto LABEL_160;
          }

          v250 = *(a1 + 252);
          goto LABEL_142;
        }
      }

      v251 = *(a1 + 720);
      if (v37 >= (*(a1 + 728) - v251) >> 3)
      {
        goto LABEL_160;
      }

      v252 = *(a1 + 672);
      if (v37 >= (*(a1 + 680) - v252) >> 3)
      {
        goto LABEL_160;
      }

      webrtc::CoarseFilterUpdateGain::Compute(*(v251 + 8 * v37), v269, a4, v323, *(*(v252 + 8 * v37) + 40), *(a5 + 2000), &v279);
      v249 = *(a1 + 792);
      if (v37 >= (*(a1 + 800) - v249) >> 2)
      {
        goto LABEL_160;
      }

      v253 = *(v249 + 4 * v37);
      if (v253 <= 1)
      {
        v253 = 1;
      }

      v250 = v253 - 1;
LABEL_142:
      *(v249 + 4 * v37) = v250;
      v254 = *(a1 + 672);
      if (v37 >= (*(a1 + 680) - v254) >> 3)
      {
        goto LABEL_160;
      }

      v255 = *(v254 + 8 * v37);
      webrtc::AdaptiveFirFilter::UpdateSize(v255);
      webrtc::aec3::AdaptPartitions(a2, &v279, v255[5], v255 + 9);
      webrtc::AdaptiveFirFilter::Constrain(v255);
      if (!v37)
      {
        if (*(a1 + 752) == *(a1 + 744))
        {
          goto LABEL_160;
        }

        if (*(a1 + 848) == *(a1 + 840))
        {
          goto LABEL_160;
        }

        v256 = *(a1 + 648);
        if (*(a1 + 656) == v256)
        {
          goto LABEL_160;
        }

        v257 = *v256;
        v258 = *(*v256 + 24);
        if (v258)
        {
          v259 = *(v257 + 72);
          v260 = 0xAAAAAAAAAAAAAAABLL * ((*(v257 + 80) - v259) >> 3);
          v261 = (v259 + 8);
          while (v260 && *v261 != *(v261 - 1))
          {
            v261 += 3;
            --v260;
            if (!--v258)
            {
              goto LABEL_152;
            }
          }

          goto LABEL_160;
        }

LABEL_152:
        v262 = *(a1 + 672);
        if (*(a1 + 680) == v262)
        {
          goto LABEL_160;
        }

        v263 = *v262;
        v264 = *(*v262 + 24);
        if (v264)
        {
          v265 = *(v263 + 72);
          v266 = 0xAAAAAAAAAAAAAAABLL * ((*(v263 + 80) - v265) >> 3);
          v267 = (v265 + 8);
          while (v266 && *v267 != *(v267 - 1))
          {
            v267 += 3;
            --v266;
            if (!--v264)
            {
              goto LABEL_33;
            }
          }

          goto LABEL_160;
        }
      }

LABEL_33:
      v40.i64[0] = 0xC7000000C7000000;
      v40.i64[1] = 0xC7000000C7000000;
      v41 = vdupq_n_s32(0x46FFFE00u);
      v42 = vbslq_s8(vcgeq_f32(v40, *(v56 + 528)), v40, vbslq_s8(vcgeq_f32(*(v56 + 528), v41), v41, *(v56 + 528)));
      v43 = *(v56 + 544);
      v44 = *(v56 + 560);
      *(v56 + 512) = vbslq_s8(vcgeq_f32(v40, *(v56 + 512)), v40, vbslq_s8(vcgeq_f32(*(v56 + 512), v41), v41, *(v56 + 512)));
      *(v56 + 528) = v42;
      *(v56 + 544) = vbslq_s8(vcgeq_f32(v40, v43), v40, vbslq_s8(vcgeq_f32(v43, v41), v41, v43));
      *(v56 + 560) = vbslq_s8(vcgeq_f32(v40, v44), v40, vbslq_s8(vcgeq_f32(v44, v41), v41, v44));
      v45 = vbslq_s8(vcgeq_f32(v40, *(v56 + 592)), v40, vbslq_s8(vcgeq_f32(*(v56 + 592), v41), v41, *(v56 + 592)));
      *(v56 + 576) = vbslq_s8(vcgeq_f32(v40, *(v56 + 576)), v40, vbslq_s8(vcgeq_f32(*(v56 + 576), v41), v41, *(v56 + 576)));
      *(v56 + 592) = v45;
      v46 = vbslq_s8(vcgeq_f32(v40, *(v56 + 624)), v40, vbslq_s8(vcgeq_f32(*(v56 + 624), v41), v41, *(v56 + 624)));
      *(v56 + 608) = vbslq_s8(vcgeq_f32(v40, *(v56 + 608)), v40, vbslq_s8(vcgeq_f32(*(v56 + 608), v41), v41, *(v56 + 608)));
      *(v56 + 624) = v46;
      v47 = vbslq_s8(vcgeq_f32(v40, *(v56 + 656)), v40, vbslq_s8(vcgeq_f32(*(v56 + 656), v41), v41, *(v56 + 656)));
      *(v56 + 640) = vbslq_s8(vcgeq_f32(v40, *(v56 + 640)), v40, vbslq_s8(vcgeq_f32(*(v56 + 640), v41), v41, *(v56 + 640)));
      *(v56 + 656) = v47;
      v48 = vbslq_s8(vcgeq_f32(v40, *(v56 + 688)), v40, vbslq_s8(vcgeq_f32(*(v56 + 688), v41), v41, *(v56 + 688)));
      *(v56 + 672) = vbslq_s8(vcgeq_f32(v40, *(v56 + 672)), v40, vbslq_s8(vcgeq_f32(*(v56 + 672), v41), v41, *(v56 + 672)));
      *(v56 + 688) = v48;
      v49 = vbslq_s8(vcgeq_f32(v40, *(v56 + 720)), v40, vbslq_s8(vcgeq_f32(*(v56 + 720), v41), v41, *(v56 + 720)));
      *(v56 + 704) = vbslq_s8(vcgeq_f32(v40, *(v56 + 704)), v40, vbslq_s8(vcgeq_f32(*(v56 + 704), v41), v41, *(v56 + 704)));
      *(v56 + 720) = v49;
      v50 = *(v56 + 736);
      v51 = vcgeq_f32(v40, v50);
      v52 = vbslq_s8(vcgeq_f32(v50, v41), v41, v50);
      v53 = vbslq_s8(vcgeq_f32(v40, *(v56 + 752)), v40, vbslq_s8(vcgeq_f32(*(v56 + 752), v41), v41, *(v56 + 752)));
      *(v56 + 736) = vbslq_s8(v51, v40, v52);
      *(v56 + 752) = v53;
      ++v37;
      v39 += 2092;
      v36 = v273 + 64;
      v38 += 2092;
      if (v37 >= *(a1 + 632))
      {
        return;
      }
    }

    if (v136 > (((v138 * 200.0) * 200.0) * 64.0))
    {
      v140 = v135 / v136;
      if (v135 <= (((v138 * 7500.0) * 7500.0) * 64.0))
      {
        v141 = v133 + 4;
        v142 = v133[4];
        v143 = *(v133 + 5);
        if (v143 <= 1)
        {
          v144 = 1;
        }

        else
        {
          v144 = *(v133 + 5);
        }

        *(v133 + 5) = v144 - 1;
        if (v140 >= v142 && v143 <= 1)
        {
          goto LABEL_71;
        }
      }

      else
      {
        v141 = v133 + 4;
        v142 = v133[4];
        *(v133 + 5) = 4;
      }

      *v141 = v142 + ((v140 - v142) * 0.1);
    }

LABEL_71:
    *(v133 + 1) = 0;
    v133[1] = 0.0;
    goto LABEL_72;
  }
}

float *webrtc::SubtractorOutput::ComputeMetrics(float *result, float *a2, uint64_t a3)
{
  v3 = 0.0;
  if (!a3)
  {
    goto LABEL_9;
  }

  v4 = (a3 - 1) & 0x3FFFFFFFFFFFFFFFLL;
  if (v4)
  {
    v5 = v4 + 1;
    v6 = (v4 + 1) & 0x7FFFFFFFFFFFFFFELL;
    v7 = &a2[v6];
    v8 = a2 + 1;
    v9 = v6;
    do
    {
      v3 = (v3 + (*(v8 - 1) * *(v8 - 1))) + (*v8 * *v8);
      v8 += 2;
      v9 -= 2;
    }

    while (v9);
    if (v5 == v6)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v7 = a2;
  }

  do
  {
    v10 = *v7++;
    v3 = v3 + (v10 * v10);
  }

  while (v7 != &a2[a3]);
LABEL_9:
  result[520] = v3;
  v11 = (((((((((((((((((((((result[128] * result[128]) + 0.0) + (result[129] * result[129])) + (result[130] * result[130])) + (result[131] * result[131])) + (result[132] * result[132])) + (result[133] * result[133])) + (result[134] * result[134])) + (result[135] * result[135])) + (result[136] * result[136])) + (result[137] * result[137])) + (result[138] * result[138])) + (result[139] * result[139])) + (result[140] * result[140])) + (result[141] * result[141])) + (result[142] * result[142])) + (result[143] * result[143])) + (result[144] * result[144])) + (result[145] * result[145])) + (result[146] * result[146])) + (result[147] * result[147])) + (result[148] * result[148]);
  v12 = ((((((((((((((((((((v11 + (result[149] * result[149])) + (result[150] * result[150])) + (result[151] * result[151])) + (result[152] * result[152])) + (result[153] * result[153])) + (result[154] * result[154])) + (result[155] * result[155])) + (result[156] * result[156])) + (result[157] * result[157])) + (result[158] * result[158])) + (result[159] * result[159])) + (result[160] * result[160])) + (result[161] * result[161])) + (result[162] * result[162])) + (result[163] * result[163])) + (result[164] * result[164])) + (result[165] * result[165])) + (result[166] * result[166])) + (result[167] * result[167])) + (result[168] * result[168])) + (result[169] * result[169]);
  v13 = ((((((((((((((((((((v12 + (result[170] * result[170])) + (result[171] * result[171])) + (result[172] * result[172])) + (result[173] * result[173])) + (result[174] * result[174])) + (result[175] * result[175])) + (result[176] * result[176])) + (result[177] * result[177])) + (result[178] * result[178])) + (result[179] * result[179])) + (result[180] * result[180])) + (result[181] * result[181])) + (result[182] * result[182])) + (result[183] * result[183])) + (result[184] * result[184])) + (result[185] * result[185])) + (result[186] * result[186])) + (result[187] * result[187])) + (result[188] * result[188])) + (result[189] * result[189])) + (result[190] * result[190]);
  result[518] = v13 + (result[191] * result[191]);
  v14 = (((((((((((((((((((((result[192] * result[192]) + 0.0) + (result[193] * result[193])) + (result[194] * result[194])) + (result[195] * result[195])) + (result[196] * result[196])) + (result[197] * result[197])) + (result[198] * result[198])) + (result[199] * result[199])) + (result[200] * result[200])) + (result[201] * result[201])) + (result[202] * result[202])) + (result[203] * result[203])) + (result[204] * result[204])) + (result[205] * result[205])) + (result[206] * result[206])) + (result[207] * result[207])) + (result[208] * result[208])) + (result[209] * result[209])) + (result[210] * result[210])) + (result[211] * result[211])) + (result[212] * result[212]);
  v15 = ((((((((((((((((((((v14 + (result[213] * result[213])) + (result[214] * result[214])) + (result[215] * result[215])) + (result[216] * result[216])) + (result[217] * result[217])) + (result[218] * result[218])) + (result[219] * result[219])) + (result[220] * result[220])) + (result[221] * result[221])) + (result[222] * result[222])) + (result[223] * result[223])) + (result[224] * result[224])) + (result[225] * result[225])) + (result[226] * result[226])) + (result[227] * result[227])) + (result[228] * result[228])) + (result[229] * result[229])) + (result[230] * result[230])) + (result[231] * result[231])) + (result[232] * result[232])) + (result[233] * result[233]);
  v16 = ((((((((((((((((((((v15 + (result[234] * result[234])) + (result[235] * result[235])) + (result[236] * result[236])) + (result[237] * result[237])) + (result[238] * result[238])) + (result[239] * result[239])) + (result[240] * result[240])) + (result[241] * result[241])) + (result[242] * result[242])) + (result[243] * result[243])) + (result[244] * result[244])) + (result[245] * result[245])) + (result[246] * result[246])) + (result[247] * result[247])) + (result[248] * result[248])) + (result[249] * result[249])) + (result[250] * result[250])) + (result[251] * result[251])) + (result[252] * result[252])) + (result[253] * result[253])) + (result[254] * result[254]);
  result[519] = v16 + (result[255] * result[255]);
  v17 = *result;
  v18 = result[11];
  v19 = ((((((((((((((((((((((v17 * v17) + 0.0) + (result[1] * result[1])) + (result[2] * result[2])) + (result[3] * result[3])) + (result[4] * result[4])) + (result[5] * result[5])) + (result[6] * result[6])) + (result[7] * result[7])) + (result[8] * result[8])) + (result[9] * result[9])) + (result[10] * result[10])) + (v18 * v18)) + (result[12] * result[12])) + (result[13] * result[13])) + (result[14] * result[14])) + (result[15] * result[15])) + (result[16] * result[16])) + (result[17] * result[17])) + (result[18] * result[18])) + (result[19] * result[19])) + (result[20] * result[20])) + (result[21] * result[21]);
  v20 = result[33];
  v21 = (((((((((((((((((((((v19 + (result[22] * result[22])) + (result[23] * result[23])) + (result[24] * result[24])) + (result[25] * result[25])) + (result[26] * result[26])) + (result[27] * result[27])) + (result[28] * result[28])) + (result[29] * result[29])) + (result[30] * result[30])) + (result[31] * result[31])) + (result[32] * result[32])) + (v20 * v20)) + (result[34] * result[34])) + (result[35] * result[35])) + (result[36] * result[36])) + (result[37] * result[37])) + (result[38] * result[38])) + (result[39] * result[39])) + (result[40] * result[40])) + (result[41] * result[41])) + (result[42] * result[42])) + (result[43] * result[43]);
  v22 = result[55];
  result[516] = (((((((((((((((((((v21 + (result[44] * result[44])) + (result[45] * result[45])) + (result[46] * result[46])) + (result[47] * result[47])) + (result[48] * result[48])) + (result[49] * result[49])) + (result[50] * result[50])) + (result[51] * result[51])) + (result[52] * result[52])) + (result[53] * result[53])) + (result[54] * result[54])) + (v22 * v22)) + (result[56] * result[56])) + (result[57] * result[57])) + (result[58] * result[58])) + (result[59] * result[59])) + (result[60] * result[60])) + (result[61] * result[61])) + (result[62] * result[62])) + (result[63] * result[63]);
  v23 = result + 64;
  v24 = result[64];
  v25 = ((((((((((((((((((((((v24 * v24) + 0.0) + (result[65] * result[65])) + (result[66] * result[66])) + (result[67] * result[67])) + (result[68] * result[68])) + (result[69] * result[69])) + (result[70] * result[70])) + (result[71] * result[71])) + (result[72] * result[72])) + (result[73] * result[73])) + (result[74] * result[74])) + (result[75] * result[75])) + (result[76] * result[76])) + (result[77] * result[77])) + (result[78] * result[78])) + (result[79] * result[79])) + (result[80] * result[80])) + (result[81] * result[81])) + (result[82] * result[82])) + (result[83] * result[83])) + (result[84] * result[84])) + (result[85] * result[85]);
  v26 = ((((((((((((((((((((v25 + (result[86] * result[86])) + (result[87] * result[87])) + (result[88] * result[88])) + (result[89] * result[89])) + (result[90] * result[90])) + (result[91] * result[91])) + (result[92] * result[92])) + (result[93] * result[93])) + (result[94] * result[94])) + (result[95] * result[95])) + (result[96] * result[96])) + (result[97] * result[97])) + (result[98] * result[98])) + (result[99] * result[99])) + (result[100] * result[100])) + (result[101] * result[101])) + (result[102] * result[102])) + (result[103] * result[103])) + (result[104] * result[104])) + (result[105] * result[105])) + (result[106] * result[106]);
  v27 = result[127];
  result[517] = ((((((((((((((((((((v26 + (result[107] * result[107])) + (result[108] * result[108])) + (result[109] * result[109])) + (result[110] * result[110])) + (result[111] * result[111])) + (result[112] * result[112])) + (result[113] * result[113])) + (result[114] * result[114])) + (result[115] * result[115])) + (result[116] * result[116])) + (result[117] * result[117])) + (result[118] * result[118])) + (result[119] * result[119])) + (result[120] * result[120])) + (result[121] * result[121])) + (result[122] * result[122])) + (result[123] * result[123])) + (result[124] * result[124])) + (result[125] * result[125])) + (result[126] * result[126])) + (v27 * v27);
  v28 = 1;
  v29 = v17;
  v30 = result;
  do
  {
    if (v29 < result[v28])
    {
      v29 = result[v28];
      v30 = &result[v28];
    }

    ++v28;
  }

  while (v28 != 64);
  v31 = *v30;
  result[521] = *v30;
  v32 = result + 1;
  v33 = 252;
  v34 = result;
  v35 = result + 1;
  do
  {
    v36 = *v35++;
    v37 = v36;
    if (v36 < v17)
    {
      v17 = v37;
      v34 = v32;
    }

    v32 = v35;
    v33 -= 4;
  }

  while (v33);
  v38 = result + 65;
  if (v31 < -*v34)
  {
    v31 = -*v34;
  }

  result[521] = v31;
  v39 = 252;
  v40 = v24;
  v41 = result + 64;
  v42 = result + 65;
  do
  {
    v43 = *v42++;
    v44 = v43;
    if (v40 < v43)
    {
      v40 = v44;
      v41 = v38;
    }

    v38 = v42;
    v39 -= 4;
  }

  while (v39);
  v45 = *v41;
  result[522] = *v41;
  v46 = result + 65;
  v47 = 252;
  v48 = result + 65;
  do
  {
    v49 = *v48++;
    v50 = v49;
    if (v49 < v24)
    {
      v24 = v50;
      v23 = v46;
    }

    v46 = v48;
    v47 -= 4;
  }

  while (v47);
  if (v45 < -*v23)
  {
    v45 = -*v23;
  }

  result[522] = v45;
  return result;
}

void dcsctp::SupportedExtensionsParameter::~SupportedExtensionsParameter(dcsctp::SupportedExtensionsParameter *this)
{
  *this = &unk_2882A0940;
  v1 = *(this + 1);
  if (v1)
  {
    *(this + 2) = v1;
    operator delete(v1);
  }
}

{
  *this = &unk_2882A0940;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

void dcsctp::SupportedExtensionsParameter::SerializeTo(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 16) - *(a1 + 8);
  v11 = *a2;
  v12 = a2[1] - *a2;
  v13 = v10 + 4;
  v14 = v12 + v10 + 4;
  if (v12 >= v14)
  {
    if (v12 > v14)
    {
      a2[1] = v11 + v14;
    }
  }

  else
  {
    std::vector<unsigned char>::__append(a2, v10 + 4);
    v11 = *a2;
  }

  v15 = v11 + v12;
  *v15 = 2176;
  *(v15 + 2) = HIBYTE(v13);
  *(v15 + 3) = v13;
  if (v10 >= 0xFFFFFFFFFFFFFFFCLL)
  {
    webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/net/dcsctp/packet/bounded_byte_writer.h", 59, "data.size() >= FixedSize", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v22);
    dcsctp::SupportedExtensionsParameter::ToString(v21);
  }

  else
  {
    v16 = *(a1 + 16) - *(a1 + 8);
    if (v16)
    {
      v17 = *(a1 + 8);
    }

    else
    {
      v17 = 0;
    }

    if (v10 >= v16)
    {
      v18 = *(a1 + 16) - *(a1 + 8);
    }

    else
    {
      v18 = v10;
    }

    if (v17)
    {
      v19 = v18 == 0;
    }

    else
    {
      v19 = 1;
    }

    if (!v19)
    {
      v20 = (*a2 + v12 + 4);

      memcpy(v20, v17, v18);
    }
  }
}

double dcsctp::SupportedExtensionsParameter::ToString@<D0>(dcsctp::SupportedExtensionsParameter *this@<X0>, char *a2@<X2>, std::string *a3@<X8>)
{
  if (&v53 <= "Supported Extensions (" && &v53.__r_.__value_.__r.__words[2] + 6 > "Supported Extensions (")
  {
    goto LABEL_143;
  }

  strcpy(&v53, "Supported Extensions (");
  *(&v53.__r_.__value_.__s + 23) = 22;
  v4 = *(this + 1);
  v5 = *(this + 2);
  memset(&v54, 0, sizeof(v54));
  if (v4 != v5)
  {
    v6 = *v4;
    __p.__r_.__value_.__r.__words[2] = 0x1600000000000000;
    *&__p.__r_.__value_.__l.__data_ = 0uLL;
    v7 = absl::numbers_internal::FastIntToBuffer(v6, &__p, a2);
    v9 = v7 - &__p;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      if (__p.__r_.__value_.__l.__size_ < v9)
      {
        goto LABEL_144;
      }

      p_p = __p.__r_.__value_.__r.__words[0];
      __p.__r_.__value_.__l.__size_ = v7 - &__p;
    }

    else
    {
      if (v9 > SHIBYTE(__p.__r_.__value_.__r.__words[2]))
      {
        goto LABEL_144;
      }

      *(&__p.__r_.__value_.__s + 23) = v7 - &__p;
      p_p = &__p;
    }

    p_p->__r_.__value_.__s.__data_[v9] = 0;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &__p;
    }

    else
    {
      v11 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    if (!v11 && size)
    {
      goto LABEL_143;
    }

    if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = 22;
    }

    else
    {
      v13 = (v54.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = HIBYTE(v54.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v14 = v54.__r_.__value_.__l.__size_;
    }

    if (v13 - v14 < size)
    {
      std::string::__grow_by_and_replace(&v54, v13, v14 + size - v13, v14, v14, 0, size, v11);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_27;
      }

      goto LABEL_39;
    }

    if (size)
    {
      if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = &v54;
      }

      else
      {
        v16 = v54.__r_.__value_.__r.__words[0];
      }

      if ((size & 0x8000000000000000) != 0)
      {
        goto LABEL_143;
      }

      v17 = v16 + v14;
      if ((v16 + v14) <= v11 && &v17[size] > v11)
      {
        goto LABEL_143;
      }

      v18 = size;
      memmove(v17, v11, size);
      v19 = v14 + v18;
      if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
      {
        v54.__r_.__value_.__l.__size_ = v14 + v18;
        v16->__r_.__value_.__s.__data_[v19] = 0;
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_39:
          v15 = v4 + 1;
          if (v4 + 1 == v5)
          {
            goto LABEL_96;
          }

          while (1)
          {
            while (1)
            {
LABEL_43:
              if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v20 = 22;
              }

              else
              {
                v20 = (v54.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
              }

              if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v21 = HIBYTE(v54.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v21 = v54.__r_.__value_.__l.__size_;
              }

              if (v20 - v21 >= 2)
              {
                if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v22 = &v54;
                }

                else
                {
                  v22 = v54.__r_.__value_.__r.__words[0];
                }

                if (v22 + v21 <= ", " && &v22->__r_.__value_.__s.__data_[v21 + 2] > ", ")
                {
                  goto LABEL_143;
                }

                *(&v22->__r_.__value_.__l.__data_ + v21) = 8236;
                v24 = v21 + 2;
                if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
                {
                  v54.__r_.__value_.__l.__size_ = v21 + 2;
                }

                else
                {
                  *(&v54.__r_.__value_.__s + 23) = v24 & 0x7F;
                }

                v22->__r_.__value_.__s.__data_[v24] = 0;
              }

              else
              {
                std::string::__grow_by_and_replace(&v54, v20, v21 - v20 + 2, v21, v21, 0, 2uLL, ", ");
              }

              v25 = *v15;
              __p.__r_.__value_.__r.__words[2] = 0x1600000000000000;
              *&__p.__r_.__value_.__l.__data_ = 0uLL;
              v26 = absl::numbers_internal::FastIntToBuffer(v25, &__p, v8);
              v27 = v26 - &__p;
              if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
              {
                if (__p.__r_.__value_.__l.__size_ < v27)
                {
                  goto LABEL_144;
                }

                v28 = __p.__r_.__value_.__r.__words[0];
                __p.__r_.__value_.__l.__size_ = v26 - &__p;
              }

              else
              {
                if (v27 > SHIBYTE(__p.__r_.__value_.__r.__words[2]))
                {
                  goto LABEL_144;
                }

                *(&__p.__r_.__value_.__s + 23) = v26 - &__p;
                v28 = &__p;
              }

              v28->__r_.__value_.__s.__data_[v27] = 0;
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v29 = &__p;
              }

              else
              {
                v29 = __p.__r_.__value_.__r.__words[0];
              }

              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v30 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v30 = __p.__r_.__value_.__l.__size_;
              }

              if (!v29 && v30)
              {
                goto LABEL_143;
              }

              v31 = (v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? 22 : (v54.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
              v32 = (v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v54.__r_.__value_.__r.__words[2]) : v54.__r_.__value_.__l.__size_;
              if (v31 - v32 >= v30)
              {
                break;
              }

              std::string::__grow_by_and_replace(&v54, v31, v32 + v30 - v31, v32, v32, 0, v30, v29);
              if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_42;
              }

LABEL_92:
              operator delete(__p.__r_.__value_.__l.__data_);
              if (++v15 == v5)
              {
                goto LABEL_96;
              }
            }

            if (v30)
            {
              if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v33 = &v54;
              }

              else
              {
                v33 = v54.__r_.__value_.__r.__words[0];
              }

              if ((v30 & 0x8000000000000000) != 0)
              {
                goto LABEL_143;
              }

              v34 = v33 + v32;
              if ((v33 + v32) <= v29 && &v34[v30] > v29)
              {
                goto LABEL_143;
              }

              v35 = v30;
              memmove(v34, v29, v30);
              v36 = v32 + v35;
              if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
              {
                v54.__r_.__value_.__l.__size_ = v32 + v35;
                v33->__r_.__value_.__s.__data_[v36] = 0;
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  goto LABEL_92;
                }

                goto LABEL_42;
              }

              *(&v54.__r_.__value_.__s + 23) = v36 & 0x7F;
              v33->__r_.__value_.__s.__data_[v36] = 0;
            }

            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_92;
            }

LABEL_42:
            if (++v15 == v5)
            {
              goto LABEL_96;
            }
          }
        }

LABEL_27:
        operator delete(__p.__r_.__value_.__l.__data_);
        v15 = v4 + 1;
        if (v4 + 1 != v5)
        {
          goto LABEL_43;
        }

        goto LABEL_96;
      }

      *(&v54.__r_.__value_.__s + 23) = v19 & 0x7F;
      v16->__r_.__value_.__s.__data_[v19] = 0;
    }

    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_27;
  }

LABEL_96:
  __p = v54;
  if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v37 = &__p;
  }

  else
  {
    v37 = v54.__r_.__value_.__r.__words[0];
  }

  if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v38 = HIBYTE(v54.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v38 = v54.__r_.__value_.__l.__size_;
  }

  if (!v37 && v38)
  {
    goto LABEL_143;
  }

  if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v39 = 22;
  }

  else
  {
    v39 = (v53.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v40 = HIBYTE(v53.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v40 = v53.__r_.__value_.__l.__size_;
  }

  if (v39 - v40 < v38)
  {
    std::string::__grow_by_and_replace(&v53, v39, v40 + v38 - v39, v40, v40, 0, v38, v37);
    goto LABEL_123;
  }

  if (v38)
  {
    if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v41 = &v53;
    }

    else
    {
      v41 = v53.__r_.__value_.__r.__words[0];
    }

    if ((v38 & 0x8000000000000000) == 0)
    {
      v42 = v41 + v40;
      if ((v41 + v40) > v37 || &v42[v38] <= v37)
      {
        v43 = v38;
        memmove(v42, v37, v38);
        v44 = v40 + v43;
        if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
        {
          v53.__r_.__value_.__l.__size_ = v40 + v43;
        }

        else
        {
          *(&v53.__r_.__value_.__s + 23) = v44 & 0x7F;
        }

        v41->__r_.__value_.__s.__data_[v44] = 0;
        goto LABEL_123;
      }
    }

LABEL_143:
    __break(1u);
LABEL_144:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

LABEL_123:
  v45 = HIBYTE(v53.__r_.__value_.__r.__words[2]);
  if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v46 = 22;
  }

  else
  {
    v46 = (v53.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v45 = v53.__r_.__value_.__l.__size_;
  }

  if (v46 != v45)
  {
    v47 = a3;
    v49 = &v53;
    if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v49 = v53.__r_.__value_.__r.__words[0];
    }

    v50 = v49 + v45;
    if (v49 + v45 > ")" || v50 + 1 <= ")")
    {
      *v50 = 41;
      v51 = v45 + 1;
      if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
      {
        v53.__r_.__value_.__l.__size_ = v51;
        v49->__r_.__value_.__s.__data_[v51] = 0;
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_131;
        }
      }

      else
      {
        *(&v53.__r_.__value_.__s + 23) = v51 & 0x7F;
        v49->__r_.__value_.__s.__data_[v51] = 0;
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_131;
        }
      }

      goto LABEL_130;
    }

    goto LABEL_143;
  }

  std::string::__grow_by_and_replace(&v53, v46, 1uLL, v46, v46, 0, 1uLL, ")");
  v47 = a3;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_130:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_131:
  result = *&v53.__r_.__value_.__l.__data_;
  *v47 = v53;
  return result;
}

uint64_t webrtc::SuppressionFilter::SuppressionFilter(uint64_t a1, int a2, int a3, unint64_t a4)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 8) = a4;
  *(a1 + 16) = 0;
  if (a4)
  {
    if (!HIBYTE(a4))
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if ((a3 + 15999) >= 0x7CFF)
  {
    if (a3 > -16000)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    if (0xAAAAAAAAAAAAAAABLL * (-v5 >> 3) <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = 0xAAAAAAAAAAAAAAABLL * (-v5 >> 3);
    }

    v7 = (v5 + 8);
    do
    {
      v8 = *(v7 - 1);
      if (*v7 != v8)
      {
        v9 = (*v7 - v8) >> 8;
        if (v9 <= 1)
        {
          v9 = 1;
        }

        bzero(v8, v9 << 8);
      }

      v7 += 3;
      --v6;
    }

    while (v6);
  }

  return a1;
}

void webrtc::SuppressionFilter::ApplyGain(void *a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, float32x4_t *a7, uint64_t a8, uint64_t a9, unsigned int *a10)
{
  v233 = *&a3;
  v289 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    __asm { FMOV            V3.4S, #1.0 }

    v249 = vsqrtq_f32(vmlsq_f32(_Q3, *a7, *a7));
    v248 = vsqrtq_f32(vmlsq_f32(_Q3, a7[1], a7[1]));
    v247 = vsqrtq_f32(vmlsq_f32(_Q3, a7[2], a7[2]));
    v246 = vsqrtq_f32(vmlsq_f32(_Q3, a7[3], a7[3]));
    v245 = vsqrtq_f32(vmlsq_f32(_Q3, a7[4], a7[4]));
    v244 = vsqrtq_f32(vmlsq_f32(_Q3, a7[5], a7[5]));
    v243 = vsqrtq_f32(vmlsq_f32(_Q3, a7[6], a7[6]));
    v242 = vsqrtq_f32(vmlsq_f32(_Q3, a7[7], a7[7]));
    v241 = vsqrtq_f32(vmlsq_f32(_Q3, a7[8], a7[8]));
    v240 = vsqrtq_f32(vmlsq_f32(_Q3, a7[9], a7[9]));
    v238 = vsqrtq_f32(vmlsq_f32(_Q3, a7[11], a7[11]));
    v239 = vsqrtq_f32(vmlsq_f32(_Q3, a7[10], a7[10]));
    v236 = vsqrtq_f32(vmlsq_f32(_Q3, a7[13], a7[13]));
    v237 = vsqrtq_f32(vmlsq_f32(_Q3, a7[12], a7[12]));
    v234 = vsqrtq_f32(vmlsq_f32(_Q3, a7[15], a7[15]));
    v235 = vsqrtq_f32(vmlsq_f32(_Q3, a7[14], a7[14]));
    v19 = sqrtf(1.0 - (a7[16].f32[0] * a7[16].f32[0]));
    *&a3 = (sqrtf(1.0 - (*&a3 * *&a3)) * 0.4) * 0.015625;
    v231 = *&a3;
    v230 = vdupq_lane_s32(*&a3, 0);
    do
    {
      v252 = v13;
      v20 = (a8 + 520 * v14);
      v21 = *v20;
      v22 = v20[1];
      *&v288[32] = v20[2];
      *&v288[16] = v22;
      *v288 = v21;
      v23 = v20[3];
      v24 = v20[4];
      v25 = v20[5];
      *&v288[96] = v20[6];
      *&v288[80] = v25;
      *&v288[64] = v24;
      *&v288[48] = v23;
      v26 = v20[7];
      v27 = v20[8];
      v28 = v20[9];
      *&v288[160] = v20[10];
      *&v288[144] = v28;
      *&v288[128] = v27;
      *&v288[112] = v26;
      v29 = v20[11];
      v30 = v20[12];
      v31 = v20[13];
      *&v288[224] = v20[14];
      *&v288[208] = v31;
      *&v288[192] = v30;
      *&v288[176] = v29;
      v32 = v20[15];
      LODWORD(v29) = *(v20 + 64);
      v33 = *(v20 + 340);
      v35 = *(v20 + 308);
      v34 = *(v20 + 324);
      *&v287[96] = *(v20 + 356);
      *&v287[80] = v33;
      *&v287[48] = v35;
      *&v287[64] = v34;
      v36 = *(v20 + 404);
      v38 = *(v20 + 372);
      v37 = *(v20 + 388);
      *&v287[160] = *(v20 + 420);
      *&v287[144] = v36;
      *&v287[112] = v38;
      *&v287[128] = v37;
      v39 = *(v20 + 468);
      v41 = *(v20 + 436);
      v40 = *(v20 + 452);
      *&v287[224] = *(v20 + 484);
      *&v287[208] = v39;
      *&v287[176] = v41;
      *&v287[192] = v40;
      v42 = *(v20 + 260);
      v43 = *(v20 + 276);
      *&v287[32] = *(v20 + 292);
      *&v287[16] = v43;
      *v287 = v42;
      v44 = *(v20 + 500);
      *v287 = 0;
      v45 = a2 + 520 * v14;
      v46 = a7[1];
      v47 = vmulq_f32(*a7, *v287);
      *v288 = vmlaq_f32(vmulq_f32(*v288, *a7), *v45, v249);
      *v287 = vmlaq_f32(v47, *(v45 + 260), v249);
      *&v288[16] = vmlaq_f32(vmulq_f32(*&v288[16], v46), *(v45 + 16), v248);
      *&v287[16] = vmlaq_f32(vmulq_f32(v46, v43), *(v45 + 276), v248);
      v48 = a7[2];
      v49 = a7[3];
      *&v288[32] = vmlaq_f32(vmulq_f32(*&v288[32], v48), *(v45 + 32), v247);
      *&v287[32] = vmlaq_f32(vmulq_f32(v48, *&v287[32]), *(v45 + 292), v247);
      *&v288[48] = vmlaq_f32(vmulq_f32(*&v288[48], v49), *(v45 + 48), v246);
      *&v287[48] = vmlaq_f32(vmulq_f32(v49, *&v287[48]), *(v45 + 308), v246);
      v50 = a7[4];
      v51 = a7[5];
      *&v288[64] = vmlaq_f32(vmulq_f32(*&v288[64], v50), *(v45 + 64), v245);
      *&v287[64] = vmlaq_f32(vmulq_f32(v50, *&v287[64]), *(v45 + 324), v245);
      *&v288[80] = vmlaq_f32(vmulq_f32(*&v288[80], v51), *(v45 + 80), v244);
      *&v287[80] = vmlaq_f32(vmulq_f32(v51, *&v287[80]), *(v45 + 340), v244);
      v52 = a7[6];
      v53 = a7[7];
      *&v288[96] = vmlaq_f32(vmulq_f32(*&v288[96], v52), *(v45 + 96), v243);
      *&v287[96] = vmlaq_f32(vmulq_f32(v52, *&v287[96]), *(v45 + 356), v243);
      *&v288[112] = vmlaq_f32(vmulq_f32(*&v288[112], v53), *(v45 + 112), v242);
      *&v287[112] = vmlaq_f32(vmulq_f32(v53, *&v287[112]), *(v45 + 372), v242);
      v54 = a7[8];
      v55 = a7[9];
      *&v288[128] = vmlaq_f32(vmulq_f32(*&v288[128], v54), *(v45 + 128), v241);
      *&v287[128] = vmlaq_f32(vmulq_f32(v54, *&v287[128]), *(v45 + 388), v241);
      *&v288[144] = vmlaq_f32(vmulq_f32(*&v288[144], v55), *(v45 + 144), v240);
      *&v287[144] = vmlaq_f32(vmulq_f32(v55, *&v287[144]), *(v45 + 404), v240);
      v56 = a7[10];
      v57 = a7[11];
      *&v288[160] = vmlaq_f32(vmulq_f32(*&v288[160], v56), *(v45 + 160), v239);
      *&v287[160] = vmlaq_f32(vmulq_f32(v56, *&v287[160]), *(v45 + 420), v239);
      *&v288[176] = vmlaq_f32(vmulq_f32(*&v288[176], v57), *(v45 + 176), v238);
      *&v287[176] = vmlaq_f32(vmulq_f32(v57, *&v287[176]), *(v45 + 436), v238);
      v58 = a7[12];
      v59 = a7[13];
      *&v288[192] = vmlaq_f32(vmulq_f32(*&v288[192], v58), *(v45 + 192), v237);
      *&v287[192] = vmlaq_f32(vmulq_f32(v58, v40), *(v45 + 452), v237);
      *&v288[208] = vmlaq_f32(vmulq_f32(*&v288[208], v59), *(v45 + 208), v236);
      *&v287[208] = vmlaq_f32(vmulq_f32(v59, *&v287[208]), *(v45 + 468), v236);
      v60 = a7[14];
      v61 = a7[15];
      v62 = v14 << 6;
      *&v288[224] = vmlaq_f32(vmulq_f32(*&v288[224], v60), *(v45 + 224), v235);
      *&v287[224] = vmlaq_f32(vmulq_f32(v60, *&v287[224]), *(v45 + 484), v235);
      v63 = vmlaq_f32(vmulq_f32(v32, v61), *(v45 + 240), v234);
      v64 = vmlaq_f32(vmulq_f32(v61, v44), *(v45 + 500), v234);
      *&v29 = (*&v29 * a7[16].f32[0]) + (v19 * *(v45 + 256));
      v43.i32[0] = *v288;
      v291.val[0] = *&v288[4];
      v291.val[1] = *&v287[4];
      v65 = &v271[0].f32[2];
      v66 = &v270[0].f32[2];
      vst2q_f32(v66, v291);
      v291.val[0] = *&v288[20];
      v291.val[1] = *&v287[20];
      vst2q_f32(v65, v291);
      v291.val[0] = *&v288[36];
      v291.val[1] = *&v287[36];
      v67 = &v273[0].f32[2];
      v68 = &v272[0].f32[2];
      vst2q_f32(v68, v291);
      v291.val[0] = *&v288[52];
      v291.val[1] = *&v287[52];
      vst2q_f32(v67, v291);
      v291.val[0] = *&v288[68];
      v291.val[1] = *&v287[68];
      v69 = &v275[0].f32[2];
      v70 = &v274[0].f32[2];
      vst2q_f32(v70, v291);
      v291.val[0] = *&v288[84];
      v291.val[1] = *&v287[84];
      vst2q_f32(v69, v291);
      v291.val[0] = *&v288[100];
      v291.val[1] = *&v287[100];
      v71 = &v277[0].f32[2];
      v72 = &v276[0].f32[2];
      vst2q_f32(v72, v291);
      v291.val[0] = *&v288[116];
      v291.val[1] = *&v287[116];
      vst2q_f32(v71, v291);
      v291.val[0] = *&v288[132];
      v291.val[1] = *&v287[132];
      v73 = &v280;
      v74 = &v279;
      vst2q_f32(v74, v291);
      v291.val[0] = *&v288[148];
      v291.val[1] = *&v287[148];
      vst2q_f32(v73, v291);
      v291.val[0] = *&v288[164];
      v291.val[1] = *&v287[164];
      v75 = &v282;
      v76 = &v281;
      vst2q_f32(v76, v291);
      v291.val[0] = *&v288[180];
      v291.val[1] = *&v287[180];
      vst2q_f32(v75, v291);
      v291.val[0] = *&v288[196];
      v291.val[1] = *&v287[196];
      v77 = v284;
      v78 = &v283;
      vst2q_f32(v78, v291);
      v291.val[0] = *&v288[212];
      v291.val[1] = *&v287[212];
      vst2q_f32(v77, v291);
      v270[0].i64[0] = __PAIR64__(v29, v43.u32[0]);
      v284[8] = *&v288[228];
      v284[9] = *&v287[228];
      v284[10] = *&v288[232];
      v284[11] = *&v287[232];
      v284[12] = *&v288[236];
      v284[13] = *&v287[236];
      v285 = vzip1q_s32(v63, v64);
      v286 = vzip2q_s32(v63, v64);
      webrtc::OouraFft::InverseFft((a1 + 2), v270);
      v79 = *(a10 + 1);
      if ((v14 << 6) >= ((*(a10 + 2) - v79) >> 2))
      {
        goto LABEL_44;
      }

      v80 = a1[3];
      if (a1[4] == v80)
      {
        goto LABEL_44;
      }

      v81 = *v80;
      if (v14 >= (v80[1] - *v80) >> 8)
      {
        goto LABEL_44;
      }

      v82 = 4 * v62;
      v83 = (v81 + (v14 << 8));
      if ((v82 + v79 - v83) < 0x20 || (v79 - v270 + v82) <= 0x1F)
      {
        v96 = 0;
        v95 = v252;
        v97 = v79 + 4 * v252;
        v98 = v81 + v12;
        do
        {
          v96 += 4;
        }

        while (v96 != 256);
      }

      else
      {
        v84 = (v79 + 4 * v62);
        v85 = vdupq_n_s32(0x3C800000u);
        v86 = vmulq_f32(vmlaq_f32(vmulq_f32(v83[1], xmmword_273BA4E30), xmmword_273BA4E50, v270[1]), v85);
        *v84 = vmulq_f32(vmlaq_f32(vmulq_f32(*v83, xmmword_273BA4E20), xmmword_273BA4E40, v270[0]), v85);
        v84[1] = v86;
        v87 = vmulq_f32(vmlaq_f32(vmulq_f32(v83[3], xmmword_273BA4E70), xmmword_273BA4E90, v271[1]), v85);
        v84[2] = vmulq_f32(vmlaq_f32(vmulq_f32(v83[2], xmmword_273BA4E60), xmmword_273BA4E80, v271[0]), v85);
        v84[3] = v87;
        v88 = vmulq_f32(vmlaq_f32(vmulq_f32(v83[5], xmmword_273BA4EB0), xmmword_273BA4ED0, v272[1]), v85);
        v84[4] = vmulq_f32(vmlaq_f32(vmulq_f32(v83[4], xmmword_273BA4EA0), xmmword_273BA4EC0, v272[0]), v85);
        v84[5] = v88;
        v89 = vmulq_f32(vmlaq_f32(vmulq_f32(v83[7], xmmword_273BA4EF0), xmmword_273BA4F10, v273[1]), v85);
        v84[6] = vmulq_f32(vmlaq_f32(vmulq_f32(v83[6], xmmword_273BA4EE0), xmmword_273BA4F00, v273[0]), v85);
        v84[7] = v89;
        v90 = vmulq_f32(vmlaq_f32(vmulq_f32(v83[9], xmmword_273BA4F30), xmmword_273BA4F50, v274[1]), v85);
        v84[8] = vmulq_f32(vmlaq_f32(vmulq_f32(v83[8], xmmword_273BA4F20), xmmword_273BA4F40, v274[0]), v85);
        v84[9] = v90;
        v91 = vmulq_f32(vmlaq_f32(vmulq_f32(v83[11], xmmword_273BA4F70), xmmword_273BA4F90, v275[1]), v85);
        v84[10] = vmulq_f32(vmlaq_f32(vmulq_f32(v83[10], xmmword_273BA4F60), xmmword_273BA4F80, v275[0]), v85);
        v84[11] = v91;
        v92 = vmulq_f32(vmlaq_f32(vmulq_f32(v83[13], xmmword_273BA4FB0), xmmword_273BA4FD0, v276[1]), v85);
        v84[12] = vmulq_f32(vmlaq_f32(vmulq_f32(v83[12], xmmword_273BA4FA0), xmmword_273BA4FC0, v276[0]), v85);
        v84[13] = v92;
        v93 = vmulq_f32(vmlaq_f32(vmulq_f32(v83[14], xmmword_273BA4FE0), xmmword_273BA5000, v277[0]), v85);
        v94 = vmulq_f32(vmlaq_f32(vmulq_f32(v83[15], xmmword_273BA4FF0), xmmword_273BA5010, v277[1]), v85);
        v84[14] = v93;
        v84[15] = v94;
        v95 = v252;
      }

      memmove(v83, &v278, 0x100uLL);
      v99 = *a10;
      if (v99 <= 1)
      {
        v161.i64[0] = 0xC7000000C7000000;
        v161.i64[1] = 0xC7000000C7000000;
      }

      else
      {
        v100 = a10[1];
        v101 = *(a10 + 1);
        v102 = (*(a10 + 2) - v101) >> 2;
        v103 = v99 - 1;
        v104 = (v100 + v14) << 6;
        v105 = v100 << 6;
        do
        {
          if (v102 <= v104)
          {
            goto LABEL_44;
          }

          v106 = (v101 + 4 * v104);
          v107 = vmulq_n_f32(v106[1], v233);
          *v106 = vmulq_n_f32(*v106, v233);
          v106[1] = v107;
          v108 = vmulq_n_f32(v106[3], v233);
          v106[2] = vmulq_n_f32(v106[2], v233);
          v106[3] = v108;
          v109 = vmulq_n_f32(v106[5], v233);
          v106[4] = vmulq_n_f32(v106[4], v233);
          v106[5] = v109;
          v110 = vmulq_n_f32(v106[7], v233);
          v106[6] = vmulq_n_f32(v106[6], v233);
          v106[7] = v110;
          v111 = vmulq_n_f32(v106[9], v233);
          v106[8] = vmulq_n_f32(v106[8], v233);
          v106[9] = v111;
          v112 = vmulq_n_f32(v106[11], v233);
          v106[10] = vmulq_n_f32(v106[10], v233);
          v106[11] = v112;
          v113 = vmulq_n_f32(v106[13], v233);
          v106[12] = vmulq_n_f32(v106[12], v233);
          v106[13] = v113;
          v114 = vmulq_n_f32(v106[15], v233);
          v104 += v105;
          v106[14] = vmulq_n_f32(v106[14], v233);
          v106[15] = v114;
          --v103;
        }

        while (v103);
        v115 = (a5 + 520 * v14);
        v116 = *v115;
        v117 = v115[1];
        *&v288[32] = v115[2];
        *&v288[16] = v117;
        *v288 = v116;
        v118 = v115[3];
        v119 = v115[4];
        v120 = v115[5];
        *&v288[96] = v115[6];
        *&v288[80] = v120;
        *&v288[64] = v119;
        *&v288[48] = v118;
        v121 = v115[7];
        v122 = v115[8];
        v123 = v115[9];
        *&v288[160] = v115[10];
        *&v288[144] = v123;
        *&v288[128] = v122;
        *&v288[112] = v121;
        v124 = v115[11];
        v125 = v115[12];
        v126 = v115[13];
        *&v288[224] = v115[14];
        *&v288[208] = v126;
        *&v288[192] = v125;
        *&v288[176] = v124;
        v127 = v115[15];
        LODWORD(v125) = *(v115 + 64);
        v128 = *(v115 + 340);
        v130 = *(v115 + 308);
        v129 = *(v115 + 324);
        *&v287[96] = *(v115 + 356);
        *&v287[80] = v128;
        *&v287[48] = v130;
        *&v287[64] = v129;
        v131 = *(v115 + 404);
        v133 = *(v115 + 372);
        v132 = *(v115 + 388);
        *&v287[160] = *(v115 + 420);
        *&v287[144] = v131;
        *&v287[112] = v133;
        *&v287[128] = v132;
        v134 = *(v115 + 468);
        v136 = *(v115 + 436);
        v135 = *(v115 + 452);
        *&v287[224] = *(v115 + 484);
        *&v287[208] = v134;
        *&v287[176] = v136;
        *&v287[192] = v135;
        v137 = *(v115 + 260);
        v138 = *(v115 + 276);
        *&v287[32] = *(v115 + 292);
        *&v287[16] = v138;
        *v287 = v137;
        v139 = *(v115 + 500);
        *v287 = 0;
        v290.val[0] = *&v288[4];
        v290.val[1] = *&v287[4];
        v140 = &v254[0].f32[2];
        v141 = &v253[0].f32[2];
        vst2q_f32(v141, v290);
        v290.val[0] = *&v288[20];
        v290.val[1] = *&v287[20];
        vst2q_f32(v140, v290);
        v290.val[0] = *&v288[36];
        v290.val[1] = *&v287[36];
        v142 = &v256[0].f32[2];
        v143 = &v255[0].f32[2];
        vst2q_f32(v143, v290);
        v290.val[0] = *&v288[52];
        v290.val[1] = *&v287[52];
        vst2q_f32(v142, v290);
        v290.val[0] = *&v288[68];
        v290.val[1] = *&v287[68];
        v144 = &v258[0].f32[2];
        v145 = &v257[0].f32[2];
        vst2q_f32(v145, v290);
        v290.val[0] = *&v288[84];
        v290.val[1] = *&v287[84];
        vst2q_f32(v144, v290);
        v290.val[0] = *&v288[100];
        v290.val[1] = *&v287[100];
        v146 = &v260[0].f32[2];
        v147 = &v259[0].f32[2];
        vst2q_f32(v147, v290);
        v290.val[0] = *&v288[116];
        v290.val[1] = *&v287[116];
        vst2q_f32(v146, v290);
        v290.val[0] = *&v288[132];
        v290.val[1] = *&v287[132];
        v148 = &v263;
        v149 = &v262;
        vst2q_f32(v149, v290);
        v290.val[0] = *&v288[148];
        v290.val[1] = *&v287[148];
        vst2q_f32(v148, v290);
        v290.val[0] = *&v288[164];
        v290.val[1] = *&v287[164];
        v150 = &v265;
        v151 = &v264;
        vst2q_f32(v151, v290);
        v290.val[0] = *&v288[180];
        v290.val[1] = *&v287[180];
        vst2q_f32(v150, v290);
        v290.val[0] = *&v288[196];
        v290.val[1] = *&v287[196];
        v152 = &v266;
        vst2q_f32(v152, v290);
        v253[0].i64[0] = __PAIR64__(v125, *v288);
        v267[8] = *&v288[228];
        v267[9] = *&v287[228];
        v267[10] = *&v288[232];
        v292.val[0] = *&v288[212];
        v292.val[1] = *&v287[212];
        v267[11] = *&v287[232];
        v267[12] = *&v288[236];
        v267[13] = *&v287[236];
        v268 = vzip1q_s32(v127, v139);
        v269 = vzip2q_s32(v127, v139);
        v153 = v267;
        vst2q_f32(v153, v292);
        webrtc::OouraFft::InverseFft((a1 + 2), v253);
        v154 = a10[1];
        v155 = ((v154 + v14) << 6);
        v156 = *(a10 + 1);
        v157 = (*(a10 + 2) - v156) >> 2;
        if (v157 <= v155)
        {
          goto LABEL_44;
        }

        v158 = (v156 + 4 * v155);
        if (v158 >= &v261 || v253 >= &v158[16])
        {
          v180 = vmlaq_f32(v158[1], v230, v253[1]);
          *v158 = vmlaq_f32(*v158, v230, v253[0]);
          v158[1] = v180;
          v181 = vmlaq_f32(v158[3], v230, v254[1]);
          v158[2] = vmlaq_f32(v158[2], v230, v254[0]);
          v158[3] = v181;
          v182 = vmlaq_f32(v158[5], v230, v255[1]);
          v158[4] = vmlaq_f32(v158[4], v230, v255[0]);
          v158[5] = v182;
          v183 = vmlaq_f32(v158[7], v230, v256[1]);
          v158[6] = vmlaq_f32(v158[6], v230, v256[0]);
          v158[7] = v183;
          v184 = vmlaq_f32(v158[9], v230, v257[1]);
          v158[8] = vmlaq_f32(v158[8], v230, v257[0]);
          v158[9] = v184;
          v185 = vmlaq_f32(v158[11], v230, v258[1]);
          v158[10] = vmlaq_f32(v158[10], v230, v258[0]);
          v158[11] = v185;
          v186 = vmlaq_f32(v158[13], v230, v259[1]);
          v158[12] = vmlaq_f32(v158[12], v230, v259[0]);
          v158[13] = v186;
          v187 = vmlaq_f32(v158[15], v230, v260[1]);
          v158[14] = vmlaq_f32(v158[14], v230, v260[0]);
          v158[15] = v187;
          v161.i64[0] = 0xC7000000C7000000;
          v161.i64[1] = 0xC7000000C7000000;
          v99 = *a10;
          if (v99 > 1)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v159 = 0;
          v161.i64[0] = 0xC7000000C7000000;
          v161.i64[1] = 0xC7000000C7000000;
          do
          {
            v160 = v156 + 4 * ((v154 + v14) << 6);
            *(v160 + v159 * 4) = *(v160 + v159 * 4) + (v253[0].f32[v159] * v231);
            ++v159;
          }

          while (v159 != 64);
          v99 = *a10;
          if (v99 > 1)
          {
LABEL_30:
            v188 = 0;
            v189 = v154 << 6;
            v190 = (v154 + v14) << 6;
            v191 = 1;
            while (1)
            {
              v217 = ((v14 + v191 * v154) << 6);
              if (v157 <= v217)
              {
                break;
              }

              v218 = a1[3];
              if (0xAAAAAAAAAAAAAAABLL * ((a1[4] - v218) >> 3) <= v191)
              {
                break;
              }

              v219 = (v218 + 24 * v191);
              v220 = *v219;
              if (v14 >= (v219[1] - *v219) >> 8)
              {
                break;
              }

              v221 = 4 * (v155 + v189 * v188);
              v222 = v156 + v221;
              v223 = v156 + 256 + v221;
              v224 = (v220 + (v14 << 8));
              if (v222 >= (v224 + 16) || v224 >= v223)
              {
                v192 = (v156 + 4 * v217);
                v193 = *v192;
                v194 = v192[1];
                v195 = v224[1];
                *v192 = *v224;
                v192[1] = v195;
                *v224 = v193;
                v224[1] = v194;
                v196 = v192[2];
                v197 = v192[3];
                v198 = v224[3];
                v192[2] = v224[2];
                v192[3] = v198;
                v224[2] = v196;
                v224[3] = v197;
                v199 = v192[4];
                v200 = v192[5];
                v201 = v224[5];
                v192[4] = v224[4];
                v192[5] = v201;
                v224[4] = v199;
                v224[5] = v200;
                v202 = v192[6];
                v203 = v192[7];
                v204 = v224[7];
                v192[6] = v224[6];
                v192[7] = v204;
                v224[6] = v202;
                v224[7] = v203;
                v205 = v192[8];
                v206 = v192[9];
                v207 = v224[9];
                v192[8] = v224[8];
                v192[9] = v207;
                v224[8] = v205;
                v224[9] = v206;
                v208 = v192[10];
                v209 = v192[11];
                v210 = v224[11];
                v192[10] = v224[10];
                v192[11] = v210;
                v224[10] = v208;
                v224[11] = v209;
                v211 = v192[12];
                v212 = v192[13];
                v213 = v224[13];
                v192[12] = v224[12];
                v192[13] = v213;
                v224[12] = v211;
                v224[13] = v212;
                v214 = v192[14];
                v215 = v192[15];
                v216 = v224[15];
                v192[14] = v224[14];
                v192[15] = v216;
                v224[14] = v214;
                v224[15] = v215;
              }

              else
              {
                v226 = 0;
                v227 = v156 + 4 * v190;
                v228 = v220 + v12;
                do
                {
                  v229 = *(v227 + v226);
                  *(v227 + v226) = *(v228 + v226);
                  *(v228 + v226) = v229;
                  v226 += 4;
                }

                while (v226 != 256);
              }

              ++v191;
              ++v188;
              v190 += v189;
              if (v191 == v99)
              {
                goto LABEL_24;
              }
            }

LABEL_44:
            __break(1u);
          }
        }
      }

LABEL_24:
      if (v99 >= 1)
      {
        v162 = *(a10 + 1);
        v163 = (*(a10 + 2) - v162) >> 2;
        v164 = a10[1] << 6;
        v165 = v95;
        while (v163 > v165)
        {
          v166 = v162 + 4 * v165;
          v167 = vdupq_n_s32(0x46FFFE00u);
          v168 = vbslq_s8(vcgeq_f32(v161, *(v166 + 16)), v161, vbslq_s8(vcgeq_f32(*(v166 + 16), v167), v167, *(v166 + 16)));
          v169 = *(v166 + 32);
          v170 = *(v166 + 48);
          *v166 = vbslq_s8(vcgeq_f32(v161, *v166), v161, vbslq_s8(vcgeq_f32(*v166, v167), v167, *v166));
          *(v166 + 16) = v168;
          *(v166 + 32) = vbslq_s8(vcgeq_f32(v161, v169), v161, vbslq_s8(vcgeq_f32(v169, v167), v167, v169));
          *(v166 + 48) = vbslq_s8(vcgeq_f32(v161, v170), v161, vbslq_s8(vcgeq_f32(v170, v167), v167, v170));
          v171 = vbslq_s8(vcgeq_f32(v161, *(v166 + 80)), v161, vbslq_s8(vcgeq_f32(*(v166 + 80), v167), v167, *(v166 + 80)));
          *(v166 + 64) = vbslq_s8(vcgeq_f32(v161, *(v166 + 64)), v161, vbslq_s8(vcgeq_f32(*(v166 + 64), v167), v167, *(v166 + 64)));
          *(v166 + 80) = v171;
          v172 = vbslq_s8(vcgeq_f32(v161, *(v166 + 112)), v161, vbslq_s8(vcgeq_f32(*(v166 + 112), v167), v167, *(v166 + 112)));
          *(v166 + 96) = vbslq_s8(vcgeq_f32(v161, *(v166 + 96)), v161, vbslq_s8(vcgeq_f32(*(v166 + 96), v167), v167, *(v166 + 96)));
          *(v166 + 112) = v172;
          v173 = vbslq_s8(vcgeq_f32(v161, *(v166 + 144)), v161, vbslq_s8(vcgeq_f32(*(v166 + 144), v167), v167, *(v166 + 144)));
          *(v166 + 128) = vbslq_s8(vcgeq_f32(v161, *(v166 + 128)), v161, vbslq_s8(vcgeq_f32(*(v166 + 128), v167), v167, *(v166 + 128)));
          *(v166 + 144) = v173;
          v174 = vbslq_s8(vcgeq_f32(v161, *(v166 + 176)), v161, vbslq_s8(vcgeq_f32(*(v166 + 176), v167), v167, *(v166 + 176)));
          *(v166 + 160) = vbslq_s8(vcgeq_f32(v161, *(v166 + 160)), v161, vbslq_s8(vcgeq_f32(*(v166 + 160), v167), v167, *(v166 + 160)));
          *(v166 + 176) = v174;
          v175 = vbslq_s8(vcgeq_f32(v161, *(v166 + 208)), v161, vbslq_s8(vcgeq_f32(*(v166 + 208), v167), v167, *(v166 + 208)));
          *(v166 + 192) = vbslq_s8(vcgeq_f32(v161, *(v166 + 192)), v161, vbslq_s8(vcgeq_f32(*(v166 + 192), v167), v167, *(v166 + 192)));
          *(v166 + 208) = v175;
          v176 = *(v166 + 224);
          v177 = vcgeq_f32(v161, v176);
          v178 = vbslq_s8(vcgeq_f32(v176, v167), v167, v176);
          v179 = vbslq_s8(vcgeq_f32(v161, *(v166 + 240)), v161, vbslq_s8(vcgeq_f32(*(v166 + 240), v167), v167, *(v166 + 240)));
          *(v166 + 224) = vbslq_s8(v177, v161, v178);
          *(v166 + 240) = v179;
          v165 += v164;
          if (!--v99)
          {
            goto LABEL_3;
          }
        }

        goto LABEL_44;
      }

LABEL_3:
      ++v14;
      v13 = v95 + 64;
      v12 += 256;
    }

    while (v14 < a1[1]);
  }
}

void webrtc::SuppressionGain::~SuppressionGain(webrtc::SuppressionGain *this)
{
  v2 = *(this + 321);
  *(this + 321) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 120);
  if (v3)
  {
    v4 = *(this + 121);
    v5 = *(this + 120);
    if (v4 != v3)
    {
      do
      {
        v6 = *(v4 - 32);
        if (v6)
        {
          *(v4 - 24) = v6;
          operator delete(v6);
        }

        v4 -= 56;
      }

      while (v4 != v3);
      v5 = *(this + 120);
    }

    *(this + 121) = v3;
    operator delete(v5);
  }

  v7 = *(this + 115);
  if (v7)
  {
    *(this + 116) = v7;
    operator delete(v7);
  }

  v8 = *(this + 112);
  if (v8)
  {
    *(this + 113) = v8;
    operator delete(v8);
  }

  v9 = *this;
  *this = 0;
  if (v9)
  {
    MEMORY[0x2743DA540](v9, 0xC400A2AC0F1);
  }
}

uint64_t webrtc::SuppressionGain::GetGain(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int *a15, unsigned __int8 a16, float32x4_t *a17, uint64_t a18)
{
  p_dst = a17;
  v25 = *(a1 + 2568);
  if (!a3)
  {
    a2 = 0;
  }

  if (a12)
  {
    v26 = a11;
  }

  else
  {
    v26 = 0;
  }

  v323 = a2;
  (*(*v25 + 24))(v25);
  v27 = a15[1];
  if (v27 >= 1)
  {
    v28 = 0;
    v29 = 0;
    v30 = *(a15 + 1);
    v31 = 0.0;
    v32 = 0.0;
    while ((*(a15 + 2) - v30) >> 2 > (v29 << 6))
    {
      for (i = 0; i != 256; i += 4)
      {
        v34 = v30 + 4 * v28;
        v35 = *(v34 + i) * *(v34 + i);
        v31 = v31 + v35;
        if (v32 < v35)
        {
          v32 = *(v34 + i) * *(v34 + i);
        }
      }

      ++v29;
      v28 += 64;
      if (v29 == v27)
      {
        goto LABEL_16;
      }
    }

LABEL_219:
    __break(1u);
    goto LABEL_220;
  }

  v32 = 0.0;
  v31 = 0.0;
LABEL_16:
  v301 = a5;
  v302 = a17;
  v303 = (a1 + 636);
  v36 = *(a1 + 944);
  *(a1 + 944) = ((v31 / v27) * 0.1) + (v36 * 0.9);
  v321 = *(a14 + 800);
  __asm { FMOV            V0.4S, #1.0 }

  *a18 = _Q0;
  *(a18 + 16) = _Q0;
  *(a18 + 32) = _Q0;
  *(a18 + 48) = _Q0;
  *(a18 + 64) = _Q0;
  *(a18 + 80) = _Q0;
  *(a18 + 96) = _Q0;
  *(a18 + 112) = _Q0;
  *(a18 + 128) = _Q0;
  *(a18 + 144) = _Q0;
  *(a18 + 160) = _Q0;
  *(a18 + 176) = _Q0;
  *(a18 + 192) = _Q0;
  *(a18 + 208) = _Q0;
  *(a18 + 224) = _Q0;
  v324 = _Q0;
  *(a18 + 240) = _Q0;
  *(a18 + 256) = 1065353216;
  v40 = (*(**(a1 + 2568) + 16))(*(a1 + 2568));
  v42 = 1772;
  if (v40)
  {
    v42 = 984;
  }

  v43 = *(a1 + v42);
  v41.i32[0] = *(a1 + 596);
  v44 = v43 * *(a1 + 892);
  if (v44 < *v41.i32)
  {
    v44 = *(a1 + 596);
  }

  v18 = 1.0;
  if (v44 <= 1.0)
  {
    v45 = v44;
  }

  else
  {
    v45 = 1.0;
  }

  if (a7)
  {
    v46 = a6;
  }

  else
  {
    v46 = 0;
  }

  v322 = v46;
  if (*(a1 + 624))
  {
    v325 = 0;
    v47 = 0;
    v48 = vdupq_lane_s32(v41, 0);
    v49 = vmulq_n_f32(*v303, v43);
    v50 = vmulq_n_f32(*(a1 + 652), v43);
    v51 = vbslq_s8(vcgtq_f32(v48, v49), v48, v49);
    v52 = vbslq_s8(vcgtq_f32(v48, v50), v48, v50);
    v320 = vbslq_s8(vcgtq_f32(v51, v324), v324, v51);
    v319 = vbslq_s8(vcgtq_f32(v52, v324), v324, v52);
    v53 = vmulq_n_f32(*(a1 + 668), v43);
    v54 = vmulq_n_f32(*(a1 + 684), v43);
    v55 = vbslq_s8(vcgtq_f32(v48, v53), v48, v53);
    v56 = vbslq_s8(vcgtq_f32(v48, v54), v48, v54);
    v318 = vbslq_s8(vcgtq_f32(v55, v324), v324, v55);
    v317 = vbslq_s8(vcgtq_f32(v56, v324), v324, v56);
    v57 = vmulq_n_f32(*(a1 + 700), v43);
    v58 = vmulq_n_f32(*(a1 + 716), v43);
    v59 = vbslq_s8(vcgtq_f32(v48, v57), v48, v57);
    v60 = vbslq_s8(vcgtq_f32(v48, v58), v48, v58);
    v316 = vbslq_s8(vcgtq_f32(v59, v324), v324, v59);
    v315 = vbslq_s8(vcgtq_f32(v60, v324), v324, v60);
    v61 = vmulq_n_f32(*(a1 + 732), v43);
    v62 = vmulq_n_f32(*(a1 + 748), v43);
    v63 = vbslq_s8(vcgtq_f32(v48, v61), v48, v61);
    v64 = vbslq_s8(vcgtq_f32(v48, v62), v48, v62);
    v314 = vbslq_s8(vcgtq_f32(v63, v324), v324, v63);
    v313 = vbslq_s8(vcgtq_f32(v64, v324), v324, v64);
    v65 = vmulq_n_f32(*(a1 + 764), v43);
    v66 = vmulq_n_f32(*(a1 + 780), v43);
    v67 = vbslq_s8(vcgtq_f32(v48, v65), v48, v65);
    v68 = vbslq_s8(vcgtq_f32(v48, v66), v48, v66);
    v312 = vbslq_s8(vcgtq_f32(v67, v324), v324, v67);
    v311 = vbslq_s8(vcgtq_f32(v68, v324), v324, v68);
    v69 = vmulq_n_f32(*(a1 + 796), v43);
    v70 = vmulq_n_f32(*(a1 + 812), v43);
    v71 = vbslq_s8(vcgtq_f32(v48, v69), v48, v69);
    v72 = vbslq_s8(vcgtq_f32(v48, v70), v48, v70);
    v310 = vbslq_s8(vcgtq_f32(v71, v324), v324, v71);
    v309 = vbslq_s8(vcgtq_f32(v72, v324), v324, v72);
    v73 = vmulq_n_f32(*(a1 + 828), v43);
    v74 = vmulq_n_f32(*(a1 + 844), v43);
    v75 = vbslq_s8(vcgtq_f32(v48, v73), v48, v73);
    v76 = vbslq_s8(vcgtq_f32(v48, v74), v48, v74);
    v308 = vbslq_s8(vcgtq_f32(v75, v324), v324, v75);
    v307 = vbslq_s8(vcgtq_f32(v76, v324), v324, v76);
    v77 = 308;
    if (v32 < (v36 * 3.0) && v36 < 160000.0)
    {
      v77 = 304;
    }

    v304 = v77;
    v79 = vmulq_n_f32(*(a1 + 860), v43);
    p_dst = &__dst;
    v80 = vmulq_n_f32(*(a1 + 876), v43);
    v81 = vbslq_s8(vcgtq_f32(v48, v79), v48, v79);
    v82 = vbslq_s8(vcgtq_f32(v48, v80), v48, v80);
    v305 = vbslq_s8(vcgtq_f32(v82, v324), v324, v82);
    v306 = vbslq_s8(vcgtq_f32(v81, v324), v324, v81);
    do
    {
      v83 = *(a1 + 960);
      if (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 968) - v83) >> 3) <= v47)
      {
        goto LABEL_219;
      }

      v84 = (v83 + 56 * v47);
      memmove(&__dst, (v323 + 260 * v47), 0x104uLL);
      v86 = *(v84 + 3);
      v87 = *(v84 + 4);
      if (v86 < v87)
      {
        v88 = *v84;
        if (*v84)
        {
          v89 = 0;
          v90 = 4 * v88;
          v91 = v86 + 1;
          v92 = *(v84 + 3);
          do
          {
            v93 = &v92[v90 / 4] + -4 - v86 + -4 * v88 * v89;
            v94 = &__dst;
            if (v93 >= 0x1C)
            {
              if (&__dst >= (&v86->i32[1] + v90 * v89 + (v93 & 0xFFFFFFFFFFFFFFFCLL)) || v92 >= (&__dst.f32[1] + (v93 & 0xFFFFFFFFFFFFFFFCLL)))
              {
                v97 = (v93 >> 2) + 1;
                v98 = v97 & 0x7FFFFFFFFFFFFFF8;
                v94 = (&__dst + v98 * 4);
                v95 = &v92[v98];
                v99 = (((4 * v88 - 4) >> 2) + 1) & 0x7FFFFFFFFFFFFFF8;
                v100 = &v345;
                v101 = v91;
                do
                {
                  v85 = vaddq_f32(v101[-1], v100[-1]);
                  v102 = vaddq_f32(*v101, *v100);
                  v100[-1] = v85;
                  *v100 = v102;
                  v101 += 2;
                  v100 += 2;
                  v99 -= 8;
                }

                while (v99);
                if (v97 == (v97 & 0x7FFFFFFFFFFFFFF8))
                {
                  goto LABEL_37;
                }
              }

              else
              {
                v95 = v92;
              }
            }

            else
            {
              v95 = v92;
            }

            do
            {
              v103 = *v95++;
              v94->f32[0] = v103 + v94->f32[0];
              v94 = (v94 + 4);
            }

            while (v95 != &v92[v90 / 4]);
LABEL_37:
            v92 += v88;
            ++v89;
            v91 = (v91 + v90);
          }

          while (v92 < v87);
        }
      }

      v104 = v84[4];
      __dst = vmulq_n_f32(__dst, v104);
      v345 = vmulq_n_f32(v345, v104);
      v346 = vmulq_n_f32(v346, v104);
      v347 = vmulq_n_f32(v347, v104);
      v348 = vmulq_n_f32(v348, v104);
      v349 = vmulq_n_f32(v349, v104);
      v350 = vmulq_n_f32(v350, v104);
      v351 = vmulq_n_f32(v351, v104);
      v352 = vmulq_n_f32(v352, v104);
      v353 = vmulq_n_f32(v353, v104);
      v354 = vmulq_n_f32(v354, v104);
      v355 = vmulq_n_f32(v355, v104);
      v356 = vmulq_n_f32(v356, v104);
      v357 = vmulq_n_f32(v357, v104);
      v358 = vmulq_n_f32(v358, v104);
      v359 = vmulq_n_f32(v359, v104);
      v360 = v104 * v360;
      if (*(v84 + 1))
      {
        memmove(&v86->f32[*(v84 + 6) * *v84], (v323 + 260 * v47), 0x104uLL);
        *(v84 + 6) = (*(v84 + 6) + 1) % *(v84 + 1);
      }

      v105 = v322 + 260 * v47;
      v106 = *(a1 + 312);
      v107 = v106 * *(a1 + 316);
      v108 = 1.0 / (v107 - v106);
      v109 = *v105;
      if (*v105 < v107)
      {
        v109 = v109 * fmaxf(1.0 - (((v107 - v109) * v108) * ((v107 - v109) * v108)), 0.0);
      }

      __src[0].f32[0] = v109;
      v110 = *(v105 + 4);
      if (v110 < v107)
      {
        v110 = v110 * fmaxf(1.0 - ((v108 * (v107 - v110)) * (v108 * (v107 - v110))), 0.0);
      }

      __src[0].f32[1] = v110;
      v111 = *(v105 + 8);
      if (v111 < v107)
      {
        v111 = v111 * fmaxf(1.0 - ((v108 * (v107 - v111)) * (v108 * (v107 - v111))), 0.0);
      }

      __src[0].f32[2] = v111;
      v112 = v106 * *(a1 + 320);
      v113 = 1.0 / (v112 - v106);
      v114 = *(v105 + 12);
      if (v114 < v112)
      {
        __src[0].f32[3] = v114 * fmaxf(1.0 - (((v112 - v114) * v113) * ((v112 - v114) * v113)), 0.0);
        v115 = *(v105 + 16);
        if (v115 >= v112)
        {
LABEL_60:
          __src[1].f32[0] = v115;
          v116 = *(v105 + 20);
          if (v116 < v112)
          {
            goto LABEL_73;
          }

          goto LABEL_61;
        }
      }

      else
      {
        __src[0].i32[3] = *(v105 + 12);
        v115 = *(v105 + 16);
        if (v115 >= v112)
        {
          goto LABEL_60;
        }
      }

      __src[1].f32[0] = v115 * fmaxf(1.0 - ((v113 * (v112 - v115)) * (v113 * (v112 - v115))), 0.0);
      v116 = *(v105 + 20);
      if (v116 < v112)
      {
LABEL_73:
        __src[1].f32[1] = v116 * fmaxf(1.0 - ((v113 * (v112 - v116)) * (v113 * (v112 - v116))), 0.0);
        v117 = *(v105 + 24);
        if (v117 >= v112)
        {
          goto LABEL_63;
        }

LABEL_62:
        v117 = v117 * fmaxf(1.0 - ((v113 * (v112 - v117)) * (v113 * (v112 - v117))), 0.0);
        goto LABEL_63;
      }

LABEL_61:
      __src[1].f32[1] = v116;
      v117 = *(v105 + 24);
      if (v117 < v112)
      {
        goto LABEL_62;
      }

LABEL_63:
      v85.f32[0] = v106 * *(a1 + 324);
      v118 = vdupq_lane_s32(*v85.f32, 0);
      v119 = 1.0 / (v85.f32[0] - v106);
      v120 = *(v105 + 28);
      v121 = *(v105 + 44);
      v122 = vmulq_n_f32(vsubq_f32(v118, v120), v119);
      v123 = vmulq_n_f32(vsubq_f32(v118, v121), v119);
      v124 = vbslq_s8(vcgtq_f32(v118, v120), vmulq_f32(v120, vmaxnmq_f32(vmlsq_f32(v324, v122, v122), 0)), v120);
      v125 = vbslq_s8(vcgtq_f32(v118, v121), vmulq_f32(v121, vmaxnmq_f32(vmlsq_f32(v324, v123, v123), 0)), v121);
      v126 = *(v105 + 60);
      v127 = *(v105 + 76);
      __src[1].f32[2] = v117;
      *(&__src[1] + 12) = v124;
      v128 = vmulq_n_f32(vsubq_f32(v118, v126), v119);
      v129 = vmulq_n_f32(vsubq_f32(v118, v127), v119);
      *(&__src[2] + 12) = v125;
      *(&__src[3] + 12) = vbslq_s8(vcgtq_f32(v118, v126), vmulq_f32(v126, vmaxnmq_f32(vmlsq_f32(v324, v128, v128), 0)), v126);
      *(&__src[4] + 12) = vbslq_s8(vcgtq_f32(v118, v127), vmulq_f32(v127, vmaxnmq_f32(vmlsq_f32(v324, v129, v129), 0)), v127);
      v130 = *(v105 + 92);
      v131 = *(v105 + 108);
      v132 = vmulq_n_f32(vsubq_f32(v118, v130), v119);
      v133 = vmulq_n_f32(vsubq_f32(v118, v131), v119);
      *(&__src[5] + 12) = vbslq_s8(vcgtq_f32(v118, v130), vmulq_f32(v130, vmaxnmq_f32(vmlsq_f32(v324, v132, v132), 0)), v130);
      *(&__src[6] + 12) = vbslq_s8(vcgtq_f32(v118, v131), vmulq_f32(v131, vmaxnmq_f32(vmlsq_f32(v324, v133, v133), 0)), v131);
      v134 = *(v105 + 124);
      v135 = *(v105 + 140);
      v136 = vmulq_n_f32(vsubq_f32(v118, v134), v119);
      v137 = vmulq_n_f32(vsubq_f32(v118, v135), v119);
      *(&__src[7] + 12) = vbslq_s8(vcgtq_f32(v118, v134), vmulq_f32(v134, vmaxnmq_f32(vmlsq_f32(v324, v136, v136), 0)), v134);
      *(&__src[8] + 12) = vbslq_s8(vcgtq_f32(v118, v135), vmulq_f32(v135, vmaxnmq_f32(vmlsq_f32(v324, v137, v137), 0)), v135);
      v138 = *(v105 + 156);
      v139 = *(v105 + 172);
      v140 = vmulq_n_f32(vsubq_f32(v118, v138), v119);
      v141 = vmulq_n_f32(vsubq_f32(v118, v139), v119);
      *(&__src[9] + 12) = vbslq_s8(vcgtq_f32(v118, v138), vmulq_f32(v138, vmaxnmq_f32(vmlsq_f32(v324, v140, v140), 0)), v138);
      *(&__src[10] + 12) = vbslq_s8(vcgtq_f32(v118, v139), vmulq_f32(v139, vmaxnmq_f32(vmlsq_f32(v324, v141, v141), 0)), v139);
      v142 = *(v105 + 188);
      v143 = *(v105 + 204);
      v144 = vmulq_n_f32(vsubq_f32(v118, v142), v119);
      v145 = vmulq_n_f32(vsubq_f32(v118, v143), v119);
      *(&__src[11] + 12) = vbslq_s8(vcgtq_f32(v118, v142), vmulq_f32(v142, vmaxnmq_f32(vmlsq_f32(v324, v144, v144), 0)), v142);
      *(&__src[12] + 12) = vbslq_s8(vcgtq_f32(v118, v143), vmulq_f32(v143, vmaxnmq_f32(vmlsq_f32(v324, v145, v145), 0)), v143);
      v146 = *(v105 + 220);
      v147 = *(v105 + 236);
      v148 = vcgtq_f32(v118, v146);
      v149 = vcgtq_f32(v118, v147);
      v150 = vmulq_n_f32(vsubq_f32(v118, v146), v119);
      v151 = vmulq_n_f32(vsubq_f32(v118, v147), v119);
      *(&__src[13] + 12) = vbslq_s8(v148, vmulq_f32(v146, vmaxnmq_f32(vmlsq_f32(v324, v150, v150), 0)), v146);
      *(&__src[14] + 12) = vbslq_s8(v149, vmulq_f32(v147, vmaxnmq_f32(vmlsq_f32(v324, v151, v151), 0)), v147);
      v152 = *(v105 + 252);
      if (v152 < v85.f32[0])
      {
        v152 = v152 * fmaxf(1.0 - ((v119 * (v85.f32[0] - v152)) * (v119 * (v85.f32[0] - v152))), 0.0);
      }

      __src[15].f32[3] = v152;
      v153 = *(v105 + 256);
      if (v153 < v85.f32[0])
      {
        v153 = v153 * fmaxf(1.0 - ((v119 * (v85.f32[0] - v153)) * (v119 * (v85.f32[0] - v153))), 0.0);
      }

      __src[16].f32[0] = v153;
      v154 = *(a1 + 896);
      if (0xFC0FC0FC0FC0FC1 * ((*(a1 + 904) - v154) >> 2) <= v47)
      {
        goto LABEL_219;
      }

      v155 = *(a1 + 920);
      if (0xFC0FC0FC0FC0FC1 * ((*(a1 + 928) - v155) >> 2) <= v47)
      {
        goto LABEL_219;
      }

      if (v321)
      {
        v342 = 0.0;
        v340 = 0u;
        v341 = 0u;
        v338 = 0u;
        v339 = 0u;
        v336 = 0u;
        v337 = 0u;
        v334 = 0u;
        v335 = 0u;
        v332 = 0u;
        v333 = 0u;
        v330 = 0u;
        v331 = 0u;
        v328 = 0u;
        v329 = 0u;
        v326 = 0u;
        v327 = 0u;
      }

      else
      {
        v85.i32[0] = *(a1 + v304);
        v156 = vdupq_lane_s32(*v85.f32, 0);
        v157 = vbslq_s8(vcgtzq_f32(__src[0]), vdivq_f32(v156, __src[0]), v324);
        v158 = vbslq_s8(vcgtzq_f32(__src[1]), vdivq_f32(v156, __src[1]), v324);
        v326 = vbslq_s8(vcgtq_f32(v157, v324), v324, v157);
        v327 = vbslq_s8(vcgtq_f32(v158, v324), v324, v158);
        v159 = vbslq_s8(vcgtzq_f32(__src[2]), vdivq_f32(v156, __src[2]), v324);
        v160 = vbslq_s8(vcgtzq_f32(__src[3]), vdivq_f32(v156, __src[3]), v324);
        v328 = vbslq_s8(vcgtq_f32(v159, v324), v324, v159);
        v329 = vbslq_s8(vcgtq_f32(v160, v324), v324, v160);
        v161 = vbslq_s8(vcgtzq_f32(__src[4]), vdivq_f32(v156, __src[4]), v324);
        v162 = vbslq_s8(vcgtzq_f32(__src[5]), vdivq_f32(v156, __src[5]), v324);
        v330 = vbslq_s8(vcgtq_f32(v161, v324), v324, v161);
        v331 = vbslq_s8(vcgtq_f32(v162, v324), v324, v162);
        v163 = vbslq_s8(vcgtzq_f32(__src[6]), vdivq_f32(v156, __src[6]), v324);
        v164 = vbslq_s8(vcgtzq_f32(__src[7]), vdivq_f32(v156, __src[7]), v324);
        v332 = vbslq_s8(vcgtq_f32(v163, v324), v324, v163);
        v333 = vbslq_s8(vcgtq_f32(v164, v324), v324, v164);
        v165 = vbslq_s8(vcgtzq_f32(__src[8]), vdivq_f32(v156, __src[8]), v324);
        v166 = vbslq_s8(vcgtzq_f32(__src[9]), vdivq_f32(v156, __src[9]), v324);
        v334 = vbslq_s8(vcgtq_f32(v165, v324), v324, v165);
        v335 = vbslq_s8(vcgtq_f32(v166, v324), v324, v166);
        v167 = vbslq_s8(vcgtzq_f32(__src[10]), vdivq_f32(v156, __src[10]), v324);
        v168 = vbslq_s8(vcgtzq_f32(__src[11]), vdivq_f32(v156, __src[11]), v324);
        v336 = vbslq_s8(vcgtq_f32(v167, v324), v324, v167);
        v337 = vbslq_s8(vcgtq_f32(v168, v324), v324, v168);
        v169 = vbslq_s8(vcgtzq_f32(__src[12]), vdivq_f32(v156, __src[12]), v324);
        v170 = vbslq_s8(vcgtzq_f32(__src[13]), vdivq_f32(v156, __src[13]), v324);
        v338 = vbslq_s8(vcgtq_f32(v169, v324), v324, v169);
        v339 = vbslq_s8(vcgtq_f32(v170, v324), v324, v170);
        v171 = vbslq_s8(vcgtzq_f32(__src[14]), vdivq_f32(v156, __src[14]), v324);
        v172 = vbslq_s8(vcgtzq_f32(__src[15]), vdivq_f32(v156, __src[15]), v324);
        v340 = vbslq_s8(vcgtq_f32(v171, v324), v324, v171);
        v341 = vbslq_s8(vcgtq_f32(v172, v324), v324, v172);
        v85.f32[0] = v85.f32[0] / __src[16].f32[0];
        if (__src[16].f32[0] <= 0.0)
        {
          v85.f32[0] = 1.0;
        }

        if (v85.f32[0] > 1.0)
        {
          v85.f32[0] = 1.0;
        }

        v342 = v85.f32[0];
        if (*(a1 + 948) != 1 || *(a1 + 480) == 1)
        {
          v173 = (*(**(a1 + 2568) + 16))(*(a1 + 2568));
          v174 = 1776;
          if (v173)
          {
            v174 = 988;
          }

          v175 = *(a1 + 488);
          if ((v175 & 0x80000000) == 0)
          {
            v176 = 0;
            v177 = v175 + 1;
            do
            {
              if (*(v154 + v325 + 4 * v176) > *(v155 + v325 + 4 * v176) || v176 <= *(a1 + 484))
              {
                if (v176 >= 0x41)
                {
                  goto LABEL_219;
                }

                v178 = v303->f32[v176] * *(a1 + v174);
                if (*&v326.i32[v176] >= v178)
                {
                  v178 = *&v326.i32[v176];
                }

                if (v178 > 1.0)
                {
                  v178 = 1.0;
                }

                *&v326.i32[v176] = v178;
              }
            }

            while (v177 != ++v176);
          }
        }
      }

      v179 = (*(**(a1 + 2568) + 16))(*(a1 + 2568));
      v180 = 1772;
      if (v179)
      {
        v180 = 984;
      }

      v181 = a1 + v180;
      v182 = -260;
      do
      {
        v183 = __src[16].f32[v182 / 4 + 1];
        v184 = 1.0;
        v185 = v183 / (*&v361[v182] + 1.0);
        v186 = *(v181 + v182 + 268);
        if (v185 > v186)
        {
          v187 = v183 / (*(v26 + v182 + 260) + 1.0);
          v188 = *(v181 + v182 + 788);
          if (v187 > v188)
          {
            v184 = (*(v181 + v182 + 528) - v185) / (*(v181 + v182 + 528) - v186);
            if (v184 < (v188 / v187))
            {
              v184 = v188 / v187;
            }
          }
        }

        *&v379[v182] = v184;
        v182 += 4;
      }

      while (v182);
      v189 = vbslq_s8(vcgtq_f32(v362, v320), v320, v362);
      v190 = vbslq_s8(vcgtq_f32(v326, v189), v326, v189);
      v191 = vbslq_s8(vcgtq_f32(v363, v319), v319, v363);
      v192 = *(a18 + 16);
      v193 = vbslq_s8(vcgtq_f32(*a18, v190), v190, *a18);
      v362 = v190;
      v363 = vbslq_s8(vcgtq_f32(v327, v191), v327, v191);
      v194 = vbslq_s8(vcgtq_f32(v192, v363), v363, v192);
      *a18 = v193;
      *(a18 + 16) = v194;
      v195 = vbslq_s8(vcgtq_f32(v364, v318), v318, v364);
      v196 = vbslq_s8(vcgtq_f32(v328, v195), v328, v195);
      v197 = vbslq_s8(vcgtq_f32(v365, v317), v317, v365);
      v198 = *(a18 + 48);
      v199 = vbslq_s8(vcgtq_f32(*(a18 + 32), v196), v196, *(a18 + 32));
      v364 = v196;
      v365 = vbslq_s8(vcgtq_f32(v329, v197), v329, v197);
      v200 = vbslq_s8(vcgtq_f32(v198, v365), v365, v198);
      *(a18 + 32) = v199;
      *(a18 + 48) = v200;
      v201 = vbslq_s8(vcgtq_f32(v366, v316), v316, v366);
      v202 = vbslq_s8(vcgtq_f32(v330, v201), v330, v201);
      v203 = vbslq_s8(vcgtq_f32(v367, v315), v315, v367);
      v204 = *(a18 + 80);
      v205 = vbslq_s8(vcgtq_f32(*(a18 + 64), v202), v202, *(a18 + 64));
      v366 = v202;
      v367 = vbslq_s8(vcgtq_f32(v331, v203), v331, v203);
      v206 = vbslq_s8(vcgtq_f32(v204, v367), v367, v204);
      *(a18 + 64) = v205;
      *(a18 + 80) = v206;
      v207 = vbslq_s8(vcgtq_f32(v368, v314), v314, v368);
      v208 = vbslq_s8(vcgtq_f32(v332, v207), v332, v207);
      v209 = vbslq_s8(vcgtq_f32(v369, v313), v313, v369);
      v210 = *(a18 + 112);
      v211 = vbslq_s8(vcgtq_f32(*(a18 + 96), v208), v208, *(a18 + 96));
      v368 = v208;
      v369 = vbslq_s8(vcgtq_f32(v333, v209), v333, v209);
      v212 = vbslq_s8(vcgtq_f32(v210, v369), v369, v210);
      *(a18 + 96) = v211;
      *(a18 + 112) = v212;
      v213 = vbslq_s8(vcgtq_f32(v370, v312), v312, v370);
      v214 = vbslq_s8(vcgtq_f32(v334, v213), v334, v213);
      v215 = vbslq_s8(vcgtq_f32(v371, v311), v311, v371);
      v216 = *(a18 + 144);
      v217 = vbslq_s8(vcgtq_f32(*(a18 + 128), v214), v214, *(a18 + 128));
      v370 = v214;
      v371 = vbslq_s8(vcgtq_f32(v335, v215), v335, v215);
      v218 = vbslq_s8(vcgtq_f32(v216, v371), v371, v216);
      *(a18 + 128) = v217;
      *(a18 + 144) = v218;
      v219 = vbslq_s8(vcgtq_f32(v372, v310), v310, v372);
      v220 = vbslq_s8(vcgtq_f32(v336, v219), v336, v219);
      v221 = vbslq_s8(vcgtq_f32(v373, v309), v309, v373);
      v222 = *(a18 + 176);
      v223 = vbslq_s8(vcgtq_f32(*(a18 + 160), v220), v220, *(a18 + 160));
      v372 = v220;
      v373 = vbslq_s8(vcgtq_f32(v337, v221), v337, v221);
      v224 = vbslq_s8(vcgtq_f32(v222, v373), v373, v222);
      *(a18 + 160) = v223;
      *(a18 + 176) = v224;
      v225 = vbslq_s8(vcgtq_f32(v374, v308), v308, v374);
      v226 = vbslq_s8(vcgtq_f32(v338, v225), v338, v225);
      v227 = vbslq_s8(vcgtq_f32(v375, v307), v307, v375);
      v228 = *(a18 + 208);
      v229 = vbslq_s8(vcgtq_f32(*(a18 + 192), v226), v226, *(a18 + 192));
      v374 = v226;
      v375 = vbslq_s8(vcgtq_f32(v339, v227), v339, v227);
      v230 = vbslq_s8(vcgtq_f32(v228, v375), v375, v228);
      *(a18 + 192) = v229;
      *(a18 + 208) = v230;
      v231 = vbslq_s8(vcgtq_f32(v376, v306), v306, v376);
      v232 = vbslq_s8(vcgtq_f32(v340, v231), v340, v231);
      v233 = vbslq_s8(vcgtq_f32(v377, v305), v305, v377);
      v234 = *(a18 + 240);
      v235 = vbslq_s8(vcgtq_f32(*(a18 + 224), v232), v232, *(a18 + 224));
      v376 = v232;
      v377 = vbslq_s8(vcgtq_f32(v341, v233), v341, v233);
      v236 = vbslq_s8(vcgtq_f32(v234, v377), v377, v234);
      v237 = v378;
      if (v45 < v378)
      {
        v237 = v45;
      }

      if (v237 < v342)
      {
        v237 = v342;
      }

      v238 = *(a18 + 256);
      if (v237 < v238)
      {
        v238 = v237;
      }

      v239 = *(a1 + 896);
      v240 = (*(a1 + 904) - v239) >> 2;
      *(a18 + 224) = v235;
      *(a18 + 240) = v236;
      v378 = v237;
      *(a18 + 256) = v238;
      if (0xFC0FC0FC0FC0FC1 * v240 <= v47)
      {
        goto LABEL_219;
      }

      memmove((v239 + 260 * v47), &__dst, 0x104uLL);
      v241 = *(a1 + 920);
      if (0xFC0FC0FC0FC0FC1 * ((*(a1 + 928) - v241) >> 2) <= v47)
      {
        goto LABEL_219;
      }

      memcpy((v241 + 260 * v47++), __src, 0x104uLL);
      v325 += 260;
    }

    while (v47 < *(a1 + 624));
  }

  v242 = *(a18 + 8);
  if (v242 >= *(a18 + 4))
  {
    v242 = *(a18 + 4);
  }

  *a18 = v242;
  *(a18 + 4) = v242;
  v243 = (*(**(a1 + 2568) + 16))(*(a1 + 2568)) ^ 1 | a16;
  v245 = *(a1 + 600);
  if (v243 & 1) != 0 || (*(a1 + 600))
  {
    v244.i32[0] = *(a18 + 64);
    v257 = vdupq_lane_s32(v244, 0);
    v246 = vbslq_s8(vcgtq_f32(*(a18 + 68), v257), v257, *(a18 + 68));
    *(a18 + 68) = v246;
    v247 = vbslq_s8(vcgtq_f32(*(a18 + 84), v257), v257, *(a18 + 84));
    *(a18 + 84) = v247;
    v248 = vbslq_s8(vcgtq_f32(*(a18 + 100), v257), v257, *(a18 + 100));
    *(a18 + 100) = v248;
    v249 = vbslq_s8(vcgtq_f32(*(a18 + 116), v257), v257, *(a18 + 116));
    *(a18 + 116) = v249;
    v250 = vbslq_s8(vcgtq_f32(*(a18 + 132), v257), v257, *(a18 + 132));
    *(a18 + 132) = v250;
    v251 = vbslq_s8(vcgtq_f32(*(a18 + 148), v257), v257, *(a18 + 148));
    *(a18 + 148) = v251;
    v252 = vbslq_s8(vcgtq_f32(*(a18 + 164), v257), v257, *(a18 + 164));
    *(a18 + 164) = v252;
    v253 = vbslq_s8(vcgtq_f32(*(a18 + 180), v257), v257, *(a18 + 180));
    *(a18 + 180) = v253;
    v254 = vbslq_s8(vcgtq_f32(*(a18 + 196), v257), v257, *(a18 + 196));
    *(a18 + 196) = v254;
    v255 = vbslq_s8(vcgtq_f32(*(a18 + 212), v257), v257, *(a18 + 212));
    *(a18 + 212) = v255;
    v256 = vbslq_s8(vcgtq_f32(*(a18 + 228), v257), v257, *(a18 + 228));
    *(a18 + 228) = v256;
    *v257.i8 = vbsl_s8(vcgt_f32(*(a18 + 244), *v257.i8), *v257.i8, *(a18 + 244));
    *(a18 + 244) = v257.i64[0];
    if (*v244.i32 >= *(a18 + 252))
    {
      v244.i32[0] = *(a18 + 252);
    }

    *(a18 + 252) = v244.i32[0];
    *(a18 + 256) = v244.i32[0];
    if (!v243 || (v245 & 1) != 0)
    {
      *v248.i32 = (((((((((*&v246.i32[3] + 0.0) + *v247.i32) + *&v247.i32[1]) + *&v247.i32[2]) + *&v247.i32[3]) + *v248.i32) + *&v248.i32[1]) + *&v248.i32[2]) + *&v248.i32[3]) * 0.11111;
      v258 = vdupq_lane_s32(*v248.i8, 0);
      *(a18 + 116) = vbslq_s8(vcgtq_f32(v249, v258), v258, v249);
      *(a18 + 132) = vbslq_s8(vcgtq_f32(v250, v258), v258, v250);
      *(a18 + 148) = vbslq_s8(vcgtq_f32(v251, v258), v258, v251);
      *(a18 + 164) = vbslq_s8(vcgtq_f32(v252, v258), v258, v252);
      *(a18 + 180) = vbslq_s8(vcgtq_f32(v253, v258), v258, v253);
      *(a18 + 196) = vbslq_s8(vcgtq_f32(v254, v258), v258, v254);
      *(a18 + 212) = vbslq_s8(vcgtq_f32(v255, v258), v258, v255);
      v257.i32[2] = v244.i32[0];
      *(a18 + 228) = vbslq_s8(vcgtq_f32(v256, v258), v258, v256);
      v257.i32[3] = v244.i32[0];
      *(a18 + 244) = vbslq_s8(vcgtq_f32(v257, v258), v258, v257);
    }
  }

  memmove(v303, a18, 0x104uLL);
  v259 = vsqrtq_f32(*(a18 + 16));
  *a18 = vsqrtq_f32(*a18);
  *(a18 + 16) = v259;
  v260 = vsqrtq_f32(*(a18 + 48));
  *(a18 + 32) = vsqrtq_f32(*(a18 + 32));
  *(a18 + 48) = v260;
  v261 = vsqrtq_f32(*(a18 + 80));
  *(a18 + 64) = vsqrtq_f32(*(a18 + 64));
  *(a18 + 80) = v261;
  v262 = vsqrtq_f32(*(a18 + 112));
  *(a18 + 96) = vsqrtq_f32(*(a18 + 96));
  *(a18 + 112) = v262;
  v263 = vsqrtq_f32(*(a18 + 128));
  v264 = vsqrtq_f32(*(a18 + 144));
  *(a18 + 128) = v263;
  *(a18 + 144) = v264;
  v265 = vsqrtq_f32(*(a18 + 160));
  v266 = vsqrtq_f32(*(a18 + 176));
  *(a18 + 160) = v265;
  *(a18 + 176) = v266;
  v267 = vsqrtq_f32(*(a18 + 192));
  v268 = vsqrtq_f32(*(a18 + 208));
  *(a18 + 192) = v267;
  *(a18 + 208) = v268;
  v269 = vsqrtq_f32(*(a18 + 224));
  v270 = vsqrtq_f32(*(a18 + 240));
  *(a18 + 224) = v269;
  *(a18 + 240) = v270;
  v271 = sqrtf(*(a18 + 256));
  *(a18 + 256) = v271;
  if (v301)
  {
    p_dst = a4;
  }

  else
  {
    p_dst = 0;
  }

  v272 = *a15;
  v273 = 1.0;
  if (v272 == 1)
  {
    goto LABEL_238;
  }

  v274 = *(a13 + 512);
  v275 = a15[1];
  if ((v274 & 0x100000000) != 0 && v274 > 55)
  {
    v273 = 0.001;
    goto LABEL_238;
  }

  v276 = (a18 + 132);
  v277 = v263.f32[1];
  if (v263.f32[1] >= v263.f32[0])
  {
    v276 = (a18 + 128);
    v277 = v263.f32[0];
  }

  if (v263.f32[2] < v277)
  {
    v276 = (a18 + 136);
    v277 = v263.f32[2];
  }

  v263.i32[0] = v263.i32[3];
  if (v263.f32[3] >= v277)
  {
    v263.f32[0] = v277;
  }

  else
  {
    v276 = (a18 + 140);
  }

  if (v264.f32[0] < v263.f32[0])
  {
    v276 = (a18 + 144);
    v263.f32[0] = v264.f32[0];
  }

  if (v264.f32[1] < v263.f32[0])
  {
    v276 = (a18 + 148);
    v263.f32[0] = v264.f32[1];
  }

  if (v264.f32[2] < v263.f32[0])
  {
    v276 = (a18 + 152);
    v263.f32[0] = v264.f32[2];
  }

  v264.i32[0] = v264.i32[3];
  if (v264.f32[3] >= v263.f32[0])
  {
    v264.f32[0] = v263.f32[0];
  }

  else
  {
    v276 = (a18 + 156);
  }

  if (v265.f32[0] < v264.f32[0])
  {
    v276 = (a18 + 160);
    v264.f32[0] = v265.f32[0];
  }

  if (v265.f32[1] < v264.f32[0])
  {
    v276 = (a18 + 164);
    v264.f32[0] = v265.f32[1];
  }

  if (v265.f32[2] < v264.f32[0])
  {
    v276 = (a18 + 168);
    v264.f32[0] = v265.f32[2];
  }

  v265.i32[0] = v265.i32[3];
  if (v265.f32[3] >= v264.f32[0])
  {
    v265.f32[0] = v264.f32[0];
  }

  else
  {
    v276 = (a18 + 172);
  }

  if (v266.f32[0] < v265.f32[0])
  {
    v276 = (a18 + 176);
    v265.f32[0] = v266.f32[0];
  }

  if (v266.f32[1] < v265.f32[0])
  {
    v276 = (a18 + 180);
    v265.f32[0] = v266.f32[1];
  }

  if (v266.f32[2] < v265.f32[0])
  {
    v276 = (a18 + 184);
    v265.f32[0] = v266.f32[2];
  }

  v266.i32[0] = v266.i32[3];
  if (v266.f32[3] >= v265.f32[0])
  {
    v266.f32[0] = v265.f32[0];
  }

  else
  {
    v276 = (a18 + 188);
  }

  if (v267.f32[0] < v266.f32[0])
  {
    v276 = (a18 + 192);
    v266.f32[0] = v267.f32[0];
  }

  if (v267.f32[1] < v266.f32[0])
  {
    v276 = (a18 + 196);
    v266.f32[0] = v267.f32[1];
  }

  if (v267.f32[2] < v266.f32[0])
  {
    v276 = (a18 + 200);
    v266.f32[0] = v267.f32[2];
  }

  v267.i32[0] = v267.i32[3];
  if (v267.f32[3] >= v266.f32[0])
  {
    v267.f32[0] = v266.f32[0];
  }

  else
  {
    v276 = (a18 + 204);
  }

  if (v268.f32[0] < v267.f32[0])
  {
    v276 = (a18 + 208);
    v267.f32[0] = v268.f32[0];
  }

  if (v268.f32[1] < v267.f32[0])
  {
    v276 = (a18 + 212);
    v267.f32[0] = v268.f32[1];
  }

  if (v268.f32[2] < v267.f32[0])
  {
    v276 = (a18 + 216);
    v267.f32[0] = v268.f32[2];
  }

  v268.i32[0] = v268.i32[3];
  if (v268.f32[3] >= v267.f32[0])
  {
    v268.f32[0] = v267.f32[0];
  }

  else
  {
    v276 = (a18 + 220);
  }

  if (v269.f32[0] < v268.f32[0])
  {
    v276 = (a18 + 224);
    v268.f32[0] = v269.f32[0];
  }

  if (v269.f32[1] < v268.f32[0])
  {
    v276 = (a18 + 228);
    v268.f32[0] = v269.f32[1];
  }

  if (v269.f32[2] < v268.f32[0])
  {
    v276 = (a18 + 232);
    v268.f32[0] = v269.f32[2];
  }

  v269.i32[0] = v269.i32[3];
  if (v269.f32[3] >= v268.f32[0])
  {
    v269.f32[0] = v268.f32[0];
  }

  else
  {
    v276 = (a18 + 236);
  }

  if (v270.f32[0] < v269.f32[0])
  {
    v276 = (a18 + 240);
    v269.f32[0] = v270.f32[0];
  }

  if (v270.f32[1] < v269.f32[0])
  {
    v276 = (a18 + 244);
    v269.f32[0] = v270.f32[1];
  }

  if (v270.f32[2] < v269.f32[0])
  {
    v276 = (a18 + 248);
    v269.f32[0] = v270.f32[2];
  }

  v270.i32[0] = v270.i32[3];
  if (v270.f32[3] >= v269.f32[0])
  {
    v270.f32[0] = v269.f32[0];
  }

  else
  {
    v276 = (a18 + 252);
  }

  if (v271 < v270.f32[0])
  {
    v276 = (a18 + 256);
  }

  v18 = *v276;
  if (*(a14 + 800))
  {
    v273 = fminf(v18, 0.001);
    goto LABEL_238;
  }

  if (v275 >= 1)
  {
    v278 = 0;
    v279 = *(a15 + 1);
    v280 = 0.0;
    do
    {
      v281 = (v279 + 4 * (v278 << 6));
      v282 = v281 + 64;
      v283 = 0.0;
      do
      {
        v284 = *v281++;
        v283 = v283 + (v284 * v284);
      }

      while (v281 != v282);
      if (v280 < v283)
      {
        v280 = v283;
      }

      ++v278;
    }

    while (v278 != v275);
    v285 = 0.0;
    if (v272 >= 2)
    {
      for (j = 1; j != v272; ++j)
      {
        for (k = 0; k != v275; ++k)
        {
          v288 = (v279 + 4 * ((k + j * v275) << 6));
          v289 = v288 + 64;
          v290 = 0.0;
          do
          {
            v291 = *v288++;
            v290 = v290 + (v291 * v291);
          }

          while (v288 != v289);
          if (v285 < v290)
          {
            v285 = v290;
          }
        }
      }
    }

    goto LABEL_221;
  }

LABEL_220:
  v280 = 0.0;
  v285 = 0.0;
LABEL_221:
  v292 = *(a1 + 588) * 64.0;
  if (v280 >= v292)
  {
    v292 = v280;
  }

  v293 = 1.0;
  v294 = 1.0;
  if (v285 >= v292)
  {
    v294 = sqrtf(v280 / v285) * *(a1 + 592);
  }

  if (((*(**(a1 + 2568) + 16))(*(a1 + 2568)) & 1) == 0)
  {
    v295 = *(a1 + 624);
    if (v295)
    {
      f32 = p_dst[2].f32;
      v297 = (v26 + 32);
      while ((((((((((((((((*(f32 - 7) + 0.0) + *(f32 - 6)) + *(f32 - 5)) + *(f32 - 4)) + *(f32 - 3)) + *(f32 - 2)) + *(f32 - 1)) + *f32) + f32[1]) + f32[2]) + f32[3]) + f32[4]) + f32[5]) + f32[6]) + f32[7]) <= (*(a1 + 580) * (((((((((((((((*(v297 - 7) + 0.0) + *(v297 - 6)) + *(v297 - 5)) + *(v297 - 4)) + *(v297 - 3)) + *(v297 - 2)) + *(v297 - 1)) + *v297) + v297[1]) + v297[2]) + v297[3]) + v297[4]) + v297[5]) + v297[6]) + v297[7])))
      {
        f32 += 65;
        v297 += 65;
        if (!--v295)
        {
          goto LABEL_232;
        }
      }

      v293 = *(a1 + 584);
    }
  }

LABEL_232:
  if (v294 >= v18)
  {
    v298 = v18;
  }

  else
  {
    v298 = v294;
  }

  if (v293 >= v298)
  {
    v273 = v298;
  }

  else
  {
    v273 = v293;
  }

LABEL_238:
  *v302 = v273;
  v299 = *(**(a1 + 2568) + 16);

  return v299();
}

void *std::vector<webrtc::SimulcastStream>::push_back[abi:sn200100](void *result, __int128 *a2)
{
  v2 = result[1];
  v3 = result[2];
  if (v2 >= v3)
  {
    v6 = 0x8E38E38E38E38E39 * ((v2 - *result) >> 2) + 1;
    if (v6 > 0x71C71C71C71C71CLL)
    {
      goto LABEL_13;
    }

    v7 = 0x8E38E38E38E38E39 * ((v3 - *result) >> 2);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x38E38E38E38E38ELL)
    {
      v6 = 0x71C71C71C71C71CLL;
    }

    if (v6)
    {
      if (v6 <= 0x71C71C71C71C71CLL)
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

  v4 = *a2;
  v5 = a2[1];
  *(v2 + 32) = *(a2 + 8);
  *v2 = v4;
  *(v2 + 16) = v5;
  result[1] = v2 + 36;
  return result;
}

void webrtc::ConfigureSvcNormalVideo(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t *a7@<X8>, float a8@<S0>)
{
  if (a1 >= a2)
  {
    v16 = 240;
  }

  else
  {
    v16 = 135;
  }

  if (a1 >= a2)
  {
    v17 = 135;
  }

  else
  {
    v17 = 240;
  }

  v18 = vcvtms_u32_f32(fmaxf(log2f(a1 / v16), 0.0) + 1.0);
  v19 = vcvtms_u32_f32(fmaxf(log2f(a2 / v17), 0.0) + 1.0);
  if (v19 >= v18)
  {
    v21 = v18;
  }

  else
  {
    v21 = v19;
  }

  if (v21 < a4)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v22, v23, v24, v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/vp9/svc_config.cc");
    }

    if (v21 <= a3 + 1)
    {
      v29 = a3 + 1;
    }

    else
    {
      v29 = v21;
    }

    if (*(a6 + 44) == 1)
    {
      goto LABEL_17;
    }

LABEL_53:
    LODWORD(v33) = 1 << (v29 + ~a3);
LABEL_54:
    *a7 = 0;
    a7[1] = 0;
    a7[2] = 0;
    if (v29 > a3)
    {
      v42 = a1 / v33 * v33;
      v43 = a2 / v33 * v33;
      v44 = ~a3 + v29;
      v45 = (a6 + 4 * a3 + 28);
      do
      {
        v48 = v42 >> v44;
        v57 = 0;
        v49 = v43 >> v44;
        LODWORD(v53) = v42 >> v44;
        DWORD1(v53) = v43 >> v44;
        *(&v53 + 2) = a8;
        BYTE12(v53) = a5;
        v58 = 1;
        if (*(a6 + 44) == 1)
        {
          v50 = *(v45 - 4);
          v51 = *v45;
          v48 = v42 * v50 / v51;
          v49 = v43 * v50 / v51;
          *&v53 = __PAIR64__(v49, v48);
        }

        v46 = (v49 * v48);
        v47 = ((sqrt(v46) * 600.0 + -95000.0) / 1000.0);
        if (v47 <= 30)
        {
          v47 = 30;
        }

        v56 = v47;
        v54 = ((v46 * 1.6 + 50000.0) / 1000.0);
        v55 = (v47 + v54) >> 1;
        std::vector<webrtc::SimulcastStream>::push_back[abi:sn200100](a7, &v53);
        --v44;
        ++v45;
      }

      while (v44 != -1);
    }

    goto LABEL_62;
  }

  if (a4 <= a3 + 1)
  {
    v29 = a3 + 1;
  }

  else
  {
    v29 = a4;
  }

  if (*(a6 + 44) != 1)
  {
    goto LABEL_53;
  }

LABEL_17:
  if (v29)
  {
    v30 = 0;
    v31 = 1;
    while (1)
    {
      LODWORD(v33) = 0;
      if (v31)
      {
        v34 = *(a6 + 28 + 4 * v30);
        if (v34)
        {
          if (v31 == 0x80000000)
          {
            v35 = 0;
          }

          else
          {
            v35 = -v31;
          }

          if (v31 >= 0)
          {
            v35 = v31;
          }

          if (v34 == 0x80000000)
          {
            v36 = 0;
          }

          else
          {
            v36 = -v34;
          }

          if (v34 >= 0)
          {
            v36 = *(a6 + 28 + 4 * v30);
          }

          v32 = v35 >= v36 ? v36 : v35;
          v37 = v35 <= v36 ? v36 : v35;
          if (v32)
          {
            v38 = v37 % v32;
            if (v38)
            {
              v39 = v38 >> __clz(__rbit32(v38));
              v40 = v32;
              do
              {
                v41 = v40 >> __clz(__rbit32(v40));
                v40 = v41 - v39;
                if (v39 > v41)
                {
                  v40 = v39 - v41;
                }

                if (v39 >= v41)
                {
                  v39 = v41;
                }
              }

              while (v40);
              v32 = v39 << __clz(__rbit32(v38 | v32));
            }
          }

          else
          {
            v32 = v37;
          }

          v33 = v35 / v32 * v36;
          if (v33 != v33)
          {
            goto LABEL_66;
          }
        }
      }

      ++v30;
      v31 = v33;
      if (v30 == v29)
      {
        goto LABEL_54;
      }
    }
  }

  *a7 = 0;
  a7[1] = 0;
  a7[2] = 0;
LABEL_62:
  if (a3)
  {
    v52 = *a7;
    if (a7[1] == *a7)
    {
LABEL_66:
      __break(1u);
      return;
    }

    *(v52 + 24) = 30;
    LODWORD(v20) = *(v52 + 16);
    *(v52 + 16) = (v20 * 1.1);
  }
}

void webrtc::GetVp9SvcConfig(webrtc *this@<X0>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>)
{
  v7 = *(this + 186);
  if ((v7 & 0x100) == 0)
  {
    goto LABEL_23;
  }

  v8 = a6;
  a6 = v7;
  if (v7 >= 0x22u)
  {
LABEL_24:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/svc/scalability_mode_util.cc", 309, "index < kNumScalabilityModes", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, a2, a3, a4, a5, a6);
LABEL_25:
    webrtc::webrtc_checks_impl::UnreachableCodeReached(v19);
  }

  v11 = *(this + 2);
  v12 = *(this + 3);
  v13 = v11 >= v12 ? 240.0 : 135.0;
  v14 = v11 >= v12 ? 135.0 : 240.0;
  v15 = vcvtms_u32_f32(fmaxf(log2f(v11 / v13), 0.0) + 1.0);
  v16 = vcvtms_u32_f32(fmaxf(log2f(v12 / v14), 0.0) + 1.0);
  v17 = v16 >= v15 ? v15 : v16;
  if (v10 <= v17)
  {
    LOBYTE(v18) = v7;
  }

  else
  {
    v18 = (webrtc::LimitNumSpatialLayers)(v7);
    v19 = webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>();
    if (v19)
    {
      *(this + 186) = v18 | 0x100;
      if (v18 >= 0x22)
      {
        webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/svc/scalability_mode_util.cc", 309, "index < kNumScalabilityModes", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, v23, v24, v25, v26, v18);
        goto LABEL_25;
      }
    }

    else
    {
      v27 = qword_273BA5278[v7 & 0x3F];
      v35 = off_279E95550[v7 & 0x3F];
      *&v36 = v27;
      if (v18 >= 0x22)
      {
        goto LABEL_25;
      }

      webrtc::webrtc_logging_impl::Log("\r\t\v\t\v", v20, v21, v22, v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/vp9/svc_config.cc");
      *(this + 186) = v18 | 0x100;
    }
  }

  v28 = *(&off_279E95440 + v18);
  v29 = *(v28 + 16);
  v30 = *(v28 + 20);
  v31 = *(this + 2);
  v32 = *(this + 3);
  v33 = *(this + 5);
  LOBYTE(v35) = *(v28 + 16);
  BYTE3(v35) = BYTE3(v29);
  *(&v35 + 1) = v29 >> 8;
  HIDWORD(v35) = v30;
  v36 = *(v28 + 24);
  v37 = *(v28 + 40);
  v38 = *(v28 + 56);
  v39 = 1;
  webrtc::ConfigureSvcNormalVideo(v31, v32, 0, v29, v30, &v35, v8, v33);
  a6 = *v8;
  if (v8[1] == *v8)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  *(a6 + 24) = 30;
  if (v10 == 1)
  {
    v34 = *(this + 12);
    *(a6 + 16) = v34;
    *(a6 + 20) = v34;
  }
}

uint64_t webrtc::SvcRateAllocator::GetNumLayers(webrtc::SvcRateAllocator *this, const VideoCodec *a2)
{
  v3 = *(this + 186);
  if ((v3 & 0x100) != 0 && v3 <= 0x21u && ((*(*(&off_279E95660 + (v3 & 0x3F)) + 1))(&v8), v8))
  {
    (*(*v8 + 16))(&v7);
    result = v7;
    v5 = v8;
    v8 = 0;
    if (v5)
    {
      v6 = v7;
      (*(*v5 + 8))(v5);
      return v6;
    }
  }

  else if (*this == 2)
  {
    return *(this + 366);
  }

  else
  {
    return 1;
  }

  return result;
}

void webrtc::SvcRateAllocator::GetLayerStartBitrates(webrtc::SvcRateAllocator *this@<X0>, const VideoCodec *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  NumLayers = webrtc::SvcRateAllocator::GetNumLayers(this, a2);
  v5 = 0;
  if (NumLayers)
  {
    v6 = this + 176;
    while (1)
    {
      v7 = *v6;
      v6 += 36;
      if (v7)
      {
        break;
      }

      if (NumLayers == ++v5)
      {
        return;
      }
    }
  }

  if (v5 < NumLayers)
  {
    v39 = this + 144;
    v8 = 36 * v5 + 176;
    v9 = v5;
    while (*(this + v8) == 1)
    {
      ++v9;
      v8 += 36;
      if (NumLayers == v9)
      {
        v9 = NumLayers;
        break;
      }
    }

    v40 = v9 - v5;
    if (v9 != v5)
    {
      v10 = 0;
      v11 = this + 36 * v5;
      v38 = v11 + 164;
      v37 = v11 + 168;
      v12 = 1;
      do
      {
        v13 = v12 - 1;
        v41 = v10;
        if (v12 == 1)
        {
          v14 = 1000 * *(this + 42);
        }

        else if (*(this + 81))
        {
          v15 = 0;
          v16 = v38;
          do
          {
            v17 = *v16;
            v16 += 36;
            v18 = v15 + 1000 * v17;
            if (v15 == 0x8000000000000000)
            {
              v18 = 0x8000000000000000;
            }

            if (v15 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v15 = v18;
            }

            --v10;
          }

          while (v10);
          v14 = 0x7FFFFFFFFFFFFFFFLL;
          if (v15 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v19 = v15 + 1000 * *&v39[36 * v13 + 24 + 36 * v5];
            if (v15 == 0x8000000000000000)
            {
              v14 = 0x8000000000000000;
            }

            else
            {
              v14 = v19;
            }
          }
        }

        else
        {
          if (v12)
          {
            v23 = 0;
            v24 = 0;
            v25 = v37;
            do
            {
              v26 = v24 + 1000 * *v25;
              if (v24 == 0x8000000000000000)
              {
                v26 = 0x8000000000000000;
              }

              if (v24 != 0x7FFFFFFFFFFFFFFFLL)
              {
                v24 = v26;
              }

              v27 = v23 + 1000 * *(v25 - 2);
              if (v23 == 0x8000000000000000)
              {
                v27 = 0x8000000000000000;
              }

              if (v23 != 0x7FFFFFFFFFFFFFFFLL)
              {
                v23 = v27;
              }

              v25 += 36;
              --v10;
            }

            while (v10);
            if (v23 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v28 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else if (v23 == 0x8000000000000000)
            {
              v28 = 0x8000000000000000;
            }

            else
            {
              v28 = v23 + 1000 * *&v39[36 * v13 + 24 + 36 * v5];
            }
          }

          else
          {
            v24 = 0;
            v28 = 1000 * *&v39[36 * v5 - 12];
            v13 = -1;
          }

          pow(0.550000012, v13);
          v14 = v28;
          while (1)
          {
            v29 = v14 == 0x7FFFFFFFFFFFFFFFLL || v24 == 0x8000000000000000;
            if (!v29 && (v14 == 0x8000000000000000 || v24 == 0x7FFFFFFFFFFFFFFFLL || (v14 - v24) < 2))
            {
              break;
            }

            v30 = v14 == 0x8000000000000000 || v24 == 0x8000000000000000;
            v31 = (v14 + v24) / 2;
            if (v30)
            {
              v31 = 0xC000000000000000;
            }

            v43 = v14;
            if (v14 == 0x7FFFFFFFFFFFFFFFLL || v24 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v31 = 0x3FFFFFFFFFFFFFFFLL;
            }

            memset(__p, 0, sizeof(__p));
            v44 = v31;
            if (v12)
            {
              v33 = 0;
              v34 = 0.0;
              do
              {
                v34 = v34 + pow(0.550000012, v33++);
              }

              while (v12 != v33);
              operator new();
            }

            if (v31 > 0 || v31 < 0)
            {
              goto LABEL_83;
            }

            v36 = v46[0];
            v35 = v46[1];
            if (v46[0])
            {
              operator delete(v46[0]);
            }

            if (__p[0])
            {
              operator delete(__p[0]);
            }

            if ((v35 - v36) >> 3)
            {
              v24 = v44;
            }

            v14 = v43;
            if ((v35 - v36) >> 3 == v12)
            {
              v14 = v44;
            }
          }
        }

        v46[0] = v14;
        v20 = a3[1];
        v21 = a3[2];
        if ((*a3 & 1) == 0)
        {
          v20 = a3 + 1;
          v21 = 5;
        }

        v22 = *a3 >> 1;
        if (v22 == v21)
        {
          absl::inlined_vector_internal::Storage<webrtc::TimeDelta,5ul,std::allocator<webrtc::TimeDelta>>::EmplaceBackSlow<webrtc::TimeDelta const&>(a3);
        }

        if (!v20)
        {
LABEL_83:
          __break(1u);
          std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
        }

        v20[v22] = v14;
        *a3 += 2;
        ++v12;
        v10 = v41 + 1;
      }

      while (v12 <= v40);
    }
  }
}

void webrtc::SvcRateAllocator::SvcRateAllocator(void *a1, void *a2)
{
  *a1 = &unk_2882A0970;
  memcpy(a1 + 1, a2, 0x180uLL);
  a1[49] = webrtc::SvcRateAllocator::GetNumLayers(a2, v4);
  a1[50] = v5;
  webrtc::StableTargetRateExperiment::StableTargetRateExperiment((a1 + 51));
}

void webrtc::SvcRateAllocator::Allocate(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v9 = *(a1 + 20);
  v10 = 1000 * v9;
  if (v10 >= *a2)
  {
    v10 = *a2;
  }

  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = *a2;
  }

  if (!*(a1 + 172))
  {
    *(a7 + 12) = 0;
    *(a7 + 16) = 0;
    *(a7 + 20) = 0;
    *(a7 + 24) = 0;
    *(a7 + 28) = 0;
    *(a7 + 32) = 0;
    *(a7 + 36) = 0;
    *(a7 + 40) = 0;
    *(a7 + 44) = 0;
    *(a7 + 48) = 0;
    *(a7 + 52) = 0;
    *(a7 + 56) = 0;
    *(a7 + 60) = 0;
    *(a7 + 64) = 0;
    *(a7 + 68) = 0;
    *(a7 + 72) = 0;
    *(a7 + 76) = 0;
    *(a7 + 80) = 0;
    *(a7 + 84) = 0;
    *(a7 + 88) = 0;
    *(a7 + 92) = 0;
    *(a7 + 96) = 0;
    *(a7 + 100) = 0;
    *(a7 + 104) = 0;
    *(a7 + 108) = 0;
    *(a7 + 112) = 0;
    *(a7 + 116) = 0;
    *(a7 + 120) = 0;
    *(a7 + 124) = 0;
    *(a7 + 128) = 0;
    *(a7 + 132) = 0;
    *(a7 + 136) = 0;
    *(a7 + 140) = 0;
    *(a7 + 144) = 0;
    *(a7 + 148) = 0;
    *(a7 + 152) = 0;
    *(a7 + 156) = 0;
    *(a7 + 160) = 0;
    *(a7 + 164) = 0;
    *(a7 + 8) = 1;
    *a7 = v11;
    *(a7 + 4) = v11;
    return;
  }

  v12 = *(a1 + 392);
  if (v12)
  {
    v13 = 0;
    v14 = (a1 + 184);
    while (1)
    {
      v15 = *v14;
      v14 += 36;
      if (v15)
      {
        break;
      }

      if (v12 == ++v13)
      {
        goto LABEL_20;
      }
    }
  }

  else
  {
    v13 = 0;
  }

  if (v13 >= v12)
  {
    goto LABEL_20;
  }

  v16 = (a1 + 36 * v13 + 184);
  v17 = v13;
  while (1)
  {
    v18 = *v16;
    v16 += 36;
    if (v18 != 1)
    {
      break;
    }

    if (v12 == ++v17)
    {
      v17 = *(a1 + 392);
      break;
    }
  }

  if (v17 == v13)
  {
LABEL_20:
    *a7 = 0;
    *(a7 + 4) = 0;
    *(a7 + 8) = 0;
    *(a7 + 12) = 0;
    *(a7 + 16) = 0;
    *(a7 + 20) = 0;
    *(a7 + 24) = 0;
    *(a7 + 28) = 0;
    *(a7 + 32) = 0;
    *(a7 + 36) = 0;
    *(a7 + 40) = 0;
    *(a7 + 44) = 0;
    *(a7 + 48) = 0;
    *(a7 + 52) = 0;
    *(a7 + 56) = 0;
    *(a7 + 60) = 0;
    *(a7 + 64) = 0;
    *(a7 + 68) = 0;
    *(a7 + 72) = 0;
    *(a7 + 76) = 0;
    *(a7 + 80) = 0;
    *(a7 + 84) = 0;
    *(a7 + 88) = 0;
    *(a7 + 92) = 0;
    *(a7 + 96) = 0;
    *(a7 + 100) = 0;
    *(a7 + 104) = 0;
    *(a7 + 108) = 0;
    *(a7 + 112) = 0;
    *(a7 + 116) = 0;
    *(a7 + 120) = 0;
    *(a7 + 124) = 0;
    *(a7 + 128) = 0;
    *(a7 + 132) = 0;
    *(a7 + 136) = 0;
    *(a7 + 140) = 0;
    *(a7 + 144) = 0;
    *(a7 + 148) = 0;
    *(a7 + 152) = 0;
    *(a7 + 156) = 0;
    *(a7 + 160) = 0;
    *(a7 + 164) = 0;
    return;
  }

  v45 = v17 - v13;
  if (*(a1 + 465) == 1 && (v19 = a2[1], v19 >= 1))
  {
    if (*(a1 + 332) == 1)
    {
      v20 = 608;
    }

    else
    {
      v20 = 536;
    }

    if (v19 >= v11)
    {
      v21 = v11;
    }

    else
    {
      v21 = a2[1];
    }

    v22 = *(a1 + 616);
    if (v22 < 2)
    {
      v23 = 0;
      v24 = 0;
      v25 = *(a1 + 664);
      if (!v25)
      {
        goto LABEL_63;
      }

      goto LABEL_60;
    }

    v31 = (a1 + 624);
    v32 = (a1 + 624);
    if (v22)
    {
      v32 = *v31;
    }

    v33 = 8 * (v22 >> 1);
    v23 = (((v22 >> 1) - 1) & 0x1FFFFFFFFFFFFFFFLL) + 1;
    if (v22 >> 1 == 1)
    {
      v25 = *(a1 + 664);
      if (v23 >= v25)
      {
        v24 = (((v22 >> 1) - 1) & 0x1FFFFFFFFFFFFFFFLL) + 1;
        goto LABEL_63;
      }

      goto LABEL_52;
    }

    v34 = llround(v21 / *(a1 + v20));
    v35 = v33 - 8;
    v24 = 1;
    while (v32[v24] <= v34)
    {
      ++v24;
      v35 -= 8;
      if (!v35)
      {
        v24 = (((v22 >> 1) - 1) & 0x1FFFFFFFFFFFFFFFLL) + 1;
        break;
      }
    }

    v25 = *(a1 + 664);
    if (v24 < v25)
    {
LABEL_52:
      if (v22)
      {
        v31 = *v31;
      }

      if (v22 >> 1 != 1)
      {
        v36 = v33 - 8;
        v37 = 1;
        while (v31[v37] <= v21)
        {
          ++v37;
          v36 -= 8;
          if (!v36)
          {
            goto LABEL_60;
          }
        }

        v23 = v37;
      }

LABEL_60:
      if (v23 >= v25)
      {
        v24 = v25;
      }

      else
      {
        v24 = v23;
      }
    }
  }

  else
  {
    v26 = *(a1 + 616);
    if (v26 >= 2)
    {
      v27 = (a1 + 624);
      if (v26)
      {
        v27 = *v27;
      }

      v28 = v26 >> 1;
      v24 = ((v28 - 1) & 0x1FFFFFFFFFFFFFFFLL) + 1;
      if (v28 != 1)
      {
        v29 = 8 * v28 - 8;
        v30 = 1;
        while (v27[v30] <= v11)
        {
          ++v30;
          v29 -= 8;
          if (!v29)
          {
            goto LABEL_63;
          }
        }

        v24 = v30;
      }
    }

    else
    {
      v24 = 0;
    }
  }

LABEL_63:
  *(a1 + 664) = v24;
  v38 = *(a1 + 332);
  if (v38)
  {
    if (!v24 || 1000 * *(a1 + 152 + 36 * v13 + 24) > v11)
    {
      operator new();
    }

    if (v24 + v13 > v13)
    {
      if (v11 == 0x7FFFFFFFFFFFFFFFLL)
      {
        operator new();
      }

      operator new();
    }

    v40 = 0;
    v39 = 0;
    if (v13 && v11 > 0)
    {
      __break(1u);
      webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video/video_bitrate_allocation.cc", 32, "spatial_index < kMaxSpatialLayers", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, a3, a4, a5, a6, v7);
      webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/svc/svc_rate_allocator.cc", 152, "num_temporal_layers == 3", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v41, v42, v43, v44, 0x1000C0000313F17);
      goto LABEL_86;
    }
  }

  else
  {
    if (!v24)
    {
      operator new();
    }

    v40 = v48[0];
    v39 = v48[1];
    if (__p[0])
    {
      operator delete(__p[0]);
    }
  }

  if (v39 != v40)
  {
    if (v39 - v40 >= 0)
    {
      operator new();
    }

LABEL_86:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  *a7 = 0;
  *(a7 + 4) = 0;
  *(a7 + 8) = 0;
  *(a7 + 12) = 0;
  *(a7 + 16) = 0;
  *(a7 + 20) = 0;
  *(a7 + 24) = 0;
  *(a7 + 28) = 0;
  *(a7 + 32) = 0;
  *(a7 + 36) = 0;
  *(a7 + 40) = 0;
  *(a7 + 44) = 0;
  *(a7 + 48) = 0;
  *(a7 + 52) = 0;
  *(a7 + 56) = 0;
  *(a7 + 60) = 0;
  *(a7 + 64) = 0;
  *(a7 + 68) = 0;
  *(a7 + 72) = 0;
  *(a7 + 76) = 0;
  *(a7 + 80) = 0;
  *(a7 + 84) = 0;
  *(a7 + 88) = 0;
  *(a7 + 92) = 0;
  *(a7 + 96) = 0;
  *(a7 + 100) = 0;
  *(a7 + 104) = 0;
  *(a7 + 108) = 0;
  *(a7 + 112) = 0;
  *(a7 + 116) = 0;
  *(a7 + 120) = 0;
  *(a7 + 124) = 0;
  *(a7 + 128) = 0;
  *(a7 + 132) = 0;
  *(a7 + 136) = 0;
  *(a7 + 140) = 0;
  *(a7 + 144) = 0;
  *(a7 + 148) = 0;
  *(a7 + 152) = 0;
  *(a7 + 156) = 0;
  *(a7 + 160) = 0;
  *(a7 + 164) = v24 < v45;
  if (v40)
  {

    operator delete(v40);
  }
}

void webrtc::anonymous namespace::AdjustAndVerify(void *a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v5 = *a4;
  v4 = a4[1];
  if (v4 == *a4)
  {
    goto LABEL_15;
  }

  if (*v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_8;
  }

  if (*v5 == 0x8000000000000000)
  {
    v6 = 0x8000000000000000;
  }

  else
  {
    v6 = *v5;
  }

  if (v6 >= 1000 * *(a2 + 36 * a3 + 168))
  {
    if (v6 <= 1000 * *(a2 + 36 * a3 + 160))
    {
      operator new();
    }

LABEL_8:
    operator new();
  }

  if (v4 - *a4 != 8)
  {
LABEL_15:
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    if (v4 != v5)
    {
      operator new();
    }
  }
}

void webrtc::anonymous namespace::SplitBitrate(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (!a2)
  {
    v12 = a3 <= 0;
    if (a3 <= 0 && (a3 & 0x8000000000000000) == 0)
    {
      return;
    }

    goto LABEL_20;
  }

  v9 = a2 - 1;
  if (a2 == 1)
  {
    v10 = 0;
    v11 = 0.0;
  }

  else
  {
    v13 = 0;
    v10 = a2 & 0xFFFFFFFFFFFFFFFELL;
    v11 = 0.0;
    do
    {
      v14 = pow(0.550000012, v13);
      v11 = v11 + v14 + pow(0.550000012, (v13 + 1));
      v13 += 2;
    }

    while (v13 != v10);
    if (v10 == a2)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v11 = v11 + pow(0.550000012, v10++);
  }

  while (a2 != v10);
LABEL_11:
  pow(0.550000012, v9);
  v6 = 0;
  v15 = *a1;
  a4 = (-*a1 >> 3) + 1;
  if (a4 >> 61)
  {
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v16 = -v15;
  if (-v15 >> 2 > a4)
  {
    a4 = -v15 >> 2;
  }

  v17 = v16 >= 0x7FFFFFFFFFFFFFF8;
  v12 = v16 <= 0x7FFFFFFFFFFFFFF8;
  v4 = 0x1FFFFFFFFFFFFFFFLL;
  if (v17)
  {
    a4 = 0x1FFFFFFFFFFFFFFFLL;
  }

  if (a4)
  {
    if (!(a4 >> 61))
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

LABEL_20:
  __break(1u);
  if (!v12)
  {
    if (v5 == 0x8000000000000000 || a4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v19 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v19 = v4;
    }

    v20 = *(v6 - 8);
    v21 = v20 - v19;
    if (v19 == 0x7FFFFFFFFFFFFFFFLL || v20 == 0x8000000000000000)
    {
      v21 = 0x8000000000000000;
    }

    if (v19 == 0x8000000000000000)
    {
      v23 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v23 = v21;
    }

    if (v20 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v23 = 0x7FFFFFFFFFFFFFFFLL;
    }

    *(v6 - 8) = v23;
  }
}

void *webrtc::SyncBuffer::PushBack(void *this, const webrtc::AudioMultiVector *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = v3 - v2;
  if (v3 == v2)
  {
LABEL_20:
    __break(1u);
    return this;
  }

  v5 = this;
  v6 = *v2;
  v8 = v6[2];
  v7 = v6[3];
  v9 = v6[1];
  v10 = this[1];
  v11 = this[2];
  if (v11 != v10 && v11 - v10 == v4)
  {
    v13 = 0;
    while (v13 < (v11 - v10) >> 3)
    {
      v14 = *(a2 + 1);
      if (v13 >= (*(a2 + 2) - v14) >> 3)
      {
        break;
      }

      v15 = *(v14 + 8 * v13);
      this = webrtc::AudioVector::PushBack(*&v10[8 * v13++], v15, (*(v15 + 1) + *(v15 + 3) - *(v15 + 2)) % *(v15 + 1), 0);
      v10 = v5[1];
      v11 = v5[2];
      if (v13 >= (v11 - v10) >> 3)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_20;
  }

LABEL_8:
  v16 = (v9 + v7 - v8) % v9;
  if (v16)
  {
    v17 = v10 == v11;
  }

  else
  {
    v17 = 1;
  }

  if (!v17)
  {
    do
    {
      v19 = *v10;
      v10 += 8;
      v18 = v19;
      v20 = v19[2];
      v21 = v19[1];
      v22 = (v21 + v19[3] - v20) % v21;
      if (v22 >= v16)
      {
        v22 = (v9 + v7 - v8) % v9;
      }

      v18[2] = (v22 + v20) % v21;
    }

    while (v10 != v11);
  }

  v23 = v5[4];
  v24 = v23 >= v16;
  v25 = v23 - v16;
  if (!v24)
  {
    v25 = 0;
  }

  v5[4] = v25;
  v26 = v5[6];
  v24 = v26 >= v16;
  v27 = v26 - v16;
  if (!v24)
  {
    v27 = 0;
  }

  v5[6] = v27;
  return this;
}

void *webrtc::SyncBuffer::PushBackInterleaved(void *result, unint64_t *a2)
{
  v2 = result[1];
  if (result[2] == v2 || ((v3 = result, v4 = *v2, v6 = v4[2], v5 = v4[3], v7 = v4[1], (v8 = *a2) != 0) ? (v9 = a2[2]) : (v9 = 0), result = webrtc::AudioMultiVector::PushBackInterleaved(result, v9, v8), v10 = v3[2], v11 = v3[1], v10 == v11))
  {
    __break(1u);
  }

  else
  {
    v12 = (*(*v11 + 8) + *(*v11 + 24) - *(*v11 + 16)) % *(*v11 + 8) - (v7 + v5 - v6) % v7;
    if (v12)
    {
      do
      {
        v14 = *v11;
        v11 += 8;
        v13 = v14;
        v15 = v14[2];
        v16 = v14[1];
        v17 = (v16 + v14[3] - v15) % v16;
        if (v17 >= v12)
        {
          v17 = v12;
        }

        v13[2] = (v17 + v15) % v16;
      }

      while (v11 != v10);
    }

    v18 = v3[4];
    v19 = v18 >= v12;
    v20 = v18 - v12;
    if (!v19)
    {
      v20 = 0;
    }

    v3[4] = v20;
    v21 = v3[6];
    v19 = v21 >= v12;
    v22 = v21 - v12;
    if (!v19)
    {
      v22 = 0;
    }

    v3[6] = v22;
  }

  return result;
}

void webrtc::SyncBuffer::InsertZerosAtIndex(webrtc::SyncBuffer *this, unint64_t a2, unint64_t a3)
{
  v3 = *(this + 1);
  v4 = *(this + 2);
  if (v4 == v3)
  {
    goto LABEL_32;
  }

  v6 = (*(*v3 + 8) + *(*v3 + 24) - *(*v3 + 16)) % *(*v3 + 8);
  if (v6 >= a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = (*(*v3 + 8) + *(*v3 + 24) - *(*v3 + 16)) % *(*v3 + 8);
  }

  v8 = v6 - v7;
  if (v8 >= a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = v8;
  }

  if (v9)
  {
    v10 = *(this + 1);
    do
    {
      v12 = *v10++;
      v11 = v12;
      v13 = v12[1];
      v14 = v13 + v12[3];
      v15 = (v14 - v12[2]) % v13;
      if (v15 >= v9)
      {
        v15 = v9;
      }

      v11[3] = (v14 - v15) % v13;
    }

    while (v10 != v4);
    v16 = 0;
    do
    {
      while (1)
      {
        v17 = v3[v16];
        v18 = (*(v17 + 1) + *(v17 + 3) - *(v17 + 2)) % *(v17 + 1);
        v19 = v18 >= v7 ? v7 : (*(v17 + 1) + *(v17 + 3) - *(v17 + 2)) % *(v17 + 1);
        if (v19 <= v18 - v19)
        {
          break;
        }

        webrtc::AudioVector::InsertZerosByPushBack(v17, v9, v19);
        ++v16;
        v3 = *(this + 1);
        v4 = *(this + 2);
        if (v16 >= v4 - v3)
        {
          goto LABEL_20;
        }
      }

      webrtc::AudioVector::InsertZerosByPushFront(v17, v9, v19);
      ++v16;
      v3 = *(this + 1);
      v4 = *(this + 2);
    }

    while (v16 < v4 - v3);
  }

LABEL_20:
  v20 = *(this + 4);
  if (v20 >= v7)
  {
    if (v4 == v3)
    {
      goto LABEL_32;
    }

    v21 = v20 + v9;
    if ((*(*v3 + 8) + *(*v3 + 24) - *(*v3 + 16)) % *(*v3 + 8) < v21)
    {
      v21 = (*(*v3 + 8) + *(*v3 + 24) - *(*v3 + 16)) % *(*v3 + 8);
    }

    *(this + 4) = v21;
  }

  v22 = *(this + 6);
  if (!v22 || v22 < v7)
  {
    return;
  }

  if (v4 == v3)
  {
LABEL_32:
    __break(1u);
    return;
  }

  v23 = (*(*v3 + 8) + *(*v3 + 24) - *(*v3 + 16)) % *(*v3 + 8);
  if (v23 >= v22 + v9)
  {
    v23 = v22 + v9;
  }

  *(this + 6) = v23;
}

void *webrtc::SyncBuffer::ReplaceAtIndex(void *this, const webrtc::AudioMultiVector *a2, unint64_t a3, unint64_t a4)
{
  v4 = this[1];
  v5 = this[2];
  if (v5 == v4 || ((v7 = *(*v4 + 8), v8 = v7 + *(*v4 + 24) - *(*v4 + 16), v9 = v8 % v7, v8 % v7 >= a4) ? (v10 = a4) : (v10 = v8 % v7), v11 = *(a2 + 1), (v12 = *(a2 + 2) - v11) == 0))
  {
LABEL_17:
    __break(1u);
    return this;
  }

  v13 = v9 - v10;
  if (v13 >= a3)
  {
    v13 = a3;
  }

  v14 = (*(*v11 + 8) + *(*v11 + 24) - *(*v11 + 16)) % *(*v11 + 8);
  if (v14 >= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  if (v5 - v4 == v12)
  {
    v16 = this;
    v17 = 0;
    while (v17 < (v5 - v4) >> 3)
    {
      v18 = *(a2 + 1);
      if (v17 >= (*(a2 + 2) - v18) >> 3)
      {
        break;
      }

      this = webrtc::AudioVector::OverwriteAt(*(v4 + 8 * v17), *(v18 + 8 * v17), v15, v10);
      ++v17;
      v4 = v16[1];
      v5 = v16[2];
      if (v17 >= (v5 - v4) >> 3)
      {
        return this;
      }
    }

    goto LABEL_17;
  }

  return this;
}

void *webrtc::SyncBuffer::ReplaceAtIndex(void *this, const webrtc::AudioMultiVector *a2, unint64_t a3)
{
  v4 = *(a2 + 1);
  v3 = *(a2 + 2);
  v5 = v3 - v4;
  if (v3 == v4 || (v6 = this, v7 = this[1], v8 = this[2], v8 == v7))
  {
LABEL_15:
    __break(1u);
    return this;
  }

  v9 = (*(*v4 + 24) + *(*v4 + 8) - *(*v4 + 16)) % *(*v4 + 8);
  v10 = (*(*v7 + 8) + *(*v7 + 24) - *(*v7 + 16)) % *(*v7 + 8);
  if (v10 >= a3)
  {
    v11 = a3;
  }

  else
  {
    v11 = (*(*v7 + 8) + *(*v7 + 24) - *(*v7 + 16)) % *(*v7 + 8);
  }

  v12 = v10 - v11;
  if (v12 >= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = v12;
  }

  if (v8 - v7 == v5)
  {
    v15 = 0;
    while (v15 < (v8 - v7) >> 3)
    {
      v16 = *(a2 + 1);
      if (v15 >= (*(a2 + 2) - v16) >> 3)
      {
        break;
      }

      this = webrtc::AudioVector::OverwriteAt(*(v7 + 8 * v15), *(v16 + 8 * v15), v13, v11);
      ++v15;
      v7 = v6[1];
      v8 = v6[2];
      if (v15 >= (v8 - v7) >> 3)
      {
        return this;
      }
    }

    goto LABEL_15;
  }

  return this;
}

void webrtc::SyncBuffer::GetNextAudioInterleaved(void *a1, unint64_t a2, uint64_t a3)
{
  v8 = a1[1];
  v9 = a1[2];
  if (v9 == v8)
  {
    goto LABEL_37;
  }

  v4 = a3;
  v5 = a1;
  v10 = a3 + 12288;
  v11 = ((*v8)[3] + (*v8)[1] - (*v8)[2]) % (*v8)[1] - a1[4];
  *a3 = 0;
  *(a3 + 8) = -1;
  *(a3 + 16) = -1;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 15436) = 0;
  *(a3 + 48) = 0x200000004;
  v6 = *(a3 + 64);
  if (v11 >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = v11;
  }

  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  if (v6 && atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
  {
    v12 = *(v6 + 1);
    if (v12)
    {
      v13 = *(v6 + 2);
      v14 = *(v6 + 1);
      if (v13 != v12)
      {
        do
        {
          v15 = *(v13 - 96);
          if (v15)
          {
            *(v13 - 88) = v15;
            operator delete(v15);
          }

          v13 -= 104;
        }

        while (v13 != v12);
        v14 = *(v6 + 1);
      }

      *(v6 + 2) = v12;
      operator delete(v14);
    }

    MEMORY[0x2743DA540](v6, 0x1020C40E72D6CFBLL);
  }

  if (*(v10 + 3160) == 1)
  {
    *(v10 + 3160) = 0;
    v16 = v5[4];
    if (*(v10 + 3144) != 1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v16 = v5[4];
    if (*(v10 + 3144) != 1)
    {
LABEL_18:
      v8 = v5[1];
      v9 = v5[2];
      v3 = v9 - v8;
      if (v9 != v8)
      {
        goto LABEL_19;
      }

LABEL_37:
      __break(1u);
      goto LABEL_38;
    }
  }

  bzero(v4 + 9, 0x3C01uLL);
  v8 = v5[1];
  v9 = v5[2];
  v3 = v9 - v8;
  if (v9 == v8)
  {
    goto LABEL_37;
  }

LABEL_19:
  v6 = (v4 + 9);
  v17 = *v8;
  v18 = (*v8)[2];
  v19 = (*v8)[1];
  v20 = (*v8)[3] + v19 - v18;
  v21 = v20 % v19;
  if (v20 % v19 >= v16)
  {
    v9 = v16;
  }

  else
  {
    v9 = (v20 % v19);
  }

  if (&v7[v9] > v21)
  {
    v7 = (v21 - v9);
  }

  if (v3 == 8)
  {
    if (v7)
    {
      if (v21 - v9 >= v7)
      {
        v22 = v7;
      }

      else
      {
        v22 = (v21 - v9);
      }

      v23 = &v18[v9] % v19;
      v24 = v19 - v23;
      if (v19 - v23 >= v22)
      {
        v25 = v22;
      }

      else
      {
        v25 = (v19 - v23);
      }

      memcpy(v4 + 9, *v17 + 2 * v23, 2 * v25);
      if (v22 > v24)
      {
        memcpy(v6 + 2 * v25, *v17, 2 * (v22 - v25));
      }

      v26 = v7;
      goto LABEL_48;
    }

LABEL_47:
    v26 = 0;
    goto LABEL_48;
  }

LABEL_38:
  if (!v7)
  {
    goto LABEL_47;
  }

  v27 = 0;
  v26 = 0;
  v28 = v3 >> 3;
  if (v28 <= 1)
  {
    v28 = 1;
  }

  do
  {
    v29 = v8;
    v30 = v28;
    do
    {
      v31 = *v29++;
      v32 = v31[1];
      v33 = v9 + v27 + v31[2];
      v34 = *v31;
      if (v33 < v32)
      {
        v32 = 0;
      }

      *(v6 + v26++) = *(v34 + 2 * (v33 - v32));
      --v30;
    }

    while (v30);
    ++v27;
  }

  while (v27 != v7);
LABEL_48:
  v35 = (v5[2] - v5[1]) >> 3;
  v5[4] += v26 / v35;
  v4[5] = v35;
  v4[3] = v26 / v35;
}

void webrtc::SyncBuffer::~SyncBuffer(webrtc::SyncBuffer *this)
{
  *this = &unk_28828E2C0;
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *(this + 2);
    v4 = *(this + 1);
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          v7 = *v5;
          *v5 = 0;
          if (v7)
          {
            MEMORY[0x2743DA520](v7, 0x1000C80BDFB0063);
          }

          MEMORY[0x2743DA540](v5, 0x1010C40FAA616C6);
        }
      }

      while (v3 != v2);
      v4 = *(this + 1);
    }

    *(this + 2) = v2;
    operator delete(v4);
  }
}

{
  *this = &unk_28828E2C0;
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *(this + 2);
    v4 = *(this + 1);
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          v7 = *v5;
          *v5 = 0;
          if (v7)
          {
            MEMORY[0x2743DA520](v7, 0x1000C80BDFB0063);
          }

          MEMORY[0x2743DA540](v5, 0x1010C40FAA616C6);
        }
      }

      while (v3 != v2);
      v4 = *(this + 1);
    }

    *(this + 2) = v2;
    operator delete(v4);
  }

  JUMPOUT(0x2743DA540);
}

void *std::vector<webrtc::rtcp::TargetBitrate::BitrateItem>::push_back[abi:sn200100](void *result, void *a2)
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

char *std::vector<webrtc::rtcp::TargetBitrate::BitrateItem>::__assign_with_size[abi:sn200100]<webrtc::rtcp::TargetBitrate::BitrateItem*,webrtc::rtcp::TargetBitrate::BitrateItem*>(char **a1, char *__src, char *a3, unint64_t a4)
{
  v7 = a1[2];
  result = *a1;
  if (a4 > (v7 - result) >> 3)
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

    if (!(a4 >> 61))
    {
      v10 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v10 = a4;
      }

      v11 = v7 >= 0x7FFFFFFFFFFFFFF8;
      v12 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v11)
      {
        v12 = v10;
      }

      if (!(v12 >> 61))
      {
        operator new();
      }
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v13 = a1[1];
  v14 = v13 - result;
  if (a4 <= (v13 - result) >> 3)
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

void webrtc::TaskQueueFrameDecodeScheduler::~TaskQueueFrameDecodeScheduler(webrtc::TaskQueueFrameDecodeScheduler *this)
{
  *this = &unk_2882A09D0;
  v1 = *(this + 4);
  *(v1 + 4) = 0;
  if (atomic_fetch_add(v1, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540](v1, 0x1000C4090D0E795);
  }
}

{
  *this = &unk_2882A09D0;
  v2 = *(this + 4);
  *(v2 + 4) = 0;
  if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540](v2, 0x1000C4090D0E795);
  }

  JUMPOUT(0x2743DA540);
}

void webrtc::TaskQueueFrameDecodeScheduler::ScheduleFrame(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a1 + 24) = a2;
  *(a1 + 28) = 1;
  (*(**(a1 + 8) + 16))(*(a1 + 8));
  v7 = *(a1 + 32);
  if (v7)
  {
    atomic_fetch_add_explicit(v7, 1u, memory_order_relaxed);
  }

  (*(a5 + 16))(0, a5, v8);
  v8[1] = *(a5 + 16);
  *(a5 + 16) = absl::internal_any_invocable::EmptyManager;
  *(a5 + 24) = 0;
  operator new();
}

uint64_t webrtc::TaskQueueFrameDecodeScheduler::CancelOutstanding(uint64_t this)
{
  if (*(this + 28) == 1)
  {
    *(this + 28) = 0;
  }

  return this;
}

uint64_t webrtc::TaskQueueFrameDecodeScheduler::Stop(webrtc::TaskQueueFrameDecodeScheduler *this)
{
  result = (*(*this + 32))(this);
  *(this + 40) = 1;
  return result;
}

uint64_t **_ZN4absl22internal_any_invocable13RemoteInvokerILb0EvOZN6webrtc29TaskQueueFrameDecodeScheduler13ScheduleFrameEjNS2_17FrameDecodeTiming13FrameScheduleENS_12AnyInvocableIFvjNS2_9TimestampEOEEEE3__0JEEET0_PNS0_15TypeErasedStateEDpNS0_18ForwardedParameterIT2_E4typeE(uint64_t **result)
{
  v1 = *result;
  v2 = **result;
  if (*(v2 + 28) == 1 && *(v2 + 24) == *(*result + 2))
  {
    *(v2 + 28) = 0;
    return (v1[7])(v1 + 4);
  }

  return result;
}

uint64_t _ZN4absl22internal_any_invocable23RemoteManagerNontrivialIZN6webrtc29TaskQueueFrameDecodeScheduler13ScheduleFrameEjNS2_17FrameDecodeTiming13FrameScheduleENS_12AnyInvocableIFvjNS2_9TimestampEOEEEE3__0EEvNS0_14FunctionToCallEPNS0_15TypeErasedStateESD_(uint64_t result, uint64_t *a2, void *a3)
{
  v3 = *a2;
  if (result)
  {
    if (v3)
    {
      (*(v3 + 48))(1, v3 + 32, v3 + 32);

      JUMPOUT(0x2743DA540);
    }
  }

  else
  {
    *a3 = v3;
  }

  return result;
}