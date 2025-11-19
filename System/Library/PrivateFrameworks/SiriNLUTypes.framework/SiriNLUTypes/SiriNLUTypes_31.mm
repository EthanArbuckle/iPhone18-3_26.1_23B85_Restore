void *sirinluinternalnlv4_parser::Tokenisation::Tokenisation(void *this, const sirinluinternalnlv4_parser::Tokenisation *a2)
{
  *this = &unk_1F4875890;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  if (*(a2 + 2))
  {
    operator new();
  }

  if (*(a2 + 1))
  {
    operator new();
  }

  if (*(a2 + 3))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternalnlv4_parser::Tokenisation::operator=(uint64_t a1, const sirinluinternalnlv4_parser::Tokenisation *a2)
{
  if (a1 != a2)
  {
    sirinluinternalnlv4_parser::Tokenisation::Tokenisation(&v6, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v4;
    sirinluinternalnlv4_parser::Tokenisation::~Tokenisation(&v6);
  }

  return a1;
}

void *sirinluinternalnlv4_parser::swap(void *this, sirinluinternalnlv4_parser::Tokenisation *a2, sirinluinternalnlv4_parser::Tokenisation *a3)
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
  return this;
}

void *sirinluinternalnlv4_parser::Tokenisation::Tokenisation(void *a1, void *a2)
{
  *a1 = &unk_1F4875890;
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  a1[3] = 0;
  v5 = a2[2];
  a2[2] = 0;
  v6 = a1[2];
  a1[2] = v5;
  if (v6)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v6);
  }

  v7 = a2[1];
  a2[1] = 0;
  v8 = *v4;
  *v4 = v7;
  if (v8)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v8);
  }

  v9 = a2[3];
  a2[3] = 0;
  v10 = a1[3];
  a1[3] = v9;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  return a1;
}

uint64_t sirinluinternalnlv4_parser::Tokenisation::operator=(uint64_t a1, void *a2)
{
  if (a1 != a2)
  {
    sirinluinternalnlv4_parser::Tokenisation::Tokenisation(&v6, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v4;
    sirinluinternalnlv4_parser::Tokenisation::~Tokenisation(&v6);
  }

  return a1;
}

BOOL sirinluinternalnlv4_parser::Tokenisation::operator==(void *a1, void *a2)
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
          goto LABEL_37;
        }
      }
    }

    return 0;
  }

  if (v14)
  {
    return 0;
  }

LABEL_37:
  v21 = a1[3];
  v22 = a2[3];
  result = (v21 | v22) == 0;
  if (v21 && v22)
  {
    v23 = a1[3];

    return sirinluinternal::TokenChain::operator==(v23, v22);
  }

  return result;
}

unint64_t sirinluinternalnlv4_parser::Tokenisation::hash_value(sirinluinternalnlv4_parser::Tokenisation *this)
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

  v6 = *(this + 3);
  if (v6)
  {
    v6 = sirinluinternal::TokenChain::hash_value(v6);
  }

  return v5 ^ v3 ^ v6;
}

uint64_t sirinluinternalnlv4_parser::Tokenisation::makeTokenChain(uint64_t this)
{
  if (!*(this + 24))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternalcdm_planner::CDMTranscriptEvent::formatText(sirinluexternalcdm_planner::CDMTranscriptEvent *this, PB::TextFormatter *a2, const char *a3)
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

  if (*(this + 3))
  {
    PB::TextFormatter::format();
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternalcdm_planner::CDMTranscriptEvent::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = this;
  if (*(this + 16))
  {
    this = PB::Writer::write();
  }

  if (*(v2 + 24))
  {
    this = PB::Writer::write();
  }

  if (*(v2 + 8))
  {

    return PB::Writer::write();
  }

  return this;
}

uint64_t sirinluexternalcdm_planner::CDMTranscriptEvent::readFrom(sirinluexternalcdm_planner::CDMTranscriptEvent *this, PB::Reader *a2)
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
      if (!PB::Reader::skip(a2))
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

void ***std::unique_ptr<PB::Data>::reset[abi:ne200100](void ***result, void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    free(*v2);

    JUMPOUT(0x1CCA7EC50);
  }

  return result;
}

void sirinluexternalcdm_planner::CDMTranscriptEvent::~CDMTranscriptEvent(void ***this)
{
  sirinluexternalcdm_planner::CDMTranscriptEvent::~CDMTranscriptEvent(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F48758E0;
  std::unique_ptr<PB::Data>::reset[abi:ne200100](this + 3, 0);
  std::unique_ptr<PB::Data>::reset[abi:ne200100](this + 2, 0);
  v2 = this[1];
  this[1] = 0;
  if (v2)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v2);
  }

  PB::Base::~Base(this);
}

void *sirinluexternalcdm_planner::CDMTranscriptEvent::CDMTranscriptEvent(void *this)
{
  *this = &unk_1F48758E0;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_1F48758E0;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

void *sirinluexternalcdm_planner::CDMTranscriptEvent::CDMTranscriptEvent(void *this, const sirinluexternalcdm_planner::CDMTranscriptEvent *a2)
{
  *this = &unk_1F48758E0;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  if (*(a2 + 2))
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

  return this;
}

uint64_t sirinluexternalcdm_planner::CDMTranscriptEvent::operator=(uint64_t a1, const sirinluexternalcdm_planner::CDMTranscriptEvent *a2)
{
  if (a1 != a2)
  {
    sirinluexternalcdm_planner::CDMTranscriptEvent::CDMTranscriptEvent(&v6, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    sirinluexternalcdm_planner::CDMTranscriptEvent::~CDMTranscriptEvent(&v6);
  }

  return a1;
}

void *sirinluexternalcdm_planner::swap(void *this, sirinluexternalcdm_planner::CDMTranscriptEvent *a2, sirinluexternalcdm_planner::CDMTranscriptEvent *a3)
{
  v3 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v3;
  v4 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v4;
  v5 = this[1];
  this[1] = *(a2 + 1);
  *(a2 + 1) = v5;
  return this;
}

uint64_t sirinluexternalcdm_planner::CDMTranscriptEvent::CDMTranscriptEvent(uint64_t a1, void *a2)
{
  *(a1 + 24) = 0;
  v4 = (a1 + 24);
  *a1 = &unk_1F48758E0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v5 = a2[2];
  a2[2] = 0;
  std::unique_ptr<PB::Data>::reset[abi:ne200100]((a1 + 16), v5);
  v6 = a2[3];
  a2[3] = 0;
  std::unique_ptr<PB::Data>::reset[abi:ne200100](v4, v6);
  v7 = a2[1];
  a2[1] = 0;
  v8 = *(a1 + 8);
  *(a1 + 8) = v7;
  if (v8)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v8);
  }

  return a1;
}

uint64_t sirinluexternalcdm_planner::CDMTranscriptEvent::operator=(uint64_t a1, void *a2)
{
  if (a1 != a2)
  {
    sirinluexternalcdm_planner::CDMTranscriptEvent::CDMTranscriptEvent(&v6, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    sirinluexternalcdm_planner::CDMTranscriptEvent::~CDMTranscriptEvent(&v6);
  }

  return a1;
}

BOOL sirinluexternalcdm_planner::CDMTranscriptEvent::operator==(void *a1, void *a2)
{
  v4 = a2[2];
  if (a1[2])
  {
    if (!v4 || (PB::Data::operator==() & 1) == 0 && a1[2] | a2[2])
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  v5 = a2[3];
  if (a1[3])
  {
    if (!v5 || (PB::Data::operator==() & 1) == 0 && a1[3] | a2[3])
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v6 = a1[1];
  v7 = a2[1];
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
      v13 = v9 >= 0 ? a1[1] : *v6;
      v14 = v12 >= 0 ? a2[1] : *v7;
      if (!memcmp(v13, v14, v10))
      {
        return 1;
      }
    }
  }

  return 0;
}

unint64_t sirinluexternalcdm_planner::CDMTranscriptEvent::hash_value(sirinluexternalcdm_planner::CDMTranscriptEvent *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *v2;
    v4 = v2[1];
    v5 = PBHashBytes();
  }

  else
  {
    v5 = 0;
  }

  v6 = *(this + 3);
  if (v6)
  {
    v7 = *v6;
    v8 = v6[1];
    v9 = PBHashBytes();
  }

  else
  {
    v9 = 0;
  }

  v10 = *(this + 1);
  if (v10)
  {
    v10 = std::__string_hash<char>::operator()[abi:ne200100](v10);
  }

  return v9 ^ v5 ^ v10;
}

uint64_t SIRINLUINTERNALSSUSSUResponseReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(SIRINLUEXTERNALUserParse);
        [a1 addHypotheses:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !SIRINLUEXTERNALUserParseReadFrom(v13, a2))
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

uint64_t SIRINLUEXTERNALNLU_ROUTERNLRoutingGenAIMetadataReadFrom(uint64_t a1, void *a2)
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
        v27 = objc_alloc_init(SIRINLUEXTERNALNLU_ROUTERAjaxQuery);
        objc_storeStrong((a1 + 16), v27);
        v31[0] = 0;
        v31[1] = 0;
        if (!PBReaderPlaceMark() || !SIRINLUEXTERNALNLU_ROUTERAjaxQueryReadFrom(v27, a2))
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
          *(a1 + 28) |= 2u;
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
          v28 = 24;
          goto LABEL_51;
        }

        if (v13 == 1)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 28) |= 1u;
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
          v28 = 8;
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

uint64_t sirinluinternalqueryrewrite::QRUtterance::formatText(sirinluinternalqueryrewrite::QRUtterance *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "asr_id");
  }

  v6 = *(this + 2);
  v7 = *(this + 3);
  while (v6 != v7)
  {
    v8 = *v6++;
    (*(*v8 + 32))(v8, a2, "asr_utterance_tokens");
  }

  if (*(this + 80))
  {
    PB::TextFormatter::format(a2, "confidence", *(this + 5));
  }

  if (*(this + 6))
  {
    PB::TextFormatter::format();
  }

  v9 = *(this + 7);
  v10 = *(this + 8);
  while (v9 != v10)
  {
    v11 = *v9++;
    (*(*v11 + 32))(v11, a2, "utterance_tokens");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluinternalqueryrewrite::QRUtterance::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  if (*(v3 + 48))
  {
    this = PB::Writer::write();
  }

  v5 = *(v3 + 56);
  v6 = *(v3 + 64);
  while (v5 != v6)
  {
    v7 = *v5++;
    this = PB::Writer::writeSubmessage(a2, v7);
  }

  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  while (v8 != v9)
  {
    v10 = *v8++;
    this = PB::Writer::writeSubmessage(a2, v10);
  }

  if (*(v3 + 80))
  {
    v11 = *(v3 + 40);

    return PB::Writer::write(a2, v11);
  }

  return this;
}

uint64_t sirinluinternalqueryrewrite::QRUtterance::readFrom(sirinluinternalqueryrewrite::QRUtterance *this, PB::Reader *a2)
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
          PB::PtrVector<sirinluinternalqueryrewrite::QRToken>::emplace_back<>();
        case 4:
          PB::PtrVector<sirinluinternalqueryrewrite::QRToken>::emplace_back<>();
        case 5:
          *(this + 80) |= 1u;
          v23 = *(a2 + 1);
          if (v23 <= 0xFFFFFFFFFFFFFFF7 && v23 + 8 <= *(a2 + 2))
          {
            *(this + 5) = *(*a2 + v23);
            *(a2 + 1) += 8;
          }

          else
          {
            *(a2 + 24) = 1;
          }

          goto LABEL_33;
      }
    }

LABEL_17:
    if ((PB::Reader::skip(a2) & 1) == 0)
    {
      v25 = 0;
      return v25 & 1;
    }

LABEL_33:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v25 = v4 ^ 1;
  return v25 & 1;
}

void sirinluinternalqueryrewrite::QRUtterance::~QRUtterance(sirinluinternalqueryrewrite::QRUtterance *this)
{
  sirinluinternalqueryrewrite::QRUtterance::~QRUtterance(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4875930;
  v4 = (this + 56);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v2);
  }

  v4 = (this + 16);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v3 = *(this + 1);
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  PB::Base::~Base(this);
}

double sirinluinternalqueryrewrite::QRUtterance::QRUtterance(sirinluinternalqueryrewrite::QRUtterance *this)
{
  *this = &unk_1F4875930;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 20) = 0;
  return result;
}

{
  *this = &unk_1F4875930;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 20) = 0;
  return result;
}

uint64_t sirinluinternalqueryrewrite::QRUtterance::QRUtterance(uint64_t this, const sirinluinternalqueryrewrite::QRUtterance *a2)
{
  *this = &unk_1F4875930;
  *(this + 8) = 0u;
  *(this + 48) = 0u;
  *(this + 24) = 0u;
  *(this + 64) = 0u;
  *(this + 80) = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  if (*(a2 + 6))
  {
    operator new();
  }

  v2 = *(a2 + 7);
  if (v2 != *(a2 + 8))
  {
    v3 = *v2;
    PB::PtrVector<sirinluinternalqueryrewrite::QRToken>::emplace_back<sirinluinternalqueryrewrite::QRToken const&>();
  }

  v4 = *(a2 + 2);
  if (v4 != *(a2 + 3))
  {
    v5 = *v4;
    PB::PtrVector<sirinluinternalqueryrewrite::QRToken>::emplace_back<sirinluinternalqueryrewrite::QRToken const&>();
  }

  if (*(a2 + 80))
  {
    v6 = *(a2 + 5);
    *(this + 80) |= 1u;
    *(this + 40) = v6;
  }

  return this;
}

uint64_t sirinluinternalqueryrewrite::QRUtterance::operator=(uint64_t a1, const sirinluinternalqueryrewrite::QRUtterance *a2)
{
  if (a1 != a2)
  {
    sirinluinternalqueryrewrite::QRUtterance::QRUtterance(v11, a2);
    v3 = v16;
    v4 = *(a1 + 48);
    v5 = *(a1 + 64);
    *(a1 + 48) = v15;
    *(a1 + 64) = v3;
    v6 = *(a1 + 80);
    *(a1 + 80) = v17;
    v17 = v6;
    v15 = v4;
    v16 = v5;
    v7 = v13;
    v8 = *(a1 + 8);
    *(a1 + 8) = v12;
    v9 = *(a1 + 24);
    *(a1 + 24) = v7;
    v12 = v8;
    v13 = v9;
    *&v7 = *(a1 + 40);
    *(a1 + 40) = v14;
    v14 = v7;
    sirinluinternalqueryrewrite::QRUtterance::~QRUtterance(v11);
  }

  return a1;
}

double sirinluinternalqueryrewrite::swap(sirinluinternalqueryrewrite *this, sirinluinternalqueryrewrite::QRUtterance *a2, sirinluinternalqueryrewrite::QRUtterance *a3)
{
  v3 = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  v5 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v5;
  v6 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v6;
  v7 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v7;
  v8 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v8;
  v9 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v9;
  v10 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v10;
  v11 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v11;
  result = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = result;
  return result;
}

uint64_t sirinluinternalqueryrewrite::QRUtterance::QRUtterance(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4875930;
  *(a1 + 48) = 0u;
  v4 = (a1 + 48);
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = *(a2 + 80);
  *(a2 + 80) = 0;
  v5 = *(a2 + 8);
  *(a2 + 8) = 0;
  v6 = *(a1 + 8);
  *(a1 + 8) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(a2 + 48);
  *(a2 + 48) = 0;
  v8 = *v4;
  *v4 = v7;
  if (v8)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v8);
  }

  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__vdeallocate((a1 + 56));
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__vdeallocate((a1 + 16));
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t sirinluinternalqueryrewrite::QRUtterance::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluinternalqueryrewrite::QRUtterance::QRUtterance(v11, a2);
    v3 = v16;
    v4 = *(a1 + 48);
    v5 = *(a1 + 64);
    *(a1 + 48) = v15;
    *(a1 + 64) = v3;
    v6 = *(a1 + 80);
    *(a1 + 80) = v17;
    v17 = v6;
    v15 = v4;
    v16 = v5;
    v7 = v13;
    v8 = *(a1 + 8);
    *(a1 + 8) = v12;
    v9 = *(a1 + 24);
    *(a1 + 24) = v7;
    v12 = v8;
    v13 = v9;
    *&v7 = *(a1 + 40);
    *(a1 + 40) = v14;
    v14 = v7;
    sirinluinternalqueryrewrite::QRUtterance::~QRUtterance(v11);
  }

  return a1;
}

BOOL sirinluinternalqueryrewrite::QRUtterance::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
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

  v6 = *(a1 + 48);
  v7 = *(a2 + 48);
  if (!v6)
  {
    if (!v7)
    {
      goto LABEL_25;
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

  v12 = v8 >= 0 ? *(a1 + 48) : *v6;
  v13 = v11 >= 0 ? *(a2 + 48) : *v7;
  if (memcmp(v12, v13, v9))
  {
    return 0;
  }

LABEL_25:
  result = PB::PtrVector<sirinluinternalqueryrewrite::QRToken>::operator==(*(a1 + 56), *(a1 + 64), *(a2 + 56), *(a2 + 64));
  if (result)
  {
    result = PB::PtrVector<sirinluinternalqueryrewrite::QRToken>::operator==(*(a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24));
    if (result)
    {
      result = (*(a2 + 80) & 1) == 0;
      if (*(a1 + 80))
      {
        return (*(a2 + 80) & 1) != 0 && *(a1 + 40) == *(a2 + 40);
      }
    }
  }

  return result;
}

BOOL PB::PtrVector<sirinluinternalqueryrewrite::QRToken>::operator==(char *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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
    result = sirinluinternalqueryrewrite::QRToken::operator==(v7, v9);
  }

  while (result && v5 != a2);
  return result;
}

unint64_t sirinluinternalqueryrewrite::QRUtterance::hash_value(sirinluinternalqueryrewrite::QRUtterance *this)
{
  v2 = *(this + 1);
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
  v7 = *(this + 6);
  if (v7)
  {
    v8 = std::__string_hash<char>::operator()[abi:ne200100](v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(this + 7);
  v10 = *(this + 8);
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
      v11 ^= sirinluinternalqueryrewrite::QRToken::hash_value(v12);
    }

    while (v9 != v10);
  }

  v13 = *(this + 2);
  v14 = *(this + 3);
  if (v13 == v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = 0;
    do
    {
      v16 = *v13++;
      v15 ^= sirinluinternalqueryrewrite::QRToken::hash_value(v16);
    }

    while (v13 != v14);
  }

  if (*(this + 80))
  {
    v17 = *(this + 5);
    if (v17 == 0.0)
    {
      v17 = 0.0;
    }
  }

  else
  {
    v17 = 0.0;
  }

  return v8 ^ v6 ^ v11 ^ *&v17 ^ v15;
}

uint64_t sirinluinternalqueryrewrite::QRUtterance::makeAsrId(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternalqueryrewrite::QRHypothesis::formatText(sirinluinternalqueryrewrite::QRHypothesis *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "asr_id");
  }

  v6 = *(this + 36);
  if (v6)
  {
    PB::TextFormatter::format(a2, "confidence", *(this + 2));
    v6 = *(this + 36);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(this + 8);
    PB::TextFormatter::format(a2, "rewrite_type");
  }

  if (*(this + 3))
  {
    PB::TextFormatter::format();
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluinternalqueryrewrite::QRHypothesis::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  if (*(v3 + 24))
  {
    this = PB::Writer::write();
  }

  v5 = *(v3 + 36);
  if (v5)
  {
    this = PB::Writer::write(a2, *(v3 + 16));
    v5 = *(v3 + 36);
  }

  if ((v5 & 2) != 0)
  {
    v6 = *(v3 + 32);

    return PB::Writer::writeVarInt(a2);
  }

  return this;
}

uint64_t sirinluinternalqueryrewrite::QRHypothesis::readFrom(sirinluinternalqueryrewrite::QRHypothesis *this, PB::Reader *a2)
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
        *(this + 36) |= 1u;
        v32 = *(a2 + 1);
        if (v32 <= 0xFFFFFFFFFFFFFFF7 && v32 + 8 <= *(a2 + 2))
        {
          *(this + 2) = *(*a2 + v32);
          *(a2 + 1) += 8;
        }

        else
        {
          *(a2 + 24) = 1;
        }

        goto LABEL_18;
      }

      if (v22 == 4)
      {
        *(this + 36) |= 2u;
        v24 = *(a2 + 1);
        v23 = *(a2 + 2);
        v25 = *a2;
        if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
        {
          v33 = 0;
          v34 = 0;
          v28 = 0;
          v35 = (v25 + v24);
          v18 = v23 >= v24;
          v36 = v23 - v24;
          if (!v18)
          {
            v36 = 0;
          }

          v37 = v24 + 1;
          while (1)
          {
            if (!v36)
            {
              LODWORD(v28) = 0;
              *(a2 + 24) = 1;
              goto LABEL_51;
            }

            v38 = *v35;
            *(a2 + 1) = v37;
            v28 |= (v38 & 0x7F) << v33;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            ++v35;
            --v36;
            ++v37;
            v14 = v34++ > 8;
            if (v14)
            {
LABEL_46:
              LODWORD(v28) = 0;
              goto LABEL_51;
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

LABEL_51:
        *(this + 8) = v28;
        goto LABEL_18;
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

LABEL_18:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v39 = v4 ^ 1;
  return v39 & 1;
}

void sirinluinternalqueryrewrite::QRHypothesis::~QRHypothesis(sirinluinternalqueryrewrite::QRHypothesis *this)
{
  sirinluinternalqueryrewrite::QRHypothesis::~QRHypothesis(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4875980;
  v2 = *(this + 3);
  *(this + 3) = 0;
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

void *sirinluinternalqueryrewrite::QRHypothesis::QRHypothesis(void *this)
{
  *this = &unk_1F4875980;
  this[1] = 0;
  this[3] = 0;
  this[4] = 0;
  return this;
}

{
  *this = &unk_1F4875980;
  this[1] = 0;
  this[3] = 0;
  this[4] = 0;
  return this;
}

uint64_t sirinluinternalqueryrewrite::QRHypothesis::QRHypothesis(uint64_t this, const sirinluinternalqueryrewrite::QRHypothesis *a2)
{
  *this = &unk_1F4875980;
  *(this + 8) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  if (*(a2 + 3))
  {
    operator new();
  }

  v2 = *(a2 + 36);
  if (v2)
  {
    v3 = *(a2 + 2);
    *(this + 36) |= 1u;
    *(this + 16) = v3;
    v2 = *(a2 + 36);
  }

  if ((v2 & 2) != 0)
  {
    v4 = *(a2 + 8);
    *(this + 36) |= 2u;
    *(this + 32) = v4;
  }

  return this;
}

const sirinluinternalqueryrewrite::QRHypothesis *sirinluinternalqueryrewrite::QRHypothesis::operator=(const sirinluinternalqueryrewrite::QRHypothesis *a1, const sirinluinternalqueryrewrite::QRHypothesis *a2)
{
  if (a1 != a2)
  {
    sirinluinternalqueryrewrite::QRHypothesis::QRHypothesis(v8, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v9;
    v9 = v3;
    v4 = *(a1 + 3);
    *(a1 + 3) = v11;
    v11 = v4;
    v5 = *(a1 + 2);
    *(a1 + 2) = v10;
    v10 = v5;
    v6 = *(a1 + 4);
    *(a1 + 4) = v12;
    v12 = v6;
    sirinluinternalqueryrewrite::QRHypothesis::~QRHypothesis(v8);
  }

  return a1;
}

double sirinluinternalqueryrewrite::swap(sirinluinternalqueryrewrite *this, sirinluinternalqueryrewrite::QRHypothesis *a2, sirinluinternalqueryrewrite::QRHypothesis *a3)
{
  v3 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  v5 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v5;
  result = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = result;
  LODWORD(v5) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sirinluinternalqueryrewrite::QRHypothesis::QRHypothesis(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4875980;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 36) = *(a2 + 36);
  *(a2 + 36) = 0;
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(a2 + 24);
  *(a2 + 24) = 0;
  v7 = *(a1 + 24);
  *(a1 + 24) = v6;
  if (v7)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v7);
  }

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

void *sirinluinternalqueryrewrite::QRHypothesis::operator=(void *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluinternalqueryrewrite::QRHypothesis::QRHypothesis(v8, a2);
    v3 = a1[1];
    a1[1] = v9;
    v9 = v3;
    v4 = a1[3];
    a1[3] = v11;
    v11 = v4;
    v5 = a1[2];
    a1[2] = v10;
    v10 = v5;
    v6 = a1[4];
    a1[4] = v12;
    v12 = v6;
    sirinluinternalqueryrewrite::QRHypothesis::~QRHypothesis(v8);
  }

  return a1;
}

BOOL sirinluinternalqueryrewrite::QRHypothesis::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
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

  v6 = *(a1 + 24);
  v7 = *(a2 + 24);
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

    v12 = v8 >= 0 ? *(a1 + 24) : *v6;
    v13 = v11 >= 0 ? *(a2 + 24) : *v7;
    if (memcmp(v12, v13, v9))
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if ((*(a1 + 36) & 1) == 0)
  {
    if ((*(a2 + 36) & 1) == 0)
    {
      goto LABEL_30;
    }

    return 0;
  }

  if ((*(a2 + 36) & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

LABEL_30:
  result = (*(a2 + 36) & 2) == 0;
  if ((*(a1 + 36) & 2) != 0)
  {
    return (*(a2 + 36) & 2) != 0 && *(a1 + 32) == *(a2 + 32);
  }

  return result;
}

unint64_t sirinluinternalqueryrewrite::QRHypothesis::hash_value(sirinluinternalqueryrewrite::QRHypothesis *this)
{
  v2 = *(this + 1);
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
  v7 = *(this + 3);
  if (v7)
  {
    v7 = std::__string_hash<char>::operator()[abi:ne200100](v7);
  }

  if (*(this + 36))
  {
    v8 = *(this + 2);
    if (v8 == 0.0)
    {
      v8 = 0.0;
    }

    if ((*(this + 36) & 2) != 0)
    {
      goto LABEL_15;
    }

LABEL_19:
    v9 = 0;
    return v7 ^ v6 ^ *&v8 ^ v9;
  }

  v8 = 0.0;
  if ((*(this + 36) & 2) == 0)
  {
    goto LABEL_19;
  }

LABEL_15:
  v9 = *(this + 8);
  return v7 ^ v6 ^ *&v8 ^ v9;
}

uint64_t sirinluinternalqueryrewrite::QRHypothesis::makeAsrId(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t SIRINLUINTERNALCCQROverrideTemplateReadFrom(uint64_t a1, void *a2)
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
        v13 = objc_alloc_init(SIRINLUEXTERNALRewriteMessage);
        objc_storeStrong((a1 + 8), v13);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !SIRINLUEXTERNALRewriteMessageReadFrom(v13, a2))
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

uint64_t sirinluexternalnlu_router::NLRouterRewriteUtterance::formatText(sirinluexternalnlu_router::NLRouterRewriteUtterance *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "correction_outcome");
  }

  if (*(this + 2))
  {
    PB::TextFormatter::format();
  }

  if (*(this + 36))
  {
    v6 = *(this + 8);
    PB::TextFormatter::format(a2, "routing_decision");
  }

  v7 = *(this + 3);
  if (v7)
  {
    (*(*v7 + 32))(v7, a2, "utterance_id");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternalnlu_router::NLRouterRewriteUtterance::writeTo(uint64_t this, PB::Writer *a2)
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

  if (*(v3 + 36))
  {
    v5 = *(v3 + 32);
    this = PB::Writer::writeVarInt(a2);
  }

  v6 = *(v3 + 8);
  if (v6)
  {

    return PB::Writer::writeSubmessage(a2, v6);
  }

  return this;
}

uint64_t sirinluexternalnlu_router::NLRouterRewriteUtterance::readFrom(sirinluexternalnlu_router::NLRouterRewriteUtterance *this, PB::Reader *a2)
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
        *(this + 36) |= 1u;
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
              goto LABEL_46;
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
LABEL_42:
              LODWORD(v28) = 0;
              goto LABEL_46;
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
              goto LABEL_42;
            }
          }
        }

LABEL_46:
        *(this + 8) = v28;
        goto LABEL_47;
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

LABEL_47:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v39 = v4 ^ 1;
  return v39 & 1;
}

void sirinluexternalnlu_router::NLRouterRewriteUtterance::~NLRouterRewriteUtterance(sirinluexternalnlu_router::NLRouterRewriteUtterance *this)
{
  sirinluexternalnlu_router::NLRouterRewriteUtterance::~NLRouterRewriteUtterance(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F48759D0;
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

double sirinluexternalnlu_router::NLRouterRewriteUtterance::NLRouterRewriteUtterance(sirinluexternalnlu_router::NLRouterRewriteUtterance *this)
{
  *this = &unk_1F48759D0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = &unk_1F48759D0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

uint64_t sirinluexternalnlu_router::NLRouterRewriteUtterance::NLRouterRewriteUtterance(uint64_t this, const sirinluexternalnlu_router::NLRouterRewriteUtterance *a2)
{
  *this = &unk_1F48759D0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  if (*(a2 + 3))
  {
    operator new();
  }

  if (*(a2 + 2))
  {
    operator new();
  }

  if (*(a2 + 36))
  {
    v2 = *(a2 + 8);
    *(this + 36) |= 1u;
    *(this + 32) = v2;
  }

  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternalnlu_router::NLRouterRewriteUtterance::operator=(uint64_t a1, const sirinluexternalnlu_router::NLRouterRewriteUtterance *a2)
{
  if (a1 != a2)
  {
    sirinluexternalnlu_router::NLRouterRewriteUtterance::NLRouterRewriteUtterance(v7, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v9;
    v9 = v3;
    v4 = *(a1 + 32);
    *(a1 + 32) = v10;
    v10 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v5;
    sirinluexternalnlu_router::NLRouterRewriteUtterance::~NLRouterRewriteUtterance(v7);
  }

  return a1;
}

uint64_t sirinluexternalnlu_router::swap(uint64_t this, sirinluexternalnlu_router::NLRouterRewriteUtterance *a2, sirinluexternalnlu_router::NLRouterRewriteUtterance *a3)
{
  v3 = *(this + 36);
  *(this + 36) = *(a2 + 9);
  *(a2 + 9) = v3;
  v4 = *(this + 24);
  *(this + 24) = *(a2 + 3);
  *(a2 + 3) = v4;
  v5 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v5;
  LODWORD(v5) = *(this + 32);
  *(this + 32) = *(a2 + 8);
  *(a2 + 8) = v5;
  v6 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v6;
  return this;
}

uint64_t sirinluexternalnlu_router::NLRouterRewriteUtterance::NLRouterRewriteUtterance(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F48759D0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 36) = *(a2 + 36);
  *(a2 + 36) = 0;
  v4 = *(a2 + 24);
  *(a2 + 24) = 0;
  v5 = *(a1 + 24);
  *(a1 + 24) = v4;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(a2 + 16);
  *(a2 + 16) = 0;
  v7 = *(a1 + 16);
  *(a1 + 16) = v6;
  if (v7)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v7);
  }

  *(a1 + 32) = *(a2 + 32);
  v8 = *(a2 + 8);
  *(a2 + 8) = 0;
  v9 = *(a1 + 8);
  *(a1 + 8) = v8;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  return a1;
}

uint64_t sirinluexternalnlu_router::NLRouterRewriteUtterance::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluexternalnlu_router::NLRouterRewriteUtterance::NLRouterRewriteUtterance(v7, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v9;
    v9 = v3;
    v4 = *(a1 + 32);
    *(a1 + 32) = v10;
    v10 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v5;
    sirinluexternalnlu_router::NLRouterRewriteUtterance::~NLRouterRewriteUtterance(v7);
  }

  return a1;
}

BOOL sirinluexternalnlu_router::NLRouterRewriteUtterance::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v5 = *(a2 + 24);
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

  v6 = *(a1 + 16);
  v7 = *(a2 + 16);
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

    v12 = v8 >= 0 ? *(a1 + 16) : *v6;
    v13 = v11 >= 0 ? *(a2 + 16) : *v7;
    if (memcmp(v12, v13, v9))
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v15 = *(a2 + 36);
  if (*(a1 + 36))
  {
    if ((*(a2 + 36) & 1) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if (*(a2 + 36))
  {
    return 0;
  }

  v16 = *(a1 + 8);
  v17 = *(a2 + 8);
  result = (v16 | v17) == 0;
  if (v16 && v17)
  {
    v18 = *(v17 + 12);
    if (*(v16 + 12))
    {
      if ((*(v17 + 12) & 1) != 0 && *(v16 + 8) == *(v17 + 8))
      {
        return 1;
      }
    }

    else if ((*(v17 + 12) & 1) == 0)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

unint64_t sirinluexternalnlu_router::NLRouterRewriteUtterance::hash_value(sirinluexternalnlu_router::NLRouterRewriteUtterance *this)
{
  v2 = *(this + 3);
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
  v7 = *(this + 2);
  if (v7)
  {
    v7 = std::__string_hash<char>::operator()[abi:ne200100](v7);
  }

  if (*(this + 36))
  {
    v8 = *(this + 8);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(this + 1);
  if (v9)
  {
    if (*(v9 + 12))
    {
      v9 = *(v9 + 8);
    }

    else
    {
      v9 = 0;
    }
  }

  return v7 ^ v6 ^ v8 ^ v9;
}

uint64_t sirinluexternalnlu_router::NLRouterRewriteUtterance::makeUtteranceId(uint64_t this)
{
  if (!*(this + 24))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternalnlu_router::NLRouterRewriteUtterance::makeCorrectionOutcome(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::SystemDialogAct::formatText(sirinluexternal::SystemDialogAct *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "gave_options");
  }

  v6 = *(this + 2);
  if (v6)
  {
    (*(*v6 + 32))(v6, a2, "id_a");
  }

  v7 = *(this + 3);
  if (v7)
  {
    (*(*v7 + 32))(v7, a2, "informed");
  }

  v8 = *(this + 4);
  if (v8)
  {
    (*(*v8 + 32))(v8, a2, "offered");
  }

  v9 = *(this + 5);
  if (v9)
  {
    (*(*v9 + 32))(v9, a2, "prompted");
  }

  v10 = *(this + 6);
  if (v10)
  {
    (*(*v10 + 32))(v10, a2, "rendered_text");
  }

  v11 = *(this + 7);
  if (v11)
  {
    (*(*v11 + 32))(v11, a2, "reported_failure");
  }

  v12 = *(this + 8);
  if (v12)
  {
    (*(*v12 + 32))(v12, a2, "reported_success");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternal::SystemDialogAct::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 16);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  v5 = v3[5];
  if (v5)
  {
    this = PB::Writer::writeSubmessage(a2, v5);
  }

  v6 = v3[4];
  if (v6)
  {
    this = PB::Writer::writeSubmessage(a2, v6);
  }

  v7 = v3[1];
  if (v7)
  {
    this = PB::Writer::writeSubmessage(a2, v7);
  }

  v8 = v3[3];
  if (v8)
  {
    this = PB::Writer::writeSubmessage(a2, v8);
  }

  v9 = v3[8];
  if (v9)
  {
    this = PB::Writer::writeSubmessage(a2, v9);
  }

  v10 = v3[7];
  if (v10)
  {
    this = PB::Writer::writeSubmessage(a2, v10);
  }

  v11 = v3[6];
  if (v11)
  {

    return PB::Writer::writeSubmessage(a2, v11);
  }

  return this;
}

uint64_t sirinluexternal::SystemDialogAct::readFrom(sirinluexternal::SystemDialogAct *this, PB::Reader *a2)
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
        goto LABEL_43;
      }

      v21 = v9 >> 3;
      if ((v9 >> 3) > 4)
      {
        if (v21 > 6)
        {
          if (v21 == 7)
          {
            operator new();
          }

          if (v21 == 101)
          {
            operator new();
          }
        }

        else
        {
          if (v21 == 5)
          {
            operator new();
          }

          if (v21 == 6)
          {
            operator new();
          }
        }
      }

      else if (v21 > 2)
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
        goto LABEL_43;
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

LABEL_43:
  v23 = v4 ^ 1;
  return v23 & 1;
}

void sirinluexternal::SystemDialogAct::~SystemDialogAct(sirinluexternal::SystemDialogAct *this)
{
  sirinluexternal::SystemDialogAct::~SystemDialogAct(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4875A20;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
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

  v7 = *(this + 3);
  *(this + 3) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 2);
  *(this + 2) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(this + 1);
  *(this + 1) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  PB::Base::~Base(this);
}

double sirinluexternal::SystemDialogAct::SystemDialogAct(sirinluexternal::SystemDialogAct *this)
{
  *this = &unk_1F4875A20;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  return result;
}

{
  *this = &unk_1F4875A20;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  return result;
}

uint64_t sirinluexternal::SystemDialogAct::SystemDialogAct(uint64_t this, const sirinluexternal::SystemDialogAct *a2)
{
  *this = &unk_1F4875A20;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  if (*(a2 + 2))
  {
    operator new();
  }

  if (*(a2 + 5))
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

  if (*(a2 + 3))
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

  if (*(a2 + 6))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::SystemDialogAct::operator=(uint64_t a1, const sirinluexternal::SystemDialogAct *a2)
{
  if (a1 != a2)
  {
    sirinluexternal::SystemDialogAct::SystemDialogAct(v10, a2);
    v3 = v12;
    v4 = *(a1 + 8);
    *(a1 + 8) = v11;
    v5 = *(a1 + 24);
    *(a1 + 24) = v3;
    v11 = v4;
    v12 = v5;
    v6 = v13;
    v7 = *(a1 + 56);
    *(a1 + 56) = v14;
    v8 = *(a1 + 40);
    *(a1 + 40) = v6;
    v13 = v8;
    v14 = v7;
    sirinluexternal::SystemDialogAct::~SystemDialogAct(v10);
  }

  return a1;
}

void *sirinluexternal::swap(void *this, sirinluexternal::SystemDialogAct *a2, sirinluexternal::SystemDialogAct *a3)
{
  v3 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v3;
  v4 = this[5];
  this[5] = *(a2 + 5);
  *(a2 + 5) = v4;
  v5 = this[4];
  this[4] = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = this[1];
  this[1] = *(a2 + 1);
  *(a2 + 1) = v6;
  v7 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v7;
  v8 = this[8];
  this[8] = *(a2 + 8);
  *(a2 + 8) = v8;
  v9 = this[7];
  this[7] = *(a2 + 7);
  *(a2 + 7) = v9;
  v10 = this[6];
  this[6] = *(a2 + 6);
  *(a2 + 6) = v10;
  return this;
}

uint64_t sirinluexternal::SystemDialogAct::SystemDialogAct(uint64_t a1, void *a2)
{
  *a1 = &unk_1F4875A20;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  v5 = a2[2];
  a2[2] = 0;
  v6 = *(a1 + 16);
  *(a1 + 16) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = a2[5];
  a2[5] = 0;
  v8 = *(a1 + 40);
  *(a1 + 40) = v7;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = a2[4];
  a2[4] = 0;
  v10 = *(a1 + 32);
  *(a1 + 32) = v9;
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

  v13 = a2[3];
  a2[3] = 0;
  v14 = *(a1 + 24);
  *(a1 + 24) = v13;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v15 = a2[8];
  a2[8] = 0;
  v16 = *(a1 + 64);
  *(a1 + 64) = v15;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  v17 = a2[7];
  a2[7] = 0;
  v18 = *(a1 + 56);
  *(a1 + 56) = v17;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  v19 = a2[6];
  a2[6] = 0;
  v20 = *(a1 + 48);
  *(a1 + 48) = v19;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  return a1;
}

uint64_t sirinluexternal::SystemDialogAct::operator=(uint64_t a1, void *a2)
{
  if (a1 != a2)
  {
    sirinluexternal::SystemDialogAct::SystemDialogAct(v10, a2);
    v3 = v12;
    v4 = *(a1 + 8);
    *(a1 + 8) = v11;
    v5 = *(a1 + 24);
    *(a1 + 24) = v3;
    v11 = v4;
    v12 = v5;
    v6 = v13;
    v7 = *(a1 + 56);
    *(a1 + 56) = v14;
    v8 = *(a1 + 40);
    *(a1 + 40) = v6;
    v13 = v8;
    v14 = v7;
    sirinluexternal::SystemDialogAct::~SystemDialogAct(v10);
  }

  return a1;
}

BOOL sirinluexternal::SystemDialogAct::operator==(void *a1, void *a2)
{
  v4 = a1[2];
  v5 = a2[2];
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

  v6 = a1[5];
  v7 = a2[5];
  if (v6)
  {
    if (!v7 || !sirinluexternal::SystemPrompted::operator==(v6, v7))
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v8 = a1[4];
  v9 = a2[4];
  if (v8)
  {
    if (!v9 || !sirinluexternal::SystemOffered::operator==(v8, v9))
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v10 = a1[1];
  v11 = a2[1];
  if (v10)
  {
    if (!v11 || !PB::PtrVector<sirinluexternal::UserDialogAct>::operator==(v10 + 8, *(v11 + 8), *(v11 + 16)))
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v12 = a1[3];
  v13 = a2[3];
  if (v12)
  {
    if (!v13 || !sirinluexternal::SystemInformed::operator==(v12, v13))
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  v14 = a1[8];
  v15 = a2[8];
  if (v14)
  {
    if (!v15 || !sirinluexternal::SystemReportedSuccess::operator==(v14, v15))
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  v16 = a1[7];
  v17 = a2[7];
  if (!v16)
  {
    if (!v17)
    {
      goto LABEL_34;
    }

    return 0;
  }

  if (!v17 || !sirinluexternal::SystemReportedFailure::operator==(v16, v17))
  {
    return 0;
  }

LABEL_34:
  v18 = a1[6];
  v19 = a2[6];
  result = (v18 | v19) == 0;
  if (v18 && v19)
  {
    v21 = a1[6];

    return siricommon::StringValue::operator==(v21, v19);
  }

  return result;
}

unint64_t sirinluexternal::SystemDialogAct::hash_value(sirinluexternal::SystemDialogAct *this)
{
  v2 = *(this + 2);
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
  v7 = *(this + 5);
  if (v7)
  {
    v8 = sirinluexternal::SystemPrompted::hash_value(v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(this + 4);
  if (v9 && (v10 = *(v9 + 8)) != 0)
  {
    v11 = sirinluexternal::UserDialogAct::hash_value(v10);
  }

  else
  {
    v11 = 0;
  }

  v12 = *(this + 1);
  if (!v12 || (v13 = *(v12 + 8), v14 = *(v12 + 16), v13 == v14))
  {
    v15 = 0;
  }

  else
  {
    v15 = 0;
    do
    {
      v16 = *v13++;
      v15 ^= sirinluexternal::UserDialogAct::hash_value(v16);
    }

    while (v13 != v14);
  }

  v17 = *(this + 3);
  if (v17)
  {
    v18 = sirinluexternal::SystemInformed::hash_value(v17);
  }

  else
  {
    v18 = 0;
  }

  v19 = *(this + 8);
  if (v19)
  {
    v20 = sirinluexternal::SystemReportedSuccess::hash_value(v19);
  }

  else
  {
    v20 = 0;
  }

  v21 = *(this + 7);
  if (v21)
  {
    v22 = sirinluexternal::SystemReportedFailure::hash_value(v21);
  }

  else
  {
    v22 = 0;
  }

  v23 = *(this + 6);
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

  return v8 ^ v6 ^ v11 ^ v18 ^ v20 ^ v22 ^ v24 ^ v15;
}

uint64_t sirinluexternal::SystemDialogAct::makeIdA(uint64_t this)
{
  if (!*(this + 16))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::SystemDialogAct::makePrompted(uint64_t this)
{
  if (!*(this + 40))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::SystemDialogAct::makeOffered(uint64_t this)
{
  if (!*(this + 32))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::SystemDialogAct::makeGaveOptions(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::SystemDialogAct::makeInformed(uint64_t this)
{
  if (!*(this + 24))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::SystemDialogAct::makeReportedSuccess(uint64_t this)
{
  if (!*(this + 64))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::SystemDialogAct::makeReportedFailure(uint64_t this)
{
  if (!*(this + 56))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::SystemDialogAct::makeRenderedText(uint64_t this)
{
  if (!*(this + 48))
  {
    operator new();
  }

  return this;
}

uint64_t SIRINLUINTERNALSPANMATCHSpanMatchRequestReadFrom(uint64_t a1, void *a2)
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
          v15 = PBReaderReadString();
          v14 = *(a1 + 32);
          *(a1 + 32) = v15;
          goto LABEL_34;
        }

        if (v13 == 4)
        {
          v14 = objc_alloc_init(SIRINLUEXTERNALUUID);
          objc_storeStrong((a1 + 8), v14);
          v18 = 0;
          v19 = 0;
          if (!PBReaderPlaceMark() || !SIRINLUEXTERNALUUIDReadFrom(v14, a2))
          {
LABEL_37:

            return 0;
          }

LABEL_32:
          PBReaderRecallMark();
LABEL_34:

          goto LABEL_35;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(SIRINLUINTERNALTokenChain);
          objc_storeStrong((a1 + 24), v14);
          v18 = 0;
          v19 = 0;
          if (!PBReaderPlaceMark() || !SIRINLUINTERNALTokenChainReadFrom(v14, a2))
          {
            goto LABEL_37;
          }

          goto LABEL_32;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(SIRINLUEXTERNALNLContext);
          objc_storeStrong((a1 + 16), v14);
          v18 = 0;
          v19 = 0;
          if (!PBReaderPlaceMark() || !SIRINLUEXTERNALNLContextReadFrom(&v14->super.super.isa, a2))
          {
            goto LABEL_37;
          }

          goto LABEL_32;
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

uint64_t SIRINLUEXTERNALRRBoundingBoxReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v30) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v30 & 0x7F) << v5;
        if ((v30 & 0x80) == 0)
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
          *(a1 + 40) |= 2u;
          v30 = 0;
          v20 = [a2 position] + 8;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 8, v21 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:&v30 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v23 = v30;
          v24 = &OBJC_IVAR___SIRINLUEXTERNALRRBoundingBox__width;
          goto LABEL_44;
        }

        if (v13 == 4)
        {
          *(a1 + 40) |= 1u;
          v30 = 0;
          v16 = [a2 position] + 8;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
          {
            v25 = [a2 data];
            [v25 getBytes:&v30 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v23 = v30;
          v24 = &OBJC_IVAR___SIRINLUEXTERNALRRBoundingBox__height;
          goto LABEL_44;
        }
      }

      else
      {
        if (v13 == 1)
        {
          *(a1 + 40) |= 4u;
          v30 = 0;
          v18 = [a2 position] + 8;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 8, v19 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v30 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v23 = v30;
          v24 = &OBJC_IVAR___SIRINLUEXTERNALRRBoundingBox__xCoordinate;
          goto LABEL_44;
        }

        if (v13 == 2)
        {
          *(a1 + 40) |= 8u;
          v30 = 0;
          v14 = [a2 position] + 8;
          if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:&v30 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v23 = v30;
          v24 = &OBJC_IVAR___SIRINLUEXTERNALRRBoundingBox__yCoordinate;
LABEL_44:
          *(a1 + *v24) = v23;
          goto LABEL_45;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_45:
      v28 = [a2 position];
    }

    while (v28 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRINLUINTERNALCONTEXTUPDATEContextUpdateResponseReadFrom(id *a1, void *a2)
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
        v13 = objc_alloc_init(SIRINLUINTERNALCONTEXTUPDATEReformedTurnInputBundle);
        [a1 addReformedTurnInputBundles:v13];
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !SIRINLUINTERNALCONTEXTUPDATEReformedTurnInputBundleReadFrom(v13, a2))
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

    v13 = objc_alloc_init(SIRINLUEXTERNALUUID);
    objc_storeStrong(a1 + 2, v13);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !SIRINLUEXTERNALUUIDReadFrom(v13, a2))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

uint64_t siricommon::UInt64Value::formatText(siricommon::UInt64Value *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 16))
  {
    v5 = *(this + 1);
    PB::TextFormatter::format(a2, "value");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t siricommon::UInt64Value::writeTo(uint64_t this, PB::Writer *a2)
{
  if (*(this + 16))
  {
    v2 = *(this + 8);
    return PB::Writer::writeVarInt(a2);
  }

  return this;
}

uint64_t siricommon::UInt64Value::readFrom(siricommon::UInt64Value *this, PB::Reader *a2)
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

void siricommon::UInt64Value::~UInt64Value(siricommon::UInt64Value *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x1CCA7EC50);
}

uint64_t siricommon::UInt64Value::UInt64Value(uint64_t this)
{
  *this = &unk_1F4875A70;
  *(this + 16) = 0;
  return this;
}

{
  *this = &unk_1F4875A70;
  *(this + 16) = 0;
  return this;
}

uint64_t siricommon::UInt64Value::UInt64Value(uint64_t this, const siricommon::UInt64Value *a2)
{
  *this = &unk_1F4875A70;
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
  *this = &unk_1F4875A70;
  *(this + 16) = 0;
  if (*(a2 + 16))
  {
    v2 = *(a2 + 1);
    *(this + 16) = 1;
    *(this + 8) = v2;
  }

  return this;
}

uint64_t siricommon::UInt64Value::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    v4 = *(a1 + 16);
    *(a1 + 16) = *(a2 + 16) & 1;
    v8 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v3;
    v7[0] = &unk_1F4875A70;
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
    v8[0] = &unk_1F4875A70;
    v8[1] = v6;
    PB::Base::~Base(v8);
  }

  return a1;
}

uint64_t siricommon::swap(uint64_t this, siricommon::UInt64Value *a2, siricommon::UInt64Value *a3)
{
  v3 = *(this + 16);
  *(this + 16) = *(a2 + 4);
  *(a2 + 4) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v4;
  return this;
}

uint64_t siricommon::UInt64Value::UInt64Value(uint64_t result, uint64_t a2)
{
  *result = &unk_1F4875A70;
  *(result + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  *(result + 8) = *(a2 + 8);
  return result;
}

{
  *result = &unk_1F4875A70;
  *(result + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  *(result + 8) = *(a2 + 8);
  return result;
}

BOOL siricommon::UInt64Value::operator==(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  result = (*(a2 + 16) & 1) == 0;
  if (v3)
  {
    return (*(a2 + 16) & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return result;
}

uint64_t siricommon::UInt64Value::hash_value(siricommon::UInt64Value *this)
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

uint64_t sirinluinternalitfm::ITFMParserRequest::formatText(sirinluinternalitfm::ITFMParserRequest *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "embeddings");
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
    (*(*v9 + 32))(v9, a2, "nlu_request_id");
  }

  v10 = *(this + 6);
  if (v10)
  {
    (*(*v10 + 32))(v10, a2, "parser");
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

uint64_t sirinluinternalitfm::ITFMParserRequest::writeTo(uint64_t this, PB::Writer *a2)
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

  v7 = v3[2];
  v8 = v3[3];
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

  v11 = v3[6];
  if (v11)
  {
    this = PB::Writer::writeSubmessage(a2, v11);
  }

  v12 = v3[5];
  if (v12)
  {

    return PB::Writer::writeSubmessage(a2, v12);
  }

  return this;
}

uint64_t sirinluinternalitfm::ITFMParserRequest::ITFMParserRequest(uint64_t this, const sirinluinternalitfm::ITFMParserRequest *a2)
{
  *(this + 8) = 0u;
  *this = &unk_1F4875AC0;
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

  v2 = *(a2 + 2);
  if (v2 != *(a2 + 3))
  {
    v3 = *v2;
    PB::PtrVector<sirinluinternal::MatchingSpan>::emplace_back<sirinluinternal::MatchingSpan const&>();
  }

  if (*(a2 + 9))
  {
    operator new();
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

uint64_t sirinluinternalitfm::ITFMParserRequest::operator=(uint64_t a1, const sirinluinternalitfm::ITFMParserRequest *a2)
{
  if (a1 != a2)
  {
    sirinluinternalitfm::ITFMParserRequest::ITFMParserRequest(&v9, a2);
    v3 = *(a1 + 56);
    *(a1 + 56) = v13;
    v13 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v10;
    v10 = v4;
    v5 = *(a1 + 24);
    *(a1 + 24) = v11;
    v11 = v5;
    v6 = *(a1 + 72);
    *(a1 + 72) = v14;
    v14 = v6;
    v7 = *(a1 + 40);
    *(a1 + 40) = v12;
    v12 = v7;
    sirinluinternalitfm::ITFMParserRequest::~ITFMParserRequest(&v9);
  }

  return a1;
}

void *sirinluinternalitfm::swap(void *this, sirinluinternalitfm::ITFMParserRequest *a2, sirinluinternalitfm::ITFMParserRequest *a3)
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
  v6 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v6;
  v7 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v7;
  v8 = this[4];
  this[4] = *(a2 + 4);
  *(a2 + 4) = v8;
  v9 = this[9];
  this[9] = *(a2 + 9);
  *(a2 + 9) = v9;
  v10 = this[6];
  this[6] = *(a2 + 6);
  *(a2 + 6) = v10;
  v11 = this[5];
  this[5] = *(a2 + 5);
  *(a2 + 5) = v11;
  return this;
}

uint64_t sirinluinternalitfm::ITFMParserRequest::ITFMParserRequest(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4875AC0;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  v5 = *(a2 + 56);
  *(a2 + 56) = 0;
  v6 = *(a1 + 56);
  *(a1 + 56) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(a2 + 64);
  *(a2 + 64) = 0;
  v8 = *(a1 + 64);
  *(a1 + 64) = v7;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(a2 + 8);
  *(a2 + 8) = 0;
  v10 = *v4;
  *v4 = v9;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__vdeallocate((a1 + 16));
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  v11 = *(a2 + 72);
  *(a2 + 72) = 0;
  v12 = *(a1 + 72);
  *(a1 + 72) = v11;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = *(a2 + 48);
  *(a2 + 48) = 0;
  v14 = *(a1 + 48);
  *(a1 + 48) = v13;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v15 = *(a2 + 40);
  *(a2 + 40) = 0;
  v16 = *(a1 + 40);
  *(a1 + 40) = v15;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  return a1;
}

uint64_t sirinluinternalitfm::ITFMParserRequest::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluinternalitfm::ITFMParserRequest::ITFMParserRequest(&v9, a2);
    v3 = *(a1 + 56);
    *(a1 + 56) = v13;
    v13 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v10;
    v10 = v4;
    v5 = *(a1 + 24);
    *(a1 + 24) = v11;
    v11 = v5;
    v6 = *(a1 + 72);
    *(a1 + 72) = v14;
    v14 = v6;
    v7 = *(a1 + 40);
    *(a1 + 40) = v12;
    v12 = v7;
    sirinluinternalitfm::ITFMParserRequest::~ITFMParserRequest(&v9);
  }

  return a1;
}

BOOL sirinluinternalitfm::ITFMParserRequest::operator==(uint64_t a1, uint64_t a2)
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

  result = PB::PtrVector<sirinluinternal::MatchingSpan>::operator==((a1 + 16), *(a2 + 16), *(a2 + 24));
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

  v13 = *(a1 + 48);
  v14 = *(a2 + 48);
  if (!v13)
  {
    if (!v14)
    {
      goto LABEL_29;
    }

    return 0;
  }

  if (!v14 || !sirinluexternal::Parser::operator==(v13, v14))
  {
    return 0;
  }

LABEL_29:
  v15 = *(a1 + 40);
  v16 = *(a2 + 40);
  result = (v15 | v16) == 0;
  if (v15 && v16)
  {
    v17 = *(a1 + 40);

    return sirinluexternal::RequestID::operator==(v17, v16);
  }

  return result;
}

unint64_t sirinluinternalitfm::ITFMParserRequest::hash_value(sirinluinternalitfm::ITFMParserRequest *this)
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

  v11 = *(this + 2);
  v12 = *(this + 3);
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

  v17 = *(this + 6);
  if (!v17)
  {
    v20 = 0;
    goto LABEL_33;
  }

  if (*(v17 + 16))
  {
    v18 = *(v17 + 8);
    if ((*(v17 + 16) & 2) != 0)
    {
      goto LABEL_28;
    }

LABEL_31:
    v19 = 0;
    goto LABEL_32;
  }

  v18 = 0;
  if ((*(v17 + 16) & 2) == 0)
  {
    goto LABEL_31;
  }

LABEL_28:
  v19 = *(v17 + 12);
LABEL_32:
  v20 = v19 ^ v18;
LABEL_33:
  v21 = *(this + 5);
  if (v21)
  {
    v21 = sirinluexternal::RequestID::hash_value(v21);
  }

  return v8 ^ v6 ^ v10 ^ v16 ^ v20 ^ v21 ^ v13;
}

uint64_t sirinluinternalitfm::ITFMParserRequest::makeRequestId(uint64_t this)
{
  if (!*(this + 56))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternalitfm::ITFMParserRequest::makeTokenisedUtterance(uint64_t this)
{
  if (!*(this + 64))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternalitfm::ITFMParserRequest::makeEmbeddings(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternalitfm::ITFMParserRequest::makeTurnInput(uint64_t this)
{
  if (!*(this + 72))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternalitfm::ITFMParserRequest::makeParser(uint64_t this)
{
  if (!*(this + 48))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternalitfm::ITFMParserRequest::makeNluRequestId(uint64_t this)
{
  if (!*(this + 40))
  {
    operator new();
  }

  return this;
}

uint64_t siricommon::BytesValue::formatText(siricommon::BytesValue *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 1))
  {
    PB::TextFormatter::format();
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t siricommon::BytesValue::writeTo(uint64_t this, PB::Writer *a2)
{
  if (*(this + 8))
  {
    return PB::Writer::write();
  }

  return this;
}

uint64_t siricommon::BytesValue::readFrom(siricommon::BytesValue *this, PB::Reader *a2)
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

void siricommon::BytesValue::~BytesValue(void ***this)
{
  *this = &unk_1F4875B10;
  std::unique_ptr<PB::Data>::reset[abi:ne200100](this + 1, 0);
  PB::Base::~Base(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4875B10;
  std::unique_ptr<PB::Data>::reset[abi:ne200100](this + 1, 0);

  PB::Base::~Base(this);
}

{
  *this = &unk_1F4875B10;
  std::unique_ptr<PB::Data>::reset[abi:ne200100](this + 1, 0);

  PB::Base::~Base(this);
}

void *siricommon::BytesValue::BytesValue(void *this)
{
  *this = &unk_1F4875B10;
  this[1] = 0;
  return this;
}

{
  *this = &unk_1F4875B10;
  this[1] = 0;
  return this;
}

void *siricommon::BytesValue::BytesValue(void *this, const siricommon::BytesValue *a2)
{
  *this = &unk_1F4875B10;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

void ***siricommon::BytesValue::operator=(void ***a1, const siricommon::BytesValue *a2)
{
  if (a1 != a2)
  {
    siricommon::BytesValue::BytesValue(&v5, a2);
    v3 = a1[1];
    a1[1] = v6;
    v5 = &unk_1F4875B10;
    v6 = v3;
    std::unique_ptr<PB::Data>::reset[abi:ne200100](&v6, 0);
    PB::Base::~Base(&v5);
  }

  return a1;
}

uint64_t siricommon::swap(uint64_t this, siricommon::BytesValue *a2, siricommon::BytesValue *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

uint64_t siricommon::BytesValue::BytesValue(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4875B10;
  *(a1 + 8) = 0;
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  std::unique_ptr<PB::Data>::reset[abi:ne200100]((a1 + 8), v3);
  return a1;
}

{
  *a1 = &unk_1F4875B10;
  *(a1 + 8) = 0;
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  std::unique_ptr<PB::Data>::reset[abi:ne200100]((a1 + 8), v3);
  return a1;
}

uint64_t siricommon::BytesValue::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v6 = &unk_1F4875B10;
    v7 = 0;
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    std::unique_ptr<PB::Data>::reset[abi:ne200100](&v7, v3);
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v6 = &unk_1F4875B10;
    v7 = v4;
    std::unique_ptr<PB::Data>::reset[abi:ne200100](&v7, 0);
    PB::Base::~Base(&v6);
  }

  return a1;
}

BOOL siricommon::BytesValue::operator==(uint64_t a1, uint64_t a2)
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

uint64_t siricommon::BytesValue::hash_value(siricommon::BytesValue *this)
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

uint64_t SIRINLUEXTERNALRRGroupIdentifierReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v23[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23[0] & 0x7F) << v5;
        if ((v23[0] & 0x80) == 0)
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
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v23[0] & 0x7F) << v14;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_36;
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

LABEL_36:
        *(a1 + 16) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(SIRICOMMONStringValue);
        objc_storeStrong((a1 + 8), v13);
        v23[0] = 0;
        v23[1] = 0;
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

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sirinluinternal::SubwordTokenChain::formatText(sirinluinternal::SubwordTokenChain *this, PB::TextFormatter *a2, const char *a3)
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
    (*(*v7 + 32))(v7, a2, "subword_tokens");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluinternal::SubwordTokenChain::writeTo(uint64_t this, PB::Writer *a2)
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

uint64_t sirinluinternal::SubwordTokenChain::readFrom(sirinluinternal::SubwordTokenChain *this, PB::Reader *a2)
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

void *sirinluinternal::swap(void *this, sirinluinternal::SubwordTokenChain *a2, sirinluinternal::SubwordTokenChain *a3)
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

BOOL sirinluinternal::SubwordTokenChain::operator==(uint64_t a1, uint64_t a2)
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
    result = sirinluinternal::SubwordToken::operator==(v17, v19);
  }

  while (result && v12 != v13);
  return result;
}

unint64_t sirinluinternal::SubwordTokenChain::hash_value(sirinluinternal::SubwordTokenChain *this)
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
      v6 ^= sirinluinternal::SubwordToken::hash_value(v7);
    }

    while (v5 != v4);
  }

  return v6 ^ v3;
}

uint64_t SIRINLUINTERNALSNLP_INTERMEDIATENLv4ExecutedHandcraftedRulesReadFrom(uint64_t a1, void *a2)
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
        v13 = objc_alloc_init(SIRINLUINTERNALSNLP_INTERMEDIATESNLPHandcraftedRules);
        objc_storeStrong((a1 + 8), v13);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !SIRINLUINTERNALSNLP_INTERMEDIATESNLPHandcraftedRulesReadFrom(v13, a2))
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

uint64_t sirinluexternal::Span::formatText(sirinluexternal::Span *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if ((*(this + 72) & 2) != 0)
  {
    v5 = *(this + 16);
    PB::TextFormatter::format(a2, "end_token_index");
  }

  if (*(this + 4))
  {
    PB::TextFormatter::format();
  }

  if (*(this + 5))
  {
    PB::TextFormatter::format();
  }

  v6 = *(this + 1);
  v7 = *(this + 2);
  while (v6 != v7)
  {
    v8 = *v6++;
    PB::TextFormatter::format(a2, "matcher_names");
  }

  v9 = *(this + 72);
  if (v9)
  {
    PB::TextFormatter::format(a2, "score", *(this + 6));
    v9 = *(this + 72);
  }

  if ((v9 & 4) != 0)
  {
    v10 = *(this + 17);
    PB::TextFormatter::format(a2, "start_token_index");
  }

  v11 = *(this + 7);
  if (v11)
  {
    (*(*v11 + 32))(v11, a2, "uso_graph");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternal::Span::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if (*(this + 40))
  {
    this = PB::Writer::write();
  }

  if (*(v3 + 32))
  {
    this = PB::Writer::write();
  }

  v4 = *(v3 + 72);
  if ((v4 & 4) != 0)
  {
    v5 = *(v3 + 68);
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 72);
  }

  if ((v4 & 2) != 0)
  {
    v6 = *(v3 + 64);
    this = PB::Writer::writeVarInt(a2);
  }

  v7 = *(v3 + 56);
  if (v7)
  {
    this = PB::Writer::writeSubmessage(a2, v7);
  }

  if (*(v3 + 72))
  {
    this = PB::Writer::write(a2, *(v3 + 48));
  }

  v9 = *(v3 + 8);
  v8 = *(v3 + 16);
  while (v9 != v8)
  {
    v10 = *v9++;
    this = PB::Writer::writeVarInt(a2);
  }

  return this;
}

uint64_t sirinluexternal::Span::readFrom(sirinluexternal::Span *this, PB::Reader *a2)
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
            goto LABEL_21;
          }

          v14 += 7;
          ++v16;
          --v18;
          ++v19;
          v49 = v15++ > 8;
          if (v49)
          {
            goto LABEL_17;
          }
        }

        v4 = 1;
        *(a2 + 24) = 1;
        goto LABEL_149;
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
        v49 = v9++ > 8;
        if (v49)
        {
          goto LABEL_17;
        }
      }

LABEL_21:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_149;
      }

      v21 = v10 >> 3;
      if ((v10 >> 3) <= 3)
      {
        break;
      }

      if (v21 <= 5)
      {
        if (v21 == 4)
        {
          *(this + 72) |= 2u;
          v57 = *(a2 + 1);
          v56 = *(a2 + 2);
          v58 = *a2;
          if (v57 > 0xFFFFFFFFFFFFFFF5 || v57 + 10 > v56)
          {
            v66 = 0;
            v67 = 0;
            v61 = 0;
            v68 = (v58 + v57);
            v17 = v56 >= v57;
            v69 = v56 - v57;
            if (!v17)
            {
              v69 = 0;
            }

            v70 = v57 + 1;
            while (1)
            {
              if (!v69)
              {
                LODWORD(v61) = 0;
                *(a2 + 24) = 1;
                goto LABEL_123;
              }

              v71 = *v68;
              *(a2 + 1) = v70;
              v61 |= (v71 & 0x7F) << v66;
              if ((v71 & 0x80) == 0)
              {
                break;
              }

              v66 += 7;
              ++v68;
              --v69;
              ++v70;
              v49 = v67++ > 8;
              if (v49)
              {
LABEL_98:
                LODWORD(v61) = 0;
                goto LABEL_123;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v61) = 0;
            }
          }

          else
          {
            v59 = 0;
            v60 = 0;
            v61 = 0;
            v62 = (v58 + v57);
            v63 = v57 + 1;
            while (1)
            {
              *(a2 + 1) = v63;
              v64 = *v62++;
              v61 |= (v64 & 0x7F) << v59;
              if ((v64 & 0x80) == 0)
              {
                break;
              }

              v59 += 7;
              ++v63;
              v49 = v60++ > 8;
              if (v49)
              {
                goto LABEL_98;
              }
            }
          }

LABEL_123:
          *(this + 16) = v61;
          goto LABEL_18;
        }

        if (v21 == 5)
        {
          operator new();
        }

        goto LABEL_17;
      }

      if (v21 == 6)
      {
        *(this + 72) |= 1u;
        v65 = *(a2 + 1);
        if (v65 <= 0xFFFFFFFFFFFFFFF7 && v65 + 8 <= *(a2 + 2))
        {
          *(this + 6) = *(*a2 + v65);
          *(a2 + 1) += 8;
        }

        else
        {
          *(a2 + 24) = 1;
        }

        goto LABEL_18;
      }

      if (v21 != 7)
      {
        goto LABEL_17;
      }

      if ((v10 & 7) == 2)
      {
        if (PB::Reader::placeMark())
        {
LABEL_151:
          v106 = 0;
          return v106 & 1;
        }

        if (*(a2 + 1) < *(a2 + 2) && (*(a2 + 24) & 1) == 0)
        {
          v31 = *(this + 2);
          while (1)
          {
            v32 = *(this + 3);
            if (v31 >= v32)
            {
              v33 = *(this + 1);
              v34 = v31 - v33;
              v35 = (v31 - v33) >> 2;
              v36 = v35 + 1;
              if ((v35 + 1) >> 62)
              {
                goto LABEL_153;
              }

              v37 = v32 - v33;
              if (v37 >> 1 > v36)
              {
                v36 = v37 >> 1;
              }

              if (v37 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v38 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v38 = v36;
              }

              if (v38)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(v38);
              }

              v39 = (v31 - v33) >> 2;
              v40 = (4 * v35);
              v41 = (4 * v35 - 4 * v39);
              *v40 = 0;
              v31 = (v40 + 1);
              memcpy(v41, v33, v34);
              v42 = *(this + 1);
              *(this + 1) = v41;
              *(this + 2) = v31;
              *(this + 3) = 0;
              if (v42)
              {
                operator delete(v42);
              }
            }

            else
            {
              *v31 = 0;
              v31 += 4;
            }

            *(this + 2) = v31;
            v44 = *(a2 + 1);
            v43 = *(a2 + 2);
            v45 = *a2;
            v46 = 0;
            v47 = 0;
            v48 = 0;
            v49 = v44 > 0xFFFFFFFFFFFFFFF5 || v44 + 10 > v43;
            if (v49)
            {
              break;
            }

            v53 = (v45 + v44);
            v54 = v44 + 1;
            while (1)
            {
              v51 = v54;
              *(a2 + 1) = v54;
              v55 = *v53++;
              v48 |= (v55 & 0x7F) << v46;
              if ((v55 & 0x80) == 0)
              {
                break;
              }

              v46 += 7;
              ++v54;
              v49 = v47++ > 8;
              if (v49)
              {
                goto LABEL_73;
              }
            }

LABEL_76:
            *(v31 - 1) = v48;
            if (v51 >= v43 || (*(a2 + 24) & 1) != 0)
            {
              goto LABEL_27;
            }
          }

          if (v43 <= v44)
          {
            v50 = *(a2 + 1);
          }

          else
          {
            v50 = *(a2 + 2);
          }

          while (v50 != v44)
          {
            v51 = v44 + 1;
            v52 = *(v45 + v44);
            *(a2 + 1) = v51;
            v48 |= (v52 & 0x7F) << v46;
            if ((v52 & 0x80) == 0)
            {
              if (*(a2 + 24))
              {
                LODWORD(v48) = 0;
              }

              goto LABEL_76;
            }

            v46 += 7;
            v44 = v51;
            v49 = v47++ > 8;
            if (v49)
            {
LABEL_73:
              LODWORD(v48) = 0;
              goto LABEL_76;
            }
          }

          *(a2 + 24) = 1;
          *(v31 - 1) = 0;
        }

LABEL_27:
        PB::Reader::recallMark();
      }

      else
      {
        v79 = *(this + 2);
        v78 = *(this + 3);
        if (v79 >= v78)
        {
          v81 = *(this + 1);
          v82 = v79 - v81;
          v83 = (v79 - v81) >> 2;
          v84 = v83 + 1;
          if ((v83 + 1) >> 62)
          {
LABEL_153:
            std::vector<std::unique_ptr<siricommon::StringValue>>::__throw_length_error[abi:ne200100]();
          }

          v85 = v78 - v81;
          if (v85 >> 1 > v84)
          {
            v84 = v85 >> 1;
          }

          if (v85 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v86 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v86 = v84;
          }

          if (v86)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(v86);
          }

          v87 = (v79 - v81) >> 2;
          v88 = (4 * v83);
          v89 = (4 * v83 - 4 * v87);
          *v88 = 0;
          v80 = v88 + 1;
          memcpy(v89, v81, v82);
          v90 = *(this + 1);
          *(this + 1) = v89;
          *(this + 2) = v80;
          *(this + 3) = 0;
          if (v90)
          {
            operator delete(v90);
          }
        }

        else
        {
          *v79 = 0;
          v80 = v79 + 4;
        }

        *(this + 2) = v80;
        v92 = *(a2 + 1);
        v91 = *(a2 + 2);
        v93 = *a2;
        if (v92 > 0xFFFFFFFFFFFFFFF5 || v92 + 10 > v91)
        {
          v100 = 0;
          v101 = 0;
          v96 = 0;
          v102 = (v93 + v92);
          v17 = v91 >= v92;
          v103 = v91 - v92;
          if (!v17)
          {
            v103 = 0;
          }

          v104 = v92 + 1;
          while (1)
          {
            if (!v103)
            {
              LODWORD(v96) = 0;
              *(a2 + 24) = 1;
              goto LABEL_147;
            }

            v105 = *v102;
            *(a2 + 1) = v104;
            v96 |= (v105 & 0x7F) << v100;
            if ((v105 & 0x80) == 0)
            {
              break;
            }

            v100 += 7;
            ++v102;
            --v103;
            ++v104;
            v49 = v101++ > 8;
            if (v49)
            {
LABEL_143:
              LODWORD(v96) = 0;
              goto LABEL_147;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v96) = 0;
          }
        }

        else
        {
          v94 = 0;
          v95 = 0;
          v96 = 0;
          v97 = (v93 + v92);
          v98 = v92 + 1;
          while (1)
          {
            *(a2 + 1) = v98;
            v99 = *v97++;
            v96 |= (v99 & 0x7F) << v94;
            if ((v99 & 0x80) == 0)
            {
              break;
            }

            v94 += 7;
            ++v98;
            v49 = v95++ > 8;
            if (v49)
            {
              goto LABEL_143;
            }
          }
        }

LABEL_147:
        *(v80 - 1) = v96;
      }

LABEL_18:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_149;
      }
    }

    switch(v21)
    {
      case 1:
        operator new();
      case 2:
        operator new();
      case 3:
        *(this + 72) |= 4u;
        v23 = *(a2 + 1);
        v22 = *(a2 + 2);
        v24 = *a2;
        if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v22)
        {
          v72 = 0;
          v73 = 0;
          v27 = 0;
          v74 = (v24 + v23);
          v17 = v22 >= v23;
          v75 = v22 - v23;
          if (!v17)
          {
            v75 = 0;
          }

          v76 = v23 + 1;
          while (1)
          {
            if (!v75)
            {
              LODWORD(v27) = 0;
              *(a2 + 24) = 1;
              goto LABEL_126;
            }

            v77 = *v74;
            *(a2 + 1) = v76;
            v27 |= (v77 & 0x7F) << v72;
            if ((v77 & 0x80) == 0)
            {
              break;
            }

            v72 += 7;
            ++v74;
            --v75;
            ++v76;
            v49 = v73++ > 8;
            if (v49)
            {
LABEL_106:
              LODWORD(v27) = 0;
              goto LABEL_126;
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
            v49 = v26++ > 8;
            if (v49)
            {
              goto LABEL_106;
            }
          }
        }

LABEL_126:
        *(this + 17) = v27;
        goto LABEL_18;
    }

LABEL_17:
    if ((PB::Reader::skip(a2) & 1) == 0)
    {
      goto LABEL_151;
    }

    goto LABEL_18;
  }

LABEL_149:
  v106 = v4 ^ 1;
  return v106 & 1;
}

void sirinluexternal::Span::~Span(sirinluexternal::Span *this)
{
  sirinluexternal::Span::~Span(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4875BB0;
  v2 = *(this + 7);
  *(this + 7) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v3);
  }

  v4 = *(this + 4);
  *(this + 4) = 0;
  if (v4)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v4);
  }

  v5 = *(this + 1);
  if (v5)
  {
    *(this + 2) = v5;
    operator delete(v5);
  }

  PB::Base::~Base(this);
}

double sirinluexternal::Span::Span(sirinluexternal::Span *this)
{
  *this = &unk_1F4875BB0;
  *(this + 7) = 0;
  *(this + 18) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

{
  *this = &unk_1F4875BB0;
  *(this + 7) = 0;
  *(this + 18) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

sirinluexternal::Span *sirinluexternal::Span::Span(sirinluexternal::Span *this, const sirinluexternal::Span *a2)
{
  *(this + 8) = 0u;
  v3 = (this + 8);
  *this = &unk_1F4875BB0;
  *(this + 7) = 0;
  *(this + 18) = 0;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  if (*(a2 + 5))
  {
    operator new();
  }

  if (*(a2 + 4))
  {
    operator new();
  }

  v4 = *(a2 + 72);
  if ((v4 & 4) != 0)
  {
    v5 = *(a2 + 17);
    *(this + 72) |= 4u;
    *(this + 17) = v5;
    v4 = *(a2 + 72);
  }

  if ((v4 & 2) != 0)
  {
    v6 = *(a2 + 16);
    *(this + 72) |= 2u;
    *(this + 16) = v6;
  }

  if (*(a2 + 7))
  {
    operator new();
  }

  if (*(a2 + 72))
  {
    v7 = *(a2 + 6);
    *(this + 72) |= 1u;
    *(this + 6) = v7;
  }

  if (this != a2)
  {
    v8 = *(a2 + 1);
    v9 = *(a2 + 2);
    v10 = v9 - v8;
    v11 = *(this + 3);
    v12 = *(this + 1);
    if (v11 - v12 < (v9 - v8))
    {
      v13 = v10 >> 2;
      if (v12)
      {
        *(this + 2) = v12;
        operator delete(v12);
        v11 = 0;
        *v3 = 0;
        v3[1] = 0;
        v3[2] = 0;
      }

      if (!(v13 >> 62))
      {
        v14 = v11 >> 1;
        if (v11 >> 1 <= v13)
        {
          v14 = v10 >> 2;
        }

        if (v11 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v15 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v14;
        }

        if (!(v15 >> 62))
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(v15);
        }
      }

      std::vector<std::unique_ptr<siricommon::StringValue>>::__throw_length_error[abi:ne200100]();
    }

    v16 = *(this + 2);
    v17 = v16 - v12;
    if (v16 - v12 >= v10)
    {
      if (v9 != v8)
      {
        memmove(v12, v8, v9 - v8);
      }

      v19 = &v12[v10];
    }

    else
    {
      v18 = &v8[v17];
      if (v16 != v12)
      {
        memmove(*(this + 1), v8, v17);
        v16 = *(this + 2);
      }

      if (v9 != v18)
      {
        memmove(v16, v18, v9 - v18);
      }

      v19 = &v16[v9 - v18];
    }

    *(this + 2) = v19;
  }

  return this;
}

uint64_t sirinluexternal::Span::operator=(uint64_t a1, const sirinluexternal::Span *a2)
{
  if (a1 != a2)
  {
    sirinluexternal::Span::Span(&v11, a2);
    v3 = *(a1 + 72);
    *(a1 + 72) = v18;
    v18 = v3;
    v4 = *(a1 + 40);
    *(a1 + 40) = v14;
    v14 = v4;
    v5 = *(a1 + 64);
    *(a1 + 64) = v17;
    v17 = v5;
    v6 = *(a1 + 56);
    *(a1 + 56) = v16;
    v16 = v6;
    v7 = *(a1 + 48);
    *(a1 + 48) = v15;
    v15 = v7;
    v8 = *(a1 + 8);
    *(a1 + 8) = v12;
    v12 = v8;
    v9 = *(a1 + 24);
    *(a1 + 24) = v13;
    v13 = v9;
    sirinluexternal::Span::~Span(&v11);
  }

  return a1;
}

double sirinluexternal::swap(sirinluexternal *this, sirinluexternal::Span *a2, sirinluexternal::Span *a3)
{
  v3 = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v3;
  v4 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v4;
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  LODWORD(v5) = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v5;
  LODWORD(v5) = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v5;
  v6 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v6;
  result = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = result;
  v8 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v8;
  v9 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v9;
  v10 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v10;
  return result;
}

uint64_t sirinluexternal::Span::Span(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4875BB0;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 56) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 72) = 0;
  v5 = *(a2 + 40);
  *(a2 + 40) = 0;
  v6 = *(a1 + 40);
  *(a1 + 40) = v5;
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
    std::default_delete<std::string>::operator()[abi:ne200100](v8);
  }

  *(a1 + 68) = *(a2 + 68);
  *(a1 + 64) = *(a2 + 64);
  v9 = *(a2 + 56);
  *(a2 + 56) = 0;
  v10 = *(a1 + 56);
  *(a1 + 56) = v9;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  *(a1 + 48) = *(a2 + 48);
  v11 = *(a1 + 8);
  if (v11)
  {
    *(a1 + 16) = v11;
    operator delete(v11);
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

uint64_t sirinluexternal::Span::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluexternal::Span::Span(&v11, a2);
    v3 = *(a1 + 72);
    *(a1 + 72) = v18;
    v18 = v3;
    v4 = *(a1 + 40);
    *(a1 + 40) = v14;
    v14 = v4;
    v5 = *(a1 + 64);
    *(a1 + 64) = v17;
    v17 = v5;
    v6 = *(a1 + 56);
    *(a1 + 56) = v16;
    v16 = v6;
    v7 = *(a1 + 48);
    *(a1 + 48) = v15;
    v15 = v7;
    v8 = *(a1 + 8);
    *(a1 + 8) = v12;
    v12 = v8;
    v9 = *(a1 + 24);
    *(a1 + 24) = v13;
    v13 = v9;
    sirinluexternal::Span::~Span(&v11);
  }

  return a1;
}

BOOL sirinluexternal::Span::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  v5 = *(a2 + 40);
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

    v10 = v6 >= 0 ? *(a1 + 40) : *v4;
    v11 = v9 >= 0 ? *(a2 + 40) : *v5;
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

    v19 = v15 >= 0 ? *(a1 + 32) : *v13;
    v20 = v18 >= 0 ? *(a2 + 32) : *v14;
    if (memcmp(v19, v20, v16))
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  v21 = *(a1 + 72);
  v22 = *(a2 + 72);
  if ((v21 & 4) != 0)
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

  v23 = *(a1 + 56);
  v24 = *(a2 + 56);
  if (v23)
  {
    if (!v24 || !sirinluexternal::UsoGraph::operator==(v23, v24))
    {
      return 0;
    }
  }

  else if (v24)
  {
    return 0;
  }

  if ((v21 & 1) == 0)
  {
    if ((v22 & 1) == 0)
    {
      goto LABEL_56;
    }

    return 0;
  }

  if ((v22 & 1) == 0 || *(a1 + 48) != *(a2 + 48))
  {
    return 0;
  }

LABEL_56:
  v26 = *(a1 + 8);
  v25 = *(a1 + 16);
  v27 = *(a2 + 8);
  if (v25 - v26 != *(a2 + 16) - v27)
  {
    return 0;
  }

  if (v26 == v25)
  {
    return 1;
  }

  v28 = v26 + 4;
  do
  {
    v29 = *v27++;
    result = *(v28 - 4) == v29;
    v30 = *(v28 - 4) != v29 || v28 == v25;
    v28 += 4;
  }

  while (!v30);
  return result;
}

unint64_t sirinluexternal::Span::hash_value(sirinluexternal::Span *this)
{
  v2 = *(this + 5);
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
    v5 = std::__string_hash<char>::operator()[abi:ne200100](v4);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(this + 72);
  if ((v6 & 4) != 0)
  {
    v7 = *(this + 17);
    if ((*(this + 72) & 2) != 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v7 = 0;
    if ((*(this + 72) & 2) != 0)
    {
LABEL_9:
      v8 = *(this + 16);
      goto LABEL_12;
    }
  }

  v8 = 0;
LABEL_12:
  v9 = *(this + 7);
  if (v9)
  {
    v9 = sirinluexternal::UsoGraph::hash_value(v9);
    v6 = *(this + 72);
  }

  if (v6)
  {
    v10 = *(this + 6);
    if (v10 == 0.0)
    {
      v10 = 0.0;
    }
  }

  else
  {
    v10 = 0.0;
  }

  v11 = v5 ^ v3 ^ v7 ^ v8 ^ v9 ^ *&v10;
  v12 = *(this + 1);
  v13 = *(this + 2);
  return v11 ^ PBHashBytes();
}

uint64_t sirinluexternal::Span::makeUsoGraph(uint64_t this)
{
  if (!*(this + 56))
  {
    operator new();
  }

  return this;
}

uint64_t SIRINLUINTERNALOVERRIDESOverridesRequestReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            v14 = objc_alloc_init(SIRINLUEXTERNALSystemDialogAct);
            [a1 addSystemDialogActs:v14];
            v18 = 0;
            v19 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUEXTERNALSystemDialogActReadFrom(&v14->super.super.isa, a2))
            {
LABEL_45:

              return 0;
            }

LABEL_41:
            PBReaderRecallMark();
LABEL_42:

            goto LABEL_43;
          case 5:
            v14 = objc_alloc_init(SIRINLUEXTERNALTurnContext);
            objc_storeStrong((a1 + 40), v14);
            v18 = 0;
            v19 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUEXTERNALTurnContextReadFrom(v14, a2))
            {
              goto LABEL_45;
            }

            goto LABEL_41;
          case 6:
            v14 = objc_alloc_init(SIRINLUINTERNALOVERRIDESTurnInputAndPreprocessing);
            [a1 addInputs:v14];
            v18 = 0;
            v19 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUINTERNALOVERRIDESTurnInputAndPreprocessingReadFrom(v14, a2))
            {
              goto LABEL_45;
            }

            goto LABEL_41;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v15 = PBReaderReadString();
            v14 = *(a1 + 48);
            *(a1 + 48) = v15;
            goto LABEL_42;
          case 2:
            v14 = objc_alloc_init(SIRINLUINTERNALTokenChain);
            objc_storeStrong((a1 + 32), v14);
            v18 = 0;
            v19 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUINTERNALTokenChainReadFrom(v14, a2))
            {
              goto LABEL_45;
            }

            goto LABEL_41;
          case 3:
            v14 = objc_alloc_init(SIRINLUINTERNALMatchingSpan);
            [a1 addMatchingSpans:v14];
            v18 = 0;
            v19 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUINTERNALMatchingSpanReadFrom(v14, a2))
            {
              goto LABEL_45;
            }

            goto LABEL_41;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_43:
      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRINLUINTERNALUtteranceRuleReadFrom(uint64_t a1, void *a2)
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
          v21 = objc_alloc_init(SIRINLUINTERNALCompareOptions);
          objc_storeStrong((a1 + 8), v21);
          v26 = 0;
          v27 = 0;
          if (!PBReaderPlaceMark() || !SIRINLUINTERNALCompareOptionsReadFrom(v21, a2))
          {
LABEL_46:

            return 0;
          }

          goto LABEL_39;
        }

        if (v13 == 4)
        {
          v21 = objc_alloc_init(SIRINLUINTERNALAdjacentSpans);
          [a1 addSpansForNamedCaptureGroups:v21];
          v26 = 0;
          v27 = 0;
          if (!PBReaderPlaceMark() || !SIRINLUINTERNALAdjacentSpansReadFrom(v21, a2))
          {
            goto LABEL_46;
          }

LABEL_39:
          PBReaderRecallMark();

          goto LABEL_44;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v22 = PBReaderReadString();
          v23 = *(a1 + 16);
          *(a1 + 16) = v22;

          goto LABEL_44;
        }

        if (v13 == 2)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 36) |= 1u;
          while (1)
          {
            LOBYTE(v26) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v26 & 0x7F) << v14;
            if ((v26 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_43;
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

LABEL_43:
          *(a1 + 32) = v20;
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

uint64_t SIRINLUEXTERNALNLU_ROUTERNLRouterServiceResponseReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v39) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v39 & 0x7F) << v5;
        if ((v39 & 0x80) == 0)
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
            v24 = 0;
            v25 = 0;
            v26 = 0;
            *(a1 + 52) |= 1u;
            while (1)
            {
              LOBYTE(v39) = 0;
              v27 = [a2 position] + 1;
              if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
              {
                v29 = [a2 data];
                [v29 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v26 |= (v39 & 0x7F) << v24;
              if ((v39 & 0x80) == 0)
              {
                break;
              }

              v24 += 7;
              v11 = v25++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_67;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v26;
            }

LABEL_67:
            v36 = 32;
            goto LABEL_76;
          case 2:
            v30 = 0;
            v31 = 0;
            v32 = 0;
            *(a1 + 52) |= 4u;
            while (1)
            {
              LOBYTE(v39) = 0;
              v33 = [a2 position] + 1;
              if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
              {
                v35 = [a2 data];
                [v35 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v32 |= (v39 & 0x7F) << v30;
              if ((v39 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              v11 = v31++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_75;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v32;
            }

LABEL_75:
            v36 = 48;
            goto LABEL_76;
          case 3:
            v21 = objc_alloc_init(SIRINLUEXTERNALNLU_ROUTERNLRouterRewriteUtterance);
            [a1 addSiriXRewriteUtterances:v21];
            goto LABEL_49;
        }
      }

      else if (v13 > 5)
      {
        if (v13 == 6)
        {
          v21 = objc_alloc_init(SIRINLUEXTERNALNLU_ROUTERNLRoutingGenAIMetadata);
          objc_storeStrong((a1 + 8), v21);
          v39 = 0;
          v40 = 0;
          if (!PBReaderPlaceMark() || !SIRINLUEXTERNALNLU_ROUTERNLRoutingGenAIMetadataReadFrom(v21, a2))
          {
LABEL_79:

            return 0;
          }

          goto LABEL_54;
        }

        if (v13 == 7)
        {
          v22 = PBReaderReadString();
          v23 = *(a1 + 16);
          *(a1 + 16) = v22;

          goto LABEL_77;
        }
      }

      else
      {
        if (v13 == 4)
        {
          v21 = objc_alloc_init(SIRINLUEXTERNALNLU_ROUTERNLRouterRewriteUtterance);
          [a1 addQueryRewrites:v21];
LABEL_49:
          v39 = 0;
          v40 = 0;
          if (!PBReaderPlaceMark() || !SIRINLUEXTERNALNLU_ROUTERNLRouterRewriteUtteranceReadFrom(v21, a2))
          {
            goto LABEL_79;
          }

LABEL_54:
          PBReaderRecallMark();

          goto LABEL_77;
        }

        if (v13 == 5)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 52) |= 2u;
          while (1)
          {
            LOBYTE(v39) = 0;
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
              goto LABEL_71;
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

LABEL_71:
          v36 = 36;
LABEL_76:
          *(a1 + v36) = v20;
          goto LABEL_77;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_77:
      v37 = [a2 position];
    }

    while (v37 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sirinluinternal::ParseOverride::formatText(sirinluinternal::ParseOverride *this, PB::TextFormatter *a2, const char *a3)
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

  v11 = *(this + 6);
  if (v11)
  {
    (*(*v11 + 32))(v11, a2, "parse");
  }

  if ((*(this + 72) & 2) != 0)
  {
    v12 = *(this + 16);
    PB::TextFormatter::format(a2, "parser_identifier");
  }

  if (*(this + 7))
  {
    PB::TextFormatter::format();
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluinternal::ParseOverride::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if (*(this + 16))
  {
    this = PB::Writer::write();
  }

  v4 = *(v3 + 72);
  if ((v4 & 4) != 0)
  {
    v10 = *(v3 + 68);
    this = PB::Writer::write(a2);
    v4 = *(v3 + 72);
    if ((v4 & 1) == 0)
    {
LABEL_5:
      if ((v4 & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*(v3 + 72) & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = *(v3 + 8);
  this = PB::Writer::writeVarInt(a2);
  if ((*(v3 + 72) & 2) != 0)
  {
LABEL_6:
    v5 = *(v3 + 64);
    this = PB::Writer::writeVarInt(a2);
  }

LABEL_7:
  v6 = *(v3 + 48);
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

  if (*(v3 + 56))
  {

    return PB::Writer::write();
  }

  return this;
}

uint64_t sirinluinternal::ParseOverride::readFrom(sirinluinternal::ParseOverride *this, PB::Reader *a2)
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
          *(this + 72) |= 4u;
          v41 = *(a2 + 1);
          if (v41 >= *(a2 + 2))
          {
            v44 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v42 = v41 + 1;
            v43 = *(*a2 + v41);
            *(a2 + 1) = v42;
            v44 = v43 != 0;
          }

          *(this + 68) = v44;
          goto LABEL_18;
        case 3:
          *(this + 72) |= 1u;
          v24 = *(a2 + 1);
          v23 = *(a2 + 2);
          v25 = *a2;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
          {
            v51 = 0;
            v52 = 0;
            v28 = 0;
            v53 = (v25 + v24);
            v18 = v23 >= v24;
            v54 = v23 - v24;
            if (!v18)
            {
              v54 = 0;
            }

            v55 = v24 + 1;
            while (1)
            {
              if (!v54)
              {
                v28 = 0;
                *(a2 + 24) = 1;
                goto LABEL_76;
              }

              v56 = *v53;
              *(a2 + 1) = v55;
              v28 |= (v56 & 0x7F) << v51;
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
                v28 = 0;
                goto LABEL_76;
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
                goto LABEL_66;
              }
            }
          }

LABEL_76:
          *(this + 1) = v28;
          goto LABEL_18;
      }
    }

    else if (v22 > 6)
    {
      if (v22 == 7)
      {
        PB::PtrVector<sirinluinternal::NluRequestRule>::emplace_back<>();
      }

      if (v22 == 8)
      {
        operator new();
      }
    }

    else
    {
      if (v22 == 4)
      {
        *(this + 72) |= 2u;
        v33 = *(a2 + 1);
        v32 = *(a2 + 2);
        v34 = *a2;
        if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v32)
        {
          v45 = 0;
          v46 = 0;
          v37 = 0;
          v47 = (v34 + v33);
          v18 = v32 >= v33;
          v48 = v32 - v33;
          if (!v18)
          {
            v48 = 0;
          }

          v49 = v33 + 1;
          while (1)
          {
            if (!v48)
            {
              LODWORD(v37) = 0;
              *(a2 + 24) = 1;
              goto LABEL_73;
            }

            v50 = *v47;
            *(a2 + 1) = v49;
            v37 |= (v50 & 0x7F) << v45;
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
              LODWORD(v37) = 0;
              goto LABEL_73;
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
              goto LABEL_58;
            }
          }
        }

LABEL_73:
        *(this + 16) = v37;
        goto LABEL_18;
      }

      if (v22 == 6)
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

void sirinluinternal::ParseOverride::~ParseOverride(void ***this)
{
  sirinluinternal::ParseOverride::~ParseOverride(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4875C00;
  std::unique_ptr<PB::Data>::reset[abi:ne200100](this + 7, 0);
  v2 = this[6];
  this[6] = 0;
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  v4 = (this + 3);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v3 = this[2];
  this[2] = 0;
  if (v3)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v3);
  }

  PB::Base::~Base(this);
}

double sirinluinternal::ParseOverride::ParseOverride(sirinluinternal::ParseOverride *this)
{
  *this = &unk_1F4875C00;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 16) = 1;
  *(this + 68) = 1;
  *(this + 18) = 0;
  return result;
}

{
  *this = &unk_1F4875C00;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 16) = 1;
  *(this + 68) = 1;
  *(this + 18) = 0;
  return result;
}

uint64_t sirinluinternal::ParseOverride::ParseOverride(uint64_t this, const sirinluinternal::ParseOverride *a2)
{
  *this = &unk_1F4875C00;
  *(this + 16) = 0u;
  *(this + 32) = 0u;
  *(this + 48) = 0u;
  *(this + 64) = 1;
  *(this + 68) = 1;
  *(this + 72) = 0;
  if (*(a2 + 2))
  {
    operator new();
  }

  v2 = *(a2 + 72);
  if ((v2 & 4) != 0)
  {
    v6 = *(a2 + 68);
    *(this + 72) |= 4u;
    *(this + 68) = v6;
    v2 = *(a2 + 72);
    if ((v2 & 1) == 0)
    {
LABEL_5:
      if ((v2 & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*(a2 + 72) & 1) == 0)
  {
    goto LABEL_5;
  }

  v7 = *(a2 + 1);
  *(this + 72) |= 1u;
  *(this + 8) = v7;
  if ((*(a2 + 72) & 2) != 0)
  {
LABEL_6:
    v3 = *(a2 + 16);
    *(this + 72) |= 2u;
    *(this + 64) = v3;
  }

LABEL_7:
  if (*(a2 + 6))
  {
    operator new();
  }

  v4 = *(a2 + 3);
  if (v4 != *(a2 + 4))
  {
    v5 = *v4;
    PB::PtrVector<sirinluinternal::NluRequestRule>::emplace_back<sirinluinternal::NluRequestRule const&>();
  }

  if (*(a2 + 7))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternal::ParseOverride::operator=(uint64_t a1, const sirinluinternal::ParseOverride *a2)
{
  if (a1 != a2)
  {
    sirinluinternal::ParseOverride::ParseOverride(&v10, a2);
    v3 = v13;
    v4 = *(a1 + 16);
    v5 = *(a1 + 32);
    *(a1 + 16) = v12;
    *(a1 + 32) = v3;
    v6 = *(a1 + 72);
    *(a1 + 72) = v17;
    v17 = v6;
    LOBYTE(v6) = *(a1 + 68);
    *(a1 + 68) = v16;
    v16 = v6;
    v7 = *(a1 + 8);
    *(a1 + 8) = v11;
    v11 = v7;
    LODWORD(v7) = *(a1 + 64);
    *(a1 + 64) = v15;
    v15 = v7;
    v12 = v4;
    v13 = v5;
    v8 = *(a1 + 48);
    *(a1 + 48) = v14;
    v14 = v8;
    sirinluinternal::ParseOverride::~ParseOverride(&v10);
  }

  return a1;
}

uint64_t sirinluinternal::swap(uint64_t this, sirinluinternal::ParseOverride *a2, sirinluinternal::ParseOverride *a3)
{
  v3 = *(this + 72);
  *(this + 72) = *(a2 + 18);
  *(a2 + 18) = v3;
  LOBYTE(v3) = *(this + 68);
  *(this + 68) = *(a2 + 68);
  *(a2 + 68) = v3;
  v5 = *(this + 8);
  v4 = *(this + 16);
  v6 = *(a2 + 2);
  *(this + 8) = *(a2 + 1);
  *(this + 16) = v6;
  *(a2 + 1) = v5;
  *(a2 + 2) = v4;
  LODWORD(v4) = *(this + 64);
  *(this + 64) = *(a2 + 16);
  *(a2 + 16) = v4;
  v7 = *(this + 48);
  *(this + 48) = *(a2 + 6);
  *(a2 + 6) = v7;
  v8 = *(this + 24);
  *(this + 24) = *(a2 + 3);
  *(a2 + 3) = v8;
  v9 = *(this + 32);
  *(this + 32) = *(a2 + 4);
  *(a2 + 4) = v9;
  v10 = *(this + 40);
  *(this + 40) = *(a2 + 5);
  *(a2 + 5) = v10;
  v11 = *(this + 56);
  *(this + 56) = *(a2 + 7);
  *(a2 + 7) = v11;
  return this;
}

uint64_t sirinluinternal::ParseOverride::ParseOverride(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4875C00;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 1;
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

  *(a1 + 68) = *(a2 + 68);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 64) = *(a2 + 64);
  v6 = *(a2 + 48);
  *(a2 + 48) = 0;
  v7 = *(a1 + 48);
  *(a1 + 48) = v6;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__vdeallocate((a1 + 24));
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v8 = *(a2 + 56);
  *(a2 + 56) = 0;
  std::unique_ptr<PB::Data>::reset[abi:ne200100]((a1 + 56), v8);
  return a1;
}

uint64_t sirinluinternal::ParseOverride::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluinternal::ParseOverride::ParseOverride(&v10, a2);
    v3 = v13;
    v4 = *(a1 + 16);
    v5 = *(a1 + 32);
    *(a1 + 16) = v12;
    *(a1 + 32) = v3;
    v6 = *(a1 + 72);
    *(a1 + 72) = v17;
    v17 = v6;
    LOBYTE(v6) = *(a1 + 68);
    *(a1 + 68) = v16;
    v16 = v6;
    v7 = *(a1 + 8);
    *(a1 + 8) = v11;
    v11 = v7;
    LODWORD(v7) = *(a1 + 64);
    *(a1 + 64) = v15;
    v15 = v7;
    v12 = v4;
    v13 = v5;
    v8 = *(a1 + 48);
    *(a1 + 48) = v14;
    v14 = v8;
    sirinluinternal::ParseOverride::~ParseOverride(&v10);
  }

  return a1;
}

uint64_t sirinluinternal::ParseOverride::operator==(uint64_t a1, uint64_t a2)
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

  v14 = *(a1 + 48);
  v15 = *(a2 + 48);
  if (!v14)
  {
    if (!v15)
    {
      goto LABEL_40;
    }

    return 0;
  }

  if (!v15 || !sirinluexternal::UserParse::operator==(v14, v15))
  {
    return 0;
  }

LABEL_40:
  result = PB::PtrVector<sirinluinternal::NluRequestRule>::operator==((a1 + 24), *(a2 + 24), *(a2 + 32));
  if (result)
  {
    if (!*(a1 + 56))
    {
      return *(a2 + 56) == 0;
    }

    if (*(a2 + 56))
    {
      if (PB::Data::operator==())
      {
        return 1;
      }

      if (!*(a1 + 56))
      {
        return *(a2 + 56) == 0;
      }
    }

    return 0;
  }

  return result;
}

BOOL PB::PtrVector<sirinluinternal::NluRequestRule>::operator==(uint64_t **a1, void **a2, uint64_t a3)
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
    result = sirinluinternal::NluRequestRule::operator==(v6, v8);
  }

  while (result && v4 != v3);
  return result;
}

unint64_t sirinluinternal::ParseOverride::hash_value(sirinluinternal::ParseOverride *this)
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

  if ((*(this + 72) & 4) == 0)
  {
    v4 = 0;
    if (*(this + 72))
    {
      goto LABEL_6;
    }

LABEL_9:
    v5 = 0;
    if ((*(this + 72) & 2) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  v4 = *(this + 68);
  if ((*(this + 72) & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  v5 = *(this + 1);
  if ((*(this + 72) & 2) != 0)
  {
LABEL_7:
    v6 = *(this + 16);
    goto LABEL_11;
  }

LABEL_10:
  v6 = 0;
LABEL_11:
  v7 = *(this + 6);
  if (v7)
  {
    v8 = sirinluexternal::UserParse::hash_value(v7);
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

  v13 = *(this + 7);
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

uint64_t sirinluinternal::ParseOverride::makeParse(uint64_t this)
{
  if (!*(this + 48))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternalembedding::EmbeddingRequest::formatText(sirinluinternalembedding::EmbeddingRequest *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 1))
  {
    PB::TextFormatter::format();
  }

  v5 = *(this + 2);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "token_chain");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluinternalembedding::EmbeddingRequest::writeTo(uint64_t this, PB::Writer *a2)
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

uint64_t sirinluinternalembedding::EmbeddingRequest::readFrom(sirinluinternalembedding::EmbeddingRequest *this, PB::Reader *a2)
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

void sirinluinternalembedding::EmbeddingRequest::~EmbeddingRequest(sirinluinternalembedding::EmbeddingRequest *this)
{
  sirinluinternalembedding::EmbeddingRequest::~EmbeddingRequest(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4875C50;
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

void *sirinluinternalembedding::EmbeddingRequest::EmbeddingRequest(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4875C50;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4875C50;
  return this;
}

void *sirinluinternalembedding::EmbeddingRequest::EmbeddingRequest(void *this, const sirinluinternalembedding::EmbeddingRequest *a2)
{
  *this = &unk_1F4875C50;
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

uint64_t sirinluinternalembedding::EmbeddingRequest::operator=(uint64_t a1, const sirinluinternalembedding::EmbeddingRequest *a2)
{
  if (a1 != a2)
  {
    sirinluinternalembedding::EmbeddingRequest::EmbeddingRequest(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    sirinluinternalembedding::EmbeddingRequest::~EmbeddingRequest(&v5);
  }

  return a1;
}

uint64_t sirinluinternalembedding::swap(uint64_t this, sirinluinternalembedding::EmbeddingRequest *a2, sirinluinternalembedding::EmbeddingRequest *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  v4 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v4;
  return this;
}

void *sirinluinternalembedding::EmbeddingRequest::EmbeddingRequest(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F4875C50;
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

uint64_t sirinluinternalembedding::EmbeddingRequest::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluinternalembedding::EmbeddingRequest::EmbeddingRequest(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    sirinluinternalembedding::EmbeddingRequest::~EmbeddingRequest(&v5);
  }

  return a1;
}

BOOL sirinluinternalembedding::EmbeddingRequest::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
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
        v10 = v6 >= 0 ? *(a1 + 8) : *v4;
        v11 = v9 >= 0 ? *(a2 + 8) : *v5;
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
  v12 = *(a1 + 16);
  v13 = *(a2 + 16);
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
    v16 = *(a1 + 16);

    return sirinluinternal::TokenChain::operator==(v16, v13);
  }

  return result;
}

unint64_t sirinluinternalembedding::EmbeddingRequest::hash_value(sirinluinternalembedding::EmbeddingRequest *this)
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
    v4 = sirinluinternal::TokenChain::hash_value(v4);
  }

  return v4 ^ v3;
}

uint64_t sirinluinternalembedding::EmbeddingRequest::makeTokenChain(uint64_t this)
{
  if (!*(this + 16))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternalnlu_router::NLRouterServiceResponse::formatText(sirinluexternalnlu_router::NLRouterServiceResponse *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "gen_ai_metadata");
  }

  if (*(this + 2))
  {
    PB::TextFormatter::format();
  }

  v6 = *(this + 3);
  v7 = *(this + 4);
  while (v6 != v7)
  {
    v8 = *v6++;
    (*(*v8 + 32))(v8, a2, "query_rewrites");
  }

  v9 = *(this + 84);
  if ((v9 & 2) != 0)
  {
    v10 = *(this + 19);
    PB::TextFormatter::format(a2, "routingDecisionSource");
    v9 = *(this + 84);
  }

  if (v9)
  {
    v11 = *(this + 18);
    PB::TextFormatter::format(a2, "routing_decision");
  }

  v12 = *(this + 6);
  v13 = *(this + 7);
  while (v12 != v13)
  {
    v14 = *v12++;
    (*(*v14 + 32))(v14, a2, "siri_x_rewrite_utterances");
  }

  if ((*(this + 84) & 4) != 0)
  {
    v15 = *(this + 20);
    PB::TextFormatter::format(a2, "status");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternalnlu_router::NLRouterServiceResponse::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 84);
  if (v4)
  {
    v5 = *(this + 72);
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 84);
  }

  if ((v4 & 4) != 0)
  {
    v6 = *(v3 + 80);
    this = PB::Writer::writeVarInt(a2);
  }

  v7 = *(v3 + 48);
  v8 = *(v3 + 56);
  while (v7 != v8)
  {
    v9 = *v7++;
    this = PB::Writer::writeSubmessage(a2, v9);
  }

  v10 = *(v3 + 24);
  v11 = *(v3 + 32);
  while (v10 != v11)
  {
    v12 = *v10++;
    this = PB::Writer::writeSubmessage(a2, v12);
  }

  if ((*(v3 + 84) & 2) != 0)
  {
    v13 = *(v3 + 76);
    this = PB::Writer::writeVarInt(a2);
  }

  v14 = *(v3 + 8);
  if (v14)
  {
    this = PB::Writer::writeSubmessage(a2, v14);
  }

  if (*(v3 + 16))
  {

    return PB::Writer::write();
  }

  return this;
}

uint64_t sirinluexternalnlu_router::NLRouterServiceResponse::readFrom(sirinluexternalnlu_router::NLRouterServiceResponse *this, PB::Reader *a2)
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
    if ((v10 >> 3) <= 3)
    {
      switch(v22)
      {
        case 1:
          *(this + 84) |= 1u;
          v33 = *(a2 + 1);
          v32 = *(a2 + 2);
          v34 = *a2;
          if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v32)
          {
            v50 = 0;
            v51 = 0;
            v37 = 0;
            v52 = (v34 + v33);
            v18 = v32 >= v33;
            v53 = v32 - v33;
            if (!v18)
            {
              v53 = 0;
            }

            v54 = v33 + 1;
            while (1)
            {
              if (!v53)
              {
                LODWORD(v37) = 0;
                *(a2 + 24) = 1;
                goto LABEL_83;
              }

              v55 = *v52;
              *(a2 + 1) = v54;
              v37 |= (v55 & 0x7F) << v50;
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
LABEL_61:
                LODWORD(v37) = 0;
                goto LABEL_83;
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
                goto LABEL_61;
              }
            }
          }

LABEL_83:
          *(this + 18) = v37;
          goto LABEL_90;
        case 2:
          *(this + 84) |= 4u;
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
                goto LABEL_89;
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
LABEL_77:
                LODWORD(v46) = 0;
                goto LABEL_89;
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
                goto LABEL_77;
              }
            }
          }

LABEL_89:
          *(this + 20) = v46;
          goto LABEL_90;
        case 3:
          PB::PtrVector<sirinluexternalnlu_router::NLRouterRewriteUtterance>::emplace_back<>();
      }
    }

    else if (v22 > 5)
    {
      if (v22 == 6)
      {
        operator new();
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
        PB::PtrVector<sirinluexternalnlu_router::NLRouterRewriteUtterance>::emplace_back<>();
      }

      if (v22 == 5)
      {
        *(this + 84) |= 2u;
        v24 = *(a2 + 1);
        v23 = *(a2 + 2);
        v25 = *a2;
        if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
        {
          v56 = 0;
          v57 = 0;
          v28 = 0;
          v58 = (v25 + v24);
          v18 = v23 >= v24;
          v59 = v23 - v24;
          if (!v18)
          {
            v59 = 0;
          }

          v60 = v24 + 1;
          while (1)
          {
            if (!v59)
            {
              LODWORD(v28) = 0;
              *(a2 + 24) = 1;
              goto LABEL_86;
            }

            v61 = *v58;
            *(a2 + 1) = v60;
            v28 |= (v61 & 0x7F) << v56;
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
LABEL_69:
              LODWORD(v28) = 0;
              goto LABEL_86;
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
              goto LABEL_69;
            }
          }
        }

LABEL_86:
        *(this + 19) = v28;
        goto LABEL_90;
      }
    }

LABEL_17:
    if ((PB::Reader::skip(a2) & 1) == 0)
    {
      v69 = 0;
      return v69 & 1;
    }

LABEL_90:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v69 = v4 ^ 1;
  return v69 & 1;
}