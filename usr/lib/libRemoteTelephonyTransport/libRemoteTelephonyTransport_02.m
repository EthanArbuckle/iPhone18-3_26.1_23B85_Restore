telephonytransport::PCIReadRegisterResponse *telephonytransport::PCIReadRegisterResponse::PCIReadRegisterResponse(telephonytransport::PCIReadRegisterResponse *this, const telephonytransport::PCIReadRegisterResponse *a2)
{
  *this = &unk_2A1E9E6C8;
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  *(this + 3) = 0;
  v5 = *(a2 + 2);
  if (v5)
  {
    v6 = operator new(0x18uLL);
    *(this + 2) = telephonytransport::PCIMessageId::PCIMessageId(v6, v5);
  }

  if (*(a2 + 28))
  {
    v7 = *(a2 + 6);
    *(this + 28) = 1;
    *(this + 6) = v7;
  }

  v8 = *(a2 + 1);
  if (v8)
  {
    v9 = operator new(0x10uLL);
    PB::Data::Data(v9, v8);
    std::unique_ptr<PB::Data>::reset[abi:ne200100](v4, v9);
  }

  return this;
}

uint64_t telephonytransport::PCIReadRegisterResponse::operator=(uint64_t a1, const telephonytransport::PCIReadRegisterResponse *a2)
{
  if (a1 != a2)
  {
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *v8 = v3;
    *&v8[16] = v3;
    telephonytransport::PCIReadRegisterResponse::PCIReadRegisterResponse(v8, a2);
    v4 = *(a1 + 24);
    v5 = *(a1 + 28);
    *(a1 + 24) = *&v8[24];
    *&v8[24] = v4;
    *&v8[28] = v5;
    v6 = *(a1 + 8);
    *(a1 + 8) = *&v8[8];
    *&v8[8] = v6;
    telephonytransport::PCIReadRegisterResponse::~PCIReadRegisterResponse(v8);
  }

  return a1;
}

uint64_t telephonytransport::swap(uint64_t this, telephonytransport::PCIReadRegisterResponse *a2, telephonytransport::PCIReadRegisterResponse *a3)
{
  v3 = *(this + 28);
  *(this + 28) = *(a2 + 7);
  *(a2 + 7) = v3;
  v4 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v4;
  LODWORD(v4) = *(this + 24);
  *(this + 24) = *(a2 + 6);
  *(a2 + 6) = v4;
  v5 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v5;
  return this;
}

uint64_t telephonytransport::PCIReadRegisterResponse::PCIReadRegisterResponse(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A1E9E6C8;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  v5 = *(a2 + 16);
  *(a2 + 16) = 0;
  v6 = *(a1 + 16);
  *(a1 + 16) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  *(a1 + 24) = *(a2 + 24);
  v7 = *(a2 + 8);
  *(a2 + 8) = 0;
  std::unique_ptr<PB::Data>::reset[abi:ne200100](v4, v7);
  return a1;
}

uint64_t telephonytransport::PCIReadRegisterResponse::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *v8 = v3;
    *&v8[16] = v3;
    telephonytransport::PCIReadRegisterResponse::PCIReadRegisterResponse(v8, a2);
    v4 = *(a1 + 24);
    v5 = *(a1 + 28);
    *(a1 + 24) = *&v8[24];
    *&v8[24] = v4;
    *&v8[28] = v5;
    v6 = *(a1 + 8);
    *(a1 + 8) = *&v8[8];
    *&v8[8] = v6;
    telephonytransport::PCIReadRegisterResponse::~PCIReadRegisterResponse(v8);
  }

  return a1;
}

uint64_t telephonytransport::PCIReadRegisterResponse::formatText(telephonytransport::PCIReadRegisterResponse *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 1))
  {
    PB::TextFormatter::format();
  }

  v5 = *(this + 2);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "messageId");
  }

  if (*(this + 28))
  {
    v6 = *(this + 6);
    PB::TextFormatter::format(a2, "result");
  }

  return MEMORY[0x2A1C68DE0](a2);
}

uint64_t telephonytransport::PCIReadRegisterResponse::readFrom(void ***this, PB::Reader *a2)
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
        goto LABEL_51;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        v34 = operator new(0x10uLL);
        *v34 = 0;
        v34[1] = 0;
        std::unique_ptr<PB::Data>::reset[abi:ne200100](this + 1, v34);
        PB::Reader::read(a2, this[1]);
      }

      else if (v22 == 2)
      {
        *(this + 28) |= 1u;
        v26 = *(a2 + 1);
        v25 = *(a2 + 2);
        v27 = *a2;
        if (v26 > 0xFFFFFFFFFFFFFFF5 || v26 + 10 > v25)
        {
          v35 = 0;
          v36 = 0;
          v30 = 0;
          v37 = (v27 + v26);
          v18 = v25 >= v26;
          v38 = v25 - v26;
          if (!v18)
          {
            v38 = 0;
          }

          v39 = v26 + 1;
          while (1)
          {
            if (!v38)
            {
              LODWORD(v30) = 0;
              *(a2 + 24) = 1;
              goto LABEL_49;
            }

            v40 = *v37;
            *(a2 + 1) = v39;
            v30 |= (v40 & 0x7F) << v35;
            if ((v40 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            ++v37;
            --v38;
            ++v39;
            v14 = v36++ > 8;
            if (v14)
            {
LABEL_45:
              LODWORD(v30) = 0;
              goto LABEL_49;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v30) = 0;
          }
        }

        else
        {
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = (v27 + v26);
          v32 = v26 + 1;
          while (1)
          {
            *(a2 + 1) = v32;
            v33 = *v31++;
            v30 |= (v33 & 0x7F) << v28;
            if ((v33 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            ++v32;
            v14 = v29++ > 8;
            if (v14)
            {
              goto LABEL_45;
            }
          }
        }

LABEL_49:
        *(this + 6) = v30;
      }

      else if (v22 == 1)
      {
        v23 = operator new(0x18uLL);
        *v23 = &unk_2A1E9E7A8;
        *(v23 + 5) = 0;
        v24 = this[2];
        this[2] = v23;
        if (v24)
        {
          (*(*v24 + 1))(v24);
          v23 = this[2];
        }

        if (!PB::Reader::placeMark() || !(*(*v23 + 2))(v23, a2))
        {
LABEL_53:
          v41 = 0;
          return v41 & 1;
        }

        PB::Reader::recallMark();
      }

      else
      {
LABEL_17:
        if ((PB::Reader::skip(a2) & 1) == 0)
        {
          goto LABEL_53;
        }
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_51;
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

LABEL_51:
  v41 = v4 ^ 1;
  return v41 & 1;
}

uint64_t telephonytransport::PCIReadRegisterResponse::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 16);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  if (*(v3 + 28))
  {
    v5 = *(v3 + 24);
    this = PB::Writer::writeVarInt(a2);
  }

  if (*(v3 + 8))
  {

    return MEMORY[0x2A1C68E58](a2);
  }

  return this;
}

BOOL telephonytransport::PCIReadRegisterResponse::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v4)
  {
    if (!v5 || !telephonytransport::PCIMessageId::operator==(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v6 = *(a2 + 28);
  if (*(a1 + 28))
  {
    if ((*(a2 + 28) & 1) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if (*(a2 + 28))
  {
    return 0;
  }

  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }

    if (PB::Data::operator==())
    {
      return 1;
    }

    if (*(a1 + 8))
    {
      return 0;
    }
  }

  return *(a2 + 8) == 0;
}

uint64_t telephonytransport::PCIReadRegisterResponse::hash_value(telephonytransport::PCIReadRegisterResponse *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    v2 = *(v1 + 20);
    v3 = *(v1 + 16);
    if ((v2 & 2) == 0)
    {
      v3 = 0;
    }

    v4 = *(v1 + 8);
    if ((v2 & 1) == 0)
    {
      v4 = 0;
    }

    v5 = v4 ^ v3;
  }

  else
  {
    v5 = 0;
  }

  if (*(this + 28))
  {
    v6 = *(this + 6);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(this + 1);
  if (v7)
  {
    v8 = *v7;
    v9 = v7[1];
    v10 = PBHashBytes();
  }

  else
  {
    v10 = 0;
  }

  return v6 ^ v5 ^ v10;
}

void *telephonytransport::PCIReadRegisterResponse::makeMessageId(void *this)
{
  if (!this[2])
  {
    v1 = this;
    this = operator new(0x18uLL);
    *this = &unk_2A1E9E7A8;
    *(this + 5) = 0;
    v1[2] = this;
  }

  return this;
}

uint64_t telephonytransport::PCIReadRegisterRequest::PCIReadRegisterRequest(uint64_t this)
{
  *this = &unk_2A1E9E700;
  *(this + 8) = 0;
  *(this + 28) = 0;
  return this;
}

{
  *this = &unk_2A1E9E700;
  *(this + 8) = 0;
  *(this + 28) = 0;
  return this;
}

void telephonytransport::PCIReadRegisterRequest::~PCIReadRegisterRequest(telephonytransport::PCIReadRegisterRequest *this)
{
  v2 = *(this + 1);
  *this = &unk_2A1E9E700;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  telephonytransport::PCIReadRegisterRequest::~PCIReadRegisterRequest(this);

  operator delete(v1);
}

telephonytransport::PCIReadRegisterRequest *telephonytransport::PCIReadRegisterRequest::PCIReadRegisterRequest(telephonytransport::PCIReadRegisterRequest *this, const telephonytransport::PCIReadRegisterRequest *a2)
{
  *this = &unk_2A1E9E700;
  *(this + 1) = 0;
  *(this + 7) = 0;
  v4 = *(a2 + 1);
  if (v4)
  {
    v5 = operator new(0x18uLL);
    *(this + 1) = telephonytransport::PCIMessageId::PCIMessageId(v5, v4);
  }

  v6 = *(a2 + 28);
  if ((v6 & 4) != 0)
  {
    v8 = *(a2 + 6);
    v7 = 4;
    *(this + 28) = 4;
    *(this + 6) = v8;
    v6 = *(a2 + 28);
    if ((v6 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v7 = 0;
  if ((*(a2 + 28) & 2) != 0)
  {
LABEL_7:
    v9 = *(a2 + 5);
    v7 |= 2u;
    *(this + 28) = v7;
    *(this + 5) = v9;
    v6 = *(a2 + 28);
  }

LABEL_8:
  if (v6)
  {
    v10 = *(a2 + 4);
    *(this + 28) = v7 | 1;
    *(this + 4) = v10;
  }

  return this;
}

uint64_t telephonytransport::PCIReadRegisterRequest::operator=(uint64_t a1, const telephonytransport::PCIReadRegisterRequest *a2)
{
  if (a1 != a2)
  {
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v9 = v3;
    v10 = v3;
    telephonytransport::PCIReadRegisterRequest::PCIReadRegisterRequest(&v9, a2);
    v4 = *(a1 + 8);
    *(a1 + 8) = *(&v9 + 1);
    *(&v9 + 1) = v4;
    v5 = v10;
    v6 = *(a1 + 28);
    DWORD2(v10) = *(a1 + 24);
    HIDWORD(v10) = v6;
    v7 = *(a1 + 16);
    *(a1 + 16) = v5;
    *&v10 = v7;
    telephonytransport::PCIReadRegisterRequest::~PCIReadRegisterRequest(&v9);
  }

  return a1;
}

uint64_t telephonytransport::swap(uint64_t this, telephonytransport::PCIReadRegisterRequest *a2, telephonytransport::PCIReadRegisterRequest *a3)
{
  v3 = *(this + 28);
  *(this + 28) = *(a2 + 7);
  *(a2 + 7) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 24);
  *(this + 24) = *(a2 + 6);
  *(a2 + 6) = v4;
  LODWORD(v4) = *(this + 20);
  *(this + 20) = *(a2 + 5);
  *(a2 + 5) = v4;
  LODWORD(v4) = *(this + 16);
  *(this + 16) = *(a2 + 4);
  *(a2 + 4) = v4;
  return this;
}

uint64_t telephonytransport::PCIReadRegisterRequest::PCIReadRegisterRequest(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A1E9E700;
  *(a1 + 8) = 0;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t telephonytransport::PCIReadRegisterRequest::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v9 = v3;
    v10 = v3;
    telephonytransport::PCIReadRegisterRequest::PCIReadRegisterRequest(&v9, a2);
    v4 = *(a1 + 8);
    *(a1 + 8) = *(&v9 + 1);
    *(&v9 + 1) = v4;
    v5 = v10;
    v6 = *(a1 + 28);
    DWORD2(v10) = *(a1 + 24);
    HIDWORD(v10) = v6;
    v7 = *(a1 + 16);
    *(a1 + 16) = v5;
    *&v10 = v7;
    telephonytransport::PCIReadRegisterRequest::~PCIReadRegisterRequest(&v9);
  }

  return a1;
}

uint64_t telephonytransport::PCIReadRegisterRequest::formatText(telephonytransport::PCIReadRegisterRequest *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 28))
  {
    v5 = *(this + 4);
    PB::TextFormatter::format(a2, "bytesToRead");
  }

  v6 = *(this + 1);
  if (v6)
  {
    (*(*v6 + 32))(v6, a2, "messageId");
  }

  v7 = *(this + 28);
  if ((v7 & 2) != 0)
  {
    v8 = *(this + 5);
    PB::TextFormatter::format(a2, "timeoutMs");
    v7 = *(this + 28);
  }

  if ((v7 & 4) != 0)
  {
    v9 = *(this + 6);
    PB::TextFormatter::format(a2, "whichRegister");
  }

  return MEMORY[0x2A1C68DE0](a2);
}

uint64_t telephonytransport::PCIReadRegisterRequest::readFrom(telephonytransport::PCIReadRegisterRequest *this, PB::Reader *a2)
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
        goto LABEL_90;
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
        goto LABEL_90;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) > 2)
      {
        break;
      }

      if (v22 != 1)
      {
        if (v22 == 2)
        {
          *(this + 28) |= 4u;
          v24 = *(a2 + 1);
          v23 = *(a2 + 2);
          v25 = *a2;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
          {
            v52 = 0;
            v53 = 0;
            v28 = 0;
            v54 = (v25 + v24);
            v18 = v23 >= v24;
            v55 = v23 - v24;
            if (!v18)
            {
              v55 = 0;
            }

            v56 = v24 + 1;
            while (1)
            {
              if (!v55)
              {
                LODWORD(v28) = 0;
                *(a2 + 24) = 1;
                goto LABEL_82;
              }

              v57 = *v54;
              *(a2 + 1) = v56;
              v28 |= (v57 & 0x7F) << v52;
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
LABEL_60:
                LODWORD(v28) = 0;
                goto LABEL_82;
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
                goto LABEL_60;
              }
            }
          }

LABEL_82:
          *(this + 6) = v28;
          goto LABEL_18;
        }

        goto LABEL_17;
      }

      v41 = operator new(0x18uLL);
      *v41 = &unk_2A1E9E7A8;
      v41[5] = 0;
      v42 = *(this + 1);
      *(this + 1) = v41;
      if (v42)
      {
        (*(*v42 + 8))(v42);
        v41 = *(this + 1);
      }

      if (!PB::Reader::placeMark() || !(*(*v41 + 16))(v41, a2))
      {
LABEL_92:
        v70 = 0;
        return v70 & 1;
      }

      PB::Reader::recallMark();
LABEL_18:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_90;
      }
    }

    if (v22 == 3)
    {
      *(this + 28) |= 2u;
      v44 = *(a2 + 1);
      v43 = *(a2 + 2);
      v45 = *a2;
      if (v44 > 0xFFFFFFFFFFFFFFF5 || v44 + 10 > v43)
      {
        v64 = 0;
        v65 = 0;
        v48 = 0;
        v66 = (v45 + v44);
        v18 = v43 >= v44;
        v67 = v43 - v44;
        if (!v18)
        {
          v67 = 0;
        }

        v68 = v44 + 1;
        while (1)
        {
          if (!v67)
          {
            LODWORD(v48) = 0;
            *(a2 + 24) = 1;
            goto LABEL_88;
          }

          v69 = *v66;
          *(a2 + 1) = v68;
          v48 |= (v69 & 0x7F) << v64;
          if ((v69 & 0x80) == 0)
          {
            break;
          }

          v64 += 7;
          ++v66;
          --v67;
          ++v68;
          v14 = v65++ > 8;
          if (v14)
          {
LABEL_76:
            LODWORD(v48) = 0;
            goto LABEL_88;
          }
        }

        if (*(a2 + 24))
        {
          LODWORD(v48) = 0;
        }
      }

      else
      {
        v46 = 0;
        v47 = 0;
        v48 = 0;
        v49 = (v45 + v44);
        v50 = v44 + 1;
        while (1)
        {
          *(a2 + 1) = v50;
          v51 = *v49++;
          v48 |= (v51 & 0x7F) << v46;
          if ((v51 & 0x80) == 0)
          {
            break;
          }

          v46 += 7;
          ++v50;
          v14 = v47++ > 8;
          if (v14)
          {
            goto LABEL_76;
          }
        }
      }

LABEL_88:
      *(this + 5) = v48;
      goto LABEL_18;
    }

    if (v22 == 4)
    {
      *(this + 28) |= 1u;
      v33 = *(a2 + 1);
      v32 = *(a2 + 2);
      v34 = *a2;
      if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v32)
      {
        v58 = 0;
        v59 = 0;
        v37 = 0;
        v60 = (v34 + v33);
        v18 = v32 >= v33;
        v61 = v32 - v33;
        if (!v18)
        {
          v61 = 0;
        }

        v62 = v33 + 1;
        while (1)
        {
          if (!v61)
          {
            LODWORD(v37) = 0;
            *(a2 + 24) = 1;
            goto LABEL_85;
          }

          v63 = *v60;
          *(a2 + 1) = v62;
          v37 |= (v63 & 0x7F) << v58;
          if ((v63 & 0x80) == 0)
          {
            break;
          }

          v58 += 7;
          ++v60;
          --v61;
          ++v62;
          v14 = v59++ > 8;
          if (v14)
          {
LABEL_68:
            LODWORD(v37) = 0;
            goto LABEL_85;
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
            goto LABEL_68;
          }
        }
      }

LABEL_85:
      *(this + 4) = v37;
      goto LABEL_18;
    }

LABEL_17:
    if ((PB::Reader::skip(a2) & 1) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_18;
  }

LABEL_90:
  v70 = v4 ^ 1;
  return v70 & 1;
}

uint64_t telephonytransport::PCIReadRegisterRequest::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  v5 = *(v3 + 28);
  if ((v5 & 4) == 0)
  {
    if ((*(v3 + 28) & 2) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v7 = *(v3 + 20);
    this = PB::Writer::writeVarInt(a2);
    if ((*(v3 + 28) & 1) == 0)
    {
      return this;
    }

    goto LABEL_9;
  }

  v6 = *(v3 + 24);
  this = PB::Writer::writeVarInt(a2);
  v5 = *(v3 + 28);
  if ((v5 & 2) != 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  if ((v5 & 1) == 0)
  {
    return this;
  }

LABEL_9:
  v8 = *(v3 + 16);

  return PB::Writer::writeVarInt(a2);
}

BOOL telephonytransport::PCIReadRegisterRequest::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5 || !telephonytransport::PCIMessageId::operator==(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
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

  result = (*(a2 + 28) & 1) == 0;
  if ((*(a1 + 28) & 1) == 0)
  {
    return result;
  }

  return (*(a2 + 28) & 1) != 0 && *(a1 + 16) == *(a2 + 16);
}

uint64_t telephonytransport::PCIReadRegisterRequest::hash_value(telephonytransport::PCIReadRegisterRequest *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    v2 = *(v1 + 20);
    v3 = *(v1 + 16);
    if ((v2 & 2) == 0)
    {
      v3 = 0;
    }

    v4 = *(v1 + 8);
    if ((v2 & 1) == 0)
    {
      v4 = 0;
    }

    v1 = v4 ^ v3;
  }

  if ((*(this + 28) & 4) == 0)
  {
    v5 = 0;
    if ((*(this + 28) & 2) != 0)
    {
      goto LABEL_9;
    }

LABEL_12:
    v6 = 0;
    if (*(this + 28))
    {
      goto LABEL_10;
    }

LABEL_13:
    v7 = 0;
    return v5 ^ v1 ^ v6 ^ v7;
  }

  v5 = *(this + 6);
  if ((*(this + 28) & 2) == 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  v6 = *(this + 5);
  if ((*(this + 28) & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  v7 = *(this + 4);
  return v5 ^ v1 ^ v6 ^ v7;
}

void *telephonytransport::PCIReadRegisterRequest::makeMessageId(void *this)
{
  if (!this[1])
  {
    v1 = this;
    this = operator new(0x18uLL);
    *this = &unk_2A1E9E7A8;
    *(this + 5) = 0;
    v1[1] = this;
  }

  return this;
}

void *telephonytransport::PCIUnblockReadRequest::PCIUnblockReadRequest(void *this)
{
  *this = &unk_2A1E9E738;
  this[1] = 0;
  return this;
}

{
  *this = &unk_2A1E9E738;
  this[1] = 0;
  return this;
}

void telephonytransport::PCIUnblockReadRequest::~PCIUnblockReadRequest(telephonytransport::PCIUnblockReadRequest *this)
{
  v2 = *(this + 1);
  *this = &unk_2A1E9E738;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  telephonytransport::PCIUnblockReadRequest::~PCIUnblockReadRequest(this);

  operator delete(v1);
}

telephonytransport::PCIUnblockReadRequest *telephonytransport::PCIUnblockReadRequest::PCIUnblockReadRequest(telephonytransport::PCIUnblockReadRequest *this, const telephonytransport::PCIUnblockReadRequest *a2)
{
  *this = &unk_2A1E9E738;
  *(this + 1) = 0;
  v3 = *(a2 + 1);
  if (v3)
  {
    v4 = operator new(0x18uLL);
    *(this + 1) = telephonytransport::PCIMessageId::PCIMessageId(v4, v3);
  }

  return this;
}

const telephonytransport::PCIUnblockReadRequest *telephonytransport::PCIUnblockReadRequest::operator=(const telephonytransport::PCIUnblockReadRequest *a1, const telephonytransport::PCIUnblockReadRequest *a2)
{
  if (a1 != a2)
  {
    v5 = 0xAAAAAAAAAAAAAAAALL;
    v6 = 0xAAAAAAAAAAAAAAAALL;
    telephonytransport::PCIUnblockReadRequest::PCIUnblockReadRequest(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    telephonytransport::PCIUnblockReadRequest::~PCIUnblockReadRequest(&v5);
  }

  return a1;
}

uint64_t telephonytransport::swap(uint64_t this, telephonytransport::PCIUnblockReadRequest *a2, telephonytransport::PCIUnblockReadRequest *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *telephonytransport::PCIUnblockReadRequest::PCIUnblockReadRequest(void *a1, uint64_t a2)
{
  *a1 = &unk_2A1E9E738;
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
  *a1 = &unk_2A1E9E738;
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

uint64_t telephonytransport::PCIUnblockReadRequest::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_2A1E9E738;
    v6[1] = v4;
    telephonytransport::PCIUnblockReadRequest::~PCIUnblockReadRequest(v6);
  }

  return a1;
}

uint64_t telephonytransport::PCIUnblockReadRequest::formatText(telephonytransport::PCIUnblockReadRequest *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "messageId");
  }

  return MEMORY[0x2A1C68DE0](a2);
}

uint64_t telephonytransport::PCIUnblockReadRequest::readFrom(telephonytransport::PCIUnblockReadRequest *this, PB::Reader *a2)
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
          goto LABEL_25;
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
        v22 = operator new(0x18uLL);
        *v22 = &unk_2A1E9E7A8;
        v22[5] = 0;
        v23 = *(this + 1);
        *(this + 1) = v22;
        if (v23)
        {
          (*(*v23 + 8))(v23);
          v22 = *(this + 1);
        }

        if (!PB::Reader::placeMark() || !(*(*v22 + 16))(v22, a2))
        {
LABEL_32:
          v24 = 0;
          return v24 & 1;
        }

        PB::Reader::recallMark();
      }

      else
      {
LABEL_25:
        if ((PB::Reader::skip(a2) & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      v2 = *(a2 + 1);
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
        goto LABEL_25;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_30:
  v24 = v4 ^ 1;
  return v24 & 1;
}

uint64_t telephonytransport::PCIUnblockReadRequest::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2);
  }

  return this;
}

BOOL telephonytransport::PCIUnblockReadRequest::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  result = v3 == 0;
  if (v2)
  {
    return v3 && telephonytransport::PCIMessageId::operator==(v2, v3);
  }

  return result;
}

uint64_t telephonytransport::PCIUnblockReadRequest::hash_value(telephonytransport::PCIUnblockReadRequest *this)
{
  v1 = *(this + 1);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 20);
  v3 = *(v1 + 16);
  if ((v2 & 2) == 0)
  {
    v3 = 0;
  }

  v4 = *(v1 + 8);
  if ((v2 & 1) == 0)
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

void *telephonytransport::PCIUnblockReadRequest::makeMessageId(void *this)
{
  if (!this[1])
  {
    v1 = this;
    this = operator new(0x18uLL);
    *this = &unk_2A1E9E7A8;
    *(this + 5) = 0;
    v1[1] = this;
  }

  return this;
}

void *telephonytransport::PCIFlushReadRequest::PCIFlushReadRequest(void *this)
{
  *this = &unk_2A1E9E770;
  this[1] = 0;
  return this;
}

{
  *this = &unk_2A1E9E770;
  this[1] = 0;
  return this;
}

void telephonytransport::PCIFlushReadRequest::~PCIFlushReadRequest(telephonytransport::PCIFlushReadRequest *this)
{
  v2 = *(this + 1);
  *this = &unk_2A1E9E770;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  telephonytransport::PCIFlushReadRequest::~PCIFlushReadRequest(this);

  operator delete(v1);
}

telephonytransport::PCIFlushReadRequest *telephonytransport::PCIFlushReadRequest::PCIFlushReadRequest(telephonytransport::PCIFlushReadRequest *this, const telephonytransport::PCIFlushReadRequest *a2)
{
  *this = &unk_2A1E9E770;
  *(this + 1) = 0;
  v3 = *(a2 + 1);
  if (v3)
  {
    v4 = operator new(0x18uLL);
    *(this + 1) = telephonytransport::PCIMessageId::PCIMessageId(v4, v3);
  }

  return this;
}

const telephonytransport::PCIFlushReadRequest *telephonytransport::PCIFlushReadRequest::operator=(const telephonytransport::PCIFlushReadRequest *a1, const telephonytransport::PCIFlushReadRequest *a2)
{
  if (a1 != a2)
  {
    v5 = 0xAAAAAAAAAAAAAAAALL;
    v6 = 0xAAAAAAAAAAAAAAAALL;
    telephonytransport::PCIFlushReadRequest::PCIFlushReadRequest(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    telephonytransport::PCIFlushReadRequest::~PCIFlushReadRequest(&v5);
  }

  return a1;
}

uint64_t telephonytransport::swap(uint64_t this, telephonytransport::PCIFlushReadRequest *a2, telephonytransport::PCIFlushReadRequest *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *telephonytransport::PCIFlushReadRequest::PCIFlushReadRequest(void *a1, uint64_t a2)
{
  *a1 = &unk_2A1E9E770;
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
  *a1 = &unk_2A1E9E770;
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

uint64_t telephonytransport::PCIFlushReadRequest::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_2A1E9E770;
    v6[1] = v4;
    telephonytransport::PCIFlushReadRequest::~PCIFlushReadRequest(v6);
  }

  return a1;
}

uint64_t telephonytransport::PCIFlushReadRequest::formatText(telephonytransport::PCIFlushReadRequest *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "messageId");
  }

  return MEMORY[0x2A1C68DE0](a2);
}

uint64_t telephonytransport::PCIFlushReadRequest::readFrom(telephonytransport::PCIFlushReadRequest *this, PB::Reader *a2)
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
          goto LABEL_25;
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
        v22 = operator new(0x18uLL);
        *v22 = &unk_2A1E9E7A8;
        v22[5] = 0;
        v23 = *(this + 1);
        *(this + 1) = v22;
        if (v23)
        {
          (*(*v23 + 8))(v23);
          v22 = *(this + 1);
        }

        if (!PB::Reader::placeMark() || !(*(*v22 + 16))(v22, a2))
        {
LABEL_32:
          v24 = 0;
          return v24 & 1;
        }

        PB::Reader::recallMark();
      }

      else
      {
LABEL_25:
        if ((PB::Reader::skip(a2) & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      v2 = *(a2 + 1);
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
        goto LABEL_25;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_30:
  v24 = v4 ^ 1;
  return v24 & 1;
}

uint64_t telephonytransport::PCIFlushReadRequest::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2);
  }

  return this;
}

BOOL telephonytransport::PCIFlushReadRequest::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  result = v3 == 0;
  if (v2)
  {
    return v3 && telephonytransport::PCIMessageId::operator==(v2, v3);
  }

  return result;
}

uint64_t telephonytransport::PCIFlushReadRequest::hash_value(telephonytransport::PCIFlushReadRequest *this)
{
  v1 = *(this + 1);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 20);
  v3 = *(v1 + 16);
  if ((v2 & 2) == 0)
  {
    v3 = 0;
  }

  v4 = *(v1 + 8);
  if ((v2 & 1) == 0)
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

void *telephonytransport::PCIFlushReadRequest::makeMessageId(void *this)
{
  if (!this[1])
  {
    v1 = this;
    this = operator new(0x18uLL);
    *this = &unk_2A1E9E7A8;
    *(this + 5) = 0;
    v1[1] = this;
  }

  return this;
}

void telephonytransport::PCIMessageId::~PCIMessageId(telephonytransport::PCIMessageId *this)
{
  PB::Base::~Base(this);

  operator delete(v1);
}

uint64_t telephonytransport::PCIMessageId::PCIMessageId(uint64_t this, const telephonytransport::PCIMessageId *a2)
{
  *this = &unk_2A1E9E7A8;
  *(this + 20) = 0;
  if ((*(a2 + 20) & 2) != 0)
  {
    v3 = *(a2 + 4);
    *(this + 20) = 2;
    *(this + 16) = v3;
    v2 = 3;
    if ((*(a2 + 20) & 1) == 0)
    {
      return this;
    }

    goto LABEL_5;
  }

  v2 = 1;
  if (*(a2 + 20))
  {
LABEL_5:
    v4 = *(a2 + 1);
    *(this + 20) = v2;
    *(this + 8) = v4;
  }

  return this;
}

uint64_t telephonytransport::PCIMessageId::operator=(uint64_t a1, const telephonytransport::PCIMessageId *a2)
{
  if (a1 != a2)
  {
    memset(v7, 170, sizeof(v7));
    telephonytransport::PCIMessageId::PCIMessageId(v7, a2);
    v3 = *(a1 + 16);
    v4 = *(a1 + 20);
    *(a1 + 16) = v7[2];
    v7[2] = __PAIR64__(v4, v3);
    v5 = *(a1 + 8);
    *(a1 + 8) = v7[1];
    v7[1] = v5;
    PB::Base::~Base(v7);
  }

  return a1;
}

uint64_t telephonytransport::swap(uint64_t this, telephonytransport::PCIMessageId *a2, telephonytransport::PCIMessageId *a3)
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

uint64_t telephonytransport::PCIMessageId::PCIMessageId(uint64_t result, uint64_t a2)
{
  *result = &unk_2A1E9E7A8;
  *(result + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  *(result + 16) = *(a2 + 16);
  *(result + 8) = *(a2 + 8);
  return result;
}

{
  *result = &unk_2A1E9E7A8;
  *(result + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  *(result + 16) = *(a2 + 16);
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t telephonytransport::PCIMessageId::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v9[0] = &unk_2A1E9E7A8;
    v3 = *(a2 + 8);
    v4 = *(a2 + 16);
    *(a2 + 20) = 0;
    v6 = *(a1 + 16);
    v5 = *(a1 + 20);
    *(a1 + 16) = v4;
    v10 = v6;
    v11 = v5;
    v7 = *(a1 + 8);
    *(a1 + 8) = v3;
    v9[1] = v7;
    PB::Base::~Base(v9);
  }

  return a1;
}

uint64_t telephonytransport::PCIMessageId::formatText(telephonytransport::PCIMessageId *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 20);
  if ((v5 & 2) != 0)
  {
    v6 = *(this + 4);
    PB::TextFormatter::format(a2, "transportToken");
    v5 = *(this + 20);
  }

  if (v5)
  {
    v7 = *(this + 1);
    PB::TextFormatter::format(a2, "txnId");
  }

  return MEMORY[0x2A1C68DE0](a2);
}

uint64_t telephonytransport::PCIMessageId::readFrom(telephonytransport::PCIMessageId *this, PB::Reader *a2)
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
          goto LABEL_28;
        }
      }

LABEL_18:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_69;
      }

      if ((v10 >> 3) == 2)
      {
        *(this + 20) |= 1u;
        v30 = *(a2 + 1);
        v2 = *(a2 + 2);
        v31 = *a2;
        if (v30 > 0xFFFFFFFFFFFFFFF5 || v30 + 10 > v2)
        {
          v45 = 0;
          v46 = 0;
          v34 = 0;
          if (v2 <= v30)
          {
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          v47 = (v31 + v30);
          v48 = v3 - v30;
          v49 = v30 + 1;
          while (1)
          {
            if (!v48)
            {
              v34 = 0;
              *(a2 + 24) = 1;
              goto LABEL_64;
            }

            v50 = v49;
            v51 = *v47;
            *(a2 + 1) = v50;
            v34 |= (v51 & 0x7F) << v45;
            if ((v51 & 0x80) == 0)
            {
              break;
            }

            v45 += 7;
            ++v47;
            --v48;
            v49 = v50 + 1;
            v14 = v46++ > 8;
            if (v14)
            {
              v34 = 0;
              goto LABEL_63;
            }
          }

          if (*(a2 + 24))
          {
            v34 = 0;
          }

LABEL_63:
          v3 = v50;
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
            v3 = v36;
            *(a2 + 1) = v36;
            v37 = *v35++;
            v34 |= (v37 & 0x7F) << v32;
            if ((v37 & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            ++v36;
            v14 = v33++ > 8;
            if (v14)
            {
              v34 = 0;
              break;
            }
          }
        }

LABEL_64:
        *(this + 1) = v34;
      }

      else if ((v10 >> 3) == 1)
      {
        *(this + 20) |= 2u;
        v22 = *(a2 + 1);
        v2 = *(a2 + 2);
        v23 = *a2;
        if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
        {
          v38 = 0;
          v39 = 0;
          v26 = 0;
          if (v2 <= v22)
          {
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          v40 = (v23 + v22);
          v41 = v3 - v22;
          v42 = v22 + 1;
          while (1)
          {
            if (!v41)
            {
              LODWORD(v26) = 0;
              *(a2 + 24) = 1;
              goto LABEL_60;
            }

            v43 = v42;
            v44 = *v40;
            *(a2 + 1) = v43;
            v26 |= (v44 & 0x7F) << v38;
            if ((v44 & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            ++v40;
            --v41;
            v42 = v43 + 1;
            v14 = v39++ > 8;
            if (v14)
            {
              LODWORD(v26) = 0;
              goto LABEL_59;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v26) = 0;
          }

LABEL_59:
          v3 = v43;
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

LABEL_60:
        *(this + 4) = v26;
      }

      else
      {
LABEL_28:
        if (!PB::Reader::skip(a2))
        {
          v52 = 0;
          return v52 & 1;
        }

        v3 = *(a2 + 1);
        v2 = *(a2 + 2);
      }

      v4 = *(a2 + 24);
      if (v3 >= v2 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_69;
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
        goto LABEL_28;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_69:
  v52 = v4 ^ 1;
  return v52 & 1;
}

uint64_t telephonytransport::PCIMessageId::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 20);
  if ((v4 & 2) != 0)
  {
    v5 = *(this + 16);
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 20);
  }

  if (v4)
  {
    v6 = *(v3 + 8);

    return PB::Writer::writeVarInt(a2);
  }

  return this;
}

uint64_t telephonytransport::PCIMessageId::hash_value(telephonytransport::PCIMessageId *this)
{
  if ((*(this + 20) & 2) != 0)
  {
    v1 = *(this + 4);
    if (*(this + 20))
    {
      goto LABEL_3;
    }

LABEL_5:
    v2 = 0;
    return v2 ^ v1;
  }

  v1 = 0;
  if ((*(this + 20) & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v2 = *(this + 1);
  return v2 ^ v1;
}

void *telephonytransport::PCIReadIndication::PCIReadIndication(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_2A1E9E7E0;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_2A1E9E7E0;
  return this;
}

void telephonytransport::PCIReadIndication::~PCIReadIndication(telephonytransport::PCIReadIndication *this)
{
  *this = &unk_2A1E9E7E0;
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::unique_ptr<PB::Data>::reset[abi:ne200100](this + 1, 0);

  PB::Base::~Base(this);
}

{
  telephonytransport::PCIReadIndication::~PCIReadIndication(this);

  operator delete(v1);
}

telephonytransport::PCIReadIndication *telephonytransport::PCIReadIndication::PCIReadIndication(telephonytransport::PCIReadIndication *this, const telephonytransport::PCIReadIndication *a2)
{
  *this = &unk_2A1E9E7E0;
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = *(a2 + 2);
  if (v5)
  {
    v6 = operator new(0x18uLL);
    *(this + 2) = telephonytransport::PCIMessageId::PCIMessageId(v6, v5);
  }

  v7 = *(a2 + 1);
  if (v7)
  {
    v8 = operator new(0x10uLL);
    PB::Data::Data(v8, v7);
    std::unique_ptr<PB::Data>::reset[abi:ne200100](v4, v8);
  }

  return this;
}

uint64_t telephonytransport::PCIReadIndication::operator=(uint64_t a1, const telephonytransport::PCIReadIndication *a2)
{
  if (a1 != a2)
  {
    memset(v5, 170, sizeof(v5));
    telephonytransport::PCIReadIndication::PCIReadIndication(v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = *&v5[1];
    *&v5[1] = v3;
    telephonytransport::PCIReadIndication::~PCIReadIndication(v5);
  }

  return a1;
}

uint64_t telephonytransport::swap(uint64_t this, telephonytransport::PCIReadIndication *a2, telephonytransport::PCIReadIndication *a3)
{
  v3 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v4;
  return this;
}

void *telephonytransport::PCIReadIndication::PCIReadIndication(void *a1, uint64_t a2)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  *a1 = &unk_2A1E9E7E0;
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
  std::unique_ptr<PB::Data>::reset[abi:ne200100](v4, v7);
  return a1;
}

uint64_t telephonytransport::PCIReadIndication::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    memset(v5, 170, sizeof(v5));
    telephonytransport::PCIReadIndication::PCIReadIndication(v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = *&v5[1];
    *&v5[1] = v3;
    telephonytransport::PCIReadIndication::~PCIReadIndication(v5);
  }

  return a1;
}

uint64_t telephonytransport::PCIReadIndication::formatText(telephonytransport::PCIReadIndication *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 1))
  {
    PB::TextFormatter::format();
  }

  v5 = *(this + 2);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "messageId");
  }

  return MEMORY[0x2A1C68DE0](a2);
}

uint64_t telephonytransport::PCIReadIndication::readFrom(void ***this, PB::Reader *a2)
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
          goto LABEL_26;
        }
      }

LABEL_18:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_33;
      }

      if ((v10 >> 3) == 2)
      {
        v24 = operator new(0x10uLL);
        *v24 = 0;
        v24[1] = 0;
        std::unique_ptr<PB::Data>::reset[abi:ne200100](this + 1, v24);
        PB::Reader::read(a2, this[1]);
      }

      else if ((v10 >> 3) == 1)
      {
        v22 = operator new(0x18uLL);
        *v22 = &unk_2A1E9E7A8;
        *(v22 + 5) = 0;
        v23 = this[2];
        this[2] = v22;
        if (v23)
        {
          (*(*v23 + 1))(v23);
          v22 = this[2];
        }

        if (!PB::Reader::placeMark() || !(*(*v22 + 2))(v22, a2))
        {
LABEL_35:
          v25 = 0;
          return v25 & 1;
        }

        PB::Reader::recallMark();
      }

      else
      {
LABEL_26:
        if ((PB::Reader::skip(a2) & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_33;
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
        goto LABEL_26;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_33:
  v25 = v4 ^ 1;
  return v25 & 1;
}

uint64_t telephonytransport::PCIReadIndication::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 16);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  if (*(v3 + 8))
  {

    return MEMORY[0x2A1C68E58](a2);
  }

  return this;
}

BOOL telephonytransport::PCIReadIndication::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v4)
  {
    if (!v5 || !telephonytransport::PCIMessageId::operator==(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }

    if (PB::Data::operator==())
    {
      return 1;
    }

    if (*(a1 + 8))
    {
      return 0;
    }
  }

  return *(a2 + 8) == 0;
}

uint64_t telephonytransport::PCIReadIndication::hash_value(telephonytransport::PCIReadIndication *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    v2 = *(v1 + 20);
    v3 = *(v1 + 16);
    if ((v2 & 2) == 0)
    {
      v3 = 0;
    }

    v4 = *(v1 + 8);
    if ((v2 & 1) == 0)
    {
      v4 = 0;
    }

    v5 = v4 ^ v3;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(this + 1);
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

  return v9 ^ v5;
}

void *telephonytransport::PCIReadIndication::makeMessageId(void *this)
{
  if (!this[2])
  {
    v1 = this;
    this = operator new(0x18uLL);
    *this = &unk_2A1E9E7A8;
    *(this + 5) = 0;
    v1[2] = this;
  }

  return this;
}

uint64_t telephonytransport::PCICreateRequest::PCICreateRequest(uint64_t this)
{
  *this = &unk_2A1E9E818;
  *(this + 8) = 0;
  *(this + 40) = 0;
  return this;
}

{
  *this = &unk_2A1E9E818;
  *(this + 8) = 0;
  *(this + 40) = 0;
  return this;
}

void telephonytransport::PCICreateRequest::~PCICreateRequest(telephonytransport::PCICreateRequest *this)
{
  v2 = *(this + 1);
  *this = &unk_2A1E9E818;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  telephonytransport::PCICreateRequest::~PCICreateRequest(this);

  operator delete(v1);
}

telephonytransport::PCICreateRequest *telephonytransport::PCICreateRequest::PCICreateRequest(telephonytransport::PCICreateRequest *this, const telephonytransport::PCICreateRequest *a2)
{
  *this = &unk_2A1E9E818;
  *(this + 1) = 0;
  *(this + 10) = 0;
  v4 = *(a2 + 1);
  if (v4)
  {
    v5 = operator new(0x18uLL);
    *(this + 1) = telephonytransport::PCIMessageId::PCIMessageId(v5, v4);
  }

  v6 = *(a2 + 40);
  if ((v6 & 0x10) != 0)
  {
    v8 = *(a2 + 8);
    v7 = 16;
    *(this + 40) = 16;
    *(this + 8) = v8;
    v6 = *(a2 + 40);
    if ((v6 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v7 = 0;
  if (*(a2 + 40))
  {
LABEL_7:
    v9 = *(a2 + 4);
    v7 |= 1u;
    *(this + 40) = v7;
    *(this + 4) = v9;
    v6 = *(a2 + 40);
  }

LABEL_8:
  if ((v6 & 8) != 0)
  {
    v12 = *(a2 + 7);
    v7 |= 8u;
    *(this + 40) = v7;
    *(this + 7) = v12;
    v6 = *(a2 + 40);
    if ((v6 & 2) == 0)
    {
LABEL_10:
      if ((v6 & 4) == 0)
      {
        goto LABEL_11;
      }

LABEL_16:
      v14 = *(a2 + 6);
      v7 |= 4u;
      *(this + 40) = v7;
      *(this + 6) = v14;
      if ((*(a2 + 40) & 0x20) == 0)
      {
        return this;
      }

      goto LABEL_12;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_10;
  }

  v13 = *(a2 + 5);
  v7 |= 2u;
  *(this + 40) = v7;
  *(this + 5) = v13;
  v6 = *(a2 + 40);
  if ((v6 & 4) != 0)
  {
    goto LABEL_16;
  }

LABEL_11:
  if ((v6 & 0x20) != 0)
  {
LABEL_12:
    v10 = *(a2 + 9);
    *(this + 40) = v7 | 0x20;
    *(this + 9) = v10;
  }

  return this;
}

uint64_t telephonytransport::PCICreateRequest::operator=(uint64_t a1, const telephonytransport::PCICreateRequest *a2)
{
  if (a1 != a2)
  {
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v9 = v3;
    v10 = v3;
    v8 = v3;
    telephonytransport::PCICreateRequest::PCICreateRequest(&v8, a2);
    v4 = *(a1 + 40);
    *(a1 + 40) = DWORD2(v10);
    DWORD2(v10) = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = *(&v8 + 1);
    *(&v8 + 1) = v5;
    v6 = *(a1 + 16);
    *(a1 + 16) = v9;
    v9 = v6;
    *&v6 = *(a1 + 32);
    *(a1 + 32) = v10;
    *&v10 = v6;
    telephonytransport::PCICreateRequest::~PCICreateRequest(&v8);
  }

  return a1;
}

uint64_t telephonytransport::swap(uint64_t this, telephonytransport::PCICreateRequest *a2, telephonytransport::PCICreateRequest *a3)
{
  v3 = *(this + 40);
  *(this + 40) = *(a2 + 10);
  *(a2 + 10) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 32);
  *(this + 32) = *(a2 + 8);
  *(a2 + 8) = v4;
  LODWORD(v4) = *(this + 16);
  *(this + 16) = *(a2 + 4);
  *(a2 + 4) = v4;
  LODWORD(v4) = *(this + 28);
  *(this + 28) = *(a2 + 7);
  *(a2 + 7) = v4;
  LODWORD(v4) = *(this + 20);
  *(this + 20) = *(a2 + 5);
  *(a2 + 5) = v4;
  LODWORD(v4) = *(this + 24);
  *(this + 24) = *(a2 + 6);
  *(a2 + 6) = v4;
  LODWORD(v4) = *(this + 36);
  *(this + 36) = *(a2 + 9);
  *(a2 + 9) = v4;
  return this;
}

uint64_t telephonytransport::PCICreateRequest::PCICreateRequest(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A1E9E818;
  *(a1 + 8) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 36) = *(a2 + 36);
  return a1;
}

uint64_t telephonytransport::PCICreateRequest::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v9 = v3;
    v10 = v3;
    v8 = v3;
    telephonytransport::PCICreateRequest::PCICreateRequest(&v8, a2);
    v4 = *(a1 + 40);
    *(a1 + 40) = DWORD2(v10);
    DWORD2(v10) = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = *(&v8 + 1);
    *(&v8 + 1) = v5;
    v6 = *(a1 + 16);
    *(a1 + 16) = v9;
    v9 = v6;
    *&v6 = *(a1 + 32);
    *(a1 + 32) = v10;
    *&v10 = v6;
    telephonytransport::PCICreateRequest::~PCICreateRequest(&v8);
  }

  return a1;
}

uint64_t telephonytransport::PCICreateRequest::formatText(telephonytransport::PCICreateRequest *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 40);
  if (v5)
  {
    v6 = *(this + 4);
    PB::TextFormatter::format(a2, "createTimeOutMs");
    v5 = *(this + 40);
  }

  if ((v5 & 2) != 0)
  {
    v7 = *(this + 5);
    PB::TextFormatter::format(a2, "flags");
  }

  v8 = *(this + 1);
  if (v8)
  {
    (*(*v8 + 32))(v8, a2, "messageId");
  }

  v9 = *(this + 40);
  if ((v9 & 4) != 0)
  {
    v11 = *(this + 6);
    PB::TextFormatter::format(a2, "numReadIO");
    v9 = *(this + 40);
    if ((v9 & 8) == 0)
    {
LABEL_9:
      if ((v9 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_17;
    }
  }

  else if ((*(this + 40) & 8) == 0)
  {
    goto LABEL_9;
  }

  v12 = *(this + 7);
  PB::TextFormatter::format(a2, "openRetryCount");
  v9 = *(this + 40);
  if ((v9 & 0x10) == 0)
  {
LABEL_10:
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_17:
  v13 = *(this + 8);
  PB::TextFormatter::format(a2, "pciTransportInterface");
  if ((*(this + 40) & 0x20) != 0)
  {
LABEL_11:
    v10 = *(this + 9);
    PB::TextFormatter::format(a2, "sizeReadIO");
  }

LABEL_12:

  return MEMORY[0x2A1C68DE0](a2);
}

uint64_t telephonytransport::PCICreateRequest::readFrom(telephonytransport::PCICreateRequest *this, PB::Reader *a2)
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
        goto LABEL_151;
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
        goto LABEL_151;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) > 3)
      {
        break;
      }

      if (v22 != 1)
      {
        if (v22 == 2)
        {
          *(this + 40) |= 0x10u;
          v71 = *(a2 + 1);
          v70 = *(a2 + 2);
          v72 = *a2;
          if (v71 > 0xFFFFFFFFFFFFFFF5 || v71 + 10 > v70)
          {
            v109 = 0;
            v110 = 0;
            v75 = 0;
            v111 = (v72 + v71);
            v18 = v70 >= v71;
            v112 = v70 - v71;
            if (!v18)
            {
              v112 = 0;
            }

            v113 = v71 + 1;
            while (1)
            {
              if (!v112)
              {
                LODWORD(v75) = 0;
                *(a2 + 24) = 1;
                goto LABEL_149;
              }

              v114 = *v111;
              *(a2 + 1) = v113;
              v75 |= (v114 & 0x7F) << v109;
              if ((v114 & 0x80) == 0)
              {
                break;
              }

              v109 += 7;
              ++v111;
              --v112;
              ++v113;
              v14 = v110++ > 8;
              if (v14)
              {
LABEL_125:
                LODWORD(v75) = 0;
                goto LABEL_149;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v75) = 0;
            }
          }

          else
          {
            v73 = 0;
            v74 = 0;
            v75 = 0;
            v76 = (v72 + v71);
            v77 = v71 + 1;
            while (1)
            {
              *(a2 + 1) = v77;
              v78 = *v76++;
              v75 |= (v78 & 0x7F) << v73;
              if ((v78 & 0x80) == 0)
              {
                break;
              }

              v73 += 7;
              ++v77;
              v14 = v74++ > 8;
              if (v14)
              {
                goto LABEL_125;
              }
            }
          }

LABEL_149:
          *(this + 8) = v75;
          goto LABEL_18;
        }

        if (v22 == 3)
        {
          *(this + 40) |= 1u;
          v33 = *(a2 + 1);
          v32 = *(a2 + 2);
          v34 = *a2;
          if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v32)
          {
            v103 = 0;
            v104 = 0;
            v37 = 0;
            v105 = (v34 + v33);
            v18 = v32 >= v33;
            v106 = v32 - v33;
            if (!v18)
            {
              v106 = 0;
            }

            v107 = v33 + 1;
            while (1)
            {
              if (!v106)
              {
                LODWORD(v37) = 0;
                *(a2 + 24) = 1;
                goto LABEL_146;
              }

              v108 = *v105;
              *(a2 + 1) = v107;
              v37 |= (v108 & 0x7F) << v103;
              if ((v108 & 0x80) == 0)
              {
                break;
              }

              v103 += 7;
              ++v105;
              --v106;
              ++v107;
              v14 = v104++ > 8;
              if (v14)
              {
LABEL_117:
                LODWORD(v37) = 0;
                goto LABEL_146;
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
                goto LABEL_117;
              }
            }
          }

LABEL_146:
          *(this + 4) = v37;
          goto LABEL_18;
        }

LABEL_17:
        if ((PB::Reader::skip(a2) & 1) == 0)
        {
          goto LABEL_153;
        }

        goto LABEL_18;
      }

      v50 = operator new(0x18uLL);
      *v50 = &unk_2A1E9E7A8;
      v50[5] = 0;
      v51 = *(this + 1);
      *(this + 1) = v50;
      if (v51)
      {
        (*(*v51 + 8))(v51);
        v50 = *(this + 1);
      }

      if (!PB::Reader::placeMark() || !(*(*v50 + 16))(v50, a2))
      {
LABEL_153:
        v115 = 0;
        return v115 & 1;
      }

      PB::Reader::recallMark();
LABEL_18:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_151;
      }
    }

    if (v22 > 5)
    {
      if (v22 == 6)
      {
        *(this + 40) |= 4u;
        v62 = *(a2 + 1);
        v61 = *(a2 + 2);
        v63 = *a2;
        if (v62 > 0xFFFFFFFFFFFFFFF5 || v62 + 10 > v61)
        {
          v85 = 0;
          v86 = 0;
          v66 = 0;
          v87 = (v63 + v62);
          v18 = v61 >= v62;
          v88 = v61 - v62;
          if (!v18)
          {
            v88 = 0;
          }

          v89 = v62 + 1;
          while (1)
          {
            if (!v88)
            {
              LODWORD(v66) = 0;
              *(a2 + 24) = 1;
              goto LABEL_137;
            }

            v90 = *v87;
            *(a2 + 1) = v89;
            v66 |= (v90 & 0x7F) << v85;
            if ((v90 & 0x80) == 0)
            {
              break;
            }

            v85 += 7;
            ++v87;
            --v88;
            ++v89;
            v14 = v86++ > 8;
            if (v14)
            {
LABEL_93:
              LODWORD(v66) = 0;
              goto LABEL_137;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v66) = 0;
          }
        }

        else
        {
          v64 = 0;
          v65 = 0;
          v66 = 0;
          v67 = (v63 + v62);
          v68 = v62 + 1;
          while (1)
          {
            *(a2 + 1) = v68;
            v69 = *v67++;
            v66 |= (v69 & 0x7F) << v64;
            if ((v69 & 0x80) == 0)
            {
              break;
            }

            v64 += 7;
            ++v68;
            v14 = v65++ > 8;
            if (v14)
            {
              goto LABEL_93;
            }
          }
        }

LABEL_137:
        *(this + 6) = v66;
        goto LABEL_18;
      }

      if (v22 == 7)
      {
        *(this + 40) |= 0x20u;
        v42 = *(a2 + 1);
        v41 = *(a2 + 2);
        v43 = *a2;
        if (v42 > 0xFFFFFFFFFFFFFFF5 || v42 + 10 > v41)
        {
          v97 = 0;
          v98 = 0;
          v46 = 0;
          v99 = (v43 + v42);
          v18 = v41 >= v42;
          v100 = v41 - v42;
          if (!v18)
          {
            v100 = 0;
          }

          v101 = v42 + 1;
          while (1)
          {
            if (!v100)
            {
              LODWORD(v46) = 0;
              *(a2 + 24) = 1;
              goto LABEL_143;
            }

            v102 = *v99;
            *(a2 + 1) = v101;
            v46 |= (v102 & 0x7F) << v97;
            if ((v102 & 0x80) == 0)
            {
              break;
            }

            v97 += 7;
            ++v99;
            --v100;
            ++v101;
            v14 = v98++ > 8;
            if (v14)
            {
LABEL_109:
              LODWORD(v46) = 0;
              goto LABEL_143;
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
              goto LABEL_109;
            }
          }
        }

LABEL_143:
        *(this + 9) = v46;
        goto LABEL_18;
      }
    }

    else
    {
      if (v22 == 4)
      {
        *(this + 40) |= 8u;
        v53 = *(a2 + 1);
        v52 = *(a2 + 2);
        v54 = *a2;
        if (v53 > 0xFFFFFFFFFFFFFFF5 || v53 + 10 > v52)
        {
          v79 = 0;
          v80 = 0;
          v57 = 0;
          v81 = (v54 + v53);
          v18 = v52 >= v53;
          v82 = v52 - v53;
          if (!v18)
          {
            v82 = 0;
          }

          v83 = v53 + 1;
          while (1)
          {
            if (!v82)
            {
              LODWORD(v57) = 0;
              *(a2 + 24) = 1;
              goto LABEL_134;
            }

            v84 = *v81;
            *(a2 + 1) = v83;
            v57 |= (v84 & 0x7F) << v79;
            if ((v84 & 0x80) == 0)
            {
              break;
            }

            v79 += 7;
            ++v81;
            --v82;
            ++v83;
            v14 = v80++ > 8;
            if (v14)
            {
LABEL_85:
              LODWORD(v57) = 0;
              goto LABEL_134;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v57) = 0;
          }
        }

        else
        {
          v55 = 0;
          v56 = 0;
          v57 = 0;
          v58 = (v54 + v53);
          v59 = v53 + 1;
          while (1)
          {
            *(a2 + 1) = v59;
            v60 = *v58++;
            v57 |= (v60 & 0x7F) << v55;
            if ((v60 & 0x80) == 0)
            {
              break;
            }

            v55 += 7;
            ++v59;
            v14 = v56++ > 8;
            if (v14)
            {
              goto LABEL_85;
            }
          }
        }

LABEL_134:
        *(this + 7) = v57;
        goto LABEL_18;
      }

      if (v22 == 5)
      {
        *(this + 40) |= 2u;
        v24 = *(a2 + 1);
        v23 = *(a2 + 2);
        v25 = *a2;
        if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
        {
          v91 = 0;
          v92 = 0;
          v28 = 0;
          v93 = (v25 + v24);
          v18 = v23 >= v24;
          v94 = v23 - v24;
          if (!v18)
          {
            v94 = 0;
          }

          v95 = v24 + 1;
          while (1)
          {
            if (!v94)
            {
              LODWORD(v28) = 0;
              *(a2 + 24) = 1;
              goto LABEL_140;
            }

            v96 = *v93;
            *(a2 + 1) = v95;
            v28 |= (v96 & 0x7F) << v91;
            if ((v96 & 0x80) == 0)
            {
              break;
            }

            v91 += 7;
            ++v93;
            --v94;
            ++v95;
            v14 = v92++ > 8;
            if (v14)
            {
LABEL_101:
              LODWORD(v28) = 0;
              goto LABEL_140;
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
              goto LABEL_101;
            }
          }
        }

LABEL_140:
        *(this + 5) = v28;
        goto LABEL_18;
      }
    }

    goto LABEL_17;
  }

LABEL_151:
  v115 = v4 ^ 1;
  return v115 & 1;
}

uint64_t telephonytransport::PCICreateRequest::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  v5 = *(v3 + 40);
  if ((v5 & 0x10) != 0)
  {
    v6 = *(v3 + 32);
    this = PB::Writer::writeVarInt(a2);
    v5 = *(v3 + 40);
    if ((v5 & 1) == 0)
    {
LABEL_5:
      if ((v5 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }
  }

  else if ((*(v3 + 40) & 1) == 0)
  {
    goto LABEL_5;
  }

  v7 = *(v3 + 16);
  this = PB::Writer::writeVarInt(a2);
  v5 = *(v3 + 40);
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_12:
  v8 = *(v3 + 28);
  this = PB::Writer::writeVarInt(a2);
  v5 = *(v3 + 40);
  if ((v5 & 2) == 0)
  {
LABEL_7:
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

LABEL_14:
    v10 = *(v3 + 24);
    this = PB::Writer::writeVarInt(a2);
    if ((*(v3 + 40) & 0x20) == 0)
    {
      return this;
    }

    goto LABEL_15;
  }

LABEL_13:
  v9 = *(v3 + 20);
  this = PB::Writer::writeVarInt(a2);
  v5 = *(v3 + 40);
  if ((v5 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  if ((v5 & 0x20) == 0)
  {
    return this;
  }

LABEL_15:
  v11 = *(v3 + 36);

  return PB::Writer::writeVarInt(a2);
}

BOOL telephonytransport::PCICreateRequest::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5 || !telephonytransport::PCIMessageId::operator==(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if ((*(a1 + 40) & 0x10) != 0)
  {
    if ((*(a2 + 40) & 0x10) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((*(a2 + 40) & 0x10) != 0)
  {
    return 0;
  }

  if (*(a1 + 40))
  {
    if ((*(a2 + 40) & 1) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if (*(a2 + 40))
  {
    return 0;
  }

  if ((*(a1 + 40) & 8) != 0)
  {
    if ((*(a2 + 40) & 8) == 0 || *(a1 + 28) != *(a2 + 28))
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
    if ((*(a2 + 40) & 2) == 0 || *(a1 + 20) != *(a2 + 20))
    {
      return 0;
    }
  }

  else if ((*(a2 + 40) & 2) != 0)
  {
    return 0;
  }

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

  result = (*(a2 + 40) & 0x20) == 0;
  if ((*(a1 + 40) & 0x20) == 0)
  {
    return result;
  }

  return (*(a2 + 40) & 0x20) != 0 && *(a1 + 36) == *(a2 + 36);
}

uint64_t telephonytransport::PCICreateRequest::hash_value(telephonytransport::PCICreateRequest *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    v2 = *(v1 + 20);
    v3 = *(v1 + 16);
    if ((v2 & 2) == 0)
    {
      v3 = 0;
    }

    v4 = *(v1 + 8);
    if ((v2 & 1) == 0)
    {
      v4 = 0;
    }

    v1 = v4 ^ v3;
  }

  if ((*(this + 40) & 0x10) != 0)
  {
    v5 = *(this + 8);
    if (*(this + 40))
    {
LABEL_9:
      v6 = *(this + 4);
      if ((*(this + 40) & 8) != 0)
      {
        goto LABEL_10;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v5 = 0;
    if (*(this + 40))
    {
      goto LABEL_9;
    }
  }

  v6 = 0;
  if ((*(this + 40) & 8) != 0)
  {
LABEL_10:
    v7 = *(this + 7);
    if ((*(this + 40) & 2) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_16:
  v7 = 0;
  if ((*(this + 40) & 2) != 0)
  {
LABEL_11:
    v8 = *(this + 5);
    if ((*(this + 40) & 4) != 0)
    {
      goto LABEL_12;
    }

LABEL_18:
    v9 = 0;
    if ((*(this + 40) & 0x20) != 0)
    {
      goto LABEL_13;
    }

LABEL_19:
    v10 = 0;
    return v5 ^ v1 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
  }

LABEL_17:
  v8 = 0;
  if ((*(this + 40) & 4) == 0)
  {
    goto LABEL_18;
  }

LABEL_12:
  v9 = *(this + 6);
  if ((*(this + 40) & 0x20) == 0)
  {
    goto LABEL_19;
  }

LABEL_13:
  v10 = *(this + 9);
  return v5 ^ v1 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
}

void *telephonytransport::PCICreateRequest::makeMessageId(void *this)
{
  if (!this[1])
  {
    v1 = this;
    this = operator new(0x18uLL);
    *this = &unk_2A1E9E7A8;
    *(this + 5) = 0;
    v1[1] = this;
  }

  return this;
}

void *telephonytransport::PCIReadResponse::PCIReadResponse(void *this)
{
  *this = &unk_2A1E9E850;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_2A1E9E850;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

void telephonytransport::PCIReadResponse::~PCIReadResponse(telephonytransport::PCIReadResponse *this)
{
  *this = &unk_2A1E9E850;
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::unique_ptr<PB::Data>::reset[abi:ne200100](this + 1, 0);

  PB::Base::~Base(this);
}

{
  telephonytransport::PCIReadResponse::~PCIReadResponse(this);

  operator delete(v1);
}

telephonytransport::PCIReadResponse *telephonytransport::PCIReadResponse::PCIReadResponse(telephonytransport::PCIReadResponse *this, const telephonytransport::PCIReadResponse *a2)
{
  *this = &unk_2A1E9E850;
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  *(this + 3) = 0;
  v5 = *(a2 + 2);
  if (v5)
  {
    v6 = operator new(0x18uLL);
    *(this + 2) = telephonytransport::PCIMessageId::PCIMessageId(v6, v5);
  }

  if (*(a2 + 28))
  {
    v7 = *(a2 + 6);
    *(this + 28) = 1;
    *(this + 6) = v7;
  }

  v8 = *(a2 + 1);
  if (v8)
  {
    v9 = operator new(0x10uLL);
    PB::Data::Data(v9, v8);
    std::unique_ptr<PB::Data>::reset[abi:ne200100](v4, v9);
  }

  return this;
}

uint64_t telephonytransport::PCIReadResponse::operator=(uint64_t a1, const telephonytransport::PCIReadResponse *a2)
{
  if (a1 != a2)
  {
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *v8 = v3;
    *&v8[16] = v3;
    telephonytransport::PCIReadResponse::PCIReadResponse(v8, a2);
    v4 = *(a1 + 24);
    v5 = *(a1 + 28);
    *(a1 + 24) = *&v8[24];
    *&v8[24] = v4;
    *&v8[28] = v5;
    v6 = *(a1 + 8);
    *(a1 + 8) = *&v8[8];
    *&v8[8] = v6;
    telephonytransport::PCIReadResponse::~PCIReadResponse(v8);
  }

  return a1;
}

uint64_t telephonytransport::swap(uint64_t this, telephonytransport::PCIReadResponse *a2, telephonytransport::PCIReadResponse *a3)
{
  v3 = *(this + 28);
  *(this + 28) = *(a2 + 7);
  *(a2 + 7) = v3;
  v4 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v4;
  LODWORD(v4) = *(this + 24);
  *(this + 24) = *(a2 + 6);
  *(a2 + 6) = v4;
  v5 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v5;
  return this;
}

uint64_t telephonytransport::PCIReadResponse::PCIReadResponse(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A1E9E850;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  v5 = *(a2 + 16);
  *(a2 + 16) = 0;
  v6 = *(a1 + 16);
  *(a1 + 16) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  *(a1 + 24) = *(a2 + 24);
  v7 = *(a2 + 8);
  *(a2 + 8) = 0;
  std::unique_ptr<PB::Data>::reset[abi:ne200100](v4, v7);
  return a1;
}

uint64_t telephonytransport::PCIReadResponse::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *v8 = v3;
    *&v8[16] = v3;
    telephonytransport::PCIReadResponse::PCIReadResponse(v8, a2);
    v4 = *(a1 + 24);
    v5 = *(a1 + 28);
    *(a1 + 24) = *&v8[24];
    *&v8[24] = v4;
    *&v8[28] = v5;
    v6 = *(a1 + 8);
    *(a1 + 8) = *&v8[8];
    *&v8[8] = v6;
    telephonytransport::PCIReadResponse::~PCIReadResponse(v8);
  }

  return a1;
}

uint64_t telephonytransport::PCIReadResponse::formatText(telephonytransport::PCIReadResponse *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 1))
  {
    PB::TextFormatter::format();
  }

  v5 = *(this + 2);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "messageId");
  }

  if (*(this + 28))
  {
    v6 = *(this + 6);
    PB::TextFormatter::format(a2, "result");
  }

  return MEMORY[0x2A1C68DE0](a2);
}

uint64_t telephonytransport::PCIReadResponse::readFrom(void ***this, PB::Reader *a2)
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
        goto LABEL_51;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        v34 = operator new(0x10uLL);
        *v34 = 0;
        v34[1] = 0;
        std::unique_ptr<PB::Data>::reset[abi:ne200100](this + 1, v34);
        PB::Reader::read(a2, this[1]);
      }

      else if (v22 == 2)
      {
        *(this + 28) |= 1u;
        v26 = *(a2 + 1);
        v25 = *(a2 + 2);
        v27 = *a2;
        if (v26 > 0xFFFFFFFFFFFFFFF5 || v26 + 10 > v25)
        {
          v35 = 0;
          v36 = 0;
          v30 = 0;
          v37 = (v27 + v26);
          v18 = v25 >= v26;
          v38 = v25 - v26;
          if (!v18)
          {
            v38 = 0;
          }

          v39 = v26 + 1;
          while (1)
          {
            if (!v38)
            {
              LODWORD(v30) = 0;
              *(a2 + 24) = 1;
              goto LABEL_49;
            }

            v40 = *v37;
            *(a2 + 1) = v39;
            v30 |= (v40 & 0x7F) << v35;
            if ((v40 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            ++v37;
            --v38;
            ++v39;
            v14 = v36++ > 8;
            if (v14)
            {
LABEL_45:
              LODWORD(v30) = 0;
              goto LABEL_49;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v30) = 0;
          }
        }

        else
        {
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = (v27 + v26);
          v32 = v26 + 1;
          while (1)
          {
            *(a2 + 1) = v32;
            v33 = *v31++;
            v30 |= (v33 & 0x7F) << v28;
            if ((v33 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            ++v32;
            v14 = v29++ > 8;
            if (v14)
            {
              goto LABEL_45;
            }
          }
        }

LABEL_49:
        *(this + 6) = v30;
      }

      else if (v22 == 1)
      {
        v23 = operator new(0x18uLL);
        *v23 = &unk_2A1E9E7A8;
        *(v23 + 5) = 0;
        v24 = this[2];
        this[2] = v23;
        if (v24)
        {
          (*(*v24 + 1))(v24);
          v23 = this[2];
        }

        if (!PB::Reader::placeMark() || !(*(*v23 + 2))(v23, a2))
        {
LABEL_53:
          v41 = 0;
          return v41 & 1;
        }

        PB::Reader::recallMark();
      }

      else
      {
LABEL_17:
        if ((PB::Reader::skip(a2) & 1) == 0)
        {
          goto LABEL_53;
        }
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_51;
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

LABEL_51:
  v41 = v4 ^ 1;
  return v41 & 1;
}

uint64_t telephonytransport::PCIReadResponse::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 16);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  if (*(v3 + 28))
  {
    v5 = *(v3 + 24);
    this = PB::Writer::writeVarInt(a2);
  }

  if (*(v3 + 8))
  {

    return MEMORY[0x2A1C68E58](a2);
  }

  return this;
}

BOOL telephonytransport::PCIReadResponse::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v4)
  {
    if (!v5 || !telephonytransport::PCIMessageId::operator==(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v6 = *(a2 + 28);
  if (*(a1 + 28))
  {
    if ((*(a2 + 28) & 1) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if (*(a2 + 28))
  {
    return 0;
  }

  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }

    if (PB::Data::operator==())
    {
      return 1;
    }

    if (*(a1 + 8))
    {
      return 0;
    }
  }

  return *(a2 + 8) == 0;
}

uint64_t telephonytransport::PCIReadResponse::hash_value(telephonytransport::PCIReadResponse *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    v2 = *(v1 + 20);
    v3 = *(v1 + 16);
    if ((v2 & 2) == 0)
    {
      v3 = 0;
    }

    v4 = *(v1 + 8);
    if ((v2 & 1) == 0)
    {
      v4 = 0;
    }

    v5 = v4 ^ v3;
  }

  else
  {
    v5 = 0;
  }

  if (*(this + 28))
  {
    v6 = *(this + 6);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(this + 1);
  if (v7)
  {
    v8 = *v7;
    v9 = v7[1];
    v10 = PBHashBytes();
  }

  else
  {
    v10 = 0;
  }

  return v6 ^ v5 ^ v10;
}

void *telephonytransport::PCIReadResponse::makeMessageId(void *this)
{
  if (!this[2])
  {
    v1 = this;
    this = operator new(0x18uLL);
    *this = &unk_2A1E9E7A8;
    *(this + 5) = 0;
    v1[2] = this;
  }

  return this;
}

uint64_t telephonytransport::PCISendImageRequest::PCISendImageRequest(uint64_t this)
{
  *(this + 28) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_2A1E9E888;
  return this;
}

{
  *(this + 28) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_2A1E9E888;
  return this;
}

void telephonytransport::PCISendImageRequest::~PCISendImageRequest(telephonytransport::PCISendImageRequest *this)
{
  *this = &unk_2A1E9E888;
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::unique_ptr<PB::Data>::reset[abi:ne200100](this + 1, 0);

  PB::Base::~Base(this);
}

{
  telephonytransport::PCISendImageRequest::~PCISendImageRequest(this);

  operator delete(v1);
}

telephonytransport::PCISendImageRequest *telephonytransport::PCISendImageRequest::PCISendImageRequest(telephonytransport::PCISendImageRequest *this, const telephonytransport::PCISendImageRequest *a2)
{
  *this = &unk_2A1E9E888;
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 7) = 0;
  *(this + 2) = 0;
  v5 = *(a2 + 2);
  if (v5)
  {
    v6 = operator new(0x18uLL);
    *(this + 2) = telephonytransport::PCIMessageId::PCIMessageId(v6, v5);
  }

  if (*(a2 + 28))
  {
    v7 = *(a2 + 6);
    *(this + 28) = 1;
    *(this + 6) = v7;
  }

  v8 = *(a2 + 1);
  if (v8)
  {
    v9 = operator new(0x10uLL);
    PB::Data::Data(v9, v8);
    std::unique_ptr<PB::Data>::reset[abi:ne200100](v4, v9);
  }

  return this;
}

uint64_t telephonytransport::PCISendImageRequest::operator=(uint64_t a1, const telephonytransport::PCISendImageRequest *a2)
{
  if (a1 != a2)
  {
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *v8 = v3;
    *&v8[16] = v3;
    telephonytransport::PCISendImageRequest::PCISendImageRequest(v8, a2);
    v4 = *(a1 + 24);
    v5 = *(a1 + 28);
    *(a1 + 24) = *&v8[24];
    *&v8[24] = v4;
    *&v8[28] = v5;
    v6 = *(a1 + 8);
    *(a1 + 8) = *&v8[8];
    *&v8[8] = v6;
    telephonytransport::PCISendImageRequest::~PCISendImageRequest(v8);
  }

  return a1;
}

uint64_t telephonytransport::swap(uint64_t this, telephonytransport::PCISendImageRequest *a2, telephonytransport::PCISendImageRequest *a3)
{
  v3 = *(this + 28);
  *(this + 28) = *(a2 + 7);
  *(a2 + 7) = v3;
  v4 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v4;
  LODWORD(v4) = *(this + 24);
  *(this + 24) = *(a2 + 6);
  *(a2 + 6) = v4;
  v5 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v5;
  return this;
}

uint64_t telephonytransport::PCISendImageRequest::PCISendImageRequest(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A1E9E888;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  v5 = *(a2 + 16);
  *(a2 + 16) = 0;
  v6 = *(a1 + 16);
  *(a1 + 16) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  *(a1 + 24) = *(a2 + 24);
  v7 = *(a2 + 8);
  *(a2 + 8) = 0;
  std::unique_ptr<PB::Data>::reset[abi:ne200100](v4, v7);
  return a1;
}

uint64_t telephonytransport::PCISendImageRequest::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *v8 = v3;
    *&v8[16] = v3;
    telephonytransport::PCISendImageRequest::PCISendImageRequest(v8, a2);
    v4 = *(a1 + 24);
    v5 = *(a1 + 28);
    *(a1 + 24) = *&v8[24];
    *&v8[24] = v4;
    *&v8[28] = v5;
    v6 = *(a1 + 8);
    *(a1 + 8) = *&v8[8];
    *&v8[8] = v6;
    telephonytransport::PCISendImageRequest::~PCISendImageRequest(v8);
  }

  return a1;
}

uint64_t telephonytransport::PCISendImageRequest::formatText(telephonytransport::PCISendImageRequest *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 1))
  {
    PB::TextFormatter::format();
  }

  v5 = *(this + 2);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "messageId");
  }

  if (*(this + 28))
  {
    v6 = *(this + 6);
    PB::TextFormatter::format(a2, "timeoutMs");
  }

  return MEMORY[0x2A1C68DE0](a2);
}

uint64_t telephonytransport::PCISendImageRequest::readFrom(void ***this, PB::Reader *a2)
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
        goto LABEL_51;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        v34 = operator new(0x10uLL);
        *v34 = 0;
        v34[1] = 0;
        std::unique_ptr<PB::Data>::reset[abi:ne200100](this + 1, v34);
        PB::Reader::read(a2, this[1]);
      }

      else if (v22 == 2)
      {
        *(this + 28) |= 1u;
        v26 = *(a2 + 1);
        v25 = *(a2 + 2);
        v27 = *a2;
        if (v26 > 0xFFFFFFFFFFFFFFF5 || v26 + 10 > v25)
        {
          v35 = 0;
          v36 = 0;
          v30 = 0;
          v37 = (v27 + v26);
          v18 = v25 >= v26;
          v38 = v25 - v26;
          if (!v18)
          {
            v38 = 0;
          }

          v39 = v26 + 1;
          while (1)
          {
            if (!v38)
            {
              LODWORD(v30) = 0;
              *(a2 + 24) = 1;
              goto LABEL_49;
            }

            v40 = *v37;
            *(a2 + 1) = v39;
            v30 |= (v40 & 0x7F) << v35;
            if ((v40 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            ++v37;
            --v38;
            ++v39;
            v14 = v36++ > 8;
            if (v14)
            {
LABEL_45:
              LODWORD(v30) = 0;
              goto LABEL_49;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v30) = 0;
          }
        }

        else
        {
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = (v27 + v26);
          v32 = v26 + 1;
          while (1)
          {
            *(a2 + 1) = v32;
            v33 = *v31++;
            v30 |= (v33 & 0x7F) << v28;
            if ((v33 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            ++v32;
            v14 = v29++ > 8;
            if (v14)
            {
              goto LABEL_45;
            }
          }
        }

LABEL_49:
        *(this + 6) = v30;
      }

      else if (v22 == 1)
      {
        v23 = operator new(0x18uLL);
        *v23 = &unk_2A1E9E7A8;
        *(v23 + 5) = 0;
        v24 = this[2];
        this[2] = v23;
        if (v24)
        {
          (*(*v24 + 1))(v24);
          v23 = this[2];
        }

        if (!PB::Reader::placeMark() || !(*(*v23 + 2))(v23, a2))
        {
LABEL_53:
          v41 = 0;
          return v41 & 1;
        }

        PB::Reader::recallMark();
      }

      else
      {
LABEL_17:
        if ((PB::Reader::skip(a2) & 1) == 0)
        {
          goto LABEL_53;
        }
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_51;
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

LABEL_51:
  v41 = v4 ^ 1;
  return v41 & 1;
}

uint64_t telephonytransport::PCISendImageRequest::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 16);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  if (*(v3 + 28))
  {
    v5 = *(v3 + 24);
    this = PB::Writer::writeVarInt(a2);
  }

  if (*(v3 + 8))
  {

    return MEMORY[0x2A1C68E58](a2);
  }

  return this;
}

BOOL telephonytransport::PCISendImageRequest::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v4)
  {
    if (!v5 || !telephonytransport::PCIMessageId::operator==(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v6 = *(a2 + 28);
  if (*(a1 + 28))
  {
    if ((*(a2 + 28) & 1) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if (*(a2 + 28))
  {
    return 0;
  }

  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }

    if (PB::Data::operator==())
    {
      return 1;
    }

    if (*(a1 + 8))
    {
      return 0;
    }
  }

  return *(a2 + 8) == 0;
}

uint64_t telephonytransport::PCISendImageRequest::hash_value(telephonytransport::PCISendImageRequest *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    v2 = *(v1 + 20);
    v3 = *(v1 + 16);
    if ((v2 & 2) == 0)
    {
      v3 = 0;
    }

    v4 = *(v1 + 8);
    if ((v2 & 1) == 0)
    {
      v4 = 0;
    }

    v5 = v4 ^ v3;
  }

  else
  {
    v5 = 0;
  }

  if (*(this + 28))
  {
    v6 = *(this + 6);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(this + 1);
  if (v7)
  {
    v8 = *v7;
    v9 = v7[1];
    v10 = PBHashBytes();
  }

  else
  {
    v10 = 0;
  }

  return v6 ^ v5 ^ v10;
}

void *telephonytransport::PCISendImageRequest::makeMessageId(void *this)
{
  if (!this[2])
  {
    v1 = this;
    this = operator new(0x18uLL);
    *this = &unk_2A1E9E7A8;
    *(this + 5) = 0;
    v1[2] = this;
  }

  return this;
}

uint64_t telephonytransport::PCICreateResponse::PCICreateResponse(uint64_t this)
{
  *this = &unk_2A1E9E8C0;
  *(this + 8) = 0;
  *(this + 20) = 0;
  *(this + 24) = 0;
  return this;
}

{
  *this = &unk_2A1E9E8C0;
  *(this + 8) = 0;
  *(this + 20) = 0;
  *(this + 24) = 0;
  return this;
}

void telephonytransport::PCICreateResponse::~PCICreateResponse(telephonytransport::PCICreateResponse *this)
{
  v2 = *(this + 1);
  *this = &unk_2A1E9E8C0;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  telephonytransport::PCICreateResponse::~PCICreateResponse(this);

  operator delete(v1);
}

telephonytransport::PCICreateResponse *telephonytransport::PCICreateResponse::PCICreateResponse(telephonytransport::PCICreateResponse *this, const telephonytransport::PCICreateResponse *a2)
{
  *this = &unk_2A1E9E8C0;
  *(this + 1) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  v4 = *(a2 + 1);
  if (v4)
  {
    v5 = operator new(0x18uLL);
    *(this + 1) = telephonytransport::PCIMessageId::PCIMessageId(v5, v4);
  }

  if ((*(a2 + 24) & 2) == 0)
  {
    v6 = 1;
    if ((*(a2 + 24) & 1) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  v7 = *(a2 + 5);
  *(this + 24) = 2;
  *(this + 5) = v7;
  v6 = 3;
  if (*(a2 + 24))
  {
LABEL_7:
    v8 = *(a2 + 4);
    *(this + 24) = v6;
    *(this + 4) = v8;
  }

  return this;
}

uint64_t telephonytransport::PCICreateResponse::operator=(uint64_t a1, const telephonytransport::PCICreateResponse *a2)
{
  if (a1 != a2)
  {
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v8 = v3;
    v9 = v3;
    telephonytransport::PCICreateResponse::PCICreateResponse(&v8, a2);
    v4 = *(a1 + 24);
    *(a1 + 24) = DWORD2(v9);
    DWORD2(v9) = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = *(&v8 + 1);
    *(&v8 + 1) = v5;
    v6 = *(a1 + 16);
    *(a1 + 16) = v9;
    *&v9 = v6;
    telephonytransport::PCICreateResponse::~PCICreateResponse(&v8);
  }

  return a1;
}

double telephonytransport::swap(telephonytransport *this, telephonytransport::PCICreateResponse *a2, telephonytransport::PCICreateResponse *a3)
{
  v3 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  result = *(a2 + 2);
  v6 = *(this + 2);
  *(this + 2) = result;
  *(a2 + 2) = v6;
  return result;
}

uint64_t telephonytransport::PCICreateResponse::PCICreateResponse(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A1E9E8C0;
  *(a1 + 8) = 0;
  *(a1 + 20) = 0;
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

uint64_t telephonytransport::PCICreateResponse::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v8 = v3;
    v9 = v3;
    telephonytransport::PCICreateResponse::PCICreateResponse(&v8, a2);
    v4 = *(a1 + 24);
    *(a1 + 24) = DWORD2(v9);
    DWORD2(v9) = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = *(&v8 + 1);
    *(&v8 + 1) = v5;
    v6 = *(a1 + 16);
    *(a1 + 16) = v9;
    *&v9 = v6;
    telephonytransport::PCICreateResponse::~PCICreateResponse(&v8);
  }

  return a1;
}

uint64_t telephonytransport::PCICreateResponse::formatText(telephonytransport::PCICreateResponse *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 24))
  {
    v5 = *(this + 4);
    PB::TextFormatter::format(a2, "createdTransportToken");
  }

  v6 = *(this + 1);
  if (v6)
  {
    (*(*v6 + 32))(v6, a2, "messageId");
  }

  if ((*(this + 24) & 2) != 0)
  {
    v7 = *(this + 5);
    PB::TextFormatter::format(a2, "result");
  }

  return MEMORY[0x2A1C68DE0](a2);
}

uint64_t telephonytransport::PCICreateResponse::readFrom(telephonytransport::PCICreateResponse *this, PB::Reader *a2)
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
        goto LABEL_69;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        *(this + 24) |= 1u;
        v35 = *(a2 + 1);
        v34 = *(a2 + 2);
        v36 = *a2;
        if (v35 > 0xFFFFFFFFFFFFFFF5 || v35 + 10 > v34)
        {
          v49 = 0;
          v50 = 0;
          v39 = 0;
          v51 = (v36 + v35);
          v18 = v34 >= v35;
          v52 = v34 - v35;
          if (!v18)
          {
            v52 = 0;
          }

          v53 = v35 + 1;
          while (1)
          {
            if (!v52)
            {
              LODWORD(v39) = 0;
              *(a2 + 24) = 1;
              goto LABEL_67;
            }

            v54 = *v51;
            *(a2 + 1) = v53;
            v39 |= (v54 & 0x7F) << v49;
            if ((v54 & 0x80) == 0)
            {
              break;
            }

            v49 += 7;
            ++v51;
            --v52;
            ++v53;
            v14 = v50++ > 8;
            if (v14)
            {
LABEL_59:
              LODWORD(v39) = 0;
              goto LABEL_67;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v39) = 0;
          }
        }

        else
        {
          v37 = 0;
          v38 = 0;
          v39 = 0;
          v40 = (v36 + v35);
          v41 = v35 + 1;
          while (1)
          {
            *(a2 + 1) = v41;
            v42 = *v40++;
            v39 |= (v42 & 0x7F) << v37;
            if ((v42 & 0x80) == 0)
            {
              break;
            }

            v37 += 7;
            ++v41;
            v14 = v38++ > 8;
            if (v14)
            {
              goto LABEL_59;
            }
          }
        }

LABEL_67:
        *(this + 4) = v39;
      }

      else if (v22 == 2)
      {
        *(this + 24) |= 2u;
        v26 = *(a2 + 1);
        v25 = *(a2 + 2);
        v27 = *a2;
        if (v26 > 0xFFFFFFFFFFFFFFF5 || v26 + 10 > v25)
        {
          v43 = 0;
          v44 = 0;
          v30 = 0;
          v45 = (v27 + v26);
          v18 = v25 >= v26;
          v46 = v25 - v26;
          if (!v18)
          {
            v46 = 0;
          }

          v47 = v26 + 1;
          while (1)
          {
            if (!v46)
            {
              LODWORD(v30) = 0;
              *(a2 + 24) = 1;
              goto LABEL_64;
            }

            v48 = *v45;
            *(a2 + 1) = v47;
            v30 |= (v48 & 0x7F) << v43;
            if ((v48 & 0x80) == 0)
            {
              break;
            }

            v43 += 7;
            ++v45;
            --v46;
            ++v47;
            v14 = v44++ > 8;
            if (v14)
            {
LABEL_51:
              LODWORD(v30) = 0;
              goto LABEL_64;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v30) = 0;
          }
        }

        else
        {
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = (v27 + v26);
          v32 = v26 + 1;
          while (1)
          {
            *(a2 + 1) = v32;
            v33 = *v31++;
            v30 |= (v33 & 0x7F) << v28;
            if ((v33 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            ++v32;
            v14 = v29++ > 8;
            if (v14)
            {
              goto LABEL_51;
            }
          }
        }

LABEL_64:
        *(this + 5) = v30;
      }

      else if (v22 == 1)
      {
        v23 = operator new(0x18uLL);
        *v23 = &unk_2A1E9E7A8;
        v23[5] = 0;
        v24 = *(this + 1);
        *(this + 1) = v23;
        if (v24)
        {
          (*(*v24 + 8))(v24);
          v23 = *(this + 1);
        }

        if (!PB::Reader::placeMark() || !(*(*v23 + 16))(v23, a2))
        {
LABEL_71:
          v55 = 0;
          return v55 & 1;
        }

        PB::Reader::recallMark();
      }

      else
      {
LABEL_17:
        if ((PB::Reader::skip(a2) & 1) == 0)
        {
          goto LABEL_71;
        }
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_69;
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

LABEL_69:
  v55 = v4 ^ 1;
  return v55 & 1;
}

uint64_t telephonytransport::PCICreateResponse::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  v5 = *(v3 + 24);
  if ((v5 & 2) != 0)
  {
    v6 = *(v3 + 20);
    this = PB::Writer::writeVarInt(a2);
    v5 = *(v3 + 24);
  }

  if (v5)
  {
    v7 = *(v3 + 16);

    return PB::Writer::writeVarInt(a2);
  }

  return this;
}

BOOL telephonytransport::PCICreateResponse::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5 || !telephonytransport::PCIMessageId::operator==(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
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

  result = (*(a2 + 24) & 1) == 0;
  if ((*(a1 + 24) & 1) == 0)
  {
    return result;
  }

  return (*(a2 + 24) & 1) != 0 && *(a1 + 16) == *(a2 + 16);
}

uint64_t telephonytransport::PCICreateResponse::hash_value(telephonytransport::PCICreateResponse *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    v2 = *(v1 + 20);
    v3 = *(v1 + 16);
    if ((v2 & 2) == 0)
    {
      v3 = 0;
    }

    v4 = *(v1 + 8);
    if ((v2 & 1) == 0)
    {
      v4 = 0;
    }

    v1 = v4 ^ v3;
  }

  if ((*(this + 24) & 2) != 0)
  {
    v5 = *(this + 5);
    if (*(this + 24))
    {
      goto LABEL_9;
    }

LABEL_11:
    v6 = 0;
    return v5 ^ v1 ^ v6;
  }

  v5 = 0;
  if ((*(this + 24) & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_9:
  v6 = *(this + 4);
  return v5 ^ v1 ^ v6;
}

void *telephonytransport::PCICreateResponse::makeMessageId(void *this)
{
  if (!this[1])
  {
    v1 = this;
    this = operator new(0x18uLL);
    *this = &unk_2A1E9E7A8;
    *(this + 5) = 0;
    v1[1] = this;
  }

  return this;
}

uint64_t telephonytransport::PCIReadRequest::PCIReadRequest(uint64_t this)
{
  *this = &unk_2A1E9E8F8;
  *(this + 8) = 0;
  *(this + 24) = 0;
  return this;
}

{
  *this = &unk_2A1E9E8F8;
  *(this + 8) = 0;
  *(this + 24) = 0;
  return this;
}

void telephonytransport::PCIReadRequest::~PCIReadRequest(telephonytransport::PCIReadRequest *this)
{
  v2 = *(this + 1);
  *this = &unk_2A1E9E8F8;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  telephonytransport::PCIReadRequest::~PCIReadRequest(this);

  operator delete(v1);
}

telephonytransport::PCIReadRequest *telephonytransport::PCIReadRequest::PCIReadRequest(telephonytransport::PCIReadRequest *this, const telephonytransport::PCIReadRequest *a2)
{
  *this = &unk_2A1E9E8F8;
  *(this + 1) = 0;
  *(this + 6) = 0;
  v4 = *(a2 + 1);
  if (v4)
  {
    v5 = operator new(0x18uLL);
    *(this + 1) = telephonytransport::PCIMessageId::PCIMessageId(v5, v4);
  }

  if ((*(a2 + 24) & 2) == 0)
  {
    v6 = 1;
    if ((*(a2 + 24) & 1) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  v7 = *(a2 + 5);
  *(this + 24) = 2;
  *(this + 5) = v7;
  v6 = 3;
  if (*(a2 + 24))
  {
LABEL_7:
    v8 = *(a2 + 4);
    *(this + 24) = v6;
    *(this + 4) = v8;
  }

  return this;
}

uint64_t telephonytransport::PCIReadRequest::operator=(uint64_t a1, const telephonytransport::PCIReadRequest *a2)
{
  if (a1 != a2)
  {
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v8 = v3;
    v9 = v3;
    telephonytransport::PCIReadRequest::PCIReadRequest(&v8, a2);
    v4 = *(a1 + 24);
    *(a1 + 24) = DWORD2(v9);
    DWORD2(v9) = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = *(&v8 + 1);
    *(&v8 + 1) = v5;
    v6 = *(a1 + 16);
    *(a1 + 16) = v9;
    *&v9 = v6;
    telephonytransport::PCIReadRequest::~PCIReadRequest(&v8);
  }

  return a1;
}

uint64_t telephonytransport::swap(uint64_t this, telephonytransport::PCIReadRequest *a2, telephonytransport::PCIReadRequest *a3)
{
  v3 = *(this + 24);
  *(this + 24) = *(a2 + 6);
  *(a2 + 6) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 20);
  *(this + 20) = *(a2 + 5);
  *(a2 + 5) = v4;
  LODWORD(v4) = *(this + 16);
  *(this + 16) = *(a2 + 4);
  *(a2 + 4) = v4;
  return this;
}

uint64_t telephonytransport::PCIReadRequest::PCIReadRequest(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A1E9E8F8;
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

  *(a1 + 20) = *(a2 + 20);
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t telephonytransport::PCIReadRequest::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v8 = v3;
    v9 = v3;
    telephonytransport::PCIReadRequest::PCIReadRequest(&v8, a2);
    v4 = *(a1 + 24);
    *(a1 + 24) = DWORD2(v9);
    DWORD2(v9) = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = *(&v8 + 1);
    *(&v8 + 1) = v5;
    v6 = *(a1 + 16);
    *(a1 + 16) = v9;
    *&v9 = v6;
    telephonytransport::PCIReadRequest::~PCIReadRequest(&v8);
  }

  return a1;
}

uint64_t telephonytransport::PCIReadRequest::formatText(telephonytransport::PCIReadRequest *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 24))
  {
    v5 = *(this + 4);
    PB::TextFormatter::format(a2, "bytesToRead");
  }

  v6 = *(this + 1);
  if (v6)
  {
    (*(*v6 + 32))(v6, a2, "messageId");
  }

  if ((*(this + 24) & 2) != 0)
  {
    v7 = *(this + 5);
    PB::TextFormatter::format(a2, "timeoutMs");
  }

  return MEMORY[0x2A1C68DE0](a2);
}

uint64_t telephonytransport::PCIReadRequest::readFrom(telephonytransport::PCIReadRequest *this, PB::Reader *a2)
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
        goto LABEL_69;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        *(this + 24) |= 1u;
        v35 = *(a2 + 1);
        v34 = *(a2 + 2);
        v36 = *a2;
        if (v35 > 0xFFFFFFFFFFFFFFF5 || v35 + 10 > v34)
        {
          v49 = 0;
          v50 = 0;
          v39 = 0;
          v51 = (v36 + v35);
          v18 = v34 >= v35;
          v52 = v34 - v35;
          if (!v18)
          {
            v52 = 0;
          }

          v53 = v35 + 1;
          while (1)
          {
            if (!v52)
            {
              LODWORD(v39) = 0;
              *(a2 + 24) = 1;
              goto LABEL_67;
            }

            v54 = *v51;
            *(a2 + 1) = v53;
            v39 |= (v54 & 0x7F) << v49;
            if ((v54 & 0x80) == 0)
            {
              break;
            }

            v49 += 7;
            ++v51;
            --v52;
            ++v53;
            v14 = v50++ > 8;
            if (v14)
            {
LABEL_59:
              LODWORD(v39) = 0;
              goto LABEL_67;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v39) = 0;
          }
        }

        else
        {
          v37 = 0;
          v38 = 0;
          v39 = 0;
          v40 = (v36 + v35);
          v41 = v35 + 1;
          while (1)
          {
            *(a2 + 1) = v41;
            v42 = *v40++;
            v39 |= (v42 & 0x7F) << v37;
            if ((v42 & 0x80) == 0)
            {
              break;
            }

            v37 += 7;
            ++v41;
            v14 = v38++ > 8;
            if (v14)
            {
              goto LABEL_59;
            }
          }
        }

LABEL_67:
        *(this + 4) = v39;
      }

      else if (v22 == 2)
      {
        *(this + 24) |= 2u;
        v26 = *(a2 + 1);
        v25 = *(a2 + 2);
        v27 = *a2;
        if (v26 > 0xFFFFFFFFFFFFFFF5 || v26 + 10 > v25)
        {
          v43 = 0;
          v44 = 0;
          v30 = 0;
          v45 = (v27 + v26);
          v18 = v25 >= v26;
          v46 = v25 - v26;
          if (!v18)
          {
            v46 = 0;
          }

          v47 = v26 + 1;
          while (1)
          {
            if (!v46)
            {
              LODWORD(v30) = 0;
              *(a2 + 24) = 1;
              goto LABEL_64;
            }

            v48 = *v45;
            *(a2 + 1) = v47;
            v30 |= (v48 & 0x7F) << v43;
            if ((v48 & 0x80) == 0)
            {
              break;
            }

            v43 += 7;
            ++v45;
            --v46;
            ++v47;
            v14 = v44++ > 8;
            if (v14)
            {
LABEL_51:
              LODWORD(v30) = 0;
              goto LABEL_64;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v30) = 0;
          }
        }

        else
        {
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = (v27 + v26);
          v32 = v26 + 1;
          while (1)
          {
            *(a2 + 1) = v32;
            v33 = *v31++;
            v30 |= (v33 & 0x7F) << v28;
            if ((v33 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            ++v32;
            v14 = v29++ > 8;
            if (v14)
            {
              goto LABEL_51;
            }
          }
        }

LABEL_64:
        *(this + 5) = v30;
      }

      else if (v22 == 1)
      {
        v23 = operator new(0x18uLL);
        *v23 = &unk_2A1E9E7A8;
        v23[5] = 0;
        v24 = *(this + 1);
        *(this + 1) = v23;
        if (v24)
        {
          (*(*v24 + 8))(v24);
          v23 = *(this + 1);
        }

        if (!PB::Reader::placeMark() || !(*(*v23 + 16))(v23, a2))
        {
LABEL_71:
          v55 = 0;
          return v55 & 1;
        }

        PB::Reader::recallMark();
      }

      else
      {
LABEL_17:
        if ((PB::Reader::skip(a2) & 1) == 0)
        {
          goto LABEL_71;
        }
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_69;
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

LABEL_69:
  v55 = v4 ^ 1;
  return v55 & 1;
}

uint64_t telephonytransport::PCIReadRequest::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  v5 = *(v3 + 24);
  if ((v5 & 2) != 0)
  {
    v6 = *(v3 + 20);
    this = PB::Writer::writeVarInt(a2);
    v5 = *(v3 + 24);
  }

  if (v5)
  {
    v7 = *(v3 + 16);

    return PB::Writer::writeVarInt(a2);
  }

  return this;
}

BOOL telephonytransport::PCIReadRequest::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5 || !telephonytransport::PCIMessageId::operator==(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
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

  result = (*(a2 + 24) & 1) == 0;
  if ((*(a1 + 24) & 1) == 0)
  {
    return result;
  }

  return (*(a2 + 24) & 1) != 0 && *(a1 + 16) == *(a2 + 16);
}

uint64_t telephonytransport::PCIReadRequest::hash_value(telephonytransport::PCIReadRequest *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    v2 = *(v1 + 20);
    v3 = *(v1 + 16);
    if ((v2 & 2) == 0)
    {
      v3 = 0;
    }

    v4 = *(v1 + 8);
    if ((v2 & 1) == 0)
    {
      v4 = 0;
    }

    v1 = v4 ^ v3;
  }

  if ((*(this + 24) & 2) != 0)
  {
    v5 = *(this + 5);
    if (*(this + 24))
    {
      goto LABEL_9;
    }

LABEL_11:
    v6 = 0;
    return v5 ^ v1 ^ v6;
  }

  v5 = 0;
  if ((*(this + 24) & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_9:
  v6 = *(this + 4);
  return v5 ^ v1 ^ v6;
}

void *telephonytransport::PCIReadRequest::makeMessageId(void *this)
{
  if (!this[1])
  {
    v1 = this;
    this = operator new(0x18uLL);
    *this = &unk_2A1E9E7A8;
    *(this + 5) = 0;
    v1[1] = this;
  }

  return this;
}

void *telephonytransport::PCIFreeResponse::PCIFreeResponse(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_2A1E9E930;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_2A1E9E930;
  return this;
}

void telephonytransport::PCIFreeResponse::~PCIFreeResponse(telephonytransport::PCIFreeResponse *this)
{
  v2 = *(this + 1);
  *this = &unk_2A1E9E930;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  telephonytransport::PCIFreeResponse::~PCIFreeResponse(this);

  operator delete(v1);
}

telephonytransport::PCIFreeResponse *telephonytransport::PCIFreeResponse::PCIFreeResponse(telephonytransport::PCIFreeResponse *this, const telephonytransport::PCIFreeResponse *a2)
{
  *this = &unk_2A1E9E930;
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    v6 = operator new(0x18uLL);
    *v4 = telephonytransport::PCIMessageId::PCIMessageId(v6, v5);
  }

  if (*(a2 + 20))
  {
    v7 = *(a2 + 4);
    *(this + 20) = 1;
    *(this + 4) = v7;
  }

  return this;
}

uint64_t telephonytransport::PCIFreeResponse::operator=(uint64_t a1, const telephonytransport::PCIFreeResponse *a2)
{
  if (a1 != a2)
  {
    memset(v6, 170, sizeof(v6));
    telephonytransport::PCIFreeResponse::PCIFreeResponse(v6, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6[1];
    v6[1] = v3;
    LODWORD(v3) = *(a1 + 16);
    v4 = *(a1 + 20);
    *(a1 + 16) = v6[2];
    v6[2] = __PAIR64__(v4, v3);
    telephonytransport::PCIFreeResponse::~PCIFreeResponse(v6);
  }

  return a1;
}

uint64_t telephonytransport::swap(uint64_t this, telephonytransport::PCIFreeResponse *a2, telephonytransport::PCIFreeResponse *a3)
{
  v3 = *(this + 20);
  *(this + 20) = *(a2 + 5);
  *(a2 + 5) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 16);
  *(this + 16) = *(a2 + 4);
  *(a2 + 4) = v4;
  return this;
}

uint64_t telephonytransport::PCIFreeResponse::PCIFreeResponse(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A1E9E930;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
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

uint64_t telephonytransport::PCIFreeResponse::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    memset(v6, 170, sizeof(v6));
    telephonytransport::PCIFreeResponse::PCIFreeResponse(v6, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6[1];
    v6[1] = v3;
    LODWORD(v3) = *(a1 + 16);
    v4 = *(a1 + 20);
    *(a1 + 16) = v6[2];
    v6[2] = __PAIR64__(v4, v3);
    telephonytransport::PCIFreeResponse::~PCIFreeResponse(v6);
  }

  return a1;
}

uint64_t telephonytransport::PCIFreeResponse::formatText(telephonytransport::PCIFreeResponse *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "messageId");
  }

  if (*(this + 20))
  {
    v6 = *(this + 4);
    PB::TextFormatter::format(a2, "result");
  }

  return MEMORY[0x2A1C68DE0](a2);
}

uint64_t telephonytransport::PCIFreeResponse::readFrom(telephonytransport::PCIFreeResponse *this, PB::Reader *a2)
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
          goto LABEL_26;
        }
      }

LABEL_18:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_51;
      }

      if ((v10 >> 3) == 2)
      {
        *(this + 20) |= 1u;
        v25 = *(a2 + 1);
        v24 = *(a2 + 2);
        v26 = *a2;
        if (v25 > 0xFFFFFFFFFFFFFFF5 || v25 + 10 > v24)
        {
          v33 = 0;
          v34 = 0;
          v29 = 0;
          v35 = (v26 + v25);
          v18 = v24 >= v25;
          v36 = v24 - v25;
          if (!v18)
          {
            v36 = 0;
          }

          v37 = v25 + 1;
          while (1)
          {
            if (!v36)
            {
              LODWORD(v29) = 0;
              *(a2 + 24) = 1;
              goto LABEL_46;
            }

            v38 = *v35;
            *(a2 + 1) = v37;
            v29 |= (v38 & 0x7F) << v33;
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
LABEL_42:
              LODWORD(v29) = 0;
              goto LABEL_46;
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
              goto LABEL_42;
            }
          }
        }

LABEL_46:
        *(this + 4) = v29;
      }

      else if ((v10 >> 3) == 1)
      {
        v22 = operator new(0x18uLL);
        *v22 = &unk_2A1E9E7A8;
        v22[5] = 0;
        v23 = *(this + 1);
        *(this + 1) = v22;
        if (v23)
        {
          (*(*v23 + 8))(v23);
          v22 = *(this + 1);
        }

        if (!PB::Reader::placeMark() || !(*(*v22 + 16))(v22, a2))
        {
LABEL_53:
          v39 = 0;
          return v39 & 1;
        }

        PB::Reader::recallMark();
      }

      else
      {
LABEL_26:
        if ((PB::Reader::skip(a2) & 1) == 0)
        {
          goto LABEL_53;
        }
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_51;
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
        goto LABEL_26;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_51:
  v39 = v4 ^ 1;
  return v39 & 1;
}

uint64_t telephonytransport::PCIFreeResponse::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  if (*(v3 + 20))
  {
    v5 = *(v3 + 16);

    return PB::Writer::writeVarInt(a2);
  }

  return this;
}

BOOL telephonytransport::PCIFreeResponse::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5 || !telephonytransport::PCIMessageId::operator==(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  result = (*(a2 + 20) & 1) == 0;
  if ((*(a1 + 20) & 1) == 0)
  {
    return result;
  }

  return (*(a2 + 20) & 1) != 0 && *(a1 + 16) == *(a2 + 16);
}

uint64_t telephonytransport::PCIFreeResponse::hash_value(telephonytransport::PCIFreeResponse *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    v2 = *(v1 + 20);
    v3 = *(v1 + 16);
    if ((v2 & 2) == 0)
    {
      v3 = 0;
    }

    v4 = *(v1 + 8);
    if ((v2 & 1) == 0)
    {
      v4 = 0;
    }

    v1 = v4 ^ v3;
  }

  if (*(this + 20))
  {
    v5 = *(this + 4);
  }

  else
  {
    v5 = 0;
  }

  return v5 ^ v1;
}

void *telephonytransport::PCIFreeResponse::makeMessageId(void *this)
{
  if (!this[1])
  {
    v1 = this;
    this = operator new(0x18uLL);
    *this = &unk_2A1E9E7A8;
    *(this + 5) = 0;
    v1[1] = this;
  }

  return this;
}

uint64_t telephonytransport::PCIWriteRequest::PCIWriteRequest(uint64_t this)
{
  *(this + 28) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_2A1E9E968;
  return this;
}

{
  *(this + 28) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_2A1E9E968;
  return this;
}

void telephonytransport::PCIWriteRequest::~PCIWriteRequest(telephonytransport::PCIWriteRequest *this)
{
  *this = &unk_2A1E9E968;
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::unique_ptr<PB::Data>::reset[abi:ne200100](this + 1, 0);

  PB::Base::~Base(this);
}

{
  telephonytransport::PCIWriteRequest::~PCIWriteRequest(this);

  operator delete(v1);
}

telephonytransport::PCIWriteRequest *telephonytransport::PCIWriteRequest::PCIWriteRequest(telephonytransport::PCIWriteRequest *this, const telephonytransport::PCIWriteRequest *a2)
{
  *this = &unk_2A1E9E968;
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 7) = 0;
  *(this + 2) = 0;
  v5 = *(a2 + 2);
  if (v5)
  {
    v6 = operator new(0x18uLL);
    *(this + 2) = telephonytransport::PCIMessageId::PCIMessageId(v6, v5);
  }

  if (*(a2 + 28))
  {
    v7 = *(a2 + 6);
    *(this + 28) = 1;
    *(this + 6) = v7;
  }

  v8 = *(a2 + 1);
  if (v8)
  {
    v9 = operator new(0x10uLL);
    PB::Data::Data(v9, v8);
    std::unique_ptr<PB::Data>::reset[abi:ne200100](v4, v9);
  }

  return this;
}

uint64_t telephonytransport::PCIWriteRequest::operator=(uint64_t a1, const telephonytransport::PCIWriteRequest *a2)
{
  if (a1 != a2)
  {
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *v8 = v3;
    *&v8[16] = v3;
    telephonytransport::PCIWriteRequest::PCIWriteRequest(v8, a2);
    v4 = *(a1 + 24);
    v5 = *(a1 + 28);
    *(a1 + 24) = *&v8[24];
    *&v8[24] = v4;
    *&v8[28] = v5;
    v6 = *(a1 + 8);
    *(a1 + 8) = *&v8[8];
    *&v8[8] = v6;
    telephonytransport::PCIWriteRequest::~PCIWriteRequest(v8);
  }

  return a1;
}

uint64_t telephonytransport::swap(uint64_t this, telephonytransport::PCIWriteRequest *a2, telephonytransport::PCIWriteRequest *a3)
{
  v3 = *(this + 28);
  *(this + 28) = *(a2 + 7);
  *(a2 + 7) = v3;
  v4 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v4;
  LODWORD(v4) = *(this + 24);
  *(this + 24) = *(a2 + 6);
  *(a2 + 6) = v4;
  v5 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v5;
  return this;
}

uint64_t telephonytransport::PCIWriteRequest::PCIWriteRequest(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A1E9E968;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  v5 = *(a2 + 16);
  *(a2 + 16) = 0;
  v6 = *(a1 + 16);
  *(a1 + 16) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  *(a1 + 24) = *(a2 + 24);
  v7 = *(a2 + 8);
  *(a2 + 8) = 0;
  std::unique_ptr<PB::Data>::reset[abi:ne200100](v4, v7);
  return a1;
}

uint64_t telephonytransport::PCIWriteRequest::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *v8 = v3;
    *&v8[16] = v3;
    telephonytransport::PCIWriteRequest::PCIWriteRequest(v8, a2);
    v4 = *(a1 + 24);
    v5 = *(a1 + 28);
    *(a1 + 24) = *&v8[24];
    *&v8[24] = v4;
    *&v8[28] = v5;
    v6 = *(a1 + 8);
    *(a1 + 8) = *&v8[8];
    *&v8[8] = v6;
    telephonytransport::PCIWriteRequest::~PCIWriteRequest(v8);
  }

  return a1;
}

uint64_t telephonytransport::PCIWriteRequest::formatText(telephonytransport::PCIWriteRequest *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 1))
  {
    PB::TextFormatter::format();
  }

  v5 = *(this + 2);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "messageId");
  }

  if (*(this + 28))
  {
    v6 = *(this + 6);
    PB::TextFormatter::format(a2, "timeoutMs");
  }

  return MEMORY[0x2A1C68DE0](a2);
}

uint64_t telephonytransport::PCIWriteRequest::readFrom(void ***this, PB::Reader *a2)
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
        goto LABEL_51;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        v34 = operator new(0x10uLL);
        *v34 = 0;
        v34[1] = 0;
        std::unique_ptr<PB::Data>::reset[abi:ne200100](this + 1, v34);
        PB::Reader::read(a2, this[1]);
      }

      else if (v22 == 2)
      {
        *(this + 28) |= 1u;
        v26 = *(a2 + 1);
        v25 = *(a2 + 2);
        v27 = *a2;
        if (v26 > 0xFFFFFFFFFFFFFFF5 || v26 + 10 > v25)
        {
          v35 = 0;
          v36 = 0;
          v30 = 0;
          v37 = (v27 + v26);
          v18 = v25 >= v26;
          v38 = v25 - v26;
          if (!v18)
          {
            v38 = 0;
          }

          v39 = v26 + 1;
          while (1)
          {
            if (!v38)
            {
              LODWORD(v30) = 0;
              *(a2 + 24) = 1;
              goto LABEL_49;
            }

            v40 = *v37;
            *(a2 + 1) = v39;
            v30 |= (v40 & 0x7F) << v35;
            if ((v40 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            ++v37;
            --v38;
            ++v39;
            v14 = v36++ > 8;
            if (v14)
            {
LABEL_45:
              LODWORD(v30) = 0;
              goto LABEL_49;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v30) = 0;
          }
        }

        else
        {
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = (v27 + v26);
          v32 = v26 + 1;
          while (1)
          {
            *(a2 + 1) = v32;
            v33 = *v31++;
            v30 |= (v33 & 0x7F) << v28;
            if ((v33 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            ++v32;
            v14 = v29++ > 8;
            if (v14)
            {
              goto LABEL_45;
            }
          }
        }

LABEL_49:
        *(this + 6) = v30;
      }

      else if (v22 == 1)
      {
        v23 = operator new(0x18uLL);
        *v23 = &unk_2A1E9E7A8;
        *(v23 + 5) = 0;
        v24 = this[2];
        this[2] = v23;
        if (v24)
        {
          (*(*v24 + 1))(v24);
          v23 = this[2];
        }

        if (!PB::Reader::placeMark() || !(*(*v23 + 2))(v23, a2))
        {
LABEL_53:
          v41 = 0;
          return v41 & 1;
        }

        PB::Reader::recallMark();
      }

      else
      {
LABEL_17:
        if ((PB::Reader::skip(a2) & 1) == 0)
        {
          goto LABEL_53;
        }
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_51;
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

LABEL_51:
  v41 = v4 ^ 1;
  return v41 & 1;
}

uint64_t telephonytransport::PCIWriteRequest::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 16);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  if (*(v3 + 28))
  {
    v5 = *(v3 + 24);
    this = PB::Writer::writeVarInt(a2);
  }

  if (*(v3 + 8))
  {

    return MEMORY[0x2A1C68E58](a2);
  }

  return this;
}

BOOL telephonytransport::PCIWriteRequest::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v4)
  {
    if (!v5 || !telephonytransport::PCIMessageId::operator==(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v6 = *(a2 + 28);
  if (*(a1 + 28))
  {
    if ((*(a2 + 28) & 1) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if (*(a2 + 28))
  {
    return 0;
  }

  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }

    if (PB::Data::operator==())
    {
      return 1;
    }

    if (*(a1 + 8))
    {
      return 0;
    }
  }

  return *(a2 + 8) == 0;
}

uint64_t telephonytransport::PCIWriteRequest::hash_value(telephonytransport::PCIWriteRequest *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    v2 = *(v1 + 20);
    v3 = *(v1 + 16);
    if ((v2 & 2) == 0)
    {
      v3 = 0;
    }

    v4 = *(v1 + 8);
    if ((v2 & 1) == 0)
    {
      v4 = 0;
    }

    v5 = v4 ^ v3;
  }

  else
  {
    v5 = 0;
  }

  if (*(this + 28))
  {
    v6 = *(this + 6);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(this + 1);
  if (v7)
  {
    v8 = *v7;
    v9 = v7[1];
    v10 = PBHashBytes();
  }

  else
  {
    v10 = 0;
  }

  return v6 ^ v5 ^ v10;
}

void *telephonytransport::PCIWriteRequest::makeMessageId(void *this)
{
  if (!this[2])
  {
    v1 = this;
    this = operator new(0x18uLL);
    *this = &unk_2A1E9E7A8;
    *(this + 5) = 0;
    v1[2] = this;
  }

  return this;
}

uint64_t telephonytransport::PCIStatusIndication::PCIStatusIndication(uint64_t this)
{
  *this = &unk_2A1E9E9A0;
  *(this + 24) = 0;
  *(this + 36) = 0;
  return this;
}

{
  *this = &unk_2A1E9E9A0;
  *(this + 24) = 0;
  *(this + 36) = 0;
  return this;
}

void telephonytransport::PCIStatusIndication::~PCIStatusIndication(telephonytransport::PCIStatusIndication *this)
{
  *this = &unk_2A1E9E9A0;
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  telephonytransport::PCIStatusIndication::~PCIStatusIndication(this);

  operator delete(v1);
}

telephonytransport::PCIStatusIndication *telephonytransport::PCIStatusIndication::PCIStatusIndication(telephonytransport::PCIStatusIndication *this, const telephonytransport::PCIStatusIndication *a2)
{
  *this = &unk_2A1E9E9A0;
  *(this + 3) = 0;
  *(this + 9) = 0;
  v4 = *(a2 + 3);
  if (v4)
  {
    v5 = operator new(0x18uLL);
    *(this + 3) = telephonytransport::PCIMessageId::PCIMessageId(v5, v4);
  }

  v6 = *(a2 + 36);
  if ((v6 & 4) != 0)
  {
    v8 = *(a2 + 8);
    v7 = 4;
    *(this + 36) = 4;
    *(this + 8) = v8;
    v6 = *(a2 + 36);
    if ((v6 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v7 = 0;
  if (*(a2 + 36))
  {
LABEL_7:
    v9 = *(a2 + 1);
    v7 |= 1u;
    *(this + 36) = v7;
    *(this + 1) = v9;
    v6 = *(a2 + 36);
  }

LABEL_8:
  if ((v6 & 2) != 0)
  {
    v10 = *(a2 + 2);
    *(this + 36) = v7 | 2;
    *(this + 2) = v10;
  }

  return this;
}

uint64_t telephonytransport::PCIStatusIndication::operator=(uint64_t a1, const telephonytransport::PCIStatusIndication *a2)
{
  if (a1 != a2)
  {
    v9 = 0xAAAAAAAAAAAAAAAALL;
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *v8 = v3;
    *&v8[16] = v3;
    telephonytransport::PCIStatusIndication::PCIStatusIndication(v8, a2);
    v4 = *(a1 + 24);
    *(a1 + 24) = *&v8[24];
    *&v8[24] = v4;
    LODWORD(v4) = *(a1 + 32);
    v5 = *(a1 + 36);
    *(a1 + 32) = v9;
    v9 = __PAIR64__(v5, v4);
    v6 = *(a1 + 8);
    *(a1 + 8) = *&v8[8];
    *&v8[8] = v6;
    telephonytransport::PCIStatusIndication::~PCIStatusIndication(v8);
  }

  return a1;
}

uint64_t telephonytransport::swap(uint64_t this, telephonytransport::PCIStatusIndication *a2, telephonytransport::PCIStatusIndication *a3)
{
  v3 = *(this + 36);
  *(this + 36) = *(a2 + 9);
  *(a2 + 9) = v3;
  v4 = *(this + 32);
  *(this + 32) = *(a2 + 8);
  v5 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v5;
  v7 = *(this + 16);
  v6 = *(this + 24);
  v8 = *(a2 + 3);
  *(this + 16) = *(a2 + 2);
  *(this + 24) = v8;
  *(a2 + 8) = v4;
  *(a2 + 2) = v7;
  *(a2 + 3) = v6;
  return this;
}

uint64_t telephonytransport::PCIStatusIndication::PCIStatusIndication(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A1E9E9A0;
  *(a1 + 24) = 0;
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

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t telephonytransport::PCIStatusIndication::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v9 = 0xAAAAAAAAAAAAAAAALL;
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *v8 = v3;
    *&v8[16] = v3;
    telephonytransport::PCIStatusIndication::PCIStatusIndication(v8, a2);
    v4 = *(a1 + 24);
    *(a1 + 24) = *&v8[24];
    *&v8[24] = v4;
    LODWORD(v4) = *(a1 + 32);
    v5 = *(a1 + 36);
    *(a1 + 32) = v9;
    v9 = __PAIR64__(v5, v4);
    v6 = *(a1 + 8);
    *(a1 + 8) = *&v8[8];
    *&v8[8] = v6;
    telephonytransport::PCIStatusIndication::~PCIStatusIndication(v8);
  }

  return a1;
}

uint64_t telephonytransport::PCIStatusIndication::formatText(telephonytransport::PCIStatusIndication *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 36);
  if (v5)
  {
    v6 = *(this + 1);
    PB::TextFormatter::format(a2, "arg1");
    v5 = *(this + 36);
  }

  if ((v5 & 2) != 0)
  {
    v7 = *(this + 2);
    PB::TextFormatter::format(a2, "arg2");
  }

  v8 = *(this + 3);
  if (v8)
  {
    (*(*v8 + 32))(v8, a2, "messageId");
  }

  if ((*(this + 36) & 4) != 0)
  {
    v9 = *(this + 8);
    PB::TextFormatter::format(a2, "status");
  }

  return MEMORY[0x2A1C68DE0](a2);
}

uint64_t telephonytransport::PCIStatusIndication::readFrom(telephonytransport::PCIStatusIndication *this, PB::Reader *a2)
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
        goto LABEL_90;
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
        goto LABEL_90;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) > 2)
      {
        break;
      }

      if (v22 != 1)
      {
        if (v22 == 2)
        {
          *(this + 36) |= 4u;
          v24 = *(a2 + 1);
          v23 = *(a2 + 2);
          v25 = *a2;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
          {
            v52 = 0;
            v53 = 0;
            v28 = 0;
            v54 = (v25 + v24);
            v18 = v23 >= v24;
            v55 = v23 - v24;
            if (!v18)
            {
              v55 = 0;
            }

            v56 = v24 + 1;
            while (1)
            {
              if (!v55)
              {
                LODWORD(v28) = 0;
                *(a2 + 24) = 1;
                goto LABEL_82;
              }

              v57 = *v54;
              *(a2 + 1) = v56;
              v28 |= (v57 & 0x7F) << v52;
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
LABEL_60:
                LODWORD(v28) = 0;
                goto LABEL_82;
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
                goto LABEL_60;
              }
            }
          }

LABEL_82:
          *(this + 8) = v28;
          goto LABEL_18;
        }

        goto LABEL_17;
      }

      v41 = operator new(0x18uLL);
      *v41 = &unk_2A1E9E7A8;
      v41[5] = 0;
      v42 = *(this + 3);
      *(this + 3) = v41;
      if (v42)
      {
        (*(*v42 + 8))(v42);
        v41 = *(this + 3);
      }

      if (!PB::Reader::placeMark() || !(*(*v41 + 16))(v41, a2))
      {
LABEL_92:
        v70 = 0;
        return v70 & 1;
      }

      PB::Reader::recallMark();
LABEL_18:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_90;
      }
    }

    if (v22 == 3)
    {
      *(this + 36) |= 1u;
      v44 = *(a2 + 1);
      v43 = *(a2 + 2);
      v45 = *a2;
      if (v44 > 0xFFFFFFFFFFFFFFF5 || v44 + 10 > v43)
      {
        v64 = 0;
        v65 = 0;
        v48 = 0;
        v66 = (v45 + v44);
        v18 = v43 >= v44;
        v67 = v43 - v44;
        if (!v18)
        {
          v67 = 0;
        }

        v68 = v44 + 1;
        while (1)
        {
          if (!v67)
          {
            v48 = 0;
            *(a2 + 24) = 1;
            goto LABEL_88;
          }

          v69 = *v66;
          *(a2 + 1) = v68;
          v48 |= (v69 & 0x7F) << v64;
          if ((v69 & 0x80) == 0)
          {
            break;
          }

          v64 += 7;
          ++v66;
          --v67;
          ++v68;
          v14 = v65++ > 8;
          if (v14)
          {
LABEL_76:
            v48 = 0;
            goto LABEL_88;
          }
        }

        if (*(a2 + 24))
        {
          v48 = 0;
        }
      }

      else
      {
        v46 = 0;
        v47 = 0;
        v48 = 0;
        v49 = (v45 + v44);
        v50 = v44 + 1;
        while (1)
        {
          *(a2 + 1) = v50;
          v51 = *v49++;
          v48 |= (v51 & 0x7F) << v46;
          if ((v51 & 0x80) == 0)
          {
            break;
          }

          v46 += 7;
          ++v50;
          v14 = v47++ > 8;
          if (v14)
          {
            goto LABEL_76;
          }
        }
      }

LABEL_88:
      *(this + 1) = v48;
      goto LABEL_18;
    }

    if (v22 == 4)
    {
      *(this + 36) |= 2u;
      v33 = *(a2 + 1);
      v32 = *(a2 + 2);
      v34 = *a2;
      if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v32)
      {
        v58 = 0;
        v59 = 0;
        v37 = 0;
        v60 = (v34 + v33);
        v18 = v32 >= v33;
        v61 = v32 - v33;
        if (!v18)
        {
          v61 = 0;
        }

        v62 = v33 + 1;
        while (1)
        {
          if (!v61)
          {
            v37 = 0;
            *(a2 + 24) = 1;
            goto LABEL_85;
          }

          v63 = *v60;
          *(a2 + 1) = v62;
          v37 |= (v63 & 0x7F) << v58;
          if ((v63 & 0x80) == 0)
          {
            break;
          }

          v58 += 7;
          ++v60;
          --v61;
          ++v62;
          v14 = v59++ > 8;
          if (v14)
          {
LABEL_68:
            v37 = 0;
            goto LABEL_85;
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
            goto LABEL_68;
          }
        }
      }

LABEL_85:
      *(this + 2) = v37;
      goto LABEL_18;
    }

LABEL_17:
    if ((PB::Reader::skip(a2) & 1) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_18;
  }

LABEL_90:
  v70 = v4 ^ 1;
  return v70 & 1;
}

uint64_t telephonytransport::PCIStatusIndication::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 24);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  v5 = *(v3 + 36);
  if ((v5 & 4) == 0)
  {
    if ((*(v3 + 36) & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v7 = *(v3 + 8);
    this = PB::Writer::writeVarInt(a2);
    if ((*(v3 + 36) & 2) == 0)
    {
      return this;
    }

    goto LABEL_9;
  }

  v6 = *(v3 + 32);
  this = PB::Writer::writeVarInt(a2);
  v5 = *(v3 + 36);
  if (v5)
  {
    goto LABEL_8;
  }

LABEL_5:
  if ((v5 & 2) == 0)
  {
    return this;
  }

LABEL_9:
  v8 = *(v3 + 16);

  return PB::Writer::writeVarInt(a2);
}

BOOL telephonytransport::PCIStatusIndication::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v5 = *(a2 + 24);
  if (v4)
  {
    if (!v5 || !telephonytransport::PCIMessageId::operator==(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if ((*(a1 + 36) & 4) != 0)
  {
    if ((*(a2 + 36) & 4) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((*(a2 + 36) & 4) != 0)
  {
    return 0;
  }

  if (*(a1 + 36))
  {
    if ((*(a2 + 36) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 36))
  {
    return 0;
  }

  result = (*(a2 + 36) & 2) == 0;
  if ((*(a1 + 36) & 2) == 0)
  {
    return result;
  }

  return (*(a2 + 36) & 2) != 0 && *(a1 + 16) == *(a2 + 16);
}

uint64_t telephonytransport::PCIStatusIndication::hash_value(telephonytransport::PCIStatusIndication *this)
{
  v1 = *(this + 3);
  if (v1)
  {
    v2 = *(v1 + 20);
    v3 = *(v1 + 16);
    if ((v2 & 2) == 0)
    {
      v3 = 0;
    }

    v4 = *(v1 + 8);
    if ((v2 & 1) == 0)
    {
      v4 = 0;
    }

    v1 = v4 ^ v3;
  }

  if ((*(this + 36) & 4) == 0)
  {
    v5 = 0;
    if (*(this + 36))
    {
      goto LABEL_9;
    }

LABEL_12:
    v6 = 0;
    if ((*(this + 36) & 2) != 0)
    {
      goto LABEL_10;
    }

LABEL_13:
    v7 = 0;
    return v5 ^ v1 ^ v6 ^ v7;
  }

  v5 = *(this + 8);
  if ((*(this + 36) & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  v6 = *(this + 1);
  if ((*(this + 36) & 2) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  v7 = *(this + 2);
  return v5 ^ v1 ^ v6 ^ v7;
}

void *telephonytransport::PCIStatusIndication::makeMessageId(void *this)
{
  if (!this[3])
  {
    v1 = this;
    this = operator new(0x18uLL);
    *this = &unk_2A1E9E7A8;
    *(this + 5) = 0;
    v1[3] = this;
  }

  return this;
}

void *telephonytransport::PCIFreeRequest::PCIFreeRequest(void *this)
{
  *this = &unk_2A1E9E9D8;
  this[1] = 0;
  return this;
}

{
  *this = &unk_2A1E9E9D8;
  this[1] = 0;
  return this;
}

void telephonytransport::PCIFreeRequest::~PCIFreeRequest(telephonytransport::PCIFreeRequest *this)
{
  v2 = *(this + 1);
  *this = &unk_2A1E9E9D8;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  telephonytransport::PCIFreeRequest::~PCIFreeRequest(this);

  operator delete(v1);
}

telephonytransport::PCIFreeRequest *telephonytransport::PCIFreeRequest::PCIFreeRequest(telephonytransport::PCIFreeRequest *this, const telephonytransport::PCIFreeRequest *a2)
{
  *this = &unk_2A1E9E9D8;
  *(this + 1) = 0;
  v3 = *(a2 + 1);
  if (v3)
  {
    v4 = operator new(0x18uLL);
    *(this + 1) = telephonytransport::PCIMessageId::PCIMessageId(v4, v3);
  }

  return this;
}

const telephonytransport::PCIFreeRequest *telephonytransport::PCIFreeRequest::operator=(const telephonytransport::PCIFreeRequest *a1, const telephonytransport::PCIFreeRequest *a2)
{
  if (a1 != a2)
  {
    v5 = 0xAAAAAAAAAAAAAAAALL;
    v6 = 0xAAAAAAAAAAAAAAAALL;
    telephonytransport::PCIFreeRequest::PCIFreeRequest(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    telephonytransport::PCIFreeRequest::~PCIFreeRequest(&v5);
  }

  return a1;
}

uint64_t telephonytransport::swap(uint64_t this, telephonytransport::PCIFreeRequest *a2, telephonytransport::PCIFreeRequest *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *telephonytransport::PCIFreeRequest::PCIFreeRequest(void *a1, uint64_t a2)
{
  *a1 = &unk_2A1E9E9D8;
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
  *a1 = &unk_2A1E9E9D8;
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

uint64_t telephonytransport::PCIFreeRequest::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_2A1E9E9D8;
    v6[1] = v4;
    telephonytransport::PCIFreeRequest::~PCIFreeRequest(v6);
  }

  return a1;
}

uint64_t telephonytransport::PCIFreeRequest::formatText(telephonytransport::PCIFreeRequest *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "messageId");
  }

  return MEMORY[0x2A1C68DE0](a2);
}

uint64_t telephonytransport::PCIFreeRequest::readFrom(telephonytransport::PCIFreeRequest *this, PB::Reader *a2)
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
          goto LABEL_25;
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
        v22 = operator new(0x18uLL);
        *v22 = &unk_2A1E9E7A8;
        v22[5] = 0;
        v23 = *(this + 1);
        *(this + 1) = v22;
        if (v23)
        {
          (*(*v23 + 8))(v23);
          v22 = *(this + 1);
        }

        if (!PB::Reader::placeMark() || !(*(*v22 + 16))(v22, a2))
        {
LABEL_32:
          v24 = 0;
          return v24 & 1;
        }

        PB::Reader::recallMark();
      }

      else
      {
LABEL_25:
        if ((PB::Reader::skip(a2) & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      v2 = *(a2 + 1);
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
        goto LABEL_25;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_30:
  v24 = v4 ^ 1;
  return v24 & 1;
}

uint64_t telephonytransport::PCIFreeRequest::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2);
  }

  return this;
}

BOOL telephonytransport::PCIFreeRequest::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  result = v3 == 0;
  if (v2)
  {
    return v3 && telephonytransport::PCIMessageId::operator==(v2, v3);
  }

  return result;
}

uint64_t telephonytransport::PCIFreeRequest::hash_value(telephonytransport::PCIFreeRequest *this)
{
  v1 = *(this + 1);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 20);
  v3 = *(v1 + 16);
  if ((v2 & 2) == 0)
  {
    v3 = 0;
  }

  v4 = *(v1 + 8);
  if ((v2 & 1) == 0)
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

void *telephonytransport::PCIFreeRequest::makeMessageId(void *this)
{
  if (!this[1])
  {
    v1 = this;
    this = operator new(0x18uLL);
    *this = &unk_2A1E9E7A8;
    *(this + 5) = 0;
    v1[1] = this;
  }

  return this;
}

uint64_t telephonytransport::PCIWriteResponse::PCIWriteResponse(uint64_t this)
{
  *this = &unk_2A1E9EA10;
  *(this + 8) = 0;
  *(this + 20) = 0;
  *(this + 24) = 0;
  return this;
}

{
  *this = &unk_2A1E9EA10;
  *(this + 8) = 0;
  *(this + 20) = 0;
  *(this + 24) = 0;
  return this;
}

void telephonytransport::PCIWriteResponse::~PCIWriteResponse(telephonytransport::PCIWriteResponse *this)
{
  v2 = *(this + 1);
  *this = &unk_2A1E9EA10;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  telephonytransport::PCIWriteResponse::~PCIWriteResponse(this);

  operator delete(v1);
}

telephonytransport::PCIWriteResponse *telephonytransport::PCIWriteResponse::PCIWriteResponse(telephonytransport::PCIWriteResponse *this, const telephonytransport::PCIWriteResponse *a2)
{
  *this = &unk_2A1E9EA10;
  *(this + 1) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  v4 = *(a2 + 1);
  if (v4)
  {
    v5 = operator new(0x18uLL);
    *(this + 1) = telephonytransport::PCIMessageId::PCIMessageId(v5, v4);
  }

  if ((*(a2 + 24) & 2) == 0)
  {
    v6 = 1;
    if ((*(a2 + 24) & 1) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  v7 = *(a2 + 5);
  *(this + 24) = 2;
  *(this + 5) = v7;
  v6 = 3;
  if (*(a2 + 24))
  {
LABEL_7:
    v8 = *(a2 + 4);
    *(this + 24) = v6;
    *(this + 4) = v8;
  }

  return this;
}

uint64_t telephonytransport::PCIWriteResponse::operator=(uint64_t a1, const telephonytransport::PCIWriteResponse *a2)
{
  if (a1 != a2)
  {
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v8 = v3;
    v9 = v3;
    telephonytransport::PCIWriteResponse::PCIWriteResponse(&v8, a2);
    v4 = *(a1 + 24);
    *(a1 + 24) = DWORD2(v9);
    DWORD2(v9) = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = *(&v8 + 1);
    *(&v8 + 1) = v5;
    v6 = *(a1 + 16);
    *(a1 + 16) = v9;
    *&v9 = v6;
    telephonytransport::PCIWriteResponse::~PCIWriteResponse(&v8);
  }

  return a1;
}

double telephonytransport::swap(telephonytransport *this, telephonytransport::PCIWriteResponse *a2, telephonytransport::PCIWriteResponse *a3)
{
  v3 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  result = *(a2 + 2);
  v6 = *(this + 2);
  *(this + 2) = result;
  *(a2 + 2) = v6;
  return result;
}

uint64_t telephonytransport::PCIWriteResponse::PCIWriteResponse(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A1E9EA10;
  *(a1 + 8) = 0;
  *(a1 + 20) = 0;
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

uint64_t telephonytransport::PCIWriteResponse::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v8 = v3;
    v9 = v3;
    telephonytransport::PCIWriteResponse::PCIWriteResponse(&v8, a2);
    v4 = *(a1 + 24);
    *(a1 + 24) = DWORD2(v9);
    DWORD2(v9) = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = *(&v8 + 1);
    *(&v8 + 1) = v5;
    v6 = *(a1 + 16);
    *(a1 + 16) = v9;
    *&v9 = v6;
    telephonytransport::PCIWriteResponse::~PCIWriteResponse(&v8);
  }

  return a1;
}

uint64_t telephonytransport::PCIWriteResponse::formatText(telephonytransport::PCIWriteResponse *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 24))
  {
    v5 = *(this + 4);
    PB::TextFormatter::format(a2, "bytesWritten");
  }

  v6 = *(this + 1);
  if (v6)
  {
    (*(*v6 + 32))(v6, a2, "messageId");
  }

  if ((*(this + 24) & 2) != 0)
  {
    v7 = *(this + 5);
    PB::TextFormatter::format(a2, "result");
  }

  return MEMORY[0x2A1C68DE0](a2);
}

uint64_t telephonytransport::PCIWriteResponse::readFrom(telephonytransport::PCIWriteResponse *this, PB::Reader *a2)
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
        goto LABEL_69;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        *(this + 24) |= 1u;
        v35 = *(a2 + 1);
        v34 = *(a2 + 2);
        v36 = *a2;
        if (v35 > 0xFFFFFFFFFFFFFFF5 || v35 + 10 > v34)
        {
          v49 = 0;
          v50 = 0;
          v39 = 0;
          v51 = (v36 + v35);
          v18 = v34 >= v35;
          v52 = v34 - v35;
          if (!v18)
          {
            v52 = 0;
          }

          v53 = v35 + 1;
          while (1)
          {
            if (!v52)
            {
              LODWORD(v39) = 0;
              *(a2 + 24) = 1;
              goto LABEL_67;
            }

            v54 = *v51;
            *(a2 + 1) = v53;
            v39 |= (v54 & 0x7F) << v49;
            if ((v54 & 0x80) == 0)
            {
              break;
            }

            v49 += 7;
            ++v51;
            --v52;
            ++v53;
            v14 = v50++ > 8;
            if (v14)
            {
LABEL_59:
              LODWORD(v39) = 0;
              goto LABEL_67;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v39) = 0;
          }
        }

        else
        {
          v37 = 0;
          v38 = 0;
          v39 = 0;
          v40 = (v36 + v35);
          v41 = v35 + 1;
          while (1)
          {
            *(a2 + 1) = v41;
            v42 = *v40++;
            v39 |= (v42 & 0x7F) << v37;
            if ((v42 & 0x80) == 0)
            {
              break;
            }

            v37 += 7;
            ++v41;
            v14 = v38++ > 8;
            if (v14)
            {
              goto LABEL_59;
            }
          }
        }

LABEL_67:
        *(this + 4) = v39;
      }

      else if (v22 == 2)
      {
        *(this + 24) |= 2u;
        v26 = *(a2 + 1);
        v25 = *(a2 + 2);
        v27 = *a2;
        if (v26 > 0xFFFFFFFFFFFFFFF5 || v26 + 10 > v25)
        {
          v43 = 0;
          v44 = 0;
          v30 = 0;
          v45 = (v27 + v26);
          v18 = v25 >= v26;
          v46 = v25 - v26;
          if (!v18)
          {
            v46 = 0;
          }

          v47 = v26 + 1;
          while (1)
          {
            if (!v46)
            {
              LODWORD(v30) = 0;
              *(a2 + 24) = 1;
              goto LABEL_64;
            }

            v48 = *v45;
            *(a2 + 1) = v47;
            v30 |= (v48 & 0x7F) << v43;
            if ((v48 & 0x80) == 0)
            {
              break;
            }

            v43 += 7;
            ++v45;
            --v46;
            ++v47;
            v14 = v44++ > 8;
            if (v14)
            {
LABEL_51:
              LODWORD(v30) = 0;
              goto LABEL_64;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v30) = 0;
          }
        }

        else
        {
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = (v27 + v26);
          v32 = v26 + 1;
          while (1)
          {
            *(a2 + 1) = v32;
            v33 = *v31++;
            v30 |= (v33 & 0x7F) << v28;
            if ((v33 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            ++v32;
            v14 = v29++ > 8;
            if (v14)
            {
              goto LABEL_51;
            }
          }
        }

LABEL_64:
        *(this + 5) = v30;
      }

      else if (v22 == 1)
      {
        v23 = operator new(0x18uLL);
        *v23 = &unk_2A1E9E7A8;
        v23[5] = 0;
        v24 = *(this + 1);
        *(this + 1) = v23;
        if (v24)
        {
          (*(*v24 + 8))(v24);
          v23 = *(this + 1);
        }

        if (!PB::Reader::placeMark() || !(*(*v23 + 16))(v23, a2))
        {
LABEL_71:
          v55 = 0;
          return v55 & 1;
        }

        PB::Reader::recallMark();
      }

      else
      {
LABEL_17:
        if ((PB::Reader::skip(a2) & 1) == 0)
        {
          goto LABEL_71;
        }
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_69;
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

LABEL_69:
  v55 = v4 ^ 1;
  return v55 & 1;
}

uint64_t telephonytransport::PCIWriteResponse::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  v5 = *(v3 + 24);
  if ((v5 & 2) != 0)
  {
    v6 = *(v3 + 20);
    this = PB::Writer::writeVarInt(a2);
    v5 = *(v3 + 24);
  }

  if (v5)
  {
    v7 = *(v3 + 16);

    return PB::Writer::writeVarInt(a2);
  }

  return this;
}

BOOL telephonytransport::PCIWriteResponse::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5 || !telephonytransport::PCIMessageId::operator==(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
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

  result = (*(a2 + 24) & 1) == 0;
  if ((*(a1 + 24) & 1) == 0)
  {
    return result;
  }

  return (*(a2 + 24) & 1) != 0 && *(a1 + 16) == *(a2 + 16);
}

uint64_t telephonytransport::PCIWriteResponse::hash_value(telephonytransport::PCIWriteResponse *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    v2 = *(v1 + 20);
    v3 = *(v1 + 16);
    if ((v2 & 2) == 0)
    {
      v3 = 0;
    }

    v4 = *(v1 + 8);
    if ((v2 & 1) == 0)
    {
      v4 = 0;
    }

    v1 = v4 ^ v3;
  }

  if ((*(this + 24) & 2) != 0)
  {
    v5 = *(this + 5);
    if (*(this + 24))
    {
      goto LABEL_9;
    }

LABEL_11:
    v6 = 0;
    return v5 ^ v1 ^ v6;
  }

  v5 = 0;
  if ((*(this + 24) & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_9:
  v6 = *(this + 4);
  return v5 ^ v1 ^ v6;
}

void *telephonytransport::PCIWriteResponse::makeMessageId(void *this)
{
  if (!this[1])
  {
    v1 = this;
    this = operator new(0x18uLL);
    *this = &unk_2A1E9E7A8;
    *(this + 5) = 0;
    v1[1] = this;
  }

  return this;
}

void telephonytransport::BaseProtocol::create(uint64_t a1@<X0>, NSObject **a2@<X1>, uint64_t *a3@<X2>, int a4@<W3>, char *a5@<X4>, void *a6@<X8>)
{
  v12 = operator new(0xA8uLL);
  telephonytransport::BaseProtocol::BaseProtocol(v12, a1, a5);
  v13 = operator new(0x20uLL);
  v13->__shared_weak_owners_ = 0;
  v13->__vftable = &unk_2A1E9ECE0;
  v13->__shared_owners_ = 0;
  v13[1].__vftable = v12;
  v24 = 0xAAAAAAAAAAAAAAAALL;
  v25 = 0xAAAAAAAAAAAAAAAALL;
  v22 = v12;
  v23 = v13;
  atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v14 = *a2;
  object = v14;
  if (v14)
  {
    dispatch_retain(v14);
  }

  v15 = a3[1];
  v19 = *a3;
  v20 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  telephonytransport::TCPSocketStream::create(&v22, &object, &v19, a4, a5, &v24);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_weak(v23);
  }

  v16 = v24;
  if (v24)
  {
    v17 = v25;
    v24 = 0;
    v25 = 0;
    v18 = *(v12 + 20);
    *(v12 + 19) = v16;
    *(v12 + 20) = v17;
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    *a6 = v12;
    a6[1] = v13;
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *a6 = 0;
    a6[1] = 0;
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v13);
}

void sub_2980AFAD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, dispatch_object_t object, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  _Unwind_Resume(a1);
}

void telephonytransport::BaseProtocol::init(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v4 = *(a1 + 160);
  *(a1 + 152) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

uint64_t telephonytransport::BaseProtocol::BaseProtocol(uint64_t a1, uint64_t a2, char *a3)
{
  telephonytransport::OSLogHandle::create("baseproto", a3, (a1 + 8));
  *(a1 + 24) = 0;
  *a1 = &unk_2A1E9EC48;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a1 + 64) = 850045863;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  std::vector<unsigned char>::reserve(a1 + 24);
  std::vector<unsigned char>::reserve(a1 + 128);
  return a1;
}

void sub_2980AFC20(_Unwind_Exception *a1)
{
  v5 = v1[20];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  sig = v3[1].__m_.__sig;
  if (sig)
  {
    v1[17] = sig;
    operator delete(sig);
  }

  std::mutex::~mutex(v3);
  v7 = v1[7];
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = *v2;
  if (*v2)
  {
    v1[4] = v8;
    operator delete(v8);
  }

  v9 = v1[2];
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  _Unwind_Resume(a1);
}

void std::vector<unsigned char>::reserve(uint64_t a1)
{
  v1 = *a1;
  if (!((*(a1 + 16) - *a1) >> 16))
  {
    v3 = *(a1 + 8) - v1;
    v4 = operator new(0x10000uLL);
    memcpy(v4, v1, v3);
    *a1 = v4;
    *(a1 + 8) = &v4[v3];
    *(a1 + 16) = v4 + 0x10000;
    if (v1)
    {

      operator delete(v1);
    }
  }
}

void telephonytransport::BaseProtocol::handleRead(telephonytransport::BaseProtocol *this, char *__src, size_t __len)
{
  v33 = *MEMORY[0x29EDCA608];
  if (__len)
  {
    v3 = __len;
    v7 = *(this + 3);
    v6 = *(this + 4);
    v8 = (this + 24);
    while (1)
    {
      if (v7 == v6)
      {
        goto LABEL_20;
      }

      v9 = v6 - v7;
      if (v6 - v7 + v3 <= 7)
      {
LABEL_23:
        v24 = *MEMORY[0x29EDCA608];

        std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v8, v6, __src, &__src[v3], v3);
        return;
      }

      if (v9 <= 7)
      {
        v10 = 8 - v9;
        v11 = &__src[8 - v9];
        std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v8, v6, __src, v11, 8 - v9);
        v3 -= v10;
        v7 = *(this + 3);
        v6 = *(this + 4);
        v9 = v6 - v7;
        __src = v11;
      }

      v12 = bswap32(*(v7 + 1)) + 8;
      v13 = v12 - v9;
      if (v12 < v9)
      {
        v16 = *(this + 1);
        v15 = *(this + 2);
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          v3 = *v16;
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        }

        else
        {
          v3 = *v16;
        }

        if (!os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_19;
        }

        LOWORD(v29) = 0;
        v17 = "Data available in buffer must not be greater than kHeaderSize + payloadLength";
        goto LABEL_17;
      }

      if (v3 < v13)
      {
        goto LABEL_23;
      }

      v14 = __src;
      __src += v13;
      std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v8, v6, v14, __src, v13);
      if (telephonytransport::BaseProtocol::processData(this, *(this + 3), *(this + 4) - *(this + 3)) != v12)
      {
        break;
      }

      v6 = *(this + 3);
      *(this + 4) = v6;
      v7 = v6;
      v3 -= v13;
      if (!v3)
      {
        goto LABEL_36;
      }
    }

    v26 = *(this + 1);
    v25 = *(this + 2);
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      v3 = *v26;
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    }

    else
    {
      v3 = *v26;
    }

    if (!os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_19;
    }

    LOWORD(v29) = 0;
    v17 = "Failed to process the message properly";
LABEL_17:
    v18 = v3;
    v19 = 2;
LABEL_18:
    _os_log_fault_impl(&dword_29808D000, v18, OS_LOG_TYPE_FAULT, v17, &v29, v19);
LABEL_19:
    while (1)
    {
      __break(1u);
LABEL_20:
      v20 = telephonytransport::BaseProtocol::processData(this, __src, v3);
      v21 = v20;
      if (v3 >= v20)
      {
        break;
      }

      v23 = *(this + 1);
      v22 = *(this + 2);
      if (v22)
      {
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        v8 = *v23;
        std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      }

      else
      {
        v8 = *v23;
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        v29 = 134218240;
        v30 = v21;
        v31 = 2048;
        v32 = v3;
        v17 = "Processed bytes cannot exceed length. Processed: %zu, Length: %zu";
        v18 = v8;
        v19 = 22;
        goto LABEL_18;
      }
    }

    if (v3 != v20)
    {
      v28 = *MEMORY[0x29EDCA608];

      std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v8, &__src[v20], &__src[v3], v3 - v20);
      return;
    }
  }

LABEL_36:
  v27 = *MEMORY[0x29EDCA608];
}

unint64_t telephonytransport::BaseProtocol::processData(telephonytransport::BaseProtocol *this, unsigned __int8 *a2, unint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  for (i = 0; i < a3; i += v6 + 8)
  {
    if (a3 - i < 8)
    {
      break;
    }

    v6 = bswap32(*(a2 + 1));
    if (a3 - i < v6 + 8)
    {
      break;
    }

    v7 = a2 + 8;
    v8 = *(this + 7);
    if (v8)
    {
      v9 = *a2;
      v10 = std::__shared_weak_count::lock(v8);
      if (v10)
      {
        v11 = v10;
        v12 = *(this + 6);
        if (v12)
        {
          (**v12)(v12, bswap32(v9), v7, v6);
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }
    }

    a2 = &v7[v6];
  }

  return i;
}

uint64_t telephonytransport::BaseProtocol::sendMessage(std::mutex *this, unsigned int a2, const PB::Base *a3)
{
  memset(v8, 170, sizeof(v8));
  PB::Writer::Writer(v8);
  (*(*a3 + 24))(a3, v8);
  v6 = telephonytransport::BaseProtocol::sendMessage(this, a2, v8[1], (LODWORD(v8[0]) - LODWORD(v8[1])));
  PB::Writer::~Writer(v8);
  return v6;
}

void sub_2980B01C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PB::Writer::~Writer(va);
  _Unwind_Resume(a1);
}

uint64_t telephonytransport::BaseProtocol::sendMessage(std::mutex *this, unsigned int a2, const unsigned __int8 *a3, size_t a4)
{
  std::mutex::lock(this + 1);
  sig = this[2].__m_.__sig;
  v9 = *this[2].__m_.__opaque - sig;
  if (a4 + 8 <= v9)
  {
    if (a4 + 8 < v9)
    {
      *this[2].__m_.__opaque = sig + a4 + 8;
    }
  }

  else
  {
    std::vector<unsigned char>::__append(&this[2], a4 + 8 - v9);
    sig = this[2].__m_.__sig;
  }

  *sig = bswap32(a2);
  *(this[2].__m_.__sig + 4) = bswap32(a4);
  memcpy((this[2].__m_.__sig + 8), a3, a4);
  v10 = *this[2].__m_.__opaque - this[2].__m_.__sig;
  v11 = (***&this[2].__m_.__opaque[16])();
  std::mutex::unlock(this + 1);
  return v11;
}

void telephonytransport::BaseProtocol::~BaseProtocol(std::mutex *this)
{
  this->__m_.__sig = &unk_2A1E9EC48;
  v2 = *&this[2].__m_.__opaque[24];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  sig = this[2].__m_.__sig;
  if (sig)
  {
    *this[2].__m_.__opaque = sig;
    operator delete(sig);
  }

  std::mutex::~mutex(this + 1);
  v4 = *&this->__m_.__opaque[48];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *&this->__m_.__opaque[16];
  if (v5)
  {
    *&this->__m_.__opaque[24] = v5;
    operator delete(v5);
  }

  v6 = *&this->__m_.__opaque[8];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

{
  this->__m_.__sig = &unk_2A1E9EC48;
  v2 = *&this[2].__m_.__opaque[24];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  sig = this[2].__m_.__sig;
  if (sig)
  {
    *this[2].__m_.__opaque = sig;
    operator delete(sig);
  }

  std::mutex::~mutex(this + 1);
  v4 = *&this->__m_.__opaque[48];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *&this->__m_.__opaque[16];
  if (v5)
  {
    *&this->__m_.__opaque[24] = v5;
    operator delete(v5);
  }

  v6 = *&this->__m_.__opaque[8];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  operator delete(this);
}

void *std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (v8 - *result >= a4)
  {
    v15 = result[1];
    v16 = v15 - v9;
    if (v15 - v9 >= a4)
    {
      v18 = a3 - __src;
      if (v18)
      {
        result = memmove(*result, __src, v18);
      }

      v14 = &v9[v18];
    }

    else
    {
      v17 = &__src[v16];
      if (v15 != v9)
      {
        result = memmove(*result, __src, v16);
        v15 = *(v7 + 8);
      }

      if (a3 != v17)
      {
        result = memmove(v15, v17, a3 - v17);
      }

      v14 = &v15[a3 - v17];
    }
  }

  else
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
    }

    if ((a4 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v10 = 2 * v8;
    if (2 * v8 <= a4)
    {
      v10 = a4;
    }

    if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    result = std::vector<unsigned char>::__vallocate[abi:ne200100](v7, v11);
    v12 = *(v7 + 8);
    v13 = a3 - __src;
    if (v13)
    {
      result = memmove(*(v7 + 8), __src, v13);
    }

    v14 = (v12 + v13);
  }

  *(v7 + 8) = v14;
  return result;
}

void std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char *,unsigned char *>(uint64_t a1, char *__dst, char *__src, char *a4, int64_t __len)
{
  if (__len < 1)
  {
    return;
  }

  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v9 - v10 < __len)
  {
    v11 = *a1;
    v12 = &v10[__len - *a1];
    if (v12 < 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v13 = (__dst - v11);
    v14 = v9 - v11;
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v15 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    if (v15)
    {
      v16 = operator new(v15);
    }

    else
    {
      v16 = 0;
    }

    memcpy(&v13[v16], __src, __len);
    v32 = v10 - __dst;
    memcpy(&v13[v16 + __len], __dst, v32);
    *(a1 + 8) = __dst;
    memcpy(v16, v11, __dst - v11);
    *a1 = v16;
    *(a1 + 8) = &v13[v16 + __len + v32];
    *(a1 + 16) = v16 + v15;
    if (v11)
    {

      operator delete(v11);
    }

    return;
  }

  v17 = v10 - __dst;
  if (v10 - __dst >= __len)
  {
    v28 = &__dst[__len];
    v29 = &v10[-__len];
    v30 = *(a1 + 8);
    if (v10 >= __len)
    {
      do
      {
        v31 = *v29++;
        *v30++ = v31;
      }

      while (v29 != v10);
    }

    *(a1 + 8) = v30;
    if (v10 != v28)
    {
      memmove(&__dst[__len], __dst, v10 - v28);
    }

    v25 = __dst;
    v26 = __src;
    v27 = __len;
    goto LABEL_27;
  }

  v19 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(*(a1 + 8), &__src[v17], a4 - &__src[v17]);
  }

  v20 = &v10[v19];
  *(a1 + 8) = &v10[v19];
  if (v17 >= 1)
  {
    v21 = &__dst[__len];
    v22 = &v10[v19];
    if (&v20[-__len] < v10)
    {
      v23 = __dst - &__src[__len];
      v24 = __dst - __src;
      do
      {
        a4[v24++] = a4[v23++];
      }

      while (&a4[v23] < v10);
      v22 = &a4[v24];
    }

    *(a1 + 8) = v22;
    if (v20 != v21)
    {
      memmove(&__dst[__len], __dst, v20 - v21);
    }

    v25 = __dst;
    v26 = __src;
    v27 = v10 - __dst;
LABEL_27:

    memmove(v25, v26, v27);
  }
}

void std::vector<unsigned char>::__append(uint64_t a1, size_t a2)
{
  v6 = a1 + 8;
  v4 = *(a1 + 8);
  v5 = *(v6 + 8);
  if (v5 - v4 >= a2)
  {
    if (a2)
    {
      v13 = &v4[a2];
      bzero(v4, a2);
      v4 = v13;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v7 = *a1;
    v8 = &v4[-*a1];
    v9 = v8 + a2;
    if ((v8 + a2) < 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - v7;
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      v12 = operator new(v11);
    }

    else
    {
      v12 = 0;
    }

    bzero(&v12[v8], a2);
    memcpy(v12, v7, v8);
    *a1 = v12;
    *(a1 + 8) = &v12[v8 + a2];
    *(a1 + 16) = &v12[v11];
    if (v7)
    {

      operator delete(v7);
    }
  }
}

void std::__shared_ptr_pointer<telephonytransport::BaseProtocol *,std::shared_ptr<telephonytransport::BaseProtocol>::__shared_ptr_default_delete<telephonytransport::BaseProtocol,telephonytransport::BaseProtocol>,std::allocator<telephonytransport::BaseProtocol>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<telephonytransport::BaseProtocol *,std::shared_ptr<telephonytransport::BaseProtocol>::__shared_ptr_default_delete<telephonytransport::BaseProtocol,telephonytransport::BaseProtocol>,std::allocator<telephonytransport::BaseProtocol>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<telephonytransport::BaseProtocol *,std::shared_ptr<telephonytransport::BaseProtocol>::__shared_ptr_default_delete<telephonytransport::BaseProtocol,telephonytransport::BaseProtocol>,std::allocator<telephonytransport::BaseProtocol>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void telephonytransport::NetworkSocketBridge::create(uint64_t *a1@<X0>, NSObject **a2@<X1>, uint64_t *a3@<X2>, NSObject **a4@<X3>, char *a5@<X4>, void *a6@<X8>)
{
  v26 = 0xAAAAAAAAAAAAAAAALL;
  v27 = 0xAAAAAAAAAAAAAAAALL;
  v11 = *a2;
  object = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  telephonytransport::NetworkSocketForwarder::create(a1, a3, &object, a5, &v26);
  if (object)
  {
    dispatch_release(object);
  }

  v23 = 0xAAAAAAAAAAAAAAAALL;
  v24 = 0xAAAAAAAAAAAAAAAALL;
  v12 = *a4;
  v22 = v12;
  if (v12)
  {
    dispatch_retain(v12);
  }

  telephonytransport::NetworkSocketForwarder::create(a3, a1, &v22, a5, &v23);
  v13 = v22;
  if (v22)
  {
    dispatch_release(v22);
  }

  v14 = v26;
  if (v26 && (v15 = v23) != 0)
  {
    *a6 = 0xAAAAAAAAAAAAAAAALL;
    a6[1] = 0xAAAAAAAAAAAAAAAALL;
    v16 = operator new(0x20uLL);
    v17 = v27;
    *v16 = v14;
    v16[1] = v17;
    v26 = 0;
    v27 = 0;
    v18 = v24;
    v16[2] = v15;
    v16[3] = v18;
    v23 = 0;
    v24 = 0;
    *a6 = v16;
    v19 = operator new(0x20uLL);
    *v19 = &unk_2A1E9ED58;
    v19[1] = 0;
    v19[2] = 0;
    v19[3] = v16;
    a6[1] = v19;
  }

  else
  {
    v20 = *telephonytransport::getDefaultOSLogHandle(v13);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *v21 = 0;
      _os_log_error_impl(&dword_29808D000, v20, OS_LOG_TYPE_ERROR, "Failed to create NetworkSocketBridge", v21, 2u);
    }

    *a6 = 0;
    a6[1] = 0;
    if (v24)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    }
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }
}

void sub_2980B0AC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, dispatch_object_t object, uint64_t a12, std::__shared_weak_count *a13, dispatch_object_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  std::default_delete<telephonytransport::SocketAndRawIPIfaceBridge>::operator()[abi:ne200100](v16);
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(a1);
}

__n128 telephonytransport::NetworkSocketBridge::NetworkSocketBridge(_OWORD *a1, uint64_t a2, __n128 *a3)
{
  *a1 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  result = *a3;
  a1[1] = *a3;
  a3->n128_u64[0] = 0;
  a3->n128_u64[1] = 0;
  return result;
}

{
  *a1 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  result = *a3;
  a1[1] = *a3;
  a3->n128_u64[0] = 0;
  a3->n128_u64[1] = 0;
  return result;
}

void std::__shared_ptr_pointer<telephonytransport::NetworkSocketBridge *,std::shared_ptr<telephonytransport::NetworkSocketBridge>::__shared_ptr_default_delete<telephonytransport::NetworkSocketBridge,telephonytransport::NetworkSocketBridge>,std::allocator<telephonytransport::NetworkSocketBridge>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<telephonytransport::NetworkSocketBridge *,std::shared_ptr<telephonytransport::NetworkSocketBridge>::__shared_ptr_default_delete<telephonytransport::NetworkSocketBridge,telephonytransport::NetworkSocketBridge>,std::allocator<telephonytransport::NetworkSocketBridge>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t PB::TextFormatter::format(PB::TextFormatter *this, const char *a2)
{
  return MEMORY[0x2A1C68DC0](this, a2);
}

{
  return MEMORY[0x2A1C68DC8](this, a2);
}

{
  return MEMORY[0x2A1C68DD8](this, a2);
}

uint64_t PB::Writer::writeVarInt(PB::Writer *this)
{
  return MEMORY[0x2A1C68E30](this);
}

{
  return MEMORY[0x2A1C68E38](this);
}

{
  return MEMORY[0x2A1C68E48](this);
}

void operator delete(void *__p)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}