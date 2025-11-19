void webrtc::DecoderDatabase::~DecoderDatabase(webrtc::DecoderDatabase *this)
{
  *this = &unk_288292820;
  v2 = *(this + 11);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3)
  {
    MEMORY[0x2743DA540](v3, 0x1000C40299335D9);
  }

  std::__tree<std::__value_type<unsigned char,webrtc::DecoderDatabase::DecoderInfo>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,webrtc::DecoderDatabase::DecoderInfo>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,webrtc::DecoderDatabase::DecoderInfo>>>::destroy(*(this + 7));
  v4 = *(this + 1);
  if (v4)
  {
    if (atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v4 + 8))(v4);
    }
  }
}

{
  *this = &unk_288292820;
  v2 = *(this + 11);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3)
  {
    MEMORY[0x2743DA540](v3, 0x1000C40299335D9);
  }

  std::__tree<std::__value_type<unsigned char,webrtc::DecoderDatabase::DecoderInfo>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,webrtc::DecoderDatabase::DecoderInfo>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,webrtc::DecoderDatabase::DecoderInfo>>>::destroy(*(this + 7));
  v4 = *(this + 1);
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v4 + 8))(v4);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::DecoderDatabase::DecoderInfo::DecoderInfo(uint64_t a1, uint64_t *a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a2;
  *a1 = *a2;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1u, memory_order_relaxed);
  }

  v12 = *(a2 + 1);
  *(a1 + 24) = *(a2 + 3);
  *(a1 + 8) = v12;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *a3, *(a3 + 1));
  }

  else
  {
    v13 = *a3;
    *(a1 + 56) = *(a3 + 2);
    *(a1 + 40) = v13;
  }

  v14 = *(a3 + 24);
  *(a1 + 88) = 0;
  *(a1 + 80) = a1 + 88;
  *(a1 + 64) = v14;
  *(a1 + 96) = 0;
  v15 = *(a3 + 5);
  if (v15 != (a3 + 3))
  {
    do
    {
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::string> const&>((a1 + 80), (a1 + 88), v15 + 4);
      v21 = v15[1];
      if (v21)
      {
        do
        {
          v22 = v21;
          v21 = *v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v22 = v15[2];
          v23 = *v22 == v15;
          v15 = v22;
        }

        while (!v23);
      }

      v15 = v22;
    }

    while (v22 != (a3 + 3));
  }

  *(a1 + 104) = a4;
  *(a1 + 112) = a5;
  *(a1 + 120) = a6;
  *(a1 + 128) = 0;
  v16 = *(a3 + 23);
  if ((v16 & 0x80u) == 0)
  {
    v17 = a3;
  }

  else
  {
    v17 = *a3;
  }

  if ((v16 & 0x80u) != 0)
  {
    v16 = *(a3 + 1);
  }

  if (v16 != 2)
  {
    goto LABEL_29;
  }

  v18 = *v17;
  if (v18 != 67)
  {
    if ((v18 - 65) < 0x1A)
    {
      LOBYTE(v18) = v18 + 32;
    }

    if (v18 != 99)
    {
      goto LABEL_29;
    }
  }

  v19 = *(v17 + 1);
  if (v19 == 78)
  {
    goto LABEL_21;
  }

  if ((v19 - 65) < 0x1A)
  {
    LOBYTE(v19) = v19 + 32;
  }

  if (v19 == 110)
  {
LABEL_21:
    v20 = *(a3 + 6) | 0x100000000;
  }

  else
  {
LABEL_29:
    v20 = 0;
  }

  *(a1 + 136) = v20;
  *(a1 + 140) = BYTE4(v20);
  v24 = *(a3 + 23);
  if ((v24 & 0x80u) == 0)
  {
    v25 = a3;
  }

  else
  {
    v25 = *a3;
  }

  if ((v24 & 0x80u) != 0)
  {
    v24 = *(a3 + 1);
  }

  if (v24 != 2)
  {
    if (v24 == 15)
    {
      v31 = "telephone-event";
      while (1)
      {
        v33 = *v25++;
        v32 = v33;
        v35 = *v31++;
        v34 = v35;
        if (v32 != v35)
        {
          if ((v32 - 65) < 0x1A)
          {
            LOBYTE(v32) = v32 + 32;
          }

          if ((v34 - 65) < 0x1A)
          {
            LOBYTE(v34) = v34 + 32;
          }

          if (v32 != v34)
          {
            break;
          }
        }

        if (!--v24)
        {
          v38 = 2;
          goto LABEL_68;
        }
      }
    }

    else if (v24 == 3)
    {
      v26 = "red";
      while (1)
      {
        v28 = *v25++;
        v27 = v28;
        v30 = *v26++;
        v29 = v30;
        if (v27 != v30)
        {
          if ((v27 - 65) < 0x1A)
          {
            LOBYTE(v27) = v27 + 32;
          }

          if ((v29 - 65) < 0x1A)
          {
            LOBYTE(v29) = v29 + 32;
          }

          if (v27 != v29)
          {
            break;
          }
        }

        if (!--v24)
        {
          v38 = 3;
          goto LABEL_68;
        }
      }
    }

    goto LABEL_65;
  }

  v36 = *v25;
  if (v36 != 67)
  {
    if ((v36 - 65) < 0x1A)
    {
      LOBYTE(v36) = v36 + 32;
    }

    if (v36 != 99)
    {
      goto LABEL_65;
    }
  }

  v37 = *(v25 + 1);
  if (v37 != 78)
  {
    if ((v37 - 65) < 0x1A)
    {
      LOBYTE(v37) = v37 + 32;
    }

    if (v37 != 110)
    {
LABEL_65:
      v38 = 0;
      goto LABEL_68;
    }
  }

  v38 = 1;
LABEL_68:
  *(a1 + 144) = v38;
  return a1;
}

uint64_t webrtc::DecoderDatabase::SetCodecs@<X0>(uint64_t result@<X0>, void *a2@<X1>, unsigned __int8 **a3@<X8>)
{
  v4 = result;
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6 = *(result + 48);
  v7 = (result + 56);
  if (v6 != (result + 56))
  {
    v8 = a2 + 1;
    do
    {
      v9 = v6[32];
      v10 = *v8;
      if (!*v8)
      {
        goto LABEL_12;
      }

      v11 = a2 + 1;
      do
      {
        if (*(v10 + 32) >= v9)
        {
          v11 = v10;
        }

        v10 = *(v10 + 8 * (*(v10 + 32) < v9));
      }

      while (v10);
      if (v11 == v8 || *(v11 + 8) > v9 || (result = webrtc::operator==(v11 + 40, v6 + 80), (result & 1) == 0))
      {
LABEL_12:
        v40 = v9;
        result = std::vector<unsigned int>::push_back[abi:sn200100](a3, &v40);
      }

      v12 = *(v6 + 1);
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
        do
        {
          v13 = *(v6 + 2);
          v14 = *v13 == v6;
          v6 = v13;
        }

        while (!v14);
      }

      v6 = v13;
    }

    while (v13 != v7);
    v15 = *a3;
    v16 = a3[1];
    if (*a3 != v16)
    {
      do
      {
        v17 = *v15;
        v15 += 4;
        result = (*(*v4 + 48))(v4, v17);
      }

      while (v15 != v16);
    }
  }

  v18 = *a2;
  if (*a2 == a2 + 1)
  {
    return result;
  }

  while (2)
  {
    v19 = *v7;
    if (!*v7)
    {
LABEL_30:
      webrtc::DecoderDatabase::DecoderInfo::DecoderInfo(&v28, v4 + 1, (v18 + 5), v4[12], v4[13], v4[11]);
      v40 = *(v18 + 8);
      v41 = v28;
      if (v28)
      {
        atomic_fetch_add_explicit((v28 + 8), 1u, memory_order_relaxed);
      }

      v42 = v29;
      v43 = v30;
      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v31.__r_.__value_.__l.__data_, v31.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = v31;
      }

      v45 = v32;
      v47[0] = 0;
      v47[1] = 0;
      v46 = v47;
      v22 = v33;
      if (v33 != v34)
      {
        do
        {
          if (!*std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(&v46, v47, &v54, &v53, v22 + 4))
          {
            operator new();
          }

          v24 = v22[1];
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
              v25 = v22[2];
              v14 = *v25 == v22;
              v22 = v25;
            }

            while (!v14);
          }

          v22 = v25;
        }

        while (v25 != v34);
      }

      v48 = v35;
      v49 = v36;
      v23 = v37;
      v37 = 0;
      v50 = v23;
      v51 = v38;
      v52 = v39;
      std::__tree<std::__value_type<unsigned char,webrtc::DecoderDatabase::DecoderInfo>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,webrtc::DecoderDatabase::DecoderInfo>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,webrtc::DecoderDatabase::DecoderInfo>>>::__emplace_unique_impl<std::pair<int,webrtc::DecoderDatabase::DecoderInfo>>();
    }

    v20 = *(v18 + 32);
    while (1)
    {
      v21 = *(v19 + 32);
      if (v21 <= v20)
      {
        break;
      }

LABEL_26:
      v19 = *v19;
      if (!v19)
      {
        goto LABEL_30;
      }
    }

    if (v21 < v20)
    {
      ++v19;
      goto LABEL_26;
    }

    v26 = v18[1];
    if (v26)
    {
      do
      {
        v27 = v26;
        v26 = *v26;
      }

      while (v26);
    }

    else
    {
      do
      {
        v27 = v18[2];
        v14 = *v27 == v18;
        v18 = v27;
      }

      while (!v14);
    }

    v18 = v27;
    if (v27 != a2 + 1)
    {
      continue;
    }

    return result;
  }
}

uint64_t webrtc::DecoderDatabase::RegisterPayload(webrtc::DecoderDatabase *this, unsigned int a2, const webrtc::SdpAudioFormat *a3)
{
  if (a2 <= 0x7F)
  {
    v42 = v10;
    v43 = v9;
    v44 = v8;
    v45 = v7;
    v46 = v6;
    v47 = v5;
    v48 = v4;
    v49 = v3;
    v50 = v11;
    v51 = v12;
    webrtc::DecoderDatabase::DecoderInfo::DecoderInfo(&v19, this + 1, a3, *(this + 12), *(this + 13), *(this + 11));
    v30 = a2;
    v31 = v19;
    if (v19)
    {
      atomic_fetch_add_explicit((v19 + 8), 1u, memory_order_relaxed);
    }

    v32 = v20;
    v33 = v21;
    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v22.__r_.__value_.__l.__data_, v22.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v22;
    }

    v35 = v23;
    v37[0] = 0;
    v37[1] = 0;
    v36 = v37;
    v15 = v24;
    if (v24 != v25)
    {
      do
      {
        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(&v36, v37, v15 + 4);
        v16 = v15[1];
        if (v16)
        {
          do
          {
            v17 = v16;
            v16 = *v16;
          }

          while (v16);
        }

        else
        {
          do
          {
            v17 = v15[2];
            v18 = *v17 == v15;
            v15 = v17;
          }

          while (!v18);
        }

        v15 = v17;
      }

      while (v17 != v25);
    }

    v38 = v26;
    v39 = v27;
    *(&v27 + 1) = 0;
    v40 = v28;
    v41 = v29;
    std::__tree<std::__value_type<unsigned char,webrtc::DecoderDatabase::DecoderInfo>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,webrtc::DecoderDatabase::DecoderInfo>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,webrtc::DecoderDatabase::DecoderInfo>>>::__emplace_unique_impl<std::pair<int,webrtc::DecoderDatabase::DecoderInfo>>();
  }

  return 0xFFFFFFFFLL;
}

uint64_t webrtc::DecoderDatabase::Remove(webrtc::DecoderDatabase *this, unsigned int a2)
{
  v4 = this + 56;
  v3 = *(this + 7);
  if (!v3)
  {
    return 4294967291;
  }

  v5 = v4;
  v6 = v3;
  do
  {
    v7 = *(v6 + 32);
    v8 = v7 >= a2;
    v9 = v7 < a2;
    if (v8)
    {
      v5 = v6;
    }

    v6 = v6[v9];
  }

  while (v6);
  if (v5 == v4 || v5[32] > a2)
  {
    return 4294967291;
  }

  v11 = *(v5 + 1);
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
    v13 = v5;
    do
    {
      v12 = *(v13 + 2);
      v14 = *v12 == v13;
      v13 = v12;
    }

    while (!v14);
  }

  if (*(this + 6) == v5)
  {
    *(this + 6) = v12;
  }

  v16 = this;
  --*(this + 8);
  std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v3, v5);
  v17 = *(v5 + 21);
  *(v5 + 21) = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy((v5 + 120), *(v5 + 16));
  if (v5[103] < 0)
  {
    operator delete(*(v5 + 10));
  }

  v18 = *(v5 + 5);
  if (v18 && atomic_fetch_add(v18 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v18 + 8))(v18);
  }

  operator delete(v5);
  if (*(v16 + 18) == a2)
  {
    *(v16 + 18) = -1;
  }

  result = 0;
  if (*(v16 + 19) == a2)
  {
    *(v16 + 19) = -1;
  }

  return result;
}

double webrtc::DecoderDatabase::RemoveAll(char **this)
{
  v1 = (this + 7);
  std::__tree<std::__value_type<unsigned char,webrtc::DecoderDatabase::DecoderInfo>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,webrtc::DecoderDatabase::DecoderInfo>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,webrtc::DecoderDatabase::DecoderInfo>>>::destroy(this[7]);
  *(v1 - 1) = v1;
  *v1 = 0u;
  result = NAN;
  *(v1 + 2) = -1;
  return result;
}

char *webrtc::DecoderDatabase::GetDecoderInfo(webrtc::DecoderDatabase *this, unsigned int a2)
{
  v4 = *(this + 7);
  v2 = this + 56;
  v3 = v4;
  if (!v4)
  {
    return 0;
  }

  v5 = v2;
  do
  {
    v6 = v3[32];
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v3;
    }

    v3 = *&v3[8 * v8];
  }

  while (v3);
  if (v5 == v2)
  {
    return 0;
  }

  v9 = v5[32];
  v10 = v5 + 40;
  if (v9 <= a2)
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

uint64_t webrtc::DecoderDatabase::SetActiveDecoder(webrtc::DecoderDatabase *this, int a2, BOOL *a3)
{
  v6 = (*(*this + 64))(this);
  if (!v6)
  {
    return 4294967291;
  }

  if (*(v6 + 144) != 1)
  {
    *a3 = 0;
    v11 = *(this + 18);
    if ((v11 & 0x80000000) == 0)
    {
      if (v11 == a2)
      {
LABEL_8:
        result = 0;
        *(this + 18) = v11;
        return result;
      }

      v12 = (*(*this + 64))(this, *(this + 18));
      v13 = *(v12 + 128);
      *(v12 + 128) = 0;
      if (v13)
      {
        (*(*v13 + 8))(v13);
      }
    }

    *a3 = 1;
    v11 = a2;
    goto LABEL_8;
  }

  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/neteq/decoder_database.cc", 204, "!info->IsComfortNoise()", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v7, v8, v9, v10, v16);
  return webrtc::DecoderDatabase::GetActiveDecoder(v15);
}

uint64_t webrtc::DecoderDatabase::GetActiveDecoder(webrtc::DecoderDatabase *this)
{
  if ((*(this + 18) & 0x80000000) != 0)
  {
    return 0;
  }

  else
  {
    return webrtc::DecoderDatabase::GetDecoder(this);
  }
}

uint64_t webrtc::DecoderDatabase::GetDecoder(webrtc::DecoderDatabase *this)
{
  v1 = (*(*this + 64))(this);
  if (!v1)
  {
    return 0;
  }

  if (*(v1 + 144))
  {
    return 0;
  }

  v2 = *(v1 + 128);
  if (v2)
  {
    return v2;
  }

  v4 = v1;
  (*(**(v1 + 120) + 48))(&v8, *(v1 + 120), v1, v1 + 40, *(v1 + 104), *(v1 + 112));
  v5 = v8;
  v8 = 0;
  v6 = *(v4 + 128);
  *(v4 + 128) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
    v7 = v8;
    v8 = 0;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }
  }

  return *(v4 + 128);
}

uint64_t webrtc::DecoderDatabase::SetActiveCngDecoder(webrtc::DecoderDatabase *this, int a2)
{
  if (!(*(*this + 64))(this))
  {
    return 4294967291;
  }

  v4 = *(this + 19);
  if ((v4 & 0x80000000) == 0 && v4 != a2)
  {
    v5 = *(this + 10);
    *(this + 10) = 0;
    if (v5)
    {
      MEMORY[0x2743DA540](v5, 0x1000C40299335D9);
    }
  }

  result = 0;
  *(this + 19) = a2;
  return result;
}

uint64_t webrtc::DecoderDatabase::GetActiveCngDecoder(webrtc::DecoderDatabase *this)
{
  if ((*(this + 19) & 0x80000000) != 0)
  {
    return 0;
  }

  result = *(this + 10);
  if (!result)
  {
    operator new();
  }

  return result;
}

void std::__tree<std::__value_type<unsigned char,webrtc::DecoderDatabase::DecoderInfo>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,webrtc::DecoderDatabase::DecoderInfo>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,webrtc::DecoderDatabase::DecoderInfo>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned char,webrtc::DecoderDatabase::DecoderInfo>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,webrtc::DecoderDatabase::DecoderInfo>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,webrtc::DecoderDatabase::DecoderInfo>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned char,webrtc::DecoderDatabase::DecoderInfo>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,webrtc::DecoderDatabase::DecoderInfo>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,webrtc::DecoderDatabase::DecoderInfo>>>::destroy(*(a1 + 1));
    v2 = *(a1 + 21);
    *(a1 + 21) = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy((a1 + 120), *(a1 + 16));
    if (a1[103] < 0)
    {
      operator delete(*(a1 + 10));
    }

    v3 = *(a1 + 5);
    if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v3 + 8))(v3);
    }

    operator delete(a1);
  }
}

void webrtc::DefaultIceTransportFactory::CreateIceTransport(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = &unk_2882928F8;
  *(a4 + 24) = &v4;
  operator new();
}

BOOL webrtc::RefCountedObject<webrtc::DefaultIceTransport>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 6, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

void *webrtc::RefCountedObject<webrtc::DefaultIceTransport>::~RefCountedObject(void *result)
{
  *result = &unk_288292898;
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

void webrtc::RefCountedObject<webrtc::DefaultIceTransport>::~RefCountedObject(void *a1)
{
  *a1 = &unk_288292898;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

void webrtc::DefaultNetEqFactory::~DefaultNetEqFactory(webrtc::DefaultNetEqFactory *this)
{
  *this = &unk_288292988;
}

{
  *this = &unk_288292988;
  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::DefaultOutputRateCalculator::CalculateOutputRateFromRange(uint64_t a1, signed int *a2, uint64_t a3)
{
  if (!a3)
  {
    return 48000;
  }

  if (a3 != 1)
  {
    v4 = a2 + 1;
    v3 = *a2;
    v5 = 4 * a3 - 4;
    v6 = a2 + 1;
    do
    {
      v8 = *v6++;
      v7 = v8;
      v9 = v3 < v8;
      if (v3 <= v8)
      {
        v3 = v7;
      }

      if (v9)
      {
        a2 = v4;
      }

      v4 = v6;
      v5 -= 4;
    }

    while (v5);
  }

  v10 = &webrtc::DefaultOutputRateCalculator::CalculateOutputRateFromRange(webrtc::ArrayView<int const,-4711l>)::native_rates;
  v11 = 4;
  do
  {
    v12 = v11 >> 1;
    v13 = &v10[v11 >> 1];
    v15 = *v13;
    v14 = v13 + 1;
    v11 += ~(v11 >> 1);
    if (v15 < *a2)
    {
      v10 = v14;
    }

    else
    {
      v11 = v12;
    }
  }

  while (v11);
  return *v10;
}

void webrtc::DefaultTemporalLayers::DefaultTemporalLayers(webrtc::DefaultTemporalLayers *this, uint64_t a2)
{
  v2 = *MEMORY[0x277D85DE8];
  if (a2 <= 1)
  {
    a2 = 1;
  }

  else
  {
    a2 = a2;
  }

  *this = &unk_2882929D8;
  *(this + 1) = a2;
}

void webrtc::anonymous namespace::GetTemporalIds(webrtc::_anonymous_namespace_ *this, uint64_t a2)
{
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      operator new();
    }

    if (a2 == 4)
    {
      operator new();
    }
  }

  else if (a2 == 2)
  {
    operator new();
  }

  operator new();
}

void webrtc::DefaultTemporalLayers::~DefaultTemporalLayers(webrtc::DefaultTemporalLayers *this)
{
  v2 = *(this + 23);
  *(this + 23) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 15);
  v4 = *(this + 16);
  if (v4 == v3)
  {
    v4 = *(this + 15);
    *(this + 19) = 0;
    v11 = 0;
    goto LABEL_16;
  }

  v5 = *(this + 18);
  v6 = &v3[v5 / 0x2E];
  v7 = *v6;
  v8 = *v6 + 88 * (v5 % 0x2E);
  v9 = v3[(*(this + 19) + v5) / 0x2E] + 88 * ((*(this + 19) + v5) % 0x2E);
  if (v8 != v9)
  {
    while (1)
    {
      if (!v8)
      {
        __break(1u);
        return;
      }

      if (*(v8 + 8))
      {
        operator delete(*(v8 + 16));
        v7 = *v6;
        v8 += 88;
        if (v8 - *v6 == 4048)
        {
LABEL_12:
          v10 = v6[1];
          ++v6;
          v7 = v10;
          v8 = v10;
        }
      }

      else
      {
        v8 += 88;
        if (v8 - v7 == 4048)
        {
          goto LABEL_12;
        }
      }

      if (v8 == v9)
      {
        v3 = *(this + 15);
        v4 = *(this + 16);
        break;
      }
    }
  }

  *(this + 19) = 0;
  v11 = v4 - v3;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v3);
      v4 = *(this + 16);
      v3 = (*(this + 15) + 8);
      *(this + 15) = v3;
      v11 = v4 - v3;
    }

    while (v11 > 2);
  }

LABEL_16:
  if (v11 == 1)
  {
    v12 = 23;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_22;
    }

    v12 = 46;
  }

  *(this + 18) = v12;
LABEL_22:
  if (v3 != v4)
  {
    do
    {
      v13 = *v3++;
      operator delete(v13);
    }

    while (v3 != v4);
    v15 = *(this + 15);
    v14 = *(this + 16);
    if (v14 != v15)
    {
      *(this + 16) = v14 + ((v15 - v14 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  v16 = *(this + 14);
  if (v16)
  {
    operator delete(v16);
  }

  if (*(this + 104) == 1)
  {
    v17 = *(this + 10);
    if (v17)
    {
      *(this + 11) = v17;
      operator delete(v17);
    }
  }

  v18 = *(this + 5);
  if (v18)
  {
    v19 = *(this + 6);
    v20 = *(this + 5);
    if (v19 != v18)
    {
      v21 = *(this + 6);
      do
      {
        v22 = *(v21 - 80);
        v21 -= 80;
        if (v22)
        {
          operator delete(*(v19 - 72));
        }

        v19 = v21;
      }

      while (v21 != v18);
      v20 = *(this + 5);
    }

    *(this + 6) = v18;
    operator delete(v20);
  }

  v23 = *(this + 2);
  if (v23)
  {
    *(this + 3) = v23;
    operator delete(v23);
  }
}

{
  webrtc::DefaultTemporalLayers::~DefaultTemporalLayers(this);

  JUMPOUT(0x2743DA540);
}

void webrtc::DefaultTemporalLayers::OnRatesUpdated(uint64_t a1, uint64_t a2, char **a3)
{
  v4 = (a1 + 80);
  if (*(a1 + 104) == 1)
  {
    if (v4 != a3)
    {
      std::vector<int>::__assign_with_size[abi:sn200100]<int *,int *>((a1 + 80), *a3, a3[1], (a3[1] - *a3) >> 2);
      if ((*(a1 + 104) & 1) == 0)
      {
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }
    }

    v5 = *(a1 + 8);
    v6 = *(a1 + 80);
    v7 = (*(a1 + 88) - v6) >> 2;
    v8 = v5 >= v7;
    v9 = v5 - v7;
    if (v5 > v7)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v4->__begin_ = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    v10 = a3[1];
    if (v10 != *a3)
    {
      if (((v10 - *a3) & 0x8000000000000000) == 0)
      {
        operator new();
      }

LABEL_23:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    *(a1 + 104) = 1;
    v5 = *(a1 + 8);
    v6 = *(a1 + 80);
    v11 = (*(a1 + 88) - v6) >> 2;
    v8 = v5 >= v11;
    v9 = v5 - v11;
    if (v5 > v11)
    {
LABEL_5:
      std::vector<float>::__append(v4, v9);
      v5 = *(a1 + 8);
      goto LABEL_12;
    }
  }

  if (!v8)
  {
    *(a1 + 88) = v6 + 4 * v5;
  }

LABEL_12:
  if (v5 >= 2)
  {
    if (*(a1 + 104) == 1)
    {
      v12 = *(a1 + 80);
      v13 = (*(a1 + 88) - v12) >> 2;
      if (v13 <= 1)
      {
        v14 = 1;
      }

      else
      {
        v14 = (*(a1 + 88) - v12) >> 2;
      }

      v15 = (v12 + 4);
      v16 = v5 - 1;
      for (i = v14 - 1; v13 && i; --i)
      {
        *v15 += *(v15 - 1);
        ++v15;
        --v13;
        if (!--v16)
        {
          return;
        }
      }
    }

    goto LABEL_22;
  }
}

void webrtc::DefaultTemporalLayers::UpdateConfiguration(webrtc::DefaultTemporalLayers *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 112) = 0;
  *(a2 + 116) = 0;
  *(a2 + 120) = 0;
  *(a2 + 124) = 0;
  *(a2 + 128) = 0;
  *(a2 + 132) = 0;
  *(a2 + 136) = 0;
  *(a2 + 140) = 0;
  if (*(this + 104) != 1)
  {
    return;
  }

  *(a2 + 96) = 0u;
  *(a2 + 84) = 0u;
  *(a2 + 68) = 0u;
  *(a2 + 52) = 0u;
  *(a2 + 36) = 0u;
  *(a2 + 20) = 0u;
  *(a2 + 4) = 0u;
  *(a2 + 112) = 1;
  v3 = *(this + 1);
  if (v3)
  {
    v4 = *(this + 10);
    v5 = *(this + 11) - v4;
    v6 = v5 >> 2;
    if ((v5 >> 2) > 5)
    {
      *(a2 + 4) = *v4 / 0x3E8u;
      *(a2 + 24) = 1 << (v3 - 1);
      if (v3 == 1)
      {
        goto LABEL_21;
      }

      *(a2 + 8) = v4[1] / 0x3E8u;
      *(a2 + 28) = 1 << (v3 - 2);
      if (v3 == 2)
      {
        goto LABEL_21;
      }

      *(a2 + 12) = v4[2] / 0x3E8u;
      *(a2 + 32) = 1 << (v3 - 3);
      if (v3 == 3)
      {
        goto LABEL_21;
      }

      *(a2 + 16) = v4[3] / 0x3E8u;
      *(a2 + 36) = 1 << (v3 - 4);
      if (v3 == 4)
      {
        goto LABEL_21;
      }

      *(a2 + 20) = v4[4] / 0x3E8u;
      *(a2 + 40) = 1 << (v3 - 5);
      if (v3 == 5)
      {
        goto LABEL_21;
      }

      goto LABEL_27;
    }

    if (v5 < 4)
    {
      goto LABEL_27;
    }

    *(a2 + 4) = *v4 / 0x3E8u;
    *(a2 + 24) = 1 << (v3 - 1);
    if (v3 != 1)
    {
      if (v6 == 1)
      {
        goto LABEL_27;
      }

      *(a2 + 8) = v4[1] / 0x3E8u;
      *(a2 + 28) = 1 << (v3 - 2);
      if (v3 != 2)
      {
        if (v6 == 2)
        {
          goto LABEL_27;
        }

        *(a2 + 12) = v4[2] / 0x3E8u;
        *(a2 + 32) = 1 << (v3 - 3);
        if (v3 != 3)
        {
          if (v6 == 3)
          {
            goto LABEL_27;
          }

          *(a2 + 16) = v4[3] / 0x3E8u;
          *(a2 + 36) = 1 << (v3 - 4);
          if (v3 != 4)
          {
            if (v6 == 4)
            {
              goto LABEL_27;
            }

            *(a2 + 20) = v4[4] / 0x3E8u;
            *(a2 + 40) = 1 << (v3 - 5);
            if (v3 != 5)
            {
              if (v6 != 5)
              {
                *(a2 + 24) = v4[5] / 0x3E8u;
                *(a2 + 44) = 1 << (v3 - 6);
                goto LABEL_21;
              }

LABEL_27:
              __break(1u);
              return;
            }
          }
        }
      }
    }
  }

LABEL_21:
  *a2 = v3;
  v7 = *(this + 2);
  v8 = *(this + 3);
  *(a2 + 44) = (v8 - v7) >> 2;
  if (v8 != v7)
  {
    memcpy((a2 + 48), v7, v8 - v7);
  }

  v9 = *(this + 10);
  if (v9)
  {
    *(this + 11) = v9;
    operator delete(v9);
  }

  *(this + 104) = 0;
}

void webrtc::DefaultTemporalLayers::NextFrameConfig(int64x2_t *this@<X0>, int a2@<W2>, _OWORD *a3@<X8>)
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = this[4].u8[8];
  v5 = this[2].i64[1];
  v6 = 0xCCCCCCCCCCCCCCCDLL * ((this[3].i64[0] - v5) >> 4);
  v7 = (v4 + 1) % v6;
  this[4].i8[8] = v7;
  if (v6 <= v7)
  {
    goto LABEL_63;
  }

  LODWORD(v7) = v7;
  v10 = v5 + 80 * v7;
  v45 = 0;
  if (*v10 >= 2uLL)
  {
    if (*v10)
    {
      absl::inlined_vector_internal::Storage<webrtc::DecodeTargetIndication,10ul,std::allocator<webrtc::DecodeTargetIndication>>::InitFrom(&v45, v10);
      LODWORD(v7) = this[4].u8[8];
    }

    else
    {
      v45 = *v10;
      v11 = *(v10 + 8);
      v12 = *(v10 + 24);
      v48 = *(v10 + 40);
      *__p = v11;
      v47 = v12;
    }
  }

  v13 = *(v10 + 48);
  *&v49[16] = *(v10 + 64);
  *v49 = v13;
  v14 = v7;
  *&v49[16] = *(this[1].i64[0] + 4 * (v7 % ((this[1].i64[1] - this[1].i64[0]) >> 2)));
  *&v49[20] = *&v49[16];
  if (!v7)
  {
    v17 = this[7].i64[1];
    if (this[8].i64[0] != v17)
    {
      v18 = this[9].u64[0];
      v19 = (v17 + 8 * (v18 / 0x2E));
      v20 = *v19;
      v21 = *v19 + 88 * (v18 % 0x2E);
      v22 = *(v17 + 8 * ((this[9].i64[1] + v18) / 0x2E)) + 88 * ((this[9].i64[1] + v18) % 0x2E);
      while (v21 != v22)
      {
        *(v21 + 4) = 1;
        v21 += 88;
        if (v21 - v20 == 4048)
        {
          v23 = v19[1];
          ++v19;
          v20 = v23;
          v21 = v23;
        }
      }
    }
  }

  if (v4 == 255)
  {
    v49[0] = 0;
    *&v49[4] = xmmword_273B92040;
    *&v49[20] = 0;
    v49[28] = 1;
    LOBYTE(v24) = 7;
  }

  else
  {
    v15 = v49[8];
    if ((v49[8] & 1) != 0 && (this[4].i8[0] & 2) == 0 && this[10].i64[1] >= v14)
    {
      v15 = v49[8] & 0xFE;
      *&v49[8] &= ~1u;
    }

    v16 = v49[12];
    if ((v49[12] & 1) != 0 && (this[4].i8[0] & 4) == 0 && this[11].i64[0] >= v14)
    {
      v16 = v49[12] & 0xFE;
      *&v49[12] &= ~1u;
    }

    if (v49[4])
    {
      operator new();
    }

    if (v15)
    {
      operator new();
    }

    if (v16)
    {
      operator new();
    }

    std::__introsort<std::_ClassicAlgPolicy,webrtc::DefaultTemporalLayers::UpdateSearchOrder(webrtc::Vp8FrameConfig *)::$_0 &,std::pair<webrtc::Vp8FrameConfig::Vp8BufferReference,unsigned long> *,false>(0, 0, 0, 1);
    v25 = *&v49[4];
    if (*&v49[20])
    {
      v26 = v49[8];
      v27 = (v49[4] & 1) != 0 && ((v49[8] & 1) == 0 || (this[4].i8[0] & 2) != 0) && ((v49[12] & 1) == 0 || (this[4].i8[0] & 4) != 0);
    }

    else
    {
      v27 = 0;
      v26 = v49[8];
    }

    v49[24] = v27;
    this[10] = vaddq_s64(this[10], vdupq_n_s64(1uLL));
    ++this[11].i64[0];
    v24 = v26 & 2 | (v25 >> 1) & 1 | (4 * ((v49[12] >> 1) & 1));
  }

  v28 = this[7].i64[1];
  v29 = this[8].i64[0];
  if (v29 == v28)
  {
    v30 = 0;
  }

  else
  {
    v30 = 46 * ((v29 - v28) >> 3) - 1;
  }

  v31 = this[9].u64[0];
  if (v30 == this[9].i64[1] + v31)
  {
    v32 = v31 >= 0x2E;
    v33 = v31 - 46;
    if (!v32)
    {
      v34 = this[8].i64[1];
      v35 = this[7].i64[0];
      if (v29 - v28 < (v34 - v35))
      {
        operator new();
      }

      if (v34 == v35)
      {
        v36 = 1;
      }

      else
      {
        v36 = (v34 - v35) >> 2;
      }

      if (!(v36 >> 61))
      {
        operator new();
      }

LABEL_64:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    this[9].i64[0] = v33;
    v44 = *v28;
    this[7].i64[1] = (v28 + 8);
    std::__split_buffer<webrtc::BitrateProber::ProbeCluster *>::emplace_back<webrtc::BitrateProber::ProbeCluster *&>(this[7].i64, &v44);
    v28 = this[7].i64[1];
    v29 = this[8].i64[0];
  }

  if (v29 == v28 || (v37 = this[9].i64[1] + this[9].i64[0], (v38 = *&v28[8 * (v37 / 0x2E)]) == 0))
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v39 = v38 + 88 * (v37 % 0x2E);
  *v39 = a2;
  *(v39 + 4) = 0;
  *(v39 + 5) = v24;
  *(v39 + 8) = 0;
  if (v45 >= 2)
  {
    if (v45)
    {
      absl::inlined_vector_internal::Storage<webrtc::DecodeTargetIndication,10ul,std::allocator<webrtc::DecodeTargetIndication>>::InitFrom((v39 + 8), &v45);
    }

    else
    {
      *(v39 + 8) = v45;
      v40 = *__p;
      v41 = v47;
      *(v39 + 48) = v48;
      *(v39 + 16) = v40;
      *(v39 + 32) = v41;
    }
  }

  v42 = *v49;
  *(v39 + 72) = *&v49[16];
  *(v39 + 56) = v42;
  ++this[9].i64[1];
  v43 = *&v49[16];
  *a3 = *v49;
  a3[1] = v43;
  if (v45)
  {
    operator delete(__p[0]);
  }
}

void webrtc::DefaultTemporalLayers::OnEncodeDone(webrtc::DefaultTemporalLayers *this, unint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, webrtc::CodecSpecificInfo *a7, uint64_t a8)
{
  v109[1] = *MEMORY[0x277D85DE8];
  if (!a4)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v33, v34, v35, v36, v37, v38, v39, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/vp8/default_temporal_layers.cc");
    }

    v40 = this;
    v41 = a3;

    goto LABEL_41;
  }

  v10 = *(this + 19);
  if (!v10)
  {
LABEL_186:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/vp8/default_temporal_layers.cc", 498, "!pending_frames_.empty()", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v97);
LABEL_187:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/vp8/default_temporal_layers.cc", 609, "num_layers < 5", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, a5, a6, a7, a8, v26);
    goto LABEL_188;
  }

  v12 = a5;
  v13 = *(this + 18);
  while (1)
  {
    v14 = *(*(this + 15) + 8 * (v13 / 0x2E)) + 88 * (v13 % 0x2E);
    v15 = (v14 + 8);
    if (*v14 == a3)
    {
      break;
    }

    if (*v15)
    {
      operator delete(*(v14 + 16));
      v10 = *(this + 19) - 1;
      v13 = *(this + 18) + 1;
      *(this + 18) = v13;
      *(this + 19) = v10;
      if (v13 >= 0x5C)
      {
LABEL_10:
        operator delete(**(this + 15));
        *(this + 15) += 8;
        v10 = *(this + 19);
        v13 = *(this + 18) - 46;
        *(this + 18) = v13;
      }
    }

    else
    {
      --v10;
      *(this + 18) = ++v13;
      *(this + 19) = v10;
      if (v13 >= 0x5C)
      {
        goto LABEL_10;
      }
    }

    if (!v10)
    {
      goto LABEL_186;
    }
  }

  if (*(this + 1) != 1)
  {
    if (!v12)
    {
      *(a7 + 9) = *(v14 + 76);
      *(a7 + 10) = *(v14 + 80);
      *(a7 + 12) = 1;
      v16 = (a7 + 1640);
      if (*(a7 + 1848) != 1)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    *(this + 72) = 0;
    *(a7 + 9) = 256;
    v42 = *(this + 8);
    if (v42)
    {
      *(this + 20) = 0;
      if ((v42 & 2) != 0)
      {
LABEL_45:
        *(this + 21) = 0;
        if ((v42 & 4) != 0)
        {
          goto LABEL_46;
        }

        goto LABEL_84;
      }
    }

    else
    {
      *(v14 + 5) |= 1u;
      if ((v42 & 2) != 0)
      {
        goto LABEL_45;
      }
    }

    *(v14 + 5) |= 2u;
    if ((v42 & 4) != 0)
    {
LABEL_46:
      *(this + 22) = 0;
      *(a7 + 12) = 1;
      v16 = (a7 + 1640);
      if (*(a7 + 1848) != 1)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

LABEL_84:
    *(v14 + 5) |= 4u;
    *(a7 + 12) = 1;
    v16 = (a7 + 1640);
    if (*(a7 + 1848) != 1)
    {
      goto LABEL_14;
    }

LABEL_13:
    webrtc::GenericFrameInfo::~GenericFrameInfo(v16);
    goto LABEL_14;
  }

  *(a7 + 9) = 255;
  *(a7 + 12) = 1;
  v16 = (a7 + 1640);
  if (*(a7 + 1848) == 1)
  {
    goto LABEL_13;
  }

LABEL_14:
  *(a7 + 212) = 0;
  *(a7 + 215) = 0;
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = (a7 + 1744);
  *(a7 + 218) = 0;
  *(a7 + 227) = 0;
  *(a7 + 229) = 0;
  *(a7 + 228) = 0;
  *(a7 + 230) = 0xFFFFFFFFLL;
  *(a7 + 1848) = 1;
  v18 = a7 + 48;
  LODWORD(v98) = 0;
  if (!v12)
  {
    v43 = 0;
    v44 = v14 + 60;
    while (1)
    {
      LOBYTE(v109[0]) = 0;
      if (v43 <= 2 && (*(v44 + 4 * v43) & 1) != 0)
      {
        break;
      }

      v89 = 0;
      v90 = 0;
      if (v43 <= 2)
      {
        goto LABEL_173;
      }

LABEL_175:
      if ((v89 & 1) != 0 || v90)
      {
        v93 = *v17;
        if (*v17)
        {
          v94 = *(a7 + 219);
          v95 = *(a7 + 220);
        }

        else
        {
          v94 = a7 + 1752;
          v95 = 8;
        }

        if (v93 >> 1 == v95)
        {
          absl::inlined_vector_internal::Storage<webrtc::CodecBufferUsage,8ul,std::allocator<webrtc::CodecBufferUsage>>::EmplaceBackSlow<int &,BOOL &,BOOL &>(a7 + 218);
        }

        if (!v94)
        {
          goto LABEL_183;
        }

        v96 = &v94[8 * (v93 >> 1)];
        *v96 = v43;
        v96[4] = v89;
        v96[5] = v90;
        *v17 = v93 + 2;
      }

      v88 = v98;
      v43 = v98 + 1;
      LODWORD(v98) = v98 + 1;
      if (v88 >= 2)
      {
        goto LABEL_24;
      }
    }

    v89 = 1;
    LOBYTE(v109[0]) = 1;
    v91 = *(a7 + 5);
    *(a7 + 5) = v91 + 1;
    *(a7 + v91 + 2) = v43;
LABEL_173:
    v90 = 0;
    if ((*(v44 + 4 * v43) & 2) != 0)
    {
      v90 = 1;
      v92 = *(a7 + 9);
      *(a7 + 9) = v92 + 1;
      *&v18[8 * v92] = v43;
    }

    goto LABEL_175;
  }

  v19 = 0;
  do
  {
    LOBYTE(v109[0]) = 0;
    v20 = *(a7 + 9);
    *(a7 + 9) = v20 + 1;
    *&v18[8 * v20] = v19;
    v21 = *(a7 + 218);
    if (v21)
    {
      v22 = *(a7 + 219);
      v23 = *(a7 + 220);
    }

    else
    {
      v22 = a7 + 1752;
      v23 = 8;
    }

    if (v21 >> 1 == v23)
    {
      absl::inlined_vector_internal::Storage<webrtc::CodecBufferUsage,8ul,std::allocator<webrtc::CodecBufferUsage>>::EmplaceBackSlow<int &,BOOL &,BOOL &>(a7 + 218);
    }

    if (!v22)
    {
      goto LABEL_183;
    }

    v24 = &v22[8 * (v21 >> 1)];
    *v24 = v19;
    *(v24 + 2) = 256;
    *v17 = v21 + 2;
    v25 = v98;
    v19 = v98 + 1;
    LODWORD(v98) = v98 + 1;
  }

  while (v25 < 2);
LABEL_24:
  if ((v12 & 1) == 0)
  {
    v45 = (a7 + 1648) == v15;
    v15 = 0xB21642C8590B2165;
    if (!v45)
    {
      v46 = *(v14 + 8);
      if (v46)
      {
        v47 = *(v14 + 16);
      }

      else
      {
        v47 = v14 + 16;
      }

      absl::inlined_vector_internal::Storage<webrtc::DecodeTargetIndication,10ul,std::allocator<webrtc::DecodeTargetIndication>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<webrtc::DecodeTargetIndication>,webrtc::DecodeTargetIndication const*>>(a7 + 206, v47, v46 >> 1);
    }

    *(a7 + 411) = *(v14 + 76);
    if (*(v14 + 4))
    {
      goto LABEL_159;
    }

    goto LABEL_152;
  }

  v26 = *(this + 2);
  v15 = 0xB21642C8590B2165;
  if (v26 >= 5)
  {
    goto LABEL_187;
  }

  if (v26 <= 0)
  {
LABEL_188:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/vp8/default_temporal_layers.cc", 610, "num_layers > 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, a5, a6, a7, a8, v26);
LABEL_41:
    webrtc::DefaultTemporalLayers::OnFrameDropped(v40, v33, v41, v35, v36, v37, v38, v39);
    return;
  }

  HIDWORD(v98) = *(this + 2);
  v99 = 0;
  v100 = 0;
  v104 = 0;
  __p[1] = 0;
  v108 = 0;
  __p[0] = 0;
  LODWORD(v98) = 0;
  if (v26 > 2)
  {
    if (v26 == 3)
    {
      std::vector<webrtc::FrameDependencyTemplate>::resize(__p, 7uLL);
      v48 = __p[0];
      if (__p[1] == __p[0])
      {
        goto LABEL_183;
      }

      *(__p[0] + 1) = 0;
      if (v48[1])
      {
        operator delete(v48[2]);
      }

      v48[1] = 6;
      v48[2] = 0x200000002;
      *(v48 + 6) = 2;
      v49 = __p[0];
      if ((0x4EC4EC4EC4EC4EC5 * ((__p[1] - __p[0]) >> 3)) <= 1)
      {
        goto LABEL_183;
      }

      *(__p[0] + 27) = 0;
      if (*(v49 + 112))
      {
        operator delete(*(v49 + 15));
      }

      *(v49 + 14) = 6;
      *(v49 + 15) = 0x200000002;
      *(v49 + 32) = 2;
      LODWORD(v109[0]) = 4;
      absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>(v49 + 20, v109, 1uLL);
      v50 = __p[0];
      if ((0x4EC4EC4EC4EC4EC5 * ((__p[1] - __p[0]) >> 3)) <= 2)
      {
        goto LABEL_183;
      }

      *(__p[0] + 53) = 0;
      if (*(v50 + 216))
      {
        operator delete(*(v50 + 28));
      }

      *(v50 + 27) = 6;
      *(v50 + 28) = 0x300000002;
      *(v50 + 58) = 3;
      LODWORD(v109[0]) = 4;
      absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>(v50 + 33, v109, 1uLL);
      v51 = __p[0];
      if ((0x4EC4EC4EC4EC4EC5 * ((__p[1] - __p[0]) >> 3)) <= 3)
      {
        goto LABEL_183;
      }

      *(__p[0] + 79) = 1;
      if (*(v51 + 320))
      {
        operator delete(*(v51 + 41));
      }

      *(v51 + 40) = 6;
      *(v51 + 41) = 0x200000000;
      *(v51 + 84) = 2;
      LODWORD(v109[0]) = 2;
      absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>(v51 + 46, v109, 1uLL);
      v52 = __p[0];
      if ((0x4EC4EC4EC4EC4EC5 * ((__p[1] - __p[0]) >> 3)) <= 4)
      {
        goto LABEL_183;
      }

      *(__p[0] + 105) = 1;
      if (*(v52 + 424))
      {
        operator delete(*(v52 + 54));
      }

      *(v52 + 53) = 6;
      *(v52 + 54) = 0x100000000;
      *(v52 + 110) = 2;
      v109[0] = 0x200000004;
      absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>(v52 + 59, v109, 2uLL);
      v53 = __p[0];
      if ((0x4EC4EC4EC4EC4EC5 * ((__p[1] - __p[0]) >> 3)) <= 5)
      {
        goto LABEL_183;
      }

      *(__p[0] + 131) = 2;
      if (*(v53 + 528))
      {
        operator delete(*(v53 + 67));
      }

      *(v53 + 66) = 6;
      *(v53 + 67) = 0;
      *(v53 + 136) = 1;
      LODWORD(v109[0]) = 1;
      absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>(v53 + 72, v109, 1uLL);
      v54 = __p[0];
      if ((0x4EC4EC4EC4EC4EC5 * ((__p[1] - __p[0]) >> 3)) <= 6)
      {
        goto LABEL_183;
      }

      *(__p[0] + 157) = 2;
      if (*(v54 + 632))
      {
        operator delete(*(v54 + 80));
      }

      *(v54 + 79) = 6;
      *(v54 + 80) = 0;
      *(v54 + 162) = 1;
      v109[0] = 0x100000003;
      absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>(v54 + 85, v109, 2uLL);
      v29 = a7 + 1856;
      if ((*(a7 + 1984) & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      std::vector<webrtc::FrameDependencyTemplate>::resize(__p, 8uLL);
      v60 = __p[0];
      if (__p[1] == __p[0])
      {
        goto LABEL_183;
      }

      *(__p[0] + 1) = 0;
      if (v60[1])
      {
        operator delete(v60[2]);
      }

      v60[1] = 8;
      *&v61 = 0x200000002;
      *(&v61 + 1) = 0x200000002;
      *(v60 + 1) = v61;
      v62 = __p[0];
      if ((0x4EC4EC4EC4EC4EC5 * ((__p[1] - __p[0]) >> 3)) <= 1)
      {
        goto LABEL_183;
      }

      *(__p[0] + 27) = 0;
      if (v62[112])
      {
        operator delete(*(v62 + 15));
      }

      *(v62 + 14) = 8;
      *&v63 = 0x200000002;
      *(&v63 + 1) = 0x200000002;
      *(v62 + 120) = v63;
      LODWORD(v109[0]) = 8;
      absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>(v62 + 20, v109, 1uLL);
      v64 = __p[0];
      if ((0x4EC4EC4EC4EC4EC5 * ((__p[1] - __p[0]) >> 3)) <= 2)
      {
        goto LABEL_183;
      }

      *(__p[0] + 53) = 1;
      if (*(v64 + 216))
      {
        operator delete(*(v64 + 28));
      }

      *(v64 + 27) = 8;
      *(v64 + 14) = xmmword_273B92050;
      LODWORD(v109[0]) = 4;
      absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>(v64 + 33, v109, 1uLL);
      v65 = __p[0];
      if ((0x4EC4EC4EC4EC4EC5 * ((__p[1] - __p[0]) >> 3)) <= 3)
      {
        goto LABEL_183;
      }

      *(__p[0] + 79) = 1;
      if (v65[320])
      {
        operator delete(*(v65 + 41));
      }

      *(v65 + 40) = 8;
      *(v65 + 328) = xmmword_273B92050;
      v109[0] = 0x800000004;
      absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>(v65 + 46, v109, 2uLL);
      v66 = __p[0];
      if ((0x4EC4EC4EC4EC4EC5 * ((__p[1] - __p[0]) >> 3)) <= 4)
      {
        goto LABEL_183;
      }

      *(__p[0] + 105) = 2;
      if (*(v66 + 424))
      {
        operator delete(*(v66 + 54));
      }

      *(v66 + 53) = 8;
      *(v66 + 27) = xmmword_273B92060;
      LODWORD(v109[0]) = 2;
      absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>(v66 + 59, v109, 1uLL);
      v67 = __p[0];
      if ((0x4EC4EC4EC4EC4EC5 * ((__p[1] - __p[0]) >> 3)) <= 5)
      {
        goto LABEL_183;
      }

      *(__p[0] + 131) = 2;
      if (v67[528])
      {
        operator delete(*(v67 + 67));
      }

      *(v67 + 66) = 8;
      *(v67 + 536) = xmmword_273B92060;
      v109[0] = 0x400000002;
      absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>(v67 + 72, v109, 2uLL);
      v68 = __p[0];
      if ((0x4EC4EC4EC4EC4EC5 * ((__p[1] - __p[0]) >> 3)) <= 6)
      {
        goto LABEL_183;
      }

      *(__p[0] + 157) = 3;
      if (*(v68 + 632))
      {
        operator delete(*(v68 + 80));
      }

      *(v68 + 79) = 8;
      *(v68 + 40) = xmmword_273B8E9C0;
      LODWORD(v109[0]) = 1;
      absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>(v68 + 85, v109, 1uLL);
      v69 = __p[0];
      if ((0x4EC4EC4EC4EC4EC5 * ((__p[1] - __p[0]) >> 3)) <= 7)
      {
        goto LABEL_183;
      }

      *(__p[0] + 183) = 3;
      if (v69[736])
      {
        operator delete(*(v69 + 93));
      }

      *(v69 + 92) = 8;
      *(v69 + 744) = xmmword_273B8E9C0;
      v109[0] = 0x300000001;
      absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>(v69 + 98, v109, 2uLL);
      v29 = a7 + 1856;
      if ((*(a7 + 1984) & 1) == 0)
      {
        goto LABEL_36;
      }
    }
  }

  else if (v26 == 1)
  {
    std::vector<webrtc::FrameDependencyTemplate>::resize(__p, 2uLL);
    v27 = __p[0];
    if (__p[1] == __p[0])
    {
      goto LABEL_183;
    }

    *(__p[0] + 1) = 0;
    if (v27[1])
    {
      operator delete(v27[2]);
    }

    v27[1] = 2;
    *(v27 + 4) = 2;
    v28 = __p[0];
    if ((0x4EC4EC4EC4EC4EC5 * ((__p[1] - __p[0]) >> 3)) <= 1)
    {
      goto LABEL_183;
    }

    *(__p[0] + 27) = 0;
    if (*(v28 + 112))
    {
      operator delete(*(v28 + 15));
    }

    *(v28 + 14) = 2;
    *(v28 + 30) = 2;
    LODWORD(v109[0]) = 1;
    absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>(v28 + 20, v109, 1uLL);
    v29 = a7 + 1856;
    if ((*(a7 + 1984) & 1) == 0)
    {
LABEL_36:
      *v29 = v98;
      *(v29 + 2) = v99;
      *(a7 + 234) = v100;
      v30 = v104;
      *(a7 + 239) = v103;
      v31 = v102;
      *(a7 + 1880) = *v101;
      *(a7 + 1896) = v31;
      *(a7 + 240) = v30;
      v32 = v106;
      *(a7 + 1928) = *v105;
      *(a7 + 1944) = v32;
      v100 = 0;
      v104 = 0;
      *(a7 + 1960) = *__p;
      *(a7 + 247) = v108;
      __p[1] = 0;
      v108 = 0;
      __p[0] = 0;
      *(a7 + 1984) = 1;
      goto LABEL_141;
    }
  }

  else
  {
    std::vector<webrtc::FrameDependencyTemplate>::resize(__p, 5uLL);
    v55 = __p[0];
    if (__p[1] == __p[0])
    {
      goto LABEL_183;
    }

    *(__p[0] + 1) = 0;
    if (v55[1])
    {
      operator delete(v55[2]);
    }

    v55[1] = 4;
    v55[2] = 0x200000002;
    v56 = __p[0];
    if ((0x4EC4EC4EC4EC4EC5 * ((__p[1] - __p[0]) >> 3)) <= 1)
    {
      goto LABEL_183;
    }

    *(__p[0] + 27) = 0;
    if (*(v56 + 112))
    {
      operator delete(*(v56 + 15));
    }

    *(v56 + 14) = 4;
    *(v56 + 15) = 0x200000002;
    LODWORD(v109[0]) = 2;
    absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>(v56 + 20, v109, 1uLL);
    v57 = __p[0];
    if ((0x4EC4EC4EC4EC4EC5 * ((__p[1] - __p[0]) >> 3)) <= 2)
    {
      goto LABEL_183;
    }

    *(__p[0] + 53) = 0;
    if (*(v57 + 216))
    {
      operator delete(*(v57 + 28));
    }

    *(v57 + 27) = 4;
    *(v57 + 28) = 0x300000002;
    LODWORD(v109[0]) = 2;
    absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>(v57 + 33, v109, 1uLL);
    v58 = __p[0];
    if ((0x4EC4EC4EC4EC4EC5 * ((__p[1] - __p[0]) >> 3)) <= 3)
    {
      goto LABEL_183;
    }

    *(__p[0] + 79) = 1;
    if (*(v58 + 320))
    {
      operator delete(*(v58 + 41));
    }

    *(v58 + 40) = 4;
    *(v58 + 41) = 0x200000000;
    LODWORD(v109[0]) = 1;
    absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>(v58 + 46, v109, 1uLL);
    v59 = __p[0];
    if ((0x4EC4EC4EC4EC4EC5 * ((__p[1] - __p[0]) >> 3)) <= 4)
    {
      goto LABEL_183;
    }

    *(__p[0] + 105) = 1;
    if (*(v59 + 424))
    {
      operator delete(*(v59 + 54));
    }

    *(v59 + 53) = 4;
    *(v59 + 54) = 0x100000000;
    v109[0] = 0x100000002;
    absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>(v59 + 59, v109, 2uLL);
    v29 = a7 + 1856;
    if ((*(a7 + 1984) & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  webrtc::FrameDependencyStructure::operator=(v29, &v98);
  v70 = __p[0];
  if (__p[0])
  {
    v71 = __p[1];
    v72 = __p[0];
    if (__p[1] == __p[0])
    {
LABEL_140:
      __p[1] = v70;
      operator delete(v72);
      goto LABEL_141;
    }

    while (2)
    {
      if (*(v71 - 3))
      {
        operator delete(*(v71 - 2));
        if (*(v71 - 6))
        {
          goto LABEL_137;
        }

LABEL_134:
        if (*(v71 - 12))
        {
LABEL_138:
          operator delete(*(v71 - 11));
        }
      }

      else
      {
        if ((*(v71 - 6) & 1) == 0)
        {
          goto LABEL_134;
        }

LABEL_137:
        operator delete(*(v71 - 5));
        if (*(v71 - 12))
        {
          goto LABEL_138;
        }
      }

      v71 -= 13;
      if (v71 == v70)
      {
        v72 = __p[0];
        goto LABEL_140;
      }

      continue;
    }
  }

LABEL_141:
  if (v104)
  {
    operator delete(v105[0]);
    if ((v100 & 1) == 0)
    {
      goto LABEL_143;
    }
  }

  else if ((v100 & 1) == 0)
  {
LABEL_143:
    v73 = *(this + 5);
    if (v73 == *(this + 6))
    {
      goto LABEL_183;
    }

LABEL_147:
    if ((a7 + 1648) == v73)
    {
      goto LABEL_184;
    }

    v74 = *v73;
    v77 = v73[1];
    v75 = v73 + 1;
    v76 = v77;
    if (v74)
    {
      v78 = v76;
    }

    else
    {
      v78 = v75;
    }

    absl::inlined_vector_internal::Storage<webrtc::DecodeTargetIndication,10ul,std::allocator<webrtc::DecodeTargetIndication>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<webrtc::DecodeTargetIndication>,webrtc::DecodeTargetIndication const*>>(a7 + 206, v78, v74 >> 1);
    *(a7 + 411) = 0;
    if (*(v14 + 4))
    {
      goto LABEL_159;
    }

    goto LABEL_152;
  }

  operator delete(v101[0]);
  v73 = *(this + 5);
  if (v73 != *(this + 6))
  {
    goto LABEL_147;
  }

LABEL_183:
  while (2)
  {
    while (2)
    {
      __break(1u);
LABEL_184:
      *(a7 + 411) = 0;
      if ((*(v14 + 4) & 1) == 0)
      {
LABEL_152:
        v79 = *(v14 + 5);
        if (v79)
        {
          *(this + 20) = 0;
          if ((v79 & 2) == 0)
          {
LABEL_154:
            if ((v79 & 4) == 0)
            {
              goto LABEL_159;
            }

            goto LABEL_158;
          }
        }

        else if ((*(v14 + 5) & 2) == 0)
        {
          goto LABEL_154;
        }

        *(this + 21) = 0;
        if ((v79 & 4) == 0)
        {
          goto LABEL_159;
        }

LABEL_158:
        *(this + 22) = 0;
      }

LABEL_159:
      v80 = *(this + 19);
      if (!v80)
      {
        continue;
      }

      break;
    }

    v81 = *(this + 18);
    v82 = (((v81 >> 1) * v15) >> 64) >> 4;
    v83 = *(*(this + 15) + 8 * v82);
    if (!v83)
    {
      continue;
    }

    break;
  }

  v84 = v83 + 88 * (v81 - 46 * v82);
  if ((*(v84 + 8) & 1) == 0)
  {
    v85 = v81 + 1;
    *(this + 18) = v85;
    *(this + 19) = v80 - 1;
    if (v85 < 0x5C)
    {
      return;
    }

LABEL_165:
    operator delete(**(this + 15));
    *(this + 15) += 8;
    *(this + 18) -= 46;
    return;
  }

  operator delete(*(v84 + 16));
  v86 = *(this + 19) - 1;
  v87 = *(this + 18) + 1;
  *(this + 18) = v87;
  *(this + 19) = v86;
  if (v87 >= 0x5C)
  {
    goto LABEL_165;
  }
}

void webrtc::DefaultTemporalLayers::OnFrameDropped(webrtc::DefaultTemporalLayers *this, unint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(this + 19);
  if (!v8)
  {
LABEL_15:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/vp8/default_temporal_layers.cc", 594, "!pending_frames_.empty()", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v17);
    JUMPOUT(0x2731BBB80);
  }

  v11 = *(this + 18);
  while (1)
  {
    v12 = *(*(this + 15) + 8 * (v11 / 0x2E)) + 88 * (v11 % 0x2E);
    v13 = *(v12 + 8);
    if (*v12 == a3)
    {
      break;
    }

    if (v13)
    {
      operator delete(*(v12 + 16));
      v8 = *(this + 19) - 1;
      v11 = *(this + 18) + 1;
      *(this + 18) = v11;
      *(this + 19) = v8;
      if (v11 >= 0x5C)
      {
LABEL_9:
        operator delete(**(this + 15));
        *(this + 15) += 8;
        v8 = *(this + 19);
        v11 = *(this + 18) - 46;
        *(this + 18) = v11;
      }
    }

    else
    {
      --v8;
      *(this + 18) = ++v11;
      *(this + 19) = v8;
      if (v11 >= 0x5C)
      {
        goto LABEL_9;
      }
    }

    if (!v8)
    {
      goto LABEL_15;
    }
  }

  if ((v13 & 1) == 0)
  {
    v14 = v11 + 1;
    *(this + 18) = v14;
    *(this + 19) = v8 - 1;
    if (v14 < 0x5C)
    {
      return;
    }

LABEL_14:
    operator delete(**(this + 15));
    *(this + 15) += 8;
    *(this + 18) -= 46;
    return;
  }

  operator delete(*(v12 + 16));
  v15 = *(this + 19) - 1;
  v16 = *(this + 18) + 1;
  *(this + 18) = v16;
  *(this + 19) = v15;
  if (v16 >= 0x5C)
  {
    goto LABEL_14;
  }
}

void std::vector<webrtc::FrameDependencyTemplate>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0x4EC4EC4EC4EC4EC5 * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 == 0 || !v5)
  {
    if (v5)
    {
      return;
    }

    v7 = *a1 + 104 * a2;
    while (1)
    {
      if (v3 == v7)
      {
        a1[1] = v7;
        return;
      }

      if (*(v3 - 24))
      {
        operator delete(*(v3 - 16));
        if (*(v3 - 48))
        {
LABEL_15:
          operator delete(*(v3 - 40));
          if ((*(v3 - 96) & 1) == 0)
          {
            goto LABEL_8;
          }

          goto LABEL_16;
        }
      }

      else if (*(v3 - 48))
      {
        goto LABEL_15;
      }

      if ((*(v3 - 96) & 1) == 0)
      {
        goto LABEL_8;
      }

LABEL_16:
      operator delete(*(v3 - 88));
LABEL_8:
      v3 -= 104;
    }
  }

  std::vector<webrtc::FrameDependencyTemplate>::__append(a1, v6);
}

void *absl::inlined_vector_internal::Storage<webrtc::DecodeTargetIndication,10ul,std::allocator<webrtc::DecodeTargetIndication>>::InitFrom(unint64_t *a1, unint64_t *a2)
{
  v2 = *a2;
  if (*a2 <= 1)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v2)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

LABEL_7:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  result = memcpy(a1 + 1, a2 + 1, 4 * (v2 >> 1));
  *a1 = *a2;
  return result;
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,webrtc::DefaultTemporalLayers::UpdateSearchOrder(webrtc::Vp8FrameConfig *)::$_0 &,std::pair<webrtc::Vp8FrameConfig::Vp8BufferReference,unsigned long> *,false>(unint64_t result, unsigned __int8 *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  for (i = v7; ; *(i - 1) = v56)
  {
LABEL_3:
    v7 = i;
    v9 = (a2 - i) >> 4;
    if (v9 > 2)
    {
      switch(v9)
      {
        case 3:
          LODWORD(v93) = i[16];
          v92 = *(i + 3);
          LODWORD(v56) = *i;
          v35 = *(i + 1);
          if (v92 == v35)
          {
            v133 = v93 < v56;
          }

          else
          {
            v133 = v92 < v35;
          }

          v134 = *(a2 - 16);
          v135 = *(a2 - 1);
          v136 = v134 < v93;
          if (v135 != v92)
          {
            v136 = v135 < v92;
          }

          if (!v133)
          {
            if (!v136)
            {
              return result;
            }

            i[16] = v134;
            *(a2 - 16) = v93;
            *(i + 3) = v135;
            *(a2 - 1) = v92;
            v142 = i[16];
            v143 = *(i + 3);
            goto LABEL_281;
          }

          if (v136)
          {
            *i = v134;
            *(a2 - 16) = v56;
            *(i + 1) = v135;
            goto LABEL_302;
          }

LABEL_298:
          *v7 = v93;
          v7[16] = v56;
          *(v7 + 1) = v92;
          *(v7 + 3) = v35;
          v223 = *(a2 - 16);
          v224 = *(a2 - 1);
          v225 = v223 < v56;
          if (v224 != v35)
          {
            v225 = v224 < v35;
          }

          if (!v225)
          {
            return result;
          }

          v7[16] = v223;
          *(a2 - 16) = v56;
          *(v7 + 3) = v224;
LABEL_302:
          *(a2 - 1) = v35;
          return result;
        case 4:

          return std::__sort4[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::DefaultTemporalLayers::UpdateSearchOrder(webrtc::Vp8FrameConfig *)::$_0 &,std::pair<webrtc::Vp8FrameConfig::Vp8BufferReference,unsigned long> *,0>(i, i + 16, i + 32, a2 - 16);
        case 5:
          result = std::__sort4[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::DefaultTemporalLayers::UpdateSearchOrder(webrtc::Vp8FrameConfig *)::$_0 &,std::pair<webrtc::Vp8FrameConfig::Vp8BufferReference,unsigned long> *,0>(i, i + 16, i + 32, i + 48);
          v137 = *(a2 - 16);
          v138 = *(a2 - 1);
          v139 = i[48];
          v140 = *(i + 7);
          v141 = v137 < v139;
          if (v138 != v140)
          {
            v141 = v138 < v140;
          }

          if (!v141)
          {
            return result;
          }

          i[48] = v137;
          *(a2 - 16) = v139;
          *(i + 7) = v138;
          *(a2 - 1) = v140;
          v142 = i[48];
          v143 = *(i + 7);
          v144 = i[32];
          v145 = *(i + 5);
          v146 = v142 < v144;
          if (v143 != v145)
          {
            v146 = v143 < v145;
          }

          if (!v146)
          {
            return result;
          }

          i[32] = v142;
          i[48] = v144;
          *(i + 5) = v143;
          *(i + 7) = v145;
          v147 = i[16];
          v148 = *(i + 3);
          v149 = v142 < v147;
          if (v143 != v148)
          {
            v149 = v143 < v148;
          }

          if (!v149)
          {
            return result;
          }

          i[16] = v142;
          i[32] = v147;
          *(i + 3) = v143;
          *(i + 5) = v148;
LABEL_281:
          v212 = *i;
          v213 = *(i + 1);
          v214 = v142 < v212;
          if (v143 != v213)
          {
            v214 = v143 < v213;
          }

          if (v214)
          {
            *i = v142;
            i[16] = v212;
            *(i + 1) = v143;
            *(i + 3) = v213;
          }

          return result;
      }
    }

    else
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v150 = *(a2 - 16);
        v151 = *(a2 - 1);
        v152 = *i;
        v153 = *(i + 1);
        v154 = v150 < v152;
        if (v151 != v153)
        {
          v154 = v151 < v153;
        }

        if (v154)
        {
          *i = v150;
          *(a2 - 16) = v152;
          *(i + 1) = v151;
          *(a2 - 1) = v153;
        }

        return result;
      }
    }

    if (v9 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (i != a2)
      {
        v169 = (v9 - 2) >> 1;
        v170 = v169;
        do
        {
          v171 = v170;
          if (v169 >= v170)
          {
            v172 = (2 * v170) | 1;
            v173 = &i[16 * v172];
            if (2 * v171 + 2 >= v9)
            {
              v175 = *v173;
            }

            else
            {
              v174 = *(v173 + 1);
              v175 = v173[16];
              v176 = *(v173 + 3);
              v155 = v174 == v176;
              v177 = v174 < v176;
              if (v155)
              {
                v177 = *v173 < v175;
              }

              if (v177)
              {
                v173 += 16;
                v172 = 2 * v171 + 2;
              }

              else
              {
                v175 = *v173;
              }
            }

            v178 = &i[16 * v171];
            v179 = *(v173 + 1);
            v180 = *v178;
            v181 = *(v178 + 1);
            if (v179 == v181)
            {
              result = v175 < v180;
            }

            else
            {
              result = v179 < v181;
            }

            if ((result & 1) == 0)
            {
              do
              {
                *v178 = v175;
                *(v178 + 1) = v179;
                v178 = v173;
                if (v169 < v172)
                {
                  break;
                }

                v185 = (2 * v172) | 1;
                v173 = &i[16 * v185];
                v172 = 2 * v172 + 2;
                if (v172 < v9)
                {
                  v175 = *v173;
                  v182 = *(v173 + 1);
                  v183 = *(v173 + 3);
                  v155 = v182 == v183;
                  v184 = v182 < v183;
                  if (v155)
                  {
                    v184 = v175 < v173[16];
                  }

                  if (v184)
                  {
                    v175 = v173[16];
                    v173 += 16;
                  }

                  else
                  {
                    v172 = v185;
                  }
                }

                else
                {
                  v175 = *v173;
                  v172 = v185;
                }

                v179 = *(v173 + 1);
                result = v179 == v181 ? v175 < v180 : v179 < v181;
              }

              while (result != 1);
              *v178 = v180;
              *(v178 + 1) = v181;
            }
          }

          v170 = v171 - 1;
        }

        while (v171);
        do
        {
          v187 = 0;
          v188 = *i;
          v189 = *(i + 1);
          v190 = (v9 - 2) >> 1;
          v191 = i;
          do
          {
            while (1)
            {
              v200 = &v191[16 * v187];
              v199 = v200 + 16;
              v201 = (2 * v187) | 1;
              v187 = 2 * v187 + 2;
              if (v187 < v9)
              {
                break;
              }

              v187 = v201;
              *v191 = *v199;
              *(v191 + 1) = *(v200 + 3);
              v191 = v200 + 16;
              if (v201 > v190)
              {
                goto LABEL_269;
              }
            }

            v194 = v200[32];
            v192 = v200 + 32;
            v193 = v194;
            result = *(v192 - 16);
            v195 = *(v192 - 1);
            v196 = *(v192 + 1);
            v197 = result < v194;
            v155 = v195 == v196;
            v198 = v195 < v196;
            if (v155)
            {
              v198 = v197;
            }

            if (v198)
            {
              v199 = v192;
            }

            else
            {
              v193 = *(v192 - 16);
              v187 = v201;
            }

            *v191 = v193;
            *(v191 + 1) = *(v199 + 1);
            v191 = v199;
          }

          while (v187 <= v190);
LABEL_269:
          if (v199 == a2 - 16)
          {
            *v199 = v188;
            *(v199 + 1) = v189;
          }

          else
          {
            *v199 = *(a2 - 16);
            *(v199 + 1) = *(a2 - 1);
            *(a2 - 16) = v188;
            *(a2 - 1) = v189;
            v202 = (v199 - i + 16) >> 4;
            v186 = v202 < 2;
            v203 = v202 - 2;
            if (!v186)
            {
              v204 = v203 >> 1;
              v205 = &i[16 * v204];
              v206 = *v205;
              v207 = *(v205 + 1);
              v208 = *v199;
              v209 = *(v199 + 1);
              v210 = v206 < v208;
              result = v207 < v209;
              if (v207 != v209)
              {
                v210 = v207 < v209;
              }

              if (v210)
              {
                do
                {
                  *v199 = v206;
                  *(v199 + 1) = v207;
                  v199 = v205;
                  if (!v204)
                  {
                    break;
                  }

                  v204 = (v204 - 1) >> 1;
                  v205 = &i[16 * v204];
                  v206 = *v205;
                  v207 = *(v205 + 1);
                  v211 = v206 < v208;
                  result = v207 < v209;
                  if (v207 != v209)
                  {
                    v211 = v207 < v209;
                  }
                }

                while (v211);
                *v199 = v208;
                *(v199 + 1) = v209;
              }
            }
          }

          a2 -= 16;
          v186 = v9-- <= 2;
        }

        while (!v186);
      }

      return result;
    }

    v10 = &i[16 * (v9 >> 1)];
    v11 = *(a2 - 16);
    v12 = *(a2 - 1);
    if (v9 >= 0x81)
    {
      v13 = *v10;
      v14 = *(v10 + 1);
      v15 = *i;
      v16 = *(i + 1);
      v17 = v14 < v16;
      if (v14 == v16)
      {
        v17 = v13 < v15;
      }

      v18 = v11 < v13;
      if (v12 != v14)
      {
        v18 = v12 < v14;
      }

      if (v17)
      {
        if (v18)
        {
          *i = v11;
          *(a2 - 16) = v15;
          *(i + 1) = v12;
          goto LABEL_42;
        }

        *i = v13;
        *v10 = v15;
        *(i + 1) = v14;
        *(v10 + 1) = v16;
        v36 = *(a2 - 16);
        v37 = *(a2 - 1);
        v38 = v36 < v15;
        if (v37 != v16)
        {
          v38 = v37 < v16;
        }

        if (v38)
        {
          *v10 = v36;
          *(a2 - 16) = v15;
          *(v10 + 1) = v37;
LABEL_42:
          *(a2 - 1) = v16;
        }
      }

      else if (v18)
      {
        *v10 = v11;
        *(a2 - 16) = v13;
        *(v10 + 1) = v12;
        *(a2 - 1) = v14;
        v25 = *v10;
        v26 = *(v10 + 1);
        v27 = *i;
        v28 = *(i + 1);
        v29 = v25 < v27;
        if (v26 != v28)
        {
          v29 = v26 < v28;
        }

        if (v29)
        {
          *i = v25;
          *v10 = v27;
          *(i + 1) = v26;
          *(v10 + 1) = v28;
        }
      }

      v39 = v10 - 16;
      v40 = *(v10 - 16);
      v41 = *(v10 - 1);
      v42 = i[16];
      v43 = *(i + 3);
      if (v41 == v43)
      {
        v44 = v40 < v42;
      }

      else
      {
        v44 = v41 < v43;
      }

      v45 = *(a2 - 32);
      v46 = *(a2 - 3);
      v47 = v45 < v40;
      if (v46 != v41)
      {
        v47 = v46 < v41;
      }

      if (v44)
      {
        if (v47)
        {
          i[16] = v45;
          *(a2 - 32) = v42;
          *(i + 3) = v46;
          goto LABEL_67;
        }

        i[16] = v40;
        *v39 = v42;
        *(i + 3) = v41;
        *(v10 - 1) = v43;
        v57 = *(a2 - 32);
        v58 = *(a2 - 3);
        v59 = v57 < v42;
        if (v58 != v43)
        {
          v59 = v58 < v43;
        }

        if (v59)
        {
          *v39 = v57;
          *(a2 - 32) = v42;
          *(v10 - 1) = v58;
LABEL_67:
          *(a2 - 3) = v43;
        }
      }

      else if (v47)
      {
        *v39 = v45;
        *(a2 - 32) = v40;
        *(v10 - 1) = v46;
        *(a2 - 3) = v41;
        v48 = *v39;
        v49 = *(v10 - 1);
        v50 = i[16];
        v51 = *(i + 3);
        v52 = v48 < v50;
        if (v49 != v51)
        {
          v52 = v49 < v51;
        }

        if (v52)
        {
          i[16] = v48;
          *v39 = v50;
          *(i + 3) = v49;
          *(v10 - 1) = v51;
        }
      }

      v60 = v10 + 16;
      v61 = v10[16];
      v62 = *(v10 + 3);
      v63 = i[32];
      v64 = *(i + 5);
      if (v62 == v64)
      {
        v65 = v61 < v63;
      }

      else
      {
        v65 = v62 < v64;
      }

      v66 = *(a2 - 48);
      v67 = *(a2 - 5);
      v68 = v66 < v61;
      if (v67 != v62)
      {
        v68 = v67 < v62;
      }

      if (v65)
      {
        if (v68)
        {
          i[32] = v66;
          *(a2 - 48) = v63;
          *(i + 5) = v67;
          goto LABEL_85;
        }

        i[32] = v61;
        *v60 = v63;
        *(i + 5) = v62;
        *(v10 + 3) = v64;
        v74 = *(a2 - 48);
        v75 = *(a2 - 5);
        v76 = v74 < v63;
        if (v75 != v64)
        {
          v76 = v75 < v64;
        }

        if (v76)
        {
          *v60 = v74;
          *(a2 - 48) = v63;
          *(v10 + 3) = v75;
LABEL_85:
          *(a2 - 5) = v64;
        }
      }

      else if (v68)
      {
        *v60 = v66;
        *(a2 - 48) = v61;
        *(v10 + 3) = v67;
        *(a2 - 5) = v62;
        v69 = *v60;
        v70 = *(v10 + 3);
        v71 = i[32];
        v72 = *(i + 5);
        v73 = v69 < v71;
        if (v70 != v72)
        {
          v73 = v70 < v72;
        }

        if (v73)
        {
          i[32] = v69;
          *v60 = v71;
          *(i + 5) = v70;
          *(v10 + 3) = v72;
        }
      }

      v77 = *v10;
      v78 = *(v10 + 1);
      v79 = *v39;
      v80 = *(v10 - 1);
      if (v78 == v80)
      {
        result = v77 < v79;
      }

      else
      {
        result = v78 < v80;
      }

      v81 = *v60;
      v82 = *(v10 + 3);
      v83 = v81 < v77;
      if (v82 != v78)
      {
        v83 = v82 < v78;
      }

      if (result)
      {
        if (!v83)
        {
          *v39 = v77;
          *v10 = v79;
          v84 = v82 < v80;
          if (v82 == v80)
          {
            v84 = v81 < v79;
          }

          *(v10 - 1) = v78;
          *(v10 + 1) = v80;
          v39 = v10;
          v78 = v82;
          LOBYTE(v77) = v81;
          if (!v84)
          {
            v78 = v80;
            LOBYTE(v77) = v79;
            goto LABEL_103;
          }
        }

LABEL_102:
        *v39 = v81;
        *v60 = v79;
        *(v39 + 1) = v82;
        *(v60 + 1) = v80;
      }

      else if (v83)
      {
        *v10 = v81;
        *v60 = v77;
        *(v10 + 1) = v82;
        *(v10 + 3) = v78;
        if (v82 == v80)
        {
          v85 = v81 < v79;
        }

        else
        {
          v85 = v82 < v80;
        }

        v60 = v10;
        v78 = v80;
        LOBYTE(v77) = v79;
        if (v85)
        {
          goto LABEL_102;
        }

        v78 = v82;
        LOBYTE(v77) = v81;
      }

LABEL_103:
      v86 = *i;
      *i = v77;
      *v10 = v86;
      v87 = *(i + 1);
      *(i + 1) = v78;
      *(v10 + 1) = v87;
      --a3;
      v35 = *i;
      if ((a4 & 1) == 0)
      {
        goto LABEL_104;
      }

LABEL_62:
      v56 = *(i + 1);
LABEL_107:
      v91 = 0;
      do
      {
        v92 = &i[v91];
        v93 = &i[v91 + 16];
        if (v93 == a2)
        {
          goto LABEL_297;
        }

        v94 = *v93;
        v95 = *(v92 + 3);
        v155 = v95 == v56;
        v96 = v95 < v56;
        if (v155)
        {
          v96 = v94 < v35;
        }

        v91 += 16;
      }

      while (v96);
      v92 = &i[v91];
      v93 = a2;
      if (v91 != 16)
      {
        while (v93 != i)
        {
          v97 = *(v93 - 16);
          v93 -= 16;
          v98 = *(v93 + 8);
          v99 = v97 < v35;
          v155 = v98 == v56;
          v100 = v98 < v56;
          if (!v155)
          {
            v99 = v100;
          }

          if (v99)
          {
            goto LABEL_123;
          }
        }

        goto LABEL_297;
      }

      v93 = a2;
      do
      {
        if (v92 >= v93)
        {
          break;
        }

        v101 = *(v93 - 16);
        v93 -= 16;
        v102 = *(v93 + 8);
        v103 = v101 < v35;
        v155 = v102 == v56;
        v104 = v102 < v56;
        if (!v155)
        {
          v103 = v104;
        }
      }

      while (!v103);
LABEL_123:
      if (v92 < v93)
      {
        v105 = *v93;
        i = v92;
        v106 = v93;
LABEL_125:
        *i = v105;
        *v106 = v94;
        v107 = *(i + 1);
        *(i + 1) = *(v106 + 8);
        *(v106 + 8) = v107;
        v108 = i + 16;
        while (v108 != a2)
        {
          v94 = *v108;
          v109 = *(v108 + 1);
          v155 = v109 == v56;
          v110 = v109 < v56;
          if (v155)
          {
            v110 = v94 < v35;
          }

          v108 += 16;
          if (!v110)
          {
            i = v108 - 16;
            while (v106 != v7)
            {
              v111 = *(v106 - 16);
              v106 -= 16;
              v105 = v111;
              v112 = *(v106 + 8);
              v113 = v111 < v35;
              v155 = v112 == v56;
              v114 = v112 < v56;
              if (v155)
              {
                v114 = v113;
              }

              if (v114)
              {
                if (i < v106)
                {
                  goto LABEL_125;
                }

                v115 = i - 16;
                if (i - 16 == v7)
                {
                  goto LABEL_138;
                }

                goto LABEL_137;
              }
            }

            goto LABEL_297;
          }
        }

        goto LABEL_297;
      }

      i = v92;
      v115 = v92 - 16;
      if (v92 - 16 != v7)
      {
LABEL_137:
        *v7 = *(i - 16);
        *(v7 + 1) = *(i - 1);
      }

LABEL_138:
      *(i - 16) = v35;
      *(i - 1) = v56;
      if (v92 < v93)
      {
LABEL_141:
        result = std::__introsort<std::_ClassicAlgPolicy,webrtc::DefaultTemporalLayers::UpdateSearchOrder(webrtc::Vp8FrameConfig *)::$_0 &,std::pair<webrtc::Vp8FrameConfig::Vp8BufferReference,unsigned long> *,false>(v7, v115, a3, a4 & 1);
        a4 = 0;
        goto LABEL_3;
      }

      v116 = std::__insertion_sort_incomplete[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::DefaultTemporalLayers::UpdateSearchOrder(webrtc::Vp8FrameConfig *)::$_0 &,std::pair<webrtc::Vp8FrameConfig::Vp8BufferReference,unsigned long> *>(v7, v115);
      result = std::__insertion_sort_incomplete[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::DefaultTemporalLayers::UpdateSearchOrder(webrtc::Vp8FrameConfig *)::$_0 &,std::pair<webrtc::Vp8FrameConfig::Vp8BufferReference,unsigned long> *>(i, a2);
      if (!result)
      {
        if (v116)
        {
          goto LABEL_3;
        }

        goto LABEL_141;
      }

      a2 = v115;
      if (v116)
      {
        return result;
      }

      goto LABEL_2;
    }

    v19 = *i;
    v20 = *(i + 1);
    v21 = *v10;
    v22 = *(v10 + 1);
    v23 = v20 < v22;
    if (v20 == v22)
    {
      v23 = v19 < v21;
    }

    v24 = v11 < v19;
    if (v12 != v20)
    {
      v24 = v12 < v20;
    }

    if (v23)
    {
      if (v24)
      {
        *v10 = v11;
        *(a2 - 16) = v21;
        *(v10 + 1) = v12;
LABEL_60:
        *(a2 - 1) = v22;
        goto LABEL_61;
      }

      *v10 = v19;
      *i = v21;
      *(v10 + 1) = v20;
      *(i + 1) = v22;
      v53 = *(a2 - 16);
      v54 = *(a2 - 1);
      v55 = v53 < v21;
      if (v54 != v22)
      {
        v55 = v54 < v22;
      }

      if (v55)
      {
        *i = v53;
        *(a2 - 16) = v21;
        *(i + 1) = v54;
        goto LABEL_60;
      }
    }

    else if (v24)
    {
      *i = v11;
      *(a2 - 16) = v19;
      *(i + 1) = v12;
      *(a2 - 1) = v20;
      v30 = *i;
      v31 = *(i + 1);
      v32 = *v10;
      v33 = *(v10 + 1);
      v34 = v30 < v32;
      if (v31 != v33)
      {
        v34 = v31 < v33;
      }

      if (v34)
      {
        *v10 = v30;
        *i = v32;
        *(v10 + 1) = v31;
        *(i + 1) = v33;
        --a3;
        v35 = v32;
        if (a4)
        {
          goto LABEL_62;
        }

        goto LABEL_104;
      }
    }

LABEL_61:
    --a3;
    v35 = *i;
    if (a4)
    {
      goto LABEL_62;
    }

LABEL_104:
    v88 = *(i - 1);
    v56 = *(i + 1);
    v89 = *(i - 16) < v35;
    v155 = v88 == v56;
    v90 = v88 < v56;
    if (!v155)
    {
      v89 = v90;
    }

    if (v89)
    {
      goto LABEL_107;
    }

    v93 = *(a2 - 1);
    v117 = v35 < *(a2 - 16);
    v155 = v56 == v93;
    LOBYTE(v93) = v56 < v93;
    if (!v155)
    {
      v117 = v93;
    }

    if (v117)
    {
      v92 = i + 16;
      do
      {
        if (v92 == a2)
        {
          goto LABEL_297;
        }

        v118 = *(v92 + 1);
        LOBYTE(v93) = v35 < *v92;
        v155 = v56 == v118;
        v119 = v56 < v118;
        if (!v155)
        {
          LOBYTE(v93) = v119;
        }

        v92 += 16;
      }

      while ((v93 & 1) == 0);
      i = v92 - 16;
    }

    else
    {
      v120 = i + 16;
      do
      {
        i = v120;
        if (v120 >= a2)
        {
          break;
        }

        v93 = *(v120 + 1);
        v121 = v35 < *v120;
        v155 = v56 == v93;
        LOBYTE(v93) = v56 < v93;
        if (v155)
        {
          LOBYTE(v93) = v121;
        }

        v120 = i + 16;
      }

      while ((v93 & 1) == 0);
    }

    v92 = a2;
    if (i < a2)
    {
      v92 = a2;
      while (v92 != v7)
      {
        v122 = *(v92 - 16);
        v92 -= 16;
        v123 = *(v92 + 1);
        LOBYTE(v93) = v35 < v122;
        v155 = v56 == v123;
        v124 = v56 < v123;
        if (!v155)
        {
          LOBYTE(v93) = v124;
        }

        if ((v93 & 1) == 0)
        {
          goto LABEL_165;
        }
      }

      goto LABEL_297;
    }

LABEL_165:
    if (i < v92)
    {
      LOBYTE(v93) = *i;
      v125 = *v92;
      do
      {
        *i = v125;
        *v92 = v93;
        v93 = *(i + 1);
        *(i + 1) = *(v92 + 1);
        *(v92 + 1) = v93;
        v126 = i + 16;
        do
        {
          if (v126 == a2)
          {
            goto LABEL_297;
          }

          LODWORD(v93) = *v126;
          v127 = *(v126 + 1);
          v155 = v56 == v127;
          v128 = v56 < v127;
          if (v155)
          {
            v128 = v35 < v93;
          }

          v126 += 16;
        }

        while (!v128);
        i = v126 - 16;
        do
        {
          if (v92 == v7)
          {
            goto LABEL_297;
          }

          v129 = *(v92 - 16);
          v92 -= 16;
          v125 = v129;
          v130 = *(v92 + 1);
          v131 = v35 < v129;
          v155 = v56 == v130;
          v132 = v56 < v130;
          if (v155)
          {
            v132 = v131;
          }
        }

        while (v132);
      }

      while (i < v92);
    }

    if (i - 16 != v7)
    {
      *v7 = *(i - 16);
      *(v7 + 1) = *(i - 1);
    }

    a4 = 0;
    *(i - 16) = v35;
  }

  v35 = i + 16;
  v155 = i == a2 || v35 == a2;
  v156 = v155;
  if ((a4 & 1) == 0)
  {
    if (v156)
    {
      return result;
    }

    v92 = 0;
    v56 = -16;
    v93 = 16;
    while (1)
    {
      v215 = &v92[i];
      v92 = v93;
      LODWORD(v93) = *v35;
      v216 = *(v215 + 3);
      v217 = *v215;
      v218 = *(v215 + 1);
      v219 = v93 < v217;
      if (v216 != v218)
      {
        v219 = v216 < v218;
      }

      if (v219)
      {
        break;
      }

LABEL_287:
      v93 = (v92 + 16);
      v35 += 16;
      v56 -= 16;
      if (v35 == a2)
      {
        return result;
      }
    }

    v220 = v56;
    v221 = v35;
    while (1)
    {
      *v221 = v217;
      *(v221 + 1) = v218;
      if (!v220)
      {
        break;
      }

      v217 = *(v221 - 32);
      v218 = *(v221 - 3);
      v222 = v93 < v217;
      result = v216 < v218;
      if (v216 != v218)
      {
        v222 = v216 < v218;
      }

      v221 -= 16;
      v220 += 16;
      if (!v222)
      {
        *v221 = v93;
        *(v221 + 1) = v216;
        goto LABEL_287;
      }
    }

LABEL_297:
    __break(1u);
    goto LABEL_298;
  }

  if ((v156 & 1) == 0)
  {
    v157 = 0;
    v158 = i;
    do
    {
      v160 = *(v158 + 3);
      v161 = *v158;
      v162 = *(v158 + 1);
      v158 = v35;
      v163 = *v35;
      v155 = v160 == v162;
      v164 = v160 < v162;
      if (v155)
      {
        v164 = v163 < v161;
      }

      if (v164)
      {
        v165 = v157;
        do
        {
          v166 = &i[v165];
          v166[16] = v161;
          *(v166 + 3) = *&i[v165 + 8];
          if (!v165)
          {
            v159 = i;
            goto LABEL_218;
          }

          v161 = *(v166 - 16);
          v167 = *(v166 - 1);
          v155 = v160 == v167;
          v168 = v160 < v167;
          if (v155)
          {
            v168 = v163 < v161;
          }

          v165 -= 16;
        }

        while (v168);
        v159 = &i[v165 + 16];
LABEL_218:
        *v159 = v163;
        *(v159 + 8) = v160;
      }

      v35 = v158 + 16;
      v157 += 16;
    }

    while (v158 + 16 != a2);
  }

  return result;
}

unsigned __int8 *std::__sort4[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::DefaultTemporalLayers::UpdateSearchOrder(webrtc::Vp8FrameConfig *)::$_0 &,std::pair<webrtc::Vp8FrameConfig::Vp8BufferReference,unsigned long> *,0>(unsigned __int8 *result, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = *a2;
  v5 = *(a2 + 1);
  v6 = *result;
  v7 = *(result + 1);
  if (v5 == v7)
  {
    v8 = v4 < v6;
  }

  else
  {
    v8 = v5 < v7;
  }

  v9 = *a3;
  v10 = *(a3 + 1);
  v11 = v9 < v4;
  if (v10 != v5)
  {
    v11 = v10 < v5;
  }

  if (v8)
  {
    if (v11)
    {
      *result = v9;
      *a3 = v6;
      *(result + 1) = v10;
LABEL_18:
      v5 = v7;
      *(a3 + 1) = v7;
      goto LABEL_20;
    }

    *result = v4;
    *a2 = v6;
    *(result + 1) = v5;
    *(a2 + 1) = v7;
    v17 = *a3;
    v5 = *(a3 + 1);
    v18 = v17 < v6;
    if (v5 != v7)
    {
      v18 = v5 < v7;
    }

    if (v18)
    {
      *a2 = v17;
      *a3 = v6;
      *(a2 + 1) = v5;
      goto LABEL_18;
    }
  }

  else if (v11)
  {
    *a2 = v9;
    *a3 = v4;
    *(a2 + 1) = v10;
    *(a3 + 1) = v5;
    v12 = *a2;
    v13 = *(a2 + 1);
    v14 = *result;
    v15 = *(result + 1);
    v16 = v12 < v14;
    if (v13 != v15)
    {
      v16 = v13 < v15;
    }

    if (v16)
    {
      *result = v12;
      *a2 = v14;
      *(result + 1) = v13;
      *(a2 + 1) = v15;
      v5 = *(a3 + 1);
    }
  }

  else
  {
    v5 = *(a3 + 1);
  }

LABEL_20:
  v19 = *a4;
  v20 = *(a4 + 1);
  v21 = *a3;
  v22 = v19 < v21;
  if (v20 != v5)
  {
    v22 = v20 < v5;
  }

  if (v22)
  {
    *a3 = v19;
    *a4 = v21;
    *(a3 + 1) = v20;
    *(a4 + 1) = v5;
    v23 = *a3;
    v24 = *(a3 + 1);
    v25 = *a2;
    v26 = *(a2 + 1);
    v27 = v23 < v25;
    if (v24 != v26)
    {
      v27 = v24 < v26;
    }

    if (v27)
    {
      *a2 = v23;
      *a3 = v25;
      *(a2 + 1) = v24;
      *(a3 + 1) = v26;
      v28 = *a2;
      v29 = *(a2 + 1);
      v30 = *result;
      v31 = *(result + 1);
      v32 = v28 < v30;
      if (v29 != v31)
      {
        v32 = v29 < v31;
      }

      if (v32)
      {
        *result = v28;
        *a2 = v30;
        *(result + 1) = v29;
        *(a2 + 1) = v31;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::DefaultTemporalLayers::UpdateSearchOrder(webrtc::Vp8FrameConfig *)::$_0 &,std::pair<webrtc::Vp8FrameConfig::Vp8BufferReference,unsigned long> *>(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = (a2 - a1) >> 4;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v27 = a1[16];
      v28 = *(a1 + 3);
      v29 = *a1;
      v30 = *(a1 + 1);
      if (v28 == v30)
      {
        v31 = v27 < v29;
      }

      else
      {
        v31 = v28 < v30;
      }

      v32 = *(a2 - 16);
      v33 = *(a2 - 1);
      v34 = v32 < v27;
      if (v33 != v28)
      {
        v34 = v33 < v28;
      }

      if (v31)
      {
        if (v34)
        {
          *a1 = v32;
          *(a2 - 16) = v29;
          *(a1 + 1) = v33;
          result = 1;
          *(a2 - 1) = v30;
          return result;
        }

        *a1 = v27;
        a1[16] = v29;
        *(a1 + 1) = v28;
        *(a1 + 3) = v30;
        v68 = *(a2 - 16);
        v69 = *(a2 - 1);
        v70 = v68 < v29;
        if (v69 != v30)
        {
          v70 = v69 < v30;
        }

        if (v70)
        {
          a1[16] = v68;
          *(a2 - 16) = v29;
          *(a1 + 3) = v69;
          result = 1;
          *(a2 - 1) = v30;
          return result;
        }
      }

      else if (v34)
      {
        a1[16] = v32;
        *(a2 - 16) = v27;
        *(a1 + 3) = v33;
        *(a2 - 1) = v28;
        v48 = a1[16];
        v49 = *(a1 + 3);
        v50 = *a1;
        v51 = *(a1 + 1);
        v52 = v48 < v50;
        if (v49 != v51)
        {
          v52 = v49 < v51;
        }

        if (v52)
        {
          *a1 = v48;
          a1[16] = v50;
          *(a1 + 1) = v49;
          *(a1 + 3) = v51;
        }
      }

      return 1;
    }

    if (v2 != 4)
    {
      if (v2 == 5)
      {
        std::__sort4[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::DefaultTemporalLayers::UpdateSearchOrder(webrtc::Vp8FrameConfig *)::$_0 &,std::pair<webrtc::Vp8FrameConfig::Vp8BufferReference,unsigned long> *,0>(a1, a1 + 16, a1 + 32, a1 + 48);
        v11 = *(a2 - 16);
        v12 = *(a2 - 1);
        v13 = a1[48];
        v14 = *(a1 + 7);
        v15 = v11 < v13;
        if (v12 != v14)
        {
          v15 = v12 < v14;
        }

        if (v15)
        {
          a1[48] = v11;
          *(a2 - 16) = v13;
          *(a1 + 7) = v12;
          *(a2 - 1) = v14;
          v16 = a1[48];
          v17 = *(a1 + 7);
          v18 = a1[32];
          v19 = *(a1 + 5);
          v20 = v16 < v18;
          if (v17 != v19)
          {
            v20 = v17 < v19;
          }

          if (v20)
          {
            a1[32] = v16;
            a1[48] = v18;
            *(a1 + 5) = v17;
            *(a1 + 7) = v19;
            v21 = a1[16];
            v22 = *(a1 + 3);
            v23 = v16 < v21;
            if (v17 != v22)
            {
              v23 = v17 < v22;
            }

            if (v23)
            {
              a1[16] = v16;
              a1[32] = v21;
              *(a1 + 3) = v17;
              *(a1 + 5) = v22;
              v24 = *a1;
              v25 = *(a1 + 1);
              v26 = v16 < v24;
              if (v17 != v25)
              {
                v26 = v17 < v25;
              }

              if (v26)
              {
                *a1 = v16;
                a1[16] = v24;
                *(a1 + 1) = v17;
                result = 1;
                *(a1 + 3) = v25;
                return result;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_32;
    }

    std::__sort4[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::DefaultTemporalLayers::UpdateSearchOrder(webrtc::Vp8FrameConfig *)::$_0 &,std::pair<webrtc::Vp8FrameConfig::Vp8BufferReference,unsigned long> *,0>(a1, a1 + 16, a1 + 32, a2 - 16);
    return 1;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 16);
    v4 = *(a2 - 1);
    v5 = *a1;
    v6 = *(a1 + 1);
    v7 = v3 < v5;
    if (v4 != v6)
    {
      v7 = v4 < v6;
    }

    if (v7)
    {
      *a1 = v3;
      *(a2 - 16) = v5;
      *(a1 + 1) = v4;
      result = 1;
      *(a2 - 1) = v6;
      return result;
    }

    return 1;
  }

LABEL_32:
  v35 = a1 + 32;
  v36 = a1[32];
  v38 = a1 + 16;
  v37 = a1[16];
  v39 = (a1 + 24);
  v40 = *(a1 + 3);
  v41 = *a1;
  v43 = (a1 + 8);
  v42 = *(a1 + 1);
  v44 = v40 < v42;
  v45 = *(a1 + 5);
  if (v40 == v42)
  {
    v44 = v37 < v41;
  }

  v46 = v36 < v37;
  if (v45 != v40)
  {
    v46 = v45 < v40;
  }

  if (v44)
  {
    if (v46)
    {
      v47 = a1;
      v38 = a1 + 32;
      v39 = (a1 + 40);
LABEL_49:
      *v47 = v36;
      *v38 = v41;
      *v43 = v45;
      *v39 = v42;
      goto LABEL_50;
    }

    *a1 = v37;
    a1[16] = v41;
    if (v45 == v42)
    {
      v71 = v36 < v41;
    }

    else
    {
      v71 = v45 < v42;
    }

    v47 = a1 + 16;
    *(a1 + 1) = v40;
    *(a1 + 3) = v42;
    v38 = a1 + 32;
    v43 = (a1 + 24);
    v39 = (a1 + 40);
    if (v71)
    {
      goto LABEL_49;
    }
  }

  else if (v46)
  {
    *v38 = v36;
    *v35 = v37;
    *v39 = v45;
    *(a1 + 5) = v40;
    v53 = v36 < v41;
    if (v45 != v42)
    {
      v53 = v45 < v42;
    }

    v47 = a1;
    if (v53)
    {
      goto LABEL_49;
    }
  }

LABEL_50:
  v54 = a1 + 48;
  if (a1 + 48 == a2)
  {
    return 1;
  }

  v55 = 0;
  v56 = 0;
  while (1)
  {
    v57 = *v54;
    v58 = *(v54 + 1);
    v59 = *v35;
    v60 = *(v35 + 1);
    v61 = v58 == v60;
    v62 = v58 < v60;
    if (v61)
    {
      v62 = v57 < v59;
    }

    if (v62)
    {
      break;
    }

LABEL_63:
    v35 = v54;
    v55 += 16;
    v54 += 16;
    if (v54 == a2)
    {
      return 1;
    }
  }

  v63 = v55;
  do
  {
    v64 = &a1[v63];
    v64[48] = v59;
    *(v64 + 7) = *&a1[v63 + 40];
    if (v63 == -32)
    {
      *a1 = v57;
      *(a1 + 1) = v58;
      if (++v56 != 8)
      {
        goto LABEL_63;
      }

      return v54 + 16 == a2;
    }

    v59 = v64[16];
    v65 = *(v64 + 3);
    v61 = v58 == v65;
    v66 = v58 < v65;
    if (v61)
    {
      v66 = v57 < v59;
    }

    v63 -= 16;
  }

  while (v66);
  v67 = &a1[v63];
  v67[48] = v57;
  *(v67 + 7) = v58;
  if (++v56 != 8)
  {
    goto LABEL_63;
  }

  return v54 + 16 == a2;
}

uint64_t webrtc::FrameDependencyStructure::operator=(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(a1 + 8) = *(a2 + 2);
  *a1 = v4;
  if (a1 != a2)
  {
    if (*(a1 + 16))
    {
      operator delete(*(a1 + 24));
    }

    *(a1 + 16) = a2[2];
    v5 = *(a2 + 3);
    v6 = *(a2 + 5);
    *(a1 + 56) = a2[7];
    *(a1 + 40) = v6;
    *(a1 + 24) = v5;
    a2[2] = 0;
    if (*(a1 + 64))
    {
      operator delete(*(a1 + 72));
    }

    *(a1 + 64) = a2[8];
    v7 = *(a2 + 9);
    *(a1 + 88) = *(a2 + 11);
    *(a1 + 72) = v7;
    a2[8] = 0;
  }

  v8 = (a1 + 104);
  v9 = *(a1 + 104);
  if (v9)
  {
    v10 = *(a1 + 112);
    v11 = *(a1 + 104);
    if (v10 == v9)
    {
LABEL_19:
      *(a1 + 112) = v9;
      operator delete(v11);
      *v8 = 0;
      *(a1 + 112) = 0;
      *(a1 + 120) = 0;
      goto LABEL_20;
    }

    while (1)
    {
      if (*(v10 - 24))
      {
        operator delete(*(v10 - 16));
        if ((*(v10 - 48) & 1) == 0)
        {
LABEL_13:
          if (*(v10 - 96))
          {
            goto LABEL_17;
          }

          goto LABEL_10;
        }
      }

      else if ((*(v10 - 48) & 1) == 0)
      {
        goto LABEL_13;
      }

      operator delete(*(v10 - 40));
      if (*(v10 - 96))
      {
LABEL_17:
        operator delete(*(v10 - 88));
      }

LABEL_10:
      v10 -= 104;
      if (v10 == v9)
      {
        v11 = *v8;
        goto LABEL_19;
      }
    }
  }

LABEL_20:
  *(a1 + 104) = *(a2 + 13);
  *(a1 + 120) = a2[15];
  a2[13] = 0;
  a2[14] = 0;
  a2[15] = 0;
  return a1;
}

void std::vector<webrtc::FrameDependencyTemplate>::__append(uint64_t *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (0x4EC4EC4EC4EC4EC5 * ((v4 - v3) >> 3) < a2)
  {
    v5 = 0x4EC4EC4EC4EC4EC5 * ((v3 - *a1) >> 3);
    v6 = v5 + a2;
    if (v5 + a2 <= 0x276276276276276)
    {
      v7 = 0x4EC4EC4EC4EC4EC5 * ((v4 - *a1) >> 3);
      if (2 * v7 > v6)
      {
        v6 = 2 * v7;
      }

      if (v7 >= 0x13B13B13B13B13BLL)
      {
        v8 = 0x276276276276276;
      }

      else
      {
        v8 = v6;
      }

      if (v8)
      {
        if (v8 <= 0x276276276276276)
        {
          operator new();
        }

        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      v11 = 104 * a2;
      v12 = 104 * v5 + 104 * a2;
      v13 = 104 * v5;
      do
      {
        if (!v13)
        {
          goto LABEL_25;
        }

        *(v13 + 96) = 0;
        *(v13 + 64) = 0uLL;
        *(v13 + 80) = 0uLL;
        *(v13 + 32) = 0uLL;
        *(v13 + 48) = 0uLL;
        *v13 = 0uLL;
        *(v13 + 16) = 0uLL;
        v13 += 104;
        v11 -= 104;
      }

      while (v11);
      v14 = a1[1];
      v15 = 104 * v5 + *a1 - v14;
      std::__uninitialized_allocator_relocate[abi:sn200100]<std::allocator<webrtc::FrameDependencyTemplate>,webrtc::FrameDependencyTemplate*>(a1, *a1, v14, v15);
      v16 = *a1;
      *a1 = v15;
      a1[1] = v12;
      a1[2] = 0;
      if (v16)
      {

        operator delete(v16);
      }

      return;
    }

LABEL_26:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (!a2)
  {
    goto LABEL_16;
  }

  v9 = v3 + 104 * a2;
  v10 = 104 * a2;
  do
  {
    if (!v3)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    *(v3 + 96) = 0;
    *(v3 + 64) = 0uLL;
    *(v3 + 80) = 0uLL;
    *(v3 + 32) = 0uLL;
    *(v3 + 48) = 0uLL;
    *v3 = 0uLL;
    *(v3 + 16) = 0uLL;
    v3 += 104;
    v10 -= 104;
  }

  while (v10);
  v3 = v9;
LABEL_16:
  a1[1] = v3;
}

void std::__uninitialized_allocator_relocate[abi:sn200100]<std::allocator<webrtc::FrameDependencyTemplate>,webrtc::FrameDependencyTemplate*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    while (a4)
    {
      *a4 = *v6;
      *(a4 + 8) = 0;
      *(a4 + 8) = *(v6 + 8);
      v7 = *(v6 + 16);
      v8 = *(v6 + 32);
      *(a4 + 48) = *(v6 + 48);
      *(a4 + 16) = v7;
      *(a4 + 32) = v8;
      *(v6 + 8) = 0;
      *(a4 + 56) = 0;
      *(a4 + 56) = *(v6 + 56);
      *(a4 + 64) = *(v6 + 64);
      *(v6 + 56) = 0;
      *(a4 + 80) = 0;
      *(a4 + 80) = *(v6 + 80);
      *(a4 + 88) = *(v6 + 88);
      *(v6 + 80) = 0;
      v6 += 104;
      a4 += 104;
      if (v6 == a3)
      {
        while (1)
        {
          if (!v5)
          {
            goto LABEL_16;
          }

          if (*(v5 + 80))
          {
            operator delete(*(v5 + 88));
            if ((*(v5 + 56) & 1) == 0)
            {
LABEL_10:
              if (*(v5 + 8))
              {
                goto LABEL_14;
              }

              goto LABEL_6;
            }
          }

          else if ((*(v5 + 56) & 1) == 0)
          {
            goto LABEL_10;
          }

          operator delete(*(v5 + 64));
          if (*(v5 + 8))
          {
LABEL_14:
            operator delete(*(v5 + 16));
          }

LABEL_6:
          v5 += 104;
          if (v5 == a3)
          {
            return;
          }
        }
      }
    }

LABEL_16:
    __break(1u);
  }
}

void absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>(unint64_t *a1, uint64_t a2, unint64_t a3)
{
  v3 = a2;
  v4 = *a1;
  if ((*a1 & 1) == 0)
  {
    v5 = 4;
    v6 = a1 + 1;
    if (a3 <= 4)
    {
      goto LABEL_3;
    }

LABEL_19:
    v19 = 2 * v5;
    if (v19 <= a3)
    {
      v20 = a3;
    }

    else
    {
      v20 = v19;
    }

    if (!(v20 >> 62))
    {
      operator new();
    }

    goto LABEL_38;
  }

  v6 = a1[1];
  v5 = a1[2];
  if (v5 < a3)
  {
    goto LABEL_19;
  }

LABEL_3:
  v7 = v4 >> 1;
  v8 = a3 - (v4 >> 1);
  if (a3 < v4 >> 1)
  {
    v8 = 0;
  }

  if (v7 >= a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = v4 >> 1;
  }

  if (!v9)
  {
    v11 = a2;
    if (v7 >= a3)
    {
      goto LABEL_36;
    }

    goto LABEL_25;
  }

  v10 = 0;
  if (v9 < 8)
  {
    goto LABEL_14;
  }

  if (v6 - a2 < 0x20)
  {
    goto LABEL_14;
  }

  v10 = v9 & 0x7FFFFFFFFFFFFFF8;
  v11 = (a2 + 4 * (v9 & 0x7FFFFFFFFFFFFFF8));
  v12 = (a2 + 16);
  v13 = v6 + 2;
  v14 = v9 & 0x7FFFFFFFFFFFFFF8;
  do
  {
    v15 = *v12;
    *(v13 - 1) = *(v12 - 1);
    *v13 = v15;
    v12 += 2;
    v13 += 2;
    v14 -= 8;
  }

  while (v14);
  v3 = (a2 + 4 * (v9 & 0x7FFFFFFFFFFFFFF8));
  if (v9 != v10)
  {
LABEL_14:
    v16 = v9 - v10;
    v17 = v6 + v10;
    v11 = v3;
    do
    {
      v18 = *v11++;
      *v17++ = v18;
      --v16;
    }

    while (v16);
  }

  if (v7 < a3)
  {
LABEL_25:
    if (v6)
    {
      v21 = v6 + 4 * v7;
      v22 = 0;
      if (v8 < 8 || (v21 - v11) < 0x20)
      {
        v23 = v11;
      }

      else
      {
        v22 = v8 & 0xFFFFFFFFFFFFFFF8;
        v23 = &v11[v8 & 0xFFFFFFFFFFFFFFF8];
        v24 = (v11 + 4);
        v25 = v21 + 16;
        v26 = v8 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v27 = *v24;
          *(v25 - 1) = *(v24 - 1);
          *v25 = v27;
          v24 += 2;
          v25 += 2;
          v26 -= 8;
        }

        while (v26);
        if (v8 == v22)
        {
          goto LABEL_35;
        }
      }

      v28 = v8 - v22;
      v29 = &v21[4 * v22];
      do
      {
        v30 = *v23++;
        *v29 = v30;
        v29 += 4;
        --v28;
      }

      while (v28);
LABEL_35:
      v4 = *a1;
      goto LABEL_36;
    }

    __break(1u);
LABEL_38:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

LABEL_36:
  *a1 = v4 & 1 | (2 * a3);
}

void absl::inlined_vector_internal::Storage<webrtc::CodecBufferUsage,8ul,std::allocator<webrtc::CodecBufferUsage>>::EmplaceBackSlow<int &,BOOL &,BOOL &>(void *a1)
{
  if ((*a1 & 1) != 0 && ((a1[2] >> 60) & 7) != 0)
  {
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  operator new();
}

void absl::inlined_vector_internal::Storage<webrtc::DecodeTargetIndication,10ul,std::allocator<webrtc::DecodeTargetIndication>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<webrtc::DecodeTargetIndication>,webrtc::DecodeTargetIndication const*>>(unint64_t *a1, uint64_t a2, unint64_t a3)
{
  v3 = a2;
  v4 = *a1;
  if ((*a1 & 1) == 0)
  {
    v5 = 10;
    v6 = a1 + 1;
    if (a3 <= 0xA)
    {
      goto LABEL_3;
    }

LABEL_19:
    v19 = 2 * v5;
    if (v19 <= a3)
    {
      v20 = a3;
    }

    else
    {
      v20 = v19;
    }

    if (!(v20 >> 62))
    {
      operator new();
    }

    goto LABEL_38;
  }

  v6 = a1[1];
  v5 = a1[2];
  if (v5 < a3)
  {
    goto LABEL_19;
  }

LABEL_3:
  v7 = v4 >> 1;
  v8 = a3 - (v4 >> 1);
  if (a3 < v4 >> 1)
  {
    v8 = 0;
  }

  if (v7 >= a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = v4 >> 1;
  }

  if (!v9)
  {
    v11 = a2;
    if (v7 >= a3)
    {
      goto LABEL_36;
    }

    goto LABEL_25;
  }

  v10 = 0;
  if (v9 < 8)
  {
    goto LABEL_14;
  }

  if (v6 - a2 < 0x20)
  {
    goto LABEL_14;
  }

  v10 = v9 & 0x7FFFFFFFFFFFFFF8;
  v11 = (a2 + 4 * (v9 & 0x7FFFFFFFFFFFFFF8));
  v12 = (a2 + 16);
  v13 = v6 + 2;
  v14 = v9 & 0x7FFFFFFFFFFFFFF8;
  do
  {
    v15 = *v12;
    *(v13 - 1) = *(v12 - 1);
    *v13 = v15;
    v12 += 2;
    v13 += 2;
    v14 -= 8;
  }

  while (v14);
  v3 = (a2 + 4 * (v9 & 0x7FFFFFFFFFFFFFF8));
  if (v9 != v10)
  {
LABEL_14:
    v16 = v9 - v10;
    v17 = v6 + v10;
    v11 = v3;
    do
    {
      v18 = *v11++;
      *v17++ = v18;
      --v16;
    }

    while (v16);
  }

  if (v7 < a3)
  {
LABEL_25:
    if (v6)
    {
      v21 = v6 + 4 * v7;
      v22 = 0;
      if (v8 < 8 || (v21 - v11) < 0x20)
      {
        v23 = v11;
      }

      else
      {
        v22 = v8 & 0xFFFFFFFFFFFFFFF8;
        v23 = &v11[v8 & 0xFFFFFFFFFFFFFFF8];
        v24 = (v11 + 4);
        v25 = v21 + 16;
        v26 = v8 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v27 = *v24;
          *(v25 - 1) = *(v24 - 1);
          *v25 = v27;
          v24 += 2;
          v25 += 2;
          v26 -= 8;
        }

        while (v26);
        if (v8 == v22)
        {
          goto LABEL_35;
        }
      }

      v28 = v8 - v22;
      v29 = &v21[4 * v22];
      do
      {
        v30 = *v23++;
        *v29 = v30;
        v29 += 4;
        --v28;
      }

      while (v28);
LABEL_35:
      v4 = *a1;
      goto LABEL_36;
    }

    __break(1u);
LABEL_38:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

LABEL_36:
  *a1 = v4 & 1 | (2 * a3);
}

void webrtc::DelayBasedBwe::DelayBasedBwe(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_288292A50;
  *(a1 + 8) = 0;
  *(a1 + 24) = a3;
  *(a1 + 32) = a2;
  *(a1 + 40) = 0;
  *(a1 + 44) = 10;
  *(a1 + 48) = 1000000;
  operator new();
}

void webrtc::DelayBasedBwe::~DelayBasedBwe(webrtc::DelayBasedBwe *this)
{
  *this = &unk_288292A50;
  *(this + 61) = &unk_288293910;
  if (*(this + 543) < 0)
  {
    operator delete(*(this + 65));
  }

  v2 = *(this + 62);
  if (v2)
  {
    *(this + 63) = v2;
    operator delete(v2);
  }

  *(this + 53) = &unk_288293910;
  if (*(this + 479) < 0)
  {
    operator delete(*(this + 57));
  }

  v3 = *(this + 54);
  if (v3)
  {
    *(this + 55) = v3;
    operator delete(v3);
  }

  v4 = *(this + 15);
  *(this + 15) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 14);
  *(this + 14) = 0;
  if (v5)
  {
    MEMORY[0x2743DA540](v5, 0x1000C40B5796951);
  }

  v6 = *(this + 13);
  *(this + 13) = 0;
  if (v6)
  {
    MEMORY[0x2743DA540](v6, 0x1000C40BDE76CD9);
  }

  v7 = *(this + 12);
  *(this + 12) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 11);
  *(this + 11) = 0;
  if (v8)
  {
    MEMORY[0x2743DA540](v8, 0x1000C40B5796951);
  }

  v9 = *(this + 10);
  *(this + 10) = 0;
  if (v9)
  {
    MEMORY[0x2743DA540](v9, 0x1000C40BDE76CD9);
  }
}

{
  webrtc::DelayBasedBwe::~DelayBasedBwe(this);

  JUMPOUT(0x2743DA540);
}

void webrtc::DelayBasedBwe::IncomingPacketFeedbackVector(uint64_t a1@<X0>, int64_t *a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, int64_t a5@<X4>, char a6@<W5>, _OWORD *a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  __p = 0;
  v105 = 0;
  v106 = 0;
  v17 = a2[3];
  v16 = a2[4];
  if (v17 == v16)
  {
    v19 = 0;
    v18 = 0;
  }

  else
  {
    do
    {
      if (*(v17 + 72) != 0x7FFFFFFFFFFFFFFFLL)
      {
        std::vector<webrtc::PacketResult>::push_back[abi:sn200100](&__p, v17);
      }

      v17 += 96;
    }

    while (v17 != v16);
    v18 = __p;
    v19 = v105;
  }

  v20 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v19 - v18) >> 5));
  if (v19 == v18)
  {
    v21 = 0;
  }

  else
  {
    v21 = v20;
  }

  std::__introsort<std::_ClassicAlgPolicy,webrtc::PacketResult::ReceiveTimeOrder &,webrtc::PacketResult*,false>(v18, v19, &v109, v21, 1);
  if (__p == v105)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v69, v70, v71, v72, v73, v74, v75, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/congestion_controller/goog_cc/delay_based_bwe.cc");
    }

LABEL_91:
    *a9 = 0;
    *(a9 + 8) = 0;
    *(a9 + 16) = 0;
    *(a9 + 20) = 0;
    v76 = __p;
    if (!__p)
    {
      return;
    }

    goto LABEL_92;
  }

  v99 = a7;
  if ((*(a1 + 144) & 1) == 0)
  {
    *(a1 + 144) = 1;
  }

  v22 = (*(**(a1 + 128) + 24))(*(a1 + 128));
  v102 = v105;
  if (__p == v105)
  {
    goto LABEL_91;
  }

  v23 = v22;
  v96 = a5;
  v97 = a6;
  v98 = a9;
  v101 = 0;
  v24 = __p + 48;
  do
  {
    v25 = *a2;
    v26 = *(a1 + 136);
    v27 = (v26 - 0x7FFFFFFFFFFFFFFFLL) < 2 || v25 == 0x7FFFFFFFFFFFFFFFLL;
    if (v27 || ((v28 = v25 - v26, v25 != 0x8000000000000000) ? (v29 = v28 <= 2000000) : (v29 = 1), !v29))
    {
      operator new();
    }

    v30 = *(a1 + 96);
    *(a1 + 136) = v25;
    if (*(a1 + 40) != 1)
    {
      v31 = *(v24 - 5);
      v108.var0 = 0;
      v109.var0 = 0;
      v107 = 0;
LABEL_28:
      v32 = 88;
      goto LABEL_46;
    }

    if (*v24 == 1)
    {
      v30 = *(a1 + 120);
      v33 = *(a1 + 56);
      *(a1 + 56) = v33 + 1;
      if (v33 >= *(a1 + 44))
      {
        v34 = *(v24 + 3);
        v35 = 0x7FFFFFFFFFFFFFFFLL;
        if (v34 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v36 = *(a1 + 64);
          if (v36 != 0x8000000000000000)
          {
            v35 = v34 - v36;
            if (v36 == 0x7FFFFFFFFFFFFFFFLL || v34 == 0x8000000000000000)
            {
              v35 = 0x8000000000000000;
            }
          }
        }

        if (v35 > *(a1 + 48))
        {
          *(a1 + 128) = v30;
        }
      }

      v31 = *(v24 - 5);
      v108.var0 = 0;
      v109.var0 = 0;
      v32 = 112;
      v107 = 0;
    }

    else
    {
      *(a1 + 56) = 0;
      v38 = *(a1 + 64);
      if (v38 <= *(v24 + 3))
      {
        v38 = *(v24 + 3);
      }

      *(a1 + 64) = v38;
      *(a1 + 128) = v30;
      v39 = *v24;
      v31 = *(v24 - 5);
      v108.var0 = 0;
      v109.var0 = 0;
      v107 = 0;
      if ((v39 & 1) == 0)
      {
        goto LABEL_28;
      }

      v32 = 112;
    }

LABEL_46:
    v40 = (v24 - 48);
    v41.var0 = *(v24 - 6);
    v42.var0 = *(v24 + 3);
    v43.var0 = v25;
    v44 = webrtc::InterArrivalDelta::ComputeDeltas(*(a1 + v32), v41, v42, v43, v31, &v109, &v108, &v107);
    if (v108.var0 == 0x8000000000000000)
    {
      v45.n128_u64[0] = 0xFFF0000000000000;
      var0 = v109.var0;
      if (v109.var0 == 0x8000000000000000)
      {
        goto LABEL_54;
      }
    }

    else if (v108.var0 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v45.n128_u64[0] = 0x7FF0000000000000;
      var0 = v109.var0;
      if (v109.var0 == 0x8000000000000000)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v45.n128_f64[0] = v108.var0 * 0.001;
      var0 = v109.var0;
      if (v109.var0 == 0x8000000000000000)
      {
LABEL_54:
        v48 = 0xFFF0000000000000;
        goto LABEL_55;
      }
    }

    if (var0 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v48 = 0x7FF0000000000000;
LABEL_55:
      v46.n128_u64[0] = v48;
      goto LABEL_57;
    }

    v46.n128_f64[0] = var0 * 0.001;
LABEL_57:
    v49 = *v40;
    v50 = *v40 / 0x3E8uLL;
    if (*v40 % 0x3E8uLL > 0x1F3)
    {
      ++v50;
    }

    if (-v49 % 0x3E8uLL <= 0x1F4)
    {
      v51 = 0;
    }

    else
    {
      v51 = -1;
    }

    v52 = v51 - -v49 / 0x3E8uLL;
    if (v49 < 0)
    {
      v53 = v52;
    }

    else
    {
      v53 = v50;
    }

    v54 = *(v24 + 3);
    v55 = v54 / 0x3E8uLL;
    if (v54 % 0x3E8uLL > 0x1F3)
    {
      ++v55;
    }

    if (-v54 % 0x3E8uLL <= 0x1F4)
    {
      v56 = 0;
    }

    else
    {
      v56 = -1;
    }

    v57 = v56 - -v54 / 0x3E8uLL;
    if (v54 < 0)
    {
      v58 = v57;
    }

    else
    {
      v58 = v55;
    }

    (*(*v30 + 16))(v30, v53, v58, v31, v44, v45, v46);
    if (v23 == 1)
    {
      v101 |= (*(**(a1 + 128) + 24))(*(a1 + 128)) == 0;
    }

    v23 = (*(**(a1 + 128) + 24))(*(a1 + 128));
    v24 += 96;
  }

  while (v40 + 12 != v102);
  *(a1 + 400) = a8;
  *(a1 + 208) = *v99;
  v59 = v99[1];
  v60 = v99[2];
  v61 = v99[4];
  *(a1 + 256) = v99[3];
  *(a1 + 272) = v61;
  *(a1 + 224) = v59;
  *(a1 + 240) = v60;
  v62 = v99[5];
  v63 = v99[6];
  v64 = v99[7];
  *(a1 + 329) = *(v99 + 121);
  *(a1 + 304) = v63;
  *(a1 + 320) = v64;
  *(a1 + 288) = v62;
  v65 = *a2;
  *v98 = 0;
  *(v98 + 8) = 0;
  *(v98 + 16) = 0;
  if ((*(**(a1 + 128) + 24))(*(a1 + 128)) != 2)
  {
    if ((v97 & 1) == 0)
    {
      LODWORD(v109.var0) = (*(**(a1 + 128) + 24))(*(a1 + 128));
      v110 = a3;
      v111 = a4;
      if ((*(a1 + 384) & 1) == 0)
      {
        v89 = *(a1 + 376);
        if ((v89 - 0x7FFFFFFFFFFFFFFFLL) > 1)
        {
          if (v65 == 0x7FFFFFFFFFFFFFFFLL || v65 != 0x8000000000000000 && v65 - v89 > 5000000) && (a4)
          {
            *(a1 + 168) = a3;
            *(a1 + 384) = 1;
          }
        }

        else if (a4)
        {
          *(a1 + 376) = v65;
        }
      }

      webrtc::AimdRateControl::ChangeBitrate(a1 + 152, &v109, v65);
      v83 = *(a1 + 168);
      *(v98 + 8) = v83;
      v84 = *(a1 + 384);
      *v98 = v84;
      *(v98 + 16) = v101 & 1;
      goto LABEL_173;
    }

    *v98 = 257;
    *(a1 + 384) = 1;
    v77 = *(a1 + 168);
    if (*(a1 + 481) == 1)
    {
      v78 = v96;
      if ((*(a1 + 344) & 1) == 0)
      {
        goto LABEL_130;
      }
    }

    else
    {
      v78 = v96;
      if ((*(a1 + 344) & 1) == 0)
      {
LABEL_130:
        if (v78 <= *(a1 + 152))
        {
          v83 = *(a1 + 152);
        }

        else
        {
          v83 = v78;
        }

        *(a1 + 168) = v83;
        *(a1 + 360) = v65;
        if (v83 < v77)
        {
          *(a1 + 368) = v65;
        }

        *(v98 + 8) = v83;
        v84 = 1;
        goto LABEL_173;
      }

      v85 = *(a1 + 256);
      if ((v85 + 0x7FFFFFFFFFFFFFFFLL) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        if (v85 <= v77)
        {
          v86 = *(a1 + 168);
        }

        else
        {
          v86 = *(a1 + 256);
        }

        if (*(a1 + 545))
        {
          v85 = v86;
        }

        if (v85 < v96)
        {
          v78 = v85;
        }
      }
    }

    v87 = *(a1 + 248);
    if ((v87 + 0x7FFFFFFFFFFFFFFFLL) <= 0xFFFFFFFFFFFFFFFDLL && v78 < v77)
    {
      v88 = llround(*(a1 + 392) * v87);
      if (v78 > v88)
      {
        v88 = v78;
      }

      if (v88 >= v77)
      {
        v78 = *(a1 + 168);
      }

      else
      {
        v78 = v88;
      }
    }

    goto LABEL_130;
  }

  if ((a4 & 1) == 0)
  {
    if (*(a1 + 384) != 1)
    {
      goto LABEL_146;
    }

    v79 = *(a1 + 168);
    v80 = v79 / 2;
    if (v65 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v81 = *(a1 + 360);
      if (v81 != 0x8000000000000000)
      {
        v82 = *(a1 + 408);
        if (v82 >= 200000)
        {
          v82 = 200000;
        }

        if (v82 <= 10000)
        {
          v82 = 10000;
        }

        if ((v65 == 0x8000000000000000 || v81 == 0x7FFFFFFFFFFFFFFFLL || v65 - v81 < v82) && llround(vcvtd_n_f64_s64(v79, 1uLL)) < v80)
        {
LABEL_146:
          v83 = 0;
          v84 = 0;
          goto LABEL_173;
        }
      }
    }

    *(a1 + 384) = 1;
    if (*(a1 + 481) == 1)
    {
      if ((*(a1 + 344) & 1) == 0)
      {
        goto LABEL_162;
      }
    }

    else
    {
      if ((*(a1 + 344) & 1) == 0)
      {
LABEL_162:
        if (v80 <= *(a1 + 152))
        {
          v83 = *(a1 + 152);
        }

        else
        {
          v83 = v80;
        }

        *(a1 + 168) = v83;
        *(a1 + 360) = v65;
        if (v83 < v79)
        {
          *(a1 + 368) = v65;
        }

        v84 = 1;
        *v98 = 1;
        *(v98 + 8) = v83;
        goto LABEL_173;
      }

      v90 = *(a1 + 256);
      if ((v90 + 0x7FFFFFFFFFFFFFFFLL) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        if (v90 <= v79)
        {
          v91 = v79;
        }

        else
        {
          v91 = *(a1 + 256);
        }

        if (*(a1 + 545))
        {
          v90 = v91;
        }

        if (v90 < v80)
        {
          v80 = v90;
        }
      }
    }

    v92 = *(a1 + 248);
    if ((v92 + 0x7FFFFFFFFFFFFFFFLL) <= 0xFFFFFFFFFFFFFFFDLL && v80 < v79)
    {
      v93 = llround(*(a1 + 392) * v92);
      if (v80 <= v93)
      {
        v80 = v93;
      }

      if (v80 >= v79)
      {
        v80 = v79;
      }
    }

    goto LABEL_162;
  }

  if (v65 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v66 = *(a1 + 360);
    if (v66 != 0x8000000000000000)
    {
      v67 = *(a1 + 408);
      if (v67 >= 200000)
      {
        v67 = 200000;
      }

      if (v67 <= 10000)
      {
        v67 = 10000;
      }

      if ((v65 == 0x8000000000000000 || v66 == 0x7FFFFFFFFFFFFFFFLL || v65 - v66 < v67) && (*(a1 + 384) != 1 || llround(*(a1 + 168) * 0.5) <= a3))
      {
        goto LABEL_146;
      }
    }
  }

  LODWORD(v109.var0) = (*(**(a1 + 128) + 24))(*(a1 + 128));
  v110 = a3;
  v111 = a4;
  if ((*(a1 + 384) & 1) == 0)
  {
    v68 = *(a1 + 376);
    if ((v68 - 0x7FFFFFFFFFFFFFFFLL) > 1)
    {
      if (v65 == 0x7FFFFFFFFFFFFFFFLL || v65 != 0x8000000000000000 && v65 - v68 > 5000000)
      {
        *(a1 + 168) = a3;
        *(a1 + 384) = 1;
      }
    }

    else
    {
      *(a1 + 376) = v65;
    }
  }

  webrtc::AimdRateControl::ChangeBitrate(a1 + 152, &v109, v65);
  v83 = *(a1 + 168);
  *(v98 + 8) = v83;
  v84 = *(a1 + 384);
  *v98 = v84;
LABEL_173:
  v94 = (*(**(a1 + 128) + 24))(*(a1 + 128));
  if ((v84 & 1) != 0 && *(a1 + 568) != v83 || v94 != *(a1 + 576))
  {
    v95 = (a1 + 568);
    if (v84)
    {
      v95 = (v98 + 8);
    }

    if (*(a1 + 24))
    {
      operator new();
    }

    *(a1 + 568) = *v95;
    *(a1 + 576) = v94;
  }

  *(v98 + 20) = v94;
  v76 = __p;
  if (__p)
  {
LABEL_92:
    v105 = v76;
    operator delete(v76);
  }
}

void *webrtc::WebRtc_CreateBinaryDelayEstimatorFarend(webrtc *this)
{
  if (this < 2)
  {
    return 0;
  }

  v1 = this;
  v2 = malloc_type_malloc(0x18uLL, 0x1010040DD7518FAuLL);
  v3 = v2;
  if (v2)
  {
    *v2 = 0;
    v2[1] = 0;
    *(v2 + 4) = 0;
    v2[1] = malloc_type_realloc(0, 4 * v1, 0x100004052888210uLL);
    v4 = malloc_type_realloc(*v3, 4 * v1, 0x100004052888210uLL);
    *v3 = v4;
    v5 = v3[1];
    v6 = !v5 || v4 == 0;
    v7 = v6;
    v8 = v6 ? 0 : v1;
    v9 = *(v3 + 4);
    if (v8 > v9)
    {
      v10 = 4 * (v8 - v9);
      bzero((v5 + 4 * v9), v10);
      bzero((*v3 + 4 * *(v3 + 4)), v10);
    }

    *(v3 + 4) = v8;
    if (v7)
    {
      free(v3[1]);
      v3[1] = 0;
      free(*v3);
      free(v3);
      return 0;
    }
  }

  return v3;
}

void *webrtc::WebRtc_CreateBinaryDelayEstimator(uint64_t a1, int a2)
{
  result = 0;
  if (a1)
  {
    if ((a2 & 0x80000000) == 0)
    {
      result = malloc_type_malloc(0x58uLL, 0x10B004049C60EFCuLL);
      if (result)
      {
        result[10] = a1;
        *(result + 6) = a2 + 1;
        *(result + 7) = 0;
        *(result + 11) = 0;
        *(result + 12) = 0;
        *(result + 19) = a2;
        result[8] = 0;
        v5 = 4 * (a2 + 1);
        *result = 0;
        result[1] = 0;
        v6 = result;
        v7 = malloc_type_malloc(v5, 0x100004052888210uLL);
        result = v6;
        *(v6 + 16) = v7;
        if (!v7 || (HistoryBufferMemory = webrtc::WebRtc_AllocateHistoryBufferMemory(v6, *(a1 + 16)), result = v6, !HistoryBufferMemory))
        {
          v9 = result;
          free(*result);
          *v9 = 0;
          free(v9[1]);
          v9[1] = 0;
          free(v9[2]);
          v9[2] = 0;
          free(v9[8]);
          free(v9);
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t webrtc::WebRtc_AllocateHistoryBufferMemory(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 80);
  if (*(v4 + 16) != a2)
  {
    *(v4 + 8) = malloc_type_realloc(*(v4 + 8), 4 * a2, 0x100004052888210uLL);
    v5 = malloc_type_realloc(*v4, 4 * v2, 0x100004052888210uLL);
    *v4 = v5;
    v6 = *(v4 + 8);
    if (v5)
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v2 = 0;
    }

    else
    {
      v2 = v2;
    }

    v8 = *(v4 + 16);
    if (v2 > v8)
    {
      v9 = 4 * (v2 - v8);
      bzero((v6 + 4 * v8), v9);
      bzero((*v4 + 4 * *(v4 + 16)), v9);
    }

    *(v4 + 16) = v2;
  }

  v10 = 4 * v2;
  *a1 = malloc_type_realloc(*a1, v10 + 4, 0x100004052888210uLL);
  *(a1 + 8) = malloc_type_realloc(*(a1 + 8), v10, 0x100004052888210uLL);
  v11 = malloc_type_realloc(*(a1 + 64), v10 + 4, 0x100004052888210uLL);
  *(a1 + 64) = v11;
  if (!*a1 || !*(a1 + 8) || !v11)
  {
    v2 = 0;
  }

  v12 = *(a1 + 28);
  if (v2 > v12)
  {
    v13 = 4 * (v2 - v12);
    bzero((*a1 + 4 * v12), v13);
    bzero((*(a1 + 8) + 4 * *(a1 + 28)), v13);
    bzero((*(a1 + 64) + 4 * *(a1 + 28)), v13);
  }

  *(a1 + 28) = v2;
  return v2;
}

uint64_t webrtc::WebRtc_ProcessBinarySpectrum(uint64_t a1, unsigned int a2, double a3, int8x16_t a4)
{
  v4 = *(a1 + 80);
  v5 = *(v4 + 16);
  if (v5 != *(a1 + 28))
  {
    return 0xFFFFFFFFLL;
  }

  v6 = *(a1 + 24);
  if (v6 > 1)
  {
    v7 = a1;
    v8 = a2;
    memmove((*(a1 + 16) + 4), *(a1 + 16), 4 * (v6 - 1));
    a1 = v7;
    v9 = *(v7 + 16);
    *v9 = v8;
    a2 = v9[*(v7 + 76)];
    v4 = *(v7 + 80);
    v5 = *(v7 + 28);
  }

  if (v5 < 1)
  {
LABEL_24:
    v45 = 0;
    v46 = 0xFFFFFFFFLL;
    v47 = 0x4000;
    v48 = -16384;
    v49 = *(a1 + 32);
    if (v49 < 8705)
    {
      goto LABEL_44;
    }

    goto LABEL_37;
  }

  v10 = *(v4 + 8);
  v11 = *(a1 + 8);
  v12 = v5;
  if (v5 < 4 || (v11 - v10) < 0x10)
  {
    v14 = 0;
LABEL_14:
    v28 = v12 - v14;
    v29 = 4 * v14;
    v30 = (v11 + 4 * v14);
    v31 = (v10 + v29);
    do
    {
      v32 = *v31++;
      v33 = (v32 ^ a2) - ((((v32 ^ a2) >> 1) & 0x5B6DB6DB) + (((v32 ^ a2) >> 2) & 0x9249249));
      v34 = ((v33 + (v33 >> 3)) & 0xC71C71C7) + (((v33 + (v33 >> 3)) & 0xC71C71C7) >> 6);
      *v30++ = (v34 + (v34 >> 12) + HIBYTE(v34)) & 0x3F;
      --v28;
    }

    while (v28);
    goto LABEL_16;
  }

  v14 = v5 & 0x7FFFFFFC;
  v16 = vdupq_n_s32(a2);
  a4 = vdupq_n_s32(0x5B6DB6DBu);
  v17 = vdupq_n_s32(0x9249249u);
  v18 = vdupq_n_s32(0xC71C71C7);
  v19.i64[0] = 0x3F0000003FLL;
  v19.i64[1] = 0x3F0000003FLL;
  v20 = v14;
  v21 = *(a1 + 8);
  v22 = *(v4 + 8);
  do
  {
    v23 = *v22++;
    v24 = veorq_s8(v23, v16);
    v25 = vsubq_s32(v24, vaddq_s32(vandq_s8(vshrq_n_u32(v24, 1uLL), a4), vandq_s8(vshrq_n_u32(v24, 2uLL), v17)));
    v26 = vandq_s8(vsraq_n_u32(v25, v25, 3uLL), v18);
    v27 = vsraq_n_u32(v26, v26, 6uLL);
    *v21++ = vandq_s8(vsraq_n_u32(vsraq_n_u32(v27, v27, 0xCuLL), v27, 0x18uLL), v19);
    v20 -= 4;
  }

  while (v20);
  if (v14 != v12)
  {
    goto LABEL_14;
  }

LABEL_16:
  v5 = *(a1 + 28);
  if (v5 < 1)
  {
    goto LABEL_24;
  }

  v35 = 0;
  v36 = *v4;
  do
  {
    v37 = v36[v35];
    if (v37 >= 1)
    {
      v38 = *(v11 + 4 * v35) << 9;
      v39 = 13 - ((3 * v37) >> 4);
      v40 = *(*a1 + 4 * v35);
      v41 = __OFSUB__(v38, v40);
      v42 = v38 - v40;
      v43 = -v42 >> v39;
      v44 = v42 >> v39;
      if (v42 < 0 != v41)
      {
        v44 = -v43;
      }

      *(*a1 + 4 * v35) = v44 + v40;
      v5 = *(a1 + 28);
    }

    ++v35;
  }

  while (v35 < v5);
  if (v5 <= 0)
  {
    v45 = 0;
    v46 = 0xFFFFFFFFLL;
    v47 = 0x4000;
    v48 = -16384;
    v49 = *(a1 + 32);
    if (v49 < 8705)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v50 = 0;
    v51 = 0;
    v47 = 0x4000;
    LODWORD(v46) = -1;
    do
    {
      v52 = *(*a1 + 4 * v50);
      if (v52 >= v47)
      {
        v46 = v46;
      }

      else
      {
        v47 = *(*a1 + 4 * v50);
        v46 = v50;
      }

      if (v52 > v51)
      {
        v51 = *(*a1 + 4 * v50);
      }

      ++v50;
    }

    while (v5 != v50);
    v45 = 1;
    v48 = v51 - v47;
    v49 = *(a1 + 32);
    if (v49 < 8705)
    {
      goto LABEL_44;
    }
  }

LABEL_37:
  if (v48 >= 2817)
  {
    if (v47 <= 7680)
    {
      v53 = 7680;
    }

    else
    {
      v53 = v47;
    }

    v54 = v53 + 1024;
    if (v49 > v54)
    {
      *(a1 + 32) = v54;
      v49 = v54;
    }

    v55 = (a1 + 36);
    v56 = *(a1 + 36);
    v57 = v56 + 1;
    *(a1 + 36) = v56 + 1;
    goto LABEL_45;
  }

LABEL_44:
  v55 = (a1 + 36);
  v56 = *(a1 + 36);
  v57 = v56 + 1;
  *(a1 + 36) = v56 + 1;
  if (v48 < 1025)
  {
    v59 = 0;
    if (!v5)
    {
      goto LABEL_54;
    }

    goto LABEL_51;
  }

LABEL_45:
  v58 = v47 <= v56;
  v59 = v47 < v49 || v58;
  if (!v5)
  {
LABEL_54:
    v62 = 0;
    if (*(a1 + 44))
    {
      goto LABEL_55;
    }

LABEL_114:
    v65 = *(a1 + 40);
    if (!v59)
    {
      v62 = 0;
    }

    if (v62 == 1)
    {
      goto LABEL_84;
    }

    return v65;
  }

LABEL_51:
  v60 = *v4;
  v61 = 4 * v5;
  while (*v60 < 1)
  {
    ++v60;
    v61 -= 4;
    if (!v61)
    {
      goto LABEL_54;
    }
  }

  v71 = vcvts_n_f32_s32(v48, 0xEuLL);
  v72 = *(a1 + 40);
  if (v72 <= v46)
  {
    v73 = 1000;
  }

  else
  {
    v73 = 10;
  }

  if (*(a1 + 52) == v46)
  {
    v74 = *(a1 + 60) + 1;
  }

  else
  {
    *(a1 + 52) = v46;
    v74 = 1;
  }

  *(a1 + 60) = v74;
  v79 = *(a1 + 64);
  v80 = v71 + v79->f32[v46];
  if (v80 > 3000.0)
  {
    v80 = 3000.0;
  }

  v79->f32[v46] = v80;
  *a4.i32 = v71;
  if (v74 < v73)
  {
    *a4.i32 = vcvts_n_f32_s32(*(*a1 + 4 * *(a1 + 56)) - v47, 0xEuLL);
  }

  if (v45)
  {
    v81 = v72 - 2;
    v82 = v72 + 1;
    v83 = v46 - 2;
    v84 = v46 + 1;
    v85 = v5;
    if (v5 >= 4)
    {
      v86 = v5 & 0x7FFFFFFC;
      v94 = vdupq_n_s64(v81);
      v95 = vdupq_n_s64(v82);
      v96 = vdupq_n_s64(v46);
      v97 = vdupq_n_s64(v83);
      v98 = vdupq_n_s64(v84);
      v99 = xmmword_273B92120;
      v100 = xmmword_273B92130;
      v101 = vdupq_n_s64(4uLL);
      v102 = v85 & 0x7FFFFFFC;
      v103 = v79;
      v104 = vdupq_lane_s32(*a4.i8, 0);
      do
      {
        v105 = vmovn_s32(vbicq_s8(vandq_s8(vuzp1q_s32(vcgeq_s64(v100, v94), vcgeq_s64(v99, v94)), vuzp1q_s32(vcgeq_s64(v95, v100), vcgeq_s64(v95, v99))), vuzp1q_s32(vceqq_s64(v100, v96), vceqq_s64(v99, v96))));
        v106 = vsubq_f32(*v103, vmlaq_f32(vmulq_n_f32(vcvtq_f32_u32(vmovl_u16(vand_s8(vbic_s8(vmovn_s32(vorrq_s8(vuzp1q_s32(vcgtq_s64(v97, v100), vcgtq_s64(v97, v99)), vuzp1q_s32(vcgtq_s64(v100, v98), vcgtq_s64(v99, v98)))), v105), 0x1000100010001))), v71), vcvtq_f32_u32(vmovl_u16(vand_s8(v105, 0x1000100010001))), v104));
        *v103++ = vbicq_s8(v106, vcltzq_f32(v106));
        v99 = vaddq_s64(v99, v101);
        v100 = vaddq_s64(v100, v101);
        v102 -= 4;
      }

      while (v102);
      if (v86 == v85)
      {
        goto LABEL_113;
      }
    }

    else
    {
      v86 = 0;
    }

    do
    {
      v109 = v86 >= v81 && v86 <= v82 && v46 != v86;
      v111 = v86 < v83 || v86 > v84;
      v112 = v79->f32[v86] - ((v71 * (v111 & ~v109)) + (*a4.i32 * v109));
      if (v112 < 0.0)
      {
        v112 = 0.0;
      }

      v79->f32[v86++] = v112;
    }

    while (v85 != v86);
  }

LABEL_113:
  v62 = 1;
  if (!*(a1 + 44))
  {
    goto LABEL_114;
  }

LABEL_55:
  v63 = *(a1 + 64);
  v64 = *(v63 + 4 * *(a1 + 56));
  v65 = *(a1 + 40);
  v66 = v46 - v65;
  v67 = *(a1 + 48);
  v41 = __OFSUB__(v46 - v65, v67);
  v68 = v46 - v65 - v67;
  if ((v68 < 0) ^ v41 | (v68 == 0))
  {
    if (v66 < 0)
    {
      v87 = (v66 * -0.05) + 0.25;
      if (v87 > 1.0)
      {
        v87 = 1.0;
      }

      v88 = fmaxf(v64 * v87, 1.5);
      v70 = *(v63 + 4 * v46);
      if (v70 < v88)
      {
        goto LABEL_78;
      }
    }

    else
    {
      v75 = fmaxf(v64 * 1.0, 1.5);
      v70 = *(v63 + 4 * v46);
      if (v70 < v75)
      {
        goto LABEL_78;
      }
    }
  }

  else
  {
    v69 = fmaxf(v64 * fmaxf((v68 * -0.05) + 1.0, 0.5), 1.5);
    v70 = *(v63 + 4 * v46);
    if (v70 < v69)
    {
      goto LABEL_78;
    }
  }

  if (*(a1 + 60) >= 11)
  {
    v76 = v70 > *(a1 + 72);
    v77 = 1;
    v78 = 1;
    goto LABEL_79;
  }

LABEL_78:
  v77 = 0;
  v78 = 0;
  v76 = 0;
LABEL_79:
  v89 = v78 | v59;
  if (v65 >= 0)
  {
    v89 = 0;
  }

  if (!(v76 | v59 & v77 | v89))
  {
    v62 = 0;
  }

  if (v62 != 1)
  {
    return v65;
  }

LABEL_84:
  if (v46 != v65)
  {
    v90 = *(a1 + 64);
    v91 = *(v90 + 4 * v46);
    if (v91 > 250.0)
    {
      v91 = 250.0;
    }

    *(a1 + 72) = v91;
    v92 = *(v90 + 4 * v46);
    v93 = *(a1 + 56);
    if (v92 < *(v90 + 4 * v93))
    {
      *(v90 + 4 * v93) = v92;
    }
  }

  *(a1 + 40) = v46;
  if (v47 < v57)
  {
    *v55 = v47;
  }

  *(a1 + 56) = v46;
  return v46;
}

void *webrtc::WebRtc_CreateDelayEstimatorFarend(webrtc *this, webrtc *a2)
{
  if (this >= 43)
  {
    v3 = this;
    v4 = malloc_type_malloc(0x18uLL, 0x102004014030ADEuLL);
    if (!v4)
    {
      return v4;
    }

    BinaryDelayEstimatorFarend = webrtc::WebRtc_CreateBinaryDelayEstimatorFarend(a2);
    *(v4 + 2) = BinaryDelayEstimatorFarend;
    v6 = malloc_type_malloc(4 * v3, 0x100004052888210uLL);
    *v4 = v6;
    *(v4 + 3) = v3;
    if (BinaryDelayEstimatorFarend)
    {
      if (v6)
      {
        return v4;
      }
    }

    free(v6);
    *v4 = 0;
    v8 = *(v4 + 2);
    if (v8)
    {
      free(v8[1]);
      v8[1] = 0;
      free(*v8);
      free(v8);
    }

    free(v4);
  }

  return 0;
}

uint64_t webrtc::BinarySpectrumFix(unsigned __int16 *a1, int32x4_t *a2, int a3, _DWORD *a4)
{
  v4 = 15 - a3;
  if (!*a4)
  {
    if (a1[12])
    {
      a2[3].i32[0] = a1[12] << v4 >> 1;
      *a4 = 1;
    }

    if (a1[13])
    {
      a2[3].i32[1] = a1[13] << v4 >> 1;
      *a4 = 1;
    }

    if (a1[14])
    {
      a2[3].i32[2] = a1[14] << v4 >> 1;
      *a4 = 1;
    }

    if (a1[15])
    {
      a2[3].i32[3] = a1[15] << v4 >> 1;
      *a4 = 1;
    }

    if (a1[16])
    {
      a2[4].i32[0] = a1[16] << v4 >> 1;
      *a4 = 1;
    }

    if (a1[17])
    {
      a2[4].i32[1] = a1[17] << v4 >> 1;
      *a4 = 1;
    }

    if (a1[18])
    {
      a2[4].i32[2] = a1[18] << v4 >> 1;
      *a4 = 1;
    }

    if (a1[19])
    {
      a2[4].i32[3] = a1[19] << v4 >> 1;
      *a4 = 1;
    }

    if (a1[20])
    {
      a2[5].i32[0] = a1[20] << v4 >> 1;
      *a4 = 1;
    }

    if (a1[21])
    {
      a2[5].i32[1] = a1[21] << v4 >> 1;
      *a4 = 1;
    }

    if (a1[22])
    {
      a2[5].i32[2] = a1[22] << v4 >> 1;
      *a4 = 1;
    }

    if (a1[23])
    {
      a2[5].i32[3] = a1[23] << v4 >> 1;
      *a4 = 1;
    }

    if (a1[24])
    {
      a2[6].i32[0] = a1[24] << v4 >> 1;
      *a4 = 1;
    }

    if (a1[25])
    {
      a2[6].i32[1] = a1[25] << v4 >> 1;
      *a4 = 1;
    }

    if (a1[26])
    {
      a2[6].i32[2] = a1[26] << v4 >> 1;
      *a4 = 1;
    }

    if (a1[27])
    {
      a2[6].i32[3] = a1[27] << v4 >> 1;
      *a4 = 1;
    }

    if (a1[28])
    {
      a2[7].i32[0] = a1[28] << v4 >> 1;
      *a4 = 1;
    }

    if (a1[29])
    {
      a2[7].i32[1] = a1[29] << v4 >> 1;
      *a4 = 1;
    }

    if (a1[30])
    {
      a2[7].i32[2] = a1[30] << v4 >> 1;
      *a4 = 1;
    }

    if (a1[31])
    {
      a2[7].i32[3] = a1[31] << v4 >> 1;
      *a4 = 1;
    }

    if (a1[32])
    {
      a2[8].i32[0] = a1[32] << v4 >> 1;
      *a4 = 1;
    }

    if (a1[33])
    {
      a2[8].i32[1] = a1[33] << v4 >> 1;
      *a4 = 1;
    }

    if (a1[34])
    {
      a2[8].i32[2] = a1[34] << v4 >> 1;
      *a4 = 1;
    }

    if (a1[35])
    {
      a2[8].i32[3] = a1[35] << v4 >> 1;
      *a4 = 1;
    }

    if (a1[36])
    {
      a2[9].i32[0] = a1[36] << v4 >> 1;
      *a4 = 1;
    }

    if (a1[37])
    {
      a2[9].i32[1] = a1[37] << v4 >> 1;
      *a4 = 1;
    }

    if (a1[38])
    {
      a2[9].i32[2] = a1[38] << v4 >> 1;
      *a4 = 1;
    }

    if (a1[39])
    {
      a2[9].i32[3] = a1[39] << v4 >> 1;
      *a4 = 1;
    }

    if (a1[40])
    {
      a2[10].i32[0] = a1[40] << v4 >> 1;
      *a4 = 1;
    }

    if (a1[41])
    {
      a2[10].i32[1] = a1[41] << v4 >> 1;
      *a4 = 1;
    }

    if (a1[42])
    {
      a2[10].i32[2] = a1[42] << v4 >> 1;
      *a4 = 1;
    }

    if (a1[43])
    {
      a2[10].i32[3] = a1[43] << v4 >> 1;
      *a4 = 1;
    }
  }

  v5 = vdupq_n_s32(v4);
  v6 = *(a1 + 12);
  v7 = *(a1 + 20);
  v8 = vmovl_high_u16(v6);
  v9 = vmovl_high_u16(v7);
  v10 = vshlq_u32(vmovl_u16(*v6.i8), v5);
  v11 = vshlq_u32(v8, v5);
  v12 = vshlq_u32(vmovl_u16(*v7.i8), v5);
  v13 = vshlq_u32(v9, v5);
  v14 = a2[3];
  v15 = a2[4];
  v16 = a2[5];
  v17 = a2[6];
  v18 = vsubq_s32(v11, v15);
  v19 = vsubq_s32(v10, v14);
  v20 = vsubq_s32(v13, v17);
  v21 = vsubq_s32(v12, v16);
  v22 = vaddq_s32(vbslq_s8(vcltzq_s32(v19), vnegq_s32(vshrq_n_u32(vnegq_s32(v19), 6uLL)), vshrq_n_u32(v19, 6uLL)), v14);
  v23 = vaddq_s32(vbslq_s8(vcltzq_s32(v18), vnegq_s32(vshrq_n_u32(vnegq_s32(v18), 6uLL)), vshrq_n_u32(v18, 6uLL)), v15);
  v24 = vaddq_s32(vbslq_s8(vcltzq_s32(v21), vnegq_s32(vshrq_n_u32(vnegq_s32(v21), 6uLL)), vshrq_n_u32(v21, 6uLL)), v16);
  v25 = vaddq_s32(vbslq_s8(vcltzq_s32(v20), vnegq_s32(vshrq_n_u32(vnegq_s32(v20), 6uLL)), vshrq_n_u32(v20, 6uLL)), v17);
  a2[3] = v22;
  a2[4] = v23;
  a2[5] = v24;
  a2[6] = v25;
  v26 = vcgtq_s32(v10, v22);
  v27 = vcgtq_s32(v11, v23);
  v28 = vcgtq_s32(v12, v24);
  v29 = vandq_s8(v26, xmmword_273B92150);
  v30 = vandq_s8(vcgtq_s32(v13, v25), xmmword_273B92160);
  v31 = vandq_s8(v28, xmmword_273B92170);
  v32 = *(a1 + 28);
  v33 = *(a1 + 36);
  v34 = vmovl_high_u16(v32);
  v35 = vmovl_high_u16(v33);
  v36 = vshlq_u32(vmovl_u16(*v32.i8), v5);
  v37 = vshlq_u32(v34, v5);
  v38 = vshlq_u32(vmovl_u16(*v33.i8), v5);
  v39 = vshlq_u32(v35, v5);
  v40 = a2[7];
  v41 = a2[8];
  v42 = a2[9];
  v43 = a2[10];
  v44 = vsubq_s32(v37, v41);
  v45 = vsubq_s32(v36, v40);
  v46 = vsubq_s32(v39, v43);
  v47 = vsubq_s32(v38, v42);
  v48 = vaddq_s32(vbslq_s8(vcltzq_s32(v45), vnegq_s32(vshrq_n_u32(vnegq_s32(v45), 6uLL)), vshrq_n_u32(v45, 6uLL)), v40);
  v49 = vaddq_s32(vbslq_s8(vcltzq_s32(v44), vnegq_s32(vshrq_n_u32(vnegq_s32(v44), 6uLL)), vshrq_n_u32(v44, 6uLL)), v41);
  v50 = vaddq_s32(vbslq_s8(vcltzq_s32(v47), vnegq_s32(vshrq_n_u32(vnegq_s32(v47), 6uLL)), vshrq_n_u32(v47, 6uLL)), v42);
  v51 = vaddq_s32(vbslq_s8(vcltzq_s32(v46), vnegq_s32(vshrq_n_u32(vnegq_s32(v46), 6uLL)), vshrq_n_u32(v46, 6uLL)), v43);
  a2[7] = v48;
  a2[8] = v49;
  a2[9] = v50;
  a2[10] = v51;
  v52 = vorrq_s8(vorrq_s8(vorrq_s8(vandq_s8(vcgtq_s32(v38, v50), xmmword_273B921B0), v31), vorrq_s8(vandq_s8(vcgtq_s32(v36, v48), xmmword_273B92190), v29)), vorrq_s8(vorrq_s8(vandq_s8(vcgtq_s32(v39, v51), xmmword_273B921A0), v30), vorrq_s8(vandq_s8(vcgtq_s32(v37, v49), xmmword_273B92180), vandq_s8(v27, xmmword_273B92140))));
  *v52.i8 = vorr_s8(*v52.i8, *&vextq_s8(v52, v52, 8uLL));
  return (v52.i32[0] | v52.i32[1]);
}

void webrtc::WebRtc_FreeDelayEstimator(void **this, void *a2)
{
  if (this)
  {
    free(*this);
    *this = 0;
    v3 = this[2];
    if (v3)
    {
      free(*v3);
      *v3 = 0;
      free(v3[1]);
      v3[1] = 0;
      free(v3[2]);
      v3[2] = 0;
      free(v3[8]);
      free(v3);
    }

    free(this);
  }
}

void *webrtc::WebRtc_CreateDelayEstimator(webrtc *this, void *a2)
{
  if (this)
  {
    v3 = a2;
    v4 = malloc_type_malloc(0x18uLL, 0x102004014030ADEuLL);
    if (!v4)
    {
      return v4;
    }

    BinaryDelayEstimator = webrtc::WebRtc_CreateBinaryDelayEstimator(*(this + 2), v3);
    *(v4 + 2) = BinaryDelayEstimator;
    v6 = malloc_type_malloc(4 * *(this + 3), 0x100004052888210uLL);
    *v4 = v6;
    *(v4 + 3) = *(this + 3);
    if (BinaryDelayEstimator)
    {
      if (v6)
      {
        return v4;
      }
    }

    free(v6);
    *v4 = 0;
    v8 = *(v4 + 2);
    if (v8)
    {
      free(*v8);
      *v8 = 0;
      free(v8[1]);
      v8[1] = 0;
      free(v8[2]);
      v8[2] = 0;
      free(v8[8]);
      free(v8);
    }

    free(v4);
  }

  return 0;
}

void webrtc::DelayManager::Config::Config(uint64_t a1)
{
  *a1 = xmmword_273B921C0;
  *(a1 + 16) = 0x4000000000000000;
  *(a1 + 24) = 1;
  *(a1 + 32) = 500;
  *(a1 + 36) = 1;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0x3FEFFA43FE5C91D1;
  *(a1 + 56) = 20;
  operator new();
}

void webrtc::DelayManager::Config::Log(webrtc::DelayManager::Config *this)
{
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    v11[0] = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/neteq/delay_manager.cc";
    v11[1] = 441;
    v11[2] = &v10;
    v12[0] = "Delay manager config: quantile=";
    v12[1] = v11;
    v9 = *(this + 1);
    v13[0] = *this;
    v13[1] = v12;
    v14[0] = " forget_factor=";
    v14[1] = v13;
    v15[0] = v9;
    v15[1] = v14;
    v16[0] = " start_forget_weight=";
    v16[1] = v15;
    if (*(this + 24) == 1)
    {
      v17 = *(this + 2);
      v18 = v16;
    }

    else
    {
      v17 = 0;
      v18 = v16;
    }

    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)7,double>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)7,double>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)7,double>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)7,double>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)7,double>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)7,double>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)7,double>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)7,double>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v2, v3, v4, v5, v6, v7, v8, **(*(*(*(v18[1] + 8) + 8) + 8) + 8));
  }
}

void webrtc::DelayManager::DelayManager(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_288292A70;
  a1[1] = a3;
  a1[2] = &unk_2882942E8;
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  operator new();
}

void webrtc::DelayManager::~DelayManager(webrtc::DelayManager *this)
{
  *this = &unk_288292A70;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    *v2 = &unk_2882942E8;
    v3 = v2[1];
    if (v3)
    {
      v2[2] = v3;
      operator delete(v3);
    }

    MEMORY[0x2743DA540](v2, 0x1090C40E8676ED2);
  }

  v4 = *(this + 12);
  *(this + 12) = 0;
  if (v4)
  {
    MEMORY[0x2743DA540](v4, 0x1060C40C2E02434);
  }

  *(this + 2) = &unk_2882942E8;
  v5 = *(this + 3);
  if (v5)
  {
    *(this + 4) = v5;
    operator delete(v5);
  }
}

{
  *this = &unk_288292A70;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    *v2 = &unk_2882942E8;
    v3 = v2[1];
    if (v3)
    {
      v2[2] = v3;
      operator delete(v3);
    }

    MEMORY[0x2743DA540](v2, 0x1090C40E8676ED2);
  }

  v4 = *(this + 12);
  *(this + 12) = 0;
  if (v4)
  {
    MEMORY[0x2743DA540](v4, 0x1060C40C2E02434);
  }

  *(this + 2) = &unk_2882942E8;
  v5 = *(this + 3);
  if (v5)
  {
    *(this + 4) = v5;
    operator delete(v5);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::DelayManager::Update(uint64_t this, int a2, int a3)
{
  v5 = this;
  v6 = *(this + 120);
  if (v6)
  {
    v7 = a3 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    this = webrtc::UnderrunOptimizer::Update(this + 8, a2);
    v6 = *(v5 + 120);
    if ((*(v5 + 108) & 0x100000000) != 0)
    {
      v8 = *(v5 + 108);
    }

    else
    {
      v8 = 80;
    }

    *(v5 + 128) = v8;
    if (!v6)
    {
      return this;
    }
  }

  else
  {
    if ((*(this + 108) & 0x100000000) != 0)
    {
      v8 = *(this + 108);
    }

    else
    {
      v8 = 80;
    }

    *(this + 128) = v8;
  }

  if (a3)
  {
    v9 = a2 / 20;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v6 + 8);
  v11 = *(v6 + 16) - v10;
  if (v9 < (v11 >> 2))
  {
    this = webrtc::Histogram::Add(v6, v9);
    v10 = *(v6 + 8);
    v11 = *(v6 + 16) - v10;
  }

  v12 = v11 >> 2;
  if ((v11 >> 2) < 1)
  {
    v21 = 20;
LABEL_31:
    *(v6 + 68) = v21;
    *(v6 + 72) = 1;
    v22 = *(*(v5 + 120) + 68);
    if ((v22 & 0x100000000) == 0)
    {
      LODWORD(v22) = 0;
    }

    if (*(v5 + 128) > v22)
    {
      LODWORD(v22) = *(v5 + 128);
    }

    *(v5 + 128) = v22;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v15 = (v11 >> 2) & 0x7FFFFFFF;
    v16 = -v8;
    v17 = 0x7FFFFFFFFFFFFFFFLL;
    v18 = 0x40000000;
    while (v12 != v13)
    {
      this = v16 & ~(v16 >> 31);
      v19 = *(v6 + 64);
      v18 -= *(v10 + 4 * v13);
      v20 = 100 * v19 * v18 + (this << 30);
      if (v20 < v17)
      {
        v14 = v13;
      }

      if (v18)
      {
        if (v20 < v17)
        {
          v17 = 100 * v19 * v18 + (this << 30);
        }

        ++v13;
        v16 += 20;
        if (v15 != v13)
        {
          continue;
        }
      }

      v21 = 20 * v14 + 20;
      goto LABEL_31;
    }

    __break(1u);
  }

  return this;
}

uint64_t webrtc::DelayManager::Reset(webrtc::DelayManager *this)
{
  v2 = *(this + 3);
  v3 = *(this + 4);
  if (v2 != v3)
  {
    v4 = 16386;
    do
    {
      v4 >>= 1;
      *v2++ = v4 << 16;
    }

    while (v2 != v3);
  }

  *(this + 12) = 0;
  *(this + 14) = 0;
  result = *(this + 12);
  *(this + 12) = 0;
  if (result)
  {
    result = MEMORY[0x2743DA540](result, 0x1060C40C2E02434);
  }

  *(this + 26) = 0;
  if (*(this + 112) == 1)
  {
    *(this + 112) = 0;
  }

  *(this + 32) = 80;
  v6 = *(this + 15);
  if (v6)
  {
    v7 = *(v6 + 8);
    v8 = *(v6 + 16);
    if (v7 != v8)
    {
      v9 = 16386;
      do
      {
        v9 >>= 1;
        *v7++ = v9 << 16;
      }

      while (v7 != v8);
    }

    *(v6 + 32) = 0;
    *(v6 + 40) = 0;
    if (*(v6 + 72) == 1)
    {
      *(v6 + 72) = 0;
    }
  }

  return result;
}

void absl::inlined_vector_internal::Storage<webrtc::DecodeTargetIndication,10ul,std::allocator<webrtc::DecodeTargetIndication>>::EmplaceBackSlow<webrtc::DecodeTargetIndication const&>(void *a1)
{
  if ((*a1 & 1) != 0 && ((a1[2] >> 61) & 3) != 0)
  {
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  operator new();
}

uint64_t webrtc::WebRtcAgc_CalculateGainTable(webrtc *this, int *a2, int a3, int a4, int a5)
{
  v5 = ((2 * a2) | 1) / 3;
  if (v5 > 0x7F)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = 0;
  v8 = 1431655766 * ((2 * (a2 - a5)) | 1);
  v9 = (WORD2(v8) + (v8 >> 63) + a5 - a3);
  if (a5 - a3 <= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = a5 - a3;
  }

  v12 = 20 * v11;
  v13 = (v10 << 6) * v11;
  v14 = ((5 * v11) >> 6) & 0xFFFFFF;
  v15 = -v14;
  v16 = __clz(v12) + 7;
  v17 = -49311 - (a3 << 14);
  do
  {
    v25 = (49321 * (2 * v7 - 2)) | 1;
    v26 = ((((1431655765 * v25) >> 32) - v25) >> 1) + ((((1431655765 * v25) >> 32) - v25) >> 31) + (v5 << 14);
    if (v26 >= 0)
    {
      v27 = v26;
    }

    else
    {
      v27 = -v26;
    }

    if ((v26 & 0x80000000) == 0)
    {
      v30 = (v29 >> 8) * v5;
      v31 = v13 - v30;
      v32 = v13 - v30 > v14 || v31 < v15;
      LOWORD(v33) = v16;
      if (!v32)
      {
        goto LABEL_26;
      }

LABEL_24:
      v33 = __clz(v31 ^ (v31 >> 31)) - 1;
      if (v13 == v30)
      {
        LOWORD(v33) = 0;
      }

      goto LABEL_26;
    }

    v38 = __clz(v27);
    v39 = (23637 * v27) >> 6;
    v40 = 23637 * (v27 >> (15 - v38));
    v41 = v40 >> (v38 - 9);
    v42 = v29 >> (9 - v38);
    v43 = v38 - 1;
    if (v27 < 0x800000)
    {
      v40 = v41;
      v42 = v29;
      v43 = 8;
    }

    if (v27 < 0x20000)
    {
      v42 = v29;
    }

    else
    {
      v39 = v40;
    }

    if (v27 < 0x20000)
    {
      v43 = 8;
    }

    v44 = v42 >= v39;
    v45 = v42 - v39;
    v46 = v45 >> v43;
    if (v45 != 0 && v44)
    {
      v47 = v46;
    }

    else
    {
      v47 = 0;
    }

    v30 = v47 * v5;
    v31 = v13 - v47 * v5;
    v48 = v31 > v14 || v31 < v15;
    LOWORD(v33) = v16;
    if (v48)
    {
      goto LABEL_24;
    }

LABEL_26:
    v34 = v31 << v33;
    if (v33 <= 8)
    {
      v35 = v12 >> (9 - v33);
    }

    else
    {
      v35 = v12 << (v33 - 9);
    }

    v36 = v34 / v35;
    if (v36 >= 0)
    {
      v37 = (v36 + 1) >> 1;
    }

    else
    {
      v37 = -((1 - v36) >> 1);
    }

    if (a4 && v7 < ((a5 << 13) / 24660 + 2))
    {
      v37 = v17 / 20;
    }

    v18 = (54426 * v37 + 0x2000) >> 14;
    if (v37 >= 39001)
    {
      v18 = (54426 * (v37 >> 1) + 4096) >> 13;
    }

    v19 = v18 + 0x40000;
    v20 = (v18 + 0x40000) >> 14;
    v21 = v18 & 0x3FFF;
    if (v21 >= 0x2000)
    {
      v22 = 0x4000 - ((9951 * (0x4000 - v21)) >> 13);
    }

    else
    {
      v22 = (6433 * v21) >> 13;
    }

    v23 = v22 << (v20 - 14);
    v24 = v22 >> (14 - v20);
    if (v19 >> 15 > 6)
    {
      v24 = v23;
    }

    *(this + v7++) = v24 + (1 << v20);
    v17 += 49321;
  }

  while (v7 != 32);
  return 0;
}

uint64_t webrtc::WebRtcAgc_ProcessVad(uint64_t a1, __int16 *a2, uint64_t a3)
{
  v80 = *MEMORY[0x277D85DE8];
  LOWORD(v5) = *(a1 + 32);
  if (a3 == 160)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v79[0] = (a2[1] + *a2) >> 1;
      v79[1] = (a2[3] + a2[2]) >> 1;
      v79[2] = (a2[5] + a2[4]) >> 1;
      v79[3] = (a2[7] + a2[6]) >> 1;
      v79[4] = (a2[9] + a2[8]) >> 1;
      v79[5] = (a2[11] + a2[10]) >> 1;
      v79[6] = (a2[13] + a2[12]) >> 1;
      v79[7] = (a2[15] + a2[14]) >> 1;
      WebRtcSpl_DownsampleBy2(v79, 8uLL, &v75, a1);
      v8 = v75 + v5;
      v9 = ((600 * v8) >> 10) - v75;
      v10 = v7 + v8 / 64 * v8;
      v12 = (v8 - (v11 & 0xFFFFFFC0)) * v8;
      v13 = v76 + v9;
      v14 = ((600 * v13) >> 10) - v76;
      v15 = v10 + v12 / 64 + v13 / 64 * v13;
      v16 = (v13 - (v10 & 0xFFFFFFC0)) * v13;
      v17 = v16 + 63;
      v18 = v15 + v16 / 64;
      v19 = v77 + v14;
      v20 = v78 + (((600 * v19) >> 10) - v77);
      v5 = ((600 * v20) >> 10) - v78;
      v7 = v18 + v19 / 64 * v19 + ((v19 - (v17 & 0xFFFFFFC0)) * v19) / 64 + v20 / 64 * v20 + ((v20 - (((v19 - (v17 & 0xFFFFFFC0)) * v19 + ((((v19 - (v17 & 0xFFFFFFC0)) * v19) & 0x80000000) != 0 ? 0x3F : 0)) & 0xFFFFFFC0)) * v20) / 64;
      a2 += 16;
      v21 = v6++ >= 9;
    }

    while (!v21);
  }

  else
  {
    v22 = 0;
    v7 = 0;
    do
    {
      WebRtcSpl_DownsampleBy2(a2, 8uLL, &v75, a1);
      v23 = v75 + v5;
      v24 = ((600 * v23) >> 10) - v75;
      v25 = v7 + v23 / 64 * v23;
      v27 = (v23 - (v26 & 0xFFFFFFC0)) * v23;
      v28 = v76 + v24;
      v29 = ((600 * v28) >> 10) - v76;
      v30 = v25 + v27 / 64 + v28 / 64 * v28;
      v31 = (v28 - (v25 & 0xFFFFFFC0)) * v28;
      v32 = v31 + 63;
      v33 = v30 + v31 / 64;
      v34 = v77 + v29;
      v35 = v78 + (((600 * v34) >> 10) - v77);
      v5 = ((600 * v35) >> 10) - v78;
      v7 = v33 + v34 / 64 * v34 + ((v34 - (v32 & 0xFFFFFFC0)) * v34) / 64 + v35 / 64 * v35 + ((v35 - (((v34 - (v32 & 0xFFFFFFC0)) * v34 + ((((v34 - (v32 & 0xFFFFFFC0)) * v34) & 0x80000000) != 0 ? 0x3F : 0)) & 0xFFFFFFC0)) * v35) / 64;
      a2 += 8;
      v21 = v22++ >= 9;
    }

    while (!v21);
  }

  *(a1 + 32) = v5;
  v36 = *(a1 + 34);
  if (v36 <= 249)
  {
    LOWORD(v36) = v36 + 1;
    *(a1 + 34) = v36;
  }

  v37 = v7 < 0x10000;
  if (v7 << (16 * v37) >> 24)
  {
    v38 = 16 * v37;
  }

  else
  {
    v38 = (16 * (v7 < 0x10000)) | 8;
  }

  if (!(v7 << v38 >> 28))
  {
    v38 |= 4u;
  }

  if (!(v7 << v38 >> 30))
  {
    v38 |= 2u;
  }

  v39 = (((v38 + (((v7 << v38) & 0x80000000) == 0)) << 11) ^ 0x7800);
  v40 = v39 - *(a1 + 46) + 16 * *(a1 + 46);
  *(a1 + 46) = v40 >> 4;
  v41 = (v39 * v39) >> 12;
  v42 = (v41 - *(a1 + 48) + 16 * *(a1 + 48)) / 16;
  *(a1 + 48) = v42;
  v43 = (v42 << 12) - (v40 >> 4) * (v40 >> 4);
  if ((v43 & 0x80000000) != 0)
  {
    if (v43 == 0x80000000)
    {
      v43 = 0x7FFFFFFF;
    }

    else
    {
      v43 = -v43;
    }
  }

  else if (!v43)
  {
    goto LABEL_32;
  }

  v44 = __clz(v43) - 1;
  v45 = v44;
  v46 = v43 << v44;
  if (v46 >= 2147450880)
  {
    v47 = 2147418112;
  }

  else
  {
    v47 = (v46 + 0x8000) & 0xFFFF0000;
  }

  v48 = v44 >> 1;
  if ((v47 & 0x80000000) != 0)
  {
    v47 = -v47;
  }

  v49 = (v47 >> 17) | 0xFFFFC000;
  v50 = -2 * v49 * v49;
  v51 = (v47 >> 1) + 1073774592 + (v50 >> 1) + ((v49 * v49) >> 15) * v49 - 40960 * (((v50 >> 16) * (v50 >> 16)) >> 15) + 57344 * (((((v50 >> 16) * (v50 >> 16)) >> 15) * v49) >> 15);
  v52 = v45 == 2 * v48;
  v53 = HIWORD(v51);
  v54 = ((46340 * (v51 >> 16) + 0x8000) >> 15) & 0xFFFE;
  if (!v52)
  {
    v54 = v53;
  }

  v43 = v54 >> v48;
LABEL_32:
  *(a1 + 52) = v43;
  v55 = v36;
  if (v36 >= 32766)
  {
    LOWORD(v36) = 32766;
  }

  v56 = v36 + 1;
  if ((v56 & 0x10000) != 0)
  {
    LOWORD(v57) = 0x7FFF;
    *(a1 + 38) = 0x7FFF;
    *(a1 + 40) = 0x7FFFFFFF;
    v58 = -1073680385;
    goto LABEL_39;
  }

  v59 = v56;
  v57 = (v39 + *(a1 + 38) * v55) / v56;
  v60 = (v41 + *(a1 + 40) * v55) / v59;
  *(a1 + 38) = v57;
  *(a1 + 40) = v60;
  v58 = (v60 << 12) - v57 * v57;
  if ((v58 & 0x80000000) != 0)
  {
LABEL_39:
    if (v58 == 0x80000000)
    {
      v58 = 0x7FFFFFFF;
    }

    else
    {
      v58 = -v58;
    }

    goto LABEL_42;
  }

  if (!v58)
  {
    *(a1 + 44) = 0;
    goto LABEL_51;
  }

LABEL_42:
  v61 = __clz(v58) - 1;
  v62 = v61;
  v63 = v58 << v61;
  if (v63 >= 2147450880)
  {
    v64 = 2147418112;
  }

  else
  {
    v64 = (v63 + 0x8000) & 0xFFFF0000;
  }

  v65 = v61 >> 1;
  if ((v64 & 0x80000000) != 0)
  {
    v64 = -v64;
  }

  v66 = (v64 >> 17) | 0xFFFFC000;
  v67 = -2 * v66 * v66;
  v68 = (v64 >> 1) + 1073774592 + (v67 >> 1) + ((v66 * v66) >> 15) * v66 - 40960 * (((v67 >> 16) * (v67 >> 16)) >> 15) + 57344 * (((((v67 >> 16) * (v67 >> 16)) >> 15) * v66) >> 15);
  v69 = HIWORD(v68);
  v70 = ((46340 * (v68 >> 16) + 0x8000) >> 15) & 0xFFFE;
  if (v62 != 2 * v65)
  {
    v70 = v69;
  }

  v71 = v70 >> v65;
  *(a1 + 44) = v71;
  if (v71)
  {
    v72 = 12288 * (v39 - v57) / v71;
    goto LABEL_52;
  }

LABEL_51:
  v72 = 0x7FFFFFFFLL;
LABEL_52:
  v73 = (v72 + ((53248 * *(a1 + 36)) >> 10)) >> 6;
  if (v73 <= -2048)
  {
    v73 = -2048;
  }

  if (v73 >= 2048)
  {
    result = 2048;
  }

  else
  {
    result = v73;
  }

  *(a1 + 36) = result;
  return result;
}

uint64_t webrtc::WebRtcAgc_ComputeDigitalGains(uint64_t a1, __int16 **a2, uint64_t a3, int a4, int a5, _DWORD *a6)
{
  v129 = *MEMORY[0x277D85DE8];
  result = 0xFFFFFFFFLL;
  if (a4 <= 31999)
  {
    if (a4 == 8000)
    {
      v11 = 1;
      v12 = 8;
LABEL_9:
      v13 = webrtc::WebRtcAgc_ProcessVad(a1 + 144, *a2, 10 * v12);
      if (*(a1 + 234) >= 11)
      {
        v13 = (3 * v13 - *(a1 + 236)) >> 2;
      }

      if (v13 <= 1024)
      {
        if ((v13 & 0x8000) != 0)
        {
          LOWORD(v14) = 0;
          if (*(a1 + 142) == 3)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v14 = (65 * -v13) >> 10;
          if (*(a1 + 142) == 3)
          {
            goto LABEL_24;
          }
        }
      }

      else
      {
        LOWORD(v14) = -65;
        if (*(a1 + 142) == 3)
        {
          goto LABEL_24;
        }
      }

      if (*(a1 + 188) >= 4000)
      {
        v15 = *(a1 + 188);
        if (v15 >> 5 <= 0xFC)
        {
          v14 = ((v15 - 4000) * v14) >> 12;
        }
      }

      else
      {
        LOWORD(v14) = 0;
      }

      if (a5)
      {
        LOWORD(v14) = 0;
      }

LABEL_24:
      v16 = *a2;
      v17 = **a2;
      v18 = vmull_high_s16(v17, v17);
      v19 = vmull_s16(*v17.i8, *v17.i8);
      if ((v11 & 1) == 0)
      {
        v20 = *(v16 + 1);
        v18 = vmaxq_s32(vmull_high_s16(v20, v20), v18);
        v19 = vmaxq_s32(vmull_s16(*v20.i8, *v20.i8), v19);
      }

      v128[0] = vmaxvq_s32(vmaxq_s32(v19, v18));
      v21 = &v16[v12];
      v22 = *v21;
      v23 = vmull_high_s16(v22, v22);
      v24 = vmull_s16(*v22.i8, *v22.i8);
      if ((v11 & 1) == 0)
      {
        v25 = v21[1];
        v23 = vmaxq_s32(vmull_high_s16(v25, v25), v23);
        v24 = vmaxq_s32(vmull_s16(*v25.i8, *v25.i8), v24);
      }

      v128[1] = vmaxvq_s32(vmaxq_s32(v24, v23));
      v26 = &v16[2 * v12];
      v27 = *v26;
      v28 = vmull_high_s16(v27, v27);
      v29 = vmull_s16(*v27.i8, *v27.i8);
      if ((v11 & 1) == 0)
      {
        v30 = v26[1];
        v28 = vmaxq_s32(vmull_high_s16(v30, v30), v28);
        v29 = vmaxq_s32(vmull_s16(*v30.i8, *v30.i8), v29);
      }

      v128[2] = vmaxvq_s32(vmaxq_s32(v29, v28));
      v31 = &v16[3 * v12];
      v32 = *v31;
      v33 = vmull_high_s16(v32, v32);
      v34 = vmull_s16(*v32.i8, *v32.i8);
      if ((v11 & 1) == 0)
      {
        v35 = v31[1];
        v33 = vmaxq_s32(vmull_high_s16(v35, v35), v33);
        v34 = vmaxq_s32(vmull_s16(*v35.i8, *v35.i8), v34);
      }

      v128[3] = vmaxvq_s32(vmaxq_s32(v34, v33));
      v36 = &v16[4 * v12];
      v37 = *v36;
      v38 = vmull_high_s16(v37, v37);
      v39 = vmull_s16(*v37.i8, *v37.i8);
      if ((v11 & 1) == 0)
      {
        v40 = v36[1];
        v38 = vmaxq_s32(vmull_high_s16(v40, v40), v38);
        v39 = vmaxq_s32(vmull_s16(*v40.i8, *v40.i8), v39);
      }

      v128[4] = vmaxvq_s32(vmaxq_s32(v39, v38));
      v41 = *&v16[5 * v12];
      v42 = vmull_high_s16(v41, v41);
      v43 = vmull_s16(*v41.i8, *v41.i8);
      if ((v11 & 1) == 0)
      {
        v44 = *&v16[5 * v12 + 8];
        v42 = vmaxq_s32(vmull_high_s16(v44, v44), v42);
        v43 = vmaxq_s32(vmull_s16(*v44.i8, *v44.i8), v43);
      }

      v128[5] = vmaxvq_s32(vmaxq_s32(v43, v42));
      v45 = &v16[6 * v12];
      v46 = *v45;
      v47 = vmull_high_s16(v46, v46);
      v48 = vmull_s16(*v46.i8, *v46.i8);
      if ((v11 & 1) == 0)
      {
        v49 = v45[1];
        v47 = vmaxq_s32(vmull_high_s16(v49, v49), v47);
        v48 = vmaxq_s32(vmull_s16(*v49.i8, *v49.i8), v48);
      }

      v128[6] = vmaxvq_s32(vmaxq_s32(v48, v47));
      v50 = &v16[7 * v12];
      v51 = *v50;
      v52 = vmull_high_s16(v51, v51);
      v53 = vmull_s16(*v51.i8, *v51.i8);
      if ((v11 & 1) == 0)
      {
        v54 = v50[1];
        v52 = vmaxq_s32(vmull_high_s16(v54, v54), v52);
        v53 = vmaxq_s32(vmull_s16(*v54.i8, *v54.i8), v53);
      }

      v128[7] = vmaxvq_s32(vmaxq_s32(v53, v52));
      v55 = &v16[8 * v12];
      v56 = *v55;
      v57 = vmull_high_s16(v56, v56);
      v58 = vmull_s16(*v56.i8, *v56.i8);
      if ((v11 & 1) == 0)
      {
        v59 = v55[1];
        v57 = vmaxq_s32(vmull_high_s16(v59, v59), v57);
        v58 = vmaxq_s32(vmull_s16(*v59.i8, *v59.i8), v58);
      }

      v128[8] = vmaxvq_s32(vmaxq_s32(v58, v57));
      v60 = &v16[9 * v12];
      v61 = *v60;
      v62 = vmull_high_s16(v61, v61);
      v63 = vmull_s16(*v61.i8, *v61.i8);
      if ((v11 & 1) == 0)
      {
        v64 = v60[1];
        v62 = vmaxq_s32(vmull_high_s16(v64, v64), v62);
        v63 = vmaxq_s32(vmull_s16(*v64.i8, *v64.i8), v63);
      }

      v65 = 0;
      *a6 = *(a1 + 8);
      v66 = a6 + 1;
      v67 = (a1 + 12);
      v128[9] = vmaxvq_s32(vmaxq_s32(v63, v62));
      do
      {
        v68 = *a1;
        v69 = v128[v65];
        v70 = *(a1 + 4) - 1000 * (*(a1 + 4) >> 16) + ((-1000 * *(a1 + 4)) >> 16);
        if (v69 > v70)
        {
          v70 = v128[v65];
        }

        if (v69 > v68)
        {
          v71 = v68 + 500 * ((v69 - v68) >> 16) + ((500 * (v69 - v68)) >> 16);
        }

        else
        {
          v71 = *a1 + (*a1 >> 16) * v14 + ((*a1 * v14) >> 16);
        }

        *a1 = v71;
        *(a1 + 4) = v70;
        if (v70 > v71)
        {
          v71 = v70;
        }

        v72 = __clz(v71);
        if (!v71)
        {
          v72 = 31;
        }

        v73 = v71 << v72;
        v66[v65++] = v67[v72] + ((((v73 >> 19) & 0xFFF) * (v67[v72 - 1] - v67[v72])) >> 12);
      }

      while (v65 != 10);
      v74 = *(a1 + 4);
      v75 = __clz(v74);
      if (!v74)
      {
        v75 = 31;
      }

      v76 = (((v73 >> 19 << 13) & 0x1FF0000) - (v72 << 25) - (*(a1 + 196) << 16) + (v75 << 25) - ((v74 << v75 >> 6) & 0x1FF0000) + 65536000) >> 16;
      if (v76 < 0)
      {
        *(a1 + 140) = 0;
      }

      else
      {
        v77 = v76 - *(a1 + 140) + 8 * *(a1 + 140);
        *(a1 + 140) = v77 >> 3;
        v78 = (v77 >> 3);
        if (v78 >= 1)
        {
          if (v78 >= 0x9C4)
          {
            v79 = 178;
          }

          else
          {
            v79 = ((2500 - v78) >> 5) + 178;
          }

          v80 = a6[2];
          v81 = a6[1] - *v67;
          v82 = (v81 >> 8) * v79;
          v83 = v81 <= 0x800000;
          v84 = (v81 * v79) >> 8;
          if (!v83)
          {
            v84 = v82;
          }

          a6[1] = v84 + *v67;
          v85 = v80 - *v67;
          if (v85 <= 0x800000)
          {
            v86 = (v85 * v79) >> 8;
          }

          else
          {
            v86 = (v85 >> 8) * v79;
          }

          a6[2] = v86 + *v67;
          v87 = a6[4];
          v88 = a6[3] - *v67;
          v89 = (v88 >> 8) * v79;
          v83 = v88 <= 0x800000;
          v90 = (v88 * v79) >> 8;
          if (!v83)
          {
            v90 = v89;
          }

          a6[3] = v90 + *v67;
          v91 = v87 - *v67;
          if (v91 <= 0x800000)
          {
            v92 = (v91 * v79) >> 8;
          }

          else
          {
            v92 = (v91 >> 8) * v79;
          }

          a6[4] = v92 + *v67;
          v93 = a6[6];
          v94 = a6[5] - *v67;
          v95 = (v94 >> 8) * v79;
          v83 = v94 <= 0x800000;
          v96 = (v94 * v79) >> 8;
          if (!v83)
          {
            v96 = v95;
          }

          a6[5] = v96 + *v67;
          v97 = v93 - *v67;
          if (v97 <= 0x800000)
          {
            v98 = (v97 * v79) >> 8;
          }

          else
          {
            v98 = (v97 >> 8) * v79;
          }

          a6[6] = v98 + *v67;
          v99 = a6[8];
          v100 = a6[7] - *v67;
          v101 = (v100 >> 8) * v79;
          v83 = v100 <= 0x800000;
          v102 = (v100 * v79) >> 8;
          if (!v83)
          {
            v102 = v101;
          }

          a6[7] = v102 + *v67;
          v103 = v99 - *v67;
          if (v103 <= 0x800000)
          {
            v104 = (v103 * v79) >> 8;
          }

          else
          {
            v104 = (v103 >> 8) * v79;
          }

          a6[8] = v104 + *v67;
          v105 = a6[10];
          v106 = a6[9] - *v67;
          v107 = (v106 >> 8) * v79;
          v83 = v106 <= 0x800000;
          v108 = (v106 * v79) >> 8;
          if (!v83)
          {
            v108 = v107;
          }

          a6[9] = v108 + *v67;
          v109 = *v67;
          v110 = ((v105 - v109) >> 8) * v79;
          v111 = ((v105 - v109) * v79) >> 8;
          if (v105 - v109 > 0x800000)
          {
            v111 = v110;
          }

          a6[10] = v111 + v109;
        }
      }

      for (i = 0; i != 10; ++i)
      {
        v113 = v66[i];
        v114 = (17 - __clz(v113));
        if (v113 <= 47452159)
        {
          v114 = 10;
        }

        v116 = (v128[i] >> 12) + 1;
        v117 = 0x7FFFu >> (2 * v114 - 22);
        if (v114 < 0xC)
        {
          v117 = 0x7FFF << (22 - 2 * v114);
        }

        v115 = ((v113 >> v114) + 1) * ((v113 >> v114) + 1);
        if (((v115 >> 13) * v116 + (((v115 & 0x1FFF) * v116) >> 13)) > v117)
        {
          do
          {
            if (v113 >= 0x800000)
            {
              v113 = 253 * (v113 >> 8);
            }

            else
            {
              v113 = 253 * v113 / 256;
            }

            v118 = ((v113 >> v114) + 1) * ((v113 >> v114) + 1);
          }

          while (((v118 >> 13) * v116 + (((v118 & 0x1FFF) * v116) >> 13)) > v117);
          v66[i] = v113;
        }
      }

      v119 = a6[2];
      if (a6[1] > v119)
      {
        *v66 = v119;
        v120 = a6[3];
        if (v119 <= v120)
        {
LABEL_102:
          v121 = a6[4];
          if (v120 <= v121)
          {
            goto LABEL_103;
          }

          goto LABEL_114;
        }
      }

      else
      {
        v120 = a6[3];
        if (v119 <= v120)
        {
          goto LABEL_102;
        }
      }

      a6[2] = v120;
      v121 = a6[4];
      if (v120 <= v121)
      {
LABEL_103:
        v122 = a6[5];
        if (v121 <= v122)
        {
          goto LABEL_104;
        }

        goto LABEL_115;
      }

LABEL_114:
      a6[3] = v121;
      v122 = a6[5];
      if (v121 <= v122)
      {
LABEL_104:
        v123 = a6[6];
        if (v122 <= v123)
        {
          goto LABEL_105;
        }

        goto LABEL_116;
      }

LABEL_115:
      a6[4] = v122;
      v123 = a6[6];
      if (v122 <= v123)
      {
LABEL_105:
        v124 = a6[7];
        if (v123 <= v124)
        {
          goto LABEL_106;
        }

        goto LABEL_117;
      }

LABEL_116:
      a6[5] = v123;
      v124 = a6[7];
      if (v123 <= v124)
      {
LABEL_106:
        v125 = a6[8];
        if (v124 <= v125)
        {
          goto LABEL_107;
        }

        goto LABEL_118;
      }

LABEL_117:
      a6[6] = v124;
      v125 = a6[8];
      if (v124 <= v125)
      {
LABEL_107:
        v126 = a6[9];
        if (v125 <= v126)
        {
          goto LABEL_108;
        }

        goto LABEL_119;
      }

LABEL_118:
      a6[7] = v125;
      v126 = a6[9];
      if (v125 <= v126)
      {
LABEL_108:
        v127 = a6[10];
        if (v126 <= v127)
        {
LABEL_110:
          result = 0;
          *(a1 + 8) = v127;
          return result;
        }

LABEL_109:
        a6[9] = v127;
        goto LABEL_110;
      }

LABEL_119:
      a6[8] = v126;
      v127 = a6[10];
      if (v126 <= v127)
      {
        goto LABEL_110;
      }

      goto LABEL_109;
    }

    if (a4 != 16000)
    {
      return result;
    }

LABEL_7:
    v11 = 0;
    v12 = 16;
    goto LABEL_9;
  }

  if (a4 == 48000 || a4 == 32000)
  {
    goto LABEL_7;
  }

  return result;
}

BOOL webrtc::rtcp::Dlrr::Parse(webrtc::rtcp::Dlrr *this, const unsigned __int8 *a2, int a3)
{
  v3 = (43691 * a3) >> 17;
  v4 = a3 % 3u;
  if (a3 % 3u)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v5, v6, v7, v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtcp_packet/dlrr.cc");
    }
  }

  else
  {
    v12 = *this;
    v13 = *(this + 1);
    v14 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *this) >> 2);
    v15 = v3 >= v14;
    v16 = v3 - v14;
    if (v16 != 0 && v15)
    {
      v18 = a2;
      std::vector<webrtc::rtcp::ReceiveTimeInfo>::__append(this, v16);
      a2 = v18;
      v12 = *this;
      v13 = *(this + 1);
    }

    else if (!v15)
    {
      v13 = &v12[3 * v3];
      *(this + 1) = v13;
    }

    if (v12 != v13)
    {
      v19 = (a2 + 4);
      do
      {
        *v12 = bswap32(*v19);
        v12[1] = bswap32(v19[1]);
        v12[2] = bswap32(v19[2]);
        v19 += 3;
        v12 += 3;
      }

      while (v12 != v13);
    }
  }

  return v4 == 0;
}

void std::vector<webrtc::rtcp::ReceiveTimeInfo>::__append(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 2) < a2)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 2);
    v6 = v5 + a2;
    if (v5 + a2 <= 0x1555555555555555)
    {
      v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 2);
      if (2 * v7 > v6)
      {
        v6 = 2 * v7;
      }

      if (v7 >= 0xAAAAAAAAAAAAAAALL)
      {
        v8 = 0x1555555555555555;
      }

      else
      {
        v8 = v6;
      }

      if (v8)
      {
        if (v8 <= 0x1555555555555555)
        {
          operator new();
        }

        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      v10 = 12 * v5;
      v11 = 12 * v5 + 12 * a2;
      v12 = 12 * v5;
      do
      {
        if (!v12)
        {
          goto LABEL_25;
        }

        *v12 = 0;
        *(v12 + 8) = 0;
        v12 += 12;
      }

      while (v12 != v11);
      v13 = *a1;
      v14 = *(a1 + 8) - *a1;
      v15 = v10 - v14;
      memcpy((v10 - v14), *a1, v14);
      *a1 = v15;
      *(a1 + 8) = v11;
      *(a1 + 16) = 0;
      if (v13)
      {

        operator delete(v13);
      }

      return;
    }

LABEL_26:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (!a2)
  {
    goto LABEL_16;
  }

  v9 = v3 + 12 * a2;
  do
  {
    if (!v3)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    *v3 = 0;
    *(v3 + 8) = 0;
    v3 += 12;
  }

  while (v3 != v9);
  v3 = v9;
LABEL_16:
  *(a1 + 8) = v3;
}

uint64_t webrtc::DominantNearendDetector::DominantNearendDetector(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = &unk_288292AA8;
  *(result + 8) = *a2;
  *(result + 16) = *(a2 + 8);
  *(result + 20) = *(a2 + 12);
  *(result + 28) = *(a2 + 20);
  *(result + 32) = a3;
  *(result + 40) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 48) = 0;
  if (a3)
  {
    if (!(a3 >> 62))
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 88) = 0;
  return result;
}

uint64_t webrtc::DominantNearendDetector::Update(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  *(result + 40) = 0;
  v8 = *(result + 32);
  if (v8)
  {
    v9 = 0;
    v10 = (a2 + 32);
    v11 = (a4 + 32);
    for (i = (a6 + 32); ; i += 65)
    {
      v13 = ((((((((((((((*(v10 - 7) + 0.0) + *(v10 - 6)) + *(v10 - 5)) + *(v10 - 4)) + *(v10 - 3)) + *(v10 - 2)) + *(v10 - 1)) + *v10) + v10[1]) + v10[2]) + v10[3]) + v10[4]) + v10[5]) + v10[6]) + v10[7];
      v14 = ((((((((((((((*(v11 - 7) + 0.0) + *(v11 - 6)) + *(v11 - 5)) + *(v11 - 4)) + *(v11 - 3)) + *(v11 - 2)) + *(v11 - 1)) + *v11) + v11[1]) + v11[2]) + v11[3]) + v11[4]) + v11[5]) + v11[6]) + v11[7];
      v15 = ((((((((((((((*(i - 7) + 0.0) + *(i - 6)) + *(i - 5)) + *(i - 4)) + *(i - 3)) + *(i - 2)) + *(i - 1)) + *i) + i[1]) + i[2]) + i[3]) + i[4]) + i[5]) + i[6]) + i[7];
      if (a8)
      {
        if (*(result + 28) != 1)
        {
          break;
        }
      }

      if (v14 >= (v13 * *(result + 8)) || v13 <= (v15 * *(result + 16)))
      {
        break;
      }

      v16 = *(result + 48);
      if (v9 >= (*(result + 56) - v16) >> 2)
      {
        goto LABEL_30;
      }

      v17 = *(v16 + 4 * v9) + 1;
      *(v16 + 4 * v9) = v17;
      if (v17 >= *(result + 24))
      {
        v18 = *(result + 72);
        if (v9 >= (*(result + 80) - v18) >> 2)
        {
          goto LABEL_30;
        }

        *(v18 + 4 * v9) = *(result + 20);
        v19 = *(result + 24);
LABEL_15:
        *(v16 + 4 * v9) = v19;
      }

      if (v14 <= (v13 * *(result + 12)))
      {
        v21 = *(result + 72);
        v22 = *(result + 80);
      }

      else
      {
        v21 = *(result + 72);
        v22 = *(result + 80);
        if (v14 > (v15 * *(result + 16)))
        {
          if (v9 >= (v22 - v21) >> 2)
          {
            goto LABEL_30;
          }

          *(v21 + 4 * v9) = 0;
        }
      }

      if (v9 >= (v22 - v21) >> 2)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v23 = *(v21 + 4 * v9);
      v24 = __OFSUB__(v23, 1);
      v25 = v23 - 1;
      if ((v25 < 0) ^ v24 | (v25 == 0))
      {
        v26 = 0;
      }

      else
      {
        v26 = 1;
      }

      if ((v25 < 0) ^ v24 | (v25 == 0))
      {
        v25 = 0;
      }

      *(v21 + 4 * v9++) = v25;
      *(result + 40) |= v26;
      v10 += 65;
      v11 += 65;
      if (v8 == v9)
      {
        return result;
      }
    }

    v16 = *(result + 48);
    if (v9 >= (*(result + 56) - v16) >> 2)
    {
      goto LABEL_30;
    }

    v20 = *(v16 + 4 * v9);
    if (v20 <= 1)
    {
      v20 = 1;
    }

    v19 = v20 - 1;
    goto LABEL_15;
  }

  return result;
}

void webrtc::DominantNearendDetector::~DominantNearendDetector(webrtc::DominantNearendDetector *this)
{
  *this = &unk_288292AA8;
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    *(this + 7) = v3;
    operator delete(v3);
  }
}

{
  *this = &unk_288292AA8;
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    *(this + 7) = v3;
    operator delete(v3);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t WebRtcSpl_DotProductWithScale(webrtc::webrtc_checks_impl *a1, uint64_t a2, unint64_t a3, char a4)
{
  v4 = a3 - 4;
  if (a3 >= 4)
  {
    if (v4 < 0xC)
    {
      v5 = 0;
      v6 = 0;
      goto LABEL_17;
    }

    v9 = (v4 >> 2) + 1;
    if (v4 >= 0x3C)
    {
      v11 = 0uLL;
      v10 = v9 & 0x7FFFFFFFFFFFFFF0;
      v12 = vnegq_s32(vdupq_n_s32(a4));
      v13 = (a1 + 64);
      v14 = 0uLL;
      v15 = (a2 + 64);
      v16 = v9 & 0x7FFFFFFFFFFFFFF0;
      v17 = 0uLL;
      v18 = 0uLL;
      v19 = 0uLL;
      v20 = 0uLL;
      v21 = 0uLL;
      v22 = 0uLL;
      do
      {
        v23 = v13 - 32;
        v120 = vld4q_s16(v23);
        v121 = vld4q_s16(v13);
        v24 = v15 - 32;
        v122 = vld4q_s16(v24);
        v123 = vld4q_s16(v15);
        v25 = vshlq_s32(vmull_s16(*v122.val[0].i8, *v120.val[0].i8), v12);
        v26 = vshlq_s32(vmull_high_s16(v122.val[0], v120.val[0]), v12);
        v27 = vshlq_s32(vmull_s16(*v123.val[0].i8, *v121.val[0].i8), v12);
        v28 = vshlq_s32(vmull_high_s16(v123.val[0], v121.val[0]), v12);
        v29 = vaddw_s32(v11, *v25.i8);
        v30 = vaddw_high_s32(v14, v25);
        v31 = vaddw_s32(v17, *v26.i8);
        v32 = vaddw_high_s32(v18, v26);
        v33 = vaddw_s32(v19, *v27.i8);
        v34 = vaddw_high_s32(v20, v27);
        v35 = vaddw_s32(v21, *v28.i8);
        v36 = vaddw_high_s32(v22, v28);
        v37 = vshlq_s32(vmull_high_s16(v122.val[1], v120.val[1]), v12);
        v38 = vshlq_s32(vmull_s16(*v122.val[1].i8, *v120.val[1].i8), v12);
        v39 = vshlq_s32(vmull_high_s16(v123.val[1], v121.val[1]), v12);
        v40 = vshlq_s32(vmull_s16(*v123.val[1].i8, *v121.val[1].i8), v12);
        v41 = vaddw_high_s32(v32, v37);
        v42 = vaddw_s32(v31, *v37.i8);
        v43 = vaddw_high_s32(v30, v38);
        v44 = vaddw_s32(v29, *v38.i8);
        v45 = vaddw_high_s32(v36, v39);
        v46 = vaddw_s32(v35, *v39.i8);
        v47 = vaddw_high_s32(v34, v40);
        v48 = vaddw_s32(v33, *v40.i8);
        v49 = vshlq_s32(vmull_s16(*v122.val[2].i8, *v120.val[2].i8), v12);
        v50 = vshlq_s32(vmull_high_s16(v122.val[2], v120.val[2]), v12);
        v51 = vshlq_s32(vmull_s16(*v123.val[2].i8, *v121.val[2].i8), v12);
        v52 = vshlq_s32(vmull_high_s16(v123.val[2], v121.val[2]), v12);
        v120.val[0] = vshlq_s32(vmull_high_s16(v122.val[3], v120.val[3]), v12);
        v120.val[3] = vshlq_s32(vmull_s16(*v122.val[3].i8, *v120.val[3].i8), v12);
        v120.val[2] = vshlq_s32(vmull_high_s16(v123.val[3], v121.val[3]), v12);
        v120.val[1] = vshlq_s32(vmull_s16(*v123.val[3].i8, *v121.val[3].i8), v12);
        v18 = vaddw_high_s32(vaddw_high_s32(v41, v50), v120.val[0]);
        v17 = vaddw_s32(vaddw_s32(v42, *v50.i8), *v120.val[0].i8);
        v14 = vaddw_high_s32(vaddw_high_s32(v43, v49), v120.val[3]);
        v11 = vaddw_s32(vaddw_s32(v44, *v49.i8), *v120.val[3].i8);
        v22 = vaddw_high_s32(vaddw_high_s32(v45, v52), v120.val[2]);
        v21 = vaddw_s32(vaddw_s32(v46, *v52.i8), *v120.val[2].i8);
        v13 += 64;
        v20 = vaddw_high_s32(vaddw_high_s32(v47, v51), v120.val[1]);
        v15 += 64;
        v19 = vaddw_s32(vaddw_s32(v48, *v51.i8), *v120.val[1].i8);
        v16 -= 16;
      }

      while (v16);
      v6 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v19, v11), vaddq_s64(v21, v17)), vaddq_s64(vaddq_s64(v20, v14), vaddq_s64(v22, v18))));
      if (v9 == v10)
      {
        goto LABEL_19;
      }

      if ((v9 & 0xC) == 0)
      {
        v5 = 4 * v10;
LABEL_17:
        v66 = v5 + 3;
        v67 = 2 * v5;
        v68 = (a2 + v67);
        v69 = (a1 + v67);
        v70 = vnegq_s32(vdupq_n_s32(a4));
        do
        {
          v71 = *v69++;
          v72 = v71;
          v73 = *v68++;
          v6 += vaddlvq_s32(vshlq_s32(vmull_s16(v73, v72), v70));
          v66 += 4;
        }

        while (v66 < a3);
        goto LABEL_19;
      }
    }

    else
    {
      v6 = 0;
      v10 = 0;
    }

    v5 = 4 * (v9 & 0x7FFFFFFFFFFFFFFCLL);
    v53 = v6;
    v54 = 0uLL;
    v55 = (a1 + 8 * v10);
    v56 = (a2 + 8 * v10);
    v57 = v10 - (v9 & 0x7FFFFFFFFFFFFFFCLL);
    v58 = vnegq_s32(vdupq_n_s32(a4));
    do
    {
      v118 = vld4_s16(v55);
      v55 += 16;
      v119 = vld4_s16(v56);
      v56 += 16;
      v59 = vshlq_s32(vmull_s16(v119.val[0], v118.val[0]), v58);
      v60 = vaddw_s32(v53, *v59.i8);
      v61 = vaddw_high_s32(v54, v59);
      v62 = vshlq_s32(vmull_s16(v119.val[1], v118.val[1]), v58);
      v63 = vaddw_high_s32(v61, v62);
      v64 = vaddw_s32(v60, *v62.i8);
      v65 = vshlq_s32(vmull_s16(v119.val[2], v118.val[2]), v58);
      *v118.val[0].i8 = vshlq_s32(vmull_s16(v119.val[3], v118.val[3]), v58);
      v54 = vaddw_high_s32(vaddw_high_s32(v63, v65), *v118.val[0].i8);
      v53 = vaddw_s32(vaddw_s32(v64, *v65.i8), v118.val[0]);
      v57 += 4;
    }

    while (v57);
    v6 = vaddvq_s64(vaddq_s64(v53, v54));
    if (v9 != (v9 & 0x7FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_17;
    }

LABEL_19:
    v7 = a3 & 0xFFFFFFFFFFFFFFFCLL;
    v8 = a3 - (a3 & 0xFFFFFFFFFFFFFFFCLL);
    if (a3 <= (a3 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_33;
    }

    goto LABEL_20;
  }

  v6 = 0;
  v7 = 0;
  v8 = a3;
  if (!a3)
  {
    goto LABEL_33;
  }

LABEL_20:
  if (v8 < 4)
  {
    v74 = v7;
    goto LABEL_31;
  }

  v75 = vdupq_n_s32(a4);
  if (v8 >= 0x10)
  {
    v76 = v8 & 0xFFFFFFFFFFFFFFF0;
    v77 = 0uLL;
    v78 = v6;
    v79 = vnegq_s32(v75);
    v80 = 2 * v7 + 16;
    v81 = (a1 + v80);
    v82 = (a2 + v80);
    v83 = v8 & 0xFFFFFFFFFFFFFFF0;
    v84 = 0uLL;
    v85 = 0uLL;
    v86 = 0uLL;
    v87 = 0uLL;
    v88 = 0uLL;
    v89 = 0uLL;
    do
    {
      v90 = v81[-1];
      v91 = v82[-1];
      v92 = vmull_s16(*v91.i8, *v90.i8);
      v93 = vshlq_s32(vmull_high_s16(v91, v90), v79);
      v94 = vshlq_s32(v92, v79);
      v95 = vshlq_s32(vmull_high_s16(*v82, *v81), v79);
      v96 = vshlq_s32(vmull_s16(*v82->i8, *v81->i8), v79);
      v85 = vaddw_high_s32(v85, v93);
      v84 = vaddw_s32(v84, *v93.i8);
      v77 = vaddw_high_s32(v77, v94);
      v78 = vaddw_s32(v78, *v94.i8);
      v89 = vaddw_high_s32(v89, v95);
      v88 = vaddw_s32(v88, *v95.i8);
      v87 = vaddw_high_s32(v87, v96);
      v86 = vaddw_s32(v86, *v96.i8);
      v81 += 2;
      v82 += 2;
      v83 -= 16;
    }

    while (v83);
    v6 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v86, v78), vaddq_s64(v88, v84)), vaddq_s64(vaddq_s64(v87, v77), vaddq_s64(v89, v85))));
    if (v8 == v76)
    {
      goto LABEL_33;
    }

    if ((v8 & 0xC) == 0)
    {
      v74 = v7 + v76;
LABEL_31:
      v109 = a3 - v74;
      v110 = 2 * v74;
      v111 = (a2 + 2 * v74);
      v112 = (a1 + v110);
      do
      {
        v114 = *v112++;
        v113 = v114;
        v115 = *v111++;
        v6 += (v115 * v113) >> a4;
        --v109;
      }

      while (v109);
      goto LABEL_33;
    }
  }

  else
  {
    v76 = 0;
  }

  v74 = v7 + v8 - (a3 & 3);
  v97 = 0uLL;
  v98 = v6;
  v99 = v76 + v7;
  v100 = v99 + (a3 & 3) - a3;
  v101 = 2 * v99;
  v102 = (a1 + 2 * v99);
  v103 = (a2 + v101);
  v104 = vnegq_s32(v75);
  do
  {
    v105 = *v102++;
    v106 = v105;
    v107 = *v103++;
    v108 = vshlq_s32(vmull_s16(v107, v106), v104);
    v97 = vaddw_high_s32(v97, v108);
    v98 = vaddw_s32(v98, *v108.i8);
    v100 += 4;
  }

  while (v100);
  v6 = vaddvq_s64(vaddq_s64(v98, v97));
  if ((a3 & 3) != 0)
  {
    goto LABEL_31;
  }

LABEL_33:
  v116 = (v6 < 0xFFFFFFFF80000000) | (2 * (v6 > 0x7FFFFFFF));
  if (v116 > 1)
  {
    if (v116 != 2)
    {
      webrtc::webrtc_checks_impl::UnreachableCodeReached(a1);
    }

    return 0x7FFFFFFFLL;
  }

  else
  {
    if (v116)
    {
      return 0x80000000;
    }

    return v6;
  }
}

uint64_t WebRtcSpl_DownsampleFastC(uint64_t a1, unint64_t a2, _WORD *a3, uint64_t a4, int16x8_t *a5, unint64_t a6, int a7, unint64_t a8)
{
  v8 = 0xFFFFFFFFLL;
  if (!a4)
  {
    return v8;
  }

  if (!a6)
  {
    return v8;
  }

  v9 = a7;
  v10 = a8 + (a4 - 1) * a7 + 1;
  if (v10 > a2)
  {
    return v8;
  }

  if (v10 > a8)
  {
    v11 = a1 + 2 * a8;
    v12 = (v11 - 14);
    v13 = 2 * a7;
    v14 = v11 - 6;
    while (1)
    {
      if (a6 >= 4)
      {
        if (a6 < 0x10)
        {
          v18 = 0;
          v17 = 2048;
LABEL_19:
          v31 = v17;
          v32 = (v14 - 2 * v18);
          v33 = (a5 + 2 * v18);
          v34 = v18 - (a6 & 0xFFFFFFFFFFFFFFFCLL);
          do
          {
            v35 = *v33++;
            v36 = v35;
            v37 = *v32--;
            v31 = vmlal_s16(v31, vrev64_s16(v37), v36);
            v34 += 4;
          }

          while (v34);
          v17 = vaddvq_s32(v31);
          v16 = a6 & 0xFFFFFFFFFFFFFFFCLL;
          if ((a6 & 0xFFFFFFFFFFFFFFFCLL) == a6)
          {
            goto LABEL_6;
          }

          goto LABEL_22;
        }

        v19 = 0uLL;
        v20 = a6 & 0xFFFFFFFFFFFFFFF0;
        v21 = a5 + 1;
        v22 = v12;
        v23 = xmmword_273B92320;
        v24 = 0uLL;
        v25 = 0uLL;
        do
        {
          v26 = v21[-1];
          v27 = vrev64q_s16(*v22);
          v28 = vextq_s8(v27, v27, 8uLL);
          v29 = vrev64q_s16(v22[-1]);
          v30 = vextq_s8(v29, v29, 8uLL);
          v19 = vmlal_high_s16(v19, v28, v26);
          v23 = vmlal_s16(v23, *v28.i8, *v26.i8);
          v25 = vmlal_high_s16(v25, v30, *v21);
          v24 = vmlal_s16(v24, *v30.i8, *v21->i8);
          v22 -= 2;
          v21 += 2;
          v20 -= 16;
        }

        while (v20);
        v17 = vaddvq_s32(vaddq_s32(vaddq_s32(v24, v23), vaddq_s32(v25, v19)));
        if ((a6 & 0xFFFFFFFFFFFFFFF0) == a6)
        {
          goto LABEL_6;
        }

        v18 = a6 & 0xFFFFFFFFFFFFFFF0;
        v16 = a6 & 0xFFFFFFFFFFFFFFF0;
        if ((a6 & 0xC) != 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v16 = 0;
        v17 = 2048;
      }

LABEL_22:
      v38 = a6 - v16;
      v39 = v16;
      v40 = &a5->i16[v39];
      v41 = (v11 - v39 * 2);
      do
      {
        v43 = *v40++;
        v42 = v43;
        v44 = *v41--;
        v17 += v44 * v42;
        --v38;
      }

      while (v38);
LABEL_6:
      v15 = v17 >> 12;
      if (v15 <= -32768)
      {
        v15 = -32768;
      }

      if (v15 >= 0x7FFF)
      {
        LOWORD(v15) = 0x7FFF;
      }

      *a3++ = v15;
      a8 += v9;
      v12 = (v12 + v13);
      v14 += v13;
      v11 += v13;
      if (a8 >= v10)
      {
        return 0;
      }
    }
  }

  return 0;
}

void webrtc::DspHelper::PeakDetection(webrtc::DspHelper *this, __int16 *a2, uint64_t a3, __int16 *a4, __int16 *a5, unint64_t *a6, __int16 *a7)
{
  v9 = a2;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v30 = this - 2;
  v14 = a3 - 1;
  v15 = a3 == 1;
  v28 = a4;
  v29 = 2 * a4;
  if (a3 == 1)
  {
    v16 = (a2 + 1);
  }

  else
  {
    v16 = a2;
  }

  v17 = v16 - 1;
  do
  {
    v9 = (v9 + v15);
    v18 = 0;
    v19 = v9 - 1;
    if (v9 != 1)
    {
      v20 = 0;
      v21 = 0x8000;
      do
      {
        if (*(this + v20) > v21)
        {
          v18 = v20;
          v21 = *(this + v20);
        }

        ++v20;
      }

      while (v17 != v20);
    }

    v22 = &a5[4 * v11];
    *v22 = v18;
    v23 = v18 - 2;
    if (v18 < 2)
    {
      v23 = 0;
    }

    if (v18 + 2 < v19)
    {
      v19 = v18 + 2;
    }

    if (v11 != v14)
    {
      v13 = v23;
      v12 = v19;
    }

    v24 = v9 - 1;
    if (!v18 || v18 == v24)
    {
      v25 = (this + 2 * v18);
      v26 = *v25;
      if (v18 == v24)
      {
        v27 = v25[1];
        if (v26 <= v27)
        {
          *(a6 + v11) = (v27 + v26) >> 1;
          *v22 = ((2 * v18) | 1) * v28;
          if (v11 == v14)
          {
            goto LABEL_5;
          }
        }

        else
        {
          webrtc::DspHelper::ParabolicFit((v25 - 1), a4, v22, (a6 + 2 * v11), a5);
          if (v11 == v14)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
        *(a6 + v11) = v26;
        *v22 = v29 * v18;
        if (v11 == v14)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
      webrtc::DspHelper::ParabolicFit(&v30[2 * v18], a4, v22, (a6 + 2 * v11), a5);
      if (v11 == v14)
      {
        goto LABEL_5;
      }
    }

    bzero(this + 2 * v13, 2 * (v12 - v13) + 2);
LABEL_5:
    ++v11;
    v17 += v15;
  }

  while (v11 <= v14);
}

uint64_t webrtc::DspHelper::ParabolicFit(webrtc::DspHelper *this, __int16 *a2, uint64_t *a3, unint64_t *a4, __int16 *a5)
{
  *&v29[2] = *MEMORY[0x277D85DE8];
  v25 = 0;
  switch(a2)
  {
    case 4:
      *&v26 = 0x8000600040002;
      DWORD2(v26) = 786442;
      WORD6(v26) = 14;
      v5 = &v26 + 14;
      break;
    case 2:
      LODWORD(v26) = 524292;
      WORD2(v26) = 12;
      v5 = &v26 + 6;
      break;
    case 1:
      v5 = &v26 + 2;
      LOWORD(v26) = 8;
      break;
    default:
      v26 = xmmword_273B92340;
      v27 = 851980;
      v28 = 15;
      v5 = v29;
      break;
  }

  *v5 = 16;
  v6 = *this;
  v7 = *(this + 1);
  v8 = *(this + 2);
  v9 = -3 * v6 + 4 * v7 - v8;
  v10 = v6 - 2 * v7 + v8;
  v11 = 120 * v9;
  v12 = (&v25 + a2);
  v13 = webrtc::DspHelper::kParabolaCoefficients[3 * *v12];
  v14 = webrtc::DspHelper::kParabolaCoefficients[3 * *(v12 - 1)];
  v15 = v13 - v14;
  v16 = (v14 + v13) / 2;
  v17 = -v10;
  result = -(v10 * v16);
  if (120 * v9 >= result)
  {
    result = v15;
    if (v11 <= (v16 + result) * v17)
    {
      *a4 = v7;
      v21 = 2 * a2 * *a3;
    }

    else
    {
      if (a2 == 1)
      {
        v22 = 1;
      }

      else
      {
        v23 = v16 + 2 * v15;
        v22 = 1;
        while (1)
        {
          result = (v23 * v17);
          if (v11 < result)
          {
            break;
          }

          ++v22;
          v23 += v15;
          if (a2 == v22)
          {
            v22 = a2;
            break;
          }
        }
      }

      v24 = &webrtc::DspHelper::kParabolaCoefficients[3 * *(&v25 + (v22 + a2))];
      *a4 = (v10 * v24[1] + (v6 << 8) + v9 * v24[2]) / 256;
      v21 = 2 * a2 * *a3 + v22;
    }
  }

  else
  {
    v19 = 1;
    if (a2 != 1)
    {
      while (1)
      {
        v16 -= v15;
        result = (v16 * v17);
        if (v11 > result)
        {
          break;
        }

        if (a2 == ++v19)
        {
          v19 = a2;
          break;
        }
      }
    }

    v20 = &webrtc::DspHelper::kParabolaCoefficients[3 * *(&v25 + (a2 - v19))];
    *a4 = (v10 * v20[1] + (v6 << 8) + v9 * v20[2]) / 256;
    v21 = 2 * a2 * *a3 - v19;
  }

  *a3 = v21;
  return result;
}

void webrtc::DtlsSrtpTransport::SetDtlsTransports(uint64_t **this, webrtc::DtlsTransportInternal *a2, webrtc::DtlsTransportInternal *a3)
{
  if (((*this)[12])(this) && (this[83] != a2 || *(this + 744) == 1))
  {
    webrtc::SrtpTransport::ResetParams(this);
  }

  if (!a2)
  {
    *(&v25.__r_.__value_.__s + 23) = 4;
    if (&v25 <= "null" && v25.__r_.__value_.__r.__words + 4 > "null")
    {
      __break(1u);
      goto LABEL_33;
    }

    strcpy(&v25, "null");
    if (!a3)
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  v12 = (*(*a2 + 16))(a2);
  if ((*(v12 + 23) & 0x80000000) == 0)
  {
    v13 = *v12;
    v25.__r_.__value_.__r.__words[2] = *(v12 + 16);
    *&v25.__r_.__value_.__l.__data_ = v13;
    if (!a3)
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  std::string::__init_copy_ctor_external(&v25, *v12, *(v12 + 8));
  if (a3)
  {
LABEL_14:
    if (this[84] == a3 || !((*this)[12])(this))
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)12,void const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)12,void const*> const&)::t, v14, v6, v7, v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/dtls_srtp_transport.cc");
      }

      goto LABEL_18;
    }

LABEL_33:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/dtls_srtp_transport.cc", 60, "!(IsSrtpActive())", "\t", v8, v9, v10, v11, "Setting RTCP for DTLS/SRTP after the DTLS is active should never happen.");
    webrtc::DtlsSrtpTransport::MaybeSetupDtlsSrtp(v24);
    return;
  }

LABEL_18:
  v15 = this[84];
  if (v15 != a3)
  {
    if (v15)
    {
      webrtc::callback_list_impl::CallbackListReceivers::RemoveReceivers(v15 + 55, this);
    }

    this[84] = a3;
    if (a3)
    {
      webrtc::callback_list_impl::CallbackListReceivers::AddReceiver<webrtc::UntypedFunction::TrivialUntypedFunctionArgs<1ul>>(a3 + 440, this, this, webrtc::webrtc_function_impl::CallHelpers<void ()(webrtc::DtlsTransportInternal *,webrtc::DtlsTransportState)>::CallInlineStorage<webrtc::DtlsSrtpTransport::SetDtlsTransport(webrtc::DtlsTransportInternal *,webrtc::DtlsTransportInternal **)::$_0>, v8, v9, v10, v11);
    }
  }

  webrtc::RtpTransport::SetRtcpPacketTransport(this, a3, v6, v7, v8, v9, v10, v11);
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)12,void const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)12,void const*> const&)::t, v16, v17, v18, v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/dtls_srtp_transport.cc");
  }

  v23 = this[83];
  if (v23 != a2)
  {
    if (v23)
    {
      webrtc::callback_list_impl::CallbackListReceivers::RemoveReceivers(v23 + 55, this);
    }

    this[83] = a2;
    if (a2)
    {
      webrtc::callback_list_impl::CallbackListReceivers::AddReceiver<webrtc::UntypedFunction::TrivialUntypedFunctionArgs<1ul>>(a2 + 440, this, this, webrtc::webrtc_function_impl::CallHelpers<void ()(webrtc::DtlsTransportInternal *,webrtc::DtlsTransportState)>::CallInlineStorage<webrtc::DtlsSrtpTransport::SetDtlsTransport(webrtc::DtlsTransportInternal *,webrtc::DtlsTransportInternal **)::$_0>, v19, v20, v21, v22);
    }
  }

  webrtc::RtpTransport::SetRtpPacketTransport(this, a2, v17, v18, v19, v20, v21, v22);
  webrtc::DtlsSrtpTransport::MaybeSetupDtlsSrtp(this);
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }
}

void webrtc::DtlsSrtpTransport::MaybeSetupDtlsSrtp(webrtc::DtlsSrtpTransport *this)
{
  if (((*(*this + 96))(this) & 1) == 0)
  {
    if ((*(*this + 48))(this))
    {
      v2 = 0;
      v3 = *(this + 83);
      if (!v3)
      {
        return;
      }
    }

    else
    {
      v2 = *(this + 84);
      v3 = *(this + 83);
      if (!v3)
      {
        return;
      }
    }

    if ((*(*v3 + 24))(v3) && (!v2 || (*(*v2 + 24))(v2)))
    {
      webrtc::DtlsSrtpTransport::SetupRtpDtlsSrtp(this);
      if (((*(*this + 48))(this) & 1) == 0 && *(this + 84) && ((*(*this + 96))(this) & 1) == 0)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 0;
        if (&v15 != (this + 680) && (*(this + 704) & 1) != 0)
        {
          std::vector<int>::__assign_with_size[abi:sn200100]<int *,int *>(&v15, *(this + 85), *(this + 86), (*(this + 86) - *(this + 85)) >> 2);
        }

        if (&v12 != (this + 712) && (*(this + 736) & 1) != 0)
        {
          std::vector<int>::__assign_with_size[abi:sn200100]<int *,int *>(&v12, *(this + 89), *(this + 90), (*(this + 90) - *(this + 89)) >> 2);
        }

        v11 = 0;
        if ((!webrtc::DtlsSrtpTransport::ExtractParams(*(this + 84), &v11) || (webrtc::SrtpTransport::SetRtcpParams(this) & 1) == 0) && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log("\r\t", v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/dtls_srtp_transport.cc");
        }

        if (v12)
        {
          v13 = v12;
          operator delete(v12);
        }

        if (v15)
        {
          v16 = v15;
          operator delete(v15);
        }
      }
    }
  }
}

void webrtc::DtlsSrtpTransport::SetRtcpMuxEnabled(webrtc::DtlsSrtpTransport *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  *(this + 249) = a2;
  webrtc::RtpTransport::MaybeSignalReadyToSend(this, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {

    webrtc::DtlsSrtpTransport::MaybeSetupDtlsSrtp(this);
  }
}

void webrtc::DtlsSrtpTransport::UpdateSendEncryptedHeaderExtensionIds(webrtc::DtlsSrtpTransport *this, uint64_t a2)
{
  if (*(this + 704) == 1)
  {
    v4 = *(this + 85);
    v5 = *(this + 86) - v4;
    v6 = *a2;
    if (v5 == *(a2 + 8) - *a2 && !memcmp(*(this + 85), v6, v5))
    {
      return;
    }

    if (v4)
    {
      *(this + 86) = v4;
      operator delete(v4);
    }

    *(this + 704) = 0;
  }

  *(this + 85) = 0;
  *(this + 86) = 0;
  *(this + 87) = 0;
  v7 = *(a2 + 8) - *a2;
  if (v7)
  {
    if ((v7 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  *(this + 704) = 1;
  if (webrtc::DtlsSrtpTransport::DtlsHandshakeCompleted(this))
  {

    webrtc::DtlsSrtpTransport::SetupRtpDtlsSrtp(this);
  }
}

uint64_t webrtc::DtlsSrtpTransport::DtlsHandshakeCompleted(webrtc::DtlsSrtpTransport *this)
{
  if ((*(*this + 48))(this))
  {
    v2 = 0;
    result = *(this + 83);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v2 = *(this + 84);
    result = *(this + 83);
    if (!result)
    {
      return result;
    }
  }

  result = (*(*result + 96))(result);
  if (result)
  {
    if (!v2 || (result = (*(*v2 + 96))(v2), result))
    {
      if ((*(*this + 48))(this))
      {
        v4 = 0;
        result = *(this + 83);
        if (!result)
        {
          return result;
        }
      }

      else
      {
        v4 = *(this + 84);
        result = *(this + 83);
        if (!result)
        {
          return result;
        }
      }

      if ((*(*result + 80))(result) == 2)
      {
        return !v4 || (*(*v4 + 80))(v4) == 2;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void webrtc::DtlsSrtpTransport::SetupRtpDtlsSrtp(webrtc::DtlsSrtpTransport *this)
{
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  if (&v22 != (this + 680) && (*(this + 704) & 1) != 0)
  {
    std::vector<int>::__assign_with_size[abi:sn200100]<int *,int *>(&v22, *(this + 85), *(this + 86), (*(this + 86) - *(this + 85)) >> 2);
  }

  if (&v19 != (this + 712) && (*(this + 736) & 1) != 0)
  {
    std::vector<int>::__assign_with_size[abi:sn200100]<int *,int *>(&v19, *(this + 89), *(this + 90), (*(this + 90) - *(this + 89)) >> 2);
  }

  v18 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  if (!webrtc::DtlsSrtpTransport::ExtractParams(*(this + 83), &v18) || (webrtc::SrtpTransport::SetRtpParams(this, v18, &v15, &v22, v18, &v12, &v19), (v2 & 1) == 0))
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v3, v4, v5, v6, v7, v8, v9, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/dtls_srtp_transport.cc");
    }
  }

  if (v13)
  {
    bzero(v14, v13);
  }

  v10 = v14;
  v14 = 0;
  if (v10)
  {
    MEMORY[0x2743DA520](v10, 0x1000C8077774924);
  }

  if (v16)
  {
    bzero(v17, v16);
  }

  v11 = v17;
  v17 = 0;
  if (v11)
  {
    MEMORY[0x2743DA520](v11, 0x1000C8077774924);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }
}

void webrtc::DtlsSrtpTransport::UpdateRecvEncryptedHeaderExtensionIds(webrtc::DtlsSrtpTransport *this, uint64_t a2)
{
  if (*(this + 736) == 1)
  {
    v4 = *(this + 89);
    v5 = *(this + 90) - v4;
    v6 = *a2;
    if (v5 == *(a2 + 8) - *a2 && !memcmp(*(this + 89), v6, v5))
    {
      return;
    }

    if (v4)
    {
      *(this + 90) = v4;
      operator delete(v4);
    }

    *(this + 736) = 0;
  }

  *(this + 89) = 0;
  *(this + 90) = 0;
  *(this + 91) = 0;
  v7 = *(a2 + 8) - *a2;
  if (v7)
  {
    if ((v7 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  *(this + 736) = 1;
  if (webrtc::DtlsSrtpTransport::DtlsHandshakeCompleted(this))
  {

    webrtc::DtlsSrtpTransport::SetupRtpDtlsSrtp(this);
  }
}