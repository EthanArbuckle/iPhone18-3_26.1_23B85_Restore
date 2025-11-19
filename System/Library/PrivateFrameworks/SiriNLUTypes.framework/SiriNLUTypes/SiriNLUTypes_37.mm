BOOL PB::PtrVector<sirinluexternal::EntityCandidate>::operator==(uint64_t **a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v3 = a1[1];
  if (v3 - *a1 != a3 - a2)
  {
    return 0;
  }

  if (v4 == v3)
  {
    return 1;
  }

  v5 = a2;
  do
  {
    v7 = *v4++;
    v6 = v7;
    v8 = *v5++;
    result = sirinluexternal::EntityCandidate::operator==(v6, v8);
  }

  while (result && v4 != v3);
  return result;
}

unint64_t sirinluinternalmention_resolver::MentionResolverRequest::hash_value(sirinluinternalmention_resolver::MentionResolverRequest *this)
{
  v2 = *(this + 17);
  if (!v2)
  {
    v40 = 0;
    goto LABEL_11;
  }

  if ((*(v2 + 28) & 1) == 0)
  {
    v3 = 0;
    if ((*(v2 + 28) & 2) != 0)
    {
      goto LABEL_4;
    }

LABEL_8:
    v4 = 0;
    if ((*(v2 + 28) & 4) != 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    v5 = 0;
    goto LABEL_10;
  }

  v3 = *(v2 + 8);
  if ((*(v2 + 28) & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v4 = *(v2 + 16);
  if ((*(v2 + 28) & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v5 = *(v2 + 24);
LABEL_10:
  v40 = v4 ^ v3 ^ v5;
LABEL_11:
  v6 = *(this + 16);
  if (!v6)
  {
    v39 = 0;
    goto LABEL_21;
  }

  if ((*(v6 + 28) & 1) == 0)
  {
    v7 = 0;
    if ((*(v6 + 28) & 2) != 0)
    {
      goto LABEL_14;
    }

LABEL_18:
    v8 = 0;
    if ((*(v6 + 28) & 4) != 0)
    {
      goto LABEL_15;
    }

LABEL_19:
    v9 = 0;
    goto LABEL_20;
  }

  v7 = *(v6 + 8);
  if ((*(v6 + 28) & 2) == 0)
  {
    goto LABEL_18;
  }

LABEL_14:
  v8 = *(v6 + 16);
  if ((*(v6 + 28) & 4) == 0)
  {
    goto LABEL_19;
  }

LABEL_15:
  v9 = *(v6 + 24);
LABEL_20:
  v39 = v8 ^ v7 ^ v9;
LABEL_21:
  v10 = *(this + 18);
  if (v10)
  {
    v38 = std::__string_hash<char>::operator()[abi:ne200100](v10);
  }

  else
  {
    v38 = 0;
  }

  v11 = *(this + 21);
  if (v11)
  {
    v37 = std::__string_hash<char>::operator()[abi:ne200100](v11);
  }

  else
  {
    v37 = 0;
  }

  v12 = *(this + 19);
  if (v12)
  {
    v36 = sirinluinternal::TokenChain::hash_value(v12);
  }

  else
  {
    v36 = 0;
  }

  v13 = *(this + 8);
  if (v13)
  {
    v14 = sirinluinternal::NLv4EmbeddingTensor::hash_value(v13);
  }

  else
  {
    v14 = 0;
  }

  v15 = *(this + 9);
  v16 = *(this + 10);
  if (v15 == v16)
  {
    v17 = 0;
  }

  else
  {
    v17 = 0;
    do
    {
      v18 = *v15++;
      v17 ^= sirinluexternal::EntityCandidate::hash_value(v18);
    }

    while (v15 != v16);
  }

  v19 = *(this + 5);
  v20 = *(this + 6);
  if (v19 == v20)
  {
    v21 = 0;
  }

  else
  {
    v21 = 0;
    do
    {
      v22 = *v19++;
      v21 ^= sirinluinternal::MatchingSpan::hash_value(v22);
    }

    while (v19 != v20);
  }

  if (*(this + 176))
  {
    v23 = *(this + 15);
  }

  else
  {
    v23 = 0;
  }

  v24 = *(this + 12);
  v25 = *(this + 13);
  if (v24 == v25)
  {
    v26 = 0;
    if ((*(this + 176) & 2) == 0)
    {
LABEL_50:
      v28 = 0;
      goto LABEL_53;
    }
  }

  else
  {
    v26 = 0;
    do
    {
      v27 = *v24++;
      v26 ^= sirinluinternal::MatchingSpan::hash_value(v27);
    }

    while (v24 != v25);
    if ((*(this + 176) & 2) == 0)
    {
      goto LABEL_50;
    }
  }

  v28 = *(this + 20);
LABEL_53:
  v29 = *(this + 1);
  if (v29)
  {
    v30 = sirinluexternal::RequestID::hash_value(v29);
  }

  else
  {
    v30 = 0;
  }

  v31 = *(this + 2);
  v32 = *(this + 3);
  if (v31 == v32)
  {
    v33 = 0;
  }

  else
  {
    v33 = 0;
    do
    {
      v34 = *v31++;
      v33 ^= sirinluinternal::MatchingSpan::hash_value(v34);
    }

    while (v31 != v32);
  }

  return v39 ^ v40 ^ v38 ^ v37 ^ v36 ^ v14 ^ v17 ^ v21 ^ v23 ^ v26 ^ v28 ^ v30 ^ v33;
}

uint64_t sirinluinternalmention_resolver::MentionResolverRequest::makeRequestId(uint64_t this)
{
  if (!*(this + 136))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternalmention_resolver::MentionResolverRequest::makeNluRequestId(uint64_t this)
{
  if (!*(this + 128))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternalmention_resolver::MentionResolverRequest::makeTokenChain(uint64_t this)
{
  if (!*(this + 152))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternalmention_resolver::MentionResolverRequest::makeEmbeddingTensor(uint64_t this)
{
  if (!*(this + 64))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternalmention_resolver::MentionResolverRequest::makeCdmRequestId(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::SystemPrompted::formatText(sirinluexternal::SystemPrompted *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "target");
  }

  v6 = *(this + 2);
  if (v6)
  {
    (*(*v6 + 32))(v6, a2, "task_id");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternal::SystemPrompted::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 16);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  v5 = *(v3 + 8);
  if (v5)
  {

    return PB::Writer::writeSubmessage(a2, v5);
  }

  return this;
}

uint64_t sirinluexternal::SystemPrompted::readFrom(sirinluexternal::SystemPrompted *this, PB::Reader *a2)
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

void sirinluexternal::SystemPrompted::~SystemPrompted(sirinluexternal::SystemPrompted *this)
{
  sirinluexternal::SystemPrompted::~SystemPrompted(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F48772F0;
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
    (*(*v3 + 8))(v3);
  }

  PB::Base::~Base(this);
}

void *sirinluexternal::SystemPrompted::SystemPrompted(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F48772F0;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F48772F0;
  return this;
}

void *sirinluexternal::SystemPrompted::SystemPrompted(void *this, const sirinluexternal::SystemPrompted *a2)
{
  *this = &unk_1F48772F0;
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

uint64_t sirinluexternal::SystemPrompted::operator=(uint64_t a1, const sirinluexternal::SystemPrompted *a2)
{
  if (a1 != a2)
  {
    sirinluexternal::SystemPrompted::SystemPrompted(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    sirinluexternal::SystemPrompted::~SystemPrompted(&v5);
  }

  return a1;
}

uint64_t sirinluexternal::swap(uint64_t this, sirinluexternal::SystemPrompted *a2, sirinluexternal::SystemPrompted *a3)
{
  v3 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v4;
  return this;
}

void *sirinluexternal::SystemPrompted::SystemPrompted(void *a1, uint64_t a2)
{
  a1[1] = 0;
  v4 = a1 + 1;
  *a1 = &unk_1F48772F0;
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
    (*(*v8 + 8))(v8);
  }

  return a1;
}

uint64_t sirinluexternal::SystemPrompted::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluexternal::SystemPrompted::SystemPrompted(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    sirinluexternal::SystemPrompted::~SystemPrompted(&v5);
  }

  return a1;
}

BOOL sirinluexternal::SystemPrompted::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v4)
  {
    if (v5 && sirinluexternal::UUID::operator==(v4, v5))
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (v5)
  {
    return 0;
  }

LABEL_4:
  v6 = *(a1 + 8);
  v7 = *(a2 + 8);
  result = (v6 | v7) == 0;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = *(a1 + 8);

    return sirinluexternal::UsoGraph::operator==(v10, v7);
  }

  return result;
}

unint64_t sirinluexternal::SystemPrompted::hash_value(sirinluexternal::SystemPrompted *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    v5 = 0;
    goto LABEL_11;
  }

  if ((*(v1 + 28) & 1) == 0)
  {
    v2 = 0;
    if ((*(v1 + 28) & 2) != 0)
    {
      goto LABEL_4;
    }

LABEL_8:
    v3 = 0;
    if ((*(v1 + 28) & 4) != 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    v4 = 0;
    goto LABEL_10;
  }

  v2 = *(v1 + 8);
  if ((*(v1 + 28) & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v3 = *(v1 + 16);
  if ((*(v1 + 28) & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v4 = *(v1 + 24);
LABEL_10:
  v5 = v3 ^ v2 ^ v4;
LABEL_11:
  v6 = *(this + 1);
  if (v6)
  {
    v6 = sirinluexternal::UsoGraph::hash_value(v6);
  }

  return v6 ^ v5;
}

uint64_t sirinluexternal::SystemPrompted::makeTaskId(uint64_t this)
{
  if (!*(this + 16))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::SystemPrompted::makeTarget(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternalspanmatch::SpanMatchResponse::formatText(sirinluinternalspanmatch::SpanMatchResponse *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, a2, "matching_spans");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluinternalspanmatch::SpanMatchResponse::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  for (i = *(this + 16); v2 != i; this = PB::Writer::writeSubmessage(a2, v5))
  {
    v5 = *v2++;
  }

  return this;
}

uint64_t sirinluinternalspanmatch::SpanMatchResponse::readFrom(sirinluinternalspanmatch::SpanMatchResponse *this, PB::Reader *a2)
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
        PB::PtrVector<sirinluinternal::MatchingSpan>::emplace_back<>();
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

void sirinluinternalspanmatch::SpanMatchResponse::~SpanMatchResponse(sirinluinternalspanmatch::SpanMatchResponse *this)
{
  *this = &unk_1F4877340;
  v2 = (this + 8);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v2);
  PB::Base::~Base(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4877340;
  v2 = (this + 8);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v2);

  PB::Base::~Base(this);
}

{
  *this = &unk_1F4877340;
  v2 = (this + 8);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v2);

  PB::Base::~Base(this);
}

void *sirinluinternalspanmatch::SpanMatchResponse::SpanMatchResponse(void *this)
{
  *this = &unk_1F4877340;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_1F4877340;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

void *sirinluinternalspanmatch::SpanMatchResponse::SpanMatchResponse(void *this, const sirinluinternalspanmatch::SpanMatchResponse *a2)
{
  this[1] = 0;
  *this = &unk_1F4877340;
  this[2] = 0;
  this[3] = 0;
  v2 = *(a2 + 1);
  if (v2 != *(a2 + 2))
  {
    v3 = *v2;
    PB::PtrVector<sirinluinternal::MatchingSpan>::emplace_back<sirinluinternal::MatchingSpan const&>();
  }

  return this;
}

uint64_t sirinluinternalspanmatch::SpanMatchResponse::operator=(uint64_t a1, const sirinluinternalspanmatch::SpanMatchResponse *a2)
{
  if (a1 != a2)
  {
    sirinluinternalspanmatch::SpanMatchResponse::SpanMatchResponse(&v6, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v4;
    v6 = &unk_1F4877340;
    v9 = &v7;
    std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v9);
    PB::Base::~Base(&v6);
  }

  return a1;
}

void *sirinluinternalspanmatch::swap(void *this, sirinluinternalspanmatch::SpanMatchResponse *a2, sirinluinternalspanmatch::SpanMatchResponse *a3)
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

uint64_t sirinluinternalspanmatch::SpanMatchResponse::SpanMatchResponse(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4877340;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__vdeallocate((a1 + 8));
  *v4 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return a1;
}

{
  *a1 = &unk_1F4877340;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__vdeallocate((a1 + 8));
  *v4 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return a1;
}

uint64_t sirinluinternalspanmatch::SpanMatchResponse::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v9 = &unk_1F4877340;
    v10 = 0uLL;
    v11 = 0;
    std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__vdeallocate(&v10);
    v4 = *(a2 + 24);
    v5 = *(a2 + 8);
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    v6 = *(a1 + 8);
    *(a1 + 8) = v5;
    v10 = v6;
    v7 = *(a1 + 24);
    *(a1 + 24) = v4;
    v11 = v7;
    v12 = &v10;
    v9 = &unk_1F4877340;
    std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v12);
    PB::Base::~Base(&v9);
  }

  return a1;
}

uint64_t sirinluinternalspanmatch::SpanMatchResponse::hash_value(sirinluinternalspanmatch::SpanMatchResponse *this)
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
    v4 = *v1++;
    v3 ^= sirinluinternal::MatchingSpan::hash_value(v4);
  }

  while (v1 != v2);
  return v3;
}

uint64_t SIRINLUINTERNALComponentOverrideReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v41) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v41 & 0x7F) << v5;
        if ((v41 & 0x80) == 0)
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
      if ((v12 >> 3) <= 3)
      {
        switch(v13)
        {
          case 1:
            v22 = PBReaderReadString();
            v23 = 16;
            goto LABEL_40;
          case 2:
            v32 = 0;
            v33 = 0;
            v34 = 0;
            *(a1 + 60) |= 2u;
            while (1)
            {
              LOBYTE(v41) = 0;
              v35 = [a2 position] + 1;
              if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
              {
                v37 = [a2 data];
                [v37 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v34 |= (v41 & 0x7F) << v32;
              if ((v41 & 0x80) == 0)
              {
                break;
              }

              v32 += 7;
              v11 = v33++ >= 9;
              if (v11)
              {
                v38 = 0;
                goto LABEL_73;
              }
            }

            if ([a2 hasError])
            {
              v38 = 0;
            }

            else
            {
              v38 = v34;
            }

LABEL_73:
            *(a1 + 32) = v38;
            goto LABEL_74;
          case 3:
            v15 = 0;
            v16 = 0;
            v17 = 0;
            *(a1 + 60) |= 4u;
            while (1)
            {
              LOBYTE(v41) = 0;
              v18 = [a2 position] + 1;
              if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
              {
                v20 = [a2 data];
                [v20 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v17 |= (v41 & 0x7F) << v15;
              if ((v41 & 0x80) == 0)
              {
                break;
              }

              v15 += 7;
              v11 = v16++ >= 9;
              if (v11)
              {
                LOBYTE(v21) = 0;
                goto LABEL_69;
              }
            }

            v21 = (v17 != 0) & ~[a2 hasError];
LABEL_69:
            *(a1 + 56) = v21;
            goto LABEL_74;
        }
      }

      else if (v13 > 5)
      {
        if (v13 == 6)
        {
          v14 = objc_alloc_init(SIRINLUINTERNALNluRequestRule);
          [a1 addNluRequestRules:v14];
          v41 = 0;
          v42 = 0;
          if (!PBReaderPlaceMark() || !SIRINLUINTERNALNluRequestRuleReadFrom(v14, a2))
          {
LABEL_76:

            return 0;
          }

          goto LABEL_54;
        }

        if (v13 == 7)
        {
          v22 = PBReaderReadData();
          v23 = 40;
LABEL_40:
          v24 = *(a1 + v23);
          *(a1 + v23) = v22;

          goto LABEL_74;
        }
      }

      else
      {
        if (v13 == 4)
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          *(a1 + 60) |= 1u;
          while (1)
          {
            LOBYTE(v41) = 0;
            v28 = [a2 position] + 1;
            if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
            {
              v30 = [a2 data];
              [v30 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v27 |= (v41 & 0x7F) << v25;
            if ((v41 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v11 = v26++ >= 9;
            if (v11)
            {
              v31 = 0;
              goto LABEL_67;
            }
          }

          if ([a2 hasError])
          {
            v31 = 0;
          }

          else
          {
            v31 = v27;
          }

LABEL_67:
          *(a1 + 8) = v31;
          goto LABEL_74;
        }

        if (v13 == 5)
        {
          v14 = objc_alloc_init(SIRINLUINTERNALOverrideValue);
          objc_storeStrong((a1 + 48), v14);
          v41 = 0;
          v42 = 0;
          if (!PBReaderPlaceMark() || !SIRINLUINTERNALOverrideValueReadFrom(&v14->super.super.isa, a2))
          {
            goto LABEL_76;
          }

LABEL_54:
          PBReaderRecallMark();

          goto LABEL_74;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_74:
      v39 = [a2 position];
    }

    while (v39 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRINLUINTERNALSNLP_INTERMEDIATENLv4SpanFeaturizerResponseReadFrom(uint64_t a1, void *a2)
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
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(SIRINLUINTERNALSNLP_INTERMEDIATESpanFeaturizerResponse);
        objc_storeStrong((a1 + 8), v13);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !SIRINLUINTERNALSNLP_INTERMEDIATESpanFeaturizerResponseReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRINLUEXTERNALUtteranceSpanReadFrom(uint64_t a1, void *a2)
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
        v50 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v50 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v50 & 0x7F) << v5;
        if ((v50 & 0x80) == 0)
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
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            v33 = 0;
            v34 = 0;
            v16 = 0;
            *(a1 + 32) |= 4u;
            while (1)
            {
              v51 = 0;
              v35 = [a2 position] + 1;
              if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
              {
                v37 = [a2 data];
                [v37 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v51 & 0x7F) << v33;
              if ((v51 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v20 = v34++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___SIRINLUEXTERNALUtteranceSpan__endUnicodeScalarIndex;
                goto LABEL_89;
              }
            }

            v22 = &OBJC_IVAR___SIRINLUEXTERNALUtteranceSpan__endUnicodeScalarIndex;
            goto LABEL_86;
          case 5:
            v43 = 0;
            v44 = 0;
            v16 = 0;
            *(a1 + 32) |= 0x10u;
            while (1)
            {
              v56 = 0;
              v45 = [a2 position] + 1;
              if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
              {
                v47 = [a2 data];
                [v47 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v56 & 0x7F) << v43;
              if ((v56 & 0x80) == 0)
              {
                break;
              }

              v43 += 7;
              v20 = v44++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___SIRINLUEXTERNALUtteranceSpan__startMilliSeconds;
                goto LABEL_89;
              }
            }

            v22 = &OBJC_IVAR___SIRINLUEXTERNALUtteranceSpan__startMilliSeconds;
LABEL_86:
            if ([a2 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v16;
            }

LABEL_89:
            *(a1 + *v22) = v21;
            goto LABEL_90;
          case 6:
            v23 = 0;
            v24 = 0;
            v16 = 0;
            *(a1 + 32) |= 2u;
            while (1)
            {
              v55 = 0;
              v25 = [a2 position] + 1;
              if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
              {
                v27 = [a2 data];
                [v27 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v55 & 0x7F) << v23;
              if ((v55 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v20 = v24++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___SIRINLUEXTERNALUtteranceSpan__endMilliSeconds;
                goto LABEL_89;
              }
            }

            v22 = &OBJC_IVAR___SIRINLUEXTERNALUtteranceSpan__endMilliSeconds;
            goto LABEL_86;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v28 = 0;
            v29 = 0;
            v16 = 0;
            *(a1 + 32) |= 8u;
            while (1)
            {
              v54 = 0;
              v30 = [a2 position] + 1;
              if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
              {
                v32 = [a2 data];
                [v32 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v54 & 0x7F) << v28;
              if ((v54 & 0x80) == 0)
              {
                break;
              }

              v28 += 7;
              v20 = v29++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___SIRINLUEXTERNALUtteranceSpan__startIndex;
                goto LABEL_89;
              }
            }

            v22 = &OBJC_IVAR___SIRINLUEXTERNALUtteranceSpan__startIndex;
            goto LABEL_86;
          case 2:
            v38 = 0;
            v39 = 0;
            v16 = 0;
            *(a1 + 32) |= 1u;
            while (1)
            {
              v53 = 0;
              v40 = [a2 position] + 1;
              if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
              {
                v42 = [a2 data];
                [v42 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v53 & 0x7F) << v38;
              if ((v53 & 0x80) == 0)
              {
                break;
              }

              v38 += 7;
              v20 = v39++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___SIRINLUEXTERNALUtteranceSpan__endIndex;
                goto LABEL_89;
              }
            }

            v22 = &OBJC_IVAR___SIRINLUEXTERNALUtteranceSpan__endIndex;
            goto LABEL_86;
          case 3:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 32) |= 0x20u;
            while (1)
            {
              v52 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v52 & 0x7F) << v14;
              if ((v52 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v20 = v15++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___SIRINLUEXTERNALUtteranceSpan__startUnicodeScalarIndex;
                goto LABEL_89;
              }
            }

            v22 = &OBJC_IVAR___SIRINLUEXTERNALUtteranceSpan__startUnicodeScalarIndex;
            goto LABEL_86;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_90:
      v48 = [a2 position];
    }

    while (v48 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRINLUINTERNALPLAN_GENERATIONVariableEventIdPairReadFrom(uint64_t a1, void *a2)
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
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = &OBJC_IVAR___SIRINLUINTERNALPLAN_GENERATIONVariableEventIdPair__eventId;
LABEL_21:
        v14 = PBReaderReadString();
        v15 = *v13;
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = &OBJC_IVAR___SIRINLUINTERNALPLAN_GENERATIONVariableEventIdPair__variable;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRINLUINTERNALRewriteUtteranceReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) <= 3)
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(SIRINLUEXTERNALUUID);
          objc_storeStrong((a1 + 16), v14);
          v22 = 0;
          v23 = 0;
          if (!PBReaderPlaceMark() || !SIRINLUEXTERNALUUIDReadFrom(v14, a2))
          {
LABEL_42:

            return 0;
          }

          goto LABEL_35;
        }

        if (v13 == 2)
        {
          v15 = PBReaderReadString();
          v16 = *(a1 + 40);
          *(a1 + 40) = v15;

          goto LABEL_40;
        }
      }

      else
      {
        switch(v13)
        {
          case 4:
            v14 = objc_alloc_init(SIRINLUINTERNALRewriteToken);
            [a1 addAsrUtteranceTokens:v14];
            v22 = 0;
            v23 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUINTERNALRewriteTokenReadFrom(v14, a2))
            {
              goto LABEL_42;
            }

            goto LABEL_35;
          case 5:
            *(a1 + 48) |= 1u;
            v22 = 0;
            v17 = [a2 position] + 8;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 8, v18 <= objc_msgSend(a2, "length")))
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
            goto LABEL_40;
          case 6:
            v14 = objc_alloc_init(SIRINLUINTERNALToken);
            [a1 addNluInternalTokens:v14];
            v22 = 0;
            v23 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUINTERNALTokenReadFrom(v14, a2))
            {
              goto LABEL_42;
            }

LABEL_35:
            PBReaderRecallMark();

            goto LABEL_40;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_40:
      v20 = [a2 position];
    }

    while (v20 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sirinluinternalcati::CATIRequest::formatText(sirinluinternalcati::CATIRequest *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "embeddings");
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
    (*(*v6 + 32))(v6, a2, "request_id");
  }

  v7 = *(this + 5);
  if (v7)
  {
    (*(*v7 + 32))(v7, a2, "turn_input");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluinternalcati::CATIRequest::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  if (v3[3])
  {
    this = PB::Writer::write();
  }

  if (v3[2])
  {
    this = PB::Writer::write();
  }

  v5 = v3[4];
  if (v5)
  {
    this = PB::Writer::writeSubmessage(a2, v5);
  }

  v6 = v3[5];
  if (v6)
  {

    return PB::Writer::writeSubmessage(a2, v6);
  }

  return this;
}

uint64_t sirinluinternalcati::CATIRequest::readFrom(sirinluinternalcati::CATIRequest *this, PB::Reader *a2)
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

void sirinluinternalcati::CATIRequest::~CATIRequest(sirinluinternalcati::CATIRequest *this)
{
  sirinluinternalcati::CATIRequest::~CATIRequest(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4877390;
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
    std::default_delete<std::string>::operator()[abi:ne200100](v4);
  }

  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v5);
  }

  v6 = *(this + 1);
  *(this + 1) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  PB::Base::~Base(this);
}

double sirinluinternalcati::CATIRequest::CATIRequest(sirinluinternalcati::CATIRequest *this)
{
  *this = &unk_1F4877390;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

{
  *this = &unk_1F4877390;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

uint64_t sirinluinternalcati::CATIRequest::CATIRequest(uint64_t this, const sirinluinternalcati::CATIRequest *a2)
{
  *this = &unk_1F4877390;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

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

  if (*(a2 + 5))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternalcati::CATIRequest::operator=(uint64_t a1, const sirinluinternalcati::CATIRequest *a2)
{
  if (a1 != a2)
  {
    sirinluinternalcati::CATIRequest::CATIRequest(&v7, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v9;
    v9 = v4;
    v5 = *(a1 + 40);
    *(a1 + 40) = v10;
    v10 = v5;
    sirinluinternalcati::CATIRequest::~CATIRequest(&v7);
  }

  return a1;
}

void *sirinluinternalcati::swap(void *this, sirinluinternalcati::CATIRequest *a2, sirinluinternalcati::CATIRequest *a3)
{
  v3 = this[1];
  this[1] = *(a2 + 1);
  *(a2 + 1) = v3;
  v4 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v4;
  v5 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v5;
  v6 = this[4];
  this[4] = *(a2 + 4);
  *(a2 + 4) = v6;
  v7 = this[5];
  this[5] = *(a2 + 5);
  *(a2 + 5) = v7;
  return this;
}

uint64_t sirinluinternalcati::CATIRequest::CATIRequest(uint64_t a1, void *a2)
{
  *a1 = &unk_1F4877390;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  v4 = a2[1];
  a2[1] = 0;
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = a2[3];
  a2[3] = 0;
  v7 = *(a1 + 24);
  *(a1 + 24) = v6;
  if (v7)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v7);
  }

  v8 = a2[2];
  a2[2] = 0;
  v9 = *(a1 + 16);
  *(a1 + 16) = v8;
  if (v9)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v9);
  }

  v10 = a2[4];
  a2[4] = 0;
  v11 = *(a1 + 32);
  *(a1 + 32) = v10;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = a2[5];
  a2[5] = 0;
  v13 = *(a1 + 40);
  *(a1 + 40) = v12;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  return a1;
}

uint64_t sirinluinternalcati::CATIRequest::operator=(uint64_t a1, void *a2)
{
  if (a1 != a2)
  {
    sirinluinternalcati::CATIRequest::CATIRequest(&v7, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v9;
    v9 = v4;
    v5 = *(a1 + 40);
    *(a1 + 40) = v10;
    v10 = v5;
    sirinluinternalcati::CATIRequest::~CATIRequest(&v7);
  }

  return a1;
}

BOOL sirinluinternalcati::CATIRequest::operator==(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5 || !sirinluinternal::NLv4EmbeddingTensor::operator==(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v6 = a1[3];
  v7 = a2[3];
  if (v6)
  {
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

    v12 = v8 >= 0 ? a1[3] : *v6;
    v13 = v11 >= 0 ? a2[3] : *v7;
    if (memcmp(v12, v13, v9))
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v15 = a1[2];
  v16 = a2[2];
  if (v15)
  {
    if (!v16)
    {
      return 0;
    }

    v17 = *(v15 + 23);
    if (v17 >= 0)
    {
      v18 = *(v15 + 23);
    }

    else
    {
      v18 = *(v15 + 8);
    }

    v19 = *(v16 + 23);
    v20 = v19;
    if ((v19 & 0x80u) != 0)
    {
      v19 = *(v16 + 8);
    }

    if (v18 != v19)
    {
      return 0;
    }

    v21 = v17 >= 0 ? a1[2] : *v15;
    v22 = v20 >= 0 ? a2[2] : *v16;
    if (memcmp(v21, v22, v18))
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  v23 = a1[4];
  v24 = a2[4];
  if (!v23)
  {
    if (!v24)
    {
      goto LABEL_47;
    }

    return 0;
  }

  if (!v24 || !sirinluexternal::UUID::operator==(v23, v24))
  {
    return 0;
  }

LABEL_47:
  v25 = a1[5];
  v26 = a2[5];
  result = (v25 | v26) == 0;
  if (v25 && v26)
  {
    v27 = a1[5];

    return sirinluexternal::TurnInput::operator==(v27, v26);
  }

  return result;
}

unint64_t sirinluinternalcati::CATIRequest::hash_value(sirinluinternalcati::CATIRequest *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    v3 = sirinluinternal::NLv4EmbeddingTensor::hash_value(v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 3);
  if (v4)
  {
    v5 = std::__string_hash<char>::operator()[abi:ne200100](v4);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(this + 2);
  if (v6)
  {
    v7 = std::__string_hash<char>::operator()[abi:ne200100](v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(this + 4);
  if (!v8)
  {
    v12 = 0;
    goto LABEL_20;
  }

  if ((*(v8 + 28) & 1) == 0)
  {
    v9 = 0;
    if ((*(v8 + 28) & 2) != 0)
    {
      goto LABEL_13;
    }

LABEL_17:
    v10 = 0;
    if ((*(v8 + 28) & 4) != 0)
    {
      goto LABEL_14;
    }

LABEL_18:
    v11 = 0;
    goto LABEL_19;
  }

  v9 = *(v8 + 8);
  if ((*(v8 + 28) & 2) == 0)
  {
    goto LABEL_17;
  }

LABEL_13:
  v10 = *(v8 + 16);
  if ((*(v8 + 28) & 4) == 0)
  {
    goto LABEL_18;
  }

LABEL_14:
  v11 = *(v8 + 24);
LABEL_19:
  v12 = v10 ^ v9 ^ v11;
LABEL_20:
  v13 = *(this + 5);
  if (v13)
  {
    v13 = sirinluexternal::TurnInput::hash_value(v13);
  }

  return v5 ^ v3 ^ v7 ^ v12 ^ v13;
}

uint64_t sirinluinternalcati::CATIRequest::makeEmbeddings(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternalcati::CATIRequest::makeRequestId(uint64_t this)
{
  if (!*(this + 32))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternalcati::CATIRequest::makeTurnInput(uint64_t this)
{
  if (!*(this + 40))
  {
    operator new();
  }

  return this;
}

uint64_t SIRINLUEXTERNALSUBWORD_EMBEDDINGSubwordEmbeddingResponseReadFrom(uint64_t a1, void *a2)
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
        v13 = objc_alloc_init(SIRINLUINTERNALSubwordTokenChain);
        objc_storeStrong((a1 + 8), v13);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !SIRINLUINTERNALSubwordTokenChainReadFrom(v13, a2))
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

    v13 = objc_alloc_init(SIRINLUINTERNALEMBEDDINGEmbeddingTensorOutput);
    objc_storeStrong((a1 + 16), v13);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !SIRINLUINTERNALEMBEDDINGEmbeddingTensorOutputReadFrom(v13, a2))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sirinluinternalcontextual_span_matcher::ContextualSpanMatcherRequest::formatText(sirinluinternalcontextual_span_matcher::ContextualSpanMatcherRequest *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "nl_context");
  }

  v6 = *(this + 2);
  if (v6)
  {
    (*(*v6 + 32))(v6, a2, "nlu_request_id");
  }

  v7 = *(this + 3);
  if (v7)
  {
    (*(*v7 + 32))(v7, a2, "request_id");
  }

  v8 = *(this + 4);
  if (v8)
  {
    (*(*v8 + 32))(v8, a2, "token_chain");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluinternalcontextual_span_matcher::ContextualSpanMatcherRequest::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 24);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  v5 = v3[4];
  if (v5)
  {
    this = PB::Writer::writeSubmessage(a2, v5);
  }

  v6 = v3[1];
  if (v6)
  {
    this = PB::Writer::writeSubmessage(a2, v6);
  }

  v7 = v3[2];
  if (v7)
  {

    return PB::Writer::writeSubmessage(a2, v7);
  }

  return this;
}

uint64_t sirinluinternalcontextual_span_matcher::ContextualSpanMatcherRequest::readFrom(sirinluinternalcontextual_span_matcher::ContextualSpanMatcherRequest *this, PB::Reader *a2)
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
        goto LABEL_33;
      }

      v21 = v9 >> 3;
      if ((v9 >> 3) > 2)
      {
        if (v21 == 3)
        {
          operator new();
        }

        if (v21 == 4)
        {
          operator new();
        }
      }

      else
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
        goto LABEL_33;
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

LABEL_33:
  v23 = v4 ^ 1;
  return v23 & 1;
}

void sirinluinternalcontextual_span_matcher::ContextualSpanMatcherRequest::~ContextualSpanMatcherRequest(sirinluinternalcontextual_span_matcher::ContextualSpanMatcherRequest *this)
{
  sirinluinternalcontextual_span_matcher::ContextualSpanMatcherRequest::~ContextualSpanMatcherRequest(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F48773E0;
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
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  PB::Base::~Base(this);
}

double sirinluinternalcontextual_span_matcher::ContextualSpanMatcherRequest::ContextualSpanMatcherRequest(sirinluinternalcontextual_span_matcher::ContextualSpanMatcherRequest *this)
{
  *this = &unk_1F48773E0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = &unk_1F48773E0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

uint64_t sirinluinternalcontextual_span_matcher::ContextualSpanMatcherRequest::ContextualSpanMatcherRequest(uint64_t this, const sirinluinternalcontextual_span_matcher::ContextualSpanMatcherRequest *a2)
{
  *this = &unk_1F48773E0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  if (*(a2 + 3))
  {
    operator new();
  }

  if (*(a2 + 4))
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

uint64_t sirinluinternalcontextual_span_matcher::ContextualSpanMatcherRequest::operator=(uint64_t a1, const sirinluinternalcontextual_span_matcher::ContextualSpanMatcherRequest *a2)
{
  if (a1 != a2)
  {
    sirinluinternalcontextual_span_matcher::ContextualSpanMatcherRequest::ContextualSpanMatcherRequest(v7, a2);
    v3 = v8;
    v4 = *(a1 + 24);
    *(a1 + 24) = v9;
    v5 = *(a1 + 8);
    *(a1 + 8) = v3;
    v8 = v5;
    v9 = v4;
    sirinluinternalcontextual_span_matcher::ContextualSpanMatcherRequest::~ContextualSpanMatcherRequest(v7);
  }

  return a1;
}

void *sirinluinternalcontextual_span_matcher::swap(void *this, sirinluinternalcontextual_span_matcher::ContextualSpanMatcherRequest *a2, sirinluinternalcontextual_span_matcher::ContextualSpanMatcherRequest *a3)
{
  v3 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v3;
  v4 = this[4];
  this[4] = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = this[1];
  this[1] = *(a2 + 1);
  *(a2 + 1) = v5;
  v6 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v6;
  return this;
}

uint64_t sirinluinternalcontextual_span_matcher::ContextualSpanMatcherRequest::ContextualSpanMatcherRequest(uint64_t a1, void *a2)
{
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *a1 = &unk_1F48773E0;
  *(a1 + 24) = 0u;
  v5 = a2[3];
  a2[3] = 0;
  v6 = *(a1 + 24);
  *(a1 + 24) = v5;
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

  v9 = a2[1];
  a2[1] = 0;
  v10 = *v4;
  *v4 = v9;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = a2[2];
  a2[2] = 0;
  v12 = *(a1 + 16);
  *(a1 + 16) = v11;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  return a1;
}

uint64_t sirinluinternalcontextual_span_matcher::ContextualSpanMatcherRequest::operator=(uint64_t a1, void *a2)
{
  if (a1 != a2)
  {
    sirinluinternalcontextual_span_matcher::ContextualSpanMatcherRequest::ContextualSpanMatcherRequest(v7, a2);
    v3 = v8;
    v4 = *(a1 + 24);
    *(a1 + 24) = v9;
    v5 = *(a1 + 8);
    *(a1 + 8) = v3;
    v8 = v5;
    v9 = v4;
    sirinluinternalcontextual_span_matcher::ContextualSpanMatcherRequest::~ContextualSpanMatcherRequest(v7);
  }

  return a1;
}

BOOL sirinluinternalcontextual_span_matcher::ContextualSpanMatcherRequest::operator==(void *a1, void *a2)
{
  v4 = a1[3];
  v5 = a2[3];
  if (v4)
  {
    if (!v5 || !sirinluexternal::RequestID::operator==(v4, v5))
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
    if (!v7 || !sirinluinternal::TokenChain::operator==(v6, v7))
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v8 = a1[1];
  v9 = a2[1];
  if (!v8)
  {
    if (!v9)
    {
      goto LABEL_14;
    }

    return 0;
  }

  if (!v9 || !sirinluexternal::NLContext::operator==(v8, v9))
  {
    return 0;
  }

LABEL_14:
  v10 = a1[2];
  v11 = a2[2];
  result = (v10 | v11) == 0;
  if (v10 && v11)
  {
    v13 = a1[2];

    return sirinluexternal::UUID::operator==(v13, v11);
  }

  return result;
}

unint64_t sirinluinternalcontextual_span_matcher::ContextualSpanMatcherRequest::hash_value(sirinluinternalcontextual_span_matcher::ContextualSpanMatcherRequest *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    v3 = sirinluexternal::RequestID::hash_value(v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 4);
  if (v4)
  {
    v5 = sirinluinternal::TokenChain::hash_value(v4);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(this + 1);
  if (v6)
  {
    v6 = sirinluexternal::NLContext::hash_value(v6);
  }

  v7 = *(this + 2);
  if (v7)
  {
    if (*(v7 + 28))
    {
      v8 = *(v7 + 8);
      if ((*(v7 + 28) & 2) != 0)
      {
LABEL_12:
        v9 = *(v7 + 16);
        if ((*(v7 + 28) & 4) != 0)
        {
LABEL_13:
          v10 = *(v7 + 24);
LABEL_17:
          v7 = v9 ^ v8 ^ v10;
          return v5 ^ v3 ^ v6 ^ v7;
        }

LABEL_16:
        v10 = 0;
        goto LABEL_17;
      }
    }

    else
    {
      v8 = 0;
      if ((*(v7 + 28) & 2) != 0)
      {
        goto LABEL_12;
      }
    }

    v9 = 0;
    if ((*(v7 + 28) & 4) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  return v5 ^ v3 ^ v6 ^ v7;
}

uint64_t sirinluinternalcontextual_span_matcher::ContextualSpanMatcherRequest::makeRequestId(uint64_t this)
{
  if (!*(this + 24))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternalcontextual_span_matcher::ContextualSpanMatcherRequest::makeTokenChain(uint64_t this)
{
  if (!*(this + 32))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternalcontextual_span_matcher::ContextualSpanMatcherRequest::makeNlContext(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternalcontextual_span_matcher::ContextualSpanMatcherRequest::makeNluRequestId(uint64_t this)
{
  if (!*(this + 16))
  {
    operator new();
  }

  return this;
}

uint64_t SIRINLUINTERNALCONTEXTUAL_SPAN_MATCHERContextualSpanMatcherRequestReadFrom(id *a1, void *a2)
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
        LOBYTE(v17) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
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
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v14 = objc_alloc_init(SIRINLUEXTERNALNLContext);
          objc_storeStrong(a1 + 1, v14);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !SIRINLUEXTERNALNLContextReadFrom(&v14->super.super.isa, a2))
          {
LABEL_38:

            return 0;
          }

          goto LABEL_35;
        }

        if (v13 == 4)
        {
          v14 = objc_alloc_init(SIRINLUEXTERNALUUID);
          objc_storeStrong(a1 + 2, v14);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !SIRINLUEXTERNALUUIDReadFrom(v14, a2))
          {
            goto LABEL_38;
          }

          goto LABEL_35;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(SIRINLUEXTERNALRequestID);
          objc_storeStrong(a1 + 3, v14);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !SIRINLUEXTERNALRequestIDReadFrom(v14, a2))
          {
            goto LABEL_38;
          }

          goto LABEL_35;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(SIRINLUINTERNALTokenChain);
          objc_storeStrong(a1 + 4, v14);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !SIRINLUINTERNALTokenChainReadFrom(v14, a2))
          {
            goto LABEL_38;
          }

LABEL_35:
          PBReaderRecallMark();

          goto LABEL_36;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_36:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sirinluinternal::MentionDetectorSpanData::formatText(sirinluinternal::MentionDetectorSpanData *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 16))
  {
    PB::TextFormatter::format(a2, "score", *(this + 1));
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluinternal::MentionDetectorSpanData::writeTo(uint64_t this, PB::Writer *a2)
{
  if (*(this + 16))
  {
    return PB::Writer::write(a2, *(this + 8));
  }

  return this;
}

uint64_t sirinluinternal::MentionDetectorSpanData::readFrom(sirinluinternal::MentionDetectorSpanData *this, PB::Reader *a2)
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
          goto LABEL_23;
        }
      }

LABEL_18:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_30;
      }

      if ((v10 >> 3) == 1)
      {
        *(this + 16) |= 1u;
        v2 = *(a2 + 1);
        if (v2 <= 0xFFFFFFFFFFFFFFF7 && v2 + 8 <= *(a2 + 2))
        {
          *(this + 1) = *(*a2 + v2);
          v2 = *(a2 + 1) + 8;
          *(a2 + 1) = v2;
        }

        else
        {
          *(a2 + 24) = 1;
        }
      }

      else
      {
LABEL_23:
        if (!PB::Reader::skip(a2))
        {
          v22 = 0;
          return v22 & 1;
        }

        v2 = *(a2 + 1);
      }

      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_30;
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
        goto LABEL_18;
      }

      v15 += 7;
      ++v17;
      --v19;
      ++v20;
      v14 = v16++ > 8;
      if (v14)
      {
        goto LABEL_23;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_30:
  v22 = v4 ^ 1;
  return v22 & 1;
}

void sirinluinternal::MentionDetectorSpanData::~MentionDetectorSpanData(sirinluinternal::MentionDetectorSpanData *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x1CCA7EC50);
}

uint64_t sirinluinternal::MentionDetectorSpanData::MentionDetectorSpanData(uint64_t this)
{
  *this = &unk_1F4877430;
  *(this + 16) = 0;
  return this;
}

{
  *this = &unk_1F4877430;
  *(this + 16) = 0;
  return this;
}

double sirinluinternal::MentionDetectorSpanData::MentionDetectorSpanData(sirinluinternal::MentionDetectorSpanData *this, const sirinluinternal::MentionDetectorSpanData *a2)
{
  *this = &unk_1F4877430;
  *(this + 4) = 0;
  if (*(a2 + 16))
  {
    result = *(a2 + 1);
    *(this + 16) = 1;
    *(this + 1) = result;
  }

  return result;
}

{
  *this = &unk_1F4877430;
  *(this + 4) = 0;
  if (*(a2 + 16))
  {
    result = *(a2 + 1);
    *(this + 16) = 1;
    *(this + 1) = result;
  }

  return result;
}

uint64_t sirinluinternal::MentionDetectorSpanData::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v7[0] = &unk_1F4877430;
    v3 = *(a2 + 8);
    v4 = *(a1 + 16);
    *(a1 + 16) = *(a2 + 16) & 1;
    v8 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v3;
    v7[1] = v5;
    PB::Base::~Base(v7);
  }

  return a1;
}

{
  if (a1 != a2)
  {
    v8[0] = &unk_1F4877430;
    v3 = *(a2 + 16);
    *(a2 + 16) = 0;
    v4 = *(a2 + 8);
    v5 = *(a1 + 16);
    *(a1 + 16) = v3;
    v9 = v5;
    v6 = *(a1 + 8);
    *(a1 + 8) = v4;
    v8[1] = v6;
    PB::Base::~Base(v8);
  }

  return a1;
}

double sirinluinternal::swap(sirinluinternal *this, sirinluinternal::MentionDetectorSpanData *a2, sirinluinternal::MentionDetectorSpanData *a3)
{
  v3 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v3;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  return result;
}

double sirinluinternal::MentionDetectorSpanData::MentionDetectorSpanData(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4877430;
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

{
  *a1 = &unk_1F4877430;
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

BOOL sirinluinternal::MentionDetectorSpanData::operator==(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  result = (*(a2 + 16) & 1) == 0;
  if (v3)
  {
    return (*(a2 + 16) & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return result;
}

uint64_t sirinluinternal::MentionDetectorSpanData::hash_value(sirinluinternal::MentionDetectorSpanData *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  if (*(this + 1) == 0.0)
  {
    return 0;
  }

  return *(this + 1);
}

void sub_1C8B37D54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x1CCA7EC50](v7, 0x1030C40E9F947FBLL);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_1C8B381D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (v12)
  {
    operator delete(v12);
  }

  _Unwind_Resume(a1);
}

BOOL SSUMetadata::Verify(SSUMetadata *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this->var0);
  if (!result)
  {
    return result;
  }

  result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
  if (!result)
  {
    return result;
  }

  v5 = &this[-*this->var0];
  if (*v5->var0 >= 5u && (v6 = *v5[4].var0) != 0)
  {
    v7 = &this[v6 + *this[v6].var0];
  }

  else
  {
    v7 = 0;
  }

  result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v7->var0);
  if (!result)
  {
    return result;
  }

  v8 = *this->var0;
  v9 = &this[-v8];
  v10 = *this[-v8].var0;
  if (v10 >= 7)
  {
    if (*v9[6].var0)
    {
      result = 0;
      v11 = *(a2 + 1);
      if (v11 < 9 || v11 - 8 < this[*v9[6].var0 - *a2].var0)
      {
        return result;
      }
    }
  }

  result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 8u);
  if (!result)
  {
    return result;
  }

  if (v10 < 9)
  {
    goto LABEL_24;
  }

  if (*v9[8].var0)
  {
    result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this[*v9[8].var0 + *this[*v9[8].var0].var0].var0, 4uLL, 0);
    if (!result)
    {
      return result;
    }

    v12 = *this->var0;
    if (*this[-v12].var0 < 9u)
    {
      goto LABEL_24;
    }

    v13 = -v12;
  }

  else
  {
    v13 = -v8;
  }

  v14 = *this[v13 + 8].var0;
  if (!v14 || (v15 = &this[v14 + *this[v14].var0], !*v15->var0))
  {
LABEL_24:
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xAu);
    if (result)
    {
      v18 = &this[-*this->var0];
      if (*v18->var0 >= 0xBu && (v19 = *v18[10].var0) != 0)
      {
        v20 = &this[v19 + *this[v19].var0];
      }

      else
      {
        v20 = 0;
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v20->var0);
      if (result)
      {
        --*(a2 + 4);
        return 1;
      }
    }

    return result;
  }

  v16 = 0;
  v17 = v15 + 4;
  while (apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v17[*v17->var0].var0))
  {
    ++v16;
    v17 += 4;
    if (v16 >= *v15->var0)
    {
      goto LABEL_24;
    }
  }

  return 0;
}

BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<SSUCategory>(apple::aiml::flatbuffers2::Verifier *a1, SSUCategory *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2->var0)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 4;
  do
  {
    result = SSUCategory::Verify(&v5[*v5->var0], a1);
    if (!result)
    {
      break;
    }

    ++v4;
    v5 += 4;
  }

  while (v4 < *a2->var0);
  return result;
}

uint64_t sirinluinternalssu::SSUResponse::formatText(sirinluinternalssu::SSUResponse *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, a2, "hypotheses");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluinternalssu::SSUResponse::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  for (i = *(this + 16); v2 != i; this = PB::Writer::writeSubmessage(a2, v5))
  {
    v5 = *v2++;
  }

  return this;
}

uint64_t sirinluinternalssu::SSUResponse::readFrom(sirinluinternalssu::SSUResponse *this, PB::Reader *a2)
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
        PB::PtrVector<sirinluexternal::UserParse>::emplace_back<>();
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

void sirinluinternalssu::SSUResponse::~SSUResponse(sirinluinternalssu::SSUResponse *this)
{
  *this = &unk_1F4877480;
  v2 = (this + 8);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v2);
  PB::Base::~Base(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4877480;
  v2 = (this + 8);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v2);

  PB::Base::~Base(this);
}

{
  *this = &unk_1F4877480;
  v2 = (this + 8);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v2);

  PB::Base::~Base(this);
}

void *sirinluinternalssu::SSUResponse::SSUResponse(void *this)
{
  *this = &unk_1F4877480;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_1F4877480;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

void *sirinluinternalssu::SSUResponse::SSUResponse(void *this, const sirinluinternalssu::SSUResponse *a2)
{
  this[1] = 0;
  *this = &unk_1F4877480;
  this[2] = 0;
  this[3] = 0;
  v2 = *(a2 + 1);
  if (v2 != *(a2 + 2))
  {
    v3 = *v2;
    PB::PtrVector<sirinluexternal::UserParse>::emplace_back<sirinluexternal::UserParse const&>();
  }

  return this;
}

uint64_t sirinluinternalssu::SSUResponse::operator=(uint64_t a1, const sirinluinternalssu::SSUResponse *a2)
{
  if (a1 != a2)
  {
    sirinluinternalssu::SSUResponse::SSUResponse(&v6, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v4;
    v6 = &unk_1F4877480;
    v9 = &v7;
    std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v9);
    PB::Base::~Base(&v6);
  }

  return a1;
}

void *sirinluinternalssu::swap(void *this, sirinluinternalssu::SSUResponse *a2, sirinluinternalssu::SSUResponse *a3)
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

uint64_t sirinluinternalssu::SSUResponse::SSUResponse(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4877480;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__vdeallocate((a1 + 8));
  *v4 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return a1;
}

{
  *a1 = &unk_1F4877480;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__vdeallocate((a1 + 8));
  *v4 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return a1;
}

uint64_t sirinluinternalssu::SSUResponse::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v9 = &unk_1F4877480;
    v10 = 0uLL;
    v11 = 0;
    std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__vdeallocate(&v10);
    v4 = *(a2 + 24);
    v5 = *(a2 + 8);
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    v6 = *(a1 + 8);
    *(a1 + 8) = v5;
    v10 = v6;
    v7 = *(a1 + 24);
    *(a1 + 24) = v4;
    v11 = v7;
    v12 = &v10;
    v9 = &unk_1F4877480;
    std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v12);
    PB::Base::~Base(&v9);
  }

  return a1;
}

uint64_t sirinluinternalssu::SSUResponse::hash_value(sirinluinternalssu::SSUResponse *this)
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
    v4 = *v1++;
    v3 ^= sirinluexternal::UserParse::hash_value(v4);
  }

  while (v1 != v2);
  return v3;
}

uint64_t SIRINLUEXTERNALSSU_INFERENCESsuInferenceSetupReadFrom(uint64_t a1, void *a2)
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
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
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
        v13 = PBReaderReadString();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRINLUINTERNALNluRequestRuleReadFrom(char *a1, void *a2)
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
        LOBYTE(v19[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19[0] & 0x7F) << v5;
        if ((v19[0] & 0x80) == 0)
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
          v15 = PBReaderReadString();
          v16 = 16;
LABEL_30:
          v14 = *&a1[v16];
          *&a1[v16] = v15;
LABEL_31:

          goto LABEL_32;
        }

        if (v13 == 2)
        {
          v15 = PBReaderReadString();
          v16 = 24;
          goto LABEL_30;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v15 = PBReaderReadString();
            v16 = 8;
            goto LABEL_30;
          case 4:
            v15 = PBReaderReadString();
            v16 = 40;
            goto LABEL_30;
          case 5:
            v14 = objc_alloc_init(SIRINLUINTERNALTurnInputRule);
            [a1 addTurnInputRules:v14];
            v19[0] = 0;
            v19[1] = 0;
            if (!PBReaderPlaceMark() || !SIRINLUINTERNALTurnInputRuleReadFrom(&v14->super.super.isa, a2))
            {

              return 0;
            }

            PBReaderRecallMark();
            goto LABEL_31;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_32:
      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRINLUEXTERNALUUIDReadFrom(uint64_t a1, void *a2)
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
        v37 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v37 & 0x7F) << v5;
        if ((v37 & 0x80) == 0)
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
        v27 = 0;
        v28 = 0;
        v29 = 0;
        *(a1 + 28) |= 4u;
        while (1)
        {
          v40 = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v29 |= (v40 & 0x7F) << v27;
          if ((v40 & 0x80) == 0)
          {
            break;
          }

          v27 += 7;
          v11 = v28++ >= 9;
          if (v11)
          {
            v33 = 0;
            goto LABEL_56;
          }
        }

        if ([a2 hasError])
        {
          v33 = 0;
        }

        else
        {
          v33 = v29;
        }

LABEL_56:
        *(a1 + 24) = v33;
      }

      else
      {
        if (v13 == 2)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 28) |= 2u;
          while (1)
          {
            v38 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v38 & 0x7F) << v21;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_52;
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

LABEL_52:
          v35 = 16;
        }

        else
        {
          if (v13 != 1)
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_62;
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 28) |= 1u;
          while (1)
          {
            v39 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v39 & 0x7F) << v14;
            if ((v39 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_60;
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

LABEL_60:
          v35 = 8;
        }

        *(a1 + v35) = v20;
      }

LABEL_62:
      v36 = [a2 position];
    }

    while (v36 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sirinluexternal::ResponseStatus::formatText(sirinluexternal::ResponseStatus *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 20))
  {
    v5 = *(this + 4);
    PB::TextFormatter::format(a2, "code");
  }

  if (*(this + 1))
  {
    PB::TextFormatter::format();
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternal::ResponseStatus::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if (*(this + 20))
  {
    v4 = *(this + 16);
    this = PB::Writer::writeVarInt(a2);
  }

  if (*(v3 + 8))
  {

    return PB::Writer::write();
  }

  return this;
}

uint64_t sirinluexternal::ResponseStatus::readFrom(sirinluexternal::ResponseStatus *this, PB::Reader *a2)
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
          goto LABEL_28;
        }
      }

LABEL_18:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_47;
      }

      if ((v10 >> 3) == 3)
      {
        operator new();
      }

      if ((v10 >> 3) == 2)
      {
        *(this + 20) |= 1u;
        v23 = *(a2 + 1);
        v22 = *(a2 + 2);
        v24 = *a2;
        if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v22)
        {
          v31 = 0;
          v32 = 0;
          v27 = 0;
          v33 = (v24 + v23);
          v18 = v22 >= v23;
          v34 = v22 - v23;
          if (!v18)
          {
            v34 = 0;
          }

          v35 = v23 + 1;
          while (1)
          {
            if (!v34)
            {
              LODWORD(v27) = 0;
              *(a2 + 24) = 1;
              goto LABEL_42;
            }

            v36 = *v33;
            *(a2 + 1) = v35;
            v27 |= (v36 & 0x7F) << v31;
            if ((v36 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            ++v33;
            --v34;
            ++v35;
            v14 = v32++ > 8;
            if (v14)
            {
LABEL_38:
              LODWORD(v27) = 0;
              goto LABEL_42;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v27) = 0;
          }
        }

        else
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = (v24 + v23);
          v29 = v23 + 1;
          while (1)
          {
            *(a2 + 1) = v29;
            v30 = *v28++;
            v27 |= (v30 & 0x7F) << v25;
            if ((v30 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            ++v29;
            v14 = v26++ > 8;
            if (v14)
            {
              goto LABEL_38;
            }
          }
        }

LABEL_42:
        *(this + 4) = v27;
      }

      else
      {
LABEL_28:
        if (!PB::Reader::skip(a2))
        {
          v38 = 0;
          return v38 & 1;
        }
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_47;
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
        goto LABEL_18;
      }

      v15 += 7;
      ++v17;
      --v19;
      ++v20;
      v14 = v16++ > 8;
      if (v14)
      {
        goto LABEL_28;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_47:
  v38 = v4 ^ 1;
  return v38 & 1;
}

void sirinluexternal::ResponseStatus::~ResponseStatus(sirinluexternal::ResponseStatus *this)
{
  sirinluexternal::ResponseStatus::~ResponseStatus(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  v2 = *(this + 1);
  *this = &unk_1F48774D0;
  *(this + 1) = 0;
  if (v2)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v2);
  }

  PB::Base::~Base(this);
}

void *sirinluexternal::ResponseStatus::ResponseStatus(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F48774D0;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F48774D0;
  return this;
}

uint64_t sirinluexternal::ResponseStatus::ResponseStatus(uint64_t this, const sirinluexternal::ResponseStatus *a2)
{
  *this = &unk_1F48774D0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  if (*(a2 + 20))
  {
    v2 = *(a2 + 4);
    *(this + 20) = 1;
    *(this + 16) = v2;
  }

  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const sirinluexternal::ResponseStatus *sirinluexternal::ResponseStatus::operator=(const sirinluexternal::ResponseStatus *a1, const sirinluexternal::ResponseStatus *a2)
{
  if (a1 != a2)
  {
    sirinluexternal::ResponseStatus::ResponseStatus(v6, a2);
    v3 = *(a1 + 2);
    *(a1 + 2) = v8;
    v8 = v3;
    v4 = *(a1 + 1);
    *(a1 + 1) = v7;
    v7 = v4;
    sirinluexternal::ResponseStatus::~ResponseStatus(v6);
  }

  return a1;
}

uint64_t sirinluexternal::swap(uint64_t this, sirinluexternal::ResponseStatus *a2, sirinluexternal::ResponseStatus *a3)
{
  v3 = *(this + 20);
  *(this + 20) = *(a2 + 5);
  *(a2 + 5) = v3;
  v4 = *(this + 16);
  *(this + 16) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v5;
  return this;
}

uint64_t sirinluexternal::ResponseStatus::ResponseStatus(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F48774D0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  *(a1 + 16) = *(a2 + 16);
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  v4 = *(a1 + 8);
  *(a1 + 8) = v3;
  if (v4)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v4);
  }

  return a1;
}

uint64_t sirinluexternal::ResponseStatus::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluexternal::ResponseStatus::ResponseStatus(v6, a2);
    v3 = *(a1 + 16);
    *(a1 + 16) = v8;
    v8 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    sirinluexternal::ResponseStatus::~ResponseStatus(v6);
  }

  return a1;
}

BOOL sirinluexternal::ResponseStatus::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 20);
  if (*(a1 + 20))
  {
    if ((*(a2 + 20) & 1) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if (*(a2 + 20))
  {
    return 0;
  }

  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  result = v4 == 0;
  if (!v3)
  {
    return result;
  }

  if (!v4)
  {
    return 0;
  }

  v6 = *(v3 + 23);
  if (v6 >= 0)
  {
    v7 = *(v3 + 23);
  }

  else
  {
    v7 = *(v3 + 8);
  }

  v8 = *(v4 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(v4 + 8);
  }

  if (v7 != v8)
  {
    return 0;
  }

  v10 = v6 >= 0 ? v3 : *v3;
  v11 = v9 >= 0 ? *(a2 + 8) : *v4;
  return !memcmp(v10, v11, v7);
}

unint64_t sirinluexternal::ResponseStatus::hash_value(sirinluexternal::ResponseStatus *this)
{
  if (*(this + 20))
  {
    v1 = *(this + 4);
  }

  else
  {
    v1 = 0;
  }

  v2 = *(this + 1);
  if (v2)
  {
    v2 = std::__string_hash<char>::operator()[abi:ne200100](v2);
  }

  return v2 ^ v1;
}

uint64_t sirinluinternalmention_detector::MentionDetectorRequest::formatText(sirinluinternalmention_detector::MentionDetectorRequest *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "cdm_request_id");
  }

  v6 = *(this + 2);
  if (v6)
  {
    (*(*v6 + 32))(v6, a2, "embedding_tensor");
  }

  if (*(this + 72))
  {
    v7 = *(this + 3);
    PB::TextFormatter::format(a2, "max_candidates");
  }

  v8 = *(this + 4);
  if (v8)
  {
    (*(*v8 + 32))(v8, a2, "nlu_request_id");
  }

  v9 = *(this + 5);
  if (v9)
  {
    (*(*v9 + 32))(v9, a2, "request_id");
  }

  if (*(this + 6))
  {
    PB::TextFormatter::format();
  }

  v10 = *(this + 7);
  if (v10)
  {
    (*(*v10 + 32))(v10, a2, "token_chain");
  }

  if (*(this + 8))
  {
    PB::TextFormatter::format();
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluinternalmention_detector::MentionDetectorRequest::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 40);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  v5 = *(v3 + 32);
  if (v5)
  {
    this = PB::Writer::writeSubmessage(a2, v5);
  }

  if (*(v3 + 48))
  {
    this = PB::Writer::write();
  }

  if (*(v3 + 64))
  {
    this = PB::Writer::write();
  }

  v6 = *(v3 + 56);
  if (v6)
  {
    this = PB::Writer::writeSubmessage(a2, v6);
  }

  v7 = *(v3 + 16);
  if (v7)
  {
    this = PB::Writer::writeSubmessage(a2, v7);
  }

  if (*(v3 + 72))
  {
    v8 = *(v3 + 24);
    this = PB::Writer::writeVarInt(a2);
  }

  v9 = *(v3 + 8);
  if (v9)
  {

    return PB::Writer::writeSubmessage(a2, v9);
  }

  return this;
}

uint64_t sirinluinternalmention_detector::MentionDetectorRequest::readFrom(sirinluinternalmention_detector::MentionDetectorRequest *this, PB::Reader *a2)
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
    if ((v10 >> 3) > 4)
    {
      if (v22 > 6)
      {
        if (v22 == 7)
        {
          *(this + 72) |= 1u;
          v24 = *(a2 + 1);
          v23 = *(a2 + 2);
          v25 = *a2;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
          {
            v32 = 0;
            v33 = 0;
            v28 = 0;
            v34 = (v25 + v24);
            v18 = v23 >= v24;
            v35 = v23 - v24;
            if (!v18)
            {
              v35 = 0;
            }

            v36 = v24 + 1;
            while (1)
            {
              if (!v35)
              {
                v28 = 0;
                *(a2 + 24) = 1;
                goto LABEL_56;
              }

              v37 = *v34;
              *(a2 + 1) = v36;
              v28 |= (v37 & 0x7F) << v32;
              if ((v37 & 0x80) == 0)
              {
                break;
              }

              v32 += 7;
              ++v34;
              --v35;
              ++v36;
              v14 = v33++ > 8;
              if (v14)
              {
LABEL_52:
                v28 = 0;
                goto LABEL_56;
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
                goto LABEL_52;
              }
            }
          }

LABEL_56:
          *(this + 3) = v28;
          goto LABEL_57;
        }

        if (v22 == 8)
        {
          operator new();
        }
      }

      else
      {
        if (v22 == 5)
        {
          operator new();
        }

        if (v22 == 6)
        {
          operator new();
        }
      }
    }

    else if (v22 > 2)
    {
      if (v22 == 3)
      {
        operator new();
      }

      if (v22 == 4)
      {
        operator new();
      }
    }

    else
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

LABEL_17:
    if ((PB::Reader::skip(a2) & 1) == 0)
    {
      v39 = 0;
      return v39 & 1;
    }

LABEL_57:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v39 = v4 ^ 1;
  return v39 & 1;
}

void sirinluinternalmention_detector::MentionDetectorRequest::~MentionDetectorRequest(sirinluinternalmention_detector::MentionDetectorRequest *this)
{
  sirinluinternalmention_detector::MentionDetectorRequest::~MentionDetectorRequest(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4877520;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v2);
  }

  v3 = *(this + 7);
  *(this + 7) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 6);
  *(this + 6) = 0;
  if (v4)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v4);
  }

  v5 = *(this + 5);
  *(this + 5) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 4);
  *(this + 4) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 2);
  *(this + 2) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 1);
  *(this + 1) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  PB::Base::~Base(this);
}

double sirinluinternalmention_detector::MentionDetectorRequest::MentionDetectorRequest(sirinluinternalmention_detector::MentionDetectorRequest *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F4877520;
  result = 0.0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 60) = 0u;
  return result;
}

{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F4877520;
  result = 0.0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 60) = 0u;
  return result;
}

uint64_t sirinluinternalmention_detector::MentionDetectorRequest::MentionDetectorRequest(uint64_t this, const sirinluinternalmention_detector::MentionDetectorRequest *a2)
{
  *this = &unk_1F4877520;
  *(this + 8) = 0;
  *(this + 32) = 0u;
  *(this + 16) = 0;
  *(this + 48) = 0u;
  *(this + 60) = 0u;
  if (*(a2 + 5))
  {
    operator new();
  }

  if (*(a2 + 4))
  {
    operator new();
  }

  if (*(a2 + 6))
  {
    operator new();
  }

  if (*(a2 + 8))
  {
    operator new();
  }

  if (*(a2 + 7))
  {
    operator new();
  }

  if (*(a2 + 2))
  {
    operator new();
  }

  if (*(a2 + 72))
  {
    v2 = *(a2 + 3);
    *(this + 72) |= 1u;
    *(this + 24) = v2;
  }

  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternalmention_detector::MentionDetectorRequest::operator=(uint64_t a1, const sirinluinternalmention_detector::MentionDetectorRequest *a2)
{
  if (a1 != a2)
  {
    sirinluinternalmention_detector::MentionDetectorRequest::MentionDetectorRequest(&v11, a2);
    v3 = v15;
    v4 = *(a1 + 32);
    v5 = *(a1 + 48);
    *(a1 + 32) = v14;
    *(a1 + 48) = v3;
    v6 = *(a1 + 72);
    *(a1 + 72) = v17;
    v17 = v6;
    v7 = *(a1 + 64);
    *(a1 + 64) = v16;
    v16 = v7;
    v14 = v4;
    v15 = v5;
    v8 = *(a1 + 24);
    *(a1 + 24) = v13;
    v13 = v8;
    v9 = *(a1 + 8);
    *(a1 + 8) = v12;
    v12 = v9;
    sirinluinternalmention_detector::MentionDetectorRequest::~MentionDetectorRequest(&v11);
  }

  return a1;
}

uint64_t sirinluinternalmention_detector::swap(uint64_t this, sirinluinternalmention_detector::MentionDetectorRequest *a2, sirinluinternalmention_detector::MentionDetectorRequest *a3)
{
  v3 = *(this + 72);
  *(this + 72) = *(a2 + 18);
  *(a2 + 18) = v3;
  v4 = *(this + 40);
  *(this + 40) = *(a2 + 5);
  *(a2 + 5) = v4;
  v5 = *(this + 32);
  *(this + 32) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 48);
  *(this + 48) = *(a2 + 6);
  *(a2 + 6) = v6;
  v7 = *(this + 64);
  *(this + 64) = *(a2 + 8);
  *(a2 + 8) = v7;
  v8 = *(this + 56);
  *(this + 56) = *(a2 + 7);
  *(a2 + 7) = v8;
  v9 = *(this + 16);
  v10 = *(this + 24);
  v11 = *(a2 + 3);
  *(this + 16) = *(a2 + 2);
  *(this + 24) = v11;
  *(a2 + 2) = v9;
  *(a2 + 3) = v10;
  v12 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v12;
  return this;
}

uint64_t sirinluinternalmention_detector::MentionDetectorRequest::MentionDetectorRequest(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0u;
  v4 = (a1 + 32);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4877520;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 72) = 0;
  v5 = *(a2 + 40);
  *(a2 + 40) = 0;
  v6 = *(a1 + 40);
  *(a1 + 40) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(a2 + 32);
  *(a2 + 32) = 0;
  v8 = *v4;
  *v4 = v7;
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
    std::default_delete<std::string>::operator()[abi:ne200100](v10);
  }

  v11 = *(a2 + 64);
  *(a2 + 64) = 0;
  v12 = *(a1 + 64);
  *(a1 + 64) = v11;
  if (v12)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v12);
  }

  v13 = *(a2 + 56);
  *(a2 + 56) = 0;
  v14 = *(a1 + 56);
  *(a1 + 56) = v13;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v15 = *(a2 + 16);
  *(a2 + 16) = 0;
  v16 = *(a1 + 16);
  *(a1 + 16) = v15;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  *(a1 + 24) = *(a2 + 24);
  v17 = *(a2 + 8);
  *(a2 + 8) = 0;
  v18 = *(a1 + 8);
  *(a1 + 8) = v17;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  return a1;
}

uint64_t sirinluinternalmention_detector::MentionDetectorRequest::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluinternalmention_detector::MentionDetectorRequest::MentionDetectorRequest(&v11, a2);
    v3 = v15;
    v4 = *(a1 + 32);
    v5 = *(a1 + 48);
    *(a1 + 32) = v14;
    *(a1 + 48) = v3;
    v6 = *(a1 + 72);
    *(a1 + 72) = v17;
    v17 = v6;
    v7 = *(a1 + 64);
    *(a1 + 64) = v16;
    v16 = v7;
    v14 = v4;
    v15 = v5;
    v8 = *(a1 + 24);
    *(a1 + 24) = v13;
    v13 = v8;
    v9 = *(a1 + 8);
    *(a1 + 8) = v12;
    v12 = v9;
    sirinluinternalmention_detector::MentionDetectorRequest::~MentionDetectorRequest(&v11);
  }

  return a1;
}

BOOL sirinluinternalmention_detector::MentionDetectorRequest::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  v5 = *(a2 + 40);
  if (v4)
  {
    if (!v5 || !sirinluexternal::UUID::operator==(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v6 = *(a1 + 32);
  v7 = *(a2 + 32);
  if (v6)
  {
    if (!v7 || !sirinluexternal::UUID::operator==(v6, v7))
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v8 = *(a1 + 48);
  v9 = *(a2 + 48);
  if (v8)
  {
    if (!v9)
    {
      return 0;
    }

    v10 = *(v8 + 23);
    if (v10 >= 0)
    {
      v11 = *(v8 + 23);
    }

    else
    {
      v11 = *(v8 + 8);
    }

    v12 = *(v9 + 23);
    v13 = v12;
    if ((v12 & 0x80u) != 0)
    {
      v12 = *(v9 + 8);
    }

    if (v11 != v12)
    {
      return 0;
    }

    v14 = v10 >= 0 ? *(a1 + 48) : *v8;
    v15 = v13 >= 0 ? *(a2 + 48) : *v9;
    if (memcmp(v14, v15, v11))
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v17 = *(a1 + 64);
  v18 = *(a2 + 64);
  if (v17)
  {
    if (!v18 || !std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(v17, v18))
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  v19 = *(a1 + 56);
  v20 = *(a2 + 56);
  if (v19)
  {
    if (!v20 || !sirinluinternal::TokenChain::operator==(v19, v20))
    {
      return 0;
    }
  }

  else if (v20)
  {
    return 0;
  }

  v21 = *(a1 + 16);
  v22 = *(a2 + 16);
  if (v21)
  {
    if (!v22 || !sirinluinternal::NLv4EmbeddingTensor::operator==(v21, v22))
    {
      return 0;
    }
  }

  else if (v22)
  {
    return 0;
  }

  v23 = *(a2 + 72);
  if ((*(a1 + 72) & 1) == 0)
  {
    if ((*(a2 + 72) & 1) == 0)
    {
      goto LABEL_50;
    }

    return 0;
  }

  if ((*(a2 + 72) & 1) == 0 || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

LABEL_50:
  v24 = *(a1 + 8);
  v25 = *(a2 + 8);
  result = (v24 | v25) == 0;
  if (v24 && v25)
  {
    v26 = *(a1 + 8);

    return sirinluexternal::RequestID::operator==(v26, v25);
  }

  return result;
}

unint64_t sirinluinternalmention_detector::MentionDetectorRequest::hash_value(sirinluinternalmention_detector::MentionDetectorRequest *this)
{
  v2 = *(this + 5);
  if (!v2)
  {
    v6 = 0;
    goto LABEL_11;
  }

  if ((*(v2 + 28) & 1) == 0)
  {
    v3 = 0;
    if ((*(v2 + 28) & 2) != 0)
    {
      goto LABEL_4;
    }

LABEL_8:
    v4 = 0;
    if ((*(v2 + 28) & 4) != 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    v5 = 0;
    goto LABEL_10;
  }

  v3 = *(v2 + 8);
  if ((*(v2 + 28) & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v4 = *(v2 + 16);
  if ((*(v2 + 28) & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v5 = *(v2 + 24);
LABEL_10:
  v6 = v4 ^ v3 ^ v5;
LABEL_11:
  v7 = *(this + 4);
  if (!v7)
  {
    v11 = 0;
    goto LABEL_21;
  }

  if ((*(v7 + 28) & 1) == 0)
  {
    v8 = 0;
    if ((*(v7 + 28) & 2) != 0)
    {
      goto LABEL_14;
    }

LABEL_18:
    v9 = 0;
    if ((*(v7 + 28) & 4) != 0)
    {
      goto LABEL_15;
    }

LABEL_19:
    v10 = 0;
    goto LABEL_20;
  }

  v8 = *(v7 + 8);
  if ((*(v7 + 28) & 2) == 0)
  {
    goto LABEL_18;
  }

LABEL_14:
  v9 = *(v7 + 16);
  if ((*(v7 + 28) & 4) == 0)
  {
    goto LABEL_19;
  }

LABEL_15:
  v10 = *(v7 + 24);
LABEL_20:
  v11 = v9 ^ v8 ^ v10;
LABEL_21:
  v12 = *(this + 6);
  if (v12)
  {
    v13 = std::__string_hash<char>::operator()[abi:ne200100](v12);
  }

  else
  {
    v13 = 0;
  }

  v14 = *(this + 8);
  if (v14)
  {
    v15 = std::__string_hash<char>::operator()[abi:ne200100](v14);
  }

  else
  {
    v15 = 0;
  }

  v16 = *(this + 7);
  if (v16)
  {
    v17 = sirinluinternal::TokenChain::hash_value(v16);
  }

  else
  {
    v17 = 0;
  }

  v18 = *(this + 2);
  if (v18)
  {
    v19 = sirinluinternal::NLv4EmbeddingTensor::hash_value(v18);
  }

  else
  {
    v19 = 0;
  }

  if (*(this + 72))
  {
    v20 = *(this + 3);
  }

  else
  {
    v20 = 0;
  }

  v21 = *(this + 1);
  if (v21)
  {
    v21 = sirinluexternal::RequestID::hash_value(v21);
  }

  return v11 ^ v6 ^ v13 ^ v15 ^ v17 ^ v19 ^ v20 ^ v21;
}

uint64_t sirinluinternalmention_detector::MentionDetectorRequest::makeRequestId(uint64_t this)
{
  if (!*(this + 40))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternalmention_detector::MentionDetectorRequest::makeNluRequestId(uint64_t this)
{
  if (!*(this + 32))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternalmention_detector::MentionDetectorRequest::makeTokenChain(uint64_t this)
{
  if (!*(this + 56))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternalmention_detector::MentionDetectorRequest::makeEmbeddingTensor(uint64_t this)
{
  if (!*(this + 16))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternalmention_detector::MentionDetectorRequest::makeCdmRequestId(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t siricommon::StringValue::formatText(siricommon::StringValue *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 1))
  {
    PB::TextFormatter::format();
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t siricommon::StringValue::writeTo(uint64_t this, PB::Writer *a2)
{
  if (*(this + 8))
  {
    return PB::Writer::write();
  }

  return this;
}

uint64_t siricommon::StringValue::readFrom(siricommon::StringValue *this, PB::Reader *a2)
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

void siricommon::StringValue::~StringValue(siricommon::StringValue *this)
{
  siricommon::StringValue::~StringValue(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  v2 = *(this + 1);
  *this = &unk_1F4877570;
  *(this + 1) = 0;
  if (v2)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v2);
  }

  PB::Base::~Base(this);
}

void *siricommon::StringValue::StringValue(void *this)
{
  *this = &unk_1F4877570;
  this[1] = 0;
  return this;
}

{
  *this = &unk_1F4877570;
  this[1] = 0;
  return this;
}

void *siricommon::StringValue::StringValue(void *this, const siricommon::StringValue *a2)
{
  *this = &unk_1F4877570;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const siricommon::StringValue *siricommon::StringValue::operator=(const siricommon::StringValue *a1, const siricommon::StringValue *a2)
{
  if (a1 != a2)
  {
    siricommon::StringValue::StringValue(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    siricommon::StringValue::~StringValue(&v5);
  }

  return a1;
}

uint64_t siricommon::swap(uint64_t this, siricommon::StringValue *a2, siricommon::StringValue *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *siricommon::StringValue::StringValue(void *a1, uint64_t a2)
{
  *a1 = &unk_1F4877570;
  a1[1] = 0;
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  v4 = a1[1];
  a1[1] = v3;
  if (v4)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v4);
  }

  return a1;
}

{
  *a1 = &unk_1F4877570;
  a1[1] = 0;
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  v4 = a1[1];
  a1[1] = v3;
  if (v4)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v4);
  }

  return a1;
}

uint64_t siricommon::StringValue::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_1F4877570;
    v6[1] = v4;
    siricommon::StringValue::~StringValue(v6);
  }

  return a1;
}

BOOL siricommon::StringValue::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  result = v3 == 0;
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    v5 = *(v2 + 23);
    if (v5 >= 0)
    {
      v6 = *(v2 + 23);
    }

    else
    {
      v6 = v2[1];
    }

    v7 = *(v3 + 23);
    v8 = v7;
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(v3 + 8);
    }

    if (v6 == v7 && (v5 >= 0 ? (v9 = v2) : (v9 = *v2), v8 >= 0 ? (v10 = *(a2 + 8)) : (v10 = *v3), !memcmp(v9, v10, v6)))
    {
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t siricommon::StringValue::hash_value(siricommon::StringValue *this)
{
  result = *(this + 1);
  if (result)
  {
    return std::__string_hash<char>::operator()[abi:ne200100](result);
  }

  return result;
}

uint64_t sirinluexternal::UserWantedToProceed::formatText(sirinluexternal::UserWantedToProceed *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "reference");
  }

  v6 = *(this + 2);
  if (v6)
  {
    (*(*v6 + 32))(v6, a2, "task_id");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternal::UserWantedToProceed::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 16);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  v5 = *(v3 + 8);
  if (v5)
  {

    return PB::Writer::writeSubmessage(a2, v5);
  }

  return this;
}

uint64_t sirinluexternal::UserWantedToProceed::readFrom(sirinluexternal::UserWantedToProceed *this, PB::Reader *a2)
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

void sirinluexternal::UserWantedToProceed::~UserWantedToProceed(sirinluexternal::UserWantedToProceed *this)
{
  sirinluexternal::UserWantedToProceed::~UserWantedToProceed(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F48775C0;
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
    (*(*v3 + 8))(v3);
  }

  PB::Base::~Base(this);
}

void *sirinluexternal::UserWantedToProceed::UserWantedToProceed(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F48775C0;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F48775C0;
  return this;
}

void *sirinluexternal::UserWantedToProceed::UserWantedToProceed(void *this, const sirinluexternal::UserWantedToProceed *a2)
{
  *this = &unk_1F48775C0;
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

uint64_t sirinluexternal::UserWantedToProceed::operator=(uint64_t a1, const sirinluexternal::UserWantedToProceed *a2)
{
  if (a1 != a2)
  {
    sirinluexternal::UserWantedToProceed::UserWantedToProceed(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    sirinluexternal::UserWantedToProceed::~UserWantedToProceed(&v5);
  }

  return a1;
}

uint64_t sirinluexternal::swap(uint64_t this, sirinluexternal::UserWantedToProceed *a2, sirinluexternal::UserWantedToProceed *a3)
{
  v3 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v4;
  return this;
}

void *sirinluexternal::UserWantedToProceed::UserWantedToProceed(void *a1, uint64_t a2)
{
  a1[1] = 0;
  v4 = a1 + 1;
  *a1 = &unk_1F48775C0;
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
    (*(*v8 + 8))(v8);
  }

  return a1;
}

uint64_t sirinluexternal::UserWantedToProceed::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluexternal::UserWantedToProceed::UserWantedToProceed(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    sirinluexternal::UserWantedToProceed::~UserWantedToProceed(&v5);
  }

  return a1;
}

BOOL sirinluexternal::UserWantedToProceed::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v4)
  {
    if (v5 && sirinluexternal::UUID::operator==(v4, v5))
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (v5)
  {
    return 0;
  }

LABEL_4:
  v6 = *(a1 + 8);
  v7 = *(a2 + 8);
  result = (v6 | v7) == 0;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = *(a1 + 8);

    return sirinluexternal::UsoGraph::operator==(v10, v7);
  }

  return result;
}

unint64_t sirinluexternal::UserWantedToProceed::hash_value(sirinluexternal::UserWantedToProceed *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    v5 = 0;
    goto LABEL_11;
  }

  if ((*(v1 + 28) & 1) == 0)
  {
    v2 = 0;
    if ((*(v1 + 28) & 2) != 0)
    {
      goto LABEL_4;
    }

LABEL_8:
    v3 = 0;
    if ((*(v1 + 28) & 4) != 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    v4 = 0;
    goto LABEL_10;
  }

  v2 = *(v1 + 8);
  if ((*(v1 + 28) & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v3 = *(v1 + 16);
  if ((*(v1 + 28) & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v4 = *(v1 + 24);
LABEL_10:
  v5 = v3 ^ v2 ^ v4;
LABEL_11:
  v6 = *(this + 1);
  if (v6)
  {
    v6 = sirinluexternal::UsoGraph::hash_value(v6);
  }

  return v6 ^ v5;
}

uint64_t sirinluexternal::UserWantedToProceed::makeTaskId(uint64_t this)
{
  if (!*(this + 16))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::UserWantedToProceed::makeReference(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::UserAccepted::formatText(sirinluexternal::UserAccepted *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "offer_id");
  }

  v6 = *(this + 2);
  if (v6)
  {
    (*(*v6 + 32))(v6, a2, "reference");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternal::UserAccepted::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  v5 = *(v3 + 16);
  if (v5)
  {

    return PB::Writer::writeSubmessage(a2, v5);
  }

  return this;
}

uint64_t sirinluexternal::UserAccepted::readFrom(sirinluexternal::UserAccepted *this, PB::Reader *a2)
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

void sirinluexternal::UserAccepted::~UserAccepted(sirinluexternal::UserAccepted *this)
{
  sirinluexternal::UserAccepted::~UserAccepted(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4877610;
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
    (*(*v3 + 8))(v3);
  }

  PB::Base::~Base(this);
}

void *sirinluexternal::UserAccepted::UserAccepted(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4877610;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4877610;
  return this;
}

void *sirinluexternal::UserAccepted::UserAccepted(void *this, const sirinluexternal::UserAccepted *a2)
{
  *this = &unk_1F4877610;
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

uint64_t sirinluexternal::UserAccepted::operator=(uint64_t a1, const sirinluexternal::UserAccepted *a2)
{
  if (a1 != a2)
  {
    sirinluexternal::UserAccepted::UserAccepted(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    sirinluexternal::UserAccepted::~UserAccepted(&v5);
  }

  return a1;
}

uint64_t sirinluexternal::swap(uint64_t this, sirinluexternal::UserAccepted *a2, sirinluexternal::UserAccepted *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  v4 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v4;
  return this;
}

void *sirinluexternal::UserAccepted::UserAccepted(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F4877610;
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;
  v5 = a1[1];
  a1[1] = v4;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(a2 + 16);
  *(a2 + 16) = 0;
  v7 = a1[2];
  a1[2] = v6;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  return a1;
}

uint64_t sirinluexternal::UserAccepted::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluexternal::UserAccepted::UserAccepted(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    sirinluexternal::UserAccepted::~UserAccepted(&v5);
  }

  return a1;
}

BOOL sirinluexternal::UserAccepted::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (v5 && sirinluexternal::UUID::operator==(v4, v5))
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (v5)
  {
    return 0;
  }

LABEL_4:
  v6 = *(a1 + 16);
  v7 = *(a2 + 16);
  result = (v6 | v7) == 0;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = *(a1 + 16);

    return sirinluexternal::UsoGraph::operator==(v10, v7);
  }

  return result;
}

unint64_t sirinluexternal::UserAccepted::hash_value(sirinluexternal::UserAccepted *this)
{
  v1 = *(this + 1);
  if (!v1)
  {
    v5 = 0;
    goto LABEL_11;
  }

  if ((*(v1 + 28) & 1) == 0)
  {
    v2 = 0;
    if ((*(v1 + 28) & 2) != 0)
    {
      goto LABEL_4;
    }

LABEL_8:
    v3 = 0;
    if ((*(v1 + 28) & 4) != 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    v4 = 0;
    goto LABEL_10;
  }

  v2 = *(v1 + 8);
  if ((*(v1 + 28) & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v3 = *(v1 + 16);
  if ((*(v1 + 28) & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v4 = *(v1 + 24);
LABEL_10:
  v5 = v3 ^ v2 ^ v4;
LABEL_11:
  v6 = *(this + 2);
  if (v6)
  {
    v6 = sirinluexternal::UsoGraph::hash_value(v6);
  }

  return v6 ^ v5;
}

uint64_t sirinluexternal::UserAccepted::makeOfferId(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::UserAccepted::makeReference(uint64_t this)
{
  if (!*(this + 16))
  {
    operator new();
  }

  return this;
}

uint64_t SIRINLUINTERNALCATICATIRequestReadFrom(id *a1, void *a2)
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
        LOBYTE(v19) = 0;
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
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(SIRINLUINTERNALNLv4EmbeddingTensor);
          objc_storeStrong(a1 + 1, v14);
          v19 = 0;
          v20 = 0;
          if (!PBReaderPlaceMark() || !SIRINLUINTERNALNLv4EmbeddingTensorReadFrom(v14, a2))
          {
LABEL_41:

            return 0;
          }

LABEL_34:
          PBReaderRecallMark();
LABEL_35:

          goto LABEL_36;
        }

        if (v13 == 2)
        {
          v15 = PBReaderReadString();
          v16 = 3;
          goto LABEL_28;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v15 = PBReaderReadString();
            v16 = 2;
LABEL_28:
            v14 = a1[v16];
            a1[v16] = v15;
            goto LABEL_35;
          case 4:
            v14 = objc_alloc_init(SIRINLUEXTERNALUUID);
            objc_storeStrong(a1 + 4, v14);
            v19 = 0;
            v20 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUEXTERNALUUIDReadFrom(v14, a2))
            {
              goto LABEL_41;
            }

            goto LABEL_34;
          case 5:
            v14 = objc_alloc_init(SIRINLUEXTERNALTurnInput);
            objc_storeStrong(a1 + 5, v14);
            v19 = 0;
            v20 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUEXTERNALTurnInputReadFrom(v14, a2))
            {
              goto LABEL_41;
            }

            goto LABEL_34;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_36:
      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sirinluinternal::SiriVocabularySpanData::formatText(sirinluinternal::SiriVocabularySpanData *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 28);
  if (v5)
  {
    PB::TextFormatter::format(a2, "match_score", *(this + 1));
    v5 = *(this + 28);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(this + 28) & 4) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(this + 6);
  PB::TextFormatter::format(a2, "prior_ordinality");
  if ((*(this + 28) & 2) != 0)
  {
LABEL_4:
    PB::TextFormatter::format(a2, "prior_score", *(this + 2));
  }

LABEL_5:

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluinternal::SiriVocabularySpanData::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 28);
  if ((v4 & 4) == 0)
  {
    if ((*(this + 28) & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = PB::Writer::write(a2, *(v3 + 16));
    if ((*(v3 + 28) & 1) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  v5 = *(this + 24);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 28);
  if ((v4 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v4 & 1) == 0)
  {
    return this;
  }

LABEL_7:
  v6 = *(v3 + 8);

  return PB::Writer::write(a2, v6);
}

uint64_t sirinluinternal::SiriVocabularySpanData::readFrom(sirinluinternal::SiriVocabularySpanData *this, PB::Reader *a2)
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
        goto LABEL_54;
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
        goto LABEL_54;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        break;
      }

      if (v22 == 2)
      {
        *(this + 28) |= 2u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_35;
        }

        *(this + 2) = *(*a2 + v2);
LABEL_44:
        v2 = *(a2 + 1) + 8;
        *(a2 + 1) = v2;
        goto LABEL_50;
      }

      if (v22 == 1)
      {
        *(this + 28) |= 4u;
        v23 = *(a2 + 1);
        v2 = *(a2 + 2);
        v24 = *a2;
        if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
        {
          v31 = 0;
          v32 = 0;
          v27 = 0;
          if (v2 <= v23)
          {
            v2 = *(a2 + 1);
          }

          while (1)
          {
            if (v2 == v23)
            {
              LODWORD(v27) = 0;
              *(a2 + 24) = 1;
              goto LABEL_49;
            }

            v33 = v23 + 1;
            v34 = *(v24 + v23);
            *(a2 + 1) = v33;
            v27 |= (v34 & 0x7F) << v31;
            if ((v34 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            v23 = v33;
            v14 = v32++ > 8;
            if (v14)
            {
              LODWORD(v27) = 0;
              goto LABEL_48;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v27) = 0;
          }

LABEL_48:
          v2 = v33;
        }

        else
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = (v24 + v23);
          v29 = v23 + 1;
          while (1)
          {
            v2 = v29;
            *(a2 + 1) = v29;
            v30 = *v28++;
            v27 |= (v30 & 0x7F) << v25;
            if ((v30 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            ++v29;
            v14 = v26++ > 8;
            if (v14)
            {
              LODWORD(v27) = 0;
              break;
            }
          }
        }

LABEL_49:
        *(this + 6) = v27;
      }

      else
      {
LABEL_17:
        if (!PB::Reader::skip(a2))
        {
          v35 = 0;
          return v35 & 1;
        }

        v2 = *(a2 + 1);
      }

LABEL_50:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_54;
      }
    }

    *(this + 28) |= 1u;
    v2 = *(a2 + 1);
    if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
    {
LABEL_35:
      *(a2 + 24) = 1;
      goto LABEL_50;
    }

    *(this + 1) = *(*a2 + v2);
    goto LABEL_44;
  }

LABEL_54:
  v35 = v4 ^ 1;
  return v35 & 1;
}

void sirinluinternal::SiriVocabularySpanData::~SiriVocabularySpanData(sirinluinternal::SiriVocabularySpanData *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x1CCA7EC50);
}

uint64_t sirinluinternal::SiriVocabularySpanData::SiriVocabularySpanData(uint64_t this)
{
  *this = &unk_1F4877660;
  *(this + 28) = 0;
  return this;
}

{
  *this = &unk_1F4877660;
  *(this + 28) = 0;
  return this;
}

double sirinluinternal::SiriVocabularySpanData::SiriVocabularySpanData(sirinluinternal::SiriVocabularySpanData *this, const sirinluinternal::SiriVocabularySpanData *a2)
{
  *this = &unk_1F4877660;
  *(this + 7) = 0;
  v2 = *(a2 + 28);
  if ((v2 & 4) != 0)
  {
    v4 = *(a2 + 6);
    v3 = 4;
    *(this + 28) = 4;
    *(this + 6) = v4;
    v2 = *(a2 + 28);
    if ((v2 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 28) & 2) != 0)
  {
LABEL_5:
    result = *(a2 + 2);
    v3 |= 2u;
    *(this + 28) = v3;
    *(this + 2) = result;
    v2 = *(a2 + 28);
  }

LABEL_6:
  if (v2)
  {
    result = *(a2 + 1);
    *(this + 28) = v3 | 1;
    *(this + 1) = result;
  }

  return result;
}

uint64_t sirinluinternal::SiriVocabularySpanData::operator=(uint64_t a1, const sirinluinternal::SiriVocabularySpanData *a2)
{
  if (a1 != a2)
  {
    sirinluinternal::SiriVocabularySpanData::SiriVocabularySpanData(&v6, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    PB::Base::~Base(&v6);
  }

  return a1;
}

double sirinluinternal::swap(sirinluinternal *this, sirinluinternal::SiriVocabularySpanData *a2, sirinluinternal::SiriVocabularySpanData *a3)
{
  v3 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v3;
  v4 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v4;
  v5 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v5;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  return result;
}

double sirinluinternal::SiriVocabularySpanData::SiriVocabularySpanData(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4877660;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

{
  *a1 = &unk_1F4877660;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sirinluinternal::SiriVocabularySpanData::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v7 = &unk_1F4877660;
    v3 = *(a2 + 8);
    v4 = *(a2 + 24);
    *(a2 + 28) = 0;
    v9 = *(a1 + 24);
    v5 = *(a1 + 8);
    *(a1 + 24) = v4;
    *(a1 + 8) = v3;
    v8 = v5;
    PB::Base::~Base(&v7);
  }

  return a1;
}

BOOL sirinluinternal::SiriVocabularySpanData::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 28) & 4) != 0)
  {
    if ((*(a2 + 28) & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 28) & 4) != 0)
  {
    return 0;
  }

  if ((*(a1 + 28) & 2) != 0)
  {
    if ((*(a2 + 28) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 28) & 2) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 28) & 1) == 0;
  if (*(a1 + 28))
  {
    return (*(a2 + 28) & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return v2;
}

uint64_t sirinluinternal::SiriVocabularySpanData::hash_value(sirinluinternal::SiriVocabularySpanData *this)
{
  if ((*(this + 28) & 4) != 0)
  {
    v1 = *(this + 6);
    if ((*(this + 28) & 2) != 0)
    {
LABEL_3:
      v2 = *(this + 2);
      if (v2 == 0.0)
      {
        v2 = 0.0;
      }

      if (*(this + 28))
      {
        goto LABEL_6;
      }

LABEL_11:
      v3 = 0.0;
      return *&v2 ^ v1 ^ *&v3;
    }
  }

  else
  {
    v1 = 0;
    if ((*(this + 28) & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v2 = 0.0;
  if ((*(this + 28) & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v3 = *(this + 1);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  return *&v2 ^ v1 ^ *&v3;
}

uint64_t SIRINLUEXTERNALTurnContextReadFrom(uint64_t a1, void *a2)
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
        v13 = objc_alloc_init(SIRINLUEXTERNALNLContext);
        objc_storeStrong((a1 + 16), v13);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !SIRINLUEXTERNALNLContextReadFrom(&v13->super.super.isa, a2))
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

    v13 = objc_alloc_init(SIRINLUEXTERNALLegacyNLContext);
    objc_storeStrong((a1 + 8), v13);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !SIRINLUEXTERNALLegacyNLContextReadFrom(v13, a2))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sirinluexternal::DelegatedUserDialogAct::formatText(sirinluexternal::DelegatedUserDialogAct *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 68))
  {
    v5 = *(this + 16);
    PB::TextFormatter::format(a2, "asr_hypothesis_index");
  }

  if (*(this + 1))
  {
    PB::TextFormatter::format();
  }

  v6 = *(this + 2);
  v7 = *(this + 3);
  while (v6 != v7)
  {
    v8 = *v6++;
    (*(*v8 + 32))(v8, a2, "matching_spans");
  }

  v9 = *(this + 5);
  if (v9)
  {
    (*(*v9 + 32))(v9, a2, "reference_context");
  }

  v10 = *(this + 6);
  if (v10)
  {
    (*(*v10 + 32))(v10, a2, "rewrite");
  }

  v11 = *(this + 7);
  if (v11)
  {
    (*(*v11 + 32))(v11, a2, "rewritten_utterance");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternal::DelegatedUserDialogAct::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if (*(this + 68))
  {
    v4 = *(this + 64);
    this = PB::Writer::writeVarInt(a2);
  }

  v5 = v3[7];
  if (v5)
  {
    this = PB::Writer::writeSubmessage(a2, v5);
  }

  if (v3[1])
  {
    this = PB::Writer::write();
  }

  v6 = v3[2];
  v7 = v3[3];
  while (v6 != v7)
  {
    v8 = *v6++;
    this = PB::Writer::writeSubmessage(a2, v8);
  }

  v9 = v3[6];
  if (v9)
  {
    this = PB::Writer::writeSubmessage(a2, v9);
  }

  v10 = v3[5];
  if (v10)
  {

    return PB::Writer::writeSubmessage(a2, v10);
  }

  return this;
}

uint64_t sirinluexternal::DelegatedUserDialogAct::readFrom(sirinluexternal::DelegatedUserDialogAct *this, PB::Reader *a2)
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
    if ((v10 >> 3) > 3)
    {
      switch(v22)
      {
        case 4:
          PB::PtrVector<sirinluexternal::Span>::emplace_back<>();
        case 5:
          operator new();
        case 6:
          operator new();
      }
    }

    else
    {
      switch(v22)
      {
        case 1:
          *(this + 68) |= 1u;
          v24 = *(a2 + 1);
          v23 = *(a2 + 2);
          v25 = *a2;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
          {
            v32 = 0;
            v33 = 0;
            v28 = 0;
            v34 = (v25 + v24);
            v18 = v23 >= v24;
            v35 = v23 - v24;
            if (!v18)
            {
              v35 = 0;
            }

            v36 = v24 + 1;
            while (1)
            {
              if (!v35)
              {
                LODWORD(v28) = 0;
                *(a2 + 24) = 1;
                goto LABEL_50;
              }

              v37 = *v34;
              *(a2 + 1) = v36;
              v28 |= (v37 & 0x7F) << v32;
              if ((v37 & 0x80) == 0)
              {
                break;
              }

              v32 += 7;
              ++v34;
              --v35;
              ++v36;
              v14 = v33++ > 8;
              if (v14)
              {
LABEL_46:
                LODWORD(v28) = 0;
                goto LABEL_50;
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
                goto LABEL_46;
              }
            }
          }

LABEL_50:
          *(this + 16) = v28;
          goto LABEL_51;
        case 2:
          operator new();
        case 3:
          operator new();
      }
    }

LABEL_17:
    if ((PB::Reader::skip(a2) & 1) == 0)
    {
      v39 = 0;
      return v39 & 1;
    }

LABEL_51:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v39 = v4 ^ 1;
  return v39 & 1;
}

void sirinluexternal::DelegatedUserDialogAct::~DelegatedUserDialogAct(sirinluexternal::DelegatedUserDialogAct *this)
{
  sirinluexternal::DelegatedUserDialogAct::~DelegatedUserDialogAct(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F48776B0;
  v2 = *(this + 7);
  *(this + 7) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 6);
  *(this + 6) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 5);
  *(this + 5) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v6 = (this + 16);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v5);
  }

  PB::Base::~Base(this);
}

double sirinluexternal::DelegatedUserDialogAct::DelegatedUserDialogAct(sirinluexternal::DelegatedUserDialogAct *this)
{
  *this = &unk_1F48776B0;
  *(this + 17) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  return result;
}

{
  *this = &unk_1F48776B0;
  *(this + 17) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  return result;
}

uint64_t sirinluexternal::DelegatedUserDialogAct::DelegatedUserDialogAct(uint64_t this, const sirinluexternal::DelegatedUserDialogAct *a2)
{
  *(this + 8) = 0u;
  *this = &unk_1F48776B0;
  *(this + 68) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0;
  if (*(a2 + 68))
  {
    v2 = *(a2 + 16);
    *(this + 68) = 1;
    *(this + 64) = v2;
  }

  if (*(a2 + 7))
  {
    operator new();
  }

  if (*(a2 + 1))
  {
    operator new();
  }

  v3 = *(a2 + 2);
  if (v3 != *(a2 + 3))
  {
    v4 = *v3;
    PB::PtrVector<sirinluexternal::Span>::emplace_back<sirinluexternal::Span const&>();
  }

  if (*(a2 + 6))
  {
    operator new();
  }

  if (*(a2 + 5))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::DelegatedUserDialogAct::operator=(uint64_t a1, const sirinluexternal::DelegatedUserDialogAct *a2)
{
  if (a1 != a2)
  {
    sirinluexternal::DelegatedUserDialogAct::DelegatedUserDialogAct(v10, a2);
    v3 = *(a1 + 64);
    *(a1 + 64) = v15;
    v15 = v3;
    v4 = *(a1 + 56);
    *(a1 + 56) = v14;
    v14 = v4;
    v5 = v12;
    v6 = *(a1 + 8);
    *(a1 + 8) = v11;
    v7 = *(a1 + 24);
    *(a1 + 24) = v5;
    v11 = v6;
    v12 = v7;
    v8 = *(a1 + 40);
    *(a1 + 40) = v13;
    v13 = v8;
    sirinluexternal::DelegatedUserDialogAct::~DelegatedUserDialogAct(v10);
  }

  return a1;
}

uint64_t sirinluexternal::swap(uint64_t this, sirinluexternal::DelegatedUserDialogAct *a2, sirinluexternal::DelegatedUserDialogAct *a3)
{
  v3 = *(this + 68);
  *(this + 68) = *(a2 + 17);
  *(a2 + 17) = v3;
  v4 = *(this + 64);
  *(this + 64) = *(a2 + 16);
  *(a2 + 16) = v4;
  v5 = *(this + 56);
  *(this + 56) = *(a2 + 7);
  *(a2 + 7) = v5;
  v6 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v6;
  v7 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v7;
  v8 = *(this + 24);
  *(this + 24) = *(a2 + 3);
  *(a2 + 3) = v8;
  v9 = *(this + 32);
  *(this + 32) = *(a2 + 4);
  *(a2 + 4) = v9;
  v10 = *(this + 48);
  *(this + 48) = *(a2 + 6);
  *(a2 + 6) = v10;
  v11 = *(this + 40);
  *(this + 40) = *(a2 + 5);
  *(a2 + 5) = v11;
  return this;
}

uint64_t sirinluexternal::DelegatedUserDialogAct::DelegatedUserDialogAct(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F48776B0;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 68) = *(a2 + 68);
  *(a2 + 68) = 0;
  *(a1 + 64) = *(a2 + 64);
  v5 = *(a2 + 56);
  *(a2 + 56) = 0;
  v6 = *(a1 + 56);
  *(a1 + 56) = v5;
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

  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__vdeallocate((a1 + 16));
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  v9 = *(a2 + 48);
  *(a2 + 48) = 0;
  v10 = *(a1 + 48);
  *(a1 + 48) = v9;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = *(a2 + 40);
  *(a2 + 40) = 0;
  v12 = *(a1 + 40);
  *(a1 + 40) = v11;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  return a1;
}

uint64_t sirinluexternal::DelegatedUserDialogAct::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluexternal::DelegatedUserDialogAct::DelegatedUserDialogAct(v10, a2);
    v3 = *(a1 + 64);
    *(a1 + 64) = v15;
    v15 = v3;
    v4 = *(a1 + 56);
    *(a1 + 56) = v14;
    v14 = v4;
    v5 = v12;
    v6 = *(a1 + 8);
    *(a1 + 8) = v11;
    v7 = *(a1 + 24);
    *(a1 + 24) = v5;
    v11 = v6;
    v12 = v7;
    v8 = *(a1 + 40);
    *(a1 + 40) = v13;
    v13 = v8;
    sirinluexternal::DelegatedUserDialogAct::~DelegatedUserDialogAct(v10);
  }

  return a1;
}

BOOL sirinluexternal::DelegatedUserDialogAct::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 68);
  if (*(a1 + 68))
  {
    if ((*(a2 + 68) & 1) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if (*(a2 + 68))
  {
    return 0;
  }

  v5 = *(a1 + 56);
  v6 = *(a2 + 56);
  if (v5)
  {
    if (!v6 || !siricommon::StringValue::operator==(v5, v6))
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v7 = *(a1 + 8);
  v8 = *(a2 + 8);
  if (v7)
  {
    if (!v8)
    {
      return 0;
    }

    v9 = *(v7 + 23);
    if (v9 >= 0)
    {
      v10 = *(v7 + 23);
    }

    else
    {
      v10 = *(v7 + 8);
    }

    v11 = *(v8 + 23);
    v12 = v11;
    if ((v11 & 0x80u) != 0)
    {
      v11 = *(v8 + 8);
    }

    if (v10 != v11)
    {
      return 0;
    }

    v13 = v9 >= 0 ? *(a1 + 8) : *v7;
    v14 = v12 >= 0 ? *(a2 + 8) : *v8;
    if (memcmp(v13, v14, v10))
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  result = PB::PtrVector<sirinluexternal::Span>::operator==((a1 + 16), *(a2 + 16), *(a2 + 24));
  if (!result)
  {
    return result;
  }

  v16 = *(a1 + 48);
  v17 = *(a2 + 48);
  if (v16)
  {
    if (!v17 || !sirinluexternal::RewriteMessage::operator==(v16, v17))
    {
      return 0;
    }

    goto LABEL_36;
  }

  if (v17)
  {
    return 0;
  }

LABEL_36:
  v18 = *(a1 + 40);
  v19 = *(a2 + 40);
  result = (v18 | v19) == 0;
  if (v18 && v19)
  {
    v20 = *(a1 + 40);

    return sirinluexternal::ReferenceContext::operator==(v20, v19);
  }

  return result;
}

unint64_t sirinluexternal::DelegatedUserDialogAct::hash_value(sirinluexternal::DelegatedUserDialogAct *this)
{
  if (*(this + 68))
  {
    v2 = *(this + 16);
  }

  else
  {
    v2 = 0;
  }

  v3 = *(this + 7);
  if (v3 && (v4 = *(v3 + 8)) != 0)
  {
    v5 = std::__string_hash<char>::operator()[abi:ne200100](v4);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(this + 1);
  if (v6)
  {
    v7 = std::__string_hash<char>::operator()[abi:ne200100](v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(this + 2);
  v9 = *(this + 3);
  if (v8 == v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0;
    do
    {
      v11 = *v8++;
      v10 ^= sirinluexternal::Span::hash_value(v11);
    }

    while (v8 != v9);
  }

  v12 = *(this + 6);
  if (v12)
  {
    if (*(v12 + 20))
    {
      v13 = *(v12 + 16);
    }

    else
    {
      v13 = 0;
    }

    v14 = *(v12 + 8);
    if (v14)
    {
      v14 = std::__string_hash<char>::operator()[abi:ne200100](v14);
    }

    v12 = v14 ^ v13;
  }

  v15 = *(this + 5);
  if (v15)
  {
    if (*(v15 + 12))
    {
      v16 = *(v15 + 8);
      if ((*(v15 + 12) & 2) != 0)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v16 = 0;
      if ((*(v15 + 12) & 2) != 0)
      {
LABEL_26:
        v17 = *(v15 + 9);
LABEL_29:
        v15 = v17 ^ v16;
        return v5 ^ v2 ^ v7 ^ v12 ^ v15 ^ v10;
      }
    }

    v17 = 0;
    goto LABEL_29;
  }

  return v5 ^ v2 ^ v7 ^ v12 ^ v15 ^ v10;
}

uint64_t sirinluexternal::DelegatedUserDialogAct::makeRewrittenUtterance(uint64_t this)
{
  if (!*(this + 56))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::DelegatedUserDialogAct::makeRewrite(uint64_t this)
{
  if (!*(this + 48))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::DelegatedUserDialogAct::makeReferenceContext(uint64_t this)
{
  if (!*(this + 40))
  {
    operator new();
  }

  return this;
}

uint64_t SIRINLUINTERNALAdjacentSpansReadFrom(void *a1, void *a2)
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
        LOBYTE(v17[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17[0] & 0x7F) << v5;
        if ((v17[0] & 0x80) == 0)
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
        v14 = a1[1];
        a1[1] = v13;
LABEL_23:

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(SIRINLUINTERNALSpanDataForNamedCaptureGroup);
    [a1 addSpans:v14];
    v17[0] = 0;
    v17[1] = 0;
    if (!PBReaderPlaceMark() || !SIRINLUINTERNALSpanDataForNamedCaptureGroupReadFrom(v14, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sirinluexternalnlu_router::NLRouterServiceRequest::formatText(sirinluexternalnlu_router::NLRouterServiceRequest *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, a2, "conversation_history");
  }

  if (*(this + 4))
  {
    PB::TextFormatter::format();
  }

  v8 = *(this + 5);
  if (v8)
  {
    (*(*v8 + 32))(v8, a2, "probing_result");
  }

  v9 = *(this + 6);
  if (v9)
  {
    (*(*v9 + 32))(v9, a2, "query_decoration_output");
  }

  if (*(this + 7))
  {
    PB::TextFormatter::format();
  }

  if (*(this + 8))
  {
    PB::TextFormatter::format();
  }

  v10 = *(this + 9);
  if (v10)
  {
    (*(*v10 + 32))(v10, a2, "turn_context");
  }

  return MEMORY[0x1EEE30A90](a2);
}

void *sirinluexternalnlu_router::NLRouterServiceRequest::writeTo(void *this, PB::Writer *a2)
{
  v3 = this;
  if (this[4])
  {
    this = PB::Writer::write();
  }

  v4 = v3[9];
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  v5 = v3[1];
  v6 = v3[2];
  while (v5 != v6)
  {
    v7 = *v5++;
    this = PB::Writer::writeSubmessage(a2, v7);
  }

  if (v3[7])
  {
    this = PB::Writer::write();
  }

  if (v3[8])
  {
    this = PB::Writer::write();
  }

  v8 = v3[5];
  if (v8)
  {
    this = PB::Writer::writeSubmessage(a2, v8);
  }

  v9 = v3[6];
  if (v9)
  {

    return PB::Writer::writeSubmessage(a2, v9);
  }

  return this;
}

uint64_t sirinluexternalnlu_router::NLRouterServiceRequest::readFrom(sirinluexternalnlu_router::NLRouterServiceRequest *this, PB::Reader *a2)
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
        goto LABEL_40;
      }

      v21 = v9 >> 3;
      if ((v9 >> 3) <= 3)
      {
        switch(v21)
        {
          case 1:
            operator new();
          case 2:
            operator new();
          case 3:
            operator new();
        }
      }

      else if (v21 > 5)
      {
        if (v21 == 6)
        {
          operator new();
        }

        if (v21 == 7)
        {
          operator new();
        }
      }

      else
      {
        if (v21 == 4)
        {
          operator new();
        }

        if (v21 == 5)
        {
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
        goto LABEL_40;
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

LABEL_40:
  v23 = v4 ^ 1;
  return v23 & 1;
}

void sirinluexternalnlu_router::NLRouterServiceRequest::~NLRouterServiceRequest(sirinluexternalnlu_router::NLRouterServiceRequest *this)
{
  sirinluexternalnlu_router::NLRouterServiceRequest::~NLRouterServiceRequest(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4877700;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v3);
  }

  v4 = *(this + 7);
  *(this + 7) = 0;
  if (v4)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v4);
  }

  v5 = *(this + 6);
  *(this + 6) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 5);
  *(this + 5) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 4);
  *(this + 4) = 0;
  if (v7)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v7);
  }

  if (*(this + 1))
  {
    std::vector<std::unique_ptr<siricommon::StringValue>>::clear[abi:ne200100](this + 1);
    operator delete(*(this + 1));
  }

  PB::Base::~Base(this);
}

double sirinluexternalnlu_router::NLRouterServiceRequest::NLRouterServiceRequest(sirinluexternalnlu_router::NLRouterServiceRequest *this)
{
  *this = &unk_1F4877700;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  return result;
}

{
  *this = &unk_1F4877700;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  return result;
}

uint64_t sirinluexternalnlu_router::NLRouterServiceRequest::NLRouterServiceRequest(uint64_t this, const sirinluexternalnlu_router::NLRouterServiceRequest *a2)
{
  *(this + 8) = 0u;
  *this = &unk_1F4877700;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0;
  if (*(a2 + 4))
  {
    operator new();
  }

  if (*(a2 + 9))
  {
    operator new();
  }

  v2 = *(a2 + 1);
  if (v2 != *(a2 + 2))
  {
    v3 = *v2;
    operator new();
  }

  if (*(a2 + 7))
  {
    operator new();
  }

  if (*(a2 + 8))
  {
    operator new();
  }

  if (*(a2 + 5))
  {
    operator new();
  }

  if (*(a2 + 6))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternalnlu_router::NLRouterServiceRequest::operator=(uint64_t a1, const sirinluexternalnlu_router::NLRouterServiceRequest *a2)
{
  if (a1 != a2)
  {
    sirinluexternalnlu_router::NLRouterServiceRequest::NLRouterServiceRequest(&v9, a2);
    v3 = *(a1 + 72);
    *(a1 + 72) = v14;
    v14 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v10;
    v10 = v4;
    v5 = *(a1 + 24);
    *(a1 + 24) = v11;
    v11 = v5;
    v6 = *(a1 + 56);
    *(a1 + 56) = v13;
    v13 = v6;
    v7 = *(a1 + 40);
    *(a1 + 40) = v12;
    v12 = v7;
    sirinluexternalnlu_router::NLRouterServiceRequest::~NLRouterServiceRequest(&v9);
  }

  return a1;
}

void *sirinluexternalnlu_router::swap(void *this, sirinluexternalnlu_router::NLRouterServiceRequest *a2, sirinluexternalnlu_router::NLRouterServiceRequest *a3)
{
  v3 = this[4];
  this[4] = *(a2 + 4);
  *(a2 + 4) = v3;
  v4 = this[9];
  this[9] = *(a2 + 9);
  *(a2 + 9) = v4;
  v5 = this[1];
  this[1] = *(a2 + 1);
  *(a2 + 1) = v5;
  v6 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v6;
  v7 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v7;
  v8 = this[7];
  this[7] = *(a2 + 7);
  *(a2 + 7) = v8;
  v9 = this[8];
  this[8] = *(a2 + 8);
  *(a2 + 8) = v9;
  v10 = this[5];
  this[5] = *(a2 + 5);
  *(a2 + 5) = v10;
  v11 = this[6];
  this[6] = *(a2 + 6);
  *(a2 + 6) = v11;
  return this;
}

uint64_t sirinluexternalnlu_router::NLRouterServiceRequest::NLRouterServiceRequest(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4877700;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  v5 = *(a2 + 32);
  *(a2 + 32) = 0;
  v6 = *(a1 + 32);
  *(a1 + 32) = v5;
  if (v6)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v6);
  }

  v7 = *(a2 + 72);
  *(a2 + 72) = 0;
  v8 = *(a1 + 72);
  *(a1 + 72) = v7;
  if (v8)
  {
    (*(*v8 + 8))(v8);
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
  v9 = *(a2 + 56);
  *(a2 + 56) = 0;
  v10 = *(a1 + 56);
  *(a1 + 56) = v9;
  if (v10)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v10);
  }

  v11 = *(a2 + 64);
  *(a2 + 64) = 0;
  v12 = *(a1 + 64);
  *(a1 + 64) = v11;
  if (v12)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v12);
  }

  v13 = *(a2 + 40);
  *(a2 + 40) = 0;
  v14 = *(a1 + 40);
  *(a1 + 40) = v13;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v15 = *(a2 + 48);
  *(a2 + 48) = 0;
  v16 = *(a1 + 48);
  *(a1 + 48) = v15;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  return a1;
}

uint64_t sirinluexternalnlu_router::NLRouterServiceRequest::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluexternalnlu_router::NLRouterServiceRequest::NLRouterServiceRequest(&v9, a2);
    v3 = *(a1 + 72);
    *(a1 + 72) = v14;
    v14 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v10;
    v10 = v4;
    v5 = *(a1 + 24);
    *(a1 + 24) = v11;
    v11 = v5;
    v6 = *(a1 + 56);
    *(a1 + 56) = v13;
    v13 = v6;
    v7 = *(a1 + 40);
    *(a1 + 40) = v12;
    v12 = v7;
    sirinluexternalnlu_router::NLRouterServiceRequest::~NLRouterServiceRequest(&v9);
  }

  return a1;
}

uint64_t sirinluexternalnlu_router::NLRouterServiceRequest::operator==(void *a1, void *a2)
{
  v4 = a1[4];
  v5 = a2[4];
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

    v10 = v6 >= 0 ? a1[4] : *v4;
    v11 = v9 >= 0 ? a2[4] : *v5;
    if (memcmp(v10, v11, v7))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v13 = a1[9];
  v14 = a2[9];
  if (v13)
  {
    if (!v14 || !sirinluexternalnlu_router::NLRouterTurnContext::operator==(v13, v14))
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  v16 = a1[1];
  v15 = a1[2];
  v17 = a2[1];
  if (v15 - v16 != a2[2] - v17)
  {
    return 0;
  }

  while (v16 != v15)
  {
    result = sirinluexternalnlu_router::RequestSummary::operator==(*v16, *v17);
    if (!result)
    {
      return result;
    }

    ++v16;
    ++v17;
  }

  v18 = a1[7];
  v19 = a2[7];
  if (v18)
  {
    if (!v19 || !std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(v18, v19))
    {
      return 0;
    }
  }

  else if (v19)
  {
    return 0;
  }

  v20 = a1[8];
  v21 = a2[8];
  if (v20)
  {
    if (!v21 || !std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(v20, v21))
    {
      return 0;
    }
  }

  else if (v21)
  {
    return 0;
  }

  v22 = a1[5];
  v23 = a2[5];
  if (!v22)
  {
    if (!v23)
    {
      goto LABEL_44;
    }

    return 0;
  }

  if (!v23 || !sirinluexternalnlu_router::NLRouterTurnProbingResult::operator==(v22, v23))
  {
    return 0;
  }

LABEL_44:
  v24 = a1[6];
  v25 = a2[6];
  result = (v24 | v25) == 0;
  if (v24 && v25)
  {
    v26 = a1[6];

    return sirinluexternalnlu_router::QueryDecorationOutput::operator==(v26, v25);
  }

  return result;
}

unint64_t sirinluexternalnlu_router::NLRouterServiceRequest::hash_value(sirinluexternalnlu_router::NLRouterServiceRequest *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v3 = std::__string_hash<char>::operator()[abi:ne200100](v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 9);
  if (v4)
  {
    v5 = sirinluexternalnlu_router::NLRouterTurnContext::hash_value(v4);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(this + 1);
  v7 = *(this + 2);
  if (v6 == v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0;
    do
    {
      v9 = *v6++;
      v8 ^= sirinluexternalnlu_router::RequestSummary::hash_value(v9);
    }

    while (v6 != v7);
  }

  v10 = *(this + 7);
  if (v10)
  {
    v11 = std::__string_hash<char>::operator()[abi:ne200100](v10);
  }

  else
  {
    v11 = 0;
  }

  v12 = *(this + 8);
  if (v12)
  {
    v13 = std::__string_hash<char>::operator()[abi:ne200100](v12);
  }

  else
  {
    v13 = 0;
  }

  v14 = *(this + 5);
  if (v14)
  {
    v15 = sirinluexternalnlu_router::NLRouterTurnProbingResult::hash_value(v14);
  }

  else
  {
    v15 = 0;
  }

  v16 = *(this + 6);
  if (v16)
  {
    v16 = sirinluexternalnlu_router::QueryDecorationOutput::hash_value(v16);
  }

  return v5 ^ v3 ^ v11 ^ v13 ^ v15 ^ v16 ^ v8;
}

uint64_t sirinluexternalnlu_router::NLRouterServiceRequest::makeTurnContext(uint64_t this)
{
  if (!*(this + 72))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternalnlu_router::NLRouterServiceRequest::makeProbingResult(uint64_t this)
{
  if (!*(this + 40))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternalnlu_router::NLRouterServiceRequest::makeQueryDecorationOutput(uint64_t this)
{
  if (!*(this + 48))
  {
    operator new();
  }

  return this;
}

uint64_t SIRINLUEXTERNALNLU_ROUTERExplicitReadFrom(uint64_t a1, void *a2)
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
        v22 = 0;
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
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 12) |= 1u;
        while (1)
        {
          v23 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23 & 0x7F) << v13;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_32;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_32:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRINLUEXTERNALNLU_ROUTERImplicitReadFrom(uint64_t a1, void *a2)
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

uint64_t SIRINLUEXTERNALNLU_ROUTERAjaxQueryReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v17) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
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
        v13 = objc_alloc_init(SIRINLUEXTERNALNLU_ROUTERExplicit);
        objc_storeStrong((a1 + 8), v13);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !SIRINLUEXTERNALNLU_ROUTERExplicitReadFrom(v13, a2))
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
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(SIRINLUEXTERNALNLU_ROUTERImplicit);
    objc_storeStrong((a1 + 16), v13);
    v17 = 0;
    v18 = 0;
    v14 = PBReaderPlaceMark();
    if (!v14 || !SIRINLUEXTERNALNLU_ROUTERImplicitReadFrom(v14, a2))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}