void webrtc::JsepTransport::RecordPayloadTypes(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v9 = a2;
  v32 = *MEMORY[0x277D85DE8];
  v12 = 232;
  if (a2)
  {
    v12 = 320;
  }

  v13 = a1 + v12;
  v14 = *(a1 + v12 + 56);
  if (!v14)
  {
    std::__tree<sigslot::_signal_base_interface *>::destroy(v13 + 64, *(v13 + 72));
    *(v13 + 72) = 0;
    *(v13 + 80) = 0;
    *(v13 + 64) = v13 + 72;
    v14 = *(v13 + 56);
  }

  *(v13 + 56) = v14 + 1;
  *a8 = 0;
  *(a8 + 8) = 0;
  v15 = (a8 + 8);
  *(a8 + 38) = 0;
  *(a8 + 16) = 0;
  *(a8 + 24) = 0;
  *(a8 + 29) = 0;
  v16 = *(a3 + 32);
  v17 = *(v16 + 280);
  v18 = *(v16 + 288);
  if (v17 != v18)
  {
    if (v9)
    {
      do
      {
        webrtc::Codec::Codec(v30, v17);
        v19 = v31;
        webrtc::Codec::Codec(v29, v30);
        webrtc::PayloadTypeRecorder::AddMapping(v29, a1 + 320, v19, &v24);
        v20 = v24;
        if (*(a8 + 31) < 0)
        {
          operator delete(*v15);
        }

        *v15 = v25;
        *(a8 + 24) = v26;
        HIBYTE(v26) = 0;
        LOBYTE(v25) = 0;
        *(a8 + 32) = v27[0];
        *(a8 + 35) = *(v27 + 3);
        webrtc::Codec::~Codec(v29);
        webrtc::Codec::~Codec(v30);
        if (v20)
        {
          break;
        }

        v17 = (v17 + 216);
      }

      while (v17 != v18);
    }

    else
    {
      do
      {
        webrtc::Codec::Codec(v30, v17);
        v21 = v31;
        webrtc::Codec::Codec(v28, v30);
        webrtc::PayloadTypeRecorder::AddMapping(v28, a1 + 232, v21, &v24);
        v20 = v24;
        if (*(a8 + 31) < 0)
        {
          operator delete(*v15);
        }

        *v15 = v25;
        *(a8 + 24) = v26;
        HIBYTE(v26) = 0;
        LOBYTE(v25) = 0;
        *(a8 + 32) = v27[0];
        *(a8 + 35) = *(v27 + 3);
        webrtc::Codec::~Codec(v28);
        webrtc::Codec::~Codec(v30);
        if (v20)
        {
          break;
        }

        v17 = (v17 + 216);
      }

      while (v17 != v18);
    }

    *a8 = v20;
  }

  v22 = *(v13 + 56);
  if (v22 <= 0)
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/call/payload_type_picker.cc", 324, "disallow_redefinition_level_ > 0", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a4, a5, a6, a7, v23);
  }

  *(v13 + 56) = v22 - 1;
}

void std::__tree<std::__value_type<webrtc::PayloadType,webrtc::Codec>,std::__map_value_compare<webrtc::PayloadType,std::__value_type<webrtc::PayloadType,webrtc::Codec>,std::less<webrtc::PayloadType>,true>,std::allocator<std::__value_type<webrtc::PayloadType,webrtc::Codec>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<webrtc::PayloadType,webrtc::Codec>,std::__map_value_compare<webrtc::PayloadType,std::__value_type<webrtc::PayloadType,webrtc::Codec>,std::less<webrtc::PayloadType>,true>,std::allocator<std::__value_type<webrtc::PayloadType,webrtc::Codec>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<webrtc::PayloadType,webrtc::Codec>,std::__map_value_compare<webrtc::PayloadType,std::__value_type<webrtc::PayloadType,webrtc::Codec>,std::less<webrtc::PayloadType>,true>,std::allocator<std::__value_type<webrtc::PayloadType,webrtc::Codec>>>::destroy(a1, a2[1]);
    webrtc::Codec::~Codec((a2 + 5));

    operator delete(a2);
  }
}

BOOL webrtc::RefCountedObject<webrtc::DtlsTransport>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 40, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

void webrtc::RefCountedObject<webrtc::DtlsTransport>::~RefCountedObject(webrtc::DtlsTransport *a1)
{
  webrtc::DtlsTransport::~DtlsTransport(a1);

  JUMPOUT(0x2743DA540);
}

BOOL webrtc::RefCountedObject<webrtc::SctpTransport>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 22, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

void *webrtc::RefCountedObject<webrtc::SctpTransport>::~RefCountedObject(void *a1)
{
  *a1 = &unk_28829EF30;
  a1[1] = &unk_28829EFC0;
  v2 = a1[10];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[8];
  a1[8] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

void webrtc::RefCountedObject<webrtc::SctpTransport>::~RefCountedObject(void *a1)
{
  *a1 = &unk_28829EF30;
  a1[1] = &unk_28829EFC0;
  v2 = a1[10];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[8];
  a1[8] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t non-virtual thunk towebrtc::RefCountedObject<webrtc::SctpTransport>::~RefCountedObject(void *a1)
{
  *(a1 - 1) = &unk_28829EF30;
  *a1 = &unk_28829EFC0;
  v2 = a1[9];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[7];
  a1[7] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  result = a1[3];
  if (result)
  {
    v5 = *(*result + 8);

    return v5();
  }

  return result;
}

void non-virtual thunk towebrtc::RefCountedObject<webrtc::SctpTransport>::~RefCountedObject(void *a1)
{
  *(a1 - 1) = &unk_28829EF30;
  *a1 = &unk_28829EFC0;
  v2 = a1[9];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[7];
  a1[7] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  JUMPOUT(0x2743DA540);
}

void webrtc::BundleManager::Update(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 != 2 && *a1 != 1)
  {
    if (a3)
    {
      return;
    }

    v31 = 6;
    if (&__p > "BUNDLE" || &__p + 6 <= "BUNDLE")
    {
      strcpy(&__p, "BUNDLE");
      v5 = *(a2 + 48);
      v6 = *(a2 + 56);
      if (v5 == v6)
      {
        if ((v31 & 0x80000000) == 0)
        {
          return;
        }
      }

      else
      {
        do
        {
          v23 = *(v5 + 23);
          if (v23 >= 0)
          {
            v24 = *(v5 + 23);
          }

          else
          {
            v24 = v5[1];
          }

          v25 = v31;
          if (v31 < 0)
          {
            v25 = v30;
          }

          if (v24 == v25)
          {
            if (v23 >= 0)
            {
              v26 = v5;
            }

            else
            {
              v26 = *v5;
            }

            if (v31 >= 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p;
            }

            if (!memcmp(v26, p_p, v24))
            {
              operator new();
            }
          }

          v5 += 6;
        }

        while (v5 != v6);
        if ((v31 & 0x80000000) == 0)
        {
          return;
        }
      }

      operator delete(__p);
      return;
    }

LABEL_69:
    __break(1u);
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  while (v8 != v7)
  {
    v10 = *--v8;
    v9 = v10;
    *v8 = 0;
    if (v10)
    {
      v11 = *(v9 + 24);
      if (v11)
      {
        v12 = *(v9 + 32);
        v13 = *(v9 + 24);
        if (v12 != v11)
        {
          do
          {
            v14 = *(v12 - 1);
            v12 -= 3;
            if (v14 < 0)
            {
              operator delete(*v12);
            }
          }

          while (v12 != v11);
          v13 = *(v9 + 24);
        }

        *(v9 + 32) = v11;
        operator delete(v13);
      }

      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      MEMORY[0x2743DA540](v9, 0x1032C402D514303);
    }
  }

  *(a1 + 16) = v7;
  v31 = 6;
  if (&__p <= "BUNDLE" && &__p + 6 > "BUNDLE")
  {
    goto LABEL_69;
  }

  strcpy(&__p, "BUNDLE");
  v16 = *(a2 + 48);
  for (i = *(a2 + 56); v16 != i; v16 += 48)
  {
    v18 = *(v16 + 23);
    if (v18 >= 0)
    {
      v19 = *(v16 + 23);
    }

    else
    {
      v19 = *(v16 + 8);
    }

    v20 = v31;
    if (v31 < 0)
    {
      v20 = v30;
    }

    if (v19 == v20)
    {
      v21 = v18 >= 0 ? v16 : *v16;
      v22 = v31 >= 0 ? &__p : __p;
      if (!memcmp(v21, v22, v19))
      {
        operator new();
      }
    }
  }

  if (v31 < 0)
  {
    operator delete(__p);
  }

  webrtc::BundleManager::RefreshEstablishedBundleGroupsByMid(a1);
}

void webrtc::BundleManager::RefreshEstablishedBundleGroupsByMid(char **this)
{
  v1 = this + 8;
  std::__tree<webrtc::SocketAddress>::destroy((this + 7), this[8]);
  *v1 = 0;
  v1[1] = 0;
  *(v1 - 1) = v1;
  v2 = *(v1 - 7);
  v23 = v1;
  v21 = *(v1 - 6);
  if (v2 == v21)
  {
    return;
  }

  while (2)
  {
    v4 = *(*v2 + 24);
    v3 = *(*v2 + 32);
    v22 = v3;
LABEL_5:
    if (v4 != v3)
    {
      v5 = v2;
      v6 = *v2;
      v7 = *v23;
      if (!*v23)
      {
LABEL_32:
        operator new();
      }

      v8 = *(v4 + 23);
      if (v8 >= 0)
      {
        v9 = v4;
      }

      else
      {
        v9 = *v4;
      }

      if (v8 >= 0)
      {
        v10 = *(v4 + 23);
      }

      else
      {
        v10 = v4[1];
      }

      while (1)
      {
        v11 = v7;
        v14 = v7[4];
        v12 = v7 + 4;
        v13 = v14;
        v15 = *(v12 + 23);
        if (v15 >= 0)
        {
          v16 = v12;
        }

        else
        {
          v16 = v13;
        }

        if (v15 >= 0)
        {
          v17 = *(v12 + 23);
        }

        else
        {
          v17 = v12[1];
        }

        if (v17 >= v10)
        {
          v18 = v10;
        }

        else
        {
          v18 = v17;
        }

        v19 = memcmp(v9, v16, v18);
        if (v19)
        {
          if (v19 < 0)
          {
            goto LABEL_13;
          }

LABEL_27:
          v20 = memcmp(v16, v9, v18);
          if (v20)
          {
            if ((v20 & 0x80000000) == 0)
            {
              goto LABEL_33;
            }
          }

          else if (v17 >= v10)
          {
LABEL_33:
            v2 = v5;
            v11[7] = v6;
            v4 += 3;
            v3 = v22;
            goto LABEL_5;
          }

          v7 = v11[1];
          if (!v7)
          {
            goto LABEL_32;
          }
        }

        else
        {
          if (v10 >= v17)
          {
            goto LABEL_27;
          }

LABEL_13:
          v7 = *v11;
          if (!*v11)
          {
            goto LABEL_32;
          }
        }
      }
    }

    if (++v2 != v21)
    {
      continue;
    }

    break;
  }
}

void webrtc::BundleManager::DeleteMid(void *a1, webrtc::ContentGroup *a2, void **a3)
{
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
  {
    webrtc::ContentGroup::ToString(a2, &__p);
    webrtc::webrtc_logging_impl::Log("\r\t\n\t\n", v6, v7, v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/jsep_transport_collection.cc");
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v13 = a1[1];
  v14 = a1[2];
  if (v13 != v14)
  {
    while (*v13 != a2)
    {
      if (++v13 == v14)
      {
        v13 = a1[2];
        break;
      }
    }
  }

  v15 = *(a3 + 23);
  if (v15 >= 0)
  {
    v16 = a3;
  }

  else
  {
    v16 = *a3;
  }

  if (v15 >= 0)
  {
    v17 = *(a3 + 23);
  }

  else
  {
    v17 = a3[1];
  }

  webrtc::ContentGroup::RemoveContentName(*v13, v16, v17);
  v18 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>((a1 + 7), a3);
  v19 = v18;
  v20 = v18[1];
  if (v20)
  {
    do
    {
      v21 = v20;
      v20 = *v20;
    }

    while (v20);
  }

  else
  {
    v22 = v18;
    do
    {
      v21 = v22[2];
      v23 = *v21 == v22;
      v22 = v21;
    }

    while (!v23);
  }

  if (a1[7] == v18)
  {
    a1[7] = v21;
  }

  v24 = a1[8];
  --a1[9];
  std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v24, v19);
  if (*(v19 + 55) < 0)
  {
    operator delete(v19[4]);
  }

  operator delete(v19);
}

void webrtc::BundleManager::DeleteGroup(webrtc::BundleManager *this, const webrtc::ContentGroup *a2)
{
  v3 = *(this + 1);
  v4 = *(this + 2);
  if (v3 != v4)
  {
    while (*v3 != a2)
    {
      if (++v3 == v4)
      {
        v3 = *(this + 2);
        break;
      }
    }
  }

  v6 = *(*v3 + 24);
  v5 = *(*v3 + 32);
  if (v5 != v6)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v5 - v6) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (v4 == v3)
  {
    __break(1u);
  }

  else
  {
    v7 = v3 + 1;
    if (v3 + 1 != v4)
    {
      do
      {
        v8 = *v7;
        *v7 = 0;
        v9 = *v3;
        *v3 = v8;
        if (v9)
        {
          v10 = *(v9 + 24);
          if (v10)
          {
            v11 = *(v9 + 32);
            v12 = *(v9 + 24);
            if (v11 != v10)
            {
              do
              {
                v13 = *(v11 - 1);
                v11 -= 3;
                if (v13 < 0)
                {
                  operator delete(*v11);
                }
              }

              while (v11 != v10);
              v12 = *(v9 + 24);
            }

            *(v9 + 32) = v10;
            operator delete(v12);
          }

          if (*(v9 + 23) < 0)
          {
            operator delete(*v9);
          }

          MEMORY[0x2743DA540](v9, 0x1032C402D514303);
        }

        ++v7;
        ++v3;
      }

      while (v7 != v4);
      v4 = *(this + 2);
    }

    while (v4 != v3)
    {
      v15 = *--v4;
      v14 = v15;
      *v4 = 0;
      if (v15)
      {
        v16 = *(v14 + 24);
        if (v16)
        {
          v17 = *(v14 + 32);
          v18 = *(v14 + 24);
          if (v17 != v16)
          {
            do
            {
              v19 = *(v17 - 1);
              v17 -= 3;
              if (v19 < 0)
              {
                operator delete(*v17);
              }
            }

            while (v17 != v16);
            v18 = *(v14 + 24);
          }

          *(v14 + 32) = v16;
          operator delete(v18);
        }

        if (*(v14 + 23) < 0)
        {
          operator delete(*v14);
        }

        MEMORY[0x2743DA540](v14, 0x1032C402D514303);
      }
    }

    *(this + 2) = v3;
  }
}

void webrtc::BundleManager::Rollback(webrtc::BundleManager *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  while (v3 != v2)
  {
    v5 = *--v3;
    v4 = v5;
    *v3 = 0;
    if (v5)
    {
      v6 = *(v4 + 24);
      if (v6)
      {
        v7 = *(v4 + 32);
        v8 = *(v4 + 24);
        if (v7 != v6)
        {
          do
          {
            v9 = *(v7 - 1);
            v7 -= 3;
            if (v9 < 0)
            {
              operator delete(*v7);
            }
          }

          while (v7 != v6);
          v8 = *(v4 + 24);
        }

        *(v4 + 32) = v6;
        operator delete(v8);
      }

      if (*(v4 + 23) < 0)
      {
        operator delete(*v4);
      }

      MEMORY[0x2743DA540](v4, 0x1032C402D514303);
    }
  }

  *(this + 2) = v2;
  if (*(this + 4) != *(this + 5))
  {
    operator new();
  }

  webrtc::BundleManager::RefreshEstablishedBundleGroupsByMid(this);
}

void *webrtc::BundleManager::Commit(void *this)
{
  v1 = this;
  v2 = this[4];
  v3 = this[5];
  while (v3 != v2)
  {
    v5 = *--v3;
    v4 = v5;
    *v3 = 0;
    if (v5)
    {
      v6 = *(v4 + 24);
      if (v6)
      {
        v7 = *(v4 + 32);
        v8 = *(v4 + 24);
        if (v7 != v6)
        {
          do
          {
            v9 = *(v7 - 1);
            v7 -= 3;
            if (v9 < 0)
            {
              operator delete(*v7);
            }
          }

          while (v7 != v6);
          v8 = *(v4 + 24);
        }

        *(v4 + 32) = v6;
        operator delete(v8);
      }

      if (*(v4 + 23) < 0)
      {
        operator delete(*v4);
      }

      this = MEMORY[0x2743DA540](v4, 0x1032C402D514303);
    }
  }

  v1[5] = v2;
  if (v1[1] != v1[2])
  {
    operator new();
  }

  return this;
}

void webrtc::JsepTransportCollection::SetTransportForMid(void *a1, uint64_t a2, std::string::size_type a3)
{
  v6 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>((a1 + 3), a2);
  v7 = v6;
  if (a1 + 4 == v6 || v6[7] != a3)
  {
    __p.__r_.__value_.__r.__words[0] = a3;
    v8 = a1[12];
    if (v8)
    {
      (*(*v8 + 48))(v8, a2, &__p);
      if (a1 + 4 == v7)
      {
        if (*(a2 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
        }

        else
        {
          __p = *a2;
        }

        v13 = a3;
        std::__tree<std::__value_type<std::string,webrtc::JsepTransport *>,std::__map_value_compare<std::string,std::__value_type<std::string,webrtc::JsepTransport *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,webrtc::JsepTransport *>>>::__emplace_unique_key_args<std::string,std::pair<std::string,webrtc::JsepTransport *>>((a1 + 3), &__p.__r_.__value_.__l.__data_);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v9 = v7[7];
        v7[7] = a3;
        webrtc::JsepTransportCollection::MaybeDestroyJsepTransport(a1, v9);
      }
    }

    else
    {
      v10 = std::__throw_bad_function_call[abi:sn200100]();
      webrtc::JsepTransportCollection::ActiveTransports(v10, v11);
    }
  }
}

void webrtc::JsepTransportCollection::ActiveTransports(webrtc::JsepTransportCollection **this@<X0>, void *a2@<X8>)
{
  v2 = 0;
  v3 = 0;
  if (this[3] != (this + 4))
  {
    operator new();
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(v2);
}

uint64_t webrtc::JsepTransportCollection::GetTransportForMid(uint64_t a1, void **a2, size_t a3)
{
  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
LABEL_15:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (a3 > 0x16)
  {
    operator new();
  }

  v9 = a3;
  v4 = (&__p + a3);
  if (&__p <= a2 && v4 > a2)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (a3)
  {
    memmove(&__p, a2, a3);
  }

  *v4 = 0;
  v5 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a1 + 24, &__p);
  v6 = v5;
  if (v9 < 0)
  {
    operator delete(__p);
    if ((a1 + 32) != v6)
    {
      return v6[7];
    }
  }

  else if ((a1 + 32) != v5)
  {
    return v6[7];
  }

  return 0;
}

void *webrtc::JsepTransportCollection::MaybeDestroyJsepTransport(void *this, webrtc::JsepTransport *a2)
{
  v2 = this[3];
  if (v2 == this + 4)
  {
LABEL_2:
    v3 = this[6];
    if (v3 == this + 7)
    {
LABEL_3:
      v5 = this + 1;
      v4 = *this;
      if (*this == this + 1)
      {
        return this;
      }

      while (v4[7] != a2)
      {
        v11 = v4[1];
        if (v11)
        {
          do
          {
            v12 = v11;
            v11 = *v11;
          }

          while (v11);
        }

        else
        {
          do
          {
            v12 = v4[2];
            v8 = *v12 == v4;
            v4 = v12;
          }

          while (!v8);
        }

        v4 = v12;
        if (v12 == v5)
        {
          return this;
        }
      }

      v15 = this;
      v16 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(this, v4 + 4);
      if (v5 != v16)
      {
        std::__tree<std::__value_type<std::string,std::unique_ptr<webrtc::JsepTransport>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<webrtc::JsepTransport>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<webrtc::JsepTransport>>>>::erase(v15, v16);
      }

      v13 = v15[16];
      if (!v13)
      {
LABEL_36:
        v17 = std::__throw_bad_function_call[abi:sn200100]();
        return webrtc::JsepTransportCollection::RemoveTransportForMid(v17);
      }
    }

    else
    {
      while (v3[7] != a2)
      {
        v9 = v3[1];
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
          do
          {
            v10 = v3[2];
            v8 = *v10 == v3;
            v3 = v10;
          }

          while (!v8);
        }

        v3 = v10;
        if (v10 == this + 7)
        {
          goto LABEL_3;
        }
      }

      v13 = this[16];
      if (!v13)
      {
        goto LABEL_36;
      }
    }

    v14 = *(*v13 + 48);

    return v14();
  }

  else
  {
    while (v2[7] != a2)
    {
      v6 = v2[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v2[2];
          v8 = *v7 == v2;
          v2 = v7;
        }

        while (!v8);
      }

      v2 = v7;
      if (v7 == this + 4)
      {
        goto LABEL_2;
      }
    }
  }

  return this;
}

uint64_t *webrtc::JsepTransportCollection::RemoveTransportForMid(void *a1, const void **a2)
{
  v15 = 0;
  v3 = a1[12];
  if (v3)
  {
    (*(*v3 + 48))(v3, a2, &v15);
    result = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>((a1 + 3), a2);
    if (a1 + 4 != result)
    {
      v6 = result[7];
      if (v6)
      {
        v7 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>((a1 + 3), a2);
        if (a1 + 4 != v7)
        {
          v8 = v7;
          v9 = v7[1];
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
            v11 = v7;
            do
            {
              v10 = v11[2];
              v12 = *v10 == v11;
              v11 = v10;
            }

            while (!v12);
          }

          if (a1[3] == v7)
          {
            a1[3] = v10;
          }

          v13 = a1[4];
          --a1[5];
          std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v13, v8);
          if (*(v8 + 55) < 0)
          {
            operator delete(v8[4]);
          }

          operator delete(v8);
        }

        return webrtc::JsepTransportCollection::MaybeDestroyJsepTransport(a1, v6);
      }
    }
  }

  else
  {
    v14 = std::__throw_bad_function_call[abi:sn200100]();
    return webrtc::JsepTransportCollection::RollbackTransports(v14);
  }

  return result;
}

void *webrtc::JsepTransportCollection::RollbackTransports(uint64_t **this)
{
  v1 = this;
  v2 = this[3];
  v29 = (this + 3);
  v3 = (this + 4);
  v4 = 1;
  if (v2 != (this + 4))
  {
    v30 = (this + 4);
    while (1)
    {
      v5 = v1;
      v6 = *(v1 + 7);
      if (v6)
      {
        break;
      }

LABEL_31:
      if (v4)
      {
        v31 = 0;
        v17 = *(v5 + 12);
        if (!v17)
        {
          goto LABEL_64;
        }

        v1 = v5;
        v4 = (*(*v17 + 48))(v17, v2 + 4, &v31);
        v3 = v30;
        v16 = v2[1];
        if (v16)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v4 = 0;
        v1 = v5;
        v3 = v30;
        v16 = v2[1];
        if (v16)
        {
          goto LABEL_36;
        }
      }

      do
      {
LABEL_38:
        v18 = v2[2];
        v19 = *v18 == v2;
        v2 = v18;
      }

      while (!v19);
LABEL_3:
      v2 = v18;
      if (v18 == v3)
      {
        goto LABEL_41;
      }
    }

    v7 = *(v2 + 55);
    if (v7 >= 0)
    {
      v8 = v2 + 4;
    }

    else
    {
      v8 = v2[4];
    }

    if (v7 >= 0)
    {
      v9 = *(v2 + 55);
    }

    else
    {
      v9 = v2[5];
    }

    while (1)
    {
      v10 = *(v6 + 55);
      if (v10 >= 0)
      {
        v11 = (v6 + 4);
      }

      else
      {
        v11 = v6[4];
      }

      if (v10 >= 0)
      {
        v12 = *(v6 + 55);
      }

      else
      {
        v12 = v6[5];
      }

      if (v12 >= v9)
      {
        v13 = v9;
      }

      else
      {
        v13 = v12;
      }

      v14 = memcmp(v8, v11, v13);
      if (v14)
      {
        if (v14 < 0)
        {
          goto LABEL_13;
        }
      }

      else if (v9 < v12)
      {
        goto LABEL_13;
      }

      v15 = memcmp(v11, v8, v13);
      if (v15)
      {
        if ((v15 & 0x80000000) == 0)
        {
LABEL_29:
          v1 = v5;
          v3 = v30;
          v16 = v2[1];
          if (!v16)
          {
            goto LABEL_38;
          }

          do
          {
LABEL_36:
            v18 = v16;
            v16 = *v16;
          }

          while (v16);
          goto LABEL_3;
        }
      }

      else if (v12 >= v9)
      {
        goto LABEL_29;
      }

      ++v6;
LABEL_13:
      v6 = *v6;
      if (!v6)
      {
        goto LABEL_31;
      }
    }
  }

LABEL_41:
  v20 = *(v1 + 6);
  if (v20 != (v1 + 56))
  {
    while (1)
    {
      v21 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(v29, v20 + 4);
      if (v3 == v21)
      {
        break;
      }

      if (v21[7] != v20[7])
      {
        v22 = v4 ^ 1;
        v4 &= v21[7] == v20[7];
        if ((v22 & 1) == 0)
        {
          v31 = v20[7];
          v23 = *(v1 + 12);
          if (!v23)
          {
            goto LABEL_64;
          }

          goto LABEL_51;
        }

LABEL_54:
        v24 = v20[1];
        if (v24)
        {
          goto LABEL_55;
        }

        goto LABEL_58;
      }

      v4 &= v21[7] == v20[7];
      v24 = v20[1];
      if (v24)
      {
        do
        {
LABEL_55:
          v25 = v24;
          v24 = *v24;
        }

        while (v24);
        goto LABEL_43;
      }

      do
      {
LABEL_58:
        v25 = v20[2];
        v19 = *v25 == v20;
        v20 = v25;
      }

      while (!v19);
LABEL_43:
      v20 = v25;
      if (v25 == (v1 + 56))
      {
        std::__tree<std::__value_type<std::string,webrtc::JsepTransport *>,std::__map_value_compare<std::string,std::__value_type<std::string,webrtc::JsepTransport *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,webrtc::JsepTransport *>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,webrtc::JsepTransport *>,std::__tree_node<std::__value_type<std::string,webrtc::JsepTransport *>,void *> *,long>>(v29, *(v1 + 6), v1 + 7);
        v26 = *(v1 + 16);
        if (v26)
        {
          goto LABEL_62;
        }

LABEL_64:
        v28 = std::__throw_bad_function_call[abi:sn200100]();
        return webrtc::JsepTransportCollection::DestroyUnusedTransports(v28);
      }
    }

    if (v4)
    {
      v31 = v20[7];
      v23 = *(v1 + 12);
      if (!v23)
      {
        goto LABEL_64;
      }

LABEL_51:
      v4 = (*(*v23 + 48))(v23, v20 + 4, &v31);
      v24 = v20[1];
      if (v24)
      {
        goto LABEL_55;
      }

      goto LABEL_58;
    }

    v4 = 0;
    goto LABEL_54;
  }

  std::__tree<std::__value_type<std::string,webrtc::JsepTransport *>,std::__map_value_compare<std::string,std::__value_type<std::string,webrtc::JsepTransport *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,webrtc::JsepTransport *>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,webrtc::JsepTransport *>,std::__tree_node<std::__value_type<std::string,webrtc::JsepTransport *>,void *> *,long>>(v29, v1 + 7, v1 + 7);
  v26 = *(v1 + 16);
  if (!v26)
  {
    goto LABEL_64;
  }

LABEL_62:
  (*(*v26 + 48))(v26);
  webrtc::JsepTransportCollection::DestroyUnusedTransports(v1);
  return (v4 & 1);
}

void *webrtc::JsepTransportCollection::DestroyUnusedTransports(void *this)
{
  v2 = this + 1;
  v1 = *this;
  if (*this != this + 1)
  {
    v3 = this;
    v4 = 0;
    v5 = this + 4;
    v6 = this + 7;
    while (1)
    {
      if (v3[3] != v5)
      {
        do
        {
          v7 = v1[7];
          v8 = v3[3];
          while (v8[7] != v7)
          {
            v9 = v8[1];
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
              do
              {
                v10 = v8[2];
                v11 = *v10 == v8;
                v8 = v10;
              }

              while (!v11);
            }

            v8 = v10;
            if (v10 == v5)
            {
              v12 = v3[6];
              if (v12 == v6)
              {
                goto LABEL_3;
              }

              while (v12[7] != v7)
              {
                v13 = v12[1];
                if (v13)
                {
                  do
                  {
                    v14 = v13;
                    v13 = *v13;
                  }

                  while (v13);
                }

                else
                {
                  do
                  {
                    v14 = v12[2];
                    v11 = *v14 == v12;
                    v12 = v14;
                  }

                  while (!v11);
                }

                v12 = v14;
                if (v14 == v6)
                {
                  goto LABEL_3;
                }
              }

              break;
            }
          }

          v15 = v1[1];
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
            do
            {
              v16 = v1[2];
              v11 = *v16 == v1;
              v1 = v16;
            }

            while (!v11);
          }

          v1 = v16;
        }

        while (v16 != v2);
        goto LABEL_47;
      }

      if (v3[6] != v6)
      {
        break;
      }

LABEL_3:
      this = std::__tree<std::__value_type<std::string,std::unique_ptr<webrtc::JsepTransport>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<webrtc::JsepTransport>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<webrtc::JsepTransport>>>>::erase(v3, v1);
      v1 = this;
      v4 = 1;
      if (v2 == this)
      {
        goto LABEL_48;
      }
    }

    do
    {
      v17 = v3[6];
      while (v17[7] != v1[7])
      {
        v18 = v17[1];
        if (v18)
        {
          do
          {
            v19 = v18;
            v18 = *v18;
          }

          while (v18);
        }

        else
        {
          do
          {
            v19 = v17[2];
            v11 = *v19 == v17;
            v17 = v19;
          }

          while (!v11);
        }

        v17 = v19;
        if (v19 == v6)
        {
          goto LABEL_3;
        }
      }

      v20 = v1[1];
      if (v20)
      {
        do
        {
          v21 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          v21 = v1[2];
          v11 = *v21 == v1;
          v1 = v21;
        }

        while (!v11);
      }

      v1 = v21;
    }

    while (v21 != v2);
LABEL_47:
    if ((v4 & 1) == 0)
    {
      return this;
    }

LABEL_48:
    v22 = v3[16];
    if (v22)
    {
      v23 = *(*v22 + 48);

      return v23();
    }

    else
    {
      v24 = std::__throw_bad_function_call[abi:sn200100]();
      return std::__tree<std::__value_type<std::string,std::unique_ptr<webrtc::JsepTransport>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<webrtc::JsepTransport>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<webrtc::JsepTransport>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v24);
    }
  }

  return this;
}

void *std::__tree<std::__value_type<std::string,std::unique_ptr<webrtc::JsepTransport>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<webrtc::JsepTransport>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<webrtc::JsepTransport>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
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

void std::__tree<std::__value_type<std::string,std::unique_ptr<webrtc::JsepTransport>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<webrtc::JsepTransport>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<webrtc::JsepTransport>>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::unique_ptr<webrtc::JsepTransport>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<webrtc::JsepTransport>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<webrtc::JsepTransport>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::unique_ptr<webrtc::JsepTransport>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<webrtc::JsepTransport>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<webrtc::JsepTransport>>>>::destroy(a1, *(a2 + 1));
    v4 = *(a2 + 7);
    *(a2 + 7) = 0;
    if (v4)
    {
      webrtc::JsepTransport::~JsepTransport(v4);
      MEMORY[0x2743DA540]();
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

void *std::__tree<std::__value_type<std::string,webrtc::JsepTransport *>,std::__map_value_compare<std::string,std::__value_type<std::string,webrtc::JsepTransport *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,webrtc::JsepTransport *>>>::__emplace_unique_key_args<std::string,std::pair<std::string,webrtc::JsepTransport *>>(uint64_t a1, const void **a2)
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

void std::__tree<std::__value_type<std::string,webrtc::JsepTransport *>,std::__map_value_compare<std::string,std::__value_type<std::string,webrtc::JsepTransport *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,webrtc::JsepTransport *>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,webrtc::JsepTransport *>,std::__tree_node<std::__value_type<std::string,webrtc::JsepTransport *>,void *> *,long>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  if (!*(a1 + 16))
  {
    goto LABEL_17;
  }

  v6 = *a1;
  v8 = (a1 + 8);
  v7 = *(a1 + 8);
  *a1 = a1 + 8;
  *(v7 + 16) = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  v9 = v6[1] ? v6[1] : v6;
  if (!v9)
  {
    goto LABEL_17;
  }

  v10 = v9[2];
  if (v10)
  {
    v11 = *v10;
    if (*v10 == v9)
    {
      *v10 = 0;
      while (1)
      {
        v37 = *(v10 + 1);
        if (!v37)
        {
          break;
        }

        do
        {
          v10 = v37;
          v37 = *v37;
        }

        while (v37);
      }
    }

    else
    {
      for (*(v10 + 1) = 0; v11; v11 = *(v10 + 1))
      {
        do
        {
          v10 = v11;
          v11 = *v11;
        }

        while (v11);
      }
    }
  }

  if (a2 != a3)
  {
    v14 = a2;
    while (1)
    {
      v12 = v10;
      v15 = v9 + 4;
      if (v9 == v14)
      {
        goto LABEL_33;
      }

      v16 = *(v14 + 55);
      if (*(v9 + 55) < 0)
      {
        break;
      }

      if ((*(v14 + 55) & 0x80) != 0)
      {
        std::string::__assign_no_alias<true>(v9 + 32, v14[4], v14[5]);
        v9[7] = v14[7];
        v18 = *v8;
        v19 = (a1 + 8);
        v20 = (a1 + 8);
        if (*v8)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v17 = *(v14 + 2);
        v9[6] = v14[6];
        *v15 = v17;
        v9[7] = v14[7];
        v18 = *v8;
        v19 = (a1 + 8);
        v20 = (a1 + 8);
        if (*v8)
        {
          goto LABEL_34;
        }
      }

LABEL_53:
      *v9 = 0;
      v9[1] = 0;
      v9[2] = v19;
      *v20 = v9;
      v32 = **a1;
      if (v32)
      {
        *a1 = v32;
      }

      std::__tree_balance_after_insert[abi:sn200100]<std::__tree_node_base<void *> *>(*(a1 + 8), v9);
      ++*(a1 + 16);
      if (v12)
      {
        v10 = *(v12 + 2);
        if (v10)
        {
          v35 = *v10;
          if (*v10 == v12)
          {
            *v10 = 0;
            while (1)
            {
              v36 = *(v10 + 1);
              if (!v36)
              {
                break;
              }

              do
              {
                v10 = v36;
                v36 = *v36;
              }

              while (v36);
            }
          }

          else
          {
            for (*(v10 + 1) = 0; v35; v35 = *(v10 + 1))
            {
              do
              {
                v10 = v35;
                v35 = *v35;
              }

              while (v35);
            }
          }
        }
      }

      else
      {
        v10 = 0;
      }

      v33 = v14[1];
      if (v33)
      {
        do
        {
          v4 = v33;
          v33 = *v33;
        }

        while (v33);
      }

      else
      {
        do
        {
          v4 = v14[2];
          v34 = *v4 == v14;
          v14 = v4;
        }

        while (!v34);
      }

      if (v12)
      {
        v14 = v4;
        v9 = v12;
        if (v4 != a3)
        {
          continue;
        }
      }

      goto LABEL_13;
    }

    if (v16 >= 0)
    {
      v21 = (v14 + 4);
    }

    else
    {
      v21 = v14[4];
    }

    if (v16 >= 0)
    {
      v22 = *(v14 + 55);
    }

    else
    {
      v22 = v14[5];
    }

    std::string::__assign_no_alias<false>((v9 + 4), v21, v22);
LABEL_33:
    v9[7] = v14[7];
    v18 = *v8;
    v19 = (a1 + 8);
    v20 = (a1 + 8);
    if (!*v8)
    {
      goto LABEL_53;
    }

LABEL_34:
    if (*(v9 + 55) >= 0)
    {
      v23 = *(v9 + 55);
    }

    else
    {
      v15 = v9[4];
      v23 = v9[5];
    }

    while (1)
    {
      v19 = v18;
      v26 = v18[4];
      v24 = v18 + 4;
      v25 = v26;
      v27 = *(v24 + 23);
      if (v27 >= 0)
      {
        v28 = v24;
      }

      else
      {
        v28 = v25;
      }

      if (v27 >= 0)
      {
        v29 = *(v24 + 23);
      }

      else
      {
        v29 = v24[1];
      }

      if (v29 >= v23)
      {
        v30 = v23;
      }

      else
      {
        v30 = v29;
      }

      v31 = memcmp(v15, v28, v30);
      if (v31)
      {
        if (v31 < 0)
        {
          goto LABEL_37;
        }

LABEL_51:
        v18 = v19[1];
        if (!v18)
        {
          v20 = v19 + 1;
          goto LABEL_53;
        }
      }

      else
      {
        if (v23 >= v29)
        {
          goto LABEL_51;
        }

LABEL_37:
        v18 = *v19;
        v20 = v19;
        if (!*v19)
        {
          goto LABEL_53;
        }
      }
    }
  }

  v12 = v9;
LABEL_13:
  std::__tree<webrtc::SocketAddress>::destroy(a1, v12);
  if (v10)
  {
    for (i = *(v10 + 2); i; i = *(i + 2))
    {
      v10 = i;
    }

    std::__tree<webrtc::SocketAddress>::destroy(a1, v10);
  }

LABEL_17:
  if (v4 != a3)
  {
    operator new();
  }
}

void *std::__tree<std::__value_type<std::string,std::unique_ptr<webrtc::JsepTransport>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<webrtc::JsepTransport>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<webrtc::JsepTransport>>>>::erase(void *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    do
    {
      v4 = v3;
      v3 = *v3;
    }

    while (v3);
  }

  else
  {
    v5 = a2;
    do
    {
      v4 = v5[2];
      v6 = *v4 == v5;
      v5 = v4;
    }

    while (!v6);
  }

  if (*a1 == a2)
  {
    *a1 = v4;
  }

  v7 = a1[1];
  --a1[2];
  std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v7, a2);
  v8 = *(a2 + 56);
  *(a2 + 56) = 0;
  if (v8)
  {
    webrtc::JsepTransport::~JsepTransport(v8);
    MEMORY[0x2743DA540]();
  }

  if (*(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  operator delete(a2);
  return v4;
}

uint64_t webrtc::JsepTransportController::JsepTransportController(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20[4] = *MEMORY[0x277D85DE8];
  *(a1 + 16) = sigslot::has_slots<sigslot::single_threaded>::do_signal_connect;
  *(a1 + 24) = sigslot::has_slots<sigslot::single_threaded>::do_signal_disconnect;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = sigslot::has_slots<sigslot::single_threaded>::do_disconnect_all;
  *(a1 + 40) = a1 + 48;
  *a1 = &unk_288294F78;
  *(a1 + 8) = &unk_288294FA8;
  v10 = a1 + 552;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = 0;
  *(a1 + 120) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 184) = 0;
  *(a1 + 176) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 192) = 0;
  *(a1 + 216) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 224) = 0;
  *(a1 + 248) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 256) = 0;
  *(a1 + 280) = 0;
  *(a1 + 312) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  v11 = *a2;
  *(a1 + 320) = *a2;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1u, memory_order_relaxed);
  }

  v12 = *(a2 + 3);
  *(a1 + 328) = *(a2 + 1);
  *(a1 + 344) = v12;
  *(a1 + 360) = a3;
  *(a1 + 368) = a4;
  v20[0] = &unk_288295010;
  v20[1] = a1;
  v20[3] = v20;
  v19[0] = &unk_288295058;
  v19[1] = a1;
  v19[3] = v19;
  *(a1 + 392) = 0u;
  *(a1 + 376) = a5;
  *(a1 + 384) = a1 + 392;
  *(a1 + 416) = 0u;
  *(a1 + 408) = a1 + 416;
  *(a1 + 440) = 0u;
  *(a1 + 432) = a1 + 440;
  *(a1 + 480) = a1 + 456;
  *(a1 + 456) = &unk_288295010;
  *(a1 + 464) = a1;
  *(a1 + 512) = a1 + 488;
  *(a1 + 488) = &unk_288295058;
  *(a1 + 496) = a1;
  *(a1 + 520) = 0u;
  *(a1 + 536) = *a7;
  v13 = *(a7 + 8);
  *(a1 + 548) = *(a7 + 12);
  *(a1 + 544) = v13;
  *(a1 + 560) = 0;
  *(a1 + 568) = 0;
  *v10 = 0;
  *v10 = *(a7 + 16);
  *(a1 + 568) = *(a7 + 32);
  *(a7 + 16) = 0;
  *(a7 + 24) = 0;
  *(a7 + 32) = 0;
  v14 = *(a7 + 40);
  v15 = *(a7 + 56);
  *(a1 + 608) = *(a7 + 72);
  *(a1 + 576) = v14;
  *(a1 + 592) = v15;
  (*(a7 + 96))(0, a7 + 80, a1 + 616);
  *(v10 + 80) = *(a7 + 96);
  *(a7 + 96) = absl::internal_any_invocable::EmptyManager;
  *(a7 + 104) = 0;
  (*(a7 + 128))(0, a7 + 112, a1 + 648);
  *(v10 + 112) = *(a7 + 128);
  *(a7 + 128) = absl::internal_any_invocable::EmptyManager;
  *(a7 + 136) = 0;
  v16 = *(a7 + 144);
  *(a1 + 696) = *(a7 + 160);
  *(a1 + 680) = v16;
  v17 = *(a7 + 192);
  if (v17)
  {
    if (v17 == a7 + 168)
    {
      *(a1 + 728) = a1 + 704;
      (*(**(a7 + 192) + 24))(*(a7 + 192));
    }

    else
    {
      *(a1 + 728) = v17;
      *(a7 + 192) = 0;
    }
  }

  else
  {
    *(a1 + 728) = 0;
  }

  *(a1 + 736) = *(a7 + 144);
  *(a1 + 737) = 0;
  *(a1 + 740) = 0;
  *(a1 + 744) = 0;
  *(a1 + 748) = 0;
  *(a1 + 752) = 0;
  *(a1 + 756) = 0;
  *(a1 + 760) = 0;
  *(a1 + 764) = 0;
  *(a1 + 768) = 0;
  *(a1 + 772) = 0;
  *(a1 + 776) = 0;
  *(a1 + 780) = 0;
  *(a1 + 784) = 0;
  *(a1 + 788) = 0;
  *(a1 + 792) = 2;
  *(a1 + 796) = 0;
  *(a1 + 800) = 0;
  *(a1 + 804) = 0;
  *(a1 + 808) = 0;
  *(a1 + 812) = 0;
  *(a1 + 816) = 0;
  *(a1 + 820) = 0;
  *(a1 + 824) = 0;
  *(a1 + 828) = 0;
  *(a1 + 832) = 0;
  *(a1 + 836) = 0;
  *(a1 + 840) = 0;
  *(a1 + 844) = 0;
  *(a1 + 848) = 0;
  *(a1 + 852) = 0;
  *(a1 + 856) = 0;
  *(a1 + 860) = 0;
  *(a1 + 864) = 0;
  *(a1 + 868) = 0;
  *(a1 + 872) = 0;
  *(a1 + 880) = *(a7 + 40);
  *(a1 + 944) = 0u;
  *(a1 + 904) = 0u;
  *(a1 + 920) = 0u;
  *(a1 + 888) = 0u;
  *(a1 + 936) = a1 + 944;
  *(a1 + 960) = a6;
  return a1;
}

void webrtc::JsepTransportController::~JsepTransportController(webrtc::JsepTransportController *this)
{
  *this = &unk_288294F78;
  v2 = this + 8;
  *(this + 1) = &unk_288294FA8;
  v3 = *(this + 48);
  v4 = this + 392;
  if (v3 != this + 392)
  {
    while (1)
    {
      v72 = 0;
      v8 = *(this + 60);
      if (!v8)
      {
        break;
      }

      (*(*v8 + 48))(v8, v3 + 4, &v72);
      v9 = *(v3 + 1);
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
        do
        {
          v10 = *(v3 + 2);
          v11 = *v10 == v3;
          v3 = v10;
        }

        while (!v11);
      }

      v3 = v10;
      if (v10 == v4)
      {
        goto LABEL_2;
      }
    }

    std::__throw_bad_function_call[abi:sn200100]();
    goto LABEL_142;
  }

LABEL_2:
  std::__tree<std::__value_type<std::string,std::unique_ptr<webrtc::JsepTransport>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<webrtc::JsepTransport>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<webrtc::JsepTransport>>>>::destroy(this + 384, *(this + 49));
  *(this + 49) = 0;
  *(this + 50) = 0;
  *(this + 48) = v4;
  std::__tree<webrtc::SocketAddress>::destroy(this + 936, *(this + 118));
  v5 = *(this + 114);
  if (v5)
  {
    v6 = *(this + 115);
    v7 = *(this + 114);
    if (v6 != v5)
    {
      do
      {
        v13 = *--v6;
        v12 = v13;
        *v6 = 0;
        if (v13)
        {
          v14 = *(v12 + 24);
          if (v14)
          {
            v15 = *(v12 + 32);
            v16 = *(v12 + 24);
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
              v16 = *(v12 + 24);
            }

            *(v12 + 32) = v14;
            operator delete(v16);
          }

          if (*(v12 + 23) < 0)
          {
            operator delete(*v12);
          }

          MEMORY[0x2743DA540](v12, 0x1032C402D514303);
        }
      }

      while (v6 != v5);
      v7 = *(this + 114);
    }

    *(this + 115) = v5;
    operator delete(v7);
  }

  v18 = *(this + 111);
  if (v18)
  {
    v19 = *(this + 112);
    v20 = *(this + 111);
    if (v19 != v18)
    {
      do
      {
        v22 = *--v19;
        v21 = v22;
        *v19 = 0;
        if (v22)
        {
          v23 = *(v21 + 24);
          if (v23)
          {
            v24 = *(v21 + 32);
            v25 = *(v21 + 24);
            if (v24 != v23)
            {
              do
              {
                v26 = *(v24 - 1);
                v24 -= 3;
                if (v26 < 0)
                {
                  operator delete(*v24);
                }
              }

              while (v24 != v23);
              v25 = *(v21 + 24);
            }

            *(v21 + 32) = v23;
            operator delete(v25);
          }

          if (*(v21 + 23) < 0)
          {
            operator delete(*v21);
          }

          MEMORY[0x2743DA540](v21, 0x1032C402D514303);
        }
      }

      while (v19 != v18);
      v20 = *(this + 111);
    }

    *(this + 112) = v18;
    operator delete(v20);
  }

  v27 = *(this + 109);
  if (v27 && atomic_fetch_add(v27, 0xFFFFFFFF) == 1)
  {
    v28 = *(v27 + 8);
    *(v27 + 8) = 0;
    if (v28)
    {
      (*(*v28 + 8))(v28);
    }

    MEMORY[0x2743DA540](v27, 0x1020C40D5A9D86FLL);
  }

  v29 = *(this + 91);
  if (v29 == (this + 704))
  {
    (*(*v29 + 32))(v29);
  }

  else if (v29)
  {
    (*(*v29 + 40))(v29);
  }

  (*(this + 83))(1, this + 648, this + 648);
  (*(this + 79))(1, this + 616, this + 616);
  v30 = *(this + 69);
  if (v30)
  {
    *(this + 70) = v30;
    operator delete(v30);
  }

  v31 = *(this + 64);
  if (v31 != (this + 488))
  {
    if (v31)
    {
      (*(*v31 + 40))(v31);
    }

    v32 = *(this + 60);
    if (v32 != (this + 456))
    {
      goto LABEL_61;
    }

LABEL_64:
    (*(*v32 + 32))(v32);
    goto LABEL_65;
  }

  (*(*v31 + 32))(v31);
  v32 = *(this + 60);
  if (v32 == (this + 456))
  {
    goto LABEL_64;
  }

LABEL_61:
  if (v32)
  {
    (*(*v32 + 40))(v32);
  }

LABEL_65:
  std::__tree<webrtc::SocketAddress>::destroy(this + 432, *(this + 55));
  std::__tree<webrtc::SocketAddress>::destroy(this + 408, *(this + 52));
  std::__tree<std::__value_type<std::string,std::unique_ptr<webrtc::JsepTransport>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<webrtc::JsepTransport>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<webrtc::JsepTransport>>>>::destroy(this + 384, *(this + 49));
  v37 = *(this + 40);
  if (v37 && atomic_fetch_add(v37 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v37 + 8))(v37);
  }

  if (*(this + 312) == 1)
  {
    goto LABEL_142;
  }

  v38 = *(this + 36);
  if (v38)
  {
    v39 = *(this + 37);
    v40 = *(this + 36);
    if (v39 != v38)
    {
      do
      {
        v41 = *(v39 - 8);
        if (v41)
        {
          v41(v39 - 48);
        }

        v39 -= 56;
      }

      while (v39 != v38);
      v40 = *(this + 36);
    }

    *(this + 37) = v38;
    operator delete(v40);
  }

  if (*(this + 280) == 1)
  {
    goto LABEL_142;
  }

  v42 = *(this + 32);
  if (v42)
  {
    v43 = *(this + 33);
    v44 = *(this + 32);
    if (v43 != v42)
    {
      do
      {
        v45 = *(v43 - 8);
        if (v45)
        {
          v45(v43 - 48);
        }

        v43 -= 56;
      }

      while (v43 != v42);
      v44 = *(this + 32);
    }

    *(this + 33) = v42;
    operator delete(v44);
  }

  if (*(this + 248) == 1)
  {
    goto LABEL_142;
  }

  v46 = *(this + 28);
  if (v46)
  {
    v47 = *(this + 29);
    v48 = *(this + 28);
    if (v47 != v46)
    {
      do
      {
        v49 = *(v47 - 8);
        if (v49)
        {
          v49(v47 - 48);
        }

        v47 -= 56;
      }

      while (v47 != v46);
      v48 = *(this + 28);
    }

    *(this + 29) = v46;
    operator delete(v48);
  }

  if (*(this + 216) == 1)
  {
    goto LABEL_142;
  }

  v50 = *(this + 24);
  if (v50)
  {
    v51 = *(this + 25);
    v52 = *(this + 24);
    if (v51 != v50)
    {
      do
      {
        v53 = *(v51 - 8);
        if (v53)
        {
          v53(v51 - 48);
        }

        v51 -= 56;
      }

      while (v51 != v50);
      v52 = *(this + 24);
    }

    *(this + 25) = v50;
    operator delete(v52);
  }

  if (*(this + 184) == 1)
  {
    goto LABEL_142;
  }

  v54 = *(this + 20);
  if (v54)
  {
    v55 = *(this + 21);
    v56 = *(this + 20);
    if (v55 != v54)
    {
      do
      {
        v57 = *(v55 - 8);
        if (v57)
        {
          v57(v55 - 48);
        }

        v55 -= 56;
      }

      while (v55 != v54);
      v56 = *(this + 20);
    }

    *(this + 21) = v54;
    operator delete(v56);
  }

  if (*(this + 152) == 1)
  {
    goto LABEL_142;
  }

  v58 = *(this + 16);
  if (v58)
  {
    v59 = *(this + 17);
    v60 = *(this + 16);
    if (v59 != v58)
    {
      do
      {
        v61 = *(v59 - 8);
        if (v61)
        {
          v61(v59 - 48);
        }

        v59 -= 56;
      }

      while (v59 != v58);
      v60 = *(this + 16);
    }

    *(this + 17) = v58;
    operator delete(v60);
  }

  if (*(this + 120) == 1)
  {
    goto LABEL_142;
  }

  v62 = *(this + 12);
  if (v62)
  {
    v63 = *(this + 13);
    v64 = *(this + 12);
    if (v63 != v62)
    {
      do
      {
        v65 = *(v63 - 8);
        if (v65)
        {
          v65(v63 - 48);
        }

        v63 -= 56;
      }

      while (v63 != v62);
      v64 = *(this + 12);
    }

    *(this + 13) = v62;
    operator delete(v64);
  }

  if (*(this + 88) == 1)
  {
LABEL_142:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/callback_list.cc", 21, "!send_in_progress_", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v33, v34, v35, v36, v71);
    webrtc::JsepTransportController::~JsepTransportController(v70);
    return;
  }

  v66 = *(this + 8);
  if (v66)
  {
    v67 = *(this + 9);
    v68 = *(this + 8);
    if (v67 != v66)
    {
      do
      {
        v69 = *(v67 - 8);
        if (v69)
        {
          v69(v67 - 48);
        }

        v67 -= 56;
      }

      while (v67 != v66);
      v68 = *(this + 8);
    }

    *(this + 9) = v66;
    operator delete(v68);
  }

  *(this + 1) = &unk_28828CEE0;
  (*(this + 4))(v2);
  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 40, *(this + 6));
}

{
  webrtc::JsepTransportController::~JsepTransportController(this);

  JUMPOUT(0x2743DA540);
}

void non-virtual thunk towebrtc::JsepTransportController::~JsepTransportController(webrtc::JsepTransportController *this)
{
  webrtc::JsepTransportController::~JsepTransportController((this - 8));
}

{
  webrtc::JsepTransportController::~JsepTransportController((this - 8));

  JUMPOUT(0x2743DA540);
}

void webrtc::JsepTransportController::SetLocalDescription(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(a1 + 360);
  {
    operator new();
  }

  if (pthread_getspecific(*(webrtc::ThreadManager::Instance(void)::thread_manager + 88)) != v10)
  {
    v11 = *(a1 + 360);
    v20 = a1;
    LODWORD(v21) = a2;
    v22 = a3;
    v23 = a4;
    *a5 = 0;
    *(a5 + 38) = 0;
    *(a5 + 16) = 0;
    *(a5 + 24) = 0;
    *(a5 + 8) = 0;
    *(a5 + 29) = 0;
    v24[0] = a5;
    v24[1] = &v20;
    (*(*v11 + 96))(v11, v24, webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::RTCError webrtc::Thread::BlockingCall<webrtc::JsepTransportController::SetLocalDescription(webrtc::SdpType,webrtc::SessionDescription const*,webrtc::SessionDescription const*)::$_0,webrtc::RTCError,void>(webrtc::JsepTransportController::SetLocalDescription(webrtc::SdpType,webrtc::SessionDescription const*,webrtc::SessionDescription const*)::$_0 &&,webrtc::Location const&)::{lambda(void)#1}>, &v19);
    return;
  }

  if ((*(a1 + 738) & 1) == 0)
  {
    *(a1 + 737) = a2 == 0;
    *(a1 + 738) = 1;
    if (a2)
    {
      *(a1 + 868) = 1;
      webrtc::JsepTransportController::GetDtlsTransports(a1, &v20);
      v12 = v20;
      v13 = v21;
      if (v20 == v21)
      {
        goto LABEL_12;
      }

      do
      {
        v14 = *v12++;
        v15 = (*(*v14 + 216))(v14);
        (*(*v15 + 112))(v15, *(a1 + 868));
      }

      while (v12 != v13);
    }

    else
    {
      *(a1 + 868) = 0;
      webrtc::JsepTransportController::GetDtlsTransports(a1, &v20);
      v12 = v20;
      v16 = v21;
      if (v20 == v21)
      {
        goto LABEL_12;
      }

      do
      {
        v17 = *v12++;
        v18 = (*(*v17 + 216))(v17);
        (*(*v18 + 112))(v18, *(a1 + 868));
      }

      while (v12 != v16);
    }

    v12 = v20;
LABEL_12:
    if (v12)
    {
      v21 = v12;
      operator delete(v12);
    }
  }

  webrtc::JsepTransportController::ApplyDescription_n(a5, a1, 1, a2, a3, a4);
}

void webrtc::JsepTransportController::ApplyDescription_n(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t *a5, uint64_t *a6)
{
  v306 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6 = a5;
  }

  else
  {
    v6 = a6;
  }

  *(&v302.__r_.__value_.__s + 23) = 6;
  if (&v302 <= "BUNDLE" && v302.__r_.__value_.__r.__words + 6 > "BUNDLE")
  {
    goto LABEL_649;
  }

  v8 = a2;
  strcpy(&v302, "BUNDLE");
  v9 = v6[6];
  v10 = v6[7];
  v283 = v6;
  v279 = a4;
  if (v9 == v10)
  {
    *&v301[8] = 0uLL;
    *v301 = &v301[8];
    if (a4 == 2)
    {
      goto LABEL_32;
    }

LABEL_29:
    if (!a4)
    {
      *(&__src + 1) = 0;
      __len[0] = 0;
      *&__src = &__src + 8;
      v296.__r_.__value_.__r.__words[0] = &v296.__r_.__value_.__l.__size_;
      *&v296.__r_.__value_.__r.__words[1] = 0uLL;
      std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(0);
      std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(*(&__src + 1));
      a4 = v279;
    }

    goto LABEL_193;
  }

  v281 = a5;
  v285 = a6;
  do
  {
    v11 = *(v9 + 23);
    if (v11 >= 0)
    {
      v12 = *(v9 + 23);
    }

    else
    {
      v12 = *(v9 + 8);
    }

    size = HIBYTE(v302.__r_.__value_.__r.__words[2]);
    if ((v302.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v302.__r_.__value_.__l.__size_;
    }

    if (v12 == size)
    {
      v14 = v11 >= 0 ? v9 : *v9;
      v15 = (v302.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v302 : v302.__r_.__value_.__r.__words[0];
      if (!memcmp(v14, v15, v12))
      {
        operator new();
      }
    }

    v9 += 48;
  }

  while (v9 != v10);
  if (SHIBYTE(v302.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v302.__r_.__value_.__l.__data_);
  }

  *&v301[8] = 0uLL;
  *v301 = &v301[8];
  v8 = a2;
  a4 = v279;
  a6 = v285;
  a5 = v281;
  if (v279 != 2)
  {
    goto LABEL_29;
  }

LABEL_32:
  if (a3)
  {
    v16 = a6;
  }

  else
  {
    v16 = a5;
  }

  if (!v16)
  {
    goto LABEL_193;
  }

  if (a3)
  {
    *(&v302.__r_.__value_.__s + 23) = 6;
    if (&v302 <= "BUNDLE" && v302.__r_.__value_.__r.__words + 6 > "BUNDLE")
    {
      goto LABEL_649;
    }

    strcpy(&v302, "BUNDLE");
    v17 = a6[6];
    v18 = a6[7];
    if (v17 == v18)
    {
      goto LABEL_85;
    }

    do
    {
      v19 = *(v17 + 23);
      if (v19 >= 0)
      {
        v20 = *(v17 + 23);
      }

      else
      {
        v20 = *(v17 + 8);
      }

      v21 = HIBYTE(v302.__r_.__value_.__r.__words[2]);
      if ((v302.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v21 = v302.__r_.__value_.__l.__size_;
      }

      if (v20 == v21)
      {
        v22 = v19 >= 0 ? v17 : *v17;
        v23 = (v302.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v302 : v302.__r_.__value_.__r.__words[0];
        if (!memcmp(v22, v23, v20))
        {
          operator new();
        }
      }

      v17 += 48;
    }

    while (v17 != v18);
  }

  else
  {
    *(&v302.__r_.__value_.__s + 23) = 6;
    if (&v302 <= "BUNDLE" && v302.__r_.__value_.__r.__words + 6 > "BUNDLE")
    {
      goto LABEL_649;
    }

    strcpy(&v302, "BUNDLE");
    v24 = a5[6];
    v25 = a5[7];
    if (v24 == v25)
    {
      goto LABEL_85;
    }

    do
    {
      v26 = *(v24 + 23);
      if (v26 >= 0)
      {
        v27 = *(v24 + 23);
      }

      else
      {
        v27 = *(v24 + 8);
      }

      v28 = HIBYTE(v302.__r_.__value_.__r.__words[2]);
      if ((v302.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v28 = v302.__r_.__value_.__l.__size_;
      }

      if (v27 == v28)
      {
        v29 = v26 >= 0 ? v24 : *v24;
        v30 = (v302.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v302 : v302.__r_.__value_.__r.__words[0];
        if (!memcmp(v29, v30, v27))
        {
          operator new();
        }
      }

      v24 += 48;
    }

    while (v24 != v25);
  }

  if (SHIBYTE(v302.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v302.__r_.__value_.__l.__data_);
  }

LABEL_85:
  *(&__src + 1) = 0;
  __len[0] = 0;
  *&__src = &__src + 8;
  *&v296.__r_.__value_.__r.__words[1] = 0uLL;
  v296.__r_.__value_.__r.__words[0] = &v296.__r_.__value_.__l.__size_;
  v8 = a2;
  v31 = *(a2 + 888);
  v32 = *(a2 + 896);
  if (v31 == v32)
  {
    v58 = 1;
    goto LABEL_192;
  }

  v33 = *&v301[8];
  if (*&v301[8])
  {
    while (1)
    {
      v34 = *(*v31 + 24);
      v35 = *(*v31 + 32);
      if (v34 != v35)
      {
        break;
      }

LABEL_135:
      v31 += 8;
      v58 = 1;
      if (v31 == v32)
      {
        goto LABEL_192;
      }
    }

    while (1)
    {
      v36 = *(v34 + 23);
      if (v36 >= 0)
      {
        v37 = v34;
      }

      else
      {
        v37 = *v34;
      }

      if (v36 >= 0)
      {
        v38 = *(v34 + 23);
      }

      else
      {
        v38 = v34[1];
      }

      v39 = &v301[8];
      v40 = v33;
      do
      {
        while (1)
        {
          v41 = *(v40 + 55);
          v42 = v41 >= 0 ? v40 + 4 : v40[4];
          v43 = v41 >= 0 ? *(v40 + 55) : v40[5];
          v44 = v38 >= v43 ? v43 : v38;
          v45 = memcmp(v42, v37, v44);
          if (v45)
          {
            break;
          }

          if (v43 >= v38)
          {
            goto LABEL_109;
          }

LABEL_95:
          v8 = a2;
          v40 = v40[1];
          if (!v40)
          {
            goto LABEL_110;
          }
        }

        if (v45 < 0)
        {
          goto LABEL_95;
        }

LABEL_109:
        v39 = v40;
        v8 = a2;
        v40 = *v40;
      }

      while (v40);
LABEL_110:
      if (v39 == &v301[8])
      {
        goto LABEL_124;
      }

      v48 = *(v39 + 4);
      v47 = (v39 + 32);
      v46 = v48;
      v49 = *(v47 + 23);
      if (v49 >= 0)
      {
        v50 = v47;
      }

      else
      {
        v50 = v46;
      }

      if (v49 >= 0)
      {
        v51 = *(v47 + 23);
      }

      else
      {
        v51 = v47[1];
      }

      if (v51 >= v38)
      {
        v52 = v38;
      }

      else
      {
        v52 = v51;
      }

      v53 = memcmp(v37, v50, v52);
      if (v53)
      {
        if (v53 < 0)
        {
LABEL_124:
          v54 = *v283;
          v55 = v283[1];
          while (1)
          {
            if (v54 == v55)
            {
              goto LABEL_159;
            }

            v56 = *(v54 + 31);
            if (v56 < 0)
            {
              v57 = *(v54 + 8);
              if (v38 != *(v54 + 16))
              {
                goto LABEL_126;
              }
            }

            else
            {
              v57 = (v54 + 8);
              if (v38 != v56)
              {
                goto LABEL_126;
              }
            }

            if (!memcmp(v37, v57, v38))
            {
              if ((*(v54 + 4) & 1) == 0)
              {
                goto LABEL_159;
              }

              break;
            }

LABEL_126:
            v54 += 40;
          }
        }
      }

      else if (v38 < v51)
      {
        goto LABEL_124;
      }

      v34 += 3;
      if (v34 == v35)
      {
        goto LABEL_135;
      }
    }
  }

LABEL_140:
  v59 = *(*v31 + 24);
  v60 = *(*v31 + 32);
  if (v59 == v60)
  {
    goto LABEL_139;
  }

  v61 = *v283;
  v62 = v283[1];
  if (*v283 != v62)
  {
LABEL_142:
    v63 = *(v59 + 23);
    if (v63 >= 0)
    {
      v64 = v59;
    }

    else
    {
      v64 = *v59;
    }

    if (v63 >= 0)
    {
      v65 = *(v59 + 23);
    }

    else
    {
      v65 = v59[1];
    }

    for (i = v61; i != v62; i += 40)
    {
      v67 = *(i + 31);
      if (v67 < 0)
      {
        v68 = *(i + 8);
        if (v65 != *(i + 16))
        {
          continue;
        }
      }

      else
      {
        v68 = (i + 8);
        if (v65 != v67)
        {
          continue;
        }
      }

      if (!memcmp(v64, v68, v65))
      {
        if (*(i + 4) != 1)
        {
          break;
        }

        v59 += 3;
        if (v59 == v60)
        {
LABEL_139:
          v31 += 8;
          v58 = 1;
          if (v31 == v32)
          {
            goto LABEL_192;
          }

          goto LABEL_140;
        }

        goto LABEL_142;
      }
    }
  }

LABEL_159:
  std::operator+<char>();
  v69 = v293.__r_.__value_.__r.__words[2];
  if ((v293.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v70 = 22;
  }

  else
  {
    v70 = (v293.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v293.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v71 = HIBYTE(v293.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v71 = v293.__r_.__value_.__l.__size_;
  }

  if (v70 - v71 >= 0x28)
  {
    if ((v293.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v72 = &v293;
    }

    else
    {
      v72 = v293.__r_.__value_.__r.__words[0];
    }

    if (v72 + v71 <= "' from already-established BUNDLE group." && &v72[1].__r_.__value_.__r.__words[2] + v71 > "' from already-established BUNDLE group.")
    {
      goto LABEL_649;
    }

    qmemcpy(v72 + v71, "' from already-established BUNDLE group.", 40);
    v74 = v71 + 40;
    if ((v69 & 0x8000000000000000) != 0)
    {
      v293.__r_.__value_.__l.__size_ = v71 + 40;
    }

    else
    {
      *(&v293.__r_.__value_.__s + 23) = v74 & 0x7F;
    }

    v72->__r_.__value_.__s.__data_[v74] = 0;
  }

  else
  {
    std::string::__grow_by_and_replace(&v293, v70, v71 - v70 + 40, v71, v71, 0, 0x28uLL, "' from already-established BUNDLE group.");
  }

  v295 = v293.__r_.__value_.__r.__words[2];
  *__p = *&v293.__r_.__value_.__l.__data_;
  memset(&v293, 0, sizeof(v293));
  v75 = SHIBYTE(v295);
  if ((SHIBYTE(v295) & 0x8000000000000000) != 0)
  {
    v76 = __p[0];
    v75 = __p[1];
    LODWORD(v302.__r_.__value_.__l.__data_) = 3;
    if (__p[1] > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_651;
    }
  }

  else
  {
    LODWORD(v302.__r_.__value_.__l.__data_) = 3;
    v76 = __p;
  }

  if (v75 > 0x16)
  {
    operator new();
  }

  BYTE7(v303) = v75;
  v77 = (&v302.__r_.__value_.__r.__words[1] + v75);
  if (&v302.__r_.__value_.__r.__words[1] <= v76 && v77 > v76)
  {
    goto LABEL_649;
  }

  if (v75)
  {
    memmove(&v302.__r_.__value_.__r.__words[1], v76, v75);
  }

  *v77 = 0;
  DWORD2(v303) = 0;
  BYTE12(v303) = 0;
  BYTE14(v303) = 0;
  if (SHIBYTE(v295) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v293.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v293.__r_.__value_.__l.__data_);
  }

  v58 = 0;
LABEL_192:
  std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(v296.__r_.__value_.__l.__size_);
  std::__tree<webrtc::SocketAddress>::destroy(&__src, *(&__src + 1));
  a4 = v279;
  if ((v58 & 1) == 0)
  {
    goto LABEL_259;
  }

LABEL_193:
  if (*(v8 + 576) == 1)
  {
    HIBYTE(__len[0]) = 6;
    if (&__src <= "BUNDLE" && &__src + 6 > "BUNDLE")
    {
      goto LABEL_649;
    }

    strcpy(&__src, "BUNDLE");
    for (j = v283[6]; j != v283[7]; j += 48)
    {
      v80 = *(j + 23);
      v81 = v80;
      if ((v80 & 0x80u) != 0)
      {
        v80 = *(j + 8);
      }

      if (v80 == 6)
      {
        v82 = v81 >= 0 ? j : *j;
        v83 = *v82;
        v84 = *(v82 + 2);
        v85 = v83 == __src && v84 == WORD2(__src);
        if (v85)
        {
          a4 = v279;
          goto LABEL_215;
        }
      }
    }

    a4 = v279;
    if (0xCCCCCCCCCCCCCCCDLL * ((v283[1] - *v283) >> 3) >= 2)
    {
      LODWORD(v302.__r_.__value_.__l.__data_) = 3;
      operator new();
    }
  }

LABEL_215:
  webrtc::BundleManager::Update(v8 + 880, v283, a4);
  v86 = *(v8 + 888);
  v87 = *(v8 + 896);
  if (v86 == v87)
  {
LABEL_258:
    LODWORD(v302.__r_.__value_.__l.__data_) = 0;
    BYTE14(v303) = 0;
    *&v303 = 0;
    *&v302.__r_.__value_.__r.__words[1] = 0uLL;
    *(&v303 + 5) = 0;
    goto LABEL_259;
  }

  while (1)
  {
    v88 = *(*v86 + 24);
    v89 = *(*v86 + 32);
    if (v88 && v88 != v89)
    {
      break;
    }

LABEL_221:
    v86 += 8;
    if (v86 == v87)
    {
      goto LABEL_258;
    }
  }

  v91 = *(v88 + 23);
  if (v91 >= 0)
  {
    v92 = *(*v86 + 24);
  }

  else
  {
    v92 = *v88;
  }

  if (v91 >= 0)
  {
    v93 = *(v88 + 23);
  }

  else
  {
    v93 = *(v88 + 8);
  }

  v94 = v283[1];
  v95 = *v283;
  if (*v283 == v94)
  {
LABEL_257:
    LODWORD(v302.__r_.__value_.__l.__data_) = 3;
    operator new();
  }

  v96 = *v283;
  while (1)
  {
    v97 = *(v96 + 31);
    if (v97 < 0)
    {
      v98 = *(v96 + 8);
      if (v93 != *(v96 + 16))
      {
        goto LABEL_232;
      }
    }

    else
    {
      v98 = (v96 + 8);
      if (v93 != v97)
      {
        goto LABEL_232;
      }
    }

    if (!memcmp(v92, v98, v93))
    {
      break;
    }

LABEL_232:
    v96 += 40;
    if (v96 == v94)
    {
      goto LABEL_257;
    }
  }

  if (*(v96 + 4) != 1)
  {
    goto LABEL_221;
  }

  v99 = v95 + 40;
  while (2)
  {
    v100 = *(v88 + 23);
    if (v100 >= 0)
    {
      v101 = v88;
    }

    else
    {
      v101 = *v88;
    }

    if (v100 >= 0)
    {
      v102 = *(v88 + 23);
    }

    else
    {
      v102 = *(v88 + 8);
    }

    v103 = v99;
    while (2)
    {
      v104 = *(v103 - 9);
      if ((v104 & 0x8000000000000000) == 0)
      {
        v105 = (v103 - 32);
        if (v102 == v104)
        {
          goto LABEL_247;
        }

        goto LABEL_248;
      }

      v105 = *(v103 - 32);
      if (v102 != *(v103 - 24))
      {
        goto LABEL_248;
      }

LABEL_247:
      if (memcmp(v101, v105, v102))
      {
LABEL_248:
        v103 += 40;
        continue;
      }

      break;
    }

    if (*(v103 - 36))
    {
      v88 += 24;
      if (v88 == v89)
      {
        goto LABEL_221;
      }

      continue;
    }

    break;
  }

  std::operator+<char>();
  if ((v296.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v256 = 22;
  }

  else
  {
    v256 = (v296.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v296.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v257 = HIBYTE(v296.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v257 = v296.__r_.__value_.__l.__size_;
  }

  if (v256 - v257 < 0x15)
  {
    std::string::__grow_by_and_replace(&v296, v256, v257 - v256 + 21, v257, v257, 0, 0x15uLL, "' should be rejected.");
    goto LABEL_641;
  }

  if ((v296.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v258 = &v296;
  }

  else
  {
    v258 = v296.__r_.__value_.__r.__words[0];
  }

  v259 = v258 + v257;
  if (v258 + v257 <= "' should be rejected." && v259 + 21 > "' should be rejected.")
  {
    goto LABEL_649;
  }

  qmemcpy(v259, "' should be rejected.", 21);
  v260 = v257 + 21;
  if (SHIBYTE(v296.__r_.__value_.__r.__words[2]) < 0)
  {
    v296.__r_.__value_.__l.__size_ = v257 + 21;
  }

  else
  {
    *(&v296.__r_.__value_.__s + 23) = v260 & 0x7F;
  }

  v258->__r_.__value_.__s.__data_[v260] = 0;
LABEL_641:
  __len[0] = v296.__r_.__value_.__r.__words[2];
  __src = *&v296.__r_.__value_.__l.__data_;
  memset(&v296, 0, sizeof(v296));
  v271 = SHIBYTE(__len[0]);
  if ((SHIBYTE(__len[0]) & 0x8000000000000000) == 0)
  {
    LODWORD(v302.__r_.__value_.__l.__data_) = 3;
    p_src = &__src;
    v273 = SHIBYTE(__len[0]);
    goto LABEL_644;
  }

  v273 = *(&__src + 1);
  p_src = __src;
  LODWORD(v302.__r_.__value_.__l.__data_) = 3;
  if (*(&__src + 1) > 0x7FFFFFFFFFFFFFF7uLL)
  {
    goto LABEL_651;
  }

LABEL_644:
  if (v273 > 0x16)
  {
    operator new();
  }

  BYTE7(v303) = v273;
  v274 = (&v302.__r_.__value_.__r.__words[1] + v273);
  if (&v302.__r_.__value_.__r.__words[1] <= p_src && v274 > p_src)
  {
    goto LABEL_649;
  }

  if (v273)
  {
    memmove(&v302.__r_.__value_.__r.__words[1], p_src, v273);
  }

  v274->__r_.__value_.__s.__data_[0] = 0;
  DWORD2(v303) = 0;
  BYTE12(v303) = 0;
  BYTE14(v303) = 0;
  if (v271 < 0)
  {
    operator delete(__src);
    if (SHIBYTE(v296.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_63;
    }
  }

  else if (SHIBYTE(v296.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_63:
    operator delete(v296.__r_.__value_.__l.__data_);
    std::__tree<webrtc::SocketAddress>::destroy(v301, *&v301[8]);
    goto LABEL_260;
  }

LABEL_259:
  std::__tree<webrtc::SocketAddress>::destroy(v301, *&v301[8]);
LABEL_260:
  v289 = *&v302.__r_.__value_.__r.__words[1];
  v290 = v303;
  *v291 = DWORD2(v303);
  *&v291[3] = *(&v303 + 11);
  v106 = v283;
  if (LODWORD(v302.__r_.__value_.__l.__data_))
  {
    *a1 = v302.__r_.__value_.__l.__data_;
    *(a1 + 8) = v289;
    *(a1 + 24) = v290;
    *(a1 + 32) = *v291;
    *(a1 + 35) = *&v291[3];
    return;
  }

  *&v296.__r_.__value_.__r.__words[1] = 0uLL;
  v296.__r_.__value_.__r.__words[0] = &v296.__r_.__value_.__l.__size_;
  if (*(v8 + 888) != *(v8 + 896))
  {
    v108 = *v283;
    v107 = v283[1];
    *&v302.__r_.__value_.__r.__words[1] = 0uLL;
    v302.__r_.__value_.__r.__words[0] = &v302.__r_.__value_.__l.__size_;
    v286 = v107;
    if (v108 == v107)
    {
      std::__tree<std::__value_type<webrtc::ContentGroup const*,std::vector<int>>,std::__map_value_compare<webrtc::ContentGroup const*,std::__value_type<webrtc::ContentGroup const*,std::vector<int>>,std::less<webrtc::ContentGroup const*>,true>,std::allocator<std::__value_type<webrtc::ContentGroup const*,std::vector<int>>>>::destroy(0);
      v117 = v302.__r_.__value_.__l.__size_;
      v296 = v302;
      if (v302.__r_.__value_.__r.__words[2])
      {
        goto LABEL_283;
      }
    }

    else
    {
      v282 = (v8 + 944);
      do
      {
        v109 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(v8 + 936, (v108 + 8));
        if (v282 != v109)
        {
          v110 = v109[7];
          if (v110)
          {
            v111 = v302.__r_.__value_.__l.__size_;
            if (!v302.__r_.__value_.__l.__size_)
            {
LABEL_274:
              operator new();
            }

            while (1)
            {
              while (1)
              {
                v112 = v111;
                v113 = *(v111 + 32);
                if (v110 >= v113)
                {
                  break;
                }

                v111 = *v112;
                if (!*v112)
                {
                  goto LABEL_274;
                }
              }

              if (v113 >= v110)
              {
                break;
              }

              v111 = v112[1];
              if (!v111)
              {
                goto LABEL_274;
              }
            }

            if (*(v8 + 547) == 1)
            {
              v114 = *(v108 + 32);
              v116 = *(v114 + 64);
              v115 = *(v114 + 72);
              if (v116 != v115)
              {
                do
                {
                  if (*(v116 + 28) == 1)
                  {
                    operator new();
                  }

                  v116 += 32;
                }

                while (v116 != v115);
                v8 = a2;
              }
            }
          }
        }

        v108 += 40;
      }

      while (v108 != v286);
      v106 = v283;
      std::__tree<std::__value_type<webrtc::ContentGroup const*,std::vector<int>>,std::__map_value_compare<webrtc::ContentGroup const*,std::__value_type<webrtc::ContentGroup const*,std::vector<int>>,std::less<webrtc::ContentGroup const*>,true>,std::allocator<std::__value_type<webrtc::ContentGroup const*,std::vector<int>>>>::destroy(v296.__r_.__value_.__l.__size_);
      v117 = v302.__r_.__value_.__l.__size_;
      v296 = v302;
      if (v302.__r_.__value_.__r.__words[2])
      {
LABEL_283:
        v117[2] = &v296.__r_.__value_.__l.__size_;
        v302.__r_.__value_.__r.__words[0] = &v302.__r_.__value_.__l.__size_;
        *&v302.__r_.__value_.__r.__words[1] = 0uLL;
        v117 = 0;
        goto LABEL_286;
      }
    }

    v296.__r_.__value_.__r.__words[0] = &v296.__r_.__value_.__l.__size_;
LABEL_286:
    std::__tree<std::__value_type<webrtc::ContentGroup const*,std::vector<int>>,std::__map_value_compare<webrtc::ContentGroup const*,std::__value_type<webrtc::ContentGroup const*,std::vector<int>>,std::less<webrtc::ContentGroup const*>,true>,std::allocator<std::__value_type<webrtc::ContentGroup const*,std::vector<int>>>>::destroy(v117);
  }

  v118 = *v106;
  v119 = v106[1];
  if (*v106 == v119)
  {
    goto LABEL_578;
  }

  v120 = (v8 + 944);
  v287 = (v8 + 392);
  do
  {
    if ((*(v118 + 4) & 1) == 0)
    {
      v121 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(v8 + 936, (v118 + 8));
      if (v120 == v121)
      {
        goto LABEL_310;
      }

      v122 = v121[7];
      if (!v122)
      {
        goto LABEL_310;
      }

      if (*(v122 + 24) == *(v122 + 32))
      {
        v123 = 0;
      }

      else
      {
        v123 = *(v122 + 24);
      }

      v124 = *(v118 + 31);
      if (v124 >= 0)
      {
        v125 = *(v118 + 31);
      }

      else
      {
        v125 = *(v118 + 16);
      }

      v126 = *(v123 + 23);
      v127 = v126;
      if ((v126 & 0x80u) != 0)
      {
        v126 = *(v123 + 8);
      }

      if (v125 == v126)
      {
        v128 = v124 >= 0 ? (v118 + 8) : *(v118 + 8);
        v129 = v127 >= 0 ? v123 : *v123;
        if (!memcmp(v128, v129, v125))
        {
LABEL_310:
          v130 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(v8 + 384, (v118 + 8));
          if (v287 == v130 || !v130[7])
          {
            v303 = 0uLL;
            v131 = *(v8 + 688);
            v132 = *(v8 + 328);
            v133 = *(v8 + 592);
            *&v302.__r_.__value_.__l.__data_ = *(v8 + 368);
            v302.__r_.__value_.__r.__words[2] = v131;
            v304.__r_.__value_.__r.__words[0] = v132;
            (*(*v133 + 16))(&v300);
            v134 = (*(*v300 + 32))(v300);
            (*(*v134 + 112))(v134, *(v8 + 868));
            v135 = (*(*v300 + 32))(v300);
            (*(*v135 + 184))(v135, v8 + 740);
            (*(*v300 + 32))(v300);
            webrtc::JsepTransportController::CreateDtlsTransport(&v299, v8);
          }

          *&v301[4] = 0uLL;
          *&v301[25] = 0;
          *&v301[20] = 0;
          if (SHIBYTE(v290) < 0)
          {
            operator delete(v289);
          }

          *&v289 = *&v301[4];
          HIBYTE(v290) = v301[27];
        }
      }
    }

    v118 += 40;
  }

  while (v118 != v119);
  v136 = v283;
  v137 = *v283;
  if (v283[1] == *v283)
  {
LABEL_578:
    if (v279 == 2)
    {
      std::__tree<std::__value_type<std::string,webrtc::JsepTransport *>,std::__map_value_compare<std::string,std::__value_type<std::string,webrtc::JsepTransport *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,webrtc::JsepTransport *>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,webrtc::JsepTransport *>,std::__tree_node<std::__value_type<std::string,webrtc::JsepTransport *>,void *> *,long>>(v8 + 432, *(v8 + 408), (v8 + 416));
      webrtc::JsepTransportCollection::DestroyUnusedTransports((v8 + 384));
      v252 = *(v8 + 384);
      if (v252 != (v8 + 392))
      {
        do
        {
          v253 = v252[7];
          std::__tree<std::__value_type<webrtc::PayloadType,webrtc::Codec>,std::__map_value_compare<webrtc::PayloadType,std::__value_type<webrtc::PayloadType,webrtc::Codec>,std::less<webrtc::PayloadType>,true>,std::allocator<std::__value_type<webrtc::PayloadType,webrtc::Codec>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<webrtc::PayloadType,webrtc::Codec>,std::__tree_node<std::__value_type<webrtc::PayloadType,webrtc::Codec>,void *> *,long>>(v253 + 352, *(v253 + 328), (v253 + 336));
          std::__tree<std::__value_type<webrtc::PayloadType,webrtc::Codec>,std::__map_value_compare<webrtc::PayloadType,std::__value_type<webrtc::PayloadType,webrtc::Codec>,std::less<webrtc::PayloadType>,true>,std::allocator<std::__value_type<webrtc::PayloadType,webrtc::Codec>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<webrtc::PayloadType,webrtc::Codec>,std::__tree_node<std::__value_type<webrtc::PayloadType,webrtc::Codec>,void *> *,long>>(v253 + 264, *(v253 + 240), (v253 + 248));
          v254 = v252[1];
          if (v254)
          {
            do
            {
              v255 = v254;
              v254 = *v254;
            }

            while (v254);
          }

          else
          {
            do
            {
              v255 = v252[2];
              v85 = *v255 == v252;
              v252 = v255;
            }

            while (!v85);
          }

          v252 = v255;
        }

        while (v255 != (v8 + 392));
      }

      webrtc::BundleManager::Commit((v8 + 880));
    }

    *a1 = 0;
    *(a1 + 38) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    *(a1 + 29) = 0;
    goto LABEL_582;
  }

  v138 = 0;
  v276 = (a1 + 8);
  v278 = (v8 + 416);
  while (2)
  {
    v139 = v136[3];
    if (0x6DB6DB6DB6DB6DB7 * ((v136[4] - v139) >> 4) <= v138)
    {
      goto LABEL_649;
    }

    v140 = (v137 + 40 * v138);
    v141 = *(v140 + 4);
    v142 = (v140 + 2);
    v143 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(v8 + 936, v140 + 1);
    if (v141 == 1)
    {
      if (v120 == v143 || (v144 = v143[7]) == 0)
      {
        webrtc::JsepTransportCollection::RemoveTransportForMid((v8 + 384), v140 + 1);
      }

      else
      {
        v145 = v8;
        v147 = *(v144 + 3);
        v146 = *(v144 + 4);
        if (v147 == v146)
        {
          goto LABEL_340;
        }

        v148 = *(v140 + 31);
        if (v148 >= 0)
        {
          v149 = *(v140 + 31);
        }

        else
        {
          v149 = *(v140 + 2);
        }

        v150 = *(v147 + 23);
        v151 = v150;
        if ((v150 & 0x80u) != 0)
        {
          v150 = *(v147 + 8);
        }

        if (v149 == v150 && (v148 >= 0 ? (v152 = v140 + 2) : (v152 = *v142), v151 >= 0 ? (v153 = *(v144 + 3)) : (v153 = *v147), !memcmp(v152, v153, v149)))
        {
          do
          {
            webrtc::JsepTransportCollection::RemoveTransportForMid((v145 + 384), v147);
            v147 += 24;
          }

          while (v147 != v146);
          webrtc::BundleManager::DeleteGroup((v145 + 880), v144);
        }

        else
        {
LABEL_340:
          webrtc::JsepTransportCollection::RemoveTransportForMid((v145 + 384), v140 + 1);
          webrtc::BundleManager::DeleteMid((v145 + 880), v144, v140 + 1);
        }

        v8 = v145;
      }

      v136 = v283;
      goto LABEL_321;
    }

    if (v120 == v143)
    {
      v154 = 0;
LABEL_366:
      v164 = 1;
      if (*(v8 + 580) == 1)
      {
        goto LABEL_367;
      }

      goto LABEL_370;
    }

    v154 = v143[7];
    if (!v154)
    {
      goto LABEL_366;
    }

    if (*(v154 + 24) == *(v154 + 32))
    {
      v155 = 0;
    }

    else
    {
      v155 = *(v154 + 24);
    }

    v156 = *(v140 + 31);
    if (v156 >= 0)
    {
      v157 = *(v140 + 31);
    }

    else
    {
      v157 = *(v140 + 2);
    }

    v158 = *(v155 + 23);
    v159 = v158;
    if ((v158 & 0x80u) != 0)
    {
      v158 = *(v155 + 8);
    }

    if (v157 != v158 || (v156 >= 0 ? (v160 = v140 + 2) : (v160 = *v142), v159 >= 0 ? (v161 = v155) : (v161 = *v155), memcmp(v160, v161, v157)))
    {
      v162 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(v8 + 384, v155);
      if (v287 != v162)
      {
        v136 = v283;
        webrtc::JsepTransportCollection::SetTransportForMid((v8 + 384), (v140 + 2), v162[7]);
        if ((v163 & 1) == 0)
        {
          goto LABEL_608;
        }

        goto LABEL_321;
      }

      v136 = v283;
      webrtc::JsepTransportCollection::SetTransportForMid((v8 + 384), (v140 + 2), 0);
      if (v226)
      {
LABEL_321:
        ++v138;
        v137 = *v136;
        if (v138 >= 0xCCCCCCCCCCCCCCCDLL * ((v136[1] - *v136) >> 3))
        {
          goto LABEL_578;
        }

        continue;
      }

LABEL_608:
      std::operator+<char>();
      if (v301[23] >= 0)
      {
        v261 = 22;
      }

      else
      {
        v261 = (*&v301[16] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if (v301[23] >= 0)
      {
        v262 = v301[23];
      }

      else
      {
        v262 = *&v301[8];
      }

      if (v261 - v262 < 2)
      {
        std::string::__grow_by_and_replace(v301, v261, v262 - v261 + 2, v262, v262, 0, 2uLL, "'.");
        v263 = (a1 + 8);
        goto LABEL_627;
      }

      if (v301[23] >= 0)
      {
        v264 = v301;
      }

      else
      {
        v264 = *v301;
      }

      v265 = &v264[v262];
      v263 = (a1 + 8);
      if (&v264[v262] <= "'." && v265 + 1 > "'.")
      {
        goto LABEL_649;
      }

      *v265 = 11815;
      v266 = v262 + 2;
      if ((v301[23] & 0x80000000) != 0)
      {
        *&v301[8] = v262 + 2;
      }

      else
      {
        v301[23] = v266 & 0x7F;
      }

      v264[v266] = 0;
LABEL_627:
      v302 = *v301;
      memset(v301, 0, 24);
      v267 = SHIBYTE(v302.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(v302.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
      {
        *a1 = 3;
        v268 = &v302;
        v269 = v267;
LABEL_630:
        if (v269 > 0x16)
        {
          operator new();
        }

        *(a1 + 31) = v269;
        v270 = (v263 + v269);
        if (v263 > v268 || v270 <= v268)
        {
          if (v269)
          {
            memmove(v263, v268, v269);
          }

          v270->__r_.__value_.__s.__data_[0] = 0;
          *(a1 + 32) = 0;
          *(a1 + 36) = 0;
          *(a1 + 38) = 0;
          if ((v267 & 0x80000000) != 0)
          {
            operator delete(v302.__r_.__value_.__l.__data_);
          }

          if ((v301[23] & 0x80000000) != 0)
          {
            operator delete(*v301);
          }

          goto LABEL_582;
        }

LABEL_649:
        __break(1u);
        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      v269 = v302.__r_.__value_.__l.__size_;
      v268 = v302.__r_.__value_.__r.__words[0];
      *a1 = 3;
      if (v269 <= 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_630;
      }

LABEL_651:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    break;
  }

  v164 = 0;
  if (*(v8 + 580) != 1)
  {
    goto LABEL_370;
  }

LABEL_367:
  if (!*v140 && (*(v140 + 5) & 1) == 0 && (*(*(v140 + 4) + 32) & 1) == 0)
  {
    std::operator+<char>();
    v230 = __len[0];
    if ((__len[0] & 0x8000000000000000) == 0)
    {
      v231 = 22;
    }

    else
    {
      v231 = (__len[0] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if ((__len[0] & 0x8000000000000000) == 0)
    {
      v232 = HIBYTE(__len[0]);
    }

    else
    {
      v232 = *(&__src + 1);
    }

    if (v231 - v232 >= 0x3A)
    {
      v238 = &__src;
      if ((__len[0] & 0x8000000000000000) != 0)
      {
        v238 = __src;
      }

      v239 = v238 + v232;
      if (v238 + v232 <= "' is invalid. RTCP-MUX is not enabled when it is required." && v239 + 58 > "' is invalid. RTCP-MUX is not enabled when it is required.")
      {
        goto LABEL_649;
      }

      qmemcpy(v239, "' is invalid. RTCP-MUX is not enabled when it is required.", 58);
      v240 = v232 + 58;
      if ((v230 & 0x8000000000000000) != 0)
      {
        *(&__src + 1) = v232 + 58;
      }

      else
      {
        HIBYTE(__len[0]) = v240 & 0x7F;
      }

      *(v238 + v240) = 0;
    }

    else
    {
      std::string::__grow_by_and_replace(&__src, v231, v232 - v231 + 58, v232, v232, 0, 0x3AuLL, "' is invalid. RTCP-MUX is not enabled when it is required.");
    }

    *&v301[16] = __len[0];
    *v301 = __src;
    __len[0] = 0;
    __src = 0uLL;
    if ((v301[23] & 0x8000000000000000) != 0)
    {
      v250 = *&v301[8];
      v249 = *v301;
      LODWORD(v302.__r_.__value_.__l.__data_) = 3;
      if (*&v301[8] > 0x7FFFFFFFFFFFFFF7uLL)
      {
        goto LABEL_651;
      }
    }

    else
    {
      LODWORD(v302.__r_.__value_.__l.__data_) = 3;
      v249 = v301;
      v250 = v301[23];
    }

    v275 = v301[23];
    if (v250 > 0x16)
    {
      operator new();
    }

    BYTE7(v303) = v250;
    v251 = (&v302.__r_.__value_.__r.__words[1] + v250);
    if (&v302.__r_.__value_.__r.__words[1] > v249 || v251 <= v249)
    {
      if (v250)
      {
        memmove(&v302.__r_.__value_.__r.__words[1], v249, v250);
      }

      v251->__r_.__value_.__s.__data_[0] = 0;
      DWORD2(v303) = 0;
      BYTE12(v303) = 0;
      BYTE14(v303) = 0;
      if (v275 < 0)
      {
        operator delete(*v301);
      }

      v8 = a2;
      if (SHIBYTE(__len[0]) < 0)
      {
        operator delete(__src);
        data = v302.__r_.__value_.__l.__data_;
        v288 = v302.__r_.__value_.__l.__data_;
        if ((SHIBYTE(v290) & 0x80000000) == 0)
        {
          goto LABEL_372;
        }
      }

      else
      {
        data = v302.__r_.__value_.__l.__data_;
        v288 = v302.__r_.__value_.__l.__data_;
        if ((SHIBYTE(v290) & 0x80000000) == 0)
        {
          goto LABEL_372;
        }
      }

LABEL_371:
      operator delete(v289);
      data = v288;
      goto LABEL_372;
    }

    goto LABEL_649;
  }

LABEL_370:
  data = 0;
  LODWORD(v302.__r_.__value_.__l.__data_) = 0;
  BYTE14(v303) = 0;
  *&v303 = 0;
  *&v302.__r_.__value_.__r.__words[1] = 0uLL;
  *(&v303 + 5) = 0;
  v288 = 0;
  if (SHIBYTE(v290) < 0)
  {
    goto LABEL_371;
  }

LABEL_372:
  v289 = *&v302.__r_.__value_.__r.__words[1];
  v290 = v303;
  *v292 = DWORD2(v303);
  *&v292[3] = *(&v303 + 11);
  if (data)
  {
    *a1 = data;
    *&v276->__r_.__value_.__l.__data_ = v289;
    *(a1 + 24) = v290;
    *&v289 = 0;
    HIBYTE(v290) = 0;
    *(a1 + 32) = *v292;
    *(a1 + 35) = *&v292[3];
    goto LABEL_582;
  }

  __src = 0uLL;
  __len[0] = 0;
  if (v164)
  {
    goto LABEL_389;
  }

  v166 = *(v154 + 24);
  if (v166 == *(v154 + 32))
  {
    v166 = 0;
  }

  v167 = *(v140 + 31);
  if (v167 >= 0)
  {
    v168 = *(v140 + 31);
  }

  else
  {
    v168 = *(v140 + 2);
  }

  v169 = *(v166 + 23);
  v170 = v169;
  if (v169 < 0)
  {
    v169 = v166[1];
  }

  if (v168 == v169 && (v167 >= 0 ? (v171 = v140 + 2) : (v171 = *v142), v170 >= 0 ? (v172 = v166) : (v172 = *v166), !memcmp(v171, v172, v168)))
  {
    v233 = v296.__r_.__value_.__l.__size_;
    if (!v296.__r_.__value_.__l.__size_)
    {
      goto LABEL_511;
    }

    p_size = &v296.__r_.__value_.__l.__size_;
    do
    {
      v235 = *(v233 + 32);
      v236 = v235 >= v154;
      v237 = v235 < v154;
      if (v236)
      {
        p_size = v233;
      }

      v233 = *(v233 + 8 * v237);
    }

    while (v233);
    if (p_size == &v296.__r_.__value_.__r.__words[1] || v154 < p_size[4])
    {
LABEL_511:
      p_size = &v296.__r_.__value_.__l.__size_;
    }

    if (&__src != (p_size + 5))
    {
      std::vector<int>::__assign_with_size[abi:sn200100]<int *,int *>(&__src, p_size[5], p_size[6], (p_size[6] - p_size[5]) >> 2);
    }
  }

  else
  {
LABEL_389:
    v173 = *(v140 + 4);
    v174 = *(v8 + 547);
    memset(&v302, 0, sizeof(v302));
    if (v174 == 1)
    {
      v175 = *(v173 + 64);
      v176 = *(v173 + 72);
      if (v175 != v176)
      {
        do
        {
          if (*(v175 + 28) == 1)
          {
            v177 = v302.__r_.__value_.__r.__words[0];
            if (v302.__r_.__value_.__r.__words[0] == v302.__r_.__value_.__l.__size_)
            {
              goto LABEL_392;
            }

            while (*v177 != *(v175 + 24))
            {
              if (++v177 == v302.__r_.__value_.__l.__size_)
              {
                goto LABEL_392;
              }
            }

            if (v177 == v302.__r_.__value_.__l.__size_)
            {
LABEL_392:
              std::vector<unsigned int>::push_back[abi:sn200100](&v302, (v175 + 24));
            }
          }

          v175 += 32;
        }

        while (v175 != v176);
        if (__src)
        {
          *(&__src + 1) = __src;
          operator delete(__src);
        }
      }
    }

    __src = *&v302.__r_.__value_.__l.__data_;
    __len[0] = v302.__r_.__value_.__r.__words[2];
  }

  if (*(v8 + 585) != 1 || (v178 = *(v140 + 4), v179 = *(v178 + 64), v180 = *(v178 + 72), v179 == v180))
  {
LABEL_442:
    v199 = -1;
    v200 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(v8 + 408, v140 + 1);
    if (v278 == v200)
    {
      goto LABEL_453;
    }

    goto LABEL_443;
  }

  v181 = 0;
  do
  {
    v182 = *(v179 + 23);
    if (v182 < 0)
    {
      v183 = *v179;
      if (v179[1] != 58)
      {
        goto LABEL_408;
      }
    }

    else
    {
      v183 = v179;
      if (v182 != 58)
      {
        goto LABEL_408;
      }
    }

    v184 = *v183;
    v185 = v183[1];
    v186 = v183[2];
    v187 = v183[3];
    v188 = v183[4];
    v189 = v183[5];
    v190 = v183[6];
    v191 = *(v183 + 28);
    if (*"http://www.webrtc.org/experiments/rtp-hdrext/abs-send-time" == v184 && *"ww.webrtc.org/experiments/rtp-hdrext/abs-send-time" == v185 && *"c.org/experiments/rtp-hdrext/abs-send-time" == v186 && *"periments/rtp-hdrext/abs-send-time" == v187 && *"s/rtp-hdrext/abs-send-time" == v188 && *"rext/abs-send-time" == v189 && *"-send-time" == v190 && *"me" == v191)
    {
      if (*(v8 + 547))
      {
        v181 = v179;
        if (*(v179 + 28))
        {
LABEL_438:
          v181 = v179;
          goto LABEL_440;
        }
      }

      else if ((*(v179 + 28) & 1) == 0)
      {
        goto LABEL_438;
      }
    }

LABEL_408:
    v179 += 4;
  }

  while (v179 != v180);
  if (!v181)
  {
    goto LABEL_442;
  }

LABEL_440:
  v199 = *(v181 + 6);
  v200 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(v8 + 408, v140 + 1);
  if (v278 != v200)
  {
LABEL_443:
    v201 = v200[7];
    if (v201)
    {
      v202 = *(v8 + 868);
      v203 = v139 + 112 * v138;
      v204 = webrtc::TransportDescription::TransportDescription(&v302, (v203 + 24));
      if (a3)
      {
        v205 = *(v201 + 56);
        if (v205 && *(v205 + 112) == 1 && !v305 && *(v8 + 868) == 1)
        {
          v202 = 0;
        }
      }

      else
      {
        v215 = *(v8 + 868);
        if (v305 == 1 && v215 == 1)
        {
          v202 = 0;
        }

        v217 = *(v201 + 48);
        if (v217)
        {
          v218 = *(v217 + 112);
          v219 = v215 | v305 ? v202 : 1;
          if (v218 == 1)
          {
            v202 = v219;
          }
        }
      }

      webrtc::TransportDescription::~TransportDescription(v204);
      *(v8 + 868) = v202;
      webrtc::JsepTransportController::GetDtlsTransports(v8, &v302);
      v220 = v8;
      v221 = v302.__r_.__value_.__l.__size_;
      v222 = v302.__r_.__value_.__r.__words[0];
      if (v302.__r_.__value_.__r.__words[0] != v302.__r_.__value_.__l.__size_)
      {
        do
        {
          v223 = *v222++;
          v224 = (*(*v223 + 216))(v223);
          (*(*v224 + 112))(v224, *(v220 + 868));
        }

        while (v222 != v221);
        v222 = v302.__r_.__value_.__r.__words[0];
      }

      if (v222)
      {
        v302.__r_.__value_.__l.__size_ = v222;
        operator delete(v222);
      }

      v225 = *v140;
      if (*v140 != 1)
      {
        LOBYTE(v225) = *(*(v140 + 4) + 32);
      }

      v302.__r_.__value_.__s.__data_[0] = v225 & 1;
      *&v303 = 0;
      *&v302.__r_.__value_.__r.__words[1] = 0uLL;
      if (*(&__src + 1) != __src)
      {
        if (((*(&__src + 1) - __src) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      DWORD2(v303) = v199;
      webrtc::TransportDescription::TransportDescription(&v304, (v203 + 24));
      if (a3)
      {
        webrtc::JsepTransport::SetLocalJsepTransportDescription(v201, &v302, v279, v301);
      }

      webrtc::JsepTransport::SetRemoteJsepTransportDescription(v201, &v302, v279, v301);
    }
  }

LABEL_453:
  if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
  {
    goto LABEL_524;
  }

  std::operator+<char>();
  v213 = v301[23];
  if (v301[23] >= 0)
  {
    v214 = 22;
  }

  else
  {
    v214 = (*&v301[16] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if (v301[23] < 0)
  {
    v213 = *&v301[8];
  }

  if (v214 == v213)
  {
    std::string::__grow_by_and_replace(v301, v214, 1uLL, v214, v214, 0, 1uLL, "'");
    goto LABEL_522;
  }

  v227 = v301;
  if (v301[23] < 0)
  {
    v227 = *v301;
  }

  v228 = &v227[v213];
  if (&v227[v213] <= "'" && v228 + 1 > "'")
  {
    goto LABEL_649;
  }

  *v228 = 39;
  v229 = v213 + 1;
  if ((v301[23] & 0x80000000) != 0)
  {
    *&v301[8] = v229;
  }

  else
  {
    v301[23] = v229 & 0x7F;
  }

  v227[v229] = 0;
LABEL_522:
  v302 = *v301;
  memset(v301, 0, 24);
  __p[0] = "INVALID_PARAMETER";
  __p[1] = 17;
  webrtc::webrtc_logging_impl::Log("\r\n\t\v\t", v214, v207, v208, v209, v210, v211, v212, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/jsep_transport_controller.cc");
  if (SHIBYTE(v302.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v302.__r_.__value_.__l.__data_);
    if ((v301[23] & 0x80000000) != 0)
    {
      goto LABEL_538;
    }
  }

  else
  {
    if ((v301[23] & 0x80000000) == 0)
    {
      goto LABEL_524;
    }

LABEL_538:
    operator delete(*v301);
  }

LABEL_524:
  std::operator+<char>();
  v241 = v301[23];
  if (v301[23] >= 0)
  {
    v242 = 22;
  }

  else
  {
    v242 = (*&v301[16] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if (v301[23] < 0)
  {
    v241 = *&v301[8];
  }

  if (v242 == v241)
  {
    std::string::__grow_by_and_replace(v301, v242, 1uLL, v242, v242, 0, 1uLL, "'");
    goto LABEL_541;
  }

  v243 = v301;
  if (v301[23] < 0)
  {
    v243 = *v301;
  }

  v244 = &v243[v241];
  if (&v243[v241] <= "'" && v244 + 1 > "'")
  {
    goto LABEL_649;
  }

  *v244 = 39;
  v245 = v241 + 1;
  if ((v301[23] & 0x80000000) != 0)
  {
    *&v301[8] = v245;
  }

  else
  {
    v301[23] = v245 & 0x7F;
  }

  v243[v245] = 0;
LABEL_541:
  v302 = *v301;
  memset(v301, 0, 24);
  v246 = SHIBYTE(v302.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v302.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    *a1 = 3;
    v247 = &v302;
    goto LABEL_544;
  }

  v246 = v302.__r_.__value_.__l.__size_;
  v247 = v302.__r_.__value_.__r.__words[0];
  *a1 = 3;
  if (v246 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_651;
  }

LABEL_544:
  if (v246 > 0x16)
  {
    operator new();
  }

  *(a1 + 31) = v246;
  v248 = (v276 + v246);
  if (v276 <= v247 && v248 > v247)
  {
    goto LABEL_649;
  }

  if (v246)
  {
    memmove(v276, v247, v246);
  }

  v248->__r_.__value_.__s.__data_[0] = 0;
  *(a1 + 32) = 0;
  *(a1 + 36) = 0;
  *(a1 + 38) = 0;
  if (SHIBYTE(v302.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v302.__r_.__value_.__l.__data_);
    if ((v301[23] & 0x80000000) == 0)
    {
      goto LABEL_575;
    }
  }

  else if ((v301[23] & 0x80000000) == 0)
  {
    goto LABEL_575;
  }

  operator delete(*v301);
LABEL_575:
  if (__src)
  {
    *(&__src + 1) = __src;
    operator delete(__src);
  }

LABEL_582:
  std::__tree<std::__value_type<webrtc::ContentGroup const*,std::vector<int>>,std::__map_value_compare<webrtc::ContentGroup const*,std::__value_type<webrtc::ContentGroup const*,std::vector<int>>,std::less<webrtc::ContentGroup const*>,true>,std::allocator<std::__value_type<webrtc::ContentGroup const*,std::vector<int>>>>::destroy(v296.__r_.__value_.__l.__size_);
  if (SHIBYTE(v290) < 0)
  {
    operator delete(v289);
  }
}

void webrtc::JsepTransportController::SetRemoteDescription(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(a1 + 360);
  v11 = &unk_280905000;
  {
    v11 = &unk_280905000;
    if (v13)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v11[403] + 88)) == v10)
  {

    webrtc::JsepTransportController::ApplyDescription_n(a5, a1, 0, a2, a3, a4);
  }

  else
  {
    v12 = *(a1 + 360);
    v15 = a1;
    v16 = a2;
    v17 = a3;
    v18 = a4;
    *a5 = 0;
    *(a5 + 38) = 0;
    *(a5 + 16) = 0;
    *(a5 + 24) = 0;
    *(a5 + 8) = 0;
    *(a5 + 29) = 0;
    v19[0] = a5;
    v19[1] = &v15;
    (*(*v12 + 96))(v12, v19, webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::RTCError webrtc::Thread::BlockingCall<webrtc::JsepTransportController::SetRemoteDescription(webrtc::SdpType,webrtc::SessionDescription const*,webrtc::SessionDescription const*)::$_0,webrtc::RTCError,void>(webrtc::JsepTransportController::SetRemoteDescription(webrtc::SdpType,webrtc::SessionDescription const*,webrtc::SessionDescription const*)::$_0 &&,webrtc::Location const&)::{lambda(void)#1}>, &v14);
  }
}

void webrtc::JsepTransportController::GetDtlsTransports(webrtc::JsepTransportController **this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (this[48] != (this + 49))
  {
    operator new();
  }
}

void webrtc::JsepTransportController::SetNeedsIceRestartFlag(webrtc::JsepTransportController **this)
{
  if (this[48] != (this + 49))
  {
    operator new();
  }
}

uint64_t webrtc::JsepTransportController::GetDtlsRole(uint64_t a1, const void **a2)
{
  v4 = *(a1 + 360);
  v5 = &unk_280905000;
  {
    v5 = &unk_280905000;
    if (v12)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v5[403] + 88)) != v4)
  {
    v6 = *(a1 + 360);
    v14[0] = a1;
    v14[1] = a2;
    LOBYTE(v16) = 0;
    BYTE4(v16) = 0;
    v15[0] = &v16;
    v15[1] = v14;
    (*(*v6 + 96))(v6, v15, webrtc::FunctionView<void ()(void)>::CallVoidPtr<std::optional<webrtc::SSLRole> webrtc::Thread::BlockingCall<webrtc::JsepTransportController::GetDtlsRole(std::string const&)::$_0,std::optional<webrtc::SSLRole>,void>(webrtc::JsepTransportController::GetDtlsRole(std::string const&)::$_0 &&,webrtc::Location const&)::{lambda(void)#1}>, &v13);
    v7 = v16;
    return v7 & 0xFFFFFFFFFFLL;
  }

  v9 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a1 + 408, a2);
  if ((a1 + 416) == v9)
  {
    return 0;
  }

  v7 = v9[7];
  if (!v7)
  {
    return v7 & 0xFFFFFFFFFFLL;
  }

  LODWORD(v15[0]) = 0;
  v10 = (*(**(*(v7 + 104) + 144) + 104))(*(*(v7 + 104) + 144), v15);
  v11 = LODWORD(v15[0]) | 0x100000000;
  if (!v10)
  {
    v11 = 0;
  }

  return v11 & 0xFFFFFFFFFFLL;
}

void webrtc::JsepTransportController::SuggestPayloadType(void *a1@<X0>, const void **a2@<X1>, const webrtc::Codec *a3@<X2>, uint64_t a4@<X8>)
{
  v58 = *MEMORY[0x277D85DE8];
  v8 = a1[45];
  v9 = &unk_280905000;
  {
    goto LABEL_48;
  }

  while (1)
  {
    if (pthread_getspecific(*(*(v9 + 403) + 88)) != v8)
    {
      v10 = a1[45];
      v51 = a1;
      *&v52 = a2;
      *(&v52 + 1) = a3;
      *a4 = 10;
      *(a4 + 38) = 0;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 8) = 0;
      *(a4 + 29) = 0;
      *(a4 + 40) = 0;
      v40 = a4;
      *&v41 = &v51;
      (*(*v10 + 96))(v10, &v40, webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::RTCErrorOr<webrtc::PayloadType> webrtc::Thread::BlockingCall<webrtc::JsepTransportController::SuggestPayloadType(std::string const&,webrtc::Codec)::$_0,webrtc::RTCErrorOr<webrtc::PayloadType>,void>(webrtc::JsepTransportController::SuggestPayloadType(std::string const&,webrtc::Codec)::$_0 &&,webrtc::Location const&)::{lambda(void)#1}>, &v35);
      return;
    }

    v11 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>((a1 + 51), a2);
    if (a1 + 52 == v11 || (v8 = v11[7]) == 0)
    {
      v18 = a1[120];
      webrtc::Codec::Codec(v49, a3);
      webrtc::PayloadTypePicker::SuggestMapping(v49, v18, 0, a4);
      webrtc::Codec::~Codec(v49);
      return;
    }

    v9 = &v35;
    webrtc::Codec::Codec(v57, a3);
    webrtc::PayloadTypeRecorder::LookupPayloadType((v8 + 40), v57, &v40);
    webrtc::Codec::~Codec(v57);
    if (!v40)
    {
      *a4 = 0;
      *(a4 + 8) = v41;
      *(a4 + 24) = v42;
      *(a4 + 32) = v43[0];
      *(a4 + 35) = *(v43 + 3);
      *(a4 + 40) = v44;
      return;
    }

    webrtc::Codec::Codec(v56, a3);
    webrtc::PayloadTypeRecorder::LookupPayloadType((v8 + 29), v56, &v35);
    webrtc::Codec::~Codec(v56);
    if (v35)
    {
      goto LABEL_33;
    }

    if ((v39 & 0x100) == 0)
    {
      goto LABEL_47;
    }

    v12 = v8[42];
    if (!v12)
    {
      goto LABEL_17;
    }

    v13 = v8 + 42;
    do
    {
      v14 = *(v12 + 32);
      v15 = v14 >= v39;
      v16 = v14 < v39;
      if (v15)
      {
        v13 = v12;
      }

      v12 = *(v12 + 8 * v16);
    }

    while (v12);
    if (v13 == v8 + 42 || *(v13 + 32) > v39)
    {
LABEL_17:
      v47[31] = 20;
      if (&v47[8] <= "No such payload type" && &v47[28] > "No such payload type")
      {
        goto LABEL_47;
      }

      strcpy(&v47[8], "No such payload type");
      *v48 = 0;
      v48[4] = 0;
      v48[6] = 0;
      LODWORD(v51) = 3;
      v52 = *"No such payload type";
      *v53 = *&v47[24];
      *&v53[8] = 0;
      *&v53[11] = *&v48[3];
      v54[0] = 0;
      v55 = 0;
      goto LABEL_20;
    }

    LODWORD(v51) = 0;
    v53[14] = 0;
    *v53 = 0;
    v52 = 0uLL;
    *&v53[5] = 0;
    webrtc::Codec::Codec(v54, (v13 + 5));
    v55 = 1;
    if (!v40)
    {
      break;
    }

LABEL_20:
    if ((v39 & 0x100) != 0)
    {
      (*(*a1 + 24))(v28, a1, a2, v39, a3);
      if (v29 < 0)
      {
        operator delete(v28[1]);
      }

      v17 = 0;
      *a4 = v35;
      *(a4 + 24) = v37;
      *(a4 + 32) = v38[0];
      *(a4 + 8) = v36;
      v36 = 0uLL;
      v37 = 0;
      *(a4 + 35) = *(v38 + 3);
      *(a4 + 40) = v39;
      if (v55 != 1)
      {
        goto LABEL_25;
      }

LABEL_24:
      webrtc::Codec::~Codec(v54);
      goto LABEL_25;
    }

LABEL_47:
    __break(1u);
LABEL_48:
    {
      operator new();
    }
  }

  if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
  {
    goto LABEL_45;
  }

  v31[0] = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/jsep_transport_controller.cc";
  v31[1] = 2290;
  v31[2] = &v30;
  v32[0] = "Ignoring remote suggestion of PT ";
  v32[1] = v31;
  if ((v39 & 0x100) == 0)
  {
    goto LABEL_47;
  }

  v33[0] = v39;
  v33[1] = v32;
  v34[0] = " for ";
  v34[1] = v33;
  webrtc::webrtc_logging_impl::MakeVal<webrtc::Codec,(void *)0>(a3, &v45);
  if (SHIBYTE(v46) < 0)
  {
    std::string::__init_copy_ctor_external(v47, v45, *(&v45 + 1));
    v27 = v34;
    *&v47[24] = v34;
    if (SHIBYTE(v46) < 0)
    {
      operator delete(v45);
      v27 = *&v47[24];
    }
  }

  else
  {
    *v47 = v45;
    v27 = v34;
    *&v47[16] = v46;
    *&v47[24] = v34;
  }

  webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::ToStringVal,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::ToStringVal,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v20, v21, v22, v23, v24, v25, v26, **(*(v27[1] + 8) + 8));
  if ((v47[23] & 0x80000000) != 0)
  {
    operator delete(*v47);
  }

LABEL_45:
  v17 = 1;
  if (v55 == 1)
  {
    goto LABEL_24;
  }

LABEL_25:
  if ((v53[7] & 0x80000000) == 0)
  {
    if (!v17)
    {
      goto LABEL_27;
    }

LABEL_33:
    v19 = a1[120];
    webrtc::Codec::Codec(v50, a3);
    webrtc::PayloadTypePicker::SuggestMapping(v50, v19, (v8 + 40), a4);
    webrtc::Codec::~Codec(v50);
    if (SHIBYTE(v37) < 0)
    {
      goto LABEL_34;
    }

LABEL_28:
    if ((SHIBYTE(v42) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_35;
  }

  operator delete(v52);
  if (v17)
  {
    goto LABEL_33;
  }

LABEL_27:
  if ((SHIBYTE(v37) & 0x80000000) == 0)
  {
    goto LABEL_28;
  }

LABEL_34:
  operator delete(v36);
  if ((SHIBYTE(v42) & 0x80000000) == 0)
  {
    return;
  }

LABEL_35:
  operator delete(v41);
}

void webrtc::JsepTransportController::AddLocalMapping(uint64_t a1@<X0>, const void **a2@<X1>, unsigned __int8 a3@<W2>, const webrtc::Codec *a4@<X3>, uint64_t a5@<X8>)
{
  v21 = *MEMORY[0x277D85DE8];
  v18 = a3;
  v10 = *(a1 + 360);
  v11 = &unk_280905000;
  {
    v11 = &unk_280905000;
    if (v15)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v11[403] + 88)) == v10)
  {
    v13 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a1 + 408, a2);
    if ((a1 + 416) == v13 || (v14 = v13[7]) == 0)
    {
      *a5 = 3;
      operator new();
    }

    webrtc::Codec::Codec(v20, a4);
    webrtc::PayloadTypeRecorder::AddMapping(v20, v14 + 320, a3, a5);
    webrtc::Codec::~Codec(v20);
  }

  else
  {
    v12 = *(a1 + 360);
    v17[0] = a1;
    v17[1] = a2;
    v17[2] = &v18;
    v17[3] = a4;
    *a5 = 0;
    *(a5 + 38) = 0;
    *(a5 + 16) = 0;
    *(a5 + 24) = 0;
    *(a5 + 8) = 0;
    *(a5 + 29) = 0;
    v19[0] = a5;
    v19[1] = v17;
    (*(*v12 + 96))(v12, v19, webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::RTCError webrtc::Thread::BlockingCall<webrtc::JsepTransportController::AddLocalMapping(std::string const&,webrtc::PayloadType,webrtc::Codec const&)::$_0,webrtc::RTCError,void>(webrtc::JsepTransportController::AddLocalMapping(std::string const&,webrtc::PayloadType,webrtc::Codec const&)::$_0 &&,webrtc::Location const&)::{lambda(void)#1}>, &v16);
  }
}

uint64_t webrtc::JsepTransportController::SetLocalCertificate(uint64_t a1, atomic_uint **a2)
{
  v4 = *(a1 + 360);
  {
    operator new();
  }

  if (pthread_getspecific(*(webrtc::ThreadManager::Instance(void)::thread_manager + 88)) == v4)
  {
    if (*(a1 + 872) || (v7 = *a2) == 0)
    {
      v6 = 0;
    }

    else
    {
      v8 = a1 + 872;
      atomic_fetch_add_explicit(v7, 1u, memory_order_relaxed);
      v9 = *(a1 + 872);
      if (v9 && atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
      {
        v10 = *(v9 + 8);
        *(v9 + 8) = 0;
        if (v10)
        {
          (*(*v10 + 8))(v10);
        }

        MEMORY[0x2743DA540](v9, 0x1020C40D5A9D86FLL);
      }

      *(a1 + 872) = v7;
      v11 = *(a1 + 384);
      if (v11 != a1 + 392)
      {
        operator new();
      }

      webrtc::JsepTransportController::GetDtlsTransports(a1, &v16);
      v12 = v16;
      v13 = v17;
      if (v16 != v17)
      {
        do
        {
          v14 = *v12;
          v12 += 8;
          (*(*v14 + 176))(v14, v8);
        }

        while (v12 != v13);
        v12 = v16;
      }

      if (v12)
      {
        v17 = v12;
        operator delete(v12);
      }

      v6 = 1;
    }
  }

  else
  {
    v5 = *(a1 + 360);
    v19[0] = a1;
    v19[1] = a2;
    v20 = 0;
    v16 = &v20;
    v17 = v19;
    (*(*v5 + 96))(v5, &v16, webrtc::FunctionView<void ()(void)>::CallVoidPtr<BOOL webrtc::Thread::BlockingCall<webrtc::JsepTransportController::SetLocalCertificate(webrtc::scoped_refptr<webrtc::RTCCertificate> const&)::$_0,BOOL,void>(webrtc::JsepTransportController::SetLocalCertificate(webrtc::scoped_refptr<webrtc::RTCCertificate> const&)::$_0 &&,webrtc::Location const&)::{lambda(void)#1}>, &v18);
    v6 = v20;
  }

  return v6 & 1;
}

void webrtc::JsepTransportController::MaybeStartGathering(webrtc::JsepTransportController *this)
{
  v2 = *(this + 45);
  v3 = &unk_280905000;
  {
    v3 = &unk_280905000;
    if (v9)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v3[403] + 88)) == v2)
  {
    webrtc::JsepTransportController::GetDtlsTransports(this, &v10);
    v5 = v10;
    v6 = v11;
    if (v10 != v11)
    {
      do
      {
        v7 = *v5;
        v5 = (v5 + 8);
        v8 = (*(*v7 + 216))(v7);
        (*(*v8 + 200))(v8);
      }

      while (v5 != v6);
      v5 = v10;
    }

    if (v5)
    {
      v11 = v5;
      operator delete(v5);
    }
  }

  else
  {
    v4 = *(this + 45);
    v10 = this;
    (*(*v4 + 96))(v4, &v10, webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::JsepTransportController::MaybeStartGathering(void)::$_0>, &v12);
  }
}

void webrtc::JsepTransportController::RemoveRemoteCandidates(uint64_t a1@<X0>, std::string::value_type *a2@<X1>, char *a3@<X8>)
{
  v6 = *(a1 + 360);
  v7 = &unk_280905000;
  {
    goto LABEL_79;
  }

LABEL_2:
  if (pthread_getspecific(*(*(v7 + 3224) + 88)) != v6)
  {
    v8 = *(a1 + 360);
    v52 = a1;
    v53[0] = a2;
    *a3 = 0;
    a3[38] = 0;
    *(a3 + 2) = 0;
    *(a3 + 3) = 0;
    *(a3 + 1) = 0;
    *(a3 + 29) = 0;
    v54 = a3;
    *&__p = &v52;
    (*(*v8 + 96))(v8, &v54, webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::RTCError webrtc::Thread::BlockingCall<webrtc::JsepTransportController::RemoveRemoteCandidates(std::vector<webrtc::Candidate> const&)::$_0,webrtc::RTCError,void>(webrtc::JsepTransportController::RemoveRemoteCandidates(std::vector<webrtc::Candidate> const&)::$_0 &&,webrtc::Location const&)::{lambda(void)#1}>, &v51);
    return;
  }

  v9 = *a2;
  v10 = *(a2 + 1);
  if (*a2 == v10)
  {
    v48 = a3;
  }

  else
  {
    do
    {
      webrtc::VerifyCandidate(v9, &v54);
      if (v54)
      {
        *a3 = v54;
        *(a3 + 8) = __p;
        *(a3 + 3) = *v56;
        *(a3 + 8) = *&v56[8];
        *(a3 + 35) = *&v56[11];
        return;
      }

      if ((v56[7] & 0x80000000) != 0)
      {
        operator delete(__p);
      }

      v9 += 18;
    }

    while (v9 != v10);
    v48 = a3;
    v9 = *a2;
    v10 = *(a2 + 1);
  }

  LODWORD(v54) = 0;
  v56[14] = 0;
  *v56 = 0;
  __p = 0uLL;
  *&v56[5] = 0;
  v6 = v53;
  v53[0] = 0;
  v53[1] = 0;
  v52 = v53;
  if (v9 == v10)
  {
    goto LABEL_75;
  }

  do
  {
    v11 = v9[16].__r_.__value_.__s.__data_[15];
    if (v11 < 0)
    {
      if (!v9[16].__r_.__value_.__r.__words[0])
      {
        goto LABEL_47;
      }

LABEL_19:
      a2 = &v9[15].__r_.__value_.__s.__data_[16];
      v12 = v53[0];
      if (!v53[0])
      {
LABEL_45:
        operator new();
      }

      if (v11 >= 0)
      {
        v13 = &v9[15].__r_.__value_.__r.__words[2];
      }

      else
      {
        v13 = v9[15].__r_.__value_.__r.__words[2];
      }

      if (v11 >= 0)
      {
        v14 = v9[16].__r_.__value_.__s.__data_[15];
      }

      else
      {
        v14 = v9[16].__r_.__value_.__r.__words[0];
      }

      while (1)
      {
        v15 = v12;
        v16 = v12 + 32;
        v17 = *(v12 + 4);
        v18 = v16[23];
        if (v18 >= 0)
        {
          v19 = v16;
        }

        else
        {
          v19 = v17;
        }

        if (v18 >= 0)
        {
          v7 = v16[23];
        }

        else
        {
          v7 = *(v16 + 1);
        }

        if (v7 >= v14)
        {
          v3 = v14;
        }

        else
        {
          v3 = v7;
        }

        v20 = memcmp(v13, v19, v3);
        if (v20)
        {
          if (v20 < 0)
          {
            goto LABEL_26;
          }

LABEL_40:
          v21 = memcmp(v19, v13, v3);
          if (v21)
          {
            if ((v21 & 0x80000000) == 0)
            {
              goto LABEL_50;
            }
          }

          else if (v7 >= v14)
          {
LABEL_50:
            a3 = v15;
            v29 = *(v15 + 8);
            if (v29 >= *(v15 + 9))
            {
              std::vector<webrtc::Candidate>::__emplace_back_slow_path<webrtc::Candidate>(v15 + 7);
            }

            if (v29)
            {
              *(v15 + 8) = webrtc::Candidate::Candidate(v29, v9) + 18;
              goto LABEL_16;
            }

            __break(1u);
LABEL_79:
            {
              operator new();
            }

            goto LABEL_2;
          }

          v12 = *(v15 + 1);
          if (!v12)
          {
            goto LABEL_45;
          }
        }

        else
        {
          if (v14 >= v7)
          {
            goto LABEL_40;
          }

LABEL_26:
          v12 = *v15;
          if (!*v15)
          {
            goto LABEL_45;
          }
        }
      }
    }

    if (v9[16].__r_.__value_.__s.__data_[15])
    {
      goto LABEL_19;
    }

LABEL_47:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::Candidate::ToStringInternal(v9, 1, &v51);
      v49 = v49 & 0xFFFFFFFF00000000 | 0xD63;
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v22, v23, v24, v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/jsep_transport_controller.cc");
      if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v51.__r_.__value_.__l.__data_);
      }
    }

LABEL_16:
    v9 += 18;
  }

  while (v9 != v10);
  v30 = v52;
  if (v52 != v53)
  {
    while (1)
    {
      v31 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a1 + 384, v30 + 4);
      if ((a1 + 392) != v31)
      {
        v32 = v31[7];
        if (v32)
        {
          break;
        }
      }

      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
        v3 = v3 & 0xFFFFFFFF00000000 | 0xDBA;
        webrtc::webrtc_logging_impl::Log("\r\t", v38, v39, v40, v41, v42, v43, v44, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/jsep_transport_controller.cc");
      }

LABEL_69:
      v45 = v30[1];
      if (v45)
      {
        do
        {
          v46 = v45;
          v45 = *v45;
        }

        while (v45);
      }

      else
      {
        do
        {
          v46 = v30[2];
          v47 = *v46 == v30;
          v30 = v46;
        }

        while (!v47);
      }

      v30 = v46;
      if (v46 == v53)
      {
        goto LABEL_75;
      }
    }

    v33 = v30[7];
    v34 = v30[8];
    while (2)
    {
      if (v33 == v34)
      {
        goto LABEL_69;
      }

      if (*(v33 + 6) == 1)
      {
        v35 = *(v32 + 104);
        if (!v35)
        {
          goto LABEL_59;
        }
      }

      else
      {
        v35 = *(v32 + 112);
        if (!v35)
        {
LABEL_59:
          v33 += 432;
          continue;
        }
      }

      break;
    }

    v36 = *(v35 + 144);
    if (v36)
    {
      v37 = (*(*v36 + 216))(v36);
      (*(*v37 + 216))(v37, v33);
    }

    goto LABEL_59;
  }

LABEL_75:
  *v48 = 0;
  v48[38] = 0;
  *(v48 + 2) = 0;
  *(v48 + 3) = 0;
  *(v48 + 1) = 0;
  *(v48 + 29) = 0;
  std::__tree<std::__value_type<std::string,std::vector<webrtc::Candidate>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<webrtc::Candidate>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<webrtc::Candidate>>>>::destroy(v53[0]);
  if ((v56[7] & 0x80000000) != 0)
  {
    operator delete(__p);
  }
}

void webrtc::JsepTransportController::SetActiveResetSrtpParams(webrtc::JsepTransportController *this, char a2)
{
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/jsep_transport_controller.cc");
  }

  *(this + 736) = a2;
  if (*(this + 48) != (this + 392))
  {
    operator new();
  }
}

uint64_t *webrtc::JsepTransportController::RollbackTransports@<X0>(uint64_t *__return_ptr a1@<X8>, webrtc::JsepTransportController *this@<X0>)
{
  v4 = *(this + 45);
  v5 = &unk_280905000;
  {
    v5 = &unk_280905000;
    if (v15)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v5[403] + 88)) == v4)
  {
    webrtc::BundleManager::Rollback((this + 880));
    result = webrtc::JsepTransportCollection::RollbackTransports(this + 48);
    if ((result & 1) == 0)
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
        v18 = "INTERNAL_ERROR";
        v19 = 14;
        webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v8, v9, v10, v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/jsep_transport_controller.cc");
      }

      *a1 = 10;
      operator new();
    }

    *a1 = 0;
    *(a1 + 38) = 0;
    a1[2] = 0;
    a1[3] = 0;
    a1[1] = 0;
    *(a1 + 29) = 0;
  }

  else
  {
    v6 = *(this + 45);
    v17 = this;
    *a1 = 0;
    *(a1 + 38) = 0;
    a1[2] = 0;
    a1[3] = 0;
    a1[1] = 0;
    *(a1 + 29) = 0;
    v18 = a1;
    v19 = &v17;
    return (*(*v6 + 96))(v6, &v18, webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::RTCError webrtc::Thread::BlockingCall<webrtc::JsepTransportController::RollbackTransports(void)::$_0,webrtc::RTCError,void>(webrtc::JsepTransportController::RollbackTransports(void)::$_0 &&,webrtc::Location const&)::{lambda(void)#1}>, &v16);
  }

  return result;
}

void webrtc::JsepTransportController::CreateDtlsTransport(void *a1, uint64_t a2)
{
  v4 = *(a2 + 600);
  if (v4)
  {
    (*(*v4 + 16))(&v6);
    v5 = v6;
    *a1 = v6;
    if (*(a2 + 872))
    {
      (*(*v5 + 176))(v5, a2 + 872);
    }

    operator new();
  }

  operator new();
}

void webrtc::JsepTransportController::OnTransportWritableState_n(webrtc::JsepTransportController *this, webrtc::PacketTransportInternal *a2)
{
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    (*(*a2 + 16))(a2);
    (*(*a2 + 24))(a2);
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/jsep_transport_controller.cc");
  }

  webrtc::JsepTransportController::UpdateAggregateStates_n(this);
}

void webrtc::JsepTransportController::OnTransportCandidateGathered_n(webrtc::JsepTransportController *this, webrtc::IceTransportInternal *a2, std::string *a3)
{
  v5 = *MEMORY[0x277D85DE8];
  if (LODWORD(a3[8].__r_.__value_.__r.__words[2]) != 2)
  {
    (*(*a2 + 16))(a2);
    webrtc::Candidate::Candidate(&v4, a3);
    operator new();
  }
}

void webrtc::JsepTransportController::OnTransportRoleConflict_n(webrtc::JsepTransportController *this, webrtc::IceTransportInternal *a2)
{
  v3 = *(this + 217);
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t\t\t", v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/jsep_transport_controller.cc");
  }

  *(this + 217) = v3 == 0;
  webrtc::JsepTransportController::GetDtlsTransports(this, &v15);
  v11 = v15;
  v12 = v16;
  if (v15 != v16)
  {
    do
    {
      v13 = *v11++;
      v14 = (*(*v13 + 216))(v13);
      (*(*v14 + 112))(v14, *(this + 217));
    }

    while (v11 != v12);
    v11 = v15;
  }

  if (v11)
  {
    v16 = v11;
    operator delete(v11);
  }
}

void webrtc::JsepTransportController::OnTransportStateChanged_n(webrtc::JsepTransportController *this, webrtc::IceTransportInternal *a2)
{
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    (*(*a2 + 16))(a2);
    (*(*a2 + 96))(a2);
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/jsep_transport_controller.cc");
  }

  webrtc::JsepTransportController::UpdateAggregateStates_n(this);
}

void webrtc::JsepTransportController::UpdateAggregateStates_n(webrtc::JsepTransportController *this)
{
  webrtc::JsepTransportCollection::ActiveTransports(this + 48, &__p);
  v5 = __p;
  if (__p == v68[0])
  {
    if (!__p)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  do
  {
    v6 = *(*v5 + 104);
    if (v6 && *(v6 + 144))
    {
      operator new();
    }

    v7 = *(*v5 + 112);
    if (v7 && *(v7 + 144))
    {
      operator new();
    }

    v5 += 8;
  }

  while (v5 != v68[0]);
  v5 = __p;
  if (__p)
  {
LABEL_11:
    v68[0] = v5;
    operator delete(v5);
  }

LABEL_12:
  v68[0] = 0;
  v68[1] = 0;
  __p = v68;
  if (!*(this + 130))
  {
    goto LABEL_22;
  }

  v9 = this + 88;
  v8 = *(this + 88);
  *(this + 130) = 0;
  if (v8 == 1)
  {
    goto LABEL_109;
  }

  *(this + 88) = 1;
  v10 = *(this + 8);
  v11 = *(this + 9);
  if (v10 != v11)
  {
    v12 = 0;
    do
    {
      (*(v10 + 40))(v10 + 8, 0);
      v13 = *v10;
      v10 += 56;
      v12 |= v13 == v9;
    }

    while (v10 != v11);
    *v9 = 0;
    if (v12)
    {
      webrtc::callback_list_impl::CallbackListReceivers::RemoveReceivers(this + 8, this + 88);
    }

LABEL_22:
    v14 = v68[0];
    if (v68[0])
    {
      goto LABEL_23;
    }

LABEL_30:
    operator new();
  }

  *v9 = 0;
  v14 = v68[0];
  if (!v68[0])
  {
    goto LABEL_30;
  }

LABEL_23:
  v15 = v14;
  while (1)
  {
    while (1)
    {
      v16 = v15;
      v17 = *(v15 + 7);
      if (v17 < 2)
      {
        break;
      }

      v15 = *v16;
      if (!*v16)
      {
        goto LABEL_30;
      }
    }

    if (v17 == 1)
    {
      break;
    }

    v15 = v16[1];
    if (!v15)
    {
      goto LABEL_30;
    }
  }

  v18 = *(v16 + 8);
  if (!v14)
  {
LABEL_37:
    operator new();
  }

  v19 = v14;
  while (1)
  {
    while (1)
    {
      v20 = v19;
      v21 = *(v19 + 7);
      if (v21 < 3)
      {
        break;
      }

      v19 = *v20;
      if (!*v20)
      {
        goto LABEL_37;
      }
    }

    if (v21 == 2)
    {
      break;
    }

    v19 = v20[1];
    if (!v19)
    {
      goto LABEL_37;
    }
  }

  v22 = *(v20 + 8);
  v23 = v14;
  while (1)
  {
    while (1)
    {
      v24 = v23;
      v25 = *(v23 + 7);
      if (v25 < 4)
      {
        break;
      }

      v23 = *v24;
      if (!*v24)
      {
        goto LABEL_43;
      }
    }

    if (v25 == 3)
    {
      break;
    }

    v23 = v24[1];
    if (!v23)
    {
LABEL_43:
      operator new();
    }
  }

  v63 = *(v24 + 8);
  v26 = v14;
  while (1)
  {
    while (1)
    {
      v27 = v26;
      v28 = *(v26 + 7);
      if (v28 < 5)
      {
        break;
      }

      v26 = *v27;
      if (!*v27)
      {
        goto LABEL_49;
      }
    }

    if (v28 == 4)
    {
      break;
    }

    v26 = v27[1];
    if (!v26)
    {
LABEL_49:
      operator new();
    }
  }

  v66 = *(v27 + 8);
  v29 = v14;
  while (1)
  {
    while (1)
    {
      v30 = v29;
      v31 = *(v29 + 7);
      if (v31 < 6)
      {
        break;
      }

      v29 = *v30;
      if (!*v30)
      {
        goto LABEL_55;
      }
    }

    if (v31 == 5)
    {
      break;
    }

    v29 = v30[1];
    if (!v29)
    {
LABEL_55:
      operator new();
    }
  }

  v64 = *(v30 + 8);
  v32 = v14;
  while (1)
  {
    while (1)
    {
      v33 = v32;
      v34 = *(v32 + 7);
      if (v34 < 7)
      {
        break;
      }

      v32 = *v33;
      if (!*v33)
      {
        goto LABEL_61;
      }
    }

    if (v34 == 6)
    {
      break;
    }

    v32 = v33[1];
    if (!v32)
    {
LABEL_61:
      operator new();
    }
  }

  v62 = *(v33 + 8);
  while (1)
  {
    while (1)
    {
      v35 = v14;
      v36 = *(v14 + 7);
      if (v36 < 1)
      {
        break;
      }

      v14 = *v35;
      if (!*v35)
      {
        goto LABEL_67;
      }
    }

    if ((v36 & 0x80000000) == 0)
    {
      break;
    }

    v14 = v35[1];
    if (!v14)
    {
LABEL_67:
      operator new();
    }
  }

  v37 = this;
  v38 = *(v35 + 8);
  if (v66 <= 0)
  {
    if (v64 <= 0)
    {
      v42 = v38 + v62;
      v43 = v38 + v18;
      if (v62 + v63)
      {
        v44 = 2 * (v63 + v22 + v62 == 0);
      }

      else
      {
        v44 = 3;
      }

      v45 = v43 <= 0;
      v46 = v43 <= 0 && v62 + v63 == 0;
      if (v45)
      {
        v47 = v44;
      }

      else
      {
        v47 = 1;
      }

      v48 = v42 == 0;
      if (v42)
      {
        v39 = v46;
      }

      else
      {
        v39 = 0;
      }

      if (v48)
      {
        v40 = 0;
      }

      else
      {
        v40 = v47;
      }

      v41 = *(this + 131);
      if (v41 == v40)
      {
LABEL_108:
        operator new();
      }
    }

    else
    {
      v39 = 0;
      v40 = 5;
      v41 = *(this + 131);
      if (v41 == 5)
      {
        goto LABEL_108;
      }
    }
  }

  else
  {
    v39 = 0;
    v40 = 4;
    v41 = *(this + 131);
    if (v41 == 4)
    {
      goto LABEL_108;
    }
  }

  v49 = !v39;
  if (v41 != 1)
  {
    v49 = 1;
  }

  if ((v49 & 1) == 0)
  {
    v50 = this + 152;
    if (*(this + 152) == 1)
    {
      goto LABEL_109;
    }

    *(this + 152) = 1;
    v51 = *(this + 16);
    v52 = *(this + 17);
    if (v51 == v52)
    {
      *v50 = 0;
      v37 = this;
    }

    else
    {
      v53 = 0;
      do
      {
        (*(v51 + 40))(v51 + 8, 2);
        v54 = *v51;
        v51 += 56;
        v53 |= v54 == v50;
      }

      while (v51 != v52);
      *v50 = 0;
      v37 = this;
      if (v53)
      {
        webrtc::callback_list_impl::CallbackListReceivers::RemoveReceivers(this + 16, this + 152);
      }
    }
  }

  v56 = (v37 + 152);
  v55 = *(v37 + 152);
  *(v37 + 131) = v40;
  if (v55 != 1)
  {
    *(v37 + 152) = 1;
    v57 = *(v37 + 16);
    v58 = *(v37 + 17);
    if (v57 == v58)
    {
      *v56 = 0;
    }

    else
    {
      v59 = 0;
      do
      {
        (*(v57 + 40))(v57 + 8, v40);
        v60 = *v57;
        v57 += 56;
        v59 |= v60 == v56;
      }

      while (v57 != v58);
      *v56 = 0;
      if (v59)
      {
        webrtc::callback_list_impl::CallbackListReceivers::RemoveReceivers(v56 - 3, v56);
      }
    }

    goto LABEL_108;
  }

LABEL_109:
  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/callback_list.cc", 71, "!send_in_progress_", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v1, v2, v3, v4, v61);
  webrtc::RtpTransport::RtpTransport();
}

void webrtc::RtpTransport::RtpTransport(uint64_t a1, char a2, uint64_t a3)
{
  *(a1 + 8) = sigslot::has_slots<sigslot::single_threaded>::do_signal_connect;
  *(a1 + 16) = sigslot::has_slots<sigslot::single_threaded>::do_signal_disconnect;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 24) = sigslot::has_slots<sigslot::single_threaded>::do_disconnect_all;
  *(a1 + 32) = a1 + 40;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  *(a1 + 112) = 0;
  *(a1 + 144) = _ZN4absl22internal_any_invocable12LocalInvokerILb0EvRN6webrtc20RtpTransportInternal41callback_undemuxable_rtp_packet_received_MUlRNS2_17RtpPacketReceivedEE_EJS5_EEET0_PNS0_15TypeErasedStateEDpNS0_18ForwardedParameterIT2_E4typeE;
  *(a1 + 152) = 0;
  *(a1 + 136) = absl::internal_any_invocable::LocalManagerTrivial;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 208) = 0;
  *(a1 + 200) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 216) = 0;
  *(a1 + 240) = 0;
  *a1 = &unk_28829DC80;
  (*(*a3 + 16))(__p, a3, "WebRTC-SetReadyToSendFalseIfSendFail", 36);
  v5 = 0;
  v6 = v12;
  if ((v12 & 0x80u) != 0)
  {
    v6 = __p[1];
  }

  if (v6 >= 7)
  {
    v7 = __p[0];
    if ((v12 & 0x80u) == 0)
    {
      v7 = __p;
    }

    v8 = *v7;
    v9 = *(v7 + 3);
    v5 = v8 == 1650552389 && v9 == 1684368482;
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  *(a1 + 248) = v5;
  *(a1 + 249) = a2;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 271) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = a1 + 336;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0;
  *(a1 + 472) = 1;
  *(a1 + 488) = 0;
  *(a1 + 496) = 0;
  *(a1 + 480) = 0;
  *(a1 + 504) = 0;
  operator new();
}

uint64_t std::__function::__func<webrtc::JsepTransportController::MaybeCreateJsepTransport(BOOL,webrtc::ContentInfo const&,webrtc::SessionDescription const&)::$_0,std::allocator<webrtc::JsepTransportController::MaybeCreateJsepTransport(BOOL,webrtc::ContentInfo const&,webrtc::SessionDescription const&)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_288294FC8;
  a2[1] = v2;
  return result;
}

void webrtc::UntypedFunction::PrepareArgs<void ()(webrtc::CopyOnWriteBuffer *,long long),absl::AnyInvocable<void ()(webrtc::CopyOnWriteBuffer *,long long)>,absl::AnyInvocable<void ()(webrtc::CopyOnWriteBuffer *,long long)>,(void *)0>(absl::AnyInvocable<void ()(webrtc::CopyOnWriteBuffer *,long long)> &&)::{lambda(webrtc::webrtc_function_impl::VoidUnion *)#1}::__invoke(void *a1)
{
  (*(*a1 + 16))(1, *a1, *a1);

  JUMPOUT(0x2743DA540);
}

uint64_t std::__function::__func<webrtc::JsepTransportController::JsepTransportController(webrtc::Environment const&,webrtc::Thread *,webrtc::PortAllocator *,webrtc::AsyncDnsResolverFactoryInterface *,webrtc::PayloadTypePicker &,webrtc::JsepTransportController::Config)::$_0,std::allocator<webrtc::JsepTransportController::JsepTransportController(webrtc::Environment const&,webrtc::Thread *,webrtc::PortAllocator *,webrtc::AsyncDnsResolverFactoryInterface *,webrtc::PayloadTypePicker &,webrtc::JsepTransportController::Config)::$_0>,BOOL ()(std::string const&,webrtc::JsepTransport *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_288295010;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<webrtc::JsepTransportController::JsepTransportController(webrtc::Environment const&,webrtc::Thread *,webrtc::PortAllocator *,webrtc::AsyncDnsResolverFactoryInterface *,webrtc::PayloadTypePicker &,webrtc::JsepTransportController::Config)::$_0,std::allocator<webrtc::JsepTransportController::JsepTransportController(webrtc::Environment const&,webrtc::Thread *,webrtc::PortAllocator *,webrtc::AsyncDnsResolverFactoryInterface *,webrtc::PayloadTypePicker &,webrtc::JsepTransportController::Config)::$_0>,BOOL ()(std::string const&,webrtc::JsepTransport *)>::operator()(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(*(a1 + 8) + 608);
  if (!v3)
  {
    return 0;
  }

  v4 = *a3;
  if (!*a3)
  {
    v13 = 0;
    result = (*(*v3 + 16))(v3, a2, 0, &v13, 0);
    v11 = v13;
    if (!v13)
    {
      return result;
    }

LABEL_15:
    v12 = result;
    (*v11)[1](v11);
    return v12;
  }

  v5 = v4[12];
  if (!v5)
  {
    v5 = v4[11];
    if (!v5)
    {
      v5 = v4[10];
    }
  }

  v6 = v4[13];
  v13 = v6;
  if (v6)
  {
    v7 = a2;
    (**v6)(v6);
    a2 = v7;
  }

  v8 = v4[15];
  if (v8)
  {
    v9 = v8 + 8;
  }

  else
  {
    v9 = 0;
  }

  result = (*(*v3 + 16))(v3, a2, v5, &v13, v9);
  v11 = v13;
  if (v13)
  {
    goto LABEL_15;
  }

  return result;
}

uint64_t std::__function::__func<webrtc::JsepTransportController::JsepTransportController(webrtc::Environment const&,webrtc::Thread *,webrtc::PortAllocator *,webrtc::AsyncDnsResolverFactoryInterface *,webrtc::PayloadTypePicker &,webrtc::JsepTransportController::Config)::$_1,std::allocator<webrtc::JsepTransportController::JsepTransportController(webrtc::Environment const&,webrtc::Thread *,webrtc::PortAllocator *,webrtc::AsyncDnsResolverFactoryInterface *,webrtc::PayloadTypePicker &,webrtc::JsepTransportController::Config)::$_1>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_288295058;
  a2[1] = v2;
  return result;
}

__n128 webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::RTCError webrtc::Thread::BlockingCall<webrtc::JsepTransportController::SetLocalDescription(webrtc::SdpType,webrtc::SessionDescription const*,webrtc::SessionDescription const*)::$_0,webrtc::RTCError,void>(webrtc::JsepTransportController::SetLocalDescription(webrtc::SdpType,webrtc::SessionDescription const*,webrtc::SessionDescription const*)::$_0 &&,webrtc::Location const&)::{lambda(void)#1}>(uint64_t *a1)
{
  webrtc::JsepTransportController::SetLocalDescription(&v5, *a1[1], *(a1[1] + 8), *(a1[1] + 16), *(a1[1] + 24));
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

__n128 webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::RTCError webrtc::Thread::BlockingCall<webrtc::JsepTransportController::SetRemoteDescription(webrtc::SdpType,webrtc::SessionDescription const*,webrtc::SessionDescription const*)::$_0,webrtc::RTCError,void>(webrtc::JsepTransportController::SetRemoteDescription(webrtc::SdpType,webrtc::SessionDescription const*,webrtc::SessionDescription const*)::$_0 &&,webrtc::Location const&)::{lambda(void)#1}>(uint64_t *a1)
{
  v2 = a1[1];
  v3 = *v2;
  v4 = *(v2 + 8);
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = *(*v2 + 360);
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
    webrtc::JsepTransportController::ApplyDescription_n(&v14, v3, 0, v4, v6, v5);
    v10 = *a1;
    *v10 = v14;
    if ((*(v10 + 31) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v9 = *(v3 + 360);
  v18 = v3;
  v19 = v4;
  v20 = v6;
  v21 = v5;
  v14 = 0;
  v16[14] = 0;
  *v16 = 0;
  v15 = 0uLL;
  *&v16[5] = 0;
  v22[0] = &v14;
  v22[1] = &v18;
  (*(*v9 + 96))(v9, v22, webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::RTCError webrtc::Thread::BlockingCall<webrtc::JsepTransportController::SetRemoteDescription(webrtc::SdpType,webrtc::SessionDescription const*,webrtc::SessionDescription const*)::$_0,webrtc::RTCError,void>(webrtc::JsepTransportController::SetRemoteDescription(webrtc::SdpType,webrtc::SessionDescription const*,webrtc::SessionDescription const*)::$_0 &&,webrtc::Location const&)::{lambda(void)#1}>, &v17);
  v10 = *a1;
  *v10 = v14;
  if (*(v10 + 31) < 0)
  {
LABEL_4:
    operator delete(*(v10 + 8));
  }

LABEL_5:
  result = v15;
  *(v10 + 24) = *v16;
  *(v10 + 8) = result;
  v12 = *&v16[8];
  *(v10 + 35) = *&v16[11];
  *(v10 + 32) = v12;
  return result;
}

uint64_t *webrtc::FunctionView<void ()(void)>::CallVoidPtr<std::optional<webrtc::SSLRole> webrtc::Thread::BlockingCall<webrtc::JsepTransportController::GetDtlsRole(std::string const&)::$_0,std::optional<webrtc::SSLRole>,void>(webrtc::JsepTransportController::GetDtlsRole(std::string const&)::$_0 &&,webrtc::Location const&)::{lambda(void)#1}>(uint64_t *a1)
{
  v2 = a1[1];
  v4 = *v2;
  v3 = v2[1];
  v5 = *(*v2 + 360);
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
    result = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(v4 + 408, v3);
    if ((v4 + 416) == result)
    {
      v9 = 0;
    }

    else
    {
      v9 = result[7];
      if (v9)
      {
        LODWORD(v14[0]) = 0;
        result = (*(**(*(v9 + 104) + 144) + 104))(*(*(v9 + 104) + 144), v14);
        v9 = LODWORD(v14[0]) | 0x100000000;
        if (!result)
        {
          v9 = 0;
        }
      }
    }
  }

  else
  {
    v7 = *(v4 + 360);
    v13[0] = v4;
    v13[1] = v3;
    LOBYTE(v15) = 0;
    BYTE4(v15) = 0;
    v14[0] = &v15;
    v14[1] = v13;
    result = (*(*v7 + 96))(v7, v14, webrtc::FunctionView<void ()(void)>::CallVoidPtr<std::optional<webrtc::SSLRole> webrtc::Thread::BlockingCall<webrtc::JsepTransportController::GetDtlsRole(std::string const&)::$_0,std::optional<webrtc::SSLRole>,void>(webrtc::JsepTransportController::GetDtlsRole(std::string const&)::$_0 &&,webrtc::Location const&)::{lambda(void)#1}>, &v12);
    v9 = v15;
  }

  v10 = *a1;
  *v10 = v9;
  *(v10 + 4) = BYTE4(v9);
  return result;
}

__n128 webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::RTCErrorOr<webrtc::PayloadType> webrtc::Thread::BlockingCall<webrtc::JsepTransportController::SuggestPayloadType(std::string const&,webrtc::Codec)::$_0,webrtc::RTCErrorOr<webrtc::PayloadType>,void>(webrtc::JsepTransportController::SuggestPayloadType(std::string const&,webrtc::Codec)::$_0 &&,webrtc::Location const&)::{lambda(void)#1}>(uint64_t *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = a1[1];
  v3 = *v2;
  v4 = v2[1];
  webrtc::Codec::Codec(v13, v2[2]);
  (*(*v3 + 16))(&v8, v3, v4, v13);
  webrtc::Codec::~Codec(v13);
  v5 = *a1;
  *v5 = v8;
  if (*(v5 + 31) < 0)
  {
    operator delete(*(v5 + 8));
  }

  result = v9;
  *(v5 + 24) = v10;
  *(v5 + 8) = result;
  v7 = v11[0];
  *(v5 + 35) = *(v11 + 3);
  *(v5 + 32) = v7;
  *(v5 + 40) = v12;
  return result;
}

__n128 webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::RTCError webrtc::Thread::BlockingCall<webrtc::JsepTransportController::AddLocalMapping(std::string const&,webrtc::PayloadType,webrtc::Codec const&)::$_0,webrtc::RTCError,void>(webrtc::JsepTransportController::AddLocalMapping(std::string const&,webrtc::PayloadType,webrtc::Codec const&)::$_0 &&,webrtc::Location const&)::{lambda(void)#1}>(uint64_t *a1)
{
  (*(**a1[1] + 24))(&v5);
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

uint64_t webrtc::FunctionView<void ()(void)>::CallVoidPtr<BOOL webrtc::Thread::BlockingCall<webrtc::JsepTransportController::SetLocalCertificate(webrtc::scoped_refptr<webrtc::RTCCertificate> const&)::$_0,BOOL,void>(webrtc::JsepTransportController::SetLocalCertificate(webrtc::scoped_refptr<webrtc::RTCCertificate> const&)::$_0 &&,webrtc::Location const&)::{lambda(void)#1}>(uint64_t a1)
{
  result = webrtc::JsepTransportController::SetLocalCertificate(**(a1 + 8), *(*(a1 + 8) + 8));
  **a1 = result;
  return result;
}

__n128 webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::RTCError webrtc::Thread::BlockingCall<webrtc::JsepTransportController::RemoveRemoteCandidates(std::vector<webrtc::Candidate> const&)::$_0,webrtc::RTCError,void>(webrtc::JsepTransportController::RemoveRemoteCandidates(std::vector<webrtc::Candidate> const&)::$_0 &&,webrtc::Location const&)::{lambda(void)#1}>(uint64_t *a1)
{
  webrtc::JsepTransportController::RemoveRemoteCandidates(&v5, *a1[1], *(a1[1] + 8));
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

void std::__tree<std::__value_type<std::string,std::vector<webrtc::Candidate>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<webrtc::Candidate>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<webrtc::Candidate>>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::vector<webrtc::Candidate>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<webrtc::Candidate>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<webrtc::Candidate>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::vector<webrtc::Candidate>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<webrtc::Candidate>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<webrtc::Candidate>>>>::destroy(*(a1 + 1));
    v2 = *(a1 + 7);
    if (v2)
    {
      v3 = *(a1 + 8);
      v4 = *(a1 + 7);
      if (v3 != v2)
      {
        do
        {
          webrtc::Candidate::~Candidate((v3 - 432));
        }

        while (v3 != v2);
        v4 = *(a1 + 7);
      }

      *(a1 + 8) = v2;
      operator delete(v4);
    }

    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
      v5 = a1;
    }

    else
    {
      v5 = a1;
    }

    operator delete(v5);
  }
}

__n128 webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::RTCError webrtc::Thread::BlockingCall<webrtc::JsepTransportController::RollbackTransports(void)::$_0,webrtc::RTCError,void>(webrtc::JsepTransportController::RollbackTransports(void)::$_0 &&,webrtc::Location const&)::{lambda(void)#1}>(uint64_t *a1)
{
  webrtc::JsepTransportController::RollbackTransports(&v5, *a1[1]);
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

uint64_t sigslot::_opaque_connection::emitter<webrtc::JsepTransportController,webrtc::PacketTransportInternal *>(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = a1[1];
  if (v3)
  {
    v4 = v3 - 8;
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

uint64_t sigslot::_opaque_connection::emitter<webrtc::JsepTransportController,webrtc::IceTransportInternal *,webrtc::Candidate const&>(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = a1[1];
  if (v3)
  {
    v4 = v3 - 8;
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

uint64_t *absl::internal_any_invocable::LocalInvoker<false,void,webrtc::JsepTransportController::CreateDtlsTransport(webrtc::ContentInfo const&,webrtc::IceTransportInternal *)::$_1 &,webrtc::IceTransportInternal *,webrtc::IceCandidateErrorEvent const&>(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *result;
  v9 = (*result + 248);
  if (*v9 == 1)
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/callback_list.cc", 71, "!send_in_progress_", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v15);
    return absl::internal_any_invocable::LocalInvoker<false,void,webrtc::JsepTransportController::CreateDtlsTransport(webrtc::ContentInfo const&,webrtc::IceTransportInternal *)::$_2 &,webrtc::IceTransportInternal *,std::vector<webrtc::Candidate> const&>();
  }

  else
  {
    *(v8 + 248) = 1;
    v10 = *(v8 + 224);
    v11 = *(v8 + 232);
    if (v10 == v11)
    {
      *v9 = 0;
    }

    else
    {
      v13 = 0;
      do
      {
        result = (*(v10 + 40))(v10 + 8, a3);
        v14 = *v10;
        v10 += 56;
        v13 |= v14 == v9;
      }

      while (v10 != v11);
      *v9 = 0;
      if (v13)
      {

        return webrtc::callback_list_impl::CallbackListReceivers::RemoveReceivers((v8 + 224), v9);
      }
    }
  }

  return result;
}

uint64_t *absl::internal_any_invocable::LocalInvoker<false,void,webrtc::JsepTransportController::CreateDtlsTransport(webrtc::ContentInfo const&,webrtc::IceTransportInternal *)::$_2 &,webrtc::IceTransportInternal *,std::vector<webrtc::Candidate> const&>(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *result;
  if (*(*result + 280) == 1)
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/callback_list.cc", 71, "!send_in_progress_", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v16);
    return sigslot::_opaque_connection::emitter<webrtc::JsepTransportController,webrtc::IceTransportInternal *>(v15);
  }

  else
  {
    v9 = (v8 + 280);
    *(v8 + 280) = 1;
    v10 = *(v8 + 256);
    v11 = *(v8 + 264);
    if (v10 == v11)
    {
      *v9 = 0;
    }

    else
    {
      v13 = 0;
      do
      {
        result = (*(v10 + 40))(v10 + 8, a3);
        v14 = *v10;
        v10 += 56;
        v13 |= v14 == v9;
      }

      while (v10 != v11);
      *v9 = 0;
      if (v13)
      {

        return webrtc::callback_list_impl::CallbackListReceivers::RemoveReceivers((v8 + 256), (v8 + 280));
      }
    }
  }

  return result;
}

uint64_t sigslot::_opaque_connection::emitter<webrtc::JsepTransportController,webrtc::IceTransportInternal *>(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = a1[1];
  if (v3)
  {
    v4 = v3 - 8;
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

uint64_t *absl::internal_any_invocable::LocalInvoker<false,void,webrtc::JsepTransportController::CreateDtlsTransport(webrtc::ContentInfo const&,webrtc::IceTransportInternal *)::$_3 &,webrtc::CandidatePairChangeEvent const&>(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *result;
  if (*(*result + 312) == 1)
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/callback_list.cc", 71, "!send_in_progress_", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v15);
    return webrtc::webrtc_function_impl::CallHelpers<void ()(webrtc::SSLHandshakeError)>::CallInlineStorage<webrtc::JsepTransportController::CreateDtlsTransport(webrtc::ContentInfo const&,webrtc::IceTransportInternal *)::$_5>();
  }

  else
  {
    v9 = (v8 + 312);
    *(v8 + 312) = 1;
    v10 = *(v8 + 288);
    v11 = *(v8 + 296);
    if (v10 == v11)
    {
      *v9 = 0;
    }

    else
    {
      v13 = 0;
      do
      {
        result = (*(v10 + 40))(v10 + 8, a2);
        v14 = *v10;
        v10 += 56;
        v13 |= v14 == v9;
      }

      while (v10 != v11);
      *v9 = 0;
      if (v13)
      {

        return webrtc::callback_list_impl::CallbackListReceivers::RemoveReceivers((v8 + 288), (v8 + 312));
      }
    }
  }

  return result;
}

uint64_t webrtc::webrtc_function_impl::CallHelpers<void ()(webrtc::SSLHandshakeError)>::CallInlineStorage<webrtc::JsepTransportController::CreateDtlsTransport(webrtc::ContentInfo const&,webrtc::IceTransportInternal *)::$_5>(uint64_t a1, int a2)
{
  v2 = *(*a1 + 728);
  v4 = a2;
  if (!v2)
  {
    std::__throw_bad_function_call[abi:sn200100]();
    JUMPOUT(0x2732576BCLL);
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t std::__function::__func<webrtc::JsepTransportController::CreateDtlsSrtpTransport(std::string const&,webrtc::DtlsTransportInternal *,webrtc::DtlsTransportInternal *)::$_0,std::allocator<webrtc::JsepTransportController::CreateDtlsSrtpTransport(std::string const&,webrtc::DtlsTransportInternal *,webrtc::DtlsTransportInternal *)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2882950A0;
  a2[1] = v2;
  return result;
}

void std::__tree<std::__value_type<webrtc::ContentGroup const*,std::vector<int>>,std::__map_value_compare<webrtc::ContentGroup const*,std::__value_type<webrtc::ContentGroup const*,std::vector<int>>,std::less<webrtc::ContentGroup const*>,true>,std::allocator<std::__value_type<webrtc::ContentGroup const*,std::vector<int>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<webrtc::ContentGroup const*,std::vector<int>>,std::__map_value_compare<webrtc::ContentGroup const*,std::__value_type<webrtc::ContentGroup const*,std::vector<int>>,std::less<webrtc::ContentGroup const*>,true>,std::allocator<std::__value_type<webrtc::ContentGroup const*,std::vector<int>>>>::destroy(*a1);
    std::__tree<std::__value_type<webrtc::ContentGroup const*,std::vector<int>>,std::__map_value_compare<webrtc::ContentGroup const*,std::__value_type<webrtc::ContentGroup const*,std::vector<int>>,std::less<webrtc::ContentGroup const*>,true>,std::allocator<std::__value_type<webrtc::ContentGroup const*,std::vector<int>>>>::destroy(a1[1]);
    v2 = a1[5];
    if (v2)
    {
      a1[6] = v2;
      operator delete(v2);
    }

    operator delete(a1);
  }
}

void webrtc::KeyframeIntervalSettings::KeyframeIntervalSettings(void *a1)
{
  v1 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288293910;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  operator new();
}

void webrtc::LegacyEncodedAudioFrame::~LegacyEncodedAudioFrame(webrtc::LegacyEncodedAudioFrame *this)
{
  v1 = *(this + 4);
  *(this + 4) = 0;
  if (v1)
  {
    MEMORY[0x2743DA520](v1, 0x1000C8077774924);
  }
}

{
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    MEMORY[0x2743DA520](v2, 0x1000C8077774924);
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::LegacyEncodedAudioFrame::Decode@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v16 = 1;
  v7 = a1[4];
  v9 = a1[1];
  v8 = a1[2];
  v10 = (*(*v9 + 88))(v9);
  v11 = (*(*v9 + 64))(v9, v7, v8);
  if ((v11 & 0x80000000) == 0 && (v12 = v11, result = (*(*v9 + 96))(v9), result * (2 * v12) > 2 * a3) || (result = (*(*v9 + 104))(v9, v7, v8, v10, a2, &v16), (result & 0x80000000) != 0))
  {
    v15 = 0;
    *a4 = 0;
  }

  else
  {
    v14 = v16;
    *a4 = result;
    *(a4 + 8) = v14;
    v15 = 1;
  }

  *(a4 + 16) = v15;
  return result;
}

void webrtc::LegacyEncodedAudioFrame::SplitBySamples(unint64_t *a1@<X1>, uint64_t a2@<X3>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (20 * a2 < *a1)
  {
    v3 = *a1;
    do
    {
      v4 = v3;
      v3 >>= 1;
    }

    while (v4 >= 40 * a2);
    if (*a1 < v4)
    {
      v4 = *a1;
    }

    if (v4)
    {
      operator new[]();
    }

    operator new();
  }

  operator new();
}

void webrtc::LegacyStatsCollector::~LegacyStatsCollector(webrtc::LegacyStatsCollector *this)
{
  *this = &unk_288295120;
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
    operator delete(v2);
  }

  std::__tree<std::__value_type<std::string,webrtc::StatsReport *>,std::__map_value_compare<std::string,std::__value_type<std::string,webrtc::StatsReport *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,webrtc::StatsReport *>>>::destroy(*(this + 6));
  webrtc::StatsCollection::~StatsCollection((this + 8));
}

{
  *this = &unk_288295120;
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
    operator delete(v2);
  }

  std::__tree<std::__value_type<std::string,webrtc::StatsReport *>,std::__map_value_compare<std::string,std::__value_type<std::string,webrtc::StatsReport *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,webrtc::StatsReport *>>>::destroy(*(this + 6));
  webrtc::StatsCollection::~StatsCollection((this + 8));

  JUMPOUT(0x2743DA540);
}

double webrtc::LegacyStatsCollector::GetTimeNow(webrtc::LegacyStatsCollector *this)
{
  if (webrtc::g_clock)
  {
    v1 = (*(*webrtc::g_clock + 16))(webrtc::g_clock) / 1000;
  }

  else
  {
    gettimeofday(&v3, 0);
    v1 = v3.tv_usec + 1000000 * v3.tv_sec;
  }

  return (v1 / 1000);
}

void webrtc::LegacyStatsCollector::AddStream(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 40))(&__p, a2);
  v3 = __p;
  if (__p != v14)
  {
  }

  if (__p)
  {
    v4 = v14;
    v5 = __p;
    if (v14 != __p)
    {
      do
      {
        v7 = *(v4 - 1);
        v4 -= 8;
        v6 = v7;
        if (v7)
        {
          (*(*v6 + 8))(v6);
        }
      }

      while (v4 != v3);
      v5 = __p;
    }

    v14 = v3;
    operator delete(v5);
  }

  (*(*a2 + 48))(&__p, a2);
  v8 = __p;
  if (__p != v14)
  {
  }

  if (__p)
  {
    v9 = v14;
    v10 = __p;
    if (v14 != __p)
    {
      do
      {
        v12 = *(v9 - 1);
        v9 -= 8;
        v11 = v12;
        if (v12)
        {
          (*(*v11 + 8))(v11);
        }
      }

      while (v9 != v8);
      v10 = __p;
    }

    v14 = v8;
    operator delete(v10);
  }
}

void webrtc::LegacyStatsCollector::AddTrack(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 32))(&v9, a2);
  if ((v11 & 0x80000000) == 0)
  {
    if (v11 != 5)
    {
      goto LABEL_20;
    }

    if (v9 != *"audio" || BYTE4(v9) != webrtc::kMediaTypeAudio[4])
    {
      goto LABEL_20;
    }

LABEL_17:
  }

  if (v10 != 5)
  {
    operator delete(v9);
    goto LABEL_20;
  }

  v5 = *v9 != *"audio" || v9[4] != webrtc::kMediaTypeAudio[4];
  operator delete(v9);
  if (!v5)
  {
    goto LABEL_17;
  }

LABEL_20:
  (*(*a2 + 32))(&v9, a2);
  if ((v11 & 0x80000000) == 0)
  {
    if (v11 != 5)
    {
      return;
    }

    if (v9 != *"video" || BYTE4(v9) != webrtc::kMediaTypeVideo[4])
    {
      return;
    }

LABEL_36:
  }

  if (v10 != 5)
  {
    operator delete(v9);
    return;
  }

  v8 = *v9 != *"video" || v9[4] != webrtc::kMediaTypeVideo[4];
  operator delete(v9);
  if (!v8)
  {
    goto LABEL_36;
  }
}

void webrtc::LegacyStatsCollector::AddLocalAudioTrack(webrtc::LegacyStatsCollector *this, webrtc::AudioTrackInterface *a2, int a3)
{
  v3 = *(this + 13);
  v4 = *(this + 14);
  if (v3 >= v4)
  {
    v5 = *(this + 12);
    v6 = ((v3 - v5) >> 4) + 1;
    if (v6 >> 60)
    {
      goto LABEL_13;
    }

    v7 = v4 - v5;
    if (v7 >> 3 > v6)
    {
      v6 = v7 >> 3;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF0)
    {
      v6 = 0xFFFFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      if (!(v6 >> 60))
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }
  }

  else if (v3)
  {
    *v3 = a2;
    *(v3 + 8) = a3;
    *(this + 13) = v3 + 16;
    (*(*a2 + 40))(__p, a2);
    operator new();
  }

  __break(1u);
LABEL_13:
  std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
}

uint64_t webrtc::LegacyStatsCollector::RemoveLocalAudioTrack(uint64_t result, uint64_t a2, int a3)
{
  v3 = *(result + 96);
  v4 = *(result + 104);
  v5 = v3;
  if (v3 != v4)
  {
    while (*v3 != a2 || *(v3 + 8) != a3)
    {
      v3 += 16;
      v5 += 16;
      if (v3 == v4)
      {
        return result;
      }
    }
  }

  v7 = v3 + 16;
  if (v5 != v4 && v7 != v4)
  {
    do
    {
      v9 = *(v7 + 8);
      if (*v7 != a2 || v9 != a3)
      {
        *v3 = *v7;
        *(v3 + 8) = v9;
        v3 += 16;
      }

      v7 += 16;
    }

    while (v7 != v4);
  }

  if (v3 > v4)
  {
    __break(1u);
  }

  else if (v3 != v4)
  {
    *(result + 104) = v3;
  }

  return result;
}

_BYTE *webrtc::LegacyStatsCollector::GetStats(void *a1, uint64_t a2, void *a3)
{
  {
    operator new();
  }

  result = pthread_getspecific(*(webrtc::ThreadManager::Instance(void)::thread_manager + 88));
  v7 = result;
  v8 = result[217];
  result[217] = 0;
  if (a2)
  {
    (*(*(a1[8] + 8) + 16))(__p);
    operator new();
  }

  v9 = a1[3];
  if (v9 > (a3[2] - *a3) >> 3)
  {
    if (!(v9 >> 61))
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v10 = a1 + 1;
  for (i = a1[2]; i != v10; i = *(i + 8))
  {
    __p[0] = *(i + 16);
    result = std::vector<webrtc::Connection const*>::push_back[abi:sn200100](a3, __p);
  }

  v7[217] = v8;
  return result;
}

uint64_t webrtc::LegacyStatsCollector::UpdateStats(webrtc::LegacyStatsCollector *a1)
{
  if (webrtc::g_clock)
  {
    result = (*(*webrtc::g_clock + 16))(webrtc::g_clock);
  }

  else
  {
    if (!dword_28100D8E4)
    {
      mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
    }

    result = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
  }

  v3 = result / 1000000;
  v4 = *(a1 + 9);
  if (!v4 || v4 + 50 <= v3)
  {
    *(a1 + 9) = v3;
    *(a1 + 10) = (*(*a1 + 40))(a1);
    webrtc::LegacyStatsCollector::ExtractSessionAndDataInfo(a1);
  }

  return result;
}

void webrtc::LegacyStatsCollector::ExtractSessionAndDataInfo(webrtc::LegacyStatsCollector *this)
{
  v36 = *MEMORY[0x277D85DE8];
  v24[0] = 0;
  v24[1] = 0;
  *v20 = 0u;
  *v21 = 0u;
  v22 = 0u;
  v23 = v24;
  v17 = &v17;
  v18 = &v17;
  v19 = 0;
  (*(**(this + 8) + 560))(&v16);
  v2 = (*(**(this + 8) + 536))();
  (*(**(this + 8) + 576))(&__s);
  (*(*(*(this + 8) + 8) + 32))(&__p);
  v32 = v20;
  v33 = this;
  v34 = &v16;
  v35 = &v17;
  (*(*v2 + 96))(v2, &__s, webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::LegacyStatsCollector::ExtractSessionAndDataInfo(void)::$_0>, &v25);
  if (v31 == 1 && v30 < 0)
  {
    operator delete(__p);
  }

  if (v28 == 1 && SHIBYTE(v27) < 0)
  {
    operator delete(__s);
  }

  v13 = &v13;
  v14 = &v13;
  v15 = 0;
  v3 = v19;
  if (v19)
  {
    v5 = v17;
    v4 = v18;
    v6 = *(v17 + 8);
    v7 = *v18;
    *(v7 + 8) = v6;
    *v6 = v7;
    v8 = v13;
    *(v13 + 8) = v4;
    *v4 = v8;
    *(v5 + 8) = &v13;
    v13 = v5;
    v15 = v3;
    v19 = 0;
  }

  webrtc::StatsCollection::MergeCollection(this + 8, &v13);
  if (v15)
  {
    v9 = v14;
    v10 = *(v13 + 8);
    v11 = *v14;
    *(v11 + 8) = v10;
    *v10 = v11;
    v15 = 0;
    if (v9 != &v13)
    {
      do
      {
        v12 = v9[1];
        operator delete(v9);
        v9 = v12;
      }

      while (v12 != &v13);
    }
  }

  {
    {
      operator new();
    }
  }

  *(pthread_getspecific(*(webrtc::ThreadManager::Instance(void)::thread_manager + 88)) + 217) = 0;
  (*(*(*(this + 8) + 8) + 16))(&__s);
  operator new();
}

uint64_t webrtc::LegacyStatsCollector::ExtractBweInfo(webrtc::LegacyStatsCollector *this)
{
  result = (*(**(this + 8) + 424))(*(this + 8));
  if (result != 5)
  {
    (*(**(this + 8) + 600))(&v13);
    v10 = 0;
    v11 = 0;
    v8 = v13;
    v9 = v14;
    v12 = v15;
    (*(**(this + 8) + 560))(&v6);
    v3 = v6;
    v4 = v7;
    if (v6 != v7)
    {
      do
      {
        if ((*(**v3 + 32))() == 1)
        {
          v5 = *(*(*v3 + 16) + 160);
          if (v5)
          {
            (*(*v5 + 48))(v5);
            operator new();
          }
        }

        v3 += 8;
      }

      while (v3 != v4);
    }

    operator new();
  }

  return result;
}

void webrtc::LegacyStatsCollector::ExtractMediaInfo(uint64_t a1)
{
  v35 = 0;
  v36 = 0;
  v37 = 0;
  (*(**(a1 + 64) + 560))(&v33);
  {
    operator new();
  }

  v1 = pthread_getspecific(*(webrtc::ThreadManager::Instance(void)::thread_manager + 88));
  v28 = v1[217];
  v1[217] = 0;
  v2 = v33;
  if (v33 != v34)
  {
    do
    {
      v3 = *(*(*v2 + 16) + 160);
      if (v3)
      {
        v4 = (*(*v3 + 16))(v3);
        v5 = *v3;
        if (v4)
        {
          (*(v5 + 24))(v3);
          operator new();
        }

        (*(v5 + 32))(v3);
        operator new();
      }

      v2 += 8;
    }

    while (v2 != v34);
  }

  v1[217] = v28;
  v6 = (*(**(a1 + 64) + 544))(*(a1 + 64));
  __p[0] = &v33;
  __p[1] = &v35;
  (*(*v6 + 96))(v6, __p, webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::LegacyStatsCollector::ExtractMediaInfo(std::map<std::string,std::string> const&)::$_0>, v32);
  {
    operator new();
  }

  v7 = pthread_getspecific(*(webrtc::ThreadManager::Instance(void)::thread_manager + 88));
  v29 = v7[217];
  v31 = v7;
  v7[217] = 0;
  v9 = v35;
  v10 = v36;
  if (v35 == v36)
  {
    v13 = *(a1 + 96);
    if (v13 == *(a1 + 104))
    {
      goto LABEL_22;
    }

LABEL_16:
    v14 = *(v13 + 8);
    __p[1] = 0;
    v39 = 0x1600000000000000;
    __p[0] = 0;
    v15 = absl::numbers_internal::FastIntToBuffer(v14, __p, v8);
    v16 = (v15 - __p);
    if ((SHIBYTE(v39) & 0x8000000000000000) != 0)
    {
      if (__p[1] >= v16)
      {
        v17 = __p[0];
        __p[1] = (v15 - __p);
LABEL_21:
        v16[v17] = 0;
        operator new();
      }
    }

    else if (v16 <= SHIBYTE(v39))
    {
      HIBYTE(v39) = v15 - __p;
      v17 = __p;
      goto LABEL_21;
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v11 = 0;
  do
  {
    (*(**v9 + 24))(*v9, a1);
    v12 = *v9++;
    v11 |= (*(*v12 + 32))(v12);
  }

  while (v9 != v10);
  v13 = *(a1 + 96);
  if (v13 != *(a1 + 104))
  {
    goto LABEL_16;
  }

LABEL_22:
  v31[217] = v29;
  v18 = v33;
  if (v33)
  {
    v19 = v34;
    v20 = v33;
    if (v34 != v33)
    {
      do
      {
        v22 = *(v19 - 1);
        v19 -= 8;
        v21 = v22;
        if (v22)
        {
          (*(*v21 + 8))(v21);
        }
      }

      while (v19 != v18);
      v20 = v33;
    }

    v34 = v18;
    operator delete(v20);
  }

  v23 = v35;
  if (v35)
  {
    v24 = v36;
    v25 = v35;
    if (v36 != v35)
    {
      do
      {
        v27 = *--v24;
        v26 = v27;
        *v24 = 0;
        if (v27)
        {
          (*(*v26 + 8))(v26);
        }
      }

      while (v24 != v23);
      v25 = v35;
    }

    v36 = v23;
    operator delete(v25);
  }
}

void webrtc::LegacyStatsCollector::ExtractSenderInfo(webrtc::LegacyStatsCollector *this)
{
  (*(**(this + 8) + 128))(&v20);
  v1 = v20;
  v2 = v21;
  if (v20 != v21)
  {
    while (1)
    {
      if ((*(**v1 + 56))())
      {
        (*(**v1 + 40))(&v19);
        if (v19)
        {
          break;
        }
      }

LABEL_3:
      v1 += 8;
      if (v1 == v2)
      {
        v1 = v20;
        goto LABEL_33;
      }
    }

    (*(*v19 + 32))(__p);
    if (SHIBYTE(v18) < 0)
    {
      if (__p[1] != 5)
      {
        operator delete(__p[0]);
        goto LABEL_27;
      }

      v5 = *__p[0] != *"video" || *(__p[0] + 4) != webrtc::kMediaTypeVideo[4];
      operator delete(__p[0]);
      if (v5)
      {
LABEL_27:
        if (v19)
        {
          (*(*v19 + 8))(v19);
        }

        goto LABEL_3;
      }
    }

    else
    {
      if (SHIBYTE(v18) != 5)
      {
        goto LABEL_27;
      }

      if (LODWORD(__p[0]) != *"video" || BYTE4(__p[0]) != webrtc::kMediaTypeVideo[4])
      {
        goto LABEL_27;
      }
    }

    v6 = (*(*v19 + 88))(v19);
    if ((*(*v6 + 64))(v6, &v16))
    {
      v7 = (*(**v1 + 56))();
      __p[1] = 0;
      v18 = 0x1600000000000000;
      __p[0] = 0;
      v9 = absl::numbers_internal::FastIntToBuffer(v7, __p, v8);
      v10 = (v9 - __p);
      if ((SHIBYTE(v18) & 0x8000000000000000) != 0)
      {
        if (__p[1] >= v10)
        {
          v11 = __p[0];
          __p[1] = (v9 - __p);
LABEL_31:
          v10[v11] = 0;
          operator new();
        }
      }

      else if (v10 <= SHIBYTE(v18))
      {
        HIBYTE(v18) = v9 - __p;
        v11 = __p;
        goto LABEL_31;
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    goto LABEL_27;
  }

LABEL_33:
  if (v1)
  {
    v12 = v21;
    v13 = v1;
    if (v21 != v1)
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

      while (v12 != v1);
      v13 = v20;
    }

    v21 = v1;
    operator delete(v13);
  }
}

void webrtc::LegacyStatsCollector::PrepareReport(int a1, int a2, absl::numbers_internal *this)
{
  __p[1] = 0;
  v7 = 0x1600000000000000;
  __p[0] = 0;
  v3 = absl::numbers_internal::FastIntToBuffer(this, __p, this);
  v4 = (v3 - __p);
  if ((SHIBYTE(v7) & 0x8000000000000000) != 0)
  {
    if (__p[1] >= v4)
    {
      v5 = __p[0];
      __p[1] = (v3 - __p);
LABEL_6:
      v4[v5] = 0;
      operator new();
    }
  }

  else if (v4 <= SHIBYTE(v7))
  {
    HIBYTE(v7) = v3 - __p;
    v5 = __p;
    goto LABEL_6;
  }

  std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
}

uint64_t webrtc::LegacyStatsCollector::AddCertificateReports(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    operator new();
  }

  return 0;
}

uint64_t webrtc::anonymous namespace::SetAudioProcessingStats(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 60) == 1)
  {
    result = webrtc::StatsReport::AddInt(result, 69, *(a2 + 56));
    if (*(a2 + 68) != 1)
    {
LABEL_3:
      if (*(a2 + 16) != 1)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if (*(a2 + 68) != 1)
  {
    goto LABEL_3;
  }

  result = webrtc::StatsReport::AddInt(v3, 70, *(a2 + 64));
  if (*(a2 + 16) != 1)
  {
LABEL_4:
    if (*(a2 + 32) != 1)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  result = webrtc::StatsReport::AddInt(v3, 71, *(a2 + 8));
  if (*(a2 + 32) != 1)
  {
LABEL_5:
    if (*(a2 + 80) != 1)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = webrtc::StatsReport::AddInt(v3, 72, *(a2 + 24));
  if (*(a2 + 80) != 1)
  {
LABEL_6:
    if (*(a2 + 96) != 1)
    {
      goto LABEL_7;
    }

LABEL_16:
    v6 = *(a2 + 88);
    result = webrtc::StatsReport::AddFloat(v3, 117, v6);
    if (*(a2 + 48) != 1)
    {
      return result;
    }

    goto LABEL_8;
  }

LABEL_15:
  v5 = *(a2 + 72);
  result = webrtc::StatsReport::AddFloat(v3, 116, v5);
  if (*(a2 + 96) == 1)
  {
    goto LABEL_16;
  }

LABEL_7:
  if (*(a2 + 48) != 1)
  {
    return result;
  }

LABEL_8:
  v4 = *(a2 + 40);

  return webrtc::StatsReport::AddFloat(v3, 1, v4);
}

void webrtc::LegacyStatsCollector::TransportStats::~TransportStats(webrtc::LegacyStatsCollector::TransportStats *this)
{
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    v3 = *(v2 + 72);
    *(v2 + 72) = 0;
    if (v3)
    {
      std::default_delete<webrtc::SSLCertificateStats>::operator()[abi:sn200100](v2 + 72, v3);
    }

    if (*(v2 + 71) < 0)
    {
      operator delete(*(v2 + 48));
      if ((*(v2 + 47) & 0x80000000) == 0)
      {
LABEL_6:
        if ((*(v2 + 23) & 0x80000000) == 0)
        {
LABEL_7:
          MEMORY[0x2743DA540](v2, 0x1032C40C3789C24);
          goto LABEL_8;
        }

LABEL_27:
        operator delete(*v2);
        goto LABEL_7;
      }
    }

    else if ((*(v2 + 47) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    operator delete(*(v2 + 24));
    if ((*(v2 + 23) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_8:
  v4 = *(this + 9);
  *(this + 9) = 0;
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = *(v4 + 72);
  *(v4 + 72) = 0;
  if (v5)
  {
    std::default_delete<webrtc::SSLCertificateStats>::operator()[abi:sn200100](v4 + 72, v5);
  }

  if ((*(v4 + 71) & 0x80000000) == 0)
  {
    if ((*(v4 + 47) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

LABEL_29:
    operator delete(*(v4 + 24));
    if ((*(v4 + 23) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

LABEL_30:
    operator delete(*v4);
    goto LABEL_14;
  }

  operator delete(*(v4 + 48));
  if (*(v4 + 47) < 0)
  {
    goto LABEL_29;
  }

LABEL_13:
  if (*(v4 + 23) < 0)
  {
    goto LABEL_30;
  }

LABEL_14:
  MEMORY[0x2743DA540](v4, 0x1032C40C3789C24);
LABEL_15:
  v6 = *(this + 6);
  if (v6)
  {
    v7 = *(this + 7);
    v8 = *(this + 6);
    if (v7 != v6)
    {
      do
      {
        webrtc::TransportChannelStats::~TransportChannelStats((v7 - 192));
      }

      while (v7 != v6);
      v8 = *(this + 6);
    }

    *(this + 7) = v6;
    operator delete(v8);
  }

  if ((*(this + 47) & 0x80000000) == 0)
  {
    if ((*(this + 23) & 0x80000000) == 0)
    {
      return;
    }

LABEL_24:
    operator delete(*this);
    return;
  }

  operator delete(*(this + 3));
  if (*(this + 23) < 0)
  {
    goto LABEL_24;
  }
}

void webrtc::anonymous namespace::VoiceChannelStatsGatherer::~VoiceChannelStatsGatherer(webrtc::_anonymous_namespace_::VoiceChannelStatsGatherer *this)
{
  webrtc::VoiceMediaInfo::~VoiceMediaInfo(this + 14);
  *this = &unk_288295198;
  std::__tree<std::__value_type<unsigned int,std::string>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::string>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::string>>>::destroy(*(this + 11));
  std::__tree<std::__value_type<unsigned int,std::string>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::string>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::string>>>::destroy(*(this + 8));
  if ((*(this + 55) & 0x80000000) == 0)
  {
    if ((*(this + 31) & 0x80000000) == 0)
    {
      return;
    }

LABEL_5:
    operator delete(*(this + 1));
    return;
  }

  operator delete(*(this + 4));
  if (*(this + 31) < 0)
  {
    goto LABEL_5;
  }
}

{
  webrtc::VoiceMediaInfo::~VoiceMediaInfo(this + 14);
  *this = &unk_288295198;
  std::__tree<std::__value_type<unsigned int,std::string>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::string>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::string>>>::destroy(*(this + 11));
  std::__tree<std::__value_type<unsigned int,std::string>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::string>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::string>>>::destroy(*(this + 8));
  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
    if ((*(this + 31) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((*(this + 31) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(this + 1));
LABEL_3:

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::anonymous namespace::VoiceChannelStatsGatherer::GetStatsOnWorkerThread(webrtc::_anonymous_namespace_::VoiceChannelStatsGatherer *this)
{
  v27 = 0;
  v28 = 0uLL;
  v30 = 0;
  v31 = 0;
  v29 = &v30;
  v21 = 0uLL;
  v24 = 0;
  v25 = 0;
  v22 = 0;
  v23 = &v24;
  v26 = 0;
  v2 = (*(**(this + 13) + 56))(*(this + 13));
  v3 = (*(*v2 + 224))(v2, &v27);
  v4 = (*(**(this + 13) + 80))(*(this + 13));
  v5 = v3 & (*(*v4 + 216))(v4, &v21, 1);
  if (v5 == 1)
  {
    v6 = v27;
    v12 = v27;
    v7 = v28;
    v27 = 0;
    v28 = 0uLL;
    v13 = v7;
    v14 = v21;
    v8 = v22;
    v21 = 0uLL;
    v22 = 0;
    v15 = v8;
    v16 = v29;
    v17[0] = v30;
    v17[1] = v31;
    if (v31)
    {
      *(v30 + 16) = v17;
      v29 = &v30;
      v30 = 0;
      v31 = 0;
    }

    else
    {
      v16 = v17;
    }

    v18 = v23;
    v19[0] = v24;
    v19[1] = v25;
    if (v25)
    {
      *(v24 + 16) = v19;
      v23 = &v24;
      v24 = 0;
      v25 = 0;
      v9 = v26;
      v20 = v26;
      v10 = (this + 112);
      if ((this + 112) == &v12)
      {
LABEL_8:
        *(this + 52) = v9;
        webrtc::VoiceMediaInfo::~VoiceMediaInfo(&v12);
        goto LABEL_9;
      }
    }

    else
    {
      v18 = v19;
      v9 = v26;
      v20 = v26;
      v10 = (this + 112);
      if ((this + 112) == &v12)
      {
        goto LABEL_8;
      }
    }

    std::vector<webrtc::VoiceSenderInfo>::__assign_with_size[abi:sn200100]<webrtc::VoiceSenderInfo*,webrtc::VoiceSenderInfo*>(v10, v6, v7, 0x7D6343EB1A1F58D1 * ((v7 - v6) >> 3));
    std::vector<webrtc::VoiceReceiverInfo>::__assign_with_size[abi:sn200100]<webrtc::VoiceReceiverInfo*,webrtc::VoiceReceiverInfo*>(this + 17, v14, *(&v14 + 1), 0xF128CFC4A33F128DLL * ((*(&v14 + 1) - v14) >> 3));
    std::__tree<std::__value_type<int,webrtc::RtpCodecParameters>,std::__map_value_compare<int,std::__value_type<int,webrtc::RtpCodecParameters>,std::less<int>,true>,std::allocator<std::__value_type<int,webrtc::RtpCodecParameters>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<int,webrtc::RtpCodecParameters>,std::__tree_node<std::__value_type<int,webrtc::RtpCodecParameters>,void *> *,long>>(this + 160, v16, v17);
    std::__tree<std::__value_type<int,webrtc::RtpCodecParameters>,std::__map_value_compare<int,std::__value_type<int,webrtc::RtpCodecParameters>,std::less<int>,true>,std::allocator<std::__value_type<int,webrtc::RtpCodecParameters>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<int,webrtc::RtpCodecParameters>,std::__tree_node<std::__value_type<int,webrtc::RtpCodecParameters>,void *> *,long>>(this + 184, v18, v19);
    v9 = v20;
    goto LABEL_8;
  }

LABEL_9:
  webrtc::VoiceMediaReceiveInfo::~VoiceMediaReceiveInfo(&v21);
  webrtc::VoiceMediaSendInfo::~VoiceMediaSendInfo(&v27);
  return v5;
}

void std::__tree<std::__value_type<unsigned int,std::string>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::string>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::string>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned int,std::string>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::string>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::string>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned int,std::string>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::string>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::string>>>::destroy(*(a1 + 1));
    if (a1[63] < 0)
    {
      operator delete(*(a1 + 5));
      v2 = a1;
    }

    else
    {
      v2 = a1;
    }

    operator delete(v2);
  }
}

void std::vector<webrtc::VoiceSenderInfo>::__assign_with_size[abi:sn200100]<webrtc::VoiceSenderInfo*,webrtc::VoiceSenderInfo*>(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (0x7D6343EB1A1F58D1 * ((v7 - *a1) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v8)
      {
        v12 = v10 - 312;
        do
        {
          v14 = *(v12 + 80);
          if (v14)
          {
            *(v12 + 88) = v14;
            operator delete(v14);
          }

          v15 = *(v12 + 56);
          if (v15)
          {
            *(v12 + 64) = v15;
            operator delete(v15);
          }

          v16 = *(v12 + 32);
          if (v16)
          {
            *(v12 + 40) = v16;
            operator delete(v16);
          }

          if (*(v12 + 23) < 0)
          {
            operator delete(*v12);
          }

          v13 = v12 - 80;
          v12 -= 392;
        }

        while (v13 != v8);
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

    if (a4 <= 0xA72F05397829CBLL)
    {
      v53 = 0x7D6343EB1A1F58D1 * (v7 >> 3);
      v54 = 2 * v53;
      if (2 * v53 <= a4)
      {
        v54 = a4;
      }

      if (v53 >= 0x5397829CBC14E5)
      {
        v55 = 0xA72F05397829CBLL;
      }

      else
      {
        v55 = v54;
      }

      if (v55 <= 0xA72F05397829CBLL)
      {
        operator new();
      }
    }

    goto LABEL_50;
  }

  v17 = a1[1];
  if (0x7D6343EB1A1F58D1 * ((v17 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        webrtc::MediaSenderInfo::operator=(v8, v5);
        v39 = *(v5 + 216);
        v40 = *(v5 + 232);
        v41 = *(v5 + 248);
        *(v8 + 200) = *(v5 + 200);
        *(v8 + 248) = v41;
        *(v8 + 232) = v40;
        *(v8 + 216) = v39;
        v42 = *(v5 + 312);
        v44 = *(v5 + 264);
        v43 = *(v5 + 280);
        *(v8 + 296) = *(v5 + 296);
        *(v8 + 312) = v42;
        *(v8 + 264) = v44;
        *(v8 + 280) = v43;
        v45 = *(v5 + 376);
        v47 = *(v5 + 328);
        v46 = *(v5 + 344);
        *(v8 + 360) = *(v5 + 360);
        *(v8 + 376) = v45;
        *(v8 + 328) = v47;
        *(v8 + 344) = v46;
        v5 += 392;
        v8 += 392;
      }

      while (v5 != a3);
      v17 = a1[1];
    }

    if (v17 != v8)
    {
      v48 = v17 - 312;
      do
      {
        v50 = *(v48 + 80);
        if (v50)
        {
          *(v48 + 88) = v50;
          operator delete(v50);
        }

        v51 = *(v48 + 56);
        if (v51)
        {
          *(v48 + 64) = v51;
          operator delete(v51);
        }

        v52 = *(v48 + 32);
        if (v52)
        {
          *(v48 + 40) = v52;
          operator delete(v52);
        }

        if (*(v48 + 23) < 0)
        {
          operator delete(*v48);
        }

        v49 = v48 - 80;
        v48 -= 392;
      }

      while (v49 != v8);
    }
  }

  else
  {
    if (v17 != v8)
    {
      v18 = a2 + v17 - v8;
      do
      {
        webrtc::MediaSenderInfo::operator=(v8, v5);
        v19 = *(v5 + 216);
        v20 = *(v5 + 232);
        v21 = *(v5 + 248);
        *(v8 + 200) = *(v5 + 200);
        *(v8 + 248) = v21;
        *(v8 + 232) = v20;
        *(v8 + 216) = v19;
        v22 = *(v5 + 312);
        v24 = *(v5 + 264);
        v23 = *(v5 + 280);
        *(v8 + 296) = *(v5 + 296);
        *(v8 + 312) = v22;
        *(v8 + 264) = v24;
        *(v8 + 280) = v23;
        v25 = *(v5 + 376);
        v27 = *(v5 + 328);
        v26 = *(v5 + 344);
        *(v8 + 360) = *(v5 + 360);
        *(v8 + 376) = v25;
        *(v8 + 328) = v27;
        *(v8 + 344) = v26;
        v5 += 392;
        v8 += 392;
      }

      while (v5 != v18);
      v17 = a1[1];
      v5 = v18;
    }

    v8 = v17;
    if (v5 != a3)
    {
      v8 = v17;
      v28 = v17;
      while (v28)
      {
        v29 = webrtc::MediaSenderInfo::MediaSenderInfo(v28, v5);
        v30 = *(v5 + 200);
        *(v29 + 216) = *(v5 + 216);
        *(v29 + 200) = v30;
        v31 = *(v5 + 224);
        v32 = *(v5 + 240);
        v33 = *(v5 + 256);
        *(v29 + 269) = *(v5 + 269);
        *(v29 + 240) = v32;
        *(v29 + 256) = v33;
        *(v29 + 224) = v31;
        v35 = *(v5 + 344);
        v34 = *(v5 + 360);
        v36 = *(v5 + 328);
        *(v29 + 373) = *(v5 + 373);
        *(v29 + 344) = v35;
        *(v29 + 360) = v34;
        *(v29 + 328) = v36;
        v37 = *(v5 + 280);
        v38 = *(v5 + 312);
        *(v29 + 296) = *(v5 + 296);
        *(v29 + 312) = v38;
        *(v29 + 280) = v37;
        v5 += 392;
        v28 = v29 + 392;
        v8 += 392;
        if (v5 == a3)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_50:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }
  }

LABEL_23:
  a1[1] = v8;
}

uint64_t webrtc::MediaSenderInfo::MediaSenderInfo(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v6;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  if (*(a2 + 103) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 80), *(a2 + 80), *(a2 + 88));
  }

  else
  {
    v7 = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 80) = v7;
  }

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  v9 = *(a2 + 112);
  v8 = *(a2 + 120);
  if (v8 != v9)
  {
    if (((v8 - v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  v11 = *(a2 + 136);
  v10 = *(a2 + 144);
  if (v10 != v11)
  {
    if (((v10 - v11) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  v13 = *(a2 + 160);
  v12 = *(a2 + 168);
  if (v12 != v13)
  {
    if (((v12 - v13) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  *(a1 + 184) = *(a2 + 184);
  return a1;
}

uint64_t webrtc::MediaSenderInfo::operator=(uint64_t result, uint64_t a2)
{
  v3 = result;
  *result = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 64);
  *(result + 48) = *(a2 + 48);
  *(result + 64) = v6;
  *(result + 16) = v4;
  *(result + 32) = v5;
  if (result == a2)
  {
    v9 = *(a2 + 104);
    *(result + 108) = *(a2 + 108);
    *(result + 104) = v9;
    *(result + 184) = *(a2 + 184);
  }

  else
  {
    v7 = *(a2 + 103);
    if (*(result + 103) < 0)
    {
      if (v7 >= 0)
      {
        v10 = (a2 + 80);
      }

      else
      {
        v10 = *(a2 + 80);
      }

      if (v7 >= 0)
      {
        v11 = *(a2 + 103);
      }

      else
      {
        v11 = *(a2 + 88);
      }

      std::string::__assign_no_alias<false>((result + 80), v10, v11);
    }

    else if ((*(a2 + 103) & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>((result + 80), *(a2 + 80), *(a2 + 88));
    }

    else
    {
      v8 = *(a2 + 80);
      *(result + 96) = *(a2 + 96);
      *(result + 80) = v8;
    }

    v12 = *(a2 + 104);
    *(v3 + 108) = *(a2 + 108);
    *(v3 + 104) = v12;
    std::vector<webrtc::SsrcSenderInfo>::__assign_with_size[abi:sn200100]<webrtc::SsrcSenderInfo*,webrtc::SsrcSenderInfo*>((v3 + 112), *(a2 + 112), *(a2 + 120), (*(a2 + 120) - *(a2 + 112)) >> 4);
    std::vector<webrtc::SsrcSenderInfo>::__assign_with_size[abi:sn200100]<webrtc::SsrcSenderInfo*,webrtc::SsrcSenderInfo*>((v3 + 136), *(a2 + 136), *(a2 + 144), (*(a2 + 144) - *(a2 + 136)) >> 4);
    std::vector<webrtc::ReportBlockData>::__assign_with_size[abi:sn200100]<webrtc::ReportBlockData*,webrtc::ReportBlockData*>((v3 + 160), *(a2 + 160), *(a2 + 168), (*(a2 + 168) - *(a2 + 160)) >> 6);
    *(v3 + 184) = *(a2 + 184);
    return v3;
  }

  return result;
}

char *std::vector<webrtc::SsrcSenderInfo>::__assign_with_size[abi:sn200100]<webrtc::SsrcSenderInfo*,webrtc::SsrcSenderInfo*>(char **a1, char *__src, char *a3, unint64_t a4)
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

char *std::vector<webrtc::ReportBlockData>::__assign_with_size[abi:sn200100]<webrtc::ReportBlockData*,webrtc::ReportBlockData*>(char **a1, char *__src, char *a3, unint64_t a4)
{
  v7 = a1[2];
  result = *a1;
  if (a4 > (v7 - result) >> 6)
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

    if (!(a4 >> 58))
    {
      v10 = v7 >> 5;
      if (v7 >> 5 <= a4)
      {
        v10 = a4;
      }

      v11 = v7 >= 0x7FFFFFFFFFFFFFC0;
      v12 = 0x3FFFFFFFFFFFFFFLL;
      if (!v11)
      {
        v12 = v10;
      }

      if (!(v12 >> 58))
      {
        operator new();
      }
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v13 = a1[1];
  v14 = v13 - result;
  if (a4 <= (v13 - result) >> 6)
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

void std::vector<webrtc::VoiceReceiverInfo>::__assign_with_size[abi:sn200100]<webrtc::VoiceReceiverInfo*,webrtc::VoiceReceiverInfo*>(uint64_t *a1, uint64_t a2, __int128 *a3, unint64_t a4)
{
  v7 = a1[2];
  v8 = *a1;
  if (0xF128CFC4A33F128DLL * ((v7 - *a1) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v8)
      {
        v12 = v10 - 424;
        do
        {
          v14 = *(v12 + 56);
          if (v14)
          {
            *(v12 + 64) = v14;
            operator delete(v14);
          }

          v15 = *(v12 + 32);
          if (v15)
          {
            *(v12 + 40) = v15;
            operator delete(v15);
          }

          if (*(v12 + 23) < 0)
          {
            operator delete(*v12);
          }

          v13 = v12 - 128;
          v12 -= 552;
        }

        while (v13 != v8);
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

    if (a4 <= 0x76B981DAE6076BLL)
    {
      v64 = 0xF128CFC4A33F128DLL * (v7 >> 3);
      v65 = 2 * v64;
      if (2 * v64 <= a4)
      {
        v65 = a4;
      }

      if (v64 >= 0x3B5CC0ED7303B5)
      {
        v66 = 0x76B981DAE6076BLL;
      }

      else
      {
        v66 = v65;
      }

      if (v66 <= 0x76B981DAE6076BLL)
      {
        operator new();
      }
    }

    goto LABEL_57;
  }

  v16 = a1[1];
  v17 = 0xF128CFC4A33F128DLL * ((v16 - v8) >> 3);
  if (v17 >= a4)
  {
    if (a2 != a3)
    {
      v31 = 0;
      do
      {
        v52 = a2 + v31;
        v53 = v8 + v31;
        v54 = *(a2 + v31);
        v55 = *(a2 + v31 + 16);
        v56 = *(a2 + v31 + 48);
        *(v53 + 32) = *(a2 + v31 + 32);
        *(v53 + 48) = v56;
        *v53 = v54;
        *(v53 + 16) = v55;
        v57 = *(a2 + v31 + 64);
        v58 = *(a2 + v31 + 80);
        v59 = *(a2 + v31 + 96);
        *(v53 + 105) = *(a2 + v31 + 105);
        *(v53 + 80) = v58;
        *(v53 + 96) = v59;
        *(v53 + 64) = v57;
        if (v8 == a2)
        {
          v63 = *(v52 + 152);
          *(v53 + 156) = *(v52 + 156);
          *(v53 + 152) = v63;
        }

        else
        {
          v60 = (v52 + 128);
          v61 = *(v52 + 151);
          if (*(v53 + 151) < 0)
          {
            if (v61 >= 0)
            {
              v32 = (v52 + 128);
            }

            else
            {
              v32 = *v60;
            }

            if (v61 >= 0)
            {
              v33 = *(v52 + 151);
            }

            else
            {
              v33 = *(a2 + v31 + 136);
            }

            std::string::__assign_no_alias<false>((v53 + 128), v32, v33);
          }

          else if ((*(v52 + 151) & 0x80) != 0)
          {
            std::string::__assign_no_alias<true>((v53 + 128), *v60, *(a2 + v31 + 136));
          }

          else
          {
            v62 = *v60;
            *(v53 + 144) = *(v52 + 144);
            *(v53 + 128) = v62;
          }

          v34 = v8 + v31;
          v35 = *(a2 + v31 + 152);
          *(v34 + 156) = *(a2 + v31 + 156);
          *(v34 + 152) = v35;
          std::vector<webrtc::SsrcSenderInfo>::__assign_with_size[abi:sn200100]<webrtc::SsrcSenderInfo*,webrtc::SsrcSenderInfo*>((v8 + v31 + 160), *(a2 + v31 + 160), *(a2 + v31 + 168), (*(a2 + v31 + 168) - *(a2 + v31 + 160)) >> 4);
          std::vector<webrtc::SsrcSenderInfo>::__assign_with_size[abi:sn200100]<webrtc::SsrcSenderInfo*,webrtc::SsrcSenderInfo*>((v8 + v31 + 184), *(a2 + v31 + 184), *(a2 + v31 + 192), (*(a2 + v31 + 192) - *(a2 + v31 + 184)) >> 4);
        }

        v36 = *(v52 + 224);
        *(v53 + 208) = *(v52 + 208);
        *(v53 + 224) = v36;
        v37 = *(v52 + 240);
        v38 = *(v52 + 256);
        v39 = *(v52 + 288);
        *(v53 + 272) = *(v52 + 272);
        *(v53 + 288) = v39;
        *(v53 + 240) = v37;
        *(v53 + 256) = v38;
        v40 = *(v52 + 304);
        v41 = *(v52 + 320);
        v42 = *(v52 + 336);
        *(v53 + 348) = *(v52 + 348);
        *(v53 + 320) = v41;
        *(v53 + 336) = v42;
        *(v53 + 304) = v40;
        v43 = *(v52 + 364);
        v44 = *(v52 + 380);
        v45 = *(v52 + 412);
        *(v53 + 396) = *(v52 + 396);
        *(v53 + 412) = v45;
        *(v53 + 364) = v43;
        *(v53 + 380) = v44;
        v46 = *(v52 + 428);
        v47 = *(v52 + 444);
        v48 = *(v52 + 476);
        *(v53 + 460) = *(v52 + 460);
        *(v53 + 476) = v48;
        *(v53 + 428) = v46;
        *(v53 + 444) = v47;
        v49 = *(v52 + 492);
        v50 = *(v52 + 508);
        v51 = *(v52 + 524);
        *(v53 + 536) = *(v52 + 536);
        *(v53 + 508) = v50;
        *(v53 + 524) = v51;
        *(v53 + 492) = v49;
        v31 += 552;
      }

      while ((v52 + 552) != a3);
      v16 = a1[1];
      v8 += v31;
    }

    if (v16 != v8)
    {
      v67 = v16 - 424;
      do
      {
        v69 = *(v67 + 56);
        if (v69)
        {
          *(v67 + 64) = v69;
          operator delete(v69);
        }

        v70 = *(v67 + 32);
        if (v70)
        {
          *(v67 + 40) = v70;
          operator delete(v70);
        }

        if (*(v67 + 23) < 0)
        {
          operator delete(*v67);
        }

        v68 = v67 - 128;
        v67 -= 552;
      }

      while (v68 != v8);
    }
  }

  else
  {
    v18 = std::ranges::__copy_n::__go[abi:sn200100]<webrtc::VoiceReceiverInfo *,long,webrtc::VoiceReceiverInfo *>(a2, v17, v8);
    v8 = a1[1];
    if (v18 != a3)
    {
      v19 = v18;
      v20 = a1[1];
      while (v20)
      {
        v21 = webrtc::MediaReceiverInfo::MediaReceiverInfo(v20, v19);
        v22 = *(v19 + 364);
        v23 = *(v19 + 380);
        v24 = *(v19 + 412);
        *(v21 + 396) = *(v19 + 396);
        *(v21 + 412) = v24;
        *(v21 + 364) = v22;
        *(v21 + 380) = v23;
        v25 = *(v19 + 428);
        v26 = *(v19 + 444);
        v27 = *(v19 + 476);
        *(v21 + 460) = *(v19 + 460);
        *(v21 + 476) = v27;
        *(v21 + 428) = v25;
        *(v21 + 444) = v26;
        v28 = *(v19 + 492);
        v29 = *(v19 + 508);
        v30 = *(v19 + 524);
        *(v21 + 536) = *(v19 + 536);
        *(v21 + 508) = v29;
        *(v21 + 524) = v30;
        *(v21 + 492) = v28;
        v19 = (v19 + 552);
        v8 += 552;
        v20 = v21 + 552;
        if (v19 == a3)
        {
          goto LABEL_55;
        }
      }

      __break(1u);
LABEL_57:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }
  }

LABEL_55:
  a1[1] = v8;
}

uint64_t std::ranges::__copy_n::__go[abi:sn200100]<webrtc::VoiceReceiverInfo *,long,webrtc::VoiceReceiverInfo *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return a1;
  }

  v5 = 0;
  v6 = a1 + 552 * a2;
  do
  {
    v27 = a1 + v5;
    v28 = a3 + v5;
    v29 = *(a1 + v5);
    v30 = *(a1 + v5 + 16);
    v31 = *(a1 + v5 + 48);
    *(v28 + 32) = *(a1 + v5 + 32);
    *(v28 + 48) = v31;
    *v28 = v29;
    *(v28 + 16) = v30;
    v32 = *(a1 + v5 + 64);
    v33 = *(a1 + v5 + 80);
    v34 = *(a1 + v5 + 96);
    *(v28 + 105) = *(a1 + v5 + 105);
    *(v28 + 80) = v33;
    *(v28 + 96) = v34;
    *(v28 + 64) = v32;
    if (a3 == a1)
    {
      v38 = *(v27 + 152);
      *(v28 + 156) = *(v27 + 156);
      *(v28 + 152) = v38;
    }

    else
    {
      v35 = (v27 + 128);
      v36 = *(v27 + 151);
      if (*(v28 + 151) < 0)
      {
        if (v36 >= 0)
        {
          v7 = (v27 + 128);
        }

        else
        {
          v7 = *v35;
        }

        if (v36 >= 0)
        {
          v8 = *(v27 + 151);
        }

        else
        {
          v8 = *(a1 + v5 + 136);
        }

        std::string::__assign_no_alias<false>((v28 + 128), v7, v8);
      }

      else if ((*(v27 + 151) & 0x80) != 0)
      {
        std::string::__assign_no_alias<true>((v28 + 128), *v35, *(a1 + v5 + 136));
      }

      else
      {
        v37 = *v35;
        *(v28 + 144) = *(v27 + 144);
        *(v28 + 128) = v37;
      }

      v9 = a3 + v5;
      v10 = *(a1 + v5 + 152);
      *(v9 + 156) = *(a1 + v5 + 156);
      *(v9 + 152) = v10;
      std::vector<webrtc::SsrcSenderInfo>::__assign_with_size[abi:sn200100]<webrtc::SsrcSenderInfo*,webrtc::SsrcSenderInfo*>((a3 + v5 + 160), *(a1 + v5 + 160), *(a1 + v5 + 168), (*(a1 + v5 + 168) - *(a1 + v5 + 160)) >> 4);
      std::vector<webrtc::SsrcSenderInfo>::__assign_with_size[abi:sn200100]<webrtc::SsrcSenderInfo*,webrtc::SsrcSenderInfo*>((a3 + v5 + 184), *(a1 + v5 + 184), *(a1 + v5 + 192), (*(a1 + v5 + 192) - *(a1 + v5 + 184)) >> 4);
    }

    v11 = *(v27 + 224);
    *(v28 + 208) = *(v27 + 208);
    *(v28 + 224) = v11;
    v12 = *(v27 + 240);
    v13 = *(v27 + 256);
    v14 = *(v27 + 288);
    *(v28 + 272) = *(v27 + 272);
    *(v28 + 288) = v14;
    *(v28 + 240) = v12;
    *(v28 + 256) = v13;
    v15 = *(v27 + 304);
    v16 = *(v27 + 320);
    v17 = *(v27 + 336);
    *(v28 + 348) = *(v27 + 348);
    *(v28 + 320) = v16;
    *(v28 + 336) = v17;
    *(v28 + 304) = v15;
    v18 = *(v27 + 364);
    v19 = *(v27 + 380);
    v20 = *(v27 + 412);
    *(v28 + 396) = *(v27 + 396);
    *(v28 + 412) = v20;
    *(v28 + 364) = v18;
    *(v28 + 380) = v19;
    v21 = *(v27 + 428);
    v22 = *(v27 + 444);
    v23 = *(v27 + 476);
    *(v28 + 460) = *(v27 + 460);
    *(v28 + 476) = v23;
    *(v28 + 428) = v21;
    *(v28 + 444) = v22;
    v24 = *(v27 + 492);
    v25 = *(v27 + 508);
    v26 = *(v27 + 524);
    *(v28 + 536) = *(v27 + 536);
    *(v28 + 508) = v25;
    *(v28 + 524) = v26;
    *(v28 + 492) = v24;
    v5 += 552;
  }

  while (v27 + 552 != v6);
  return v6;
}