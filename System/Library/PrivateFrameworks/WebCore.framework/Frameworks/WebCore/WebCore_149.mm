uint64_t webm::MasterValueParser<webm::SimpleTag>::InitAfterSeek(uint64_t result, unsigned int **a2, uint64_t a3)
{
  v5 = result;
  memset(v8, 0, 32);
  HIBYTE(v7) = 3;
  if (&v6 <= "und" && &v6 + 3 > "und")
  {
    __break(1u);
  }

  else
  {
    LODWORD(v6) = 6581877;
    v9 = v7;
    v8[2] = v6;
    v10 = 0;
    v11 = 1;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0;
    webm::SimpleTag::operator=(result + 8, v8);
    webm::SimpleTag::~SimpleTag(v8);
    *(v5 + 168) = 0;
    *(v5 + 172) = 256;
    return webm::MasterParser::InitAfterSeek(v5 + 176, a2, a3);
  }

  return result;
}

uint64_t webm::MasterValueParser<webm::SimpleTag>::GetCachedMetadata(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 408) != 1)
  {
    return 0;
  }

  v2 = *(a1 + 232);
  *(a2 + 16) = *(a1 + 248);
  *a2 = v2;
  return *(a1 + 408) & 1;
}

void webm::MasterValueParser<webm::SimpleTag>::MasterValueParser<webm::MasterValueParser<webm::SimpleTag>::SingleChildFactory<webm::ByteParser<std::string>,std::string>,webm::MasterValueParser<webm::SimpleTag>::SingleChildFactory<webm::ByteParser<std::string>,std::string>,webm::MasterValueParser<webm::SimpleTag>::SingleChildFactory<webm::BoolParser,BOOL>,webm::MasterValueParser<webm::SimpleTag>::SingleChildFactory<webm::ByteParser<std::string>,std::string>,webm::MasterValueParser<webm::SimpleTag>::SingleChildFactory<webm::ByteParser<std::vector<unsigned char>>,std::vector<unsigned char>>,webm::MasterValueParser<webm::SimpleTag>::RecursiveChildFactory<webm::SimpleTagParser>>(uint64_t a1)
{
  *a1 = &unk_2882A99E0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(&v1.__r_.__value_.__s + 23) = 3;
  if (&v1 <= "und" && v1.__r_.__value_.__r.__words + 3 > "und")
  {
    __break(1u);
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  LODWORD(v1.__r_.__value_.__l.__data_) = 6581877;
  *(a1 + 40) = v1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = 0;
  *(a1 + 104) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 112) = 0;
  *(a1 + 136) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 144) = 0;
  *(a1 + 168) = 0;
  operator new();
}

void webm::SimpleTagParser::~SimpleTagParser(webm::SimpleTagParser *this)
{
  *this = &unk_2882A99E0;
  *(this + 22) = &unk_2882A81D0;
  v2 = *(this + 34);
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

  v3 = *(this + 32);
  *(this + 32) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  webm::SimpleTag::~SimpleTag((this + 8));
}

{
  *this = &unk_2882A99E0;
  *(this + 22) = &unk_2882A81D0;
  v2 = *(this + 34);
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

  v3 = *(this + 32);
  *(this + 32) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  webm::SimpleTag::~SimpleTag((this + 8));

  JUMPOUT(0x2743DA540);
}

uint64_t webm::MasterValueParser<webm::SimpleTag>::Feed(uint64_t a1, void **a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  if ((*(a1 + 172) & 1) == 0)
  {
    v10 = &unk_2882A8218;
    if (*(a1 + 168) == 1)
    {
      a2 = &v10;
    }

    result = webm::MasterParser::Feed(a1 + 176, a2, a3, a4);
    if (result == 0x80000000)
    {
      v9 = 0;
      a2 = &v10;
      result = webm::MasterParser::Feed(a1 + 176, &v10, a3, &v9);
      *a4 += v9;
    }

    if (result)
    {
      return result;
    }

    *(a1 + 172) = 1;
  }

  if ((*(a1 + 173) & 1) == 0)
  {
    result = (*(*a1 + 56))(a1, a2, a1 + 168);
    if (result)
    {
      return result;
    }

    *(a1 + 173) = 1;
  }

  if (*(a1 + 168) == 1)
  {
    return 0;
  }

  else
  {
    return (*(*a1 + 64))(a1, a2);
  }
}

void *webm::MasterValueParser<webm::SimpleTag>::~MasterValueParser(void *a1)
{
  *a1 = &unk_2882A99E0;
  a1[22] = &unk_2882A81D0;
  v2 = a1[34];
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

  v3 = a1[32];
  a1[32] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  webm::SimpleTag::~SimpleTag((a1 + 1));
  return a1;
}

void webm::MasterValueParser<webm::SimpleTag>::~MasterValueParser(void *a1)
{
  *a1 = &unk_2882A99E0;
  a1[22] = &unk_2882A81D0;
  v2 = a1[34];
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

  v3 = a1[32];
  a1[32] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  webm::SimpleTag::~SimpleTag((a1 + 1));

  JUMPOUT(0x2743DA540);
}

uint64_t webm::MasterValueParser<webm::SimpleTag>::ChildParser<webm::ByteParser<std::string>,webm::MasterValueParser<webm::SimpleTag>::SingleChildFactory<webm::ByteParser<std::string>,std::string>::BuildParser(webm::MasterValueParser<webm::SimpleTag>*,webm::SimpleTag*)::{lambda(webm::ByteParser<std::string>*)#1}>::~ChildParser(uint64_t a1)
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

void webm::MasterValueParser<webm::SimpleTag>::ChildParser<webm::ByteParser<std::string>,webm::MasterValueParser<webm::SimpleTag>::SingleChildFactory<webm::ByteParser<std::string>,std::string>::BuildParser(webm::MasterValueParser<webm::SimpleTag>*,webm::SimpleTag*)::{lambda(webm::ByteParser<std::string>*)#1}>::~ChildParser(uint64_t a1)
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

__n128 webm::MasterValueParser<webm::SimpleTag>::ChildParser<webm::ByteParser<std::string>,webm::MasterValueParser<webm::SimpleTag>::SingleChildFactory<webm::ByteParser<std::string>,std::string>::BuildParser(webm::MasterValueParser<webm::SimpleTag>*,webm::SimpleTag*)::{lambda(webm::ByteParser<std::string>*)#1}>::Feed(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  if (!webm::ByteParser<std::string>::Feed(a1, a2, a3, a4) && *(*(a1 + 64) + 168) != 1 && ((*(*a1 + 48))(a1) & 1) == 0)
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

uint64_t webm::MasterValueParser<webm::SimpleTag>::ChildParser<webm::BoolParser,webm::MasterValueParser<webm::SimpleTag>::SingleChildFactory<webm::BoolParser,BOOL>::BuildParser(webm::MasterValueParser<webm::SimpleTag>*,webm::SimpleTag*)::{lambda(webm::BoolParser*)#1}>::Feed(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *(a1 + 12);
  *a4 = 0;
  if (v5 <= 8)
  {
    if (v5)
    {
      v7 = 0;
      v11 = v5 + 1;
      while (1)
      {
        v16 = 0;
        v17 = 0;
        result = (*(*a3 + 16))(a3, 1, &v16, &v17);
        if (result)
        {
          break;
        }

        v6 = *a4 + 1;
        *a4 = v6;
        v7 = v16 | (v7 << 8);
        if (--v11 <= 1)
        {
          goto LABEL_9;
        }
      }

      v6 = *a4;
    }

    else
    {
      LODWORD(v6) = 0;
      v7 = 0;
LABEL_9:
      result = 0;
    }
  }

  else
  {
    LODWORD(v6) = 0;
    v7 = 0;
    result = 4294966270;
  }

  v12 = *(a1 + 12);
  *(a1 + 12) = v12 - v6;
  if (v7)
  {
    v13 = v12 == v6;
  }

  else
  {
    v13 = 1;
  }

  if (!v13 || v7 > 1)
  {
    return 4294966266;
  }

  if (*(a1 + 16) >= 1)
  {
    *(a1 + 8) = v7 == 1;
  }

  if (!result)
  {
    if (*(*(a1 + 24) + 168) == 1 || ((*(*a1 + 48))(a1) & 1) != 0)
    {
      return 0;
    }

    else
    {
      result = 0;
      v15 = *(a1 + 32);
      *v15 = *(a1 + 8);
      v15[1] = 1;
    }
  }

  return result;
}

uint64_t webm::BoolParser::Init(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 > 8)
  {
    return 4294966270;
  }

  result = 0;
  *(a1 + 12) = v2;
  *(a1 + 16) = v2;
  *(a1 + 8) = *(a1 + 9);
  return result;
}

void *webm::MasterValueParser<webm::SimpleTag>::ChildParser<webm::ByteParser<std::vector<unsigned char>>,webm::MasterValueParser<webm::SimpleTag>::SingleChildFactory<webm::ByteParser<std::vector<unsigned char>>,std::vector<unsigned char>>::BuildParser(webm::MasterValueParser<webm::SimpleTag>*,webm::SimpleTag*)::{lambda(webm::ByteParser<std::vector<unsigned char>>*)#1}>::~ChildParser(void *a1)
{
  *a1 = &unk_2882A8DC8;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

void webm::MasterValueParser<webm::SimpleTag>::ChildParser<webm::ByteParser<std::vector<unsigned char>>,webm::MasterValueParser<webm::SimpleTag>::SingleChildFactory<webm::ByteParser<std::vector<unsigned char>>,std::vector<unsigned char>>::BuildParser(webm::MasterValueParser<webm::SimpleTag>*,webm::SimpleTag*)::{lambda(webm::ByteParser<std::vector<unsigned char>>*)#1}>::~ChildParser(void *a1)
{
  *a1 = &unk_2882A8DC8;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  JUMPOUT(0x2743DA540);
}

void *webm::MasterValueParser<webm::SimpleTag>::ChildParser<webm::ByteParser<std::vector<unsigned char>>,webm::MasterValueParser<webm::SimpleTag>::SingleChildFactory<webm::ByteParser<std::vector<unsigned char>>,std::vector<unsigned char>>::BuildParser(webm::MasterValueParser<webm::SimpleTag>*,webm::SimpleTag*)::{lambda(webm::ByteParser<std::vector<unsigned char>>*)#1}>::Feed(void *result, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = result;
  *a4 = 0;
  v5 = result + 1;
  v6 = result[7];
  if (v6 != result[2] - result[1])
  {
    do
    {
      v14 = 0;
      v9 = v4[1];
      v10 = v4[2];
      if (v9 == v10)
      {
        __break(1u);
        return result;
      }

      result = (*(*a3 + 16))(a3, v10 - (v9 + v6), v9 + v6, &v14);
      v11 = v14;
      *a4 += v14;
      v6 = v4[7] + v11;
      v4[7] = v6;
    }

    while (result == -1);
    if (result)
    {
      return result;
    }
  }

  if (*(v4[8] + 168) == 1)
  {
    return 0;
  }

  if ((*(*v4 + 48))(v4))
  {
    return 0;
  }

  v12 = v4[9];
  v13 = *v12;
  if (*v12)
  {
    *(v12 + 8) = v13;
    operator delete(v13);
    *v12 = 0;
    *(v12 + 8) = 0;
    *(v12 + 16) = 0;
  }

  result = 0;
  *v12 = *(v4 + 1);
  *(v12 + 16) = v4[3];
  *v5 = 0;
  v5[1] = 0;
  v5[2] = 0;
  *(v12 + 24) = 1;
  return result;
}

void *webm::MasterValueParser<webm::SimpleTag>::ChildParser<webm::RecursiveParser<webm::SimpleTagParser>,webm::MasterValueParser<webm::SimpleTag>::RecursiveChildFactory<webm::SimpleTagParser>::BuildParser(webm::MasterValueParser<webm::SimpleTag>*,webm::SimpleTag*)::{lambda(webm::RecursiveParser<webm::SimpleTagParser>*)#1}>::~ChildParser(void *result)
{
  v1 = result[1];
  *result = &unk_2882A9B60;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

void webm::MasterValueParser<webm::SimpleTag>::ChildParser<webm::RecursiveParser<webm::SimpleTagParser>,webm::MasterValueParser<webm::SimpleTag>::RecursiveChildFactory<webm::SimpleTagParser>::BuildParser(webm::MasterValueParser<webm::SimpleTag>*,webm::SimpleTag*)::{lambda(webm::RecursiveParser<webm::SimpleTagParser>*)#1}>::~ChildParser(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_2882A9B60;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webm::MasterValueParser<webm::SimpleTag>::ChildParser<webm::RecursiveParser<webm::SimpleTagParser>,webm::MasterValueParser<webm::SimpleTag>::RecursiveChildFactory<webm::SimpleTagParser>::BuildParser(webm::MasterValueParser<webm::SimpleTag>*,webm::SimpleTag*)::{lambda(webm::RecursiveParser<webm::SimpleTagParser>*)#1}>::Feed(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  result = (*(**(a1 + 8) + 16))(*(a1 + 8));
  if (!result && *(*(a1 + 24) + 168) != 1)
  {
    v6 = result;
    v7 = (*(*a1 + 48))(a1);
    result = v6;
    if ((v7 & 1) == 0)
    {
      v8 = *(a1 + 32);
      v10 = *v8;
      v9 = v8[1];
      if (v9 - *v8 == 168)
      {
        if (v10 == v9)
        {
LABEL_14:
          __break(1u);
          return result;
        }

        if ((*(v10 + 160) & 1) == 0)
        {
          do
          {
            v9 -= 168;
            webm::SimpleTag::~SimpleTag(v9);
          }

          while (v9 != v10);
          v8[1] = v10;
          v8 = *(a1 + 32);
          v9 = v8[1];
          result = v6;
        }
      }

      v11 = *(a1 + 8);
      if (v9 >= v8[2])
      {
        std::vector<webm::Element<webm::SimpleTag>>::__emplace_back_slow_path<webm::SimpleTag,BOOL>(v8);
      }

      if (v9)
      {
        v12 = *(v11 + 8);
        *(v9 + 16) = *(v11 + 24);
        *v9 = v12;
        *(v11 + 16) = 0;
        *(v11 + 24) = 0;
        *(v11 + 8) = 0;
        *(v9 + 24) = *(v11 + 32);
        v13 = *(v11 + 40);
        *(v9 + 48) = *(v11 + 56);
        *(v9 + 32) = v13;
        *(v11 + 48) = 0;
        *(v11 + 56) = 0;
        *(v11 + 40) = 0;
        *(v9 + 56) = *(v11 + 64);
        *(v9 + 64) = *(v11 + 72);
        v14 = *(v11 + 80);
        *(v9 + 88) = *(v11 + 96);
        *(v9 + 72) = v14;
        *(v11 + 88) = 0;
        *(v11 + 96) = 0;
        *(v11 + 80) = 0;
        *(v9 + 96) = *(v11 + 104);
        *(v9 + 112) = 0;
        *(v9 + 120) = 0;
        *(v9 + 104) = 0;
        *(v9 + 104) = *(v11 + 112);
        *(v9 + 120) = *(v11 + 128);
        *(v11 + 120) = 0;
        *(v11 + 128) = 0;
        *(v11 + 112) = 0;
        *(v9 + 128) = *(v11 + 136);
        *(v9 + 144) = 0;
        *(v9 + 152) = 0;
        *(v9 + 136) = 0;
        *(v9 + 136) = *(v11 + 144);
        *(v9 + 152) = *(v11 + 160);
        *(v11 + 144) = 0;
        *(v11 + 152) = 0;
        *(v11 + 160) = 0;
        *(v9 + 160) = 1;
        v8[1] = v9 + 168;
        return result;
      }

      goto LABEL_14;
    }
  }

  return result;
}

uint64_t webm::RecursiveParser<webm::SimpleTagParser>::Init(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 4294966265;
  }

  v1 = *(a1 + 8);
  if (!v1)
  {
    operator new();
  }

  v2 = *(*v1 + 24);

  return v2();
}

uint64_t webm::RecursiveParser<webm::SimpleTagParser>::InitAfterSeek(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    operator new();
  }

  v2 = *(*v1 + 32);

  return v2();
}

void *webm::RecursiveParser<webm::SimpleTagParser>::~RecursiveParser(void *result)
{
  v1 = result[1];
  *result = &unk_2882A9B60;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

void webm::RecursiveParser<webm::SimpleTagParser>::~RecursiveParser(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_2882A9B60;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

void webm::SimpleTag::~SimpleTag(webm::SimpleTag *this)
{
  v2 = *(this + 17);
  if (v2)
  {
    v3 = *(this + 18);
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        webm::SimpleTag::~SimpleTag((v3 - 168));
      }

      while (v3 != v2);
      v4 = *(this + 17);
    }

    *(this + 18) = v2;
    operator delete(v4);
  }

  v5 = *(this + 13);
  if (v5)
  {
    *(this + 14) = v5;
    operator delete(v5);
  }

  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
    if ((*(this + 55) & 0x80000000) == 0)
    {
LABEL_10:
      if ((*(this + 23) & 0x80000000) == 0)
      {
        return;
      }

LABEL_14:
      operator delete(*this);
      return;
    }
  }

  else if ((*(this + 55) & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  operator delete(*(this + 4));
  if (*(this + 23) < 0)
  {
    goto LABEL_14;
  }
}

void std::vector<webm::Element<webm::SimpleTag>>::__emplace_back_slow_path<webm::SimpleTag,BOOL>(void *a1)
{
  v1 = 0xCF3CF3CF3CF3CF3DLL * ((a1[1] - *a1) >> 3) + 1;
  if (v1 <= 0x186186186186186)
  {
    if (0x9E79E79E79E79E7ALL * ((a1[2] - *a1) >> 3) > v1)
    {
      v1 = 0x9E79E79E79E79E7ALL * ((a1[2] - *a1) >> 3);
    }

    if (0xCF3CF3CF3CF3CF3DLL * ((a1[2] - *a1) >> 3) >= 0xC30C30C30C30C3)
    {
      v2 = 0x186186186186186;
    }

    else
    {
      v2 = v1;
    }

    if (v2)
    {
      if (v2 <= 0x186186186186186)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    __break(1u);
  }

  std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
}

uint64_t webm::SimpleTag::operator=(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  *(a1 + 24) = *(a2 + 24);
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v5 = a2[2];
  *(a1 + 48) = *(a2 + 6);
  *(a1 + 32) = v5;
  *(a2 + 55) = 0;
  *(a2 + 32) = 0;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 32);
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v6 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 11);
  *(a1 + 72) = v6;
  *(a2 + 95) = 0;
  *(a2 + 72) = 0;
  v7 = *(a1 + 104);
  *(a1 + 96) = *(a2 + 96);
  if (v7)
  {
    *(a1 + 112) = v7;
    operator delete(v7);
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
  }

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 15);
  *(a2 + 13) = 0;
  *(a2 + 14) = 0;
  *(a2 + 15) = 0;
  v8 = (a1 + 136);
  v9 = *(a1 + 136);
  *(a1 + 128) = *(a2 + 128);
  if (v9)
  {
    v10 = *(a1 + 144);
    v11 = v9;
    if (v10 != v9)
    {
      do
      {
        webm::SimpleTag::~SimpleTag((v10 - 168));
      }

      while (v10 != v9);
      v11 = *v8;
    }

    *(a1 + 144) = v9;
    operator delete(v11);
    *v8 = 0;
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
  }

  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 19);
  *(a2 + 17) = 0;
  *(a2 + 18) = 0;
  *(a2 + 19) = 0;
  return a1;
}

uint64_t webm::MasterValueParser<webm::Tag>::~MasterValueParser(uint64_t a1)
{
  *a1 = &unk_2882A9728;
  *(a1 + 120) = &unk_2882A81D0;
  v2 = *(a1 + 216);
  if (v2)
  {
    do
    {
      v9 = *v2;
      v10 = v2[3];
      v2[3] = 0;
      if (v10)
      {
        (*(*v10 + 8))(v10);
      }

      operator delete(v2);
      v2 = v9;
    }

    while (v9);
  }

  v3 = *(a1 + 200);
  *(a1 + 200) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(a1 + 88);
  if (v4)
  {
    v5 = *(a1 + 96);
    v6 = *(a1 + 88);
    if (v5 != v4)
    {
      do
      {
        webm::SimpleTag::~SimpleTag((v5 - 168));
      }

      while (v5 != v4);
      v6 = *(a1 + 88);
    }

    *(a1 + 96) = v4;
    operator delete(v6);
  }

  v7 = *(a1 + 56);
  if (v7)
  {
    *(a1 + 64) = v7;
    operator delete(v7);
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void webm::TracksParser::~TracksParser(webm::TracksParser *this)
{
  *this = &unk_2882A81D0;
  v2 = *(this + 12);
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

  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3)
  {
    operator delete(v3);
  }
}

{
  *this = &unk_2882A81D0;
  v2 = *(this + 12);
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

  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  JUMPOUT(0x2743DA540);
}

void webm::MasterValueParser<webm::TrackEntry>::MasterValueParser<webm::MasterValueParser<webm::TrackEntry>::SingleChildFactory<webm::IntParser<unsigned long long>,unsigned long long>,webm::MasterValueParser<webm::TrackEntry>::SingleChildFactory<webm::IntParser<unsigned long long>,unsigned long long>,webm::MasterValueParser<webm::TrackEntry>::SingleChildFactory<webm::IntParser<webm::TrackType>,webm::TrackType>,webm::MasterValueParser<webm::TrackEntry>::SingleChildFactory<webm::BoolParser,BOOL>,webm::MasterValueParser<webm::TrackEntry>::SingleChildFactory<webm::BoolParser,BOOL>,webm::MasterValueParser<webm::TrackEntry>::SingleChildFactory<webm::BoolParser,BOOL>,webm::MasterValueParser<webm::TrackEntry>::SingleChildFactory<webm::BoolParser,BOOL>,webm::MasterValueParser<webm::TrackEntry>::SingleChildFactory<webm::IntParser<unsigned long long>,unsigned long long>,webm::MasterValueParser<webm::TrackEntry>::SingleChildFactory<webm::ByteParser<std::string>,std::string>,webm::MasterValueParser<webm::TrackEntry>::SingleChildFactory<webm::ByteParser<std::string>,std::string>,webm::MasterValueParser<webm::TrackEntry>::SingleChildFactory<webm::ByteParser<std::string>,std::string>,webm::MasterValueParser<webm::TrackEntry>::SingleChildFactory<webm::ByteParser<std::vector<unsigned char>>,std::vector<unsigned char>>,webm::MasterValueParser<webm::TrackEntry>::SingleChildFactory<webm::ByteParser<std::string>,std::string>,webm::MasterValueParser<webm::TrackEntry>::SingleChildFactory<webm::IntParser<unsigned long long>,unsigned long long>,webm::MasterValueParser<webm::TrackEntry>::SingleChildFactory<webm::IntParser<unsigned long long>,unsigned long long>,webm::MasterValueParser<webm::TrackEntry>::SingleChildFactory<webm::VideoParser,webm::Video>,webm::MasterValueParser<webm::TrackEntry>::SingleChildFactory<webm::AudioParser,webm::Audio>,webm::MasterValueParser<webm::TrackEntry>::SingleChildFactory<webm::ContentEncodingsParser,webm::ContentEncodings>>(uint64_t a1)
{
  *a1 = &unk_2882A9C50;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0x1000000010001;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = 0;
  *(&v1.__r_.__value_.__s + 23) = 3;
  *(a1 + 104) = 0;
  if (&v1 <= "eng" && v1.__r_.__value_.__r.__words + 3 > "eng")
  {
    __break(1u);
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  LODWORD(v1.__r_.__value_.__l.__data_) = 6778469;
  *(a1 + 112) = v1;
  *(a1 + 136) = 0;
  *(a1 + 168) = 0;
  *(a1 + 160) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 464) = 0;
  *(a1 + 472) = 0;
  *(a1 + 345) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 441) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 720) = 0u;
  *(a1 + 736) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 768) = 0u;
  *(a1 + 784) = 0u;
  *(a1 + 800) = 0u;
  *(a1 + 816) = 0u;
  *(a1 + 832) = 0u;
  *(a1 + 848) = 0u;
  *(a1 + 864) = 0u;
  *(a1 + 496) = 2;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 585) = 0u;
  *(a1 + 640) = 2;
  *(a1 + 656) = 2;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 720) = 0u;
  *(a1 + 736) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 768) = 0u;
  *(a1 + 784) = 0u;
  *(a1 + 800) = 0u;
  *(a1 + 816) = 0u;
  *(a1 + 832) = 0u;
  *(a1 + 848) = 0u;
  *(a1 + 857) = 0u;
  *(a1 + 969) = 0u;
  *(a1 + 944) = 0u;
  *(a1 + 960) = 0u;
  *(a1 + 912) = 0u;
  *(a1 + 928) = 0u;
  *(a1 + 880) = 0u;
  *(a1 + 896) = 0u;
  *(a1 + 992) = 0x40BF400000000000;
  *(a1 + 1000) = 0;
  *(a1 + 1008) = 0x40BF400000000000;
  *(a1 + 1016) = 0;
  *(a1 + 1024) = 1;
  *(a1 + 1032) = 0;
  *(a1 + 1040) = 0u;
  *(a1 + 1056) = 0;
  *(a1 + 1080) = 0;
  *(a1 + 1064) = 0u;
  *(a1 + 1088) = 0;
  *(a1 + 1096) = 0;
  operator new();
}

void webm::TrackEntryParser::~TrackEntryParser(webm::TrackEntryParser *this)
{
  *this = &unk_2882A9C50;
  *(this + 138) = &unk_2882A81D0;
  v2 = *(this + 150);
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

  v3 = *(this + 148);
  *(this + 148) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  webm::TrackEntry::~TrackEntry((this + 8));
}

{
  *this = &unk_2882A9C50;
  *(this + 138) = &unk_2882A81D0;
  v2 = *(this + 150);
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

  v3 = *(this + 148);
  *(this + 148) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  webm::TrackEntry::~TrackEntry((this + 8));

  JUMPOUT(0x2743DA540);
}

uint64_t webm::MasterValueParser<webm::TrackEntry>::Feed(uint64_t a1, void **a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  if ((*(a1 + 1100) & 1) == 0)
  {
    v10 = &unk_2882A8218;
    if (*(a1 + 1096) == 1)
    {
      a2 = &v10;
    }

    result = webm::MasterParser::Feed(a1 + 1104, a2, a3, a4);
    if (result == 0x80000000)
    {
      v9 = 0;
      a2 = &v10;
      result = webm::MasterParser::Feed(a1 + 1104, &v10, a3, &v9);
      *a4 += v9;
    }

    if (result)
    {
      return result;
    }

    *(a1 + 1100) = 1;
  }

  if ((*(a1 + 1101) & 1) == 0)
  {
    result = (*(*a1 + 56))(a1, a2, a1 + 1096);
    if (result)
    {
      return result;
    }

    *(a1 + 1101) = 1;
  }

  if (*(a1 + 1096) == 1)
  {
    return 0;
  }

  else
  {
    return (*(*a1 + 64))(a1, a2);
  }
}

uint64_t webm::MasterValueParser<webm::TrackEntry>::Init(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  memset(v12, 0, sizeof(v12));
  v13 = 65537;
  v14 = 0;
  v15 = 1;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  HIBYTE(v11) = 3;
  v19 = 0;
  if (&v10 > "eng" || &v10 + 3 <= "eng")
  {
    LODWORD(v10) = 6778469;
    v21 = v11;
    v20 = v10;
    v22 = 0;
    v29 = 0;
    v30 = 0;
    v23 = 0uLL;
    v24 = 0uLL;
    v25 = 0uLL;
    v26 = 0uLL;
    v27 = 0uLL;
    memset(v28, 0, sizeof(v28));
    bzero(v31, 0x2D0uLL);
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    memset(v35, 0, sizeof(v35));
    v31[28] = 2;
    v36 = 2;
    v37 = 2;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    memset(v49, 0, 25);
    memset(&v49[32], 0, 105);
    v51 = 0;
    v53 = 0;
    v55 = 0;
    v50 = 0x40BF400000000000;
    v52 = 0x40BF400000000000;
    v54 = 1;
    memset(v56, 0, sizeof(v56));
    v57 = 0u;
    v58 = 0u;
    webm::TrackEntry::operator=(v5 + 8, v12);
    webm::TrackEntry::~TrackEntry(v12);
    *(v5 + 1096) = 0;
    *(v5 + 1100) = 0;
    v6 = *(a2 + 4);
    v7 = *(a2 + 8);
    *(v5 + 1120) = 0xFFFFFFFFLL;
    *(v5 + 1144) = -1;
    *(v5 + 1156) = 0;
    *(v5 + 1148) = 0;
    *(v5 + 1280) = 0;
    *(v5 + 1288) = 0;
    *(v5 + 1296) = v6;
    *(v5 + 1304) = v7;
    *(v5 + 1328) = 0;
    *(v5 + 1336) = 0;
    v8 = *(a2 + 8);
    if (v8 == -1)
    {
      *(v5 + 1320) = a3;
    }

    else
    {
      *(v5 + 1320) = v8;
      if (!v8)
      {
        v9 = 8;
LABEL_8:
        *(v5 + 1292) = v9;
        return 0;
      }
    }

    v9 = 0;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t webm::MasterValueParser<webm::TrackEntry>::InitAfterSeek(uint64_t result, unsigned int **a2, uint64_t a3)
{
  v5 = result;
  memset(v8, 0, sizeof(v8));
  v9 = 65537;
  v10 = 0;
  v11 = 1;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  HIBYTE(v7) = 3;
  v15 = 0;
  if (&v6 <= "eng" && &v6 + 3 > "eng")
  {
    __break(1u);
  }

  else
  {
    LODWORD(v6) = 6778469;
    v17 = v7;
    v16 = v6;
    v18 = 0;
    v25 = 0;
    v26 = 0;
    v19 = 0uLL;
    v20 = 0uLL;
    v21 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    memset(v24, 0, sizeof(v24));
    bzero(v27, 0x2D0uLL);
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    memset(v31, 0, sizeof(v31));
    v27[28] = 2;
    v32 = 2;
    v33 = 2;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    memset(v45, 0, 25);
    memset(&v45[32], 0, 105);
    v47 = 0;
    v49 = 0;
    v51 = 0;
    v46 = 0x40BF400000000000;
    v48 = 0x40BF400000000000;
    v50 = 1;
    memset(v52, 0, sizeof(v52));
    v53 = 0u;
    v54 = 0u;
    webm::TrackEntry::operator=(v5 + 8, v8);
    webm::TrackEntry::~TrackEntry(v8);
    *(v5 + 1096) = 0;
    *(v5 + 1100) = 256;
    return webm::MasterParser::InitAfterSeek(v5 + 1104, a2, a3);
  }

  return result;
}

uint64_t webm::MasterValueParser<webm::TrackEntry>::GetCachedMetadata(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 1336) != 1)
  {
    return 0;
  }

  v2 = *(a1 + 1160);
  *(a2 + 16) = *(a1 + 1176);
  *a2 = v2;
  return *(a1 + 1336) & 1;
}

uint64_t webm::TrackEntryParser::OnParseCompleted(webm::TrackEntryParser *this, webm::Callback *a2)
{
  v2 = *(this + 324);
  v4[0] = 174;
  v4[1] = v2;
  v5 = *(this + 1304);
  return (*(*a2 + 144))(a2, v4, this + 8);
}

void *webm::MasterValueParser<webm::TrackEntry>::~MasterValueParser(void *a1)
{
  *a1 = &unk_2882A9C50;
  a1[138] = &unk_2882A81D0;
  v2 = a1[150];
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

  v3 = a1[148];
  a1[148] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  webm::TrackEntry::~TrackEntry((a1 + 1));
  return a1;
}

void webm::MasterValueParser<webm::TrackEntry>::~MasterValueParser(void *a1)
{
  *a1 = &unk_2882A9C50;
  a1[138] = &unk_2882A81D0;
  v2 = a1[150];
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

  v3 = a1[148];
  a1[148] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  webm::TrackEntry::~TrackEntry((a1 + 1));

  JUMPOUT(0x2743DA540);
}

uint64_t webm::MasterValueParser<webm::TrackEntry>::ChildParser<webm::IntParser<unsigned long long>,webm::MasterValueParser<webm::TrackEntry>::SingleChildFactory<webm::IntParser<unsigned long long>,unsigned long long>::BuildParser(webm::MasterValueParser<webm::TrackEntry>*,webm::TrackEntry*)::{lambda(webm::IntParser<unsigned long long>*)#1}>::Feed(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
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
  if (*(*(a1 + 32) + 1096) == 1)
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

uint64_t webm::MasterValueParser<webm::TrackEntry>::ChildParser<webm::IntParser<webm::TrackType>,webm::MasterValueParser<webm::TrackEntry>::SingleChildFactory<webm::IntParser<webm::TrackType>,webm::TrackType>::BuildParser(webm::MasterValueParser<webm::TrackEntry>*,webm::TrackEntry*)::{lambda(webm::IntParser<webm::TrackType>*)#1}>::Feed(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
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
      v13 = 0;
      v14 = 0;
      result = (*(*a3 + 16))(a3, 1, &v13, &v14);
      if (result)
      {
        break;
      }

      v11 = *a4 + 1;
      *a4 = v11;
      *(a1 + 8) = v13 | (*(a1 + 8) << 8);
      if (--v10 <= 1)
      {
        v5 = *(a1 + 24) - v11;
        goto LABEL_8;
      }
    }

    v6 = *a4;
    v5 = *(a1 + 24);
    goto LABEL_14;
  }

LABEL_8:
  *(a1 + 24) = v5;
  if (*(*(a1 + 32) + 1096) == 1)
  {
    return 0;
  }

  if ((*(*a1 + 48))(a1))
  {
    return 0;
  }

  result = 0;
  v12 = *(a1 + 40);
  *v12 = *(a1 + 8);
  *(v12 + 8) = 1;
  return result;
}

uint64_t webm::IntParser<webm::TrackType>::Init(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 > 8)
  {
    return 4294966270;
  }

  *(a1 + 24) = v2;
  *(a1 + 28) = v2;
  if (v2)
  {
    *(a1 + 8) = 0;
  }

  else
  {
    *(a1 + 8) = *(a1 + 16);
  }

  return 0;
}

uint64_t webm::MasterValueParser<webm::TrackEntry>::ChildParser<webm::BoolParser,webm::MasterValueParser<webm::TrackEntry>::SingleChildFactory<webm::BoolParser,BOOL>::BuildParser(webm::MasterValueParser<webm::TrackEntry>*,webm::TrackEntry*)::{lambda(webm::BoolParser*)#1}>::Feed(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *(a1 + 12);
  *a4 = 0;
  if (v5 <= 8)
  {
    if (v5)
    {
      v7 = 0;
      v11 = v5 + 1;
      while (1)
      {
        v16 = 0;
        v17 = 0;
        result = (*(*a3 + 16))(a3, 1, &v16, &v17);
        if (result)
        {
          break;
        }

        v6 = *a4 + 1;
        *a4 = v6;
        v7 = v16 | (v7 << 8);
        if (--v11 <= 1)
        {
          goto LABEL_9;
        }
      }

      v6 = *a4;
    }

    else
    {
      LODWORD(v6) = 0;
      v7 = 0;
LABEL_9:
      result = 0;
    }
  }

  else
  {
    LODWORD(v6) = 0;
    v7 = 0;
    result = 4294966270;
  }

  v12 = *(a1 + 12);
  *(a1 + 12) = v12 - v6;
  if (v7)
  {
    v13 = v12 == v6;
  }

  else
  {
    v13 = 1;
  }

  if (!v13 || v7 > 1)
  {
    return 4294966266;
  }

  if (*(a1 + 16) >= 1)
  {
    *(a1 + 8) = v7 == 1;
  }

  if (!result)
  {
    if (*(*(a1 + 24) + 1096) == 1 || ((*(*a1 + 48))(a1) & 1) != 0)
    {
      return 0;
    }

    else
    {
      result = 0;
      v15 = *(a1 + 32);
      *v15 = *(a1 + 8);
      v15[1] = 1;
    }
  }

  return result;
}

uint64_t webm::MasterValueParser<webm::TrackEntry>::ChildParser<webm::ByteParser<std::string>,webm::MasterValueParser<webm::TrackEntry>::SingleChildFactory<webm::ByteParser<std::string>,std::string>::BuildParser(webm::MasterValueParser<webm::TrackEntry>*,webm::TrackEntry*)::{lambda(webm::ByteParser<std::string>*)#1}>::~ChildParser(uint64_t a1)
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

void webm::MasterValueParser<webm::TrackEntry>::ChildParser<webm::ByteParser<std::string>,webm::MasterValueParser<webm::TrackEntry>::SingleChildFactory<webm::ByteParser<std::string>,std::string>::BuildParser(webm::MasterValueParser<webm::TrackEntry>*,webm::TrackEntry*)::{lambda(webm::ByteParser<std::string>*)#1}>::~ChildParser(uint64_t a1)
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

__n128 webm::MasterValueParser<webm::TrackEntry>::ChildParser<webm::ByteParser<std::string>,webm::MasterValueParser<webm::TrackEntry>::SingleChildFactory<webm::ByteParser<std::string>,std::string>::BuildParser(webm::MasterValueParser<webm::TrackEntry>*,webm::TrackEntry*)::{lambda(webm::ByteParser<std::string>*)#1}>::Feed(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  if (!webm::ByteParser<std::string>::Feed(a1, a2, a3, a4) && *(*(a1 + 64) + 1096) != 1 && ((*(*a1 + 48))(a1) & 1) == 0)
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

void *webm::MasterValueParser<webm::TrackEntry>::ChildParser<webm::ByteParser<std::vector<unsigned char>>,webm::MasterValueParser<webm::TrackEntry>::SingleChildFactory<webm::ByteParser<std::vector<unsigned char>>,std::vector<unsigned char>>::BuildParser(webm::MasterValueParser<webm::TrackEntry>*,webm::TrackEntry*)::{lambda(webm::ByteParser<std::vector<unsigned char>>*)#1}>::~ChildParser(void *a1)
{
  *a1 = &unk_2882A8DC8;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

void webm::MasterValueParser<webm::TrackEntry>::ChildParser<webm::ByteParser<std::vector<unsigned char>>,webm::MasterValueParser<webm::TrackEntry>::SingleChildFactory<webm::ByteParser<std::vector<unsigned char>>,std::vector<unsigned char>>::BuildParser(webm::MasterValueParser<webm::TrackEntry>*,webm::TrackEntry*)::{lambda(webm::ByteParser<std::vector<unsigned char>>*)#1}>::~ChildParser(void *a1)
{
  *a1 = &unk_2882A8DC8;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  JUMPOUT(0x2743DA540);
}

void *webm::MasterValueParser<webm::TrackEntry>::ChildParser<webm::ByteParser<std::vector<unsigned char>>,webm::MasterValueParser<webm::TrackEntry>::SingleChildFactory<webm::ByteParser<std::vector<unsigned char>>,std::vector<unsigned char>>::BuildParser(webm::MasterValueParser<webm::TrackEntry>*,webm::TrackEntry*)::{lambda(webm::ByteParser<std::vector<unsigned char>>*)#1}>::Feed(void *result, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = result;
  *a4 = 0;
  v5 = result + 1;
  v6 = result[7];
  if (v6 != result[2] - result[1])
  {
    do
    {
      v14 = 0;
      v9 = v4[1];
      v10 = v4[2];
      if (v9 == v10)
      {
        __break(1u);
        return result;
      }

      result = (*(*a3 + 16))(a3, v10 - (v9 + v6), v9 + v6, &v14);
      v11 = v14;
      *a4 += v14;
      v6 = v4[7] + v11;
      v4[7] = v6;
    }

    while (result == -1);
    if (result)
    {
      return result;
    }
  }

  if (*(v4[8] + 1096) == 1)
  {
    return 0;
  }

  if ((*(*v4 + 48))(v4))
  {
    return 0;
  }

  v12 = v4[9];
  v13 = *v12;
  if (*v12)
  {
    *(v12 + 8) = v13;
    operator delete(v13);
    *v12 = 0;
    *(v12 + 8) = 0;
    *(v12 + 16) = 0;
  }

  result = 0;
  *v12 = *(v4 + 1);
  *(v12 + 16) = v4[3];
  *v5 = 0;
  v5[1] = 0;
  v5[2] = 0;
  *(v12 + 24) = 1;
  return result;
}

void *webm::MasterValueParser<webm::TrackEntry>::ChildParser<webm::VideoParser,webm::MasterValueParser<webm::TrackEntry>::SingleChildFactory<webm::VideoParser,webm::Video>::BuildParser(webm::MasterValueParser<webm::TrackEntry>*,webm::TrackEntry*)::{lambda(webm::VideoParser*)#1}>::~ChildParser(void *a1)
{
  *a1 = &unk_2882A9E78;
  a1[91] = &unk_2882A81D0;
  v2 = a1[103];
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

  v3 = a1[101];
  a1[101] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = a1[79];
  if (v4)
  {
    a1[80] = v4;
    operator delete(v4);
  }

  return a1;
}

void webm::MasterValueParser<webm::TrackEntry>::ChildParser<webm::VideoParser,webm::MasterValueParser<webm::TrackEntry>::SingleChildFactory<webm::VideoParser,webm::Video>::BuildParser(webm::MasterValueParser<webm::TrackEntry>*,webm::TrackEntry*)::{lambda(webm::VideoParser*)#1}>::~ChildParser(void *a1)
{
  *a1 = &unk_2882A9E78;
  a1[91] = &unk_2882A81D0;
  v2 = a1[103];
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

  v3 = a1[101];
  a1[101] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = a1[79];
  if (v4)
  {
    a1[80] = v4;
    operator delete(v4);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webm::MasterValueParser<webm::TrackEntry>::ChildParser<webm::VideoParser,webm::MasterValueParser<webm::TrackEntry>::SingleChildFactory<webm::VideoParser,webm::Video>::BuildParser(webm::MasterValueParser<webm::TrackEntry>*,webm::TrackEntry*)::{lambda(webm::VideoParser*)#1}>::Feed(uint64_t a1, void **a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  result = webm::MasterValueParser<webm::Video>::Feed(a1, a2, a3, a4);
  if (result)
  {
    return result;
  }

  if (*(a1 + 968))
  {
    if (*(a1 + 969))
    {
      goto LABEL_5;
    }

LABEL_8:
    *(a1 + 168) = *(a1 + 72);
    if (*(*(a1 + 976) + 1096) == 1)
    {
      return result;
    }

    goto LABEL_9;
  }

  *(a1 + 152) = *(a1 + 56);
  if ((*(a1 + 969) & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (*(*(a1 + 976) + 1096) == 1)
  {
    return result;
  }

LABEL_9:
  v6 = result;
  v7 = (*(*a1 + 48))(a1);
  result = v6;
  if ((v7 & 1) == 0)
  {
    v8 = *(a1 + 984);
    memcpy(v8, (a1 + 8), 0x259uLL);
    v9 = *(a1 + 624);
    *(v8 + 608) = *(a1 + 616);
    *(v8 + 616) = v9;
    v10 = *(v8 + 624);
    if (v10)
    {
      *(v8 + 632) = v10;
      operator delete(v10);
      *(v8 + 624) = 0;
      *(v8 + 632) = 0;
      *(v8 + 640) = 0;
    }

    *(v8 + 624) = *(a1 + 632);
    *(v8 + 640) = *(a1 + 648);
    *(a1 + 648) = 0;
    *(a1 + 632) = 0u;
    *(v8 + 648) = *(a1 + 656);
    v11 = *(a1 + 664);
    v12 = *(a1 + 680);
    *(v8 + 681) = *(a1 + 689);
    *(v8 + 656) = v11;
    *(v8 + 672) = v12;
    *(v8 + 704) = *(a1 + 712);
    *(v8 + 712) = 1;
    return v6;
  }

  return result;
}

uint64_t webm::MasterValueParser<webm::Video>::GetCachedMetadata(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 960) != 1)
  {
    return 0;
  }

  v2 = *(a1 + 784);
  *(a2 + 16) = *(a1 + 800);
  *a2 = v2;
  return *(a1 + 960) & 1;
}

uint64_t webm::VideoParser::OnChildParsed(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8) != 0;
  if (*a2 == 21680)
  {
    *(result + 968) = v2;
  }

  else
  {
    *(result + 969) = v2;
  }

  return result;
}

void *webm::MasterValueParser<webm::Video>::~MasterValueParser(void *a1)
{
  *a1 = &unk_2882A9E78;
  a1[91] = &unk_2882A81D0;
  v2 = a1[103];
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

  v3 = a1[101];
  a1[101] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = a1[79];
  if (v4)
  {
    a1[80] = v4;
    operator delete(v4);
  }

  return a1;
}

void webm::MasterValueParser<webm::Video>::~MasterValueParser(void *a1)
{
  *a1 = &unk_2882A9E78;
  a1[91] = &unk_2882A81D0;
  v2 = a1[103];
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

  v3 = a1[101];
  a1[101] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = a1[79];
  if (v4)
  {
    a1[80] = v4;
    operator delete(v4);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webm::MasterValueParser<webm::Video>::Feed(uint64_t a1, void **a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  if ((*(a1 + 724) & 1) == 0)
  {
    v10 = &unk_2882A8218;
    if (*(a1 + 720) == 1)
    {
      a2 = &v10;
    }

    result = webm::MasterParser::Feed(a1 + 728, a2, a3, a4);
    if (result == 0x80000000)
    {
      v9 = 0;
      a2 = &v10;
      result = webm::MasterParser::Feed(a1 + 728, &v10, a3, &v9);
      *a4 += v9;
    }

    if (result)
    {
      return result;
    }

    *(a1 + 724) = 1;
  }

  if ((*(a1 + 725) & 1) == 0)
  {
    result = (*(*a1 + 56))(a1, a2, a1 + 720);
    if (result)
    {
      return result;
    }

    *(a1 + 725) = 1;
  }

  if (*(a1 + 720) == 1)
  {
    return 0;
  }

  else
  {
    return (*(*a1 + 64))(a1, a2);
  }
}

uint64_t webm::MasterValueParser<webm::Video>::Init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  memset(&v13[16] + 8, 0, 71);
  memset(&v13[3] + 8, 0, 199);
  memset(v13, 0, 40);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 81) = 0u;
  *(a1 + 177) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 256) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 232) = 2;
  *(a1 + 305) = *(&v13[19] + 8);
  *(a1 + 321) = 0u;
  *(a1 + 273) = *(&v13[17] + 8);
  *(a1 + 289) = *(&v13[18] + 8);
  *(a1 + 257) = *(&v13[16] + 8);
  *(a1 + 368) = 0;
  *(a1 + 376) = 2;
  *(a1 + 337) = 0u;
  *(a1 + 353) = 0u;
  *(a1 + 384) = xmmword_273BDACC0;
  *(a1 + 400) = 0;
  *(a1 + 433) = *(&v13[5] + 8);
  *(a1 + 449) = *(&v13[6] + 8);
  *(a1 + 401) = *(&v13[3] + 8);
  *(a1 + 417) = *(&v13[4] + 8);
  *(a1 + 497) = *(&v13[9] + 8);
  *(a1 + 513) = *(&v13[10] + 8);
  *(a1 + 465) = *(&v13[7] + 8);
  *(a1 + 481) = *(&v13[8] + 8);
  *(a1 + 577) = *(&v13[14] + 8);
  *(a1 + 593) = 0u;
  *(a1 + 545) = *(&v13[12] + 8);
  *(a1 + 561) = *(&v13[13] + 8);
  *(a1 + 529) = *(&v13[11] + 8);
  *(a1 + 624) = 0;
  *(a1 + 616) = 0;
  v6 = a1 + 632;
  v7 = *(a1 + 632);
  if (v7)
  {
    *(a1 + 640) = v7;
    operator delete(v7);
    *v6 = 0;
    *(v6 + 8) = 0;
    *(v6 + 16) = 0;
  }

  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 24) = 0;
  *(v6 + 16) = 0;
  *(a1 + 664) = *(v13 + 7);
  *(a1 + 680) = *(&v13[1] + 7);
  *(a1 + 689) = 0u;
  *(a1 + 712) = 0;
  *(a1 + 720) = 0;
  *(a1 + 724) = 0;
  v8 = *(a2 + 4);
  v9 = *(a2 + 8);
  *(a1 + 744) = 0xFFFFFFFFLL;
  *(a1 + 768) = -1;
  *(a1 + 780) = 0;
  *(a1 + 772) = 0;
  *(a1 + 904) = 0;
  *(a1 + 912) = 0;
  *(a1 + 920) = v8;
  *(a1 + 928) = v9;
  *(a1 + 952) = 0;
  *(a1 + 960) = 0;
  v10 = *(a2 + 8);
  if (v10 == -1)
  {
    *(a1 + 944) = a3;
    goto LABEL_7;
  }

  *(a1 + 944) = v10;
  if (v10)
  {
LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  v11 = 8;
LABEL_8:
  *(a1 + 916) = v11;
  return 0;
}

uint64_t webm::MasterValueParser<webm::Video>::InitAfterSeek(uint64_t a1, unsigned int **a2, uint64_t a3)
{
  memset(&v9[16] + 8, 0, 71);
  memset(&v9[3] + 8, 0, 199);
  memset(v9, 0, 40);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 81) = 0u;
  *(a1 + 177) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 256) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 232) = 2;
  *(a1 + 305) = *(&v9[19] + 8);
  *(a1 + 321) = 0u;
  *(a1 + 273) = *(&v9[17] + 8);
  *(a1 + 289) = *(&v9[18] + 8);
  *(a1 + 257) = *(&v9[16] + 8);
  *(a1 + 368) = 0;
  *(a1 + 376) = 2;
  *(a1 + 337) = 0u;
  *(a1 + 353) = 0u;
  *(a1 + 384) = xmmword_273BDACC0;
  *(a1 + 400) = 0;
  *(a1 + 433) = *(&v9[5] + 8);
  *(a1 + 449) = *(&v9[6] + 8);
  *(a1 + 401) = *(&v9[3] + 8);
  *(a1 + 417) = *(&v9[4] + 8);
  *(a1 + 497) = *(&v9[9] + 8);
  *(a1 + 513) = *(&v9[10] + 8);
  *(a1 + 465) = *(&v9[7] + 8);
  *(a1 + 481) = *(&v9[8] + 8);
  *(a1 + 577) = *(&v9[14] + 8);
  *(a1 + 593) = 0u;
  *(a1 + 545) = *(&v9[12] + 8);
  *(a1 + 561) = *(&v9[13] + 8);
  *(a1 + 529) = *(&v9[11] + 8);
  *(a1 + 624) = 0;
  *(a1 + 616) = 0;
  v4 = a1 + 632;
  v5 = *(a1 + 632);
  if (v5)
  {
    *(a1 + 640) = v5;
    v6 = a3;
    v7 = a2;
    operator delete(v5);
    a2 = v7;
    a3 = v6;
    *v4 = 0;
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
  }

  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 24) = 0;
  *(v4 + 16) = 0;
  *(a1 + 664) = *(v9 + 7);
  *(a1 + 680) = *(&v9[1] + 7);
  *(a1 + 689) = 0u;
  *(a1 + 712) = 0;
  *(a1 + 720) = 0;
  *(a1 + 724) = 256;

  return webm::MasterParser::InitAfterSeek(a1 + 728, a2, a3);
}

uint64_t webm::MasterValueParser<webm::Video>::ChildParser<webm::IntParser<webm::FlagInterlaced>,webm::MasterValueParser<webm::Video>::SingleChildFactory<webm::IntParser<webm::FlagInterlaced>,webm::FlagInterlaced>::BuildParser(webm::MasterValueParser<webm::Video>*,webm::Video*)::{lambda(webm::IntParser<webm::FlagInterlaced>*)#1}>::Feed(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
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
      v13 = 0;
      v14 = 0;
      result = (*(*a3 + 16))(a3, 1, &v13, &v14);
      if (result)
      {
        break;
      }

      v11 = *a4 + 1;
      *a4 = v11;
      *(a1 + 8) = v13 | (*(a1 + 8) << 8);
      if (--v10 <= 1)
      {
        v5 = *(a1 + 24) - v11;
        goto LABEL_8;
      }
    }

    v6 = *a4;
    v5 = *(a1 + 24);
    goto LABEL_14;
  }

LABEL_8:
  *(a1 + 24) = v5;
  if (*(*(a1 + 32) + 720) == 1)
  {
    return 0;
  }

  if ((*(*a1 + 48))(a1))
  {
    return 0;
  }

  result = 0;
  v12 = *(a1 + 40);
  *v12 = *(a1 + 8);
  *(v12 + 8) = 1;
  return result;
}

uint64_t webm::IntParser<webm::FlagInterlaced>::Init(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 > 8)
  {
    return 4294966270;
  }

  *(a1 + 24) = v2;
  *(a1 + 28) = v2;
  if (v2)
  {
    *(a1 + 8) = 0;
  }

  else
  {
    *(a1 + 8) = *(a1 + 16);
  }

  return 0;
}

uint64_t webm::MasterValueParser<webm::Video>::ChildParser<webm::IntParser<webm::StereoMode>,webm::MasterValueParser<webm::Video>::SingleChildFactory<webm::IntParser<webm::StereoMode>,webm::StereoMode>::BuildParser(webm::MasterValueParser<webm::Video>*,webm::Video*)::{lambda(webm::IntParser<webm::StereoMode>*)#1}>::Feed(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
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
      v13 = 0;
      v14 = 0;
      result = (*(*a3 + 16))(a3, 1, &v13, &v14);
      if (result)
      {
        break;
      }

      v11 = *a4 + 1;
      *a4 = v11;
      *(a1 + 8) = v13 | (*(a1 + 8) << 8);
      if (--v10 <= 1)
      {
        v5 = *(a1 + 24) - v11;
        goto LABEL_8;
      }
    }

    v6 = *a4;
    v5 = *(a1 + 24);
    goto LABEL_14;
  }

LABEL_8:
  *(a1 + 24) = v5;
  if (*(*(a1 + 32) + 720) == 1)
  {
    return 0;
  }

  if ((*(*a1 + 48))(a1))
  {
    return 0;
  }

  result = 0;
  v12 = *(a1 + 40);
  *v12 = *(a1 + 8);
  *(v12 + 8) = 1;
  return result;
}

uint64_t webm::IntParser<webm::StereoMode>::Init(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 > 8)
  {
    return 4294966270;
  }

  *(a1 + 24) = v2;
  *(a1 + 28) = v2;
  if (v2)
  {
    *(a1 + 8) = 0;
  }

  else
  {
    *(a1 + 8) = *(a1 + 16);
  }

  return 0;
}

uint64_t webm::MasterValueParser<webm::Video>::ChildParser<webm::IntParser<unsigned long long>,webm::MasterValueParser<webm::Video>::SingleChildFactory<webm::IntParser<unsigned long long>,unsigned long long>::BuildParser(webm::MasterValueParser<webm::Video>*,webm::Video*)::{lambda(webm::IntParser<unsigned long long>*)#1}>::Feed(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
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
  if (*(*(a1 + 32) + 720) == 1)
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

uint64_t webm::MasterValueParser<webm::Video>::ChildParser<webm::IntParser<unsigned long long>,webm::MasterValueParser<webm::Video>::SingleChildFactory<webm::IntParser<unsigned long long>,unsigned long long,webm::MasterValueParser<webm::Video>::TagNotifyOnParseComplete>::BuildParser(webm::MasterValueParser<webm::Video>*,webm::Video*)::{lambda(webm::IntParser<unsigned long long>*)#1},webm::MasterValueParser<webm::Video>::TagNotifyOnParseComplete>::Feed(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(a1 + 24);
  *a4 = 0;
  if (v5 > 8)
  {
    v6 = 0;
    result = 4294966270;
LABEL_13:
    *(a1 + 24) = v5 - v6;
    return result;
  }

  if (v5)
  {
    v10 = v5 + 1;
    while (1)
    {
      v13 = 0;
      v14 = 0;
      result = (*(*a3 + 16))(a3, 1, &v13, &v14);
      if (result)
      {
        break;
      }

      ++*a4;
      *(a1 + 8) = v13 | (*(a1 + 8) << 8);
      if (--v10 <= 1)
      {
        v5 = *(a1 + 24) - *a4;
        goto LABEL_8;
      }
    }

    v6 = *a4;
    v5 = *(a1 + 24);
    goto LABEL_13;
  }

LABEL_8:
  *(a1 + 24) = v5;
  if (*(*(a1 + 32) + 720) != 1 && ((*(*a1 + 48))(a1) & 1) == 0)
  {
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    *v12 = *(a1 + 8);
    *(v12 + 8) = 1;
    (*(*v11 + 72))(v11, v11 + 784);
  }

  return 0;
}

uint64_t webm::MasterValueParser<webm::Video>::ChildParser<webm::IntParser<webm::DisplayUnit>,webm::MasterValueParser<webm::Video>::SingleChildFactory<webm::IntParser<webm::DisplayUnit>,webm::DisplayUnit>::BuildParser(webm::MasterValueParser<webm::Video>*,webm::Video*)::{lambda(webm::IntParser<webm::DisplayUnit>*)#1}>::Feed(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
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
      v13 = 0;
      v14 = 0;
      result = (*(*a3 + 16))(a3, 1, &v13, &v14);
      if (result)
      {
        break;
      }

      v11 = *a4 + 1;
      *a4 = v11;
      *(a1 + 8) = v13 | (*(a1 + 8) << 8);
      if (--v10 <= 1)
      {
        v5 = *(a1 + 24) - v11;
        goto LABEL_8;
      }
    }

    v6 = *a4;
    v5 = *(a1 + 24);
    goto LABEL_14;
  }

LABEL_8:
  *(a1 + 24) = v5;
  if (*(*(a1 + 32) + 720) == 1)
  {
    return 0;
  }

  if ((*(*a1 + 48))(a1))
  {
    return 0;
  }

  result = 0;
  v12 = *(a1 + 40);
  *v12 = *(a1 + 8);
  *(v12 + 8) = 1;
  return result;
}

uint64_t webm::IntParser<webm::DisplayUnit>::Init(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 > 8)
  {
    return 4294966270;
  }

  *(a1 + 24) = v2;
  *(a1 + 28) = v2;
  if (v2)
  {
    *(a1 + 8) = 0;
  }

  else
  {
    *(a1 + 8) = *(a1 + 16);
  }

  return 0;
}

uint64_t webm::MasterValueParser<webm::Video>::ChildParser<webm::IntParser<webm::AspectRatioType>,webm::MasterValueParser<webm::Video>::SingleChildFactory<webm::IntParser<webm::AspectRatioType>,webm::AspectRatioType>::BuildParser(webm::MasterValueParser<webm::Video>*,webm::Video*)::{lambda(webm::IntParser<webm::AspectRatioType>*)#1}>::Feed(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
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
      v13 = 0;
      v14 = 0;
      result = (*(*a3 + 16))(a3, 1, &v13, &v14);
      if (result)
      {
        break;
      }

      v11 = *a4 + 1;
      *a4 = v11;
      *(a1 + 8) = v13 | (*(a1 + 8) << 8);
      if (--v10 <= 1)
      {
        v5 = *(a1 + 24) - v11;
        goto LABEL_8;
      }
    }

    v6 = *a4;
    v5 = *(a1 + 24);
    goto LABEL_14;
  }

LABEL_8:
  *(a1 + 24) = v5;
  if (*(*(a1 + 32) + 720) == 1)
  {
    return 0;
  }

  if ((*(*a1 + 48))(a1))
  {
    return 0;
  }

  result = 0;
  v12 = *(a1 + 40);
  *v12 = *(a1 + 8);
  *(v12 + 8) = 1;
  return result;
}

uint64_t webm::IntParser<webm::AspectRatioType>::Init(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 > 8)
  {
    return 4294966270;
  }

  *(a1 + 24) = v2;
  *(a1 + 28) = v2;
  if (v2)
  {
    *(a1 + 8) = 0;
  }

  else
  {
    *(a1 + 8) = *(a1 + 16);
  }

  return 0;
}

double webm::MasterValueParser<webm::Video>::ChildParser<webm::FloatParser,webm::MasterValueParser<webm::Video>::SingleChildFactory<webm::FloatParser,double>::BuildParser(webm::MasterValueParser<webm::Video>*,webm::Video*)::{lambda(webm::FloatParser*)#1}>::Feed(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  v5 = *(a1 + 32);
  if (v5)
  {
    if (v5 <= 8)
    {
      v9 = v5 + 1;
      while (1)
      {
        v14 = 0;
        v15 = 0;
        v7 = (*(*a3 + 16))(a3, 1, &v14, &v15);
        if (v7)
        {
          break;
        }

        ++*a4;
        *(a1 + 24) = v14 | (*(a1 + 24) << 8);
        if (--v9 <= 1)
        {
          v7 = 0;
          break;
        }
      }
    }

    else
    {
      v7 = -1026;
    }

    v11 = *(a1 + 32);
    v12 = v11 == *a4;
    *(a1 + 32) = v11 - *a4;
    if (v12)
    {
      if (*(a1 + 36) == 1)
      {
        result = *(a1 + 24);
        *(a1 + 8) = result;
        if (v7)
        {
          return result;
        }
      }

      else
      {
        *(a1 + 8) = *(a1 + 24);
        if (v7)
        {
          return result;
        }
      }
    }

    else if (v7)
    {
      return result;
    }
  }

  if (*(*(a1 + 40) + 720) != 1 && ((*(*a1 + 48))(a1) & 1) == 0)
  {
    v13 = *(a1 + 48);
    result = *(a1 + 8);
    *v13 = result;
    *(v13 + 8) = 1;
  }

  return result;
}

void *webm::MasterValueParser<webm::Video>::ChildParser<webm::ColourParser,webm::MasterValueParser<webm::Video>::SingleChildFactory<webm::ColourParser,webm::Colour>::BuildParser(webm::MasterValueParser<webm::Video>*,webm::Video*)::{lambda(webm::ColourParser*)#1}>::~ChildParser(void *a1)
{
  *a1 = &unk_2882AA130;
  a1[49] = &unk_2882A81D0;
  v2 = a1[61];
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

  v3 = a1[59];
  a1[59] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

void webm::MasterValueParser<webm::Video>::ChildParser<webm::ColourParser,webm::MasterValueParser<webm::Video>::SingleChildFactory<webm::ColourParser,webm::Colour>::BuildParser(webm::MasterValueParser<webm::Video>*,webm::Video*)::{lambda(webm::ColourParser*)#1}>::~ChildParser(void *a1)
{
  *a1 = &unk_2882AA130;
  a1[49] = &unk_2882A81D0;
  v2 = a1[61];
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

  v3 = a1[59];
  a1[59] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webm::MasterValueParser<webm::Video>::ChildParser<webm::ColourParser,webm::MasterValueParser<webm::Video>::SingleChildFactory<webm::ColourParser,webm::Colour>::BuildParser(webm::MasterValueParser<webm::Video>*,webm::Video*)::{lambda(webm::ColourParser*)#1}>::Feed(void *a1, void **a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  result = webm::MasterValueParser<webm::Colour>::Feed(a1, a2, a3, a4);
  if (!result && *(a1[79] + 720) != 1)
  {
    v6 = result;
    v7 = (*(*a1 + 48))(a1);
    result = v6;
    if ((v7 & 1) == 0)
    {
      v8 = a1[80];
      memcpy(v8, a1 + 1, 0x178uLL);
      result = v6;
      v8[376] = 1;
    }
  }

  return result;
}

uint64_t webm::MasterValueParser<webm::Colour>::Init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 184) = 0u;
  *(a1 + 8) = 2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 97) = 0u;
  *(a1 + 152) = 2;
  *(a1 + 160) = 0;
  *(a1 + 168) = 2;
  *(a1 + 176) = 0;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 374) = 0u;
  v3 = *(a2 + 4);
  v4 = *(a2 + 8);
  *(a1 + 408) = 0xFFFFFFFFLL;
  *(a1 + 432) = -1;
  *(a1 + 436) = 0;
  *(a1 + 444) = 0;
  *(a1 + 568) = 0;
  *(a1 + 576) = 0;
  *(a1 + 584) = v3;
  *(a1 + 592) = v4;
  *(a1 + 616) = 0;
  *(a1 + 624) = 0;
  v5 = *(a2 + 8);
  if (v5 == -1)
  {
    *(a1 + 608) = a3;
  }

  else
  {
    *(a1 + 608) = v5;
    if (!v5)
    {
      *(a1 + 580) = 8;
      return 0;
    }
  }

  *(a1 + 580) = 0;
  return 0;
}

uint64_t webm::MasterValueParser<webm::Colour>::InitAfterSeek(uint64_t a1, unsigned int **a2, uint64_t a3)
{
  *(a1 + 184) = 0u;
  *(a1 + 8) = 2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 97) = 0u;
  *(a1 + 152) = 2;
  *(a1 + 160) = 0;
  *(a1 + 168) = 2;
  *(a1 + 176) = 0;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 389) = 1;
  *(a1 + 360) = 0u;
  *(a1 + 373) = 0u;
  return webm::MasterParser::InitAfterSeek(a1 + 392, a2, a3);
}

uint64_t webm::MasterValueParser<webm::Colour>::GetCachedMetadata(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 624) != 1)
  {
    return 0;
  }

  v2 = *(a1 + 448);
  *(a2 + 16) = *(a1 + 464);
  *a2 = v2;
  return *(a1 + 624) & 1;
}

uint64_t webm::MasterValueParser<webm::Colour>::Feed(uint64_t a1, void **a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  if ((*(a1 + 388) & 1) == 0)
  {
    v10 = &unk_2882A8218;
    if (*(a1 + 384) == 1)
    {
      a2 = &v10;
    }

    result = webm::MasterParser::Feed(a1 + 392, a2, a3, a4);
    if (result == 0x80000000)
    {
      v9 = 0;
      a2 = &v10;
      result = webm::MasterParser::Feed(a1 + 392, &v10, a3, &v9);
      *a4 += v9;
    }

    if (result)
    {
      return result;
    }

    *(a1 + 388) = 1;
  }

  if ((*(a1 + 389) & 1) == 0)
  {
    result = (*(*a1 + 56))(a1, a2, a1 + 384);
    if (result)
    {
      return result;
    }

    *(a1 + 389) = 1;
  }

  if (*(a1 + 384) == 1)
  {
    return 0;
  }

  else
  {
    return (*(*a1 + 64))(a1, a2);
  }
}

void *webm::MasterValueParser<webm::Colour>::~MasterValueParser(void *a1)
{
  *a1 = &unk_2882AA130;
  a1[49] = &unk_2882A81D0;
  v2 = a1[61];
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

  v3 = a1[59];
  a1[59] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

void webm::MasterValueParser<webm::Colour>::~MasterValueParser(void *a1)
{
  *a1 = &unk_2882AA130;
  a1[49] = &unk_2882A81D0;
  v2 = a1[61];
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

  v3 = a1[59];
  a1[59] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webm::MasterValueParser<webm::Colour>::ChildParser<webm::IntParser<webm::MatrixCoefficients>,webm::MasterValueParser<webm::Colour>::SingleChildFactory<webm::IntParser<webm::MatrixCoefficients>,webm::MatrixCoefficients>::BuildParser(webm::MasterValueParser<webm::Colour>*,webm::Colour*)::{lambda(webm::IntParser<webm::MatrixCoefficients>*)#1}>::Feed(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
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
      v13 = 0;
      v14 = 0;
      result = (*(*a3 + 16))(a3, 1, &v13, &v14);
      if (result)
      {
        break;
      }

      v11 = *a4 + 1;
      *a4 = v11;
      *(a1 + 8) = v13 | (*(a1 + 8) << 8);
      if (--v10 <= 1)
      {
        v5 = *(a1 + 24) - v11;
        goto LABEL_8;
      }
    }

    v6 = *a4;
    v5 = *(a1 + 24);
    goto LABEL_14;
  }

LABEL_8:
  *(a1 + 24) = v5;
  if (*(*(a1 + 32) + 384) == 1)
  {
    return 0;
  }

  if ((*(*a1 + 48))(a1))
  {
    return 0;
  }

  result = 0;
  v12 = *(a1 + 40);
  *v12 = *(a1 + 8);
  *(v12 + 8) = 1;
  return result;
}

uint64_t webm::IntParser<webm::MatrixCoefficients>::Init(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 > 8)
  {
    return 4294966270;
  }

  *(a1 + 24) = v2;
  *(a1 + 28) = v2;
  if (v2)
  {
    *(a1 + 8) = 0;
  }

  else
  {
    *(a1 + 8) = *(a1 + 16);
  }

  return 0;
}

uint64_t webm::MasterValueParser<webm::Colour>::ChildParser<webm::IntParser<unsigned long long>,webm::MasterValueParser<webm::Colour>::SingleChildFactory<webm::IntParser<unsigned long long>,unsigned long long>::BuildParser(webm::MasterValueParser<webm::Colour>*,webm::Colour*)::{lambda(webm::IntParser<unsigned long long>*)#1}>::Feed(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
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
  if (*(*(a1 + 32) + 384) == 1)
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

uint64_t webm::MasterValueParser<webm::Colour>::ChildParser<webm::IntParser<webm::Range>,webm::MasterValueParser<webm::Colour>::SingleChildFactory<webm::IntParser<webm::Range>,webm::Range>::BuildParser(webm::MasterValueParser<webm::Colour>*,webm::Colour*)::{lambda(webm::IntParser<webm::Range>*)#1}>::Feed(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
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
      v13 = 0;
      v14 = 0;
      result = (*(*a3 + 16))(a3, 1, &v13, &v14);
      if (result)
      {
        break;
      }

      v11 = *a4 + 1;
      *a4 = v11;
      *(a1 + 8) = v13 | (*(a1 + 8) << 8);
      if (--v10 <= 1)
      {
        v5 = *(a1 + 24) - v11;
        goto LABEL_8;
      }
    }

    v6 = *a4;
    v5 = *(a1 + 24);
    goto LABEL_14;
  }

LABEL_8:
  *(a1 + 24) = v5;
  if (*(*(a1 + 32) + 384) == 1)
  {
    return 0;
  }

  if ((*(*a1 + 48))(a1))
  {
    return 0;
  }

  result = 0;
  v12 = *(a1 + 40);
  *v12 = *(a1 + 8);
  *(v12 + 8) = 1;
  return result;
}

uint64_t webm::IntParser<webm::Range>::Init(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 > 8)
  {
    return 4294966270;
  }

  *(a1 + 24) = v2;
  *(a1 + 28) = v2;
  if (v2)
  {
    *(a1 + 8) = 0;
  }

  else
  {
    *(a1 + 8) = *(a1 + 16);
  }

  return 0;
}

uint64_t webm::MasterValueParser<webm::Colour>::ChildParser<webm::IntParser<webm::TransferCharacteristics>,webm::MasterValueParser<webm::Colour>::SingleChildFactory<webm::IntParser<webm::TransferCharacteristics>,webm::TransferCharacteristics>::BuildParser(webm::MasterValueParser<webm::Colour>*,webm::Colour*)::{lambda(webm::IntParser<webm::TransferCharacteristics>*)#1}>::Feed(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
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
      v13 = 0;
      v14 = 0;
      result = (*(*a3 + 16))(a3, 1, &v13, &v14);
      if (result)
      {
        break;
      }

      v11 = *a4 + 1;
      *a4 = v11;
      *(a1 + 8) = v13 | (*(a1 + 8) << 8);
      if (--v10 <= 1)
      {
        v5 = *(a1 + 24) - v11;
        goto LABEL_8;
      }
    }

    v6 = *a4;
    v5 = *(a1 + 24);
    goto LABEL_14;
  }

LABEL_8:
  *(a1 + 24) = v5;
  if (*(*(a1 + 32) + 384) == 1)
  {
    return 0;
  }

  if ((*(*a1 + 48))(a1))
  {
    return 0;
  }

  result = 0;
  v12 = *(a1 + 40);
  *v12 = *(a1 + 8);
  *(v12 + 8) = 1;
  return result;
}

uint64_t webm::IntParser<webm::TransferCharacteristics>::Init(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 > 8)
  {
    return 4294966270;
  }

  *(a1 + 24) = v2;
  *(a1 + 28) = v2;
  if (v2)
  {
    *(a1 + 8) = 0;
  }

  else
  {
    *(a1 + 8) = *(a1 + 16);
  }

  return 0;
}

uint64_t webm::MasterValueParser<webm::Colour>::ChildParser<webm::IntParser<webm::Primaries>,webm::MasterValueParser<webm::Colour>::SingleChildFactory<webm::IntParser<webm::Primaries>,webm::Primaries>::BuildParser(webm::MasterValueParser<webm::Colour>*,webm::Colour*)::{lambda(webm::IntParser<webm::Primaries>*)#1}>::Feed(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
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
      v13 = 0;
      v14 = 0;
      result = (*(*a3 + 16))(a3, 1, &v13, &v14);
      if (result)
      {
        break;
      }

      v11 = *a4 + 1;
      *a4 = v11;
      *(a1 + 8) = v13 | (*(a1 + 8) << 8);
      if (--v10 <= 1)
      {
        v5 = *(a1 + 24) - v11;
        goto LABEL_8;
      }
    }

    v6 = *a4;
    v5 = *(a1 + 24);
    goto LABEL_14;
  }

LABEL_8:
  *(a1 + 24) = v5;
  if (*(*(a1 + 32) + 384) == 1)
  {
    return 0;
  }

  if ((*(*a1 + 48))(a1))
  {
    return 0;
  }

  result = 0;
  v12 = *(a1 + 40);
  *v12 = *(a1 + 8);
  *(v12 + 8) = 1;
  return result;
}

uint64_t webm::IntParser<webm::Primaries>::Init(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 > 8)
  {
    return 4294966270;
  }

  *(a1 + 24) = v2;
  *(a1 + 28) = v2;
  if (v2)
  {
    *(a1 + 8) = 0;
  }

  else
  {
    *(a1 + 8) = *(a1 + 16);
  }

  return 0;
}

void *webm::MasterValueParser<webm::Colour>::ChildParser<webm::MasteringMetadataParser,webm::MasterValueParser<webm::Colour>::SingleChildFactory<webm::MasteringMetadataParser,webm::MasteringMetadata>::BuildParser(webm::MasterValueParser<webm::Colour>*,webm::Colour*)::{lambda(webm::MasteringMetadataParser*)#1}>::~ChildParser(void *a1)
{
  *a1 = &unk_2882AA358;
  a1[22] = &unk_2882A81D0;
  v2 = a1[34];
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

  v3 = a1[32];
  a1[32] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

void webm::MasterValueParser<webm::Colour>::ChildParser<webm::MasteringMetadataParser,webm::MasterValueParser<webm::Colour>::SingleChildFactory<webm::MasteringMetadataParser,webm::MasteringMetadata>::BuildParser(webm::MasterValueParser<webm::Colour>*,webm::Colour*)::{lambda(webm::MasteringMetadataParser*)#1}>::~ChildParser(void *a1)
{
  *a1 = &unk_2882AA358;
  a1[22] = &unk_2882A81D0;
  v2 = a1[34];
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

  v3 = a1[32];
  a1[32] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  JUMPOUT(0x2743DA540);
}

__n128 webm::MasterValueParser<webm::Colour>::ChildParser<webm::MasteringMetadataParser,webm::MasterValueParser<webm::Colour>::SingleChildFactory<webm::MasteringMetadataParser,webm::MasteringMetadata>::BuildParser(webm::MasterValueParser<webm::Colour>*,webm::Colour*)::{lambda(webm::MasteringMetadataParser*)#1}>::Feed(uint64_t a1, void **a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  if (!webm::MasterValueParser<webm::MasteringMetadata>::Feed(a1, a2, a3, a4) && *(*(a1 + 416) + 384) != 1 && ((*(*a1 + 48))(a1) & 1) == 0)
  {
    v6 = *(a1 + 424);
    v7 = *(a1 + 24);
    *v6 = *(a1 + 8);
    *(v6 + 16) = v7;
    v8 = *(a1 + 40);
    v9 = *(a1 + 56);
    v10 = *(a1 + 88);
    *(v6 + 64) = *(a1 + 72);
    *(v6 + 80) = v10;
    *(v6 + 32) = v8;
    *(v6 + 48) = v9;
    result = *(a1 + 104);
    v11 = *(a1 + 120);
    v12 = *(a1 + 152);
    *(v6 + 128) = *(a1 + 136);
    *(v6 + 144) = v12;
    *(v6 + 96) = result;
    *(v6 + 112) = v11;
    *(v6 + 160) = 1;
  }

  return result;
}

uint64_t webm::MasterValueParser<webm::MasteringMetadata>::Init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 166) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  v3 = *(a2 + 4);
  v4 = *(a2 + 8);
  *(a1 + 192) = 0xFFFFFFFFLL;
  *(a1 + 216) = -1;
  *(a1 + 220) = 0;
  *(a1 + 228) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = v3;
  *(a1 + 376) = v4;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  v5 = *(a2 + 8);
  if (v5 == -1)
  {
    *(a1 + 392) = a3;
  }

  else
  {
    *(a1 + 392) = v5;
    if (!v5)
    {
      *(a1 + 364) = 8;
      return 0;
    }
  }

  *(a1 + 364) = 0;
  return 0;
}

uint64_t webm::MasterValueParser<webm::MasteringMetadata>::InitAfterSeek(uint64_t a1, unsigned int **a2, uint64_t a3)
{
  *(a1 + 165) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 173) = 1;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  return webm::MasterParser::InitAfterSeek(a1 + 176, a2, a3);
}

uint64_t webm::MasterValueParser<webm::MasteringMetadata>::GetCachedMetadata(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 408) != 1)
  {
    return 0;
  }

  v2 = *(a1 + 232);
  *(a2 + 16) = *(a1 + 248);
  *a2 = v2;
  return *(a1 + 408) & 1;
}

uint64_t webm::MasterValueParser<webm::MasteringMetadata>::Feed(uint64_t a1, void **a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  if ((*(a1 + 172) & 1) == 0)
  {
    v10 = &unk_2882A8218;
    if (*(a1 + 168) == 1)
    {
      a2 = &v10;
    }

    result = webm::MasterParser::Feed(a1 + 176, a2, a3, a4);
    if (result == 0x80000000)
    {
      v9 = 0;
      a2 = &v10;
      result = webm::MasterParser::Feed(a1 + 176, &v10, a3, &v9);
      *a4 += v9;
    }

    if (result)
    {
      return result;
    }

    *(a1 + 172) = 1;
  }

  if ((*(a1 + 173) & 1) == 0)
  {
    result = (*(*a1 + 56))(a1, a2, a1 + 168);
    if (result)
    {
      return result;
    }

    *(a1 + 173) = 1;
  }

  if (*(a1 + 168) == 1)
  {
    return 0;
  }

  else
  {
    return (*(*a1 + 64))(a1, a2);
  }
}

void *webm::MasterValueParser<webm::MasteringMetadata>::~MasterValueParser(void *a1)
{
  *a1 = &unk_2882AA358;
  a1[22] = &unk_2882A81D0;
  v2 = a1[34];
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

  v3 = a1[32];
  a1[32] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

void webm::MasterValueParser<webm::MasteringMetadata>::~MasterValueParser(void *a1)
{
  *a1 = &unk_2882AA358;
  a1[22] = &unk_2882A81D0;
  v2 = a1[34];
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

  v3 = a1[32];
  a1[32] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  JUMPOUT(0x2743DA540);
}

double webm::MasterValueParser<webm::MasteringMetadata>::ChildParser<webm::FloatParser,webm::MasterValueParser<webm::MasteringMetadata>::SingleChildFactory<webm::FloatParser,double>::BuildParser(webm::MasterValueParser<webm::MasteringMetadata>*,webm::MasteringMetadata*)::{lambda(webm::FloatParser*)#1}>::Feed(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  v5 = *(a1 + 32);
  if (v5)
  {
    if (v5 <= 8)
    {
      v9 = v5 + 1;
      while (1)
      {
        v14 = 0;
        v15 = 0;
        v7 = (*(*a3 + 16))(a3, 1, &v14, &v15);
        if (v7)
        {
          break;
        }

        ++*a4;
        *(a1 + 24) = v14 | (*(a1 + 24) << 8);
        if (--v9 <= 1)
        {
          v7 = 0;
          break;
        }
      }
    }

    else
    {
      v7 = -1026;
    }

    v11 = *(a1 + 32);
    v12 = v11 == *a4;
    *(a1 + 32) = v11 - *a4;
    if (v12)
    {
      if (*(a1 + 36) == 1)
      {
        result = *(a1 + 24);
        *(a1 + 8) = result;
        if (v7)
        {
          return result;
        }
      }

      else
      {
        *(a1 + 8) = *(a1 + 24);
        if (v7)
        {
          return result;
        }
      }
    }

    else if (v7)
    {
      return result;
    }
  }

  if (*(*(a1 + 40) + 168) != 1 && ((*(*a1 + 48))(a1) & 1) == 0)
  {
    v13 = *(a1 + 48);
    result = *(a1 + 8);
    *v13 = result;
    *(v13 + 8) = 1;
  }

  return result;
}

void *webm::MasterValueParser<webm::Video>::ChildParser<webm::ProjectionParser,webm::MasterValueParser<webm::Video>::SingleChildFactory<webm::ProjectionParser,webm::Projection>::BuildParser(webm::MasterValueParser<webm::Video>*,webm::Video*)::{lambda(webm::ProjectionParser*)#1}>::~ChildParser(void *a1)
{
  *a1 = &unk_2882AA460;
  a1[14] = &unk_2882A81D0;
  v2 = a1[26];
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

  v3 = a1[24];
  a1[24] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    a1[4] = v4;
    operator delete(v4);
  }

  return a1;
}

void webm::MasterValueParser<webm::Video>::ChildParser<webm::ProjectionParser,webm::MasterValueParser<webm::Video>::SingleChildFactory<webm::ProjectionParser,webm::Projection>::BuildParser(webm::MasterValueParser<webm::Video>*,webm::Video*)::{lambda(webm::ProjectionParser*)#1}>::~ChildParser(void *a1)
{
  *a1 = &unk_2882AA460;
  a1[14] = &unk_2882A81D0;
  v2 = a1[26];
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

  v3 = a1[24];
  a1[24] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    a1[4] = v4;
    operator delete(v4);
  }

  JUMPOUT(0x2743DA540);
}

__n128 webm::MasterValueParser<webm::Video>::ChildParser<webm::ProjectionParser,webm::MasterValueParser<webm::Video>::SingleChildFactory<webm::ProjectionParser,webm::Projection>::BuildParser(webm::MasterValueParser<webm::Video>*,webm::Video*)::{lambda(webm::ProjectionParser*)#1}>::Feed(uint64_t a1, void **a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  if (!webm::MasterValueParser<webm::Projection>::Feed(a1, a2, a3, a4) && *(*(a1 + 352) + 720) != 1 && ((*(*a1 + 48))(a1) & 1) == 0)
  {
    v6 = *(a1 + 360);
    v7 = *(a1 + 8);
    *(v6 + 8) = *(a1 + 16);
    *v6 = v7;
    v8 = *(v6 + 16);
    if (v8)
    {
      *(v6 + 24) = v8;
      operator delete(v8);
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      *(v6 + 32) = 0;
    }

    *(v6 + 16) = *(a1 + 24);
    *(v6 + 32) = *(a1 + 40);
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(v6 + 40) = *(a1 + 48);
    result = *(a1 + 56);
    v9 = *(a1 + 72);
    *(v6 + 73) = *(a1 + 81);
    *(v6 + 48) = result;
    *(v6 + 64) = v9;
    *(v6 + 96) = 1;
  }

  return result;
}

uint64_t webm::MasterValueParser<webm::Projection>::Init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a1 + 24;
  v6 = *(a1 + 24);
  *(v7 - 16) = 0;
  *(v7 - 8) = 0;
  if (v6)
  {
    *(a1 + 32) = v6;
    operator delete(v6);
  }

  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 24) = 0;
  *(v7 + 16) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 81) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 108) = 0;
  v8 = *(a2 + 4);
  v9 = *(a2 + 8);
  *(a1 + 128) = 0xFFFFFFFFLL;
  *(a1 + 152) = -1;
  *(a1 + 156) = 0;
  *(a1 + 164) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = v8;
  *(a1 + 312) = v9;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  v10 = *(a2 + 8);
  if (v10 == -1)
  {
    *(a1 + 328) = a3;
  }

  else
  {
    *(a1 + 328) = v10;
    if (!v10)
    {
      *(a1 + 300) = 8;
      return 0;
    }
  }

  *(a1 + 300) = 0;
  return 0;
}

uint64_t webm::MasterValueParser<webm::Projection>::InitAfterSeek(uint64_t a1, unsigned int **a2, uint64_t a3)
{
  v5 = a1 + 24;
  v4 = *(a1 + 24);
  *(v5 - 16) = 0;
  *(v5 - 8) = 0;
  if (v4)
  {
    *(a1 + 32) = v4;
    v6 = a3;
    v7 = a2;
    operator delete(v4);
    a2 = v7;
    a3 = v6;
  }

  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 24) = 0;
  *(v5 + 16) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 81) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 108) = 256;

  return webm::MasterParser::InitAfterSeek(a1 + 112, a2, a3);
}

uint64_t webm::MasterValueParser<webm::Projection>::GetCachedMetadata(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 344) != 1)
  {
    return 0;
  }

  v2 = *(a1 + 168);
  *(a2 + 16) = *(a1 + 184);
  *a2 = v2;
  return *(a1 + 344) & 1;
}

uint64_t webm::MasterValueParser<webm::Projection>::Feed(uint64_t a1, void **a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  if ((*(a1 + 108) & 1) == 0)
  {
    v10 = &unk_2882A8218;
    if (*(a1 + 104) == 1)
    {
      a2 = &v10;
    }

    result = webm::MasterParser::Feed(a1 + 112, a2, a3, a4);
    if (result == 0x80000000)
    {
      v9 = 0;
      a2 = &v10;
      result = webm::MasterParser::Feed(a1 + 112, &v10, a3, &v9);
      *a4 += v9;
    }

    if (result)
    {
      return result;
    }

    *(a1 + 108) = 1;
  }

  if ((*(a1 + 109) & 1) == 0)
  {
    result = (*(*a1 + 56))(a1, a2, a1 + 104);
    if (result)
    {
      return result;
    }

    *(a1 + 109) = 1;
  }

  if (*(a1 + 104) == 1)
  {
    return 0;
  }

  else
  {
    return (*(*a1 + 64))(a1, a2);
  }
}

void *webm::MasterValueParser<webm::Projection>::~MasterValueParser(void *a1)
{
  *a1 = &unk_2882AA460;
  a1[14] = &unk_2882A81D0;
  v2 = a1[26];
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

  v3 = a1[24];
  a1[24] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    a1[4] = v4;
    operator delete(v4);
  }

  return a1;
}

void webm::MasterValueParser<webm::Projection>::~MasterValueParser(void *a1)
{
  *a1 = &unk_2882AA460;
  a1[14] = &unk_2882A81D0;
  v2 = a1[26];
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

  v3 = a1[24];
  a1[24] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    a1[4] = v4;
    operator delete(v4);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webm::MasterValueParser<webm::Projection>::ChildParser<webm::IntParser<webm::ProjectionType>,webm::MasterValueParser<webm::Projection>::SingleChildFactory<webm::IntParser<webm::ProjectionType>,webm::ProjectionType>::BuildParser(webm::MasterValueParser<webm::Projection>*,webm::Projection*)::{lambda(webm::IntParser<webm::ProjectionType>*)#1}>::Feed(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
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
      v13 = 0;
      v14 = 0;
      result = (*(*a3 + 16))(a3, 1, &v13, &v14);
      if (result)
      {
        break;
      }

      v11 = *a4 + 1;
      *a4 = v11;
      *(a1 + 8) = v13 | (*(a1 + 8) << 8);
      if (--v10 <= 1)
      {
        v5 = *(a1 + 24) - v11;
        goto LABEL_8;
      }
    }

    v6 = *a4;
    v5 = *(a1 + 24);
    goto LABEL_14;
  }

LABEL_8:
  *(a1 + 24) = v5;
  if (*(*(a1 + 32) + 104) == 1)
  {
    return 0;
  }

  if ((*(*a1 + 48))(a1))
  {
    return 0;
  }

  result = 0;
  v12 = *(a1 + 40);
  *v12 = *(a1 + 8);
  *(v12 + 8) = 1;
  return result;
}

uint64_t webm::IntParser<webm::ProjectionType>::Init(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 > 8)
  {
    return 4294966270;
  }

  *(a1 + 24) = v2;
  *(a1 + 28) = v2;
  if (v2)
  {
    *(a1 + 8) = 0;
  }

  else
  {
    *(a1 + 8) = *(a1 + 16);
  }

  return 0;
}

void *webm::MasterValueParser<webm::Projection>::ChildParser<webm::ByteParser<std::vector<unsigned char>>,webm::MasterValueParser<webm::Projection>::SingleChildFactory<webm::ByteParser<std::vector<unsigned char>>,std::vector<unsigned char>>::BuildParser(webm::MasterValueParser<webm::Projection>*,webm::Projection*)::{lambda(webm::ByteParser<std::vector<unsigned char>>*)#1}>::~ChildParser(void *a1)
{
  *a1 = &unk_2882A8DC8;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

void webm::MasterValueParser<webm::Projection>::ChildParser<webm::ByteParser<std::vector<unsigned char>>,webm::MasterValueParser<webm::Projection>::SingleChildFactory<webm::ByteParser<std::vector<unsigned char>>,std::vector<unsigned char>>::BuildParser(webm::MasterValueParser<webm::Projection>*,webm::Projection*)::{lambda(webm::ByteParser<std::vector<unsigned char>>*)#1}>::~ChildParser(void *a1)
{
  *a1 = &unk_2882A8DC8;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  JUMPOUT(0x2743DA540);
}

void *webm::MasterValueParser<webm::Projection>::ChildParser<webm::ByteParser<std::vector<unsigned char>>,webm::MasterValueParser<webm::Projection>::SingleChildFactory<webm::ByteParser<std::vector<unsigned char>>,std::vector<unsigned char>>::BuildParser(webm::MasterValueParser<webm::Projection>*,webm::Projection*)::{lambda(webm::ByteParser<std::vector<unsigned char>>*)#1}>::Feed(void *result, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = result;
  *a4 = 0;
  v5 = result + 1;
  v6 = result[7];
  if (v6 != result[2] - result[1])
  {
    do
    {
      v14 = 0;
      v9 = v4[1];
      v10 = v4[2];
      if (v9 == v10)
      {
        __break(1u);
        return result;
      }

      result = (*(*a3 + 16))(a3, v10 - (v9 + v6), v9 + v6, &v14);
      v11 = v14;
      *a4 += v14;
      v6 = v4[7] + v11;
      v4[7] = v6;
    }

    while (result == -1);
    if (result)
    {
      return result;
    }
  }

  if (*(v4[8] + 104) == 1)
  {
    return 0;
  }

  if ((*(*v4 + 48))(v4))
  {
    return 0;
  }

  v12 = v4[9];
  v13 = *v12;
  if (*v12)
  {
    *(v12 + 8) = v13;
    operator delete(v13);
    *v12 = 0;
    *(v12 + 8) = 0;
    *(v12 + 16) = 0;
  }

  result = 0;
  *v12 = *(v4 + 1);
  *(v12 + 16) = v4[3];
  *v5 = 0;
  v5[1] = 0;
  v5[2] = 0;
  *(v12 + 24) = 1;
  return result;
}

double webm::MasterValueParser<webm::Projection>::ChildParser<webm::FloatParser,webm::MasterValueParser<webm::Projection>::SingleChildFactory<webm::FloatParser,double>::BuildParser(webm::MasterValueParser<webm::Projection>*,webm::Projection*)::{lambda(webm::FloatParser*)#1}>::Feed(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  v5 = *(a1 + 32);
  if (v5)
  {
    if (v5 <= 8)
    {
      v9 = v5 + 1;
      while (1)
      {
        v14 = 0;
        v15 = 0;
        v7 = (*(*a3 + 16))(a3, 1, &v14, &v15);
        if (v7)
        {
          break;
        }

        ++*a4;
        *(a1 + 24) = v14 | (*(a1 + 24) << 8);
        if (--v9 <= 1)
        {
          v7 = 0;
          break;
        }
      }
    }

    else
    {
      v7 = -1026;
    }

    v11 = *(a1 + 32);
    v12 = v11 == *a4;
    *(a1 + 32) = v11 - *a4;
    if (v12)
    {
      if (*(a1 + 36) == 1)
      {
        result = *(a1 + 24);
        *(a1 + 8) = result;
        if (v7)
        {
          return result;
        }
      }

      else
      {
        *(a1 + 8) = *(a1 + 24);
        if (v7)
        {
          return result;
        }
      }
    }

    else if (v7)
    {
      return result;
    }
  }

  if (*(*(a1 + 40) + 104) != 1 && ((*(*a1 + 48))(a1) & 1) == 0)
  {
    v13 = *(a1 + 48);
    result = *(a1 + 8);
    *v13 = result;
    *(v13 + 8) = 1;
  }

  return result;
}

void *webm::MasterValueParser<webm::TrackEntry>::ChildParser<webm::AudioParser,webm::MasterValueParser<webm::TrackEntry>::SingleChildFactory<webm::AudioParser,webm::Audio>::BuildParser(webm::MasterValueParser<webm::TrackEntry>*,webm::TrackEntry*)::{lambda(webm::AudioParser*)#1}>::~ChildParser(void *a1)
{
  *a1 = &unk_2882AA5F8;
  a1[10] = &unk_2882A81D0;
  v2 = a1[22];
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

  v3 = a1[20];
  a1[20] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

void webm::MasterValueParser<webm::TrackEntry>::ChildParser<webm::AudioParser,webm::MasterValueParser<webm::TrackEntry>::SingleChildFactory<webm::AudioParser,webm::Audio>::BuildParser(webm::MasterValueParser<webm::TrackEntry>*,webm::TrackEntry*)::{lambda(webm::AudioParser*)#1}>::~ChildParser(void *a1)
{
  *a1 = &unk_2882AA5F8;
  a1[10] = &unk_2882A81D0;
  v2 = a1[22];
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

  v3 = a1[20];
  a1[20] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  JUMPOUT(0x2743DA540);
}

__n128 webm::MasterValueParser<webm::TrackEntry>::ChildParser<webm::AudioParser,webm::MasterValueParser<webm::TrackEntry>::SingleChildFactory<webm::AudioParser,webm::Audio>::BuildParser(webm::MasterValueParser<webm::TrackEntry>*,webm::TrackEntry*)::{lambda(webm::AudioParser*)#1}>::Feed(uint64_t a1, void **a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  if (!webm::MasterValueParser<webm::Audio>::Feed(a1, a2, a3, a4))
  {
    if ((*(a1 + 320) & 1) == 0)
    {
      result.n128_u64[0] = *(a1 + 8);
      *(a1 + 24) = result.n128_u64[0];
    }

    if (*(*(a1 + 328) + 1096) != 1 && ((*(*a1 + 48))(a1) & 1) == 0)
    {
      v6 = *(a1 + 336);
      result = *(a1 + 8);
      v7 = *(a1 + 24);
      v8 = *(a1 + 56);
      *(v6 + 32) = *(a1 + 40);
      *(v6 + 48) = v8;
      *v6 = result;
      *(v6 + 16) = v7;
      *(v6 + 64) = 1;
    }
  }

  return result;
}

uint64_t webm::AudioParser::Init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 320) = 0;
  *(a1 + 8) = 0x40BF400000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0x40BF400000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 70) = 0;
  v3 = *(a2 + 4);
  v4 = *(a2 + 8);
  *(a1 + 96) = 0xFFFFFFFFLL;
  *(a1 + 120) = -1;
  *(a1 + 132) = 0;
  *(a1 + 124) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = v3;
  *(a1 + 280) = v4;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  v5 = *(a2 + 8);
  if (v5 == -1)
  {
    *(a1 + 296) = a3;
  }

  else
  {
    *(a1 + 296) = v5;
    if (!v5)
    {
      *(a1 + 268) = 8;
      return 0;
    }
  }

  *(a1 + 268) = 0;
  return 0;
}

uint64_t webm::AudioParser::InitAfterSeek(uint64_t a1, unsigned int **a2, uint64_t a3)
{
  *(a1 + 320) = 0;
  *(a1 + 8) = 0x40BF400000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0x40BF400000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 77) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 69) = 0;
  return webm::MasterParser::InitAfterSeek(a1 + 80, a2, a3);
}

uint64_t webm::MasterValueParser<webm::Audio>::GetCachedMetadata(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 312) != 1)
  {
    return 0;
  }

  v2 = *(a1 + 136);
  *(a2 + 16) = *(a1 + 152);
  *a2 = v2;
  return *(a1 + 312) & 1;
}

void *webm::MasterValueParser<webm::Audio>::~MasterValueParser(void *a1)
{
  *a1 = &unk_2882AA5F8;
  a1[10] = &unk_2882A81D0;
  v2 = a1[22];
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

  v3 = a1[20];
  a1[20] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

void webm::MasterValueParser<webm::Audio>::~MasterValueParser(void *a1)
{
  *a1 = &unk_2882AA5F8;
  a1[10] = &unk_2882A81D0;
  v2 = a1[22];
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

  v3 = a1[20];
  a1[20] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webm::MasterValueParser<webm::Audio>::Feed(uint64_t a1, void **a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  if ((*(a1 + 76) & 1) == 0)
  {
    v10 = &unk_2882A8218;
    if (*(a1 + 72) == 1)
    {
      a2 = &v10;
    }

    result = webm::MasterParser::Feed(a1 + 80, a2, a3, a4);
    if (result == 0x80000000)
    {
      v9 = 0;
      a2 = &v10;
      result = webm::MasterParser::Feed(a1 + 80, &v10, a3, &v9);
      *a4 += v9;
    }

    if (result)
    {
      return result;
    }

    *(a1 + 76) = 1;
  }

  if ((*(a1 + 77) & 1) == 0)
  {
    result = (*(*a1 + 56))(a1, a2, a1 + 72);
    if (result)
    {
      return result;
    }

    *(a1 + 77) = 1;
  }

  if (*(a1 + 72) == 1)
  {
    return 0;
  }

  else
  {
    return (*(*a1 + 64))(a1, a2);
  }
}

uint64_t webm::MasterValueParser<webm::Audio>::Init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = 0x40BF400000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0x40BF400000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 70) = 0;
  v3 = *(a2 + 4);
  v4 = *(a2 + 8);
  *(a1 + 96) = 0xFFFFFFFFLL;
  *(a1 + 120) = -1;
  *(a1 + 132) = 0;
  *(a1 + 124) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = v3;
  *(a1 + 280) = v4;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  v5 = *(a2 + 8);
  if (v5 == -1)
  {
    *(a1 + 296) = a3;
  }

  else
  {
    *(a1 + 296) = v5;
    if (!v5)
    {
      *(a1 + 268) = 8;
      return 0;
    }
  }

  *(a1 + 268) = 0;
  return 0;
}

uint64_t webm::MasterValueParser<webm::Audio>::InitAfterSeek(uint64_t a1, unsigned int **a2, uint64_t a3)
{
  *(a1 + 8) = 0x40BF400000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0x40BF400000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 77) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 69) = 0;
  return webm::MasterParser::InitAfterSeek(a1 + 80, a2, a3);
}

double webm::MasterValueParser<webm::Audio>::ChildParser<webm::FloatParser,webm::MasterValueParser<webm::Audio>::SingleChildFactory<webm::FloatParser,double>::BuildParser(webm::MasterValueParser<webm::Audio>*,webm::Audio*)::{lambda(webm::FloatParser*)#1}>::Feed(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  v5 = *(a1 + 32);
  if (v5)
  {
    if (v5 <= 8)
    {
      v9 = v5 + 1;
      while (1)
      {
        v14 = 0;
        v15 = 0;
        v7 = (*(*a3 + 16))(a3, 1, &v14, &v15);
        if (v7)
        {
          break;
        }

        ++*a4;
        *(a1 + 24) = v14 | (*(a1 + 24) << 8);
        if (--v9 <= 1)
        {
          v7 = 0;
          break;
        }
      }
    }

    else
    {
      v7 = -1026;
    }

    v11 = *(a1 + 32);
    v12 = v11 == *a4;
    *(a1 + 32) = v11 - *a4;
    if (v12)
    {
      if (*(a1 + 36) == 1)
      {
        result = *(a1 + 24);
        *(a1 + 8) = result;
        if (v7)
        {
          return result;
        }
      }

      else
      {
        *(a1 + 8) = *(a1 + 24);
        if (v7)
        {
          return result;
        }
      }
    }

    else if (v7)
    {
      return result;
    }
  }

  if (*(*(a1 + 40) + 72) != 1 && ((*(*a1 + 48))(a1) & 1) == 0)
  {
    v13 = *(a1 + 48);
    result = *(a1 + 8);
    *v13 = result;
    *(v13 + 8) = 1;
  }

  return result;
}

uint64_t webm::MasterValueParser<webm::Audio>::ChildParser<webm::FloatParser,webm::MasterValueParser<webm::Audio>::SingleChildFactory<webm::FloatParser,double,webm::MasterValueParser<webm::Audio>::TagNotifyOnParseComplete>::BuildParser(webm::MasterValueParser<webm::Audio>*,webm::Audio*)::{lambda(webm::FloatParser*)#1},webm::MasterValueParser<webm::Audio>::TagNotifyOnParseComplete>::Feed(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  v5 = *(a1 + 32);
  if (v5)
  {
    if (v5 <= 8)
    {
      v9 = v5 + 1;
      while (1)
      {
        v14 = 0;
        v15 = 0;
        result = (*(*a3 + 16))(a3, 1, &v14, &v15);
        if (result)
        {
          break;
        }

        ++*a4;
        *(a1 + 24) = v14 | (*(a1 + 24) << 8);
        if (--v9 <= 1)
        {
          result = 0;
          break;
        }
      }
    }

    else
    {
      result = 4294966270;
    }

    v10 = *(a1 + 32);
    v11 = v10 == *a4;
    *(a1 + 32) = v10 - *a4;
    if (v11)
    {
      if (*(a1 + 36) == 1)
      {
        *(a1 + 8) = *(a1 + 24);
        if (result)
        {
          return result;
        }
      }

      else
      {
        *(a1 + 8) = *(a1 + 24);
        if (result)
        {
          return result;
        }
      }
    }

    else if (result)
    {
      return result;
    }
  }

  if (*(*(a1 + 40) + 72) != 1 && ((*(*a1 + 48))(a1) & 1) == 0)
  {
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    *v13 = *(a1 + 8);
    *(v13 + 8) = 1;
    (*(*v12 + 72))(v12, v12 + 136);
  }

  return 0;
}

uint64_t webm::MasterValueParser<webm::Audio>::ChildParser<webm::IntParser<unsigned long long>,webm::MasterValueParser<webm::Audio>::SingleChildFactory<webm::IntParser<unsigned long long>,unsigned long long>::BuildParser(webm::MasterValueParser<webm::Audio>*,webm::Audio*)::{lambda(webm::IntParser<unsigned long long>*)#1}>::Feed(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
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
  if (*(*(a1 + 32) + 72) == 1)
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

void *webm::MasterValueParser<webm::TrackEntry>::ChildParser<webm::ContentEncodingsParser,webm::MasterValueParser<webm::TrackEntry>::SingleChildFactory<webm::ContentEncodingsParser,webm::ContentEncodings>::BuildParser(webm::MasterValueParser<webm::TrackEntry>*,webm::TrackEntry*)::{lambda(webm::ContentEncodingsParser*)#1}>::~ChildParser(void *a1)
{
  *a1 = &unk_2882AA790;
  a1[5] = &unk_2882A81D0;
  v2 = a1[17];
  if (v2)
  {
    do
    {
      v7 = *v2;
      v8 = v2[3];
      v2[3] = 0;
      if (v8)
      {
        (*(*v8 + 8))(v8);
      }

      operator delete(v2);
      v2 = v7;
    }

    while (v7);
  }

  v3 = a1[15];
  a1[15] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    v5 = a1[2];
    v6 = a1[1];
    if (v5 != v4)
    {
      do
      {
        v9 = *(v5 - 72);
        if (v9)
        {
          *(v5 - 64) = v9;
          operator delete(v9);
        }

        v5 -= 136;
      }

      while (v5 != v4);
      v6 = a1[1];
    }

    a1[2] = v4;
    operator delete(v6);
  }

  return a1;
}

void webm::MasterValueParser<webm::TrackEntry>::ChildParser<webm::ContentEncodingsParser,webm::MasterValueParser<webm::TrackEntry>::SingleChildFactory<webm::ContentEncodingsParser,webm::ContentEncodings>::BuildParser(webm::MasterValueParser<webm::TrackEntry>*,webm::TrackEntry*)::{lambda(webm::ContentEncodingsParser*)#1}>::~ChildParser(void *a1)
{
  *a1 = &unk_2882AA790;
  a1[5] = &unk_2882A81D0;
  v2 = a1[17];
  if (v2)
  {
    do
    {
      v7 = *v2;
      v8 = v2[3];
      v2[3] = 0;
      if (v8)
      {
        (*(*v8 + 8))(v8);
      }

      operator delete(v2);
      v2 = v7;
    }

    while (v7);
  }

  v3 = a1[15];
  a1[15] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    v5 = a1[2];
    v6 = a1[1];
    if (v5 != v4)
    {
      do
      {
        v9 = *(v5 - 72);
        if (v9)
        {
          *(v5 - 64) = v9;
          operator delete(v9);
        }

        v5 -= 136;
      }

      while (v5 != v4);
      v6 = a1[1];
    }

    a1[2] = v4;
    operator delete(v6);
  }

  JUMPOUT(0x2743DA540);
}

__n128 webm::MasterValueParser<webm::TrackEntry>::ChildParser<webm::ContentEncodingsParser,webm::MasterValueParser<webm::TrackEntry>::SingleChildFactory<webm::ContentEncodingsParser,webm::ContentEncodings>::BuildParser(webm::MasterValueParser<webm::TrackEntry>*,webm::TrackEntry*)::{lambda(webm::ContentEncodingsParser*)#1}>::Feed(uint64_t a1, void **a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  if (!webm::MasterValueParser<webm::ContentEncodings>::Feed(a1, a2, a3, a4) && *(*(a1 + 280) + 1096) != 1 && ((*(*a1 + 48))(a1) & 1) == 0)
  {
    v6 = *(a1 + 288);
    v7 = *v6;
    if (*v6)
    {
      v8 = v6[1];
      v9 = *v6;
      if (v8 != v7)
      {
        do
        {
          v10 = *(v8 - 9);
          if (v10)
          {
            *(v8 - 8) = v10;
            operator delete(v10);
          }

          v8 -= 136;
        }

        while (v8 != v7);
        v9 = *v6;
      }

      v6[1] = v7;
      operator delete(v9);
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    result = *(a1 + 8);
    *v6 = result;
    v6[2] = *(a1 + 24);
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(v6 + 24) = 1;
  }

  return result;
}

uint64_t webm::MasterValueParser<webm::ContentEncodings>::Init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1 + 8;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 8);
    if (v8 != v7)
    {
      do
      {
        v10 = *(v8 - 72);
        if (v10)
        {
          *(v8 - 64) = v10;
          operator delete(v10);
        }

        v8 -= 136;
      }

      while (v8 != v7);
      v9 = *v6;
    }

    *(a1 + 16) = v7;
    operator delete(v9);
  }

  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 22) = 0;
  *(v6 + 16) = 0;
  v11 = *(a2 + 4);
  v12 = *(a2 + 8);
  *(a1 + 56) = 0xFFFFFFFFLL;
  *(a1 + 80) = -1;
  *(a1 + 92) = 0;
  *(a1 + 84) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = v11;
  *(a1 + 240) = v12;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  v13 = *(a2 + 8);
  if (v13 == -1)
  {
    *(a1 + 256) = a3;
    goto LABEL_13;
  }

  *(a1 + 256) = v13;
  if (v13)
  {
LABEL_13:
    v14 = 0;
    goto LABEL_14;
  }

  v14 = 8;
LABEL_14:
  *(a1 + 228) = v14;
  return 0;
}

uint64_t webm::MasterValueParser<webm::ContentEncodings>::InitAfterSeek(uint64_t a1, unsigned int **a2, uint64_t a3)
{
  v4 = a1 + 8;
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = a2;
    v7 = a3;
    v8 = *(a1 + 16);
    v9 = *(a1 + 8);
    if (v8 != v5)
    {
      do
      {
        v10 = *(v8 - 72);
        if (v10)
        {
          *(v8 - 64) = v10;
          operator delete(v10);
        }

        v8 -= 136;
      }

      while (v8 != v5);
      v9 = *v4;
    }

    *(a1 + 16) = v5;
    operator delete(v9);
    a3 = v7;
    a2 = v6;
  }

  *(v4 + 22) = 0;
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *(a1 + 37) = 1;

  return webm::MasterParser::InitAfterSeek(a1 + 40, a2, a3);
}

uint64_t webm::MasterValueParser<webm::ContentEncodings>::GetCachedMetadata(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 272) != 1)
  {
    return 0;
  }

  v2 = *(a1 + 96);
  *(a2 + 16) = *(a1 + 112);
  *a2 = v2;
  return *(a1 + 272) & 1;
}

uint64_t webm::MasterValueParser<webm::ContentEncodings>::Feed(uint64_t a1, void **a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  if ((*(a1 + 36) & 1) == 0)
  {
    v10 = &unk_2882A8218;
    if (*(a1 + 32) == 1)
    {
      a2 = &v10;
    }

    result = webm::MasterParser::Feed(a1 + 40, a2, a3, a4);
    if (result == 0x80000000)
    {
      v9 = 0;
      a2 = &v10;
      result = webm::MasterParser::Feed(a1 + 40, &v10, a3, &v9);
      *a4 += v9;
    }

    if (result)
    {
      return result;
    }

    *(a1 + 36) = 1;
  }

  if ((*(a1 + 37) & 1) == 0)
  {
    result = (*(*a1 + 56))(a1, a2, a1 + 32);
    if (result)
    {
      return result;
    }

    *(a1 + 37) = 1;
  }

  if (*(a1 + 32) == 1)
  {
    return 0;
  }

  else
  {
    return (*(*a1 + 64))(a1, a2);
  }
}

void *webm::MasterValueParser<webm::ContentEncodings>::~MasterValueParser(void *a1)
{
  *a1 = &unk_2882AA790;
  a1[5] = &unk_2882A81D0;
  v2 = a1[17];
  if (v2)
  {
    do
    {
      v7 = *v2;
      v8 = v2[3];
      v2[3] = 0;
      if (v8)
      {
        (*(*v8 + 8))(v8);
      }

      operator delete(v2);
      v2 = v7;
    }

    while (v7);
  }

  v3 = a1[15];
  a1[15] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    v5 = a1[2];
    v6 = a1[1];
    if (v5 != v4)
    {
      do
      {
        v9 = *(v5 - 72);
        if (v9)
        {
          *(v5 - 64) = v9;
          operator delete(v9);
        }

        v5 -= 136;
      }

      while (v5 != v4);
      v6 = a1[1];
    }

    a1[2] = v4;
    operator delete(v6);
  }

  return a1;
}

void webm::MasterValueParser<webm::ContentEncodings>::~MasterValueParser(void *a1)
{
  *a1 = &unk_2882AA790;
  a1[5] = &unk_2882A81D0;
  v2 = a1[17];
  if (v2)
  {
    do
    {
      v7 = *v2;
      v8 = v2[3];
      v2[3] = 0;
      if (v8)
      {
        (*(*v8 + 8))(v8);
      }

      operator delete(v2);
      v2 = v7;
    }

    while (v7);
  }

  v3 = a1[15];
  a1[15] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    v5 = a1[2];
    v6 = a1[1];
    if (v5 != v4)
    {
      do
      {
        v9 = *(v5 - 72);
        if (v9)
        {
          *(v5 - 64) = v9;
          operator delete(v9);
        }

        v5 -= 136;
      }

      while (v5 != v4);
      v6 = a1[1];
    }

    a1[2] = v4;
    operator delete(v6);
  }

  JUMPOUT(0x2743DA540);
}

void *webm::MasterValueParser<webm::ContentEncodings>::ChildParser<webm::ContentEncodingParser,webm::MasterValueParser<webm::ContentEncodings>::RepeatedChildFactory<webm::ContentEncodingParser,webm::ContentEncoding>::BuildParser(webm::MasterValueParser<webm::ContentEncodings>*,webm::ContentEncodings*)::{lambda(webm::ContentEncodingParser*)#1}>::~ChildParser(void *a1)
{
  *a1 = &unk_2882AA850;
  a1[18] = &unk_2882A81D0;
  v2 = a1[30];
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

  v3 = a1[28];
  a1[28] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = a1[9];
  if (v4)
  {
    a1[10] = v4;
    operator delete(v4);
  }

  return a1;
}

void webm::MasterValueParser<webm::ContentEncodings>::ChildParser<webm::ContentEncodingParser,webm::MasterValueParser<webm::ContentEncodings>::RepeatedChildFactory<webm::ContentEncodingParser,webm::ContentEncoding>::BuildParser(webm::MasterValueParser<webm::ContentEncodings>*,webm::ContentEncodings*)::{lambda(webm::ContentEncodingParser*)#1}>::~ChildParser(void *a1)
{
  *a1 = &unk_2882AA850;
  a1[18] = &unk_2882A81D0;
  v2 = a1[30];
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

  v3 = a1[28];
  a1[28] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = a1[9];
  if (v4)
  {
    a1[10] = v4;
    operator delete(v4);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webm::MasterValueParser<webm::ContentEncodings>::ChildParser<webm::ContentEncodingParser,webm::MasterValueParser<webm::ContentEncodings>::RepeatedChildFactory<webm::ContentEncodingParser,webm::ContentEncoding>::BuildParser(webm::MasterValueParser<webm::ContentEncodings>*,webm::ContentEncodings*)::{lambda(webm::ContentEncodingParser*)#1}>::Feed(uint64_t a1, void **a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  result = webm::MasterValueParser<webm::ContentEncoding>::Feed(a1, a2, a3, a4);
  if (!result && *(*(a1 + 384) + 32) != 1)
  {
    v6 = result;
    v7 = (*(*a1 + 48))(a1);
    result = v6;
    if ((v7 & 1) == 0)
    {
      v8 = *(a1 + 392);
      v10 = *v8;
      v9 = v8[1];
      if (v9 - *v8 != 136)
      {
        goto LABEL_8;
      }

      if (v10 == v9)
      {
        goto LABEL_24;
      }

      if ((*(v10 + 128) & 1) == 0)
      {
        do
        {
          v15 = *(v9 - 72);
          if (v15)
          {
            *(v9 - 64) = v15;
            operator delete(v15);
            result = v6;
          }

          v9 -= 136;
        }

        while (v9 != v10);
        v8[1] = v10;
        v8 = *(a1 + 392);
        v9 = v8[1];
        v11 = v8[2];
        if (v9 < v11)
        {
LABEL_9:
          if (v9)
          {
            v12 = *(a1 + 8);
            v13 = *(a1 + 24);
            *(v9 + 25) = *(a1 + 33);
            *v9 = v12;
            *(v9 + 16) = v13;
            *(v9 + 48) = *(a1 + 56);
            *(v9 + 72) = 0;
            *(v9 + 80) = 0;
            *(v9 + 64) = 0;
            *(v9 + 64) = *(a1 + 72);
            *(v9 + 80) = *(a1 + 88);
            *(a1 + 72) = 0;
            *(a1 + 80) = 0;
            *(a1 + 88) = 0;
            *(v9 + 88) = *(a1 + 96);
            v14 = *(a1 + 104);
            *(v9 + 112) = *(a1 + 120);
            *(v9 + 96) = v14;
            *(v9 + 120) = *(a1 + 128);
            *(v9 + 128) = 1;
            v8[1] = v9 + 136;
            return result;
          }

          goto LABEL_24;
        }
      }

      else
      {
LABEL_8:
        v11 = v8[2];
        if (v9 < v11)
        {
          goto LABEL_9;
        }
      }

      v16 = v9 - *v8;
      v17 = 0xF0F0F0F0F0F0F0F1 * (v16 >> 3) + 1;
      if (v17 > 0x1E1E1E1E1E1E1E1)
      {
        goto LABEL_25;
      }

      v18 = 0xF0F0F0F0F0F0F0F1 * ((v11 - *v8) >> 3);
      v19 = 2 * v18;
      if (2 * v18 <= v17)
      {
        v19 = 0xF0F0F0F0F0F0F0F1 * (v16 >> 3) + 1;
      }

      if (v18 >= 0xF0F0F0F0F0F0F0)
      {
        v20 = 0x1E1E1E1E1E1E1E1;
      }

      else
      {
        v20 = v19;
      }

      if (v20)
      {
        if (v20 <= 0x1E1E1E1E1E1E1E1)
        {
          operator new();
        }

        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

LABEL_24:
      __break(1u);
LABEL_25:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }
  }

  return result;
}

uint64_t webm::MasterValueParser<webm::ContentEncoding>::Init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a1 + 72;
  v6 = *(a1 + 72);
  *(v7 - 64) = 0;
  *(v7 - 56) = 0;
  *(v7 - 48) = 1;
  *(v7 - 40) = 0;
  *(v7 - 32) = 0;
  *(v7 - 24) = 0;
  *(v7 - 16) = 0;
  *(v7 - 8) = 0;
  if (v6)
  {
    *(a1 + 80) = v6;
    operator delete(v6);
  }

  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 24) = 0;
  *(v7 + 16) = 0;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 140) = 0;
  v8 = *(a2 + 4);
  v9 = *(a2 + 8);
  *(a1 + 160) = 0xFFFFFFFFLL;
  *(a1 + 184) = -1;
  *(a1 + 188) = 0;
  *(a1 + 196) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = v8;
  *(a1 + 344) = v9;
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  v10 = *(a2 + 8);
  if (v10 == -1)
  {
    *(a1 + 360) = a3;
  }

  else
  {
    *(a1 + 360) = v10;
    if (!v10)
    {
      *(a1 + 332) = 8;
      return 0;
    }
  }

  *(a1 + 332) = 0;
  return 0;
}

uint64_t webm::MasterValueParser<webm::ContentEncoding>::InitAfterSeek(uint64_t a1, unsigned int **a2, uint64_t a3)
{
  v5 = a1 + 72;
  v4 = *(a1 + 72);
  *(v5 - 64) = 0;
  *(v5 - 56) = 0;
  *(v5 - 48) = 1;
  *(v5 - 40) = 0;
  *(v5 - 32) = 0;
  *(v5 - 24) = 0;
  *(v5 - 16) = 0;
  *(v5 - 8) = 0;
  if (v4)
  {
    *(a1 + 80) = v4;
    v6 = a3;
    v7 = a2;
    operator delete(v4);
    a2 = v7;
    a3 = v6;
  }

  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 24) = 0;
  *(v5 + 16) = 0;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 140) = 256;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;

  return webm::MasterParser::InitAfterSeek(a1 + 144, a2, a3);
}

uint64_t webm::MasterValueParser<webm::ContentEncoding>::GetCachedMetadata(uint64_t a1, uint64_t a2)
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

uint64_t webm::MasterValueParser<webm::ContentEncoding>::Feed(uint64_t a1, void **a2, uint64_t a3, void *a4)
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

void *webm::MasterValueParser<webm::ContentEncoding>::~MasterValueParser(void *a1)
{
  *a1 = &unk_2882AA850;
  a1[18] = &unk_2882A81D0;
  v2 = a1[30];
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

  v3 = a1[28];
  a1[28] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = a1[9];
  if (v4)
  {
    a1[10] = v4;
    operator delete(v4);
  }

  return a1;
}

void webm::MasterValueParser<webm::ContentEncoding>::~MasterValueParser(void *a1)
{
  *a1 = &unk_2882AA850;
  a1[18] = &unk_2882A81D0;
  v2 = a1[30];
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

  v3 = a1[28];
  a1[28] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = a1[9];
  if (v4)
  {
    a1[10] = v4;
    operator delete(v4);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webm::MasterValueParser<webm::ContentEncoding>::ChildParser<webm::IntParser<unsigned long long>,webm::MasterValueParser<webm::ContentEncoding>::SingleChildFactory<webm::IntParser<unsigned long long>,unsigned long long>::BuildParser(webm::MasterValueParser<webm::ContentEncoding>*,webm::ContentEncoding*)::{lambda(webm::IntParser<unsigned long long>*)#1}>::Feed(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
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

uint64_t webm::MasterValueParser<webm::ContentEncoding>::ChildParser<webm::IntParser<webm::ContentEncodingType>,webm::MasterValueParser<webm::ContentEncoding>::SingleChildFactory<webm::IntParser<webm::ContentEncodingType>,webm::ContentEncodingType>::BuildParser(webm::MasterValueParser<webm::ContentEncoding>*,webm::ContentEncoding*)::{lambda(webm::IntParser<webm::ContentEncodingType>*)#1}>::Feed(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
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
      v13 = 0;
      v14 = 0;
      result = (*(*a3 + 16))(a3, 1, &v13, &v14);
      if (result)
      {
        break;
      }

      v11 = *a4 + 1;
      *a4 = v11;
      *(a1 + 8) = v13 | (*(a1 + 8) << 8);
      if (--v10 <= 1)
      {
        v5 = *(a1 + 24) - v11;
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
  v12 = *(a1 + 40);
  *v12 = *(a1 + 8);
  *(v12 + 8) = 1;
  return result;
}

uint64_t webm::IntParser<webm::ContentEncodingType>::Init(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 > 8)
  {
    return 4294966270;
  }

  *(a1 + 24) = v2;
  *(a1 + 28) = v2;
  if (v2)
  {
    *(a1 + 8) = 0;
  }

  else
  {
    *(a1 + 8) = *(a1 + 16);
  }

  return 0;
}

void *webm::MasterValueParser<webm::ContentEncoding>::ChildParser<webm::ContentEncryptionParser,webm::MasterValueParser<webm::ContentEncoding>::SingleChildFactory<webm::ContentEncryptionParser,webm::ContentEncryption>::BuildParser(webm::MasterValueParser<webm::ContentEncoding>*,webm::ContentEncoding*)::{lambda(webm::ContentEncryptionParser*)#1}>::~ChildParser(void *a1)
{
  *a1 = &unk_2882AA9A0;
  a1[11] = &unk_2882A81D0;
  v2 = a1[23];
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

  v3 = a1[21];
  a1[21] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    a1[4] = v4;
    operator delete(v4);
  }

  return a1;
}

void webm::MasterValueParser<webm::ContentEncoding>::ChildParser<webm::ContentEncryptionParser,webm::MasterValueParser<webm::ContentEncoding>::SingleChildFactory<webm::ContentEncryptionParser,webm::ContentEncryption>::BuildParser(webm::MasterValueParser<webm::ContentEncoding>*,webm::ContentEncoding*)::{lambda(webm::ContentEncryptionParser*)#1}>::~ChildParser(void *a1)
{
  *a1 = &unk_2882AA9A0;
  a1[11] = &unk_2882A81D0;
  v2 = a1[23];
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

  v3 = a1[21];
  a1[21] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    a1[4] = v4;
    operator delete(v4);
  }

  JUMPOUT(0x2743DA540);
}

__n128 webm::MasterValueParser<webm::ContentEncoding>::ChildParser<webm::ContentEncryptionParser,webm::MasterValueParser<webm::ContentEncoding>::SingleChildFactory<webm::ContentEncryptionParser,webm::ContentEncryption>::BuildParser(webm::MasterValueParser<webm::ContentEncoding>*,webm::ContentEncoding*)::{lambda(webm::ContentEncryptionParser*)#1}>::Feed(uint64_t a1, void **a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  if (!webm::MasterValueParser<webm::ContentEncryption>::Feed(a1, a2, a3, a4) && *(*(a1 + 328) + 136) != 1 && ((*(*a1 + 48))(a1) & 1) == 0)
  {
    v6 = *(a1 + 336);
    v7 = *(a1 + 8);
    v6->n128_u8[8] = *(a1 + 16);
    v6->n128_u64[0] = v7;
    v8 = v6[1].n128_u64[0];
    if (v8)
    {
      v6[1].n128_u64[1] = v8;
      operator delete(v8);
      v6[1].n128_u64[0] = 0;
      v6[1].n128_u64[1] = 0;
      v6[2].n128_u64[0] = 0;
    }

    v6[1] = *(a1 + 24);
    v6[2].n128_u64[0] = *(a1 + 40);
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    v6[2].n128_u8[8] = *(a1 + 48);
    result = *(a1 + 56);
    v6[4].n128_u8[0] = *(a1 + 72);
    v6[3] = result;
    v6[4].n128_u8[8] = 1;
  }

  return result;
}

uint64_t webm::MasterValueParser<webm::ContentEncryption>::Init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a1 + 24;
  v6 = *(a1 + 24);
  *(v7 - 16) = 0;
  *(v7 - 8) = 0;
  if (v6)
  {
    *(a1 + 32) = v6;
    operator delete(v6);
  }

  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 24) = 0;
  *(v7 + 16) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 84) = 0;
  v8 = *(a2 + 4);
  v9 = *(a2 + 8);
  *(a1 + 104) = 0xFFFFFFFFLL;
  *(a1 + 128) = -1;
  *(a1 + 132) = 0;
  *(a1 + 140) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = v8;
  *(a1 + 288) = v9;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  v10 = *(a2 + 8);
  if (v10 == -1)
  {
    *(a1 + 304) = a3;
  }

  else
  {
    *(a1 + 304) = v10;
    if (!v10)
    {
      *(a1 + 276) = 8;
      return 0;
    }
  }

  *(a1 + 276) = 0;
  return 0;
}

uint64_t webm::MasterValueParser<webm::ContentEncryption>::InitAfterSeek(uint64_t a1, unsigned int **a2, uint64_t a3)
{
  v5 = a1 + 24;
  v4 = *(a1 + 24);
  *(v5 - 16) = 0;
  *(v5 - 8) = 0;
  if (v4)
  {
    *(a1 + 32) = v4;
    v6 = a3;
    v7 = a2;
    operator delete(v4);
    a2 = v7;
    a3 = v6;
  }

  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 24) = 0;
  *(v5 + 16) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 84) = 256;

  return webm::MasterParser::InitAfterSeek(a1 + 88, a2, a3);
}

uint64_t webm::MasterValueParser<webm::ContentEncryption>::GetCachedMetadata(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 320) != 1)
  {
    return 0;
  }

  v2 = *(a1 + 144);
  *(a2 + 16) = *(a1 + 160);
  *a2 = v2;
  return *(a1 + 320) & 1;
}

uint64_t webm::MasterValueParser<webm::ContentEncryption>::Feed(uint64_t a1, void **a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  if ((*(a1 + 84) & 1) == 0)
  {
    v10 = &unk_2882A8218;
    if (*(a1 + 80) == 1)
    {
      a2 = &v10;
    }

    result = webm::MasterParser::Feed(a1 + 88, a2, a3, a4);
    if (result == 0x80000000)
    {
      v9 = 0;
      a2 = &v10;
      result = webm::MasterParser::Feed(a1 + 88, &v10, a3, &v9);
      *a4 += v9;
    }

    if (result)
    {
      return result;
    }

    *(a1 + 84) = 1;
  }

  if ((*(a1 + 85) & 1) == 0)
  {
    result = (*(*a1 + 56))(a1, a2, a1 + 80);
    if (result)
    {
      return result;
    }

    *(a1 + 85) = 1;
  }

  if (*(a1 + 80) == 1)
  {
    return 0;
  }

  else
  {
    return (*(*a1 + 64))(a1, a2);
  }
}

void *webm::MasterValueParser<webm::ContentEncryption>::~MasterValueParser(void *a1)
{
  *a1 = &unk_2882AA9A0;
  a1[11] = &unk_2882A81D0;
  v2 = a1[23];
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

  v3 = a1[21];
  a1[21] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    a1[4] = v4;
    operator delete(v4);
  }

  return a1;
}

void webm::MasterValueParser<webm::ContentEncryption>::~MasterValueParser(void *a1)
{
  *a1 = &unk_2882AA9A0;
  a1[11] = &unk_2882A81D0;
  v2 = a1[23];
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

  v3 = a1[21];
  a1[21] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    a1[4] = v4;
    operator delete(v4);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webm::MasterValueParser<webm::ContentEncryption>::ChildParser<webm::IntParser<webm::ContentEncAlgo>,webm::MasterValueParser<webm::ContentEncryption>::SingleChildFactory<webm::IntParser<webm::ContentEncAlgo>,webm::ContentEncAlgo>::BuildParser(webm::MasterValueParser<webm::ContentEncryption>*,webm::ContentEncryption*)::{lambda(webm::IntParser<webm::ContentEncAlgo>*)#1}>::Feed(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
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
      v13 = 0;
      v14 = 0;
      result = (*(*a3 + 16))(a3, 1, &v13, &v14);
      if (result)
      {
        break;
      }

      v11 = *a4 + 1;
      *a4 = v11;
      *(a1 + 8) = v13 | (*(a1 + 8) << 8);
      if (--v10 <= 1)
      {
        v5 = *(a1 + 24) - v11;
        goto LABEL_8;
      }
    }

    v6 = *a4;
    v5 = *(a1 + 24);
    goto LABEL_14;
  }

LABEL_8:
  *(a1 + 24) = v5;
  if (*(*(a1 + 32) + 80) == 1)
  {
    return 0;
  }

  if ((*(*a1 + 48))(a1))
  {
    return 0;
  }

  result = 0;
  v12 = *(a1 + 40);
  *v12 = *(a1 + 8);
  *(v12 + 8) = 1;
  return result;
}

uint64_t webm::IntParser<webm::ContentEncAlgo>::Init(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 > 8)
  {
    return 4294966270;
  }

  *(a1 + 24) = v2;
  *(a1 + 28) = v2;
  if (v2)
  {
    *(a1 + 8) = 0;
  }

  else
  {
    *(a1 + 8) = *(a1 + 16);
  }

  return 0;
}

void *webm::MasterValueParser<webm::ContentEncryption>::ChildParser<webm::ByteParser<std::vector<unsigned char>>,webm::MasterValueParser<webm::ContentEncryption>::SingleChildFactory<webm::ByteParser<std::vector<unsigned char>>,std::vector<unsigned char>>::BuildParser(webm::MasterValueParser<webm::ContentEncryption>*,webm::ContentEncryption*)::{lambda(webm::ByteParser<std::vector<unsigned char>>*)#1}>::~ChildParser(void *a1)
{
  *a1 = &unk_2882A8DC8;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

void webm::MasterValueParser<webm::ContentEncryption>::ChildParser<webm::ByteParser<std::vector<unsigned char>>,webm::MasterValueParser<webm::ContentEncryption>::SingleChildFactory<webm::ByteParser<std::vector<unsigned char>>,std::vector<unsigned char>>::BuildParser(webm::MasterValueParser<webm::ContentEncryption>*,webm::ContentEncryption*)::{lambda(webm::ByteParser<std::vector<unsigned char>>*)#1}>::~ChildParser(void *a1)
{
  *a1 = &unk_2882A8DC8;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  JUMPOUT(0x2743DA540);
}

void *webm::MasterValueParser<webm::ContentEncryption>::ChildParser<webm::ByteParser<std::vector<unsigned char>>,webm::MasterValueParser<webm::ContentEncryption>::SingleChildFactory<webm::ByteParser<std::vector<unsigned char>>,std::vector<unsigned char>>::BuildParser(webm::MasterValueParser<webm::ContentEncryption>*,webm::ContentEncryption*)::{lambda(webm::ByteParser<std::vector<unsigned char>>*)#1}>::Feed(void *result, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = result;
  *a4 = 0;
  v5 = result + 1;
  v6 = result[7];
  if (v6 != result[2] - result[1])
  {
    do
    {
      v14 = 0;
      v9 = v4[1];
      v10 = v4[2];
      if (v9 == v10)
      {
        __break(1u);
        return result;
      }

      result = (*(*a3 + 16))(a3, v10 - (v9 + v6), v9 + v6, &v14);
      v11 = v14;
      *a4 += v14;
      v6 = v4[7] + v11;
      v4[7] = v6;
    }

    while (result == -1);
    if (result)
    {
      return result;
    }
  }

  if (*(v4[8] + 80) == 1)
  {
    return 0;
  }

  if ((*(*v4 + 48))(v4))
  {
    return 0;
  }

  v12 = v4[9];
  v13 = *v12;
  if (*v12)
  {
    *(v12 + 8) = v13;
    operator delete(v13);
    *v12 = 0;
    *(v12 + 8) = 0;
    *(v12 + 16) = 0;
  }

  result = 0;
  *v12 = *(v4 + 1);
  *(v12 + 16) = v4[3];
  *v5 = 0;
  v5[1] = 0;
  v5[2] = 0;
  *(v12 + 24) = 1;
  return result;
}

void *webm::MasterValueParser<webm::ContentEncryption>::ChildParser<webm::ContentEncAesSettingsParser,webm::MasterValueParser<webm::ContentEncryption>::SingleChildFactory<webm::ContentEncAesSettingsParser,webm::ContentEncAesSettings>::BuildParser(webm::MasterValueParser<webm::ContentEncryption>*,webm::ContentEncryption*)::{lambda(webm::ContentEncAesSettingsParser*)#1}>::~ChildParser(void *a1)
{
  *a1 = &unk_2882AAAF0;
  a1[4] = &unk_2882A81D0;
  v2 = a1[16];
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

  v3 = a1[14];
  a1[14] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

void webm::MasterValueParser<webm::ContentEncryption>::ChildParser<webm::ContentEncAesSettingsParser,webm::MasterValueParser<webm::ContentEncryption>::SingleChildFactory<webm::ContentEncAesSettingsParser,webm::ContentEncAesSettings>::BuildParser(webm::MasterValueParser<webm::ContentEncryption>*,webm::ContentEncryption*)::{lambda(webm::ContentEncAesSettingsParser*)#1}>::~ChildParser(void *a1)
{
  *a1 = &unk_2882AAAF0;
  a1[4] = &unk_2882A81D0;
  v2 = a1[16];
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

  v3 = a1[14];
  a1[14] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  JUMPOUT(0x2743DA540);
}

__n128 webm::MasterValueParser<webm::ContentEncryption>::ChildParser<webm::ContentEncAesSettingsParser,webm::MasterValueParser<webm::ContentEncryption>::SingleChildFactory<webm::ContentEncAesSettingsParser,webm::ContentEncAesSettings>::BuildParser(webm::MasterValueParser<webm::ContentEncryption>*,webm::ContentEncryption*)::{lambda(webm::ContentEncAesSettingsParser*)#1}>::Feed(uint64_t a1, void **a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  if (!webm::MasterValueParser<webm::ContentEncAesSettings>::Feed(a1, a2, a3, a4) && *(*(a1 + 272) + 80) != 1 && ((*(*a1 + 48))(a1) & 1) == 0)
  {
    v6 = *(a1 + 280);
    result = *(a1 + 8);
    *v6 = result;
    v6[1].n128_u8[0] = 1;
  }

  return result;
}

uint64_t webm::MasterValueParser<webm::ContentEncAesSettings>::Init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 28) = 0;
  v3 = *(a2 + 4);
  v4 = *(a2 + 8);
  *(a1 + 48) = 0xFFFFFFFFLL;
  *(a1 + 72) = -1;
  *(a1 + 84) = 0;
  *(a1 + 76) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = v3;
  *(a1 + 232) = v4;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  v5 = *(a2 + 8);
  if (v5 == -1)
  {
    *(a1 + 248) = a3;
  }

  else
  {
    *(a1 + 248) = v5;
    if (!v5)
    {
      *(a1 + 220) = 8;
      return 0;
    }
  }

  *(a1 + 220) = 0;
  return 0;
}

uint64_t webm::MasterValueParser<webm::ContentEncAesSettings>::InitAfterSeek(uint64_t a1, unsigned int **a2, uint64_t a3)
{
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 28) = 256;
  return webm::MasterParser::InitAfterSeek(a1 + 32, a2, a3);
}

uint64_t webm::MasterValueParser<webm::ContentEncAesSettings>::GetCachedMetadata(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 264) != 1)
  {
    return 0;
  }

  v2 = *(a1 + 88);
  *(a2 + 16) = *(a1 + 104);
  *a2 = v2;
  return *(a1 + 264) & 1;
}

uint64_t webm::MasterValueParser<webm::ContentEncAesSettings>::Feed(uint64_t a1, void **a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  if ((*(a1 + 28) & 1) == 0)
  {
    v10 = &unk_2882A8218;
    if (*(a1 + 24) == 1)
    {
      a2 = &v10;
    }

    result = webm::MasterParser::Feed(a1 + 32, a2, a3, a4);
    if (result == 0x80000000)
    {
      v9 = 0;
      a2 = &v10;
      result = webm::MasterParser::Feed(a1 + 32, &v10, a3, &v9);
      *a4 += v9;
    }

    if (result)
    {
      return result;
    }

    *(a1 + 28) = 1;
  }

  if ((*(a1 + 29) & 1) == 0)
  {
    result = (*(*a1 + 56))(a1, a2, a1 + 24);
    if (result)
    {
      return result;
    }

    *(a1 + 29) = 1;
  }

  if (*(a1 + 24) == 1)
  {
    return 0;
  }

  else
  {
    return (*(*a1 + 64))(a1, a2);
  }
}

void *webm::MasterValueParser<webm::ContentEncAesSettings>::~MasterValueParser(void *a1)
{
  *a1 = &unk_2882AAAF0;
  a1[4] = &unk_2882A81D0;
  v2 = a1[16];
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

  v3 = a1[14];
  a1[14] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

void webm::MasterValueParser<webm::ContentEncAesSettings>::~MasterValueParser(void *a1)
{
  *a1 = &unk_2882AAAF0;
  a1[4] = &unk_2882A81D0;
  v2 = a1[16];
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

  v3 = a1[14];
  a1[14] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webm::MasterValueParser<webm::ContentEncAesSettings>::ChildParser<webm::IntParser<webm::AesSettingsCipherMode>,webm::MasterValueParser<webm::ContentEncAesSettings>::SingleChildFactory<webm::IntParser<webm::AesSettingsCipherMode>,webm::AesSettingsCipherMode>::BuildParser(webm::MasterValueParser<webm::ContentEncAesSettings>*,webm::ContentEncAesSettings*)::{lambda(webm::IntParser<webm::AesSettingsCipherMode>*)#1}>::Feed(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
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
      v13 = 0;
      v14 = 0;
      result = (*(*a3 + 16))(a3, 1, &v13, &v14);
      if (result)
      {
        break;
      }

      v11 = *a4 + 1;
      *a4 = v11;
      *(a1 + 8) = v13 | (*(a1 + 8) << 8);
      if (--v10 <= 1)
      {
        v5 = *(a1 + 24) - v11;
        goto LABEL_8;
      }
    }

    v6 = *a4;
    v5 = *(a1 + 24);
    goto LABEL_14;
  }

LABEL_8:
  *(a1 + 24) = v5;
  if (*(*(a1 + 32) + 24) == 1)
  {
    return 0;
  }

  if ((*(*a1 + 48))(a1))
  {
    return 0;
  }

  result = 0;
  v12 = *(a1 + 40);
  *v12 = *(a1 + 8);
  *(v12 + 8) = 1;
  return result;
}

uint64_t webm::IntParser<webm::AesSettingsCipherMode>::Init(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 > 8)
  {
    return 4294966270;
  }

  *(a1 + 24) = v2;
  *(a1 + 28) = v2;
  if (v2)
  {
    *(a1 + 8) = 0;
  }

  else
  {
    *(a1 + 8) = *(a1 + 16);
  }

  return 0;
}

void webm::TrackEntry::~TrackEntry(webm::TrackEntry *this)
{
  v2 = *(this + 132);
  if (v2)
  {
    v3 = *(this + 133);
    v4 = *(this + 132);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 72);
        if (v5)
        {
          *(v3 - 64) = v5;
          operator delete(v5);
        }

        v3 -= 136;
      }

      while (v3 != v2);
      v4 = *(this + 132);
    }

    *(this + 133) = v2;
    operator delete(v4);
  }

  v6 = *(this + 111);
  if (v6)
  {
    *(this + 112) = v6;
    operator delete(v6);
  }

  if (*(this + 223) < 0)
  {
    operator delete(*(this + 25));
  }

  v7 = *(this + 21);
  if (v7)
  {
    *(this + 22) = v7;
    operator delete(v7);
  }

  if (*(this + 159) < 0)
  {
    operator delete(*(this + 17));
    if ((*(this + 127) & 0x80000000) == 0)
    {
LABEL_17:
      if ((*(this + 95) & 0x80000000) == 0)
      {
        return;
      }

LABEL_21:
      operator delete(*(this + 9));
      return;
    }
  }

  else if ((*(this + 127) & 0x80000000) == 0)
  {
    goto LABEL_17;
  }

  operator delete(*(this + 13));
  if (*(this + 95) < 0)
  {
    goto LABEL_21;
  }
}

uint64_t webm::TrackEntry::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 16) = v4;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v7 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 72) = v7;
  *(a2 + 95) = 0;
  *(a2 + 72) = 0;
  *(a1 + 96) = *(a2 + 96);
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  v8 = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 104) = v8;
  *(a2 + 127) = 0;
  *(a2 + 104) = 0;
  *(a1 + 128) = *(a2 + 128);
  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  v9 = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = v9;
  *(a2 + 159) = 0;
  *(a2 + 136) = 0;
  v10 = *(a1 + 168);
  *(a1 + 160) = *(a2 + 160);
  if (v10)
  {
    *(a1 + 176) = v10;
    operator delete(v10);
    *(a1 + 168) = 0;
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
  }

  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  *(a2 + 168) = 0;
  *(a1 + 192) = *(a2 + 192);
  if (*(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  v11 = *(a2 + 200);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 200) = v11;
  *(a2 + 223) = 0;
  *(a2 + 200) = 0;
  *(a1 + 224) = *(a2 + 224);
  v12 = *(a2 + 232);
  *(a1 + 241) = *(a2 + 241);
  *(a1 + 232) = v12;
  memcpy((a1 + 264), (a2 + 264), 0x259uLL);
  v13 = *(a2 + 880);
  *(a1 + 872) = *(a2 + 872);
  *(a1 + 880) = v13;
  v14 = *(a1 + 888);
  if (v14)
  {
    *(a1 + 896) = v14;
    operator delete(v14);
    *(a1 + 888) = 0;
    *(a1 + 896) = 0;
    *(a1 + 904) = 0;
  }

  *(a1 + 888) = *(a2 + 888);
  *(a1 + 896) = *(a2 + 896);
  *(a2 + 904) = 0;
  v15 = 0uLL;
  *(a2 + 888) = 0u;
  *(a1 + 912) = *(a2 + 912);
  v16 = *(a2 + 920);
  v17 = *(a2 + 936);
  *(a1 + 945) = *(a2 + 945);
  *(a1 + 920) = v16;
  *(a1 + 936) = v17;
  *(a1 + 968) = *(a2 + 968);
  *(a1 + 976) = *(a2 + 976);
  *(a1 + 984) = *(a2 + 984);
  v18 = *(a2 + 1000);
  v19 = *(a2 + 1016);
  v20 = *(a2 + 1032);
  *(a1 + 1048) = *(a2 + 1048);
  *(a1 + 1016) = v19;
  *(a1 + 1032) = v20;
  *(a1 + 1000) = v18;
  v21 = *(a1 + 1056);
  if (v21)
  {
    v22 = (a1 + 1056);
    v23 = *(a1 + 1064);
    v24 = *(a1 + 1056);
    if (v23 != v21)
    {
      do
      {
        v25 = *(v23 - 72);
        if (v25)
        {
          *(v23 - 64) = v25;
          operator delete(v25);
        }

        v23 -= 136;
      }

      while (v23 != v21);
      v24 = *v22;
    }

    *(a1 + 1064) = v21;
    operator delete(v24);
    *v22 = 0;
    *(a1 + 1064) = 0;
    *(a1 + 1072) = 0;
    v15 = 0uLL;
  }

  *(a1 + 1056) = *(a2 + 1056);
  *(a1 + 1072) = *(a2 + 1072);
  *(a2 + 1072) = 0;
  *(a2 + 1056) = v15;
  *(a1 + 1080) = *(a2 + 1080);
  return a1;
}

uint64_t webm::SizeParser::Feed(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  LODWORD(result) = webm::VarIntParser::Feed(a1 + 8, a2, a3, a4);
  if (result == -1030)
  {
    return 4294966270;
  }

  else
  {
    return result;
  }
}

uint64_t webm::SkipParser::Init(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == -1)
  {
    return 4294966270;
  }

  result = 0;
  *(a1 + 8) = v2;
  return result;
}

uint64_t webm::SkipParser::Feed(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  if (!*(a1 + 8))
  {
    return 0;
  }

  do
  {
    v9 = 0;
    result = (*(*a3 + 24))(a3);
    v8 = v9;
    *a4 += v9;
    *(a1 + 8) -= v8;
  }

  while (result == -1);
  return result;
}

uint64_t webm::UnknownParser::Init(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 1) == -1)
  {
    return 4294966269;
  }

  result = 0;
  v4 = *a2;
  *(a1 + 24) = *(a2 + 2);
  *(a1 + 8) = v4;
  *(a1 + 32) = *(a2 + 1);
  return result;
}

uint64_t webm::UnknownParser::Feed(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = (a1 + 32);
  v6 = *(a1 + 32);
  result = (*(*a2 + 24))(a2, a1 + 8, a3, a1 + 32);
  *a4 = v6 - *v5;
  return result;
}

uint64_t webm::VarIntParser::Feed(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  v7 = *(a1 + 8);
  if (v7 == -1)
  {
    v14 = 0;
    v15 = 0;
    result = (*(*a3 + 16))(a3, 1, &v14, &v15);
    if (result)
    {
      return result;
    }

    ++*a4;
    v10 = v14;
    if (!v14)
    {
      return 4294966266;
    }

    v11 = 0;
    do
    {
      v12 = v11++;
    }

    while (((v14 << v12) & 0x80) == 0);
    v7 = v12;
    *(a1 + 8) = v12;
    *(a1 + 12) = v12;
    *(a1 + 16) = v10;
    if (v12 > 8u)
    {
      goto LABEL_3;
    }
  }

  else if (v7 > 8)
  {
LABEL_3:
    v8 = 0;
    result = 4294966270;
    goto LABEL_16;
  }

  if (!v7)
  {
    v8 = 0;
    goto LABEL_15;
  }

  v14 = 0;
  v15 = 0;
  result = (*(*a3 + 16))(a3, 1, &v14, &v15);
  if (result)
  {
    v13 = 0;
LABEL_12:
    v8 = v13;
    goto LABEL_16;
  }

  v8 = v7;
  *(a1 + 16) = v14 | (*(a1 + 16) << 8);
  if (v7 == 1)
  {
    goto LABEL_15;
  }

  v14 = 0;
  v15 = 0;
  v13 = 1;
  result = (*(*a3 + 16))(a3, 1, &v14, &v15);
  if (result)
  {
    goto LABEL_12;
  }

  *(a1 + 16) = v14 | (*(a1 + 16) << 8);
  if (v7 == 2)
  {
    goto LABEL_15;
  }

  v14 = 0;
  v15 = 0;
  result = (*(*a3 + 16))(a3, 1, &v14, &v15);
  if (result)
  {
    v8 = 2;
    goto LABEL_16;
  }

  *(a1 + 16) = v14 | (*(a1 + 16) << 8);
  if (v7 == 3)
  {
    goto LABEL_15;
  }

  v14 = 0;
  v15 = 0;
  result = (*(*a3 + 16))(a3, 1, &v14, &v15);
  if (result)
  {
    v8 = 3;
    goto LABEL_16;
  }

  *(a1 + 16) = v14 | (*(a1 + 16) << 8);
  if (v7 == 4)
  {
    goto LABEL_15;
  }

  v14 = 0;
  v15 = 0;
  result = (*(*a3 + 16))(a3, 1, &v14, &v15);
  if (result)
  {
    v8 = 4;
    goto LABEL_16;
  }

  *(a1 + 16) = v14 | (*(a1 + 16) << 8);
  if (v7 == 5)
  {
    goto LABEL_15;
  }

  v14 = 0;
  v15 = 0;
  result = (*(*a3 + 16))(a3, 1, &v14, &v15);
  if (result)
  {
    v8 = 5;
    goto LABEL_16;
  }

  *(a1 + 16) = v14 | (*(a1 + 16) << 8);
  if (v7 == 6)
  {
LABEL_15:
    result = 0;
    goto LABEL_16;
  }

  v14 = 0;
  v15 = 0;
  result = (*(*a3 + 16))(a3, 1, &v14, &v15);
  if (!result)
  {
    *(a1 + 16) = v14 | (*(a1 + 16) << 8);
    if (v7 != 7)
    {
      v14 = 0;
      v15 = 0;
      result = (*(*a3 + 16))(a3, 1, &v14, &v15);
      if (result)
      {
        v8 = 7;
      }

      else
      {
        *(a1 + 16) = v14 | (*(a1 + 16) << 8);
      }

      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v8 = 6;
LABEL_16:
  *a4 += v8;
  *(a1 + 8) -= v8;
  if (!result)
  {
    *(a1 + 16) &= 0xFFFFFFFFFFFFFFFFLL >> (-7 * *(a1 + 12) + 57);
  }

  return result;
}

__n128 webm::VirtualBlockParser::Init(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 8) + 1) >= 5)
  {
    *(a1 + 72) = -1;
    *(a1 + 88) = 2;
    memset(v3, 0, 24);
    *(a1 + 8) = 0uLL;
    *(a1 + 24) = 0uLL;
    result = *(v3 + 8);
    *(a1 + 48) = *(v3 + 8);
    *(a1 + 76) = 0;
    *(a1 + 84) = 0;
    *(a1 + 96) = 0;
    *(a1 + 8) = *(a2 + 8);
  }

  return result;
}

uint64_t webm::VoidParser::Init(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 1) == -1)
  {
    return 4294966270;
  }

  result = 0;
  v4 = *a2;
  *(a1 + 24) = *(a2 + 2);
  *(a1 + 8) = v4;
  *(a1 + 32) = *(a2 + 1);
  return result;
}

uint64_t webm::VoidParser::Feed(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = (a1 + 32);
  v6 = *(a1 + 32);
  result = (*(*a2 + 40))(a2, a1 + 8, a3, a1 + 32);
  *a4 = v6 - *v5;
  return result;
}

uint64_t vp9_parser::Vp9HeaderParser::ParseUncompressedHeader(vp9_parser::Vp9HeaderParser *this, const unsigned __int8 *a2, unint64_t a3)
{
  if (!a2 || !a3)
  {
    return 0;
  }

  *this = a2;
  *(this + 1) = a3;
  *(this + 2) = 0;
  *(this + 6) = -1;
  *(this + 28) = 0;
  *(this + 44) = 0;
  *(this + 36) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 18) = 0;
  v3 = *a2;
  *(this + 2) = 1;
  v4 = *a2;
  *(this + 2) = 2;
  v5 = (v3 >> 6) & 2 | (v4 >> 6) & 1;
  if (v5 != 2)
  {
    fprintf(*MEMORY[0x277D85DF8], "Invalid VP9 frame_marker:%d\n", v5);
    return 0;
  }

  v6 = *a2;
  *(this + 2) = 3;
  *(this + 6) = (v6 >> 5) & 1;
  v7 = *a2;
  v8 = 4;
  *(this + 2) = 4;
  v9 = (v7 >> 3) & 2 | (v6 >> 5) & 1;
  *(this + 6) = v9;
  if (v9 == 3)
  {
    v10 = (*a2 >> 3) & 1;
    v8 = 5;
    *(this + 2) = 5;
    *(this + 6) = v10 + 3;
  }

  v11 = *a2 >> (v8 ^ 7);
  *(this + 2) = v8 + 1;
  *(this + 7) = v11 & 1;
  if (v11)
  {
    return 1;
  }

  v12 = (*a2 >> ((v8 + 1) ^ 7)) & 1;
  *(this + 2) = v8 | 2;
  *(this + 8) = v12 ^ 1;
  v13 = (*a2 >> ((v8 | 2) ^ 7)) & 1;
  v14 = v8 + 3;
  *(this + 2) = v8 + 3;
  v15 = (v8 + 3) >> 3;
  *(this + 9) = v13 ^ 1;
  if (v15 >= a3)
  {
    v16 = 0;
    *(this + 10) = 0;
    if (v12)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v16 = (a2[v15] >> (~v14 & 7)) & 1;
    v14 = v8 + 4;
    *(this + 2) = v8 + 4;
    *(this + 10) = v16;
    if (v12)
    {
LABEL_9:
      if (v13 || v14 >> 3 >= a3)
      {
        v17 = 0;
        *(this + 11) = 0;
        if (!v16)
        {
LABEL_12:
          if (v14 >> 3 >= a3)
          {
            v19 = 0;
          }

          else
          {
            v18 = a2[v14 >> 3] >> (~v14 & 7);
            *(this + 2) = ++v14;
            v19 = 2 * (v18 & 1);
          }

          if (a3 < 2)
          {
            v27 = 0;
          }

          else
          {
            v27 = (a2[1] >> (~v14++ & 7)) & 1;
            *(this + 2) = v14;
          }

          *(this + 12) = v27 | v19;
          if (!v17)
          {
LABEL_35:
            if (v14 >> 3 >= a3)
            {
              v30 = 0;
            }

            else
            {
              v29 = a2[v14 >> 3] >> (~v14 & 7);
              *(this + 2) = ++v14;
              v30 = (v29 & 1) << 7;
            }

            if (a3 < 2)
            {
              v32 = 0;
            }

            else
            {
              v31 = a2[1] >> (~v14++ & 7);
              *(this + 2) = v14;
              v32 = (v31 & 1) << 6;
            }

            v33 = v32 | v30;
            if (a3 < 2)
            {
              v35 = 0;
            }

            else
            {
              v34 = a2[1] >> (~v14++ & 7);
              *(this + 2) = v14;
              v35 = 32 * (v34 & 1);
            }

            v36 = v35 | v33;
            if (a3 < 2)
            {
              v39 = 0;
              v38 = 1;
            }

            else
            {
              v37 = a2[1] >> (~v14++ & 7);
              *(this + 2) = v14;
              v38 = v14 >> 3;
              v39 = 16 * (v37 & 1);
            }

            v40 = v39 | v36;
            if (v38 >= a3)
            {
              v42 = 0;
            }

            else
            {
              v41 = a2[v38] >> (~v14++ & 7);
              *(this + 2) = v14;
              v38 = v14 >> 3;
              v42 = 8 * (v41 & 1);
            }

            v43 = v42 | v40;
            if (v38 >= a3)
            {
              v45 = 0;
            }

            else
            {
              v44 = a2[v38] >> (~v14++ & 7);
              *(this + 2) = v14;
              v38 = v14 >> 3;
              v45 = 4 * (v44 & 1);
            }

            v46 = v45 | v43;
            if (v38 >= a3)
            {
              v48 = 0;
            }

            else
            {
              v47 = a2[v38] >> (~v14++ & 7);
              *(this + 2) = v14;
              v38 = v14 >> 3;
              v48 = 2 * (v47 & 1);
            }

            v49 = v48 | v46;
            if (v38 >= a3)
            {
              v50 = 0;
            }

            else
            {
              v50 = (a2[v38] >> (~v14++ & 7)) & 1;
              *(this + 2) = v14;
            }

            v51 = v14 >> 3;
            if (v14 >> 3 >= a3)
            {
              v52 = v14 >> 3;
            }

            else
            {
              v52 = (v14 + 1) >> 3;
            }

            if (v14 >> 3 < a3)
            {
              ++v14;
            }

            if (v52 >= a3)
            {
              v53 = v52;
            }

            else
            {
              v53 = (v14 + 1) >> 3;
            }

            if (v52 < a3)
            {
              ++v14;
            }

            if (v53 >= a3)
            {
              v54 = v53;
            }

            else
            {
              v54 = (v14 + 1) >> 3;
            }

            if (v53 < a3)
            {
              ++v14;
            }

            if (v54 >= a3)
            {
              v55 = v54;
            }

            else
            {
              v55 = (v14 + 1) >> 3;
            }

            if (v54 < a3)
            {
              ++v14;
            }

            if (v55 >= a3)
            {
              v56 = v55;
            }

            else
            {
              v56 = (v14 + 1) >> 3;
            }

            if (v55 < a3)
            {
              ++v14;
            }

            if (v56 >= a3)
            {
              v57 = v56;
            }

            else
            {
              v57 = (v14 + 1) >> 3;
            }

            if (v56 < a3)
            {
              ++v14;
            }

            if (v57 >= a3)
            {
              v58 = v57;
            }

            else
            {
              v58 = (v14 + 1) >> 3;
            }

            if (v57 < a3)
            {
              ++v14;
            }

            if (v58 >= a3)
            {
              v59 = v58;
            }

            else
            {
              v59 = (v14 + 1) >> 3;
            }

            if (v58 < a3)
            {
              ++v14;
            }

            if (v59 >= a3)
            {
              v60 = v59;
            }

            else
            {
              v60 = (v14 + 1) >> 3;
            }

            if (v59 < a3)
            {
              ++v14;
            }

            if (v60 >= a3)
            {
              v61 = v60;
            }

            else
            {
              v61 = (v14 + 1) >> 3;
            }

            if (v60 < a3)
            {
              ++v14;
            }

            if (v61 >= a3)
            {
              v62 = v61;
            }

            else
            {
              v62 = (v14 + 1) >> 3;
            }

            if (v61 < a3)
            {
              ++v14;
            }

            v63 = (v14 + 1) >> 3;
            if (v62 < a3)
            {
              ++v14;
            }

            else
            {
              v63 = v62;
            }

            *(this + 18) = v50 | v49;
            if (v51 < a3 || v52 < a3 || v53 < a3 || v54 < a3 || v55 < a3 || v56 < a3 || v57 < a3 || v58 < a3 || v59 < a3 || v60 < a3 || v61 < a3 || v62 < a3)
            {
              *(this + 2) = v14;
            }

            if (v63 < a3)
            {
              v64 = ~v14 & 7;
              v65 = a2[v63];
              *(this + 2) = ++v14;
              if ((v65 >> v64))
              {
                return 1;
              }

              v63 = v14 >> 3;
            }

            if (v63 >= a3)
            {
LABEL_136:
              if (v63 >= a3 || (v68 = a2[v63], *(this + 2) = v14 + 1, ((v68 >> (~v14 & 7)) & 1) == 0))
              {
LABEL_141:
                vp9_parser::Vp9HeaderParser::ParseFrameResolution(this);
                return 1;
              }

              return 1;
            }

            v66 = ~v14 & 7;
            v67 = a2[v63];
            *(this + 2) = ++v14;
            if (((v67 >> v66) & 1) == 0)
            {
              v63 = v14 >> 3;
              goto LABEL_136;
            }

            return 1;
          }

          goto LABEL_22;
        }
      }

      else
      {
        v17 = (a2[v14 >> 3] >> (~v14 & 7)) & 1;
        *(this + 2) = ++v14;
        *(this + 11) = v17;
        if (!v16)
        {
          goto LABEL_12;
        }
      }

      *(this + 12) = 0;
      if (!v17)
      {
        goto LABEL_35;
      }

LABEL_22:
      v25 = this;
      if (vp9_parser::Vp9HeaderParser::ValidateVp9SyncCode(this))
      {
        if (*(v25 + 6) < 1)
        {
          v26 = v25;
          *(v25 + 17) = 1;
          *(v25 + 52) = xmmword_273BDACE0;
        }

        else
        {
          vp9_parser::Vp9HeaderParser::ParseColorSpace(v25);
          v26 = v25;
        }

        v69 = v26;
        *(v26 + 72) = vp9_parser::Vp9HeaderParser::VpxReadLiteral(v26, 8);
        this = v69;
        goto LABEL_141;
      }

LABEL_25:
      fwrite("Invalid Sync code!\n", 0x13uLL, 1uLL, *MEMORY[0x277D85DF8]);
      return 0;
    }
  }

  v21 = this;
  if (!vp9_parser::Vp9HeaderParser::ValidateVp9SyncCode(this))
  {
    goto LABEL_25;
  }

  vp9_parser::Vp9HeaderParser::ParseColorSpace(v21);
  vp9_parser::Vp9HeaderParser::ParseFrameResolution(v21);
  v22 = *(v21 + 1);
  v23 = *(v21 + 2);
  if (*(v21 + 10))
  {
    v24 = 1;
  }

  else
  {
    v28 = v23 >> 3;
    if (v23 >> 3 < v22)
    {
      *(v21 + 2) = ++v23;
      v28 = v23 >> 3;
    }

    if (v28 >= v22)
    {
      v24 = 0;
    }

    else
    {
      v24 = (*(*v21 + v28) >> (~v23++ & 7)) & 1;
      *(v21 + 2) = v23;
    }
  }

  v70 = v23 >> 3;
  v71 = (v23 + 1) >> 3;
  if (v23 >> 3 < v22)
  {
    ++v23;
  }

  else
  {
    v71 = v23 >> 3;
  }

  if (v71 >= v22)
  {
    v72 = v71;
  }

  else
  {
    v72 = (v23 + 1) >> 3;
  }

  if (v71 < v22)
  {
    ++v23;
  }

  if (v72 >= v22)
  {
    v73 = v72;
  }

  else
  {
    v73 = (v23 + 1) >> 3;
  }

  if (v72 < v22)
  {
    ++v23;
  }

  if (v73 >= v22)
  {
    v74 = v73;
  }

  else
  {
    v74 = (v23 + 1) >> 3;
  }

  if (v73 < v22)
  {
    ++v23;
  }

  if (v74 >= v22)
  {
    v75 = v74;
  }

  else
  {
    v75 = (v23 + 1) >> 3;
  }

  if (v74 < v22)
  {
    ++v23;
  }

  if (v75 >= v22)
  {
    v76 = v75;
  }

  else
  {
    v76 = (v23 + 1) >> 3;
  }

  if (v75 < v22)
  {
    ++v23;
  }

  if (v76 >= v22)
  {
    v77 = v76;
  }

  else
  {
    v77 = (v23 + 1) >> 3;
  }

  if (v76 < v22)
  {
    ++v23;
  }

  if (v77 >= v22)
  {
    v78 = v77;
  }

  else
  {
    v78 = (v23 + 1) >> 3;
  }

  if (v77 < v22)
  {
    ++v23;
  }

  if (v78 >= v22)
  {
    v79 = v78;
  }

  else
  {
    v79 = (v23 + 1) >> 3;
  }

  if (v78 < v22)
  {
    ++v23;
  }

  if (v79 >= v22)
  {
    v80 = v79;
  }

  else
  {
    v80 = (v23 + 1) >> 3;
  }

  if (v79 < v22)
  {
    ++v23;
  }

  v81 = (v23 + 1) >> 3;
  if (v80 < v22)
  {
    ++v23;
  }

  else
  {
    v81 = v80;
  }

  *(v21 + 25) = v24;
  if (v70 < v22 || v71 < v22 || v72 < v22 || v73 < v22 || v74 < v22 || v75 < v22 || v76 < v22 || v77 < v22 || v78 < v22 || v79 < v22 || v80 < v22)
  {
    *(v21 + 2) = v23;
  }

  if (v81 < v22)
  {
    v82 = *v21;
    v83 = *(*v21 + v81);
    v84 = v23 + 1;
    *(v21 + 2) = v23 + 1;
    if (((v83 >> (~v23 & 7)) & 1) == 0)
    {
      goto LABEL_310;
    }

    if (v84 >> 3 >= v22)
    {
      goto LABEL_310;
    }

    v85 = ~v84 & 7;
    v86 = *(v82 + (v84 >> 3));
    v84 = v23 + 2;
    *(v21 + 2) = v23 + 2;
    if (((v86 >> v85) & 1) == 0)
    {
      goto LABEL_310;
    }

    if (v84 >> 3 < v22)
    {
      v87 = ~v84 & 7;
      v88 = *(v82 + (v84 >> 3));
      v84 = v23 + 3;
      *(v21 + 2) = v23 + 3;
      if ((v88 >> v87))
      {
        v89 = v84 >> 3;
        v90 = v84 >> 3 < v22;
        v91 = v23 + 4;
        if (v84 >> 3 < v22)
        {
          v84 = v91;
        }

        v92 = v84 + 1;
        v93 = v90 && v22 > v91 >> 3;
        if (v93)
        {
          ++v84;
        }

        v94 = v22 > v92 >> 3;
        v95 = (v84 + 1) >> 3;
        v96 = v93 & v94;
        if (v96)
        {
          ++v84;
        }

        v97 = v95 < v22;
        v98 = (v84 + 1) >> 3;
        v99 = v96 & v97;
        if (v99)
        {
          ++v84;
        }

        v100 = v98 < v22;
        v101 = (v84 + 1) >> 3;
        v102 = v99 & v100;
        if (v102)
        {
          ++v84;
        }

        v103 = v101 < v22;
        v104 = (v84 + 1) >> 3;
        v105 = v102 & v103;
        if (v105)
        {
          ++v84;
        }

        v84 += v105 & (v104 < v22);
        if (v89 < v22)
        {
          *(v21 + 2) = v84;
        }
      }
    }

    if (v84 >> 3 < v22)
    {
      v106 = *(v82 + (v84 >> 3));
      v107 = v84 + 1;
      *(v21 + 2) = v84 + 1;
      if ((v106 >> (~v84 & 7)))
      {
        v108 = v107 >> 3;
        v109 = v107 >> 3 < v22;
        v110 = v84 + 2;
        if (v107 >> 3 < v22)
        {
          v107 = v110;
        }

        v111 = v107 + 1;
        v112 = v109 && v22 > v110 >> 3;
        if (v112)
        {
          ++v107;
        }

        v113 = v22 > v111 >> 3;
        v114 = (v107 + 1) >> 3;
        v115 = v112 & v113;
        if (v115)
        {
          ++v107;
        }

        v116 = v114 < v22;
        v117 = (v107 + 1) >> 3;
        v118 = v115 & v116;
        if (v118)
        {
          ++v107;
        }

        v119 = v117 < v22;
        v120 = (v107 + 1) >> 3;
        v121 = v118 & v119;
        if (v121)
        {
          ++v107;
        }

        v122 = v120 < v22;
        v123 = (v107 + 1) >> 3;
        v124 = v121 & v122;
        if (v124)
        {
          ++v107;
        }

        v84 = v107 + (v124 & (v123 < v22));
        if (v108 < v22)
        {
          *(v21 + 2) = v84;
        }
      }

      else
      {
        ++v84;
      }
    }

    if (v84 >> 3 < v22)
    {
      v125 = *(v82 + (v84 >> 3));
      v126 = v84 + 1;
      *(v21 + 2) = v84 + 1;
      if ((v125 >> (~v84 & 7)))
      {
        v127 = v126 >> 3;
        v128 = v126 >> 3 < v22;
        v129 = v84 + 2;
        if (v126 >> 3 < v22)
        {
          v126 = v129;
        }

        v130 = v126 + 1;
        v131 = v128 && v22 > v129 >> 3;
        if (v131)
        {
          ++v126;
        }

        v132 = v22 > v130 >> 3;
        v133 = (v126 + 1) >> 3;
        v134 = v131 & v132;
        if (v134)
        {
          ++v126;
        }

        v135 = v133 < v22;
        v136 = (v126 + 1) >> 3;
        v137 = v134 & v135;
        if (v137)
        {
          ++v126;
        }

        v138 = v136 < v22;
        v139 = (v126 + 1) >> 3;
        v140 = v137 & v138;
        if (v140)
        {
          ++v126;
        }

        v141 = v139 < v22;
        v142 = (v126 + 1) >> 3;
        v143 = v140 & v141;
        if (v143)
        {
          ++v126;
        }

        v84 = v126 + (v143 & (v142 < v22));
        if (v127 < v22)
        {
          *(v21 + 2) = v84;
        }
      }

      else
      {
        ++v84;
      }
    }

    if (v84 >> 3 < v22)
    {
      v144 = *(v82 + (v84 >> 3));
      v145 = v84 + 1;
      *(v21 + 2) = v84 + 1;
      if ((v144 >> (~v84 & 7)))
      {
        v146 = v145 >> 3;
        v147 = v145 >> 3 < v22;
        v148 = v84 + 2;
        if (v145 >> 3 < v22)
        {
          v145 = v148;
        }

        v149 = v145 + 1;
        v150 = v147 && v22 > v148 >> 3;
        if (v150)
        {
          ++v145;
        }

        v151 = v22 > v149 >> 3;
        v152 = (v145 + 1) >> 3;
        v153 = v150 & v151;
        if (v153)
        {
          ++v145;
        }

        v154 = v152 < v22;
        v155 = (v145 + 1) >> 3;
        v156 = v153 & v154;
        if (v156)
        {
          ++v145;
        }

        v157 = v155 < v22;
        v158 = (v145 + 1) >> 3;
        v159 = v156 & v157;
        if (v159)
        {
          ++v145;
        }

        v160 = v158 < v22;
        v161 = (v145 + 1) >> 3;
        v162 = v159 & v160;
        if (v162)
        {
          ++v145;
        }

        v84 = v145 + (v162 & (v161 < v22));
        if (v146 < v22)
        {
          *(v21 + 2) = v84;
        }
      }

      else
      {
        ++v84;
      }
    }

    if (v84 >> 3 < v22)
    {
      v163 = *(v82 + (v84 >> 3));
      v164 = v84 + 1;
      *(v21 + 2) = v84 + 1;
      if ((v163 >> (~v84 & 7)))
      {
        v165 = v164 >> 3;
        v166 = v164 >> 3 < v22;
        v167 = v84 + 2;
        if (v164 >> 3 < v22)
        {
          v164 = v167;
        }

        v168 = v164 + 1;
        v169 = v166 && v22 > v167 >> 3;
        if (v169)
        {
          ++v164;
        }

        v170 = v22 > v168 >> 3;
        v171 = (v164 + 1) >> 3;
        v172 = v169 & v170;
        if (v172)
        {
          ++v164;
        }

        v173 = v171 < v22;
        v174 = (v164 + 1) >> 3;
        v175 = v172 & v173;
        if (v175)
        {
          ++v164;
        }

        v176 = v174 < v22;
        v177 = (v164 + 1) >> 3;
        v178 = v175 & v176;
        if (v178)
        {
          ++v164;
        }

        v179 = v177 < v22;
        v180 = (v164 + 1) >> 3;
        v181 = v178 & v179;
        if (v181)
        {
          ++v164;
        }

        v84 = v164 + (v181 & (v180 < v22));
        if (v165 < v22)
        {
          *(v21 + 2) = v84;
        }
      }

      else
      {
        ++v84;
      }
    }

    if (v84 >> 3 < v22)
    {
      v182 = *(v82 + (v84 >> 3));
      v23 = v84 + 1;
      *(v21 + 2) = v84 + 1;
      if ((v182 >> (~v84 & 7)))
      {
        v183 = v23 >> 3;
        v184 = v23 >> 3 < v22;
        v185 = v84 + 2;
        if (v23 >> 3 < v22)
        {
          v23 = v185;
        }

        v186 = v23 + 1;
        v187 = v184 && v22 > v185 >> 3;
        if (v187)
        {
          ++v23;
        }

        v188 = v22 > v186 >> 3;
        v189 = (v23 + 1) >> 3;
        v190 = v187 & v188;
        if (v190)
        {
          ++v23;
        }

        v191 = v189 < v22;
        v192 = (v23 + 1) >> 3;
        v193 = v190 & v191;
        if (v193)
        {
          ++v23;
        }

        v194 = v192 < v22;
        v195 = (v23 + 1) >> 3;
        v196 = v193 & v194;
        if (v196)
        {
          ++v23;
        }

        v197 = v195 < v22;
        v198 = (v23 + 1) >> 3;
        v199 = v196 & v197;
        if (v199)
        {
          ++v23;
        }

        v23 += v199 & (v198 < v22);
        if (v183 < v22)
        {
          *(v21 + 2) = v23;
        }
      }
    }

    else
    {
LABEL_310:
      v23 = v84;
    }
  }

  v200 = v23 >> 3;
  if (v23 >> 3 >= v22)
  {
    v201 = v23 >> 3;
  }

  else
  {
    v201 = (v23 + 1) >> 3;
  }

  if (v23 >> 3 >= v22)
  {
    v202 = v23;
  }

  else
  {
    v202 = v23 + 1;
  }

  if (v201 >= v22)
  {
    v203 = v201;
  }

  else
  {
    v203 = (v202 + 1) >> 3;
  }

  if (v201 < v22)
  {
    ++v202;
  }

  if (v203 >= v22)
  {
    v204 = v203;
  }

  else
  {
    v204 = (v202 + 1) >> 3;
  }

  if (v203 < v22)
  {
    ++v202;
  }

  if (v204 >= v22)
  {
    v205 = v204;
  }

  else
  {
    v205 = (v202 + 1) >> 3;
  }

  if (v204 < v22)
  {
    ++v202;
  }

  if (v205 >= v22)
  {
    v206 = v205;
  }

  else
  {
    v206 = (v202 + 1) >> 3;
  }

  if (v205 < v22)
  {
    ++v202;
  }

  if (v206 >= v22)
  {
    v207 = v206;
  }

  else
  {
    v207 = (v202 + 1) >> 3;
  }

  if (v206 < v22)
  {
    ++v202;
  }

  if (v207 >= v22)
  {
    v208 = v207;
  }

  else
  {
    v208 = (v202 + 1) >> 3;
  }

  if (v207 < v22)
  {
    ++v202;
  }

  v209 = (v202 + 1) >> 3;
  if (v208 < v22)
  {
    ++v202;
  }

  else
  {
    v209 = v208;
  }

  if (v200 >= v22 && v201 >= v22 && v203 >= v22 && v204 >= v22 && (v205 >= v22 ? (v210 = v206 >= v22) : (v210 = 0), v210 ? (v211 = v207 >= v22) : (v211 = 0), v211 ? (v212 = v208 >= v22) : (v212 = 0), v212))
  {
    if (v209 >= v22)
    {
      goto LABEL_374;
    }
  }

  else
  {
    *(v21 + 2) = v202;
    if (v209 >= v22)
    {
LABEL_374:
      if (v209 < v22)
      {
        goto LABEL_375;
      }

LABEL_387:
      if (v209 >= v22)
      {
        goto LABEL_400;
      }

      goto LABEL_388;
    }
  }

  v213 = *(*v21 + v209);
  *(v21 + 2) = v202 + 1;
  v214 = (1 << (~v202 & 7)) & v213;
  v209 = (v202 + 1) >> 3;
  if (v209 >= v22 || v214 == 0)
  {
    ++v202;
    if (v209 >= v22)
    {
      goto LABEL_387;
    }
  }

  else
  {
    v219 = v202 + 2;
    v220 = v202 + 3;
    v221 = v22 > v220 >> 3;
    if (v219 >> 3 >= v22)
    {
      v220 = v219;
    }

    v222 = v219 >> 3 < v22 && v221;
    v223 = v222 & (v22 > (v220 + 1) >> 3);
    if (v222)
    {
      ++v220;
    }

    v202 = v220 + v223;
    *(v21 + 2) = v202;
    v209 = v202 >> 3;
    if (v202 >> 3 >= v22)
    {
      goto LABEL_387;
    }
  }

LABEL_375:
  v216 = *(*v21 + v209);
  *(v21 + 2) = v202 + 1;
  v217 = (1 << (~v202 & 7)) & v216;
  v209 = (v202 + 1) >> 3;
  if (v209 >= v22 || v217 == 0)
  {
    ++v202;
    if (v209 >= v22)
    {
      goto LABEL_400;
    }
  }

  else
  {
    v227 = v202 + 2;
    v228 = v202 + 3;
    v229 = v22 > v228 >> 3;
    if (v227 >> 3 >= v22)
    {
      v228 = v227;
    }

    v230 = v227 >> 3 < v22 && v229;
    v231 = v230 & (v22 > (v228 + 1) >> 3);
    if (v230)
    {
      ++v228;
    }

    v202 = v228 + v231;
    *(v21 + 2) = v202;
    v209 = v202 >> 3;
    if (v202 >> 3 >= v22)
    {
LABEL_400:
      if (v209 >= v22)
      {
        goto LABEL_408;
      }

      goto LABEL_401;
    }
  }

LABEL_388:
  v224 = *(*v21 + v209);
  *(v21 + 2) = v202 + 1;
  v225 = (1 << (~v202 & 7)) & v224;
  v209 = (v202 + 1) >> 3;
  if (v209 >= v22 || v225 == 0)
  {
    ++v202;
    if (v209 >= v22)
    {
      goto LABEL_408;
    }
  }

  else
  {
    v234 = v202 + 2;
    v235 = v202 + 3;
    v236 = v22 > v235 >> 3;
    if (v234 >> 3 >= v22)
    {
      v235 = v234;
    }

    v237 = v234 >> 3 < v22 && v236;
    v238 = v237 & (v22 > (v235 + 1) >> 3);
    if (v237)
    {
      ++v235;
    }

    v202 = v235 + v238;
    *(v21 + 2) = v202;
    v209 = v202 >> 3;
    if (v202 >> 3 >= v22)
    {
      goto LABEL_408;
    }
  }

LABEL_401:
  v232 = ~v202 & 7;
  v233 = *(*v21 + v209);
  *(v21 + 2) = ++v202;
  if ((v233 >> v232))
  {
    return 1;
  }

LABEL_408:
  v239 = (((*(v21 + 19) + 7) >> 3) + 7) >> 3;
  v240 = -1;
  do
  {
    ++v240;
  }

  while (v239 >> v240 > 3);
  v241 = 0;
  do
  {
    v242 = 64 << v241++;
  }

  while (v242 < v239);
  if (v240 <= 1)
  {
    v243 = 1;
  }

  else
  {
    v243 = v240;
  }

  v244 = v241 - 1;
  v245 = v243 - v241;
  if (v243 != v241)
  {
    while (v202 >> 3 < v22)
    {
      v246 = ~v202 & 7;
      v247 = *(*v21 + (v202++ >> 3));
      *(v21 + 2) = v202;
      if (((v247 >> v246) & 1) == 0)
      {
        break;
      }

      ++v244;
      if (!--v245)
      {
        v244 = v243 - 1;
        break;
      }
    }
  }

  if (v202 >> 3 < v22 && (v248 = *v21, v249 = *(*v21 + (v202 >> 3)), v250 = v202 + 1, *(v21 + 2) = v202 + 1, ((v249 >> (~v202 & 7)) & 1) != 0))
  {
    if (v250 >> 3 >= v22)
    {
      v252 = 1;
    }

    else
    {
      v251 = (*(v248 + (v250 >> 3)) >> (~v250 & 7)) & 1;
      *(v21 + 2) = v202 + 2;
      v252 = v251 + 1;
    }
  }

  else
  {
    v252 = 0;
  }

  *(v21 + 23) = 1 << v252;
  *(v21 + 24) = 1 << v244;
  return 1;
}

uint64_t vp9_parser::Vp9HeaderParser::VpxReadLiteral(uint64_t this, int a2)
{
  v2 = this;
  LODWORD(this) = 0;
  v3 = v2[1];
  v4 = v2[2];
  v5 = a2 + 1;
  do
  {
    while (v4 >> 3 < v3)
    {
      v6 = (*(*v2 + (v4 >> 3)) >> (~v4 & 7)) & 1;
      v2[2] = ++v4;
      this = (v6 << (v5-- - 2)) | this;
      if (v5 <= 1)
      {
        return this;
      }
    }

    this = this;
    --v5;
  }

  while (v5 > 1);
  return this;
}

BOOL vp9_parser::Vp9HeaderParser::ValidateVp9SyncCode(vp9_parser::Vp9HeaderParser *this)
{
  v2 = *(this + 1);
  v1 = *(this + 2);
  v3 = v1 >> 3;
  if (v1 >> 3 >= v2)
  {
    v5 = 0;
LABEL_3:
    v6 = 0;
    if (v3 >= v2)
    {
      goto LABEL_4;
    }

    goto LABEL_17;
  }

  v4 = *(*this + v3) >> (~v1++ & 7);
  *(this + 2) = v1;
  v3 = v1 >> 3;
  v5 = (v4 & 1) << 7;
  if (v1 >> 3 >= v2)
  {
    goto LABEL_3;
  }

  v18 = *(*this + v3) >> (~v1++ & 7);
  *(this + 2) = v1;
  v3 = v1 >> 3;
  v6 = (v18 & 1) << 6;
  if (v1 >> 3 >= v2)
  {
LABEL_4:
    v7 = 0;
    if (v3 >= v2)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  v19 = *(*this + v3) >> (~v1++ & 7);
  *(this + 2) = v1;
  v3 = v1 >> 3;
  v7 = 32 * (v19 & 1);
  if (v1 >> 3 >= v2)
  {
LABEL_5:
    v8 = 0;
    if (v3 >= v2)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  v20 = *(*this + v3) >> (~v1++ & 7);
  *(this + 2) = v1;
  v3 = v1 >> 3;
  v8 = 16 * (v20 & 1);
  if (v1 >> 3 >= v2)
  {
LABEL_6:
    v9 = 0;
    if (v3 >= v2)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  v21 = *(*this + v3) >> (~v1++ & 7);
  *(this + 2) = v1;
  v3 = v1 >> 3;
  v9 = 8 * (v21 & 1);
  if (v1 >> 3 >= v2)
  {
LABEL_7:
    v10 = 0;
    if (v3 >= v2)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  v22 = *(*this + v3) >> (~v1++ & 7);
  *(this + 2) = v1;
  v3 = v1 >> 3;
  v10 = 4 * (v22 & 1);
  if (v1 >> 3 >= v2)
  {
LABEL_8:
    v11 = 0;
    if (v3 >= v2)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  v23 = *(*this + v3) >> (~v1++ & 7);
  *(this + 2) = v1;
  v3 = v1 >> 3;
  v11 = 2 * (v23 & 1);
  if (v1 >> 3 >= v2)
  {
LABEL_9:
    v12 = 0;
    if (v3 >= v2)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  v12 = (*(*this + v3) >> (~v1++ & 7)) & 1;
  *(this + 2) = v1;
  v3 = v1 >> 3;
  if (v1 >> 3 >= v2)
  {
LABEL_10:
    v13 = 0;
    if (v3 >= v2)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  v24 = *(*this + v3) >> (~v1++ & 7);
  *(this + 2) = v1;
  v3 = v1 >> 3;
  v13 = (v24 & 1) << 7;
  if (v1 >> 3 >= v2)
  {
LABEL_11:
    v14 = 0;
    if (v3 >= v2)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  v25 = *(*this + v3) >> (~v1++ & 7);
  *(this + 2) = v1;
  v3 = v1 >> 3;
  v14 = (v25 & 1) << 6;
  if (v1 >> 3 >= v2)
  {
LABEL_12:
    v15 = 0;
    if (v3 >= v2)
    {
      goto LABEL_13;
    }

LABEL_26:
    v27 = *(*this + v3) >> (~v1++ & 7);
    *(this + 2) = v1;
    v3 = v1 >> 3;
    v16 = 16 * (v27 & 1);
    if (v1 >> 3 >= v2)
    {
      goto LABEL_14;
    }

    goto LABEL_27;
  }

LABEL_25:
  v26 = *(*this + v3) >> (~v1++ & 7);
  *(this + 2) = v1;
  v3 = v1 >> 3;
  v15 = 32 * (v26 & 1);
  if (v1 >> 3 < v2)
  {
    goto LABEL_26;
  }

LABEL_13:
  v16 = 0;
  if (v3 >= v2)
  {
LABEL_14:
    v17 = 0;
    goto LABEL_28;
  }

LABEL_27:
  v28 = *(*this + v3) >> (~v1++ & 7);
  *(this + 2) = v1;
  v3 = v1 >> 3;
  v17 = 8 * (v28 & 1);
LABEL_28:
  if (v3 >= v2)
  {
    v30 = 0;
LABEL_30:
    v31 = 0;
    if (v3 >= v2)
    {
      goto LABEL_31;
    }

    goto LABEL_42;
  }

  v29 = *(*this + v3) >> (~v1++ & 7);
  *(this + 2) = v1;
  v3 = v1 >> 3;
  v30 = 4 * (v29 & 1);
  if (v1 >> 3 >= v2)
  {
    goto LABEL_30;
  }

  v41 = *(*this + v3) >> (~v1++ & 7);
  *(this + 2) = v1;
  v3 = v1 >> 3;
  v31 = 2 * (v41 & 1);
  if (v1 >> 3 >= v2)
  {
LABEL_31:
    v32 = 0;
    if (v3 >= v2)
    {
      goto LABEL_32;
    }

    goto LABEL_43;
  }

LABEL_42:
  v32 = (*(*this + v3) >> (~v1++ & 7)) & 1;
  *(this + 2) = v1;
  v3 = v1 >> 3;
  if (v1 >> 3 >= v2)
  {
LABEL_32:
    v33 = 0;
    if (v3 >= v2)
    {
      goto LABEL_33;
    }

    goto LABEL_44;
  }

LABEL_43:
  v42 = *(*this + v3) >> (~v1++ & 7);
  *(this + 2) = v1;
  v3 = v1 >> 3;
  v33 = (v42 & 1) << 7;
  if (v1 >> 3 >= v2)
  {
LABEL_33:
    v34 = 0;
    if (v3 >= v2)
    {
      goto LABEL_34;
    }

    goto LABEL_45;
  }

LABEL_44:
  v43 = *(*this + v3) >> (~v1++ & 7);
  *(this + 2) = v1;
  v3 = v1 >> 3;
  v34 = (v43 & 1) << 6;
  if (v1 >> 3 >= v2)
  {
LABEL_34:
    v35 = 0;
    if (v3 >= v2)
    {
      goto LABEL_35;
    }

    goto LABEL_46;
  }

LABEL_45:
  v44 = *(*this + v3) >> (~v1++ & 7);
  *(this + 2) = v1;
  v3 = v1 >> 3;
  v35 = 32 * (v44 & 1);
  if (v1 >> 3 >= v2)
  {
LABEL_35:
    v36 = 0;
    if (v3 >= v2)
    {
      goto LABEL_36;
    }

    goto LABEL_47;
  }

LABEL_46:
  v45 = *(*this + v3) >> (~v1++ & 7);
  *(this + 2) = v1;
  v3 = v1 >> 3;
  v36 = 16 * (v45 & 1);
  if (v1 >> 3 >= v2)
  {
LABEL_36:
    v37 = 0;
    if (v3 >= v2)
    {
      goto LABEL_37;
    }

    goto LABEL_48;
  }

LABEL_47:
  v46 = *(*this + v3) >> (~v1++ & 7);
  *(this + 2) = v1;
  v3 = v1 >> 3;
  v37 = 8 * (v46 & 1);
  if (v1 >> 3 >= v2)
  {
LABEL_37:
    v38 = 0;
    if (v3 >= v2)
    {
      goto LABEL_38;
    }

LABEL_49:
    v48 = *(*this + v3) >> (~v1++ & 7);
    *(this + 2) = v1;
    v3 = v1 >> 3;
    v39 = 2 * (v48 & 1);
    if (v1 >> 3 >= v2)
    {
      goto LABEL_39;
    }

    goto LABEL_50;
  }

LABEL_48:
  v47 = *(*this + v3) >> (~v1++ & 7);
  *(this + 2) = v1;
  v3 = v1 >> 3;
  v38 = 4 * (v47 & 1);
  if (v1 >> 3 < v2)
  {
    goto LABEL_49;
  }

LABEL_38:
  v39 = 0;
  if (v3 >= v2)
  {
LABEL_39:
    v40 = 0;
    return (v6 | v5 | v7 | v8 | v9 | v10 | v11 | v12) == 0x49 && (v14 | v13 | v15 | v16 | v17 | v30 | v31 | v32) == 131 && (v34 | v33 | v35 | v36 | v37 | v38 | v39 | v40) == 66;
  }

LABEL_50:
  v40 = (*(*this + v3) >> (~v1 & 7)) & 1;
  *(this + 2) = v1 + 1;
  return (v6 | v5 | v7 | v8 | v9 | v10 | v11 | v12) == 0x49 && (v14 | v13 | v15 | v16 | v17 | v30 | v31 | v32) == 131 && (v34 | v33 | v35 | v36 | v37 | v38 | v39 | v40) == 66;
}

uint64_t vp9_parser::Vp9HeaderParser::ParseColorSpace(uint64_t this)
{
  *(this + 52) = 0;
  v1 = *(this + 24);
  if (v1 <= 1)
  {
    v3 = *(this + 8);
    v2 = *(this + 16);
    *(this + 52) = 8;
    v6 = v2 >> 3;
    if (v2 >> 3 >= v3)
    {
      goto LABEL_14;
    }

    goto LABEL_7;
  }

  v3 = *(this + 8);
  v2 = *(this + 16);
  if (v2 >> 3 >= v3 || (v4 = ~v2 & 7, v5 = *(*this + (v2 >> 3)), ++v2, *(this + 16) = v2, ((v5 >> v4) & 1) == 0))
  {
    *(this + 52) = 10;
    v6 = v2 >> 3;
    if (v2 >> 3 >= v3)
    {
      goto LABEL_14;
    }

LABEL_7:
    v7 = *(*this + v6) >> (~v2++ & 7);
    *(this + 16) = v2;
    v6 = v2 >> 3;
    v8 = 4 * (v7 & 1);
    if (v2 >> 3 < v3)
    {
      goto LABEL_15;
    }

LABEL_8:
    if (v6 < v3)
    {
      goto LABEL_16;
    }

    goto LABEL_9;
  }

  *(this + 52) = 12;
  v6 = v2 >> 3;
  if (v2 >> 3 < v3)
  {
    goto LABEL_7;
  }

LABEL_14:
  v8 = 0;
  if (v6 >= v3)
  {
    goto LABEL_8;
  }

LABEL_15:
  v10 = *(*this + v6) >> (~v2++ & 7);
  *(this + 16) = v2;
  v6 = v2 >> 3;
  v8 |= 2 * (v10 & 1);
  if (v2 >> 3 < v3)
  {
LABEL_16:
    v11 = (*(*this + v6) >> (~v2++ & 7)) & 1;
    *(this + 16) = v2;
    v12 = v8 | v11;
    *(this + 56) = v12;
    if (v12 == 7)
    {
      goto LABEL_17;
    }

    goto LABEL_10;
  }

LABEL_9:
  *(this + 56) = v8;
  if (v8 == 7)
  {
LABEL_17:
    *(this + 60) = 1;
    if ((v1 | 2) == 3)
    {
      *(this + 64) = 0;
      if (v3 > v2 >> 3)
      {
        goto LABEL_19;
      }
    }

    return this;
  }

LABEL_10:
  if (v2 >> 3 >= v3)
  {
    *(this + 60) = 0;
    if ((v1 | 2) != 3)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v9 = (*(*this + (v2 >> 3)) >> (~v2 & 7)) & 1;
    *(this + 16) = ++v2;
    *(this + 60) = v9;
    if ((v1 | 2) != 3)
    {
LABEL_12:
      *(this + 64) = 0x100000001;
      return this;
    }
  }

  v13 = v2 >> 3;
  if (v2 >> 3 >= v3)
  {
    *(this + 64) = 0;
  }

  else
  {
    v14 = (*(*this + v13) >> (~v2++ & 7)) & 1;
    *(this + 16) = v2;
    v13 = v2 >> 3;
    *(this + 64) = v14;
    if (v2 >> 3 < v3)
    {
      v15 = (*(*this + v13) >> (~v2++ & 7)) & 1;
      *(this + 16) = v2;
      *(this + 68) = v15;
      if (v2 >> 3 >= v3)
      {
        return this;
      }

      goto LABEL_19;
    }
  }

  *(this + 68) = 0;
  if (v13 < v3)
  {
LABEL_19:
    *(this + 16) = v2 + 1;
  }

  return this;
}

uint64_t *vp9_parser::Vp9HeaderParser::ParseFrameResolution(uint64_t *this)
{
  v1 = this[1];
  v2 = this[2];
  v3 = v2 >> 3;
  if (v2 >> 3 >= v1)
  {
    v5 = 0;
LABEL_3:
    if (v3 >= v1)
    {
      goto LABEL_4;
    }

    goto LABEL_37;
  }

  v4 = *(*this + v3) >> (~v2++ & 7);
  this[2] = v2;
  v3 = v2 >> 3;
  v5 = (v4 & 1) << 15;
  if (v2 >> 3 >= v1)
  {
    goto LABEL_3;
  }

  v9 = *(*this + v3) >> (~v2++ & 7);
  this[2] = v2;
  v3 = v2 >> 3;
  v5 |= (v9 & 1) << 14;
  if (v2 >> 3 >= v1)
  {
LABEL_4:
    if (v3 >= v1)
    {
      goto LABEL_5;
    }

    goto LABEL_38;
  }

LABEL_37:
  v10 = *(*this + v3) >> (~v2++ & 7);
  this[2] = v2;
  v3 = v2 >> 3;
  v5 |= (v10 & 1) << 13;
  if (v2 >> 3 >= v1)
  {
LABEL_5:
    if (v3 >= v1)
    {
      goto LABEL_6;
    }

    goto LABEL_39;
  }

LABEL_38:
  v11 = *(*this + v3) >> (~v2++ & 7);
  this[2] = v2;
  v3 = v2 >> 3;
  v5 |= (v11 & 1) << 12;
  if (v2 >> 3 >= v1)
  {
LABEL_6:
    if (v3 >= v1)
    {
      goto LABEL_7;
    }

    goto LABEL_40;
  }

LABEL_39:
  v12 = *(*this + v3) >> (~v2++ & 7);
  this[2] = v2;
  v3 = v2 >> 3;
  v5 |= (v12 & 1) << 11;
  if (v2 >> 3 >= v1)
  {
LABEL_7:
    if (v3 >= v1)
    {
      goto LABEL_8;
    }

    goto LABEL_41;
  }

LABEL_40:
  v13 = *(*this + v3) >> (~v2++ & 7);
  this[2] = v2;
  v3 = v2 >> 3;
  v5 |= (v13 & 1) << 10;
  if (v2 >> 3 >= v1)
  {
LABEL_8:
    if (v3 >= v1)
    {
      goto LABEL_9;
    }

    goto LABEL_42;
  }

LABEL_41:
  v14 = *(*this + v3) >> (~v2++ & 7);
  this[2] = v2;
  v3 = v2 >> 3;
  v5 |= (v14 & 1) << 9;
  if (v2 >> 3 >= v1)
  {
LABEL_9:
    if (v3 >= v1)
    {
      goto LABEL_10;
    }

    goto LABEL_43;
  }

LABEL_42:
  v15 = *(*this + v3) >> (~v2++ & 7);
  this[2] = v2;
  v3 = v2 >> 3;
  v5 |= (v15 & 1) << 8;
  if (v2 >> 3 >= v1)
  {
LABEL_10:
    if (v3 >= v1)
    {
      goto LABEL_11;
    }

    goto LABEL_44;
  }

LABEL_43:
  v16 = *(*this + v3) >> (~v2++ & 7);
  this[2] = v2;
  v3 = v2 >> 3;
  v5 |= (v16 & 1) << 7;
  if (v2 >> 3 >= v1)
  {
LABEL_11:
    if (v3 >= v1)
    {
      goto LABEL_12;
    }

    goto LABEL_45;
  }

LABEL_44:
  v17 = *(*this + v3) >> (~v2++ & 7);
  this[2] = v2;
  v3 = v2 >> 3;
  v5 |= (v17 & 1) << 6;
  if (v2 >> 3 >= v1)
  {
LABEL_12:
    if (v3 >= v1)
    {
      goto LABEL_13;
    }

    goto LABEL_46;
  }

LABEL_45:
  v18 = *(*this + v3) >> (~v2++ & 7);
  this[2] = v2;
  v3 = v2 >> 3;
  v5 |= 32 * (v18 & 1);
  if (v2 >> 3 >= v1)
  {
LABEL_13:
    if (v3 >= v1)
    {
      goto LABEL_14;
    }

    goto LABEL_47;
  }

LABEL_46:
  v19 = *(*this + v3) >> (~v2++ & 7);
  this[2] = v2;
  v3 = v2 >> 3;
  v5 |= 16 * (v19 & 1);
  if (v2 >> 3 >= v1)
  {
LABEL_14:
    if (v3 >= v1)
    {
      goto LABEL_15;
    }

    goto LABEL_48;
  }

LABEL_47:
  v20 = *(*this + v3) >> (~v2++ & 7);
  this[2] = v2;
  v3 = v2 >> 3;
  v5 |= 8 * (v20 & 1);
  if (v2 >> 3 >= v1)
  {
LABEL_15:
    if (v3 >= v1)
    {
      goto LABEL_16;
    }

    goto LABEL_49;
  }

LABEL_48:
  v21 = *(*this + v3) >> (~v2++ & 7);
  this[2] = v2;
  v3 = v2 >> 3;
  v5 |= 4 * (v21 & 1);
  if (v2 >> 3 >= v1)
  {
LABEL_16:
    if (v3 >= v1)
    {
      goto LABEL_17;
    }

    goto LABEL_50;
  }

LABEL_49:
  v22 = *(*this + v3) >> (~v2++ & 7);
  this[2] = v2;
  v3 = v2 >> 3;
  v5 |= 2 * (v22 & 1);
  if (v2 >> 3 >= v1)
  {
LABEL_17:
    v6 = v5 + 1;
    *(this + 19) = v5 + 1;
    if (v3 >= v1)
    {
      goto LABEL_18;
    }

    goto LABEL_51;
  }

LABEL_50:
  v23 = (*(*this + v3) >> (~v2++ & 7)) & 1;
  this[2] = v2;
  v3 = v2 >> 3;
  v6 = (v5 | v23) + 1;
  *(this + 19) = v6;
  if (v2 >> 3 >= v1)
  {
LABEL_18:
    v7 = 0;
    if (v3 >= v1)
    {
      goto LABEL_19;
    }

    goto LABEL_52;
  }

LABEL_51:
  v24 = *(*this + v3) >> (~v2++ & 7);
  this[2] = v2;
  v3 = v2 >> 3;
  v7 = (v24 & 1) << 15;
  if (v2 >> 3 >= v1)
  {
LABEL_19:
    if (v3 >= v1)
    {
      goto LABEL_20;
    }

    goto LABEL_53;
  }

LABEL_52:
  v25 = *(*this + v3) >> (~v2++ & 7);
  this[2] = v2;
  v3 = v2 >> 3;
  v7 |= (v25 & 1) << 14;
  if (v2 >> 3 >= v1)
  {
LABEL_20:
    if (v3 >= v1)
    {
      goto LABEL_21;
    }

    goto LABEL_54;
  }

LABEL_53:
  v26 = *(*this + v3) >> (~v2++ & 7);
  this[2] = v2;
  v3 = v2 >> 3;
  v7 |= (v26 & 1) << 13;
  if (v2 >> 3 >= v1)
  {
LABEL_21:
    if (v3 >= v1)
    {
      goto LABEL_22;
    }

    goto LABEL_55;
  }

LABEL_54:
  v27 = *(*this + v3) >> (~v2++ & 7);
  this[2] = v2;
  v3 = v2 >> 3;
  v7 |= (v27 & 1) << 12;
  if (v2 >> 3 >= v1)
  {
LABEL_22:
    if (v3 >= v1)
    {
      goto LABEL_23;
    }

    goto LABEL_56;
  }

LABEL_55:
  v28 = *(*this + v3) >> (~v2++ & 7);
  this[2] = v2;
  v3 = v2 >> 3;
  v7 |= (v28 & 1) << 11;
  if (v2 >> 3 >= v1)
  {
LABEL_23:
    if (v3 >= v1)
    {
      goto LABEL_24;
    }

    goto LABEL_57;
  }

LABEL_56:
  v29 = *(*this + v3) >> (~v2++ & 7);
  this[2] = v2;
  v3 = v2 >> 3;
  v7 |= (v29 & 1) << 10;
  if (v2 >> 3 >= v1)
  {
LABEL_24:
    if (v3 >= v1)
    {
      goto LABEL_25;
    }

    goto LABEL_58;
  }

LABEL_57:
  v30 = *(*this + v3) >> (~v2++ & 7);
  this[2] = v2;
  v3 = v2 >> 3;
  v7 |= (v30 & 1) << 9;
  if (v2 >> 3 >= v1)
  {
LABEL_25:
    if (v3 >= v1)
    {
      goto LABEL_26;
    }

    goto LABEL_59;
  }

LABEL_58:
  v31 = *(*this + v3) >> (~v2++ & 7);
  this[2] = v2;
  v3 = v2 >> 3;
  v7 |= (v31 & 1) << 8;
  if (v2 >> 3 >= v1)
  {
LABEL_26:
    if (v3 >= v1)
    {
      goto LABEL_27;
    }

    goto LABEL_60;
  }

LABEL_59:
  v32 = *(*this + v3) >> (~v2++ & 7);
  this[2] = v2;
  v3 = v2 >> 3;
  v7 |= (v32 & 1) << 7;
  if (v2 >> 3 >= v1)
  {
LABEL_27:
    if (v3 >= v1)
    {
      goto LABEL_28;
    }

    goto LABEL_61;
  }

LABEL_60:
  v33 = *(*this + v3) >> (~v2++ & 7);
  this[2] = v2;
  v3 = v2 >> 3;
  v7 |= (v33 & 1) << 6;
  if (v2 >> 3 >= v1)
  {
LABEL_28:
    if (v3 >= v1)
    {
      goto LABEL_29;
    }

    goto LABEL_62;
  }

LABEL_61:
  v34 = *(*this + v3) >> (~v2++ & 7);
  this[2] = v2;
  v3 = v2 >> 3;
  v7 |= 32 * (v34 & 1);
  if (v2 >> 3 >= v1)
  {
LABEL_29:
    if (v3 >= v1)
    {
      goto LABEL_30;
    }

    goto LABEL_63;
  }

LABEL_62:
  v35 = *(*this + v3) >> (~v2++ & 7);
  this[2] = v2;
  v3 = v2 >> 3;
  v7 |= 16 * (v35 & 1);
  if (v2 >> 3 >= v1)
  {
LABEL_30:
    if (v3 >= v1)
    {
      goto LABEL_31;
    }

    goto LABEL_64;
  }

LABEL_63:
  v36 = *(*this + v3) >> (~v2++ & 7);
  this[2] = v2;
  v3 = v2 >> 3;
  v7 |= 8 * (v36 & 1);
  if (v2 >> 3 >= v1)
  {
LABEL_31:
    if (v3 >= v1)
    {
      goto LABEL_32;
    }

    goto LABEL_65;
  }

LABEL_64:
  v37 = *(*this + v3) >> (~v2++ & 7);
  this[2] = v2;
  v3 = v2 >> 3;
  v7 |= 4 * (v37 & 1);
  if (v2 >> 3 >= v1)
  {
LABEL_32:
    if (v3 >= v1)
    {
      goto LABEL_33;
    }

    goto LABEL_66;
  }

LABEL_65:
  v38 = *(*this + v3) >> (~v2++ & 7);
  this[2] = v2;
  v3 = v2 >> 3;
  v7 |= 2 * (v38 & 1);
  if (v2 >> 3 >= v1)
  {
LABEL_33:
    v8 = v7 + 1;
    *(this + 20) = v7 + 1;
    if (v3 >= v1)
    {
      goto LABEL_101;
    }

    goto LABEL_67;
  }

LABEL_66:
  v39 = (*(*this + v3) >> (~v2++ & 7)) & 1;
  this[2] = v2;
  v3 = v2 >> 3;
  v8 = (v7 | v39) + 1;
  *(this + 20) = v8;
  if (v2 >> 3 >= v1)
  {
LABEL_101:
    *(this + 21) = v6;
    *(this + 22) = v8;
    return this;
  }

LABEL_67:
  v40 = *this;
  v41 = *(*this + v3);
  v42 = v2 + 1;
  this[2] = v2 + 1;
  if (((v41 >> (~v2 & 7)) & 1) == 0)
  {
    goto LABEL_101;
  }

  v43 = v42 >> 3;
  if (v42 >> 3 >= v1)
  {
    v45 = 0;
LABEL_70:
    if (v43 >= v1)
    {
      goto LABEL_71;
    }

    goto LABEL_104;
  }

  v44 = *(v40 + v43) >> (~v42 & 7);
  v42 = v2 + 2;
  this[2] = v2 + 2;
  v43 = (v2 + 2) >> 3;
  v45 = (v44 & 1) << 15;
  if (v43 >= v1)
  {
    goto LABEL_70;
  }

  v47 = *(v40 + v43) >> (~v42++ & 7);
  this[2] = v42;
  v43 = v42 >> 3;
  v45 |= (v47 & 1) << 14;
  if (v42 >> 3 >= v1)
  {
LABEL_71:
    if (v43 >= v1)
    {
      goto LABEL_72;
    }

    goto LABEL_105;
  }

LABEL_104:
  v48 = *(v40 + v43) >> (~v42++ & 7);
  this[2] = v42;
  v43 = v42 >> 3;
  v45 |= (v48 & 1) << 13;
  if (v42 >> 3 >= v1)
  {
LABEL_72:
    if (v43 >= v1)
    {
      goto LABEL_73;
    }

    goto LABEL_106;
  }

LABEL_105:
  v49 = *(v40 + v43) >> (~v42++ & 7);
  this[2] = v42;
  v43 = v42 >> 3;
  v45 |= (v49 & 1) << 12;
  if (v42 >> 3 >= v1)
  {
LABEL_73:
    if (v43 >= v1)
    {
      goto LABEL_74;
    }

    goto LABEL_107;
  }

LABEL_106:
  v50 = *(v40 + v43) >> (~v42++ & 7);
  this[2] = v42;
  v43 = v42 >> 3;
  v45 |= (v50 & 1) << 11;
  if (v42 >> 3 >= v1)
  {
LABEL_74:
    if (v43 >= v1)
    {
      goto LABEL_75;
    }

    goto LABEL_108;
  }

LABEL_107:
  v51 = *(v40 + v43) >> (~v42++ & 7);
  this[2] = v42;
  v43 = v42 >> 3;
  v45 |= (v51 & 1) << 10;
  if (v42 >> 3 >= v1)
  {
LABEL_75:
    if (v43 >= v1)
    {
      goto LABEL_76;
    }

    goto LABEL_109;
  }

LABEL_108:
  v52 = *(v40 + v43) >> (~v42++ & 7);
  this[2] = v42;
  v43 = v42 >> 3;
  v45 |= (v52 & 1) << 9;
  if (v42 >> 3 >= v1)
  {
LABEL_76:
    if (v43 >= v1)
    {
      goto LABEL_77;
    }

    goto LABEL_110;
  }

LABEL_109:
  v53 = *(v40 + v43) >> (~v42++ & 7);
  this[2] = v42;
  v43 = v42 >> 3;
  v45 |= (v53 & 1) << 8;
  if (v42 >> 3 >= v1)
  {
LABEL_77:
    if (v43 >= v1)
    {
      goto LABEL_78;
    }

    goto LABEL_111;
  }

LABEL_110:
  v54 = *(v40 + v43) >> (~v42++ & 7);
  this[2] = v42;
  v43 = v42 >> 3;
  v45 |= (v54 & 1) << 7;
  if (v42 >> 3 >= v1)
  {
LABEL_78:
    if (v43 >= v1)
    {
      goto LABEL_79;
    }

    goto LABEL_112;
  }

LABEL_111:
  v55 = *(v40 + v43) >> (~v42++ & 7);
  this[2] = v42;
  v43 = v42 >> 3;
  v45 |= (v55 & 1) << 6;
  if (v42 >> 3 >= v1)
  {
LABEL_79:
    if (v43 >= v1)
    {
      goto LABEL_80;
    }

    goto LABEL_113;
  }

LABEL_112:
  v56 = *(v40 + v43) >> (~v42++ & 7);
  this[2] = v42;
  v43 = v42 >> 3;
  v45 |= 32 * (v56 & 1);
  if (v42 >> 3 >= v1)
  {
LABEL_80:
    if (v43 >= v1)
    {
      goto LABEL_81;
    }

    goto LABEL_114;
  }

LABEL_113:
  v57 = *(v40 + v43) >> (~v42++ & 7);
  this[2] = v42;
  v43 = v42 >> 3;
  v45 |= 16 * (v57 & 1);
  if (v42 >> 3 >= v1)
  {
LABEL_81:
    if (v43 >= v1)
    {
      goto LABEL_82;
    }

    goto LABEL_115;
  }

LABEL_114:
  v58 = *(v40 + v43) >> (~v42++ & 7);
  this[2] = v42;
  v43 = v42 >> 3;
  v45 |= 8 * (v58 & 1);
  if (v42 >> 3 >= v1)
  {
LABEL_82:
    if (v43 >= v1)
    {
      goto LABEL_83;
    }

    goto LABEL_116;
  }

LABEL_115:
  v59 = *(v40 + v43) >> (~v42++ & 7);
  this[2] = v42;
  v43 = v42 >> 3;
  v45 |= 4 * (v59 & 1);
  if (v42 >> 3 >= v1)
  {
LABEL_83:
    if (v43 >= v1)
    {
      goto LABEL_84;
    }

    goto LABEL_117;
  }

LABEL_116:
  v60 = *(v40 + v43) >> (~v42++ & 7);
  this[2] = v42;
  v43 = v42 >> 3;
  v45 |= 2 * (v60 & 1);
  if (v42 >> 3 >= v1)
  {
LABEL_84:
    *(this + 21) = v45 + 1;
    if (v43 >= v1)
    {
      goto LABEL_85;
    }

    goto LABEL_118;
  }

LABEL_117:
  v61 = (*(v40 + v43) >> (~v42++ & 7)) & 1;
  this[2] = v42;
  v43 = v42 >> 3;
  *(this + 21) = (v45 | v61) + 1;
  if (v42 >> 3 >= v1)
  {
LABEL_85:
    v46 = 0;
    if (v43 >= v1)
    {
      goto LABEL_86;
    }

    goto LABEL_119;
  }

LABEL_118:
  v62 = *(v40 + v43) >> (~v42++ & 7);
  this[2] = v42;
  v43 = v42 >> 3;
  v46 = (v62 & 1) << 15;
  if (v42 >> 3 >= v1)
  {
LABEL_86:
    if (v43 >= v1)
    {
      goto LABEL_87;
    }

    goto LABEL_120;
  }

LABEL_119:
  v63 = *(v40 + v43) >> (~v42++ & 7);
  this[2] = v42;
  v43 = v42 >> 3;
  v46 |= (v63 & 1) << 14;
  if (v42 >> 3 >= v1)
  {
LABEL_87:
    if (v43 >= v1)
    {
      goto LABEL_88;
    }

    goto LABEL_121;
  }

LABEL_120:
  v64 = *(v40 + v43) >> (~v42++ & 7);
  this[2] = v42;
  v43 = v42 >> 3;
  v46 |= (v64 & 1) << 13;
  if (v42 >> 3 >= v1)
  {
LABEL_88:
    if (v43 >= v1)
    {
      goto LABEL_89;
    }

    goto LABEL_122;
  }

LABEL_121:
  v65 = *(v40 + v43) >> (~v42++ & 7);
  this[2] = v42;
  v43 = v42 >> 3;
  v46 |= (v65 & 1) << 12;
  if (v42 >> 3 >= v1)
  {
LABEL_89:
    if (v43 >= v1)
    {
      goto LABEL_90;
    }

    goto LABEL_123;
  }

LABEL_122:
  v66 = *(v40 + v43) >> (~v42++ & 7);
  this[2] = v42;
  v43 = v42 >> 3;
  v46 |= (v66 & 1) << 11;
  if (v42 >> 3 >= v1)
  {
LABEL_90:
    if (v43 >= v1)
    {
      goto LABEL_91;
    }

    goto LABEL_124;
  }

LABEL_123:
  v67 = *(v40 + v43) >> (~v42++ & 7);
  this[2] = v42;
  v43 = v42 >> 3;
  v46 |= (v67 & 1) << 10;
  if (v42 >> 3 >= v1)
  {
LABEL_91:
    if (v43 >= v1)
    {
      goto LABEL_92;
    }

    goto LABEL_125;
  }

LABEL_124:
  v68 = *(v40 + v43) >> (~v42++ & 7);
  this[2] = v42;
  v43 = v42 >> 3;
  v46 |= (v68 & 1) << 9;
  if (v42 >> 3 >= v1)
  {
LABEL_92:
    if (v43 >= v1)
    {
      goto LABEL_93;
    }

    goto LABEL_126;
  }

LABEL_125:
  v69 = *(v40 + v43) >> (~v42++ & 7);
  this[2] = v42;
  v43 = v42 >> 3;
  v46 |= (v69 & 1) << 8;
  if (v42 >> 3 >= v1)
  {
LABEL_93:
    if (v43 >= v1)
    {
      goto LABEL_94;
    }

    goto LABEL_127;
  }

LABEL_126:
  v70 = *(v40 + v43) >> (~v42++ & 7);
  this[2] = v42;
  v43 = v42 >> 3;
  v46 |= (v70 & 1) << 7;
  if (v42 >> 3 >= v1)
  {
LABEL_94:
    if (v43 >= v1)
    {
      goto LABEL_95;
    }

    goto LABEL_128;
  }

LABEL_127:
  v71 = *(v40 + v43) >> (~v42++ & 7);
  this[2] = v42;
  v43 = v42 >> 3;
  v46 |= (v71 & 1) << 6;
  if (v42 >> 3 >= v1)
  {
LABEL_95:
    if (v43 >= v1)
    {
      goto LABEL_96;
    }

    goto LABEL_129;
  }

LABEL_128:
  v72 = *(v40 + v43) >> (~v42++ & 7);
  this[2] = v42;
  v43 = v42 >> 3;
  v46 |= 32 * (v72 & 1);
  if (v42 >> 3 >= v1)
  {
LABEL_96:
    if (v43 >= v1)
    {
      goto LABEL_97;
    }

    goto LABEL_130;
  }

LABEL_129:
  v73 = *(v40 + v43) >> (~v42++ & 7);
  this[2] = v42;
  v43 = v42 >> 3;
  v46 |= 16 * (v73 & 1);
  if (v42 >> 3 >= v1)
  {
LABEL_97:
    if (v43 >= v1)
    {
      goto LABEL_98;
    }

    goto LABEL_131;
  }

LABEL_130:
  v74 = *(v40 + v43) >> (~v42++ & 7);
  this[2] = v42;
  v43 = v42 >> 3;
  v46 |= 8 * (v74 & 1);
  if (v42 >> 3 >= v1)
  {
LABEL_98:
    if (v43 >= v1)
    {
      goto LABEL_99;
    }

LABEL_132:
    v76 = *(v40 + v43) >> (~v42++ & 7);
    this[2] = v42;
    v43 = v42 >> 3;
    v46 |= 2 * (v76 & 1);
    if (v42 >> 3 >= v1)
    {
      goto LABEL_100;
    }

    goto LABEL_133;
  }

LABEL_131:
  v75 = *(v40 + v43) >> (~v42++ & 7);
  this[2] = v42;
  v43 = v42 >> 3;
  v46 |= 4 * (v75 & 1);
  if (v42 >> 3 < v1)
  {
    goto LABEL_132;
  }

LABEL_99:
  if (v43 >= v1)
  {
LABEL_100:
    *(this + 22) = v46 + 1;
    return this;
  }

LABEL_133:
  v77 = (*(v40 + v43) >> (~v42 & 7)) & 1;
  this[2] = v42 + 1;
  *(this + 22) = (v46 | v77) + 1;
  return this;
}