void CMMsl::ModelBasedBioMotionClassification::~ModelBasedBioMotionClassification(CMMsl::ModelBasedBioMotionClassification *this)
{
  v2 = *(this + 1);
  *this = off_100420220;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::ModelBasedBioMotionClassification::~ModelBasedBioMotionClassification(this);

  operator delete();
}

void *CMMsl::ModelBasedBioMotionClassification::ModelBasedBioMotionClassification(void *this, const CMMsl::ModelBasedBioMotionClassification *a2)
{
  *this = off_100420220;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const CMMsl::ModelBasedBioMotionClassification *CMMsl::ModelBasedBioMotionClassification::operator=(const CMMsl::ModelBasedBioMotionClassification *a1, const CMMsl::ModelBasedBioMotionClassification *a2)
{
  if (a1 != a2)
  {
    CMMsl::ModelBasedBioMotionClassification::ModelBasedBioMotionClassification(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    CMMsl::ModelBasedBioMotionClassification::~ModelBasedBioMotionClassification(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::ModelBasedBioMotionClassification *a2, CMMsl::ModelBasedBioMotionClassification *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::ModelBasedBioMotionClassification::ModelBasedBioMotionClassification(void *a1, uint64_t a2)
{
  *a1 = off_100420220;
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
  *a1 = off_100420220;
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

uint64_t CMMsl::ModelBasedBioMotionClassification::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = off_100420220;
    v6[1] = v4;
    CMMsl::ModelBasedBioMotionClassification::~ModelBasedBioMotionClassification(v6);
  }

  return a1;
}

uint64_t CMMsl::ModelBasedBioMotionClassification::formatText(CMMsl::ModelBasedBioMotionClassification *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::ModelBasedBioMotionClassification::readFrom(CMMsl::ModelBasedBioMotionClassification *this, PB::Reader *a2)
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

uint64_t CMMsl::ModelBasedBioMotionClassification::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2, 1u);
  }

  return this;
}

CMMsl::BioMotionClassification *CMMsl::ModelBasedBioMotionClassification::hash_value(CMMsl::ModelBasedBioMotionClassification *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::BioMotionClassification::hash_value(result);
  }

  return result;
}

uint64_t CMMsl::ModelBasedBioMotionClassification::makeSuper(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

void CMMsl::MotionActivity::~MotionActivity(CMMsl::MotionActivity *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::MotionActivity::MotionActivity(uint64_t this, const CMMsl::MotionActivity *a2)
{
  *this = off_100420258;
  *(this + 116) = 0;
  v2 = *(a2 + 29);
  if ((v2 & 0x10000) != 0)
  {
    v4 = *(a2 + 23);
    v3 = 0x10000;
    *(this + 116) = 0x10000;
    *(this + 92) = v4;
    v2 = *(a2 + 29);
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x200) != 0)
  {
LABEL_5:
    v5 = *(a2 + 16);
    v3 |= 0x200u;
    *(this + 116) = v3;
    *(this + 64) = v5;
    v2 = *(a2 + 29);
  }

LABEL_6:
  if ((v2 & 0x20) != 0)
  {
    v6 = *(a2 + 12);
    v3 |= 0x20u;
    *(this + 116) = v3;
    *(this + 48) = v6;
    v2 = *(a2 + 29);
    if ((v2 & 0x400) == 0)
    {
LABEL_8:
      if ((v2 & 0x100000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_34;
    }
  }

  else if ((v2 & 0x400) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 17);
  v3 |= 0x400u;
  *(this + 116) = v3;
  *(this + 68) = v7;
  v2 = *(a2 + 29);
  if ((v2 & 0x100000) == 0)
  {
LABEL_9:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_35;
  }

LABEL_34:
  v8 = *(a2 + 108);
  v3 |= 0x100000u;
  *(this + 116) = v3;
  *(this + 108) = v8;
  v2 = *(a2 + 29);
  if ((v2 & 0x8000) == 0)
  {
LABEL_10:
    if ((v2 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_36;
  }

LABEL_35:
  v9 = *(a2 + 22);
  v3 |= 0x8000u;
  *(this + 116) = v3;
  *(this + 88) = v9;
  v2 = *(a2 + 29);
  if ((v2 & 4) == 0)
  {
LABEL_11:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_37;
  }

LABEL_36:
  v10 = *(a2 + 3);
  v3 |= 4u;
  *(this + 116) = v3;
  *(this + 24) = v10;
  v2 = *(a2 + 29);
  if ((v2 & 0x200000) == 0)
  {
LABEL_12:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_38;
  }

LABEL_37:
  v11 = *(a2 + 109);
  v3 |= 0x200000u;
  *(this + 116) = v3;
  *(this + 109) = v11;
  v2 = *(a2 + 29);
  if ((v2 & 0x100) == 0)
  {
LABEL_13:
    if ((v2 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_39;
  }

LABEL_38:
  v12 = *(a2 + 15);
  v3 |= 0x100u;
  *(this + 116) = v3;
  *(this + 60) = v12;
  v2 = *(a2 + 29);
  if ((v2 & 1) == 0)
  {
LABEL_14:
    if ((v2 & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_40;
  }

LABEL_39:
  v13 = *(a2 + 1);
  v3 |= 1u;
  *(this + 116) = v3;
  *(this + 8) = v13;
  v2 = *(a2 + 29);
  if ((v2 & 2) == 0)
  {
LABEL_15:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_41;
  }

LABEL_40:
  v14 = *(a2 + 2);
  v3 |= 2u;
  *(this + 116) = v3;
  *(this + 16) = v14;
  v2 = *(a2 + 29);
  if ((v2 & 0x1000) == 0)
  {
LABEL_16:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_42;
  }

LABEL_41:
  v15 = *(a2 + 19);
  v3 |= 0x1000u;
  *(this + 116) = v3;
  *(this + 76) = v15;
  v2 = *(a2 + 29);
  if ((v2 & 0x800) == 0)
  {
LABEL_17:
    if ((v2 & 0x2000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_43;
  }

LABEL_42:
  v16 = *(a2 + 18);
  v3 |= 0x800u;
  *(this + 116) = v3;
  *(this + 72) = v16;
  v2 = *(a2 + 29);
  if ((v2 & 0x2000000) == 0)
  {
LABEL_18:
    if ((v2 & 0x1000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_44;
  }

LABEL_43:
  v17 = *(a2 + 113);
  v3 |= 0x2000000u;
  *(this + 116) = v3;
  *(this + 113) = v17;
  v2 = *(a2 + 29);
  if ((v2 & 0x1000000) == 0)
  {
LABEL_19:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_45;
  }

LABEL_44:
  v18 = *(a2 + 112);
  v3 |= 0x1000000u;
  *(this + 116) = v3;
  *(this + 112) = v18;
  v2 = *(a2 + 29);
  if ((v2 & 0x400000) == 0)
  {
LABEL_20:
    if ((v2 & 0x4000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_46;
  }

LABEL_45:
  v19 = *(a2 + 110);
  v3 |= 0x400000u;
  *(this + 116) = v3;
  *(this + 110) = v19;
  v2 = *(a2 + 29);
  if ((v2 & 0x4000000) == 0)
  {
LABEL_21:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_47;
  }

LABEL_46:
  v20 = *(a2 + 114);
  v3 |= 0x4000000u;
  *(this + 116) = v3;
  *(this + 114) = v20;
  v2 = *(a2 + 29);
  if ((v2 & 0x800000) == 0)
  {
LABEL_22:
    if ((v2 & 0x40000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_48;
  }

LABEL_47:
  v21 = *(a2 + 111);
  v3 |= 0x800000u;
  *(this + 116) = v3;
  *(this + 111) = v21;
  v2 = *(a2 + 29);
  if ((v2 & 0x40000) == 0)
  {
LABEL_23:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_49;
  }

LABEL_48:
  v22 = *(a2 + 25);
  v3 |= 0x40000u;
  *(this + 116) = v3;
  *(this + 100) = v22;
  v2 = *(a2 + 29);
  if ((v2 & 0x80) == 0)
  {
LABEL_24:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_50;
  }

LABEL_49:
  v23 = *(a2 + 14);
  v3 |= 0x80u;
  *(this + 116) = v3;
  *(this + 56) = v23;
  v2 = *(a2 + 29);
  if ((v2 & 0x40) == 0)
  {
LABEL_25:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_51;
  }

LABEL_50:
  v24 = *(a2 + 13);
  v3 |= 0x40u;
  *(this + 116) = v3;
  *(this + 52) = v24;
  v2 = *(a2 + 29);
  if ((v2 & 0x4000) == 0)
  {
LABEL_26:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_52;
  }

LABEL_51:
  v25 = *(a2 + 21);
  v3 |= 0x4000u;
  *(this + 116) = v3;
  *(this + 84) = v25;
  v2 = *(a2 + 29);
  if ((v2 & 0x80000) == 0)
  {
LABEL_27:
    if ((v2 & 8) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_53;
  }

LABEL_52:
  v26 = *(a2 + 26);
  v3 |= 0x80000u;
  *(this + 116) = v3;
  *(this + 104) = v26;
  v2 = *(a2 + 29);
  if ((v2 & 8) == 0)
  {
LABEL_28:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_54;
  }

LABEL_53:
  v27 = *(a2 + 4);
  v3 |= 8u;
  *(this + 116) = v3;
  *(this + 32) = v27;
  v2 = *(a2 + 29);
  if ((v2 & 0x10) == 0)
  {
LABEL_29:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_55;
  }

LABEL_54:
  v28 = *(a2 + 5);
  v3 |= 0x10u;
  *(this + 116) = v3;
  *(this + 40) = v28;
  v2 = *(a2 + 29);
  if ((v2 & 0x20000) == 0)
  {
LABEL_30:
    if ((v2 & 0x2000) == 0)
    {
      return this;
    }

LABEL_56:
    v30 = *(a2 + 20);
    *(this + 116) = v3 | 0x2000;
    *(this + 80) = v30;
    return this;
  }

LABEL_55:
  v29 = *(a2 + 24);
  v3 |= 0x20000u;
  *(this + 116) = v3;
  *(this + 96) = v29;
  if ((*(a2 + 29) & 0x2000) != 0)
  {
    goto LABEL_56;
  }

  return this;
}

CMMsl *CMMsl::MotionActivity::operator=(CMMsl *a1, const CMMsl::MotionActivity *a2)
{
  if (a1 != a2)
  {
    CMMsl::MotionActivity::MotionActivity(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::MotionActivity *a2, CMMsl::MotionActivity *a3)
{
  v3 = *(this + 29);
  *(this + 29) = *(a2 + 29);
  *(a2 + 29) = v3;
  v4 = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = v4;
  v5 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v5;
  v6 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v6;
  v7 = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v7;
  LOBYTE(v7) = *(this + 108);
  *(this + 108) = *(a2 + 108);
  *(a2 + 108) = v7;
  v8 = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v8;
  v9 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v9;
  LOBYTE(v7) = *(this + 109);
  *(this + 109) = *(a2 + 109);
  *(a2 + 109) = v7;
  v10 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v10;
  v11 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v11;
  v12 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v12;
  v13 = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v13;
  v14 = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v14;
  LOBYTE(v14) = *(this + 113);
  *(this + 113) = *(a2 + 113);
  *(a2 + 113) = v14;
  LOBYTE(v14) = *(this + 112);
  *(this + 112) = *(a2 + 112);
  *(a2 + 112) = v14;
  LOBYTE(v14) = *(this + 110);
  *(this + 110) = *(a2 + 110);
  *(a2 + 110) = v14;
  LOBYTE(v14) = *(this + 114);
  *(this + 114) = *(a2 + 114);
  *(a2 + 114) = v14;
  LOBYTE(v14) = *(this + 111);
  *(this + 111) = *(a2 + 111);
  *(a2 + 111) = v14;
  v15 = *(this + 25);
  *(this + 25) = *(a2 + 25);
  *(a2 + 25) = v15;
  LODWORD(v12) = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v12;
  LODWORD(v12) = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v12;
  LODWORD(v12) = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v12;
  v16 = *(this + 26);
  *(this + 26) = *(a2 + 26);
  *(a2 + 26) = v16;
  result = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = result;
  v18 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v18;
  LODWORD(v18) = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v18;
  LODWORD(v18) = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v18;
  return result;
}

double CMMsl::MotionActivity::MotionActivity(uint64_t a1, uint64_t a2)
{
  *a1 = off_100420258;
  *(a1 + 116) = *(a2 + 116);
  *(a2 + 116) = 0;
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 109) = *(a2 + 109);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 113) = *(a2 + 113);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 110) = *(a2 + 110);
  *(a1 + 114) = *(a2 + 114);
  *(a1 + 111) = *(a2 + 111);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 104) = *(a2 + 104);
  result = *(a2 + 32);
  *(a1 + 32) = result;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  return result;
}

CMMsl *CMMsl::MotionActivity::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::MotionActivity::MotionActivity(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::MotionActivity::formatText(CMMsl::MotionActivity *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 29);
  if ((v5 & 0x20) != 0)
  {
    PB::TextFormatter::format(a2, "confidence", *(this + 12));
    v5 = *(this + 29);
    if ((v5 & 0x40) == 0)
    {
LABEL_3:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_34;
    }
  }

  else if ((v5 & 0x40) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "drivingArmLikelihoodSum", *(this + 13));
  v5 = *(this + 29);
  if ((v5 & 0x80) == 0)
  {
LABEL_4:
    if ((v5 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_35;
  }

LABEL_34:
  PB::TextFormatter::format(a2, "drivingStowedLikelihoodSum", *(this + 14));
  v5 = *(this + 29);
  if ((v5 & 1) == 0)
  {
LABEL_5:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(a2, "estExitTime", *(this + 1));
  v5 = *(this + 29);
  if ((v5 & 0x100) == 0)
  {
LABEL_6:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(a2, "exitState", *(this + 15));
  v5 = *(this + 29);
  if ((v5 & 0x100000) == 0)
  {
LABEL_7:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_38;
  }

LABEL_37:
  PB::TextFormatter::format(a2, "isStanding", *(this + 108));
  v5 = *(this + 29);
  if ((v5 & 0x200000) == 0)
  {
LABEL_8:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(a2, "isVehicleConnected", *(this + 109));
  v5 = *(this + 29);
  if ((v5 & 0x200) == 0)
  {
LABEL_9:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(a2, "mountedConfidence", *(this + 16));
  v5 = *(this + 29);
  if ((v5 & 0x400) == 0)
  {
LABEL_10:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_41;
  }

LABEL_40:
  PB::TextFormatter::format(a2, "mountedState", *(this + 17));
  v5 = *(this + 29);
  if ((v5 & 0x800) == 0)
  {
LABEL_11:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_42;
  }

LABEL_41:
  PB::TextFormatter::format(a2, "rawConfidence", *(this + 18));
  v5 = *(this + 29);
  if ((v5 & 0x1000) == 0)
  {
LABEL_12:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_43;
  }

LABEL_42:
  PB::TextFormatter::format(a2, "rawType", *(this + 19));
  v5 = *(this + 29);
  if ((v5 & 0x2000) == 0)
  {
LABEL_13:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_44;
  }

LABEL_43:
  PB::TextFormatter::format(a2, "source", *(this + 20));
  v5 = *(this + 29);
  if ((v5 & 0x4000) == 0)
  {
LABEL_14:
    if ((v5 & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_45;
  }

LABEL_44:
  PB::TextFormatter::format(a2, "ssLikelihoodSum", *(this + 21));
  v5 = *(this + 29);
  if ((v5 & 2) == 0)
  {
LABEL_15:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_46;
  }

LABEL_45:
  PB::TextFormatter::format(a2, "startTime", *(this + 2));
  v5 = *(this + 29);
  if ((v5 & 0x8000) == 0)
  {
LABEL_16:
    if ((v5 & 4) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_47;
  }

LABEL_46:
  PB::TextFormatter::format(a2, "tilt", *(this + 22));
  v5 = *(this + 29);
  if ((v5 & 4) == 0)
  {
LABEL_17:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_48;
  }

LABEL_47:
  PB::TextFormatter::format(a2, "timestamp", *(this + 3));
  v5 = *(this + 29);
  if ((v5 & 0x10000) == 0)
  {
LABEL_18:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_49;
  }

LABEL_48:
  PB::TextFormatter::format(a2, "type", *(this + 23));
  v5 = *(this + 29);
  if ((v5 & 0x20000) == 0)
  {
LABEL_19:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_50;
  }

LABEL_49:
  PB::TextFormatter::format(a2, "typeYouth", *(this + 24));
  v5 = *(this + 29);
  if ((v5 & 0x400000) == 0)
  {
LABEL_20:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_51;
  }

LABEL_50:
  PB::TextFormatter::format(a2, "vehicularBasebandHint", *(this + 110));
  v5 = *(this + 29);
  if ((v5 & 0x800000) == 0)
  {
LABEL_21:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_52;
  }

LABEL_51:
  PB::TextFormatter::format(a2, "vehicularBtHint", *(this + 111));
  v5 = *(this + 29);
  if ((v5 & 0x40000) == 0)
  {
LABEL_22:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_53;
  }

LABEL_52:
  PB::TextFormatter::format(a2, "vehicularConfidence", *(this + 25));
  v5 = *(this + 29);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_23:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_54;
  }

LABEL_53:
  PB::TextFormatter::format(a2, "vehicularGpsHint", *(this + 112));
  v5 = *(this + 29);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_24:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_55;
  }

LABEL_54:
  PB::TextFormatter::format(a2, "vehicularMotionHint", *(this + 113));
  v5 = *(this + 29);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_25:
    if ((v5 & 8) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_56;
  }

LABEL_55:
  PB::TextFormatter::format(a2, "vehicularWifiHint", *(this + 114));
  v5 = *(this + 29);
  if ((v5 & 8) == 0)
  {
LABEL_26:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_57;
  }

LABEL_56:
  PB::TextFormatter::format(a2, "workoutDetectionTime", *(this + 4));
  v5 = *(this + 29);
  if ((v5 & 0x80000) == 0)
  {
LABEL_27:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_57:
  PB::TextFormatter::format(a2, "workoutDetectionType", *(this + 26));
  if ((*(this + 29) & 0x10) != 0)
  {
LABEL_28:
    PB::TextFormatter::format(a2, "workoutEscalationTime", *(this + 5));
  }

LABEL_29:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::MotionActivity::readFrom(CMMsl::MotionActivity *this, PB::Reader *a2)
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
            goto LABEL_313;
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
          *(this + 29) |= 0x10000u;
          v23 = *(a2 + 1);
          v22 = *(a2 + 2);
          v24 = *a2;
          if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v22)
          {
            v203 = 0;
            v204 = 0;
            v27 = 0;
            v17 = v22 >= v23;
            v205 = v22 - v23;
            if (!v17)
            {
              v205 = 0;
            }

            v206 = (v24 + v23);
            v207 = v23 + 1;
            do
            {
              if (!v205)
              {
                LODWORD(v27) = 0;
                *(a2 + 24) = 1;
                goto LABEL_293;
              }

              v208 = *v206;
              *(a2 + 1) = v207;
              v27 |= (v208 & 0x7F) << v203;
              if ((v208 & 0x80) == 0)
              {
                if (*(a2 + 24))
                {
                  LODWORD(v27) = 0;
                }

                goto LABEL_293;
              }

              v203 += 7;
              --v205;
              ++v206;
              ++v207;
              v14 = v204++ > 8;
            }

            while (!v14);
LABEL_211:
            LODWORD(v27) = 0;
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
                goto LABEL_211;
              }
            }
          }

LABEL_293:
          *(this + 23) = v27;
          goto LABEL_309;
        case 2u:
          *(this + 29) |= 0x200u;
          v107 = *(a2 + 1);
          v106 = *(a2 + 2);
          v108 = *a2;
          if (v107 <= 0xFFFFFFFFFFFFFFF5 && v107 + 10 <= v106)
          {
            v109 = 0;
            v110 = 0;
            v111 = 0;
            v112 = (v108 + v107);
            v113 = v107 + 1;
            do
            {
              *(a2 + 1) = v113;
              v114 = *v112++;
              v111 |= (v114 & 0x7F) << v109;
              if ((v114 & 0x80) == 0)
              {
                goto LABEL_296;
              }

              v109 += 7;
              ++v113;
              v14 = v110++ > 8;
            }

            while (!v14);
LABEL_219:
            LODWORD(v111) = 0;
            goto LABEL_296;
          }

          v209 = 0;
          v210 = 0;
          v111 = 0;
          v17 = v106 >= v107;
          v211 = v106 - v107;
          if (!v17)
          {
            v211 = 0;
          }

          v212 = (v108 + v107);
          v213 = v107 + 1;
          while (2)
          {
            if (v211)
            {
              v214 = *v212;
              *(a2 + 1) = v213;
              v111 |= (v214 & 0x7F) << v209;
              if (v214 < 0)
              {
                v209 += 7;
                --v211;
                ++v212;
                ++v213;
                v14 = v210++ > 8;
                if (v14)
                {
                  goto LABEL_219;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v111) = 0;
              }
            }

            else
            {
              LODWORD(v111) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_296:
          *(this + 16) = v111;
          goto LABEL_309;
        case 3u:
          *(this + 29) |= 0x20u;
          v81 = *(a2 + 1);
          v80 = *(a2 + 2);
          v82 = *a2;
          if (v81 <= 0xFFFFFFFFFFFFFFF5 && v81 + 10 <= v80)
          {
            v83 = 0;
            v84 = 0;
            v85 = 0;
            v86 = (v82 + v81);
            v87 = v81 + 1;
            do
            {
              *(a2 + 1) = v87;
              v88 = *v86++;
              v85 |= (v88 & 0x7F) << v83;
              if ((v88 & 0x80) == 0)
              {
                goto LABEL_287;
              }

              v83 += 7;
              ++v87;
              v14 = v84++ > 8;
            }

            while (!v14);
LABEL_193:
            LODWORD(v85) = 0;
            goto LABEL_287;
          }

          v191 = 0;
          v192 = 0;
          v85 = 0;
          v17 = v80 >= v81;
          v193 = v80 - v81;
          if (!v17)
          {
            v193 = 0;
          }

          v194 = (v82 + v81);
          v195 = v81 + 1;
          while (2)
          {
            if (v193)
            {
              v196 = *v194;
              *(a2 + 1) = v195;
              v85 |= (v196 & 0x7F) << v191;
              if (v196 < 0)
              {
                v191 += 7;
                --v193;
                ++v194;
                ++v195;
                v14 = v192++ > 8;
                if (v14)
                {
                  goto LABEL_193;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v85) = 0;
              }
            }

            else
            {
              LODWORD(v85) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_287:
          *(this + 12) = v85;
          goto LABEL_309;
        case 4u:
          *(this + 29) |= 0x400u;
          v94 = *(a2 + 1);
          v93 = *(a2 + 2);
          v95 = *a2;
          if (v94 <= 0xFFFFFFFFFFFFFFF5 && v94 + 10 <= v93)
          {
            v96 = 0;
            v97 = 0;
            v98 = 0;
            v99 = (v95 + v94);
            v100 = v94 + 1;
            do
            {
              *(a2 + 1) = v100;
              v101 = *v99++;
              v98 |= (v101 & 0x7F) << v96;
              if ((v101 & 0x80) == 0)
              {
                goto LABEL_290;
              }

              v96 += 7;
              ++v100;
              v14 = v97++ > 8;
            }

            while (!v14);
LABEL_201:
            LODWORD(v98) = 0;
            goto LABEL_290;
          }

          v197 = 0;
          v198 = 0;
          v98 = 0;
          v17 = v93 >= v94;
          v199 = v93 - v94;
          if (!v17)
          {
            v199 = 0;
          }

          v200 = (v95 + v94);
          v201 = v94 + 1;
          while (2)
          {
            if (v199)
            {
              v202 = *v200;
              *(a2 + 1) = v201;
              v98 |= (v202 & 0x7F) << v197;
              if (v202 < 0)
              {
                v197 += 7;
                --v199;
                ++v200;
                ++v201;
                v14 = v198++ > 8;
                if (v14)
                {
                  goto LABEL_201;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v98) = 0;
              }
            }

            else
            {
              LODWORD(v98) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_290:
          *(this + 17) = v98;
          goto LABEL_309;
        case 5u:
          *(this + 29) |= 0x100000u;
          v48 = *(a2 + 1);
          if (v48 >= *(a2 + 2))
          {
            v51 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v49 = v48 + 1;
            v50 = *(*a2 + v48);
            *(a2 + 1) = v49;
            v51 = v50 != 0;
          }

          *(this + 108) = v51;
          goto LABEL_309;
        case 6u:
          *(this + 29) |= 0x8000u;
          v120 = *(a2 + 1);
          if (v120 > 0xFFFFFFFFFFFFFFFBLL || v120 + 4 > *(a2 + 2))
          {
            goto LABEL_138;
          }

          *(this + 22) = *(*a2 + v120);
          goto LABEL_135;
        case 7u:
          *(this + 29) |= 4u;
          v126 = *(a2 + 1);
          if (v126 > 0xFFFFFFFFFFFFFFF7 || v126 + 8 > *(a2 + 2))
          {
            goto LABEL_138;
          }

          *(this + 3) = *(*a2 + v126);
          goto LABEL_259;
        case 8u:
          *(this + 29) |= 0x200000u;
          v102 = *(a2 + 1);
          if (v102 >= *(a2 + 2))
          {
            v105 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v103 = v102 + 1;
            v104 = *(*a2 + v102);
            *(a2 + 1) = v103;
            v105 = v104 != 0;
          }

          *(this + 109) = v105;
          goto LABEL_309;
        case 9u:
          *(this + 29) |= 0x100u;
          v138 = *(a2 + 1);
          v137 = *(a2 + 2);
          v139 = *a2;
          if (v138 <= 0xFFFFFFFFFFFFFFF5 && v138 + 10 <= v137)
          {
            v140 = 0;
            v141 = 0;
            v142 = 0;
            v143 = (v139 + v138);
            v144 = v138 + 1;
            do
            {
              *(a2 + 1) = v144;
              v145 = *v143++;
              v142 |= (v145 & 0x7F) << v140;
              if ((v145 & 0x80) == 0)
              {
                goto LABEL_302;
              }

              v140 += 7;
              ++v144;
              v14 = v141++ > 8;
            }

            while (!v14);
LABEL_239:
            LODWORD(v142) = 0;
            goto LABEL_302;
          }

          v221 = 0;
          v222 = 0;
          v142 = 0;
          v17 = v137 >= v138;
          v223 = v137 - v138;
          if (!v17)
          {
            v223 = 0;
          }

          v224 = (v139 + v138);
          v225 = v138 + 1;
          while (2)
          {
            if (v223)
            {
              v226 = *v224;
              *(a2 + 1) = v225;
              v142 |= (v226 & 0x7F) << v221;
              if (v226 < 0)
              {
                v221 += 7;
                --v223;
                ++v224;
                ++v225;
                v14 = v222++ > 8;
                if (v14)
                {
                  goto LABEL_239;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v142) = 0;
              }
            }

            else
            {
              LODWORD(v142) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_302:
          *(this + 15) = v142;
          goto LABEL_309;
        case 0xAu:
          *(this + 29) |= 1u;
          v61 = *(a2 + 1);
          if (v61 > 0xFFFFFFFFFFFFFFF7 || v61 + 8 > *(a2 + 2))
          {
            goto LABEL_138;
          }

          *(this + 1) = *(*a2 + v61);
          goto LABEL_259;
        case 0xBu:
          *(this + 29) |= 2u;
          v136 = *(a2 + 1);
          if (v136 > 0xFFFFFFFFFFFFFFF7 || v136 + 8 > *(a2 + 2))
          {
            goto LABEL_138;
          }

          *(this + 2) = *(*a2 + v136);
          goto LABEL_259;
        case 0xCu:
          *(this + 29) |= 0x1000u;
          v40 = *(a2 + 1);
          v39 = *(a2 + 2);
          v41 = *a2;
          if (v40 <= 0xFFFFFFFFFFFFFFF5 && v40 + 10 <= v39)
          {
            v42 = 0;
            v43 = 0;
            v44 = 0;
            v45 = (v41 + v40);
            v46 = v40 + 1;
            do
            {
              *(a2 + 1) = v46;
              v47 = *v45++;
              v44 |= (v47 & 0x7F) << v42;
              if ((v47 & 0x80) == 0)
              {
                goto LABEL_275;
              }

              v42 += 7;
              ++v46;
              v14 = v43++ > 8;
            }

            while (!v14);
LABEL_159:
            LODWORD(v44) = 0;
            goto LABEL_275;
          }

          v167 = 0;
          v168 = 0;
          v44 = 0;
          v17 = v39 >= v40;
          v169 = v39 - v40;
          if (!v17)
          {
            v169 = 0;
          }

          v170 = (v41 + v40);
          v171 = v40 + 1;
          while (2)
          {
            if (v169)
            {
              v172 = *v170;
              *(a2 + 1) = v171;
              v44 |= (v172 & 0x7F) << v167;
              if (v172 < 0)
              {
                v167 += 7;
                --v169;
                ++v170;
                ++v171;
                v14 = v168++ > 8;
                if (v14)
                {
                  goto LABEL_159;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v44) = 0;
              }
            }

            else
            {
              LODWORD(v44) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_275:
          *(this + 19) = v44;
          goto LABEL_309;
        case 0xDu:
          *(this + 29) |= 0x800u;
          v53 = *(a2 + 1);
          v52 = *(a2 + 2);
          v54 = *a2;
          if (v53 <= 0xFFFFFFFFFFFFFFF5 && v53 + 10 <= v52)
          {
            v55 = 0;
            v56 = 0;
            v57 = 0;
            v58 = (v54 + v53);
            v59 = v53 + 1;
            do
            {
              *(a2 + 1) = v59;
              v60 = *v58++;
              v57 |= (v60 & 0x7F) << v55;
              if ((v60 & 0x80) == 0)
              {
                goto LABEL_278;
              }

              v55 += 7;
              ++v59;
              v14 = v56++ > 8;
            }

            while (!v14);
LABEL_167:
            LODWORD(v57) = 0;
            goto LABEL_278;
          }

          v173 = 0;
          v174 = 0;
          v57 = 0;
          v17 = v52 >= v53;
          v175 = v52 - v53;
          if (!v17)
          {
            v175 = 0;
          }

          v176 = (v54 + v53);
          v177 = v53 + 1;
          while (2)
          {
            if (v175)
            {
              v178 = *v176;
              *(a2 + 1) = v177;
              v57 |= (v178 & 0x7F) << v173;
              if (v178 < 0)
              {
                v173 += 7;
                --v175;
                ++v176;
                ++v177;
                v14 = v174++ > 8;
                if (v14)
                {
                  goto LABEL_167;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v57) = 0;
              }
            }

            else
            {
              LODWORD(v57) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_278:
          *(this + 18) = v57;
          goto LABEL_309;
        case 0xEu:
          *(this + 29) |= 0x2000000u;
          v122 = *(a2 + 1);
          if (v122 >= *(a2 + 2))
          {
            v125 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v123 = v122 + 1;
            v124 = *(*a2 + v122);
            *(a2 + 1) = v123;
            v125 = v124 != 0;
          }

          *(this + 113) = v125;
          goto LABEL_309;
        case 0xFu:
          *(this + 29) |= 0x1000000u;
          v35 = *(a2 + 1);
          if (v35 >= *(a2 + 2))
          {
            v38 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v36 = v35 + 1;
            v37 = *(*a2 + v35);
            *(a2 + 1) = v36;
            v38 = v37 != 0;
          }

          *(this + 112) = v38;
          goto LABEL_309;
        case 0x10u:
          *(this + 29) |= 0x400000u;
          v89 = *(a2 + 1);
          if (v89 >= *(a2 + 2))
          {
            v92 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v90 = v89 + 1;
            v91 = *(*a2 + v89);
            *(a2 + 1) = v90;
            v92 = v91 != 0;
          }

          *(this + 110) = v92;
          goto LABEL_309;
        case 0x11u:
          *(this + 29) |= 0x4000000u;
          v31 = *(a2 + 1);
          if (v31 >= *(a2 + 2))
          {
            v34 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v32 = v31 + 1;
            v33 = *(*a2 + v31);
            *(a2 + 1) = v32;
            v34 = v33 != 0;
          }

          *(this + 114) = v34;
          goto LABEL_309;
        case 0x12u:
          *(this + 29) |= 0x800000u;
          v115 = *(a2 + 1);
          if (v115 >= *(a2 + 2))
          {
            v118 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v116 = v115 + 1;
            v117 = *(*a2 + v115);
            *(a2 + 1) = v116;
            v118 = v117 != 0;
          }

          *(this + 111) = v118;
          goto LABEL_309;
        case 0x13u:
          *(this + 29) |= 0x40000u;
          v128 = *(a2 + 1);
          v127 = *(a2 + 2);
          v129 = *a2;
          if (v128 <= 0xFFFFFFFFFFFFFFF5 && v128 + 10 <= v127)
          {
            v130 = 0;
            v131 = 0;
            v132 = 0;
            v133 = (v129 + v128);
            v134 = v128 + 1;
            do
            {
              *(a2 + 1) = v134;
              v135 = *v133++;
              v132 |= (v135 & 0x7F) << v130;
              if ((v135 & 0x80) == 0)
              {
                goto LABEL_299;
              }

              v130 += 7;
              ++v134;
              v14 = v131++ > 8;
            }

            while (!v14);
LABEL_231:
            LODWORD(v132) = 0;
            goto LABEL_299;
          }

          v215 = 0;
          v216 = 0;
          v132 = 0;
          v17 = v127 >= v128;
          v217 = v127 - v128;
          if (!v17)
          {
            v217 = 0;
          }

          v218 = (v129 + v128);
          v219 = v128 + 1;
          while (2)
          {
            if (v217)
            {
              v220 = *v218;
              *(a2 + 1) = v219;
              v132 |= (v220 & 0x7F) << v215;
              if (v220 < 0)
              {
                v215 += 7;
                --v217;
                ++v218;
                ++v219;
                v14 = v216++ > 8;
                if (v14)
                {
                  goto LABEL_231;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v132) = 0;
              }
            }

            else
            {
              LODWORD(v132) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_299:
          *(this + 25) = v132;
          goto LABEL_309;
        case 0x14u:
          *(this + 29) |= 0x80u;
          v155 = *(a2 + 1);
          if (v155 > 0xFFFFFFFFFFFFFFFBLL || v155 + 4 > *(a2 + 2))
          {
            goto LABEL_138;
          }

          *(this + 14) = *(*a2 + v155);
          goto LABEL_135;
        case 0x15u:
          *(this + 29) |= 0x40u;
          v119 = *(a2 + 1);
          if (v119 > 0xFFFFFFFFFFFFFFFBLL || v119 + 4 > *(a2 + 2))
          {
            goto LABEL_138;
          }

          *(this + 13) = *(*a2 + v119);
          goto LABEL_135;
        case 0x16u:
          *(this + 29) |= 0x4000u;
          v121 = *(a2 + 1);
          if (v121 > 0xFFFFFFFFFFFFFFFBLL || v121 + 4 > *(a2 + 2))
          {
            goto LABEL_138;
          }

          *(this + 21) = *(*a2 + v121);
LABEL_135:
          v156 = *(a2 + 1) + 4;
          goto LABEL_260;
        case 0x17u:
          *(this + 29) |= 0x80000u;
          v147 = *(a2 + 1);
          v146 = *(a2 + 2);
          v148 = *a2;
          if (v147 <= 0xFFFFFFFFFFFFFFF5 && v147 + 10 <= v146)
          {
            v149 = 0;
            v150 = 0;
            v151 = 0;
            v152 = (v148 + v147);
            v153 = v147 + 1;
            do
            {
              *(a2 + 1) = v153;
              v154 = *v152++;
              v151 |= (v154 & 0x7F) << v149;
              if ((v154 & 0x80) == 0)
              {
                goto LABEL_305;
              }

              v149 += 7;
              ++v153;
              v14 = v150++ > 8;
            }

            while (!v14);
LABEL_249:
            LODWORD(v151) = 0;
            goto LABEL_305;
          }

          v227 = 0;
          v228 = 0;
          v151 = 0;
          v17 = v146 >= v147;
          v229 = v146 - v147;
          if (!v17)
          {
            v229 = 0;
          }

          v230 = (v148 + v147);
          v231 = v147 + 1;
          while (2)
          {
            if (v229)
            {
              v232 = *v230;
              *(a2 + 1) = v231;
              v151 |= (v232 & 0x7F) << v227;
              if (v232 < 0)
              {
                v227 += 7;
                --v229;
                ++v230;
                ++v231;
                v14 = v228++ > 8;
                if (v14)
                {
                  goto LABEL_249;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v151) = 0;
              }
            }

            else
            {
              LODWORD(v151) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_305:
          *(this + 26) = v151;
          goto LABEL_309;
        case 0x18u:
          *(this + 29) |= 8u;
          v157 = *(a2 + 1);
          if (v157 <= 0xFFFFFFFFFFFFFFF7 && v157 + 8 <= *(a2 + 2))
          {
            *(this + 4) = *(*a2 + v157);
LABEL_259:
            v156 = *(a2 + 1) + 8;
LABEL_260:
            *(a2 + 1) = v156;
          }

          else
          {
LABEL_138:
            *(a2 + 24) = 1;
          }

          goto LABEL_309;
        case 0x19u:
          *(this + 29) |= 0x10u;
          v72 = *(a2 + 1);
          v71 = *(a2 + 2);
          v73 = *a2;
          if (v72 <= 0xFFFFFFFFFFFFFFF5 && v72 + 10 <= v71)
          {
            v74 = 0;
            v75 = 0;
            v76 = 0;
            v77 = (v73 + v72);
            v78 = v72 + 1;
            do
            {
              *(a2 + 1) = v78;
              v79 = *v77++;
              v76 |= (v79 & 0x7F) << v74;
              if ((v79 & 0x80) == 0)
              {
                goto LABEL_284;
              }

              v74 += 7;
              ++v78;
              v14 = v75++ > 8;
            }

            while (!v14);
LABEL_185:
            v76 = 0;
            goto LABEL_284;
          }

          v185 = 0;
          v186 = 0;
          v76 = 0;
          v17 = v71 >= v72;
          v187 = v71 - v72;
          if (!v17)
          {
            v187 = 0;
          }

          v188 = (v73 + v72);
          v189 = v72 + 1;
          while (2)
          {
            if (v187)
            {
              v190 = *v188;
              *(a2 + 1) = v189;
              v76 |= (v190 & 0x7F) << v185;
              if (v190 < 0)
              {
                v185 += 7;
                --v187;
                ++v188;
                ++v189;
                v14 = v186++ > 8;
                if (v14)
                {
                  goto LABEL_185;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v76 = 0;
              }
            }

            else
            {
              v76 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_284:
          *(this + 5) = v76;
          goto LABEL_309;
        case 0x1Au:
          *(this + 29) |= 0x20000u;
          v63 = *(a2 + 1);
          v62 = *(a2 + 2);
          v64 = *a2;
          if (v63 <= 0xFFFFFFFFFFFFFFF5 && v63 + 10 <= v62)
          {
            v65 = 0;
            v66 = 0;
            v67 = 0;
            v68 = (v64 + v63);
            v69 = v63 + 1;
            do
            {
              *(a2 + 1) = v69;
              v70 = *v68++;
              v67 |= (v70 & 0x7F) << v65;
              if ((v70 & 0x80) == 0)
              {
                goto LABEL_281;
              }

              v65 += 7;
              ++v69;
              v14 = v66++ > 8;
            }

            while (!v14);
LABEL_177:
            LODWORD(v67) = 0;
            goto LABEL_281;
          }

          v179 = 0;
          v180 = 0;
          v67 = 0;
          v17 = v62 >= v63;
          v181 = v62 - v63;
          if (!v17)
          {
            v181 = 0;
          }

          v182 = (v64 + v63);
          v183 = v63 + 1;
          while (2)
          {
            if (v181)
            {
              v184 = *v182;
              *(a2 + 1) = v183;
              v67 |= (v184 & 0x7F) << v179;
              if (v184 < 0)
              {
                v179 += 7;
                --v181;
                ++v182;
                ++v183;
                v14 = v180++ > 8;
                if (v14)
                {
                  goto LABEL_177;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v67) = 0;
              }
            }

            else
            {
              LODWORD(v67) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_281:
          *(this + 24) = v67;
          goto LABEL_309;
        case 0x1Bu:
          *(this + 29) |= 0x2000u;
          v159 = *(a2 + 1);
          v158 = *(a2 + 2);
          v160 = *a2;
          if (v159 <= 0xFFFFFFFFFFFFFFF5 && v159 + 10 <= v158)
          {
            v161 = 0;
            v162 = 0;
            v163 = 0;
            v164 = (v160 + v159);
            v165 = v159 + 1;
            do
            {
              *(a2 + 1) = v165;
              v166 = *v164++;
              v163 |= (v166 & 0x7F) << v161;
              if ((v166 & 0x80) == 0)
              {
                goto LABEL_308;
              }

              v161 += 7;
              ++v165;
              v14 = v162++ > 8;
            }

            while (!v14);
LABEL_257:
            LODWORD(v163) = 0;
            goto LABEL_308;
          }

          v233 = 0;
          v234 = 0;
          v163 = 0;
          v17 = v158 >= v159;
          v235 = v158 - v159;
          if (!v17)
          {
            v235 = 0;
          }

          v236 = (v160 + v159);
          v237 = v159 + 1;
          break;
        default:
          if (PB::Reader::skip(a2, v10 >> 3, v10 & 7, 0))
          {
            goto LABEL_309;
          }

          v240 = 0;
          return v240 & 1;
      }

      while (1)
      {
        if (!v235)
        {
          LODWORD(v163) = 0;
          *(a2 + 24) = 1;
          goto LABEL_308;
        }

        v238 = *v236;
        *(a2 + 1) = v237;
        v163 |= (v238 & 0x7F) << v233;
        if ((v238 & 0x80) == 0)
        {
          break;
        }

        v233 += 7;
        --v235;
        ++v236;
        ++v237;
        v14 = v234++ > 8;
        if (v14)
        {
          goto LABEL_257;
        }
      }

      if (*(a2 + 24))
      {
        LODWORD(v163) = 0;
      }

LABEL_308:
      *(this + 20) = v163;
LABEL_309:
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

LABEL_313:
  v240 = v4 ^ 1;
  return v240 & 1;
}

uint64_t CMMsl::MotionActivity::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 116);
  if ((v4 & 0x10000) != 0)
  {
    this = PB::Writer::writeVarInt(a2, *(this + 92), 1u);
    v4 = *(v3 + 116);
    if ((v4 & 0x200) == 0)
    {
LABEL_3:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_31;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::writeVarInt(a2, *(v3 + 64), 2u);
  v4 = *(v3 + 116);
  if ((v4 & 0x20) == 0)
  {
LABEL_4:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = PB::Writer::writeVarInt(a2, *(v3 + 48), 3u);
  v4 = *(v3 + 116);
  if ((v4 & 0x400) == 0)
  {
LABEL_5:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = PB::Writer::writeVarInt(a2, *(v3 + 68), 4u);
  v4 = *(v3 + 116);
  if ((v4 & 0x100000) == 0)
  {
LABEL_6:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = PB::Writer::write(a2, *(v3 + 108), 5u);
  v4 = *(v3 + 116);
  if ((v4 & 0x8000) == 0)
  {
LABEL_7:
    if ((v4 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = PB::Writer::write(a2, *(v3 + 88), 6u);
  v4 = *(v3 + 116);
  if ((v4 & 4) == 0)
  {
LABEL_8:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = PB::Writer::write(a2, *(v3 + 24), 7u);
  v4 = *(v3 + 116);
  if ((v4 & 0x200000) == 0)
  {
LABEL_9:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = PB::Writer::write(a2, *(v3 + 109), 8u);
  v4 = *(v3 + 116);
  if ((v4 & 0x100) == 0)
  {
LABEL_10:
    if ((v4 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = PB::Writer::writeVarInt(a2, *(v3 + 60), 9u);
  v4 = *(v3 + 116);
  if ((v4 & 1) == 0)
  {
LABEL_11:
    if ((v4 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = PB::Writer::write(a2, *(v3 + 8), 0xAu);
  v4 = *(v3 + 116);
  if ((v4 & 2) == 0)
  {
LABEL_12:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_40;
  }

LABEL_39:
  this = PB::Writer::write(a2, *(v3 + 16), 0xBu);
  v4 = *(v3 + 116);
  if ((v4 & 0x1000) == 0)
  {
LABEL_13:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_41;
  }

LABEL_40:
  this = PB::Writer::writeVarInt(a2, *(v3 + 76), 0xCu);
  v4 = *(v3 + 116);
  if ((v4 & 0x800) == 0)
  {
LABEL_14:
    if ((v4 & 0x2000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_42;
  }

LABEL_41:
  this = PB::Writer::writeVarInt(a2, *(v3 + 72), 0xDu);
  v4 = *(v3 + 116);
  if ((v4 & 0x2000000) == 0)
  {
LABEL_15:
    if ((v4 & 0x1000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_43;
  }

LABEL_42:
  this = PB::Writer::write(a2, *(v3 + 113), 0xEu);
  v4 = *(v3 + 116);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_16:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_44;
  }

LABEL_43:
  this = PB::Writer::write(a2, *(v3 + 112), 0xFu);
  v4 = *(v3 + 116);
  if ((v4 & 0x400000) == 0)
  {
LABEL_17:
    if ((v4 & 0x4000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_45;
  }

LABEL_44:
  this = PB::Writer::write(a2, *(v3 + 110), 0x10u);
  v4 = *(v3 + 116);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_18:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_46;
  }

LABEL_45:
  this = PB::Writer::write(a2, *(v3 + 114), 0x11u);
  v4 = *(v3 + 116);
  if ((v4 & 0x800000) == 0)
  {
LABEL_19:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_47;
  }

LABEL_46:
  this = PB::Writer::write(a2, *(v3 + 111), 0x12u);
  v4 = *(v3 + 116);
  if ((v4 & 0x40000) == 0)
  {
LABEL_20:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_48;
  }

LABEL_47:
  this = PB::Writer::writeVarInt(a2, *(v3 + 100), 0x13u);
  v4 = *(v3 + 116);
  if ((v4 & 0x80) == 0)
  {
LABEL_21:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_49;
  }

LABEL_48:
  this = PB::Writer::write(a2, *(v3 + 56), 0x14u);
  v4 = *(v3 + 116);
  if ((v4 & 0x40) == 0)
  {
LABEL_22:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_50;
  }

LABEL_49:
  this = PB::Writer::write(a2, *(v3 + 52), 0x15u);
  v4 = *(v3 + 116);
  if ((v4 & 0x4000) == 0)
  {
LABEL_23:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_51;
  }

LABEL_50:
  this = PB::Writer::write(a2, *(v3 + 84), 0x16u);
  v4 = *(v3 + 116);
  if ((v4 & 0x80000) == 0)
  {
LABEL_24:
    if ((v4 & 8) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_52;
  }

LABEL_51:
  this = PB::Writer::writeVarInt(a2, *(v3 + 104), 0x17u);
  v4 = *(v3 + 116);
  if ((v4 & 8) == 0)
  {
LABEL_25:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_53;
  }

LABEL_52:
  this = PB::Writer::write(a2, *(v3 + 32), 0x18u);
  v4 = *(v3 + 116);
  if ((v4 & 0x10) == 0)
  {
LABEL_26:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_27;
    }

LABEL_54:
    this = PB::Writer::writeVarInt(a2, *(v3 + 96), 0x1Au);
    if ((*(v3 + 116) & 0x2000) == 0)
    {
      return this;
    }

    goto LABEL_55;
  }

LABEL_53:
  this = PB::Writer::writeVarInt(a2, *(v3 + 40), 0x19u);
  v4 = *(v3 + 116);
  if ((v4 & 0x20000) != 0)
  {
    goto LABEL_54;
  }

LABEL_27:
  if ((v4 & 0x2000) == 0)
  {
    return this;
  }

LABEL_55:
  v5 = *(v3 + 80);

  return PB::Writer::writeVarInt(a2, v5, 0x1Bu);
}

uint64_t CMMsl::MotionActivity::hash_value(CMMsl::MotionActivity *this)
{
  v1 = *(this + 29);
  if ((v1 & 0x10000) != 0)
  {
    v2 = *(this + 23);
    if ((v1 & 0x200) != 0)
    {
LABEL_3:
      v3 = *(this + 16);
      if ((v1 & 0x20) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else
  {
    v2 = 0;
    if ((v1 & 0x200) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((v1 & 0x20) != 0)
  {
LABEL_4:
    v4 = *(this + 12);
    if ((v1 & 0x400) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_28:
  v4 = 0;
  if ((v1 & 0x400) != 0)
  {
LABEL_5:
    v5 = *(this + 17);
    if ((v1 & 0x100000) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

LABEL_29:
  v5 = 0;
  if ((v1 & 0x100000) != 0)
  {
LABEL_6:
    v6 = *(this + 108);
    if ((v1 & 0x8000) != 0)
    {
      goto LABEL_7;
    }

LABEL_31:
    v8 = 0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_10;
    }

LABEL_32:
    v9 = 0.0;
    if ((v1 & 0x200000) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_30:
  v6 = 0;
  if ((v1 & 0x8000) == 0)
  {
    goto LABEL_31;
  }

LABEL_7:
  v7 = *(this + 22);
  v8 = LODWORD(v7);
  if (v7 == 0.0)
  {
    v8 = 0;
  }

  if ((v1 & 4) == 0)
  {
    goto LABEL_32;
  }

LABEL_10:
  v9 = *(this + 3);
  if (v9 == 0.0)
  {
    v9 = 0.0;
  }

  if ((v1 & 0x200000) != 0)
  {
LABEL_13:
    v10 = *(this + 109);
    if ((v1 & 0x100) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  v10 = 0;
  if ((v1 & 0x100) != 0)
  {
LABEL_14:
    v11 = *(this + 15);
    if (v1)
    {
      goto LABEL_15;
    }

LABEL_35:
    v12 = 0.0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_18;
    }

LABEL_36:
    v13 = 0.0;
    if ((v1 & 0x1000) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_37;
  }

LABEL_34:
  v11 = 0;
  if ((v1 & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_15:
  v12 = *(this + 1);
  if (v12 == 0.0)
  {
    v12 = 0.0;
  }

  if ((v1 & 2) == 0)
  {
    goto LABEL_36;
  }

LABEL_18:
  v13 = *(this + 2);
  if (v13 == 0.0)
  {
    v13 = 0.0;
  }

  if ((v1 & 0x1000) != 0)
  {
LABEL_21:
    v14 = *(this + 19);
    if ((v1 & 0x800) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_38;
  }

LABEL_37:
  v14 = 0;
  if ((v1 & 0x800) != 0)
  {
LABEL_22:
    v15 = *(this + 18);
    if ((v1 & 0x2000000) != 0)
    {
      goto LABEL_23;
    }

    goto LABEL_39;
  }

LABEL_38:
  v15 = 0;
  if ((v1 & 0x2000000) != 0)
  {
LABEL_23:
    v16 = *(this + 113);
    if ((v1 & 0x1000000) != 0)
    {
      goto LABEL_24;
    }

LABEL_40:
    v17 = 0;
    if ((v1 & 0x400000) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_41;
  }

LABEL_39:
  v16 = 0;
  if ((v1 & 0x1000000) == 0)
  {
    goto LABEL_40;
  }

LABEL_24:
  v17 = *(this + 112);
  if ((v1 & 0x400000) != 0)
  {
LABEL_25:
    v18 = *(this + 110);
    goto LABEL_42;
  }

LABEL_41:
  v18 = 0;
LABEL_42:
  if ((v1 & 0x4000000) != 0)
  {
    v19 = *(this + 114);
    if ((v1 & 0x800000) != 0)
    {
LABEL_44:
      v20 = *(this + 111);
      if ((v1 & 0x40000) != 0)
      {
        goto LABEL_45;
      }

      goto LABEL_64;
    }
  }

  else
  {
    v19 = 0;
    if ((v1 & 0x800000) != 0)
    {
      goto LABEL_44;
    }
  }

  v20 = 0;
  if ((v1 & 0x40000) != 0)
  {
LABEL_45:
    v21 = *(this + 25);
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_46;
    }

LABEL_65:
    v23 = 0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_49;
    }

LABEL_66:
    v25 = 0;
    if ((v1 & 0x4000) != 0)
    {
      goto LABEL_52;
    }

LABEL_67:
    v27 = 0;
    if ((v1 & 0x80000) != 0)
    {
      goto LABEL_55;
    }

    goto LABEL_68;
  }

LABEL_64:
  v21 = 0;
  if ((v1 & 0x80) == 0)
  {
    goto LABEL_65;
  }

LABEL_46:
  v22 = *(this + 14);
  v23 = LODWORD(v22);
  if (v22 == 0.0)
  {
    v23 = 0;
  }

  if ((v1 & 0x40) == 0)
  {
    goto LABEL_66;
  }

LABEL_49:
  v24 = *(this + 13);
  v25 = LODWORD(v24);
  if (v24 == 0.0)
  {
    v25 = 0;
  }

  if ((v1 & 0x4000) == 0)
  {
    goto LABEL_67;
  }

LABEL_52:
  v26 = *(this + 21);
  v27 = LODWORD(v26);
  if (v26 == 0.0)
  {
    v27 = 0;
  }

  if ((v1 & 0x80000) != 0)
  {
LABEL_55:
    v28 = *(this + 26);
    if ((v1 & 8) != 0)
    {
      goto LABEL_56;
    }

LABEL_69:
    v29 = 0.0;
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_59;
    }

    goto LABEL_70;
  }

LABEL_68:
  v28 = 0;
  if ((v1 & 8) == 0)
  {
    goto LABEL_69;
  }

LABEL_56:
  v29 = *(this + 4);
  if (v29 == 0.0)
  {
    v29 = 0.0;
  }

  if ((v1 & 0x10) != 0)
  {
LABEL_59:
    v30 = *(this + 5);
    if ((v1 & 0x20000) != 0)
    {
      goto LABEL_60;
    }

LABEL_71:
    v31 = 0;
    if ((v1 & 0x2000) != 0)
    {
      goto LABEL_61;
    }

LABEL_72:
    v32 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v8 ^ *&v9 ^ v10 ^ v11 ^ *&v12 ^ *&v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v23 ^ v25 ^ v27 ^ v28 ^ *&v29 ^ v30 ^ v31 ^ v32;
  }

LABEL_70:
  v30 = 0;
  if ((v1 & 0x20000) == 0)
  {
    goto LABEL_71;
  }

LABEL_60:
  v31 = *(this + 24);
  if ((v1 & 0x2000) == 0)
  {
    goto LABEL_72;
  }

LABEL_61:
  v32 = *(this + 20);
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v8 ^ *&v9 ^ v10 ^ v11 ^ *&v12 ^ *&v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v23 ^ v25 ^ v27 ^ v28 ^ *&v29 ^ v30 ^ v31 ^ v32;
}

void CMMsl::MotionActivityReplay::~MotionActivityReplay(CMMsl::MotionActivityReplay *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::MotionActivityReplay::MotionActivityReplay(uint64_t this, const CMMsl::MotionActivityReplay *a2)
{
  *this = off_100420290;
  *(this + 36) = 0;
  v2 = *(a2 + 18);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 36) = 1;
    *(this + 8) = v4;
    v2 = *(a2 + 18);
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x10) != 0)
  {
LABEL_5:
    v5 = *(a2 + 7);
    v3 |= 0x10u;
    *(this + 36) = v3;
    *(this + 28) = v5;
    v2 = *(a2 + 18);
  }

LABEL_6:
  if ((v2 & 8) != 0)
  {
    v6 = *(a2 + 6);
    v3 |= 8u;
    *(this + 36) = v3;
    *(this + 24) = v6;
    v2 = *(a2 + 18);
    if ((v2 & 0x80) == 0)
    {
LABEL_8:
      if ((v2 & 0x100) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_16;
    }
  }

  else if ((v2 & 0x80) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 34);
  v3 |= 0x80u;
  *(this + 36) = v3;
  *(this + 34) = v7;
  v2 = *(a2 + 18);
  if ((v2 & 0x100) == 0)
  {
LABEL_9:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_17;
  }

LABEL_16:
  v8 = *(a2 + 35);
  v3 |= 0x100u;
  *(this + 36) = v3;
  *(this + 35) = v8;
  v2 = *(a2 + 18);
  if ((v2 & 0x20) == 0)
  {
LABEL_10:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_18;
  }

LABEL_17:
  v9 = *(a2 + 32);
  v3 |= 0x20u;
  *(this + 36) = v3;
  *(this + 32) = v9;
  v2 = *(a2 + 18);
  if ((v2 & 0x40) == 0)
  {
LABEL_11:
    if ((v2 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_19;
  }

LABEL_18:
  v10 = *(a2 + 33);
  v3 |= 0x40u;
  *(this + 36) = v3;
  *(this + 33) = v10;
  v2 = *(a2 + 18);
  if ((v2 & 2) == 0)
  {
LABEL_12:
    if ((v2 & 4) == 0)
    {
      return this;
    }

LABEL_20:
    v12 = *(a2 + 5);
    *(this + 36) = v3 | 4;
    *(this + 20) = v12;
    return this;
  }

LABEL_19:
  v11 = *(a2 + 4);
  v3 |= 2u;
  *(this + 36) = v3;
  *(this + 16) = v11;
  if ((*(a2 + 18) & 4) != 0)
  {
    goto LABEL_20;
  }

  return this;
}

uint64_t CMMsl::MotionActivityReplay::operator=(uint64_t a1, const CMMsl::MotionActivityReplay *a2)
{
  if (a1 != a2)
  {
    CMMsl::MotionActivityReplay::MotionActivityReplay(v10, a2);
    v3 = v12;
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    *(a1 + 8) = v11;
    v6 = *(a1 + 24);
    *(a1 + 24) = v13;
    v11 = v4;
    v13 = v6;
    v7 = *(a1 + 36);
    *(a1 + 36) = v15;
    v15 = v7;
    v8 = *(a1 + 32);
    *(a1 + 32) = v14;
    v14 = v8;
    *(a1 + 16) = v3;
    v12 = v5;
    PB::Base::~Base(v10);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::MotionActivityReplay *a2, CMMsl::MotionActivityReplay *a3)
{
  v3 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v3;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  v5 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v5;
  v6 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v6;
  LOBYTE(v6) = *(this + 34);
  *(this + 34) = *(a2 + 34);
  *(a2 + 34) = v6;
  LOBYTE(v6) = *(this + 35);
  *(this + 35) = *(a2 + 35);
  *(a2 + 35) = v6;
  LOBYTE(v6) = *(this + 32);
  *(this + 32) = *(a2 + 32);
  *(a2 + 32) = v6;
  LOBYTE(v6) = *(this + 33);
  *(this + 33) = *(a2 + 33);
  *(a2 + 33) = v6;
  v7 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v7;
  v8 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v8;
  return result;
}

double CMMsl::MotionActivityReplay::MotionActivityReplay(uint64_t a1, uint64_t a2)
{
  *a1 = off_100420290;
  *(a1 + 36) = *(a2 + 36);
  *(a2 + 36) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 34) = *(a2 + 34);
  *(a1 + 35) = *(a2 + 35);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  return result;
}

uint64_t CMMsl::MotionActivityReplay::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::MotionActivityReplay::MotionActivityReplay(v10, a2);
    v3 = v12;
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    *(a1 + 8) = v11;
    v6 = *(a1 + 24);
    *(a1 + 24) = v13;
    v11 = v4;
    v13 = v6;
    v7 = *(a1 + 36);
    *(a1 + 36) = v15;
    v15 = v7;
    v8 = *(a1 + 32);
    *(a1 + 32) = v14;
    v14 = v8;
    *(a1 + 16) = v3;
    v12 = v5;
    PB::Base::~Base(v10);
  }

  return a1;
}

uint64_t CMMsl::MotionActivityReplay::formatText(CMMsl::MotionActivityReplay *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 18);
  if (v5)
  {
    PB::TextFormatter::format(a2, "iostime", *(this + 1));
    v5 = *(this + 18);
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

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "outdoorCyclingStateMachineFrom", *(this + 4));
  v5 = *(this + 18);
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
  PB::TextFormatter::format(a2, "outdoorCyclingStateMachineTo", *(this + 5));
  v5 = *(this + 18);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  PB::TextFormatter::format(a2, "workoutLocationType", *(this + 6));
  v5 = *(this + 18);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  PB::TextFormatter::format(a2, "workoutPause", *(this + 32));
  v5 = *(this + 18);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  PB::TextFormatter::format(a2, "workoutResume", *(this + 33));
  v5 = *(this + 18);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(a2, "workoutStart", *(this + 34));
  v5 = *(this + 18);
  if ((v5 & 0x100) == 0)
  {
LABEL_9:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_21:
  PB::TextFormatter::format(a2, "workoutStop", *(this + 35));
  if ((*(this + 18) & 0x10) != 0)
  {
LABEL_10:
    PB::TextFormatter::format(a2, "workoutType", *(this + 7));
  }

LABEL_11:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::MotionActivityReplay::readFrom(CMMsl::MotionActivityReplay *this, PB::Reader *a2)
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
            goto LABEL_140;
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
      if ((v10 >> 3) <= 10)
      {
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            *(this + 18) |= 8u;
            v43 = *(a2 + 1);
            v2 = *(a2 + 2);
            v44 = *a2;
            if (v43 > 0xFFFFFFFFFFFFFFF5 || v43 + 10 > v2)
            {
              v70 = 0;
              v71 = 0;
              v47 = 0;
              if (v2 <= v43)
              {
                v2 = *(a2 + 1);
              }

              v72 = v2 - v43;
              v73 = (v44 + v43);
              v74 = v43 + 1;
              while (1)
              {
                if (!v72)
                {
                  LODWORD(v47) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_127;
                }

                v75 = v74;
                v76 = *v73;
                *(a2 + 1) = v75;
                v47 |= (v76 & 0x7F) << v70;
                if ((v76 & 0x80) == 0)
                {
                  break;
                }

                v70 += 7;
                --v72;
                ++v73;
                v74 = v75 + 1;
                v14 = v71++ > 8;
                if (v14)
                {
                  LODWORD(v47) = 0;
                  goto LABEL_126;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v47) = 0;
              }

LABEL_126:
              v2 = v75;
            }

            else
            {
              v45 = 0;
              v46 = 0;
              v47 = 0;
              v48 = (v44 + v43);
              v49 = v43 + 1;
              while (1)
              {
                v2 = v49;
                *(a2 + 1) = v49;
                v50 = *v48++;
                v47 |= (v50 & 0x7F) << v45;
                if ((v50 & 0x80) == 0)
                {
                  break;
                }

                v45 += 7;
                ++v49;
                v14 = v46++ > 8;
                if (v14)
                {
                  LODWORD(v47) = 0;
                  break;
                }
              }
            }

LABEL_127:
            *(this + 6) = v47;
            goto LABEL_136;
          }

          if (v22 == 10)
          {
            *(this + 18) |= 0x80u;
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

            *(this + 34) = v40;
            goto LABEL_136;
          }
        }

        else
        {
          if (v22 == 1)
          {
            *(this + 18) |= 1u;
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

            goto LABEL_136;
          }

          if (v22 == 2)
          {
            *(this + 18) |= 0x10u;
            v31 = *(a2 + 1);
            v2 = *(a2 + 2);
            v32 = *a2;
            if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
            {
              v63 = 0;
              v64 = 0;
              v35 = 0;
              if (v2 <= v31)
              {
                v2 = *(a2 + 1);
              }

              v65 = v2 - v31;
              v66 = (v32 + v31);
              v67 = v31 + 1;
              while (1)
              {
                if (!v65)
                {
                  LODWORD(v35) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_123;
                }

                v68 = v67;
                v69 = *v66;
                *(a2 + 1) = v68;
                v35 |= (v69 & 0x7F) << v63;
                if ((v69 & 0x80) == 0)
                {
                  break;
                }

                v63 += 7;
                --v65;
                ++v66;
                v67 = v68 + 1;
                v14 = v64++ > 8;
                if (v14)
                {
                  LODWORD(v35) = 0;
                  goto LABEL_122;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v35) = 0;
              }

LABEL_122:
              v2 = v68;
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

LABEL_123:
            *(this + 7) = v35;
            goto LABEL_136;
          }
        }
      }

      else if (v22 <= 12)
      {
        if (v22 == 11)
        {
          *(this + 18) |= 0x100u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v54 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v53 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v54 = v53 != 0;
          }

          *(this + 35) = v54;
          goto LABEL_136;
        }

        if (v22 == 12)
        {
          *(this + 18) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v42 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v41 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v42 = v41 != 0;
          }

          *(this + 32) = v42;
          goto LABEL_136;
        }
      }

      else
      {
        switch(v22)
        {
          case 0xD:
            *(this + 18) |= 0x40u;
            v2 = *(a2 + 1);
            if (v2 >= *(a2 + 2))
            {
              v52 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v51 = *(*a2 + v2++);
              *(a2 + 1) = v2;
              v52 = v51 != 0;
            }

            *(this + 33) = v52;
            goto LABEL_136;
          case 0x15:
            *(this + 18) |= 2u;
            v55 = *(a2 + 1);
            v2 = *(a2 + 2);
            v56 = *a2;
            if (v55 > 0xFFFFFFFFFFFFFFF5 || v55 + 10 > v2)
            {
              v84 = 0;
              v85 = 0;
              v59 = 0;
              if (v2 <= v55)
              {
                v2 = *(a2 + 1);
              }

              v86 = v2 - v55;
              v87 = (v56 + v55);
              v88 = v55 + 1;
              while (1)
              {
                if (!v86)
                {
                  LODWORD(v59) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_135;
                }

                v89 = v88;
                v90 = *v87;
                *(a2 + 1) = v89;
                v59 |= (v90 & 0x7F) << v84;
                if ((v90 & 0x80) == 0)
                {
                  break;
                }

                v84 += 7;
                --v86;
                ++v87;
                v88 = v89 + 1;
                v14 = v85++ > 8;
                if (v14)
                {
                  LODWORD(v59) = 0;
                  goto LABEL_134;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v59) = 0;
              }

LABEL_134:
              v2 = v89;
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

LABEL_135:
            *(this + 4) = v59;
            goto LABEL_136;
          case 0x16:
            *(this + 18) |= 4u;
            v23 = *(a2 + 1);
            v2 = *(a2 + 2);
            v24 = *a2;
            if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
            {
              v77 = 0;
              v78 = 0;
              v27 = 0;
              if (v2 <= v23)
              {
                v2 = *(a2 + 1);
              }

              v79 = v2 - v23;
              v80 = (v24 + v23);
              v81 = v23 + 1;
              while (1)
              {
                if (!v79)
                {
                  LODWORD(v27) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_131;
                }

                v82 = v81;
                v83 = *v80;
                *(a2 + 1) = v82;
                v27 |= (v83 & 0x7F) << v77;
                if ((v83 & 0x80) == 0)
                {
                  break;
                }

                v77 += 7;
                --v79;
                ++v80;
                v81 = v82 + 1;
                v14 = v78++ > 8;
                if (v14)
                {
                  LODWORD(v27) = 0;
                  goto LABEL_130;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v27) = 0;
              }

LABEL_130:
              v2 = v82;
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

LABEL_131:
            *(this + 5) = v27;
            goto LABEL_136;
        }
      }

      if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
      {
        v91 = 0;
        return v91 & 1;
      }

      v2 = *(a2 + 1);
LABEL_136:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_140:
  v91 = v4 ^ 1;
  return v91 & 1;
}

uint64_t CMMsl::MotionActivityReplay::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 36);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8), 1u);
    v4 = *(v3 + 36);
    if ((v4 & 0x10) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v4 & 0x10) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::writeVarInt(a2, *(v3 + 28), 2u);
  v4 = *(v3 + 36);
  if ((v4 & 8) == 0)
  {
LABEL_4:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  this = PB::Writer::writeVarInt(a2, *(v3 + 24), 3u);
  v4 = *(v3 + 36);
  if ((v4 & 0x80) == 0)
  {
LABEL_5:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = PB::Writer::write(a2, *(v3 + 34), 0xAu);
  v4 = *(v3 + 36);
  if ((v4 & 0x100) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  this = PB::Writer::write(a2, *(v3 + 35), 0xBu);
  v4 = *(v3 + 36);
  if ((v4 & 0x20) == 0)
  {
LABEL_7:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = PB::Writer::write(a2, *(v3 + 32), 0xCu);
  v4 = *(v3 + 36);
  if ((v4 & 0x40) == 0)
  {
LABEL_8:
    if ((v4 & 2) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    this = PB::Writer::writeVarInt(a2, *(v3 + 16), 0x15u);
    if ((*(v3 + 36) & 4) == 0)
    {
      return this;
    }

    goto LABEL_19;
  }

LABEL_17:
  this = PB::Writer::write(a2, *(v3 + 33), 0xDu);
  v4 = *(v3 + 36);
  if ((v4 & 2) != 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  if ((v4 & 4) == 0)
  {
    return this;
  }

LABEL_19:
  v5 = *(v3 + 20);

  return PB::Writer::writeVarInt(a2, v5, 0x16u);
}

uint64_t CMMsl::MotionActivityReplay::hash_value(CMMsl::MotionActivityReplay *this)
{
  v1 = *(this + 18);
  if (v1)
  {
    v2 = *(this + 1);
    if (v2 == 0.0)
    {
      v2 = 0.0;
    }

    if ((v1 & 0x10) != 0)
    {
LABEL_3:
      v3 = *(this + 7);
      if ((v1 & 8) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v2 = 0.0;
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((v1 & 8) != 0)
  {
LABEL_4:
    v4 = *(this + 6);
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  v4 = 0;
  if ((v1 & 0x80) != 0)
  {
LABEL_5:
    v5 = *(this + 34);
    if ((*(this + 18) & 0x100) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  v5 = 0;
  if ((*(this + 18) & 0x100) != 0)
  {
LABEL_6:
    v6 = *(this + 35);
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  v6 = 0;
  if ((v1 & 0x20) != 0)
  {
LABEL_7:
    v7 = *(this + 32);
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v7 = 0;
  if ((v1 & 0x40) != 0)
  {
LABEL_8:
    v8 = *(this + 33);
    if ((v1 & 2) != 0)
    {
      goto LABEL_9;
    }

LABEL_20:
    v9 = 0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_10;
    }

LABEL_21:
    v10 = 0;
    return v3 ^ *&v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
  }

LABEL_19:
  v8 = 0;
  if ((v1 & 2) == 0)
  {
    goto LABEL_20;
  }

LABEL_9:
  v9 = *(this + 4);
  if ((v1 & 4) == 0)
  {
    goto LABEL_21;
  }

LABEL_10:
  v10 = *(this + 5);
  return v3 ^ *&v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
}

void CMMsl::MotionContextActivity::~MotionContextActivity(CMMsl::MotionContextActivity *this)
{
  v2 = *(this + 1);
  *this = off_1004202C8;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::MotionContextActivity::~MotionContextActivity(this);

  operator delete();
}

uint64_t CMMsl::MotionContextActivity::MotionContextActivity(uint64_t this, const CMMsl::MotionContextActivity *a2)
{
  *this = off_1004202C8;
  *(this + 8) = 0;
  *(this + 24) = 0;
  if ((*(a2 + 28) & 2) != 0)
  {
    v3 = *(a2 + 6);
    *(this + 28) = 2;
    *(this + 24) = v3;
    v2 = 3;
    if ((*(a2 + 28) & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v2 = 1;
  if (*(a2 + 28))
  {
LABEL_5:
    v4 = *(a2 + 2);
    *(this + 28) = v2;
    *(this + 16) = v4;
  }

LABEL_6:
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const CMMsl::MotionContextActivity *CMMsl::MotionContextActivity::operator=(const CMMsl::MotionContextActivity *a1, const CMMsl::MotionContextActivity *a2)
{
  if (a1 != a2)
  {
    CMMsl::MotionContextActivity::MotionContextActivity(&v8, a2);
    v4 = *(a1 + 2);
    v3 = *(a1 + 3);
    v5 = v11;
    *(a1 + 2) = v10;
    *(a1 + 3) = v5;
    v10 = v4;
    v11 = v3;
    v6 = *(a1 + 1);
    *(a1 + 1) = v9;
    v9 = v6;
    CMMsl::MotionContextActivity::~MotionContextActivity(&v8);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::MotionContextActivity *a2, CMMsl::MotionContextActivity *a3)
{
  v3 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v3;
  v4 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v4;
  result = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = result;
  v6 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v6;
  return result;
}

uint64_t CMMsl::MotionContextActivity::MotionContextActivity(uint64_t a1, uint64_t a2)
{
  *a1 = off_1004202C8;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(a1 + 24) = *(a2 + 24);
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

void *CMMsl::MotionContextActivity::operator=(void *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::MotionContextActivity::MotionContextActivity(&v8, a2);
    v4 = a1[2];
    v3 = a1[3];
    v5 = v11;
    a1[2] = v10;
    a1[3] = v5;
    v10 = v4;
    v11 = v3;
    v6 = a1[1];
    a1[1] = v9;
    v9 = v6;
    CMMsl::MotionContextActivity::~MotionContextActivity(&v8);
  }

  return a1;
}

uint64_t CMMsl::MotionContextActivity::formatText(CMMsl::MotionContextActivity *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "impulse");
  }

  v6 = *(this + 28);
  if ((v6 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "state", *(this + 6));
    v6 = *(this + 28);
  }

  if (v6)
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 2));
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::MotionContextActivity::readFrom(CMMsl::MotionContextActivity *this, PB::Reader *a2)
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
            goto LABEL_55;
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
      if ((v10 >> 3) == 3)
      {
        operator new();
      }

      if (v22 == 2)
      {
        *(this + 28) |= 1u;
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
      }

      else if (v22 == 1)
      {
        *(this + 28) |= 2u;
        v24 = *(a2 + 1);
        v23 = *(a2 + 2);
        v25 = *a2;
        if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
        {
          v33 = 0;
          v34 = 0;
          v28 = 0;
          v17 = v23 >= v24;
          v35 = v23 - v24;
          if (!v17)
          {
            v35 = 0;
          }

          v36 = (v25 + v24);
          v37 = v24 + 1;
          while (1)
          {
            if (!v35)
            {
              LODWORD(v28) = 0;
              *(a2 + 24) = 1;
              goto LABEL_50;
            }

            v38 = *v36;
            *(a2 + 1) = v37;
            v28 |= (v38 & 0x7F) << v33;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            --v35;
            ++v36;
            ++v37;
            v14 = v34++ > 8;
            if (v14)
            {
LABEL_45:
              LODWORD(v28) = 0;
              goto LABEL_50;
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
              goto LABEL_45;
            }
          }
        }

LABEL_50:
        *(this + 6) = v28;
      }

      else if ((PB::Reader::skip(a2, v22, v10 & 7, 0) & 1) == 0)
      {
        v40 = 0;
        return v40 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_55:
  v40 = v4 ^ 1;
  return v40 & 1;
}

uint64_t CMMsl::MotionContextActivity::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 28);
  if ((v4 & 2) != 0)
  {
    this = PB::Writer::writeVarInt(a2, *(this + 24), 1u);
    v4 = *(v3 + 28);
  }

  if (v4)
  {
    this = PB::Writer::write(a2, *(v3 + 16), 2u);
  }

  v5 = *(v3 + 8);
  if (v5)
  {

    return PB::Writer::writeSubmessage(a2, v5, 3u);
  }

  return this;
}

uint64_t CMMsl::MotionContextActivity::hash_value(CMMsl::MotionContextActivity *this)
{
  if ((*(this + 28) & 2) == 0)
  {
    v1 = 0;
    if (*(this + 28))
    {
      goto LABEL_3;
    }

LABEL_7:
    v2 = 0.0;
    goto LABEL_8;
  }

  v1 = *(this + 6);
  if ((*(this + 28) & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  v2 = *(this + 2);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

LABEL_8:
  v3 = *(this + 1);
  if (v3)
  {
    v4 = *(v3 + 16);
    if ((*(v3 + 20) & 2) == 0)
    {
      v4 = 0;
    }

    v5 = *(v3 + 8) == 0.0 || (*(v3 + 20) & 1) == 0;
    v6 = *(v3 + 8);
    if (v5)
    {
      v6 = 0;
    }

    v3 = v6 ^ v4;
  }

  return *&v2 ^ v1 ^ v3;
}

uint64_t CMMsl::MotionContextActivity::makeImpulse(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

void CMMsl::MotionGPSLocation::~MotionGPSLocation(CMMsl::MotionGPSLocation *this)
{
  *this = off_100420300;
  v2 = *(this + 14);
  *(this + 14) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::MotionGPSLocation::~MotionGPSLocation(this);

  operator delete();
}

uint64_t CMMsl::MotionGPSLocation::MotionGPSLocation(uint64_t this, const CMMsl::MotionGPSLocation *a2)
{
  *this = off_100420300;
  *(this + 112) = 0;
  *(this + 180) = 0;
  v2 = *(a2 + 45);
  if ((v2 & 0x800) != 0)
  {
    v4 = *(a2 + 12);
    v3 = 2048;
    *(this + 180) = 2048;
    *(this + 96) = v4;
    v2 = *(a2 + 45);
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x40) != 0)
  {
LABEL_5:
    v5 = *(a2 + 7);
    v3 |= 0x40u;
    *(this + 180) = v3;
    *(this + 56) = v5;
    v2 = *(a2 + 45);
  }

LABEL_6:
  if ((v2 & 0x80) != 0)
  {
    v10 = *(a2 + 8);
    v3 |= 0x80u;
    *(this + 180) = v3;
    *(this + 64) = v10;
    v2 = *(a2 + 45);
    if ((v2 & 0x200) == 0)
    {
LABEL_8:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_39;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_8;
  }

  v11 = *(a2 + 10);
  v3 |= 0x200u;
  *(this + 180) = v3;
  *(this + 80) = v11;
  v2 = *(a2 + 45);
  if ((v2 & 0x400) == 0)
  {
LABEL_9:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_40;
  }

LABEL_39:
  v12 = *(a2 + 11);
  v3 |= 0x400u;
  *(this + 180) = v3;
  *(this + 88) = v12;
  v2 = *(a2 + 45);
  if ((v2 & 0x20) == 0)
  {
LABEL_10:
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_41;
  }

LABEL_40:
  v13 = *(a2 + 6);
  v3 |= 0x20u;
  *(this + 180) = v3;
  *(this + 48) = v13;
  v2 = *(a2 + 45);
  if ((v2 & 2) == 0)
  {
LABEL_11:
    if ((v2 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_42;
  }

LABEL_41:
  v14 = *(a2 + 2);
  v3 |= 2u;
  *(this + 180) = v3;
  *(this + 16) = v14;
  v2 = *(a2 + 45);
  if ((v2 & 4) == 0)
  {
LABEL_12:
    if ((v2 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_43;
  }

LABEL_42:
  v15 = *(a2 + 3);
  v3 |= 4u;
  *(this + 180) = v3;
  *(this + 24) = v15;
  v2 = *(a2 + 45);
  if ((v2 & 1) == 0)
  {
LABEL_13:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_44;
  }

LABEL_43:
  v16 = *(a2 + 1);
  v3 |= 1u;
  *(this + 180) = v3;
  *(this + 8) = v16;
  v2 = *(a2 + 45);
  if ((v2 & 0x2000) == 0)
  {
LABEL_14:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_45;
  }

LABEL_44:
  v17 = *(a2 + 15);
  v3 |= 0x2000u;
  *(this + 180) = v3;
  *(this + 120) = v17;
  v2 = *(a2 + 45);
  if ((v2 & 0x800000) == 0)
  {
LABEL_15:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_46;
  }

LABEL_45:
  v18 = *(a2 + 41);
  v3 |= 0x800000u;
  *(this + 180) = v3;
  *(this + 164) = v18;
  v2 = *(a2 + 45);
  if ((v2 & 0x1000) == 0)
  {
LABEL_16:
    if ((v2 & 0x1000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_47;
  }

LABEL_46:
  v19 = *(a2 + 13);
  v3 |= 0x1000u;
  *(this + 180) = v3;
  *(this + 104) = v19;
  v2 = *(a2 + 45);
  if ((v2 & 0x1000000) == 0)
  {
LABEL_17:
    if ((v2 & 0x2000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_48;
  }

LABEL_47:
  v20 = *(a2 + 42);
  v3 |= 0x1000000u;
  *(this + 180) = v3;
  *(this + 168) = v20;
  v2 = *(a2 + 45);
  if ((v2 & 0x2000000) == 0)
  {
LABEL_18:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_49;
  }

LABEL_48:
  v21 = *(a2 + 43);
  v3 |= 0x2000000u;
  *(this + 180) = v3;
  *(this + 172) = v21;
  v2 = *(a2 + 45);
  if ((v2 & 0x20000) == 0)
  {
LABEL_19:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_50;
  }

LABEL_49:
  v22 = *(a2 + 35);
  v3 |= 0x20000u;
  *(this + 180) = v3;
  *(this + 140) = v22;
  v2 = *(a2 + 45);
  if ((v2 & 0x80000) == 0)
  {
LABEL_20:
    if ((v2 & 0x40000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_51;
  }

LABEL_50:
  v23 = *(a2 + 37);
  v3 |= 0x80000u;
  *(this + 180) = v3;
  *(this + 148) = v23;
  v2 = *(a2 + 45);
  if ((v2 & 0x40000) == 0)
  {
LABEL_21:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_52;
  }

LABEL_51:
  v24 = *(a2 + 36);
  v3 |= 0x40000u;
  *(this + 180) = v3;
  *(this + 144) = v24;
  v2 = *(a2 + 45);
  if ((v2 & 0x100) == 0)
  {
LABEL_22:
    if ((v2 & 8) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_53;
  }

LABEL_52:
  v25 = *(a2 + 9);
  v3 |= 0x100u;
  *(this + 180) = v3;
  *(this + 72) = v25;
  v2 = *(a2 + 45);
  if ((v2 & 8) == 0)
  {
LABEL_23:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_54;
  }

LABEL_53:
  v26 = *(a2 + 4);
  v3 |= 8u;
  *(this + 180) = v3;
  *(this + 32) = v26;
  v2 = *(a2 + 45);
  if ((v2 & 0x10) == 0)
  {
LABEL_24:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_55;
  }

LABEL_54:
  v27 = *(a2 + 5);
  v3 |= 0x10u;
  *(this + 180) = v3;
  *(this + 40) = v27;
  v2 = *(a2 + 45);
  if ((v2 & 0x200000) == 0)
  {
LABEL_25:
    if ((v2 & 0x4000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_56;
  }

LABEL_55:
  v28 = *(a2 + 39);
  v3 |= 0x200000u;
  *(this + 180) = v3;
  *(this + 156) = v28;
  v2 = *(a2 + 45);
  if ((v2 & 0x4000000) == 0)
  {
LABEL_26:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_57;
  }

LABEL_56:
  v3 |= 0x4000000u;
  *(this + 176) = *(a2 + 44);
  *(this + 180) = v3;
  v2 = *(a2 + 45);
  if ((v2 & 0x400000) == 0)
  {
LABEL_27:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_58;
  }

LABEL_57:
  v29 = *(a2 + 40);
  v3 |= 0x400000u;
  *(this + 180) = v3;
  *(this + 160) = v29;
  v2 = *(a2 + 45);
  if ((v2 & 0x10000) == 0)
  {
LABEL_28:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_58:
  v30 = *(a2 + 34);
  v3 |= 0x10000u;
  *(this + 180) = v3;
  *(this + 136) = v30;
  if ((*(a2 + 45) & 0x100000) != 0)
  {
LABEL_29:
    v6 = *(a2 + 38);
    *(this + 180) = v3 | 0x100000;
    *(this + 152) = v6;
  }

LABEL_30:
  if (*(a2 + 14))
  {
    operator new();
  }

  v7 = *(a2 + 45);
  if ((v7 & 0x8000) != 0)
  {
    v8 = *(a2 + 33);
    *(this + 180) |= 0x8000u;
    *(this + 132) = v8;
    v7 = *(a2 + 45);
  }

  if ((v7 & 0x4000) != 0)
  {
    v9 = *(a2 + 32);
    *(this + 180) |= 0x4000u;
    *(this + 128) = v9;
  }

  return this;
}

CMMsl *CMMsl::MotionGPSLocation::operator=(CMMsl *a1, const CMMsl::MotionGPSLocation *a2)
{
  if (a1 != a2)
  {
    CMMsl::MotionGPSLocation::MotionGPSLocation(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::MotionGPSLocation::~MotionGPSLocation(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::MotionGPSLocation *a2, CMMsl::MotionGPSLocation *a3)
{
  v3 = *(this + 45);
  *(this + 45) = *(a2 + 45);
  *(a2 + 45) = v3;
  v4 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v4;
  v5 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v5;
  v6 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v6;
  v7 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v7;
  v8 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v8;
  v9 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v9;
  v10 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v10;
  v11 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v11;
  v12 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v12;
  v13 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v13;
  v14 = *(this + 41);
  *(this + 41) = *(a2 + 41);
  *(a2 + 41) = v14;
  v15 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v15;
  LODWORD(v15) = *(this + 42);
  *(this + 42) = *(a2 + 42);
  *(a2 + 42) = v15;
  v16 = *(this + 43);
  *(this + 43) = *(a2 + 43);
  *(a2 + 43) = v16;
  LODWORD(v15) = *(this + 35);
  *(this + 35) = *(a2 + 35);
  *(a2 + 35) = v15;
  LODWORD(v15) = *(this + 37);
  *(this + 37) = *(a2 + 37);
  *(a2 + 37) = v15;
  LODWORD(v15) = *(this + 36);
  *(this + 36) = *(a2 + 36);
  *(a2 + 36) = v15;
  v17 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v17;
  v18 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v18;
  v19 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v19;
  v20 = *(this + 39);
  *(this + 39) = *(a2 + 39);
  *(a2 + 39) = v20;
  v21 = *(this + 44);
  *(this + 44) = *(a2 + 44);
  *(a2 + 44) = v21;
  v22 = *(this + 40);
  *(this + 40) = *(a2 + 40);
  *(a2 + 40) = v22;
  v23 = *(this + 34);
  *(this + 34) = *(a2 + 34);
  *(a2 + 34) = v23;
  v24 = *(this + 38);
  *(this + 38) = *(a2 + 38);
  *(a2 + 38) = v24;
  v25 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v25;
  LODWORD(v25) = *(this + 33);
  *(this + 33) = *(a2 + 33);
  *(a2 + 33) = v25;
  result = *(this + 32);
  *(this + 32) = *(a2 + 32);
  *(a2 + 32) = result;
  return result;
}

uint64_t CMMsl::MotionGPSLocation::MotionGPSLocation(uint64_t a1, uint64_t a2)
{
  *a1 = off_100420300;
  *(a1 + 112) = 0;
  *(a1 + 180) = *(a2 + 180);
  *(a2 + 180) = 0;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 164) = *(a2 + 164);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 172) = *(a2 + 172);
  *(a1 + 140) = *(a2 + 140);
  *(a1 + 148) = *(a2 + 148);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 156) = *(a2 + 156);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  v4 = *(a2 + 112);
  *(a2 + 112) = 0;
  v5 = *(a1 + 112);
  *(a1 + 112) = v4;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *(a1 + 132) = *(a2 + 132);
  *(a1 + 128) = *(a2 + 128);
  return a1;
}

CMMsl *CMMsl::MotionGPSLocation::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::MotionGPSLocation::MotionGPSLocation(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::MotionGPSLocation::~MotionGPSLocation(v5);
  }

  return a1;
}

uint64_t CMMsl::MotionGPSLocation::formatText(CMMsl::MotionGPSLocation *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 45);
  if (v5)
  {
    PB::TextFormatter::format(a2, "altitude", *(this + 1));
    v5 = *(this + 45);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_37;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "course", *(this + 2));
  v5 = *(this + 45);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_38;
  }

LABEL_37:
  PB::TextFormatter::format(a2, "courseAccuracy", *(this + 3));
  v5 = *(this + 45);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(a2, "deltaDistance", *(this + 4));
  v5 = *(this + 45);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(a2, "deltaDistanceAccuracy", *(this + 5));
  v5 = *(this + 45);
  if ((v5 & 0x4000) == 0)
  {
LABEL_7:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_41;
  }

LABEL_40:
  PB::TextFormatter::format(a2, "demConfidence", *(this + 32));
  v5 = *(this + 45);
  if ((v5 & 0x8000) == 0)
  {
LABEL_8:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_42;
  }

LABEL_41:
  PB::TextFormatter::format(a2, "demNumContiguousFlatPoints", *(this + 33));
  v5 = *(this + 45);
  if ((v5 & 0x10000) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_43;
  }

LABEL_42:
  PB::TextFormatter::format(a2, "gnssModesOfOperation", *(this + 34));
  v5 = *(this + 45);
  if ((v5 & 0x20) == 0)
  {
LABEL_10:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_44;
  }

LABEL_43:
  PB::TextFormatter::format(a2, "horizontalAccuracy", *(this + 6));
  v5 = *(this + 45);
  if ((v5 & 0x20000) == 0)
  {
LABEL_11:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_45;
  }

LABEL_44:
  PB::TextFormatter::format(a2, "horzUncSemiMaj", *(this + 35));
  v5 = *(this + 45);
  if ((v5 & 0x40000) == 0)
  {
LABEL_12:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_46;
  }

LABEL_45:
  PB::TextFormatter::format(a2, "horzUncSemiMajAz", *(this + 36));
  v5 = *(this + 45);
  if ((v5 & 0x80000) == 0)
  {
LABEL_13:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_47;
  }

LABEL_46:
  PB::TextFormatter::format(a2, "horzUncSemiMin", *(this + 37));
  v5 = *(this + 45);
  if ((v5 & 0x40) == 0)
  {
LABEL_14:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_48;
  }

LABEL_47:
  PB::TextFormatter::format(a2, "latitude", *(this + 7));
  v5 = *(this + 45);
  if ((v5 & 0x80) == 0)
  {
LABEL_15:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_49;
  }

LABEL_48:
  PB::TextFormatter::format(a2, "longitude", *(this + 8));
  v5 = *(this + 45);
  if ((v5 & 0x100000) == 0)
  {
LABEL_16:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_50;
  }

LABEL_49:
  PB::TextFormatter::format(a2, "notificationType", *(this + 38));
  v5 = *(this + 45);
  if ((v5 & 0x100) == 0)
  {
LABEL_17:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_51;
  }

LABEL_50:
  PB::TextFormatter::format(a2, "odometer", *(this + 9));
  v5 = *(this + 45);
  if ((v5 & 0x200000) == 0)
  {
LABEL_18:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_52;
  }

LABEL_51:
  PB::TextFormatter::format(a2, "originDevice", *(this + 39));
  v5 = *(this + 45);
  if ((v5 & 0x400000) == 0)
  {
LABEL_19:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_53;
  }

LABEL_52:
  PB::TextFormatter::format(a2, "roadClass", *(this + 40));
  v5 = *(this + 45);
  if ((v5 & 0x200) == 0)
  {
LABEL_20:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_54;
  }

LABEL_53:
  PB::TextFormatter::format(a2, "speed", *(this + 10));
  v5 = *(this + 45);
  if ((v5 & 0x400) == 0)
  {
LABEL_21:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_55;
  }

LABEL_54:
  PB::TextFormatter::format(a2, "speedAccuracy", *(this + 11));
  v5 = *(this + 45);
  if ((v5 & 0x800) == 0)
  {
LABEL_22:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_55:
  PB::TextFormatter::format(a2, "timestamp", *(this + 12));
  if ((*(this + 45) & 0x1000) != 0)
  {
LABEL_23:
    PB::TextFormatter::format(a2, "timestampGps", *(this + 13));
  }

LABEL_24:
  v6 = *(this + 14);
  if (v6)
  {
    (*(*v6 + 32))(v6, a2, "trackRunData");
  }

  v7 = *(this + 45);
  if ((v7 & 0x800000) != 0)
  {
    PB::TextFormatter::format(a2, "type", *(this + 41));
    v7 = *(this + 45);
    if ((v7 & 0x1000000) == 0)
    {
LABEL_28:
      if ((v7 & 0x2000000) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_59;
    }
  }

  else if ((v7 & 0x1000000) == 0)
  {
    goto LABEL_28;
  }

  PB::TextFormatter::format(a2, "undulation", *(this + 42));
  v7 = *(this + 45);
  if ((v7 & 0x2000000) == 0)
  {
LABEL_29:
    if ((v7 & 0x2000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_60;
  }

LABEL_59:
  PB::TextFormatter::format(a2, "undulationModel", *(this + 43));
  v7 = *(this + 45);
  if ((v7 & 0x2000) == 0)
  {
LABEL_30:
    if ((v7 & 0x4000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

LABEL_60:
  PB::TextFormatter::format(a2, "verticalAccuracy", *(this + 15));
  if ((*(this + 45) & 0x4000000) != 0)
  {
LABEL_31:
    PB::TextFormatter::format(a2, "wayForm", *(this + 44));
  }

LABEL_32:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::MotionGPSLocation::readFrom(CMMsl::MotionGPSLocation *this, PB::Reader *a2)
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
            goto LABEL_243;
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
          *(this + 45) |= 0x800u;
          v22 = *(a2 + 1);
          if (v22 > 0xFFFFFFFFFFFFFFF7 || v22 + 8 > *(a2 + 2))
          {
            goto LABEL_123;
          }

          *(this + 12) = *(*a2 + v22);
          goto LABEL_205;
        case 2u:
          *(this + 45) |= 0x40u;
          v44 = *(a2 + 1);
          if (v44 > 0xFFFFFFFFFFFFFFF7 || v44 + 8 > *(a2 + 2))
          {
            goto LABEL_123;
          }

          *(this + 7) = *(*a2 + v44);
          goto LABEL_205;
        case 3u:
          *(this + 45) |= 0x80u;
          v39 = *(a2 + 1);
          if (v39 > 0xFFFFFFFFFFFFFFF7 || v39 + 8 > *(a2 + 2))
          {
            goto LABEL_123;
          }

          *(this + 8) = *(*a2 + v39);
          goto LABEL_205;
        case 4u:
          *(this + 45) |= 0x200u;
          v42 = *(a2 + 1);
          if (v42 > 0xFFFFFFFFFFFFFFF7 || v42 + 8 > *(a2 + 2))
          {
            goto LABEL_123;
          }

          *(this + 10) = *(*a2 + v42);
          goto LABEL_205;
        case 5u:
          *(this + 45) |= 0x400u;
          v27 = *(a2 + 1);
          if (v27 > 0xFFFFFFFFFFFFFFF7 || v27 + 8 > *(a2 + 2))
          {
            goto LABEL_123;
          }

          *(this + 11) = *(*a2 + v27);
          goto LABEL_205;
        case 6u:
          *(this + 45) |= 0x20u;
          v55 = *(a2 + 1);
          if (v55 > 0xFFFFFFFFFFFFFFF7 || v55 + 8 > *(a2 + 2))
          {
            goto LABEL_123;
          }

          *(this + 6) = *(*a2 + v55);
          goto LABEL_205;
        case 7u:
          *(this + 45) |= 2u;
          v74 = *(a2 + 1);
          if (v74 > 0xFFFFFFFFFFFFFFF7 || v74 + 8 > *(a2 + 2))
          {
            goto LABEL_123;
          }

          *(this + 2) = *(*a2 + v74);
          goto LABEL_205;
        case 8u:
          *(this + 45) |= 4u;
          v43 = *(a2 + 1);
          if (v43 > 0xFFFFFFFFFFFFFFF7 || v43 + 8 > *(a2 + 2))
          {
            goto LABEL_123;
          }

          *(this + 3) = *(*a2 + v43);
          goto LABEL_205;
        case 9u:
          *(this + 45) |= 1u;
          v85 = *(a2 + 1);
          if (v85 > 0xFFFFFFFFFFFFFFF7 || v85 + 8 > *(a2 + 2))
          {
            goto LABEL_123;
          }

          *(this + 1) = *(*a2 + v85);
          goto LABEL_205;
        case 0xAu:
          *(this + 45) |= 0x2000u;
          v29 = *(a2 + 1);
          if (v29 > 0xFFFFFFFFFFFFFFF7 || v29 + 8 > *(a2 + 2))
          {
            goto LABEL_123;
          }

          *(this + 15) = *(*a2 + v29);
          goto LABEL_205;
        case 0xBu:
          *(this + 45) |= 0x800000u;
          v77 = *(a2 + 1);
          v76 = *(a2 + 2);
          v78 = *a2;
          if (v77 <= 0xFFFFFFFFFFFFFFF5 && v77 + 10 <= v76)
          {
            v79 = 0;
            v80 = 0;
            v81 = 0;
            v82 = (v78 + v77);
            v83 = v77 + 1;
            do
            {
              *(a2 + 1) = v83;
              v84 = *v82++;
              v81 |= (v84 & 0x7F) << v79;
              if ((v84 & 0x80) == 0)
              {
                goto LABEL_232;
              }

              v79 += 7;
              ++v83;
              v14 = v80++ > 8;
            }

            while (!v14);
LABEL_179:
            LODWORD(v81) = 0;
            goto LABEL_232;
          }

          v138 = 0;
          v139 = 0;
          v81 = 0;
          v17 = v76 >= v77;
          v140 = v76 - v77;
          if (!v17)
          {
            v140 = 0;
          }

          v141 = (v78 + v77);
          v142 = v77 + 1;
          while (2)
          {
            if (v140)
            {
              v143 = *v141;
              *(a2 + 1) = v142;
              v81 |= (v143 & 0x7F) << v138;
              if (v143 < 0)
              {
                v138 += 7;
                --v140;
                ++v141;
                ++v142;
                v14 = v139++ > 8;
                if (v14)
                {
                  goto LABEL_179;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v81) = 0;
              }
            }

            else
            {
              LODWORD(v81) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_232:
          *(this + 41) = v81;
          goto LABEL_207;
        case 0xCu:
          *(this + 45) |= 0x1000u;
          v26 = *(a2 + 1);
          if (v26 > 0xFFFFFFFFFFFFFFF7 || v26 + 8 > *(a2 + 2))
          {
            goto LABEL_123;
          }

          *(this + 13) = *(*a2 + v26);
          goto LABEL_205;
        case 0xDu:
          *(this + 45) |= 0x1000000u;
          v28 = *(a2 + 1);
          if (v28 > 0xFFFFFFFFFFFFFFFBLL || v28 + 4 > *(a2 + 2))
          {
            goto LABEL_123;
          }

          *(this + 42) = *(*a2 + v28);
          goto LABEL_61;
        case 0xEu:
          *(this + 45) |= 0x2000000u;
          v66 = *(a2 + 1);
          v65 = *(a2 + 2);
          v67 = *a2;
          if (v66 <= 0xFFFFFFFFFFFFFFF5 && v66 + 10 <= v65)
          {
            v68 = 0;
            v69 = 0;
            v70 = 0;
            v71 = (v67 + v66);
            v72 = v66 + 1;
            do
            {
              *(a2 + 1) = v72;
              v73 = *v71++;
              v70 |= (v73 & 0x7F) << v68;
              if ((v73 & 0x80) == 0)
              {
                goto LABEL_229;
              }

              v68 += 7;
              ++v72;
              v14 = v69++ > 8;
            }

            while (!v14);
LABEL_171:
            LODWORD(v70) = 0;
            goto LABEL_229;
          }

          v132 = 0;
          v133 = 0;
          v70 = 0;
          v17 = v65 >= v66;
          v134 = v65 - v66;
          if (!v17)
          {
            v134 = 0;
          }

          v135 = (v67 + v66);
          v136 = v66 + 1;
          while (2)
          {
            if (v134)
            {
              v137 = *v135;
              *(a2 + 1) = v136;
              v70 |= (v137 & 0x7F) << v132;
              if (v137 < 0)
              {
                v132 += 7;
                --v134;
                ++v135;
                ++v136;
                v14 = v133++ > 8;
                if (v14)
                {
                  goto LABEL_171;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v70) = 0;
              }
            }

            else
            {
              LODWORD(v70) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_229:
          *(this + 43) = v70;
          goto LABEL_207;
        case 0xFu:
          *(this + 45) |= 0x20000u;
          v25 = *(a2 + 1);
          if (v25 > 0xFFFFFFFFFFFFFFFBLL || v25 + 4 > *(a2 + 2))
          {
            goto LABEL_123;
          }

          *(this + 35) = *(*a2 + v25);
          goto LABEL_61;
        case 0x10u:
          *(this + 45) |= 0x80000u;
          v40 = *(a2 + 1);
          if (v40 > 0xFFFFFFFFFFFFFFFBLL || v40 + 4 > *(a2 + 2))
          {
            goto LABEL_123;
          }

          *(this + 37) = *(*a2 + v40);
          goto LABEL_61;
        case 0x11u:
          *(this + 45) |= 0x40000u;
          v24 = *(a2 + 1);
          if (v24 > 0xFFFFFFFFFFFFFFFBLL || v24 + 4 > *(a2 + 2))
          {
            goto LABEL_123;
          }

          *(this + 36) = *(*a2 + v24);
          goto LABEL_61;
        case 0x12u:
          *(this + 45) |= 0x100u;
          v45 = *(a2 + 1);
          if (v45 > 0xFFFFFFFFFFFFFFF7 || v45 + 8 > *(a2 + 2))
          {
            goto LABEL_123;
          }

          *(this + 9) = *(*a2 + v45);
          goto LABEL_205;
        case 0x13u:
          *(this + 45) |= 8u;
          v75 = *(a2 + 1);
          if (v75 > 0xFFFFFFFFFFFFFFF7 || v75 + 8 > *(a2 + 2))
          {
            goto LABEL_123;
          }

          *(this + 4) = *(*a2 + v75);
          goto LABEL_205;
        case 0x14u:
          *(this + 45) |= 0x10u;
          v95 = *(a2 + 1);
          if (v95 > 0xFFFFFFFFFFFFFFF7 || v95 + 8 > *(a2 + 2))
          {
            goto LABEL_123;
          }

          *(this + 5) = *(*a2 + v95);
LABEL_205:
          v41 = *(a2 + 1) + 8;
          goto LABEL_206;
        case 0x15u:
          *(this + 45) |= 0x200000u;
          v47 = *(a2 + 1);
          v46 = *(a2 + 2);
          v48 = *a2;
          if (v47 <= 0xFFFFFFFFFFFFFFF5 && v47 + 10 <= v46)
          {
            v49 = 0;
            v50 = 0;
            v51 = 0;
            v52 = (v48 + v47);
            v53 = v47 + 1;
            do
            {
              *(a2 + 1) = v53;
              v54 = *v52++;
              v51 |= (v54 & 0x7F) << v49;
              if ((v54 & 0x80) == 0)
              {
                goto LABEL_223;
              }

              v49 += 7;
              ++v53;
              v14 = v50++ > 8;
            }

            while (!v14);
LABEL_155:
            LODWORD(v51) = 0;
            goto LABEL_223;
          }

          v120 = 0;
          v121 = 0;
          v51 = 0;
          v17 = v46 >= v47;
          v122 = v46 - v47;
          if (!v17)
          {
            v122 = 0;
          }

          v123 = (v48 + v47);
          v124 = v47 + 1;
          while (2)
          {
            if (v122)
            {
              v125 = *v123;
              *(a2 + 1) = v124;
              v51 |= (v125 & 0x7F) << v120;
              if (v125 < 0)
              {
                v120 += 7;
                --v122;
                ++v123;
                ++v124;
                v14 = v121++ > 8;
                if (v14)
                {
                  goto LABEL_155;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v51) = 0;
              }
            }

            else
            {
              LODWORD(v51) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_223:
          *(this + 39) = v51;
          goto LABEL_207;
        case 0x16u:
          *(this + 45) |= 0x4000000u;
          v57 = *(a2 + 1);
          v56 = *(a2 + 2);
          v58 = *a2;
          if (v57 <= 0xFFFFFFFFFFFFFFF5 && v57 + 10 <= v56)
          {
            v59 = 0;
            v60 = 0;
            v61 = 0;
            v62 = (v58 + v57);
            v63 = v57 + 1;
            do
            {
              *(a2 + 1) = v63;
              v64 = *v62++;
              v61 |= (v64 & 0x7F) << v59;
              if ((v64 & 0x80) == 0)
              {
                goto LABEL_226;
              }

              v59 += 7;
              ++v63;
              v14 = v60++ > 8;
            }

            while (!v14);
LABEL_163:
            LODWORD(v61) = 0;
            goto LABEL_226;
          }

          v126 = 0;
          v127 = 0;
          v61 = 0;
          v17 = v56 >= v57;
          v128 = v56 - v57;
          if (!v17)
          {
            v128 = 0;
          }

          v129 = (v58 + v57);
          v130 = v57 + 1;
          while (2)
          {
            if (v128)
            {
              v131 = *v129;
              *(a2 + 1) = v130;
              v61 |= (v131 & 0x7F) << v126;
              if (v131 < 0)
              {
                v126 += 7;
                --v128;
                ++v129;
                ++v130;
                v14 = v127++ > 8;
                if (v14)
                {
                  goto LABEL_163;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v61) = 0;
              }
            }

            else
            {
              LODWORD(v61) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_226:
          *(this + 44) = v61;
          goto LABEL_207;
        case 0x17u:
          *(this + 45) |= 0x400000u;
          v87 = *(a2 + 1);
          v86 = *(a2 + 2);
          v88 = *a2;
          if (v87 <= 0xFFFFFFFFFFFFFFF5 && v87 + 10 <= v86)
          {
            v89 = 0;
            v90 = 0;
            v91 = 0;
            v92 = (v88 + v87);
            v93 = v87 + 1;
            do
            {
              *(a2 + 1) = v93;
              v94 = *v92++;
              v91 |= (v94 & 0x7F) << v89;
              if ((v94 & 0x80) == 0)
              {
                goto LABEL_235;
              }

              v89 += 7;
              ++v93;
              v14 = v90++ > 8;
            }

            while (!v14);
LABEL_187:
            LODWORD(v91) = 0;
            goto LABEL_235;
          }

          v144 = 0;
          v145 = 0;
          v91 = 0;
          v17 = v86 >= v87;
          v146 = v86 - v87;
          if (!v17)
          {
            v146 = 0;
          }

          v147 = (v88 + v87);
          v148 = v87 + 1;
          while (2)
          {
            if (v146)
            {
              v149 = *v147;
              *(a2 + 1) = v148;
              v91 |= (v149 & 0x7F) << v144;
              if (v149 < 0)
              {
                v144 += 7;
                --v146;
                ++v147;
                ++v148;
                v14 = v145++ > 8;
                if (v14)
                {
                  goto LABEL_187;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v91) = 0;
              }
            }

            else
            {
              LODWORD(v91) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_235:
          *(this + 40) = v91;
          goto LABEL_207;
        case 0x18u:
          *(this + 45) |= 0x10000u;
          v97 = *(a2 + 1);
          v96 = *(a2 + 2);
          v98 = *a2;
          if (v97 <= 0xFFFFFFFFFFFFFFF5 && v97 + 10 <= v96)
          {
            v99 = 0;
            v100 = 0;
            v101 = 0;
            v102 = (v98 + v97);
            v103 = v97 + 1;
            do
            {
              *(a2 + 1) = v103;
              v104 = *v102++;
              v101 |= (v104 & 0x7F) << v99;
              if ((v104 & 0x80) == 0)
              {
                goto LABEL_238;
              }

              v99 += 7;
              ++v103;
              v14 = v100++ > 8;
            }

            while (!v14);
LABEL_195:
            LODWORD(v101) = 0;
            goto LABEL_238;
          }

          v150 = 0;
          v151 = 0;
          v101 = 0;
          v17 = v96 >= v97;
          v152 = v96 - v97;
          if (!v17)
          {
            v152 = 0;
          }

          v153 = (v98 + v97);
          v154 = v97 + 1;
          while (2)
          {
            if (v152)
            {
              v155 = *v153;
              *(a2 + 1) = v154;
              v101 |= (v155 & 0x7F) << v150;
              if (v155 < 0)
              {
                v150 += 7;
                --v152;
                ++v153;
                ++v154;
                v14 = v151++ > 8;
                if (v14)
                {
                  goto LABEL_195;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v101) = 0;
              }
            }

            else
            {
              LODWORD(v101) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_238:
          *(this + 34) = v101;
          goto LABEL_207;
        case 0x19u:
          *(this + 45) |= 0x100000u;
          v31 = *(a2 + 1);
          v30 = *(a2 + 2);
          v32 = *a2;
          if (v31 <= 0xFFFFFFFFFFFFFFF5 && v31 + 10 <= v30)
          {
            v33 = 0;
            v34 = 0;
            v35 = 0;
            v36 = (v32 + v31);
            v37 = v31 + 1;
            do
            {
              *(a2 + 1) = v37;
              v38 = *v36++;
              v35 |= (v38 & 0x7F) << v33;
              if ((v38 & 0x80) == 0)
              {
                goto LABEL_220;
              }

              v33 += 7;
              ++v37;
              v14 = v34++ > 8;
            }

            while (!v14);
LABEL_147:
            LODWORD(v35) = 0;
            goto LABEL_220;
          }

          v114 = 0;
          v115 = 0;
          v35 = 0;
          v17 = v30 >= v31;
          v116 = v30 - v31;
          if (!v17)
          {
            v116 = 0;
          }

          v117 = (v32 + v31);
          v118 = v31 + 1;
          while (2)
          {
            if (v116)
            {
              v119 = *v117;
              *(a2 + 1) = v118;
              v35 |= (v119 & 0x7F) << v114;
              if (v119 < 0)
              {
                v114 += 7;
                --v116;
                ++v117;
                ++v118;
                v14 = v115++ > 8;
                if (v14)
                {
                  goto LABEL_147;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v35) = 0;
              }
            }

            else
            {
              LODWORD(v35) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_220:
          *(this + 38) = v35;
          goto LABEL_207;
        case 0x1Au:
          operator new();
        case 0x1Bu:
          *(this + 45) |= 0x8000u;
          v106 = *(a2 + 1);
          v105 = *(a2 + 2);
          v107 = *a2;
          if (v106 <= 0xFFFFFFFFFFFFFFF5 && v106 + 10 <= v105)
          {
            v108 = 0;
            v109 = 0;
            v110 = 0;
            v111 = (v107 + v106);
            v112 = v106 + 1;
            do
            {
              *(a2 + 1) = v112;
              v113 = *v111++;
              v110 |= (v113 & 0x7F) << v108;
              if ((v113 & 0x80) == 0)
              {
                goto LABEL_241;
              }

              v108 += 7;
              ++v112;
              v14 = v109++ > 8;
            }

            while (!v14);
LABEL_203:
            LODWORD(v110) = 0;
            goto LABEL_241;
          }

          v156 = 0;
          v157 = 0;
          v110 = 0;
          v17 = v105 >= v106;
          v158 = v105 - v106;
          if (!v17)
          {
            v158 = 0;
          }

          v159 = (v107 + v106);
          v160 = v106 + 1;
          break;
        case 0x1Cu:
          *(this + 45) |= 0x4000u;
          v23 = *(a2 + 1);
          if (v23 > 0xFFFFFFFFFFFFFFFBLL || v23 + 4 > *(a2 + 2))
          {
LABEL_123:
            *(a2 + 24) = 1;
          }

          else
          {
            *(this + 32) = *(*a2 + v23);
LABEL_61:
            v41 = *(a2 + 1) + 4;
LABEL_206:
            *(a2 + 1) = v41;
          }

          goto LABEL_207;
        default:
          if (PB::Reader::skip(a2, v10 >> 3, v10 & 7, 0))
          {
            goto LABEL_207;
          }

          v163 = 0;
          return v163 & 1;
      }

      while (1)
      {
        if (!v158)
        {
          LODWORD(v110) = 0;
          *(a2 + 24) = 1;
          goto LABEL_241;
        }

        v161 = *v159;
        *(a2 + 1) = v160;
        v110 |= (v161 & 0x7F) << v156;
        if ((v161 & 0x80) == 0)
        {
          break;
        }

        v156 += 7;
        --v158;
        ++v159;
        ++v160;
        v14 = v157++ > 8;
        if (v14)
        {
          goto LABEL_203;
        }
      }

      if (*(a2 + 24))
      {
        LODWORD(v110) = 0;
      }

LABEL_241:
      *(this + 33) = v110;
LABEL_207:
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

LABEL_243:
  v163 = v4 ^ 1;
  return v163 & 1;
}

uint64_t CMMsl::MotionGPSLocation::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 180);
  if ((v4 & 0x800) != 0)
  {
    this = PB::Writer::write(a2, *(this + 96), 1u);
    v4 = *(v3 + 180);
    if ((v4 & 0x40) == 0)
    {
LABEL_3:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_35;
    }
  }

  else if ((v4 & 0x40) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 56), 2u);
  v4 = *(v3 + 180);
  if ((v4 & 0x80) == 0)
  {
LABEL_4:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = PB::Writer::write(a2, *(v3 + 64), 3u);
  v4 = *(v3 + 180);
  if ((v4 & 0x200) == 0)
  {
LABEL_5:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = PB::Writer::write(a2, *(v3 + 80), 4u);
  v4 = *(v3 + 180);
  if ((v4 & 0x400) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = PB::Writer::write(a2, *(v3 + 88), 5u);
  v4 = *(v3 + 180);
  if ((v4 & 0x20) == 0)
  {
LABEL_7:
    if ((v4 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = PB::Writer::write(a2, *(v3 + 48), 6u);
  v4 = *(v3 + 180);
  if ((v4 & 2) == 0)
  {
LABEL_8:
    if ((v4 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_40;
  }

LABEL_39:
  this = PB::Writer::write(a2, *(v3 + 16), 7u);
  v4 = *(v3 + 180);
  if ((v4 & 4) == 0)
  {
LABEL_9:
    if ((v4 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_41;
  }

LABEL_40:
  this = PB::Writer::write(a2, *(v3 + 24), 8u);
  v4 = *(v3 + 180);
  if ((v4 & 1) == 0)
  {
LABEL_10:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_42;
  }

LABEL_41:
  this = PB::Writer::write(a2, *(v3 + 8), 9u);
  v4 = *(v3 + 180);
  if ((v4 & 0x2000) == 0)
  {
LABEL_11:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_43;
  }

LABEL_42:
  this = PB::Writer::write(a2, *(v3 + 120), 0xAu);
  v4 = *(v3 + 180);
  if ((v4 & 0x800000) == 0)
  {
LABEL_12:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_44;
  }

LABEL_43:
  this = PB::Writer::writeVarInt(a2, *(v3 + 164), 0xBu);
  v4 = *(v3 + 180);
  if ((v4 & 0x1000) == 0)
  {
LABEL_13:
    if ((v4 & 0x1000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_45;
  }

LABEL_44:
  this = PB::Writer::write(a2, *(v3 + 104), 0xCu);
  v4 = *(v3 + 180);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_14:
    if ((v4 & 0x2000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_46;
  }

LABEL_45:
  this = PB::Writer::write(a2, *(v3 + 168), 0xDu);
  v4 = *(v3 + 180);
  if ((v4 & 0x2000000) == 0)
  {
LABEL_15:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_47;
  }

LABEL_46:
  this = PB::Writer::writeVarInt(a2, *(v3 + 172), 0xEu);
  v4 = *(v3 + 180);
  if ((v4 & 0x20000) == 0)
  {
LABEL_16:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_48;
  }

LABEL_47:
  this = PB::Writer::write(a2, *(v3 + 140), 0xFu);
  v4 = *(v3 + 180);
  if ((v4 & 0x80000) == 0)
  {
LABEL_17:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_49;
  }

LABEL_48:
  this = PB::Writer::write(a2, *(v3 + 148), 0x10u);
  v4 = *(v3 + 180);
  if ((v4 & 0x40000) == 0)
  {
LABEL_18:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_50;
  }

LABEL_49:
  this = PB::Writer::write(a2, *(v3 + 144), 0x11u);
  v4 = *(v3 + 180);
  if ((v4 & 0x100) == 0)
  {
LABEL_19:
    if ((v4 & 8) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_51;
  }

LABEL_50:
  this = PB::Writer::write(a2, *(v3 + 72), 0x12u);
  v4 = *(v3 + 180);
  if ((v4 & 8) == 0)
  {
LABEL_20:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_52;
  }

LABEL_51:
  this = PB::Writer::write(a2, *(v3 + 32), 0x13u);
  v4 = *(v3 + 180);
  if ((v4 & 0x10) == 0)
  {
LABEL_21:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_53;
  }

LABEL_52:
  this = PB::Writer::write(a2, *(v3 + 40), 0x14u);
  v4 = *(v3 + 180);
  if ((v4 & 0x200000) == 0)
  {
LABEL_22:
    if ((v4 & 0x4000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_54;
  }

LABEL_53:
  this = PB::Writer::writeVarInt(a2, *(v3 + 156), 0x15u);
  v4 = *(v3 + 180);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_23:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_55;
  }

LABEL_54:
  this = PB::Writer::writeVarInt(a2, *(v3 + 176), 0x16u);
  v4 = *(v3 + 180);
  if ((v4 & 0x400000) == 0)
  {
LABEL_24:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_56;
  }

LABEL_55:
  this = PB::Writer::writeVarInt(a2, *(v3 + 160), 0x17u);
  v4 = *(v3 + 180);
  if ((v4 & 0x10000) == 0)
  {
LABEL_25:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_56:
  this = PB::Writer::writeVarInt(a2, *(v3 + 136), 0x18u);
  if ((*(v3 + 180) & 0x100000) != 0)
  {
LABEL_26:
    this = PB::Writer::writeVarInt(a2, *(v3 + 152), 0x19u);
  }

LABEL_27:
  v5 = *(v3 + 112);
  if (v5)
  {
    this = PB::Writer::writeSubmessage(a2, v5, 0x1Au);
  }

  v6 = *(v3 + 180);
  if ((v6 & 0x8000) != 0)
  {
    this = PB::Writer::writeVarInt(a2, *(v3 + 132), 0x1Bu);
    v6 = *(v3 + 180);
  }

  if ((v6 & 0x4000) != 0)
  {
    v7 = *(v3 + 128);

    return PB::Writer::write(a2, v7, 0x1Cu);
  }

  return this;
}

unint64_t CMMsl::MotionGPSLocation::hash_value(CMMsl::MotionGPSLocation *this)
{
  v1 = this;
  v2 = *(this + 45);
  if ((v2 & 0x800) == 0)
  {
    v3 = 0;
    if ((v2 & 0x40) != 0)
    {
      goto LABEL_3;
    }

LABEL_82:
    v4 = 0;
    if ((v2 & 0x80) != 0)
    {
      goto LABEL_7;
    }

LABEL_83:
    v5 = 0;
    if ((v2 & 0x200) != 0)
    {
      goto LABEL_11;
    }

LABEL_84:
    v6 = 0;
    if ((v2 & 0x400) != 0)
    {
      goto LABEL_15;
    }

LABEL_85:
    v7 = 0;
    if ((v2 & 0x20) != 0)
    {
      goto LABEL_19;
    }

LABEL_86:
    v8 = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_23;
    }

LABEL_87:
    v9 = 0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_27;
    }

LABEL_88:
    v10 = 0;
    if (v2)
    {
      goto LABEL_31;
    }

LABEL_89:
    v11 = 0;
    if ((v2 & 0x2000) != 0)
    {
      goto LABEL_35;
    }

LABEL_90:
    v12 = 0;
    if ((v2 & 0x800000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_91;
  }

  if (*(this + 12) == 0.0)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(this + 12);
  }

  if ((v2 & 0x40) == 0)
  {
    goto LABEL_82;
  }

LABEL_3:
  if (*(this + 7) == 0.0)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(this + 7);
  }

  if ((v2 & 0x80) == 0)
  {
    goto LABEL_83;
  }

LABEL_7:
  if (*(this + 8) == 0.0)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(this + 8);
  }

  if ((v2 & 0x200) == 0)
  {
    goto LABEL_84;
  }

LABEL_11:
  if (*(this + 10) == 0.0)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(this + 10);
  }

  if ((v2 & 0x400) == 0)
  {
    goto LABEL_85;
  }

LABEL_15:
  if (*(this + 11) == 0.0)
  {
    v7 = 0;
  }

  else
  {
    v7 = *(this + 11);
  }

  if ((v2 & 0x20) == 0)
  {
    goto LABEL_86;
  }

LABEL_19:
  if (*(this + 6) == 0.0)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(this + 6);
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_87;
  }

LABEL_23:
  if (*(this + 2) == 0.0)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(this + 2);
  }

  if ((v2 & 4) == 0)
  {
    goto LABEL_88;
  }

LABEL_27:
  if (*(this + 3) == 0.0)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(this + 3);
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_89;
  }

LABEL_31:
  if (*(this + 1) == 0.0)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(this + 1);
  }

  if ((v2 & 0x2000) == 0)
  {
    goto LABEL_90;
  }

LABEL_35:
  if (*(this + 15) == 0.0)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(this + 15);
  }

  if ((v2 & 0x800000) != 0)
  {
LABEL_39:
    v13 = *(this + 41);
    if ((v2 & 0x1000) != 0)
    {
      goto LABEL_40;
    }

LABEL_92:
    v14 = 0;
    if ((v2 & 0x1000000) != 0)
    {
      goto LABEL_44;
    }

LABEL_93:
    v16 = 0;
    if ((v2 & 0x2000000) != 0)
    {
      goto LABEL_48;
    }

    goto LABEL_94;
  }

LABEL_91:
  v13 = 0;
  if ((v2 & 0x1000) == 0)
  {
    goto LABEL_92;
  }

LABEL_40:
  if (*(this + 13) == 0.0)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(this + 13);
  }

  if ((v2 & 0x1000000) == 0)
  {
    goto LABEL_93;
  }

LABEL_44:
  v15 = *(this + 42);
  if (v15 == 0.0)
  {
    v16 = 0;
  }

  else
  {
    v16 = LODWORD(v15);
  }

  if ((v2 & 0x2000000) != 0)
  {
LABEL_48:
    v17 = *(this + 43);
    if ((v2 & 0x20000) != 0)
    {
      goto LABEL_49;
    }

LABEL_95:
    v19 = 0;
    if ((v2 & 0x80000) != 0)
    {
      goto LABEL_53;
    }

LABEL_96:
    v21 = 0;
    if ((v2 & 0x40000) != 0)
    {
      goto LABEL_57;
    }

LABEL_97:
    v23 = 0;
    if ((v2 & 0x100) != 0)
    {
      goto LABEL_61;
    }

LABEL_98:
    v24 = 0;
    if ((v2 & 8) != 0)
    {
      goto LABEL_65;
    }

LABEL_99:
    v25 = 0;
    if ((v2 & 0x10) != 0)
    {
      goto LABEL_69;
    }

LABEL_100:
    v26 = 0;
    if ((v2 & 0x200000) != 0)
    {
      goto LABEL_73;
    }

    goto LABEL_101;
  }

LABEL_94:
  v17 = 0;
  if ((v2 & 0x20000) == 0)
  {
    goto LABEL_95;
  }

LABEL_49:
  v18 = *(this + 35);
  if (v18 == 0.0)
  {
    v19 = 0;
  }

  else
  {
    v19 = LODWORD(v18);
  }

  if ((v2 & 0x80000) == 0)
  {
    goto LABEL_96;
  }

LABEL_53:
  v20 = *(this + 37);
  if (v20 == 0.0)
  {
    v21 = 0;
  }

  else
  {
    v21 = LODWORD(v20);
  }

  if ((v2 & 0x40000) == 0)
  {
    goto LABEL_97;
  }

LABEL_57:
  v22 = *(this + 36);
  if (v22 == 0.0)
  {
    v23 = 0;
  }

  else
  {
    v23 = LODWORD(v22);
  }

  if ((v2 & 0x100) == 0)
  {
    goto LABEL_98;
  }

LABEL_61:
  if (*(this + 9) == 0.0)
  {
    v24 = 0;
  }

  else
  {
    v24 = *(this + 9);
  }

  if ((v2 & 8) == 0)
  {
    goto LABEL_99;
  }

LABEL_65:
  if (*(this + 4) == 0.0)
  {
    v25 = 0;
  }

  else
  {
    v25 = *(this + 4);
  }

  if ((v2 & 0x10) == 0)
  {
    goto LABEL_100;
  }

LABEL_69:
  if (*(this + 5) == 0.0)
  {
    v26 = 0;
  }

  else
  {
    v26 = *(this + 5);
  }

  if ((v2 & 0x200000) != 0)
  {
LABEL_73:
    v27 = *(this + 39);
    if ((v2 & 0x4000000) != 0)
    {
      goto LABEL_74;
    }

    goto LABEL_102;
  }

LABEL_101:
  v27 = 0;
  if ((v2 & 0x4000000) != 0)
  {
LABEL_74:
    v28 = *(this + 44);
    if ((v2 & 0x400000) != 0)
    {
      goto LABEL_75;
    }

    goto LABEL_103;
  }

LABEL_102:
  v28 = 0;
  if ((v2 & 0x400000) != 0)
  {
LABEL_75:
    v29 = *(this + 40);
    if ((v2 & 0x10000) != 0)
    {
      goto LABEL_76;
    }

LABEL_104:
    v30 = 0;
    if ((v2 & 0x100000) != 0)
    {
      goto LABEL_77;
    }

    goto LABEL_105;
  }

LABEL_103:
  v29 = 0;
  if ((v2 & 0x10000) == 0)
  {
    goto LABEL_104;
  }

LABEL_76:
  v30 = *(this + 34);
  if ((v2 & 0x100000) != 0)
  {
LABEL_77:
    v61 = *(this + 38);
    goto LABEL_106;
  }

LABEL_105:
  v61 = 0;
LABEL_106:
  v31 = *(this + 14);
  if (v31)
  {
    v58 = v3;
    v50 = v25;
    v32 = v4;
    v56 = v5;
    v48 = v27;
    v33 = v6;
    v54 = v7;
    v45 = v30;
    v46 = v29;
    v34 = v8;
    v35 = v9;
    v52 = v23;
    v36 = v10;
    v60 = v11;
    v53 = v21;
    v37 = v1;
    v59 = v12;
    v51 = v24;
    v38 = v13;
    v57 = v14;
    v49 = v26;
    v39 = v16;
    v55 = v17;
    v47 = v28;
    v40 = v19;
    v31 = CMMsl::TrackRunData::hash_value(v31);
    v19 = v40;
    v7 = v54;
    v17 = v55;
    v16 = v39;
    v5 = v56;
    v14 = v57;
    v13 = v38;
    v12 = v59;
    v11 = v60;
    v1 = v37;
    v21 = v53;
    v10 = v36;
    v24 = v51;
    v23 = v52;
    v9 = v35;
    v30 = v45;
    v8 = v34;
    v29 = v46;
    v28 = v47;
    v6 = v33;
    v27 = v48;
    v26 = v49;
    v4 = v32;
    v25 = v50;
    v3 = v58;
  }

  if ((v2 & 0x8000) == 0)
  {
    v41 = 0;
    if ((v2 & 0x4000) != 0)
    {
      goto LABEL_110;
    }

LABEL_114:
    v43 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v16 ^ v17 ^ v19 ^ v21 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29 ^ v30 ^ v61 ^ v31 ^ v41 ^ v43;
  }

  v41 = *(v1 + 33);
  if ((v2 & 0x4000) == 0)
  {
    goto LABEL_114;
  }

LABEL_110:
  v42 = *(v1 + 32);
  v43 = LODWORD(v42);
  if (v42 == 0.0)
  {
    v43 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v16 ^ v17 ^ v19 ^ v21 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29 ^ v30 ^ v61 ^ v31 ^ v41 ^ v43;
}

uint64_t CMMsl::MotionGPSLocation::makeTrackRunData(uint64_t this)
{
  if (!*(this + 112))
  {
    operator new();
  }

  return this;
}

void CMMsl::MotionHint::~MotionHint(CMMsl::MotionHint *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::MotionHint::MotionHint(uint64_t this, const CMMsl::MotionHint *a2)
{
  *this = off_100420338;
  *(this + 24) = 0;
  v2 = *(a2 + 24);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 24) = 1;
    *(this + 8) = v4;
    v2 = *(a2 + 24);
    if ((v2 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 24) & 2) != 0)
  {
LABEL_5:
    v5 = *(a2 + 4);
    v3 |= 2u;
    *(this + 24) = v3;
    *(this + 16) = v5;
    v2 = *(a2 + 24);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    v6 = *(a2 + 5);
    *(this + 24) = v3 | 4;
    *(this + 20) = v6;
  }

  return this;
}

uint64_t CMMsl::MotionHint::operator=(uint64_t a1, const CMMsl::MotionHint *a2)
{
  if (a1 != a2)
  {
    CMMsl::MotionHint::MotionHint(&v8, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v11;
    v11 = v3;
    v4 = v10;
    v5 = *(a1 + 8);
    v6 = *(a1 + 16);
    *(a1 + 8) = v9;
    *(a1 + 16) = v4;
    v9 = v5;
    v10 = v6;
    PB::Base::~Base(&v8);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::MotionHint *a2, CMMsl::MotionHint *a3)
{
  v3 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v3;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v6;
  return result;
}

double CMMsl::MotionHint::MotionHint(uint64_t a1, uint64_t a2)
{
  *a1 = off_100420338;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  return result;
}

{
  *a1 = off_100420338;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  return result;
}

uint64_t CMMsl::MotionHint::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 24);
    *(a2 + 24) = 0;
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    v6 = *(a2 + 16);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = v6;
    v8[0] = off_100420338;
    v9 = *(a1 + 24);
    *(a1 + 24) = v3;
    v8[1] = v4;
    v8[2] = v5;
    PB::Base::~Base(v8);
  }

  return a1;
}

uint64_t CMMsl::MotionHint::formatText(CMMsl::MotionHint *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 24);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "event", *(this + 4));
    v5 = *(this + 24);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(this + 24) & 1) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  if ((*(this + 24) & 4) != 0)
  {
LABEL_4:
    PB::TextFormatter::format(a2, "value", *(this + 5));
  }

LABEL_5:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::MotionHint::readFrom(CMMsl::MotionHint *this, PB::Reader *a2)
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
            goto LABEL_75;
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
      if ((v10 >> 3) == 3)
      {
        *(this + 24) |= 4u;
        v31 = *(a2 + 1);
        v2 = *(a2 + 2);
        v32 = *a2;
        if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
        {
          v46 = 0;
          v47 = 0;
          v35 = 0;
          if (v2 <= v31)
          {
            v2 = *(a2 + 1);
          }

          v48 = v2 - v31;
          v49 = (v32 + v31);
          v50 = v31 + 1;
          while (1)
          {
            if (!v48)
            {
              LODWORD(v35) = 0;
              *(a2 + 24) = 1;
              goto LABEL_70;
            }

            v51 = v50;
            v52 = *v49;
            *(a2 + 1) = v51;
            v35 |= (v52 & 0x7F) << v46;
            if ((v52 & 0x80) == 0)
            {
              break;
            }

            v46 += 7;
            --v48;
            ++v49;
            v50 = v51 + 1;
            v14 = v47++ > 8;
            if (v14)
            {
              LODWORD(v35) = 0;
              goto LABEL_69;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v35) = 0;
          }

LABEL_69:
          v2 = v51;
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

LABEL_70:
        *(this + 5) = v35;
      }

      else if (v22 == 2)
      {
        *(this + 24) |= 2u;
        v23 = *(a2 + 1);
        v2 = *(a2 + 2);
        v24 = *a2;
        if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
        {
          v39 = 0;
          v40 = 0;
          v27 = 0;
          if (v2 <= v23)
          {
            v2 = *(a2 + 1);
          }

          v41 = v2 - v23;
          v42 = (v24 + v23);
          v43 = v23 + 1;
          while (1)
          {
            if (!v41)
            {
              LODWORD(v27) = 0;
              *(a2 + 24) = 1;
              goto LABEL_66;
            }

            v44 = v43;
            v45 = *v42;
            *(a2 + 1) = v44;
            v27 |= (v45 & 0x7F) << v39;
            if ((v45 & 0x80) == 0)
            {
              break;
            }

            v39 += 7;
            --v41;
            ++v42;
            v43 = v44 + 1;
            v14 = v40++ > 8;
            if (v14)
            {
              LODWORD(v27) = 0;
              goto LABEL_65;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v27) = 0;
          }

LABEL_65:
          v2 = v44;
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

LABEL_66:
        *(this + 4) = v27;
      }

      else if (v22 == 1)
      {
        *(this + 24) |= 1u;
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
          v53 = 0;
          return v53 & 1;
        }

        v2 = *(a2 + 1);
      }

      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_75:
  v53 = v4 ^ 1;
  return v53 & 1;
}

uint64_t CMMsl::MotionHint::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 24);
  if ((v4 & 1) == 0)
  {
    if ((*(this + 24) & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = PB::Writer::writeVarInt(a2, *(v3 + 16), 2u);
    if ((*(v3 + 24) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = PB::Writer::write(a2, *(this + 8), 1u);
  v4 = *(v3 + 24);
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
  v5 = *(v3 + 20);

  return PB::Writer::writeVarInt(a2, v5, 3u);
}

uint64_t CMMsl::MotionHint::hash_value(CMMsl::MotionHint *this)
{
  if ((*(this + 24) & 1) == 0)
  {
    v1 = 0.0;
    if ((*(this + 24) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    v2 = 0;
    if ((*(this + 24) & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_9:
    v3 = 0;
    return v2 ^ *&v1 ^ v3;
  }

  v1 = *(this + 1);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  if ((*(this + 24) & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  v2 = *(this + 4);
  if ((*(this + 24) & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  v3 = *(this + 5);
  return v2 ^ *&v1 ^ v3;
}

void CMMsl::MotionLocation::~MotionLocation(CMMsl::MotionLocation *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::MotionLocation::MotionLocation(uint64_t this, const CMMsl::MotionLocation *a2)
{
  *this = off_100420370;
  *(this + 220) = 0;
  v2 = *(a2 + 55);
  if ((v2 & 0x40000) != 0)
  {
    v4 = *(a2 + 19);
    v3 = 0x40000;
    *(this + 220) = 0x40000;
    *(this + 152) = v4;
    v2 = *(a2 + 55);
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x100) != 0)
  {
LABEL_5:
    v5 = *(a2 + 9);
    v3 |= 0x100u;
    *(this + 220) = v3;
    *(this + 72) = v5;
    v2 = *(a2 + 55);
  }

LABEL_6:
  if ((v2 & 0x200) != 0)
  {
    v6 = *(a2 + 10);
    v3 |= 0x200u;
    *(this + 220) = v3;
    *(this + 80) = v6;
    v2 = *(a2 + 55);
    if ((v2 & 0x10000) == 0)
    {
LABEL_8:
      if ((v2 & 0x20000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_39;
    }
  }

  else if ((v2 & 0x10000) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 17);
  v3 |= 0x10000u;
  *(this + 220) = v3;
  *(this + 136) = v7;
  v2 = *(a2 + 55);
  if ((v2 & 0x20000) == 0)
  {
LABEL_9:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_40;
  }

LABEL_39:
  v8 = *(a2 + 18);
  v3 |= 0x20000u;
  *(this + 220) = v3;
  *(this + 144) = v8;
  v2 = *(a2 + 55);
  if ((v2 & 0x80) == 0)
  {
LABEL_10:
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_41;
  }

LABEL_40:
  v9 = *(a2 + 8);
  v3 |= 0x80u;
  *(this + 220) = v3;
  *(this + 64) = v9;
  v2 = *(a2 + 55);
  if ((v2 & 2) == 0)
  {
LABEL_11:
    if ((v2 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_42;
  }

LABEL_41:
  v10 = *(a2 + 2);
  v3 |= 2u;
  *(this + 220) = v3;
  *(this + 16) = v10;
  v2 = *(a2 + 55);
  if ((v2 & 4) == 0)
  {
LABEL_12:
    if ((v2 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_43;
  }

LABEL_42:
  v11 = *(a2 + 3);
  v3 |= 4u;
  *(this + 220) = v3;
  *(this + 24) = v11;
  v2 = *(a2 + 55);
  if ((v2 & 1) == 0)
  {
LABEL_13:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_44;
  }

LABEL_43:
  v12 = *(a2 + 1);
  v3 |= 1u;
  *(this + 220) = v3;
  *(this + 8) = v12;
  v2 = *(a2 + 55);
  if ((v2 & 0x100000) == 0)
  {
LABEL_14:
    if ((v2 & 0x10000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_45;
  }

LABEL_44:
  v13 = *(a2 + 21);
  v3 |= 0x100000u;
  *(this + 220) = v3;
  *(this + 168) = v13;
  v2 = *(a2 + 55);
  if ((v2 & 0x10000000) == 0)
  {
LABEL_15:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_46;
  }

LABEL_45:
  v14 = *(a2 + 51);
  v3 |= 0x10000000u;
  *(this + 220) = v3;
  *(this + 204) = v14;
  v2 = *(a2 + 55);
  if ((v2 & 0x80000) == 0)
  {
LABEL_16:
    if ((v2 & 0x20000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_47;
  }

LABEL_46:
  v15 = *(a2 + 20);
  v3 |= 0x80000u;
  *(this + 220) = v3;
  *(this + 160) = v15;
  v2 = *(a2 + 55);
  if ((v2 & 0x20000000) == 0)
  {
LABEL_17:
    if ((v2 & 0x40000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_48;
  }

LABEL_47:
  v16 = *(a2 + 52);
  v3 |= 0x20000000u;
  *(this + 220) = v3;
  *(this + 208) = v16;
  v2 = *(a2 + 55);
  if ((v2 & 0x40000000) == 0)
  {
LABEL_18:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_49;
  }

LABEL_48:
  v17 = *(a2 + 53);
  v3 |= 0x40000000u;
  *(this + 220) = v3;
  *(this + 212) = v17;
  v2 = *(a2 + 55);
  if ((v2 & 0x200000) == 0)
  {
LABEL_19:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_50;
  }

LABEL_49:
  v18 = *(a2 + 44);
  v3 |= 0x200000u;
  *(this + 220) = v3;
  *(this + 176) = v18;
  v2 = *(a2 + 55);
  if ((v2 & 0x800000) == 0)
  {
LABEL_20:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_51;
  }

LABEL_50:
  v19 = *(a2 + 46);
  v3 |= 0x800000u;
  *(this + 220) = v3;
  *(this + 184) = v19;
  v2 = *(a2 + 55);
  if ((v2 & 0x400000) == 0)
  {
LABEL_21:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_52;
  }

LABEL_51:
  v20 = *(a2 + 45);
  v3 |= 0x400000u;
  *(this + 220) = v3;
  *(this + 180) = v20;
  v2 = *(a2 + 55);
  if ((v2 & 0x800) == 0)
  {
LABEL_22:
    if ((v2 & 8) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_53;
  }

LABEL_52:
  v21 = *(a2 + 12);
  v3 |= 0x800u;
  *(this + 220) = v3;
  *(this + 96) = v21;
  v2 = *(a2 + 55);
  if ((v2 & 8) == 0)
  {
LABEL_23:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_54;
  }

LABEL_53:
  v22 = *(a2 + 4);
  v3 |= 8u;
  *(this + 220) = v3;
  *(this + 32) = v22;
  v2 = *(a2 + 55);
  if ((v2 & 0x10) == 0)
  {
LABEL_24:
    if ((v2 & 0x2000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_55;
  }

LABEL_54:
  v23 = *(a2 + 5);
  v3 |= 0x10u;
  *(this + 220) = v3;
  *(this + 40) = v23;
  v2 = *(a2 + 55);
  if ((v2 & 0x2000000) == 0)
  {
LABEL_25:
    if ((v2 & 0x8000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_56;
  }

LABEL_55:
  v24 = *(a2 + 48);
  v3 |= 0x2000000u;
  *(this + 220) = v3;
  *(this + 192) = v24;
  v2 = *(a2 + 55);
  if ((v2 & 0x8000000) == 0)
  {
LABEL_26:
    if ((v2 & 0x1000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_57;
  }

LABEL_56:
  v25 = *(a2 + 50);
  v3 |= 0x8000000u;
  *(this + 220) = v3;
  *(this + 200) = v25;
  v2 = *(a2 + 55);
  if ((v2 & 0x1000000) == 0)
  {
LABEL_27:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_58;
  }

LABEL_57:
  v26 = *(a2 + 47);
  v3 |= 0x1000000u;
  *(this + 220) = v3;
  *(this + 188) = v26;
  v2 = *(a2 + 55);
  if ((v2 & 0x20) == 0)
  {
LABEL_28:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_59;
  }

LABEL_58:
  v27 = *(a2 + 6);
  v3 |= 0x20u;
  *(this + 220) = v3;
  *(this + 48) = v27;
  v2 = *(a2 + 55);
  if ((v2 & 0x40) == 0)
  {
LABEL_29:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_60;
  }

LABEL_59:
  v28 = *(a2 + 7);
  v3 |= 0x40u;
  *(this + 220) = v3;
  *(this + 56) = v28;
  v2 = *(a2 + 55);
  if ((v2 & 0x8000) == 0)
  {
LABEL_30:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_61;
  }

LABEL_60:
  v29 = *(a2 + 16);
  v3 |= 0x8000u;
  *(this + 220) = v3;
  *(this + 128) = v29;
  v2 = *(a2 + 55);
  if ((v2 & 0x400) == 0)
  {
LABEL_31:
    if ((v2 & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_62;
  }

LABEL_61:
  v30 = *(a2 + 11);
  v3 |= 0x400u;
  *(this + 220) = v3;
  *(this + 88) = v30;
  v2 = *(a2 + 55);
  if ((v2 & 0x80000000) == 0)
  {
LABEL_32:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_63;
  }

LABEL_62:
  v31 = *(a2 + 216);
  v3 |= 0x80000000;
  *(this + 220) = v3;
  *(this + 216) = v31;
  v2 = *(a2 + 55);
  if ((v2 & 0x1000) == 0)
  {
LABEL_33:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_64;
  }

LABEL_63:
  v32 = *(a2 + 13);
  v3 |= 0x1000u;
  *(this + 220) = v3;
  *(this + 104) = v32;
  v2 = *(a2 + 55);
  if ((v2 & 0x4000) == 0)
  {
LABEL_34:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_65;
  }

LABEL_64:
  v33 = *(a2 + 15);
  v3 |= 0x4000u;
  *(this + 220) = v3;
  *(this + 120) = v33;
  v2 = *(a2 + 55);
  if ((v2 & 0x2000) == 0)
  {
LABEL_35:
    if ((v2 & 0x4000000) == 0)
    {
      return this;
    }

LABEL_66:
    v35 = *(a2 + 49);
    *(this + 220) = v3 | 0x4000000;
    *(this + 196) = v35;
    return this;
  }

LABEL_65:
  v34 = *(a2 + 14);
  v3 |= 0x2000u;
  *(this + 220) = v3;
  *(this + 112) = v34;
  if ((*(a2 + 55) & 0x4000000) != 0)
  {
    goto LABEL_66;
  }

  return this;
}

CMMsl *CMMsl::MotionLocation::operator=(CMMsl *a1, const CMMsl::MotionLocation *a2)
{
  if (a1 != a2)
  {
    CMMsl::MotionLocation::MotionLocation(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::MotionLocation *a2, CMMsl::MotionLocation *a3)
{
  v3 = *(this + 55);
  *(this + 55) = *(a2 + 55);
  *(a2 + 55) = v3;
  v4 = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v4;
  v5 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v5;
  v6 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v6;
  v7 = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v7;
  v8 = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v8;
  v9 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v9;
  v10 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v10;
  v11 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v11;
  v12 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v12;
  v13 = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v13;
  v14 = *(this + 51);
  *(this + 51) = *(a2 + 51);
  *(a2 + 51) = v14;
  v15 = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v15;
  LODWORD(v15) = *(this + 52);
  *(this + 52) = *(a2 + 52);
  *(a2 + 52) = v15;
  v16 = *(this + 53);
  *(this + 53) = *(a2 + 53);
  *(a2 + 53) = v16;
  LODWORD(v15) = *(this + 44);
  *(this + 44) = *(a2 + 44);
  *(a2 + 44) = v15;
  LODWORD(v15) = *(this + 46);
  *(this + 46) = *(a2 + 46);
  *(a2 + 46) = v15;
  LODWORD(v15) = *(this + 45);
  *(this + 45) = *(a2 + 45);
  *(a2 + 45) = v15;
  v17 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v17;
  v18 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v18;
  v19 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v19;
  v20 = *(this + 48);
  *(this + 48) = *(a2 + 48);
  *(a2 + 48) = v20;
  v21 = *(this + 50);
  *(this + 50) = *(a2 + 50);
  *(a2 + 50) = v21;
  v22 = *(this + 47);
  *(this + 47) = *(a2 + 47);
  *(a2 + 47) = v22;
  v23 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v23;
  v24 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v24;
  v25 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v25;
  v26 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v26;
  LOBYTE(v22) = *(this + 216);
  *(this + 216) = *(a2 + 216);
  *(a2 + 216) = v22;
  v27 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v27;
  v28 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v28;
  result = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = result;
  v30 = *(this + 49);
  *(this + 49) = *(a2 + 49);
  *(a2 + 49) = v30;
  return result;
}

double CMMsl::MotionLocation::MotionLocation(uint64_t a1, uint64_t a2)
{
  *a1 = off_100420370;
  *(a1 + 220) = *(a2 + 220);
  *(a2 + 220) = 0;
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 204) = *(a2 + 204);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 212) = *(a2 + 212);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 180) = *(a2 + 180);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 188) = *(a2 + 188);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  result = *(a2 + 112);
  *(a1 + 112) = result;
  *(a1 + 196) = *(a2 + 196);
  return result;
}

CMMsl *CMMsl::MotionLocation::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::MotionLocation::MotionLocation(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::MotionLocation::formatText(CMMsl::MotionLocation *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 55);
  if (v5)
  {
    PB::TextFormatter::format(a2, "altitude", *(this + 1));
    v5 = *(this + 55);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_39;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "course", *(this + 2));
  v5 = *(this + 55);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(a2, "courseAccuracy", *(this + 3));
  v5 = *(this + 55);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_41;
  }

LABEL_40:
  PB::TextFormatter::format(a2, "deltaDistance", *(this + 4));
  v5 = *(this + 55);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_42;
  }

LABEL_41:
  PB::TextFormatter::format(a2, "deltaDistanceAccuracy", *(this + 5));
  v5 = *(this + 55);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_43;
  }

LABEL_42:
  PB::TextFormatter::format(a2, "groundAltitude", *(this + 6));
  v5 = *(this + 55);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_44;
  }

LABEL_43:
  PB::TextFormatter::format(a2, "groundAltitudeUncertainty", *(this + 7));
  v5 = *(this + 55);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_45;
  }

LABEL_44:
  PB::TextFormatter::format(a2, "horizontalAccuracy", *(this + 8));
  v5 = *(this + 55);
  if ((v5 & 0x200000) == 0)
  {
LABEL_10:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_46;
  }

LABEL_45:
  PB::TextFormatter::format(a2, "horzUncSemiMaj", *(this + 44));
  v5 = *(this + 55);
  if ((v5 & 0x400000) == 0)
  {
LABEL_11:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_47;
  }

LABEL_46:
  PB::TextFormatter::format(a2, "horzUncSemiMajAz", *(this + 45));
  v5 = *(this + 55);
  if ((v5 & 0x800000) == 0)
  {
LABEL_12:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_48;
  }

LABEL_47:
  PB::TextFormatter::format(a2, "horzUncSemiMin", *(this + 46));
  v5 = *(this + 55);
  if ((v5 & 0x80000000) == 0)
  {
LABEL_13:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_49;
  }

LABEL_48:
  PB::TextFormatter::format(a2, "isPrefilteredLocation", *(this + 216));
  v5 = *(this + 55);
  if ((v5 & 0x100) == 0)
  {
LABEL_14:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_50;
  }

LABEL_49:
  PB::TextFormatter::format(a2, "latitude", *(this + 9));
  v5 = *(this + 55);
  if ((v5 & 0x200) == 0)
  {
LABEL_15:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_51;
  }

LABEL_50:
  PB::TextFormatter::format(a2, "longitude", *(this + 10));
  v5 = *(this + 55);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_16:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_52;
  }

LABEL_51:
  PB::TextFormatter::format(a2, "matchQuality", *(this + 47));
  v5 = *(this + 55);
  if ((v5 & 0x400) == 0)
  {
LABEL_17:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_53;
  }

LABEL_52:
  PB::TextFormatter::format(a2, "maxAbsSlope", *(this + 11));
  v5 = *(this + 55);
  if ((v5 & 0x800) == 0)
  {
LABEL_18:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_54;
  }

LABEL_53:
  PB::TextFormatter::format(a2, "odometer", *(this + 12));
  v5 = *(this + 55);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_19:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_55;
  }

LABEL_54:
  PB::TextFormatter::format(a2, "originDevice", *(this + 48));
  v5 = *(this + 55);
  if ((v5 & 0x1000) == 0)
  {
LABEL_20:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_56;
  }

LABEL_55:
  PB::TextFormatter::format(a2, "rawAltitude", *(this + 13));
  v5 = *(this + 55);
  if ((v5 & 0x2000) == 0)
  {
LABEL_21:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_57;
  }

LABEL_56:
  PB::TextFormatter::format(a2, "rawUndulation", *(this + 14));
  v5 = *(this + 55);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_22:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_58;
  }

LABEL_57:
  PB::TextFormatter::format(a2, "rawUndulationModel", *(this + 49));
  v5 = *(this + 55);
  if ((v5 & 0x4000) == 0)
  {
LABEL_23:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_59;
  }

LABEL_58:
  PB::TextFormatter::format(a2, "rawVerticalAccuracy", *(this + 15));
  v5 = *(this + 55);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_24:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_60;
  }

LABEL_59:
  PB::TextFormatter::format(a2, "signalEnvironment", *(this + 50));
  v5 = *(this + 55);
  if ((v5 & 0x8000) == 0)
  {
LABEL_25:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_61;
  }

LABEL_60:
  PB::TextFormatter::format(a2, "slope", *(this + 16));
  v5 = *(this + 55);
  if ((v5 & 0x10000) == 0)
  {
LABEL_26:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_62;
  }

LABEL_61:
  PB::TextFormatter::format(a2, "speed", *(this + 17));
  v5 = *(this + 55);
  if ((v5 & 0x20000) == 0)
  {
LABEL_27:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_63;
  }

LABEL_62:
  PB::TextFormatter::format(a2, "speedAccuracy", *(this + 18));
  v5 = *(this + 55);
  if ((v5 & 0x40000) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_64;
  }

LABEL_63:
  PB::TextFormatter::format(a2, "timestamp", *(this + 19));
  v5 = *(this + 55);
  if ((v5 & 0x80000) == 0)
  {
LABEL_29:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_65;
  }

LABEL_64:
  PB::TextFormatter::format(a2, "timestampGps", *(this + 20));
  v5 = *(this + 55);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_30:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_66;
  }

LABEL_65:
  PB::TextFormatter::format(a2, "type", *(this + 51));
  v5 = *(this + 55);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_31:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_67;
  }

LABEL_66:
  PB::TextFormatter::format(a2, "undulation", *(this + 52));
  v5 = *(this + 55);
  if ((v5 & 0x40000000) == 0)
  {
LABEL_32:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_67:
  PB::TextFormatter::format(a2, "undulationModel", *(this + 53));
  if ((*(this + 55) & 0x100000) != 0)
  {
LABEL_33:
    PB::TextFormatter::format(a2, "verticalAccuracy", *(this + 21));
  }

LABEL_34:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::MotionLocation::readFrom(CMMsl::MotionLocation *this, PB::Reader *a2)
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
        goto LABEL_232;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 55) |= 0x40000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_144;
          }

          *(this + 19) = *(*a2 + v2);
          goto LABEL_196;
        case 2u:
          *(this + 55) |= 0x100u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_144;
          }

          *(this + 9) = *(*a2 + v2);
          goto LABEL_196;
        case 3u:
          *(this + 55) |= 0x200u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_144;
          }

          *(this + 10) = *(*a2 + v2);
          goto LABEL_196;
        case 4u:
          *(this + 55) |= 0x10000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_144;
          }

          *(this + 17) = *(*a2 + v2);
          goto LABEL_196;
        case 5u:
          *(this + 55) |= 0x20000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_144;
          }

          *(this + 18) = *(*a2 + v2);
          goto LABEL_196;
        case 6u:
          *(this + 55) |= 0x80u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_144;
          }

          *(this + 8) = *(*a2 + v2);
          goto LABEL_196;
        case 7u:
          *(this + 55) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_144;
          }

          *(this + 2) = *(*a2 + v2);
          goto LABEL_196;
        case 8u:
          *(this + 55) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_144;
          }

          *(this + 3) = *(*a2 + v2);
          goto LABEL_196;
        case 9u:
          *(this + 55) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_144;
          }

          *(this + 1) = *(*a2 + v2);
          goto LABEL_196;
        case 0xAu:
          *(this + 55) |= 0x100000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_144;
          }

          *(this + 21) = *(*a2 + v2);
          goto LABEL_196;
        case 0xBu:
          *(this + 55) |= 0x10000000u;
          v56 = *(a2 + 1);
          v2 = *(a2 + 2);
          v57 = *a2;
          if (v56 > 0xFFFFFFFFFFFFFFF5 || v56 + 10 > v2)
          {
            v100 = 0;
            v101 = 0;
            v60 = 0;
            if (v2 <= v56)
            {
              v2 = *(a2 + 1);
            }

            v102 = v2 - v56;
            v103 = (v57 + v56);
            v104 = v56 + 1;
            while (1)
            {
              if (!v102)
              {
                LODWORD(v60) = 0;
                *(a2 + 24) = 1;
                goto LABEL_226;
              }

              v105 = v104;
              v106 = *v103;
              *(a2 + 1) = v105;
              v60 |= (v106 & 0x7F) << v100;
              if ((v106 & 0x80) == 0)
              {
                break;
              }

              v100 += 7;
              --v102;
              ++v103;
              v104 = v105 + 1;
              v14 = v101++ > 8;
              if (v14)
              {
                LODWORD(v60) = 0;
LABEL_225:
                v2 = v105;
                goto LABEL_226;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v60) = 0;
            }

            goto LABEL_225;
          }

          v58 = 0;
          v59 = 0;
          v60 = 0;
          v61 = (v57 + v56);
          v62 = v56 + 1;
          do
          {
            v2 = v62;
            *(a2 + 1) = v62;
            v63 = *v61++;
            v60 |= (v63 & 0x7F) << v58;
            if ((v63 & 0x80) == 0)
            {
              goto LABEL_226;
            }

            v58 += 7;
            ++v62;
            v14 = v59++ > 8;
          }

          while (!v14);
          LODWORD(v60) = 0;
LABEL_226:
          *(this + 51) = v60;
          goto LABEL_198;
        case 0xCu:
          *(this + 55) |= 0x80000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_144;
          }

          *(this + 20) = *(*a2 + v2);
          goto LABEL_196;
        case 0xDu:
          *(this + 55) |= 0x20000000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_144;
          }

          *(this + 52) = *(*a2 + v2);
          goto LABEL_58;
        case 0xEu:
          *(this + 55) |= 0x40000000u;
          v48 = *(a2 + 1);
          v2 = *(a2 + 2);
          v49 = *a2;
          if (v48 > 0xFFFFFFFFFFFFFFF5 || v48 + 10 > v2)
          {
            v93 = 0;
            v94 = 0;
            v52 = 0;
            if (v2 <= v48)
            {
              v2 = *(a2 + 1);
            }

            v95 = v2 - v48;
            v96 = (v49 + v48);
            v97 = v48 + 1;
            while (1)
            {
              if (!v95)
              {
                LODWORD(v52) = 0;
                *(a2 + 24) = 1;
                goto LABEL_222;
              }

              v98 = v97;
              v99 = *v96;
              *(a2 + 1) = v98;
              v52 |= (v99 & 0x7F) << v93;
              if ((v99 & 0x80) == 0)
              {
                break;
              }

              v93 += 7;
              --v95;
              ++v96;
              v97 = v98 + 1;
              v14 = v94++ > 8;
              if (v14)
              {
                LODWORD(v52) = 0;
LABEL_221:
                v2 = v98;
                goto LABEL_222;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v52) = 0;
            }

            goto LABEL_221;
          }

          v50 = 0;
          v51 = 0;
          v52 = 0;
          v53 = (v49 + v48);
          v54 = v48 + 1;
          do
          {
            v2 = v54;
            *(a2 + 1) = v54;
            v55 = *v53++;
            v52 |= (v55 & 0x7F) << v50;
            if ((v55 & 0x80) == 0)
            {
              goto LABEL_222;
            }

            v50 += 7;
            ++v54;
            v14 = v51++ > 8;
          }

          while (!v14);
          LODWORD(v52) = 0;
LABEL_222:
          *(this + 53) = v52;
          goto LABEL_198;
        case 0xFu:
          *(this + 55) |= 0x200000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_144;
          }

          *(this + 44) = *(*a2 + v2);
          goto LABEL_58;
        case 0x10u:
          *(this + 55) |= 0x800000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_144;
          }

          *(this + 46) = *(*a2 + v2);
          goto LABEL_58;
        case 0x11u:
          *(this + 55) |= 0x400000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_144;
          }

          *(this + 45) = *(*a2 + v2);
LABEL_58:
          v2 = *(a2 + 1) + 4;
          goto LABEL_197;
        case 0x12u:
          *(this + 55) |= 0x800u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_144;
          }

          *(this + 12) = *(*a2 + v2);
          goto LABEL_196;
        case 0x13u:
          *(this + 55) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_144;
          }

          *(this + 4) = *(*a2 + v2);
          goto LABEL_196;
        case 0x14u:
          *(this + 55) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_144;
          }

          *(this + 5) = *(*a2 + v2);
          goto LABEL_196;
        case 0x15u:
          *(this + 55) |= 0x2000000u;
          v32 = *(a2 + 1);
          v2 = *(a2 + 2);
          v33 = *a2;
          if (v32 > 0xFFFFFFFFFFFFFFF5 || v32 + 10 > v2)
          {
            v79 = 0;
            v80 = 0;
            v36 = 0;
            if (v2 <= v32)
            {
              v2 = *(a2 + 1);
            }

            v81 = v2 - v32;
            v82 = (v33 + v32);
            v83 = v32 + 1;
            while (1)
            {
              if (!v81)
              {
                LODWORD(v36) = 0;
                *(a2 + 24) = 1;
                goto LABEL_214;
              }

              v84 = v83;
              v85 = *v82;
              *(a2 + 1) = v84;
              v36 |= (v85 & 0x7F) << v79;
              if ((v85 & 0x80) == 0)
              {
                break;
              }

              v79 += 7;
              --v81;
              ++v82;
              v83 = v84 + 1;
              v14 = v80++ > 8;
              if (v14)
              {
                LODWORD(v36) = 0;
LABEL_213:
                v2 = v84;
                goto LABEL_214;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v36) = 0;
            }

            goto LABEL_213;
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
              goto LABEL_214;
            }

            v34 += 7;
            ++v38;
            v14 = v35++ > 8;
          }

          while (!v14);
          LODWORD(v36) = 0;
LABEL_214:
          *(this + 48) = v36;
          goto LABEL_198;
        case 0x16u:
          *(this + 55) |= 0x8000000u;
          v40 = *(a2 + 1);
          v2 = *(a2 + 2);
          v41 = *a2;
          if (v40 > 0xFFFFFFFFFFFFFFF5 || v40 + 10 > v2)
          {
            v86 = 0;
            v87 = 0;
            v44 = 0;
            if (v2 <= v40)
            {
              v2 = *(a2 + 1);
            }

            v88 = v2 - v40;
            v89 = (v41 + v40);
            v90 = v40 + 1;
            while (1)
            {
              if (!v88)
              {
                LODWORD(v44) = 0;
                *(a2 + 24) = 1;
                goto LABEL_218;
              }

              v91 = v90;
              v92 = *v89;
              *(a2 + 1) = v91;
              v44 |= (v92 & 0x7F) << v86;
              if ((v92 & 0x80) == 0)
              {
                break;
              }

              v86 += 7;
              --v88;
              ++v89;
              v90 = v91 + 1;
              v14 = v87++ > 8;
              if (v14)
              {
                LODWORD(v44) = 0;
LABEL_217:
                v2 = v91;
                goto LABEL_218;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v44) = 0;
            }

            goto LABEL_217;
          }

          v42 = 0;
          v43 = 0;
          v44 = 0;
          v45 = (v41 + v40);
          v46 = v40 + 1;
          do
          {
            v2 = v46;
            *(a2 + 1) = v46;
            v47 = *v45++;
            v44 |= (v47 & 0x7F) << v42;
            if ((v47 & 0x80) == 0)
            {
              goto LABEL_218;
            }

            v42 += 7;
            ++v46;
            v14 = v43++ > 8;
          }

          while (!v14);
          LODWORD(v44) = 0;
LABEL_218:
          *(this + 50) = v44;
          goto LABEL_198;
        case 0x17u:
          *(this + 55) |= 0x1000000u;
          v64 = *(a2 + 1);
          v2 = *(a2 + 2);
          v65 = *a2;
          if (v64 > 0xFFFFFFFFFFFFFFF5 || v64 + 10 > v2)
          {
            v107 = 0;
            v108 = 0;
            v68 = 0;
            if (v2 <= v64)
            {
              v2 = *(a2 + 1);
            }

            v109 = v2 - v64;
            v110 = (v65 + v64);
            v111 = v64 + 1;
            while (1)
            {
              if (!v109)
              {
                LODWORD(v68) = 0;
                *(a2 + 24) = 1;
                goto LABEL_230;
              }

              v112 = v111;
              v113 = *v110;
              *(a2 + 1) = v112;
              v68 |= (v113 & 0x7F) << v107;
              if ((v113 & 0x80) == 0)
              {
                break;
              }

              v107 += 7;
              --v109;
              ++v110;
              v111 = v112 + 1;
              v14 = v108++ > 8;
              if (v14)
              {
                LODWORD(v68) = 0;
LABEL_229:
                v2 = v112;
                goto LABEL_230;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v68) = 0;
            }

            goto LABEL_229;
          }

          v66 = 0;
          v67 = 0;
          v68 = 0;
          v69 = (v65 + v64);
          v70 = v64 + 1;
          do
          {
            v2 = v70;
            *(a2 + 1) = v70;
            v71 = *v69++;
            v68 |= (v71 & 0x7F) << v66;
            if ((v71 & 0x80) == 0)
            {
              goto LABEL_230;
            }

            v66 += 7;
            ++v70;
            v14 = v67++ > 8;
          }

          while (!v14);
          LODWORD(v68) = 0;
LABEL_230:
          *(this + 47) = v68;
          goto LABEL_198;
        case 0x18u:
          *(this + 55) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_144;
          }

          *(this + 6) = *(*a2 + v2);
          goto LABEL_196;
        case 0x19u:
          *(this + 55) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_144;
          }

          *(this + 7) = *(*a2 + v2);
          goto LABEL_196;
        case 0x1Au:
          *(this + 55) |= 0x8000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_144;
          }

          *(this + 16) = *(*a2 + v2);
          goto LABEL_196;
        case 0x1Bu:
          *(this + 55) |= 0x400u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_144;
          }

          *(this + 11) = *(*a2 + v2);
          goto LABEL_196;
        case 0x1Cu:
          *(this + 55) |= 0x80000000;
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

          *(this + 216) = v23;
          goto LABEL_198;
        case 0x1Du:
          *(this + 55) |= 0x1000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_144;
          }

          *(this + 13) = *(*a2 + v2);
          goto LABEL_196;
        case 0x1Eu:
          *(this + 55) |= 0x4000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_144;
          }

          *(this + 15) = *(*a2 + v2);
          goto LABEL_196;
        case 0x1Fu:
          *(this + 55) |= 0x2000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
LABEL_144:
            *(a2 + 24) = 1;
          }

          else
          {
            *(this + 14) = *(*a2 + v2);
LABEL_196:
            v2 = *(a2 + 1) + 8;
LABEL_197:
            *(a2 + 1) = v2;
          }

          goto LABEL_198;
        case 0x20u:
          *(this + 55) |= 0x4000000u;
          v24 = *(a2 + 1);
          v2 = *(a2 + 2);
          v25 = *a2;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v2)
          {
            v72 = 0;
            v73 = 0;
            v28 = 0;
            if (v2 <= v24)
            {
              v2 = *(a2 + 1);
            }

            v74 = v2 - v24;
            v75 = (v25 + v24);
            v76 = v24 + 1;
            while (1)
            {
              if (!v74)
              {
                LODWORD(v28) = 0;
                *(a2 + 24) = 1;
                goto LABEL_210;
              }

              v77 = v76;
              v78 = *v75;
              *(a2 + 1) = v77;
              v28 |= (v78 & 0x7F) << v72;
              if ((v78 & 0x80) == 0)
              {
                break;
              }

              v72 += 7;
              --v74;
              ++v75;
              v76 = v77 + 1;
              v14 = v73++ > 8;
              if (v14)
              {
                LODWORD(v28) = 0;
LABEL_209:
                v2 = v77;
                goto LABEL_210;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v28) = 0;
            }

            goto LABEL_209;
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
              goto LABEL_210;
            }

            v26 += 7;
            ++v30;
            v14 = v27++ > 8;
          }

          while (!v14);
          LODWORD(v28) = 0;
LABEL_210:
          *(this + 49) = v28;
          goto LABEL_198;
        default:
          if (!PB::Reader::skip(a2, v10 >> 3, v10 & 7, 0))
          {
            v114 = 0;
            return v114 & 1;
          }

          v2 = *(a2 + 1);
LABEL_198:
          v3 = *(a2 + 2);
          v4 = *(a2 + 24);
          if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
          {
            goto LABEL_232;
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

LABEL_232:
  v114 = v4 ^ 1;
  return v114 & 1;
}