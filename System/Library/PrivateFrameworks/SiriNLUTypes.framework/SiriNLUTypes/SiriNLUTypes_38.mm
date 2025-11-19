uint64_t SIRINLUEXTERNALCDM_PLANNERCDMPlannerRequestIdentifierReadFrom(uint64_t a1, void *a2)
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
        v20 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v20 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v20 & 0x7F) << v5;
        if ((v20 & 0x80) == 0)
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

      v13 = (v12 >> 3) - 1;
      if (v13 >= 3)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v14 = off_1E8328208[v13];
        v15 = PBReaderReadString();
        v16 = *v14;
        v17 = *(a1 + v16);
        *(a1 + v16) = v15;
      }

      v18 = [a2 position];
    }

    while (v18 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRINLUINTERNALOverrideValueReadFrom(id *a1, void *a2)
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
          v14 = objc_alloc_init(SIRINLUINTERNALLVCOverrideValue);
          objc_storeStrong(a1 + 2, v14);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !SIRINLUINTERNALLVCOverrideValueReadFrom(v14, a2))
          {
LABEL_38:

            return 0;
          }

          goto LABEL_35;
        }

        if (v13 == 4)
        {
          v14 = objc_alloc_init(SIRINLUINTERNALPlanOverrideValue);
          objc_storeStrong(a1 + 3, v14);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !SIRINLUINTERNALPlanOverrideValueReadFrom(v14, a2))
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
          v14 = objc_alloc_init(SIRINLUINTERNALCCQROverrideTemplate);
          objc_storeStrong(a1 + 1, v14);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !SIRINLUINTERNALCCQROverrideTemplateReadFrom(v14, a2))
          {
            goto LABEL_38;
          }

          goto LABEL_35;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(SIRINLUEXTERNALUserParse);
          objc_storeStrong(a1 + 4, v14);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !SIRINLUEXTERNALUserParseReadFrom(v14, a2))
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

uint64_t sirinluexternalsubword_embedding::SubwordEmbeddingResponse::formatText(sirinluexternalsubword_embedding::SubwordEmbeddingResponse *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "subword_token_chain");
  }

  v6 = *(this + 2);
  if (v6)
  {
    (*(*v6 + 32))(v6, a2, "subword_token_embedding");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternalsubword_embedding::SubwordEmbeddingResponse::writeTo(uint64_t this, PB::Writer *a2)
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

uint64_t sirinluexternalsubword_embedding::SubwordEmbeddingResponse::readFrom(sirinluexternalsubword_embedding::SubwordEmbeddingResponse *this, PB::Reader *a2)
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

void sirinluexternalsubword_embedding::SubwordEmbeddingResponse::~SubwordEmbeddingResponse(sirinluexternalsubword_embedding::SubwordEmbeddingResponse *this)
{
  sirinluexternalsubword_embedding::SubwordEmbeddingResponse::~SubwordEmbeddingResponse(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4877750;
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

void *sirinluexternalsubword_embedding::SubwordEmbeddingResponse::SubwordEmbeddingResponse(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4877750;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4877750;
  return this;
}

void *sirinluexternalsubword_embedding::SubwordEmbeddingResponse::SubwordEmbeddingResponse(void *this, const sirinluexternalsubword_embedding::SubwordEmbeddingResponse *a2)
{
  *this = &unk_1F4877750;
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

uint64_t sirinluexternalsubword_embedding::SubwordEmbeddingResponse::operator=(uint64_t a1, const sirinluexternalsubword_embedding::SubwordEmbeddingResponse *a2)
{
  if (a1 != a2)
  {
    sirinluexternalsubword_embedding::SubwordEmbeddingResponse::SubwordEmbeddingResponse(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    sirinluexternalsubword_embedding::SubwordEmbeddingResponse::~SubwordEmbeddingResponse(&v5);
  }

  return a1;
}

uint64_t sirinluexternalsubword_embedding::swap(uint64_t this, sirinluexternalsubword_embedding::SubwordEmbeddingResponse *a2, sirinluexternalsubword_embedding::SubwordEmbeddingResponse *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  v4 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v4;
  return this;
}

void *sirinluexternalsubword_embedding::SubwordEmbeddingResponse::SubwordEmbeddingResponse(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F4877750;
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

uint64_t sirinluexternalsubword_embedding::SubwordEmbeddingResponse::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluexternalsubword_embedding::SubwordEmbeddingResponse::SubwordEmbeddingResponse(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    sirinluexternalsubword_embedding::SubwordEmbeddingResponse::~SubwordEmbeddingResponse(&v5);
  }

  return a1;
}

BOOL sirinluexternalsubword_embedding::SubwordEmbeddingResponse::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (v5 && sirinluinternal::SubwordTokenChain::operator==(v4, v5))
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

    return sirinluinternalembedding::EmbeddingTensorOutput::operator==(v10, v7);
  }

  return result;
}

unint64_t sirinluexternalsubword_embedding::SubwordEmbeddingResponse::hash_value(sirinluexternalsubword_embedding::SubwordEmbeddingResponse *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    v3 = sirinluinternal::SubwordTokenChain::hash_value(v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 2);
  if (v4)
  {
    v4 = sirinluinternalembedding::EmbeddingTensorOutput::hash_value(v4);
  }

  return v4 ^ v3;
}

uint64_t sirinluexternalsubword_embedding::SubwordEmbeddingResponse::makeSubwordTokenChain(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternalsubword_embedding::SubwordEmbeddingResponse::makeSubwordTokenEmbedding(uint64_t this)
{
  if (!*(this + 16))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternaloverrides::OverridesRequest::formatText(sirinluinternaloverrides::OverridesRequest *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, a2, "inputs");
  }

  v8 = *(this + 4);
  v9 = *(this + 5);
  while (v8 != v9)
  {
    v10 = *v8++;
    (*(*v10 + 32))(v10, a2, "matching_spans");
  }

  v11 = *(this + 7);
  v12 = *(this + 8);
  while (v11 != v12)
  {
    v13 = *v11++;
    (*(*v13 + 32))(v13, a2, "system_dialog_acts");
  }

  v14 = *(this + 10);
  if (v14)
  {
    (*(*v14 + 32))(v14, a2, "token_chain");
  }

  v15 = *(this + 11);
  if (v15)
  {
    (*(*v15 + 32))(v15, a2, "turn_context");
  }

  if (*(this + 12))
  {
    PB::TextFormatter::format();
  }

  return MEMORY[0x1EEE30A90](a2);
}

void *sirinluinternaloverrides::OverridesRequest::writeTo(void *this, PB::Writer *a2)
{
  v3 = this;
  if (this[12])
  {
    this = PB::Writer::write();
  }

  v4 = v3[10];
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  v5 = v3[4];
  v6 = v3[5];
  while (v5 != v6)
  {
    v7 = *v5++;
    this = PB::Writer::writeSubmessage(a2, v7);
  }

  v8 = v3[7];
  v9 = v3[8];
  while (v8 != v9)
  {
    v10 = *v8++;
    this = PB::Writer::writeSubmessage(a2, v10);
  }

  v11 = v3[11];
  if (v11)
  {
    this = PB::Writer::writeSubmessage(a2, v11);
  }

  v13 = v3[1];
  v12 = v3[2];
  while (v13 != v12)
  {
    v14 = *v13++;
    this = PB::Writer::writeSubmessage(a2, v14);
  }

  return this;
}

uint64_t sirinluinternaloverrides::OverridesRequest::readFrom(sirinluinternaloverrides::OverridesRequest *this, PB::Reader *a2)
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
        goto LABEL_37;
      }

      v21 = v9 >> 3;
      if ((v9 >> 3) > 3)
      {
        switch(v21)
        {
          case 4:
            PB::PtrVector<sirinluexternal::SystemDialogAct>::emplace_back<>();
          case 5:
            operator new();
          case 6:
            operator new();
        }
      }

      else
      {
        switch(v21)
        {
          case 1:
            operator new();
          case 2:
            operator new();
          case 3:
            PB::PtrVector<sirinluinternal::MatchingSpan>::emplace_back<>();
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
        goto LABEL_37;
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

LABEL_37:
  v23 = v4 ^ 1;
  return v23 & 1;
}

void sirinluinternaloverrides::OverridesRequest::~OverridesRequest(sirinluinternaloverrides::OverridesRequest *this)
{
  sirinluinternaloverrides::OverridesRequest::~OverridesRequest(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F48777A0;
  v2 = *(this + 12);
  *(this + 12) = 0;
  if (v2)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v2);
  }

  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = (this + 56);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = (this + 32);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v5);
  if (*(this + 1))
  {
    std::vector<std::unique_ptr<siricommon::StringValue>>::clear[abi:ne200100](this + 1);
    operator delete(*(this + 1));
  }

  PB::Base::~Base(this);
}

double sirinluinternaloverrides::OverridesRequest::OverridesRequest(sirinluinternaloverrides::OverridesRequest *this)
{
  *this = &unk_1F48777A0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  return result;
}

{
  *this = &unk_1F48777A0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  return result;
}

uint64_t sirinluinternaloverrides::OverridesRequest::OverridesRequest(uint64_t this, const sirinluinternaloverrides::OverridesRequest *a2)
{
  *(this + 8) = 0u;
  *(this + 56) = 0u;
  *this = &unk_1F48777A0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  if (*(a2 + 12))
  {
    operator new();
  }

  if (*(a2 + 10))
  {
    operator new();
  }

  v2 = *(a2 + 4);
  if (v2 != *(a2 + 5))
  {
    v3 = *v2;
    PB::PtrVector<sirinluinternal::MatchingSpan>::emplace_back<sirinluinternal::MatchingSpan const&>();
  }

  v4 = *(a2 + 7);
  if (v4 != *(a2 + 8))
  {
    v5 = *v4;
    PB::PtrVector<sirinluexternal::SystemDialogAct>::emplace_back<sirinluexternal::SystemDialogAct const&>();
  }

  if (*(a2 + 11))
  {
    operator new();
  }

  v6 = *(a2 + 1);
  if (v6 != *(a2 + 2))
  {
    v7 = *v6;
    operator new();
  }

  return this;
}

const sirinluinternaloverrides::OverridesRequest *sirinluinternaloverrides::OverridesRequest::operator=(const sirinluinternaloverrides::OverridesRequest *a1, const sirinluinternaloverrides::OverridesRequest *a2)
{
  if (a1 != a2)
  {
    sirinluinternaloverrides::OverridesRequest::OverridesRequest(v5, a2);
    sirinluinternaloverrides::swap(a1, v5, v3);
    sirinluinternaloverrides::OverridesRequest::~OverridesRequest(v5);
  }

  return a1;
}

void *sirinluinternaloverrides::swap(void *this, sirinluinternaloverrides::OverridesRequest *a2, sirinluinternaloverrides::OverridesRequest *a3)
{
  v3 = this[12];
  this[12] = *(a2 + 12);
  *(a2 + 12) = v3;
  v4 = this[10];
  this[10] = *(a2 + 10);
  *(a2 + 10) = v4;
  v5 = this[4];
  this[4] = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = this[5];
  this[5] = *(a2 + 5);
  *(a2 + 5) = v6;
  v7 = this[6];
  this[6] = *(a2 + 6);
  *(a2 + 6) = v7;
  v8 = this[7];
  this[7] = *(a2 + 7);
  *(a2 + 7) = v8;
  v9 = this[8];
  this[8] = *(a2 + 8);
  *(a2 + 8) = v9;
  v10 = this[9];
  this[9] = *(a2 + 9);
  *(a2 + 9) = v10;
  v11 = this[11];
  this[11] = *(a2 + 11);
  *(a2 + 11) = v11;
  v12 = this[1];
  this[1] = *(a2 + 1);
  *(a2 + 1) = v12;
  v13 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v13;
  v14 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v14;
  return this;
}

uint64_t sirinluinternaloverrides::OverridesRequest::OverridesRequest(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *a1 = &unk_1F48777A0;
  *(a1 + 56) = 0u;
  v5 = (a1 + 56);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  v6 = *(a2 + 96);
  *(a2 + 96) = 0;
  v7 = *(a1 + 96);
  *(a1 + 96) = v6;
  if (v7)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v7);
  }

  v8 = *(a2 + 80);
  *(a2 + 80) = 0;
  v9 = *(a1 + 80);
  *(a1 + 80) = v8;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__vdeallocate((a1 + 32));
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__vdeallocate(v5);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v10 = *(a2 + 88);
  *(a2 + 88) = 0;
  v11 = *(a1 + 88);
  *(a1 + 88) = v10;
  if (v11)
  {
    (*(*v11 + 8))(v11);
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
  return a1;
}

void *sirinluinternaloverrides::OverridesRequest::operator=(void *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluinternaloverrides::OverridesRequest::OverridesRequest(v5, a2);
    sirinluinternaloverrides::swap(a1, v5, v3);
    sirinluinternaloverrides::OverridesRequest::~OverridesRequest(v5);
  }

  return a1;
}

BOOL sirinluinternaloverrides::OverridesRequest::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 96);
  v5 = *(a2 + 96);
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

    v10 = v6 >= 0 ? *(a1 + 96) : *v4;
    v11 = v9 >= 0 ? *(a2 + 96) : *v5;
    if (memcmp(v10, v11, v7))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v13 = *(a1 + 80);
  v14 = *(a2 + 80);
  if (v13)
  {
    if (!v14 || !sirinluinternal::TokenChain::operator==(v13, v14))
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  if (!PB::PtrVector<sirinluinternal::MatchingSpan>::operator==((a1 + 32), *(a2 + 32), *(a2 + 40)) || !PB::PtrVector<sirinluexternal::SystemDialogAct>::operator==(a1 + 56, *(a2 + 56), *(a2 + 64)))
  {
    return 0;
  }

  v15 = *(a1 + 88);
  v16 = *(a2 + 88);
  if (!v15)
  {
    if (!v16)
    {
      goto LABEL_31;
    }

    return 0;
  }

  if (!v16 || !sirinluexternal::TurnContext::operator==(v15, v16))
  {
    return 0;
  }

LABEL_31:
  v17 = *(a2 + 8);
  v18 = *(a2 + 16);

  return PB::PtrVector<sirinluinternaloverrides::TurnInputAndPreprocessing>::operator==((a1 + 8), v17, v18);
}

BOOL PB::PtrVector<sirinluexternal::SystemDialogAct>::operator==(uint64_t a1, void **a2, uint64_t a3)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  if ((v3 - *a1) != (a3 - a2))
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
    result = sirinluexternal::SystemDialogAct::operator==(v6, v8);
  }

  while (result && v4 != v3);
  return result;
}

BOOL PB::PtrVector<sirinluinternaloverrides::TurnInputAndPreprocessing>::operator==(uint64_t **a1, uint64_t *a2, uint64_t a3)
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
    result = sirinluinternaloverrides::TurnInputAndPreprocessing::operator==(v6, v8);
  }

  while (result && v4 != v3);
  return result;
}

unint64_t sirinluinternaloverrides::OverridesRequest::hash_value(sirinluinternaloverrides::OverridesRequest *this)
{
  v2 = *(this + 12);
  if (v2)
  {
    v3 = std::__string_hash<char>::operator()[abi:ne200100](v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 10);
  if (v4)
  {
    v5 = sirinluinternal::TokenChain::hash_value(v4);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(this + 4);
  v7 = *(this + 5);
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

  v10 = *(this + 7);
  v11 = *(this + 8);
  if (v10 == v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = 0;
    do
    {
      v13 = *v10++;
      v12 ^= sirinluexternal::SystemDialogAct::hash_value(v13);
    }

    while (v10 != v11);
  }

  v14 = *(this + 11);
  if (v14)
  {
    v15 = sirinluexternal::TurnContext::hash_value(v14);
  }

  else
  {
    v15 = 0;
  }

  v16 = *(this + 1);
  v17 = *(this + 2);
  if (v16 == v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = 0;
    do
    {
      v19 = *v16++;
      v18 ^= sirinluinternaloverrides::TurnInputAndPreprocessing::hash_value(v19);
    }

    while (v16 != v17);
  }

  return v5 ^ v3 ^ v8 ^ v12 ^ v15 ^ v18;
}

uint64_t sirinluinternaloverrides::OverridesRequest::makeTokenChain(uint64_t this)
{
  if (!*(this + 80))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternaloverrides::OverridesRequest::makeTurnContext(uint64_t this)
{
  if (!*(this + 88))
  {
    operator new();
  }

  return this;
}

uint64_t SIRINLUEXTERNALNLU_ROUTERNLRouterTurnContextReadFrom(void *a1, void *a2)
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
          v14 = objc_alloc_init(SIRINLUEXTERNALSystemDialogAct);
          [a1 addSystemDialogActs:v14];
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !SIRINLUEXTERNALSystemDialogActReadFrom(&v14->super.super.isa, a2))
          {
LABEL_37:

            return 0;
          }

          goto LABEL_34;
        }

        if (v13 == 4)
        {
          v14 = objc_alloc_init(SIRINLUEXTERNALEntityCandidate);
          [a1 addSalientEntities:v14];
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !SIRINLUEXTERNALEntityCandidateReadFrom(&v14->super.super.isa, a2))
          {
            goto LABEL_37;
          }

          goto LABEL_34;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(SIRINLUEXTERNALTask);
          [a1 addActiveTasks:v14];
          goto LABEL_29;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(SIRINLUEXTERNALTask);
          [a1 addExecutedTasks:v14];
LABEL_29:
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !SIRINLUEXTERNALTaskReadFrom(&v14->super.super.isa, a2))
          {
            goto LABEL_37;
          }

LABEL_34:
          PBReaderRecallMark();

          goto LABEL_35;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_35:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sirinluinternalcati::CATIResponse::formatText(sirinluinternalcati::CATIResponse *this, PB::TextFormatter *a2, const char *a3)
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

uint64_t sirinluinternalcati::CATIResponse::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  for (i = *(this + 16); v2 != i; this = PB::Writer::writeSubmessage(a2, v5))
  {
    v5 = *v2++;
  }

  return this;
}

uint64_t sirinluinternalcati::CATIResponse::readFrom(sirinluinternalcati::CATIResponse *this, PB::Reader *a2)
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

void sirinluinternalcati::CATIResponse::~CATIResponse(sirinluinternalcati::CATIResponse *this)
{
  *this = &unk_1F48777F0;
  v2 = (this + 8);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v2);
  PB::Base::~Base(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F48777F0;
  v2 = (this + 8);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v2);

  PB::Base::~Base(this);
}

{
  *this = &unk_1F48777F0;
  v2 = (this + 8);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v2);

  PB::Base::~Base(this);
}

void *sirinluinternalcati::CATIResponse::CATIResponse(void *this)
{
  *this = &unk_1F48777F0;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_1F48777F0;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

void *sirinluinternalcati::CATIResponse::CATIResponse(void *this, const sirinluinternalcati::CATIResponse *a2)
{
  this[1] = 0;
  *this = &unk_1F48777F0;
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

uint64_t sirinluinternalcati::CATIResponse::operator=(uint64_t a1, const sirinluinternalcati::CATIResponse *a2)
{
  if (a1 != a2)
  {
    sirinluinternalcati::CATIResponse::CATIResponse(&v6, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v4;
    v6 = &unk_1F48777F0;
    v9 = &v7;
    std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v9);
    PB::Base::~Base(&v6);
  }

  return a1;
}

void *sirinluinternalcati::swap(void *this, sirinluinternalcati::CATIResponse *a2, sirinluinternalcati::CATIResponse *a3)
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

uint64_t sirinluinternalcati::CATIResponse::CATIResponse(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F48777F0;
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
  *a1 = &unk_1F48777F0;
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

uint64_t sirinluinternalcati::CATIResponse::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v9 = &unk_1F48777F0;
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
    v9 = &unk_1F48777F0;
    std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v12);
    PB::Base::~Base(&v9);
  }

  return a1;
}

uint64_t sirinluinternalcati::CATIResponse::hash_value(sirinluinternalcati::CATIResponse *this)
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

uint64_t sirinluinternal::ContextRule::formatText(sirinluinternal::ContextRule *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if ((*(this + 48) & 2) != 0)
  {
    v5 = *(this + 44);
    PB::TextFormatter::format(a2, "apply_to_prompt_scenarios");
  }

  v6 = *(this + 1);
  v7 = *(this + 2);
  while (v6 != v7)
  {
    v8 = *v6++;
    (*(*v8 + 32))(v8, a2, "matching_spans");
  }

  if (*(this + 48))
  {
    v9 = *(this + 10);
    PB::TextFormatter::format(a2, "sda_comparison_mode");
  }

  v10 = *(this + 4);
  if (v10)
  {
    (*(*v10 + 32))(v10, a2, "turn_context");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluinternal::ContextRule::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 32);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    this = PB::Writer::writeSubmessage(a2, v7);
  }

  v8 = *(v3 + 48);
  if ((v8 & 2) != 0)
  {
    v9 = *(v3 + 44);
    this = PB::Writer::write(a2);
    v8 = *(v3 + 48);
  }

  if (v8)
  {
    v10 = *(v3 + 40);

    return PB::Writer::writeVarInt(a2);
  }

  return this;
}

uint64_t sirinluinternal::ContextRule::readFrom(sirinluinternal::ContextRule *this, PB::Reader *a2)
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
    if ((v10 >> 3) > 2)
    {
      if (v22 == 3)
      {
        *(this + 48) |= 2u;
        v32 = *(a2 + 1);
        if (v32 >= *(a2 + 2))
        {
          v35 = 0;
          *(a2 + 24) = 1;
        }

        else
        {
          v33 = v32 + 1;
          v34 = *(*a2 + v32);
          *(a2 + 1) = v33;
          v35 = v34 != 0;
        }

        *(this + 44) = v35;
        goto LABEL_50;
      }

      if (v22 == 4)
      {
        *(this + 48) |= 1u;
        v24 = *(a2 + 1);
        v23 = *(a2 + 2);
        v25 = *a2;
        if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
        {
          v36 = 0;
          v37 = 0;
          v28 = 0;
          v38 = (v25 + v24);
          v18 = v23 >= v24;
          v39 = v23 - v24;
          if (!v18)
          {
            v39 = 0;
          }

          v40 = v24 + 1;
          while (1)
          {
            if (!v39)
            {
              LODWORD(v28) = 0;
              *(a2 + 24) = 1;
              goto LABEL_49;
            }

            v41 = *v38;
            *(a2 + 1) = v40;
            v28 |= (v41 & 0x7F) << v36;
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
LABEL_43:
              LODWORD(v28) = 0;
              goto LABEL_49;
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
              goto LABEL_43;
            }
          }
        }

LABEL_49:
        *(this + 10) = v28;
        goto LABEL_50;
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
        PB::PtrVector<sirinluinternal::MatchingSpan>::emplace_back<>();
      }
    }

LABEL_17:
    if ((PB::Reader::skip(a2) & 1) == 0)
    {
      v43 = 0;
      return v43 & 1;
    }

LABEL_50:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v43 = v4 ^ 1;
  return v43 & 1;
}

void sirinluinternal::ContextRule::~ContextRule(sirinluinternal::ContextRule *this)
{
  sirinluinternal::ContextRule::~ContextRule(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4877840;
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = (this + 8);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v3);

  PB::Base::~Base(this);
}

double sirinluinternal::ContextRule::ContextRule(sirinluinternal::ContextRule *this)
{
  *this = &unk_1F4877840;
  *(this + 12) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 37) = 0;
  return result;
}

{
  *this = &unk_1F4877840;
  *(this + 12) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 37) = 0;
  return result;
}

uint64_t sirinluinternal::ContextRule::ContextRule(uint64_t this, const sirinluinternal::ContextRule *a2)
{
  *this = &unk_1F4877840;
  *(this + 8) = 0u;
  *(this + 48) = 0;
  *(this + 24) = 0u;
  *(this + 37) = 0;
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

  v4 = *(a2 + 48);
  if ((v4 & 2) != 0)
  {
    v5 = *(a2 + 44);
    *(this + 48) |= 2u;
    *(this + 44) = v5;
    v4 = *(a2 + 48);
  }

  if (v4)
  {
    v6 = *(a2 + 10);
    *(this + 48) |= 1u;
    *(this + 40) = v6;
  }

  return this;
}

uint64_t sirinluinternal::ContextRule::operator=(uint64_t a1, const sirinluinternal::ContextRule *a2)
{
  if (a1 != a2)
  {
    sirinluinternal::ContextRule::ContextRule(v9, a2);
    v3 = *(a1 + 48);
    *(a1 + 48) = v14;
    v14 = v3;
    v4 = v11;
    v5 = *(a1 + 8);
    *(a1 + 8) = v10;
    v6 = *(a1 + 24);
    *(a1 + 24) = v4;
    v10 = v5;
    v11 = v6;
    LOBYTE(v3) = *(a1 + 44);
    *(a1 + 44) = v13;
    v13 = v3;
    v7 = *(a1 + 40);
    *(a1 + 40) = v12;
    v12 = v7;
    sirinluinternal::ContextRule::~ContextRule(v9);
  }

  return a1;
}

uint64_t sirinluinternal::swap(uint64_t this, sirinluinternal::ContextRule *a2, sirinluinternal::ContextRule *a3)
{
  v3 = *(this + 48);
  *(this + 48) = *(a2 + 12);
  *(a2 + 12) = v3;
  v4 = *(this + 32);
  *(this + 32) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v5;
  v6 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v6;
  v7 = *(this + 24);
  *(this + 24) = *(a2 + 3);
  *(a2 + 3) = v7;
  LOBYTE(v7) = *(this + 44);
  *(this + 44) = *(a2 + 44);
  *(a2 + 44) = v7;
  LODWORD(v7) = *(this + 40);
  *(this + 40) = *(a2 + 10);
  *(a2 + 10) = v7;
  return this;
}

uint64_t sirinluinternal::ContextRule::ContextRule(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4877840;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 24) = 0u;
  *(a1 + 37) = 0;
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  v5 = *(a2 + 32);
  *(a2 + 32) = 0;
  v6 = *(a1 + 32);
  *(a1 + 32) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__vdeallocate(v4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t sirinluinternal::ContextRule::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluinternal::ContextRule::ContextRule(v9, a2);
    v3 = *(a1 + 48);
    *(a1 + 48) = v14;
    v14 = v3;
    v4 = v11;
    v5 = *(a1 + 8);
    *(a1 + 8) = v10;
    v6 = *(a1 + 24);
    *(a1 + 24) = v4;
    v10 = v5;
    v11 = v6;
    LOBYTE(v3) = *(a1 + 44);
    *(a1 + 44) = v13;
    v13 = v3;
    v7 = *(a1 + 40);
    *(a1 + 40) = v12;
    v12 = v7;
    sirinluinternal::ContextRule::~ContextRule(v9);
  }

  return a1;
}

BOOL sirinluinternal::ContextRule::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a2 + 32);
  if (v4)
  {
    if (!v5 || !sirinluexternal::TurnContext::operator==(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  result = PB::PtrVector<sirinluinternal::MatchingSpan>::operator==((a1 + 8), *(a2 + 8), *(a2 + 16));
  if (!result)
  {
    return result;
  }

  if ((*(a1 + 48) & 2) == 0)
  {
    if ((*(a2 + 48) & 2) == 0)
    {
      goto LABEL_14;
    }

    return 0;
  }

  if ((*(a2 + 48) & 2) == 0 || *(a1 + 44) != *(a2 + 44))
  {
    return 0;
  }

LABEL_14:
  result = (*(a2 + 48) & 1) == 0;
  if (*(a1 + 48))
  {
    return (*(a2 + 48) & 1) != 0 && *(a1 + 40) == *(a2 + 40);
  }

  return result;
}

unint64_t sirinluinternal::ContextRule::hash_value(sirinluinternal::ContextRule *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v3 = sirinluexternal::TurnContext::hash_value(v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 1);
  v5 = *(this + 2);
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      v7 = *v4++;
      v6 ^= sirinluinternal::MatchingSpan::hash_value(v7);
    }

    while (v4 != v5);
  }

  if ((*(this + 48) & 2) != 0)
  {
    v8 = *(this + 44);
    if (*(this + 48))
    {
      goto LABEL_11;
    }

LABEL_13:
    v9 = 0;
    return v6 ^ v3 ^ v8 ^ v9;
  }

  v8 = 0;
  if ((*(this + 48) & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  v9 = *(this + 10);
  return v6 ^ v3 ^ v8 ^ v9;
}

uint64_t sirinluinternal::ContextRule::makeTurnContext(uint64_t this)
{
  if (!*(this + 32))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::AsrAlternative::formatText(sirinluexternal::AsrAlternative *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 1))
  {
    PB::TextFormatter::format();
  }

  v5 = *(this + 2);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "probability");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternal::AsrAlternative::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if (*(this + 8))
  {
    this = PB::Writer::write();
  }

  v4 = *(v3 + 16);
  if (v4)
  {

    return PB::Writer::writeSubmessage(a2, v4);
  }

  return this;
}

uint64_t sirinluexternal::AsrAlternative::readFrom(sirinluexternal::AsrAlternative *this, PB::Reader *a2)
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

void sirinluexternal::AsrAlternative::~AsrAlternative(sirinluexternal::AsrAlternative *this)
{
  sirinluexternal::AsrAlternative::~AsrAlternative(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4877890;
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

void *sirinluexternal::AsrAlternative::AsrAlternative(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4877890;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4877890;
  return this;
}

void *sirinluexternal::AsrAlternative::AsrAlternative(void *this, const sirinluexternal::AsrAlternative *a2)
{
  *this = &unk_1F4877890;
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

uint64_t sirinluexternal::AsrAlternative::operator=(uint64_t a1, const sirinluexternal::AsrAlternative *a2)
{
  if (a1 != a2)
  {
    sirinluexternal::AsrAlternative::AsrAlternative(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    sirinluexternal::AsrAlternative::~AsrAlternative(&v5);
  }

  return a1;
}

uint64_t sirinluexternal::swap(uint64_t this, sirinluexternal::AsrAlternative *a2, sirinluexternal::AsrAlternative *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  v4 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v4;
  return this;
}

void *sirinluexternal::AsrAlternative::AsrAlternative(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F4877890;
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
    (*(*v7 + 8))(v7);
  }

  return a1;
}

uint64_t sirinluexternal::AsrAlternative::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluexternal::AsrAlternative::AsrAlternative(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    sirinluexternal::AsrAlternative::~AsrAlternative(&v5);
  }

  return a1;
}

BOOL sirinluexternal::AsrAlternative::operator==(uint64_t a1, uint64_t a2)
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
  result = (v13 | v14) == 0;
  if (v13)
  {
    v15 = v14 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    v16 = *(v14 + 12);
    if (*(v13 + 12))
    {
      if ((*(v14 + 12) & 1) != 0 && *(v13 + 8) == *(v14 + 8))
      {
        return 1;
      }
    }

    else if ((*(v14 + 12) & 1) == 0)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

unint64_t sirinluexternal::AsrAlternative::hash_value(sirinluexternal::AsrAlternative *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    v2 = std::__string_hash<char>::operator()[abi:ne200100](v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    if (*(v3 + 12))
    {
      v4 = *(v3 + 8);
      v3 = LODWORD(v4);
      if (v4 == 0.0)
      {
        v3 = 0;
      }
    }

    else
    {
      v3 = 0;
    }
  }

  return v3 ^ v2;
}

uint64_t sirinluexternal::AsrAlternative::makeProbability(uint64_t this)
{
  if (!*(this + 16))
  {
    operator new();
  }

  return this;
}

uint64_t SIRINLUEXTERNALNLU_ROUTERPersonReadFrom(uint64_t a1, void *a2)
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
        v13 = PBReaderReadData();
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

uint64_t sirinluexternal::RewrittenUtterance::formatText(sirinluexternal::RewrittenUtterance *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "rewritten_utterance");
  }

  if (*(this + 24))
  {
    PB::TextFormatter::format(a2, "score", *(this + 2));
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternal::RewrittenUtterance::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  if (*(v3 + 24))
  {
    v5 = *(v3 + 16);

    return PB::Writer::write(a2, v5);
  }

  return this;
}

uint64_t sirinluexternal::RewrittenUtterance::readFrom(sirinluexternal::RewrittenUtterance *this, PB::Reader *a2)
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
          goto LABEL_22;
        }
      }

LABEL_18:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_31;
      }

      if ((v10 >> 3) == 2)
      {
        *(this + 24) |= 1u;
        v22 = *(a2 + 1);
        if (v22 <= 0xFFFFFFFFFFFFFFF7 && v22 + 8 <= *(a2 + 2))
        {
          *(this + 2) = *(*a2 + v22);
          *(a2 + 1) += 8;
        }

        else
        {
          *(a2 + 24) = 1;
        }
      }

      else
      {
        if ((v10 >> 3) == 1)
        {
          operator new();
        }

LABEL_22:
        if ((PB::Reader::skip(a2) & 1) == 0)
        {
          v23 = 0;
          return v23 & 1;
        }
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_31;
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
        goto LABEL_22;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_31:
  v23 = v4 ^ 1;
  return v23 & 1;
}

void sirinluexternal::RewrittenUtterance::~RewrittenUtterance(sirinluexternal::RewrittenUtterance *this)
{
  sirinluexternal::RewrittenUtterance::~RewrittenUtterance(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  v2 = *(this + 1);
  *this = &unk_1F48778E0;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

uint64_t sirinluexternal::RewrittenUtterance::RewrittenUtterance(uint64_t this)
{
  *this = &unk_1F48778E0;
  *(this + 8) = 0;
  *(this + 24) = 0;
  return this;
}

{
  *this = &unk_1F48778E0;
  *(this + 8) = 0;
  *(this + 24) = 0;
  return this;
}

uint64_t sirinluexternal::RewrittenUtterance::RewrittenUtterance(uint64_t this, const sirinluexternal::RewrittenUtterance *a2)
{
  *this = &unk_1F48778E0;
  *(this + 8) = 0;
  *(this + 24) = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  if (*(a2 + 24))
  {
    v2 = *(a2 + 2);
    *(this + 24) |= 1u;
    *(this + 16) = v2;
  }

  return this;
}

uint64_t sirinluexternal::RewrittenUtterance::operator=(uint64_t a1, const sirinluexternal::RewrittenUtterance *a2)
{
  if (a1 != a2)
  {
    sirinluexternal::RewrittenUtterance::RewrittenUtterance(&v7, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v10;
    v10 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v4;
    v5 = *(a1 + 16);
    *(a1 + 16) = v9;
    v9 = v5;
    sirinluexternal::RewrittenUtterance::~RewrittenUtterance(&v7);
  }

  return a1;
}

double sirinluexternal::swap(sirinluexternal *this, sirinluexternal::RewrittenUtterance *a2, sirinluexternal::RewrittenUtterance *a3)
{
  v3 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  result = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = result;
  return result;
}

uint64_t sirinluexternal::RewrittenUtterance::RewrittenUtterance(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F48778E0;
  *(a1 + 8) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t sirinluexternal::RewrittenUtterance::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluexternal::RewrittenUtterance::RewrittenUtterance(&v7, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v10;
    v10 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v4;
    v5 = *(a1 + 16);
    *(a1 + 16) = v9;
    v9 = v5;
    sirinluexternal::RewrittenUtterance::~RewrittenUtterance(&v7);
  }

  return a1;
}

BOOL sirinluexternal::RewrittenUtterance::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5 || !siricommon::StringValue::operator==(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  result = (*(a2 + 24) & 1) == 0;
  if ((*(a1 + 24) & 1) == 0)
  {
    return result;
  }

  return (*(a2 + 24) & 1) != 0 && *(a1 + 16) == *(a2 + 16);
}

unint64_t sirinluexternal::RewrittenUtterance::hash_value(sirinluexternal::RewrittenUtterance *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      v3 = std::__string_hash<char>::operator()[abi:ne200100](v3);
    }
  }

  else
  {
    v3 = 0;
  }

  if (*(this + 24))
  {
    v4 = *(this + 2);
    if (v4 == 0.0)
    {
      v4 = 0.0;
    }
  }

  else
  {
    v4 = 0.0;
  }

  return *&v4 ^ v3;
}

uint64_t sirinluexternal::RewrittenUtterance::makeRewrittenUtterance(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternalnlu_router::PrimitiveValue::formatText(sirinluexternalnlu_router::PrimitiveValue *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "app");
  }

  if (*(this + 20))
  {
    v6 = *(this + 16);
    PB::TextFormatter::format(a2, "BOOL_value");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternalnlu_router::PrimitiveValue::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if (*(this + 20))
  {
    v4 = *(this + 16);
    this = PB::Writer::write(a2);
  }

  v5 = *(v3 + 8);
  if (v5)
  {

    return PB::Writer::writeSubmessage(a2, v5);
  }

  return this;
}

uint64_t sirinluexternalnlu_router::PrimitiveValue::readFrom(sirinluexternalnlu_router::PrimitiveValue *this, PB::Reader *a2)
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
        goto LABEL_32;
      }

      if ((v10 >> 3) == 17)
      {
        operator new();
      }

      if ((v10 >> 3) == 2)
      {
        *(this + 20) |= 1u;
        v22 = *(a2 + 1);
        if (v22 >= *(a2 + 2))
        {
          v25 = 0;
          *(a2 + 24) = 1;
        }

        else
        {
          v23 = v22 + 1;
          v24 = *(*a2 + v22);
          *(a2 + 1) = v23;
          v25 = v24 != 0;
        }

        *(this + 16) = v25;
      }

      else
      {
LABEL_23:
        if ((PB::Reader::skip(a2) & 1) == 0)
        {
          v27 = 0;
          return v27 & 1;
        }
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_32;
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

LABEL_32:
  v27 = v4 ^ 1;
  return v27 & 1;
}

void sirinluexternalnlu_router::PrimitiveValue::~PrimitiveValue(sirinluexternalnlu_router::PrimitiveValue *this)
{
  sirinluexternalnlu_router::PrimitiveValue::~PrimitiveValue(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  v2 = *(this + 1);
  *this = &unk_1F4877930;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

uint64_t sirinluexternalnlu_router::PrimitiveValue::PrimitiveValue(uint64_t this)
{
  *this = &unk_1F4877930;
  *(this + 8) = 0;
  *(this + 20) = 0;
  return this;
}

{
  *this = &unk_1F4877930;
  *(this + 8) = 0;
  *(this + 20) = 0;
  return this;
}

uint64_t sirinluexternalnlu_router::PrimitiveValue::PrimitiveValue(uint64_t this, const sirinluexternalnlu_router::PrimitiveValue *a2)
{
  *this = &unk_1F4877930;
  *(this + 8) = 0;
  *(this + 20) = 0;
  if (*(a2 + 20))
  {
    v2 = *(a2 + 16);
    *(this + 20) = 1;
    *(this + 16) = v2;
  }

  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternalnlu_router::PrimitiveValue::operator=(uint64_t a1, const sirinluexternalnlu_router::PrimitiveValue *a2)
{
  if (a1 != a2)
  {
    sirinluexternalnlu_router::PrimitiveValue::PrimitiveValue(v6, a2);
    v3 = *(a1 + 20);
    *(a1 + 20) = v9;
    v9 = v3;
    LOBYTE(v3) = *(a1 + 16);
    *(a1 + 16) = v8;
    v8 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    sirinluexternalnlu_router::PrimitiveValue::~PrimitiveValue(v6);
  }

  return a1;
}

uint64_t sirinluexternalnlu_router::swap(uint64_t this, sirinluexternalnlu_router::PrimitiveValue *a2, sirinluexternalnlu_router::PrimitiveValue *a3)
{
  v3 = *(this + 20);
  *(this + 20) = *(a2 + 5);
  *(a2 + 5) = v3;
  LOBYTE(v3) = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v4;
  return this;
}

uint64_t sirinluexternalnlu_router::PrimitiveValue::PrimitiveValue(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4877930;
  *(a1 + 8) = 0;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
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

uint64_t sirinluexternalnlu_router::PrimitiveValue::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluexternalnlu_router::PrimitiveValue::PrimitiveValue(v6, a2);
    v3 = *(a1 + 20);
    *(a1 + 20) = v9;
    v9 = v3;
    LOBYTE(v3) = *(a1 + 16);
    *(a1 + 16) = v8;
    v8 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    sirinluexternalnlu_router::PrimitiveValue::~PrimitiveValue(v6);
  }

  return a1;
}

BOOL sirinluexternalnlu_router::PrimitiveValue::operator==(uint64_t a1, uint64_t a2)
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
  result = (v3 | v4) == 0;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    return sirinluexternalnlu_router::App::operator==(v3, v4);
  }

  return result;
}

unint64_t sirinluexternalnlu_router::PrimitiveValue::hash_value(sirinluexternalnlu_router::PrimitiveValue *this)
{
  if (*(this + 20))
  {
    v1 = *(this + 16);
  }

  else
  {
    v1 = 0;
  }

  v2 = *(this + 1);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      v3 = std::__string_hash<char>::operator()[abi:ne200100](v3);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3 ^ v1;
}

uint64_t sirinluexternalnlu_router::PrimitiveValue::makeApp(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternalcontextupdate::ContextUpdateResponse::formatText(sirinluinternalcontextupdate::ContextUpdateResponse *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, a2, "reformed_turn_input_bundles");
  }

  v8 = *(this + 4);
  if (v8)
  {
    (*(*v8 + 32))(v8, a2, "request_id");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluinternalcontextupdate::ContextUpdateResponse::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 8);
  v5 = *(this + 16);
  while (v4 != v5)
  {
    v6 = *v4++;
    this = PB::Writer::writeSubmessage(a2, v6);
  }

  v7 = *(v3 + 32);
  if (v7)
  {

    return PB::Writer::writeSubmessage(a2, v7);
  }

  return this;
}

uint64_t sirinluinternalcontextupdate::ContextUpdateResponse::readFrom(sirinluinternalcontextupdate::ContextUpdateResponse *this, PB::Reader *a2)
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

void sirinluinternalcontextupdate::ContextUpdateResponse::~ContextUpdateResponse(sirinluinternalcontextupdate::ContextUpdateResponse *this)
{
  sirinluinternalcontextupdate::ContextUpdateResponse::~ContextUpdateResponse(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4877980;
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

double sirinluinternalcontextupdate::ContextUpdateResponse::ContextUpdateResponse(sirinluinternalcontextupdate::ContextUpdateResponse *this)
{
  *this = &unk_1F4877980;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = &unk_1F4877980;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

uint64_t sirinluinternalcontextupdate::ContextUpdateResponse::ContextUpdateResponse(uint64_t this, const sirinluinternalcontextupdate::ContextUpdateResponse *a2)
{
  *this = &unk_1F4877980;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  v2 = *(a2 + 1);
  if (v2 != *(a2 + 2))
  {
    v3 = *v2;
    operator new();
  }

  if (*(a2 + 4))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternalcontextupdate::ContextUpdateResponse::operator=(uint64_t a1, const sirinluinternalcontextupdate::ContextUpdateResponse *a2)
{
  if (a1 != a2)
  {
    sirinluinternalcontextupdate::ContextUpdateResponse::ContextUpdateResponse(v7, a2);
    v3 = v9;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v5 = *(a1 + 24);
    *(a1 + 24) = v3;
    v8 = v4;
    v9 = v5;
    sirinluinternalcontextupdate::ContextUpdateResponse::~ContextUpdateResponse(v7);
  }

  return a1;
}

void *sirinluinternalcontextupdate::swap(void *this, sirinluinternalcontextupdate::ContextUpdateResponse *a2, sirinluinternalcontextupdate::ContextUpdateResponse *a3)
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
  v6 = this[4];
  this[4] = *(a2 + 4);
  *(a2 + 4) = v6;
  return this;
}

uint64_t sirinluinternalcontextupdate::ContextUpdateResponse::ContextUpdateResponse(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4877980;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  v4 = *(a1 + 32);
  *(a1 + 32) = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

uint64_t sirinluinternalcontextupdate::ContextUpdateResponse::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluinternalcontextupdate::ContextUpdateResponse::ContextUpdateResponse(v7, a2);
    v3 = v9;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v5 = *(a1 + 24);
    *(a1 + 24) = v3;
    v8 = v4;
    v9 = v5;
    sirinluinternalcontextupdate::ContextUpdateResponse::~ContextUpdateResponse(v7);
  }

  return a1;
}

BOOL sirinluinternalcontextupdate::ContextUpdateResponse::operator==(void *a1, void *a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = a2[1];
  if (v2 - v3 != a2[2] - v4)
  {
    return 0;
  }

  while (v3 != v2)
  {
    result = sirinluinternalcontextupdate::ReformedTurnInputBundle::operator==(*v3, *v4);
    if (!result)
    {
      return result;
    }

    ++v3;
    ++v4;
  }

  v8 = a1[4];
  v9 = a2[4];
  result = (v8 | v9) == 0;
  if (v8 && v9)
  {
    v10 = a1[4];

    return sirinluexternal::UUID::operator==(v10, v9);
  }

  return result;
}

uint64_t sirinluinternalcontextupdate::ContextUpdateResponse::hash_value(sirinluinternalcontextupdate::ContextUpdateResponse *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    do
    {
      v5 = *v2++;
      v4 ^= sirinluinternalcontextupdate::ReformedTurnInputBundle::hash_value(v5);
    }

    while (v2 != v3);
  }

  v6 = *(this + 4);
  if (v6)
  {
    if (*(v6 + 28))
    {
      v7 = *(v6 + 8);
      if ((*(v6 + 28) & 2) != 0)
      {
LABEL_9:
        v8 = *(v6 + 16);
        if ((*(v6 + 28) & 4) != 0)
        {
LABEL_10:
          v9 = *(v6 + 24);
LABEL_14:
          v6 = v8 ^ v7 ^ v9;
          return v6 ^ v4;
        }

LABEL_13:
        v9 = 0;
        goto LABEL_14;
      }
    }

    else
    {
      v7 = 0;
      if ((*(v6 + 28) & 2) != 0)
      {
        goto LABEL_9;
      }
    }

    v8 = 0;
    if ((*(v6 + 28) & 4) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  return v6 ^ v4;
}

uint64_t sirinluinternalcontextupdate::ContextUpdateResponse::makeRequestId(uint64_t this)
{
  if (!*(this + 32))
  {
    operator new();
  }

  return this;
}

uint64_t SIRINLUINTERNALInternalSpanDataReadFrom(id *a1, void *a2)
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
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(SIRINLUINTERNALSiriVocabularySpanData);
          objc_storeStrong(a1 + 5, v14);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !SIRINLUINTERNALSiriVocabularySpanDataReadFrom(v14, a2))
          {
LABEL_43:

            return 0;
          }

          goto LABEL_37;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(SIRINLUINTERNALPLUMSpanData);
          objc_storeStrong(a1 + 4, v14);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !SIRINLUINTERNALPLUMSpanDataReadFrom(v14, a2))
          {
            goto LABEL_43;
          }

          goto LABEL_37;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = objc_alloc_init(SIRINLUINTERNALOvertonKGSpanData);
            objc_storeStrong(a1 + 3, v14);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUINTERNALOvertonKGSpanDataReadFrom(v14, a2))
            {
              goto LABEL_43;
            }

            goto LABEL_37;
          case 4:
            v14 = objc_alloc_init(SIRINLUINTERNALMentionDetectorSpanData);
            objc_storeStrong(a1 + 1, v14);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUINTERNALMentionDetectorSpanDataReadFrom(v14, a2))
            {
              goto LABEL_43;
            }

            goto LABEL_37;
          case 5:
            v14 = objc_alloc_init(SIRINLUINTERNALMentionResolverSpanData);
            objc_storeStrong(a1 + 2, v14);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUINTERNALMentionResolverSpanDataReadFrom(v14, a2))
            {
              goto LABEL_43;
            }

LABEL_37:
            PBReaderRecallMark();

            goto LABEL_38;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_38:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRINLUEXTERNALSUBWORD_EMBEDDINGSubwordEmbeddingSetupReadFrom(uint64_t a1, void *a2)
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
        v13 = &OBJC_IVAR___SIRINLUEXTERNALSUBWORD_EMBEDDINGSubwordEmbeddingSetup__embeddingVersion;
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

    v13 = &OBJC_IVAR___SIRINLUEXTERNALSUBWORD_EMBEDDINGSubwordEmbeddingSetup__locale;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sirinluinternalsnlp_intermediate::ITFMContextFeaturizerResponse::formatText(sirinluinternalsnlp_intermediate::ITFMContextFeaturizerResponse *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 1))
  {
    PB::TextFormatter::format();
  }

  v5 = *(this + 2);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "response");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluinternalsnlp_intermediate::ITFMContextFeaturizerResponse::writeTo(uint64_t this, PB::Writer *a2)
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

uint64_t sirinluinternalsnlp_intermediate::ITFMContextFeaturizerResponse::readFrom(sirinluinternalsnlp_intermediate::ITFMContextFeaturizerResponse *this, PB::Reader *a2)
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

void sirinluinternalsnlp_intermediate::ITFMContextFeaturizerResponse::~ITFMContextFeaturizerResponse(sirinluinternalsnlp_intermediate::ITFMContextFeaturizerResponse *this)
{
  sirinluinternalsnlp_intermediate::ITFMContextFeaturizerResponse::~ITFMContextFeaturizerResponse(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F48779D0;
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

void *sirinluinternalsnlp_intermediate::ITFMContextFeaturizerResponse::ITFMContextFeaturizerResponse(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F48779D0;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F48779D0;
  return this;
}

void *sirinluinternalsnlp_intermediate::ITFMContextFeaturizerResponse::ITFMContextFeaturizerResponse(void *this, const sirinluinternalsnlp_intermediate::ITFMContextFeaturizerResponse *a2)
{
  *this = &unk_1F48779D0;
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

uint64_t sirinluinternalsnlp_intermediate::ITFMContextFeaturizerResponse::operator=(uint64_t a1, const sirinluinternalsnlp_intermediate::ITFMContextFeaturizerResponse *a2)
{
  if (a1 != a2)
  {
    sirinluinternalsnlp_intermediate::ITFMContextFeaturizerResponse::ITFMContextFeaturizerResponse(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    sirinluinternalsnlp_intermediate::ITFMContextFeaturizerResponse::~ITFMContextFeaturizerResponse(&v5);
  }

  return a1;
}

uint64_t sirinluinternalsnlp_intermediate::swap(uint64_t this, sirinluinternalsnlp_intermediate::ITFMContextFeaturizerResponse *a2, sirinluinternalsnlp_intermediate::ITFMContextFeaturizerResponse *a3)
{
  v3 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v4;
  return this;
}

void *sirinluinternalsnlp_intermediate::ITFMContextFeaturizerResponse::ITFMContextFeaturizerResponse(void *a1, uint64_t a2)
{
  a1[1] = 0;
  v4 = a1 + 1;
  *a1 = &unk_1F48779D0;
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

uint64_t sirinluinternalsnlp_intermediate::ITFMContextFeaturizerResponse::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluinternalsnlp_intermediate::ITFMContextFeaturizerResponse::ITFMContextFeaturizerResponse(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    sirinluinternalsnlp_intermediate::ITFMContextFeaturizerResponse::~ITFMContextFeaturizerResponse(&v5);
  }

  return a1;
}

BOOL sirinluinternalsnlp_intermediate::ITFMContextFeaturizerResponse::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v4)
  {
    if (!v5 || !sirinluinternalsnlp_intermediate::ContextFeaturizerResponse::operator==(v4, v5))
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

unint64_t sirinluinternalsnlp_intermediate::ITFMContextFeaturizerResponse::hash_value(sirinluinternalsnlp_intermediate::ITFMContextFeaturizerResponse *this)
{
  v2 = *(this + 2);
  if (v2 && (v3 = *(v2 + 8)) != 0)
  {
    v4 = sirinluinternalsnlp_intermediate::LinearizedTensor::hash_value(v3);
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

uint64_t sirinluinternalsnlp_intermediate::ITFMContextFeaturizerResponse::makeResponse(uint64_t this)
{
  if (!*(this + 16))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternalsnlc::SNLCParserResponse::formatText(sirinluinternalsnlc::SNLCParserResponse *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 16);
  if (v5)
  {
    v6 = *(this + 2);
    PB::TextFormatter::format(a2, "classification_label");
    v5 = *(this + 16);
  }

  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "classification_probability", *(this + 3));
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluinternalsnlc::SNLCParserResponse::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 16);
  if (v4)
  {
    v5 = *(this + 8);
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 16);
  }

  if ((v4 & 2) != 0)
  {
    v6 = *(v3 + 12);

    return PB::Writer::write(a2, v6);
  }

  return this;
}

uint64_t sirinluinternalsnlc::SNLCParserResponse::readFrom(sirinluinternalsnlc::SNLCParserResponse *this, PB::Reader *a2)
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
        goto LABEL_50;
      }

      if ((v10 >> 3) == 2)
      {
        *(this + 16) |= 2u;
        v2 = *(a2 + 1);
        if (v2 <= 0xFFFFFFFFFFFFFFFBLL && v2 + 4 <= *(a2 + 2))
        {
          *(this + 3) = *(*a2 + v2);
          v2 = *(a2 + 1) + 4;
          *(a2 + 1) = v2;
        }

        else
        {
          *(a2 + 24) = 1;
        }
      }

      else if ((v10 >> 3) == 1)
      {
        *(this + 16) |= 1u;
        v22 = *(a2 + 1);
        v2 = *(a2 + 2);
        v23 = *a2;
        if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
        {
          v30 = 0;
          v31 = 0;
          v26 = 0;
          if (v2 <= v22)
          {
            v2 = *(a2 + 1);
          }

          while (1)
          {
            if (v2 == v22)
            {
              LODWORD(v26) = 0;
              *(a2 + 24) = 1;
              goto LABEL_45;
            }

            v32 = v22 + 1;
            v33 = *(v23 + v22);
            *(a2 + 1) = v32;
            v26 |= (v33 & 0x7F) << v30;
            if ((v33 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            v22 = v32;
            v14 = v31++ > 8;
            if (v14)
            {
              LODWORD(v26) = 0;
              goto LABEL_44;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v26) = 0;
          }

LABEL_44:
          v2 = v32;
        }

        else
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          v27 = (v23 + v22);
          v28 = v22 + 1;
          while (1)
          {
            v2 = v28;
            *(a2 + 1) = v28;
            v29 = *v27++;
            v26 |= (v29 & 0x7F) << v24;
            if ((v29 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            ++v28;
            v14 = v25++ > 8;
            if (v14)
            {
              LODWORD(v26) = 0;
              break;
            }
          }
        }

LABEL_45:
        *(this + 2) = v26;
      }

      else
      {
LABEL_28:
        if (!PB::Reader::skip(a2))
        {
          v34 = 0;
          return v34 & 1;
        }

        v2 = *(a2 + 1);
      }

      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_50;
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

LABEL_50:
  v34 = v4 ^ 1;
  return v34 & 1;
}

void sirinluinternalsnlc::SNLCParserResponse::~SNLCParserResponse(sirinluinternalsnlc::SNLCParserResponse *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x1CCA7EC50);
}

uint64_t sirinluinternalsnlc::SNLCParserResponse::SNLCParserResponse(uint64_t this)
{
  *this = &unk_1F4877A20;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

{
  *this = &unk_1F4877A20;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

float sirinluinternalsnlc::SNLCParserResponse::SNLCParserResponse(sirinluinternalsnlc::SNLCParserResponse *this, const sirinluinternalsnlc::SNLCParserResponse *a2)
{
  *this = &unk_1F4877A20;
  *(this + 2) = 0;
  *(this + 4) = 0;
  if (*(a2 + 16))
  {
    v3 = *(a2 + 2);
    *(this + 16) = 1;
    *(this + 2) = v3;
    v2 = 3;
    if ((*(a2 + 16) & 2) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  v2 = 2;
  if ((*(a2 + 16) & 2) != 0)
  {
LABEL_5:
    result = *(a2 + 3);
    *(this + 16) = v2;
    *(this + 3) = result;
  }

  return result;
}

const sirinluinternalsnlc::SNLCParserResponse *sirinluinternalsnlc::SNLCParserResponse::operator=(const sirinluinternalsnlc::SNLCParserResponse *a1, const sirinluinternalsnlc::SNLCParserResponse *a2)
{
  if (a1 != a2)
  {
    sirinluinternalsnlc::SNLCParserResponse::SNLCParserResponse(v7, a2);
    v3 = *(a1 + 4);
    *(a1 + 4) = v10;
    v10 = v3;
    v4 = *(a1 + 2);
    *(a1 + 2) = v8;
    v8 = v4;
    v5 = *(a1 + 3);
    *(a1 + 3) = v9;
    v9 = v5;
    PB::Base::~Base(v7);
  }

  return a1;
}

float sirinluinternalsnlc::swap(sirinluinternalsnlc *this, sirinluinternalsnlc::SNLCParserResponse *a2, sirinluinternalsnlc::SNLCParserResponse *a3)
{
  v3 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v3;
  v4 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v4;
  result = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = result;
  return result;
}

float sirinluinternalsnlc::SNLCParserResponse::SNLCParserResponse(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4877A20;
  *(a1 + 8) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 12);
  *(a1 + 12) = result;
  return result;
}

{
  *a1 = &unk_1F4877A20;
  *(a1 + 8) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 12);
  *(a1 + 12) = result;
  return result;
}

_DWORD *sirinluinternalsnlc::SNLCParserResponse::operator=(_DWORD *a1, _DWORD *a2)
{
  if (a1 != a2)
  {
    v10 = &unk_1F4877A20;
    v3 = a2[4];
    a2[4] = 0;
    v4 = a2[2];
    v5 = a2[3];
    v6 = a1[4];
    a1[4] = v3;
    v13 = v6;
    v7 = a1[2];
    a1[2] = v4;
    v11 = v7;
    v8 = a1[3];
    a1[3] = v5;
    v12 = v8;
    PB::Base::~Base(&v10);
  }

  return a1;
}

BOOL sirinluinternalsnlc::SNLCParserResponse::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    if ((*(a2 + 16) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 16))
  {
    return 0;
  }

  v2 = (*(a2 + 16) & 2) == 0;
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*(a2 + 16) & 2) != 0 && *(a1 + 12) == *(a2 + 12);
  }

  return v2;
}

uint64_t sirinluinternalsnlc::SNLCParserResponse::hash_value(sirinluinternalsnlc::SNLCParserResponse *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    v1 = 0;
    if ((*(this + 16) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v3 = 0;
    return v3 ^ v1;
  }

  v1 = *(this + 2);
  if ((*(this + 16) & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  v2 = *(this + 3);
  v3 = LODWORD(v2);
  if (v2 == 0.0)
  {
    v3 = 0;
  }

  return v3 ^ v1;
}

uint64_t SIRINLUINTERNALOVERRIDESTurnInputAndPreprocessingReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v14 = objc_alloc_init(SIRINLUINTERNALMatchingSpan);
          [a1 addMatchingSpans:v14];
          v18 = 0;
          v19 = 0;
          if (!PBReaderPlaceMark() || !SIRINLUINTERNALMatchingSpanReadFrom(v14, a2))
          {
LABEL_37:

            return 0;
          }

LABEL_33:
          PBReaderRecallMark();
LABEL_34:

          goto LABEL_35;
        }

        if (v13 == 4)
        {
          v14 = objc_alloc_init(SIRINLUEXTERNALTurnInput);
          objc_storeStrong((a1 + 24), v14);
          v18 = 0;
          v19 = 0;
          if (!PBReaderPlaceMark() || !SIRINLUEXTERNALTurnInputReadFrom(v14, a2))
          {
            goto LABEL_37;
          }

          goto LABEL_33;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v15 = PBReaderReadString();
          v14 = *(a1 + 32);
          *(a1 + 32) = v15;
          goto LABEL_34;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(SIRINLUINTERNALTokenChain);
          objc_storeStrong((a1 + 16), v14);
          v18 = 0;
          v19 = 0;
          if (!PBReaderPlaceMark() || !SIRINLUINTERNALTokenChainReadFrom(v14, a2))
          {
            goto LABEL_37;
          }

          goto LABEL_33;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_35:
      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRINLUINTERNALSNLP_INTERMEDIATESpanFeaturizerResponseReadFrom(uint64_t a1, void *a2)
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
        v13 = objc_alloc_init(SIRINLUINTERNALSNLP_INTERMEDIATELinearizedTensor);
        objc_storeStrong((a1 + 8), v13);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !SIRINLUINTERNALSNLP_INTERMEDIATELinearizedTensorReadFrom(v13, a2))
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

uint64_t SIRICOMMONInt32ValueReadFrom(uint64_t a1, void *a2)
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

uint64_t siricommon::Int64Value::formatText(siricommon::Int64Value *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 16))
  {
    v5 = *(this + 1);
    PB::TextFormatter::format(a2, "value");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t siricommon::Int64Value::writeTo(uint64_t this, PB::Writer *a2)
{
  if (*(this + 16))
  {
    v2 = *(this + 8);
    return PB::Writer::writeVarInt(a2);
  }

  return this;
}

uint64_t siricommon::Int64Value::readFrom(siricommon::Int64Value *this, PB::Reader *a2)
{
  v3 = *(a2 + 1);
  v2 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v3 < v2 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v7 = *a2;
      if (v3 > 0xFFFFFFFFFFFFFFF5 || v3 + 10 > v2)
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v3);
      v12 = v3 + 1;
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
          goto LABEL_27;
        }
      }

LABEL_18:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_46;
      }

      if ((v10 >> 3) == 1)
      {
        *(this + 16) |= 1u;
        v22 = *(a2 + 1);
        v2 = *(a2 + 2);
        v23 = *a2;
        if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
        {
          v30 = 0;
          v31 = 0;
          v26 = 0;
          if (v2 <= v22)
          {
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          while (1)
          {
            if (v3 == v22)
            {
              v26 = 0;
              *(a2 + 24) = 1;
              goto LABEL_41;
            }

            v32 = v22 + 1;
            v33 = *(v23 + v22);
            *(a2 + 1) = v32;
            v26 |= (v33 & 0x7F) << v30;
            if ((v33 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            v22 = v32;
            v14 = v31++ > 8;
            if (v14)
            {
              v26 = 0;
              goto LABEL_40;
            }
          }

          if (*(a2 + 24))
          {
            v26 = 0;
          }

LABEL_40:
          v3 = v32;
        }

        else
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          v27 = (v23 + v22);
          v28 = v22 + 1;
          while (1)
          {
            v3 = v28;
            *(a2 + 1) = v28;
            v29 = *v27++;
            v26 |= (v29 & 0x7F) << v24;
            if ((v29 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            ++v28;
            v14 = v25++ > 8;
            if (v14)
            {
              v26 = 0;
              break;
            }
          }
        }

LABEL_41:
        *(this + 1) = v26;
      }

      else
      {
LABEL_27:
        if (!PB::Reader::skip(a2))
        {
          v34 = 0;
          return v34 & 1;
        }

        v3 = *(a2 + 1);
        v2 = *(a2 + 2);
      }

      v4 = *(a2 + 24);
      if (v3 >= v2 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_46;
      }
    }

    v15 = 0;
    v16 = 0;
    v10 = 0;
    v17 = (v7 + v3);
    v18 = v2 >= v3;
    v19 = v2 - v3;
    if (!v18)
    {
      v19 = 0;
    }

    v20 = v3 + 1;
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
        goto LABEL_27;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_46:
  v34 = v4 ^ 1;
  return v34 & 1;
}

void siricommon::Int64Value::~Int64Value(siricommon::Int64Value *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x1CCA7EC50);
}

uint64_t siricommon::Int64Value::Int64Value(uint64_t this)
{
  *this = &unk_1F4877A70;
  *(this + 16) = 0;
  return this;
}

{
  *this = &unk_1F4877A70;
  *(this + 16) = 0;
  return this;
}

uint64_t siricommon::Int64Value::Int64Value(uint64_t this, const siricommon::Int64Value *a2)
{
  *this = &unk_1F4877A70;
  *(this + 16) = 0;
  if (*(a2 + 16))
  {
    v2 = *(a2 + 1);
    *(this + 16) = 1;
    *(this + 8) = v2;
  }

  return this;
}

{
  *this = &unk_1F4877A70;
  *(this + 16) = 0;
  if (*(a2 + 16))
  {
    v2 = *(a2 + 1);
    *(this + 16) = 1;
    *(this + 8) = v2;
  }

  return this;
}

uint64_t siricommon::Int64Value::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    v4 = *(a1 + 16);
    *(a1 + 16) = *(a2 + 16) & 1;
    v8 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v3;
    v7[0] = &unk_1F4877A70;
    v7[1] = v5;
    PB::Base::~Base(v7);
  }

  return a1;
}

{
  if (a1 != a2)
  {
    v3 = *(a2 + 16);
    *(a2 + 16) = 0;
    v4 = *(a2 + 8);
    v5 = *(a1 + 16);
    *(a1 + 16) = v3;
    v9 = v5;
    v6 = *(a1 + 8);
    *(a1 + 8) = v4;
    v8[0] = &unk_1F4877A70;
    v8[1] = v6;
    PB::Base::~Base(v8);
  }

  return a1;
}

uint64_t siricommon::swap(uint64_t this, siricommon::Int64Value *a2, siricommon::Int64Value *a3)
{
  v3 = *(this + 16);
  *(this + 16) = *(a2 + 4);
  *(a2 + 4) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v4;
  return this;
}

uint64_t siricommon::Int64Value::Int64Value(uint64_t result, uint64_t a2)
{
  *result = &unk_1F4877A70;
  *(result + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  *(result + 8) = *(a2 + 8);
  return result;
}

{
  *result = &unk_1F4877A70;
  *(result + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  *(result + 8) = *(a2 + 8);
  return result;
}

BOOL siricommon::Int64Value::operator==(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  result = (*(a2 + 16) & 1) == 0;
  if (v3)
  {
    return (*(a2 + 16) & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return result;
}

uint64_t siricommon::Int64Value::hash_value(siricommon::Int64Value *this)
{
  if (*(this + 16))
  {
    return *(this + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t SIRINLUEXTERNALNLContextReadFrom(id *a1, void *a2)
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
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(SIRINLUEXTERNALSystemDialogActGroup);
          objc_storeStrong(a1 + 4, v14);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !SIRINLUEXTERNALSystemDialogActGroupReadFrom(&v14->super.super.isa, a2))
          {
LABEL_42:

            return 0;
          }

          goto LABEL_36;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(SIRINLUEXTERNALTask);
          [a1 addActiveTasks:v14];
          goto LABEL_28;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = objc_alloc_init(SIRINLUEXTERNALTask);
            [a1 addExecutedTasks:v14];
LABEL_28:
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUEXTERNALTaskReadFrom(&v14->super.super.isa, a2))
            {
              goto LABEL_42;
            }

LABEL_36:
            PBReaderRecallMark();

            goto LABEL_37;
          case 4:
            v14 = objc_alloc_init(SIRINLUEXTERNALEntityCandidate);
            [a1 addSalientEntities:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUEXTERNALEntityCandidateReadFrom(&v14->super.super.isa, a2))
            {
              goto LABEL_42;
            }

            goto LABEL_36;
          case 5:
            v14 = objc_alloc_init(SIRINLUEXTERNALSystemDialogAct);
            [a1 addSystemDialogActs:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUEXTERNALSystemDialogActReadFrom(&v14->super.super.isa, a2))
            {
              goto LABEL_42;
            }

            goto LABEL_36;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_37:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sirinluinternal::MentionResolverSpanData::formatText(sirinluinternal::MentionResolverSpanData *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 24);
  if (v5)
  {
    PB::TextFormatter::format(a2, "joint_score", *(this + 1));
    v5 = *(this + 24);
  }

  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "model_score", *(this + 2));
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluinternal::MentionResolverSpanData::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 24);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8));
    v4 = *(v3 + 24);
  }

  if ((v4 & 2) != 0)
  {
    v5 = *(v3 + 16);

    return PB::Writer::write(a2, v5);
  }

  return this;
}

uint64_t sirinluinternal::MentionResolverSpanData::readFrom(sirinluinternal::MentionResolverSpanData *this, PB::Reader *a2)
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
            goto LABEL_18;
          }

          v15 += 7;
          ++v17;
          --v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
            goto LABEL_24;
          }
        }

        v4 = 1;
        *(a2 + 24) = 1;
        goto LABEL_35;
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
          goto LABEL_24;
        }
      }

LABEL_18:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_35;
      }

      if ((v10 >> 3) == 2)
      {
        break;
      }

      if ((v10 >> 3) == 1)
      {
        *(this + 24) |= 1u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_28;
        }

        *(this + 1) = *(*a2 + v2);
LABEL_30:
        v2 = *(a2 + 1) + 8;
        *(a2 + 1) = v2;
        goto LABEL_31;
      }

LABEL_24:
      if (!PB::Reader::skip(a2))
      {
        v22 = 0;
        return v22 & 1;
      }

      v2 = *(a2 + 1);
LABEL_31:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_35;
      }
    }

    *(this + 24) |= 2u;
    v2 = *(a2 + 1);
    if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
    {
LABEL_28:
      *(a2 + 24) = 1;
      goto LABEL_31;
    }

    *(this + 2) = *(*a2 + v2);
    goto LABEL_30;
  }

LABEL_35:
  v22 = v4 ^ 1;
  return v22 & 1;
}

void sirinluinternal::MentionResolverSpanData::~MentionResolverSpanData(sirinluinternal::MentionResolverSpanData *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x1CCA7EC50);
}

uint64_t sirinluinternal::MentionResolverSpanData::MentionResolverSpanData(uint64_t this)
{
  *this = &unk_1F4877AC0;
  *(this + 24) = 0;
  return this;
}

{
  *this = &unk_1F4877AC0;
  *(this + 24) = 0;
  return this;
}

double sirinluinternal::MentionResolverSpanData::MentionResolverSpanData(sirinluinternal::MentionResolverSpanData *this, const sirinluinternal::MentionResolverSpanData *a2)
{
  *this = &unk_1F4877AC0;
  *(this + 6) = 0;
  if (*(a2 + 24))
  {
    result = *(a2 + 1);
    *(this + 24) = 1;
    *(this + 1) = result;
    v2 = 3;
    if ((*(a2 + 24) & 2) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  v2 = 2;
  if ((*(a2 + 24) & 2) != 0)
  {
LABEL_5:
    result = *(a2 + 2);
    *(this + 24) = v2;
    *(this + 2) = result;
  }

  return result;
}

uint64_t sirinluinternal::MentionResolverSpanData::operator=(uint64_t a1, const sirinluinternal::MentionResolverSpanData *a2)
{
  if (a1 != a2)
  {
    sirinluinternal::MentionResolverSpanData::MentionResolverSpanData(&v6, a2);
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

double sirinluinternal::swap(sirinluinternal *this, sirinluinternal::MentionResolverSpanData *a2, sirinluinternal::MentionResolverSpanData *a3)
{
  v3 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  result = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = result;
  return result;
}

double sirinluinternal::MentionResolverSpanData::MentionResolverSpanData(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4877AC0;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

{
  *a1 = &unk_1F4877AC0;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

uint64_t sirinluinternal::MentionResolverSpanData::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v7 = &unk_1F4877AC0;
    v3 = *(a2 + 24);
    *(a2 + 24) = 0;
    v9 = *(a1 + 24);
    v4 = *(a1 + 8);
    v5 = *(a2 + 8);
    *(a1 + 24) = v3;
    *(a1 + 8) = v5;
    v8 = v4;
    PB::Base::~Base(&v7);
  }

  return a1;
}

BOOL sirinluinternal::MentionResolverSpanData::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    if ((*(a2 + 24) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 24))
  {
    return 0;
  }

  v2 = (*(a2 + 24) & 2) == 0;
  if ((*(a1 + 24) & 2) != 0)
  {
    return (*(a2 + 24) & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v2;
}

uint64_t sirinluinternal::MentionResolverSpanData::hash_value(sirinluinternal::MentionResolverSpanData *this)
{
  if (*(this + 24))
  {
    v1 = *(this + 1);
    if (v1 == 0.0)
    {
      v1 = 0.0;
    }

    if ((*(this + 24) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v2 = 0.0;
    return *&v2 ^ *&v1;
  }

  v1 = 0.0;
  if ((*(this + 24) & 2) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  v2 = *(this + 2);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  return *&v2 ^ *&v1;
}

uint64_t SIRINLUEXTERNALUserWantedToRepeatReadFrom(uint64_t a1, void *a2)
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

uint64_t SIRINLUEXTERNALSystemDialogActReadFrom(id *a1, void *a2)
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
      if ((v12 >> 3) > 4)
      {
        if (v13 > 6)
        {
          if (v13 == 7)
          {
            v14 = objc_alloc_init(SIRINLUEXTERNALSystemReportedFailure);
            objc_storeStrong(a1 + 7, v14);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUEXTERNALSystemReportedFailureReadFrom(v14, a2))
            {
LABEL_57:

              return 0;
            }

            goto LABEL_51;
          }

          if (v13 == 101)
          {
            v14 = objc_alloc_init(SIRICOMMONStringValue);
            objc_storeStrong(a1 + 6, v14);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !SIRICOMMONStringValueReadFrom(v14, a2))
            {
              goto LABEL_57;
            }

            goto LABEL_51;
          }
        }

        else
        {
          if (v13 == 5)
          {
            v14 = objc_alloc_init(SIRINLUEXTERNALSystemInformed);
            objc_storeStrong(a1 + 3, v14);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUEXTERNALSystemInformedReadFrom(&v14->super.super.isa, a2))
            {
              goto LABEL_57;
            }

            goto LABEL_51;
          }

          if (v13 == 6)
          {
            v14 = objc_alloc_init(SIRINLUEXTERNALSystemReportedSuccess);
            objc_storeStrong(a1 + 8, v14);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUEXTERNALSystemReportedSuccessReadFrom(v14, a2))
            {
              goto LABEL_57;
            }

            goto LABEL_51;
          }
        }
      }

      else if (v13 > 2)
      {
        if (v13 == 3)
        {
          v14 = objc_alloc_init(SIRINLUEXTERNALSystemOffered);
          objc_storeStrong(a1 + 4, v14);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !SIRINLUEXTERNALSystemOfferedReadFrom(v14, a2))
          {
            goto LABEL_57;
          }

          goto LABEL_51;
        }

        if (v13 == 4)
        {
          v14 = objc_alloc_init(SIRINLUEXTERNALSystemGaveOptions);
          objc_storeStrong(a1 + 1, v14);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !SIRINLUEXTERNALSystemGaveOptionsReadFrom(v14, a2))
          {
            goto LABEL_57;
          }

          goto LABEL_51;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(SIRINLUEXTERNALUUID);
          objc_storeStrong(a1 + 2, v14);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !SIRINLUEXTERNALUUIDReadFrom(v14, a2))
          {
            goto LABEL_57;
          }

          goto LABEL_51;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(SIRINLUEXTERNALSystemPrompted);
          objc_storeStrong(a1 + 5, v14);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !SIRINLUEXTERNALSystemPromptedReadFrom(v14, a2))
          {
            goto LABEL_57;
          }

LABEL_51:
          PBReaderRecallMark();

          goto LABEL_52;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_52:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRICOMMONInt64ValueReadFrom(uint64_t a1, void *a2)
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
        *(a1 + 16) |= 1u;
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

uint64_t SIRINLUINTERNALEMBEDDINGEmbeddingRequestReadFrom(uint64_t a1, void *a2)
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
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
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

    v14 = objc_alloc_init(SIRINLUINTERNALTokenChain);
    objc_storeStrong((a1 + 16), v14);
    v17[0] = 0;
    v17[1] = 0;
    if (!PBReaderPlaceMark() || !SIRINLUINTERNALTokenChainReadFrom(v14, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRINLUEXTERNALSystemGaveOptionsReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(SIRINLUEXTERNALUserDialogAct);
        [a1 addChoices:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !SIRINLUEXTERNALUserDialogActReadFrom(&v13->super.super.isa, a2))
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

uint64_t sirinluinternal::CompareOptions::formatText(sirinluinternal::CompareOptions *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 12);
  if (v5)
  {
    v7 = *(this + 8);
    PB::TextFormatter::format(a2, "case_insensitive");
    v5 = *(this + 12);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(this + 12) & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(this + 9);
  PB::TextFormatter::format(a2, "diacritic_insensitive");
  if ((*(this + 12) & 4) != 0)
  {
LABEL_4:
    v6 = *(this + 10);
    PB::TextFormatter::format(a2, "width_insensitive");
  }

LABEL_5:

  return MEMORY[0x1EEE30A90](a2);
}

unsigned __int8 *sirinluinternal::CompareOptions::writeTo(unsigned __int8 *this, PB::Writer *a2)
{
  v3 = this;
  v4 = this[12];
  if ((v4 & 1) == 0)
  {
    if ((this[12] & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v6 = v3[9];
    this = PB::Writer::write(a2);
    if ((v3[12] & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  v5 = this[8];
  this = PB::Writer::write(a2);
  v4 = v3[12];
  if ((v4 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v4 & 4) == 0)
  {
    return this;
  }

LABEL_7:
  v7 = v3[10];

  return PB::Writer::write(a2);
}

uint64_t sirinluinternal::CompareOptions::readFrom(sirinluinternal::CompareOptions *this, PB::Reader *a2)
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

LABEL_22:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_39;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        *(this + 12) |= 4u;
        v2 = *(a2 + 1);
        v3 = *(a2 + 2);
        if (v2 >= v3)
        {
          v28 = 0;
          *(a2 + 24) = 1;
        }

        else
        {
          v27 = *(*a2 + v2++);
          *(a2 + 1) = v2;
          v28 = v27 != 0;
        }

        *(this + 10) = v28;
      }

      else if (v22 == 2)
      {
        *(this + 12) |= 2u;
        v2 = *(a2 + 1);
        v3 = *(a2 + 2);
        if (v2 >= v3)
        {
          v26 = 0;
          *(a2 + 24) = 1;
        }

        else
        {
          v25 = *(*a2 + v2++);
          *(a2 + 1) = v2;
          v26 = v25 != 0;
        }

        *(this + 9) = v26;
      }

      else if (v22 == 1)
      {
        *(this + 12) |= 1u;
        v2 = *(a2 + 1);
        v3 = *(a2 + 2);
        if (v2 >= v3)
        {
          v24 = 0;
          *(a2 + 24) = 1;
        }

        else
        {
          v23 = *(*a2 + v2++);
          *(a2 + 1) = v2;
          v24 = v23 != 0;
        }

        *(this + 8) = v24;
      }

      else
      {
LABEL_17:
        if (!PB::Reader::skip(a2))
        {
          v29 = 0;
          return v29 & 1;
        }

        v2 = *(a2 + 1);
        v3 = *(a2 + 2);
      }

      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_39;
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
        goto LABEL_22;
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

LABEL_39:
  v29 = v4 ^ 1;
  return v29 & 1;
}

void sirinluinternal::CompareOptions::~CompareOptions(sirinluinternal::CompareOptions *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x1CCA7EC50);
}

uint64_t sirinluinternal::CompareOptions::CompareOptions(uint64_t this)
{
  *this = &unk_1F4877B10;
  *(this + 8) = 1;
  *(this + 10) = 0;
  *(this + 12) = 0;
  return this;
}

{
  *this = &unk_1F4877B10;
  *(this + 8) = 1;
  *(this + 10) = 0;
  *(this + 12) = 0;
  return this;
}

uint64_t sirinluinternal::CompareOptions::CompareOptions(uint64_t this, const sirinluinternal::CompareOptions *a2)
{
  *this = &unk_1F4877B10;
  v2 = 1;
  *(this + 8) = 1;
  *(this + 10) = 0;
  *(this + 12) = 0;
  v3 = *(a2 + 12);
  if (v3)
  {
    v4 = *(a2 + 8);
    *(this + 12) = 1;
    *(this + 8) = v4;
    v3 = *(a2 + 12);
    if ((v3 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v2 = 0;
  if ((*(a2 + 12) & 2) != 0)
  {
LABEL_5:
    v5 = *(a2 + 9);
    v2 |= 2u;
    *(this + 12) = v2;
    *(this + 9) = v5;
    v3 = *(a2 + 12);
  }

LABEL_6:
  if ((v3 & 4) != 0)
  {
    v6 = *(a2 + 10);
    *(this + 12) = v2 | 4;
    *(this + 10) = v6;
  }

  return this;
}

uint64_t sirinluinternal::CompareOptions::operator=(uint64_t a1, const sirinluinternal::CompareOptions *a2)
{
  if (a1 != a2)
  {
    sirinluinternal::CompareOptions::CompareOptions(&v5, a2);
    v3 = *(a1 + 12);
    *(a1 + 12) = v8;
    v8 = v3;
    LOBYTE(v3) = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    LOWORD(v3) = *(a1 + 9);
    *(a1 + 9) = v7;
    v7 = v3;
    PB::Base::~Base(&v5);
  }

  return a1;
}

uint64_t sirinluinternal::swap(uint64_t this, sirinluinternal::CompareOptions *a2, sirinluinternal::CompareOptions *a3)
{
  v3 = *(this + 12);
  *(this + 12) = *(a2 + 3);
  *(a2 + 3) = v3;
  LOBYTE(v3) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v3;
  LOBYTE(v3) = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v3;
  LOBYTE(v3) = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v3;
  return this;
}

uint64_t sirinluinternal::CompareOptions::CompareOptions(uint64_t result, uint64_t a2)
{
  *result = &unk_1F4877B10;
  *(result + 8) = 1;
  *(result + 10) = 0;
  *(result + 12) = *(a2 + 12);
  *(a2 + 12) = 0;
  *(result + 8) = *(a2 + 8);
  *(result + 9) = *(a2 + 9);
  *(result + 10) = *(a2 + 10);
  return result;
}

{
  *result = &unk_1F4877B10;
  *(result + 8) = 1;
  *(result + 10) = 0;
  *(result + 12) = *(a2 + 12);
  *(a2 + 12) = 0;
  *(result + 8) = *(a2 + 8);
  *(result + 9) = *(a2 + 9);
  *(result + 10) = *(a2 + 10);
  return result;
}

uint64_t sirinluinternal::CompareOptions::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v8 = &unk_1F4877B10;
    v3 = *(a2 + 12);
    *(a2 + 12) = 0;
    v4 = *(a2 + 8);
    v5 = *(a2 + 9);
    v6 = *(a1 + 12);
    *(a1 + 12) = v3;
    v11 = v6;
    LOBYTE(v3) = *(a1 + 8);
    *(a1 + 8) = v4;
    v9 = v3;
    LOWORD(v3) = *(a1 + 9);
    *(a1 + 9) = v5;
    v10 = v3;
    PB::Base::~Base(&v8);
  }

  return a1;
}

BOOL sirinluinternal::CompareOptions::operator==(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1[12])
  {
    if ((a2[12] & 1) == 0 || a1[8] != a2[8])
    {
      return 0;
    }
  }

  else if (a2[12])
  {
    return 0;
  }

  if ((a1[12] & 2) != 0)
  {
    if ((a2[12] & 2) == 0 || a1[9] != a2[9])
    {
      return 0;
    }
  }

  else if ((a2[12] & 2) != 0)
  {
    return 0;
  }

  v2 = (a2[12] & 4) == 0;
  if ((a1[12] & 4) != 0)
  {
    return (a2[12] & 4) != 0 && a1[10] == a2[10];
  }

  return v2;
}

uint64_t sirinluinternal::CompareOptions::hash_value(sirinluinternal::CompareOptions *this)
{
  if ((*(this + 12) & 1) == 0)
  {
    v1 = 0;
    if ((*(this + 12) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v2 = 0;
    if ((*(this + 12) & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v3 = 0;
    return v2 ^ v1 ^ v3;
  }

  v1 = *(this + 8);
  if ((*(this + 12) & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v2 = *(this + 9);
  if ((*(this + 12) & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v3 = *(this + 10);
  return v2 ^ v1 ^ v3;
}

uint64_t SIRINLUEXTERNALSemVerReadFrom(uint64_t a1, void *a2)
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
        v35 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v35 & 0x7F) << v5;
        if ((v35 & 0x80) == 0)
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
        v28 = 0;
        v29 = 0;
        v16 = 0;
        *(a1 + 20) |= 4u;
        while (1)
        {
          v36 = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:&v36 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v36 & 0x7F) << v28;
          if ((v36 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v20 = v29++ > 8;
          if (v20)
          {
            v21 = 0;
            v22 = &OBJC_IVAR___SIRINLUEXTERNALSemVer__patchVersion;
            goto LABEL_55;
          }
        }

        v22 = &OBJC_IVAR___SIRINLUEXTERNALSemVer__patchVersion;
        goto LABEL_52;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v38 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v38 & 0x7F) << v14;
          if ((v38 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v20 = v15++ > 8;
          if (v20)
          {
            v21 = 0;
            v22 = &OBJC_IVAR___SIRINLUEXTERNALSemVer__majorVersion;
            goto LABEL_55;
          }
        }

        v22 = &OBJC_IVAR___SIRINLUEXTERNALSemVer__majorVersion;
        goto LABEL_52;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_56:
      v33 = [a2 position];
      if (v33 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v23 = 0;
    v24 = 0;
    v16 = 0;
    *(a1 + 20) |= 2u;
    while (1)
    {
      v37 = 0;
      v25 = [a2 position] + 1;
      if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
      {
        v27 = [a2 data];
        [v27 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v16 |= (v37 & 0x7F) << v23;
      if ((v37 & 0x80) == 0)
      {
        break;
      }

      v23 += 7;
      v20 = v24++ > 8;
      if (v20)
      {
        v21 = 0;
        v22 = &OBJC_IVAR___SIRINLUEXTERNALSemVer__minorVersion;
        goto LABEL_55;
      }
    }

    v22 = &OBJC_IVAR___SIRINLUEXTERNALSemVer__minorVersion;
LABEL_52:
    if ([a2 hasError])
    {
      v21 = 0;
    }

    else
    {
      v21 = v16;
    }

LABEL_55:
    *(a1 + *v22) = v21;
    goto LABEL_56;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sirinluexternal::UsoOntologyVocabulary::formatText(sirinluexternal::UsoOntologyVocabulary *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  for (i = *(this + 2); v5 != i; v5 += 24)
  {
    PB::TextFormatter::format();
  }

  v7 = *(this + 4);
  if (v7)
  {
    (*(*v7 + 32))(v7, a2, "uso_version");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternal::UsoOntologyVocabulary::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 32);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  while (v5 != v6)
  {
    this = PB::Writer::write();
    v5 += 24;
  }

  return this;
}

uint64_t sirinluexternal::UsoOntologyVocabulary::readFrom(sirinluexternal::UsoOntologyVocabulary *this, PB::Reader *a2)
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
        goto LABEL_41;
      }

      if ((v11 >> 3) == 2)
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
        if ((v11 >> 3) == 1)
        {
          operator new();
        }

LABEL_23:
        if ((PB::Reader::skip(a2) & 1) == 0)
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
        goto LABEL_41;
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

LABEL_41:
  v37 = v4 ^ 1;
  return v37 & 1;
}

void sirinluexternal::UsoOntologyVocabulary::~UsoOntologyVocabulary(sirinluexternal::UsoOntologyVocabulary *this)
{
  sirinluexternal::UsoOntologyVocabulary::~UsoOntologyVocabulary(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4877B60;
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = (this + 8);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);

  PB::Base::~Base(this);
}

double sirinluexternal::UsoOntologyVocabulary::UsoOntologyVocabulary(sirinluexternal::UsoOntologyVocabulary *this)
{
  *this = &unk_1F4877B60;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = &unk_1F4877B60;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

sirinluexternal::UsoOntologyVocabulary *sirinluexternal::UsoOntologyVocabulary::UsoOntologyVocabulary(sirinluexternal::UsoOntologyVocabulary *this, const sirinluexternal::UsoOntologyVocabulary *a2)
{
  *this = &unk_1F4877B60;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  if (*(a2 + 4))
  {
    operator new();
  }

  if (this != a2)
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((this + 8), *(a2 + 1), *(a2 + 2), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 2) - *(a2 + 1)) >> 3));
  }

  return this;
}

uint64_t sirinluexternal::UsoOntologyVocabulary::operator=(uint64_t a1, const sirinluexternal::UsoOntologyVocabulary *a2)
{
  if (a1 != a2)
  {
    sirinluexternal::UsoOntologyVocabulary::UsoOntologyVocabulary(v7, a2);
    v3 = v9;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v5 = *(a1 + 24);
    *(a1 + 24) = v3;
    v8 = v4;
    v9 = v5;
    sirinluexternal::UsoOntologyVocabulary::~UsoOntologyVocabulary(v7);
  }

  return a1;
}

void *sirinluexternal::swap(void *this, sirinluexternal::UsoOntologyVocabulary *a2, sirinluexternal::UsoOntologyVocabulary *a3)
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

uint64_t sirinluexternal::UsoOntologyVocabulary::UsoOntologyVocabulary(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *a1 = &unk_1F4877B60;
  *(a1 + 24) = 0u;
  v5 = *(a2 + 32);
  *(a2 + 32) = 0;
  v6 = *(a1 + 32);
  *(a1 + 32) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  std::vector<std::string>::__vdeallocate(v4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return a1;
}

uint64_t sirinluexternal::UsoOntologyVocabulary::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluexternal::UsoOntologyVocabulary::UsoOntologyVocabulary(v7, a2);
    v3 = v9;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v5 = *(a1 + 24);
    *(a1 + 24) = v3;
    v8 = v4;
    v9 = v5;
    sirinluexternal::UsoOntologyVocabulary::~UsoOntologyVocabulary(v7);
  }

  return a1;
}

BOOL sirinluexternal::UsoOntologyVocabulary::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a2 + 32);
  if (v4)
  {
    if (!v5 || !sirinluexternal::SemVer::operator==(v4, v5))
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
    result = std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(v6, v9);
    if (!result)
    {
      break;
    }

    v6 += 24;
    v9 += 3;
  }

  while (v6 != v7);
  return result;
}

uint64_t sirinluexternal::UsoOntologyVocabulary::hash_value(sirinluexternal::UsoOntologyVocabulary *this)
{
  v1 = *(this + 4);
  if (!v1)
  {
    v5 = 0;
    goto LABEL_11;
  }

  if ((*(v1 + 20) & 1) == 0)
  {
    v2 = 0;
    if ((*(v1 + 20) & 2) != 0)
    {
      goto LABEL_4;
    }

LABEL_8:
    v3 = 0;
    if ((*(v1 + 20) & 4) != 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    v4 = 0;
    goto LABEL_10;
  }

  v2 = *(v1 + 8);
  if ((*(v1 + 20) & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v3 = *(v1 + 12);
  if ((*(v1 + 20) & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v4 = *(v1 + 16);
LABEL_10:
  v5 = v3 ^ v2 ^ v4;
LABEL_11:
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
      v8 ^= std::__string_hash<char>::operator()[abi:ne200100](v6);
      v6 += 24;
    }

    while (v6 != v7);
  }

  return v8 ^ v5;
}

uint64_t sirinluexternal::UsoOntologyVocabulary::makeUsoVersion(uint64_t this)
{
  if (!*(this + 32))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternalsnlp_intermediate::NLv4AssetVersion::formatText(sirinluinternalsnlp_intermediate::NLv4AssetVersion *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "version");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluinternalsnlp_intermediate::NLv4AssetVersion::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2);
  }

  return this;
}

uint64_t sirinluinternalsnlp_intermediate::NLv4AssetVersion::readFrom(sirinluinternalsnlp_intermediate::NLv4AssetVersion *this, PB::Reader *a2)
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

void *sirinluinternalsnlp_intermediate::NLv4AssetVersion::NLv4AssetVersion(void *this, const sirinluinternalsnlp_intermediate::NLv4AssetVersion *a2)
{
  *this = &unk_1F4877BB0;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const sirinluinternalsnlp_intermediate::NLv4AssetVersion *sirinluinternalsnlp_intermediate::NLv4AssetVersion::operator=(const sirinluinternalsnlp_intermediate::NLv4AssetVersion *a1, const sirinluinternalsnlp_intermediate::NLv4AssetVersion *a2)
{
  if (a1 != a2)
  {
    sirinluinternalsnlp_intermediate::NLv4AssetVersion::NLv4AssetVersion(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    sirinluinternalsnlp_intermediate::NLv4AssetVersion::~NLv4AssetVersion(&v5);
  }

  return a1;
}

uint64_t sirinluinternalsnlp_intermediate::swap(uint64_t this, sirinluinternalsnlp_intermediate::NLv4AssetVersion *a2, sirinluinternalsnlp_intermediate::NLv4AssetVersion *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *sirinluinternalsnlp_intermediate::NLv4AssetVersion::NLv4AssetVersion(void *a1, uint64_t a2)
{
  *a1 = &unk_1F4877BB0;
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
  *a1 = &unk_1F4877BB0;
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

uint64_t sirinluinternalsnlp_intermediate::NLv4AssetVersion::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_1F4877BB0;
    v6[1] = v4;
    sirinluinternalsnlp_intermediate::NLv4AssetVersion::~NLv4AssetVersion(v6);
  }

  return a1;
}

BOOL sirinluinternalsnlp_intermediate::NLv4AssetVersion::operator==(uint64_t a1, uint64_t a2)
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
    return sirinluinternalsnlp_intermediate::SNLPAssetVersion::operator==(v2, v3);
  }
}

sirinluinternalsnlp_intermediate::SNLPAssetVersion *sirinluinternalsnlp_intermediate::NLv4AssetVersion::hash_value(sirinluinternalsnlp_intermediate::NLv4AssetVersion *this)
{
  result = *(this + 1);
  if (result)
  {
    return sirinluinternalsnlp_intermediate::SNLPAssetVersion::hash_value(result);
  }

  return result;
}

uint64_t sirinluinternalmention_resolver::MentionResolverResponse::formatText(sirinluinternalmention_resolver::MentionResolverResponse *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, a2, "mentions");
  }

  v8 = *(this + 4);
  if (v8)
  {
    (*(*v8 + 32))(v8, a2, "request_id");
  }

  if (*(this + 5))
  {
    PB::TextFormatter::format();
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluinternalmention_resolver::MentionResolverResponse::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 32);
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

  if (v3[5])
  {

    return PB::Writer::write();
  }

  return this;
}

uint64_t sirinluinternalmention_resolver::MentionResolverResponse::readFrom(sirinluinternalmention_resolver::MentionResolverResponse *this, PB::Reader *a2)
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
        PB::PtrVector<sirinluinternal::MatchingSpan>::emplace_back<>();
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

void sirinluinternalmention_resolver::MentionResolverResponse::~MentionResolverResponse(sirinluinternalmention_resolver::MentionResolverResponse *this)
{
  sirinluinternalmention_resolver::MentionResolverResponse::~MentionResolverResponse(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4877C00;
  v2 = *(this + 5);
  *(this + 5) = 0;
  if (v2)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v2);
  }

  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = (this + 8);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v4);

  PB::Base::~Base(this);
}

double sirinluinternalmention_resolver::MentionResolverResponse::MentionResolverResponse(sirinluinternalmention_resolver::MentionResolverResponse *this)
{
  *this = &unk_1F4877C00;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

{
  *this = &unk_1F4877C00;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

uint64_t sirinluinternalmention_resolver::MentionResolverResponse::MentionResolverResponse(uint64_t this, const sirinluinternalmention_resolver::MentionResolverResponse *a2)
{
  *this = &unk_1F4877C00;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0;
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

uint64_t sirinluinternalmention_resolver::MentionResolverResponse::operator=(uint64_t a1, const sirinluinternalmention_resolver::MentionResolverResponse *a2)
{
  if (a1 != a2)
  {
    sirinluinternalmention_resolver::MentionResolverResponse::MentionResolverResponse(&v7, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v9;
    v9 = v4;
    v5 = *(a1 + 40);
    *(a1 + 40) = v10;
    v10 = v5;
    sirinluinternalmention_resolver::MentionResolverResponse::~MentionResolverResponse(&v7);
  }

  return a1;
}

void *sirinluinternalmention_resolver::swap(void *this, sirinluinternalmention_resolver::MentionResolverResponse *a2, sirinluinternalmention_resolver::MentionResolverResponse *a3)
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
  v7 = this[5];
  this[5] = *(a2 + 5);
  *(a2 + 5) = v7;
  return this;
}

uint64_t sirinluinternalmention_resolver::MentionResolverResponse::MentionResolverResponse(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4877C00;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  v5 = *(a2 + 32);
  *(a2 + 32) = 0;
  v6 = *(a1 + 32);
  *(a1 + 32) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__vdeallocate(v4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v7 = *(a2 + 40);
  *(a2 + 40) = 0;
  v8 = *(a1 + 40);
  *(a1 + 40) = v7;
  if (v8)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v8);
  }

  return a1;
}

uint64_t sirinluinternalmention_resolver::MentionResolverResponse::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluinternalmention_resolver::MentionResolverResponse::MentionResolverResponse(&v7, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v9;
    v9 = v4;
    v5 = *(a1 + 40);
    *(a1 + 40) = v10;
    v10 = v5;
    sirinluinternalmention_resolver::MentionResolverResponse::~MentionResolverResponse(&v7);
  }

  return a1;
}

BOOL sirinluinternalmention_resolver::MentionResolverResponse::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a2 + 32);
  if (!v4)
  {
    if (!v5)
    {
      goto LABEL_8;
    }

    return 0;
  }

  if (!v5 || !sirinluexternal::UUID::operator==(v4, v5))
  {
    return 0;
  }

LABEL_8:
  result = PB::PtrVector<sirinluinternal::MatchingSpan>::operator==((a1 + 8), *(a2 + 8), *(a2 + 16));
  if (result)
  {
    v7 = *(a1 + 40);
    v8 = *(a2 + 40);
    result = v8 == 0;
    if (v7)
    {
      if (v8)
      {
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

        if (v10 == v11)
        {
          v13 = v9 >= 0 ? *(a1 + 40) : *v7;
          v14 = v12 >= 0 ? *(a2 + 40) : *v8;
          if (!memcmp(v13, v14, v10))
          {
            return 1;
          }
        }
      }

      return 0;
    }
  }

  return result;
}

unint64_t sirinluinternalmention_resolver::MentionResolverResponse::hash_value(sirinluinternalmention_resolver::MentionResolverResponse *this)
{
  v2 = *(this + 4);
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
  v7 = *(this + 1);
  v8 = *(this + 2);
  if (v7 == v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 0;
    do
    {
      v10 = *v7++;
      v9 ^= sirinluinternal::MatchingSpan::hash_value(v10);
    }

    while (v7 != v8);
  }

  v11 = *(this + 5);
  if (v11)
  {
    v11 = std::__string_hash<char>::operator()[abi:ne200100](v11);
  }

  return v9 ^ v6 ^ v11;
}

uint64_t sirinluinternalmention_resolver::MentionResolverResponse::makeRequestId(uint64_t this)
{
  if (!*(this + 32))
  {
    operator new();
  }

  return this;
}

uint64_t siricommon::DoubleValue::formatText(siricommon::DoubleValue *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 16))
  {
    PB::TextFormatter::format(a2, "value", *(this + 1));
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t siricommon::DoubleValue::writeTo(uint64_t this, PB::Writer *a2)
{
  if (*(this + 16))
  {
    return PB::Writer::write(a2, *(this + 8));
  }

  return this;
}

uint64_t siricommon::DoubleValue::readFrom(siricommon::DoubleValue *this, PB::Reader *a2)
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

void siricommon::DoubleValue::~DoubleValue(siricommon::DoubleValue *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x1CCA7EC50);
}

uint64_t siricommon::DoubleValue::DoubleValue(uint64_t this)
{
  *this = &unk_1F4877C50;
  *(this + 16) = 0;
  return this;
}

{
  *this = &unk_1F4877C50;
  *(this + 16) = 0;
  return this;
}

double siricommon::DoubleValue::DoubleValue(siricommon::DoubleValue *this, const siricommon::DoubleValue *a2)
{
  *this = &unk_1F4877C50;
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
  *this = &unk_1F4877C50;
  *(this + 4) = 0;
  if (*(a2 + 16))
  {
    result = *(a2 + 1);
    *(this + 16) = 1;
    *(this + 1) = result;
  }

  return result;
}

uint64_t siricommon::DoubleValue::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v7[0] = &unk_1F4877C50;
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
    v8[0] = &unk_1F4877C50;
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

double siricommon::swap(siricommon *this, siricommon::DoubleValue *a2, siricommon::DoubleValue *a3)
{
  v3 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v3;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  return result;
}

double siricommon::DoubleValue::DoubleValue(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4877C50;
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

{
  *a1 = &unk_1F4877C50;
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

BOOL siricommon::DoubleValue::operator==(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  result = (*(a2 + 16) & 1) == 0;
  if (v3)
  {
    return (*(a2 + 16) & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return result;
}

uint64_t siricommon::DoubleValue::hash_value(siricommon::DoubleValue *this)
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

uint64_t SIRINLUINTERNALOvertonKGSpanDataReadFrom(uint64_t a1, void *a2)
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
        v20 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v20 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v20 & 0x7F) << v5;
        if ((v20 & 0x80) == 0)
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
        v15 = PBReaderReadString();
        if (v15)
        {
          [a1 addFeatures:v15];
        }
      }

      else if ((v12 >> 3) == 1)
      {
        *(a1 + 24) |= 1u;
        v19 = 0;
        v13 = [a2 position] + 8;
        if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 8, v14 <= objc_msgSend(a2, "length")))
        {
          v17 = [a2 data];
          [v17 getBytes:&v19 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

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

      v18 = [a2 position];
    }

    while (v18 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sirinluinternalsnlc::SNLCParserRequest::formatText(sirinluinternalsnlc::SNLCParserRequest *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "embeddings");
  }

  v6 = *(this + 2);
  if (v6)
  {
    (*(*v6 + 32))(v6, a2, "legacy_context");
  }

  v7 = *(this + 3);
  v8 = *(this + 4);
  while (v7 != v8)
  {
    v9 = *v7++;
    (*(*v9 + 32))(v9, a2, "matching_spans");
  }

  v10 = *(this + 6);
  if (v10)
  {
    (*(*v10 + 32))(v10, a2, "nlu_request_id");
  }

  v11 = *(this + 7);
  if (v11)
  {
    (*(*v11 + 32))(v11, a2, "request_id");
  }

  v12 = *(this + 8);
  if (v12)
  {
    (*(*v12 + 32))(v12, a2, "tokenised_utterance");
  }

  v13 = *(this + 9);
  if (v13)
  {
    (*(*v13 + 32))(v13, a2, "turn_input");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluinternalsnlc::SNLCParserRequest::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 56);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  v5 = v3[8];
  if (v5)
  {
    this = PB::Writer::writeSubmessage(a2, v5);
  }

  v6 = v3[1];
  if (v6)
  {
    this = PB::Writer::writeSubmessage(a2, v6);
  }

  v7 = v3[3];
  v8 = v3[4];
  while (v7 != v8)
  {
    v9 = *v7++;
    this = PB::Writer::writeSubmessage(a2, v9);
  }

  v10 = v3[9];
  if (v10)
  {
    this = PB::Writer::writeSubmessage(a2, v10);
  }

  v11 = v3[2];
  if (v11)
  {
    this = PB::Writer::writeSubmessage(a2, v11);
  }

  v12 = v3[6];
  if (v12)
  {

    return PB::Writer::writeSubmessage(a2, v12);
  }

  return this;
}

uint64_t sirinluinternalsnlc::SNLCParserRequest::readFrom(sirinluinternalsnlc::SNLCParserRequest *this, PB::Reader *a2)
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
          PB::PtrVector<sirinluinternal::MatchingSpan>::emplace_back<>();
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

void sirinluinternalsnlc::SNLCParserRequest::~SNLCParserRequest(sirinluinternalsnlc::SNLCParserRequest *this)
{
  sirinluinternalsnlc::SNLCParserRequest::~SNLCParserRequest(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4877CA0;
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
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 7);
  *(this + 7) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 6);
  *(this + 6) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v8 = (this + 24);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v8);
  v6 = *(this + 2);
  *(this + 2) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 1);
  *(this + 1) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  PB::Base::~Base(this);
}

double sirinluinternalsnlc::SNLCParserRequest::SNLCParserRequest(sirinluinternalsnlc::SNLCParserRequest *this)
{
  *this = &unk_1F4877CA0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  return result;
}

{
  *this = &unk_1F4877CA0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  return result;
}

uint64_t sirinluinternalsnlc::SNLCParserRequest::SNLCParserRequest(uint64_t this, const sirinluinternalsnlc::SNLCParserRequest *a2)
{
  *this = &unk_1F4877CA0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0;
  if (*(a2 + 7))
  {
    operator new();
  }

  if (*(a2 + 8))
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
    PB::PtrVector<sirinluinternal::MatchingSpan>::emplace_back<sirinluinternal::MatchingSpan const&>();
  }

  if (*(a2 + 9))
  {
    operator new();
  }

  if (*(a2 + 2))
  {
    operator new();
  }

  if (*(a2 + 6))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternalsnlc::SNLCParserRequest::operator=(uint64_t a1, const sirinluinternalsnlc::SNLCParserRequest *a2)
{
  if (a1 != a2)
  {
    sirinluinternalsnlc::SNLCParserRequest::SNLCParserRequest(&v9, a2);
    v3 = *(a1 + 56);
    *(a1 + 56) = v13;
    v13 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v11;
    v11 = v4;
    v5 = *(a1 + 72);
    *(a1 + 72) = v14;
    v14 = v5;
    v6 = *(a1 + 8);
    *(a1 + 8) = v10;
    v10 = v6;
    v7 = *(a1 + 40);
    *(a1 + 40) = v12;
    v12 = v7;
    sirinluinternalsnlc::SNLCParserRequest::~SNLCParserRequest(&v9);
  }

  return a1;
}

void *sirinluinternalsnlc::swap(void *this, sirinluinternalsnlc::SNLCParserRequest *a2, sirinluinternalsnlc::SNLCParserRequest *a3)
{
  v3 = this[7];
  this[7] = *(a2 + 7);
  *(a2 + 7) = v3;
  v4 = this[8];
  this[8] = *(a2 + 8);
  *(a2 + 8) = v4;
  v5 = this[1];
  this[1] = *(a2 + 1);
  *(a2 + 1) = v5;
  v6 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v6;
  v7 = this[4];
  this[4] = *(a2 + 4);
  *(a2 + 4) = v7;
  v8 = this[5];
  this[5] = *(a2 + 5);
  *(a2 + 5) = v8;
  v9 = this[9];
  this[9] = *(a2 + 9);
  *(a2 + 9) = v9;
  v10 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v10;
  v11 = this[6];
  this[6] = *(a2 + 6);
  *(a2 + 6) = v11;
  return this;
}

uint64_t sirinluinternalsnlc::SNLCParserRequest::SNLCParserRequest(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4877CA0;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 24) = 0u;
  v5 = (a1 + 24);
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  v6 = *(a2 + 56);
  *(a2 + 56) = 0;
  v7 = *(a1 + 56);
  *(a1 + 56) = v6;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(a2 + 64);
  *(a2 + 64) = 0;
  v9 = *(a1 + 64);
  *(a1 + 64) = v8;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(a2 + 8);
  *(a2 + 8) = 0;
  v11 = *v4;
  *v4 = v10;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__vdeallocate(v5);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v12 = *(a2 + 72);
  *(a2 + 72) = 0;
  v13 = *(a1 + 72);
  *(a1 + 72) = v12;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = *(a2 + 16);
  *(a2 + 16) = 0;
  v15 = *(a1 + 16);
  *(a1 + 16) = v14;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v16 = *(a2 + 48);
  *(a2 + 48) = 0;
  v17 = *(a1 + 48);
  *(a1 + 48) = v16;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  return a1;
}

uint64_t sirinluinternalsnlc::SNLCParserRequest::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluinternalsnlc::SNLCParserRequest::SNLCParserRequest(&v9, a2);
    v3 = *(a1 + 56);
    *(a1 + 56) = v13;
    v13 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v11;
    v11 = v4;
    v5 = *(a1 + 72);
    *(a1 + 72) = v14;
    v14 = v5;
    v6 = *(a1 + 8);
    *(a1 + 8) = v10;
    v10 = v6;
    v7 = *(a1 + 40);
    *(a1 + 40) = v12;
    v12 = v7;
    sirinluinternalsnlc::SNLCParserRequest::~SNLCParserRequest(&v9);
  }

  return a1;
}

BOOL sirinluinternalsnlc::SNLCParserRequest::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  v5 = *(a2 + 56);
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

  v6 = *(a1 + 64);
  v7 = *(a2 + 64);
  if (v6)
  {
    if (!v7 || !sirinluinternalnlv4_parser::Tokenisation::operator==(v6, v7))
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v8 = *(a1 + 8);
  v9 = *(a2 + 8);
  if (v8)
  {
    if (!v9 || !sirinluinternal::NLv4EmbeddingTensor::operator==(v8, v9))
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  result = PB::PtrVector<sirinluinternal::MatchingSpan>::operator==((a1 + 24), *(a2 + 24), *(a2 + 32));
  if (!result)
  {
    return result;
  }

  v11 = *(a1 + 72);
  v12 = *(a2 + 72);
  if (v11)
  {
    if (!v12 || !sirinluexternal::TurnInput::operator==(v11, v12))
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  v13 = *(a1 + 16);
  v14 = *(a2 + 16);
  if (!v13)
  {
    if (!v14)
    {
      goto LABEL_29;
    }

    return 0;
  }

  if (!v14 || !sirinluexternal::LegacyNLContext::operator==(v13, v14))
  {
    return 0;
  }

LABEL_29:
  v15 = *(a1 + 48);
  v16 = *(a2 + 48);
  result = (v15 | v16) == 0;
  if (v15 && v16)
  {
    v17 = *(a1 + 48);

    return sirinluexternal::RequestID::operator==(v17, v16);
  }

  return result;
}

unint64_t sirinluinternalsnlc::SNLCParserRequest::hash_value(sirinluinternalsnlc::SNLCParserRequest *this)
{
  v2 = *(this + 7);
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
  v7 = *(this + 8);
  if (v7)
  {
    v8 = sirinluinternalnlv4_parser::Tokenisation::hash_value(v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(this + 1);
  if (v9)
  {
    v10 = sirinluinternal::NLv4EmbeddingTensor::hash_value(v9);
  }

  else
  {
    v10 = 0;
  }

  v11 = *(this + 3);
  v12 = *(this + 4);
  if (v11 == v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = 0;
    do
    {
      v14 = *v11++;
      v13 ^= sirinluinternal::MatchingSpan::hash_value(v14);
    }

    while (v11 != v12);
  }

  v15 = *(this + 9);
  if (v15)
  {
    v16 = sirinluexternal::TurnInput::hash_value(v15);
  }

  else
  {
    v16 = 0;
  }

  v17 = *(this + 2);
  if (v17)
  {
    v18 = sirinluexternal::LegacyNLContext::hash_value(v17);
  }

  else
  {
    v18 = 0;
  }

  v19 = *(this + 6);
  if (v19)
  {
    v19 = sirinluexternal::RequestID::hash_value(v19);
  }

  return v8 ^ v6 ^ v10 ^ v16 ^ v18 ^ v19 ^ v13;
}