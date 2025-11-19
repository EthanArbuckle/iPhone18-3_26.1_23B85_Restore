uint64_t sirinluexternal::UserWantedToUndo::operator=(uint64_t a1, const sirinluexternal::UserWantedToUndo *a2)
{
  if (a1 != a2)
  {
    sirinluexternal::UserWantedToUndo::UserWantedToUndo(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    sirinluexternal::UserWantedToUndo::~UserWantedToUndo(&v5);
  }

  return a1;
}

uint64_t sirinluexternal::swap(uint64_t this, sirinluexternal::UserWantedToUndo *a2, sirinluexternal::UserWantedToUndo *a3)
{
  v3 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v4;
  return this;
}

void *sirinluexternal::UserWantedToUndo::UserWantedToUndo(void *a1, uint64_t a2)
{
  a1[1] = 0;
  v4 = a1 + 1;
  *a1 = &unk_1F4875480;
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

uint64_t sirinluexternal::UserWantedToUndo::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluexternal::UserWantedToUndo::UserWantedToUndo(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    sirinluexternal::UserWantedToUndo::~UserWantedToUndo(&v5);
  }

  return a1;
}

BOOL sirinluexternal::UserWantedToUndo::operator==(uint64_t a1, uint64_t a2)
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

unint64_t sirinluexternal::UserWantedToUndo::hash_value(sirinluexternal::UserWantedToUndo *this)
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

uint64_t sirinluexternal::UserWantedToUndo::makeTaskId(uint64_t this)
{
  if (!*(this + 16))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::UserWantedToUndo::makeReference(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t SIRINLUEXTERNALAsrAlternativeReadFrom(uint64_t a1, void *a2)
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

    v14 = objc_alloc_init(SIRICOMMONFloatValue);
    objc_storeStrong((a1 + 16), v14);
    v17[0] = 0;
    v17[1] = 0;
    if (!PBReaderPlaceMark() || !SIRICOMMONFloatValueReadFrom(v14, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sirinluinternalssu::SSUEncodingResult::formatText(sirinluinternalssu::SSUEncodingResult *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(a2, "encoding", v7);
  }

  if (*(this + 4))
  {
    PB::TextFormatter::format();
  }

  if (*(this + 5))
  {
    PB::TextFormatter::format();
  }

  if (*(this + 6))
  {
    PB::TextFormatter::format();
  }

  return MEMORY[0x1EEE30A90](a2);
}

void *sirinluinternalssu::SSUEncodingResult::writeTo(void *this, PB::Writer *a2)
{
  v3 = this;
  if (this[4])
  {
    this = PB::Writer::write();
  }

  if (v3[5])
  {
    this = PB::Writer::write();
  }

  if (v3[6])
  {
    this = PB::Writer::write();
  }

  v5 = v3[1];
  v4 = v3[2];
  while (v5 != v4)
  {
    v6 = *v5++;
    this = PB::Writer::write(a2, v6);
  }

  return this;
}

uint64_t sirinluinternalssu::SSUEncodingResult::readFrom(sirinluinternalssu::SSUEncodingResult *this, PB::Reader *a2)
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
        goto LABEL_70;
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
        goto LABEL_70;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) <= 2)
      {
        break;
      }

      if (v22 == 3)
      {
        operator new();
      }

      if (v22 != 4)
      {
        goto LABEL_17;
      }

      if ((v10 & 7) == 2)
      {
        if (PB::Reader::placeMark())
        {
LABEL_72:
          v53 = 0;
          return v53 & 1;
        }

        v23 = *(a2 + 1);
        v24 = *(a2 + 2);
        while (v23 < v24 && (*(a2 + 24) & 1) == 0)
        {
          v26 = *(this + 2);
          v25 = *(this + 3);
          if (v26 >= v25)
          {
            v28 = *(this + 1);
            v29 = v26 - v28;
            v30 = (v26 - v28) >> 2;
            v31 = v30 + 1;
            if ((v30 + 1) >> 62)
            {
              goto LABEL_74;
            }

            v32 = v25 - v28;
            if (v32 >> 1 > v31)
            {
              v31 = v32 >> 1;
            }

            if (v32 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v33 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v33 = v31;
            }

            if (v33)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(v33);
            }

            v34 = (v26 - v28) >> 2;
            v35 = (4 * v30);
            v36 = (4 * v30 - 4 * v34);
            *v35 = 0;
            v27 = v35 + 1;
            memcpy(v36, v28, v29);
            v37 = *(this + 1);
            *(this + 1) = v36;
            *(this + 2) = v27;
            *(this + 3) = 0;
            if (v37)
            {
              operator delete(v37);
            }
          }

          else
          {
            *v26 = 0;
            v27 = v26 + 4;
          }

          *(this + 2) = v27;
          v38 = *(a2 + 1);
          if (v38 > 0xFFFFFFFFFFFFFFFBLL || v38 + 4 > *(a2 + 2))
          {
            *(a2 + 24) = 1;
            break;
          }

          *(v27 - 1) = *(*a2 + v38);
          v24 = *(a2 + 2);
          v23 = *(a2 + 1) + 4;
          *(a2 + 1) = v23;
        }

        PB::Reader::recallMark();
      }

      else
      {
        v40 = *(this + 2);
        v39 = *(this + 3);
        if (v40 >= v39)
        {
          v42 = *(this + 1);
          v43 = v40 - v42;
          v44 = (v40 - v42) >> 2;
          v45 = v44 + 1;
          if ((v44 + 1) >> 62)
          {
LABEL_74:
            std::vector<std::unique_ptr<siricommon::StringValue>>::__throw_length_error[abi:ne200100]();
          }

          v46 = v39 - v42;
          if (v46 >> 1 > v45)
          {
            v45 = v46 >> 1;
          }

          if (v46 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v47 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v47 = v45;
          }

          if (v47)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(v47);
          }

          v48 = (v40 - v42) >> 2;
          v49 = (4 * v44);
          v50 = (4 * v44 - 4 * v48);
          *v49 = 0;
          v41 = v49 + 1;
          memcpy(v50, v42, v43);
          v51 = *(this + 1);
          *(this + 1) = v50;
          *(this + 2) = v41;
          *(this + 3) = 0;
          if (v51)
          {
            operator delete(v51);
          }
        }

        else
        {
          *v40 = 0;
          v41 = v40 + 4;
        }

        *(this + 2) = v41;
        v52 = *(a2 + 1);
        if (v52 <= 0xFFFFFFFFFFFFFFFBLL && v52 + 4 <= *(a2 + 2))
        {
          *(v41 - 1) = *(*a2 + v52);
          *(a2 + 1) += 4;
        }

        else
        {
          *(a2 + 24) = 1;
        }
      }

LABEL_48:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_70;
      }
    }

    if (v22 == 1)
    {
      operator new();
    }

    if (v22 == 2)
    {
      operator new();
    }

LABEL_17:
    if ((PB::Reader::skip(a2) & 1) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_48;
  }

LABEL_70:
  v53 = v4 ^ 1;
  return v53 & 1;
}

void sirinluinternalssu::SSUEncodingResult::~SSUEncodingResult(sirinluinternalssu::SSUEncodingResult *this)
{
  sirinluinternalssu::SSUEncodingResult::~SSUEncodingResult(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F48754D0;
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

double sirinluinternalssu::SSUEncodingResult::SSUEncodingResult(sirinluinternalssu::SSUEncodingResult *this)
{
  *this = &unk_1F48754D0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

{
  *this = &unk_1F48754D0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

sirinluinternalssu::SSUEncodingResult *sirinluinternalssu::SSUEncodingResult::SSUEncodingResult(sirinluinternalssu::SSUEncodingResult *this, const sirinluinternalssu::SSUEncodingResult *a2)
{
  *this = &unk_1F48754D0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  if (*(a2 + 4))
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

  if (this != a2)
  {
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(this + 1, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 2);
  }

  return this;
}

void *std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      if (!(v10 >> 62))
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(v10);
      }
    }

    std::vector<std::unique_ptr<siricommon::StringValue>>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

uint64_t sirinluinternalssu::SSUEncodingResult::operator=(uint64_t a1, const sirinluinternalssu::SSUEncodingResult *a2)
{
  if (a1 != a2)
  {
    sirinluinternalssu::SSUEncodingResult::SSUEncodingResult(v8, a2);
    v3 = *(a1 + 40);
    *(a1 + 40) = v11;
    v4 = v10;
    v5 = *(a1 + 8);
    *(a1 + 8) = v9;
    v9 = v5;
    v6 = *(a1 + 24);
    *(a1 + 24) = v4;
    v10 = v6;
    v11 = v3;
    sirinluinternalssu::SSUEncodingResult::~SSUEncodingResult(v8);
  }

  return a1;
}

void *sirinluinternalssu::swap(void *this, sirinluinternalssu::SSUEncodingResult *a2, sirinluinternalssu::SSUEncodingResult *a3)
{
  v3 = this[4];
  this[4] = *(a2 + 4);
  *(a2 + 4) = v3;
  v4 = this[5];
  this[5] = *(a2 + 5);
  *(a2 + 5) = v4;
  v5 = this[6];
  this[6] = *(a2 + 6);
  *(a2 + 6) = v5;
  v6 = this[1];
  this[1] = *(a2 + 1);
  *(a2 + 1) = v6;
  v7 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v7;
  v8 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v8;
  return this;
}

uint64_t sirinluinternalssu::SSUEncodingResult::SSUEncodingResult(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F48754D0;
  *(a1 + 8) = 0u;
  v4 = a1 + 8;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  v5 = *(a2 + 32);
  *(a2 + 32) = 0;
  v6 = *(a1 + 32);
  *(a1 + 32) = v5;
  if (v6)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v6);
  }

  v7 = *(a2 + 40);
  *(a2 + 40) = 0;
  v8 = *(a1 + 40);
  *(a1 + 40) = v7;
  if (v8)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v8);
  }

  v9 = *(a2 + 48);
  *(a2 + 48) = 0;
  v10 = *(a1 + 48);
  *(a1 + 48) = v9;
  if (v10)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v10);
  }

  v11 = *v4;
  if (*v4)
  {
    *(a1 + 16) = v11;
    operator delete(v11);
    *v4 = 0;
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
  }

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return a1;
}

uint64_t sirinluinternalssu::SSUEncodingResult::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluinternalssu::SSUEncodingResult::SSUEncodingResult(v8, a2);
    v3 = *(a1 + 40);
    *(a1 + 40) = v11;
    v4 = v10;
    v5 = *(a1 + 8);
    *(a1 + 8) = v9;
    v9 = v5;
    v6 = *(a1 + 24);
    *(a1 + 24) = v4;
    v10 = v6;
    v11 = v3;
    sirinluinternalssu::SSUEncodingResult::~SSUEncodingResult(v8);
  }

  return a1;
}

BOOL sirinluinternalssu::SSUEncodingResult::operator==(void *a1, void *a2)
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

  v13 = a1[5];
  v14 = a2[5];
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

    v19 = v15 >= 0 ? a1[5] : *v13;
    v20 = v18 >= 0 ? a2[5] : *v14;
    if (memcmp(v19, v20, v16))
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  v21 = a1[6];
  v22 = a2[6];
  if (!v21)
  {
    if (!v22)
    {
      goto LABEL_53;
    }

    return 0;
  }

  if (!v22)
  {
    return 0;
  }

  v23 = *(v21 + 23);
  if (v23 >= 0)
  {
    v24 = *(v21 + 23);
  }

  else
  {
    v24 = *(v21 + 8);
  }

  v25 = *(v22 + 23);
  v26 = v25;
  if ((v25 & 0x80u) != 0)
  {
    v25 = *(v22 + 8);
  }

  if (v24 != v25)
  {
    return 0;
  }

  v27 = v23 >= 0 ? a1[6] : *v21;
  v28 = v26 >= 0 ? a2[6] : *v22;
  if (memcmp(v27, v28, v24))
  {
    return 0;
  }

LABEL_53:
  v30 = a1[1];
  v29 = a1[2];
  v31 = a2[1];
  if (v29 - v30 != a2[2] - v31)
  {
    return 0;
  }

  if (v30 == v29)
  {
    return 1;
  }

  v32 = v30 + 4;
  do
  {
    v33 = *v31++;
    result = *(v32 - 4) == v33;
    v34 = *(v32 - 4) != v33 || v32 == v29;
    v32 += 4;
  }

  while (!v34);
  return result;
}

unint64_t sirinluinternalssu::SSUEncodingResult::hash_value(sirinluinternalssu::SSUEncodingResult *this)
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

  v4 = *(this + 5);
  if (v4)
  {
    v5 = std::__string_hash<char>::operator()[abi:ne200100](v4);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(this + 6);
  if (v6)
  {
    v6 = std::__string_hash<char>::operator()[abi:ne200100](v6);
  }

  v7 = v5 ^ v3 ^ v6;
  v8 = *(this + 1);
  v9 = *(this + 2);
  return v7 ^ PBHashBytes();
}

uint64_t sirinluinternalnlv4_parser::NLv4ParserResponse::formatText(sirinluinternalnlv4_parser::NLv4ParserResponse *this, PB::TextFormatter *a2, const char *a3)
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

uint64_t sirinluinternalnlv4_parser::NLv4ParserResponse::readFrom(sirinluinternalnlv4_parser::NLv4ParserResponse *this, PB::Reader *a2)
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

void *sirinluinternalnlv4_parser::NLv4ParserResponse::NLv4ParserResponse(void *this)
{
  *this = &unk_1F4875520;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_1F4875520;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

void *sirinluinternalnlv4_parser::NLv4ParserResponse::NLv4ParserResponse(void *this, const sirinluinternalnlv4_parser::NLv4ParserResponse *a2)
{
  this[1] = 0;
  *this = &unk_1F4875520;
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

uint64_t sirinluinternalnlv4_parser::NLv4ParserResponse::operator=(uint64_t a1, const sirinluinternalnlv4_parser::NLv4ParserResponse *a2)
{
  if (a1 != a2)
  {
    sirinluinternalnlv4_parser::NLv4ParserResponse::NLv4ParserResponse(&v6, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v4;
    v6 = &unk_1F4875520;
    v9 = &v7;
    std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v9);
    PB::Base::~Base(&v6);
  }

  return a1;
}

void *sirinluinternalnlv4_parser::swap(void *this, sirinluinternalnlv4_parser::NLv4ParserResponse *a2, sirinluinternalnlv4_parser::NLv4ParserResponse *a3)
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

uint64_t sirinluinternalnlv4_parser::NLv4ParserResponse::NLv4ParserResponse(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4875520;
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
  *a1 = &unk_1F4875520;
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

void std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__vdeallocate(void **a1)
{
  if (*a1)
  {
    std::vector<std::unique_ptr<siricommon::StringValue>>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t sirinluinternalnlv4_parser::NLv4ParserResponse::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v9 = &unk_1F4875520;
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
    v9 = &unk_1F4875520;
    std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v12);
    PB::Base::~Base(&v9);
  }

  return a1;
}

BOOL PB::PtrVector<sirinluexternal::UserParse>::operator==(uint64_t **a1, uint64_t *a2, uint64_t a3)
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
    result = sirinluexternal::UserParse::operator==(v6, v8);
  }

  while (result && v4 != v3);
  return result;
}

uint64_t sirinluinternalnlv4_parser::NLv4ParserResponse::hash_value(sirinluinternalnlv4_parser::NLv4ParserResponse *this)
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

uint64_t sirinluexternal::RequestID::formatText(sirinluexternal::RequestID *this, PB::TextFormatter *a2, const char *a3)
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

  v5 = *(this + 4);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "nlu_request_id");
  }

  if (*(this + 60))
  {
    v6 = *(this + 14);
    PB::TextFormatter::format(a2, "requester");
  }

  if (*(this + 5))
  {
    PB::TextFormatter::format();
  }

  if (*(this + 6))
  {
    PB::TextFormatter::format();
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternal::RequestID::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if (*(this + 16))
  {
    this = PB::Writer::write();
  }

  v4 = *(v3 + 32);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  if (*(v3 + 48))
  {
    this = PB::Writer::write();
  }

  if (*(v3 + 24))
  {
    this = PB::Writer::write();
  }

  if (*(v3 + 40))
  {
    this = PB::Writer::write();
  }

  if (*(v3 + 8))
  {
    this = PB::Writer::write();
  }

  if (*(v3 + 60))
  {
    v5 = *(v3 + 56);

    return PB::Writer::writeVarInt(a2);
  }

  return this;
}

double sirinluexternal::RequestID::RequestID(sirinluexternal::RequestID *this)
{
  *this = &unk_1F4875570;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  return result;
}

{
  *this = &unk_1F4875570;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  return result;
}

uint64_t sirinluexternal::RequestID::RequestID(uint64_t this, const sirinluexternal::RequestID *a2)
{
  *this = &unk_1F4875570;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0;
  if (*(a2 + 2))
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

  if (*(a2 + 3))
  {
    operator new();
  }

  if (*(a2 + 5))
  {
    operator new();
  }

  if (*(a2 + 1))
  {
    operator new();
  }

  if (*(a2 + 60))
  {
    v2 = *(a2 + 14);
    *(this + 60) |= 1u;
    *(this + 56) = v2;
  }

  return this;
}

uint64_t sirinluexternal::RequestID::operator=(uint64_t a1, const sirinluexternal::RequestID *a2)
{
  if (a1 != a2)
  {
    sirinluexternal::RequestID::RequestID(&v7, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v9;
    v9 = v3;
    v4 = *(a1 + 40);
    *(a1 + 40) = v10;
    v10 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v5;
    *&v5 = *(a1 + 56);
    *(a1 + 56) = v11;
    v11 = v5;
    sirinluexternal::RequestID::~RequestID(&v7);
  }

  return a1;
}

uint64_t sirinluexternal::swap(uint64_t this, sirinluexternal::RequestID *a2, sirinluexternal::RequestID *a3)
{
  v3 = *(this + 60);
  *(this + 60) = *(a2 + 15);
  *(a2 + 15) = v3;
  v4 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = *(this + 32);
  *(this + 32) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 48);
  *(this + 48) = *(a2 + 6);
  *(a2 + 6) = v6;
  v7 = *(this + 24);
  *(this + 24) = *(a2 + 3);
  *(a2 + 3) = v7;
  v8 = *(this + 40);
  *(this + 40) = *(a2 + 5);
  *(a2 + 5) = v8;
  v9 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v9;
  LODWORD(v9) = *(this + 56);
  *(this + 56) = *(a2 + 14);
  *(a2 + 14) = v9;
  return this;
}

uint64_t sirinluexternal::RequestID::RequestID(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4875570;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 60) = *(a2 + 60);
  *(a2 + 60) = 0;
  v5 = *(a2 + 16);
  *(a2 + 16) = 0;
  v6 = *(a1 + 16);
  *(a1 + 16) = v5;
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

  v9 = *(a2 + 48);
  *(a2 + 48) = 0;
  v10 = *(a1 + 48);
  *(a1 + 48) = v9;
  if (v10)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v10);
  }

  v11 = *(a2 + 24);
  *(a2 + 24) = 0;
  v12 = *(a1 + 24);
  *(a1 + 24) = v11;
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
    std::default_delete<std::string>::operator()[abi:ne200100](v14);
  }

  v15 = *(a2 + 8);
  *(a2 + 8) = 0;
  v16 = *v4;
  *v4 = v15;
  if (v16)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v16);
  }

  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t sirinluexternal::RequestID::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluexternal::RequestID::RequestID(&v7, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v9;
    v9 = v3;
    v4 = *(a1 + 40);
    *(a1 + 40) = v10;
    v10 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v5;
    *&v5 = *(a1 + 56);
    *(a1 + 56) = v11;
    v11 = v5;
    sirinluexternal::RequestID::~RequestID(&v7);
  }

  return a1;
}

BOOL sirinluexternal::RequestID::operator==(uint64_t a1, uint64_t a2)
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

  v13 = *(a1 + 32);
  v14 = *(a2 + 32);
  if (v13)
  {
    if (!v14 || !sirinluexternal::UUID::operator==(v13, v14))
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  v15 = *(a1 + 48);
  v16 = *(a2 + 48);
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

    v21 = v17 >= 0 ? *(a1 + 48) : *v15;
    v22 = v20 >= 0 ? *(a2 + 48) : *v16;
    if (memcmp(v21, v22, v18))
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  v23 = *(a1 + 24);
  v24 = *(a2 + 24);
  if (v23)
  {
    if (!v24 || !std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(v23, v24))
    {
      return 0;
    }
  }

  else if (v24)
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

  v27 = *(a1 + 8);
  v28 = *(a2 + 8);
  if (!v27)
  {
    if (!v28)
    {
      goto LABEL_57;
    }

    return 0;
  }

  if (!v28 || !std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(v27, v28))
  {
    return 0;
  }

LABEL_57:
  result = (*(a2 + 60) & 1) == 0;
  if (*(a1 + 60))
  {
    return (*(a2 + 60) & 1) != 0 && *(a1 + 56) == *(a2 + 56);
  }

  return result;
}

unint64_t sirinluexternal::RequestID::hash_value(sirinluexternal::RequestID *this)
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

  v4 = *(this + 4);
  if (!v4)
  {
    v8 = 0;
    goto LABEL_14;
  }

  if ((*(v4 + 28) & 1) == 0)
  {
    v5 = 0;
    if ((*(v4 + 28) & 2) != 0)
    {
      goto LABEL_7;
    }

LABEL_11:
    v6 = 0;
    if ((*(v4 + 28) & 4) != 0)
    {
      goto LABEL_8;
    }

LABEL_12:
    v7 = 0;
    goto LABEL_13;
  }

  v5 = *(v4 + 8);
  if ((*(v4 + 28) & 2) == 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  v6 = *(v4 + 16);
  if ((*(v4 + 28) & 4) == 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  v7 = *(v4 + 24);
LABEL_13:
  v8 = v6 ^ v5 ^ v7;
LABEL_14:
  v9 = *(this + 6);
  if (v9)
  {
    v10 = std::__string_hash<char>::operator()[abi:ne200100](v9);
  }

  else
  {
    v10 = 0;
  }

  v11 = *(this + 3);
  if (v11)
  {
    v12 = std::__string_hash<char>::operator()[abi:ne200100](v11);
  }

  else
  {
    v12 = 0;
  }

  v13 = *(this + 5);
  if (v13)
  {
    v14 = std::__string_hash<char>::operator()[abi:ne200100](v13);
  }

  else
  {
    v14 = 0;
  }

  v15 = *(this + 1);
  if (v15)
  {
    v15 = std::__string_hash<char>::operator()[abi:ne200100](v15);
  }

  if (*(this + 60))
  {
    v16 = *(this + 14);
  }

  else
  {
    v16 = 0;
  }

  return v8 ^ v3 ^ v10 ^ v12 ^ v14 ^ v15 ^ v16;
}

uint64_t sirinluexternal::RequestID::makeNluRequestId(uint64_t this)
{
  if (!*(this + 32))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::EntityCandidate::formatText(sirinluexternal::EntityCandidate *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, a2, "annotations");
  }

  v8 = *(this + 4);
  if (v8)
  {
    (*(*v8 + 32))(v8, a2, "app_bundle_id");
  }

  v9 = *(this + 5);
  if (v9)
  {
    (*(*v9 + 32))(v9, a2, "entity");
  }

  v10 = *(this + 6);
  if (v10)
  {
    (*(*v10 + 32))(v10, a2, "entity_id");
  }

  v11 = *(this + 7);
  if (v11)
  {
    (*(*v11 + 32))(v11, a2, "group_id");
  }

  v12 = *(this + 8);
  if (v12)
  {
    (*(*v12 + 32))(v12, a2, "metadata");
  }

  v13 = *(this + 9);
  if (v13)
  {
    (*(*v13 + 32))(v13, a2, "score");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternal::EntityCandidate::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 40);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  v5 = v3[9];
  if (v5)
  {
    this = PB::Writer::writeSubmessage(a2, v5);
  }

  v6 = v3[6];
  if (v6)
  {
    this = PB::Writer::writeSubmessage(a2, v6);
  }

  v7 = v3[4];
  if (v7)
  {
    this = PB::Writer::writeSubmessage(a2, v7);
  }

  v8 = v3[7];
  if (v8)
  {
    this = PB::Writer::writeSubmessage(a2, v8);
  }

  v9 = v3[1];
  v10 = v3[2];
  while (v9 != v10)
  {
    v11 = *v9++;
    this = PB::Writer::writeSubmessage(a2, v11);
  }

  v12 = v3[8];
  if (v12)
  {

    return PB::Writer::writeSubmessage(a2, v12);
  }

  return this;
}

uint64_t sirinluexternal::EntityCandidate::readFrom(sirinluexternal::EntityCandidate *this, PB::Reader *a2)
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

void sirinluexternal::EntityCandidate::~EntityCandidate(sirinluexternal::EntityCandidate *this)
{
  sirinluexternal::EntityCandidate::~EntityCandidate(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F48755C0;
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
    (*(*v7 + 8))(v7);
  }

  if (*(this + 1))
  {
    std::vector<std::unique_ptr<siricommon::StringValue>>::clear[abi:ne200100](this + 1);
    operator delete(*(this + 1));
  }

  PB::Base::~Base(this);
}

double sirinluexternal::EntityCandidate::EntityCandidate(sirinluexternal::EntityCandidate *this)
{
  *this = &unk_1F48755C0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  return result;
}

{
  *this = &unk_1F48755C0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  return result;
}

uint64_t sirinluexternal::EntityCandidate::EntityCandidate(uint64_t this, const sirinluexternal::EntityCandidate *a2)
{
  *(this + 8) = 0u;
  *this = &unk_1F48755C0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0;
  if (*(a2 + 5))
  {
    operator new();
  }

  if (*(a2 + 9))
  {
    operator new();
  }

  if (*(a2 + 6))
  {
    operator new();
  }

  if (*(a2 + 4))
  {
    operator new();
  }

  if (*(a2 + 7))
  {
    operator new();
  }

  v2 = *(a2 + 1);
  if (v2 != *(a2 + 2))
  {
    v3 = *v2;
    operator new();
  }

  if (*(a2 + 8))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::EntityCandidate::operator=(uint64_t a1, const sirinluexternal::EntityCandidate *a2)
{
  if (a1 != a2)
  {
    sirinluexternal::EntityCandidate::EntityCandidate(&v9, a2);
    v3 = *(a1 + 72);
    *(a1 + 72) = v14;
    v14 = v3;
    v4 = *(a1 + 40);
    *(a1 + 40) = v12;
    v12 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v10;
    v10 = v5;
    v6 = *(a1 + 24);
    *(a1 + 24) = v11;
    v11 = v6;
    v7 = *(a1 + 56);
    *(a1 + 56) = v13;
    v13 = v7;
    sirinluexternal::EntityCandidate::~EntityCandidate(&v9);
  }

  return a1;
}

void *sirinluexternal::swap(void *this, sirinluexternal::EntityCandidate *a2, sirinluexternal::EntityCandidate *a3)
{
  v3 = this[5];
  this[5] = *(a2 + 5);
  *(a2 + 5) = v3;
  v4 = this[9];
  this[9] = *(a2 + 9);
  *(a2 + 9) = v4;
  v5 = this[6];
  this[6] = *(a2 + 6);
  *(a2 + 6) = v5;
  v6 = this[4];
  this[4] = *(a2 + 4);
  *(a2 + 4) = v6;
  v7 = this[7];
  this[7] = *(a2 + 7);
  *(a2 + 7) = v7;
  v8 = this[1];
  this[1] = *(a2 + 1);
  *(a2 + 1) = v8;
  v9 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v9;
  v10 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v10;
  v11 = this[8];
  this[8] = *(a2 + 8);
  *(a2 + 8) = v11;
  return this;
}

uint64_t sirinluexternal::EntityCandidate::EntityCandidate(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F48755C0;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  v5 = *(a2 + 40);
  *(a2 + 40) = 0;
  v6 = *(a1 + 40);
  *(a1 + 40) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(a2 + 72);
  *(a2 + 72) = 0;
  v8 = *(a1 + 72);
  *(a1 + 72) = v7;
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

  v11 = *(a2 + 32);
  *(a2 + 32) = 0;
  v12 = *(a1 + 32);
  *(a1 + 32) = v11;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = *(a2 + 56);
  *(a2 + 56) = 0;
  v14 = *(a1 + 56);
  *(a1 + 56) = v13;
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

  return a1;
}

uint64_t sirinluexternal::EntityCandidate::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluexternal::EntityCandidate::EntityCandidate(&v9, a2);
    v3 = *(a1 + 72);
    *(a1 + 72) = v14;
    v14 = v3;
    v4 = *(a1 + 40);
    *(a1 + 40) = v12;
    v12 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v10;
    v10 = v5;
    v6 = *(a1 + 24);
    *(a1 + 24) = v11;
    v11 = v6;
    v7 = *(a1 + 56);
    *(a1 + 56) = v13;
    v13 = v7;
    sirinluexternal::EntityCandidate::~EntityCandidate(&v9);
  }

  return a1;
}

BOOL sirinluexternal::EntityCandidate::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  v5 = *(a2 + 40);
  if (v4)
  {
    if (!v5 || !sirinluexternal::UsoGraph::operator==(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v6 = *(a1 + 72);
  v7 = *(a2 + 72);
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

  v9 = *(a1 + 48);
  v10 = *(a2 + 48);
  if (v9)
  {
    if (!v10 || !siricommon::StringValue::operator==(v9, v10))
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v11 = *(a1 + 32);
  v12 = *(a2 + 32);
  if (v11)
  {
    if (!v12 || !siricommon::StringValue::operator==(v11, v12))
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  v13 = *(a1 + 56);
  v14 = *(a2 + 56);
  if (!v13)
  {
    if (!v14)
    {
      goto LABEL_28;
    }

    return 0;
  }

  if (!v14 || !sirinluexternal::RRGroupIdentifier::operator==(v13, v14))
  {
    return 0;
  }

LABEL_28:
  result = PB::PtrVector<sirinluexternal::RRAnnotation>::operator==(*(a1 + 8), *(a1 + 16), *(a2 + 8), *(a2 + 16));
  if (result)
  {
    v16 = *(a1 + 64);
    v17 = *(a2 + 64);
    result = (v16 | v17) == 0;
    if (v16)
    {
      if (v17)
      {
        v18 = *(a1 + 64);

        return sirinluexternal::RRMetadata::operator==(v18, v17);
      }
    }
  }

  return result;
}

BOOL PB::PtrVector<sirinluexternal::RRAnnotation>::operator==(char *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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
    result = sirinluexternal::RRAnnotation::operator==(v7, v9);
  }

  while (result && v5 != a2);
  return result;
}

unint64_t sirinluexternal::EntityCandidate::hash_value(sirinluexternal::EntityCandidate *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    v3 = sirinluexternal::UsoGraph::hash_value(v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 9);
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

  v7 = *(this + 6);
  if (v7 && (v8 = *(v7 + 8)) != 0)
  {
    v9 = std::__string_hash<char>::operator()[abi:ne200100](v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(this + 4);
  if (v10 && (v11 = *(v10 + 8)) != 0)
  {
    v12 = std::__string_hash<char>::operator()[abi:ne200100](v11);
  }

  else
  {
    v12 = 0;
  }

  v13 = *(this + 7);
  if (v13)
  {
    v14 = sirinluexternal::RRGroupIdentifier::hash_value(v13);
  }

  else
  {
    v14 = 0;
  }

  v15 = *(this + 1);
  v16 = *(this + 2);
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
      v17 ^= sirinluexternal::RRAnnotation::hash_value(v18);
    }

    while (v15 != v16);
  }

  v19 = *(this + 8);
  if (v19)
  {
    v19 = sirinluexternal::RRMetadata::hash_value(v19);
  }

  return *&v5 ^ v3 ^ v9 ^ v12 ^ v14 ^ v19 ^ v17;
}

uint64_t sirinluexternal::EntityCandidate::makeEntity(uint64_t this)
{
  if (!*(this + 40))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::EntityCandidate::makeScore(uint64_t this)
{
  if (!*(this + 72))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::EntityCandidate::makeEntityId(uint64_t this)
{
  if (!*(this + 48))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::EntityCandidate::makeAppBundleId(uint64_t this)
{
  if (!*(this + 32))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::EntityCandidate::makeGroupId(uint64_t this)
{
  if (!*(this + 56))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::EntityCandidate::makeMetadata(uint64_t this)
{
  if (!*(this + 64))
  {
    operator new();
  }

  return this;
}

uint64_t SIRINLUEXTERNALUserStatedTaskReadFrom(uint64_t a1, void *a2)
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
        v13 = objc_alloc_init(SIRINLUEXTERNALUsoGraph);
        objc_storeStrong((a1 + 8), v13);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !SIRINLUEXTERNALUsoGraphReadFrom(&v13->super.super.isa, a2))
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

uint64_t SIRINLUEXTERNALUsoOntologyVocabularyReadFrom(id *a1, void *a2)
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
        v13 = objc_alloc_init(SIRINLUEXTERNALSemVer);
        objc_storeStrong(a1 + 2, v13);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !SIRINLUEXTERNALSemVerReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        goto LABEL_24;
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

    v13 = PBReaderReadString();
    if (v13)
    {
      [a1 addElementNames:v13];
    }

LABEL_24:

    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sirinluexternal::UserCancelled::formatText(sirinluexternal::UserCancelled *this, PB::TextFormatter *a2, const char *a3)
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

uint64_t sirinluexternal::UserCancelled::writeTo(uint64_t this, PB::Writer *a2)
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

uint64_t sirinluexternal::UserCancelled::readFrom(sirinluexternal::UserCancelled *this, PB::Reader *a2)
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

void sirinluexternal::UserCancelled::~UserCancelled(sirinluexternal::UserCancelled *this)
{
  sirinluexternal::UserCancelled::~UserCancelled(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4875610;
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

void *sirinluexternal::UserCancelled::UserCancelled(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4875610;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4875610;
  return this;
}

void *sirinluexternal::UserCancelled::UserCancelled(void *this, const sirinluexternal::UserCancelled *a2)
{
  *this = &unk_1F4875610;
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

uint64_t sirinluexternal::UserCancelled::operator=(uint64_t a1, const sirinluexternal::UserCancelled *a2)
{
  if (a1 != a2)
  {
    sirinluexternal::UserCancelled::UserCancelled(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    sirinluexternal::UserCancelled::~UserCancelled(&v5);
  }

  return a1;
}

uint64_t sirinluexternal::swap(uint64_t this, sirinluexternal::UserCancelled *a2, sirinluexternal::UserCancelled *a3)
{
  v3 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v4;
  return this;
}

void *sirinluexternal::UserCancelled::UserCancelled(void *a1, uint64_t a2)
{
  a1[1] = 0;
  v4 = a1 + 1;
  *a1 = &unk_1F4875610;
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

uint64_t sirinluexternal::UserCancelled::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluexternal::UserCancelled::UserCancelled(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    sirinluexternal::UserCancelled::~UserCancelled(&v5);
  }

  return a1;
}

BOOL sirinluexternal::UserCancelled::operator==(uint64_t a1, uint64_t a2)
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

unint64_t sirinluexternal::UserCancelled::hash_value(sirinluexternal::UserCancelled *this)
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

uint64_t sirinluexternal::UserCancelled::makeTaskId(uint64_t this)
{
  if (!*(this + 16))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::UserCancelled::makeReference(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t SIRINLUEXTERNALUserParseReadFrom(uint64_t a1, void *a2)
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
            *(a1 + 72) |= 1u;
            v27 = 0;
            v19 = [a2 position] + 8;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 8, v20 <= objc_msgSend(a2, "length")))
            {
              v24 = [a2 data];
              [v24 getBytes:&v27 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v22 = v27;
            v23 = 8;
            goto LABEL_56;
          }

          if (v13 == 8)
          {
            v14 = objc_alloc_init(SIRINLUEXTERNALCorrectionOutcome);
            objc_storeStrong((a1 + 24), v14);
            v27 = 0;
            v28 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUEXTERNALCorrectionOutcomeReadFrom(v14, a2))
            {
LABEL_59:

              return 0;
            }

            goto LABEL_43;
          }
        }

        else
        {
          if (v13 == 5)
          {
            v14 = objc_alloc_init(SIRINLUEXTERNALRepetitionResult);
            objc_storeStrong((a1 + 56), v14);
            v27 = 0;
            v28 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUEXTERNALRepetitionResultReadFrom(v14, a2))
            {
              goto LABEL_59;
            }

            goto LABEL_43;
          }

          if (v13 == 6)
          {
            v14 = objc_alloc_init(SIRINLUEXTERNALParser);
            objc_storeStrong((a1 + 40), v14);
            v27 = 0;
            v28 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUEXTERNALParserReadFrom(v14, a2))
            {
              goto LABEL_59;
            }

            goto LABEL_43;
          }
        }
      }

      else if (v13 > 2)
      {
        if (v13 == 3)
        {
          *(a1 + 72) |= 2u;
          v27 = 0;
          v17 = [a2 position] + 8;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 8, v18 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v27 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v22 = v27;
          v23 = 16;
LABEL_56:
          *(a1 + v23) = v22;
          goto LABEL_57;
        }

        if (v13 == 4)
        {
          v15 = PBReaderReadString();
          v16 = *(a1 + 48);
          *(a1 + 48) = v15;

          goto LABEL_57;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(SIRINLUEXTERNALUUID);
          objc_storeStrong((a1 + 32), v14);
          v27 = 0;
          v28 = 0;
          if (!PBReaderPlaceMark() || !SIRINLUEXTERNALUUIDReadFrom(v14, a2))
          {
            goto LABEL_59;
          }

          goto LABEL_43;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(SIRINLUEXTERNALUserDialogAct);
          [a1 addUserDialogActs:v14];
          v27 = 0;
          v28 = 0;
          if (!PBReaderPlaceMark() || !SIRINLUEXTERNALUserDialogActReadFrom(&v14->super.super.isa, a2))
          {
            goto LABEL_59;
          }

LABEL_43:
          PBReaderRecallMark();

          goto LABEL_57;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_57:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRINLUEXTERNALUserRejectedReadFrom(uint64_t a1, void *a2)
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
        objc_storeStrong((a1 + 8), v13);
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
    objc_storeStrong((a1 + 16), v13);
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

uint64_t SIRINLUEXTERNALAsrTokenInformationReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v68) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v68 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v68 & 0x7F) << v5;
        if ((v68 & 0x80) == 0)
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
        break;
      }

      if (v13 <= 2)
      {
        if (v13 == 1)
        {
          v34 = PBReaderReadString();
          v35 = 48;
        }

        else
        {
          if (v13 != 2)
          {
LABEL_101:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_127;
          }

          v34 = PBReaderReadString();
          v35 = 40;
        }
      }

      else
      {
        if (v13 != 3)
        {
          if (v13 == 4)
          {
            v36 = 0;
            v37 = 0;
            v38 = 0;
            *(a1 + 64) |= 0x20u;
            while (1)
            {
              LOBYTE(v68) = 0;
              v39 = [a2 position] + 1;
              if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
              {
                v41 = [a2 data];
                [v41 getBytes:&v68 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v38 |= (v68 & 0x7F) << v36;
              if ((v68 & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              v11 = v37++ >= 9;
              if (v11)
              {
                LOBYTE(v27) = 0;
                goto LABEL_104;
              }
            }

            v27 = (v38 != 0) & ~[a2 hasError];
LABEL_104:
            v64 = 60;
          }

          else
          {
            if (v13 != 5)
            {
              goto LABEL_101;
            }

            v21 = 0;
            v22 = 0;
            v23 = 0;
            *(a1 + 64) |= 0x40u;
            while (1)
            {
              LOBYTE(v68) = 0;
              v24 = [a2 position] + 1;
              if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
              {
                v26 = [a2 data];
                [v26 getBytes:&v68 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v23 |= (v68 & 0x7F) << v21;
              if ((v68 & 0x80) == 0)
              {
                break;
              }

              v21 += 7;
              v11 = v22++ >= 9;
              if (v11)
              {
                LOBYTE(v27) = 0;
                goto LABEL_110;
              }
            }

            v27 = (v23 != 0) & ~[a2 hasError];
LABEL_110:
            v64 = 61;
          }

LABEL_121:
          *(a1 + v64) = v27;
          goto LABEL_127;
        }

        v34 = PBReaderReadString();
        v35 = 32;
      }

      v50 = *(a1 + v35);
      *(a1 + v35) = v34;

LABEL_127:
      v66 = [a2 position];
      if (v66 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 > 8)
    {
      switch(v13)
      {
        case 9:
          v57 = 0;
          v58 = 0;
          v59 = 0;
          *(a1 + 64) |= 4u;
          while (1)
          {
            LOBYTE(v68) = 0;
            v60 = [a2 position] + 1;
            if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
            {
              v62 = [a2 data];
              [v62 getBytes:&v68 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v59 |= (v68 & 0x7F) << v57;
            if ((v68 & 0x80) == 0)
            {
              break;
            }

            v57 += 7;
            v11 = v58++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_125;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v59;
          }

LABEL_125:
          v65 = 20;
          break;
        case 0xA:
          v44 = 0;
          v45 = 0;
          v46 = 0;
          *(a1 + 64) |= 0x10u;
          while (1)
          {
            LOBYTE(v68) = 0;
            v47 = [a2 position] + 1;
            if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
            {
              v49 = [a2 data];
              [v49 getBytes:&v68 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v46 |= (v68 & 0x7F) << v44;
            if ((v68 & 0x80) == 0)
            {
              break;
            }

            v44 += 7;
            v11 = v45++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_108;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v46;
          }

LABEL_108:
          v65 = 56;
          break;
        case 0xB:
          v28 = 0;
          v29 = 0;
          v30 = 0;
          *(a1 + 64) |= 8u;
          while (1)
          {
            LOBYTE(v68) = 0;
            v31 = [a2 position] + 1;
            if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
            {
              v33 = [a2 data];
              [v33 getBytes:&v68 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v30 |= (v68 & 0x7F) << v28;
            if ((v68 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v11 = v29++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_118;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v30;
          }

LABEL_118:
          v65 = 24;
          break;
        default:
          goto LABEL_101;
      }

LABEL_126:
      *(a1 + v65) = v20;
      goto LABEL_127;
    }

    if (v13 != 6)
    {
      if (v13 == 7)
      {
        *(a1 + 64) |= 1u;
        v68 = 0;
        v42 = [a2 position] + 8;
        if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 8, v43 <= objc_msgSend(a2, "length")))
        {
          v67 = [a2 data];
          [v67 getBytes:&v68 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v68;
        goto LABEL_127;
      }

      if (v13 != 8)
      {
        goto LABEL_101;
      }

      v14 = 0;
      v15 = 0;
      v16 = 0;
      *(a1 + 64) |= 2u;
      while (1)
      {
        LOBYTE(v68) = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v68 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v68 & 0x7F) << v14;
        if ((v68 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v11 = v15++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_114;
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

LABEL_114:
      v65 = 16;
      goto LABEL_126;
    }

    v51 = 0;
    v52 = 0;
    v53 = 0;
    *(a1 + 64) |= 0x80u;
    while (1)
    {
      LOBYTE(v68) = 0;
      v54 = [a2 position] + 1;
      if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
      {
        v56 = [a2 data];
        [v56 getBytes:&v68 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v53 |= (v68 & 0x7F) << v51;
      if ((v68 & 0x80) == 0)
      {
        break;
      }

      v51 += 7;
      v11 = v52++ >= 9;
      if (v11)
      {
        LOBYTE(v27) = 0;
        goto LABEL_120;
      }
    }

    v27 = (v53 != 0) & ~[a2 hasError];
LABEL_120:
    v64 = 62;
    goto LABEL_121;
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRINLUINTERNALTOKENIZERTokenizerResponseReadFrom(uint64_t a1, void *a2)
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
        v15 = PBReaderReadString();
        v14 = *(a1 + 16);
        *(a1 + 16) = v15;
        goto LABEL_27;
      }

      if (v13 == 1)
      {
        v14 = objc_alloc_init(SIRINLUINTERNALTokenChain);
        objc_storeStrong((a1 + 24), v14);
        v18 = 0;
        v19 = 0;
        if (!PBReaderPlaceMark() || !SIRINLUINTERNALTokenChainReadFrom(v14, a2))
        {
          goto LABEL_31;
        }

        goto LABEL_26;
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

    v14 = objc_alloc_init(SIRINLUEXTERNALUUID);
    objc_storeStrong((a1 + 8), v14);
    v18 = 0;
    v19 = 0;
    if (!PBReaderPlaceMark() || !SIRINLUEXTERNALUUIDReadFrom(v14, a2))
    {
LABEL_31:

      return 0;
    }

LABEL_26:
    PBReaderRecallMark();
LABEL_27:

    goto LABEL_29;
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRINLUEXTERNALUserAcceptedReadFrom(uint64_t a1, void *a2)
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
        objc_storeStrong((a1 + 8), v13);
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
    objc_storeStrong((a1 + 16), v13);
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

uint64_t sirinluinternalqueryrewrite::QRResponse::formatText(sirinluinternalqueryrewrite::QRResponse *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, a2, "qr_hypotheses");
  }

  if (*(this + 68))
  {
    v8 = *(this + 16);
    PB::TextFormatter::format(a2, "repetition_type");
  }

  v9 = *(this + 4);
  if (v9)
  {
    (*(*v9 + 32))(v9, a2, "request_id");
  }

  v10 = *(this + 5);
  v11 = *(this + 6);
  while (v10 != v11)
  {
    v12 = *v10++;
    (*(*v12 + 32))(v12, a2, "rewrite_hypotheses");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluinternalqueryrewrite::QRResponse::writeTo(uint64_t this, PB::Writer *a2)
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

  if (*(v3 + 68))
  {
    v8 = *(v3 + 64);
    this = PB::Writer::writeVarInt(a2);
  }

  v10 = *(v3 + 40);
  v9 = *(v3 + 48);
  while (v10 != v9)
  {
    v11 = *v10++;
    this = PB::Writer::writeSubmessage(a2, v11);
  }

  return this;
}

uint64_t sirinluinternalqueryrewrite::QRResponse::readFrom(sirinluinternalqueryrewrite::QRResponse *this, PB::Reader *a2)
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
        *(this + 16) = v28;
        goto LABEL_47;
      }

      if (v22 == 4)
      {
        PB::PtrVector<sirinluinternal::RewriteHypothesis>::emplace_back<>();
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

void sirinluinternalqueryrewrite::QRResponse::~QRResponse(sirinluinternalqueryrewrite::QRResponse *this)
{
  sirinluinternalqueryrewrite::QRResponse::~QRResponse(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4875660;
  v3 = (this + 40);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v3);
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

double sirinluinternalqueryrewrite::QRResponse::QRResponse(sirinluinternalqueryrewrite::QRResponse *this)
{
  *this = &unk_1F4875660;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  return result;
}

{
  *this = &unk_1F4875660;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  return result;
}

uint64_t sirinluinternalqueryrewrite::QRResponse::QRResponse(uint64_t this, const sirinluinternalqueryrewrite::QRResponse *a2)
{
  *this = &unk_1F4875660;
  *(this + 8) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 56) = 0u;
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

  if (*(a2 + 68))
  {
    v4 = *(a2 + 16);
    *(this + 68) |= 1u;
    *(this + 64) = v4;
  }

  v5 = *(a2 + 5);
  if (v5 != *(a2 + 6))
  {
    v6 = *v5;
    PB::PtrVector<sirinluinternal::RewriteHypothesis>::emplace_back<sirinluinternal::RewriteHypothesis const&>();
  }

  return this;
}

uint64_t sirinluinternalqueryrewrite::QRResponse::operator=(uint64_t a1, const sirinluinternalqueryrewrite::QRResponse *a2)
{
  if (a1 != a2)
  {
    sirinluinternalqueryrewrite::QRResponse::QRResponse(v9, a2);
    v3 = v11;
    v4 = *(a1 + 8);
    *(a1 + 8) = v10;
    v5 = *(a1 + 24);
    *(a1 + 24) = v3;
    v10 = v4;
    v11 = v5;
    *&v5 = *(a1 + 64);
    *(a1 + 64) = v14;
    v14 = v5;
    v6 = *(a1 + 40);
    *(a1 + 40) = v12;
    v12 = v6;
    v7 = *(a1 + 56);
    *(a1 + 56) = v13;
    v13 = v7;
    sirinluinternalqueryrewrite::QRResponse::~QRResponse(v9);
  }

  return a1;
}

uint64_t sirinluinternalqueryrewrite::swap(uint64_t this, sirinluinternalqueryrewrite::QRResponse *a2, sirinluinternalqueryrewrite::QRResponse *a3)
{
  v3 = *(this + 68);
  *(this + 68) = *(a2 + 17);
  *(a2 + 17) = v3;
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
  LODWORD(v7) = *(this + 64);
  *(this + 64) = *(a2 + 16);
  *(a2 + 16) = v7;
  v8 = *(this + 40);
  *(this + 40) = *(a2 + 5);
  *(a2 + 5) = v8;
  v9 = *(this + 48);
  *(this + 48) = *(a2 + 6);
  *(a2 + 6) = v9;
  v10 = *(this + 56);
  *(this + 56) = *(a2 + 7);
  *(a2 + 7) = v10;
  return this;
}

uint64_t sirinluinternalqueryrewrite::QRResponse::QRResponse(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4875660;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 68) = *(a2 + 68);
  *(a2 + 68) = 0;
  v5 = *(a2 + 32);
  *(a2 + 32) = 0;
  v6 = *(a1 + 32);
  *(a1 + 32) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
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
  *(a1 + 64) = *(a2 + 64);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__vdeallocate((a1 + 40));
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return a1;
}

uint64_t sirinluinternalqueryrewrite::QRResponse::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluinternalqueryrewrite::QRResponse::QRResponse(v9, a2);
    v3 = v11;
    v4 = *(a1 + 8);
    *(a1 + 8) = v10;
    v5 = *(a1 + 24);
    *(a1 + 24) = v3;
    v10 = v4;
    v11 = v5;
    *&v5 = *(a1 + 64);
    *(a1 + 64) = v14;
    v14 = v5;
    v6 = *(a1 + 40);
    *(a1 + 40) = v12;
    v12 = v6;
    v7 = *(a1 + 56);
    *(a1 + 56) = v13;
    v13 = v7;
    sirinluinternalqueryrewrite::QRResponse::~QRResponse(v9);
  }

  return a1;
}

BOOL sirinluinternalqueryrewrite::QRResponse::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a2 + 32);
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

  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *(a2 + 8);
  if (v6 - v7 != *(a2 + 16) - v8)
  {
    return 0;
  }

  while (v7 != v6)
  {
    if (!sirinluinternalqueryrewrite::QRHypothesis::operator==(*v7, *v8))
    {
      return 0;
    }

    ++v7;
    ++v8;
  }

  v9 = *(a2 + 68);
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

  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = *(a2 + 40);
  v13 = *(a2 + 48);

  return PB::PtrVector<sirinluinternal::RewriteHypothesis>::operator==(v10, v11, v12, v13);
}

BOOL PB::PtrVector<sirinluinternal::RewriteHypothesis>::operator==(char *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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
    result = sirinluinternal::RewriteHypothesis::operator==(v7, v9);
  }

  while (result && v5 != a2);
  return result;
}

uint64_t sirinluinternalqueryrewrite::QRResponse::hash_value(sirinluinternalqueryrewrite::QRResponse *this)
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
      v9 ^= sirinluinternalqueryrewrite::QRHypothesis::hash_value(v10);
    }

    while (v7 != v8);
  }

  if (*(this + 68))
  {
    v11 = *(this + 16);
  }

  else
  {
    v11 = 0;
  }

  v13 = *(this + 5);
  v12 = *(this + 6);
  if (v13 == v12)
  {
    v14 = 0;
  }

  else
  {
    v14 = 0;
    do
    {
      v15 = *v13++;
      v14 ^= sirinluinternal::RewriteHypothesis::hash_value(v15);
    }

    while (v13 != v12);
  }

  return v9 ^ v6 ^ v11 ^ v14;
}

uint64_t sirinluinternalqueryrewrite::QRResponse::makeRequestId(uint64_t this)
{
  if (!*(this + 32))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternal::OvertonKGSpanData::formatText(sirinluinternal::OvertonKGSpanData *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 40))
  {
    PB::TextFormatter::format(a2, "confidence", *(this + 1));
  }

  v5 = *(this + 2);
  for (i = *(this + 3); v5 != i; v5 += 24)
  {
    PB::TextFormatter::format();
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluinternal::OvertonKGSpanData::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = this;
  if (*(this + 40))
  {
    this = PB::Writer::write(a2, *(this + 8));
  }

  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  while (v3 != v4)
  {
    this = PB::Writer::write();
    v3 += 24;
  }

  return this;
}

uint64_t sirinluinternal::OvertonKGSpanData::readFrom(sirinluinternal::OvertonKGSpanData *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v7 = (this + 16);
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
          goto LABEL_25;
        }
      }

LABEL_19:
      if ((v11 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_44;
      }

      if ((v11 >> 3) == 2)
      {
        v24 = *(this + 3);
        v25 = *(this + 4);
        if (v24 >= v25)
        {
          v27 = 0xAAAAAAAAAAAAAAABLL * ((v24 - *v7) >> 3);
          v28 = v27 + 1;
          if (v27 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<std::unique_ptr<siricommon::StringValue>>::__throw_length_error[abi:ne200100]();
          }

          v29 = 0xAAAAAAAAAAAAAAABLL * ((v25 - *v7) >> 3);
          if (2 * v29 > v28)
          {
            v28 = 2 * v29;
          }

          if (v29 >= 0x555555555555555)
          {
            v30 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v30 = v28;
          }

          v39.__end_cap_.__value_ = v7;
          if (v30)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(v30);
          }

          v31 = 24 * v27;
          *v31 = 0;
          *(v31 + 8) = 0;
          *(v31 + 16) = 0;
          v26 = 24 * v27 + 24;
          v32 = *(this + 2);
          v33 = *(this + 3) - v32;
          v34 = 24 * v27 - v33;
          memcpy((v31 - v33), v32, v33);
          v35 = *(this + 2);
          *(this + 2) = v34;
          *(this + 3) = v26;
          v36 = *(this + 4);
          *(this + 4) = 0;
          v39.__end_ = v35;
          v39.__end_cap_.__value_ = v36;
          v39.__first_ = v35;
          v39.__begin_ = v35;
          std::__split_buffer<std::string>::~__split_buffer(&v39);
        }

        else
        {
          *v24 = 0;
          v24[1] = 0;
          v26 = (v24 + 3);
          v24[2] = 0;
        }

        *(this + 3) = v26;
        PB::Reader::read();
      }

      else if ((v11 >> 3) == 1)
      {
        *(this + 40) |= 1u;
        v23 = *(a2 + 1);
        if (v23 <= 0xFFFFFFFFFFFFFFF7 && v23 + 8 <= *(a2 + 2))
        {
          *(this + 1) = *(*a2 + v23);
          *(a2 + 1) += 8;
        }

        else
        {
          *(a2 + 24) = 1;
        }
      }

      else
      {
LABEL_25:
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
        goto LABEL_44;
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
        goto LABEL_25;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_44:
  v38 = v4 ^ 1;
  return v38 & 1;
}

void sirinluinternal::OvertonKGSpanData::~OvertonKGSpanData(sirinluinternal::OvertonKGSpanData *this)
{
  *this = &unk_1F48756B0;
  v2 = (this + 16);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  PB::Base::~Base(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F48756B0;
  v2 = (this + 16);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);

  PB::Base::~Base(this);
}

{
  *this = &unk_1F48756B0;
  v2 = (this + 16);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);

  PB::Base::~Base(this);
}

uint64_t sirinluinternal::OvertonKGSpanData::OvertonKGSpanData(uint64_t this)
{
  *this = &unk_1F48756B0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 16) = 0;
  *(this + 40) = 0;
  return this;
}

{
  *this = &unk_1F48756B0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 16) = 0;
  *(this + 40) = 0;
  return this;
}

sirinluinternal::OvertonKGSpanData *sirinluinternal::OvertonKGSpanData::OvertonKGSpanData(sirinluinternal::OvertonKGSpanData *this, const sirinluinternal::OvertonKGSpanData *a2)
{
  *this = &unk_1F48756B0;
  *(this + 2) = 0;
  v3 = (this + 16);
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  if (*(a2 + 40))
  {
    v4 = *(a2 + 1);
    *(this + 40) = 1;
    *(this + 1) = v4;
  }

  if (this != a2)
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(v3, *(a2 + 2), *(a2 + 3), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 3) - *(a2 + 2)) >> 3));
  }

  return this;
}

uint64_t sirinluinternal::OvertonKGSpanData::operator=(uint64_t a1, const sirinluinternal::OvertonKGSpanData *a2)
{
  if (a1 != a2)
  {
    sirinluinternal::OvertonKGSpanData::OvertonKGSpanData(&v8, a2);
    v3 = *(a1 + 40);
    *(a1 + 40) = v12;
    v12 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v9;
    v9 = v4;
    v5 = *(a1 + 16);
    *(a1 + 16) = v10;
    v10 = v5;
    v6 = *(a1 + 32);
    *(a1 + 32) = v11;
    v11 = v6;
    v8 = &unk_1F48756B0;
    v13 = &v10;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v13);
    PB::Base::~Base(&v8);
  }

  return a1;
}

double sirinluinternal::swap(sirinluinternal *this, sirinluinternal::OvertonKGSpanData *a2, sirinluinternal::OvertonKGSpanData *a3)
{
  v3 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v3;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  v5 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  v7 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v7;
  return result;
}

uint64_t sirinluinternal::OvertonKGSpanData::OvertonKGSpanData(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F48756B0;
  *(a1 + 16) = 0;
  v4 = (a1 + 16);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a1 + 8) = *(a2 + 8);
  std::vector<std::string>::__vdeallocate((a1 + 16));
  *v4 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  return a1;
}

{
  *a1 = &unk_1F48756B0;
  *(a1 + 16) = 0;
  v4 = (a1 + 16);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a1 + 8) = *(a2 + 8);
  std::vector<std::string>::__vdeallocate((a1 + 16));
  *v4 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  return a1;
}

uint64_t sirinluinternal::OvertonKGSpanData::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v11 = &unk_1F48756B0;
    memset(&v13, 0, sizeof(v13));
    v14 = *(a2 + 40);
    *(a2 + 40) = 0;
    v12 = *(a2 + 8);
    std::vector<std::string>::__vdeallocate(&v13);
    v4 = *(a2 + 16);
    v5 = *(a2 + 32);
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 16) = 0;
    v6 = *(a1 + 40);
    *(a1 + 40) = v14;
    v14 = v6;
    v7 = *(a1 + 8);
    *(a1 + 8) = v12;
    v12 = v7;
    v8 = *(a1 + 16);
    *(a1 + 16) = v4;
    *&v13.__begin_ = v8;
    v9 = *(a1 + 32);
    *(a1 + 32) = v5;
    v13.__end_cap_.__value_ = v9;
    v11 = &unk_1F48756B0;
    v15 = &v13;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v15);
    PB::Base::~Base(&v11);
  }

  return a1;
}

BOOL sirinluinternal::OvertonKGSpanData::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if ((*(a2 + 40) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 40))
  {
    return 0;
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a2 + 16);
  if (v4 - v3 != *(a2 + 24) - v5)
  {
    return 0;
  }

  if (v3 == v4)
  {
    return 1;
  }

  do
  {
    result = std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(v3, v5);
    if (!result)
    {
      break;
    }

    v3 += 24;
    v5 += 3;
  }

  while (v3 != v4);
  return result;
}

uint64_t sirinluinternal::OvertonKGSpanData::hash_value(sirinluinternal::OvertonKGSpanData *this)
{
  if (*(this + 40))
  {
    if (*(this + 1) == 0.0)
    {
      v1 = 0;
    }

    else
    {
      v1 = *(this + 1);
    }
  }

  else
  {
    v1 = 0;
  }

  v2 = *(this + 2);
  v3 = *(this + 3);
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    do
    {
      v4 ^= std::__string_hash<char>::operator()[abi:ne200100](v2);
      v2 += 24;
    }

    while (v2 != v3);
  }

  return v4 ^ v1;
}

uint64_t sirinluinternalpsc::PSCServiceRequest::formatText(sirinluinternalpsc::PSCServiceRequest *this, PB::TextFormatter *a2, const char *a3)
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

uint64_t sirinluinternalpsc::PSCServiceRequest::writeTo(uint64_t this, PB::Writer *a2)
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

uint64_t sirinluinternalpsc::PSCServiceRequest::readFrom(sirinluinternalpsc::PSCServiceRequest *this, PB::Reader *a2)
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

void sirinluinternalpsc::PSCServiceRequest::~PSCServiceRequest(sirinluinternalpsc::PSCServiceRequest *this)
{
  sirinluinternalpsc::PSCServiceRequest::~PSCServiceRequest(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4875700;
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

double sirinluinternalpsc::PSCServiceRequest::PSCServiceRequest(sirinluinternalpsc::PSCServiceRequest *this)
{
  *this = &unk_1F4875700;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  return result;
}

{
  *this = &unk_1F4875700;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  return result;
}

uint64_t sirinluinternalpsc::PSCServiceRequest::PSCServiceRequest(uint64_t this, const sirinluinternalpsc::PSCServiceRequest *a2)
{
  *this = &unk_1F4875700;
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

uint64_t sirinluinternalpsc::PSCServiceRequest::operator=(uint64_t a1, const sirinluinternalpsc::PSCServiceRequest *a2)
{
  if (a1 != a2)
  {
    sirinluinternalpsc::PSCServiceRequest::PSCServiceRequest(&v9, a2);
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
    sirinluinternalpsc::PSCServiceRequest::~PSCServiceRequest(&v9);
  }

  return a1;
}

void *sirinluinternalpsc::swap(void *this, sirinluinternalpsc::PSCServiceRequest *a2, sirinluinternalpsc::PSCServiceRequest *a3)
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

uint64_t sirinluinternalpsc::PSCServiceRequest::PSCServiceRequest(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4875700;
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

uint64_t sirinluinternalpsc::PSCServiceRequest::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluinternalpsc::PSCServiceRequest::PSCServiceRequest(&v9, a2);
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
    sirinluinternalpsc::PSCServiceRequest::~PSCServiceRequest(&v9);
  }

  return a1;
}

BOOL sirinluinternalpsc::PSCServiceRequest::operator==(uint64_t a1, uint64_t a2)
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

BOOL PB::PtrVector<sirinluinternal::MatchingSpan>::operator==(uint64_t **a1, uint64_t *a2, uint64_t a3)
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
    result = sirinluinternal::MatchingSpan::operator==(v6, v8);
  }

  while (result && v4 != v3);
  return result;
}

unint64_t sirinluinternalpsc::PSCServiceRequest::hash_value(sirinluinternalpsc::PSCServiceRequest *this)
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

uint64_t sirinluinternalpsc::PSCServiceRequest::makeRequestId(uint64_t this)
{
  if (!*(this + 56))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternalpsc::PSCServiceRequest::makeTokenisedUtterance(uint64_t this)
{
  if (!*(this + 64))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternalpsc::PSCServiceRequest::makeEmbeddings(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternalpsc::PSCServiceRequest::makeTurnInput(uint64_t this)
{
  if (!*(this + 72))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternalpsc::PSCServiceRequest::makeLegacyContext(uint64_t this)
{
  if (!*(this + 16))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternalpsc::PSCServiceRequest::makeNluRequestId(uint64_t this)
{
  if (!*(this + 48))
  {
    operator new();
  }

  return this;
}

uint64_t SIRINLUINTERNALRewriteTokenReadFrom(uint64_t a1, void *a2)
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
        v44 = 0;
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
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        if (v13 == 4)
        {
          *(a1 + 52) |= 1u;
          v43 = 0;
          v30 = [a2 position] + 8;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 8, v31 <= objc_msgSend(a2, "length")))
          {
            v41 = [a2 data];
            [v41 getBytes:&v43 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 8) = v43;
          goto LABEL_72;
        }

        if (v13 == 5)
        {
          v28 = PBReaderReadString();
          v29 = 24;
          goto LABEL_58;
        }

        if (v13 != 6)
        {
LABEL_46:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_72;
        }

        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 52) |= 8u;
        while (1)
        {
          v47 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v47 & 0x7F) << v21;
          if ((v47 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            LOBYTE(v27) = 0;
            goto LABEL_64;
          }
        }

        v27 = (v23 != 0) & ~[a2 hasError];
LABEL_64:
        *(a1 + 48) = v27;
      }

      else
      {
        switch(v13)
        {
          case 1:
            v28 = PBReaderReadString();
            v29 = 40;
LABEL_58:
            v39 = *(a1 + v29);
            *(a1 + v29) = v28;

            goto LABEL_72;
          case 2:
            v33 = 0;
            v34 = 0;
            v35 = 0;
            *(a1 + 52) |= 4u;
            while (1)
            {
              v46 = 0;
              v36 = [a2 position] + 1;
              if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
              {
                v38 = [a2 data];
                [v38 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v35 |= (v46 & 0x7F) << v33;
              if ((v46 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v11 = v34++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_68;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v35;
            }

LABEL_68:
            v40 = 32;
            break;
          case 3:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 52) |= 2u;
            while (1)
            {
              v45 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v45 & 0x7F) << v14;
              if ((v45 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_62;
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

LABEL_62:
            v40 = 16;
            break;
          default:
            goto LABEL_46;
        }

        *(a1 + v40) = v20;
      }

LABEL_72:
      v42 = [a2 position];
    }

    while (v42 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRINLUEXTERNALDelegatedUserDialogActReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            v16 = objc_alloc_init(SIRINLUEXTERNALSpan);
            [a1 addMatchingSpans:v16];
            v26 = 0;
            v27 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUEXTERNALSpanReadFrom(v16, a2))
            {
LABEL_54:

              return 0;
            }

            goto LABEL_47;
          case 5:
            v16 = objc_alloc_init(SIRINLUEXTERNALRewriteMessage);
            objc_storeStrong((a1 + 40), v16);
            v26 = 0;
            v27 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUEXTERNALRewriteMessageReadFrom(v16, a2))
            {
              goto LABEL_54;
            }

            goto LABEL_47;
          case 6:
            v16 = objc_alloc_init(SIRINLUEXTERNALReferenceContext);
            objc_storeStrong((a1 + 32), v16);
            v26 = 0;
            v27 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUEXTERNALReferenceContextReadFrom(v16, a2))
            {
              goto LABEL_54;
            }

            goto LABEL_47;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v17 = 0;
            v18 = 0;
            v19 = 0;
            *(a1 + 56) |= 1u;
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
                goto LABEL_51;
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

LABEL_51:
            *(a1 + 8) = v23;
            goto LABEL_52;
          case 2:
            v16 = objc_alloc_init(SIRICOMMONStringValue);
            objc_storeStrong((a1 + 48), v16);
            v26 = 0;
            v27 = 0;
            if (!PBReaderPlaceMark() || !SIRICOMMONStringValueReadFrom(v16, a2))
            {
              goto LABEL_54;
            }

LABEL_47:
            PBReaderRecallMark();

            goto LABEL_52;
          case 3:
            v14 = PBReaderReadString();
            v15 = *(a1 + 16);
            *(a1 + 16) = v14;

            goto LABEL_52;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_52:
      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sirinluexternal::SystemGaveOptions::formatText(sirinluexternal::SystemGaveOptions *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, a2, "choices");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternal::SystemGaveOptions::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  for (i = *(this + 16); v2 != i; this = PB::Writer::writeSubmessage(a2, v5))
  {
    v5 = *v2++;
  }

  return this;
}

uint64_t sirinluexternal::SystemGaveOptions::readFrom(sirinluexternal::SystemGaveOptions *this, PB::Reader *a2)
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
        PB::PtrVector<sirinluexternal::UserDialogAct>::emplace_back<>();
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

void sirinluexternal::SystemGaveOptions::~SystemGaveOptions(sirinluexternal::SystemGaveOptions *this)
{
  *this = &unk_1F4875750;
  v2 = (this + 8);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v2);
  PB::Base::~Base(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4875750;
  v2 = (this + 8);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v2);

  PB::Base::~Base(this);
}

{
  *this = &unk_1F4875750;
  v2 = (this + 8);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v2);

  PB::Base::~Base(this);
}

void *sirinluexternal::SystemGaveOptions::SystemGaveOptions(void *this)
{
  *this = &unk_1F4875750;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_1F4875750;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

void *sirinluexternal::SystemGaveOptions::SystemGaveOptions(void *this, const sirinluexternal::SystemGaveOptions *a2)
{
  this[1] = 0;
  *this = &unk_1F4875750;
  this[2] = 0;
  this[3] = 0;
  v2 = *(a2 + 1);
  if (v2 != *(a2 + 2))
  {
    v3 = *v2;
    PB::PtrVector<sirinluexternal::UserDialogAct>::emplace_back<sirinluexternal::UserDialogAct const&>();
  }

  return this;
}

uint64_t sirinluexternal::SystemGaveOptions::operator=(uint64_t a1, const sirinluexternal::SystemGaveOptions *a2)
{
  if (a1 != a2)
  {
    sirinluexternal::SystemGaveOptions::SystemGaveOptions(&v6, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v4;
    v6 = &unk_1F4875750;
    v9 = &v7;
    std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v9);
    PB::Base::~Base(&v6);
  }

  return a1;
}

void *sirinluexternal::swap(void *this, sirinluexternal::SystemGaveOptions *a2, sirinluexternal::SystemGaveOptions *a3)
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

uint64_t sirinluexternal::SystemGaveOptions::SystemGaveOptions(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4875750;
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
  *a1 = &unk_1F4875750;
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

uint64_t sirinluexternal::SystemGaveOptions::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v9 = &unk_1F4875750;
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
    v9 = &unk_1F4875750;
    std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v12);
    PB::Base::~Base(&v9);
  }

  return a1;
}

BOOL PB::PtrVector<sirinluexternal::UserDialogAct>::operator==(uint64_t a1, void **a2, uint64_t a3)
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
    result = sirinluexternal::UserDialogAct::operator==(v6, v8);
  }

  while (result && v4 != v3);
  return result;
}

uint64_t sirinluexternal::SystemGaveOptions::hash_value(sirinluexternal::SystemGaveOptions *this)
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
    v3 ^= sirinluexternal::UserDialogAct::hash_value(v4);
  }

  while (v1 != v2);
  return v3;
}

uint64_t sirinluinternalqueryrewrite::QRRequest::formatText(sirinluinternalqueryrewrite::QRRequest *this, PB::TextFormatter *a2, const char *a3)
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
    (*(*v8 + 32))(v8, a2, "interactions");
  }

  v9 = *(this + 5);
  if (v9)
  {
    (*(*v9 + 32))(v9, a2, "nlu_request_id");
  }

  v10 = *(this + 6);
  v11 = *(this + 7);
  while (v10 != v11)
  {
    v12 = *v10++;
    (*(*v12 + 32))(v12, a2, "original_interactions");
  }

  v13 = *(this + 9);
  if (v13)
  {
    (*(*v13 + 32))(v13, a2, "requestId");
  }

  if (*(this + 10))
  {
    PB::TextFormatter::format();
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluinternalqueryrewrite::QRRequest::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 72);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  v5 = v3[2];
  v6 = v3[3];
  while (v5 != v6)
  {
    v7 = *v5++;
    this = PB::Writer::writeSubmessage(a2, v7);
  }

  v8 = v3[6];
  v9 = v3[7];
  while (v8 != v9)
  {
    v10 = *v8++;
    this = PB::Writer::writeSubmessage(a2, v10);
  }

  if (v3[10])
  {
    this = PB::Writer::write();
  }

  v11 = v3[5];
  if (v11)
  {
    this = PB::Writer::writeSubmessage(a2, v11);
  }

  v12 = v3[1];
  if (v12)
  {

    return PB::Writer::writeSubmessage(a2, v12);
  }

  return this;
}

uint64_t sirinluinternalqueryrewrite::QRRequest::readFrom(sirinluinternalqueryrewrite::QRRequest *this, PB::Reader *a2)
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
            operator new();
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

void sirinluinternalqueryrewrite::QRRequest::~QRRequest(sirinluinternalqueryrewrite::QRRequest *this)
{
  sirinluinternalqueryrewrite::QRRequest::~QRRequest(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F48757A0;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v2);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (*(this + 6))
  {
    std::vector<std::unique_ptr<siricommon::StringValue>>::clear[abi:ne200100](this + 6);
    operator delete(*(this + 6));
  }

  v4 = *(this + 5);
  *(this + 5) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  if (*(this + 2))
  {
    std::vector<std::unique_ptr<siricommon::StringValue>>::clear[abi:ne200100](this + 2);
    operator delete(*(this + 2));
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  PB::Base::~Base(this);
}

double sirinluinternalqueryrewrite::QRRequest::QRRequest(sirinluinternalqueryrewrite::QRRequest *this)
{
  *this = &unk_1F48757A0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  return result;
}

{
  *this = &unk_1F48757A0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  return result;
}

uint64_t sirinluinternalqueryrewrite::QRRequest::QRRequest(uint64_t this, const sirinluinternalqueryrewrite::QRRequest *a2)
{
  *(this + 8) = 0u;
  *this = &unk_1F48757A0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  if (*(a2 + 9))
  {
    operator new();
  }

  v2 = *(a2 + 2);
  if (v2 != *(a2 + 3))
  {
    v3 = *v2;
    operator new();
  }

  v4 = *(a2 + 6);
  if (v4 != *(a2 + 7))
  {
    v5 = *v4;
    operator new();
  }

  if (*(a2 + 10))
  {
    operator new();
  }

  if (*(a2 + 5))
  {
    operator new();
  }

  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternalqueryrewrite::QRRequest::operator=(uint64_t a1, const sirinluinternalqueryrewrite::QRRequest *a2)
{
  if (a1 != a2)
  {
    sirinluinternalqueryrewrite::QRRequest::QRRequest(v10, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v12;
    v4 = v15;
    v5 = *(a1 + 56);
    *(a1 + 56) = v14;
    v6 = *(a1 + 72);
    *(a1 + 72) = v4;
    v14 = v5;
    v15 = v6;
    v7 = *(a1 + 40);
    *(a1 + 40) = v13;
    v12 = v3;
    v13 = v7;
    v8 = *(a1 + 8);
    *(a1 + 8) = v11;
    v11 = v8;
    sirinluinternalqueryrewrite::QRRequest::~QRRequest(v10);
  }

  return a1;
}

void *sirinluinternalqueryrewrite::swap(void *this, sirinluinternalqueryrewrite::QRRequest *a2, sirinluinternalqueryrewrite::QRRequest *a3)
{
  v3 = this[9];
  this[9] = *(a2 + 9);
  *(a2 + 9) = v3;
  v4 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v5;
  v6 = this[4];
  this[4] = *(a2 + 4);
  *(a2 + 4) = v6;
  v7 = this[6];
  this[6] = *(a2 + 6);
  *(a2 + 6) = v7;
  v8 = this[7];
  this[7] = *(a2 + 7);
  *(a2 + 7) = v8;
  v9 = this[8];
  this[8] = *(a2 + 8);
  *(a2 + 8) = v9;
  v10 = this[10];
  this[10] = *(a2 + 10);
  *(a2 + 10) = v10;
  v11 = this[5];
  this[5] = *(a2 + 5);
  *(a2 + 5) = v11;
  v12 = this[1];
  this[1] = *(a2 + 1);
  *(a2 + 1) = v12;
  return this;
}

uint64_t sirinluinternalqueryrewrite::QRRequest::QRRequest(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F48757A0;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  v5 = *(a2 + 72);
  *(a2 + 72) = 0;
  v6 = *(a1 + 72);
  *(a1 + 72) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
    v7 = (a2 + 16);
    if (*(a1 + 16))
    {
      std::vector<std::unique_ptr<siricommon::StringValue>>::clear[abi:ne200100]((a1 + 16));
      operator delete(*(a1 + 16));
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
    }
  }

  else
  {
    v7 = (a2 + 16);
  }

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *v7 = 0;
  v7[1] = 0;
  v7[2] = 0;
  if (*(a1 + 48))
  {
    std::vector<std::unique_ptr<siricommon::StringValue>>::clear[abi:ne200100]((a1 + 48));
    operator delete(*(a1 + 48));
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
  }

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  v8 = *(a2 + 80);
  *(a2 + 80) = 0;
  v9 = *(a1 + 80);
  *(a1 + 80) = v8;
  if (v9)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v9);
  }

  v10 = *(a2 + 40);
  *(a2 + 40) = 0;
  v11 = *(a1 + 40);
  *(a1 + 40) = v10;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = *(a2 + 8);
  *(a2 + 8) = 0;
  v13 = *v4;
  *v4 = v12;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  return a1;
}

uint64_t sirinluinternalqueryrewrite::QRRequest::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluinternalqueryrewrite::QRRequest::QRRequest(v10, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v12;
    v4 = v15;
    v5 = *(a1 + 56);
    *(a1 + 56) = v14;
    v6 = *(a1 + 72);
    *(a1 + 72) = v4;
    v14 = v5;
    v15 = v6;
    v7 = *(a1 + 40);
    *(a1 + 40) = v13;
    v12 = v3;
    v13 = v7;
    v8 = *(a1 + 8);
    *(a1 + 8) = v11;
    v11 = v8;
    sirinluinternalqueryrewrite::QRRequest::~QRRequest(v10);
  }

  return a1;
}

BOOL sirinluinternalqueryrewrite::QRRequest::operator==(void *a1, void *a2)
{
  v4 = a1[9];
  v5 = a2[9];
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

  v7 = a1[2];
  v6 = a1[3];
  v8 = a2[2];
  if (v6 - v7 != a2[3] - v8)
  {
    return 0;
  }

  while (v7 != v6)
  {
    result = sirinluinternalqueryrewrite::QRInteraction::operator==(*v7, *v8);
    if (!result)
    {
      return result;
    }

    ++v7;
    ++v8;
  }

  v11 = a1[6];
  v10 = a1[7];
  v12 = a2[6];
  if (v10 - v11 != a2[7] - v12)
  {
    return 0;
  }

  while (v11 != v10)
  {
    result = sirinluinternal::RewriteInteraction::operator==(*v11, *v12);
    if (!result)
    {
      return result;
    }

    ++v11;
    ++v12;
  }

  v13 = a1[10];
  v14 = a2[10];
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

    v19 = v15 >= 0 ? a1[10] : *v13;
    v20 = v18 >= 0 ? a2[10] : *v14;
    if (memcmp(v19, v20, v16))
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  v21 = a1[5];
  v22 = a2[5];
  if (!v21)
  {
    if (!v22)
    {
      goto LABEL_38;
    }

    return 0;
  }

  if (!v22 || !sirinluexternal::UUID::operator==(v21, v22))
  {
    return 0;
  }

LABEL_38:
  v23 = a1[1];
  v24 = a2[1];
  result = (v23 | v24) == 0;
  if (v23 && v24)
  {
    v25 = a1[1];

    return sirinluexternal::RequestID::operator==(v25, v24);
  }

  return result;
}

unint64_t sirinluinternalqueryrewrite::QRRequest::hash_value(sirinluinternalqueryrewrite::QRRequest *this)
{
  v2 = *(this + 9);
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
  v8 = *(this + 3);
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
      v9 ^= sirinluinternalqueryrewrite::QRInteraction::hash_value(v10);
    }

    while (v7 != v8);
  }

  v11 = *(this + 6);
  v12 = *(this + 7);
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
      v13 ^= sirinluinternal::RewriteInteraction::hash_value(v14);
    }

    while (v11 != v12);
  }

  v15 = *(this + 10);
  if (v15)
  {
    v16 = std::__string_hash<char>::operator()[abi:ne200100](v15);
  }

  else
  {
    v16 = 0;
  }

  v17 = *(this + 5);
  if (!v17)
  {
    v21 = 0;
    goto LABEL_34;
  }

  if ((*(v17 + 28) & 1) == 0)
  {
    v18 = 0;
    if ((*(v17 + 28) & 2) != 0)
    {
      goto LABEL_27;
    }

LABEL_31:
    v19 = 0;
    if ((*(v17 + 28) & 4) != 0)
    {
      goto LABEL_28;
    }

LABEL_32:
    v20 = 0;
    goto LABEL_33;
  }

  v18 = *(v17 + 8);
  if ((*(v17 + 28) & 2) == 0)
  {
    goto LABEL_31;
  }

LABEL_27:
  v19 = *(v17 + 16);
  if ((*(v17 + 28) & 4) == 0)
  {
    goto LABEL_32;
  }

LABEL_28:
  v20 = *(v17 + 24);
LABEL_33:
  v21 = v19 ^ v18 ^ v20;
LABEL_34:
  v22 = *(this + 1);
  if (v22)
  {
    v22 = sirinluexternal::RequestID::hash_value(v22);
  }

  return v9 ^ v6 ^ v16 ^ v21 ^ v22 ^ v13;
}

uint64_t sirinluinternalqueryrewrite::QRRequest::makeRequestId(uint64_t this)
{
  if (!*(this + 72))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternalqueryrewrite::QRRequest::makeNluRequestId(uint64_t this)
{
  if (!*(this + 40))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternalqueryrewrite::QRRequest::makeCdmRequestId(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternal::RewriteInteraction::formatText(sirinluinternal::RewriteInteraction *this, PB::TextFormatter *a2, const char *a3)
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
    (*(*v7 + 32))(v7, a2, "original_utterances");
  }

  v8 = *(this + 5);
  v9 = *(this + 6);
  while (v8 != v9)
  {
    v10 = *v8++;
    (*(*v10 + 32))(v10, a2, "siri_response");
  }

  v11 = *(this + 76);
  if (v11)
  {
    v12 = *(this + 8);
    PB::TextFormatter::format(a2, "start_timestamp");
    v11 = *(this + 76);
  }

  if ((v11 & 2) != 0)
  {
    v13 = *(this + 72);
    PB::TextFormatter::format(a2, "tap2edit");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluinternal::RewriteInteraction::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 16);
  v5 = *(this + 24);
  while (v4 != v5)
  {
    v6 = *v4++;
    this = PB::Writer::writeSubmessage(a2, v6);
  }

  v7 = *(v3 + 40);
  v8 = *(v3 + 48);
  while (v7 != v8)
  {
    v9 = *v7++;
    this = PB::Writer::writeSubmessage(a2, v9);
  }

  if (*(v3 + 8))
  {
    this = PB::Writer::write();
  }

  v10 = *(v3 + 76);
  if ((v10 & 2) != 0)
  {
    v11 = *(v3 + 72);
    this = PB::Writer::write(a2);
    v10 = *(v3 + 76);
  }

  if (v10)
  {
    v12 = *(v3 + 64);

    return PB::Writer::writeVarInt(a2);
  }

  return this;
}

uint64_t sirinluinternal::RewriteInteraction::readFrom(sirinluinternal::RewriteInteraction *this, PB::Reader *a2)
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
        PB::PtrVector<sirinluinternal::Token>::emplace_back<>();
      }
    }

    else
    {
      switch(v22)
      {
        case 3:
          operator new();
        case 4:
          *(this + 76) |= 2u;
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

          *(this + 72) = v35;
          goto LABEL_52;
        case 5:
          *(this + 76) |= 1u;
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
                v28 = 0;
                *(a2 + 24) = 1;
                goto LABEL_51;
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
LABEL_47:
                v28 = 0;
                goto LABEL_51;
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
                goto LABEL_47;
              }
            }
          }

LABEL_51:
          *(this + 8) = v28;
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

void sirinluinternal::RewriteInteraction::~RewriteInteraction(sirinluinternal::RewriteInteraction *this)
{
  sirinluinternal::RewriteInteraction::~RewriteInteraction(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F48757F0;
  v3 = (this + 40);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(this + 2))
  {
    std::vector<std::unique_ptr<siricommon::StringValue>>::clear[abi:ne200100](this + 2);
    operator delete(*(this + 2));
  }

  v2 = *(this + 1);
  *(this + 1) = 0;
  if (v2)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v2);
  }

  PB::Base::~Base(this);
}

double sirinluinternal::RewriteInteraction::RewriteInteraction(sirinluinternal::RewriteInteraction *this)
{
  *this = &unk_1F48757F0;
  *(this + 19) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  return result;
}

{
  *this = &unk_1F48757F0;
  *(this + 19) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  return result;
}

uint64_t sirinluinternal::RewriteInteraction::RewriteInteraction(uint64_t this, const sirinluinternal::RewriteInteraction *a2)
{
  *this = &unk_1F48757F0;
  *(this + 8) = 0u;
  *(this + 40) = 0u;
  *(this + 76) = 0;
  *(this + 24) = 0u;
  *(this + 56) = 0;
  v2 = *(a2 + 2);
  if (v2 != *(a2 + 3))
  {
    v3 = *v2;
    operator new();
  }

  v4 = *(a2 + 5);
  if (v4 != *(a2 + 6))
  {
    v5 = *v4;
    PB::PtrVector<sirinluinternal::Token>::emplace_back<sirinluinternal::Token const&>();
  }

  if (*(a2 + 1))
  {
    operator new();
  }

  v6 = *(a2 + 76);
  if ((v6 & 2) != 0)
  {
    v7 = *(a2 + 72);
    *(this + 76) |= 2u;
    *(this + 72) = v7;
    v6 = *(a2 + 76);
  }

  if (v6)
  {
    v8 = *(a2 + 8);
    *(this + 76) |= 1u;
    *(this + 64) = v8;
  }

  return this;
}

uint64_t sirinluinternal::RewriteInteraction::operator=(uint64_t a1, const sirinluinternal::RewriteInteraction *a2)
{
  if (a1 != a2)
  {
    sirinluinternal::RewriteInteraction::RewriteInteraction(&v11, a2);
    v3 = *(a1 + 76);
    *(a1 + 76) = v18;
    v18 = v3;
    LOBYTE(v3) = *(a1 + 72);
    *(a1 + 72) = v17;
    v17 = v3;
    v4 = *(a1 + 56);
    v5 = *(a1 + 64);
    v6 = v16;
    *(a1 + 56) = v15;
    *(a1 + 64) = v6;
    v7 = *(a1 + 24);
    *(a1 + 24) = v13;
    v13 = v7;
    v8 = *(a1 + 40);
    *(a1 + 40) = v14;
    v14 = v8;
    v9 = *(a1 + 8);
    *(a1 + 8) = v12;
    v12 = v9;
    v15 = v4;
    v16 = v5;
    sirinluinternal::RewriteInteraction::~RewriteInteraction(&v11);
  }

  return a1;
}

uint64_t sirinluinternal::swap(uint64_t this, sirinluinternal::RewriteInteraction *a2, sirinluinternal::RewriteInteraction *a3)
{
  v3 = *(this + 76);
  *(this + 76) = *(a2 + 19);
  *(a2 + 19) = v3;
  v4 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = *(this + 24);
  *(this + 24) = *(a2 + 3);
  *(a2 + 3) = v5;
  v6 = *(this + 32);
  *(this + 32) = *(a2 + 4);
  *(a2 + 4) = v6;
  v7 = *(this + 40);
  *(this + 40) = *(a2 + 5);
  *(a2 + 5) = v7;
  v8 = *(this + 48);
  *(this + 48) = *(a2 + 6);
  *(a2 + 6) = v8;
  v9 = *(this + 56);
  v10 = *(this + 64);
  v11 = *(a2 + 8);
  *(this + 56) = *(a2 + 7);
  *(this + 64) = v11;
  *(a2 + 7) = v9;
  v12 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  v13 = *(this + 72);
  *(this + 72) = *(a2 + 72);
  *(a2 + 1) = v12;
  *(a2 + 72) = v13;
  *(a2 + 8) = v10;
  return this;
}

uint64_t sirinluinternal::RewriteInteraction::RewriteInteraction(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F48757F0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0u;
  v4 = (a1 + 40);
  *(a1 + 76) = *(a2 + 76);
  *(a2 + 76) = 0;
  v5 = a1 + 16;
  if (*(a1 + 16))
  {
    std::vector<std::unique_ptr<siricommon::StringValue>>::clear[abi:ne200100]((a1 + 16));
    operator delete(*v5);
    *v5 = 0;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
  }

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__vdeallocate(v4);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  v6 = *(a2 + 8);
  *(a2 + 8) = 0;
  v7 = *(a1 + 8);
  *(a1 + 8) = v6;
  if (v7)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v7);
  }

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t sirinluinternal::RewriteInteraction::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluinternal::RewriteInteraction::RewriteInteraction(&v11, a2);
    v3 = *(a1 + 76);
    *(a1 + 76) = v18;
    v18 = v3;
    LOBYTE(v3) = *(a1 + 72);
    *(a1 + 72) = v17;
    v17 = v3;
    v4 = *(a1 + 56);
    v5 = *(a1 + 64);
    v6 = v16;
    *(a1 + 56) = v15;
    *(a1 + 64) = v6;
    v7 = *(a1 + 24);
    *(a1 + 24) = v13;
    v13 = v7;
    v8 = *(a1 + 40);
    *(a1 + 40) = v14;
    v14 = v8;
    v9 = *(a1 + 8);
    *(a1 + 8) = v12;
    v12 = v9;
    v15 = v4;
    v16 = v5;
    sirinluinternal::RewriteInteraction::~RewriteInteraction(&v11);
  }

  return a1;
}

BOOL sirinluinternal::RewriteInteraction::operator==(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v4 = *(a2 + 16);
  if (v2 - v3 != *(a2 + 24) - v4)
  {
    return 0;
  }

  while (v3 != v2)
  {
    result = sirinluinternal::RewriteUtterance::operator==(*v3, *v4);
    if (!result)
    {
      return result;
    }

    ++v3;
    ++v4;
  }

  result = PB::PtrVector<sirinluinternal::Token>::operator==(*(a1 + 40), *(a1 + 48), *(a2 + 40), *(a2 + 48));
  if (!result)
  {
    return result;
  }

  v8 = *(a1 + 8);
  v9 = *(a2 + 8);
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

    v14 = v10 >= 0 ? *(a1 + 8) : *v8;
    v15 = v13 >= 0 ? *(a2 + 8) : *v9;
    if (memcmp(v14, v15, v11))
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if ((*(a1 + 76) & 2) == 0)
  {
    if ((*(a2 + 76) & 2) == 0)
    {
      goto LABEL_30;
    }

    return 0;
  }

  if ((*(a2 + 76) & 2) == 0 || *(a1 + 72) != *(a2 + 72))
  {
    return 0;
  }

LABEL_30:
  result = (*(a2 + 76) & 1) == 0;
  if (*(a1 + 76))
  {
    return (*(a2 + 76) & 1) != 0 && *(a1 + 64) == *(a2 + 64);
  }

  return result;
}

BOOL PB::PtrVector<sirinluinternal::Token>::operator==(char *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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
    result = sirinluinternal::Token::operator==(v7, v9);
  }

  while (result && v5 != a2);
  return result;
}

unint64_t sirinluinternal::RewriteInteraction::hash_value(sirinluinternal::RewriteInteraction *this)
{
  v2 = *(this + 2);
  v3 = *(this + 3);
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
      v4 ^= sirinluinternal::RewriteUtterance::hash_value(v5);
    }

    while (v2 != v3);
  }

  v6 = *(this + 5);
  v7 = *(this + 6);
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
      v8 ^= sirinluinternal::Token::hash_value(v9);
    }

    while (v6 != v7);
  }

  v10 = *(this + 1);
  if (v10)
  {
    v10 = std::__string_hash<char>::operator()[abi:ne200100](v10);
  }

  if ((*(this + 76) & 2) != 0)
  {
    v11 = *(this + 72);
    if (*(this + 76))
    {
      goto LABEL_15;
    }

LABEL_17:
    v12 = 0;
    return v8 ^ v4 ^ v10 ^ v11 ^ v12;
  }

  v11 = 0;
  if ((*(this + 76) & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_15:
  v12 = *(this + 8);
  return v8 ^ v4 ^ v10 ^ v11 ^ v12;
}

uint64_t sirinluinternal::OverrideCollection::formatText(sirinluinternal::OverrideCollection *this, PB::TextFormatter *a2, const char *a3)
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
    (*(*v7 + 32))(v7, a2, "component_overrides");
  }

  if (*(this + 80))
  {
    v8 = *(this + 5);
    PB::TextFormatter::format(a2, "creation_timestamp_ms_since_unix_epoch");
  }

  v9 = *(this + 6);
  v10 = *(this + 7);
  while (v9 != v10)
  {
    v11 = *v9++;
    (*(*v11 + 32))(v11, a2, "parse_overrides");
  }

  if (*(this + 9))
  {
    PB::TextFormatter::format();
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluinternal::OverrideCollection::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if (*(this + 80))
  {
    v4 = *(this + 40);
    this = PB::Writer::writeVarInt(a2);
  }

  if (v3[1])
  {
    this = PB::Writer::write();
  }

  if (v3[9])
  {
    this = PB::Writer::write();
  }

  v5 = v3[6];
  v6 = v3[7];
  while (v5 != v6)
  {
    v7 = *v5++;
    this = PB::Writer::writeSubmessage(a2, v7);
  }

  v9 = v3[2];
  v8 = v3[3];
  while (v9 != v8)
  {
    v10 = *v9++;
    this = PB::Writer::writeSubmessage(a2, v10);
  }

  return this;
}

uint64_t sirinluinternal::OverrideCollection::readFrom(sirinluinternal::OverrideCollection *this, PB::Reader *a2)
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
        *(this + 80) |= 1u;
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
              goto LABEL_48;
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
LABEL_44:
              v28 = 0;
              goto LABEL_48;
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
              goto LABEL_44;
            }
          }
        }

LABEL_48:
        *(this + 5) = v28;
        goto LABEL_49;
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
          operator new();
        case 5:
          operator new();
      }
    }

LABEL_17:
    if ((PB::Reader::skip(a2) & 1) == 0)
    {
      v39 = 0;
      return v39 & 1;
    }

LABEL_49:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v39 = v4 ^ 1;
  return v39 & 1;
}

void sirinluinternal::OverrideCollection::~OverrideCollection(sirinluinternal::OverrideCollection *this)
{
  sirinluinternal::OverrideCollection::~OverrideCollection(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4875840;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v2);
  }

  if (*(this + 6))
  {
    std::vector<std::unique_ptr<siricommon::StringValue>>::clear[abi:ne200100](this + 6);
    operator delete(*(this + 6));
  }

  if (*(this + 2))
  {
    std::vector<std::unique_ptr<siricommon::StringValue>>::clear[abi:ne200100](this + 2);
    operator delete(*(this + 2));
  }

  v3 = *(this + 1);
  *(this + 1) = 0;
  if (v3)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v3);
  }

  PB::Base::~Base(this);
}

double sirinluinternal::OverrideCollection::OverrideCollection(sirinluinternal::OverrideCollection *this)
{
  *this = &unk_1F4875840;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 20) = 0;
  return result;
}

{
  *this = &unk_1F4875840;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 20) = 0;
  return result;
}

uint64_t sirinluinternal::OverrideCollection::OverrideCollection(uint64_t this, const sirinluinternal::OverrideCollection *a2)
{
  *this = &unk_1F4875840;
  *(this + 8) = 0u;
  *(this + 48) = 0u;
  *(this + 24) = 0u;
  *(this + 64) = 0u;
  *(this + 80) = 0;
  if (*(a2 + 80))
  {
    v2 = *(a2 + 5);
    *(this + 80) = 1;
    *(this + 40) = v2;
  }

  if (*(a2 + 1))
  {
    operator new();
  }

  if (*(a2 + 9))
  {
    operator new();
  }

  v3 = *(a2 + 6);
  if (v3 != *(a2 + 7))
  {
    v4 = *v3;
    operator new();
  }

  v5 = *(a2 + 2);
  if (v5 != *(a2 + 3))
  {
    v6 = *v5;
    operator new();
  }

  return this;
}

uint64_t sirinluinternal::OverrideCollection::operator=(uint64_t a1, const sirinluinternal::OverrideCollection *a2)
{
  if (a1 != a2)
  {
    sirinluinternal::OverrideCollection::OverrideCollection(v12, a2);
    v3 = v17;
    v4 = *(a1 + 48);
    v5 = *(a1 + 64);
    *(a1 + 48) = v16;
    *(a1 + 64) = v3;
    v6 = *(a1 + 80);
    *(a1 + 80) = v18;
    v18 = v6;
    v7 = *(a1 + 40);
    *(a1 + 40) = v15;
    v15 = v7;
    v16 = v4;
    v17 = v5;
    v8 = v14;
    v9 = *(a1 + 8);
    *(a1 + 8) = v13;
    v10 = *(a1 + 24);
    *(a1 + 24) = v8;
    v13 = v9;
    v14 = v10;
    sirinluinternal::OverrideCollection::~OverrideCollection(v12);
  }

  return a1;
}

uint64_t sirinluinternal::swap(uint64_t this, sirinluinternal::OverrideCollection *a2, sirinluinternal::OverrideCollection *a3)
{
  v3 = *(this + 80);
  *(this + 80) = *(a2 + 20);
  *(a2 + 20) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v4;
  v5 = *(this + 72);
  *(this + 72) = *(a2 + 9);
  *(a2 + 9) = v5;
  v6 = *(this + 48);
  *(this + 48) = *(a2 + 6);
  *(a2 + 6) = v6;
  v7 = *(this + 56);
  *(this + 56) = *(a2 + 7);
  *(a2 + 7) = v7;
  v8 = *(this + 64);
  *(this + 64) = *(a2 + 8);
  *(a2 + 8) = v8;
  v9 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v9;
  v10 = *(this + 24);
  *(this + 24) = *(a2 + 3);
  *(a2 + 3) = v10;
  v12 = *(this + 32);
  v11 = *(this + 40);
  v13 = *(a2 + 5);
  *(this + 32) = *(a2 + 4);
  *(this + 40) = v13;
  *(a2 + 4) = v12;
  *(a2 + 5) = v11;
  return this;
}

uint64_t sirinluinternal::OverrideCollection::OverrideCollection(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4875840;
  *(a1 + 48) = 0u;
  v4 = (a1 + 48);
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = *(a2 + 80);
  *(a2 + 80) = 0;
  *(a1 + 40) = *(a2 + 40);
  v5 = *(a2 + 8);
  *(a2 + 8) = 0;
  v6 = *(a1 + 8);
  *(a1 + 8) = v5;
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
    std::default_delete<std::string>::operator()[abi:ne200100](v8);
  }

  if (*(a1 + 48))
  {
    std::vector<std::unique_ptr<siricommon::StringValue>>::clear[abi:ne200100](v4);
    operator delete(*v4);
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
  }

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  if (*(a1 + 16))
  {
    std::vector<std::unique_ptr<siricommon::StringValue>>::clear[abi:ne200100]((a1 + 16));
    operator delete(*(a1 + 16));
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  return a1;
}

uint64_t sirinluinternal::OverrideCollection::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluinternal::OverrideCollection::OverrideCollection(v12, a2);
    v3 = v17;
    v4 = *(a1 + 48);
    v5 = *(a1 + 64);
    *(a1 + 48) = v16;
    *(a1 + 64) = v3;
    v6 = *(a1 + 80);
    *(a1 + 80) = v18;
    v18 = v6;
    v7 = *(a1 + 40);
    *(a1 + 40) = v15;
    v15 = v7;
    v16 = v4;
    v17 = v5;
    v8 = v14;
    v9 = *(a1 + 8);
    *(a1 + 8) = v13;
    v10 = *(a1 + 24);
    *(a1 + 24) = v8;
    v13 = v9;
    v14 = v10;
    sirinluinternal::OverrideCollection::~OverrideCollection(v12);
  }

  return a1;
}

uint64_t sirinluinternal::OverrideCollection::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 80);
  if (*(a1 + 80))
  {
    if ((*(a2 + 80) & 1) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if (*(a2 + 80))
  {
    return 0;
  }

  v5 = *(a1 + 8);
  v6 = *(a2 + 8);
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = *(v5 + 23);
    if (v7 >= 0)
    {
      v8 = *(v5 + 23);
    }

    else
    {
      v8 = *(v5 + 8);
    }

    v9 = *(v6 + 23);
    v10 = v9;
    if ((v9 & 0x80u) != 0)
    {
      v9 = *(v6 + 8);
    }

    if (v8 != v9)
    {
      return 0;
    }

    v11 = v7 >= 0 ? *(a1 + 8) : *v5;
    v12 = v10 >= 0 ? *(a2 + 8) : *v6;
    if (memcmp(v11, v12, v8))
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v14 = *(a1 + 72);
  v15 = *(a2 + 72);
  if (!v14)
  {
    if (!v15)
    {
      goto LABEL_41;
    }

    return 0;
  }

  if (!v15)
  {
    return 0;
  }

  v16 = *(v14 + 23);
  if (v16 >= 0)
  {
    v17 = *(v14 + 23);
  }

  else
  {
    v17 = *(v14 + 8);
  }

  v18 = *(v15 + 23);
  v19 = v18;
  if ((v18 & 0x80u) != 0)
  {
    v18 = *(v15 + 8);
  }

  if (v17 != v18)
  {
    return 0;
  }

  v20 = v16 >= 0 ? *(a1 + 72) : *v14;
  v21 = v19 >= 0 ? *(a2 + 72) : *v15;
  if (memcmp(v20, v21, v17))
  {
    return 0;
  }

LABEL_41:
  if (!PB::PtrVector<sirinluinternal::ParseOverride>::operator==((a1 + 48), *(a2 + 48), *(a2 + 56)))
  {
    return 0;
  }

  v22 = *(a2 + 16);
  v23 = *(a2 + 24);

  return PB::PtrVector<sirinluinternal::ComponentOverride>::operator==((a1 + 16), v22, v23);
}

uint64_t PB::PtrVector<sirinluinternal::ParseOverride>::operator==(uint64_t **a1, uint64_t *a2, uint64_t a3)
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
    result = sirinluinternal::ParseOverride::operator==(*v4, *v5);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 != a1[1]);
  return result;
}

uint64_t PB::PtrVector<sirinluinternal::ComponentOverride>::operator==(uint64_t **a1, uint64_t *a2, uint64_t a3)
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
    result = sirinluinternal::ComponentOverride::operator==(*v4, *v5);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 != a1[1]);
  return result;
}

unint64_t sirinluinternal::OverrideCollection::hash_value(sirinluinternal::OverrideCollection *this)
{
  if (*(this + 80))
  {
    v2 = *(this + 5);
  }

  else
  {
    v2 = 0;
  }

  v3 = *(this + 1);
  if (v3)
  {
    v4 = std::__string_hash<char>::operator()[abi:ne200100](v3);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(this + 9);
  if (v5)
  {
    v6 = std::__string_hash<char>::operator()[abi:ne200100](v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(this + 6);
  v8 = *(this + 7);
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
      v9 ^= sirinluinternal::ParseOverride::hash_value(v10);
    }

    while (v7 != v8);
  }

  v12 = *(this + 2);
  v11 = *(this + 3);
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
      v13 ^= sirinluinternal::ComponentOverride::hash_value(v14);
    }

    while (v12 != v11);
  }

  return v4 ^ v2 ^ v6 ^ v9 ^ v13;
}

uint64_t SIRINLUEXTERNALNLU_ROUTERNLRouterServiceRequestReadFrom(id *a1, void *a2)
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
      if ((v12 >> 3) <= 3)
      {
        switch(v13)
        {
          case 1:
            v14 = PBReaderReadString();
            v15 = 2;
            goto LABEL_37;
          case 2:
            v16 = objc_alloc_init(SIRINLUEXTERNALNLU_ROUTERNLRouterTurnContext);
            objc_storeStrong(a1 + 7, v16);
            v19 = 0;
            v20 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUEXTERNALNLU_ROUTERNLRouterTurnContextReadFrom(v16, a2))
            {
LABEL_47:

              return 0;
            }

LABEL_43:
            PBReaderRecallMark();
LABEL_44:

            goto LABEL_45;
          case 3:
            v16 = objc_alloc_init(SIRINLUEXTERNALNLU_ROUTERRequestSummary);
            [a1 addConversationHistory:v16];
            v19 = 0;
            v20 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUEXTERNALNLU_ROUTERRequestSummaryReadFrom(v16, a2))
            {
              goto LABEL_47;
            }

            goto LABEL_43;
        }
      }

      else if (v13 > 5)
      {
        if (v13 == 6)
        {
          v16 = objc_alloc_init(SIRINLUEXTERNALNLU_ROUTERNLRouterTurnProbingResult);
          objc_storeStrong(a1 + 3, v16);
          v19 = 0;
          v20 = 0;
          if (!PBReaderPlaceMark() || !SIRINLUEXTERNALNLU_ROUTERNLRouterTurnProbingResultReadFrom(v16, a2))
          {
            goto LABEL_47;
          }

          goto LABEL_43;
        }

        if (v13 == 7)
        {
          v16 = objc_alloc_init(SIRINLUEXTERNALNLU_ROUTERQueryDecorationOutput);
          objc_storeStrong(a1 + 4, v16);
          v19 = 0;
          v20 = 0;
          if (!PBReaderPlaceMark() || !SIRINLUEXTERNALNLU_ROUTERQueryDecorationOutputReadFrom(v16, a2))
          {
            goto LABEL_47;
          }

          goto LABEL_43;
        }
      }

      else
      {
        if (v13 == 4)
        {
          v14 = PBReaderReadString();
          v15 = 5;
          goto LABEL_37;
        }

        if (v13 == 5)
        {
          v14 = PBReaderReadString();
          v15 = 6;
LABEL_37:
          v16 = a1[v15];
          a1[v15] = v14;
          goto LABEL_44;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_45:
      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sirinluinternalnlv4_parser::Tokenisation::formatText(sirinluinternalnlv4_parser::Tokenisation *this, PB::TextFormatter *a2, const char *a3)
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
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "token_chain");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluinternalnlv4_parser::Tokenisation::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if (*(this + 16))
  {
    this = PB::Writer::write();
  }

  if (*(v3 + 8))
  {
    this = PB::Writer::write();
  }

  v4 = *(v3 + 24);
  if (v4)
  {

    return PB::Writer::writeSubmessage(a2, v4);
  }

  return this;
}

void *sirinluinternalnlv4_parser::Tokenisation::Tokenisation(void *this)
{
  *this = &unk_1F4875890;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_1F4875890;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}