uint64_t CMMsl::AccessoryPPG::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 224);
  if ((v4 & 2) != 0)
  {
    this = PB::Writer::write(a2, *(this + 208), 1u);
    v4 = *(v3 + 224);
    if ((v4 & 1) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

LABEL_33:
      this = PB::Writer::writeVarInt(a2, *(v3 + 220), 3u);
      if ((*(v3 + 224) & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((*(this + 224) & 1) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::writeVarInt(a2, *(v3 + 200), 2u);
  v4 = *(v3 + 224);
  if ((v4 & 8) != 0)
  {
    goto LABEL_33;
  }

LABEL_4:
  if ((v4 & 4) != 0)
  {
LABEL_5:
    this = PB::Writer::writeVarInt(a2, *(v3 + 216), 4u);
  }

LABEL_6:
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    this = PB::Writer::writeVarInt(a2, v7, 5u);
  }

  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  while (v8 != v9)
  {
    v10 = *v8++;
    this = PB::Writer::writeVarInt(a2, v10, 6u);
  }

  v11 = *(v3 + 56);
  v12 = *(v3 + 64);
  while (v11 != v12)
  {
    v13 = *v11++;
    this = PB::Writer::writeVarInt(a2, v13, 7u);
  }

  v14 = *(v3 + 80);
  v15 = *(v3 + 88);
  while (v14 != v15)
  {
    v16 = *v14++;
    this = PB::Writer::writeVarInt(a2, v16, 8u);
  }

  v17 = *(v3 + 128);
  v18 = *(v3 + 136);
  while (v17 != v18)
  {
    v19 = *v17++;
    this = PB::Writer::writeVarInt(a2, v19, 9u);
  }

  v20 = *(v3 + 152);
  v21 = *(v3 + 160);
  while (v20 != v21)
  {
    v22 = *v20++;
    this = PB::Writer::writeVarInt(a2, v22, 0xAu);
  }

  v23 = *(v3 + 176);
  v24 = *(v3 + 184);
  while (v23 != v24)
  {
    v25 = *v23++;
    this = PB::Writer::writeVarInt(a2, v25, 0xBu);
  }

  v27 = *(v3 + 104);
  v26 = *(v3 + 112);
  while (v27 != v26)
  {
    v28 = *v27++;
    this = PB::Writer::writeVarInt(a2, v28, 0xCu);
  }

  return this;
}

BOOL CMMsl::AccessoryPPG::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 224);
  if ((*(a1 + 224) & 2) != 0)
  {
    if ((*(a2 + 224) & 2) == 0 || *(a1 + 208) != *(a2 + 208))
    {
      return 0;
    }
  }

  else if ((*(a2 + 224) & 2) != 0)
  {
    return 0;
  }

  if (*(a1 + 224))
  {
    if ((*(a2 + 224) & 1) == 0 || *(a1 + 200) != *(a2 + 200))
    {
      return 0;
    }
  }

  else if (*(a2 + 224))
  {
    return 0;
  }

  if ((*(a1 + 224) & 8) != 0)
  {
    if ((*(a2 + 224) & 8) == 0 || *(a1 + 220) != *(a2 + 220))
    {
      return 0;
    }
  }

  else if ((*(a2 + 224) & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 224) & 4) != 0)
  {
    if ((*(a2 + 224) & 4) == 0 || *(a1 + 216) != *(a2 + 216))
    {
      return 0;
    }
  }

  else if ((*(a2 + 224) & 4) != 0)
  {
    return 0;
  }

  if (!sub_1000775B0(a1 + 8, a2 + 8) || !sub_1000775B0(a1 + 32, a2 + 32) || !sub_1000775B0(a1 + 56, a2 + 56) || !sub_1000775B0(a1 + 80, a2 + 80) || !sub_1000775B0(a1 + 128, a2 + 128) || !sub_1000775B0(a1 + 152, a2 + 152) || !sub_1000775B0(a1 + 176, a2 + 176))
  {
    return 0;
  }

  return sub_1000775B0(a1 + 104, a2 + 104);
}

BOOL sub_1000775B0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v4 = *(a1 + 8) - v2;
  v5 = *a2;
  return v4 == *(a2 + 8) - v5 && memcmp(v2, v5, v4) == 0;
}

uint64_t CMMsl::AccessoryPPG::hash_value(CMMsl::AccessoryPPG *this)
{
  if ((*(this + 224) & 2) != 0)
  {
    v2 = *(this + 26);
    if (v2 == 0.0)
    {
      v2 = 0.0;
    }

    if (*(this + 224))
    {
LABEL_3:
      v3 = *(this + 25);
      if ((*(this + 224) & 8) != 0)
      {
        goto LABEL_4;
      }

LABEL_10:
      v4 = 0;
      if ((*(this + 224) & 4) != 0)
      {
        goto LABEL_5;
      }

LABEL_11:
      v5 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v2 = 0.0;
    if (*(this + 224))
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*(this + 224) & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  v4 = *(this + 55);
  if ((*(this + 224) & 4) == 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  v5 = *(this + 54);
LABEL_12:
  v6 = v3 ^ *&v2 ^ v4 ^ v5;
  v7 = *(this + 1);
  v8 = *(this + 2);
  v9 = v6 ^ PBHashBytes();
  v10 = *(this + 4);
  v11 = *(this + 5);
  v12 = PBHashBytes();
  v13 = *(this + 7);
  v14 = *(this + 8);
  v15 = v9 ^ v12 ^ PBHashBytes();
  v16 = *(this + 10);
  v17 = *(this + 11);
  v18 = PBHashBytes();
  v19 = *(this + 16);
  v20 = *(this + 17);
  v21 = v18 ^ PBHashBytes();
  v22 = *(this + 19);
  v23 = *(this + 20);
  v24 = v15 ^ v21 ^ PBHashBytes();
  v25 = *(this + 22);
  v26 = *(this + 23);
  v27 = PBHashBytes();
  v28 = *(this + 13);
  v29 = *(this + 14);
  return v24 ^ v27 ^ PBHashBytes();
}

uint64_t CMMsl::AccessoryProx::AccessoryProx(uint64_t this)
{
  *this = off_10041CC18;
  *(this + 56) = 0;
  return this;
}

{
  *this = off_10041CC18;
  *(this + 56) = 0;
  return this;
}

void CMMsl::AccessoryProx::~AccessoryProx(CMMsl::AccessoryProx *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::AccessoryProx::AccessoryProx(uint64_t this, const CMMsl::AccessoryProx *a2)
{
  *this = off_10041CC18;
  *(this + 56) = 0;
  v2 = *(a2 + 28);
  if ((v2 & 4) != 0)
  {
    v4 = *(a2 + 6);
    v3 = 4;
    *(this + 56) = 4;
    *(this + 24) = v4;
    v2 = *(a2 + 28);
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x20) != 0)
  {
LABEL_5:
    v5 = *(a2 + 9);
    v3 |= 0x20u;
    *(this + 56) = v3;
    *(this + 36) = v5;
    v2 = *(a2 + 28);
  }

LABEL_6:
  if ((v2 & 0x200) != 0)
  {
    v6 = *(a2 + 13);
    v3 |= 0x200u;
    *(this + 56) = v3;
    *(this + 52) = v6;
    v2 = *(a2 + 28);
    if ((v2 & 0x10) == 0)
    {
LABEL_8:
      if ((v2 & 2) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }
  }

  else if ((v2 & 0x10) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 8);
  v3 |= 0x10u;
  *(this + 56) = v3;
  *(this + 32) = v7;
  v2 = *(a2 + 28);
  if ((v2 & 2) == 0)
  {
LABEL_9:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

LABEL_17:
  v8 = *(a2 + 2);
  v3 |= 2u;
  *(this + 56) = v3;
  *(this + 16) = v8;
  v2 = *(a2 + 28);
  if ((v2 & 0x100) == 0)
  {
LABEL_10:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

LABEL_18:
  v9 = *(a2 + 12);
  v3 |= 0x100u;
  *(this + 56) = v3;
  *(this + 48) = v9;
  v2 = *(a2 + 28);
  if ((v2 & 0x80) == 0)
  {
LABEL_11:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

LABEL_19:
  v10 = *(a2 + 11);
  v3 |= 0x80u;
  *(this + 56) = v3;
  *(this + 44) = v10;
  v2 = *(a2 + 28);
  if ((v2 & 0x40) == 0)
  {
LABEL_12:
    if ((v2 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_21;
  }

LABEL_20:
  v11 = *(a2 + 10);
  v3 |= 0x40u;
  *(this + 56) = v3;
  *(this + 40) = v11;
  v2 = *(a2 + 28);
  if ((v2 & 1) == 0)
  {
LABEL_13:
    if ((v2 & 8) == 0)
    {
      return this;
    }

LABEL_22:
    v13 = *(a2 + 7);
    *(this + 56) = v3 | 8;
    *(this + 28) = v13;
    return this;
  }

LABEL_21:
  v12 = *(a2 + 1);
  v3 |= 1u;
  *(this + 56) = v3;
  *(this + 8) = v12;
  if ((*(a2 + 28) & 8) != 0)
  {
    goto LABEL_22;
  }

  return this;
}

uint64_t CMMsl::AccessoryProx::operator=(uint64_t a1, const CMMsl::AccessoryProx *a2)
{
  if (a1 != a2)
  {
    CMMsl::AccessoryProx::AccessoryProx(&v14, a2);
    v3 = *(a1 + 56);
    *(a1 + 56) = v24;
    v24 = v3;
    v4 = *(a1 + 48);
    *(a1 + 48) = v22;
    v22 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v15;
    v15 = v5;
    v6 = *(a1 + 28);
    LODWORD(v5) = *(a1 + 32);
    v7 = v19;
    *(a1 + 28) = v18;
    *(a1 + 32) = v7;
    v8 = *(a1 + 24);
    *(a1 + 24) = v17;
    v17 = v8;
    v9 = *(a1 + 36);
    *(a1 + 36) = v20;
    v20 = v9;
    v10 = *(a1 + 52);
    *(a1 + 52) = v23;
    v23 = v10;
    v11 = *(a1 + 16);
    *(a1 + 16) = v16;
    v16 = v11;
    v12 = *(a1 + 40);
    *(a1 + 40) = v21;
    v21 = v12;
    v18 = v6;
    v19 = v5;
    PB::Base::~Base(&v14);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::AccessoryProx *a2, CMMsl::AccessoryProx *a3)
{
  v3 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v3;
  v4 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v4;
  v5 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v5;
  v6 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v6;
  v7 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v7;
  result = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = result;
  v9 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v9;
  v10 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v10;
  v11 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v11;
  v12 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v12;
  LODWORD(v12) = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v12;
  return result;
}

double CMMsl::AccessoryProx::AccessoryProx(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041CC18;
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 28) = *(a2 + 28);
  return result;
}

uint64_t CMMsl::AccessoryProx::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::AccessoryProx::AccessoryProx(&v14, a2);
    v3 = *(a1 + 56);
    *(a1 + 56) = v24;
    v24 = v3;
    v4 = *(a1 + 48);
    *(a1 + 48) = v22;
    v22 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v15;
    v15 = v5;
    v6 = *(a1 + 28);
    LODWORD(v5) = *(a1 + 32);
    v7 = v19;
    *(a1 + 28) = v18;
    *(a1 + 32) = v7;
    v8 = *(a1 + 24);
    *(a1 + 24) = v17;
    v17 = v8;
    v9 = *(a1 + 36);
    *(a1 + 36) = v20;
    v20 = v9;
    v10 = *(a1 + 52);
    *(a1 + 52) = v23;
    v23 = v10;
    v11 = *(a1 + 16);
    *(a1 + 16) = v16;
    v16 = v11;
    v12 = *(a1 + 40);
    *(a1 + 40) = v21;
    v21 = v12;
    v18 = v6;
    v19 = v5;
    PB::Base::~Base(&v14);
  }

  return a1;
}

uint64_t CMMsl::AccessoryProx::formatText(CMMsl::AccessoryProx *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 28);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(a2, "base", *(this + 6));
    v5 = *(this + 28);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "broken", *(this + 7));
  v5 = *(this + 28);
  if ((v5 & 0x10) == 0)
  {
LABEL_4:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  PB::TextFormatter::format(a2, "location", *(this + 8));
  v5 = *(this + 28);
  if ((v5 & 0x20) == 0)
  {
LABEL_5:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  PB::TextFormatter::format(a2, "peak", *(this + 9));
  v5 = *(this + 28);
  if ((v5 & 0x40) == 0)
  {
LABEL_6:
    if ((v5 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  PB::TextFormatter::format(a2, "sensor", *(this + 10));
  v5 = *(this + 28);
  if ((v5 & 1) == 0)
  {
LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(a2, "sensorTime", *(this + 1));
  v5 = *(this + 28);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(a2, "sequenceNumber", *(this + 11));
  v5 = *(this + 28);
  if ((v5 & 0x100) == 0)
  {
LABEL_9:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(a2, "status", *(this + 12));
  v5 = *(this + 28);
  if ((v5 & 0x200) == 0)
  {
LABEL_10:
    if ((v5 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  PB::TextFormatter::format(a2, "temp", *(this + 13));
  if ((*(this + 28) & 2) != 0)
  {
LABEL_11:
    PB::TextFormatter::format(a2, "timestamp", *(this + 2));
  }

LABEL_12:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::AccessoryProx::readFrom(CMMsl::AccessoryProx *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            goto LABEL_176;
          }

          v21 = *v19;
          *(a2 + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
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
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) > 5)
      {
        if (v22 <= 7)
        {
          if (v22 == 6)
          {
            *(this + 28) |= 0x100u;
            v39 = *(a2 + 1);
            v2 = *(a2 + 2);
            v40 = *a2;
            if (v39 > 0xFFFFFFFFFFFFFFF5 || v39 + 10 > v2)
            {
              v78 = 0;
              v79 = 0;
              v43 = 0;
              if (v2 <= v39)
              {
                v2 = *(a2 + 1);
              }

              v80 = v2 - v39;
              v81 = (v40 + v39);
              v82 = v39 + 1;
              while (1)
              {
                if (!v80)
                {
                  LODWORD(v43) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_155;
                }

                v83 = v82;
                v84 = *v81;
                *(a2 + 1) = v83;
                v43 |= (v84 & 0x7F) << v78;
                if ((v84 & 0x80) == 0)
                {
                  break;
                }

                v78 += 7;
                --v80;
                ++v81;
                v82 = v83 + 1;
                v14 = v79++ > 8;
                if (v14)
                {
                  LODWORD(v43) = 0;
                  goto LABEL_154;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v43) = 0;
              }

LABEL_154:
              v2 = v83;
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
                v2 = v45;
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

LABEL_155:
            *(this + 12) = v43;
            goto LABEL_172;
          }

          if (v22 == 7)
          {
            *(this + 28) |= 0x80u;
            v31 = *(a2 + 1);
            v2 = *(a2 + 2);
            v32 = *a2;
            if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
            {
              v71 = 0;
              v72 = 0;
              v35 = 0;
              if (v2 <= v31)
              {
                v2 = *(a2 + 1);
              }

              v73 = v2 - v31;
              v74 = (v32 + v31);
              v75 = v31 + 1;
              while (1)
              {
                if (!v73)
                {
                  LODWORD(v35) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_151;
                }

                v76 = v75;
                v77 = *v74;
                *(a2 + 1) = v76;
                v35 |= (v77 & 0x7F) << v71;
                if ((v77 & 0x80) == 0)
                {
                  break;
                }

                v71 += 7;
                --v73;
                ++v74;
                v75 = v76 + 1;
                v14 = v72++ > 8;
                if (v14)
                {
                  LODWORD(v35) = 0;
                  goto LABEL_150;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v35) = 0;
              }

LABEL_150:
              v2 = v76;
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
                v2 = v37;
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

LABEL_151:
            *(this + 11) = v35;
            goto LABEL_172;
          }
        }

        else
        {
          switch(v22)
          {
            case 8:
              *(this + 28) |= 0x40u;
              v47 = *(a2 + 1);
              v2 = *(a2 + 2);
              v48 = *a2;
              if (v47 > 0xFFFFFFFFFFFFFFF5 || v47 + 10 > v2)
              {
                v85 = 0;
                v86 = 0;
                v51 = 0;
                if (v2 <= v47)
                {
                  v2 = *(a2 + 1);
                }

                v87 = v2 - v47;
                v88 = (v48 + v47);
                v89 = v47 + 1;
                while (1)
                {
                  if (!v87)
                  {
                    LODWORD(v51) = 0;
                    *(a2 + 24) = 1;
                    goto LABEL_159;
                  }

                  v90 = v89;
                  v91 = *v88;
                  *(a2 + 1) = v90;
                  v51 |= (v91 & 0x7F) << v85;
                  if ((v91 & 0x80) == 0)
                  {
                    break;
                  }

                  v85 += 7;
                  --v87;
                  ++v88;
                  v89 = v90 + 1;
                  v14 = v86++ > 8;
                  if (v14)
                  {
                    LODWORD(v51) = 0;
                    goto LABEL_158;
                  }
                }

                if (*(a2 + 24))
                {
                  LODWORD(v51) = 0;
                }

LABEL_158:
                v2 = v90;
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
                  v2 = v53;
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

LABEL_159:
              *(this + 10) = v51;
              goto LABEL_172;
            case 9:
              *(this + 28) |= 0x10u;
              v63 = *(a2 + 1);
              v2 = *(a2 + 2);
              v64 = *a2;
              if (v63 > 0xFFFFFFFFFFFFFFF5 || v63 + 10 > v2)
              {
                v106 = 0;
                v107 = 0;
                v67 = 0;
                if (v2 <= v63)
                {
                  v2 = *(a2 + 1);
                }

                v108 = v2 - v63;
                v109 = (v64 + v63);
                v110 = v63 + 1;
                while (1)
                {
                  if (!v108)
                  {
                    LODWORD(v67) = 0;
                    *(a2 + 24) = 1;
                    goto LABEL_171;
                  }

                  v111 = v110;
                  v112 = *v109;
                  *(a2 + 1) = v111;
                  v67 |= (v112 & 0x7F) << v106;
                  if ((v112 & 0x80) == 0)
                  {
                    break;
                  }

                  v106 += 7;
                  --v108;
                  ++v109;
                  v110 = v111 + 1;
                  v14 = v107++ > 8;
                  if (v14)
                  {
                    LODWORD(v67) = 0;
                    goto LABEL_170;
                  }
                }

                if (*(a2 + 24))
                {
                  LODWORD(v67) = 0;
                }

LABEL_170:
                v2 = v111;
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
                  v2 = v69;
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

LABEL_171:
              *(this + 8) = v67;
              goto LABEL_172;
            case 0xA:
              *(this + 28) |= 1u;
              v23 = *(a2 + 1);
              v2 = *(a2 + 2);
              v24 = *a2;
              if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
              {
                v92 = 0;
                v93 = 0;
                v27 = 0;
                if (v2 <= v23)
                {
                  v2 = *(a2 + 1);
                }

                v94 = v2 - v23;
                v95 = (v24 + v23);
                v96 = v23 + 1;
                while (1)
                {
                  if (!v94)
                  {
                    v27 = 0;
                    *(a2 + 24) = 1;
                    goto LABEL_163;
                  }

                  v97 = v96;
                  v98 = *v95;
                  *(a2 + 1) = v97;
                  v27 |= (v98 & 0x7F) << v92;
                  if ((v98 & 0x80) == 0)
                  {
                    break;
                  }

                  v92 += 7;
                  --v94;
                  ++v95;
                  v96 = v97 + 1;
                  v14 = v93++ > 8;
                  if (v14)
                  {
                    v27 = 0;
                    goto LABEL_162;
                  }
                }

                if (*(a2 + 24))
                {
                  v27 = 0;
                }

LABEL_162:
                v2 = v97;
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
                    v27 = 0;
                    break;
                  }
                }
              }

LABEL_163:
              *(this + 1) = v27;
              goto LABEL_172;
          }
        }
      }

      else if (v22 <= 2)
      {
        if (v22 == 1)
        {
          *(this + 28) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
LABEL_67:
            *(a2 + 24) = 1;
            goto LABEL_172;
          }

          *(this + 6) = *(*a2 + v2);
          goto LABEL_140;
        }

        if (v22 == 2)
        {
          *(this + 28) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_67;
          }

          *(this + 9) = *(*a2 + v2);
          goto LABEL_140;
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            *(this + 28) |= 0x200u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
              goto LABEL_67;
            }

            *(this + 13) = *(*a2 + v2);
LABEL_140:
            v2 = *(a2 + 1) + 4;
LABEL_141:
            *(a2 + 1) = v2;
            goto LABEL_172;
          case 4:
            *(this + 28) |= 8u;
            v55 = *(a2 + 1);
            v2 = *(a2 + 2);
            v56 = *a2;
            if (v55 > 0xFFFFFFFFFFFFFFF5 || v55 + 10 > v2)
            {
              v99 = 0;
              v100 = 0;
              v59 = 0;
              if (v2 <= v55)
              {
                v2 = *(a2 + 1);
              }

              v101 = v2 - v55;
              v102 = (v56 + v55);
              v103 = v55 + 1;
              while (1)
              {
                if (!v101)
                {
                  LODWORD(v59) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_167;
                }

                v104 = v103;
                v105 = *v102;
                *(a2 + 1) = v104;
                v59 |= (v105 & 0x7F) << v99;
                if ((v105 & 0x80) == 0)
                {
                  break;
                }

                v99 += 7;
                --v101;
                ++v102;
                v103 = v104 + 1;
                v14 = v100++ > 8;
                if (v14)
                {
                  LODWORD(v59) = 0;
                  goto LABEL_166;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v59) = 0;
              }

LABEL_166:
              v2 = v104;
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
                v2 = v61;
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

LABEL_167:
            *(this + 7) = v59;
            goto LABEL_172;
          case 5:
            *(this + 28) |= 2u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
              goto LABEL_67;
            }

            *(this + 2) = *(*a2 + v2);
            v2 = *(a2 + 1) + 8;
            goto LABEL_141;
        }
      }

      if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
      {
        v113 = 0;
        return v113 & 1;
      }

      v2 = *(a2 + 1);
LABEL_172:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_176:
  v113 = v4 ^ 1;
  return v113 & 1;
}

uint64_t CMMsl::AccessoryProx::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 56);
  if ((v4 & 4) != 0)
  {
    this = PB::Writer::write(a2, *(this + 24), 1u);
    v4 = *(v3 + 56);
    if ((v4 & 0x20) == 0)
    {
LABEL_3:
      if ((v4 & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v4 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 36), 2u);
  v4 = *(v3 + 56);
  if ((v4 & 0x200) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = PB::Writer::write(a2, *(v3 + 52), 3u);
  v4 = *(v3 + 56);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  this = PB::Writer::writeVarInt(a2, *(v3 + 28), 4u);
  v4 = *(v3 + 56);
  if ((v4 & 2) == 0)
  {
LABEL_6:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = PB::Writer::write(a2, *(v3 + 16), 5u);
  v4 = *(v3 + 56);
  if ((v4 & 0x100) == 0)
  {
LABEL_7:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = PB::Writer::writeVarInt(a2, *(v3 + 48), 6u);
  v4 = *(v3 + 56);
  if ((v4 & 0x80) == 0)
  {
LABEL_8:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = PB::Writer::writeVarInt(a2, *(v3 + 44), 7u);
  v4 = *(v3 + 56);
  if ((v4 & 0x40) == 0)
  {
LABEL_9:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    this = PB::Writer::writeVarInt(a2, *(v3 + 32), 9u);
    if ((*(v3 + 56) & 1) == 0)
    {
      return this;
    }

    goto LABEL_21;
  }

LABEL_19:
  this = PB::Writer::writeVarInt(a2, *(v3 + 40), 8u);
  v4 = *(v3 + 56);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((v4 & 1) == 0)
  {
    return this;
  }

LABEL_21:
  v5 = *(v3 + 8);

  return PB::Writer::writeVarInt(a2, v5, 0xAu);
}

BOOL CMMsl::AccessoryProx::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  v3 = *(a2 + 56);
  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 36) != *(a2 + 36))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  if ((*(a1 + 56) & 0x200) != 0)
  {
    if ((*(a2 + 56) & 0x200) == 0 || *(a1 + 52) != *(a2 + 52))
    {
      return 0;
    }
  }

  else if ((*(a2 + 56) & 0x200) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if ((v2 & 2) != 0)
  {
    if ((v3 & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((v3 & 2) != 0)
  {
    return 0;
  }

  if ((*(a1 + 56) & 0x100) != 0)
  {
    if ((*(a2 + 56) & 0x100) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((*(a2 + 56) & 0x100) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 44) != *(a2 + 44))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if (v2)
  {
    if ((v3 & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  v4 = (v3 & 8) == 0;
  if ((v2 & 8) != 0)
  {
    return (v3 & 8) != 0 && *(a1 + 28) == *(a2 + 28);
  }

  return v4;
}

uint64_t CMMsl::AccessoryProx::hash_value(CMMsl::AccessoryProx *this)
{
  v1 = *(this + 28);
  if ((v1 & 4) == 0)
  {
    v2 = 0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_3;
    }

LABEL_21:
    v4 = 0;
    if ((*(this + 28) & 0x200) != 0)
    {
      goto LABEL_6;
    }

LABEL_22:
    v6 = 0;
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

  v14 = *(this + 6);
  v2 = LODWORD(v14);
  if (v14 == 0.0)
  {
    v2 = 0;
  }

  if ((v1 & 0x20) == 0)
  {
    goto LABEL_21;
  }

LABEL_3:
  v3 = *(this + 9);
  v4 = LODWORD(v3);
  if (v3 == 0.0)
  {
    v4 = 0;
  }

  if ((*(this + 28) & 0x200) == 0)
  {
    goto LABEL_22;
  }

LABEL_6:
  v5 = *(this + 13);
  v6 = LODWORD(v5);
  if (v5 == 0.0)
  {
    v6 = 0;
  }

  if ((v1 & 0x10) != 0)
  {
LABEL_9:
    v7 = *(this + 8);
    if ((v1 & 2) != 0)
    {
      goto LABEL_10;
    }

LABEL_24:
    v8 = 0.0;
    if ((*(this + 28) & 0x100) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_23:
  v7 = 0;
  if ((v1 & 2) == 0)
  {
    goto LABEL_24;
  }

LABEL_10:
  v8 = *(this + 2);
  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  if ((*(this + 28) & 0x100) != 0)
  {
LABEL_13:
    v9 = *(this + 12);
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_26;
  }

LABEL_25:
  v9 = 0;
  if ((v1 & 0x80) != 0)
  {
LABEL_14:
    v10 = *(this + 11);
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_27;
  }

LABEL_26:
  v10 = 0;
  if ((v1 & 0x40) != 0)
  {
LABEL_15:
    v11 = *(this + 10);
    if (v1)
    {
      goto LABEL_16;
    }

LABEL_28:
    v12 = 0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_17;
    }

LABEL_29:
    v13 = 0;
    return v4 ^ v2 ^ v6 ^ v7 ^ *&v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13;
  }

LABEL_27:
  v11 = 0;
  if ((v1 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_16:
  v12 = *(this + 1);
  if ((v1 & 8) == 0)
  {
    goto LABEL_29;
  }

LABEL_17:
  v13 = *(this + 7);
  return v4 ^ v2 ^ v6 ^ v7 ^ *&v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13;
}

double CMMsl::AccessoryProxSensorDrop::AccessoryProxSensorDrop(CMMsl::AccessoryProxSensorDrop *this)
{
  *this = off_10041CC50;
  *(this + 26) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  return result;
}

{
  *this = off_10041CC50;
  *(this + 26) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  return result;
}

void CMMsl::AccessoryProxSensorDrop::~AccessoryProxSensorDrop(CMMsl::AccessoryProxSensorDrop *this)
{
  *this = off_10041CC50;
  v4 = (this + 56);
  sub_1002A2E24(&v4);
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::AccessoryProxSensorDrop::~AccessoryProxSensorDrop(this);

  operator delete();
}

CMMsl::AccessoryProxSensorDrop *CMMsl::AccessoryProxSensorDrop::AccessoryProxSensorDrop(CMMsl::AccessoryProxSensorDrop *this, const CMMsl::AccessoryProxSensorDrop *a2)
{
  *(this + 8) = 0u;
  *(this + 56) = 0u;
  *this = off_10041CC50;
  *(this + 26) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 9) = 0;
  if ((*(a2 + 104) & 8) != 0)
  {
    v5 = *(a2 + 23);
    *(this + 104) = 8;
    *(this + 23) = v5;
    v4 = 12;
    if ((*(a2 + 104) & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v4 = 4;
  if ((*(a2 + 104) & 4) != 0)
  {
LABEL_5:
    v6 = *(a2 + 22);
    *(this + 104) = v4;
    *(this + 22) = v6;
  }

LABEL_6:
  v7 = *(a2 + 7);
  if (v7 != *(a2 + 8))
  {
    v8 = *v7;
    sub_100078C7C();
  }

  if (this != a2)
  {
    sub_100035D1C(this + 1, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 2);
    sub_100035D1C(this + 4, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 2);
  }

  v9 = *(a2 + 104);
  if (v9)
  {
    v12 = *(a2 + 20);
    *(this + 104) |= 1u;
    *(this + 20) = v12;
    v9 = *(a2 + 104);
    if ((v9 & 0x10) == 0)
    {
LABEL_12:
      if ((v9 & 2) == 0)
      {
        goto LABEL_13;
      }

LABEL_18:
      v14 = *(a2 + 21);
      *(this + 104) |= 2u;
      *(this + 21) = v14;
      if ((*(a2 + 104) & 0x20) == 0)
      {
        return this;
      }

      goto LABEL_14;
    }
  }

  else if ((*(a2 + 104) & 0x10) == 0)
  {
    goto LABEL_12;
  }

  v13 = *(a2 + 24);
  *(this + 104) |= 0x10u;
  *(this + 24) = v13;
  v9 = *(a2 + 104);
  if ((v9 & 2) != 0)
  {
    goto LABEL_18;
  }

LABEL_13:
  if ((v9 & 0x20) != 0)
  {
LABEL_14:
    v10 = *(a2 + 25);
    *(this + 104) |= 0x20u;
    *(this + 25) = v10;
  }

  return this;
}

uint64_t CMMsl::AccessoryProxSensorDrop::operator=(uint64_t a1, const CMMsl::AccessoryProxSensorDrop *a2)
{
  if (a1 != a2)
  {
    CMMsl::AccessoryProxSensorDrop::AccessoryProxSensorDrop(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::AccessoryProxSensorDrop::~AccessoryProxSensorDrop(v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::AccessoryProxSensorDrop *a2, CMMsl::AccessoryProxSensorDrop *a3)
{
  v3 = *(this + 104);
  *(this + 104) = *(a2 + 26);
  *(a2 + 26) = v3;
  v4 = *(this + 92);
  *(this + 92) = *(a2 + 23);
  *(a2 + 23) = v4;
  v5 = *(this + 88);
  *(this + 88) = *(a2 + 22);
  *(a2 + 22) = v5;
  v6 = *(this + 56);
  *(this + 56) = *(a2 + 7);
  *(a2 + 7) = v6;
  v7 = *(this + 64);
  *(this + 64) = *(a2 + 8);
  *(a2 + 8) = v7;
  v8 = *(this + 72);
  *(this + 72) = *(a2 + 9);
  *(a2 + 9) = v8;
  v9 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v9;
  v10 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v10;
  v11 = *(this + 24);
  *(this + 24) = *(a2 + 3);
  *(a2 + 3) = v11;
  v12 = *(this + 32);
  *(this + 32) = *(a2 + 4);
  *(a2 + 4) = v12;
  v13 = *(this + 40);
  *(this + 40) = *(a2 + 5);
  *(a2 + 5) = v13;
  v14 = *(this + 48);
  *(this + 48) = *(a2 + 6);
  *(a2 + 6) = v14;
  LODWORD(v14) = *(this + 80);
  *(this + 80) = *(a2 + 20);
  *(a2 + 20) = v14;
  LODWORD(v14) = *(this + 96);
  *(this + 96) = *(a2 + 24);
  *(a2 + 24) = v14;
  LODWORD(v14) = *(this + 84);
  *(this + 84) = *(a2 + 21);
  *(a2 + 21) = v14;
  LODWORD(v14) = *(this + 100);
  *(this + 100) = *(a2 + 25);
  *(a2 + 25) = v14;
  return this;
}

uint64_t CMMsl::AccessoryProxSensorDrop::AccessoryProxSensorDrop(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041CC50;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 8) = 0u;
  v4 = a1 + 8;
  *(a1 + 56) = 0u;
  v5 = (a1 + 56);
  *(a1 + 104) = *(a2 + 104);
  *(a2 + 104) = 0;
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 88) = *(a2 + 88);
  sub_1002A2EE4((a1 + 56));
  *v5 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  sub_1002A2DD0(v4, (a2 + 8));
  sub_1002A2DD0(a1 + 32, (a2 + 32));
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 100) = *(a2 + 100);
  return a1;
}

uint64_t CMMsl::AccessoryProxSensorDrop::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::AccessoryProxSensorDrop::AccessoryProxSensorDrop(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::AccessoryProxSensorDrop::~AccessoryProxSensorDrop(v5);
  }

  return a1;
}

uint64_t CMMsl::AccessoryProxSensorDrop::formatText(CMMsl::AccessoryProxSensorDrop *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 104);
  if (v5)
  {
    PB::TextFormatter::format(a2, "conchaDropped", *(this + 20));
    v5 = *(this + 104);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((*(this + 104) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "conchaRecovered", *(this + 21));
  v5 = *(this + 104);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_21:
  PB::TextFormatter::format(a2, "iedState", *(this + 22));
  if ((*(this + 104) & 8) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(a2, "location", *(this + 23));
  }

LABEL_6:
  v6 = *(this + 1);
  v7 = *(this + 2);
  while (v6 != v7)
  {
    v8 = *v6++;
    PB::TextFormatter::format(a2, "mean", v8);
  }

  v9 = *(this + 7);
  v10 = *(this + 8);
  while (v9 != v10)
  {
    v11 = *v9++;
    (*(*v11 + 32))(v11, a2, "optical");
  }

  v12 = *(this + 104);
  if ((v12 & 0x10) != 0)
  {
    PB::TextFormatter::format(a2, "tragusDropped", *(this + 24));
    v12 = *(this + 104);
  }

  if ((v12 & 0x20) != 0)
  {
    PB::TextFormatter::format(a2, "tragusRecovered", *(this + 25));
  }

  v13 = *(this + 4);
  v14 = *(this + 5);
  while (v13 != v14)
  {
    v15 = *v13++;
    PB::TextFormatter::format(a2, "variance", v15);
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::AccessoryProxSensorDrop::readFrom(CMMsl::AccessoryProxSensorDrop *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (v18)
        {
          v21 = *v19;
          *(a2 + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            if (v4)
            {
              v10 = 0;
            }

            goto LABEL_21;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
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
          goto LABEL_18;
        }
      }

LABEL_21:
      v22 = v10 & 7;
      if (v4 & 1 | (v22 == 4))
      {
        break;
      }

      v23 = v10 >> 3;
      if ((v10 >> 3) <= 4)
      {
        if (v23 > 2)
        {
          if (v23 == 3)
          {
            sub_100079D8C();
          }

          if (v23 == 4)
          {
            if (v22 != 2)
            {
              v117 = *(this + 2);
              v116 = *(this + 3);
              if (v117 >= v116)
              {
                v151 = *(this + 1);
                v152 = v117 - v151;
                v153 = (v117 - v151) >> 2;
                v154 = v153 + 1;
                if ((v153 + 1) >> 62)
                {
                  goto LABEL_230;
                }

                v155 = v116 - v151;
                if (v155 >> 1 > v154)
                {
                  v154 = v155 >> 1;
                }

                if (v155 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v156 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v156 = v154;
                }

                if (v156)
                {
                  sub_10002290C(this + 8, v156);
                }

                v163 = (v117 - v151) >> 2;
                v164 = (4 * v153);
                v165 = (4 * v153 - 4 * v163);
                *v164 = 0;
                v118 = v164 + 1;
                memcpy(v165, v151, v152);
                v166 = *(this + 1);
                *(this + 1) = v165;
                *(this + 2) = v118;
                *(this + 3) = 0;
                if (v166)
                {
                  operator delete(v166);
                }
              }

              else
              {
                *v117 = 0;
                v118 = v117 + 4;
              }

              *(this + 2) = v118;
LABEL_219:
              v171 = *(a2 + 1);
              if (v171 <= 0xFFFFFFFFFFFFFFFBLL && v171 + 4 <= *(a2 + 2))
              {
                *(v118 - 1) = *(*a2 + v171);
                *(a2 + 1) += 4;
              }

              else
              {
                *(a2 + 24) = 1;
              }

              goto LABEL_223;
            }

            if (PB::Reader::placeMark())
            {
              goto LABEL_229;
            }

            v42 = *(a2 + 1);
            v43 = *(a2 + 2);
            while (v42 < v43 && (*(a2 + 24) & 1) == 0)
            {
              v45 = *(this + 2);
              v44 = *(this + 3);
              if (v45 >= v44)
              {
                v47 = *(this + 1);
                v48 = v45 - v47;
                v49 = (v45 - v47) >> 2;
                v50 = v49 + 1;
                if ((v49 + 1) >> 62)
                {
                  goto LABEL_230;
                }

                v51 = v44 - v47;
                if (v51 >> 1 > v50)
                {
                  v50 = v51 >> 1;
                }

                if (v51 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v52 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v52 = v50;
                }

                if (v52)
                {
                  sub_10002290C(this + 8, v52);
                }

                v53 = (v45 - v47) >> 2;
                v54 = (4 * v49);
                v55 = (4 * v49 - 4 * v53);
                *v54 = 0;
                v46 = v54 + 1;
                memcpy(v55, v47, v48);
                v56 = *(this + 1);
                *(this + 1) = v55;
                *(this + 2) = v46;
                *(this + 3) = 0;
                if (v56)
                {
                  operator delete(v56);
                }
              }

              else
              {
                *v45 = 0;
                v46 = v45 + 4;
              }

              *(this + 2) = v46;
              v57 = *(a2 + 1);
              if (v57 > 0xFFFFFFFFFFFFFFFBLL || v57 + 4 > *(a2 + 2))
              {
LABEL_171:
                *(a2 + 24) = 1;
                goto LABEL_172;
              }

              *(v46 - 1) = *(*a2 + v57);
              v43 = *(a2 + 2);
              v42 = *(a2 + 1) + 4;
              *(a2 + 1) = v42;
            }

            goto LABEL_172;
          }
        }

        else
        {
          if (v23 == 1)
          {
            *(this + 104) |= 8u;
            v68 = *(a2 + 1);
            v67 = *(a2 + 2);
            v69 = *a2;
            if (v68 > 0xFFFFFFFFFFFFFFF5 || v68 + 10 > v67)
            {
              v125 = 0;
              v126 = 0;
              v72 = 0;
              v17 = v67 >= v68;
              v127 = v67 - v68;
              if (!v17)
              {
                v127 = 0;
              }

              v128 = (v69 + v68);
              v129 = v68 + 1;
              while (1)
              {
                if (!v127)
                {
                  LODWORD(v72) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_203;
                }

                v130 = *v128;
                *(a2 + 1) = v129;
                v72 |= (v130 & 0x7F) << v125;
                if ((v130 & 0x80) == 0)
                {
                  break;
                }

                v125 += 7;
                --v127;
                ++v128;
                ++v129;
                v14 = v126++ > 8;
                if (v14)
                {
LABEL_144:
                  LODWORD(v72) = 0;
                  goto LABEL_203;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v72) = 0;
              }
            }

            else
            {
              v70 = 0;
              v71 = 0;
              v72 = 0;
              v73 = (v69 + v68);
              v74 = v68 + 1;
              while (1)
              {
                *(a2 + 1) = v74;
                v75 = *v73++;
                v72 |= (v75 & 0x7F) << v70;
                if ((v75 & 0x80) == 0)
                {
                  break;
                }

                v70 += 7;
                ++v74;
                v14 = v71++ > 8;
                if (v14)
                {
                  goto LABEL_144;
                }
              }
            }

LABEL_203:
            *(this + 23) = v72;
            goto LABEL_223;
          }

          if (v23 == 2)
          {
            *(this + 104) |= 4u;
            v34 = *(a2 + 1);
            v33 = *(a2 + 2);
            v35 = *a2;
            if (v34 > 0xFFFFFFFFFFFFFFF5 || v34 + 10 > v33)
            {
              v110 = 0;
              v111 = 0;
              v38 = 0;
              v17 = v33 >= v34;
              v112 = v33 - v34;
              if (!v17)
              {
                v112 = 0;
              }

              v113 = (v35 + v34);
              v114 = v34 + 1;
              while (1)
              {
                if (!v112)
                {
                  LODWORD(v38) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_197;
                }

                v115 = *v113;
                *(a2 + 1) = v114;
                v38 |= (v115 & 0x7F) << v110;
                if ((v115 & 0x80) == 0)
                {
                  break;
                }

                v110 += 7;
                --v112;
                ++v113;
                ++v114;
                v14 = v111++ > 8;
                if (v14)
                {
LABEL_126:
                  LODWORD(v38) = 0;
                  goto LABEL_197;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v38) = 0;
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
                  goto LABEL_126;
                }
              }
            }

LABEL_197:
            *(this + 22) = v38;
            goto LABEL_223;
          }
        }
      }

      else if (v23 <= 6)
      {
        if (v23 == 5)
        {
          if (v22 != 2)
          {
            v144 = *(this + 5);
            v143 = *(this + 6);
            if (v144 >= v143)
            {
              v157 = *(this + 4);
              v158 = v144 - v157;
              v159 = (v144 - v157) >> 2;
              v160 = v159 + 1;
              if ((v159 + 1) >> 62)
              {
LABEL_230:
                sub_10000CD24();
              }

              v161 = v143 - v157;
              if (v161 >> 1 > v160)
              {
                v160 = v161 >> 1;
              }

              if (v161 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v162 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v162 = v160;
              }

              if (v162)
              {
                sub_10002290C(this + 32, v162);
              }

              v167 = (v144 - v157) >> 2;
              v168 = (4 * v159);
              v169 = (4 * v159 - 4 * v167);
              *v168 = 0;
              v118 = v168 + 1;
              memcpy(v169, v157, v158);
              v170 = *(this + 4);
              *(this + 4) = v169;
              *(this + 5) = v118;
              *(this + 6) = 0;
              if (v170)
              {
                operator delete(v170);
              }
            }

            else
            {
              *v144 = 0;
              v118 = v144 + 4;
            }

            *(this + 5) = v118;
            goto LABEL_219;
          }

          if (PB::Reader::placeMark())
          {
            goto LABEL_229;
          }

          v85 = *(a2 + 1);
          v86 = *(a2 + 2);
          while (v85 < v86 && (*(a2 + 24) & 1) == 0)
          {
            v88 = *(this + 5);
            v87 = *(this + 6);
            if (v88 >= v87)
            {
              v90 = *(this + 4);
              v91 = v88 - v90;
              v92 = (v88 - v90) >> 2;
              v93 = v92 + 1;
              if ((v92 + 1) >> 62)
              {
                goto LABEL_230;
              }

              v94 = v87 - v90;
              if (v94 >> 1 > v93)
              {
                v93 = v94 >> 1;
              }

              if (v94 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v95 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v95 = v93;
              }

              if (v95)
              {
                sub_10002290C(this + 32, v95);
              }

              v96 = (v88 - v90) >> 2;
              v97 = (4 * v92);
              v98 = (4 * v92 - 4 * v96);
              *v97 = 0;
              v89 = v97 + 1;
              memcpy(v98, v90, v91);
              v99 = *(this + 4);
              *(this + 4) = v98;
              *(this + 5) = v89;
              *(this + 6) = 0;
              if (v99)
              {
                operator delete(v99);
              }
            }

            else
            {
              *v88 = 0;
              v89 = v88 + 4;
            }

            *(this + 5) = v89;
            v100 = *(a2 + 1);
            if (v100 > 0xFFFFFFFFFFFFFFFBLL || v100 + 4 > *(a2 + 2))
            {
              goto LABEL_171;
            }

            *(v89 - 1) = *(*a2 + v100);
            v86 = *(a2 + 2);
            v85 = *(a2 + 1) + 4;
            *(a2 + 1) = v85;
          }

LABEL_172:
          PB::Reader::recallMark();
          goto LABEL_223;
        }

        if (v23 == 6)
        {
          *(this + 104) |= 1u;
          v59 = *(a2 + 1);
          v58 = *(a2 + 2);
          v60 = *a2;
          if (v59 > 0xFFFFFFFFFFFFFFF5 || v59 + 10 > v58)
          {
            v119 = 0;
            v120 = 0;
            v63 = 0;
            v17 = v58 >= v59;
            v121 = v58 - v59;
            if (!v17)
            {
              v121 = 0;
            }

            v122 = (v60 + v59);
            v123 = v59 + 1;
            while (1)
            {
              if (!v121)
              {
                LODWORD(v63) = 0;
                *(a2 + 24) = 1;
                goto LABEL_200;
              }

              v124 = *v122;
              *(a2 + 1) = v123;
              v63 |= (v124 & 0x7F) << v119;
              if ((v124 & 0x80) == 0)
              {
                break;
              }

              v119 += 7;
              --v121;
              ++v122;
              ++v123;
              v14 = v120++ > 8;
              if (v14)
              {
LABEL_136:
                LODWORD(v63) = 0;
                goto LABEL_200;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v63) = 0;
            }
          }

          else
          {
            v61 = 0;
            v62 = 0;
            v63 = 0;
            v64 = (v60 + v59);
            v65 = v59 + 1;
            while (1)
            {
              *(a2 + 1) = v65;
              v66 = *v64++;
              v63 |= (v66 & 0x7F) << v61;
              if ((v66 & 0x80) == 0)
              {
                break;
              }

              v61 += 7;
              ++v65;
              v14 = v62++ > 8;
              if (v14)
              {
                goto LABEL_136;
              }
            }
          }

LABEL_200:
          *(this + 20) = v63;
          goto LABEL_223;
        }
      }

      else
      {
        switch(v23)
        {
          case 7:
            *(this + 104) |= 0x10u;
            v77 = *(a2 + 1);
            v76 = *(a2 + 2);
            v78 = *a2;
            if (v77 > 0xFFFFFFFFFFFFFFF5 || v77 + 10 > v76)
            {
              v131 = 0;
              v132 = 0;
              v81 = 0;
              v17 = v76 >= v77;
              v133 = v76 - v77;
              if (!v17)
              {
                v133 = 0;
              }

              v134 = (v78 + v77);
              v135 = v77 + 1;
              while (1)
              {
                if (!v133)
                {
                  LODWORD(v81) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_206;
                }

                v136 = *v134;
                *(a2 + 1) = v135;
                v81 |= (v136 & 0x7F) << v131;
                if ((v136 & 0x80) == 0)
                {
                  break;
                }

                v131 += 7;
                --v133;
                ++v134;
                ++v135;
                v14 = v132++ > 8;
                if (v14)
                {
LABEL_152:
                  LODWORD(v81) = 0;
                  goto LABEL_206;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v81) = 0;
              }
            }

            else
            {
              v79 = 0;
              v80 = 0;
              v81 = 0;
              v82 = (v78 + v77);
              v83 = v77 + 1;
              while (1)
              {
                *(a2 + 1) = v83;
                v84 = *v82++;
                v81 |= (v84 & 0x7F) << v79;
                if ((v84 & 0x80) == 0)
                {
                  break;
                }

                v79 += 7;
                ++v83;
                v14 = v80++ > 8;
                if (v14)
                {
                  goto LABEL_152;
                }
              }
            }

LABEL_206:
            *(this + 24) = v81;
            goto LABEL_223;
          case 8:
            *(this + 104) |= 2u;
            v102 = *(a2 + 1);
            v101 = *(a2 + 2);
            v103 = *a2;
            if (v102 > 0xFFFFFFFFFFFFFFF5 || v102 + 10 > v101)
            {
              v145 = 0;
              v146 = 0;
              v106 = 0;
              v17 = v101 >= v102;
              v147 = v101 - v102;
              if (!v17)
              {
                v147 = 0;
              }

              v148 = (v103 + v102);
              v149 = v102 + 1;
              while (1)
              {
                if (!v147)
                {
                  LODWORD(v106) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_212;
                }

                v150 = *v148;
                *(a2 + 1) = v149;
                v106 |= (v150 & 0x7F) << v145;
                if ((v150 & 0x80) == 0)
                {
                  break;
                }

                v145 += 7;
                --v147;
                ++v148;
                ++v149;
                v14 = v146++ > 8;
                if (v14)
                {
LABEL_170:
                  LODWORD(v106) = 0;
                  goto LABEL_212;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v106) = 0;
              }
            }

            else
            {
              v104 = 0;
              v105 = 0;
              v106 = 0;
              v107 = (v103 + v102);
              v108 = v102 + 1;
              while (1)
              {
                *(a2 + 1) = v108;
                v109 = *v107++;
                v106 |= (v109 & 0x7F) << v104;
                if ((v109 & 0x80) == 0)
                {
                  break;
                }

                v104 += 7;
                ++v108;
                v14 = v105++ > 8;
                if (v14)
                {
                  goto LABEL_170;
                }
              }
            }

LABEL_212:
            *(this + 21) = v106;
            goto LABEL_223;
          case 9:
            *(this + 104) |= 0x20u;
            v25 = *(a2 + 1);
            v24 = *(a2 + 2);
            v26 = *a2;
            if (v25 > 0xFFFFFFFFFFFFFFF5 || v25 + 10 > v24)
            {
              v137 = 0;
              v138 = 0;
              v29 = 0;
              v17 = v24 >= v25;
              v139 = v24 - v25;
              if (!v17)
              {
                v139 = 0;
              }

              v140 = (v26 + v25);
              v141 = v25 + 1;
              while (1)
              {
                if (!v139)
                {
                  LODWORD(v29) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_209;
                }

                v142 = *v140;
                *(a2 + 1) = v141;
                v29 |= (v142 & 0x7F) << v137;
                if ((v142 & 0x80) == 0)
                {
                  break;
                }

                v137 += 7;
                --v139;
                ++v140;
                ++v141;
                v14 = v138++ > 8;
                if (v14)
                {
LABEL_160:
                  LODWORD(v29) = 0;
                  goto LABEL_209;
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
                  goto LABEL_160;
                }
              }
            }

LABEL_209:
            *(this + 25) = v29;
            goto LABEL_223;
        }
      }

      if ((PB::Reader::skip(a2, v23, v22, 0) & 1) == 0)
      {
LABEL_229:
        v172 = 0;
        return v172 & 1;
      }

LABEL_223:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

  v172 = v4 ^ 1;
  return v172 & 1;
}

uint64_t CMMsl::AccessoryProxSensorDrop::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 104);
  if ((v4 & 8) != 0)
  {
    this = PB::Writer::writeVarInt(a2, *(this + 92), 1u);
    v4 = *(v3 + 104);
  }

  if ((v4 & 4) != 0)
  {
    this = PB::Writer::writeVarInt(a2, *(v3 + 88), 2u);
  }

  v5 = *(v3 + 56);
  v6 = *(v3 + 64);
  while (v5 != v6)
  {
    v7 = *v5++;
    this = PB::Writer::writeSubmessage(a2, v7, 3u);
  }

  v8 = *(v3 + 8);
  v9 = *(v3 + 16);
  while (v8 != v9)
  {
    v10 = *v8++;
    this = PB::Writer::write(a2, v10, 4u);
  }

  v11 = *(v3 + 32);
  v12 = *(v3 + 40);
  while (v11 != v12)
  {
    v13 = *v11++;
    this = PB::Writer::write(a2, v13, 5u);
  }

  v14 = *(v3 + 104);
  if (v14)
  {
    this = PB::Writer::writeVarInt(a2, *(v3 + 80), 6u);
    v14 = *(v3 + 104);
    if ((v14 & 0x10) == 0)
    {
LABEL_16:
      if ((v14 & 2) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      this = PB::Writer::writeVarInt(a2, *(v3 + 84), 8u);
      if ((*(v3 + 104) & 0x20) == 0)
      {
        return this;
      }

      goto LABEL_22;
    }
  }

  else if ((*(v3 + 104) & 0x10) == 0)
  {
    goto LABEL_16;
  }

  this = PB::Writer::writeVarInt(a2, *(v3 + 96), 7u);
  v14 = *(v3 + 104);
  if ((v14 & 2) != 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  if ((v14 & 0x20) == 0)
  {
    return this;
  }

LABEL_22:
  v15 = *(v3 + 100);

  return PB::Writer::writeVarInt(a2, v15, 9u);
}

BOOL CMMsl::AccessoryProxSensorDrop::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 104);
  if ((*(a1 + 104) & 8) != 0)
  {
    if ((*(a2 + 104) & 8) == 0 || *(a1 + 92) != *(a2 + 92))
    {
      return 0;
    }
  }

  else if ((*(a2 + 104) & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 104) & 4) != 0)
  {
    if ((*(a2 + 104) & 4) == 0 || *(a1 + 88) != *(a2 + 88))
    {
      return 0;
    }
  }

  else if ((*(a2 + 104) & 4) != 0)
  {
    return 0;
  }

  result = sub_10007A1C0((a1 + 56), a2 + 56);
  if (!result)
  {
    return result;
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
    if (*v7 != *v8)
    {
      return 0;
    }

    ++v7;
    ++v8;
  }

  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11 = *(a2 + 32);
  if (v9 - v10 != *(a2 + 40) - v11)
  {
    return 0;
  }

  while (v10 != v9)
  {
    if (*v10 != *v11)
    {
      return 0;
    }

    ++v10;
    ++v11;
  }

  if (*(a1 + 104))
  {
    if ((*(a2 + 104) & 1) == 0 || *(a1 + 80) != *(a2 + 80))
    {
      return 0;
    }
  }

  else if (*(a2 + 104))
  {
    return 0;
  }

  if ((*(a1 + 104) & 0x10) != 0)
  {
    if ((*(a2 + 104) & 0x10) == 0 || *(a1 + 96) != *(a2 + 96))
    {
      return 0;
    }
  }

  else if ((*(a2 + 104) & 0x10) != 0)
  {
    return 0;
  }

  if ((*(a1 + 104) & 2) != 0)
  {
    if ((*(a2 + 104) & 2) == 0 || *(a1 + 84) != *(a2 + 84))
    {
      return 0;
    }
  }

  else if ((*(a2 + 104) & 2) != 0)
  {
    return 0;
  }

  result = (*(a2 + 104) & 0x20) == 0;
  if ((*(a1 + 104) & 0x20) == 0)
  {
    return result;
  }

  return (*(a2 + 104) & 0x20) != 0 && *(a1 + 100) == *(a2 + 100);
}

BOOL sub_10007A1C0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  if (v3 - *a1 != *(a2 + 8) - *a2)
  {
    return 0;
  }

  if (v2 == v3)
  {
    return 1;
  }

  v5 = v2 + 8;
  do
  {
    v6 = *v4++;
    result = CMMsl::ClefMeasurement::operator==(*(v5 - 8), v6);
    v8 = !result || v5 == v3;
    v5 += 8;
  }

  while (!v8);
  return result;
}

uint64_t CMMsl::AccessoryProxSensorDrop::hash_value(CMMsl::AccessoryProxSensorDrop *this)
{
  if ((*(this + 104) & 8) != 0)
  {
    v2 = *(this + 23);
    if ((*(this + 104) & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = 0;
    if ((*(this + 104) & 4) != 0)
    {
LABEL_3:
      v3 = *(this + 22);
      goto LABEL_6;
    }
  }

  v3 = 0;
LABEL_6:
  v4 = sub_10007A320(&v16, this + 7);
  v5 = *(this + 1);
  v6 = *(this + 2);
  v7 = PBHashBytes();
  v8 = *(this + 4);
  v9 = *(this + 5);
  v10 = PBHashBytes();
  if (*(this + 104))
  {
    v11 = *(this + 20);
    if ((*(this + 104) & 0x10) != 0)
    {
LABEL_8:
      v12 = *(this + 24);
      if ((*(this + 104) & 2) != 0)
      {
        goto LABEL_9;
      }

LABEL_13:
      v13 = 0;
      if ((*(this + 104) & 0x20) != 0)
      {
        goto LABEL_10;
      }

LABEL_14:
      v14 = 0;
      return v3 ^ v2 ^ v4 ^ v7 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14;
    }
  }

  else
  {
    v11 = 0;
    if ((*(this + 104) & 0x10) != 0)
    {
      goto LABEL_8;
    }
  }

  v12 = 0;
  if ((*(this + 104) & 2) == 0)
  {
    goto LABEL_13;
  }

LABEL_9:
  v13 = *(this + 21);
  if ((*(this + 104) & 0x20) == 0)
  {
    goto LABEL_14;
  }

LABEL_10:
  v14 = *(this + 25);
  return v3 ^ v2 ^ v4 ^ v7 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14;
}

uint64_t sub_10007A320(uint64_t a1, uint64_t **a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 == v3)
  {
    return 0;
  }

  result = 0;
  do
  {
    v5 = *v2++;
    v6 = *(v5 + 8);
    v7 = *(v5 + 12);
    v8 = LODWORD(v6);
    v9 = *(v5 + 16);
    if (v6 == 0.0 || (v9 & 1) == 0)
    {
      v8 = 0;
    }

    v11 = v9 & 2;
    v12 = v7 == 0.0 || v11 == 0;
    v13 = LODWORD(v7);
    if (v12)
    {
      v13 = 0;
    }

    result ^= v8 ^ v13;
  }

  while (v2 != v3);
  return result;
}

uint64_t CMMsl::AccessoryProxTempComp::AccessoryProxTempComp(uint64_t this)
{
  *this = off_10041CC88;
  *(this + 44) = 0;
  return this;
}

{
  *this = off_10041CC88;
  *(this + 44) = 0;
  return this;
}

void CMMsl::AccessoryProxTempComp::~AccessoryProxTempComp(CMMsl::AccessoryProxTempComp *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::AccessoryProxTempComp::AccessoryProxTempComp(uint64_t this, const CMMsl::AccessoryProxTempComp *a2)
{
  *this = off_10041CC88;
  *(this + 44) = 0;
  v2 = *(a2 + 44);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 44) = 1;
    *(this + 8) = v4;
    v2 = *(a2 + 44);
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 44) & 4) != 0)
  {
LABEL_5:
    v5 = *(a2 + 5);
    v3 |= 4u;
    *(this + 44) = v3;
    *(this + 20) = v5;
    v2 = *(a2 + 44);
  }

LABEL_6:
  if (v2 < 0)
  {
    v6 = *(a2 + 40);
    v3 |= 0x80u;
    *(this + 44) = v3;
    *(this + 40) = v6;
    v2 = *(a2 + 44);
    if ((v2 & 0x10) == 0)
    {
LABEL_8:
      if ((v2 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_15;
    }
  }

  else if ((v2 & 0x10) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 7);
  v3 |= 0x10u;
  *(this + 44) = v3;
  *(this + 28) = v7;
  v2 = *(a2 + 44);
  if ((v2 & 8) == 0)
  {
LABEL_9:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_16;
  }

LABEL_15:
  v8 = *(a2 + 6);
  v3 |= 8u;
  *(this + 44) = v3;
  *(this + 24) = v8;
  v2 = *(a2 + 44);
  if ((v2 & 0x40) == 0)
  {
LABEL_10:
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_16:
  v9 = *(a2 + 9);
  v3 |= 0x40u;
  *(this + 44) = v3;
  *(this + 36) = v9;
  v2 = *(a2 + 44);
  if ((v2 & 2) == 0)
  {
LABEL_11:
    if ((v2 & 0x20) == 0)
    {
      return this;
    }

LABEL_18:
    v11 = *(a2 + 8);
    *(this + 44) = v3 | 0x20;
    *(this + 32) = v11;
    return this;
  }

LABEL_17:
  v10 = *(a2 + 4);
  v3 |= 2u;
  *(this + 44) = v3;
  *(this + 16) = v10;
  if ((*(a2 + 44) & 0x20) != 0)
  {
    goto LABEL_18;
  }

  return this;
}

uint64_t CMMsl::AccessoryProxTempComp::operator=(uint64_t a1, const CMMsl::AccessoryProxTempComp *a2)
{
  if (a1 != a2)
  {
    CMMsl::AccessoryProxTempComp::AccessoryProxTempComp(&v10, a2);
    v3 = *(a1 + 44);
    *(a1 + 44) = v16;
    v16 = v3;
    LOBYTE(v3) = *(a1 + 40);
    *(a1 + 40) = v15;
    v15 = v3;
    v5 = *(a1 + 16);
    v4 = *(a1 + 20);
    v6 = v13;
    *(a1 + 16) = v12;
    *(a1 + 20) = v6;
    v7 = *(a1 + 8);
    *(a1 + 8) = v11;
    v11 = v7;
    v12 = v5;
    v13 = v4;
    v8 = *(a1 + 24);
    *(a1 + 24) = v14;
    v14 = v8;
    PB::Base::~Base(&v10);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::AccessoryProxTempComp *a2, CMMsl::AccessoryProxTempComp *a3)
{
  v3 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v3;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  v5 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v5;
  LOBYTE(v5) = *(this + 40);
  *(this + 40) = *(a2 + 40);
  *(a2 + 40) = v5;
  v6 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v6;
  v7 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v7;
  v8 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v8;
  v9 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v9;
  v10 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v10;
  return result;
}

double CMMsl::AccessoryProxTempComp::AccessoryProxTempComp(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041CC88;
  *(a1 + 44) = *(a2 + 44);
  *(a2 + 44) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  return result;
}

{
  *a1 = off_10041CC88;
  *(a1 + 44) = *(a2 + 44);
  *(a2 + 44) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  return result;
}

uint64_t CMMsl::AccessoryProxTempComp::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v14[0] = off_10041CC88;
    v3 = *(a2 + 44);
    *(a2 + 44) = 0;
    v4 = *(a2 + 8);
    v5 = *(a2 + 40);
    v7 = *(a2 + 16);
    v6 = *(a2 + 20);
    v19 = *(a1 + 44);
    v8 = *(a1 + 8);
    *(a1 + 8) = v4;
    v14[1] = v8;
    v9 = *(a1 + 40);
    *(a1 + 40) = v5;
    v18 = v9;
    v10 = *(a1 + 20);
    v15 = *(a1 + 16);
    v16 = v10;
    v11 = *(a1 + 24);
    v12 = *(a2 + 24);
    *(a1 + 44) = v3;
    *(a1 + 16) = v7;
    *(a1 + 20) = v6;
    *(a1 + 24) = v12;
    v17 = v11;
    PB::Base::~Base(v14);
  }

  return a1;
}

uint64_t CMMsl::AccessoryProxTempComp::formatText(CMMsl::AccessoryProxTempComp *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 44);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "conchaTemp", *(this + 4));
    v5 = *(this + 44);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*(this + 44) & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "location", *(this + 5));
  v5 = *(this + 44);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  PB::TextFormatter::format(a2, "prescalar", *(this + 6));
  v5 = *(this + 44);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  PB::TextFormatter::format(a2, "pwrState", *(this + 7));
  v5 = *(this + 44);
  if ((v5 & 1) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  v5 = *(this + 44);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  PB::TextFormatter::format(a2, "tragusTemp", *(this + 8));
  v5 = *(this + 44);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_19:
  PB::TextFormatter::format(a2, "valid", *(this + 40));
  if ((*(this + 44) & 0x40) != 0)
  {
LABEL_9:
    PB::TextFormatter::format(a2, "wdtPeriod", *(this + 9));
  }

LABEL_10:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::AccessoryProxTempComp::readFrom(CMMsl::AccessoryProxTempComp *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            goto LABEL_167;
          }

          v21 = *v19;
          *(a2 + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
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
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) > 4)
      {
        if (v22 > 6)
        {
          if (v22 == 7)
          {
            *(this + 44) |= 2u;
            v65 = *(a2 + 1);
            v2 = *(a2 + 2);
            v66 = *a2;
            if (v65 > 0xFFFFFFFFFFFFFFF5 || v65 + 10 > v2)
            {
              v80 = 0;
              v81 = 0;
              v69 = 0;
              if (v2 <= v65)
              {
                v2 = *(a2 + 1);
              }

              v82 = v2 - v65;
              v83 = (v66 + v65);
              v84 = v65 + 1;
              while (1)
              {
                if (!v82)
                {
                  LODWORD(v69) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_146;
                }

                v85 = v84;
                v86 = *v83;
                *(a2 + 1) = v85;
                v69 |= (v86 & 0x7F) << v80;
                if ((v86 & 0x80) == 0)
                {
                  break;
                }

                v80 += 7;
                --v82;
                ++v83;
                v84 = v85 + 1;
                v14 = v81++ > 8;
                if (v14)
                {
                  LODWORD(v69) = 0;
                  goto LABEL_145;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v69) = 0;
              }

LABEL_145:
              v2 = v85;
            }

            else
            {
              v67 = 0;
              v68 = 0;
              v69 = 0;
              v70 = (v66 + v65);
              v71 = v65 + 1;
              while (1)
              {
                v2 = v71;
                *(a2 + 1) = v71;
                v72 = *v70++;
                v69 |= (v72 & 0x7F) << v67;
                if ((v72 & 0x80) == 0)
                {
                  break;
                }

                v67 += 7;
                ++v71;
                v14 = v68++ > 8;
                if (v14)
                {
                  LODWORD(v69) = 0;
                  break;
                }
              }
            }

LABEL_146:
            *(this + 4) = v69;
            goto LABEL_163;
          }

          if (v22 == 8)
          {
            *(this + 44) |= 0x20u;
            v47 = *(a2 + 1);
            v2 = *(a2 + 2);
            v48 = *a2;
            if (v47 > 0xFFFFFFFFFFFFFFF5 || v47 + 10 > v2)
            {
              v108 = 0;
              v109 = 0;
              v51 = 0;
              if (v2 <= v47)
              {
                v2 = *(a2 + 1);
              }

              v110 = v2 - v47;
              v111 = (v48 + v47);
              v112 = v47 + 1;
              while (1)
              {
                if (!v110)
                {
                  LODWORD(v51) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_162;
                }

                v113 = v112;
                v114 = *v111;
                *(a2 + 1) = v113;
                v51 |= (v114 & 0x7F) << v108;
                if ((v114 & 0x80) == 0)
                {
                  break;
                }

                v108 += 7;
                --v110;
                ++v111;
                v112 = v113 + 1;
                v14 = v109++ > 8;
                if (v14)
                {
                  LODWORD(v51) = 0;
                  goto LABEL_161;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v51) = 0;
              }

LABEL_161:
              v2 = v113;
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
                v2 = v53;
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

LABEL_162:
            *(this + 8) = v51;
            goto LABEL_163;
          }
        }

        else
        {
          if (v22 == 5)
          {
            *(this + 44) |= 8u;
            v55 = *(a2 + 1);
            v2 = *(a2 + 2);
            v56 = *a2;
            if (v55 > 0xFFFFFFFFFFFFFFF5 || v55 + 10 > v2)
            {
              v73 = 0;
              v74 = 0;
              v59 = 0;
              if (v2 <= v55)
              {
                v2 = *(a2 + 1);
              }

              v75 = v2 - v55;
              v76 = (v56 + v55);
              v77 = v55 + 1;
              while (1)
              {
                if (!v75)
                {
                  LODWORD(v59) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_142;
                }

                v78 = v77;
                v79 = *v76;
                *(a2 + 1) = v78;
                v59 |= (v79 & 0x7F) << v73;
                if ((v79 & 0x80) == 0)
                {
                  break;
                }

                v73 += 7;
                --v75;
                ++v76;
                v77 = v78 + 1;
                v14 = v74++ > 8;
                if (v14)
                {
                  LODWORD(v59) = 0;
                  goto LABEL_141;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v59) = 0;
              }

LABEL_141:
              v2 = v78;
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
                v2 = v61;
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

LABEL_142:
            *(this + 6) = v59;
            goto LABEL_163;
          }

          if (v22 == 6)
          {
            *(this + 44) |= 0x40u;
            v31 = *(a2 + 1);
            v2 = *(a2 + 2);
            v32 = *a2;
            if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
            {
              v94 = 0;
              v95 = 0;
              v35 = 0;
              if (v2 <= v31)
              {
                v2 = *(a2 + 1);
              }

              v96 = v2 - v31;
              v97 = (v32 + v31);
              v98 = v31 + 1;
              while (1)
              {
                if (!v96)
                {
                  LODWORD(v35) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_154;
                }

                v99 = v98;
                v100 = *v97;
                *(a2 + 1) = v99;
                v35 |= (v100 & 0x7F) << v94;
                if ((v100 & 0x80) == 0)
                {
                  break;
                }

                v94 += 7;
                --v96;
                ++v97;
                v98 = v99 + 1;
                v14 = v95++ > 8;
                if (v14)
                {
                  LODWORD(v35) = 0;
                  goto LABEL_153;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v35) = 0;
              }

LABEL_153:
              v2 = v99;
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
                v2 = v37;
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

LABEL_154:
            *(this + 9) = v35;
            goto LABEL_163;
          }
        }
      }

      else if (v22 > 2)
      {
        if (v22 == 3)
        {
          *(this + 44) |= 0x80u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v64 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v63 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v64 = v63 != 0;
          }

          *(this + 40) = v64;
          goto LABEL_163;
        }

        if (v22 == 4)
        {
          *(this + 44) |= 0x10u;
          v39 = *(a2 + 1);
          v2 = *(a2 + 2);
          v40 = *a2;
          if (v39 > 0xFFFFFFFFFFFFFFF5 || v39 + 10 > v2)
          {
            v101 = 0;
            v102 = 0;
            v43 = 0;
            if (v2 <= v39)
            {
              v2 = *(a2 + 1);
            }

            v103 = v2 - v39;
            v104 = (v40 + v39);
            v105 = v39 + 1;
            while (1)
            {
              if (!v103)
              {
                LODWORD(v43) = 0;
                *(a2 + 24) = 1;
                goto LABEL_158;
              }

              v106 = v105;
              v107 = *v104;
              *(a2 + 1) = v106;
              v43 |= (v107 & 0x7F) << v101;
              if ((v107 & 0x80) == 0)
              {
                break;
              }

              v101 += 7;
              --v103;
              ++v104;
              v105 = v106 + 1;
              v14 = v102++ > 8;
              if (v14)
              {
                LODWORD(v43) = 0;
                goto LABEL_157;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v43) = 0;
            }

LABEL_157:
            v2 = v106;
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
              v2 = v45;
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

LABEL_158:
          *(this + 7) = v43;
          goto LABEL_163;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(this + 44) |= 1u;
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

          goto LABEL_163;
        }

        if (v22 == 2)
        {
          *(this + 44) |= 4u;
          v23 = *(a2 + 1);
          v2 = *(a2 + 2);
          v24 = *a2;
          if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
          {
            v87 = 0;
            v88 = 0;
            v27 = 0;
            if (v2 <= v23)
            {
              v2 = *(a2 + 1);
            }

            v89 = v2 - v23;
            v90 = (v24 + v23);
            v91 = v23 + 1;
            while (1)
            {
              if (!v89)
              {
                LODWORD(v27) = 0;
                *(a2 + 24) = 1;
                goto LABEL_150;
              }

              v92 = v91;
              v93 = *v90;
              *(a2 + 1) = v92;
              v27 |= (v93 & 0x7F) << v87;
              if ((v93 & 0x80) == 0)
              {
                break;
              }

              v87 += 7;
              --v89;
              ++v90;
              v91 = v92 + 1;
              v14 = v88++ > 8;
              if (v14)
              {
                LODWORD(v27) = 0;
                goto LABEL_149;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v27) = 0;
            }

LABEL_149:
            v2 = v92;
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

LABEL_150:
          *(this + 5) = v27;
          goto LABEL_163;
        }
      }

      if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
      {
        v115 = 0;
        return v115 & 1;
      }

      v2 = *(a2 + 1);
LABEL_163:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_167:
  v115 = v4 ^ 1;
  return v115 & 1;
}

uint64_t CMMsl::AccessoryProxTempComp::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 44);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8), 1u);
    v4 = *(v3 + 44);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(this + 44) & 4) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::writeVarInt(a2, *(v3 + 20), 2u);
  v4 = *(v3 + 44);
  if ((v4 & 0x80) == 0)
  {
LABEL_4:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  this = PB::Writer::write(a2, *(v3 + 40), 3u);
  v4 = *(v3 + 44);
  if ((v4 & 0x10) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  this = PB::Writer::writeVarInt(a2, *(v3 + 28), 4u);
  v4 = *(v3 + 44);
  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = PB::Writer::writeVarInt(a2, *(v3 + 24), 5u);
  v4 = *(v3 + 44);
  if ((v4 & 0x40) == 0)
  {
LABEL_7:
    if ((v4 & 2) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    this = PB::Writer::writeVarInt(a2, *(v3 + 16), 7u);
    if ((*(v3 + 44) & 0x20) == 0)
    {
      return this;
    }

    goto LABEL_17;
  }

LABEL_15:
  this = PB::Writer::writeVarInt(a2, *(v3 + 36), 6u);
  v4 = *(v3 + 44);
  if ((v4 & 2) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v4 & 0x20) == 0)
  {
    return this;
  }

LABEL_17:
  v5 = *(v3 + 32);

  return PB::Writer::writeVarInt(a2, v5, 8u);
}

BOOL CMMsl::AccessoryProxTempComp::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 44);
  v3 = *(a2 + 44);
  if (v2)
  {
    if ((v3 & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 20) != *(a2 + 20))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

  if ((v2 & v3 & 0x80) != 0)
  {
    if (*(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if (((v2 | v3) & 0x80) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 36) != *(a2 + 36))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if ((v2 & 2) != 0)
  {
    if ((v3 & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((v3 & 2) != 0)
  {
    return 0;
  }

  v4 = (v3 & 0x20) == 0;
  if ((v2 & 0x20) != 0)
  {
    return (v3 & 0x20) != 0 && *(a1 + 32) == *(a2 + 32);
  }

  return v4;
}

uint64_t CMMsl::AccessoryProxTempComp::hash_value(CMMsl::AccessoryProxTempComp *this)
{
  if (*(this + 44))
  {
    v1 = *(this + 1);
    if (v1 == 0.0)
    {
      v1 = 0.0;
    }

    if ((*(this + 44) & 4) != 0)
    {
LABEL_3:
      v2 = *(this + 5);
      if ((*(this + 44) & 0x80) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v1 = 0.0;
    if ((*(this + 44) & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  v2 = 0;
  if ((*(this + 44) & 0x80) != 0)
  {
LABEL_4:
    v3 = *(this + 40);
    if ((*(this + 44) & 0x10) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v3 = 0;
  if ((*(this + 44) & 0x10) != 0)
  {
LABEL_5:
    v4 = *(this + 7);
    if ((*(this + 44) & 8) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v4 = 0;
  if ((*(this + 44) & 8) != 0)
  {
LABEL_6:
    v5 = *(this + 6);
    if ((*(this + 44) & 0x40) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v5 = 0;
  if ((*(this + 44) & 0x40) != 0)
  {
LABEL_7:
    v6 = *(this + 9);
    if ((*(this + 44) & 2) != 0)
    {
      goto LABEL_8;
    }

LABEL_18:
    v7 = 0;
    if ((*(this + 44) & 0x20) != 0)
    {
      goto LABEL_9;
    }

LABEL_19:
    v8 = 0;
    return v2 ^ *&v1 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8;
  }

LABEL_17:
  v6 = 0;
  if ((*(this + 44) & 2) == 0)
  {
    goto LABEL_18;
  }

LABEL_8:
  v7 = *(this + 4);
  if ((*(this + 44) & 0x20) == 0)
  {
    goto LABEL_19;
  }

LABEL_9:
  v8 = *(this + 8);
  return v2 ^ *&v1 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8;
}

double CMMsl::AccessoryProximityConfig::AccessoryProximityConfig(CMMsl::AccessoryProximityConfig *this)
{
  *this = off_10041CCC0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

{
  *this = off_10041CCC0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

void CMMsl::AccessoryProximityConfig::~AccessoryProximityConfig(CMMsl::AccessoryProximityConfig *this)
{
  *this = off_10041CCC0;
  v4 = *(this + 5);
  v2 = (this + 40);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_100011018(v2, v3);
  }

  sub_1002A2FBC(this + 4, 0);
  v5 = *(this + 3);
  *(this + 3) = 0;
  if (v5)
  {
    sub_100011018(this + 24, v5);
  }

  sub_1002A2FBC(this + 2, 0);
  v6 = *(this + 1);
  *(this + 1) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::AccessoryProximityConfig::~AccessoryProximityConfig(this);

  operator delete();
}

uint64_t CMMsl::AccessoryProximityConfig::AccessoryProximityConfig(uint64_t this, const CMMsl::AccessoryProximityConfig *a2)
{
  *this = off_10041CCC0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0;
  if (*(a2 + 1))
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

  if (*(a2 + 3))
  {
    operator new();
  }

  if (*(a2 + 5))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::AccessoryProximityConfig::operator=(uint64_t a1, const CMMsl::AccessoryProximityConfig *a2)
{
  if (a1 != a2)
  {
    CMMsl::AccessoryProximityConfig::AccessoryProximityConfig(&v7, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v9;
    v9 = v4;
    v5 = *(a1 + 40);
    *(a1 + 40) = v10;
    v10 = v5;
    CMMsl::AccessoryProximityConfig::~AccessoryProximityConfig(&v7);
  }

  return a1;
}

void *CMMsl::swap(void *this, CMMsl::AccessoryProximityConfig *a2, CMMsl::AccessoryProximityConfig *a3)
{
  v3 = this[1];
  this[1] = *(a2 + 1);
  *(a2 + 1) = v3;
  v4 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = this[4];
  this[4] = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v6;
  v7 = this[5];
  this[5] = *(a2 + 5);
  *(a2 + 5) = v7;
  return this;
}

uint64_t CMMsl::AccessoryProximityConfig::AccessoryProximityConfig(uint64_t a1, void *a2)
{
  *(a1 + 24) = 0u;
  v4 = (a1 + 24);
  *(a1 + 40) = 0;
  v5 = (a1 + 40);
  *a1 = off_10041CCC0;
  *(a1 + 8) = 0u;
  v6 = a2[1];
  a2[1] = 0;
  v7 = *(a1 + 8);
  *(a1 + 8) = v6;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = a2[2];
  a2[2] = 0;
  sub_1002A2FBC((a1 + 16), v8);
  v9 = a2[4];
  a2[4] = 0;
  sub_1002A2FBC((a1 + 32), v9);
  v10 = a2[3];
  a2[3] = 0;
  v11 = *v4;
  *v4 = v10;
  if (v11)
  {
    sub_100011018(v4, v11);
  }

  v12 = a2[5];
  a2[5] = 0;
  v13 = *v5;
  *v5 = v12;
  if (v13)
  {
    sub_100011018(v5, v13);
  }

  return a1;
}

uint64_t CMMsl::AccessoryProximityConfig::operator=(uint64_t a1, void *a2)
{
  if (a1 != a2)
  {
    CMMsl::AccessoryProximityConfig::AccessoryProximityConfig(&v7, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v9;
    v9 = v4;
    v5 = *(a1 + 40);
    *(a1 + 40) = v10;
    v10 = v5;
    CMMsl::AccessoryProximityConfig::~AccessoryProximityConfig(&v7);
  }

  return a1;
}

uint64_t CMMsl::AccessoryProximityConfig::formatText(CMMsl::AccessoryProximityConfig *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "config");
  }

  if (*(this + 2))
  {
    PB::TextFormatter::format();
  }

  if (*(this + 3))
  {
    PB::TextFormatter::format();
  }

  if (*(this + 4))
  {
    PB::TextFormatter::format();
  }

  if (*(this + 5))
  {
    PB::TextFormatter::format();
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::AccessoryProximityConfig::readFrom(CMMsl::AccessoryProximityConfig *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v6 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v14 = 0;
        v15 = 0;
        v9 = 0;
        v16 = v3 >= v2;
        v17 = v3 - v2;
        if (!v16)
        {
          v17 = 0;
        }

        v18 = (v6 + v2);
        v19 = v2 + 1;
        while (1)
        {
          if (!v17)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            goto LABEL_38;
          }

          v20 = *v18;
          *(a2 + 1) = v19;
          v9 |= (v20 & 0x7F) << v14;
          if ((v20 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          --v17;
          ++v18;
          ++v19;
          v13 = v15++ > 8;
          if (v13)
          {
LABEL_18:
            v9 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v9 = 0;
        }
      }

      else
      {
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
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v9 & 7) == 4))
      {
        break;
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

      if ((PB::Reader::skip(a2, v21, v9 & 7, 0) & 1) == 0)
      {
        v22 = 0;
        return v22 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_38:
  v22 = v4 ^ 1;
  return v22 & 1;
}

uint64_t CMMsl::AccessoryProximityConfig::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4, 1u);
  }

  if (v3[2])
  {
    this = PB::Writer::write();
  }

  if (v3[4])
  {
    this = PB::Writer::write();
  }

  if (v3[3])
  {
    this = PB::Writer::write();
  }

  if (v3[5])
  {

    return PB::Writer::write();
  }

  return this;
}

BOOL CMMsl::AccessoryProximityConfig::operator==(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5 || !CMMsl::AccessoryConfig::operator==(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v6 = a2[2];
  if (a1[2])
  {
    if (!v6 || (PB::Data::operator==() & 1) == 0 && a1[2] | a2[2])
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v7 = a2[4];
  if (a1[4])
  {
    if (!v7 || (PB::Data::operator==() & 1) == 0 && a1[4] | a2[4])
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v8 = a1[3];
  v9 = a2[3];
  if (!v8)
  {
    if (!v9)
    {
      goto LABEL_24;
    }

    return 0;
  }

  if (!v9 || !sub_10005FEB4(v8, v9) && a1[3] | a2[3])
  {
    return 0;
  }

LABEL_24:
  v10 = a1[5];
  if (v10)
  {
    v11 = a2[5];
    if (!v11)
    {
      return 0;
    }

    if (sub_10005FEB4(v10, v11))
    {
      return 1;
    }

    if (a1[5])
    {
      return 0;
    }
  }

  return a2[5] == 0;
}

unint64_t CMMsl::AccessoryProximityConfig::hash_value(CMMsl::AccessoryProximityConfig *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    v3 = CMMsl::AccessoryConfig::hash_value(v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 2);
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

  v8 = *(this + 4);
  if (v8)
  {
    v9 = *v8;
    v10 = v8[1];
    v11 = PBHashBytes();
  }

  else
  {
    v11 = 0;
  }

  v12 = *(this + 3);
  if (v12)
  {
    v13 = sub_100011074(&v17, v12);
  }

  else
  {
    v13 = 0;
  }

  v14 = *(this + 5);
  if (v14)
  {
    v15 = sub_100011074(&v18, v14);
  }

  else
  {
    v15 = 0;
  }

  return v7 ^ v3 ^ v11 ^ v13 ^ v15;
}

uint64_t CMMsl::AccessoryProximityConfig::makeConfig(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::AccessorySleepStateConfidenceEpoch::AccessorySleepStateConfidenceEpoch(uint64_t this)
{
  *this = off_10041CCF8;
  *(this + 36) = 0;
  return this;
}

{
  *this = off_10041CCF8;
  *(this + 36) = 0;
  return this;
}

void CMMsl::AccessorySleepStateConfidenceEpoch::~AccessorySleepStateConfidenceEpoch(CMMsl::AccessorySleepStateConfidenceEpoch *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::AccessorySleepStateConfidenceEpoch::AccessorySleepStateConfidenceEpoch(uint64_t this, const CMMsl::AccessorySleepStateConfidenceEpoch *a2)
{
  *this = off_10041CCF8;
  *(this + 36) = 0;
  v2 = *(a2 + 36);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 36) = 1;
    *(this + 8) = v4;
    v2 = *(a2 + 36);
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 36) & 0x20) != 0)
  {
LABEL_5:
    v5 = *(a2 + 32);
    v3 |= 0x20u;
    *(this + 36) = v3;
    *(this + 32) = v5;
    v2 = *(a2 + 36);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    v6 = *(a2 + 4);
    v3 |= 2u;
    *(this + 36) = v3;
    *(this + 16) = v6;
    v2 = *(a2 + 36);
    if ((v2 & 8) == 0)
    {
LABEL_8:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_14;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 6);
  v3 |= 8u;
  *(this + 36) = v3;
  *(this + 24) = v7;
  v2 = *(a2 + 36);
  if ((v2 & 0x10) == 0)
  {
LABEL_9:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

LABEL_14:
  v8 = *(a2 + 7);
  v3 |= 0x10u;
  *(this + 36) = v3;
  *(this + 28) = v8;
  v2 = *(a2 + 36);
  if ((v2 & 0x40) == 0)
  {
LABEL_10:
    if ((v2 & 4) == 0)
    {
      return this;
    }

LABEL_16:
    v10 = *(a2 + 5);
    *(this + 36) = v3 | 4;
    *(this + 20) = v10;
    return this;
  }

LABEL_15:
  v9 = *(a2 + 33);
  v3 |= 0x40u;
  *(this + 36) = v3;
  *(this + 33) = v9;
  if ((*(a2 + 36) & 4) != 0)
  {
    goto LABEL_16;
  }

  return this;
}

uint64_t CMMsl::AccessorySleepStateConfidenceEpoch::operator=(uint64_t a1, const CMMsl::AccessorySleepStateConfidenceEpoch *a2)
{
  if (a1 != a2)
  {
    CMMsl::AccessorySleepStateConfidenceEpoch::AccessorySleepStateConfidenceEpoch(v9, a2);
    v3 = *(a1 + 36);
    *(a1 + 36) = v17;
    v17 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v10;
    v10 = v4;
    LOBYTE(v4) = *(a1 + 32);
    *(a1 + 32) = v15;
    v15 = v4;
    LODWORD(v4) = *(a1 + 28);
    *(a1 + 28) = v14;
    v14 = v4;
    LOBYTE(v4) = *(a1 + 33);
    *(a1 + 33) = v16;
    v16 = v4;
    LODWORD(v4) = *(a1 + 16);
    v5 = *(a1 + 20);
    v6 = v12;
    *(a1 + 16) = v11;
    *(a1 + 20) = v6;
    v7 = *(a1 + 24);
    *(a1 + 24) = v13;
    v13 = v7;
    v11 = v4;
    v12 = v5;
    PB::Base::~Base(v9);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::AccessorySleepStateConfidenceEpoch *a2, CMMsl::AccessorySleepStateConfidenceEpoch *a3)
{
  v3 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  LOBYTE(v4) = *(this + 32);
  *(this + 32) = *(a2 + 32);
  *(a2 + 32) = v4;
  LODWORD(v4) = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  result = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = result;
  LODWORD(v4) = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v4;
  LOBYTE(v4) = *(this + 33);
  *(this + 33) = *(a2 + 33);
  *(a2 + 33) = v4;
  LODWORD(v4) = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v4;
  return result;
}

float CMMsl::AccessorySleepStateConfidenceEpoch::AccessorySleepStateConfidenceEpoch(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041CCF8;
  *(a1 + 36) = *(a2 + 36);
  *(a2 + 36) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 33) = *(a2 + 33);
  *(a1 + 20) = *(a2 + 20);
  return result;
}

{
  *a1 = off_10041CCF8;
  *(a1 + 36) = *(a2 + 36);
  *(a2 + 36) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 33) = *(a2 + 33);
  *(a1 + 20) = *(a2 + 20);
  return result;
}

uint64_t CMMsl::AccessorySleepStateConfidenceEpoch::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 36);
    *(a2 + 36) = 0;
    v4 = *(a2 + 8);
    v5 = *(a2 + 32);
    v6 = *(a2 + 24);
    v7 = *(a2 + 28);
    v8 = *(a2 + 33);
    v9 = *(a2 + 16);
    v10 = *(a2 + 20);
    v11 = *(a1 + 36);
    *(a1 + 36) = v3;
    v22 = v11;
    v12 = *(a1 + 8);
    *(a1 + 8) = v4;
    v15[0] = off_10041CCF8;
    v15[1] = v12;
    LOBYTE(v12) = *(a1 + 32);
    *(a1 + 32) = v5;
    v20 = v12;
    v13 = *(a1 + 24);
    *(a1 + 24) = v6;
    v18 = v13;
    LODWORD(v12) = *(a1 + 28);
    *(a1 + 28) = v7;
    v19 = v12;
    LOBYTE(v12) = *(a1 + 33);
    *(a1 + 33) = v8;
    v21 = v12;
    LODWORD(v12) = *(a1 + 16);
    LODWORD(v4) = *(a1 + 20);
    *(a1 + 16) = v9;
    *(a1 + 20) = v10;
    v16 = v12;
    v17 = v4;
    PB::Base::~Base(v15);
  }

  return a1;
}

uint64_t CMMsl::AccessorySleepStateConfidenceEpoch::formatText(CMMsl::AccessorySleepStateConfidenceEpoch *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 36);
  if ((v5 & 0x20) != 0)
  {
    PB::TextFormatter::format(a2, "asleep", *(this + 32));
    v5 = *(this + 36);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(this + 36) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "averageConfidence", *(this + 4));
  v5 = *(this + 36);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  PB::TextFormatter::format(a2, "consecutiveEpochs", *(this + 5));
  v5 = *(this + 36);
  if ((v5 & 0x40) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  PB::TextFormatter::format(a2, "initialized", *(this + 33));
  v5 = *(this + 36);
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  PB::TextFormatter::format(a2, "rawConfidence", *(this + 6));
  v5 = *(this + 36);
  if ((v5 & 1) == 0)
  {
LABEL_7:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  PB::TextFormatter::format(a2, "sensorTime", *(this + 1));
  if ((*(this + 36) & 0x10) != 0)
  {
LABEL_8:
    PB::TextFormatter::format(a2, "sequenceNumber", *(this + 7));
  }

LABEL_9:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::AccessorySleepStateConfidenceEpoch::readFrom(CMMsl::AccessorySleepStateConfidenceEpoch *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            goto LABEL_129;
          }

          v21 = *v19;
          *(a2 + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
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
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) <= 3)
      {
        switch(v22)
        {
          case 1:
            *(this + 36) |= 1u;
            v47 = *(a2 + 1);
            v2 = *(a2 + 2);
            v48 = *a2;
            if (v47 > 0xFFFFFFFFFFFFFFF5 || v47 + 10 > v2)
            {
              v59 = 0;
              v60 = 0;
              v51 = 0;
              if (v2 <= v47)
              {
                v2 = *(a2 + 1);
              }

              v61 = v2 - v47;
              v62 = (v48 + v47);
              v63 = v47 + 1;
              while (1)
              {
                if (!v61)
                {
                  v51 = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_112;
                }

                v64 = v63;
                v65 = *v62;
                *(a2 + 1) = v64;
                v51 |= (v65 & 0x7F) << v59;
                if ((v65 & 0x80) == 0)
                {
                  break;
                }

                v59 += 7;
                --v61;
                ++v62;
                v63 = v64 + 1;
                v14 = v60++ > 8;
                if (v14)
                {
                  v51 = 0;
                  goto LABEL_111;
                }
              }

              if (*(a2 + 24))
              {
                v51 = 0;
              }

LABEL_111:
              v2 = v64;
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
                v2 = v53;
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
                  v51 = 0;
                  break;
                }
              }
            }

LABEL_112:
            *(this + 1) = v51;
            goto LABEL_125;
          case 2:
            *(this + 36) |= 0x20u;
            v2 = *(a2 + 1);
            if (v2 >= *(a2 + 2))
            {
              v58 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v57 = *(*a2 + v2++);
              *(a2 + 1) = v2;
              v58 = v57 != 0;
            }

            *(this + 32) = v58;
            goto LABEL_125;
          case 3:
            *(this + 36) |= 2u;
            v31 = *(a2 + 1);
            v2 = *(a2 + 2);
            v32 = *a2;
            if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
            {
              v80 = 0;
              v81 = 0;
              v35 = 0;
              if (v2 <= v31)
              {
                v2 = *(a2 + 1);
              }

              v82 = v2 - v31;
              v83 = (v32 + v31);
              v84 = v31 + 1;
              while (1)
              {
                if (!v82)
                {
                  LODWORD(v35) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_124;
                }

                v85 = v84;
                v86 = *v83;
                *(a2 + 1) = v85;
                v35 |= (v86 & 0x7F) << v80;
                if ((v86 & 0x80) == 0)
                {
                  break;
                }

                v80 += 7;
                --v82;
                ++v83;
                v84 = v85 + 1;
                v14 = v81++ > 8;
                if (v14)
                {
                  LODWORD(v35) = 0;
                  goto LABEL_123;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v35) = 0;
              }

LABEL_123:
              v2 = v85;
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
                v2 = v37;
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

LABEL_124:
            *(this + 4) = v35;
            goto LABEL_125;
        }
      }

      else if (v22 > 5)
      {
        if (v22 == 6)
        {
          *(this + 36) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v56 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v55 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v56 = v55 != 0;
          }

          *(this + 33) = v56;
          goto LABEL_125;
        }

        if (v22 == 7)
        {
          *(this + 36) |= 4u;
          v39 = *(a2 + 1);
          v2 = *(a2 + 2);
          v40 = *a2;
          if (v39 > 0xFFFFFFFFFFFFFFF5 || v39 + 10 > v2)
          {
            v73 = 0;
            v74 = 0;
            v43 = 0;
            if (v2 <= v39)
            {
              v2 = *(a2 + 1);
            }

            v75 = v2 - v39;
            v76 = (v40 + v39);
            v77 = v39 + 1;
            while (1)
            {
              if (!v75)
              {
                LODWORD(v43) = 0;
                *(a2 + 24) = 1;
                goto LABEL_120;
              }

              v78 = v77;
              v79 = *v76;
              *(a2 + 1) = v78;
              v43 |= (v79 & 0x7F) << v73;
              if ((v79 & 0x80) == 0)
              {
                break;
              }

              v73 += 7;
              --v75;
              ++v76;
              v77 = v78 + 1;
              v14 = v74++ > 8;
              if (v14)
              {
                LODWORD(v43) = 0;
                goto LABEL_119;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v43) = 0;
            }

LABEL_119:
            v2 = v78;
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
              v2 = v45;
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

LABEL_120:
          *(this + 5) = v43;
          goto LABEL_125;
        }
      }

      else
      {
        if (v22 == 4)
        {
          *(this + 36) |= 8u;
          v2 = *(a2 + 1);
          if (v2 <= 0xFFFFFFFFFFFFFFFBLL && v2 + 4 <= *(a2 + 2))
          {
            *(this + 6) = *(*a2 + v2);
            v2 = *(a2 + 1) + 4;
            *(a2 + 1) = v2;
          }

          else
          {
            *(a2 + 24) = 1;
          }

          goto LABEL_125;
        }

        if (v22 == 5)
        {
          *(this + 36) |= 0x10u;
          v23 = *(a2 + 1);
          v2 = *(a2 + 2);
          v24 = *a2;
          if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
          {
            v66 = 0;
            v67 = 0;
            v27 = 0;
            if (v2 <= v23)
            {
              v2 = *(a2 + 1);
            }

            v68 = v2 - v23;
            v69 = (v24 + v23);
            v70 = v23 + 1;
            while (1)
            {
              if (!v68)
              {
                LODWORD(v27) = 0;
                *(a2 + 24) = 1;
                goto LABEL_116;
              }

              v71 = v70;
              v72 = *v69;
              *(a2 + 1) = v71;
              v27 |= (v72 & 0x7F) << v66;
              if ((v72 & 0x80) == 0)
              {
                break;
              }

              v66 += 7;
              --v68;
              ++v69;
              v70 = v71 + 1;
              v14 = v67++ > 8;
              if (v14)
              {
                LODWORD(v27) = 0;
                goto LABEL_115;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v27) = 0;
            }

LABEL_115:
            v2 = v71;
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

LABEL_116:
          *(this + 7) = v27;
          goto LABEL_125;
        }
      }

      if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
      {
        v87 = 0;
        return v87 & 1;
      }

      v2 = *(a2 + 1);
LABEL_125:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_129:
  v87 = v4 ^ 1;
  return v87 & 1;
}

uint64_t CMMsl::AccessorySleepStateConfidenceEpoch::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 36);
  if (v4)
  {
    this = PB::Writer::writeVarInt(a2, *(this + 8), 1u);
    v4 = *(v3 + 36);
    if ((v4 & 0x20) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(this + 36) & 0x20) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 32), 2u);
  v4 = *(v3 + 36);
  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  this = PB::Writer::writeVarInt(a2, *(v3 + 16), 3u);
  v4 = *(v3 + 36);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  this = PB::Writer::write(a2, *(v3 + 24), 4u);
  v4 = *(v3 + 36);
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    this = PB::Writer::write(a2, *(v3 + 33), 6u);
    if ((*(v3 + 36) & 4) == 0)
    {
      return this;
    }

    goto LABEL_15;
  }

LABEL_13:
  this = PB::Writer::writeVarInt(a2, *(v3 + 28), 5u);
  v4 = *(v3 + 36);
  if ((v4 & 0x40) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v4 & 4) == 0)
  {
    return this;
  }

LABEL_15:
  v5 = *(v3 + 20);

  return PB::Writer::writeVarInt(a2, v5, 7u);
}

BOOL CMMsl::AccessorySleepStateConfidenceEpoch::operator==(uint64_t a1, uint64_t a2)
{
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

  if ((*(a1 + 36) & 0x20) != 0)
  {
    if ((*(a2 + 36) & 0x20) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((*(a2 + 36) & 0x20) != 0)
  {
    return 0;
  }

  if ((*(a1 + 36) & 2) != 0)
  {
    if ((*(a2 + 36) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 36) & 2) != 0)
  {
    return 0;
  }

  if ((*(a1 + 36) & 8) != 0)
  {
    if ((*(a2 + 36) & 8) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 36) & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 36) & 0x10) != 0)
  {
    if ((*(a2 + 36) & 0x10) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((*(a2 + 36) & 0x10) != 0)
  {
    return 0;
  }

  if ((*(a1 + 36) & 0x40) != 0)
  {
    if ((*(a2 + 36) & 0x40) == 0 || *(a1 + 33) != *(a2 + 33))
    {
      return 0;
    }
  }

  else if ((*(a2 + 36) & 0x40) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 36) & 4) == 0;
  if ((*(a1 + 36) & 4) != 0)
  {
    return (*(a2 + 36) & 4) != 0 && *(a1 + 20) == *(a2 + 20);
  }

  return v2;
}

uint64_t CMMsl::AccessorySleepStateConfidenceEpoch::hash_value(CMMsl::AccessorySleepStateConfidenceEpoch *this)
{
  if (*(this + 36))
  {
    v1 = *(this + 1);
    if ((*(this + 36) & 0x20) != 0)
    {
LABEL_3:
      v2 = *(this + 32);
      if ((*(this + 36) & 2) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v1 = 0;
    if ((*(this + 36) & 0x20) != 0)
    {
      goto LABEL_3;
    }
  }

  v2 = 0;
  if ((*(this + 36) & 2) != 0)
  {
LABEL_4:
    v3 = *(this + 4);
    if ((*(this + 36) & 8) != 0)
    {
      goto LABEL_5;
    }

LABEL_14:
    v5 = 0;
    if ((*(this + 36) & 0x10) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_13:
  v3 = 0;
  if ((*(this + 36) & 8) == 0)
  {
    goto LABEL_14;
  }

LABEL_5:
  v4 = *(this + 6);
  v5 = LODWORD(v4);
  if (v4 == 0.0)
  {
    v5 = 0;
  }

  if ((*(this + 36) & 0x10) != 0)
  {
LABEL_8:
    v6 = *(this + 7);
    if ((*(this + 36) & 0x40) != 0)
    {
      goto LABEL_9;
    }

LABEL_16:
    v7 = 0;
    if ((*(this + 36) & 4) != 0)
    {
      goto LABEL_10;
    }

LABEL_17:
    v8 = 0;
    return v2 ^ v1 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
  }

LABEL_15:
  v6 = 0;
  if ((*(this + 36) & 0x40) == 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  v7 = *(this + 33);
  if ((*(this + 36) & 4) == 0)
  {
    goto LABEL_17;
  }

LABEL_10:
  v8 = *(this + 5);
  return v2 ^ v1 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
}

uint64_t CMMsl::AccessorySleepStateUpdate::AccessorySleepStateUpdate(uint64_t this)
{
  *this = off_10041CD30;
  *(this + 32) = 0;
  return this;
}

{
  *this = off_10041CD30;
  *(this + 32) = 0;
  return this;
}

void CMMsl::AccessorySleepStateUpdate::~AccessorySleepStateUpdate(CMMsl::AccessorySleepStateUpdate *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::AccessorySleepStateUpdate::AccessorySleepStateUpdate(uint64_t this, const CMMsl::AccessorySleepStateUpdate *a2)
{
  *this = off_10041CD30;
  *(this + 32) = 0;
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 32) = 1;
    *(this + 8) = v4;
    v2 = *(a2 + 32);
    if ((v2 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 32) & 2) != 0)
  {
LABEL_5:
    v5 = *(a2 + 4);
    v3 |= 2u;
    *(this + 32) = v3;
    *(this + 16) = v5;
    v2 = *(a2 + 32);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    v6 = *(a2 + 5);
    v3 |= 4u;
    *(this + 32) = v3;
    *(this + 20) = v6;
    v2 = *(a2 + 32);
    if ((v2 & 0x10) == 0)
    {
LABEL_8:
      if ((v2 & 8) == 0)
      {
        return this;
      }

LABEL_12:
      v8 = *(a2 + 6);
      *(this + 32) = v3 | 8;
      *(this + 24) = v8;
      return this;
    }
  }

  else if ((v2 & 0x10) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 7);
  v3 |= 0x10u;
  *(this + 32) = v3;
  *(this + 28) = v7;
  if ((*(a2 + 32) & 8) != 0)
  {
    goto LABEL_12;
  }

  return this;
}

uint64_t CMMsl::AccessorySleepStateUpdate::operator=(uint64_t a1, const CMMsl::AccessorySleepStateUpdate *a2)
{
  if (a1 != a2)
  {
    CMMsl::AccessorySleepStateUpdate::AccessorySleepStateUpdate(v7, a2);
    v3 = *(a1 + 32);
    *(a1 + 32) = v10;
    v10 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v4;
    v5 = *(a1 + 16);
    *(a1 + 16) = v9;
    v9 = v5;
    PB::Base::~Base(v7);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::AccessorySleepStateUpdate *a2, CMMsl::AccessorySleepStateUpdate *a3)
{
  v3 = *(this + 32);
  *(this + 32) = *(a2 + 8);
  *(a2 + 8) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 16);
  *(this + 16) = *(a2 + 4);
  *(a2 + 4) = v4;
  LODWORD(v4) = *(this + 20);
  *(this + 20) = *(a2 + 5);
  *(a2 + 5) = v4;
  LODWORD(v4) = *(this + 28);
  *(this + 28) = *(a2 + 7);
  *(a2 + 7) = v4;
  LODWORD(v4) = *(this + 24);
  *(this + 24) = *(a2 + 6);
  *(a2 + 6) = v4;
  return this;
}

uint64_t CMMsl::AccessorySleepStateUpdate::AccessorySleepStateUpdate(uint64_t result, uint64_t a2)
{
  *result = off_10041CD30;
  *(result + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(result + 8) = *(a2 + 8);
  *(result + 16) = *(a2 + 16);
  *(result + 20) = *(a2 + 20);
  *(result + 28) = *(a2 + 28);
  *(result + 24) = *(a2 + 24);
  return result;
}

{
  *result = off_10041CD30;
  *(result + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(result + 8) = *(a2 + 8);
  *(result + 16) = *(a2 + 16);
  *(result + 20) = *(a2 + 20);
  *(result + 28) = *(a2 + 28);
  *(result + 24) = *(a2 + 24);
  return result;
}

uint64_t CMMsl::AccessorySleepStateUpdate::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 32);
    *(a2 + 32) = 0;
    v4 = *(a2 + 8);
    v11 = *(a1 + 32);
    v5 = *(a1 + 8);
    *(a1 + 8) = v4;
    v9[0] = off_10041CD30;
    v9[1] = v5;
    v6 = *(a1 + 16);
    v7 = *(a2 + 16);
    *(a1 + 32) = v3;
    *(a1 + 16) = v7;
    v10 = v6;
    PB::Base::~Base(v9);
  }

  return a1;
}

uint64_t CMMsl::AccessorySleepStateUpdate::formatText(CMMsl::AccessorySleepStateUpdate *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 32);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "activity", *(this + 4));
    v5 = *(this + 32);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(this + 32) & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "confidenceLevel", *(this + 5));
  v5 = *(this + 32);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  PB::TextFormatter::format(a2, "consecutiveEpochs", *(this + 6));
  v5 = *(this + 32);
  if ((v5 & 1) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  PB::TextFormatter::format(a2, "sensorTime", *(this + 1));
  if ((*(this + 32) & 0x10) != 0)
  {
LABEL_6:
    PB::TextFormatter::format(a2, "sequenceNumber", *(this + 7));
  }

LABEL_7:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::AccessorySleepStateUpdate::readFrom(CMMsl::AccessorySleepStateUpdate *this, PB::Reader *a2)
{
  v3 = *(a2 + 1);
  v2 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v3 < v2 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *a2;
      if (v3 > 0xFFFFFFFFFFFFFFF5 || v3 + 10 > v2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = v2 >= v3;
        v19 = v2 - v3;
        if (!v18)
        {
          v19 = 0;
        }

        v20 = (v7 + v3);
        v21 = v3 + 1;
        while (1)
        {
          if (!v19)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            goto LABEL_140;
          }

          v22 = *v20;
          *(a2 + 1) = v21;
          v17 |= (v22 & 0x7F) << v15;
          if ((v22 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v19;
          ++v20;
          ++v21;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_22;
          }
        }

        if (v4)
        {
          v10 = 0;
        }

        else
        {
          v10 = v17;
        }
      }

      else
      {
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
            goto LABEL_18;
          }
        }
      }

LABEL_22:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v23 = v10 >> 3;
      if ((v10 >> 3) <= 2)
      {
        if (v23 == 1)
        {
          *(this + 32) |= 1u;
          v56 = *(a2 + 1);
          v2 = *(a2 + 2);
          v57 = *a2;
          if (v56 > 0xFFFFFFFFFFFFFFF5 || v56 + 10 > v2)
          {
            v78 = 0;
            v79 = 0;
            v60 = 0;
            if (v2 <= v56)
            {
              v3 = *(a2 + 1);
            }

            else
            {
              v3 = *(a2 + 2);
            }

            v80 = v3 - v56;
            v81 = (v57 + v56);
            v82 = v56 + 1;
            while (1)
            {
              if (!v80)
              {
                v60 = 0;
                *(a2 + 24) = 1;
                goto LABEL_127;
              }

              v83 = v82;
              v84 = *v81;
              *(a2 + 1) = v83;
              v60 |= (v84 & 0x7F) << v78;
              if ((v84 & 0x80) == 0)
              {
                break;
              }

              v78 += 7;
              --v80;
              ++v81;
              v82 = v83 + 1;
              v14 = v79++ > 8;
              if (v14)
              {
                v60 = 0;
                goto LABEL_126;
              }
            }

            if (*(a2 + 24))
            {
              v60 = 0;
            }

LABEL_126:
            v3 = v83;
          }

          else
          {
            v58 = 0;
            v59 = 0;
            v60 = 0;
            v61 = (v57 + v56);
            v62 = v56 + 1;
            while (1)
            {
              v3 = v62;
              *(a2 + 1) = v62;
              v63 = *v61++;
              v60 |= (v63 & 0x7F) << v58;
              if ((v63 & 0x80) == 0)
              {
                break;
              }

              v58 += 7;
              ++v62;
              v14 = v59++ > 8;
              if (v14)
              {
                v60 = 0;
                break;
              }
            }
          }

LABEL_127:
          *(this + 1) = v60;
          goto LABEL_136;
        }

        if (v23 == 2)
        {
          *(this + 32) |= 2u;
          v32 = *(a2 + 1);
          v2 = *(a2 + 2);
          v33 = *a2;
          if (v32 > 0xFFFFFFFFFFFFFFF5 || v32 + 10 > v2)
          {
            v92 = 0;
            v93 = 0;
            v36 = 0;
            if (v2 <= v32)
            {
              v3 = *(a2 + 1);
            }

            else
            {
              v3 = *(a2 + 2);
            }

            v94 = v3 - v32;
            v95 = (v33 + v32);
            v96 = v32 + 1;
            while (1)
            {
              if (!v94)
              {
                LODWORD(v36) = 0;
                *(a2 + 24) = 1;
                goto LABEL_135;
              }

              v97 = v96;
              v98 = *v95;
              *(a2 + 1) = v97;
              v36 |= (v98 & 0x7F) << v92;
              if ((v98 & 0x80) == 0)
              {
                break;
              }

              v92 += 7;
              --v94;
              ++v95;
              v96 = v97 + 1;
              v14 = v93++ > 8;
              if (v14)
              {
                LODWORD(v36) = 0;
                goto LABEL_134;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v36) = 0;
            }

LABEL_134:
            v3 = v97;
          }

          else
          {
            v34 = 0;
            v35 = 0;
            v36 = 0;
            v37 = (v33 + v32);
            v38 = v32 + 1;
            while (1)
            {
              v3 = v38;
              *(a2 + 1) = v38;
              v39 = *v37++;
              v36 |= (v39 & 0x7F) << v34;
              if ((v39 & 0x80) == 0)
              {
                break;
              }

              v34 += 7;
              ++v38;
              v14 = v35++ > 8;
              if (v14)
              {
                LODWORD(v36) = 0;
                break;
              }
            }
          }

LABEL_135:
          *(this + 4) = v36;
          goto LABEL_136;
        }
      }

      else
      {
        switch(v23)
        {
          case 3:
            *(this + 32) |= 4u;
            v40 = *(a2 + 1);
            v2 = *(a2 + 2);
            v41 = *a2;
            if (v40 > 0xFFFFFFFFFFFFFFF5 || v40 + 10 > v2)
            {
              v64 = 0;
              v65 = 0;
              v44 = 0;
              if (v2 <= v40)
              {
                v3 = *(a2 + 1);
              }

              else
              {
                v3 = *(a2 + 2);
              }

              v66 = v3 - v40;
              v67 = (v41 + v40);
              v68 = v40 + 1;
              while (1)
              {
                if (!v66)
                {
                  LODWORD(v44) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_119;
                }

                v69 = v68;
                v70 = *v67;
                *(a2 + 1) = v69;
                v44 |= (v70 & 0x7F) << v64;
                if ((v70 & 0x80) == 0)
                {
                  break;
                }

                v64 += 7;
                --v66;
                ++v67;
                v68 = v69 + 1;
                v14 = v65++ > 8;
                if (v14)
                {
                  LODWORD(v44) = 0;
                  goto LABEL_118;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v44) = 0;
              }

LABEL_118:
              v3 = v69;
            }

            else
            {
              v42 = 0;
              v43 = 0;
              v44 = 0;
              v45 = (v41 + v40);
              v46 = v40 + 1;
              while (1)
              {
                v3 = v46;
                *(a2 + 1) = v46;
                v47 = *v45++;
                v44 |= (v47 & 0x7F) << v42;
                if ((v47 & 0x80) == 0)
                {
                  break;
                }

                v42 += 7;
                ++v46;
                v14 = v43++ > 8;
                if (v14)
                {
                  LODWORD(v44) = 0;
                  break;
                }
              }
            }

LABEL_119:
            *(this + 5) = v44;
            goto LABEL_136;
          case 4:
            *(this + 32) |= 0x10u;
            v48 = *(a2 + 1);
            v2 = *(a2 + 2);
            v49 = *a2;
            if (v48 > 0xFFFFFFFFFFFFFFF5 || v48 + 10 > v2)
            {
              v71 = 0;
              v72 = 0;
              v52 = 0;
              if (v2 <= v48)
              {
                v3 = *(a2 + 1);
              }

              else
              {
                v3 = *(a2 + 2);
              }

              v73 = v3 - v48;
              v74 = (v49 + v48);
              v75 = v48 + 1;
              while (1)
              {
                if (!v73)
                {
                  LODWORD(v52) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_123;
                }

                v76 = v75;
                v77 = *v74;
                *(a2 + 1) = v76;
                v52 |= (v77 & 0x7F) << v71;
                if ((v77 & 0x80) == 0)
                {
                  break;
                }

                v71 += 7;
                --v73;
                ++v74;
                v75 = v76 + 1;
                v14 = v72++ > 8;
                if (v14)
                {
                  LODWORD(v52) = 0;
                  goto LABEL_122;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v52) = 0;
              }

LABEL_122:
              v3 = v76;
            }

            else
            {
              v50 = 0;
              v51 = 0;
              v52 = 0;
              v53 = (v49 + v48);
              v54 = v48 + 1;
              while (1)
              {
                v3 = v54;
                *(a2 + 1) = v54;
                v55 = *v53++;
                v52 |= (v55 & 0x7F) << v50;
                if ((v55 & 0x80) == 0)
                {
                  break;
                }

                v50 += 7;
                ++v54;
                v14 = v51++ > 8;
                if (v14)
                {
                  LODWORD(v52) = 0;
                  break;
                }
              }
            }

LABEL_123:
            *(this + 7) = v52;
            goto LABEL_136;
          case 5:
            *(this + 32) |= 8u;
            v24 = *(a2 + 1);
            v2 = *(a2 + 2);
            v25 = *a2;
            if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v2)
            {
              v85 = 0;
              v86 = 0;
              v28 = 0;
              if (v2 <= v24)
              {
                v3 = *(a2 + 1);
              }

              else
              {
                v3 = *(a2 + 2);
              }

              v87 = v3 - v24;
              v88 = (v25 + v24);
              v89 = v24 + 1;
              while (1)
              {
                if (!v87)
                {
                  LODWORD(v28) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_131;
                }

                v90 = v89;
                v91 = *v88;
                *(a2 + 1) = v90;
                v28 |= (v91 & 0x7F) << v85;
                if ((v91 & 0x80) == 0)
                {
                  break;
                }

                v85 += 7;
                --v87;
                ++v88;
                v89 = v90 + 1;
                v14 = v86++ > 8;
                if (v14)
                {
                  LODWORD(v28) = 0;
                  goto LABEL_130;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v28) = 0;
              }

LABEL_130:
              v3 = v90;
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
                v3 = v30;
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
                  LODWORD(v28) = 0;
                  break;
                }
              }
            }

LABEL_131:
            *(this + 6) = v28;
            goto LABEL_136;
        }
      }

      if (!PB::Reader::skip(a2, v23, v10 & 7, 0))
      {
        v99 = 0;
        return v99 & 1;
      }

      v3 = *(a2 + 1);
      v2 = *(a2 + 2);
LABEL_136:
      v4 = *(a2 + 24);
    }

    while (v3 < v2 && (*(a2 + 24) & 1) == 0);
  }

LABEL_140:
  v99 = v4 ^ 1;
  return v99 & 1;
}

uint64_t CMMsl::AccessorySleepStateUpdate::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 32);
  if (v4)
  {
    this = PB::Writer::writeVarInt(a2, *(this + 8), 1u);
    v4 = *(v3 + 32);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 32) & 2) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::writeVarInt(a2, *(v3 + 16), 2u);
  v4 = *(v3 + 32);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = PB::Writer::writeVarInt(a2, *(v3 + 28), 4u);
    if ((*(v3 + 32) & 8) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = PB::Writer::writeVarInt(a2, *(v3 + 20), 3u);
  v4 = *(v3 + 32);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v4 & 8) == 0)
  {
    return this;
  }

LABEL_11:
  v5 = *(v3 + 24);

  return PB::Writer::writeVarInt(a2, v5, 5u);
}

BOOL CMMsl::AccessorySleepStateUpdate::operator==(uint64_t a1, uint64_t a2)
{
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

  if ((*(a1 + 32) & 2) != 0)
  {
    if ((*(a2 + 32) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 2) != 0)
  {
    return 0;
  }

  if ((*(a1 + 32) & 4) != 0)
  {
    if ((*(a2 + 32) & 4) == 0 || *(a1 + 20) != *(a2 + 20))
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
    if ((*(a2 + 32) & 0x10) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 0x10) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 32) & 8) == 0;
  if ((*(a1 + 32) & 8) != 0)
  {
    return (*(a2 + 32) & 8) != 0 && *(a1 + 24) == *(a2 + 24);
  }

  return v2;
}

uint64_t CMMsl::AccessorySleepStateUpdate::hash_value(CMMsl::AccessorySleepStateUpdate *this)
{
  if (*(this + 32))
  {
    v1 = *(this + 1);
    if ((*(this + 32) & 2) != 0)
    {
LABEL_3:
      v2 = *(this + 4);
      if ((*(this + 32) & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v1 = 0;
    if ((*(this + 32) & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v2 = 0;
  if ((*(this + 32) & 4) != 0)
  {
LABEL_4:
    v3 = *(this + 5);
    if ((*(this + 32) & 0x10) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v4 = 0;
    if ((*(this + 32) & 8) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    v5 = 0;
    return v2 ^ v1 ^ v3 ^ v4 ^ v5;
  }

LABEL_9:
  v3 = 0;
  if ((*(this + 32) & 0x10) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v4 = *(this + 7);
  if ((*(this + 32) & 8) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v5 = *(this + 6);
  return v2 ^ v1 ^ v3 ^ v4 ^ v5;
}

uint64_t CMMsl::AccessoryStepDetectorDebug::AccessoryStepDetectorDebug(uint64_t this)
{
  *this = off_10041CD68;
  *(this + 8) = 0;
  *(this + 40) = 0;
  *(this + 60) = 0;
  return this;
}

{
  *this = off_10041CD68;
  *(this + 8) = 0;
  *(this + 40) = 0;
  *(this + 60) = 0;
  return this;
}

void CMMsl::AccessoryStepDetectorDebug::~AccessoryStepDetectorDebug(CMMsl::AccessoryStepDetectorDebug *this)
{
  *this = off_10041CD68;
  v2 = *(this + 5);
  *(this + 5) = 0;
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

{
  CMMsl::AccessoryStepDetectorDebug::~AccessoryStepDetectorDebug(this);

  operator delete();
}

uint64_t CMMsl::AccessoryStepDetectorDebug::AccessoryStepDetectorDebug(uint64_t this, const CMMsl::AccessoryStepDetectorDebug *a2)
{
  *this = off_10041CD68;
  *(this + 8) = 0;
  *(this + 40) = 0;
  *(this + 60) = 0;
  v2 = *(a2 + 60);
  if ((v2 & 4) != 0)
  {
    v4 = *(a2 + 4);
    v3 = 4;
    *(this + 60) = 4;
    *(this + 32) = v4;
    v2 = *(a2 + 60);
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 60) & 0x10) != 0)
  {
LABEL_5:
    v5 = *(a2 + 13);
    v3 |= 0x10u;
    *(this + 60) = v3;
    *(this + 52) = v5;
    v2 = *(a2 + 60);
  }

LABEL_6:
  if ((v2 & 8) != 0)
  {
    v7 = *(a2 + 12);
    v3 |= 8u;
    *(this + 60) = v3;
    *(this + 48) = v7;
    v2 = *(a2 + 60);
    if ((v2 & 2) == 0)
    {
LABEL_8:
      if ((v2 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_18;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_8;
  }

  v8 = *(a2 + 3);
  v3 |= 2u;
  *(this + 60) = v3;
  *(this + 24) = v8;
  v2 = *(a2 + 60);
  if ((v2 & 1) == 0)
  {
LABEL_9:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_18:
  v9 = *(a2 + 2);
  v3 |= 1u;
  *(this + 60) = v3;
  *(this + 16) = v9;
  if ((*(a2 + 60) & 0x20) != 0)
  {
LABEL_10:
    v6 = *(a2 + 56);
    *(this + 60) = v3 | 0x20;
    *(this + 56) = v6;
  }

LABEL_11:
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

uint64_t CMMsl::AccessoryStepDetectorDebug::operator=(uint64_t a1, const CMMsl::AccessoryStepDetectorDebug *a2)
{
  if (a1 != a2)
  {
    CMMsl::AccessoryStepDetectorDebug::AccessoryStepDetectorDebug(&v10, a2);
    v3 = *(a1 + 60);
    *(a1 + 60) = v17;
    v17 = v3;
    v4 = *(a1 + 32);
    *(a1 + 32) = v13;
    v13 = v4;
    v5 = *(a1 + 48);
    *(a1 + 48) = v15;
    v15 = v5;
    v6 = *(a1 + 16);
    *(a1 + 16) = v12;
    v12 = v6;
    LOBYTE(v3) = *(a1 + 56);
    *(a1 + 56) = v16;
    v16 = v3;
    v7 = *(a1 + 40);
    *(a1 + 40) = v14;
    v14 = v7;
    v8 = *(a1 + 8);
    *(a1 + 8) = v11;
    v11 = v8;
    CMMsl::AccessoryStepDetectorDebug::~AccessoryStepDetectorDebug(&v10);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::AccessoryStepDetectorDebug *a2, CMMsl::AccessoryStepDetectorDebug *a3)
{
  v3 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v3;
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v5;
  v6 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v6;
  v7 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v7;
  result = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = result;
  LOBYTE(v6) = *(this + 56);
  *(this + 56) = *(a2 + 56);
  *(a2 + 56) = v6;
  v9 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v9;
  v10 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v10;
  return result;
}

uint64_t CMMsl::AccessoryStepDetectorDebug::AccessoryStepDetectorDebug(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041CD68;
  *(a1 + 8) = 0;
  *(a1 + 40) = 0;
  *(a1 + 60) = *(a2 + 60);
  *(a2 + 60) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 56) = *(a2 + 56);
  v4 = *(a2 + 40);
  *(a2 + 40) = 0;
  v5 = *(a1 + 40);
  *(a1 + 40) = v4;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(a2 + 8);
  *(a2 + 8) = 0;
  v7 = *(a1 + 8);
  *(a1 + 8) = v6;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  return a1;
}

uint64_t CMMsl::AccessoryStepDetectorDebug::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::AccessoryStepDetectorDebug::AccessoryStepDetectorDebug(&v10, a2);
    v3 = *(a1 + 60);
    *(a1 + 60) = v17;
    v17 = v3;
    v4 = *(a1 + 32);
    *(a1 + 32) = v13;
    v13 = v4;
    v5 = *(a1 + 48);
    *(a1 + 48) = v15;
    v15 = v5;
    v6 = *(a1 + 16);
    *(a1 + 16) = v12;
    v12 = v6;
    LOBYTE(v3) = *(a1 + 56);
    *(a1 + 56) = v16;
    v16 = v3;
    v7 = *(a1 + 40);
    *(a1 + 40) = v14;
    v14 = v7;
    v8 = *(a1 + 8);
    *(a1 + 8) = v11;
    v11 = v8;
    CMMsl::AccessoryStepDetectorDebug::~AccessoryStepDetectorDebug(&v10);
  }

  return a1;
}

uint64_t CMMsl::AccessoryStepDetectorDebug::formatText(CMMsl::AccessoryStepDetectorDebug *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if ((*(this + 60) & 0x20) != 0)
  {
    PB::TextFormatter::format(a2, "detectedSteps", *(this + 56));
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "firstStepFeatures");
  }

  v6 = *(this + 60);
  if ((v6 & 8) != 0)
  {
    PB::TextFormatter::format(a2, "fsmEndState", *(this + 12));
    v6 = *(this + 60);
    if ((v6 & 0x10) == 0)
    {
LABEL_7:
      if ((v6 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_18;
    }
  }

  else if ((*(this + 60) & 0x10) == 0)
  {
    goto LABEL_7;
  }

  PB::TextFormatter::format(a2, "fsmStartState", *(this + 13));
  v6 = *(this + 60);
  if ((v6 & 1) == 0)
  {
LABEL_8:
    if ((v6 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  PB::TextFormatter::format(a2, "impulseEndTime", *(this + 2));
  v6 = *(this + 60);
  if ((v6 & 2) == 0)
  {
LABEL_9:
    if ((v6 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_19:
  PB::TextFormatter::format(a2, "impulseStartTime", *(this + 3));
  if ((*(this + 60) & 4) != 0)
  {
LABEL_10:
    PB::TextFormatter::format(a2, "imuTimestamp", *(this + 4));
  }

LABEL_11:
  v7 = *(this + 5);
  if (v7)
  {
    (*(*v7 + 32))(v7, a2, "stepLikelihoodFeatures");
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::AccessoryStepDetectorDebug::readFrom(CMMsl::AccessoryStepDetectorDebug *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            goto LABEL_94;
          }

          v21 = *v19;
          *(a2 + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
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
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) > 4)
      {
        if (v22 > 6)
        {
          if (v22 == 7)
          {
            operator new();
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
            *(this + 60) |= 1u;
            v38 = *(a2 + 1);
            if (v38 > 0xFFFFFFFFFFFFFFF7 || v38 + 8 > *(a2 + 2))
            {
LABEL_51:
              *(a2 + 24) = 1;
              goto LABEL_90;
            }

            *(this + 2) = *(*a2 + v38);
            goto LABEL_81;
          }

          if (v22 == 6)
          {
            *(this + 60) |= 0x20u;
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

            *(this + 56) = v35;
            goto LABEL_90;
          }
        }
      }

      else if (v22 > 2)
      {
        if (v22 == 3)
        {
          *(this + 60) |= 8u;
          v40 = *(a2 + 1);
          v39 = *(a2 + 2);
          v41 = *a2;
          if (v40 > 0xFFFFFFFFFFFFFFF5 || v40 + 10 > v39)
          {
            v48 = 0;
            v49 = 0;
            v44 = 0;
            v17 = v39 >= v40;
            v50 = v39 - v40;
            if (!v17)
            {
              v50 = 0;
            }

            v51 = (v41 + v40);
            v52 = v40 + 1;
            while (1)
            {
              if (!v50)
              {
                LODWORD(v44) = 0;
                *(a2 + 24) = 1;
                goto LABEL_86;
              }

              v53 = *v51;
              *(a2 + 1) = v52;
              v44 |= (v53 & 0x7F) << v48;
              if ((v53 & 0x80) == 0)
              {
                break;
              }

              v48 += 7;
              --v50;
              ++v51;
              ++v52;
              v14 = v49++ > 8;
              if (v14)
              {
LABEL_69:
                LODWORD(v44) = 0;
                goto LABEL_86;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v44) = 0;
            }
          }

          else
          {
            v42 = 0;
            v43 = 0;
            v44 = 0;
            v45 = (v41 + v40);
            v46 = v40 + 1;
            while (1)
            {
              *(a2 + 1) = v46;
              v47 = *v45++;
              v44 |= (v47 & 0x7F) << v42;
              if ((v47 & 0x80) == 0)
              {
                break;
              }

              v42 += 7;
              ++v46;
              v14 = v43++ > 8;
              if (v14)
              {
                goto LABEL_69;
              }
            }
          }

LABEL_86:
          *(this + 12) = v44;
          goto LABEL_90;
        }

        if (v22 == 4)
        {
          *(this + 60) |= 2u;
          v36 = *(a2 + 1);
          if (v36 > 0xFFFFFFFFFFFFFFF7 || v36 + 8 > *(a2 + 2))
          {
            goto LABEL_51;
          }

          *(this + 3) = *(*a2 + v36);
          goto LABEL_81;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(this + 60) |= 4u;
          v37 = *(a2 + 1);
          if (v37 > 0xFFFFFFFFFFFFFFF7 || v37 + 8 > *(a2 + 2))
          {
            goto LABEL_51;
          }

          *(this + 4) = *(*a2 + v37);
LABEL_81:
          *(a2 + 1) += 8;
          goto LABEL_90;
        }

        if (v22 == 2)
        {
          *(this + 60) |= 0x10u;
          v24 = *(a2 + 1);
          v23 = *(a2 + 2);
          v25 = *a2;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
          {
            v54 = 0;
            v55 = 0;
            v28 = 0;
            v17 = v23 >= v24;
            v56 = v23 - v24;
            if (!v17)
            {
              v56 = 0;
            }

            v57 = (v25 + v24);
            v58 = v24 + 1;
            while (1)
            {
              if (!v56)
              {
                LODWORD(v28) = 0;
                *(a2 + 24) = 1;
                goto LABEL_89;
              }

              v59 = *v57;
              *(a2 + 1) = v58;
              v28 |= (v59 & 0x7F) << v54;
              if ((v59 & 0x80) == 0)
              {
                break;
              }

              v54 += 7;
              --v56;
              ++v57;
              ++v58;
              v14 = v55++ > 8;
              if (v14)
              {
LABEL_77:
                LODWORD(v28) = 0;
                goto LABEL_89;
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
                goto LABEL_77;
              }
            }
          }

LABEL_89:
          *(this + 13) = v28;
          goto LABEL_90;
        }
      }

      if ((PB::Reader::skip(a2, v22, v10 & 7, 0) & 1) == 0)
      {
        v61 = 0;
        return v61 & 1;
      }

LABEL_90:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_94:
  v61 = v4 ^ 1;
  return v61 & 1;
}

uint64_t CMMsl::StepLikelihoodFeatures::StepLikelihoodFeatures(uint64_t this)
{
  *this = off_1004222F0;
  *(this + 96) = 0;
  return this;
}

{
  *this = off_1004222F0;
  *(this + 96) = 0;
  return this;
}

uint64_t CMMsl::FirstStepFeatures::FirstStepFeatures(uint64_t this)
{
  *this = off_10041E4D0;
  *(this + 44) = 0;
  return this;
}

{
  *this = off_10041E4D0;
  *(this + 44) = 0;
  return this;
}

uint64_t CMMsl::AccessoryStepDetectorDebug::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 60);
  if ((v4 & 4) != 0)
  {
    this = PB::Writer::write(a2, *(this + 32), 1u);
    v4 = *(v3 + 60);
    if ((v4 & 0x10) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*(this + 60) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::writeVarInt(a2, *(v3 + 52), 2u);
  v4 = *(v3 + 60);
  if ((v4 & 8) == 0)
  {
LABEL_4:
    if ((v4 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = PB::Writer::writeVarInt(a2, *(v3 + 48), 3u);
  v4 = *(v3 + 60);
  if ((v4 & 2) == 0)
  {
LABEL_5:
    if ((v4 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = PB::Writer::write(a2, *(v3 + 24), 4u);
  v4 = *(v3 + 60);
  if ((v4 & 1) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_18:
  this = PB::Writer::write(a2, *(v3 + 16), 5u);
  if ((*(v3 + 60) & 0x20) != 0)
  {
LABEL_7:
    this = PB::Writer::write(a2, *(v3 + 56), 6u);
  }

LABEL_8:
  v5 = *(v3 + 40);
  if (v5)
  {
    this = PB::Writer::writeSubmessage(a2, v5, 7u);
  }

  v6 = *(v3 + 8);
  if (v6)
  {

    return PB::Writer::writeSubmessage(a2, v6, 8u);
  }

  return this;
}

BOOL CMMsl::AccessoryStepDetectorDebug::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 60);
  if ((*(a1 + 60) & 4) != 0)
  {
    if ((*(a2 + 60) & 4) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((*(a2 + 60) & 4) != 0)
  {
    return 0;
  }

  if ((*(a1 + 60) & 0x10) != 0)
  {
    if ((*(a2 + 60) & 0x10) == 0 || *(a1 + 52) != *(a2 + 52))
    {
      return 0;
    }
  }

  else if ((*(a2 + 60) & 0x10) != 0)
  {
    return 0;
  }

  if ((*(a1 + 60) & 8) != 0)
  {
    if ((*(a2 + 60) & 8) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((*(a2 + 60) & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 60) & 2) != 0)
  {
    if ((*(a2 + 60) & 2) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 60) & 2) != 0)
  {
    return 0;
  }

  if (*(a1 + 60))
  {
    if ((*(a2 + 60) & 1) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if (*(a2 + 60))
  {
    return 0;
  }

  if ((*(a1 + 60) & 0x20) != 0)
  {
    if ((*(a2 + 60) & 0x20) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((*(a2 + 60) & 0x20) != 0)
  {
    return 0;
  }

  v5 = *(a1 + 40);
  v6 = *(a2 + 40);
  if (v5)
  {
    if (!v6 || !CMMsl::StepLikelihoodFeatures::operator==(v5, v6))
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v7 = *(a2 + 8);
  result = v7 == 0;
  if (!*(a1 + 8))
  {
    return result;
  }

  return v7 && CMMsl::FirstStepFeatures::operator==(*(a1 + 8), v7);
}

BOOL CMMsl::StepLikelihoodFeatures::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 96);
  v3 = *(a2 + 96);
  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if ((*(a1 + 96) & 0x400) != 0)
  {
    if ((*(a2 + 96) & 0x400) == 0 || *(a1 + 88) != *(a2 + 88))
    {
      return 0;
    }
  }

  else if ((*(a2 + 96) & 0x400) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 96) & 0x200) != 0)
  {
    if ((*(a2 + 96) & 0x200) == 0 || *(a1 + 80) != *(a2 + 80))
    {
      return 0;
    }
  }

  else if ((*(a2 + 96) & 0x200) != 0)
  {
    return 0;
  }

  if ((*(a1 + 96) & 0x100) != 0)
  {
    if ((*(a2 + 96) & 0x100) == 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if ((*(a2 + 96) & 0x100) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

  if ((v2 & 2) != 0)
  {
    if ((v3 & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((v3 & 2) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  v4 = (v3 & 1) == 0;
  if (v2)
  {
    return (v3 & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return v4;
}

BOOL CMMsl::FirstStepFeatures::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 44) & 2) != 0)
  {
    if ((*(a2 + 44) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 44) & 2) != 0)
  {
    return 0;
  }

  if ((*(a1 + 44) & 4) != 0)
  {
    if ((*(a2 + 44) & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 44) & 4) != 0)
  {
    return 0;
  }

  if ((*(a1 + 44) & 8) != 0)
  {
    if ((*(a2 + 44) & 8) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((*(a2 + 44) & 8) != 0)
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

  v2 = (*(a2 + 44) & 0x10) == 0;
  if ((*(a1 + 44) & 0x10) != 0)
  {
    return (*(a2 + 44) & 0x10) != 0 && *(a1 + 40) == *(a2 + 40);
  }

  return v2;
}

unint64_t CMMsl::AccessoryStepDetectorDebug::hash_value(CMMsl::AccessoryStepDetectorDebug *this)
{
  if ((*(this + 60) & 4) != 0)
  {
    if (*(this + 4) == 0.0)
    {
      v2 = 0;
    }

    else
    {
      v2 = *(this + 4);
    }

    if ((*(this + 60) & 0x10) != 0)
    {
LABEL_3:
      v3 = *(this + 13);
      if ((*(this + 60) & 8) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v2 = 0;
    if ((*(this + 60) & 0x10) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*(this + 60) & 8) != 0)
  {
LABEL_4:
    v4 = *(this + 12);
    if ((*(this + 60) & 2) != 0)
    {
      goto LABEL_5;
    }

LABEL_20:
    v5 = 0;
    if (*(this + 60))
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_19:
  v4 = 0;
  if ((*(this + 60) & 2) == 0)
  {
    goto LABEL_20;
  }

LABEL_5:
  if (*(this + 3) == 0.0)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(this + 3);
  }

  if (*(this + 60))
  {
LABEL_9:
    if (*(this + 2) == 0.0)
    {
      v6 = 0;
    }

    else
    {
      v6 = *(this + 2);
    }

    if ((*(this + 60) & 0x20) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_22;
  }

LABEL_21:
  v6 = 0;
  if ((*(this + 60) & 0x20) != 0)
  {
LABEL_13:
    v7 = *(this + 56);
    goto LABEL_23;
  }

LABEL_22:
  v7 = 0;
LABEL_23:
  v8 = *(this + 5);
  if (v8)
  {
    v9 = CMMsl::StepLikelihoodFeatures::hash_value(v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(this + 1);
  if (v10)
  {
    v10 = CMMsl::FirstStepFeatures::hash_value(v10);
  }

  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v9 ^ v10;
}

uint64_t CMMsl::AccessoryStepDetectorDebug::makeStepLikelihoodFeatures(uint64_t this)
{
  if (!*(this + 40))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::AccessoryStepDetectorDebug::makeFirstStepFeatures(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::AccessoryWake::AccessoryWake(uint64_t this)
{
  *this = off_10041CDA0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 52) = 0;
  return this;
}

{
  *this = off_10041CDA0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 52) = 0;
  return this;
}

void CMMsl::AccessoryWake::~AccessoryWake(CMMsl::AccessoryWake *this)
{
  *this = off_10041CDA0;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::AccessoryWake::~AccessoryWake(this);

  operator delete();
}

CMMsl::AccessoryWake *CMMsl::AccessoryWake::AccessoryWake(CMMsl::AccessoryWake *this, const CMMsl::AccessoryWake *a2)
{
  *this = off_10041CDA0;
  *(this + 1) = 0;
  v3 = (this + 8);
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 13) = 0;
  v4 = *(a2 + 52);
  if ((v4 & 4) != 0)
  {
    v6 = *(a2 + 11);
    v5 = 4;
    *(this + 52) = 4;
    *(this + 11) = v6;
    v4 = *(a2 + 52);
    if ((v4 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v5 = 0;
  if (*(a2 + 52))
  {
LABEL_5:
    v7 = *(a2 + 4);
    v5 |= 1u;
    *(this + 52) = v5;
    *(this + 4) = v7;
    v4 = *(a2 + 52);
  }

LABEL_6:
  if ((v4 & 8) == 0)
  {
    if ((v4 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v10 = *(a2 + 12);
  v5 |= 8u;
  *(this + 52) = v5;
  *(this + 12) = v10;
  if ((*(a2 + 52) & 2) != 0)
  {
LABEL_8:
    v8 = *(a2 + 10);
    *(this + 52) = v5 | 2;
    *(this + 10) = v8;
  }

LABEL_9:
  if (this != a2)
  {
    sub_100035D1C(v3, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 2);
  }

  return this;
}

uint64_t CMMsl::AccessoryWake::operator=(uint64_t a1, const CMMsl::AccessoryWake *a2)
{
  if (a1 != a2)
  {
    CMMsl::AccessoryWake::AccessoryWake(v8, a2);
    v3 = *(a1 + 32);
    *(a1 + 32) = v11;
    v11 = v3;
    v4 = *(a1 + 40);
    *(a1 + 40) = v12;
    v12 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v9;
    v9 = v5;
    v6 = *(a1 + 24);
    *(a1 + 24) = v10;
    v10 = v6;
    CMMsl::AccessoryWake::~AccessoryWake(v8);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::AccessoryWake *a2, CMMsl::AccessoryWake *a3)
{
  v3 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v3;
  v4 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v4;
  result = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = result;
  v6 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v6;
  v7 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v7;
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

uint64_t CMMsl::AccessoryWake::AccessoryWake(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041CDA0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 52) = *(a2 + 52);
  *(a2 + 52) = 0;
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  sub_1002A2DD0(a1 + 8, (a2 + 8));
  return a1;
}

uint64_t CMMsl::AccessoryWake::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::AccessoryWake::AccessoryWake(v8, a2);
    v3 = *(a1 + 32);
    *(a1 + 32) = v11;
    v11 = v3;
    v4 = *(a1 + 40);
    *(a1 + 40) = v12;
    v12 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v9;
    v9 = v5;
    v6 = *(a1 + 24);
    *(a1 + 24) = v10;
    v10 = v6;
    CMMsl::AccessoryWake::~AccessoryWake(v8);
  }

  return a1;
}

uint64_t CMMsl::AccessoryWake::formatText(CMMsl::AccessoryWake *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 52);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "hostState", *(this + 10));
    v5 = *(this + 52);
  }

  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(a2, "location", *(this + 11));
  }

  v6 = *(this + 1);
  v7 = *(this + 2);
  while (v6 != v7)
  {
    v8 = *v6++;
    PB::TextFormatter::format(a2, "s7q8", v8);
  }

  v9 = *(this + 52);
  if ((v9 & 8) != 0)
  {
    PB::TextFormatter::format(a2, "sensorState", *(this + 12));
    v9 = *(this + 52);
  }

  if (v9)
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 4));
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::AccessoryWake::readFrom(CMMsl::AccessoryWake *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v14 = 0;
        v15 = 0;
        v10 = 0;
        v16 = v3 >= v2;
        v17 = v3 - v2;
        if (!v16)
        {
          v17 = 0;
        }

        v18 = (v7 + v2);
        v19 = v2 + 1;
        while (1)
        {
          if (!v17)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            goto LABEL_167;
          }

          v20 = *v18;
          *(a2 + 1) = v19;
          v10 |= (v20 & 0x7F) << v14;
          if ((v20 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          --v17;
          ++v18;
          ++v19;
          v40 = v15++ > 8;
          if (v40)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
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
          v40 = v9++ > 8;
          if (v40)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      v21 = v10 & 7;
      if (v4 & 1 | (v21 == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) <= 2)
      {
        if (v22 == 1)
        {
          *(this + 52) |= 4u;
          v70 = *(a2 + 1);
          v69 = *(a2 + 2);
          v71 = *a2;
          if (v70 > 0xFFFFFFFFFFFFFFF5 || v70 + 10 > v69)
          {
            v90 = 0;
            v91 = 0;
            v74 = 0;
            v16 = v69 >= v70;
            v92 = v69 - v70;
            if (!v16)
            {
              v92 = 0;
            }

            v93 = (v71 + v70);
            v94 = v70 + 1;
            while (1)
            {
              if (!v92)
              {
                LODWORD(v74) = 0;
                *(a2 + 24) = 1;
                goto LABEL_141;
              }

              v95 = *v93;
              *(a2 + 1) = v94;
              v74 |= (v95 & 0x7F) << v90;
              if ((v95 & 0x80) == 0)
              {
                break;
              }

              v90 += 7;
              --v92;
              ++v93;
              ++v94;
              v40 = v91++ > 8;
              if (v40)
              {
LABEL_116:
                LODWORD(v74) = 0;
                goto LABEL_141;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v74) = 0;
            }
          }

          else
          {
            v72 = 0;
            v73 = 0;
            v74 = 0;
            v75 = (v71 + v70);
            v76 = v70 + 1;
            while (1)
            {
              *(a2 + 1) = v76;
              v77 = *v75++;
              v74 |= (v77 & 0x7F) << v72;
              if ((v77 & 0x80) == 0)
              {
                break;
              }

              v72 += 7;
              ++v76;
              v40 = v73++ > 8;
              if (v40)
              {
                goto LABEL_116;
              }
            }
          }

LABEL_141:
          *(this + 11) = v74;
          goto LABEL_163;
        }

        if (v22 == 2)
        {
          *(this + 52) |= 1u;
          v50 = *(a2 + 1);
          if (v50 <= 0xFFFFFFFFFFFFFFF7 && v50 + 8 <= *(a2 + 2))
          {
            *(this + 4) = *(*a2 + v50);
            *(a2 + 1) += 8;
          }

          else
          {
            *(a2 + 24) = 1;
          }

          goto LABEL_163;
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            *(this + 52) |= 8u;
            v52 = *(a2 + 1);
            v51 = *(a2 + 2);
            v53 = *a2;
            if (v52 > 0xFFFFFFFFFFFFFFF5 || v52 + 10 > v51)
            {
              v78 = 0;
              v79 = 0;
              v56 = 0;
              v16 = v51 >= v52;
              v80 = v51 - v52;
              if (!v16)
              {
                v80 = 0;
              }

              v81 = (v53 + v52);
              v82 = v52 + 1;
              while (1)
              {
                if (!v80)
                {
                  LODWORD(v56) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_135;
                }

                v83 = *v81;
                *(a2 + 1) = v82;
                v56 |= (v83 & 0x7F) << v78;
                if ((v83 & 0x80) == 0)
                {
                  break;
                }

                v78 += 7;
                --v80;
                ++v81;
                ++v82;
                v40 = v79++ > 8;
                if (v40)
                {
LABEL_100:
                  LODWORD(v56) = 0;
                  goto LABEL_135;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v56) = 0;
              }
            }

            else
            {
              v54 = 0;
              v55 = 0;
              v56 = 0;
              v57 = (v53 + v52);
              v58 = v52 + 1;
              while (1)
              {
                *(a2 + 1) = v58;
                v59 = *v57++;
                v56 |= (v59 & 0x7F) << v54;
                if ((v59 & 0x80) == 0)
                {
                  break;
                }

                v54 += 7;
                ++v58;
                v40 = v55++ > 8;
                if (v40)
                {
                  goto LABEL_100;
                }
              }
            }

LABEL_135:
            *(this + 12) = v56;
            goto LABEL_163;
          case 4:
            *(this + 52) |= 2u;
            v61 = *(a2 + 1);
            v60 = *(a2 + 2);
            v62 = *a2;
            if (v61 > 0xFFFFFFFFFFFFFFF5 || v61 + 10 > v60)
            {
              v84 = 0;
              v85 = 0;
              v65 = 0;
              v16 = v60 >= v61;
              v86 = v60 - v61;
              if (!v16)
              {
                v86 = 0;
              }

              v87 = (v62 + v61);
              v88 = v61 + 1;
              while (1)
              {
                if (!v86)
                {
                  LODWORD(v65) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_138;
                }

                v89 = *v87;
                *(a2 + 1) = v88;
                v65 |= (v89 & 0x7F) << v84;
                if ((v89 & 0x80) == 0)
                {
                  break;
                }

                v84 += 7;
                --v86;
                ++v87;
                ++v88;
                v40 = v85++ > 8;
                if (v40)
                {
LABEL_108:
                  LODWORD(v65) = 0;
                  goto LABEL_138;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v65) = 0;
              }
            }

            else
            {
              v63 = 0;
              v64 = 0;
              v65 = 0;
              v66 = (v62 + v61);
              v67 = v61 + 1;
              while (1)
              {
                *(a2 + 1) = v67;
                v68 = *v66++;
                v65 |= (v68 & 0x7F) << v63;
                if ((v68 & 0x80) == 0)
                {
                  break;
                }

                v63 += 7;
                ++v67;
                v40 = v64++ > 8;
                if (v40)
                {
                  goto LABEL_108;
                }
              }
            }

LABEL_138:
            *(this + 10) = v65;
            goto LABEL_163;
          case 5:
            if (v21 == 2)
            {
              if (PB::Reader::placeMark())
              {
                goto LABEL_169;
              }

              if (*(a2 + 1) < *(a2 + 2) && (*(a2 + 24) & 1) == 0)
              {
                v23 = *(this + 2);
                while (1)
                {
                  v24 = *(this + 3);
                  if (v23 >= v24)
                  {
                    v25 = *(this + 1);
                    v26 = v23 - v25;
                    v27 = (v23 - v25) >> 2;
                    v28 = v27 + 1;
                    if ((v27 + 1) >> 62)
                    {
                      goto LABEL_170;
                    }

                    v29 = v24 - v25;
                    if (v29 >> 1 > v28)
                    {
                      v28 = v29 >> 1;
                    }

                    if (v29 >= 0x7FFFFFFFFFFFFFFCLL)
                    {
                      v30 = 0x3FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v30 = v28;
                    }

                    if (v30)
                    {
                      sub_10002290C(this + 8, v30);
                    }

                    v31 = (v23 - v25) >> 2;
                    v32 = (4 * v27);
                    v33 = (4 * v27 - 4 * v31);
                    *v32 = 0;
                    v23 = (v32 + 1);
                    memcpy(v33, v25, v26);
                    v34 = *(this + 1);
                    *(this + 1) = v33;
                    *(this + 2) = v23;
                    *(this + 3) = 0;
                    if (v34)
                    {
                      operator delete(v34);
                    }
                  }

                  else
                  {
                    *v23 = 0;
                    v23 += 4;
                  }

                  *(this + 2) = v23;
                  v36 = *(a2 + 1);
                  v35 = *(a2 + 2);
                  v37 = *a2;
                  v38 = 0;
                  v39 = 0;
                  v40 = v36 > 0xFFFFFFFFFFFFFFF5 || v36 + 10 > v35;
                  if (v40)
                  {
                    break;
                  }

                  v46 = 0;
                  v47 = (v37 + v36);
                  v48 = v36 + 1;
                  while (1)
                  {
                    v44 = v48;
                    *(a2 + 1) = v48;
                    v49 = *v47++;
                    v46 |= (v49 & 0x7F) << v38;
                    if ((v49 & 0x80) == 0)
                    {
                      break;
                    }

                    v38 += 7;
                    ++v48;
                    v40 = v39++ > 8;
                    if (v40)
                    {
                      goto LABEL_59;
                    }
                  }

LABEL_62:
                  *(v23 - 1) = v46;
                  if (v44 >= v35 || (*(a2 + 24) & 1) != 0)
                  {
                    goto LABEL_129;
                  }
                }

                v46 = 0;
                v41 = v35 - v36;
                if (v35 < v36)
                {
                  v41 = 0;
                }

                v42 = (v37 + v36);
                v43 = v36 + 1;
                while (v41)
                {
                  v44 = v43;
                  v45 = *v42;
                  *(a2 + 1) = v44;
                  v46 |= (v45 & 0x7F) << v38;
                  if ((v45 & 0x80) == 0)
                  {
                    if (*(a2 + 24))
                    {
                      LODWORD(v46) = 0;
                    }

                    goto LABEL_62;
                  }

                  v38 += 7;
                  --v41;
                  ++v42;
                  v43 = v44 + 1;
                  v40 = v39++ > 8;
                  if (v40)
                  {
LABEL_59:
                    LODWORD(v46) = 0;
                    goto LABEL_62;
                  }
                }

                *(a2 + 24) = 1;
                *(v23 - 1) = 0;
              }

LABEL_129:
              PB::Reader::recallMark();
            }

            else
            {
              v97 = *(this + 2);
              v96 = *(this + 3);
              if (v97 >= v96)
              {
                v99 = *(this + 1);
                v100 = v97 - v99;
                v101 = (v97 - v99) >> 2;
                v102 = v101 + 1;
                if ((v101 + 1) >> 62)
                {
LABEL_170:
                  sub_10000CD24();
                }

                v103 = v96 - v99;
                if (v103 >> 1 > v102)
                {
                  v102 = v103 >> 1;
                }

                if (v103 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v104 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v104 = v102;
                }

                if (v104)
                {
                  sub_10002290C(this + 8, v104);
                }

                v105 = (v97 - v99) >> 2;
                v106 = (4 * v101);
                v107 = (4 * v101 - 4 * v105);
                *v106 = 0;
                v98 = v106 + 1;
                memcpy(v107, v99, v100);
                v108 = *(this + 1);
                *(this + 1) = v107;
                *(this + 2) = v98;
                *(this + 3) = 0;
                if (v108)
                {
                  operator delete(v108);
                }
              }

              else
              {
                *v97 = 0;
                v98 = v97 + 4;
              }

              *(this + 2) = v98;
              v110 = *(a2 + 1);
              v109 = *(a2 + 2);
              v111 = *a2;
              if (v110 > 0xFFFFFFFFFFFFFFF5 || v110 + 10 > v109)
              {
                v118 = 0;
                v119 = 0;
                v114 = 0;
                v16 = v109 >= v110;
                v120 = v109 - v110;
                if (!v16)
                {
                  v120 = 0;
                }

                v121 = (v111 + v110);
                v122 = v110 + 1;
                while (1)
                {
                  if (!v120)
                  {
                    LODWORD(v114) = 0;
                    *(a2 + 24) = 1;
                    goto LABEL_162;
                  }

                  v123 = *v121;
                  *(a2 + 1) = v122;
                  v114 |= (v123 & 0x7F) << v118;
                  if ((v123 & 0x80) == 0)
                  {
                    break;
                  }

                  v118 += 7;
                  --v120;
                  ++v121;
                  ++v122;
                  v40 = v119++ > 8;
                  if (v40)
                  {
LABEL_158:
                    LODWORD(v114) = 0;
                    goto LABEL_162;
                  }
                }

                if (*(a2 + 24))
                {
                  LODWORD(v114) = 0;
                }
              }

              else
              {
                v112 = 0;
                v113 = 0;
                v114 = 0;
                v115 = (v111 + v110);
                v116 = v110 + 1;
                while (1)
                {
                  *(a2 + 1) = v116;
                  v117 = *v115++;
                  v114 |= (v117 & 0x7F) << v112;
                  if ((v117 & 0x80) == 0)
                  {
                    break;
                  }

                  v112 += 7;
                  ++v116;
                  v40 = v113++ > 8;
                  if (v40)
                  {
                    goto LABEL_158;
                  }
                }
              }

LABEL_162:
              *(v98 - 1) = v114;
            }

            goto LABEL_163;
        }
      }

      if ((PB::Reader::skip(a2, v22, v21, 0) & 1) == 0)
      {
LABEL_169:
        v124 = 0;
        return v124 & 1;
      }

LABEL_163:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_167:
  v124 = v4 ^ 1;
  return v124 & 1;
}