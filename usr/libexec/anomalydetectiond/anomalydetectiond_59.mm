uint64_t CMMsl::SitStandDetectorFeatures::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 44);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8), 1u);
    v4 = *(v3 + 44);
    if ((v4 & 0x10) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(this + 44) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 28), 2u);
  v4 = *(v3 + 44);
  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  this = PB::Writer::write(a2, *(v3 + 16), 3u);
  v4 = *(v3 + 44);
  if ((v4 & 0x80) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  this = PB::Writer::write(a2, *(v3 + 40), 4u);
  v4 = *(v3 + 44);
  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = PB::Writer::write(a2, *(v3 + 24), 5u);
  v4 = *(v3 + 44);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    this = PB::Writer::write(a2, *(v3 + 36), 7u);
    if ((*(v3 + 44) & 0x20) == 0)
    {
      return this;
    }

    goto LABEL_17;
  }

LABEL_15:
  this = PB::Writer::write(a2, *(v3 + 20), 6u);
  v4 = *(v3 + 44);
  if ((v4 & 0x40) != 0)
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

  return PB::Writer::write(a2, v5, 8u);
}

uint64_t CMMsl::SitStandDetectorFeatures::hash_value(CMMsl::SitStandDetectorFeatures *this)
{
  if ((*(this + 44) & 1) == 0)
  {
    v1 = 0.0;
    if ((*(this + 44) & 0x10) != 0)
    {
      goto LABEL_3;
    }

LABEL_27:
    v3 = 0;
    if ((*(this + 44) & 2) != 0)
    {
      goto LABEL_6;
    }

LABEL_28:
    v5 = 0;
    if ((*(this + 44) & 0x80) != 0)
    {
      goto LABEL_9;
    }

LABEL_29:
    v7 = 0;
    if ((*(this + 44) & 8) != 0)
    {
      goto LABEL_12;
    }

LABEL_30:
    v9 = 0;
    if ((*(this + 44) & 4) != 0)
    {
      goto LABEL_15;
    }

LABEL_31:
    v11 = 0;
    if ((*(this + 44) & 0x40) != 0)
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

  if ((*(this + 44) & 0x10) == 0)
  {
    goto LABEL_27;
  }

LABEL_3:
  v2 = *(this + 7);
  v3 = LODWORD(v2);
  if (v2 == 0.0)
  {
    v3 = 0;
  }

  if ((*(this + 44) & 2) == 0)
  {
    goto LABEL_28;
  }

LABEL_6:
  v4 = *(this + 4);
  v5 = LODWORD(v4);
  if (v4 == 0.0)
  {
    v5 = 0;
  }

  if ((*(this + 44) & 0x80) == 0)
  {
    goto LABEL_29;
  }

LABEL_9:
  v6 = *(this + 10);
  v7 = LODWORD(v6);
  if (v6 == 0.0)
  {
    v7 = 0;
  }

  if ((*(this + 44) & 8) == 0)
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

  if ((*(this + 44) & 4) == 0)
  {
    goto LABEL_31;
  }

LABEL_15:
  v10 = *(this + 5);
  v11 = LODWORD(v10);
  if (v10 == 0.0)
  {
    v11 = 0;
  }

  if ((*(this + 44) & 0x40) != 0)
  {
LABEL_18:
    v12 = *(this + 9);
    v13 = LODWORD(v12);
    if (v12 == 0.0)
    {
      v13 = 0;
    }

    if ((*(this + 44) & 0x20) != 0)
    {
      goto LABEL_21;
    }

LABEL_33:
    v15 = 0;
    return v3 ^ *&v1 ^ v5 ^ v7 ^ v9 ^ v11 ^ v13 ^ v15;
  }

LABEL_32:
  v13 = 0;
  if ((*(this + 44) & 0x20) == 0)
  {
    goto LABEL_33;
  }

LABEL_21:
  v14 = *(this + 8);
  v15 = LODWORD(v14);
  if (v14 == 0.0)
  {
    v15 = 0;
  }

  return v3 ^ *&v1 ^ v5 ^ v7 ^ v9 ^ v11 ^ v13 ^ v15;
}

void CMMsl::SitStandDetectorPosteriorBufferStatsForSitToStand::~SitStandDetectorPosteriorBufferStatsForSitToStand(CMMsl::SitStandDetectorPosteriorBufferStatsForSitToStand *this)
{
  PB::Base::~Base(this);

  operator delete();
}

float CMMsl::SitStandDetectorPosteriorBufferStatsForSitToStand::SitStandDetectorPosteriorBufferStatsForSitToStand(CMMsl::SitStandDetectorPosteriorBufferStatsForSitToStand *this, const CMMsl::SitStandDetectorPosteriorBufferStatsForSitToStand *a2)
{
  *this = off_100421DB0;
  *(this + 7) = 0;
  v2 = *(a2 + 28);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 28) = 1;
    *(this + 1) = v4;
    v2 = *(a2 + 28);
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 28) & 8) != 0)
  {
LABEL_5:
    LODWORD(v4) = *(a2 + 6);
    v3 |= 8u;
    *(this + 28) = v3;
    *(this + 6) = v4;
    v2 = *(a2 + 28);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    LODWORD(v4) = *(a2 + 4);
    v3 |= 2u;
    *(this + 28) = v3;
    *(this + 4) = v4;
    if ((*(a2 + 28) & 4) == 0)
    {
      return *&v4;
    }
  }

  else if ((v2 & 4) == 0)
  {
    return *&v4;
  }

  LODWORD(v4) = *(a2 + 5);
  *(this + 28) = v3 | 4;
  *(this + 5) = v4;
  return *&v4;
}

uint64_t CMMsl::SitStandDetectorPosteriorBufferStatsForSitToStand::operator=(uint64_t a1, const CMMsl::SitStandDetectorPosteriorBufferStatsForSitToStand *a2)
{
  if (a1 != a2)
  {
    CMMsl::SitStandDetectorPosteriorBufferStatsForSitToStand::SitStandDetectorPosteriorBufferStatsForSitToStand(&v9, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v12;
    v12 = v3;
    v4 = v11;
    v5 = *(a1 + 8);
    v6 = *(a1 + 16);
    *(a1 + 8) = v10;
    *(a1 + 16) = v4;
    v7 = *(a1 + 28);
    *(a1 + 28) = v13;
    v13 = v7;
    v10 = v5;
    v11 = v6;
    PB::Base::~Base(&v9);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::SitStandDetectorPosteriorBufferStatsForSitToStand *a2, CMMsl::SitStandDetectorPosteriorBufferStatsForSitToStand *a3)
{
  v3 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v4;
  LODWORD(v4) = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  result = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = result;
  return result;
}

float CMMsl::SitStandDetectorPosteriorBufferStatsForSitToStand::SitStandDetectorPosteriorBufferStatsForSitToStand(uint64_t a1, uint64_t a2)
{
  *a1 = off_100421DB0;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 20);
  *(a1 + 20) = result;
  return result;
}

{
  *a1 = off_100421DB0;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 20);
  *(a1 + 20) = result;
  return result;
}

uint64_t CMMsl::SitStandDetectorPosteriorBufferStatsForSitToStand::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v10[0] = off_100421DB0;
    v3 = *(a2 + 28);
    *(a2 + 28) = 0;
    v4 = *(a2 + 24);
    v12 = *(a1 + 28);
    v11 = *(a1 + 24);
    v5 = *(a2 + 8);
    v6 = *(a2 + 16);
    *(a1 + 24) = v4;
    v7 = *(a1 + 8);
    v8 = *(a1 + 16);
    *(a1 + 28) = v3;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    v10[1] = v7;
    v10[2] = v8;
    PB::Base::~Base(v10);
  }

  return a1;
}

uint64_t CMMsl::SitStandDetectorPosteriorBufferStatsForSitToStand::formatText(CMMsl::SitStandDetectorPosteriorBufferStatsForSitToStand *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 28);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "maxPosterior", *(this + 4));
    v5 = *(this + 28);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(this + 28) & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "meanPosterior", *(this + 5));
  v5 = *(this + 28);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  PB::TextFormatter::format(a2, "minPosterior", *(this + 6));
  if (*(this + 28))
  {
LABEL_5:
    PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  }

LABEL_6:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::SitStandDetectorPosteriorBufferStatsForSitToStand::readFrom(CMMsl::SitStandDetectorPosteriorBufferStatsForSitToStand *this, PB::Reader *a2)
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
            goto LABEL_48;
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
          *(this + 28) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
LABEL_40:
            *(a2 + 24) = 1;
            goto LABEL_44;
          }

          *(this + 4) = *(*a2 + v2);
LABEL_42:
          v2 = *(a2 + 1) + 4;
LABEL_43:
          *(a2 + 1) = v2;
          goto LABEL_44;
        }

        if (v22 == 4)
        {
          *(this + 28) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_40;
          }

          *(this + 5) = *(*a2 + v2);
          goto LABEL_42;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(this + 28) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_40;
          }

          *(this + 1) = *(*a2 + v2);
          v2 = *(a2 + 1) + 8;
          goto LABEL_43;
        }

        if (v22 == 2)
        {
          *(this + 28) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_40;
          }

          *(this + 6) = *(*a2 + v2);
          goto LABEL_42;
        }
      }

      if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(a2 + 1);
LABEL_44:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_48:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t CMMsl::SitStandDetectorPosteriorBufferStatsForSitToStand::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 28);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8), 1u);
    v4 = *(v3 + 28);
    if ((v4 & 8) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = PB::Writer::write(a2, *(v3 + 16), 3u);
      if ((*(v3 + 28) & 4) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 28) & 8) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 24), 2u);
  v4 = *(v3 + 28);
  if ((v4 & 2) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v4 & 4) == 0)
  {
    return this;
  }

LABEL_9:
  v5 = *(v3 + 20);

  return PB::Writer::write(a2, v5, 4u);
}

uint64_t CMMsl::SitStandDetectorPosteriorBufferStatsForSitToStand::hash_value(CMMsl::SitStandDetectorPosteriorBufferStatsForSitToStand *this)
{
  if ((*(this + 28) & 1) == 0)
  {
    v1 = 0.0;
    if ((*(this + 28) & 8) != 0)
    {
      goto LABEL_3;
    }

LABEL_15:
    v3 = 0;
    if ((*(this + 28) & 2) != 0)
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

  if ((*(this + 28) & 8) == 0)
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

  if ((*(this + 28) & 2) != 0)
  {
LABEL_6:
    v4 = *(this + 4);
    v5 = LODWORD(v4);
    if (v4 == 0.0)
    {
      v5 = 0;
    }

    if ((*(this + 28) & 4) != 0)
    {
      goto LABEL_9;
    }

LABEL_17:
    v7 = 0;
    return v3 ^ *&v1 ^ v5 ^ v7;
  }

LABEL_16:
  v5 = 0;
  if ((*(this + 28) & 4) == 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  v6 = *(this + 5);
  v7 = LODWORD(v6);
  if (v6 == 0.0)
  {
    v7 = 0;
  }

  return v3 ^ *&v1 ^ v5 ^ v7;
}

void CMMsl::SitStandDetectorPosteriorBufferStatsForStandToSit::~SitStandDetectorPosteriorBufferStatsForStandToSit(CMMsl::SitStandDetectorPosteriorBufferStatsForStandToSit *this)
{
  PB::Base::~Base(this);

  operator delete();
}

float CMMsl::SitStandDetectorPosteriorBufferStatsForStandToSit::SitStandDetectorPosteriorBufferStatsForStandToSit(CMMsl::SitStandDetectorPosteriorBufferStatsForStandToSit *this, const CMMsl::SitStandDetectorPosteriorBufferStatsForStandToSit *a2)
{
  *this = off_100421DE8;
  *(this + 7) = 0;
  v2 = *(a2 + 28);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 28) = 1;
    *(this + 1) = v4;
    v2 = *(a2 + 28);
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 28) & 8) != 0)
  {
LABEL_5:
    LODWORD(v4) = *(a2 + 6);
    v3 |= 8u;
    *(this + 28) = v3;
    *(this + 6) = v4;
    v2 = *(a2 + 28);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    LODWORD(v4) = *(a2 + 4);
    v3 |= 2u;
    *(this + 28) = v3;
    *(this + 4) = v4;
    if ((*(a2 + 28) & 4) == 0)
    {
      return *&v4;
    }
  }

  else if ((v2 & 4) == 0)
  {
    return *&v4;
  }

  LODWORD(v4) = *(a2 + 5);
  *(this + 28) = v3 | 4;
  *(this + 5) = v4;
  return *&v4;
}

uint64_t CMMsl::SitStandDetectorPosteriorBufferStatsForStandToSit::operator=(uint64_t a1, const CMMsl::SitStandDetectorPosteriorBufferStatsForStandToSit *a2)
{
  if (a1 != a2)
  {
    CMMsl::SitStandDetectorPosteriorBufferStatsForStandToSit::SitStandDetectorPosteriorBufferStatsForStandToSit(&v9, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v12;
    v12 = v3;
    v4 = v11;
    v5 = *(a1 + 8);
    v6 = *(a1 + 16);
    *(a1 + 8) = v10;
    *(a1 + 16) = v4;
    v7 = *(a1 + 28);
    *(a1 + 28) = v13;
    v13 = v7;
    v10 = v5;
    v11 = v6;
    PB::Base::~Base(&v9);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::SitStandDetectorPosteriorBufferStatsForStandToSit *a2, CMMsl::SitStandDetectorPosteriorBufferStatsForStandToSit *a3)
{
  v3 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v4;
  LODWORD(v4) = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  result = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = result;
  return result;
}

float CMMsl::SitStandDetectorPosteriorBufferStatsForStandToSit::SitStandDetectorPosteriorBufferStatsForStandToSit(uint64_t a1, uint64_t a2)
{
  *a1 = off_100421DE8;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 20);
  *(a1 + 20) = result;
  return result;
}

{
  *a1 = off_100421DE8;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 20);
  *(a1 + 20) = result;
  return result;
}

uint64_t CMMsl::SitStandDetectorPosteriorBufferStatsForStandToSit::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v10[0] = off_100421DE8;
    v3 = *(a2 + 28);
    *(a2 + 28) = 0;
    v4 = *(a2 + 24);
    v12 = *(a1 + 28);
    v11 = *(a1 + 24);
    v5 = *(a2 + 8);
    v6 = *(a2 + 16);
    *(a1 + 24) = v4;
    v7 = *(a1 + 8);
    v8 = *(a1 + 16);
    *(a1 + 28) = v3;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    v10[1] = v7;
    v10[2] = v8;
    PB::Base::~Base(v10);
  }

  return a1;
}

uint64_t CMMsl::SitStandDetectorPosteriorBufferStatsForStandToSit::formatText(CMMsl::SitStandDetectorPosteriorBufferStatsForStandToSit *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 28);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "maxPosterior", *(this + 4));
    v5 = *(this + 28);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(this + 28) & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "meanPosterior", *(this + 5));
  v5 = *(this + 28);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  PB::TextFormatter::format(a2, "minPosterior", *(this + 6));
  if (*(this + 28))
  {
LABEL_5:
    PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  }

LABEL_6:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::SitStandDetectorPosteriorBufferStatsForStandToSit::readFrom(CMMsl::SitStandDetectorPosteriorBufferStatsForStandToSit *this, PB::Reader *a2)
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
            goto LABEL_48;
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
          *(this + 28) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
LABEL_40:
            *(a2 + 24) = 1;
            goto LABEL_44;
          }

          *(this + 4) = *(*a2 + v2);
LABEL_42:
          v2 = *(a2 + 1) + 4;
LABEL_43:
          *(a2 + 1) = v2;
          goto LABEL_44;
        }

        if (v22 == 4)
        {
          *(this + 28) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_40;
          }

          *(this + 5) = *(*a2 + v2);
          goto LABEL_42;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(this + 28) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_40;
          }

          *(this + 1) = *(*a2 + v2);
          v2 = *(a2 + 1) + 8;
          goto LABEL_43;
        }

        if (v22 == 2)
        {
          *(this + 28) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_40;
          }

          *(this + 6) = *(*a2 + v2);
          goto LABEL_42;
        }
      }

      if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(a2 + 1);
LABEL_44:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_48:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t CMMsl::SitStandDetectorPosteriorBufferStatsForStandToSit::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 28);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8), 1u);
    v4 = *(v3 + 28);
    if ((v4 & 8) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = PB::Writer::write(a2, *(v3 + 16), 3u);
      if ((*(v3 + 28) & 4) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 28) & 8) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 24), 2u);
  v4 = *(v3 + 28);
  if ((v4 & 2) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v4 & 4) == 0)
  {
    return this;
  }

LABEL_9:
  v5 = *(v3 + 20);

  return PB::Writer::write(a2, v5, 4u);
}

uint64_t CMMsl::SitStandDetectorPosteriorBufferStatsForStandToSit::hash_value(CMMsl::SitStandDetectorPosteriorBufferStatsForStandToSit *this)
{
  if ((*(this + 28) & 1) == 0)
  {
    v1 = 0.0;
    if ((*(this + 28) & 8) != 0)
    {
      goto LABEL_3;
    }

LABEL_15:
    v3 = 0;
    if ((*(this + 28) & 2) != 0)
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

  if ((*(this + 28) & 8) == 0)
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

  if ((*(this + 28) & 2) != 0)
  {
LABEL_6:
    v4 = *(this + 4);
    v5 = LODWORD(v4);
    if (v4 == 0.0)
    {
      v5 = 0;
    }

    if ((*(this + 28) & 4) != 0)
    {
      goto LABEL_9;
    }

LABEL_17:
    v7 = 0;
    return v3 ^ *&v1 ^ v5 ^ v7;
  }

LABEL_16:
  v5 = 0;
  if ((*(this + 28) & 4) == 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  v6 = *(this + 5);
  v7 = LODWORD(v6);
  if (v6 == 0.0)
  {
    v7 = 0;
  }

  return v3 ^ *&v1 ^ v5 ^ v7;
}

void CMMsl::SitStandDetectorTransition::~SitStandDetectorTransition(CMMsl::SitStandDetectorTransition *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::SitStandDetectorTransition::SitStandDetectorTransition(uint64_t this, const CMMsl::SitStandDetectorTransition *a2)
{
  *this = off_100421E20;
  *(this + 16) = 0;
  if (*(a2 + 20))
  {
    v3 = *(a2 + 1);
    *(this + 20) = 1;
    *(this + 8) = v3;
    v2 = 3;
    if ((*(a2 + 20) & 2) == 0)
    {
      return this;
    }

    goto LABEL_5;
  }

  v2 = 2;
  if ((*(a2 + 20) & 2) != 0)
  {
LABEL_5:
    v4 = *(a2 + 4);
    *(this + 20) = v2;
    *(this + 16) = v4;
  }

  return this;
}

const CMMsl::SitStandDetectorTransition *CMMsl::SitStandDetectorTransition::operator=(const CMMsl::SitStandDetectorTransition *a1, const CMMsl::SitStandDetectorTransition *a2)
{
  if (a1 != a2)
  {
    CMMsl::SitStandDetectorTransition::SitStandDetectorTransition(v7, a2);
    v3 = v9;
    v4 = *(a1 + 1);
    v5 = *(a1 + 2);
    *(a1 + 1) = v8;
    *(a1 + 2) = v3;
    v8 = v4;
    v9 = v5;
    PB::Base::~Base(v7);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::SitStandDetectorTransition *a2, CMMsl::SitStandDetectorTransition *a3)
{
  v3 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v3;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  return result;
}

double CMMsl::SitStandDetectorTransition::SitStandDetectorTransition(uint64_t a1, uint64_t a2)
{
  *a1 = off_100421E20;
  *(a1 + 16) = 0;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = *(a2 + 16);
  return result;
}

{
  *a1 = off_100421E20;
  *(a1 + 16) = 0;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = *(a2 + 16);
  return result;
}

uint64_t CMMsl::SitStandDetectorTransition::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v8[0] = off_100421E20;
    v3 = *(a2 + 8);
    v4 = *(a2 + 16);
    *(a2 + 20) = 0;
    v5 = *(a1 + 8);
    v6 = *(a1 + 16);
    *(a1 + 8) = v3;
    *(a1 + 16) = v4;
    v8[1] = v5;
    v8[2] = v6;
    PB::Base::~Base(v8);
  }

  return a1;
}

uint64_t CMMsl::SitStandDetectorTransition::formatText(CMMsl::SitStandDetectorTransition *this, PB::TextFormatter *a2, const char *a3)
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
    PB::TextFormatter::format(a2, "transitionType", *(this + 4));
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::SitStandDetectorTransition::readFrom(CMMsl::SitStandDetectorTransition *this, PB::Reader *a2)
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

      else if (v22 == 1)
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

uint64_t CMMsl::SitStandDetectorTransition::writeTo(uint64_t this, PB::Writer *a2)
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

    return PB::Writer::writeVarInt(a2, v5, 2u);
  }

  return this;
}

uint64_t CMMsl::SitStandDetectorTransition::hash_value(CMMsl::SitStandDetectorTransition *this)
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

LABEL_7:
    v2 = 0;
    return v2 ^ *&v1;
  }

  v1 = 0.0;
  if ((*(this + 20) & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  v2 = *(this + 4);
  return v2 ^ *&v1;
}

void CMMsl::Skeleton2D::~Skeleton2D(CMMsl::Skeleton2D *this)
{
  *this = off_100421E58;
  v2 = (this + 16);
  sub_1002A2E24(&v2);
  PB::Base::~Base(this);
}

{
  *this = off_100421E58;
  v2 = (this + 16);
  sub_1002A2E24(&v2);
  PB::Base::~Base(this);
}

{
  *this = off_100421E58;
  v2 = (this + 16);
  sub_1002A2E24(&v2);
  PB::Base::~Base(this);
  operator delete();
}

uint64_t CMMsl::Skeleton2D::Skeleton2D(uint64_t this, const CMMsl::Skeleton2D *a2)
{
  *this = off_100421E58;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 48) = 0;
  v2 = *(a2 + 2);
  if (v2 != *(a2 + 3))
  {
    v3 = *v2;
    sub_1002531D0();
  }

  v4 = *(a2 + 48);
  if ((v4 & 2) != 0)
  {
    v5 = *(a2 + 5);
    *(this + 48) |= 2u;
    *(this + 40) = v5;
    v4 = *(a2 + 48);
  }

  if (v4)
  {
    v6 = *(a2 + 1);
    *(this + 48) |= 1u;
    *(this + 8) = v6;
  }

  return this;
}

uint64_t CMMsl::Skeleton2D::operator=(uint64_t a1, const CMMsl::Skeleton2D *a2)
{
  if (a1 != a2)
  {
    CMMsl::Skeleton2D::Skeleton2D(&v9, a2);
    v3 = *(a1 + 48);
    *(a1 + 48) = v14;
    v14 = v3;
    v4 = *(a1 + 16);
    *(a1 + 16) = v11;
    v11 = v4;
    v5 = *(a1 + 32);
    *(a1 + 32) = v12;
    v12 = v5;
    v6 = *(a1 + 40);
    *(a1 + 40) = v13;
    v13 = v6;
    v7 = *(a1 + 8);
    *(a1 + 8) = v10;
    v10 = v7;
    v9 = off_100421E58;
    v15 = &v11;
    sub_1002A2E24(&v15);
    PB::Base::~Base(&v9);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::Skeleton2D *a2, CMMsl::Skeleton2D *a3)
{
  v3 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v3;
  v4 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v5;
  v6 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v6;
  v7 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v7;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  return result;
}

uint64_t CMMsl::Skeleton2D::Skeleton2D(uint64_t a1, uint64_t a2)
{
  *a1 = off_100421E58;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  v4 = (a1 + 16);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  sub_1002A2EE4((a1 + 16));
  *v4 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t CMMsl::Skeleton2D::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::Skeleton2D::Skeleton2D(&v9, a2);
    v3 = *(a1 + 48);
    *(a1 + 48) = v14;
    v14 = v3;
    v4 = *(a1 + 16);
    *(a1 + 16) = v11;
    v11 = v4;
    v5 = *(a1 + 32);
    *(a1 + 32) = v12;
    v12 = v5;
    v6 = *(a1 + 40);
    *(a1 + 40) = v13;
    v13 = v6;
    v7 = *(a1 + 8);
    *(a1 + 8) = v10;
    v10 = v7;
    v9 = off_100421E58;
    v15 = &v11;
    sub_1002A2E24(&v15);
    PB::Base::~Base(&v9);
  }

  return a1;
}

uint64_t CMMsl::Skeleton2D::formatText(CMMsl::Skeleton2D *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 48))
  {
    PB::TextFormatter::format(a2, "globalMachtime", *(this + 1));
  }

  v5 = *(this + 2);
  v6 = *(this + 3);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, a2, "joint");
  }

  if ((*(this + 48) & 2) != 0)
  {
    PB::TextFormatter::format(a2, "localMachtime", *(this + 5));
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::Skeleton2D::readFrom(CMMsl::Skeleton2D *this, PB::Reader *a2)
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
            goto LABEL_40;
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
        goto LABEL_40;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        break;
      }

      if (v22 == 2)
      {
        *(this + 48) |= 2u;
        v23 = *(a2 + 1);
        if (v23 > 0xFFFFFFFFFFFFFFF7 || v23 + 8 > *(a2 + 2))
        {
          goto LABEL_31;
        }

        *(this + 5) = *(*a2 + v23);
LABEL_35:
        *(a2 + 1) += 8;
        goto LABEL_36;
      }

      if (v22 == 1)
      {
        sub_1002538EC();
      }

      if ((PB::Reader::skip(a2, v22, v10 & 7, 0) & 1) == 0)
      {
        v26 = 0;
        return v26 & 1;
      }

LABEL_36:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_40;
      }
    }

    *(this + 48) |= 1u;
    v24 = *(a2 + 1);
    if (v24 > 0xFFFFFFFFFFFFFFF7 || v24 + 8 > *(a2 + 2))
    {
LABEL_31:
      *(a2 + 24) = 1;
      goto LABEL_36;
    }

    *(this + 1) = *(*a2 + v24);
    goto LABEL_35;
  }

LABEL_40:
  v26 = v4 ^ 1;
  return v26 & 1;
}

uint64_t CMMsl::Skeleton2D::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 16);
  v5 = *(this + 24);
  while (v4 != v5)
  {
    v6 = *v4++;
    this = PB::Writer::writeSubmessage(a2, v6, 1u);
  }

  v7 = *(v3 + 48);
  if ((v7 & 2) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 40), 2u);
    v7 = *(v3 + 48);
  }

  if (v7)
  {
    v8 = *(v3 + 8);

    return PB::Writer::write(a2, v8, 3u);
  }

  return this;
}

BOOL sub_100253AF4(uint64_t *a1, uint64_t a2)
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
    result = CMMsl::Skeleton2DJoint::operator==(*(v5 - 8), v6);
    v8 = !result || v5 == v3;
    v5 += 8;
  }

  while (!v8);
  return result;
}

uint64_t CMMsl::Skeleton2D::hash_value(CMMsl::Skeleton2D *this)
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
      v4 ^= CMMsl::Skeleton2DJoint::hash_value(v5);
    }

    while (v2 != v3);
  }

  if ((*(this + 48) & 2) != 0)
  {
    v6 = *(this + 5);
    if (v6 == 0.0)
    {
      v6 = 0.0;
    }

    if (*(this + 48))
    {
      goto LABEL_8;
    }

LABEL_14:
    v7 = 0.0;
    return *&v6 ^ v4 ^ *&v7;
  }

  v6 = 0.0;
  if ((*(this + 48) & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v7 = *(this + 1);
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  return *&v6 ^ v4 ^ *&v7;
}

uint64_t CMMsl::Skeleton2DJoint::Skeleton2DJoint(uint64_t this)
{
  *this = off_100421E90;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 36) = 0;
  *(this + 44) = 0;
  return this;
}

{
  *this = off_100421E90;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 36) = 0;
  *(this + 44) = 0;
  return this;
}

void CMMsl::Skeleton2DJoint::~Skeleton2DJoint(CMMsl::Skeleton2DJoint *this)
{
  *this = off_100421E90;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::Skeleton2DJoint::~Skeleton2DJoint(this);

  operator delete();
}

CMMsl::Skeleton2DJoint *CMMsl::Skeleton2DJoint::Skeleton2DJoint(CMMsl::Skeleton2DJoint *this, const CMMsl::Skeleton2DJoint *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = off_100421E90;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 9) = 0;
  *(this + 11) = 0;
  if ((*(a2 + 44) & 2) != 0)
  {
    v5 = *(a2 + 9);
    *(this + 44) = 2;
    *(this + 9) = v5;
  }

  if (this != a2)
  {
    sub_100035D1C(v4, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 2);
  }

  v6 = *(a2 + 44);
  if (v6)
  {
    v7 = *(a2 + 8);
    *(this + 44) |= 1u;
    *(this + 8) = v7;
    v6 = *(a2 + 44);
  }

  if ((v6 & 4) != 0)
  {
    v8 = *(a2 + 40);
    *(this + 44) |= 4u;
    *(this + 40) = v8;
  }

  return this;
}

uint64_t CMMsl::Skeleton2DJoint::operator=(uint64_t a1, const CMMsl::Skeleton2DJoint *a2)
{
  if (a1 != a2)
  {
    CMMsl::Skeleton2DJoint::Skeleton2DJoint(&v9, a2);
    v3 = *(a1 + 44);
    *(a1 + 44) = v15;
    v15 = v3;
    v4 = *(a1 + 36);
    *(a1 + 36) = v13;
    v13 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v10;
    v10 = v5;
    v6 = *(a1 + 24);
    *(a1 + 24) = v11;
    v11 = v6;
    v7 = *(a1 + 32);
    *(a1 + 32) = v12;
    v12 = v7;
    LOBYTE(v6) = *(a1 + 40);
    *(a1 + 40) = v14;
    v14 = v6;
    CMMsl::Skeleton2DJoint::~Skeleton2DJoint(&v9);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::Skeleton2DJoint *a2, CMMsl::Skeleton2DJoint *a3)
{
  v3 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v3;
  v4 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v4;
  v5 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v5;
  v6 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v6;
  v7 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v7;
  result = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = result;
  LOBYTE(v7) = *(this + 40);
  *(this + 40) = *(a2 + 40);
  *(a2 + 40) = v7;
  return result;
}

uint64_t CMMsl::Skeleton2DJoint::Skeleton2DJoint(uint64_t a1, uint64_t a2)
{
  *a1 = off_100421E90;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 36) = 0;
  *(a1 + 44) = *(a2 + 44);
  *(a2 + 44) = 0;
  *(a1 + 36) = *(a2 + 36);
  sub_1002A2DD0(a1 + 8, (a2 + 8));
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

{
  *a1 = off_100421E90;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 36) = 0;
  *(a1 + 44) = *(a2 + 44);
  *(a2 + 44) = 0;
  *(a1 + 36) = *(a2 + 36);
  sub_1002A2DD0(a1 + 8, (a2 + 8));
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t CMMsl::Skeleton2DJoint::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v14 = off_100421E90;
    v3 = *(a2 + 44);
    *(a2 + 44) = 0;
    v4 = *(a2 + 36);
    v5 = *(a2 + 40);
    v6 = *(a2 + 32);
    v7 = *(a2 + 24);
    v8 = *(a2 + 8);
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    v9 = *(a1 + 44);
    *(a1 + 44) = v3;
    v20 = v9;
    v10 = *(a1 + 36);
    *(a1 + 36) = v4;
    v18 = v10;
    v11 = *(a1 + 8);
    *(a1 + 8) = v8;
    v15 = v11;
    v12 = *(a1 + 24);
    *(a1 + 24) = v7;
    v16 = v12;
    LODWORD(v8) = *(a1 + 32);
    *(a1 + 32) = v6;
    v17 = v8;
    LOBYTE(v12) = *(a1 + 40);
    *(a1 + 40) = v5;
    v19 = v12;
    CMMsl::Skeleton2DJoint::~Skeleton2DJoint(&v14);
  }

  return a1;
}

uint64_t CMMsl::Skeleton2DJoint::formatText(CMMsl::Skeleton2DJoint *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 44);
  if (v5)
  {
    PB::TextFormatter::format(a2, "confidence", *(this + 8));
    v5 = *(this + 44);
  }

  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "joint", *(this + 9));
  }

  v6 = *(this + 1);
  v7 = *(this + 2);
  while (v6 != v7)
  {
    v8 = *v6++;
    PB::TextFormatter::format(a2, "position", v8);
  }

  if ((*(this + 44) & 4) != 0)
  {
    PB::TextFormatter::format(a2, "visible", *(this + 40));
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::Skeleton2DJoint::readFrom(CMMsl::Skeleton2DJoint *this, PB::Reader *a2)
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
      if ((v10 >> 3) > 2)
      {
        break;
      }

      if (v23 == 1)
      {
        *(this + 44) |= 2u;
        v45 = *(a2 + 1);
        v44 = *(a2 + 2);
        v46 = *a2;
        if (v45 > 0xFFFFFFFFFFFFFFF5 || v45 + 10 > v44)
        {
          v54 = 0;
          v55 = 0;
          v49 = 0;
          v17 = v44 >= v45;
          v56 = v44 - v45;
          if (!v17)
          {
            v56 = 0;
          }

          v57 = (v46 + v45);
          v58 = v45 + 1;
          while (1)
          {
            if (!v56)
            {
              LODWORD(v49) = 0;
              *(a2 + 24) = 1;
              goto LABEL_84;
            }

            v59 = *v57;
            *(a2 + 1) = v58;
            v49 |= (v59 & 0x7F) << v54;
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
LABEL_68:
              LODWORD(v49) = 0;
              goto LABEL_84;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v49) = 0;
          }
        }

        else
        {
          v47 = 0;
          v48 = 0;
          v49 = 0;
          v50 = (v46 + v45);
          v51 = v45 + 1;
          while (1)
          {
            *(a2 + 1) = v51;
            v52 = *v50++;
            v49 |= (v52 & 0x7F) << v47;
            if ((v52 & 0x80) == 0)
            {
              break;
            }

            v47 += 7;
            ++v51;
            v14 = v48++ > 8;
            if (v14)
            {
              goto LABEL_68;
            }
          }
        }

LABEL_84:
        *(this + 9) = v49;
        goto LABEL_94;
      }

      if (v23 != 2)
      {
        goto LABEL_49;
      }

      if (v22 != 2)
      {
        v61 = *(this + 2);
        v60 = *(this + 3);
        if (v61 >= v60)
        {
          v63 = *(this + 1);
          v64 = v61 - v63;
          v65 = (v61 - v63) >> 2;
          v66 = v65 + 1;
          if ((v65 + 1) >> 62)
          {
LABEL_101:
            sub_10000CD24();
          }

          v67 = v60 - v63;
          if (v67 >> 1 > v66)
          {
            v66 = v67 >> 1;
          }

          if (v67 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v68 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v68 = v66;
          }

          if (v68)
          {
            sub_10002290C(this + 8, v68);
          }

          v69 = (v61 - v63) >> 2;
          v70 = (4 * v65);
          v71 = (4 * v65 - 4 * v69);
          *v70 = 0;
          v62 = v70 + 1;
          memcpy(v71, v63, v64);
          v72 = *(this + 1);
          *(this + 1) = v71;
          *(this + 2) = v62;
          *(this + 3) = 0;
          if (v72)
          {
            operator delete(v72);
          }
        }

        else
        {
          *v61 = 0;
          v62 = v61 + 4;
        }

        *(this + 2) = v62;
        v73 = *(a2 + 1);
        if (v73 > 0xFFFFFFFFFFFFFFFBLL || v73 + 4 > *(a2 + 2))
        {
LABEL_91:
          *(a2 + 24) = 1;
          goto LABEL_94;
        }

        *(v62 - 1) = *(*a2 + v73);
        goto LABEL_93;
      }

      if (PB::Reader::placeMark())
      {
        goto LABEL_100;
      }

      v24 = *(a2 + 1);
      v25 = *(a2 + 2);
      while (v24 < v25 && (*(a2 + 24) & 1) == 0)
      {
        v27 = *(this + 2);
        v26 = *(this + 3);
        if (v27 >= v26)
        {
          v29 = *(this + 1);
          v30 = v27 - v29;
          v31 = (v27 - v29) >> 2;
          v32 = v31 + 1;
          if ((v31 + 1) >> 62)
          {
            goto LABEL_101;
          }

          v33 = v26 - v29;
          if (v33 >> 1 > v32)
          {
            v32 = v33 >> 1;
          }

          if (v33 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v34 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v34 = v32;
          }

          if (v34)
          {
            sub_10002290C(this + 8, v34);
          }

          v35 = (v27 - v29) >> 2;
          v36 = (4 * v31);
          v37 = (4 * v31 - 4 * v35);
          *v36 = 0;
          v28 = v36 + 1;
          memcpy(v37, v29, v30);
          v38 = *(this + 1);
          *(this + 1) = v37;
          *(this + 2) = v28;
          *(this + 3) = 0;
          if (v38)
          {
            operator delete(v38);
          }
        }

        else
        {
          *v27 = 0;
          v28 = v27 + 4;
        }

        *(this + 2) = v28;
        v39 = *(a2 + 1);
        if (v39 > 0xFFFFFFFFFFFFFFFBLL || v39 + 4 > *(a2 + 2))
        {
          *(a2 + 24) = 1;
          break;
        }

        *(v28 - 1) = *(*a2 + v39);
        v25 = *(a2 + 2);
        v24 = *(a2 + 1) + 4;
        *(a2 + 1) = v24;
      }

      PB::Reader::recallMark();
LABEL_94:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_98;
      }
    }

    if (v23 == 3)
    {
      *(this + 44) |= 1u;
      v53 = *(a2 + 1);
      if (v53 > 0xFFFFFFFFFFFFFFFBLL || v53 + 4 > *(a2 + 2))
      {
        goto LABEL_91;
      }

      *(this + 8) = *(*a2 + v53);
LABEL_93:
      *(a2 + 1) += 4;
      goto LABEL_94;
    }

    if (v23 == 4)
    {
      *(this + 44) |= 4u;
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

      *(this + 40) = v43;
      goto LABEL_94;
    }

LABEL_49:
    if ((PB::Reader::skip(a2, v23, v22, 0) & 1) == 0)
    {
LABEL_100:
      v74 = 0;
      return v74 & 1;
    }

    goto LABEL_94;
  }

LABEL_98:
  v74 = v4 ^ 1;
  return v74 & 1;
}

uint64_t CMMsl::Skeleton2DJoint::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if ((*(this + 44) & 2) != 0)
  {
    this = PB::Writer::writeVarInt(a2, *(this + 36), 1u);
  }

  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  while (v4 != v5)
  {
    v6 = *v4++;
    this = PB::Writer::write(a2, v6, 2u);
  }

  v7 = *(v3 + 44);
  if (v7)
  {
    this = PB::Writer::write(a2, *(v3 + 32), 3u);
    v7 = *(v3 + 44);
  }

  if ((v7 & 4) != 0)
  {
    v8 = *(v3 + 40);

    return PB::Writer::write(a2, v8, 4u);
  }

  return this;
}

BOOL CMMsl::Skeleton2DJoint::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 44) & 2) != 0)
  {
    if ((*(a2 + 44) & 2) == 0 || *(a1 + 36) != *(a2 + 36))
    {
      return 0;
    }
  }

  else if ((*(a2 + 44) & 2) != 0)
  {
    return 0;
  }

  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a2 + 8);
  if (v2 - v3 != *(a2 + 16) - v4)
  {
    return 0;
  }

  while (v3 != v2)
  {
    if (*v3 != *v4)
    {
      return 0;
    }

    ++v3;
    ++v4;
  }

  if (*(a1 + 44))
  {
    if ((*(a2 + 44) & 1) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if (*(a2 + 44))
  {
    return 0;
  }

  v5 = (*(a2 + 44) & 4) == 0;
  if ((*(a1 + 44) & 4) != 0)
  {
    return (*(a2 + 44) & 4) != 0 && *(a1 + 40) == *(a2 + 40);
  }

  return v5;
}

uint64_t CMMsl::Skeleton2DJoint::hash_value(CMMsl::Skeleton2DJoint *this)
{
  if ((*(this + 44) & 2) != 0)
  {
    v2 = *(this + 9);
  }

  else
  {
    v2 = 0;
  }

  v3 = *(this + 1);
  v4 = *(this + 2);
  v5 = PBHashBytes();
  if (*(this + 44))
  {
    v8 = *(this + 8);
    v6 = LODWORD(v8);
    if (v8 == 0.0)
    {
      v6 = 0;
    }

    if ((*(this + 44) & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_10:
    v7 = 0;
    return v5 ^ v2 ^ v6 ^ v7;
  }

  v6 = 0;
  if ((*(this + 44) & 4) == 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  v7 = *(this + 40);
  return v5 ^ v2 ^ v6 ^ v7;
}

void CMMsl::Skeleton3D::~Skeleton3D(CMMsl::Skeleton3D *this)
{
  *this = off_100421EC8;
  v2 = (this + 8);
  sub_1002A2E24(&v2);
  PB::Base::~Base(this);
}

{
  *this = off_100421EC8;
  v2 = (this + 8);
  sub_1002A2E24(&v2);
  PB::Base::~Base(this);
}

{
  *this = off_100421EC8;
  v2 = (this + 8);
  sub_1002A2E24(&v2);
  PB::Base::~Base(this);
  operator delete();
}

void *CMMsl::Skeleton3D::Skeleton3D(void *this, const CMMsl::Skeleton3D *a2)
{
  this[1] = 0;
  *this = off_100421EC8;
  this[2] = 0;
  this[3] = 0;
  v2 = *(a2 + 1);
  if (v2 != *(a2 + 2))
  {
    v3 = *v2;
    sub_100254A24();
  }

  return this;
}

uint64_t CMMsl::Skeleton3D::operator=(uint64_t a1, const CMMsl::Skeleton3D *a2)
{
  if (a1 != a2)
  {
    CMMsl::Skeleton3D::Skeleton3D(&v6, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v4;
    v6 = off_100421EC8;
    v9 = &v7;
    sub_1002A2E24(&v9);
    PB::Base::~Base(&v6);
  }

  return a1;
}

void *CMMsl::swap(void *this, CMMsl::Skeleton3D *a2, CMMsl::Skeleton3D *a3)
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

uint64_t CMMsl::Skeleton3D::Skeleton3D(uint64_t a1, uint64_t a2)
{
  *a1 = off_100421EC8;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  sub_1002A2EE4((a1 + 8));
  *v4 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return a1;
}

{
  *a1 = off_100421EC8;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  sub_1002A2EE4((a1 + 8));
  *v4 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return a1;
}

uint64_t CMMsl::Skeleton3D::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v9 = off_100421EC8;
    v10 = 0uLL;
    v11 = 0;
    sub_1002A2EE4(&v10);
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
    v9 = off_100421EC8;
    sub_1002A2E24(&v12);
    PB::Base::~Base(&v9);
  }

  return a1;
}

uint64_t CMMsl::Skeleton3D::formatText(CMMsl::Skeleton3D *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, a2, "joint");
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::Skeleton3D::readFrom(CMMsl::Skeleton3D *this, PB::Reader *a2)
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
        sub_10025504C();
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

uint64_t CMMsl::Skeleton3D::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  for (i = *(this + 16); v2 != i; this = PB::Writer::writeSubmessage(a2, v5, 1u))
  {
    v5 = *v2++;
  }

  return this;
}

BOOL sub_100255210(uint64_t *a1, uint64_t a2)
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
    result = CMMsl::SkeletonJoint::operator==(*(v5 - 8), v6);
    v8 = !result || v5 == v3;
    v5 += 8;
  }

  while (!v8);
  return result;
}

uint64_t CMMsl::Skeleton3D::hash_value(CMMsl::Skeleton3D *this)
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
    v3 ^= CMMsl::SkeletonJoint::hash_value(v4);
  }

  while (v1 != v2);
  return v3;
}

void CMMsl::Skeleton3DLifted::~Skeleton3DLifted(CMMsl::Skeleton3DLifted *this)
{
  *this = off_100421F00;
  v2 = (this + 16);
  sub_1002A2E24(&v2);
  PB::Base::~Base(this);
}

{
  *this = off_100421F00;
  v2 = (this + 16);
  sub_1002A2E24(&v2);
  PB::Base::~Base(this);
}

{
  *this = off_100421F00;
  v2 = (this + 16);
  sub_1002A2E24(&v2);
  PB::Base::~Base(this);
  operator delete();
}

uint64_t CMMsl::Skeleton3DLifted::Skeleton3DLifted(uint64_t this, const CMMsl::Skeleton3DLifted *a2)
{
  *this = off_100421F00;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 48) = 0;
  v2 = *(a2 + 2);
  if (v2 != *(a2 + 3))
  {
    v3 = *v2;
    sub_1002554EC();
  }

  v4 = *(a2 + 48);
  if ((v4 & 2) != 0)
  {
    v5 = *(a2 + 5);
    *(this + 48) |= 2u;
    *(this + 40) = v5;
    v4 = *(a2 + 48);
  }

  if (v4)
  {
    v6 = *(a2 + 1);
    *(this + 48) |= 1u;
    *(this + 8) = v6;
  }

  return this;
}

uint64_t CMMsl::Skeleton3DLifted::operator=(uint64_t a1, const CMMsl::Skeleton3DLifted *a2)
{
  if (a1 != a2)
  {
    CMMsl::Skeleton3DLifted::Skeleton3DLifted(&v9, a2);
    v3 = *(a1 + 48);
    *(a1 + 48) = v14;
    v14 = v3;
    v4 = *(a1 + 16);
    *(a1 + 16) = v11;
    v11 = v4;
    v5 = *(a1 + 32);
    *(a1 + 32) = v12;
    v12 = v5;
    v6 = *(a1 + 40);
    *(a1 + 40) = v13;
    v13 = v6;
    v7 = *(a1 + 8);
    *(a1 + 8) = v10;
    v10 = v7;
    v9 = off_100421F00;
    v15 = &v11;
    sub_1002A2E24(&v15);
    PB::Base::~Base(&v9);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::Skeleton3DLifted *a2, CMMsl::Skeleton3DLifted *a3)
{
  v3 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v3;
  v4 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v5;
  v6 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v6;
  v7 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v7;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  return result;
}

uint64_t CMMsl::Skeleton3DLifted::Skeleton3DLifted(uint64_t a1, uint64_t a2)
{
  *a1 = off_100421F00;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  v4 = (a1 + 16);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  sub_1002A2EE4((a1 + 16));
  *v4 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t CMMsl::Skeleton3DLifted::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::Skeleton3DLifted::Skeleton3DLifted(&v9, a2);
    v3 = *(a1 + 48);
    *(a1 + 48) = v14;
    v14 = v3;
    v4 = *(a1 + 16);
    *(a1 + 16) = v11;
    v11 = v4;
    v5 = *(a1 + 32);
    *(a1 + 32) = v12;
    v12 = v5;
    v6 = *(a1 + 40);
    *(a1 + 40) = v13;
    v13 = v6;
    v7 = *(a1 + 8);
    *(a1 + 8) = v10;
    v10 = v7;
    v9 = off_100421F00;
    v15 = &v11;
    sub_1002A2E24(&v15);
    PB::Base::~Base(&v9);
  }

  return a1;
}

uint64_t CMMsl::Skeleton3DLifted::formatText(CMMsl::Skeleton3DLifted *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 48))
  {
    PB::TextFormatter::format(a2, "globalMachtime", *(this + 1));
  }

  v5 = *(this + 2);
  v6 = *(this + 3);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, a2, "joint");
  }

  if ((*(this + 48) & 2) != 0)
  {
    PB::TextFormatter::format(a2, "localMachtime", *(this + 5));
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::Skeleton3DLifted::readFrom(CMMsl::Skeleton3DLifted *this, PB::Reader *a2)
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
            goto LABEL_40;
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
        goto LABEL_40;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        break;
      }

      if (v22 == 2)
      {
        *(this + 48) |= 2u;
        v23 = *(a2 + 1);
        if (v23 > 0xFFFFFFFFFFFFFFF7 || v23 + 8 > *(a2 + 2))
        {
          goto LABEL_31;
        }

        *(this + 5) = *(*a2 + v23);
LABEL_35:
        *(a2 + 1) += 8;
        goto LABEL_36;
      }

      if (v22 == 1)
      {
        sub_100255C08();
      }

      if ((PB::Reader::skip(a2, v22, v10 & 7, 0) & 1) == 0)
      {
        v26 = 0;
        return v26 & 1;
      }

LABEL_36:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_40;
      }
    }

    *(this + 48) |= 1u;
    v24 = *(a2 + 1);
    if (v24 > 0xFFFFFFFFFFFFFFF7 || v24 + 8 > *(a2 + 2))
    {
LABEL_31:
      *(a2 + 24) = 1;
      goto LABEL_36;
    }

    *(this + 1) = *(*a2 + v24);
    goto LABEL_35;
  }

LABEL_40:
  v26 = v4 ^ 1;
  return v26 & 1;
}

uint64_t CMMsl::Skeleton3DLifted::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 16);
  v5 = *(this + 24);
  while (v4 != v5)
  {
    v6 = *v4++;
    this = PB::Writer::writeSubmessage(a2, v6, 1u);
  }

  v7 = *(v3 + 48);
  if ((v7 & 2) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 40), 2u);
    v7 = *(v3 + 48);
  }

  if (v7)
  {
    v8 = *(v3 + 8);

    return PB::Writer::write(a2, v8, 3u);
  }

  return this;
}

BOOL sub_100255E10(uint64_t *a1, uint64_t a2)
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
    result = CMMsl::Skeleton3DLiftedJoint::operator==(*(v5 - 8), v6);
    v8 = !result || v5 == v3;
    v5 += 8;
  }

  while (!v8);
  return result;
}

uint64_t CMMsl::Skeleton3DLifted::hash_value(CMMsl::Skeleton3DLifted *this)
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
      v4 ^= CMMsl::Skeleton3DLiftedJoint::hash_value(v5);
    }

    while (v2 != v3);
  }

  if ((*(this + 48) & 2) != 0)
  {
    v6 = *(this + 5);
    if (v6 == 0.0)
    {
      v6 = 0.0;
    }

    if (*(this + 48))
    {
      goto LABEL_8;
    }

LABEL_14:
    v7 = 0.0;
    return *&v6 ^ v4 ^ *&v7;
  }

  v6 = 0.0;
  if ((*(this + 48) & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v7 = *(this + 1);
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  return *&v6 ^ v4 ^ *&v7;
}

double CMMsl::Skeleton3DLiftedJoint::Skeleton3DLiftedJoint(CMMsl::Skeleton3DLiftedJoint *this)
{
  *this = off_100421F38;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = off_100421F38;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

void CMMsl::Skeleton3DLiftedJoint::~Skeleton3DLiftedJoint(CMMsl::Skeleton3DLiftedJoint *this)
{
  *this = off_100421F38;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::Skeleton3DLiftedJoint::~Skeleton3DLiftedJoint(this);

  operator delete();
}

CMMsl::Skeleton3DLiftedJoint *CMMsl::Skeleton3DLiftedJoint::Skeleton3DLiftedJoint(CMMsl::Skeleton3DLiftedJoint *this, const CMMsl::Skeleton3DLiftedJoint *a2)
{
  *this = off_100421F38;
  *(this + 8) = 0u;
  v3 = (this + 8);
  *(this + 24) = 0u;
  if (*(a2 + 36))
  {
    v4 = *(a2 + 8);
    *(this + 36) = 1;
    *(this + 8) = v4;
  }

  if (this != a2)
  {
    sub_100035D1C(v3, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 2);
  }

  return this;
}

uint64_t CMMsl::Skeleton3DLiftedJoint::operator=(uint64_t a1, const CMMsl::Skeleton3DLiftedJoint *a2)
{
  if (a1 != a2)
  {
    CMMsl::Skeleton3DLiftedJoint::Skeleton3DLiftedJoint(v7, a2);
    v3 = *(a1 + 32);
    *(a1 + 32) = v10;
    v10 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v4;
    v5 = *(a1 + 24);
    *(a1 + 24) = v9;
    v9 = v5;
    CMMsl::Skeleton3DLiftedJoint::~Skeleton3DLiftedJoint(v7);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::Skeleton3DLiftedJoint *a2, CMMsl::Skeleton3DLiftedJoint *a3)
{
  v3 = *(this + 36);
  *(this + 36) = *(a2 + 9);
  *(a2 + 9) = v3;
  v4 = *(this + 32);
  *(this + 32) = *(a2 + 8);
  *(a2 + 8) = v4;
  v5 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v5;
  v6 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v6;
  v7 = *(this + 24);
  *(this + 24) = *(a2 + 3);
  *(a2 + 3) = v7;
  return this;
}

uint64_t CMMsl::Skeleton3DLiftedJoint::Skeleton3DLiftedJoint(uint64_t a1, uint64_t a2)
{
  *a1 = off_100421F38;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
  *(a1 + 36) = *(a2 + 36);
  *(a2 + 36) = 0;
  *(a1 + 32) = *(a2 + 32);
  sub_1002A2DD0(a1 + 8, (a2 + 8));
  return a1;
}

{
  *a1 = off_100421F38;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
  *(a1 + 36) = *(a2 + 36);
  *(a2 + 36) = 0;
  *(a1 + 32) = *(a2 + 32);
  sub_1002A2DD0(a1 + 8, (a2 + 8));
  return a1;
}

uint64_t CMMsl::Skeleton3DLiftedJoint::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v10 = off_100421F38;
    v3 = *(a2 + 24);
    v4 = *(a2 + 8);
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    v5 = *(a2 + 32);
    *(a2 + 36) = 0;
    v6 = *(a1 + 32);
    *(a1 + 32) = v5;
    v13 = v6;
    v7 = *(a1 + 8);
    *(a1 + 8) = v4;
    v11 = v7;
    v8 = *(a1 + 24);
    *(a1 + 24) = v3;
    v12 = v8;
    CMMsl::Skeleton3DLiftedJoint::~Skeleton3DLiftedJoint(&v10);
  }

  return a1;
}

uint64_t CMMsl::Skeleton3DLiftedJoint::formatText(CMMsl::Skeleton3DLiftedJoint *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 36))
  {
    PB::TextFormatter::format(a2, "joint", *(this + 8));
  }

  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(a2, "position", v7);
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::Skeleton3DLiftedJoint::readFrom(CMMsl::Skeleton3DLiftedJoint *this, PB::Reader *a2)
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
            goto LABEL_87;
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
        if (v22 == 2)
        {
          if (PB::Reader::placeMark())
          {
            goto LABEL_89;
          }

          v33 = *(a2 + 1);
          v34 = *(a2 + 2);
          while (v33 < v34 && (*(a2 + 24) & 1) == 0)
          {
            v36 = *(this + 2);
            v35 = *(this + 3);
            if (v36 >= v35)
            {
              v38 = *(this + 1);
              v39 = v36 - v38;
              v40 = (v36 - v38) >> 2;
              v41 = v40 + 1;
              if ((v40 + 1) >> 62)
              {
                goto LABEL_90;
              }

              v42 = v35 - v38;
              if (v42 >> 1 > v41)
              {
                v41 = v42 >> 1;
              }

              if (v42 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v43 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v43 = v41;
              }

              if (v43)
              {
                sub_10002290C(this + 8, v43);
              }

              v44 = (v36 - v38) >> 2;
              v45 = (4 * v40);
              v46 = (4 * v40 - 4 * v44);
              *v45 = 0;
              v37 = v45 + 1;
              memcpy(v46, v38, v39);
              v47 = *(this + 1);
              *(this + 1) = v46;
              *(this + 2) = v37;
              *(this + 3) = 0;
              if (v47)
              {
                operator delete(v47);
              }
            }

            else
            {
              *v36 = 0;
              v37 = v36 + 4;
            }

            *(this + 2) = v37;
            v48 = *(a2 + 1);
            if (v48 > 0xFFFFFFFFFFFFFFFBLL || v48 + 4 > *(a2 + 2))
            {
              *(a2 + 24) = 1;
              break;
            }

            *(v37 - 1) = *(*a2 + v48);
            v34 = *(a2 + 2);
            v33 = *(a2 + 1) + 4;
            *(a2 + 1) = v33;
          }

          PB::Reader::recallMark();
        }

        else
        {
          v56 = *(this + 2);
          v55 = *(this + 3);
          if (v56 >= v55)
          {
            v58 = *(this + 1);
            v59 = v56 - v58;
            v60 = (v56 - v58) >> 2;
            v61 = v60 + 1;
            if ((v60 + 1) >> 62)
            {
LABEL_90:
              sub_10000CD24();
            }

            v62 = v55 - v58;
            if (v62 >> 1 > v61)
            {
              v61 = v62 >> 1;
            }

            if (v62 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v63 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v63 = v61;
            }

            if (v63)
            {
              sub_10002290C(this + 8, v63);
            }

            v64 = (v56 - v58) >> 2;
            v65 = (4 * v60);
            v66 = (4 * v60 - 4 * v64);
            *v65 = 0;
            v57 = v65 + 1;
            memcpy(v66, v58, v59);
            v67 = *(this + 1);
            *(this + 1) = v66;
            *(this + 2) = v57;
            *(this + 3) = 0;
            if (v67)
            {
              operator delete(v67);
            }
          }

          else
          {
            *v56 = 0;
            v57 = v56 + 4;
          }

          *(this + 2) = v57;
          v68 = *(a2 + 1);
          if (v68 <= 0xFFFFFFFFFFFFFFFBLL && v68 + 4 <= *(a2 + 2))
          {
            *(v57 - 1) = *(*a2 + v68);
            *(a2 + 1) += 4;
          }

          else
          {
            *(a2 + 24) = 1;
          }
        }
      }

      else if (v23 == 1)
      {
        *(this + 36) |= 1u;
        v25 = *(a2 + 1);
        v24 = *(a2 + 2);
        v26 = *a2;
        if (v25 > 0xFFFFFFFFFFFFFFF5 || v25 + 10 > v24)
        {
          v49 = 0;
          v50 = 0;
          v29 = 0;
          v17 = v24 >= v25;
          v51 = v24 - v25;
          if (!v17)
          {
            v51 = 0;
          }

          v52 = (v26 + v25);
          v53 = v25 + 1;
          while (1)
          {
            if (!v51)
            {
              LODWORD(v29) = 0;
              *(a2 + 24) = 1;
              goto LABEL_74;
            }

            v54 = *v52;
            *(a2 + 1) = v53;
            v29 |= (v54 & 0x7F) << v49;
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
LABEL_60:
              LODWORD(v29) = 0;
              goto LABEL_74;
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
              goto LABEL_60;
            }
          }
        }

LABEL_74:
        *(this + 8) = v29;
      }

      else if ((PB::Reader::skip(a2, v23, v22, 0) & 1) == 0)
      {
LABEL_89:
        v69 = 0;
        return v69 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_87:
  v69 = v4 ^ 1;
  return v69 & 1;
}

uint64_t CMMsl::Skeleton3DLiftedJoint::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if (*(this + 36))
  {
    this = PB::Writer::writeVarInt(a2, *(this + 32), 1u);
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

BOOL CMMsl::Skeleton3DLiftedJoint::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 36);
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

  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = *(a2 + 8);
  if (v3 - v4 != *(a2 + 16) - v5)
  {
    return 0;
  }

  if (v4 == v3)
  {
    return 1;
  }

  v6 = v4 + 4;
  do
  {
    v7 = *v5++;
    result = *(v6 - 4) == v7;
    v9 = *(v6 - 4) != v7 || v6 == v3;
    v6 += 4;
  }

  while (!v9);
  return result;
}

uint64_t CMMsl::Skeleton3DLiftedJoint::hash_value(CMMsl::Skeleton3DLiftedJoint *this)
{
  if (*(this + 36))
  {
    v1 = *(this + 8);
  }

  else
  {
    v1 = 0;
  }

  v2 = *(this + 1);
  v3 = *(this + 2);
  return PBHashBytes() ^ v1;
}

void CMMsl::Skeleton3DRetargeted::~Skeleton3DRetargeted(CMMsl::Skeleton3DRetargeted *this)
{
  *this = off_100421F70;
  v2 = (this + 16);
  sub_1002A2E24(&v2);
  PB::Base::~Base(this);
}

{
  *this = off_100421F70;
  v2 = (this + 16);
  sub_1002A2E24(&v2);
  PB::Base::~Base(this);
}

{
  *this = off_100421F70;
  v2 = (this + 16);
  sub_1002A2E24(&v2);
  PB::Base::~Base(this);
  operator delete();
}

uint64_t CMMsl::Skeleton3DRetargeted::Skeleton3DRetargeted(uint64_t this, const CMMsl::Skeleton3DRetargeted *a2)
{
  *this = off_100421F70;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 48) = 0;
  v2 = *(a2 + 2);
  if (v2 != *(a2 + 3))
  {
    v3 = *v2;
    sub_100254A24();
  }

  v4 = *(a2 + 48);
  if ((v4 & 2) != 0)
  {
    v5 = *(a2 + 5);
    *(this + 48) |= 2u;
    *(this + 40) = v5;
    v4 = *(a2 + 48);
  }

  if (v4)
  {
    v6 = *(a2 + 1);
    *(this + 48) |= 1u;
    *(this + 8) = v6;
  }

  return this;
}

uint64_t CMMsl::Skeleton3DRetargeted::operator=(uint64_t a1, const CMMsl::Skeleton3DRetargeted *a2)
{
  if (a1 != a2)
  {
    CMMsl::Skeleton3DRetargeted::Skeleton3DRetargeted(&v9, a2);
    v3 = *(a1 + 48);
    *(a1 + 48) = v14;
    v14 = v3;
    v4 = *(a1 + 16);
    *(a1 + 16) = v11;
    v11 = v4;
    v5 = *(a1 + 32);
    *(a1 + 32) = v12;
    v12 = v5;
    v6 = *(a1 + 40);
    *(a1 + 40) = v13;
    v13 = v6;
    v7 = *(a1 + 8);
    *(a1 + 8) = v10;
    v10 = v7;
    v9 = off_100421F70;
    v15 = &v11;
    sub_1002A2E24(&v15);
    PB::Base::~Base(&v9);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::Skeleton3DRetargeted *a2, CMMsl::Skeleton3DRetargeted *a3)
{
  v3 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v3;
  v4 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v5;
  v6 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v6;
  v7 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v7;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  return result;
}

uint64_t CMMsl::Skeleton3DRetargeted::Skeleton3DRetargeted(uint64_t a1, uint64_t a2)
{
  *a1 = off_100421F70;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  v4 = (a1 + 16);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  sub_1002A2EE4((a1 + 16));
  *v4 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t CMMsl::Skeleton3DRetargeted::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::Skeleton3DRetargeted::Skeleton3DRetargeted(&v9, a2);
    v3 = *(a1 + 48);
    *(a1 + 48) = v14;
    v14 = v3;
    v4 = *(a1 + 16);
    *(a1 + 16) = v11;
    v11 = v4;
    v5 = *(a1 + 32);
    *(a1 + 32) = v12;
    v12 = v5;
    v6 = *(a1 + 40);
    *(a1 + 40) = v13;
    v13 = v6;
    v7 = *(a1 + 8);
    *(a1 + 8) = v10;
    v10 = v7;
    v9 = off_100421F70;
    v15 = &v11;
    sub_1002A2E24(&v15);
    PB::Base::~Base(&v9);
  }

  return a1;
}

uint64_t CMMsl::Skeleton3DRetargeted::formatText(CMMsl::Skeleton3DRetargeted *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 48))
  {
    PB::TextFormatter::format(a2, "globalMachtime", *(this + 1));
  }

  v5 = *(this + 2);
  v6 = *(this + 3);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, a2, "joint");
  }

  if ((*(this + 48) & 2) != 0)
  {
    PB::TextFormatter::format(a2, "localMachtime", *(this + 5));
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::Skeleton3DRetargeted::readFrom(CMMsl::Skeleton3DRetargeted *this, PB::Reader *a2)
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
            goto LABEL_40;
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
        goto LABEL_40;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        break;
      }

      if (v22 == 2)
      {
        *(this + 48) |= 2u;
        v23 = *(a2 + 1);
        if (v23 > 0xFFFFFFFFFFFFFFF7 || v23 + 8 > *(a2 + 2))
        {
          goto LABEL_31;
        }

        *(this + 5) = *(*a2 + v23);
LABEL_35:
        *(a2 + 1) += 8;
        goto LABEL_36;
      }

      if (v22 == 1)
      {
        sub_10025504C();
      }

      if ((PB::Reader::skip(a2, v22, v10 & 7, 0) & 1) == 0)
      {
        v26 = 0;
        return v26 & 1;
      }

LABEL_36:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_40;
      }
    }

    *(this + 48) |= 1u;
    v24 = *(a2 + 1);
    if (v24 > 0xFFFFFFFFFFFFFFF7 || v24 + 8 > *(a2 + 2))
    {
LABEL_31:
      *(a2 + 24) = 1;
      goto LABEL_36;
    }

    *(this + 1) = *(*a2 + v24);
    goto LABEL_35;
  }

LABEL_40:
  v26 = v4 ^ 1;
  return v26 & 1;
}

uint64_t CMMsl::Skeleton3DRetargeted::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 16);
  v5 = *(this + 24);
  while (v4 != v5)
  {
    v6 = *v4++;
    this = PB::Writer::writeSubmessage(a2, v6, 1u);
  }

  v7 = *(v3 + 48);
  if ((v7 & 2) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 40), 2u);
    v7 = *(v3 + 48);
  }

  if (v7)
  {
    v8 = *(v3 + 8);

    return PB::Writer::write(a2, v8, 3u);
  }

  return this;
}

uint64_t CMMsl::Skeleton3DRetargeted::hash_value(CMMsl::Skeleton3DRetargeted *this)
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
      v4 ^= CMMsl::SkeletonJoint::hash_value(v5);
    }

    while (v2 != v3);
  }

  if ((*(this + 48) & 2) != 0)
  {
    v6 = *(this + 5);
    if (v6 == 0.0)
    {
      v6 = 0.0;
    }

    if (*(this + 48))
    {
      goto LABEL_8;
    }

LABEL_14:
    v7 = 0.0;
    return *&v6 ^ v4 ^ *&v7;
  }

  v6 = 0.0;
  if ((*(this + 48) & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v7 = *(this + 1);
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  return *&v6 ^ v4 ^ *&v7;
}

double CMMsl::SkeletonJoint::SkeletonJoint(CMMsl::SkeletonJoint *this)
{
  *this = off_100421FA8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  return result;
}

{
  *this = off_100421FA8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  return result;
}

void CMMsl::SkeletonJoint::~SkeletonJoint(CMMsl::SkeletonJoint *this)
{
  *this = off_100421FA8;
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
  CMMsl::SkeletonJoint::~SkeletonJoint(this);

  operator delete();
}

CMMsl::SkeletonJoint *CMMsl::SkeletonJoint::SkeletonJoint(CMMsl::SkeletonJoint *this, const CMMsl::SkeletonJoint *a2)
{
  *this = off_100421FA8;
  *(this + 8) = 0u;
  v4 = (this + 8);
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  if (*(a2 + 60))
  {
    v5 = *(a2 + 14);
    *(this + 60) = 1;
    *(this + 14) = v5;
  }

  if (this != a2)
  {
    sub_100035D1C(v4, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 2);
    sub_100035D1C(this + 4, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 2);
  }

  return this;
}

uint64_t CMMsl::SkeletonJoint::operator=(uint64_t a1, const CMMsl::SkeletonJoint *a2)
{
  if (a1 != a2)
  {
    CMMsl::SkeletonJoint::SkeletonJoint(&v8, a2);
    v3 = *(a1 + 56);
    *(a1 + 56) = v12;
    v12 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v9;
    v9 = v4;
    v5 = *(a1 + 24);
    *(a1 + 24) = v10;
    v10 = v5;
    v6 = *(a1 + 40);
    *(a1 + 40) = v11;
    v11 = v6;
    CMMsl::SkeletonJoint::~SkeletonJoint(&v8);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::SkeletonJoint *a2, CMMsl::SkeletonJoint *a3)
{
  v3 = *(this + 60);
  *(this + 60) = *(a2 + 15);
  *(a2 + 15) = v3;
  v4 = *(this + 56);
  *(this + 56) = *(a2 + 14);
  *(a2 + 14) = v4;
  v5 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v5;
  v6 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v6;
  v7 = *(this + 24);
  *(this + 24) = *(a2 + 3);
  *(a2 + 3) = v7;
  v8 = *(this + 32);
  *(this + 32) = *(a2 + 4);
  *(a2 + 4) = v8;
  v9 = *(this + 40);
  *(this + 40) = *(a2 + 5);
  *(a2 + 5) = v9;
  v10 = *(this + 48);
  *(this + 48) = *(a2 + 6);
  *(a2 + 6) = v10;
  return this;
}

uint64_t CMMsl::SkeletonJoint::SkeletonJoint(uint64_t a1, uint64_t a2)
{
  *a1 = off_100421FA8;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 60) = *(a2 + 60);
  *(a2 + 60) = 0;
  *(a1 + 56) = *(a2 + 56);
  sub_1002A2DD0(a1 + 8, (a2 + 8));
  sub_1002A2DD0(a1 + 32, (a2 + 32));
  return a1;
}

uint64_t CMMsl::SkeletonJoint::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::SkeletonJoint::SkeletonJoint(&v8, a2);
    v3 = *(a1 + 56);
    *(a1 + 56) = v12;
    v12 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v9;
    v9 = v4;
    v5 = *(a1 + 24);
    *(a1 + 24) = v10;
    v10 = v5;
    v6 = *(a1 + 40);
    *(a1 + 40) = v11;
    v11 = v6;
    CMMsl::SkeletonJoint::~SkeletonJoint(&v8);
  }

  return a1;
}

uint64_t CMMsl::SkeletonJoint::formatText(CMMsl::SkeletonJoint *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 60))
  {
    PB::TextFormatter::format(a2, "joint", *(this + 14));
  }

  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(a2, "position", v7);
  }

  v8 = *(this + 4);
  v9 = *(this + 5);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::TextFormatter::format(a2, "quaternion", v10);
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::SkeletonJoint::readFrom(CMMsl::SkeletonJoint *this, PB::Reader *a2)
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
        goto LABEL_122;
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
        goto LABEL_122;
      }

      v23 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        break;
      }

      if (v23 == 2)
      {
        if (v22 != 2)
        {
          v66 = *(this + 2);
          v65 = *(this + 3);
          if (v66 >= v65)
          {
            v76 = *(this + 1);
            v77 = v66 - v76;
            v78 = (v66 - v76) >> 2;
            v79 = v78 + 1;
            if ((v78 + 1) >> 62)
            {
              goto LABEL_125;
            }

            v80 = v65 - v76;
            if (v80 >> 1 > v79)
            {
              v79 = v80 >> 1;
            }

            if (v80 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v81 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v81 = v79;
            }

            if (v81)
            {
              sub_10002290C(this + 8, v81);
            }

            v88 = (v66 - v76) >> 2;
            v89 = (4 * v78);
            v90 = (4 * v78 - 4 * v88);
            *v89 = 0;
            v67 = v89 + 1;
            memcpy(v90, v76, v77);
            v91 = *(this + 1);
            *(this + 1) = v90;
            *(this + 2) = v67;
            *(this + 3) = 0;
            if (v91)
            {
              operator delete(v91);
            }
          }

          else
          {
            *v66 = 0;
            v67 = v66 + 4;
          }

          *(this + 2) = v67;
LABEL_114:
          v96 = *(a2 + 1);
          if (v96 <= 0xFFFFFFFFFFFFFFFBLL && v96 + 4 <= *(a2 + 2))
          {
            *(v67 - 1) = *(*a2 + v96);
            *(a2 + 1) += 4;
          }

          else
          {
            *(a2 + 24) = 1;
          }

          goto LABEL_118;
        }

        if (PB::Reader::placeMark())
        {
          goto LABEL_124;
        }

        v33 = *(a2 + 1);
        v34 = *(a2 + 2);
        while (v33 < v34 && (*(a2 + 24) & 1) == 0)
        {
          v36 = *(this + 2);
          v35 = *(this + 3);
          if (v36 >= v35)
          {
            v38 = *(this + 1);
            v39 = v36 - v38;
            v40 = (v36 - v38) >> 2;
            v41 = v40 + 1;
            if ((v40 + 1) >> 62)
            {
              goto LABEL_125;
            }

            v42 = v35 - v38;
            if (v42 >> 1 > v41)
            {
              v41 = v42 >> 1;
            }

            if (v42 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v43 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v43 = v41;
            }

            if (v43)
            {
              sub_10002290C(this + 8, v43);
            }

            v44 = (v36 - v38) >> 2;
            v45 = (4 * v40);
            v46 = (4 * v40 - 4 * v44);
            *v45 = 0;
            v37 = v45 + 1;
            memcpy(v46, v38, v39);
            v47 = *(this + 1);
            *(this + 1) = v46;
            *(this + 2) = v37;
            *(this + 3) = 0;
            if (v47)
            {
              operator delete(v47);
            }
          }

          else
          {
            *v36 = 0;
            v37 = v36 + 4;
          }

          *(this + 2) = v37;
          v48 = *(a2 + 1);
          if (v48 > 0xFFFFFFFFFFFFFFFBLL || v48 + 4 > *(a2 + 2))
          {
            goto LABEL_86;
          }

          *(v37 - 1) = *(*a2 + v48);
          v34 = *(a2 + 2);
          v33 = *(a2 + 1) + 4;
          *(a2 + 1) = v33;
        }

LABEL_87:
        PB::Reader::recallMark();
        goto LABEL_118;
      }

      if (v23 == 1)
      {
        *(this + 60) |= 1u;
        v25 = *(a2 + 1);
        v24 = *(a2 + 2);
        v26 = *a2;
        if (v25 > 0xFFFFFFFFFFFFFFF5 || v25 + 10 > v24)
        {
          v68 = 0;
          v69 = 0;
          v29 = 0;
          v17 = v24 >= v25;
          v70 = v24 - v25;
          if (!v17)
          {
            v70 = 0;
          }

          v71 = (v26 + v25);
          v72 = v25 + 1;
          while (1)
          {
            if (!v70)
            {
              LODWORD(v29) = 0;
              *(a2 + 24) = 1;
              goto LABEL_107;
            }

            v73 = *v71;
            *(a2 + 1) = v72;
            v29 |= (v73 & 0x7F) << v68;
            if ((v73 & 0x80) == 0)
            {
              break;
            }

            v68 += 7;
            --v70;
            ++v71;
            ++v72;
            v14 = v69++ > 8;
            if (v14)
            {
LABEL_83:
              LODWORD(v29) = 0;
              goto LABEL_107;
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
              goto LABEL_83;
            }
          }
        }

LABEL_107:
        *(this + 14) = v29;
      }

      else if ((PB::Reader::skip(a2, v23, v22, 0) & 1) == 0)
      {
LABEL_124:
        v97 = 0;
        return v97 & 1;
      }

LABEL_118:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_122;
      }
    }

    if (v22 != 2)
    {
      v75 = *(this + 5);
      v74 = *(this + 6);
      if (v75 >= v74)
      {
        v82 = *(this + 4);
        v83 = v75 - v82;
        v84 = (v75 - v82) >> 2;
        v85 = v84 + 1;
        if ((v84 + 1) >> 62)
        {
LABEL_125:
          sub_10000CD24();
        }

        v86 = v74 - v82;
        if (v86 >> 1 > v85)
        {
          v85 = v86 >> 1;
        }

        if (v86 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v87 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v87 = v85;
        }

        if (v87)
        {
          sub_10002290C(this + 32, v87);
        }

        v92 = (v75 - v82) >> 2;
        v93 = (4 * v84);
        v94 = (4 * v84 - 4 * v92);
        *v93 = 0;
        v67 = v93 + 1;
        memcpy(v94, v82, v83);
        v95 = *(this + 4);
        *(this + 4) = v94;
        *(this + 5) = v67;
        *(this + 6) = 0;
        if (v95)
        {
          operator delete(v95);
        }
      }

      else
      {
        *v75 = 0;
        v67 = v75 + 4;
      }

      *(this + 5) = v67;
      goto LABEL_114;
    }

    if (PB::Reader::placeMark())
    {
      goto LABEL_124;
    }

    v49 = *(a2 + 1);
    v50 = *(a2 + 2);
    while (v49 < v50 && (*(a2 + 24) & 1) == 0)
    {
      v52 = *(this + 5);
      v51 = *(this + 6);
      if (v52 >= v51)
      {
        v54 = *(this + 4);
        v55 = v52 - v54;
        v56 = (v52 - v54) >> 2;
        v57 = v56 + 1;
        if ((v56 + 1) >> 62)
        {
          goto LABEL_125;
        }

        v58 = v51 - v54;
        if (v58 >> 1 > v57)
        {
          v57 = v58 >> 1;
        }

        if (v58 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v59 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v59 = v57;
        }

        if (v59)
        {
          sub_10002290C(this + 32, v59);
        }

        v60 = (v52 - v54) >> 2;
        v61 = (4 * v56);
        v62 = (4 * v56 - 4 * v60);
        *v61 = 0;
        v53 = v61 + 1;
        memcpy(v62, v54, v55);
        v63 = *(this + 4);
        *(this + 4) = v62;
        *(this + 5) = v53;
        *(this + 6) = 0;
        if (v63)
        {
          operator delete(v63);
        }
      }

      else
      {
        *v52 = 0;
        v53 = v52 + 4;
      }

      *(this + 5) = v53;
      v64 = *(a2 + 1);
      if (v64 > 0xFFFFFFFFFFFFFFFBLL || v64 + 4 > *(a2 + 2))
      {
LABEL_86:
        *(a2 + 24) = 1;
        goto LABEL_87;
      }

      *(v53 - 1) = *(*a2 + v64);
      v50 = *(a2 + 2);
      v49 = *(a2 + 1) + 4;
      *(a2 + 1) = v49;
    }

    goto LABEL_87;
  }

LABEL_122:
  v97 = v4 ^ 1;
  return v97 & 1;
}

uint64_t CMMsl::SkeletonJoint::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if (*(this + 60))
  {
    this = PB::Writer::writeVarInt(a2, *(this + 56), 1u);
  }

  v4 = v3[1];
  v5 = v3[2];
  while (v4 != v5)
  {
    v6 = *v4++;
    this = PB::Writer::write(a2, v6, 2u);
  }

  v8 = v3[4];
  v7 = v3[5];
  while (v8 != v7)
  {
    v9 = *v8++;
    this = PB::Writer::write(a2, v9, 3u);
  }

  return this;
}

BOOL CMMsl::SkeletonJoint::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 60);
  if (*(a1 + 60))
  {
    if ((*(a2 + 60) & 1) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if (*(a2 + 60))
  {
    return 0;
  }

  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = *(a2 + 8);
  if (v3 - v4 != *(a2 + 16) - v5)
  {
    return 0;
  }

  while (v4 != v3)
  {
    if (*v4 != *v5)
    {
      return 0;
    }

    ++v4;
    ++v5;
  }

  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(a2 + 32);
  if (v6 - v7 != *(a2 + 40) - v8)
  {
    return 0;
  }

  if (v7 == v6)
  {
    return 1;
  }

  v9 = v7 + 4;
  do
  {
    v10 = *v8++;
    result = *(v9 - 4) == v10;
    v12 = *(v9 - 4) != v10 || v9 == v6;
    v9 += 4;
  }

  while (!v12);
  return result;
}

uint64_t CMMsl::SkeletonJoint::hash_value(CMMsl::SkeletonJoint *this)
{
  if (*(this + 60))
  {
    v2 = *(this + 14);
  }

  else
  {
    v2 = 0;
  }

  v3 = *(this + 1);
  v4 = *(this + 2);
  v5 = PBHashBytes() ^ v2;
  v6 = *(this + 4);
  v7 = *(this + 5);
  return v5 ^ PBHashBytes();
}

void CMMsl::SoundPressureLevel::~SoundPressureLevel(CMMsl::SoundPressureLevel *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::SoundPressureLevel::SoundPressureLevel(uint64_t this, const CMMsl::SoundPressureLevel *a2)
{
  *this = off_100421FE0;
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

uint64_t CMMsl::SoundPressureLevel::operator=(uint64_t a1, const CMMsl::SoundPressureLevel *a2)
{
  if (a1 != a2)
  {
    CMMsl::SoundPressureLevel::SoundPressureLevel(v7, a2);
    v3 = *(a1 + 20);
    *(a1 + 20) = v10;
    v10 = v3;
    v4 = *(a1 + 16);
    *(a1 + 16) = v9;
    v9 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v5;
    PB::Base::~Base(v7);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::SoundPressureLevel *a2, CMMsl::SoundPressureLevel *a3)
{
  v3 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v3;
  result = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = result;
  v5 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v5;
  return result;
}

float CMMsl::SoundPressureLevel::SoundPressureLevel(uint64_t a1, uint64_t a2)
{
  *a1 = off_100421FE0;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  result = *(a2 + 16);
  *(a1 + 16) = result;
  *(a1 + 8) = *(a2 + 8);
  return result;
}

{
  *a1 = off_100421FE0;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  result = *(a2 + 16);
  *(a1 + 16) = result;
  *(a1 + 8) = *(a2 + 8);
  return result;
}

uint64_t CMMsl::SoundPressureLevel::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 20);
    *(a2 + 20) = 0;
    v4 = *(a2 + 16);
    v5 = *(a2 + 8);
    v6 = *(a1 + 20);
    *(a1 + 20) = v3;
    v12 = v6;
    v7 = *(a1 + 16);
    *(a1 + 16) = v4;
    v11 = v7;
    v8 = *(a1 + 8);
    *(a1 + 8) = v5;
    v10[0] = off_100421FE0;
    v10[1] = v8;
    PB::Base::~Base(v10);
  }

  return a1;
}

uint64_t CMMsl::SoundPressureLevel::formatText(CMMsl::SoundPressureLevel *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 20);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "rms", *(this + 4));
    v5 = *(this + 20);
  }

  if (v5)
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::SoundPressureLevel::readFrom(CMMsl::SoundPressureLevel *this, PB::Reader *a2)
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
              v27 = 0;
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
              v27 = 0;
              goto LABEL_48;
            }
          }

          if (*(a2 + 24))
          {
            v27 = 0;
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
              v27 = 0;
              break;
            }
          }
        }

LABEL_49:
        *(this + 1) = v27;
      }

      else if (v22 == 1)
      {
        *(this + 20) |= 2u;
        v2 = *(a2 + 1);
        if (v2 <= 0xFFFFFFFFFFFFFFFBLL && v2 + 4 <= *(a2 + 2))
        {
          *(this + 4) = *(*a2 + v2);
          v2 = *(a2 + 1) + 4;
          *(a2 + 1) = v2;
        }

        else
        {
          *(a2 + 24) = 1;
        }
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

uint64_t CMMsl::SoundPressureLevel::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 20);
  if ((v4 & 2) != 0)
  {
    this = PB::Writer::write(a2, *(this + 16), 1u);
    v4 = *(v3 + 20);
  }

  if (v4)
  {
    v5 = *(v3 + 8);

    return PB::Writer::writeVarInt(a2, v5, 2u);
  }

  return this;
}

uint64_t CMMsl::SoundPressureLevel::hash_value(CMMsl::SoundPressureLevel *this)
{
  if ((*(this + 20) & 2) != 0)
  {
    v3 = *(this + 4);
    v1 = LODWORD(v3);
    if (v3 == 0.0)
    {
      v1 = 0;
    }

    if (*(this + 20))
    {
      goto LABEL_3;
    }

LABEL_7:
    v2 = 0;
    return v2 ^ v1;
  }

  v1 = 0;
  if ((*(this + 20) & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  v2 = *(this + 1);
  return v2 ^ v1;
}

void CMMsl::SpatialEvent::~SpatialEvent(CMMsl::SpatialEvent *this)
{
  PB::Base::~Base(this);

  operator delete();
}

double CMMsl::SpatialEvent::SpatialEvent(CMMsl::SpatialEvent *this, const CMMsl::SpatialEvent *a2)
{
  *this = off_100422018;
  *(this + 2) = 0;
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

const CMMsl::SpatialEvent *CMMsl::SpatialEvent::operator=(const CMMsl::SpatialEvent *a1, const CMMsl::SpatialEvent *a2)
{
  if (a1 != a2)
  {
    CMMsl::SpatialEvent::SpatialEvent(v7, a2);
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

double CMMsl::swap(CMMsl *this, CMMsl::SpatialEvent *a2, CMMsl::SpatialEvent *a3)
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

double CMMsl::SpatialEvent::SpatialEvent(uint64_t a1, uint64_t a2)
{
  *a1 = off_100422018;
  *(a1 + 16) = 0;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

{
  *a1 = off_100422018;
  *(a1 + 16) = 0;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

uint64_t CMMsl::SpatialEvent::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v8[0] = off_100422018;
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

uint64_t CMMsl::SpatialEvent::formatText(CMMsl::SpatialEvent *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 20);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "event", *(this + 4));
    v5 = *(this + 20);
  }

  if (v5)
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::SpatialEvent::readFrom(CMMsl::SpatialEvent *this, PB::Reader *a2)
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

uint64_t CMMsl::SpatialEvent::writeTo(uint64_t this, PB::Writer *a2)
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

uint64_t CMMsl::SpatialEvent::hash_value(CMMsl::SpatialEvent *this)
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

void CMMsl::SteadinessEvent::~SteadinessEvent(CMMsl::SteadinessEvent *this)
{
  PB::Base::~Base(this);

  operator delete();
}

double CMMsl::SteadinessEvent::SteadinessEvent(CMMsl::SteadinessEvent *this, const CMMsl::SteadinessEvent *a2)
{
  *this = off_100422050;
  *(this + 15) = 0;
  v2 = *(a2 + 30);
  if ((v2 & 8) != 0)
  {
    result = *(a2 + 4);
    v3 = 8;
    *(this + 30) = 8;
    *(this + 4) = result;
    v2 = *(a2 + 30);
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
    v5 = *(a2 + 12);
    v3 |= 0x20u;
    *(this + 30) = v3;
    *(this + 12) = v5;
    v2 = *(a2 + 30);
  }

LABEL_6:
  if ((v2 & 0x200) != 0)
  {
    v6 = *(a2 + 55);
    v3 |= 0x200u;
    *(this + 30) = v3;
    *(this + 55) = v6;
    v2 = *(a2 + 30);
    if ((v2 & 0x400) == 0)
    {
LABEL_8:
      if ((v2 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_18;
    }
  }

  else if ((v2 & 0x400) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 56);
  v3 |= 0x400u;
  *(this + 30) = v3;
  *(this + 56) = v7;
  v2 = *(a2 + 30);
  if ((v2 & 0x40) == 0)
  {
LABEL_9:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  v8 = *(a2 + 52);
  v3 |= 0x40u;
  *(this + 30) = v3;
  *(this + 52) = v8;
  v2 = *(a2 + 30);
  if ((v2 & 0x80) == 0)
  {
LABEL_10:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

LABEL_19:
  v9 = *(a2 + 53);
  v3 |= 0x80u;
  *(this + 30) = v3;
  *(this + 53) = v9;
  v2 = *(a2 + 30);
  if ((v2 & 0x100) == 0)
  {
LABEL_11:
    if ((v2 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

LABEL_20:
  v10 = *(a2 + 54);
  v3 |= 0x100u;
  *(this + 30) = v3;
  *(this + 54) = v10;
  v2 = *(a2 + 30);
  if ((v2 & 2) == 0)
  {
LABEL_12:
    if ((v2 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = *(a2 + 2);
  v3 |= 2u;
  *(this + 30) = v3;
  *(this + 2) = result;
  v2 = *(a2 + 30);
  if ((v2 & 1) == 0)
  {
LABEL_13:
    if ((v2 & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = *(a2 + 1);
  v3 |= 1u;
  *(this + 30) = v3;
  *(this + 1) = result;
  v2 = *(a2 + 30);
  if ((v2 & 4) == 0)
  {
LABEL_14:
    if ((v2 & 0x10) == 0)
    {
      return result;
    }

LABEL_24:
    result = *(a2 + 5);
    *(this + 30) = v3 | 0x10;
    *(this + 5) = result;
    return result;
  }

LABEL_23:
  result = *(a2 + 3);
  v3 |= 4u;
  *(this + 30) = v3;
  *(this + 3) = result;
  if ((*(a2 + 30) & 0x10) != 0)
  {
    goto LABEL_24;
  }

  return result;
}

CMMsl *CMMsl::SteadinessEvent::operator=(CMMsl *a1, const CMMsl::SteadinessEvent *a2)
{
  if (a1 != a2)
  {
    CMMsl::SteadinessEvent::SteadinessEvent(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::SteadinessEvent *a2, CMMsl::SteadinessEvent *a3)
{
  v3 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v3;
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v5;
  LOBYTE(v5) = *(this + 55);
  *(this + 55) = *(a2 + 55);
  *(a2 + 55) = v5;
  LOBYTE(v5) = *(this + 56);
  *(this + 56) = *(a2 + 56);
  *(a2 + 56) = v5;
  LOBYTE(v5) = *(this + 52);
  *(this + 52) = *(a2 + 52);
  *(a2 + 52) = v5;
  LOBYTE(v5) = *(this + 53);
  *(this + 53) = *(a2 + 53);
  *(a2 + 53) = v5;
  LOBYTE(v5) = *(this + 54);
  *(this + 54) = *(a2 + 54);
  *(a2 + 54) = v5;
  v6 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v6;
  v7 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v7;
  v8 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v8;
  result = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = result;
  return result;
}

double CMMsl::SteadinessEvent::SteadinessEvent(uint64_t a1, uint64_t a2)
{
  *a1 = off_100422050;
  *(a1 + 60) = *(a2 + 60);
  *(a2 + 60) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 55) = *(a2 + 55);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 53) = *(a2 + 53);
  *(a1 + 54) = *(a2 + 54);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

CMMsl *CMMsl::SteadinessEvent::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::SteadinessEvent::SteadinessEvent(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::SteadinessEvent::formatText(CMMsl::SteadinessEvent *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 30);
  if ((v5 & 0x40) != 0)
  {
    PB::TextFormatter::format(a2, "isBlockoutPeriodLow", *(this + 52));
    v5 = *(this + 30);
    if ((v5 & 0x80) == 0)
    {
LABEL_3:
      if ((v5 & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v5 & 0x80) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "isBlockoutPeriodVeryLow", *(this + 53));
  v5 = *(this + 30);
  if ((v5 & 0x100) == 0)
  {
LABEL_4:
    if ((v5 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  PB::TextFormatter::format(a2, "isSampleRecent", *(this + 54));
  v5 = *(this + 30);
  if ((v5 & 1) == 0)
  {
LABEL_5:
    if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  PB::TextFormatter::format(a2, "percentLow", *(this + 1));
  v5 = *(this + 30);
  if ((v5 & 2) == 0)
  {
LABEL_6:
    if ((v5 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(a2, "percentOK", *(this + 2));
  v5 = *(this + 30);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(a2, "percentVeryLow", *(this + 3));
  v5 = *(this + 30);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(a2, "startTime", *(this + 4));
  v5 = *(this + 30);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(a2, "totalValidDuration", *(this + 5));
  v5 = *(this + 30);
  if ((v5 & 0x200) == 0)
  {
LABEL_10:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(a2, "userHasOnboarded", *(this + 55));
  v5 = *(this + 30);
  if ((v5 & 0x20) == 0)
  {
LABEL_11:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_25:
  PB::TextFormatter::format(a2, "value", *(this + 12));
  if ((*(this + 30) & 0x400) != 0)
  {
LABEL_12:
    PB::TextFormatter::format(a2, "writtenToHealthKit", *(this + 56));
  }

LABEL_13:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::SteadinessEvent::readFrom(CMMsl::SteadinessEvent *this, PB::Reader *a2)
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
            goto LABEL_99;
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
      if ((v10 >> 3) <= 5)
      {
        if (v22 <= 2)
        {
          if (v22 == 1)
          {
            *(this + 30) |= 8u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
LABEL_67:
              *(a2 + 24) = 1;
              goto LABEL_95;
            }

            *(this + 4) = *(*a2 + v2);
            goto LABEL_89;
          }

          if (v22 == 2)
          {
            *(this + 30) |= 0x20u;
            v25 = *(a2 + 1);
            v2 = *(a2 + 2);
            v26 = *a2;
            if (v25 > 0xFFFFFFFFFFFFFFF5 || v25 + 10 > v2)
            {
              v41 = 0;
              v42 = 0;
              v29 = 0;
              if (v2 <= v25)
              {
                v2 = *(a2 + 1);
              }

              v43 = v2 - v25;
              v44 = (v26 + v25);
              v45 = v25 + 1;
              while (1)
              {
                if (!v43)
                {
                  LODWORD(v29) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_94;
                }

                v46 = v45;
                v47 = *v44;
                *(a2 + 1) = v46;
                v29 |= (v47 & 0x7F) << v41;
                if ((v47 & 0x80) == 0)
                {
                  break;
                }

                v41 += 7;
                --v43;
                ++v44;
                v45 = v46 + 1;
                v14 = v42++ > 8;
                if (v14)
                {
                  LODWORD(v29) = 0;
                  goto LABEL_93;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v29) = 0;
              }

LABEL_93:
              v2 = v46;
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
                v2 = v31;
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
                  LODWORD(v29) = 0;
                  break;
                }
              }
            }

LABEL_94:
            *(this + 12) = v29;
            goto LABEL_95;
          }
        }

        else
        {
          switch(v22)
          {
            case 3:
              *(this + 30) |= 0x200u;
              v2 = *(a2 + 1);
              if (v2 >= *(a2 + 2))
              {
                v38 = 0;
                *(a2 + 24) = 1;
              }

              else
              {
                v37 = *(*a2 + v2++);
                *(a2 + 1) = v2;
                v38 = v37 != 0;
              }

              *(this + 55) = v38;
              goto LABEL_95;
            case 4:
              *(this + 30) |= 0x400u;
              v2 = *(a2 + 1);
              if (v2 >= *(a2 + 2))
              {
                v34 = 0;
                *(a2 + 24) = 1;
              }

              else
              {
                v33 = *(*a2 + v2++);
                *(a2 + 1) = v2;
                v34 = v33 != 0;
              }

              *(this + 56) = v34;
              goto LABEL_95;
            case 5:
              *(this + 30) |= 0x40u;
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

              *(this + 52) = v24;
              goto LABEL_95;
          }
        }
      }

      else if (v22 > 8)
      {
        switch(v22)
        {
          case 9:
            *(this + 30) |= 1u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
              goto LABEL_67;
            }

            *(this + 1) = *(*a2 + v2);
            goto LABEL_89;
          case 0xA:
            *(this + 30) |= 4u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
              goto LABEL_67;
            }

            *(this + 3) = *(*a2 + v2);
            goto LABEL_89;
          case 0xB:
            *(this + 30) |= 0x10u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
              goto LABEL_67;
            }

            *(this + 5) = *(*a2 + v2);
            goto LABEL_89;
        }
      }

      else
      {
        switch(v22)
        {
          case 6:
            *(this + 30) |= 0x80u;
            v2 = *(a2 + 1);
            if (v2 >= *(a2 + 2))
            {
              v40 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v39 = *(*a2 + v2++);
              *(a2 + 1) = v2;
              v40 = v39 != 0;
            }

            *(this + 53) = v40;
            goto LABEL_95;
          case 7:
            *(this + 30) |= 0x100u;
            v2 = *(a2 + 1);
            if (v2 >= *(a2 + 2))
            {
              v36 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v35 = *(*a2 + v2++);
              *(a2 + 1) = v2;
              v36 = v35 != 0;
            }

            *(this + 54) = v36;
            goto LABEL_95;
          case 8:
            *(this + 30) |= 2u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
              goto LABEL_67;
            }

            *(this + 2) = *(*a2 + v2);
LABEL_89:
            v2 = *(a2 + 1) + 8;
            *(a2 + 1) = v2;
            goto LABEL_95;
        }
      }

      if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
      {
        v48 = 0;
        return v48 & 1;
      }

      v2 = *(a2 + 1);
LABEL_95:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_99:
  v48 = v4 ^ 1;
  return v48 & 1;
}

uint64_t CMMsl::SteadinessEvent::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 60);
  if ((v4 & 8) != 0)
  {
    this = PB::Writer::write(a2, *(this + 32), 1u);
    v4 = *(v3 + 60);
    if ((v4 & 0x20) == 0)
    {
LABEL_3:
      if ((v4 & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((v4 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::writeVarInt(a2, *(v3 + 48), 2u);
  v4 = *(v3 + 60);
  if ((v4 & 0x200) == 0)
  {
LABEL_4:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  this = PB::Writer::write(a2, *(v3 + 55), 3u);
  v4 = *(v3 + 60);
  if ((v4 & 0x400) == 0)
  {
LABEL_5:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = PB::Writer::write(a2, *(v3 + 56), 4u);
  v4 = *(v3 + 60);
  if ((v4 & 0x40) == 0)
  {
LABEL_6:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = PB::Writer::write(a2, *(v3 + 52), 5u);
  v4 = *(v3 + 60);
  if ((v4 & 0x80) == 0)
  {
LABEL_7:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = PB::Writer::write(a2, *(v3 + 53), 6u);
  v4 = *(v3 + 60);
  if ((v4 & 0x100) == 0)
  {
LABEL_8:
    if ((v4 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = PB::Writer::write(a2, *(v3 + 54), 7u);
  v4 = *(v3 + 60);
  if ((v4 & 2) == 0)
  {
LABEL_9:
    if ((v4 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = PB::Writer::write(a2, *(v3 + 16), 8u);
  v4 = *(v3 + 60);
  if ((v4 & 1) == 0)
  {
LABEL_10:
    if ((v4 & 4) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    this = PB::Writer::write(a2, *(v3 + 24), 0xAu);
    if ((*(v3 + 60) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_23;
  }

LABEL_21:
  this = PB::Writer::write(a2, *(v3 + 8), 9u);
  v4 = *(v3 + 60);
  if ((v4 & 4) != 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  if ((v4 & 0x10) == 0)
  {
    return this;
  }

LABEL_23:
  v5 = *(v3 + 40);

  return PB::Writer::write(a2, v5, 0xBu);
}

uint64_t CMMsl::SteadinessEvent::hash_value(CMMsl::SteadinessEvent *this)
{
  v1 = *(this + 30);
  if ((v1 & 8) != 0)
  {
    v2 = *(this + 4);
    if (v2 == 0.0)
    {
      v2 = 0.0;
    }

    if ((v1 & 0x20) != 0)
    {
LABEL_3:
      v3 = *(this + 12);
      if ((*(this + 30) & 0x200) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  else
  {
    v2 = 0.0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*(this + 30) & 0x200) != 0)
  {
LABEL_4:
    v4 = *(this + 55);
    if ((*(this + 30) & 0x400) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_25:
  v4 = 0;
  if ((*(this + 30) & 0x400) != 0)
  {
LABEL_5:
    v5 = *(this + 56);
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_26:
  v5 = 0;
  if ((v1 & 0x40) != 0)
  {
LABEL_6:
    v6 = *(this + 52);
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

LABEL_27:
  v6 = 0;
  if ((v1 & 0x80) != 0)
  {
LABEL_7:
    v7 = *(this + 53);
    if ((*(this + 30) & 0x100) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_28:
  v7 = 0;
  if ((*(this + 30) & 0x100) != 0)
  {
LABEL_8:
    v8 = *(this + 54);
    if ((v1 & 2) != 0)
    {
      goto LABEL_9;
    }

LABEL_30:
    v9 = 0.0;
    if (v1)
    {
      goto LABEL_12;
    }

LABEL_31:
    v10 = 0.0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_29:
  v8 = 0;
  if ((v1 & 2) == 0)
  {
    goto LABEL_30;
  }

LABEL_9:
  v9 = *(this + 2);
  if (v9 == 0.0)
  {
    v9 = 0.0;
  }

  if ((v1 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_12:
  v10 = *(this + 1);
  if (v10 == 0.0)
  {
    v10 = 0.0;
  }

  if ((v1 & 4) != 0)
  {
LABEL_15:
    v11 = *(this + 3);
    if (v11 == 0.0)
    {
      v11 = 0.0;
    }

    if ((v1 & 0x10) != 0)
    {
      goto LABEL_18;
    }

LABEL_33:
    v12 = 0.0;
    return v3 ^ *&v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ *&v9 ^ *&v10 ^ *&v11 ^ *&v12;
  }

LABEL_32:
  v11 = 0.0;
  if ((v1 & 0x10) == 0)
  {
    goto LABEL_33;
  }

LABEL_18:
  v12 = *(this + 5);
  if (v12 == 0.0)
  {
    v12 = 0.0;
  }

  return v3 ^ *&v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ *&v9 ^ *&v10 ^ *&v11 ^ *&v12;
}

void CMMsl::SteadinessModelBalanceFeatures::~SteadinessModelBalanceFeatures(CMMsl::SteadinessModelBalanceFeatures *this)
{
  PB::Base::~Base(this);

  operator delete();
}

double CMMsl::SteadinessModelBalanceFeatures::SteadinessModelBalanceFeatures(CMMsl::SteadinessModelBalanceFeatures *this, const CMMsl::SteadinessModelBalanceFeatures *a2)
{
  *this = off_100422088;
  *(this + 10) = 0;
  v2 = *(a2 + 40);
  if ((v2 & 2) != 0)
  {
    result = *(a2 + 2);
    v3 = 2;
    *(this + 40) = 2;
    *(this + 2) = result;
    v2 = *(a2 + 40);
    if ((v2 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if (*(a2 + 40))
  {
LABEL_5:
    result = *(a2 + 1);
    v3 |= 1u;
    *(this + 40) = v3;
    *(this + 1) = result;
    v2 = *(a2 + 40);
  }

LABEL_6:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      return result;
    }

LABEL_10:
    result = *(a2 + 4);
    *(this + 40) = v3 | 8;
    *(this + 4) = result;
    return result;
  }

  result = *(a2 + 3);
  v3 |= 4u;
  *(this + 40) = v3;
  *(this + 3) = result;
  if ((*(a2 + 40) & 8) != 0)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t CMMsl::SteadinessModelBalanceFeatures::operator=(uint64_t a1, const CMMsl::SteadinessModelBalanceFeatures *a2)
{
  if (a1 != a2)
  {
    CMMsl::SteadinessModelBalanceFeatures::SteadinessModelBalanceFeatures(&v7, a2);
    v3 = *(a1 + 40);
    *(a1 + 40) = v10;
    v10 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v4;
    v5 = *(a1 + 24);
    *(a1 + 24) = v9;
    v9 = v5;
    PB::Base::~Base(&v7);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::SteadinessModelBalanceFeatures *a2, CMMsl::SteadinessModelBalanceFeatures *a3)
{
  v3 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v3;
  v4 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  result = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = result;
  return result;
}

double CMMsl::SteadinessModelBalanceFeatures::SteadinessModelBalanceFeatures(uint64_t a1, uint64_t a2)
{
  *a1 = off_100422088;
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

{
  *a1 = off_100422088;
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

uint64_t CMMsl::SteadinessModelBalanceFeatures::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v8 = off_100422088;
    v3 = *(a2 + 40);
    *(a2 + 40) = 0;
    v11 = *(a1 + 40);
    v4 = *(a2 + 8);
    v9 = *(a1 + 8);
    v5 = *(a1 + 24);
    v6 = *(a2 + 24);
    *(a1 + 40) = v3;
    *(a1 + 8) = v4;
    *(a1 + 24) = v6;
    v10 = v5;
    PB::Base::~Base(&v8);
  }

  return a1;
}

uint64_t CMMsl::SteadinessModelBalanceFeatures::formatText(CMMsl::SteadinessModelBalanceFeatures *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 40);
  if (v5)
  {
    PB::TextFormatter::format(a2, "intermediateBoutsAsymmetryPercentageCv", *(this + 1));
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

  PB::TextFormatter::format(a2, "intermediateBoutsAsymmetryPercentageMedian", *(this + 2));
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
  PB::TextFormatter::format(a2, "intermediateBoutsDoubleSupportPercentageMedian", *(this + 3));
  if ((*(this + 40) & 8) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(a2, "intermediateBoutsDoubleSupportPercentageStd", *(this + 4));
  }

LABEL_6:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::SteadinessModelBalanceFeatures::readFrom(CMMsl::SteadinessModelBalanceFeatures *this, PB::Reader *a2)
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
            goto LABEL_47;
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
          *(this + 40) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
LABEL_40:
            *(a2 + 24) = 1;
            goto LABEL_43;
          }

          *(this + 3) = *(*a2 + v2);
          goto LABEL_42;
        }

        if (v22 == 4)
        {
          *(this + 40) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_40;
          }

          *(this + 4) = *(*a2 + v2);
          goto LABEL_42;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(this + 40) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_40;
          }

          *(this + 2) = *(*a2 + v2);
          goto LABEL_42;
        }

        if (v22 == 2)
        {
          *(this + 40) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_40;
          }

          *(this + 1) = *(*a2 + v2);
LABEL_42:
          v2 = *(a2 + 1) + 8;
          *(a2 + 1) = v2;
          goto LABEL_43;
        }
      }

      if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(a2 + 1);
LABEL_43:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_47:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t CMMsl::SteadinessModelBalanceFeatures::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 40);
  if ((v4 & 2) != 0)
  {
    this = PB::Writer::write(a2, *(this + 16), 1u);
    v4 = *(v3 + 40);
    if ((v4 & 1) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = PB::Writer::write(a2, *(v3 + 24), 3u);
      if ((*(v3 + 40) & 8) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 40) & 1) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 8), 2u);
  v4 = *(v3 + 40);
  if ((v4 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v4 & 8) == 0)
  {
    return this;
  }

LABEL_9:
  v5 = *(v3 + 32);

  return PB::Writer::write(a2, v5, 4u);
}

uint64_t CMMsl::SteadinessModelBalanceFeatures::hash_value(CMMsl::SteadinessModelBalanceFeatures *this)
{
  if ((*(this + 40) & 2) == 0)
  {
    v1 = 0.0;
    if (*(this + 40))
    {
      goto LABEL_3;
    }

LABEL_15:
    v2 = 0.0;
    if ((*(this + 40) & 4) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

  v1 = *(this + 2);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  if ((*(this + 40) & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_3:
  v2 = *(this + 1);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((*(this + 40) & 4) != 0)
  {
LABEL_6:
    v3 = *(this + 3);
    if (v3 == 0.0)
    {
      v3 = 0.0;
    }

    if ((*(this + 40) & 8) != 0)
    {
      goto LABEL_9;
    }

LABEL_17:
    v4 = 0.0;
    return *&v2 ^ *&v1 ^ *&v3 ^ *&v4;
  }

LABEL_16:
  v3 = 0.0;
  if ((*(this + 40) & 8) == 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  v4 = *(this + 4);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  return *&v2 ^ *&v1 ^ *&v3 ^ *&v4;
}

void CMMsl::SteadinessModelContinuousWalkingFeatures::~SteadinessModelContinuousWalkingFeatures(CMMsl::SteadinessModelContinuousWalkingFeatures *this)
{
  PB::Base::~Base(this);

  operator delete();
}

double CMMsl::SteadinessModelContinuousWalkingFeatures::SteadinessModelContinuousWalkingFeatures(CMMsl::SteadinessModelContinuousWalkingFeatures *this, const CMMsl::SteadinessModelContinuousWalkingFeatures *a2)
{
  *this = off_1004220C0;
  *(this + 44) = 0;
  v2 = *(a2 + 44);
  if (v2)
  {
    result = *(a2 + 1);
    v3 = 1;
    *(this + 44) = 1;
    *(this + 1) = result;
    v2 = *(a2 + 44);
    if ((v2 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_5:
    result = *(a2 + 2);
    v3 |= 2u;
    *(this + 44) = v3;
    *(this + 2) = result;
    v2 = *(a2 + 44);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    result = *(a2 + 3);
    v3 |= 4u;
    *(this + 44) = v3;
    *(this + 3) = result;
    v2 = *(a2 + 44);
    if ((v2 & 0x400) == 0)
    {
LABEL_8:
      if ((v2 & 0x200) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_28;
    }
  }

  else if ((v2 & 0x400) == 0)
  {
    goto LABEL_8;
  }

  result = *(a2 + 11);
  v3 |= 0x400u;
  *(this + 44) = v3;
  *(this + 11) = result;
  v2 = *(a2 + 44);
  if ((v2 & 0x200) == 0)
  {
LABEL_9:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  result = *(a2 + 10);
  v3 |= 0x200u;
  *(this + 44) = v3;
  *(this + 10) = result;
  v2 = *(a2 + 44);
  if ((v2 & 0x10) == 0)
  {
LABEL_10:
    if ((v2 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  result = *(a2 + 5);
  v3 |= 0x10u;
  *(this + 44) = v3;
  *(this + 5) = result;
  v2 = *(a2 + 44);
  if ((v2 & 8) == 0)
  {
LABEL_11:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = *(a2 + 4);
  v3 |= 8u;
  *(this + 44) = v3;
  *(this + 4) = result;
  v2 = *(a2 + 44);
  if ((v2 & 0x80) == 0)
  {
LABEL_12:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  result = *(a2 + 8);
  v3 |= 0x80u;
  *(this + 44) = v3;
  *(this + 8) = result;
  v2 = *(a2 + 44);
  if ((v2 & 0x40) == 0)
  {
LABEL_13:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_33;
  }

LABEL_32:
  result = *(a2 + 7);
  v3 |= 0x40u;
  *(this + 44) = v3;
  *(this + 7) = result;
  v2 = *(a2 + 44);
  if ((v2 & 0x20) == 0)
  {
LABEL_14:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

LABEL_33:
  result = *(a2 + 6);
  v3 |= 0x20u;
  *(this + 44) = v3;
  *(this + 6) = result;
  v2 = *(a2 + 44);
  if ((v2 & 0x800) == 0)
  {
LABEL_15:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_34:
  result = *(a2 + 12);
  v3 |= 0x800u;
  *(this + 44) = v3;
  *(this + 12) = result;
  v2 = *(a2 + 44);
  if ((v2 & 0x100) == 0)
  {
LABEL_16:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_36;
  }

LABEL_35:
  result = *(a2 + 9);
  v3 |= 0x100u;
  *(this + 44) = v3;
  *(this + 9) = result;
  v2 = *(a2 + 44);
  if ((v2 & 0x80000) == 0)
  {
LABEL_17:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = *(a2 + 20);
  v3 |= 0x80000u;
  *(this + 44) = v3;
  *(this + 20) = result;
  v2 = *(a2 + 44);
  if ((v2 & 0x100000) == 0)
  {
LABEL_18:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = *(a2 + 21);
  v3 |= 0x100000u;
  *(this + 44) = v3;
  *(this + 21) = result;
  v2 = *(a2 + 44);
  if ((v2 & 0x20000) == 0)
  {
LABEL_19:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = *(a2 + 18);
  v3 |= 0x20000u;
  *(this + 44) = v3;
  *(this + 18) = result;
  v2 = *(a2 + 44);
  if ((v2 & 0x4000) == 0)
  {
LABEL_20:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = *(a2 + 15);
  v3 |= 0x4000u;
  *(this + 44) = v3;
  *(this + 15) = result;
  v2 = *(a2 + 44);
  if ((v2 & 0x8000) == 0)
  {
LABEL_21:
    if ((v2 & 0x40000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = *(a2 + 16);
  v3 |= 0x8000u;
  *(this + 44) = v3;
  *(this + 16) = result;
  v2 = *(a2 + 44);
  if ((v2 & 0x40000) == 0)
  {
LABEL_22:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_42;
  }

LABEL_41:
  result = *(a2 + 19);
  v3 |= 0x40000u;
  *(this + 44) = v3;
  *(this + 19) = result;
  v2 = *(a2 + 44);
  if ((v2 & 0x2000) == 0)
  {
LABEL_23:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = *(a2 + 14);
  v3 |= 0x2000u;
  *(this + 44) = v3;
  *(this + 14) = result;
  v2 = *(a2 + 44);
  if ((v2 & 0x10000) == 0)
  {
LABEL_24:
    if ((v2 & 0x1000) == 0)
    {
      return result;
    }

LABEL_44:
    result = *(a2 + 13);
    *(this + 44) = v3 | 0x1000;
    *(this + 13) = result;
    return result;
  }

LABEL_43:
  result = *(a2 + 17);
  v3 |= 0x10000u;
  *(this + 44) = v3;
  *(this + 17) = result;
  if ((*(a2 + 44) & 0x1000) != 0)
  {
    goto LABEL_44;
  }

  return result;
}

CMMsl *CMMsl::SteadinessModelContinuousWalkingFeatures::operator=(CMMsl *a1, const CMMsl::SteadinessModelContinuousWalkingFeatures *a2)
{
  if (a1 != a2)
  {
    CMMsl::SteadinessModelContinuousWalkingFeatures::SteadinessModelContinuousWalkingFeatures(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::SteadinessModelContinuousWalkingFeatures *a2, CMMsl::SteadinessModelContinuousWalkingFeatures *a3)
{
  v3 = *(this + 44);
  *(this + 44) = *(a2 + 44);
  *(a2 + 44) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  v5 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  v7 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v7;
  v8 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v8;
  v9 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v9;
  v10 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v10;
  v11 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v11;
  v12 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v12;
  v13 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v13;
  v14 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v14;
  v15 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v15;
  v16 = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v16;
  v17 = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v17;
  v18 = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v18;
  v19 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v19;
  v20 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v20;
  v21 = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v21;
  v22 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v22;
  v23 = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v23;
  result = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = result;
  return result;
}

double CMMsl::SteadinessModelContinuousWalkingFeatures::SteadinessModelContinuousWalkingFeatures(uint64_t a1, uint64_t a2)
{
  *a1 = off_1004220C0;
  *(a1 + 176) = *(a2 + 176);
  *(a2 + 176) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 136) = *(a2 + 136);
  result = *(a2 + 104);
  *(a1 + 104) = result;
  return result;
}

CMMsl *CMMsl::SteadinessModelContinuousWalkingFeatures::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::SteadinessModelContinuousWalkingFeatures::SteadinessModelContinuousWalkingFeatures(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::SteadinessModelContinuousWalkingFeatures::formatText(CMMsl::SteadinessModelContinuousWalkingFeatures *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 44);
  if (v5)
  {
    PB::TextFormatter::format(a2, "allBoutsBoutDurationSecCv", *(this + 1));
    v5 = *(this + 44);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "allBoutsBoutDurationSecMedian", *(this + 2));
  v5 = *(this + 44);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(a2, "allBoutsCycleTimeCv", *(this + 3));
  v5 = *(this + 44);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

LABEL_29:
  PB::TextFormatter::format(a2, "intermediateBoutsCycleTimeCv", *(this + 4));
  v5 = *(this + 44);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_30:
  PB::TextFormatter::format(a2, "intermediateBoutsCycleTimeMedian", *(this + 5));
  v5 = *(this + 44);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

LABEL_31:
  PB::TextFormatter::format(a2, "intermediateBoutsDoubleSupportPercentageMedian", *(this + 6));
  v5 = *(this + 44);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_32:
  PB::TextFormatter::format(a2, "intermediateBoutsStepLengthCv", *(this + 7));
  v5 = *(this + 44);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(a2, "intermediateBoutsStepLengthMedian", *(this + 8));
  v5 = *(this + 44);
  if ((v5 & 0x100) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_35;
  }

LABEL_34:
  PB::TextFormatter::format(a2, "intermediateBoutsStepLengthMedianHeightnorm", *(this + 9));
  v5 = *(this + 44);
  if ((v5 & 0x200) == 0)
  {
LABEL_11:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(a2, "intermediateBoutsWalkingSpeedCv", *(this + 10));
  v5 = *(this + 44);
  if ((v5 & 0x400) == 0)
  {
LABEL_12:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(a2, "intermediateBoutsWalkingSpeedMedian", *(this + 11));
  v5 = *(this + 44);
  if ((v5 & 0x800) == 0)
  {
LABEL_13:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_38;
  }

LABEL_37:
  PB::TextFormatter::format(a2, "intermediateBoutsWalkingSpeedMedianSqrtheightnorm", *(this + 12));
  v5 = *(this + 44);
  if ((v5 & 0x1000) == 0)
  {
LABEL_14:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(a2, "longBoutsWalkingSpeedCountRatioLog", *(this + 13));
  v5 = *(this + 44);
  if ((v5 & 0x2000) == 0)
  {
LABEL_15:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(a2, "shortBoutsCycleTimeCv", *(this + 14));
  v5 = *(this + 44);
  if ((v5 & 0x4000) == 0)
  {
LABEL_16:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_41;
  }

LABEL_40:
  PB::TextFormatter::format(a2, "shortBoutsCycleTimeMedian", *(this + 15));
  v5 = *(this + 44);
  if ((v5 & 0x8000) == 0)
  {
LABEL_17:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_42;
  }

LABEL_41:
  PB::TextFormatter::format(a2, "shortBoutsDoubleSupportPercentageMedian", *(this + 16));
  v5 = *(this + 44);
  if ((v5 & 0x10000) == 0)
  {
LABEL_18:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_43;
  }

LABEL_42:
  PB::TextFormatter::format(a2, "shortBoutsStepLengthCv", *(this + 17));
  v5 = *(this + 44);
  if ((v5 & 0x20000) == 0)
  {
LABEL_19:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_44;
  }

LABEL_43:
  PB::TextFormatter::format(a2, "shortBoutsStepLengthMedianHeightnorm", *(this + 18));
  v5 = *(this + 44);
  if ((v5 & 0x40000) == 0)
  {
LABEL_20:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_45;
  }

LABEL_44:
  PB::TextFormatter::format(a2, "shortBoutsWalkingSpeedCv", *(this + 19));
  v5 = *(this + 44);
  if ((v5 & 0x80000) == 0)
  {
LABEL_21:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_45:
  PB::TextFormatter::format(a2, "shortBoutsWalkingSpeedMedian", *(this + 20));
  if ((*(this + 44) & 0x100000) != 0)
  {
LABEL_22:
    PB::TextFormatter::format(a2, "shortBoutsWalkingSpeedMedianSqrtheightnorm", *(this + 21));
  }

LABEL_23:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::SteadinessModelContinuousWalkingFeatures::readFrom(CMMsl::SteadinessModelContinuousWalkingFeatures *this, PB::Reader *a2)
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
        goto LABEL_94;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 44) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_87;
          }

          *(this + 1) = *(*a2 + v2);
          goto LABEL_89;
        case 2u:
          *(this + 44) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_87;
          }

          *(this + 2) = *(*a2 + v2);
          goto LABEL_89;
        case 3u:
          *(this + 44) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_87;
          }

          *(this + 3) = *(*a2 + v2);
          goto LABEL_89;
        case 4u:
          *(this + 44) |= 0x400u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_87;
          }

          *(this + 11) = *(*a2 + v2);
          goto LABEL_89;
        case 5u:
          *(this + 44) |= 0x200u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_87;
          }

          *(this + 10) = *(*a2 + v2);
          goto LABEL_89;
        case 6u:
          *(this + 44) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_87;
          }

          *(this + 5) = *(*a2 + v2);
          goto LABEL_89;
        case 7u:
          *(this + 44) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_87;
          }

          *(this + 4) = *(*a2 + v2);
          goto LABEL_89;
        case 8u:
          *(this + 44) |= 0x80u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_87;
          }

          *(this + 8) = *(*a2 + v2);
          goto LABEL_89;
        case 9u:
          *(this + 44) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_87;
          }

          *(this + 7) = *(*a2 + v2);
          goto LABEL_89;
        case 0xAu:
          *(this + 44) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_87;
          }

          *(this + 6) = *(*a2 + v2);
          goto LABEL_89;
        case 0xBu:
          *(this + 44) |= 0x800u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_87;
          }

          *(this + 12) = *(*a2 + v2);
          goto LABEL_89;
        case 0xCu:
          *(this + 44) |= 0x100u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_87;
          }

          *(this + 9) = *(*a2 + v2);
          goto LABEL_89;
        case 0xDu:
          *(this + 44) |= 0x80000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_87;
          }

          *(this + 20) = *(*a2 + v2);
          goto LABEL_89;
        case 0xEu:
          *(this + 44) |= 0x100000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_87;
          }

          *(this + 21) = *(*a2 + v2);
          goto LABEL_89;
        case 0xFu:
          *(this + 44) |= 0x20000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_87;
          }

          *(this + 18) = *(*a2 + v2);
          goto LABEL_89;
        case 0x10u:
          *(this + 44) |= 0x4000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_87;
          }

          *(this + 15) = *(*a2 + v2);
          goto LABEL_89;
        case 0x11u:
          *(this + 44) |= 0x8000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_87;
          }

          *(this + 16) = *(*a2 + v2);
          goto LABEL_89;
        case 0x12u:
          *(this + 44) |= 0x40000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_87;
          }

          *(this + 19) = *(*a2 + v2);
          goto LABEL_89;
        case 0x13u:
          *(this + 44) |= 0x2000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_87;
          }

          *(this + 14) = *(*a2 + v2);
          goto LABEL_89;
        case 0x14u:
          *(this + 44) |= 0x10000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_87;
          }

          *(this + 17) = *(*a2 + v2);
          goto LABEL_89;
        case 0x15u:
          *(this + 44) |= 0x1000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
LABEL_87:
            *(a2 + 24) = 1;
          }

          else
          {
            *(this + 13) = *(*a2 + v2);
LABEL_89:
            v2 = *(a2 + 1) + 8;
            *(a2 + 1) = v2;
          }

          goto LABEL_90;
        default:
          if (!PB::Reader::skip(a2, v10 >> 3, v10 & 7, 0))
          {
            v22 = 0;
            return v22 & 1;
          }

          v2 = *(a2 + 1);
LABEL_90:
          v3 = *(a2 + 2);
          v4 = *(a2 + 24);
          if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
          {
            goto LABEL_94;
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

LABEL_94:
  v22 = v4 ^ 1;
  return v22 & 1;
}

uint64_t CMMsl::SteadinessModelContinuousWalkingFeatures::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 176);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8), 1u);
    v4 = *(v3 + 176);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 16), 2u);
  v4 = *(v3 + 176);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = PB::Writer::write(a2, *(v3 + 24), 3u);
  v4 = *(v3 + 176);
  if ((v4 & 0x400) == 0)
  {
LABEL_5:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = PB::Writer::write(a2, *(v3 + 88), 4u);
  v4 = *(v3 + 176);
  if ((v4 & 0x200) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = PB::Writer::write(a2, *(v3 + 80), 5u);
  v4 = *(v3 + 176);
  if ((v4 & 0x10) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = PB::Writer::write(a2, *(v3 + 40), 6u);
  v4 = *(v3 + 176);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = PB::Writer::write(a2, *(v3 + 32), 7u);
  v4 = *(v3 + 176);
  if ((v4 & 0x80) == 0)
  {
LABEL_9:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = PB::Writer::write(a2, *(v3 + 64), 8u);
  v4 = *(v3 + 176);
  if ((v4 & 0x40) == 0)
  {
LABEL_10:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = PB::Writer::write(a2, *(v3 + 56), 9u);
  v4 = *(v3 + 176);
  if ((v4 & 0x20) == 0)
  {
LABEL_11:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = PB::Writer::write(a2, *(v3 + 48), 0xAu);
  v4 = *(v3 + 176);
  if ((v4 & 0x800) == 0)
  {
LABEL_12:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = PB::Writer::write(a2, *(v3 + 96), 0xBu);
  v4 = *(v3 + 176);
  if ((v4 & 0x100) == 0)
  {
LABEL_13:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = PB::Writer::write(a2, *(v3 + 72), 0xCu);
  v4 = *(v3 + 176);
  if ((v4 & 0x80000) == 0)
  {
LABEL_14:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = PB::Writer::write(a2, *(v3 + 160), 0xDu);
  v4 = *(v3 + 176);
  if ((v4 & 0x100000) == 0)
  {
LABEL_15:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = PB::Writer::write(a2, *(v3 + 168), 0xEu);
  v4 = *(v3 + 176);
  if ((v4 & 0x20000) == 0)
  {
LABEL_16:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = PB::Writer::write(a2, *(v3 + 144), 0xFu);
  v4 = *(v3 + 176);
  if ((v4 & 0x4000) == 0)
  {
LABEL_17:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = PB::Writer::write(a2, *(v3 + 120), 0x10u);
  v4 = *(v3 + 176);
  if ((v4 & 0x8000) == 0)
  {
LABEL_18:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_40;
  }

LABEL_39:
  this = PB::Writer::write(a2, *(v3 + 128), 0x11u);
  v4 = *(v3 + 176);
  if ((v4 & 0x40000) == 0)
  {
LABEL_19:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_41;
  }

LABEL_40:
  this = PB::Writer::write(a2, *(v3 + 152), 0x12u);
  v4 = *(v3 + 176);
  if ((v4 & 0x2000) == 0)
  {
LABEL_20:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_21;
    }

LABEL_42:
    this = PB::Writer::write(a2, *(v3 + 136), 0x14u);
    if ((*(v3 + 176) & 0x1000) == 0)
    {
      return this;
    }

    goto LABEL_43;
  }

LABEL_41:
  this = PB::Writer::write(a2, *(v3 + 112), 0x13u);
  v4 = *(v3 + 176);
  if ((v4 & 0x10000) != 0)
  {
    goto LABEL_42;
  }

LABEL_21:
  if ((v4 & 0x1000) == 0)
  {
    return this;
  }

LABEL_43:
  v5 = *(v3 + 104);

  return PB::Writer::write(a2, v5, 0x15u);
}

uint64_t CMMsl::SteadinessModelContinuousWalkingFeatures::hash_value(CMMsl::SteadinessModelContinuousWalkingFeatures *this)
{
  v1 = *(this + 44);
  if ((v1 & 1) == 0)
  {
    v2 = 0.0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_51:
    v3 = 0.0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_52:
    v4 = 0.0;
    if ((v1 & 0x400) != 0)
    {
      goto LABEL_9;
    }

LABEL_53:
    v5 = 0.0;
    if ((v1 & 0x200) != 0)
    {
      goto LABEL_12;
    }

LABEL_54:
    v6 = 0.0;
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_15;
    }

LABEL_55:
    v7 = 0.0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_18;
    }

LABEL_56:
    v8 = 0.0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_21;
    }

LABEL_57:
    v9 = 0.0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_24;
    }

LABEL_58:
    v10 = 0.0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_27;
    }

LABEL_59:
    v11 = 0.0;
    if ((v1 & 0x800) != 0)
    {
      goto LABEL_30;
    }

LABEL_60:
    v12 = 0.0;
    if ((v1 & 0x100) != 0)
    {
      goto LABEL_33;
    }

LABEL_61:
    v13 = 0.0;
    if ((v1 & 0x80000) != 0)
    {
      goto LABEL_36;
    }

LABEL_62:
    v14 = 0.0;
    if ((v1 & 0x100000) != 0)
    {
      goto LABEL_39;
    }

LABEL_63:
    v15 = 0.0;
    if ((v1 & 0x20000) != 0)
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

  if ((v1 & 2) == 0)
  {
    goto LABEL_51;
  }

LABEL_3:
  v3 = *(this + 2);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  if ((v1 & 4) == 0)
  {
    goto LABEL_52;
  }

LABEL_6:
  v4 = *(this + 3);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  if ((v1 & 0x400) == 0)
  {
    goto LABEL_53;
  }

LABEL_9:
  v5 = *(this + 11);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  if ((v1 & 0x200) == 0)
  {
    goto LABEL_54;
  }

LABEL_12:
  v6 = *(this + 10);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  if ((v1 & 0x10) == 0)
  {
    goto LABEL_55;
  }

LABEL_15:
  v7 = *(this + 5);
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  if ((v1 & 8) == 0)
  {
    goto LABEL_56;
  }

LABEL_18:
  v8 = *(this + 4);
  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  if ((v1 & 0x80) == 0)
  {
    goto LABEL_57;
  }

LABEL_21:
  v9 = *(this + 8);
  if (v9 == 0.0)
  {
    v9 = 0.0;
  }

  if ((v1 & 0x40) == 0)
  {
    goto LABEL_58;
  }

LABEL_24:
  v10 = *(this + 7);
  if (v10 == 0.0)
  {
    v10 = 0.0;
  }

  if ((v1 & 0x20) == 0)
  {
    goto LABEL_59;
  }

LABEL_27:
  v11 = *(this + 6);
  if (v11 == 0.0)
  {
    v11 = 0.0;
  }

  if ((v1 & 0x800) == 0)
  {
    goto LABEL_60;
  }

LABEL_30:
  v12 = *(this + 12);
  if (v12 == 0.0)
  {
    v12 = 0.0;
  }

  if ((v1 & 0x100) == 0)
  {
    goto LABEL_61;
  }

LABEL_33:
  v13 = *(this + 9);
  if (v13 == 0.0)
  {
    v13 = 0.0;
  }

  if ((v1 & 0x80000) == 0)
  {
    goto LABEL_62;
  }

LABEL_36:
  v14 = *(this + 20);
  if (v14 == 0.0)
  {
    v14 = 0.0;
  }

  if ((v1 & 0x100000) == 0)
  {
    goto LABEL_63;
  }

LABEL_39:
  v15 = *(this + 21);
  if (v15 == 0.0)
  {
    v15 = 0.0;
  }

  if ((v1 & 0x20000) != 0)
  {
LABEL_42:
    v16 = *(this + 18);
    if (v16 == 0.0)
    {
      v16 = 0.0;
    }

    if ((v1 & 0x4000) != 0)
    {
      goto LABEL_45;
    }

LABEL_65:
    v17 = 0.0;
    goto LABEL_66;
  }

LABEL_64:
  v16 = 0.0;
  if ((v1 & 0x4000) == 0)
  {
    goto LABEL_65;
  }

LABEL_45:
  v17 = *(this + 15);
  if (v17 == 0.0)
  {
    v17 = 0.0;
  }

LABEL_66:
  if ((v1 & 0x8000) == 0)
  {
    v18 = 0.0;
    if ((v1 & 0x40000) != 0)
    {
      goto LABEL_68;
    }

LABEL_83:
    v19 = 0.0;
    if ((v1 & 0x2000) != 0)
    {
      goto LABEL_71;
    }

LABEL_84:
    v20 = 0.0;
    if ((v1 & 0x10000) != 0)
    {
      goto LABEL_74;
    }

    goto LABEL_85;
  }

  v18 = *(this + 16);
  if (v18 == 0.0)
  {
    v18 = 0.0;
  }

  if ((v1 & 0x40000) == 0)
  {
    goto LABEL_83;
  }

LABEL_68:
  v19 = *(this + 19);
  if (v19 == 0.0)
  {
    v19 = 0.0;
  }

  if ((v1 & 0x2000) == 0)
  {
    goto LABEL_84;
  }

LABEL_71:
  v20 = *(this + 14);
  if (v20 == 0.0)
  {
    v20 = 0.0;
  }

  if ((v1 & 0x10000) != 0)
  {
LABEL_74:
    v21 = *(this + 17);
    if (v21 == 0.0)
    {
      v21 = 0.0;
    }

    if ((v1 & 0x1000) != 0)
    {
      goto LABEL_77;
    }

LABEL_86:
    v22 = 0.0;
    return *&v3 ^ *&v2 ^ *&v4 ^ *&v5 ^ *&v6 ^ *&v7 ^ *&v8 ^ *&v9 ^ *&v10 ^ *&v11 ^ *&v12 ^ *&v13 ^ *&v14 ^ *&v15 ^ *&v16 ^ *&v17 ^ *&v18 ^ *&v19 ^ *&v20 ^ *&v21 ^ *&v22;
  }

LABEL_85:
  v21 = 0.0;
  if ((v1 & 0x1000) == 0)
  {
    goto LABEL_86;
  }

LABEL_77:
  v22 = *(this + 13);
  if (v22 == 0.0)
  {
    v22 = 0.0;
  }

  return *&v3 ^ *&v2 ^ *&v4 ^ *&v5 ^ *&v6 ^ *&v7 ^ *&v8 ^ *&v9 ^ *&v10 ^ *&v11 ^ *&v12 ^ *&v13 ^ *&v14 ^ *&v15 ^ *&v16 ^ *&v17 ^ *&v18 ^ *&v19 ^ *&v20 ^ *&v21 ^ *&v22;
}

void CMMsl::SteadinessModelGaitBaselineFeatures::~SteadinessModelGaitBaselineFeatures(CMMsl::SteadinessModelGaitBaselineFeatures *this)
{
  PB::Base::~Base(this);

  operator delete();
}

double CMMsl::SteadinessModelGaitBaselineFeatures::SteadinessModelGaitBaselineFeatures(CMMsl::SteadinessModelGaitBaselineFeatures *this, const CMMsl::SteadinessModelGaitBaselineFeatures *a2)
{
  *this = off_1004220F8;
  *(this + 22) = 0;
  v2 = *(a2 + 44);
  if (v2)
  {
    result = *(a2 + 1);
    v3 = 1;
    *(this + 44) = 1;
    *(this + 1) = result;
    v2 = *(a2 + 44);
    if ((v2 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_5:
    result = *(a2 + 2);
    v3 |= 2u;
    *(this + 44) = v3;
    *(this + 2) = result;
    v2 = *(a2 + 44);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    result = *(a2 + 3);
    v3 |= 4u;
    *(this + 44) = v3;
    *(this + 3) = result;
    v2 = *(a2 + 44);
    if ((v2 & 0x80) == 0)
    {
LABEL_8:
      if ((v2 & 0x200) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }
  }

  else if ((v2 & 0x80) == 0)
  {
    goto LABEL_8;
  }

  result = *(a2 + 8);
  v3 |= 0x80u;
  *(this + 44) = v3;
  *(this + 8) = result;
  v2 = *(a2 + 44);
  if ((v2 & 0x200) == 0)
  {
LABEL_9:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = *(a2 + 10);
  v3 |= 0x200u;
  *(this + 44) = v3;
  *(this + 10) = result;
  v2 = *(a2 + 44);
  if ((v2 & 0x100) == 0)
  {
LABEL_10:
    if ((v2 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = *(a2 + 9);
  v3 |= 0x100u;
  *(this + 44) = v3;
  *(this + 9) = result;
  v2 = *(a2 + 44);
  if ((v2 & 8) == 0)
  {
LABEL_11:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = *(a2 + 4);
  v3 |= 8u;
  *(this + 44) = v3;
  *(this + 4) = result;
  v2 = *(a2 + 44);
  if ((v2 & 0x40) == 0)
  {
LABEL_12:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = *(a2 + 7);
  v3 |= 0x40u;
  *(this + 44) = v3;
  *(this + 7) = result;
  v2 = *(a2 + 44);
  if ((v2 & 0x10) == 0)
  {
LABEL_13:
    if ((v2 & 0x20) == 0)
    {
      return result;
    }

LABEL_22:
    result = *(a2 + 6);
    *(this + 44) = v3 | 0x20;
    *(this + 6) = result;
    return result;
  }

LABEL_21:
  result = *(a2 + 5);
  v3 |= 0x10u;
  *(this + 44) = v3;
  *(this + 5) = result;
  if ((*(a2 + 44) & 0x20) != 0)
  {
    goto LABEL_22;
  }

  return result;
}