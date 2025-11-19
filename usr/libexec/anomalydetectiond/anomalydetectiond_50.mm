uint64_t CMMsl::PDRAlgType::writeTo(uint64_t this, PB::Writer *a2)
{
  if (*(this + 12))
  {
    return PB::Writer::writeVarInt(a2, *(this + 8), 1u);
  }

  return this;
}

uint64_t CMMsl::PDRAlgType::hash_value(CMMsl::PDRAlgType *this)
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

void CMMsl::PDRDOTEstimatorState::~PDRDOTEstimatorState(CMMsl::PDRDOTEstimatorState *this)
{
  PB::Base::~Base(this);

  operator delete();
}

double CMMsl::PDRDOTEstimatorState::PDRDOTEstimatorState(CMMsl::PDRDOTEstimatorState *this, const CMMsl::PDRDOTEstimatorState *a2)
{
  *this = off_100420760;
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

uint64_t CMMsl::PDRDOTEstimatorState::operator=(uint64_t a1, const CMMsl::PDRDOTEstimatorState *a2)
{
  if (a1 != a2)
  {
    CMMsl::PDRDOTEstimatorState::PDRDOTEstimatorState(v7, a2);
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

double CMMsl::swap(CMMsl *this, CMMsl::PDRDOTEstimatorState *a2, CMMsl::PDRDOTEstimatorState *a3)
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

double CMMsl::PDRDOTEstimatorState::PDRDOTEstimatorState(uint64_t a1, uint64_t a2)
{
  *a1 = off_100420760;
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
  *a1 = off_100420760;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

uint64_t CMMsl::PDRDOTEstimatorState::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v8 = off_100420760;
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

uint64_t CMMsl::PDRDOTEstimatorState::formatText(CMMsl::PDRDOTEstimatorState *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 32);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(a2, "dot", *(this + 6));
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

  PB::TextFormatter::format(a2, "dotUnc", *(this + 7));
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

uint64_t CMMsl::PDRDOTEstimatorState::readFrom(CMMsl::PDRDOTEstimatorState *this, PB::Reader *a2)
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

uint64_t CMMsl::PDRDOTEstimatorState::writeTo(uint64_t this, PB::Writer *a2)
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

uint64_t CMMsl::PDRDOTEstimatorState::hash_value(CMMsl::PDRDOTEstimatorState *this)
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

void CMMsl::PDRDOTEstimatorStateArmSwing::~PDRDOTEstimatorStateArmSwing(CMMsl::PDRDOTEstimatorStateArmSwing *this)
{
  PB::Base::~Base(this);

  operator delete();
}

double CMMsl::PDRDOTEstimatorStateArmSwing::PDRDOTEstimatorStateArmSwing(CMMsl::PDRDOTEstimatorStateArmSwing *this, const CMMsl::PDRDOTEstimatorStateArmSwing *a2)
{
  *this = off_100420798;
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

uint64_t CMMsl::PDRDOTEstimatorStateArmSwing::operator=(uint64_t a1, const CMMsl::PDRDOTEstimatorStateArmSwing *a2)
{
  if (a1 != a2)
  {
    CMMsl::PDRDOTEstimatorStateArmSwing::PDRDOTEstimatorStateArmSwing(v7, a2);
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

double CMMsl::swap(CMMsl *this, CMMsl::PDRDOTEstimatorStateArmSwing *a2, CMMsl::PDRDOTEstimatorStateArmSwing *a3)
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

double CMMsl::PDRDOTEstimatorStateArmSwing::PDRDOTEstimatorStateArmSwing(uint64_t a1, uint64_t a2)
{
  *a1 = off_100420798;
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
  *a1 = off_100420798;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

uint64_t CMMsl::PDRDOTEstimatorStateArmSwing::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v8 = off_100420798;
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

uint64_t CMMsl::PDRDOTEstimatorStateArmSwing::formatText(CMMsl::PDRDOTEstimatorStateArmSwing *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 32);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(a2, "dot", *(this + 6));
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

  PB::TextFormatter::format(a2, "dotUnc", *(this + 7));
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

uint64_t CMMsl::PDRDOTEstimatorStateArmSwing::readFrom(CMMsl::PDRDOTEstimatorStateArmSwing *this, PB::Reader *a2)
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

uint64_t CMMsl::PDRDOTEstimatorStateArmSwing::writeTo(uint64_t this, PB::Writer *a2)
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

uint64_t CMMsl::PDRDOTEstimatorStateArmSwing::hash_value(CMMsl::PDRDOTEstimatorStateArmSwing *this)
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

void CMMsl::PDRDOTEstimatorStateBody::~PDRDOTEstimatorStateBody(CMMsl::PDRDOTEstimatorStateBody *this)
{
  PB::Base::~Base(this);

  operator delete();
}

double CMMsl::PDRDOTEstimatorStateBody::PDRDOTEstimatorStateBody(CMMsl::PDRDOTEstimatorStateBody *this, const CMMsl::PDRDOTEstimatorStateBody *a2)
{
  *this = off_1004207D0;
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

uint64_t CMMsl::PDRDOTEstimatorStateBody::operator=(uint64_t a1, const CMMsl::PDRDOTEstimatorStateBody *a2)
{
  if (a1 != a2)
  {
    CMMsl::PDRDOTEstimatorStateBody::PDRDOTEstimatorStateBody(v7, a2);
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

double CMMsl::swap(CMMsl *this, CMMsl::PDRDOTEstimatorStateBody *a2, CMMsl::PDRDOTEstimatorStateBody *a3)
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

double CMMsl::PDRDOTEstimatorStateBody::PDRDOTEstimatorStateBody(uint64_t a1, uint64_t a2)
{
  *a1 = off_1004207D0;
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
  *a1 = off_1004207D0;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

uint64_t CMMsl::PDRDOTEstimatorStateBody::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v8 = off_1004207D0;
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

uint64_t CMMsl::PDRDOTEstimatorStateBody::formatText(CMMsl::PDRDOTEstimatorStateBody *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 32);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(a2, "dot", *(this + 6));
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

  PB::TextFormatter::format(a2, "dotUnc", *(this + 7));
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

uint64_t CMMsl::PDRDOTEstimatorStateBody::readFrom(CMMsl::PDRDOTEstimatorStateBody *this, PB::Reader *a2)
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

uint64_t CMMsl::PDRDOTEstimatorStateBody::writeTo(uint64_t this, PB::Writer *a2)
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

uint64_t CMMsl::PDRDOTEstimatorStateBody::hash_value(CMMsl::PDRDOTEstimatorStateBody *this)
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

void CMMsl::PDRDOTEstimatorStateBodyDebug::~PDRDOTEstimatorStateBodyDebug(CMMsl::PDRDOTEstimatorStateBodyDebug *this)
{
  PB::Base::~Base(this);

  operator delete();
}

float CMMsl::PDRDOTEstimatorStateBodyDebug::PDRDOTEstimatorStateBodyDebug(CMMsl::PDRDOTEstimatorStateBodyDebug *this, const CMMsl::PDRDOTEstimatorStateBodyDebug *a2)
{
  *this = off_100420808;
  *(this + 10) = 0;
  v2 = *(a2 + 40);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 40) = 1;
    *(this + 1) = v4;
    v2 = *(a2 + 40);
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 40) & 0x10) != 0)
  {
LABEL_5:
    LODWORD(v4) = *(a2 + 7);
    v3 |= 0x10u;
    *(this + 40) = v3;
    *(this + 7) = v4;
    v2 = *(a2 + 40);
  }

LABEL_6:
  if ((v2 & 0x20) != 0)
  {
    LODWORD(v4) = *(a2 + 8);
    v3 |= 0x20u;
    *(this + 40) = v3;
    *(this + 8) = v4;
    v2 = *(a2 + 40);
    if ((v2 & 8) == 0)
    {
LABEL_8:
      if ((v2 & 0x40) == 0)
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

  LODWORD(v4) = *(a2 + 6);
  v3 |= 8u;
  *(this + 40) = v3;
  *(this + 6) = v4;
  v2 = *(a2 + 40);
  if ((v2 & 0x40) == 0)
  {
LABEL_9:
    if ((v2 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

LABEL_14:
  v5 = *(a2 + 36);
  v3 |= 0x40u;
  *(this + 40) = v3;
  *(this + 36) = v5;
  v2 = *(a2 + 40);
  if ((v2 & 4) == 0)
  {
LABEL_10:
    if ((v2 & 2) == 0)
    {
      return *&v4;
    }

    goto LABEL_16;
  }

LABEL_15:
  LODWORD(v4) = *(a2 + 5);
  v3 |= 4u;
  *(this + 40) = v3;
  *(this + 5) = v4;
  if ((*(a2 + 40) & 2) == 0)
  {
    return *&v4;
  }

LABEL_16:
  LODWORD(v4) = *(a2 + 4);
  *(this + 40) = v3 | 2;
  *(this + 4) = v4;
  return *&v4;
}

uint64_t CMMsl::PDRDOTEstimatorStateBodyDebug::operator=(uint64_t a1, const CMMsl::PDRDOTEstimatorStateBodyDebug *a2)
{
  if (a1 != a2)
  {
    CMMsl::PDRDOTEstimatorStateBodyDebug::PDRDOTEstimatorStateBodyDebug(&v7, a2);
    v3 = *(a1 + 40);
    *(a1 + 40) = v12;
    v12 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v4;
    LODWORD(v4) = *(a1 + 32);
    *(a1 + 32) = v10;
    v10 = v4;
    LOBYTE(v3) = *(a1 + 36);
    *(a1 + 36) = v11;
    v11 = v3;
    v5 = *(a1 + 16);
    *(a1 + 16) = v9;
    v9 = v5;
    PB::Base::~Base(&v7);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::PDRDOTEstimatorStateBodyDebug *a2, CMMsl::PDRDOTEstimatorStateBodyDebug *a3)
{
  v3 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v4;
  LODWORD(v4) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v4;
  LODWORD(v4) = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v4;
  LOBYTE(v3) = *(this + 36);
  *(this + 36) = *(a2 + 36);
  *(a2 + 36) = v3;
  LODWORD(v4) = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v4;
  result = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = result;
  return result;
}

float CMMsl::PDRDOTEstimatorStateBodyDebug::PDRDOTEstimatorStateBodyDebug(uint64_t a1, uint64_t a2)
{
  *a1 = off_100420808;
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 20) = *(a2 + 20);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

{
  *a1 = off_100420808;
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 20) = *(a2 + 20);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

uint64_t CMMsl::PDRDOTEstimatorStateBodyDebug::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v12[0] = off_100420808;
    v3 = *(a2 + 40);
    *(a2 + 40) = 0;
    v4 = *(a2 + 8);
    v5 = *(a2 + 32);
    v6 = *(a2 + 36);
    v16 = *(a1 + 40);
    v7 = *(a1 + 8);
    *(a1 + 8) = v4;
    v12[1] = v7;
    v14 = *(a1 + 32);
    v8 = *(a1 + 36);
    *(a1 + 36) = v6;
    v15 = v8;
    v9 = *(a1 + 16);
    v10 = *(a2 + 16);
    *(a1 + 40) = v3;
    *(a1 + 32) = v5;
    *(a1 + 16) = v10;
    v13 = v9;
    PB::Base::~Base(v12);
  }

  return a1;
}

uint64_t CMMsl::PDRDOTEstimatorStateBodyDebug::formatText(CMMsl::PDRDOTEstimatorStateBodyDebug *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 40);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "dotAngularRateVar", *(this + 4));
    v5 = *(this + 40);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(this + 40) & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "dotUncTNB", *(this + 5));
  v5 = *(this + 40);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  PB::TextFormatter::format(a2, "dotUncertainty", *(this + 6));
  v5 = *(this + 40);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  PB::TextFormatter::format(a2, "dotVectorX", *(this + 7));
  v5 = *(this + 40);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  PB::TextFormatter::format(a2, "dotVectorY", *(this + 8));
  v5 = *(this + 40);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  PB::TextFormatter::format(a2, "hasValidTNBFrame", *(this + 36));
  if (*(this + 40))
  {
LABEL_8:
    PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  }

LABEL_9:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::PDRDOTEstimatorStateBodyDebug::readFrom(CMMsl::PDRDOTEstimatorStateBodyDebug *this, PB::Reader *a2)
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
            goto LABEL_62;
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
            *(this + 40) |= 1u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
LABEL_52:
              *(a2 + 24) = 1;
              goto LABEL_58;
            }

            *(this + 1) = *(*a2 + v2);
            v2 = *(a2 + 1) + 8;
            goto LABEL_57;
          case 2:
            *(this + 40) |= 0x10u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
              goto LABEL_52;
            }

            *(this + 7) = *(*a2 + v2);
LABEL_56:
            v2 = *(a2 + 1) + 4;
LABEL_57:
            *(a2 + 1) = v2;
            goto LABEL_58;
          case 3:
            *(this + 40) |= 0x20u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
              goto LABEL_52;
            }

            *(this + 8) = *(*a2 + v2);
            goto LABEL_56;
        }
      }

      else if (v22 > 5)
      {
        if (v22 == 6)
        {
          *(this + 40) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_52;
          }

          *(this + 5) = *(*a2 + v2);
          goto LABEL_56;
        }

        if (v22 == 7)
        {
          *(this + 40) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_52;
          }

          *(this + 4) = *(*a2 + v2);
          goto LABEL_56;
        }
      }

      else
      {
        if (v22 == 4)
        {
          *(this + 40) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_52;
          }

          *(this + 6) = *(*a2 + v2);
          goto LABEL_56;
        }

        if (v22 == 5)
        {
          *(this + 40) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
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

          *(this + 36) = v24;
          goto LABEL_58;
        }
      }

      if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
      {
        v25 = 0;
        return v25 & 1;
      }

      v2 = *(a2 + 1);
LABEL_58:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_62:
  v25 = v4 ^ 1;
  return v25 & 1;
}

uint64_t CMMsl::PDRDOTEstimatorStateBodyDebug::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 40);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8), 1u);
    v4 = *(v3 + 40);
    if ((v4 & 0x10) == 0)
    {
LABEL_3:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(this + 40) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 28), 2u);
  v4 = *(v3 + 40);
  if ((v4 & 0x20) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  this = PB::Writer::write(a2, *(v3 + 32), 3u);
  v4 = *(v3 + 40);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  this = PB::Writer::write(a2, *(v3 + 24), 4u);
  v4 = *(v3 + 40);
  if ((v4 & 0x40) == 0)
  {
LABEL_6:
    if ((v4 & 4) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    this = PB::Writer::write(a2, *(v3 + 20), 6u);
    if ((*(v3 + 40) & 2) == 0)
    {
      return this;
    }

    goto LABEL_15;
  }

LABEL_13:
  this = PB::Writer::write(a2, *(v3 + 36), 5u);
  v4 = *(v3 + 40);
  if ((v4 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v4 & 2) == 0)
  {
    return this;
  }

LABEL_15:
  v5 = *(v3 + 16);

  return PB::Writer::write(a2, v5, 7u);
}

uint64_t CMMsl::PDRDOTEstimatorStateBodyDebug::hash_value(CMMsl::PDRDOTEstimatorStateBodyDebug *this)
{
  if ((*(this + 40) & 1) == 0)
  {
    v1 = 0.0;
    if ((*(this + 40) & 0x10) != 0)
    {
      goto LABEL_3;
    }

LABEL_22:
    v3 = 0;
    if ((*(this + 40) & 0x20) != 0)
    {
      goto LABEL_6;
    }

LABEL_23:
    v5 = 0;
    if ((*(this + 40) & 8) != 0)
    {
      goto LABEL_9;
    }

LABEL_24:
    v7 = 0;
    if ((*(this + 40) & 0x40) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

  v1 = *(this + 1);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  if ((*(this + 40) & 0x10) == 0)
  {
    goto LABEL_22;
  }

LABEL_3:
  v2 = *(this + 7);
  v3 = LODWORD(v2);
  if (v2 == 0.0)
  {
    v3 = 0;
  }

  if ((*(this + 40) & 0x20) == 0)
  {
    goto LABEL_23;
  }

LABEL_6:
  v4 = *(this + 8);
  v5 = LODWORD(v4);
  if (v4 == 0.0)
  {
    v5 = 0;
  }

  if ((*(this + 40) & 8) == 0)
  {
    goto LABEL_24;
  }

LABEL_9:
  v6 = *(this + 6);
  v7 = LODWORD(v6);
  if (v6 == 0.0)
  {
    v7 = 0;
  }

  if ((*(this + 40) & 0x40) != 0)
  {
LABEL_12:
    v8 = *(this + 36);
    if ((*(this + 40) & 4) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_26;
  }

LABEL_25:
  v8 = 0;
  if ((*(this + 40) & 4) != 0)
  {
LABEL_13:
    v9 = *(this + 5);
    v10 = LODWORD(v9);
    if (v9 == 0.0)
    {
      v10 = 0;
    }

    if ((*(this + 40) & 2) != 0)
    {
      goto LABEL_16;
    }

LABEL_27:
    v12 = 0;
    return v3 ^ *&v1 ^ v5 ^ v7 ^ v8 ^ v10 ^ v12;
  }

LABEL_26:
  v10 = 0;
  if ((*(this + 40) & 2) == 0)
  {
    goto LABEL_27;
  }

LABEL_16:
  v11 = *(this + 4);
  v12 = LODWORD(v11);
  if (v11 == 0.0)
  {
    v12 = 0;
  }

  return v3 ^ *&v1 ^ v5 ^ v7 ^ v8 ^ v10 ^ v12;
}

void CMMsl::PDRDOTEstimatorStateDebug::~PDRDOTEstimatorStateDebug(CMMsl::PDRDOTEstimatorStateDebug *this)
{
  PB::Base::~Base(this);

  operator delete();
}

double CMMsl::PDRDOTEstimatorStateDebug::PDRDOTEstimatorStateDebug(CMMsl::PDRDOTEstimatorStateDebug *this, const CMMsl::PDRDOTEstimatorStateDebug *a2)
{
  *this = off_100420840;
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

uint64_t CMMsl::PDRDOTEstimatorStateDebug::operator=(uint64_t a1, const CMMsl::PDRDOTEstimatorStateDebug *a2)
{
  if (a1 != a2)
  {
    CMMsl::PDRDOTEstimatorStateDebug::PDRDOTEstimatorStateDebug(v7, a2);
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

double CMMsl::swap(CMMsl *this, CMMsl::PDRDOTEstimatorStateDebug *a2, CMMsl::PDRDOTEstimatorStateDebug *a3)
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

double CMMsl::PDRDOTEstimatorStateDebug::PDRDOTEstimatorStateDebug(uint64_t a1, uint64_t a2)
{
  *a1 = off_100420840;
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
  *a1 = off_100420840;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

uint64_t CMMsl::PDRDOTEstimatorStateDebug::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v8 = off_100420840;
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

uint64_t CMMsl::PDRDOTEstimatorStateDebug::formatText(CMMsl::PDRDOTEstimatorStateDebug *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 32);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(a2, "dotMeasurement", *(this + 6));
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

  PB::TextFormatter::format(a2, "dotMeasurementUnc", *(this + 7));
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

uint64_t CMMsl::PDRDOTEstimatorStateDebug::readFrom(CMMsl::PDRDOTEstimatorStateDebug *this, PB::Reader *a2)
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

uint64_t CMMsl::PDRDOTEstimatorStateDebug::writeTo(uint64_t this, PB::Writer *a2)
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

uint64_t CMMsl::PDRDOTEstimatorStateDebug::hash_value(CMMsl::PDRDOTEstimatorStateDebug *this)
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

void CMMsl::PDRDOTEstimatorStateHeading::~PDRDOTEstimatorStateHeading(CMMsl::PDRDOTEstimatorStateHeading *this)
{
  PB::Base::~Base(this);

  operator delete();
}

double CMMsl::PDRDOTEstimatorStateHeading::PDRDOTEstimatorStateHeading(CMMsl::PDRDOTEstimatorStateHeading *this, const CMMsl::PDRDOTEstimatorStateHeading *a2)
{
  *this = off_100420878;
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

uint64_t CMMsl::PDRDOTEstimatorStateHeading::operator=(uint64_t a1, const CMMsl::PDRDOTEstimatorStateHeading *a2)
{
  if (a1 != a2)
  {
    CMMsl::PDRDOTEstimatorStateHeading::PDRDOTEstimatorStateHeading(v7, a2);
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

double CMMsl::swap(CMMsl *this, CMMsl::PDRDOTEstimatorStateHeading *a2, CMMsl::PDRDOTEstimatorStateHeading *a3)
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

double CMMsl::PDRDOTEstimatorStateHeading::PDRDOTEstimatorStateHeading(uint64_t a1, uint64_t a2)
{
  *a1 = off_100420878;
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
  *a1 = off_100420878;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

uint64_t CMMsl::PDRDOTEstimatorStateHeading::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v8 = off_100420878;
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

uint64_t CMMsl::PDRDOTEstimatorStateHeading::formatText(CMMsl::PDRDOTEstimatorStateHeading *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 32);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(a2, "dot", *(this + 6));
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

  PB::TextFormatter::format(a2, "dotUnc", *(this + 7));
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

uint64_t CMMsl::PDRDOTEstimatorStateHeading::readFrom(CMMsl::PDRDOTEstimatorStateHeading *this, PB::Reader *a2)
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

uint64_t CMMsl::PDRDOTEstimatorStateHeading::writeTo(uint64_t this, PB::Writer *a2)
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

uint64_t CMMsl::PDRDOTEstimatorStateHeading::hash_value(CMMsl::PDRDOTEstimatorStateHeading *this)
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

void CMMsl::PDRDOTEstimatorStateSwingDebug::~PDRDOTEstimatorStateSwingDebug(CMMsl::PDRDOTEstimatorStateSwingDebug *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::PDRDOTEstimatorStateSwingDebug::PDRDOTEstimatorStateSwingDebug(uint64_t this, const CMMsl::PDRDOTEstimatorStateSwingDebug *a2)
{
  *this = off_1004208B0;
  *(this + 40) = 0;
  v2 = *(a2 + 40);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 40) = 1;
    *(this + 8) = v4;
    v2 = *(a2 + 40);
    if ((v2 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 40) & 2) != 0)
  {
LABEL_5:
    v5 = *(a2 + 4);
    v3 |= 2u;
    *(this + 40) = v3;
    *(this + 16) = v5;
    v2 = *(a2 + 40);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    v6 = *(a2 + 5);
    v3 |= 4u;
    *(this + 40) = v3;
    *(this + 20) = v6;
    v2 = *(a2 + 40);
    if ((v2 & 0x10) == 0)
    {
LABEL_8:
      if ((v2 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_14;
    }
  }

  else if ((v2 & 0x10) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 7);
  v3 |= 0x10u;
  *(this + 40) = v3;
  *(this + 28) = v7;
  v2 = *(a2 + 40);
  if ((v2 & 8) == 0)
  {
LABEL_9:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

LABEL_14:
  v8 = *(a2 + 6);
  v3 |= 8u;
  *(this + 40) = v3;
  *(this + 24) = v8;
  v2 = *(a2 + 40);
  if ((v2 & 0x20) == 0)
  {
LABEL_10:
    if ((v2 & 0x40) == 0)
    {
      return this;
    }

LABEL_16:
    v10 = *(a2 + 36);
    *(this + 40) = v3 | 0x40;
    *(this + 36) = v10;
    return this;
  }

LABEL_15:
  v9 = *(a2 + 8);
  v3 |= 0x20u;
  *(this + 40) = v3;
  *(this + 32) = v9;
  if ((*(a2 + 40) & 0x40) != 0)
  {
    goto LABEL_16;
  }

  return this;
}

uint64_t CMMsl::PDRDOTEstimatorStateSwingDebug::operator=(uint64_t a1, const CMMsl::PDRDOTEstimatorStateSwingDebug *a2)
{
  if (a1 != a2)
  {
    CMMsl::PDRDOTEstimatorStateSwingDebug::PDRDOTEstimatorStateSwingDebug(&v7, a2);
    v3 = *(a1 + 40);
    *(a1 + 40) = v12;
    v12 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v4;
    v5 = *(a1 + 16);
    *(a1 + 16) = v9;
    v9 = v5;
    LODWORD(v4) = *(a1 + 32);
    *(a1 + 32) = v10;
    v10 = v4;
    LOBYTE(v3) = *(a1 + 36);
    *(a1 + 36) = v11;
    v11 = v3;
    PB::Base::~Base(&v7);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::PDRDOTEstimatorStateSwingDebug *a2, CMMsl::PDRDOTEstimatorStateSwingDebug *a3)
{
  v3 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  LODWORD(v4) = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v4;
  LODWORD(v4) = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v4;
  LODWORD(v4) = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v4;
  result = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = result;
  LOBYTE(v3) = *(this + 36);
  *(this + 36) = *(a2 + 36);
  *(a2 + 36) = v3;
  return result;
}

float CMMsl::PDRDOTEstimatorStateSwingDebug::PDRDOTEstimatorStateSwingDebug(uint64_t a1, uint64_t a2)
{
  *a1 = off_1004208B0;
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 32);
  *(a1 + 32) = result;
  *(a1 + 36) = *(a2 + 36);
  return result;
}

{
  *a1 = off_1004208B0;
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 32);
  *(a1 + 32) = result;
  *(a1 + 36) = *(a2 + 36);
  return result;
}

uint64_t CMMsl::PDRDOTEstimatorStateSwingDebug::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v11[0] = off_1004208B0;
    v3 = *(a2 + 40);
    *(a2 + 40) = 0;
    v4 = *(a2 + 8);
    v5 = *(a2 + 32);
    v6 = *(a2 + 36);
    v15 = *(a1 + 40);
    v7 = *(a1 + 8);
    *(a1 + 8) = v4;
    v11[1] = v7;
    v8 = *(a1 + 16);
    v9 = *(a2 + 16);
    *(a1 + 40) = v3;
    *(a1 + 16) = v9;
    v12 = v8;
    LODWORD(v8) = *(a1 + 32);
    *(a1 + 32) = v5;
    v13 = v8;
    LOBYTE(v3) = *(a1 + 36);
    *(a1 + 36) = v6;
    v14 = v3;
    PB::Base::~Base(v11);
  }

  return a1;
}

uint64_t CMMsl::PDRDOTEstimatorStateSwingDebug::formatText(CMMsl::PDRDOTEstimatorStateSwingDebug *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 40);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "dot", *(this + 4));
    v5 = *(this + 40);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(this + 40) & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "dotUnc", *(this + 5));
  v5 = *(this + 40);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  PB::TextFormatter::format(a2, "dotUncRecency", *(this + 6));
  v5 = *(this + 40);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  PB::TextFormatter::format(a2, "dotVar", *(this + 7));
  v5 = *(this + 40);
  if ((v5 & 0x40) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  PB::TextFormatter::format(a2, "isValid", *(this + 36));
  v5 = *(this + 40);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  PB::TextFormatter::format(a2, "timeSinceLastDOTUpdate", *(this + 8));
  if (*(this + 40))
  {
LABEL_8:
    PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  }

LABEL_9:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::PDRDOTEstimatorStateSwingDebug::readFrom(CMMsl::PDRDOTEstimatorStateSwingDebug *this, PB::Reader *a2)
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
            goto LABEL_62;
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
            *(this + 40) |= 1u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
LABEL_52:
              *(a2 + 24) = 1;
              goto LABEL_58;
            }

            *(this + 1) = *(*a2 + v2);
            v2 = *(a2 + 1) + 8;
            goto LABEL_57;
          case 2:
            *(this + 40) |= 2u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
              goto LABEL_52;
            }

            *(this + 4) = *(*a2 + v2);
LABEL_56:
            v2 = *(a2 + 1) + 4;
LABEL_57:
            *(a2 + 1) = v2;
            goto LABEL_58;
          case 3:
            *(this + 40) |= 4u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
              goto LABEL_52;
            }

            *(this + 5) = *(*a2 + v2);
            goto LABEL_56;
        }
      }

      else if (v22 > 5)
      {
        if (v22 == 6)
        {
          *(this + 40) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_52;
          }

          *(this + 8) = *(*a2 + v2);
          goto LABEL_56;
        }

        if (v22 == 7)
        {
          *(this + 40) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
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

          *(this + 36) = v24;
          goto LABEL_58;
        }
      }

      else
      {
        if (v22 == 4)
        {
          *(this + 40) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_52;
          }

          *(this + 7) = *(*a2 + v2);
          goto LABEL_56;
        }

        if (v22 == 5)
        {
          *(this + 40) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_52;
          }

          *(this + 6) = *(*a2 + v2);
          goto LABEL_56;
        }
      }

      if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
      {
        v25 = 0;
        return v25 & 1;
      }

      v2 = *(a2 + 1);
LABEL_58:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_62:
  v25 = v4 ^ 1;
  return v25 & 1;
}

uint64_t CMMsl::PDRDOTEstimatorStateSwingDebug::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 40);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8), 1u);
    v4 = *(v3 + 40);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
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

  this = PB::Writer::write(a2, *(v3 + 16), 2u);
  v4 = *(v3 + 40);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  this = PB::Writer::write(a2, *(v3 + 20), 3u);
  v4 = *(v3 + 40);
  if ((v4 & 0x10) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  this = PB::Writer::write(a2, *(v3 + 28), 4u);
  v4 = *(v3 + 40);
  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    this = PB::Writer::write(a2, *(v3 + 32), 6u);
    if ((*(v3 + 40) & 0x40) == 0)
    {
      return this;
    }

    goto LABEL_15;
  }

LABEL_13:
  this = PB::Writer::write(a2, *(v3 + 24), 5u);
  v4 = *(v3 + 40);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v4 & 0x40) == 0)
  {
    return this;
  }

LABEL_15:
  v5 = *(v3 + 36);

  return PB::Writer::write(a2, v5, 7u);
}

uint64_t CMMsl::PDRDOTEstimatorStateSwingDebug::hash_value(CMMsl::PDRDOTEstimatorStateSwingDebug *this)
{
  if ((*(this + 40) & 1) == 0)
  {
    v1 = 0.0;
    if ((*(this + 40) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_22:
    v3 = 0;
    if ((*(this + 40) & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_23:
    v5 = 0;
    if ((*(this + 40) & 0x10) != 0)
    {
      goto LABEL_9;
    }

LABEL_24:
    v7 = 0;
    if ((*(this + 40) & 8) != 0)
    {
      goto LABEL_12;
    }

LABEL_25:
    v9 = 0;
    if ((*(this + 40) & 0x20) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_26;
  }

  v1 = *(this + 1);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  if ((*(this + 40) & 2) == 0)
  {
    goto LABEL_22;
  }

LABEL_3:
  v2 = *(this + 4);
  v3 = LODWORD(v2);
  if (v2 == 0.0)
  {
    v3 = 0;
  }

  if ((*(this + 40) & 4) == 0)
  {
    goto LABEL_23;
  }

LABEL_6:
  v4 = *(this + 5);
  v5 = LODWORD(v4);
  if (v4 == 0.0)
  {
    v5 = 0;
  }

  if ((*(this + 40) & 0x10) == 0)
  {
    goto LABEL_24;
  }

LABEL_9:
  v6 = *(this + 7);
  v7 = LODWORD(v6);
  if (v6 == 0.0)
  {
    v7 = 0;
  }

  if ((*(this + 40) & 8) == 0)
  {
    goto LABEL_25;
  }

LABEL_12:
  v8 = *(this + 6);
  v9 = LODWORD(v8);
  if (v8 == 0.0)
  {
    v9 = 0;
  }

  if ((*(this + 40) & 0x20) != 0)
  {
LABEL_15:
    v10 = *(this + 8);
    v11 = LODWORD(v10);
    if (v10 == 0.0)
    {
      v11 = 0;
    }

    if ((*(this + 40) & 0x40) != 0)
    {
      goto LABEL_18;
    }

LABEL_27:
    v12 = 0;
    return v3 ^ *&v1 ^ v5 ^ v7 ^ v9 ^ v11 ^ v12;
  }

LABEL_26:
  v11 = 0;
  if ((*(this + 40) & 0x40) == 0)
  {
    goto LABEL_27;
  }

LABEL_18:
  v12 = *(this + 36);
  return v3 ^ *&v1 ^ v5 ^ v7 ^ v9 ^ v11 ^ v12;
}

void CMMsl::PDRDOTEstimatorStateTNBDebug::~PDRDOTEstimatorStateTNBDebug(CMMsl::PDRDOTEstimatorStateTNBDebug *this)
{
  *this = off_1004208E8;
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::PDRDOTEstimatorStateTNBDebug::~PDRDOTEstimatorStateTNBDebug(this);

  operator delete();
}

uint64_t CMMsl::PDRDOTEstimatorStateTNBDebug::PDRDOTEstimatorStateTNBDebug(uint64_t this, const CMMsl::PDRDOTEstimatorStateTNBDebug *a2)
{
  *this = off_1004208E8;
  *(this + 16) = 0;
  *(this + 80) = 0;
  v2 = *(a2 + 40);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 80) = 1;
    *(this + 8) = v4;
    v2 = *(a2 + 40);
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 40) & 0x4000) != 0)
  {
LABEL_5:
    v5 = *(a2 + 76);
    v3 |= 0x4000u;
    *(this + 80) = v3;
    *(this + 76) = v5;
    v2 = *(a2 + 40);
  }

LABEL_6:
  if ((v2 & 0x2000) != 0)
  {
    v7 = *(a2 + 18);
    v3 |= 0x2000u;
    *(this + 80) = v3;
    *(this + 72) = v7;
    v2 = *(a2 + 40);
    if ((v2 & 0x1000) == 0)
    {
LABEL_8:
      if ((v2 & 2) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_25;
    }
  }

  else if ((v2 & 0x1000) == 0)
  {
    goto LABEL_8;
  }

  v8 = *(a2 + 17);
  v3 |= 0x1000u;
  *(this + 80) = v3;
  *(this + 68) = v8;
  v2 = *(a2 + 40);
  if ((v2 & 2) == 0)
  {
LABEL_9:
    if ((v2 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  v9 = *(a2 + 6);
  v3 |= 2u;
  *(this + 80) = v3;
  *(this + 24) = v9;
  v2 = *(a2 + 40);
  if ((v2 & 4) == 0)
  {
LABEL_10:
    if ((v2 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  v10 = *(a2 + 7);
  v3 |= 4u;
  *(this + 80) = v3;
  *(this + 28) = v10;
  v2 = *(a2 + 40);
  if ((v2 & 8) == 0)
  {
LABEL_11:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  v11 = *(a2 + 8);
  v3 |= 8u;
  *(this + 80) = v3;
  *(this + 32) = v11;
  v2 = *(a2 + 40);
  if ((v2 & 0x80) == 0)
  {
LABEL_12:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  v12 = *(a2 + 12);
  v3 |= 0x80u;
  *(this + 80) = v3;
  *(this + 48) = v12;
  v2 = *(a2 + 40);
  if ((v2 & 0x100) == 0)
  {
LABEL_13:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_29:
  v13 = *(a2 + 13);
  v3 |= 0x100u;
  *(this + 80) = v3;
  *(this + 52) = v13;
  v2 = *(a2 + 40);
  if ((v2 & 0x200) == 0)
  {
LABEL_14:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_31;
  }

LABEL_30:
  v14 = *(a2 + 14);
  v3 |= 0x200u;
  *(this + 80) = v3;
  *(this + 56) = v14;
  v2 = *(a2 + 40);
  if ((v2 & 0x400) == 0)
  {
LABEL_15:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_32;
  }

LABEL_31:
  v15 = *(a2 + 15);
  v3 |= 0x400u;
  *(this + 80) = v3;
  *(this + 60) = v15;
  v2 = *(a2 + 40);
  if ((v2 & 0x800) == 0)
  {
LABEL_16:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_33;
  }

LABEL_32:
  v16 = *(a2 + 16);
  v3 |= 0x800u;
  *(this + 80) = v3;
  *(this + 64) = v16;
  v2 = *(a2 + 40);
  if ((v2 & 0x40) == 0)
  {
LABEL_17:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_34;
  }

LABEL_33:
  v17 = *(a2 + 11);
  v3 |= 0x40u;
  *(this + 80) = v3;
  *(this + 44) = v17;
  v2 = *(a2 + 40);
  if ((v2 & 0x10) == 0)
  {
LABEL_18:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_34:
  v18 = *(a2 + 9);
  v3 |= 0x10u;
  *(this + 80) = v3;
  *(this + 36) = v18;
  if ((*(a2 + 40) & 0x20) != 0)
  {
LABEL_19:
    v6 = *(a2 + 10);
    *(this + 80) = v3 | 0x20;
    *(this + 40) = v6;
  }

LABEL_20:
  if (*(a2 + 2))
  {
    operator new();
  }

  return this;
}

CMMsl *CMMsl::PDRDOTEstimatorStateTNBDebug::operator=(CMMsl *a1, const CMMsl::PDRDOTEstimatorStateTNBDebug *a2)
{
  if (a1 != a2)
  {
    CMMsl::PDRDOTEstimatorStateTNBDebug::PDRDOTEstimatorStateTNBDebug(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::PDRDOTEstimatorStateTNBDebug::~PDRDOTEstimatorStateTNBDebug(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::PDRDOTEstimatorStateTNBDebug *a2, CMMsl::PDRDOTEstimatorStateTNBDebug *a3)
{
  v3 = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  LOBYTE(v3) = *(this + 76);
  *(this + 76) = *(a2 + 76);
  *(a2 + 76) = v3;
  v5 = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v5;
  LODWORD(v4) = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v4;
  LODWORD(v4) = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v4;
  LODWORD(v4) = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v4;
  LODWORD(v4) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v4;
  LODWORD(v4) = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v4;
  LODWORD(v4) = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v4;
  LODWORD(v4) = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v4;
  LODWORD(v4) = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v4;
  LODWORD(v4) = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v4;
  LODWORD(v4) = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v4;
  LODWORD(v4) = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v4;
  result = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = result;
  v7 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v7;
  return result;
}

uint64_t CMMsl::PDRDOTEstimatorStateTNBDebug::PDRDOTEstimatorStateTNBDebug(uint64_t a1, uint64_t a2)
{
  *a1 = off_1004208E8;
  *(a1 + 16) = 0;
  *(a1 + 80) = *(a2 + 80);
  *(a2 + 80) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  v3 = *(a2 + 16);
  *(a2 + 16) = 0;
  v4 = *(a1 + 16);
  *(a1 + 16) = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

CMMsl *CMMsl::PDRDOTEstimatorStateTNBDebug::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::PDRDOTEstimatorStateTNBDebug::PDRDOTEstimatorStateTNBDebug(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::PDRDOTEstimatorStateTNBDebug::~PDRDOTEstimatorStateTNBDebug(v5);
  }

  return a1;
}

uint64_t CMMsl::PDRDOTEstimatorStateTNBDebug::formatText(CMMsl::PDRDOTEstimatorStateTNBDebug *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 40);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "curveUnfilteredX", *(this + 6));
    v5 = *(this + 40);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "curveUnfilteredY", *(this + 7));
  v5 = *(this + 40);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(a2, "curveUnfilteredZ", *(this + 8));
  v5 = *(this + 40);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  PB::TextFormatter::format(a2, "dot", *(this + 9));
  v5 = *(this + 40);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(a2, "dotUncertainty", *(this + 10));
  v5 = *(this + 40);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  PB::TextFormatter::format(a2, "dotUnfiltered", *(this + 11));
  v5 = *(this + 40);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(a2, "dotVecUnfilteredX", *(this + 12));
  v5 = *(this + 40);
  if ((v5 & 0x100) == 0)
  {
LABEL_9:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  PB::TextFormatter::format(a2, "dotVecUnfilteredY", *(this + 13));
  v5 = *(this + 40);
  if ((v5 & 0x200) == 0)
  {
LABEL_10:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  PB::TextFormatter::format(a2, "dotVecUnfilteredZ", *(this + 14));
  v5 = *(this + 40);
  if ((v5 & 0x400) == 0)
  {
LABEL_11:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  PB::TextFormatter::format(a2, "dotVecX", *(this + 15));
  v5 = *(this + 40);
  if ((v5 & 0x800) == 0)
  {
LABEL_12:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  PB::TextFormatter::format(a2, "dotVecY", *(this + 16));
  v5 = *(this + 40);
  if ((v5 & 0x1000) == 0)
  {
LABEL_13:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(a2, "frequencySelected", *(this + 17));
  v5 = *(this + 40);
  if ((v5 & 0x2000) == 0)
  {
LABEL_14:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  PB::TextFormatter::format(a2, "idxFilterSelected", *(this + 18));
  v5 = *(this + 40);
  if ((v5 & 0x4000) == 0)
  {
LABEL_15:
    if ((v5 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_35:
  PB::TextFormatter::format(a2, "isValidDOT", *(this + 76));
  if (*(this + 40))
  {
LABEL_16:
    PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  }

LABEL_17:
  v6 = *(this + 2);
  if (v6)
  {
    (*(*v6 + 32))(v6, a2, "tnb");
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::PDRDOTEstimatorStateTNBDebug::readFrom(CMMsl::PDRDOTEstimatorStateTNBDebug *this, PB::Reader *a2)
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
            goto LABEL_95;
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

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 40) |= 1u;
          v22 = *(a2 + 1);
          if (v22 > 0xFFFFFFFFFFFFFFF7 || v22 + 8 > *(a2 + 2))
          {
            goto LABEL_71;
          }

          *(this + 1) = *(*a2 + v22);
          v23 = *(a2 + 1) + 8;
          goto LABEL_86;
        case 2u:
          *(this + 40) |= 0x4000u;
          v40 = *(a2 + 1);
          if (v40 >= *(a2 + 2))
          {
            v43 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v41 = v40 + 1;
            v42 = *(*a2 + v40);
            *(a2 + 1) = v41;
            v43 = v42 != 0;
          }

          *(this + 76) = v43;
          goto LABEL_91;
        case 3u:
          *(this + 40) |= 0x2000u;
          v30 = *(a2 + 1);
          v29 = *(a2 + 2);
          v31 = *a2;
          if (v30 <= 0xFFFFFFFFFFFFFFF5 && v30 + 10 <= v29)
          {
            v32 = 0;
            v33 = 0;
            v34 = 0;
            v35 = (v31 + v30);
            v36 = v30 + 1;
            do
            {
              *(a2 + 1) = v36;
              v37 = *v35++;
              v34 |= (v37 & 0x7F) << v32;
              if ((v37 & 0x80) == 0)
              {
                goto LABEL_90;
              }

              v32 += 7;
              ++v36;
              v14 = v33++ > 8;
            }

            while (!v14);
LABEL_81:
            LODWORD(v34) = 0;
            goto LABEL_90;
          }

          v49 = 0;
          v50 = 0;
          v34 = 0;
          v17 = v29 >= v30;
          v51 = v29 - v30;
          if (!v17)
          {
            v51 = 0;
          }

          v52 = (v31 + v30);
          v53 = v30 + 1;
          break;
        case 4u:
          *(this + 40) |= 0x1000u;
          v38 = *(a2 + 1);
          if (v38 > 0xFFFFFFFFFFFFFFFBLL || v38 + 4 > *(a2 + 2))
          {
            goto LABEL_71;
          }

          *(this + 17) = *(*a2 + v38);
          goto LABEL_85;
        case 5u:
          *(this + 40) |= 2u;
          v26 = *(a2 + 1);
          if (v26 > 0xFFFFFFFFFFFFFFFBLL || v26 + 4 > *(a2 + 2))
          {
            goto LABEL_71;
          }

          *(this + 6) = *(*a2 + v26);
          goto LABEL_85;
        case 6u:
          *(this + 40) |= 4u;
          v44 = *(a2 + 1);
          if (v44 > 0xFFFFFFFFFFFFFFFBLL || v44 + 4 > *(a2 + 2))
          {
            goto LABEL_71;
          }

          *(this + 7) = *(*a2 + v44);
          goto LABEL_85;
        case 7u:
          *(this + 40) |= 8u;
          v46 = *(a2 + 1);
          if (v46 > 0xFFFFFFFFFFFFFFFBLL || v46 + 4 > *(a2 + 2))
          {
            goto LABEL_71;
          }

          *(this + 8) = *(*a2 + v46);
          goto LABEL_85;
        case 8u:
          *(this + 40) |= 0x80u;
          v39 = *(a2 + 1);
          if (v39 > 0xFFFFFFFFFFFFFFFBLL || v39 + 4 > *(a2 + 2))
          {
            goto LABEL_71;
          }

          *(this + 12) = *(*a2 + v39);
          goto LABEL_85;
        case 9u:
          *(this + 40) |= 0x100u;
          v48 = *(a2 + 1);
          if (v48 > 0xFFFFFFFFFFFFFFFBLL || v48 + 4 > *(a2 + 2))
          {
            goto LABEL_71;
          }

          *(this + 13) = *(*a2 + v48);
          goto LABEL_85;
        case 0xAu:
          *(this + 40) |= 0x200u;
          v28 = *(a2 + 1);
          if (v28 > 0xFFFFFFFFFFFFFFFBLL || v28 + 4 > *(a2 + 2))
          {
            goto LABEL_71;
          }

          *(this + 14) = *(*a2 + v28);
          goto LABEL_85;
        case 0xBu:
          *(this + 40) |= 0x400u;
          v47 = *(a2 + 1);
          if (v47 > 0xFFFFFFFFFFFFFFFBLL || v47 + 4 > *(a2 + 2))
          {
            goto LABEL_71;
          }

          *(this + 15) = *(*a2 + v47);
          goto LABEL_85;
        case 0xCu:
          *(this + 40) |= 0x800u;
          v25 = *(a2 + 1);
          if (v25 > 0xFFFFFFFFFFFFFFFBLL || v25 + 4 > *(a2 + 2))
          {
            goto LABEL_71;
          }

          *(this + 16) = *(*a2 + v25);
          goto LABEL_85;
        case 0xDu:
          *(this + 40) |= 0x40u;
          v27 = *(a2 + 1);
          if (v27 > 0xFFFFFFFFFFFFFFFBLL || v27 + 4 > *(a2 + 2))
          {
            goto LABEL_71;
          }

          *(this + 11) = *(*a2 + v27);
          goto LABEL_85;
        case 0xEu:
          *(this + 40) |= 0x10u;
          v45 = *(a2 + 1);
          if (v45 > 0xFFFFFFFFFFFFFFFBLL || v45 + 4 > *(a2 + 2))
          {
            goto LABEL_71;
          }

          *(this + 9) = *(*a2 + v45);
          goto LABEL_85;
        case 0xFu:
          *(this + 40) |= 0x20u;
          v24 = *(a2 + 1);
          if (v24 > 0xFFFFFFFFFFFFFFFBLL || v24 + 4 > *(a2 + 2))
          {
LABEL_71:
            *(a2 + 24) = 1;
          }

          else
          {
            *(this + 10) = *(*a2 + v24);
LABEL_85:
            v23 = *(a2 + 1) + 4;
LABEL_86:
            *(a2 + 1) = v23;
          }

          goto LABEL_91;
        case 0x10u:
          operator new();
        default:
          if (PB::Reader::skip(a2, v10 >> 3, v10 & 7, 0))
          {
            goto LABEL_91;
          }

          v56 = 0;
          return v56 & 1;
      }

      while (1)
      {
        if (!v51)
        {
          LODWORD(v34) = 0;
          *(a2 + 24) = 1;
          goto LABEL_90;
        }

        v54 = *v52;
        *(a2 + 1) = v53;
        v34 |= (v54 & 0x7F) << v49;
        if ((v54 & 0x80) == 0)
        {
          break;
        }

        v49 += 7;
        --v51;
        ++v52;
        ++v53;
        v14 = v50++ > 8;
        if (v14)
        {
          goto LABEL_81;
        }
      }

      if (*(a2 + 24))
      {
        LODWORD(v34) = 0;
      }

LABEL_90:
      *(this + 18) = v34;
LABEL_91:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3)
      {
        break;
      }
    }

    while ((*(a2 + 24) & 1) == 0);
  }

LABEL_95:
  v56 = v4 ^ 1;
  return v56 & 1;
}

uint64_t CMMsl::PDRDOTEstimatorStateTNBDebug::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 80);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8), 1u);
    v4 = *(v3 + 80);
    if ((v4 & 0x4000) == 0)
    {
LABEL_3:
      if ((v4 & 0x2000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((*(this + 80) & 0x4000) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 76), 2u);
  v4 = *(v3 + 80);
  if ((v4 & 0x2000) == 0)
  {
LABEL_4:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = PB::Writer::writeVarInt(a2, *(v3 + 72), 3u);
  v4 = *(v3 + 80);
  if ((v4 & 0x1000) == 0)
  {
LABEL_5:
    if ((v4 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = PB::Writer::write(a2, *(v3 + 68), 4u);
  v4 = *(v3 + 80);
  if ((v4 & 2) == 0)
  {
LABEL_6:
    if ((v4 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = PB::Writer::write(a2, *(v3 + 24), 5u);
  v4 = *(v3 + 80);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = PB::Writer::write(a2, *(v3 + 28), 6u);
  v4 = *(v3 + 80);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = PB::Writer::write(a2, *(v3 + 32), 7u);
  v4 = *(v3 + 80);
  if ((v4 & 0x80) == 0)
  {
LABEL_9:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = PB::Writer::write(a2, *(v3 + 48), 8u);
  v4 = *(v3 + 80);
  if ((v4 & 0x100) == 0)
  {
LABEL_10:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = PB::Writer::write(a2, *(v3 + 52), 9u);
  v4 = *(v3 + 80);
  if ((v4 & 0x200) == 0)
  {
LABEL_11:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = PB::Writer::write(a2, *(v3 + 56), 0xAu);
  v4 = *(v3 + 80);
  if ((v4 & 0x400) == 0)
  {
LABEL_12:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = PB::Writer::write(a2, *(v3 + 60), 0xBu);
  v4 = *(v3 + 80);
  if ((v4 & 0x800) == 0)
  {
LABEL_13:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = PB::Writer::write(a2, *(v3 + 64), 0xCu);
  v4 = *(v3 + 80);
  if ((v4 & 0x40) == 0)
  {
LABEL_14:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = PB::Writer::write(a2, *(v3 + 44), 0xDu);
  v4 = *(v3 + 80);
  if ((v4 & 0x10) == 0)
  {
LABEL_15:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_34:
  this = PB::Writer::write(a2, *(v3 + 36), 0xEu);
  if ((*(v3 + 80) & 0x20) != 0)
  {
LABEL_16:
    this = PB::Writer::write(a2, *(v3 + 40), 0xFu);
  }

LABEL_17:
  v5 = *(v3 + 16);
  if (v5)
  {

    return PB::Writer::writeSubmessage(a2, v5, 0x10u);
  }

  return this;
}

unint64_t CMMsl::PDRDOTEstimatorStateTNBDebug::hash_value(CMMsl::PDRDOTEstimatorStateTNBDebug *this)
{
  v1 = *(this + 40);
  if (v1)
  {
    if (*(this + 1) == 0.0)
    {
      v2 = 0;
    }

    else
    {
      v2 = *(this + 1);
    }

    if ((*(this + 40) & 0x4000) != 0)
    {
LABEL_3:
      v3 = *(this + 76);
      if ((*(this + 40) & 0x2000) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_57;
    }
  }

  else
  {
    v2 = 0;
    if ((*(this + 40) & 0x4000) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*(this + 40) & 0x2000) != 0)
  {
LABEL_4:
    v4 = *(this + 18);
    if ((*(this + 40) & 0x1000) != 0)
    {
      goto LABEL_5;
    }

LABEL_58:
    v6 = 0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_9;
    }

LABEL_59:
    v8 = 0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_13;
    }

LABEL_60:
    v10 = 0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_17;
    }

LABEL_61:
    v12 = 0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_21;
    }

LABEL_62:
    v14 = 0;
    if ((*(this + 40) & 0x100) != 0)
    {
      goto LABEL_25;
    }

LABEL_63:
    v16 = 0;
    if ((*(this + 40) & 0x200) != 0)
    {
      goto LABEL_29;
    }

LABEL_64:
    v18 = 0;
    if ((*(this + 40) & 0x400) != 0)
    {
      goto LABEL_33;
    }

LABEL_65:
    v20 = 0;
    if ((*(this + 40) & 0x800) != 0)
    {
      goto LABEL_37;
    }

LABEL_66:
    v22 = 0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_41;
    }

LABEL_67:
    v24 = 0;
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_45;
    }

    goto LABEL_68;
  }

LABEL_57:
  v4 = 0;
  if ((*(this + 40) & 0x1000) == 0)
  {
    goto LABEL_58;
  }

LABEL_5:
  v5 = *(this + 17);
  if (v5 == 0.0)
  {
    v6 = 0;
  }

  else
  {
    v6 = LODWORD(v5);
  }

  if ((v1 & 2) == 0)
  {
    goto LABEL_59;
  }

LABEL_9:
  v7 = *(this + 6);
  if (v7 == 0.0)
  {
    v8 = 0;
  }

  else
  {
    v8 = LODWORD(v7);
  }

  if ((v1 & 4) == 0)
  {
    goto LABEL_60;
  }

LABEL_13:
  v9 = *(this + 7);
  if (v9 == 0.0)
  {
    v10 = 0;
  }

  else
  {
    v10 = LODWORD(v9);
  }

  if ((v1 & 8) == 0)
  {
    goto LABEL_61;
  }

LABEL_17:
  v11 = *(this + 8);
  if (v11 == 0.0)
  {
    v12 = 0;
  }

  else
  {
    v12 = LODWORD(v11);
  }

  if ((v1 & 0x80) == 0)
  {
    goto LABEL_62;
  }

LABEL_21:
  v13 = *(this + 12);
  if (v13 == 0.0)
  {
    v14 = 0;
  }

  else
  {
    v14 = LODWORD(v13);
  }

  if ((*(this + 40) & 0x100) == 0)
  {
    goto LABEL_63;
  }

LABEL_25:
  v15 = *(this + 13);
  if (v15 == 0.0)
  {
    v16 = 0;
  }

  else
  {
    v16 = LODWORD(v15);
  }

  if ((*(this + 40) & 0x200) == 0)
  {
    goto LABEL_64;
  }

LABEL_29:
  v17 = *(this + 14);
  if (v17 == 0.0)
  {
    v18 = 0;
  }

  else
  {
    v18 = LODWORD(v17);
  }

  if ((*(this + 40) & 0x400) == 0)
  {
    goto LABEL_65;
  }

LABEL_33:
  v19 = *(this + 15);
  if (v19 == 0.0)
  {
    v20 = 0;
  }

  else
  {
    v20 = LODWORD(v19);
  }

  if ((*(this + 40) & 0x800) == 0)
  {
    goto LABEL_66;
  }

LABEL_37:
  v21 = *(this + 16);
  if (v21 == 0.0)
  {
    v22 = 0;
  }

  else
  {
    v22 = LODWORD(v21);
  }

  if ((v1 & 0x40) == 0)
  {
    goto LABEL_67;
  }

LABEL_41:
  v23 = *(this + 11);
  if (v23 == 0.0)
  {
    v24 = 0;
  }

  else
  {
    v24 = LODWORD(v23);
  }

  if ((v1 & 0x10) != 0)
  {
LABEL_45:
    v25 = *(this + 9);
    if (v25 == 0.0)
    {
      v26 = 0;
    }

    else
    {
      v26 = LODWORD(v25);
    }

    if ((v1 & 0x20) != 0)
    {
      goto LABEL_49;
    }

LABEL_69:
    v28 = 0;
    goto LABEL_70;
  }

LABEL_68:
  v26 = 0;
  if ((v1 & 0x20) == 0)
  {
    goto LABEL_69;
  }

LABEL_49:
  v27 = *(this + 10);
  if (v27 == 0.0)
  {
    v28 = 0;
  }

  else
  {
    v28 = LODWORD(v27);
  }

LABEL_70:
  v29 = *(this + 2);
  if (v29)
  {
    v34 = v12;
    v35 = v20;
    v32 = v16;
    v33 = v24;
    v31 = v28;
    v29 = CMMsl::TNB::hash_value(v29);
    v28 = v31;
    v16 = v32;
    v24 = v33;
    v12 = v34;
    v20 = v35;
  }

  return v3 ^ v2 ^ v4 ^ v6 ^ v8 ^ v10 ^ v12 ^ v14 ^ v16 ^ v18 ^ v20 ^ v22 ^ v24 ^ v26 ^ v28 ^ v29;
}

uint64_t CMMsl::PDRDOTEstimatorStateTNBDebug::makeTnb(uint64_t this)
{
  if (!*(this + 16))
  {
    operator new();
  }

  return this;
}

void CMMsl::PDRDOTEstimatorUncertaintyModelOnBody::~PDRDOTEstimatorUncertaintyModelOnBody(CMMsl::PDRDOTEstimatorUncertaintyModelOnBody *this)
{
  PB::Base::~Base(this);

  operator delete();
}

float CMMsl::PDRDOTEstimatorUncertaintyModelOnBody::PDRDOTEstimatorUncertaintyModelOnBody(CMMsl::PDRDOTEstimatorUncertaintyModelOnBody *this, const CMMsl::PDRDOTEstimatorUncertaintyModelOnBody *a2)
{
  *this = off_100420920;
  *(this + 10) = 0;
  v2 = *(a2 + 40);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 40) = 1;
    *(this + 1) = v4;
    v2 = *(a2 + 40);
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 40) & 4) != 0)
  {
LABEL_5:
    LODWORD(v4) = *(a2 + 5);
    v3 |= 4u;
    *(this + 40) = v3;
    *(this + 5) = v4;
    v2 = *(a2 + 40);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    LODWORD(v4) = *(a2 + 4);
    v3 |= 2u;
    *(this + 40) = v3;
    *(this + 4) = v4;
    v2 = *(a2 + 40);
    if ((v2 & 0x20) == 0)
    {
LABEL_8:
      if ((v2 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_14;
    }
  }

  else if ((v2 & 0x20) == 0)
  {
    goto LABEL_8;
  }

  LODWORD(v4) = *(a2 + 8);
  v3 |= 0x20u;
  *(this + 40) = v3;
  *(this + 8) = v4;
  v2 = *(a2 + 40);
  if ((v2 & 0x40) == 0)
  {
LABEL_9:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

LABEL_14:
  LODWORD(v4) = *(a2 + 9);
  v3 |= 0x40u;
  *(this + 40) = v3;
  *(this + 9) = v4;
  v2 = *(a2 + 40);
  if ((v2 & 0x10) == 0)
  {
LABEL_10:
    if ((v2 & 8) == 0)
    {
      return *&v4;
    }

    goto LABEL_16;
  }

LABEL_15:
  LODWORD(v4) = *(a2 + 7);
  v3 |= 0x10u;
  *(this + 40) = v3;
  *(this + 7) = v4;
  if ((*(a2 + 40) & 8) == 0)
  {
    return *&v4;
  }

LABEL_16:
  LODWORD(v4) = *(a2 + 6);
  *(this + 40) = v3 | 8;
  *(this + 6) = v4;
  return *&v4;
}

uint64_t CMMsl::PDRDOTEstimatorUncertaintyModelOnBody::operator=(uint64_t a1, const CMMsl::PDRDOTEstimatorUncertaintyModelOnBody *a2)
{
  if (a1 != a2)
  {
    CMMsl::PDRDOTEstimatorUncertaintyModelOnBody::PDRDOTEstimatorUncertaintyModelOnBody(&v8, a2);
    v3 = *(a1 + 40);
    *(a1 + 40) = v12;
    v12 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v9;
    v9 = v4;
    v5 = *(a1 + 32);
    *(a1 + 32) = v11;
    v11 = v5;
    v6 = *(a1 + 16);
    *(a1 + 16) = v10;
    v10 = v6;
    PB::Base::~Base(&v8);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::PDRDOTEstimatorUncertaintyModelOnBody *a2, CMMsl::PDRDOTEstimatorUncertaintyModelOnBody *a3)
{
  v3 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v4;
  LODWORD(v4) = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  LODWORD(v4) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v4;
  LODWORD(v4) = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v4;
  LODWORD(v4) = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v4;
  result = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = result;
  return result;
}

float CMMsl::PDRDOTEstimatorUncertaintyModelOnBody::PDRDOTEstimatorUncertaintyModelOnBody(uint64_t a1, uint64_t a2)
{
  *a1 = off_100420920;
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 28) = *(a2 + 28);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  return result;
}

{
  *a1 = off_100420920;
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 28) = *(a2 + 28);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  return result;
}

uint64_t CMMsl::PDRDOTEstimatorUncertaintyModelOnBody::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v10[0] = off_100420920;
    v3 = *(a2 + 40);
    *(a2 + 40) = 0;
    v4 = *(a2 + 8);
    v13 = *(a1 + 40);
    v5 = *(a1 + 8);
    *(a1 + 8) = v4;
    v10[1] = v5;
    v12 = *(a1 + 32);
    v6 = *(a1 + 16);
    v7 = *(a2 + 16);
    v8 = *(a2 + 32);
    *(a1 + 40) = v3;
    *(a1 + 32) = v8;
    *(a1 + 16) = v7;
    v11 = v6;
    PB::Base::~Base(v10);
  }

  return a1;
}

uint64_t CMMsl::PDRDOTEstimatorUncertaintyModelOnBody::formatText(CMMsl::PDRDOTEstimatorUncertaintyModelOnBody *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 40);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "dotDeltaBufferMaxAbs", *(this + 4));
    v5 = *(this + 40);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(this + 40) & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "dotDeltaBufferVar", *(this + 5));
  v5 = *(this + 40);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  PB::TextFormatter::format(a2, "dotErrorEstimate", *(this + 6));
  v5 = *(this + 40);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  PB::TextFormatter::format(a2, "dotRelativeChangeOverBuffer", *(this + 7));
  v5 = *(this + 40);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  PB::TextFormatter::format(a2, "headingDeltaBufferVar", *(this + 8));
  v5 = *(this + 40);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  PB::TextFormatter::format(a2, "headingRelativeChangeOverBuffer", *(this + 9));
  if (*(this + 40))
  {
LABEL_8:
    PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  }

LABEL_9:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::PDRDOTEstimatorUncertaintyModelOnBody::readFrom(CMMsl::PDRDOTEstimatorUncertaintyModelOnBody *this, PB::Reader *a2)
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
            goto LABEL_61;
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
            *(this + 40) |= 1u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
LABEL_53:
              *(a2 + 24) = 1;
              goto LABEL_57;
            }

            *(this + 1) = *(*a2 + v2);
            v2 = *(a2 + 1) + 8;
            goto LABEL_56;
          case 2:
            *(this + 40) |= 4u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
              goto LABEL_53;
            }

            *(this + 5) = *(*a2 + v2);
LABEL_55:
            v2 = *(a2 + 1) + 4;
LABEL_56:
            *(a2 + 1) = v2;
            goto LABEL_57;
          case 3:
            *(this + 40) |= 2u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
              goto LABEL_53;
            }

            *(this + 4) = *(*a2 + v2);
            goto LABEL_55;
        }
      }

      else if (v22 > 5)
      {
        if (v22 == 6)
        {
          *(this + 40) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_53;
          }

          *(this + 7) = *(*a2 + v2);
          goto LABEL_55;
        }

        if (v22 == 7)
        {
          *(this + 40) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_53;
          }

          *(this + 6) = *(*a2 + v2);
          goto LABEL_55;
        }
      }

      else
      {
        if (v22 == 4)
        {
          *(this + 40) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_53;
          }

          *(this + 8) = *(*a2 + v2);
          goto LABEL_55;
        }

        if (v22 == 5)
        {
          *(this + 40) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_53;
          }

          *(this + 9) = *(*a2 + v2);
          goto LABEL_55;
        }
      }

      if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(a2 + 1);
LABEL_57:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_61:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t CMMsl::PDRDOTEstimatorUncertaintyModelOnBody::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 40);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8), 1u);
    v4 = *(v3 + 40);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(this + 40) & 4) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 20), 2u);
  v4 = *(v3 + 40);
  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  this = PB::Writer::write(a2, *(v3 + 16), 3u);
  v4 = *(v3 + 40);
  if ((v4 & 0x20) == 0)
  {
LABEL_5:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  this = PB::Writer::write(a2, *(v3 + 32), 4u);
  v4 = *(v3 + 40);
  if ((v4 & 0x40) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    this = PB::Writer::write(a2, *(v3 + 28), 6u);
    if ((*(v3 + 40) & 8) == 0)
    {
      return this;
    }

    goto LABEL_15;
  }

LABEL_13:
  this = PB::Writer::write(a2, *(v3 + 36), 5u);
  v4 = *(v3 + 40);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v4 & 8) == 0)
  {
    return this;
  }

LABEL_15:
  v5 = *(v3 + 24);

  return PB::Writer::write(a2, v5, 7u);
}

uint64_t CMMsl::PDRDOTEstimatorUncertaintyModelOnBody::hash_value(CMMsl::PDRDOTEstimatorUncertaintyModelOnBody *this)
{
  if ((*(this + 40) & 1) == 0)
  {
    v1 = 0.0;
    if ((*(this + 40) & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_24:
    v3 = 0;
    if ((*(this + 40) & 2) != 0)
    {
      goto LABEL_6;
    }

LABEL_25:
    v5 = 0;
    if ((*(this + 40) & 0x20) != 0)
    {
      goto LABEL_9;
    }

LABEL_26:
    v7 = 0;
    if ((*(this + 40) & 0x40) != 0)
    {
      goto LABEL_12;
    }

LABEL_27:
    v9 = 0;
    if ((*(this + 40) & 0x10) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_28;
  }

  v1 = *(this + 1);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  if ((*(this + 40) & 4) == 0)
  {
    goto LABEL_24;
  }

LABEL_3:
  v2 = *(this + 5);
  v3 = LODWORD(v2);
  if (v2 == 0.0)
  {
    v3 = 0;
  }

  if ((*(this + 40) & 2) == 0)
  {
    goto LABEL_25;
  }

LABEL_6:
  v4 = *(this + 4);
  v5 = LODWORD(v4);
  if (v4 == 0.0)
  {
    v5 = 0;
  }

  if ((*(this + 40) & 0x20) == 0)
  {
    goto LABEL_26;
  }

LABEL_9:
  v6 = *(this + 8);
  v7 = LODWORD(v6);
  if (v6 == 0.0)
  {
    v7 = 0;
  }

  if ((*(this + 40) & 0x40) == 0)
  {
    goto LABEL_27;
  }

LABEL_12:
  v8 = *(this + 9);
  v9 = LODWORD(v8);
  if (v8 == 0.0)
  {
    v9 = 0;
  }

  if ((*(this + 40) & 0x10) != 0)
  {
LABEL_15:
    v10 = *(this + 7);
    v11 = LODWORD(v10);
    if (v10 == 0.0)
    {
      v11 = 0;
    }

    if ((*(this + 40) & 8) != 0)
    {
      goto LABEL_18;
    }

LABEL_29:
    v13 = 0;
    return v3 ^ *&v1 ^ v5 ^ v7 ^ v9 ^ v11 ^ v13;
  }

LABEL_28:
  v11 = 0;
  if ((*(this + 40) & 8) == 0)
  {
    goto LABEL_29;
  }

LABEL_18:
  v12 = *(this + 6);
  v13 = LODWORD(v12);
  if (v12 == 0.0)
  {
    v13 = 0;
  }

  return v3 ^ *&v1 ^ v5 ^ v7 ^ v9 ^ v11 ^ v13;
}

void CMMsl::PDRDOTMeasurementSelectorState::~PDRDOTMeasurementSelectorState(CMMsl::PDRDOTMeasurementSelectorState *this)
{
  *this = off_100420958;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::PDRDOTMeasurementSelectorState::~PDRDOTMeasurementSelectorState(this);

  operator delete();
}

CMMsl::PDRDOTMeasurementSelectorState *CMMsl::PDRDOTMeasurementSelectorState::PDRDOTMeasurementSelectorState(CMMsl::PDRDOTMeasurementSelectorState *this, const CMMsl::PDRDOTMeasurementSelectorState *a2)
{
  *this = off_100420958;
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

uint64_t CMMsl::PDRDOTMeasurementSelectorState::operator=(uint64_t a1, const CMMsl::PDRDOTMeasurementSelectorState *a2)
{
  if (a1 != a2)
  {
    CMMsl::PDRDOTMeasurementSelectorState::PDRDOTMeasurementSelectorState(v8, a2);
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
    CMMsl::PDRDOTMeasurementSelectorState::~PDRDOTMeasurementSelectorState(v8);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::PDRDOTMeasurementSelectorState *a2, CMMsl::PDRDOTMeasurementSelectorState *a3)
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

uint64_t CMMsl::PDRDOTMeasurementSelectorState::PDRDOTMeasurementSelectorState(uint64_t a1, uint64_t a2)
{
  *a1 = off_100420958;
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
  *a1 = off_100420958;
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

uint64_t CMMsl::PDRDOTMeasurementSelectorState::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v11 = off_100420958;
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
    CMMsl::PDRDOTMeasurementSelectorState::~PDRDOTMeasurementSelectorState(&v11);
  }

  return a1;
}

uint64_t CMMsl::PDRDOTMeasurementSelectorState::formatText(CMMsl::PDRDOTMeasurementSelectorState *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if ((*(this + 52) & 4) != 0)
  {
    PB::TextFormatter::format(a2, "placementFiltered", *(this + 12));
  }

  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(a2, "placementProbabilityFiltered", v7);
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

uint64_t CMMsl::PDRDOTMeasurementSelectorState::readFrom(CMMsl::PDRDOTMeasurementSelectorState *this, PB::Reader *a2)
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

uint64_t CMMsl::PDRDOTMeasurementSelectorState::writeTo(uint64_t this, PB::Writer *a2)
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

uint64_t CMMsl::PDRDOTMeasurementSelectorState::hash_value(CMMsl::PDRDOTMeasurementSelectorState *this)
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

void CMMsl::PDRFeatures::~PDRFeatures(CMMsl::PDRFeatures *this)
{
  PB::Base::~Base(this);

  operator delete();
}

double CMMsl::PDRFeatures::PDRFeatures(CMMsl::PDRFeatures *this, const CMMsl::PDRFeatures *a2)
{
  *this = off_100420990;
  *(this + 27) = 0;
  v2 = *(a2 + 27);
  if (v2)
  {
    result = *(a2 + 1);
    v3 = 1;
    *(this + 27) = 1;
    *(this + 1) = result;
    v2 = *(a2 + 27);
    if ((v2 & 0x40000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x40000) != 0)
  {
LABEL_5:
    LODWORD(result) = *(a2 + 22);
    v3 |= 0x40000u;
    *(this + 27) = v3;
    *(this + 22) = LODWORD(result);
    v2 = *(a2 + 27);
  }

LABEL_6:
  if ((v2 & 0x100000) != 0)
  {
    LODWORD(result) = *(a2 + 24);
    v3 |= 0x100000u;
    *(this + 27) = v3;
    *(this + 24) = LODWORD(result);
    v2 = *(a2 + 27);
    if ((v2 & 0x80000) == 0)
    {
LABEL_8:
      if ((v2 & 0x200000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_30;
    }
  }

  else if ((v2 & 0x80000) == 0)
  {
    goto LABEL_8;
  }

  LODWORD(result) = *(a2 + 23);
  v3 |= 0x80000u;
  *(this + 27) = v3;
  *(this + 23) = LODWORD(result);
  v2 = *(a2 + 27);
  if ((v2 & 0x200000) == 0)
  {
LABEL_9:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_30:
  LODWORD(result) = *(a2 + 25);
  v3 |= 0x200000u;
  *(this + 27) = v3;
  *(this + 25) = LODWORD(result);
  v2 = *(a2 + 27);
  if ((v2 & 0x400) == 0)
  {
LABEL_10:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_32;
  }

LABEL_31:
  LODWORD(result) = *(a2 + 14);
  v3 |= 0x400u;
  *(this + 27) = v3;
  *(this + 14) = LODWORD(result);
  v2 = *(a2 + 27);
  if ((v2 & 0x1000) == 0)
  {
LABEL_11:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_33;
  }

LABEL_32:
  LODWORD(result) = *(a2 + 16);
  v3 |= 0x1000u;
  *(this + 27) = v3;
  *(this + 16) = LODWORD(result);
  v2 = *(a2 + 27);
  if ((v2 & 0x800) == 0)
  {
LABEL_12:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_34;
  }

LABEL_33:
  LODWORD(result) = *(a2 + 15);
  v3 |= 0x800u;
  *(this + 27) = v3;
  *(this + 15) = LODWORD(result);
  v2 = *(a2 + 27);
  if ((v2 & 0x2000) == 0)
  {
LABEL_13:
    if ((v2 & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_35;
  }

LABEL_34:
  LODWORD(result) = *(a2 + 17);
  v3 |= 0x2000u;
  *(this + 27) = v3;
  *(this + 17) = LODWORD(result);
  v2 = *(a2 + 27);
  if ((v2 & 4) == 0)
  {
LABEL_14:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_36;
  }

LABEL_35:
  LODWORD(result) = *(a2 + 6);
  v3 |= 4u;
  *(this + 27) = v3;
  *(this + 6) = LODWORD(result);
  v2 = *(a2 + 27);
  if ((v2 & 0x10) == 0)
  {
LABEL_15:
    if ((v2 & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_37;
  }

LABEL_36:
  LODWORD(result) = *(a2 + 8);
  v3 |= 0x10u;
  *(this + 27) = v3;
  *(this + 8) = LODWORD(result);
  v2 = *(a2 + 27);
  if ((v2 & 8) == 0)
  {
LABEL_16:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_38;
  }

LABEL_37:
  LODWORD(result) = *(a2 + 7);
  v3 |= 8u;
  *(this + 27) = v3;
  *(this + 7) = LODWORD(result);
  v2 = *(a2 + 27);
  if ((v2 & 0x20) == 0)
  {
LABEL_17:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_39;
  }

LABEL_38:
  LODWORD(result) = *(a2 + 9);
  v3 |= 0x20u;
  *(this + 27) = v3;
  *(this + 9) = LODWORD(result);
  v2 = *(a2 + 27);
  if ((v2 & 0x400000) == 0)
  {
LABEL_18:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_40;
  }

LABEL_39:
  LODWORD(result) = *(a2 + 26);
  v3 |= 0x400000u;
  *(this + 27) = v3;
  *(this + 26) = LODWORD(result);
  v2 = *(a2 + 27);
  if ((v2 & 0x80) == 0)
  {
LABEL_19:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_41;
  }

LABEL_40:
  LODWORD(result) = *(a2 + 11);
  v3 |= 0x80u;
  *(this + 27) = v3;
  *(this + 11) = LODWORD(result);
  v2 = *(a2 + 27);
  if ((v2 & 0x40) == 0)
  {
LABEL_20:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_42;
  }

LABEL_41:
  LODWORD(result) = *(a2 + 10);
  v3 |= 0x40u;
  *(this + 27) = v3;
  *(this + 10) = LODWORD(result);
  v2 = *(a2 + 27);
  if ((v2 & 0x200) == 0)
  {
LABEL_21:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_43;
  }

LABEL_42:
  LODWORD(result) = *(a2 + 13);
  v3 |= 0x200u;
  *(this + 27) = v3;
  *(this + 13) = LODWORD(result);
  v2 = *(a2 + 27);
  if ((v2 & 0x100) == 0)
  {
LABEL_22:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_44;
  }

LABEL_43:
  LODWORD(result) = *(a2 + 12);
  v3 |= 0x100u;
  *(this + 27) = v3;
  *(this + 12) = LODWORD(result);
  v2 = *(a2 + 27);
  if ((v2 & 0x8000) == 0)
  {
LABEL_23:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_45;
  }

LABEL_44:
  LODWORD(result) = *(a2 + 19);
  v3 |= 0x8000u;
  *(this + 27) = v3;
  *(this + 19) = LODWORD(result);
  v2 = *(a2 + 27);
  if ((v2 & 0x4000) == 0)
  {
LABEL_24:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_46;
  }

LABEL_45:
  LODWORD(result) = *(a2 + 18);
  v3 |= 0x4000u;
  *(this + 27) = v3;
  *(this + 18) = LODWORD(result);
  v2 = *(a2 + 27);
  if ((v2 & 0x20000) == 0)
  {
LABEL_25:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_47;
  }

LABEL_46:
  LODWORD(result) = *(a2 + 21);
  v3 |= 0x20000u;
  *(this + 27) = v3;
  *(this + 21) = LODWORD(result);
  v2 = *(a2 + 27);
  if ((v2 & 0x10000) == 0)
  {
LABEL_26:
    if ((v2 & 2) == 0)
    {
      return result;
    }

LABEL_48:
    result = *(a2 + 2);
    *(this + 27) = v3 | 2;
    *(this + 2) = result;
    return result;
  }

LABEL_47:
  LODWORD(result) = *(a2 + 20);
  v3 |= 0x10000u;
  *(this + 27) = v3;
  *(this + 20) = LODWORD(result);
  if ((*(a2 + 27) & 2) != 0)
  {
    goto LABEL_48;
  }

  return result;
}

CMMsl *CMMsl::PDRFeatures::operator=(CMMsl *a1, const CMMsl::PDRFeatures *a2)
{
  if (a1 != a2)
  {
    CMMsl::PDRFeatures::PDRFeatures(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::PDRFeatures *a2, CMMsl::PDRFeatures *a3)
{
  v3 = *(this + 27);
  *(this + 27) = *(a2 + 27);
  *(a2 + 27) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v4;
  LODWORD(v4) = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v4;
  LODWORD(v4) = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = v4;
  LODWORD(v4) = *(this + 25);
  *(this + 25) = *(a2 + 25);
  *(a2 + 25) = v4;
  LODWORD(v4) = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v4;
  LODWORD(v4) = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v4;
  LODWORD(v4) = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v4;
  LODWORD(v4) = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v4;
  LODWORD(v4) = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v4;
  LODWORD(v4) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v4;
  LODWORD(v4) = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v4;
  LODWORD(v4) = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v4;
  LODWORD(v4) = *(this + 26);
  *(this + 26) = *(a2 + 26);
  *(a2 + 26) = v4;
  LODWORD(v4) = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v4;
  LODWORD(v4) = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v4;
  LODWORD(v4) = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v4;
  LODWORD(v4) = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v4;
  LODWORD(v4) = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v4;
  LODWORD(v4) = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v4;
  LODWORD(v4) = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v4;
  LODWORD(v4) = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v4;
  result = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = result;
  return result;
}

double CMMsl::PDRFeatures::PDRFeatures(uint64_t a1, uint64_t a2)
{
  *a1 = off_100420990;
  *(a1 + 108) = *(a2 + 108);
  *(a2 + 108) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 80) = *(a2 + 80);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

CMMsl *CMMsl::PDRFeatures::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::PDRFeatures::PDRFeatures(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::PDRFeatures::formatText(CMMsl::PDRFeatures *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 27);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(a2, "pitchMean", *(this + 6));
    v5 = *(this + 27);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_30;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "pitchStd", *(this + 7));
  v5 = *(this + 27);
  if ((v5 & 0x10) == 0)
  {
LABEL_4:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_31;
  }

LABEL_30:
  PB::TextFormatter::format(a2, "rollMeanAbs", *(this + 8));
  v5 = *(this + 27);
  if ((v5 & 0x20) == 0)
  {
LABEL_5:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_32;
  }

LABEL_31:
  PB::TextFormatter::format(a2, "rollStd", *(this + 9));
  v5 = *(this + 27);
  if ((v5 & 0x40) == 0)
  {
LABEL_6:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_33;
  }

LABEL_32:
  PB::TextFormatter::format(a2, "rotRateInerFFTAmpXYHigh", *(this + 10));
  v5 = *(this + 27);
  if ((v5 & 0x80) == 0)
  {
LABEL_7:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(a2, "rotRateInerFFTAmpXYPed", *(this + 11));
  v5 = *(this + 27);
  if ((v5 & 0x100) == 0)
  {
LABEL_8:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_35;
  }

LABEL_34:
  PB::TextFormatter::format(a2, "rotRateInerFFTAmpZHigh", *(this + 12));
  v5 = *(this + 27);
  if ((v5 & 0x200) == 0)
  {
LABEL_9:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(a2, "rotRateInerFFTAmpZPed", *(this + 13));
  v5 = *(this + 27);
  if ((v5 & 0x400) == 0)
  {
LABEL_10:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(a2, "rotRateInerXYMean", *(this + 14));
  v5 = *(this + 27);
  if ((v5 & 0x800) == 0)
  {
LABEL_11:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_38;
  }

LABEL_37:
  PB::TextFormatter::format(a2, "rotRateInerXYStd", *(this + 15));
  v5 = *(this + 27);
  if ((v5 & 0x1000) == 0)
  {
LABEL_12:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(a2, "rotRateInerZMean", *(this + 16));
  v5 = *(this + 27);
  if ((v5 & 0x2000) == 0)
  {
LABEL_13:
    if ((v5 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(a2, "rotRateInerZStd", *(this + 17));
  v5 = *(this + 27);
  if ((v5 & 1) == 0)
  {
LABEL_14:
    if ((v5 & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_41;
  }

LABEL_40:
  PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  v5 = *(this + 27);
  if ((v5 & 2) == 0)
  {
LABEL_15:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_42;
  }

LABEL_41:
  PB::TextFormatter::format(a2, "timestampPast", *(this + 2));
  v5 = *(this + 27);
  if ((v5 & 0x4000) == 0)
  {
LABEL_16:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_43;
  }

LABEL_42:
  PB::TextFormatter::format(a2, "userAccelInerFFTAmpXYHigh", *(this + 18));
  v5 = *(this + 27);
  if ((v5 & 0x8000) == 0)
  {
LABEL_17:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_44;
  }

LABEL_43:
  PB::TextFormatter::format(a2, "userAccelInerFFTAmpXYPed", *(this + 19));
  v5 = *(this + 27);
  if ((v5 & 0x10000) == 0)
  {
LABEL_18:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_45;
  }

LABEL_44:
  PB::TextFormatter::format(a2, "userAccelInerFFTAmpZHigh", *(this + 20));
  v5 = *(this + 27);
  if ((v5 & 0x20000) == 0)
  {
LABEL_19:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_46;
  }

LABEL_45:
  PB::TextFormatter::format(a2, "userAccelInerFFTAmpZPed", *(this + 21));
  v5 = *(this + 27);
  if ((v5 & 0x40000) == 0)
  {
LABEL_20:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_47;
  }

LABEL_46:
  PB::TextFormatter::format(a2, "userAccelInerXYMean", *(this + 22));
  v5 = *(this + 27);
  if ((v5 & 0x80000) == 0)
  {
LABEL_21:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_48;
  }

LABEL_47:
  PB::TextFormatter::format(a2, "userAccelInerXYStd", *(this + 23));
  v5 = *(this + 27);
  if ((v5 & 0x100000) == 0)
  {
LABEL_22:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_49;
  }

LABEL_48:
  PB::TextFormatter::format(a2, "userAccelInerZMean", *(this + 24));
  v5 = *(this + 27);
  if ((v5 & 0x200000) == 0)
  {
LABEL_23:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_49:
  PB::TextFormatter::format(a2, "userAccelInerZStd", *(this + 25));
  if ((*(this + 27) & 0x400000) != 0)
  {
LABEL_24:
    PB::TextFormatter::format(a2, "yawStd", *(this + 26));
  }

LABEL_25:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::PDRFeatures::readFrom(CMMsl::PDRFeatures *this, PB::Reader *a2)
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
        goto LABEL_102;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 27) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_92;
          }

          *(this + 1) = *(*a2 + v2);
          goto LABEL_89;
        case 2u:
          *(this + 27) |= 0x40000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_92;
          }

          *(this + 22) = *(*a2 + v2);
          goto LABEL_96;
        case 3u:
          *(this + 27) |= 0x100000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_92;
          }

          *(this + 24) = *(*a2 + v2);
          goto LABEL_96;
        case 4u:
          *(this + 27) |= 0x80000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_92;
          }

          *(this + 23) = *(*a2 + v2);
          goto LABEL_96;
        case 5u:
          *(this + 27) |= 0x200000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_92;
          }

          *(this + 25) = *(*a2 + v2);
          goto LABEL_96;
        case 6u:
          *(this + 27) |= 0x400u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_92;
          }

          *(this + 14) = *(*a2 + v2);
          goto LABEL_96;
        case 7u:
          *(this + 27) |= 0x1000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_92;
          }

          *(this + 16) = *(*a2 + v2);
          goto LABEL_96;
        case 8u:
          *(this + 27) |= 0x800u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_92;
          }

          *(this + 15) = *(*a2 + v2);
          goto LABEL_96;
        case 9u:
          *(this + 27) |= 0x2000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_92;
          }

          *(this + 17) = *(*a2 + v2);
          goto LABEL_96;
        case 0xAu:
          *(this + 27) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_92;
          }

          *(this + 6) = *(*a2 + v2);
          goto LABEL_96;
        case 0xBu:
          *(this + 27) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_92;
          }

          *(this + 8) = *(*a2 + v2);
          goto LABEL_96;
        case 0xCu:
          *(this + 27) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_92;
          }

          *(this + 7) = *(*a2 + v2);
          goto LABEL_96;
        case 0xDu:
          *(this + 27) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_92;
          }

          *(this + 9) = *(*a2 + v2);
          goto LABEL_96;
        case 0xEu:
          *(this + 27) |= 0x400000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_92;
          }

          *(this + 26) = *(*a2 + v2);
          goto LABEL_96;
        case 0xFu:
          *(this + 27) |= 0x80u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_92;
          }

          *(this + 11) = *(*a2 + v2);
          goto LABEL_96;
        case 0x10u:
          *(this + 27) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_92;
          }

          *(this + 10) = *(*a2 + v2);
          goto LABEL_96;
        case 0x11u:
          *(this + 27) |= 0x200u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_92;
          }

          *(this + 13) = *(*a2 + v2);
          goto LABEL_96;
        case 0x12u:
          *(this + 27) |= 0x100u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_92;
          }

          *(this + 12) = *(*a2 + v2);
          goto LABEL_96;
        case 0x13u:
          *(this + 27) |= 0x8000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_92;
          }

          *(this + 19) = *(*a2 + v2);
          goto LABEL_96;
        case 0x14u:
          *(this + 27) |= 0x4000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_92;
          }

          *(this + 18) = *(*a2 + v2);
          goto LABEL_96;
        case 0x15u:
          *(this + 27) |= 0x20000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_92;
          }

          *(this + 21) = *(*a2 + v2);
          goto LABEL_96;
        case 0x16u:
          *(this + 27) |= 0x10000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_92;
          }

          *(this + 20) = *(*a2 + v2);
LABEL_96:
          v2 = *(a2 + 1) + 4;
          goto LABEL_97;
        case 0x17u:
          *(this + 27) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
LABEL_92:
            *(a2 + 24) = 1;
          }

          else
          {
            *(this + 2) = *(*a2 + v2);
LABEL_89:
            v2 = *(a2 + 1) + 8;
LABEL_97:
            *(a2 + 1) = v2;
          }

          goto LABEL_98;
        default:
          if (!PB::Reader::skip(a2, v10 >> 3, v10 & 7, 0))
          {
            v22 = 0;
            return v22 & 1;
          }

          v2 = *(a2 + 1);
LABEL_98:
          v3 = *(a2 + 2);
          v4 = *(a2 + 24);
          if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
          {
            goto LABEL_102;
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

LABEL_102:
  v22 = v4 ^ 1;
  return v22 & 1;
}

uint64_t CMMsl::PDRFeatures::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 108);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8), 1u);
    v4 = *(v3 + 108);
    if ((v4 & 0x40000) == 0)
    {
LABEL_3:
      if ((v4 & 0x100000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_27;
    }
  }

  else if ((v4 & 0x40000) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 88), 2u);
  v4 = *(v3 + 108);
  if ((v4 & 0x100000) == 0)
  {
LABEL_4:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = PB::Writer::write(a2, *(v3 + 96), 3u);
  v4 = *(v3 + 108);
  if ((v4 & 0x80000) == 0)
  {
LABEL_5:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = PB::Writer::write(a2, *(v3 + 92), 4u);
  v4 = *(v3 + 108);
  if ((v4 & 0x200000) == 0)
  {
LABEL_6:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = PB::Writer::write(a2, *(v3 + 100), 5u);
  v4 = *(v3 + 108);
  if ((v4 & 0x400) == 0)
  {
LABEL_7:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = PB::Writer::write(a2, *(v3 + 56), 6u);
  v4 = *(v3 + 108);
  if ((v4 & 0x1000) == 0)
  {
LABEL_8:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = PB::Writer::write(a2, *(v3 + 64), 7u);
  v4 = *(v3 + 108);
  if ((v4 & 0x800) == 0)
  {
LABEL_9:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = PB::Writer::write(a2, *(v3 + 60), 8u);
  v4 = *(v3 + 108);
  if ((v4 & 0x2000) == 0)
  {
LABEL_10:
    if ((v4 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = PB::Writer::write(a2, *(v3 + 68), 9u);
  v4 = *(v3 + 108);
  if ((v4 & 4) == 0)
  {
LABEL_11:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = PB::Writer::write(a2, *(v3 + 24), 0xAu);
  v4 = *(v3 + 108);
  if ((v4 & 0x10) == 0)
  {
LABEL_12:
    if ((v4 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = PB::Writer::write(a2, *(v3 + 32), 0xBu);
  v4 = *(v3 + 108);
  if ((v4 & 8) == 0)
  {
LABEL_13:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = PB::Writer::write(a2, *(v3 + 28), 0xCu);
  v4 = *(v3 + 108);
  if ((v4 & 0x20) == 0)
  {
LABEL_14:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = PB::Writer::write(a2, *(v3 + 36), 0xDu);
  v4 = *(v3 + 108);
  if ((v4 & 0x400000) == 0)
  {
LABEL_15:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = PB::Writer::write(a2, *(v3 + 104), 0xEu);
  v4 = *(v3 + 108);
  if ((v4 & 0x80) == 0)
  {
LABEL_16:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_40;
  }

LABEL_39:
  this = PB::Writer::write(a2, *(v3 + 44), 0xFu);
  v4 = *(v3 + 108);
  if ((v4 & 0x40) == 0)
  {
LABEL_17:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_41;
  }

LABEL_40:
  this = PB::Writer::write(a2, *(v3 + 40), 0x10u);
  v4 = *(v3 + 108);
  if ((v4 & 0x200) == 0)
  {
LABEL_18:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_42;
  }

LABEL_41:
  this = PB::Writer::write(a2, *(v3 + 52), 0x11u);
  v4 = *(v3 + 108);
  if ((v4 & 0x100) == 0)
  {
LABEL_19:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_43;
  }

LABEL_42:
  this = PB::Writer::write(a2, *(v3 + 48), 0x12u);
  v4 = *(v3 + 108);
  if ((v4 & 0x8000) == 0)
  {
LABEL_20:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_44;
  }

LABEL_43:
  this = PB::Writer::write(a2, *(v3 + 76), 0x13u);
  v4 = *(v3 + 108);
  if ((v4 & 0x4000) == 0)
  {
LABEL_21:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_45;
  }

LABEL_44:
  this = PB::Writer::write(a2, *(v3 + 72), 0x14u);
  v4 = *(v3 + 108);
  if ((v4 & 0x20000) == 0)
  {
LABEL_22:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_23;
    }

LABEL_46:
    this = PB::Writer::write(a2, *(v3 + 80), 0x16u);
    if ((*(v3 + 108) & 2) == 0)
    {
      return this;
    }

    goto LABEL_47;
  }

LABEL_45:
  this = PB::Writer::write(a2, *(v3 + 84), 0x15u);
  v4 = *(v3 + 108);
  if ((v4 & 0x10000) != 0)
  {
    goto LABEL_46;
  }

LABEL_23:
  if ((v4 & 2) == 0)
  {
    return this;
  }

LABEL_47:
  v5 = *(v3 + 16);

  return PB::Writer::write(a2, v5, 0x17u);
}

uint64_t CMMsl::PDRFeatures::hash_value(CMMsl::PDRFeatures *this)
{
  v1 = *(this + 27);
  if ((v1 & 1) == 0)
  {
    v2 = 0.0;
    if ((v1 & 0x40000) != 0)
    {
      goto LABEL_3;
    }

LABEL_51:
    v4 = 0;
    if ((v1 & 0x100000) != 0)
    {
      goto LABEL_6;
    }

LABEL_52:
    v6 = 0;
    if ((v1 & 0x80000) != 0)
    {
      goto LABEL_9;
    }

LABEL_53:
    v8 = 0;
    if ((v1 & 0x200000) != 0)
    {
      goto LABEL_12;
    }

LABEL_54:
    v10 = 0;
    if ((v1 & 0x400) != 0)
    {
      goto LABEL_15;
    }

LABEL_55:
    v12 = 0;
    if ((v1 & 0x1000) != 0)
    {
      goto LABEL_18;
    }

LABEL_56:
    v14 = 0;
    if ((v1 & 0x800) != 0)
    {
      goto LABEL_21;
    }

LABEL_57:
    v16 = 0;
    if ((v1 & 0x2000) != 0)
    {
      goto LABEL_24;
    }

LABEL_58:
    v18 = 0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_27;
    }

LABEL_59:
    v20 = 0;
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_30;
    }

LABEL_60:
    v22 = 0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_33;
    }

LABEL_61:
    v24 = 0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_36;
    }

LABEL_62:
    v26 = 0;
    if ((v1 & 0x400000) != 0)
    {
      goto LABEL_39;
    }

LABEL_63:
    v28 = 0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_42;
    }

    goto LABEL_64;
  }

  v2 = *(this + 1);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((v1 & 0x40000) == 0)
  {
    goto LABEL_51;
  }

LABEL_3:
  v3 = *(this + 22);
  v4 = LODWORD(v3);
  if (v3 == 0.0)
  {
    v4 = 0;
  }

  if ((v1 & 0x100000) == 0)
  {
    goto LABEL_52;
  }

LABEL_6:
  v5 = *(this + 24);
  v6 = LODWORD(v5);
  if (v5 == 0.0)
  {
    v6 = 0;
  }

  if ((v1 & 0x80000) == 0)
  {
    goto LABEL_53;
  }

LABEL_9:
  v7 = *(this + 23);
  v8 = LODWORD(v7);
  if (v7 == 0.0)
  {
    v8 = 0;
  }

  if ((v1 & 0x200000) == 0)
  {
    goto LABEL_54;
  }

LABEL_12:
  v9 = *(this + 25);
  v10 = LODWORD(v9);
  if (v9 == 0.0)
  {
    v10 = 0;
  }

  if ((v1 & 0x400) == 0)
  {
    goto LABEL_55;
  }

LABEL_15:
  v11 = *(this + 14);
  v12 = LODWORD(v11);
  if (v11 == 0.0)
  {
    v12 = 0;
  }

  if ((v1 & 0x1000) == 0)
  {
    goto LABEL_56;
  }

LABEL_18:
  v13 = *(this + 16);
  v14 = LODWORD(v13);
  if (v13 == 0.0)
  {
    v14 = 0;
  }

  if ((v1 & 0x800) == 0)
  {
    goto LABEL_57;
  }

LABEL_21:
  v15 = *(this + 15);
  v16 = LODWORD(v15);
  if (v15 == 0.0)
  {
    v16 = 0;
  }

  if ((v1 & 0x2000) == 0)
  {
    goto LABEL_58;
  }

LABEL_24:
  v17 = *(this + 17);
  v18 = LODWORD(v17);
  if (v17 == 0.0)
  {
    v18 = 0;
  }

  if ((v1 & 4) == 0)
  {
    goto LABEL_59;
  }

LABEL_27:
  v19 = *(this + 6);
  v20 = LODWORD(v19);
  if (v19 == 0.0)
  {
    v20 = 0;
  }

  if ((v1 & 0x10) == 0)
  {
    goto LABEL_60;
  }

LABEL_30:
  v21 = *(this + 8);
  v22 = LODWORD(v21);
  if (v21 == 0.0)
  {
    v22 = 0;
  }

  if ((v1 & 8) == 0)
  {
    goto LABEL_61;
  }

LABEL_33:
  v23 = *(this + 7);
  v24 = LODWORD(v23);
  if (v23 == 0.0)
  {
    v24 = 0;
  }

  if ((v1 & 0x20) == 0)
  {
    goto LABEL_62;
  }

LABEL_36:
  v25 = *(this + 9);
  v26 = LODWORD(v25);
  if (v25 == 0.0)
  {
    v26 = 0;
  }

  if ((v1 & 0x400000) == 0)
  {
    goto LABEL_63;
  }

LABEL_39:
  v27 = *(this + 26);
  v28 = LODWORD(v27);
  if (v27 == 0.0)
  {
    v28 = 0;
  }

  if ((v1 & 0x80) != 0)
  {
LABEL_42:
    v29 = *(this + 11);
    v30 = LODWORD(v29);
    if (v29 == 0.0)
    {
      v30 = 0;
    }

    if ((v1 & 0x40) != 0)
    {
      goto LABEL_45;
    }

LABEL_65:
    v32 = 0;
    goto LABEL_66;
  }

LABEL_64:
  v30 = 0;
  if ((v1 & 0x40) == 0)
  {
    goto LABEL_65;
  }

LABEL_45:
  v31 = *(this + 10);
  v32 = LODWORD(v31);
  if (v31 == 0.0)
  {
    v32 = 0;
  }

LABEL_66:
  if ((v1 & 0x200) == 0)
  {
    v33 = 0;
    if ((v1 & 0x100) != 0)
    {
      goto LABEL_68;
    }

LABEL_89:
    v35 = 0;
    if ((v1 & 0x8000) != 0)
    {
      goto LABEL_71;
    }

LABEL_90:
    v37 = 0;
    if ((v1 & 0x4000) != 0)
    {
      goto LABEL_74;
    }

LABEL_91:
    v39 = 0;
    if ((v1 & 0x20000) != 0)
    {
      goto LABEL_77;
    }

LABEL_92:
    v41 = 0;
    if ((v1 & 0x10000) != 0)
    {
      goto LABEL_80;
    }

    goto LABEL_93;
  }

  v45 = *(this + 13);
  v33 = LODWORD(v45);
  if (v45 == 0.0)
  {
    v33 = 0;
  }

  if ((v1 & 0x100) == 0)
  {
    goto LABEL_89;
  }

LABEL_68:
  v34 = *(this + 12);
  v35 = LODWORD(v34);
  if (v34 == 0.0)
  {
    v35 = 0;
  }

  if ((v1 & 0x8000) == 0)
  {
    goto LABEL_90;
  }

LABEL_71:
  v36 = *(this + 19);
  v37 = LODWORD(v36);
  if (v36 == 0.0)
  {
    v37 = 0;
  }

  if ((v1 & 0x4000) == 0)
  {
    goto LABEL_91;
  }

LABEL_74:
  v38 = *(this + 18);
  v39 = LODWORD(v38);
  if (v38 == 0.0)
  {
    v39 = 0;
  }

  if ((v1 & 0x20000) == 0)
  {
    goto LABEL_92;
  }

LABEL_77:
  v40 = *(this + 21);
  v41 = LODWORD(v40);
  if (v40 == 0.0)
  {
    v41 = 0;
  }

  if ((v1 & 0x10000) != 0)
  {
LABEL_80:
    v42 = *(this + 20);
    v43 = LODWORD(v42);
    if (v42 == 0.0)
    {
      v43 = 0;
    }

    if ((v1 & 2) != 0)
    {
      goto LABEL_83;
    }

LABEL_94:
    v44 = 0.0;
    return v4 ^ *&v2 ^ v6 ^ v8 ^ v10 ^ v12 ^ v14 ^ v16 ^ v18 ^ v20 ^ v22 ^ v24 ^ v26 ^ v28 ^ v30 ^ v32 ^ v33 ^ v35 ^ v37 ^ v39 ^ v41 ^ v43 ^ *&v44;
  }

LABEL_93:
  v43 = 0;
  if ((v1 & 2) == 0)
  {
    goto LABEL_94;
  }

LABEL_83:
  v44 = *(this + 2);
  if (v44 == 0.0)
  {
    v44 = 0.0;
  }

  return v4 ^ *&v2 ^ v6 ^ v8 ^ v10 ^ v12 ^ v14 ^ v16 ^ v18 ^ v20 ^ v22 ^ v24 ^ v26 ^ v28 ^ v30 ^ v32 ^ v33 ^ v35 ^ v37 ^ v39 ^ v41 ^ v43 ^ *&v44;
}

void CMMsl::PDRFenceReference::~PDRFenceReference(CMMsl::PDRFenceReference *this)
{
  PB::Base::~Base(this);

  operator delete();
}

float CMMsl::PDRFenceReference::PDRFenceReference(CMMsl::PDRFenceReference *this, const CMMsl::PDRFenceReference *a2)
{
  *this = off_1004209C8;
  *(this + 5) = 0;
  if ((*(a2 + 20) & 1) == 0)
  {
    v2 = 2;
    if ((*(a2 + 20) & 2) == 0)
    {
      return *&v3;
    }

    goto LABEL_5;
  }

  v3 = *(a2 + 1);
  *(this + 20) = 1;
  *(this + 1) = v3;
  v2 = 3;
  if ((*(a2 + 20) & 2) != 0)
  {
LABEL_5:
    LODWORD(v3) = *(a2 + 4);
    *(this + 20) = v2;
    *(this + 4) = v3;
  }

  return *&v3;
}

uint64_t CMMsl::PDRFenceReference::operator=(uint64_t a1, const CMMsl::PDRFenceReference *a2)
{
  if (a1 != a2)
  {
    CMMsl::PDRFenceReference::PDRFenceReference(v6, a2);
    v3 = *(a1 + 20);
    *(a1 + 20) = v9;
    v9 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    LODWORD(v4) = *(a1 + 16);
    *(a1 + 16) = v8;
    v8 = v4;
    PB::Base::~Base(v6);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::PDRFenceReference *a2, CMMsl::PDRFenceReference *a3)
{
  v3 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  result = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = result;
  return result;
}

float CMMsl::PDRFenceReference::PDRFenceReference(uint64_t a1, uint64_t a2)
{
  *a1 = off_1004209C8;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

{
  *a1 = off_1004209C8;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

uint64_t CMMsl::PDRFenceReference::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v9[0] = off_1004209C8;
    v3 = *(a2 + 20);
    *(a2 + 20) = 0;
    v4 = *(a2 + 8);
    v5 = *(a2 + 16);
    v6 = *(a1 + 20);
    *(a1 + 20) = v3;
    v11 = v6;
    v7 = *(a1 + 8);
    *(a1 + 8) = v4;
    v9[1] = v7;
    LODWORD(v4) = *(a1 + 16);
    *(a1 + 16) = v5;
    v10 = v4;
    PB::Base::~Base(v9);
  }

  return a1;
}

uint64_t CMMsl::PDRFenceReference::formatText(CMMsl::PDRFenceReference *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 20);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "radius", *(this + 4));
    v5 = *(this + 20);
  }

  if (v5)
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::PDRFenceReference::readFrom(CMMsl::PDRFenceReference *this, PB::Reader *a2)
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
            goto LABEL_38;
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
        goto LABEL_38;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 2)
      {
        break;
      }

      if (v22 == 1)
      {
        *(this + 20) |= 1u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_29;
        }

        *(this + 1) = *(*a2 + v2);
        v2 = *(a2 + 1) + 8;
LABEL_33:
        *(a2 + 1) = v2;
        goto LABEL_34;
      }

      if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(a2 + 1);
LABEL_34:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_38;
      }
    }

    *(this + 20) |= 2u;
    v2 = *(a2 + 1);
    if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
    {
LABEL_29:
      *(a2 + 24) = 1;
      goto LABEL_34;
    }

    *(this + 4) = *(*a2 + v2);
    v2 = *(a2 + 1) + 4;
    goto LABEL_33;
  }

LABEL_38:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t CMMsl::PDRFenceReference::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 20);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8), 1u);
    v4 = *(v3 + 20);
  }

  if ((v4 & 2) != 0)
  {
    v5 = *(v3 + 16);

    return PB::Writer::write(a2, v5, 2u);
  }

  return this;
}

uint64_t CMMsl::PDRFenceReference::hash_value(CMMsl::PDRFenceReference *this)
{
  if (*(this + 20))
  {
    v1 = *(this + 1);
    if (v1 == 0.0)
    {
      v1 = 0.0;
    }

    if ((*(this + 20) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v3 = 0;
    return v3 ^ *&v1;
  }

  v1 = 0.0;
  if ((*(this + 20) & 2) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  v2 = *(this + 4);
  v3 = LODWORD(v2);
  if (v2 == 0.0)
  {
    v3 = 0;
  }

  return v3 ^ *&v1;
}

void CMMsl::PDRFenceState::~PDRFenceState(CMMsl::PDRFenceState *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::PDRFenceState::PDRFenceState(uint64_t this, const CMMsl::PDRFenceState *a2)
{
  *this = off_100420A00;
  *(this + 68) = 0;
  v2 = *(a2 + 34);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 68) = 1;
    *(this + 8) = v4;
    v2 = *(a2 + 34);
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 34) & 0x200) != 0)
  {
LABEL_5:
    v5 = *(a2 + 13);
    v3 |= 0x200u;
    *(this + 68) = v3;
    *(this + 52) = v5;
    v2 = *(a2 + 34);
  }

LABEL_6:
  if ((v2 & 0x400) != 0)
  {
    v6 = *(a2 + 14);
    v3 |= 0x400u;
    *(this + 68) = v3;
    *(this + 56) = v6;
    v2 = *(a2 + 34);
    if ((v2 & 0x800) == 0)
    {
LABEL_8:
      if ((v2 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_20;
    }
  }

  else if ((v2 & 0x800) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 15);
  v3 |= 0x800u;
  *(this + 68) = v3;
  *(this + 60) = v7;
  v2 = *(a2 + 34);
  if ((v2 & 0x40) == 0)
  {
LABEL_9:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  v8 = *(a2 + 10);
  v3 |= 0x40u;
  *(this + 68) = v3;
  *(this + 40) = v8;
  v2 = *(a2 + 34);
  if ((v2 & 0x80) == 0)
  {
LABEL_10:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  v9 = *(a2 + 11);
  v3 |= 0x80u;
  *(this + 68) = v3;
  *(this + 44) = v9;
  v2 = *(a2 + 34);
  if ((v2 & 0x100) == 0)
  {
LABEL_11:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_22:
  v10 = *(a2 + 12);
  v3 |= 0x100u;
  *(this + 68) = v3;
  *(this + 48) = v10;
  v2 = *(a2 + 34);
  if ((v2 & 0x1000) == 0)
  {
LABEL_12:
    if ((v2 & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_24;
  }

LABEL_23:
  v11 = *(a2 + 64);
  v3 |= 0x1000u;
  *(this + 68) = v3;
  *(this + 64) = v11;
  v2 = *(a2 + 34);
  if ((v2 & 2) == 0)
  {
LABEL_13:
    if ((v2 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

LABEL_24:
  v12 = *(a2 + 2);
  v3 |= 2u;
  *(this + 68) = v3;
  *(this + 16) = v12;
  v2 = *(a2 + 34);
  if ((v2 & 8) == 0)
  {
LABEL_14:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_26;
  }

LABEL_25:
  v13 = *(a2 + 7);
  v3 |= 8u;
  *(this + 68) = v3;
  *(this + 28) = v13;
  v2 = *(a2 + 34);
  if ((v2 & 0x10) == 0)
  {
LABEL_15:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_27;
  }

LABEL_26:
  v14 = *(a2 + 8);
  v3 |= 0x10u;
  *(this + 68) = v3;
  *(this + 32) = v14;
  v2 = *(a2 + 34);
  if ((v2 & 0x20) == 0)
  {
LABEL_16:
    if ((v2 & 4) == 0)
    {
      return this;
    }

LABEL_28:
    v16 = *(a2 + 6);
    *(this + 68) = v3 | 4;
    *(this + 24) = v16;
    return this;
  }

LABEL_27:
  v15 = *(a2 + 9);
  v3 |= 0x20u;
  *(this + 68) = v3;
  *(this + 36) = v15;
  if ((*(a2 + 34) & 4) != 0)
  {
    goto LABEL_28;
  }

  return this;
}

CMMsl *CMMsl::PDRFenceState::operator=(CMMsl *a1, const CMMsl::PDRFenceState *a2)
{
  if (a1 != a2)
  {
    CMMsl::PDRFenceState::PDRFenceState(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::PDRFenceState *a2, CMMsl::PDRFenceState *a3)
{
  v3 = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v4;
  LODWORD(v4) = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v4;
  LODWORD(v4) = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v4;
  LODWORD(v4) = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v4;
  LODWORD(v4) = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v4;
  LODWORD(v4) = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v4;
  LOBYTE(v3) = *(this + 64);
  *(this + 64) = *(a2 + 64);
  *(a2 + 64) = v3;
  v5 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v5;
  LODWORD(v5) = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v5;
  LODWORD(v5) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v5;
  result = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = result;
  v7 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v7;
  return result;
}

float CMMsl::PDRFenceState::PDRFenceState(uint64_t a1, uint64_t a2)
{
  *a1 = off_100420A00;
  *(a1 + 68) = *(a2 + 68);
  *(a2 + 68) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 36);
  *(a1 + 36) = result;
  *(a1 + 24) = *(a2 + 24);
  return result;
}

CMMsl *CMMsl::PDRFenceState::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::PDRFenceState::PDRFenceState(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::PDRFenceState::formatText(CMMsl::PDRFenceState *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 34);
  if ((v5 & 0x1000) != 0)
  {
    PB::TextFormatter::format(a2, "didExceedRadius", *(this + 64));
    v5 = *(this + 34);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "fenceID", *(this + 6));
  v5 = *(this + 34);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(a2, "positionRefX", *(this + 7));
  v5 = *(this + 34);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(a2, "positionRefY", *(this + 8));
  v5 = *(this + 34);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(a2, "positionRefZ", *(this + 9));
  v5 = *(this + 34);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(a2, "positionUncX", *(this + 10));
  v5 = *(this + 34);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(a2, "positionUncY", *(this + 11));
  v5 = *(this + 34);
  if ((v5 & 0x100) == 0)
  {
LABEL_9:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  PB::TextFormatter::format(a2, "positionUncZ", *(this + 12));
  v5 = *(this + 34);
  if ((v5 & 0x200) == 0)
  {
LABEL_10:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(a2, "positionX", *(this + 13));
  v5 = *(this + 34);
  if ((v5 & 0x400) == 0)
  {
LABEL_11:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  PB::TextFormatter::format(a2, "positionY", *(this + 14));
  v5 = *(this + 34);
  if ((v5 & 0x800) == 0)
  {
LABEL_12:
    if ((v5 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(a2, "positionZ", *(this + 15));
  v5 = *(this + 34);
  if ((v5 & 1) == 0)
  {
LABEL_13:
    if ((v5 & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_29:
  PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  if ((*(this + 34) & 2) != 0)
  {
LABEL_14:
    PB::TextFormatter::format(a2, "timestampPast", *(this + 2));
  }

LABEL_15:

  return PB::TextFormatter::endObject(a2);
}