void sirinluexternalsubword_embedding::SubwordEmbeddingSetup::~SubwordEmbeddingSetup(sirinluexternalsubword_embedding::SubwordEmbeddingSetup *this)
{
  sirinluexternalsubword_embedding::SubwordEmbeddingSetup::~SubwordEmbeddingSetup(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4876F80;
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

void *sirinluexternalsubword_embedding::SubwordEmbeddingSetup::SubwordEmbeddingSetup(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4876F80;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4876F80;
  return this;
}

void *sirinluexternalsubword_embedding::SubwordEmbeddingSetup::SubwordEmbeddingSetup(void *this, const sirinluexternalsubword_embedding::SubwordEmbeddingSetup *a2)
{
  *this = &unk_1F4876F80;
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

uint64_t sirinluexternalsubword_embedding::SubwordEmbeddingSetup::operator=(uint64_t a1, const sirinluexternalsubword_embedding::SubwordEmbeddingSetup *a2)
{
  if (a1 != a2)
  {
    sirinluexternalsubword_embedding::SubwordEmbeddingSetup::SubwordEmbeddingSetup(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    sirinluexternalsubword_embedding::SubwordEmbeddingSetup::~SubwordEmbeddingSetup(&v5);
  }

  return a1;
}

uint64_t sirinluexternalsubword_embedding::swap(uint64_t this, sirinluexternalsubword_embedding::SubwordEmbeddingSetup *a2, sirinluexternalsubword_embedding::SubwordEmbeddingSetup *a3)
{
  v3 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v4;
  return this;
}

void *sirinluexternalsubword_embedding::SubwordEmbeddingSetup::SubwordEmbeddingSetup(void *a1, uint64_t a2)
{
  a1[1] = 0;
  v4 = a1 + 1;
  *a1 = &unk_1F4876F80;
  a1[2] = 0;
  v5 = *(a2 + 16);
  *(a2 + 16) = 0;
  v6 = a1[2];
  a1[2] = v5;
  if (v6)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v6);
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

uint64_t sirinluexternalsubword_embedding::SubwordEmbeddingSetup::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluexternalsubword_embedding::SubwordEmbeddingSetup::SubwordEmbeddingSetup(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    sirinluexternalsubword_embedding::SubwordEmbeddingSetup::~SubwordEmbeddingSetup(&v5);
  }

  return a1;
}

BOOL sirinluexternalsubword_embedding::SubwordEmbeddingSetup::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
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

  v10 = v6 >= 0 ? *(a1 + 16) : *v4;
  v11 = v9 >= 0 ? *(a2 + 16) : *v5;
  if (memcmp(v10, v11, v7))
  {
    return 0;
  }

LABEL_20:
  v13 = *(a1 + 8);
  v14 = *(a2 + 8);
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
        v19 = v15 >= 0 ? *(a1 + 8) : *v13;
        v20 = v18 >= 0 ? *(a2 + 8) : *v14;
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

unint64_t sirinluexternalsubword_embedding::SubwordEmbeddingSetup::hash_value(sirinluexternalsubword_embedding::SubwordEmbeddingSetup *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = std::__string_hash<char>::operator()[abi:ne200100](v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 1);
  if (v4)
  {
    v4 = std::__string_hash<char>::operator()[abi:ne200100](v4);
  }

  return v4 ^ v3;
}

uint64_t SIRINLUEXTERNALRewrittenUtteranceReadFrom(uint64_t a1, void *a2)
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
        break;
      }

      if ((v12 >> 3) == 2)
      {
        *(a1 + 24) |= 1u;
        v19[0] = 0;
        v14 = [a2 position] + 8;
        if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
        {
          v16 = [a2 data];
          [v16 getBytes:v19 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v19[0];
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(SIRICOMMONStringValue);
        objc_storeStrong((a1 + 16), v13);
        v19[0] = 0;
        v19[1] = 0;
        if (!PBReaderPlaceMark() || !SIRICOMMONStringValueReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sirinluinternaloverrides::TurnInputAndPreprocessing::formatText(sirinluinternaloverrides::TurnInputAndPreprocessing *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, a2, "matching_spans");
  }

  v8 = *(this + 4);
  if (v8)
  {
    (*(*v8 + 32))(v8, a2, "token_chain");
  }

  v9 = *(this + 5);
  if (v9)
  {
    (*(*v9 + 32))(v9, a2, "turn_input");
  }

  if (*(this + 6))
  {
    PB::TextFormatter::format();
  }

  return MEMORY[0x1EEE30A90](a2);
}

void *sirinluinternaloverrides::TurnInputAndPreprocessing::writeTo(void *this, PB::Writer *a2)
{
  v3 = this;
  if (this[6])
  {
    this = PB::Writer::write();
  }

  v4 = v3[4];
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

  v8 = v3[5];
  if (v8)
  {

    return PB::Writer::writeSubmessage(a2, v8);
  }

  return this;
}

uint64_t sirinluinternaloverrides::TurnInputAndPreprocessing::readFrom(sirinluinternaloverrides::TurnInputAndPreprocessing *this, PB::Reader *a2)
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
          PB::PtrVector<sirinluinternal::MatchingSpan>::emplace_back<>();
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

void sirinluinternaloverrides::TurnInputAndPreprocessing::~TurnInputAndPreprocessing(sirinluinternaloverrides::TurnInputAndPreprocessing *this)
{
  sirinluinternaloverrides::TurnInputAndPreprocessing::~TurnInputAndPreprocessing(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4876FD0;
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v2);
  }

  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 4);
  *(this + 4) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = (this + 8);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v5);

  PB::Base::~Base(this);
}

double sirinluinternaloverrides::TurnInputAndPreprocessing::TurnInputAndPreprocessing(sirinluinternaloverrides::TurnInputAndPreprocessing *this)
{
  *this = &unk_1F4876FD0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

{
  *this = &unk_1F4876FD0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

uint64_t sirinluinternaloverrides::TurnInputAndPreprocessing::TurnInputAndPreprocessing(uint64_t this, const sirinluinternaloverrides::TurnInputAndPreprocessing *a2)
{
  *this = &unk_1F4876FD0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  if (*(a2 + 6))
  {
    operator new();
  }

  if (*(a2 + 4))
  {
    operator new();
  }

  v2 = *(a2 + 1);
  if (v2 != *(a2 + 2))
  {
    v3 = *v2;
    PB::PtrVector<sirinluinternal::MatchingSpan>::emplace_back<sirinluinternal::MatchingSpan const&>();
  }

  if (*(a2 + 5))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternaloverrides::TurnInputAndPreprocessing::operator=(uint64_t a1, const sirinluinternaloverrides::TurnInputAndPreprocessing *a2)
{
  if (a1 != a2)
  {
    sirinluinternaloverrides::TurnInputAndPreprocessing::TurnInputAndPreprocessing(v8, a2);
    v3 = v10;
    v4 = *(a1 + 8);
    *(a1 + 8) = v9;
    v5 = *(a1 + 24);
    *(a1 + 24) = v3;
    v9 = v4;
    v10 = v5;
    v6 = *(a1 + 40);
    *(a1 + 40) = v11;
    v11 = v6;
    sirinluinternaloverrides::TurnInputAndPreprocessing::~TurnInputAndPreprocessing(v8);
  }

  return a1;
}

void *sirinluinternaloverrides::swap(void *this, sirinluinternaloverrides::TurnInputAndPreprocessing *a2, sirinluinternaloverrides::TurnInputAndPreprocessing *a3)
{
  v3 = this[6];
  this[6] = *(a2 + 6);
  *(a2 + 6) = v3;
  v4 = this[4];
  this[4] = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = this[1];
  this[1] = *(a2 + 1);
  *(a2 + 1) = v5;
  v6 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v6;
  v7 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v7;
  v8 = this[5];
  this[5] = *(a2 + 5);
  *(a2 + 5) = v8;
  return this;
}

uint64_t sirinluinternaloverrides::TurnInputAndPreprocessing::TurnInputAndPreprocessing(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4876FD0;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  v5 = *(a2 + 48);
  *(a2 + 48) = 0;
  v6 = *(a1 + 48);
  *(a1 + 48) = v5;
  if (v6)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v6);
  }

  v7 = *(a2 + 32);
  *(a2 + 32) = 0;
  v8 = *(a1 + 32);
  *(a1 + 32) = v7;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__vdeallocate(v4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v9 = *(a2 + 40);
  *(a2 + 40) = 0;
  v10 = *(a1 + 40);
  *(a1 + 40) = v9;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  return a1;
}

uint64_t sirinluinternaloverrides::TurnInputAndPreprocessing::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluinternaloverrides::TurnInputAndPreprocessing::TurnInputAndPreprocessing(v8, a2);
    v3 = v10;
    v4 = *(a1 + 8);
    *(a1 + 8) = v9;
    v5 = *(a1 + 24);
    *(a1 + 24) = v3;
    v9 = v4;
    v10 = v5;
    v6 = *(a1 + 40);
    *(a1 + 40) = v11;
    v11 = v6;
    sirinluinternaloverrides::TurnInputAndPreprocessing::~TurnInputAndPreprocessing(v8);
  }

  return a1;
}

BOOL sirinluinternaloverrides::TurnInputAndPreprocessing::operator==(uint64_t a1, uint64_t a2)
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

  v13 = *(a1 + 32);
  v14 = *(a2 + 32);
  if (!v13)
  {
    if (!v14)
    {
      goto LABEL_25;
    }

    return 0;
  }

  if (!v14 || !sirinluinternal::TokenChain::operator==(v13, v14))
  {
    return 0;
  }

LABEL_25:
  result = PB::PtrVector<sirinluinternal::MatchingSpan>::operator==((a1 + 8), *(a2 + 8), *(a2 + 16));
  if (result)
  {
    v15 = *(a1 + 40);
    v16 = *(a2 + 40);
    result = (v15 | v16) == 0;
    if (v15)
    {
      if (v16)
      {
        v17 = *(a1 + 40);

        return sirinluexternal::TurnInput::operator==(v17, v16);
      }
    }
  }

  return result;
}

unint64_t sirinluinternaloverrides::TurnInputAndPreprocessing::hash_value(sirinluinternaloverrides::TurnInputAndPreprocessing *this)
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
      v8 ^= sirinluinternal::MatchingSpan::hash_value(v9);
    }

    while (v6 != v7);
  }

  v10 = *(this + 5);
  if (v10)
  {
    v10 = sirinluexternal::TurnInput::hash_value(v10);
  }

  return v5 ^ v3 ^ v10 ^ v8;
}

uint64_t sirinluinternaloverrides::TurnInputAndPreprocessing::makeTokenChain(uint64_t this)
{
  if (!*(this + 32))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternaloverrides::TurnInputAndPreprocessing::makeTurnInput(uint64_t this)
{
  if (!*(this + 40))
  {
    operator new();
  }

  return this;
}

uint64_t SIRINLUEXTERNALEntityCandidateReadFrom(id *a1, void *a2)
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
      if ((v12 >> 3) <= 3)
      {
        switch(v13)
        {
          case 1:
            v14 = objc_alloc_init(SIRINLUEXTERNALUsoGraph);
            objc_storeStrong(a1 + 3, v14);
            v18 = 0;
            v19 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUEXTERNALUsoGraphReadFrom(&v14->super.super.isa, a2))
            {
LABEL_50:

              return 0;
            }

            goto LABEL_47;
          case 2:
            v14 = objc_alloc_init(SIRICOMMONDoubleValue);
            objc_storeStrong(a1 + 7, v14);
            v18 = 0;
            v19 = 0;
            if (!PBReaderPlaceMark() || !SIRICOMMONDoubleValueReadFrom(v14, a2))
            {
              goto LABEL_50;
            }

            goto LABEL_47;
          case 3:
            v14 = objc_alloc_init(SIRICOMMONStringValue);
            v15 = 4;
            goto LABEL_39;
        }
      }

      else if (v13 > 5)
      {
        if (v13 == 6)
        {
          v14 = objc_alloc_init(SIRINLUEXTERNALRRAnnotation);
          [a1 addAnnotations:v14];
          v18 = 0;
          v19 = 0;
          if (!PBReaderPlaceMark() || !SIRINLUEXTERNALRRAnnotationReadFrom(v14, a2))
          {
            goto LABEL_50;
          }

          goto LABEL_47;
        }

        if (v13 == 7)
        {
          v14 = objc_alloc_init(SIRINLUEXTERNALRRMetadata);
          objc_storeStrong(a1 + 6, v14);
          v18 = 0;
          v19 = 0;
          if (!PBReaderPlaceMark() || !SIRINLUEXTERNALRRMetadataReadFrom(v14, a2))
          {
            goto LABEL_50;
          }

          goto LABEL_47;
        }
      }

      else
      {
        if (v13 == 4)
        {
          v14 = objc_alloc_init(SIRICOMMONStringValue);
          v15 = 2;
LABEL_39:
          objc_storeStrong(&a1[v15], v14);
          v18 = 0;
          v19 = 0;
          if (!PBReaderPlaceMark() || !SIRICOMMONStringValueReadFrom(v14, a2))
          {
            goto LABEL_50;
          }

LABEL_47:
          PBReaderRecallMark();

          goto LABEL_48;
        }

        if (v13 == 5)
        {
          v14 = objc_alloc_init(SIRINLUEXTERNALRRGroupIdentifier);
          objc_storeStrong(a1 + 5, v14);
          v18 = 0;
          v19 = 0;
          if (!PBReaderPlaceMark() || !SIRINLUEXTERNALRRGroupIdentifierReadFrom(v14, a2))
          {
            goto LABEL_50;
          }

          goto LABEL_47;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_48:
      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRINLUEXTERNALNLU_ROUTERSpanMatchedEntityReadFrom(id *a1, void *a2)
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
        v13 = objc_alloc_init(SIRINLUEXTERNALNLU_ROUTERTypedValue);
        objc_storeStrong(a1 + 2, v13);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !SIRINLUEXTERNALNLU_ROUTERTypedValueReadFrom(v13, a2))
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

    v13 = objc_alloc_init(SIRINLUEXTERNALNLU_ROUTEREntityMatch);
    [a1 addMatchMetadata:v13];
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !SIRINLUEXTERNALNLU_ROUTEREntityMatchReadFrom(v13, a2))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRINLUEXTERNALNLU_ROUTERTypeIdentifierReadFrom(uint64_t a1, void *a2)
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

      if ((v12 >> 3) == 2)
      {
        v13 = objc_alloc_init(SIRINLUEXTERNALNLU_ROUTERCustom);
        objc_storeStrong((a1 + 8), v13);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !SIRINLUEXTERNALNLU_ROUTERCustomReadFrom(v13, a2))
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

uint64_t sirinluinternal::OverrideValue::formatText(sirinluinternal::OverrideValue *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "ccqr_override_template");
  }

  v6 = *(this + 2);
  if (v6)
  {
    (*(*v6 + 32))(v6, a2, "lvc_override_value");
  }

  v7 = *(this + 3);
  if (v7)
  {
    (*(*v7 + 32))(v7, a2, "plan_override_value");
  }

  v8 = *(this + 4);
  if (v8)
  {
    (*(*v8 + 32))(v8, a2, "user_parse");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluinternal::OverrideValue::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  v5 = v3[4];
  if (v5)
  {
    this = PB::Writer::writeSubmessage(a2, v5);
  }

  v6 = v3[2];
  if (v6)
  {
    this = PB::Writer::writeSubmessage(a2, v6);
  }

  v7 = v3[3];
  if (v7)
  {

    return PB::Writer::writeSubmessage(a2, v7);
  }

  return this;
}

uint64_t sirinluinternal::OverrideValue::readFrom(sirinluinternal::OverrideValue *this, PB::Reader *a2)
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

void sirinluinternal::OverrideValue::~OverrideValue(sirinluinternal::OverrideValue *this)
{
  sirinluinternal::OverrideValue::~OverrideValue(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4877020;
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

double sirinluinternal::OverrideValue::OverrideValue(sirinluinternal::OverrideValue *this)
{
  *this = &unk_1F4877020;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = &unk_1F4877020;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

uint64_t sirinluinternal::OverrideValue::OverrideValue(uint64_t this, const sirinluinternal::OverrideValue *a2)
{
  *this = &unk_1F4877020;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  if (*(a2 + 1))
  {
    operator new();
  }

  if (*(a2 + 4))
  {
    operator new();
  }

  if (*(a2 + 2))
  {
    operator new();
  }

  if (*(a2 + 3))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternal::OverrideValue::operator=(uint64_t a1, const sirinluinternal::OverrideValue *a2)
{
  if (a1 != a2)
  {
    sirinluinternal::OverrideValue::OverrideValue(v7, a2);
    v3 = v9;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v5 = *(a1 + 24);
    *(a1 + 24) = v3;
    v8 = v4;
    v9 = v5;
    sirinluinternal::OverrideValue::~OverrideValue(v7);
  }

  return a1;
}

void *sirinluinternal::swap(void *this, sirinluinternal::OverrideValue *a2, sirinluinternal::OverrideValue *a3)
{
  v3 = this[1];
  this[1] = *(a2 + 1);
  *(a2 + 1) = v3;
  v4 = this[4];
  this[4] = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v5;
  v6 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v6;
  return this;
}

uint64_t sirinluinternal::OverrideValue::OverrideValue(uint64_t a1, void *a2)
{
  *a1 = &unk_1F4877020;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  v4 = a2[1];
  a2[1] = 0;
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = a2[4];
  a2[4] = 0;
  v7 = *(a1 + 32);
  *(a1 + 32) = v6;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = a2[2];
  a2[2] = 0;
  v9 = *(a1 + 16);
  *(a1 + 16) = v8;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = a2[3];
  a2[3] = 0;
  v11 = *(a1 + 24);
  *(a1 + 24) = v10;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  return a1;
}

uint64_t sirinluinternal::OverrideValue::operator=(uint64_t a1, void *a2)
{
  if (a1 != a2)
  {
    sirinluinternal::OverrideValue::OverrideValue(v7, a2);
    v3 = v9;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v5 = *(a1 + 24);
    *(a1 + 24) = v3;
    v8 = v4;
    v9 = v5;
    sirinluinternal::OverrideValue::~OverrideValue(v7);
  }

  return a1;
}

BOOL sirinluinternal::OverrideValue::operator==(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5 || !sirinluinternal::CCQROverrideTemplate::operator==(v4, v5))
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
    if (!v7 || !sirinluexternal::UserParse::operator==(v6, v7))
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v8 = a1[2];
  v9 = a2[2];
  if (!v8)
  {
    if (!v9)
    {
      goto LABEL_14;
    }

    return 0;
  }

  if (!v9 || !sirinluinternal::LVCOverrideValue::operator==(v8, v9))
  {
    return 0;
  }

LABEL_14:
  v10 = a1[3];
  v11 = a2[3];
  result = (v10 | v11) == 0;
  if (v10 && v11)
  {
    v13 = a1[3];

    return sirinluinternal::PlanOverrideValue::operator==(v13, v11);
  }

  return result;
}

unint64_t sirinluinternal::OverrideValue::hash_value(sirinluinternal::OverrideValue *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    v3 = sirinluinternal::CCQROverrideTemplate::hash_value(v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 4);
  if (v4)
  {
    v5 = sirinluexternal::UserParse::hash_value(v4);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(this + 2);
  if (v6 && (v7 = *(v6 + 8)) != 0)
  {
    v8 = sirinluexternal::MultilingualVariant::hash_value(v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(this + 3);
  if (v9)
  {
    v10 = *(v9 + 8);
    if (v10)
    {
      v10 = std::__string_hash<char>::operator()[abi:ne200100](v10);
    }
  }

  else
  {
    v10 = 0;
  }

  return v5 ^ v3 ^ v8 ^ v10;
}

uint64_t sirinluinternal::OverrideValue::makeCcqrOverrideTemplate(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternal::OverrideValue::makeUserParse(uint64_t this)
{
  if (!*(this + 32))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternal::OverrideValue::makeLvcOverrideValue(uint64_t this)
{
  if (!*(this + 16))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternal::OverrideValue::makePlanOverrideValue(uint64_t this)
{
  if (!*(this + 24))
  {
    operator new();
  }

  return this;
}

uint64_t SIRINLUEXTERNALUsoGraphReadFrom(id *a1, void *a2)
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
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            v14 = objc_alloc_init(SIRINLUEXTERNALUsoEntityIdentifier);
            [a1 addIdentifiers:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUEXTERNALUsoEntityIdentifierReadFrom(v14, a2))
            {
LABEL_46:

              return 0;
            }

            goto LABEL_43;
          case 5:
            v14 = objc_alloc_init(SIRINLUEXTERNALUtteranceAlignment);
            [a1 addAlignments:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUEXTERNALUtteranceAlignmentReadFrom(v14, a2))
            {
              goto LABEL_46;
            }

            goto LABEL_43;
          case 6:
            v14 = objc_alloc_init(SIRINLUEXTERNALUsoEntitySpan);
            [a1 addSpans:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUEXTERNALUsoEntitySpanReadFrom(v14, a2))
            {
              goto LABEL_46;
            }

            goto LABEL_43;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v14 = objc_alloc_init(SIRINLUEXTERNALSemVer);
            objc_storeStrong(a1 + 6, v14);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUEXTERNALSemVerReadFrom(v14, a2))
            {
              goto LABEL_46;
            }

            goto LABEL_43;
          case 2:
            v14 = objc_alloc_init(SIRINLUEXTERNALUsoNode);
            [a1 addNodes:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUEXTERNALUsoNodeReadFrom(v14, a2))
            {
              goto LABEL_46;
            }

            goto LABEL_43;
          case 3:
            v14 = objc_alloc_init(SIRINLUEXTERNALUsoEdge);
            [a1 addEdges:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUEXTERNALUsoEdgeReadFrom(v14, a2))
            {
              goto LABEL_46;
            }

LABEL_43:
            PBReaderRecallMark();

            goto LABEL_44;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_44:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sirinluexternal::SpanProperty::formatText(sirinluexternal::SpanProperty *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 1))
  {
    PB::TextFormatter::format();
  }

  v5 = *(this + 2);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "value_float");
  }

  v6 = *(this + 3);
  if (v6)
  {
    (*(*v6 + 32))(v6, a2, "value_int");
  }

  v7 = *(this + 4);
  if (v7)
  {
    (*(*v7 + 32))(v7, a2, "value_string");
  }

  return MEMORY[0x1EEE30A90](a2);
}

void *sirinluexternal::SpanProperty::writeTo(void *this, PB::Writer *a2)
{
  v3 = this;
  if (this[1])
  {
    this = PB::Writer::write();
  }

  v4 = v3[4];
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  v5 = v3[3];
  if (v5)
  {
    this = PB::Writer::writeSubmessage(a2, v5);
  }

  v6 = v3[2];
  if (v6)
  {

    return PB::Writer::writeSubmessage(a2, v6);
  }

  return this;
}

uint64_t sirinluexternal::SpanProperty::readFrom(sirinluexternal::SpanProperty *this, PB::Reader *a2)
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

void sirinluexternal::SpanProperty::~SpanProperty(sirinluexternal::SpanProperty *this)
{
  sirinluexternal::SpanProperty::~SpanProperty(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4877070;
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
    std::default_delete<std::string>::operator()[abi:ne200100](v5);
  }

  PB::Base::~Base(this);
}

double sirinluexternal::SpanProperty::SpanProperty(sirinluexternal::SpanProperty *this)
{
  *this = &unk_1F4877070;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = &unk_1F4877070;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

uint64_t sirinluexternal::SpanProperty::SpanProperty(uint64_t this, const sirinluexternal::SpanProperty *a2)
{
  *this = &unk_1F4877070;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  if (*(a2 + 1))
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

  if (*(a2 + 2))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::SpanProperty::operator=(uint64_t a1, const sirinluexternal::SpanProperty *a2)
{
  if (a1 != a2)
  {
    sirinluexternal::SpanProperty::SpanProperty(v7, a2);
    v3 = v8;
    v4 = *(a1 + 24);
    *(a1 + 24) = v9;
    v5 = *(a1 + 8);
    *(a1 + 8) = v3;
    v8 = v5;
    v9 = v4;
    sirinluexternal::SpanProperty::~SpanProperty(v7);
  }

  return a1;
}

void *sirinluexternal::swap(void *this, sirinluexternal::SpanProperty *a2, sirinluexternal::SpanProperty *a3)
{
  v3 = this[1];
  this[1] = *(a2 + 1);
  *(a2 + 1) = v3;
  v4 = this[4];
  this[4] = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v5;
  v6 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v6;
  return this;
}

uint64_t sirinluexternal::SpanProperty::SpanProperty(uint64_t a1, void *a2)
{
  *a1 = &unk_1F4877070;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  v4 = a2[1];
  a2[1] = 0;
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  if (v5)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v5);
  }

  v6 = a2[4];
  a2[4] = 0;
  v7 = *(a1 + 32);
  *(a1 + 32) = v6;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = a2[3];
  a2[3] = 0;
  v9 = *(a1 + 24);
  *(a1 + 24) = v8;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = a2[2];
  a2[2] = 0;
  v11 = *(a1 + 16);
  *(a1 + 16) = v10;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  return a1;
}

uint64_t sirinluexternal::SpanProperty::operator=(uint64_t a1, void *a2)
{
  if (a1 != a2)
  {
    sirinluexternal::SpanProperty::SpanProperty(v7, a2);
    v3 = v8;
    v4 = *(a1 + 24);
    *(a1 + 24) = v9;
    v5 = *(a1 + 8);
    *(a1 + 8) = v3;
    v8 = v5;
    v9 = v4;
    sirinluexternal::SpanProperty::~SpanProperty(v7);
  }

  return a1;
}

BOOL sirinluexternal::SpanProperty::operator==(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
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

    v10 = v6 >= 0 ? a1[1] : *v4;
    v11 = v9 >= 0 ? a2[1] : *v5;
    if (memcmp(v10, v11, v7))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v13 = a1[4];
  v14 = a2[4];
  if (v13)
  {
    if (!v14 || !siricommon::StringValue::operator==(v13, v14))
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  v15 = a1[3];
  v16 = a2[3];
  if (!v15)
  {
    if (!v16)
    {
      goto LABEL_34;
    }

    return 0;
  }

  if (!v16)
  {
    return 0;
  }

  v17 = *(v16 + 12);
  if ((*(v15 + 12) & 1) == 0)
  {
    if ((*(v16 + 12) & 1) == 0)
    {
      goto LABEL_34;
    }

    return 0;
  }

  if ((*(v16 + 12) & 1) == 0 || *(v15 + 8) != *(v16 + 8))
  {
    return 0;
  }

LABEL_34:
  v18 = a1[2];
  v19 = a2[2];
  result = (v18 | v19) == 0;
  if (v18 && v19)
  {
    v20 = *(v19 + 12);
    if (*(v18 + 12))
    {
      if ((*(v19 + 12) & 1) != 0 && *(v18 + 8) == *(v19 + 8))
      {
        return 1;
      }
    }

    else if ((*(v19 + 12) & 1) == 0)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

unint64_t sirinluexternal::SpanProperty::hash_value(sirinluexternal::SpanProperty *this)
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

  v4 = *(this + 4);
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      v5 = std::__string_hash<char>::operator()[abi:ne200100](v5);
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = *(this + 3);
  if (v6)
  {
    if (*(v6 + 12))
    {
      v6 = *(v6 + 8);
    }

    else
    {
      v6 = 0;
    }
  }

  v7 = *(this + 2);
  if (v7)
  {
    if (*(v7 + 12))
    {
      v8 = *(v7 + 8);
      v7 = LODWORD(v8);
      if (v8 == 0.0)
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v5 ^ v3 ^ v6 ^ v7;
}

uint64_t sirinluexternal::SpanProperty::makeValueString(uint64_t this)
{
  if (!*(this + 32))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::SpanProperty::makeValueInt(uint64_t this)
{
  if (!*(this + 24))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::SpanProperty::makeValueFloat(uint64_t this)
{
  if (!*(this + 16))
  {
    operator new();
  }

  return this;
}

uint64_t SIRINLUINTERNALTokenReadFrom(_BYTE *a1, void *a2)
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
        v60 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v60 & 0x7F) << v5;
        if ((v60 & 0x80) == 0)
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
      if ((v12 >> 3) > 5)
      {
        if (v13 <= 7)
        {
          if (v13 != 6)
          {
            if (v13 != 7)
            {
LABEL_92:
              result = PBReaderSkipValueWithTag();
              if (!result)
              {
                return result;
              }

              goto LABEL_116;
            }

            v29 = 0;
            v30 = 0;
            v31 = 0;
            a1[68] |= 8u;
            while (1)
            {
              v62 = 0;
              v32 = [a2 position] + 1;
              if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
              {
                v34 = [a2 data];
                [v34 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v31 |= (v62 & 0x7F) << v29;
              if ((v62 & 0x80) == 0)
              {
                break;
              }

              v29 += 7;
              v11 = v30++ >= 9;
              if (v11)
              {
                v28 = 0;
                goto LABEL_101;
              }
            }

            if ([a2 hasError])
            {
              v28 = 0;
            }

            else
            {
              v28 = v31;
            }

LABEL_101:
            v57 = 48;
            goto LABEL_110;
          }

          v21 = PBReaderReadString();
          if (v21)
          {
            [a1 addCleanValues:v21];
          }
        }

        else
        {
          if (v13 == 8)
          {
            v43 = 0;
            v44 = 0;
            v45 = 0;
            a1[68] |= 4u;
            while (1)
            {
              v61 = 0;
              v46 = [a2 position] + 1;
              if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
              {
                v48 = [a2 data];
                [v48 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v45 |= (v61 & 0x7F) << v43;
              if ((v61 & 0x80) == 0)
              {
                break;
              }

              v43 += 7;
              v11 = v44++ >= 9;
              if (v11)
              {
                v28 = 0;
                goto LABEL_109;
              }
            }

            if ([a2 hasError])
            {
              v28 = 0;
            }

            else
            {
              v28 = v45;
            }

LABEL_109:
            v57 = 36;
            goto LABEL_110;
          }

          if (v13 == 9)
          {
            v35 = PBReaderReadString();
            v36 = 16;
LABEL_91:
            v55 = *&a1[v36];
            *&a1[v36] = v35;

            goto LABEL_116;
          }

          if (v13 != 10)
          {
            goto LABEL_92;
          }

          v21 = PBReaderReadString();
          if (v21)
          {
            [a1 addNormalizedValues:v21];
          }
        }
      }

      else
      {
        if (v13 <= 2)
        {
          if (v13 != 1)
          {
            if (v13 != 2)
            {
              goto LABEL_92;
            }

            v22 = 0;
            v23 = 0;
            v24 = 0;
            a1[68] |= 1u;
            while (1)
            {
              v64 = 0;
              v25 = [a2 position] + 1;
              if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
              {
                v27 = [a2 data];
                [v27 getBytes:&v64 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v24 |= (v64 & 0x7F) << v22;
              if ((v64 & 0x80) == 0)
              {
                break;
              }

              v22 += 7;
              v11 = v23++ >= 9;
              if (v11)
              {
                v28 = 0;
                goto LABEL_97;
              }
            }

            if ([a2 hasError])
            {
              v28 = 0;
            }

            else
            {
              v28 = v24;
            }

LABEL_97:
            v57 = 8;
            goto LABEL_110;
          }

          v35 = PBReaderReadString();
          v36 = 56;
          goto LABEL_91;
        }

        switch(v13)
        {
          case 3:
            v37 = 0;
            v38 = 0;
            v39 = 0;
            a1[68] |= 2u;
            while (1)
            {
              v63 = 0;
              v40 = [a2 position] + 1;
              if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
              {
                v42 = [a2 data];
                [v42 getBytes:&v63 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v39 |= (v63 & 0x7F) << v37;
              if ((v63 & 0x80) == 0)
              {
                break;
              }

              v37 += 7;
              v11 = v38++ >= 9;
              if (v11)
              {
                v28 = 0;
                goto LABEL_105;
              }
            }

            if ([a2 hasError])
            {
              v28 = 0;
            }

            else
            {
              v28 = v39;
            }

LABEL_105:
            v57 = 32;
LABEL_110:
            *&a1[v57] = v28;
            goto LABEL_116;
          case 4:
            v49 = 0;
            v50 = 0;
            v51 = 0;
            a1[68] |= 0x10u;
            while (1)
            {
              v66 = 0;
              v52 = [a2 position] + 1;
              if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
              {
                v54 = [a2 data];
                [v54 getBytes:&v66 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v51 |= (v66 & 0x7F) << v49;
              if ((v66 & 0x80) == 0)
              {
                break;
              }

              v49 += 7;
              v11 = v50++ >= 9;
              if (v11)
              {
                LOBYTE(v20) = 0;
                goto LABEL_114;
              }
            }

            v20 = (v51 != 0) & ~[a2 hasError];
LABEL_114:
            v58 = 64;
            break;
          case 5:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            a1[68] |= 0x20u;
            while (1)
            {
              v65 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v65 & 0x7F) << v14;
              if ((v65 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                LOBYTE(v20) = 0;
                goto LABEL_112;
              }
            }

            v20 = (v16 != 0) & ~[a2 hasError];
LABEL_112:
            v58 = 65;
            break;
          default:
            goto LABEL_92;
        }

        a1[v58] = v20;
      }

LABEL_116:
      v59 = [a2 position];
    }

    while (v59 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sirinluexternalcdm_planner::CdmPlannerResponse::formatText(sirinluexternalcdm_planner::CdmPlannerResponse *this, PB::TextFormatter *a2, const char *a3)
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

  v5 = *(this + 3);
  v6 = *(this + 4);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, a2, "transcript_events");
  }

  return MEMORY[0x1EEE30A90](a2);
}

void *sirinluexternalcdm_planner::CdmPlannerResponse::writeTo(void *this, PB::Writer *a2)
{
  v3 = this;
  if (this[2])
  {
    this = PB::Writer::write();
  }

  if (v3[1])
  {
    this = PB::Writer::write();
  }

  v5 = v3[3];
  v4 = v3[4];
  while (v5 != v4)
  {
    v6 = *v5++;
    this = PB::Writer::writeSubmessage(a2, v6);
  }

  return this;
}

uint64_t sirinluexternalcdm_planner::CdmPlannerResponse::readFrom(sirinluexternalcdm_planner::CdmPlannerResponse *this, PB::Reader *a2)
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

LABEL_21:
      if ((v9 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_29;
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
        goto LABEL_21;
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

LABEL_29:
  v22 = v4 ^ 1;
  return v22 & 1;
}

void sirinluexternalcdm_planner::CdmPlannerResponse::~CdmPlannerResponse(sirinluexternalcdm_planner::CdmPlannerResponse *this)
{
  sirinluexternalcdm_planner::CdmPlannerResponse::~CdmPlannerResponse(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F48770C0;
  v2 = (this + 24);
  if (*(this + 3))
  {
    std::vector<std::unique_ptr<siricommon::StringValue>>::clear[abi:ne200100](this + 3);
    operator delete(*v2);
  }

  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v3);
  }

  std::unique_ptr<PB::Data>::reset[abi:ne200100](this + 1, 0);

  PB::Base::~Base(this);
}

double sirinluexternalcdm_planner::CdmPlannerResponse::CdmPlannerResponse(sirinluexternalcdm_planner::CdmPlannerResponse *this)
{
  *this = &unk_1F48770C0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

{
  *this = &unk_1F48770C0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

uint64_t sirinluexternalcdm_planner::CdmPlannerResponse::CdmPlannerResponse(uint64_t this, const sirinluexternalcdm_planner::CdmPlannerResponse *a2)
{
  *(this + 8) = 0u;
  *this = &unk_1F48770C0;
  *(this + 24) = 0u;
  *(this + 40) = 0;
  if (*(a2 + 2))
  {
    operator new();
  }

  if (*(a2 + 1))
  {
    operator new();
  }

  v2 = *(a2 + 3);
  if (v2 != *(a2 + 4))
  {
    v3 = *v2;
    operator new();
  }

  return this;
}

uint64_t sirinluexternalcdm_planner::CdmPlannerResponse::operator=(uint64_t a1, const sirinluexternalcdm_planner::CdmPlannerResponse *a2)
{
  if (a1 != a2)
  {
    sirinluexternalcdm_planner::CdmPlannerResponse::CdmPlannerResponse(&v7, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v9;
    v9 = v4;
    v5 = *(a1 + 40);
    *(a1 + 40) = v10;
    v10 = v5;
    sirinluexternalcdm_planner::CdmPlannerResponse::~CdmPlannerResponse(&v7);
  }

  return a1;
}

void *sirinluexternalcdm_planner::swap(void *this, sirinluexternalcdm_planner::CdmPlannerResponse *a2, sirinluexternalcdm_planner::CdmPlannerResponse *a3)
{
  v3 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v3;
  v4 = this[1];
  this[1] = *(a2 + 1);
  *(a2 + 1) = v4;
  v5 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v5;
  v6 = this[4];
  this[4] = *(a2 + 4);
  *(a2 + 4) = v6;
  v7 = this[5];
  this[5] = *(a2 + 5);
  *(a2 + 5) = v7;
  return this;
}

uint64_t sirinluexternalcdm_planner::CdmPlannerResponse::CdmPlannerResponse(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F48770C0;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  v5 = *(a2 + 16);
  *(a2 + 16) = 0;
  v6 = *(a1 + 16);
  *(a1 + 16) = v5;
  if (v6)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v6);
  }

  v7 = *(a2 + 8);
  *(a2 + 8) = 0;
  std::unique_ptr<PB::Data>::reset[abi:ne200100](v4, v7);
  v8 = (a1 + 24);
  if (*(a1 + 24))
  {
    std::vector<std::unique_ptr<siricommon::StringValue>>::clear[abi:ne200100]((a1 + 24));
    operator delete(*v8);
    *v8 = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
  }

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return a1;
}

uint64_t sirinluexternalcdm_planner::CdmPlannerResponse::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluexternalcdm_planner::CdmPlannerResponse::CdmPlannerResponse(&v7, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v9;
    v9 = v4;
    v5 = *(a1 + 40);
    *(a1 + 40) = v10;
    v10 = v5;
    sirinluexternalcdm_planner::CdmPlannerResponse::~CdmPlannerResponse(&v7);
  }

  return a1;
}

BOOL sirinluexternalcdm_planner::CdmPlannerResponse::operator==(void *a1, void *a2)
{
  v4 = a1[2];
  v5 = a2[2];
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

    v10 = v6 >= 0 ? a1[2] : *v4;
    v11 = v9 >= 0 ? a2[2] : *v5;
    if (memcmp(v10, v11, v7))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v13 = a2[1];
  if (!a1[1])
  {
    if (!v13)
    {
      goto LABEL_26;
    }

    return 0;
  }

  if (!v13 || (PB::Data::operator==() & 1) == 0 && a1[1] | a2[1])
  {
    return 0;
  }

LABEL_26:
  v15 = a1[3];
  v14 = a1[4];
  v17 = a2 + 3;
  v16 = a2[3];
  if (v14 - v15 != v17[1] - v16)
  {
    return 0;
  }

  if (v15 == v14)
  {
    return 1;
  }

  do
  {
    result = sirinluexternalcdm_planner::CDMTranscriptEvent::operator==(*v15, *v16);
    if (!result)
    {
      break;
    }

    v15 += 8;
    ++v16;
  }

  while (v15 != a1[4]);
  return result;
}

unint64_t sirinluexternalcdm_planner::CdmPlannerResponse::hash_value(sirinluexternalcdm_planner::CdmPlannerResponse *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = std::__string_hash<char>::operator()[abi:ne200100](v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 1);
  if (v4)
  {
    v5 = *v4;
    v6 = v4[1];
    v7 = PBHashBytes();
  }

  else
  {
    v7 = 0;
  }

  v9 = *(this + 3);
  v8 = *(this + 4);
  if (v9 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0;
    do
    {
      v11 = *v9++;
      v10 ^= sirinluexternalcdm_planner::CDMTranscriptEvent::hash_value(v11);
    }

    while (v9 != v8);
  }

  return v7 ^ v3 ^ v10;
}

uint64_t SIRINLUINTERNALSNLP_INTERMEDIATESNLPHandcraftedRulesReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v16 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v16 & 0x7F) << v6;
      if ((v16 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      if (v7++ >= 9)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v14 = PBReaderReadString();
      if (v14)
      {
        [a1 addRuleIds:v14];
      }
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRINLUEXTERNALNLU_ROUTERRequestSummaryReadFrom(void *a1, void *a2)
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
        v14 = a1[2];
        a1[2] = v13;
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

    v14 = objc_alloc_init(SIRINLUEXTERNALNLU_ROUTERTurnSummary);
    [a1 addTurnSummaries:v14];
    v17[0] = 0;
    v17[1] = 0;
    if (!PBReaderPlaceMark() || !SIRINLUEXTERNALNLU_ROUTERTurnSummaryReadFrom(v14, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRINLUINTERNALPlanOverrideValueReadFrom(uint64_t a1, void *a2)
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

uint64_t sirinluinternaloverrides::OverridesResponse::formatText(sirinluinternaloverrides::OverridesResponse *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, a2, "parses");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluinternaloverrides::OverridesResponse::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  for (i = *(this + 16); v2 != i; this = PB::Writer::writeSubmessage(a2, v5))
  {
    v5 = *v2++;
  }

  return this;
}

uint64_t sirinluinternaloverrides::OverridesResponse::readFrom(sirinluinternaloverrides::OverridesResponse *this, PB::Reader *a2)
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

void sirinluinternaloverrides::OverridesResponse::~OverridesResponse(sirinluinternaloverrides::OverridesResponse *this)
{
  *this = &unk_1F4877110;
  v2 = (this + 8);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v2);
  PB::Base::~Base(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4877110;
  v2 = (this + 8);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v2);

  PB::Base::~Base(this);
}

{
  *this = &unk_1F4877110;
  v2 = (this + 8);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v2);

  PB::Base::~Base(this);
}

void *sirinluinternaloverrides::OverridesResponse::OverridesResponse(void *this)
{
  *this = &unk_1F4877110;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_1F4877110;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

void *sirinluinternaloverrides::OverridesResponse::OverridesResponse(void *this, const sirinluinternaloverrides::OverridesResponse *a2)
{
  this[1] = 0;
  *this = &unk_1F4877110;
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

uint64_t sirinluinternaloverrides::OverridesResponse::operator=(uint64_t a1, const sirinluinternaloverrides::OverridesResponse *a2)
{
  if (a1 != a2)
  {
    sirinluinternaloverrides::OverridesResponse::OverridesResponse(&v6, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v4;
    v6 = &unk_1F4877110;
    v9 = &v7;
    std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v9);
    PB::Base::~Base(&v6);
  }

  return a1;
}

void *sirinluinternaloverrides::swap(void *this, sirinluinternaloverrides::OverridesResponse *a2, sirinluinternaloverrides::OverridesResponse *a3)
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

uint64_t sirinluinternaloverrides::OverridesResponse::OverridesResponse(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4877110;
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
  *a1 = &unk_1F4877110;
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

uint64_t sirinluinternaloverrides::OverridesResponse::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v9 = &unk_1F4877110;
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
    v9 = &unk_1F4877110;
    std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v12);
    PB::Base::~Base(&v9);
  }

  return a1;
}

uint64_t sirinluinternaloverrides::OverridesResponse::hash_value(sirinluinternaloverrides::OverridesResponse *this)
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

uint64_t SIRINLUINTERNALSubwordTokenChainReadFrom(void *a1, void *a2)
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

    v14 = objc_alloc_init(SIRINLUINTERNALSubwordToken);
    [a1 addSubwordTokens:v14];
    v17[0] = 0;
    v17[1] = 0;
    if (!PBReaderPlaceMark() || !SIRINLUINTERNALSubwordTokenReadFrom(v14, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRINLUINTERNALSubwordTokenReadFrom(uint64_t a1, void *a2)
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
        v32 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v32 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v32 & 0x7F) << v5;
        if ((v32 & 0x80) == 0)
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
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 24) |= 2u;
        while (1)
        {
          v33 = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v33 & 0x7F) << v23;
          if ((v33 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_48;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v25;
        }

LABEL_48:
        v30 = 12;
      }

      else
      {
        if (v13 != 2)
        {
          if (v13 == 1)
          {
            v14 = PBReaderReadString();
            v15 = *(a1 + 16);
            *(a1 + 16) = v14;
          }

          else
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }
          }

          goto LABEL_50;
        }

        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          v34 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v34 & 0x7F) << v16;
          if ((v34 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_44;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v18;
        }

LABEL_44:
        v30 = 8;
      }

      *(a1 + v30) = v22;
LABEL_50:
      v31 = [a2 position];
    }

    while (v31 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRINLUINTERNALLVCOverrideValueReadFrom(uint64_t a1, void *a2)
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
        v13 = objc_alloc_init(SIRINLUEXTERNALMultilingualVariant);
        objc_storeStrong((a1 + 8), v13);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !SIRINLUEXTERNALMultilingualVariantReadFrom(v13, a2))
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

void sub_1C8B1FF50(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_1C8B21250(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  std::unique_ptr<siri::ontology::UsoGraph>::~unique_ptr[abi:ne200100](&a19);
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  _Unwind_Resume(a1);
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54E8];
  v3 = *MEMORY[0x1E69E54E8];
  *a1 = *MEMORY[0x1E69E54E8];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

uint64_t SIRICOMMONFloatValueReadFrom(uint64_t a1, void *a2)
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

uint64_t SIRINLUINTERNALMENTION_DETECTORMentionDetectorResponseReadFrom(id *a1, void *a2)
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
        objc_storeStrong(a1 + 2, v13);
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

    v13 = objc_alloc_init(SIRINLUINTERNALMatchingSpan);
    [a1 addMentions:v13];
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !SIRINLUINTERNALMatchingSpanReadFrom(v13, a2))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRINLUEXTERNALUsoEntityIdentifierReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v46) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v46 & 0x7F) << v5;
        if ((v46 & 0x80) == 0)
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
      if ((v12 >> 3) > 4)
      {
        if (v13 > 6)
        {
          if (v13 == 7)
          {
            v37 = 0;
            v38 = 0;
            v39 = 0;
            *(a1 + 64) |= 1u;
            while (1)
            {
              LOBYTE(v46) = 0;
              v40 = [a2 position] + 1;
              if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
              {
                v42 = [a2 data];
                [v42 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v39 |= (v46 & 0x7F) << v37;
              if ((v46 & 0x80) == 0)
              {
                break;
              }

              v37 += 7;
              v11 = v38++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_82;
              }
            }

            if ([a2 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v39;
            }

LABEL_82:
            v43 = 16;
            goto LABEL_91;
          }

          if (v13 == 8)
          {
            v24 = 0;
            v25 = 0;
            v26 = 0;
            *(a1 + 64) |= 2u;
            while (1)
            {
              LOBYTE(v46) = 0;
              v27 = [a2 position] + 1;
              if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
              {
                v29 = [a2 data];
                [v29 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v26 |= (v46 & 0x7F) << v24;
              if ((v46 & 0x80) == 0)
              {
                break;
              }

              v24 += 7;
              v11 = v25++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_90;
              }
            }

            if ([a2 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v26;
            }

LABEL_90:
            v43 = 20;
            goto LABEL_91;
          }
        }

        else
        {
          if (v13 == 5)
          {
            v23 = objc_alloc_init(SIRICOMMONDoubleValue);
            objc_storeStrong((a1 + 40), v23);
            v46 = 0;
            v47 = 0;
            if (!PBReaderPlaceMark() || !SIRICOMMONDoubleValueReadFrom(v23, a2))
            {
LABEL_94:

              return 0;
            }

            goto LABEL_61;
          }

          if (v13 == 6)
          {
            v16 = 0;
            v17 = 0;
            v18 = 0;
            *(a1 + 64) |= 8u;
            while (1)
            {
              LOBYTE(v46) = 0;
              v19 = [a2 position] + 1;
              if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
              {
                v21 = [a2 data];
                [v21 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v18 |= (v46 & 0x7F) << v16;
              if ((v46 & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              v11 = v17++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_86;
              }
            }

            if ([a2 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v18;
            }

LABEL_86:
            v43 = 48;
            goto LABEL_91;
          }
        }
      }

      else if (v13 > 2)
      {
        if (v13 == 3)
        {
          v14 = PBReaderReadString();
          v15 = 56;
          goto LABEL_63;
        }

        if (v13 == 4)
        {
          v23 = objc_alloc_init(SIRICOMMONStringValue);
          objc_storeStrong((a1 + 24), v23);
          v46 = 0;
          v47 = 0;
          if (!PBReaderPlaceMark() || !SIRICOMMONStringValueReadFrom(v23, a2))
          {
            goto LABEL_94;
          }

LABEL_61:
          PBReaderRecallMark();

          goto LABEL_92;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v30 = 0;
          v31 = 0;
          v32 = 0;
          *(a1 + 64) |= 4u;
          while (1)
          {
            LOBYTE(v46) = 0;
            v33 = [a2 position] + 1;
            if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
            {
              v35 = [a2 data];
              [v35 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v32 |= (v46 & 0x7F) << v30;
            if ((v46 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            v11 = v31++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_78;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v32;
          }

LABEL_78:
          v43 = 32;
LABEL_91:
          *(a1 + v43) = v22;
          goto LABEL_92;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = 8;
LABEL_63:
          v36 = *(a1 + v15);
          *(a1 + v15) = v14;

          goto LABEL_92;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_92:
      v44 = [a2 position];
    }

    while (v44 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRINLUEXTERNALSpanReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    v5 = 0x1EC2B2000uLL;
    v6 = 0x1EC2B2000uLL;
    v7 = 0x1EC2B2000uLL;
    v8 = 0x1EC2B2000uLL;
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v9 = 0;
      v10 = 0;
      v11 = 0;
      while (1)
      {
        LOBYTE(v57) = 0;
        v12 = [a2 position] + 1;
        if (v12 >= [a2 position] && (v13 = objc_msgSend(a2, "position") + 1, v13 <= objc_msgSend(a2, "length")))
        {
          v14 = [a2 data];
          [v14 getBytes:&v57 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v11 |= (v57 & 0x7F) << v9;
        if ((v57 & 0x80) == 0)
        {
          break;
        }

        v9 += 7;
        v15 = v10++ >= 9;
        if (v15)
        {
          v16 = 0;
          goto LABEL_16;
        }
      }

      v16 = [a2 hasError] ? 0 : v11;
LABEL_16:
      if (([a2 hasError] & 1) != 0 || (v16 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v17 = v16 >> 3;
      if ((v16 >> 3) <= 3)
      {
        break;
      }

      if (v17 > 5)
      {
        if (v17 == 6)
        {
          *(a1 + *(v7 + 2048)) |= 1u;
          v57 = 0;
          v42 = [a2 position] + 8;
          if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 8, v43 <= objc_msgSend(a2, "length")))
          {
            v55 = [a2 data];
            [v55 getBytes:&v57 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 32) = v57;
          goto LABEL_94;
        }

        if (v17 == 7)
        {
          if ((v16 & 7) == 2)
          {
            v57 = 0;
            v58 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v27 = [a2 position];
              if (v27 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                break;
              }

              v28 = 0;
              v29 = 0;
              v30 = 0;
              while (1)
              {
                v59 = 0;
                v31 = [a2 position] + 1;
                if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
                {
                  v33 = [a2 data];
                  [v33 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v30 |= (v59 & 0x7F) << v28;
                if ((v59 & 0x80) == 0)
                {
                  break;
                }

                v28 += 7;
                v15 = v29++ >= 9;
                if (v15)
                {
                  goto LABEL_53;
                }
              }

              [a2 hasError];
LABEL_53:
              PBRepeatedInt32Add();
            }

            PBReaderRecallMark();
          }

          else
          {
            v46 = v7;
            v47 = v6;
            v48 = v5;
            v49 = 0;
            v50 = 0;
            v51 = 0;
            while (1)
            {
              LOBYTE(v57) = 0;
              v52 = [a2 position] + 1;
              if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
              {
                v54 = [a2 data];
                [v54 getBytes:&v57 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v51 |= (v57 & 0x7F) << v49;
              if ((v57 & 0x80) == 0)
              {
                break;
              }

              v49 += 7;
              v15 = v50++ >= 9;
              if (v15)
              {
                goto LABEL_91;
              }
            }

            [a2 hasError];
LABEL_91:
            PBRepeatedInt32Add();
            v5 = v48;
            v6 = v47;
            v7 = v46;
            v8 = 0x1EC2B2000;
          }

          goto LABEL_94;
        }

LABEL_55:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_94;
      }

      if (v17 == 4)
      {
        v36 = 0;
        v37 = 0;
        v38 = 0;
        *(a1 + *(v7 + 2048)) |= 2u;
        while (1)
        {
          LOBYTE(v57) = 0;
          v39 = [a2 position] + 1;
          if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
          {
            v41 = [a2 data];
            [v41 getBytes:&v57 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v38 |= (v57 & 0x7F) << v36;
          if ((v57 & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v15 = v37++ >= 9;
          if (v15)
          {
            v25 = 0;
            goto LABEL_74;
          }
        }

        if ([a2 hasError])
        {
          v25 = 0;
        }

        else
        {
          v25 = v38;
        }

LABEL_74:
        v45 = 40;
LABEL_79:
        *(a1 + v45) = v25;
        goto LABEL_94;
      }

      if (v17 != 5)
      {
        goto LABEL_55;
      }

      v18 = objc_alloc_init(SIRINLUEXTERNALUsoGraph);
      objc_storeStrong((a1 + 72), v18);
      v57 = 0;
      v58 = 0;
      if (!PBReaderPlaceMark() || !SIRINLUEXTERNALUsoGraphReadFrom(&v18->super.super.isa, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_94:
      v56 = [a2 position];
      if (v56 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v17)
    {
      case 1:
        v34 = PBReaderReadString();
        v35 = *(v5 + 2040);
LABEL_70:
        v44 = *(a1 + v35);
        *(a1 + v35) = v34;

        goto LABEL_94;
      case 2:
        v34 = PBReaderReadString();
        v35 = *(v6 + 2044);
        goto LABEL_70;
      case 3:
        v19 = 0;
        v20 = 0;
        v21 = 0;
        *(a1 + *(v7 + 2048)) |= 4u;
        while (1)
        {
          LOBYTE(v57) = 0;
          v22 = [a2 position] + 1;
          if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 1, v23 <= objc_msgSend(a2, "length")))
          {
            v24 = [a2 data];
            [v24 getBytes:&v57 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v21 |= (v57 & 0x7F) << v19;
          if ((v57 & 0x80) == 0)
          {
            break;
          }

          v19 += 7;
          v15 = v20++ >= 9;
          if (v15)
          {
            v25 = 0;
            goto LABEL_78;
          }
        }

        if ([a2 hasError])
        {
          v25 = 0;
        }

        else
        {
          v25 = v21;
        }

LABEL_78:
        v45 = *(v8 + 2052);
        goto LABEL_79;
    }

    goto LABEL_55;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sirinluexternal::UsoEntityIdentifier::formatText(sirinluexternal::UsoEntityIdentifier *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 1))
  {
    PB::TextFormatter::format();
  }

  v5 = *(this + 56);
  if (v5)
  {
    v6 = *(this + 10);
    PB::TextFormatter::format(a2, "group_index");
    v5 = *(this + 56);
  }

  if ((v5 & 2) != 0)
  {
    v7 = *(this + 11);
    PB::TextFormatter::format(a2, "interpretation_group");
  }

  v8 = *(this + 2);
  if (v8)
  {
    (*(*v8 + 32))(v8, a2, "namespace_a");
  }

  if ((*(this + 56) & 4) != 0)
  {
    v9 = *(this + 12);
    PB::TextFormatter::format(a2, "node_index");
  }

  v10 = *(this + 3);
  if (v10)
  {
    (*(*v10 + 32))(v10, a2, "probability");
  }

  if ((*(this + 56) & 8) != 0)
  {
    v11 = *(this + 13);
    PB::TextFormatter::format(a2, "source_component");
  }

  if (*(this + 4))
  {
    PB::TextFormatter::format();
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternal::UsoEntityIdentifier::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if ((*(this + 56) & 4) != 0)
  {
    v4 = *(this + 48);
    this = PB::Writer::writeVarInt(a2);
  }

  if (*(v3 + 8))
  {
    this = PB::Writer::write();
  }

  if (*(v3 + 32))
  {
    this = PB::Writer::write();
  }

  v5 = *(v3 + 16);
  if (v5)
  {
    this = PB::Writer::writeSubmessage(a2, v5);
  }

  v6 = *(v3 + 24);
  if (v6)
  {
    this = PB::Writer::writeSubmessage(a2, v6);
  }

  v7 = *(v3 + 56);
  if ((v7 & 8) == 0)
  {
    if ((*(v3 + 56) & 1) == 0)
    {
      goto LABEL_13;
    }

LABEL_16:
    v9 = *(v3 + 40);
    this = PB::Writer::writeVarInt(a2);
    if ((*(v3 + 56) & 2) == 0)
    {
      return this;
    }

    goto LABEL_17;
  }

  v8 = *(v3 + 52);
  this = PB::Writer::writeVarInt(a2);
  v7 = *(v3 + 56);
  if (v7)
  {
    goto LABEL_16;
  }

LABEL_13:
  if ((v7 & 2) == 0)
  {
    return this;
  }

LABEL_17:
  v10 = *(v3 + 44);

  return PB::Writer::writeVarInt(a2);
}

uint64_t sirinluexternal::UsoEntityIdentifier::readFrom(sirinluexternal::UsoEntityIdentifier *this, PB::Reader *a2)
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
      break;
    }

    v22 = v10 >> 3;
    if ((v10 >> 3) > 4)
    {
      if (v22 > 6)
      {
        if (v22 == 7)
        {
          *(this + 56) |= 1u;
          v51 = *(a2 + 1);
          v50 = *(a2 + 2);
          v52 = *a2;
          if (v51 > 0xFFFFFFFFFFFFFFF5 || v51 + 10 > v50)
          {
            v65 = 0;
            v66 = 0;
            v55 = 0;
            v67 = (v52 + v51);
            v18 = v50 >= v51;
            v68 = v50 - v51;
            if (!v18)
            {
              v68 = 0;
            }

            v69 = v51 + 1;
            while (1)
            {
              if (!v68)
              {
                LODWORD(v55) = 0;
                *(a2 + 24) = 1;
                goto LABEL_106;
              }

              v70 = *v67;
              *(a2 + 1) = v69;
              v55 |= (v70 & 0x7F) << v65;
              if ((v70 & 0x80) == 0)
              {
                break;
              }

              v65 += 7;
              ++v67;
              --v68;
              ++v69;
              v14 = v66++ > 8;
              if (v14)
              {
LABEL_80:
                LODWORD(v55) = 0;
                goto LABEL_106;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v55) = 0;
            }
          }

          else
          {
            v53 = 0;
            v54 = 0;
            v55 = 0;
            v56 = (v52 + v51);
            v57 = v51 + 1;
            while (1)
            {
              *(a2 + 1) = v57;
              v58 = *v56++;
              v55 |= (v58 & 0x7F) << v53;
              if ((v58 & 0x80) == 0)
              {
                break;
              }

              v53 += 7;
              ++v57;
              v14 = v54++ > 8;
              if (v14)
              {
                goto LABEL_80;
              }
            }
          }

LABEL_106:
          *(this + 10) = v55;
          goto LABEL_18;
        }

        if (v22 == 8)
        {
          *(this + 56) |= 2u;
          v33 = *(a2 + 1);
          v32 = *(a2 + 2);
          v34 = *a2;
          if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v32)
          {
            v77 = 0;
            v78 = 0;
            v37 = 0;
            v79 = (v34 + v33);
            v18 = v32 >= v33;
            v80 = v32 - v33;
            if (!v18)
            {
              v80 = 0;
            }

            v81 = v33 + 1;
            while (1)
            {
              if (!v80)
              {
                LODWORD(v37) = 0;
                *(a2 + 24) = 1;
                goto LABEL_112;
              }

              v82 = *v79;
              *(a2 + 1) = v81;
              v37 |= (v82 & 0x7F) << v77;
              if ((v82 & 0x80) == 0)
              {
                break;
              }

              v77 += 7;
              ++v79;
              --v80;
              ++v81;
              v14 = v78++ > 8;
              if (v14)
              {
LABEL_96:
                LODWORD(v37) = 0;
                goto LABEL_112;
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
                goto LABEL_96;
              }
            }
          }

LABEL_112:
          *(this + 11) = v37;
          goto LABEL_18;
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
          *(this + 56) |= 8u;
          v24 = *(a2 + 1);
          v23 = *(a2 + 2);
          v25 = *a2;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
          {
            v71 = 0;
            v72 = 0;
            v28 = 0;
            v73 = (v25 + v24);
            v18 = v23 >= v24;
            v74 = v23 - v24;
            if (!v18)
            {
              v74 = 0;
            }

            v75 = v24 + 1;
            while (1)
            {
              if (!v74)
              {
                LODWORD(v28) = 0;
                *(a2 + 24) = 1;
                goto LABEL_109;
              }

              v76 = *v73;
              *(a2 + 1) = v75;
              v28 |= (v76 & 0x7F) << v71;
              if ((v76 & 0x80) == 0)
              {
                break;
              }

              v71 += 7;
              ++v73;
              --v74;
              ++v75;
              v14 = v72++ > 8;
              if (v14)
              {
LABEL_88:
                LODWORD(v28) = 0;
                goto LABEL_109;
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
                goto LABEL_88;
              }
            }
          }

LABEL_109:
          *(this + 13) = v28;
          goto LABEL_18;
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
        *(this + 56) |= 4u;
        v42 = *(a2 + 1);
        v41 = *(a2 + 2);
        v43 = *a2;
        if (v42 > 0xFFFFFFFFFFFFFFF5 || v42 + 10 > v41)
        {
          v59 = 0;
          v60 = 0;
          v46 = 0;
          v61 = (v43 + v42);
          v18 = v41 >= v42;
          v62 = v41 - v42;
          if (!v18)
          {
            v62 = 0;
          }

          v63 = v42 + 1;
          while (1)
          {
            if (!v62)
            {
              LODWORD(v46) = 0;
              *(a2 + 24) = 1;
              goto LABEL_103;
            }

            v64 = *v61;
            *(a2 + 1) = v63;
            v46 |= (v64 & 0x7F) << v59;
            if ((v64 & 0x80) == 0)
            {
              break;
            }

            v59 += 7;
            ++v61;
            --v62;
            ++v63;
            v14 = v60++ > 8;
            if (v14)
            {
LABEL_72:
              LODWORD(v46) = 0;
              goto LABEL_103;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v46) = 0;
          }
        }

        else
        {
          v44 = 0;
          v45 = 0;
          v46 = 0;
          v47 = (v43 + v42);
          v48 = v42 + 1;
          while (1)
          {
            *(a2 + 1) = v48;
            v49 = *v47++;
            v46 |= (v49 & 0x7F) << v44;
            if ((v49 & 0x80) == 0)
            {
              break;
            }

            v44 += 7;
            ++v48;
            v14 = v45++ > 8;
            if (v14)
            {
              goto LABEL_72;
            }
          }
        }

LABEL_103:
        *(this + 12) = v46;
        goto LABEL_18;
      }

      if (v22 == 2)
      {
        operator new();
      }
    }

LABEL_17:
    if ((PB::Reader::skip(a2) & 1) == 0)
    {
      v83 = 0;
      return v83 & 1;
    }

LABEL_18:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v83 = v4 ^ 1;
  return v83 & 1;
}

void sirinluexternal::UsoEntityIdentifier::~UsoEntityIdentifier(sirinluexternal::UsoEntityIdentifier *this)
{
  sirinluexternal::UsoEntityIdentifier::~UsoEntityIdentifier(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4877160;
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v2);
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
    std::default_delete<std::string>::operator()[abi:ne200100](v5);
  }

  PB::Base::~Base(this);
}

double sirinluexternal::UsoEntityIdentifier::UsoEntityIdentifier(sirinluexternal::UsoEntityIdentifier *this)
{
  *this = &unk_1F4877160;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 14) = 0;
  return result;
}

{
  *this = &unk_1F4877160;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 14) = 0;
  return result;
}

uint64_t sirinluexternal::UsoEntityIdentifier::UsoEntityIdentifier(uint64_t this, const sirinluexternal::UsoEntityIdentifier *a2)
{
  *this = &unk_1F4877160;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0;
  if ((*(a2 + 56) & 4) != 0)
  {
    v2 = *(a2 + 12);
    *(this + 56) = 4;
    *(this + 48) = v2;
  }

  if (*(a2 + 1))
  {
    operator new();
  }

  if (*(a2 + 4))
  {
    operator new();
  }

  if (*(a2 + 2))
  {
    operator new();
  }

  if (*(a2 + 3))
  {
    operator new();
  }

  v3 = *(a2 + 56);
  if ((v3 & 8) != 0)
  {
    v5 = *(a2 + 13);
    *(this + 56) |= 8u;
    *(this + 52) = v5;
    v3 = *(a2 + 56);
    if ((v3 & 1) == 0)
    {
LABEL_13:
      if ((v3 & 2) == 0)
      {
        return this;
      }

      goto LABEL_14;
    }
  }

  else if ((*(a2 + 56) & 1) == 0)
  {
    goto LABEL_13;
  }

  v6 = *(a2 + 10);
  *(this + 56) |= 1u;
  *(this + 40) = v6;
  if ((*(a2 + 56) & 2) == 0)
  {
    return this;
  }

LABEL_14:
  v4 = *(a2 + 11);
  *(this + 56) |= 2u;
  *(this + 44) = v4;
  return this;
}

uint64_t sirinluexternal::UsoEntityIdentifier::operator=(uint64_t a1, const sirinluexternal::UsoEntityIdentifier *a2)
{
  if (a1 != a2)
  {
    sirinluexternal::UsoEntityIdentifier::UsoEntityIdentifier(&v8, a2);
    v3 = *(a1 + 56);
    *(a1 + 56) = v12;
    v12 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v9;
    v9 = v4;
    v5 = *(a1 + 24);
    *(a1 + 24) = v10;
    v10 = v5;
    v6 = *(a1 + 40);
    *(a1 + 40) = v11;
    v11 = v6;
    sirinluexternal::UsoEntityIdentifier::~UsoEntityIdentifier(&v8);
  }

  return a1;
}

double sirinluexternal::swap(sirinluexternal *this, sirinluexternal::UsoEntityIdentifier *a2, sirinluexternal::UsoEntityIdentifier *a3)
{
  v3 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v6;
  v7 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v7;
  result = *(a2 + 6);
  v9 = *(this + 6);
  *(this + 6) = result;
  *(a2 + 6) = v9;
  LODWORD(v7) = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v7;
  LODWORD(v7) = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v7;
  return result;
}

uint64_t sirinluexternal::UsoEntityIdentifier::UsoEntityIdentifier(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4877160;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = 0;
  *(a1 + 48) = *(a2 + 48);
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  if (v5)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v5);
  }

  v6 = *(a2 + 32);
  *(a2 + 32) = 0;
  v7 = *(a1 + 32);
  *(a1 + 32) = v6;
  if (v7)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v7);
  }

  v8 = *(a2 + 16);
  *(a2 + 16) = 0;
  v9 = *(a1 + 16);
  *(a1 + 16) = v8;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(a2 + 24);
  *(a2 + 24) = 0;
  v11 = *(a1 + 24);
  *(a1 + 24) = v10;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  *(a1 + 52) = *(a2 + 52);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  return a1;
}

uint64_t sirinluexternal::UsoEntityIdentifier::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluexternal::UsoEntityIdentifier::UsoEntityIdentifier(&v8, a2);
    v3 = *(a1 + 56);
    *(a1 + 56) = v12;
    v12 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v9;
    v9 = v4;
    v5 = *(a1 + 24);
    *(a1 + 24) = v10;
    v10 = v5;
    v6 = *(a1 + 40);
    *(a1 + 40) = v11;
    v11 = v6;
    sirinluexternal::UsoEntityIdentifier::~UsoEntityIdentifier(&v8);
  }

  return a1;
}

BOOL sirinluexternal::UsoEntityIdentifier::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  v5 = *(a2 + 56);
  if ((v4 & 4) != 0)
  {
    if ((*(a2 + 56) & 4) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((*(a2 + 56) & 4) != 0)
  {
    return 0;
  }

  v6 = *(a1 + 8);
  v7 = *(a2 + 8);
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

    v12 = v8 >= 0 ? *(a1 + 8) : *v6;
    v13 = v11 >= 0 ? *(a2 + 8) : *v7;
    if (memcmp(v12, v13, v9))
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v15 = *(a1 + 32);
  v16 = *(a2 + 32);
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

    v21 = v17 >= 0 ? *(a1 + 32) : *v15;
    v22 = v20 >= 0 ? *(a2 + 32) : *v16;
    if (memcmp(v21, v22, v18))
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  v23 = *(a1 + 16);
  v24 = *(a2 + 16);
  if (v23)
  {
    if (!v24 || !siricommon::StringValue::operator==(v23, v24))
    {
      return 0;
    }
  }

  else if (v24)
  {
    return 0;
  }

  v25 = *(a1 + 24);
  v26 = *(a2 + 24);
  if (v25)
  {
    if (!v26)
    {
      return 0;
    }

    v27 = *(v26 + 16);
    if (*(v25 + 16))
    {
      if ((*(v26 + 16) & 1) == 0 || *(v25 + 8) != *(v26 + 8))
      {
        return 0;
      }
    }

    else if (*(v26 + 16))
    {
      return 0;
    }
  }

  else if (v26)
  {
    return 0;
  }

  if ((v4 & 8) != 0)
  {
    if ((v5 & 8) == 0 || *(a1 + 52) != *(a2 + 52))
    {
      return 0;
    }
  }

  else if ((v5 & 8) != 0)
  {
    return 0;
  }

  if ((v4 & 1) == 0)
  {
    if ((v5 & 1) == 0)
    {
      goto LABEL_66;
    }

    return 0;
  }

  if ((v5 & 1) == 0 || *(a1 + 40) != *(a2 + 40))
  {
    return 0;
  }

LABEL_66:
  result = (v5 & 2) == 0;
  if ((v4 & 2) != 0)
  {
    return (v5 & 2) != 0 && *(a1 + 44) == *(a2 + 44);
  }

  return result;
}

unint64_t sirinluexternal::UsoEntityIdentifier::hash_value(sirinluexternal::UsoEntityIdentifier *this)
{
  v2 = *(this + 56);
  if ((v2 & 4) != 0)
  {
    v3 = *(this + 12);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 1);
  if (v4)
  {
    v5 = std::__string_hash<char>::operator()[abi:ne200100](v4);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(this + 4);
  if (v6)
  {
    v7 = std::__string_hash<char>::operator()[abi:ne200100](v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(this + 2);
  if (v8)
  {
    v9 = *(v8 + 8);
    if (v9)
    {
      v9 = std::__string_hash<char>::operator()[abi:ne200100](v9);
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = *(this + 3);
  if (v10 == 0.0)
  {
LABEL_17:
    if ((v2 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_24;
  }

  if ((*(*&v10 + 16) & 1) == 0)
  {
    v10 = 0.0;
    goto LABEL_17;
  }

  v10 = *(*&v10 + 8);
  if (v10 == 0.0)
  {
    v10 = 0.0;
  }

  if ((v2 & 8) == 0)
  {
LABEL_18:
    v11 = 0;
    if (v2)
    {
      goto LABEL_19;
    }

LABEL_25:
    v12 = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_20;
    }

LABEL_26:
    v13 = 0;
    return v5 ^ v3 ^ v7 ^ v9 ^ *&v10 ^ v11 ^ v12 ^ v13;
  }

LABEL_24:
  v11 = *(this + 13);
  if ((v2 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_19:
  v12 = *(this + 10);
  if ((v2 & 2) == 0)
  {
    goto LABEL_26;
  }

LABEL_20:
  v13 = *(this + 11);
  return v5 ^ v3 ^ v7 ^ v9 ^ *&v10 ^ v11 ^ v12 ^ v13;
}

uint64_t sirinluexternal::UsoEntityIdentifier::makeNamespaceA(uint64_t this)
{
  if (!*(this + 16))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::UsoEntityIdentifier::makeProbability(uint64_t this)
{
  if (!*(this + 24))
  {
    operator new();
  }

  return this;
}

uint64_t SIRINLUINTERNALPLUMSpanDataReadFrom(uint64_t a1, void *a2)
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

uint64_t sirinluinternalsnlp_intermediate::SNLPAssetVersion::formatText(sirinluinternalsnlp_intermediate::SNLPAssetVersion *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 1))
  {
    PB::TextFormatter::format();
  }

  v5 = *(this + 28);
  if (v5)
  {
    v7 = *(this + 4);
    PB::TextFormatter::format(a2, "ncv_number");
    v5 = *(this + 28);
    if ((v5 & 2) == 0)
    {
LABEL_5:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*(this + 28) & 2) == 0)
  {
    goto LABEL_5;
  }

  v8 = *(this + 5);
  PB::TextFormatter::format(a2, "os_release");
  if ((*(this + 28) & 4) != 0)
  {
LABEL_6:
    v6 = *(this + 6);
    PB::TextFormatter::format(a2, "patch_number");
  }

LABEL_7:

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluinternalsnlp_intermediate::SNLPAssetVersion::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 28);
  if ((v4 & 2) != 0)
  {
    v6 = *(this + 20);
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 28);
    if ((v4 & 1) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(this + 28) & 1) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(v3 + 16);
  this = PB::Writer::writeVarInt(a2);
  if ((*(v3 + 28) & 4) != 0)
  {
LABEL_4:
    v5 = *(v3 + 24);
    this = PB::Writer::writeVarInt(a2);
  }

LABEL_5:
  if (*(v3 + 8))
  {

    return PB::Writer::write();
  }

  return this;
}

uint64_t sirinluinternalsnlp_intermediate::SNLPAssetVersion::readFrom(sirinluinternalsnlp_intermediate::SNLPAssetVersion *this, PB::Reader *a2)
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
      break;
    }

    v22 = v10 >> 3;
    if ((v10 >> 3) > 2)
    {
      if (v22 == 3)
      {
        *(this + 28) |= 4u;
        v42 = *(a2 + 1);
        v41 = *(a2 + 2);
        v43 = *a2;
        if (v42 > 0xFFFFFFFFFFFFFFF5 || v42 + 10 > v41)
        {
          v62 = 0;
          v63 = 0;
          v46 = 0;
          v64 = (v43 + v42);
          v18 = v41 >= v42;
          v65 = v41 - v42;
          if (!v18)
          {
            v65 = 0;
          }

          v66 = v42 + 1;
          while (1)
          {
            if (!v65)
            {
              LODWORD(v46) = 0;
              *(a2 + 24) = 1;
              goto LABEL_84;
            }

            v67 = *v64;
            *(a2 + 1) = v66;
            v46 |= (v67 & 0x7F) << v62;
            if ((v67 & 0x80) == 0)
            {
              break;
            }

            v62 += 7;
            ++v64;
            --v65;
            ++v66;
            v14 = v63++ > 8;
            if (v14)
            {
LABEL_72:
              LODWORD(v46) = 0;
              goto LABEL_84;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v46) = 0;
          }
        }

        else
        {
          v44 = 0;
          v45 = 0;
          v46 = 0;
          v47 = (v43 + v42);
          v48 = v42 + 1;
          while (1)
          {
            *(a2 + 1) = v48;
            v49 = *v47++;
            v46 |= (v49 & 0x7F) << v44;
            if ((v49 & 0x80) == 0)
            {
              break;
            }

            v44 += 7;
            ++v48;
            v14 = v45++ > 8;
            if (v14)
            {
              goto LABEL_72;
            }
          }
        }

LABEL_84:
        *(this + 6) = v46;
        goto LABEL_18;
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
        *(this + 28) |= 2u;
        v33 = *(a2 + 1);
        v32 = *(a2 + 2);
        v34 = *a2;
        if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v32)
        {
          v56 = 0;
          v57 = 0;
          v37 = 0;
          v58 = (v34 + v33);
          v18 = v32 >= v33;
          v59 = v32 - v33;
          if (!v18)
          {
            v59 = 0;
          }

          v60 = v33 + 1;
          while (1)
          {
            if (!v59)
            {
              LODWORD(v37) = 0;
              *(a2 + 24) = 1;
              goto LABEL_81;
            }

            v61 = *v58;
            *(a2 + 1) = v60;
            v37 |= (v61 & 0x7F) << v56;
            if ((v61 & 0x80) == 0)
            {
              break;
            }

            v56 += 7;
            ++v58;
            --v59;
            ++v60;
            v14 = v57++ > 8;
            if (v14)
            {
LABEL_64:
              LODWORD(v37) = 0;
              goto LABEL_81;
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
              goto LABEL_64;
            }
          }
        }

LABEL_81:
        *(this + 5) = v37;
        goto LABEL_18;
      }

      if (v22 == 2)
      {
        *(this + 28) |= 1u;
        v24 = *(a2 + 1);
        v23 = *(a2 + 2);
        v25 = *a2;
        if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
        {
          v50 = 0;
          v51 = 0;
          v28 = 0;
          v52 = (v25 + v24);
          v18 = v23 >= v24;
          v53 = v23 - v24;
          if (!v18)
          {
            v53 = 0;
          }

          v54 = v24 + 1;
          while (1)
          {
            if (!v53)
            {
              LODWORD(v28) = 0;
              *(a2 + 24) = 1;
              goto LABEL_78;
            }

            v55 = *v52;
            *(a2 + 1) = v54;
            v28 |= (v55 & 0x7F) << v50;
            if ((v55 & 0x80) == 0)
            {
              break;
            }

            v50 += 7;
            ++v52;
            --v53;
            ++v54;
            v14 = v51++ > 8;
            if (v14)
            {
LABEL_56:
              LODWORD(v28) = 0;
              goto LABEL_78;
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
              goto LABEL_56;
            }
          }
        }

LABEL_78:
        *(this + 4) = v28;
        goto LABEL_18;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v68 = 0;
      return v68 & 1;
    }

LABEL_18:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v68 = v4 ^ 1;
  return v68 & 1;
}

uint64_t sirinluinternalsnlp_intermediate::SNLPAssetVersion::operator=(uint64_t a1, const sirinluinternalsnlp_intermediate::SNLPAssetVersion *a2)
{
  if (a1 != a2)
  {
    sirinluinternalsnlp_intermediate::SNLPAssetVersion::SNLPAssetVersion(&v6, a2);
    v3 = *(a1 + 16);
    *(a1 + 16) = v8;
    v8 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    sirinluinternalsnlp_intermediate::SNLPAssetVersion::~SNLPAssetVersion(&v6);
  }

  return a1;
}

uint64_t sirinluinternalsnlp_intermediate::swap(uint64_t this, sirinluinternalsnlp_intermediate::SNLPAssetVersion *a2, sirinluinternalsnlp_intermediate::SNLPAssetVersion *a3)
{
  v3 = *(this + 28);
  *(this + 28) = *(a2 + 7);
  *(a2 + 7) = v3;
  v4 = *(this + 20);
  *(this + 20) = *(a2 + 5);
  *(a2 + 5) = v4;
  v5 = *(this + 16);
  *(this + 16) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 24);
  *(this + 24) = *(a2 + 6);
  *(a2 + 6) = v6;
  v7 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v7;
  return this;
}

uint64_t sirinluinternalsnlp_intermediate::SNLPAssetVersion::SNLPAssetVersion(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F48771B0;
  *(a1 + 8) = 0;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
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

uint64_t sirinluinternalsnlp_intermediate::SNLPAssetVersion::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluinternalsnlp_intermediate::SNLPAssetVersion::SNLPAssetVersion(&v6, a2);
    v3 = *(a1 + 16);
    *(a1 + 16) = v8;
    v8 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    sirinluinternalsnlp_intermediate::SNLPAssetVersion::~SNLPAssetVersion(&v6);
  }

  return a1;
}

BOOL sirinluinternalsnlp_intermediate::SNLPAssetVersion::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 28);
  if ((*(a1 + 28) & 2) != 0)
  {
    if ((*(a2 + 28) & 2) == 0 || *(a1 + 20) != *(a2 + 20))
    {
      return 0;
    }
  }

  else if ((*(a2 + 28) & 2) != 0)
  {
    return 0;
  }

  if (*(a1 + 28))
  {
    if ((*(a2 + 28) & 1) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if (*(a2 + 28))
  {
    return 0;
  }

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

  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  result = (v3 | v4) == 0;
  if (v3 && v4)
  {
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

  return result;
}

unint64_t sirinluinternalsnlp_intermediate::SNLPAssetVersion::hash_value(sirinluinternalsnlp_intermediate::SNLPAssetVersion *this)
{
  if ((*(this + 28) & 2) == 0)
  {
    v1 = 0;
    if (*(this + 28))
    {
      goto LABEL_3;
    }

LABEL_6:
    v2 = 0;
    if ((*(this + 28) & 4) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v1 = *(this + 5);
  if ((*(this + 28) & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v2 = *(this + 4);
  if ((*(this + 28) & 4) != 0)
  {
LABEL_4:
    v3 = *(this + 6);
    goto LABEL_8;
  }

LABEL_7:
  v3 = 0;
LABEL_8:
  v4 = *(this + 1);
  if (v4)
  {
    v4 = std::__string_hash<char>::operator()[abi:ne200100](v4);
  }

  return v2 ^ v1 ^ v3 ^ v4;
}

void sub_1C8B27BE8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1C8B27D94(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

uint64_t SIRINLUINTERNALNLV4_PARSERTokenisationReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) == 3)
      {
        break;
      }

      if (v13 == 2)
      {
        v14 = PBReaderReadString();
        v15 = 8;
LABEL_22:
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;
LABEL_26:

        goto LABEL_28;
      }

      if (v13 == 1)
      {
        v14 = PBReaderReadString();
        v15 = 16;
        goto LABEL_22;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_28:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v16 = objc_alloc_init(SIRINLUINTERNALTokenChain);
    objc_storeStrong((a1 + 24), v16);
    v19[0] = 0;
    v19[1] = 0;
    if (!PBReaderPlaceMark() || !SIRINLUINTERNALTokenChainReadFrom(v16, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRINLUINTERNALSNLP_INTERMEDIATELinearizedTensorReadFrom(void *a1, void *a2)
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
        LOBYTE(v44) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v44 & 0x7F) << v5;
        if ((v44 & 0x80) == 0)
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
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 & 7;
      if (v13 == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v14 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v30 = PBReaderReadString();
        if (v30)
        {
          [a1 addFeature:v30];
        }

        goto LABEL_76;
      }

      if (v14 == 2)
      {
        break;
      }

      if (v14 == 1)
      {
        if (v13 != 2)
        {
          v37 = 0;
          v38 = 0;
          v39 = 0;
          while (1)
          {
            LOBYTE(v44) = 0;
            v40 = [a2 position] + 1;
            if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
            {
              v42 = [a2 data];
              [v42 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v39 |= (v44 & 0x7F) << v37;
            if ((v44 & 0x80) == 0)
            {
              break;
            }

            v37 += 7;
            v11 = v38++ >= 9;
            if (v11)
            {
              goto LABEL_75;
            }
          }

LABEL_74:
          [a2 hasError];
LABEL_75:
          PBRepeatedUInt32Add();
          goto LABEL_76;
        }

        v44 = 0;
        v45 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v16 = [a2 position];
          if (v16 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            break;
          }

          v17 = 0;
          v18 = 0;
          v19 = 0;
          while (1)
          {
            v46 = 0;
            v20 = [a2 position] + 1;
            if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
            {
              v22 = [a2 data];
              [v22 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v19 |= (v46 & 0x7F) << v17;
            if ((v46 & 0x80) == 0)
            {
              break;
            }

            v17 += 7;
            v11 = v18++ >= 9;
            if (v11)
            {
              goto LABEL_34;
            }
          }

          [a2 hasError];
LABEL_34:
          PBRepeatedUInt32Add();
        }

LABEL_55:
        PBReaderRecallMark();
        goto LABEL_76;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_76:
      v43 = [a2 position];
      if (v43 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 != 2)
    {
      v31 = 0;
      v32 = 0;
      v33 = 0;
      while (1)
      {
        LOBYTE(v44) = 0;
        v34 = [a2 position] + 1;
        if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
        {
          v36 = [a2 data];
          [v36 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v33 |= (v44 & 0x7F) << v31;
        if ((v44 & 0x80) == 0)
        {
          goto LABEL_74;
        }

        v31 += 7;
        v11 = v32++ >= 9;
        if (v11)
        {
          goto LABEL_75;
        }
      }
    }

    v44 = 0;
    v45 = 0;
    result = PBReaderPlaceMark();
    if (!result)
    {
      return result;
    }

    while (1)
    {
      v23 = [a2 position];
      if (v23 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
      {
        goto LABEL_55;
      }

      v24 = 0;
      v25 = 0;
      v26 = 0;
      while (1)
      {
        v46 = 0;
        v27 = [a2 position] + 1;
        if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
        {
          v29 = [a2 data];
          [v29 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v26 |= (v46 & 0x7F) << v24;
        if ((v46 & 0x80) == 0)
        {
          break;
        }

        v24 += 7;
        v11 = v25++ >= 9;
        if (v11)
        {
          goto LABEL_49;
        }
      }

      [a2 hasError];
LABEL_49:
      PBRepeatedUInt32Add();
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRINLUEXTERNALTaskReadFrom(id *a1, void *a2)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v14 = objc_alloc_init(SIRICOMMONDoubleValue);
        objc_storeStrong(a1 + 1, v14);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !SIRICOMMONDoubleValueReadFrom(v14, a2))
        {
LABEL_32:

          return 0;
        }

        goto LABEL_28;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = objc_alloc_init(SIRINLUEXTERNALUUID);
        objc_storeStrong(a1 + 3, v14);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !SIRINLUEXTERNALUUIDReadFrom(v14, a2))
        {
          goto LABEL_32;
        }

LABEL_28:
        PBReaderRecallMark();

        goto LABEL_30;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_30:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(SIRINLUEXTERNALUsoGraph);
    objc_storeStrong(a1 + 2, v14);
    v17 = 0;
    v18 = 0;
    if (!PBReaderPlaceMark() || !SIRINLUEXTERNALUsoGraphReadFrom(&v14->super.super.isa, a2))
    {
      goto LABEL_32;
    }

    goto LABEL_28;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sirinluinternal::TokenChain::formatText(sirinluinternal::TokenChain *this, PB::TextFormatter *a2, const char *a3)
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

  v5 = *(this + 3);
  v6 = *(this + 4);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, a2, "tokens");
  }

  return MEMORY[0x1EEE30A90](a2);
}

void *sirinluinternal::TokenChain::writeTo(void *this, PB::Writer *a2)
{
  v3 = this;
  if (this[2])
  {
    this = PB::Writer::write();
  }

  if (v3[1])
  {
    this = PB::Writer::write();
  }

  v5 = v3[3];
  v4 = v3[4];
  while (v5 != v4)
  {
    v6 = *v5++;
    this = PB::Writer::writeSubmessage(a2, v6);
  }

  return this;
}

double sirinluinternal::TokenChain::TokenChain(sirinluinternal::TokenChain *this)
{
  *this = &unk_1F4877200;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

{
  *this = &unk_1F4877200;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

uint64_t sirinluinternal::TokenChain::TokenChain(uint64_t this, const sirinluinternal::TokenChain *a2)
{
  *(this + 8) = 0u;
  *this = &unk_1F4877200;
  *(this + 24) = 0u;
  *(this + 40) = 0;
  if (*(a2 + 2))
  {
    operator new();
  }

  if (*(a2 + 1))
  {
    operator new();
  }

  v2 = *(a2 + 3);
  if (v2 != *(a2 + 4))
  {
    v3 = *v2;
    PB::PtrVector<sirinluinternal::Token>::emplace_back<sirinluinternal::Token const&>();
  }

  return this;
}

uint64_t sirinluinternal::TokenChain::operator=(uint64_t a1, const sirinluinternal::TokenChain *a2)
{
  if (a1 != a2)
  {
    sirinluinternal::TokenChain::TokenChain(&v7, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v9;
    v9 = v4;
    v5 = *(a1 + 40);
    *(a1 + 40) = v10;
    v10 = v5;
    sirinluinternal::TokenChain::~TokenChain(&v7);
  }

  return a1;
}

void *sirinluinternal::swap(void *this, sirinluinternal::TokenChain *a2, sirinluinternal::TokenChain *a3)
{
  v3 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v3;
  v4 = this[1];
  this[1] = *(a2 + 1);
  *(a2 + 1) = v4;
  v5 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v5;
  v6 = this[4];
  this[4] = *(a2 + 4);
  *(a2 + 4) = v6;
  v7 = this[5];
  this[5] = *(a2 + 5);
  *(a2 + 5) = v7;
  return this;
}

uint64_t sirinluinternal::TokenChain::TokenChain(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4877200;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  v5 = *(a2 + 16);
  *(a2 + 16) = 0;
  v6 = *(a1 + 16);
  *(a1 + 16) = v5;
  if (v6)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v6);
  }

  v7 = *(a2 + 8);
  *(a2 + 8) = 0;
  v8 = *v4;
  *v4 = v7;
  if (v8)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v8);
  }

  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__vdeallocate((a1 + 24));
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return a1;
}

uint64_t sirinluinternal::TokenChain::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluinternal::TokenChain::TokenChain(&v7, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v9;
    v9 = v4;
    v5 = *(a1 + 40);
    *(a1 + 40) = v10;
    v10 = v5;
    sirinluinternal::TokenChain::~TokenChain(&v7);
  }

  return a1;
}

BOOL sirinluinternal::TokenChain::operator==(void *a1, void *a2)
{
  v4 = a1[2];
  v5 = a2[2];
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

    v10 = v6 >= 0 ? a1[2] : *v4;
    v11 = v9 >= 0 ? a2[2] : *v5;
    if (memcmp(v10, v11, v7))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v13 = a1[1];
  v14 = a2[1];
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
        v19 = v15 >= 0 ? a1[1] : *v13;
        v20 = v18 >= 0 ? a2[1] : *v14;
        if (!memcmp(v19, v20, v16))
        {
          goto LABEL_36;
        }
      }
    }

    return 0;
  }

  if (v14)
  {
    return 0;
  }

LABEL_36:
  v21 = a1[3];
  v22 = a1[4];
  v23 = a2[3];
  v24 = a2[4];

  return PB::PtrVector<sirinluinternal::Token>::operator==(v21, v22, v23, v24);
}

unint64_t sirinluinternal::TokenChain::hash_value(sirinluinternal::TokenChain *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = std::__string_hash<char>::operator()[abi:ne200100](v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 1);
  if (v4)
  {
    v5 = std::__string_hash<char>::operator()[abi:ne200100](v4);
  }

  else
  {
    v5 = 0;
  }

  v7 = *(this + 3);
  v6 = *(this + 4);
  if (v7 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0;
    do
    {
      v9 = *v7++;
      v8 ^= sirinluinternal::Token::hash_value(v9);
    }

    while (v7 != v6);
  }

  return v5 ^ v3 ^ v8;
}

uint64_t sirinluexternalnlu_router::NLRoutingGenAIMetadata::formatText(sirinluexternalnlu_router::NLRoutingGenAIMetadata *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 24))
  {
    v5 = *(this + 4);
    PB::TextFormatter::format(a2, "prescribed_tool");
  }

  v6 = *(this + 1);
  if (v6)
  {
    (*(*v6 + 32))(v6, a2, "query");
  }

  if ((*(this + 24) & 2) != 0)
  {
    v7 = *(this + 5);
    PB::TextFormatter::format(a2, "query_type");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternalnlu_router::NLRoutingGenAIMetadata::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 24);
  if (v4)
  {
    v5 = *(this + 16);
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 24);
  }

  if ((v4 & 2) != 0)
  {
    v6 = *(v3 + 20);
    this = PB::Writer::writeVarInt(a2);
  }

  v7 = *(v3 + 8);
  if (v7)
  {

    return PB::Writer::writeSubmessage(a2, v7);
  }

  return this;
}

uint64_t sirinluexternalnlu_router::NLRoutingGenAIMetadata::readFrom(sirinluexternalnlu_router::NLRoutingGenAIMetadata *this, PB::Reader *a2)
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
        *(this + 24) |= 2u;
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
              LODWORD(v37) = 0;
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
              LODWORD(v37) = 0;
              goto LABEL_60;
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
              goto LABEL_47;
            }
          }
        }

LABEL_60:
        *(this + 5) = v37;
      }

      else if (v22 == 1)
      {
        *(this + 24) |= 1u;
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
              LODWORD(v28) = 0;
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
              LODWORD(v28) = 0;
              goto LABEL_63;
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
              goto LABEL_55;
            }
          }
        }

LABEL_63:
        *(this + 4) = v28;
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

void sirinluexternalnlu_router::NLRoutingGenAIMetadata::~NLRoutingGenAIMetadata(sirinluexternalnlu_router::NLRoutingGenAIMetadata *this)
{
  sirinluexternalnlu_router::NLRoutingGenAIMetadata::~NLRoutingGenAIMetadata(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  v2 = *(this + 1);
  *this = &unk_1F4877250;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

uint64_t sirinluexternalnlu_router::NLRoutingGenAIMetadata::NLRoutingGenAIMetadata(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_1F4877250;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_1F4877250;
  *(this + 24) = 0;
  return this;
}

uint64_t sirinluexternalnlu_router::NLRoutingGenAIMetadata::NLRoutingGenAIMetadata(uint64_t this, const sirinluexternalnlu_router::NLRoutingGenAIMetadata *a2)
{
  *this = &unk_1F4877250;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  if (*(a2 + 24))
  {
    v3 = *(a2 + 4);
    *(this + 24) = 1;
    *(this + 16) = v3;
    v2 = 3;
    if ((*(a2 + 24) & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v2 = 2;
  if ((*(a2 + 24) & 2) != 0)
  {
LABEL_5:
    v4 = *(a2 + 5);
    *(this + 24) = v2;
    *(this + 20) = v4;
  }

LABEL_6:
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternalnlu_router::NLRoutingGenAIMetadata::operator=(uint64_t a1, const sirinluexternalnlu_router::NLRoutingGenAIMetadata *a2)
{
  if (a1 != a2)
  {
    sirinluexternalnlu_router::NLRoutingGenAIMetadata::NLRoutingGenAIMetadata(&v7, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v10;
    v10 = v3;
    v4 = *(a1 + 16);
    *(a1 + 16) = v9;
    v9 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v5;
    sirinluexternalnlu_router::NLRoutingGenAIMetadata::~NLRoutingGenAIMetadata(&v7);
  }

  return a1;
}

double sirinluexternalnlu_router::swap(sirinluexternalnlu_router *this, sirinluexternalnlu_router::NLRoutingGenAIMetadata *a2, sirinluexternalnlu_router::NLRoutingGenAIMetadata *a3)
{
  v3 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v3;
  result = *(a2 + 2);
  v5 = *(this + 2);
  *(this + 2) = result;
  *(a2 + 2) = v5;
  v6 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v6;
  return result;
}

uint64_t sirinluexternalnlu_router::NLRoutingGenAIMetadata::NLRoutingGenAIMetadata(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4877250;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a1 + 16) = *(a2 + 16);
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  v4 = *(a1 + 8);
  *(a1 + 8) = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

uint64_t sirinluexternalnlu_router::NLRoutingGenAIMetadata::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluexternalnlu_router::NLRoutingGenAIMetadata::NLRoutingGenAIMetadata(&v7, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v10;
    v10 = v3;
    v4 = *(a1 + 16);
    *(a1 + 16) = v9;
    v9 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v5;
    sirinluexternalnlu_router::NLRoutingGenAIMetadata::~NLRoutingGenAIMetadata(&v7);
  }

  return a1;
}

uint64_t sirinluexternalnlu_router::NLRoutingGenAIMetadata::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if ((*(a2 + 24) & 1) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if (*(a2 + 24))
  {
    return 0;
  }

  if ((*(a1 + 24) & 2) != 0)
  {
    if ((*(a2 + 24) & 2) == 0 || *(a1 + 20) != *(a2 + 20))
    {
      return 0;
    }
  }

  else if ((*(a2 + 24) & 2) != 0)
  {
    return 0;
  }

  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  result = (v3 | v4) == 0;
  if (v3)
  {
    if (v4)
    {
      return sirinluexternalnlu_router::AjaxQuery::operator==(v3, v4);
    }
  }

  return result;
}

uint64_t sirinluexternalnlu_router::NLRoutingGenAIMetadata::hash_value(sirinluexternalnlu_router::NLRoutingGenAIMetadata *this)
{
  if (*(this + 24))
  {
    v1 = *(this + 4);
    if ((*(this + 24) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v2 = 0;
    goto LABEL_6;
  }

  v1 = 0;
  if ((*(this + 24) & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v2 = *(this + 5);
LABEL_6:
  v3 = *(this + 1);
  if (v3)
  {
    v3 = *(v3 + 8);
    if (v3)
    {
      if (*(v3 + 12))
      {
        v3 = *(v3 + 8);
      }

      else
      {
        v3 = 0;
      }
    }
  }

  return v2 ^ v1 ^ v3;
}

uint64_t sirinluexternalnlu_router::NLRoutingGenAIMetadata::makeQuery(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t SIRINLUEXTERNALRewriteMessageReadFrom(uint64_t a1, void *a2)
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
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
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

      if ((v12 >> 3) == 2)
      {
        v20 = PBReaderReadString();
        v21 = *(a1 + 16);
        *(a1 + 16) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          v25 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v25 & 0x7F) << v13;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_34;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_34:
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

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sirinluinternalmention_resolver::MentionResolverRequest::formatText(sirinluinternalmention_resolver::MentionResolverRequest *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "cdm_request_id");
  }

  v6 = *(this + 2);
  v7 = *(this + 3);
  while (v6 != v7)
  {
    v8 = *v6++;
    (*(*v8 + 32))(v8, a2, "contextual_spans");
  }

  v9 = *(this + 5);
  v10 = *(this + 6);
  while (v9 != v10)
  {
    v11 = *v9++;
    (*(*v11 + 32))(v11, a2, "detected_mentions");
  }

  v12 = *(this + 8);
  if (v12)
  {
    (*(*v12 + 32))(v12, a2, "embedding_tensor");
  }

  v13 = *(this + 9);
  v14 = *(this + 10);
  while (v13 != v14)
  {
    v15 = *v13++;
    (*(*v15 + 32))(v15, a2, "entity_candidates");
  }

  v16 = *(this + 12);
  v17 = *(this + 13);
  while (v16 != v17)
  {
    v18 = *v16++;
    (*(*v18 + 32))(v18, a2, "matching_spans");
  }

  if (*(this + 176))
  {
    v19 = *(this + 15);
    PB::TextFormatter::format(a2, "max_candidates");
  }

  v20 = *(this + 16);
  if (v20)
  {
    (*(*v20 + 32))(v20, a2, "nlu_request_id");
  }

  v21 = *(this + 17);
  if (v21)
  {
    (*(*v21 + 32))(v21, a2, "request_id");
  }

  if (*(this + 18))
  {
    PB::TextFormatter::format();
  }

  v22 = *(this + 19);
  if (v22)
  {
    (*(*v22 + 32))(v22, a2, "token_chain");
  }

  if ((*(this + 176) & 2) != 0)
  {
    v23 = *(this + 20);
    PB::TextFormatter::format(a2, "turn_index");
  }

  if (*(this + 21))
  {
    PB::TextFormatter::format();
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluinternalmention_resolver::MentionResolverRequest::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 136);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  v5 = *(v3 + 128);
  if (v5)
  {
    this = PB::Writer::writeSubmessage(a2, v5);
  }

  if (*(v3 + 144))
  {
    this = PB::Writer::write();
  }

  if (*(v3 + 168))
  {
    this = PB::Writer::write();
  }

  v6 = *(v3 + 152);
  if (v6)
  {
    this = PB::Writer::writeSubmessage(a2, v6);
  }

  v7 = *(v3 + 64);
  if (v7)
  {
    this = PB::Writer::writeSubmessage(a2, v7);
  }

  v8 = *(v3 + 72);
  v9 = *(v3 + 80);
  while (v8 != v9)
  {
    v10 = *v8++;
    this = PB::Writer::writeSubmessage(a2, v10);
  }

  v11 = *(v3 + 40);
  v12 = *(v3 + 48);
  while (v11 != v12)
  {
    v13 = *v11++;
    this = PB::Writer::writeSubmessage(a2, v13);
  }

  if (*(v3 + 176))
  {
    v14 = *(v3 + 120);
    this = PB::Writer::writeVarInt(a2);
  }

  v15 = *(v3 + 96);
  v16 = *(v3 + 104);
  while (v15 != v16)
  {
    v17 = *v15++;
    this = PB::Writer::writeSubmessage(a2, v17);
  }

  if ((*(v3 + 176) & 2) != 0)
  {
    v18 = *(v3 + 160);
    this = PB::Writer::writeVarInt(a2);
  }

  v19 = *(v3 + 8);
  if (v19)
  {
    this = PB::Writer::writeSubmessage(a2, v19);
  }

  v21 = *(v3 + 16);
  v20 = *(v3 + 24);
  while (v21 != v20)
  {
    v22 = *v21++;
    this = PB::Writer::writeSubmessage(a2, v22);
  }

  return this;
}

uint64_t sirinluinternalmention_resolver::MentionResolverRequest::readFrom(sirinluinternalmention_resolver::MentionResolverRequest *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
  {
LABEL_74:
    v53 = v4 ^ 1;
  }

  else
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

LABEL_19:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_74;
      }

      switch((v10 >> 3))
      {
        case 1u:
          operator new();
        case 2u:
          operator new();
        case 3u:
          operator new();
        case 4u:
          operator new();
        case 5u:
          operator new();
        case 6u:
          operator new();
        case 7u:
          PB::PtrVector<sirinluexternal::EntityCandidate>::emplace_back<>();
        case 8u:
          PB::PtrVector<sirinluinternal::MatchingSpan>::emplace_back<>();
        case 9u:
          *(this + 176) |= 1u;
          v32 = *(a2 + 1);
          v31 = *(a2 + 2);
          v33 = *a2;
          if (v32 <= 0xFFFFFFFFFFFFFFF5 && v32 + 10 <= v31)
          {
            v34 = 0;
            v35 = 0;
            v36 = 0;
            v37 = (v33 + v32);
            v38 = v32 + 1;
            do
            {
              *(a2 + 1) = v38;
              v39 = *v37++;
              v36 |= (v39 & 0x7F) << v34;
              if ((v39 & 0x80) == 0)
              {
                goto LABEL_72;
              }

              v34 += 7;
              ++v38;
              v14 = v35++ > 8;
            }

            while (!v14);
LABEL_64:
            v36 = 0;
            goto LABEL_72;
          }

          v46 = 0;
          v47 = 0;
          v36 = 0;
          v48 = (v33 + v32);
          v18 = v31 >= v32;
          v49 = v31 - v32;
          if (!v18)
          {
            v49 = 0;
          }

          v50 = v32 + 1;
          while (2)
          {
            if (v49)
            {
              v51 = *v48;
              *(a2 + 1) = v50;
              v36 |= (v51 & 0x7F) << v46;
              if (v51 < 0)
              {
                v46 += 7;
                ++v48;
                --v49;
                ++v50;
                v14 = v47++ > 8;
                if (v14)
                {
                  goto LABEL_64;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v36 = 0;
              }
            }

            else
            {
              v36 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_72:
          *(this + 15) = v36;
          goto LABEL_32;
        case 0xAu:
          PB::PtrVector<sirinluinternal::MatchingSpan>::emplace_back<>();
        case 0xBu:
          *(this + 176) |= 2u;
          v23 = *(a2 + 1);
          v22 = *(a2 + 2);
          v24 = *a2;
          if (v23 <= 0xFFFFFFFFFFFFFFF5 && v23 + 10 <= v22)
          {
            v25 = 0;
            v26 = 0;
            v27 = 0;
            v28 = (v24 + v23);
            v29 = v23 + 1;
            do
            {
              *(a2 + 1) = v29;
              v30 = *v28++;
              v27 |= (v30 & 0x7F) << v25;
              if ((v30 & 0x80) == 0)
              {
                goto LABEL_69;
              }

              v25 += 7;
              ++v29;
              v14 = v26++ > 8;
            }

            while (!v14);
LABEL_56:
            v27 = 0;
            goto LABEL_69;
          }

          v40 = 0;
          v41 = 0;
          v27 = 0;
          v42 = (v24 + v23);
          v18 = v22 >= v23;
          v43 = v22 - v23;
          if (!v18)
          {
            v43 = 0;
          }

          v44 = v23 + 1;
          break;
        case 0xCu:
          operator new();
        case 0xDu:
          PB::PtrVector<sirinluinternal::MatchingSpan>::emplace_back<>();
        default:
          goto LABEL_17;
      }

      while (1)
      {
        if (!v43)
        {
          v27 = 0;
          *(a2 + 24) = 1;
          goto LABEL_69;
        }

        v45 = *v42;
        *(a2 + 1) = v44;
        v27 |= (v45 & 0x7F) << v40;
        if ((v45 & 0x80) == 0)
        {
          break;
        }

        v40 += 7;
        ++v42;
        --v43;
        ++v44;
        v14 = v41++ > 8;
        if (v14)
        {
          goto LABEL_56;
        }
      }

      if (*(a2 + 24))
      {
        v27 = 0;
      }

LABEL_69:
      *(this + 20) = v27;
LABEL_32:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_74;
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
    do
    {
      if (!v19)
      {
        v4 = 1;
        *(a2 + 24) = 1;
        goto LABEL_74;
      }

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
    }

    while (!v14);
LABEL_17:
    if (PB::Reader::skip(a2))
    {
      goto LABEL_32;
    }

    v53 = 0;
  }

  return v53 & 1;
}

void sirinluinternalmention_resolver::MentionResolverRequest::~MentionResolverRequest(sirinluinternalmention_resolver::MentionResolverRequest *this)
{
  sirinluinternalmention_resolver::MentionResolverRequest::~MentionResolverRequest(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F48772A0;
  v2 = *(this + 21);
  *(this + 21) = 0;
  if (v2)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v2);
  }

  v3 = *(this + 19);
  *(this + 19) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 18);
  *(this + 18) = 0;
  if (v4)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v4);
  }

  v5 = *(this + 17);
  *(this + 17) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 16);
  *(this + 16) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v9 = (this + 96);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (this + 72);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v7 = *(this + 8);
  *(this + 8) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v9 = (this + 40);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (this + 16);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v8 = *(this + 1);
  *(this + 1) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  PB::Base::~Base(this);
}

double sirinluinternalmention_resolver::MentionResolverRequest::MentionResolverRequest(sirinluinternalmention_resolver::MentionResolverRequest *this)
{
  *this = &unk_1F48772A0;
  *(this + 21) = 0;
  *(this + 44) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  return result;
}

{
  *this = &unk_1F48772A0;
  *(this + 21) = 0;
  *(this + 44) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  return result;
}

uint64_t sirinluinternalmention_resolver::MentionResolverRequest::MentionResolverRequest(uint64_t this, const sirinluinternalmention_resolver::MentionResolverRequest *a2)
{
  *(this + 8) = 0u;
  *(this + 40) = 0u;
  *(this + 72) = 0u;
  *this = &unk_1F48772A0;
  *(this + 128) = 0u;
  *(this + 168) = 0;
  *(this + 176) = 0;
  *(this + 24) = 0u;
  *(this + 56) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 144) = 0u;
  if (*(a2 + 17))
  {
    operator new();
  }

  if (*(a2 + 16))
  {
    operator new();
  }

  if (*(a2 + 18))
  {
    operator new();
  }

  if (*(a2 + 21))
  {
    operator new();
  }

  if (*(a2 + 19))
  {
    operator new();
  }

  if (*(a2 + 8))
  {
    operator new();
  }

  v2 = *(a2 + 9);
  if (v2 != *(a2 + 10))
  {
    v3 = *v2;
    PB::PtrVector<sirinluexternal::EntityCandidate>::emplace_back<sirinluexternal::EntityCandidate const&>();
  }

  v4 = *(a2 + 5);
  if (v4 != *(a2 + 6))
  {
    v5 = *v4;
    PB::PtrVector<sirinluinternal::MatchingSpan>::emplace_back<sirinluinternal::MatchingSpan const&>();
  }

  if (*(a2 + 176))
  {
    v6 = *(a2 + 15);
    *(this + 176) |= 1u;
    *(this + 120) = v6;
  }

  v7 = *(a2 + 12);
  if (v7 != *(a2 + 13))
  {
    v8 = *v7;
    PB::PtrVector<sirinluinternal::MatchingSpan>::emplace_back<sirinluinternal::MatchingSpan const&>();
  }

  if ((*(a2 + 176) & 2) != 0)
  {
    v9 = *(a2 + 20);
    *(this + 176) |= 2u;
    *(this + 160) = v9;
  }

  if (*(a2 + 1))
  {
    operator new();
  }

  v10 = *(a2 + 2);
  if (v10 != *(a2 + 3))
  {
    v11 = *v10;
    PB::PtrVector<sirinluinternal::MatchingSpan>::emplace_back<sirinluinternal::MatchingSpan const&>();
  }

  return this;
}

uint64_t sirinluinternalmention_resolver::MentionResolverRequest::operator=(uint64_t a1, const sirinluinternalmention_resolver::MentionResolverRequest *a2)
{
  if (a1 != a2)
  {
    sirinluinternalmention_resolver::MentionResolverRequest::MentionResolverRequest(v5, a2);
    sirinluinternalmention_resolver::swap(a1, v5, v3);
    sirinluinternalmention_resolver::MentionResolverRequest::~MentionResolverRequest(v5);
  }

  return a1;
}

uint64_t sirinluinternalmention_resolver::swap(uint64_t this, sirinluinternalmention_resolver::MentionResolverRequest *a2, sirinluinternalmention_resolver::MentionResolverRequest *a3)
{
  v3 = *(this + 176);
  *(this + 176) = *(a2 + 44);
  *(a2 + 44) = v3;
  v4 = *(this + 136);
  *(this + 136) = *(a2 + 17);
  *(a2 + 17) = v4;
  v5 = *(this + 128);
  *(this + 128) = *(a2 + 16);
  *(a2 + 16) = v5;
  v6 = *(this + 144);
  *(this + 144) = *(a2 + 18);
  *(a2 + 18) = v6;
  v7 = *(this + 168);
  *(this + 168) = *(a2 + 21);
  *(a2 + 21) = v7;
  v8 = *(this + 152);
  *(this + 152) = *(a2 + 19);
  *(a2 + 19) = v8;
  v9 = *(this + 64);
  *(this + 64) = *(a2 + 8);
  *(a2 + 8) = v9;
  v10 = *(this + 72);
  *(this + 72) = *(a2 + 9);
  *(a2 + 9) = v10;
  v11 = *(this + 80);
  *(this + 80) = *(a2 + 10);
  *(a2 + 10) = v11;
  v12 = *(this + 88);
  *(this + 88) = *(a2 + 11);
  *(a2 + 11) = v12;
  v13 = *(this + 40);
  *(this + 40) = *(a2 + 5);
  *(a2 + 5) = v13;
  v14 = *(this + 48);
  *(this + 48) = *(a2 + 6);
  *(a2 + 6) = v14;
  v15 = *(this + 56);
  *(this + 56) = *(a2 + 7);
  *(a2 + 7) = v15;
  v16 = *(this + 96);
  *(this + 96) = *(a2 + 12);
  *(a2 + 12) = v16;
  v17 = *(this + 104);
  *(this + 104) = *(a2 + 13);
  *(a2 + 13) = v17;
  v19 = *(this + 112);
  v18 = *(this + 120);
  v20 = *(a2 + 15);
  *(this + 112) = *(a2 + 14);
  *(this + 120) = v20;
  *(a2 + 14) = v19;
  *(a2 + 15) = v18;
  v21 = *(this + 160);
  *(this + 160) = *(a2 + 20);
  *(a2 + 20) = v21;
  v22 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v22;
  v23 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v23;
  v24 = *(this + 24);
  *(this + 24) = *(a2 + 3);
  *(a2 + 3) = v24;
  v25 = *(this + 32);
  *(this + 32) = *(a2 + 4);
  *(a2 + 4) = v25;
  return this;
}

uint64_t sirinluinternalmention_resolver::MentionResolverRequest::MentionResolverRequest(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = 0u;
  v4 = (a1 + 40);
  *(a1 + 72) = 0u;
  v5 = (a1 + 72);
  *a1 = &unk_1F48772A0;
  *(a1 + 128) = 0u;
  v6 = (a1 + 128);
  *(a1 + 168) = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 176) = *(a2 + 176);
  *(a2 + 176) = 0;
  v7 = *(a2 + 136);
  *(a2 + 136) = 0;
  v8 = *(a1 + 136);
  *(a1 + 136) = v7;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(a2 + 128);
  *(a2 + 128) = 0;
  v10 = *v6;
  *v6 = v9;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = *(a2 + 144);
  *(a2 + 144) = 0;
  v12 = *(a1 + 144);
  *(a1 + 144) = v11;
  if (v12)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v12);
  }

  v13 = *(a2 + 168);
  *(a2 + 168) = 0;
  v14 = *(a1 + 168);
  *(a1 + 168) = v13;
  if (v14)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v14);
  }

  v15 = *(a2 + 152);
  *(a2 + 152) = 0;
  v16 = *(a1 + 152);
  *(a1 + 152) = v15;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  v17 = *(a2 + 64);
  *(a2 + 64) = 0;
  v18 = *(a1 + 64);
  *(a1 + 64) = v17;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__vdeallocate(v5);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__vdeallocate(v4);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a1 + 120) = *(a2 + 120);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__vdeallocate((a1 + 96));
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 96) = 0;
  *(a1 + 160) = *(a2 + 160);
  v19 = *(a2 + 8);
  *(a2 + 8) = 0;
  v20 = *(a1 + 8);
  *(a1 + 8) = v19;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__vdeallocate((a1 + 16));
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  return a1;
}

uint64_t sirinluinternalmention_resolver::MentionResolverRequest::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluinternalmention_resolver::MentionResolverRequest::MentionResolverRequest(v5, a2);
    sirinluinternalmention_resolver::swap(a1, v5, v3);
    sirinluinternalmention_resolver::MentionResolverRequest::~MentionResolverRequest(v5);
  }

  return a1;
}

BOOL sirinluinternalmention_resolver::MentionResolverRequest::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 136);
  v5 = *(a2 + 136);
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

  v6 = *(a1 + 128);
  v7 = *(a2 + 128);
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

  v8 = *(a1 + 144);
  v9 = *(a2 + 144);
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

    v14 = v10 >= 0 ? *(a1 + 144) : *v8;
    v15 = v13 >= 0 ? *(a2 + 144) : *v9;
    if (memcmp(v14, v15, v11))
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v17 = *(a1 + 168);
  v18 = *(a2 + 168);
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

  v19 = *(a1 + 152);
  v20 = *(a2 + 152);
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

  v21 = *(a1 + 64);
  v22 = *(a2 + 64);
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

  if (!PB::PtrVector<sirinluexternal::EntityCandidate>::operator==((a1 + 72), *(a2 + 72), *(a2 + 80)) || !PB::PtrVector<sirinluinternal::MatchingSpan>::operator==((a1 + 40), *(a2 + 40), *(a2 + 48)))
  {
    return 0;
  }

  v27 = *(a1 + 176);
  v28 = *(a2 + 176);
  if (v27)
  {
    if ((*(a2 + 176) & 1) == 0 || *(a1 + 120) != *(a2 + 120))
    {
      return 0;
    }
  }

  else if (*(a2 + 176))
  {
    return 0;
  }

  if (!PB::PtrVector<sirinluinternal::MatchingSpan>::operator==((a1 + 96), *(a2 + 96), *(a2 + 104)))
  {
    return 0;
  }

  if ((v27 & 2) != 0)
  {
    if ((v28 & 2) == 0 || *(a1 + 160) != *(a2 + 160))
    {
      return 0;
    }
  }

  else if ((v28 & 2) != 0)
  {
    return 0;
  }

  v23 = *(a1 + 8);
  v24 = *(a2 + 8);
  if (!v23)
  {
    if (!v24)
    {
      goto LABEL_62;
    }

    return 0;
  }

  if (!v24 || !sirinluexternal::RequestID::operator==(v23, v24))
  {
    return 0;
  }

LABEL_62:
  v25 = *(a2 + 16);
  v26 = *(a2 + 24);

  return PB::PtrVector<sirinluinternal::MatchingSpan>::operator==((a1 + 16), v25, v26);
}