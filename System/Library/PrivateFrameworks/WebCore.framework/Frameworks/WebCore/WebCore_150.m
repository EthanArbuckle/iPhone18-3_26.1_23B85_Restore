void webm::WebmParser::~WebmParser(webm::WebmParser::DocumentParser **this)
{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    webm::WebmParser::DocumentParser::~DocumentParser(v2);
    MEMORY[0x2743DA540]();
  }
}

{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    webm::WebmParser::DocumentParser::~DocumentParser(v2);
    MEMORY[0x2743DA540]();
  }
}

void webm::WebmParser::WebmParser(webm::WebmParser *this)
{
  operator new();
}

{
  operator new();
}

uint64_t *webm::WebmParser::DidSeek(uint64_t *this)
{
  v1 = *this;
  *(v1 + 8) = 0xFFFFFFFFLL;
  *(v1 + 32) = -1;
  *(v1 + 36) = 0;
  *(v1 + 44) = 0;
  *(v1 + 776) = 0;
  *(v1 + 808) = 0;
  *(v1 + 812) = 1;
  *(v1 + 816) = 0;
  *(this + 2) = -1;
  return this;
}

uint64_t webm::WebmParser::Feed(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 8);
  if ((result & 0xFFFFFC00) == 0xFFFFF800)
  {
    return result;
  }

  v7 = *a1;
  v8 = (*a1 + 808);
  v9 = *a1 + 768;
  if (*v8 == 1)
  {
    v10 = *a1 + 768;
  }

  else
  {
    v10 = a2;
  }

  v11 = (v7 + 784);
  v24 = 0;
  v12 = (v7 + 788);
  while (1)
  {
    while (1)
    {
      v14 = *(v7 + 816);
      if (v14 <= 3)
      {
        break;
      }

      if (v14 <= 5)
      {
        if (v14 == 4)
        {
          result = (*(*v10 + 16))(v10, v7 + 784, v8);
          if (result)
          {
            goto LABEL_64;
          }

          if (*v8 == 1)
          {
            v10 = v9;
            if (*(v7 + 792) != -1)
            {
              *(v7 + 776) = v7 + 712;
              v10 = v9;
            }
          }

          v13 = 5;
        }

        else
        {
          result = (*(**(v7 + 776) + 24))(*(v7 + 776), v7 + 784, *(v7 + 792));
          if (result)
          {
            goto LABEL_64;
          }

          v13 = 6;
        }

        goto LABEL_7;
      }

      if (v14 == 6)
      {
        result = (*(**(v7 + 776) + 16))(*(v7 + 776), v10, a3, &v24);
        if (result)
        {
          goto LABEL_64;
        }

        if ((*(**(v7 + 776) + 40))(*(v7 + 776), v7 + 784))
        {
          v17 = 3;
        }

        else
        {
          *v12 = 0;
          v17 = 1;
        }

        *(v7 + 816) = v17;
        *(v7 + 8) = 0xFFFFFFFFLL;
        *(v7 + 32) = -1;
        *(v7 + 44) = 0;
        *(v7 + 36) = 0;
        *(v7 + 776) = 0;
        *(v7 + 808) = 0;
        *(v7 + 800) = (*(*a3 + 32))(a3);
        (*(*a2 + 184))(a2, v7 + 784);
        v10 = a2;
      }

      else if (v14 == 7)
      {
        result = 0;
        goto LABEL_64;
      }
    }

    if (v14 > 1)
    {
      break;
    }

    if (!v14)
    {
      *(v7 + 788) = 0;
      *(v7 + 800) = (*(*a3 + 32))(a3);
      v13 = 1;
      goto LABEL_7;
    }

    if (v14 == 1)
    {
      result = webm::IdParser::Feed(v7, v10, a3, &v24);
      *(v7 + 788) += v24;
      if (result)
      {
        if (result != -3)
        {
          goto LABEL_64;
        }

        if ((*(*a3 + 32))(a3) != *(v7 + 800))
        {
          result = 4294967293;
          goto LABEL_64;
        }

        v13 = 7;
      }

      else
      {
        v13 = 2;
      }

LABEL_7:
      *(v7 + 816) = v13;
    }
  }

  if (v14 == 2)
  {
    LODWORD(result) = webm::VarIntParser::Feed(v7 + 24, v10, a3, &v24);
    if (result == -1030)
    {
      result = 4294966270;
    }

    else
    {
      result = result;
    }

    *v12 += v24;
    if (result)
    {
      goto LABEL_64;
    }

    v18 = *(v7 + 12);
    *(v7 + 784) = v18;
    if (v18 == 408125543)
    {
      v19 = -1;
    }

    else if (*(v7 + 40) == 0xFFFFFFFFFFFFFFFFLL >> (-7 * *(v7 + 36) + 57))
    {
      v19 = -1;
    }

    else
    {
      v19 = *(v7 + 40);
    }

    *(v7 + 792) = v19;
    v13 = 3;
    goto LABEL_7;
  }

  v15 = *v11;
  if (*v11 == 440786851)
  {
    v16 = v7 + 48;
    goto LABEL_47;
  }

  if (v15 == 408125543)
  {
    v16 = v7 + 432;
LABEL_47:
    *(v7 + 776) = v16;
    *(v7 + 812) = 0;
    v13 = 4;
    goto LABEL_7;
  }

  v23[0] = 0;
  v23[1] = 0;
  if (*(v7 + 812) != 1)
  {
    goto LABEL_57;
  }

  if (webm::Ancestory::ById(v15, v23))
  {
    v20 = 48;
    if (*v23[0] == 408125543)
    {
      v20 = 432;
      v21 = v7 + 432;
    }

    else
    {
      v21 = v7 + 48;
    }

    *(v7 + 776) = v21;
    (*(*(v7 + v20) + 32))();
    *(v7 + 784) = *v23[0];
    *v12 = -1;
    *(v7 + 796) = -1;
    *(v7 + 804) = -1;
    *(v7 + 812) = 0;
    *(v7 + 808) = 0;
    v13 = 6;
    goto LABEL_7;
  }

  v15 = *v11;
LABEL_57:
  if (v15 == 236)
  {
    v22 = v7 + 672;
LABEL_61:
    *(v7 + 776) = v22;
    v13 = 4;
    goto LABEL_7;
  }

  if (*(v7 + 792) != -1)
  {
    v22 = v7 + 728;
    goto LABEL_61;
  }

  result = 4294966269;
LABEL_64:
  *(a1 + 8) = result;
  return result;
}

uint64_t *webm::WebmParser::Swap(uint64_t *this, webm::WebmParser *a2)
{
  v2 = *this;
  *this = *a2;
  *a2 = v2;
  LODWORD(v2) = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v2;
  return this;
}

uint64_t *webm::swap(uint64_t *this, webm::WebmParser *a2, webm::WebmParser *a3)
{
  v3 = *this;
  *this = *a2;
  *a2 = v3;
  LODWORD(v3) = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v3;
  return this;
}

void webm::WebmParser::DocumentParser::~DocumentParser(webm::WebmParser::DocumentParser *this)
{
  *(this + 54) = &unk_2882A81D0;
  v2 = *(this + 66);
  if (v2)
  {
    do
    {
      v6 = *v2;
      v7 = v2[3];
      v2[3] = 0;
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }

      operator delete(v2);
      v2 = v6;
    }

    while (v6);
  }

  v3 = *(this + 64);
  *(this + 64) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(this + 6) = &unk_2882AACC0;
  *(this + 24) = &unk_2882A81D0;
  v4 = *(this + 36);
  if (v4)
  {
    do
    {
      v8 = *v4;
      v9 = v4[3];
      v4[3] = 0;
      if (v9)
      {
        (*(*v9 + 8))(v9);
      }

      operator delete(v4);
      v4 = v8;
    }

    while (v8);
  }

  v5 = *(this + 34);
  *(this + 34) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  if (*(this + 143) < 0)
  {
    operator delete(*(this + 15));
  }
}

void webm::EbmlParser::~EbmlParser(webm::EbmlParser *this)
{
  *this = &unk_2882AACC0;
  *(this + 18) = &unk_2882A81D0;
  v2 = *(this + 30);
  if (v2)
  {
    do
    {
      v4 = *v2;
      v5 = v2[3];
      v2[3] = 0;
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }

      operator delete(v2);
      v2 = v4;
    }

    while (v4);
  }

  v3 = *(this + 28);
  *(this + 28) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }
}

{
  *this = &unk_2882AACC0;
  *(this + 18) = &unk_2882A81D0;
  v2 = *(this + 30);
  if (v2)
  {
    do
    {
      v4 = *v2;
      v5 = v2[3];
      v2[3] = 0;
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }

      operator delete(v2);
      v2 = v4;
    }

    while (v4);
  }

  v3 = *(this + 28);
  *(this + 28) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webm::MasterValueParser<webm::Ebml>::~MasterValueParser(uint64_t a1)
{
  *a1 = &unk_2882AACC0;
  *(a1 + 144) = &unk_2882A81D0;
  v2 = *(a1 + 240);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[3];
      v2[3] = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *(a1 + 224);
  *(a1 + 224) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  return a1;
}

void webm::MasterValueParser<webm::Ebml>::~MasterValueParser(uint64_t a1)
{
  *a1 = &unk_2882AACC0;
  *(a1 + 144) = &unk_2882A81D0;
  v2 = *(a1 + 240);
  if (v2)
  {
    do
    {
      v4 = *v2;
      v5 = v2[3];
      v2[3] = 0;
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }

      operator delete(v2);
      v2 = v4;
    }

    while (v4);
  }

  v3 = *(a1 + 224);
  *(a1 + 224) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webm::MasterValueParser<webm::Ebml>::Feed(uint64_t a1, void **a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  if ((*(a1 + 140) & 1) == 0)
  {
    v10 = &unk_2882A8218;
    if (*(a1 + 136) == 1)
    {
      a2 = &v10;
    }

    result = webm::MasterParser::Feed(a1 + 144, a2, a3, a4);
    if (result == 0x80000000)
    {
      v9 = 0;
      a2 = &v10;
      result = webm::MasterParser::Feed(a1 + 144, &v10, a3, &v9);
      *a4 += v9;
    }

    if (result)
    {
      return result;
    }

    *(a1 + 140) = 1;
  }

  if ((*(a1 + 141) & 1) == 0)
  {
    result = (*(*a1 + 56))(a1, a2, a1 + 136);
    if (result)
    {
      return result;
    }

    *(a1 + 141) = 1;
  }

  if (*(a1 + 136) == 1)
  {
    return 0;
  }

  else
  {
    return (*(*a1 + 64))(a1, a2);
  }
}

uint64_t webm::MasterValueParser<webm::Ebml>::Init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14 = 8;
  if (&v12 <= "matroska" && v13 > "matroska")
  {
    __break(1u);
  }

  v13[0] = 0;
  v15[0] = *v13;
  *(v15 + 7) = *&v13[7];
  v3 = *(a1 + 95);
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 4;
  *(a1 + 48) = 0;
  *(a1 + 56) = 8;
  *(a1 + 64) = 0;
  if (v3 < 0)
  {
    v4 = a1;
    v5 = a3;
    v6 = a2;
    operator delete(*(a1 + 72));
    a2 = v6;
    a3 = v5;
    a1 = v4;
  }

  v7 = v15[0];
  *(a1 + 72) = 0x616B736F7274616DLL;
  *(a1 + 80) = v7;
  *(a1 + 87) = *(v15 + 7);
  *(a1 + 95) = 8;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  *(a1 + 120) = 1;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 140) = 0;
  LODWORD(v7) = *(a2 + 4);
  v8 = *(a2 + 8);
  *(a1 + 160) = 0xFFFFFFFFLL;
  *(a1 + 184) = -1;
  *(a1 + 196) = 0;
  *(a1 + 188) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = v7;
  *(a1 + 344) = v8;
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  v9 = *(a2 + 8);
  if (v9 == -1)
  {
    *(a1 + 360) = a3;
    goto LABEL_9;
  }

  *(a1 + 360) = v9;
  if (v9)
  {
LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  v10 = 8;
LABEL_10:
  *(a1 + 332) = v10;
  return 0;
}

uint64_t webm::MasterValueParser<webm::Ebml>::InitAfterSeek(uint64_t a1, unsigned int **a2, uint64_t a3)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v11 = 8;
  if (&v9 <= "matroska" && v10 > "matroska")
  {
    __break(1u);
  }

  v10[0] = 0;
  v12[0] = *v10;
  *(v12 + 7) = *&v10[7];
  v3 = *(a1 + 95);
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 4;
  *(a1 + 48) = 0;
  *(a1 + 56) = 8;
  *(a1 + 64) = 0;
  if (v3 < 0)
  {
    v4 = a1;
    v5 = a3;
    v6 = a2;
    operator delete(*(a1 + 72));
    a1 = v4;
    a2 = v6;
    a3 = v5;
  }

  v7 = v12[0];
  *(a1 + 72) = 0x616B736F7274616DLL;
  *(a1 + 80) = v7;
  *(a1 + 87) = *(v12 + 7);
  *(a1 + 95) = 8;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  *(a1 + 120) = 1;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 140) = 256;
  return webm::MasterParser::InitAfterSeek(a1 + 144, a2, a3);
}

uint64_t webm::MasterValueParser<webm::Ebml>::GetCachedMetadata(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 376) != 1)
  {
    return 0;
  }

  v2 = *(a1 + 200);
  *(a2 + 16) = *(a1 + 216);
  *a2 = v2;
  return *(a1 + 376) & 1;
}

uint64_t webm::MasterValueParser<webm::Ebml>::MasterValueParser<webm::MasterValueParser<webm::Ebml>::SingleChildFactory<webm::IntParser<unsigned long long>,unsigned long long>,webm::MasterValueParser<webm::Ebml>::SingleChildFactory<webm::IntParser<unsigned long long>,unsigned long long>,webm::MasterValueParser<webm::Ebml>::SingleChildFactory<webm::IntParser<unsigned long long>,unsigned long long>,webm::MasterValueParser<webm::Ebml>::SingleChildFactory<webm::IntParser<unsigned long long>,unsigned long long>,webm::MasterValueParser<webm::Ebml>::SingleChildFactory<webm::ByteParser<std::string>,std::string>,webm::MasterValueParser<webm::Ebml>::SingleChildFactory<webm::IntParser<unsigned long long>,unsigned long long>,webm::MasterValueParser<webm::Ebml>::SingleChildFactory<webm::IntParser<unsigned long long>,unsigned long long>>(uint64_t result)
{
  *result = &unk_2882AACC0;
  *(result + 8) = 1;
  *(result + 16) = 0;
  *(result + 24) = 1;
  *(result + 32) = 0;
  *(result + 40) = 4;
  *(result + 48) = 0;
  *(result + 56) = 8;
  *(&v1.__r_.__value_.__s + 23) = 8;
  *(result + 64) = 0;
  if (&v1 > "matroska" || &v1.__r_.__value_.__r.__words[1] <= "matroska")
  {
    strcpy(&v1, "matroska");
    *(result + 72) = v1;
    *(result + 96) = 0;
    *(result + 104) = 1;
    *(result + 112) = 0;
    *(result + 120) = 1;
    *(result + 128) = 0;
    *(result + 136) = 0;
    operator new();
  }

  __break(1u);
  return result;
}

uint64_t webm::EbmlParser::OnParseCompleted(webm::EbmlParser *this, webm::Callback *a2)
{
  v2 = *(this + 84);
  v4[0] = 440786851;
  v4[1] = v2;
  v5 = *(this + 344);
  return (*(*a2 + 32))(a2, v4, this + 8);
}

uint64_t webm::MasterValueParser<webm::Ebml>::ChildParser<webm::IntParser<unsigned long long>,webm::MasterValueParser<webm::Ebml>::SingleChildFactory<webm::IntParser<unsigned long long>,unsigned long long>::BuildParser(webm::MasterValueParser<webm::Ebml>*,webm::Ebml*)::{lambda(webm::IntParser<unsigned long long>*)#1}>::Feed(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(a1 + 24);
  *a4 = 0;
  if (v5 > 8)
  {
    v6 = 0;
    result = 4294966270;
LABEL_14:
    *(a1 + 24) = v5 - v6;
    return result;
  }

  if (v5)
  {
    v10 = v5 + 1;
    while (1)
    {
      v12 = 0;
      v13 = 0;
      result = (*(*a3 + 16))(a3, 1, &v12, &v13);
      if (result)
      {
        break;
      }

      ++*a4;
      *(a1 + 8) = v12 | (*(a1 + 8) << 8);
      if (--v10 <= 1)
      {
        v5 = *(a1 + 24) - *a4;
        goto LABEL_8;
      }
    }

    v6 = *a4;
    v5 = *(a1 + 24);
    goto LABEL_14;
  }

LABEL_8:
  *(a1 + 24) = v5;
  if (*(*(a1 + 32) + 136) == 1)
  {
    return 0;
  }

  if ((*(*a1 + 48))(a1))
  {
    return 0;
  }

  result = 0;
  v11 = *(a1 + 40);
  *v11 = *(a1 + 8);
  *(v11 + 8) = 1;
  return result;
}

uint64_t webm::MasterValueParser<webm::Ebml>::ChildParser<webm::ByteParser<std::string>,webm::MasterValueParser<webm::Ebml>::SingleChildFactory<webm::ByteParser<std::string>,std::string>::BuildParser(webm::MasterValueParser<webm::Ebml>*,webm::Ebml*)::{lambda(webm::ByteParser<std::string>*)#1}>::~ChildParser(uint64_t a1)
{
  *a1 = &unk_2882A86F0;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((*(a1 + 31) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*(a1 + 8));
  return a1;
}

void webm::MasterValueParser<webm::Ebml>::ChildParser<webm::ByteParser<std::string>,webm::MasterValueParser<webm::Ebml>::SingleChildFactory<webm::ByteParser<std::string>,std::string>::BuildParser(webm::MasterValueParser<webm::Ebml>*,webm::Ebml*)::{lambda(webm::ByteParser<std::string>*)#1}>::~ChildParser(uint64_t a1)
{
  *a1 = &unk_2882A86F0;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((*(a1 + 31) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 8));
LABEL_3:

  JUMPOUT(0x2743DA540);
}

__n128 webm::MasterValueParser<webm::Ebml>::ChildParser<webm::ByteParser<std::string>,webm::MasterValueParser<webm::Ebml>::SingleChildFactory<webm::ByteParser<std::string>,std::string>::BuildParser(webm::MasterValueParser<webm::Ebml>*,webm::Ebml*)::{lambda(webm::ByteParser<std::string>*)#1}>::Feed(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  if (!webm::ByteParser<std::string>::Feed(a1, a2, a3, a4) && *(*(a1 + 64) + 136) != 1 && ((*(*a1 + 48))(a1) & 1) == 0)
  {
    v6 = *(a1 + 72);
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    result = *(a1 + 8);
    *(v6 + 16) = *(a1 + 24);
    *v6 = result;
    *(a1 + 31) = 0;
    *(a1 + 8) = 0;
    *(v6 + 24) = 1;
  }

  return result;
}

uint64_t I420Copy(char *a1, int a2, char *a3, int a4, char *a5, int a6, uint64_t a7, int a8, uint64_t a9, int a10, uint64_t a11, int a12, int a13, int a14)
{
  if (a1)
  {
    v14 = 1;
  }

  else
  {
    v14 = a7 == 0;
  }

  v15 = v14;
  if (a13 < 1 || a9 == 0 || a5 == 0 || a3 == 0 || v15 == 0 || a11 == 0 || a14 == 0)
  {
    return 0xFFFFFFFFLL;
  }

  v22 = (a13 + 1) >> 1;
  v23 = (1 - a14) >> 1;
  v24 = &a1[~a14 * a2];
  if (a14 >= 0)
  {
    v25 = a6;
  }

  else
  {
    v25 = -a6;
  }

  if (a14 < 0)
  {
    v26 = &a5[(v23 - 1) * a6];
  }

  else
  {
    v26 = a5;
  }

  if (a14 >= 0)
  {
    v27 = a4;
  }

  else
  {
    v27 = -a4;
  }

  if (a14 < 0)
  {
    v28 = &a3[(v23 - 1) * a4];
  }

  else
  {
    v28 = a3;
  }

  if (a14 >= 0)
  {
    v29 = a14;
  }

  else
  {
    a2 = -a2;
    a1 = v24;
    v29 = -a14;
  }

  if (a14 < 0)
  {
    v30 = (1 - a14) >> 1;
  }

  else
  {
    v30 = (a14 + 1) >> 1;
  }

  if (a7)
  {
    CopyPlane(a1, a2, a7, a8, a13, v29);
  }

  CopyPlane(v28, v27, a9, a10, v22, v30);
  CopyPlane(v26, v25, a11, a12, v22, v30);
  return 0;
}

uint64_t libyuv::Planar16bitTo8bit(libyuv *this, const unsigned __int16 *a2, uint64_t a3, const unsigned __int16 *a4, uint64_t a5, const unsigned __int16 *a6, int8x16_t *a7, unsigned __int8 *a8, int8x16_t *a9, unsigned __int8 *a10, int8x16_t *a11, unsigned __int8 *a12, int a13, int a14, int a15, char a16, int a17, int a18)
{
  if (SHIDWORD(a12) < 0)
  {
    v18 = -((a14 - HIDWORD(a12)) >> a14);
  }

  else
  {
    v18 = (a14 + HIDWORD(a12)) >> a14;
  }

  v19 = (a15 + a13) >> a15;
  if (a13 < 0)
  {
    v19 = -((a15 - a13) >> a15);
  }

  if (this)
  {
    v20 = 1;
  }

  else
  {
    v20 = a7 == 0;
  }

  v21 = v20;
  v22 = 0xFFFFFFFFLL;
  if (SHIDWORD(a12) >= 1 && a9 && a5 && a3 && v21 && a11 && a13)
  {
    v23 = (1 << (24 - a16));
    v24 = (this + 2 * ~a13 * a2);
    if (a13 >= 0)
    {
      v25 = a6;
    }

    else
    {
      v25 = -a6;
    }

    if (a13 < 0)
    {
      v26 = a5 + 2 * (~v19 * a6);
    }

    else
    {
      v26 = a5;
    }

    if (a13 >= 0)
    {
      v27 = a13;
    }

    else
    {
      v27 = -a13;
    }

    if (a13 >= 0)
    {
      v28 = a4;
    }

    else
    {
      v28 = -a4;
    }

    if (a13 < 0)
    {
      v29 = a3 + 2 * (~v19 * a4);
    }

    else
    {
      v29 = a3;
    }

    if (a13 >= 0)
    {
      v30 = v19;
    }

    else
    {
      LODWORD(a2) = -a2;
      this = v24;
      v30 = -v19;
    }

    if (a7)
    {
      Convert16To8Plane(this, a2, a7, a8, v23, SHIDWORD(a12), v27);
    }

    Convert16To8Plane(v29, v28, a9, a10, v23, v18, v30);
    Convert16To8Plane(v26, v25, a11, a12, v23, v18, v30);
    return 0;
  }

  return v22;
}

uint64_t libyuv::I21xToI420(libyuv *this, const unsigned __int16 *a2, uint64_t a3, const unsigned __int16 *a4, uint64_t a5, const unsigned __int16 *a6, int8x16_t *a7, unsigned __int8 *a8, unint64_t a9, unsigned __int8 *a10, unint64_t a11, unsigned __int8 *a12, int a13, char a14, int a15, int a16)
{
  if (SHIDWORD(a12) < 1 || a13 == 0)
  {
    return 0xFFFFFFFFLL;
  }

  v18 = (1 << (24 - a14));
  v19 = (this + 2 * ~a13 * a2);
  if (a13 >= 0)
  {
    v20 = a6;
  }

  else
  {
    v20 = -a6;
  }

  if (a13 < 0)
  {
    v21 = a5 + 2 * ~a13 * a6;
  }

  else
  {
    v21 = a5;
  }

  v27 = v21;
  if (a13 >= 0)
  {
    v22 = a13;
  }

  else
  {
    v22 = -a13;
  }

  if (a13 >= 0)
  {
    v23 = a4;
  }

  else
  {
    v23 = -a4;
  }

  if (a13 < 0)
  {
    v24 = a3 + 2 * ~a13 * a4;
  }

  else
  {
    v24 = a3;
  }

  if (a13 < 0)
  {
    LODWORD(a2) = -a2;
    this = v19;
  }

  v25 = (HIDWORD(a12) + 1) >> 1;
  v26 = (v22 << 16) / ((v22 + 1) >> 1);
  Convert16To8Plane(this, a2, a7, a8, v18, SHIDWORD(a12), v22);
  ScalePlaneVertical_16To8(v22, v25, (v22 + 1) >> 1, v23, a10, v24, a9, 0, 0x8000, v26, 1, v18, 2);
  ScalePlaneVertical_16To8(v22, v25, (v22 + 1) >> 1, v20, a12, v27, a11, 0, 0x8000, v26, 1, v18, 2);
  return 0;
}

uint64_t I010ToP010(uint64_t a1, int a2, uint64_t a3, int a4, uint16x8_t *a5, int a6, uint64_t a7, int a8, uint64_t a9, int a10, int a11, int a12)
{
  if (a11 < 0)
  {
    v14 = -((1 - a11) >> 1);
  }

  else
  {
    v14 = (a11 + 1) >> 1;
  }

  if (a12 < 0)
  {
    v15 = -((1 - a12) >> 1);
  }

  else
  {
    v15 = (a12 + 1) >> 1;
  }

  if (a11 < 1 || a12 == 0)
  {
    return 0xFFFFFFFFLL;
  }

  ConvertToMSBPlane_16(a1, a2, a7, a8, a11, a12, 10);
  MergeUVPlane_16(a3, a4, a5, a6, a9, a10, v14, v15, 10);
  return 0;
}

uint64_t I210ToP210(uint64_t a1, int a2, uint64_t a3, int a4, uint16x8_t *a5, int a6, uint64_t a7, int a8, uint64_t a9, int a10, int a11, int a12)
{
  if (a11 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a11 || a12 == 0)
  {
    return 0xFFFFFFFFLL;
  }

  ConvertToMSBPlane_16(a1, a2, a7, a8, a11, a12, 10);
  MergeUVPlane_16(a3, a4, a5, a6, a9, a10, (a11 + 1) >> 1, a12, 10);
  return 0;
}

uint64_t libyuv::I4xxToI420(libyuv *this, const unsigned __int8 *a2, char *a3, const unsigned __int8 *a4, char *a5, const unsigned __int8 *a6, uint64_t a7, unsigned __int8 *a8, int8x16_t *a9, unsigned __int8 *a10, int8x16_t *a11, unsigned __int8 *a12, int a13, unsigned int a14, unsigned int a15, int a16, int a17)
{
  if (a13 >= 0)
  {
    v17 = a13;
  }

  else
  {
    v17 = -a13;
  }

  if (SHIDWORD(a12) < 0)
  {
    v18 = -((1 - HIDWORD(a12)) >> 1);
  }

  else
  {
    v18 = (HIDWORD(a12) + 1) >> 1;
  }

  if (this)
  {
    v19 = 1;
  }

  else
  {
    v19 = a7 == 0;
  }

  v20 = v19;
  if (SHIDWORD(a12) < 1 || a9 == 0 || a5 == 0 || a3 == 0 || v20 == 0 || a11 == 0 || a13 == 0 || a14 < 1 || a15 == 0)
  {
    return 0xFFFFFFFFLL;
  }

  v34 = a6;
  v30 = ((v17 + 1) >> 1);
  if (a7)
  {
    v31 = a3;
    v32 = a4;
    CopyPlane(this, a2, a7, a8, SHIDWORD(a12), a13);
    a3 = v31;
    LODWORD(a4) = v32;
  }

  result = ScalePlane(a3, a4, a14, a15, a9, a10, v18, v30, 2);
  if (!result)
  {

    return ScalePlane(a5, v34, a14, a15, a11, a12, v18, v30, 2);
  }

  return result;
}

uint64_t I422ToNV21(libyuv *a1, unsigned int a2, char *a3, int a4, unsigned __int8 *a5, int a6, uint64_t a7, unsigned int a8, int a9, int a10, int a11, int a12, int a13)
{
  v13 = a12 + 1;
  v14 = (a12 + 1) >> 1;
  v15 = &a5[~a13 * a6];
  if (a13 >= 0)
  {
    v16 = a6;
  }

  else
  {
    v16 = -a6;
  }

  v34 = v16;
  if (a13 >= 0)
  {
    v15 = a5;
  }

  v33 = v15;
  if (a13 >= 0)
  {
    v17 = a4;
  }

  else
  {
    v17 = -a4;
  }

  v32 = v17;
  if (a13 < 0)
  {
    v18 = &a3[~a13 * a4];
  }

  else
  {
    v18 = a3;
  }

  v31 = v18;
  if (a13 >= 0)
  {
    v19 = a13;
  }

  else
  {
    v19 = -a13;
  }

  if (a13 >= 0)
  {
    v20 = a2;
  }

  else
  {
    v20 = -a2;
  }

  if (a13 < 0)
  {
    v21 = (1 - a13) >> 1;
  }

  else
  {
    v21 = (a13 + 1) >> 1;
  }

  if (a13 < 0)
  {
    v22 = (a1 + ~a13 * a2);
  }

  else
  {
    v22 = a1;
  }

  v23 = malloc_type_malloc(2 * v21 * v14 + 63, 0x59A4D0FCuLL);
  result = 1;
  v25 = ((v23 + 63) & 0xFFFFFFFFFFFFFFC0);
  if (v25)
  {
    v26 = (v25 + v21 * v14);
    if (a12 < 0)
    {
      v27 = -((1 - a12) >> 1);
    }

    else
    {
      v27 = v13 >> 1;
    }

    LODWORD(v28) = (a12 + 1) >> 1;
    libyuv::I4xxToI420(v22, v20, v31, v32, v33, v34, a7, a8, v25, v28, v26, __PAIR64__(a12, v14), v19, v27, v19, v29, a9);
    MergeUVPlane(v26, v13 >> 1, v25, v13 >> 1, v30, a11, v13 >> 1, v21);
    free(v23);
    return 0;
  }

  return result;
}

uint64_t I400ToI420(char *a1, int a2, uint64_t a3, int a4, char *a5, int a6, char *a7, int a8, int a9, int a10)
{
  v10 = a10;
  if (a1)
  {
    v11 = 1;
  }

  else
  {
    v11 = a3 == 0;
  }

  v12 = v11;
  if (a9 < 1 || v12 == 0 || a5 == 0 || a7 == 0 || a10 == 0)
  {
    return 0xFFFFFFFFLL;
  }

  v20 = (a9 + 1) >> 1;
  v21 = &a1[~a10 * a2];
  if (a10 >= 0)
  {
    v22 = (a10 + 1) >> 1;
  }

  else
  {
    a2 = -a2;
    a1 = v21;
    v10 = -a10;
    v22 = (1 - a10) >> 1;
  }

  if (a3)
  {
    v23 = a5;
    v24 = a6;
    CopyPlane(a1, a2, a3, a4, a9, v10);
    a5 = v23;
    a6 = v24;
  }

  SetPlane(a5, a6, v20, v22, 0x80u);
  SetPlane(a7, a8, v20, v22, 0x80u);
  return 0;
}

uint64_t NV12ToI420(char *a1, int a2, const char *a3, int a4, uint64_t a5, int a6, int8x16_t *a7, int a8, int8x16_t *a9, int a10, int a11, int a12)
{
  v12 = a11;
  if (a1)
  {
    v13 = 1;
  }

  else
  {
    v13 = a5 == 0;
  }

  v14 = v13;
  if (a11 < 1 || a3 == 0 || v14 == 0 || a7 == 0 || a9 == 0 || a12 == 0)
  {
    return 0xFFFFFFFFLL;
  }

  v21 = (a11 + 1) >> 1;
  if (a12 < 0)
  {
    v22 = &a3[(((1 - a12) >> 1) - 1) * a4];
  }

  else
  {
    v22 = a3;
  }

  if (a12 >= 0)
  {
    v23 = a4;
  }

  else
  {
    v23 = -a4;
  }

  if (a12 >= 0)
  {
    v24 = a2;
  }

  else
  {
    v24 = -a2;
  }

  if (a12 >= 0)
  {
    v25 = a12;
  }

  else
  {
    a1 += ~a12 * a2;
    v25 = -a12;
  }

  if (a12 < 0)
  {
    v26 = (1 - a12) >> 1;
  }

  else
  {
    v26 = (a12 + 1) >> 1;
  }

  v27 = v25 * a11;
  if (v24 == a11)
  {
    v28 = 0;
  }

  else
  {
    v28 = v24;
  }

  if (v24 == a11)
  {
    v29 = 0;
  }

  else
  {
    v29 = a6;
  }

  if (v24 == a11)
  {
    v30 = 1;
  }

  else
  {
    v27 = a11;
    v30 = v25;
  }

  if (a6 == a11)
  {
    v31 = v29;
  }

  else
  {
    v28 = v24;
    v31 = a6;
  }

  if (a6 == a11)
  {
    v12 = v27;
    v32 = v30;
  }

  else
  {
    v32 = v25;
  }

  v34 = v21 == a10 && v21 == a8 && v23 == ((a11 + 1) & 0x7FFFFFFE);
  if (v34)
  {
    v35 = 0;
  }

  else
  {
    v35 = v23;
  }

  if (v34)
  {
    v36 = 0;
  }

  else
  {
    v36 = a8;
  }

  if (v34)
  {
    v37 = 0;
  }

  else
  {
    v37 = a10;
  }

  if (v34)
  {
    v38 = v26 * a8;
  }

  else
  {
    v38 = (a11 + 1) >> 1;
  }

  if (v34)
  {
    v39 = 1;
  }

  else
  {
    v39 = v26;
  }

  if (a5)
  {
    v40 = a7;
    CopyPlane(a1, v28, a5, v31, v12, v32);
    a7 = v40;
  }

  SplitUVPlane(v22, v35, a7, v36, a9, v37, v38, v39);
  return 0;
}

uint64_t YUY2ToI420(_BYTE *a1, unsigned int a2, unint64_t a3, int a4, uint8x16_t *a5, int a6, uint8x16_t *a7, int a8, int a9, int a10)
{
  if (a10 >= 0)
  {
    v14 = a2;
  }

  else
  {
    v14 = -a2;
  }

  if (a10 < 0)
  {
    v15 = &a1[~a10 * a2];
  }

  else
  {
    v15 = a1;
  }

  if (a10 >= 0)
  {
    v16 = a10;
  }

  else
  {
    v16 = -a10;
  }

  v17 = cpu_info_;
  if (!cpu_info_)
  {
    v37 = a8;
    v18 = a6;
    v19 = v14;
    v20 = AArch64CpuCaps();
    v14 = v19;
    a6 = v18;
    a8 = v37;
    v17 = v20 | 3;
    cpu_info_ = v20 | 3;
  }

  if ((a9 & 0xF) != 0)
  {
    v21 = YUY2ToUVRow_Any_NEON;
  }

  else
  {
    v21 = YUY2ToUVRow_NEON;
  }

  v22 = YUY2ToYRow_Any_NEON;
  if ((a9 & 0xF) == 0)
  {
    v22 = YUY2ToYRow_NEON;
  }

  v23 = (v17 & 0x100) == 0;
  if ((v17 & 0x100) != 0)
  {
    v24 = v21;
  }

  else
  {
    v24 = YUY2ToUVRow_C;
  }

  if (v23)
  {
    v25 = YUY2ToYRow_C;
  }

  else
  {
    v25 = v22;
  }

  v31 = v16;
  if (v16 >= 2)
  {
    v26 = 0;
    v36 = a4;
    v38 = v14;
    v35 = v16 - 1;
    v33 = 2 * a4;
    v34 = 2 * v14;
    v32 = a6;
    v27 = v14;
    v28 = a8;
    do
    {
      v29 = v24;
      v24(v15, v27, a5, a7, a9);
      v25(v15, a3, a9);
      v25(&v15[v38], a3 + v36, a9);
      v24 = v29;
      v15 += v34;
      a3 += v33;
      a5 = (a5 + v32);
      a7 = (a7 + v28);
      v26 += 2;
    }

    while (v26 < v35);
  }

  if (v31)
  {
    v24(v15, 0, a5, a7, a9);
    v25(v15, a3, a9);
  }

  return 0;
}

uint64_t UYVYToI420(const char *a1, unsigned int a2, unint64_t a3, int a4, uint8x16_t *a5, int a6, uint8x16_t *a7, int a8, int a9, int a10)
{
  if (a10 >= 0)
  {
    v14 = a2;
  }

  else
  {
    v14 = -a2;
  }

  if (a10 < 0)
  {
    v15 = &a1[~a10 * a2];
  }

  else
  {
    v15 = a1;
  }

  if (a10 >= 0)
  {
    v16 = a10;
  }

  else
  {
    v16 = -a10;
  }

  v17 = cpu_info_;
  if (!cpu_info_)
  {
    v37 = a8;
    v18 = a6;
    v19 = v14;
    v20 = AArch64CpuCaps();
    v14 = v19;
    a6 = v18;
    a8 = v37;
    v17 = v20 | 3;
    cpu_info_ = v20 | 3;
  }

  if ((a9 & 0xF) != 0)
  {
    v21 = UYVYToUVRow_Any_NEON;
  }

  else
  {
    v21 = UYVYToUVRow_NEON;
  }

  v22 = UYVYToYRow_Any_NEON;
  if ((a9 & 0xF) == 0)
  {
    v22 = UYVYToYRow_NEON;
  }

  v23 = (v17 & 0x100) == 0;
  if ((v17 & 0x100) != 0)
  {
    v24 = v21;
  }

  else
  {
    v24 = UYVYToUVRow_C;
  }

  if (v23)
  {
    v25 = UYVYToYRow_C;
  }

  else
  {
    v25 = v22;
  }

  v31 = v16;
  if (v16 >= 2)
  {
    v26 = 0;
    v36 = a4;
    v38 = v14;
    v35 = v16 - 1;
    v33 = 2 * a4;
    v34 = 2 * v14;
    v32 = a6;
    v27 = v14;
    v28 = a8;
    do
    {
      v29 = v24;
      v24(v15, v27, a5, a7, a9);
      v25(v15, a3, a9);
      v25(&v15[v38], a3 + v36, a9);
      v24 = v29;
      v15 += v34;
      a3 += v33;
      a5 = (a5 + v32);
      a7 = (a7 + v28);
      v26 += 2;
    }

    while (v26 < v35);
  }

  if (v31)
  {
    v24(v15, 0, a5, a7, a9);
    v25(v15, a3, a9);
  }

  return 0;
}

uint64_t ARGBToI420(unsigned __int8 *a1, unsigned int a2, int8x16_t *a3, int a4, _BYTE *a5, int a6, _BYTE *a7, int a8, unsigned int a9, int a10)
{
  result = 0xFFFFFFFFLL;
  if (a1)
  {
    v12 = a3;
    if (a3)
    {
      v13 = a5;
      if (a5)
      {
        v14 = a7;
        if (a7)
        {
          if (a9 >= 1 && a10)
          {
            if (a10 >= 0)
            {
              v17 = a2;
            }

            else
            {
              v17 = -a2;
            }

            v35 = v17;
            if (a10 < 0)
            {
              v18 = &a1[~a10 * a2];
            }

            else
            {
              v18 = a1;
            }

            if (a10 >= 0)
            {
              v19 = a10;
            }

            else
            {
              v19 = -a10;
            }

            v20 = cpu_info_;
            if (!cpu_info_)
            {
              v21 = a8;
              v22 = AArch64CpuCaps();
              a8 = v21;
              v20 = v22 | 3;
              cpu_info_ = v22 | 3;
            }

            v23 = ARGBToYRow_Any_NEON;
            if ((a9 & 0xF) == 0)
            {
              v23 = ARGBToYRow_NEON;
            }

            if ((v20 & 0x100) != 0)
            {
              v24 = v23;
            }

            else
            {
              v24 = ARGBToYRow_C;
            }

            v25 = cpu_info_;
            if (!cpu_info_)
            {
              v38 = a4;
              v26 = a6;
              v27 = a8;
              v28 = AArch64CpuCaps();
              a8 = v27;
              a6 = v26;
              a4 = v38;
              v25 = v28 | 3;
              cpu_info_ = v28 | 3;
            }

            v29 = ARGBToUVRow_Any_NEON;
            if ((a9 & 0xF) == 0)
            {
              v29 = ARGBToUVRow_NEON;
            }

            if ((v25 & 0x100) != 0)
            {
              v30 = v29;
            }

            else
            {
              v30 = ARGBToUVRow_C;
            }

            if (v19 < 2)
            {
              goto LABEL_34;
            }

            v31 = 0;
            v34 = v19;
            v37 = v19 - 1;
            v36 = a6;
            v32 = a8;
            do
            {
              v33 = v30;
              v30(v18, v35, v13, v14, a9);
              v24(v18, v12, a9);
              v24(&v18[v35], (v12 + a4), a9);
              v30 = v33;
              v18 += 2 * v35;
              v12 = (v12 + 2 * a4);
              v13 += v36;
              v14 += v32;
              v31 += 2;
            }

            while (v31 < v37);
            if (v34)
            {
LABEL_34:
              v30(v18, 0, v13, v14, a9);
              v24(v18, v12, a9);
            }

            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t BGRAToI420(unsigned __int8 *a1, unsigned int a2, int8x16_t *a3, int a4, _BYTE *a5, int a6, _BYTE *a7, int a8, unsigned int a9, int a10)
{
  result = 0xFFFFFFFFLL;
  if (a1)
  {
    v12 = a3;
    if (a3)
    {
      v13 = a5;
      if (a5)
      {
        v14 = a7;
        if (a7)
        {
          if (a9 >= 1 && a10)
          {
            if (a10 >= 0)
            {
              v17 = a2;
            }

            else
            {
              v17 = -a2;
            }

            v35 = v17;
            if (a10 < 0)
            {
              v18 = &a1[~a10 * a2];
            }

            else
            {
              v18 = a1;
            }

            if (a10 >= 0)
            {
              v19 = a10;
            }

            else
            {
              v19 = -a10;
            }

            v20 = cpu_info_;
            if (!cpu_info_)
            {
              v21 = a8;
              v22 = AArch64CpuCaps();
              a8 = v21;
              v20 = v22 | 3;
              cpu_info_ = v22 | 3;
            }

            v23 = BGRAToYRow_Any_NEON;
            if ((a9 & 0xF) == 0)
            {
              v23 = BGRAToYRow_NEON;
            }

            if ((v20 & 0x100) != 0)
            {
              v24 = v23;
            }

            else
            {
              v24 = BGRAToYRow_C;
            }

            v25 = cpu_info_;
            if (!cpu_info_)
            {
              v38 = a4;
              v26 = a6;
              v27 = a8;
              v28 = AArch64CpuCaps();
              a8 = v27;
              a6 = v26;
              a4 = v38;
              v25 = v28 | 3;
              cpu_info_ = v28 | 3;
            }

            v29 = BGRAToUVRow_Any_NEON;
            if ((a9 & 0xF) == 0)
            {
              v29 = BGRAToUVRow_NEON;
            }

            if ((v25 & 0x100) != 0)
            {
              v30 = v29;
            }

            else
            {
              v30 = BGRAToUVRow_C;
            }

            if (v19 < 2)
            {
              goto LABEL_34;
            }

            v31 = 0;
            v34 = v19;
            v37 = v19 - 1;
            v36 = a6;
            v32 = a8;
            do
            {
              v33 = v30;
              v30(v18, v35, v13, v14, a9);
              v24(v18, v12, a9);
              v24(&v18[v35], (v12 + a4), a9);
              v30 = v33;
              v18 += 2 * v35;
              v12 = (v12 + 2 * a4);
              v13 += v36;
              v14 += v32;
              v31 += 2;
            }

            while (v31 < v37);
            if (v34)
            {
LABEL_34:
              v30(v18, 0, v13, v14, a9);
              v24(v18, v12, a9);
            }

            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t ABGRToI420(unsigned __int8 *a1, unsigned int a2, int8x16_t *a3, int a4, _BYTE *a5, int a6, _BYTE *a7, int a8, unsigned int a9, int a10)
{
  result = 0xFFFFFFFFLL;
  if (a1)
  {
    v12 = a3;
    if (a3)
    {
      v13 = a5;
      if (a5)
      {
        v14 = a7;
        if (a7)
        {
          if (a9 >= 1 && a10)
          {
            if (a10 >= 0)
            {
              v17 = a2;
            }

            else
            {
              v17 = -a2;
            }

            v35 = v17;
            if (a10 < 0)
            {
              v18 = &a1[~a10 * a2];
            }

            else
            {
              v18 = a1;
            }

            if (a10 >= 0)
            {
              v19 = a10;
            }

            else
            {
              v19 = -a10;
            }

            v20 = cpu_info_;
            if (!cpu_info_)
            {
              v21 = a8;
              v22 = AArch64CpuCaps();
              a8 = v21;
              v20 = v22 | 3;
              cpu_info_ = v22 | 3;
            }

            v23 = ABGRToYRow_Any_NEON;
            if ((a9 & 0xF) == 0)
            {
              v23 = ABGRToYRow_NEON;
            }

            if ((v20 & 0x100) != 0)
            {
              v24 = v23;
            }

            else
            {
              v24 = ABGRToYRow_C;
            }

            v25 = cpu_info_;
            if (!cpu_info_)
            {
              v38 = a4;
              v26 = a6;
              v27 = a8;
              v28 = AArch64CpuCaps();
              a8 = v27;
              a6 = v26;
              a4 = v38;
              v25 = v28 | 3;
              cpu_info_ = v28 | 3;
            }

            v29 = ABGRToUVRow_Any_NEON;
            if ((a9 & 0xF) == 0)
            {
              v29 = ABGRToUVRow_NEON;
            }

            if ((v25 & 0x100) != 0)
            {
              v30 = v29;
            }

            else
            {
              v30 = ABGRToUVRow_C;
            }

            if (v19 < 2)
            {
              goto LABEL_34;
            }

            v31 = 0;
            v34 = v19;
            v37 = v19 - 1;
            v36 = a6;
            v32 = a8;
            do
            {
              v33 = v30;
              v30(v18, v35, v13, v14, a9);
              v24(v18, v12, a9);
              v24(&v18[v35], (v12 + a4), a9);
              v30 = v33;
              v18 += 2 * v35;
              v12 = (v12 + 2 * a4);
              v13 += v36;
              v14 += v32;
              v31 += 2;
            }

            while (v31 < v37);
            if (v34)
            {
LABEL_34:
              v30(v18, 0, v13, v14, a9);
              v24(v18, v12, a9);
            }

            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t RGBAToI420(unsigned __int8 *a1, unsigned int a2, int8x16_t *a3, int a4, _BYTE *a5, int a6, _BYTE *a7, int a8, unsigned int a9, int a10)
{
  result = 0xFFFFFFFFLL;
  if (a1)
  {
    v12 = a3;
    if (a3)
    {
      v13 = a5;
      if (a5)
      {
        v14 = a7;
        if (a7)
        {
          if (a9 >= 1 && a10)
          {
            if (a10 >= 0)
            {
              v17 = a2;
            }

            else
            {
              v17 = -a2;
            }

            v35 = v17;
            if (a10 < 0)
            {
              v18 = &a1[~a10 * a2];
            }

            else
            {
              v18 = a1;
            }

            if (a10 >= 0)
            {
              v19 = a10;
            }

            else
            {
              v19 = -a10;
            }

            v20 = cpu_info_;
            if (!cpu_info_)
            {
              v21 = a8;
              v22 = AArch64CpuCaps();
              a8 = v21;
              v20 = v22 | 3;
              cpu_info_ = v22 | 3;
            }

            v23 = RGBAToYRow_Any_NEON;
            if ((a9 & 0xF) == 0)
            {
              v23 = RGBAToYRow_NEON;
            }

            if ((v20 & 0x100) != 0)
            {
              v24 = v23;
            }

            else
            {
              v24 = RGBAToYRow_C;
            }

            v25 = cpu_info_;
            if (!cpu_info_)
            {
              v38 = a4;
              v26 = a6;
              v27 = a8;
              v28 = AArch64CpuCaps();
              a8 = v27;
              a6 = v26;
              a4 = v38;
              v25 = v28 | 3;
              cpu_info_ = v28 | 3;
            }

            v29 = RGBAToUVRow_Any_NEON;
            if ((a9 & 0xF) == 0)
            {
              v29 = RGBAToUVRow_NEON;
            }

            if ((v25 & 0x100) != 0)
            {
              v30 = v29;
            }

            else
            {
              v30 = RGBAToUVRow_C;
            }

            if (v19 < 2)
            {
              goto LABEL_34;
            }

            v31 = 0;
            v34 = v19;
            v37 = v19 - 1;
            v36 = a6;
            v32 = a8;
            do
            {
              v33 = v30;
              v30(v18, v35, v13, v14, a9);
              v24(v18, v12, a9);
              v24(&v18[v35], (v12 + a4), a9);
              v30 = v33;
              v18 += 2 * v35;
              v12 = (v12 + 2 * a4);
              v13 += v36;
              v14 += v32;
              v31 += 2;
            }

            while (v31 < v37);
            if (v34)
            {
LABEL_34:
              v30(v18, 0, v13, v14, a9);
              v24(v18, v12, a9);
            }

            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t RGB24ToI420(unsigned __int8 *a1, unsigned int a2, unint64_t a3, int a4, _BYTE *a5, int a6, _BYTE *a7, int a8, unsigned int a9, int a10)
{
  result = 0xFFFFFFFFLL;
  if (a1)
  {
    v12 = a3;
    if (a3)
    {
      v13 = a5;
      if (a5)
      {
        v14 = a7;
        if (a7)
        {
          if (a9 >= 1 && a10)
          {
            if (a10 >= 0)
            {
              v16 = a2;
            }

            else
            {
              v16 = -a2;
            }

            if (a10 < 0)
            {
              v17 = &a1[~a10 * a2];
            }

            else
            {
              v17 = a1;
            }

            if (a10 >= 0)
            {
              v18 = a10;
            }

            else
            {
              v18 = -a10;
            }

            v19 = cpu_info_;
            if (!cpu_info_)
            {
              v38 = a8;
              v20 = a6;
              v21 = v16;
              v22 = AArch64CpuCaps();
              v16 = v21;
              a6 = v20;
              a8 = v38;
              v19 = v22 | 3;
              cpu_info_ = v22 | 3;
            }

            if ((a9 & 0xF) != 0)
            {
              v23 = RGB24ToUVRow_Any_NEON;
            }

            else
            {
              v23 = RGB24ToUVRow_NEON;
            }

            v24 = RGB24ToYRow_Any_NEON;
            if ((a9 & 0xF) == 0)
            {
              v24 = RGB24ToYRow_NEON;
            }

            v25 = (v19 & 0x100) == 0;
            if ((v19 & 0x100) != 0)
            {
              v26 = v23;
            }

            else
            {
              v26 = RGB24ToUVRow_C;
            }

            if (v25)
            {
              v27 = RGB24ToYRow_C;
            }

            else
            {
              v27 = v24;
            }

            if (v18 < 2)
            {
              goto LABEL_33;
            }

            v28 = 0;
            v37 = a4;
            v39 = v16;
            v32 = v18;
            v36 = v18 - 1;
            v34 = 2 * a4;
            v35 = 2 * v16;
            v33 = a6;
            v29 = v16;
            v30 = a8;
            do
            {
              v31 = v26;
              v26(v17, v29, v13, v14, a9);
              v27(v17, v12, a9);
              v27(&v17[v39], v12 + v37, a9);
              v26 = v31;
              v17 += v35;
              v12 += v34;
              v13 += v33;
              v14 += v30;
              v28 += 2;
            }

            while (v28 < v36);
            if (v32)
            {
LABEL_33:
              v26(v17, 0, v13, v14, a9);
              v27(v17, v12, a9);
            }

            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t RAWToI420(unsigned __int8 *a1, unsigned int a2, unint64_t a3, int a4, _BYTE *a5, int a6, _BYTE *a7, int a8, unsigned int a9, int a10)
{
  result = 0xFFFFFFFFLL;
  if (a1)
  {
    v12 = a3;
    if (a3)
    {
      v13 = a5;
      if (a5)
      {
        v14 = a7;
        if (a7)
        {
          if (a9 >= 1 && a10)
          {
            if (a10 >= 0)
            {
              v16 = a2;
            }

            else
            {
              v16 = -a2;
            }

            if (a10 < 0)
            {
              v17 = &a1[~a10 * a2];
            }

            else
            {
              v17 = a1;
            }

            if (a10 >= 0)
            {
              v18 = a10;
            }

            else
            {
              v18 = -a10;
            }

            v19 = cpu_info_;
            if (!cpu_info_)
            {
              v38 = a8;
              v20 = a6;
              v21 = v16;
              v22 = AArch64CpuCaps();
              v16 = v21;
              a6 = v20;
              a8 = v38;
              v19 = v22 | 3;
              cpu_info_ = v22 | 3;
            }

            if ((a9 & 0xF) != 0)
            {
              v23 = RAWToUVRow_Any_NEON;
            }

            else
            {
              v23 = RAWToUVRow_NEON;
            }

            v24 = RAWToYRow_Any_NEON;
            if ((a9 & 0xF) == 0)
            {
              v24 = RAWToYRow_NEON;
            }

            v25 = (v19 & 0x100) == 0;
            if ((v19 & 0x100) != 0)
            {
              v26 = v23;
            }

            else
            {
              v26 = RAWToUVRow_C;
            }

            if (v25)
            {
              v27 = RAWToYRow_C;
            }

            else
            {
              v27 = v24;
            }

            if (v18 < 2)
            {
              goto LABEL_33;
            }

            v28 = 0;
            v37 = a4;
            v39 = v16;
            v32 = v18;
            v36 = v18 - 1;
            v34 = 2 * a4;
            v35 = 2 * v16;
            v33 = a6;
            v29 = v16;
            v30 = a8;
            do
            {
              v31 = v26;
              v26(v17, v29, v13, v14, a9);
              v27(v17, v12, a9);
              v27(&v17[v39], v12 + v37, a9);
              v26 = v31;
              v17 += v35;
              v12 += v34;
              v13 += v33;
              v14 += v30;
              v28 += 2;
            }

            while (v28 < v36);
            if (v32)
            {
LABEL_33:
              v26(v17, 0, v13, v14, a9);
              v27(v17, v12, a9);
            }

            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t RGB565ToI420(_BYTE *a1, unsigned int a2, unint64_t a3, int a4, int8x16_t *a5, int a6, int8x16_t *a7, int a8, unsigned int a9, int a10)
{
  result = 0xFFFFFFFFLL;
  if (a1)
  {
    v12 = a3;
    if (a3)
    {
      v13 = a5;
      if (a5)
      {
        v14 = a7;
        if (a7)
        {
          if (a9 >= 1 && a10)
          {
            if (a10 >= 0)
            {
              v17 = a2;
            }

            else
            {
              v17 = -a2;
            }

            v35 = v17;
            if (a10 < 0)
            {
              v18 = &a1[~a10 * a2];
            }

            else
            {
              v18 = a1;
            }

            if (a10 >= 0)
            {
              v19 = a10;
            }

            else
            {
              v19 = -a10;
            }

            v20 = cpu_info_;
            if (!cpu_info_)
            {
              v21 = a8;
              v22 = AArch64CpuCaps();
              a8 = v21;
              v20 = v22 | 3;
              cpu_info_ = v22 | 3;
            }

            v23 = RGB565ToYRow_Any_NEON;
            if ((a9 & 0xF) == 0)
            {
              v23 = RGB565ToYRow_NEON;
            }

            if ((v20 & 0x100) != 0)
            {
              v24 = v23;
            }

            else
            {
              v24 = RGB565ToYRow_C;
            }

            v25 = cpu_info_;
            if (!cpu_info_)
            {
              v38 = a4;
              v26 = a6;
              v27 = a8;
              v28 = AArch64CpuCaps();
              a8 = v27;
              a6 = v26;
              a4 = v38;
              v25 = v28 | 3;
              cpu_info_ = v28 | 3;
            }

            v29 = RGB565ToUVRow_Any_NEON;
            if ((a9 & 0xF) == 0)
            {
              v29 = RGB565ToUVRow_NEON;
            }

            if ((v25 & 0x100) != 0)
            {
              v30 = v29;
            }

            else
            {
              v30 = RGB565ToUVRow_C;
            }

            if (v19 < 2)
            {
              goto LABEL_34;
            }

            v31 = 0;
            v34 = v19;
            v37 = v19 - 1;
            v36 = a6;
            v32 = a8;
            do
            {
              v33 = v30;
              v30(v18, v35, v13, v14, a9);
              v24(v18, v12, a9);
              v24(&v18[v35], v12 + a4, a9);
              v30 = v33;
              v18 += 2 * v35;
              v12 += 2 * a4;
              v13 = (v13 + v36);
              v14 = (v14 + v32);
              v31 += 2;
            }

            while (v31 < v37);
            if (v34)
            {
LABEL_34:
              v30(v18, 0, v13, v14, a9);
              v24(v18, v12, a9);
            }

            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t ARGB1555ToI420(const char *a1, unsigned int a2, unint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, int a8, unsigned int a9, int a10)
{
  result = 0xFFFFFFFFLL;
  if (a1)
  {
    v12 = a3;
    if (a3)
    {
      v13 = a5;
      if (a5)
      {
        v14 = a7;
        if (a7)
        {
          if (a9 >= 1 && a10)
          {
            if (a10 >= 0)
            {
              v15 = a2;
            }

            else
            {
              v15 = -a2;
            }

            if (a10 < 0)
            {
              v16 = &a1[~a10 * a2];
            }

            else
            {
              v16 = a1;
            }

            if (a10 >= 0)
            {
              v17 = a10;
            }

            else
            {
              v17 = -a10;
            }

            v18 = cpu_info_;
            if (!cpu_info_)
            {
              v19 = a6;
              v20 = a4;
              v21 = AArch64CpuCaps();
              a4 = v20;
              a6 = v19;
              v18 = v21 | 3;
              cpu_info_ = v21 | 3;
            }

            v22 = ARGB1555ToYRow_Any_NEON;
            if ((a9 & 7) == 0)
            {
              v22 = ARGB1555ToYRow_NEON;
            }

            if ((v18 & 0x100) != 0)
            {
              v23 = v22;
            }

            else
            {
              v23 = ARGB1555ToYRow_C;
            }

            v24 = cpu_info_;
            if (!cpu_info_)
            {
              v25 = a6;
              v26 = v15;
              v27 = a4;
              v28 = AArch64CpuCaps();
              a4 = v27;
              v15 = v26;
              a6 = v25;
              v24 = v28 | 3;
              cpu_info_ = v28 | 3;
            }

            v29 = ARGB1555ToUVRow_Any_NEON;
            if ((a9 & 0xF) == 0)
            {
              v29 = ARGB1555ToUVRow_NEON;
            }

            if ((v24 & 0x100) != 0)
            {
              v30 = v29;
            }

            else
            {
              v30 = ARGB1555ToUVRow_C;
            }

            if (v17 < 2)
            {
              goto LABEL_34;
            }

            v31 = 0;
            v38 = a4;
            v39 = v15;
            v36 = 2 * a4;
            v37 = 2 * v15;
            v32 = v15;
            v35 = a6;
            do
            {
              v33 = v30;
              (v30)(v16, v32, v13, v14, a9);
              v23(v16, v12, a9);
              v23(&v16[v39], v12 + v38, a9);
              v30 = v33;
              v16 += v37;
              v12 += v36;
              v13 += v35;
              v14 += a8;
              v31 += 2;
            }

            while (v31 < (v17 - 1));
            if (v17)
            {
LABEL_34:
              (v30)(v16, 0, v13, v14, a9);
              v23(v16, v12, a9);
            }

            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t ARGB4444ToI420(char *a1, unsigned int a2, unint64_t a3, int a4, int8x16_t *a5, int a6, int8x16_t *a7, int a8, unsigned int a9, int a10)
{
  result = 0xFFFFFFFFLL;
  if (a1)
  {
    v12 = a3;
    if (a3)
    {
      v13 = a5;
      if (a5)
      {
        v14 = a7;
        if (a7)
        {
          if (a9 >= 1 && a10)
          {
            if (a10 >= 0)
            {
              v15 = a2;
            }

            else
            {
              v15 = -a2;
            }

            if (a10 < 0)
            {
              v16 = &a1[~a10 * a2];
            }

            else
            {
              v16 = a1;
            }

            if (a10 >= 0)
            {
              v17 = a10;
            }

            else
            {
              v17 = -a10;
            }

            v18 = cpu_info_;
            if (!cpu_info_)
            {
              v19 = a6;
              v20 = a4;
              v21 = AArch64CpuCaps();
              a4 = v20;
              a6 = v19;
              v18 = v21 | 3;
              cpu_info_ = v21 | 3;
            }

            v22 = ARGB4444ToYRow_Any_NEON;
            if ((a9 & 7) == 0)
            {
              v22 = ARGB4444ToYRow_NEON;
            }

            if ((v18 & 0x100) != 0)
            {
              v23 = v22;
            }

            else
            {
              v23 = ARGB4444ToYRow_C;
            }

            v24 = cpu_info_;
            if (!cpu_info_)
            {
              v25 = a6;
              v26 = v15;
              v27 = a4;
              v28 = AArch64CpuCaps();
              a4 = v27;
              v15 = v26;
              a6 = v25;
              v24 = v28 | 3;
              cpu_info_ = v28 | 3;
            }

            v29 = ARGB4444ToUVRow_Any_NEON;
            if ((a9 & 0xF) == 0)
            {
              v29 = ARGB4444ToUVRow_NEON;
            }

            if ((v24 & 0x100) != 0)
            {
              v30 = v29;
            }

            else
            {
              v30 = ARGB4444ToUVRow_C;
            }

            if (v17 < 2)
            {
              goto LABEL_34;
            }

            v31 = 0;
            v38 = a4;
            v39 = v15;
            v36 = 2 * a4;
            v37 = 2 * v15;
            v32 = v15;
            v35 = a6;
            do
            {
              v33 = v30;
              v30(v16, v32, v13, v14, a9);
              v23(v16, v12, a9);
              v23(&v16[v39], v12 + v38, a9);
              v30 = v33;
              v16 += v37;
              v12 += v36;
              v13 = (v13 + v35);
              v14 = (v14 + a8);
              v31 += 2;
            }

            while (v31 < (v17 - 1));
            if (v17)
            {
LABEL_34:
              v30(v16, 0, v13, v14, a9);
              v23(v16, v12, a9);
            }

            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t I420ToI010(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, int a8, uint64_t a9, int a10, uint64_t a11, int a12, int a13, int a14)
{
  if (a1)
  {
    v14 = 1;
  }

  else
  {
    v14 = a7 == 0;
  }

  v15 = !v14;
  v16 = 0xFFFFFFFFLL;
  if (a9)
  {
    v17 = a5 == 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = v17 || a3 == 0;
  if (!v18 && (v15 & 1) == 0 && a11 && a13 >= 1 && a14 != 0)
  {
    v20 = (a13 + 1) >> 1;
    v21 = (1 - a14) >> 1;
    v22 = a1 + ~a14 * a2;
    if (a14 >= 0)
    {
      v23 = a6;
    }

    else
    {
      v23 = -a6;
    }

    if (a14 < 0)
    {
      v24 = a5 + (v21 - 1) * a6;
    }

    else
    {
      v24 = a5;
    }

    if (a14 >= 0)
    {
      v25 = a4;
    }

    else
    {
      v25 = -a4;
    }

    if (a14 < 0)
    {
      v26 = a3 + (v21 - 1) * a4;
    }

    else
    {
      v26 = a3;
    }

    if (a14 >= 0)
    {
      v27 = a14;
    }

    else
    {
      a2 = -a2;
      a1 = v22;
      v27 = -a14;
    }

    if (a14 < 0)
    {
      v28 = (1 - a14) >> 1;
    }

    else
    {
      v28 = (a14 + 1) >> 1;
    }

    Convert8To16Plane(a1, a2, a7, a8, 1024, a13, v27);
    Convert8To16Plane(v26, v25, a9, a10, 1024, v20, v28);
    Convert8To16Plane(v24, v23, a11, a12, 1024, v20, v28);
    return 0;
  }

  return v16;
}

uint64_t I420ToNV12(char *a1, int a2, unint64_t a3, int a4, unint64_t a5, int a6, uint64_t a7, int a8, _BYTE *a9, int a10, int a11, int a12)
{
  if (a1)
  {
    v12 = 1;
  }

  else
  {
    v12 = a7 == 0;
  }

  v13 = v12;
  if (a11 < 1 || a9 == 0 || a5 == 0 || a3 == 0 || v13 == 0 || a12 == 0)
  {
    return 0xFFFFFFFFLL;
  }

  v20 = (1 - a12) >> 1;
  v21 = &a1[~a12 * a2];
  if (a12 >= 0)
  {
    v22 = a6;
  }

  else
  {
    v22 = -a6;
  }

  if (a12 < 0)
  {
    v23 = a5 + (v20 - 1) * a6;
  }

  else
  {
    v23 = a5;
  }

  if (a12 >= 0)
  {
    v24 = a4;
  }

  else
  {
    v24 = -a4;
  }

  if (a12 < 0)
  {
    v25 = a3 + (v20 - 1) * a4;
  }

  else
  {
    v25 = a3;
  }

  if (a12 >= 0)
  {
    v26 = a12;
  }

  else
  {
    a2 = -a2;
    a1 = v21;
    v26 = -a12;
  }

  if (a12 < 0)
  {
    v27 = (1 - a12) >> 1;
  }

  else
  {
    v27 = (a12 + 1) / 2;
  }

  if (a7)
  {
    CopyPlane(a1, a2, a7, a8, a11, v26);
  }

  MergeUVPlane(v25, v24, v23, v22, a9, a10, (a11 + 1) / 2, v27);
  return 0;
}

uint64_t ARGBToNV12(unsigned __int8 *a1, uint64_t a2, int8x16_t *a3, int a4, _BYTE *a5, int a6, int a7, unsigned int a8)
{
  result = 0xFFFFFFFFLL;
  if (!a1)
  {
    return result;
  }

  v10 = a3;
  if (!a3)
  {
    return result;
  }

  v11 = a5;
  if (!a5)
  {
    return result;
  }

  if (a7 < 1)
  {
    return result;
  }

  v12 = a8;
  if (!a8)
  {
    return result;
  }

  v13 = a2;
  if ((a8 & 0x80000000) != 0)
  {
    v12 = -a8;
    a1 += (~a8 * a2);
    v13 = -a2;
    v14 = cpu_info_;
    if (cpu_info_)
    {
      goto LABEL_8;
    }

LABEL_37:
    v35 = a7;
    v36 = AArch64CpuCaps();
    a7 = v35;
    v14 = v36 | 3;
    cpu_info_ = v36 | 3;
    goto LABEL_8;
  }

  v14 = cpu_info_;
  if (!cpu_info_)
  {
    goto LABEL_37;
  }

LABEL_8:
  v15 = a7 + 1;
  v16 = a7 & 0xF;
  v17 = ARGBToYRow_Any_NEON;
  if ((a7 & 0xF) == 0)
  {
    v17 = ARGBToYRow_NEON;
  }

  if ((v14 & 0x100) != 0)
  {
    v18 = v17;
  }

  else
  {
    v18 = ARGBToYRow_C;
  }

  v19 = cpu_info_;
  if (!cpu_info_)
  {
    v20 = a7;
    v21 = AArch64CpuCaps();
    a7 = v20;
    v19 = v21 | 3;
    cpu_info_ = v21 | 3;
  }

  v38 = a7;
  v40 = v18;
  v22 = v15 >> 1;
  v23 = ARGBToUVRow_Any_NEON;
  if (!v16)
  {
    v23 = ARGBToUVRow_NEON;
  }

  if ((v19 & 0x100) != 0)
  {
    v24 = v23;
  }

  else
  {
    v24 = ARGBToUVRow_C;
  }

  v25 = cpu_info_;
  if (!cpu_info_)
  {
    v26 = AArch64CpuCaps();
    v25 = v26 | 3;
    cpu_info_ = v26 | 3;
  }

  v27 = MergeUVRow_Any_NEON;
  if ((v15 & 0x1E) == 0)
  {
    v27 = MergeUVRow_NEON;
  }

  if ((v25 & 0x100) != 0)
  {
    v28 = v27;
  }

  else
  {
    v28 = MergeUVRow_C;
  }

  v39 = v15 >> 1;
  v29 = v22 + 31;
  v30 = malloc_type_malloc((2 * (v22 + 31)) | 0x3Fu, 0x5A7728B4uLL);
  v31 = (v30 + 63) & 0xFFFFFFFFFFFFFFC0;
  if (v31)
  {
    v37 = v30;
    v32 = v29 & 0x7FFFFFE0;
    if (v12 < 2)
    {
      goto LABEL_32;
    }

    v33 = v13;
    v34 = 0;
    v44 = a4;
    v45 = v33;
    v46 = v33;
    v42 = 2 * a4;
    v43 = 2 * v33;
    do
    {
      v24(a1, v46, v31, (v31 + v32), v38);
      v28(v31, v31 + v32, v11, v39);
      v40(a1, v10, v38);
      v40(&a1[v45], (v10 + v44), v38);
      a1 += v43;
      v10 = (v10 + v42);
      v11 += a6;
      v34 += 2;
    }

    while (v34 < (v12 - 1));
    if (v12)
    {
LABEL_32:
      v24(a1, 0, v31, (v31 + v32), v38);
      v28(v31, v31 + v32, v11, v39);
      v40(a1, v10, v38);
    }

    free(v37);
  }

  return v31 == 0;
}

uint64_t ConvertToI420(uint64_t a1, int a2, unint64_t a3, unsigned int a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, unsigned int a9, int a10, unsigned __int8 *a11, unsigned int a12, int a13, int a14, int a15)
{
  v107 = a8;
  v105 = a6;
  v19 = a14;
  v20 = a15;
  if (a15 > 892679499)
  {
    if (a15 <= 1195724873)
    {
      if (a15 > 909202776)
      {
        if (a15 == 909202777)
        {
          v21 = "YU16I422YU24I444YUYVYUY2yuvsYUY2HDYCUYVY2vuyUYVYJPEGMJPGdmb1MJPGBA81BGGRRGB3raw BGR324BG";
        }

        else
        {
          if (a15 != 1129923656)
          {
            goto LABEL_45;
          }

          v21 = "HDYCUYVY2vuyUYVYJPEGMJPGdmb1MJPGBA81BGGRRGB3raw BGR324BG";
        }
      }

      else if (a15 == 892679500)
      {
        v21 = &unk_273BDAFC8;
      }

      else
      {
        if (a15 != 892745036)
        {
          goto LABEL_45;
        }

        v21 = &unk_273BDAFD0;
      }
    }

    else if (a15 <= 1448695128)
    {
      if (a15 == 1195724874)
      {
        v21 = "JPEGMJPGdmb1MJPGBA81BGGRRGB3raw BGR324BG";
      }

      else
      {
        if (a15 != 1448433993)
        {
          goto LABEL_45;
        }

        v21 = "IYUVI420YU12I420YU16I422YU24I444YUYVYUY2yuvsYUY2HDYCUYVY2vuyUYVYJPEGMJPGdmb1MJPGBA81BGGRRGB3raw BGR324BG";
      }
    }

    else
    {
      switch(a15)
      {
        case 1448695129:
          v21 = "YUYVYUY2yuvsYUY2HDYCUYVY2vuyUYVYJPEGMJPGdmb1MJPGBA81BGGRRGB3raw BGR324BG";
          break;
        case 1937143161:
          v21 = "yuvsYUY2HDYCUYVY2vuyUYVYJPEGMJPGdmb1MJPGBA81BGGRRGB3raw BGR324BG";
          break;
        case 2037741106:
          v21 = "2vuyUYVYJPEGMJPGdmb1MJPGBA81BGGRRGB3raw BGR324BG";
          break;
        default:
          goto LABEL_45;
      }
    }
  }

  else if (a15 <= 828534115)
  {
    if (a15 > 825570612)
    {
      if (a15 == 825570613)
      {
        v21 = &unk_273BDAFD8;
      }

      else
      {
        if (a15 != 825770306)
        {
          goto LABEL_45;
        }

        v21 = "BA81BGGRRGB3raw BGR324BG";
      }
    }

    else if (a15 == 402653184)
    {
      v21 = &unk_273BDAFC0;
    }

    else
    {
      if (a15 != 0x20000000)
      {
        goto LABEL_45;
      }

      v21 = "";
    }
  }

  else if (a15 <= 859981649)
  {
    if (a15 == 828534116)
    {
      v21 = "dmb1MJPGBA81BGGRRGB3raw BGR324BG";
    }

    else
    {
      if (a15 != 842093913)
      {
        goto LABEL_45;
      }

      v21 = "YU12I420YU16I422YU24I444YUYVYUY2yuvsYUY2HDYCUYVY2vuyUYVYJPEGMJPGdmb1MJPGBA81BGGRRGB3raw BGR324BG";
    }
  }

  else
  {
    switch(a15)
    {
      case 859981650:
        v21 = "RGB3raw BGR324BG";
        break;
      case 861030210:
        v21 = "BGR324BG";
        break;
      case 875713881:
        v21 = "YU24I444YUYVYUY2yuvsYUY2HDYCUYVY2vuyUYVYJPEGMJPGdmb1MJPGBA81BGGRRGB3raw BGR324BG";
        break;
      default:
        goto LABEL_45;
    }
  }

  v20 = *(v21 + 1);
LABEL_45:
  if (a13 >= 0)
  {
    v22 = a13;
  }

  else
  {
    v22 = -a13;
  }

  v28 = v20 != 808596553 && v20 != 842094158 && v20 != 825382478 && v20 != 842094169 && a14 != 0 || a3 == a1;
  if (SHIDWORD(a11) >= 0)
  {
    v29 = HIDWORD(a11);
  }

  else
  {
    v29 = -HIDWORD(a11);
  }

  if (SHIDWORD(a11) >= 0)
  {
    v30 = v22;
  }

  else
  {
    v30 = -v22;
  }

  v31 = 0xFFFFFFFFLL;
  if (!a13)
  {
    return v31;
  }

  if (!HIDWORD(a11))
  {
    return v31;
  }

  if (!a1)
  {
    return v31;
  }

  if (!a3)
  {
    return v31;
  }

  if (!a5)
  {
    return v31;
  }

  if (!a7)
  {
    return v31;
  }

  v32 = a11;
  if ((a11 - 0x20000000) < 0xE0000001)
  {
    return v31;
  }

  v33 = a12;
  if (a12 < 1)
  {
    return v31;
  }

  v104 = v22;
  if (v28)
  {
    v98 = v29;
    v34 = v22 * a12;
    v35 = ((v22 + 1) >> 1) * ((a12 + 1) >> 1);
    v36 = malloc_type_malloc(v34 + 2 * v35, 0x100004077774924uLL);
    if (!v36)
    {
      return 1;
    }

    v37 = (v36 + v34);
    v103 = (v36 + v34 + v35);
    a6 = (a12 + 1) >> 1;
    v38 = a12;
    v39 = v36;
    v19 = a14;
    v33 = a12;
    a8 = a6;
    v32 = a11;
    v29 = v98;
  }

  else
  {
    v36 = 0;
    a8 = a8;
    v103 = a7;
    a6 = a6;
    v38 = a4;
    v37 = a5;
    v39 = a3;
  }

  v40 = v32 + 1;
  v41 = v40 & 0xFFFFFFFFFFFFFFFELL;
  v101 = v37;
  v102 = v36;
  v99 = a8;
  v100 = a6;
  if (v20 > 875836497)
  {
    if (v20 > 1195521073)
    {
      if (v20 <= 1346520913)
      {
        if (v20 != 1195521074)
        {
          if (v20 == 1329743698)
          {
            v81 = v30;
            v44 = v39;
            v46 = v38;
            v49 = v33;
            v50 = ARGB1555ToI420((a1 + (2 * (a9 + v32 * a10))), 2 * v32, v39, v38, v37, a6, v103, a8, v33, v81);
            goto LABEL_165;
          }

          goto LABEL_170;
        }

        v89 = v30;
        v44 = v39;
        v46 = v38;
        v49 = v33;
        v50 = RGB24ToI420((a1 + 3 * (v32 * a10 + a9)), 3 * v32, v39, v38, v37, a6, v103, a8, v33, v89);
      }

      else
      {
        switch(v20)
        {
          case 1346520914:
            v86 = v30;
            v44 = v39;
            v46 = v38;
            v49 = v33;
            v50 = RGB565ToI420((a1 + (2 * (a9 + v32 * a10))), 2 * v32, v39, v38, v37, a6, v103, a8, v33, v86);
            break;
          case 1380401729:
            v83 = v30;
            v44 = v39;
            v46 = v38;
            v49 = v33;
            v50 = ABGRToI420((a1 + (4 * (a9 + v32 * a10))), 4 * v32, v39, v38, v37, a6, v103, a8, v33, v83);
            break;
          case 1498831189:
            if (a9)
            {
              v58 = v103;
            }

            else
            {
              v58 = v37;
            }

            if (a9)
            {
              v59 = v37;
            }

            else
            {
              v59 = v103;
            }

            v60 = a6;
            if (a9)
            {
              LODWORD(a6) = a8;
              LODWORD(a8) = v60;
            }

            v79 = v30;
            v44 = v39;
            v46 = v38;
            v49 = v33;
            v50 = UYVYToI420((a1 + (2 * (a9 + v41 * a10))), 2 * v41, v39, v38, v58, a6, v59, a8, v33, v79);
            break;
          default:
            goto LABEL_170;
        }
      }

      goto LABEL_165;
    }

    if (v20 > 1094862673)
    {
      switch(v20)
      {
        case 1094862674:
          v84 = v30;
          v44 = v39;
          v46 = v38;
          v49 = v33;
          v50 = RGBAToI420((a1 + (4 * (a9 + v32 * a10))), 4 * v32, v39, v38, v37, a6, v103, a8, v33, v84);
          break;
        case 1095911234:
          v82 = v30;
          v44 = v39;
          v46 = v38;
          v49 = v33;
          v50 = BGRAToI420((a1 + (4 * (a9 + v32 * a10))), 4 * v32, v39, v38, v37, a6, v103, a8, v33, v82);
          break;
        case 1111970369:
          v78 = v30;
          v44 = v39;
          v46 = v38;
          v49 = v33;
          v50 = ARGBToI420((a1 + (4 * (a9 + v32 * a10))), 4 * v32, v39, v38, v37, a6, v103, a8, v33, v78);
          goto LABEL_165;
        default:
          goto LABEL_170;
      }

      goto LABEL_165;
    }

    if (v20 == 875836498)
    {
      v88 = v30;
      v44 = v39;
      v46 = v38;
      v49 = v33;
      v50 = ARGB4444ToI420((a1 + (2 * (a9 + v32 * a10))), 2 * v32, v39, v38, v37, a6, v103, a8, v33, v88);
      goto LABEL_165;
    }

    v61 = 909203033;
    goto LABEL_128;
  }

  if (v20 > 842094168)
  {
    if (v20 > 844715352)
    {
      if (v20 == 844715353)
      {
        if (a9)
        {
          v72 = v103;
        }

        else
        {
          v72 = v37;
        }

        if (a9)
        {
          v73 = v37;
        }

        else
        {
          v73 = v103;
        }

        v74 = a6;
        if (a9)
        {
          LODWORD(a6) = a8;
          LODWORD(a8) = v74;
        }

        v85 = v30;
        v44 = v39;
        v46 = v38;
        v49 = v33;
        v50 = YUY2ToI420((a1 + (2 * (a9 + v41 * a10))), 2 * v41, v39, v38, v72, a6, v73, a8, v33, v85);
        goto LABEL_165;
      }

      if (v20 != 875714137 && v20 != 875836489)
      {
        goto LABEL_170;
      }

      v51 = 2 * v29;
      if (v20 == 875714137)
      {
        v52 = 2 * v29;
      }

      else
      {
        v52 = v29;
      }

      if (v20 == 875714137)
      {
        v51 = v29;
      }

      v97 = v30;
      v95 = __PAIR64__(v33, v30);
      v53 = (a1 + v32 * a10 + a9);
      v54 = (a1 + v32 * (v52 + a10) + a9);
      v94 = __PAIR64__(v33, a8);
      v93 = v103;
      LODWORD(v90) = a6;
      v77 = v37;
      v55 = (a1 + v32 * (v51 + a10) + a9);
      v56 = v32;
      v57 = v32;
LABEL_136:
      v44 = v39;
      v46 = v38;
      v49 = v33;
      v50 = libyuv::I4xxToI420(v53, v32, v54, v56, v55, v57, v39, v38, v77, v90, v93, v94, v95, HIDWORD(v95), v97, a8, v100);
      goto LABEL_165;
    }

    if (v20 == 842094169)
    {
LABEL_140:
      v66 = a1 + (v29 * v32);
      v67 = (a9 + (a9 >> 31)) >> 1;
      v68 = (v66 + (v40 >> 1) * (a10 / 2) + v67);
      v69 = (v66 + (v40 >> 1) * (a10 / 2 + ((v29 + 1) >> 1)) + v67);
      if (v20 == 842094169)
      {
        v70 = v69;
      }

      else
      {
        v70 = v68;
      }

      if (v20 == 842094169)
      {
        v71 = v68;
      }

      else
      {
        v71 = v69;
      }

      v96 = v30;
      v44 = v39;
      v46 = v38;
      v49 = v33;
      v50 = I420Rotate((a1 + v32 * a10 + a9), v32, v70, v40 >> 1, v71, v40 >> 1, v39, v38, v37, a6, v103, a8, v33, v96, v19);
      goto LABEL_165;
    }

    v61 = 842150985;
LABEL_128:
    if (v20 != v61)
    {
      goto LABEL_170;
    }

    v53 = (a1 + v32 * a10 + a9);
    v56 = (v40 >> 1);
    v62 = a1 + (v29 * v32);
    v63 = (a9 + (a9 >> 31)) >> 1;
    v64 = (v62 + v56 * a10 + v63);
    v65 = (v62 + v56 * (v29 + a10) + v63);
    if (v20 == 909203033)
    {
      v54 = v65;
    }

    else
    {
      v54 = v64;
    }

    if (v20 == 909203033)
    {
      v55 = v64;
    }

    else
    {
      v55 = v65;
    }

    HIDWORD(v95) = (v33 + 1) >> 1;
    v97 = v30;
    v94 = __PAIR64__(v33, a8);
    v93 = v103;
    LODWORD(v90) = a6;
    v77 = v37;
    LODWORD(v95) = v30;
    v57 = v56;
    goto LABEL_136;
  }

  if (v20 > 808596552)
  {
    if (v20 != 808596553)
    {
      if (v20 == 825382478)
      {
        v42 = (a1 + (v29 * v32) + v41 * (a10 / 2) + ((a9 + (a9 >> 31)) & 0xFFFFFFFE));
        v92 = __PAIR64__(v19, v30);
        v43 = (a1 + v32 * a10 + a9);
        v91 = __PAIR64__(v33, a6);
        v76 = v37;
        v44 = v39;
        v45 = v39;
        v46 = v38;
        v47 = v38;
        v48 = v103;
        goto LABEL_148;
      }

      if (v20 == 842094158)
      {
        v42 = (a1 + (v29 * v32) + v41 * ((a10 + (a10 >> 31)) >> 1) + ((a9 + (a9 >> 31)) & 0xFFFFFFFE));
        v92 = __PAIR64__(v19, v30);
        v43 = (a1 + v32 * a10 + a9);
        v91 = __PAIR64__(v33, a8);
        v76 = v103;
        v44 = v39;
        v45 = v39;
        a8 = a6;
        v46 = v38;
        v47 = v38;
        v48 = v37;
LABEL_148:
        v49 = v33;
        v50 = NV12ToI420Rotate(v43, v32, v42, v41, v45, v47, v48, a8, v76, v91, HIDWORD(v91), v92, SHIDWORD(v92));
        goto LABEL_165;
      }

LABEL_170:
      v31 = 0xFFFFFFFFLL;
      if (!v28)
      {
        return v31;
      }

      goto LABEL_168;
    }

    goto LABEL_140;
  }

  if (v20 != 544694642)
  {
    if (v20 == 808465481)
    {
      v80 = v30;
      v44 = v39;
      v46 = v38;
      v49 = v33;
      v50 = I400ToI420((a1 + v32 * a10 + a9), v32, v39, v38, v37->i8, a6, v103->i8, a8, v33, v80);
      goto LABEL_165;
    }

    goto LABEL_170;
  }

  v87 = v30;
  v44 = v39;
  v46 = v38;
  v49 = v33;
  v50 = RAWToI420((a1 + 3 * (v32 * a10 + a9)), 3 * v32, v39, v38, v37, a6, v103, a8, v33, v87);
LABEL_165:
  v31 = v50;
  if (v28)
  {
    if (!v50)
    {
      v31 = I420Rotate(v44, v46, v101, v100, v103->i8, v99, a3, a4, a5, v105, a7, v107, v49, v104, v19);
    }

LABEL_168:
    free(v102);
  }

  return v31;
}

uint64_t AArch64CpuCaps()
{
  v6 = 8;
  v7 = 0;
  if (sysctlbyname("hw.optional.arm.FEAT_DotProd", &v7, &v6, 0, 0))
  {
    v0 = 1;
  }

  else
  {
    v0 = v7 == 0;
  }

  if (v0)
  {
    return 256;
  }

  v6 = 8;
  v7 = 0;
  v2 = sysctlbyname("hw.optional.arm.FEAT_I8MM", &v7, &v6, 0, 0);
  result = 768;
  if (!v2)
  {
    if (v7)
    {
      v6 = 8;
      v7 = 0;
      v3 = sysctlbyname("hw.optional.arm.FEAT_SME", &v7, &v6, 0, 0);
      result = 1792;
      if (!v3)
      {
        if (v7)
        {
          v6 = 8;
          v7 = 0;
          v4 = sysctlbyname("hw.optional.arm.FEAT_SME2", &v7, &v6, 0, 0);
          if (v7)
          {
            v5 = v4 == 0;
          }

          else
          {
            v5 = 0;
          }

          if (v5)
          {
            return 26368;
          }

          else
          {
            return 9984;
          }
        }
      }
    }
  }

  return result;
}

char *CopyPlane(char *result, int a2, uint64_t a3, int a4, int a5, int a6)
{
  if (a5 >= 1 && a6)
  {
    v6 = result;
    v7 = (a6 < 0 ? a3 + ~a6 * a4 : a3);
    v8 = a6 >= 0 ? a4 : -a4;
    v9 = a6 >= 0 ? a6 : -a6;
    v10 = v9 * a5;
    v11 = v8 == a5 ? 0 : a2;
    v12 = v8 == a5 ? 0 : v8;
    if (v8 == a5)
    {
      v13 = 1;
    }

    else
    {
      v10 = a5;
      v13 = v9;
    }

    v14 = a2 == a5 ? v11 : a2;
    v15 = a2 == a5 ? v12 : v8;
    v16 = a2 == a5 ? v10 : a5;
    v17 = a2 == a5 ? v13 : v9;
    if (v7 != result || v14 != v15)
    {
      v18 = cpu_info_;
      if (!cpu_info_)
      {
        v19 = AArch64CpuCaps();
        v18 = v19 | 3;
        cpu_info_ = v19 | 3;
      }

      v20 = CopyRow_Any_NEON;
      if ((v16 & 0x1F) == 0)
      {
        v20 = CopyRow_NEON;
      }

      if ((v18 & 0x100) != 0)
      {
        v21 = v20;
        goto LABEL_42;
      }

      v21 = CopyRow_C;
      for (result = CopyRow_C(v6, v7, v16); ; result = v21(v6, v7, v16))
      {
        v6 += v14;
        v7 += v15;
        if (!--v17)
        {
          break;
        }

LABEL_42:
        ;
      }
    }
  }

  return result;
}

uint64_t Convert16To8Plane(uint64_t result, int a2, int8x16_t *a3, int a4, uint64_t a5, int a6, int a7)
{
  if (a6 >= 1 && a7)
  {
    v8 = result;
    if (a7 < 0)
    {
      v9 = (a3 + ~a7 * a4);
    }

    else
    {
      v9 = a3;
    }

    if (a7 >= 0)
    {
      v10 = a4;
    }

    else
    {
      v10 = -a4;
    }

    if (a7 >= 0)
    {
      v11 = a7;
    }

    else
    {
      v11 = -a7;
    }

    v12 = v11 * a6;
    if (v10 == a6)
    {
      v13 = 0;
    }

    else
    {
      v13 = a2;
    }

    if (v10 == a6)
    {
      v14 = 0;
    }

    else
    {
      v14 = v10;
    }

    if (v10 == a6)
    {
      v15 = 1;
    }

    else
    {
      v12 = a6;
      v15 = v11;
    }

    if (a2 == a6)
    {
      v16 = v13;
    }

    else
    {
      v16 = a2;
    }

    if (a2 == a6)
    {
      v17 = v14;
    }

    else
    {
      v17 = v10;
    }

    if (a2 == a6)
    {
      v18 = v12;
    }

    else
    {
      v18 = a6;
    }

    if (a2 == a6)
    {
      v19 = v15;
    }

    else
    {
      v19 = v11;
    }

    v20 = cpu_info_;
    if (!cpu_info_)
    {
      v21 = AArch64CpuCaps();
      v20 = v21 | 3;
      cpu_info_ = v21 | 3;
    }

    v22 = Convert16To8Row_Any_NEON;
    if ((v18 & 0xF) == 0)
    {
      v22 = Convert16To8Row_NEON;
    }

    if ((v20 & 0x100) != 0)
    {
      v23 = v22;
    }

    else
    {
      v23 = Convert16To8Row_C;
    }

    v24 = 2 * v16;
    do
    {
      result = v23(v8, v9, a5, v18);
      v9 = (v9 + v17);
      v8 = (v8 + v24);
      --v19;
    }

    while (v19);
  }

  return result;
}

uint64_t Convert8To16Plane(uint64_t result, int a2, uint64_t a3, int a4, uint64_t a5, int a6, int a7)
{
  if (a6 >= 1 && a7)
  {
    v8 = result;
    v9 = a3 + 2 * ((~a7 * a4) & (a7 >> 31));
    if (a7 >= 0)
    {
      v10 = a4;
    }

    else
    {
      v10 = -a4;
    }

    if (a7 >= 0)
    {
      v11 = a7;
    }

    else
    {
      v11 = -a7;
    }

    v12 = v11 * a6;
    if (v10 == a6)
    {
      v13 = 0;
    }

    else
    {
      v13 = a2;
    }

    if (v10 == a6)
    {
      v14 = 0;
    }

    else
    {
      v14 = v10;
    }

    if (v10 == a6)
    {
      v15 = 1;
    }

    else
    {
      v12 = a6;
      v15 = v11;
    }

    if (a2 == a6)
    {
      v16 = v13;
    }

    else
    {
      v16 = a2;
    }

    if (a2 == a6)
    {
      v17 = v14;
    }

    else
    {
      v17 = v10;
    }

    if (a2 == a6)
    {
      v18 = v12;
    }

    else
    {
      v18 = a6;
    }

    if (a2 == a6)
    {
      v19 = v15;
    }

    else
    {
      v19 = v11;
    }

    v20 = cpu_info_;
    if (!cpu_info_)
    {
      v21 = AArch64CpuCaps();
      v20 = v21 | 3;
      cpu_info_ = v21 | 3;
    }

    v22 = Convert8To16Row_Any_NEON;
    if ((v18 & 0xF) == 0)
    {
      v22 = Convert8To16Row_NEON;
    }

    if ((v20 & 0x100) != 0)
    {
      v23 = v22;
    }

    else
    {
      v23 = Convert8To16Row_C;
    }

    v24 = 2 * v17;
    do
    {
      result = (v23)(v8, v9, a5, v18);
      v8 += v16;
      v9 += v24;
      --v19;
    }

    while (v19);
  }

  return result;
}

const char *SplitUVPlane(const char *result, int a2, int8x16_t *a3, int a4, int8x16_t *a5, int a6, int a7, int a8)
{
  if (a7 >= 1 && a8)
  {
    v8 = result;
    if (a8 < 0)
    {
      v9 = (a3 + ~a8 * a4);
    }

    else
    {
      v9 = a3;
    }

    if (a8 >= 0)
    {
      v10 = a4;
    }

    else
    {
      v10 = -a4;
    }

    if (a8 < 0)
    {
      v11 = (a5 + ~a8 * a6);
    }

    else
    {
      v11 = a5;
    }

    if (a8 >= 0)
    {
      v12 = a6;
    }

    else
    {
      v12 = -a6;
    }

    if (a8 >= 0)
    {
      v13 = a8;
    }

    else
    {
      v13 = -a8;
    }

    v14 = v13 * a7;
    if (v12 == a7)
    {
      v15 = 0;
    }

    else
    {
      v15 = a2;
    }

    if (v12 == a7)
    {
      v16 = 0;
    }

    else
    {
      v16 = v10;
    }

    if (v12 == a7)
    {
      v17 = 0;
    }

    else
    {
      v17 = v12;
    }

    if (v12 == a7)
    {
      v18 = 1;
    }

    else
    {
      v14 = a7;
      v18 = v13;
    }

    if (v10 != a7)
    {
      v15 = a2;
      v16 = v10;
      v17 = v12;
      v14 = a7;
      v18 = v13;
    }

    if (a2 == 2 * a7)
    {
      v19 = v15;
    }

    else
    {
      v19 = a2;
    }

    if (a2 == 2 * a7)
    {
      v20 = v16;
    }

    else
    {
      v20 = v10;
    }

    if (a2 == 2 * a7)
    {
      v21 = v17;
    }

    else
    {
      v21 = v12;
    }

    if (a2 == 2 * a7)
    {
      v22 = v14;
    }

    else
    {
      v22 = a7;
    }

    if (a2 == 2 * a7)
    {
      v23 = v18;
    }

    else
    {
      v23 = v13;
    }

    v24 = cpu_info_;
    if (!cpu_info_)
    {
      v25 = AArch64CpuCaps();
      v24 = v25 | 3;
      cpu_info_ = v25 | 3;
    }

    v26 = SplitUVRow_Any_NEON;
    if ((v22 & 0xF) == 0)
    {
      v26 = SplitUVRow_NEON;
    }

    if ((v24 & 0x100) != 0)
    {
      v27 = v26;
      goto LABEL_54;
    }

    v27 = SplitUVRow_C;
    for (result = SplitUVRow_C(v8, v9, v11, v22); ; result = v27(v8, v9, v11, v22))
    {
      v9 = (v9 + v20);
      v11 = (v11 + v21);
      v8 += v19;
      if (!--v23)
      {
        break;
      }

LABEL_54:
      ;
    }
  }

  return result;
}

unint64_t MergeUVPlane(unint64_t result, int a2, unint64_t a3, int a4, _BYTE *a5, int a6, int a7, int a8)
{
  if (a7 >= 1 && a8)
  {
    v9 = result;
    if (a8 < 0)
    {
      v10 = &a5[~a8 * a6];
    }

    else
    {
      v10 = a5;
    }

    if (a8 >= 0)
    {
      v11 = a6;
    }

    else
    {
      v11 = -a6;
    }

    if (a8 >= 0)
    {
      v12 = a8;
    }

    else
    {
      v12 = -a8;
    }

    v13 = v12 * a7;
    if (v11 == 2 * a7)
    {
      v14 = 0;
    }

    else
    {
      v14 = a2;
    }

    if (v11 == 2 * a7)
    {
      v15 = 0;
    }

    else
    {
      v15 = a4;
    }

    if (v11 == 2 * a7)
    {
      v16 = 0;
    }

    else
    {
      v16 = v11;
    }

    if (v11 == 2 * a7)
    {
      v17 = 1;
    }

    else
    {
      v13 = a7;
      v17 = v12;
    }

    if (a4 != a7)
    {
      v14 = a2;
      v15 = a4;
      v16 = v11;
      v13 = a7;
      v17 = v12;
    }

    if (a2 == a7)
    {
      v18 = v14;
    }

    else
    {
      v18 = a2;
    }

    if (a2 == a7)
    {
      v19 = v15;
    }

    else
    {
      v19 = a4;
    }

    if (a2 == a7)
    {
      v20 = v16;
    }

    else
    {
      v20 = v11;
    }

    if (a2 == a7)
    {
      v21 = v13;
    }

    else
    {
      v21 = a7;
    }

    if (a2 == a7)
    {
      v22 = v17;
    }

    else
    {
      v22 = v12;
    }

    v23 = cpu_info_;
    if (!cpu_info_)
    {
      v24 = AArch64CpuCaps();
      v23 = v24 | 3;
      cpu_info_ = v24 | 3;
    }

    v25 = MergeUVRow_Any_NEON;
    if ((v21 & 0xF) == 0)
    {
      v25 = MergeUVRow_NEON;
    }

    if ((v23 & 0x100) != 0)
    {
      v26 = v25;
      goto LABEL_48;
    }

    v26 = MergeUVRow_C;
    for (result = MergeUVRow_C(v9, a3, v10, v21); ; result = v26(v9, a3, v10, v21))
    {
      v9 += v18;
      a3 += v19;
      v10 += v20;
      if (!--v22)
      {
        break;
      }

LABEL_48:
      ;
    }
  }

  return result;
}

uint64_t MergeUVPlane_16(uint64_t result, int a2, uint16x8_t *a3, int a4, uint64_t a5, int a6, uint64_t a7, int a8, int a9)
{
  if (a7 >= 1 && a8)
  {
    v9 = a7;
    v10 = a4;
    v12 = a2;
    v13 = result;
    if (a8 >= 0)
    {
      v14 = a6;
    }

    else
    {
      v14 = -a6;
    }

    if (a8 >= 0)
    {
      v15 = a8;
    }

    else
    {
      v15 = -a8;
    }

    if (a2 == a7 && a4 == a7)
    {
      v16 = v14 == 2 * a7;
      if (v14 == 2 * a7)
      {
        v12 = 0;
      }

      else
      {
        v12 = a2;
      }

      if (v14 == 2 * a7)
      {
        v10 = 0;
      }

      else
      {
        v10 = a4;
      }

      if (v14 == 2 * a7)
      {
        v14 = 0;
      }

      if (v16)
      {
        v9 = (v15 * a7);
      }

      else
      {
        v9 = a7;
      }

      if (v16)
      {
        v15 = 1;
      }
    }

    v17 = (a5 + 2 * ((~a8 * a6) & (a8 >> 31)));
    v18 = cpu_info_;
    if (!cpu_info_)
    {
      v19 = AArch64CpuCaps();
      v18 = v19 | 3;
      cpu_info_ = v19 | 3;
    }

    v20 = MergeUVRow_16_Any_NEON;
    if ((v9 & 7) == 0)
    {
      v20 = MergeUVRow_16_NEON;
    }

    v21 = 2 * v12;
    if ((v18 & 0x100) != 0)
    {
      v22 = v20;
    }

    else
    {
      v22 = MergeUVRow_16_C;
    }

    v23 = 2 * v14;
    v24 = 2 * v10;
    do
    {
      result = v22(v13, a3, v17, a9, v9);
      v13 = (v13 + v21);
      v17 = (v17 + v23);
      a3 = (a3 + v24);
      --v15;
    }

    while (v15);
  }

  return result;
}

uint64_t ConvertToMSBPlane_16(uint64_t result, int a2, uint64_t a3, int a4, int a5, int a6, char a7)
{
  if (a5 >= 1 && a6)
  {
    v7 = result;
    v8 = (1 << (16 - a7));
    v9 = (a3 + 2 * ((~a6 * a4) & (a6 >> 31)));
    if (a6 >= 0)
    {
      v10 = a4;
    }

    else
    {
      v10 = -a4;
    }

    if (a6 >= 0)
    {
      v11 = a6;
    }

    else
    {
      v11 = -a6;
    }

    v12 = v11 * a5;
    if (v10 == a5)
    {
      v13 = 0;
    }

    else
    {
      v13 = v10;
    }

    if (v10 == a5)
    {
      v14 = 1;
    }

    else
    {
      v12 = a5;
      v14 = v11;
    }

    if (v10 == a5)
    {
      v15 = 0;
    }

    else
    {
      v15 = a2;
    }

    if (a2 == a5)
    {
      v16 = v13;
    }

    else
    {
      v16 = v10;
    }

    if (a2 == a5)
    {
      v17 = v12;
    }

    else
    {
      v17 = a5;
    }

    if (a2 == a5)
    {
      v18 = v14;
    }

    else
    {
      v18 = v11;
    }

    if (a2 == a5)
    {
      v19 = v15;
    }

    else
    {
      v19 = a2;
    }

    v20 = cpu_info_;
    if (!cpu_info_)
    {
      v21 = AArch64CpuCaps();
      v20 = v21 | 3;
      cpu_info_ = v21 | 3;
    }

    v22 = MultiplyRow_16_Any_NEON;
    if ((v17 & 0xF) == 0)
    {
      v22 = MultiplyRow_16_NEON;
    }

    if ((v20 & 0x100) != 0)
    {
      v23 = v22;
    }

    else
    {
      v23 = MultiplyRow_16_C;
    }

    v24 = 2 * v19;
    v25 = 2 * v16;
    do
    {
      result = v23(v7, v9, v8, v17);
      v7 = (v7 + v24);
      v9 = (v9 + v25);
      --v18;
    }

    while (v18);
  }

  return result;
}

char *SetPlane(char *result, int a2, int a3, int a4, unsigned __int8 a5)
{
  if (a3 >= 1 && a4)
  {
    if (a4 >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = -a2;
    }

    if (a4 >= 0)
    {
      v7 = a4;
    }

    else
    {
      v7 = -a4;
    }

    if (a4 < 0)
    {
      v8 = &result[~a4 * a2];
    }

    else
    {
      v8 = result;
    }

    if (v6 == a3)
    {
      v9 = 0;
    }

    else
    {
      v9 = v6;
    }

    if (v6 == a3)
    {
      v10 = v7;
    }

    else
    {
      v10 = 1;
    }

    v11 = (v10 * a3);
    if (v6 == a3)
    {
      v12 = 1;
    }

    else
    {
      v12 = v7;
    }

    v13 = cpu_info_;
    if (!cpu_info_)
    {
      v14 = AArch64CpuCaps();
      v13 = v14 | 3;
      cpu_info_ = v14 | 3;
    }

    v15 = SetRow_Any_NEON;
    if ((v11 & 0xF) == 0)
    {
      v15 = SetRow_NEON;
    }

    if ((v13 & 0x100) != 0)
    {
      v16 = v15;
      goto LABEL_28;
    }

    v16 = SetRow_C;
    for (result = SetRow_C(v8, a5, v11); ; result = v16(v8, a5, v11))
    {
      v8 += v9;
      if (!--v12)
      {
        break;
      }

LABEL_28:
      ;
    }
  }

  return result;
}

uint64_t I420Rect(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, int a6, unsigned int a7, int a8, int a9, int a10, int a11, unsigned int a12, int a13)
{
  v13 = a10;
  v14 = 0xFFFFFFFFLL;
  v19 = a11 > 255 || a1 == 0 || a3 == 0 || a5 == 0 || a9 < 1 || a10 == 0;
  if (!v19 && ((a8 | a7 | a11) & 0x80000000) == 0 && (a13 | a12) <= 0xFF)
  {
    v20 = a5 + a8 / 2 * a6;
    v21 = (a7 + (a7 >> 31)) >> 1;
    v22 = (a3 + a8 / 2 * a4 + v21);
    v59 = (a10 + 1) >> 1;
    if (a10 >= 0)
    {
      v23 = a2;
    }

    else
    {
      v23 = -a2;
    }

    if (a10 >= 0)
    {
      v24 = (a1 + a8 * a2 + a7);
    }

    else
    {
      v13 = -a10;
      v24 = (a1 + a8 * a2 + a7 + a2 * ~a10);
    }

    if (v23 == a9)
    {
      v25 = 0;
    }

    else
    {
      v25 = v23;
    }

    if (v23 == a9)
    {
      v26 = v13;
    }

    else
    {
      v26 = 1;
    }

    v27 = (v26 * a9);
    if (v23 == a9)
    {
      v28 = 1;
    }

    else
    {
      v28 = v13;
    }

    v29 = cpu_info_;
    if (!cpu_info_)
    {
      v56 = a5 + a8 / 2 * a6;
      v30 = AArch64CpuCaps();
      v20 = v56;
      v29 = v30 | 3;
      cpu_info_ = v30 | 3;
    }

    v31 = (v20 + v21);
    v57 = (a9 + 1) >> 1;
    v32 = SetRow_Any_NEON;
    if ((v27 & 0xF) == 0)
    {
      v32 = SetRow_NEON;
    }

    if ((v29 & 0x100) != 0)
    {
      v33 = v32;
      goto LABEL_41;
    }

    v33 = SetRow_C;
    SetRow_C(v24, a11, v27);
    while (1)
    {
      v24 += v25;
      if (!--v28)
      {
        break;
      }

LABEL_41:
      v33(v24, a11, v27);
    }

    if ((a10 + 1) >= 2)
    {
      if (v59 < 0)
      {
        v34 = -v59;
        v22 += a4 * ~v59;
        v35 = -a4;
      }

      else
      {
        v34 = (a10 + 1) >> 1;
        v35 = a4;
      }

      if (v35 == v57)
      {
        v36 = 0;
      }

      else
      {
        v36 = v35;
      }

      if (v35 == v57)
      {
        v37 = v34;
      }

      else
      {
        v37 = 1;
      }

      v38 = v37 * v57;
      if (v35 == v57)
      {
        v39 = 1;
      }

      else
      {
        v39 = v34;
      }

      v40 = cpu_info_;
      if (!cpu_info_)
      {
        v41 = AArch64CpuCaps();
        v40 = v41 | 3;
        cpu_info_ = v41 | 3;
      }

      v42 = SetRow_Any_NEON;
      if ((v38 & 0xF) == 0)
      {
        v42 = SetRow_NEON;
      }

      if ((v40 & 0x100) != 0)
      {
        v43 = v42;
        goto LABEL_63;
      }

      v43 = SetRow_C;
      SetRow_C(v22, a12, v38);
      while (1)
      {
        v22 += v36;
        if (!--v39)
        {
          break;
        }

LABEL_63:
        v43(v22, a12, v38);
      }

      if (v59 >= 0)
      {
        v44 = a6;
      }

      else
      {
        v44 = -a6;
      }

      if (v59 >= 0)
      {
        v45 = (a10 + 1) >> 1;
      }

      else
      {
        v45 = -v59;
      }

      if (v59 < 0)
      {
        v46 = &v31[a6 * ~v59];
      }

      else
      {
        v46 = v31;
      }

      if (v44 == v57)
      {
        v47 = 0;
      }

      else
      {
        v47 = v44;
      }

      if (v44 == v57)
      {
        v48 = v45;
      }

      else
      {
        v48 = 1;
      }

      v49 = v48 * v57;
      if (v44 == v57)
      {
        v50 = 1;
      }

      else
      {
        v50 = v45;
      }

      v51 = cpu_info_;
      if (!cpu_info_)
      {
        v52 = AArch64CpuCaps();
        v51 = v52 | 3;
        cpu_info_ = v52 | 3;
      }

      v53 = SetRow_Any_NEON;
      if ((v49 & 0xF) == 0)
      {
        v53 = SetRow_NEON;
      }

      if ((v51 & 0x100) != 0)
      {
        v54 = v53;
        goto LABEL_90;
      }

      v54 = SetRow_C;
      SetRow_C(v46, a13, v49);
      while (1)
      {
        v46 += v47;
        if (!--v50)
        {
          break;
        }

LABEL_90:
        v54(v46, a13, v49);
      }
    }

    return 0;
  }

  return v14;
}

void RotatePlane180(char *a1, int a2, unint64_t a3, int a4, uint64_t a5, int a6)
{
  v12 = malloc_type_malloc(a5 + 63, 0xD2CA75C0uLL);
  v13 = (v12 + 63) & 0xFFFFFFFFFFFFFFC0;
  if (v13)
  {
    v30 = a2;
    v28 = v12;
    v14 = cpu_info_;
    if (!cpu_info_)
    {
      v15 = AArch64CpuCaps();
      v14 = v15 | 3;
      cpu_info_ = v15 | 3;
    }

    v16 = (a6 + 1) >> 1;
    v17 = MirrorRow_Any_NEON;
    if ((a5 & 0x1F) == 0)
    {
      v17 = MirrorRow_NEON;
    }

    if ((v14 & 0x100) != 0)
    {
      v18 = v17;
    }

    else
    {
      v18 = MirrorRow_C;
    }

    v19 = cpu_info_;
    if (!cpu_info_)
    {
      v20 = AArch64CpuCaps();
      v19 = v20 | 3;
      cpu_info_ = v20 | 3;
    }

    v21 = CopyRow_Any_NEON;
    if ((a5 & 0x1F) == 0)
    {
      v21 = CopyRow_NEON;
    }

    if ((v19 & 0x100) != 0)
    {
      v22 = v21;
    }

    else
    {
      v22 = CopyRow_C;
    }

    if (v16 >= 1)
    {
      v23 = a6 - 1;
      v24 = a4;
      v25 = &a1[v23 * v30];
      v26 = a3 + v23 * v24;
      v27 = v24;
      v29 = -v24;
      do
      {
        v22(a1, v13, a5);
        v18(v25, a3, a5);
        v18(v13, v26, a5);
        a1 += v30;
        a3 += v27;
        v25 -= v30;
        v26 += v29;
        --v16;
      }

      while (v16);
    }

    free(v28);
  }
}

uint64_t I420Rotate(char *a1, uint64_t a2, char *a3, unsigned int a4, char *a5, unsigned int a6, unint64_t a7, uint64_t a8, unint64_t a9, int a10, unint64_t a11, int a12, int a13, int a14, int a15)
{
  if (a1)
  {
    v16 = 1;
  }

  else
  {
    v16 = a7 == 0;
  }

  v17 = !v16;
  result = 0xFFFFFFFFLL;
  if (!a7)
  {
    return result;
  }

  v19 = a7;
  v20 = a13;
  v21 = a9;
  v22 = !a11 || a9 == 0;
  v23 = v22 || a13 < 1;
  v24 = v23 || a5 == 0;
  v25 = v24 || a3 == 0;
  v26 = !v25 && v17 == 0;
  if (!v26 || a14 == 0)
  {
    return result;
  }

  v28 = a13 + 1;
  v29 = ((a13 + 1) >> 1);
  v30 = (1 - a14) >> 1;
  v31 = &a1[~a14 * a2];
  if (a14 >= 0)
  {
    v32 = a6;
  }

  else
  {
    v32 = -a6;
  }

  v176 = v32;
  if (a14 < 0)
  {
    v33 = &a5[(v30 - 1) * a6];
  }

  else
  {
    v33 = a5;
  }

  if (a14 >= 0)
  {
    v34 = a4;
  }

  else
  {
    v34 = -a4;
  }

  if (a14 < 0)
  {
    v35 = &a3[(v30 - 1) * a4];
  }

  else
  {
    v35 = a3;
  }

  if (a14 >= 0)
  {
    a2 = a2;
  }

  else
  {
    a2 = -a2;
  }

  if (a14 >= 0)
  {
    v36 = a14;
  }

  else
  {
    v36 = -a14;
  }

  if (a14 < 0)
  {
    v37 = v31;
  }

  else
  {
    v37 = a1;
  }

  if (a14 < 0)
  {
    v38 = (1 - a14) >> 1;
  }

  else
  {
    v38 = (a14 + 1) >> 1;
  }

  v177 = v38;
  result = 0xFFFFFFFFLL;
  if (a15 > 179)
  {
    if (a15 == 180)
    {
      RotatePlane180(v37, a2, v19, a8, a13, v36);
      RotatePlane180(v35, v34, a9, a10, v29, v177);
      RotatePlane180(v33, v176, a11, a12, v29, v177);
      return 0;
    }

    if (a15 != 270)
    {
      return result;
    }

    v175 = (v28 >> 1);
    v49 = v19 + (a13 - 1) * a8;
    v50 = cpu_info_;
    if (!cpu_info_)
    {
      v51 = a8;
      v52 = a2;
      v53 = AArch64CpuCaps();
      a2 = v52;
      LODWORD(a8) = v51;
      v20 = a13;
      v50 = v53 | 3;
      cpu_info_ = v53 | 3;
    }

    v171 = v34;
    v54 = -a8;
    v55 = TransposeWx16_Any_NEON;
    if ((v20 & 0xF) == 0)
    {
      v55 = TransposeWx16_NEON;
    }

    if ((v50 & 0x100) != 0)
    {
      v56 = v55;
    }

    else
    {
      v56 = TransposeWx16_C;
    }

    if (v36 < 0x10)
    {
      v60 = v175;
      v61 = a10;
    }

    else
    {
      v168 = a8;
      v57 = 16 * a2;
      do
      {
        v58 = v36;
        v59 = a2;
        (v56)(v37);
        a2 = v59;
        v20 = a13;
        v37 += v57;
        v49 += 16;
        v36 = v58 - 16;
      }

      while (v58 > 0x1F);
      v60 = v175;
      v61 = a10;
      LODWORD(a8) = v168;
      if (v58 == 16 || a13 < 1)
      {
LABEL_80:
        v178 = v60 - 1;
        v62 = a9 + (v60 - 1) * v61;
        v63 = cpu_info_;
        if (!cpu_info_)
        {
          v64 = AArch64CpuCaps();
          v63 = v64 | 3;
          cpu_info_ = v64 | 3;
        }

        v65 = -v61;
        v66 = TransposeWx16_Any_NEON;
        if (((a13 + 1) & 0x1E) == 0)
        {
          v66 = TransposeWx16_NEON;
        }

        v169 = v66;
        if ((v63 & 0x100) != 0)
        {
          v67 = v66;
        }

        else
        {
          v67 = TransposeWx16_C;
        }

        v68 = v177;
        if (v177 < 16)
        {
          v69 = v175;
        }

        else
        {
          v69 = v175;
          v70 = v177;
          do
          {
            v67(v35, v171, v62, v65, v175);
            v35 += 16 * v171;
            v62 += 16;
            v68 = v70 - 16;
            v23 = v70 > 0x1F;
            v70 -= 16;
          }

          while (v23);
        }

        v107 = v177;
        if (v68 >= 1 && v69 >= 1)
        {
          v108 = 0;
          v110 = v68 > 7 && v171 == 1;
          v113 = v62 < &v35[v69 - 1 + v68] && v35 < v62 + v68 - (v69 - 1) * a10 || a10 > 0;
          v114 = v35 + 16;
          v115 = (v62 + 16);
          v116 = v113 | ~v110;
          do
          {
            if (v116)
            {
              v117 = 0;
            }

            else
            {
              if (v68 < 0x20)
              {
                v118 = 0;
LABEL_173:
                v123 = &v35[v118];
                v124 = (v62 + v118);
                v125 = v118 - (v68 & 0x7FFFFFF8);
                do
                {
                  v126 = *v123;
                  v123 += 8;
                  *v124++ = v126;
                  v125 += 8;
                }

                while (v125);
                v117 = v68 & 0x7FFFFFF8;
                if (v117 == v68)
                {
                  goto LABEL_164;
                }

                goto LABEL_176;
              }

              v119 = v68 & 0x7FFFFFE0;
              v120 = v115;
              v121 = v114;
              do
              {
                v122 = *v121;
                *(v120 - 1) = *(v121 - 1);
                *v120 = v122;
                v121 += 32;
                v120 += 2;
                v119 -= 32;
              }

              while (v119);
              if ((v68 & 0x7FFFFFE0) == v68)
              {
                goto LABEL_164;
              }

              v118 = v68 & 0x7FFFFFE0;
              v117 = v118;
              if ((v68 & 0x18) != 0)
              {
                goto LABEL_173;
              }
            }

LABEL_176:
            v127 = v171 * v117;
            do
            {
              *(v62 + v117++) = v35[v127];
              v127 += v171;
            }

            while (v68 != v117);
LABEL_164:
            ++v108;
            ++v114;
            v115 = (v115 + v65);
            ++v35;
            v62 += v65;
          }

          while (v108 != v69);
        }

        v128 = a11 + v178 * a12;
        v129 = cpu_info_;
        if (!cpu_info_)
        {
          v130 = AArch64CpuCaps();
          v129 = v130 | 3;
          cpu_info_ = v130 | 3;
        }

        v131 = -a12;
        if ((v129 & 0x100) != 0)
        {
          v132 = v169;
        }

        else
        {
          v132 = TransposeWx16_C;
        }

        if (v177 < 16)
        {
          v133 = v177;
        }

        else
        {
          do
          {
            v132(v33, v176, v128, v131, v69);
            v33 += 16 * v176;
            v128 += 16;
            v133 = v107 - 16;
            v23 = v107 > 0x1F;
            v107 -= 16;
          }

          while (v23);
        }

        result = 0;
        if (v133 < 1 || v69 < 1)
        {
          return result;
        }

        v143 = 0;
        v145 = v133 > 7 && v176 == 1;
        v148 = v128 < &v33[v69 - 1 + v133] && v33 < v128 + v133 - (v69 - 1) * a12 || a12 > 0;
        v149 = v33 + 16;
        v150 = (v128 + 16);
        v151 = v148 | ~v145;
        while (1)
        {
          if (v151)
          {
            v152 = 0;
          }

          else
          {
            if (v133 < 0x20)
            {
              v153 = 0;
LABEL_229:
              v158 = &v33[v153];
              v159 = (v128 + v153);
              v160 = v153 - (v133 & 0x7FFFFFF8);
              do
              {
                v161 = *v158;
                v158 += 8;
                *v159++ = v161;
                v160 += 8;
              }

              while (v160);
              v152 = v133 & 0x7FFFFFF8;
              if (v152 == v133)
              {
                goto LABEL_220;
              }

              goto LABEL_232;
            }

            v154 = v133 & 0x7FFFFFE0;
            v155 = v150;
            v156 = v149;
            do
            {
              v157 = *v156;
              *(v155 - 1) = *(v156 - 1);
              *v155 = v157;
              v156 += 32;
              v155 += 2;
              v154 -= 32;
            }

            while (v154);
            if ((v133 & 0x7FFFFFE0) == v133)
            {
              goto LABEL_220;
            }

            v153 = v133 & 0x7FFFFFE0;
            v152 = v153;
            if ((v133 & 0x18) != 0)
            {
              goto LABEL_229;
            }
          }

LABEL_232:
          v162 = v176 * v152;
          do
          {
            *(v128 + v152++) = v33[v162];
            v162 += v176;
          }

          while (v133 != v152);
LABEL_220:
          ++v143;
          ++v149;
          v150 = (v150 + v131);
          ++v33;
          v128 += v131;
          if (v143 == v69)
          {
            return 0;
          }
        }
      }
    }

    v86 = 0;
    v87 = a2;
    v89 = v36 > 7 && a2 == 1;
    v92 = v49 < &v37[v20 - 1 + v36] && v37 < v49 + v36 - (v20 - 1) * a8 || a8 > 0;
    v93 = v37 + 16;
    v94 = (v49 + 16);
    v95 = v92 | ~v89;
    while (1)
    {
      if (v95)
      {
        v96 = 0;
      }

      else
      {
        if (v36 < 0x20)
        {
          v97 = 0;
LABEL_139:
          v102 = &v37[v97];
          v103 = (v49 + v97);
          v104 = v97 - (v36 & 0x7FFFFFF8);
          do
          {
            v105 = *v102;
            v102 += 8;
            *v103++ = v105;
            v104 += 8;
          }

          while (v104);
          v96 = v36 & 0x7FFFFFF8;
          if (v96 == v36)
          {
            goto LABEL_130;
          }

          goto LABEL_142;
        }

        v98 = v36 & 0x7FFFFFE0;
        v99 = v94;
        v100 = v93;
        do
        {
          v101 = *v100;
          *(v99 - 1) = *(v100 - 1);
          *v99 = v101;
          v100 += 32;
          v99 += 2;
          v98 -= 32;
        }

        while (v98);
        if ((v36 & 0x7FFFFFE0) == v36)
        {
          goto LABEL_130;
        }

        v97 = v36 & 0x7FFFFFE0;
        v96 = v97;
        if ((v36 & 0x18) != 0)
        {
          goto LABEL_139;
        }
      }

LABEL_142:
      v106 = v87 * v96;
      do
      {
        *(v49 + v96++) = v37[v106];
        v106 += v87;
      }

      while (v36 != v96);
LABEL_130:
      ++v86;
      ++v93;
      v94 = (v94 + v54);
      ++v37;
      v49 += v54;
      if (v86 == v20)
      {
        goto LABEL_80;
      }
    }
  }

  if (!a15)
  {
    if (a13 < 1 || !v33 || !v35 || !v37)
    {
      return result;
    }

    v172 = v34;
    v71 = (v36 + 1) >> 1;
    CopyPlane(v37, a2, v19, a8, a13, v36);
    CopyPlane(v35, v172, a9, a10, v29, v71);
    CopyPlane(v33, v176, a11, a12, v29, v71);
    return 0;
  }

  if (a15 != 90)
  {
    return result;
  }

  v170 = v34;
  v174 = (v28 >> 1);
  v39 = &v37[(v36 - 1) * a2];
  v40 = -a2;
  v41 = cpu_info_;
  if (!cpu_info_)
  {
    v42 = a8;
    v43 = AArch64CpuCaps();
    a8 = v42;
    v20 = a13;
    v41 = v43 | 3;
    cpu_info_ = v43 | 3;
  }

  v44 = TransposeWx16_Any_NEON;
  if ((v20 & 0xF) == 0)
  {
    v44 = TransposeWx16_NEON;
  }

  if ((v41 & 0x100) != 0)
  {
    v45 = v44;
  }

  else
  {
    v45 = TransposeWx16_C;
  }

  if (v36 < 0x10)
  {
    v48 = a13 + 1;
LABEL_98:
    v72 = 0;
    do
    {
      v73 = v39;
      v74 = v19;
      v75 = v36;
      do
      {
        *v74++ = *v73;
        v73 += v40;
        --v75;
      }

      while (v75);
      ++v72;
      v19 += a8;
      ++v39;
    }

    while (v72 != v20);
    goto LABEL_102;
  }

  do
  {
    v46 = v36;
    v47 = a8;
    v45(v39, v40, v19, a8, v20);
    a8 = v47;
    v20 = a13;
    v39 += 16 * v40;
    v19 += 16;
    v36 = v46 - 16;
  }

  while (v46 > 0x1F);
  v48 = a13 + 1;
  if (v46 != 16 && a13 >= 1)
  {
    goto LABEL_98;
  }

LABEL_102:
  v179 = v177 - 1;
  v76 = &v35[v179 * v170];
  v77 = -v170;
  v78 = cpu_info_;
  if (!cpu_info_)
  {
    v79 = AArch64CpuCaps();
    v48 = a13 + 1;
    v78 = v79 | 3;
    cpu_info_ = v79 | 3;
  }

  v80 = TransposeWx16_Any_NEON;
  if ((v48 & 0x1E) == 0)
  {
    v80 = TransposeWx16_NEON;
  }

  v173 = v80;
  if ((v78 & 0x100) != 0)
  {
    v81 = v80;
  }

  else
  {
    v81 = TransposeWx16_C;
  }

  v82 = a11;
  if (v177 < 16)
  {
    v85 = v177;
    v84 = v174;
  }

  else
  {
    v83 = v177;
    v84 = v174;
    do
    {
      v81(v76, v77, v21, a10, v174);
      v76 += 16 * v77;
      v21 += 16;
      v85 = v83 - 16;
      v23 = v83 > 0x1F;
      v83 -= 16;
    }

    while (v23);
  }

  v134 = v177;
  if (v85 >= 1 && v84 >= 1)
  {
    for (i = 0; i != v84; ++i)
    {
      v136 = v76;
      v137 = v21;
      v138 = v85;
      do
      {
        *v137++ = *v136;
        v136 += v77;
        --v138;
      }

      while (v138);
      v21 += a10;
      ++v76;
    }
  }

  v139 = &v33[v179 * v176];
  v140 = -v176;
  if (!cpu_info_)
  {
    v163 = AArch64CpuCaps();
    cpu_info_ = v163 | 3;
    if ((v163 & 0x100) != 0)
    {
      v141 = v173;
    }

    else
    {
      v141 = TransposeWx16_C;
    }

    if (v177 >= 16)
    {
      goto LABEL_199;
    }

LABEL_239:
    v142 = v177;
    goto LABEL_240;
  }

  if ((cpu_info_ & 0x100) != 0)
  {
    v141 = v173;
  }

  else
  {
    v141 = TransposeWx16_C;
  }

  if (v177 < 16)
  {
    goto LABEL_239;
  }

  do
  {
LABEL_199:
    v141(v139, v140, v82, a12, v84);
    v139 -= 16 * v176;
    v82 += 16;
    v142 = v134 - 16;
    v23 = v134 > 0x1F;
    v134 -= 16;
  }

  while (v23);
LABEL_240:
  result = 0;
  if (v142 >= 1 && v84 >= 1)
  {
    for (j = 0; j != v84; ++j)
    {
      v165 = v139;
      v166 = v82;
      v167 = v142;
      do
      {
        *v166++ = *v165;
        v165 += v140;
        --v167;
      }

      while (v167);
      v82 += a12;
      ++v139;
    }

    return 0;
  }

  return result;
}

uint64_t NV12ToI420Rotate(char *a1, uint64_t a2, const char *a3, unsigned int a4, unint64_t a5, uint64_t a6, int8x16_t *a7, uint64_t a8, int8x16_t *a9, int a10, unsigned int a11, int a12, int a13)
{
  v14 = a11;
  v15 = a9;
  if (a9)
  {
    v16 = a7 == 0;
  }

  else
  {
    v16 = 1;
  }

  v20 = v16 || a5 == 0 || a1 == 0 || a3 == 0 || a11 < 1;
  if (v20 || a12 == 0)
  {
    return 0xFFFFFFFFLL;
  }

  v23 = a7;
  v24 = a11 + 1;
  v176 = ((a11 + 1) >> 1);
  v25 = &a1[~a12 * a2];
  if (a12 >= 0)
  {
    v26 = a4;
  }

  else
  {
    v26 = -a4;
  }

  if (a12 < 0)
  {
    v27 = &a3[(((1 - a12) >> 1) - 1) * a4];
  }

  else
  {
    v27 = a3;
  }

  if (a12 >= 0)
  {
    a2 = a2;
  }

  else
  {
    a2 = -a2;
  }

  if (a12 >= 0)
  {
    v28 = a12;
  }

  else
  {
    v28 = -a12;
  }

  if (a12 < 0)
  {
    v29 = v25;
  }

  else
  {
    v29 = a1;
  }

  if (a12 < 0)
  {
    v30 = (1 - a12) >> 1;
  }

  else
  {
    v30 = (a12 + 1) >> 1;
  }

  result = 0xFFFFFFFFLL;
  if (a13 > 179)
  {
    if (a13 == 180)
    {
      v174 = v26;
      RotatePlane180(v29, a2, a5, a6, a11, v28);
      v104 = cpu_info_;
      if (!cpu_info_)
      {
        v105 = AArch64CpuCaps();
        v104 = v105 | 3;
        cpu_info_ = v105 | 3;
      }

      if (((((a11 + 1) & 0x1E) == 0) & ((v104 & 0x100) >> 8)) != 0)
      {
        v106 = MirrorSplitUVRow_NEON;
      }

      else
      {
        v106 = MirrorSplitUVRow_C;
      }

      v107 = &a9->i8[(v30 - 1) * a10];
      v108 = &v23->i8[(v30 - 1) * a8];
      do
      {
        v106(v27, v108, v107, v176);
        v27 += v174;
        v108 -= a8;
        v107 -= a10;
        --v30;
      }

      while (v30);
      return 0;
    }

    if (a13 != 270)
    {
      return result;
    }

    v44 = a5 + (a11 - 1) * a6;
    v45 = cpu_info_;
    v175 = a11 + 1;
    if (!cpu_info_)
    {
      v46 = v26;
      v168 = a6;
      v179 = a2;
      v47 = AArch64CpuCaps();
      a2 = v179;
      LODWORD(a6) = v168;
      LOBYTE(v24) = a11 + 1;
      v14 = a11;
      v26 = v46;
      v45 = v47 | 3;
      cpu_info_ = v47 | 3;
    }

    v48 = -a6;
    v49 = TransposeWx16_Any_NEON;
    if ((v14 & 0xF) == 0)
    {
      v49 = TransposeWx16_NEON;
    }

    if ((v45 & 0x100) == 0)
    {
      v49 = TransposeWx16_C;
    }

    v171 = a8;
    if (v28 < 0x10)
    {
      goto LABEL_65;
    }

    v166 = v23;
    v169 = a6;
    v173 = v26;
    v180 = 16 * a2;
    do
    {
      v50 = v28;
      v51 = a2;
      v52 = v49;
      v49(v29);
      v49 = v52;
      a2 = v51;
      v29 += v180;
      v44 += 16;
      v28 = v50 - 16;
    }

    while (v50 > 0x1F);
    v14 = a11;
    LODWORD(a8) = v171;
    v26 = v173;
    LOBYTE(v24) = a11 + 1;
    v23 = v166;
    LODWORD(a6) = v169;
    if (v28)
    {
LABEL_65:
      v53 = 0;
      v54 = a2;
      v56 = v28 > 7 && a2 == 1;
      v59 = v44 < &v29[v14 - 1 + v28] && v29 < v44 + v28 - (v14 - 1) * a6 || a6 > 0;
      v60 = v29 + 16;
      v61 = (v44 + 16);
      v62 = v59 | ~v56;
      do
      {
        if (v62)
        {
          v63 = 0;
        }

        else
        {
          if (v28 < 0x20)
          {
            v64 = 0;
LABEL_90:
            v69 = &v29[v64];
            v70 = (v44 + v64);
            v71 = v64 - (v28 & 0x7FFFFFF8);
            do
            {
              v72 = *v69;
              v69 += 8;
              *v70++ = v72;
              v71 += 8;
            }

            while (v71);
            v63 = v28 & 0x7FFFFFF8;
            if (v63 == v28)
            {
              goto LABEL_81;
            }

            goto LABEL_93;
          }

          v65 = v28 & 0x7FFFFFE0;
          v66 = v61;
          v67 = v60;
          do
          {
            v68 = *v67;
            *(v66 - 1) = *(v67 - 1);
            *v66 = v68;
            v67 += 32;
            v66 += 2;
            v65 -= 32;
          }

          while (v65);
          if ((v28 & 0x7FFFFFE0) == v28)
          {
            goto LABEL_81;
          }

          v64 = v28 & 0x7FFFFFE0;
          v63 = v64;
          if ((v28 & 0x18) != 0)
          {
            goto LABEL_90;
          }
        }

LABEL_93:
        v73 = v54 * v63;
        do
        {
          *(v44 + v63++) = v29[v73];
          v73 += v54;
        }

        while (v28 != v63);
LABEL_81:
        ++v53;
        ++v60;
        v61 = (v61 + v48);
        ++v29;
        v44 += v48;
      }

      while (v53 != v14);
    }

    v74 = &v23->i8[(v176 - 1) * a8];
    v75 = &a9->i8[(v176 - 1) * a10];
    v76 = cpu_info_;
    if (!cpu_info_)
    {
      v77 = v26;
      v78 = v24;
      v79 = AArch64CpuCaps();
      LOBYTE(v24) = v78;
      v26 = v77;
      v76 = v79 | 3;
      cpu_info_ = v79 | 3;
    }

    v80 = -a8;
    v81 = -a10;
    v82 = TransposeUVWx8_Any_NEON;
    if ((v24 & 0xE) == 0)
    {
      v82 = TransposeUVWx8_NEON;
    }

    if ((v76 & 0x100) != 0)
    {
      v83 = v82;
    }

    else
    {
      v83 = TransposeUVWx8_C;
    }

    if (v30 < 8)
    {
      v86 = v30;
    }

    else
    {
      v84 = 8 * v26;
      do
      {
        v85 = v26;
        v83(v27, v26, v74, v80, v75, v81, v176);
        v26 = v85;
        v27 += v84;
        v74 += 8;
        v75 += 8;
        v86 = v30 - 8;
        v20 = v30 > 0xF;
        v30 -= 8;
      }

      while (v20);
    }

    result = 0;
    if (!v86 || v176 < 1)
    {
      return result;
    }

    v120 = 0;
    v121 = v175 & 0xFFFFFFFE;
    v122 = v26;
    v123 = v80;
    v124 = v81;
    v125 = 2;
    if (v121 > 2)
    {
      v125 = v175 & 0xFFFFFFFE;
    }

    v126 = v125 - 1;
    v127 = &v74[v86 - (v126 >> 1) * v171];
    v128 = &v75[v86 - (v126 >> 1) * a10];
    v129 = v126 & 0xFFFFFFFFFFFFFFFELL;
    v130 = v27 + 1;
    v131 = &v27[v86 + 1 + v129];
    v133 = v86 > 7 && v26 == 1;
    v135 = v74 < v131 && v27 < v127;
    v139 = v74 < v128 && v75 < v127 || v171 > 0 || v81 < 0 || v135;
    if (v75 >= v131 || v27 >= v128)
    {
      v141 = v139;
    }

    else
    {
      v141 = 1;
    }

    v142 = v75 + 16;
    v143 = v74 + 16;
    v144 = v27 + 16;
    v145 = v141 | ~v133;
    while (1)
    {
      if (v145)
      {
        v146 = 0;
      }

      else
      {
        if (v86 < 0x20)
        {
          v147 = 0;
LABEL_220:
          v154 = v147 - (v86 & 0xFFFFFFF8);
          v155 = &v130[v147];
          v156 = &v74[v147];
          v157 = &v75[v147];
          do
          {
            *v156 = *(v155 - 1);
            v156 += 8;
            v158 = *v155;
            v155 += 8;
            *v157 = v158;
            v157 += 8;
            v154 += 8;
          }

          while (v154);
          v146 = v86 & 0xFFFFFFF8;
          if (v146 == v86)
          {
            goto LABEL_211;
          }

          goto LABEL_223;
        }

        v148 = v144;
        v149 = v143;
        v150 = v142;
        v151 = v86 & 0xFFFFFFE0;
        do
        {
          v152 = *v148;
          *(v149 - 1) = *(v148 - 1);
          *v149 = v152;
          v153 = *(v148 + 1);
          *(v150 - 1) = *(v148 - 15);
          *v150 = v153;
          v150 += 2;
          v149 += 2;
          v148 += 32;
          v151 -= 32;
        }

        while (v151);
        if ((v86 & 0xFFFFFFE0) == v86)
        {
          goto LABEL_211;
        }

        v147 = v86 & 0xFFFFFFE0;
        v146 = v147;
        if ((v86 & 0x18) != 0)
        {
          goto LABEL_220;
        }
      }

LABEL_223:
      v159 = &v27[v122 * v146];
      do
      {
        v74[v146] = *v159;
        v75[v146++] = v159[1];
        v159 += v122;
      }

      while (v86 != v146);
LABEL_211:
      v120 += 2;
      v142 = (v142 + v124);
      v143 = (v143 + v123);
      v144 += 2;
      v130 += 2;
      v74 += v123;
      v75 += v124;
      v27 += 2;
      if (v120 >= v121)
      {
        return 0;
      }
    }
  }

  if (!a13)
  {
    v87 = (v28 + 1) >> 1;
    v88 = v28 * a11;
    if (a2 == a11)
    {
      v89 = 0;
    }

    else
    {
      v89 = a2;
    }

    if (a2 == a11)
    {
      v90 = 0;
    }

    else
    {
      v90 = a6;
    }

    if (a2 == a11)
    {
      v91 = 1;
    }

    else
    {
      v88 = a11;
      v91 = v28;
    }

    if (a6 == a11)
    {
      LODWORD(a2) = v89;
      v92 = v90;
    }

    else
    {
      v92 = a6;
    }

    if (a6 == a11)
    {
      LODWORD(v14) = v88;
      v93 = v91;
    }

    else
    {
      v93 = v28;
    }

    v94 = v87 * a8;
    if (v26 == (v24 & 0x7FFFFFFE))
    {
      v95 = 0;
    }

    else
    {
      v95 = v26;
    }

    if (v26 == (v24 & 0x7FFFFFFE))
    {
      v96 = 0;
    }

    else
    {
      v96 = a8;
    }

    if (v26 == (v24 & 0x7FFFFFFE))
    {
      v97 = 0;
    }

    else
    {
      v97 = a10;
    }

    if (v26 == (v24 & 0x7FFFFFFE))
    {
      v98 = 1;
    }

    else
    {
      v94 = (a11 + 1) >> 1;
      v98 = (v28 + 1) >> 1;
    }

    if (v176 != a8)
    {
      v95 = v26;
      v96 = a8;
      v97 = a10;
      v94 = (a11 + 1) >> 1;
      v98 = (v28 + 1) >> 1;
    }

    if (v176 == a10)
    {
      v99 = v95;
    }

    else
    {
      v99 = v26;
    }

    if (v176 == a10)
    {
      v100 = v96;
    }

    else
    {
      v100 = a8;
    }

    if (v176 == a10)
    {
      v101 = v97;
    }

    else
    {
      v101 = a10;
    }

    if (v176 == a10)
    {
      v102 = v94;
    }

    else
    {
      v102 = (a11 + 1) >> 1;
    }

    if (v176 == a10)
    {
      v103 = v98;
    }

    else
    {
      v103 = v87;
    }

    CopyPlane(v29, a2, a5, v92, v14, v93);
    SplitUVPlane(v27, v99, v23, v100, a9, v101, v102, v103);
    return 0;
  }

  if (a13 != 90)
  {
    return result;
  }

  v32 = &v29[(v28 - 1) * a2];
  v33 = -a2;
  v34 = cpu_info_;
  if (!cpu_info_)
  {
    v35 = v26;
    v167 = a6;
    v177 = -a2;
    v36 = AArch64CpuCaps();
    v33 = v177;
    a6 = v167;
    v14 = a11;
    LODWORD(v26) = v35;
    v34 = v36 | 3;
    cpu_info_ = v36 | 3;
  }

  v37 = TransposeWx16_Any_NEON;
  if ((v14 & 0xF) == 0)
  {
    v37 = TransposeWx16_NEON;
  }

  if ((v34 & 0x100) == 0)
  {
    v37 = TransposeWx16_C;
  }

  if (v28 < 0x10)
  {
    v42 = a10;
    v43 = a11 + 1;
  }

  else
  {
    v170 = a8;
    v172 = v26;
    v178 = 16 * v33;
    do
    {
      v38 = v28;
      v39 = v33;
      v40 = a6;
      v41 = v37;
      (v37)(v32, v33, a5, a6, a11);
      v37 = v41;
      v33 = v39;
      a6 = v40;
      v32 += v178;
      a5 += 16;
      v28 = v38 - 16;
    }

    while (v38 > 0x1F);
    v14 = a11;
    a8 = v170;
    LODWORD(v26) = v172;
    v42 = a10;
    v43 = a11 + 1;
    v15 = a9;
    if (!v28)
    {
      goto LABEL_165;
    }
  }

  v109 = 0;
  do
  {
    v110 = v32;
    v111 = a5;
    v112 = v28;
    do
    {
      *v111++ = *v110;
      v110 += v33;
      --v112;
    }

    while (v112);
    ++v109;
    a5 += a6;
    ++v32;
  }

  while (v109 != v14);
LABEL_165:
  v113 = &v27[(v30 - 1) * v26];
  v114 = -v26;
  v115 = cpu_info_;
  if (!cpu_info_)
  {
    v116 = AArch64CpuCaps();
    v115 = v116 | 3;
    cpu_info_ = v116 | 3;
  }

  v117 = TransposeUVWx8_Any_NEON;
  if ((v43 & 0xE) == 0)
  {
    v117 = TransposeUVWx8_NEON;
  }

  if ((v115 & 0x100) != 0)
  {
    v118 = v117;
  }

  else
  {
    v118 = TransposeUVWx8_C;
  }

  if (v30 < 8)
  {
    v119 = v30;
  }

  else
  {
    do
    {
      v118(v113, v114, v23, a8, v15, v42, v176);
      v113 += 8 * v114;
      v23 = (v23 + 8);
      v15 = (v15 + 8);
      v119 = v30 - 8;
      v20 = v30 > 0xF;
      v30 -= 8;
    }

    while (v20);
  }

  result = 0;
  if (v119 && v176 >= 1)
  {
    v160 = 0;
    v161 = v113 + 1;
    do
    {
      v162 = v161;
      v163 = v23;
      v164 = v15;
      v165 = v119;
      do
      {
        v163->i8[0] = *(v162 - 1);
        v163 = (v163 + 1);
        v164->i8[0] = *v162;
        v164 = (v164 + 1);
        v162 += v114;
        --v165;
      }

      while (v165);
      v160 += 2;
      v15 = (v15 + a10);
      v23 = (v23 + a8);
      v161 += 2;
    }

    while (v160 < ((a11 + 1) & 0xFFFFFFFE));
    return 0;
  }

  return result;
}

int8x16_t *TransposeWx16_Any_NEON(int8x16_t *result, int a2, void *a3, int a4, int a5)
{
  v5 = a5 & 0xFFFFFFF0;
  if ((a5 & 0xFFFFFFF0) >= 1)
  {
    v6 = result;
    v7 = a5 & 0xFFFFFFF0;
    v8 = a3;
    do
    {
      v9 = *v6;
      v11 = *(v6 + a2);
      v10 = (v6 + a2 + a2);
      v13 = *v10;
      v12 = (v10 + a2);
      v15 = *v12;
      v14 = (v12 + a2);
      v17 = *v14;
      v16 = (v14 + a2);
      v19 = *v16;
      v18 = (v16 + a2);
      v21 = *v18;
      v20 = (v18 + a2);
      v23 = *v20;
      v22 = (v20 + a2);
      v25 = *v22;
      v24 = (v22 + a2);
      v27 = *v24;
      v26 = (v24 + a2);
      v29 = *v26;
      v28 = (v26 + a2);
      v31 = *v28;
      v30 = (v28 + a2);
      v33 = *v30;
      v32 = (v30 + a2);
      v35 = *v32;
      v34 = (v32 + a2);
      v36 = *(v34 + a2);
      ++v6;
      v37 = vtrn1q_s8(v9, v11);
      v38 = vtrn2q_s8(v9, v11);
      v39 = vtrn1q_s8(v13, v15);
      v40 = vtrn2q_s8(v13, v15);
      v41 = vtrn1q_s8(v17, v19);
      v42 = vtrn2q_s8(v17, v19);
      v43 = vtrn1q_s8(v21, v23);
      v44 = vtrn2q_s8(v21, v23);
      v45 = vtrn1q_s8(v25, v27);
      v46 = vtrn2q_s8(v25, v27);
      v47 = vtrn1q_s8(v29, v31);
      v48 = vtrn2q_s8(v29, v31);
      v49 = vtrn1q_s8(v33, v35);
      v50 = vtrn2q_s8(v33, v35);
      v51 = vtrn1q_s8(*v34, v36);
      v52 = vtrn2q_s8(*v34, v36);
      v53 = vtrn1q_s16(v37, v39);
      v54 = vtrn1q_s16(v38, v40);
      v55 = vtrn2q_s16(v37, v39);
      v56 = vtrn2q_s16(v38, v40);
      v57 = vtrn1q_s16(v41, v43);
      v58 = vtrn1q_s16(v42, v44);
      v59 = vtrn2q_s16(v41, v43);
      v60 = vtrn2q_s16(v42, v44);
      v61 = vtrn1q_s16(v45, v47);
      v62 = vtrn1q_s16(v46, v48);
      v63 = vtrn2q_s16(v45, v47);
      v64 = vtrn2q_s16(v46, v48);
      v65 = vtrn1q_s16(v49, v51);
      v66 = vtrn1q_s16(v50, v52);
      v67 = vtrn2q_s16(v49, v51);
      v68 = vtrn2q_s16(v50, v52);
      v69 = __OFSUB__(v7, 16);
      v7 -= 16;
      v70 = vtrn1q_s32(v53, v57);
      v71 = vtrn1q_s32(v54, v58);
      v72 = vtrn1q_s32(v55, v59);
      v73 = vtrn1q_s32(v56, v60);
      v74 = vtrn2q_s32(v53, v57);
      v75 = vtrn2q_s32(v54, v58);
      v76 = vtrn2q_s32(v55, v59);
      v77 = vtrn2q_s32(v56, v60);
      v78 = vtrn1q_s32(v61, v65);
      v79 = vtrn1q_s32(v62, v66);
      v80 = vtrn1q_s32(v63, v67);
      v81 = vtrn1q_s32(v64, v68);
      v82 = vtrn2q_s32(v61, v65);
      v83 = vtrn2q_s32(v62, v66);
      v84 = vtrn2q_s32(v63, v67);
      v85 = vtrn2q_s32(v64, v68);
      *v8 = v70.i64[0];
      v8[1] = v78.i64[0];
      v86 = (v8 + a4);
      *v86 = v71.i64[0];
      v86[1] = v79.i64[0];
      v87 = (v86 + a4);
      *v87 = v72.i64[0];
      v87[1] = v80.i64[0];
      v88 = (v87 + a4);
      *v88 = v73.i64[0];
      v88[1] = v81.i64[0];
      v89 = (v88 + a4);
      *v89 = v74.i64[0];
      v89[1] = v82.i64[0];
      v90 = (v89 + a4);
      *v90 = v75.i64[0];
      v90[1] = v83.i64[0];
      v91 = (v90 + a4);
      *v91 = v76.i64[0];
      v91[1] = v84.i64[0];
      v92 = (v91 + a4);
      *v92 = v77.i64[0];
      v92[1] = v85.i64[0];
      v93 = (v92 + a4);
      *v93 = v70.i64[1];
      v93[1] = v78.i64[1];
      v94 = (v93 + a4);
      *v94 = v71.i64[1];
      v94[1] = v79.i64[1];
      v95 = (v94 + a4);
      *v95 = v72.i64[1];
      v95[1] = v80.i64[1];
      v96 = (v95 + a4);
      *v96 = v73.i64[1];
      v96[1] = v81.i64[1];
      v97 = (v96 + a4);
      *v97 = v74.i64[1];
      v97[1] = v82.i64[1];
      v98 = (v97 + a4);
      *v98 = v75.i64[1];
      v98[1] = v83.i64[1];
      v99 = (v98 + a4);
      *v99 = v76.i64[1];
      v99[1] = v84.i64[1];
      v100 = (v99 + a4);
      *v100 = v77.i64[1];
      v100[1] = v85.i64[1];
      v8 = (v100 + a4);
    }

    while (!((v7 < 0) ^ v69 | (v7 == 0)));
  }

  if ((a5 & 0xF) != 0)
  {
    v101 = 0;
    v102 = v5;
    v103 = &result->i8[v5];
    v104 = v5 * a4;
    v105 = a2;
    v106 = 2 * a2;
    v107 = 3 * a2;
    v108 = 4 * a2;
    v109 = 8 * a2;
    v110 = 7 * a2;
    v112 = 6 * a2;
    v113 = 5 * a2;
    v114 = a3 + v104 + 3;
    do
    {
      *(v114 - 3) = v103[v101];
      *(v114 - 2) = result->i8[v105 + v102 + v101];
      *(v114 - 1) = result->i8[v102 + v106 + v101];
      *v114 = v103[v107 + v101];
      v114[1] = result->i8[v102 + v108 + v101];
      v114[2] = v103[v113 + v101];
      v114[3] = v103[v112 + v101];
      v114[4] = v103[v110 + v101++];
      v114 += a4;
    }

    while ((a5 & 0xF) != v101);
    v115 = 0;
    v116 = &v103[v109];
    v117 = v102 + v109;
    v118 = &result->i8[v110 + v117];
    v119 = &result->i8[v112 + v117];
    v120 = &result->i8[v113 + v117];
    v121 = &result->i8[v108 + v117];
    v122 = &result->i8[v107 + v117];
    v123 = &result->i8[v106 + v117];
    v124 = &result->i8[v105 + v117];
    v125 = a3 + v104 + 15;
    do
    {
      *(v125 - 7) = v116[v115];
      *(v125 - 6) = v124[v115];
      *(v125 - 5) = v123[v115];
      *(v125 - 4) = v122[v115];
      *(v125 - 3) = v121[v115];
      *(v125 - 2) = v120[v115];
      *(v125 - 1) = v119[v115];
      result = v118[v115];
      *v125 = result;
      ++v115;
      v125 += a4;
    }

    while ((a5 & 0xF) != v115);
  }

  return result;
}

_BYTE *TransposeUVWx8_Any_NEON(int8x16_t *a1, int a2, void *a3, int a4, void *a5, int a6, int a7)
{
  v7 = a7 & 0xFFFFFFF8;
  if ((a7 & 0xFFFFFFF8) >= 1)
  {
    v8 = a3;
    v9 = a1;
    v10 = a5;
    v11 = v7 - 8;
    do
    {
      v12 = *v9;
      v14 = *(v9 + a2);
      v13 = (v9 + a2 + a2);
      v16 = *v13;
      v15 = (v13 + a2);
      v18 = *v15;
      v17 = (v15 + a2);
      v20 = *v17;
      v19 = (v17 + a2);
      v22 = *v19;
      v21 = (v19 + a2);
      v23 = *(v21 + a2);
      ++v9;
      v24 = vtrn1q_s8(v12, v14);
      v25 = vtrn2q_s8(v12, v14);
      v26 = vtrn1q_s8(v16, v18);
      v27 = vtrn2q_s8(v16, v18);
      v28 = vtrn1q_s8(v20, v22);
      v29 = vtrn2q_s8(v20, v22);
      v30 = vtrn1q_s8(*v21, v23);
      v31 = vtrn2q_s8(*v21, v23);
      v32 = __OFSUB__(v11, 8);
      v11 -= 8;
      v33 = vtrn1q_s16(v24, v26);
      v34 = vtrn2q_s16(v24, v26);
      v35 = vtrn1q_s16(v28, v30);
      v36 = vtrn2q_s16(v28, v30);
      v37 = vtrn1q_s16(v25, v27);
      v38 = vtrn2q_s16(v25, v27);
      v39 = vtrn1q_s16(v29, v31);
      v40 = vtrn2q_s16(v29, v31);
      v41 = vtrn1q_s32(v33, v35);
      v42 = vtrn2q_s32(v33, v35);
      v43 = vtrn1q_s32(v34, v36);
      v44 = vtrn2q_s32(v34, v36);
      v45 = vtrn1q_s32(v37, v39);
      v46 = vtrn2q_s32(v37, v39);
      v47 = vtrn1q_s32(v38, v40);
      v48 = vtrn2q_s32(v38, v40);
      *v8 = v41.i64[0];
      *(v8 + a4) = v43.i64[0];
      v49 = (v8 + a4 + a4);
      *v49 = v42.i64[0];
      v50 = (v49 + a4);
      *v50 = v44.i64[0];
      v51 = (v50 + a4);
      *v51 = v41.i64[1];
      v52 = (v51 + a4);
      *v52 = v43.i64[1];
      v53 = (v52 + a4);
      *v53 = v42.i64[1];
      *(v53 + a4) = v44.i64[1];
      v8 += a4;
      *v10 = v45.i64[0];
      *(v10 + a6) = v47.i64[0];
      v54 = (v10 + a6 + a6);
      *v54 = v46.i64[0];
      v55 = (v54 + a6);
      *v55 = v48.i64[0];
      v56 = (v55 + a6);
      *v56 = v45.i64[1];
      v57 = (v56 + a6);
      *v57 = v47.i64[1];
      v58 = (v57 + a6);
      *v58 = v46.i64[1];
      *(v58 + a6) = v48.i64[1];
      v10 += a6;
    }

    while (v11 < 0 == v32);
  }

  return TransposeUVWx8_C(&a1->i8[2 * v7], a2, a3 + v7 * a4, a4, a5 + v7 * a6, a6, a7 & 7);
}

uint64_t TransposeWx16_C(uint64_t result, int a2, uint64_t a3, int a4, int a5)
{
  if (a5 >= 1)
  {
    v5 = 0;
    v6 = a2;
    v7 = 2 * a2;
    v8 = 3 * a2;
    v9 = 4 * a2;
    v10 = 5 * a2;
    v11 = 6 * a2;
    v12 = 7 * a2;
    v13 = a4;
    v14 = (a3 + 3);
    do
    {
      *(v14 - 3) = *(result + v5);
      *(v14 - 2) = *(result + a2 + v5);
      *(v14 - 1) = *(result + v7 + v5);
      *v14 = *(result + v8 + v5);
      v14[1] = *(result + v9 + v5);
      v14[2] = *(result + v10 + v5);
      v14[3] = *(result + 6 * a2 + v5);
      v14[4] = *(result + v12 + v5++);
      v14 += a4;
    }

    while (a5 != v5);
    v16 = 0;
    v17 = 8 * a2;
    v18 = result + v9;
    v19 = result + v8;
    v20 = result + v7;
    v21 = result + v6;
    v22 = result + v17;
    v23 = result + v12 + v17;
    v24 = result + v11 + v17;
    v25 = result + v10 + v17;
    v26 = v18 + v17;
    v27 = v19 + v17;
    v28 = v20 + v17;
    result = v21 + v17;
    v29 = (a3 + 15);
    do
    {
      *(v29 - 7) = *(v22 + v16);
      *(v29 - 6) = *(result + v16);
      *(v29 - 5) = *(v28 + v16);
      *(v29 - 4) = *(v27 + v16);
      *(v29 - 3) = *(v26 + v16);
      *(v29 - 2) = *(v25 + v16);
      *(v29 - 1) = *(v24 + v16);
      *v29 = *(v23 + v16++);
      v29 += v13;
    }

    while (a5 != v16);
  }

  return result;
}

_BYTE *TransposeUVWx8_C(_BYTE *result, int a2, uint64_t a3, int a4, uint64_t a5, int a6, int a7)
{
  if (a7 >= 1)
  {
    v7 = 2 * a2;
    v8 = 4 * a2;
    v9 = 6 * a2;
    v10 = (a5 + 3);
    v11 = (a3 + 3);
    do
    {
      *(v11 - 3) = *result;
      *(v10 - 3) = result[1];
      *(v11 - 2) = result[a2];
      *(v10 - 2) = result[a2 + 1];
      *(v11 - 1) = result[v7];
      *(v10 - 1) = result[v7 + 1];
      *v11 = result[3 * a2];
      *v10 = result[3 * a2 + 1];
      v11[1] = result[v8];
      v10[1] = result[v8 + 1];
      v11[2] = result[5 * a2];
      v10[2] = result[5 * a2 + 1];
      v11[3] = result[v9];
      v10[3] = result[v9 + 1];
      v11[4] = result[7 * a2];
      v10[4] = result[7 * a2 + 1];
      result += 2;
      v10 += a6;
      v11 += a4;
      --a7;
    }

    while (a7);
  }

  return result;
}

void *MergeUVRow_Any_NEON(int8x16_t *a1, int8x16_t *a2, int8x16_t *a3, int a4)
{
  v32 = *MEMORY[0x277D85DE8];
  memset(__dst, 0, sizeof(__dst));
  memset(v31, 0, sizeof(v31));
  v6 = a4 & 0xFFFFFFF0;
  if ((a4 & 0xFFFFFFF0) >= 1)
  {
    _X9 = a2;
    v8 = a4 & 0xFFFFFFF0;
    _X11 = a1;
    v10 = a3;
    do
    {
      v11 = *_X11++;
      v12 = *_X9++;
      v8 -= 16;
      __asm
      {
        PRFM            #0, [X11,#0x1C0]
        PRFM            #0, [X9,#0x1C0]
      }

      *v10 = vzip1q_s8(v11, v12);
      v10[1] = vzip2q_s8(v11, v12);
      v10 += 2;
    }

    while (!(_NF ^ _VF | _ZF));
  }

  v19 = a4 & 0xF;
  _X25 = __dst;
  memcpy(__dst, &a1->i8[v6], v19);
  _X22 = v31;
  memcpy(v31, &a2->i8[v6], v19);
  v22 = v29;
  v23 = 16;
  do
  {
    v24 = *_X25++;
    v25 = *_X22++;
    v23 -= 16;
    __asm
    {
      PRFM            #0, [X25,#0x1C0]
      PRFM            #0, [X22,#0x1C0]
    }

    *v22 = vzip1q_s8(v24, v25);
    v22[1] = vzip2q_s8(v24, v25);
    v22 += 2;
  }

  while (!(_NF ^ _VF | _ZF));
  return memcpy(a3 + 2 * v6, v29, (2 * v19));
}

void *MergeUVRow_16_Any_NEON(uint16x8_t *a1, uint16x8_t *a2, int16x8_t *a3, int a4, int a5)
{
  v41 = *MEMORY[0x277D85DE8];
  memset(__dst, 0, sizeof(__dst));
  memset(v40, 0, sizeof(v40));
  v7 = a5 & 0xFFFFFFF8;
  v8 = 16 - a4;
  if ((a5 & 0xFFFFFFF8) >= 1)
  {
    v9 = a5 & 0xFFFFFFF8;
    _X10 = a1;
    v11 = a3;
    _X12 = a2;
    v13 = vdupq_n_s16(v8);
    do
    {
      v14 = *_X10++;
      v15 = *_X12++;
      v9 -= 8;
      v16 = vshlq_u16(v14, v13);
      v17 = vshlq_u16(v15, v13);
      __asm
      {
        PRFM            #0, [X10,#0x1C0]
        PRFM            #0, [X12,#0x1C0]
      }

      *v11 = vzip1q_s16(v16, v17);
      v11[1] = vzip2q_s16(v16, v17);
      v11 += 2;
    }

    while (!(_NF ^ _VF | _ZF));
  }

  v24 = 2 * v7;
  v25 = 2 * (a5 & 7u);
  _X26 = __dst;
  memcpy(__dst, &a1->i8[v24], v25);
  _X22 = v40;
  memcpy(v40, &a2->i8[v24], v25);
  v28 = v38;
  v29 = 8;
  v30 = vdupq_n_s16(v8);
  do
  {
    v31 = *_X26++;
    v32 = *_X22++;
    v29 -= 8;
    v33 = vshlq_u16(v31, v30);
    v34 = vshlq_u16(v32, v30);
    __asm
    {
      PRFM            #0, [X26,#0x1C0]
      PRFM            #0, [X22,#0x1C0]
    }

    *v28 = vzip1q_s16(v33, v34);
    v28[1] = vzip2q_s16(v33, v34);
    v28 += 2;
  }

  while (!(_NF ^ _VF | _ZF));
  return memcpy(a3 + 4 * v7, v38, (2 * v25));
}

void *CopyRow_Any_NEON(__int128 *a1, _OWORD *a2, int a3)
{
  v26 = *MEMORY[0x277D85DE8];
  memset(__dst, 0, sizeof(__dst));
  v4 = a3 & 0xFFFFFFE0;
  if ((a3 & 0xFFFFFFE0) >= 1)
  {
    _X10 = a1;
    v6 = a3 & 0xFFFFFFE0;
    v7 = a2;
    do
    {
      v8 = *_X10;
      v9 = _X10[1];
      _X10 += 2;
      __asm { PRFM            #0, [X10,#0x1C0] }

      _VF = __OFSUB__(v6, 32);
      v6 -= 32;
      *v7 = v8;
      v7[1] = v9;
      v7 += 2;
    }

    while (!((v6 < 0) ^ _VF | (v6 == 0)));
  }

  v15 = a3 & 0x1F;
  v16 = v4;
  _X22 = __dst;
  memcpy(__dst, a1 + v4, v15);
  v18 = v24;
  v19 = 32;
  do
  {
    v20 = *_X22;
    v21 = _X22[1];
    _X22 += 2;
    __asm { PRFM            #0, [X22,#0x1C0] }

    _VF = __OFSUB__(v19, 32);
    v19 -= 32;
    *v18 = v20;
    v18[1] = v21;
    v18 += 2;
  }

  while (!((v19 < 0) ^ _VF | (v19 == 0)));
  return memcpy(a2 + v16, v24, v15);
}

void *ARGBToYRow_Any_NEON(const char *a1, int8x8_t *a2, int a3)
{
  v29 = *MEMORY[0x277D85DE8];
  memset(__dst, 0, sizeof(__dst));
  v4 = a3 & 0xFFFFFFF0;
  if ((a3 & 0xFFFFFFF0) >= 1)
  {
    v5 = a3 & 0xFFFFFFF0;
    v6 = a2;
    _X10 = a1;
    v8 = vdupq_lane_s8(0x108000428119, 0);
    v9 = vdupq_lane_s8(0x108000428119, 1);
    v10 = vdupq_lane_s8(0x108000428119, 2);
    v11 = vdupq_lane_s16(0x108000428119, 2);
    do
    {
      v30 = vld4q_s8(_X10);
      _X10 += 64;
      v5 -= 16;
      __asm { PRFM            #0, [X10,#0x1C0] }

      *v6 = vaddhn_s16(vmlal_u8(vmlal_u8(vmull_u8(*v30.val[0].i8, *v8.i8), *v30.val[1].i8, *v9.i8), *v30.val[2].i8, *v10.i8), v11);
      v6[1] = vaddhn_s16(vmlal_high_u8(vmlal_high_u8(vmull_high_u8(v30.val[0], v8), v30.val[1], v9), v30.val[2], v10), v11);
      v6 += 2;
    }

    while (!(_NF ^ _VF | _ZF));
  }

  v17 = a3 & 0xF;
  _X23 = __dst;
  memcpy(__dst, &a1[4 * v4], (4 * v17));
  v19 = v27;
  v20 = 16;
  v21 = vdupq_lane_s8(0x108000428119, 0);
  v22 = vdupq_lane_s8(0x108000428119, 1);
  v23 = vdupq_lane_s8(0x108000428119, 2);
  v24 = vdupq_lane_s16(0x108000428119, 2);
  do
  {
    v31 = vld4q_s8(_X23);
    _X23 += 64;
    v20 -= 16;
    __asm { PRFM            #0, [X23,#0x1C0] }

    *v19 = vaddhn_s16(vmlal_u8(vmlal_u8(vmull_u8(*v31.val[0].i8, *v21.i8), *v31.val[1].i8, *v22.i8), *v31.val[2].i8, *v23.i8), v24);
    v19[1] = vaddhn_s16(vmlal_high_u8(vmlal_high_u8(vmull_high_u8(v31.val[0], v21), v31.val[1], v22), v31.val[2], v23), v24);
    v19 += 2;
  }

  while (!(_NF ^ _VF | _ZF));
  return memcpy(a2 + v4, v27, v17);
}

void *BGRAToYRow_Any_NEON(const char *a1, int8x8_t *a2, int a3)
{
  v29 = *MEMORY[0x277D85DE8];
  memset(__dst, 0, sizeof(__dst));
  v4 = a3 & 0xFFFFFFF0;
  if ((a3 & 0xFFFFFFF0) >= 1)
  {
    v5 = a3 & 0xFFFFFFF0;
    v6 = a2;
    _X10 = a1;
    v8 = vdupq_lane_s8(0x6557108000198142, 0);
    v9 = vdupq_lane_s8(0x6557108000198142, 1);
    v10 = vdupq_lane_s8(0x6557108000198142, 2);
    v11 = vdupq_lane_s16(0x6557108000198142, 2);
    do
    {
      v30 = vld4q_s8(_X10);
      _X10 += 64;
      v5 -= 16;
      __asm { PRFM            #0, [X10,#0x1C0] }

      *v6 = vaddhn_s16(vmlal_u8(vmlal_u8(vmull_u8(*v30.val[1].i8, *v8.i8), *v30.val[2].i8, *v9.i8), *v30.val[3].i8, *v10.i8), v11);
      v6[1] = vaddhn_s16(vmlal_high_u8(vmlal_high_u8(vmull_high_u8(v30.val[1], v8), v30.val[2], v9), v30.val[3], v10), v11);
      v6 += 2;
    }

    while (!(_NF ^ _VF | _ZF));
  }

  v17 = a3 & 0xF;
  _X23 = __dst;
  memcpy(__dst, &a1[4 * v4], (4 * v17));
  v19 = v27;
  v20 = 16;
  v21 = vdupq_lane_s8(0x6557108000198142, 0);
  v22 = vdupq_lane_s8(0x6557108000198142, 1);
  v23 = vdupq_lane_s8(0x6557108000198142, 2);
  v24 = vdupq_lane_s16(0x6557108000198142, 2);
  do
  {
    v31 = vld4q_s8(_X23);
    _X23 += 64;
    v20 -= 16;
    __asm { PRFM            #0, [X23,#0x1C0] }

    *v19 = vaddhn_s16(vmlal_u8(vmlal_u8(vmull_u8(*v31.val[1].i8, *v21.i8), *v31.val[2].i8, *v22.i8), *v31.val[3].i8, *v23.i8), v24);
    v19[1] = vaddhn_s16(vmlal_high_u8(vmlal_high_u8(vmull_high_u8(v31.val[1], v21), v31.val[2], v22), v31.val[3], v23), v24);
    v19 += 2;
  }

  while (!(_NF ^ _VF | _ZF));
  return memcpy(a2 + v4, v27, v17);
}

void *ABGRToYRow_Any_NEON(const char *a1, int8x8_t *a2, int a3)
{
  v29 = *MEMORY[0x277D85DE8];
  memset(__dst, 0, sizeof(__dst));
  v4 = a3 & 0xFFFFFFF0;
  if ((a3 & 0xFFFFFFF0) >= 1)
  {
    v5 = a3 & 0xFFFFFFF0;
    v6 = a2;
    _X10 = a1;
    v8 = vdupq_lane_s8(0x6557108000198142, 0);
    v9 = vdupq_lane_s8(0x6557108000198142, 1);
    v10 = vdupq_lane_s8(0x6557108000198142, 2);
    v11 = vdupq_lane_s16(0x6557108000198142, 2);
    do
    {
      v30 = vld4q_s8(_X10);
      _X10 += 64;
      v5 -= 16;
      __asm { PRFM            #0, [X10,#0x1C0] }

      *v6 = vaddhn_s16(vmlal_u8(vmlal_u8(vmull_u8(*v30.val[0].i8, *v8.i8), *v30.val[1].i8, *v9.i8), *v30.val[2].i8, *v10.i8), v11);
      v6[1] = vaddhn_s16(vmlal_high_u8(vmlal_high_u8(vmull_high_u8(v30.val[0], v8), v30.val[1], v9), v30.val[2], v10), v11);
      v6 += 2;
    }

    while (!(_NF ^ _VF | _ZF));
  }

  v17 = a3 & 0xF;
  _X23 = __dst;
  memcpy(__dst, &a1[4 * v4], (4 * v17));
  v19 = v27;
  v20 = 16;
  v21 = vdupq_lane_s8(0x6557108000198142, 0);
  v22 = vdupq_lane_s8(0x6557108000198142, 1);
  v23 = vdupq_lane_s8(0x6557108000198142, 2);
  v24 = vdupq_lane_s16(0x6557108000198142, 2);
  do
  {
    v31 = vld4q_s8(_X23);
    _X23 += 64;
    v20 -= 16;
    __asm { PRFM            #0, [X23,#0x1C0] }

    *v19 = vaddhn_s16(vmlal_u8(vmlal_u8(vmull_u8(*v31.val[0].i8, *v21.i8), *v31.val[1].i8, *v22.i8), *v31.val[2].i8, *v23.i8), v24);
    v19[1] = vaddhn_s16(vmlal_high_u8(vmlal_high_u8(vmull_high_u8(v31.val[0], v21), v31.val[1], v22), v31.val[2], v23), v24);
    v19 += 2;
  }

  while (!(_NF ^ _VF | _ZF));
  return memcpy(a2 + v4, v27, v17);
}

void *RGBAToYRow_Any_NEON(const char *a1, int8x8_t *a2, int a3)
{
  v29 = *MEMORY[0x277D85DE8];
  memset(__dst, 0, sizeof(__dst));
  v4 = a3 & 0xFFFFFFF0;
  if ((a3 & 0xFFFFFFF0) >= 1)
  {
    v5 = a3 & 0xFFFFFFF0;
    v6 = a2;
    _X10 = a1;
    v8 = vdupq_lane_s8(0x108000428119, 0);
    v9 = vdupq_lane_s8(0x108000428119, 1);
    v10 = vdupq_lane_s8(0x108000428119, 2);
    v11 = vdupq_lane_s16(0x108000428119, 2);
    do
    {
      v30 = vld4q_s8(_X10);
      _X10 += 64;
      v5 -= 16;
      __asm { PRFM            #0, [X10,#0x1C0] }

      *v6 = vaddhn_s16(vmlal_u8(vmlal_u8(vmull_u8(*v30.val[1].i8, *v8.i8), *v30.val[2].i8, *v9.i8), *v30.val[3].i8, *v10.i8), v11);
      v6[1] = vaddhn_s16(vmlal_high_u8(vmlal_high_u8(vmull_high_u8(v30.val[1], v8), v30.val[2], v9), v30.val[3], v10), v11);
      v6 += 2;
    }

    while (!(_NF ^ _VF | _ZF));
  }

  v17 = a3 & 0xF;
  _X23 = __dst;
  memcpy(__dst, &a1[4 * v4], (4 * v17));
  v19 = v27;
  v20 = 16;
  v21 = vdupq_lane_s8(0x108000428119, 0);
  v22 = vdupq_lane_s8(0x108000428119, 1);
  v23 = vdupq_lane_s8(0x108000428119, 2);
  v24 = vdupq_lane_s16(0x108000428119, 2);
  do
  {
    v31 = vld4q_s8(_X23);
    _X23 += 64;
    v20 -= 16;
    __asm { PRFM            #0, [X23,#0x1C0] }

    *v19 = vaddhn_s16(vmlal_u8(vmlal_u8(vmull_u8(*v31.val[1].i8, *v21.i8), *v31.val[2].i8, *v22.i8), *v31.val[3].i8, *v23.i8), v24);
    v19[1] = vaddhn_s16(vmlal_high_u8(vmlal_high_u8(vmull_high_u8(v31.val[1], v21), v31.val[2], v22), v31.val[3], v23), v24);
    v19 += 2;
  }

  while (!(_NF ^ _VF | _ZF));
  return memcpy(a2 + v4, v27, v17);
}

void *RGB24ToYRow_Any_NEON(const char *a1, int8x8_t *a2, int a3)
{
  v30 = *MEMORY[0x277D85DE8];
  memset(__dst, 0, sizeof(__dst));
  v4 = a3 & 0xFFFFFFF0;
  if ((a3 & 0xFFFFFFF0) >= 1)
  {
    v5 = a3 & 0xFFFFFFF0;
    v6 = a2;
    _X12 = a1;
    v8 = vdupq_lane_s8(0x108000428119, 0);
    v9 = vdupq_lane_s8(0x108000428119, 1);
    v10 = vdupq_lane_s8(0x108000428119, 2);
    v11 = vdupq_lane_s16(0x108000428119, 2);
    do
    {
      v31 = vld3q_s8(_X12);
      _X12 += 48;
      v5 -= 16;
      __asm { PRFM            #0, [X12,#0x1C0] }

      *v6 = vaddhn_s16(vmlal_u8(vmlal_u8(vmull_u8(*v31.val[0].i8, *v8.i8), *v31.val[1].i8, *v9.i8), *v31.val[2].i8, *v10.i8), v11);
      v6[1] = vaddhn_s16(vmlal_high_u8(vmlal_high_u8(vmull_high_u8(v31.val[0], v8), v31.val[1], v9), v31.val[2], v10), v11);
      v6 += 2;
    }

    while (!(_NF ^ _VF | _ZF));
  }

  v17 = v4;
  v18 = a3 & 0xF;
  _X23 = __dst;
  memcpy(__dst, &a1[3 * v4], (3 * v18));
  v20 = v28;
  v21 = 16;
  v22 = vdupq_lane_s8(0x108000428119, 0);
  v23 = vdupq_lane_s8(0x108000428119, 1);
  v24 = vdupq_lane_s8(0x108000428119, 2);
  v25 = vdupq_lane_s16(0x108000428119, 2);
  do
  {
    v32 = vld3q_s8(_X23);
    _X23 += 48;
    v21 -= 16;
    __asm { PRFM            #0, [X23,#0x1C0] }

    *v20 = vaddhn_s16(vmlal_u8(vmlal_u8(vmull_u8(*v32.val[0].i8, *v22.i8), *v32.val[1].i8, *v23.i8), *v32.val[2].i8, *v24.i8), v25);
    v20[1] = vaddhn_s16(vmlal_high_u8(vmlal_high_u8(vmull_high_u8(v32.val[0], v22), v32.val[1], v23), v32.val[2], v24), v25);
    v20 += 2;
  }

  while (!(_NF ^ _VF | _ZF));
  return memcpy(a2 + v17, v28, v18);
}

void *RAWToYRow_Any_NEON(const char *a1, int8x8_t *a2, int a3)
{
  v30 = *MEMORY[0x277D85DE8];
  memset(__dst, 0, sizeof(__dst));
  v4 = a3 & 0xFFFFFFF0;
  if ((a3 & 0xFFFFFFF0) >= 1)
  {
    v5 = a3 & 0xFFFFFFF0;
    v6 = a2;
    _X12 = a1;
    v8 = vdupq_lane_s8(0x6557108000198142, 0);
    v9 = vdupq_lane_s8(0x6557108000198142, 1);
    v10 = vdupq_lane_s8(0x6557108000198142, 2);
    v11 = vdupq_lane_s16(0x6557108000198142, 2);
    do
    {
      v31 = vld3q_s8(_X12);
      _X12 += 48;
      v5 -= 16;
      __asm { PRFM            #0, [X12,#0x1C0] }

      *v6 = vaddhn_s16(vmlal_u8(vmlal_u8(vmull_u8(*v31.val[0].i8, *v8.i8), *v31.val[1].i8, *v9.i8), *v31.val[2].i8, *v10.i8), v11);
      v6[1] = vaddhn_s16(vmlal_high_u8(vmlal_high_u8(vmull_high_u8(v31.val[0], v8), v31.val[1], v9), v31.val[2], v10), v11);
      v6 += 2;
    }

    while (!(_NF ^ _VF | _ZF));
  }

  v17 = v4;
  v18 = a3 & 0xF;
  _X23 = __dst;
  memcpy(__dst, &a1[3 * v4], (3 * v18));
  v20 = v28;
  v21 = 16;
  v22 = vdupq_lane_s8(0x6557108000198142, 0);
  v23 = vdupq_lane_s8(0x6557108000198142, 1);
  v24 = vdupq_lane_s8(0x6557108000198142, 2);
  v25 = vdupq_lane_s16(0x6557108000198142, 2);
  do
  {
    v32 = vld3q_s8(_X23);
    _X23 += 48;
    v21 -= 16;
    __asm { PRFM            #0, [X23,#0x1C0] }

    *v20 = vaddhn_s16(vmlal_u8(vmlal_u8(vmull_u8(*v32.val[0].i8, *v22.i8), *v32.val[1].i8, *v23.i8), *v32.val[2].i8, *v24.i8), v25);
    v20[1] = vaddhn_s16(vmlal_high_u8(vmlal_high_u8(vmull_high_u8(v32.val[0], v22), v32.val[1], v23), v32.val[2], v24), v25);
    v20 += 2;
  }

  while (!(_NF ^ _VF | _ZF));
  return memcpy(a2 + v17, v28, v18);
}

void *RGB565ToYRow_Any_NEON(int8x16_t *a1, uint8x8_t *a2, int a3)
{
  v43 = *MEMORY[0x277D85DE8];
  memset(__dst, 0, sizeof(__dst));
  v4 = a3 & 0xFFFFFFF0;
  if ((a3 & 0xFFFFFFF0) >= 1)
  {
    _X8 = a1;
    v6 = a3 & 0xFFFFFFF0;
    v7 = a2;
    v8.i64[0] = 0x1919191919191919;
    v8.i64[1] = 0x1919191919191919;
    v9.i64[0] = 0x8181818181818181;
    v9.i64[1] = 0x8181818181818181;
    v10.i64[0] = 0x4242424242424242;
    v10.i64[1] = 0x4242424242424242;
    do
    {
      v11 = *_X8;
      v12 = _X8[1];
      _X8 += 2;
      v6 -= 16;
      v13 = vshrn_high_n_s16(vshrn_n_s16(v11, 3uLL), v12, 3uLL);
      v14 = vuzp2q_s8(v11, v12);
      v15 = vsriq_n_s8(v13, v13, 6uLL);
      v16 = vshlq_n_s8(vuzp1q_s8(v11, v12), 3uLL);
      v17 = vsriq_n_s8(v14, v14, 5uLL);
      v18 = vsriq_n_s8(v16, v16, 5uLL);
      __asm { PRFM            #0, [X8,#0x1C0] }

      *v7 = vqadd_u8(vqrshrn_n_u16(vmlal_u8(vmlal_u8(vmull_u8(*v18.i8, *v8.i8), *v15.i8, *v9.i8), *v17.i8, *v10.i8), 8uLL), 0x1010101010101010);
      v7[1] = vqadd_u8(vqrshrn_n_u16(vmlal_high_u8(vmlal_high_u8(vmull_high_u8(v18, v8), v15, v9), v17, v10), 8uLL), 0x1010101010101010);
      v7 += 2;
    }

    while (!(_NF ^ _VF | _ZF));
  }

  v24 = a3 & 0xF;
  _X22 = __dst;
  memcpy(__dst, a1 + 2 * v4, (2 * v24));
  v26 = v41;
  v27 = 16;
  v28.i64[0] = 0x1919191919191919;
  v28.i64[1] = 0x1919191919191919;
  v29.i64[0] = 0x8181818181818181;
  v29.i64[1] = 0x8181818181818181;
  v30.i64[0] = 0x4242424242424242;
  v30.i64[1] = 0x4242424242424242;
  do
  {
    v31 = *_X22;
    v32 = _X22[1];
    _X22 += 2;
    v27 -= 16;
    v33 = vshrn_high_n_s16(vshrn_n_s16(v31, 3uLL), v32, 3uLL);
    v34 = vuzp2q_s8(v31, v32);
    v35 = vsriq_n_s8(v33, v33, 6uLL);
    v36 = vshlq_n_s8(vuzp1q_s8(v31, v32), 3uLL);
    v37 = vsriq_n_s8(v34, v34, 5uLL);
    v38 = vsriq_n_s8(v36, v36, 5uLL);
    __asm { PRFM            #0, [X22,#0x1C0] }

    *v26 = vqadd_u8(vqrshrn_n_u16(vmlal_u8(vmlal_u8(vmull_u8(*v38.i8, *v28.i8), *v35.i8, *v29.i8), *v37.i8, *v30.i8), 8uLL), 0x1010101010101010);
    v26[1] = vqadd_u8(vqrshrn_n_u16(vmlal_high_u8(vmlal_high_u8(vmull_high_u8(v38, v28), v35, v29), v37, v30), 8uLL), 0x1010101010101010);
    v26 += 2;
  }

  while (!(_NF ^ _VF | _ZF));
  return memcpy(a2 + v4, v41, v24);
}

void *ARGB1555ToYRow_Any_NEON(int8x16_t *a1, uint8x16_t *a2, int a3)
{
  v49 = *MEMORY[0x277D85DE8];
  memset(__dst, 0, sizeof(__dst));
  v4 = a3 & 0xFFFFFFF0;
  if ((a3 & 0xFFFFFFF0) >= 1)
  {
    _X8 = a1;
    v6 = a3 & 0xFFFFFFF0;
    v7 = a2;
    v8.i64[0] = 0x1919191919191919;
    v8.i64[1] = 0x1919191919191919;
    v9.i64[0] = 0x8181818181818181;
    v9.i64[1] = 0x8181818181818181;
    v10.i64[0] = 0x4242424242424242;
    v10.i64[1] = 0x4242424242424242;
    v11.i64[0] = 0x1010101010101010;
    v11.i64[1] = 0x1010101010101010;
    do
    {
      v12 = *_X8;
      v13 = _X8[1];
      _X8 += 2;
      v6 -= 16;
      v14 = vshrn_n_s16(v12, 7uLL);
      v15 = vshrn_n_s16(v12, 2uLL);
      v16 = vshlq_n_s8(vuzp1q_s8(v12, v13), 3uLL);
      v17 = vshrn_high_n_s16(v14, v13, 7uLL);
      v18 = vshrn_high_n_s16(v15, v13, 2uLL);
      v19 = vsriq_n_s8(v16, v16, 5uLL);
      v20 = vsriq_n_s8(v17, v17, 5uLL);
      v21 = vsriq_n_s8(v18, v18, 5uLL);
      __asm { PRFM            #0, [X8,#0x1C0] }

      *v7++ = vqaddq_u8(vqrshrn_high_n_u16(vqrshrn_n_u16(vmlal_u8(vmlal_u8(vmull_u8(*v19.i8, *v8.i8), *v21.i8, *v9.i8), *v20.i8, *v10.i8), 8uLL), vmlal_high_u8(vmlal_high_u8(vmull_high_u8(v19, v8), v21, v9), v20, v10), 8uLL), v11);
    }

    while (!(_NF ^ _VF | _ZF));
  }

  v27 = a3 & 0xF;
  _X22 = __dst;
  memcpy(__dst, a1 + 2 * v4, (2 * v27));
  v29 = v47;
  v30 = 16;
  v31.i64[0] = 0x1919191919191919;
  v31.i64[1] = 0x1919191919191919;
  v32.i64[0] = 0x8181818181818181;
  v32.i64[1] = 0x8181818181818181;
  v33.i64[0] = 0x4242424242424242;
  v33.i64[1] = 0x4242424242424242;
  v34.i64[0] = 0x1010101010101010;
  v34.i64[1] = 0x1010101010101010;
  do
  {
    v35 = *_X22;
    v36 = _X22[1];
    _X22 += 2;
    v30 -= 16;
    v37 = vshrn_n_s16(v35, 7uLL);
    v38 = vshrn_n_s16(v35, 2uLL);
    v39 = vshlq_n_s8(vuzp1q_s8(v35, v36), 3uLL);
    v40 = vshrn_high_n_s16(v37, v36, 7uLL);
    v41 = vshrn_high_n_s16(v38, v36, 2uLL);
    v42 = vsriq_n_s8(v39, v39, 5uLL);
    v43 = vsriq_n_s8(v40, v40, 5uLL);
    v44 = vsriq_n_s8(v41, v41, 5uLL);
    __asm { PRFM            #0, [X22,#0x1C0] }

    *v29++ = vqaddq_u8(vqrshrn_high_n_u16(vqrshrn_n_u16(vmlal_u8(vmlal_u8(vmull_u8(*v42.i8, *v31.i8), *v44.i8, *v32.i8), *v43.i8, *v33.i8), 8uLL), vmlal_high_u8(vmlal_high_u8(vmull_high_u8(v42, v31), v44, v32), v43, v33), 8uLL), v34);
  }

  while (!(_NF ^ _VF | _ZF));
  return memcpy(&a2->i8[v4], v47, v27);
}

void *ARGB4444ToYRow_Any_NEON(int8x16_t *a1, uint8x16_t *a2, int a3)
{
  v47 = *MEMORY[0x277D85DE8];
  memset(__dst, 0, sizeof(__dst));
  v4 = a3 & 0xFFFFFFF0;
  if ((a3 & 0xFFFFFFF0) >= 1)
  {
    _X8 = a1;
    v6 = a3 & 0xFFFFFFF0;
    v7 = a2;
    v8.i64[0] = 0x1919191919191919;
    v8.i64[1] = 0x1919191919191919;
    v9.i64[0] = 0x8181818181818181;
    v9.i64[1] = 0x8181818181818181;
    v10.i64[0] = 0x4242424242424242;
    v10.i64[1] = 0x4242424242424242;
    v11.i64[0] = 0x1010101010101010;
    v11.i64[1] = 0x1010101010101010;
    do
    {
      v12 = *_X8;
      v13 = _X8[1];
      _X8 += 2;
      v6 -= 16;
      v14 = vuzp1q_s8(v12, v13);
      v15 = vshrn_n_s16(v12, 4uLL);
      v16 = vshlq_n_s8(v14, 4uLL);
      v17 = vshrn_high_n_s16(v15, v13, 4uLL);
      v18 = vsriq_n_s8(v14, v14, 4uLL);
      v19 = vsriq_n_s8(v17, v17, 4uLL);
      v20 = vsriq_n_s8(v16, v16, 4uLL);
      __asm { PRFM            #0, [X8,#0x1C0] }

      *v7++ = vqaddq_u8(vqrshrn_high_n_u16(vqrshrn_n_u16(vmlal_u8(vmlal_u8(vmull_u8(*v20.i8, *v8.i8), *v18.i8, *v9.i8), *v19.i8, *v10.i8), 8uLL), vmlal_high_u8(vmlal_high_u8(vmull_high_u8(v20, v8), v18, v9), v19, v10), 8uLL), v11);
    }

    while (!(_NF ^ _VF | _ZF));
  }

  v26 = a3 & 0xF;
  _X22 = __dst;
  memcpy(__dst, a1 + 2 * v4, (2 * v26));
  v28 = v45;
  v29 = 16;
  v30.i64[0] = 0x1919191919191919;
  v30.i64[1] = 0x1919191919191919;
  v31.i64[0] = 0x8181818181818181;
  v31.i64[1] = 0x8181818181818181;
  v32.i64[0] = 0x4242424242424242;
  v32.i64[1] = 0x4242424242424242;
  v33.i64[0] = 0x1010101010101010;
  v33.i64[1] = 0x1010101010101010;
  do
  {
    v34 = *_X22;
    v35 = _X22[1];
    _X22 += 2;
    v29 -= 16;
    v36 = vuzp1q_s8(v34, v35);
    v37 = vshrn_n_s16(v34, 4uLL);
    v38 = vshlq_n_s8(v36, 4uLL);
    v39 = vshrn_high_n_s16(v37, v35, 4uLL);
    v40 = vsriq_n_s8(v36, v36, 4uLL);
    v41 = vsriq_n_s8(v39, v39, 4uLL);
    v42 = vsriq_n_s8(v38, v38, 4uLL);
    __asm { PRFM            #0, [X22,#0x1C0] }

    *v28++ = vqaddq_u8(vqrshrn_high_n_u16(vqrshrn_n_u16(vmlal_u8(vmlal_u8(vmull_u8(*v42.i8, *v30.i8), *v40.i8, *v31.i8), *v41.i8, *v32.i8), 8uLL), vmlal_high_u8(vmlal_high_u8(vmull_high_u8(v42, v30), v40, v31), v41, v32), 8uLL), v33);
  }

  while (!(_NF ^ _VF | _ZF));
  return memcpy(&a2->i8[v4], v45, v26);
}

void *YUY2ToYRow_Any_NEON(const char *a1, unsigned __int128 *a2, int a3)
{
  v23 = *MEMORY[0x277D85DE8];
  memset(__dst, 0, sizeof(__dst));
  v4 = a3 & 0xFFFFFFF0;
  if ((a3 & 0xFFFFFFF0) >= 1)
  {
    _X8 = a1;
    v6 = a3 & 0xFFFFFFF0;
    v7 = a2;
    do
    {
      v8 = vld2q_s8(_X8);
      _X8 += 32;
      v6 -= 16;
      __asm { PRFM            #0, [X8,#0x1C0] }

      *v7++ = v8;
    }

    while (!(_NF ^ _VF | _ZF));
  }

  v14 = a3 & 0xF;
  _X22 = __dst;
  memcpy(__dst, &a1[2 * v4], (2 * (a3 & 0xF) + 2) & 0x3C);
  v16 = v21;
  v17 = 16;
  do
  {
    v18 = vld2q_s8(_X22);
    _X22 += 32;
    v17 -= 16;
    __asm { PRFM            #0, [X22,#0x1C0] }

    *v16++ = v18;
  }

  while (!(_NF ^ _VF | _ZF));
  return memcpy(a2 + v4, v21, v14);
}

void *UYVYToYRow_Any_NEON(const char *a1, int8x16_t *a2, int a3)
{
  v21 = *MEMORY[0x277D85DE8];
  memset(__dst, 0, sizeof(__dst));
  v4 = a3 & 0xFFFFFFF0;
  if ((a3 & 0xFFFFFFF0) >= 1)
  {
    _X8 = a1;
    v6 = a3 & 0xFFFFFFF0;
    v7 = a2;
    do
    {
      v22 = vld2q_s8(_X8);
      _X8 += 32;
      v6 -= 16;
      __asm { PRFM            #0, [X8,#0x1C0] }

      *v7++ = v22.val[1];
    }

    while (!(_NF ^ _VF | _ZF));
  }

  v13 = a3 & 0xF;
  _X22 = __dst;
  memcpy(__dst, &a1[2 * v4], (2 * (a3 & 0xF) + 2) & 0x3C);
  v15 = v19;
  v16 = 16;
  do
  {
    v23 = vld2q_s8(_X22);
    _X22 += 32;
    v16 -= 16;
    __asm { PRFM            #0, [X22,#0x1C0] }

    *v15++ = v23.val[1];
  }

  while (!(_NF ^ _VF | _ZF));
  return memcpy(&a2->i8[v4], v19, v13);
}

void *Convert16To8Row_Any_NEON(uint16x8_t *a1, int8x16_t *a2, unsigned int a3, int a4)
{
  v29 = *MEMORY[0x277D85DE8];
  memset(__dst, 0, sizeof(__dst));
  v5 = a4 & 0xFFFFFFF0;
  v6 = 23 - __clz(a3);
  if ((a4 & 0xFFFFFFF0) >= 1)
  {
    v7 = a2;
    _X9 = a1;
    v9 = a4 & 0xFFFFFFF0;
    v10 = vdupq_n_s16(v6);
    do
    {
      v11 = *_X9;
      v12 = _X9[1];
      _X9 += 2;
      v9 -= 16;
      __asm { PRFM            #0, [X9,#0x1C0] }

      *v7++ = vuzp2q_s8(vqshlq_u16(v11, v10), vqshlq_u16(v12, v10));
    }

    while (!(_NF ^ _VF | _ZF));
  }

  v18 = a4 & 0xF;
  _X23 = __dst;
  memcpy(__dst, a1 + 2 * v5, (2 * v18));
  v20 = v27;
  v21 = 16;
  v22 = vdupq_n_s16(v6);
  do
  {
    v23 = *_X23;
    v24 = _X23[1];
    _X23 += 2;
    v21 -= 16;
    __asm { PRFM            #0, [X23,#0x1C0] }

    *v20++ = vuzp2q_s8(vqshlq_u16(v23, v22), vqshlq_u16(v24, v22));
  }

  while (!(_NF ^ _VF | _ZF));
  return memcpy(&a2->i8[v5], v27, v18);
}

void *Convert8To16Row_Any_NEON(int8x16_t *a1, uint16x8_t *a2, unsigned int a3, int a4)
{
  v21 = *MEMORY[0x277D85DE8];
  memset(__dst, 0, sizeof(__dst));
  v5 = a4 & 0xFFFFFFF0;
  v6 = 15 - __clz(a3);
  if ((a4 & 0xFFFFFFF0) >= 1)
  {
    v7 = a2;
    v8 = a1;
    v9 = a4 & 0xFFFFFFF0;
    v10 = vdupq_n_s16(v6);
    do
    {
      v11 = *v8++;
      v9 -= 16;
      *v7 = vshlq_u16(vzip1q_s8(v11, v11), v10);
      v7[1] = vshlq_u16(vzip2q_s8(v11, v11), v10);
      v7 += 2;
    }

    while (v9);
  }

  v12 = a4 & 0xF;
  v13 = __dst;
  memcpy(__dst, &a1->i8[v5], a4 & 0xF);
  v14 = v19;
  v15 = 16;
  v16 = vdupq_n_s16(v6);
  do
  {
    v17 = *v13++;
    v15 -= 16;
    *v14 = vshlq_u16(vzip1q_s8(v17, v17), v16);
    v14[1] = vshlq_u16(vzip2q_s8(v17, v17), v16);
    v14 += 2;
  }

  while (v15);
  return memcpy(a2 + 2 * v5, v19, (2 * v12));
}

void *MultiplyRow_16_Any_NEON(int16x8_t *a1, int16x8_t *a2, unsigned int a3, int a4)
{
  v29 = *MEMORY[0x277D85DE8];
  memset(__dst, 0, sizeof(__dst));
  if ((a4 & 0xFFFFFFF0) >= 1)
  {
    v6 = a2;
    _X11 = a1;
    v8 = a4 & 0xFFFFFFF0;
    v9 = vdupq_n_s16(a3);
    do
    {
      v10 = *_X11;
      v11 = _X11[1];
      _X11 += 2;
      v8 -= 16;
      __asm { PRFM            #0, [X11,#0x1C0] }

      *v6 = vmulq_s16(v10, v9);
      v6[1] = vmulq_s16(v11, v9);
      v6 += 2;
    }

    while (!(_NF ^ _VF | _ZF));
  }

  v17 = 2 * (a4 & 0xFFFFFFF0);
  v18 = 2 * (a4 & 0xFu);
  _X23 = __dst;
  memcpy(__dst, &a1->i8[v17], v18);
  v20 = v27;
  v21 = 16;
  v22 = vdupq_n_s16(a3);
  do
  {
    v23 = *_X23;
    v24 = _X23[1];
    _X23 += 2;
    v21 -= 16;
    __asm { PRFM            #0, [X23,#0x1C0] }

    *v20 = vmulq_s16(v23, v22);
    v20[1] = vmulq_s16(v24, v22);
    v20 += 2;
  }

  while (!(_NF ^ _VF | _ZF));
  return memcpy(&a2->i8[v17], v27, v18);
}

void *InterpolateRow_Any_NEON(uint8x16_t *a1, uint8x16_t *a2, uint64_t a3, int a4, unsigned int a5)
{
  v52 = *MEMORY[0x277D85DE8];
  memset(__dst, 0, sizeof(__dst));
  memset(v51, 0, sizeof(v51));
  v9 = a4 & 0xF;
  v10 = a4 & 0xFFFFFFF0;
  if ((a4 & 0xFFFFFFF0) >= 1)
  {
    _X10 = (a2 + a3);
    _X11 = a2;
    v13 = a4 & 0xFFFFFFF0;
    v14 = a1;
    if (a5)
    {
      if (a5 == 128)
      {
        do
        {
          v25 = *_X11++;
          v26 = *_X10++;
          v13 -= 16;
          __asm
          {
            PRFM            #0, [X11,#0x1C0]
            PRFM            #0, [X10,#0x1C0]
          }

          *v14++ = vrhaddq_u8(v25, v26);
        }

        while (!(_NF ^ _VF | _ZF));
      }

      else
      {
        v15 = vdupq_n_s8(a5);
        v16 = vdupq_n_s8(256 - a5);
        do
        {
          v17 = *_X11++;
          v18 = *_X10++;
          v13 -= 16;
          __asm
          {
            PRFM            #0, [X11,#0x1C0]
            PRFM            #0, [X10,#0x1C0]
          }

          *v14++ = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v17.i8, *v16.i8), *v18.i8, *v15.i8), 8uLL), vmlal_high_u8(vmull_high_u8(v17, v16), v18, v15), 8uLL);
        }

        while (!(_NF ^ _VF | _ZF));
      }
    }

    else
    {
      do
      {
        v29 = *_X11++;
        v13 -= 16;
        __asm { PRFM            #0, [X11,#0x1C0] }

        *v14++ = v29;
      }

      while (!(_NF ^ _VF | _ZF));
    }
  }

  v31 = v10;
  _X25 = __dst;
  memcpy(__dst, &a2->i8[v10], a4 & 0xF);
  if (a5)
  {
    memcpy(v51, &a2->i8[a3 + v31], v9);
  }

  _X9 = v51;
  v34 = v49;
  v35 = 16;
  if (a5)
  {
    if (a5 == 128)
    {
      do
      {
        v42 = *_X25++;
        v43 = *_X9++;
        v35 -= 16;
        __asm
        {
          PRFM            #0, [X25,#0x1C0]
          PRFM            #0, [X9,#0x1C0]
        }

        *v34++ = vrhaddq_u8(v42, v43);
      }

      while (!(_NF ^ _VF | _ZF));
    }

    else
    {
      v36 = vdupq_n_s8(a5);
      v37 = vdupq_n_s8(256 - a5);
      do
      {
        v38 = *_X25++;
        v39 = *_X9++;
        v35 -= 16;
        __asm
        {
          PRFM            #0, [X25,#0x1C0]
          PRFM            #0, [X9,#0x1C0]
        }

        *v34++ = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v38.i8, *v37.i8), *v39.i8, *v36.i8), 8uLL), vmlal_high_u8(vmull_high_u8(v38, v37), v39, v36), 8uLL);
      }

      while (!(_NF ^ _VF | _ZF));
    }
  }

  else
  {
    do
    {
      v46 = *_X25++;
      v35 -= 16;
      __asm { PRFM            #0, [X25,#0x1C0] }

      *v34++ = v46;
    }

    while (!(_NF ^ _VF | _ZF));
  }

  return memcpy(&a1->i8[v31], v49, v9);
}

void *InterpolateRow_16To8_Any_NEON(uint8x8_t *a1, uint16x8_t *a2, uint64_t a3, unsigned int a4, int a5, unsigned int a6, double a7, double a8, uint16x8_t a9)
{
  v59 = *MEMORY[0x277D85DE8];
  memset(__dst, 0, sizeof(__dst));
  memset(v58, 0, sizeof(v58));
  v11 = a5 & 7;
  v12 = a5 & 0xFFFFFFF8;
  v13 = &a2->i8[2 * a3];
  v14 = __clz(a4);
  if ((a5 & 0xFFFFFFF8) >= 1)
  {
    v15 = a5 & 0xFFFFFFF8;
    v16 = a1;
    _X13 = (a2 + 2 * a3);
    _X14 = a2;
    v19 = vdupq_n_s16(15 - v14);
    if (a6)
    {
      if (a6 == 128)
      {
        do
        {
          v30 = *_X14++;
          v31 = *_X13++;
          v15 -= 8;
          __asm
          {
            PRFM            #0, [X14,#0x1C0]
            PRFM            #0, [X13,#0x1C0]
          }

          *v16++ = vqmovn_u16(vshlq_u16(vrhaddq_u16(v30, v31), v19));
        }

        while (!(_NF ^ _VF | _ZF));
      }

      else
      {
        v20 = vdupq_n_s16(a6);
        v21 = vdupq_n_s16(256 - a6);
        do
        {
          v22 = *_X14++;
          v23 = *_X13++;
          v15 -= 8;
          __asm
          {
            PRFM            #0, [X14,#0x1C0]
            PRFM            #0, [X13,#0x1C0]
          }

          *v16++ = vqmovn_u16(vshlq_u16(vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v22.i8, *v21.i8), *v23.i8, *v20.i8), 8uLL), vmlal_high_u16(vmull_high_u16(v22, v21), v23, v20), 8uLL), v19));
        }

        while (!(_NF ^ _VF | _ZF));
      }
    }

    else
    {
      do
      {
        v34 = *_X14++;
        __asm { PRFM            #0, [X14,#0x1C0] }

        _VF = __OFSUB__(v15, 8);
        v15 -= 8;
        *v16++ = vqmovn_u16(vshlq_u16(v34, a9));
      }

      while (!((v15 < 0) ^ _VF | (v15 == 0)));
    }
  }

  v36 = v12;
  _X26 = __dst;
  memcpy(__dst, a2 + 2 * v12, 2 * (a5 & 7));
  if (a6)
  {
    memcpy(v58, &v13[2 * v36], 2 * v11);
  }

  _X9 = v58;
  v40 = v56;
  v41 = 8;
  v42 = vdupq_n_s16(15 - v14);
  if (a6)
  {
    if (a6 == 128)
    {
      do
      {
        v49 = *_X26++;
        v50 = *_X9++;
        v41 -= 8;
        __asm
        {
          PRFM            #0, [X26,#0x1C0]
          PRFM            #0, [X9,#0x1C0]
        }

        *v40++ = vqmovn_u16(vshlq_u16(vrhaddq_u16(v49, v50), v42));
      }

      while (!(_NF ^ _VF | _ZF));
    }

    else
    {
      v43 = vdupq_n_s16(a6);
      v44 = vdupq_n_s16(256 - a6);
      do
      {
        v45 = *_X26++;
        v46 = *_X9++;
        v41 -= 8;
        __asm
        {
          PRFM            #0, [X26,#0x1C0]
          PRFM            #0, [X9,#0x1C0]
        }

        *v40++ = vqmovn_u16(vshlq_u16(vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v45.i8, *v44.i8), *v46.i8, *v43.i8), 8uLL), vmlal_high_u16(vmull_high_u16(v45, v44), v46, v43), 8uLL), v42));
      }

      while (!(_NF ^ _VF | _ZF));
    }
  }

  else
  {
    do
    {
      v53 = *_X26++;
      __asm { PRFM            #0, [X26,#0x1C0] }

      _VF = __OFSUB__(v41, 8);
      v41 -= 8;
      *v40++ = vqmovn_u16(vshlq_u16(v53, v38));
    }

    while (!((v41 < 0) ^ _VF | (v41 == 0)));
  }

  return memcpy(a1 + v36, v56, v11);
}

void *MirrorRow_Any_NEON(char *__src, int8x16_t *a2, int a3)
{
  v20 = *MEMORY[0x277D85DE8];
  memset(__dst, 0, sizeof(__dst));
  v4 = a3 & 0x1F;
  v5 = a3 & 0xFFFFFFE0;
  if ((a3 & 0xFFFFFFE0) >= 1)
  {
    v6 = a2;
    v7 = a3 & 0xFFFFFFE0;
    v8 = &__src[v4 - 32 + v5];
    do
    {
      v9 = v8[1];
      v10 = *v8;
      v8 -= 2;
      v11 = __OFSUB__(v7, 32);
      v7 -= 32;
      *v6 = vqtbl1q_s8(v9, libyuv::kShuffleMirror);
      v6[1] = vqtbl1q_s8(v10, libyuv::kShuffleMirror);
      v6 += 2;
    }

    while (!((v7 < 0) ^ v11 | (v7 == 0)));
  }

  v12 = __dst;
  memcpy(__dst, __src, a3 & 0x1F);
  v13 = 32;
  v14 = v18;
  do
  {
    v15 = v12[1];
    v16 = *v12;
    v12 -= 2;
    v11 = __OFSUB__(v13, 32);
    v13 -= 32;
    *v14 = vqtbl1q_s8(v15, libyuv::kShuffleMirror);
    v14[1] = vqtbl1q_s8(v16, libyuv::kShuffleMirror);
    v14 += 2;
  }

  while (!((v13 < 0) ^ v11 | (v13 == 0)));
  return memcpy(&a2->i8[v5], &v18[(32 - v4)], v4);
}

void *SetRow_Any_NEON(int8x16_t *a1, unsigned int a2, int a3)
{
  v13[9] = *MEMORY[0x277D85DE8];
  v3 = a3 & 0xFFFFFFF0;
  if ((a3 & 0xFFFFFFF0) >= 1)
  {
    v4 = a3 & 0xFFFFFFF0;
    v5 = a1;
    v6 = vdupq_n_s8(a2);
    do
    {
      v7 = __OFSUB__(v4, 16);
      v4 -= 16;
      *v5++ = v6;
    }

    while (!((v4 < 0) ^ v7 | (v4 == 0)));
  }

  v8 = a3 & 0xF;
  v9 = v13;
  v10 = 16;
  v11 = vdupq_n_s8(a2);
  do
  {
    v7 = __OFSUB__(v10, 16);
    v10 -= 16;
    *v9++ = v11;
  }

  while (!((v10 < 0) ^ v7 | (v10 == 0)));
  return memcpy(&a1->i8[v3], v13, v8);
}

void *SplitUVRow_Any_NEON(const char *a1, int8x16_t *a2, int8x16_t *a3, int a4)
{
  v27 = *MEMORY[0x277D85DE8];
  memset(__dst, 0, sizeof(__dst));
  v6 = a4 & 0xFFFFFFF0;
  if ((a4 & 0xFFFFFFF0) >= 1)
  {
    v7 = a2;
    v8 = a4 & 0xFFFFFFF0;
    _X11 = a1;
    v10 = a3;
    do
    {
      v28 = vld2q_s8(_X11);
      _X11 += 32;
      v8 -= 16;
      __asm { PRFM            #0, [X11,#0x1C0] }

      *v7++ = v28.val[0];
      *v10++ = v28.val[1];
    }

    while (!(_NF ^ _VF | _ZF));
  }

  v16 = a4 & 0xF;
  v17 = v6;
  _X24 = __dst;
  memcpy(__dst, &a1[2 * v6], (2 * v16));
  v19 = v24;
  v20 = 16;
  v21 = v25;
  do
  {
    v29 = vld2q_s8(_X24);
    _X24 += 32;
    v20 -= 16;
    __asm { PRFM            #0, [X24,#0x1C0] }

    *v19 = v29;
    v19 = (v19 + 16);
    v21 += 16;
  }

  while (!(_NF ^ _VF | _ZF));
  memcpy(&a2->i8[v17], v24, v16);
  return memcpy(&a3->i8[v17], v25, v16);
}

void *ARGBToUVRow_Any_NEON(const char *a1, int a2, int8x8_t *a3, int8x8_t *a4, int a5)
{
  v5 = a5;
  v50 = *MEMORY[0x277D85DE8];
  memset(__dst, 0, sizeof(__dst));
  v48 = 0u;
  memset(v49, 0, sizeof(v49));
  v8 = a5 & 0xF;
  v9 = a5 & 0xFFFFFFF0;
  v10 = a2;
  if ((a5 & 0xFFFFFFF0) >= 1)
  {
    _X9 = &a1[a2];
    v12 = a3;
    v13 = a5 & 0xFFFFFFF0;
    v14 = a4;
    _X13 = a1;
    v16.i64[0] = 0x70007000700070;
    v16.i64[1] = 0x70007000700070;
    v17.i64[0] = 0x4A004A004A004ALL;
    v17.i64[1] = 0x4A004A004A004ALL;
    v18.i64[0] = 0x26002600260026;
    v18.i64[1] = 0x26002600260026;
    v19.i64[0] = 0x12001200120012;
    v19.i64[1] = 0x12001200120012;
    v20.i64[0] = 0x5E005E005E005ELL;
    v20.i64[1] = 0x5E005E005E005ELL;
    v21.i64[0] = 0x8000800080008000;
    v21.i64[1] = 0x8000800080008000;
    do
    {
      v51 = vld4q_s8(_X13);
      _X13 += 64;
      v13 -= 16;
      __asm { PRFM            #0, [X13,#0x1C0] }

      v53 = vld4q_s8(_X9);
      _X9 += 64;
      __asm { PRFM            #0, [X9,#0x1C0] }

      v51.val[0] = vrshrq_n_u16(vpadalq_u8(vpaddlq_u8(v51.val[0]), v53.val[0]), 2uLL);
      v51.val[1] = vrshrq_n_u16(vpadalq_u8(vpaddlq_u8(v51.val[1]), v53.val[1]), 2uLL);
      v51.val[2] = vrshrq_n_u16(vpadalq_u8(vpaddlq_u8(v51.val[2]), v53.val[2]), 2uLL);
      *v12++ = vaddhn_s16(vmlsq_s16(vmlsq_s16(vmulq_s16(v51.val[0], v16), v51.val[1], v17), v51.val[2], v18), v21);
      *v14++ = vaddhn_s16(vmlsq_s16(vmlsq_s16(vmulq_s16(v51.val[2], v16), v51.val[1], v20), v51.val[0], v19), v21);
    }

    while (!(_NF ^ _VF | _ZF));
  }

  v28 = v9;
  v29 = 4 * (a5 & 0xF);
  v30 = &a1[4 * v9];
  memcpy(__dst, v30, v29);
  _X22 = v49;
  memcpy(v49, &v30[v10], 4 * v8);
  if (v5)
  {
    *(__dst + v29) = *&v46[v29 + 124];
    *(v49 + v29) = *(&v48 + v29 + 12);
  }

  v32 = v45;
  _X9 = __dst;
  v34 = 16;
  v35 = v46;
  v36.i64[0] = 0x70007000700070;
  v36.i64[1] = 0x70007000700070;
  v37.i64[0] = 0x4A004A004A004ALL;
  v37.i64[1] = 0x4A004A004A004ALL;
  v38.i64[0] = 0x26002600260026;
  v38.i64[1] = 0x26002600260026;
  v39.i64[0] = 0x12001200120012;
  v39.i64[1] = 0x12001200120012;
  v40.i64[0] = 0x5E005E005E005ELL;
  v40.i64[1] = 0x5E005E005E005ELL;
  v41.i64[0] = 0x8000800080008000;
  v41.i64[1] = 0x8000800080008000;
  do
  {
    v52 = vld4q_s8(_X9);
    _X9 += 64;
    v34 -= 16;
    __asm { PRFM            #0, [X9,#0x1C0] }

    v54 = vld4q_s8(_X22);
    _X22 += 64;
    __asm { PRFM            #0, [X22,#0x1C0] }

    v52.val[0] = vrshrq_n_u16(vpadalq_u8(vpaddlq_u8(v52.val[0]), v54.val[0]), 2uLL);
    v52.val[1] = vrshrq_n_u16(vpadalq_u8(vpaddlq_u8(v52.val[1]), v54.val[1]), 2uLL);
    v52.val[2] = vrshrq_n_u16(vpadalq_u8(vpaddlq_u8(v52.val[2]), v54.val[2]), 2uLL);
    *v32++ = vaddhn_s16(vmlsq_s16(vmlsq_s16(vmulq_s16(v52.val[0], v36), v52.val[1], v37), v52.val[2], v38), v41);
    *v35++ = vaddhn_s16(vmlsq_s16(vmlsq_s16(vmulq_s16(v52.val[2], v36), v52.val[1], v40), v52.val[0], v39), v41);
  }

  while (!(_NF ^ _VF | _ZF));
  memcpy(a3 + (v28 >> 1), v45, (v8 + 1) >> 1);
  return memcpy(a4 + (v28 >> 1), v46, (v8 + 1) >> 1);
}

void *BGRAToUVRow_Any_NEON(const char *a1, int a2, int8x8_t *a3, int8x8_t *a4, int a5)
{
  v5 = a5;
  v50 = *MEMORY[0x277D85DE8];
  memset(__dst, 0, sizeof(__dst));
  v48 = 0u;
  memset(v49, 0, sizeof(v49));
  v8 = a5 & 0xF;
  v9 = a5 & 0xFFFFFFF0;
  v10 = a2;
  if ((a5 & 0xFFFFFFF0) >= 1)
  {
    _X9 = &a1[a2];
    v12 = a3;
    v13 = a5 & 0xFFFFFFF0;
    v14 = a4;
    _X13 = a1;
    v16.i64[0] = 0x70007000700070;
    v16.i64[1] = 0x70007000700070;
    v17.i64[0] = 0x4A004A004A004ALL;
    v17.i64[1] = 0x4A004A004A004ALL;
    v18.i64[0] = 0x26002600260026;
    v18.i64[1] = 0x26002600260026;
    v19.i64[0] = 0x12001200120012;
    v19.i64[1] = 0x12001200120012;
    v20.i64[0] = 0x5E005E005E005ELL;
    v20.i64[1] = 0x5E005E005E005ELL;
    v21.i64[0] = 0x8000800080008000;
    v21.i64[1] = 0x8000800080008000;
    do
    {
      v51 = vld4q_s8(_X13);
      _X13 += 64;
      v13 -= 16;
      v51.val[0] = vpaddlq_u8(v51.val[3]);
      __asm { PRFM            #0, [X13,#0x1C0] }

      v51.val[3] = vpaddlq_u8(v51.val[2]);
      v53 = vld4q_s8(_X9);
      _X9 += 64;
      __asm { PRFM            #0, [X9,#0x1C0] }

      v51.val[2] = vpadalq_u8(vpaddlq_u8(v51.val[1]), v53.val[1]);
      v51.val[0] = vrshrq_n_u16(vpadalq_u8(v51.val[0], v53.val[3]), 2uLL);
      v51.val[1] = vrshrq_n_u16(vpadalq_u8(v51.val[3], v53.val[2]), 2uLL);
      v51.val[2] = vrshrq_n_u16(v51.val[2], 2uLL);
      *v12++ = vaddhn_s16(vmlsq_s16(vmlsq_s16(vmulq_s16(v51.val[0], v16), v51.val[1], v17), v51.val[2], v18), v21);
      *v14++ = vaddhn_s16(vmlsq_s16(vmlsq_s16(vmulq_s16(v51.val[2], v16), v51.val[1], v20), v51.val[0], v19), v21);
    }

    while (!(_NF ^ _VF | _ZF));
  }

  v28 = v9;
  v29 = 4 * (a5 & 0xF);
  v30 = &a1[4 * v9];
  memcpy(__dst, v30, v29);
  _X22 = v49;
  memcpy(v49, &v30[v10], 4 * v8);
  if (v5)
  {
    *(__dst + v29) = *&v46[v29 + 124];
    *(v49 + v29) = *(&v48 + v29 + 12);
  }

  v32 = v45;
  _X9 = __dst;
  v34 = 16;
  v35 = v46;
  v36.i64[0] = 0x70007000700070;
  v36.i64[1] = 0x70007000700070;
  v37.i64[0] = 0x4A004A004A004ALL;
  v37.i64[1] = 0x4A004A004A004ALL;
  v38.i64[0] = 0x26002600260026;
  v38.i64[1] = 0x26002600260026;
  v39.i64[0] = 0x12001200120012;
  v39.i64[1] = 0x12001200120012;
  v40.i64[0] = 0x5E005E005E005ELL;
  v40.i64[1] = 0x5E005E005E005ELL;
  v41.i64[0] = 0x8000800080008000;
  v41.i64[1] = 0x8000800080008000;
  do
  {
    v52 = vld4q_s8(_X9);
    _X9 += 64;
    v34 -= 16;
    v52.val[0] = vpaddlq_u8(v52.val[3]);
    __asm { PRFM            #0, [X9,#0x1C0] }

    v52.val[3] = vpaddlq_u8(v52.val[2]);
    v54 = vld4q_s8(_X22);
    _X22 += 64;
    __asm { PRFM            #0, [X22,#0x1C0] }

    v52.val[2] = vpadalq_u8(vpaddlq_u8(v52.val[1]), v54.val[1]);
    v52.val[0] = vrshrq_n_u16(vpadalq_u8(v52.val[0], v54.val[3]), 2uLL);
    v52.val[1] = vrshrq_n_u16(vpadalq_u8(v52.val[3], v54.val[2]), 2uLL);
    v52.val[2] = vrshrq_n_u16(v52.val[2], 2uLL);
    *v32++ = vaddhn_s16(vmlsq_s16(vmlsq_s16(vmulq_s16(v52.val[0], v36), v52.val[1], v37), v52.val[2], v38), v41);
    *v35++ = vaddhn_s16(vmlsq_s16(vmlsq_s16(vmulq_s16(v52.val[2], v36), v52.val[1], v40), v52.val[0], v39), v41);
  }

  while (!(_NF ^ _VF | _ZF));
  memcpy(a3 + (v28 >> 1), v45, (v8 + 1) >> 1);
  return memcpy(a4 + (v28 >> 1), v46, (v8 + 1) >> 1);
}

void *ABGRToUVRow_Any_NEON(const char *a1, int a2, int8x8_t *a3, int8x8_t *a4, int a5)
{
  v5 = a5;
  v50 = *MEMORY[0x277D85DE8];
  memset(__dst, 0, sizeof(__dst));
  v48 = 0u;
  memset(v49, 0, sizeof(v49));
  v8 = a5 & 0xF;
  v9 = a5 & 0xFFFFFFF0;
  v10 = a2;
  if ((a5 & 0xFFFFFFF0) >= 1)
  {
    _X9 = &a1[a2];
    v12 = a3;
    v13 = a5 & 0xFFFFFFF0;
    v14 = a4;
    _X13 = a1;
    v16.i64[0] = 0x70007000700070;
    v16.i64[1] = 0x70007000700070;
    v17.i64[0] = 0x4A004A004A004ALL;
    v17.i64[1] = 0x4A004A004A004ALL;
    v18.i64[0] = 0x26002600260026;
    v18.i64[1] = 0x26002600260026;
    v19.i64[0] = 0x12001200120012;
    v19.i64[1] = 0x12001200120012;
    v20.i64[0] = 0x5E005E005E005ELL;
    v20.i64[1] = 0x5E005E005E005ELL;
    v21.i64[0] = 0x8000800080008000;
    v21.i64[1] = 0x8000800080008000;
    do
    {
      v51 = vld4q_s8(_X13);
      _X13 += 64;
      v13 -= 16;
      v51.val[3] = vpaddlq_u8(v51.val[2]);
      __asm { PRFM            #0, [X13,#0x1C0] }

      v51.val[2] = vpaddlq_u8(v51.val[1]);
      v53 = vld4q_s8(_X9);
      _X9 += 64;
      __asm { PRFM            #0, [X9,#0x1C0] }

      v51.val[1] = vpadalq_u8(vpaddlq_u8(v51.val[0]), v53.val[0]);
      v51.val[0] = vrshrq_n_u16(vpadalq_u8(v51.val[3], v53.val[2]), 2uLL);
      v51.val[2] = vrshrq_n_u16(vpadalq_u8(v51.val[2], v53.val[1]), 2uLL);
      v51.val[1] = vrshrq_n_u16(v51.val[1], 2uLL);
      *v12++ = vaddhn_s16(vmlsq_s16(vmlsq_s16(vmulq_s16(v51.val[0], v16), v51.val[2], v17), v51.val[1], v18), v21);
      *v14++ = vaddhn_s16(vmlsq_s16(vmlsq_s16(vmulq_s16(v51.val[1], v16), v51.val[2], v20), v51.val[0], v19), v21);
    }

    while (!(_NF ^ _VF | _ZF));
  }

  v28 = v9;
  v29 = 4 * (a5 & 0xF);
  v30 = &a1[4 * v9];
  memcpy(__dst, v30, v29);
  _X22 = v49;
  memcpy(v49, &v30[v10], 4 * v8);
  if (v5)
  {
    *(__dst + v29) = *&v46[v29 + 124];
    *(v49 + v29) = *(&v48 + v29 + 12);
  }

  v32 = v45;
  _X9 = __dst;
  v34 = 16;
  v35 = v46;
  v36.i64[0] = 0x70007000700070;
  v36.i64[1] = 0x70007000700070;
  v37.i64[0] = 0x4A004A004A004ALL;
  v37.i64[1] = 0x4A004A004A004ALL;
  v38.i64[0] = 0x26002600260026;
  v38.i64[1] = 0x26002600260026;
  v39.i64[0] = 0x12001200120012;
  v39.i64[1] = 0x12001200120012;
  v40.i64[0] = 0x5E005E005E005ELL;
  v40.i64[1] = 0x5E005E005E005ELL;
  v41.i64[0] = 0x8000800080008000;
  v41.i64[1] = 0x8000800080008000;
  do
  {
    v52 = vld4q_s8(_X9);
    _X9 += 64;
    v34 -= 16;
    v52.val[3] = vpaddlq_u8(v52.val[2]);
    __asm { PRFM            #0, [X9,#0x1C0] }

    v52.val[2] = vpaddlq_u8(v52.val[1]);
    v54 = vld4q_s8(_X22);
    _X22 += 64;
    __asm { PRFM            #0, [X22,#0x1C0] }

    v52.val[1] = vpadalq_u8(vpaddlq_u8(v52.val[0]), v54.val[0]);
    v52.val[0] = vrshrq_n_u16(vpadalq_u8(v52.val[3], v54.val[2]), 2uLL);
    v52.val[2] = vrshrq_n_u16(vpadalq_u8(v52.val[2], v54.val[1]), 2uLL);
    v52.val[1] = vrshrq_n_u16(v52.val[1], 2uLL);
    *v32++ = vaddhn_s16(vmlsq_s16(vmlsq_s16(vmulq_s16(v52.val[0], v36), v52.val[2], v37), v52.val[1], v38), v41);
    *v35++ = vaddhn_s16(vmlsq_s16(vmlsq_s16(vmulq_s16(v52.val[1], v36), v52.val[2], v40), v52.val[0], v39), v41);
  }

  while (!(_NF ^ _VF | _ZF));
  memcpy(a3 + (v28 >> 1), v45, (v8 + 1) >> 1);
  return memcpy(a4 + (v28 >> 1), v46, (v8 + 1) >> 1);
}

void *RGBAToUVRow_Any_NEON(const char *a1, int a2, int8x8_t *a3, int8x8_t *a4, int a5)
{
  v5 = a5;
  v50 = *MEMORY[0x277D85DE8];
  memset(__dst, 0, sizeof(__dst));
  v48 = 0u;
  memset(v49, 0, sizeof(v49));
  v8 = a5 & 0xF;
  v9 = a5 & 0xFFFFFFF0;
  v10 = a2;
  if ((a5 & 0xFFFFFFF0) >= 1)
  {
    _X9 = &a1[a2];
    v12 = a3;
    v13 = a5 & 0xFFFFFFF0;
    v14 = a4;
    _X13 = a1;
    v16.i64[0] = 0x70007000700070;
    v16.i64[1] = 0x70007000700070;
    v17.i64[0] = 0x4A004A004A004ALL;
    v17.i64[1] = 0x4A004A004A004ALL;
    v18.i64[0] = 0x26002600260026;
    v18.i64[1] = 0x26002600260026;
    v19.i64[0] = 0x12001200120012;
    v19.i64[1] = 0x12001200120012;
    v20.i64[0] = 0x5E005E005E005ELL;
    v20.i64[1] = 0x5E005E005E005ELL;
    v21.i64[0] = 0x8000800080008000;
    v21.i64[1] = 0x8000800080008000;
    do
    {
      v51 = vld4q_s8(_X13);
      _X13 += 64;
      v13 -= 16;
      __asm { PRFM            #0, [X13,#0x1C0] }

      v53 = vld4q_s8(_X9);
      _X9 += 64;
      __asm { PRFM            #0, [X9,#0x1C0] }

      v51.val[0] = vrshrq_n_u16(vpadalq_u8(vpaddlq_u8(v51.val[1]), v53.val[1]), 2uLL);
      v51.val[1] = vrshrq_n_u16(vpadalq_u8(vpaddlq_u8(v51.val[2]), v53.val[2]), 2uLL);
      v51.val[2] = vrshrq_n_u16(vpadalq_u8(vpaddlq_u8(v51.val[3]), v53.val[3]), 2uLL);
      *v12++ = vaddhn_s16(vmlsq_s16(vmlsq_s16(vmulq_s16(v51.val[0], v16), v51.val[1], v17), v51.val[2], v18), v21);
      *v14++ = vaddhn_s16(vmlsq_s16(vmlsq_s16(vmulq_s16(v51.val[2], v16), v51.val[1], v20), v51.val[0], v19), v21);
    }

    while (!(_NF ^ _VF | _ZF));
  }

  v28 = v9;
  v29 = 4 * (a5 & 0xF);
  v30 = &a1[4 * v9];
  memcpy(__dst, v30, v29);
  _X22 = v49;
  memcpy(v49, &v30[v10], 4 * v8);
  if (v5)
  {
    *(__dst + v29) = *&v46[v29 + 124];
    *(v49 + v29) = *(&v48 + v29 + 12);
  }

  v32 = v45;
  _X9 = __dst;
  v34 = 16;
  v35 = v46;
  v36.i64[0] = 0x70007000700070;
  v36.i64[1] = 0x70007000700070;
  v37.i64[0] = 0x4A004A004A004ALL;
  v37.i64[1] = 0x4A004A004A004ALL;
  v38.i64[0] = 0x26002600260026;
  v38.i64[1] = 0x26002600260026;
  v39.i64[0] = 0x12001200120012;
  v39.i64[1] = 0x12001200120012;
  v40.i64[0] = 0x5E005E005E005ELL;
  v40.i64[1] = 0x5E005E005E005ELL;
  v41.i64[0] = 0x8000800080008000;
  v41.i64[1] = 0x8000800080008000;
  do
  {
    v52 = vld4q_s8(_X9);
    _X9 += 64;
    v34 -= 16;
    __asm { PRFM            #0, [X9,#0x1C0] }

    v54 = vld4q_s8(_X22);
    _X22 += 64;
    __asm { PRFM            #0, [X22,#0x1C0] }

    v52.val[0] = vrshrq_n_u16(vpadalq_u8(vpaddlq_u8(v52.val[1]), v54.val[1]), 2uLL);
    v52.val[1] = vrshrq_n_u16(vpadalq_u8(vpaddlq_u8(v52.val[2]), v54.val[2]), 2uLL);
    v52.val[2] = vrshrq_n_u16(vpadalq_u8(vpaddlq_u8(v52.val[3]), v54.val[3]), 2uLL);
    *v32++ = vaddhn_s16(vmlsq_s16(vmlsq_s16(vmulq_s16(v52.val[0], v36), v52.val[1], v37), v52.val[2], v38), v41);
    *v35++ = vaddhn_s16(vmlsq_s16(vmlsq_s16(vmulq_s16(v52.val[2], v36), v52.val[1], v40), v52.val[0], v39), v41);
  }

  while (!(_NF ^ _VF | _ZF));
  memcpy(a3 + (v28 >> 1), v45, (v8 + 1) >> 1);
  return memcpy(a4 + (v28 >> 1), v46, (v8 + 1) >> 1);
}

void *RGB24ToUVRow_Any_NEON(const char *a1, int a2, int8x8_t *a3, int8x8_t *a4, int a5)
{
  v5 = a5;
  v52 = *MEMORY[0x277D85DE8];
  memset(__dst, 0, sizeof(__dst));
  v50 = 0u;
  memset(v51, 0, sizeof(v51));
  v8 = a5 & 0xF;
  v9 = a5 & 0xFFFFFFF0;
  v10 = a2;
  if ((a5 & 0xFFFFFFF0) >= 1)
  {
    _X9 = &a1[a2];
    v12 = a3;
    v13 = a5 & 0xFFFFFFF0;
    v14 = a4;
    _X13 = a1;
    v16.i64[0] = 0x70007000700070;
    v16.i64[1] = 0x70007000700070;
    v17.i64[0] = 0x4A004A004A004ALL;
    v17.i64[1] = 0x4A004A004A004ALL;
    v18.i64[0] = 0x26002600260026;
    v18.i64[1] = 0x26002600260026;
    v19.i64[0] = 0x12001200120012;
    v19.i64[1] = 0x12001200120012;
    v20.i64[0] = 0x5E005E005E005ELL;
    v20.i64[1] = 0x5E005E005E005ELL;
    v21.i64[0] = 0x8000800080008000;
    v21.i64[1] = 0x8000800080008000;
    do
    {
      v53 = vld3q_s8(_X13);
      _X13 += 48;
      v13 -= 16;
      __asm { PRFM            #0, [X13,#0x1C0] }

      v55 = vld3q_s8(_X9);
      _X9 += 48;
      __asm { PRFM            #0, [X9,#0x1C0] }

      v53.val[0] = vrshrq_n_u16(vpadalq_u8(vpaddlq_u8(v53.val[0]), v55.val[0]), 2uLL);
      v53.val[1] = vrshrq_n_u16(vpadalq_u8(vpaddlq_u8(v53.val[1]), v55.val[1]), 2uLL);
      v53.val[2] = vrshrq_n_u16(vpadalq_u8(vpaddlq_u8(v53.val[2]), v55.val[2]), 2uLL);
      *v12++ = vaddhn_s16(vmlsq_s16(vmlsq_s16(vmulq_s16(v53.val[0], v16), v53.val[1], v17), v53.val[2], v18), v21);
      *v14++ = vaddhn_s16(vmlsq_s16(vmlsq_s16(vmulq_s16(v53.val[2], v16), v53.val[1], v20), v53.val[0], v19), v21);
    }

    while (!(_NF ^ _VF | _ZF));
  }

  v28 = v9;
  v29 = &a1[3 * v9];
  v30 = (3 * v8);
  memcpy(__dst, v29, v30);
  _X22 = v51;
  memcpy(v51, &v29[v10], v30);
  if (v5)
  {
    v32 = __dst + v30;
    *v32 = *&v48[v30 + 125];
    v32[2] = *(__dst + v30 - 1);
    v33 = v51 + v30;
    *v33 = *(&v50 + v30 + 13);
    v33[2] = *(v51 + v30 - 1);
  }

  v34 = v47;
  _X9 = __dst;
  v36 = 16;
  v37 = v48;
  v38.i64[0] = 0x70007000700070;
  v38.i64[1] = 0x70007000700070;
  v39.i64[0] = 0x4A004A004A004ALL;
  v39.i64[1] = 0x4A004A004A004ALL;
  v40.i64[0] = 0x26002600260026;
  v40.i64[1] = 0x26002600260026;
  v41.i64[0] = 0x12001200120012;
  v41.i64[1] = 0x12001200120012;
  v42.i64[0] = 0x5E005E005E005ELL;
  v42.i64[1] = 0x5E005E005E005ELL;
  v43.i64[0] = 0x8000800080008000;
  v43.i64[1] = 0x8000800080008000;
  do
  {
    v54 = vld3q_s8(_X9);
    _X9 += 48;
    v36 -= 16;
    __asm { PRFM            #0, [X9,#0x1C0] }

    v56 = vld3q_s8(_X22);
    _X22 += 48;
    __asm { PRFM            #0, [X22,#0x1C0] }

    v54.val[0] = vrshrq_n_u16(vpadalq_u8(vpaddlq_u8(v54.val[0]), v56.val[0]), 2uLL);
    v54.val[1] = vrshrq_n_u16(vpadalq_u8(vpaddlq_u8(v54.val[1]), v56.val[1]), 2uLL);
    v54.val[2] = vrshrq_n_u16(vpadalq_u8(vpaddlq_u8(v54.val[2]), v56.val[2]), 2uLL);
    *v34++ = vaddhn_s16(vmlsq_s16(vmlsq_s16(vmulq_s16(v54.val[0], v38), v54.val[1], v39), v54.val[2], v40), v43);
    *v37++ = vaddhn_s16(vmlsq_s16(vmlsq_s16(vmulq_s16(v54.val[2], v38), v54.val[1], v42), v54.val[0], v41), v43);
  }

  while (!(_NF ^ _VF | _ZF));
  memcpy(a3 + (v28 >> 1), v47, (v8 + 1) >> 1);
  return memcpy(a4 + (v28 >> 1), v48, (v8 + 1) >> 1);
}

void *RAWToUVRow_Any_NEON(const char *a1, int a2, int8x8_t *a3, int8x8_t *a4, int a5)
{
  v5 = a5;
  v52 = *MEMORY[0x277D85DE8];
  memset(__dst, 0, sizeof(__dst));
  v50 = 0u;
  memset(v51, 0, sizeof(v51));
  v8 = a5 & 0xF;
  v9 = a5 & 0xFFFFFFF0;
  v10 = a2;
  if ((a5 & 0xFFFFFFF0) >= 1)
  {
    _X9 = &a1[a2];
    v12 = a3;
    v13 = a5 & 0xFFFFFFF0;
    v14 = a4;
    _X13 = a1;
    v16.i64[0] = 0x70007000700070;
    v16.i64[1] = 0x70007000700070;
    v17.i64[0] = 0x4A004A004A004ALL;
    v17.i64[1] = 0x4A004A004A004ALL;
    v18.i64[0] = 0x26002600260026;
    v18.i64[1] = 0x26002600260026;
    v19.i64[0] = 0x12001200120012;
    v19.i64[1] = 0x12001200120012;
    v20.i64[0] = 0x5E005E005E005ELL;
    v20.i64[1] = 0x5E005E005E005ELL;
    v21.i64[0] = 0x8000800080008000;
    v21.i64[1] = 0x8000800080008000;
    do
    {
      v53 = vld3q_s8(_X13);
      _X13 += 48;
      v13 -= 16;
      __asm { PRFM            #0, [X13,#0x1C0] }

      v55 = vld3q_s8(_X9);
      _X9 += 48;
      __asm { PRFM            #0, [X9,#0x1C0] }

      v53.val[2] = vrshrq_n_u16(vpadalq_u8(vpaddlq_u8(v53.val[2]), v55.val[2]), 2uLL);
      v53.val[1] = vrshrq_n_u16(vpadalq_u8(vpaddlq_u8(v53.val[1]), v55.val[1]), 2uLL);
      v53.val[0] = vrshrq_n_u16(vpadalq_u8(vpaddlq_u8(v53.val[0]), v55.val[0]), 2uLL);
      *v12++ = vaddhn_s16(vmlsq_s16(vmlsq_s16(vmulq_s16(v53.val[2], v16), v53.val[1], v17), v53.val[0], v18), v21);
      *v14++ = vaddhn_s16(vmlsq_s16(vmlsq_s16(vmulq_s16(v53.val[0], v16), v53.val[1], v20), v53.val[2], v19), v21);
    }

    while (!(_NF ^ _VF | _ZF));
  }

  v28 = v9;
  v29 = &a1[3 * v9];
  v30 = (3 * v8);
  memcpy(__dst, v29, v30);
  _X22 = v51;
  memcpy(v51, &v29[v10], v30);
  if (v5)
  {
    v32 = __dst + v30;
    *v32 = *&v48[v30 + 125];
    v32[2] = *(__dst + v30 - 1);
    v33 = v51 + v30;
    *v33 = *(&v50 + v30 + 13);
    v33[2] = *(v51 + v30 - 1);
  }

  v34 = v47;
  _X9 = __dst;
  v36 = 16;
  v37 = v48;
  v38.i64[0] = 0x70007000700070;
  v38.i64[1] = 0x70007000700070;
  v39.i64[0] = 0x4A004A004A004ALL;
  v39.i64[1] = 0x4A004A004A004ALL;
  v40.i64[0] = 0x26002600260026;
  v40.i64[1] = 0x26002600260026;
  v41.i64[0] = 0x12001200120012;
  v41.i64[1] = 0x12001200120012;
  v42.i64[0] = 0x5E005E005E005ELL;
  v42.i64[1] = 0x5E005E005E005ELL;
  v43.i64[0] = 0x8000800080008000;
  v43.i64[1] = 0x8000800080008000;
  do
  {
    v54 = vld3q_s8(_X9);
    _X9 += 48;
    v36 -= 16;
    __asm { PRFM            #0, [X9,#0x1C0] }

    v56 = vld3q_s8(_X22);
    _X22 += 48;
    __asm { PRFM            #0, [X22,#0x1C0] }

    v54.val[2] = vrshrq_n_u16(vpadalq_u8(vpaddlq_u8(v54.val[2]), v56.val[2]), 2uLL);
    v54.val[1] = vrshrq_n_u16(vpadalq_u8(vpaddlq_u8(v54.val[1]), v56.val[1]), 2uLL);
    v54.val[0] = vrshrq_n_u16(vpadalq_u8(vpaddlq_u8(v54.val[0]), v56.val[0]), 2uLL);
    *v34++ = vaddhn_s16(vmlsq_s16(vmlsq_s16(vmulq_s16(v54.val[2], v38), v54.val[1], v39), v54.val[0], v40), v43);
    *v37++ = vaddhn_s16(vmlsq_s16(vmlsq_s16(vmulq_s16(v54.val[0], v38), v54.val[1], v42), v54.val[2], v41), v43);
  }

  while (!(_NF ^ _VF | _ZF));
  memcpy(a3 + (v28 >> 1), v47, (v8 + 1) >> 1);
  return memcpy(a4 + (v28 >> 1), v48, (v8 + 1) >> 1);
}

void *RGB565ToUVRow_Any_NEON(int8x16_t *a1, int a2, int8x8_t *a3, int8x8_t *a4, int a5)
{
  v5 = a5;
  v82 = *MEMORY[0x277D85DE8];
  memset(__dst, 0, sizeof(__dst));
  v80 = 0u;
  memset(v81, 0, sizeof(v81));
  v8 = a5 & 0xF;
  v9 = a5 & 0xFFFFFFF0;
  v10 = a2;
  if ((a5 & 0xFFFFFFF0) >= 1)
  {
    _X9 = (a1 + a2);
    v12 = a3;
    v13 = a5 & 0xFFFFFFF0;
    v14 = a4;
    _X13 = a1;
    v16.i64[0] = 0x70007000700070;
    v16.i64[1] = 0x70007000700070;
    v17.i64[0] = 0x4A004A004A004ALL;
    v17.i64[1] = 0x4A004A004A004ALL;
    v18.i64[0] = 0x26002600260026;
    v18.i64[1] = 0x26002600260026;
    v19.i64[0] = 0x12001200120012;
    v19.i64[1] = 0x12001200120012;
    v20.i64[0] = 0x5E005E005E005ELL;
    v20.i64[1] = 0x5E005E005E005ELL;
    v21.i64[0] = 0x8000800080008000;
    v21.i64[1] = 0x8000800080008000;
    do
    {
      v22 = *_X13;
      v23 = _X13[1];
      _X13 += 2;
      v13 -= 16;
      v24 = vshrn_high_n_s16(vshrn_n_s16(v22, 3uLL), v23, 3uLL);
      v25 = vuzp2q_s8(v22, v23);
      v26 = vshlq_n_s8(vuzp1q_s8(v22, v23), 3uLL);
      v27 = vpaddlq_u8(vsriq_n_s8(v26, v26, 5uLL));
      __asm { PRFM            #0, [X13,#0x1C0] }

      v33 = vpaddlq_u8(vsriq_n_s8(v24, v24, 6uLL));
      v34 = vpaddlq_u8(vsriq_n_s8(v25, v25, 5uLL));
      v35 = *_X9;
      v36 = _X9[1];
      _X9 += 2;
      v37 = vshrn_high_n_s16(vshrn_n_s16(v35, 3uLL), v36, 3uLL);
      v38 = vuzp2q_s8(v35, v36);
      v39 = vshlq_n_s8(vuzp1q_s8(v35, v36), 3uLL);
      __asm { PRFM            #0, [X9,#0x1C0] }

      v41 = vrshrq_n_u16(vpadalq_u8(v27, vsriq_n_s8(v39, v39, 5uLL)), 2uLL);
      v42 = vrshrq_n_u16(vpadalq_u8(v33, vsriq_n_s8(v37, v37, 6uLL)), 2uLL);
      v43 = vrshrq_n_u16(vpadalq_u8(v34, vsriq_n_s8(v38, v38, 5uLL)), 2uLL);
      *v12++ = vaddhn_s16(vmlsq_s16(vmlsq_s16(vmulq_s16(v41, v16), v42, v17), v43, v18), v21);
      *v14++ = vaddhn_s16(vmlsq_s16(vmlsq_s16(vmulq_s16(v43, v16), v42, v20), v41, v19), v21);
    }

    while (!(_NF ^ _VF | _ZF));
  }

  v44 = v9;
  v45 = 2 * (a5 & 0xF);
  v46 = &a1->i8[2 * v9];
  memcpy(__dst, v46, v45);
  _X22 = v81;
  memcpy(v81, &v46[v10], 2 * v8);
  if (v5)
  {
    *(__dst + v45) = *&v78[v45 + 126];
    *(v81 + v45) = *(&v80 + v45 + 14);
  }

  v48 = v77;
  _X9 = __dst;
  v50 = 16;
  v51 = v78;
  v52.i64[0] = 0x70007000700070;
  v52.i64[1] = 0x70007000700070;
  v53.i64[0] = 0x4A004A004A004ALL;
  v53.i64[1] = 0x4A004A004A004ALL;
  v54.i64[0] = 0x26002600260026;
  v54.i64[1] = 0x26002600260026;
  v55.i64[0] = 0x12001200120012;
  v55.i64[1] = 0x12001200120012;
  v56.i64[0] = 0x5E005E005E005ELL;
  v56.i64[1] = 0x5E005E005E005ELL;
  v57.i64[0] = 0x8000800080008000;
  v57.i64[1] = 0x8000800080008000;
  do
  {
    v58 = *_X9;
    v59 = _X9[1];
    _X9 += 2;
    v50 -= 16;
    v60 = vshrn_high_n_s16(vshrn_n_s16(v58, 3uLL), v59, 3uLL);
    v61 = vuzp2q_s8(v58, v59);
    v62 = vshlq_n_s8(vuzp1q_s8(v58, v59), 3uLL);
    v63 = vpaddlq_u8(vsriq_n_s8(v62, v62, 5uLL));
    __asm { PRFM            #0, [X9,#0x1C0] }

    v65 = vpaddlq_u8(vsriq_n_s8(v60, v60, 6uLL));
    v66 = vpaddlq_u8(vsriq_n_s8(v61, v61, 5uLL));
    v67 = *_X22;
    v68 = _X22[1];
    _X22 += 2;
    v69 = vshrn_high_n_s16(vshrn_n_s16(v67, 3uLL), v68, 3uLL);
    v70 = vuzp2q_s8(v67, v68);
    v71 = vshlq_n_s8(vuzp1q_s8(v67, v68), 3uLL);
    __asm { PRFM            #0, [X22,#0x1C0] }

    v73 = vrshrq_n_u16(vpadalq_u8(v63, vsriq_n_s8(v71, v71, 5uLL)), 2uLL);
    v74 = vrshrq_n_u16(vpadalq_u8(v65, vsriq_n_s8(v69, v69, 6uLL)), 2uLL);
    v75 = vrshrq_n_u16(vpadalq_u8(v66, vsriq_n_s8(v70, v70, 5uLL)), 2uLL);
    *v48++ = vaddhn_s16(vmlsq_s16(vmlsq_s16(vmulq_s16(v73, v52), v74, v53), v75, v54), v57);
    *v51++ = vaddhn_s16(vmlsq_s16(vmlsq_s16(vmulq_s16(v75, v52), v74, v56), v73, v55), v57);
  }

  while (!(_NF ^ _VF | _ZF));
  memcpy(a3 + (v44 >> 1), v77, (v8 + 1) >> 1);
  return memcpy(a4 + (v44 >> 1), v78, (v8 + 1) >> 1);
}

void *ARGB1555ToUVRow_Any_NEON(int8x16_t *a1, int a2, int8x8_t *a3, int8x8_t *a4, int a5)
{
  v5 = a5;
  v86 = *MEMORY[0x277D85DE8];
  memset(__dst, 0, sizeof(__dst));
  v84 = 0u;
  memset(v85, 0, sizeof(v85));
  v8 = a5 & 0xF;
  v9 = a5 & 0xFFFFFFF0;
  v10 = a2;
  if ((a5 & 0xFFFFFFF0) >= 1)
  {
    _X9 = (a1 + a2);
    v12 = a3;
    v13 = a5 & 0xFFFFFFF0;
    v14 = a4;
    _X13 = a1;
    v16.i64[0] = 0x70007000700070;
    v16.i64[1] = 0x70007000700070;
    v17.i64[0] = 0x4A004A004A004ALL;
    v17.i64[1] = 0x4A004A004A004ALL;
    v18.i64[0] = 0x26002600260026;
    v18.i64[1] = 0x26002600260026;
    v19.i64[0] = 0x12001200120012;
    v19.i64[1] = 0x12001200120012;
    v20.i64[0] = 0x5E005E005E005ELL;
    v20.i64[1] = 0x5E005E005E005ELL;
    v21.i64[0] = 0x8000800080008000;
    v21.i64[1] = 0x8000800080008000;
    do
    {
      v22 = *_X13;
      v23 = _X13[1];
      _X13 += 2;
      v13 -= 16;
      v24 = vshrn_n_s16(v22, 7uLL);
      v25 = vshrn_n_s16(v22, 2uLL);
      v26 = vshlq_n_s8(vuzp1q_s8(v22, v23), 3uLL);
      v27 = vshrn_high_n_s16(v24, v23, 7uLL);
      v28 = vshrn_high_n_s16(v25, v23, 2uLL);
      v29 = vpaddlq_u8(vsriq_n_s8(v26, v26, 5uLL));
      __asm { PRFM            #0, [X13,#0x1C0] }

      v35 = vpaddlq_u8(vsriq_n_s8(v28, v28, 5uLL));
      v36 = vpaddlq_u8(vsriq_n_s8(v27, v27, 5uLL));
      v37 = *_X9;
      v38 = _X9[1];
      _X9 += 2;
      *v27.i8 = vshrn_n_s16(v37, 7uLL);
      *v28.i8 = vshrn_n_s16(v37, 2uLL);
      v39 = vshlq_n_s8(vuzp1q_s8(v37, v38), 3uLL);
      v40 = vshrn_high_n_s16(*v27.i8, v38, 7uLL);
      v41 = vshrn_high_n_s16(*v28.i8, v38, 2uLL);
      __asm { PRFM            #0, [X9,#0x1C0] }

      v43 = vrshrq_n_u16(vpadalq_u8(v29, vsriq_n_s8(v39, v39, 5uLL)), 2uLL);
      v44 = vrshrq_n_u16(vpadalq_u8(v35, vsriq_n_s8(v41, v41, 5uLL)), 2uLL);
      v45 = vrshrq_n_u16(vpadalq_u8(v36, vsriq_n_s8(v40, v40, 5uLL)), 2uLL);
      *v12++ = vaddhn_s16(vmlsq_s16(vmlsq_s16(vmulq_s16(v43, v16), v44, v17), v45, v18), v21);
      *v14++ = vaddhn_s16(vmlsq_s16(vmlsq_s16(vmulq_s16(v45, v16), v44, v20), v43, v19), v21);
    }

    while (!(_NF ^ _VF | _ZF));
  }

  v46 = v9;
  v47 = 2 * (a5 & 0xF);
  v48 = &a1->i8[2 * v9];
  memcpy(__dst, v48, v47);
  _X22 = v85;
  memcpy(v85, &v48[v10], 2 * v8);
  if (v5)
  {
    *(__dst + v47) = *&v82[v47 + 126];
    *(v85 + v47) = *(&v84 + v47 + 14);
  }

  v50 = v81;
  _X9 = __dst;
  v52 = 16;
  v53 = v82;
  v54.i64[0] = 0x70007000700070;
  v54.i64[1] = 0x70007000700070;
  v55.i64[0] = 0x4A004A004A004ALL;
  v55.i64[1] = 0x4A004A004A004ALL;
  v56.i64[0] = 0x26002600260026;
  v56.i64[1] = 0x26002600260026;
  v57.i64[0] = 0x12001200120012;
  v57.i64[1] = 0x12001200120012;
  v58.i64[0] = 0x5E005E005E005ELL;
  v58.i64[1] = 0x5E005E005E005ELL;
  v59.i64[0] = 0x8000800080008000;
  v59.i64[1] = 0x8000800080008000;
  do
  {
    v60 = *_X9;
    v61 = _X9[1];
    _X9 += 2;
    v52 -= 16;
    v62 = vshrn_n_s16(v60, 7uLL);
    v63 = vshrn_n_s16(v60, 2uLL);
    v64 = vshlq_n_s8(vuzp1q_s8(v60, v61), 3uLL);
    v65 = vshrn_high_n_s16(v62, v61, 7uLL);
    v66 = vshrn_high_n_s16(v63, v61, 2uLL);
    v67 = vpaddlq_u8(vsriq_n_s8(v64, v64, 5uLL));
    __asm { PRFM            #0, [X9,#0x1C0] }

    v69 = vpaddlq_u8(vsriq_n_s8(v66, v66, 5uLL));
    v70 = vpaddlq_u8(vsriq_n_s8(v65, v65, 5uLL));
    v71 = *_X22;
    v72 = _X22[1];
    _X22 += 2;
    *v65.i8 = vshrn_n_s16(v71, 7uLL);
    *v66.i8 = vshrn_n_s16(v71, 2uLL);
    v73 = vshlq_n_s8(vuzp1q_s8(v71, v72), 3uLL);
    v74 = vshrn_high_n_s16(*v65.i8, v72, 7uLL);
    v75 = vshrn_high_n_s16(*v66.i8, v72, 2uLL);
    __asm { PRFM            #0, [X22,#0x1C0] }

    v77 = vrshrq_n_u16(vpadalq_u8(v67, vsriq_n_s8(v73, v73, 5uLL)), 2uLL);
    v78 = vrshrq_n_u16(vpadalq_u8(v69, vsriq_n_s8(v75, v75, 5uLL)), 2uLL);
    v79 = vrshrq_n_u16(vpadalq_u8(v70, vsriq_n_s8(v74, v74, 5uLL)), 2uLL);
    *v50++ = vaddhn_s16(vmlsq_s16(vmlsq_s16(vmulq_s16(v77, v54), v78, v55), v79, v56), v59);
    *v53++ = vaddhn_s16(vmlsq_s16(vmlsq_s16(vmulq_s16(v79, v54), v78, v58), v77, v57), v59);
  }

  while (!(_NF ^ _VF | _ZF));
  memcpy(a3 + (v46 >> 1), v81, (v8 + 1) >> 1);
  return memcpy(a4 + (v46 >> 1), v82, (v8 + 1) >> 1);
}