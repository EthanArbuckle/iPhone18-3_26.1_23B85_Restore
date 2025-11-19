void sirinluexternalnlu_router::NLRouterServiceResponse::~NLRouterServiceResponse(sirinluexternalnlu_router::NLRouterServiceResponse *this)
{
  sirinluexternalnlu_router::NLRouterServiceResponse::~NLRouterServiceResponse(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4875CA0;
  v4 = (this + 48);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (this + 24);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v2);
  }

  v3 = *(this + 1);
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  PB::Base::~Base(this);
}

double sirinluexternalnlu_router::NLRouterServiceResponse::NLRouterServiceResponse(sirinluexternalnlu_router::NLRouterServiceResponse *this)
{
  *this = &unk_1F4875CA0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  return result;
}

{
  *this = &unk_1F4875CA0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  return result;
}

uint64_t sirinluexternalnlu_router::NLRouterServiceResponse::NLRouterServiceResponse(uint64_t this, const sirinluexternalnlu_router::NLRouterServiceResponse *a2)
{
  *this = &unk_1F4875CA0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  if (*(a2 + 84))
  {
    v3 = *(a2 + 18);
    *(this + 84) = 1;
    *(this + 72) = v3;
    v2 = 5;
    if ((*(a2 + 84) & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v2 = 4;
  if ((*(a2 + 84) & 4) != 0)
  {
LABEL_5:
    v4 = *(a2 + 20);
    *(this + 84) = v2;
    *(this + 80) = v4;
  }

LABEL_6:
  v5 = *(a2 + 6);
  if (v5 != *(a2 + 7))
  {
    v6 = *v5;
    PB::PtrVector<sirinluexternalnlu_router::NLRouterRewriteUtterance>::emplace_back<sirinluexternalnlu_router::NLRouterRewriteUtterance const&>();
  }

  v7 = *(a2 + 3);
  if (v7 != *(a2 + 4))
  {
    v8 = *v7;
    PB::PtrVector<sirinluexternalnlu_router::NLRouterRewriteUtterance>::emplace_back<sirinluexternalnlu_router::NLRouterRewriteUtterance const&>();
  }

  if ((*(a2 + 84) & 2) != 0)
  {
    v9 = *(a2 + 19);
    *(this + 84) |= 2u;
    *(this + 76) = v9;
  }

  if (*(a2 + 1))
  {
    operator new();
  }

  if (*(a2 + 2))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternalnlu_router::NLRouterServiceResponse::operator=(uint64_t a1, const sirinluexternalnlu_router::NLRouterServiceResponse *a2)
{
  if (a1 != a2)
  {
    sirinluexternalnlu_router::NLRouterServiceResponse::NLRouterServiceResponse(v10, a2);
    v3 = *(a1 + 56);
    *(a1 + 56) = v14;
    v4 = v13;
    v5 = *(a1 + 24);
    *(a1 + 24) = v12;
    v6 = *(a1 + 40);
    *(a1 + 40) = v4;
    v13 = v6;
    v14 = v3;
    *&v4 = v16;
    v7 = *(a1 + 72);
    *&v3 = *(a1 + 80);
    *(a1 + 72) = v15;
    *(a1 + 80) = v4;
    v15 = v7;
    v16 = v3;
    v8 = *(a1 + 8);
    *(a1 + 8) = v11;
    v11 = v8;
    v12 = v5;
    sirinluexternalnlu_router::NLRouterServiceResponse::~NLRouterServiceResponse(v10);
  }

  return a1;
}

double sirinluexternalnlu_router::swap(sirinluexternalnlu_router *this, sirinluexternalnlu_router::NLRouterServiceResponse *a2, sirinluexternalnlu_router::NLRouterServiceResponse *a3)
{
  v3 = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v3;
  v4 = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v4;
  v5 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v5;
  v6 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v6;
  v7 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v7;
  v8 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v8;
  v9 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v9;
  v10 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v10;
  result = *(a2 + 9);
  v12 = *(this + 9);
  *(this + 9) = result;
  *(a2 + 9) = v12;
  v13 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v13;
  v14 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v14;
  return result;
}

uint64_t sirinluexternalnlu_router::NLRouterServiceResponse::NLRouterServiceResponse(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4875CA0;
  *(a1 + 8) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 24) = 0u;
  v4 = (a1 + 24);
  *(a1 + 84) = *(a2 + 84);
  *(a2 + 84) = 0;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__vdeallocate((a1 + 48));
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__vdeallocate(v4);
  *v4 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 24) = 0;
  *(a1 + 76) = *(a2 + 76);
  v5 = *(a2 + 8);
  *(a2 + 8) = 0;
  v6 = *(a1 + 8);
  *(a1 + 8) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(a2 + 16);
  *(a2 + 16) = 0;
  v8 = *(a1 + 16);
  *(a1 + 16) = v7;
  if (v8)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v8);
  }

  return a1;
}

uint64_t sirinluexternalnlu_router::NLRouterServiceResponse::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluexternalnlu_router::NLRouterServiceResponse::NLRouterServiceResponse(v10, a2);
    v3 = *(a1 + 56);
    *(a1 + 56) = v14;
    v4 = v13;
    v5 = *(a1 + 24);
    *(a1 + 24) = v12;
    v6 = *(a1 + 40);
    *(a1 + 40) = v4;
    v13 = v6;
    v14 = v3;
    *&v4 = v16;
    v7 = *(a1 + 72);
    *&v3 = *(a1 + 80);
    *(a1 + 72) = v15;
    *(a1 + 80) = v4;
    v15 = v7;
    v16 = v3;
    v8 = *(a1 + 8);
    *(a1 + 8) = v11;
    v11 = v8;
    v12 = v5;
    sirinluexternalnlu_router::NLRouterServiceResponse::~NLRouterServiceResponse(v10);
  }

  return a1;
}

BOOL sirinluexternalnlu_router::NLRouterServiceResponse::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 84);
  v5 = *(a2 + 84);
  if (v4)
  {
    if ((*(a2 + 84) & 1) == 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if (*(a2 + 84))
  {
    return 0;
  }

  if ((*(a1 + 84) & 4) != 0)
  {
    if ((*(a2 + 84) & 4) == 0 || *(a1 + 80) != *(a2 + 80))
    {
      return 0;
    }
  }

  else if ((*(a2 + 84) & 4) != 0)
  {
    return 0;
  }

  result = PB::PtrVector<sirinluexternalnlu_router::NLRouterRewriteUtterance>::operator==(*(a1 + 48), *(a1 + 56), *(a2 + 48), *(a2 + 56));
  if (result)
  {
    result = PB::PtrVector<sirinluexternalnlu_router::NLRouterRewriteUtterance>::operator==(*(a1 + 24), *(a1 + 32), *(a2 + 24), *(a2 + 32));
    if (result)
    {
      if ((v4 & 2) != 0)
      {
        if ((v5 & 2) == 0 || *(a1 + 76) != *(a2 + 76))
        {
          return 0;
        }
      }

      else if ((v5 & 2) != 0)
      {
        return 0;
      }

      v7 = *(a1 + 8);
      v8 = *(a2 + 8);
      if (v7)
      {
        if (!v8 || (sirinluexternalnlu_router::NLRoutingGenAIMetadata::operator==(v7, v8) & 1) == 0)
        {
          return 0;
        }
      }

      else if (v8)
      {
        return 0;
      }

      v9 = *(a1 + 16);
      v10 = *(a2 + 16);
      result = (v9 | v10) == 0;
      if (v9 && v10)
      {
        v11 = *(a1 + 16);

        return std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(v11, v10);
      }
    }
  }

  return result;
}

BOOL PB::PtrVector<sirinluexternalnlu_router::NLRouterRewriteUtterance>::operator==(char *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a2 - a1 != a4 - a3)
  {
    return 0;
  }

  v5 = a1;
  if (a1 == a2)
  {
    return 1;
  }

  v6 = a3;
  do
  {
    v8 = *v5++;
    v7 = v8;
    v9 = *v6++;
    result = sirinluexternalnlu_router::NLRouterRewriteUtterance::operator==(v7, v9);
  }

  while (result && v5 != a2);
  return result;
}

unint64_t sirinluexternalnlu_router::NLRouterServiceResponse::hash_value(sirinluexternalnlu_router::NLRouterServiceResponse *this)
{
  v2 = *(this + 84);
  if (v2)
  {
    v3 = *(this + 18);
    if ((*(this + 84) & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 84) & 4) != 0)
    {
LABEL_3:
      v4 = *(this + 20);
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = *(this + 6);
  v6 = *(this + 7);
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    do
    {
      v8 = *v5++;
      v7 ^= sirinluexternalnlu_router::NLRouterRewriteUtterance::hash_value(v8);
    }

    while (v5 != v6);
  }

  v9 = *(this + 3);
  v10 = *(this + 4);
  if (v9 == v10)
  {
    v11 = 0;
    if ((v2 & 2) == 0)
    {
LABEL_15:
      v13 = 0;
      goto LABEL_18;
    }
  }

  else
  {
    v11 = 0;
    do
    {
      v12 = *v9++;
      v11 ^= sirinluexternalnlu_router::NLRouterRewriteUtterance::hash_value(v12);
    }

    while (v9 != v10);
    if ((v2 & 2) == 0)
    {
      goto LABEL_15;
    }
  }

  v13 = *(this + 19);
LABEL_18:
  v14 = *(this + 1);
  if (v14)
  {
    v15 = sirinluexternalnlu_router::NLRoutingGenAIMetadata::hash_value(v14);
  }

  else
  {
    v15 = 0;
  }

  v16 = *(this + 2);
  if (v16)
  {
    v16 = std::__string_hash<char>::operator()[abi:ne200100](v16);
  }

  return v4 ^ v3 ^ v7 ^ v13 ^ v15 ^ v16 ^ v11;
}

uint64_t sirinluexternalnlu_router::NLRouterServiceResponse::makeGenAiMetadata(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternalnlu_router::SpanMatchedEntity::formatText(sirinluexternalnlu_router::SpanMatchedEntity *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, a2, "matchMetadata");
  }

  v8 = *(this + 4);
  if (v8)
  {
    (*(*v8 + 32))(v8, a2, "typedValue");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternalnlu_router::SpanMatchedEntity::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 32);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  v6 = *(v3 + 8);
  v5 = *(v3 + 16);
  while (v6 != v5)
  {
    v7 = *v6++;
    this = PB::Writer::writeSubmessage(a2, v7);
  }

  return this;
}

uint64_t sirinluexternalnlu_router::SpanMatchedEntity::readFrom(sirinluexternalnlu_router::SpanMatchedEntity *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v6 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = (v6 + v2);
      v11 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v11;
        v12 = *v10++;
        v9 |= (v12 & 0x7F) << v7;
        if ((v12 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        ++v11;
        v13 = v8++ > 8;
        if (v13)
        {
          goto LABEL_22;
        }
      }

LABEL_18:
      if ((v9 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_29;
      }

      if ((v9 >> 3) == 2)
      {
        operator new();
      }

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

LABEL_22:
      if ((PB::Reader::skip(a2) & 1) == 0)
      {
        v22 = 0;
        return v22 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_29;
      }
    }

    v14 = 0;
    v15 = 0;
    v9 = 0;
    v16 = (v6 + v2);
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = v2 + 1;
    while (v18)
    {
      v20 = *v16;
      *(a2 + 1) = v19;
      v9 |= (v20 & 0x7F) << v14;
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      v14 += 7;
      ++v16;
      --v18;
      ++v19;
      v13 = v15++ > 8;
      if (v13)
      {
        goto LABEL_22;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_29:
  v22 = v4 ^ 1;
  return v22 & 1;
}

void sirinluexternalnlu_router::SpanMatchedEntity::~SpanMatchedEntity(sirinluexternalnlu_router::SpanMatchedEntity *this)
{
  sirinluexternalnlu_router::SpanMatchedEntity::~SpanMatchedEntity(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4875CF0;
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 1))
  {
    std::vector<std::unique_ptr<siricommon::StringValue>>::clear[abi:ne200100](this + 1);
    operator delete(*(this + 1));
  }

  PB::Base::~Base(this);
}

double sirinluexternalnlu_router::SpanMatchedEntity::SpanMatchedEntity(sirinluexternalnlu_router::SpanMatchedEntity *this)
{
  *this = &unk_1F4875CF0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = &unk_1F4875CF0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

uint64_t sirinluexternalnlu_router::SpanMatchedEntity::SpanMatchedEntity(uint64_t this, const sirinluexternalnlu_router::SpanMatchedEntity *a2)
{
  *this = &unk_1F4875CF0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  if (*(a2 + 4))
  {
    operator new();
  }

  v2 = *(a2 + 1);
  if (v2 != *(a2 + 2))
  {
    v3 = *v2;
    operator new();
  }

  return this;
}

uint64_t sirinluexternalnlu_router::SpanMatchedEntity::operator=(uint64_t a1, const sirinluexternalnlu_router::SpanMatchedEntity *a2)
{
  if (a1 != a2)
  {
    sirinluexternalnlu_router::SpanMatchedEntity::SpanMatchedEntity(v7, a2);
    v3 = v9;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v5 = *(a1 + 24);
    *(a1 + 24) = v3;
    v8 = v4;
    v9 = v5;
    sirinluexternalnlu_router::SpanMatchedEntity::~SpanMatchedEntity(v7);
  }

  return a1;
}

void *sirinluexternalnlu_router::swap(void *this, sirinluexternalnlu_router::SpanMatchedEntity *a2, sirinluexternalnlu_router::SpanMatchedEntity *a3)
{
  v3 = this[4];
  this[4] = *(a2 + 4);
  *(a2 + 4) = v3;
  v4 = this[1];
  this[1] = *(a2 + 1);
  *(a2 + 1) = v4;
  v5 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v5;
  v6 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v6;
  return this;
}

uint64_t sirinluexternalnlu_router::SpanMatchedEntity::SpanMatchedEntity(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *a1 = &unk_1F4875CF0;
  *(a1 + 24) = 0u;
  v5 = *(a2 + 32);
  *(a2 + 32) = 0;
  v6 = *(a1 + 32);
  *(a1 + 32) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
    if (*v4)
    {
      std::vector<std::unique_ptr<siricommon::StringValue>>::clear[abi:ne200100](v4);
      operator delete(*v4);
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
    }
  }

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return a1;
}

uint64_t sirinluexternalnlu_router::SpanMatchedEntity::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluexternalnlu_router::SpanMatchedEntity::SpanMatchedEntity(v7, a2);
    v3 = v9;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v5 = *(a1 + 24);
    *(a1 + 24) = v3;
    v8 = v4;
    v9 = v5;
    sirinluexternalnlu_router::SpanMatchedEntity::~SpanMatchedEntity(v7);
  }

  return a1;
}

BOOL sirinluexternalnlu_router::SpanMatchedEntity::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a2 + 32);
  if (v4)
  {
    if (!v5 || !sirinluexternalnlu_router::TypedValue::operator==(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v8 = a1 + 8;
  v6 = *(a1 + 8);
  v7 = *(v8 + 8);
  v10 = a2 + 8;
  v9 = *(a2 + 8);
  if (v7 - v6 != *(v10 + 8) - v9)
  {
    return 0;
  }

  if (v6 == v7)
  {
    return 1;
  }

  do
  {
    v12 = *v6++;
    v11 = v12;
    v13 = *v9++;
    result = sirinluexternalnlu_router::EntityMatch::operator==(v11, v13);
  }

  while (result && v6 != v7);
  return result;
}

unint64_t sirinluexternalnlu_router::SpanMatchedEntity::hash_value(sirinluexternalnlu_router::SpanMatchedEntity *this)
{
  v2 = *(this + 4);
  if (v2 && (v3 = *(v2 + 8)) != 0)
  {
    v4 = sirinluexternalnlu_router::PrimitiveValue::hash_value(v3);
  }

  else
  {
    v4 = 0;
  }

  v6 = *(this + 1);
  v5 = *(this + 2);
  if (v6 == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    do
    {
      v8 = *v6++;
      v7 ^= sirinluexternalnlu_router::EntityMatch::hash_value(v8);
    }

    while (v6 != v5);
  }

  return v7 ^ v4;
}

uint64_t sirinluexternalnlu_router::SpanMatchedEntity::makeTypedValue(uint64_t this)
{
  if (!*(this + 32))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternalnlu_router::Custom::formatText(sirinluexternalnlu_router::Custom *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 1))
  {
    PB::TextFormatter::format();
  }

  if (*(this + 2))
  {
    PB::TextFormatter::format();
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternalnlu_router::Custom::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = this;
  if (*(this + 8))
  {
    this = PB::Writer::write();
  }

  if (*(v2 + 16))
  {

    return PB::Writer::write();
  }

  return this;
}

uint64_t sirinluexternalnlu_router::Custom::readFrom(sirinluexternalnlu_router::Custom *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v6 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = (v6 + v2);
      v11 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v11;
        v12 = *v10++;
        v9 |= (v12 & 0x7F) << v7;
        if ((v12 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        ++v11;
        v13 = v8++ > 8;
        if (v13)
        {
          goto LABEL_22;
        }
      }

LABEL_18:
      if ((v9 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_28;
      }

      if ((v9 >> 3) == 2)
      {
        operator new();
      }

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

LABEL_22:
      if ((PB::Reader::skip(a2) & 1) == 0)
      {
        v21 = 0;
        return v21 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_28;
      }
    }

    v14 = 0;
    v15 = 0;
    v9 = 0;
    v16 = (v6 + v2);
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = v2 + 1;
    while (v18)
    {
      v20 = *v16;
      *(a2 + 1) = v19;
      v9 |= (v20 & 0x7F) << v14;
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      v14 += 7;
      ++v16;
      --v18;
      ++v19;
      v13 = v15++ > 8;
      if (v13)
      {
        goto LABEL_22;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_28:
  v21 = v4 ^ 1;
  return v21 & 1;
}

void sirinluexternalnlu_router::Custom::~Custom(sirinluexternalnlu_router::Custom *this)
{
  sirinluexternalnlu_router::Custom::~Custom(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4875D40;
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v2);
  }

  v3 = *(this + 1);
  *(this + 1) = 0;
  if (v3)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v3);
  }

  PB::Base::~Base(this);
}

void *sirinluexternalnlu_router::Custom::Custom(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4875D40;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4875D40;
  return this;
}

void *sirinluexternalnlu_router::Custom::Custom(void *this, const sirinluexternalnlu_router::Custom *a2)
{
  *this = &unk_1F4875D40;
  this[1] = 0;
  this[2] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  if (*(a2 + 2))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternalnlu_router::Custom::operator=(uint64_t a1, const sirinluexternalnlu_router::Custom *a2)
{
  if (a1 != a2)
  {
    sirinluexternalnlu_router::Custom::Custom(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    sirinluexternalnlu_router::Custom::~Custom(&v5);
  }

  return a1;
}

uint64_t sirinluexternalnlu_router::swap(uint64_t this, sirinluexternalnlu_router::Custom *a2, sirinluexternalnlu_router::Custom *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  v4 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v4;
  return this;
}

void *sirinluexternalnlu_router::Custom::Custom(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F4875D40;
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;
  v5 = a1[1];
  a1[1] = v4;
  if (v5)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v5);
  }

  v6 = *(a2 + 16);
  *(a2 + 16) = 0;
  v7 = a1[2];
  a1[2] = v6;
  if (v7)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v7);
  }

  return a1;
}

uint64_t sirinluexternalnlu_router::Custom::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluexternalnlu_router::Custom::Custom(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    sirinluexternalnlu_router::Custom::~Custom(&v5);
  }

  return a1;
}

BOOL sirinluexternalnlu_router::Custom::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (!v4)
  {
    if (!v5)
    {
      goto LABEL_20;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  v6 = *(v4 + 23);
  if (v6 >= 0)
  {
    v7 = *(v4 + 23);
  }

  else
  {
    v7 = *(v4 + 8);
  }

  v8 = *(v5 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(v5 + 8);
  }

  if (v7 != v8)
  {
    return 0;
  }

  v10 = v6 >= 0 ? *(a1 + 8) : *v4;
  v11 = v9 >= 0 ? *(a2 + 8) : *v5;
  if (memcmp(v10, v11, v7))
  {
    return 0;
  }

LABEL_20:
  v13 = *(a1 + 16);
  v14 = *(a2 + 16);
  result = v14 == 0;
  if (v13)
  {
    if (v14)
    {
      v15 = *(v13 + 23);
      if (v15 >= 0)
      {
        v16 = *(v13 + 23);
      }

      else
      {
        v16 = *(v13 + 8);
      }

      v17 = *(v14 + 23);
      v18 = v17;
      if ((v17 & 0x80u) != 0)
      {
        v17 = *(v14 + 8);
      }

      if (v16 == v17)
      {
        v19 = v15 >= 0 ? *(a1 + 16) : *v13;
        v20 = v18 >= 0 ? *(a2 + 16) : *v14;
        if (!memcmp(v19, v20, v16))
        {
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

unint64_t sirinluexternalnlu_router::Custom::hash_value(sirinluexternalnlu_router::Custom *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    v3 = std::__string_hash<char>::operator()[abi:ne200100](v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 2);
  if (v4)
  {
    v4 = std::__string_hash<char>::operator()[abi:ne200100](v4);
  }

  return v4 ^ v3;
}

uint64_t sirinluexternalnlu_router::AliasTypes::formatText(sirinluexternalnlu_router::AliasTypes *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(a2, "options");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternalnlu_router::AliasTypes::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  for (i = *(this + 16); v2 != i; this = PB::Writer::writeVarInt(a2))
  {
    v5 = *v2++;
  }

  return this;
}

uint64_t sirinluexternalnlu_router::AliasTypes::readFrom(sirinluexternalnlu_router::AliasTypes *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v2);
      v12 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v12;
        v13 = *v11++;
        v10 |= (v13 & 0x7F) << v8;
        if ((v13 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        ++v12;
        v39 = v9++ > 8;
        if (v39)
        {
          goto LABEL_59;
        }
      }

LABEL_18:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_97;
      }

      if ((v10 >> 3) == 1)
      {
        if ((v10 & 7) == 2)
        {
          if (PB::Reader::placeMark())
          {
            goto LABEL_99;
          }

          if (*(a2 + 1) < *(a2 + 2) && (*(a2 + 24) & 1) == 0)
          {
            v21 = *(this + 2);
            while (1)
            {
              v22 = *(this + 3);
              if (v21 >= v22)
              {
                v23 = *(this + 1);
                v24 = v21 - v23;
                v25 = (v21 - v23) >> 2;
                v26 = v25 + 1;
                if ((v25 + 1) >> 62)
                {
                  goto LABEL_101;
                }

                v27 = v22 - v23;
                if (v27 >> 1 > v26)
                {
                  v26 = v27 >> 1;
                }

                if (v27 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v28 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v28 = v26;
                }

                if (v28)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(v28);
                }

                v29 = (v21 - v23) >> 2;
                v30 = (4 * v25);
                v31 = (4 * v25 - 4 * v29);
                *v30 = 0;
                v21 = (v30 + 1);
                memcpy(v31, v23, v24);
                v32 = *(this + 1);
                *(this + 1) = v31;
                *(this + 2) = v21;
                *(this + 3) = 0;
                if (v32)
                {
                  operator delete(v32);
                }
              }

              else
              {
                *v21 = 0;
                v21 += 4;
              }

              *(this + 2) = v21;
              v34 = *(a2 + 1);
              v33 = *(a2 + 2);
              v35 = *a2;
              v36 = 0;
              v37 = 0;
              v38 = 0;
              v39 = v34 > 0xFFFFFFFFFFFFFFF5 || v34 + 10 > v33;
              if (v39)
              {
                break;
              }

              v43 = (v35 + v34);
              v44 = v34 + 1;
              while (1)
              {
                v41 = v44;
                *(a2 + 1) = v44;
                v45 = *v43++;
                v38 |= (v45 & 0x7F) << v36;
                if ((v45 & 0x80) == 0)
                {
                  break;
                }

                v36 += 7;
                ++v44;
                v39 = v37++ > 8;
                if (v39)
                {
                  goto LABEL_53;
                }
              }

LABEL_56:
              *(v21 - 1) = v38;
              if (v41 >= v33 || (*(a2 + 24) & 1) != 0)
              {
                goto LABEL_74;
              }
            }

            if (v33 <= v34)
            {
              v40 = *(a2 + 1);
            }

            else
            {
              v40 = *(a2 + 2);
            }

            while (v40 != v34)
            {
              v41 = v34 + 1;
              v42 = *(v35 + v34);
              *(a2 + 1) = v41;
              v38 |= (v42 & 0x7F) << v36;
              if ((v42 & 0x80) == 0)
              {
                if (*(a2 + 24))
                {
                  LODWORD(v38) = 0;
                }

                goto LABEL_56;
              }

              v36 += 7;
              v34 = v41;
              v39 = v37++ > 8;
              if (v39)
              {
LABEL_53:
                LODWORD(v38) = 0;
                goto LABEL_56;
              }
            }

            *(a2 + 24) = 1;
            *(v21 - 1) = 0;
          }

LABEL_74:
          PB::Reader::recallMark();
        }

        else
        {
          v47 = *(this + 2);
          v46 = *(this + 3);
          if (v47 >= v46)
          {
            v49 = *(this + 1);
            v50 = v47 - v49;
            v51 = (v47 - v49) >> 2;
            v52 = v51 + 1;
            if ((v51 + 1) >> 62)
            {
LABEL_101:
              std::vector<std::unique_ptr<siricommon::StringValue>>::__throw_length_error[abi:ne200100]();
            }

            v53 = v46 - v49;
            if (v53 >> 1 > v52)
            {
              v52 = v53 >> 1;
            }

            if (v53 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v54 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v54 = v52;
            }

            if (v54)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(v54);
            }

            v55 = (v47 - v49) >> 2;
            v56 = (4 * v51);
            v57 = (4 * v51 - 4 * v55);
            *v56 = 0;
            v48 = v56 + 1;
            memcpy(v57, v49, v50);
            v58 = *(this + 1);
            *(this + 1) = v57;
            *(this + 2) = v48;
            *(this + 3) = 0;
            if (v58)
            {
              operator delete(v58);
            }
          }

          else
          {
            *v47 = 0;
            v48 = v47 + 4;
          }

          *(this + 2) = v48;
          v60 = *(a2 + 1);
          v59 = *(a2 + 2);
          v61 = *a2;
          if (v60 > 0xFFFFFFFFFFFFFFF5 || v60 + 10 > v59)
          {
            v68 = 0;
            v69 = 0;
            v64 = 0;
            v70 = (v61 + v60);
            v17 = v59 >= v60;
            v71 = v59 - v60;
            if (!v17)
            {
              v71 = 0;
            }

            v72 = v60 + 1;
            while (1)
            {
              if (!v71)
              {
                LODWORD(v64) = 0;
                *(a2 + 24) = 1;
                goto LABEL_95;
              }

              v73 = *v70;
              *(a2 + 1) = v72;
              v64 |= (v73 & 0x7F) << v68;
              if ((v73 & 0x80) == 0)
              {
                break;
              }

              v68 += 7;
              ++v70;
              --v71;
              ++v72;
              v39 = v69++ > 8;
              if (v39)
              {
LABEL_91:
                LODWORD(v64) = 0;
                goto LABEL_95;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v64) = 0;
            }
          }

          else
          {
            v62 = 0;
            v63 = 0;
            v64 = 0;
            v65 = (v61 + v60);
            v66 = v60 + 1;
            while (1)
            {
              *(a2 + 1) = v66;
              v67 = *v65++;
              v64 |= (v67 & 0x7F) << v62;
              if ((v67 & 0x80) == 0)
              {
                break;
              }

              v62 += 7;
              ++v66;
              v39 = v63++ > 8;
              if (v39)
              {
                goto LABEL_91;
              }
            }
          }

LABEL_95:
          *(v48 - 1) = v64;
        }
      }

      else
      {
LABEL_59:
        if ((PB::Reader::skip(a2) & 1) == 0)
        {
LABEL_99:
          v74 = 0;
          return v74 & 1;
        }
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_97;
      }
    }

    v14 = 0;
    v15 = 0;
    v10 = 0;
    v16 = (v7 + v2);
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = v2 + 1;
    while (v18)
    {
      v20 = *v16;
      *(a2 + 1) = v19;
      v10 |= (v20 & 0x7F) << v14;
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      v14 += 7;
      ++v16;
      --v18;
      ++v19;
      v39 = v15++ > 8;
      if (v39)
      {
        goto LABEL_59;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_97:
  v74 = v4 ^ 1;
  return v74 & 1;
}

void sirinluexternalnlu_router::AliasTypes::~AliasTypes(sirinluexternalnlu_router::AliasTypes *this)
{
  sirinluexternalnlu_router::AliasTypes::~AliasTypes(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4875D90;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  PB::Base::~Base(this);
}

void *sirinluexternalnlu_router::AliasTypes::AliasTypes(void *this)
{
  *this = &unk_1F4875D90;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_1F4875D90;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

const sirinluexternalnlu_router::AliasTypes *sirinluexternalnlu_router::AliasTypes::AliasTypes(const sirinluexternalnlu_router::AliasTypes *this, const sirinluexternalnlu_router::AliasTypes *a2)
{
  *this = &unk_1F4875D90;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  if (this != a2)
  {
    v3 = *(a2 + 1);
    v2 = *(a2 + 2);
    v4 = v2 - v3;
    if (v2 != v3)
    {
      if (!((v4 >> 2) >> 62))
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(v4 >> 2);
      }

      std::vector<std::unique_ptr<siricommon::StringValue>>::__throw_length_error[abi:ne200100]();
    }

    *(this + 2) = v4;
  }

  return this;
}

uint64_t sirinluexternalnlu_router::AliasTypes::operator=(uint64_t a1, const sirinluexternalnlu_router::AliasTypes *a2)
{
  if (a1 != a2)
  {
    sirinluexternalnlu_router::AliasTypes::AliasTypes(&v6, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v4;
    sirinluexternalnlu_router::AliasTypes::~AliasTypes(&v6);
  }

  return a1;
}

void *sirinluexternalnlu_router::swap(void *this, sirinluexternalnlu_router::AliasTypes *a2, sirinluexternalnlu_router::AliasTypes *a3)
{
  v3 = this[1];
  this[1] = *(a2 + 1);
  *(a2 + 1) = v3;
  v4 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v5;
  return this;
}

__n128 sirinluexternalnlu_router::AliasTypes::AliasTypes(void *a1, uint64_t a2)
{
  *a1 = &unk_1F4875D90;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  result = *(a2 + 8);
  *(a1 + 1) = result;
  a1[3] = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return result;
}

{
  *a1 = &unk_1F4875D90;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  result = *(a2 + 8);
  *(a1 + 1) = result;
  a1[3] = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return result;
}

uint64_t sirinluexternalnlu_router::AliasTypes::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v8 = &unk_1F4875D90;
    v3 = *(a2 + 24);
    v4 = *(a2 + 8);
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    v5 = *(a1 + 8);
    *(a1 + 8) = v4;
    v9 = v5;
    v6 = *(a1 + 24);
    *(a1 + 24) = v3;
    v10 = v6;
    sirinluexternalnlu_router::AliasTypes::~AliasTypes(&v8);
  }

  return a1;
}

BOOL sirinluexternalnlu_router::AliasTypes::operator==(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a2 + 8);
  if (v2 - v3 != *(a2 + 16) - v4)
  {
    return 0;
  }

  if (v3 == v2)
  {
    return 1;
  }

  v5 = v3 + 4;
  do
  {
    v6 = *v4++;
    result = *(v5 - 4) == v6;
    v8 = *(v5 - 4) != v6 || v5 == v2;
    v5 += 4;
  }

  while (!v8);
  return result;
}

uint64_t sirinluexternalnlu_router::AliasTypes::hash_value(sirinluexternalnlu_router::AliasTypes *this)
{
  v1 = *(this + 1);
  v2 = *(this + 2);
  return PBHashBytes();
}

uint64_t sirinluexternalnlu_router::EntityIdentifierValue::formatText(sirinluexternalnlu_router::EntityIdentifierValue *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 1))
  {
    PB::TextFormatter::format();
  }

  v5 = *(this + 2);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "type");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternalnlu_router::EntityIdentifierValue::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 16);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  if (*(v3 + 8))
  {

    return PB::Writer::write();
  }

  return this;
}

uint64_t sirinluexternalnlu_router::EntityIdentifierValue::readFrom(sirinluexternalnlu_router::EntityIdentifierValue *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v6 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = (v6 + v2);
      v11 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v11;
        v12 = *v10++;
        v9 |= (v12 & 0x7F) << v7;
        if ((v12 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        ++v11;
        v13 = v8++ > 8;
        if (v13)
        {
          goto LABEL_22;
        }
      }

LABEL_18:
      if ((v9 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_29;
      }

      if ((v9 >> 3) == 2)
      {
        operator new();
      }

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

LABEL_22:
      if ((PB::Reader::skip(a2) & 1) == 0)
      {
        v22 = 0;
        return v22 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_29;
      }
    }

    v14 = 0;
    v15 = 0;
    v9 = 0;
    v16 = (v6 + v2);
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = v2 + 1;
    while (v18)
    {
      v20 = *v16;
      *(a2 + 1) = v19;
      v9 |= (v20 & 0x7F) << v14;
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      v14 += 7;
      ++v16;
      --v18;
      ++v19;
      v13 = v15++ > 8;
      if (v13)
      {
        goto LABEL_22;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_29:
  v22 = v4 ^ 1;
  return v22 & 1;
}

void sirinluexternalnlu_router::EntityIdentifierValue::~EntityIdentifierValue(sirinluexternalnlu_router::EntityIdentifierValue *this)
{
  sirinluexternalnlu_router::EntityIdentifierValue::~EntityIdentifierValue(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4875DE0;
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 1);
  *(this + 1) = 0;
  if (v3)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v3);
  }

  PB::Base::~Base(this);
}

void *sirinluexternalnlu_router::EntityIdentifierValue::EntityIdentifierValue(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4875DE0;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4875DE0;
  return this;
}

void *sirinluexternalnlu_router::EntityIdentifierValue::EntityIdentifierValue(void *this, const sirinluexternalnlu_router::EntityIdentifierValue *a2)
{
  *this = &unk_1F4875DE0;
  this[1] = 0;
  this[2] = 0;
  if (*(a2 + 2))
  {
    operator new();
  }

  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternalnlu_router::EntityIdentifierValue::operator=(uint64_t a1, const sirinluexternalnlu_router::EntityIdentifierValue *a2)
{
  if (a1 != a2)
  {
    sirinluexternalnlu_router::EntityIdentifierValue::EntityIdentifierValue(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    sirinluexternalnlu_router::EntityIdentifierValue::~EntityIdentifierValue(&v5);
  }

  return a1;
}

uint64_t sirinluexternalnlu_router::swap(uint64_t this, sirinluexternalnlu_router::EntityIdentifierValue *a2, sirinluexternalnlu_router::EntityIdentifierValue *a3)
{
  v3 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v4;
  return this;
}

void *sirinluexternalnlu_router::EntityIdentifierValue::EntityIdentifierValue(void *a1, uint64_t a2)
{
  a1[1] = 0;
  v4 = a1 + 1;
  *a1 = &unk_1F4875DE0;
  a1[2] = 0;
  v5 = *(a2 + 16);
  *(a2 + 16) = 0;
  v6 = a1[2];
  a1[2] = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(a2 + 8);
  *(a2 + 8) = 0;
  v8 = *v4;
  *v4 = v7;
  if (v8)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v8);
  }

  return a1;
}

uint64_t sirinluexternalnlu_router::EntityIdentifierValue::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluexternalnlu_router::EntityIdentifierValue::EntityIdentifierValue(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    sirinluexternalnlu_router::EntityIdentifierValue::~EntityIdentifierValue(&v5);
  }

  return a1;
}

BOOL sirinluexternalnlu_router::EntityIdentifierValue::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v4)
  {
    if (!v5 || !sirinluexternalnlu_router::TypeIdentifier::operator==(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v6 = *(a1 + 8);
  v7 = *(a2 + 8);
  result = v7 == 0;
  if (!v6)
  {
    return result;
  }

  if (v7)
  {
    v9 = *(v6 + 23);
    if (v9 >= 0)
    {
      v10 = *(v6 + 23);
    }

    else
    {
      v10 = *(v6 + 8);
    }

    v11 = *(v7 + 23);
    v12 = v11;
    if ((v11 & 0x80u) != 0)
    {
      v11 = *(v7 + 8);
    }

    if (v10 == v11)
    {
      v13 = v9 >= 0 ? *(a1 + 8) : *v6;
      v14 = v12 >= 0 ? *(a2 + 8) : *v7;
      if (!memcmp(v13, v14, v10))
      {
        return 1;
      }
    }
  }

  return 0;
}

unint64_t sirinluexternalnlu_router::EntityIdentifierValue::hash_value(sirinluexternalnlu_router::EntityIdentifierValue *this)
{
  v2 = *(this + 2);
  if (v2 && (v3 = *(v2 + 8)) != 0)
  {
    v4 = sirinluexternalnlu_router::Custom::hash_value(v3);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(this + 1);
  if (v5)
  {
    v5 = std::__string_hash<char>::operator()[abi:ne200100](v5);
  }

  return v5 ^ v4;
}

uint64_t sirinluexternalnlu_router::EntityIdentifierValue::makeType(uint64_t this)
{
  if (!*(this + 16))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternalnlu_router::MatchProperties::formatText(sirinluexternalnlu_router::MatchProperties *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "matchedAliasTypes");
  }

  v6 = *(this + 32);
  if (v6)
  {
    v7 = *(this + 2);
    PB::TextFormatter::format(a2, "matchedTokenCount");
    v6 = *(this + 32);
  }

  if ((v6 & 2) != 0)
  {
    v8 = *(this + 3);
    PB::TextFormatter::format(a2, "maxTokenCount");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternalnlu_router::MatchProperties::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 32);
  if ((v4 & 2) != 0)
  {
    v5 = *(this + 24);
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 32);
  }

  if (v4)
  {
    v6 = *(v3 + 16);
    this = PB::Writer::writeVarInt(a2);
  }

  v7 = *(v3 + 8);
  if (v7)
  {

    return PB::Writer::writeSubmessage(a2, v7);
  }

  return this;
}

uint64_t sirinluexternalnlu_router::MatchProperties::readFrom(sirinluexternalnlu_router::MatchProperties *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v2);
      v12 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v12;
        v13 = *v11++;
        v10 |= (v13 & 0x7F) << v8;
        if ((v13 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        ++v12;
        v14 = v9++ > 8;
        if (v14)
        {
          goto LABEL_17;
        }
      }

LABEL_21:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_65;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        operator new();
      }

      if (v22 == 2)
      {
        *(this + 32) |= 1u;
        v33 = *(a2 + 1);
        v32 = *(a2 + 2);
        v34 = *a2;
        if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v32)
        {
          v41 = 0;
          v42 = 0;
          v37 = 0;
          v43 = (v34 + v33);
          v18 = v32 >= v33;
          v44 = v32 - v33;
          if (!v18)
          {
            v44 = 0;
          }

          v45 = v33 + 1;
          while (1)
          {
            if (!v44)
            {
              v37 = 0;
              *(a2 + 24) = 1;
              goto LABEL_60;
            }

            v46 = *v43;
            *(a2 + 1) = v45;
            v37 |= (v46 & 0x7F) << v41;
            if ((v46 & 0x80) == 0)
            {
              break;
            }

            v41 += 7;
            ++v43;
            --v44;
            ++v45;
            v14 = v42++ > 8;
            if (v14)
            {
LABEL_47:
              v37 = 0;
              goto LABEL_60;
            }
          }

          if (*(a2 + 24))
          {
            v37 = 0;
          }
        }

        else
        {
          v35 = 0;
          v36 = 0;
          v37 = 0;
          v38 = (v34 + v33);
          v39 = v33 + 1;
          while (1)
          {
            *(a2 + 1) = v39;
            v40 = *v38++;
            v37 |= (v40 & 0x7F) << v35;
            if ((v40 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            ++v39;
            v14 = v36++ > 8;
            if (v14)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_60:
        *(this + 2) = v37;
      }

      else if (v22 == 1)
      {
        *(this + 32) |= 2u;
        v24 = *(a2 + 1);
        v23 = *(a2 + 2);
        v25 = *a2;
        if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
        {
          v47 = 0;
          v48 = 0;
          v28 = 0;
          v49 = (v25 + v24);
          v18 = v23 >= v24;
          v50 = v23 - v24;
          if (!v18)
          {
            v50 = 0;
          }

          v51 = v24 + 1;
          while (1)
          {
            if (!v50)
            {
              v28 = 0;
              *(a2 + 24) = 1;
              goto LABEL_63;
            }

            v52 = *v49;
            *(a2 + 1) = v51;
            v28 |= (v52 & 0x7F) << v47;
            if ((v52 & 0x80) == 0)
            {
              break;
            }

            v47 += 7;
            ++v49;
            --v50;
            ++v51;
            v14 = v48++ > 8;
            if (v14)
            {
LABEL_55:
              v28 = 0;
              goto LABEL_63;
            }
          }

          if (*(a2 + 24))
          {
            v28 = 0;
          }
        }

        else
        {
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = (v25 + v24);
          v30 = v24 + 1;
          while (1)
          {
            *(a2 + 1) = v30;
            v31 = *v29++;
            v28 |= (v31 & 0x7F) << v26;
            if ((v31 & 0x80) == 0)
            {
              break;
            }

            v26 += 7;
            ++v30;
            v14 = v27++ > 8;
            if (v14)
            {
              goto LABEL_55;
            }
          }
        }

LABEL_63:
        *(this + 3) = v28;
      }

      else
      {
LABEL_17:
        if ((PB::Reader::skip(a2) & 1) == 0)
        {
          v53 = 0;
          return v53 & 1;
        }
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_65;
      }
    }

    v15 = 0;
    v16 = 0;
    v10 = 0;
    v17 = (v7 + v2);
    v18 = v3 >= v2;
    v19 = v3 - v2;
    if (!v18)
    {
      v19 = 0;
    }

    v20 = v2 + 1;
    while (v19)
    {
      v21 = *v17;
      *(a2 + 1) = v20;
      v10 |= (v21 & 0x7F) << v15;
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_21;
      }

      v15 += 7;
      ++v17;
      --v19;
      ++v20;
      v14 = v16++ > 8;
      if (v14)
      {
        goto LABEL_17;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_65:
  v53 = v4 ^ 1;
  return v53 & 1;
}

void sirinluexternalnlu_router::MatchProperties::~MatchProperties(sirinluexternalnlu_router::MatchProperties *this)
{
  sirinluexternalnlu_router::MatchProperties::~MatchProperties(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  v2 = *(this + 1);
  *this = &unk_1F4875E30;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

uint64_t sirinluexternalnlu_router::MatchProperties::MatchProperties(uint64_t this)
{
  *this = &unk_1F4875E30;
  *(this + 8) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *this = &unk_1F4875E30;
  *(this + 8) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t sirinluexternalnlu_router::MatchProperties::MatchProperties(uint64_t this, const sirinluexternalnlu_router::MatchProperties *a2)
{
  *this = &unk_1F4875E30;
  *(this + 8) = 0;
  *(this + 32) = 0;
  if ((*(a2 + 32) & 2) != 0)
  {
    v3 = *(a2 + 3);
    *(this + 32) = 2;
    *(this + 24) = v3;
    v2 = 3;
    if ((*(a2 + 32) & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v2 = 1;
  if (*(a2 + 32))
  {
LABEL_5:
    v4 = *(a2 + 2);
    *(this + 32) = v2;
    *(this + 16) = v4;
  }

LABEL_6:
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternalnlu_router::MatchProperties::operator=(uint64_t a1, const sirinluexternalnlu_router::MatchProperties *a2)
{
  if (a1 != a2)
  {
    sirinluexternalnlu_router::MatchProperties::MatchProperties(v7, a2);
    v3 = *(a1 + 32);
    *(a1 + 32) = v10;
    v10 = v3;
    v4 = *(a1 + 16);
    *(a1 + 16) = v9;
    v9 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v5;
    sirinluexternalnlu_router::MatchProperties::~MatchProperties(v7);
  }

  return a1;
}

uint64_t sirinluexternalnlu_router::swap(uint64_t this, sirinluexternalnlu_router::MatchProperties *a2, sirinluexternalnlu_router::MatchProperties *a3)
{
  v3 = *(this + 32);
  *(this + 32) = *(a2 + 8);
  *(a2 + 8) = v3;
  v4 = *(this + 24);
  *(this + 24) = *(a2 + 3);
  *(a2 + 3) = v4;
  v6 = *(this + 8);
  v5 = *(this + 16);
  v7 = *(a2 + 2);
  *(this + 8) = *(a2 + 1);
  *(this + 16) = v7;
  *(a2 + 1) = v6;
  *(a2 + 2) = v5;
  return this;
}

uint64_t sirinluexternalnlu_router::MatchProperties::MatchProperties(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4875E30;
  *(a1 + 8) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 8);
  v3 = *(a2 + 16);
  *(a2 + 8) = 0;
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return a1;
}

uint64_t sirinluexternalnlu_router::MatchProperties::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluexternalnlu_router::MatchProperties::MatchProperties(v7, a2);
    v3 = *(a1 + 32);
    *(a1 + 32) = v10;
    v10 = v3;
    v4 = *(a1 + 16);
    *(a1 + 16) = v9;
    v9 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v5;
    sirinluexternalnlu_router::MatchProperties::~MatchProperties(v7);
  }

  return a1;
}

BOOL sirinluexternalnlu_router::MatchProperties::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  if ((*(a1 + 32) & 2) != 0)
  {
    if ((*(a2 + 32) & 2) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 2) != 0)
  {
    return 0;
  }

  if (*(a1 + 32))
  {
    if ((*(a2 + 32) & 1) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if (*(a2 + 32))
  {
    return 0;
  }

  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  result = (v3 | v4) == 0;
  if (v3 && v4)
  {
    v8 = v3 + 8;
    v7 = *(v3 + 8);
    v6 = *(v8 + 8);
    v10 = v4 + 8;
    v9 = *(v4 + 8);
    if (v6 - v7 == *(v10 + 8) - v9)
    {
      if (v7 == v6)
      {
        return 1;
      }

      v11 = v7 + 4;
      do
      {
        v12 = *(v11 - 4);
        v14 = *v9++;
        v13 = v14;
        v15 = v12 != v14 || v11 == v6;
        v11 += 4;
      }

      while (!v15);
      if (v12 == v13)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sirinluexternalnlu_router::MatchProperties::hash_value(sirinluexternalnlu_router::MatchProperties *this)
{
  if ((*(this + 32) & 2) != 0)
  {
    v1 = *(this + 3);
    if (*(this + 32))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v1 = 0;
    if (*(this + 32))
    {
LABEL_3:
      v2 = *(this + 2);
      goto LABEL_6;
    }
  }

  v2 = 0;
LABEL_6:
  v3 = *(this + 1);
  if (v3)
  {
    v4 = *(v3 + 8);
    v5 = *(v3 + 16);
    v6 = PBHashBytes();
  }

  else
  {
    v6 = 0;
  }

  return v2 ^ v1 ^ v6;
}

uint64_t sirinluexternalnlu_router::MatchProperties::makeMatchedAliasTypes(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternalnlu_router::EntityMatch::formatText(sirinluexternalnlu_router::EntityMatch *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 80))
  {
    v5 = *(this + 1);
    PB::TextFormatter::format(a2, "endIndex");
  }

  if (*(this + 2))
  {
    PB::TextFormatter::format();
  }

  if (*(this + 3))
  {
    PB::TextFormatter::format();
  }

  v6 = *(this + 4);
  if (v6)
  {
    (*(*v6 + 32))(v6, a2, "matchProperties");
  }

  v7 = *(this + 80);
  if ((v7 & 4) != 0)
  {
    PB::TextFormatter::format(a2, "matchScore", *(this + 18));
    v7 = *(this + 80);
  }

  if ((v7 & 8) != 0)
  {
    v8 = *(this + 19);
    PB::TextFormatter::format(a2, "matcherType");
  }

  if (*(this + 5))
  {
    PB::TextFormatter::format();
  }

  if (*(this + 6))
  {
    PB::TextFormatter::format();
  }

  if ((*(this + 80) & 2) != 0)
  {
    v9 = *(this + 7);
    PB::TextFormatter::format(a2, "startIndex");
  }

  if (*(this + 8))
  {
    PB::TextFormatter::format();
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternalnlu_router::EntityMatch::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if (*(this + 48))
  {
    this = PB::Writer::write();
  }

  if (*(v3 + 16))
  {
    this = PB::Writer::write();
  }

  v4 = *(v3 + 80);
  if ((v4 & 2) != 0)
  {
    v7 = *(v3 + 56);
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 80);
    if ((v4 & 1) == 0)
    {
LABEL_7:
      if ((v4 & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*(v3 + 80) & 1) == 0)
  {
    goto LABEL_7;
  }

  v8 = *(v3 + 8);
  this = PB::Writer::writeVarInt(a2);
  if ((*(v3 + 80) & 4) != 0)
  {
LABEL_8:
    this = PB::Writer::write(a2, *(v3 + 72));
  }

LABEL_9:
  v5 = *(v3 + 32);
  if (v5)
  {
    this = PB::Writer::writeSubmessage(a2, v5);
  }

  if ((*(v3 + 80) & 8) != 0)
  {
    v6 = *(v3 + 76);
    this = PB::Writer::writeVarInt(a2);
  }

  if (*(v3 + 40))
  {
    this = PB::Writer::write();
  }

  if (*(v3 + 64))
  {
    this = PB::Writer::write();
  }

  if (*(v3 + 24))
  {

    return PB::Writer::write();
  }

  return this;
}

uint64_t sirinluexternalnlu_router::EntityMatch::readFrom(sirinluexternalnlu_router::EntityMatch *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  while (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v7 = *a2;
    if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
    {
      v15 = 0;
      v16 = 0;
      v10 = 0;
      v17 = (v7 + v2);
      v18 = v3 >= v2;
      v19 = v3 - v2;
      if (!v18)
      {
        v19 = 0;
      }

      v20 = v2 + 1;
      while (v19)
      {
        v21 = *v17;
        *(a2 + 1) = v20;
        v10 |= (v21 & 0x7F) << v15;
        if ((v21 & 0x80) == 0)
        {
          goto LABEL_19;
        }

        v15 += 7;
        ++v17;
        --v19;
        ++v20;
        v14 = v16++ > 8;
        if (v14)
        {
          goto LABEL_17;
        }
      }

      v4 = 1;
      *(a2 + 24) = 1;
      break;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = (v7 + v2);
    v12 = v2 + 1;
    while (1)
    {
      *(a2 + 1) = v12;
      v13 = *v11++;
      v10 |= (v13 & 0x7F) << v8;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v8 += 7;
      ++v12;
      v14 = v9++ > 8;
      if (v14)
      {
        goto LABEL_17;
      }
    }

LABEL_19:
    if ((v10 & 7) == 4)
    {
      v4 = 0;
      break;
    }

    v22 = v10 >> 3;
    if ((v10 >> 3) > 7)
    {
      if (v22 <= 9)
      {
        if (v22 == 8)
        {
          operator new();
        }

        if (v22 == 9)
        {
          *(this + 80) |= 8u;
          v25 = *(a2 + 1);
          v24 = *(a2 + 2);
          v26 = *a2;
          if (v25 > 0xFFFFFFFFFFFFFFF5 || v25 + 10 > v24)
          {
            v51 = 0;
            v52 = 0;
            v29 = 0;
            v53 = (v26 + v25);
            v18 = v24 >= v25;
            v54 = v24 - v25;
            if (!v18)
            {
              v54 = 0;
            }

            v55 = v25 + 1;
            while (1)
            {
              if (!v54)
              {
                LODWORD(v29) = 0;
                *(a2 + 24) = 1;
                goto LABEL_96;
              }

              v56 = *v53;
              *(a2 + 1) = v55;
              v29 |= (v56 & 0x7F) << v51;
              if ((v56 & 0x80) == 0)
              {
                break;
              }

              v51 += 7;
              ++v53;
              --v54;
              ++v55;
              v14 = v52++ > 8;
              if (v14)
              {
LABEL_73:
                LODWORD(v29) = 0;
                goto LABEL_96;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v29) = 0;
            }
          }

          else
          {
            v27 = 0;
            v28 = 0;
            v29 = 0;
            v30 = (v26 + v25);
            v31 = v25 + 1;
            while (1)
            {
              *(a2 + 1) = v31;
              v32 = *v30++;
              v29 |= (v32 & 0x7F) << v27;
              if ((v32 & 0x80) == 0)
              {
                break;
              }

              v27 += 7;
              ++v31;
              v14 = v28++ > 8;
              if (v14)
              {
                goto LABEL_73;
              }
            }
          }

LABEL_96:
          *(this + 19) = v29;
          goto LABEL_63;
        }
      }

      else
      {
        switch(v22)
        {
          case 0xA:
            operator new();
          case 0xB:
            operator new();
          case 0xC:
            operator new();
        }
      }
    }

    else if (v22 <= 3)
    {
      if (v22 == 1)
      {
        operator new();
      }

      if (v22 == 3)
      {
        operator new();
      }
    }

    else
    {
      switch(v22)
      {
        case 4:
          *(this + 80) |= 2u;
          v34 = *(a2 + 1);
          v33 = *(a2 + 2);
          v35 = *a2;
          if (v34 > 0xFFFFFFFFFFFFFFF5 || v34 + 10 > v33)
          {
            v57 = 0;
            v58 = 0;
            v38 = 0;
            v59 = (v35 + v34);
            v18 = v33 >= v34;
            v60 = v33 - v34;
            if (!v18)
            {
              v60 = 0;
            }

            v61 = v34 + 1;
            while (1)
            {
              if (!v60)
              {
                v38 = 0;
                *(a2 + 24) = 1;
                goto LABEL_99;
              }

              v62 = *v59;
              *(a2 + 1) = v61;
              v38 |= (v62 & 0x7F) << v57;
              if ((v62 & 0x80) == 0)
              {
                break;
              }

              v57 += 7;
              ++v59;
              --v60;
              ++v61;
              v14 = v58++ > 8;
              if (v14)
              {
LABEL_81:
                v38 = 0;
                goto LABEL_99;
              }
            }

            if (*(a2 + 24))
            {
              v38 = 0;
            }
          }

          else
          {
            v36 = 0;
            v37 = 0;
            v38 = 0;
            v39 = (v35 + v34);
            v40 = v34 + 1;
            while (1)
            {
              *(a2 + 1) = v40;
              v41 = *v39++;
              v38 |= (v41 & 0x7F) << v36;
              if ((v41 & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              ++v40;
              v14 = v37++ > 8;
              if (v14)
              {
                goto LABEL_81;
              }
            }
          }

LABEL_99:
          *(this + 7) = v38;
          goto LABEL_63;
        case 5:
          *(this + 80) |= 1u;
          v43 = *(a2 + 1);
          v42 = *(a2 + 2);
          v44 = *a2;
          if (v43 > 0xFFFFFFFFFFFFFFF5 || v43 + 10 > v42)
          {
            v63 = 0;
            v64 = 0;
            v47 = 0;
            v65 = (v44 + v43);
            v18 = v42 >= v43;
            v66 = v42 - v43;
            if (!v18)
            {
              v66 = 0;
            }

            v67 = v43 + 1;
            while (1)
            {
              if (!v66)
              {
                v47 = 0;
                *(a2 + 24) = 1;
                goto LABEL_102;
              }

              v68 = *v65;
              *(a2 + 1) = v67;
              v47 |= (v68 & 0x7F) << v63;
              if ((v68 & 0x80) == 0)
              {
                break;
              }

              v63 += 7;
              ++v65;
              --v66;
              ++v67;
              v14 = v64++ > 8;
              if (v14)
              {
LABEL_89:
                v47 = 0;
                goto LABEL_102;
              }
            }

            if (*(a2 + 24))
            {
              v47 = 0;
            }
          }

          else
          {
            v45 = 0;
            v46 = 0;
            v47 = 0;
            v48 = (v44 + v43);
            v49 = v43 + 1;
            while (1)
            {
              *(a2 + 1) = v49;
              v50 = *v48++;
              v47 |= (v50 & 0x7F) << v45;
              if ((v50 & 0x80) == 0)
              {
                break;
              }

              v45 += 7;
              ++v49;
              v14 = v46++ > 8;
              if (v14)
              {
                goto LABEL_89;
              }
            }
          }

LABEL_102:
          *(this + 1) = v47;
          goto LABEL_63;
        case 7:
          *(this + 80) |= 4u;
          v23 = *(a2 + 1);
          if (v23 <= 0xFFFFFFFFFFFFFFFBLL && v23 + 4 <= *(a2 + 2))
          {
            *(this + 18) = *(*a2 + v23);
            *(a2 + 1) += 4;
          }

          else
          {
            *(a2 + 24) = 1;
          }

          goto LABEL_63;
      }
    }

LABEL_17:
    if ((PB::Reader::skip(a2) & 1) == 0)
    {
      v70 = 0;
      return v70 & 1;
    }

LABEL_63:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v70 = v4 ^ 1;
  return v70 & 1;
}

void sirinluexternalnlu_router::EntityMatch::~EntityMatch(sirinluexternalnlu_router::EntityMatch *this)
{
  sirinluexternalnlu_router::EntityMatch::~EntityMatch(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4875E80;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v2);
  }

  v3 = *(this + 6);
  *(this + 6) = 0;
  if (v3)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v3);
  }

  v4 = *(this + 5);
  *(this + 5) = 0;
  if (v4)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v4);
  }

  v5 = *(this + 4);
  *(this + 4) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 3);
  *(this + 3) = 0;
  if (v6)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v6);
  }

  v7 = *(this + 2);
  *(this + 2) = 0;
  if (v7)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v7);
  }

  PB::Base::~Base(this);
}

double sirinluexternalnlu_router::EntityMatch::EntityMatch(sirinluexternalnlu_router::EntityMatch *this)
{
  *this = &unk_1F4875E80;
  *(this + 8) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 6) = 0;
  return result;
}

{
  *this = &unk_1F4875E80;
  *(this + 8) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 6) = 0;
  return result;
}

uint64_t sirinluexternalnlu_router::EntityMatch::EntityMatch(uint64_t this, const sirinluexternalnlu_router::EntityMatch *a2)
{
  *this = &unk_1F4875E80;
  *(this + 16) = 0u;
  *(this + 64) = 0;
  *(this + 76) = 0;
  *(this + 80) = 0;
  *(this + 32) = 0u;
  *(this + 48) = 0;
  if (*(a2 + 6))
  {
    operator new();
  }

  if (*(a2 + 2))
  {
    operator new();
  }

  v2 = *(a2 + 80);
  if ((v2 & 2) != 0)
  {
    v5 = *(a2 + 7);
    *(this + 80) |= 2u;
    *(this + 56) = v5;
    v2 = *(a2 + 80);
    if ((v2 & 1) == 0)
    {
LABEL_7:
      if ((v2 & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*(a2 + 80) & 1) == 0)
  {
    goto LABEL_7;
  }

  v6 = *(a2 + 1);
  *(this + 80) |= 1u;
  *(this + 8) = v6;
  if ((*(a2 + 80) & 4) != 0)
  {
LABEL_8:
    v3 = *(a2 + 18);
    *(this + 80) |= 4u;
    *(this + 72) = v3;
  }

LABEL_9:
  if (*(a2 + 4))
  {
    operator new();
  }

  if ((*(a2 + 80) & 8) != 0)
  {
    v4 = *(a2 + 19);
    *(this + 80) |= 8u;
    *(this + 76) = v4;
  }

  if (*(a2 + 5))
  {
    operator new();
  }

  if (*(a2 + 8))
  {
    operator new();
  }

  if (*(a2 + 3))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternalnlu_router::EntityMatch::operator=(uint64_t a1, const sirinluexternalnlu_router::EntityMatch *a2)
{
  if (a1 != a2)
  {
    sirinluexternalnlu_router::EntityMatch::EntityMatch(v14, a2);
    v3 = *(a1 + 72);
    *(a1 + 72) = v21;
    v21 = v3;
    v4 = *(a1 + 76);
    *(a1 + 76) = v22;
    v22 = v4;
    v5 = v17;
    v7 = *(a1 + 16);
    v6 = *(a1 + 32);
    *(a1 + 16) = v16;
    *(a1 + 32) = v5;
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    v10 = v19;
    *(a1 + 48) = v18;
    *(a1 + 56) = v10;
    v18 = v8;
    v19 = v9;
    v11 = *(a1 + 8);
    *(a1 + 8) = v15;
    v15 = v11;
    v12 = *(a1 + 64);
    *(a1 + 64) = v20;
    v20 = v12;
    v17 = v6;
    v16 = v7;
    sirinluexternalnlu_router::EntityMatch::~EntityMatch(v14);
  }

  return a1;
}

float sirinluexternalnlu_router::swap(sirinluexternalnlu_router *this, sirinluexternalnlu_router::EntityMatch *a2, sirinluexternalnlu_router::EntityMatch *a3)
{
  v3 = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v3;
  v4 = *(this + 6);
  v5 = *(this + 7);
  v6 = *(a2 + 7);
  *(this + 6) = *(a2 + 6);
  *(this + 7) = v6;
  *(a2 + 6) = v4;
  *(a2 + 7) = v5;
  v8 = *(this + 1);
  v7 = *(this + 2);
  v9 = *(a2 + 2);
  *(this + 1) = *(a2 + 1);
  *(this + 2) = v9;
  *(a2 + 1) = v8;
  *(a2 + 2) = v7;
  result = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = result;
  v11 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v11;
  LODWORD(v11) = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v11;
  v12 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v12;
  v13 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v13;
  v14 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v14;
  return result;
}

uint64_t sirinluexternalnlu_router::EntityMatch::EntityMatch(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = 0u;
  v4 = (a1 + 16);
  *a1 = &unk_1F4875E80;
  *(a1 + 64) = 0;
  *(a1 + 76) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  *(a1 + 80) = *(a2 + 80);
  *(a2 + 80) = 0;
  v5 = *(a2 + 48);
  *(a2 + 48) = 0;
  v6 = *(a1 + 48);
  *(a1 + 48) = v5;
  if (v6)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v6);
  }

  v7 = *(a2 + 16);
  *(a2 + 16) = 0;
  v8 = *v4;
  *v4 = v7;
  if (v8)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v8);
  }

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 72) = *(a2 + 72);
  v9 = *(a2 + 32);
  *(a2 + 32) = 0;
  v10 = *(a1 + 32);
  *(a1 + 32) = v9;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  *(a1 + 76) = *(a2 + 76);
  v11 = *(a2 + 40);
  *(a2 + 40) = 0;
  v12 = *(a1 + 40);
  *(a1 + 40) = v11;
  if (v12)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v12);
  }

  v13 = *(a2 + 64);
  *(a2 + 64) = 0;
  v14 = *(a1 + 64);
  *(a1 + 64) = v13;
  if (v14)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v14);
  }

  v15 = *(a2 + 24);
  *(a2 + 24) = 0;
  v16 = *(a1 + 24);
  *(a1 + 24) = v15;
  if (v16)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v16);
  }

  return a1;
}

uint64_t sirinluexternalnlu_router::EntityMatch::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluexternalnlu_router::EntityMatch::EntityMatch(v14, a2);
    v3 = *(a1 + 72);
    *(a1 + 72) = v21;
    v21 = v3;
    v4 = *(a1 + 76);
    *(a1 + 76) = v22;
    v22 = v4;
    v5 = v17;
    v7 = *(a1 + 16);
    v6 = *(a1 + 32);
    *(a1 + 16) = v16;
    *(a1 + 32) = v5;
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    v10 = v19;
    *(a1 + 48) = v18;
    *(a1 + 56) = v10;
    v18 = v8;
    v19 = v9;
    v11 = *(a1 + 8);
    *(a1 + 8) = v15;
    v15 = v11;
    v12 = *(a1 + 64);
    *(a1 + 64) = v20;
    v20 = v12;
    v17 = v6;
    v16 = v7;
    sirinluexternalnlu_router::EntityMatch::~EntityMatch(v14);
  }

  return a1;
}

BOOL sirinluexternalnlu_router::EntityMatch::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v5 = *(a2 + 48);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *(v4 + 23);
    if (v6 >= 0)
    {
      v7 = *(v4 + 23);
    }

    else
    {
      v7 = *(v4 + 8);
    }

    v8 = *(v5 + 23);
    v9 = v8;
    if ((v8 & 0x80u) != 0)
    {
      v8 = *(v5 + 8);
    }

    if (v7 != v8)
    {
      return 0;
    }

    v10 = v6 >= 0 ? *(a1 + 48) : *v4;
    v11 = v9 >= 0 ? *(a2 + 48) : *v5;
    if (memcmp(v10, v11, v7))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v13 = *(a1 + 16);
  v14 = *(a2 + 16);
  if (v13)
  {
    if (!v14)
    {
      return 0;
    }

    v15 = *(v13 + 23);
    if (v15 >= 0)
    {
      v16 = *(v13 + 23);
    }

    else
    {
      v16 = *(v13 + 8);
    }

    v17 = *(v14 + 23);
    v18 = v17;
    if ((v17 & 0x80u) != 0)
    {
      v17 = *(v14 + 8);
    }

    if (v16 != v17)
    {
      return 0;
    }

    v19 = v15 >= 0 ? *(a1 + 16) : *v13;
    v20 = v18 >= 0 ? *(a2 + 16) : *v14;
    if (memcmp(v19, v20, v16))
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  v21 = *(a1 + 80);
  v22 = *(a2 + 80);
  if ((v21 & 2) != 0)
  {
    if ((*(a2 + 80) & 2) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((*(a2 + 80) & 2) != 0)
  {
    return 0;
  }

  if (*(a1 + 80))
  {
    if ((*(a2 + 80) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 80))
  {
    return 0;
  }

  if ((*(a1 + 80) & 4) != 0)
  {
    if ((*(a2 + 80) & 4) == 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if ((*(a2 + 80) & 4) != 0)
  {
    return 0;
  }

  v23 = *(a1 + 32);
  v24 = *(a2 + 32);
  if (v23)
  {
    if (!v24 || !sirinluexternalnlu_router::MatchProperties::operator==(v23, v24))
    {
      return 0;
    }
  }

  else if (v24)
  {
    return 0;
  }

  if ((v21 & 8) != 0)
  {
    if ((v22 & 8) == 0 || *(a1 + 76) != *(a2 + 76))
    {
      return 0;
    }
  }

  else if ((v22 & 8) != 0)
  {
    return 0;
  }

  v25 = *(a1 + 40);
  v26 = *(a2 + 40);
  if (v25)
  {
    if (!v26 || !std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(v25, v26))
    {
      return 0;
    }
  }

  else if (v26)
  {
    return 0;
  }

  v27 = *(a1 + 64);
  v28 = *(a2 + 64);
  if (!v27)
  {
    if (!v28)
    {
      goto LABEL_72;
    }

    return 0;
  }

  if (!v28 || !std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(v27, v28))
  {
    return 0;
  }

LABEL_72:
  v29 = *(a1 + 24);
  v30 = *(a2 + 24);
  result = (v29 | v30) == 0;
  if (v29 && v30)
  {
    v31 = *(a1 + 24);

    return std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(v31, v30);
  }

  return result;
}

unint64_t sirinluexternalnlu_router::EntityMatch::hash_value(sirinluexternalnlu_router::EntityMatch *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    v3 = std::__string_hash<char>::operator()[abi:ne200100](v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 2);
  if (v4)
  {
    v5 = std::__string_hash<char>::operator()[abi:ne200100](v4);
  }

  else
  {
    v5 = 0;
  }

  if ((*(this + 80) & 2) != 0)
  {
    v6 = *(this + 7);
    if (*(this + 80))
    {
LABEL_9:
      v7 = *(this + 1);
      if ((*(this + 80) & 4) != 0)
      {
        goto LABEL_10;
      }

LABEL_15:
      v9 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    v6 = 0;
    if (*(this + 80))
    {
      goto LABEL_9;
    }
  }

  v7 = 0;
  if ((*(this + 80) & 4) == 0)
  {
    goto LABEL_15;
  }

LABEL_10:
  v8 = *(this + 18);
  if (v8 == 0.0)
  {
    v9 = 0;
  }

  else
  {
    v9 = LODWORD(v8);
  }

LABEL_16:
  v10 = *(this + 4);
  if (v10)
  {
    v11 = sirinluexternalnlu_router::MatchProperties::hash_value(v10);
    if ((*(this + 80) & 8) == 0)
    {
LABEL_18:
      v12 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    v11 = 0;
    if ((*(this + 80) & 8) == 0)
    {
      goto LABEL_18;
    }
  }

  v12 = *(this + 19);
LABEL_21:
  v13 = *(this + 5);
  if (v13)
  {
    v14 = std::__string_hash<char>::operator()[abi:ne200100](v13);
  }

  else
  {
    v14 = 0;
  }

  v15 = *(this + 8);
  if (v15)
  {
    v16 = std::__string_hash<char>::operator()[abi:ne200100](v15);
  }

  else
  {
    v16 = 0;
  }

  v17 = *(this + 3);
  if (v17)
  {
    v17 = std::__string_hash<char>::operator()[abi:ne200100](v17);
  }

  return v5 ^ v3 ^ v6 ^ v7 ^ v9 ^ v11 ^ v12 ^ v14 ^ v16 ^ v17;
}

uint64_t sirinluexternalnlu_router::EntityMatch::makeMatchProperties(uint64_t this)
{
  if (!*(this + 32))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternalnlu_router::Person::formatText(sirinluexternalnlu_router::Person *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 1))
  {
    PB::TextFormatter::format();
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternalnlu_router::Person::writeTo(uint64_t this, PB::Writer *a2)
{
  if (*(this + 8))
  {
    return PB::Writer::write();
  }

  return this;
}

uint64_t sirinluexternalnlu_router::Person::readFrom(sirinluexternalnlu_router::Person *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v6 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = (v6 + v2);
      v11 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v11;
        v12 = *v10++;
        v9 |= (v12 & 0x7F) << v7;
        if ((v12 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        ++v11;
        v13 = v8++ > 8;
        if (v13)
        {
          goto LABEL_21;
        }
      }

LABEL_18:
      if ((v9 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_26;
      }

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

LABEL_21:
      if (!PB::Reader::skip(a2))
      {
        v21 = 0;
        return v21 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_26;
      }
    }

    v14 = 0;
    v15 = 0;
    v9 = 0;
    v16 = (v6 + v2);
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = v2 + 1;
    while (v18)
    {
      v20 = *v16;
      *(a2 + 1) = v19;
      v9 |= (v20 & 0x7F) << v14;
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      v14 += 7;
      ++v16;
      --v18;
      ++v19;
      v13 = v15++ > 8;
      if (v13)
      {
        goto LABEL_21;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_26:
  v21 = v4 ^ 1;
  return v21 & 1;
}

void sirinluexternalnlu_router::Person::~Person(void ***this)
{
  *this = &unk_1F4875ED0;
  std::unique_ptr<PB::Data>::reset[abi:ne200100](this + 1, 0);
  PB::Base::~Base(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4875ED0;
  std::unique_ptr<PB::Data>::reset[abi:ne200100](this + 1, 0);

  PB::Base::~Base(this);
}

{
  *this = &unk_1F4875ED0;
  std::unique_ptr<PB::Data>::reset[abi:ne200100](this + 1, 0);

  PB::Base::~Base(this);
}

void *sirinluexternalnlu_router::Person::Person(void *this)
{
  *this = &unk_1F4875ED0;
  this[1] = 0;
  return this;
}

{
  *this = &unk_1F4875ED0;
  this[1] = 0;
  return this;
}

void *sirinluexternalnlu_router::Person::Person(void *this, const sirinluexternalnlu_router::Person *a2)
{
  *this = &unk_1F4875ED0;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

void ***sirinluexternalnlu_router::Person::operator=(void ***a1, const sirinluexternalnlu_router::Person *a2)
{
  if (a1 != a2)
  {
    sirinluexternalnlu_router::Person::Person(&v5, a2);
    v3 = a1[1];
    a1[1] = v6;
    v5 = &unk_1F4875ED0;
    v6 = v3;
    std::unique_ptr<PB::Data>::reset[abi:ne200100](&v6, 0);
    PB::Base::~Base(&v5);
  }

  return a1;
}

uint64_t sirinluexternalnlu_router::swap(uint64_t this, sirinluexternalnlu_router::Person *a2, sirinluexternalnlu_router::Person *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

uint64_t sirinluexternalnlu_router::Person::Person(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4875ED0;
  *(a1 + 8) = 0;
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  std::unique_ptr<PB::Data>::reset[abi:ne200100]((a1 + 8), v3);
  return a1;
}

{
  *a1 = &unk_1F4875ED0;
  *(a1 + 8) = 0;
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  std::unique_ptr<PB::Data>::reset[abi:ne200100]((a1 + 8), v3);
  return a1;
}

uint64_t sirinluexternalnlu_router::Person::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v6 = &unk_1F4875ED0;
    v7 = 0;
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    std::unique_ptr<PB::Data>::reset[abi:ne200100](&v7, v3);
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v6 = &unk_1F4875ED0;
    v7 = v4;
    std::unique_ptr<PB::Data>::reset[abi:ne200100](&v7, 0);
    PB::Base::~Base(&v6);
  }

  return a1;
}

BOOL sirinluexternalnlu_router::Person::operator==(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 8))
  {
    return *(a2 + 8) == 0;
  }

  if (!*(a2 + 8))
  {
    return 0;
  }

  if (PB::Data::operator==())
  {
    return 1;
  }

  return !*(a1 + 8) && *(a2 + 8) == 0;
}

uint64_t sirinluexternalnlu_router::Person::hash_value(sirinluexternalnlu_router::Person *this)
{
  v1 = *(this + 1);
  if (!v1)
  {
    return 0;
  }

  v2 = *v1;
  v3 = v1[1];
  return PBHashBytes();
}

uint64_t sirinluexternalnlu_router::TypeIdentifier::formatText(sirinluexternalnlu_router::TypeIdentifier *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "custom");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternalnlu_router::TypeIdentifier::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2);
  }

  return this;
}

uint64_t sirinluexternalnlu_router::TypeIdentifier::readFrom(sirinluexternalnlu_router::TypeIdentifier *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v6 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = (v6 + v2);
      v11 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v11;
        v12 = *v10++;
        v9 |= (v12 & 0x7F) << v7;
        if ((v12 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        ++v11;
        v13 = v8++ > 8;
        if (v13)
        {
          goto LABEL_21;
        }
      }

LABEL_18:
      if ((v9 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_26;
      }

      if ((v9 >> 3) == 2)
      {
        operator new();
      }

LABEL_21:
      if ((PB::Reader::skip(a2) & 1) == 0)
      {
        v21 = 0;
        return v21 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_26;
      }
    }

    v14 = 0;
    v15 = 0;
    v9 = 0;
    v16 = (v6 + v2);
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = v2 + 1;
    while (v18)
    {
      v20 = *v16;
      *(a2 + 1) = v19;
      v9 |= (v20 & 0x7F) << v14;
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      v14 += 7;
      ++v16;
      --v18;
      ++v19;
      v13 = v15++ > 8;
      if (v13)
      {
        goto LABEL_21;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_26:
  v21 = v4 ^ 1;
  return v21 & 1;
}

void sirinluexternalnlu_router::TypeIdentifier::~TypeIdentifier(sirinluexternalnlu_router::TypeIdentifier *this)
{
  sirinluexternalnlu_router::TypeIdentifier::~TypeIdentifier(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  v2 = *(this + 1);
  *this = &unk_1F4875F20;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void *sirinluexternalnlu_router::TypeIdentifier::TypeIdentifier(void *this)
{
  *this = &unk_1F4875F20;
  this[1] = 0;
  return this;
}

{
  *this = &unk_1F4875F20;
  this[1] = 0;
  return this;
}

void *sirinluexternalnlu_router::TypeIdentifier::TypeIdentifier(void *this, const sirinluexternalnlu_router::TypeIdentifier *a2)
{
  *this = &unk_1F4875F20;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const sirinluexternalnlu_router::TypeIdentifier *sirinluexternalnlu_router::TypeIdentifier::operator=(const sirinluexternalnlu_router::TypeIdentifier *a1, const sirinluexternalnlu_router::TypeIdentifier *a2)
{
  if (a1 != a2)
  {
    sirinluexternalnlu_router::TypeIdentifier::TypeIdentifier(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    sirinluexternalnlu_router::TypeIdentifier::~TypeIdentifier(&v5);
  }

  return a1;
}

uint64_t sirinluexternalnlu_router::swap(uint64_t this, sirinluexternalnlu_router::TypeIdentifier *a2, sirinluexternalnlu_router::TypeIdentifier *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *sirinluexternalnlu_router::TypeIdentifier::TypeIdentifier(void *a1, uint64_t a2)
{
  *a1 = &unk_1F4875F20;
  a1[1] = 0;
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  v4 = a1[1];
  a1[1] = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

{
  *a1 = &unk_1F4875F20;
  a1[1] = 0;
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  v4 = a1[1];
  a1[1] = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

uint64_t sirinluexternalnlu_router::TypeIdentifier::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_1F4875F20;
    v6[1] = v4;
    sirinluexternalnlu_router::TypeIdentifier::~TypeIdentifier(v6);
  }

  return a1;
}

BOOL sirinluexternalnlu_router::TypeIdentifier::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return (v2 | v3) == 0;
  }

  else
  {
    return sirinluexternalnlu_router::Custom::operator==(v2, v3);
  }
}

sirinluexternalnlu_router::Custom *sirinluexternalnlu_router::TypeIdentifier::hash_value(sirinluexternalnlu_router::TypeIdentifier *this)
{
  result = *(this + 1);
  if (result)
  {
    return sirinluexternalnlu_router::Custom::hash_value(result);
  }

  return result;
}

uint64_t sirinluexternalnlu_router::TypeIdentifier::makeCustom(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternaltokenizer::TokenizerResponse::formatText(sirinluinternaltokenizer::TokenizerResponse *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "asrId");
  }

  if (*(this + 2))
  {
    PB::TextFormatter::format();
  }

  v6 = *(this + 3);
  if (v6)
  {
    (*(*v6 + 32))(v6, a2, "token_chain");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluinternaltokenizer::TokenizerResponse::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 24);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  if (*(v3 + 16))
  {
    this = PB::Writer::write();
  }

  v5 = *(v3 + 8);
  if (v5)
  {

    return PB::Writer::writeSubmessage(a2, v5);
  }

  return this;
}

uint64_t sirinluinternaltokenizer::TokenizerResponse::readFrom(sirinluinternaltokenizer::TokenizerResponse *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v6 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = (v6 + v2);
      v11 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v11;
        v12 = *v10++;
        v9 |= (v12 & 0x7F) << v7;
        if ((v12 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        ++v11;
        v13 = v8++ > 8;
        if (v13)
        {
          goto LABEL_17;
        }
      }

LABEL_19:
      if ((v9 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_30;
      }

      v21 = v9 >> 3;
      if ((v9 >> 3) == 3)
      {
        operator new();
      }

      if (v21 == 2)
      {
        operator new();
      }

      if (v21 == 1)
      {
        operator new();
      }

LABEL_17:
      if ((PB::Reader::skip(a2) & 1) == 0)
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_30;
      }
    }

    v14 = 0;
    v15 = 0;
    v9 = 0;
    v16 = (v6 + v2);
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = v2 + 1;
    while (v18)
    {
      v20 = *v16;
      *(a2 + 1) = v19;
      v9 |= (v20 & 0x7F) << v14;
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_19;
      }

      v14 += 7;
      ++v16;
      --v18;
      ++v19;
      v13 = v15++ > 8;
      if (v13)
      {
        goto LABEL_17;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_30:
  v23 = v4 ^ 1;
  return v23 & 1;
}

void sirinluinternaltokenizer::TokenizerResponse::~TokenizerResponse(sirinluinternaltokenizer::TokenizerResponse *this)
{
  sirinluinternaltokenizer::TokenizerResponse::~TokenizerResponse(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4875F70;
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  PB::Base::~Base(this);
}

void *sirinluinternaltokenizer::TokenizerResponse::TokenizerResponse(void *this)
{
  *this = &unk_1F4875F70;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_1F4875F70;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

void *sirinluinternaltokenizer::TokenizerResponse::TokenizerResponse(void *this, const sirinluinternaltokenizer::TokenizerResponse *a2)
{
  *this = &unk_1F4875F70;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  if (*(a2 + 3))
  {
    operator new();
  }

  if (*(a2 + 2))
  {
    operator new();
  }

  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternaltokenizer::TokenizerResponse::operator=(uint64_t a1, const sirinluinternaltokenizer::TokenizerResponse *a2)
{
  if (a1 != a2)
  {
    sirinluinternaltokenizer::TokenizerResponse::TokenizerResponse(&v6, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    sirinluinternaltokenizer::TokenizerResponse::~TokenizerResponse(&v6);
  }

  return a1;
}

void *sirinluinternaltokenizer::swap(void *this, sirinluinternaltokenizer::TokenizerResponse *a2, sirinluinternaltokenizer::TokenizerResponse *a3)
{
  v3 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v3;
  v4 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = this[1];
  this[1] = *(a2 + 1);
  *(a2 + 1) = v5;
  return this;
}

void *sirinluinternaltokenizer::TokenizerResponse::TokenizerResponse(void *a1, void *a2)
{
  *a1 = &unk_1F4875F70;
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  a1[3] = 0;
  v5 = a2[3];
  a2[3] = 0;
  v6 = a1[3];
  a1[3] = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = a2[2];
  a2[2] = 0;
  v8 = a1[2];
  a1[2] = v7;
  if (v8)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v8);
  }

  v9 = a2[1];
  a2[1] = 0;
  v10 = *v4;
  *v4 = v9;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  return a1;
}

uint64_t sirinluinternaltokenizer::TokenizerResponse::operator=(uint64_t a1, void *a2)
{
  if (a1 != a2)
  {
    sirinluinternaltokenizer::TokenizerResponse::TokenizerResponse(&v6, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    sirinluinternaltokenizer::TokenizerResponse::~TokenizerResponse(&v6);
  }

  return a1;
}

BOOL sirinluinternaltokenizer::TokenizerResponse::operator==(void *a1, void *a2)
{
  v4 = a1[3];
  v5 = a2[3];
  if (v4)
  {
    if (!v5 || !sirinluinternal::TokenChain::operator==(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v6 = a1[2];
  v7 = a2[2];
  if (!v6)
  {
    if (!v7)
    {
      goto LABEL_21;
    }

    return 0;
  }

  if (!v7)
  {
    return 0;
  }

  v8 = *(v6 + 23);
  if (v8 >= 0)
  {
    v9 = *(v6 + 23);
  }

  else
  {
    v9 = *(v6 + 8);
  }

  v10 = *(v7 + 23);
  v11 = v10;
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(v7 + 8);
  }

  if (v9 != v10)
  {
    return 0;
  }

  v12 = v8 >= 0 ? a1[2] : *v6;
  v13 = v11 >= 0 ? a2[2] : *v7;
  if (memcmp(v12, v13, v9))
  {
    return 0;
  }

LABEL_21:
  v14 = a1[1];
  v15 = a2[1];
  result = (v14 | v15) == 0;
  if (v14 && v15)
  {
    v17 = a1[1];

    return sirinluexternal::UUID::operator==(v17, v15);
  }

  return result;
}

unint64_t sirinluinternaltokenizer::TokenizerResponse::hash_value(sirinluinternaltokenizer::TokenizerResponse *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    v3 = sirinluinternal::TokenChain::hash_value(v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 2);
  if (v4)
  {
    v4 = std::__string_hash<char>::operator()[abi:ne200100](v4);
  }

  v5 = *(this + 1);
  if (v5)
  {
    if (*(v5 + 28))
    {
      v6 = *(v5 + 8);
      if ((*(v5 + 28) & 2) != 0)
      {
LABEL_9:
        v7 = *(v5 + 16);
        if ((*(v5 + 28) & 4) != 0)
        {
LABEL_10:
          v8 = *(v5 + 24);
LABEL_14:
          v5 = v7 ^ v6 ^ v8;
          return v4 ^ v3 ^ v5;
        }

LABEL_13:
        v8 = 0;
        goto LABEL_14;
      }
    }

    else
    {
      v6 = 0;
      if ((*(v5 + 28) & 2) != 0)
      {
        goto LABEL_9;
      }
    }

    v7 = 0;
    if ((*(v5 + 28) & 4) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  return v4 ^ v3 ^ v5;
}

uint64_t sirinluinternaltokenizer::TokenizerResponse::makeTokenChain(uint64_t this)
{
  if (!*(this + 24))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternaltokenizer::TokenizerResponse::makeAsrId(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t SIRINLUINTERNALPLAN_GENERATIONPlanGenerationResponseReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        if (v13)
        {
          [a1 addPlans:v13];
        }

LABEL_24:

        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_26:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(SIRINLUINTERNALPLAN_GENERATIONVariableEventIdPair);
    [a1 addMappings:v13];
    v16[0] = 0;
    v16[1] = 0;
    if (!PBReaderPlaceMark() || !SIRINLUINTERNALPLAN_GENERATIONVariableEventIdPairReadFrom(v13, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRINLUINTERNALMentionDetectorSpanDataReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        *(a1 + 16) |= 1u;
        v18 = 0;
        v13 = [a2 position] + 8;
        if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 8, v14 <= objc_msgSend(a2, "length")))
        {
          v16 = [a2 data];
          [v16 getBytes:&v18 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v18;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRINLUINTERNALPSCPSCServiceResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        *(a1 + 12) |= 1u;
        v18 = 0;
        v13 = [a2 position] + 4;
        if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 4, v14 <= objc_msgSend(a2, "length")))
        {
          v16 = [a2 data];
          [v16 getBytes:&v18 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v18;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRINLUEXTERNALUsoEdgeLabelReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v31[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v31[0] & 0x7F) << v5;
        if ((v31[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v27 = objc_alloc_init(SIRINLUEXTERNALUsoLabel);
        objc_storeStrong((a1 + 8), v27);
        v31[0] = 0;
        v31[1] = 0;
        if (!PBReaderPlaceMark() || !SIRINLUEXTERNALUsoLabelReadFrom(v27, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else
      {
        if (v13 == 2)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 24) |= 1u;
          while (1)
          {
            LOBYTE(v31[0]) = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v31[0] & 0x7F) << v21;
            if ((v31[0] & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_46;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v23;
          }

LABEL_46:
          v28 = 16;
          goto LABEL_51;
        }

        if (v13 == 1)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 24) |= 2u;
          while (1)
          {
            LOBYTE(v31[0]) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v31[0] & 0x7F) << v14;
            if ((v31[0] & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_50;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v16;
          }

LABEL_50:
          v28 = 20;
LABEL_51:
          *(a1 + v28) = v20;
          goto LABEL_52;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

LABEL_52:
      v29 = [a2 position];
    }

    while (v29 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1C8AB112C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, PB::Writer *a9)
{
  std::unique_ptr<PB::Writer>::~unique_ptr[abi:ne200100](&a9);
  (*(*v9 + 8))(v9);
  _Unwind_Resume(a1);
}

uint64_t sirinluinternal::InternalSpanData::formatText(sirinluinternal::InternalSpanData *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "mention_detector_span_data");
  }

  v6 = *(this + 2);
  if (v6)
  {
    (*(*v6 + 32))(v6, a2, "mention_resolver_span_data");
  }

  v7 = *(this + 3);
  if (v7)
  {
    (*(*v7 + 32))(v7, a2, "overton_kg_span_data");
  }

  v8 = *(this + 4);
  if (v8)
  {
    (*(*v8 + 32))(v8, a2, "plum_span_data");
  }

  v9 = *(this + 5);
  if (v9)
  {
    (*(*v9 + 32))(v9, a2, "siri_vocabulary_span_data");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluinternal::InternalSpanData::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 40);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  v5 = v3[4];
  if (v5)
  {
    this = PB::Writer::writeSubmessage(a2, v5);
  }

  v6 = v3[3];
  if (v6)
  {
    this = PB::Writer::writeSubmessage(a2, v6);
  }

  v7 = v3[1];
  if (v7)
  {
    this = PB::Writer::writeSubmessage(a2, v7);
  }

  v8 = v3[2];
  if (v8)
  {

    return PB::Writer::writeSubmessage(a2, v8);
  }

  return this;
}

uint64_t sirinluinternal::InternalSpanData::readFrom(sirinluinternal::InternalSpanData *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v6 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = (v6 + v2);
      v11 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v11;
        v12 = *v10++;
        v9 |= (v12 & 0x7F) << v7;
        if ((v12 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        ++v11;
        v13 = v8++ > 8;
        if (v13)
        {
          goto LABEL_17;
        }
      }

LABEL_19:
      if ((v9 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_35;
      }

      v21 = v9 >> 3;
      if ((v9 >> 3) <= 2)
      {
        if (v21 == 1)
        {
          operator new();
        }

        if (v21 == 2)
        {
          operator new();
        }
      }

      else
      {
        switch(v21)
        {
          case 3:
            operator new();
          case 4:
            operator new();
          case 5:
            operator new();
        }
      }

LABEL_17:
      if ((PB::Reader::skip(a2) & 1) == 0)
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_35;
      }
    }

    v14 = 0;
    v15 = 0;
    v9 = 0;
    v16 = (v6 + v2);
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = v2 + 1;
    while (v18)
    {
      v20 = *v16;
      *(a2 + 1) = v19;
      v9 |= (v20 & 0x7F) << v14;
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_19;
      }

      v14 += 7;
      ++v16;
      --v18;
      ++v19;
      v13 = v15++ > 8;
      if (v13)
      {
        goto LABEL_17;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_35:
  v23 = v4 ^ 1;
  return v23 & 1;
}

void sirinluinternal::InternalSpanData::~InternalSpanData(sirinluinternal::InternalSpanData *this)
{
  sirinluinternal::InternalSpanData::~InternalSpanData(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4875FC0;
  v2 = *(this + 5);
  *(this + 5) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 1);
  *(this + 1) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  PB::Base::~Base(this);
}

double sirinluinternal::InternalSpanData::InternalSpanData(sirinluinternal::InternalSpanData *this)
{
  *this = &unk_1F4875FC0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

{
  *this = &unk_1F4875FC0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

uint64_t sirinluinternal::InternalSpanData::InternalSpanData(uint64_t this, const sirinluinternal::InternalSpanData *a2)
{
  *this = &unk_1F4875FC0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0;
  if (*(a2 + 5))
  {
    operator new();
  }

  if (*(a2 + 4))
  {
    operator new();
  }

  if (*(a2 + 3))
  {
    operator new();
  }

  if (*(a2 + 1))
  {
    operator new();
  }

  if (*(a2 + 2))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternal::InternalSpanData::operator=(uint64_t a1, const sirinluinternal::InternalSpanData *a2)
{
  if (a1 != a2)
  {
    sirinluinternal::InternalSpanData::InternalSpanData(&v7, a2);
    v3 = *(a1 + 40);
    *(a1 + 40) = v10;
    v10 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v9;
    v9 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v5;
    sirinluinternal::InternalSpanData::~InternalSpanData(&v7);
  }

  return a1;
}

void *sirinluinternal::swap(void *this, sirinluinternal::InternalSpanData *a2, sirinluinternal::InternalSpanData *a3)
{
  v3 = this[5];
  this[5] = *(a2 + 5);
  *(a2 + 5) = v3;
  v4 = this[4];
  this[4] = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v5;
  v6 = this[1];
  this[1] = *(a2 + 1);
  *(a2 + 1) = v6;
  v7 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v7;
  return this;
}

uint64_t sirinluinternal::InternalSpanData::InternalSpanData(uint64_t a1, void *a2)
{
  *a1 = &unk_1F4875FC0;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  v5 = a2[5];
  a2[5] = 0;
  v6 = *(a1 + 40);
  *(a1 + 40) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = a2[4];
  a2[4] = 0;
  v8 = *(a1 + 32);
  *(a1 + 32) = v7;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = a2[3];
  a2[3] = 0;
  v10 = *(a1 + 24);
  *(a1 + 24) = v9;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = a2[1];
  a2[1] = 0;
  v12 = *v4;
  *v4 = v11;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = a2[2];
  a2[2] = 0;
  v14 = *(a1 + 16);
  *(a1 + 16) = v13;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  return a1;
}

uint64_t sirinluinternal::InternalSpanData::operator=(uint64_t a1, void *a2)
{
  if (a1 != a2)
  {
    sirinluinternal::InternalSpanData::InternalSpanData(&v7, a2);
    v3 = *(a1 + 40);
    *(a1 + 40) = v10;
    v10 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v9;
    v9 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v5;
    sirinluinternal::InternalSpanData::~InternalSpanData(&v7);
  }

  return a1;
}

BOOL sirinluinternal::InternalSpanData::operator==(void *a1, void *a2)
{
  v4 = a1[5];
  v5 = a2[5];
  if (v4)
  {
    if (!v5 || !sirinluinternal::SiriVocabularySpanData::operator==(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v6 = a1[4];
  v7 = a2[4];
  if (v6)
  {
    if (!v7)
    {
      return 0;
    }

    v8 = *(v7 + 16);
    if (*(v6 + 16))
    {
      if ((*(v7 + 16) & 1) == 0 || *(v6 + 8) != *(v7 + 8))
      {
        return 0;
      }
    }

    else if (*(v7 + 16))
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v9 = a1[3];
  v10 = a2[3];
  if (v9)
  {
    if (!v10 || !sirinluinternal::OvertonKGSpanData::operator==(v9, v10))
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v11 = a1[1];
  v12 = a2[1];
  if (!v11)
  {
    if (!v12)
    {
      goto LABEL_29;
    }

    return 0;
  }

  if (!v12)
  {
    return 0;
  }

  v13 = *(v12 + 16);
  if (*(v11 + 16))
  {
    if ((*(v12 + 16) & 1) == 0 || *(v11 + 8) != *(v12 + 8))
    {
      return 0;
    }
  }

  else if (*(v12 + 16))
  {
    return 0;
  }

LABEL_29:
  v14 = a1[2];
  v15 = a2[2];
  result = (v14 | v15) == 0;
  if (v14 && v15)
  {
    v17 = a1[2];

    return sirinluinternal::MentionResolverSpanData::operator==(v17, v15);
  }

  return result;
}

unint64_t sirinluinternal::InternalSpanData::hash_value(sirinluinternal::InternalSpanData *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    v3 = sirinluinternal::SiriVocabularySpanData::hash_value(v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 4);
  if (v4 && (*(v4 + 16) & 1) != 0)
  {
    v6 = *(v4 + 8);
    if (v6 == 0.0)
    {
      v5 = 0.0;
    }

    else
    {
      v5 = v6;
    }
  }

  else
  {
    v5 = 0.0;
  }

  v7 = *(this + 3);
  if (v7)
  {
    v7 = sirinluinternal::OvertonKGSpanData::hash_value(v7);
  }

  v8 = *(this + 1);
  if (v8 != 0.0)
  {
    if (*(*&v8 + 16))
    {
      v8 = *(*&v8 + 8);
      if (v8 == 0.0)
      {
        v8 = 0.0;
      }
    }

    else
    {
      v8 = 0.0;
    }
  }

  v9 = *(this + 2);
  if (v9)
  {
    if (*(v9 + 24))
    {
      v10 = *(v9 + 8);
      if (v10 == 0.0)
      {
        v10 = 0.0;
      }

      if ((*(v9 + 24) & 2) != 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v10 = 0.0;
      if ((*(v9 + 24) & 2) != 0)
      {
LABEL_20:
        v11 = *(v9 + 16);
        if (v11 == 0.0)
        {
          v11 = 0.0;
        }

        goto LABEL_27;
      }
    }

    v11 = 0.0;
LABEL_27:
    v9 = *&v11 ^ *&v10;
  }

  return *&v5 ^ v3 ^ v7 ^ *&v8 ^ v9;
}

uint64_t sirinluinternal::InternalSpanData::makeSiriVocabularySpanData(uint64_t this)
{
  if (!*(this + 40))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternal::InternalSpanData::makePlumSpanData(uint64_t this)
{
  if (!*(this + 32))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternal::InternalSpanData::makeOvertonKgSpanData(uint64_t this)
{
  if (!*(this + 24))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternal::InternalSpanData::makeMentionDetectorSpanData(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternal::InternalSpanData::makeMentionResolverSpanData(uint64_t this)
{
  if (!*(this + 16))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternalsnlp_intermediate::ITFMExecutedHandcraftedRules::formatText(sirinluinternalsnlp_intermediate::ITFMExecutedHandcraftedRules *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 1))
  {
    PB::TextFormatter::format();
  }

  v5 = *(this + 2);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "rules");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluinternalsnlp_intermediate::ITFMExecutedHandcraftedRules::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 16);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  if (*(v3 + 8))
  {

    return PB::Writer::write();
  }

  return this;
}

uint64_t sirinluinternalsnlp_intermediate::ITFMExecutedHandcraftedRules::readFrom(sirinluinternalsnlp_intermediate::ITFMExecutedHandcraftedRules *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v6 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = (v6 + v2);
      v11 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v11;
        v12 = *v10++;
        v9 |= (v12 & 0x7F) << v7;
        if ((v12 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        ++v11;
        v13 = v8++ > 8;
        if (v13)
        {
          goto LABEL_22;
        }
      }

LABEL_18:
      if ((v9 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_29;
      }

      if ((v9 >> 3) == 2)
      {
        operator new();
      }

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

LABEL_22:
      if ((PB::Reader::skip(a2) & 1) == 0)
      {
        v22 = 0;
        return v22 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_29;
      }
    }

    v14 = 0;
    v15 = 0;
    v9 = 0;
    v16 = (v6 + v2);
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = v2 + 1;
    while (v18)
    {
      v20 = *v16;
      *(a2 + 1) = v19;
      v9 |= (v20 & 0x7F) << v14;
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      v14 += 7;
      ++v16;
      --v18;
      ++v19;
      v13 = v15++ > 8;
      if (v13)
      {
        goto LABEL_22;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_29:
  v22 = v4 ^ 1;
  return v22 & 1;
}

void sirinluinternalsnlp_intermediate::ITFMExecutedHandcraftedRules::~ITFMExecutedHandcraftedRules(sirinluinternalsnlp_intermediate::ITFMExecutedHandcraftedRules *this)
{
  sirinluinternalsnlp_intermediate::ITFMExecutedHandcraftedRules::~ITFMExecutedHandcraftedRules(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4876010;
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 1);
  *(this + 1) = 0;
  if (v3)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v3);
  }

  PB::Base::~Base(this);
}

void *sirinluinternalsnlp_intermediate::ITFMExecutedHandcraftedRules::ITFMExecutedHandcraftedRules(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4876010;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4876010;
  return this;
}

void *sirinluinternalsnlp_intermediate::ITFMExecutedHandcraftedRules::ITFMExecutedHandcraftedRules(void *this, const sirinluinternalsnlp_intermediate::ITFMExecutedHandcraftedRules *a2)
{
  *this = &unk_1F4876010;
  this[1] = 0;
  this[2] = 0;
  if (*(a2 + 2))
  {
    operator new();
  }

  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternalsnlp_intermediate::ITFMExecutedHandcraftedRules::operator=(uint64_t a1, const sirinluinternalsnlp_intermediate::ITFMExecutedHandcraftedRules *a2)
{
  if (a1 != a2)
  {
    sirinluinternalsnlp_intermediate::ITFMExecutedHandcraftedRules::ITFMExecutedHandcraftedRules(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    sirinluinternalsnlp_intermediate::ITFMExecutedHandcraftedRules::~ITFMExecutedHandcraftedRules(&v5);
  }

  return a1;
}

uint64_t sirinluinternalsnlp_intermediate::swap(uint64_t this, sirinluinternalsnlp_intermediate::ITFMExecutedHandcraftedRules *a2, sirinluinternalsnlp_intermediate::ITFMExecutedHandcraftedRules *a3)
{
  v3 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v4;
  return this;
}

void *sirinluinternalsnlp_intermediate::ITFMExecutedHandcraftedRules::ITFMExecutedHandcraftedRules(void *a1, uint64_t a2)
{
  a1[1] = 0;
  v4 = a1 + 1;
  *a1 = &unk_1F4876010;
  a1[2] = 0;
  v5 = *(a2 + 16);
  *(a2 + 16) = 0;
  v6 = a1[2];
  a1[2] = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(a2 + 8);
  *(a2 + 8) = 0;
  v8 = *v4;
  *v4 = v7;
  if (v8)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v8);
  }

  return a1;
}

uint64_t sirinluinternalsnlp_intermediate::ITFMExecutedHandcraftedRules::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluinternalsnlp_intermediate::ITFMExecutedHandcraftedRules::ITFMExecutedHandcraftedRules(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    sirinluinternalsnlp_intermediate::ITFMExecutedHandcraftedRules::~ITFMExecutedHandcraftedRules(&v5);
  }

  return a1;
}

BOOL sirinluinternalsnlp_intermediate::ITFMExecutedHandcraftedRules::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v4)
  {
    if (!v5 || !sirinluinternalsnlp_intermediate::SNLPHandcraftedRules::operator==(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v6 = *(a1 + 8);
  v7 = *(a2 + 8);
  result = v7 == 0;
  if (!v6)
  {
    return result;
  }

  if (v7)
  {
    v9 = *(v6 + 23);
    if (v9 >= 0)
    {
      v10 = *(v6 + 23);
    }

    else
    {
      v10 = *(v6 + 8);
    }

    v11 = *(v7 + 23);
    v12 = v11;
    if ((v11 & 0x80u) != 0)
    {
      v11 = *(v7 + 8);
    }

    if (v10 == v11)
    {
      v13 = v9 >= 0 ? *(a1 + 8) : *v6;
      v14 = v12 >= 0 ? *(a2 + 8) : *v7;
      if (!memcmp(v13, v14, v10))
      {
        return 1;
      }
    }
  }

  return 0;
}

unint64_t sirinluinternalsnlp_intermediate::ITFMExecutedHandcraftedRules::hash_value(sirinluinternalsnlp_intermediate::ITFMExecutedHandcraftedRules *this)
{
  v2 = *(this + 2);
  if (!v2 || (v3 = *(v2 + 8), v4 = *(v2 + 16), v3 == v4))
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    do
    {
      v5 ^= std::__string_hash<char>::operator()[abi:ne200100](v3);
      v3 += 24;
    }

    while (v3 != v4);
  }

  v6 = *(this + 1);
  if (v6)
  {
    v6 = std::__string_hash<char>::operator()[abi:ne200100](v6);
  }

  return v6 ^ v5;
}

uint64_t sirinluinternalsnlp_intermediate::ITFMExecutedHandcraftedRules::makeRules(uint64_t this)
{
  if (!*(this + 16))
  {
    operator new();
  }

  return this;
}

uint64_t SIRINLUEXTERNALSystemDialogActGroupReadFrom(id *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(SIRINLUEXTERNALSystemDialogAct);
        objc_storeStrong(a1 + 2, v13);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !SIRINLUEXTERNALSystemDialogActReadFrom(&v13->super.super.isa, a2))
        {
          goto LABEL_28;
        }

LABEL_24:
        PBReaderRecallMark();

        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_26:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(SIRINLUEXTERNALSystemDialogActGroup);
    [a1 addChildActs:v13];
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !SIRINLUEXTERNALSystemDialogActGroupReadFrom(v13, a2))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRINLUEXTERNALRepetitionResultReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v29 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 16) |= 1u;
        while (1)
        {
          v30 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v30 & 0x7F) << v13;
          if ((v30 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v19 = v14++ > 8;
          if (v19)
          {
            v20 = 0;
            v21 = &OBJC_IVAR___SIRINLUEXTERNALRepetitionResult__asrHypothesisIndex;
            goto LABEL_44;
          }
        }

        v21 = &OBJC_IVAR___SIRINLUEXTERNALRepetitionResult__asrHypothesisIndex;
LABEL_41:
        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v15;
        }

LABEL_44:
        *(a1 + *v21) = v20;
        goto LABEL_45;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_45:
      v27 = [a2 position];
      if (v27 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v22 = 0;
    v23 = 0;
    v15 = 0;
    *(a1 + 16) |= 2u;
    while (1)
    {
      v31 = 0;
      v24 = [a2 position] + 1;
      if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
      {
        v26 = [a2 data];
        [v26 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v15 |= (v31 & 0x7F) << v22;
      if ((v31 & 0x80) == 0)
      {
        break;
      }

      v22 += 7;
      v19 = v23++ > 8;
      if (v19)
      {
        v20 = 0;
        v21 = &OBJC_IVAR___SIRINLUEXTERNALRepetitionResult__repetitionType;
        goto LABEL_44;
      }
    }

    v21 = &OBJC_IVAR___SIRINLUEXTERNALRepetitionResult__repetitionType;
    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sirinluexternal::UsoEntitySpan::formatText(sirinluexternal::UsoEntitySpan *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, a2, "alternatives");
  }

  v8 = *(this + 4);
  if (v8)
  {
    (*(*v8 + 32))(v8, a2, "end_index");
  }

  v9 = *(this + 5);
  if (v9)
  {
    (*(*v9 + 32))(v9, a2, "label");
  }

  v10 = *(this + 6);
  if (v10)
  {
    (*(*v10 + 32))(v10, a2, "match_info");
  }

  if (*(this + 120))
  {
    v11 = *(this + 28);
    PB::TextFormatter::format(a2, "node_index");
  }

  v12 = *(this + 7);
  if (v12)
  {
    (*(*v12 + 32))(v12, a2, "origin_app_id");
  }

  v13 = *(this + 8);
  if (v13)
  {
    (*(*v13 + 32))(v13, a2, "origin_entity_id");
  }

  v14 = *(this + 9);
  if (v14)
  {
    (*(*v14 + 32))(v14, a2, "payload_attachment_info");
  }

  v15 = *(this + 10);
  v16 = *(this + 11);
  while (v15 != v16)
  {
    v17 = *v15++;
    (*(*v17 + 32))(v17, a2, "properties");
  }

  if ((*(this + 120) & 2) != 0)
  {
    v18 = *(this + 29);
    PB::TextFormatter::format(a2, "source_component");
  }

  v19 = *(this + 13);
  if (v19)
  {
    (*(*v19 + 32))(v19, a2, "start_index");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternal::UsoEntitySpan::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if (*(this + 120))
  {
    v4 = *(this + 112);
    this = PB::Writer::writeVarInt(a2);
  }

  v5 = *(v3 + 56);
  if (v5)
  {
    this = PB::Writer::writeSubmessage(a2, v5);
  }

  if ((*(v3 + 120) & 2) != 0)
  {
    v6 = *(v3 + 116);
    this = PB::Writer::writeVarInt(a2);
  }

  v7 = *(v3 + 40);
  if (v7)
  {
    this = PB::Writer::writeSubmessage(a2, v7);
  }

  v8 = *(v3 + 48);
  if (v8)
  {
    this = PB::Writer::writeSubmessage(a2, v8);
  }

  v9 = *(v3 + 80);
  v10 = *(v3 + 88);
  while (v9 != v10)
  {
    v11 = *v9++;
    this = PB::Writer::writeSubmessage(a2, v11);
  }

  v12 = *(v3 + 104);
  if (v12)
  {
    this = PB::Writer::writeSubmessage(a2, v12);
  }

  v13 = *(v3 + 32);
  if (v13)
  {
    this = PB::Writer::writeSubmessage(a2, v13);
  }

  v14 = *(v3 + 8);
  v15 = *(v3 + 16);
  while (v14 != v15)
  {
    v16 = *v14++;
    this = PB::Writer::writeSubmessage(a2, v16);
  }

  v17 = *(v3 + 64);
  if (v17)
  {
    this = PB::Writer::writeSubmessage(a2, v17);
  }

  v18 = *(v3 + 72);
  if (v18)
  {

    return PB::Writer::writeSubmessage(a2, v18);
  }

  return this;
}

uint64_t sirinluexternal::UsoEntitySpan::readFrom(sirinluexternal::UsoEntitySpan *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  while (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v7 = *a2;
    if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
    {
      v15 = 0;
      v16 = 0;
      v10 = 0;
      v17 = (v7 + v2);
      v18 = v3 >= v2;
      v19 = v3 - v2;
      if (!v18)
      {
        v19 = 0;
      }

      v20 = v2 + 1;
      while (v19)
      {
        v21 = *v17;
        *(a2 + 1) = v20;
        v10 |= (v21 & 0x7F) << v15;
        if ((v21 & 0x80) == 0)
        {
          goto LABEL_19;
        }

        v15 += 7;
        ++v17;
        --v19;
        ++v20;
        v14 = v16++ > 8;
        if (v14)
        {
          goto LABEL_17;
        }
      }

      v4 = 1;
      *(a2 + 24) = 1;
      break;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = (v7 + v2);
    v12 = v2 + 1;
    while (1)
    {
      *(a2 + 1) = v12;
      v13 = *v11++;
      v10 |= (v13 & 0x7F) << v8;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v8 += 7;
      ++v12;
      v14 = v9++ > 8;
      if (v14)
      {
        goto LABEL_17;
      }
    }

LABEL_19:
    if ((v10 & 7) == 4)
    {
      v4 = 0;
      break;
    }

    v22 = v10 >> 3;
    if ((v10 >> 3) <= 5)
    {
      if (v22 <= 2)
      {
        if (v22 == 1)
        {
          *(this + 120) |= 1u;
          v24 = *(a2 + 1);
          v23 = *(a2 + 2);
          v25 = *a2;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
          {
            v41 = 0;
            v42 = 0;
            v28 = 0;
            v43 = (v25 + v24);
            v18 = v23 >= v24;
            v44 = v23 - v24;
            if (!v18)
            {
              v44 = 0;
            }

            v45 = v24 + 1;
            while (1)
            {
              if (!v44)
              {
                LODWORD(v28) = 0;
                *(a2 + 24) = 1;
                goto LABEL_77;
              }

              v46 = *v43;
              *(a2 + 1) = v45;
              v28 |= (v46 & 0x7F) << v41;
              if ((v46 & 0x80) == 0)
              {
                break;
              }

              v41 += 7;
              ++v43;
              --v44;
              ++v45;
              v14 = v42++ > 8;
              if (v14)
              {
LABEL_64:
                LODWORD(v28) = 0;
                goto LABEL_77;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v28) = 0;
            }
          }

          else
          {
            v26 = 0;
            v27 = 0;
            v28 = 0;
            v29 = (v25 + v24);
            v30 = v24 + 1;
            while (1)
            {
              *(a2 + 1) = v30;
              v31 = *v29++;
              v28 |= (v31 & 0x7F) << v26;
              if ((v31 & 0x80) == 0)
              {
                break;
              }

              v26 += 7;
              ++v30;
              v14 = v27++ > 8;
              if (v14)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_77:
          *(this + 28) = v28;
          goto LABEL_81;
        }

        if (v22 == 2)
        {
          operator new();
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            *(this + 120) |= 2u;
            v33 = *(a2 + 1);
            v32 = *(a2 + 2);
            v34 = *a2;
            if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v32)
            {
              v47 = 0;
              v48 = 0;
              v37 = 0;
              v49 = (v34 + v33);
              v18 = v32 >= v33;
              v50 = v32 - v33;
              if (!v18)
              {
                v50 = 0;
              }

              v51 = v33 + 1;
              while (1)
              {
                if (!v50)
                {
                  LODWORD(v37) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_80;
                }

                v52 = *v49;
                *(a2 + 1) = v51;
                v37 |= (v52 & 0x7F) << v47;
                if ((v52 & 0x80) == 0)
                {
                  break;
                }

                v47 += 7;
                ++v49;
                --v50;
                ++v51;
                v14 = v48++ > 8;
                if (v14)
                {
LABEL_72:
                  LODWORD(v37) = 0;
                  goto LABEL_80;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v37) = 0;
              }
            }

            else
            {
              v35 = 0;
              v36 = 0;
              v37 = 0;
              v38 = (v34 + v33);
              v39 = v33 + 1;
              while (1)
              {
                *(a2 + 1) = v39;
                v40 = *v38++;
                v37 |= (v40 & 0x7F) << v35;
                if ((v40 & 0x80) == 0)
                {
                  break;
                }

                v35 += 7;
                ++v39;
                v14 = v36++ > 8;
                if (v14)
                {
                  goto LABEL_72;
                }
              }
            }

LABEL_80:
            *(this + 29) = v37;
            goto LABEL_81;
          case 4:
            operator new();
          case 5:
            operator new();
        }
      }
    }

    else if (v22 > 8)
    {
      switch(v22)
      {
        case 9:
          operator new();
        case 0xA:
          operator new();
        case 0xB:
          operator new();
      }
    }

    else
    {
      switch(v22)
      {
        case 6:
          operator new();
        case 7:
          operator new();
        case 8:
          operator new();
      }
    }

LABEL_17:
    if ((PB::Reader::skip(a2) & 1) == 0)
    {
      v54 = 0;
      return v54 & 1;
    }

LABEL_81:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v54 = v4 ^ 1;
  return v54 & 1;
}

void sirinluexternal::UsoEntitySpan::~UsoEntitySpan(sirinluexternal::UsoEntitySpan *this)
{
  sirinluexternal::UsoEntitySpan::~UsoEntitySpan(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4876060;
  v2 = *(this + 13);
  *(this + 13) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 10))
  {
    std::vector<std::unique_ptr<siricommon::StringValue>>::clear[abi:ne200100](this + 10);
    operator delete(*(this + 10));
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 7);
  *(this + 7) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 6);
  *(this + 6) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 5);
  *(this + 5) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 4);
  *(this + 4) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  if (*(this + 1))
  {
    std::vector<std::unique_ptr<siricommon::StringValue>>::clear[abi:ne200100](this + 1);
    operator delete(*(this + 1));
  }

  PB::Base::~Base(this);
}

double sirinluexternal::UsoEntitySpan::UsoEntitySpan(sirinluexternal::UsoEntitySpan *this)
{
  *this = &unk_1F4876060;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 30) = 0;
  return result;
}

{
  *this = &unk_1F4876060;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 30) = 0;
  return result;
}

uint64_t sirinluexternal::UsoEntitySpan::UsoEntitySpan(uint64_t this, const sirinluexternal::UsoEntitySpan *a2)
{
  *this = &unk_1F4876060;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0;
  if (*(a2 + 120))
  {
    v2 = *(a2 + 28);
    *(this + 120) = 1;
    *(this + 112) = v2;
  }

  if (*(a2 + 7))
  {
    operator new();
  }

  if ((*(a2 + 120) & 2) != 0)
  {
    v3 = *(a2 + 29);
    *(this + 120) |= 2u;
    *(this + 116) = v3;
  }

  if (*(a2 + 5))
  {
    operator new();
  }

  if (*(a2 + 6))
  {
    operator new();
  }

  v4 = *(a2 + 10);
  if (v4 != *(a2 + 11))
  {
    v5 = *v4;
    operator new();
  }

  if (*(a2 + 13))
  {
    operator new();
  }

  if (*(a2 + 4))
  {
    operator new();
  }

  v6 = *(a2 + 1);
  if (v6 != *(a2 + 2))
  {
    v7 = *v6;
    operator new();
  }

  if (*(a2 + 8))
  {
    operator new();
  }

  if (*(a2 + 9))
  {
    operator new();
  }

  return this;
}

sirinluexternal *sirinluexternal::UsoEntitySpan::operator=(sirinluexternal *a1, const sirinluexternal::UsoEntitySpan *a2)
{
  if (a1 != a2)
  {
    sirinluexternal::UsoEntitySpan::UsoEntitySpan(v5, a2);
    sirinluexternal::swap(a1, v5, v3);
    sirinluexternal::UsoEntitySpan::~UsoEntitySpan(v5);
  }

  return a1;
}

double sirinluexternal::swap(sirinluexternal *this, sirinluexternal::UsoEntitySpan *a2, sirinluexternal::UsoEntitySpan *a3)
{
  v3 = *(this + 30);
  *(this + 30) = *(a2 + 30);
  *(a2 + 30) = v3;
  v4 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v4;
  result = *(a2 + 14);
  v6 = *(this + 14);
  *(this + 14) = result;
  *(a2 + 14) = v6;
  v7 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v7;
  v8 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v8;
  v9 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v9;
  v10 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v10;
  v11 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v11;
  v12 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v12;
  v13 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v13;
  v14 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v14;
  v15 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v15;
  v16 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v16;
  v17 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v17;
  v18 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v18;
  return result;
}

uint64_t sirinluexternal::UsoEntitySpan::UsoEntitySpan(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4876060;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = *(a2 + 120);
  *(a2 + 120) = 0;
  *(a1 + 112) = *(a2 + 112);
  v5 = *(a2 + 56);
  *(a2 + 56) = 0;
  v6 = *(a1 + 56);
  *(a1 + 56) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  *(a1 + 116) = *(a2 + 116);
  v7 = *(a2 + 40);
  *(a2 + 40) = 0;
  v8 = *(a1 + 40);
  *(a1 + 40) = v7;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(a2 + 48);
  *(a2 + 48) = 0;
  v10 = *(a1 + 48);
  *(a1 + 48) = v9;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  if (*(a1 + 80))
  {
    std::vector<std::unique_ptr<siricommon::StringValue>>::clear[abi:ne200100]((a1 + 80));
    operator delete(*(a1 + 80));
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
  }

  *(a1 + 80) = *(a2 + 80);
  v11 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  v12 = *(a1 + 104);
  *(a1 + 104) = v11;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = *(a2 + 32);
  *(a2 + 32) = 0;
  v14 = *(a1 + 32);
  *(a1 + 32) = v13;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  if (*v4)
  {
    std::vector<std::unique_ptr<siricommon::StringValue>>::clear[abi:ne200100](v4);
    operator delete(*v4);
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
  }

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v15 = *(a2 + 64);
  *(a2 + 64) = 0;
  v16 = *(a1 + 64);
  *(a1 + 64) = v15;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  v17 = *(a2 + 72);
  *(a2 + 72) = 0;
  v18 = *(a1 + 72);
  *(a1 + 72) = v17;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  return a1;
}

sirinluexternal *sirinluexternal::UsoEntitySpan::operator=(sirinluexternal *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluexternal::UsoEntitySpan::UsoEntitySpan(v5, a2);
    sirinluexternal::swap(a1, v5, v3);
    sirinluexternal::UsoEntitySpan::~UsoEntitySpan(v5);
  }

  return a1;
}

BOOL sirinluexternal::UsoEntitySpan::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 120);
  v5 = *(a2 + 120);
  if (v4)
  {
    if ((*(a2 + 120) & 1) == 0 || *(a1 + 112) != *(a2 + 112))
    {
      return 0;
    }
  }

  else if (*(a2 + 120))
  {
    return 0;
  }

  v6 = *(a1 + 56);
  v7 = *(a2 + 56);
  if (v6)
  {
    if (!v7 || !siricommon::StringValue::operator==(v6, v7))
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if ((v4 & 2) != 0)
  {
    if ((v5 & 2) == 0 || *(a1 + 116) != *(a2 + 116))
    {
      return 0;
    }
  }

  else if ((v5 & 2) != 0)
  {
    return 0;
  }

  v8 = *(a1 + 40);
  v9 = *(a2 + 40);
  if (v8)
  {
    if (!v9 || !siricommon::StringValue::operator==(v8, v9))
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v10 = *(a1 + 48);
  v11 = *(a2 + 48);
  if (v10)
  {
    if (!v11 || !sirinluexternal::MatchInfo::operator==(v10, v11))
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  result = PB::PtrVector<sirinluexternal::SpanProperty>::operator==(*(a1 + 80), *(a1 + 88), *(a2 + 80), *(a2 + 88));
  if (result)
  {
    v13 = *(a1 + 104);
    v14 = *(a2 + 104);
    if (v13)
    {
      if (!v14)
      {
        return 0;
      }

      v15 = *(v14 + 12);
      if (*(v13 + 12))
      {
        if ((*(v14 + 12) & 1) == 0 || *(v13 + 8) != *(v14 + 8))
        {
          return 0;
        }
      }

      else if (*(v14 + 12))
      {
        return 0;
      }
    }

    else if (v14)
    {
      return 0;
    }

    v16 = *(a1 + 32);
    v17 = *(a2 + 32);
    if (v16)
    {
      if (!v17)
      {
        return 0;
      }

      v18 = *(v17 + 12);
      if (*(v16 + 12))
      {
        if ((*(v17 + 12) & 1) == 0 || *(v16 + 8) != *(v17 + 8))
        {
          return 0;
        }
      }

      else if (*(v17 + 12))
      {
        return 0;
      }
    }

    else if (v17)
    {
      return 0;
    }

    result = PB::PtrVector<sirinluexternal::AsrAlternative>::operator==(*(a1 + 8), *(a1 + 16), *(a2 + 8), *(a2 + 16));
    if (result)
    {
      v19 = *(a1 + 64);
      v20 = *(a2 + 64);
      if (v19)
      {
        if (!v20 || !siricommon::StringValue::operator==(v19, v20))
        {
          return 0;
        }
      }

      else if (v20)
      {
        return 0;
      }

      v21 = *(a1 + 72);
      v22 = *(a2 + 72);
      result = (v21 | v22) == 0;
      if (v21)
      {
        if (v22)
        {
          v23 = *(v22 + 12);
          if (*(v21 + 12))
          {
            return (*(v22 + 12) & 1) != 0 && *(v21 + 8) == *(v22 + 8);
          }

          return (*(v22 + 12) & 1) == 0;
        }
      }
    }
  }

  return result;
}

BOOL PB::PtrVector<sirinluexternal::SpanProperty>::operator==(char *a1, char *a2, void **a3, uint64_t a4)
{
  if (a2 - a1 != a4 - a3)
  {
    return 0;
  }

  v5 = a1;
  if (a1 == a2)
  {
    return 1;
  }

  v6 = a3;
  do
  {
    v8 = *v5;
    v5 += 8;
    v7 = v8;
    v9 = *v6++;
    result = sirinluexternal::SpanProperty::operator==(v7, v9);
  }

  while (result && v5 != a2);
  return result;
}

BOOL PB::PtrVector<sirinluexternal::AsrAlternative>::operator==(char *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a2 - a1 != a4 - a3)
  {
    return 0;
  }

  v5 = a1;
  if (a1 == a2)
  {
    return 1;
  }

  v6 = a3;
  do
  {
    v8 = *v5++;
    v7 = v8;
    v9 = *v6++;
    result = sirinluexternal::AsrAlternative::operator==(v7, v9);
  }

  while (result && v5 != a2);
  return result;
}

unint64_t sirinluexternal::UsoEntitySpan::hash_value(sirinluexternal::UsoEntitySpan *this)
{
  v2 = *(this + 120);
  if (v2)
  {
    v28 = *(this + 28);
  }

  else
  {
    v28 = 0;
  }

  v3 = *(this + 7);
  if (!v3 || (v4 = *(v3 + 8)) == 0)
  {
    v5 = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_7;
    }

LABEL_9:
    v27 = 0;
    goto LABEL_10;
  }

  v5 = std::__string_hash<char>::operator()[abi:ne200100](v4);
  if ((v2 & 2) == 0)
  {
    goto LABEL_9;
  }

LABEL_7:
  v27 = *(this + 29);
LABEL_10:
  v6 = *(this + 5);
  if (v6 && (v7 = *(v6 + 8)) != 0)
  {
    v8 = std::__string_hash<char>::operator()[abi:ne200100](v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(this + 6);
  if (v9)
  {
    v10 = sirinluexternal::MatchInfo::hash_value(v9);
  }

  else
  {
    v10 = 0;
  }

  v12 = *(this + 10);
  v11 = *(this + 11);
  if (v12 == v11)
  {
    v13 = 0;
  }

  else
  {
    v13 = 0;
    do
    {
      v14 = *v12++;
      v13 ^= sirinluexternal::SpanProperty::hash_value(v14);
    }

    while (v12 != v11);
  }

  v15 = *(this + 13);
  if (v15 && (*(v15 + 12) & 1) != 0)
  {
    v16 = *(v15 + 8);
  }

  else
  {
    v16 = 0;
  }

  v17 = *(this + 4);
  if (v17 && (*(v17 + 12) & 1) != 0)
  {
    v18 = *(v17 + 8);
  }

  else
  {
    v18 = 0;
  }

  v20 = *(this + 1);
  v19 = *(this + 2);
  if (v20 == v19)
  {
    v21 = 0;
  }

  else
  {
    v21 = 0;
    do
    {
      v22 = *v20++;
      v21 ^= sirinluexternal::AsrAlternative::hash_value(v22);
    }

    while (v20 != v19);
  }

  v23 = *(this + 8);
  if (v23)
  {
    v24 = *(v23 + 8);
    if (v24)
    {
      v24 = std::__string_hash<char>::operator()[abi:ne200100](v24);
    }
  }

  else
  {
    v24 = 0;
  }

  v25 = *(this + 9);
  if (v25)
  {
    if (*(v25 + 12))
    {
      v25 = *(v25 + 8);
    }

    else
    {
      v25 = 0;
    }
  }

  return v5 ^ v28 ^ v27 ^ v8 ^ v10 ^ v13 ^ v16 ^ v18 ^ v24 ^ v25 ^ v21;
}

uint64_t sirinluexternal::UsoEntitySpan::makeOriginAppId(uint64_t this)
{
  if (!*(this + 56))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::UsoEntitySpan::makeLabel(uint64_t this)
{
  if (!*(this + 40))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::UsoEntitySpan::makeMatchInfo(uint64_t this)
{
  if (!*(this + 48))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::UsoEntitySpan::makeStartIndex(uint64_t this)
{
  if (!*(this + 104))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::UsoEntitySpan::makeEndIndex(uint64_t this)
{
  if (!*(this + 32))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::UsoEntitySpan::makeOriginEntityId(uint64_t this)
{
  if (!*(this + 64))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::UsoEntitySpan::makePayloadAttachmentInfo(uint64_t this)
{
  if (!*(this + 72))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternalsnlp_intermediate::SNLPHandcraftedRules::formatText(sirinluinternalsnlp_intermediate::SNLPHandcraftedRules *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  for (i = *(this + 2); v5 != i; v5 += 24)
  {
    PB::TextFormatter::format();
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluinternalsnlp_intermediate::SNLPHandcraftedRules::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  for (i = *(this + 16); v2 != i; v2 += 24)
  {
    this = PB::Writer::write();
  }

  return this;
}

uint64_t sirinluinternalsnlp_intermediate::SNLPHandcraftedRules::readFrom(sirinluinternalsnlp_intermediate::SNLPHandcraftedRules *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v7 = (this + 8);
    while (1)
    {
      v8 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = (v8 + v2);
      v13 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v13;
        v14 = *v12++;
        v11 |= (v14 & 0x7F) << v9;
        if ((v14 & 0x80) == 0)
        {
          break;
        }

        v9 += 7;
        ++v13;
        v15 = v10++ > 8;
        if (v15)
        {
          goto LABEL_23;
        }
      }

LABEL_19:
      if ((v11 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_39;
      }

      if ((v11 >> 3) == 1)
      {
        v23 = *(this + 2);
        v24 = *(this + 3);
        if (v23 >= v24)
        {
          v26 = 0xAAAAAAAAAAAAAAABLL * ((v23 - *v7) >> 3);
          v27 = v26 + 1;
          if (v26 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<std::unique_ptr<siricommon::StringValue>>::__throw_length_error[abi:ne200100]();
          }

          v28 = 0xAAAAAAAAAAAAAAABLL * ((v24 - *v7) >> 3);
          if (2 * v28 > v27)
          {
            v27 = 2 * v28;
          }

          if (v28 >= 0x555555555555555)
          {
            v29 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v29 = v27;
          }

          v38.__end_cap_.__value_ = v7;
          if (v29)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(v29);
          }

          v30 = 24 * v26;
          *v30 = 0;
          *(v30 + 8) = 0;
          *(v30 + 16) = 0;
          v25 = 24 * v26 + 24;
          v31 = *(this + 1);
          v32 = *(this + 2) - v31;
          v33 = 24 * v26 - v32;
          memcpy((v30 - v32), v31, v32);
          v34 = *(this + 1);
          *(this + 1) = v33;
          *(this + 2) = v25;
          v35 = *(this + 3);
          *(this + 3) = 0;
          v38.__end_ = v34;
          v38.__end_cap_.__value_ = v35;
          v38.__first_ = v34;
          v38.__begin_ = v34;
          std::__split_buffer<std::string>::~__split_buffer(&v38);
        }

        else
        {
          *v23 = 0;
          v23[1] = 0;
          v25 = (v23 + 3);
          v23[2] = 0;
        }

        *(this + 2) = v25;
        PB::Reader::read();
      }

      else
      {
LABEL_23:
        if (!PB::Reader::skip(a2))
        {
          v37 = 0;
          return v37 & 1;
        }
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_39;
      }
    }

    v16 = 0;
    v17 = 0;
    v11 = 0;
    v18 = (v8 + v2);
    v19 = v3 >= v2;
    v20 = v3 - v2;
    if (!v19)
    {
      v20 = 0;
    }

    v21 = v2 + 1;
    while (v20)
    {
      v22 = *v18;
      *(a2 + 1) = v21;
      v11 |= (v22 & 0x7F) << v16;
      if ((v22 & 0x80) == 0)
      {
        goto LABEL_19;
      }

      v16 += 7;
      ++v18;
      --v20;
      ++v21;
      v15 = v17++ > 8;
      if (v15)
      {
        goto LABEL_23;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_39:
  v37 = v4 ^ 1;
  return v37 & 1;
}

void sirinluinternalsnlp_intermediate::SNLPHandcraftedRules::~SNLPHandcraftedRules(sirinluinternalsnlp_intermediate::SNLPHandcraftedRules *this)
{
  *this = &unk_1F48760B0;
  v2 = (this + 8);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  PB::Base::~Base(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F48760B0;
  v2 = (this + 8);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);

  PB::Base::~Base(this);
}

{
  *this = &unk_1F48760B0;
  v2 = (this + 8);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);

  PB::Base::~Base(this);
}

void *sirinluinternalsnlp_intermediate::SNLPHandcraftedRules::SNLPHandcraftedRules(void *this)
{
  *this = &unk_1F48760B0;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_1F48760B0;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

sirinluinternalsnlp_intermediate::SNLPHandcraftedRules *sirinluinternalsnlp_intermediate::SNLPHandcraftedRules::SNLPHandcraftedRules(std::string **this, std::string **a2)
{
  *this = &unk_1F48760B0;
  this[1] = 0;
  v3 = (this + 1);
  this[2] = 0;
  this[3] = 0;
  if (this != a2)
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(v3, a2[1], a2[2], 0xAAAAAAAAAAAAAAABLL * ((a2[2] - a2[1]) >> 3));
  }

  return this;
}

uint64_t sirinluinternalsnlp_intermediate::SNLPHandcraftedRules::operator=(uint64_t a1, std::string **a2)
{
  if (a1 != a2)
  {
    sirinluinternalsnlp_intermediate::SNLPHandcraftedRules::SNLPHandcraftedRules(&v6, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v4;
    v6 = &unk_1F48760B0;
    v9 = &v7;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v9);
    PB::Base::~Base(&v6);
  }

  return a1;
}

void *sirinluinternalsnlp_intermediate::swap(void *this, sirinluinternalsnlp_intermediate::SNLPHandcraftedRules *a2, sirinluinternalsnlp_intermediate::SNLPHandcraftedRules *a3)
{
  v3 = this[1];
  this[1] = *(a2 + 1);
  *(a2 + 1) = v3;
  v4 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v5;
  return this;
}

uint64_t sirinluinternalsnlp_intermediate::SNLPHandcraftedRules::SNLPHandcraftedRules(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F48760B0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  std::vector<std::string>::__vdeallocate((a1 + 8));
  *v4 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return a1;
}

{
  *a1 = &unk_1F48760B0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  std::vector<std::string>::__vdeallocate((a1 + 8));
  *v4 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return a1;
}

uint64_t sirinluinternalsnlp_intermediate::SNLPHandcraftedRules::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v9 = &unk_1F48760B0;
    memset(&v10, 0, sizeof(v10));
    std::vector<std::string>::__vdeallocate(&v10);
    v4 = *(a2 + 24);
    v5 = *(a2 + 8);
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    v6 = *(a1 + 8);
    *(a1 + 8) = v5;
    *&v10.__begin_ = v6;
    v7 = *(a1 + 24);
    *(a1 + 24) = v4;
    v10.__end_cap_.__value_ = v7;
    v11 = &v10;
    v9 = &unk_1F48760B0;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v11);
    PB::Base::~Base(&v9);
  }

  return a1;
}

BOOL sirinluinternalsnlp_intermediate::SNLPHandcraftedRules::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  if (v3 - v2 != *(a2 + 16) - v4)
  {
    return 0;
  }

  if (v2 == v3)
  {
    return 1;
  }

  do
  {
    result = std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(v2, v4);
    if (!result)
    {
      break;
    }

    v2 += 24;
    v4 += 3;
  }

  while (v2 != v3);
  return result;
}

uint64_t sirinluinternalsnlp_intermediate::SNLPHandcraftedRules::hash_value(sirinluinternalsnlp_intermediate::SNLPHandcraftedRules *this)
{
  v1 = *(this + 1);
  v2 = *(this + 2);
  if (v1 == v2)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v3 ^= std::__string_hash<char>::operator()[abi:ne200100](v1);
    v1 += 24;
  }

  while (v1 != v2);
  return v3;
}

uint64_t SIRINLUEXTERNALUserWantedToProceedReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(SIRINLUEXTERNALUUID);
        objc_storeStrong((a1 + 16), v13);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !SIRINLUEXTERNALUUIDReadFrom(v13, a2))
        {
          goto LABEL_28;
        }

LABEL_24:
        PBReaderRecallMark();

        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_26:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(SIRINLUEXTERNALUsoGraph);
    objc_storeStrong((a1 + 8), v13);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !SIRINLUEXTERNALUsoGraphReadFrom(&v13->super.super.isa, a2))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRINLUINTERNALMENTION_RESOLVERMentionResolverResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v18) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v18 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v18 & 0x7F) << v5;
        if ((v18 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        break;
      }

      if (v13 == 2)
      {
        v14 = objc_alloc_init(SIRINLUINTERNALMatchingSpan);
        [a1 addMentions:v14];
        v18 = 0;
        v19 = 0;
        if (!PBReaderPlaceMark() || !SIRINLUINTERNALMatchingSpanReadFrom(v14, a2))
        {
LABEL_31:

          return 0;
        }

LABEL_25:
        PBReaderRecallMark();
LABEL_27:

        goto LABEL_29;
      }

      if (v13 == 1)
      {
        v14 = objc_alloc_init(SIRINLUEXTERNALUUID);
        objc_storeStrong((a1 + 16), v14);
        v18 = 0;
        v19 = 0;
        if (!PBReaderPlaceMark() || !SIRINLUEXTERNALUUIDReadFrom(v14, a2))
        {
          goto LABEL_31;
        }

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_29:
      v16 = [a2 position];
      if (v16 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v15 = PBReaderReadString();
    v14 = *(a1 + 24);
    *(a1 + 24) = v15;
    goto LABEL_27;
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRINLUINTERNALOverrideMetadataReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRINLUINTERNALSiriVocabularySpanDataReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v31) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v31 & 0x7F) << v5;
        if ((v31 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        *(a1 + 28) |= 1u;
        v31 = 0;
        v23 = [a2 position] + 8;
        if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 8, v24 <= objc_msgSend(a2, "length")))
        {
          v29 = [a2 data];
          [v29 getBytes:&v31 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v27 = v31;
        v28 = 8;
      }

      else
      {
        if (v13 != 2)
        {
          if (v13 == 1)
          {
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 28) |= 4u;
            while (1)
            {
              LOBYTE(v31) = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v31 & 0x7F) << v14;
              if ((v31 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_40;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_40:
            *(a1 + 24) = v20;
          }

          else
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }
          }

          goto LABEL_46;
        }

        *(a1 + 28) |= 2u;
        v31 = 0;
        v21 = [a2 position] + 8;
        if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 8, v22 <= objc_msgSend(a2, "length")))
        {
          v26 = [a2 data];
          [v26 getBytes:&v31 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v27 = v31;
        v28 = 16;
      }

      *(a1 + v28) = v27;
LABEL_46:
      v30 = [a2 position];
    }

    while (v30 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRINLUINTERNALQUERYREWRITEQRUtteranceReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v22) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v18 = objc_alloc_init(SIRINLUEXTERNALUUID);
          objc_storeStrong((a1 + 16), v18);
          v22 = 0;
          v23 = 0;
          if (!PBReaderPlaceMark() || !SIRINLUEXTERNALUUIDReadFrom(v18, a2))
          {
LABEL_41:

            return 0;
          }

          goto LABEL_34;
        }

        if (v13 == 2)
        {
          v16 = PBReaderReadString();
          v17 = *(a1 + 32);
          *(a1 + 32) = v16;

          goto LABEL_39;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v18 = objc_alloc_init(SIRINLUINTERNALQUERYREWRITEQRToken);
            [a1 addUtteranceTokens:v18];
LABEL_29:
            v22 = 0;
            v23 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUINTERNALQUERYREWRITEQRTokenReadFrom(v18, a2))
            {
              goto LABEL_41;
            }

LABEL_34:
            PBReaderRecallMark();

            goto LABEL_39;
          case 4:
            v18 = objc_alloc_init(SIRINLUINTERNALQUERYREWRITEQRToken);
            [a1 addAsrUtteranceTokens:v18];
            goto LABEL_29;
          case 5:
            *(a1 + 48) |= 1u;
            v22 = 0;
            v14 = [a2 position] + 8;
            if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v22 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            *(a1 + 8) = v22;
            goto LABEL_39;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_39:
      v20 = [a2 position];
    }

    while (v20 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sirinluinternalembedding::EmbeddingTensorOutput::formatText(sirinluinternalembedding::EmbeddingTensorOutput *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 44))
  {
    v5 = *(this + 1);
    PB::TextFormatter::format(a2, "embedding_dim");
  }

  v6 = *(this + 2);
  if (v6)
  {
    (*(*v6 + 32))(v6, a2, "embedding_tensor");
  }

  if (*(this + 3))
  {
    PB::TextFormatter::format();
  }

  if ((*(this + 44) & 2) != 0)
  {
    v7 = *(this + 40);
    PB::TextFormatter::format(a2, "is_stable_embeddings_version");
  }

  v8 = *(this + 4);
  if (v8)
  {
    (*(*v8 + 32))(v8, a2, "sentence_embedding_tensor");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluinternalembedding::EmbeddingTensorOutput::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if (*(this + 24))
  {
    this = PB::Writer::write();
  }

  v4 = *(v3 + 16);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  v5 = *(v3 + 32);
  if (v5)
  {
    this = PB::Writer::writeSubmessage(a2, v5);
  }

  v6 = *(v3 + 44);
  if (v6)
  {
    v7 = *(v3 + 8);
    this = PB::Writer::writeVarInt(a2);
    v6 = *(v3 + 44);
  }

  if ((v6 & 2) != 0)
  {
    v8 = *(v3 + 40);

    return PB::Writer::write(a2);
  }

  return this;
}

uint64_t sirinluinternalembedding::EmbeddingTensorOutput::readFrom(sirinluinternalembedding::EmbeddingTensorOutput *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  while (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v7 = *a2;
    if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
    {
      v15 = 0;
      v16 = 0;
      v10 = 0;
      v17 = (v7 + v2);
      v18 = v3 >= v2;
      v19 = v3 - v2;
      if (!v18)
      {
        v19 = 0;
      }

      v20 = v2 + 1;
      while (v19)
      {
        v21 = *v17;
        *(a2 + 1) = v20;
        v10 |= (v21 & 0x7F) << v15;
        if ((v21 & 0x80) == 0)
        {
          goto LABEL_19;
        }

        v15 += 7;
        ++v17;
        --v19;
        ++v20;
        v14 = v16++ > 8;
        if (v14)
        {
          goto LABEL_17;
        }
      }

      v4 = 1;
      *(a2 + 24) = 1;
      break;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = (v7 + v2);
    v12 = v2 + 1;
    while (1)
    {
      *(a2 + 1) = v12;
      v13 = *v11++;
      v10 |= (v13 & 0x7F) << v8;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v8 += 7;
      ++v12;
      v14 = v9++ > 8;
      if (v14)
      {
        goto LABEL_17;
      }
    }

LABEL_19:
    if ((v10 & 7) == 4)
    {
      v4 = 0;
      break;
    }

    v22 = v10 >> 3;
    if ((v10 >> 3) <= 2)
    {
      if (v22 == 1)
      {
        operator new();
      }

      if (v22 == 2)
      {
        operator new();
      }
    }

    else
    {
      switch(v22)
      {
        case 3:
          operator new();
        case 4:
          *(this + 44) |= 1u;
          v28 = *(a2 + 1);
          v27 = *(a2 + 2);
          v29 = *a2;
          if (v28 > 0xFFFFFFFFFFFFFFF5 || v28 + 10 > v27)
          {
            v36 = 0;
            v37 = 0;
            v32 = 0;
            v38 = (v29 + v28);
            v18 = v27 >= v28;
            v39 = v27 - v28;
            if (!v18)
            {
              v39 = 0;
            }

            v40 = v28 + 1;
            while (1)
            {
              if (!v39)
              {
                v32 = 0;
                *(a2 + 24) = 1;
                goto LABEL_51;
              }

              v41 = *v38;
              *(a2 + 1) = v40;
              v32 |= (v41 & 0x7F) << v36;
              if ((v41 & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              ++v38;
              --v39;
              ++v40;
              v14 = v37++ > 8;
              if (v14)
              {
LABEL_45:
                v32 = 0;
                goto LABEL_51;
              }
            }

            if (*(a2 + 24))
            {
              v32 = 0;
            }
          }

          else
          {
            v30 = 0;
            v31 = 0;
            v32 = 0;
            v33 = (v29 + v28);
            v34 = v28 + 1;
            while (1)
            {
              *(a2 + 1) = v34;
              v35 = *v33++;
              v32 |= (v35 & 0x7F) << v30;
              if ((v35 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              ++v34;
              v14 = v31++ > 8;
              if (v14)
              {
                goto LABEL_45;
              }
            }
          }

LABEL_51:
          *(this + 1) = v32;
          goto LABEL_52;
        case 5:
          *(this + 44) |= 2u;
          v23 = *(a2 + 1);
          if (v23 >= *(a2 + 2))
          {
            v26 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v24 = v23 + 1;
            v25 = *(*a2 + v23);
            *(a2 + 1) = v24;
            v26 = v25 != 0;
          }

          *(this + 40) = v26;
          goto LABEL_52;
      }
    }

LABEL_17:
    if ((PB::Reader::skip(a2) & 1) == 0)
    {
      v43 = 0;
      return v43 & 1;
    }

LABEL_52:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v43 = v4 ^ 1;
  return v43 & 1;
}

void sirinluinternalembedding::EmbeddingTensorOutput::~EmbeddingTensorOutput(sirinluinternalembedding::EmbeddingTensorOutput *this)
{
  sirinluinternalembedding::EmbeddingTensorOutput::~EmbeddingTensorOutput(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4876120;
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v3);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  PB::Base::~Base(this);
}

uint64_t sirinluinternalembedding::EmbeddingTensorOutput::EmbeddingTensorOutput(uint64_t this)
{
  *this = &unk_1F4876120;
  *(this + 44) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 16) = 0;
  return this;
}

{
  *this = &unk_1F4876120;
  *(this + 44) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 16) = 0;
  return this;
}

uint64_t sirinluinternalembedding::EmbeddingTensorOutput::EmbeddingTensorOutput(uint64_t this, const sirinluinternalembedding::EmbeddingTensorOutput *a2)
{
  *this = &unk_1F4876120;
  *(this + 16) = 0;
  *(this + 44) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  if (*(a2 + 3))
  {
    operator new();
  }

  if (*(a2 + 2))
  {
    operator new();
  }

  if (*(a2 + 4))
  {
    operator new();
  }

  v2 = *(a2 + 44);
  if (v2)
  {
    v3 = *(a2 + 1);
    *(this + 44) |= 1u;
    *(this + 8) = v3;
    v2 = *(a2 + 44);
  }

  if ((v2 & 2) != 0)
  {
    v4 = *(a2 + 40);
    *(this + 44) |= 2u;
    *(this + 40) = v4;
  }

  return this;
}

uint64_t sirinluinternalembedding::EmbeddingTensorOutput::operator=(uint64_t a1, const sirinluinternalembedding::EmbeddingTensorOutput *a2)
{
  if (a1 != a2)
  {
    sirinluinternalembedding::EmbeddingTensorOutput::EmbeddingTensorOutput(&v8, a2);
    v3 = *(a1 + 44);
    *(a1 + 44) = v13;
    v13 = v3;
    v4 = *(a1 + 16);
    *(a1 + 16) = v10;
    v10 = v4;
    v5 = *(a1 + 32);
    *(a1 + 32) = v11;
    v11 = v5;
    v6 = *(a1 + 8);
    *(a1 + 8) = v9;
    v9 = v6;
    LOBYTE(v6) = *(a1 + 40);
    *(a1 + 40) = v12;
    v12 = v6;
    sirinluinternalembedding::EmbeddingTensorOutput::~EmbeddingTensorOutput(&v8);
  }

  return a1;
}

uint64_t sirinluinternalembedding::swap(uint64_t this, sirinluinternalembedding::EmbeddingTensorOutput *a2, sirinluinternalembedding::EmbeddingTensorOutput *a3)
{
  v3 = *(this + 44);
  *(this + 44) = *(a2 + 11);
  *(a2 + 11) = v3;
  v4 = *(this + 24);
  *(this + 24) = *(a2 + 3);
  *(a2 + 3) = v4;
  v6 = *(this + 8);
  v5 = *(this + 16);
  v7 = *(a2 + 2);
  *(this + 8) = *(a2 + 1);
  *(this + 16) = v7;
  *(a2 + 2) = v5;
  v8 = *(this + 32);
  *(this + 32) = *(a2 + 4);
  *(a2 + 4) = v8;
  *(a2 + 1) = v6;
  LOBYTE(v8) = *(this + 40);
  *(this + 40) = *(a2 + 40);
  *(a2 + 40) = v8;
  return this;
}

uint64_t sirinluinternalembedding::EmbeddingTensorOutput::EmbeddingTensorOutput(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4876120;
  *(a1 + 16) = 0;
  v4 = (a1 + 16);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 44) = *(a2 + 44);
  *(a2 + 44) = 0;
  v5 = *(a2 + 24);
  *(a2 + 24) = 0;
  v6 = *(a1 + 24);
  *(a1 + 24) = v5;
  if (v6)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v6);
  }

  v7 = *(a2 + 16);
  *(a2 + 16) = 0;
  v8 = *v4;
  *v4 = v7;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(a2 + 32);
  *(a2 + 32) = 0;
  v10 = *(a1 + 32);
  *(a1 + 32) = v9;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t sirinluinternalembedding::EmbeddingTensorOutput::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluinternalembedding::EmbeddingTensorOutput::EmbeddingTensorOutput(&v8, a2);
    v3 = *(a1 + 44);
    *(a1 + 44) = v13;
    v13 = v3;
    v4 = *(a1 + 16);
    *(a1 + 16) = v10;
    v10 = v4;
    v5 = *(a1 + 32);
    *(a1 + 32) = v11;
    v11 = v5;
    v6 = *(a1 + 8);
    *(a1 + 8) = v9;
    v9 = v6;
    LOBYTE(v6) = *(a1 + 40);
    *(a1 + 40) = v12;
    v12 = v6;
    sirinluinternalembedding::EmbeddingTensorOutput::~EmbeddingTensorOutput(&v8);
  }

  return a1;
}

BOOL sirinluinternalembedding::EmbeddingTensorOutput::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v5 = *(a2 + 24);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *(v4 + 23);
    if (v6 >= 0)
    {
      v7 = *(v4 + 23);
    }

    else
    {
      v7 = *(v4 + 8);
    }

    v8 = *(v5 + 23);
    v9 = v8;
    if ((v8 & 0x80u) != 0)
    {
      v8 = *(v5 + 8);
    }

    if (v7 != v8)
    {
      return 0;
    }

    v10 = v6 >= 0 ? *(a1 + 24) : *v4;
    v11 = v9 >= 0 ? *(a2 + 24) : *v5;
    if (memcmp(v10, v11, v7))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v13 = *(a1 + 16);
  v14 = *(a2 + 16);
  if (v13)
  {
    if (!v14 || !sirinluinternal::NLv4EmbeddingTensor::operator==(v13, v14))
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  v15 = *(a1 + 32);
  v16 = *(a2 + 32);
  if (v15)
  {
    if (!v16 || !sirinluinternal::NLv4EmbeddingTensor::operator==(v15, v16))
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  if ((*(a1 + 44) & 1) == 0)
  {
    if ((*(a2 + 44) & 1) == 0)
    {
      goto LABEL_35;
    }

    return 0;
  }

  if ((*(a2 + 44) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

LABEL_35:
  result = (*(a2 + 44) & 2) == 0;
  if ((*(a1 + 44) & 2) != 0)
  {
    return (*(a2 + 44) & 2) != 0 && *(a1 + 40) == *(a2 + 40);
  }

  return result;
}