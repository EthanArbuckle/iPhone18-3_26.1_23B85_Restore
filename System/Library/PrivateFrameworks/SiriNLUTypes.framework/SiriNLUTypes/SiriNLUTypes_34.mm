BOOL PB::PtrVector<sirinluexternal::TurnInput>::operator==(uint64_t **a1, uint64_t *a2, uint64_t a3)
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
    result = sirinluexternal::TurnInput::operator==(v6, v8);
  }

  while (result && v4 != v3);
  return result;
}

unint64_t sirinluexternalcdm::NluRequest::hash_value(sirinluexternalcdm::NluRequest *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    v3 = sirinluexternal::RequestID::hash_value(v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 1);
  if (v4)
  {
    v5 = sirinluexternal::TurnInput::hash_value(v4);
  }

  else
  {
    v5 = 0;
  }

  v7 = *(this + 2);
  v6 = *(this + 3);
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
      v8 ^= sirinluexternal::TurnInput::hash_value(v9);
    }

    while (v7 != v6);
  }

  return v5 ^ v3 ^ v8;
}

uint64_t sirinluexternalcdm::NluRequest::makeRequestId(uint64_t this)
{
  if (!*(this + 40))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternalcdm::NluRequest::makeCurrentTurnInput(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

void sub_1C8AE1840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x1CCA7EC50](v7, 0x1030C40E9F947FBLL);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_1C8AE1DA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(exception_object);
}

BOOL SSUCategoryGroup::Verify(SSUCategoryGroup *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this->var0);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
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
      if (result)
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = *this->var0;
          if (*this[-v8].var0 < 7u)
          {
            goto LABEL_18;
          }

          if (*this[-v8 + 6].var0)
          {
            result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this[*this[-v8 + 6].var0 + *this[*this[-v8 + 6].var0].var0].var0, 4uLL, 0);
            if (!result)
            {
              return result;
            }

            v8 = *this->var0;
            if (*this[-v8].var0 < 7u)
            {
              goto LABEL_18;
            }
          }

          v9 = *this[-v8 + 6].var0;
          if (v9 && (v10 = &this[v9 + *this[v9].var0], *v10->var0))
          {
            v11 = 0;
            v12 = v10 + 4;
            while (SSUIntent::Verify(&v12[*v12->var0], a2))
            {
              ++v11;
              v12 += 4;
              if (v11 >= *v10->var0)
              {
                goto LABEL_18;
              }
            }

            return 0;
          }

          else
          {
LABEL_18:
            result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 8u);
            if (!result)
            {
              return result;
            }

            v13 = *this->var0;
            if (*this[-v13].var0 < 9u)
            {
              goto LABEL_25;
            }

            if (*this[-v13 + 8].var0)
            {
              result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this[*this[-v13 + 8].var0 + *this[*this[-v13 + 8].var0].var0].var0, 4uLL, 0);
              if (!result)
              {
                return result;
              }

              v13 = *this->var0;
              if (*this[-v13].var0 < 9u)
              {
                goto LABEL_25;
              }
            }

            v14 = *this[-v13 + 8].var0;
            if (!v14)
            {
LABEL_25:
              v15 = 0;
            }

            else
            {
              v15 = &this[v14 + *this[v14].var0];
            }

            result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<SSUExample>(a2, v15);
            if (result)
            {
              --*(a2 + 4);
              return 1;
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_1C8AE2C18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x1CCA7EC50](v7, 0x1030C40E9F947FBLL);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_1C8AE2FF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (v10)
  {
    operator delete(v10);
  }

  _Unwind_Resume(a1);
}

BOOL SSUCategory::Verify(SSUCategory *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this->var0);
  if (!result)
  {
    return result;
  }

  v5 = *this->var0;
  v6 = &this[-v5];
  v7 = *this[-v5].var0;
  if (v7 >= 5)
  {
    if (*v6[4].var0)
    {
      result = 0;
      v8 = *(a2 + 1);
      if (v8 < 2 || v8 - 1 < this[*v6[4].var0 - *a2].var0)
      {
        return result;
      }
    }
  }

  result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
  if (!result)
  {
    return result;
  }

  if (v7 < 7)
  {
    goto LABEL_18;
  }

  if (*v6[6].var0)
  {
    result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this[*v6[6].var0 + *this[*v6[6].var0].var0].var0, 4uLL, 0);
    if (!result)
    {
      return result;
    }

    v9 = *this->var0;
    if (*this[-v9].var0 < 7u)
    {
      goto LABEL_18;
    }

    v10 = -v9;
  }

  else
  {
    v10 = -v5;
  }

  v11 = *this[v10 + 6].var0;
  if (!v11 || (v12 = &this[v11 + *this[v11].var0], !*v12->var0))
  {
LABEL_18:
    --*(a2 + 4);
    return 1;
  }

  v13 = 0;
  v14 = v12 + 4;
  while (SSUCategoryGroup::Verify(&v14[*v14->var0], a2))
  {
    ++v13;
    v14 += 4;
    if (v13 >= *v12->var0)
    {
      goto LABEL_18;
    }
  }

  return 0;
}

uint64_t sirinluexternal::RRBoundingBox::formatText(sirinluexternal::RRBoundingBox *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 40);
  if (v5)
  {
    PB::TextFormatter::format(a2, "height", *(this + 1));
    v5 = *(this + 40);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(this + 40) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "width", *(this + 2));
  v5 = *(this + 40);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  PB::TextFormatter::format(a2, "x_coordinate", *(this + 3));
  if ((*(this + 40) & 8) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(a2, "y_coordinate", *(this + 4));
  }

LABEL_6:

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternal::RRBoundingBox::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 40);
  if ((v4 & 4) != 0)
  {
    this = PB::Writer::write(a2, *(this + 24));
    v4 = *(v3 + 40);
    if ((v4 & 8) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = PB::Writer::write(a2, *(v3 + 16));
      if ((*(v3 + 40) & 1) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 40) & 8) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 32));
  v4 = *(v3 + 40);
  if ((v4 & 2) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v4 & 1) == 0)
  {
    return this;
  }

LABEL_9:
  v5 = *(v3 + 8);

  return PB::Writer::write(a2, v5);
}

uint64_t sirinluexternal::RRBoundingBox::readFrom(sirinluexternal::RRBoundingBox *this, PB::Reader *a2)
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
        *(this + 40) |= 2u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
LABEL_36:
          *(a2 + 24) = 1;
          goto LABEL_39;
        }

        *(this + 2) = *(*a2 + v2);
        goto LABEL_38;
      }

      if (v22 == 4)
      {
        *(this + 40) |= 1u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_36;
        }

        *(this + 1) = *(*a2 + v2);
        goto LABEL_38;
      }
    }

    else
    {
      if (v22 == 1)
      {
        *(this + 40) |= 4u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_36;
        }

        *(this + 3) = *(*a2 + v2);
        goto LABEL_38;
      }

      if (v22 == 2)
      {
        *(this + 40) |= 8u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_36;
        }

        *(this + 4) = *(*a2 + v2);
LABEL_38:
        v2 = *(a2 + 1) + 8;
        *(a2 + 1) = v2;
        goto LABEL_39;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v23 = 0;
      return v23 & 1;
    }

    v2 = *(a2 + 1);
LABEL_39:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v23 = v4 ^ 1;
  return v23 & 1;
}

void sirinluexternal::RRBoundingBox::~RRBoundingBox(sirinluexternal::RRBoundingBox *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x1CCA7EC50);
}

uint64_t sirinluexternal::RRBoundingBox::RRBoundingBox(uint64_t this)
{
  *this = &unk_1F4876680;
  *(this + 40) = 0;
  return this;
}

{
  *this = &unk_1F4876680;
  *(this + 40) = 0;
  return this;
}

double sirinluexternal::RRBoundingBox::RRBoundingBox(sirinluexternal::RRBoundingBox *this, const sirinluexternal::RRBoundingBox *a2)
{
  *this = &unk_1F4876680;
  *(this + 10) = 0;
  v2 = *(a2 + 40);
  if ((v2 & 4) != 0)
  {
    result = *(a2 + 3);
    v3 = 4;
    *(this + 40) = 4;
    *(this + 3) = result;
    v2 = *(a2 + 40);
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 40) & 8) != 0)
  {
LABEL_5:
    result = *(a2 + 4);
    v3 |= 8u;
    *(this + 40) = v3;
    *(this + 4) = result;
    v2 = *(a2 + 40);
  }

LABEL_6:
  if ((v2 & 2) == 0)
  {
    if ((v2 & 1) == 0)
    {
      return result;
    }

LABEL_10:
    result = *(a2 + 1);
    *(this + 40) = v3 | 1;
    *(this + 1) = result;
    return result;
  }

  result = *(a2 + 2);
  v3 |= 2u;
  *(this + 40) = v3;
  *(this + 2) = result;
  if (*(a2 + 40))
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t sirinluexternal::RRBoundingBox::operator=(uint64_t a1, const sirinluexternal::RRBoundingBox *a2)
{
  if (a1 != a2)
  {
    sirinluexternal::RRBoundingBox::RRBoundingBox(&v7, a2);
    v3 = *(a1 + 40);
    *(a1 + 40) = v10;
    v10 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v9;
    v9 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v5;
    PB::Base::~Base(&v7);
  }

  return a1;
}

double sirinluexternal::swap(sirinluexternal *this, sirinluexternal::RRBoundingBox *a2, sirinluexternal::RRBoundingBox *a3)
{
  v3 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v3;
  v4 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v4;
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v6;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  return result;
}

double sirinluexternal::RRBoundingBox::RRBoundingBox(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4876680;
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

{
  *a1 = &unk_1F4876680;
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sirinluexternal::RRBoundingBox::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v8 = &unk_1F4876680;
    v3 = *(a2 + 40);
    *(a2 + 40) = 0;
    v11 = *(a1 + 40);
    v10 = *(a1 + 24);
    v4 = *(a1 + 8);
    v5 = *(a2 + 8);
    v6 = *(a2 + 24);
    *(a1 + 40) = v3;
    *(a1 + 24) = v6;
    *(a1 + 8) = v5;
    v9 = v4;
    PB::Base::~Base(&v8);
  }

  return a1;
}

BOOL sirinluexternal::RRBoundingBox::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 40) & 4) != 0)
  {
    if ((*(a2 + 40) & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 40) & 4) != 0)
  {
    return 0;
  }

  if ((*(a1 + 40) & 8) != 0)
  {
    if ((*(a2 + 40) & 8) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((*(a2 + 40) & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 40) & 2) != 0)
  {
    if ((*(a2 + 40) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 40) & 2) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 40) & 1) == 0;
  if (*(a1 + 40))
  {
    return (*(a2 + 40) & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return v2;
}

uint64_t sirinluexternal::RRBoundingBox::hash_value(sirinluexternal::RRBoundingBox *this)
{
  if ((*(this + 40) & 4) == 0)
  {
    v1 = 0.0;
    if ((*(this + 40) & 8) != 0)
    {
      goto LABEL_3;
    }

LABEL_15:
    v2 = 0.0;
    if ((*(this + 40) & 2) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

  v1 = *(this + 3);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  if ((*(this + 40) & 8) == 0)
  {
    goto LABEL_15;
  }

LABEL_3:
  v2 = *(this + 4);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((*(this + 40) & 2) != 0)
  {
LABEL_6:
    v3 = *(this + 2);
    if (v3 == 0.0)
    {
      v3 = 0.0;
    }

    if (*(this + 40))
    {
      goto LABEL_9;
    }

LABEL_17:
    v4 = 0.0;
    return *&v2 ^ *&v1 ^ *&v3 ^ *&v4;
  }

LABEL_16:
  v3 = 0.0;
  if ((*(this + 40) & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  v4 = *(this + 1);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  return *&v2 ^ *&v1 ^ *&v3 ^ *&v4;
}

uint64_t siricommon::UInt32Value::formatText(siricommon::UInt32Value *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 12))
  {
    v5 = *(this + 2);
    PB::TextFormatter::format(a2, "value");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t siricommon::UInt32Value::writeTo(uint64_t this, PB::Writer *a2)
{
  if (*(this + 12))
  {
    v2 = *(this + 8);
    return PB::Writer::writeVarInt(a2);
  }

  return this;
}

uint64_t siricommon::UInt32Value::readFrom(siricommon::UInt32Value *this, PB::Reader *a2)
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

void siricommon::UInt32Value::~UInt32Value(siricommon::UInt32Value *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x1CCA7EC50);
}

uint64_t siricommon::UInt32Value::UInt32Value(uint64_t this)
{
  *this = &unk_1F48766D0;
  *(this + 12) = 0;
  return this;
}

{
  *this = &unk_1F48766D0;
  *(this + 12) = 0;
  return this;
}

uint64_t siricommon::UInt32Value::UInt32Value(uint64_t this, const siricommon::UInt32Value *a2)
{
  *this = &unk_1F48766D0;
  *(this + 12) = 0;
  if (*(a2 + 12))
  {
    v2 = *(a2 + 2);
    *(this + 12) = 1;
    *(this + 8) = v2;
  }

  return this;
}

{
  *this = &unk_1F48766D0;
  *(this + 12) = 0;
  if (*(a2 + 12))
  {
    v2 = *(a2 + 2);
    *(this + 12) = 1;
    *(this + 8) = v2;
  }

  return this;
}

uint64_t siricommon::UInt32Value::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v6[0] = &unk_1F48766D0;
    v3 = *(a2 + 12) & 1;
    v4 = *(a1 + 8);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 12) = v3;
    v6[1] = v4;
    PB::Base::~Base(v6);
  }

  return a1;
}

{
  if (a1 != a2)
  {
    v6[0] = &unk_1F48766D0;
    v3 = *(a2 + 8);
    *(a2 + 12) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[1] = v4;
    PB::Base::~Base(v6);
  }

  return a1;
}

uint64_t siricommon::swap(uint64_t this, siricommon::UInt32Value *a2, siricommon::UInt32Value *a3)
{
  v3 = *(this + 12);
  *(this + 12) = *(a2 + 3);
  *(a2 + 3) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 2);
  *(a2 + 2) = v4;
  return this;
}

uint64_t siricommon::UInt32Value::UInt32Value(uint64_t result, uint64_t a2)
{
  *result = &unk_1F48766D0;
  *(result + 12) = *(a2 + 12);
  *(a2 + 12) = 0;
  *(result + 8) = *(a2 + 8);
  return result;
}

{
  *result = &unk_1F48766D0;
  *(result + 12) = *(a2 + 12);
  *(a2 + 12) = 0;
  *(result + 8) = *(a2 + 8);
  return result;
}

BOOL siricommon::UInt32Value::operator==(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  result = (*(a2 + 12) & 1) == 0;
  if (v3)
  {
    return (*(a2 + 12) & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return result;
}

uint64_t siricommon::UInt32Value::hash_value(siricommon::UInt32Value *this)
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

uint64_t SIRINLUEXTERNALCDM_PLANNERCdmPlannerRequestReadFrom(uint64_t a1, void *a2)
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
        v14 = *(a1 + 16);
        *(a1 + 16) = v13;
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

    v14 = objc_alloc_init(SIRINLUEXTERNALCDM_PLANNERCDMPlannerRequestIdentifier);
    objc_storeStrong((a1 + 8), v14);
    v17[0] = 0;
    v17[1] = 0;
    if (!PBReaderPlaceMark() || !SIRINLUEXTERNALCDM_PLANNERCDMPlannerRequestIdentifierReadFrom(v14, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sirinluinternalsnlp_intermediate::ContextFeaturizerResponse::formatText(sirinluinternalsnlp_intermediate::ContextFeaturizerResponse *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "tensor");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluinternalsnlp_intermediate::ContextFeaturizerResponse::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2);
  }

  return this;
}

uint64_t sirinluinternalsnlp_intermediate::ContextFeaturizerResponse::readFrom(sirinluinternalsnlp_intermediate::ContextFeaturizerResponse *this, PB::Reader *a2)
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

void sirinluinternalsnlp_intermediate::ContextFeaturizerResponse::~ContextFeaturizerResponse(sirinluinternalsnlp_intermediate::ContextFeaturizerResponse *this)
{
  sirinluinternalsnlp_intermediate::ContextFeaturizerResponse::~ContextFeaturizerResponse(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  v2 = *(this + 1);
  *this = &unk_1F4876720;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void *sirinluinternalsnlp_intermediate::ContextFeaturizerResponse::ContextFeaturizerResponse(void *this)
{
  *this = &unk_1F4876720;
  this[1] = 0;
  return this;
}

{
  *this = &unk_1F4876720;
  this[1] = 0;
  return this;
}

void *sirinluinternalsnlp_intermediate::ContextFeaturizerResponse::ContextFeaturizerResponse(void *this, const sirinluinternalsnlp_intermediate::ContextFeaturizerResponse *a2)
{
  *this = &unk_1F4876720;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const sirinluinternalsnlp_intermediate::ContextFeaturizerResponse *sirinluinternalsnlp_intermediate::ContextFeaturizerResponse::operator=(const sirinluinternalsnlp_intermediate::ContextFeaturizerResponse *a1, const sirinluinternalsnlp_intermediate::ContextFeaturizerResponse *a2)
{
  if (a1 != a2)
  {
    sirinluinternalsnlp_intermediate::ContextFeaturizerResponse::ContextFeaturizerResponse(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    sirinluinternalsnlp_intermediate::ContextFeaturizerResponse::~ContextFeaturizerResponse(&v5);
  }

  return a1;
}

uint64_t sirinluinternalsnlp_intermediate::swap(uint64_t this, sirinluinternalsnlp_intermediate::ContextFeaturizerResponse *a2, sirinluinternalsnlp_intermediate::ContextFeaturizerResponse *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *sirinluinternalsnlp_intermediate::ContextFeaturizerResponse::ContextFeaturizerResponse(void *a1, uint64_t a2)
{
  *a1 = &unk_1F4876720;
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
  *a1 = &unk_1F4876720;
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

uint64_t sirinluinternalsnlp_intermediate::ContextFeaturizerResponse::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_1F4876720;
    v6[1] = v4;
    sirinluinternalsnlp_intermediate::ContextFeaturizerResponse::~ContextFeaturizerResponse(v6);
  }

  return a1;
}

BOOL sirinluinternalsnlp_intermediate::ContextFeaturizerResponse::operator==(uint64_t a1, uint64_t a2)
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
    return sirinluinternalsnlp_intermediate::LinearizedTensor::operator==(v2, v3);
  }
}

sirinluinternalsnlp_intermediate::LinearizedTensor *sirinluinternalsnlp_intermediate::ContextFeaturizerResponse::hash_value(sirinluinternalsnlp_intermediate::ContextFeaturizerResponse *this)
{
  result = *(this + 1);
  if (result)
  {
    return sirinluinternalsnlp_intermediate::LinearizedTensor::hash_value(result);
  }

  return result;
}

uint64_t sirinluinternalsnlp_intermediate::ContextFeaturizerResponse::makeTensor(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t SIRINLUEXTERNALNLU_ROUTEREntityMatchReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v44[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v44 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v44[0] & 0x7F) << v5;
        if ((v44[0] & 0x80) == 0)
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
      if ((v12 >> 3) <= 7)
      {
        break;
      }

      if (v13 > 9)
      {
        switch(v13)
        {
          case 0xA:
            v16 = PBReaderReadString();
            v17 = 56;
            goto LABEL_68;
          case 0xB:
            v16 = PBReaderReadString();
            v17 = 72;
            goto LABEL_68;
          case 0xC:
            v16 = PBReaderReadString();
            v17 = 32;
LABEL_68:
            v39 = *(a1 + v17);
            *(a1 + v17) = v16;

            goto LABEL_86;
        }

        goto LABEL_69;
      }

      if (v13 != 8)
      {
        if (v13 == 9)
        {
          v18 = 0;
          v19 = 0;
          v20 = 0;
          *(a1 + 80) |= 8u;
          while (1)
          {
            LOBYTE(v44[0]) = 0;
            v21 = [a2 position] + 1;
            if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
            {
              v23 = [a2 data];
              [v23 getBytes:v44 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v20 |= (v44[0] & 0x7F) << v18;
            if ((v44[0] & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v11 = v19++ >= 9;
            if (v11)
            {
              v24 = 0;
              goto LABEL_74;
            }
          }

          if ([a2 hasError])
          {
            v24 = 0;
          }

          else
          {
            v24 = v20;
          }

LABEL_74:
          *(a1 + 52) = v24;
          goto LABEL_86;
        }

LABEL_69:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_86;
      }

      v25 = objc_alloc_init(SIRINLUEXTERNALNLU_ROUTERMatchProperties);
      objc_storeStrong((a1 + 40), v25);
      v44[0] = 0;
      v44[1] = 0;
      if (!PBReaderPlaceMark() || !SIRINLUEXTERNALNLU_ROUTERMatchPropertiesReadFrom(v25, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_86:
      v42 = [a2 position];
      if (v42 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 <= 3)
    {
      if (v13 == 1)
      {
        v16 = PBReaderReadString();
        v17 = 64;
        goto LABEL_68;
      }

      if (v13 == 3)
      {
        v16 = PBReaderReadString();
        v17 = 24;
        goto LABEL_68;
      }
    }

    else
    {
      switch(v13)
      {
        case 4:
          v26 = 0;
          v27 = 0;
          v28 = 0;
          *(a1 + 80) |= 2u;
          while (1)
          {
            LOBYTE(v44[0]) = 0;
            v29 = [a2 position] + 1;
            if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
            {
              v31 = [a2 data];
              [v31 getBytes:v44 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v28 |= (v44[0] & 0x7F) << v26;
            if ((v44[0] & 0x80) == 0)
            {
              break;
            }

            v26 += 7;
            v11 = v27++ >= 9;
            if (v11)
            {
              v32 = 0;
              goto LABEL_78;
            }
          }

          if ([a2 hasError])
          {
            v32 = 0;
          }

          else
          {
            v32 = v28;
          }

LABEL_78:
          v40 = 16;
          goto LABEL_83;
        case 5:
          v33 = 0;
          v34 = 0;
          v35 = 0;
          *(a1 + 80) |= 1u;
          while (1)
          {
            LOBYTE(v44[0]) = 0;
            v36 = [a2 position] + 1;
            if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
            {
              v38 = [a2 data];
              [v38 getBytes:v44 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v35 |= (v44[0] & 0x7F) << v33;
            if ((v44[0] & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v11 = v34++ >= 9;
            if (v11)
            {
              v32 = 0;
              goto LABEL_82;
            }
          }

          if ([a2 hasError])
          {
            v32 = 0;
          }

          else
          {
            v32 = v35;
          }

LABEL_82:
          v40 = 8;
LABEL_83:
          *(a1 + v40) = v32;
          goto LABEL_86;
        case 7:
          *(a1 + 80) |= 4u;
          LODWORD(v44[0]) = 0;
          v14 = [a2 position] + 4;
          if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 4, v15 <= objc_msgSend(a2, "length")))
          {
            v41 = [a2 data];
            [v41 getBytes:v44 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 48) = v44[0];
          goto LABEL_86;
      }
    }

    goto LABEL_69;
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRINLUEXTERNALNLU_ROUTERMatchPropertiesReadFrom(uint64_t a1, void *a2)
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
        v27 = objc_alloc_init(SIRINLUEXTERNALNLU_ROUTERAliasTypes);
        objc_storeStrong((a1 + 24), v27);
        v31[0] = 0;
        v31[1] = 0;
        if (!PBReaderPlaceMark() || !SIRINLUEXTERNALNLU_ROUTERAliasTypesReadFrom(v27, a2))
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
          *(a1 + 32) |= 1u;
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
          v28 = 8;
          goto LABEL_51;
        }

        if (v13 == 1)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 32) |= 2u;
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
          v28 = 16;
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

uint64_t SIRINLUINTERNALTOKENIZERTokenizerRequestReadFrom(uint64_t a1, void *a2)
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
        v15 = 16;
LABEL_22:
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;
LABEL_26:

        goto LABEL_28;
      }

      if (v13 == 1)
      {
        v14 = PBReaderReadString();
        v15 = 24;
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

    v16 = objc_alloc_init(SIRINLUEXTERNALUUID);
    objc_storeStrong((a1 + 8), v16);
    v19[0] = 0;
    v19[1] = 0;
    if (!PBReaderPlaceMark() || !SIRINLUEXTERNALUUIDReadFrom(v16, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRINLUEXTERNALLanguageVariantResultReadFrom(id *a1, void *a2)
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
        v13 = objc_alloc_init(SIRINLUEXTERNALMultilingualVariant);
        [a1 addMultilingualVariant:v13];
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !SIRINLUEXTERNALMultilingualVariantReadFrom(v13, a2))
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

    v13 = objc_alloc_init(SIRINLUEXTERNALParser);
    objc_storeStrong(a1 + 2, v13);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !SIRINLUEXTERNALParserReadFrom(v13, a2))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sirinluinternalsnlp_intermediate::NLv4ExecutedHandcraftedRules::formatText(sirinluinternalsnlp_intermediate::NLv4ExecutedHandcraftedRules *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "rules");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluinternalsnlp_intermediate::NLv4ExecutedHandcraftedRules::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2);
  }

  return this;
}

uint64_t sirinluinternalsnlp_intermediate::NLv4ExecutedHandcraftedRules::readFrom(sirinluinternalsnlp_intermediate::NLv4ExecutedHandcraftedRules *this, PB::Reader *a2)
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

void sirinluinternalsnlp_intermediate::NLv4ExecutedHandcraftedRules::~NLv4ExecutedHandcraftedRules(sirinluinternalsnlp_intermediate::NLv4ExecutedHandcraftedRules *this)
{
  sirinluinternalsnlp_intermediate::NLv4ExecutedHandcraftedRules::~NLv4ExecutedHandcraftedRules(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  v2 = *(this + 1);
  *this = &unk_1F4876770;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void *sirinluinternalsnlp_intermediate::NLv4ExecutedHandcraftedRules::NLv4ExecutedHandcraftedRules(void *this)
{
  *this = &unk_1F4876770;
  this[1] = 0;
  return this;
}

{
  *this = &unk_1F4876770;
  this[1] = 0;
  return this;
}

void *sirinluinternalsnlp_intermediate::NLv4ExecutedHandcraftedRules::NLv4ExecutedHandcraftedRules(void *this, const sirinluinternalsnlp_intermediate::NLv4ExecutedHandcraftedRules *a2)
{
  *this = &unk_1F4876770;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const sirinluinternalsnlp_intermediate::NLv4ExecutedHandcraftedRules *sirinluinternalsnlp_intermediate::NLv4ExecutedHandcraftedRules::operator=(const sirinluinternalsnlp_intermediate::NLv4ExecutedHandcraftedRules *a1, const sirinluinternalsnlp_intermediate::NLv4ExecutedHandcraftedRules *a2)
{
  if (a1 != a2)
  {
    sirinluinternalsnlp_intermediate::NLv4ExecutedHandcraftedRules::NLv4ExecutedHandcraftedRules(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    sirinluinternalsnlp_intermediate::NLv4ExecutedHandcraftedRules::~NLv4ExecutedHandcraftedRules(&v5);
  }

  return a1;
}

uint64_t sirinluinternalsnlp_intermediate::swap(uint64_t this, sirinluinternalsnlp_intermediate::NLv4ExecutedHandcraftedRules *a2, sirinluinternalsnlp_intermediate::NLv4ExecutedHandcraftedRules *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *sirinluinternalsnlp_intermediate::NLv4ExecutedHandcraftedRules::NLv4ExecutedHandcraftedRules(void *a1, uint64_t a2)
{
  *a1 = &unk_1F4876770;
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
  *a1 = &unk_1F4876770;
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

uint64_t sirinluinternalsnlp_intermediate::NLv4ExecutedHandcraftedRules::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_1F4876770;
    v6[1] = v4;
    sirinluinternalsnlp_intermediate::NLv4ExecutedHandcraftedRules::~NLv4ExecutedHandcraftedRules(v6);
  }

  return a1;
}

BOOL sirinluinternalsnlp_intermediate::NLv4ExecutedHandcraftedRules::operator==(uint64_t a1, uint64_t a2)
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
    return sirinluinternalsnlp_intermediate::SNLPHandcraftedRules::operator==(v2, v3);
  }
}

uint64_t sirinluinternalsnlp_intermediate::NLv4ExecutedHandcraftedRules::hash_value(sirinluinternalsnlp_intermediate::NLv4ExecutedHandcraftedRules *this)
{
  v1 = *(this + 1);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  if (v2 == v3)
  {
    return 0;
  }

  v4 = 0;
  do
  {
    v4 ^= std::__string_hash<char>::operator()[abi:ne200100](v2);
    v2 += 24;
  }

  while (v2 != v3);
  return v4;
}

uint64_t sirinluinternalsnlp_intermediate::NLv4ExecutedHandcraftedRules::makeRules(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t SIRINLUINTERNALNLv4EmbeddingTensorReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v45[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v45 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v45[0] & 0x7F) << v5;
        if ((v45[0] & 0x80) == 0)
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
          if ((v12 & 7) == 2)
          {
            v45[0] = 0;
            v45[1] = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v36 = [a2 position];
              if (v36 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                break;
              }

              v46 = 0;
              v37 = [a2 position] + 4;
              if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 4, v38 <= objc_msgSend(a2, "length")))
              {
                v39 = [a2 data];
                [v39 getBytes:&v46 range:{objc_msgSend(a2, "position"), 4}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
              }

              else
              {
                [a2 _setError];
              }

              PBRepeatedFloatAdd();
            }

            PBReaderRecallMark();
          }

          else
          {
            LODWORD(v45[0]) = 0;
            v42 = [a2 position] + 4;
            if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 4, v43 <= objc_msgSend(a2, "length")))
            {
              v44 = [a2 data];
              [v44 getBytes:v45 range:{objc_msgSend(a2, "position"), 4}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
            }

            else
            {
              [a2 _setError];
            }

            PBRepeatedFloatAdd();
          }

          goto LABEL_75;
        }

        if (v13 == 2)
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 64) |= 4u;
          while (1)
          {
            LOBYTE(v45[0]) = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:v45 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v45[0] & 0x7F) << v16;
            if ((v45[0] & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_73;
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

LABEL_73:
          v40 = 48;
          goto LABEL_74;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 64) |= 2u;
            while (1)
            {
              LOBYTE(v45[0]) = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:v45 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v45[0] & 0x7F) << v23;
              if ((v45[0] & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_65;
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

LABEL_65:
            v40 = 40;
            goto LABEL_74;
          case 4:
            v29 = 0;
            v30 = 0;
            v31 = 0;
            *(a1 + 64) |= 1u;
            while (1)
            {
              LOBYTE(v45[0]) = 0;
              v32 = [a2 position] + 1;
              if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
              {
                v34 = [a2 data];
                [v34 getBytes:v45 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v31 |= (v45[0] & 0x7F) << v29;
              if ((v45[0] & 0x80) == 0)
              {
                break;
              }

              v29 += 7;
              v11 = v30++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_69;
              }
            }

            if ([a2 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v31;
            }

LABEL_69:
            v40 = 32;
LABEL_74:
            *(a1 + v40) = v22;
            goto LABEL_75;
          case 5:
            v14 = PBReaderReadString();
            v15 = *(a1 + 56);
            *(a1 + 56) = v14;

            goto LABEL_75;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_75:
      v41 = [a2 position];
    }

    while (v41 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRINLUEXTERNALRequestIDReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v27[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27[0] & 0x7F) << v5;
        if ((v27[0] & 0x80) == 0)
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
        break;
      }

      if (v13 == 1)
      {
        v14 = PBReaderReadString();
        v15 = 16;
        goto LABEL_42;
      }

      if (v13 != 2)
      {
        if (v13 == 3)
        {
          v14 = PBReaderReadString();
          v15 = 56;
          goto LABEL_42;
        }

        goto LABEL_38;
      }

      v25 = objc_alloc_init(SIRINLUEXTERNALUUID);
      objc_storeStrong((a1 + 32), v25);
      v27[0] = 0;
      v27[1] = 0;
      if (!PBReaderPlaceMark() || !SIRINLUEXTERNALUUIDReadFrom(v25, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_43:
      v24 = [a2 position];
      if (v24 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 > 10)
    {
      if (v13 == 11)
      {
        v14 = PBReaderReadString();
        v15 = 8;
        goto LABEL_42;
      }

      if (v13 == 12)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 64) |= 1u;
        while (1)
        {
          LOBYTE(v27[0]) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v27[0] & 0x7F) << v16;
          if ((v27[0] & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_51;
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

LABEL_51:
        *(a1 + 40) = v22;
        goto LABEL_43;
      }
    }

    else
    {
      if (v13 == 4)
      {
        v14 = PBReaderReadString();
        v15 = 24;
        goto LABEL_42;
      }

      if (v13 == 5)
      {
        v14 = PBReaderReadString();
        v15 = 48;
LABEL_42:
        v23 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_43;
      }
    }

LABEL_38:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_43;
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRINLUEXTERNALParserReadFrom(uint64_t a1, void *a2)
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
          v31 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v31 & 0x7F) << v13;
          if ((v31 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v19 = v14++ > 8;
          if (v19)
          {
            v20 = 0;
            v21 = &OBJC_IVAR___SIRINLUEXTERNALParser__algorithm;
            goto LABEL_44;
          }
        }

        v21 = &OBJC_IVAR___SIRINLUEXTERNALParser__algorithm;
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
      v30 = 0;
      v24 = [a2 position] + 1;
      if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
      {
        v26 = [a2 data];
        [v26 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v15 |= (v30 & 0x7F) << v22;
      if ((v30 & 0x80) == 0)
      {
        break;
      }

      v22 += 7;
      v19 = v23++ > 8;
      if (v19)
      {
        v20 = 0;
        v21 = &OBJC_IVAR___SIRINLUEXTERNALParser__parserId;
        goto LABEL_44;
      }
    }

    v21 = &OBJC_IVAR___SIRINLUEXTERNALParser__parserId;
    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sirinluinternalmention_detector::MentionDetectorResponse::formatText(sirinluinternalmention_detector::MentionDetectorResponse *this, PB::TextFormatter *a2, const char *a3)
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

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluinternalmention_detector::MentionDetectorResponse::writeTo(uint64_t this, PB::Writer *a2)
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

uint64_t sirinluinternalmention_detector::MentionDetectorResponse::readFrom(sirinluinternalmention_detector::MentionDetectorResponse *this, PB::Reader *a2)
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
        PB::PtrVector<sirinluinternal::MatchingSpan>::emplace_back<>();
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

void sirinluinternalmention_detector::MentionDetectorResponse::~MentionDetectorResponse(sirinluinternalmention_detector::MentionDetectorResponse *this)
{
  sirinluinternalmention_detector::MentionDetectorResponse::~MentionDetectorResponse(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F48767C0;
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

double sirinluinternalmention_detector::MentionDetectorResponse::MentionDetectorResponse(sirinluinternalmention_detector::MentionDetectorResponse *this)
{
  *this = &unk_1F48767C0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = &unk_1F48767C0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

uint64_t sirinluinternalmention_detector::MentionDetectorResponse::MentionDetectorResponse(uint64_t this, const sirinluinternalmention_detector::MentionDetectorResponse *a2)
{
  *this = &unk_1F48767C0;
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
    PB::PtrVector<sirinluinternal::MatchingSpan>::emplace_back<sirinluinternal::MatchingSpan const&>();
  }

  return this;
}

uint64_t sirinluinternalmention_detector::MentionDetectorResponse::operator=(uint64_t a1, const sirinluinternalmention_detector::MentionDetectorResponse *a2)
{
  if (a1 != a2)
  {
    sirinluinternalmention_detector::MentionDetectorResponse::MentionDetectorResponse(v7, a2);
    v3 = v9;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v5 = *(a1 + 24);
    *(a1 + 24) = v3;
    v8 = v4;
    v9 = v5;
    sirinluinternalmention_detector::MentionDetectorResponse::~MentionDetectorResponse(v7);
  }

  return a1;
}

void *sirinluinternalmention_detector::swap(void *this, sirinluinternalmention_detector::MentionDetectorResponse *a2, sirinluinternalmention_detector::MentionDetectorResponse *a3)
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

uint64_t sirinluinternalmention_detector::MentionDetectorResponse::MentionDetectorResponse(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *a1 = &unk_1F48767C0;
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

uint64_t sirinluinternalmention_detector::MentionDetectorResponse::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluinternalmention_detector::MentionDetectorResponse::MentionDetectorResponse(v7, a2);
    v3 = v9;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v5 = *(a1 + 24);
    *(a1 + 24) = v3;
    v8 = v4;
    v9 = v5;
    sirinluinternalmention_detector::MentionDetectorResponse::~MentionDetectorResponse(v7);
  }

  return a1;
}

BOOL sirinluinternalmention_detector::MentionDetectorResponse::operator==(uint64_t a1, void *a2)
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

  return PB::PtrVector<sirinluinternal::MatchingSpan>::operator==((a1 + 8), v6, v7);
}

uint64_t sirinluinternalmention_detector::MentionDetectorResponse::hash_value(sirinluinternalmention_detector::MentionDetectorResponse *this)
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
      v8 ^= sirinluinternal::MatchingSpan::hash_value(v9);
    }

    while (v6 != v7);
  }

  return v8 ^ v5;
}

uint64_t sirinluinternalmention_detector::MentionDetectorResponse::makeRequestId(uint64_t this)
{
  if (!*(this + 32))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternalsnlp_intermediate::SpanFeaturizerResponse::formatText(sirinluinternalsnlp_intermediate::SpanFeaturizerResponse *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "tensor");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluinternalsnlp_intermediate::SpanFeaturizerResponse::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2);
  }

  return this;
}

uint64_t sirinluinternalsnlp_intermediate::SpanFeaturizerResponse::readFrom(sirinluinternalsnlp_intermediate::SpanFeaturizerResponse *this, PB::Reader *a2)
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

void sirinluinternalsnlp_intermediate::SpanFeaturizerResponse::~SpanFeaturizerResponse(sirinluinternalsnlp_intermediate::SpanFeaturizerResponse *this)
{
  sirinluinternalsnlp_intermediate::SpanFeaturizerResponse::~SpanFeaturizerResponse(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  v2 = *(this + 1);
  *this = &unk_1F4876810;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void *sirinluinternalsnlp_intermediate::SpanFeaturizerResponse::SpanFeaturizerResponse(void *this)
{
  *this = &unk_1F4876810;
  this[1] = 0;
  return this;
}

{
  *this = &unk_1F4876810;
  this[1] = 0;
  return this;
}

void *sirinluinternalsnlp_intermediate::SpanFeaturizerResponse::SpanFeaturizerResponse(void *this, const sirinluinternalsnlp_intermediate::SpanFeaturizerResponse *a2)
{
  *this = &unk_1F4876810;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const sirinluinternalsnlp_intermediate::SpanFeaturizerResponse *sirinluinternalsnlp_intermediate::SpanFeaturizerResponse::operator=(const sirinluinternalsnlp_intermediate::SpanFeaturizerResponse *a1, const sirinluinternalsnlp_intermediate::SpanFeaturizerResponse *a2)
{
  if (a1 != a2)
  {
    sirinluinternalsnlp_intermediate::SpanFeaturizerResponse::SpanFeaturizerResponse(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    sirinluinternalsnlp_intermediate::SpanFeaturizerResponse::~SpanFeaturizerResponse(&v5);
  }

  return a1;
}

uint64_t sirinluinternalsnlp_intermediate::swap(uint64_t this, sirinluinternalsnlp_intermediate::SpanFeaturizerResponse *a2, sirinluinternalsnlp_intermediate::SpanFeaturizerResponse *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *sirinluinternalsnlp_intermediate::SpanFeaturizerResponse::SpanFeaturizerResponse(void *a1, uint64_t a2)
{
  *a1 = &unk_1F4876810;
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
  *a1 = &unk_1F4876810;
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

uint64_t sirinluinternalsnlp_intermediate::SpanFeaturizerResponse::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_1F4876810;
    v6[1] = v4;
    sirinluinternalsnlp_intermediate::SpanFeaturizerResponse::~SpanFeaturizerResponse(v6);
  }

  return a1;
}

BOOL sirinluinternalsnlp_intermediate::SpanFeaturizerResponse::operator==(uint64_t a1, uint64_t a2)
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
    return sirinluinternalsnlp_intermediate::LinearizedTensor::operator==(v2, v3);
  }
}

sirinluinternalsnlp_intermediate::LinearizedTensor *sirinluinternalsnlp_intermediate::SpanFeaturizerResponse::hash_value(sirinluinternalsnlp_intermediate::SpanFeaturizerResponse *this)
{
  result = *(this + 1);
  if (result)
  {
    return sirinluinternalsnlp_intermediate::LinearizedTensor::hash_value(result);
  }

  return result;
}

uint64_t sirinluinternalsnlp_intermediate::SpanFeaturizerResponse::makeTensor(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternalssu_inference::SsuInferenceRequest::formatText(sirinluexternalssu_inference::SsuInferenceRequest *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "request_id");
  }

  if (*(this + 2))
  {
    PB::TextFormatter::format();
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternalssu_inference::SsuInferenceRequest::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  if (*(v3 + 16))
  {

    return PB::Writer::write();
  }

  return this;
}

uint64_t sirinluexternalssu_inference::SsuInferenceRequest::readFrom(sirinluexternalssu_inference::SsuInferenceRequest *this, PB::Reader *a2)
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

void sirinluexternalssu_inference::SsuInferenceRequest::~SsuInferenceRequest(sirinluexternalssu_inference::SsuInferenceRequest *this)
{
  sirinluexternalssu_inference::SsuInferenceRequest::~SsuInferenceRequest(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4876860;
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

void *sirinluexternalssu_inference::SsuInferenceRequest::SsuInferenceRequest(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4876860;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4876860;
  return this;
}

void *sirinluexternalssu_inference::SsuInferenceRequest::SsuInferenceRequest(void *this, const sirinluexternalssu_inference::SsuInferenceRequest *a2)
{
  *this = &unk_1F4876860;
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

uint64_t sirinluexternalssu_inference::SsuInferenceRequest::operator=(uint64_t a1, const sirinluexternalssu_inference::SsuInferenceRequest *a2)
{
  if (a1 != a2)
  {
    sirinluexternalssu_inference::SsuInferenceRequest::SsuInferenceRequest(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    sirinluexternalssu_inference::SsuInferenceRequest::~SsuInferenceRequest(&v5);
  }

  return a1;
}

uint64_t sirinluexternalssu_inference::swap(uint64_t this, sirinluexternalssu_inference::SsuInferenceRequest *a2, sirinluexternalssu_inference::SsuInferenceRequest *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  v4 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v4;
  return this;
}

void *sirinluexternalssu_inference::SsuInferenceRequest::SsuInferenceRequest(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F4876860;
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
    std::default_delete<std::string>::operator()[abi:ne200100](v7);
  }

  return a1;
}

uint64_t sirinluexternalssu_inference::SsuInferenceRequest::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluexternalssu_inference::SsuInferenceRequest::SsuInferenceRequest(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    sirinluexternalssu_inference::SsuInferenceRequest::~SsuInferenceRequest(&v5);
  }

  return a1;
}

BOOL sirinluexternalssu_inference::SsuInferenceRequest::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
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

  v6 = *(a1 + 16);
  v7 = *(a2 + 16);
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
      v13 = v9 >= 0 ? *(a1 + 16) : *v6;
      v14 = v12 >= 0 ? *(a2 + 16) : *v7;
      if (!memcmp(v13, v14, v10))
      {
        return 1;
      }
    }
  }

  return 0;
}

unint64_t sirinluexternalssu_inference::SsuInferenceRequest::hash_value(sirinluexternalssu_inference::SsuInferenceRequest *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    v3 = sirinluexternal::RequestID::hash_value(v2);
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

uint64_t sirinluexternalssu_inference::SsuInferenceRequest::makeRequestId(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t SIRINLUINTERNALCONTEXTUPDATEReformedTurnInputBundleReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v24[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24[0] & 0x7F) << v5;
        if ((v24[0] & 0x80) == 0)
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
        v21 = objc_alloc_init(SIRINLUEXTERNALTurnInput);
        [a1 addPreviousTurns:v21];
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
            *(a1 + 28) |= 1u;
            while (1)
            {
              LOBYTE(v24[0]) = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:v24 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v24[0] & 0x7F) << v14;
              if ((v24[0] & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_39;
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

LABEL_39:
            *(a1 + 24) = v20;
          }

          else if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            return 0;
          }

          goto LABEL_40;
        }

        v21 = objc_alloc_init(SIRINLUEXTERNALTurnInput);
        objc_storeStrong((a1 + 8), v21);
      }

      v24[0] = 0;
      v24[1] = 0;
      if (!PBReaderPlaceMark() || !SIRINLUEXTERNALTurnInputReadFrom(v21, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_40:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRINLUINTERNALOVERRIDESOverridesResponseReadFrom(void *a1, void *a2)
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
        [a1 addParses:v13];
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

uint64_t SIRICOMMONUInt32ValueReadFrom(uint64_t a1, void *a2)
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

uint64_t sirinluexternal::UtteranceSpan::formatText(sirinluexternal::UtteranceSpan *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 32);
  if (v5)
  {
    v7 = *(this + 2);
    PB::TextFormatter::format(a2, "end_index");
    v5 = *(this + 32);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*(this + 32) & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(this + 3);
  PB::TextFormatter::format(a2, "end_milli_seconds");
  v5 = *(this + 32);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v9 = *(this + 4);
  PB::TextFormatter::format(a2, "end_unicode_scalar_index");
  v5 = *(this + 32);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  v10 = *(this + 5);
  PB::TextFormatter::format(a2, "start_index");
  v5 = *(this + 32);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  v11 = *(this + 6);
  PB::TextFormatter::format(a2, "start_milli_seconds");
  if ((*(this + 32) & 0x20) != 0)
  {
LABEL_7:
    v6 = *(this + 7);
    PB::TextFormatter::format(a2, "start_unicode_scalar_index");
  }

LABEL_8:

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternal::UtteranceSpan::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 32);
  if ((v4 & 8) != 0)
  {
    v5 = *(this + 20);
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 32);
    if ((v4 & 1) == 0)
    {
LABEL_3:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*(this + 32) & 1) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(v3 + 8);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 32);
  if ((v4 & 0x20) == 0)
  {
LABEL_4:
    if ((v4 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v7 = *(v3 + 28);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 32);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v9 = *(v3 + 24);
    this = PB::Writer::writeVarInt(a2);
    if ((*(v3 + 32) & 2) == 0)
    {
      return this;
    }

    goto LABEL_13;
  }

LABEL_11:
  v8 = *(v3 + 16);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 32);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v4 & 2) == 0)
  {
    return this;
  }

LABEL_13:
  v10 = *(v3 + 12);

  return PB::Writer::writeVarInt(a2);
}

uint64_t sirinluexternal::UtteranceSpan::readFrom(sirinluexternal::UtteranceSpan *this, PB::Reader *a2)
{
  v3 = *(a2 + 1);
  v2 = *(a2 + 2);
  v4 = *(a2 + 24);
  while (v3 < v2 && (*(a2 + 24) & 1) == 0)
  {
    v7 = *a2;
    if (v3 > 0xFFFFFFFFFFFFFFF5 || v3 + 10 > v2)
    {
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
        goto LABEL_17;
      }
    }

LABEL_22:
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
          *(this + 32) |= 4u;
          v47 = *(a2 + 1);
          v2 = *(a2 + 2);
          v48 = *a2;
          if (v47 > 0xFFFFFFFFFFFFFFF5 || v47 + 10 > v2)
          {
            v75 = 0;
            v76 = 0;
            v51 = 0;
            if (v2 <= v47)
            {
              v3 = *(a2 + 1);
            }

            else
            {
              v3 = *(a2 + 2);
            }

            while (1)
            {
              if (v3 == v47)
              {
                LODWORD(v51) = 0;
                *(a2 + 24) = 1;
                goto LABEL_133;
              }

              v77 = v47 + 1;
              v78 = *(v48 + v47);
              *(a2 + 1) = v77;
              v51 |= (v78 & 0x7F) << v75;
              if ((v78 & 0x80) == 0)
              {
                break;
              }

              v75 += 7;
              v47 = v77;
              v14 = v76++ > 8;
              if (v14)
              {
                LODWORD(v51) = 0;
                goto LABEL_132;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v51) = 0;
            }

LABEL_132:
            v3 = v77;
          }

          else
          {
            v49 = 0;
            v50 = 0;
            v51 = 0;
            v52 = (v48 + v47);
            v53 = v47 + 1;
            while (1)
            {
              v3 = v53;
              *(a2 + 1) = v53;
              v54 = *v52++;
              v51 |= (v54 & 0x7F) << v49;
              if ((v54 & 0x80) == 0)
              {
                break;
              }

              v49 += 7;
              ++v53;
              v14 = v50++ > 8;
              if (v14)
              {
                LODWORD(v51) = 0;
                break;
              }
            }
          }

LABEL_133:
          *(this + 4) = v51;
          goto LABEL_19;
        case 5:
          *(this + 32) |= 0x10u;
          v63 = *(a2 + 1);
          v2 = *(a2 + 2);
          v64 = *a2;
          if (v63 > 0xFFFFFFFFFFFFFFF5 || v63 + 10 > v2)
          {
            v91 = 0;
            v92 = 0;
            v67 = 0;
            if (v2 <= v63)
            {
              v3 = *(a2 + 1);
            }

            else
            {
              v3 = *(a2 + 2);
            }

            while (1)
            {
              if (v3 == v63)
              {
                LODWORD(v67) = 0;
                *(a2 + 24) = 1;
                goto LABEL_149;
              }

              v93 = v63 + 1;
              v94 = *(v64 + v63);
              *(a2 + 1) = v93;
              v67 |= (v94 & 0x7F) << v91;
              if ((v94 & 0x80) == 0)
              {
                break;
              }

              v91 += 7;
              v63 = v93;
              v14 = v92++ > 8;
              if (v14)
              {
                LODWORD(v67) = 0;
                goto LABEL_148;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v67) = 0;
            }

LABEL_148:
            v3 = v93;
          }

          else
          {
            v65 = 0;
            v66 = 0;
            v67 = 0;
            v68 = (v64 + v63);
            v69 = v63 + 1;
            while (1)
            {
              v3 = v69;
              *(a2 + 1) = v69;
              v70 = *v68++;
              v67 |= (v70 & 0x7F) << v65;
              if ((v70 & 0x80) == 0)
              {
                break;
              }

              v65 += 7;
              ++v69;
              v14 = v66++ > 8;
              if (v14)
              {
                LODWORD(v67) = 0;
                break;
              }
            }
          }

LABEL_149:
          *(this + 6) = v67;
          goto LABEL_19;
        case 6:
          *(this + 32) |= 2u;
          v31 = *(a2 + 1);
          v2 = *(a2 + 2);
          v32 = *a2;
          if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
          {
            v83 = 0;
            v84 = 0;
            v35 = 0;
            if (v2 <= v31)
            {
              v3 = *(a2 + 1);
            }

            else
            {
              v3 = *(a2 + 2);
            }

            while (1)
            {
              if (v3 == v31)
              {
                LODWORD(v35) = 0;
                *(a2 + 24) = 1;
                goto LABEL_141;
              }

              v85 = v31 + 1;
              v86 = *(v32 + v31);
              *(a2 + 1) = v85;
              v35 |= (v86 & 0x7F) << v83;
              if ((v86 & 0x80) == 0)
              {
                break;
              }

              v83 += 7;
              v31 = v85;
              v14 = v84++ > 8;
              if (v14)
              {
                LODWORD(v35) = 0;
                goto LABEL_140;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v35) = 0;
            }

LABEL_140:
            v3 = v85;
          }

          else
          {
            v33 = 0;
            v34 = 0;
            v35 = 0;
            v36 = (v32 + v31);
            v37 = v31 + 1;
            while (1)
            {
              v3 = v37;
              *(a2 + 1) = v37;
              v38 = *v36++;
              v35 |= (v38 & 0x7F) << v33;
              if ((v38 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              ++v37;
              v14 = v34++ > 8;
              if (v14)
              {
                LODWORD(v35) = 0;
                break;
              }
            }
          }

LABEL_141:
          *(this + 3) = v35;
          goto LABEL_19;
      }
    }

    else
    {
      switch(v22)
      {
        case 1:
          *(this + 32) |= 8u;
          v39 = *(a2 + 1);
          v2 = *(a2 + 2);
          v40 = *a2;
          if (v39 > 0xFFFFFFFFFFFFFFF5 || v39 + 10 > v2)
          {
            v71 = 0;
            v72 = 0;
            v43 = 0;
            if (v2 <= v39)
            {
              v3 = *(a2 + 1);
            }

            else
            {
              v3 = *(a2 + 2);
            }

            while (1)
            {
              if (v3 == v39)
              {
                LODWORD(v43) = 0;
                *(a2 + 24) = 1;
                goto LABEL_129;
              }

              v73 = v39 + 1;
              v74 = *(v40 + v39);
              *(a2 + 1) = v73;
              v43 |= (v74 & 0x7F) << v71;
              if ((v74 & 0x80) == 0)
              {
                break;
              }

              v71 += 7;
              v39 = v73;
              v14 = v72++ > 8;
              if (v14)
              {
                LODWORD(v43) = 0;
                goto LABEL_128;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v43) = 0;
            }

LABEL_128:
            v3 = v73;
          }

          else
          {
            v41 = 0;
            v42 = 0;
            v43 = 0;
            v44 = (v40 + v39);
            v45 = v39 + 1;
            while (1)
            {
              v3 = v45;
              *(a2 + 1) = v45;
              v46 = *v44++;
              v43 |= (v46 & 0x7F) << v41;
              if ((v46 & 0x80) == 0)
              {
                break;
              }

              v41 += 7;
              ++v45;
              v14 = v42++ > 8;
              if (v14)
              {
                LODWORD(v43) = 0;
                break;
              }
            }
          }

LABEL_129:
          *(this + 5) = v43;
          goto LABEL_19;
        case 2:
          *(this + 32) |= 1u;
          v55 = *(a2 + 1);
          v2 = *(a2 + 2);
          v56 = *a2;
          if (v55 > 0xFFFFFFFFFFFFFFF5 || v55 + 10 > v2)
          {
            v87 = 0;
            v88 = 0;
            v59 = 0;
            if (v2 <= v55)
            {
              v3 = *(a2 + 1);
            }

            else
            {
              v3 = *(a2 + 2);
            }

            while (1)
            {
              if (v3 == v55)
              {
                LODWORD(v59) = 0;
                *(a2 + 24) = 1;
                goto LABEL_145;
              }

              v89 = v55 + 1;
              v90 = *(v56 + v55);
              *(a2 + 1) = v89;
              v59 |= (v90 & 0x7F) << v87;
              if ((v90 & 0x80) == 0)
              {
                break;
              }

              v87 += 7;
              v55 = v89;
              v14 = v88++ > 8;
              if (v14)
              {
                LODWORD(v59) = 0;
                goto LABEL_144;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v59) = 0;
            }

LABEL_144:
            v3 = v89;
          }

          else
          {
            v57 = 0;
            v58 = 0;
            v59 = 0;
            v60 = (v56 + v55);
            v61 = v55 + 1;
            while (1)
            {
              v3 = v61;
              *(a2 + 1) = v61;
              v62 = *v60++;
              v59 |= (v62 & 0x7F) << v57;
              if ((v62 & 0x80) == 0)
              {
                break;
              }

              v57 += 7;
              ++v61;
              v14 = v58++ > 8;
              if (v14)
              {
                LODWORD(v59) = 0;
                break;
              }
            }
          }

LABEL_145:
          *(this + 2) = v59;
          goto LABEL_19;
        case 3:
          *(this + 32) |= 0x20u;
          v23 = *(a2 + 1);
          v2 = *(a2 + 2);
          v24 = *a2;
          if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
          {
            v79 = 0;
            v80 = 0;
            v27 = 0;
            if (v2 <= v23)
            {
              v3 = *(a2 + 1);
            }

            else
            {
              v3 = *(a2 + 2);
            }

            while (1)
            {
              if (v3 == v23)
              {
                LODWORD(v27) = 0;
                *(a2 + 24) = 1;
                goto LABEL_137;
              }

              v81 = v23 + 1;
              v82 = *(v24 + v23);
              *(a2 + 1) = v81;
              v27 |= (v82 & 0x7F) << v79;
              if ((v82 & 0x80) == 0)
              {
                break;
              }

              v79 += 7;
              v23 = v81;
              v14 = v80++ > 8;
              if (v14)
              {
                LODWORD(v27) = 0;
                goto LABEL_136;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v27) = 0;
            }

LABEL_136:
            v3 = v81;
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
              v3 = v29;
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

LABEL_137:
          *(this + 7) = v27;
          goto LABEL_19;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v95 = 0;
      return v95 & 1;
    }

    v3 = *(a2 + 1);
    v2 = *(a2 + 2);
LABEL_19:
    v4 = *(a2 + 24);
  }

  v95 = v4 ^ 1;
  return v95 & 1;
}

void sirinluexternal::UtteranceSpan::~UtteranceSpan(sirinluexternal::UtteranceSpan *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x1CCA7EC50);
}

uint64_t sirinluexternal::UtteranceSpan::UtteranceSpan(uint64_t this)
{
  *this = &unk_1F48768B0;
  *(this + 32) = 0;
  return this;
}

{
  *this = &unk_1F48768B0;
  *(this + 32) = 0;
  return this;
}

uint64_t sirinluexternal::UtteranceSpan::UtteranceSpan(uint64_t this, const sirinluexternal::UtteranceSpan *a2)
{
  *this = &unk_1F48768B0;
  *(this + 32) = 0;
  v2 = *(a2 + 32);
  if ((v2 & 8) != 0)
  {
    v4 = *(a2 + 5);
    v3 = 8;
    *(this + 32) = 8;
    *(this + 20) = v4;
    v2 = *(a2 + 32);
    if ((v2 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if (*(a2 + 32))
  {
LABEL_5:
    v5 = *(a2 + 2);
    v3 |= 1u;
    *(this + 32) = v3;
    *(this + 8) = v5;
    v2 = *(a2 + 32);
  }

LABEL_6:
  if ((v2 & 0x20) != 0)
  {
    v6 = *(a2 + 7);
    v3 |= 0x20u;
    *(this + 32) = v3;
    *(this + 28) = v6;
    v2 = *(a2 + 32);
    if ((v2 & 4) == 0)
    {
LABEL_8:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_13;
    }
  }

  else if ((v2 & 4) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 4);
  v3 |= 4u;
  *(this + 32) = v3;
  *(this + 16) = v7;
  v2 = *(a2 + 32);
  if ((v2 & 0x10) == 0)
  {
LABEL_9:
    if ((v2 & 2) == 0)
    {
      return this;
    }

LABEL_14:
    v9 = *(a2 + 3);
    *(this + 32) = v3 | 2;
    *(this + 12) = v9;
    return this;
  }

LABEL_13:
  v8 = *(a2 + 6);
  v3 |= 0x10u;
  *(this + 32) = v3;
  *(this + 24) = v8;
  if ((*(a2 + 32) & 2) != 0)
  {
    goto LABEL_14;
  }

  return this;
}

uint64_t sirinluexternal::UtteranceSpan::operator=(uint64_t a1, const sirinluexternal::UtteranceSpan *a2)
{
  if (a1 != a2)
  {
    sirinluexternal::UtteranceSpan::UtteranceSpan(v7, a2);
    v3 = *(a1 + 32);
    *(a1 + 32) = v10;
    v10 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v9;
    v9 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v5;
    PB::Base::~Base(v7);
  }

  return a1;
}

_DWORD *sirinluexternal::swap(_DWORD *this, sirinluexternal::UtteranceSpan *a2, sirinluexternal::UtteranceSpan *a3)
{
  v3 = this[8];
  this[8] = *(a2 + 8);
  *(a2 + 8) = v3;
  v4 = this[5];
  this[5] = *(a2 + 5);
  *(a2 + 5) = v4;
  v5 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v5;
  v6 = this[7];
  this[7] = *(a2 + 7);
  *(a2 + 7) = v6;
  v7 = this[4];
  this[4] = *(a2 + 4);
  *(a2 + 4) = v7;
  v8 = this[6];
  this[6] = *(a2 + 6);
  *(a2 + 6) = v8;
  v9 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v9;
  return this;
}

uint64_t sirinluexternal::UtteranceSpan::UtteranceSpan(uint64_t result, _DWORD *a2)
{
  *result = &unk_1F48768B0;
  *(result + 32) = a2[8];
  a2[8] = 0;
  *(result + 20) = a2[5];
  *(result + 8) = a2[2];
  *(result + 28) = a2[7];
  *(result + 16) = a2[4];
  *(result + 24) = a2[6];
  *(result + 12) = a2[3];
  return result;
}

{
  *result = &unk_1F48768B0;
  *(result + 32) = a2[8];
  a2[8] = 0;
  *(result + 20) = a2[5];
  *(result + 8) = a2[2];
  *(result + 28) = a2[7];
  *(result + 16) = a2[4];
  *(result + 24) = a2[6];
  *(result + 12) = a2[3];
  return result;
}

uint64_t sirinluexternal::UtteranceSpan::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v8 = &unk_1F48768B0;
    v3 = *(a2 + 32);
    *(a2 + 32) = 0;
    v11 = *(a1 + 32);
    v10 = *(a1 + 24);
    v4 = *(a1 + 8);
    v5 = *(a2 + 8);
    v6 = *(a2 + 24);
    *(a1 + 32) = v3;
    *(a1 + 24) = v6;
    *(a1 + 8) = v5;
    v9 = v4;
    PB::Base::~Base(&v8);
  }

  return a1;
}

BOOL sirinluexternal::UtteranceSpan::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 32) & 8) != 0)
  {
    if ((*(a2 + 32) & 8) == 0 || *(a1 + 20) != *(a2 + 20))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 8) != 0)
  {
    return 0;
  }

  if (*(a1 + 32))
  {
    if ((*(a2 + 32) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 32))
  {
    return 0;
  }

  if ((*(a1 + 32) & 0x20) != 0)
  {
    if ((*(a2 + 32) & 0x20) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 0x20) != 0)
  {
    return 0;
  }

  if ((*(a1 + 32) & 4) != 0)
  {
    if ((*(a2 + 32) & 4) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 4) != 0)
  {
    return 0;
  }

  if ((*(a1 + 32) & 0x10) != 0)
  {
    if ((*(a2 + 32) & 0x10) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 0x10) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 32) & 2) == 0;
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*(a2 + 32) & 2) != 0 && *(a1 + 12) == *(a2 + 12);
  }

  return v2;
}

uint64_t sirinluexternal::UtteranceSpan::hash_value(sirinluexternal::UtteranceSpan *this)
{
  if ((*(this + 32) & 8) != 0)
  {
    v1 = *(this + 5);
    if (*(this + 32))
    {
LABEL_3:
      v2 = *(this + 2);
      if ((*(this + 32) & 0x20) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v1 = 0;
    if (*(this + 32))
    {
      goto LABEL_3;
    }
  }

  v2 = 0;
  if ((*(this + 32) & 0x20) != 0)
  {
LABEL_4:
    v3 = *(this + 7);
    if ((*(this + 32) & 4) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v3 = 0;
  if ((*(this + 32) & 4) != 0)
  {
LABEL_5:
    v4 = *(this + 4);
    if ((*(this + 32) & 0x10) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v5 = 0;
    if ((*(this + 32) & 2) != 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    v6 = 0;
    return v2 ^ v1 ^ v3 ^ v4 ^ v5 ^ v6;
  }

LABEL_11:
  v4 = 0;
  if ((*(this + 32) & 0x10) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v5 = *(this + 6);
  if ((*(this + 32) & 2) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  v6 = *(this + 3);
  return v2 ^ v1 ^ v3 ^ v4 ^ v5 ^ v6;
}

uint64_t SIRINLUEXTERNALSUBWORD_EMBEDDINGSubwordEmbeddingRequestReadFrom(uint64_t a1, void *a2)
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
        v14 = *(a1 + 16);
        *(a1 + 16) = v13;
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

    v14 = objc_alloc_init(SIRINLUEXTERNALRequestID);
    objc_storeStrong((a1 + 8), v14);
    v17[0] = 0;
    v17[1] = 0;
    if (!PBReaderPlaceMark() || !SIRINLUEXTERNALRequestIDReadFrom(v14, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sirinluinternalitfm::ITFMHypothesis::formatText(sirinluinternalitfm::ITFMHypothesis *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 24);
  if (v5)
  {
    v6 = *(this + 4);
    PB::TextFormatter::format(a2, "label");
    v5 = *(this + 24);
  }

  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "probability", *(this + 5));
  }

  if (*(this + 1))
  {
    PB::TextFormatter::format();
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluinternalitfm::ITFMHypothesis::readFrom(sirinluinternalitfm::ITFMHypothesis *this, PB::Reader *a2)
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
        goto LABEL_50;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        operator new();
      }

      if (v22 == 2)
      {
        *(this + 24) |= 2u;
        v32 = *(a2 + 1);
        if (v32 <= 0xFFFFFFFFFFFFFFFBLL && v32 + 4 <= *(a2 + 2))
        {
          *(this + 5) = *(*a2 + v32);
          *(a2 + 1) += 4;
        }

        else
        {
          *(a2 + 24) = 1;
        }
      }

      else if (v22 == 1)
      {
        *(this + 24) |= 1u;
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
              goto LABEL_48;
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
LABEL_43:
              LODWORD(v28) = 0;
              goto LABEL_48;
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

LABEL_48:
        *(this + 4) = v28;
      }

      else
      {
LABEL_17:
        if (!PB::Reader::skip(a2))
        {
          v39 = 0;
          return v39 & 1;
        }
      }

      v2 = *(a2 + 1);
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

LABEL_50:
  v39 = v4 ^ 1;
  return v39 & 1;
}

uint64_t sirinluinternalitfm::ITFMHypothesis::operator=(uint64_t a1, const sirinluinternalitfm::ITFMHypothesis *a2)
{
  if (a1 != a2)
  {
    sirinluinternalitfm::ITFMHypothesis::ITFMHypothesis(&v8, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v12;
    v12 = v3;
    v4 = *(a1 + 16);
    *(a1 + 16) = v10;
    v10 = v4;
    v5 = *(a1 + 20);
    *(a1 + 20) = v11;
    v11 = v5;
    v6 = *(a1 + 8);
    *(a1 + 8) = v9;
    v9 = v6;
    sirinluinternalitfm::ITFMHypothesis::~ITFMHypothesis(&v8);
  }

  return a1;
}

float sirinluinternalitfm::swap(sirinluinternalitfm *this, sirinluinternalitfm::ITFMHypothesis *a2, sirinluinternalitfm::ITFMHypothesis *a3)
{
  v3 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v3;
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  result = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = result;
  v6 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v6;
  return result;
}

uint64_t sirinluinternalitfm::ITFMHypothesis::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluinternalitfm::ITFMHypothesis::ITFMHypothesis(&v8, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v12;
    v12 = v3;
    v4 = *(a1 + 16);
    *(a1 + 16) = v10;
    v10 = v4;
    v5 = *(a1 + 20);
    *(a1 + 20) = v11;
    v11 = v5;
    v6 = *(a1 + 8);
    *(a1 + 8) = v9;
    v9 = v6;
    sirinluinternalitfm::ITFMHypothesis::~ITFMHypothesis(&v8);
  }

  return a1;
}

BOOL sirinluinternalitfm::ITFMHypothesis::operator==(uint64_t a1, uint64_t a2)
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

unint64_t sirinluinternalitfm::ITFMHypothesis::hash_value(sirinluinternalitfm::ITFMHypothesis *this)
{
  if ((*(this + 24) & 1) == 0)
  {
    v1 = 0;
    if ((*(this + 24) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v3 = 0;
    goto LABEL_8;
  }

  v1 = *(this + 4);
  if ((*(this + 24) & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  v2 = *(this + 5);
  if (v2 == 0.0)
  {
    v3 = 0;
  }

  else
  {
    v3 = LODWORD(v2);
  }

LABEL_8:
  v4 = *(this + 1);
  if (v4)
  {
    v4 = std::__string_hash<char>::operator()[abi:ne200100](v4);
  }

  return v3 ^ v1 ^ v4;
}

uint64_t sirinluinternalplan_generation::PlanGenerationResponse::formatText(sirinluinternalplan_generation::PlanGenerationResponse *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, a2, "mappings");
  }

  v8 = *(this + 4);
  for (i = *(this + 5); v8 != i; v8 += 24)
  {
    PB::TextFormatter::format();
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluinternalplan_generation::PlanGenerationResponse::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 32);
  v5 = *(this + 40);
  while (v4 != v5)
  {
    this = PB::Writer::write();
    v4 += 24;
  }

  v7 = *(v3 + 8);
  v6 = *(v3 + 16);
  while (v7 != v6)
  {
    v8 = *v7++;
    this = PB::Writer::writeSubmessage(a2, v8);
  }

  return this;
}

uint64_t sirinluinternalplan_generation::PlanGenerationResponse::readFrom(sirinluinternalplan_generation::PlanGenerationResponse *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v7 = (this + 32);
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
          goto LABEL_24;
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
        operator new();
      }

      if ((v11 >> 3) == 1)
      {
        v23 = *(this + 5);
        v24 = *(this + 6);
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
          v31 = *(this + 4);
          v32 = *(this + 5) - v31;
          v33 = 24 * v26 - v32;
          memcpy((v30 - v32), v31, v32);
          v34 = *(this + 4);
          *(this + 4) = v33;
          *(this + 5) = v25;
          v35 = *(this + 6);
          *(this + 6) = 0;
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

        *(this + 5) = v25;
        PB::Reader::read();
      }

      else
      {
LABEL_24:
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
        goto LABEL_24;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_41:
  v37 = v4 ^ 1;
  return v37 & 1;
}

void sirinluinternalplan_generation::PlanGenerationResponse::~PlanGenerationResponse(sirinluinternalplan_generation::PlanGenerationResponse *this)
{
  sirinluinternalplan_generation::PlanGenerationResponse::~PlanGenerationResponse(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4876950;
  v2 = (this + 32);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 1))
  {
    std::vector<std::unique_ptr<siricommon::StringValue>>::clear[abi:ne200100](this + 1);
    operator delete(*(this + 1));
  }

  PB::Base::~Base(this);
}

double sirinluinternalplan_generation::PlanGenerationResponse::PlanGenerationResponse(sirinluinternalplan_generation::PlanGenerationResponse *this)
{
  *this = &unk_1F4876950;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

{
  *this = &unk_1F4876950;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

sirinluinternalplan_generation::PlanGenerationResponse *sirinluinternalplan_generation::PlanGenerationResponse::PlanGenerationResponse(std::string **this, std::string **a2)
{
  *this = &unk_1F4876950;
  *(this + 1) = 0u;
  *(this + 3) = 0u;
  *(this + 5) = 0u;
  if (this != a2)
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((this + 4), a2[4], a2[5], 0xAAAAAAAAAAAAAAABLL * ((a2[5] - a2[4]) >> 3));
  }

  v4 = a2[1];
  if (v4 != a2[2])
  {
    v5 = v4->__r_.__value_.__r.__words[0];
    operator new();
  }

  return this;
}

uint64_t sirinluinternalplan_generation::PlanGenerationResponse::operator=(uint64_t a1, std::string **a2)
{
  if (a1 != a2)
  {
    sirinluinternalplan_generation::PlanGenerationResponse::PlanGenerationResponse(&v8, a2);
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
    sirinluinternalplan_generation::PlanGenerationResponse::~PlanGenerationResponse(&v8);
  }

  return a1;
}

void *sirinluinternalplan_generation::swap(void *this, sirinluinternalplan_generation::PlanGenerationResponse *a2, sirinluinternalplan_generation::PlanGenerationResponse *a3)
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

uint64_t sirinluinternalplan_generation::PlanGenerationResponse::PlanGenerationResponse(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4876950;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  std::vector<std::string>::__vdeallocate((a1 + 32));
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
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

uint64_t sirinluinternalplan_generation::PlanGenerationResponse::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluinternalplan_generation::PlanGenerationResponse::PlanGenerationResponse(v8, a2);
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
    sirinluinternalplan_generation::PlanGenerationResponse::~PlanGenerationResponse(v8);
  }

  return a1;
}

BOOL sirinluinternalplan_generation::PlanGenerationResponse::operator==(void *a1, void *a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a2[4];
  if (v3 - v2 != a2[5] - v4)
  {
    return 0;
  }

  while (v2 != v3)
  {
    result = std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(v2, v4);
    if (!result)
    {
      return result;
    }

    v2 += 24;
    v4 += 3;
  }

  v10 = a1 + 1;
  v8 = a1[1];
  v9 = v10[1];
  v12 = a2 + 1;
  v11 = a2[1];
  if (v9 - v8 != v12[1] - v11)
  {
    return 0;
  }

  if (v8 == v9)
  {
    return 1;
  }

  do
  {
    v14 = *v8++;
    v13 = v14;
    v15 = *v11++;
    result = sirinluinternalplan_generation::VariableEventIdPair::operator==(v13, v15);
  }

  while (result && v8 != v9);
  return result;
}

uint64_t sirinluinternalplan_generation::PlanGenerationResponse::hash_value(sirinluinternalplan_generation::PlanGenerationResponse *this)
{
  v2 = *(this + 4);
  v3 = *(this + 5);
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
      v7 ^= sirinluinternalplan_generation::VariableEventIdPair::hash_value(v8);
    }

    while (v6 != v5);
  }

  return v7 ^ v4;
}

uint64_t sirinluexternal::SystemReportedFailure::formatText(sirinluexternal::SystemReportedFailure *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "reason");
  }

  v6 = *(this + 2);
  if (v6)
  {
    (*(*v6 + 32))(v6, a2, "task");
  }

  v7 = *(this + 3);
  if (v7)
  {
    (*(*v7 + 32))(v7, a2, "task_id");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternal::SystemReportedFailure::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 24);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  v5 = *(v3 + 8);
  if (v5)
  {
    this = PB::Writer::writeSubmessage(a2, v5);
  }

  v6 = *(v3 + 16);
  if (v6)
  {

    return PB::Writer::writeSubmessage(a2, v6);
  }

  return this;
}

uint64_t sirinluexternal::SystemReportedFailure::readFrom(sirinluexternal::SystemReportedFailure *this, PB::Reader *a2)
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

void sirinluexternal::SystemReportedFailure::~SystemReportedFailure(sirinluexternal::SystemReportedFailure *this)
{
  sirinluexternal::SystemReportedFailure::~SystemReportedFailure(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F48769A0;
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
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  PB::Base::~Base(this);
}

void *sirinluexternal::SystemReportedFailure::SystemReportedFailure(void *this)
{
  *this = &unk_1F48769A0;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_1F48769A0;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

void *sirinluexternal::SystemReportedFailure::SystemReportedFailure(void *this, const sirinluexternal::SystemReportedFailure *a2)
{
  *this = &unk_1F48769A0;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
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

uint64_t sirinluexternal::SystemReportedFailure::operator=(uint64_t a1, const sirinluexternal::SystemReportedFailure *a2)
{
  if (a1 != a2)
  {
    sirinluexternal::SystemReportedFailure::SystemReportedFailure(&v6, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    sirinluexternal::SystemReportedFailure::~SystemReportedFailure(&v6);
  }

  return a1;
}

void *sirinluexternal::swap(void *this, sirinluexternal::SystemReportedFailure *a2, sirinluexternal::SystemReportedFailure *a3)
{
  v3 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v3;
  v4 = this[1];
  this[1] = *(a2 + 1);
  *(a2 + 1) = v4;
  v5 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v5;
  return this;
}

void *sirinluexternal::SystemReportedFailure::SystemReportedFailure(void *a1, void *a2)
{
  *a1 = &unk_1F48769A0;
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

  v7 = a2[1];
  a2[1] = 0;
  v8 = *v4;
  *v4 = v7;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = a2[2];
  a2[2] = 0;
  v10 = a1[2];
  a1[2] = v9;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  return a1;
}

uint64_t sirinluexternal::SystemReportedFailure::operator=(uint64_t a1, void *a2)
{
  if (a1 != a2)
  {
    sirinluexternal::SystemReportedFailure::SystemReportedFailure(&v6, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    sirinluexternal::SystemReportedFailure::~SystemReportedFailure(&v6);
  }

  return a1;
}

BOOL sirinluexternal::SystemReportedFailure::operator==(void *a1, void *a2)
{
  v4 = a1[3];
  v5 = a2[3];
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

  v6 = a1[1];
  v7 = a2[1];
  if (!v6)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (!v7 || !sirinluexternal::UsoGraph::operator==(v6, v7))
  {
    return 0;
  }

LABEL_9:
  v8 = a1[2];
  v9 = a2[2];
  result = (v8 | v9) == 0;
  if (v8 && v9)
  {
    v11 = a1[2];

    return sirinluexternal::UsoGraph::operator==(v11, v9);
  }

  return result;
}

unint64_t sirinluexternal::SystemReportedFailure::hash_value(sirinluexternal::SystemReportedFailure *this)
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
  v7 = *(this + 1);
  if (v7)
  {
    v8 = sirinluexternal::UsoGraph::hash_value(v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(this + 2);
  if (v9)
  {
    v9 = sirinluexternal::UsoGraph::hash_value(v9);
  }

  return v8 ^ v6 ^ v9;
}

uint64_t sirinluexternal::SystemReportedFailure::makeTaskId(uint64_t this)
{
  if (!*(this + 24))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::SystemReportedFailure::makeReason(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::SystemReportedFailure::makeTask(uint64_t this)
{
  if (!*(this + 16))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::UsoEdge::formatText(sirinluexternal::UsoEdge *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 24))
  {
    v5 = *(this + 4);
    PB::TextFormatter::format(a2, "from_index");
  }

  v6 = *(this + 1);
  if (v6)
  {
    (*(*v6 + 32))(v6, a2, "label");
  }

  if ((*(this + 24) & 2) != 0)
  {
    v7 = *(this + 5);
    PB::TextFormatter::format(a2, "to_index");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternal::UsoEdge::writeTo(uint64_t this, PB::Writer *a2)
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

uint64_t sirinluexternal::UsoEdge::readFrom(sirinluexternal::UsoEdge *this, PB::Reader *a2)
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

void sirinluexternal::UsoEdge::~UsoEdge(sirinluexternal::UsoEdge *this)
{
  sirinluexternal::UsoEdge::~UsoEdge(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  v2 = *(this + 1);
  *this = &unk_1F48769F0;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

uint64_t sirinluexternal::UsoEdge::UsoEdge(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_1F48769F0;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_1F48769F0;
  *(this + 24) = 0;
  return this;
}

uint64_t sirinluexternal::UsoEdge::UsoEdge(uint64_t this, const sirinluexternal::UsoEdge *a2)
{
  *this = &unk_1F48769F0;
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

uint64_t sirinluexternal::UsoEdge::operator=(uint64_t a1, const sirinluexternal::UsoEdge *a2)
{
  if (a1 != a2)
  {
    sirinluexternal::UsoEdge::UsoEdge(&v7, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v10;
    v10 = v3;
    v4 = *(a1 + 16);
    *(a1 + 16) = v9;
    v9 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v5;
    sirinluexternal::UsoEdge::~UsoEdge(&v7);
  }

  return a1;
}

uint64_t sirinluexternal::swap(uint64_t this, sirinluexternal::UsoEdge *a2, sirinluexternal::UsoEdge *a3)
{
  v3 = *(this + 24);
  *(this + 24) = *(a2 + 6);
  *(a2 + 6) = v3;
  v4 = *(this + 16);
  *(this + 16) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 20);
  *(this + 20) = *(a2 + 5);
  *(a2 + 5) = v5;
  v6 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v6;
  return this;
}

uint64_t sirinluexternal::UsoEdge::UsoEdge(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F48769F0;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
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

uint64_t sirinluexternal::UsoEdge::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluexternal::UsoEdge::UsoEdge(&v7, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v10;
    v10 = v3;
    v4 = *(a1 + 16);
    *(a1 + 16) = v9;
    v9 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v5;
    sirinluexternal::UsoEdge::~UsoEdge(&v7);
  }

  return a1;
}

BOOL sirinluexternal::UsoEdge::operator==(uint64_t a1, uint64_t a2)
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
      return sirinluexternal::UsoEdgeLabel::operator==(v3, v4);
    }
  }

  return result;
}

unint64_t sirinluexternal::UsoEdge::hash_value(sirinluexternal::UsoEdge *this)
{
  if (*(this + 24))
  {
    v1 = *(this + 4);
    if ((*(this + 24) & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v1 = 0;
    if ((*(this + 24) & 2) != 0)
    {
LABEL_3:
      v2 = *(this + 5);
      goto LABEL_6;
    }
  }

  v2 = 0;
LABEL_6:
  v3 = *(this + 1);
  if (v3)
  {
    v3 = sirinluexternal::UsoEdgeLabel::hash_value(v3);
  }

  return v2 ^ v1 ^ v3;
}

uint64_t sirinluexternal::UsoEdge::makeLabel(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

siri::ontology::UsoEntityNode *siri::ontology::setUtteranceAlignmentMessageIfExists(int a1, char **lpsrc, int a3)
{
  v4 = **lpsrc;
  if (result)
  {
    v6 = result;
    if (*(result + 7) != *(result + 8))
    {
      v16 = &unk_1F4876200;
      __src = 0;
      v18 = 0;
      v19 = 0;
      v21 = a3;
      v22 = 2;
      if (*siri::ontology::UsoEntityNode::getUtteranceAlignment(result) != -1)
      {
        v7 = *siri::ontology::UsoEntityNode::getUtteranceAlignment(v6);
        LOBYTE(v22) = v22 | 1;
        v20 = v7;
      }

      UtteranceAlignment = siri::ontology::UsoEntityNode::getUtteranceAlignment(v6);
      siri::ontology::UsoUtteranceAlignment::getSpans(&v14, UtteranceAlignment);
      if (v14 != v15)
      {
        v9 = *v14;
        v12 = **v14;
        v10 = (*v14)[1];
        if ((*v14)[2] != -1)
        {
          v13 = (*v14)[2];
        }

        if (v9[3] != -1)
        {
          v11 = v9[3];
        }

        *(v9 + 2);
        *(v9 + 3);
        operator new();
      }

      if (v14)
      {
        v15 = v14;
        operator delete(v14);
      }

      operator new();
    }
  }

  return result;
}

void sub_1C8AF3B88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, char a19)
{
  (*(*v19 + 8))(v19);
  sirinluexternal::UtteranceAlignment::~UtteranceAlignment(&a19);
  _Unwind_Resume(a1);
}

void siri::ontology::setIdentifierMessage(int a1, char **lpsrc, int a3)
{
  v4 = **lpsrc;
  if (v5)
  {
    siri::ontology::UsoEntityNode::getIdentifiers(&v18, v5);
    if (v18 != v19)
    {
      v6 = *v18;
      v13 = &unk_1F4877160;
      v17 = 4;
      v16 = 0u;
      v14 = 0u;
      v15 = 0u;
      DWORD2(v16) = a3;
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__str, *v6, *(v6 + 8));
        if (*(&v15 + 1))
        {
          if (*(*(&v15 + 1) + 23) < 0)
          {
            operator delete(**(&v15 + 1));
          }

          **(&v15 + 1) = __str;
          if (*(v6 + 47) < 0)
          {
            std::string::__init_copy_ctor_external(&__str, *(v6 + 24), *(v6 + 32));
          }

          else
          {
            __str = *(v6 + 24);
          }

          if (!v14)
          {
            operator new();
          }

          if (*(v14 + 23) < 0)
          {
            operator delete(*v14);
          }

          *v14 = __str;
          std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&__str, (v6 + 48));
          if (v21 == 1)
          {
            sirinluexternal::UsoEntityIdentifier::makeNamespaceA(&v13);
            if ((v21 & 1) == 0)
            {
              std::__throw_bad_optional_access[abi:ne200100]();
            }

            v7 = *(&v14 + 1);
            siricommon::StringValue::makeValue(*(&v14 + 1));
            std::string::operator=(*(v7 + 8), &__str);
            if ((v21 & 1) != 0 && SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }
          }

          if (*(v6 + 88))
          {
            v8 = *(v6 + 80);
            sirinluexternal::UsoEntityIdentifier::makeProbability(&v13);
            v9 = v15;
            *(v15 + 16) |= 1u;
            *(v9 + 8) = v8;
          }

          v10 = *(v6 + 96);
          if ((v10 & 0x100000000) != 0)
          {
            LOBYTE(v17) = v17 | 8;
            HIDWORD(v16) = v10;
          }

          v11 = *(v6 + 104);
          if ((v11 & 0x100000000) != 0)
          {
            LOBYTE(v17) = v17 | 1;
            LODWORD(v16) = v11;
          }

          v12 = *(v6 + 112);
          if ((v12 & 0x100000000) != 0)
          {
            LOBYTE(v17) = v17 | 2;
            DWORD1(v16) = v12;
          }

          operator new();
        }
      }

      else
      {
        __str = *v6;
      }

      operator new();
    }

    if (v18)
    {
      v19 = v18;
      operator delete(v18);
    }
  }
}

void sub_1C8AF4010(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  (*(*v27 + 8))(v27);
  sirinluexternal::UsoEntityIdentifier::~UsoEntityIdentifier(&a10);
  if (__p)
  {
    a19 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

std::string *std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](std::string *this, __int128 *a2)
{
  this->__r_.__value_.__s.__data_[0] = 0;
  this[1].__r_.__value_.__s.__data_[0] = 0;
  if (*(a2 + 24) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
    }

    else
    {
      v3 = *a2;
      this->__r_.__value_.__r.__words[2] = *(a2 + 2);
      *&this->__r_.__value_.__l.__data_ = v3;
    }

    this[1].__r_.__value_.__s.__data_[0] = 1;
  }

  return this;
}

void sub_1C8AF411C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1 && *(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_bad_optional_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E55D8] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E5418], MEMORY[0x1E69E52A0]);
}

uint64_t siricommon::StringValue::makeValue(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

void siri::ontology::setEntitySpanMessage(int a1, char **lpsrc, int a3)
{
  v3 = **lpsrc;
  if (v4)
  {
    siri::ontology::UsoEntityNode::getEntitySpans(&v71, v4);
    v5 = v71;
    if (v71 != v72)
    {
      v62 = &unk_1F4876060;
      v70 = 1;
      v68 = 0u;
      v69 = 0u;
      __src = 0u;
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      DWORD2(v69) = a3;
      std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&__str, *v71);
      if (v74 == 1)
      {
        sirinluexternal::UsoEntitySpan::makeOriginAppId(&v62);
        if ((v74 & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        v6 = v66;
        siricommon::StringValue::makeValue(v66);
        std::string::operator=(*(v6 + 8), &__str);
        if ((v74 & 1) != 0 && SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }
      }

      v7 = *v5;
      v8 = *(*v5 + 4);
      if ((v8 & 0x100000000) != 0)
      {
        LOBYTE(v70) = v70 | 2;
        HIDWORD(v69) = v8;
        v7 = *v5;
      }

      std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&__str, (v7 + 40));
      if (v74 == 1)
      {
        sirinluexternal::UsoEntitySpan::makeLabel(&v62);
        if ((v74 & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        v9 = v65;
        siricommon::StringValue::makeValue(v65);
        std::string::operator=(*(v9 + 8), &__str);
        if ((v74 & 1) != 0 && SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }
      }

      std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&__str, (*v5 + 152));
      if (v74 == 1)
      {
        sirinluexternal::UsoEntitySpan::makeOriginEntityId(&v62);
        if ((v74 & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        v10 = *(&v66 + 1);
        siricommon::StringValue::makeValue(*(&v66 + 1));
        std::string::operator=(*(v10 + 8), &__str);
        if ((v74 & 1) != 0 && SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }
      }

      v11 = *v5;
      v12 = *(*v5 + 14);
      if ((v12 & 0x100000000) != 0)
      {
        sirinluexternal::UsoEntitySpan::makeStartIndex(&v62);
        v13 = v69;
        *(v69 + 12) |= 1u;
        *(v13 + 8) = v12;
        v11 = *v5;
      }

      v14 = *(v11 + 15);
      if ((v14 & 0x100000000) != 0)
      {
        sirinluexternal::UsoEntitySpan::makeEndIndex(&v62);
        v15 = *(&v64 + 1);
        *(*(&v64 + 1) + 12) |= 1u;
        *(v15 + 8) = v14;
        v11 = *v5;
      }

      v55 = v5;
      if (*(v11 + 80) == 1)
      {
        v16 = *(v11 + 9);
        sirinluexternal::UsoEntitySpan::makeMatchInfo(&v62);
        v17 = *v16;
        if (*v16)
        {
          v18 = *(&v65 + 1);
          *(*(&v65 + 1) + 100) |= 1u;
          *(v18 + 96) = v17;
        }

        if (v16[2])
        {
          v19 = v16[1];
          sirinluexternal::MatchInfo::makeMatchScore(*(&v65 + 1));
          v20 = *(*(&v65 + 1) + 40);
          *(v20 + 12) |= 1u;
          *(v20 + 8) = v19;
        }

        v21 = *(v16 + 3);
        if ((v21 & 0x100000000) != 0)
        {
          sirinluexternal::MatchInfo::makeMaxTokenCount(*(&v65 + 1));
          v22 = *(*(&v65 + 1) + 88);
          *(v22 + 12) |= 1u;
          *(v22 + 8) = v21;
        }

        v23 = *(v16 + 7);
        if ((v23 & 0x100000000) != 0)
        {
          sirinluexternal::MatchInfo::makeMaxStopWordCount(*(&v65 + 1));
          v24 = *(*(&v65 + 1) + 80);
          *(v24 + 12) |= 1u;
          *(v24 + 8) = v23;
        }

        v25 = *(v16 + 9);
        if ((v25 & 0x100000000) != 0)
        {
          sirinluexternal::MatchInfo::makeMatchedStopWordCount(*(&v65 + 1));
          v26 = *(*(&v65 + 1) + 56);
          *(v26 + 12) |= 1u;
          *(v26 + 8) = v25;
        }

        v27 = *(v16 + 11);
        if ((v27 & 0x100000000) != 0)
        {
          sirinluexternal::MatchInfo::makeEditDistance(*(&v65 + 1));
          v28 = *(*(&v65 + 1) + 32);
          *(v28 + 12) |= 1u;
          *(v28 + 8) = v27;
        }

        v29 = *(v16 + 13);
        if ((v29 & 0x100000000) != 0)
        {
          sirinluexternal::MatchInfo::makeMaxAliasCount(*(&v65 + 1));
          v30 = *(*(&v65 + 1) + 72);
          *(v30 + 12) |= 1u;
          *(v30 + 8) = v29;
        }

        v31 = *(v16 + 15);
        if ((v31 & 0x100000000) != 0)
        {
          sirinluexternal::MatchInfo::makeMatchedAliasCount(*(&v65 + 1));
          v32 = *(*(&v65 + 1) + 48);
          *(v32 + 12) |= 1u;
          *(v32 + 8) = v31;
        }

        v33 = *(v16 + 5);
        if ((v33 & 0x100000000) != 0)
        {
          sirinluexternal::MatchInfo::makeMatchedTokenCount(*(&v65 + 1));
          v34 = *(*(&v65 + 1) + 64);
          *(v34 + 12) |= 1u;
          *(v34 + 8) = v33;
        }

        v35 = *(v16 + 9);
        v36 = *(v16 + 10);
        while (v35 != v36)
        {
          v37 = *v35;
          v38 = *(&v65 + 1);
          v40 = *(*(&v65 + 1) + 16);
          v39 = *(*(&v65 + 1) + 24);
          if (v40 >= v39)
          {
            v42 = *(*(&v65 + 1) + 8);
            v43 = v40 - v42;
            v44 = (v40 - v42) >> 2;
            v45 = v44 + 1;
            if ((v44 + 1) >> 62)
            {
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
            *v49 = v37;
            v41 = v49 + 1;
            memcpy(v50, v42, v43);
            v51 = v38[1];
            v38[1] = v50;
            v38[2] = v41;
            v38[3] = 0;
            if (v51)
            {
              operator delete(v51);
            }
          }

          else
          {
            *v40 = v37;
            v41 = v40 + 4;
          }

          v38[2] = v41;
          ++v35;
        }
      }

      siri::ontology::UsoEntitySpan::getAlternatives(&v56, *v55);
      if (v56 != v57)
      {
        v52 = *v56;
        v59 = &unk_1F4877890;
        v60 = 0;
        v61 = 0;
        operator new();
      }

      if (v56)
      {
        *&v57 = v56;
        operator delete(v56);
      }

      siri::ontology::UsoEntitySpan::getSpanProperties(&v59, *v55);
      if (v59 != v60)
      {
        v53 = v59->__r_.__value_.__r.__words[0];
        v56 = &unk_1F4877070;
        v57 = 0u;
        v58 = 0u;
        operator new();
      }

      if (v59)
      {
        v60 = v59;
        operator delete(v59);
      }

      operator new();
    }

    if (v71)
    {
      v72 = v71;
      operator delete(v71);
    }
  }
}

void sub_1C8AF4BFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  sirinluexternal::UsoEntitySpan::~UsoEntitySpan(&a26);
  v28 = *(v26 - 168);
  if (v28)
  {
    *(v26 - 160) = v28;
    operator delete(v28);
  }

  _Unwind_Resume(a1);
}

void siri::ontology::setNodeMessage(int a1, uint64_t a2, unint64_t *a3, int a4)
{
  v8 = (*(*a3 + 16))(a3);
  if (v8 <= 2)
  {
    switch(v8)
    {
      case 0:
        goto LABEL_5;
      case 1:
        v18 = **a3;
        if (v19)
        {
          v20 = v19;
          v21 = *(v19[3] + 36);
          *(a2 + 76) |= 1u;
          *(a2 + 72) = v21;
          if (!v21)
          {
            v22 = v19[3];
            siricommon::StringValue::makeValue(a2);
            std::string::operator=(*(a2 + 8), (v22 + 8));
          }

          sirinluexternal::UsoNode::makeUsoVerbElementId(a2);
          v23 = *(v20[13] + 36);
          v24 = *(a2 + 56);
          *(v24 + 12) |= 1u;
          *(v24 + 8) = v23;
          if (!v23)
          {
            v25 = v20[13];
            v26 = *(a2 + 64);
            if (!v26)
            {
              operator new();
            }

            std::string::operator=(v26, (v25 + 8));
          }

          siri::ontology::setIdentifierMessage(a1, a3, a4);
          goto LABEL_29;
        }

        goto LABEL_42;
      case 2:
LABEL_5:
        v9 = **a3;
        if (v10)
        {
          v11 = *(v10[3] + 36);
          *(a2 + 76) |= 1u;
          *(a2 + 72) = v11;
          if (!v11)
          {
            v12 = v10[3];
            siricommon::StringValue::makeValue(a2);
            std::string::operator=(*(a2 + 8), (v12 + 8));
          }

LABEL_28:
          siri::ontology::setIdentifierMessage(a1, a3, a4);
          siri::ontology::setUtteranceAlignmentMessageIfExists(a1, a3, a4);
LABEL_29:

          siri::ontology::setEntitySpanMessage(a1, a3, a4);
          return;
        }

        goto LABEL_42;
    }

    goto LABEL_43;
  }

  switch(v8)
  {
    case 3:
      v33 = **a3;
      if (!v34)
      {
        goto LABEL_42;
      }

      v35 = v34;
      v36 = *(*(v34 + 3) + 36);
      *(a2 + 76) |= 1u;
      *(a2 + 72) = v36;
      std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&__p, (v34 + 104));
      if (v46 == 1)
      {
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        sirinluexternal::UsoNode::makeStringPayload(a2);
        v37 = *(a2 + 48);
        std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&__p, (v35 + 104));
        if ((v46 & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        siricommon::StringValue::makeValue(v37);
        v38 = *(v37 + 8);
        if (*(v38 + 23) < 0)
        {
          operator delete(*v38);
        }

        v39 = *&__p.__r_.__value_.__l.__data_;
        *(v38 + 16) = *(&__p.__r_.__value_.__l + 2);
        *v38 = v39;
      }

      siri::ontology::setIdentifierMessage(a1, a3, a4);
      siri::ontology::setUtteranceAlignmentMessageIfExists(a1, a3, a4);
      siri::ontology::setEntitySpanMessage(a1, a3, a4);
      break;
    case 4:
      v27 = **a3;
      if (v28)
      {
        v29 = v28;
        v30 = *(v28[3] + 36);
        *(a2 + 76) |= 1u;
        *(a2 + 72) = v30;
        if (v28[14])
        {
          sirinluexternal::UsoNode::makeIntegerPayload(a2);
          if ((v29[14] & 1) == 0)
          {
            std::__throw_bad_optional_access[abi:ne200100]();
          }

          v31 = v29[13];
          v32 = *(a2 + 16);
          *(v32 + 16) |= 1u;
          *(v32 + 8) = v31;
        }

        goto LABEL_28;
      }

LABEL_42:
      __cxa_bad_cast();
    case 5:
      v13 = **a3;
      if (!v14)
      {
        goto LABEL_42;
      }

      v15 = *(v14[3] + 36);
      *(a2 + 76) |= 1u;
      *(a2 + 72) = v15;
      if (!v15)
      {
        v16 = v14[3];
        siricommon::StringValue::makeValue(a2);
        v17 = *(a2 + 8);

        std::string::operator=(v17, (v16 + 8));
      }

      break;
    default:
LABEL_43:
      std::string::basic_string[abi:ne200100]<0>(&__p, "UsoGraphProtoWriterException");
      std::to_string(&v42, a3[2]);
      v40 = std::string::insert(&v42, 0, "Unknown UsoGraphNode, vertex: ");
      v41 = *&v40->__r_.__value_.__l.__data_;
      v44 = v40->__r_.__value_.__r.__words[2];
      v43 = v41;
      v40->__r_.__value_.__l.__size_ = 0;
      v40->__r_.__value_.__r.__words[2] = 0;
      v40->__r_.__value_.__r.__words[0] = 0;
      siri::ontology::throwException<siri::ontology::UsoGraphProtoWriterException,char const*,int,char const*,std::string>();
  }
}

void sub_1C8AF52DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void siri::ontology::throwException<siri::ontology::UsoGraphProtoWriterException,char const*,int,char const*,std::string>()
{
  exception = __cxa_allocate_exception(0x70uLL);
  std::string::basic_string[abi:ne200100]<0>(v2, "/Library/Caches/com.apple.xbs/Sources/SiriNLUTypes/serializers/SiriOntology/cpp/UsoGraphProtoWriter.cpp");
  std::string::basic_string[abi:ne200100]<0>(v1, "setNodeMessage");
  siri::ontology::OntologyBaseException::OntologyBaseException();
  *exception = &unk_1F4876A58;
}

void sub_1C8AF54A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
    if ((v21 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v20);
  goto LABEL_8;
}

void siri::ontology::OntologyBaseException::~OntologyBaseException(std::exception *this)
{
  this->__vftable = &unk_1F4878870;
  if (SHIBYTE(this[13].__vftable) < 0)
  {
    operator delete(this[11].__vftable);
  }

  if (SHIBYTE(this[10].__vftable) < 0)
  {
    operator delete(this[8].__vftable);
  }

  if (SHIBYTE(this[6].__vftable) < 0)
  {
    operator delete(this[4].__vftable);
  }

  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);
}

{
  siri::ontology::OntologyBaseException::~OntologyBaseException(this);

  JUMPOUT(0x1CCA7EC50);
}

uint64_t siri::ontology::OntologyBaseException::what(siri::ontology::OntologyBaseException *this)
{
  result = this + 88;
  if (*(this + 111) < 0)
  {
    return *result;
  }

  return result;
}

void siri::ontology::UsoGraphProtoWriterException::~UsoGraphProtoWriterException(std::exception *this)
{
  siri::ontology::OntologyBaseException::~OntologyBaseException(this);

  JUMPOUT(0x1CCA7EC50);
}

void siri::ontology::UsoGraphProtoWriter::toProtobuf(siri::ontology::UsoGraphProtoWriter *this, const siri::ontology::UsoGraph *a2, sirinluexternal::UsoGraph *a3)
{
  v41 = &unk_1F4879278;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  sirinluexternal::UsoGraph::makeVersion(&v41);
  v5 = *(&v49 + 1);
  v6 = *(this + 2);
  *(*(&v49 + 1) + 20) |= 1u;
  *(v5 + 8) = v6;
  v7 = *(&v49 + 1);
  v8 = *(this + 3);
  *(*(&v49 + 1) + 20) |= 2u;
  *(v7 + 12) = v8;
  v9 = *(&v49 + 1);
  v10 = *(this + 4);
  *(*(&v49 + 1) + 20) |= 4u;
  *(v9 + 16) = v10;
  *__p = 0u;
  v39 = 0u;
  v40 = 1065353216;
  siri::ontology::UsoGraph::getNodes(&v36, this);
  if (v36 != v37)
  {
    v11 = *v36;
    v30 = &unk_1F4878010;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0;
    siri::ontology::setNodeMessage(&v41, &v30, v11, 0);
    v12 = v11[2];
    if (__p[1])
    {
      v13 = vcnt_s8(__p[1]);
      v13.i16[0] = vaddlv_u8(v13);
      if (v13.u32[0] > 1uLL)
      {
        v14 = v11[2];
        if (v12 >= __p[1])
        {
          v14 = v12 % __p[1];
        }
      }

      else
      {
        v14 = (__p[1] - 1) & v12;
      }

      v15 = *(__p[0] + v14);
      if (v15)
      {
        for (i = *v15; i; i = *i)
        {
          v17 = i[1];
          if (v17 == v12)
          {
            if (i[2] == v12)
            {
              operator new();
            }
          }

          else
          {
            if (v13.u32[0] > 1uLL)
            {
              if (v17 >= __p[1])
              {
                v17 %= __p[1];
              }
            }

            else
            {
              v17 &= __p[1] - 1;
            }

            if (v17 != v14)
            {
              break;
            }
          }
        }
      }
    }

    operator new();
  }

  if (v36)
  {
    v37 = v36;
    operator delete(v36);
  }

  siri::ontology::UsoGraph::getEdges(&v36, this);
  if (v36 != v37)
  {
    v18 = *v36;
    v19 = __p[0];
    v20 = __p[1];
    v21 = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::find<unsigned long long>(__p[0], __p[1], **v36);
    if (v21)
    {
      v22 = v21;
      v23 = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::find<unsigned long long>(v19, v20, v18[1]);
      if (v23)
      {
        v50 = &unk_1F48769F0;
        LODWORD(v53) = 0;
        v51 = 0;
        v52 = 0;
        v24 = v22[3];
        LOBYTE(v53) = 1;
        v25 = v23[3];
        LOBYTE(v53) = 3;
        v52 = __PAIR64__(v25, v24);
        sirinluexternal::UsoEdge::makeLabel(&v50);
        v26 = *(v18 + 15);
        v27 = v51;
        v28 = *(v18 + 4);
        *(v51 + 24) |= 3u;
        *(v27 + 16) = v28;
        *(v27 + 20) = v26;
        if (!v26)
        {
          sirinluexternal::UsoEdgeLabel::makeBaseEdgeLabel(v27);
          v29 = *(*(v51 + 8) + 8);
          if (!v29)
          {
            operator new();
          }

          std::string::operator=(v29, (v18 + 4));
        }

        operator new();
      }

      std::string::basic_string[abi:ne200100]<0>(&v30, "UsoGraphProtoWriterException");
      siri::ontology::throwException<siri::ontology::UsoGraphProtoWriterException,char const*,int,char const*,char const*>(&v30, 373, "Unknown toNode edge");
    }

    std::string::basic_string[abi:ne200100]<0>(&v30, "UsoGraphProtoWriterException");
    siri::ontology::throwException<siri::ontology::UsoGraphProtoWriterException,char const*,int,char const*,char const*>(&v30, 369, "Unknown fromNode edge");
  }

  if (v36)
  {
    v37 = v36;
    operator delete(v36);
  }

  sirinluexternal::UsoGraph::operator=(a2, &v41);
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::~__hash_table(__p);
  sirinluexternal::UsoGraph::~UsoGraph(&v41);
}

void sub_1C8AF5EF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::~__hash_table(&a28);
  sirinluexternal::UsoGraph::~UsoGraph(&a34);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::find<unsigned long long>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = vcnt_s8(a2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a3;
    if (a3 >= a2)
    {
      v4 = a3 % a2;
    }
  }

  else
  {
    v4 = (a2 - 1) & a3;
  }

  v5 = *(a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  result = *v5;
  if (*v5)
  {
    do
    {
      v7 = result[1];
      if (v7 == a3)
      {
        if (result[2] == a3)
        {
          return result;
        }
      }

      else
      {
        if (v3.u32[0] > 1uLL)
        {
          if (v7 >= a2)
          {
            v7 %= a2;
          }
        }

        else
        {
          v7 &= a2 - 1;
        }

        if (v7 != v4)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void siri::ontology::throwException<siri::ontology::UsoGraphProtoWriterException,char const*,int,char const*,char const*>(uint64_t a1, uint64_t a2, char *a3)
{
  exception = __cxa_allocate_exception(0x70uLL);
  std::string::basic_string[abi:ne200100]<0>(v7, "/Library/Caches/com.apple.xbs/Sources/SiriNLUTypes/serializers/SiriOntology/cpp/UsoGraphProtoWriter.cpp");
  std::string::basic_string[abi:ne200100]<0>(v6, "toProtobuf");
  std::string::basic_string[abi:ne200100]<0>(v5, a3);
  siri::ontology::OntologyBaseException::OntologyBaseException();
  *exception = &unk_1F4876A58;
}

void sub_1C8AF61B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
    if ((v28 & 1) == 0)
    {
LABEL_10:
      _Unwind_Resume(a1);
    }
  }

  else if (!v28)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v27);
  goto LABEL_10;
}

void sub_1C8AF62C4(_Unwind_Exception *a1)
{
  *v1 = 0;
  (*(*v2 + 8))(v2);
  _Unwind_Resume(a1);
}

void sub_1C8AF6394(_Unwind_Exception *a1)
{
  *v1 = 0;
  (*(*v2 + 8))(v2);
  _Unwind_Resume(a1);
}

void sub_1C8AF6F44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14)
{
  if (a9)
  {
    (*(*a9 + 8))(a9);
  }

  std::unique_ptr<siri::ontology::UsoGraph>::~unique_ptr[abi:ne200100](&a10);

  std::unique_ptr<siri::ontology::UsoGraph>::~unique_ptr[abi:ne200100](&a11);
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  v18 = a14;
  a14 = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  _Unwind_Resume(a1);
}

uint64_t sirinluexternalnlu_router::NLParseResponse::formatText(sirinluexternalnlu_router::NLParseResponse *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, a2, "user_parses");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternalnlu_router::NLParseResponse::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  for (i = *(this + 16); v2 != i; this = PB::Writer::writeSubmessage(a2, v5))
  {
    v5 = *v2++;
  }

  return this;
}

uint64_t sirinluexternalnlu_router::NLParseResponse::readFrom(sirinluexternalnlu_router::NLParseResponse *this, PB::Reader *a2)
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

void sirinluexternalnlu_router::NLParseResponse::~NLParseResponse(sirinluexternalnlu_router::NLParseResponse *this)
{
  *this = &unk_1F4876A80;
  v2 = (this + 8);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v2);
  PB::Base::~Base(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4876A80;
  v2 = (this + 8);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v2);

  PB::Base::~Base(this);
}

{
  *this = &unk_1F4876A80;
  v2 = (this + 8);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v2);

  PB::Base::~Base(this);
}

void *sirinluexternalnlu_router::NLParseResponse::NLParseResponse(void *this)
{
  *this = &unk_1F4876A80;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_1F4876A80;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

void *sirinluexternalnlu_router::NLParseResponse::NLParseResponse(void *this, const sirinluexternalnlu_router::NLParseResponse *a2)
{
  this[1] = 0;
  *this = &unk_1F4876A80;
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

uint64_t sirinluexternalnlu_router::NLParseResponse::operator=(uint64_t a1, const sirinluexternalnlu_router::NLParseResponse *a2)
{
  if (a1 != a2)
  {
    sirinluexternalnlu_router::NLParseResponse::NLParseResponse(&v6, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v4;
    v6 = &unk_1F4876A80;
    v9 = &v7;
    std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v9);
    PB::Base::~Base(&v6);
  }

  return a1;
}

void *sirinluexternalnlu_router::swap(void *this, sirinluexternalnlu_router::NLParseResponse *a2, sirinluexternalnlu_router::NLParseResponse *a3)
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

uint64_t sirinluexternalnlu_router::NLParseResponse::NLParseResponse(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4876A80;
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
  *a1 = &unk_1F4876A80;
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

uint64_t sirinluexternalnlu_router::NLParseResponse::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v9 = &unk_1F4876A80;
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
    v9 = &unk_1F4876A80;
    std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v12);
    PB::Base::~Base(&v9);
  }

  return a1;
}

uint64_t sirinluexternalnlu_router::NLParseResponse::hash_value(sirinluexternalnlu_router::NLParseResponse *this)
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

uint64_t sirinluexternalnlu_router::App::formatText(sirinluexternalnlu_router::App *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 1))
  {
    PB::TextFormatter::format();
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternalnlu_router::App::writeTo(uint64_t this, PB::Writer *a2)
{
  if (*(this + 8))
  {
    return PB::Writer::write();
  }

  return this;
}

uint64_t sirinluexternalnlu_router::App::readFrom(sirinluexternalnlu_router::App *this, PB::Reader *a2)
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

void sirinluexternalnlu_router::App::~App(sirinluexternalnlu_router::App *this)
{
  sirinluexternalnlu_router::App::~App(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  v2 = *(this + 1);
  *this = &unk_1F4876AD0;
  *(this + 1) = 0;
  if (v2)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v2);
  }

  PB::Base::~Base(this);
}

void *sirinluexternalnlu_router::App::App(void *this)
{
  *this = &unk_1F4876AD0;
  this[1] = 0;
  return this;
}

{
  *this = &unk_1F4876AD0;
  this[1] = 0;
  return this;
}

void *sirinluexternalnlu_router::App::App(void *this, const sirinluexternalnlu_router::App *a2)
{
  *this = &unk_1F4876AD0;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const sirinluexternalnlu_router::App *sirinluexternalnlu_router::App::operator=(const sirinluexternalnlu_router::App *a1, const sirinluexternalnlu_router::App *a2)
{
  if (a1 != a2)
  {
    sirinluexternalnlu_router::App::App(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    sirinluexternalnlu_router::App::~App(&v5);
  }

  return a1;
}

uint64_t sirinluexternalnlu_router::swap(uint64_t this, sirinluexternalnlu_router::App *a2, sirinluexternalnlu_router::App *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *sirinluexternalnlu_router::App::App(void *a1, uint64_t a2)
{
  *a1 = &unk_1F4876AD0;
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
  *a1 = &unk_1F4876AD0;
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

uint64_t sirinluexternalnlu_router::App::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_1F4876AD0;
    v6[1] = v4;
    sirinluexternalnlu_router::App::~App(v6);
  }

  return a1;
}

BOOL sirinluexternalnlu_router::App::operator==(uint64_t a1, uint64_t a2)
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

unint64_t sirinluexternalnlu_router::App::hash_value(sirinluexternalnlu_router::App *this)
{
  result = *(this + 1);
  if (result)
  {
    return std::__string_hash<char>::operator()[abi:ne200100](result);
  }

  return result;
}

uint64_t sirinluexternalnlu_router::RetrievedContext::formatText(sirinluexternalnlu_router::RetrievedContext *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 20))
  {
    v5 = *(this + 4);
    PB::TextFormatter::format(a2, "type");
  }

  v6 = *(this + 1);
  if (v6)
  {
    (*(*v6 + 32))(v6, a2, "typed_value");
  }

  return MEMORY[0x1EEE30A90](a2);
}