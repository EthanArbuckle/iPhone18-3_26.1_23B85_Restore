uint64_t sirinluexternalnlu_router::RetrievedContext::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if (*(this + 20))
  {
    v4 = *(this + 16);
    this = PB::Writer::writeVarInt(a2);
  }

  v5 = *(v3 + 8);
  if (v5)
  {

    return PB::Writer::writeSubmessage(a2, v5);
  }

  return this;
}

uint64_t sirinluexternalnlu_router::RetrievedContext::readFrom(sirinluexternalnlu_router::RetrievedContext *this, PB::Reader *a2)
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

      if ((v10 >> 3) == 5)
      {
        operator new();
      }

      if ((v10 >> 3) == 3)
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
        if ((PB::Reader::skip(a2) & 1) == 0)
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

void sirinluexternalnlu_router::RetrievedContext::~RetrievedContext(sirinluexternalnlu_router::RetrievedContext *this)
{
  sirinluexternalnlu_router::RetrievedContext::~RetrievedContext(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  v2 = *(this + 1);
  *this = &unk_1F4876B20;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void *sirinluexternalnlu_router::RetrievedContext::RetrievedContext(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4876B20;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4876B20;
  return this;
}

uint64_t sirinluexternalnlu_router::RetrievedContext::RetrievedContext(uint64_t this, const sirinluexternalnlu_router::RetrievedContext *a2)
{
  *this = &unk_1F4876B20;
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

const sirinluexternalnlu_router::RetrievedContext *sirinluexternalnlu_router::RetrievedContext::operator=(const sirinluexternalnlu_router::RetrievedContext *a1, const sirinluexternalnlu_router::RetrievedContext *a2)
{
  if (a1 != a2)
  {
    sirinluexternalnlu_router::RetrievedContext::RetrievedContext(v6, a2);
    v3 = *(a1 + 2);
    *(a1 + 2) = v8;
    v8 = v3;
    v4 = *(a1 + 1);
    *(a1 + 1) = v7;
    v7 = v4;
    sirinluexternalnlu_router::RetrievedContext::~RetrievedContext(v6);
  }

  return a1;
}

uint64_t sirinluexternalnlu_router::swap(uint64_t this, sirinluexternalnlu_router::RetrievedContext *a2, sirinluexternalnlu_router::RetrievedContext *a3)
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

uint64_t sirinluexternalnlu_router::RetrievedContext::RetrievedContext(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4876B20;
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
    (*(*v4 + 8))(v4);
  }

  return a1;
}

uint64_t sirinluexternalnlu_router::RetrievedContext::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluexternalnlu_router::RetrievedContext::RetrievedContext(v6, a2);
    v3 = *(a1 + 16);
    *(a1 + 16) = v8;
    v8 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    sirinluexternalnlu_router::RetrievedContext::~RetrievedContext(v6);
  }

  return a1;
}

BOOL sirinluexternalnlu_router::RetrievedContext::operator==(uint64_t a1, uint64_t a2)
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
    return sirinluexternalnlu_router::TypedValue::operator==(v3, v4);
  }

  return result;
}

unint64_t sirinluexternalnlu_router::RetrievedContext::hash_value(sirinluexternalnlu_router::RetrievedContext *this)
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
    v3 = *(v2 + 8);
    if (v3)
    {
      v3 = sirinluexternalnlu_router::PrimitiveValue::hash_value(v3);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3 ^ v1;
}

uint64_t sirinluexternalnlu_router::RetrievedContext::makeTypedValue(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternalnlu_router::PommesResponse::formatText(sirinluexternalnlu_router::PommesResponse *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 1))
  {
    PB::TextFormatter::format();
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternalnlu_router::PommesResponse::writeTo(uint64_t this, PB::Writer *a2)
{
  if (*(this + 8))
  {
    return PB::Writer::write();
  }

  return this;
}

uint64_t sirinluexternalnlu_router::PommesResponse::readFrom(sirinluexternalnlu_router::PommesResponse *this, PB::Reader *a2)
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

      if ((v9 >> 3) == 4)
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

void sirinluexternalnlu_router::PommesResponse::~PommesResponse(sirinluexternalnlu_router::PommesResponse *this)
{
  sirinluexternalnlu_router::PommesResponse::~PommesResponse(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  v2 = *(this + 1);
  *this = &unk_1F4876B70;
  *(this + 1) = 0;
  if (v2)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v2);
  }

  PB::Base::~Base(this);
}

void *sirinluexternalnlu_router::PommesResponse::PommesResponse(void *this)
{
  *this = &unk_1F4876B70;
  this[1] = 0;
  return this;
}

{
  *this = &unk_1F4876B70;
  this[1] = 0;
  return this;
}

void *sirinluexternalnlu_router::PommesResponse::PommesResponse(void *this, const sirinluexternalnlu_router::PommesResponse *a2)
{
  *this = &unk_1F4876B70;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const sirinluexternalnlu_router::PommesResponse *sirinluexternalnlu_router::PommesResponse::operator=(const sirinluexternalnlu_router::PommesResponse *a1, const sirinluexternalnlu_router::PommesResponse *a2)
{
  if (a1 != a2)
  {
    sirinluexternalnlu_router::PommesResponse::PommesResponse(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    sirinluexternalnlu_router::PommesResponse::~PommesResponse(&v5);
  }

  return a1;
}

uint64_t sirinluexternalnlu_router::swap(uint64_t this, sirinluexternalnlu_router::PommesResponse *a2, sirinluexternalnlu_router::PommesResponse *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *sirinluexternalnlu_router::PommesResponse::PommesResponse(void *a1, uint64_t a2)
{
  *a1 = &unk_1F4876B70;
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
  *a1 = &unk_1F4876B70;
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

uint64_t sirinluexternalnlu_router::PommesResponse::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_1F4876B70;
    v6[1] = v4;
    sirinluexternalnlu_router::PommesResponse::~PommesResponse(v6);
  }

  return a1;
}

BOOL sirinluexternalnlu_router::PommesResponse::operator==(uint64_t a1, uint64_t a2)
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

unint64_t sirinluexternalnlu_router::PommesResponse::hash_value(sirinluexternalnlu_router::PommesResponse *this)
{
  result = *(this + 1);
  if (result)
  {
    return std::__string_hash<char>::operator()[abi:ne200100](result);
  }

  return result;
}

uint64_t sirinluexternalnlu_router::TypedValue::formatText(sirinluexternalnlu_router::TypedValue *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "primitive");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternalnlu_router::TypedValue::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2);
  }

  return this;
}

uint64_t sirinluexternalnlu_router::TypedValue::readFrom(sirinluexternalnlu_router::TypedValue *this, PB::Reader *a2)
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

void sirinluexternalnlu_router::TypedValue::~TypedValue(sirinluexternalnlu_router::TypedValue *this)
{
  sirinluexternalnlu_router::TypedValue::~TypedValue(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  v2 = *(this + 1);
  *this = &unk_1F4876BC0;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void *sirinluexternalnlu_router::TypedValue::TypedValue(void *this)
{
  *this = &unk_1F4876BC0;
  this[1] = 0;
  return this;
}

{
  *this = &unk_1F4876BC0;
  this[1] = 0;
  return this;
}

void *sirinluexternalnlu_router::TypedValue::TypedValue(void *this, const sirinluexternalnlu_router::TypedValue *a2)
{
  *this = &unk_1F4876BC0;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const sirinluexternalnlu_router::TypedValue *sirinluexternalnlu_router::TypedValue::operator=(const sirinluexternalnlu_router::TypedValue *a1, const sirinluexternalnlu_router::TypedValue *a2)
{
  if (a1 != a2)
  {
    sirinluexternalnlu_router::TypedValue::TypedValue(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    sirinluexternalnlu_router::TypedValue::~TypedValue(&v5);
  }

  return a1;
}

uint64_t sirinluexternalnlu_router::swap(uint64_t this, sirinluexternalnlu_router::TypedValue *a2, sirinluexternalnlu_router::TypedValue *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *sirinluexternalnlu_router::TypedValue::TypedValue(void *a1, uint64_t a2)
{
  *a1 = &unk_1F4876BC0;
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
  *a1 = &unk_1F4876BC0;
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

uint64_t sirinluexternalnlu_router::TypedValue::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_1F4876BC0;
    v6[1] = v4;
    sirinluexternalnlu_router::TypedValue::~TypedValue(v6);
  }

  return a1;
}

BOOL sirinluexternalnlu_router::TypedValue::operator==(uint64_t a1, uint64_t a2)
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
    return sirinluexternalnlu_router::PrimitiveValue::operator==(v2, v3);
  }
}

sirinluexternalnlu_router::PrimitiveValue *sirinluexternalnlu_router::TypedValue::hash_value(sirinluexternalnlu_router::TypedValue *this)
{
  result = *(this + 1);
  if (result)
  {
    return sirinluexternalnlu_router::PrimitiveValue::hash_value(result);
  }

  return result;
}

uint64_t sirinluexternalnlu_router::TypedValue::makePrimitive(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternalnlu_router::QueryDecorationOutput::formatText(sirinluexternalnlu_router::QueryDecorationOutput *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  for (i = *(this + 2); v5 != i; v5 += 24)
  {
    PB::TextFormatter::format();
  }

  v7 = *(this + 4);
  for (j = *(this + 5); v7 != j; v7 += 24)
  {
    PB::TextFormatter::format();
  }

  v9 = *(this + 7);
  v10 = *(this + 8);
  while (v9 != v10)
  {
    v11 = *v9++;
    (*(*v11 + 32))(v11, a2, "context");
  }

  v12 = *(this + 10);
  for (k = *(this + 11); v12 != k; v12 += 24)
  {
    PB::TextFormatter::format();
  }

  v14 = *(this + 13);
  for (m = *(this + 14); v14 != m; v14 += 24)
  {
    PB::TextFormatter::format();
  }

  v16 = *(this + 16);
  v17 = *(this + 17);
  while (v16 != v17)
  {
    v18 = *v16++;
    (*(*v18 + 32))(v18, a2, "required_context");
  }

  v19 = *(this + 19);
  v20 = *(this + 20);
  while (v19 != v20)
  {
    v21 = *v19++;
    (*(*v21 + 32))(v21, a2, "spans");
  }

  v22 = *(this + 22);
  v23 = *(this + 23);
  while (v22 != v23)
  {
    v24 = *v22++;
    (*(*v24 + 32))(v24, a2, "utterance_context");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternalnlu_router::QueryDecorationOutput::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 128);
  v5 = *(this + 136);
  while (v4 != v5)
  {
    v6 = *v4++;
    this = PB::Writer::writeSubmessage(a2, v6);
  }

  v7 = v3[22];
  v8 = v3[23];
  while (v7 != v8)
  {
    v9 = *v7++;
    this = PB::Writer::writeSubmessage(a2, v9);
  }

  v10 = v3[13];
  v11 = v3[14];
  while (v10 != v11)
  {
    this = PB::Writer::write();
    v10 += 24;
  }

  v12 = v3[4];
  v13 = v3[5];
  while (v12 != v13)
  {
    this = PB::Writer::write();
    v12 += 24;
  }

  v14 = v3[10];
  v15 = v3[11];
  while (v14 != v15)
  {
    this = PB::Writer::write();
    v14 += 24;
  }

  v16 = v3[1];
  v17 = v3[2];
  while (v16 != v17)
  {
    this = PB::Writer::write();
    v16 += 24;
  }

  v18 = v3[19];
  v19 = v3[20];
  while (v18 != v19)
  {
    v20 = *v18++;
    this = PB::Writer::writeSubmessage(a2, v20);
  }

  v22 = v3[7];
  v21 = v3[8];
  while (v22 != v21)
  {
    v23 = *v22++;
    this = PB::Writer::writeSubmessage(a2, v23);
  }

  return this;
}

uint64_t sirinluexternalnlu_router::QueryDecorationOutput::readFrom(sirinluexternalnlu_router::QueryDecorationOutput *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v7 = (this + 8);
    v8 = (this + 80);
    v9 = (this + 32);
    v10 = (this + 104);
    do
    {
      v11 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v19 = 0;
        v20 = 0;
        v14 = 0;
        v21 = (v11 + v2);
        v22 = v3 >= v2;
        v23 = v3 - v2;
        if (!v22)
        {
          v23 = 0;
        }

        v24 = v2 + 1;
        while (v23)
        {
          v25 = *v21;
          *(a2 + 1) = v24;
          v14 |= (v25 & 0x7F) << v19;
          if ((v25 & 0x80) == 0)
          {
            goto LABEL_20;
          }

          v19 += 7;
          ++v21;
          --v23;
          ++v24;
          v18 = v20++ > 8;
          if (v18)
          {
            goto LABEL_18;
          }
        }

        v4 = 1;
        *(a2 + 24) = 1;
        break;
      }

      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = (v11 + v2);
      v16 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v16;
        v17 = *v15++;
        v14 |= (v17 & 0x7F) << v12;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v12 += 7;
        ++v16;
        v18 = v13++ > 8;
        if (v18)
        {
          goto LABEL_18;
        }
      }

LABEL_20:
      if ((v14 & 7) == 4)
      {
        v4 = 0;
        break;
      }

      v26 = v14 >> 3;
      if ((v14 >> 3) > 6)
      {
        if (v26 > 11)
        {
          if (v26 == 12)
          {
            operator new();
          }

          if (v26 == 24)
          {
            PB::PtrVector<sirinluexternalnlu_router::RetrievedContext>::emplace_back<>();
          }
        }

        else
        {
          if (v26 == 7)
          {
            v33 = *(this + 11);
            v34 = *(this + 12);
            if (v33 >= v34)
            {
              v39 = 0xAAAAAAAAAAAAAAABLL * ((v33 - *v8) >> 3);
              v40 = v39 + 1;
              if (v39 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                goto LABEL_92;
              }

              v41 = 0xAAAAAAAAAAAAAAABLL * ((v34 - *v8) >> 3);
              if (2 * v41 > v40)
              {
                v40 = 2 * v41;
              }

              if (v41 >= 0x555555555555555)
              {
                v42 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v42 = v40;
              }

              v81.__end_cap_.__value_ = v8;
              if (v42)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(v42);
              }

              v55 = 24 * v39;
              *v55 = 0;
              *(v55 + 8) = 0;
              *(v55 + 16) = 0;
              v35 = 24 * v39 + 24;
              v56 = *(this + 10);
              v57 = *(this + 11) - v56;
              v58 = v55 - v57;
              memcpy((v55 - v57), v56, v57);
              v59 = *(this + 10);
              *(this + 10) = v58;
              *(this + 11) = v35;
              v60 = *(this + 12);
              *(this + 12) = 0;
              v81.__end_ = v59;
              v81.__end_cap_.__value_ = v60;
              v81.__first_ = v59;
              v81.__begin_ = v59;
              std::__split_buffer<std::string>::~__split_buffer(&v81);
            }

            else
            {
              *v33 = 0;
              v33[1] = 0;
              v35 = (v33 + 3);
              v33[2] = 0;
            }

            *(this + 11) = v35;
LABEL_84:
            PB::Reader::read();
            goto LABEL_85;
          }

          if (v26 == 8)
          {
            v27 = *(this + 2);
            v28 = *(this + 3);
            if (v27 >= v28)
            {
              v47 = 0xAAAAAAAAAAAAAAABLL * ((v27 - *v7) >> 3);
              v48 = v47 + 1;
              if (v47 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                goto LABEL_92;
              }

              v49 = 0xAAAAAAAAAAAAAAABLL * ((v28 - *v7) >> 3);
              if (2 * v49 > v48)
              {
                v48 = 2 * v49;
              }

              if (v49 >= 0x555555555555555)
              {
                v50 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v50 = v48;
              }

              v81.__end_cap_.__value_ = v7;
              if (v50)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(v50);
              }

              v67 = 24 * v47;
              *v67 = 0;
              *(v67 + 8) = 0;
              *(v67 + 16) = 0;
              v29 = 24 * v47 + 24;
              v68 = *(this + 1);
              v69 = *(this + 2) - v68;
              v70 = v67 - v69;
              memcpy((v67 - v69), v68, v69);
              v71 = *(this + 1);
              *(this + 1) = v70;
              *(this + 2) = v29;
              v72 = *(this + 3);
              *(this + 3) = 0;
              v81.__end_ = v71;
              v81.__end_cap_.__value_ = v72;
              v81.__first_ = v71;
              v81.__begin_ = v71;
              std::__split_buffer<std::string>::~__split_buffer(&v81);
            }

            else
            {
              *v27 = 0;
              v27[1] = 0;
              v29 = (v27 + 3);
              v27[2] = 0;
            }

            *(this + 2) = v29;
            goto LABEL_84;
          }
        }
      }

      else if (v26 > 4)
      {
        if (v26 == 5)
        {
          v36 = *(this + 14);
          v37 = *(this + 15);
          if (v36 >= v37)
          {
            v43 = 0xAAAAAAAAAAAAAAABLL * ((v36 - *v10) >> 3);
            v44 = v43 + 1;
            if (v43 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              goto LABEL_92;
            }

            v45 = 0xAAAAAAAAAAAAAAABLL * ((v37 - *v10) >> 3);
            if (2 * v45 > v44)
            {
              v44 = 2 * v45;
            }

            if (v45 >= 0x555555555555555)
            {
              v46 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v46 = v44;
            }

            v81.__end_cap_.__value_ = v10;
            if (v46)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(v46);
            }

            v61 = 24 * v43;
            *v61 = 0;
            *(v61 + 8) = 0;
            *(v61 + 16) = 0;
            v38 = 24 * v43 + 24;
            v62 = *(this + 13);
            v63 = *(this + 14) - v62;
            v64 = v61 - v63;
            memcpy((v61 - v63), v62, v63);
            v65 = *(this + 13);
            *(this + 13) = v64;
            *(this + 14) = v38;
            v66 = *(this + 15);
            *(this + 15) = 0;
            v81.__end_ = v65;
            v81.__end_cap_.__value_ = v66;
            v81.__first_ = v65;
            v81.__begin_ = v65;
            std::__split_buffer<std::string>::~__split_buffer(&v81);
          }

          else
          {
            *v36 = 0;
            v36[1] = 0;
            v38 = (v36 + 3);
            v36[2] = 0;
          }

          *(this + 14) = v38;
          goto LABEL_84;
        }

        if (v26 == 6)
        {
          v30 = *(this + 5);
          v31 = *(this + 6);
          if (v30 >= v31)
          {
            v51 = 0xAAAAAAAAAAAAAAABLL * ((v30 - *v9) >> 3);
            v52 = v51 + 1;
            if (v51 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
LABEL_92:
              std::vector<std::unique_ptr<siricommon::StringValue>>::__throw_length_error[abi:ne200100]();
            }

            v53 = 0xAAAAAAAAAAAAAAABLL * ((v31 - *v9) >> 3);
            if (2 * v53 > v52)
            {
              v52 = 2 * v53;
            }

            if (v53 >= 0x555555555555555)
            {
              v54 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v54 = v52;
            }

            v81.__end_cap_.__value_ = v9;
            if (v54)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(v54);
            }

            v73 = 24 * v51;
            *v73 = 0;
            *(v73 + 8) = 0;
            *(v73 + 16) = 0;
            v32 = 24 * v51 + 24;
            v74 = *(this + 4);
            v75 = *(this + 5) - v74;
            v76 = v73 - v75;
            memcpy((v73 - v75), v74, v75);
            v77 = *(this + 4);
            *(this + 4) = v76;
            *(this + 5) = v32;
            v78 = *(this + 6);
            *(this + 6) = 0;
            v81.__end_ = v77;
            v81.__end_cap_.__value_ = v78;
            v81.__first_ = v77;
            v81.__begin_ = v77;
            std::__split_buffer<std::string>::~__split_buffer(&v81);
          }

          else
          {
            *v30 = 0;
            v30[1] = 0;
            v32 = (v30 + 3);
            v30[2] = 0;
          }

          *(this + 5) = v32;
          goto LABEL_84;
        }
      }

      else
      {
        if (v26 == 3)
        {
          PB::PtrVector<sirinluexternalnlu_router::RetrievedContext>::emplace_back<>();
        }

        if (v26 == 4)
        {
          PB::PtrVector<sirinluexternalnlu_router::RetrievedContext>::emplace_back<>();
        }
      }

LABEL_18:
      if ((PB::Reader::skip(a2) & 1) == 0)
      {
        v80 = 0;
        return v80 & 1;
      }

LABEL_85:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

  v80 = v4 ^ 1;
  return v80 & 1;
}

void sirinluexternalnlu_router::QueryDecorationOutput::~QueryDecorationOutput(sirinluexternalnlu_router::QueryDecorationOutput *this)
{
  sirinluexternalnlu_router::QueryDecorationOutput::~QueryDecorationOutput(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4876C10;
  v2 = (this + 176);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 19))
  {
    std::vector<std::unique_ptr<siricommon::StringValue>>::clear[abi:ne200100](this + 19);
    operator delete(*(this + 19));
  }

  v2 = (this + 128);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (this + 104);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (this + 80);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (this + 56);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (this + 32);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (this + 8);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);

  PB::Base::~Base(this);
}

double sirinluexternalnlu_router::QueryDecorationOutput::QueryDecorationOutput(sirinluexternalnlu_router::QueryDecorationOutput *this)
{
  *this = &unk_1F4876C10;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  return result;
}

{
  *this = &unk_1F4876C10;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  return result;
}

sirinluexternalnlu_router::QueryDecorationOutput *sirinluexternalnlu_router::QueryDecorationOutput::QueryDecorationOutput(sirinluexternalnlu_router::QueryDecorationOutput *this, const sirinluexternalnlu_router::QueryDecorationOutput *a2)
{
  *(this + 8) = 0u;
  v4 = (this + 8);
  *(this + 56) = 0u;
  *(this + 104) = 0u;
  *(this + 152) = 0u;
  *this = &unk_1F4876C10;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  v5 = *(a2 + 16);
  if (v5 != *(a2 + 17))
  {
    v6 = *v5;
    PB::PtrVector<sirinluexternalnlu_router::RetrievedContext>::emplace_back<sirinluexternalnlu_router::RetrievedContext const&>();
  }

  v7 = *(a2 + 22);
  if (v7 != *(a2 + 23))
  {
    v8 = *v7;
    PB::PtrVector<sirinluexternalnlu_router::RetrievedContext>::emplace_back<sirinluexternalnlu_router::RetrievedContext const&>();
  }

  if (this != a2)
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((this + 104), *(a2 + 13), *(a2 + 14), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 14) - *(a2 + 13)) >> 3));
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((this + 32), *(a2 + 4), *(a2 + 5), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 5) - *(a2 + 4)) >> 3));
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((this + 80), *(a2 + 10), *(a2 + 11), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 11) - *(a2 + 10)) >> 3));
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(v4, *(a2 + 1), *(a2 + 2), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 2) - *(a2 + 1)) >> 3));
  }

  v9 = *(a2 + 19);
  if (v9 != *(a2 + 20))
  {
    v10 = *v9;
    operator new();
  }

  v11 = *(a2 + 7);
  if (v11 != *(a2 + 8))
  {
    v12 = *v11;
    PB::PtrVector<sirinluexternalnlu_router::RetrievedContext>::emplace_back<sirinluexternalnlu_router::RetrievedContext const&>();
  }

  return this;
}

const sirinluexternalnlu_router::QueryDecorationOutput *sirinluexternalnlu_router::QueryDecorationOutput::operator=(const sirinluexternalnlu_router::QueryDecorationOutput *a1, const sirinluexternalnlu_router::QueryDecorationOutput *a2)
{
  if (a1 != a2)
  {
    sirinluexternalnlu_router::QueryDecorationOutput::QueryDecorationOutput(v5, a2);
    sirinluexternalnlu_router::swap(a1, v5, v3);
    sirinluexternalnlu_router::QueryDecorationOutput::~QueryDecorationOutput(v5);
  }

  return a1;
}

void *sirinluexternalnlu_router::swap(void *this, sirinluexternalnlu_router::QueryDecorationOutput *a2, sirinluexternalnlu_router::QueryDecorationOutput *a3)
{
  v3 = this[16];
  this[16] = *(a2 + 16);
  *(a2 + 16) = v3;
  v4 = this[17];
  this[17] = *(a2 + 17);
  *(a2 + 17) = v4;
  v5 = this[18];
  this[18] = *(a2 + 18);
  *(a2 + 18) = v5;
  v6 = this[22];
  this[22] = *(a2 + 22);
  *(a2 + 22) = v6;
  v7 = this[23];
  this[23] = *(a2 + 23);
  *(a2 + 23) = v7;
  v8 = this[24];
  this[24] = *(a2 + 24);
  *(a2 + 24) = v8;
  v9 = this[13];
  this[13] = *(a2 + 13);
  *(a2 + 13) = v9;
  v10 = this[14];
  this[14] = *(a2 + 14);
  *(a2 + 14) = v10;
  v11 = this[15];
  this[15] = *(a2 + 15);
  *(a2 + 15) = v11;
  v12 = this[4];
  this[4] = *(a2 + 4);
  *(a2 + 4) = v12;
  v13 = this[5];
  this[5] = *(a2 + 5);
  *(a2 + 5) = v13;
  v14 = this[6];
  this[6] = *(a2 + 6);
  *(a2 + 6) = v14;
  v15 = this[10];
  this[10] = *(a2 + 10);
  *(a2 + 10) = v15;
  v16 = this[11];
  this[11] = *(a2 + 11);
  *(a2 + 11) = v16;
  v17 = this[12];
  this[12] = *(a2 + 12);
  *(a2 + 12) = v17;
  v18 = this[1];
  this[1] = *(a2 + 1);
  *(a2 + 1) = v18;
  v19 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v19;
  v20 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v20;
  v21 = this[19];
  this[19] = *(a2 + 19);
  *(a2 + 19) = v21;
  v22 = this[20];
  this[20] = *(a2 + 20);
  *(a2 + 20) = v22;
  v23 = this[21];
  this[21] = *(a2 + 21);
  *(a2 + 21) = v23;
  v24 = this[7];
  this[7] = *(a2 + 7);
  *(a2 + 7) = v24;
  v25 = this[8];
  this[8] = *(a2 + 8);
  *(a2 + 8) = v25;
  v26 = this[9];
  this[9] = *(a2 + 9);
  *(a2 + 9) = v26;
  return this;
}

uint64_t sirinluexternalnlu_router::QueryDecorationOutput::QueryDecorationOutput(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4876C10;
  *(a1 + 152) = 0u;
  v4 = (a1 + 152);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 8) = 0u;
  v5 = (a1 + 8);
  *(a1 + 104) = 0u;
  v6 = (a1 + 104);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__vdeallocate((a1 + 128));
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__vdeallocate((a1 + 176));
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  *(a2 + 192) = 0;
  std::vector<std::string>::__vdeallocate(v6);
  *&v6->__begin_ = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  std::vector<std::string>::__vdeallocate((a1 + 32));
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  std::vector<std::string>::__vdeallocate((a1 + 80));
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  std::vector<std::string>::__vdeallocate(v5);
  *&v5->__begin_ = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  if (*v4)
  {
    std::vector<std::unique_ptr<siricommon::StringValue>>::clear[abi:ne200100](v4);
    operator delete(*v4);
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
  }

  *(a1 + 152) = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__vdeallocate((a1 + 56));
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  return a1;
}

void *sirinluexternalnlu_router::QueryDecorationOutput::operator=(void *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluexternalnlu_router::QueryDecorationOutput::QueryDecorationOutput(v5, a2);
    sirinluexternalnlu_router::swap(a1, v5, v3);
    sirinluexternalnlu_router::QueryDecorationOutput::~QueryDecorationOutput(v5);
  }

  return a1;
}

BOOL sirinluexternalnlu_router::QueryDecorationOutput::operator==(uint64_t a1, uint64_t a2)
{
  if (!PB::PtrVector<sirinluexternalnlu_router::RetrievedContext>::operator==(*(a1 + 128), *(a1 + 136), *(a2 + 128), *(a2 + 136)))
  {
    return 0;
  }

  if (!PB::PtrVector<sirinluexternalnlu_router::RetrievedContext>::operator==(*(a1 + 176), *(a1 + 184), *(a2 + 176), *(a2 + 184)))
  {
    return 0;
  }

  v4 = *(a1 + 104);
  v5 = *(a1 + 112);
  v6 = *(a2 + 104);
  if (v5 - v4 != *(a2 + 112) - v6)
  {
    return 0;
  }

  while (v4 != v5)
  {
    if (!std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(v4, v6))
    {
      return 0;
    }

    v4 += 24;
    v6 += 3;
  }

  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a2 + 32);
  if (v8 - v7 != *(a2 + 40) - v9)
  {
    return 0;
  }

  while (v7 != v8)
  {
    if (!std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(v7, v9))
    {
      return 0;
    }

    v7 += 24;
    v9 += 3;
  }

  v10 = *(a1 + 80);
  v11 = *(a1 + 88);
  v12 = *(a2 + 80);
  if (v11 - v10 != *(a2 + 88) - v12)
  {
    return 0;
  }

  while (v10 != v11)
  {
    if (!std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(v10, v12))
    {
      return 0;
    }

    v10 += 24;
    v12 += 3;
  }

  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a2 + 8);
  if (v14 - v13 != *(a2 + 16) - v15)
  {
    return 0;
  }

  while (v13 != v14)
  {
    if (!std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(v13, v15))
    {
      return 0;
    }

    v13 += 24;
    v15 += 3;
  }

  if (!PB::PtrVector<sirinluexternalnlu_router::SpanMatchedEntity>::operator==((a1 + 152), *(a2 + 152), *(a2 + 160)))
  {
    return 0;
  }

  v16 = *(a1 + 56);
  v17 = *(a1 + 64);
  v18 = *(a2 + 56);
  v19 = *(a2 + 64);

  return PB::PtrVector<sirinluexternalnlu_router::RetrievedContext>::operator==(v16, v17, v18, v19);
}

BOOL PB::PtrVector<sirinluexternalnlu_router::RetrievedContext>::operator==(char *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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
    result = sirinluexternalnlu_router::RetrievedContext::operator==(v7, v9);
  }

  while (result && v5 != a2);
  return result;
}

BOOL PB::PtrVector<sirinluexternalnlu_router::SpanMatchedEntity>::operator==(uint64_t **a1, uint64_t *a2, uint64_t a3)
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
    result = sirinluexternalnlu_router::SpanMatchedEntity::operator==(v6, v8);
  }

  while (result && v4 != v3);
  return result;
}

uint64_t sirinluexternalnlu_router::QueryDecorationOutput::hash_value(sirinluexternalnlu_router::QueryDecorationOutput *this)
{
  v2 = *(this + 16);
  v3 = *(this + 17);
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
      v4 ^= sirinluexternalnlu_router::RetrievedContext::hash_value(v5);
    }

    while (v2 != v3);
  }

  v6 = *(this + 22);
  v7 = *(this + 23);
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
      v8 ^= sirinluexternalnlu_router::RetrievedContext::hash_value(v9);
    }

    while (v6 != v7);
  }

  v10 = *(this + 13);
  v11 = *(this + 14);
  if (v10 == v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = 0;
    do
    {
      v12 ^= std::__string_hash<char>::operator()[abi:ne200100](v10);
      v10 += 24;
    }

    while (v10 != v11);
  }

  v13 = *(this + 4);
  v14 = *(this + 5);
  if (v13 == v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = 0;
    do
    {
      v15 ^= std::__string_hash<char>::operator()[abi:ne200100](v13);
      v13 += 24;
    }

    while (v13 != v14);
  }

  v16 = *(this + 10);
  v17 = *(this + 11);
  if (v16 == v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = 0;
    do
    {
      v18 ^= std::__string_hash<char>::operator()[abi:ne200100](v16);
      v16 += 24;
    }

    while (v16 != v17);
  }

  v19 = *(this + 1);
  v20 = *(this + 2);
  if (v19 == v20)
  {
    v21 = 0;
  }

  else
  {
    v21 = 0;
    do
    {
      v21 ^= std::__string_hash<char>::operator()[abi:ne200100](v19);
      v19 += 24;
    }

    while (v19 != v20);
  }

  v22 = *(this + 19);
  v23 = *(this + 20);
  if (v22 == v23)
  {
    v24 = 0;
  }

  else
  {
    v24 = 0;
    do
    {
      v25 = *v22++;
      v24 ^= sirinluexternalnlu_router::SpanMatchedEntity::hash_value(v25);
    }

    while (v22 != v23);
  }

  v26 = *(this + 7);
  v27 = *(this + 8);
  if (v26 == v27)
  {
    v28 = 0;
  }

  else
  {
    v28 = 0;
    do
    {
      v29 = *v26++;
      v28 ^= sirinluexternalnlu_router::RetrievedContext::hash_value(v29);
    }

    while (v26 != v27);
  }

  return v8 ^ v4 ^ v12 ^ v15 ^ v18 ^ v21 ^ v24 ^ v28;
}

uint64_t sirinluexternalnlu_router::NLRouterTurnProbingResult::formatText(sirinluexternalnlu_router::NLRouterTurnProbingResult *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "nl_parse_response");
  }

  v6 = *(this + 2);
  if (v6)
  {
    (*(*v6 + 32))(v6, a2, "pommes_response");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternalnlu_router::NLRouterTurnProbingResult::writeTo(uint64_t this, PB::Writer *a2)
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

uint64_t sirinluexternalnlu_router::NLRouterTurnProbingResult::readFrom(sirinluexternalnlu_router::NLRouterTurnProbingResult *this, PB::Reader *a2)
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

void sirinluexternalnlu_router::NLRouterTurnProbingResult::~NLRouterTurnProbingResult(sirinluexternalnlu_router::NLRouterTurnProbingResult *this)
{
  sirinluexternalnlu_router::NLRouterTurnProbingResult::~NLRouterTurnProbingResult(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4876C60;
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

void *sirinluexternalnlu_router::NLRouterTurnProbingResult::NLRouterTurnProbingResult(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4876C60;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4876C60;
  return this;
}

void *sirinluexternalnlu_router::NLRouterTurnProbingResult::NLRouterTurnProbingResult(void *this, const sirinluexternalnlu_router::NLRouterTurnProbingResult *a2)
{
  *this = &unk_1F4876C60;
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

uint64_t sirinluexternalnlu_router::NLRouterTurnProbingResult::operator=(uint64_t a1, const sirinluexternalnlu_router::NLRouterTurnProbingResult *a2)
{
  if (a1 != a2)
  {
    sirinluexternalnlu_router::NLRouterTurnProbingResult::NLRouterTurnProbingResult(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    sirinluexternalnlu_router::NLRouterTurnProbingResult::~NLRouterTurnProbingResult(&v5);
  }

  return a1;
}

uint64_t sirinluexternalnlu_router::swap(uint64_t this, sirinluexternalnlu_router::NLRouterTurnProbingResult *a2, sirinluexternalnlu_router::NLRouterTurnProbingResult *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  v4 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v4;
  return this;
}

void *sirinluexternalnlu_router::NLRouterTurnProbingResult::NLRouterTurnProbingResult(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F4876C60;
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

uint64_t sirinluexternalnlu_router::NLRouterTurnProbingResult::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluexternalnlu_router::NLRouterTurnProbingResult::NLRouterTurnProbingResult(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    sirinluexternalnlu_router::NLRouterTurnProbingResult::~NLRouterTurnProbingResult(&v5);
  }

  return a1;
}

BOOL sirinluexternalnlu_router::NLRouterTurnProbingResult::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (v5 && PB::PtrVector<sirinluexternal::UserParse>::operator==((v4 + 8), *(v5 + 8), *(v5 + 16)))
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

    return sirinluexternalnlu_router::PommesResponse::operator==(v10, v7);
  }

  return result;
}

unint64_t sirinluexternalnlu_router::NLRouterTurnProbingResult::hash_value(sirinluexternalnlu_router::NLRouterTurnProbingResult *this)
{
  v2 = *(this + 1);
  if (!v2 || (v3 = *(v2 + 8), v4 = *(v2 + 16), v3 == v4))
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    do
    {
      v6 = *v3++;
      v5 ^= sirinluexternal::UserParse::hash_value(v6);
    }

    while (v3 != v4);
  }

  v7 = *(this + 2);
  if (v7)
  {
    v8 = *(v7 + 8);
    if (v8)
    {
      v8 = std::__string_hash<char>::operator()[abi:ne200100](v8);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 ^ v5;
}

uint64_t sirinluexternalnlu_router::NLRouterTurnProbingResult::makeNlParseResponse(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternalnlu_router::NLRouterTurnProbingResult::makePommesResponse(uint64_t this)
{
  if (!*(this + 16))
  {
    operator new();
  }

  return this;
}

uint64_t SIRINLUEXTERNALCDM_PLANNERCdmPlannerResponseReadFrom(char *a1, void *a2)
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
        v14 = PBReaderReadData();
        v15 = 8;
LABEL_22:
        v16 = *&a1[v15];
        *&a1[v15] = v14;
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

    v16 = objc_alloc_init(SIRINLUEXTERNALCDM_PLANNERCDMTranscriptEvent);
    [a1 addTranscriptEvents:v16];
    v19[0] = 0;
    v19[1] = 0;
    if (!PBReaderPlaceMark() || !SIRINLUEXTERNALCDM_PLANNERCDMTranscriptEventReadFrom(v16, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sirinluexternal::UsoEdgeLabel::formatText(sirinluexternal::UsoEdgeLabel *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "base_edge_label");
  }

  v6 = *(this + 24);
  if (v6)
  {
    v7 = *(this + 4);
    PB::TextFormatter::format(a2, "enumeration");
    v6 = *(this + 24);
  }

  if ((v6 & 2) != 0)
  {
    v8 = *(this + 5);
    PB::TextFormatter::format(a2, "uso_element_id");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternal::UsoEdgeLabel::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 24);
  if ((v4 & 2) != 0)
  {
    v5 = *(this + 20);
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 24);
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

uint64_t sirinluexternal::UsoEdgeLabel::readFrom(sirinluexternal::UsoEdgeLabel *this, PB::Reader *a2)
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
        *(this + 24) |= 1u;
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
        *(this + 4) = v37;
      }

      else if (v22 == 1)
      {
        *(this + 24) |= 2u;
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
        *(this + 5) = v28;
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

void sirinluexternal::UsoEdgeLabel::~UsoEdgeLabel(sirinluexternal::UsoEdgeLabel *this)
{
  sirinluexternal::UsoEdgeLabel::~UsoEdgeLabel(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  v2 = *(this + 1);
  *this = &unk_1F4876CB0;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

uint64_t sirinluexternal::UsoEdgeLabel::UsoEdgeLabel(uint64_t this)
{
  *this = &unk_1F4876CB0;
  *(this + 8) = 0;
  *(this + 20) = 0;
  *(this + 24) = 0;
  return this;
}

{
  *this = &unk_1F4876CB0;
  *(this + 8) = 0;
  *(this + 20) = 0;
  *(this + 24) = 0;
  return this;
}

uint64_t sirinluexternal::UsoEdgeLabel::UsoEdgeLabel(uint64_t this, const sirinluexternal::UsoEdgeLabel *a2)
{
  *this = &unk_1F4876CB0;
  *(this + 8) = 0;
  *(this + 20) = 0;
  *(this + 24) = 0;
  if ((*(a2 + 24) & 2) != 0)
  {
    v3 = *(a2 + 5);
    *(this + 24) = 2;
    *(this + 20) = v3;
    v2 = 3;
    if ((*(a2 + 24) & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v2 = 1;
  if (*(a2 + 24))
  {
LABEL_5:
    v4 = *(a2 + 4);
    *(this + 24) = v2;
    *(this + 16) = v4;
  }

LABEL_6:
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::UsoEdgeLabel::operator=(uint64_t a1, const sirinluexternal::UsoEdgeLabel *a2)
{
  if (a1 != a2)
  {
    sirinluexternal::UsoEdgeLabel::UsoEdgeLabel(&v7, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v10;
    v10 = v3;
    v4 = *(a1 + 16);
    *(a1 + 16) = v9;
    v9 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v5;
    sirinluexternal::UsoEdgeLabel::~UsoEdgeLabel(&v7);
  }

  return a1;
}

uint64_t sirinluexternal::swap(uint64_t this, sirinluexternal::UsoEdgeLabel *a2, sirinluexternal::UsoEdgeLabel *a3)
{
  v3 = *(this + 24);
  *(this + 24) = *(a2 + 6);
  *(a2 + 6) = v3;
  v4 = *(this + 20);
  *(this + 20) = *(a2 + 5);
  *(a2 + 5) = v4;
  v5 = *(this + 16);
  *(this + 16) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v6;
  return this;
}

uint64_t sirinluexternal::UsoEdgeLabel::UsoEdgeLabel(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4876CB0;
  *(a1 + 8) = 0;
  *(a1 + 20) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a1 + 20) = *(a2 + 20);
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

uint64_t sirinluexternal::UsoEdgeLabel::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluexternal::UsoEdgeLabel::UsoEdgeLabel(&v7, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v10;
    v10 = v3;
    v4 = *(a1 + 16);
    *(a1 + 16) = v9;
    v9 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v5;
    sirinluexternal::UsoEdgeLabel::~UsoEdgeLabel(&v7);
  }

  return a1;
}

BOOL sirinluexternal::UsoEdgeLabel::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
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

  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  result = (v3 | v4) == 0;
  if (v3)
  {
    if (v4)
    {
      return sirinluexternal::UsoLabel::operator==(v3, v4);
    }
  }

  return result;
}

unint64_t sirinluexternal::UsoEdgeLabel::hash_value(sirinluexternal::UsoEdgeLabel *this)
{
  if ((*(this + 24) & 2) != 0)
  {
    v1 = *(this + 5);
    if (*(this + 24))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v1 = 0;
    if (*(this + 24))
    {
LABEL_3:
      v2 = *(this + 4);
      goto LABEL_6;
    }
  }

  v2 = 0;
LABEL_6:
  v3 = *(this + 1);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      v4 = std::__string_hash<char>::operator()[abi:ne200100](v4);
    }
  }

  else
  {
    v4 = 0;
  }

  return v2 ^ v1 ^ v4;
}

uint64_t sirinluexternal::UsoEdgeLabel::makeBaseEdgeLabel(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t SIRINLUEXTERNALNLU_ROUTERPrimitiveValueReadFrom(uint64_t a1, void *a2)
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

      if ((v12 >> 3) == 17)
      {
        v20 = objc_alloc_init(SIRINLUEXTERNALNLU_ROUTERApp);
        objc_storeStrong((a1 + 8), v20);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !SIRINLUEXTERNALNLU_ROUTERAppReadFrom(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((v12 >> 3) == 2)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23[0] & 0x7F) << v13;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            LOBYTE(v19) = 0;
            goto LABEL_34;
          }
        }

        v19 = (v15 != 0) & ~[a2 hasError];
LABEL_34:
        *(a1 + 16) = v19;
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

uint64_t sirinluexternal::UserAcknowledged::formatText(sirinluexternal::UserAcknowledged *this, PB::TextFormatter *a2, const char *a3)
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
    (*(*v6 + 32))(v6, a2, "system_dialog_act_id");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternal::UserAcknowledged::writeTo(uint64_t this, PB::Writer *a2)
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

uint64_t sirinluexternal::UserAcknowledged::readFrom(sirinluexternal::UserAcknowledged *this, PB::Reader *a2)
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

void sirinluexternal::UserAcknowledged::~UserAcknowledged(sirinluexternal::UserAcknowledged *this)
{
  sirinluexternal::UserAcknowledged::~UserAcknowledged(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4876D00;
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

void *sirinluexternal::UserAcknowledged::UserAcknowledged(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4876D00;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4876D00;
  return this;
}

void *sirinluexternal::UserAcknowledged::UserAcknowledged(void *this, const sirinluexternal::UserAcknowledged *a2)
{
  *this = &unk_1F4876D00;
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

uint64_t sirinluexternal::UserAcknowledged::operator=(uint64_t a1, const sirinluexternal::UserAcknowledged *a2)
{
  if (a1 != a2)
  {
    sirinluexternal::UserAcknowledged::UserAcknowledged(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    sirinluexternal::UserAcknowledged::~UserAcknowledged(&v5);
  }

  return a1;
}

uint64_t sirinluexternal::swap(uint64_t this, sirinluexternal::UserAcknowledged *a2, sirinluexternal::UserAcknowledged *a3)
{
  v3 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v4;
  return this;
}

void *sirinluexternal::UserAcknowledged::UserAcknowledged(void *a1, uint64_t a2)
{
  a1[1] = 0;
  v4 = a1 + 1;
  *a1 = &unk_1F4876D00;
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

uint64_t sirinluexternal::UserAcknowledged::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluexternal::UserAcknowledged::UserAcknowledged(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    sirinluexternal::UserAcknowledged::~UserAcknowledged(&v5);
  }

  return a1;
}

BOOL sirinluexternal::UserAcknowledged::operator==(uint64_t a1, uint64_t a2)
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

unint64_t sirinluexternal::UserAcknowledged::hash_value(sirinluexternal::UserAcknowledged *this)
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

uint64_t sirinluexternal::UserAcknowledged::makeSystemDialogActId(uint64_t this)
{
  if (!*(this + 16))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::UserAcknowledged::makeReference(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternalqueryrewrite::QRToken::formatText(sirinluinternalqueryrewrite::QRToken *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 44);
  if (v5)
  {
    PB::TextFormatter::format(a2, "asr_confidence", *(this + 1));
    v5 = *(this + 44);
  }

  if ((v5 & 2) != 0)
  {
    v6 = *(this + 8);
    PB::TextFormatter::format(a2, "end_index");
  }

  if (*(this + 2))
  {
    PB::TextFormatter::format();
  }

  v7 = *(this + 44);
  if ((v7 & 8) != 0)
  {
    v8 = *(this + 40);
    PB::TextFormatter::format(a2, "remove_space_after");
    v7 = *(this + 44);
  }

  if ((v7 & 4) != 0)
  {
    v9 = *(this + 9);
    PB::TextFormatter::format(a2, "start_index");
  }

  if (*(this + 3))
  {
    PB::TextFormatter::format();
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluinternalqueryrewrite::QRToken::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if (*(this + 24))
  {
    this = PB::Writer::write();
  }

  v4 = *(v3 + 44);
  if ((v4 & 4) != 0)
  {
    v5 = *(v3 + 36);
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 44);
    if ((v4 & 2) == 0)
    {
LABEL_5:
      if ((v4 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*(v3 + 44) & 2) == 0)
  {
    goto LABEL_5;
  }

  v6 = *(v3 + 32);
  this = PB::Writer::writeVarInt(a2);
  if (*(v3 + 44))
  {
LABEL_6:
    this = PB::Writer::write(a2, *(v3 + 8));
  }

LABEL_7:
  if (*(v3 + 16))
  {
    this = PB::Writer::write();
  }

  if ((*(v3 + 44) & 8) != 0)
  {
    v7 = *(v3 + 40);

    return PB::Writer::write(a2);
  }

  return this;
}

uint64_t sirinluinternalqueryrewrite::QRToken::readFrom(sirinluinternalqueryrewrite::QRToken *this, PB::Reader *a2)
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
          *(this + 44) |= 1u;
          v36 = *(a2 + 1);
          if (v36 <= 0xFFFFFFFFFFFFFFF7 && v36 + 8 <= *(a2 + 2))
          {
            *(this + 1) = *(*a2 + v36);
            *(a2 + 1) += 8;
          }

          else
          {
            *(a2 + 24) = 1;
          }

          goto LABEL_75;
        case 5:
          operator new();
        case 6:
          *(this + 44) |= 8u;
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

          *(this + 40) = v35;
          goto LABEL_75;
      }
    }

    else
    {
      switch(v22)
      {
        case 1:
          operator new();
        case 2:
          *(this + 44) |= 4u;
          v38 = *(a2 + 1);
          v37 = *(a2 + 2);
          v39 = *a2;
          if (v38 > 0xFFFFFFFFFFFFFFF5 || v38 + 10 > v37)
          {
            v52 = 0;
            v53 = 0;
            v42 = 0;
            v54 = (v39 + v38);
            v18 = v37 >= v38;
            v55 = v37 - v38;
            if (!v18)
            {
              v55 = 0;
            }

            v56 = v38 + 1;
            while (1)
            {
              if (!v55)
              {
                LODWORD(v42) = 0;
                *(a2 + 24) = 1;
                goto LABEL_74;
              }

              v57 = *v54;
              *(a2 + 1) = v56;
              v42 |= (v57 & 0x7F) << v52;
              if ((v57 & 0x80) == 0)
              {
                break;
              }

              v52 += 7;
              ++v54;
              --v55;
              ++v56;
              v14 = v53++ > 8;
              if (v14)
              {
LABEL_63:
                LODWORD(v42) = 0;
                goto LABEL_74;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v42) = 0;
            }
          }

          else
          {
            v40 = 0;
            v41 = 0;
            v42 = 0;
            v43 = (v39 + v38);
            v44 = v38 + 1;
            while (1)
            {
              *(a2 + 1) = v44;
              v45 = *v43++;
              v42 |= (v45 & 0x7F) << v40;
              if ((v45 & 0x80) == 0)
              {
                break;
              }

              v40 += 7;
              ++v44;
              v14 = v41++ > 8;
              if (v14)
              {
                goto LABEL_63;
              }
            }
          }

LABEL_74:
          *(this + 9) = v42;
          goto LABEL_75;
        case 3:
          *(this + 44) |= 2u;
          v24 = *(a2 + 1);
          v23 = *(a2 + 2);
          v25 = *a2;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
          {
            v46 = 0;
            v47 = 0;
            v28 = 0;
            v48 = (v25 + v24);
            v18 = v23 >= v24;
            v49 = v23 - v24;
            if (!v18)
            {
              v49 = 0;
            }

            v50 = v24 + 1;
            while (1)
            {
              if (!v49)
              {
                LODWORD(v28) = 0;
                *(a2 + 24) = 1;
                goto LABEL_71;
              }

              v51 = *v48;
              *(a2 + 1) = v50;
              v28 |= (v51 & 0x7F) << v46;
              if ((v51 & 0x80) == 0)
              {
                break;
              }

              v46 += 7;
              ++v48;
              --v49;
              ++v50;
              v14 = v47++ > 8;
              if (v14)
              {
LABEL_55:
                LODWORD(v28) = 0;
                goto LABEL_71;
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

LABEL_71:
          *(this + 8) = v28;
          goto LABEL_75;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v59 = 0;
      return v59 & 1;
    }

LABEL_75:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v59 = v4 ^ 1;
  return v59 & 1;
}

void sirinluinternalqueryrewrite::QRToken::~QRToken(sirinluinternalqueryrewrite::QRToken *this)
{
  sirinluinternalqueryrewrite::QRToken::~QRToken(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4876D50;
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (v2)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v2);
  }

  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v3);
  }

  PB::Base::~Base(this);
}

uint64_t sirinluinternalqueryrewrite::QRToken::QRToken(uint64_t this)
{
  *this = &unk_1F4876D50;
  *(this + 44) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

{
  *this = &unk_1F4876D50;
  *(this + 44) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

uint64_t sirinluinternalqueryrewrite::QRToken::QRToken(uint64_t this, const sirinluinternalqueryrewrite::QRToken *a2)
{
  *this = &unk_1F4876D50;
  *(this + 16) = 0;
  *(this + 44) = 0;
  *(this + 24) = 0;
  if (*(a2 + 3))
  {
    operator new();
  }

  v2 = *(a2 + 44);
  if ((v2 & 4) != 0)
  {
    v4 = *(a2 + 9);
    *(this + 44) |= 4u;
    *(this + 36) = v4;
    v2 = *(a2 + 44);
    if ((v2 & 2) == 0)
    {
LABEL_5:
      if ((v2 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*(a2 + 44) & 2) == 0)
  {
    goto LABEL_5;
  }

  v5 = *(a2 + 8);
  *(this + 44) |= 2u;
  *(this + 32) = v5;
  if (*(a2 + 44))
  {
LABEL_6:
    v3 = *(a2 + 1);
    *(this + 44) |= 1u;
    *(this + 8) = v3;
  }

LABEL_7:
  if (*(a2 + 2))
  {
    operator new();
  }

  if ((*(a2 + 44) & 8) != 0)
  {
    v6 = *(a2 + 40);
    *(this + 44) |= 8u;
    *(this + 40) = v6;
  }

  return this;
}

uint64_t sirinluinternalqueryrewrite::QRToken::operator=(uint64_t a1, const sirinluinternalqueryrewrite::QRToken *a2)
{
  if (a1 != a2)
  {
    sirinluinternalqueryrewrite::QRToken::QRToken(&v8, a2);
    v3 = *(a1 + 44);
    *(a1 + 44) = v13;
    v13 = v3;
    v4 = *(a1 + 32);
    *(a1 + 32) = v11;
    v11 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v9;
    v9 = v5;
    v6 = *(a1 + 16);
    *(a1 + 16) = v10;
    v10 = v6;
    LOBYTE(v3) = *(a1 + 40);
    *(a1 + 40) = v12;
    v12 = v3;
    sirinluinternalqueryrewrite::QRToken::~QRToken(&v8);
  }

  return a1;
}

double sirinluinternalqueryrewrite::swap(sirinluinternalqueryrewrite *this, sirinluinternalqueryrewrite::QRToken *a2, sirinluinternalqueryrewrite::QRToken *a3)
{
  v3 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v3;
  v4 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v4;
  LODWORD(v4) = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v4;
  LODWORD(v4) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v4;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  v6 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v6;
  LOBYTE(v6) = *(this + 40);
  *(this + 40) = *(a2 + 40);
  *(a2 + 40) = v6;
  return result;
}

uint64_t sirinluinternalqueryrewrite::QRToken::QRToken(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4876D50;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 44) = *(a2 + 44);
  *(a2 + 44) = 0;
  v4 = *(a2 + 24);
  *(a2 + 24) = 0;
  v5 = *(a1 + 24);
  *(a1 + 24) = v4;
  if (v5)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v5);
  }

  *(a1 + 36) = *(a2 + 36);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 8) = *(a2 + 8);
  v6 = *(a2 + 16);
  *(a2 + 16) = 0;
  v7 = *(a1 + 16);
  *(a1 + 16) = v6;
  if (v7)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v7);
  }

  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t sirinluinternalqueryrewrite::QRToken::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluinternalqueryrewrite::QRToken::QRToken(&v8, a2);
    v3 = *(a1 + 44);
    *(a1 + 44) = v13;
    v13 = v3;
    v4 = *(a1 + 32);
    *(a1 + 32) = v11;
    v11 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v9;
    v9 = v5;
    v6 = *(a1 + 16);
    *(a1 + 16) = v10;
    v10 = v6;
    LOBYTE(v3) = *(a1 + 40);
    *(a1 + 40) = v12;
    v12 = v3;
    sirinluinternalqueryrewrite::QRToken::~QRToken(&v8);
  }

  return a1;
}

BOOL sirinluinternalqueryrewrite::QRToken::operator==(uint64_t a1, uint64_t a2)
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

  v13 = *(a1 + 44);
  v14 = *(a2 + 44);
  if ((v13 & 4) != 0)
  {
    if ((*(a2 + 44) & 4) == 0 || *(a1 + 36) != *(a2 + 36))
    {
      return 0;
    }
  }

  else if ((*(a2 + 44) & 4) != 0)
  {
    return 0;
  }

  if ((*(a1 + 44) & 2) != 0)
  {
    if ((*(a2 + 44) & 2) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((*(a2 + 44) & 2) != 0)
  {
    return 0;
  }

  if (*(a1 + 44))
  {
    if ((*(a2 + 44) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 44))
  {
    return 0;
  }

  v15 = *(a1 + 16);
  v16 = *(a2 + 16);
  if (!v15)
  {
    if (!v16)
    {
      goto LABEL_40;
    }

    return 0;
  }

  if (!v16 || !std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(v15, v16))
  {
    return 0;
  }

LABEL_40:
  result = (v14 & 8) == 0;
  if ((v13 & 8) != 0)
  {
    return (v14 & 8) != 0 && *(a1 + 40) == *(a2 + 40);
  }

  return result;
}

unint64_t sirinluinternalqueryrewrite::QRToken::hash_value(sirinluinternalqueryrewrite::QRToken *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    v3 = std::__string_hash<char>::operator()[abi:ne200100](v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 44);
  if ((v4 & 4) != 0)
  {
    v5 = *(this + 9);
    if ((*(this + 44) & 2) != 0)
    {
LABEL_6:
      v6 = *(this + 8);
      if (*(this + 44))
      {
        goto LABEL_7;
      }

LABEL_12:
      v7 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    v5 = 0;
    if ((*(this + 44) & 2) != 0)
    {
      goto LABEL_6;
    }
  }

  v6 = 0;
  if ((*(this + 44) & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  if (*(this + 1) == 0.0)
  {
    v7 = 0;
  }

  else
  {
    v7 = *(this + 1);
  }

LABEL_13:
  v8 = *(this + 2);
  if (v8)
  {
    v8 = std::__string_hash<char>::operator()[abi:ne200100](v8);
  }

  if ((v4 & 8) != 0)
  {
    v9 = *(this + 40);
  }

  else
  {
    v9 = 0;
  }

  return v5 ^ v3 ^ v6 ^ v7 ^ v8 ^ v9;
}

uint64_t SIRINLUINTERNALSNLCSNLCParserResponseReadFrom(uint64_t a1, void *a2)
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
        v26 = 0;
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
        break;
      }

      if ((v12 >> 3) == 2)
      {
        *(a1 + 16) |= 2u;
        v25 = 0;
        v20 = [a2 position] + 4;
        if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 4, v21 <= objc_msgSend(a2, "length")))
        {
          v23 = [a2 data];
          [v23 getBytes:&v25 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 12) = v25;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 16) |= 1u;
        while (1)
        {
          v27 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v27 & 0x7F) << v13;
          if ((v27 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_36;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_36:
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

      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRINLUINTERNALContextRuleReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v22 = 0;
          v23 = 0;
          v24 = 0;
          *(a1 + 36) |= 2u;
          while (1)
          {
            LOBYTE(v31) = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v24 |= (v31 & 0x7F) << v22;
            if ((v31 & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v11 = v23++ >= 9;
            if (v11)
            {
              LOBYTE(v28) = 0;
              goto LABEL_53;
            }
          }

          v28 = (v24 != 0) & ~[a2 hasError];
LABEL_53:
          *(a1 + 32) = v28;
          goto LABEL_54;
        }

        if (v13 == 4)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          *(a1 + 36) |= 1u;
          while (1)
          {
            LOBYTE(v31) = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v31 & 0x7F) << v15;
            if ((v31 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_51;
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

LABEL_51:
          *(a1 + 16) = v21;
          goto LABEL_54;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(SIRINLUEXTERNALTurnContext);
          objc_storeStrong((a1 + 24), v14);
          v31 = 0;
          v32 = 0;
          if (!PBReaderPlaceMark() || !SIRINLUEXTERNALTurnContextReadFrom(v14, a2))
          {
LABEL_56:

            return 0;
          }

          goto LABEL_38;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(SIRINLUINTERNALMatchingSpan);
          [a1 addMatchingSpans:v14];
          v31 = 0;
          v32 = 0;
          if (!PBReaderPlaceMark() || !SIRINLUINTERNALMatchingSpanReadFrom(v14, a2))
          {
            goto LABEL_56;
          }

LABEL_38:
          PBReaderRecallMark();

          goto LABEL_54;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_54:
      v29 = [a2 position];
    }

    while (v29 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRINLUEXTERNALUserAcknowledgedReadFrom(uint64_t a1, void *a2)
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

uint64_t SIRINLUINTERNALPSCPSCServiceRequestReadFrom(id *a1, void *a2)
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

uint64_t SIRINLUINTERNALSNLP_INTERMEDIATENLv4AssetVersionReadFrom(uint64_t a1, void *a2)
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
        v13 = objc_alloc_init(SIRINLUINTERNALSNLP_INTERMEDIATESNLPAssetVersion);
        objc_storeStrong((a1 + 8), v13);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !SIRINLUINTERNALSNLP_INTERMEDIATESNLPAssetVersionReadFrom(v13, a2))
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

uint64_t SIRINLUINTERNALSNLP_INTERMEDIATEITFMExecutedHandcraftedRulesReadFrom(uint64_t a1, void *a2)
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
        v13 = objc_alloc_init(SIRINLUINTERNALSNLP_INTERMEDIATESNLPHandcraftedRules);
        objc_storeStrong((a1 + 16), v13);
        v17[0] = 0;
        v17[1] = 0;
        if (!PBReaderPlaceMark() || !SIRINLUINTERNALSNLP_INTERMEDIATESNLPHandcraftedRulesReadFrom(v13, a2))
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

uint64_t sirinluinternalqueryrewrite::QRInteraction::formatText(sirinluinternalqueryrewrite::QRInteraction *this, PB::TextFormatter *a2, const char *a3)
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

uint64_t sirinluinternalqueryrewrite::QRInteraction::writeTo(uint64_t this, PB::Writer *a2)
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

uint64_t sirinluinternalqueryrewrite::QRInteraction::readFrom(sirinluinternalqueryrewrite::QRInteraction *this, PB::Reader *a2)
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

void sirinluinternalqueryrewrite::QRInteraction::~QRInteraction(sirinluinternalqueryrewrite::QRInteraction *this)
{
  sirinluinternalqueryrewrite::QRInteraction::~QRInteraction(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4876DA0;
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

double sirinluinternalqueryrewrite::QRInteraction::QRInteraction(sirinluinternalqueryrewrite::QRInteraction *this)
{
  *this = &unk_1F4876DA0;
  *(this + 19) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  return result;
}

{
  *this = &unk_1F4876DA0;
  *(this + 19) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  return result;
}

uint64_t sirinluinternalqueryrewrite::QRInteraction::QRInteraction(uint64_t this, const sirinluinternalqueryrewrite::QRInteraction *a2)
{
  *this = &unk_1F4876DA0;
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

uint64_t sirinluinternalqueryrewrite::QRInteraction::operator=(uint64_t a1, const sirinluinternalqueryrewrite::QRInteraction *a2)
{
  if (a1 != a2)
  {
    sirinluinternalqueryrewrite::QRInteraction::QRInteraction(&v11, a2);
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
    sirinluinternalqueryrewrite::QRInteraction::~QRInteraction(&v11);
  }

  return a1;
}

uint64_t sirinluinternalqueryrewrite::swap(uint64_t this, sirinluinternalqueryrewrite::QRInteraction *a2, sirinluinternalqueryrewrite::QRInteraction *a3)
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

uint64_t sirinluinternalqueryrewrite::QRInteraction::QRInteraction(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4876DA0;
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

uint64_t sirinluinternalqueryrewrite::QRInteraction::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluinternalqueryrewrite::QRInteraction::QRInteraction(&v11, a2);
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
    sirinluinternalqueryrewrite::QRInteraction::~QRInteraction(&v11);
  }

  return a1;
}

BOOL sirinluinternalqueryrewrite::QRInteraction::operator==(uint64_t a1, uint64_t a2)
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
    result = sirinluinternalqueryrewrite::QRUtterance::operator==(*v3, *v4);
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

unint64_t sirinluinternalqueryrewrite::QRInteraction::hash_value(sirinluinternalqueryrewrite::QRInteraction *this)
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
      v4 ^= sirinluinternalqueryrewrite::QRUtterance::hash_value(v5);
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

uint64_t SIRINLUEXTERNALUserWantedToUndoReadFrom(uint64_t a1, void *a2)
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

uint64_t SIRINLUINTERNALCATICATIResponseReadFrom(void *a1, void *a2)
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

uint64_t sirinluexternalcdm_planner::CDMPlannerRequestIdentifier::formatText(sirinluexternalcdm_planner::CDMPlannerRequestIdentifier *this, PB::TextFormatter *a2, const char *a3)
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

uint64_t sirinluexternalcdm_planner::CDMPlannerRequestIdentifier::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = this;
  if (*(this + 24))
  {
    this = PB::Writer::write();
  }

  if (*(v2 + 16))
  {
    this = PB::Writer::write();
  }

  if (*(v2 + 8))
  {

    return PB::Writer::write();
  }

  return this;
}

uint64_t sirinluexternalcdm_planner::CDMPlannerRequestIdentifier::readFrom(sirinluexternalcdm_planner::CDMPlannerRequestIdentifier *this, PB::Reader *a2)
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

void sirinluexternalcdm_planner::CDMPlannerRequestIdentifier::~CDMPlannerRequestIdentifier(sirinluexternalcdm_planner::CDMPlannerRequestIdentifier *this)
{
  sirinluexternalcdm_planner::CDMPlannerRequestIdentifier::~CDMPlannerRequestIdentifier(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4876DF0;
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (v2)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v2);
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
    std::default_delete<std::string>::operator()[abi:ne200100](v4);
  }

  PB::Base::~Base(this);
}

void *sirinluexternalcdm_planner::CDMPlannerRequestIdentifier::CDMPlannerRequestIdentifier(void *this)
{
  *this = &unk_1F4876DF0;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_1F4876DF0;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

void *sirinluexternalcdm_planner::CDMPlannerRequestIdentifier::CDMPlannerRequestIdentifier(void *this, const sirinluexternalcdm_planner::CDMPlannerRequestIdentifier *a2)
{
  *this = &unk_1F4876DF0;
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

uint64_t sirinluexternalcdm_planner::CDMPlannerRequestIdentifier::operator=(uint64_t a1, const sirinluexternalcdm_planner::CDMPlannerRequestIdentifier *a2)
{
  if (a1 != a2)
  {
    sirinluexternalcdm_planner::CDMPlannerRequestIdentifier::CDMPlannerRequestIdentifier(&v6, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    sirinluexternalcdm_planner::CDMPlannerRequestIdentifier::~CDMPlannerRequestIdentifier(&v6);
  }

  return a1;
}

void *sirinluexternalcdm_planner::swap(void *this, sirinluexternalcdm_planner::CDMPlannerRequestIdentifier *a2, sirinluexternalcdm_planner::CDMPlannerRequestIdentifier *a3)
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

void *sirinluexternalcdm_planner::CDMPlannerRequestIdentifier::CDMPlannerRequestIdentifier(void *a1, void *a2)
{
  *a1 = &unk_1F4876DF0;
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
    std::default_delete<std::string>::operator()[abi:ne200100](v6);
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
    std::default_delete<std::string>::operator()[abi:ne200100](v10);
  }

  return a1;
}

uint64_t sirinluexternalcdm_planner::CDMPlannerRequestIdentifier::operator=(uint64_t a1, void *a2)
{
  if (a1 != a2)
  {
    sirinluexternalcdm_planner::CDMPlannerRequestIdentifier::CDMPlannerRequestIdentifier(&v6, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    sirinluexternalcdm_planner::CDMPlannerRequestIdentifier::~CDMPlannerRequestIdentifier(&v6);
  }

  return a1;
}

BOOL sirinluexternalcdm_planner::CDMPlannerRequestIdentifier::operator==(void *a1, void *a2)
{
  v4 = a1[3];
  v5 = a2[3];
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

    v10 = v6 >= 0 ? a1[3] : *v4;
    v11 = v9 >= 0 ? a2[3] : *v5;
    if (memcmp(v10, v11, v7))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v13 = a1[2];
  v14 = a2[2];
  if (!v13)
  {
    if (!v14)
    {
      goto LABEL_37;
    }

    return 0;
  }

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

  v19 = v15 >= 0 ? a1[2] : *v13;
  v20 = v18 >= 0 ? a2[2] : *v14;
  if (memcmp(v19, v20, v16))
  {
    return 0;
  }

LABEL_37:
  v21 = a1[1];
  v22 = a2[1];
  result = v22 == 0;
  if (v21)
  {
    if (v22)
    {
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

      if (v24 == v25)
      {
        v27 = v23 >= 0 ? a1[1] : *v21;
        v28 = v26 >= 0 ? a2[1] : *v22;
        if (!memcmp(v27, v28, v24))
        {
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

unint64_t sirinluexternalcdm_planner::CDMPlannerRequestIdentifier::hash_value(sirinluexternalcdm_planner::CDMPlannerRequestIdentifier *this)
{
  v2 = *(this + 3);
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

  v6 = *(this + 1);
  if (v6)
  {
    v6 = std::__string_hash<char>::operator()[abi:ne200100](v6);
  }

  return v5 ^ v3 ^ v6;
}

uint64_t sirinluexternalnlu_router::TurnSummary::formatText(sirinluexternalnlu_router::TurnSummary *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 1))
  {
    PB::TextFormatter::format();
  }

  if (*(this + 36))
  {
    v5 = *(this + 8);
    PB::TextFormatter::format(a2, "execution_source");
  }

  v6 = *(this + 2);
  if (v6)
  {
    (*(*v6 + 32))(v6, a2, "gen_ai_metadata");
  }

  if (*(this + 3))
  {
    PB::TextFormatter::format();
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternalnlu_router::TurnSummary::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if (*(this + 8))
  {
    this = PB::Writer::write();
  }

  if (*(v3 + 24))
  {
    this = PB::Writer::write();
  }

  if (*(v3 + 36))
  {
    v4 = *(v3 + 32);
    this = PB::Writer::writeVarInt(a2);
  }

  v5 = *(v3 + 16);
  if (v5)
  {

    return PB::Writer::writeSubmessage(a2, v5);
  }

  return this;
}

uint64_t sirinluexternalnlu_router::TurnSummary::readFrom(sirinluexternalnlu_router::TurnSummary *this, PB::Reader *a2)
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

void sirinluexternalnlu_router::TurnSummary::~TurnSummary(sirinluexternalnlu_router::TurnSummary *this)
{
  sirinluexternalnlu_router::TurnSummary::~TurnSummary(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4876E40;
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (v2)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v2);
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
    std::default_delete<std::string>::operator()[abi:ne200100](v4);
  }

  PB::Base::~Base(this);
}

double sirinluexternalnlu_router::TurnSummary::TurnSummary(sirinluexternalnlu_router::TurnSummary *this)
{
  *this = &unk_1F4876E40;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = &unk_1F4876E40;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

uint64_t sirinluexternalnlu_router::TurnSummary::TurnSummary(uint64_t this, const sirinluexternalnlu_router::TurnSummary *a2)
{
  *this = &unk_1F4876E40;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  if (*(a2 + 1))
  {
    operator new();
  }

  if (*(a2 + 3))
  {
    operator new();
  }

  if (*(a2 + 36))
  {
    v2 = *(a2 + 8);
    *(this + 36) |= 1u;
    *(this + 32) = v2;
  }

  if (*(a2 + 2))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternalnlu_router::TurnSummary::operator=(uint64_t a1, const sirinluexternalnlu_router::TurnSummary *a2)
{
  if (a1 != a2)
  {
    sirinluexternalnlu_router::TurnSummary::TurnSummary(v7, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v9;
    v9 = v3;
    v4 = *(a1 + 32);
    *(a1 + 32) = v10;
    v10 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v5;
    sirinluexternalnlu_router::TurnSummary::~TurnSummary(v7);
  }

  return a1;
}

uint64_t sirinluexternalnlu_router::swap(uint64_t this, sirinluexternalnlu_router::TurnSummary *a2, sirinluexternalnlu_router::TurnSummary *a3)
{
  v3 = *(this + 36);
  *(this + 36) = *(a2 + 9);
  *(a2 + 9) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v4;
  v5 = *(this + 24);
  *(this + 24) = *(a2 + 3);
  *(a2 + 3) = v5;
  LODWORD(v5) = *(this + 32);
  *(this + 32) = *(a2 + 8);
  *(a2 + 8) = v5;
  v6 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v6;
  return this;
}

uint64_t sirinluexternalnlu_router::TurnSummary::TurnSummary(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4876E40;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
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
    std::default_delete<std::string>::operator()[abi:ne200100](v5);
  }

  v6 = *(a2 + 24);
  *(a2 + 24) = 0;
  v7 = *(a1 + 24);
  *(a1 + 24) = v6;
  if (v7)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v7);
  }

  *(a1 + 32) = *(a2 + 32);
  v8 = *(a2 + 16);
  *(a2 + 16) = 0;
  v9 = *(a1 + 16);
  *(a1 + 16) = v8;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  return a1;
}

uint64_t sirinluexternalnlu_router::TurnSummary::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluexternalnlu_router::TurnSummary::TurnSummary(v7, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v9;
    v9 = v3;
    v4 = *(a1 + 32);
    *(a1 + 32) = v10;
    v10 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v5;
    sirinluexternalnlu_router::TurnSummary::~TurnSummary(v7);
  }

  return a1;
}

uint64_t sirinluexternalnlu_router::TurnSummary::operator==(uint64_t a1, uint64_t a2)
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

  v13 = *(a1 + 24);
  v14 = *(a2 + 24);
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

    v19 = v15 >= 0 ? *(a1 + 24) : *v13;
    v20 = v18 >= 0 ? *(a2 + 24) : *v14;
    if (memcmp(v19, v20, v16))
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  v21 = *(a2 + 36);
  if ((*(a1 + 36) & 1) == 0)
  {
    if ((*(a2 + 36) & 1) == 0)
    {
      goto LABEL_42;
    }

    return 0;
  }

  if ((*(a2 + 36) & 1) == 0 || *(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

LABEL_42:
  v22 = *(a1 + 16);
  v23 = *(a2 + 16);
  result = (v22 | v23) == 0;
  if (v22 && v23)
  {
    v24 = *(a1 + 16);

    return sirinluexternalnlu_router::NLRoutingGenAIMetadata::operator==(v24, v23);
  }

  return result;
}

unint64_t sirinluexternalnlu_router::TurnSummary::hash_value(sirinluexternalnlu_router::TurnSummary *this)
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

  v4 = *(this + 3);
  if (v4)
  {
    v5 = std::__string_hash<char>::operator()[abi:ne200100](v4);
  }

  else
  {
    v5 = 0;
  }

  if (*(this + 36))
  {
    v6 = *(this + 8);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(this + 2);
  if (v7)
  {
    v7 = sirinluexternalnlu_router::NLRoutingGenAIMetadata::hash_value(v7);
  }

  return v5 ^ v3 ^ v6 ^ v7;
}

uint64_t sirinluexternalnlu_router::TurnSummary::makeGenAiMetadata(uint64_t this)
{
  if (!*(this + 16))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::AsrHypothesis::formatText(sirinluexternal::AsrHypothesis *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, a2, "asr_tokens");
  }

  v8 = *(this + 4);
  if (v8)
  {
    (*(*v8 + 32))(v8, a2, "id_a");
  }

  if (*(this + 80))
  {
    PB::TextFormatter::format(a2, "probability", *(this + 5));
  }

  v9 = *(this + 6);
  v10 = *(this + 7);
  while (v9 != v10)
  {
    v11 = *v9++;
    (*(*v11 + 32))(v11, a2, "rewritten_utterances");
  }

  if (*(this + 9))
  {
    PB::TextFormatter::format();
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternal::AsrHypothesis::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 32);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  if (*(v3 + 72))
  {
    this = PB::Writer::write();
  }

  if (*(v3 + 80))
  {
    this = PB::Writer::write(a2, *(v3 + 40));
  }

  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    this = PB::Writer::writeSubmessage(a2, v7);
  }

  v9 = *(v3 + 48);
  v8 = *(v3 + 56);
  while (v9 != v8)
  {
    v10 = *v9++;
    this = PB::Writer::writeSubmessage(a2, v10);
  }

  return this;
}

uint64_t sirinluexternal::AsrHypothesis::readFrom(sirinluexternal::AsrHypothesis *this, PB::Reader *a2)
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

          goto LABEL_34;
        case 4:
          operator new();
        case 5:
          operator new();
      }
    }

LABEL_17:
    if ((PB::Reader::skip(a2) & 1) == 0)
    {
      v25 = 0;
      return v25 & 1;
    }

LABEL_34:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v25 = v4 ^ 1;
  return v25 & 1;
}

void sirinluexternal::AsrHypothesis::~AsrHypothesis(sirinluexternal::AsrHypothesis *this)
{
  sirinluexternal::AsrHypothesis::~AsrHypothesis(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4876E90;
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

  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (*(this + 1))
  {
    std::vector<std::unique_ptr<siricommon::StringValue>>::clear[abi:ne200100](this + 1);
    operator delete(*(this + 1));
  }

  PB::Base::~Base(this);
}

double sirinluexternal::AsrHypothesis::AsrHypothesis(sirinluexternal::AsrHypothesis *this)
{
  *this = &unk_1F4876E90;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 20) = 0;
  return result;
}

{
  *this = &unk_1F4876E90;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 20) = 0;
  return result;
}

uint64_t sirinluexternal::AsrHypothesis::AsrHypothesis(uint64_t this, const sirinluexternal::AsrHypothesis *a2)
{
  *this = &unk_1F4876E90;
  *(this + 8) = 0u;
  *(this + 48) = 0u;
  *(this + 24) = 0u;
  *(this + 64) = 0u;
  *(this + 80) = 0;
  if (*(a2 + 4))
  {
    operator new();
  }

  if (*(a2 + 9))
  {
    operator new();
  }

  if (*(a2 + 80))
  {
    v2 = *(a2 + 5);
    *(this + 80) |= 1u;
    *(this + 40) = v2;
  }

  v3 = *(a2 + 1);
  if (v3 != *(a2 + 2))
  {
    v4 = *v3;
    operator new();
  }

  v5 = *(a2 + 6);
  if (v5 != *(a2 + 7))
  {
    v6 = *v5;
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::AsrHypothesis::operator=(uint64_t a1, const sirinluexternal::AsrHypothesis *a2)
{
  if (a1 != a2)
  {
    sirinluexternal::AsrHypothesis::AsrHypothesis(v12, a2);
    v3 = *(a1 + 40);
    *(a1 + 40) = v15;
    v15 = v3;
    v4 = v14;
    v5 = *(a1 + 8);
    *(a1 + 8) = v13;
    v6 = *(a1 + 24);
    *(a1 + 24) = v4;
    v13 = v5;
    v14 = v6;
    v7 = v17;
    v8 = *(a1 + 48);
    v9 = *(a1 + 64);
    *(a1 + 48) = v16;
    *(a1 + 64) = v7;
    v10 = *(a1 + 80);
    *(a1 + 80) = v18;
    v18 = v10;
    v16 = v8;
    v17 = v9;
    sirinluexternal::AsrHypothesis::~AsrHypothesis(v12);
  }

  return a1;
}

double sirinluexternal::swap(sirinluexternal *this, sirinluexternal::AsrHypothesis *a2, sirinluexternal::AsrHypothesis *a3)
{
  v3 = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v3;
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v5;
  result = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = result;
  v7 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v7;
  v8 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v8;
  v9 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v9;
  v10 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v10;
  v11 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v11;
  v12 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v12;
  return result;
}

uint64_t sirinluexternal::AsrHypothesis::AsrHypothesis(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4876E90;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 48) = 0u;
  v5 = (a1 + 48);
  *(a1 + 24) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = *(a2 + 80);
  *(a2 + 80) = 0;
  v6 = *(a2 + 32);
  *(a2 + 32) = 0;
  v7 = *(a1 + 32);
  *(a1 + 32) = v6;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(a2 + 72);
  *(a2 + 72) = 0;
  v9 = *(a1 + 72);
  *(a1 + 72) = v8;
  if (v9)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v9);
  }

  *(a1 + 40) = *(a2 + 40);
  if (*(a1 + 8))
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
  if (*(a1 + 48))
  {
    std::vector<std::unique_ptr<siricommon::StringValue>>::clear[abi:ne200100](v5);
    operator delete(*v5);
    *v5 = 0;
    v5[1] = 0;
    v5[2] = 0;
  }

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  return a1;
}

uint64_t sirinluexternal::AsrHypothesis::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluexternal::AsrHypothesis::AsrHypothesis(v12, a2);
    v3 = *(a1 + 40);
    *(a1 + 40) = v15;
    v15 = v3;
    v4 = v14;
    v5 = *(a1 + 8);
    *(a1 + 8) = v13;
    v6 = *(a1 + 24);
    *(a1 + 24) = v4;
    v13 = v5;
    v14 = v6;
    v7 = v17;
    v8 = *(a1 + 48);
    v9 = *(a1 + 64);
    *(a1 + 48) = v16;
    *(a1 + 64) = v7;
    v10 = *(a1 + 80);
    *(a1 + 80) = v18;
    v18 = v10;
    v16 = v8;
    v17 = v9;
    sirinluexternal::AsrHypothesis::~AsrHypothesis(v12);
  }

  return a1;
}

BOOL sirinluexternal::AsrHypothesis::operator==(uint64_t a1, uint64_t a2)
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

  v6 = *(a1 + 72);
  v7 = *(a2 + 72);
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

    v12 = v8 >= 0 ? *(a1 + 72) : *v6;
    v13 = v11 >= 0 ? *(a2 + 72) : *v7;
    if (memcmp(v12, v13, v9))
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v15 = *(a2 + 80);
  if ((*(a1 + 80) & 1) == 0)
  {
    if ((*(a2 + 80) & 1) == 0)
    {
      goto LABEL_29;
    }

    return 0;
  }

  if ((*(a2 + 80) & 1) == 0 || *(a1 + 40) != *(a2 + 40))
  {
    return 0;
  }

LABEL_29:
  v17 = *(a1 + 8);
  v16 = *(a1 + 16);
  v18 = *(a2 + 8);
  if (v16 - v17 != *(a2 + 16) - v18)
  {
    return 0;
  }

  while (v17 != v16)
  {
    if (!sirinluexternal::AsrTokenInformation::operator==(*v17, *v18))
    {
      return 0;
    }

    ++v17;
    ++v18;
  }

  v19 = *(a1 + 48);
  v20 = *(a1 + 56);
  v21 = *(a2 + 48);
  v22 = *(a2 + 56);

  return PB::PtrVector<sirinluexternal::RewrittenUtterance>::operator==(v19, v20, v21, v22);
}

BOOL PB::PtrVector<sirinluexternal::RewrittenUtterance>::operator==(char *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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
    result = sirinluexternal::RewrittenUtterance::operator==(v7, v9);
  }

  while (result && v5 != a2);
  return result;
}

unint64_t sirinluexternal::AsrHypothesis::hash_value(sirinluexternal::AsrHypothesis *this)
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
  v7 = *(this + 9);
  if (v7)
  {
    v8 = std::__string_hash<char>::operator()[abi:ne200100](v7);
  }

  else
  {
    v8 = 0;
  }

  if (*(this + 80))
  {
    if (*(this + 5) == 0.0)
    {
      v9 = 0;
    }

    else
    {
      v9 = *(this + 5);
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = *(this + 1);
  v11 = *(this + 2);
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
      v12 ^= sirinluexternal::AsrTokenInformation::hash_value(v13);
    }

    while (v10 != v11);
  }

  v15 = *(this + 6);
  v14 = *(this + 7);
  if (v15 == v14)
  {
    v16 = 0;
  }

  else
  {
    v16 = 0;
    do
    {
      v17 = *v15++;
      v16 ^= sirinluexternal::RewrittenUtterance::hash_value(v17);
    }

    while (v15 != v14);
  }

  return v8 ^ v6 ^ v9 ^ v12 ^ v16;
}

uint64_t sirinluexternal::AsrHypothesis::makeIdA(uint64_t this)
{
  if (!*(this + 32))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::NLUSupplementaryOutput::formatText(sirinluexternal::NLUSupplementaryOutput *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "correction_outcome");
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
    (*(*v9 + 32))(v9, a2, "rewrite");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternal::NLUSupplementaryOutput::writeTo(uint64_t this, PB::Writer *a2)
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
  if (v7)
  {
    this = PB::Writer::writeSubmessage(a2, v7);
  }

  v8 = *(v3 + 8);
  if (v8)
  {

    return PB::Writer::writeSubmessage(a2, v8);
  }

  return this;
}

uint64_t sirinluexternal::NLUSupplementaryOutput::readFrom(sirinluexternal::NLUSupplementaryOutput *this, PB::Reader *a2)
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
        PB::PtrVector<sirinluexternal::Span>::emplace_back<>();
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

void sirinluexternal::NLUSupplementaryOutput::~NLUSupplementaryOutput(sirinluexternal::NLUSupplementaryOutput *this)
{
  sirinluexternal::NLUSupplementaryOutput::~NLUSupplementaryOutput(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4876EE0;
  v2 = *(this + 5);
  *(this + 5) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
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

double sirinluexternal::NLUSupplementaryOutput::NLUSupplementaryOutput(sirinluexternal::NLUSupplementaryOutput *this)
{
  *this = &unk_1F4876EE0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

{
  *this = &unk_1F4876EE0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

uint64_t sirinluexternal::NLUSupplementaryOutput::NLUSupplementaryOutput(uint64_t this, const sirinluexternal::NLUSupplementaryOutput *a2)
{
  *(this + 8) = 0u;
  *this = &unk_1F4876EE0;
  *(this + 24) = 0u;
  *(this + 40) = 0;
  v2 = *(a2 + 2);
  if (v2 != *(a2 + 3))
  {
    v3 = *v2;
    PB::PtrVector<sirinluexternal::Span>::emplace_back<sirinluexternal::Span const&>();
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

uint64_t sirinluexternal::NLUSupplementaryOutput::operator=(uint64_t a1, const sirinluexternal::NLUSupplementaryOutput *a2)
{
  if (a1 != a2)
  {
    sirinluexternal::NLUSupplementaryOutput::NLUSupplementaryOutput(&v7, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v9;
    v9 = v3;
    v4 = *(a1 + 40);
    *(a1 + 40) = v10;
    v10 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v5;
    sirinluexternal::NLUSupplementaryOutput::~NLUSupplementaryOutput(&v7);
  }

  return a1;
}

void *sirinluexternal::swap(void *this, sirinluexternal::NLUSupplementaryOutput *a2, sirinluexternal::NLUSupplementaryOutput *a3)
{
  v3 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v3;
  v4 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v4;
  v5 = this[4];
  this[4] = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = this[5];
  this[5] = *(a2 + 5);
  *(a2 + 5) = v6;
  v7 = this[1];
  this[1] = *(a2 + 1);
  *(a2 + 1) = v7;
  return this;
}

uint64_t sirinluexternal::NLUSupplementaryOutput::NLUSupplementaryOutput(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4876EE0;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__vdeallocate((a1 + 16));
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v6 = *(a1 + 40);
  *(a1 + 40) = v5;
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

uint64_t sirinluexternal::NLUSupplementaryOutput::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluexternal::NLUSupplementaryOutput::NLUSupplementaryOutput(&v7, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v9;
    v9 = v3;
    v4 = *(a1 + 40);
    *(a1 + 40) = v10;
    v10 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v5;
    sirinluexternal::NLUSupplementaryOutput::~NLUSupplementaryOutput(&v7);
  }

  return a1;
}

BOOL sirinluexternal::NLUSupplementaryOutput::operator==(uint64_t a1, uint64_t a2)
{
  result = PB::PtrVector<sirinluexternal::Span>::operator==((a1 + 16), *(a2 + 16), *(a2 + 24));
  if (!result)
  {
    return result;
  }

  v5 = *(a1 + 40);
  v6 = *(a2 + 40);
  if (!v5)
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (!v6 || !sirinluexternal::RewriteMessage::operator==(v5, v6))
  {
    return 0;
  }

LABEL_9:
  v7 = *(a1 + 8);
  v8 = *(a2 + 8);
  result = (v7 | v8) == 0;
  if (v7 && v8)
  {
    v9 = *(v8 + 12);
    if (*(v7 + 12))
    {
      if ((*(v8 + 12) & 1) != 0 && *(v7 + 8) == *(v8 + 8))
      {
        return 1;
      }
    }

    else if ((*(v8 + 12) & 1) == 0)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

BOOL PB::PtrVector<sirinluexternal::Span>::operator==(uint64_t **a1, uint64_t *a2, uint64_t a3)
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
    result = sirinluexternal::Span::operator==(v6, v8);
  }

  while (result && v4 != v3);
  return result;
}

unint64_t sirinluexternal::NLUSupplementaryOutput::hash_value(sirinluexternal::NLUSupplementaryOutput *this)
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
      v4 ^= sirinluexternal::Span::hash_value(v5);
    }

    while (v2 != v3);
  }

  v6 = *(this + 5);
  if (v6)
  {
    if (*(v6 + 20))
    {
      v7 = *(v6 + 16);
    }

    else
    {
      v7 = 0;
    }

    v8 = *(v6 + 8);
    if (v8)
    {
      v8 = std::__string_hash<char>::operator()[abi:ne200100](v8);
    }

    v6 = v8 ^ v7;
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

  return v6 ^ v4 ^ v9;
}

uint64_t sirinluexternal::NLUSupplementaryOutput::makeRewrite(uint64_t this)
{
  if (!*(this + 40))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::NLUSupplementaryOutput::makeCorrectionOutcome(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::ReferenceContext::formatText(sirinluexternal::ReferenceContext *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 12);
  if (v5)
  {
    v6 = *(this + 8);
    PB::TextFormatter::format(a2, "contextual_reference");
    v5 = *(this + 12);
  }

  if ((v5 & 2) != 0)
  {
    v7 = *(this + 9);
    PB::TextFormatter::format(a2, "disambiguation_needed");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternal::ReferenceContext::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 12);
  if (v4)
  {
    v5 = *(this + 8);
    this = PB::Writer::write(a2);
    v4 = *(v3 + 12);
  }

  if ((v4 & 2) != 0)
  {
    v6 = *(v3 + 9);

    return PB::Writer::write(a2);
  }

  return this;
}

uint64_t sirinluexternal::ReferenceContext::readFrom(sirinluexternal::ReferenceContext *this, PB::Reader *a2)
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
        goto LABEL_35;
      }

      if ((v10 >> 3) == 2)
      {
        *(this + 12) |= 2u;
        v2 = *(a2 + 1);
        v3 = *(a2 + 2);
        if (v2 >= v3)
        {
          v25 = 0;
          *(a2 + 24) = 1;
        }

        else
        {
          v24 = *(*a2 + v2++);
          *(a2 + 1) = v2;
          v25 = v24 != 0;
        }

        *(this + 9) = v25;
      }

      else if ((v10 >> 3) == 1)
      {
        *(this + 12) |= 1u;
        v2 = *(a2 + 1);
        v3 = *(a2 + 2);
        if (v2 >= v3)
        {
          v23 = 0;
          *(a2 + 24) = 1;
        }

        else
        {
          v22 = *(*a2 + v2++);
          *(a2 + 1) = v2;
          v23 = v22 != 0;
        }

        *(this + 8) = v23;
      }

      else
      {
LABEL_23:
        if (!PB::Reader::skip(a2))
        {
          v26 = 0;
          return v26 & 1;
        }

        v2 = *(a2 + 1);
        v3 = *(a2 + 2);
      }

      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_35;
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

LABEL_35:
  v26 = v4 ^ 1;
  return v26 & 1;
}

void sirinluexternal::ReferenceContext::~ReferenceContext(sirinluexternal::ReferenceContext *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x1CCA7EC50);
}

uint64_t sirinluexternal::ReferenceContext::ReferenceContext(uint64_t this)
{
  *this = &unk_1F4876F30;
  *(this + 12) = 0;
  return this;
}

{
  *this = &unk_1F4876F30;
  *(this + 12) = 0;
  return this;
}

uint64_t sirinluexternal::ReferenceContext::ReferenceContext(uint64_t this, const sirinluexternal::ReferenceContext *a2)
{
  *this = &unk_1F4876F30;
  *(this + 12) = 0;
  if (*(a2 + 12))
  {
    v3 = *(a2 + 8);
    *(this + 12) = 1;
    *(this + 8) = v3;
    v2 = 3;
    if ((*(a2 + 12) & 2) == 0)
    {
      return this;
    }

    goto LABEL_5;
  }

  v2 = 2;
  if ((*(a2 + 12) & 2) != 0)
  {
LABEL_5:
    v4 = *(a2 + 9);
    *(this + 12) = v2;
    *(this + 9) = v4;
  }

  return this;
}

uint64_t sirinluexternal::ReferenceContext::operator=(uint64_t a1, const sirinluexternal::ReferenceContext *a2)
{
  if (a1 != a2)
  {
    sirinluexternal::ReferenceContext::ReferenceContext(&v5, a2);
    v3 = *(a1 + 12);
    *(a1 + 12) = v7;
    v7 = v3;
    LOWORD(v3) = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    PB::Base::~Base(&v5);
  }

  return a1;
}

uint64_t sirinluexternal::swap(uint64_t this, sirinluexternal::ReferenceContext *a2, sirinluexternal::ReferenceContext *a3)
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
  return this;
}

uint64_t sirinluexternal::ReferenceContext::ReferenceContext(uint64_t result, uint64_t a2)
{
  *result = &unk_1F4876F30;
  *(result + 12) = *(a2 + 12);
  *(a2 + 12) = 0;
  *(result + 8) = *(a2 + 8);
  *(result + 9) = *(a2 + 9);
  return result;
}

{
  *result = &unk_1F4876F30;
  *(result + 12) = *(a2 + 12);
  *(a2 + 12) = 0;
  *(result + 8) = *(a2 + 8);
  *(result + 9) = *(a2 + 9);
  return result;
}

uint64_t sirinluexternal::ReferenceContext::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v7 = &unk_1F4876F30;
    v3 = *(a2 + 12);
    *(a2 + 12) = 0;
    v4 = *(a2 + 8);
    v5 = *(a1 + 12);
    *(a1 + 12) = v3;
    v9 = v5;
    LOWORD(v3) = *(a1 + 8);
    *(a1 + 8) = v4;
    v8 = v3;
    PB::Base::~Base(&v7);
  }

  return a1;
}

BOOL sirinluexternal::ReferenceContext::operator==(unsigned __int8 *a1, unsigned __int8 *a2)
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

  v2 = (a2[12] & 2) == 0;
  if ((a1[12] & 2) != 0)
  {
    return (a2[12] & 2) != 0 && a1[9] == a2[9];
  }

  return v2;
}

uint64_t sirinluexternal::ReferenceContext::hash_value(sirinluexternal::ReferenceContext *this)
{
  if (*(this + 12))
  {
    v1 = *(this + 8);
    if ((*(this + 12) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v2 = 0;
    return v2 ^ v1;
  }

  v1 = 0;
  if ((*(this + 12) & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v2 = *(this + 9);
  return v2 ^ v1;
}

uint64_t SIRINLUEXTERNALSpanPropertyReadFrom(uint64_t a1, void *a2)
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
          v14 = objc_alloc_init(SIRICOMMONInt32Value);
          objc_storeStrong((a1 + 24), v14);
          v18 = 0;
          v19 = 0;
          if (!PBReaderPlaceMark() || !SIRICOMMONInt32ValueReadFrom(v14, a2))
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
          v14 = objc_alloc_init(SIRICOMMONFloatValue);
          objc_storeStrong((a1 + 16), v14);
          v18 = 0;
          v19 = 0;
          if (!PBReaderPlaceMark() || !SIRICOMMONFloatValueReadFrom(v14, a2))
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
          v14 = *(a1 + 8);
          *(a1 + 8) = v15;
          goto LABEL_34;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(SIRICOMMONStringValue);
          objc_storeStrong((a1 + 32), v14);
          v18 = 0;
          v19 = 0;
          if (!PBReaderPlaceMark() || !SIRICOMMONStringValueReadFrom(v14, a2))
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

uint64_t SIRINLUEXTERNALUserDialogActReadFrom(id *a1, void *a2)
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
      if ((v12 >> 3) <= 8)
      {
        if (v13 <= 5)
        {
          if (v13 == 3)
          {
            v14 = objc_alloc_init(SIRINLUEXTERNALUserAccepted);
            objc_storeStrong(a1 + 1, v14);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUEXTERNALUserAcceptedReadFrom(v14, a2))
            {
LABEL_69:

              return 0;
            }

            goto LABEL_63;
          }

          if (v13 == 4)
          {
            v14 = objc_alloc_init(SIRINLUEXTERNALUserRejected);
            objc_storeStrong(a1 + 6, v14);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUEXTERNALUserRejectedReadFrom(v14, a2))
            {
              goto LABEL_69;
            }

            goto LABEL_63;
          }
        }

        else
        {
          switch(v13)
          {
            case 6:
              v14 = objc_alloc_init(SIRINLUEXTERNALUserCancelled);
              objc_storeStrong(a1 + 4, v14);
              v17 = 0;
              v18 = 0;
              if (!PBReaderPlaceMark() || !SIRINLUEXTERNALUserCancelledReadFrom(v14, a2))
              {
                goto LABEL_69;
              }

              goto LABEL_63;
            case 7:
              v14 = objc_alloc_init(SIRINLUEXTERNALUserWantedToRepeat);
              objc_storeStrong(a1 + 10, v14);
              v17 = 0;
              v18 = 0;
              if (!PBReaderPlaceMark() || !SIRINLUEXTERNALUserWantedToRepeatReadFrom(v14, a2))
              {
                goto LABEL_69;
              }

              goto LABEL_63;
            case 8:
              v14 = objc_alloc_init(SIRINLUEXTERNALUserAcknowledged);
              objc_storeStrong(a1 + 2, v14);
              v17 = 0;
              v18 = 0;
              if (!PBReaderPlaceMark() || !SIRINLUEXTERNALUserAcknowledgedReadFrom(v14, a2))
              {
                goto LABEL_69;
              }

              goto LABEL_63;
          }
        }
      }

      else if (v13 > 12)
      {
        switch(v13)
        {
          case 0xD:
            v14 = objc_alloc_init(SIRINLUEXTERNALUserStatedTask);
            objc_storeStrong(a1 + 7, v14);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUEXTERNALUserStatedTaskReadFrom(v14, a2))
            {
              goto LABEL_69;
            }

            goto LABEL_63;
          case 0xE:
            v14 = objc_alloc_init(SIRINLUEXTERNALUserWantedToUndo);
            objc_storeStrong(a1 + 11, v14);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUEXTERNALUserWantedToUndoReadFrom(v14, a2))
            {
              goto LABEL_69;
            }

            goto LABEL_63;
          case 0x65:
            v14 = objc_alloc_init(SIRINLUEXTERNALUtteranceAlignment);
            objc_storeStrong(a1 + 3, v14);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUEXTERNALUtteranceAlignmentReadFrom(v14, a2))
            {
              goto LABEL_69;
            }

            goto LABEL_63;
        }
      }

      else
      {
        switch(v13)
        {
          case 9:
            v14 = objc_alloc_init(SIRINLUEXTERNALUserWantedToProceed);
            objc_storeStrong(a1 + 9, v14);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUEXTERNALUserWantedToProceedReadFrom(v14, a2))
            {
              goto LABEL_69;
            }

            goto LABEL_63;
          case 0xA:
            v14 = objc_alloc_init(SIRINLUEXTERNALUserWantedToPause);
            objc_storeStrong(a1 + 8, v14);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUEXTERNALUserWantedToPauseReadFrom(v14, a2))
            {
              goto LABEL_69;
            }

            goto LABEL_63;
          case 0xC:
            v14 = objc_alloc_init(SIRINLUEXTERNALDelegatedUserDialogAct);
            objc_storeStrong(a1 + 5, v14);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUEXTERNALDelegatedUserDialogActReadFrom(v14, a2))
            {
              goto LABEL_69;
            }

LABEL_63:
            PBReaderRecallMark();

            goto LABEL_64;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_64:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1C8B0D190(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1C8B0D874(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1C8B0DD14(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1C8B0E9F8(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

uint64_t SIRINLUEXTERNALTurnInputReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v40) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v40 & 0x7F) << v5;
        if ((v40 & 0x80) == 0)
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
      if ((v12 >> 3) <= 5)
      {
        if (v13 <= 2)
        {
          if (v13 == 1)
          {
            v21 = objc_alloc_init(SIRINLUEXTERNALSystemDialogActGroup);
            objc_storeStrong((a1 + 64), v21);
            v40 = 0;
            v41 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUEXTERNALSystemDialogActGroupReadFrom(&v21->super.super.isa, a2))
            {
LABEL_92:

              return 0;
            }

            goto LABEL_69;
          }

          if (v13 == 2)
          {
            v21 = objc_alloc_init(SIRINLUEXTERNALEntityCandidate);
            [a1 addSalientEntities:v21];
            v40 = 0;
            v41 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUEXTERNALEntityCandidateReadFrom(&v21->super.super.isa, a2))
            {
              goto LABEL_92;
            }

            goto LABEL_69;
          }
        }

        else
        {
          switch(v13)
          {
            case 3:
              v21 = objc_alloc_init(SIRINLUEXTERNALTask);
              [a1 addActiveTasks:v21];
              goto LABEL_64;
            case 4:
              v21 = objc_alloc_init(SIRINLUEXTERNALTask);
              [a1 addExecutedTasks:v21];
LABEL_64:
              v40 = 0;
              v41 = 0;
              if (!PBReaderPlaceMark() || !SIRINLUEXTERNALTaskReadFrom(&v21->super.super.isa, a2))
              {
                goto LABEL_92;
              }

              goto LABEL_69;
            case 5:
              v21 = objc_alloc_init(SIRINLUEXTERNALAsrHypothesis);
              [a1 addAsrOutputs:v21];
              v40 = 0;
              v41 = 0;
              if (!PBReaderPlaceMark() || !SIRINLUEXTERNALAsrHypothesisReadFrom(v21, a2))
              {
                goto LABEL_92;
              }

              goto LABEL_69;
          }
        }
      }

      else if (v13 > 8)
      {
        switch(v13)
        {
          case 9:
            v30 = 0;
            v31 = 0;
            v32 = 0;
            *(a1 + 84) |= 1u;
            while (1)
            {
              LOBYTE(v40) = 0;
              v33 = [a2 position] + 1;
              if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
              {
                v35 = [a2 data];
                [v35 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v32 |= (v40 & 0x7F) << v30;
              if ((v40 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              v11 = v31++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_89;
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

LABEL_89:
            *(a1 + 8) = v36;
            goto LABEL_90;
          case 0xA:
            v21 = objc_alloc_init(SIRINLUEXTERNALCorrectionOutcome);
            objc_storeStrong((a1 + 32), v21);
            v40 = 0;
            v41 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUEXTERNALCorrectionOutcomeReadFrom(v21, a2))
            {
              goto LABEL_92;
            }

            goto LABEL_69;
          case 0xB:
            v22 = 0;
            v23 = 0;
            v24 = 0;
            *(a1 + 84) |= 2u;
            while (1)
            {
              LOBYTE(v40) = 0;
              v25 = [a2 position] + 1;
              if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
              {
                v27 = [a2 data];
                [v27 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v24 |= (v40 & 0x7F) << v22;
              if ((v40 & 0x80) == 0)
              {
                break;
              }

              v22 += 7;
              v11 = v23++ >= 9;
              if (v11)
              {
                LOBYTE(v20) = 0;
                goto LABEL_84;
              }
            }

            v20 = (v24 != 0) & ~[a2 hasError];
LABEL_84:
            v37 = 80;
            goto LABEL_85;
        }
      }

      else
      {
        switch(v13)
        {
          case 6:
            v21 = objc_alloc_init(SIRINLUEXTERNALTurnContext);
            objc_storeStrong((a1 + 72), v21);
            v40 = 0;
            v41 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUEXTERNALTurnContextReadFrom(v21, a2))
            {
              goto LABEL_92;
            }

LABEL_69:
            PBReaderRecallMark();

            goto LABEL_90;
          case 7:
            v28 = PBReaderReadString();
            v29 = *(a1 + 48);
            *(a1 + 48) = v28;

            goto LABEL_90;
          case 8:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 84) |= 4u;
            while (1)
            {
              LOBYTE(v40) = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v40 & 0x7F) << v14;
              if ((v40 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                LOBYTE(v20) = 0;
                goto LABEL_82;
              }
            }

            v20 = (v16 != 0) & ~[a2 hasError];
LABEL_82:
            v37 = 81;
LABEL_85:
            *(a1 + v37) = v20;
            goto LABEL_90;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_90:
      v38 = [a2 position];
    }

    while (v38 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sirinluexternalsubword_embedding::SubwordEmbeddingSetup::formatText(sirinluexternalsubword_embedding::SubwordEmbeddingSetup *this, PB::TextFormatter *a2, const char *a3)
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

uint64_t sirinluexternalsubword_embedding::SubwordEmbeddingSetup::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = this;
  if (*(this + 16))
  {
    this = PB::Writer::write();
  }

  if (*(v2 + 8))
  {

    return PB::Writer::write();
  }

  return this;
}

uint64_t sirinluexternalsubword_embedding::SubwordEmbeddingSetup::readFrom(sirinluexternalsubword_embedding::SubwordEmbeddingSetup *this, PB::Reader *a2)
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