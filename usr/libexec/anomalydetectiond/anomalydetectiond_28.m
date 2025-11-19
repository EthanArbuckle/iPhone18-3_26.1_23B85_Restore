uint64_t CMMsl::InEarTransitionEntry::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 132);
  if (v4)
  {
    this = PB::Writer::writeVarInt(a2, *(this + 120), 1u);
    v4 = *(v3 + 132);
  }

  if ((v4 & 2) != 0)
  {
    this = PB::Writer::writeVarInt(a2, *(v3 + 124), 2u);
  }

  v5 = *(v3 + 72);
  v6 = *(v3 + 80);
  while (v5 != v6)
  {
    v7 = *v5++;
    this = PB::Writer::writeSubmessage(a2, v7, 3u);
  }

  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  while (v8 != v9)
  {
    v10 = *v8++;
    this = PB::Writer::write(a2, v10, 4u);
  }

  v11 = *(v3 + 8);
  v12 = *(v3 + 16);
  while (v11 != v12)
  {
    v13 = *v11++;
    this = PB::Writer::write(a2, v13, 5u);
  }

  v14 = *(v3 + 64);
  if (v14)
  {
    this = PB::Writer::writeSubmessage(a2, v14, 6u);
  }

  v15 = *(v3 + 56);
  if (v15)
  {
    this = PB::Writer::writeSubmessage(a2, v15, 7u);
  }

  v16 = *(v3 + 132);
  if ((v16 & 8) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 129), 8u);
    v16 = *(v3 + 132);
  }

  if ((v16 & 4) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 128), 9u);
  }

  v18 = *(v3 + 96);
  v17 = *(v3 + 104);
  while (v18 != v17)
  {
    v19 = *v18++;
    this = PB::Writer::writeSubmessage(a2, v19, 0xAu);
  }

  return this;
}

BOOL CMMsl::InEarTransitionEntry::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 132);
  if (*(a1 + 132))
  {
    if ((*(a2 + 132) & 1) == 0 || *(a1 + 120) != *(a2 + 120))
    {
      return 0;
    }
  }

  else if (*(a2 + 132))
  {
    return 0;
  }

  if ((*(a1 + 132) & 2) != 0)
  {
    if ((*(a2 + 132) & 2) == 0 || *(a1 + 124) != *(a2 + 124))
    {
      return 0;
    }
  }

  else if ((*(a2 + 132) & 2) != 0)
  {
    return 0;
  }

  if (!sub_10007A1C0((a1 + 72), a2 + 72))
  {
    return 0;
  }

  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a2 + 32);
  if (v5 - v6 != *(a2 + 40) - v7)
  {
    return 0;
  }

  while (v6 != v5)
  {
    if (*v6 != *v7)
    {
      return 0;
    }

    ++v6;
    ++v7;
  }

  v9 = *(a1 + 8);
  v8 = *(a1 + 16);
  v10 = *(a2 + 8);
  if (v8 - v9 != *(a2 + 16) - v10)
  {
    return 0;
  }

  while (v9 != v8)
  {
    if (*v9 != *v10)
    {
      return 0;
    }

    ++v9;
    ++v10;
  }

  v11 = *(a1 + 64);
  v12 = *(a2 + 64);
  if (v11)
  {
    if (!v12 || !CMMsl::ClefMeasurement::operator==(v11, v12))
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
      goto LABEL_30;
    }

    return 0;
  }

  if (!v14 || !CMMsl::ClefMeasurement::operator==(v13, v14))
  {
    return 0;
  }

LABEL_30:
  v15 = *(a2 + 132);
  if ((*(a1 + 132) & 8) != 0)
  {
    if ((*(a2 + 132) & 8) == 0 || *(a1 + 129) != *(a2 + 129))
    {
      return 0;
    }
  }

  else if ((*(a2 + 132) & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 132) & 4) != 0)
  {
    if ((*(a2 + 132) & 4) == 0 || *(a1 + 128) != *(a2 + 128))
    {
      return 0;
    }
  }

  else if ((*(a2 + 132) & 4) != 0)
  {
    return 0;
  }

  return sub_100127C70((a1 + 96), a2 + 96);
}

BOOL sub_100127C70(uint64_t *a1, uint64_t a2)
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
    result = CMMsl::ClefTemperature::operator==(*(v5 - 8), v6);
    v8 = !result || v5 == v3;
    v5 += 8;
  }

  while (!v8);
  return result;
}

uint64_t CMMsl::InEarTransitionEntry::hash_value(CMMsl::InEarTransitionEntry *this)
{
  if (*(this + 132))
  {
    v2 = *(this + 30);
    if ((*(this + 132) & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = 0;
    if ((*(this + 132) & 2) != 0)
    {
LABEL_3:
      v3 = *(this + 31);
      goto LABEL_6;
    }
  }

  v3 = 0;
LABEL_6:
  v4 = sub_10007A320(&v33, this + 9);
  v5 = *(this + 4);
  v6 = *(this + 5);
  v7 = PBHashBytes();
  v8 = *(this + 1);
  v9 = *(this + 2);
  v10 = PBHashBytes();
  v11 = *(this + 8);
  if (v11)
  {
    v12 = *(v11 + 16);
    v13 = *(v11 + 8);
    v14 = *(v11 + 12);
    v15 = v13 == 0.0 || (v12 & 1) == 0;
    v16 = LODWORD(v13);
    if (v15)
    {
      v16 = 0;
    }

    v17 = v12 & 2;
    v18 = v14 == 0.0 || v17 == 0;
    v19 = LODWORD(v14);
    if (v18)
    {
      v19 = 0;
    }

    v11 = v19 ^ v16;
  }

  v20 = *(this + 7);
  if (v20)
  {
    v21 = *(v20 + 16);
    v22 = *(v20 + 8);
    v23 = *(v20 + 12);
    v24 = v22 == 0.0 || (v21 & 1) == 0;
    v25 = LODWORD(v22);
    if (v24)
    {
      v25 = 0;
    }

    v26 = v21 & 2;
    v27 = v23 == 0.0 || v26 == 0;
    v28 = LODWORD(v23);
    if (v27)
    {
      v28 = 0;
    }

    v20 = v28 ^ v25;
  }

  if ((*(this + 132) & 8) != 0)
  {
    v29 = *(this + 129);
    if ((*(this + 132) & 4) != 0)
    {
      goto LABEL_32;
    }

LABEL_34:
    v30 = 0;
    return v3 ^ v2 ^ v4 ^ v7 ^ v10 ^ v11 ^ v20 ^ v29 ^ v30 ^ sub_100127E38(&v32, this + 12);
  }

  v29 = 0;
  if ((*(this + 132) & 4) == 0)
  {
    goto LABEL_34;
  }

LABEL_32:
  v30 = *(this + 128);
  return v3 ^ v2 ^ v4 ^ v7 ^ v10 ^ v11 ^ v20 ^ v29 ^ v30 ^ sub_100127E38(&v32, this + 12);
}

uint64_t sub_100127E38(uint64_t a1, uint64_t **a2)
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
    v6 = *(v5 + 16);
    v8 = *(v5 + 8);
    v7 = *(v5 + 12);
    if ((v6 & 1) == 0)
    {
      v8 = 0;
    }

    if ((v6 & 2) == 0)
    {
      v7 = 0;
    }

    result ^= v8 ^ v7;
  }

  while (v2 != v3);
  return result;
}

uint64_t CMMsl::InEarTransitionEntry::makeMinimum(uint64_t this)
{
  if (!*(this + 64))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::InEarTransitionEntry::makeBaseline(uint64_t this)
{
  if (!*(this + 56))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::InertialOdometry::InertialOdometry(uint64_t this)
{
  *this = off_10041F340;
  *(this + 68) = 0;
  return this;
}

{
  *this = off_10041F340;
  *(this + 68) = 0;
  return this;
}

void CMMsl::InertialOdometry::~InertialOdometry(CMMsl::InertialOdometry *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::InertialOdometry::InertialOdometry(uint64_t this, const CMMsl::InertialOdometry *a2)
{
  *this = off_10041F340;
  *(this + 68) = 0;
  v2 = *(a2 + 17);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 68) = 1;
    *(this + 8) = v4;
    v2 = *(a2 + 17);
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
    v5 = *(a2 + 4);
    v3 |= 2u;
    *(this + 68) = v3;
    *(this + 16) = v5;
    v2 = *(a2 + 17);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    v6 = *(a2 + 5);
    v3 |= 4u;
    *(this + 68) = v3;
    *(this + 20) = v6;
    v2 = *(a2 + 17);
    if ((v2 & 8) == 0)
    {
LABEL_8:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_24;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 6);
  v3 |= 8u;
  *(this + 68) = v3;
  *(this + 24) = v7;
  v2 = *(a2 + 17);
  if ((v2 & 0x10) == 0)
  {
LABEL_9:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  v8 = *(a2 + 7);
  v3 |= 0x10u;
  *(this + 68) = v3;
  *(this + 28) = v8;
  v2 = *(a2 + 17);
  if ((v2 & 0x20) == 0)
  {
LABEL_10:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  v9 = *(a2 + 8);
  v3 |= 0x20u;
  *(this + 68) = v3;
  *(this + 32) = v9;
  v2 = *(a2 + 17);
  if ((v2 & 0x40) == 0)
  {
LABEL_11:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  v10 = *(a2 + 9);
  v3 |= 0x40u;
  *(this + 68) = v3;
  *(this + 36) = v10;
  v2 = *(a2 + 17);
  if ((v2 & 0x100) == 0)
  {
LABEL_12:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  v11 = *(a2 + 11);
  v3 |= 0x100u;
  *(this + 68) = v3;
  *(this + 44) = v11;
  v2 = *(a2 + 17);
  if ((v2 & 0x200) == 0)
  {
LABEL_13:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  v12 = *(a2 + 12);
  v3 |= 0x200u;
  *(this + 68) = v3;
  *(this + 48) = v12;
  v2 = *(a2 + 17);
  if ((v2 & 0x400) == 0)
  {
LABEL_14:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_30;
  }

LABEL_29:
  v13 = *(a2 + 13);
  v3 |= 0x400u;
  *(this + 68) = v3;
  *(this + 52) = v13;
  v2 = *(a2 + 17);
  if ((v2 & 0x80) == 0)
  {
LABEL_15:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_31;
  }

LABEL_30:
  v14 = *(a2 + 10);
  v3 |= 0x80u;
  *(this + 68) = v3;
  *(this + 40) = v14;
  v2 = *(a2 + 17);
  if ((v2 & 0x800) == 0)
  {
LABEL_16:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_32;
  }

LABEL_31:
  v15 = *(a2 + 14);
  v3 |= 0x800u;
  *(this + 68) = v3;
  *(this + 56) = v15;
  v2 = *(a2 + 17);
  if ((v2 & 0x1000) == 0)
  {
LABEL_17:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_33;
  }

LABEL_32:
  v16 = *(a2 + 15);
  v3 |= 0x1000u;
  *(this + 68) = v3;
  *(this + 60) = v16;
  v2 = *(a2 + 17);
  if ((v2 & 0x2000) == 0)
  {
LABEL_18:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_34;
  }

LABEL_33:
  v17 = *(a2 + 64);
  v3 |= 0x2000u;
  *(this + 68) = v3;
  *(this + 64) = v17;
  v2 = *(a2 + 17);
  if ((v2 & 0x4000) == 0)
  {
LABEL_19:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_35;
  }

LABEL_34:
  v18 = *(a2 + 65);
  v3 |= 0x4000u;
  *(this + 68) = v3;
  *(this + 65) = v18;
  v2 = *(a2 + 17);
  if ((v2 & 0x8000) == 0)
  {
LABEL_20:
    if ((v2 & 0x10000) == 0)
    {
      return this;
    }

LABEL_36:
    v20 = *(a2 + 67);
    *(this + 68) = v3 | 0x10000;
    *(this + 67) = v20;
    return this;
  }

LABEL_35:
  v19 = *(a2 + 66);
  v3 |= 0x8000u;
  *(this + 68) = v3;
  *(this + 66) = v19;
  if ((*(a2 + 17) & 0x10000) != 0)
  {
    goto LABEL_36;
  }

  return this;
}

CMMsl *CMMsl::InertialOdometry::operator=(CMMsl *a1, const CMMsl::InertialOdometry *a2)
{
  if (a1 != a2)
  {
    CMMsl::InertialOdometry::InertialOdometry(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::InertialOdometry *a2, CMMsl::InertialOdometry *a3)
{
  v3 = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  LODWORD(v4) = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v4;
  LODWORD(v4) = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v4;
  LODWORD(v4) = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v4;
  LODWORD(v4) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v4;
  LODWORD(v4) = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v4;
  LODWORD(v4) = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v4;
  LODWORD(v4) = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v4;
  LODWORD(v4) = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v4;
  result = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = result;
  v6 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v6;
  v7 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v7;
  LOBYTE(v7) = *(this + 64);
  *(this + 64) = *(a2 + 64);
  *(a2 + 64) = v7;
  LOBYTE(v7) = *(this + 65);
  *(this + 65) = *(a2 + 65);
  *(a2 + 65) = v7;
  LOBYTE(v7) = *(this + 66);
  *(this + 66) = *(a2 + 66);
  *(a2 + 66) = v7;
  LOBYTE(v7) = *(this + 67);
  *(this + 67) = *(a2 + 67);
  *(a2 + 67) = v7;
  return result;
}

float CMMsl::InertialOdometry::InertialOdometry(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041F340;
  *(a1 + 68) = *(a2 + 68);
  *(a2 + 68) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 65) = *(a2 + 65);
  *(a1 + 66) = *(a2 + 66);
  *(a1 + 67) = *(a2 + 67);
  return result;
}

CMMsl *CMMsl::InertialOdometry::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::InertialOdometry::InertialOdometry(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::InertialOdometry::formatText(CMMsl::InertialOdometry *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 17);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "deltaPositionX", *(this + 4));
    v5 = *(this + 17);
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

  PB::TextFormatter::format(a2, "deltaPositionY", *(this + 5));
  v5 = *(this + 17);
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
  PB::TextFormatter::format(a2, "deltaPositionZ", *(this + 6));
  v5 = *(this + 17);
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
  PB::TextFormatter::format(a2, "deltaVelocityX", *(this + 7));
  v5 = *(this + 17);
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
  PB::TextFormatter::format(a2, "deltaVelocityY", *(this + 8));
  v5 = *(this + 17);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  PB::TextFormatter::format(a2, "deltaVelocityZ", *(this + 9));
  v5 = *(this + 17);
  if ((v5 & 0x2000) == 0)
  {
LABEL_8:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(a2, "isBIO", *(this + 64));
  v5 = *(this + 17);
  if ((v5 & 0x4000) == 0)
  {
LABEL_9:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  PB::TextFormatter::format(a2, "isDOTBiasChangePossible", *(this + 65));
  v5 = *(this + 17);
  if ((v5 & 0x8000) == 0)
  {
LABEL_10:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  PB::TextFormatter::format(a2, "isMounted", *(this + 66));
  v5 = *(this + 17);
  if ((v5 & 0x10000) == 0)
  {
LABEL_11:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  PB::TextFormatter::format(a2, "isZUPT", *(this + 67));
  v5 = *(this + 17);
  if ((v5 & 0x80) == 0)
  {
LABEL_12:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  PB::TextFormatter::format(a2, "quaternionW", *(this + 10));
  v5 = *(this + 17);
  if ((v5 & 0x100) == 0)
  {
LABEL_13:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(a2, "quaternionX", *(this + 11));
  v5 = *(this + 17);
  if ((v5 & 0x200) == 0)
  {
LABEL_14:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  PB::TextFormatter::format(a2, "quaternionY", *(this + 12));
  v5 = *(this + 17);
  if ((v5 & 0x400) == 0)
  {
LABEL_15:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(a2, "quaternionZ", *(this + 13));
  v5 = *(this + 17);
  if ((v5 & 0x800) == 0)
  {
LABEL_16:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(a2, "referenceFrame", *(this + 14));
  v5 = *(this + 17);
  if ((v5 & 0x1000) == 0)
  {
LABEL_17:
    if ((v5 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_37:
  PB::TextFormatter::format(a2, "staticFlag", *(this + 15));
  if (*(this + 17))
  {
LABEL_18:
    PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  }

LABEL_19:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::InertialOdometry::readFrom(CMMsl::InertialOdometry *this, PB::Reader *a2)
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
        goto LABEL_121;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 17) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_79;
          }

          *(this + 1) = *(*a2 + v2);
          v2 = *(a2 + 1) + 8;
          goto LABEL_106;
        case 2u:
          *(this + 17) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_79;
          }

          *(this + 4) = *(*a2 + v2);
          goto LABEL_105;
        case 3u:
          *(this + 17) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_79;
          }

          *(this + 5) = *(*a2 + v2);
          goto LABEL_105;
        case 4u:
          *(this + 17) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_79;
          }

          *(this + 6) = *(*a2 + v2);
          goto LABEL_105;
        case 5u:
          *(this + 17) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_79;
          }

          *(this + 7) = *(*a2 + v2);
          goto LABEL_105;
        case 6u:
          *(this + 17) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_79;
          }

          *(this + 8) = *(*a2 + v2);
          goto LABEL_105;
        case 7u:
          *(this + 17) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_79;
          }

          *(this + 9) = *(*a2 + v2);
          goto LABEL_105;
        case 8u:
          *(this + 17) |= 0x100u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_79;
          }

          *(this + 11) = *(*a2 + v2);
          goto LABEL_105;
        case 9u:
          *(this + 17) |= 0x200u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_79;
          }

          *(this + 12) = *(*a2 + v2);
          goto LABEL_105;
        case 0xAu:
          *(this + 17) |= 0x400u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_79;
          }

          *(this + 13) = *(*a2 + v2);
          goto LABEL_105;
        case 0xBu:
          *(this + 17) |= 0x80u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
LABEL_79:
            *(a2 + 24) = 1;
          }

          else
          {
            *(this + 10) = *(*a2 + v2);
LABEL_105:
            v2 = *(a2 + 1) + 4;
LABEL_106:
            *(a2 + 1) = v2;
          }

          goto LABEL_117;
        case 0xCu:
          *(this + 17) |= 0x800u;
          v26 = *(a2 + 1);
          v2 = *(a2 + 2);
          v27 = *a2;
          if (v26 > 0xFFFFFFFFFFFFFFF5 || v26 + 10 > v2)
          {
            v46 = 0;
            v47 = 0;
            v30 = 0;
            if (v2 <= v26)
            {
              v2 = *(a2 + 1);
            }

            v48 = v2 - v26;
            v49 = (v27 + v26);
            v50 = v26 + 1;
            while (1)
            {
              if (!v48)
              {
                LODWORD(v30) = 0;
                *(a2 + 24) = 1;
                goto LABEL_112;
              }

              v51 = v50;
              v52 = *v49;
              *(a2 + 1) = v51;
              v30 |= (v52 & 0x7F) << v46;
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
                LODWORD(v30) = 0;
LABEL_111:
                v2 = v51;
                goto LABEL_112;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v30) = 0;
            }

            goto LABEL_111;
          }

          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = (v27 + v26);
          v32 = v26 + 1;
          do
          {
            v2 = v32;
            *(a2 + 1) = v32;
            v33 = *v31++;
            v30 |= (v33 & 0x7F) << v28;
            if ((v33 & 0x80) == 0)
            {
              goto LABEL_112;
            }

            v28 += 7;
            ++v32;
            v14 = v29++ > 8;
          }

          while (!v14);
          LODWORD(v30) = 0;
LABEL_112:
          *(this + 14) = v30;
          goto LABEL_117;
        case 0xDu:
          *(this + 17) |= 0x1000u;
          v34 = *(a2 + 1);
          v2 = *(a2 + 2);
          v35 = *a2;
          if (v34 > 0xFFFFFFFFFFFFFFF5 || v34 + 10 > v2)
          {
            v53 = 0;
            v54 = 0;
            v38 = 0;
            if (v2 <= v34)
            {
              v2 = *(a2 + 1);
            }

            v55 = v2 - v34;
            v56 = (v35 + v34);
            v57 = v34 + 1;
            while (1)
            {
              if (!v55)
              {
                LODWORD(v38) = 0;
                *(a2 + 24) = 1;
                goto LABEL_116;
              }

              v58 = v57;
              v59 = *v56;
              *(a2 + 1) = v58;
              v38 |= (v59 & 0x7F) << v53;
              if ((v59 & 0x80) == 0)
              {
                break;
              }

              v53 += 7;
              --v55;
              ++v56;
              v57 = v58 + 1;
              v14 = v54++ > 8;
              if (v14)
              {
                LODWORD(v38) = 0;
LABEL_115:
                v2 = v58;
                goto LABEL_116;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v38) = 0;
            }

            goto LABEL_115;
          }

          v36 = 0;
          v37 = 0;
          v38 = 0;
          v39 = (v35 + v34);
          v40 = v34 + 1;
          do
          {
            v2 = v40;
            *(a2 + 1) = v40;
            v41 = *v39++;
            v38 |= (v41 & 0x7F) << v36;
            if ((v41 & 0x80) == 0)
            {
              goto LABEL_116;
            }

            v36 += 7;
            ++v40;
            v14 = v37++ > 8;
          }

          while (!v14);
          LODWORD(v38) = 0;
LABEL_116:
          *(this + 15) = v38;
          goto LABEL_117;
        case 0xEu:
          *(this + 17) |= 0x2000u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v45 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v44 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v45 = v44 != 0;
          }

          *(this + 64) = v45;
          goto LABEL_117;
        case 0xFu:
          *(this + 17) |= 0x4000u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
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

          *(this + 65) = v25;
          goto LABEL_117;
        case 0x10u:
          *(this + 17) |= 0x8000u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v43 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v42 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v43 = v42 != 0;
          }

          *(this + 66) = v43;
          goto LABEL_117;
        case 0x11u:
          *(this + 17) |= 0x10000u;
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

          *(this + 67) = v23;
          goto LABEL_117;
        default:
          if (!PB::Reader::skip(a2, v10 >> 3, v10 & 7, 0))
          {
            v60 = 0;
            return v60 & 1;
          }

          v2 = *(a2 + 1);
LABEL_117:
          v3 = *(a2 + 2);
          v4 = *(a2 + 24);
          if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
          {
            goto LABEL_121;
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

LABEL_121:
  v60 = v4 ^ 1;
  return v60 & 1;
}

uint64_t CMMsl::InertialOdometry::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 68);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8), 1u);
    v4 = *(v3 + 68);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 16), 2u);
  v4 = *(v3 + 68);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = PB::Writer::write(a2, *(v3 + 20), 3u);
  v4 = *(v3 + 68);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = PB::Writer::write(a2, *(v3 + 24), 4u);
  v4 = *(v3 + 68);
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = PB::Writer::write(a2, *(v3 + 28), 5u);
  v4 = *(v3 + 68);
  if ((v4 & 0x20) == 0)
  {
LABEL_7:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = PB::Writer::write(a2, *(v3 + 32), 6u);
  v4 = *(v3 + 68);
  if ((v4 & 0x40) == 0)
  {
LABEL_8:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = PB::Writer::write(a2, *(v3 + 36), 7u);
  v4 = *(v3 + 68);
  if ((v4 & 0x100) == 0)
  {
LABEL_9:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = PB::Writer::write(a2, *(v3 + 44), 8u);
  v4 = *(v3 + 68);
  if ((v4 & 0x200) == 0)
  {
LABEL_10:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = PB::Writer::write(a2, *(v3 + 48), 9u);
  v4 = *(v3 + 68);
  if ((v4 & 0x400) == 0)
  {
LABEL_11:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = PB::Writer::write(a2, *(v3 + 52), 0xAu);
  v4 = *(v3 + 68);
  if ((v4 & 0x80) == 0)
  {
LABEL_12:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = PB::Writer::write(a2, *(v3 + 40), 0xBu);
  v4 = *(v3 + 68);
  if ((v4 & 0x800) == 0)
  {
LABEL_13:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = PB::Writer::writeVarInt(a2, *(v3 + 56), 0xCu);
  v4 = *(v3 + 68);
  if ((v4 & 0x1000) == 0)
  {
LABEL_14:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = PB::Writer::writeVarInt(a2, *(v3 + 60), 0xDu);
  v4 = *(v3 + 68);
  if ((v4 & 0x2000) == 0)
  {
LABEL_15:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = PB::Writer::write(a2, *(v3 + 64), 0xEu);
  v4 = *(v3 + 68);
  if ((v4 & 0x4000) == 0)
  {
LABEL_16:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

LABEL_34:
    this = PB::Writer::write(a2, *(v3 + 66), 0x10u);
    if ((*(v3 + 68) & 0x10000) == 0)
    {
      return this;
    }

    goto LABEL_35;
  }

LABEL_33:
  this = PB::Writer::write(a2, *(v3 + 65), 0xFu);
  v4 = *(v3 + 68);
  if ((v4 & 0x8000) != 0)
  {
    goto LABEL_34;
  }

LABEL_17:
  if ((v4 & 0x10000) == 0)
  {
    return this;
  }

LABEL_35:
  v5 = *(v3 + 67);

  return PB::Writer::write(a2, v5, 0x11u);
}

BOOL CMMsl::InertialOdometry::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 68);
  v3 = *(a2 + 68);
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

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
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

  if ((v2 & 0x100) != 0)
  {
    if ((v3 & 0x100) == 0 || *(a1 + 44) != *(a2 + 44))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100) != 0)
  {
    return 0;
  }

  if ((v2 & 0x200) != 0)
  {
    if ((v3 & 0x200) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((v3 & 0x200) != 0)
  {
    return 0;
  }

  if ((v2 & 0x400) != 0)
  {
    if ((v3 & 0x400) == 0 || *(a1 + 52) != *(a2 + 52))
    {
      return 0;
    }
  }

  else if ((v3 & 0x400) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if ((v2 & 0x800) != 0)
  {
    if ((v3 & 0x800) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((v3 & 0x800) != 0)
  {
    return 0;
  }

  if ((v2 & 0x1000) != 0)
  {
    if ((v3 & 0x1000) == 0 || *(a1 + 60) != *(a2 + 60))
    {
      return 0;
    }
  }

  else if ((v3 & 0x1000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x2000) != 0)
  {
    if ((v3 & 0x2000) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((v3 & 0x2000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x4000) != 0)
  {
    if ((v3 & 0x4000) == 0 || *(a1 + 65) != *(a2 + 65))
    {
      return 0;
    }
  }

  else if ((v3 & 0x4000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x8000) != 0)
  {
    if ((v3 & 0x8000) == 0 || *(a1 + 66) != *(a2 + 66))
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000) != 0)
  {
    return 0;
  }

  v4 = (v3 & 0x10000) == 0;
  if ((v2 & 0x10000) != 0)
  {
    return (v3 & 0x10000) != 0 && *(a1 + 67) == *(a2 + 67);
  }

  return v4;
}

uint64_t CMMsl::InertialOdometry::hash_value(CMMsl::InertialOdometry *this)
{
  v1 = *(this + 17);
  if ((v1 & 1) == 0)
  {
    v2 = 0.0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_42:
    v4 = 0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_43:
    v6 = 0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_9;
    }

LABEL_44:
    v8 = 0;
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_12;
    }

LABEL_45:
    v10 = 0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_15;
    }

LABEL_46:
    v12 = 0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_18;
    }

LABEL_47:
    v14 = 0;
    if ((v1 & 0x100) != 0)
    {
      goto LABEL_21;
    }

LABEL_48:
    v16 = 0;
    if ((v1 & 0x200) != 0)
    {
      goto LABEL_24;
    }

LABEL_49:
    v18 = 0;
    if ((v1 & 0x400) != 0)
    {
      goto LABEL_27;
    }

LABEL_50:
    v20 = 0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_30;
    }

LABEL_51:
    v22 = 0;
    if ((v1 & 0x800) != 0)
    {
      goto LABEL_33;
    }

    goto LABEL_52;
  }

  v2 = *(this + 1);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((v1 & 2) == 0)
  {
    goto LABEL_42;
  }

LABEL_3:
  v3 = *(this + 4);
  v4 = LODWORD(v3);
  if (v3 == 0.0)
  {
    v4 = 0;
  }

  if ((v1 & 4) == 0)
  {
    goto LABEL_43;
  }

LABEL_6:
  v5 = *(this + 5);
  v6 = LODWORD(v5);
  if (v5 == 0.0)
  {
    v6 = 0;
  }

  if ((v1 & 8) == 0)
  {
    goto LABEL_44;
  }

LABEL_9:
  v7 = *(this + 6);
  v8 = LODWORD(v7);
  if (v7 == 0.0)
  {
    v8 = 0;
  }

  if ((v1 & 0x10) == 0)
  {
    goto LABEL_45;
  }

LABEL_12:
  v9 = *(this + 7);
  v10 = LODWORD(v9);
  if (v9 == 0.0)
  {
    v10 = 0;
  }

  if ((v1 & 0x20) == 0)
  {
    goto LABEL_46;
  }

LABEL_15:
  v11 = *(this + 8);
  v12 = LODWORD(v11);
  if (v11 == 0.0)
  {
    v12 = 0;
  }

  if ((v1 & 0x40) == 0)
  {
    goto LABEL_47;
  }

LABEL_18:
  v13 = *(this + 9);
  v14 = LODWORD(v13);
  if (v13 == 0.0)
  {
    v14 = 0;
  }

  if ((v1 & 0x100) == 0)
  {
    goto LABEL_48;
  }

LABEL_21:
  v15 = *(this + 11);
  v16 = LODWORD(v15);
  if (v15 == 0.0)
  {
    v16 = 0;
  }

  if ((v1 & 0x200) == 0)
  {
    goto LABEL_49;
  }

LABEL_24:
  v17 = *(this + 12);
  v18 = LODWORD(v17);
  if (v17 == 0.0)
  {
    v18 = 0;
  }

  if ((v1 & 0x400) == 0)
  {
    goto LABEL_50;
  }

LABEL_27:
  v19 = *(this + 13);
  v20 = LODWORD(v19);
  if (v19 == 0.0)
  {
    v20 = 0;
  }

  if ((v1 & 0x80) == 0)
  {
    goto LABEL_51;
  }

LABEL_30:
  v21 = *(this + 10);
  v22 = LODWORD(v21);
  if (v21 == 0.0)
  {
    v22 = 0;
  }

  if ((v1 & 0x800) != 0)
  {
LABEL_33:
    v23 = *(this + 14);
    if ((v1 & 0x1000) != 0)
    {
      goto LABEL_34;
    }

    goto LABEL_53;
  }

LABEL_52:
  v23 = 0;
  if ((v1 & 0x1000) != 0)
  {
LABEL_34:
    v24 = *(this + 15);
    if ((v1 & 0x2000) != 0)
    {
      goto LABEL_35;
    }

    goto LABEL_54;
  }

LABEL_53:
  v24 = 0;
  if ((v1 & 0x2000) != 0)
  {
LABEL_35:
    v25 = *(this + 64);
    if ((v1 & 0x4000) != 0)
    {
      goto LABEL_36;
    }

    goto LABEL_55;
  }

LABEL_54:
  v25 = 0;
  if ((v1 & 0x4000) != 0)
  {
LABEL_36:
    v26 = *(this + 65);
    if ((v1 & 0x8000) != 0)
    {
      goto LABEL_37;
    }

LABEL_56:
    v27 = 0;
    if ((v1 & 0x10000) != 0)
    {
      goto LABEL_38;
    }

LABEL_57:
    v28 = 0;
    return v4 ^ *&v2 ^ v6 ^ v8 ^ v10 ^ v12 ^ v14 ^ v16 ^ v18 ^ v20 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28;
  }

LABEL_55:
  v26 = 0;
  if ((v1 & 0x8000) == 0)
  {
    goto LABEL_56;
  }

LABEL_37:
  v27 = *(this + 66);
  if ((v1 & 0x10000) == 0)
  {
    goto LABEL_57;
  }

LABEL_38:
  v28 = *(this + 67);
  return v4 ^ *&v2 ^ v6 ^ v8 ^ v10 ^ v12 ^ v14 ^ v16 ^ v18 ^ v20 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28;
}

double CMMsl::InitialHistoricalMeanSeaLevelPressure::InitialHistoricalMeanSeaLevelPressure(CMMsl::InitialHistoricalMeanSeaLevelPressure *this)
{
  *this = off_10041F378;
  *(this + 22) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  return result;
}

{
  *this = off_10041F378;
  *(this + 22) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  return result;
}

void CMMsl::InitialHistoricalMeanSeaLevelPressure::~InitialHistoricalMeanSeaLevelPressure(CMMsl::InitialHistoricalMeanSeaLevelPressure *this)
{
  *this = off_10041F378;
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
  CMMsl::InitialHistoricalMeanSeaLevelPressure::~InitialHistoricalMeanSeaLevelPressure(this);

  operator delete();
}

CMMsl::InitialHistoricalMeanSeaLevelPressure *CMMsl::InitialHistoricalMeanSeaLevelPressure::InitialHistoricalMeanSeaLevelPressure(char **this, char **a2)
{
  *(this + 1) = 0u;
  v4 = this + 1;
  *(this + 7) = 0u;
  v5 = this + 7;
  *this = off_10041F378;
  *(this + 22) = 0;
  *(this + 3) = 0u;
  *(this + 5) = 0u;
  this[9] = 0;
  if (this != a2)
  {
    sub_100035BF0(this + 4, a2[4], a2[5], (a2[5] - a2[4]) >> 3);
    sub_100035BF0(v4, a2[1], a2[2], (a2[2] - a2[1]) >> 3);
    sub_100035BF0(v5, a2[7], a2[8], (a2[8] - a2[7]) >> 3);
  }

  if (a2[11])
  {
    v6 = a2[10];
    *(this + 88) |= 1u;
    this[10] = v6;
  }

  return this;
}

uint64_t CMMsl::InitialHistoricalMeanSeaLevelPressure::operator=(uint64_t a1, char **a2)
{
  if (a1 != a2)
  {
    CMMsl::InitialHistoricalMeanSeaLevelPressure::InitialHistoricalMeanSeaLevelPressure(&v11, a2);
    v3 = *(a1 + 88);
    *(a1 + 88) = v18;
    v18 = v3;
    v4 = *(a1 + 40);
    *(a1 + 40) = v14;
    v14 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v12;
    v12 = v5;
    v6 = *(a1 + 24);
    *(a1 + 24) = v13;
    v13 = v6;
    v7 = *(a1 + 56);
    *(a1 + 56) = v15;
    v15 = v7;
    v8 = *(a1 + 72);
    *(a1 + 72) = v16;
    v16 = v8;
    v9 = *(a1 + 80);
    *(a1 + 80) = v17;
    v17 = v9;
    CMMsl::InitialHistoricalMeanSeaLevelPressure::~InitialHistoricalMeanSeaLevelPressure(&v11);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::InitialHistoricalMeanSeaLevelPressure *a2, CMMsl::InitialHistoricalMeanSeaLevelPressure *a3)
{
  v3 = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v3;
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v5;
  v6 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v6;
  v7 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v7;
  v8 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v8;
  v9 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v9;
  v10 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v10;
  v11 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v11;
  v12 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v12;
  result = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = result;
  return result;
}

uint64_t CMMsl::InitialHistoricalMeanSeaLevelPressure::InitialHistoricalMeanSeaLevelPressure(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041F378;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0u;
  v4 = a1 + 56;
  *(a1 + 8) = 0u;
  v5 = a1 + 8;
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 88) = 0;
  sub_1002A2DD0(a1 + 32, (a2 + 32));
  sub_1002A2DD0(v5, (a2 + 8));
  sub_1002A2DD0(v4, (a2 + 56));
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

uint64_t CMMsl::InitialHistoricalMeanSeaLevelPressure::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::InitialHistoricalMeanSeaLevelPressure::InitialHistoricalMeanSeaLevelPressure(&v11, a2);
    v3 = *(a1 + 88);
    *(a1 + 88) = v18;
    v18 = v3;
    v4 = *(a1 + 40);
    *(a1 + 40) = v14;
    v14 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v12;
    v12 = v5;
    v6 = *(a1 + 24);
    *(a1 + 24) = v13;
    v13 = v6;
    v7 = *(a1 + 56);
    *(a1 + 56) = v15;
    v15 = v7;
    v8 = *(a1 + 72);
    *(a1 + 72) = v16;
    v16 = v8;
    v9 = *(a1 + 80);
    *(a1 + 80) = v17;
    v17 = v9;
    CMMsl::InitialHistoricalMeanSeaLevelPressure::~InitialHistoricalMeanSeaLevelPressure(&v11);
  }

  return a1;
}

uint64_t CMMsl::InitialHistoricalMeanSeaLevelPressure::formatText(CMMsl::InitialHistoricalMeanSeaLevelPressure *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(a2, "historicalMeanSeaLevelPressure", v7);
  }

  v8 = *(this + 4);
  v9 = *(this + 5);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::TextFormatter::format(a2, "historicalTimestamp", v10);
  }

  v11 = *(this + 7);
  v12 = *(this + 8);
  while (v11 != v12)
  {
    v13 = *v11++;
    PB::TextFormatter::format(a2, "historicalUncertainty", v13);
  }

  if (*(this + 88))
  {
    PB::TextFormatter::format(a2, "refreshTime", *(this + 10));
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::InitialHistoricalMeanSeaLevelPressure::readFrom(CMMsl::InitialHistoricalMeanSeaLevelPressure *this, PB::Reader *a2)
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
        goto LABEL_142;
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
        goto LABEL_142;
      }

      v23 = v10 >> 3;
      if ((v10 >> 3) <= 2)
      {
        break;
      }

      if (v23 == 3)
      {
        if (v22 == 2)
        {
          if (PB::Reader::placeMark())
          {
LABEL_144:
            v111 = 0;
            return v111 & 1;
          }

          v57 = *(a2 + 1);
          v58 = *(a2 + 2);
          while (v57 < v58 && (*(a2 + 24) & 1) == 0)
          {
            v60 = *(this + 8);
            v59 = *(this + 9);
            if (v60 >= v59)
            {
              v62 = *(this + 7);
              v63 = v60 - v62;
              v64 = (v60 - v62) >> 3;
              v65 = v64 + 1;
              if ((v64 + 1) >> 61)
              {
                goto LABEL_145;
              }

              v66 = v59 - v62;
              if (v66 >> 2 > v65)
              {
                v65 = v66 >> 2;
              }

              if (v66 >= 0x7FFFFFFFFFFFFFF8)
              {
                v67 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v67 = v65;
              }

              if (v67)
              {
                sub_10000CDCC(this + 56, v67);
              }

              v68 = (v60 - v62) >> 3;
              v69 = (8 * v64);
              v70 = (8 * v64 - 8 * v68);
              *v69 = 0;
              v61 = v69 + 1;
              memcpy(v70, v62, v63);
              v71 = *(this + 7);
              *(this + 7) = v70;
              *(this + 8) = v61;
              *(this + 9) = 0;
              if (v71)
              {
                operator delete(v71);
              }
            }

            else
            {
              *v60 = 0;
              v61 = v60 + 8;
            }

            *(this + 8) = v61;
            v72 = *(a2 + 1);
            if (v72 > 0xFFFFFFFFFFFFFFF7 || v72 + 8 > *(a2 + 2))
            {
LABEL_98:
              *(a2 + 24) = 1;
              goto LABEL_99;
            }

            *(v61 - 1) = *(*a2 + v72);
            v58 = *(a2 + 2);
            v57 = *(a2 + 1) + 8;
            *(a2 + 1) = v57;
          }

          goto LABEL_99;
        }

        v79 = *(this + 8);
        v78 = *(this + 9);
        if (v79 >= v78)
        {
          v92 = *(this + 7);
          v93 = v79 - v92;
          v94 = (v79 - v92) >> 3;
          v95 = v94 + 1;
          if ((v94 + 1) >> 61)
          {
LABEL_145:
            sub_10000CD24();
          }

          v96 = v78 - v92;
          if (v96 >> 2 > v95)
          {
            v95 = v96 >> 2;
          }

          if (v96 >= 0x7FFFFFFFFFFFFFF8)
          {
            v97 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v97 = v95;
          }

          if (v97)
          {
            sub_10000CDCC(this + 56, v97);
          }

          v106 = (v79 - v92) >> 3;
          v107 = (8 * v94);
          v108 = (8 * v94 - 8 * v106);
          *v107 = 0;
          v75 = v107 + 1;
          memcpy(v108, v92, v93);
          v109 = *(this + 7);
          *(this + 7) = v108;
          *(this + 8) = v75;
          *(this + 9) = 0;
          if (v109)
          {
            operator delete(v109);
          }
        }

        else
        {
          *v79 = 0;
          v75 = v79 + 8;
        }

        *(this + 8) = v75;
LABEL_133:
        v110 = *(a2 + 1);
        if (v110 > 0xFFFFFFFFFFFFFFF7 || v110 + 8 > *(a2 + 2))
        {
          goto LABEL_135;
        }

        *(v75 - 1) = *(*a2 + v110);
        goto LABEL_137;
      }

      if (v23 != 4)
      {
LABEL_50:
        if ((PB::Reader::skip(a2, v23, v22, 0) & 1) == 0)
        {
          goto LABEL_144;
        }

        goto LABEL_138;
      }

      *(this + 88) |= 1u;
      v40 = *(a2 + 1);
      if (v40 > 0xFFFFFFFFFFFFFFF7 || v40 + 8 > *(a2 + 2))
      {
LABEL_135:
        *(a2 + 24) = 1;
        goto LABEL_138;
      }

      *(this + 10) = *(*a2 + v40);
LABEL_137:
      *(a2 + 1) += 8;
LABEL_138:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_142;
      }
    }

    if (v23 == 1)
    {
      if (v22 == 2)
      {
        if (PB::Reader::placeMark())
        {
          goto LABEL_144;
        }

        v41 = *(a2 + 1);
        v42 = *(a2 + 2);
        while (v41 < v42 && (*(a2 + 24) & 1) == 0)
        {
          v44 = *(this + 5);
          v43 = *(this + 6);
          if (v44 >= v43)
          {
            v46 = *(this + 4);
            v47 = v44 - v46;
            v48 = (v44 - v46) >> 3;
            v49 = v48 + 1;
            if ((v48 + 1) >> 61)
            {
              goto LABEL_145;
            }

            v50 = v43 - v46;
            if (v50 >> 2 > v49)
            {
              v49 = v50 >> 2;
            }

            if (v50 >= 0x7FFFFFFFFFFFFFF8)
            {
              v51 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v51 = v49;
            }

            if (v51)
            {
              sub_10000CDCC(this + 32, v51);
            }

            v52 = (v44 - v46) >> 3;
            v53 = (8 * v48);
            v54 = (8 * v48 - 8 * v52);
            *v53 = 0;
            v45 = v53 + 1;
            memcpy(v54, v46, v47);
            v55 = *(this + 4);
            *(this + 4) = v54;
            *(this + 5) = v45;
            *(this + 6) = 0;
            if (v55)
            {
              operator delete(v55);
            }
          }

          else
          {
            *v44 = 0;
            v45 = v44 + 8;
          }

          *(this + 5) = v45;
          v56 = *(a2 + 1);
          if (v56 > 0xFFFFFFFFFFFFFFF7 || v56 + 8 > *(a2 + 2))
          {
            goto LABEL_98;
          }

          *(v45 - 1) = *(*a2 + v56);
          v42 = *(a2 + 2);
          v41 = *(a2 + 1) + 8;
          *(a2 + 1) = v41;
        }

        goto LABEL_99;
      }

      v77 = *(this + 5);
      v76 = *(this + 6);
      if (v77 >= v76)
      {
        v86 = *(this + 4);
        v87 = v77 - v86;
        v88 = (v77 - v86) >> 3;
        v89 = v88 + 1;
        if ((v88 + 1) >> 61)
        {
          goto LABEL_145;
        }

        v90 = v76 - v86;
        if (v90 >> 2 > v89)
        {
          v89 = v90 >> 2;
        }

        if (v90 >= 0x7FFFFFFFFFFFFFF8)
        {
          v91 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v91 = v89;
        }

        if (v91)
        {
          sub_10000CDCC(this + 32, v91);
        }

        v102 = (v77 - v86) >> 3;
        v103 = (8 * v88);
        v104 = (8 * v88 - 8 * v102);
        *v103 = 0;
        v75 = v103 + 1;
        memcpy(v104, v86, v87);
        v105 = *(this + 4);
        *(this + 4) = v104;
        *(this + 5) = v75;
        *(this + 6) = 0;
        if (v105)
        {
          operator delete(v105);
        }
      }

      else
      {
        *v77 = 0;
        v75 = v77 + 8;
      }

      *(this + 5) = v75;
    }

    else
    {
      if (v23 != 2)
      {
        goto LABEL_50;
      }

      if (v22 == 2)
      {
        if (PB::Reader::placeMark())
        {
          goto LABEL_144;
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
            v31 = (v27 - v29) >> 3;
            v32 = v31 + 1;
            if ((v31 + 1) >> 61)
            {
              goto LABEL_145;
            }

            v33 = v26 - v29;
            if (v33 >> 2 > v32)
            {
              v32 = v33 >> 2;
            }

            if (v33 >= 0x7FFFFFFFFFFFFFF8)
            {
              v34 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v34 = v32;
            }

            if (v34)
            {
              sub_10000CDCC(this + 8, v34);
            }

            v35 = (v27 - v29) >> 3;
            v36 = (8 * v31);
            v37 = (8 * v31 - 8 * v35);
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
            v28 = v27 + 8;
          }

          *(this + 2) = v28;
          v39 = *(a2 + 1);
          if (v39 > 0xFFFFFFFFFFFFFFF7 || v39 + 8 > *(a2 + 2))
          {
            goto LABEL_98;
          }

          *(v28 - 1) = *(*a2 + v39);
          v25 = *(a2 + 2);
          v24 = *(a2 + 1) + 8;
          *(a2 + 1) = v24;
        }

LABEL_99:
        PB::Reader::recallMark();
        goto LABEL_138;
      }

      v74 = *(this + 2);
      v73 = *(this + 3);
      if (v74 >= v73)
      {
        v80 = *(this + 1);
        v81 = v74 - v80;
        v82 = (v74 - v80) >> 3;
        v83 = v82 + 1;
        if ((v82 + 1) >> 61)
        {
          goto LABEL_145;
        }

        v84 = v73 - v80;
        if (v84 >> 2 > v83)
        {
          v83 = v84 >> 2;
        }

        if (v84 >= 0x7FFFFFFFFFFFFFF8)
        {
          v85 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v85 = v83;
        }

        if (v85)
        {
          sub_10000CDCC(this + 8, v85);
        }

        v98 = (v74 - v80) >> 3;
        v99 = (8 * v82);
        v100 = (8 * v82 - 8 * v98);
        *v99 = 0;
        v75 = v99 + 1;
        memcpy(v100, v80, v81);
        v101 = *(this + 1);
        *(this + 1) = v100;
        *(this + 2) = v75;
        *(this + 3) = 0;
        if (v101)
        {
          operator delete(v101);
        }
      }

      else
      {
        *v74 = 0;
        v75 = v74 + 8;
      }

      *(this + 2) = v75;
    }

    goto LABEL_133;
  }

LABEL_142:
  v111 = v4 ^ 1;
  return v111 & 1;
}

uint64_t CMMsl::InitialHistoricalMeanSeaLevelPressure::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 32);
  v5 = *(this + 40);
  while (v4 != v5)
  {
    v6 = *v4++;
    this = PB::Writer::write(a2, v6, 1u);
  }

  v7 = *(v3 + 8);
  v8 = *(v3 + 16);
  while (v7 != v8)
  {
    v9 = *v7++;
    this = PB::Writer::write(a2, v9, 2u);
  }

  v10 = *(v3 + 56);
  v11 = *(v3 + 64);
  while (v10 != v11)
  {
    v12 = *v10++;
    this = PB::Writer::write(a2, v12, 3u);
  }

  if (*(v3 + 88))
  {
    v13 = *(v3 + 80);

    return PB::Writer::write(a2, v13, 4u);
  }

  return this;
}

BOOL CMMsl::InitialHistoricalMeanSeaLevelPressure::operator==(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a2 + 32);
  if (v2 - v3 != *(a2 + 40) - v4)
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

  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a2 + 8);
  if (v5 - v6 != *(a2 + 16) - v7)
  {
    return 0;
  }

  while (v6 != v5)
  {
    if (*v6 != *v7)
    {
      return 0;
    }

    ++v6;
    ++v7;
  }

  v9 = *(a1 + 56);
  v8 = *(a1 + 64);
  v10 = *(a2 + 56);
  if (v8 - v9 != *(a2 + 64) - v10)
  {
    return 0;
  }

  while (v9 != v8)
  {
    if (*v9 != *v10)
    {
      return 0;
    }

    ++v9;
    ++v10;
  }

  v11 = (*(a2 + 88) & 1) == 0;
  if (*(a1 + 88))
  {
    return (*(a2 + 88) & 1) != 0 && *(a1 + 80) == *(a2 + 80);
  }

  return v11;
}

uint64_t CMMsl::InitialHistoricalMeanSeaLevelPressure::hash_value(CMMsl::InitialHistoricalMeanSeaLevelPressure *this)
{
  v2 = *(this + 4);
  v3 = *(this + 5);
  v4 = PBHashBytes();
  v5 = *(this + 1);
  v6 = *(this + 2);
  v7 = PBHashBytes();
  v8 = *(this + 7);
  v9 = *(this + 8);
  v10 = PBHashBytes();
  if (*(this + 88))
  {
    v11 = *(this + 10);
    if (v11 == 0.0)
    {
      v11 = 0.0;
    }
  }

  else
  {
    v11 = 0.0;
  }

  return v7 ^ v4 ^ v10 ^ *&v11;
}

void *CMMsl::InterpolatedAccessoryAccel::InterpolatedAccessoryAccel(void *this)
{
  *this = off_10041F3B0;
  this[1] = 0;
  return this;
}

{
  *this = off_10041F3B0;
  this[1] = 0;
  return this;
}

void CMMsl::InterpolatedAccessoryAccel::~InterpolatedAccessoryAccel(CMMsl::InterpolatedAccessoryAccel *this)
{
  v2 = *(this + 1);
  *this = off_10041F3B0;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::InterpolatedAccessoryAccel::~InterpolatedAccessoryAccel(this);

  operator delete();
}

void *CMMsl::InterpolatedAccessoryAccel::InterpolatedAccessoryAccel(void *this, const CMMsl::InterpolatedAccessoryAccel *a2)
{
  *this = off_10041F3B0;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const CMMsl::InterpolatedAccessoryAccel *CMMsl::InterpolatedAccessoryAccel::operator=(const CMMsl::InterpolatedAccessoryAccel *a1, const CMMsl::InterpolatedAccessoryAccel *a2)
{
  if (a1 != a2)
  {
    CMMsl::InterpolatedAccessoryAccel::InterpolatedAccessoryAccel(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    CMMsl::InterpolatedAccessoryAccel::~InterpolatedAccessoryAccel(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::InterpolatedAccessoryAccel *a2, CMMsl::InterpolatedAccessoryAccel *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::InterpolatedAccessoryAccel::InterpolatedAccessoryAccel(void *a1, uint64_t a2)
{
  *a1 = off_10041F3B0;
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
  *a1 = off_10041F3B0;
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

uint64_t CMMsl::InterpolatedAccessoryAccel::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = off_10041F3B0;
    v6[1] = v4;
    CMMsl::InterpolatedAccessoryAccel::~InterpolatedAccessoryAccel(v6);
  }

  return a1;
}

uint64_t CMMsl::InterpolatedAccessoryAccel::formatText(CMMsl::InterpolatedAccessoryAccel *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::InterpolatedAccessoryAccel::readFrom(CMMsl::InterpolatedAccessoryAccel *this, PB::Reader *a2)
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

uint64_t CMMsl::InterpolatedAccessoryAccel::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2, 1u);
  }

  return this;
}

BOOL CMMsl::InterpolatedAccessoryAccel::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  result = v3 == 0;
  if (v2)
  {
    return v3 && CMMsl::AccessoryAccel::operator==(v2, v3);
  }

  return result;
}

CMMsl::AccessoryAccel *CMMsl::InterpolatedAccessoryAccel::hash_value(CMMsl::InterpolatedAccessoryAccel *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::AccessoryAccel::hash_value(result);
  }

  return result;
}

uint64_t CMMsl::InterpolatedAccessoryAccel::makeSuper(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

void *CMMsl::IntersiloNSCodingData::IntersiloNSCodingData(void *this)
{
  *this = off_10041F3E8;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = off_10041F3E8;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

void CMMsl::IntersiloNSCodingData::~IntersiloNSCodingData(CMMsl::IntersiloNSCodingData *this)
{
  *this = off_10041F3E8;
  v4 = *(this + 3);
  v2 = (this + 24);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_100011018(v2, v3);
  }

  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5)
  {
    sub_100011018(this + 16, v5);
  }

  sub_1002A2FBC(this + 1, 0);

  PB::Base::~Base(this);
}

{
  CMMsl::IntersiloNSCodingData::~IntersiloNSCodingData(this);

  operator delete();
}

void *CMMsl::IntersiloNSCodingData::IntersiloNSCodingData(void *this, const CMMsl::IntersiloNSCodingData *a2)
{
  *this = off_10041F3E8;
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

uint64_t CMMsl::IntersiloNSCodingData::operator=(uint64_t a1, const CMMsl::IntersiloNSCodingData *a2)
{
  if (a1 != a2)
  {
    CMMsl::IntersiloNSCodingData::IntersiloNSCodingData(&v6, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    CMMsl::IntersiloNSCodingData::~IntersiloNSCodingData(&v6);
  }

  return a1;
}

void *CMMsl::swap(void *this, CMMsl::IntersiloNSCodingData *a2, CMMsl::IntersiloNSCodingData *a3)
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

void *CMMsl::IntersiloNSCodingData::IntersiloNSCodingData(void *a1, void *a2)
{
  *a1 = off_10041F3E8;
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  v5 = a1 + 2;
  a1[3] = 0;
  v6 = a1 + 3;
  v7 = a2[2];
  a2[2] = 0;
  v8 = *v5;
  *v5 = v7;
  if (v8)
  {
    sub_100011018(v5, v8);
  }

  v9 = a2[3];
  a2[3] = 0;
  v10 = *v6;
  *v6 = v9;
  if (v10)
  {
    sub_100011018((a1 + 3), v10);
  }

  v11 = a2[1];
  a2[1] = 0;
  sub_1002A2FBC(v4, v11);
  return a1;
}

uint64_t CMMsl::IntersiloNSCodingData::operator=(uint64_t a1, void *a2)
{
  if (a1 != a2)
  {
    CMMsl::IntersiloNSCodingData::IntersiloNSCodingData(&v6, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    CMMsl::IntersiloNSCodingData::~IntersiloNSCodingData(&v6);
  }

  return a1;
}

uint64_t CMMsl::IntersiloNSCodingData::formatText(CMMsl::IntersiloNSCodingData *this, PB::TextFormatter *a2, const char *a3)
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

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::IntersiloNSCodingData::readFrom(CMMsl::IntersiloNSCodingData *this, PB::Reader *a2)
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
            goto LABEL_33;
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
      if ((v9 >> 3) == 4)
      {
        operator new();
      }

      if (v21 == 3)
      {
        operator new();
      }

      if (v21 == 2)
      {
        operator new();
      }

      if (!PB::Reader::skip(a2, v21, v9 & 7, 0))
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

LABEL_33:
  v22 = v4 ^ 1;
  return v22 & 1;
}

uint64_t CMMsl::IntersiloNSCodingData::writeTo(uint64_t this, PB::Writer *a2)
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

BOOL CMMsl::IntersiloNSCodingData::operator==(void *a1, void *a2)
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

  v13 = a1[3];
  v14 = a2[3];
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

    v19 = v15 >= 0 ? a1[3] : *v13;
    v20 = v18 >= 0 ? a2[3] : *v14;
    if (memcmp(v19, v20, v16))
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  if (a1[1])
  {
    if (!a2[1])
    {
      return 0;
    }

    if (PB::Data::operator==())
    {
      return 1;
    }

    if (a1[1])
    {
      return 0;
    }
  }

  return a2[1] == 0;
}

unint64_t CMMsl::IntersiloNSCodingData::hash_value(CMMsl::IntersiloNSCodingData *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = sub_100011074(&v11, v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 3);
  if (v4)
  {
    v5 = sub_100011074(&v12, v4);
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

  return v5 ^ v3 ^ v9;
}

CMMsl::Item *CMMsl::Item::Item(CMMsl::Item *this)
{
  *this = off_10041F420;
  bzero(this + 8, 0x2B0uLL);
  bzero(this + 704, 0xC9CuLL);
  return this;
}

{
  *this = off_10041F420;
  bzero(this + 8, 0x2B0uLL);
  bzero(this + 704, 0xC9CuLL);
  return this;
}

void CMMsl::Item::~Item(CMMsl::Item *this)
{
  *this = off_10041F420;
  v2 = *(this + 490);
  *(this + 490) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 489);
  *(this + 489) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 488);
  *(this + 488) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 487);
  *(this + 487) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 486);
  *(this + 486) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 485);
  *(this + 485) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 484);
  *(this + 484) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(this + 483);
  *(this + 483) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(this + 482);
  *(this + 482) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = *(this + 481);
  *(this + 481) = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = *(this + 480);
  *(this + 480) = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = *(this + 479);
  *(this + 479) = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = *(this + 478);
  *(this + 478) = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v15 = *(this + 477);
  *(this + 477) = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v16 = *(this + 476);
  *(this + 476) = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  v17 = *(this + 475);
  *(this + 475) = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  v18 = *(this + 474);
  *(this + 474) = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  v19 = *(this + 473);
  *(this + 473) = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  v20 = *(this + 472);
  *(this + 472) = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  v21 = *(this + 471);
  *(this + 471) = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  v22 = *(this + 470);
  *(this + 470) = 0;
  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

  v23 = *(this + 469);
  *(this + 469) = 0;
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  v24 = *(this + 468);
  *(this + 468) = 0;
  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  v25 = *(this + 467);
  *(this + 467) = 0;
  if (v25)
  {
    (*(*v25 + 8))(v25);
  }

  v26 = *(this + 466);
  *(this + 466) = 0;
  if (v26)
  {
    (*(*v26 + 8))(v26);
  }

  v27 = *(this + 465);
  *(this + 465) = 0;
  if (v27)
  {
    (*(*v27 + 8))(v27);
  }

  v28 = *(this + 464);
  *(this + 464) = 0;
  if (v28)
  {
    (*(*v28 + 8))(v28);
  }

  v29 = *(this + 463);
  *(this + 463) = 0;
  if (v29)
  {
    (*(*v29 + 8))(v29);
  }

  v30 = *(this + 462);
  *(this + 462) = 0;
  if (v30)
  {
    (*(*v30 + 8))(v30);
  }

  v31 = *(this + 461);
  *(this + 461) = 0;
  if (v31)
  {
    (*(*v31 + 8))(v31);
  }

  v32 = *(this + 460);
  *(this + 460) = 0;
  if (v32)
  {
    (*(*v32 + 8))(v32);
  }

  v33 = *(this + 459);
  *(this + 459) = 0;
  if (v33)
  {
    (*(*v33 + 8))(v33);
  }

  v34 = *(this + 458);
  *(this + 458) = 0;
  if (v34)
  {
    (*(*v34 + 8))(v34);
  }

  v35 = *(this + 457);
  *(this + 457) = 0;
  if (v35)
  {
    (*(*v35 + 8))(v35);
  }

  v36 = *(this + 456);
  *(this + 456) = 0;
  if (v36)
  {
    (*(*v36 + 8))(v36);
  }

  v37 = *(this + 455);
  *(this + 455) = 0;
  if (v37)
  {
    (*(*v37 + 8))(v37);
  }

  v38 = *(this + 454);
  *(this + 454) = 0;
  if (v38)
  {
    (*(*v38 + 8))(v38);
  }

  v39 = *(this + 453);
  *(this + 453) = 0;
  if (v39)
  {
    (*(*v39 + 8))(v39);
  }

  v40 = *(this + 452);
  *(this + 452) = 0;
  if (v40)
  {
    (*(*v40 + 8))(v40);
  }

  v41 = *(this + 451);
  *(this + 451) = 0;
  if (v41)
  {
    (*(*v41 + 8))(v41);
  }

  v42 = *(this + 450);
  *(this + 450) = 0;
  if (v42)
  {
    (*(*v42 + 8))(v42);
  }

  v43 = *(this + 449);
  *(this + 449) = 0;
  if (v43)
  {
    (*(*v43 + 8))(v43);
  }

  v44 = *(this + 448);
  *(this + 448) = 0;
  if (v44)
  {
    (*(*v44 + 8))(v44);
  }

  v45 = *(this + 447);
  *(this + 447) = 0;
  if (v45)
  {
    (*(*v45 + 8))(v45);
  }

  v46 = *(this + 446);
  *(this + 446) = 0;
  if (v46)
  {
    (*(*v46 + 8))(v46);
  }

  v47 = *(this + 445);
  *(this + 445) = 0;
  if (v47)
  {
    (*(*v47 + 8))(v47);
  }

  v48 = *(this + 444);
  *(this + 444) = 0;
  if (v48)
  {
    (*(*v48 + 8))(v48);
  }

  v49 = *(this + 443);
  *(this + 443) = 0;
  if (v49)
  {
    (*(*v49 + 8))(v49);
  }

  v50 = *(this + 442);
  *(this + 442) = 0;
  if (v50)
  {
    (*(*v50 + 8))(v50);
  }

  v51 = *(this + 441);
  *(this + 441) = 0;
  if (v51)
  {
    (*(*v51 + 8))(v51);
  }

  v52 = *(this + 440);
  *(this + 440) = 0;
  if (v52)
  {
    (*(*v52 + 8))(v52);
  }

  v53 = *(this + 439);
  *(this + 439) = 0;
  if (v53)
  {
    (*(*v53 + 8))(v53);
  }

  v54 = *(this + 438);
  *(this + 438) = 0;
  if (v54)
  {
    (*(*v54 + 8))(v54);
  }

  v55 = *(this + 437);
  *(this + 437) = 0;
  if (v55)
  {
    (*(*v55 + 8))(v55);
  }

  v56 = *(this + 436);
  *(this + 436) = 0;
  if (v56)
  {
    (*(*v56 + 8))(v56);
  }

  v57 = *(this + 435);
  *(this + 435) = 0;
  if (v57)
  {
    (*(*v57 + 8))(v57);
  }

  v58 = *(this + 434);
  *(this + 434) = 0;
  if (v58)
  {
    (*(*v58 + 8))(v58);
  }

  v59 = *(this + 433);
  *(this + 433) = 0;
  if (v59)
  {
    (*(*v59 + 8))(v59);
  }

  v60 = *(this + 432);
  *(this + 432) = 0;
  if (v60)
  {
    (*(*v60 + 8))(v60);
  }

  v61 = *(this + 431);
  *(this + 431) = 0;
  if (v61)
  {
    (*(*v61 + 8))(v61);
  }

  v62 = *(this + 430);
  *(this + 430) = 0;
  if (v62)
  {
    (*(*v62 + 8))(v62);
  }

  v63 = *(this + 429);
  *(this + 429) = 0;
  if (v63)
  {
    (*(*v63 + 8))(v63);
  }

  v64 = *(this + 428);
  *(this + 428) = 0;
  if (v64)
  {
    (*(*v64 + 8))(v64);
  }

  v65 = *(this + 427);
  *(this + 427) = 0;
  if (v65)
  {
    (*(*v65 + 8))(v65);
  }

  v66 = *(this + 426);
  *(this + 426) = 0;
  if (v66)
  {
    (*(*v66 + 8))(v66);
  }

  v67 = *(this + 425);
  *(this + 425) = 0;
  if (v67)
  {
    (*(*v67 + 8))(v67);
  }

  v68 = *(this + 424);
  *(this + 424) = 0;
  if (v68)
  {
    (*(*v68 + 8))(v68);
  }

  v69 = *(this + 423);
  *(this + 423) = 0;
  if (v69)
  {
    (*(*v69 + 8))(v69);
  }

  v70 = *(this + 422);
  *(this + 422) = 0;
  if (v70)
  {
    (*(*v70 + 8))(v70);
  }

  v71 = *(this + 421);
  *(this + 421) = 0;
  if (v71)
  {
    (*(*v71 + 8))(v71);
  }

  v72 = *(this + 420);
  *(this + 420) = 0;
  if (v72)
  {
    (*(*v72 + 8))(v72);
  }

  v73 = *(this + 419);
  *(this + 419) = 0;
  if (v73)
  {
    (*(*v73 + 8))(v73);
  }

  v74 = *(this + 418);
  *(this + 418) = 0;
  if (v74)
  {
    (*(*v74 + 8))(v74);
  }

  v75 = *(this + 417);
  *(this + 417) = 0;
  if (v75)
  {
    (*(*v75 + 8))(v75);
  }

  v76 = *(this + 416);
  *(this + 416) = 0;
  if (v76)
  {
    (*(*v76 + 8))(v76);
  }

  v77 = *(this + 415);
  *(this + 415) = 0;
  if (v77)
  {
    (*(*v77 + 8))(v77);
  }

  v78 = *(this + 414);
  *(this + 414) = 0;
  if (v78)
  {
    (*(*v78 + 8))(v78);
  }

  v79 = *(this + 413);
  *(this + 413) = 0;
  if (v79)
  {
    (*(*v79 + 8))(v79);
  }

  v80 = *(this + 412);
  *(this + 412) = 0;
  if (v80)
  {
    (*(*v80 + 8))(v80);
  }

  v81 = *(this + 411);
  *(this + 411) = 0;
  if (v81)
  {
    (*(*v81 + 8))(v81);
  }

  v82 = *(this + 410);
  *(this + 410) = 0;
  if (v82)
  {
    (*(*v82 + 8))(v82);
  }

  v83 = *(this + 409);
  *(this + 409) = 0;
  if (v83)
  {
    (*(*v83 + 8))(v83);
  }

  v84 = *(this + 408);
  *(this + 408) = 0;
  if (v84)
  {
    (*(*v84 + 8))(v84);
  }

  v85 = *(this + 407);
  *(this + 407) = 0;
  if (v85)
  {
    (*(*v85 + 8))(v85);
  }

  v86 = *(this + 406);
  *(this + 406) = 0;
  if (v86)
  {
    (*(*v86 + 8))(v86);
  }

  v87 = *(this + 405);
  *(this + 405) = 0;
  if (v87)
  {
    (*(*v87 + 8))(v87);
  }

  v88 = *(this + 404);
  *(this + 404) = 0;
  if (v88)
  {
    (*(*v88 + 8))(v88);
  }

  v89 = *(this + 403);
  *(this + 403) = 0;
  if (v89)
  {
    (*(*v89 + 8))(v89);
  }

  v90 = *(this + 402);
  *(this + 402) = 0;
  if (v90)
  {
    (*(*v90 + 8))(v90);
  }

  v91 = *(this + 401);
  *(this + 401) = 0;
  if (v91)
  {
    (*(*v91 + 8))(v91);
  }

  v92 = *(this + 400);
  *(this + 400) = 0;
  if (v92)
  {
    (*(*v92 + 8))(v92);
  }

  v93 = *(this + 399);
  *(this + 399) = 0;
  if (v93)
  {
    (*(*v93 + 8))(v93);
  }

  v94 = *(this + 398);
  *(this + 398) = 0;
  if (v94)
  {
    (*(*v94 + 8))(v94);
  }

  v95 = *(this + 397);
  *(this + 397) = 0;
  if (v95)
  {
    (*(*v95 + 8))(v95);
  }

  v96 = *(this + 396);
  *(this + 396) = 0;
  if (v96)
  {
    (*(*v96 + 8))(v96);
  }

  v97 = *(this + 395);
  *(this + 395) = 0;
  if (v97)
  {
    (*(*v97 + 8))(v97);
  }

  v98 = *(this + 394);
  *(this + 394) = 0;
  if (v98)
  {
    (*(*v98 + 8))(v98);
  }

  v99 = *(this + 393);
  *(this + 393) = 0;
  if (v99)
  {
    (*(*v99 + 8))(v99);
  }

  v100 = *(this + 392);
  *(this + 392) = 0;
  if (v100)
  {
    (*(*v100 + 8))(v100);
  }

  v101 = *(this + 391);
  *(this + 391) = 0;
  if (v101)
  {
    (*(*v101 + 8))(v101);
  }

  v102 = *(this + 390);
  *(this + 390) = 0;
  if (v102)
  {
    (*(*v102 + 8))(v102);
  }

  v103 = *(this + 389);
  *(this + 389) = 0;
  if (v103)
  {
    (*(*v103 + 8))(v103);
  }

  v104 = *(this + 388);
  *(this + 388) = 0;
  if (v104)
  {
    (*(*v104 + 8))(v104);
  }

  v105 = *(this + 387);
  *(this + 387) = 0;
  if (v105)
  {
    (*(*v105 + 8))(v105);
  }

  v106 = *(this + 386);
  *(this + 386) = 0;
  if (v106)
  {
    (*(*v106 + 8))(v106);
  }

  v107 = *(this + 385);
  *(this + 385) = 0;
  if (v107)
  {
    (*(*v107 + 8))(v107);
  }

  v108 = *(this + 384);
  *(this + 384) = 0;
  if (v108)
  {
    (*(*v108 + 8))(v108);
  }

  v109 = *(this + 383);
  *(this + 383) = 0;
  if (v109)
  {
    (*(*v109 + 8))(v109);
  }

  v110 = *(this + 382);
  *(this + 382) = 0;
  if (v110)
  {
    (*(*v110 + 8))(v110);
  }

  v111 = *(this + 381);
  *(this + 381) = 0;
  if (v111)
  {
    (*(*v111 + 8))(v111);
  }

  v112 = *(this + 380);
  *(this + 380) = 0;
  if (v112)
  {
    (*(*v112 + 8))(v112);
  }

  v113 = *(this + 379);
  *(this + 379) = 0;
  if (v113)
  {
    (*(*v113 + 8))(v113);
  }

  v114 = *(this + 378);
  *(this + 378) = 0;
  if (v114)
  {
    (*(*v114 + 8))(v114);
  }

  v115 = *(this + 377);
  *(this + 377) = 0;
  if (v115)
  {
    (*(*v115 + 8))(v115);
  }

  v116 = *(this + 376);
  *(this + 376) = 0;
  if (v116)
  {
    (*(*v116 + 8))(v116);
  }

  v117 = *(this + 375);
  *(this + 375) = 0;
  if (v117)
  {
    (*(*v117 + 8))(v117);
  }

  v118 = *(this + 374);
  *(this + 374) = 0;
  if (v118)
  {
    (*(*v118 + 8))(v118);
  }

  v119 = *(this + 373);
  *(this + 373) = 0;
  if (v119)
  {
    (*(*v119 + 8))(v119);
  }

  v120 = *(this + 372);
  *(this + 372) = 0;
  if (v120)
  {
    (*(*v120 + 8))(v120);
  }

  v121 = *(this + 371);
  *(this + 371) = 0;
  if (v121)
  {
    (*(*v121 + 8))(v121);
  }

  v122 = *(this + 370);
  *(this + 370) = 0;
  if (v122)
  {
    (*(*v122 + 8))(v122);
  }

  v123 = *(this + 369);
  *(this + 369) = 0;
  if (v123)
  {
    (*(*v123 + 8))(v123);
  }

  v124 = *(this + 368);
  *(this + 368) = 0;
  if (v124)
  {
    (*(*v124 + 8))(v124);
  }

  v125 = *(this + 367);
  *(this + 367) = 0;
  if (v125)
  {
    (*(*v125 + 8))(v125);
  }

  v126 = *(this + 366);
  *(this + 366) = 0;
  if (v126)
  {
    (*(*v126 + 8))(v126);
  }

  v127 = *(this + 365);
  *(this + 365) = 0;
  if (v127)
  {
    (*(*v127 + 8))(v127);
  }

  v128 = *(this + 364);
  *(this + 364) = 0;
  if (v128)
  {
    (*(*v128 + 8))(v128);
  }

  v129 = *(this + 363);
  *(this + 363) = 0;
  if (v129)
  {
    (*(*v129 + 8))(v129);
  }

  v130 = *(this + 362);
  *(this + 362) = 0;
  if (v130)
  {
    (*(*v130 + 8))(v130);
  }

  v131 = *(this + 361);
  *(this + 361) = 0;
  if (v131)
  {
    (*(*v131 + 8))(v131);
  }

  v132 = *(this + 360);
  *(this + 360) = 0;
  if (v132)
  {
    (*(*v132 + 8))(v132);
  }

  v133 = *(this + 359);
  *(this + 359) = 0;
  if (v133)
  {
    (*(*v133 + 8))(v133);
  }

  v134 = *(this + 358);
  *(this + 358) = 0;
  if (v134)
  {
    (*(*v134 + 8))(v134);
  }

  v135 = *(this + 357);
  *(this + 357) = 0;
  if (v135)
  {
    (*(*v135 + 8))(v135);
  }

  v136 = *(this + 356);
  *(this + 356) = 0;
  if (v136)
  {
    (*(*v136 + 8))(v136);
  }

  v137 = *(this + 355);
  *(this + 355) = 0;
  if (v137)
  {
    (*(*v137 + 8))(v137);
  }

  v138 = *(this + 354);
  *(this + 354) = 0;
  if (v138)
  {
    (*(*v138 + 8))(v138);
  }

  v139 = *(this + 353);
  *(this + 353) = 0;
  if (v139)
  {
    (*(*v139 + 8))(v139);
  }

  v140 = *(this + 352);
  *(this + 352) = 0;
  if (v140)
  {
    (*(*v140 + 8))(v140);
  }

  v141 = *(this + 351);
  *(this + 351) = 0;
  if (v141)
  {
    (*(*v141 + 8))(v141);
  }

  v142 = *(this + 350);
  *(this + 350) = 0;
  if (v142)
  {
    (*(*v142 + 8))(v142);
  }

  v143 = *(this + 349);
  *(this + 349) = 0;
  if (v143)
  {
    (*(*v143 + 8))(v143);
  }

  v144 = *(this + 348);
  *(this + 348) = 0;
  if (v144)
  {
    (*(*v144 + 8))(v144);
  }

  v145 = *(this + 347);
  *(this + 347) = 0;
  if (v145)
  {
    (*(*v145 + 8))(v145);
  }

  v146 = *(this + 346);
  *(this + 346) = 0;
  if (v146)
  {
    (*(*v146 + 8))(v146);
  }

  v147 = *(this + 345);
  *(this + 345) = 0;
  if (v147)
  {
    (*(*v147 + 8))(v147);
  }

  v148 = *(this + 344);
  *(this + 344) = 0;
  if (v148)
  {
    (*(*v148 + 8))(v148);
  }

  v149 = *(this + 343);
  *(this + 343) = 0;
  if (v149)
  {
    (*(*v149 + 8))(v149);
  }

  v150 = *(this + 342);
  *(this + 342) = 0;
  if (v150)
  {
    (*(*v150 + 8))(v150);
  }

  v151 = *(this + 341);
  *(this + 341) = 0;
  if (v151)
  {
    (*(*v151 + 8))(v151);
  }

  v152 = *(this + 340);
  *(this + 340) = 0;
  if (v152)
  {
    (*(*v152 + 8))(v152);
  }

  v153 = *(this + 339);
  *(this + 339) = 0;
  if (v153)
  {
    (*(*v153 + 8))(v153);
  }

  v154 = *(this + 338);
  *(this + 338) = 0;
  if (v154)
  {
    (*(*v154 + 8))(v154);
  }

  v155 = *(this + 337);
  *(this + 337) = 0;
  if (v155)
  {
    (*(*v155 + 8))(v155);
  }

  v156 = *(this + 336);
  *(this + 336) = 0;
  if (v156)
  {
    (*(*v156 + 8))(v156);
  }

  v157 = *(this + 335);
  *(this + 335) = 0;
  if (v157)
  {
    (*(*v157 + 8))(v157);
  }

  v158 = *(this + 334);
  *(this + 334) = 0;
  if (v158)
  {
    (*(*v158 + 8))(v158);
  }

  v159 = *(this + 333);
  *(this + 333) = 0;
  if (v159)
  {
    (*(*v159 + 8))(v159);
  }

  v160 = *(this + 332);
  *(this + 332) = 0;
  if (v160)
  {
    (*(*v160 + 8))(v160);
  }

  v161 = *(this + 331);
  *(this + 331) = 0;
  if (v161)
  {
    (*(*v161 + 8))(v161);
  }

  v162 = *(this + 330);
  *(this + 330) = 0;
  if (v162)
  {
    (*(*v162 + 8))(v162);
  }

  v163 = *(this + 329);
  *(this + 329) = 0;
  if (v163)
  {
    (*(*v163 + 8))(v163);
  }

  v164 = *(this + 328);
  *(this + 328) = 0;
  if (v164)
  {
    (*(*v164 + 8))(v164);
  }

  v165 = *(this + 327);
  *(this + 327) = 0;
  if (v165)
  {
    (*(*v165 + 8))(v165);
  }

  v166 = *(this + 326);
  *(this + 326) = 0;
  if (v166)
  {
    (*(*v166 + 8))(v166);
  }

  v167 = *(this + 325);
  *(this + 325) = 0;
  if (v167)
  {
    (*(*v167 + 8))(v167);
  }

  v168 = *(this + 324);
  *(this + 324) = 0;
  if (v168)
  {
    (*(*v168 + 8))(v168);
  }

  v169 = *(this + 323);
  *(this + 323) = 0;
  if (v169)
  {
    (*(*v169 + 8))(v169);
  }

  v170 = *(this + 322);
  *(this + 322) = 0;
  if (v170)
  {
    (*(*v170 + 8))(v170);
  }

  v171 = *(this + 321);
  *(this + 321) = 0;
  if (v171)
  {
    (*(*v171 + 8))(v171);
  }

  v172 = *(this + 320);
  *(this + 320) = 0;
  if (v172)
  {
    (*(*v172 + 8))(v172);
  }

  v173 = *(this + 319);
  *(this + 319) = 0;
  if (v173)
  {
    (*(*v173 + 8))(v173);
  }

  v174 = *(this + 318);
  *(this + 318) = 0;
  if (v174)
  {
    (*(*v174 + 8))(v174);
  }

  v175 = *(this + 317);
  *(this + 317) = 0;
  if (v175)
  {
    (*(*v175 + 8))(v175);
  }

  v176 = *(this + 316);
  *(this + 316) = 0;
  if (v176)
  {
    (*(*v176 + 8))(v176);
  }

  v177 = *(this + 315);
  *(this + 315) = 0;
  if (v177)
  {
    (*(*v177 + 8))(v177);
  }

  v178 = *(this + 314);
  *(this + 314) = 0;
  if (v178)
  {
    (*(*v178 + 8))(v178);
  }

  v179 = *(this + 313);
  *(this + 313) = 0;
  if (v179)
  {
    (*(*v179 + 8))(v179);
  }

  v180 = *(this + 312);
  *(this + 312) = 0;
  if (v180)
  {
    (*(*v180 + 8))(v180);
  }

  v181 = *(this + 311);
  *(this + 311) = 0;
  if (v181)
  {
    (*(*v181 + 8))(v181);
  }

  v182 = *(this + 310);
  *(this + 310) = 0;
  if (v182)
  {
    (*(*v182 + 8))(v182);
  }

  v183 = *(this + 309);
  *(this + 309) = 0;
  if (v183)
  {
    (*(*v183 + 8))(v183);
  }

  v184 = *(this + 308);
  *(this + 308) = 0;
  if (v184)
  {
    (*(*v184 + 8))(v184);
  }

  v185 = *(this + 307);
  *(this + 307) = 0;
  if (v185)
  {
    (*(*v185 + 8))(v185);
  }

  v186 = *(this + 306);
  *(this + 306) = 0;
  if (v186)
  {
    (*(*v186 + 8))(v186);
  }

  v187 = *(this + 305);
  *(this + 305) = 0;
  if (v187)
  {
    (*(*v187 + 8))(v187);
  }

  v188 = *(this + 304);
  *(this + 304) = 0;
  if (v188)
  {
    (*(*v188 + 8))(v188);
  }

  v189 = *(this + 303);
  *(this + 303) = 0;
  if (v189)
  {
    (*(*v189 + 8))(v189);
  }

  v190 = *(this + 302);
  *(this + 302) = 0;
  if (v190)
  {
    (*(*v190 + 8))(v190);
  }

  v191 = *(this + 301);
  *(this + 301) = 0;
  if (v191)
  {
    (*(*v191 + 8))(v191);
  }

  v192 = *(this + 300);
  *(this + 300) = 0;
  if (v192)
  {
    (*(*v192 + 8))(v192);
  }

  v193 = *(this + 299);
  *(this + 299) = 0;
  if (v193)
  {
    (*(*v193 + 8))(v193);
  }

  v194 = *(this + 298);
  *(this + 298) = 0;
  if (v194)
  {
    (*(*v194 + 8))(v194);
  }

  v195 = *(this + 297);
  *(this + 297) = 0;
  if (v195)
  {
    (*(*v195 + 8))(v195);
  }

  v196 = *(this + 296);
  *(this + 296) = 0;
  if (v196)
  {
    (*(*v196 + 8))(v196);
  }

  v197 = *(this + 295);
  *(this + 295) = 0;
  if (v197)
  {
    (*(*v197 + 8))(v197);
  }

  v198 = *(this + 294);
  *(this + 294) = 0;
  if (v198)
  {
    (*(*v198 + 8))(v198);
  }

  v199 = *(this + 293);
  *(this + 293) = 0;
  if (v199)
  {
    (*(*v199 + 8))(v199);
  }

  v200 = *(this + 292);
  *(this + 292) = 0;
  if (v200)
  {
    (*(*v200 + 8))(v200);
  }

  v201 = *(this + 291);
  *(this + 291) = 0;
  if (v201)
  {
    (*(*v201 + 8))(v201);
  }

  v202 = *(this + 290);
  *(this + 290) = 0;
  if (v202)
  {
    (*(*v202 + 8))(v202);
  }

  v203 = *(this + 289);
  *(this + 289) = 0;
  if (v203)
  {
    (*(*v203 + 8))(v203);
  }

  v204 = *(this + 288);
  *(this + 288) = 0;
  if (v204)
  {
    (*(*v204 + 8))(v204);
  }

  v205 = *(this + 287);
  *(this + 287) = 0;
  if (v205)
  {
    (*(*v205 + 8))(v205);
  }

  v206 = *(this + 286);
  *(this + 286) = 0;
  if (v206)
  {
    (*(*v206 + 8))(v206);
  }

  v207 = *(this + 285);
  *(this + 285) = 0;
  if (v207)
  {
    (*(*v207 + 8))(v207);
  }

  v208 = *(this + 284);
  *(this + 284) = 0;
  if (v208)
  {
    (*(*v208 + 8))(v208);
  }

  v209 = *(this + 283);
  *(this + 283) = 0;
  if (v209)
  {
    (*(*v209 + 8))(v209);
  }

  v210 = *(this + 282);
  *(this + 282) = 0;
  if (v210)
  {
    (*(*v210 + 8))(v210);
  }

  v211 = *(this + 281);
  *(this + 281) = 0;
  if (v211)
  {
    (*(*v211 + 8))(v211);
  }

  v212 = *(this + 280);
  *(this + 280) = 0;
  if (v212)
  {
    (*(*v212 + 8))(v212);
  }

  v213 = *(this + 279);
  *(this + 279) = 0;
  if (v213)
  {
    (*(*v213 + 8))(v213);
  }

  v214 = *(this + 278);
  *(this + 278) = 0;
  if (v214)
  {
    (*(*v214 + 8))(v214);
  }

  v215 = *(this + 277);
  *(this + 277) = 0;
  if (v215)
  {
    (*(*v215 + 8))(v215);
  }

  v216 = *(this + 276);
  *(this + 276) = 0;
  if (v216)
  {
    (*(*v216 + 8))(v216);
  }

  v217 = *(this + 275);
  *(this + 275) = 0;
  if (v217)
  {
    (*(*v217 + 8))(v217);
  }

  v218 = *(this + 274);
  *(this + 274) = 0;
  if (v218)
  {
    (*(*v218 + 8))(v218);
  }

  v219 = *(this + 273);
  *(this + 273) = 0;
  if (v219)
  {
    (*(*v219 + 8))(v219);
  }

  v220 = *(this + 272);
  *(this + 272) = 0;
  if (v220)
  {
    (*(*v220 + 8))(v220);
  }

  v221 = *(this + 271);
  *(this + 271) = 0;
  if (v221)
  {
    (*(*v221 + 8))(v221);
  }

  v222 = *(this + 270);
  *(this + 270) = 0;
  if (v222)
  {
    (*(*v222 + 8))(v222);
  }

  v223 = *(this + 269);
  *(this + 269) = 0;
  if (v223)
  {
    (*(*v223 + 8))(v223);
  }

  v224 = *(this + 268);
  *(this + 268) = 0;
  if (v224)
  {
    (*(*v224 + 8))(v224);
  }

  v225 = *(this + 267);
  *(this + 267) = 0;
  if (v225)
  {
    (*(*v225 + 8))(v225);
  }

  v226 = *(this + 266);
  *(this + 266) = 0;
  if (v226)
  {
    (*(*v226 + 8))(v226);
  }

  v227 = *(this + 265);
  *(this + 265) = 0;
  if (v227)
  {
    (*(*v227 + 8))(v227);
  }

  v228 = *(this + 264);
  *(this + 264) = 0;
  if (v228)
  {
    (*(*v228 + 8))(v228);
  }

  v229 = *(this + 263);
  *(this + 263) = 0;
  if (v229)
  {
    (*(*v229 + 8))(v229);
  }

  v230 = *(this + 262);
  *(this + 262) = 0;
  if (v230)
  {
    (*(*v230 + 8))(v230);
  }

  v231 = *(this + 261);
  *(this + 261) = 0;
  if (v231)
  {
    (*(*v231 + 8))(v231);
  }

  v232 = *(this + 260);
  *(this + 260) = 0;
  if (v232)
  {
    (*(*v232 + 8))(v232);
  }

  v233 = *(this + 259);
  *(this + 259) = 0;
  if (v233)
  {
    (*(*v233 + 8))(v233);
  }

  v234 = *(this + 258);
  *(this + 258) = 0;
  if (v234)
  {
    (*(*v234 + 8))(v234);
  }

  v235 = *(this + 257);
  *(this + 257) = 0;
  if (v235)
  {
    (*(*v235 + 8))(v235);
  }

  v236 = *(this + 256);
  *(this + 256) = 0;
  if (v236)
  {
    (*(*v236 + 8))(v236);
  }

  v237 = *(this + 255);
  *(this + 255) = 0;
  if (v237)
  {
    (*(*v237 + 8))(v237);
  }

  v238 = *(this + 254);
  *(this + 254) = 0;
  if (v238)
  {
    (*(*v238 + 8))(v238);
  }

  v239 = *(this + 253);
  *(this + 253) = 0;
  if (v239)
  {
    (*(*v239 + 8))(v239);
  }

  v240 = *(this + 252);
  *(this + 252) = 0;
  if (v240)
  {
    (*(*v240 + 8))(v240);
  }

  v241 = *(this + 251);
  *(this + 251) = 0;
  if (v241)
  {
    (*(*v241 + 8))(v241);
  }

  v242 = *(this + 250);
  *(this + 250) = 0;
  if (v242)
  {
    (*(*v242 + 8))(v242);
  }

  v243 = *(this + 249);
  *(this + 249) = 0;
  if (v243)
  {
    (*(*v243 + 8))(v243);
  }

  v244 = *(this + 248);
  *(this + 248) = 0;
  if (v244)
  {
    (*(*v244 + 8))(v244);
  }

  v245 = *(this + 247);
  *(this + 247) = 0;
  if (v245)
  {
    (*(*v245 + 8))(v245);
  }

  v246 = *(this + 246);
  *(this + 246) = 0;
  if (v246)
  {
    (*(*v246 + 8))(v246);
  }

  v247 = *(this + 245);
  *(this + 245) = 0;
  if (v247)
  {
    (*(*v247 + 8))(v247);
  }

  v248 = *(this + 244);
  *(this + 244) = 0;
  if (v248)
  {
    (*(*v248 + 8))(v248);
  }

  v249 = *(this + 243);
  *(this + 243) = 0;
  if (v249)
  {
    (*(*v249 + 8))(v249);
  }

  v250 = *(this + 242);
  *(this + 242) = 0;
  if (v250)
  {
    (*(*v250 + 8))(v250);
  }

  v251 = *(this + 241);
  *(this + 241) = 0;
  if (v251)
  {
    (*(*v251 + 8))(v251);
  }

  v252 = *(this + 240);
  *(this + 240) = 0;
  if (v252)
  {
    (*(*v252 + 8))(v252);
  }

  v253 = *(this + 239);
  *(this + 239) = 0;
  if (v253)
  {
    (*(*v253 + 8))(v253);
  }

  v254 = *(this + 238);
  *(this + 238) = 0;
  if (v254)
  {
    (*(*v254 + 8))(v254);
  }

  v255 = *(this + 237);
  *(this + 237) = 0;
  if (v255)
  {
    (*(*v255 + 8))(v255);
  }

  v256 = *(this + 236);
  *(this + 236) = 0;
  if (v256)
  {
    (*(*v256 + 8))(v256);
  }

  v257 = *(this + 235);
  *(this + 235) = 0;
  if (v257)
  {
    (*(*v257 + 8))(v257);
  }

  v258 = *(this + 234);
  *(this + 234) = 0;
  if (v258)
  {
    (*(*v258 + 8))(v258);
  }

  v259 = *(this + 233);
  *(this + 233) = 0;
  if (v259)
  {
    (*(*v259 + 8))(v259);
  }

  v260 = *(this + 232);
  *(this + 232) = 0;
  if (v260)
  {
    (*(*v260 + 8))(v260);
  }

  v261 = *(this + 231);
  *(this + 231) = 0;
  if (v261)
  {
    (*(*v261 + 8))(v261);
  }

  v262 = *(this + 230);
  *(this + 230) = 0;
  if (v262)
  {
    (*(*v262 + 8))(v262);
  }

  v263 = *(this + 229);
  *(this + 229) = 0;
  if (v263)
  {
    (*(*v263 + 8))(v263);
  }

  v264 = *(this + 228);
  *(this + 228) = 0;
  if (v264)
  {
    (*(*v264 + 8))(v264);
  }

  v265 = *(this + 227);
  *(this + 227) = 0;
  if (v265)
  {
    (*(*v265 + 8))(v265);
  }

  v266 = *(this + 226);
  *(this + 226) = 0;
  if (v266)
  {
    (*(*v266 + 8))(v266);
  }

  v267 = *(this + 225);
  *(this + 225) = 0;
  if (v267)
  {
    (*(*v267 + 8))(v267);
  }

  v268 = *(this + 224);
  *(this + 224) = 0;
  if (v268)
  {
    (*(*v268 + 8))(v268);
  }

  v269 = *(this + 223);
  *(this + 223) = 0;
  if (v269)
  {
    (*(*v269 + 8))(v269);
  }

  v270 = *(this + 222);
  *(this + 222) = 0;
  if (v270)
  {
    (*(*v270 + 8))(v270);
  }

  v271 = *(this + 221);
  *(this + 221) = 0;
  if (v271)
  {
    (*(*v271 + 8))(v271);
  }

  v272 = *(this + 220);
  *(this + 220) = 0;
  if (v272)
  {
    (*(*v272 + 8))(v272);
  }

  v273 = *(this + 219);
  *(this + 219) = 0;
  if (v273)
  {
    (*(*v273 + 8))(v273);
  }

  v274 = *(this + 218);
  *(this + 218) = 0;
  if (v274)
  {
    (*(*v274 + 8))(v274);
  }

  v275 = *(this + 217);
  *(this + 217) = 0;
  if (v275)
  {
    (*(*v275 + 8))(v275);
  }

  v276 = *(this + 216);
  *(this + 216) = 0;
  if (v276)
  {
    (*(*v276 + 8))(v276);
  }

  v277 = *(this + 215);
  *(this + 215) = 0;
  if (v277)
  {
    (*(*v277 + 8))(v277);
  }

  v278 = *(this + 214);
  *(this + 214) = 0;
  if (v278)
  {
    (*(*v278 + 8))(v278);
  }

  v279 = *(this + 213);
  *(this + 213) = 0;
  if (v279)
  {
    (*(*v279 + 8))(v279);
  }

  v280 = *(this + 212);
  *(this + 212) = 0;
  if (v280)
  {
    (*(*v280 + 8))(v280);
  }

  v281 = *(this + 211);
  *(this + 211) = 0;
  if (v281)
  {
    (*(*v281 + 8))(v281);
  }

  v282 = *(this + 210);
  *(this + 210) = 0;
  if (v282)
  {
    (*(*v282 + 8))(v282);
  }

  v283 = *(this + 209);
  *(this + 209) = 0;
  if (v283)
  {
    (*(*v283 + 8))(v283);
  }

  v284 = *(this + 208);
  *(this + 208) = 0;
  if (v284)
  {
    (*(*v284 + 8))(v284);
  }

  v285 = *(this + 207);
  *(this + 207) = 0;
  if (v285)
  {
    (*(*v285 + 8))(v285);
  }

  v286 = *(this + 206);
  *(this + 206) = 0;
  if (v286)
  {
    (*(*v286 + 8))(v286);
  }

  v287 = *(this + 205);
  *(this + 205) = 0;
  if (v287)
  {
    (*(*v287 + 8))(v287);
  }

  v288 = *(this + 204);
  *(this + 204) = 0;
  if (v288)
  {
    (*(*v288 + 8))(v288);
  }

  v289 = *(this + 203);
  *(this + 203) = 0;
  if (v289)
  {
    (*(*v289 + 8))(v289);
  }

  v290 = *(this + 202);
  *(this + 202) = 0;
  if (v290)
  {
    (*(*v290 + 8))(v290);
  }

  v291 = *(this + 201);
  *(this + 201) = 0;
  if (v291)
  {
    (*(*v291 + 8))(v291);
  }

  v292 = *(this + 200);
  *(this + 200) = 0;
  if (v292)
  {
    (*(*v292 + 8))(v292);
  }

  v293 = *(this + 199);
  *(this + 199) = 0;
  if (v293)
  {
    (*(*v293 + 8))(v293);
  }

  v294 = *(this + 198);
  *(this + 198) = 0;
  if (v294)
  {
    (*(*v294 + 8))(v294);
  }

  v295 = *(this + 197);
  *(this + 197) = 0;
  if (v295)
  {
    (*(*v295 + 8))(v295);
  }

  v296 = *(this + 196);
  *(this + 196) = 0;
  if (v296)
  {
    (*(*v296 + 8))(v296);
  }

  v297 = *(this + 195);
  *(this + 195) = 0;
  if (v297)
  {
    (*(*v297 + 8))(v297);
  }

  v298 = *(this + 194);
  *(this + 194) = 0;
  if (v298)
  {
    (*(*v298 + 8))(v298);
  }

  v299 = *(this + 193);
  *(this + 193) = 0;
  if (v299)
  {
    (*(*v299 + 8))(v299);
  }

  v300 = *(this + 192);
  *(this + 192) = 0;
  if (v300)
  {
    (*(*v300 + 8))(v300);
  }

  v301 = *(this + 191);
  *(this + 191) = 0;
  if (v301)
  {
    (*(*v301 + 8))(v301);
  }

  v302 = *(this + 190);
  *(this + 190) = 0;
  if (v302)
  {
    (*(*v302 + 8))(v302);
  }

  v303 = *(this + 189);
  *(this + 189) = 0;
  if (v303)
  {
    (*(*v303 + 8))(v303);
  }

  v304 = *(this + 188);
  *(this + 188) = 0;
  if (v304)
  {
    (*(*v304 + 8))(v304);
  }

  v305 = *(this + 187);
  *(this + 187) = 0;
  if (v305)
  {
    (*(*v305 + 8))(v305);
  }

  v306 = *(this + 186);
  *(this + 186) = 0;
  if (v306)
  {
    (*(*v306 + 8))(v306);
  }

  v307 = *(this + 185);
  *(this + 185) = 0;
  if (v307)
  {
    (*(*v307 + 8))(v307);
  }

  v308 = *(this + 184);
  *(this + 184) = 0;
  if (v308)
  {
    (*(*v308 + 8))(v308);
  }

  v309 = *(this + 183);
  *(this + 183) = 0;
  if (v309)
  {
    (*(*v309 + 8))(v309);
  }

  v310 = *(this + 182);
  *(this + 182) = 0;
  if (v310)
  {
    (*(*v310 + 8))(v310);
  }

  v311 = *(this + 181);
  *(this + 181) = 0;
  if (v311)
  {
    (*(*v311 + 8))(v311);
  }

  v312 = *(this + 180);
  *(this + 180) = 0;
  if (v312)
  {
    (*(*v312 + 8))(v312);
  }

  v313 = *(this + 179);
  *(this + 179) = 0;
  if (v313)
  {
    (*(*v313 + 8))(v313);
  }

  v314 = *(this + 178);
  *(this + 178) = 0;
  if (v314)
  {
    (*(*v314 + 8))(v314);
  }

  v315 = *(this + 177);
  *(this + 177) = 0;
  if (v315)
  {
    (*(*v315 + 8))(v315);
  }

  v316 = *(this + 176);
  *(this + 176) = 0;
  if (v316)
  {
    (*(*v316 + 8))(v316);
  }

  v317 = *(this + 175);
  *(this + 175) = 0;
  if (v317)
  {
    (*(*v317 + 8))(v317);
  }

  v318 = *(this + 174);
  *(this + 174) = 0;
  if (v318)
  {
    (*(*v318 + 8))(v318);
  }

  v319 = *(this + 173);
  *(this + 173) = 0;
  if (v319)
  {
    (*(*v319 + 8))(v319);
  }

  v320 = *(this + 172);
  *(this + 172) = 0;
  if (v320)
  {
    (*(*v320 + 8))(v320);
  }

  v321 = *(this + 171);
  *(this + 171) = 0;
  if (v321)
  {
    (*(*v321 + 8))(v321);
  }

  v322 = *(this + 170);
  *(this + 170) = 0;
  if (v322)
  {
    (*(*v322 + 8))(v322);
  }

  v323 = *(this + 169);
  *(this + 169) = 0;
  if (v323)
  {
    (*(*v323 + 8))(v323);
  }

  v324 = *(this + 168);
  *(this + 168) = 0;
  if (v324)
  {
    (*(*v324 + 8))(v324);
  }

  v325 = *(this + 167);
  *(this + 167) = 0;
  if (v325)
  {
    (*(*v325 + 8))(v325);
  }

  v326 = *(this + 166);
  *(this + 166) = 0;
  if (v326)
  {
    (*(*v326 + 8))(v326);
  }

  v327 = *(this + 165);
  *(this + 165) = 0;
  if (v327)
  {
    (*(*v327 + 8))(v327);
  }

  v328 = *(this + 164);
  *(this + 164) = 0;
  if (v328)
  {
    (*(*v328 + 8))(v328);
  }

  v329 = *(this + 163);
  *(this + 163) = 0;
  if (v329)
  {
    (*(*v329 + 8))(v329);
  }

  v330 = *(this + 162);
  *(this + 162) = 0;
  if (v330)
  {
    (*(*v330 + 8))(v330);
  }

  v331 = *(this + 161);
  *(this + 161) = 0;
  if (v331)
  {
    (*(*v331 + 8))(v331);
  }

  v332 = *(this + 160);
  *(this + 160) = 0;
  if (v332)
  {
    (*(*v332 + 8))(v332);
  }

  v333 = *(this + 159);
  *(this + 159) = 0;
  if (v333)
  {
    (*(*v333 + 8))(v333);
  }

  v334 = *(this + 158);
  *(this + 158) = 0;
  if (v334)
  {
    (*(*v334 + 8))(v334);
  }

  v335 = *(this + 157);
  *(this + 157) = 0;
  if (v335)
  {
    (*(*v335 + 8))(v335);
  }

  v336 = *(this + 156);
  *(this + 156) = 0;
  if (v336)
  {
    (*(*v336 + 8))(v336);
  }

  v337 = *(this + 155);
  *(this + 155) = 0;
  if (v337)
  {
    (*(*v337 + 8))(v337);
  }

  v338 = *(this + 154);
  *(this + 154) = 0;
  if (v338)
  {
    (*(*v338 + 8))(v338);
  }

  v339 = *(this + 153);
  *(this + 153) = 0;
  if (v339)
  {
    (*(*v339 + 8))(v339);
  }

  v340 = *(this + 152);
  *(this + 152) = 0;
  if (v340)
  {
    (*(*v340 + 8))(v340);
  }

  v341 = *(this + 151);
  *(this + 151) = 0;
  if (v341)
  {
    (*(*v341 + 8))(v341);
  }

  v342 = *(this + 150);
  *(this + 150) = 0;
  if (v342)
  {
    (*(*v342 + 8))(v342);
  }

  v343 = *(this + 149);
  *(this + 149) = 0;
  if (v343)
  {
    (*(*v343 + 8))(v343);
  }

  v344 = *(this + 148);
  *(this + 148) = 0;
  if (v344)
  {
    (*(*v344 + 8))(v344);
  }

  v345 = *(this + 147);
  *(this + 147) = 0;
  if (v345)
  {
    (*(*v345 + 8))(v345);
  }

  v346 = *(this + 146);
  *(this + 146) = 0;
  if (v346)
  {
    (*(*v346 + 8))(v346);
  }

  v347 = *(this + 145);
  *(this + 145) = 0;
  if (v347)
  {
    (*(*v347 + 8))(v347);
  }

  v348 = *(this + 144);
  *(this + 144) = 0;
  if (v348)
  {
    (*(*v348 + 8))(v348);
  }

  v349 = *(this + 143);
  *(this + 143) = 0;
  if (v349)
  {
    (*(*v349 + 8))(v349);
  }

  v350 = *(this + 142);
  *(this + 142) = 0;
  if (v350)
  {
    (*(*v350 + 8))(v350);
  }

  v351 = *(this + 141);
  *(this + 141) = 0;
  if (v351)
  {
    (*(*v351 + 8))(v351);
  }

  v352 = *(this + 140);
  *(this + 140) = 0;
  if (v352)
  {
    (*(*v352 + 8))(v352);
  }

  v353 = *(this + 139);
  *(this + 139) = 0;
  if (v353)
  {
    (*(*v353 + 8))(v353);
  }

  v354 = *(this + 138);
  *(this + 138) = 0;
  if (v354)
  {
    (*(*v354 + 8))(v354);
  }

  v355 = *(this + 137);
  *(this + 137) = 0;
  if (v355)
  {
    (*(*v355 + 8))(v355);
  }

  v356 = *(this + 136);
  *(this + 136) = 0;
  if (v356)
  {
    (*(*v356 + 8))(v356);
  }

  v357 = *(this + 135);
  *(this + 135) = 0;
  if (v357)
  {
    (*(*v357 + 8))(v357);
  }

  v358 = *(this + 134);
  *(this + 134) = 0;
  if (v358)
  {
    (*(*v358 + 8))(v358);
  }

  v359 = *(this + 133);
  *(this + 133) = 0;
  if (v359)
  {
    (*(*v359 + 8))(v359);
  }

  v360 = *(this + 132);
  *(this + 132) = 0;
  if (v360)
  {
    (*(*v360 + 8))(v360);
  }

  v361 = *(this + 131);
  *(this + 131) = 0;
  if (v361)
  {
    (*(*v361 + 8))(v361);
  }

  v362 = *(this + 130);
  *(this + 130) = 0;
  if (v362)
  {
    (*(*v362 + 8))(v362);
  }

  v363 = *(this + 129);
  *(this + 129) = 0;
  if (v363)
  {
    (*(*v363 + 8))(v363);
  }

  v364 = *(this + 128);
  *(this + 128) = 0;
  if (v364)
  {
    (*(*v364 + 8))(v364);
  }

  v365 = *(this + 127);
  *(this + 127) = 0;
  if (v365)
  {
    (*(*v365 + 8))(v365);
  }

  v366 = *(this + 126);
  *(this + 126) = 0;
  if (v366)
  {
    (*(*v366 + 8))(v366);
  }

  v367 = *(this + 125);
  *(this + 125) = 0;
  if (v367)
  {
    (*(*v367 + 8))(v367);
  }

  v368 = *(this + 124);
  *(this + 124) = 0;
  if (v368)
  {
    (*(*v368 + 8))(v368);
  }

  v369 = *(this + 123);
  *(this + 123) = 0;
  if (v369)
  {
    (*(*v369 + 8))(v369);
  }

  v370 = *(this + 122);
  *(this + 122) = 0;
  if (v370)
  {
    (*(*v370 + 8))(v370);
  }

  v371 = *(this + 121);
  *(this + 121) = 0;
  if (v371)
  {
    (*(*v371 + 8))(v371);
  }

  v372 = *(this + 120);
  *(this + 120) = 0;
  if (v372)
  {
    (*(*v372 + 8))(v372);
  }

  v373 = *(this + 119);
  *(this + 119) = 0;
  if (v373)
  {
    (*(*v373 + 8))(v373);
  }

  v374 = *(this + 118);
  *(this + 118) = 0;
  if (v374)
  {
    (*(*v374 + 8))(v374);
  }

  v375 = *(this + 117);
  *(this + 117) = 0;
  if (v375)
  {
    (*(*v375 + 8))(v375);
  }

  v376 = *(this + 116);
  *(this + 116) = 0;
  if (v376)
  {
    (*(*v376 + 8))(v376);
  }

  v377 = *(this + 115);
  *(this + 115) = 0;
  if (v377)
  {
    (*(*v377 + 8))(v377);
  }

  v378 = *(this + 114);
  *(this + 114) = 0;
  if (v378)
  {
    (*(*v378 + 8))(v378);
  }

  v379 = *(this + 113);
  *(this + 113) = 0;
  if (v379)
  {
    (*(*v379 + 8))(v379);
  }

  v380 = *(this + 112);
  *(this + 112) = 0;
  if (v380)
  {
    (*(*v380 + 8))(v380);
  }

  v381 = *(this + 111);
  *(this + 111) = 0;
  if (v381)
  {
    (*(*v381 + 8))(v381);
  }

  v382 = *(this + 110);
  *(this + 110) = 0;
  if (v382)
  {
    (*(*v382 + 8))(v382);
  }

  v383 = *(this + 109);
  *(this + 109) = 0;
  if (v383)
  {
    (*(*v383 + 8))(v383);
  }

  v384 = *(this + 108);
  *(this + 108) = 0;
  if (v384)
  {
    (*(*v384 + 8))(v384);
  }

  v385 = *(this + 107);
  *(this + 107) = 0;
  if (v385)
  {
    (*(*v385 + 8))(v385);
  }

  v386 = *(this + 106);
  *(this + 106) = 0;
  if (v386)
  {
    (*(*v386 + 8))(v386);
  }

  v387 = *(this + 105);
  *(this + 105) = 0;
  if (v387)
  {
    (*(*v387 + 8))(v387);
  }

  v388 = *(this + 104);
  *(this + 104) = 0;
  if (v388)
  {
    (*(*v388 + 8))(v388);
  }

  v389 = *(this + 103);
  *(this + 103) = 0;
  if (v389)
  {
    (*(*v389 + 8))(v389);
  }

  v390 = *(this + 102);
  *(this + 102) = 0;
  if (v390)
  {
    (*(*v390 + 8))(v390);
  }

  v391 = *(this + 101);
  *(this + 101) = 0;
  if (v391)
  {
    (*(*v391 + 8))(v391);
  }

  v392 = *(this + 100);
  *(this + 100) = 0;
  if (v392)
  {
    (*(*v392 + 8))(v392);
  }

  v393 = *(this + 99);
  *(this + 99) = 0;
  if (v393)
  {
    (*(*v393 + 8))(v393);
  }

  v394 = *(this + 98);
  *(this + 98) = 0;
  if (v394)
  {
    (*(*v394 + 8))(v394);
  }

  v395 = *(this + 97);
  *(this + 97) = 0;
  if (v395)
  {
    (*(*v395 + 8))(v395);
  }

  v396 = *(this + 96);
  *(this + 96) = 0;
  if (v396)
  {
    (*(*v396 + 8))(v396);
  }

  v397 = *(this + 95);
  *(this + 95) = 0;
  if (v397)
  {
    (*(*v397 + 8))(v397);
  }

  v398 = *(this + 94);
  *(this + 94) = 0;
  if (v398)
  {
    (*(*v398 + 8))(v398);
  }

  v399 = *(this + 93);
  *(this + 93) = 0;
  if (v399)
  {
    (*(*v399 + 8))(v399);
  }

  v400 = *(this + 92);
  *(this + 92) = 0;
  if (v400)
  {
    (*(*v400 + 8))(v400);
  }

  v401 = *(this + 91);
  *(this + 91) = 0;
  if (v401)
  {
    (*(*v401 + 8))(v401);
  }

  v402 = *(this + 90);
  *(this + 90) = 0;
  if (v402)
  {
    (*(*v402 + 8))(v402);
  }

  v403 = *(this + 89);
  *(this + 89) = 0;
  if (v403)
  {
    (*(*v403 + 8))(v403);
  }

  v404 = *(this + 88);
  *(this + 88) = 0;
  if (v404)
  {
    (*(*v404 + 8))(v404);
  }

  v405 = *(this + 86);
  *(this + 86) = 0;
  if (v405)
  {
    (*(*v405 + 8))(v405);
  }

  v406 = *(this + 85);
  *(this + 85) = 0;
  if (v406)
  {
    (*(*v406 + 8))(v406);
  }

  v407 = *(this + 84);
  *(this + 84) = 0;
  if (v407)
  {
    (*(*v407 + 8))(v407);
  }

  v408 = *(this + 83);
  *(this + 83) = 0;
  if (v408)
  {
    (*(*v408 + 8))(v408);
  }

  v409 = *(this + 82);
  *(this + 82) = 0;
  if (v409)
  {
    (*(*v409 + 8))(v409);
  }

  v410 = *(this + 81);
  *(this + 81) = 0;
  if (v410)
  {
    (*(*v410 + 8))(v410);
  }

  v411 = *(this + 80);
  *(this + 80) = 0;
  if (v411)
  {
    (*(*v411 + 8))(v411);
  }

  v412 = *(this + 79);
  *(this + 79) = 0;
  if (v412)
  {
    (*(*v412 + 8))(v412);
  }

  v413 = *(this + 78);
  *(this + 78) = 0;
  if (v413)
  {
    (*(*v413 + 8))(v413);
  }

  v414 = *(this + 77);
  *(this + 77) = 0;
  if (v414)
  {
    (*(*v414 + 8))(v414);
  }

  v415 = *(this + 76);
  *(this + 76) = 0;
  if (v415)
  {
    (*(*v415 + 8))(v415);
  }

  v416 = *(this + 75);
  *(this + 75) = 0;
  if (v416)
  {
    (*(*v416 + 8))(v416);
  }

  v417 = *(this + 74);
  *(this + 74) = 0;
  if (v417)
  {
    (*(*v417 + 8))(v417);
  }

  v418 = *(this + 73);
  *(this + 73) = 0;
  if (v418)
  {
    (*(*v418 + 8))(v418);
  }

  v419 = *(this + 72);
  *(this + 72) = 0;
  if (v419)
  {
    (*(*v419 + 8))(v419);
  }

  v420 = *(this + 71);
  *(this + 71) = 0;
  if (v420)
  {
    (*(*v420 + 8))(v420);
  }

  v421 = *(this + 70);
  *(this + 70) = 0;
  if (v421)
  {
    (*(*v421 + 8))(v421);
  }

  v422 = *(this + 69);
  *(this + 69) = 0;
  if (v422)
  {
    (*(*v422 + 8))(v422);
  }

  v423 = *(this + 68);
  *(this + 68) = 0;
  if (v423)
  {
    (*(*v423 + 8))(v423);
  }

  v424 = *(this + 67);
  *(this + 67) = 0;
  if (v424)
  {
    (*(*v424 + 8))(v424);
  }

  v425 = *(this + 66);
  *(this + 66) = 0;
  if (v425)
  {
    (*(*v425 + 8))(v425);
  }

  v426 = *(this + 65);
  *(this + 65) = 0;
  if (v426)
  {
    (*(*v426 + 8))(v426);
  }

  v427 = *(this + 64);
  *(this + 64) = 0;
  if (v427)
  {
    (*(*v427 + 8))(v427);
  }

  v428 = *(this + 63);
  *(this + 63) = 0;
  if (v428)
  {
    (*(*v428 + 8))(v428);
  }

  v429 = *(this + 62);
  *(this + 62) = 0;
  if (v429)
  {
    (*(*v429 + 8))(v429);
  }

  v430 = *(this + 61);
  *(this + 61) = 0;
  if (v430)
  {
    (*(*v430 + 8))(v430);
  }

  v431 = *(this + 60);
  *(this + 60) = 0;
  if (v431)
  {
    (*(*v431 + 8))(v431);
  }

  v432 = *(this + 59);
  *(this + 59) = 0;
  if (v432)
  {
    (*(*v432 + 8))(v432);
  }

  v433 = *(this + 58);
  *(this + 58) = 0;
  if (v433)
  {
    (*(*v433 + 8))(v433);
  }

  v434 = *(this + 57);
  *(this + 57) = 0;
  if (v434)
  {
    (*(*v434 + 8))(v434);
  }

  v435 = *(this + 56);
  *(this + 56) = 0;
  if (v435)
  {
    (*(*v435 + 8))(v435);
  }

  v436 = *(this + 55);
  *(this + 55) = 0;
  if (v436)
  {
    (*(*v436 + 8))(v436);
  }

  v437 = *(this + 54);
  *(this + 54) = 0;
  if (v437)
  {
    (*(*v437 + 8))(v437);
  }

  v438 = *(this + 53);
  *(this + 53) = 0;
  if (v438)
  {
    (*(*v438 + 8))(v438);
  }

  v439 = *(this + 52);
  *(this + 52) = 0;
  if (v439)
  {
    (*(*v439 + 8))(v439);
  }

  v440 = *(this + 51);
  *(this + 51) = 0;
  if (v440)
  {
    (*(*v440 + 8))(v440);
  }

  v441 = *(this + 50);
  *(this + 50) = 0;
  if (v441)
  {
    (*(*v441 + 8))(v441);
  }

  v442 = *(this + 49);
  *(this + 49) = 0;
  if (v442)
  {
    (*(*v442 + 8))(v442);
  }

  v443 = *(this + 48);
  *(this + 48) = 0;
  if (v443)
  {
    (*(*v443 + 8))(v443);
  }

  v444 = *(this + 47);
  *(this + 47) = 0;
  if (v444)
  {
    (*(*v444 + 8))(v444);
  }

  v445 = *(this + 46);
  *(this + 46) = 0;
  if (v445)
  {
    (*(*v445 + 8))(v445);
  }

  v446 = *(this + 45);
  *(this + 45) = 0;
  if (v446)
  {
    (*(*v446 + 8))(v446);
  }

  v447 = *(this + 44);
  *(this + 44) = 0;
  if (v447)
  {
    (*(*v447 + 8))(v447);
  }

  v448 = *(this + 43);
  *(this + 43) = 0;
  if (v448)
  {
    (*(*v448 + 8))(v448);
  }

  v449 = *(this + 42);
  *(this + 42) = 0;
  if (v449)
  {
    (*(*v449 + 8))(v449);
  }

  v450 = *(this + 41);
  *(this + 41) = 0;
  if (v450)
  {
    (*(*v450 + 8))(v450);
  }

  v451 = *(this + 40);
  *(this + 40) = 0;
  if (v451)
  {
    (*(*v451 + 8))(v451);
  }

  v452 = *(this + 39);
  *(this + 39) = 0;
  if (v452)
  {
    (*(*v452 + 8))(v452);
  }

  v453 = *(this + 38);
  *(this + 38) = 0;
  if (v453)
  {
    (*(*v453 + 8))(v453);
  }

  v454 = *(this + 37);
  *(this + 37) = 0;
  if (v454)
  {
    (*(*v454 + 8))(v454);
  }

  v455 = *(this + 36);
  *(this + 36) = 0;
  if (v455)
  {
    (*(*v455 + 8))(v455);
  }

  v456 = *(this + 35);
  *(this + 35) = 0;
  if (v456)
  {
    (*(*v456 + 8))(v456);
  }

  v457 = *(this + 34);
  *(this + 34) = 0;
  if (v457)
  {
    (*(*v457 + 8))(v457);
  }

  v458 = *(this + 33);
  *(this + 33) = 0;
  if (v458)
  {
    (*(*v458 + 8))(v458);
  }

  v459 = *(this + 32);
  *(this + 32) = 0;
  if (v459)
  {
    (*(*v459 + 8))(v459);
  }

  v460 = *(this + 31);
  *(this + 31) = 0;
  if (v460)
  {
    (*(*v460 + 8))(v460);
  }

  v461 = *(this + 30);
  *(this + 30) = 0;
  if (v461)
  {
    (*(*v461 + 8))(v461);
  }

  v462 = *(this + 29);
  *(this + 29) = 0;
  if (v462)
  {
    (*(*v462 + 8))(v462);
  }

  v463 = *(this + 28);
  *(this + 28) = 0;
  if (v463)
  {
    (*(*v463 + 8))(v463);
  }

  v464 = *(this + 27);
  *(this + 27) = 0;
  if (v464)
  {
    (*(*v464 + 8))(v464);
  }

  v465 = *(this + 26);
  *(this + 26) = 0;
  if (v465)
  {
    (*(*v465 + 8))(v465);
  }

  v466 = *(this + 25);
  *(this + 25) = 0;
  if (v466)
  {
    (*(*v466 + 8))(v466);
  }

  v467 = *(this + 24);
  *(this + 24) = 0;
  if (v467)
  {
    (*(*v467 + 8))(v467);
  }

  v468 = *(this + 23);
  *(this + 23) = 0;
  if (v468)
  {
    (*(*v468 + 8))(v468);
  }

  v469 = *(this + 22);
  *(this + 22) = 0;
  if (v469)
  {
    (*(*v469 + 8))(v469);
  }

  v470 = *(this + 21);
  *(this + 21) = 0;
  if (v470)
  {
    (*(*v470 + 8))(v470);
  }

  v471 = *(this + 20);
  *(this + 20) = 0;
  if (v471)
  {
    (*(*v471 + 8))(v471);
  }

  v472 = *(this + 19);
  *(this + 19) = 0;
  if (v472)
  {
    (*(*v472 + 8))(v472);
  }

  v473 = *(this + 18);
  *(this + 18) = 0;
  if (v473)
  {
    (*(*v473 + 8))(v473);
  }

  v474 = *(this + 17);
  *(this + 17) = 0;
  if (v474)
  {
    (*(*v474 + 8))(v474);
  }

  v475 = *(this + 16);
  *(this + 16) = 0;
  if (v475)
  {
    (*(*v475 + 8))(v475);
  }

  v476 = *(this + 15);
  *(this + 15) = 0;
  if (v476)
  {
    (*(*v476 + 8))(v476);
  }

  v477 = *(this + 14);
  *(this + 14) = 0;
  if (v477)
  {
    (*(*v477 + 8))(v477);
  }

  v478 = *(this + 13);
  *(this + 13) = 0;
  if (v478)
  {
    (*(*v478 + 8))(v478);
  }

  v479 = *(this + 12);
  *(this + 12) = 0;
  if (v479)
  {
    (*(*v479 + 8))(v479);
  }

  v480 = *(this + 11);
  *(this + 11) = 0;
  if (v480)
  {
    (*(*v480 + 8))(v480);
  }

  v481 = *(this + 10);
  *(this + 10) = 0;
  if (v481)
  {
    (*(*v481 + 8))(v481);
  }

  v482 = *(this + 9);
  *(this + 9) = 0;
  if (v482)
  {
    (*(*v482 + 8))(v482);
  }

  v483 = *(this + 8);
  *(this + 8) = 0;
  if (v483)
  {
    (*(*v483 + 8))(v483);
  }

  v484 = *(this + 7);
  *(this + 7) = 0;
  if (v484)
  {
    (*(*v484 + 8))(v484);
  }

  v485 = *(this + 6);
  *(this + 6) = 0;
  if (v485)
  {
    (*(*v485 + 8))(v485);
  }

  v486 = *(this + 5);
  *(this + 5) = 0;
  if (v486)
  {
    (*(*v486 + 8))(v486);
  }

  v487 = *(this + 4);
  *(this + 4) = 0;
  if (v487)
  {
    (*(*v487 + 8))(v487);
  }

  v488 = *(this + 3);
  *(this + 3) = 0;
  if (v488)
  {
    (*(*v488 + 8))(v488);
  }

  v489 = *(this + 2);
  *(this + 2) = 0;
  if (v489)
  {
    (*(*v489 + 8))(v489);
  }

  v490 = *(this + 1);
  *(this + 1) = 0;
  if (v490)
  {
    (*(*v490 + 8))(v490);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::Item::~Item(this);

  operator delete();
}

CMMsl::Item *CMMsl::Item::Item(CMMsl::Item *this, const CMMsl::Item *a2)
{
  *this = off_10041F420;
  v4 = this + 704;
  bzero(this + 8, 0x2B0uLL);
  bzero(v4, 0xC9CuLL);
  if (*(a2 + 3928))
  {
    v5 = *(a2 + 87);
    *(this + 3928) = 1;
    *(this + 87) = v5;
  }

  if (*(a2 + 170))
  {
    operator new();
  }

  if (*(a2 + 169))
  {
    operator new();
  }

  if (*(a2 + 166))
  {
    operator new();
  }

  if (*(a2 + 165))
  {
    operator new();
  }

  if (*(a2 + 96))
  {
    operator new();
  }

  if (*(a2 + 95))
  {
    operator new();
  }

  if (*(a2 + 102))
  {
    operator new();
  }

  if (*(a2 + 101))
  {
    operator new();
  }

  if (*(a2 + 209))
  {
    operator new();
  }

  if (*(a2 + 107))
  {
    operator new();
  }

  if (*(a2 + 14))
  {
    operator new();
  }

  if (*(a2 + 22))
  {
    operator new();
  }

  if (*(a2 + 32))
  {
    operator new();
  }

  if (*(a2 + 465))
  {
    operator new();
  }

  if (*(a2 + 470))
  {
    operator new();
  }

  if (*(a2 + 472))
  {
    operator new();
  }

  if (*(a2 + 476))
  {
    operator new();
  }

  if (*(a2 + 483))
  {
    operator new();
  }

  if (*(a2 + 481))
  {
    operator new();
  }

  if (*(a2 + 487))
  {
    operator new();
  }

  if (*(a2 + 449))
  {
    operator new();
  }

  if (*(a2 + 75))
  {
    operator new();
  }

  if (*(a2 + 76))
  {
    operator new();
  }

  if (*(a2 + 77))
  {
    operator new();
  }

  if (*(a2 + 74))
  {
    operator new();
  }

  if (*(a2 + 78))
  {
    operator new();
  }

  if (*(a2 + 475))
  {
    operator new();
  }

  if (*(a2 + 318))
  {
    operator new();
  }

  if (*(a2 + 371))
  {
    operator new();
  }

  if (*(a2 + 485))
  {
    operator new();
  }

  if (*(a2 + 459))
  {
    operator new();
  }

  if (*(a2 + 86))
  {
    operator new();
  }

  if (*(a2 + 461))
  {
    operator new();
  }

  if (*(a2 + 205))
  {
    operator new();
  }

  if (*(a2 + 203))
  {
    operator new();
  }

  if (*(a2 + 198))
  {
    operator new();
  }

  if (*(a2 + 33))
  {
    operator new();
  }

  if (*(a2 + 34))
  {
    operator new();
  }

  if (*(a2 + 39))
  {
    operator new();
  }

  if (*(a2 + 128))
  {
    operator new();
  }

  if (*(a2 + 486))
  {
    operator new();
  }

  if (*(a2 + 482))
  {
    operator new();
  }

  if (*(a2 + 197))
  {
    operator new();
  }

  if (*(a2 + 20))
  {
    operator new();
  }

  if (*(a2 + 444))
  {
    operator new();
  }

  if (*(a2 + 49))
  {
    operator new();
  }

  if (*(a2 + 441))
  {
    operator new();
  }

  if (*(a2 + 261))
  {
    operator new();
  }

  if (*(a2 + 139))
  {
    operator new();
  }

  if (*(a2 + 13))
  {
    operator new();
  }

  if (*(a2 + 286))
  {
    operator new();
  }

  if (*(a2 + 410))
  {
    operator new();
  }

  if (*(a2 + 271))
  {
    operator new();
  }

  if (*(a2 + 100))
  {
    operator new();
  }

  if (*(a2 + 442))
  {
    operator new();
  }

  if (*(a2 + 387))
  {
    operator new();
  }

  if (*(a2 + 443))
  {
    operator new();
  }

  if (*(a2 + 448))
  {
    operator new();
  }

  if (*(a2 + 245))
  {
    operator new();
  }

  if (*(a2 + 220))
  {
    operator new();
  }

  if (*(a2 + 194))
  {
    operator new();
  }

  if (*(a2 + 241))
  {
    operator new();
  }

  if (*(a2 + 431))
  {
    operator new();
  }

  if (*(a2 + 236))
  {
    operator new();
  }

  if (*(a2 + 432))
  {
    operator new();
  }

  if (*(a2 + 53))
  {
    operator new();
  }

  if (*(a2 + 424))
  {
    operator new();
  }

  if (*(a2 + 52))
  {
    operator new();
  }

  if (*(a2 + 425))
  {
    operator new();
  }

  if (*(a2 + 466))
  {
    operator new();
  }

  if (*(a2 + 42))
  {
    operator new();
  }

  if (*(a2 + 464))
  {
    operator new();
  }

  if (*(a2 + 445))
  {
    operator new();
  }

  if (*(a2 + 181))
  {
    operator new();
  }

  if (*(a2 + 398))
  {
    operator new();
  }

  if (*(a2 + 152))
  {
    operator new();
  }

  if (*(a2 + 123))
  {
    operator new();
  }

  if (*(a2 + 6))
  {
    operator new();
  }

  if (*(a2 + 280))
  {
    operator new();
  }

  if (*(a2 + 275))
  {
    operator new();
  }

  if (*(a2 + 69))
  {
    operator new();
  }

  if (*(a2 + 243))
  {
    operator new();
  }

  if (*(a2 + 364))
  {
    operator new();
  }

  if (*(a2 + 212))
  {
    operator new();
  }

  if (*(a2 + 99))
  {
    operator new();
  }

  if (*(a2 + 176))
  {
    operator new();
  }

  if (*(a2 + 177))
  {
    operator new();
  }

  if (*(a2 + 175))
  {
    operator new();
  }

  if (*(a2 + 174))
  {
    operator new();
  }

  if (*(a2 + 66))
  {
    operator new();
  }

  if (*(a2 + 153))
  {
    operator new();
  }

  if (*(a2 + 274))
  {
    operator new();
  }

  if (*(a2 + 262))
  {
    operator new();
  }

  if (*(a2 + 334))
  {
    operator new();
  }

  if (*(a2 + 335))
  {
    operator new();
  }

  if (*(a2 + 70))
  {
    operator new();
  }

  if (*(a2 + 213))
  {
    operator new();
  }

  if (*(a2 + 98))
  {
    operator new();
  }

  if (*(a2 + 348))
  {
    operator new();
  }

  if (*(a2 + 450))
  {
    operator new();
  }

  if (*(a2 + 264))
  {
    operator new();
  }

  if (*(a2 + 265))
  {
    operator new();
  }

  if (*(a2 + 347))
  {
    operator new();
  }

  if (*(a2 + 480))
  {
    operator new();
  }

  if (*(a2 + 471))
  {
    operator new();
  }

  if (*(a2 + 363))
  {
    operator new();
  }

  if (*(a2 + 82))
  {
    operator new();
  }

  if (*(a2 + 67))
  {
    operator new();
  }

  if (*(a2 + 68))
  {
    operator new();
  }

  if (*(a2 + 294))
  {
    operator new();
  }

  if (*(a2 + 329))
  {
    operator new();
  }

  if (*(a2 + 330))
  {
    operator new();
  }

  if (*(a2 + 54))
  {
    operator new();
  }

  if (*(a2 + 426))
  {
    operator new();
  }

  if (*(a2 + 48))
  {
    operator new();
  }

  if (*(a2 + 65))
  {
    operator new();
  }

  if (*(a2 + 71))
  {
    operator new();
  }

  if (*(a2 + 454))
  {
    operator new();
  }

  if (*(a2 + 406))
  {
    operator new();
  }

  if (*(a2 + 401))
  {
    operator new();
  }

  if (*(a2 + 404))
  {
    operator new();
  }

  if (*(a2 + 403))
  {
    operator new();
  }

  if (*(a2 + 407))
  {
    operator new();
  }

  if (*(a2 + 408))
  {
    operator new();
  }

  if (*(a2 + 402))
  {
    operator new();
  }

  if (*(a2 + 268))
  {
    operator new();
  }

  if (*(a2 + 484))
  {
    operator new();
  }

  if (*(a2 + 256))
  {
    operator new();
  }

  if (*(a2 + 29))
  {
    operator new();
  }

  if (*(a2 + 411))
  {
    operator new();
  }

  if (*(a2 + 412))
  {
    operator new();
  }

  if (*(a2 + 394))
  {
    operator new();
  }

  if (*(a2 + 104))
  {
    operator new();
  }

  if (*(a2 + 125))
  {
    operator new();
  }

  if (*(a2 + 64))
  {
    operator new();
  }

  if (*(a2 + 260))
  {
    operator new();
  }

  if (*(a2 + 63))
  {
    operator new();
  }

  if (*(a2 + 338))
  {
    operator new();
  }

  if (*(a2 + 151))
  {
    operator new();
  }

  if (*(a2 + 111))
  {
    operator new();
  }

  if (*(a2 + 3))
  {
    operator new();
  }

  if (*(a2 + 4))
  {
    operator new();
  }

  if (*(a2 + 45))
  {
    operator new();
  }

  if (*(a2 + 257))
  {
    operator new();
  }

  if (*(a2 + 440))
  {
    operator new();
  }

  if (*(a2 + 374))
  {
    operator new();
  }

  if (*(a2 + 489))
  {
    operator new();
  }

  if (*(a2 + 488))
  {
    operator new();
  }

  if (*(a2 + 50))
  {
    operator new();
  }

  if (*(a2 + 311))
  {
    operator new();
  }

  if (*(a2 + 333))
  {
    operator new();
  }

  if (*(a2 + 255))
  {
    operator new();
  }

  if (*(a2 + 258))
  {
    operator new();
  }

  if (*(a2 + 375))
  {
    operator new();
  }

  if (*(a2 + 57))
  {
    operator new();
  }

  if (*(a2 + 58))
  {
    operator new();
  }

  if (*(a2 + 277))
  {
    operator new();
  }

  if (*(a2 + 297))
  {
    operator new();
  }

  if (*(a2 + 12))
  {
    operator new();
  }

  if (*(a2 + 117))
  {
    operator new();
  }

  if (*(a2 + 312))
  {
    operator new();
  }

  if (*(a2 + 158))
  {
    operator new();
  }

  if (*(a2 + 159))
  {
    operator new();
  }

  if (*(a2 + 157))
  {
    operator new();
  }

  if (*(a2 + 126))
  {
    operator new();
  }

  if (*(a2 + 469))
  {
    operator new();
  }

  if (*(a2 + 419))
  {
    operator new();
  }

  if (*(a2 + 377))
  {
    operator new();
  }

  if (*(a2 + 357))
  {
    operator new();
  }

  if (*(a2 + 250))
  {
    operator new();
  }

  if (*(a2 + 251))
  {
    operator new();
  }

  if (*(a2 + 43))
  {
    operator new();
  }

  if (*(a2 + 249))
  {
    operator new();
  }

  if (*(a2 + 451))
  {
    operator new();
  }

  if (*(a2 + 355))
  {
    operator new();
  }

  if (*(a2 + 60))
  {
    operator new();
  }

  if (*(a2 + 370))
  {
    operator new();
  }

  if (*(a2 + 252))
  {
    operator new();
  }

  if (*(a2 + 248))
  {
    operator new();
  }

  if (*(a2 + 56))
  {
    operator new();
  }

  if (*(a2 + 61))
  {
    operator new();
  }

  if (*(a2 + 192))
  {
    operator new();
  }

  if (*(a2 + 393))
  {
    operator new();
  }

  if (*(a2 + 396))
  {
    operator new();
  }

  if (*(a2 + 395))
  {
    operator new();
  }

  if (*(a2 + 143))
  {
    operator new();
  }

  if (*(a2 + 458))
  {
    operator new();
  }

  if (*(a2 + 129))
  {
    operator new();
  }

  if (*(a2 + 455))
  {
    operator new();
  }

  if (*(a2 + 456))
  {
    operator new();
  }

  if (*(a2 + 429))
  {
    operator new();
  }

  if (*(a2 + 163))
  {
    operator new();
  }

  if (*(a2 + 164))
  {
    operator new();
  }

  if (*(a2 + 269))
  {
    operator new();
  }

  if (*(a2 + 142))
  {
    operator new();
  }

  if (*(a2 + 474))
  {
    operator new();
  }

  if (*(a2 + 17))
  {
    operator new();
  }

  if (*(a2 + 321))
  {
    operator new();
  }

  if (*(a2 + 206))
  {
    operator new();
  }

  if (*(a2 + 331))
  {
    operator new();
  }

  if (*(a2 + 332))
  {
    operator new();
  }

  if (*(a2 + 320))
  {
    operator new();
  }

  if (*(a2 + 122))
  {
    operator new();
  }

  if (*(a2 + 207))
  {
    operator new();
  }

  if (*(a2 + 462))
  {
    operator new();
  }

  if (*(a2 + 324))
  {
    operator new();
  }

  if (*(a2 + 327))
  {
    operator new();
  }

  if (*(a2 + 186))
  {
    operator new();
  }

  if (*(a2 + 405))
  {
    operator new();
  }

  if (*(a2 + 326))
  {
    operator new();
  }

  if (*(a2 + 273))
  {
    operator new();
  }

  if (*(a2 + 457))
  {
    operator new();
  }

  if (*(a2 + 26))
  {
    operator new();
  }

  if (*(a2 + 31))
  {
    operator new();
  }

  if (*(a2 + 281))
  {
    operator new();
  }

  if (*(a2 + 109))
  {
    operator new();
  }

  if (*(a2 + 336))
  {
    operator new();
  }

  if (*(a2 + 337))
  {
    operator new();
  }

  if (*(a2 + 195))
  {
    operator new();
  }

  if (*(a2 + 473))
  {
    operator new();
  }

  if (*(a2 + 416))
  {
    operator new();
  }

  if (*(a2 + 291))
  {
    operator new();
  }

  if (*(a2 + 272))
  {
    operator new();
  }

  if (*(a2 + 119))
  {
    operator new();
  }

  if (*(a2 + 90))
  {
    operator new();
  }

  if (*(a2 + 154))
  {
    operator new();
  }

  if (*(a2 + 27))
  {
    operator new();
  }

  if (*(a2 + 18))
  {
    operator new();
  }

  if (*(a2 + 62))
  {
    operator new();
  }

  if (*(a2 + 468))
  {
    operator new();
  }

  if (*(a2 + 467))
  {
    operator new();
  }

  if (*(a2 + 193))
  {
    operator new();
  }

  if (*(a2 + 2))
  {
    operator new();
  }

  if (*(a2 + 415))
  {
    operator new();
  }

  if (*(a2 + 417))
  {
    operator new();
  }

  if (*(a2 + 51))
  {
    operator new();
  }

  if (*(a2 + 1))
  {
    operator new();
  }

  if (*(a2 + 478))
  {
    operator new();
  }

  if (*(a2 + 479))
  {
    operator new();
  }

  if (*(a2 + 477))
  {
    operator new();
  }

  if (*(a2 + 430))
  {
    operator new();
  }

  if (*(a2 + 5))
  {
    operator new();
  }

  if (*(a2 + 7))
  {
    operator new();
  }

  if (*(a2 + 11))
  {
    operator new();
  }

  if (*(a2 + 9))
  {
    operator new();
  }

  if (*(a2 + 167))
  {
    operator new();
  }

  if (*(a2 + 183))
  {
    operator new();
  }

  if (*(a2 + 185))
  {
    operator new();
  }

  if (*(a2 + 168))
  {
    operator new();
  }

  if (*(a2 + 173))
  {
    operator new();
  }

  if (*(a2 + 180))
  {
    operator new();
  }

  if (*(a2 + 266))
  {
    operator new();
  }

  if (*(a2 + 91))
  {
    operator new();
  }

  if (*(a2 + 92))
  {
    operator new();
  }

  if (*(a2 + 178))
  {
    operator new();
  }

  if (*(a2 + 93))
  {
    operator new();
  }

  if (*(a2 + 346))
  {
    operator new();
  }

  if (*(a2 + 353))
  {
    operator new();
  }

  if (*(a2 + 349))
  {
    operator new();
  }

  if (*(a2 + 354))
  {
    operator new();
  }

  if (*(a2 + 428))
  {
    operator new();
  }

  if (*(a2 + 105))
  {
    operator new();
  }

  if (*(a2 + 283))
  {
    operator new();
  }

  if (*(a2 + 10))
  {
    operator new();
  }

  if (*(a2 + 182))
  {
    operator new();
  }

  if (*(a2 + 352))
  {
    operator new();
  }

  if (*(a2 + 55))
  {
    operator new();
  }

  if (*(a2 + 386))
  {
    operator new();
  }

  if (*(a2 + 259))
  {
    operator new();
  }

  if (*(a2 + 279))
  {
    operator new();
  }

  if (*(a2 + 124))
  {
    operator new();
  }

  if (*(a2 + 290))
  {
    operator new();
  }

  if (*(a2 + 289))
  {
    operator new();
  }

  if (*(a2 + 73))
  {
    operator new();
  }

  if (*(a2 + 463))
  {
    operator new();
  }

  if (*(a2 + 295))
  {
    operator new();
  }

  if (*(a2 + 414))
  {
    operator new();
  }

  if (*(a2 + 120))
  {
    operator new();
  }

  if (*(a2 + 89))
  {
    operator new();
  }

  if (*(a2 + 278))
  {
    operator new();
  }

  if (*(a2 + 285))
  {
    operator new();
  }

  if (*(a2 + 418))
  {
    operator new();
  }

  if (*(a2 + 85))
  {
    operator new();
  }

  if (*(a2 + 292))
  {
    operator new();
  }

  if (*(a2 + 270))
  {
    operator new();
  }

  if (*(a2 + 140))
  {
    operator new();
  }

  if (*(a2 + 59))
  {
    operator new();
  }

  if (*(a2 + 436))
  {
    operator new();
  }

  if (*(a2 + 409))
  {
    operator new();
  }

  if (*(a2 + 460))
  {
    operator new();
  }

  if (*(a2 + 284))
  {
    operator new();
  }

  if (*(a2 + 282))
  {
    operator new();
  }

  if (*(a2 + 293))
  {
    operator new();
  }

  if (*(a2 + 351))
  {
    operator new();
  }

  if (*(a2 + 204))
  {
    operator new();
  }

  if (*(a2 + 88))
  {
    operator new();
  }

  if (*(a2 + 41))
  {
    operator new();
  }

  if (*(a2 + 202))
  {
    operator new();
  }

  if (*(a2 + 200))
  {
    operator new();
  }

  if (*(a2 + 201))
  {
    operator new();
  }

  if (*(a2 + 199))
  {
    operator new();
  }

  if (*(a2 + 19))
  {
    operator new();
  }

  if (*(a2 + 15))
  {
    operator new();
  }

  if (*(a2 + 35))
  {
    operator new();
  }

  if (*(a2 + 423))
  {
    operator new();
  }

  if (*(a2 + 422))
  {
    operator new();
  }

  if (*(a2 + 118))
  {
    operator new();
  }

  if (*(a2 + 40))
  {
    operator new();
  }

  if (*(a2 + 160))
  {
    operator new();
  }

  if (*(a2 + 367))
  {
    operator new();
  }

  if (*(a2 + 369))
  {
    operator new();
  }

  if (*(a2 + 368))
  {
    operator new();
  }

  if (*(a2 + 490))
  {
    operator new();
  }

  if (*(a2 + 46))
  {
    operator new();
  }

  if (*(a2 + 345))
  {
    operator new();
  }

  if (*(a2 + 288))
  {
    operator new();
  }

  if (*(a2 + 287))
  {
    operator new();
  }

  if (*(a2 + 72))
  {
    operator new();
  }

  if (*(a2 + 24))
  {
    operator new();
  }

  if (*(a2 + 25))
  {
    operator new();
  }

  if (*(a2 + 23))
  {
    operator new();
  }

  if (*(a2 + 155))
  {
    operator new();
  }

  if (*(a2 + 156))
  {
    operator new();
  }

  if (*(a2 + 94))
  {
    operator new();
  }

  if (*(a2 + 447))
  {
    operator new();
  }

  if (*(a2 + 446))
  {
    operator new();
  }

  if (*(a2 + 30))
  {
    operator new();
  }

  if (*(a2 + 133))
  {
    operator new();
  }

  if (*(a2 + 134))
  {
    operator new();
  }

  if (*(a2 + 135))
  {
    operator new();
  }

  if (*(a2 + 131))
  {
    operator new();
  }

  if (*(a2 + 138))
  {
    operator new();
  }

  if (*(a2 + 21))
  {
    operator new();
  }

  if (*(a2 + 366))
  {
    operator new();
  }

  if (*(a2 + 365))
  {
    operator new();
  }

  if (*(a2 + 106))
  {
    operator new();
  }

  if (*(a2 + 132))
  {
    operator new();
  }

  if (*(a2 + 453))
  {
    operator new();
  }

  if (*(a2 + 28))
  {
    operator new();
  }

  if (*(a2 + 136))
  {
    operator new();
  }

  if (*(a2 + 172))
  {
    operator new();
  }

  if (*(a2 + 413))
  {
    operator new();
  }

  if (*(a2 + 141))
  {
    operator new();
  }

  if (*(a2 + 38))
  {
    operator new();
  }

  if (*(a2 + 389))
  {
    operator new();
  }

  if (*(a2 + 392))
  {
    operator new();
  }

  if (*(a2 + 390))
  {
    operator new();
  }

  if (*(a2 + 391))
  {
    operator new();
  }

  if (*(a2 + 397))
  {
    operator new();
  }

  if (*(a2 + 137))
  {
    operator new();
  }

  if (*(a2 + 211))
  {
    operator new();
  }

  if (*(a2 + 350))
  {
    operator new();
  }

  if (*(a2 + 276))
  {
    operator new();
  }

  if (*(a2 + 130))
  {
    operator new();
  }

  if (*(a2 + 254))
  {
    operator new();
  }

  if (*(a2 + 115))
  {
    operator new();
  }

  if (*(a2 + 113))
  {
    operator new();
  }

  if (*(a2 + 114))
  {
    operator new();
  }

  if (*(a2 + 112))
  {
    operator new();
  }

  if (*(a2 + 296))
  {
    operator new();
  }

  if (*(a2 + 217))
  {
    operator new();
  }

  if (*(a2 + 218))
  {
    operator new();
  }

  if (*(a2 + 221))
  {
    operator new();
  }

  if (*(a2 + 232))
  {
    operator new();
  }

  if (*(a2 + 247))
  {
    operator new();
  }

  if (*(a2 + 246))
  {
    operator new();
  }

  if (*(a2 + 230))
  {
    operator new();
  }

  if (*(a2 + 191))
  {
    operator new();
  }

  if (*(a2 + 190))
  {
    operator new();
  }

  if (*(a2 + 216))
  {
    operator new();
  }

  if (*(a2 + 219))
  {
    operator new();
  }

  if (*(a2 + 233))
  {
    operator new();
  }

  if (*(a2 + 234))
  {
    operator new();
  }

  if (*(a2 + 238))
  {
    operator new();
  }

  if (*(a2 + 226))
  {
    operator new();
  }

  if (*(a2 + 224))
  {
    operator new();
  }

  if (*(a2 + 239))
  {
    operator new();
  }

  if (*(a2 + 225))
  {
    operator new();
  }

  if (*(a2 + 235))
  {
    operator new();
  }

  if (*(a2 + 108))
  {
    operator new();
  }

  if (*(a2 + 437))
  {
    operator new();
  }

  if (*(a2 + 189))
  {
    operator new();
  }

  if (*(a2 + 438))
  {
    operator new();
  }

  if (*(a2 + 439))
  {
    operator new();
  }

  if (*(a2 + 372))
  {
    operator new();
  }

  if (*(a2 + 373))
  {
    operator new();
  }

  if (*(a2 + 376))
  {
    operator new();
  }

  if (*(a2 + 381))
  {
    operator new();
  }

  if (*(a2 + 379))
  {
    operator new();
  }

  if (*(a2 + 240))
  {
    operator new();
  }

  if (*(a2 + 229))
  {
    operator new();
  }

  if (*(a2 + 378))
  {
    operator new();
  }

  if (*(a2 + 210))
  {
    operator new();
  }

  if (*(a2 + 223))
  {
    operator new();
  }

  if (*(a2 + 231))
  {
    operator new();
  }

  if (*(a2 + 187))
  {
    operator new();
  }

  if (*(a2 + 84))
  {
    operator new();
  }

  if (*(a2 + 322))
  {
    operator new();
  }

  if (*(a2 + 97))
  {
    operator new();
  }

  if (*(a2 + 121))
  {
    operator new();
  }

  if (*(a2 + 434))
  {
    operator new();
  }

  if (*(a2 + 356))
  {
    operator new();
  }

  if (*(a2 + 242))
  {
    operator new();
  }

  if (*(a2 + 452))
  {
    operator new();
  }

  if (*(a2 + 222))
  {
    operator new();
  }

  if (*(a2 + 380))
  {
    operator new();
  }

  if (*(a2 + 420))
  {
    operator new();
  }

  if (*(a2 + 319))
  {
    operator new();
  }

  if (*(a2 + 263))
  {
    operator new();
  }

  if (*(a2 + 313))
  {
    operator new();
  }

  if (*(a2 + 314))
  {
    operator new();
  }

  if (*(a2 + 315))
  {
    operator new();
  }

  if (*(a2 + 298))
  {
    operator new();
  }

  if (*(a2 + 317))
  {
    operator new();
  }

  if (*(a2 + 253))
  {
    operator new();
  }

  if (*(a2 + 435))
  {
    operator new();
  }

  if (*(a2 + 309))
  {
    operator new();
  }

  if (*(a2 + 310))
  {
    operator new();
  }

  if (*(a2 + 433))
  {
    operator new();
  }

  if (*(a2 + 421))
  {
    operator new();
  }

  if (*(a2 + 116))
  {
    operator new();
  }

  if (*(a2 + 244))
  {
    operator new();
  }

  if (*(a2 + 388))
  {
    operator new();
  }

  if (*(a2 + 308))
  {
    operator new();
  }

  if (*(a2 + 300))
  {
    operator new();
  }

  if (*(a2 + 299))
  {
    operator new();
  }

  if (*(a2 + 303))
  {
    operator new();
  }

  if (*(a2 + 16))
  {
    operator new();
  }

  if (*(a2 + 316))
  {
    operator new();
  }

  if (*(a2 + 339))
  {
    operator new();
  }

  if (*(a2 + 342))
  {
    operator new();
  }

  if (*(a2 + 237))
  {
    operator new();
  }

  if (*(a2 + 343))
  {
    operator new();
  }

  if (*(a2 + 340))
  {
    operator new();
  }

  if (*(a2 + 307))
  {
    operator new();
  }

  if (*(a2 + 79))
  {
    operator new();
  }

  if (*(a2 + 306))
  {
    operator new();
  }

  if (*(a2 + 323))
  {
    operator new();
  }

  if (*(a2 + 267))
  {
    operator new();
  }

  if (*(a2 + 214))
  {
    operator new();
  }

  if (*(a2 + 215))
  {
    operator new();
  }

  if (*(a2 + 341))
  {
    operator new();
  }

  if (*(a2 + 302))
  {
    operator new();
  }

  if (*(a2 + 301))
  {
    operator new();
  }

  if (*(a2 + 228))
  {
    operator new();
  }

  if (*(a2 + 227))
  {
    operator new();
  }

  if (*(a2 + 344))
  {
    operator new();
  }

  if (*(a2 + 44))
  {
    operator new();
  }

  if (*(a2 + 127))
  {
    operator new();
  }

  if (*(a2 + 325))
  {
    operator new();
  }

  if (*(a2 + 328))
  {
    operator new();
  }

  if (*(a2 + 37))
  {
    operator new();
  }

  if (*(a2 + 36))
  {
    operator new();
  }

  if (*(a2 + 383))
  {
    operator new();
  }

  if (*(a2 + 382))
  {
    operator new();
  }

  if (*(a2 + 358))
  {
    operator new();
  }

  if (*(a2 + 359))
  {
    operator new();
  }

  if (*(a2 + 361))
  {
    operator new();
  }

  if (*(a2 + 188))
  {
    operator new();
  }

  if (*(a2 + 360))
  {
    operator new();
  }

  if (*(a2 + 47))
  {
    operator new();
  }

  if (*(a2 + 147))
  {
    operator new();
  }

  if (*(a2 + 146))
  {
    operator new();
  }

  if (*(a2 + 144))
  {
    operator new();
  }

  if (*(a2 + 384))
  {
    operator new();
  }

  if (*(a2 + 385))
  {
    operator new();
  }

  if (*(a2 + 110))
  {
    operator new();
  }

  if (*(a2 + 427))
  {
    operator new();
  }

  if (*(a2 + 305))
  {
    operator new();
  }

  if (*(a2 + 83))
  {
    operator new();
  }

  if (*(a2 + 304))
  {
    operator new();
  }

  if (*(a2 + 196))
  {
    operator new();
  }

  if (*(a2 + 184))
  {
    operator new();
  }

  if (*(a2 + 171))
  {
    operator new();
  }

  if (*(a2 + 8))
  {
    operator new();
  }

  if (*(a2 + 179))
  {
    operator new();
  }

  if (*(a2 + 362))
  {
    operator new();
  }

  if (*(a2 + 150))
  {
    operator new();
  }

  if (*(a2 + 148))
  {
    operator new();
  }

  if (*(a2 + 145))
  {
    operator new();
  }

  if (*(a2 + 149))
  {
    operator new();
  }

  if (*(a2 + 103))
  {
    operator new();
  }

  if (*(a2 + 81))
  {
    operator new();
  }

  if (*(a2 + 80))
  {
    operator new();
  }

  if (*(a2 + 162))
  {
    operator new();
  }

  if (*(a2 + 161))
  {
    operator new();
  }

  if (*(a2 + 399))
  {
    operator new();
  }

  if (*(a2 + 400))
  {
    operator new();
  }

  if (*(a2 + 208))
  {
    operator new();
  }

  return this;
}

float CMMsl::MovementStats::MovementStats(uint64_t a1, uint64_t a2)
{
  *a1 = off_1004204C0;
  *(a1 + 12) = 0;
  if (*(a2 + 12))
  {
    result = *(a2 + 8);
    *(a1 + 12) = 1;
    *(a1 + 8) = result;
  }

  return result;
}

{
  *a1 = off_1004204C0;
  *(a1 + 12) = *(a2 + 12);
  *(a2 + 12) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

{
  *a1 = off_1004204C0;
  *(a1 + 12) = *(a2 + 12);
  *(a2 + 12) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

uint64_t CMMsl::SignalEnvironment::SignalEnvironment(uint64_t result, uint64_t a2)
{
  *result = off_100421C98;
  *(result + 8) = 0;
  if (*(a2 + 12))
  {
    v2 = *(a2 + 8);
    *(result + 12) = 1;
    *(result + 8) = v2;
  }

  return result;
}

{
  *result = off_100421C98;
  *(result + 8) = 0;
  *(result + 12) = *(a2 + 12);
  *(a2 + 12) = 0;
  *(result + 8) = *(a2 + 8);
  return result;
}

{
  *result = off_100421C98;
  *(result + 8) = 0;
  *(result + 12) = *(a2 + 12);
  *(a2 + 12) = 0;
  *(result + 8) = *(a2 + 8);
  return result;
}