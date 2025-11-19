uint64_t sirinluinternalsnlc::SNLCParserRequest::makeRequestId(uint64_t this)
{
  if (!*(this + 56))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternalsnlc::SNLCParserRequest::makeTokenisedUtterance(uint64_t this)
{
  if (!*(this + 64))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternalsnlc::SNLCParserRequest::makeEmbeddings(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternalsnlc::SNLCParserRequest::makeTurnInput(uint64_t this)
{
  if (!*(this + 72))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternalsnlc::SNLCParserRequest::makeLegacyContext(uint64_t this)
{
  if (!*(this + 16))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternalsnlc::SNLCParserRequest::makeNluRequestId(uint64_t this)
{
  if (!*(this + 48))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::UUID::formatText(sirinluexternal::UUID *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 28);
  if (v5)
  {
    v7 = *(this + 1);
    PB::TextFormatter::format(a2, "high_int");
    v5 = *(this + 28);
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

  else if ((*(this + 28) & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(this + 2);
  PB::TextFormatter::format(a2, "low_int");
  if ((*(this + 28) & 4) != 0)
  {
LABEL_4:
    v6 = *(this + 6);
    PB::TextFormatter::format(a2, "namespace_a");
  }

LABEL_5:

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternal::UUID::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 28);
  if ((v4 & 1) == 0)
  {
    if ((*(this + 28) & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v6 = *(v3 + 16);
    this = PB::Writer::writeVarInt(a2);
    if ((*(v3 + 28) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  v5 = *(this + 8);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 28);
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
  v7 = *(v3 + 24);

  return PB::Writer::writeVarInt(a2);
}

void *sirinluexternal::UUID::UUID(void *this)
{
  *this = &unk_1F4877CF0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_1F4877CF0;
  this[3] = 0;
  return this;
}

uint64_t sirinluexternal::UUID::UUID(uint64_t this, const sirinluexternal::UUID *a2)
{
  *this = &unk_1F4877CF0;
  *(this + 24) = 0;
  v2 = *(a2 + 28);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 28) = 1;
    *(this + 8) = v4;
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
    v5 = *(a2 + 2);
    v3 |= 2u;
    *(this + 28) = v3;
    *(this + 16) = v5;
    v2 = *(a2 + 28);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    v6 = *(a2 + 6);
    *(this + 28) = v3 | 4;
    *(this + 24) = v6;
  }

  return this;
}

uint64_t sirinluexternal::UUID::operator=(uint64_t a1, const sirinluexternal::UUID *a2)
{
  if (a1 != a2)
  {
    sirinluexternal::UUID::UUID(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    *&v3 = *(a1 + 24);
    *(a1 + 24) = v7;
    v7 = v3;
    PB::Base::~Base(&v5);
  }

  return a1;
}

uint64_t sirinluexternal::swap(uint64_t this, sirinluexternal::UUID *a2, sirinluexternal::UUID *a3)
{
  v3 = *(this + 28);
  *(this + 28) = *(a2 + 7);
  *(a2 + 7) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v4;
  v5 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v5;
  LODWORD(v5) = *(this + 24);
  *(this + 24) = *(a2 + 6);
  *(a2 + 6) = v5;
  return this;
}

uint64_t sirinluexternal::UUID::UUID(uint64_t result, uint64_t a2)
{
  *result = &unk_1F4877CF0;
  *(result + 24) = 0;
  *(result + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(result + 8) = *(a2 + 8);
  *(result + 16) = *(a2 + 16);
  *(result + 24) = *(a2 + 24);
  return result;
}

{
  *result = &unk_1F4877CF0;
  *(result + 24) = 0;
  *(result + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(result + 8) = *(a2 + 8);
  *(result + 16) = *(a2 + 16);
  *(result + 24) = *(a2 + 24);
  return result;
}

uint64_t sirinluexternal::UUID::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v7 = &unk_1F4877CF0;
    v3 = *(a2 + 8);
    v4 = *(a2 + 24);
    *(a2 + 28) = 0;
    v5 = *(a1 + 8);
    *(a1 + 8) = v3;
    v8 = v5;
    *&v3 = *(a1 + 24);
    *(a1 + 24) = v4;
    v9 = v3;
    PB::Base::~Base(&v7);
  }

  return a1;
}

BOOL sirinluexternal::UUID::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 28))
  {
    if ((*(a2 + 28) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 28))
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

  v2 = (*(a2 + 28) & 4) == 0;
  if ((*(a1 + 28) & 4) != 0)
  {
    return (*(a2 + 28) & 4) != 0 && *(a1 + 24) == *(a2 + 24);
  }

  return v2;
}

uint64_t sirinluexternal::UUID::hash_value(sirinluexternal::UUID *this)
{
  if ((*(this + 28) & 1) == 0)
  {
    v1 = 0;
    if ((*(this + 28) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v2 = 0;
    if ((*(this + 28) & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v3 = 0;
    return v2 ^ v1 ^ v3;
  }

  v1 = *(this + 1);
  if ((*(this + 28) & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v2 = *(this + 2);
  if ((*(this + 28) & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v3 = *(this + 6);
  return v2 ^ v1 ^ v3;
}

uint64_t SIRINLUINTERNALSSUSSURequestReadFrom(id *a1, void *a2)
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
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            v14 = objc_alloc_init(SIRINLUINTERNALMatchingSpan);
            [a1 addMatchingSpans:v14];
            v19 = 0;
            v20 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUINTERNALMatchingSpanReadFrom(v14, a2))
            {
LABEL_44:

              return 0;
            }

LABEL_40:
            PBReaderRecallMark();
LABEL_41:

            goto LABEL_42;
          case 5:
            v14 = objc_alloc_init(SIRINLUEXTERNALEntityCandidate);
            [a1 addSalientEntities:v14];
            v19 = 0;
            v20 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUEXTERNALEntityCandidateReadFrom(&v14->super.super.isa, a2))
            {
              goto LABEL_44;
            }

            goto LABEL_40;
          case 6:
            v14 = objc_alloc_init(SIRINLUEXTERNALRequestID);
            objc_storeStrong(a1 + 4, v14);
            v19 = 0;
            v20 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUEXTERNALRequestIDReadFrom(v14, a2))
            {
              goto LABEL_44;
            }

            goto LABEL_40;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v15 = PBReaderReadString();
            v16 = 6;
LABEL_37:
            v14 = a1[v16];
            a1[v16] = v15;
            goto LABEL_41;
          case 2:
            v15 = PBReaderReadString();
            v16 = 2;
            goto LABEL_37;
          case 3:
            v14 = objc_alloc_init(SIRINLUEXTERNALUUID);
            objc_storeStrong(a1 + 1, v14);
            v19 = 0;
            v20 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUEXTERNALUUIDReadFrom(v14, a2))
            {
              goto LABEL_44;
            }

            goto LABEL_40;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_42:
      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sirinluinternal::OverrideMetadata::formatText(sirinluinternal::OverrideMetadata *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluinternal::OverrideMetadata::readFrom(sirinluinternal::OverrideMetadata *this, PB::Reader *a2)
{
  while (1)
  {
    v4 = *(a2 + 1);
    v3 = *(a2 + 2);
    v5 = *(a2 + 24);
    v6 = v3 - v4;
    if (v3 <= v4 || (*(a2 + 24) & 1) != 0)
    {
      goto LABEL_23;
    }

    v7 = *a2;
    v8 = v4 > 0xFFFFFFFFFFFFFFF5 || v4 + 10 > v3;
    if (v8)
    {
      break;
    }

    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = (v7 + v4);
    v18 = v4 + 1;
    while (1)
    {
      *(a2 + 1) = v18;
      v19 = *v17++;
      v16 |= (v19 & 0x7F) << v14;
      if ((v19 & 0x80) == 0)
      {
        break;
      }

      v14 += 7;
      ++v18;
      v8 = v15++ > 8;
      if (v8)
      {
        goto LABEL_19;
      }
    }

LABEL_18:
    if ((v16 & 7) == 4)
    {
      v5 = 0;
LABEL_23:
      v20 = v5 ^ 1;
      return v20 & 1;
    }

LABEL_19:
    if ((PB::Reader::skip(a2) & 1) == 0)
    {
      v20 = 0;
      return v20 & 1;
    }
  }

  v9 = 0;
  v10 = 0;
  v16 = 0;
  v11 = (v7 + v4);
  v12 = v4 + 1;
  while (v6)
  {
    v13 = *v11;
    *(a2 + 1) = v12;
    v16 |= (v13 & 0x7F) << v9;
    if ((v13 & 0x80) == 0)
    {
      goto LABEL_18;
    }

    v9 += 7;
    ++v11;
    --v6;
    ++v12;
    v8 = v10++ > 8;
    if (v8)
    {
      goto LABEL_19;
    }
  }

  v20 = 0;
  *(a2 + 24) = 1;
  return v20 & 1;
}

void sirinluinternal::OverrideMetadata::~OverrideMetadata(sirinluinternal::OverrideMetadata *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x1CCA7EC50);
}

void *sirinluinternal::OverrideMetadata::OverrideMetadata(void *this)
{
  *this = &unk_1F4877D40;
  return this;
}

{
  *this = &unk_1F4877D40;
  return this;
}

void *sirinluinternal::OverrideMetadata::OverrideMetadata(void *this, const sirinluinternal::OverrideMetadata *a2)
{
  *this = &unk_1F4877D40;
  return this;
}

{
  *this = &unk_1F4877D40;
  return this;
}

uint64_t sirinluinternal::OverrideMetadata::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = &unk_1F4877D40;
    PB::Base::~Base(&v4);
  }

  return a1;
}

{
  if (a1 != a2)
  {
    v4 = &unk_1F4877D40;
    PB::Base::~Base(&v4);
  }

  return a1;
}

void *sirinluinternal::OverrideMetadata::OverrideMetadata(void *result)
{
  *result = &unk_1F4877D40;
  return result;
}

{
  *result = &unk_1F4877D40;
  return result;
}

uint64_t sirinluexternalssu_inference::SsuInferenceResponse::formatText(sirinluexternalssu_inference::SsuInferenceResponse *this, PB::TextFormatter *a2, const char *a3)
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

uint64_t sirinluexternalssu_inference::SsuInferenceResponse::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  for (i = *(this + 16); v2 != i; this = PB::Writer::writeSubmessage(a2, v5))
  {
    v5 = *v2++;
  }

  return this;
}

uint64_t sirinluexternalssu_inference::SsuInferenceResponse::readFrom(sirinluexternalssu_inference::SsuInferenceResponse *this, PB::Reader *a2)
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

void sirinluexternalssu_inference::SsuInferenceResponse::~SsuInferenceResponse(sirinluexternalssu_inference::SsuInferenceResponse *this)
{
  *this = &unk_1F4877D90;
  v2 = (this + 8);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v2);
  PB::Base::~Base(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4877D90;
  v2 = (this + 8);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v2);

  PB::Base::~Base(this);
}

{
  *this = &unk_1F4877D90;
  v2 = (this + 8);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v2);

  PB::Base::~Base(this);
}

void *sirinluexternalssu_inference::SsuInferenceResponse::SsuInferenceResponse(void *this)
{
  *this = &unk_1F4877D90;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_1F4877D90;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

void *sirinluexternalssu_inference::SsuInferenceResponse::SsuInferenceResponse(void *this, const sirinluexternalssu_inference::SsuInferenceResponse *a2)
{
  this[1] = 0;
  *this = &unk_1F4877D90;
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

uint64_t sirinluexternalssu_inference::SsuInferenceResponse::operator=(uint64_t a1, const sirinluexternalssu_inference::SsuInferenceResponse *a2)
{
  if (a1 != a2)
  {
    sirinluexternalssu_inference::SsuInferenceResponse::SsuInferenceResponse(&v6, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v4;
    v6 = &unk_1F4877D90;
    v9 = &v7;
    std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v9);
    PB::Base::~Base(&v6);
  }

  return a1;
}

void *sirinluexternalssu_inference::swap(void *this, sirinluexternalssu_inference::SsuInferenceResponse *a2, sirinluexternalssu_inference::SsuInferenceResponse *a3)
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

uint64_t sirinluexternalssu_inference::SsuInferenceResponse::SsuInferenceResponse(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4877D90;
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
  *a1 = &unk_1F4877D90;
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

uint64_t sirinluexternalssu_inference::SsuInferenceResponse::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v9 = &unk_1F4877D90;
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
    v9 = &unk_1F4877D90;
    std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v12);
    PB::Base::~Base(&v9);
  }

  return a1;
}

uint64_t sirinluexternalssu_inference::SsuInferenceResponse::hash_value(sirinluexternalssu_inference::SsuInferenceResponse *this)
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

uint64_t sirinluinternaluaap_parser::UaaPParserResponse::formatText(sirinluinternaluaap_parser::UaaPParserResponse *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, a2, "hypotheses");
  }

  v8 = *(this + 4);
  if (v8)
  {
    (*(*v8 + 32))(v8, a2, "request_id");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluinternaluaap_parser::UaaPParserResponse::writeTo(uint64_t this, PB::Writer *a2)
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

uint64_t sirinluinternaluaap_parser::UaaPParserResponse::readFrom(sirinluinternaluaap_parser::UaaPParserResponse *this, PB::Reader *a2)
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
        PB::PtrVector<sirinluexternal::UserParse>::emplace_back<>();
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

void sirinluinternaluaap_parser::UaaPParserResponse::~UaaPParserResponse(sirinluinternaluaap_parser::UaaPParserResponse *this)
{
  sirinluinternaluaap_parser::UaaPParserResponse::~UaaPParserResponse(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4877DE0;
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

double sirinluinternaluaap_parser::UaaPParserResponse::UaaPParserResponse(sirinluinternaluaap_parser::UaaPParserResponse *this)
{
  *this = &unk_1F4877DE0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = &unk_1F4877DE0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

uint64_t sirinluinternaluaap_parser::UaaPParserResponse::UaaPParserResponse(uint64_t this, const sirinluinternaluaap_parser::UaaPParserResponse *a2)
{
  *this = &unk_1F4877DE0;
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
    PB::PtrVector<sirinluexternal::UserParse>::emplace_back<sirinluexternal::UserParse const&>();
  }

  return this;
}

uint64_t sirinluinternaluaap_parser::UaaPParserResponse::operator=(uint64_t a1, const sirinluinternaluaap_parser::UaaPParserResponse *a2)
{
  if (a1 != a2)
  {
    sirinluinternaluaap_parser::UaaPParserResponse::UaaPParserResponse(v7, a2);
    v3 = v9;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v5 = *(a1 + 24);
    *(a1 + 24) = v3;
    v8 = v4;
    v9 = v5;
    sirinluinternaluaap_parser::UaaPParserResponse::~UaaPParserResponse(v7);
  }

  return a1;
}

void *sirinluinternaluaap_parser::swap(void *this, sirinluinternaluaap_parser::UaaPParserResponse *a2, sirinluinternaluaap_parser::UaaPParserResponse *a3)
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

uint64_t sirinluinternaluaap_parser::UaaPParserResponse::UaaPParserResponse(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *a1 = &unk_1F4877DE0;
  *(a1 + 24) = 0u;
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
  return a1;
}

uint64_t sirinluinternaluaap_parser::UaaPParserResponse::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluinternaluaap_parser::UaaPParserResponse::UaaPParserResponse(v7, a2);
    v3 = v9;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v5 = *(a1 + 24);
    *(a1 + 24) = v3;
    v8 = v4;
    v9 = v5;
    sirinluinternaluaap_parser::UaaPParserResponse::~UaaPParserResponse(v7);
  }

  return a1;
}

BOOL sirinluinternaluaap_parser::UaaPParserResponse::operator==(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = a2[4];
  if (!v4)
  {
    if (!v5)
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (!v5 || !sirinluexternal::UUID::operator==(v4, v5))
  {
    return 0;
  }

LABEL_4:
  v6 = a2[1];
  v7 = a2[2];

  return PB::PtrVector<sirinluexternal::UserParse>::operator==((a1 + 8), v6, v7);
}

uint64_t sirinluinternaluaap_parser::UaaPParserResponse::hash_value(sirinluinternaluaap_parser::UaaPParserResponse *this)
{
  v1 = *(this + 4);
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
      v8 ^= sirinluexternal::UserParse::hash_value(v9);
    }

    while (v6 != v7);
  }

  return v8 ^ v5;
}

uint64_t sirinluinternaluaap_parser::UaaPParserResponse::makeRequestId(uint64_t this)
{
  if (!*(this + 32))
  {
    operator new();
  }

  return this;
}

uint64_t SIRINLUEXTERNALCorrectionOutcomeReadFrom(uint64_t a1, void *a2)
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

uint64_t sirinluinternal::ComponentOverride::formatText(sirinluinternal::ComponentOverride *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 72);
  if (v5)
  {
    v6 = *(this + 1);
    PB::TextFormatter::format(a2, "creation_timestamp_ms_since_unix_epoch");
    v5 = *(this + 72);
  }

  if ((v5 & 4) != 0)
  {
    v7 = *(this + 68);
    PB::TextFormatter::format(a2, "enabled");
  }

  if (*(this + 2))
  {
    PB::TextFormatter::format();
  }

  v8 = *(this + 3);
  v9 = *(this + 4);
  while (v8 != v9)
  {
    v10 = *v8++;
    (*(*v10 + 32))(v10, a2, "nlu_request_rules");
  }

  if ((*(this + 72) & 2) != 0)
  {
    v11 = *(this + 16);
    PB::TextFormatter::format(a2, "override_namespace");
  }

  if (*(this + 6))
  {
    PB::TextFormatter::format();
  }

  v12 = *(this + 7);
  if (v12)
  {
    (*(*v12 + 32))(v12, a2, "value");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluinternal::ComponentOverride::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if (*(this + 16))
  {
    this = PB::Writer::write();
  }

  v4 = *(v3 + 72);
  if ((v4 & 2) != 0)
  {
    v10 = *(v3 + 64);
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 72);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*(v3 + 72) & 4) == 0)
  {
    goto LABEL_5;
  }

  v11 = *(v3 + 68);
  this = PB::Writer::write(a2);
  if (*(v3 + 72))
  {
LABEL_6:
    v5 = *(v3 + 8);
    this = PB::Writer::writeVarInt(a2);
  }

LABEL_7:
  v6 = *(v3 + 56);
  if (v6)
  {
    this = PB::Writer::writeSubmessage(a2, v6);
  }

  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  while (v7 != v8)
  {
    v9 = *v7++;
    this = PB::Writer::writeSubmessage(a2, v9);
  }

  if (*(v3 + 48))
  {

    return PB::Writer::write();
  }

  return this;
}

uint64_t sirinluinternal::ComponentOverride::readFrom(sirinluinternal::ComponentOverride *this, PB::Reader *a2)
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
    if ((v10 >> 3) <= 3)
    {
      switch(v22)
      {
        case 1:
          operator new();
        case 2:
          *(this + 72) |= 2u;
          v37 = *(a2 + 1);
          v36 = *(a2 + 2);
          v38 = *a2;
          if (v37 > 0xFFFFFFFFFFFFFFF5 || v37 + 10 > v36)
          {
            v51 = 0;
            v52 = 0;
            v41 = 0;
            v53 = (v38 + v37);
            v18 = v36 >= v37;
            v54 = v36 - v37;
            if (!v18)
            {
              v54 = 0;
            }

            v55 = v37 + 1;
            while (1)
            {
              if (!v54)
              {
                LODWORD(v41) = 0;
                *(a2 + 24) = 1;
                goto LABEL_76;
              }

              v56 = *v53;
              *(a2 + 1) = v55;
              v41 |= (v56 & 0x7F) << v51;
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
LABEL_66:
                LODWORD(v41) = 0;
                goto LABEL_76;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v41) = 0;
            }
          }

          else
          {
            v39 = 0;
            v40 = 0;
            v41 = 0;
            v42 = (v38 + v37);
            v43 = v37 + 1;
            while (1)
            {
              *(a2 + 1) = v43;
              v44 = *v42++;
              v41 |= (v44 & 0x7F) << v39;
              if ((v44 & 0x80) == 0)
              {
                break;
              }

              v39 += 7;
              ++v43;
              v14 = v40++ > 8;
              if (v14)
              {
                goto LABEL_66;
              }
            }
          }

LABEL_76:
          *(this + 16) = v41;
          goto LABEL_18;
        case 3:
          *(this + 72) |= 4u;
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

          *(this + 68) = v26;
          goto LABEL_18;
      }
    }

    else if (v22 > 5)
    {
      if (v22 == 6)
      {
        PB::PtrVector<sirinluinternal::NluRequestRule>::emplace_back<>();
      }

      if (v22 == 7)
      {
        operator new();
      }
    }

    else
    {
      if (v22 == 4)
      {
        *(this + 72) |= 1u;
        v28 = *(a2 + 1);
        v27 = *(a2 + 2);
        v29 = *a2;
        if (v28 > 0xFFFFFFFFFFFFFFF5 || v28 + 10 > v27)
        {
          v45 = 0;
          v46 = 0;
          v32 = 0;
          v47 = (v29 + v28);
          v18 = v27 >= v28;
          v48 = v27 - v28;
          if (!v18)
          {
            v48 = 0;
          }

          v49 = v28 + 1;
          while (1)
          {
            if (!v48)
            {
              v32 = 0;
              *(a2 + 24) = 1;
              goto LABEL_73;
            }

            v50 = *v47;
            *(a2 + 1) = v49;
            v32 |= (v50 & 0x7F) << v45;
            if ((v50 & 0x80) == 0)
            {
              break;
            }

            v45 += 7;
            ++v47;
            --v48;
            ++v49;
            v14 = v46++ > 8;
            if (v14)
            {
LABEL_58:
              v32 = 0;
              goto LABEL_73;
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
              goto LABEL_58;
            }
          }
        }

LABEL_73:
        *(this + 1) = v32;
        goto LABEL_18;
      }

      if (v22 == 5)
      {
        operator new();
      }
    }

LABEL_17:
    if ((PB::Reader::skip(a2) & 1) == 0)
    {
      v57 = 0;
      return v57 & 1;
    }

LABEL_18:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v57 = v4 ^ 1;
  return v57 & 1;
}

void sirinluinternal::ComponentOverride::~ComponentOverride(sirinluinternal::ComponentOverride *this)
{
  sirinluinternal::ComponentOverride::~ComponentOverride(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4877E30;
  v2 = *(this + 7);
  *(this + 7) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::unique_ptr<PB::Data>::reset[abi:ne200100](this + 6, 0);
  v4 = (this + 24);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v3);
  }

  PB::Base::~Base(this);
}

double sirinluinternal::ComponentOverride::ComponentOverride(sirinluinternal::ComponentOverride *this)
{
  *this = &unk_1F4877E30;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 16) = 0;
  *(this + 68) = 1;
  *(this + 18) = 0;
  return result;
}

{
  *this = &unk_1F4877E30;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 16) = 0;
  *(this + 68) = 1;
  *(this + 18) = 0;
  return result;
}

uint64_t sirinluinternal::ComponentOverride::ComponentOverride(uint64_t this, const sirinluinternal::ComponentOverride *a2)
{
  *this = &unk_1F4877E30;
  *(this + 16) = 0u;
  *(this + 48) = 0u;
  *(this + 64) = 0;
  *(this + 32) = 0u;
  *(this + 68) = 1;
  *(this + 72) = 0;
  if (*(a2 + 2))
  {
    operator new();
  }

  v2 = *(a2 + 72);
  if ((v2 & 2) != 0)
  {
    v6 = *(a2 + 16);
    *(this + 72) |= 2u;
    *(this + 64) = v6;
    v2 = *(a2 + 72);
    if ((v2 & 4) == 0)
    {
LABEL_5:
      if ((v2 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*(a2 + 72) & 4) == 0)
  {
    goto LABEL_5;
  }

  v7 = *(a2 + 68);
  *(this + 72) |= 4u;
  *(this + 68) = v7;
  if (*(a2 + 72))
  {
LABEL_6:
    v3 = *(a2 + 1);
    *(this + 72) |= 1u;
    *(this + 8) = v3;
  }

LABEL_7:
  if (*(a2 + 7))
  {
    operator new();
  }

  v4 = *(a2 + 3);
  if (v4 != *(a2 + 4))
  {
    v5 = *v4;
    PB::PtrVector<sirinluinternal::NluRequestRule>::emplace_back<sirinluinternal::NluRequestRule const&>();
  }

  if (*(a2 + 6))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternal::ComponentOverride::operator=(uint64_t a1, const sirinluinternal::ComponentOverride *a2)
{
  if (a1 != a2)
  {
    sirinluinternal::ComponentOverride::ComponentOverride(&v11, a2);
    v3 = v14;
    v4 = *(a1 + 16);
    v5 = *(a1 + 32);
    *(a1 + 16) = v13;
    *(a1 + 32) = v3;
    v6 = *(a1 + 72);
    *(a1 + 72) = v18;
    v18 = v6;
    v7 = *(a1 + 64);
    *(a1 + 64) = v16;
    v16 = v7;
    LOBYTE(v7) = *(a1 + 68);
    *(a1 + 68) = v17;
    v17 = v7;
    v8 = *(a1 + 8);
    *(a1 + 8) = v12;
    v12 = v8;
    v13 = v4;
    v14 = v5;
    v9 = *(a1 + 48);
    *(a1 + 48) = v15;
    v15 = v9;
    sirinluinternal::ComponentOverride::~ComponentOverride(&v11);
  }

  return a1;
}

uint64_t sirinluinternal::swap(uint64_t this, sirinluinternal::ComponentOverride *a2, sirinluinternal::ComponentOverride *a3)
{
  v3 = *(this + 72);
  *(this + 72) = *(a2 + 18);
  *(a2 + 18) = v3;
  v4 = *(this + 64);
  *(this + 64) = *(a2 + 16);
  *(a2 + 16) = v4;
  LOBYTE(v4) = *(this + 68);
  *(this + 68) = *(a2 + 68);
  *(a2 + 68) = v4;
  v6 = *(this + 8);
  v5 = *(this + 16);
  v7 = *(a2 + 2);
  *(this + 8) = *(a2 + 1);
  *(this + 16) = v7;
  *(a2 + 1) = v6;
  *(a2 + 2) = v5;
  v8 = *(this + 56);
  *(this + 56) = *(a2 + 7);
  *(a2 + 7) = v8;
  v9 = *(this + 24);
  *(this + 24) = *(a2 + 3);
  *(a2 + 3) = v9;
  v10 = *(this + 32);
  *(this + 32) = *(a2 + 4);
  *(a2 + 4) = v10;
  v11 = *(this + 40);
  *(this + 40) = *(a2 + 5);
  *(a2 + 5) = v11;
  v12 = *(this + 48);
  *(this + 48) = *(a2 + 6);
  *(a2 + 6) = v12;
  return this;
}

uint64_t sirinluinternal::ComponentOverride::ComponentOverride(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4877E30;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 68) = 1;
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 72) = 0;
  v4 = *(a2 + 16);
  *(a2 + 16) = 0;
  v5 = *(a1 + 16);
  *(a1 + 16) = v4;
  if (v5)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v5);
  }

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 8) = *(a2 + 8);
  v6 = *(a2 + 56);
  *(a2 + 56) = 0;
  v7 = *(a1 + 56);
  *(a1 + 56) = v6;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__vdeallocate((a1 + 24));
  *(a1 + 24) = *(a2 + 24);
  v8 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  std::unique_ptr<PB::Data>::reset[abi:ne200100]((a1 + 48), v8);
  return a1;
}

uint64_t sirinluinternal::ComponentOverride::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluinternal::ComponentOverride::ComponentOverride(&v11, a2);
    v3 = v14;
    v4 = *(a1 + 16);
    v5 = *(a1 + 32);
    *(a1 + 16) = v13;
    *(a1 + 32) = v3;
    v6 = *(a1 + 72);
    *(a1 + 72) = v18;
    v18 = v6;
    v7 = *(a1 + 64);
    *(a1 + 64) = v16;
    v16 = v7;
    LOBYTE(v7) = *(a1 + 68);
    *(a1 + 68) = v17;
    v17 = v7;
    v8 = *(a1 + 8);
    *(a1 + 8) = v12;
    v12 = v8;
    v13 = v4;
    v14 = v5;
    v9 = *(a1 + 48);
    *(a1 + 48) = v15;
    v15 = v9;
    sirinluinternal::ComponentOverride::~ComponentOverride(&v11);
  }

  return a1;
}

uint64_t sirinluinternal::ComponentOverride::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
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

    v10 = v6 >= 0 ? *(a1 + 16) : *v4;
    v11 = v9 >= 0 ? *(a2 + 16) : *v5;
    if (memcmp(v10, v11, v7))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v13 = *(a2 + 72);
  if ((*(a1 + 72) & 2) != 0)
  {
    if ((*(a2 + 72) & 2) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((*(a2 + 72) & 2) != 0)
  {
    return 0;
  }

  if ((*(a1 + 72) & 4) != 0)
  {
    if ((*(a2 + 72) & 4) == 0 || *(a1 + 68) != *(a2 + 68))
    {
      return 0;
    }
  }

  else if ((*(a2 + 72) & 4) != 0)
  {
    return 0;
  }

  if (*(a1 + 72))
  {
    if ((*(a2 + 72) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 72))
  {
    return 0;
  }

  v14 = *(a1 + 56);
  v15 = *(a2 + 56);
  if (!v14)
  {
    if (!v15)
    {
      goto LABEL_40;
    }

    return 0;
  }

  if (!v15 || !sirinluinternal::OverrideValue::operator==(v14, v15))
  {
    return 0;
  }

LABEL_40:
  result = PB::PtrVector<sirinluinternal::NluRequestRule>::operator==((a1 + 24), *(a2 + 24), *(a2 + 32));
  if (result)
  {
    if (!*(a1 + 48))
    {
      return *(a2 + 48) == 0;
    }

    if (*(a2 + 48))
    {
      if (PB::Data::operator==())
      {
        return 1;
      }

      if (!*(a1 + 48))
      {
        return *(a2 + 48) == 0;
      }
    }

    return 0;
  }

  return result;
}

unint64_t sirinluinternal::ComponentOverride::hash_value(sirinluinternal::ComponentOverride *this)
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

  if ((*(this + 72) & 2) == 0)
  {
    v4 = 0;
    if ((*(this + 72) & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    v5 = 0;
    if (*(this + 72))
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  v4 = *(this + 16);
  if ((*(this + 72) & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  v5 = *(this + 68);
  if (*(this + 72))
  {
LABEL_7:
    v6 = *(this + 1);
    goto LABEL_11;
  }

LABEL_10:
  v6 = 0;
LABEL_11:
  v7 = *(this + 7);
  if (v7)
  {
    v8 = sirinluinternal::OverrideValue::hash_value(v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(this + 3);
  v10 = *(this + 4);
  if (v9 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 0;
    do
    {
      v12 = *v9++;
      v11 ^= sirinluinternal::NluRequestRule::hash_value(v12);
    }

    while (v9 != v10);
  }

  v13 = *(this + 6);
  if (v13)
  {
    v14 = *v13;
    v15 = v13[1];
    v16 = PBHashBytes();
  }

  else
  {
    v16 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v8 ^ v16 ^ v11;
}

uint64_t sirinluinternal::ComponentOverride::makeValue(uint64_t this)
{
  if (!*(this + 56))
  {
    operator new();
  }

  return this;
}

uint64_t SIRICOMMONDoubleValueReadFrom(uint64_t a1, void *a2)
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

uint64_t sirinluinternal::LVCOverrideValue::formatText(sirinluinternal::LVCOverrideValue *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "lvc_value");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluinternal::LVCOverrideValue::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2);
  }

  return this;
}

uint64_t sirinluinternal::LVCOverrideValue::readFrom(sirinluinternal::LVCOverrideValue *this, PB::Reader *a2)
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

void sirinluinternal::LVCOverrideValue::~LVCOverrideValue(sirinluinternal::LVCOverrideValue *this)
{
  sirinluinternal::LVCOverrideValue::~LVCOverrideValue(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  v2 = *(this + 1);
  *this = &unk_1F4877E80;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void *sirinluinternal::LVCOverrideValue::LVCOverrideValue(void *this)
{
  *this = &unk_1F4877E80;
  this[1] = 0;
  return this;
}

{
  *this = &unk_1F4877E80;
  this[1] = 0;
  return this;
}

void *sirinluinternal::LVCOverrideValue::LVCOverrideValue(void *this, const sirinluinternal::LVCOverrideValue *a2)
{
  *this = &unk_1F4877E80;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const sirinluinternal::LVCOverrideValue *sirinluinternal::LVCOverrideValue::operator=(const sirinluinternal::LVCOverrideValue *a1, const sirinluinternal::LVCOverrideValue *a2)
{
  if (a1 != a2)
  {
    sirinluinternal::LVCOverrideValue::LVCOverrideValue(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    sirinluinternal::LVCOverrideValue::~LVCOverrideValue(&v5);
  }

  return a1;
}

uint64_t sirinluinternal::swap(uint64_t this, sirinluinternal::LVCOverrideValue *a2, sirinluinternal::LVCOverrideValue *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *sirinluinternal::LVCOverrideValue::LVCOverrideValue(void *a1, uint64_t a2)
{
  *a1 = &unk_1F4877E80;
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
  *a1 = &unk_1F4877E80;
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

uint64_t sirinluinternal::LVCOverrideValue::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_1F4877E80;
    v6[1] = v4;
    sirinluinternal::LVCOverrideValue::~LVCOverrideValue(v6);
  }

  return a1;
}

BOOL sirinluinternal::LVCOverrideValue::operator==(uint64_t a1, uint64_t a2)
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
    return sirinluexternal::MultilingualVariant::operator==(v2, v3);
  }
}

sirinluexternal::MultilingualVariant *sirinluinternal::LVCOverrideValue::hash_value(sirinluinternal::LVCOverrideValue *this)
{
  result = *(this + 1);
  if (result)
  {
    return sirinluexternal::MultilingualVariant::hash_value(result);
  }

  return result;
}

uint64_t sirinluinternal::LVCOverrideValue::makeLvcValue(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t SIRINLUINTERNALSNLCSNLCParserRequestReadFrom(id *a1, void *a2)
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
      if ((v12 >> 3) <= 3)
      {
        switch(v13)
        {
          case 1:
            v14 = objc_alloc_init(SIRINLUEXTERNALUUID);
            objc_storeStrong(a1 + 5, v14);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUEXTERNALUUIDReadFrom(v14, a2))
            {
LABEL_51:

              return 0;
            }

            goto LABEL_48;
          case 2:
            v14 = objc_alloc_init(SIRINLUINTERNALNLV4_PARSERTokenisation);
            objc_storeStrong(a1 + 6, v14);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUINTERNALNLV4_PARSERTokenisationReadFrom(v14, a2))
            {
              goto LABEL_51;
            }

            goto LABEL_48;
          case 3:
            v14 = objc_alloc_init(SIRINLUINTERNALNLv4EmbeddingTensor);
            objc_storeStrong(a1 + 1, v14);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUINTERNALNLv4EmbeddingTensorReadFrom(v14, a2))
            {
              goto LABEL_51;
            }

            goto LABEL_48;
        }
      }

      else if (v13 > 5)
      {
        if (v13 == 6)
        {
          v14 = objc_alloc_init(SIRINLUEXTERNALLegacyNLContext);
          objc_storeStrong(a1 + 2, v14);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !SIRINLUEXTERNALLegacyNLContextReadFrom(v14, a2))
          {
            goto LABEL_51;
          }

          goto LABEL_48;
        }

        if (v13 == 7)
        {
          v14 = objc_alloc_init(SIRINLUEXTERNALRequestID);
          objc_storeStrong(a1 + 4, v14);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !SIRINLUEXTERNALRequestIDReadFrom(v14, a2))
          {
            goto LABEL_51;
          }

          goto LABEL_48;
        }
      }

      else
      {
        if (v13 == 4)
        {
          v14 = objc_alloc_init(SIRINLUINTERNALMatchingSpan);
          [a1 addMatchingSpans:v14];
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !SIRINLUINTERNALMatchingSpanReadFrom(v14, a2))
          {
            goto LABEL_51;
          }

          goto LABEL_48;
        }

        if (v13 == 5)
        {
          v14 = objc_alloc_init(SIRINLUEXTERNALTurnInput);
          objc_storeStrong(a1 + 7, v14);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !SIRINLUEXTERNALTurnInputReadFrom(v14, a2))
          {
            goto LABEL_51;
          }

LABEL_48:
          PBReaderRecallMark();

          goto LABEL_49;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_49:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRINLUINTERNALUAAP_PARSERUaaPParserResponseReadFrom(id *a1, void *a2)
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

    v13 = objc_alloc_init(SIRINLUEXTERNALUserParse);
    [a1 addHypotheses:v13];
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !SIRINLUEXTERNALUserParseReadFrom(v13, a2))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRINLUINTERNALMatchingSpanReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v47) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v47 & 0x7F) << v5;
        if ((v47 & 0x80) == 0)
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
            v32 = objc_alloc_init(SIRINLUINTERNALInternalSpanData);
            objc_storeStrong((a1 + 48), v32);
            v47 = 0;
            v48 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUINTERNALInternalSpanDataReadFrom(&v32->super.super.isa, a2))
            {
LABEL_98:

              return 0;
            }

            goto LABEL_70;
          }

          if (v13 == 8)
          {
            v14 = PBReaderReadString();
            v15 = 64;
            goto LABEL_55;
          }
        }

        else
        {
          if (v13 == 5)
          {
            v32 = objc_alloc_init(SIRINLUEXTERNALUsoGraph);
            objc_storeStrong((a1 + 80), v32);
            v47 = 0;
            v48 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUEXTERNALUsoGraphReadFrom(&v32->super.super.isa, a2))
            {
              goto LABEL_98;
            }

LABEL_70:
            PBReaderRecallMark();

            goto LABEL_82;
          }

          if (v13 == 6)
          {
            if ((v12 & 7) == 2)
            {
              v47 = 0;
              v48 = 0;
              result = PBReaderPlaceMark();
              if (!result)
              {
                return result;
              }

              while (1)
              {
                v17 = [a2 position];
                if (v17 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                {
                  break;
                }

                v18 = 0;
                v19 = 0;
                v20 = 0;
                while (1)
                {
                  v49 = 0;
                  v21 = [a2 position] + 1;
                  if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
                  {
                    v23 = [a2 data];
                    [v23 getBytes:&v49 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v20 |= (v49 & 0x7F) << v18;
                  if ((v49 & 0x80) == 0)
                  {
                    break;
                  }

                  v18 += 7;
                  v11 = v19++ >= 9;
                  if (v11)
                  {
                    goto LABEL_39;
                  }
                }

                [a2 hasError];
LABEL_39:
                PBRepeatedInt32Add();
              }

              PBReaderRecallMark();
            }

            else
            {
              v41 = 0;
              v42 = 0;
              v43 = 0;
              while (1)
              {
                LOBYTE(v47) = 0;
                v44 = [a2 position] + 1;
                if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
                {
                  v46 = [a2 data];
                  [v46 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v43 |= (v47 & 0x7F) << v41;
                if ((v47 & 0x80) == 0)
                {
                  break;
                }

                v41 += 7;
                v11 = v42++ >= 9;
                if (v11)
                {
                  goto LABEL_95;
                }
              }

              [a2 hasError];
LABEL_95:
              PBRepeatedInt32Add();
            }

            goto LABEL_82;
          }
        }
      }

      else if (v13 > 2)
      {
        if (v13 == 3)
        {
          v33 = 0;
          v34 = 0;
          v35 = 0;
          *(a1 + 88) |= 2u;
          while (1)
          {
            LOBYTE(v47) = 0;
            v36 = [a2 position] + 1;
            if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
            {
              v38 = [a2 data];
              [v38 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v35 |= (v47 & 0x7F) << v33;
            if ((v47 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v11 = v34++ >= 9;
            if (v11)
            {
              v30 = 0;
              goto LABEL_76;
            }
          }

          if ([a2 hasError])
          {
            v30 = 0;
          }

          else
          {
            v30 = v35;
          }

LABEL_76:
          v39 = 72;
          goto LABEL_81;
        }

        if (v13 == 4)
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          *(a1 + 88) |= 1u;
          while (1)
          {
            LOBYTE(v47) = 0;
            v27 = [a2 position] + 1;
            if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
            {
              v29 = [a2 data];
              [v29 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v26 |= (v47 & 0x7F) << v24;
            if ((v47 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v11 = v25++ >= 9;
            if (v11)
            {
              v30 = 0;
              goto LABEL_80;
            }
          }

          if ([a2 hasError])
          {
            v30 = 0;
          }

          else
          {
            v30 = v26;
          }

LABEL_80:
          v39 = 32;
LABEL_81:
          *(a1 + v39) = v30;
          goto LABEL_82;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          v15 = 56;
          goto LABEL_55;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = 40;
LABEL_55:
          v31 = *(a1 + v15);
          *(a1 + v15) = v14;

          goto LABEL_82;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_82:
      v40 = [a2 position];
    }

    while (v40 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRINLUEXTERNALSystemInformedReadFrom(id *a1, void *a2)
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

    v13 = objc_alloc_init(SIRINLUEXTERNALUsoGraph);
    [a1 addEntities:v13];
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

uint64_t sirinluinternal::SubwordToken::formatText(sirinluinternal::SubwordToken *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 24);
  if (v5)
  {
    v6 = *(this + 4);
    PB::TextFormatter::format(a2, "subword_token_index");
    v5 = *(this + 24);
  }

  if ((v5 & 2) != 0)
  {
    v7 = *(this + 5);
    PB::TextFormatter::format(a2, "token_index");
  }

  if (*(this + 1))
  {
    PB::TextFormatter::format();
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluinternal::SubwordToken::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if (*(this + 8))
  {
    this = PB::Writer::write();
  }

  v4 = *(v3 + 24);
  if (v4)
  {
    v5 = *(v3 + 16);
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 24);
  }

  if ((v4 & 2) != 0)
  {
    v6 = *(v3 + 20);

    return PB::Writer::writeVarInt(a2);
  }

  return this;
}

uint64_t sirinluinternal::SubwordToken::readFrom(sirinluinternal::SubwordToken *this, PB::Reader *a2)
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
        *(this + 24) |= 2u;
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
              goto LABEL_63;
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
LABEL_55:
              LODWORD(v37) = 0;
              goto LABEL_63;
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
              goto LABEL_55;
            }
          }
        }

LABEL_63:
        *(this + 5) = v37;
      }

      else if (v22 == 2)
      {
        *(this + 24) |= 1u;
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
              goto LABEL_60;
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
LABEL_47:
              LODWORD(v28) = 0;
              goto LABEL_60;
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
              goto LABEL_47;
            }
          }
        }

LABEL_60:
        *(this + 4) = v28;
      }

      else
      {
        if (v22 == 1)
        {
          operator new();
        }

LABEL_17:
        if (!PB::Reader::skip(a2))
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

uint64_t sirinluinternal::SubwordToken::SubwordToken(uint64_t this)
{
  *this = &unk_1F4877ED0;
  *(this + 8) = 0;
  *(this + 24) = 0;
  return this;
}

{
  *this = &unk_1F4877ED0;
  *(this + 8) = 0;
  *(this + 24) = 0;
  return this;
}

uint64_t sirinluinternal::SubwordToken::operator=(uint64_t a1, const sirinluinternal::SubwordToken *a2)
{
  if (a1 != a2)
  {
    sirinluinternal::SubwordToken::SubwordToken(&v7, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v10;
    v10 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v4;
    v5 = *(a1 + 16);
    *(a1 + 16) = v9;
    v9 = v5;
    sirinluinternal::SubwordToken::~SubwordToken(&v7);
  }

  return a1;
}

uint64_t sirinluinternal::swap(uint64_t this, sirinluinternal::SubwordToken *a2, sirinluinternal::SubwordToken *a3)
{
  v3 = *(this + 24);
  *(this + 24) = *(a2 + 6);
  *(a2 + 6) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 16);
  *(this + 16) = *(a2 + 4);
  *(a2 + 4) = v4;
  LODWORD(v4) = *(this + 20);
  *(this + 20) = *(a2 + 5);
  *(a2 + 5) = v4;
  return this;
}

uint64_t sirinluinternal::SubwordToken::SubwordToken(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4877ED0;
  *(a1 + 8) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  if (v5)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v5);
  }

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  return a1;
}

uint64_t sirinluinternal::SubwordToken::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluinternal::SubwordToken::SubwordToken(&v7, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v10;
    v10 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v4;
    v5 = *(a1 + 16);
    *(a1 + 16) = v9;
    v9 = v5;
    sirinluinternal::SubwordToken::~SubwordToken(&v7);
  }

  return a1;
}

BOOL sirinluinternal::SubwordToken::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
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

    v10 = v6 >= 0 ? *(a1 + 8) : *v4;
    v11 = v9 >= 0 ? *(a2 + 8) : *v5;
    if (memcmp(v10, v11, v7))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if ((*(a1 + 24) & 1) == 0)
  {
    if ((*(a2 + 24) & 1) == 0)
    {
      goto LABEL_25;
    }

    return 0;
  }

  if ((*(a2 + 24) & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

LABEL_25:
  result = (*(a2 + 24) & 2) == 0;
  if ((*(a1 + 24) & 2) != 0)
  {
    return (*(a2 + 24) & 2) != 0 && *(a1 + 20) == *(a2 + 20);
  }

  return result;
}

unint64_t sirinluinternal::SubwordToken::hash_value(sirinluinternal::SubwordToken *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    v2 = std::__string_hash<char>::operator()[abi:ne200100](v2);
  }

  if (*(this + 24))
  {
    v3 = *(this + 4);
    if ((*(this + 24) & 2) != 0)
    {
      goto LABEL_5;
    }

LABEL_7:
    v4 = 0;
    return v3 ^ v2 ^ v4;
  }

  v3 = 0;
  if ((*(this + 24) & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_5:
  v4 = *(this + 5);
  return v3 ^ v2 ^ v4;
}

uint64_t sirinluinternalsnlp_intermediate::ITFMAssetVersion::formatText(sirinluinternalsnlp_intermediate::ITFMAssetVersion *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 1))
  {
    PB::TextFormatter::format();
  }

  v5 = *(this + 2);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "version");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluinternalsnlp_intermediate::ITFMAssetVersion::writeTo(uint64_t this, PB::Writer *a2)
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

uint64_t sirinluinternalsnlp_intermediate::ITFMAssetVersion::readFrom(sirinluinternalsnlp_intermediate::ITFMAssetVersion *this, PB::Reader *a2)
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

void *sirinluinternalsnlp_intermediate::ITFMAssetVersion::ITFMAssetVersion(void *this, const sirinluinternalsnlp_intermediate::ITFMAssetVersion *a2)
{
  *this = &unk_1F4877F20;
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

uint64_t sirinluinternalsnlp_intermediate::ITFMAssetVersion::operator=(uint64_t a1, const sirinluinternalsnlp_intermediate::ITFMAssetVersion *a2)
{
  if (a1 != a2)
  {
    sirinluinternalsnlp_intermediate::ITFMAssetVersion::ITFMAssetVersion(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    sirinluinternalsnlp_intermediate::ITFMAssetVersion::~ITFMAssetVersion(&v5);
  }

  return a1;
}

uint64_t sirinluinternalsnlp_intermediate::swap(uint64_t this, sirinluinternalsnlp_intermediate::ITFMAssetVersion *a2, sirinluinternalsnlp_intermediate::ITFMAssetVersion *a3)
{
  v3 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v4;
  return this;
}

void *sirinluinternalsnlp_intermediate::ITFMAssetVersion::ITFMAssetVersion(void *a1, uint64_t a2)
{
  a1[1] = 0;
  v4 = a1 + 1;
  *a1 = &unk_1F4877F20;
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

uint64_t sirinluinternalsnlp_intermediate::ITFMAssetVersion::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluinternalsnlp_intermediate::ITFMAssetVersion::ITFMAssetVersion(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    sirinluinternalsnlp_intermediate::ITFMAssetVersion::~ITFMAssetVersion(&v5);
  }

  return a1;
}

BOOL sirinluinternalsnlp_intermediate::ITFMAssetVersion::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v4)
  {
    if (!v5 || !sirinluinternalsnlp_intermediate::SNLPAssetVersion::operator==(v4, v5))
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

unint64_t sirinluinternalsnlp_intermediate::ITFMAssetVersion::hash_value(sirinluinternalsnlp_intermediate::ITFMAssetVersion *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = sirinluinternalsnlp_intermediate::SNLPAssetVersion::hash_value(v2);
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

uint64_t SIRINLUEXTERNALLegacyNLContextReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v46[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v46 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v46[0] & 0x7F) << v5;
        if ((v46[0] & 0x80) == 0)
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
            v17 = 0;
            v18 = 0;
            v19 = 0;
            *(a1 + 44) |= 2u;
            while (1)
            {
              LOBYTE(v46[0]) = 0;
              v20 = [a2 position] + 1;
              if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
              {
                v22 = [a2 data];
                [v22 getBytes:v46 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v19 |= (v46[0] & 0x7F) << v17;
              if ((v46[0] & 0x80) == 0)
              {
                break;
              }

              v17 += 7;
              v11 = v18++ >= 9;
              if (v11)
              {
                LOBYTE(v23) = 0;
                goto LABEL_72;
              }
            }

            v23 = (v19 != 0) & ~[a2 hasError];
LABEL_72:
            v43 = 40;
            goto LABEL_81;
          case 2:
            v37 = 0;
            v38 = 0;
            v39 = 0;
            *(a1 + 44) |= 8u;
            while (1)
            {
              LOBYTE(v46[0]) = 0;
              v40 = [a2 position] + 1;
              if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
              {
                v42 = [a2 data];
                [v42 getBytes:v46 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v39 |= (v46[0] & 0x7F) << v37;
              if ((v46[0] & 0x80) == 0)
              {
                break;
              }

              v37 += 7;
              v11 = v38++ >= 9;
              if (v11)
              {
                LOBYTE(v23) = 0;
                goto LABEL_80;
              }
            }

            v23 = (v39 != 0) & ~[a2 hasError];
LABEL_80:
            v43 = 42;
            goto LABEL_81;
          case 3:
            v15 = PBReaderReadString();
            v16 = *(a1 + 16);
            *(a1 + 16) = v15;

            goto LABEL_82;
        }
      }

      else if (v13 > 6)
      {
        if (v13 == 7)
        {
          v30 = 0;
          v31 = 0;
          v32 = 0;
          *(a1 + 44) |= 1u;
          while (1)
          {
            LOBYTE(v46[0]) = 0;
            v33 = [a2 position] + 1;
            if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
            {
              v35 = [a2 data];
              [v35 getBytes:v46 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v32 |= (v46[0] & 0x7F) << v30;
            if ((v46[0] & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            v11 = v31++ >= 9;
            if (v11)
            {
              v36 = 0;
              goto LABEL_78;
            }
          }

          if ([a2 hasError])
          {
            v36 = 0;
          }

          else
          {
            v36 = v32;
          }

LABEL_78:
          *(a1 + 8) = v36;
          goto LABEL_82;
        }

        if (v13 == 8)
        {
          v14 = PBReaderReadString();
          if (v14)
          {
            [a1 addResponseSemanticValues:v14];
          }

LABEL_32:

          goto LABEL_82;
        }
      }

      else
      {
        if (v13 == 4)
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          *(a1 + 44) |= 4u;
          while (1)
          {
            LOBYTE(v46[0]) = 0;
            v27 = [a2 position] + 1;
            if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
            {
              v29 = [a2 data];
              [v29 getBytes:v46 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v26 |= (v46[0] & 0x7F) << v24;
            if ((v46[0] & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v11 = v25++ >= 9;
            if (v11)
            {
              LOBYTE(v23) = 0;
              goto LABEL_74;
            }
          }

          v23 = (v26 != 0) & ~[a2 hasError];
LABEL_74:
          v43 = 41;
LABEL_81:
          *(a1 + v43) = v23;
          goto LABEL_82;
        }

        if (v13 == 5)
        {
          v14 = objc_alloc_init(SIRICOMMONStringValue);
          [a1 addRenderedTexts:v14];
          v46[0] = 0;
          v46[1] = 0;
          if (!PBReaderPlaceMark() || !SIRICOMMONStringValueReadFrom(v14, a2))
          {

            return 0;
          }

          PBReaderRecallMark();
          goto LABEL_32;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_82:
      v44 = [a2 position];
    }

    while (v44 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sirinluexternal::CorrectionOutcome::formatText(sirinluexternal::CorrectionOutcome *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 12))
  {
    v5 = *(this + 2);
    PB::TextFormatter::format(a2, "type");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternal::CorrectionOutcome::writeTo(uint64_t this, PB::Writer *a2)
{
  if (*(this + 12))
  {
    v2 = *(this + 8);
    return PB::Writer::writeVarInt(a2);
  }

  return this;
}

uint64_t sirinluexternal::CorrectionOutcome::readFrom(sirinluexternal::CorrectionOutcome *this, PB::Reader *a2)
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
        *(this + 12) |= 1u;
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
              LODWORD(v26) = 0;
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
              LODWORD(v26) = 0;
              goto LABEL_40;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v26) = 0;
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
              LODWORD(v26) = 0;
              break;
            }
          }
        }

LABEL_41:
        *(this + 2) = v26;
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

void sirinluexternal::CorrectionOutcome::~CorrectionOutcome(sirinluexternal::CorrectionOutcome *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x1CCA7EC50);
}

void *sirinluexternal::CorrectionOutcome::CorrectionOutcome(void *this)
{
  *this = &unk_1F4877F70;
  this[1] = 0;
  return this;
}

{
  *this = &unk_1F4877F70;
  this[1] = 0;
  return this;
}

uint64_t sirinluexternal::CorrectionOutcome::CorrectionOutcome(uint64_t this, const sirinluexternal::CorrectionOutcome *a2)
{
  *this = &unk_1F4877F70;
  *(this + 8) = 0;
  if (*(a2 + 12))
  {
    v2 = *(a2 + 2);
    *(this + 12) = 1;
    *(this + 8) = v2;
  }

  return this;
}

{
  *this = &unk_1F4877F70;
  *(this + 8) = 0;
  if (*(a2 + 12))
  {
    v2 = *(a2 + 2);
    *(this + 12) = 1;
    *(this + 8) = v2;
  }

  return this;
}

uint64_t sirinluexternal::CorrectionOutcome::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v6[0] = &unk_1F4877F70;
    v3 = *(a2 + 12);
    v4 = *(a1 + 8);
    *(a1 + 8) = (v3 << 31 >> 31) & *(a2 + 8);
    *(a1 + 12) = v3 & 1;
    v6[1] = v4;
    PB::Base::~Base(v6);
  }

  return a1;
}

{
  if (a1 != a2)
  {
    v6[0] = &unk_1F4877F70;
    v3 = *(a2 + 8);
    *(a2 + 12) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[1] = v4;
    PB::Base::~Base(v6);
  }

  return a1;
}

uint64_t sirinluexternal::swap(uint64_t this, sirinluexternal::CorrectionOutcome *a2, sirinluexternal::CorrectionOutcome *a3)
{
  v3 = *(this + 12);
  *(this + 12) = *(a2 + 3);
  *(a2 + 3) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 2);
  *(a2 + 2) = v4;
  return this;
}

uint64_t sirinluexternal::CorrectionOutcome::CorrectionOutcome(uint64_t result, uint64_t a2)
{
  *result = &unk_1F4877F70;
  *(result + 8) = 0;
  *(result + 12) = *(a2 + 12);
  *(a2 + 12) = 0;
  *(result + 8) = *(a2 + 8);
  return result;
}

{
  *result = &unk_1F4877F70;
  *(result + 8) = 0;
  *(result + 12) = *(a2 + 12);
  *(a2 + 12) = 0;
  *(result + 8) = *(a2 + 8);
  return result;
}

BOOL sirinluexternal::CorrectionOutcome::operator==(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  result = (*(a2 + 12) & 1) == 0;
  if (v3)
  {
    return (*(a2 + 12) & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return result;
}

uint64_t sirinluexternal::CorrectionOutcome::hash_value(sirinluexternal::CorrectionOutcome *this)
{
  if (*(this + 12))
  {
    return *(this + 2);
  }

  else
  {
    return 0;
  }
}

uint64_t sirinluexternal::UserRejected::formatText(sirinluexternal::UserRejected *this, PB::TextFormatter *a2, const char *a3)
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

uint64_t sirinluexternal::UserRejected::writeTo(uint64_t this, PB::Writer *a2)
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

uint64_t sirinluexternal::UserRejected::readFrom(sirinluexternal::UserRejected *this, PB::Reader *a2)
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

void sirinluexternal::UserRejected::~UserRejected(sirinluexternal::UserRejected *this)
{
  sirinluexternal::UserRejected::~UserRejected(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4877FC0;
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

void *sirinluexternal::UserRejected::UserRejected(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4877FC0;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4877FC0;
  return this;
}

void *sirinluexternal::UserRejected::UserRejected(void *this, const sirinluexternal::UserRejected *a2)
{
  *this = &unk_1F4877FC0;
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

uint64_t sirinluexternal::UserRejected::operator=(uint64_t a1, const sirinluexternal::UserRejected *a2)
{
  if (a1 != a2)
  {
    sirinluexternal::UserRejected::UserRejected(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    sirinluexternal::UserRejected::~UserRejected(&v5);
  }

  return a1;
}

uint64_t sirinluexternal::swap(uint64_t this, sirinluexternal::UserRejected *a2, sirinluexternal::UserRejected *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  v4 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v4;
  return this;
}

void *sirinluexternal::UserRejected::UserRejected(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F4877FC0;
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

uint64_t sirinluexternal::UserRejected::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluexternal::UserRejected::UserRejected(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    sirinluexternal::UserRejected::~UserRejected(&v5);
  }

  return a1;
}

BOOL sirinluexternal::UserRejected::operator==(uint64_t a1, uint64_t a2)
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

unint64_t sirinluexternal::UserRejected::hash_value(sirinluexternal::UserRejected *this)
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

uint64_t sirinluexternal::UserRejected::makeOfferId(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::UserRejected::makeReference(uint64_t this)
{
  if (!*(this + 16))
  {
    operator new();
  }

  return this;
}

uint64_t SIRINLUEXTERNALUsoNodeReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v27) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27 & 0x7F) << v5;
        if ((v27 & 0x80) == 0)
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
            v17 = 0;
            v18 = 0;
            v19 = 0;
            *(a1 + 64) |= 1u;
            while (1)
            {
              LOBYTE(v27) = 0;
              v20 = [a2 position] + 1;
              if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
              {
                v22 = [a2 data];
                [v22 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v19 |= (v27 & 0x7F) << v17;
              if ((v27 & 0x80) == 0)
              {
                break;
              }

              v17 += 7;
              v11 = v18++ >= 9;
              if (v11)
              {
                v23 = 0;
                goto LABEL_55;
              }
            }

            if ([a2 hasError])
            {
              v23 = 0;
            }

            else
            {
              v23 = v19;
            }

LABEL_55:
            *(a1 + 40) = v23;
            goto LABEL_56;
          case 2:
            v16 = objc_alloc_init(SIRICOMMONStringValue);
            objc_storeStrong((a1 + 32), v16);
            v27 = 0;
            v28 = 0;
            if (!PBReaderPlaceMark() || !SIRICOMMONStringValueReadFrom(v16, a2))
            {
LABEL_58:

              return 0;
            }

LABEL_50:
            PBReaderRecallMark();
LABEL_51:

            goto LABEL_56;
          case 3:
            v16 = objc_alloc_init(SIRICOMMONInt64Value);
            objc_storeStrong((a1 + 16), v16);
            v27 = 0;
            v28 = 0;
            if (!PBReaderPlaceMark() || !SIRICOMMONInt64ValueReadFrom(v16, a2))
            {
              goto LABEL_58;
            }

            goto LABEL_50;
        }
      }

      else if (v13 > 5)
      {
        if (v13 == 6)
        {
          v14 = PBReaderReadString();
          v15 = 56;
          goto LABEL_47;
        }

        if (v13 == 7)
        {
          v16 = PBReaderReadString();
          if (v16)
          {
            [a1 addNormalizedStringPayloads:v16];
          }

          goto LABEL_51;
        }
      }

      else
      {
        if (v13 == 4)
        {
          v16 = objc_alloc_init(SIRICOMMONUInt32Value);
          objc_storeStrong((a1 + 48), v16);
          v27 = 0;
          v28 = 0;
          if (!PBReaderPlaceMark() || !SIRICOMMONUInt32ValueReadFrom(v16, a2))
          {
            goto LABEL_58;
          }

          goto LABEL_50;
        }

        if (v13 == 5)
        {
          v14 = PBReaderReadString();
          v15 = 8;
LABEL_47:
          v24 = *(a1 + v15);
          *(a1 + v15) = v14;

          goto LABEL_56;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_56:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRINLUINTERNALITFMITFMParserRequestReadFrom(id *a1, void *a2)
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
      if ((v12 >> 3) <= 3)
      {
        switch(v13)
        {
          case 1:
            v14 = objc_alloc_init(SIRINLUEXTERNALUUID);
            objc_storeStrong(a1 + 5, v14);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUEXTERNALUUIDReadFrom(v14, a2))
            {
LABEL_51:

              return 0;
            }

            goto LABEL_48;
          case 2:
            v14 = objc_alloc_init(SIRINLUINTERNALNLV4_PARSERTokenisation);
            objc_storeStrong(a1 + 6, v14);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUINTERNALNLV4_PARSERTokenisationReadFrom(v14, a2))
            {
              goto LABEL_51;
            }

            goto LABEL_48;
          case 3:
            v14 = objc_alloc_init(SIRINLUINTERNALNLv4EmbeddingTensor);
            objc_storeStrong(a1 + 1, v14);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUINTERNALNLv4EmbeddingTensorReadFrom(v14, a2))
            {
              goto LABEL_51;
            }

            goto LABEL_48;
        }
      }

      else if (v13 > 5)
      {
        if (v13 == 6)
        {
          v14 = objc_alloc_init(SIRINLUEXTERNALParser);
          objc_storeStrong(a1 + 4, v14);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !SIRINLUEXTERNALParserReadFrom(v14, a2))
          {
            goto LABEL_51;
          }

          goto LABEL_48;
        }

        if (v13 == 7)
        {
          v14 = objc_alloc_init(SIRINLUEXTERNALRequestID);
          objc_storeStrong(a1 + 3, v14);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !SIRINLUEXTERNALRequestIDReadFrom(v14, a2))
          {
            goto LABEL_51;
          }

          goto LABEL_48;
        }
      }

      else
      {
        if (v13 == 4)
        {
          v14 = objc_alloc_init(SIRINLUINTERNALMatchingSpan);
          [a1 addMatchingSpans:v14];
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !SIRINLUINTERNALMatchingSpanReadFrom(v14, a2))
          {
            goto LABEL_51;
          }

          goto LABEL_48;
        }

        if (v13 == 5)
        {
          v14 = objc_alloc_init(SIRINLUEXTERNALTurnInput);
          objc_storeStrong(a1 + 7, v14);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !SIRINLUEXTERNALTurnInputReadFrom(v14, a2))
          {
            goto LABEL_51;
          }

LABEL_48:
          PBReaderRecallMark();

          goto LABEL_49;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_49:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRINLUEXTERNALMultilingualVariantReadFrom(uint64_t a1, void *a2)
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
        v21 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v21 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v21 & 0x7F) << v5;
        if ((v21 & 0x80) == 0)
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
        v20 = 0;
        v15 = [a2 position] + 8;
        if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 8, v16 <= objc_msgSend(a2, "length")))
        {
          v18 = [a2 data];
          [v18 getBytes:&v20 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 16);
        *(a1 + 16) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v19 = [a2 position];
    }

    while (v19 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRINLUINTERNALCONTEXTUPDATEContextUpdateRequestReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            v14 = objc_alloc_init(SIRINLUEXTERNALUUID);
            v15 = 40;
LABEL_30:
            objc_storeStrong((a1 + v15), v14);
            v19 = 0;
            v20 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUEXTERNALUUIDReadFrom(v14, a2))
            {
LABEL_44:

              return 0;
            }

            goto LABEL_38;
          case 5:
            v17 = PBReaderReadString();
            v14 = *(a1 + 48);
            *(a1 + 48) = v17;
            goto LABEL_39;
          case 6:
            v14 = objc_alloc_init(SIRINLUEXTERNALUUID);
            v15 = 16;
            goto LABEL_30;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v14 = objc_alloc_init(SIRINLUEXTERNALTurnInput);
            objc_storeStrong((a1 + 8), v14);
LABEL_36:
            v19 = 0;
            v20 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUEXTERNALTurnInputReadFrom(v14, a2))
            {
              goto LABEL_44;
            }

            goto LABEL_38;
          case 2:
            v14 = objc_alloc_init(SIRINLUEXTERNALTurnInput);
            [a1 addPreviousTurns:v14];
            goto LABEL_36;
          case 3:
            v14 = objc_alloc_init(SIRINLUINTERNALRewriteHypothesis);
            [a1 addQrHypotheses:v14];
            v19 = 0;
            v20 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUINTERNALRewriteHypothesisReadFrom(v14, a2))
            {
              goto LABEL_44;
            }

LABEL_38:
            PBReaderRecallMark();
LABEL_39:

            goto LABEL_40;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_40:
      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRINLUINTERNALCompareOptionsReadFrom(uint64_t a1, void *a2)
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
        *(a1 + 12) |= 4u;
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
            LOBYTE(v21) = 0;
            v22 = &OBJC_IVAR___SIRINLUINTERNALCompareOptions__widthInsensitive;
            goto LABEL_53;
          }
        }

        v22 = &OBJC_IVAR___SIRINLUINTERNALCompareOptions__widthInsensitive;
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
        *(a1 + 12) |= 1u;
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
            LOBYTE(v21) = 0;
            v22 = &OBJC_IVAR___SIRINLUINTERNALCompareOptions__caseInsensitive;
            goto LABEL_53;
          }
        }

        v22 = &OBJC_IVAR___SIRINLUINTERNALCompareOptions__caseInsensitive;
        goto LABEL_52;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_54:
      v33 = [a2 position];
      if (v33 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v23 = 0;
    v24 = 0;
    v16 = 0;
    *(a1 + 12) |= 2u;
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
        LOBYTE(v21) = 0;
        v22 = &OBJC_IVAR___SIRINLUINTERNALCompareOptions__diacriticInsensitive;
        goto LABEL_53;
      }
    }

    v22 = &OBJC_IVAR___SIRINLUINTERNALCompareOptions__diacriticInsensitive;
LABEL_52:
    v21 = (v16 != 0) & ~[a2 hasError];
LABEL_53:
    *(a1 + *v22) = v21;
    goto LABEL_54;
  }

  return [a2 hasError] ^ 1;
}

void sub_1C8B70AE8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1C8B71AB8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

uint64_t SIRINLUEXTERNALNLU_ROUTERNLRouterRewriteUtteranceReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v26) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
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
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v17 = 0;
          v18 = 0;
          v19 = 0;
          *(a1 + 40) |= 1u;
          while (1)
          {
            LOBYTE(v26) = 0;
            v20 = [a2 position] + 1;
            if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
            {
              v22 = [a2 data];
              [v22 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v19 |= (v26 & 0x7F) << v17;
            if ((v26 & 0x80) == 0)
            {
              break;
            }

            v17 += 7;
            v11 = v18++ >= 9;
            if (v11)
            {
              v23 = 0;
              goto LABEL_43;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v19;
          }

LABEL_43:
          *(a1 + 24) = v23;
          goto LABEL_44;
        }

        if (v13 == 4)
        {
          v16 = objc_alloc_init(SIRINLUEXTERNALCorrectionOutcome);
          objc_storeStrong((a1 + 8), v16);
          v26 = 0;
          v27 = 0;
          if (!PBReaderPlaceMark() || !SIRINLUEXTERNALCorrectionOutcomeReadFrom(v16, a2))
          {
LABEL_46:

            return 0;
          }

          goto LABEL_30;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v16 = objc_alloc_init(SIRINLUEXTERNALUUID);
          objc_storeStrong((a1 + 32), v16);
          v26 = 0;
          v27 = 0;
          if (!PBReaderPlaceMark() || !SIRINLUEXTERNALUUIDReadFrom(v16, a2))
          {
            goto LABEL_46;
          }

LABEL_30:
          PBReaderRecallMark();

          goto LABEL_44;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = *(a1 + 16);
          *(a1 + 16) = v14;

          goto LABEL_44;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_44:
      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sirinluexternal::UsoNode::formatText(sirinluexternal::UsoNode *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 1))
  {
    PB::TextFormatter::format();
  }

  v5 = *(this + 2);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "integer_payload");
  }

  v6 = *(this + 3);
  for (i = *(this + 4); v6 != i; v6 += 24)
  {
    PB::TextFormatter::format();
  }

  v8 = *(this + 6);
  if (v8)
  {
    (*(*v8 + 32))(v8, a2, "string_payload");
  }

  if (*(this + 76))
  {
    v9 = *(this + 18);
    PB::TextFormatter::format(a2, "uso_element_id");
  }

  v10 = *(this + 7);
  if (v10)
  {
    (*(*v10 + 32))(v10, a2, "uso_verb_element_id");
  }

  if (*(this + 8))
  {
    PB::TextFormatter::format();
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternal::UsoNode::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if (*(this + 76))
  {
    v4 = *(this + 72);
    this = PB::Writer::writeVarInt(a2);
  }

  v5 = v3[6];
  if (v5)
  {
    this = PB::Writer::writeSubmessage(a2, v5);
  }

  v6 = v3[2];
  if (v6)
  {
    this = PB::Writer::writeSubmessage(a2, v6);
  }

  v7 = v3[7];
  if (v7)
  {
    this = PB::Writer::writeSubmessage(a2, v7);
  }

  if (v3[1])
  {
    this = PB::Writer::write();
  }

  if (v3[8])
  {
    this = PB::Writer::write();
  }

  v9 = v3[3];
  v8 = v3[4];
  while (v9 != v8)
  {
    this = PB::Writer::write();
    v9 += 24;
  }

  return this;
}

uint64_t sirinluexternal::UsoNode::readFrom(sirinluexternal::UsoNode *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v7 = (this + 24);
    v8 = 0xA1C40BD48D6D6;
    do
    {
      v9 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v17 = 0;
        v18 = 0;
        v12 = 0;
        v19 = (v9 + v2);
        v20 = v3 >= v2;
        v21 = v3 - v2;
        if (!v20)
        {
          v21 = 0;
        }

        v22 = v2 + 1;
        while (v21)
        {
          v23 = *v19;
          *(a2 + 1) = v22;
          v12 |= (v23 & 0x7F) << v17;
          if ((v23 & 0x80) == 0)
          {
            goto LABEL_20;
          }

          v17 += 7;
          ++v19;
          --v21;
          ++v22;
          v16 = v18++ > 8;
          if (v16)
          {
            goto LABEL_18;
          }
        }

        v4 = 1;
        *(a2 + 24) = 1;
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = (v9 + v2);
      v14 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v14;
        v15 = *v13++;
        v12 |= (v15 & 0x7F) << v10;
        if ((v15 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        ++v14;
        v16 = v11++ > 8;
        if (v16)
        {
          goto LABEL_18;
        }
      }

LABEL_20:
      if ((v12 & 7) == 4)
      {
        v4 = 0;
        break;
      }

      v24 = v12 >> 3;
      if ((v12 >> 3) <= 3)
      {
        switch(v24)
        {
          case 1:
            *(this + 76) |= 1u;
            v30 = *(a2 + 1);
            v29 = *(a2 + 2);
            v31 = *a2;
            if (v30 > 0xFFFFFFFFFFFFFFF5 || v30 + 10 > v29)
            {
              v38 = 0;
              v39 = 0;
              v34 = 0;
              v40 = (v31 + v30);
              v20 = v29 >= v30;
              v41 = v29 - v30;
              if (!v20)
              {
                v41 = 0;
              }

              v42 = v30 + 1;
              while (1)
              {
                if (!v41)
                {
                  LODWORD(v34) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_65;
                }

                v43 = *v40;
                *(a2 + 1) = v42;
                v34 |= (v43 & 0x7F) << v38;
                if ((v43 & 0x80) == 0)
                {
                  break;
                }

                v38 += 7;
                ++v40;
                --v41;
                ++v42;
                v16 = v39++ > 8;
                if (v16)
                {
LABEL_51:
                  LODWORD(v34) = 0;
                  goto LABEL_65;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v34) = 0;
              }
            }

            else
            {
              v32 = 0;
              v33 = 0;
              v34 = 0;
              v35 = (v31 + v30);
              v36 = v30 + 1;
              while (1)
              {
                *(a2 + 1) = v36;
                v37 = *v35++;
                v34 |= (v37 & 0x7F) << v32;
                if ((v37 & 0x80) == 0)
                {
                  break;
                }

                v32 += 7;
                ++v36;
                v16 = v33++ > 8;
                if (v16)
                {
                  goto LABEL_51;
                }
              }
            }

LABEL_65:
            *(this + 18) = v34;
            goto LABEL_66;
          case 2:
            operator new();
          case 3:
            operator new();
        }
      }

      else if (v24 > 5)
      {
        if (v24 == 6)
        {
          operator new();
        }

        if (v24 == 7)
        {
          v25 = *(this + 4);
          v26 = *(this + 5);
          if (v25 >= v26)
          {
            v44 = 0xAAAAAAAAAAAAAAABLL * ((v25 - *v7) >> 3);
            v45 = v44 + 1;
            if (v44 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              std::vector<std::unique_ptr<siricommon::StringValue>>::__throw_length_error[abi:ne200100]();
            }

            v46 = 0xAAAAAAAAAAAAAAABLL * ((v26 - *v7) >> 3);
            if (2 * v46 > v45)
            {
              v45 = 2 * v46;
            }

            if (v46 >= 0x555555555555555)
            {
              v47 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v47 = v45;
            }

            v56.__end_cap_.__value_ = v7;
            if (v47)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(v47);
            }

            v27 = v8;
            v48 = 24 * v44;
            *v48 = 0;
            *(v48 + 8) = 0;
            *(v48 + 16) = 0;
            v28 = 24 * v44 + 24;
            v49 = *(this + 3);
            v50 = *(this + 4) - v49;
            v51 = 24 * v44 - v50;
            memcpy((v48 - v50), v49, v50);
            v52 = *(this + 3);
            *(this + 3) = v51;
            *(this + 4) = v28;
            v53 = *(this + 5);
            *(this + 5) = 0;
            v56.__end_ = v52;
            v56.__end_cap_.__value_ = v53;
            v56.__first_ = v52;
            v56.__begin_ = v52;
            std::__split_buffer<std::string>::~__split_buffer(&v56);
          }

          else
          {
            v27 = v8;
            *v25 = 0;
            v25[1] = 0;
            v28 = (v25 + 3);
            v25[2] = 0;
          }

          *(this + 4) = v28;
          PB::Reader::read();
          v8 = v27;
          goto LABEL_66;
        }
      }

      else
      {
        if (v24 == 4)
        {
          operator new();
        }

        if (v24 == 5)
        {
          operator new();
        }
      }

LABEL_18:
      if ((PB::Reader::skip(a2) & 1) == 0)
      {
        v55 = 0;
        return v55 & 1;
      }

LABEL_66:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

  v55 = v4 ^ 1;
  return v55 & 1;
}

void sirinluexternal::UsoNode::~UsoNode(sirinluexternal::UsoNode *this)
{
  sirinluexternal::UsoNode::~UsoNode(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4878010;
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
    (*(*v4 + 8))(v4);
  }

  v7 = (this + 24);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
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
    std::default_delete<std::string>::operator()[abi:ne200100](v6);
  }

  PB::Base::~Base(this);
}

double sirinluexternal::UsoNode::UsoNode(sirinluexternal::UsoNode *this)
{
  *this = &unk_1F4878010;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  return result;
}

{
  *this = &unk_1F4878010;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  return result;
}

sirinluexternal::UsoNode *sirinluexternal::UsoNode::UsoNode(sirinluexternal::UsoNode *this, const sirinluexternal::UsoNode *a2)
{
  *this = &unk_1F4878010;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  if (*(a2 + 76))
  {
    v3 = *(a2 + 18);
    *(this + 76) = 1;
    *(this + 18) = v3;
  }

  if (*(a2 + 6))
  {
    operator new();
  }

  if (*(a2 + 2))
  {
    operator new();
  }

  if (*(a2 + 7))
  {
    operator new();
  }

  if (*(a2 + 1))
  {
    operator new();
  }

  if (*(a2 + 8))
  {
    operator new();
  }

  if (this != a2)
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(this + 1, *(a2 + 3), *(a2 + 4), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 4) - *(a2 + 3)) >> 3));
  }

  return this;
}

uint64_t sirinluexternal::UsoNode::operator=(uint64_t a1, const sirinluexternal::UsoNode *a2)
{
  if (a1 != a2)
  {
    sirinluexternal::UsoNode::UsoNode(&v9, a2);
    v3 = *(a1 + 72);
    *(a1 + 72) = v14;
    v14 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v10;
    v10 = v4;
    v5 = *(a1 + 56);
    *(a1 + 56) = v13;
    v13 = v5;
    v6 = *(a1 + 24);
    *(a1 + 24) = v11;
    v11 = v6;
    v7 = *(a1 + 40);
    *(a1 + 40) = v12;
    v12 = v7;
    sirinluexternal::UsoNode::~UsoNode(&v9);
  }

  return a1;
}

uint64_t sirinluexternal::swap(uint64_t this, sirinluexternal::UsoNode *a2, sirinluexternal::UsoNode *a3)
{
  v3 = *(this + 76);
  *(this + 76) = *(a2 + 19);
  *(a2 + 19) = v3;
  v4 = *(this + 72);
  *(this + 72) = *(a2 + 18);
  *(a2 + 18) = v4;
  v5 = *(this + 48);
  *(this + 48) = *(a2 + 6);
  *(a2 + 6) = v5;
  v6 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v6;
  v7 = *(this + 56);
  *(this + 56) = *(a2 + 7);
  *(a2 + 7) = v7;
  v8 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v8;
  v9 = *(this + 64);
  *(this + 64) = *(a2 + 8);
  *(a2 + 8) = v9;
  v10 = *(this + 24);
  *(this + 24) = *(a2 + 3);
  *(a2 + 3) = v10;
  v11 = *(this + 32);
  *(this + 32) = *(a2 + 4);
  *(a2 + 4) = v11;
  v12 = *(this + 40);
  *(this + 40) = *(a2 + 5);
  *(a2 + 5) = v12;
  return this;
}

uint64_t sirinluexternal::UsoNode::UsoNode(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4878010;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 76) = *(a2 + 76);
  *(a2 + 76) = 0;
  *(a1 + 72) = *(a2 + 72);
  v5 = *(a2 + 48);
  *(a2 + 48) = 0;
  v6 = *(a1 + 48);
  *(a1 + 48) = v5;
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
    (*(*v8 + 8))(v8);
  }

  v9 = *(a2 + 56);
  *(a2 + 56) = 0;
  v10 = *(a1 + 56);
  *(a1 + 56) = v9;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = *(a2 + 8);
  *(a2 + 8) = 0;
  v12 = *v4;
  *v4 = v11;
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

  std::vector<std::string>::__vdeallocate((a1 + 24));
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return a1;
}

uint64_t sirinluexternal::UsoNode::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluexternal::UsoNode::UsoNode(&v9, a2);
    v3 = *(a1 + 72);
    *(a1 + 72) = v14;
    v14 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v10;
    v10 = v4;
    v5 = *(a1 + 56);
    *(a1 + 56) = v13;
    v13 = v5;
    v6 = *(a1 + 24);
    *(a1 + 24) = v11;
    v11 = v6;
    v7 = *(a1 + 40);
    *(a1 + 40) = v12;
    v12 = v7;
    sirinluexternal::UsoNode::~UsoNode(&v9);
  }

  return a1;
}

BOOL sirinluexternal::UsoNode::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 76);
  if (*(a1 + 76))
  {
    if ((*(a2 + 76) & 1) == 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if (*(a2 + 76))
  {
    return 0;
  }

  v5 = *(a1 + 48);
  v6 = *(a2 + 48);
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

  v7 = *(a1 + 16);
  v8 = *(a2 + 16);
  if (v7)
  {
    if (!v8)
    {
      return 0;
    }

    v9 = *(v8 + 16);
    if (*(v7 + 16))
    {
      if ((*(v8 + 16) & 1) == 0 || *(v7 + 8) != *(v8 + 8))
      {
        return 0;
      }
    }

    else if (*(v8 + 16))
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v10 = *(a1 + 56);
  v11 = *(a2 + 56);
  if (v10)
  {
    if (!v11)
    {
      return 0;
    }

    v12 = *(v11 + 12);
    if (*(v10 + 12))
    {
      if ((*(v11 + 12) & 1) == 0 || *(v10 + 8) != *(v11 + 8))
      {
        return 0;
      }
    }

    else if (*(v11 + 12))
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v13 = *(a1 + 8);
  v14 = *(a2 + 8);
  if (v13)
  {
    if (!v14 || !std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(v13, v14))
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  v15 = *(a1 + 64);
  v16 = *(a2 + 64);
  if (!v15)
  {
    if (!v16)
    {
      goto LABEL_37;
    }

    return 0;
  }

  if (!v16 || !std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(v15, v16))
  {
    return 0;
  }

LABEL_37:
  v17 = *(a1 + 24);
  v18 = *(a1 + 32);
  v19 = *(a2 + 24);
  v20 = *(a2 + 32);

  return std::operator==[abi:ne200100]<std::string,std::allocator<std::string>>(v17, v18, v19, v20);
}

unint64_t sirinluexternal::UsoNode::hash_value(sirinluexternal::UsoNode *this)
{
  if (*(this + 76))
  {
    v2 = *(this + 18);
  }

  else
  {
    v2 = 0;
  }

  v3 = *(this + 6);
  if (v3 && (v4 = *(v3 + 8)) != 0)
  {
    v5 = std::__string_hash<char>::operator()[abi:ne200100](v4);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(this + 2);
  if (v6 && (*(v6 + 16) & 1) != 0)
  {
    v7 = *(v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(this + 7);
  if (v8 && (*(v8 + 12) & 1) != 0)
  {
    v9 = *(v8 + 8);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(this + 1);
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

  v14 = *(this + 3);
  v15 = *(this + 4);
  if (v14 == v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = 0;
    do
    {
      v16 ^= std::__string_hash<char>::operator()[abi:ne200100](v14);
      v14 += 24;
    }

    while (v14 != v15);
  }

  return v5 ^ v2 ^ v7 ^ v9 ^ v11 ^ v13 ^ v16;
}

uint64_t sirinluexternal::UsoNode::makeStringPayload(uint64_t this)
{
  if (!*(this + 48))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::UsoNode::makeIntegerPayload(uint64_t this)
{
  if (!*(this + 16))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::UsoNode::makeUsoVerbElementId(uint64_t this)
{
  if (!*(this + 56))
  {
    operator new();
  }

  return this;
}

uint64_t SIRINLUINTERNALRewriteInteractionReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v33) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33 & 0x7F) << v5;
        if ((v33 & 0x80) == 0)
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
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v21 = objc_alloc_init(SIRINLUINTERNALRewriteUtterance);
          [a1 addOriginalUtterances:v21];
          v33 = 0;
          v34 = 0;
          if (!PBReaderPlaceMark() || !SIRINLUINTERNALRewriteUtteranceReadFrom(v21, a2))
          {
LABEL_58:

            return 0;
          }

          goto LABEL_47;
        }

        if (v13 == 2)
        {
          v21 = objc_alloc_init(SIRINLUINTERNALToken);
          [a1 addSiriResponse:v21];
          v33 = 0;
          v34 = 0;
          if (!PBReaderPlaceMark() || !SIRINLUINTERNALTokenReadFrom(v21, a2))
          {
            goto LABEL_58;
          }

LABEL_47:
          PBReaderRecallMark();

          goto LABEL_56;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v22 = PBReaderReadString();
            v23 = *(a1 + 16);
            *(a1 + 16) = v22;

            goto LABEL_56;
          case 4:
            v24 = 0;
            v25 = 0;
            v26 = 0;
            *(a1 + 44) |= 2u;
            while (1)
            {
              LOBYTE(v33) = 0;
              v27 = [a2 position] + 1;
              if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
              {
                v29 = [a2 data];
                [v29 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v26 |= (v33 & 0x7F) << v24;
              if ((v33 & 0x80) == 0)
              {
                break;
              }

              v24 += 7;
              v11 = v25++ >= 9;
              if (v11)
              {
                LOBYTE(v30) = 0;
                goto LABEL_51;
              }
            }

            v30 = (v26 != 0) & ~[a2 hasError];
LABEL_51:
            *(a1 + 40) = v30;
            goto LABEL_56;
          case 5:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 44) |= 1u;
            while (1)
            {
              LOBYTE(v33) = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v33 & 0x7F) << v14;
              if ((v33 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_55;
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

LABEL_55:
            *(a1 + 8) = v20;
            goto LABEL_56;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_56:
      v31 = [a2 position];
    }

    while (v31 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRINLUINTERNALParseOverrideReadFrom(uint64_t a1, void *a2)
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
            *(a1 + 60) |= 4u;
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
                LOBYTE(v38) = 0;
                goto LABEL_73;
              }
            }

            v38 = (v34 != 0) & ~[a2 hasError];
LABEL_73:
            *(a1 + 56) = v38;
            goto LABEL_74;
          case 3:
            v15 = 0;
            v16 = 0;
            v17 = 0;
            *(a1 + 60) |= 1u;
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
                v21 = 0;
                goto LABEL_71;
              }
            }

            if ([a2 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v17;
            }

LABEL_71:
            *(a1 + 8) = v21;
            goto LABEL_74;
        }
      }

      else if (v13 > 6)
      {
        if (v13 == 7)
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

        if (v13 == 8)
        {
          v22 = PBReaderReadData();
          v23 = 48;
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
          *(a1 + 60) |= 2u;
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
          *(a1 + 40) = v31;
          goto LABEL_74;
        }

        if (v13 == 6)
        {
          v14 = objc_alloc_init(SIRINLUEXTERNALUserParse);
          objc_storeStrong((a1 + 32), v14);
          v41 = 0;
          v42 = 0;
          if (!PBReaderPlaceMark() || !SIRINLUEXTERNALUserParseReadFrom(v14, a2))
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

uint64_t sirinluinternal::AdjacentSpans::formatText(sirinluinternal::AdjacentSpans *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 1))
  {
    PB::TextFormatter::format();
  }

  v5 = *(this + 2);
  v6 = *(this + 3);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, a2, "spans");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluinternal::AdjacentSpans::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if (*(this + 8))
  {
    this = PB::Writer::write();
  }

  v5 = *(v3 + 16);
  v4 = *(v3 + 24);
  while (v5 != v4)
  {
    v6 = *v5++;
    this = PB::Writer::writeSubmessage(a2, v6);
  }

  return this;
}

uint64_t sirinluinternal::AdjacentSpans::readFrom(sirinluinternal::AdjacentSpans *this, PB::Reader *a2)
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

void sirinluinternal::AdjacentSpans::~AdjacentSpans(sirinluinternal::AdjacentSpans *this)
{
  sirinluinternal::AdjacentSpans::~AdjacentSpans(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4878060;
  v2 = (this + 16);
  if (*(this + 2))
  {
    std::vector<std::unique_ptr<siricommon::StringValue>>::clear[abi:ne200100](this + 2);
    operator delete(*v2);
  }

  v3 = *(this + 1);
  *(this + 1) = 0;
  if (v3)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v3);
  }

  PB::Base::~Base(this);
}

double sirinluinternal::AdjacentSpans::AdjacentSpans(sirinluinternal::AdjacentSpans *this)
{
  *this = &unk_1F4878060;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = &unk_1F4878060;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

uint64_t sirinluinternal::AdjacentSpans::AdjacentSpans(uint64_t this, const sirinluinternal::AdjacentSpans *a2)
{
  *this = &unk_1F4878060;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  if (*(a2 + 1))
  {
    operator new();
  }

  v2 = *(a2 + 2);
  if (v2 != *(a2 + 3))
  {
    v3 = *v2;
    operator new();
  }

  return this;
}

uint64_t sirinluinternal::AdjacentSpans::operator=(uint64_t a1, const sirinluinternal::AdjacentSpans *a2)
{
  if (a1 != a2)
  {
    sirinluinternal::AdjacentSpans::AdjacentSpans(v7, a2);
    v3 = v9;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v5 = *(a1 + 24);
    *(a1 + 24) = v3;
    v8 = v4;
    v9 = v5;
    sirinluinternal::AdjacentSpans::~AdjacentSpans(v7);
  }

  return a1;
}

void *sirinluinternal::swap(void *this, sirinluinternal::AdjacentSpans *a2, sirinluinternal::AdjacentSpans *a3)
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

uint64_t sirinluinternal::AdjacentSpans::AdjacentSpans(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4878060;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  if (v5)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v5);
    v6 = (a1 + 16);
    if (*(a1 + 16))
    {
      std::vector<std::unique_ptr<siricommon::StringValue>>::clear[abi:ne200100]((a1 + 16));
      operator delete(*v6);
      *v6 = 0;
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
    }
  }

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  return a1;
}

uint64_t sirinluinternal::AdjacentSpans::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluinternal::AdjacentSpans::AdjacentSpans(v7, a2);
    v3 = v9;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v5 = *(a1 + 24);
    *(a1 + 24) = v3;
    v8 = v4;
    v9 = v5;
    sirinluinternal::AdjacentSpans::~AdjacentSpans(v7);
  }

  return a1;
}

BOOL sirinluinternal::AdjacentSpans::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
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

    v10 = v6 >= 0 ? *(a1 + 8) : *v4;
    v11 = v9 >= 0 ? *(a2 + 8) : *v5;
    if (memcmp(v10, v11, v7))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v14 = a1 + 16;
  v12 = *(a1 + 16);
  v13 = *(v14 + 8);
  v16 = a2 + 16;
  v15 = *(a2 + 16);
  if (v13 - v12 != *(v16 + 8) - v15)
  {
    return 0;
  }

  if (v12 == v13)
  {
    return 1;
  }

  do
  {
    v18 = *v12++;
    v17 = v18;
    v19 = *v15++;
    result = sirinluinternal::SpanDataForNamedCaptureGroup::operator==(v17, v19);
  }

  while (result && v12 != v13);
  return result;
}

unint64_t sirinluinternal::AdjacentSpans::hash_value(sirinluinternal::AdjacentSpans *this)
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

  v5 = *(this + 2);
  v4 = *(this + 3);
  if (v5 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      v7 = *v5++;
      v6 ^= sirinluinternal::SpanDataForNamedCaptureGroup::hash_value(v7);
    }

    while (v5 != v4);
  }

  return v6 ^ v3;
}

uint64_t sirinluexternalnlu_router::Implicit::formatText(sirinluexternalnlu_router::Implicit *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternalnlu_router::Implicit::readFrom(sirinluexternalnlu_router::Implicit *this, PB::Reader *a2)
{
  while (1)
  {
    v4 = *(a2 + 1);
    v3 = *(a2 + 2);
    v5 = *(a2 + 24);
    v6 = v3 - v4;
    if (v3 <= v4 || (*(a2 + 24) & 1) != 0)
    {
      goto LABEL_23;
    }

    v7 = *a2;
    v8 = v4 > 0xFFFFFFFFFFFFFFF5 || v4 + 10 > v3;
    if (v8)
    {
      break;
    }

    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = (v7 + v4);
    v18 = v4 + 1;
    while (1)
    {
      *(a2 + 1) = v18;
      v19 = *v17++;
      v16 |= (v19 & 0x7F) << v14;
      if ((v19 & 0x80) == 0)
      {
        break;
      }

      v14 += 7;
      ++v18;
      v8 = v15++ > 8;
      if (v8)
      {
        goto LABEL_19;
      }
    }

LABEL_18:
    if ((v16 & 7) == 4)
    {
      v5 = 0;
LABEL_23:
      v20 = v5 ^ 1;
      return v20 & 1;
    }

LABEL_19:
    if ((PB::Reader::skip(a2) & 1) == 0)
    {
      v20 = 0;
      return v20 & 1;
    }
  }

  v9 = 0;
  v10 = 0;
  v16 = 0;
  v11 = (v7 + v4);
  v12 = v4 + 1;
  while (v6)
  {
    v13 = *v11;
    *(a2 + 1) = v12;
    v16 |= (v13 & 0x7F) << v9;
    if ((v13 & 0x80) == 0)
    {
      goto LABEL_18;
    }

    v9 += 7;
    ++v11;
    --v6;
    ++v12;
    v8 = v10++ > 8;
    if (v8)
    {
      goto LABEL_19;
    }
  }

  v20 = 0;
  *(a2 + 24) = 1;
  return v20 & 1;
}

void sirinluexternalnlu_router::Implicit::~Implicit(sirinluexternalnlu_router::Implicit *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x1CCA7EC50);
}

void *sirinluexternalnlu_router::Implicit::Implicit(void *this)
{
  *this = &unk_1F48780B0;
  return this;
}

{
  *this = &unk_1F48780B0;
  return this;
}

void *sirinluexternalnlu_router::Implicit::Implicit(void *this, const sirinluexternalnlu_router::Implicit *a2)
{
  *this = &unk_1F48780B0;
  return this;
}

{
  *this = &unk_1F48780B0;
  return this;
}

uint64_t sirinluexternalnlu_router::Implicit::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = &unk_1F48780B0;
    PB::Base::~Base(&v4);
  }

  return a1;
}

{
  if (a1 != a2)
  {
    v4 = &unk_1F48780B0;
    PB::Base::~Base(&v4);
  }

  return a1;
}

void *sirinluexternalnlu_router::Implicit::Implicit(void *result)
{
  *result = &unk_1F48780B0;
  return result;
}

{
  *result = &unk_1F48780B0;
  return result;
}

uint64_t sirinluexternalnlu_router::Explicit::formatText(sirinluexternalnlu_router::Explicit *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 12))
  {
    v5 = *(this + 2);
    PB::TextFormatter::format(a2, "partner");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternalnlu_router::Explicit::writeTo(uint64_t this, PB::Writer *a2)
{
  if (*(this + 12))
  {
    v2 = *(this + 8);
    return PB::Writer::writeVarInt(a2);
  }

  return this;
}

uint64_t sirinluexternalnlu_router::Explicit::readFrom(sirinluexternalnlu_router::Explicit *this, PB::Reader *a2)
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
        *(this + 12) |= 1u;
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
              LODWORD(v26) = 0;
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
              LODWORD(v26) = 0;
              goto LABEL_40;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v26) = 0;
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
              LODWORD(v26) = 0;
              break;
            }
          }
        }

LABEL_41:
        *(this + 2) = v26;
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

void sirinluexternalnlu_router::Explicit::~Explicit(sirinluexternalnlu_router::Explicit *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x1CCA7EC50);
}

void *sirinluexternalnlu_router::Explicit::Explicit(void *this)
{
  *this = &unk_1F4878100;
  this[1] = 0;
  return this;
}

{
  *this = &unk_1F4878100;
  this[1] = 0;
  return this;
}

uint64_t sirinluexternalnlu_router::Explicit::Explicit(uint64_t this, const sirinluexternalnlu_router::Explicit *a2)
{
  *this = &unk_1F4878100;
  *(this + 8) = 0;
  if (*(a2 + 12))
  {
    v2 = *(a2 + 2);
    *(this + 12) = 1;
    *(this + 8) = v2;
  }

  return this;
}

{
  *this = &unk_1F4878100;
  *(this + 8) = 0;
  if (*(a2 + 12))
  {
    v2 = *(a2 + 2);
    *(this + 12) = 1;
    *(this + 8) = v2;
  }

  return this;
}

uint64_t sirinluexternalnlu_router::Explicit::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v6[0] = &unk_1F4878100;
    v3 = *(a2 + 12);
    v4 = *(a1 + 8);
    *(a1 + 8) = (v3 << 31 >> 31) & *(a2 + 8);
    *(a1 + 12) = v3 & 1;
    v6[1] = v4;
    PB::Base::~Base(v6);
  }

  return a1;
}

{
  if (a1 != a2)
  {
    v6[0] = &unk_1F4878100;
    v3 = *(a2 + 8);
    *(a2 + 12) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[1] = v4;
    PB::Base::~Base(v6);
  }

  return a1;
}

uint64_t sirinluexternalnlu_router::swap(uint64_t this, sirinluexternalnlu_router::Explicit *a2, sirinluexternalnlu_router::Explicit *a3)
{
  v3 = *(this + 12);
  *(this + 12) = *(a2 + 3);
  *(a2 + 3) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 2);
  *(a2 + 2) = v4;
  return this;
}

uint64_t sirinluexternalnlu_router::Explicit::Explicit(uint64_t result, uint64_t a2)
{
  *result = &unk_1F4878100;
  *(result + 8) = 0;
  *(result + 12) = *(a2 + 12);
  *(a2 + 12) = 0;
  *(result + 8) = *(a2 + 8);
  return result;
}

{
  *result = &unk_1F4878100;
  *(result + 8) = 0;
  *(result + 12) = *(a2 + 12);
  *(a2 + 12) = 0;
  *(result + 8) = *(a2 + 8);
  return result;
}

BOOL sirinluexternalnlu_router::Explicit::operator==(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  result = (*(a2 + 12) & 1) == 0;
  if (v3)
  {
    return (*(a2 + 12) & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return result;
}

uint64_t sirinluexternalnlu_router::Explicit::hash_value(sirinluexternalnlu_router::Explicit *this)
{
  if (*(this + 12))
  {
    return *(this + 2);
  }

  else
  {
    return 0;
  }
}

uint64_t sirinluexternalnlu_router::AjaxQuery::formatText(sirinluexternalnlu_router::AjaxQuery *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "explicit_query");
  }

  v6 = *(this + 2);
  if (v6)
  {
    (*(*v6 + 32))(v6, a2, "implicit_query");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternalnlu_router::AjaxQuery::writeTo(uint64_t this, PB::Writer *a2)
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

uint64_t sirinluexternalnlu_router::AjaxQuery::readFrom(sirinluexternalnlu_router::AjaxQuery *this, PB::Reader *a2)
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

void sirinluexternalnlu_router::AjaxQuery::~AjaxQuery(sirinluexternalnlu_router::AjaxQuery *this)
{
  sirinluexternalnlu_router::AjaxQuery::~AjaxQuery(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4878150;
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

void *sirinluexternalnlu_router::AjaxQuery::AjaxQuery(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4878150;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4878150;
  return this;
}

void *sirinluexternalnlu_router::AjaxQuery::AjaxQuery(void *this, const sirinluexternalnlu_router::AjaxQuery *a2)
{
  *this = &unk_1F4878150;
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

uint64_t sirinluexternalnlu_router::AjaxQuery::operator=(uint64_t a1, const sirinluexternalnlu_router::AjaxQuery *a2)
{
  if (a1 != a2)
  {
    sirinluexternalnlu_router::AjaxQuery::AjaxQuery(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    sirinluexternalnlu_router::AjaxQuery::~AjaxQuery(&v5);
  }

  return a1;
}

uint64_t sirinluexternalnlu_router::swap(uint64_t this, sirinluexternalnlu_router::AjaxQuery *a2, sirinluexternalnlu_router::AjaxQuery *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  v4 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v4;
  return this;
}

void *sirinluexternalnlu_router::AjaxQuery::AjaxQuery(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F4878150;
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

uint64_t sirinluexternalnlu_router::AjaxQuery::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluexternalnlu_router::AjaxQuery::AjaxQuery(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    sirinluexternalnlu_router::AjaxQuery::~AjaxQuery(&v5);
  }

  return a1;
}

uint64_t sirinluexternalnlu_router::AjaxQuery::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2)
  {
    if (v3)
    {
      v4 = *(v3 + 12);
      if (*(v2 + 12))
      {
        if ((*(v3 + 12) & 1) == 0 || *(v2 + 8) != *(v3 + 8))
        {
          return 0;
        }
      }

      else if (*(v3 + 12))
      {
        return 0;
      }

      return (*(a2 + 16) == 0) ^ (*(a1 + 16) != 0);
    }
  }

  else if (!v3)
  {
    return (*(a2 + 16) == 0) ^ (*(a1 + 16) != 0);
  }

  return 0;
}

uint64_t sirinluexternalnlu_router::AjaxQuery::hash_value(sirinluexternalnlu_router::AjaxQuery *this)
{
  v1 = *(this + 1);
  if (v1 && (*(v1 + 12) & 1) != 0)
  {
    return *(v1 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t sirinluexternalnlu_router::AjaxQuery::makeExplicitQuery(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternalnlu_router::AjaxQuery::makeImplicitQuery(uint64_t this)
{
  if (!*(this + 16))
  {
    operator new();
  }

  return this;
}

uint64_t SIRINLUINTERNALSNLP_INTERMEDIATEITFMSpanFeaturizerResponseReadFrom(uint64_t a1, void *a2)
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
        v13 = objc_alloc_init(SIRINLUINTERNALSNLP_INTERMEDIATESpanFeaturizerResponse);
        objc_storeStrong((a1 + 16), v13);
        v17[0] = 0;
        v17[1] = 0;
        if (!PBReaderPlaceMark() || !SIRINLUINTERNALSNLP_INTERMEDIATESpanFeaturizerResponseReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        goto LABEL_23;
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

    v14 = PBReaderReadString();
    v13 = *(a1 + 8);
    *(a1 + 8) = v14;
LABEL_23:

    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRINLUEXTERNALCDMNluResponseReadFrom(id *a1, void *a2)
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
            v14 = objc_alloc_init(SIRINLUEXTERNALRepetitionResult);
            [a1 addRepetitionResults:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUEXTERNALRepetitionResultReadFrom(v14, a2))
            {
LABEL_46:

              return 0;
            }

            goto LABEL_43;
          case 5:
            v14 = objc_alloc_init(SIRINLUEXTERNALLanguageVariantResult);
            objc_storeStrong(a1 + 1, v14);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUEXTERNALLanguageVariantResultReadFrom(&v14->super.super.isa, a2))
            {
              goto LABEL_46;
            }

            goto LABEL_43;
          case 6:
            v14 = objc_alloc_init(SIRINLUEXTERNALNLUSupplementaryOutput);
            objc_storeStrong(a1 + 6, v14);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUEXTERNALNLUSupplementaryOutputReadFrom(&v14->super.super.isa, a2))
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
            v14 = objc_alloc_init(SIRINLUEXTERNALRequestID);
            objc_storeStrong(a1 + 4, v14);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUEXTERNALRequestIDReadFrom(v14, a2))
            {
              goto LABEL_46;
            }

            goto LABEL_43;
          case 2:
            v14 = objc_alloc_init(SIRINLUEXTERNALUserParse);
            [a1 addParses:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUEXTERNALUserParseReadFrom(v14, a2))
            {
              goto LABEL_46;
            }

            goto LABEL_43;
          case 3:
            v14 = objc_alloc_init(SIRINLUEXTERNALResponseStatus);
            objc_storeStrong(a1 + 5, v14);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUEXTERNALResponseStatusReadFrom(v14, a2))
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

uint64_t sirinluexternal::RRSurroundingText::formatText(sirinluexternal::RRSurroundingText *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "bounding_box");
  }

  if (*(this + 2))
  {
    PB::TextFormatter::format();
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternal::RRSurroundingText::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if (*(this + 16))
  {
    this = PB::Writer::write();
  }

  v4 = *(v3 + 8);
  if (v4)
  {

    return PB::Writer::writeSubmessage(a2, v4);
  }

  return this;
}

uint64_t sirinluexternal::RRSurroundingText::readFrom(sirinluexternal::RRSurroundingText *this, PB::Reader *a2)
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

void sirinluexternal::RRSurroundingText::~RRSurroundingText(sirinluexternal::RRSurroundingText *this)
{
  sirinluexternal::RRSurroundingText::~RRSurroundingText(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F48781A0;
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

void *sirinluexternal::RRSurroundingText::RRSurroundingText(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F48781A0;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F48781A0;
  return this;
}

void *sirinluexternal::RRSurroundingText::RRSurroundingText(void *this, const sirinluexternal::RRSurroundingText *a2)
{
  *this = &unk_1F48781A0;
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

uint64_t sirinluexternal::RRSurroundingText::operator=(uint64_t a1, const sirinluexternal::RRSurroundingText *a2)
{
  if (a1 != a2)
  {
    sirinluexternal::RRSurroundingText::RRSurroundingText(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    sirinluexternal::RRSurroundingText::~RRSurroundingText(&v5);
  }

  return a1;
}

uint64_t sirinluexternal::swap(uint64_t this, sirinluexternal::RRSurroundingText *a2, sirinluexternal::RRSurroundingText *a3)
{
  v3 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v4;
  return this;
}

void *sirinluexternal::RRSurroundingText::RRSurroundingText(void *a1, uint64_t a2)
{
  a1[1] = 0;
  v4 = a1 + 1;
  *a1 = &unk_1F48781A0;
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
    (*(*v8 + 8))(v8);
  }

  return a1;
}

uint64_t sirinluexternal::RRSurroundingText::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluexternal::RRSurroundingText::RRSurroundingText(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    sirinluexternal::RRSurroundingText::~RRSurroundingText(&v5);
  }

  return a1;
}

BOOL sirinluexternal::RRSurroundingText::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v4)
  {
    if (v5)
    {
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

      if (v7 == v8)
      {
        v10 = v6 >= 0 ? *(a1 + 16) : *v4;
        v11 = v9 >= 0 ? *(a2 + 16) : *v5;
        if (!memcmp(v10, v11, v7))
        {
          goto LABEL_16;
        }
      }
    }

    return 0;
  }

  if (v5)
  {
    return 0;
  }

LABEL_16:
  v12 = *(a1 + 8);
  v13 = *(a2 + 8);
  result = (v12 | v13) == 0;
  if (v12)
  {
    v15 = v13 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    v16 = *(a1 + 8);

    return sirinluexternal::RRBoundingBox::operator==(v16, v13);
  }

  return result;
}

unint64_t sirinluexternal::RRSurroundingText::hash_value(sirinluexternal::RRSurroundingText *this)
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
    v4 = sirinluexternal::RRBoundingBox::hash_value(v4);
  }

  return v4 ^ v3;
}

uint64_t sirinluexternal::RRSurroundingText::makeBoundingBox(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t SIRINLUEXTERNALAsrHypothesisReadFrom(uint64_t a1, void *a2)
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
          v14 = objc_alloc_init(SIRINLUEXTERNALUUID);
          objc_storeStrong((a1 + 24), v14);
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
          case 3:
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
          case 4:
            v14 = objc_alloc_init(SIRINLUEXTERNALAsrTokenInformation);
            [a1 addAsrTokens:v14];
            v22 = 0;
            v23 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUEXTERNALAsrTokenInformationReadFrom(v14, a2))
            {
              goto LABEL_42;
            }

            goto LABEL_35;
          case 5:
            v14 = objc_alloc_init(SIRINLUEXTERNALRewrittenUtterance);
            [a1 addRewrittenUtterances:v14];
            v22 = 0;
            v23 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUEXTERNALRewrittenUtteranceReadFrom(v14, a2))
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