uint64_t CMMsl::PDRFenceState::readFrom(CMMsl::PDRFenceState *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
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
          goto LABEL_18;
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        goto LABEL_90;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 34) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_68;
          }

          *(this + 1) = *(*a2 + v2);
          goto LABEL_83;
        case 2u:
          *(this + 34) |= 0x200u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_68;
          }

          *(this + 13) = *(*a2 + v2);
          goto LABEL_64;
        case 3u:
          *(this + 34) |= 0x400u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_68;
          }

          *(this + 14) = *(*a2 + v2);
          goto LABEL_64;
        case 4u:
          *(this + 34) |= 0x800u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_68;
          }

          *(this + 15) = *(*a2 + v2);
          goto LABEL_64;
        case 5u:
          *(this + 34) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_68;
          }

          *(this + 10) = *(*a2 + v2);
          goto LABEL_64;
        case 6u:
          *(this + 34) |= 0x80u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_68;
          }

          *(this + 11) = *(*a2 + v2);
          goto LABEL_64;
        case 7u:
          *(this + 34) |= 0x100u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_68;
          }

          *(this + 12) = *(*a2 + v2);
          goto LABEL_64;
        case 8u:
          *(this + 34) |= 0x1000u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v31 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v30 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v31 = v30 != 0;
          }

          *(this + 64) = v31;
          goto LABEL_69;
        case 9u:
          *(this + 34) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_68;
          }

          *(this + 2) = *(*a2 + v2);
LABEL_83:
          v2 = *(a2 + 1) + 8;
          goto LABEL_65;
        case 0xAu:
          *(this + 34) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_68;
          }

          *(this + 7) = *(*a2 + v2);
          goto LABEL_64;
        case 0xBu:
          *(this + 34) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_68;
          }

          *(this + 8) = *(*a2 + v2);
          goto LABEL_64;
        case 0xCu:
          *(this + 34) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
LABEL_68:
            *(a2 + 24) = 1;
          }

          else
          {
            *(this + 9) = *(*a2 + v2);
LABEL_64:
            v2 = *(a2 + 1) + 4;
LABEL_65:
            *(a2 + 1) = v2;
          }

          goto LABEL_69;
        case 0xDu:
          *(this + 34) |= 4u;
          v22 = *(a2 + 1);
          v2 = *(a2 + 2);
          v23 = *a2;
          if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
          {
            v32 = 0;
            v33 = 0;
            v26 = 0;
            if (v2 <= v22)
            {
              v2 = *(a2 + 1);
            }

            v34 = v2 - v22;
            v35 = (v23 + v22);
            v36 = v22 + 1;
            while (1)
            {
              if (!v34)
              {
                LODWORD(v26) = 0;
                *(a2 + 24) = 1;
                goto LABEL_88;
              }

              v37 = v36;
              v38 = *v35;
              *(a2 + 1) = v37;
              v26 |= (v38 & 0x7F) << v32;
              if ((v38 & 0x80) == 0)
              {
                break;
              }

              v32 += 7;
              --v34;
              ++v35;
              v36 = v37 + 1;
              v14 = v33++ > 8;
              if (v14)
              {
                LODWORD(v26) = 0;
LABEL_87:
                v2 = v37;
                goto LABEL_88;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v26) = 0;
            }

            goto LABEL_87;
          }

          v24 = 0;
          v25 = 0;
          v26 = 0;
          v27 = (v23 + v22);
          v28 = v22 + 1;
          do
          {
            v2 = v28;
            *(a2 + 1) = v28;
            v29 = *v27++;
            v26 |= (v29 & 0x7F) << v24;
            if ((v29 & 0x80) == 0)
            {
              goto LABEL_88;
            }

            v24 += 7;
            ++v28;
            v14 = v25++ > 8;
          }

          while (!v14);
          LODWORD(v26) = 0;
LABEL_88:
          *(this + 6) = v26;
          goto LABEL_69;
        default:
          if (!PB::Reader::skip(a2, v10 >> 3, v10 & 7, 0))
          {
            v39 = 0;
            return v39 & 1;
          }

          v2 = *(a2 + 1);
LABEL_69:
          v3 = *(a2 + 2);
          v4 = *(a2 + 24);
          if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
          {
            goto LABEL_90;
          }

          break;
      }
    }

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
  }

LABEL_90:
  v39 = v4 ^ 1;
  return v39 & 1;
}

uint64_t CMMsl::PDRFenceState::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 68);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8), 1u);
    v4 = *(v3 + 68);
    if ((v4 & 0x200) == 0)
    {
LABEL_3:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((*(this + 68) & 0x200) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 52), 2u);
  v4 = *(v3 + 68);
  if ((v4 & 0x400) == 0)
  {
LABEL_4:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = PB::Writer::write(a2, *(v3 + 56), 3u);
  v4 = *(v3 + 68);
  if ((v4 & 0x800) == 0)
  {
LABEL_5:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = PB::Writer::write(a2, *(v3 + 60), 4u);
  v4 = *(v3 + 68);
  if ((v4 & 0x40) == 0)
  {
LABEL_6:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = PB::Writer::write(a2, *(v3 + 40), 5u);
  v4 = *(v3 + 68);
  if ((v4 & 0x80) == 0)
  {
LABEL_7:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = PB::Writer::write(a2, *(v3 + 44), 6u);
  v4 = *(v3 + 68);
  if ((v4 & 0x100) == 0)
  {
LABEL_8:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = PB::Writer::write(a2, *(v3 + 48), 7u);
  v4 = *(v3 + 68);
  if ((v4 & 0x1000) == 0)
  {
LABEL_9:
    if ((v4 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = PB::Writer::write(a2, *(v3 + 64), 8u);
  v4 = *(v3 + 68);
  if ((v4 & 2) == 0)
  {
LABEL_10:
    if ((v4 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = PB::Writer::write(a2, *(v3 + 16), 9u);
  v4 = *(v3 + 68);
  if ((v4 & 8) == 0)
  {
LABEL_11:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = PB::Writer::write(a2, *(v3 + 28), 0xAu);
  v4 = *(v3 + 68);
  if ((v4 & 0x10) == 0)
  {
LABEL_12:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_13;
    }

LABEL_26:
    this = PB::Writer::write(a2, *(v3 + 36), 0xCu);
    if ((*(v3 + 68) & 4) == 0)
    {
      return this;
    }

    goto LABEL_27;
  }

LABEL_25:
  this = PB::Writer::write(a2, *(v3 + 32), 0xBu);
  v4 = *(v3 + 68);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_26;
  }

LABEL_13:
  if ((v4 & 4) == 0)
  {
    return this;
  }

LABEL_27:
  v5 = *(v3 + 24);

  return PB::Writer::writeVarInt(a2, v5, 0xDu);
}

uint64_t CMMsl::PDRFenceState::hash_value(CMMsl::PDRFenceState *this)
{
  v1 = *(this + 34);
  if ((v1 & 1) == 0)
  {
    v2 = 0.0;
    if ((*(this + 34) & 0x200) != 0)
    {
      goto LABEL_3;
    }

LABEL_38:
    v4 = 0;
    if ((*(this + 34) & 0x400) != 0)
    {
      goto LABEL_6;
    }

LABEL_39:
    v6 = 0;
    if ((*(this + 34) & 0x800) != 0)
    {
      goto LABEL_9;
    }

LABEL_40:
    v8 = 0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_12;
    }

LABEL_41:
    v10 = 0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_15;
    }

LABEL_42:
    v12 = 0;
    if ((*(this + 34) & 0x100) != 0)
    {
      goto LABEL_18;
    }

LABEL_43:
    v14 = 0;
    if ((*(this + 34) & 0x1000) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_44;
  }

  v2 = *(this + 1);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((*(this + 34) & 0x200) == 0)
  {
    goto LABEL_38;
  }

LABEL_3:
  v3 = *(this + 13);
  v4 = LODWORD(v3);
  if (v3 == 0.0)
  {
    v4 = 0;
  }

  if ((*(this + 34) & 0x400) == 0)
  {
    goto LABEL_39;
  }

LABEL_6:
  v5 = *(this + 14);
  v6 = LODWORD(v5);
  if (v5 == 0.0)
  {
    v6 = 0;
  }

  if ((*(this + 34) & 0x800) == 0)
  {
    goto LABEL_40;
  }

LABEL_9:
  v7 = *(this + 15);
  v8 = LODWORD(v7);
  if (v7 == 0.0)
  {
    v8 = 0;
  }

  if ((v1 & 0x40) == 0)
  {
    goto LABEL_41;
  }

LABEL_12:
  v9 = *(this + 10);
  v10 = LODWORD(v9);
  if (v9 == 0.0)
  {
    v10 = 0;
  }

  if ((v1 & 0x80) == 0)
  {
    goto LABEL_42;
  }

LABEL_15:
  v11 = *(this + 11);
  v12 = LODWORD(v11);
  if (v11 == 0.0)
  {
    v12 = 0;
  }

  if ((*(this + 34) & 0x100) == 0)
  {
    goto LABEL_43;
  }

LABEL_18:
  v13 = *(this + 12);
  v14 = LODWORD(v13);
  if (v13 == 0.0)
  {
    v14 = 0;
  }

  if ((*(this + 34) & 0x1000) != 0)
  {
LABEL_21:
    v15 = *(this + 64);
    if ((v1 & 2) != 0)
    {
      goto LABEL_22;
    }

LABEL_45:
    v16 = 0.0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_25;
    }

LABEL_46:
    v18 = 0;
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_28;
    }

LABEL_47:
    v20 = 0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_31;
    }

    goto LABEL_48;
  }

LABEL_44:
  v15 = 0;
  if ((v1 & 2) == 0)
  {
    goto LABEL_45;
  }

LABEL_22:
  v16 = *(this + 2);
  if (v16 == 0.0)
  {
    v16 = 0.0;
  }

  if ((v1 & 8) == 0)
  {
    goto LABEL_46;
  }

LABEL_25:
  v17 = *(this + 7);
  v18 = LODWORD(v17);
  if (v17 == 0.0)
  {
    v18 = 0;
  }

  if ((v1 & 0x10) == 0)
  {
    goto LABEL_47;
  }

LABEL_28:
  v19 = *(this + 8);
  v20 = LODWORD(v19);
  if (v19 == 0.0)
  {
    v20 = 0;
  }

  if ((v1 & 0x20) != 0)
  {
LABEL_31:
    v21 = *(this + 9);
    v22 = LODWORD(v21);
    if (v21 == 0.0)
    {
      v22 = 0;
    }

    if ((v1 & 4) != 0)
    {
      goto LABEL_34;
    }

LABEL_49:
    v23 = 0;
    return v4 ^ *&v2 ^ v6 ^ v8 ^ v10 ^ v12 ^ v14 ^ v15 ^ *&v16 ^ v18 ^ v20 ^ v22 ^ v23;
  }

LABEL_48:
  v22 = 0;
  if ((v1 & 4) == 0)
  {
    goto LABEL_49;
  }

LABEL_34:
  v23 = *(this + 6);
  return v4 ^ *&v2 ^ v6 ^ v8 ^ v10 ^ v12 ^ v14 ^ v15 ^ *&v16 ^ v18 ^ v20 ^ v22 ^ v23;
}

void CMMsl::PDRImpulse::~PDRImpulse(CMMsl::PDRImpulse *this)
{
  PB::Base::~Base(this);

  operator delete();
}

double CMMsl::PDRImpulse::PDRImpulse(CMMsl::PDRImpulse *this, const CMMsl::PDRImpulse *a2)
{
  *this = off_100420A38;
  *(this + 5) = 0;
  if ((*(a2 + 20) & 2) != 0)
  {
    v3 = *(a2 + 4);
    *(this + 20) = 2;
    *(this + 4) = v3;
    v2 = 3;
    if ((*(a2 + 20) & 1) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  v2 = 1;
  if (*(a2 + 20))
  {
LABEL_5:
    result = *(a2 + 1);
    *(this + 20) = v2;
    *(this + 1) = result;
  }

  return result;
}

const CMMsl::PDRImpulse *CMMsl::PDRImpulse::operator=(const CMMsl::PDRImpulse *a1, const CMMsl::PDRImpulse *a2)
{
  if (a1 != a2)
  {
    CMMsl::PDRImpulse::PDRImpulse(v7, a2);
    v4 = *(a1 + 1);
    v3 = *(a1 + 2);
    v5 = v9;
    *(a1 + 1) = v8;
    *(a1 + 2) = v5;
    v8 = v4;
    v9 = v3;
    PB::Base::~Base(v7);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::PDRImpulse *a2, CMMsl::PDRImpulse *a3)
{
  v3 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v3;
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  return result;
}

double CMMsl::PDRImpulse::PDRImpulse(uint64_t a1, uint64_t a2)
{
  *a1 = off_100420A38;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

{
  *a1 = off_100420A38;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

uint64_t CMMsl::PDRImpulse::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v8[0] = off_100420A38;
    v3 = *(a2 + 8);
    v4 = *(a2 + 16);
    *(a2 + 20) = 0;
    v6 = *(a1 + 8);
    v5 = *(a1 + 16);
    *(a1 + 8) = v3;
    *(a1 + 16) = v4;
    v8[1] = v6;
    v8[2] = v5;
    PB::Base::~Base(v8);
  }

  return a1;
}

uint64_t CMMsl::PDRImpulse::formatText(CMMsl::PDRImpulse *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 20);
  if (v5)
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 1));
    v5 = *(this + 20);
  }

  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "type", *(this + 4));
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::PDRImpulse::readFrom(CMMsl::PDRImpulse *this, PB::Reader *a2)
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
            goto LABEL_54;
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
      if ((v10 >> 3) == 2)
      {
        *(this + 20) |= 1u;
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

      else if (v22 == 1)
      {
        *(this + 20) |= 2u;
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

          v33 = v2 - v23;
          v34 = (v24 + v23);
          v35 = v23 + 1;
          while (1)
          {
            if (!v33)
            {
              LODWORD(v27) = 0;
              *(a2 + 24) = 1;
              goto LABEL_49;
            }

            v36 = v35;
            v37 = *v34;
            *(a2 + 1) = v36;
            v27 |= (v37 & 0x7F) << v31;
            if ((v37 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            --v33;
            ++v34;
            v35 = v36 + 1;
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
          v2 = v36;
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
        *(this + 4) = v27;
      }

      else
      {
        if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
        {
          v38 = 0;
          return v38 & 1;
        }

        v2 = *(a2 + 1);
      }

      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_54:
  v38 = v4 ^ 1;
  return v38 & 1;
}

uint64_t CMMsl::PDRImpulse::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 20);
  if ((v4 & 2) != 0)
  {
    this = PB::Writer::writeVarInt(a2, *(this + 16), 1u);
    v4 = *(v3 + 20);
  }

  if (v4)
  {
    v5 = *(v3 + 8);

    return PB::Writer::write(a2, v5, 2u);
  }

  return this;
}

uint64_t CMMsl::PDRImpulse::hash_value(CMMsl::PDRImpulse *this)
{
  if ((*(this + 20) & 2) == 0)
  {
    v1 = 0;
    if (*(this + 20))
    {
      goto LABEL_3;
    }

LABEL_7:
    v2 = 0.0;
    return *&v2 ^ v1;
  }

  v1 = *(this + 4);
  if ((*(this + 20) & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  v2 = *(this + 1);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  return *&v2 ^ v1;
}

void CMMsl::PDRPedestrianClassifierState::~PDRPedestrianClassifierState(CMMsl::PDRPedestrianClassifierState *this)
{
  *this = off_100420A70;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::PDRPedestrianClassifierState::~PDRPedestrianClassifierState(this);

  operator delete();
}

CMMsl::PDRPedestrianClassifierState *CMMsl::PDRPedestrianClassifierState::PDRPedestrianClassifierState(CMMsl::PDRPedestrianClassifierState *this, const CMMsl::PDRPedestrianClassifierState *a2)
{
  *this = off_100420A70;
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 14) = 0;
  if (*(a2 + 56))
  {
    v6 = *(a2 + 4);
    *(this + 56) = 1;
    *(this + 4) = v6;
    v5 = 9;
    if ((*(a2 + 56) & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v5 = 8;
  if ((*(a2 + 56) & 8) != 0)
  {
LABEL_5:
    v7 = *(a2 + 52);
    *(this + 56) = v5;
    *(this + 52) = v7;
  }

LABEL_6:
  if (this != a2)
  {
    sub_100035D1C(v4, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 2);
  }

  v8 = *(a2 + 56);
  if ((v8 & 2) != 0)
  {
    v9 = *(a2 + 5);
    *(this + 56) |= 2u;
    *(this + 5) = v9;
    v8 = *(a2 + 56);
  }

  if ((v8 & 4) != 0)
  {
    v10 = *(a2 + 12);
    *(this + 56) |= 4u;
    *(this + 12) = v10;
  }

  return this;
}

uint64_t CMMsl::PDRPedestrianClassifierState::operator=(uint64_t a1, const CMMsl::PDRPedestrianClassifierState *a2)
{
  if (a1 != a2)
  {
    CMMsl::PDRPedestrianClassifierState::PDRPedestrianClassifierState(&v8, a2);
    v3 = *(a1 + 56);
    *(a1 + 56) = v14;
    v14 = v3;
    LOBYTE(v3) = *(a1 + 52);
    *(a1 + 52) = v13;
    v13 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v9;
    v9 = v4;
    v5 = *(a1 + 24);
    *(a1 + 24) = v10;
    v10 = v5;
    v6 = *(a1 + 32);
    *(a1 + 32) = v11;
    v11 = v6;
    LODWORD(v5) = *(a1 + 48);
    *(a1 + 48) = v12;
    v12 = v5;
    CMMsl::PDRPedestrianClassifierState::~PDRPedestrianClassifierState(&v8);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::PDRPedestrianClassifierState *a2, CMMsl::PDRPedestrianClassifierState *a3)
{
  v3 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v3;
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  LOBYTE(v3) = *(this + 52);
  *(this + 52) = *(a2 + 52);
  *(a2 + 52) = v3;
  v5 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v5;
  v6 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v6;
  v7 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v7;
  result = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = result;
  LODWORD(v7) = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v7;
  return result;
}

uint64_t CMMsl::PDRPedestrianClassifierState::PDRPedestrianClassifierState(uint64_t a1, uint64_t a2)
{
  *a1 = off_100420A70;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 52) = *(a2 + 52);
  sub_1002A2DD0(a1 + 8, (a2 + 8));
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t CMMsl::PDRPedestrianClassifierState::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::PDRPedestrianClassifierState::PDRPedestrianClassifierState(&v8, a2);
    v3 = *(a1 + 56);
    *(a1 + 56) = v14;
    v14 = v3;
    LOBYTE(v3) = *(a1 + 52);
    *(a1 + 52) = v13;
    v13 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v9;
    v9 = v4;
    v5 = *(a1 + 24);
    *(a1 + 24) = v10;
    v10 = v5;
    v6 = *(a1 + 32);
    *(a1 + 32) = v11;
    v11 = v6;
    LODWORD(v5) = *(a1 + 48);
    *(a1 + 48) = v12;
    v12 = v5;
    CMMsl::PDRPedestrianClassifierState::~PDRPedestrianClassifierState(&v8);
  }

  return a1;
}

uint64_t CMMsl::PDRPedestrianClassifierState::formatText(CMMsl::PDRPedestrianClassifierState *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 56);
  if ((v5 & 8) != 0)
  {
    PB::TextFormatter::format(a2, "isPedestrian", *(this + 52));
    v5 = *(this + 56);
  }

  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(a2, "pedestrianClass", *(this + 12));
  }

  v6 = *(this + 1);
  v7 = *(this + 2);
  while (v6 != v7)
  {
    v8 = *v6++;
    PB::TextFormatter::format(a2, "pedestrianClassProbability", v8);
  }

  v9 = *(this + 56);
  if (v9)
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 4));
    v9 = *(this + 56);
  }

  if ((v9 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "timestampPast", *(this + 5));
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::PDRPedestrianClassifierState::readFrom(CMMsl::PDRPedestrianClassifierState *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    while (1)
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
            goto LABEL_103;
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
      v22 = v10 & 7;
      if (v4 & 1 | (v22 == 4))
      {
        goto LABEL_103;
      }

      v23 = v10 >> 3;
      if ((v10 >> 3) <= 2)
      {
        break;
      }

      if (v23 != 3)
      {
        if (v23 == 4)
        {
          *(this + 56) |= 2u;
          v53 = *(a2 + 1);
          if (v53 <= 0xFFFFFFFFFFFFFFF7 && v53 + 8 <= *(a2 + 2))
          {
            *(this + 5) = *(*a2 + v53);
LABEL_63:
            v55 = *(a2 + 1) + 8;
LABEL_64:
            *(a2 + 1) = v55;
            goto LABEL_98;
          }

          goto LABEL_97;
        }

        if (v23 == 5)
        {
          *(this + 56) |= 4u;
          v25 = *(a2 + 1);
          v24 = *(a2 + 2);
          v26 = *a2;
          if (v25 > 0xFFFFFFFFFFFFFFF5 || v25 + 10 > v24)
          {
            v59 = 0;
            v60 = 0;
            v29 = 0;
            v17 = v24 >= v25;
            v61 = v24 - v25;
            if (!v17)
            {
              v61 = 0;
            }

            v62 = (v26 + v25);
            v63 = v25 + 1;
            while (1)
            {
              if (!v61)
              {
                LODWORD(v29) = 0;
                *(a2 + 24) = 1;
                goto LABEL_90;
              }

              v64 = *v62;
              *(a2 + 1) = v63;
              v29 |= (v64 & 0x7F) << v59;
              if ((v64 & 0x80) == 0)
              {
                break;
              }

              v59 += 7;
              --v61;
              ++v62;
              ++v63;
              v14 = v60++ > 8;
              if (v14)
              {
LABEL_76:
                LODWORD(v29) = 0;
                goto LABEL_90;
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
                goto LABEL_76;
              }
            }
          }

LABEL_90:
          *(this + 12) = v29;
          goto LABEL_98;
        }

        goto LABEL_65;
      }

      if (v22 != 2)
      {
        v57 = *(this + 2);
        v56 = *(this + 3);
        if (v57 >= v56)
        {
          v65 = *(this + 1);
          v66 = v57 - v65;
          v67 = (v57 - v65) >> 2;
          v68 = v67 + 1;
          if ((v67 + 1) >> 62)
          {
LABEL_106:
            sub_10000CD24();
          }

          v69 = v56 - v65;
          if (v69 >> 1 > v68)
          {
            v68 = v69 >> 1;
          }

          if (v69 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v70 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v70 = v68;
          }

          if (v70)
          {
            sub_10002290C(this + 8, v70);
          }

          v71 = (v57 - v65) >> 2;
          v72 = (4 * v67);
          v73 = (4 * v67 - 4 * v71);
          *v72 = 0;
          v58 = v72 + 1;
          memcpy(v73, v65, v66);
          v74 = *(this + 1);
          *(this + 1) = v73;
          *(this + 2) = v58;
          *(this + 3) = 0;
          if (v74)
          {
            operator delete(v74);
          }
        }

        else
        {
          *v57 = 0;
          v58 = v57 + 4;
        }

        *(this + 2) = v58;
        v75 = *(a2 + 1);
        if (v75 <= 0xFFFFFFFFFFFFFFFBLL && v75 + 4 <= *(a2 + 2))
        {
          *(v58 - 1) = *(*a2 + v75);
          v55 = *(a2 + 1) + 4;
          goto LABEL_64;
        }

LABEL_97:
        *(a2 + 24) = 1;
        goto LABEL_98;
      }

      if (PB::Reader::placeMark())
      {
        goto LABEL_105;
      }

      v37 = *(a2 + 1);
      v38 = *(a2 + 2);
      while (v37 < v38 && (*(a2 + 24) & 1) == 0)
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
            goto LABEL_106;
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
            sub_10002290C(this + 8, v47);
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
        if (v52 > 0xFFFFFFFFFFFFFFFBLL || v52 + 4 > *(a2 + 2))
        {
          *(a2 + 24) = 1;
          break;
        }

        *(v41 - 1) = *(*a2 + v52);
        v38 = *(a2 + 2);
        v37 = *(a2 + 1) + 4;
        *(a2 + 1) = v37;
      }

      PB::Reader::recallMark();
LABEL_98:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_103;
      }
    }

    if (v23 == 1)
    {
      *(this + 56) |= 1u;
      v54 = *(a2 + 1);
      if (v54 <= 0xFFFFFFFFFFFFFFF7 && v54 + 8 <= *(a2 + 2))
      {
        *(this + 4) = *(*a2 + v54);
        goto LABEL_63;
      }

      goto LABEL_97;
    }

    if (v23 == 2)
    {
      *(this + 56) |= 8u;
      v33 = *(a2 + 1);
      if (v33 >= *(a2 + 2))
      {
        v36 = 0;
        *(a2 + 24) = 1;
      }

      else
      {
        v34 = v33 + 1;
        v35 = *(*a2 + v33);
        *(a2 + 1) = v34;
        v36 = v35 != 0;
      }

      *(this + 52) = v36;
      goto LABEL_98;
    }

LABEL_65:
    if ((PB::Reader::skip(a2, v23, v22, 0) & 1) == 0)
    {
LABEL_105:
      v76 = 0;
      return v76 & 1;
    }

    goto LABEL_98;
  }

LABEL_103:
  v76 = v4 ^ 1;
  return v76 & 1;
}

uint64_t CMMsl::PDRPedestrianClassifierState::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 56);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 32), 1u);
    v4 = *(v3 + 56);
  }

  if ((v4 & 8) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 52), 2u);
  }

  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    this = PB::Writer::write(a2, v7, 3u);
  }

  v8 = *(v3 + 56);
  if ((v8 & 2) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 40), 4u);
    v8 = *(v3 + 56);
  }

  if ((v8 & 4) != 0)
  {
    v9 = *(v3 + 48);

    return PB::Writer::writeVarInt(a2, v9, 5u);
  }

  return this;
}

uint64_t CMMsl::PDRPedestrianClassifierState::hash_value(CMMsl::PDRPedestrianClassifierState *this)
{
  if (*(this + 56))
  {
    if (*(this + 4) == 0.0)
    {
      v2 = 0;
    }

    else
    {
      v2 = *(this + 4);
    }

    if ((*(this + 56) & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = 0;
    if ((*(this + 56) & 8) != 0)
    {
LABEL_3:
      v3 = *(this + 52);
      goto LABEL_9;
    }
  }

  v3 = 0;
LABEL_9:
  v4 = *(this + 1);
  v5 = *(this + 2);
  v6 = PBHashBytes();
  if ((*(this + 56) & 2) != 0)
  {
    v7 = *(this + 5);
    if (v7 == 0.0)
    {
      v7 = 0.0;
    }

    if ((*(this + 56) & 4) != 0)
    {
      goto LABEL_11;
    }

LABEL_15:
    v8 = 0;
    return v3 ^ v2 ^ *&v7 ^ v8 ^ v6;
  }

  v7 = 0.0;
  if ((*(this + 56) & 4) == 0)
  {
    goto LABEL_15;
  }

LABEL_11:
  v8 = *(this + 12);
  return v3 ^ v2 ^ *&v7 ^ v8 ^ v6;
}

void CMMsl::PDRPlacementClassifierState::~PDRPlacementClassifierState(CMMsl::PDRPlacementClassifierState *this)
{
  *this = off_100420AA8;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::PDRPlacementClassifierState::~PDRPlacementClassifierState(this);

  operator delete();
}

CMMsl::PDRPlacementClassifierState *CMMsl::PDRPlacementClassifierState::PDRPlacementClassifierState(CMMsl::PDRPlacementClassifierState *this, const CMMsl::PDRPlacementClassifierState *a2)
{
  *this = off_100420AA8;
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 13) = 0;
  if (*(a2 + 52))
  {
    v6 = *(a2 + 4);
    *(this + 52) = 1;
    *(this + 4) = v6;
    v5 = 5;
    if ((*(a2 + 52) & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v5 = 4;
  if ((*(a2 + 52) & 4) != 0)
  {
LABEL_5:
    v7 = *(a2 + 12);
    *(this + 52) = v5;
    *(this + 12) = v7;
  }

LABEL_6:
  if (this != a2)
  {
    sub_100035D1C(v4, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 2);
  }

  if ((*(a2 + 52) & 2) != 0)
  {
    v8 = *(a2 + 5);
    *(this + 52) |= 2u;
    *(this + 5) = v8;
  }

  return this;
}

uint64_t CMMsl::PDRPlacementClassifierState::operator=(uint64_t a1, const CMMsl::PDRPlacementClassifierState *a2)
{
  if (a1 != a2)
  {
    CMMsl::PDRPlacementClassifierState::PDRPlacementClassifierState(v8, a2);
    v3 = *(a1 + 48);
    *(a1 + 48) = v12;
    v12 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v9;
    v9 = v4;
    v5 = *(a1 + 24);
    *(a1 + 24) = v10;
    v10 = v5;
    v6 = *(a1 + 32);
    *(a1 + 32) = v11;
    v11 = v6;
    CMMsl::PDRPlacementClassifierState::~PDRPlacementClassifierState(v8);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::PDRPlacementClassifierState *a2, CMMsl::PDRPlacementClassifierState *a3)
{
  v3 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v3;
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v5;
  v6 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v6;
  v7 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v7;
  v8 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v8;
  result = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = result;
  return result;
}

uint64_t CMMsl::PDRPlacementClassifierState::PDRPlacementClassifierState(uint64_t a1, uint64_t a2)
{
  *a1 = off_100420AA8;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 52) = *(a2 + 52);
  *(a2 + 52) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  sub_1002A2DD0(a1 + 8, (a2 + 8));
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

{
  *a1 = off_100420AA8;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 52) = *(a2 + 52);
  *(a2 + 52) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  sub_1002A2DD0(a1 + 8, (a2 + 8));
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t CMMsl::PDRPlacementClassifierState::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v11 = off_100420AA8;
    v3 = *(a2 + 24);
    v4 = *(a2 + 8);
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    v5 = *(a2 + 32);
    v6 = *(a2 + 48);
    *(a2 + 52) = 0;
    v15 = *(a1 + 48);
    v7 = *(a1 + 8);
    *(a1 + 8) = v4;
    v12 = v7;
    v8 = *(a1 + 24);
    *(a1 + 24) = v3;
    v13 = v8;
    v9 = *(a1 + 32);
    *(a1 + 48) = v6;
    *(a1 + 32) = v5;
    v14 = v9;
    CMMsl::PDRPlacementClassifierState::~PDRPlacementClassifierState(&v11);
  }

  return a1;
}

uint64_t CMMsl::PDRPlacementClassifierState::formatText(CMMsl::PDRPlacementClassifierState *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if ((*(this + 52) & 4) != 0)
  {
    PB::TextFormatter::format(a2, "placement", *(this + 12));
  }

  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(a2, "placementProbability", v7);
  }

  v8 = *(this + 52);
  if (v8)
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 4));
    v8 = *(this + 52);
  }

  if ((v8 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "timestampPast", *(this + 5));
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::PDRPlacementClassifierState::readFrom(CMMsl::PDRPlacementClassifierState *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    while (1)
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
            goto LABEL_98;
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
      v22 = v10 & 7;
      if (v4 & 1 | (v22 == 4))
      {
        goto LABEL_98;
      }

      v23 = v10 >> 3;
      if ((v10 >> 3) <= 2)
      {
        break;
      }

      if (v23 != 3)
      {
        if (v23 == 4)
        {
          *(this + 52) |= 2u;
          v33 = *(a2 + 1);
          if (v33 <= 0xFFFFFFFFFFFFFFF7 && v33 + 8 <= *(a2 + 2))
          {
            *(this + 5) = *(*a2 + v33);
LABEL_42:
            v35 = *(a2 + 1) + 8;
LABEL_43:
            *(a2 + 1) = v35;
            goto LABEL_93;
          }

          goto LABEL_92;
        }

LABEL_37:
        if ((PB::Reader::skip(a2, v23, v22, 0) & 1) == 0)
        {
          goto LABEL_100;
        }

        goto LABEL_93;
      }

      if (v22 != 2)
      {
        v59 = *(this + 2);
        v58 = *(this + 3);
        if (v59 >= v58)
        {
          v61 = *(this + 1);
          v62 = v59 - v61;
          v63 = (v59 - v61) >> 2;
          v64 = v63 + 1;
          if ((v63 + 1) >> 62)
          {
LABEL_101:
            sub_10000CD24();
          }

          v65 = v58 - v61;
          if (v65 >> 1 > v64)
          {
            v64 = v65 >> 1;
          }

          if (v65 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v66 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v66 = v64;
          }

          if (v66)
          {
            sub_10002290C(this + 8, v66);
          }

          v67 = (v59 - v61) >> 2;
          v68 = (4 * v63);
          v69 = (4 * v63 - 4 * v67);
          *v68 = 0;
          v60 = v68 + 1;
          memcpy(v69, v61, v62);
          v70 = *(this + 1);
          *(this + 1) = v69;
          *(this + 2) = v60;
          *(this + 3) = 0;
          if (v70)
          {
            operator delete(v70);
          }
        }

        else
        {
          *v59 = 0;
          v60 = v59 + 4;
        }

        *(this + 2) = v60;
        v71 = *(a2 + 1);
        if (v71 <= 0xFFFFFFFFFFFFFFFBLL && v71 + 4 <= *(a2 + 2))
        {
          *(v60 - 1) = *(*a2 + v71);
          v35 = *(a2 + 1) + 4;
          goto LABEL_43;
        }

LABEL_92:
        *(a2 + 24) = 1;
        goto LABEL_93;
      }

      if (PB::Reader::placeMark())
      {
LABEL_100:
        v72 = 0;
        return v72 & 1;
      }

      v36 = *(a2 + 1);
      v37 = *(a2 + 2);
      while (v36 < v37 && (*(a2 + 24) & 1) == 0)
      {
        v39 = *(this + 2);
        v38 = *(this + 3);
        if (v39 >= v38)
        {
          v41 = *(this + 1);
          v42 = v39 - v41;
          v43 = (v39 - v41) >> 2;
          v44 = v43 + 1;
          if ((v43 + 1) >> 62)
          {
            goto LABEL_101;
          }

          v45 = v38 - v41;
          if (v45 >> 1 > v44)
          {
            v44 = v45 >> 1;
          }

          if (v45 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v46 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v46 = v44;
          }

          if (v46)
          {
            sub_10002290C(this + 8, v46);
          }

          v47 = (v39 - v41) >> 2;
          v48 = (4 * v43);
          v49 = (4 * v43 - 4 * v47);
          *v48 = 0;
          v40 = v48 + 1;
          memcpy(v49, v41, v42);
          v50 = *(this + 1);
          *(this + 1) = v49;
          *(this + 2) = v40;
          *(this + 3) = 0;
          if (v50)
          {
            operator delete(v50);
          }
        }

        else
        {
          *v39 = 0;
          v40 = v39 + 4;
        }

        *(this + 2) = v40;
        v51 = *(a2 + 1);
        if (v51 > 0xFFFFFFFFFFFFFFFBLL || v51 + 4 > *(a2 + 2))
        {
          *(a2 + 24) = 1;
          break;
        }

        *(v40 - 1) = *(*a2 + v51);
        v37 = *(a2 + 2);
        v36 = *(a2 + 1) + 4;
        *(a2 + 1) = v36;
      }

      PB::Reader::recallMark();
LABEL_93:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_98;
      }
    }

    if (v23 == 1)
    {
      *(this + 52) |= 1u;
      v34 = *(a2 + 1);
      if (v34 <= 0xFFFFFFFFFFFFFFF7 && v34 + 8 <= *(a2 + 2))
      {
        *(this + 4) = *(*a2 + v34);
        goto LABEL_42;
      }

      goto LABEL_92;
    }

    if (v23 == 2)
    {
      *(this + 52) |= 4u;
      v25 = *(a2 + 1);
      v24 = *(a2 + 2);
      v26 = *a2;
      if (v25 > 0xFFFFFFFFFFFFFFF5 || v25 + 10 > v24)
      {
        v52 = 0;
        v53 = 0;
        v29 = 0;
        v17 = v24 >= v25;
        v54 = v24 - v25;
        if (!v17)
        {
          v54 = 0;
        }

        v55 = (v26 + v25);
        v56 = v25 + 1;
        while (1)
        {
          if (!v54)
          {
            LODWORD(v29) = 0;
            *(a2 + 24) = 1;
            goto LABEL_85;
          }

          v57 = *v55;
          *(a2 + 1) = v56;
          v29 |= (v57 & 0x7F) << v52;
          if ((v57 & 0x80) == 0)
          {
            break;
          }

          v52 += 7;
          --v54;
          ++v55;
          ++v56;
          v14 = v53++ > 8;
          if (v14)
          {
LABEL_71:
            LODWORD(v29) = 0;
            goto LABEL_85;
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
            goto LABEL_71;
          }
        }
      }

LABEL_85:
      *(this + 12) = v29;
      goto LABEL_93;
    }

    goto LABEL_37;
  }

LABEL_98:
  v72 = v4 ^ 1;
  return v72 & 1;
}

uint64_t CMMsl::PDRPlacementClassifierState::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 52);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 32), 1u);
    v4 = *(v3 + 52);
  }

  if ((v4 & 4) != 0)
  {
    this = PB::Writer::writeVarInt(a2, *(v3 + 48), 2u);
  }

  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    this = PB::Writer::write(a2, v7, 3u);
  }

  if ((*(v3 + 52) & 2) != 0)
  {
    v8 = *(v3 + 40);

    return PB::Writer::write(a2, v8, 4u);
  }

  return this;
}

uint64_t CMMsl::PDRPlacementClassifierState::hash_value(CMMsl::PDRPlacementClassifierState *this)
{
  if (*(this + 52))
  {
    if (*(this + 4) == 0.0)
    {
      v2 = 0;
    }

    else
    {
      v2 = *(this + 4);
    }

    if ((*(this + 52) & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = 0;
    if ((*(this + 52) & 4) != 0)
    {
LABEL_3:
      v3 = *(this + 12);
      goto LABEL_9;
    }
  }

  v3 = 0;
LABEL_9:
  v4 = *(this + 1);
  v5 = *(this + 2);
  v6 = PBHashBytes();
  if ((*(this + 52) & 2) != 0)
  {
    v7 = *(this + 5);
    if (v7 == 0.0)
    {
      v7 = 0.0;
    }
  }

  else
  {
    v7 = 0.0;
  }

  return v3 ^ v2 ^ *&v7 ^ v6;
}

void CMMsl::PDRSpeedEstimatorState::~PDRSpeedEstimatorState(CMMsl::PDRSpeedEstimatorState *this)
{
  PB::Base::~Base(this);

  operator delete();
}

double CMMsl::PDRSpeedEstimatorState::PDRSpeedEstimatorState(CMMsl::PDRSpeedEstimatorState *this, const CMMsl::PDRSpeedEstimatorState *a2)
{
  *this = off_100420AE0;
  *(this + 8) = 0;
  v2 = *(a2 + 32);
  if (v2)
  {
    result = *(a2 + 1);
    v3 = 1;
    *(this + 32) = 1;
    *(this + 1) = result;
    v2 = *(a2 + 32);
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 32) & 4) != 0)
  {
LABEL_5:
    LODWORD(result) = *(a2 + 6);
    v3 |= 4u;
    *(this + 32) = v3;
    *(this + 6) = LODWORD(result);
    v2 = *(a2 + 32);
  }

LABEL_6:
  if ((v2 & 8) == 0)
  {
    if ((v2 & 2) == 0)
    {
      return result;
    }

LABEL_10:
    result = *(a2 + 2);
    *(this + 32) = v3 | 2;
    *(this + 2) = result;
    return result;
  }

  LODWORD(result) = *(a2 + 7);
  v3 |= 8u;
  *(this + 32) = v3;
  *(this + 7) = LODWORD(result);
  if ((*(a2 + 32) & 2) != 0)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t CMMsl::PDRSpeedEstimatorState::operator=(uint64_t a1, const CMMsl::PDRSpeedEstimatorState *a2)
{
  if (a1 != a2)
  {
    CMMsl::PDRSpeedEstimatorState::PDRSpeedEstimatorState(v7, a2);
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

double CMMsl::swap(CMMsl *this, CMMsl::PDRSpeedEstimatorState *a2, CMMsl::PDRSpeedEstimatorState *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v4;
  LODWORD(v4) = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v4;
  result = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = result;
  return result;
}

double CMMsl::PDRSpeedEstimatorState::PDRSpeedEstimatorState(uint64_t a1, uint64_t a2)
{
  *a1 = off_100420AE0;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

{
  *a1 = off_100420AE0;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

uint64_t CMMsl::PDRSpeedEstimatorState::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v8 = off_100420AE0;
    v3 = *(a2 + 32);
    *(a2 + 32) = 0;
    v11 = *(a1 + 32);
    v4 = *(a1 + 24);
    *(a1 + 24) = *(a2 + 24);
    v10 = v4;
    v5 = *(a1 + 8);
    v6 = *(a2 + 8);
    *(a1 + 32) = v3;
    *(a1 + 8) = v6;
    v9 = v5;
    PB::Base::~Base(&v8);
  }

  return a1;
}

uint64_t CMMsl::PDRSpeedEstimatorState::formatText(CMMsl::PDRSpeedEstimatorState *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 32);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(a2, "speed", *(this + 6));
    v5 = *(this + 32);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(this + 32) & 8) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "speedUnc", *(this + 7));
  v5 = *(this + 32);
  if ((v5 & 1) == 0)
  {
LABEL_4:
    if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  if ((*(this + 32) & 2) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(a2, "timestampPast", *(this + 2));
  }

LABEL_6:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::PDRSpeedEstimatorState::readFrom(CMMsl::PDRSpeedEstimatorState *this, PB::Reader *a2)
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
            goto LABEL_49;
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
      if ((v10 >> 3) > 2)
      {
        if (v22 == 3)
        {
          *(this + 32) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
LABEL_41:
            *(a2 + 24) = 1;
            goto LABEL_45;
          }

          *(this + 7) = *(*a2 + v2);
LABEL_43:
          v2 = *(a2 + 1) + 4;
LABEL_44:
          *(a2 + 1) = v2;
          goto LABEL_45;
        }

        if (v22 == 4)
        {
          *(this + 32) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_41;
          }

          *(this + 2) = *(*a2 + v2);
LABEL_38:
          v2 = *(a2 + 1) + 8;
          goto LABEL_44;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(this + 32) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_41;
          }

          *(this + 1) = *(*a2 + v2);
          goto LABEL_38;
        }

        if (v22 == 2)
        {
          *(this + 32) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_41;
          }

          *(this + 6) = *(*a2 + v2);
          goto LABEL_43;
        }
      }

      if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(a2 + 1);
LABEL_45:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_49:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t CMMsl::PDRSpeedEstimatorState::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 32);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8), 1u);
    v4 = *(v3 + 32);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = PB::Writer::write(a2, *(v3 + 28), 3u);
      if ((*(v3 + 32) & 2) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 32) & 4) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 24), 2u);
  v4 = *(v3 + 32);
  if ((v4 & 8) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v4 & 2) == 0)
  {
    return this;
  }

LABEL_9:
  v5 = *(v3 + 16);

  return PB::Writer::write(a2, v5, 4u);
}

uint64_t CMMsl::PDRSpeedEstimatorState::hash_value(CMMsl::PDRSpeedEstimatorState *this)
{
  if ((*(this + 32) & 1) == 0)
  {
    v1 = 0.0;
    if ((*(this + 32) & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_15:
    v3 = 0;
    if ((*(this + 32) & 8) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

  v1 = *(this + 1);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  if ((*(this + 32) & 4) == 0)
  {
    goto LABEL_15;
  }

LABEL_3:
  v2 = *(this + 6);
  v3 = LODWORD(v2);
  if (v2 == 0.0)
  {
    v3 = 0;
  }

  if ((*(this + 32) & 8) != 0)
  {
LABEL_6:
    v4 = *(this + 7);
    v5 = LODWORD(v4);
    if (v4 == 0.0)
    {
      v5 = 0;
    }

    if ((*(this + 32) & 2) != 0)
    {
      goto LABEL_9;
    }

LABEL_17:
    v6 = 0.0;
    return v3 ^ *&v1 ^ v5 ^ *&v6;
  }

LABEL_16:
  v5 = 0;
  if ((*(this + 32) & 2) == 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  v6 = *(this + 2);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  return v3 ^ *&v1 ^ v5 ^ *&v6;
}

void CMMsl::PDRSpeedEstimatorStateDebug::~PDRSpeedEstimatorStateDebug(CMMsl::PDRSpeedEstimatorStateDebug *this)
{
  PB::Base::~Base(this);

  operator delete();
}

double CMMsl::PDRSpeedEstimatorStateDebug::PDRSpeedEstimatorStateDebug(CMMsl::PDRSpeedEstimatorStateDebug *this, const CMMsl::PDRSpeedEstimatorStateDebug *a2)
{
  *this = off_100420B18;
  *(this + 8) = 0;
  v2 = *(a2 + 32);
  if (v2)
  {
    result = *(a2 + 1);
    v3 = 1;
    *(this + 32) = 1;
    *(this + 1) = result;
    v2 = *(a2 + 32);
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 32) & 4) != 0)
  {
LABEL_5:
    LODWORD(result) = *(a2 + 6);
    v3 |= 4u;
    *(this + 32) = v3;
    *(this + 6) = LODWORD(result);
    v2 = *(a2 + 32);
  }

LABEL_6:
  if ((v2 & 8) == 0)
  {
    if ((v2 & 2) == 0)
    {
      return result;
    }

LABEL_10:
    result = *(a2 + 2);
    *(this + 32) = v3 | 2;
    *(this + 2) = result;
    return result;
  }

  LODWORD(result) = *(a2 + 7);
  v3 |= 8u;
  *(this + 32) = v3;
  *(this + 7) = LODWORD(result);
  if ((*(a2 + 32) & 2) != 0)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t CMMsl::PDRSpeedEstimatorStateDebug::operator=(uint64_t a1, const CMMsl::PDRSpeedEstimatorStateDebug *a2)
{
  if (a1 != a2)
  {
    CMMsl::PDRSpeedEstimatorStateDebug::PDRSpeedEstimatorStateDebug(v7, a2);
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

double CMMsl::swap(CMMsl *this, CMMsl::PDRSpeedEstimatorStateDebug *a2, CMMsl::PDRSpeedEstimatorStateDebug *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v4;
  LODWORD(v4) = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v4;
  result = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = result;
  return result;
}

double CMMsl::PDRSpeedEstimatorStateDebug::PDRSpeedEstimatorStateDebug(uint64_t a1, uint64_t a2)
{
  *a1 = off_100420B18;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

{
  *a1 = off_100420B18;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

uint64_t CMMsl::PDRSpeedEstimatorStateDebug::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v8 = off_100420B18;
    v3 = *(a2 + 32);
    *(a2 + 32) = 0;
    v11 = *(a1 + 32);
    v4 = *(a1 + 24);
    *(a1 + 24) = *(a2 + 24);
    v10 = v4;
    v5 = *(a1 + 8);
    v6 = *(a2 + 8);
    *(a1 + 32) = v3;
    *(a1 + 8) = v6;
    v9 = v5;
    PB::Base::~Base(&v8);
  }

  return a1;
}

uint64_t CMMsl::PDRSpeedEstimatorStateDebug::formatText(CMMsl::PDRSpeedEstimatorStateDebug *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 32);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(a2, "speed", *(this + 6));
    v5 = *(this + 32);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(this + 32) & 8) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "speedUnc", *(this + 7));
  v5 = *(this + 32);
  if ((v5 & 1) == 0)
  {
LABEL_4:
    if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  if ((*(this + 32) & 2) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(a2, "timestampPast", *(this + 2));
  }

LABEL_6:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::PDRSpeedEstimatorStateDebug::readFrom(CMMsl::PDRSpeedEstimatorStateDebug *this, PB::Reader *a2)
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
            goto LABEL_49;
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
      if ((v10 >> 3) > 2)
      {
        if (v22 == 3)
        {
          *(this + 32) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
LABEL_41:
            *(a2 + 24) = 1;
            goto LABEL_45;
          }

          *(this + 7) = *(*a2 + v2);
LABEL_43:
          v2 = *(a2 + 1) + 4;
LABEL_44:
          *(a2 + 1) = v2;
          goto LABEL_45;
        }

        if (v22 == 4)
        {
          *(this + 32) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_41;
          }

          *(this + 2) = *(*a2 + v2);
LABEL_38:
          v2 = *(a2 + 1) + 8;
          goto LABEL_44;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(this + 32) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_41;
          }

          *(this + 1) = *(*a2 + v2);
          goto LABEL_38;
        }

        if (v22 == 2)
        {
          *(this + 32) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_41;
          }

          *(this + 6) = *(*a2 + v2);
          goto LABEL_43;
        }
      }

      if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(a2 + 1);
LABEL_45:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_49:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t CMMsl::PDRSpeedEstimatorStateDebug::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 32);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8), 1u);
    v4 = *(v3 + 32);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = PB::Writer::write(a2, *(v3 + 28), 3u);
      if ((*(v3 + 32) & 2) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 32) & 4) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 24), 2u);
  v4 = *(v3 + 32);
  if ((v4 & 8) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v4 & 2) == 0)
  {
    return this;
  }

LABEL_9:
  v5 = *(v3 + 16);

  return PB::Writer::write(a2, v5, 4u);
}

uint64_t CMMsl::PDRSpeedEstimatorStateDebug::hash_value(CMMsl::PDRSpeedEstimatorStateDebug *this)
{
  if ((*(this + 32) & 1) == 0)
  {
    v1 = 0.0;
    if ((*(this + 32) & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_15:
    v3 = 0;
    if ((*(this + 32) & 8) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

  v1 = *(this + 1);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  if ((*(this + 32) & 4) == 0)
  {
    goto LABEL_15;
  }

LABEL_3:
  v2 = *(this + 6);
  v3 = LODWORD(v2);
  if (v2 == 0.0)
  {
    v3 = 0;
  }

  if ((*(this + 32) & 8) != 0)
  {
LABEL_6:
    v4 = *(this + 7);
    v5 = LODWORD(v4);
    if (v4 == 0.0)
    {
      v5 = 0;
    }

    if ((*(this + 32) & 2) != 0)
    {
      goto LABEL_9;
    }

LABEL_17:
    v6 = 0.0;
    return v3 ^ *&v1 ^ v5 ^ *&v6;
  }

LABEL_16:
  v5 = 0;
  if ((*(this + 32) & 2) == 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  v6 = *(this + 2);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  return v3 ^ *&v1 ^ v5 ^ *&v6;
}

void CMMsl::PDRVelocityEstimatorState::~PDRVelocityEstimatorState(CMMsl::PDRVelocityEstimatorState *this)
{
  PB::Base::~Base(this);

  operator delete();
}

double CMMsl::PDRVelocityEstimatorState::PDRVelocityEstimatorState(CMMsl::PDRVelocityEstimatorState *this, const CMMsl::PDRVelocityEstimatorState *a2)
{
  *this = off_100420B50;
  *(this + 12) = 0;
  v2 = *(a2 + 48);
  if (v2)
  {
    result = *(a2 + 1);
    v3 = 1;
    *(this + 48) = 1;
    *(this + 1) = result;
    v2 = *(a2 + 48);
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 48) & 0x20) != 0)
  {
LABEL_5:
    LODWORD(result) = *(a2 + 9);
    v3 |= 0x20u;
    *(this + 48) = v3;
    *(this + 9) = LODWORD(result);
    v2 = *(a2 + 48);
  }

LABEL_6:
  if ((v2 & 0x40) != 0)
  {
    LODWORD(result) = *(a2 + 10);
    v3 |= 0x40u;
    *(this + 48) = v3;
    *(this + 10) = LODWORD(result);
    v2 = *(a2 + 48);
    if ((v2 & 0x80) == 0)
    {
LABEL_8:
      if ((v2 & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_15;
    }
  }

  else if ((v2 & 0x80) == 0)
  {
    goto LABEL_8;
  }

  LODWORD(result) = *(a2 + 11);
  v3 |= 0x80u;
  *(this + 48) = v3;
  *(this + 11) = LODWORD(result);
  v2 = *(a2 + 48);
  if ((v2 & 4) == 0)
  {
LABEL_9:
    if ((v2 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_16;
  }

LABEL_15:
  LODWORD(result) = *(a2 + 6);
  v3 |= 4u;
  *(this + 48) = v3;
  *(this + 6) = LODWORD(result);
  v2 = *(a2 + 48);
  if ((v2 & 8) == 0)
  {
LABEL_10:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_16:
  LODWORD(result) = *(a2 + 7);
  v3 |= 8u;
  *(this + 48) = v3;
  *(this + 7) = LODWORD(result);
  v2 = *(a2 + 48);
  if ((v2 & 0x10) == 0)
  {
LABEL_11:
    if ((v2 & 2) == 0)
    {
      return result;
    }

LABEL_18:
    result = *(a2 + 2);
    *(this + 48) = v3 | 2;
    *(this + 2) = result;
    return result;
  }

LABEL_17:
  LODWORD(result) = *(a2 + 8);
  v3 |= 0x10u;
  *(this + 48) = v3;
  *(this + 8) = LODWORD(result);
  if ((*(a2 + 48) & 2) != 0)
  {
    goto LABEL_18;
  }

  return result;
}

uint64_t CMMsl::PDRVelocityEstimatorState::operator=(uint64_t a1, const CMMsl::PDRVelocityEstimatorState *a2)
{
  if (a1 != a2)
  {
    CMMsl::PDRVelocityEstimatorState::PDRVelocityEstimatorState(v9, a2);
    v3 = *(a1 + 48);
    *(a1 + 48) = v13;
    v13 = v3;
    v4 = *(a1 + 40);
    *(a1 + 40) = v12;
    v12 = v4;
    v5 = v10;
    v6 = *(a1 + 24);
    *(a1 + 24) = v11;
    v7 = *(a1 + 8);
    *(a1 + 8) = v5;
    v10 = v7;
    v11 = v6;
    PB::Base::~Base(v9);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::PDRVelocityEstimatorState *a2, CMMsl::PDRVelocityEstimatorState *a3)
{
  v3 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v4;
  LODWORD(v4) = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v4;
  LODWORD(v4) = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v4;
  LODWORD(v4) = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v4;
  LODWORD(v4) = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v4;
  LODWORD(v4) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v4;
  result = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = result;
  return result;
}

double CMMsl::PDRVelocityEstimatorState::PDRVelocityEstimatorState(uint64_t a1, uint64_t a2)
{
  *a1 = off_100420B50;
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

{
  *a1 = off_100420B50;
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

uint64_t CMMsl::PDRVelocityEstimatorState::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v9 = off_100420B50;
    v3 = *(a2 + 48);
    *(a2 + 48) = 0;
    v13 = *(a1 + 48);
    v12 = *(a1 + 40);
    v4 = *(a1 + 24);
    v5 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v5;
    v6 = *(a1 + 8);
    v7 = *(a2 + 8);
    *(a1 + 48) = v3;
    *(a1 + 8) = v7;
    v10 = v6;
    v11 = v4;
    PB::Base::~Base(&v9);
  }

  return a1;
}

uint64_t CMMsl::PDRVelocityEstimatorState::formatText(CMMsl::PDRVelocityEstimatorState *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 48);
  if (v5)
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 1));
    v5 = *(this + 48);
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

  else if ((*(this + 48) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "timestampPast", *(this + 2));
  v5 = *(this + 48);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  PB::TextFormatter::format(a2, "velocityUncX", *(this + 6));
  v5 = *(this + 48);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  PB::TextFormatter::format(a2, "velocityUncY", *(this + 7));
  v5 = *(this + 48);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  PB::TextFormatter::format(a2, "velocityUncZ", *(this + 8));
  v5 = *(this + 48);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_18:
    PB::TextFormatter::format(a2, "velocityY", *(this + 10));
    if ((*(this + 48) & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_17:
  PB::TextFormatter::format(a2, "velocityX", *(this + 9));
  v5 = *(this + 48);
  if ((v5 & 0x40) != 0)
  {
    goto LABEL_18;
  }

LABEL_8:
  if ((v5 & 0x80) == 0)
  {
    goto LABEL_9;
  }

LABEL_19:
  PB::TextFormatter::format(a2, "velocityZ", *(this + 11));
LABEL_9:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::PDRVelocityEstimatorState::readFrom(CMMsl::PDRVelocityEstimatorState *this, PB::Reader *a2)
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
            goto LABEL_67;
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
            *(this + 48) |= 0x10u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
LABEL_57:
              *(a2 + 24) = 1;
              goto LABEL_63;
            }

            *(this + 8) = *(*a2 + v2);
            goto LABEL_61;
          }

          if (v22 == 8)
          {
            *(this + 48) |= 2u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
              goto LABEL_57;
            }

            *(this + 2) = *(*a2 + v2);
LABEL_48:
            v2 = *(a2 + 1) + 8;
LABEL_62:
            *(a2 + 1) = v2;
            goto LABEL_63;
          }
        }

        else
        {
          if (v22 == 5)
          {
            *(this + 48) |= 4u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
              goto LABEL_57;
            }

            *(this + 6) = *(*a2 + v2);
            goto LABEL_61;
          }

          if (v22 == 6)
          {
            *(this + 48) |= 8u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
              goto LABEL_57;
            }

            *(this + 7) = *(*a2 + v2);
            goto LABEL_61;
          }
        }
      }

      else if (v22 > 2)
      {
        if (v22 == 3)
        {
          *(this + 48) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_57;
          }

          *(this + 10) = *(*a2 + v2);
          goto LABEL_61;
        }

        if (v22 == 4)
        {
          *(this + 48) |= 0x80u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_57;
          }

          *(this + 11) = *(*a2 + v2);
LABEL_61:
          v2 = *(a2 + 1) + 4;
          goto LABEL_62;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(this + 48) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_57;
          }

          *(this + 1) = *(*a2 + v2);
          goto LABEL_48;
        }

        if (v22 == 2)
        {
          *(this + 48) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_57;
          }

          *(this + 9) = *(*a2 + v2);
          goto LABEL_61;
        }
      }

      if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(a2 + 1);
LABEL_63:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_67:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t CMMsl::PDRVelocityEstimatorState::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 48);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8), 1u);
    v4 = *(v3 + 48);
    if ((v4 & 0x20) == 0)
    {
LABEL_3:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(this + 48) & 0x20) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 36), 2u);
  v4 = *(v3 + 48);
  if ((v4 & 0x40) == 0)
  {
LABEL_4:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  this = PB::Writer::write(a2, *(v3 + 40), 3u);
  v4 = *(v3 + 48);
  if ((v4 & 0x80) == 0)
  {
LABEL_5:
    if ((v4 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  this = PB::Writer::write(a2, *(v3 + 44), 4u);
  v4 = *(v3 + 48);
  if ((v4 & 4) == 0)
  {
LABEL_6:
    if ((v4 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = PB::Writer::write(a2, *(v3 + 24), 5u);
  v4 = *(v3 + 48);
  if ((v4 & 8) == 0)
  {
LABEL_7:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    this = PB::Writer::write(a2, *(v3 + 32), 7u);
    if ((*(v3 + 48) & 2) == 0)
    {
      return this;
    }

    goto LABEL_17;
  }

LABEL_15:
  this = PB::Writer::write(a2, *(v3 + 28), 6u);
  v4 = *(v3 + 48);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v4 & 2) == 0)
  {
    return this;
  }

LABEL_17:
  v5 = *(v3 + 16);

  return PB::Writer::write(a2, v5, 8u);
}

uint64_t CMMsl::PDRVelocityEstimatorState::hash_value(CMMsl::PDRVelocityEstimatorState *this)
{
  if ((*(this + 48) & 1) == 0)
  {
    v1 = 0.0;
    if ((*(this + 48) & 0x20) != 0)
    {
      goto LABEL_3;
    }

LABEL_27:
    v3 = 0;
    if ((*(this + 48) & 0x40) != 0)
    {
      goto LABEL_6;
    }

LABEL_28:
    v5 = 0;
    if ((*(this + 48) & 0x80) != 0)
    {
      goto LABEL_9;
    }

LABEL_29:
    v7 = 0;
    if ((*(this + 48) & 4) != 0)
    {
      goto LABEL_12;
    }

LABEL_30:
    v9 = 0;
    if ((*(this + 48) & 8) != 0)
    {
      goto LABEL_15;
    }

LABEL_31:
    v11 = 0;
    if ((*(this + 48) & 0x10) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_32;
  }

  v1 = *(this + 1);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  if ((*(this + 48) & 0x20) == 0)
  {
    goto LABEL_27;
  }

LABEL_3:
  v2 = *(this + 9);
  v3 = LODWORD(v2);
  if (v2 == 0.0)
  {
    v3 = 0;
  }

  if ((*(this + 48) & 0x40) == 0)
  {
    goto LABEL_28;
  }

LABEL_6:
  v4 = *(this + 10);
  v5 = LODWORD(v4);
  if (v4 == 0.0)
  {
    v5 = 0;
  }

  if ((*(this + 48) & 0x80) == 0)
  {
    goto LABEL_29;
  }

LABEL_9:
  v6 = *(this + 11);
  v7 = LODWORD(v6);
  if (v6 == 0.0)
  {
    v7 = 0;
  }

  if ((*(this + 48) & 4) == 0)
  {
    goto LABEL_30;
  }

LABEL_12:
  v8 = *(this + 6);
  v9 = LODWORD(v8);
  if (v8 == 0.0)
  {
    v9 = 0;
  }

  if ((*(this + 48) & 8) == 0)
  {
    goto LABEL_31;
  }

LABEL_15:
  v10 = *(this + 7);
  v11 = LODWORD(v10);
  if (v10 == 0.0)
  {
    v11 = 0;
  }

  if ((*(this + 48) & 0x10) != 0)
  {
LABEL_18:
    v12 = *(this + 8);
    v13 = LODWORD(v12);
    if (v12 == 0.0)
    {
      v13 = 0;
    }

    if ((*(this + 48) & 2) != 0)
    {
      goto LABEL_21;
    }

LABEL_33:
    v14 = 0.0;
    return v3 ^ *&v1 ^ v5 ^ v7 ^ v9 ^ v11 ^ v13 ^ *&v14;
  }

LABEL_32:
  v13 = 0;
  if ((*(this + 48) & 2) == 0)
  {
    goto LABEL_33;
  }

LABEL_21:
  v14 = *(this + 2);
  if (v14 == 0.0)
  {
    v14 = 0.0;
  }

  return v3 ^ *&v1 ^ v5 ^ v7 ^ v9 ^ v11 ^ v13 ^ *&v14;
}

void CMMsl::PTSConsumedGNSS::~PTSConsumedGNSS(CMMsl::PTSConsumedGNSS *this)
{
  *this = off_100420B88;
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

{
  CMMsl::PTSConsumedGNSS::~PTSConsumedGNSS(this);

  operator delete();
}

void *CMMsl::PTSConsumedGNSS::PTSConsumedGNSS(void *this, const CMMsl::PTSConsumedGNSS *a2)
{
  *this = off_100420B88;
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

uint64_t CMMsl::PTSConsumedGNSS::operator=(uint64_t a1, const CMMsl::PTSConsumedGNSS *a2)
{
  if (a1 != a2)
  {
    CMMsl::PTSConsumedGNSS::PTSConsumedGNSS(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    CMMsl::PTSConsumedGNSS::~PTSConsumedGNSS(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::PTSConsumedGNSS *a2, CMMsl::PTSConsumedGNSS *a3)
{
  v3 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v4;
  return this;
}

void *CMMsl::PTSConsumedGNSS::PTSConsumedGNSS(void *a1, uint64_t a2)
{
  a1[1] = 0;
  v4 = a1 + 1;
  *a1 = off_100420B88;
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

uint64_t CMMsl::PTSConsumedGNSS::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::PTSConsumedGNSS::PTSConsumedGNSS(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    CMMsl::PTSConsumedGNSS::~PTSConsumedGNSS(&v5);
  }

  return a1;
}

uint64_t CMMsl::PTSConsumedGNSS::formatText(CMMsl::PTSConsumedGNSS *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "signalEnvironment");
  }

  v6 = *(this + 2);
  if (v6)
  {
    (*(*v6 + 32))(v6, a2, "super");
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::PTSConsumedGNSS::readFrom(CMMsl::PTSConsumedGNSS *this, PB::Reader *a2)
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
            goto LABEL_31;
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
      if ((v9 >> 3) == 2)
      {
        operator new();
      }

      if (v21 == 1)
      {
        operator new();
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

LABEL_31:
  v22 = v4 ^ 1;
  return v22 & 1;
}

uint64_t CMMsl::PTSConsumedGNSS::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 16);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4, 1u);
  }

  v5 = *(v3 + 8);
  if (v5)
  {

    return PB::Writer::writeSubmessage(a2, v5, 2u);
  }

  return this;
}

unint64_t CMMsl::PTSConsumedGNSS::hash_value(CMMsl::PTSConsumedGNSS *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    v2 = CMMsl::LocationOscarEmu::hash_value(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    v4 = *(v3 + 12);
    v3 = *(v3 + 8);
    if ((v4 & 1) == 0)
    {
      v3 = 0;
    }
  }

  return v3 ^ v2;
}

uint64_t CMMsl::PTSConsumedGNSS::makeSuper(uint64_t this)
{
  if (!*(this + 16))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::PTSConsumedGNSS::makeSignalEnvironment(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

void CMMsl::PTSForwardPropagation::~PTSForwardPropagation(CMMsl::PTSForwardPropagation *this)
{
  *this = off_100420BC0;
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::PTSForwardPropagation::~PTSForwardPropagation(this);

  operator delete();
}

uint64_t CMMsl::PTSForwardPropagation::PTSForwardPropagation(uint64_t this, const CMMsl::PTSForwardPropagation *a2)
{
  *this = off_100420BC0;
  *(this + 48) = 0;
  *(this + 64) = 0;
  v2 = *(a2 + 64);
  if ((v2 & 0x20) != 0)
  {
    v4 = *(a2 + 7);
    v3 = 32;
    *(this + 64) = 32;
    *(this + 56) = v4;
    v2 = *(a2 + 64);
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 64) & 8) != 0)
  {
LABEL_5:
    v5 = *(a2 + 4);
    v3 |= 8u;
    *(this + 64) = v3;
    *(this + 32) = v5;
    v2 = *(a2 + 64);
  }

LABEL_6:
  if ((v2 & 0x10) != 0)
  {
    v7 = *(a2 + 5);
    v3 |= 0x10u;
    *(this + 64) = v3;
    *(this + 40) = v7;
    v2 = *(a2 + 64);
    if ((v2 & 4) == 0)
    {
LABEL_8:
      if ((v2 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_16;
    }
  }

  else if ((v2 & 4) == 0)
  {
    goto LABEL_8;
  }

  v8 = *(a2 + 3);
  v3 |= 4u;
  *(this + 64) = v3;
  *(this + 24) = v8;
  v2 = *(a2 + 64);
  if ((v2 & 1) == 0)
  {
LABEL_9:
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_16:
  v9 = *(a2 + 1);
  v3 |= 1u;
  *(this + 64) = v3;
  *(this + 8) = v9;
  if ((*(a2 + 64) & 2) != 0)
  {
LABEL_10:
    v6 = *(a2 + 2);
    *(this + 64) = v3 | 2;
    *(this + 16) = v6;
  }

LABEL_11:
  if (*(a2 + 6))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::PTSForwardPropagation::operator=(uint64_t a1, const CMMsl::PTSForwardPropagation *a2)
{
  if (a1 != a2)
  {
    CMMsl::PTSForwardPropagation::PTSForwardPropagation(v11, a2);
    v3 = *(a1 + 64);
    *(a1 + 64) = v17;
    v17 = v3;
    v4 = *(a1 + 56);
    *(a1 + 56) = v16;
    v16 = v4;
    v5 = *(a1 + 40);
    *(a1 + 40) = v14;
    v14 = v5;
    v6 = v12;
    v7 = *(a1 + 24);
    *(a1 + 24) = v13;
    v8 = *(a1 + 8);
    *(a1 + 8) = v6;
    v12 = v8;
    v13 = v7;
    v9 = *(a1 + 48);
    *(a1 + 48) = v15;
    v15 = v9;
    CMMsl::PTSForwardPropagation::~PTSForwardPropagation(v11);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::PTSForwardPropagation *a2, CMMsl::PTSForwardPropagation *a3)
{
  v3 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v3;
  v4 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v4;
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v6;
  v7 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v7;
  v8 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v8;
  result = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = result;
  v10 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v10;
  return result;
}

uint64_t CMMsl::PTSForwardPropagation::PTSForwardPropagation(uint64_t a1, uint64_t a2)
{
  *a1 = off_100420BC0;
  *(a1 + 48) = 0;
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = 0;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  v3 = *(a2 + 48);
  *(a2 + 48) = 0;
  v4 = *(a1 + 48);
  *(a1 + 48) = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

uint64_t CMMsl::PTSForwardPropagation::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::PTSForwardPropagation::PTSForwardPropagation(v11, a2);
    v3 = *(a1 + 64);
    *(a1 + 64) = v17;
    v17 = v3;
    v4 = *(a1 + 56);
    *(a1 + 56) = v16;
    v16 = v4;
    v5 = *(a1 + 40);
    *(a1 + 40) = v14;
    v14 = v5;
    v6 = v12;
    v7 = *(a1 + 24);
    *(a1 + 24) = v13;
    v8 = *(a1 + 8);
    *(a1 + 8) = v6;
    v12 = v8;
    v13 = v7;
    v9 = *(a1 + 48);
    *(a1 + 48) = v15;
    v15 = v9;
    CMMsl::PTSForwardPropagation::~PTSForwardPropagation(v11);
  }

  return a1;
}

uint64_t CMMsl::PTSForwardPropagation::formatText(CMMsl::PTSForwardPropagation *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 64);
  if (v5)
  {
    PB::TextFormatter::format(a2, "course", *(this + 1));
    v5 = *(this + 64);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*(this + 64) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "courseAccuracy", *(this + 2));
  v5 = *(this + 64);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  PB::TextFormatter::format(a2, "horizontalAccuracy", *(this + 3));
  v5 = *(this + 64);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_17:
  PB::TextFormatter::format(a2, "latitude", *(this + 4));
  if ((*(this + 64) & 0x10) != 0)
  {
LABEL_6:
    PB::TextFormatter::format(a2, "longitude", *(this + 5));
  }

LABEL_7:
  v6 = *(this + 6);
  if (v6)
  {
    (*(*v6 + 32))(v6, a2, "signalEnvironment");
  }

  if ((*(this + 64) & 0x20) != 0)
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 7));
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::PTSForwardPropagation::readFrom(CMMsl::PTSForwardPropagation *this, PB::Reader *a2)
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
            goto LABEL_58;
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
            *(this + 64) |= 0x20u;
            v25 = *(a2 + 1);
            if (v25 > 0xFFFFFFFFFFFFFFF7 || v25 + 8 > *(a2 + 2))
            {
LABEL_51:
              *(a2 + 24) = 1;
              goto LABEL_54;
            }

            *(this + 7) = *(*a2 + v25);
            goto LABEL_53;
          case 2:
            *(this + 64) |= 8u;
            v28 = *(a2 + 1);
            if (v28 > 0xFFFFFFFFFFFFFFF7 || v28 + 8 > *(a2 + 2))
            {
              goto LABEL_51;
            }

            *(this + 4) = *(*a2 + v28);
            goto LABEL_53;
          case 3:
            *(this + 64) |= 0x10u;
            v24 = *(a2 + 1);
            if (v24 > 0xFFFFFFFFFFFFFFF7 || v24 + 8 > *(a2 + 2))
            {
              goto LABEL_51;
            }

            *(this + 5) = *(*a2 + v24);
            goto LABEL_53;
        }
      }

      else if (v22 > 5)
      {
        if (v22 == 6)
        {
          *(this + 64) |= 2u;
          v27 = *(a2 + 1);
          if (v27 > 0xFFFFFFFFFFFFFFF7 || v27 + 8 > *(a2 + 2))
          {
            goto LABEL_51;
          }

          *(this + 2) = *(*a2 + v27);
          goto LABEL_53;
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
          *(this + 64) |= 4u;
          v26 = *(a2 + 1);
          if (v26 > 0xFFFFFFFFFFFFFFF7 || v26 + 8 > *(a2 + 2))
          {
            goto LABEL_51;
          }

          *(this + 3) = *(*a2 + v26);
          goto LABEL_53;
        }

        if (v22 == 5)
        {
          *(this + 64) |= 1u;
          v23 = *(a2 + 1);
          if (v23 > 0xFFFFFFFFFFFFFFF7 || v23 + 8 > *(a2 + 2))
          {
            goto LABEL_51;
          }

          *(this + 1) = *(*a2 + v23);
LABEL_53:
          *(a2 + 1) += 8;
          goto LABEL_54;
        }
      }

      if ((PB::Reader::skip(a2, v22, v10 & 7, 0) & 1) == 0)
      {
        v30 = 0;
        return v30 & 1;
      }

LABEL_54:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_58:
  v30 = v4 ^ 1;
  return v30 & 1;
}

uint64_t CMMsl::PTSForwardPropagation::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 64);
  if ((v4 & 0x20) != 0)
  {
    this = PB::Writer::write(a2, *(this + 56), 1u);
    v4 = *(v3 + 64);
    if ((v4 & 8) == 0)
    {
LABEL_3:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(this + 64) & 8) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 32), 2u);
  v4 = *(v3 + 64);
  if ((v4 & 0x10) == 0)
  {
LABEL_4:
    if ((v4 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = PB::Writer::write(a2, *(v3 + 40), 3u);
  v4 = *(v3 + 64);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  this = PB::Writer::write(a2, *(v3 + 24), 4u);
  v4 = *(v3 + 64);
  if ((v4 & 1) == 0)
  {
LABEL_6:
    if ((v4 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_16:
  this = PB::Writer::write(a2, *(v3 + 8), 5u);
  if ((*(v3 + 64) & 2) != 0)
  {
LABEL_7:
    this = PB::Writer::write(a2, *(v3 + 16), 6u);
  }

LABEL_8:
  v5 = *(v3 + 48);
  if (v5)
  {

    return PB::Writer::writeSubmessage(a2, v5, 7u);
  }

  return this;
}

uint64_t CMMsl::PTSForwardPropagation::hash_value(CMMsl::PTSForwardPropagation *this)
{
  if ((*(this + 64) & 0x20) == 0)
  {
    v1 = 0.0;
    if ((*(this + 64) & 8) != 0)
    {
      goto LABEL_3;
    }

LABEL_21:
    v2 = 0.0;
    if ((*(this + 64) & 0x10) != 0)
    {
      goto LABEL_6;
    }

LABEL_22:
    v3 = 0.0;
    if ((*(this + 64) & 4) != 0)
    {
      goto LABEL_9;
    }

LABEL_23:
    v4 = 0.0;
    if (*(this + 64))
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

  v1 = *(this + 7);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  if ((*(this + 64) & 8) == 0)
  {
    goto LABEL_21;
  }

LABEL_3:
  v2 = *(this + 4);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((*(this + 64) & 0x10) == 0)
  {
    goto LABEL_22;
  }

LABEL_6:
  v3 = *(this + 5);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  if ((*(this + 64) & 4) == 0)
  {
    goto LABEL_23;
  }

LABEL_9:
  v4 = *(this + 3);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  if (*(this + 64))
  {
LABEL_12:
    v5 = *(this + 1);
    if (v5 == 0.0)
    {
      v5 = 0.0;
    }

    if ((*(this + 64) & 2) != 0)
    {
      goto LABEL_15;
    }

LABEL_25:
    v6 = 0.0;
    goto LABEL_26;
  }

LABEL_24:
  v5 = 0.0;
  if ((*(this + 64) & 2) == 0)
  {
    goto LABEL_25;
  }

LABEL_15:
  v6 = *(this + 2);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

LABEL_26:
  v7 = *(this + 6);
  if (v7)
  {
    v8 = *(v7 + 12);
    v7 = *(v7 + 8);
    if ((v8 & 1) == 0)
    {
      v7 = 0;
    }
  }

  return *&v2 ^ *&v1 ^ *&v3 ^ *&v4 ^ *&v5 ^ *&v6 ^ v7;
}

uint64_t CMMsl::PTSForwardPropagation::makeSignalEnvironment(uint64_t this)
{
  if (!*(this + 48))
  {
    operator new();
  }

  return this;
}

void CMMsl::PTSMapMatchedRoute::~PTSMapMatchedRoute(CMMsl::PTSMapMatchedRoute *this)
{
  v2 = *(this + 1);
  *this = off_100420BF8;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::PTSMapMatchedRoute::~PTSMapMatchedRoute(this);

  operator delete();
}

void *CMMsl::PTSMapMatchedRoute::PTSMapMatchedRoute(void *this, const CMMsl::PTSMapMatchedRoute *a2)
{
  *this = off_100420BF8;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const CMMsl::PTSMapMatchedRoute *CMMsl::PTSMapMatchedRoute::operator=(const CMMsl::PTSMapMatchedRoute *a1, const CMMsl::PTSMapMatchedRoute *a2)
{
  if (a1 != a2)
  {
    CMMsl::PTSMapMatchedRoute::PTSMapMatchedRoute(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    CMMsl::PTSMapMatchedRoute::~PTSMapMatchedRoute(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::PTSMapMatchedRoute *a2, CMMsl::PTSMapMatchedRoute *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::PTSMapMatchedRoute::PTSMapMatchedRoute(void *a1, uint64_t a2)
{
  *a1 = off_100420BF8;
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
  *a1 = off_100420BF8;
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

uint64_t CMMsl::PTSMapMatchedRoute::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = off_100420BF8;
    v6[1] = v4;
    CMMsl::PTSMapMatchedRoute::~PTSMapMatchedRoute(v6);
  }

  return a1;
}

uint64_t CMMsl::PTSMapMatchedRoute::formatText(CMMsl::PTSMapMatchedRoute *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::PTSMapMatchedRoute::readFrom(CMMsl::PTSMapMatchedRoute *this, PB::Reader *a2)
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
            goto LABEL_29;
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

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

      if ((PB::Reader::skip(a2, v9 >> 3, v9 & 7, 0) & 1) == 0)
      {
        v21 = 0;
        return v21 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_29:
  v21 = v4 ^ 1;
  return v21 & 1;
}

uint64_t CMMsl::PTSMapMatchedRoute::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2, 1u);
  }

  return this;
}

CMMsl::PTSForwardPropagation *CMMsl::PTSMapMatchedRoute::hash_value(CMMsl::PTSMapMatchedRoute *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::PTSForwardPropagation::hash_value(result);
  }

  return result;
}

uint64_t CMMsl::PTSMapMatchedRoute::makeSuper(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

void CMMsl::PTSReconstructedRoute::~PTSReconstructedRoute(CMMsl::PTSReconstructedRoute *this)
{
  v2 = *(this + 1);
  *this = off_100420C30;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::PTSReconstructedRoute::~PTSReconstructedRoute(this);

  operator delete();
}

void *CMMsl::PTSReconstructedRoute::PTSReconstructedRoute(void *this, const CMMsl::PTSReconstructedRoute *a2)
{
  *this = off_100420C30;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const CMMsl::PTSReconstructedRoute *CMMsl::PTSReconstructedRoute::operator=(const CMMsl::PTSReconstructedRoute *a1, const CMMsl::PTSReconstructedRoute *a2)
{
  if (a1 != a2)
  {
    CMMsl::PTSReconstructedRoute::PTSReconstructedRoute(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    CMMsl::PTSReconstructedRoute::~PTSReconstructedRoute(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::PTSReconstructedRoute *a2, CMMsl::PTSReconstructedRoute *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::PTSReconstructedRoute::PTSReconstructedRoute(void *a1, uint64_t a2)
{
  *a1 = off_100420C30;
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
  *a1 = off_100420C30;
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

uint64_t CMMsl::PTSReconstructedRoute::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = off_100420C30;
    v6[1] = v4;
    CMMsl::PTSReconstructedRoute::~PTSReconstructedRoute(v6);
  }

  return a1;
}

uint64_t CMMsl::PTSReconstructedRoute::formatText(CMMsl::PTSReconstructedRoute *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::PTSReconstructedRoute::readFrom(CMMsl::PTSReconstructedRoute *this, PB::Reader *a2)
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
            goto LABEL_29;
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

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

      if ((PB::Reader::skip(a2, v9 >> 3, v9 & 7, 0) & 1) == 0)
      {
        v21 = 0;
        return v21 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_29:
  v21 = v4 ^ 1;
  return v21 & 1;
}

uint64_t CMMsl::PTSReconstructedRoute::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2, 1u);
  }

  return this;
}

CMMsl::PTSForwardPropagation *CMMsl::PTSReconstructedRoute::hash_value(CMMsl::PTSReconstructedRoute *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::PTSForwardPropagation::hash_value(result);
  }

  return result;
}

uint64_t CMMsl::PTSReconstructedRoute::makeSuper(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

void CMMsl::PTSSmoothedRoute::~PTSSmoothedRoute(CMMsl::PTSSmoothedRoute *this)
{
  v2 = *(this + 1);
  *this = off_100420C68;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::PTSSmoothedRoute::~PTSSmoothedRoute(this);

  operator delete();
}

void *CMMsl::PTSSmoothedRoute::PTSSmoothedRoute(void *this, const CMMsl::PTSSmoothedRoute *a2)
{
  *this = off_100420C68;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const CMMsl::PTSSmoothedRoute *CMMsl::PTSSmoothedRoute::operator=(const CMMsl::PTSSmoothedRoute *a1, const CMMsl::PTSSmoothedRoute *a2)
{
  if (a1 != a2)
  {
    CMMsl::PTSSmoothedRoute::PTSSmoothedRoute(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    CMMsl::PTSSmoothedRoute::~PTSSmoothedRoute(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::PTSSmoothedRoute *a2, CMMsl::PTSSmoothedRoute *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::PTSSmoothedRoute::PTSSmoothedRoute(void *a1, uint64_t a2)
{
  *a1 = off_100420C68;
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
  *a1 = off_100420C68;
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

uint64_t CMMsl::PTSSmoothedRoute::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = off_100420C68;
    v6[1] = v4;
    CMMsl::PTSSmoothedRoute::~PTSSmoothedRoute(v6);
  }

  return a1;
}

uint64_t CMMsl::PTSSmoothedRoute::formatText(CMMsl::PTSSmoothedRoute *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::PTSSmoothedRoute::readFrom(CMMsl::PTSSmoothedRoute *this, PB::Reader *a2)
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
            goto LABEL_29;
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

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

      if ((PB::Reader::skip(a2, v9 >> 3, v9 & 7, 0) & 1) == 0)
      {
        v21 = 0;
        return v21 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_29:
  v21 = v4 ^ 1;
  return v21 & 1;
}

uint64_t CMMsl::PTSSmoothedRoute::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2, 1u);
  }

  return this;
}

CMMsl::PTSForwardPropagation *CMMsl::PTSSmoothedRoute::hash_value(CMMsl::PTSSmoothedRoute *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::PTSForwardPropagation::hash_value(result);
  }

  return result;
}

uint64_t CMMsl::PTSSmoothedRoute::makeSuper(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

void CMMsl::PdrMLModelOutput::~PdrMLModelOutput(CMMsl::PdrMLModelOutput *this)
{
  *this = off_100420CA0;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::PdrMLModelOutput::~PdrMLModelOutput(this);

  operator delete();
}

CMMsl::PdrMLModelOutput *CMMsl::PdrMLModelOutput::PdrMLModelOutput(CMMsl::PdrMLModelOutput *this, const CMMsl::PdrMLModelOutput *a2)
{
  *this = off_100420CA0;
  *(this + 1) = 0;
  v3 = (this + 8);
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 10) = 0;
  if (*(a2 + 40))
  {
    v4 = *(a2 + 4);
    *(this + 40) = 1;
    *(this + 4) = v4;
  }

  if (this != a2)
  {
    sub_100035BF0(v3, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 3);
  }

  return this;
}

uint64_t CMMsl::PdrMLModelOutput::operator=(uint64_t a1, const CMMsl::PdrMLModelOutput *a2)
{
  if (a1 != a2)
  {
    CMMsl::PdrMLModelOutput::PdrMLModelOutput(&v8, a2);
    v3 = *(a1 + 40);
    *(a1 + 40) = v12;
    v12 = v3;
    v4 = *(a1 + 32);
    *(a1 + 32) = v11;
    v11 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v9;
    v9 = v5;
    v6 = *(a1 + 24);
    *(a1 + 24) = v10;
    v10 = v6;
    CMMsl::PdrMLModelOutput::~PdrMLModelOutput(&v8);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::PdrMLModelOutput *a2, CMMsl::PdrMLModelOutput *a3)
{
  v3 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v3;
  result = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = result;
  v5 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v5;
  v6 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v6;
  v7 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v7;
  return result;
}

uint64_t CMMsl::PdrMLModelOutput::PdrMLModelOutput(uint64_t a1, uint64_t a2)
{
  *a1 = off_100420CA0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a1 + 32) = *(a2 + 32);
  sub_1002A2DD0(a1 + 8, (a2 + 8));
  return a1;
}

{
  *a1 = off_100420CA0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a1 + 32) = *(a2 + 32);
  sub_1002A2DD0(a1 + 8, (a2 + 8));
  return a1;
}

uint64_t CMMsl::PdrMLModelOutput::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v12 = off_100420CA0;
    v3 = *(a2 + 40);
    *(a2 + 40) = 0;
    v4 = *(a2 + 32);
    v5 = *(a2 + 24);
    v6 = *(a2 + 8);
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    v7 = *(a1 + 40);
    *(a1 + 40) = v3;
    v16 = v7;
    v8 = *(a1 + 32);
    *(a1 + 32) = v4;
    v15 = v8;
    v9 = *(a1 + 8);
    *(a1 + 8) = v6;
    v13 = v9;
    v10 = *(a1 + 24);
    *(a1 + 24) = v5;
    v14 = v10;
    CMMsl::PdrMLModelOutput::~PdrMLModelOutput(&v12);
  }

  return a1;
}

uint64_t CMMsl::PdrMLModelOutput::formatText(CMMsl::PdrMLModelOutput *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 40))
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 4));
  }

  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(a2, "velocity", v7);
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::PdrMLModelOutput::readFrom(CMMsl::PdrMLModelOutput *this, PB::Reader *a2)
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
            goto LABEL_72;
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
      v22 = v10 & 7;
      if (v4 & 1 | (v22 == 4))
      {
        break;
      }

      v23 = v10 >> 3;
      if ((v10 >> 3) == 2)
      {
        if (v22 != 2)
        {
          v42 = *(this + 2);
          v41 = *(this + 3);
          if (v42 >= v41)
          {
            v44 = *(this + 1);
            v45 = v42 - v44;
            v46 = (v42 - v44) >> 3;
            v47 = v46 + 1;
            if ((v46 + 1) >> 61)
            {
LABEL_75:
              sub_10000CD24();
            }

            v48 = v41 - v44;
            if (v48 >> 2 > v47)
            {
              v47 = v48 >> 2;
            }

            if (v48 >= 0x7FFFFFFFFFFFFFF8)
            {
              v49 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v49 = v47;
            }

            if (v49)
            {
              sub_10000CDCC(this + 8, v49);
            }

            v50 = (v42 - v44) >> 3;
            v51 = (8 * v46);
            v52 = (8 * v46 - 8 * v50);
            *v51 = 0;
            v43 = v51 + 1;
            memcpy(v52, v44, v45);
            v53 = *(this + 1);
            *(this + 1) = v52;
            *(this + 2) = v43;
            *(this + 3) = 0;
            if (v53)
            {
              operator delete(v53);
            }
          }

          else
          {
            *v42 = 0;
            v43 = v42 + 8;
          }

          *(this + 2) = v43;
          v54 = *(a2 + 1);
          if (v54 > 0xFFFFFFFFFFFFFFF7 || v54 + 8 > *(a2 + 2))
          {
LABEL_65:
            *(a2 + 24) = 1;
            goto LABEL_68;
          }

          *(v43 - 1) = *(*a2 + v54);
          goto LABEL_67;
        }

        if (PB::Reader::placeMark())
        {
          goto LABEL_74;
        }

        v25 = *(a2 + 1);
        v26 = *(a2 + 2);
        while (v25 < v26 && (*(a2 + 24) & 1) == 0)
        {
          v28 = *(this + 2);
          v27 = *(this + 3);
          if (v28 >= v27)
          {
            v30 = *(this + 1);
            v31 = v28 - v30;
            v32 = (v28 - v30) >> 3;
            v33 = v32 + 1;
            if ((v32 + 1) >> 61)
            {
              goto LABEL_75;
            }

            v34 = v27 - v30;
            if (v34 >> 2 > v33)
            {
              v33 = v34 >> 2;
            }

            if (v34 >= 0x7FFFFFFFFFFFFFF8)
            {
              v35 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v35 = v33;
            }

            if (v35)
            {
              sub_10000CDCC(this + 8, v35);
            }

            v36 = (v28 - v30) >> 3;
            v37 = (8 * v32);
            v38 = (8 * v32 - 8 * v36);
            *v37 = 0;
            v29 = v37 + 1;
            memcpy(v38, v30, v31);
            v39 = *(this + 1);
            *(this + 1) = v38;
            *(this + 2) = v29;
            *(this + 3) = 0;
            if (v39)
            {
              operator delete(v39);
            }
          }

          else
          {
            *v28 = 0;
            v29 = v28 + 8;
          }

          *(this + 2) = v29;
          v40 = *(a2 + 1);
          if (v40 > 0xFFFFFFFFFFFFFFF7 || v40 + 8 > *(a2 + 2))
          {
            *(a2 + 24) = 1;
            break;
          }

          *(v29 - 1) = *(*a2 + v40);
          v26 = *(a2 + 2);
          v25 = *(a2 + 1) + 8;
          *(a2 + 1) = v25;
        }

        PB::Reader::recallMark();
      }

      else
      {
        if (v23 == 1)
        {
          *(this + 40) |= 1u;
          v24 = *(a2 + 1);
          if (v24 > 0xFFFFFFFFFFFFFFF7 || v24 + 8 > *(a2 + 2))
          {
            goto LABEL_65;
          }

          *(this + 4) = *(*a2 + v24);
LABEL_67:
          *(a2 + 1) += 8;
          goto LABEL_68;
        }

        if ((PB::Reader::skip(a2, v23, v22, 0) & 1) == 0)
        {
LABEL_74:
          v55 = 0;
          return v55 & 1;
        }
      }

LABEL_68:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_72:
  v55 = v4 ^ 1;
  return v55 & 1;
}

uint64_t CMMsl::PdrMLModelOutput::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if (*(this + 40))
  {
    this = PB::Writer::write(a2, *(this + 32), 1u);
  }

  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  while (v5 != v4)
  {
    v6 = *v5++;
    this = PB::Writer::write(a2, v6, 2u);
  }

  return this;
}

uint64_t CMMsl::PdrMLModelOutput::hash_value(CMMsl::PdrMLModelOutput *this)
{
  if (*(this + 40))
  {
    if (*(this + 4) == 0.0)
    {
      v1 = 0;
    }

    else
    {
      v1 = *(this + 4);
    }
  }

  else
  {
    v1 = 0;
  }

  v2 = *(this + 1);
  v3 = *(this + 2);
  return PBHashBytes() ^ v1;
}

void CMMsl::PearlAttitude::~PearlAttitude(CMMsl::PearlAttitude *this)
{
  *this = off_100420CD8;
  v2 = *(this + 7);
  if (v2)
  {
    *(this + 8) = v2;
    operator delete(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    *(this + 5) = v3;
    operator delete(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    *(this + 2) = v4;
    operator delete(v4);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::PearlAttitude::~PearlAttitude(this);

  operator delete();
}

CMMsl::PearlAttitude *CMMsl::PearlAttitude::PearlAttitude(CMMsl::PearlAttitude *this, const CMMsl::PearlAttitude *a2)
{
  *(this + 8) = 0u;
  v4 = (this + 8);
  *(this + 56) = 0u;
  *this = off_100420CD8;
  *(this + 31) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 9) = 0;
  v5 = *(a2 + 62);
  if (v5)
  {
    v7 = *(a2 + 10);
    v6 = 1;
    *(this + 62) = 1;
    *(this + 10) = v7;
    v5 = *(a2 + 62);
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = 0;
  if ((v5 & 0x40) != 0)
  {
LABEL_5:
    v8 = *(a2 + 27);
    v6 |= 0x40u;
    *(this + 62) = v6;
    *(this + 27) = v8;
    v5 = *(a2 + 62);
  }

LABEL_6:
  if ((v5 & 0x20) != 0)
  {
    v13 = *(a2 + 26);
    v6 |= 0x20u;
    *(this + 62) = v6;
    *(this + 26) = v13;
    v5 = *(a2 + 62);
    if ((v5 & 0x200) == 0)
    {
LABEL_8:
      if ((v5 & 2) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_23;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_8;
  }

  v14 = *(a2 + 30);
  v6 |= 0x200u;
  *(this + 62) = v6;
  *(this + 30) = v14;
  v5 = *(a2 + 62);
  if ((v5 & 2) == 0)
  {
LABEL_9:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  v15 = *(a2 + 22);
  v6 |= 2u;
  *(this + 62) = v6;
  *(this + 22) = v15;
  v5 = *(a2 + 62);
  if ((v5 & 0x80) == 0)
  {
LABEL_10:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_24:
  v16 = *(a2 + 28);
  v6 |= 0x80u;
  *(this + 62) = v6;
  *(this + 28) = v16;
  if ((*(a2 + 62) & 0x10) != 0)
  {
LABEL_11:
    v9 = *(a2 + 25);
    *(this + 62) = v6 | 0x10;
    *(this + 25) = v9;
  }

LABEL_12:
  if (this != a2)
  {
    sub_100035D1C(v4, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 2);
  }

  v10 = *(a2 + 62);
  if ((v10 & 8) != 0)
  {
    v17 = *(a2 + 24);
    *(this + 62) |= 8u;
    *(this + 24) = v17;
    v10 = *(a2 + 62);
    if ((v10 & 0x100) == 0)
    {
LABEL_16:
      if ((v10 & 4) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  else if ((*(a2 + 62) & 0x100) == 0)
  {
    goto LABEL_16;
  }

  v18 = *(a2 + 29);
  *(this + 62) |= 0x100u;
  *(this + 29) = v18;
  if ((*(a2 + 62) & 4) != 0)
  {
LABEL_17:
    v11 = *(a2 + 23);
    *(this + 62) |= 4u;
    *(this + 23) = v11;
  }

LABEL_18:
  if (this != a2)
  {
    sub_100035D1C(this + 4, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 2);
    sub_100035D1C(this + 7, *(a2 + 7), *(a2 + 8), (*(a2 + 8) - *(a2 + 7)) >> 2);
  }

  return this;
}

CMMsl *CMMsl::PearlAttitude::operator=(CMMsl *a1, const CMMsl::PearlAttitude *a2)
{
  if (a1 != a2)
  {
    CMMsl::PearlAttitude::PearlAttitude(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::PearlAttitude::~PearlAttitude(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::PearlAttitude *a2, CMMsl::PearlAttitude *a3)
{
  v3 = *(this + 31);
  *(this + 31) = *(a2 + 31);
  *(a2 + 31) = v3;
  v4 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v4;
  LODWORD(v4) = *(this + 27);
  *(this + 27) = *(a2 + 27);
  *(a2 + 27) = v4;
  LODWORD(v4) = *(this + 26);
  *(this + 26) = *(a2 + 26);
  *(a2 + 26) = v4;
  LODWORD(v4) = *(this + 30);
  *(this + 30) = *(a2 + 30);
  *(a2 + 30) = v4;
  LODWORD(v4) = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v4;
  v5 = *(this + 28);
  *(this + 28) = *(a2 + 28);
  *(a2 + 28) = v5;
  v6 = *(this + 25);
  *(this + 25) = *(a2 + 25);
  *(a2 + 25) = v6;
  v7 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v7;
  v8 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v8;
  v9 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v9;
  LODWORD(v4) = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v4;
  LODWORD(v4) = *(this + 29);
  *(this + 29) = *(a2 + 29);
  *(a2 + 29) = v4;
  result = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = result;
  v11 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v11;
  v12 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v12;
  v13 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v13;
  v14 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v14;
  v15 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v15;
  v16 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v16;
  return result;
}

uint64_t CMMsl::PearlAttitude::PearlAttitude(uint64_t a1, uint64_t a2)
{
  *a1 = off_100420CD8;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  v4 = a1 + 56;
  *(a1 + 8) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 124) = *(a2 + 124);
  *(a2 + 124) = 0;
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 100) = *(a2 + 100);
  sub_1002A2DD0(a1 + 8, (a2 + 8));
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 116) = *(a2 + 116);
  *(a1 + 92) = *(a2 + 92);
  sub_1002A2DD0(a1 + 32, (a2 + 32));
  sub_1002A2DD0(v4, (a2 + 56));
  return a1;
}

CMMsl *CMMsl::PearlAttitude::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::PearlAttitude::PearlAttitude(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::PearlAttitude::~PearlAttitude(v5);
  }

  return a1;
}

uint64_t CMMsl::PearlAttitude::formatText(CMMsl::PearlAttitude *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 62);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "distance", *(this + 22));
    v5 = *(this + 62);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_27;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "focalLength", *(this + 23));
  v5 = *(this + 62);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_27:
  PB::TextFormatter::format(a2, "height", *(this + 24));
  if ((*(this + 62) & 0x10) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(a2, "orientation", *(this + 25));
  }

LABEL_6:
  v6 = *(this + 1);
  v7 = *(this + 2);
  while (v6 != v7)
  {
    v8 = *v6++;
    PB::TextFormatter::format(a2, "origin", v8);
  }

  if ((*(this + 62) & 0x20) != 0)
  {
    PB::TextFormatter::format(a2, "pitch", *(this + 26));
  }

  v9 = *(this + 4);
  v10 = *(this + 5);
  while (v9 != v10)
  {
    v11 = *v9++;
    PB::TextFormatter::format(a2, "principlePoint", v11);
  }

  v12 = *(this + 62);
  if ((v12 & 0x40) != 0)
  {
    PB::TextFormatter::format(a2, "roll", *(this + 27));
    v12 = *(this + 62);
  }

  if (v12)
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 10));
  }

  v13 = *(this + 7);
  v14 = *(this + 8);
  while (v13 != v14)
  {
    v15 = *v13++;
    PB::TextFormatter::format(a2, "transform", v15);
  }

  v16 = *(this + 62);
  if ((v16 & 0x80) != 0)
  {
    PB::TextFormatter::format(a2, "type", *(this + 28));
    v16 = *(this + 62);
    if ((v16 & 0x100) == 0)
    {
LABEL_20:
      if ((v16 & 0x200) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }
  }

  else if ((*(this + 62) & 0x100) == 0)
  {
    goto LABEL_20;
  }

  PB::TextFormatter::format(a2, "width", *(this + 29));
  if ((*(this + 62) & 0x200) != 0)
  {
LABEL_21:
    PB::TextFormatter::format(a2, "yaw", *(this + 30));
  }

LABEL_22:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::PearlAttitude::readFrom(CMMsl::PearlAttitude *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
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
          goto LABEL_18;
        }
      }

LABEL_21:
      v22 = v10 & 7;
      if (v4 & 1 | (v22 == 4))
      {
        goto LABEL_198;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 62) |= 1u;
          v23 = *(a2 + 1);
          if (v23 > 0xFFFFFFFFFFFFFFF7 || v23 + 8 > *(a2 + 2))
          {
            goto LABEL_190;
          }

          *(this + 10) = *(*a2 + v23);
          v24 = *(a2 + 1) + 8;
          goto LABEL_193;
        case 2u:
          *(this + 62) |= 0x40u;
          v77 = *(a2 + 1);
          if (v77 > 0xFFFFFFFFFFFFFFFBLL || v77 + 4 > *(a2 + 2))
          {
            goto LABEL_190;
          }

          *(this + 27) = *(*a2 + v77);
          goto LABEL_192;
        case 3u:
          *(this + 62) |= 0x20u;
          v59 = *(a2 + 1);
          if (v59 > 0xFFFFFFFFFFFFFFFBLL || v59 + 4 > *(a2 + 2))
          {
            goto LABEL_190;
          }

          *(this + 26) = *(*a2 + v59);
          goto LABEL_192;
        case 4u:
          *(this + 62) |= 0x200u;
          v60 = *(a2 + 1);
          if (v60 > 0xFFFFFFFFFFFFFFFBLL || v60 + 4 > *(a2 + 2))
          {
            goto LABEL_190;
          }

          *(this + 30) = *(*a2 + v60);
          goto LABEL_192;
        case 5u:
          *(this + 62) |= 2u;
          v41 = *(a2 + 1);
          if (v41 > 0xFFFFFFFFFFFFFFFBLL || v41 + 4 > *(a2 + 2))
          {
            goto LABEL_190;
          }

          *(this + 22) = *(*a2 + v41);
          goto LABEL_192;
        case 6u:
          *(this + 62) |= 0x80u;
          v79 = *(a2 + 1);
          v78 = *(a2 + 2);
          v80 = *a2;
          if (v79 <= 0xFFFFFFFFFFFFFFF5 && v79 + 10 <= v78)
          {
            v81 = 0;
            v82 = 0;
            v83 = 0;
            v84 = (v80 + v79);
            v85 = v79 + 1;
            do
            {
              *(a2 + 1) = v85;
              v86 = *v84++;
              v83 |= (v86 & 0x7F) << v81;
              if ((v86 & 0x80) == 0)
              {
                goto LABEL_175;
              }

              v81 += 7;
              ++v85;
              v14 = v82++ > 8;
            }

            while (!v14);
LABEL_136:
            LODWORD(v83) = 0;
            goto LABEL_175;
          }

          v105 = 0;
          v106 = 0;
          v83 = 0;
          v17 = v78 >= v79;
          v107 = v78 - v79;
          if (!v17)
          {
            v107 = 0;
          }

          v108 = (v80 + v79);
          v109 = v79 + 1;
          while (2)
          {
            if (v107)
            {
              v110 = *v108;
              *(a2 + 1) = v109;
              v83 |= (v110 & 0x7F) << v105;
              if (v110 < 0)
              {
                v105 += 7;
                --v107;
                ++v108;
                ++v109;
                v14 = v106++ > 8;
                if (v14)
                {
                  goto LABEL_136;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v83) = 0;
              }
            }

            else
            {
              LODWORD(v83) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_175:
          *(this + 28) = v83;
          goto LABEL_194;
        case 7u:
          *(this + 62) |= 0x10u;
          v88 = *(a2 + 1);
          v87 = *(a2 + 2);
          v89 = *a2;
          if (v88 <= 0xFFFFFFFFFFFFFFF5 && v88 + 10 <= v87)
          {
            v90 = 0;
            v91 = 0;
            v92 = 0;
            v93 = (v89 + v88);
            v94 = v88 + 1;
            do
            {
              *(a2 + 1) = v94;
              v95 = *v93++;
              v92 |= (v95 & 0x7F) << v90;
              if ((v95 & 0x80) == 0)
              {
                goto LABEL_178;
              }

              v90 += 7;
              ++v94;
              v14 = v91++ > 8;
            }

            while (!v14);
LABEL_144:
            LODWORD(v92) = 0;
            goto LABEL_178;
          }

          v111 = 0;
          v112 = 0;
          v92 = 0;
          v17 = v87 >= v88;
          v113 = v87 - v88;
          if (!v17)
          {
            v113 = 0;
          }

          v114 = (v89 + v88);
          v115 = v88 + 1;
          while (2)
          {
            if (v113)
            {
              v116 = *v114;
              *(a2 + 1) = v115;
              v92 |= (v116 & 0x7F) << v111;
              if (v116 < 0)
              {
                v111 += 7;
                --v113;
                ++v114;
                ++v115;
                v14 = v112++ > 8;
                if (v14)
                {
                  goto LABEL_144;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v92) = 0;
              }
            }

            else
            {
              LODWORD(v92) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_178:
          *(this + 25) = v92;
          goto LABEL_194;
        case 8u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
LABEL_200:
              v148 = 0;
              return v148 & 1;
            }

            v61 = *(a2 + 1);
            v62 = *(a2 + 2);
            while (v61 < v62 && (*(a2 + 24) & 1) == 0)
            {
              v64 = *(this + 2);
              v63 = *(this + 3);
              if (v64 >= v63)
              {
                v66 = *(this + 1);
                v67 = v64 - v66;
                v68 = (v64 - v66) >> 2;
                v69 = v68 + 1;
                if ((v68 + 1) >> 62)
                {
                  goto LABEL_201;
                }

                v70 = v63 - v66;
                if (v70 >> 1 > v69)
                {
                  v69 = v70 >> 1;
                }

                if (v70 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v71 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v71 = v69;
                }

                if (v71)
                {
                  sub_10002290C(this + 8, v71);
                }

                v72 = (v64 - v66) >> 2;
                v73 = (4 * v68);
                v74 = (4 * v68 - 4 * v72);
                *v73 = 0;
                v65 = v73 + 1;
                memcpy(v74, v66, v67);
                v75 = *(this + 1);
                *(this + 1) = v74;
                *(this + 2) = v65;
                *(this + 3) = 0;
                if (v75)
                {
                  operator delete(v75);
                }
              }

              else
              {
                *v64 = 0;
                v65 = v64 + 4;
              }

              *(this + 2) = v65;
              v76 = *(a2 + 1);
              if (v76 > 0xFFFFFFFFFFFFFFFBLL || v76 + 4 > *(a2 + 2))
              {
                goto LABEL_145;
              }

              *(v65 - 1) = *(*a2 + v76);
              v62 = *(a2 + 2);
              v61 = *(a2 + 1) + 4;
              *(a2 + 1) = v61;
            }

LABEL_146:
            PB::Reader::recallMark();
          }

          else
          {
            v104 = *(this + 2);
            v103 = *(this + 3);
            if (v104 >= v103)
            {
              v129 = *(this + 1);
              v130 = v104 - v129;
              v131 = (v104 - v129) >> 2;
              v132 = v131 + 1;
              if ((v131 + 1) >> 62)
              {
LABEL_201:
                sub_10000CD24();
              }

              v133 = v103 - v129;
              if (v133 >> 1 > v132)
              {
                v132 = v133 >> 1;
              }

              if (v133 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v134 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v134 = v132;
              }

              if (v134)
              {
                sub_10002290C(this + 8, v134);
              }

              v143 = (v104 - v129) >> 2;
              v144 = (4 * v131);
              v145 = (4 * v131 - 4 * v143);
              *v144 = 0;
              v100 = v144 + 1;
              memcpy(v145, v129, v130);
              v146 = *(this + 1);
              *(this + 1) = v145;
              *(this + 2) = v100;
              *(this + 3) = 0;
              if (v146)
              {
                operator delete(v146);
              }
            }

            else
            {
              *v104 = 0;
              v100 = v104 + 4;
            }

            *(this + 2) = v100;
LABEL_188:
            v147 = *(a2 + 1);
            if (v147 <= 0xFFFFFFFFFFFFFFFBLL && v147 + 4 <= *(a2 + 2))
            {
              *(v100 - 1) = *(*a2 + v147);
LABEL_192:
              v24 = *(a2 + 1) + 4;
LABEL_193:
              *(a2 + 1) = v24;
            }

            else
            {
LABEL_190:
              *(a2 + 24) = 1;
            }
          }

LABEL_194:
          v2 = *(a2 + 1);
          v3 = *(a2 + 2);
          v4 = *(a2 + 24);
          if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
          {
            goto LABEL_198;
          }

          break;
        case 9u:
          *(this + 62) |= 8u;
          v97 = *(a2 + 1);
          if (v97 > 0xFFFFFFFFFFFFFFFBLL || v97 + 4 > *(a2 + 2))
          {
            goto LABEL_190;
          }

          *(this + 24) = *(*a2 + v97);
          goto LABEL_192;
        case 0xAu:
          *(this + 62) |= 0x100u;
          v58 = *(a2 + 1);
          if (v58 > 0xFFFFFFFFFFFFFFFBLL || v58 + 4 > *(a2 + 2))
          {
            goto LABEL_190;
          }

          *(this + 29) = *(*a2 + v58);
          goto LABEL_192;
        case 0xBu:
          *(this + 62) |= 4u;
          v96 = *(a2 + 1);
          if (v96 > 0xFFFFFFFFFFFFFFFBLL || v96 + 4 > *(a2 + 2))
          {
            goto LABEL_190;
          }

          *(this + 23) = *(*a2 + v96);
          goto LABEL_192;
        case 0xCu:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_200;
            }

            v25 = *(a2 + 1);
            v26 = *(a2 + 2);
            while (v25 < v26 && (*(a2 + 24) & 1) == 0)
            {
              v28 = *(this + 5);
              v27 = *(this + 6);
              if (v28 >= v27)
              {
                v30 = *(this + 4);
                v31 = v28 - v30;
                v32 = (v28 - v30) >> 2;
                v33 = v32 + 1;
                if ((v32 + 1) >> 62)
                {
                  goto LABEL_201;
                }

                v34 = v27 - v30;
                if (v34 >> 1 > v33)
                {
                  v33 = v34 >> 1;
                }

                if (v34 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v35 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v35 = v33;
                }

                if (v35)
                {
                  sub_10002290C(this + 32, v35);
                }

                v36 = (v28 - v30) >> 2;
                v37 = (4 * v32);
                v38 = (4 * v32 - 4 * v36);
                *v37 = 0;
                v29 = v37 + 1;
                memcpy(v38, v30, v31);
                v39 = *(this + 4);
                *(this + 4) = v38;
                *(this + 5) = v29;
                *(this + 6) = 0;
                if (v39)
                {
                  operator delete(v39);
                }
              }

              else
              {
                *v28 = 0;
                v29 = v28 + 4;
              }

              *(this + 5) = v29;
              v40 = *(a2 + 1);
              if (v40 > 0xFFFFFFFFFFFFFFFBLL || v40 + 4 > *(a2 + 2))
              {
                goto LABEL_145;
              }

              *(v29 - 1) = *(*a2 + v40);
              v26 = *(a2 + 2);
              v25 = *(a2 + 1) + 4;
              *(a2 + 1) = v25;
            }

            goto LABEL_146;
          }

          v99 = *(this + 5);
          v98 = *(this + 6);
          if (v99 >= v98)
          {
            v117 = *(this + 4);
            v118 = v99 - v117;
            v119 = (v99 - v117) >> 2;
            v120 = v119 + 1;
            if ((v119 + 1) >> 62)
            {
              goto LABEL_201;
            }

            v121 = v98 - v117;
            if (v121 >> 1 > v120)
            {
              v120 = v121 >> 1;
            }

            if (v121 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v122 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v122 = v120;
            }

            if (v122)
            {
              sub_10002290C(this + 32, v122);
            }

            v135 = (v99 - v117) >> 2;
            v136 = (4 * v119);
            v137 = (4 * v119 - 4 * v135);
            *v136 = 0;
            v100 = v136 + 1;
            memcpy(v137, v117, v118);
            v138 = *(this + 4);
            *(this + 4) = v137;
            *(this + 5) = v100;
            *(this + 6) = 0;
            if (v138)
            {
              operator delete(v138);
            }
          }

          else
          {
            *v99 = 0;
            v100 = v99 + 4;
          }

          *(this + 5) = v100;
          goto LABEL_188;
        case 0xDu:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_200;
            }

            v42 = *(a2 + 1);
            v43 = *(a2 + 2);
            while (v42 < v43 && (*(a2 + 24) & 1) == 0)
            {
              v45 = *(this + 8);
              v44 = *(this + 9);
              if (v45 >= v44)
              {
                v47 = *(this + 7);
                v48 = v45 - v47;
                v49 = (v45 - v47) >> 2;
                v50 = v49 + 1;
                if ((v49 + 1) >> 62)
                {
                  goto LABEL_201;
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
                  sub_10002290C(this + 56, v52);
                }

                v53 = (v45 - v47) >> 2;
                v54 = (4 * v49);
                v55 = (4 * v49 - 4 * v53);
                *v54 = 0;
                v46 = v54 + 1;
                memcpy(v55, v47, v48);
                v56 = *(this + 7);
                *(this + 7) = v55;
                *(this + 8) = v46;
                *(this + 9) = 0;
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

              *(this + 8) = v46;
              v57 = *(a2 + 1);
              if (v57 > 0xFFFFFFFFFFFFFFFBLL || v57 + 4 > *(a2 + 2))
              {
LABEL_145:
                *(a2 + 24) = 1;
                goto LABEL_146;
              }

              *(v46 - 1) = *(*a2 + v57);
              v43 = *(a2 + 2);
              v42 = *(a2 + 1) + 4;
              *(a2 + 1) = v42;
            }

            goto LABEL_146;
          }

          v102 = *(this + 8);
          v101 = *(this + 9);
          if (v102 >= v101)
          {
            v123 = *(this + 7);
            v124 = v102 - v123;
            v125 = (v102 - v123) >> 2;
            v126 = v125 + 1;
            if ((v125 + 1) >> 62)
            {
              goto LABEL_201;
            }

            v127 = v101 - v123;
            if (v127 >> 1 > v126)
            {
              v126 = v127 >> 1;
            }

            if (v127 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v128 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v128 = v126;
            }

            if (v128)
            {
              sub_10002290C(this + 56, v128);
            }

            v139 = (v102 - v123) >> 2;
            v140 = (4 * v125);
            v141 = (4 * v125 - 4 * v139);
            *v140 = 0;
            v100 = v140 + 1;
            memcpy(v141, v123, v124);
            v142 = *(this + 7);
            *(this + 7) = v141;
            *(this + 8) = v100;
            *(this + 9) = 0;
            if (v142)
            {
              operator delete(v142);
            }
          }

          else
          {
            *v102 = 0;
            v100 = v102 + 4;
          }

          *(this + 8) = v100;
          goto LABEL_188;
        default:
          if ((PB::Reader::skip(a2, v10 >> 3, v22, 0) & 1) == 0)
          {
            goto LABEL_200;
          }

          goto LABEL_194;
      }
    }

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
  }

LABEL_198:
  v148 = v4 ^ 1;
  return v148 & 1;
}

uint64_t CMMsl::PearlAttitude::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 124);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 80), 1u);
    v4 = *(v3 + 124);
    if ((v4 & 0x40) == 0)
    {
LABEL_3:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  else if ((v4 & 0x40) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 108), 2u);
  v4 = *(v3 + 124);
  if ((v4 & 0x20) == 0)
  {
LABEL_4:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = PB::Writer::write(a2, *(v3 + 104), 3u);
  v4 = *(v3 + 124);
  if ((v4 & 0x200) == 0)
  {
LABEL_5:
    if ((v4 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = PB::Writer::write(a2, *(v3 + 120), 4u);
  v4 = *(v3 + 124);
  if ((v4 & 2) == 0)
  {
LABEL_6:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_7;
    }

LABEL_28:
    this = PB::Writer::writeVarInt(a2, *(v3 + 112), 6u);
    if ((*(v3 + 124) & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_27:
  this = PB::Writer::write(a2, *(v3 + 88), 5u);
  v4 = *(v3 + 124);
  if ((v4 & 0x80) != 0)
  {
    goto LABEL_28;
  }

LABEL_7:
  if ((v4 & 0x10) != 0)
  {
LABEL_8:
    this = PB::Writer::writeVarInt(a2, *(v3 + 100), 7u);
  }

LABEL_9:
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    this = PB::Writer::write(a2, v7, 8u);
  }

  v8 = *(v3 + 124);
  if ((v8 & 8) == 0)
  {
    if ((*(v3 + 124) & 0x100) == 0)
    {
      goto LABEL_14;
    }

LABEL_31:
    this = PB::Writer::write(a2, *(v3 + 116), 0xAu);
    if ((*(v3 + 124) & 4) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  this = PB::Writer::write(a2, *(v3 + 96), 9u);
  v8 = *(v3 + 124);
  if ((v8 & 0x100) != 0)
  {
    goto LABEL_31;
  }

LABEL_14:
  if ((v8 & 4) != 0)
  {
LABEL_15:
    this = PB::Writer::write(a2, *(v3 + 92), 0xBu);
  }

LABEL_16:
  v9 = *(v3 + 32);
  v10 = *(v3 + 40);
  while (v9 != v10)
  {
    v11 = *v9++;
    this = PB::Writer::write(a2, v11, 0xCu);
  }

  v13 = *(v3 + 56);
  v12 = *(v3 + 64);
  while (v13 != v12)
  {
    v14 = *v13++;
    this = PB::Writer::write(a2, v14, 0xDu);
  }

  return this;
}

uint64_t CMMsl::PearlAttitude::hash_value(CMMsl::PearlAttitude *this)
{
  v2 = *(this + 62);
  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 0x40) != 0)
    {
      goto LABEL_3;
    }

LABEL_25:
    v5 = 0;
    if ((v2 & 0x20) != 0)
    {
      goto LABEL_7;
    }

LABEL_26:
    v7 = 0;
    if ((*(this + 62) & 0x200) != 0)
    {
      goto LABEL_11;
    }

LABEL_27:
    v9 = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_15;
    }

LABEL_28:
    v11 = 0;
    if ((v2 & 0x80) != 0)
    {
      goto LABEL_19;
    }

LABEL_29:
    v12 = 0;
    if ((v2 & 0x10) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_30;
  }

  if (*(this + 10) == 0.0)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(this + 10);
  }

  if ((v2 & 0x40) == 0)
  {
    goto LABEL_25;
  }

LABEL_3:
  v4 = *(this + 27);
  if (v4 == 0.0)
  {
    v5 = 0;
  }

  else
  {
    v5 = LODWORD(v4);
  }

  if ((v2 & 0x20) == 0)
  {
    goto LABEL_26;
  }

LABEL_7:
  v6 = *(this + 26);
  if (v6 == 0.0)
  {
    v7 = 0;
  }

  else
  {
    v7 = LODWORD(v6);
  }

  if ((*(this + 62) & 0x200) == 0)
  {
    goto LABEL_27;
  }

LABEL_11:
  v8 = *(this + 30);
  if (v8 == 0.0)
  {
    v9 = 0;
  }

  else
  {
    v9 = LODWORD(v8);
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_28;
  }

LABEL_15:
  v10 = *(this + 22);
  if (v10 == 0.0)
  {
    v11 = 0;
  }

  else
  {
    v11 = LODWORD(v10);
  }

  if ((v2 & 0x80) == 0)
  {
    goto LABEL_29;
  }

LABEL_19:
  v12 = *(this + 28);
  if ((v2 & 0x10) != 0)
  {
LABEL_20:
    v13 = *(this + 25);
    goto LABEL_31;
  }

LABEL_30:
  v13 = 0;
LABEL_31:
  v14 = *(this + 1);
  v15 = *(this + 2);
  v16 = PBHashBytes();
  v17 = *(this + 62);
  if ((v17 & 8) != 0)
  {
    v23 = *(this + 24);
    v18 = LODWORD(v23);
    if (v23 == 0.0)
    {
      v18 = 0;
    }

    if ((*(this + 62) & 0x100) != 0)
    {
LABEL_33:
      v19 = *(this + 29);
      v20 = LODWORD(v19);
      if (v19 == 0.0)
      {
        v20 = 0;
      }

      if ((v17 & 4) != 0)
      {
        goto LABEL_36;
      }

LABEL_43:
      v22 = 0;
      goto LABEL_44;
    }
  }

  else
  {
    v18 = 0;
    if ((*(this + 62) & 0x100) != 0)
    {
      goto LABEL_33;
    }
  }

  v20 = 0;
  if ((v17 & 4) == 0)
  {
    goto LABEL_43;
  }

LABEL_36:
  v21 = *(this + 23);
  v22 = LODWORD(v21);
  if (v21 == 0.0)
  {
    v22 = 0;
  }

LABEL_44:
  v24 = v5 ^ v3 ^ v7 ^ v9 ^ v11 ^ v12 ^ v13 ^ v18 ^ v20 ^ v22 ^ v16;
  v25 = *(this + 4);
  v26 = *(this + 5);
  v27 = PBHashBytes();
  v28 = *(this + 7);
  v29 = *(this + 8);
  return v24 ^ v27 ^ PBHashBytes();
}

void CMMsl::PedOdomFusionExtendedModeSegment::~PedOdomFusionExtendedModeSegment(CMMsl::PedOdomFusionExtendedModeSegment *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::PedOdomFusionExtendedModeSegment::PedOdomFusionExtendedModeSegment(uint64_t this, const CMMsl::PedOdomFusionExtendedModeSegment *a2)
{
  *this = off_100420D10;
  *(this + 56) = 0;
  v2 = *(a2 + 56);
  if ((v2 & 4) != 0)
  {
    v4 = *(a2 + 3);
    v3 = 4;
    *(this + 56) = 4;
    *(this + 24) = v4;
    v2 = *(a2 + 56);
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 56) & 8) != 0)
  {
LABEL_5:
    v5 = *(a2 + 4);
    v3 |= 8u;
    *(this + 56) = v3;
    *(this + 32) = v5;
    v2 = *(a2 + 56);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    v6 = *(a2 + 2);
    v3 |= 2u;
    *(this + 56) = v3;
    *(this + 16) = v6;
    v2 = *(a2 + 56);
    if ((v2 & 1) == 0)
    {
LABEL_8:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_14;
    }
  }

  else if ((v2 & 1) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 1);
  v3 |= 1u;
  *(this + 56) = v3;
  *(this + 8) = v7;
  v2 = *(a2 + 56);
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
  v8 = *(a2 + 5);
  v3 |= 0x10u;
  *(this + 56) = v3;
  *(this + 40) = v8;
  v2 = *(a2 + 56);
  if ((v2 & 0x40) == 0)
  {
LABEL_10:
    if ((v2 & 0x20) == 0)
    {
      return this;
    }

LABEL_16:
    v10 = *(a2 + 12);
    *(this + 56) = v3 | 0x20;
    *(this + 48) = v10;
    return this;
  }

LABEL_15:
  v9 = *(a2 + 52);
  v3 |= 0x40u;
  *(this + 56) = v3;
  *(this + 52) = v9;
  if ((*(a2 + 56) & 0x20) != 0)
  {
    goto LABEL_16;
  }

  return this;
}

uint64_t CMMsl::PedOdomFusionExtendedModeSegment::operator=(uint64_t a1, const CMMsl::PedOdomFusionExtendedModeSegment *a2)
{
  if (a1 != a2)
  {
    CMMsl::PedOdomFusionExtendedModeSegment::PedOdomFusionExtendedModeSegment(&v9, a2);
    v3 = *(a1 + 56);
    *(a1 + 56) = v15;
    v15 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v11;
    v11 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v10;
    v10 = v5;
    v6 = *(a1 + 40);
    *(a1 + 40) = v12;
    v12 = v6;
    LOBYTE(v3) = *(a1 + 52);
    *(a1 + 52) = v14;
    v14 = v3;
    v7 = *(a1 + 48);
    *(a1 + 48) = v13;
    v13 = v7;
    PB::Base::~Base(&v9);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::PedOdomFusionExtendedModeSegment *a2, CMMsl::PedOdomFusionExtendedModeSegment *a3)
{
  v3 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v3;
  v4 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v4;
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v6;
  v7 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v7;
  result = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = result;
  LOBYTE(v3) = *(this + 52);
  *(this + 52) = *(a2 + 52);
  *(a2 + 52) = v3;
  v9 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v9;
  return result;
}

double CMMsl::PedOdomFusionExtendedModeSegment::PedOdomFusionExtendedModeSegment(uint64_t a1, uint64_t a2)
{
  *a1 = off_100420D10;
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 48) = *(a2 + 48);
  return result;
}

{
  *a1 = off_100420D10;
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 48) = *(a2 + 48);
  return result;
}

uint64_t CMMsl::PedOdomFusionExtendedModeSegment::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v12 = off_100420D10;
    v3 = *(a2 + 56);
    *(a2 + 56) = 0;
    v4 = *(a2 + 40);
    v5 = *(a2 + 52);
    v6 = *(a2 + 48);
    v18 = *(a1 + 56);
    v14 = *(a1 + 24);
    v7 = *(a1 + 8);
    v8 = *(a2 + 8);
    v9 = *(a2 + 24);
    *(a1 + 56) = v3;
    *(a1 + 24) = v9;
    *(a1 + 8) = v8;
    v13 = v7;
    *&v7 = *(a1 + 40);
    *(a1 + 40) = v4;
    v15 = v7;
    LOBYTE(v3) = *(a1 + 52);
    *(a1 + 52) = v5;
    v17 = v3;
    v10 = *(a1 + 48);
    *(a1 + 48) = v6;
    v16 = v10;
    PB::Base::~Base(&v12);
  }

  return a1;
}

uint64_t CMMsl::PedOdomFusionExtendedModeSegment::formatText(CMMsl::PedOdomFusionExtendedModeSegment *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 56);
  if ((v5 & 0x20) != 0)
  {
    PB::TextFormatter::format(a2, "batchedLocationFixType", *(this + 12));
    v5 = *(this + 56);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(this + 56) & 1) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "distOdom", *(this + 1));
  v5 = *(this + 56);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  PB::TextFormatter::format(a2, "distPed", *(this + 2));
  v5 = *(this + 56);
  if ((v5 & 0x40) == 0)
  {
LABEL_5:
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  PB::TextFormatter::format(a2, "isValid", *(this + 52));
  v5 = *(this + 56);
  if ((v5 & 4) == 0)
  {
LABEL_6:
    if ((v5 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  PB::TextFormatter::format(a2, "timeStart", *(this + 3));
  v5 = *(this + 56);
  if ((v5 & 8) == 0)
  {
LABEL_7:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  PB::TextFormatter::format(a2, "timeStop", *(this + 4));
  if ((*(this + 56) & 0x10) != 0)
  {
LABEL_8:
    PB::TextFormatter::format(a2, "uncOdom", *(this + 5));
  }

LABEL_9:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::PedOdomFusionExtendedModeSegment::readFrom(CMMsl::PedOdomFusionExtendedModeSegment *this, PB::Reader *a2)
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
            goto LABEL_78;
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
            *(this + 56) |= 4u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
LABEL_56:
              *(a2 + 24) = 1;
              goto LABEL_74;
            }

            *(this + 3) = *(*a2 + v2);
            goto LABEL_68;
          case 2:
            *(this + 56) |= 8u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
              goto LABEL_56;
            }

            *(this + 4) = *(*a2 + v2);
            goto LABEL_68;
          case 3:
            *(this + 56) |= 2u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
              goto LABEL_56;
            }

            *(this + 2) = *(*a2 + v2);
            goto LABEL_68;
        }
      }

      else if (v22 > 5)
      {
        if (v22 == 6)
        {
          *(this + 56) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v32 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v31 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v32 = v31 != 0;
          }

          *(this + 52) = v32;
          goto LABEL_74;
        }

        if (v22 == 7)
        {
          *(this + 56) |= 0x20u;
          v23 = *(a2 + 1);
          v2 = *(a2 + 2);
          v24 = *a2;
          if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
          {
            v33 = 0;
            v34 = 0;
            v27 = 0;
            if (v2 <= v23)
            {
              v2 = *(a2 + 1);
            }

            v35 = v2 - v23;
            v36 = (v24 + v23);
            v37 = v23 + 1;
            while (1)
            {
              if (!v35)
              {
                LODWORD(v27) = 0;
                *(a2 + 24) = 1;
                goto LABEL_73;
              }

              v38 = v37;
              v39 = *v36;
              *(a2 + 1) = v38;
              v27 |= (v39 & 0x7F) << v33;
              if ((v39 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              --v35;
              ++v36;
              v37 = v38 + 1;
              v14 = v34++ > 8;
              if (v14)
              {
                LODWORD(v27) = 0;
                goto LABEL_72;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v27) = 0;
            }

LABEL_72:
            v2 = v38;
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

LABEL_73:
          *(this + 12) = v27;
          goto LABEL_74;
        }
      }

      else
      {
        if (v22 == 4)
        {
          *(this + 56) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_56;
          }

          *(this + 1) = *(*a2 + v2);
          goto LABEL_68;
        }

        if (v22 == 5)
        {
          *(this + 56) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_56;
          }

          *(this + 5) = *(*a2 + v2);
LABEL_68:
          v2 = *(a2 + 1) + 8;
          *(a2 + 1) = v2;
          goto LABEL_74;
        }
      }

      if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
      {
        v40 = 0;
        return v40 & 1;
      }

      v2 = *(a2 + 1);
LABEL_74:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_78:
  v40 = v4 ^ 1;
  return v40 & 1;
}

uint64_t CMMsl::PedOdomFusionExtendedModeSegment::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 56);
  if ((v4 & 4) != 0)
  {
    this = PB::Writer::write(a2, *(this + 24), 1u);
    v4 = *(v3 + 56);
    if ((v4 & 8) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(this + 56) & 8) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 32), 2u);
  v4 = *(v3 + 56);
  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  this = PB::Writer::write(a2, *(v3 + 16), 3u);
  v4 = *(v3 + 56);
  if ((v4 & 1) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  this = PB::Writer::write(a2, *(v3 + 8), 4u);
  v4 = *(v3 + 56);
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    this = PB::Writer::write(a2, *(v3 + 52), 6u);
    if ((*(v3 + 56) & 0x20) == 0)
    {
      return this;
    }

    goto LABEL_15;
  }

LABEL_13:
  this = PB::Writer::write(a2, *(v3 + 40), 5u);
  v4 = *(v3 + 56);
  if ((v4 & 0x40) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v4 & 0x20) == 0)
  {
    return this;
  }

LABEL_15:
  v5 = *(v3 + 48);

  return PB::Writer::writeVarInt(a2, v5, 7u);
}

uint64_t CMMsl::PedOdomFusionExtendedModeSegment::hash_value(CMMsl::PedOdomFusionExtendedModeSegment *this)
{
  if ((*(this + 56) & 4) == 0)
  {
    v1 = 0.0;
    if ((*(this + 56) & 8) != 0)
    {
      goto LABEL_3;
    }

LABEL_20:
    v2 = 0.0;
    if ((*(this + 56) & 2) != 0)
    {
      goto LABEL_6;
    }

LABEL_21:
    v3 = 0.0;
    if (*(this + 56))
    {
      goto LABEL_9;
    }

LABEL_22:
    v4 = 0.0;
    if ((*(this + 56) & 0x10) != 0)
    {
      goto LABEL_12;
    }

LABEL_23:
    v5 = 0.0;
    if ((*(this + 56) & 0x40) != 0)
    {
      goto LABEL_15;
    }

LABEL_24:
    v6 = 0;
    if ((*(this + 56) & 0x20) != 0)
    {
      goto LABEL_16;
    }

LABEL_25:
    v7 = 0;
    return *&v2 ^ *&v1 ^ *&v3 ^ *&v4 ^ *&v5 ^ v6 ^ v7;
  }

  v1 = *(this + 3);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  if ((*(this + 56) & 8) == 0)
  {
    goto LABEL_20;
  }

LABEL_3:
  v2 = *(this + 4);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((*(this + 56) & 2) == 0)
  {
    goto LABEL_21;
  }

LABEL_6:
  v3 = *(this + 2);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  if ((*(this + 56) & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_9:
  v4 = *(this + 1);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  if ((*(this + 56) & 0x10) == 0)
  {
    goto LABEL_23;
  }

LABEL_12:
  v5 = *(this + 5);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  if ((*(this + 56) & 0x40) == 0)
  {
    goto LABEL_24;
  }

LABEL_15:
  v6 = *(this + 52);
  if ((*(this + 56) & 0x20) == 0)
  {
    goto LABEL_25;
  }

LABEL_16:
  v7 = *(this + 12);
  return *&v2 ^ *&v1 ^ *&v3 ^ *&v4 ^ *&v5 ^ v6 ^ v7;
}

void CMMsl::PedestrianCalorieModelDebugging::~PedestrianCalorieModelDebugging(CMMsl::PedestrianCalorieModelDebugging *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::PedestrianCalorieModelDebugging::PedestrianCalorieModelDebugging(uint64_t this, const CMMsl::PedestrianCalorieModelDebugging *a2)
{
  *this = off_100420D48;
  *(this + 116) = 0;
  v2 = *(a2 + 58);
  if ((v2 & 0x80) != 0)
  {
    v4 = *(a2 + 8);
    v3 = 128;
    *(this + 116) = 128;
    *(this + 64) = v4;
    v2 = *(a2 + 58);
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 58) & 0x2000) != 0)
  {
LABEL_5:
    v5 = *(a2 + 27);
    v3 |= 0x2000u;
    *(this + 116) = v3;
    *(this + 108) = v5;
    v2 = *(a2 + 58);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    v6 = *(a2 + 3);
    v3 |= 4u;
    *(this + 116) = v3;
    *(this + 24) = v6;
    v2 = *(a2 + 58);
    if ((v2 & 0x40) == 0)
    {
LABEL_8:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_23;
    }
  }

  else if ((v2 & 0x40) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 7);
  v3 |= 0x40u;
  *(this + 116) = v3;
  *(this + 56) = v7;
  v2 = *(a2 + 58);
  if ((v2 & 0x10) == 0)
  {
LABEL_9:
    if ((v2 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  v8 = *(a2 + 5);
  v3 |= 0x10u;
  *(this + 116) = v3;
  *(this + 40) = v8;
  v2 = *(a2 + 58);
  if ((v2 & 1) == 0)
  {
LABEL_10:
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  v9 = *(a2 + 1);
  v3 |= 1u;
  *(this + 116) = v3;
  *(this + 8) = v9;
  v2 = *(a2 + 58);
  if ((v2 & 2) == 0)
  {
LABEL_11:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  v10 = *(a2 + 2);
  v3 |= 2u;
  *(this + 116) = v3;
  *(this + 16) = v10;
  v2 = *(a2 + 58);
  if ((v2 & 0x800) == 0)
  {
LABEL_12:
    if ((v2 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  v11 = *(a2 + 12);
  v3 |= 0x800u;
  *(this + 116) = v3;
  *(this + 96) = v11;
  v2 = *(a2 + 58);
  if ((v2 & 8) == 0)
  {
LABEL_13:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_27:
  v12 = *(a2 + 4);
  v3 |= 8u;
  *(this + 116) = v3;
  *(this + 32) = v12;
  v2 = *(a2 + 58);
  if ((v2 & 0x100) == 0)
  {
LABEL_14:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_29;
  }

LABEL_28:
  v13 = *(a2 + 9);
  v3 |= 0x100u;
  *(this + 116) = v3;
  *(this + 72) = v13;
  v2 = *(a2 + 58);
  if ((v2 & 0x20) == 0)
  {
LABEL_15:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_30;
  }

LABEL_29:
  v14 = *(a2 + 6);
  v3 |= 0x20u;
  *(this + 116) = v3;
  *(this + 48) = v14;
  v2 = *(a2 + 58);
  if ((v2 & 0x400) == 0)
  {
LABEL_16:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_31;
  }

LABEL_30:
  v15 = *(a2 + 11);
  v3 |= 0x400u;
  *(this + 116) = v3;
  *(this + 88) = v15;
  v2 = *(a2 + 58);
  if ((v2 & 0x200) == 0)
  {
LABEL_17:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_32;
  }

LABEL_31:
  v16 = *(a2 + 10);
  v3 |= 0x200u;
  *(this + 116) = v3;
  *(this + 80) = v16;
  v2 = *(a2 + 58);
  if ((v2 & 0x8000) == 0)
  {
LABEL_18:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_33;
  }

LABEL_32:
  v17 = *(a2 + 113);
  v3 |= 0x8000u;
  *(this + 116) = v3;
  *(this + 113) = v17;
  v2 = *(a2 + 58);
  if ((v2 & 0x4000) == 0)
  {
LABEL_19:
    if ((v2 & 0x1000) == 0)
    {
      return this;
    }

LABEL_34:
    v19 = *(a2 + 26);
    *(this + 116) = v3 | 0x1000;
    *(this + 104) = v19;
    return this;
  }

LABEL_33:
  v18 = *(a2 + 112);
  v3 |= 0x4000u;
  *(this + 116) = v3;
  *(this + 112) = v18;
  if ((*(a2 + 58) & 0x1000) != 0)
  {
    goto LABEL_34;
  }

  return this;
}

CMMsl *CMMsl::PedestrianCalorieModelDebugging::operator=(CMMsl *a1, const CMMsl::PedestrianCalorieModelDebugging *a2)
{
  if (a1 != a2)
  {
    CMMsl::PedestrianCalorieModelDebugging::PedestrianCalorieModelDebugging(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::PedestrianCalorieModelDebugging *a2, CMMsl::PedestrianCalorieModelDebugging *a3)
{
  v3 = *(this + 29);
  *(this + 29) = *(a2 + 29);
  *(a2 + 29) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v4;
  v5 = *(this + 27);
  *(this + 27) = *(a2 + 27);
  *(a2 + 27) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  v7 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v7;
  v8 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v8;
  v9 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v9;
  v10 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v10;
  v11 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v11;
  v12 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v12;
  v13 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v13;
  v14 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v14;
  v15 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v15;
  result = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = result;
  LOBYTE(v5) = *(this + 113);
  *(this + 113) = *(a2 + 113);
  *(a2 + 113) = v5;
  LOBYTE(v5) = *(this + 112);
  *(this + 112) = *(a2 + 112);
  *(a2 + 112) = v5;
  v17 = *(this + 26);
  *(this + 26) = *(a2 + 26);
  *(a2 + 26) = v17;
  return result;
}

double CMMsl::PedestrianCalorieModelDebugging::PedestrianCalorieModelDebugging(uint64_t a1, uint64_t a2)
{
  *a1 = off_100420D48;
  *(a1 + 116) = *(a2 + 116);
  *(a2 + 116) = 0;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 88) = *(a2 + 88);
  result = *(a2 + 80);
  *(a1 + 80) = result;
  *(a1 + 113) = *(a2 + 113);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 104) = *(a2 + 104);
  return result;
}

CMMsl *CMMsl::PedestrianCalorieModelDebugging::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::PedestrianCalorieModelDebugging::PedestrianCalorieModelDebugging(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::PedestrianCalorieModelDebugging::formatText(CMMsl::PedestrianCalorieModelDebugging *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 58);
  if (v5)
  {
    PB::TextFormatter::format(a2, "activeTime", *(this + 1));
    v5 = *(this + 58);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "currentPace", *(this + 2));
  v5 = *(this + 58);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(a2, "distance", *(this + 3));
  v5 = *(this + 58);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(a2, "duration", *(this + 4));
  v5 = *(this + 58);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  PB::TextFormatter::format(a2, "firstStepTime", *(this + 5));
  v5 = *(this + 58);
  if ((v5 & 0x1000) == 0)
  {
LABEL_7:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(a2, "gradeType", *(this + 26));
  v5 = *(this + 58);
  if ((v5 & 0x4000) == 0)
  {
LABEL_8:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  PB::TextFormatter::format(a2, "isIndoor", *(this + 112));
  v5 = *(this + 58);
  if ((v5 & 0x8000) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(a2, "isMotionOverrideSet", *(this + 113));
  v5 = *(this + 58);
  if ((v5 & 0x20) == 0)
  {
LABEL_10:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  PB::TextFormatter::format(a2, "metsWR", *(this + 6));
  v5 = *(this + 58);
  if ((v5 & 0x40) == 0)
  {
LABEL_11:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  PB::TextFormatter::format(a2, "rawDistance", *(this + 7));
  v5 = *(this + 58);
  if ((v5 & 0x80) == 0)
  {
LABEL_12:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  PB::TextFormatter::format(a2, "startTime", *(this + 8));
  v5 = *(this + 58);
  if ((v5 & 0x2000) == 0)
  {
LABEL_13:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_33;
  }

LABEL_32:
  PB::TextFormatter::format(a2, "steps", *(this + 27));
  v5 = *(this + 58);
  if ((v5 & 0x100) == 0)
  {
LABEL_14:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(a2, "stepsDuration", *(this + 9));
  v5 = *(this + 58);
  if ((v5 & 0x200) == 0)
  {
LABEL_15:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_34:
  PB::TextFormatter::format(a2, "truthMetsGradeCorrected", *(this + 10));
  v5 = *(this + 58);
  if ((v5 & 0x400) == 0)
  {
LABEL_16:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_35:
  PB::TextFormatter::format(a2, "truthMetsStrollerCorrected", *(this + 11));
  if ((*(this + 58) & 0x800) != 0)
  {
LABEL_17:
    PB::TextFormatter::format(a2, "verticalSpeed", *(this + 12));
  }

LABEL_18:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::PedestrianCalorieModelDebugging::readFrom(CMMsl::PedestrianCalorieModelDebugging *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
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
          goto LABEL_18;
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        goto LABEL_115;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 58) |= 0x80u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_76;
          }

          *(this + 8) = *(*a2 + v2);
          goto LABEL_100;
        case 2u:
          *(this + 58) |= 0x2000u;
          v32 = *(a2 + 1);
          v2 = *(a2 + 2);
          v33 = *a2;
          if (v32 > 0xFFFFFFFFFFFFFFF5 || v32 + 10 > v2)
          {
            v49 = 0;
            v50 = 0;
            v36 = 0;
            if (v2 <= v32)
            {
              v2 = *(a2 + 1);
            }

            v51 = v2 - v32;
            v52 = (v33 + v32);
            v53 = v32 + 1;
            while (1)
            {
              if (!v51)
              {
                LODWORD(v36) = 0;
                *(a2 + 24) = 1;
                goto LABEL_110;
              }

              v54 = v53;
              v55 = *v52;
              *(a2 + 1) = v54;
              v36 |= (v55 & 0x7F) << v49;
              if ((v55 & 0x80) == 0)
              {
                break;
              }

              v49 += 7;
              --v51;
              ++v52;
              v53 = v54 + 1;
              v14 = v50++ > 8;
              if (v14)
              {
                LODWORD(v36) = 0;
LABEL_109:
                v2 = v54;
                goto LABEL_110;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v36) = 0;
            }

            goto LABEL_109;
          }

          v34 = 0;
          v35 = 0;
          v36 = 0;
          v37 = (v33 + v32);
          v38 = v32 + 1;
          do
          {
            v2 = v38;
            *(a2 + 1) = v38;
            v39 = *v37++;
            v36 |= (v39 & 0x7F) << v34;
            if ((v39 & 0x80) == 0)
            {
              goto LABEL_110;
            }

            v34 += 7;
            ++v38;
            v14 = v35++ > 8;
          }

          while (!v14);
          LODWORD(v36) = 0;
LABEL_110:
          *(this + 27) = v36;
          goto LABEL_111;
        case 3u:
          *(this + 58) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_76;
          }

          *(this + 3) = *(*a2 + v2);
          goto LABEL_100;
        case 4u:
          *(this + 58) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_76;
          }

          *(this + 7) = *(*a2 + v2);
          goto LABEL_100;
        case 5u:
          *(this + 58) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_76;
          }

          *(this + 5) = *(*a2 + v2);
          goto LABEL_100;
        case 6u:
          *(this + 58) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_76;
          }

          *(this + 1) = *(*a2 + v2);
          goto LABEL_100;
        case 7u:
          *(this + 58) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_76;
          }

          *(this + 2) = *(*a2 + v2);
          goto LABEL_100;
        case 8u:
          *(this + 58) |= 0x800u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_76;
          }

          *(this + 12) = *(*a2 + v2);
          goto LABEL_100;
        case 9u:
          *(this + 58) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_76;
          }

          *(this + 4) = *(*a2 + v2);
          goto LABEL_100;
        case 0xAu:
          *(this + 58) |= 0x100u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_76;
          }

          *(this + 9) = *(*a2 + v2);
          goto LABEL_100;
        case 0xBu:
          *(this + 58) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_76;
          }

          *(this + 6) = *(*a2 + v2);
          goto LABEL_100;
        case 0xCu:
          *(this + 58) |= 0x400u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_76;
          }

          *(this + 11) = *(*a2 + v2);
          goto LABEL_100;
        case 0xDu:
          *(this + 58) |= 0x200u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
LABEL_76:
            *(a2 + 24) = 1;
          }

          else
          {
            *(this + 10) = *(*a2 + v2);
LABEL_100:
            v2 = *(a2 + 1) + 8;
            *(a2 + 1) = v2;
          }

          goto LABEL_111;
        case 0xEu:
          *(this + 58) |= 0x8000u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v41 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v40 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v41 = v40 != 0;
          }

          *(this + 113) = v41;
          goto LABEL_111;
        case 0xFu:
          *(this + 58) |= 0x4000u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
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

          *(this + 112) = v23;
          goto LABEL_111;
        case 0x10u:
          *(this + 58) |= 0x1000u;
          v24 = *(a2 + 1);
          v2 = *(a2 + 2);
          v25 = *a2;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v2)
          {
            v42 = 0;
            v43 = 0;
            v28 = 0;
            if (v2 <= v24)
            {
              v2 = *(a2 + 1);
            }

            v44 = v2 - v24;
            v45 = (v25 + v24);
            v46 = v24 + 1;
            while (1)
            {
              if (!v44)
              {
                LODWORD(v28) = 0;
                *(a2 + 24) = 1;
                goto LABEL_106;
              }

              v47 = v46;
              v48 = *v45;
              *(a2 + 1) = v47;
              v28 |= (v48 & 0x7F) << v42;
              if ((v48 & 0x80) == 0)
              {
                break;
              }

              v42 += 7;
              --v44;
              ++v45;
              v46 = v47 + 1;
              v14 = v43++ > 8;
              if (v14)
              {
                LODWORD(v28) = 0;
LABEL_105:
                v2 = v47;
                goto LABEL_106;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v28) = 0;
            }

            goto LABEL_105;
          }

          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = (v25 + v24);
          v30 = v24 + 1;
          do
          {
            v2 = v30;
            *(a2 + 1) = v30;
            v31 = *v29++;
            v28 |= (v31 & 0x7F) << v26;
            if ((v31 & 0x80) == 0)
            {
              goto LABEL_106;
            }

            v26 += 7;
            ++v30;
            v14 = v27++ > 8;
          }

          while (!v14);
          LODWORD(v28) = 0;
LABEL_106:
          *(this + 26) = v28;
          goto LABEL_111;
        default:
          if (!PB::Reader::skip(a2, v10 >> 3, v10 & 7, 0))
          {
            v56 = 0;
            return v56 & 1;
          }

          v2 = *(a2 + 1);
LABEL_111:
          v3 = *(a2 + 2);
          v4 = *(a2 + 24);
          if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
          {
            goto LABEL_115;
          }

          break;
      }
    }

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
  }

LABEL_115:
  v56 = v4 ^ 1;
  return v56 & 1;
}