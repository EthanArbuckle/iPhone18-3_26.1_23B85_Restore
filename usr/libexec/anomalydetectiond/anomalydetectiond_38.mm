uint64_t CMMsl::KappaGravityAutocorrelationResult::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 64);
  if ((v4 & 0x40) != 0)
  {
    this = PB::Writer::writeVarInt(a2, *(this + 44), 0x65u);
    v4 = *(v3 + 64);
    if ((v4 & 0x10) == 0)
    {
LABEL_3:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v4 & 0x10) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 36), 0x66u);
  v4 = *(v3 + 64);
  if ((v4 & 0x20) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = PB::Writer::writeVarInt(a2, *(v3 + 40), 0x67u);
  v4 = *(v3 + 64);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = PB::Writer::write(a2, *(v3 + 32), 0x68u);
  v4 = *(v3 + 64);
  if ((v4 & 4) == 0)
  {
LABEL_6:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = PB::Writer::writeVarInt(a2, *(v3 + 24), 0xC9u);
  v4 = *(v3 + 64);
  if ((v4 & 0x800) == 0)
  {
LABEL_7:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = PB::Writer::write(a2, *(v3 + 61), 0xCAu);
  v4 = *(v3 + 64);
  if ((v4 & 0x400) == 0)
  {
LABEL_8:
    if ((v4 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = PB::Writer::write(a2, *(v3 + 60), 0xCBu);
  v4 = *(v3 + 64);
  if ((v4 & 1) == 0)
  {
LABEL_9:
    if ((v4 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = PB::Writer::writeVarInt(a2, *(v3 + 8), 0x12Du);
  v4 = *(v3 + 64);
  if ((v4 & 2) == 0)
  {
LABEL_10:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = PB::Writer::writeVarInt(a2, *(v3 + 16), 0x12Eu);
  v4 = *(v3 + 64);
  if ((v4 & 0x200) == 0)
  {
LABEL_11:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_12;
    }

LABEL_24:
    this = PB::Writer::write(a2, *(v3 + 52), 0x130u);
    if ((*(v3 + 64) & 0x80) == 0)
    {
      return this;
    }

    goto LABEL_25;
  }

LABEL_23:
  this = PB::Writer::writeVarInt(a2, *(v3 + 56), 0x12Fu);
  v4 = *(v3 + 64);
  if ((v4 & 0x100) != 0)
  {
    goto LABEL_24;
  }

LABEL_12:
  if ((v4 & 0x80) == 0)
  {
    return this;
  }

LABEL_25:
  v5 = *(v3 + 48);

  return PB::Writer::writeVarInt(a2, v5, 0x131u);
}

uint64_t CMMsl::KappaGravityAutocorrelationResult::hash_value(CMMsl::KappaGravityAutocorrelationResult *this)
{
  v1 = *(this + 32);
  if ((v1 & 0x40) == 0)
  {
    v2 = 0;
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_3;
    }

LABEL_21:
    v4 = 0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

  v2 = *(this + 11);
  if ((v1 & 0x10) == 0)
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

  if ((v1 & 0x20) != 0)
  {
LABEL_6:
    v5 = *(this + 10);
    if ((v1 & 8) != 0)
    {
      goto LABEL_7;
    }

LABEL_23:
    v7 = 0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_22:
  v5 = 0;
  if ((v1 & 8) == 0)
  {
    goto LABEL_23;
  }

LABEL_7:
  v6 = *(this + 8);
  v7 = LODWORD(v6);
  if (v6 == 0.0)
  {
    v7 = 0;
  }

  if ((v1 & 4) != 0)
  {
LABEL_10:
    v8 = *(this + 3);
    if ((*(this + 32) & 0x800) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  v8 = 0;
  if ((*(this + 32) & 0x800) != 0)
  {
LABEL_11:
    v9 = *(this + 61);
    if ((*(this + 32) & 0x400) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  v9 = 0;
  if ((*(this + 32) & 0x400) != 0)
  {
LABEL_12:
    v10 = *(this + 60);
    if (v1)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  v10 = 0;
  if (v1)
  {
LABEL_13:
    v11 = *(this + 1);
    if ((v1 & 2) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_27:
  v11 = 0;
  if ((v1 & 2) != 0)
  {
LABEL_14:
    v12 = *(this + 2);
    if ((*(this + 32) & 0x200) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_29;
  }

LABEL_28:
  v12 = 0;
  if ((*(this + 32) & 0x200) != 0)
  {
LABEL_15:
    v13 = *(this + 14);
    if ((*(this + 32) & 0x100) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_30;
  }

LABEL_29:
  v13 = 0;
  if ((*(this + 32) & 0x100) != 0)
  {
LABEL_16:
    v14 = *(this + 13);
    v15 = LODWORD(v14);
    if (v14 == 0.0)
    {
      v15 = 0;
    }

    if ((v1 & 0x80) != 0)
    {
      goto LABEL_19;
    }

LABEL_31:
    v16 = 0;
    return v4 ^ v2 ^ v5 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v15 ^ v16;
  }

LABEL_30:
  v15 = 0;
  if ((v1 & 0x80) == 0)
  {
    goto LABEL_31;
  }

LABEL_19:
  v16 = *(this + 12);
  return v4 ^ v2 ^ v5 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v15 ^ v16;
}

void CMMsl::KappaHighSpeedCrashResult::~KappaHighSpeedCrashResult(CMMsl::KappaHighSpeedCrashResult *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::KappaHighSpeedCrashResult::KappaHighSpeedCrashResult(uint64_t this, const CMMsl::KappaHighSpeedCrashResult *a2)
{
  *this = off_10041F730;
  *(this + 68) = 0;
  v2 = *(a2 + 17);
  if ((v2 & 4) != 0)
  {
    v4 = *(a2 + 5);
    v3 = 4;
    *(this + 68) = 4;
    *(this + 20) = v4;
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
  if ((v2 & 8) != 0)
  {
    v6 = *(a2 + 6);
    v3 |= 8u;
    *(this + 68) = v3;
    *(this + 24) = v6;
    v2 = *(a2 + 17);
    if ((v2 & 1) == 0)
    {
LABEL_8:
      if ((v2 & 0x800) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_28;
    }
  }

  else if ((v2 & 1) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 1);
  v3 |= 1u;
  *(this + 68) = v3;
  *(this + 8) = v7;
  v2 = *(a2 + 17);
  if ((v2 & 0x800) == 0)
  {
LABEL_9:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  v8 = *(a2 + 56);
  v3 |= 0x800u;
  *(this + 68) = v3;
  *(this + 56) = v8;
  v2 = *(a2 + 17);
  if ((v2 & 0x1000) == 0)
  {
LABEL_10:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  v9 = *(a2 + 57);
  v3 |= 0x1000u;
  *(this + 68) = v3;
  *(this + 57) = v9;
  v2 = *(a2 + 17);
  if ((v2 & 0x2000) == 0)
  {
LABEL_11:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  v10 = *(a2 + 58);
  v3 |= 0x2000u;
  *(this + 68) = v3;
  *(this + 58) = v10;
  v2 = *(a2 + 17);
  if ((v2 & 0x100000) == 0)
  {
LABEL_12:
    if ((v2 & 0x40000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  v11 = *(a2 + 65);
  v3 |= 0x100000u;
  *(this + 68) = v3;
  *(this + 65) = v11;
  v2 = *(a2 + 17);
  if ((v2 & 0x40000) == 0)
  {
LABEL_13:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_33;
  }

LABEL_32:
  v12 = *(a2 + 63);
  v3 |= 0x40000u;
  *(this + 68) = v3;
  *(this + 63) = v12;
  v2 = *(a2 + 17);
  if ((v2 & 0x8000) == 0)
  {
LABEL_14:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

LABEL_33:
  v13 = *(a2 + 60);
  v3 |= 0x8000u;
  *(this + 68) = v3;
  *(this + 60) = v13;
  v2 = *(a2 + 17);
  if ((v2 & 0x4000) == 0)
  {
LABEL_15:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_34:
  v14 = *(a2 + 59);
  v3 |= 0x4000u;
  *(this + 68) = v3;
  *(this + 59) = v14;
  v2 = *(a2 + 17);
  if ((v2 & 0x80000) == 0)
  {
LABEL_16:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_36;
  }

LABEL_35:
  v15 = *(a2 + 64);
  v3 |= 0x80000u;
  *(this + 68) = v3;
  *(this + 64) = v15;
  v2 = *(a2 + 17);
  if ((v2 & 0x10000) == 0)
  {
LABEL_17:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_37;
  }

LABEL_36:
  v16 = *(a2 + 61);
  v3 |= 0x10000u;
  *(this + 68) = v3;
  *(this + 61) = v16;
  v2 = *(a2 + 17);
  if ((v2 & 0x20000) == 0)
  {
LABEL_18:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_38;
  }

LABEL_37:
  v17 = *(a2 + 62);
  v3 |= 0x20000u;
  *(this + 68) = v3;
  *(this + 62) = v17;
  v2 = *(a2 + 17);
  if ((v2 & 0x400) == 0)
  {
LABEL_19:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_39;
  }

LABEL_38:
  v18 = *(a2 + 13);
  v3 |= 0x400u;
  *(this + 68) = v3;
  *(this + 52) = v18;
  v2 = *(a2 + 17);
  if ((v2 & 0x100) == 0)
  {
LABEL_20:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_40;
  }

LABEL_39:
  v19 = *(a2 + 11);
  v3 |= 0x100u;
  *(this + 68) = v3;
  *(this + 44) = v19;
  v2 = *(a2 + 17);
  if ((v2 & 0x20) == 0)
  {
LABEL_21:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_41;
  }

LABEL_40:
  v20 = *(a2 + 8);
  v3 |= 0x20u;
  *(this + 68) = v3;
  *(this + 32) = v20;
  v2 = *(a2 + 17);
  if ((v2 & 0x10) == 0)
  {
LABEL_22:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_42;
  }

LABEL_41:
  v21 = *(a2 + 7);
  v3 |= 0x10u;
  *(this + 68) = v3;
  *(this + 28) = v21;
  v2 = *(a2 + 17);
  if ((v2 & 0x200) == 0)
  {
LABEL_23:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_43;
  }

LABEL_42:
  v22 = *(a2 + 12);
  v3 |= 0x200u;
  *(this + 68) = v3;
  *(this + 48) = v22;
  v2 = *(a2 + 17);
  if ((v2 & 0x40) == 0)
  {
LABEL_24:
    if ((v2 & 0x80) == 0)
    {
      return this;
    }

LABEL_44:
    v24 = *(a2 + 10);
    *(this + 68) = v3 | 0x80;
    *(this + 40) = v24;
    return this;
  }

LABEL_43:
  v23 = *(a2 + 9);
  v3 |= 0x40u;
  *(this + 68) = v3;
  *(this + 36) = v23;
  if ((*(a2 + 17) & 0x80) != 0)
  {
    goto LABEL_44;
  }

  return this;
}

CMMsl *CMMsl::KappaHighSpeedCrashResult::operator=(CMMsl *a1, const CMMsl::KappaHighSpeedCrashResult *a2)
{
  if (a1 != a2)
  {
    CMMsl::KappaHighSpeedCrashResult::KappaHighSpeedCrashResult(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::KappaHighSpeedCrashResult *a2, CMMsl::KappaHighSpeedCrashResult *a3)
{
  v3 = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v3;
  v4 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v4;
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  result = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = result;
  v7 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v7;
  LOBYTE(v7) = *(this + 56);
  *(this + 56) = *(a2 + 56);
  *(a2 + 56) = v7;
  LOBYTE(v7) = *(this + 57);
  *(this + 57) = *(a2 + 57);
  *(a2 + 57) = v7;
  LOBYTE(v7) = *(this + 58);
  *(this + 58) = *(a2 + 58);
  *(a2 + 58) = v7;
  LOBYTE(v7) = *(this + 65);
  *(this + 65) = *(a2 + 65);
  *(a2 + 65) = v7;
  LOBYTE(v7) = *(this + 63);
  *(this + 63) = *(a2 + 63);
  *(a2 + 63) = v7;
  LOBYTE(v7) = *(this + 60);
  *(this + 60) = *(a2 + 60);
  *(a2 + 60) = v7;
  LOBYTE(v7) = *(this + 59);
  *(this + 59) = *(a2 + 59);
  *(a2 + 59) = v7;
  LOBYTE(v7) = *(this + 64);
  *(this + 64) = *(a2 + 64);
  *(a2 + 64) = v7;
  LOBYTE(v7) = *(this + 61);
  *(this + 61) = *(a2 + 61);
  *(a2 + 61) = v7;
  LOBYTE(v7) = *(this + 62);
  *(this + 62) = *(a2 + 62);
  *(a2 + 62) = v7;
  LODWORD(v7) = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v7;
  LODWORD(v7) = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v7;
  LODWORD(v7) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v7;
  LODWORD(v7) = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v7;
  LODWORD(v7) = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v7;
  LODWORD(v7) = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v7;
  LODWORD(v7) = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v7;
  return result;
}

float CMMsl::KappaHighSpeedCrashResult::KappaHighSpeedCrashResult(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041F730;
  *(a1 + 68) = *(a2 + 68);
  *(a2 + 68) = 0;
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 58) = *(a2 + 58);
  *(a1 + 65) = *(a2 + 65);
  *(a1 + 63) = *(a2 + 63);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 59) = *(a2 + 59);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 61) = *(a2 + 61);
  *(a1 + 62) = *(a2 + 62);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  return result;
}

CMMsl *CMMsl::KappaHighSpeedCrashResult::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::KappaHighSpeedCrashResult::KappaHighSpeedCrashResult(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::KappaHighSpeedCrashResult::formatText(CMMsl::KappaHighSpeedCrashResult *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 17);
  if ((v5 & 0x800) != 0)
  {
    PB::TextFormatter::format(a2, "crashDetectorDecision", *(this + 56));
    v5 = *(this + 17);
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

  PB::TextFormatter::format(a2, "detectorPostTriggerTimeOffsetWindow", *(this + 4));
  v5 = *(this + 17);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(a2, "detectorPreTriggerTimeOffsetWindow", *(this + 5));
  v5 = *(this + 17);
  if ((v5 & 0x1000) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

LABEL_29:
  PB::TextFormatter::format(a2, "earlyCrashDetectorDecision", *(this + 57));
  v5 = *(this + 17);
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_30:
  PB::TextFormatter::format(a2, "epochLatchingCount", *(this + 6));
  v5 = *(this + 17);
  if ((v5 & 0x2000) == 0)
  {
LABEL_7:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

LABEL_31:
  PB::TextFormatter::format(a2, "hasAudioInEpoch", *(this + 58));
  v5 = *(this + 17);
  if ((v5 & 0x4000) == 0)
  {
LABEL_8:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_32:
  PB::TextFormatter::format(a2, "isAudio", *(this + 59));
  v5 = *(this + 17);
  if ((v5 & 0x8000) == 0)
  {
LABEL_9:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(a2, "isBaro", *(this + 60));
  v5 = *(this + 17);
  if ((v5 & 0x10000) == 0)
  {
LABEL_10:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_35;
  }

LABEL_34:
  PB::TextFormatter::format(a2, "isDescalationDecided", *(this + 61));
  v5 = *(this + 17);
  if ((v5 & 0x20000) == 0)
  {
LABEL_11:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(a2, "isDescalationRequired", *(this + 62));
  v5 = *(this + 17);
  if ((v5 & 0x40000) == 0)
  {
LABEL_12:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(a2, "isFreeFall", *(this + 63));
  v5 = *(this + 17);
  if ((v5 & 0x80000) == 0)
  {
LABEL_13:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_38;
  }

LABEL_37:
  PB::TextFormatter::format(a2, "isGPS", *(this + 64));
  v5 = *(this + 17);
  if ((v5 & 0x100000) == 0)
  {
LABEL_14:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(a2, "isPulse", *(this + 65));
  v5 = *(this + 17);
  if ((v5 & 0x10) == 0)
  {
LABEL_15:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(a2, "latchedIsAudio", *(this + 7));
  v5 = *(this + 17);
  if ((v5 & 0x20) == 0)
  {
LABEL_16:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_41;
  }

LABEL_40:
  PB::TextFormatter::format(a2, "latchedIsBaro", *(this + 8));
  v5 = *(this + 17);
  if ((v5 & 0x40) == 0)
  {
LABEL_17:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_42;
  }

LABEL_41:
  PB::TextFormatter::format(a2, "latchedIsDescalationDecided", *(this + 9));
  v5 = *(this + 17);
  if ((v5 & 0x80) == 0)
  {
LABEL_18:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_43;
  }

LABEL_42:
  PB::TextFormatter::format(a2, "latchedIsDescalationRequired", *(this + 10));
  v5 = *(this + 17);
  if ((v5 & 0x100) == 0)
  {
LABEL_19:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_44;
  }

LABEL_43:
  PB::TextFormatter::format(a2, "latchedIsFreeFall", *(this + 11));
  v5 = *(this + 17);
  if ((v5 & 0x200) == 0)
  {
LABEL_20:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_45;
  }

LABEL_44:
  PB::TextFormatter::format(a2, "latchedIsGPS", *(this + 12));
  v5 = *(this + 17);
  if ((v5 & 0x400) == 0)
  {
LABEL_21:
    if ((v5 & 1) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_45:
  PB::TextFormatter::format(a2, "latchedIsPulse", *(this + 13));
  if (*(this + 17))
  {
LABEL_22:
    PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  }

LABEL_23:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::KappaHighSpeedCrashResult::readFrom(CMMsl::KappaHighSpeedCrashResult *this, PB::Reader *a2)
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
            goto LABEL_266;
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
      if ((v10 >> 3) <= 303)
      {
        if (v22 > 102)
        {
          if (v22 <= 300)
          {
            if (v22 == 103)
            {
              *(this + 17) |= 0x1000u;
              v2 = *(a2 + 1);
              if (v2 >= *(a2 + 2))
              {
                v106 = 0;
                *(a2 + 24) = 1;
              }

              else
              {
                v105 = *(*a2 + v2++);
                *(a2 + 1) = v2;
                v106 = v105 != 0;
              }

              *(this + 57) = v106;
              goto LABEL_262;
            }

            if (v22 == 201)
            {
              *(this + 17) |= 0x2000u;
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

              *(this + 58) = v54;
              goto LABEL_262;
            }
          }

          else
          {
            switch(v22)
            {
              case 0x12D:
                *(this + 17) |= 0x100000u;
                v2 = *(a2 + 1);
                if (v2 >= *(a2 + 2))
                {
                  v60 = 0;
                  *(a2 + 24) = 1;
                }

                else
                {
                  v59 = *(*a2 + v2++);
                  *(a2 + 1) = v2;
                  v60 = v59 != 0;
                }

                *(this + 65) = v60;
                goto LABEL_262;
              case 0x12E:
                *(this + 17) |= 0x40000u;
                v2 = *(a2 + 1);
                if (v2 >= *(a2 + 2))
                {
                  v88 = 0;
                  *(a2 + 24) = 1;
                }

                else
                {
                  v87 = *(*a2 + v2++);
                  *(a2 + 1) = v2;
                  v88 = v87 != 0;
                }

                *(this + 63) = v88;
                goto LABEL_262;
              case 0x12F:
                *(this + 17) |= 0x8000u;
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

                *(this + 60) = v42;
                goto LABEL_262;
            }
          }
        }

        else if (v22 <= 2)
        {
          if (v22 == 1)
          {
            *(this + 17) |= 4u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
LABEL_131:
              *(a2 + 24) = 1;
              goto LABEL_262;
            }

            *(this + 5) = *(*a2 + v2);
            goto LABEL_221;
          }

          if (v22 == 2)
          {
            *(this + 17) |= 2u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
              goto LABEL_131;
            }

            *(this + 4) = *(*a2 + v2);
            goto LABEL_221;
          }
        }

        else
        {
          switch(v22)
          {
            case 3:
              *(this + 17) |= 8u;
              v2 = *(a2 + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
              {
                goto LABEL_131;
              }

              *(this + 6) = *(*a2 + v2);
LABEL_221:
              v2 = *(a2 + 1) + 4;
              *(a2 + 1) = v2;
              goto LABEL_262;
            case 0x65:
              *(this + 17) |= 1u;
              v79 = *(a2 + 1);
              v2 = *(a2 + 2);
              v80 = *a2;
              if (v79 > 0xFFFFFFFFFFFFFFF5 || v79 + 10 > v2)
              {
                v142 = 0;
                v143 = 0;
                v83 = 0;
                if (v2 <= v79)
                {
                  v2 = *(a2 + 1);
                }

                v144 = v2 - v79;
                v145 = (v80 + v79);
                v146 = v79 + 1;
                while (1)
                {
                  if (!v144)
                  {
                    v83 = 0;
                    *(a2 + 24) = 1;
                    goto LABEL_253;
                  }

                  v147 = v146;
                  v148 = *v145;
                  *(a2 + 1) = v147;
                  v83 |= (v148 & 0x7F) << v142;
                  if ((v148 & 0x80) == 0)
                  {
                    break;
                  }

                  v142 += 7;
                  --v144;
                  ++v145;
                  v146 = v147 + 1;
                  v14 = v143++ > 8;
                  if (v14)
                  {
                    v83 = 0;
                    goto LABEL_252;
                  }
                }

                if (*(a2 + 24))
                {
                  v83 = 0;
                }

LABEL_252:
                v2 = v147;
              }

              else
              {
                v81 = 0;
                v82 = 0;
                v83 = 0;
                v84 = (v80 + v79);
                v85 = v79 + 1;
                while (1)
                {
                  v2 = v85;
                  *(a2 + 1) = v85;
                  v86 = *v84++;
                  v83 |= (v86 & 0x7F) << v81;
                  if ((v86 & 0x80) == 0)
                  {
                    break;
                  }

                  v81 += 7;
                  ++v85;
                  v14 = v82++ > 8;
                  if (v14)
                  {
                    v83 = 0;
                    break;
                  }
                }
              }

LABEL_253:
              *(this + 1) = v83;
              goto LABEL_262;
            case 0x66:
              *(this + 17) |= 0x800u;
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

              *(this + 56) = v32;
              goto LABEL_262;
          }
        }
      }

      else if (v22 <= 401)
      {
        if (v22 <= 305)
        {
          if (v22 == 304)
          {
            *(this + 17) |= 0x4000u;
            v2 = *(a2 + 1);
            if (v2 >= *(a2 + 2))
            {
              v78 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v77 = *(*a2 + v2++);
              *(a2 + 1) = v2;
              v78 = v77 != 0;
            }

            *(this + 59) = v78;
            goto LABEL_262;
          }

          if (v22 == 305)
          {
            *(this + 17) |= 0x80000u;
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

            *(this + 64) = v52;
            goto LABEL_262;
          }
        }

        else
        {
          switch(v22)
          {
            case 0x132:
              *(this + 17) |= 0x10000u;
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

              *(this + 61) = v56;
              goto LABEL_262;
            case 0x133:
              *(this + 17) |= 0x20000u;
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

              *(this + 62) = v58;
              goto LABEL_262;
            case 0x191:
              *(this + 17) |= 0x400u;
              v33 = *(a2 + 1);
              v2 = *(a2 + 2);
              v34 = *a2;
              if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v2)
              {
                v107 = 0;
                v108 = 0;
                v37 = 0;
                if (v2 <= v33)
                {
                  v2 = *(a2 + 1);
                }

                v109 = v2 - v33;
                v110 = (v34 + v33);
                v111 = v33 + 1;
                while (1)
                {
                  if (!v109)
                  {
                    LODWORD(v37) = 0;
                    *(a2 + 24) = 1;
                    goto LABEL_233;
                  }

                  v112 = v111;
                  v113 = *v110;
                  *(a2 + 1) = v112;
                  v37 |= (v113 & 0x7F) << v107;
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
                    LODWORD(v37) = 0;
                    goto LABEL_232;
                  }
                }

                if (*(a2 + 24))
                {
                  LODWORD(v37) = 0;
                }

LABEL_232:
                v2 = v112;
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
                  v2 = v39;
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
                    LODWORD(v37) = 0;
                    break;
                  }
                }
              }

LABEL_233:
              *(this + 13) = v37;
              goto LABEL_262;
          }
        }
      }

      else
      {
        if (v22 <= 404)
        {
          if (v22 == 402)
          {
            *(this + 17) |= 0x100u;
            v61 = *(a2 + 1);
            v2 = *(a2 + 2);
            v62 = *a2;
            if (v61 > 0xFFFFFFFFFFFFFFF5 || v61 + 10 > v2)
            {
              v114 = 0;
              v115 = 0;
              v65 = 0;
              if (v2 <= v61)
              {
                v2 = *(a2 + 1);
              }

              v116 = v2 - v61;
              v117 = (v62 + v61);
              v118 = v61 + 1;
              while (1)
              {
                if (!v116)
                {
                  LODWORD(v65) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_237;
                }

                v119 = v118;
                v120 = *v117;
                *(a2 + 1) = v119;
                v65 |= (v120 & 0x7F) << v114;
                if ((v120 & 0x80) == 0)
                {
                  break;
                }

                v114 += 7;
                --v116;
                ++v117;
                v118 = v119 + 1;
                v14 = v115++ > 8;
                if (v14)
                {
                  LODWORD(v65) = 0;
                  goto LABEL_236;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v65) = 0;
              }

LABEL_236:
              v2 = v119;
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
                v2 = v67;
                *(a2 + 1) = v67;
                v68 = *v66++;
                v65 |= (v68 & 0x7F) << v63;
                if ((v68 & 0x80) == 0)
                {
                  break;
                }

                v63 += 7;
                ++v67;
                v14 = v64++ > 8;
                if (v14)
                {
                  LODWORD(v65) = 0;
                  break;
                }
              }
            }

LABEL_237:
            *(this + 11) = v65;
          }

          else if (v22 == 403)
          {
            *(this + 17) |= 0x20u;
            v89 = *(a2 + 1);
            v2 = *(a2 + 2);
            v90 = *a2;
            if (v89 > 0xFFFFFFFFFFFFFFF5 || v89 + 10 > v2)
            {
              v149 = 0;
              v150 = 0;
              v93 = 0;
              if (v2 <= v89)
              {
                v2 = *(a2 + 1);
              }

              v151 = v2 - v89;
              v152 = (v90 + v89);
              v153 = v89 + 1;
              while (1)
              {
                if (!v151)
                {
                  LODWORD(v93) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_257;
                }

                v154 = v153;
                v155 = *v152;
                *(a2 + 1) = v154;
                v93 |= (v155 & 0x7F) << v149;
                if ((v155 & 0x80) == 0)
                {
                  break;
                }

                v149 += 7;
                --v151;
                ++v152;
                v153 = v154 + 1;
                v14 = v150++ > 8;
                if (v14)
                {
                  LODWORD(v93) = 0;
                  goto LABEL_256;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v93) = 0;
              }

LABEL_256:
              v2 = v154;
            }

            else
            {
              v91 = 0;
              v92 = 0;
              v93 = 0;
              v94 = (v90 + v89);
              v95 = v89 + 1;
              while (1)
              {
                v2 = v95;
                *(a2 + 1) = v95;
                v96 = *v94++;
                v93 |= (v96 & 0x7F) << v91;
                if ((v96 & 0x80) == 0)
                {
                  break;
                }

                v91 += 7;
                ++v95;
                v14 = v92++ > 8;
                if (v14)
                {
                  LODWORD(v93) = 0;
                  break;
                }
              }
            }

LABEL_257:
            *(this + 8) = v93;
          }

          else
          {
            *(this + 17) |= 0x10u;
            v23 = *(a2 + 1);
            v2 = *(a2 + 2);
            v24 = *a2;
            if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
            {
              v128 = 0;
              v129 = 0;
              v27 = 0;
              if (v2 <= v23)
              {
                v2 = *(a2 + 1);
              }

              v130 = v2 - v23;
              v131 = (v24 + v23);
              v132 = v23 + 1;
              while (1)
              {
                if (!v130)
                {
                  LODWORD(v27) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_245;
                }

                v133 = v132;
                v134 = *v131;
                *(a2 + 1) = v133;
                v27 |= (v134 & 0x7F) << v128;
                if ((v134 & 0x80) == 0)
                {
                  break;
                }

                v128 += 7;
                --v130;
                ++v131;
                v132 = v133 + 1;
                v14 = v129++ > 8;
                if (v14)
                {
                  LODWORD(v27) = 0;
                  goto LABEL_244;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v27) = 0;
              }

LABEL_244:
              v2 = v133;
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

LABEL_245:
            *(this + 7) = v27;
          }

          goto LABEL_262;
        }

        switch(v22)
        {
          case 0x195:
            *(this + 17) |= 0x200u;
            v69 = *(a2 + 1);
            v2 = *(a2 + 2);
            v70 = *a2;
            if (v69 > 0xFFFFFFFFFFFFFFF5 || v69 + 10 > v2)
            {
              v121 = 0;
              v122 = 0;
              v73 = 0;
              if (v2 <= v69)
              {
                v2 = *(a2 + 1);
              }

              v123 = v2 - v69;
              v124 = (v70 + v69);
              v125 = v69 + 1;
              while (1)
              {
                if (!v123)
                {
                  LODWORD(v73) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_241;
                }

                v126 = v125;
                v127 = *v124;
                *(a2 + 1) = v126;
                v73 |= (v127 & 0x7F) << v121;
                if ((v127 & 0x80) == 0)
                {
                  break;
                }

                v121 += 7;
                --v123;
                ++v124;
                v125 = v126 + 1;
                v14 = v122++ > 8;
                if (v14)
                {
                  LODWORD(v73) = 0;
                  goto LABEL_240;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v73) = 0;
              }

LABEL_240:
              v2 = v126;
            }

            else
            {
              v71 = 0;
              v72 = 0;
              v73 = 0;
              v74 = (v70 + v69);
              v75 = v69 + 1;
              while (1)
              {
                v2 = v75;
                *(a2 + 1) = v75;
                v76 = *v74++;
                v73 |= (v76 & 0x7F) << v71;
                if ((v76 & 0x80) == 0)
                {
                  break;
                }

                v71 += 7;
                ++v75;
                v14 = v72++ > 8;
                if (v14)
                {
                  LODWORD(v73) = 0;
                  break;
                }
              }
            }

LABEL_241:
            *(this + 12) = v73;
            goto LABEL_262;
          case 0x196:
            *(this + 17) |= 0x40u;
            v97 = *(a2 + 1);
            v2 = *(a2 + 2);
            v98 = *a2;
            if (v97 > 0xFFFFFFFFFFFFFFF5 || v97 + 10 > v2)
            {
              v156 = 0;
              v157 = 0;
              v101 = 0;
              if (v2 <= v97)
              {
                v2 = *(a2 + 1);
              }

              v158 = v2 - v97;
              v159 = (v98 + v97);
              v160 = v97 + 1;
              while (1)
              {
                if (!v158)
                {
                  LODWORD(v101) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_261;
                }

                v161 = v160;
                v162 = *v159;
                *(a2 + 1) = v161;
                v101 |= (v162 & 0x7F) << v156;
                if ((v162 & 0x80) == 0)
                {
                  break;
                }

                v156 += 7;
                --v158;
                ++v159;
                v160 = v161 + 1;
                v14 = v157++ > 8;
                if (v14)
                {
                  LODWORD(v101) = 0;
                  goto LABEL_260;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v101) = 0;
              }

LABEL_260:
              v2 = v161;
            }

            else
            {
              v99 = 0;
              v100 = 0;
              v101 = 0;
              v102 = (v98 + v97);
              v103 = v97 + 1;
              while (1)
              {
                v2 = v103;
                *(a2 + 1) = v103;
                v104 = *v102++;
                v101 |= (v104 & 0x7F) << v99;
                if ((v104 & 0x80) == 0)
                {
                  break;
                }

                v99 += 7;
                ++v103;
                v14 = v100++ > 8;
                if (v14)
                {
                  LODWORD(v101) = 0;
                  break;
                }
              }
            }

LABEL_261:
            *(this + 9) = v101;
            goto LABEL_262;
          case 0x197:
            *(this + 17) |= 0x80u;
            v43 = *(a2 + 1);
            v2 = *(a2 + 2);
            v44 = *a2;
            if (v43 > 0xFFFFFFFFFFFFFFF5 || v43 + 10 > v2)
            {
              v135 = 0;
              v136 = 0;
              v47 = 0;
              if (v2 <= v43)
              {
                v2 = *(a2 + 1);
              }

              v137 = v2 - v43;
              v138 = (v44 + v43);
              v139 = v43 + 1;
              while (1)
              {
                if (!v137)
                {
                  LODWORD(v47) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_249;
                }

                v140 = v139;
                v141 = *v138;
                *(a2 + 1) = v140;
                v47 |= (v141 & 0x7F) << v135;
                if ((v141 & 0x80) == 0)
                {
                  break;
                }

                v135 += 7;
                --v137;
                ++v138;
                v139 = v140 + 1;
                v14 = v136++ > 8;
                if (v14)
                {
                  LODWORD(v47) = 0;
                  goto LABEL_248;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v47) = 0;
              }

LABEL_248:
              v2 = v140;
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

LABEL_249:
            *(this + 10) = v47;
            goto LABEL_262;
        }
      }

      if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
      {
        v163 = 0;
        return v163 & 1;
      }

      v2 = *(a2 + 1);
LABEL_262:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_266:
  v163 = v4 ^ 1;
  return v163 & 1;
}

uint64_t CMMsl::KappaHighSpeedCrashResult::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 68);
  if ((v4 & 4) != 0)
  {
    this = PB::Writer::write(a2, *(this + 20), 1u);
    v4 = *(v3 + 68);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
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
  v4 = *(v3 + 68);
  if ((v4 & 8) == 0)
  {
LABEL_4:
    if ((v4 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = PB::Writer::write(a2, *(v3 + 24), 3u);
  v4 = *(v3 + 68);
  if ((v4 & 1) == 0)
  {
LABEL_5:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = PB::Writer::writeVarInt(a2, *(v3 + 8), 0x65u);
  v4 = *(v3 + 68);
  if ((v4 & 0x800) == 0)
  {
LABEL_6:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = PB::Writer::write(a2, *(v3 + 56), 0x66u);
  v4 = *(v3 + 68);
  if ((v4 & 0x1000) == 0)
  {
LABEL_7:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = PB::Writer::write(a2, *(v3 + 57), 0x67u);
  v4 = *(v3 + 68);
  if ((v4 & 0x2000) == 0)
  {
LABEL_8:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = PB::Writer::write(a2, *(v3 + 58), 0xC9u);
  v4 = *(v3 + 68);
  if ((v4 & 0x100000) == 0)
  {
LABEL_9:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = PB::Writer::write(a2, *(v3 + 65), 0x12Du);
  v4 = *(v3 + 68);
  if ((v4 & 0x40000) == 0)
  {
LABEL_10:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = PB::Writer::write(a2, *(v3 + 63), 0x12Eu);
  v4 = *(v3 + 68);
  if ((v4 & 0x8000) == 0)
  {
LABEL_11:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = PB::Writer::write(a2, *(v3 + 60), 0x12Fu);
  v4 = *(v3 + 68);
  if ((v4 & 0x4000) == 0)
  {
LABEL_12:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = PB::Writer::write(a2, *(v3 + 59), 0x130u);
  v4 = *(v3 + 68);
  if ((v4 & 0x80000) == 0)
  {
LABEL_13:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = PB::Writer::write(a2, *(v3 + 64), 0x131u);
  v4 = *(v3 + 68);
  if ((v4 & 0x10000) == 0)
  {
LABEL_14:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = PB::Writer::write(a2, *(v3 + 61), 0x132u);
  v4 = *(v3 + 68);
  if ((v4 & 0x20000) == 0)
  {
LABEL_15:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = PB::Writer::write(a2, *(v3 + 62), 0x133u);
  v4 = *(v3 + 68);
  if ((v4 & 0x400) == 0)
  {
LABEL_16:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = PB::Writer::writeVarInt(a2, *(v3 + 52), 0x191u);
  v4 = *(v3 + 68);
  if ((v4 & 0x100) == 0)
  {
LABEL_17:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = PB::Writer::writeVarInt(a2, *(v3 + 44), 0x192u);
  v4 = *(v3 + 68);
  if ((v4 & 0x20) == 0)
  {
LABEL_18:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_40;
  }

LABEL_39:
  this = PB::Writer::writeVarInt(a2, *(v3 + 32), 0x193u);
  v4 = *(v3 + 68);
  if ((v4 & 0x10) == 0)
  {
LABEL_19:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_41;
  }

LABEL_40:
  this = PB::Writer::writeVarInt(a2, *(v3 + 28), 0x194u);
  v4 = *(v3 + 68);
  if ((v4 & 0x200) == 0)
  {
LABEL_20:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_21;
    }

LABEL_42:
    this = PB::Writer::writeVarInt(a2, *(v3 + 36), 0x196u);
    if ((*(v3 + 68) & 0x80) == 0)
    {
      return this;
    }

    goto LABEL_43;
  }

LABEL_41:
  this = PB::Writer::writeVarInt(a2, *(v3 + 48), 0x195u);
  v4 = *(v3 + 68);
  if ((v4 & 0x40) != 0)
  {
    goto LABEL_42;
  }

LABEL_21:
  if ((v4 & 0x80) == 0)
  {
    return this;
  }

LABEL_43:
  v5 = *(v3 + 40);

  return PB::Writer::writeVarInt(a2, v5, 0x197u);
}

uint64_t CMMsl::KappaHighSpeedCrashResult::hash_value(CMMsl::KappaHighSpeedCrashResult *this)
{
  v1 = *(this + 17);
  if ((v1 & 4) == 0)
  {
    v2 = 0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_25:
    v4 = 0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_6;
    }

LABEL_26:
    v6 = 0;
    if (v1)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

  v20 = *(this + 5);
  v2 = LODWORD(v20);
  if (v20 == 0.0)
  {
    v2 = 0;
  }

  if ((v1 & 2) == 0)
  {
    goto LABEL_25;
  }

LABEL_3:
  v3 = *(this + 4);
  v4 = LODWORD(v3);
  if (v3 == 0.0)
  {
    v4 = 0;
  }

  if ((v1 & 8) == 0)
  {
    goto LABEL_26;
  }

LABEL_6:
  v5 = *(this + 6);
  v6 = LODWORD(v5);
  if (v5 == 0.0)
  {
    v6 = 0;
  }

  if (v1)
  {
LABEL_9:
    v7 = *(this + 1);
    if ((v1 & 0x800) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  v7 = 0;
  if ((v1 & 0x800) != 0)
  {
LABEL_10:
    v8 = *(this + 56);
    if ((v1 & 0x1000) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  v8 = 0;
  if ((v1 & 0x1000) != 0)
  {
LABEL_11:
    v9 = *(this + 57);
    if ((v1 & 0x2000) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  v9 = 0;
  if ((v1 & 0x2000) != 0)
  {
LABEL_12:
    v10 = *(this + 58);
    if ((v1 & 0x100000) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  v10 = 0;
  if ((v1 & 0x100000) != 0)
  {
LABEL_13:
    v11 = *(this + 65);
    if ((v1 & 0x40000) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  v11 = 0;
  if ((v1 & 0x40000) != 0)
  {
LABEL_14:
    v12 = *(this + 63);
    if ((v1 & 0x8000) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  v12 = 0;
  if ((v1 & 0x8000) != 0)
  {
LABEL_15:
    v13 = *(this + 60);
    if ((v1 & 0x4000) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_33:
  v13 = 0;
  if ((v1 & 0x4000) != 0)
  {
LABEL_16:
    v14 = *(this + 59);
    if ((v1 & 0x80000) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_35;
  }

LABEL_34:
  v14 = 0;
  if ((v1 & 0x80000) != 0)
  {
LABEL_17:
    v15 = *(this + 64);
    if ((v1 & 0x10000) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_36;
  }

LABEL_35:
  v15 = 0;
  if ((v1 & 0x10000) != 0)
  {
LABEL_18:
    v16 = *(this + 61);
    if ((v1 & 0x20000) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_37;
  }

LABEL_36:
  v16 = 0;
  if ((v1 & 0x20000) != 0)
  {
LABEL_19:
    v17 = *(this + 62);
    if ((v1 & 0x400) != 0)
    {
      goto LABEL_20;
    }

LABEL_38:
    v18 = 0;
    if ((v1 & 0x100) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_39;
  }

LABEL_37:
  v17 = 0;
  if ((v1 & 0x400) == 0)
  {
    goto LABEL_38;
  }

LABEL_20:
  v18 = *(this + 13);
  if ((v1 & 0x100) != 0)
  {
LABEL_21:
    v19 = *(this + 11);
    goto LABEL_40;
  }

LABEL_39:
  v19 = 0;
LABEL_40:
  if ((v1 & 0x20) != 0)
  {
    v21 = *(this + 8);
    if ((v1 & 0x10) != 0)
    {
LABEL_42:
      v22 = *(this + 7);
      if ((v1 & 0x200) != 0)
      {
        goto LABEL_43;
      }

      goto LABEL_48;
    }
  }

  else
  {
    v21 = 0;
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_42;
    }
  }

  v22 = 0;
  if ((v1 & 0x200) != 0)
  {
LABEL_43:
    v23 = *(this + 12);
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_44;
    }

LABEL_49:
    v24 = 0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_45;
    }

LABEL_50:
    v25 = 0;
    return v4 ^ v2 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25;
  }

LABEL_48:
  v23 = 0;
  if ((v1 & 0x40) == 0)
  {
    goto LABEL_49;
  }

LABEL_44:
  v24 = *(this + 9);
  if ((v1 & 0x80) == 0)
  {
    goto LABEL_50;
  }

LABEL_45:
  v25 = *(this + 10);
  return v4 ^ v2 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25;
}

void CMMsl::KappaLackOfMotionResult::~KappaLackOfMotionResult(CMMsl::KappaLackOfMotionResult *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::KappaLackOfMotionResult::KappaLackOfMotionResult(uint64_t this, const CMMsl::KappaLackOfMotionResult *a2)
{
  *this = off_10041F768;
  *(this + 92) = 0;
  v2 = *(a2 + 23);
  if ((v2 & 0x200) != 0)
  {
    v4 = *(a2 + 15);
    v3 = 512;
    *(this + 92) = 512;
    *(this + 60) = v4;
    v2 = *(a2 + 23);
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x4000) != 0)
  {
LABEL_5:
    v5 = *(a2 + 20);
    v3 |= 0x4000u;
    *(this + 92) = v3;
    *(this + 80) = v5;
    v2 = *(a2 + 23);
  }

LABEL_6:
  if ((v2 & 0x400) != 0)
  {
    v6 = *(a2 + 16);
    v3 |= 0x400u;
    *(this + 92) = v3;
    *(this + 64) = v6;
    v2 = *(a2 + 23);
    if ((v2 & 0x8000) == 0)
    {
LABEL_8:
      if ((v2 & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_26;
    }
  }

  else if ((v2 & 0x8000) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 21);
  v3 |= 0x8000u;
  *(this + 92) = v3;
  *(this + 84) = v7;
  v2 = *(a2 + 23);
  if ((v2 & 4) == 0)
  {
LABEL_9:
    if ((v2 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  v8 = *(a2 + 3);
  v3 |= 4u;
  *(this + 92) = v3;
  *(this + 24) = v8;
  v2 = *(a2 + 23);
  if ((v2 & 8) == 0)
  {
LABEL_10:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  v9 = *(a2 + 4);
  v3 |= 8u;
  *(this + 92) = v3;
  *(this + 32) = v9;
  v2 = *(a2 + 23);
  if ((v2 & 0x2000) == 0)
  {
LABEL_11:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  v10 = *(a2 + 19);
  v3 |= 0x2000u;
  *(this + 92) = v3;
  *(this + 76) = v10;
  v2 = *(a2 + 23);
  if ((v2 & 0x100) == 0)
  {
LABEL_12:
    if ((v2 & 0x40000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  v11 = *(a2 + 14);
  v3 |= 0x100u;
  *(this + 92) = v3;
  *(this + 56) = v11;
  v2 = *(a2 + 23);
  if ((v2 & 0x40000) == 0)
  {
LABEL_13:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  v12 = *(a2 + 90);
  v3 |= 0x40000u;
  *(this + 92) = v3;
  *(this + 90) = v12;
  v2 = *(a2 + 23);
  if ((v2 & 0x20000) == 0)
  {
LABEL_14:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:
  v13 = *(a2 + 89);
  v3 |= 0x20000u;
  *(this + 92) = v3;
  *(this + 89) = v13;
  v2 = *(a2 + 23);
  if ((v2 & 0x1000) == 0)
  {
LABEL_15:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_32:
  v14 = *(a2 + 18);
  v3 |= 0x1000u;
  *(this + 92) = v3;
  *(this + 72) = v14;
  v2 = *(a2 + 23);
  if ((v2 & 0x800) == 0)
  {
LABEL_16:
    if ((v2 & 2) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_34;
  }

LABEL_33:
  v15 = *(a2 + 17);
  v3 |= 0x800u;
  *(this + 92) = v3;
  *(this + 68) = v15;
  v2 = *(a2 + 23);
  if ((v2 & 2) == 0)
  {
LABEL_17:
    if ((v2 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_35;
  }

LABEL_34:
  v16 = *(a2 + 2);
  v3 |= 2u;
  *(this + 92) = v3;
  *(this + 16) = v16;
  v2 = *(a2 + 23);
  if ((v2 & 1) == 0)
  {
LABEL_18:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_36;
  }

LABEL_35:
  v17 = *(a2 + 1);
  v3 |= 1u;
  *(this + 92) = v3;
  *(this + 8) = v17;
  v2 = *(a2 + 23);
  if ((v2 & 0x10) == 0)
  {
LABEL_19:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_37;
  }

LABEL_36:
  v18 = *(a2 + 10);
  v3 |= 0x10u;
  *(this + 92) = v3;
  *(this + 40) = v18;
  v2 = *(a2 + 23);
  if ((v2 & 0x40) == 0)
  {
LABEL_20:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_38;
  }

LABEL_37:
  v19 = *(a2 + 12);
  v3 |= 0x40u;
  *(this + 92) = v3;
  *(this + 48) = v19;
  v2 = *(a2 + 23);
  if ((v2 & 0x80) == 0)
  {
LABEL_21:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_39;
  }

LABEL_38:
  v20 = *(a2 + 13);
  v3 |= 0x80u;
  *(this + 92) = v3;
  *(this + 52) = v20;
  v2 = *(a2 + 23);
  if ((v2 & 0x20) == 0)
  {
LABEL_22:
    if ((v2 & 0x10000) == 0)
    {
      return this;
    }

LABEL_40:
    v22 = *(a2 + 88);
    *(this + 92) = v3 | 0x10000;
    *(this + 88) = v22;
    return this;
  }

LABEL_39:
  v21 = *(a2 + 11);
  v3 |= 0x20u;
  *(this + 92) = v3;
  *(this + 44) = v21;
  if ((*(a2 + 23) & 0x10000) != 0)
  {
    goto LABEL_40;
  }

  return this;
}

CMMsl *CMMsl::KappaLackOfMotionResult::operator=(CMMsl *a1, const CMMsl::KappaLackOfMotionResult *a2)
{
  if (a1 != a2)
  {
    CMMsl::KappaLackOfMotionResult::KappaLackOfMotionResult(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::KappaLackOfMotionResult *a2, CMMsl::KappaLackOfMotionResult *a3)
{
  v3 = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = v3;
  v4 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v4;
  v5 = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v5;
  v6 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v6;
  v7 = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v7;
  v8 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v8;
  v9 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v9;
  LODWORD(v9) = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v9;
  LODWORD(v9) = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v9;
  LOBYTE(v9) = *(this + 90);
  *(this + 90) = *(a2 + 90);
  *(a2 + 90) = v9;
  LOBYTE(v9) = *(this + 89);
  *(this + 89) = *(a2 + 89);
  *(a2 + 89) = v9;
  LODWORD(v9) = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v9;
  LODWORD(v9) = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v9;
  v10 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v10;
  v11 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v11;
  v12 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v12;
  v13 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v13;
  v14 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v14;
  result = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = result;
  LOBYTE(v11) = *(this + 88);
  *(this + 88) = *(a2 + 88);
  *(a2 + 88) = v11;
  return result;
}

float CMMsl::KappaLackOfMotionResult::KappaLackOfMotionResult(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041F768;
  *(a1 + 92) = *(a2 + 92);
  *(a2 + 92) = 0;
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 90) = *(a2 + 90);
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  result = *(a2 + 44);
  *(a1 + 44) = result;
  *(a1 + 88) = *(a2 + 88);
  return result;
}

CMMsl *CMMsl::KappaLackOfMotionResult::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::KappaLackOfMotionResult::KappaLackOfMotionResult(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::KappaLackOfMotionResult::formatText(CMMsl::KappaLackOfMotionResult *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 23);
  if (v5)
  {
    PB::TextFormatter::format(a2, "gpsDeltaTimestamp", *(this + 1));
    v5 = *(this + 23);
    if ((v5 & 0x10) == 0)
    {
LABEL_3:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
    }
  }

  else if ((v5 & 0x10) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "gpsDeltaTimestampSeconds", *(this + 10));
  v5 = *(this + 23);
  if ((v5 & 0x20) == 0)
  {
LABEL_4:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(a2, "gpsIsRealSample", *(this + 11));
  v5 = *(this + 23);
  if ((v5 & 0x40) == 0)
  {
LABEL_5:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_27:
  PB::TextFormatter::format(a2, "gpsSpeedMetersPerSecond", *(this + 12));
  v5 = *(this + 23);
  if ((v5 & 0x80) == 0)
  {
LABEL_6:
    if ((v5 & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(a2, "gpsSpeedMilesPerHour", *(this + 13));
  v5 = *(this + 23);
  if ((v5 & 2) == 0)
  {
LABEL_7:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_29:
  PB::TextFormatter::format(a2, "gpsTimestamp", *(this + 2));
  v5 = *(this + 23);
  if ((v5 & 0x10000) == 0)
  {
LABEL_8:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_30:
  PB::TextFormatter::format(a2, "loggedAtEpoch", *(this + 88));
  v5 = *(this + 23);
  if ((v5 & 0x100) == 0)
  {
LABEL_9:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  PB::TextFormatter::format(a2, "movingGpsCount", *(this + 14));
  v5 = *(this + 23);
  if ((v5 & 0x20000) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_33;
  }

LABEL_32:
  PB::TextFormatter::format(a2, "movingGpsCountResetRequired", *(this + 89));
  v5 = *(this + 23);
  if ((v5 & 0x200) == 0)
  {
LABEL_11:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(a2, "movingSpeedMetersPerSecondThreshold", *(this + 15));
  v5 = *(this + 23);
  if ((v5 & 0x400) == 0)
  {
LABEL_12:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_35;
  }

LABEL_34:
  PB::TextFormatter::format(a2, "movingSpeedMetersPerSecondThresholdFromSydneyB", *(this + 16));
  v5 = *(this + 23);
  if ((v5 & 0x800) == 0)
  {
LABEL_13:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(a2, "numLowOrFakeSamplesInHistory", *(this + 17));
  v5 = *(this + 23);
  if ((v5 & 0x1000) == 0)
  {
LABEL_14:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(a2, "numSamplesInHistory", *(this + 18));
  v5 = *(this + 23);
  if ((v5 & 0x2000) == 0)
  {
LABEL_15:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_37:
  PB::TextFormatter::format(a2, "staticGpsCount", *(this + 19));
  v5 = *(this + 23);
  if ((v5 & 0x40000) == 0)
  {
LABEL_16:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(a2, "staticGpsCountResetRequired", *(this + 90));
  v5 = *(this + 23);
  if ((v5 & 0x4000) == 0)
  {
LABEL_17:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(a2, "staticSpeedMetersPerSecondThreshold", *(this + 20));
  v5 = *(this + 23);
  if ((v5 & 0x8000) == 0)
  {
LABEL_18:
    if ((v5 & 4) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_41;
  }

LABEL_40:
  PB::TextFormatter::format(a2, "staticSpeedMetersPerSecondThresholdFromSydneyB", *(this + 21));
  v5 = *(this + 23);
  if ((v5 & 4) == 0)
  {
LABEL_19:
    if ((v5 & 8) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_41:
  PB::TextFormatter::format(a2, "timestamp", *(this + 3));
  if ((*(this + 23) & 8) != 0)
  {
LABEL_20:
    PB::TextFormatter::format(a2, "triggerTimestamp", *(this + 4));
  }

LABEL_21:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::KappaLackOfMotionResult::readFrom(CMMsl::KappaLackOfMotionResult *this, PB::Reader *a2)
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
            goto LABEL_250;
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
      if ((v10 >> 3) <= 105)
      {
        if (v22 <= 100)
        {
          if (v22 > 2)
          {
            if (v22 == 3)
            {
              *(this + 23) |= 0x400u;
              v2 = *(a2 + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
              {
LABEL_131:
                *(a2 + 24) = 1;
                goto LABEL_246;
              }

              *(this + 16) = *(*a2 + v2);
              goto LABEL_205;
            }

            if (v22 == 4)
            {
              *(this + 23) |= 0x8000u;
              v2 = *(a2 + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
              {
                goto LABEL_131;
              }

              *(this + 21) = *(*a2 + v2);
              goto LABEL_205;
            }
          }

          else
          {
            if (v22 == 1)
            {
              *(this + 23) |= 0x200u;
              v2 = *(a2 + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
              {
                goto LABEL_131;
              }

              *(this + 15) = *(*a2 + v2);
              goto LABEL_205;
            }

            if (v22 == 2)
            {
              *(this + 23) |= 0x4000u;
              v2 = *(a2 + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
              {
                goto LABEL_131;
              }

              *(this + 20) = *(*a2 + v2);
              goto LABEL_205;
            }
          }
        }

        else
        {
          if (v22 <= 102)
          {
            if (v22 == 101)
            {
              *(this + 23) |= 4u;
              v75 = *(a2 + 1);
              v2 = *(a2 + 2);
              v76 = *a2;
              if (v75 > 0xFFFFFFFFFFFFFFF5 || v75 + 10 > v2)
              {
                v114 = 0;
                v115 = 0;
                v79 = 0;
                if (v2 <= v75)
                {
                  v2 = *(a2 + 1);
                }

                v116 = v2 - v75;
                v117 = (v76 + v75);
                v118 = v75 + 1;
                while (1)
                {
                  if (!v116)
                  {
                    v79 = 0;
                    *(a2 + 24) = 1;
                    goto LABEL_229;
                  }

                  v119 = v118;
                  v120 = *v117;
                  *(a2 + 1) = v119;
                  v79 |= (v120 & 0x7F) << v114;
                  if ((v120 & 0x80) == 0)
                  {
                    break;
                  }

                  v114 += 7;
                  --v116;
                  ++v117;
                  v118 = v119 + 1;
                  v14 = v115++ > 8;
                  if (v14)
                  {
                    v79 = 0;
                    goto LABEL_228;
                  }
                }

                if (*(a2 + 24))
                {
                  v79 = 0;
                }

LABEL_228:
                v2 = v119;
              }

              else
              {
                v77 = 0;
                v78 = 0;
                v79 = 0;
                v80 = (v76 + v75);
                v81 = v75 + 1;
                while (1)
                {
                  v2 = v81;
                  *(a2 + 1) = v81;
                  v82 = *v80++;
                  v79 |= (v82 & 0x7F) << v77;
                  if ((v82 & 0x80) == 0)
                  {
                    break;
                  }

                  v77 += 7;
                  ++v81;
                  v14 = v78++ > 8;
                  if (v14)
                  {
                    v79 = 0;
                    break;
                  }
                }
              }

LABEL_229:
              *(this + 3) = v79;
            }

            else
            {
              *(this + 23) |= 8u;
              v35 = *(a2 + 1);
              v2 = *(a2 + 2);
              v36 = *a2;
              if (v35 > 0xFFFFFFFFFFFFFFF5 || v35 + 10 > v2)
              {
                v135 = 0;
                v136 = 0;
                v39 = 0;
                if (v2 <= v35)
                {
                  v2 = *(a2 + 1);
                }

                v137 = v2 - v35;
                v138 = (v36 + v35);
                v139 = v35 + 1;
                while (1)
                {
                  if (!v137)
                  {
                    v39 = 0;
                    *(a2 + 24) = 1;
                    goto LABEL_241;
                  }

                  v140 = v139;
                  v141 = *v138;
                  *(a2 + 1) = v140;
                  v39 |= (v141 & 0x7F) << v135;
                  if ((v141 & 0x80) == 0)
                  {
                    break;
                  }

                  v135 += 7;
                  --v137;
                  ++v138;
                  v139 = v140 + 1;
                  v14 = v136++ > 8;
                  if (v14)
                  {
                    v39 = 0;
                    goto LABEL_240;
                  }
                }

                if (*(a2 + 24))
                {
                  v39 = 0;
                }

LABEL_240:
                v2 = v140;
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
                  v2 = v41;
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
                    v39 = 0;
                    break;
                  }
                }
              }

LABEL_241:
              *(this + 4) = v39;
            }

            goto LABEL_246;
          }

          switch(v22)
          {
            case 'g':
              *(this + 23) |= 0x2000u;
              v59 = *(a2 + 1);
              v2 = *(a2 + 2);
              v60 = *a2;
              if (v59 > 0xFFFFFFFFFFFFFFF5 || v59 + 10 > v2)
              {
                v100 = 0;
                v101 = 0;
                v63 = 0;
                if (v2 <= v59)
                {
                  v2 = *(a2 + 1);
                }

                v102 = v2 - v59;
                v103 = (v60 + v59);
                v104 = v59 + 1;
                while (1)
                {
                  if (!v102)
                  {
                    LODWORD(v63) = 0;
                    *(a2 + 24) = 1;
                    goto LABEL_221;
                  }

                  v105 = v104;
                  v106 = *v103;
                  *(a2 + 1) = v105;
                  v63 |= (v106 & 0x7F) << v100;
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
                    LODWORD(v63) = 0;
                    goto LABEL_220;
                  }
                }

                if (*(a2 + 24))
                {
                  LODWORD(v63) = 0;
                }

LABEL_220:
                v2 = v105;
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
                  v2 = v65;
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
                    LODWORD(v63) = 0;
                    break;
                  }
                }
              }

LABEL_221:
              *(this + 19) = v63;
              goto LABEL_246;
            case 'h':
              *(this + 23) |= 0x100u;
              v51 = *(a2 + 1);
              v2 = *(a2 + 2);
              v52 = *a2;
              if (v51 > 0xFFFFFFFFFFFFFFF5 || v51 + 10 > v2)
              {
                v93 = 0;
                v94 = 0;
                v55 = 0;
                if (v2 <= v51)
                {
                  v2 = *(a2 + 1);
                }

                v95 = v2 - v51;
                v96 = (v52 + v51);
                v97 = v51 + 1;
                while (1)
                {
                  if (!v95)
                  {
                    LODWORD(v55) = 0;
                    *(a2 + 24) = 1;
                    goto LABEL_217;
                  }

                  v98 = v97;
                  v99 = *v96;
                  *(a2 + 1) = v98;
                  v55 |= (v99 & 0x7F) << v93;
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
                    LODWORD(v55) = 0;
                    goto LABEL_216;
                  }
                }

                if (*(a2 + 24))
                {
                  LODWORD(v55) = 0;
                }

LABEL_216:
                v2 = v98;
              }

              else
              {
                v53 = 0;
                v54 = 0;
                v55 = 0;
                v56 = (v52 + v51);
                v57 = v51 + 1;
                while (1)
                {
                  v2 = v57;
                  *(a2 + 1) = v57;
                  v58 = *v56++;
                  v55 |= (v58 & 0x7F) << v53;
                  if ((v58 & 0x80) == 0)
                  {
                    break;
                  }

                  v53 += 7;
                  ++v57;
                  v14 = v54++ > 8;
                  if (v14)
                  {
                    LODWORD(v55) = 0;
                    break;
                  }
                }
              }

LABEL_217:
              *(this + 14) = v55;
              goto LABEL_246;
            case 'i':
              *(this + 23) |= 0x40000u;
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

              *(this + 90) = v32;
              goto LABEL_246;
          }
        }
      }

      else if (v22 > 202)
      {
        if (v22 <= 204)
        {
          if (v22 == 203)
          {
            *(this + 23) |= 0x10u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
              goto LABEL_131;
            }

            *(this + 10) = *(*a2 + v2);
          }

          else
          {
            *(this + 23) |= 0x40u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
              goto LABEL_131;
            }

            *(this + 12) = *(*a2 + v2);
          }

          goto LABEL_205;
        }

        switch(v22)
        {
          case 0xCD:
            *(this + 23) |= 0x80u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
              goto LABEL_131;
            }

            *(this + 13) = *(*a2 + v2);
            goto LABEL_205;
          case 0xCE:
            *(this + 23) |= 0x20u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
              goto LABEL_131;
            }

            *(this + 11) = *(*a2 + v2);
LABEL_205:
            v2 = *(a2 + 1) + 4;
            *(a2 + 1) = v2;
            goto LABEL_246;
          case 0xCF:
            *(this + 23) |= 0x10000u;
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

            *(this + 88) = v34;
            goto LABEL_246;
        }
      }

      else if (v22 <= 107)
      {
        if (v22 == 106)
        {
          *(this + 23) |= 0x20000u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v92 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v91 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v92 = v91 != 0;
          }

          *(this + 89) = v92;
          goto LABEL_246;
        }

        if (v22 == 107)
        {
          *(this + 23) |= 0x1000u;
          v43 = *(a2 + 1);
          v2 = *(a2 + 2);
          v44 = *a2;
          if (v43 > 0xFFFFFFFFFFFFFFF5 || v43 + 10 > v2)
          {
            v142 = 0;
            v143 = 0;
            v47 = 0;
            if (v2 <= v43)
            {
              v2 = *(a2 + 1);
            }

            v144 = v2 - v43;
            v145 = (v44 + v43);
            v146 = v43 + 1;
            while (1)
            {
              if (!v144)
              {
                LODWORD(v47) = 0;
                *(a2 + 24) = 1;
                goto LABEL_245;
              }

              v147 = v146;
              v148 = *v145;
              *(a2 + 1) = v147;
              v47 |= (v148 & 0x7F) << v142;
              if ((v148 & 0x80) == 0)
              {
                break;
              }

              v142 += 7;
              --v144;
              ++v145;
              v146 = v147 + 1;
              v14 = v143++ > 8;
              if (v14)
              {
                LODWORD(v47) = 0;
                goto LABEL_244;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v47) = 0;
            }

LABEL_244:
            v2 = v147;
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

LABEL_245:
          *(this + 18) = v47;
          goto LABEL_246;
        }
      }

      else
      {
        switch(v22)
        {
          case 0x6C:
            *(this + 23) |= 0x800u;
            v83 = *(a2 + 1);
            v2 = *(a2 + 2);
            v84 = *a2;
            if (v83 > 0xFFFFFFFFFFFFFFF5 || v83 + 10 > v2)
            {
              v121 = 0;
              v122 = 0;
              v87 = 0;
              if (v2 <= v83)
              {
                v2 = *(a2 + 1);
              }

              v123 = v2 - v83;
              v124 = (v84 + v83);
              v125 = v83 + 1;
              while (1)
              {
                if (!v123)
                {
                  LODWORD(v87) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_233;
                }

                v126 = v125;
                v127 = *v124;
                *(a2 + 1) = v126;
                v87 |= (v127 & 0x7F) << v121;
                if ((v127 & 0x80) == 0)
                {
                  break;
                }

                v121 += 7;
                --v123;
                ++v124;
                v125 = v126 + 1;
                v14 = v122++ > 8;
                if (v14)
                {
                  LODWORD(v87) = 0;
                  goto LABEL_232;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v87) = 0;
              }

LABEL_232:
              v2 = v126;
            }

            else
            {
              v85 = 0;
              v86 = 0;
              v87 = 0;
              v88 = (v84 + v83);
              v89 = v83 + 1;
              while (1)
              {
                v2 = v89;
                *(a2 + 1) = v89;
                v90 = *v88++;
                v87 |= (v90 & 0x7F) << v85;
                if ((v90 & 0x80) == 0)
                {
                  break;
                }

                v85 += 7;
                ++v89;
                v14 = v86++ > 8;
                if (v14)
                {
                  LODWORD(v87) = 0;
                  break;
                }
              }
            }

LABEL_233:
            *(this + 17) = v87;
            goto LABEL_246;
          case 0xC9:
            *(this + 23) |= 2u;
            v67 = *(a2 + 1);
            v2 = *(a2 + 2);
            v68 = *a2;
            if (v67 > 0xFFFFFFFFFFFFFFF5 || v67 + 10 > v2)
            {
              v107 = 0;
              v108 = 0;
              v71 = 0;
              if (v2 <= v67)
              {
                v2 = *(a2 + 1);
              }

              v109 = v2 - v67;
              v110 = (v68 + v67);
              v111 = v67 + 1;
              while (1)
              {
                if (!v109)
                {
                  v71 = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_225;
                }

                v112 = v111;
                v113 = *v110;
                *(a2 + 1) = v112;
                v71 |= (v113 & 0x7F) << v107;
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
                  v71 = 0;
                  goto LABEL_224;
                }
              }

              if (*(a2 + 24))
              {
                v71 = 0;
              }

LABEL_224:
              v2 = v112;
            }

            else
            {
              v69 = 0;
              v70 = 0;
              v71 = 0;
              v72 = (v68 + v67);
              v73 = v67 + 1;
              while (1)
              {
                v2 = v73;
                *(a2 + 1) = v73;
                v74 = *v72++;
                v71 |= (v74 & 0x7F) << v69;
                if ((v74 & 0x80) == 0)
                {
                  break;
                }

                v69 += 7;
                ++v73;
                v14 = v70++ > 8;
                if (v14)
                {
                  v71 = 0;
                  break;
                }
              }
            }

LABEL_225:
            *(this + 2) = v71;
            goto LABEL_246;
          case 0xCA:
            *(this + 23) |= 1u;
            v23 = *(a2 + 1);
            v2 = *(a2 + 2);
            v24 = *a2;
            if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
            {
              v128 = 0;
              v129 = 0;
              v27 = 0;
              if (v2 <= v23)
              {
                v2 = *(a2 + 1);
              }

              v130 = v2 - v23;
              v131 = (v24 + v23);
              v132 = v23 + 1;
              while (1)
              {
                if (!v130)
                {
                  v27 = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_237;
                }

                v133 = v132;
                v134 = *v131;
                *(a2 + 1) = v133;
                v27 |= (v134 & 0x7F) << v128;
                if ((v134 & 0x80) == 0)
                {
                  break;
                }

                v128 += 7;
                --v130;
                ++v131;
                v132 = v133 + 1;
                v14 = v129++ > 8;
                if (v14)
                {
                  v27 = 0;
                  goto LABEL_236;
                }
              }

              if (*(a2 + 24))
              {
                v27 = 0;
              }

LABEL_236:
              v2 = v133;
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

LABEL_237:
            *(this + 1) = v27;
            goto LABEL_246;
        }
      }

      if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
      {
        v149 = 0;
        return v149 & 1;
      }

      v2 = *(a2 + 1);
LABEL_246:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_250:
  v149 = v4 ^ 1;
  return v149 & 1;
}

uint64_t CMMsl::KappaLackOfMotionResult::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 92);
  if ((v4 & 0x200) != 0)
  {
    this = PB::Writer::write(a2, *(this + 60), 1u);
    v4 = *(v3 + 92);
    if ((v4 & 0x4000) == 0)
    {
LABEL_3:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((v4 & 0x4000) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 80), 2u);
  v4 = *(v3 + 92);
  if ((v4 & 0x400) == 0)
  {
LABEL_4:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = PB::Writer::write(a2, *(v3 + 64), 3u);
  v4 = *(v3 + 92);
  if ((v4 & 0x8000) == 0)
  {
LABEL_5:
    if ((v4 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = PB::Writer::write(a2, *(v3 + 84), 4u);
  v4 = *(v3 + 92);
  if ((v4 & 4) == 0)
  {
LABEL_6:
    if ((v4 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = PB::Writer::writeVarInt(a2, *(v3 + 24), 0x65u);
  v4 = *(v3 + 92);
  if ((v4 & 8) == 0)
  {
LABEL_7:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = PB::Writer::writeVarInt(a2, *(v3 + 32), 0x66u);
  v4 = *(v3 + 92);
  if ((v4 & 0x2000) == 0)
  {
LABEL_8:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = PB::Writer::writeVarInt(a2, *(v3 + 76), 0x67u);
  v4 = *(v3 + 92);
  if ((v4 & 0x100) == 0)
  {
LABEL_9:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = PB::Writer::writeVarInt(a2, *(v3 + 56), 0x68u);
  v4 = *(v3 + 92);
  if ((v4 & 0x40000) == 0)
  {
LABEL_10:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = PB::Writer::write(a2, *(v3 + 90), 0x69u);
  v4 = *(v3 + 92);
  if ((v4 & 0x20000) == 0)
  {
LABEL_11:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = PB::Writer::write(a2, *(v3 + 89), 0x6Au);
  v4 = *(v3 + 92);
  if ((v4 & 0x1000) == 0)
  {
LABEL_12:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = PB::Writer::writeVarInt(a2, *(v3 + 72), 0x6Bu);
  v4 = *(v3 + 92);
  if ((v4 & 0x800) == 0)
  {
LABEL_13:
    if ((v4 & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = PB::Writer::writeVarInt(a2, *(v3 + 68), 0x6Cu);
  v4 = *(v3 + 92);
  if ((v4 & 2) == 0)
  {
LABEL_14:
    if ((v4 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = PB::Writer::writeVarInt(a2, *(v3 + 16), 0xC9u);
  v4 = *(v3 + 92);
  if ((v4 & 1) == 0)
  {
LABEL_15:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = PB::Writer::writeVarInt(a2, *(v3 + 8), 0xCAu);
  v4 = *(v3 + 92);
  if ((v4 & 0x10) == 0)
  {
LABEL_16:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = PB::Writer::write(a2, *(v3 + 40), 0xCBu);
  v4 = *(v3 + 92);
  if ((v4 & 0x40) == 0)
  {
LABEL_17:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = PB::Writer::write(a2, *(v3 + 48), 0xCCu);
  v4 = *(v3 + 92);
  if ((v4 & 0x80) == 0)
  {
LABEL_18:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_19;
    }

LABEL_38:
    this = PB::Writer::write(a2, *(v3 + 44), 0xCEu);
    if ((*(v3 + 92) & 0x10000) == 0)
    {
      return this;
    }

    goto LABEL_39;
  }

LABEL_37:
  this = PB::Writer::write(a2, *(v3 + 52), 0xCDu);
  v4 = *(v3 + 92);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_38;
  }

LABEL_19:
  if ((v4 & 0x10000) == 0)
  {
    return this;
  }

LABEL_39:
  v5 = *(v3 + 88);

  return PB::Writer::write(a2, v5, 0xCFu);
}

uint64_t CMMsl::KappaLackOfMotionResult::hash_value(CMMsl::KappaLackOfMotionResult *this)
{
  v1 = *(this + 23);
  if ((v1 & 0x200) == 0)
  {
    v2 = 0;
    if ((v1 & 0x4000) != 0)
    {
      goto LABEL_3;
    }

LABEL_31:
    v4 = 0;
    if ((v1 & 0x400) != 0)
    {
      goto LABEL_6;
    }

LABEL_32:
    v6 = 0;
    if ((v1 & 0x8000) != 0)
    {
      goto LABEL_9;
    }

LABEL_33:
    v8 = 0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_34;
  }

  v23 = *(this + 15);
  v2 = LODWORD(v23);
  if (v23 == 0.0)
  {
    v2 = 0;
  }

  if ((v1 & 0x4000) == 0)
  {
    goto LABEL_31;
  }

LABEL_3:
  v3 = *(this + 20);
  v4 = LODWORD(v3);
  if (v3 == 0.0)
  {
    v4 = 0;
  }

  if ((v1 & 0x400) == 0)
  {
    goto LABEL_32;
  }

LABEL_6:
  v5 = *(this + 16);
  v6 = LODWORD(v5);
  if (v5 == 0.0)
  {
    v6 = 0;
  }

  if ((v1 & 0x8000) == 0)
  {
    goto LABEL_33;
  }

LABEL_9:
  v7 = *(this + 21);
  v8 = LODWORD(v7);
  if (v7 == 0.0)
  {
    v8 = 0;
  }

  if ((v1 & 4) != 0)
  {
LABEL_12:
    v9 = *(this + 3);
    if ((v1 & 8) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_35;
  }

LABEL_34:
  v9 = 0;
  if ((v1 & 8) != 0)
  {
LABEL_13:
    v10 = *(this + 4);
    if ((v1 & 0x2000) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_35:
  v10 = 0;
  if ((v1 & 0x2000) != 0)
  {
LABEL_14:
    v11 = *(this + 19);
    if ((v1 & 0x100) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

LABEL_36:
  v11 = 0;
  if ((v1 & 0x100) != 0)
  {
LABEL_15:
    v12 = *(this + 14);
    if ((v1 & 0x40000) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_37:
  v12 = 0;
  if ((v1 & 0x40000) != 0)
  {
LABEL_16:
    v13 = *(this + 90);
    if ((v1 & 0x20000) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

LABEL_38:
  v13 = 0;
  if ((v1 & 0x20000) != 0)
  {
LABEL_17:
    v14 = *(this + 89);
    if ((v1 & 0x1000) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_40;
  }

LABEL_39:
  v14 = 0;
  if ((v1 & 0x1000) != 0)
  {
LABEL_18:
    v15 = *(this + 18);
    if ((v1 & 0x800) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_41;
  }

LABEL_40:
  v15 = 0;
  if ((v1 & 0x800) != 0)
  {
LABEL_19:
    v16 = *(this + 17);
    if ((v1 & 2) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_42;
  }

LABEL_41:
  v16 = 0;
  if ((v1 & 2) != 0)
  {
LABEL_20:
    v17 = *(this + 2);
    if (v1)
    {
      goto LABEL_21;
    }

    goto LABEL_43;
  }

LABEL_42:
  v17 = 0;
  if (v1)
  {
LABEL_21:
    v18 = *(this + 1);
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_44;
  }

LABEL_43:
  v18 = 0;
  if ((v1 & 0x10) != 0)
  {
LABEL_22:
    v19 = *(this + 10);
    v20 = LODWORD(v19);
    if (v19 == 0.0)
    {
      v20 = 0;
    }

    if ((v1 & 0x40) != 0)
    {
      goto LABEL_25;
    }

LABEL_45:
    v22 = 0;
    goto LABEL_46;
  }

LABEL_44:
  v20 = 0;
  if ((v1 & 0x40) == 0)
  {
    goto LABEL_45;
  }

LABEL_25:
  v21 = *(this + 12);
  v22 = LODWORD(v21);
  if (v21 == 0.0)
  {
    v22 = 0;
  }

LABEL_46:
  if ((v1 & 0x80) != 0)
  {
    v28 = *(this + 13);
    v24 = LODWORD(v28);
    if (v28 == 0.0)
    {
      v24 = 0;
    }

    if ((v1 & 0x20) != 0)
    {
LABEL_48:
      v25 = *(this + 11);
      v26 = LODWORD(v25);
      if (v25 == 0.0)
      {
        v26 = 0;
      }

      if ((v1 & 0x10000) != 0)
      {
        goto LABEL_51;
      }

LABEL_56:
      v27 = 0;
      return v4 ^ v2 ^ v6 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v20 ^ v22 ^ v24 ^ v26 ^ v27;
    }
  }

  else
  {
    v24 = 0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_48;
    }
  }

  v26 = 0;
  if ((v1 & 0x10000) == 0)
  {
    goto LABEL_56;
  }

LABEL_51:
  v27 = *(this + 88);
  return v4 ^ v2 ^ v6 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v20 ^ v22 ^ v24 ^ v26 ^ v27;
}

void CMMsl::KappaLocalAudioResult::~KappaLocalAudioResult(CMMsl::KappaLocalAudioResult *this)
{
  PB::Base::~Base(this);

  operator delete();
}

float CMMsl::KappaLocalAudioResult::KappaLocalAudioResult(CMMsl::KappaLocalAudioResult *this, const CMMsl::KappaLocalAudioResult *a2)
{
  *this = off_10041F7A0;
  *(this + 172) = 0;
  v2 = *(a2 + 172);
  if ((v2 & 0x20000000) != 0)
  {
    result = *(a2 + 35);
    v3 = 0x20000000;
    *(this + 172) = 0x20000000;
    *(this + 35) = result;
    v2 = *(a2 + 172);
    if ((v2 & 0x8000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x8000000) != 0)
  {
LABEL_5:
    result = *(a2 + 33);
    v3 |= 0x8000000uLL;
    *(this + 172) = v3;
    *(this + 33) = result;
    v2 = *(a2 + 172);
  }

LABEL_6:
  if ((v2 & 0x2000000) != 0)
  {
    result = *(a2 + 31);
    v3 |= 0x2000000uLL;
    *(this + 172) = v3;
    *(this + 31) = result;
    v2 = *(a2 + 172);
    if ((v2 & 0x80000000) == 0)
    {
LABEL_8:
      if ((v2 & 0x100000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_53;
    }
  }

  else if ((v2 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  result = *(a2 + 37);
  v3 |= 0x80000000uLL;
  *(this + 172) = v3;
  *(this + 37) = result;
  v2 = *(a2 + 172);
  if ((v2 & 0x100000) == 0)
  {
LABEL_9:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_54;
  }

LABEL_53:
  v5 = *(a2 + 26);
  v3 |= 0x100000uLL;
  *(this + 172) = v3;
  *(this + 26) = v5;
  v2 = *(a2 + 172);
  if ((v2 & 0x80000) == 0)
  {
LABEL_10:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_55;
  }

LABEL_54:
  v6 = *(a2 + 25);
  v3 |= 0x80000uLL;
  *(this + 172) = v3;
  *(this + 25) = v6;
  v2 = *(a2 + 172);
  if ((v2 & 0x800000) == 0)
  {
LABEL_11:
    if ((v2 & 0x40000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_56;
  }

LABEL_55:
  result = *(a2 + 29);
  v3 |= 0x800000uLL;
  *(this + 172) = v3;
  *(this + 29) = result;
  v2 = *(a2 + 172);
  if ((v2 & 0x40000000) == 0)
  {
LABEL_12:
    if ((v2 & 0x10000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_57;
  }

LABEL_56:
  result = *(a2 + 36);
  v3 |= 0x40000000uLL;
  *(this + 172) = v3;
  *(this + 36) = result;
  v2 = *(a2 + 172);
  if ((v2 & 0x10000000) == 0)
  {
LABEL_13:
    if ((v2 & 0x4000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_58;
  }

LABEL_57:
  result = *(a2 + 34);
  v3 |= 0x10000000uLL;
  *(this + 172) = v3;
  *(this + 34) = result;
  v2 = *(a2 + 172);
  if ((v2 & 0x4000000) == 0)
  {
LABEL_14:
    if ((v2 & 0x100000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_59;
  }

LABEL_58:
  result = *(a2 + 32);
  v3 |= 0x4000000uLL;
  *(this + 172) = v3;
  *(this + 32) = result;
  v2 = *(a2 + 172);
  if ((v2 & 0x100000000) == 0)
  {
LABEL_15:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_60;
  }

LABEL_59:
  result = *(a2 + 38);
  v3 |= &_mh_execute_header;
  *(this + 172) = v3;
  *(this + 38) = result;
  v2 = *(a2 + 172);
  if ((v2 & 0x200000) == 0)
  {
LABEL_16:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_61;
  }

LABEL_60:
  v7 = *(a2 + 27);
  v3 |= 0x200000uLL;
  *(this + 172) = v3;
  *(this + 27) = v7;
  v2 = *(a2 + 172);
  if ((v2 & 0x400000) == 0)
  {
LABEL_17:
    if ((v2 & 0x40000000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_62;
  }

LABEL_61:
  v8 = *(a2 + 28);
  v3 |= 0x400000uLL;
  *(this + 172) = v3;
  *(this + 28) = v8;
  v2 = *(a2 + 172);
  if ((v2 & 0x40000000000) == 0)
  {
LABEL_18:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_63;
  }

LABEL_62:
  v9 = *(a2 + 165);
  v3 |= 0x40000000000uLL;
  *(this + 172) = v3;
  *(this + 165) = v9;
  v2 = *(a2 + 172);
  if ((v2 & 0x10000) == 0)
  {
LABEL_19:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_64;
  }

LABEL_63:
  result = *(a2 + 22);
  v3 |= 0x10000uLL;
  *(this + 172) = v3;
  *(this + 22) = result;
  v2 = *(a2 + 172);
  if ((v2 & 0x4000) == 0)
  {
LABEL_20:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_65;
  }

LABEL_64:
  result = *(a2 + 20);
  v3 |= 0x4000uLL;
  *(this + 172) = v3;
  *(this + 20) = result;
  v2 = *(a2 + 172);
  if ((v2 & 0x1000) == 0)
  {
LABEL_21:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_66;
  }

LABEL_65:
  result = *(a2 + 18);
  v3 |= 0x1000uLL;
  *(this + 172) = v3;
  *(this + 18) = result;
  v2 = *(a2 + 172);
  if ((v2 & 0x20000) == 0)
  {
LABEL_22:
    if ((v2 & 0x10000000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_67;
  }

LABEL_66:
  result = *(a2 + 23);
  v3 |= 0x20000uLL;
  *(this + 172) = v3;
  *(this + 23) = result;
  v2 = *(a2 + 172);
  if ((v2 & 0x10000000000) == 0)
  {
LABEL_23:
    if ((v2 & 0x200000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_68;
  }

LABEL_67:
  v10 = *(a2 + 163);
  v3 |= 0x10000000000uLL;
  *(this + 172) = v3;
  *(this + 163) = v10;
  v2 = *(a2 + 172);
  if ((v2 & 0x200000000) == 0)
  {
LABEL_24:
    if ((v2 & 0x100000000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_69;
  }

LABEL_68:
  v11 = *(a2 + 156);
  v3 |= 0x200000000uLL;
  *(this + 172) = v3;
  *(this + 156) = v11;
  v2 = *(a2 + 172);
  if ((v2 & 0x100000000000) == 0)
  {
LABEL_25:
    if ((v2 & 0x800000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_70;
  }

LABEL_69:
  v12 = *(a2 + 167);
  v3 |= 0x100000000000uLL;
  *(this + 172) = v3;
  *(this + 167) = v12;
  v2 = *(a2 + 172);
  if ((v2 & 0x800000000) == 0)
  {
LABEL_26:
    if ((v2 & 0x4000000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_71;
  }

LABEL_70:
  v13 = *(a2 + 158);
  v3 |= 0x800000000uLL;
  *(this + 172) = v3;
  *(this + 158) = v13;
  v2 = *(a2 + 172);
  if ((v2 & 0x4000000000) == 0)
  {
LABEL_27:
    if ((v2 & 0x80000000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_72;
  }

LABEL_71:
  v14 = *(a2 + 161);
  v3 |= 0x4000000000uLL;
  *(this + 172) = v3;
  *(this + 161) = v14;
  v2 = *(a2 + 172);
  if ((v2 & 0x80000000000) == 0)
  {
LABEL_28:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_73;
  }

LABEL_72:
  v15 = *(a2 + 166);
  v3 |= 0x80000000000uLL;
  *(this + 172) = v3;
  *(this + 166) = v15;
  v2 = *(a2 + 172);
  if ((v2 & 0x8000) == 0)
  {
LABEL_29:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_74;
  }

LABEL_73:
  result = *(a2 + 21);
  v3 |= 0x8000uLL;
  *(this + 172) = v3;
  *(this + 21) = result;
  v2 = *(a2 + 172);
  if ((v2 & 0x2000) == 0)
  {
LABEL_30:
    if ((v2 & 0x40000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_75;
  }

LABEL_74:
  result = *(a2 + 19);
  v3 |= 0x2000uLL;
  *(this + 172) = v3;
  *(this + 19) = result;
  v2 = *(a2 + 172);
  if ((v2 & 0x40000) == 0)
  {
LABEL_31:
    if ((v2 & 0x20000000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_76;
  }

LABEL_75:
  result = *(a2 + 24);
  v3 |= 0x40000uLL;
  *(this + 172) = v3;
  *(this + 24) = result;
  v2 = *(a2 + 172);
  if ((v2 & 0x20000000000) == 0)
  {
LABEL_32:
    if ((v2 & 0x400000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_77;
  }

LABEL_76:
  v16 = *(a2 + 164);
  v3 |= 0x20000000000uLL;
  *(this + 172) = v3;
  *(this + 164) = v16;
  v2 = *(a2 + 172);
  if ((v2 & 0x400000000) == 0)
  {
LABEL_33:
    if ((v2 & 0x200000000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_78;
  }

LABEL_77:
  v17 = *(a2 + 157);
  v3 |= 0x400000000uLL;
  *(this + 172) = v3;
  *(this + 157) = v17;
  v2 = *(a2 + 172);
  if ((v2 & 0x200000000000) == 0)
  {
LABEL_34:
    if ((v2 & 0x1000000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_79;
  }

LABEL_78:
  v18 = *(a2 + 168);
  v3 |= 0x200000000000uLL;
  *(this + 172) = v3;
  *(this + 168) = v18;
  v2 = *(a2 + 172);
  if ((v2 & 0x1000000000) == 0)
  {
LABEL_35:
    if ((v2 & 0x8000000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_80;
  }

LABEL_79:
  v19 = *(a2 + 159);
  v3 |= 0x1000000000uLL;
  *(this + 172) = v3;
  *(this + 159) = v19;
  v2 = *(a2 + 172);
  if ((v2 & 0x8000000000) == 0)
  {
LABEL_36:
    if ((v2 & 0x2000000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_81;
  }

LABEL_80:
  v20 = *(a2 + 162);
  v3 |= 0x8000000000uLL;
  *(this + 172) = v3;
  *(this + 162) = v20;
  v2 = *(a2 + 172);
  if ((v2 & 0x2000000000) == 0)
  {
LABEL_37:
    if ((v2 & 0x1000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_82;
  }

LABEL_81:
  v21 = *(a2 + 160);
  v3 |= 0x2000000000uLL;
  *(this + 172) = v3;
  *(this + 160) = v21;
  v2 = *(a2 + 172);
  if ((v2 & 0x1000000) == 0)
  {
LABEL_38:
    if ((v2 & 4) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_83;
  }

LABEL_82:
  v22 = *(a2 + 30);
  v3 |= 0x1000000uLL;
  *(this + 172) = v3;
  *(this + 30) = v22;
  v2 = *(a2 + 172);
  if ((v2 & 4) == 0)
  {
LABEL_39:
    if ((v2 & 8) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_84;
  }

LABEL_83:
  v23 = *(a2 + 3);
  v3 |= 4uLL;
  *(this + 172) = v3;
  *(this + 3) = v23;
  v2 = *(a2 + 172);
  if ((v2 & 8) == 0)
  {
LABEL_40:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_85;
  }

LABEL_84:
  v24 = *(a2 + 4);
  v3 |= 8uLL;
  *(this + 172) = v3;
  *(this + 4) = v24;
  v2 = *(a2 + 172);
  if ((v2 & 0x10) == 0)
  {
LABEL_41:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_86;
  }

LABEL_85:
  result = *(a2 + 10);
  v3 |= 0x10uLL;
  *(this + 172) = v3;
  *(this + 10) = result;
  v2 = *(a2 + 172);
  if ((v2 & 0x80) == 0)
  {
LABEL_42:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_87;
  }

LABEL_86:
  result = *(a2 + 13);
  v3 |= 0x80uLL;
  *(this + 172) = v3;
  *(this + 13) = result;
  v2 = *(a2 + 172);
  if ((v2 & 0x100) == 0)
  {
LABEL_43:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_88;
  }

LABEL_87:
  result = *(a2 + 14);
  v3 |= 0x100uLL;
  *(this + 172) = v3;
  *(this + 14) = result;
  v2 = *(a2 + 172);
  if ((v2 & 0x800) == 0)
  {
LABEL_44:
    if ((v2 & 1) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_89;
  }

LABEL_88:
  result = *(a2 + 17);
  v3 |= 0x800uLL;
  *(this + 172) = v3;
  *(this + 17) = result;
  v2 = *(a2 + 172);
  if ((v2 & 1) == 0)
  {
LABEL_45:
    if ((v2 & 2) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_90;
  }

LABEL_89:
  v25 = *(a2 + 1);
  v3 |= 1uLL;
  *(this + 172) = v3;
  *(this + 1) = v25;
  v2 = *(a2 + 172);
  if ((v2 & 2) == 0)
  {
LABEL_46:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_91;
  }

LABEL_90:
  v26 = *(a2 + 2);
  v3 |= 2uLL;
  *(this + 172) = v3;
  *(this + 2) = v26;
  v2 = *(a2 + 172);
  if ((v2 & 0x20) == 0)
  {
LABEL_47:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_92;
  }

LABEL_91:
  result = *(a2 + 11);
  v3 |= 0x20uLL;
  *(this + 172) = v3;
  *(this + 11) = result;
  v2 = *(a2 + 172);
  if ((v2 & 0x40) == 0)
  {
LABEL_48:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_93;
  }

LABEL_92:
  result = *(a2 + 12);
  v3 |= 0x40uLL;
  *(this + 172) = v3;
  *(this + 12) = result;
  v2 = *(a2 + 172);
  if ((v2 & 0x200) == 0)
  {
LABEL_49:
    if ((v2 & 0x400) == 0)
    {
      return result;
    }

LABEL_94:
    result = *(a2 + 16);
    *(this + 172) = v3 | 0x400;
    *(this + 16) = result;
    return result;
  }

LABEL_93:
  result = *(a2 + 15);
  v3 |= 0x200uLL;
  *(this + 172) = v3;
  *(this + 15) = result;
  if ((*(a2 + 172) & 0x400) != 0)
  {
    goto LABEL_94;
  }

  return result;
}

CMMsl *CMMsl::KappaLocalAudioResult::operator=(CMMsl *a1, const CMMsl::KappaLocalAudioResult *a2)
{
  if (a1 != a2)
  {
    CMMsl::KappaLocalAudioResult::KappaLocalAudioResult(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::KappaLocalAudioResult *a2, CMMsl::KappaLocalAudioResult *a3)
{
  v3 = *(this + 172);
  *(this + 172) = *(a2 + 172);
  *(a2 + 172) = v3;
  v4 = *(this + 35);
  *(this + 35) = *(a2 + 35);
  *(a2 + 35) = v4;
  v5 = *(this + 33);
  *(this + 33) = *(a2 + 33);
  *(a2 + 33) = v5;
  v6 = *(this + 31);
  *(this + 31) = *(a2 + 31);
  *(a2 + 31) = v6;
  v7 = *(this + 37);
  *(this + 37) = *(a2 + 37);
  *(a2 + 37) = v7;
  LODWORD(v3) = *(this + 26);
  *(this + 26) = *(a2 + 26);
  *(a2 + 26) = v3;
  LODWORD(v3) = *(this + 25);
  *(this + 25) = *(a2 + 25);
  *(a2 + 25) = v3;
  v8 = *(this + 29);
  *(this + 29) = *(a2 + 29);
  *(a2 + 29) = v8;
  v9 = *(this + 36);
  *(this + 36) = *(a2 + 36);
  *(a2 + 36) = v9;
  v10 = *(this + 34);
  *(this + 34) = *(a2 + 34);
  *(a2 + 34) = v10;
  v11 = *(this + 32);
  *(this + 32) = *(a2 + 32);
  *(a2 + 32) = v11;
  v12 = *(this + 38);
  *(this + 38) = *(a2 + 38);
  *(a2 + 38) = v12;
  LODWORD(v3) = *(this + 27);
  *(this + 27) = *(a2 + 27);
  *(a2 + 27) = v3;
  LODWORD(v3) = *(this + 28);
  *(this + 28) = *(a2 + 28);
  *(a2 + 28) = v3;
  LOBYTE(v3) = *(this + 165);
  *(this + 165) = *(a2 + 165);
  *(a2 + 165) = v3;
  v13 = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v13;
  v14 = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v14;
  v15 = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v15;
  v16 = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = v16;
  LOBYTE(v3) = *(this + 163);
  *(this + 163) = *(a2 + 163);
  *(a2 + 163) = v3;
  LOBYTE(v3) = *(this + 156);
  *(this + 156) = *(a2 + 156);
  *(a2 + 156) = v3;
  LOBYTE(v3) = *(this + 167);
  *(this + 167) = *(a2 + 167);
  *(a2 + 167) = v3;
  LOBYTE(v3) = *(this + 158);
  *(this + 158) = *(a2 + 158);
  *(a2 + 158) = v3;
  LOBYTE(v3) = *(this + 161);
  *(this + 161) = *(a2 + 161);
  *(a2 + 161) = v3;
  LOBYTE(v3) = *(this + 166);
  *(this + 166) = *(a2 + 166);
  *(a2 + 166) = v3;
  v17 = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v17;
  v18 = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v18;
  v19 = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v19;
  LOBYTE(v3) = *(this + 164);
  *(this + 164) = *(a2 + 164);
  *(a2 + 164) = v3;
  LOBYTE(v3) = *(this + 157);
  *(this + 157) = *(a2 + 157);
  *(a2 + 157) = v3;
  LOBYTE(v3) = *(this + 168);
  *(this + 168) = *(a2 + 168);
  *(a2 + 168) = v3;
  LOBYTE(v3) = *(this + 159);
  *(this + 159) = *(a2 + 159);
  *(a2 + 159) = v3;
  LOBYTE(v3) = *(this + 162);
  *(this + 162) = *(a2 + 162);
  *(a2 + 162) = v3;
  LOBYTE(v3) = *(this + 160);
  *(this + 160) = *(a2 + 160);
  *(a2 + 160) = v3;
  LODWORD(v3) = *(this + 30);
  *(this + 30) = *(a2 + 30);
  *(a2 + 30) = v3;
  v20 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v20;
  v21 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v21;
  v22 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v22;
  v23 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v23;
  v24 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v24;
  v25 = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v25;
  v26 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v26;
  v27 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v27;
  v28 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v28;
  v29 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v29;
  v30 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v30;
  result = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = result;
  return result;
}

float CMMsl::KappaLocalAudioResult::KappaLocalAudioResult(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041F7A0;
  *(a1 + 172) = *(a2 + 172);
  *(a2 + 172) = 0;
  *(a1 + 140) = *(a2 + 140);
  *(a1 + 132) = *(a2 + 132);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 148) = *(a2 + 148);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 116) = *(a2 + 116);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 165) = *(a2 + 165);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 163) = *(a2 + 163);
  *(a1 + 156) = *(a2 + 156);
  *(a1 + 167) = *(a2 + 167);
  *(a1 + 158) = *(a2 + 158);
  *(a1 + 161) = *(a2 + 161);
  *(a1 + 166) = *(a2 + 166);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 164) = *(a2 + 164);
  *(a1 + 157) = *(a2 + 157);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 159) = *(a2 + 159);
  *(a1 + 162) = *(a2 + 162);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 60) = *(a2 + 60);
  result = *(a2 + 64);
  *(a1 + 64) = result;
  return result;
}

CMMsl *CMMsl::KappaLocalAudioResult::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::KappaLocalAudioResult::KappaLocalAudioResult(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::KappaLocalAudioResult::formatText(CMMsl::KappaLocalAudioResult *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 172);
  if ((v5 & 0x10) != 0)
  {
    PB::TextFormatter::format(a2, "chaosAtMaxEnergy", *(this + 10));
    v5 = *(this + 172);
    if ((v5 & 0x20) == 0)
    {
LABEL_3:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_53;
    }
  }

  else if ((v5 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "chaosAtMaxEnergyRollover", *(this + 11));
  v5 = *(this + 172);
  if ((v5 & 0x40) == 0)
  {
LABEL_4:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_54;
  }

LABEL_53:
  PB::TextFormatter::format(a2, "chaosAtMaxEnergyRolloverTimestamp", *(this + 12));
  v5 = *(this + 172);
  if ((v5 & 0x80) == 0)
  {
LABEL_5:
    if ((v5 & 0x200000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_55;
  }

LABEL_54:
  PB::TextFormatter::format(a2, "chaosAtMaxEnergyTimestamp", *(this + 13));
  v5 = *(this + 172);
  if ((v5 & 0x200000000) == 0)
  {
LABEL_6:
    if ((v5 & 0x400000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_56;
  }

LABEL_55:
  PB::TextFormatter::format(a2, "chaosMet", *(this + 156));
  v5 = *(this + 172);
  if ((v5 & 0x400000000) == 0)
  {
LABEL_7:
    if ((v5 & 0x800000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_57;
  }

LABEL_56:
  PB::TextFormatter::format(a2, "chaosMetRollover", *(this + 157));
  v5 = *(this + 172);
  if ((v5 & 0x800000000) == 0)
  {
LABEL_8:
    if ((v5 & 0x1000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_58;
  }

LABEL_57:
  PB::TextFormatter::format(a2, "chaosOrSaturationMet", *(this + 158));
  v5 = *(this + 172);
  if ((v5 & 0x1000000000) == 0)
  {
LABEL_9:
    if ((v5 & 0x2000000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_59;
  }

LABEL_58:
  PB::TextFormatter::format(a2, "chaosOrSaturationMetRollover", *(this + 159));
  v5 = *(this + 172);
  if ((v5 & 0x2000000000) == 0)
  {
LABEL_10:
    if ((v5 & 0x4000000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_60;
  }

LABEL_59:
  PB::TextFormatter::format(a2, "didProcess", *(this + 160));
  v5 = *(this + 172);
  if ((v5 & 0x4000000000) == 0)
  {
LABEL_11:
    if ((v5 & 0x8000000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_61;
  }

LABEL_60:
  PB::TextFormatter::format(a2, "energyAndChaosOrSaturationMet", *(this + 161));
  v5 = *(this + 172);
  if ((v5 & 0x8000000000) == 0)
  {
LABEL_12:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_62;
  }

LABEL_61:
  PB::TextFormatter::format(a2, "energyAndChaosOrSaturationMetRollover", *(this + 162));
  v5 = *(this + 172);
  if ((v5 & 0x100) == 0)
  {
LABEL_13:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_63;
  }

LABEL_62:
  PB::TextFormatter::format(a2, "energyAtMaxChaos", *(this + 14));
  v5 = *(this + 172);
  if ((v5 & 0x200) == 0)
  {
LABEL_14:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_64;
  }

LABEL_63:
  PB::TextFormatter::format(a2, "energyAtMaxChaosRollover", *(this + 15));
  v5 = *(this + 172);
  if ((v5 & 0x400) == 0)
  {
LABEL_15:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_65;
  }

LABEL_64:
  PB::TextFormatter::format(a2, "energyAtMaxChaosRolloverTimestamp", *(this + 16));
  v5 = *(this + 172);
  if ((v5 & 0x800) == 0)
  {
LABEL_16:
    if ((v5 & 0x10000000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_66;
  }

LABEL_65:
  PB::TextFormatter::format(a2, "energyAtMaxChaosTimestamp", *(this + 17));
  v5 = *(this + 172);
  if ((v5 & 0x10000000000) == 0)
  {
LABEL_17:
    if ((v5 & 0x20000000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_67;
  }

LABEL_66:
  PB::TextFormatter::format(a2, "energyMet", *(this + 163));
  v5 = *(this + 172);
  if ((v5 & 0x20000000000) == 0)
  {
LABEL_18:
    if ((v5 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_68;
  }

LABEL_67:
  PB::TextFormatter::format(a2, "energyMetRollover", *(this + 164));
  v5 = *(this + 172);
  if ((v5 & 1) == 0)
  {
LABEL_19:
    if ((v5 & 2) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_69;
  }

LABEL_68:
  PB::TextFormatter::format(a2, "epochFirstTimestamp", *(this + 1));
  v5 = *(this + 172);
  if ((v5 & 2) == 0)
  {
LABEL_20:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_70;
  }

LABEL_69:
  PB::TextFormatter::format(a2, "epochLastTimestamp", *(this + 2));
  v5 = *(this + 172);
  if ((v5 & 0x1000) == 0)
  {
LABEL_21:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_71;
  }

LABEL_70:
  PB::TextFormatter::format(a2, "maxChaos", *(this + 18));
  v5 = *(this + 172);
  if ((v5 & 0x2000) == 0)
  {
LABEL_22:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_72;
  }

LABEL_71:
  PB::TextFormatter::format(a2, "maxChaosRollover", *(this + 19));
  v5 = *(this + 172);
  if ((v5 & 0x4000) == 0)
  {
LABEL_23:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_73;
  }

LABEL_72:
  PB::TextFormatter::format(a2, "maxEnergy", *(this + 20));
  v5 = *(this + 172);
  if ((v5 & 0x8000) == 0)
  {
LABEL_24:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_74;
  }

LABEL_73:
  PB::TextFormatter::format(a2, "maxEnergyRollover", *(this + 21));
  v5 = *(this + 172);
  if ((v5 & 0x10000) == 0)
  {
LABEL_25:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_75;
  }

LABEL_74:
  PB::TextFormatter::format(a2, "maxRMS", *(this + 22));
  v5 = *(this + 172);
  if ((v5 & 0x20000) == 0)
  {
LABEL_26:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_76;
  }

LABEL_75:
  PB::TextFormatter::format(a2, "maxSaturation", *(this + 23));
  v5 = *(this + 172);
  if ((v5 & 0x40000) == 0)
  {
LABEL_27:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_77;
  }

LABEL_76:
  PB::TextFormatter::format(a2, "maxSaturationRollover", *(this + 24));
  v5 = *(this + 172);
  if ((v5 & 0x80000) == 0)
  {
LABEL_28:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_78;
  }

LABEL_77:
  PB::TextFormatter::format(a2, "parameterRollingEnergyWindowSize", *(this + 25));
  v5 = *(this + 172);
  if ((v5 & 0x100000) == 0)
  {
LABEL_29:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_79;
  }

LABEL_78:
  PB::TextFormatter::format(a2, "parameterRollingPercentileWindowSize", *(this + 26));
  v5 = *(this + 172);
  if ((v5 & 0x200000) == 0)
  {
LABEL_30:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_80;
  }

LABEL_79:
  PB::TextFormatter::format(a2, "parameterRolloverRollingEnergyWindowSize", *(this + 27));
  v5 = *(this + 172);
  if ((v5 & 0x400000) == 0)
  {
LABEL_31:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_81;
  }

LABEL_80:
  PB::TextFormatter::format(a2, "parameterRolloverRollingPercentileWindowSize", *(this + 28));
  v5 = *(this + 172);
  if ((v5 & 0x800000) == 0)
  {
LABEL_32:
    if ((v5 & 0x40000000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_82;
  }

LABEL_81:
  PB::TextFormatter::format(a2, "parameterSaturationY", *(this + 29));
  v5 = *(this + 172);
  if ((v5 & 0x40000000000) == 0)
  {
LABEL_33:
    if ((v5 & 0x80000000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_83;
  }

LABEL_82:
  PB::TextFormatter::format(a2, "passThru", *(this + 165));
  v5 = *(this + 172);
  if ((v5 & 0x80000000000) == 0)
  {
LABEL_34:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_84;
  }

LABEL_83:
  PB::TextFormatter::format(a2, "passThruRollover", *(this + 166));
  v5 = *(this + 172);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_35:
    if ((v5 & 0x100000000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_85;
  }

LABEL_84:
  PB::TextFormatter::format(a2, "rmsSampleCount", *(this + 30));
  v5 = *(this + 172);
  if ((v5 & 0x100000000000) == 0)
  {
LABEL_36:
    if ((v5 & 0x200000000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_86;
  }

LABEL_85:
  PB::TextFormatter::format(a2, "saturationMet", *(this + 167));
  v5 = *(this + 172);
  if ((v5 & 0x200000000000) == 0)
  {
LABEL_37:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_87;
  }

LABEL_86:
  PB::TextFormatter::format(a2, "saturationMetRollover", *(this + 168));
  v5 = *(this + 172);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_38:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_88;
  }

LABEL_87:
  PB::TextFormatter::format(a2, "thresholdChaos", *(this + 31));
  v5 = *(this + 172);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_39:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_89;
  }

LABEL_88:
  PB::TextFormatter::format(a2, "thresholdChaosRollover", *(this + 32));
  v5 = *(this + 172);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_40:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_90;
  }

LABEL_89:
  PB::TextFormatter::format(a2, "thresholdEnergy", *(this + 33));
  v5 = *(this + 172);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_41:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_91;
  }

LABEL_90:
  PB::TextFormatter::format(a2, "thresholdEnergyRollover", *(this + 34));
  v5 = *(this + 172);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_42:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_92;
  }

LABEL_91:
  PB::TextFormatter::format(a2, "thresholdMaxRMS", *(this + 35));
  v5 = *(this + 172);
  if ((v5 & 0x40000000) == 0)
  {
LABEL_43:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_93;
  }

LABEL_92:
  PB::TextFormatter::format(a2, "thresholdMaxRMSRollover", *(this + 36));
  v5 = *(this + 172);
  if ((v5 & 0x80000000) == 0)
  {
LABEL_44:
    if ((v5 & 0x100000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_94;
  }

LABEL_93:
  PB::TextFormatter::format(a2, "thresholdSaturationTime", *(this + 37));
  v5 = *(this + 172);
  if ((v5 & 0x100000000) == 0)
  {
LABEL_45:
    if ((v5 & 4) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_95;
  }

LABEL_94:
  PB::TextFormatter::format(a2, "thresholdSaturationTimeRollover", *(this + 38));
  v5 = *(this + 172);
  if ((v5 & 4) == 0)
  {
LABEL_46:
    if ((v5 & 8) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

LABEL_95:
  PB::TextFormatter::format(a2, "timestamp", *(this + 3));
  if ((*(this + 172) & 8) != 0)
  {
LABEL_47:
    PB::TextFormatter::format(a2, "triggerTimestamp", *(this + 4));
  }

LABEL_48:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::KappaLocalAudioResult::readFrom(CMMsl::KappaLocalAudioResult *this, PB::Reader *a2)
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
            goto LABEL_205;
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
      if (v22 <= 4)
      {
        switch((v10 >> 3))
        {
          case 'e':
            *(this + 172) |= 0x40000000000uLL;
            v25 = *(a2 + 1);
            if (v25 >= *(a2 + 2))
            {
              v28 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v26 = v25 + 1;
              v27 = *(*a2 + v25);
              *(a2 + 1) = v26;
              v28 = v27 != 0;
            }

            *(this + 165) = v28;
            break;
          case 'f':
            *(this + 172) |= 0x10000uLL;
            v98 = *(a2 + 1);
            if (v98 > 0xFFFFFFFFFFFFFFFBLL || v98 + 4 > *(a2 + 2))
            {
              goto LABEL_118;
            }

            *(this + 22) = *(*a2 + v98);
            goto LABEL_184;
          case 'g':
            *(this + 172) |= 0x4000uLL;
            v76 = *(a2 + 1);
            if (v76 > 0xFFFFFFFFFFFFFFFBLL || v76 + 4 > *(a2 + 2))
            {
              goto LABEL_118;
            }

            *(this + 20) = *(*a2 + v76);
            goto LABEL_184;
          case 'h':
            *(this + 172) |= 0x1000uLL;
            v93 = *(a2 + 1);
            if (v93 > 0xFFFFFFFFFFFFFFFBLL || v93 + 4 > *(a2 + 2))
            {
              goto LABEL_118;
            }

            *(this + 18) = *(*a2 + v93);
            goto LABEL_184;
          case 'i':
            *(this + 172) |= 0x20000uLL;
            v69 = *(a2 + 1);
            if (v69 > 0xFFFFFFFFFFFFFFFBLL || v69 + 4 > *(a2 + 2))
            {
              goto LABEL_118;
            }

            *(this + 23) = *(*a2 + v69);
            goto LABEL_184;
          case 'j':
            *(this + 172) |= 0x10000000000uLL;
            v103 = *(a2 + 1);
            if (v103 >= *(a2 + 2))
            {
              v106 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v104 = v103 + 1;
              v105 = *(*a2 + v103);
              *(a2 + 1) = v104;
              v106 = v105 != 0;
            }

            *(this + 163) = v106;
            break;
          case 'k':
            *(this + 172) |= 0x200000000uLL;
            v108 = *(a2 + 1);
            if (v108 >= *(a2 + 2))
            {
              v111 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v109 = v108 + 1;
              v110 = *(*a2 + v108);
              *(a2 + 1) = v109;
              v111 = v110 != 0;
            }

            *(this + 156) = v111;
            break;
          case 'l':
            *(this + 172) |= 0x100000000000uLL;
            v94 = *(a2 + 1);
            if (v94 >= *(a2 + 2))
            {
              v97 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v95 = v94 + 1;
              v96 = *(*a2 + v94);
              *(a2 + 1) = v95;
              v97 = v96 != 0;
            }

            *(this + 167) = v97;
            break;
          case 'm':
            *(this + 172) |= 0x800000000uLL;
            v120 = *(a2 + 1);
            if (v120 >= *(a2 + 2))
            {
              v123 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v121 = v120 + 1;
              v122 = *(*a2 + v120);
              *(a2 + 1) = v121;
              v123 = v122 != 0;
            }

            *(this + 158) = v123;
            break;
          case 'n':
            *(this + 172) |= 0x4000000000uLL;
            v72 = *(a2 + 1);
            if (v72 >= *(a2 + 2))
            {
              v75 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v73 = v72 + 1;
              v74 = *(*a2 + v72);
              *(a2 + 1) = v73;
              v75 = v74 != 0;
            }

            *(this + 161) = v75;
            break;
          case 'o':
            *(this + 172) |= 0x80000000000uLL;
            v116 = *(a2 + 1);
            if (v116 >= *(a2 + 2))
            {
              v119 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v117 = v116 + 1;
              v118 = *(*a2 + v116);
              *(a2 + 1) = v117;
              v119 = v118 != 0;
            }

            *(this + 166) = v119;
            break;
          case 'p':
            *(this + 172) |= 0x8000uLL;
            v65 = *(a2 + 1);
            if (v65 > 0xFFFFFFFFFFFFFFFBLL || v65 + 4 > *(a2 + 2))
            {
              goto LABEL_118;
            }

            *(this + 21) = *(*a2 + v65);
            goto LABEL_184;
          case 'q':
            *(this + 172) |= 0x2000uLL;
            v71 = *(a2 + 1);
            if (v71 > 0xFFFFFFFFFFFFFFFBLL || v71 + 4 > *(a2 + 2))
            {
              goto LABEL_118;
            }

            *(this + 19) = *(*a2 + v71);
            goto LABEL_184;
          case 'r':
            *(this + 172) |= 0x40000uLL;
            v107 = *(a2 + 1);
            if (v107 <= 0xFFFFFFFFFFFFFFFBLL && v107 + 4 <= *(a2 + 2))
            {
              *(this + 24) = *(*a2 + v107);
LABEL_184:
              *(a2 + 1) += 4;
            }

            else
            {
LABEL_118:
              *(a2 + 24) = 1;
            }

            break;
          case 's':
            *(this + 172) |= 0x20000000000uLL;
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

            *(this + 164) = v36;
            break;
          case 't':
            *(this + 172) |= 0x400000000uLL;
            v87 = *(a2 + 1);
            if (v87 >= *(a2 + 2))
            {
              v90 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v88 = v87 + 1;
              v89 = *(*a2 + v87);
              *(a2 + 1) = v88;
              v90 = v89 != 0;
            }

            *(this + 157) = v90;
            break;
          case 'u':
            *(this + 172) |= 0x200000000000uLL;
            v29 = *(a2 + 1);
            if (v29 >= *(a2 + 2))
            {
              v32 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v30 = v29 + 1;
              v31 = *(*a2 + v29);
              *(a2 + 1) = v30;
              v32 = v31 != 0;
            }

            *(this + 168) = v32;
            break;
          case 'v':
            *(this + 172) |= 0x1000000000uLL;
            v99 = *(a2 + 1);
            if (v99 >= *(a2 + 2))
            {
              v102 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v100 = v99 + 1;
              v101 = *(*a2 + v99);
              *(a2 + 1) = v100;
              v102 = v101 != 0;
            }

            *(this + 159) = v102;
            break;
          case 'w':
            *(this + 172) |= 0x8000000000uLL;
            v112 = *(a2 + 1);
            if (v112 >= *(a2 + 2))
            {
              v115 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v113 = v112 + 1;
              v114 = *(*a2 + v112);
              *(a2 + 1) = v113;
              v115 = v114 != 0;
            }

            *(this + 162) = v115;
            break;
          default:
            JUMPOUT(0);
        }
      }

      else
      {
        switch(v23)
        {
          case 1:
            *(this + 172) |= 0x20000000uLL;
            v24 = *(a2 + 1);
            if (v24 > 0xFFFFFFFFFFFFFFFBLL || v24 + 4 > *(a2 + 2))
            {
              goto LABEL_118;
            }

            *(this + 35) = *(*a2 + v24);
            goto LABEL_184;
          case 2:
            *(this + 172) |= 0x8000000uLL;
            v70 = *(a2 + 1);
            if (v70 > 0xFFFFFFFFFFFFFFFBLL || v70 + 4 > *(a2 + 2))
            {
              goto LABEL_118;
            }

            *(this + 33) = *(*a2 + v70);
            goto LABEL_184;
          case 3:
            *(this + 172) |= 0x2000000uLL;
            v66 = *(a2 + 1);
            if (v66 > 0xFFFFFFFFFFFFFFFBLL || v66 + 4 > *(a2 + 2))
            {
              goto LABEL_118;
            }

            *(this + 31) = *(*a2 + v66);
            goto LABEL_184;
          case 4:
            *(this + 172) |= 0x80000000uLL;
            v67 = *(a2 + 1);
            if (v67 > 0xFFFFFFFFFFFFFFFBLL || v67 + 4 > *(a2 + 2))
            {
              goto LABEL_118;
            }

            *(this + 37) = *(*a2 + v67);
            goto LABEL_184;
          case 5:
            *(this + 172) |= 0x100000uLL;
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
                  goto LABEL_197;
                }

                v49 += 7;
                ++v53;
                v14 = v50++ > 8;
              }

              while (!v14);
LABEL_146:
              LODWORD(v51) = 0;
              goto LABEL_197;
            }

            v130 = 0;
            v131 = 0;
            v51 = 0;
            v17 = v46 >= v47;
            v132 = v46 - v47;
            if (!v17)
            {
              v132 = 0;
            }

            v133 = (v48 + v47);
            v134 = v47 + 1;
            while (2)
            {
              if (v132)
              {
                v135 = *v133;
                *(a2 + 1) = v134;
                v51 |= (v135 & 0x7F) << v130;
                if (v135 < 0)
                {
                  v130 += 7;
                  --v132;
                  ++v133;
                  ++v134;
                  v14 = v131++ > 8;
                  if (v14)
                  {
                    goto LABEL_146;
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

LABEL_197:
            *(this + 26) = v51;
            goto LABEL_185;
          case 6:
            *(this + 172) |= 0x80000uLL;
            v78 = *(a2 + 1);
            v77 = *(a2 + 2);
            v79 = *a2;
            if (v78 <= 0xFFFFFFFFFFFFFFF5 && v78 + 10 <= v77)
            {
              v80 = 0;
              v81 = 0;
              v82 = 0;
              v83 = (v79 + v78);
              v84 = v78 + 1;
              do
              {
                *(a2 + 1) = v84;
                v85 = *v83++;
                v82 |= (v85 & 0x7F) << v80;
                if ((v85 & 0x80) == 0)
                {
                  goto LABEL_203;
                }

                v80 += 7;
                ++v84;
                v14 = v81++ > 8;
              }

              while (!v14);
LABEL_164:
              LODWORD(v82) = 0;
              goto LABEL_203;
            }

            v142 = 0;
            v143 = 0;
            v82 = 0;
            v17 = v77 >= v78;
            v144 = v77 - v78;
            if (!v17)
            {
              v144 = 0;
            }

            v145 = (v79 + v78);
            v146 = v78 + 1;
            while (2)
            {
              if (v144)
              {
                v147 = *v145;
                *(a2 + 1) = v146;
                v82 |= (v147 & 0x7F) << v142;
                if (v147 < 0)
                {
                  v142 += 7;
                  --v144;
                  ++v145;
                  ++v146;
                  v14 = v143++ > 8;
                  if (v14)
                  {
                    goto LABEL_164;
                  }

                  continue;
                }

                if (*(a2 + 24))
                {
                  LODWORD(v82) = 0;
                }
              }

              else
              {
                LODWORD(v82) = 0;
                *(a2 + 24) = 1;
              }

              break;
            }

LABEL_203:
            *(this + 25) = v82;
            goto LABEL_185;
          case 7:
            *(this + 172) |= 0x800000uLL;
            v86 = *(a2 + 1);
            if (v86 > 0xFFFFFFFFFFFFFFFBLL || v86 + 4 > *(a2 + 2))
            {
              goto LABEL_118;
            }

            *(this + 29) = *(*a2 + v86);
            goto LABEL_184;
          case 8:
            *(this + 172) |= 0x40000000uLL;
            v68 = *(a2 + 1);
            if (v68 > 0xFFFFFFFFFFFFFFFBLL || v68 + 4 > *(a2 + 2))
            {
              goto LABEL_118;
            }

            *(this + 36) = *(*a2 + v68);
            goto LABEL_184;
          case 9:
            *(this + 172) |= 0x10000000uLL;
            v92 = *(a2 + 1);
            if (v92 > 0xFFFFFFFFFFFFFFFBLL || v92 + 4 > *(a2 + 2))
            {
              goto LABEL_118;
            }

            *(this + 34) = *(*a2 + v92);
            goto LABEL_184;
          case 10:
            *(this + 172) |= 0x4000000uLL;
            v64 = *(a2 + 1);
            if (v64 > 0xFFFFFFFFFFFFFFFBLL || v64 + 4 > *(a2 + 2))
            {
              goto LABEL_118;
            }

            *(this + 32) = *(*a2 + v64);
            goto LABEL_184;
          case 11:
            *(this + 172) |= &_mh_execute_header;
            v91 = *(a2 + 1);
            if (v91 > 0xFFFFFFFFFFFFFFFBLL || v91 + 4 > *(a2 + 2))
            {
              goto LABEL_118;
            }

            *(this + 38) = *(*a2 + v91);
            goto LABEL_184;
          case 12:
            *(this + 172) |= 0x200000uLL;
            v38 = *(a2 + 1);
            v37 = *(a2 + 2);
            v39 = *a2;
            if (v38 <= 0xFFFFFFFFFFFFFFF5 && v38 + 10 <= v37)
            {
              v40 = 0;
              v41 = 0;
              v42 = 0;
              v43 = (v39 + v38);
              v44 = v38 + 1;
              do
              {
                *(a2 + 1) = v44;
                v45 = *v43++;
                v42 |= (v45 & 0x7F) << v40;
                if ((v45 & 0x80) == 0)
                {
                  goto LABEL_194;
                }

                v40 += 7;
                ++v44;
                v14 = v41++ > 8;
              }

              while (!v14);
LABEL_138:
              LODWORD(v42) = 0;
              goto LABEL_194;
            }

            v124 = 0;
            v125 = 0;
            v42 = 0;
            v17 = v37 >= v38;
            v126 = v37 - v38;
            if (!v17)
            {
              v126 = 0;
            }

            v127 = (v39 + v38);
            v128 = v38 + 1;
            while (2)
            {
              if (v126)
              {
                v129 = *v127;
                *(a2 + 1) = v128;
                v42 |= (v129 & 0x7F) << v124;
                if (v129 < 0)
                {
                  v124 += 7;
                  --v126;
                  ++v127;
                  ++v128;
                  v14 = v125++ > 8;
                  if (v14)
                  {
                    goto LABEL_138;
                  }

                  continue;
                }

                if (*(a2 + 24))
                {
                  LODWORD(v42) = 0;
                }
              }

              else
              {
                LODWORD(v42) = 0;
                *(a2 + 24) = 1;
              }

              break;
            }

LABEL_194:
            *(this + 27) = v42;
            goto LABEL_185;
          case 13:
            *(this + 172) |= 0x400000uLL;
            v56 = *(a2 + 1);
            v55 = *(a2 + 2);
            v57 = *a2;
            if (v56 <= 0xFFFFFFFFFFFFFFF5 && v56 + 10 <= v55)
            {
              v58 = 0;
              v59 = 0;
              v60 = 0;
              v61 = (v57 + v56);
              v62 = v56 + 1;
              do
              {
                *(a2 + 1) = v62;
                v63 = *v61++;
                v60 |= (v63 & 0x7F) << v58;
                if ((v63 & 0x80) == 0)
                {
                  goto LABEL_200;
                }

                v58 += 7;
                ++v62;
                v14 = v59++ > 8;
              }

              while (!v14);
LABEL_154:
              LODWORD(v60) = 0;
              goto LABEL_200;
            }

            v136 = 0;
            v137 = 0;
            v60 = 0;
            v17 = v55 >= v56;
            v138 = v55 - v56;
            if (!v17)
            {
              v138 = 0;
            }

            v139 = (v57 + v56);
            v140 = v56 + 1;
            break;
          default:
            if (PB::Reader::skip(a2, v23, v22, 0))
            {
              goto LABEL_185;
            }

            v149 = 0;
            return v149 & 1;
        }

        while (1)
        {
          if (!v138)
          {
            LODWORD(v60) = 0;
            *(a2 + 24) = 1;
            goto LABEL_200;
          }

          v141 = *v139;
          *(a2 + 1) = v140;
          v60 |= (v141 & 0x7F) << v136;
          if ((v141 & 0x80) == 0)
          {
            break;
          }

          v136 += 7;
          --v138;
          ++v139;
          ++v140;
          v14 = v137++ > 8;
          if (v14)
          {
            goto LABEL_154;
          }
        }

        if (*(a2 + 24))
        {
          LODWORD(v60) = 0;
        }

LABEL_200:
        *(this + 28) = v60;
      }

LABEL_185:
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

LABEL_205:
  v149 = v4 ^ 1;
  return v149 & 1;
}

uint64_t CMMsl::KappaLocalAudioResult::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 172);
  if ((v4 & 0x20000000) != 0)
  {
    this = PB::Writer::write(a2, *(this + 140), 1u);
    v4 = *(v3 + 172);
    if ((v4 & 0x8000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x2000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_50;
    }
  }

  else if ((v4 & 0x8000000) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 132), 2u);
  v4 = *(v3 + 172);
  if ((v4 & 0x2000000) == 0)
  {
LABEL_4:
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_51;
  }

LABEL_50:
  this = PB::Writer::write(a2, *(v3 + 124), 3u);
  v4 = *(v3 + 172);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_5:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_52;
  }

LABEL_51:
  this = PB::Writer::write(a2, *(v3 + 148), 4u);
  v4 = *(v3 + 172);
  if ((v4 & 0x100000) == 0)
  {
LABEL_6:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_53;
  }

LABEL_52:
  this = PB::Writer::writeVarInt(a2, *(v3 + 104), 5u);
  v4 = *(v3 + 172);
  if ((v4 & 0x80000) == 0)
  {
LABEL_7:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_54;
  }

LABEL_53:
  this = PB::Writer::writeVarInt(a2, *(v3 + 100), 6u);
  v4 = *(v3 + 172);
  if ((v4 & 0x800000) == 0)
  {
LABEL_8:
    if ((v4 & 0x40000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_55;
  }

LABEL_54:
  this = PB::Writer::write(a2, *(v3 + 116), 7u);
  v4 = *(v3 + 172);
  if ((v4 & 0x40000000) == 0)
  {
LABEL_9:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_56;
  }

LABEL_55:
  this = PB::Writer::write(a2, *(v3 + 144), 8u);
  v4 = *(v3 + 172);
  if ((v4 & 0x10000000) == 0)
  {
LABEL_10:
    if ((v4 & 0x4000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_57;
  }

LABEL_56:
  this = PB::Writer::write(a2, *(v3 + 136), 9u);
  v4 = *(v3 + 172);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_11:
    if ((v4 & 0x100000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_58;
  }

LABEL_57:
  this = PB::Writer::write(a2, *(v3 + 128), 0xAu);
  v4 = *(v3 + 172);
  if ((v4 & 0x100000000) == 0)
  {
LABEL_12:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_59;
  }

LABEL_58:
  this = PB::Writer::write(a2, *(v3 + 152), 0xBu);
  v4 = *(v3 + 172);
  if ((v4 & 0x200000) == 0)
  {
LABEL_13:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_60;
  }

LABEL_59:
  this = PB::Writer::writeVarInt(a2, *(v3 + 108), 0xCu);
  v4 = *(v3 + 172);
  if ((v4 & 0x400000) == 0)
  {
LABEL_14:
    if ((v4 & 0x40000000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_61;
  }

LABEL_60:
  this = PB::Writer::writeVarInt(a2, *(v3 + 112), 0xDu);
  v4 = *(v3 + 172);
  if ((v4 & 0x40000000000) == 0)
  {
LABEL_15:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_62;
  }

LABEL_61:
  this = PB::Writer::write(a2, *(v3 + 165), 0x65u);
  v4 = *(v3 + 172);
  if ((v4 & 0x10000) == 0)
  {
LABEL_16:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_63;
  }

LABEL_62:
  this = PB::Writer::write(a2, *(v3 + 88), 0x66u);
  v4 = *(v3 + 172);
  if ((v4 & 0x4000) == 0)
  {
LABEL_17:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_64;
  }

LABEL_63:
  this = PB::Writer::write(a2, *(v3 + 80), 0x67u);
  v4 = *(v3 + 172);
  if ((v4 & 0x1000) == 0)
  {
LABEL_18:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_65;
  }

LABEL_64:
  this = PB::Writer::write(a2, *(v3 + 72), 0x68u);
  v4 = *(v3 + 172);
  if ((v4 & 0x20000) == 0)
  {
LABEL_19:
    if ((v4 & 0x10000000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_66;
  }

LABEL_65:
  this = PB::Writer::write(a2, *(v3 + 92), 0x69u);
  v4 = *(v3 + 172);
  if ((v4 & 0x10000000000) == 0)
  {
LABEL_20:
    if ((v4 & 0x200000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_67;
  }

LABEL_66:
  this = PB::Writer::write(a2, *(v3 + 163), 0x6Au);
  v4 = *(v3 + 172);
  if ((v4 & 0x200000000) == 0)
  {
LABEL_21:
    if ((v4 & 0x100000000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_68;
  }

LABEL_67:
  this = PB::Writer::write(a2, *(v3 + 156), 0x6Bu);
  v4 = *(v3 + 172);
  if ((v4 & 0x100000000000) == 0)
  {
LABEL_22:
    if ((v4 & 0x800000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_69;
  }

LABEL_68:
  this = PB::Writer::write(a2, *(v3 + 167), 0x6Cu);
  v4 = *(v3 + 172);
  if ((v4 & 0x800000000) == 0)
  {
LABEL_23:
    if ((v4 & 0x4000000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_70;
  }

LABEL_69:
  this = PB::Writer::write(a2, *(v3 + 158), 0x6Du);
  v4 = *(v3 + 172);
  if ((v4 & 0x4000000000) == 0)
  {
LABEL_24:
    if ((v4 & 0x80000000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_71;
  }

LABEL_70:
  this = PB::Writer::write(a2, *(v3 + 161), 0x6Eu);
  v4 = *(v3 + 172);
  if ((v4 & 0x80000000000) == 0)
  {
LABEL_25:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_72;
  }

LABEL_71:
  this = PB::Writer::write(a2, *(v3 + 166), 0x6Fu);
  v4 = *(v3 + 172);
  if ((v4 & 0x8000) == 0)
  {
LABEL_26:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_73;
  }

LABEL_72:
  this = PB::Writer::write(a2, *(v3 + 84), 0x70u);
  v4 = *(v3 + 172);
  if ((v4 & 0x2000) == 0)
  {
LABEL_27:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_74;
  }

LABEL_73:
  this = PB::Writer::write(a2, *(v3 + 76), 0x71u);
  v4 = *(v3 + 172);
  if ((v4 & 0x40000) == 0)
  {
LABEL_28:
    if ((v4 & 0x20000000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_75;
  }

LABEL_74:
  this = PB::Writer::write(a2, *(v3 + 96), 0x72u);
  v4 = *(v3 + 172);
  if ((v4 & 0x20000000000) == 0)
  {
LABEL_29:
    if ((v4 & 0x400000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_76;
  }

LABEL_75:
  this = PB::Writer::write(a2, *(v3 + 164), 0x73u);
  v4 = *(v3 + 172);
  if ((v4 & 0x400000000) == 0)
  {
LABEL_30:
    if ((v4 & 0x200000000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_77;
  }

LABEL_76:
  this = PB::Writer::write(a2, *(v3 + 157), 0x74u);
  v4 = *(v3 + 172);
  if ((v4 & 0x200000000000) == 0)
  {
LABEL_31:
    if ((v4 & 0x1000000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_78;
  }

LABEL_77:
  this = PB::Writer::write(a2, *(v3 + 168), 0x75u);
  v4 = *(v3 + 172);
  if ((v4 & 0x1000000000) == 0)
  {
LABEL_32:
    if ((v4 & 0x8000000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_79;
  }

LABEL_78:
  this = PB::Writer::write(a2, *(v3 + 159), 0x76u);
  v4 = *(v3 + 172);
  if ((v4 & 0x8000000000) == 0)
  {
LABEL_33:
    if ((v4 & 0x2000000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_80;
  }

LABEL_79:
  this = PB::Writer::write(a2, *(v3 + 162), 0x77u);
  v4 = *(v3 + 172);
  if ((v4 & 0x2000000000) == 0)
  {
LABEL_34:
    if ((v4 & 0x1000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_81;
  }

LABEL_80:
  this = PB::Writer::write(a2, *(v3 + 160), 0xC9u);
  v4 = *(v3 + 172);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_35:
    if ((v4 & 4) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_82;
  }

LABEL_81:
  this = PB::Writer::writeVarInt(a2, *(v3 + 120), 0xCAu);
  v4 = *(v3 + 172);
  if ((v4 & 4) == 0)
  {
LABEL_36:
    if ((v4 & 8) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_83;
  }

LABEL_82:
  this = PB::Writer::writeVarInt(a2, *(v3 + 24), 0xCBu);
  v4 = *(v3 + 172);
  if ((v4 & 8) == 0)
  {
LABEL_37:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_84;
  }

LABEL_83:
  this = PB::Writer::writeVarInt(a2, *(v3 + 32), 0xCCu);
  v4 = *(v3 + 172);
  if ((v4 & 0x10) == 0)
  {
LABEL_38:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_85;
  }

LABEL_84:
  this = PB::Writer::write(a2, *(v3 + 40), 0xCDu);
  v4 = *(v3 + 172);
  if ((v4 & 0x80) == 0)
  {
LABEL_39:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_86;
  }

LABEL_85:
  this = PB::Writer::write(a2, *(v3 + 52), 0xCEu);
  v4 = *(v3 + 172);
  if ((v4 & 0x100) == 0)
  {
LABEL_40:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_87;
  }

LABEL_86:
  this = PB::Writer::write(a2, *(v3 + 56), 0xCFu);
  v4 = *(v3 + 172);
  if ((v4 & 0x800) == 0)
  {
LABEL_41:
    if ((v4 & 1) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_88;
  }

LABEL_87:
  this = PB::Writer::write(a2, *(v3 + 68), 0xD0u);
  v4 = *(v3 + 172);
  if ((v4 & 1) == 0)
  {
LABEL_42:
    if ((v4 & 2) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_89;
  }

LABEL_88:
  this = PB::Writer::writeVarInt(a2, *(v3 + 8), 0xD1u);
  v4 = *(v3 + 172);
  if ((v4 & 2) == 0)
  {
LABEL_43:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_90;
  }

LABEL_89:
  this = PB::Writer::writeVarInt(a2, *(v3 + 16), 0xD2u);
  v4 = *(v3 + 172);
  if ((v4 & 0x20) == 0)
  {
LABEL_44:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_91;
  }

LABEL_90:
  this = PB::Writer::write(a2, *(v3 + 44), 0xD3u);
  v4 = *(v3 + 172);
  if ((v4 & 0x40) == 0)
  {
LABEL_45:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_46;
    }

LABEL_92:
    this = PB::Writer::write(a2, *(v3 + 60), 0xD5u);
    if ((*(v3 + 172) & 0x400) == 0)
    {
      return this;
    }

    goto LABEL_93;
  }

LABEL_91:
  this = PB::Writer::write(a2, *(v3 + 48), 0xD4u);
  v4 = *(v3 + 172);
  if ((v4 & 0x200) != 0)
  {
    goto LABEL_92;
  }

LABEL_46:
  if ((v4 & 0x400) == 0)
  {
    return this;
  }

LABEL_93:
  v5 = *(v3 + 64);

  return PB::Writer::write(a2, v5, 0xD6u);
}

uint64_t CMMsl::KappaLocalAudioResult::hash_value(CMMsl::KappaLocalAudioResult *this)
{
  v1 = *(this + 172);
  if ((v1 & 0x20000000) == 0)
  {
    v2 = 0;
    if ((v1 & 0x8000000) != 0)
    {
      goto LABEL_3;
    }

LABEL_101:
    v84 = 0;
    if ((v1 & 0x2000000) != 0)
    {
      goto LABEL_6;
    }

LABEL_102:
    v83 = 0;
    if ((v1 & 0x80000000) != 0)
    {
      goto LABEL_9;
    }

LABEL_103:
    v82 = 0;
    if ((v1 & 0x100000) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_104;
  }

  v64 = *(this + 35);
  if (v64 == 0.0)
  {
    v2 = 0;
  }

  else
  {
    v2 = LODWORD(v64);
  }

  if ((v1 & 0x8000000) == 0)
  {
    goto LABEL_101;
  }

LABEL_3:
  v3 = *(this + 33);
  v4 = LODWORD(v3);
  if (v3 == 0.0)
  {
    v4 = 0;
  }

  v84 = v4;
  if ((v1 & 0x2000000) == 0)
  {
    goto LABEL_102;
  }

LABEL_6:
  v5 = *(this + 31);
  v6 = LODWORD(v5);
  if (v5 == 0.0)
  {
    v6 = 0;
  }

  v83 = v6;
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_103;
  }

LABEL_9:
  v7 = *(this + 37);
  v8 = LODWORD(v7);
  if (v7 == 0.0)
  {
    v8 = 0;
  }

  v82 = v8;
  if ((v1 & 0x100000) != 0)
  {
LABEL_12:
    v81 = *(this + 26);
    if ((v1 & 0x80000) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_105;
  }

LABEL_104:
  v81 = 0;
  if ((v1 & 0x80000) != 0)
  {
LABEL_13:
    v80 = *(this + 25);
    if ((v1 & 0x800000) != 0)
    {
      goto LABEL_14;
    }

LABEL_106:
    v79 = 0;
    if ((v1 & 0x40000000) != 0)
    {
      goto LABEL_17;
    }

LABEL_107:
    v78 = 0;
    if ((v1 & 0x10000000) != 0)
    {
      goto LABEL_20;
    }

LABEL_108:
    v77 = 0;
    if ((v1 & 0x4000000) != 0)
    {
      goto LABEL_23;
    }

LABEL_109:
    v76 = 0;
    if ((v1 & 0x100000000) != 0)
    {
      goto LABEL_26;
    }

LABEL_110:
    v75 = 0;
    if ((v1 & 0x200000) != 0)
    {
      goto LABEL_29;
    }

    goto LABEL_111;
  }

LABEL_105:
  v80 = 0;
  if ((v1 & 0x800000) == 0)
  {
    goto LABEL_106;
  }

LABEL_14:
  v9 = *(this + 29);
  v10 = LODWORD(v9);
  if (v9 == 0.0)
  {
    v10 = 0;
  }

  v79 = v10;
  if ((v1 & 0x40000000) == 0)
  {
    goto LABEL_107;
  }

LABEL_17:
  v11 = *(this + 36);
  v12 = LODWORD(v11);
  if (v11 == 0.0)
  {
    v12 = 0;
  }

  v78 = v12;
  if ((v1 & 0x10000000) == 0)
  {
    goto LABEL_108;
  }

LABEL_20:
  v13 = *(this + 34);
  v14 = LODWORD(v13);
  if (v13 == 0.0)
  {
    v14 = 0;
  }

  v77 = v14;
  if ((v1 & 0x4000000) == 0)
  {
    goto LABEL_109;
  }

LABEL_23:
  v15 = *(this + 32);
  v16 = LODWORD(v15);
  if (v15 == 0.0)
  {
    v16 = 0;
  }

  v76 = v16;
  if ((v1 & 0x100000000) == 0)
  {
    goto LABEL_110;
  }

LABEL_26:
  v17 = *(this + 38);
  v18 = LODWORD(v17);
  if (v17 == 0.0)
  {
    v18 = 0;
  }

  v75 = v18;
  if ((v1 & 0x200000) != 0)
  {
LABEL_29:
    v74 = *(this + 27);
    if ((v1 & 0x400000) != 0)
    {
      goto LABEL_30;
    }

    goto LABEL_112;
  }

LABEL_111:
  v74 = 0;
  if ((v1 & 0x400000) != 0)
  {
LABEL_30:
    v73 = *(this + 28);
    if ((v1 & 0x40000000000) != 0)
    {
      goto LABEL_31;
    }

    goto LABEL_113;
  }

LABEL_112:
  v73 = 0;
  if ((v1 & 0x40000000000) != 0)
  {
LABEL_31:
    v72 = *(this + 165);
    if ((v1 & 0x10000) != 0)
    {
      goto LABEL_32;
    }

LABEL_114:
    v71 = 0;
    if ((v1 & 0x4000) != 0)
    {
      goto LABEL_35;
    }

LABEL_115:
    v70 = 0;
    if ((v1 & 0x1000) != 0)
    {
      goto LABEL_38;
    }

LABEL_116:
    v69 = 0;
    if ((v1 & 0x20000) != 0)
    {
      goto LABEL_41;
    }

LABEL_117:
    v68 = 0;
    if ((v1 & 0x10000000000) != 0)
    {
      goto LABEL_44;
    }

    goto LABEL_118;
  }

LABEL_113:
  v72 = 0;
  if ((v1 & 0x10000) == 0)
  {
    goto LABEL_114;
  }

LABEL_32:
  v19 = *(this + 22);
  v20 = LODWORD(v19);
  if (v19 == 0.0)
  {
    v20 = 0;
  }

  v71 = v20;
  if ((v1 & 0x4000) == 0)
  {
    goto LABEL_115;
  }

LABEL_35:
  v21 = *(this + 20);
  v22 = LODWORD(v21);
  if (v21 == 0.0)
  {
    v22 = 0;
  }

  v70 = v22;
  if ((v1 & 0x1000) == 0)
  {
    goto LABEL_116;
  }

LABEL_38:
  v23 = *(this + 18);
  v24 = LODWORD(v23);
  if (v23 == 0.0)
  {
    v24 = 0;
  }

  v69 = v24;
  if ((v1 & 0x20000) == 0)
  {
    goto LABEL_117;
  }

LABEL_41:
  v25 = *(this + 23);
  v26 = LODWORD(v25);
  if (v25 == 0.0)
  {
    v26 = 0;
  }

  v68 = v26;
  if ((v1 & 0x10000000000) != 0)
  {
LABEL_44:
    v67 = *(this + 163);
    if ((v1 & 0x200000000) != 0)
    {
      goto LABEL_45;
    }

    goto LABEL_119;
  }

LABEL_118:
  v67 = 0;
  if ((v1 & 0x200000000) != 0)
  {
LABEL_45:
    v66 = *(this + 156);
    if ((v1 & 0x100000000000) != 0)
    {
      goto LABEL_46;
    }

    goto LABEL_120;
  }

LABEL_119:
  v66 = 0;
  if ((v1 & 0x100000000000) != 0)
  {
LABEL_46:
    v27 = *(this + 167);
    if ((v1 & 0x800000000) != 0)
    {
      goto LABEL_47;
    }

    goto LABEL_121;
  }

LABEL_120:
  v27 = 0;
  if ((v1 & 0x800000000) != 0)
  {
LABEL_47:
    v28 = *(this + 158);
    if ((v1 & 0x4000000000) != 0)
    {
      goto LABEL_48;
    }

    goto LABEL_122;
  }

LABEL_121:
  v28 = 0;
  if ((v1 & 0x4000000000) != 0)
  {
LABEL_48:
    v29 = *(this + 161);
    if ((v1 & 0x80000000000) != 0)
    {
      goto LABEL_49;
    }

    goto LABEL_123;
  }

LABEL_122:
  v29 = 0;
  if ((v1 & 0x80000000000) != 0)
  {
LABEL_49:
    v30 = *(this + 166);
    if ((v1 & 0x8000) != 0)
    {
      goto LABEL_50;
    }

LABEL_124:
    v32 = 0;
    if ((v1 & 0x2000) != 0)
    {
      goto LABEL_54;
    }

LABEL_125:
    v34 = 0;
    if ((v1 & 0x40000) != 0)
    {
      goto LABEL_58;
    }

LABEL_126:
    v36 = 0;
    if ((v1 & 0x20000000000) != 0)
    {
      goto LABEL_62;
    }

    goto LABEL_127;
  }

LABEL_123:
  v30 = 0;
  if ((v1 & 0x8000) == 0)
  {
    goto LABEL_124;
  }

LABEL_50:
  v31 = *(this + 21);
  if (v31 == 0.0)
  {
    v32 = 0;
  }

  else
  {
    v32 = LODWORD(v31);
  }

  if ((v1 & 0x2000) == 0)
  {
    goto LABEL_125;
  }

LABEL_54:
  v33 = *(this + 19);
  if (v33 == 0.0)
  {
    v34 = 0;
  }

  else
  {
    v34 = LODWORD(v33);
  }

  if ((v1 & 0x40000) == 0)
  {
    goto LABEL_126;
  }

LABEL_58:
  v35 = *(this + 24);
  if (v35 == 0.0)
  {
    v36 = 0;
  }

  else
  {
    v36 = LODWORD(v35);
  }

  if ((v1 & 0x20000000000) != 0)
  {
LABEL_62:
    v37 = *(this + 164);
    if ((v1 & 0x400000000) != 0)
    {
      goto LABEL_63;
    }

    goto LABEL_128;
  }

LABEL_127:
  v37 = 0;
  if ((v1 & 0x400000000) != 0)
  {
LABEL_63:
    v38 = *(this + 157);
    if ((v1 & 0x200000000000) != 0)
    {
      goto LABEL_64;
    }

    goto LABEL_129;
  }

LABEL_128:
  v38 = 0;
  if ((v1 & 0x200000000000) != 0)
  {
LABEL_64:
    v39 = *(this + 168);
    if ((v1 & 0x1000000000) != 0)
    {
      goto LABEL_65;
    }

    goto LABEL_130;
  }

LABEL_129:
  v39 = 0;
  if ((v1 & 0x1000000000) != 0)
  {
LABEL_65:
    v40 = *(this + 159);
    if ((v1 & 0x8000000000) != 0)
    {
      goto LABEL_66;
    }

    goto LABEL_131;
  }

LABEL_130:
  v40 = 0;
  if ((v1 & 0x8000000000) != 0)
  {
LABEL_66:
    v41 = *(this + 162);
    if ((v1 & 0x2000000000) != 0)
    {
      goto LABEL_67;
    }

    goto LABEL_132;
  }

LABEL_131:
  v41 = 0;
  if ((v1 & 0x2000000000) != 0)
  {
LABEL_67:
    v42 = *(this + 160);
    if ((v1 & 0x1000000) != 0)
    {
      goto LABEL_68;
    }

    goto LABEL_133;
  }

LABEL_132:
  v42 = 0;
  if ((v1 & 0x1000000) != 0)
  {
LABEL_68:
    v43 = *(this + 30);
    if ((v1 & 4) != 0)
    {
      goto LABEL_69;
    }

    goto LABEL_134;
  }

LABEL_133:
  v43 = 0;
  if ((v1 & 4) != 0)
  {
LABEL_69:
    v44 = *(this + 3);
    if ((v1 & 8) != 0)
    {
      goto LABEL_70;
    }

    goto LABEL_135;
  }

LABEL_134:
  v44 = 0;
  if ((v1 & 8) != 0)
  {
LABEL_70:
    v45 = *(this + 4);
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_71;
    }

LABEL_136:
    v47 = 0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_74;
    }

LABEL_137:
    v49 = 0;
    if ((v1 & 0x100) != 0)
    {
      goto LABEL_77;
    }

LABEL_138:
    v51 = 0;
    if ((v1 & 0x800) != 0)
    {
      goto LABEL_80;
    }

LABEL_139:
    v53 = 0;
    if (v1)
    {
      goto LABEL_83;
    }

    goto LABEL_140;
  }

LABEL_135:
  v45 = 0;
  if ((v1 & 0x10) == 0)
  {
    goto LABEL_136;
  }

LABEL_71:
  v46 = *(this + 10);
  v47 = LODWORD(v46);
  if (v46 == 0.0)
  {
    v47 = 0;
  }

  if ((v1 & 0x80) == 0)
  {
    goto LABEL_137;
  }

LABEL_74:
  v48 = *(this + 13);
  v49 = LODWORD(v48);
  if (v48 == 0.0)
  {
    v49 = 0;
  }

  if ((v1 & 0x100) == 0)
  {
    goto LABEL_138;
  }

LABEL_77:
  v50 = *(this + 14);
  v51 = LODWORD(v50);
  if (v50 == 0.0)
  {
    v51 = 0;
  }

  if ((v1 & 0x800) == 0)
  {
    goto LABEL_139;
  }

LABEL_80:
  v52 = *(this + 17);
  v53 = LODWORD(v52);
  if (v52 == 0.0)
  {
    v53 = 0;
  }

  if (v1)
  {
LABEL_83:
    v54 = *(this + 1);
    if ((v1 & 2) != 0)
    {
      goto LABEL_84;
    }

    goto LABEL_141;
  }

LABEL_140:
  v54 = 0;
  if ((v1 & 2) != 0)
  {
LABEL_84:
    v55 = *(this + 2);
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_85;
    }

LABEL_142:
    v57 = 0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_88;
    }

LABEL_143:
    v59 = 0;
    if ((v1 & 0x200) != 0)
    {
      goto LABEL_91;
    }

    goto LABEL_144;
  }

LABEL_141:
  v55 = 0;
  if ((v1 & 0x20) == 0)
  {
    goto LABEL_142;
  }

LABEL_85:
  v56 = *(this + 11);
  v57 = LODWORD(v56);
  if (v56 == 0.0)
  {
    v57 = 0;
  }

  if ((v1 & 0x40) == 0)
  {
    goto LABEL_143;
  }

LABEL_88:
  v58 = *(this + 12);
  v59 = LODWORD(v58);
  if (v58 == 0.0)
  {
    v59 = 0;
  }

  if ((v1 & 0x200) != 0)
  {
LABEL_91:
    v60 = *(this + 15);
    v61 = LODWORD(v60);
    if (v60 == 0.0)
    {
      v61 = 0;
    }

    if ((v1 & 0x400) != 0)
    {
      goto LABEL_94;
    }

LABEL_145:
    v63 = 0;
    return v84 ^ v2 ^ v83 ^ v82 ^ v81 ^ v80 ^ v79 ^ v78 ^ v77 ^ v76 ^ v75 ^ v74 ^ v73 ^ v72 ^ v71 ^ v70 ^ v69 ^ v68 ^ v67 ^ v66 ^ v27 ^ v28 ^ v29 ^ v30 ^ v32 ^ v34 ^ v36 ^ v37 ^ v38 ^ v39 ^ v40 ^ v41 ^ v42 ^ v43 ^ v44 ^ v45 ^ v47 ^ v49 ^ v51 ^ v53 ^ v54 ^ v55 ^ v57 ^ v59 ^ v61 ^ v63;
  }

LABEL_144:
  v61 = 0;
  if ((v1 & 0x400) == 0)
  {
    goto LABEL_145;
  }

LABEL_94:
  v62 = *(this + 16);
  v63 = LODWORD(v62);
  if (v62 == 0.0)
  {
    v63 = 0;
  }

  return v84 ^ v2 ^ v83 ^ v82 ^ v81 ^ v80 ^ v79 ^ v78 ^ v77 ^ v76 ^ v75 ^ v74 ^ v73 ^ v72 ^ v71 ^ v70 ^ v69 ^ v68 ^ v67 ^ v66 ^ v27 ^ v28 ^ v29 ^ v30 ^ v32 ^ v34 ^ v36 ^ v37 ^ v38 ^ v39 ^ v40 ^ v41 ^ v42 ^ v43 ^ v44 ^ v45 ^ v47 ^ v49 ^ v51 ^ v53 ^ v54 ^ v55 ^ v57 ^ v59 ^ v61 ^ v63;
}

void CMMsl::KappaMildImpactResult::~KappaMildImpactResult(CMMsl::KappaMildImpactResult *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::KappaMildImpactResult::KappaMildImpactResult(uint64_t this, const CMMsl::KappaMildImpactResult *a2)
{
  *this = off_10041F7D8;
  *(this + 28) = 0;
  v2 = *(a2 + 28);
  if (v2)
  {
    v4 = *(a2 + 2);
    v3 = 1;
    *(this + 28) = 1;
    *(this + 8) = v4;
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
    v5 = *(a2 + 5);
    v3 |= 8u;
    *(this + 28) = v3;
    *(this + 20) = v5;
    v2 = *(a2 + 28);
  }

LABEL_6:
  if ((v2 & 0x10) != 0)
  {
    v6 = *(a2 + 6);
    v3 |= 0x10u;
    *(this + 28) = v3;
    *(this + 24) = v6;
    v2 = *(a2 + 28);
    if ((v2 & 2) == 0)
    {
LABEL_8:
      if ((v2 & 4) == 0)
      {
        return this;
      }

LABEL_12:
      v8 = *(a2 + 4);
      *(this + 28) = v3 | 4;
      *(this + 16) = v8;
      return this;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 3);
  v3 |= 2u;
  *(this + 28) = v3;
  *(this + 12) = v7;
  if ((*(a2 + 28) & 4) != 0)
  {
    goto LABEL_12;
  }

  return this;
}

uint64_t CMMsl::KappaMildImpactResult::operator=(uint64_t a1, const CMMsl::KappaMildImpactResult *a2)
{
  if (a1 != a2)
  {
    CMMsl::KappaMildImpactResult::KappaMildImpactResult(&v8, a2);
    v3 = *(a1 + 20);
    *(a1 + 20) = v11;
    v11 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v12;
    v12 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v9;
    v9 = v5;
    v6 = *(a1 + 16);
    *(a1 + 16) = v10;
    v10 = v6;
    PB::Base::~Base(&v8);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::KappaMildImpactResult *a2, CMMsl::KappaMildImpactResult *a3)
{
  v3 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v3;
  v4 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v5;
  v6 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v6;
  result = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = result;
  v8 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v8;
  return result;
}

float CMMsl::KappaMildImpactResult::KappaMildImpactResult(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041F7D8;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 12);
  *(a1 + 12) = result;
  *(a1 + 16) = *(a2 + 16);
  return result;
}

{
  *a1 = off_10041F7D8;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 12);
  *(a1 + 12) = result;
  *(a1 + 16) = *(a2 + 16);
  return result;
}

uint64_t CMMsl::KappaMildImpactResult::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v10[0] = off_10041F7D8;
    v3 = *(a2 + 20);
    v4 = *(a2 + 16);
    v5 = *(a2 + 8);
    v6 = *(a2 + 24);
    *(a2 + 28) = 0;
    v12 = *(a1 + 20);
    v13 = *(a1 + 24);
    v7 = *(a1 + 8);
    *(a1 + 20) = v3;
    *(a1 + 24) = v6;
    *(a1 + 8) = v5;
    v10[1] = v7;
    v8 = *(a1 + 16);
    *(a1 + 16) = v4;
    v11 = v8;
    PB::Base::~Base(v10);
  }

  return a1;
}

uint64_t CMMsl::KappaMildImpactResult::formatText(CMMsl::KappaMildImpactResult *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 28);
  if (v5)
  {
    PB::TextFormatter::format(a2, "configThreshold1", *(this + 2));
    v5 = *(this + 28);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(this + 28) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "debugX", *(this + 3));
  v5 = *(this + 28);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  PB::TextFormatter::format(a2, "debugY", *(this + 4));
  v5 = *(this + 28);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  PB::TextFormatter::format(a2, "outputA", *(this + 5));
  if ((*(this + 28) & 0x10) != 0)
  {
LABEL_6:
    PB::TextFormatter::format(a2, "outputB", *(this + 6));
  }

LABEL_7:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::KappaMildImpactResult::readFrom(CMMsl::KappaMildImpactResult *this, PB::Reader *a2)
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
            goto LABEL_85;
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
      if ((v10 >> 3) <= 100001)
      {
        if (v22 == 100000)
        {
          *(this + 28) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
LABEL_50:
            *(a2 + 24) = 1;
            goto LABEL_81;
          }

          *(this + 2) = *(*a2 + v2);
          goto LABEL_70;
        }

        if (v22 == 100001)
        {
          *(this + 28) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_50;
          }

          *(this + 5) = *(*a2 + v2);
          goto LABEL_70;
        }
      }

      else
      {
        switch(v22)
        {
          case 0x186A2:
            *(this + 28) |= 0x10u;
            v31 = *(a2 + 1);
            v2 = *(a2 + 2);
            v32 = *a2;
            if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
            {
              v39 = 0;
              v40 = 0;
              v35 = 0;
              if (v2 <= v31)
              {
                v2 = *(a2 + 1);
              }

              v41 = v2 - v31;
              v42 = (v32 + v31);
              v43 = v31 + 1;
              while (1)
              {
                if (!v41)
                {
                  LODWORD(v35) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_76;
                }

                v44 = v43;
                v45 = *v42;
                *(a2 + 1) = v44;
                v35 |= (v45 & 0x7F) << v39;
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
                  LODWORD(v35) = 0;
                  goto LABEL_75;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v35) = 0;
              }

LABEL_75:
              v2 = v44;
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

LABEL_76:
            *(this + 6) = v35;
            goto LABEL_81;
          case 0x186A3:
            *(this + 28) |= 2u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
              goto LABEL_50;
            }

            *(this + 3) = *(*a2 + v2);
LABEL_70:
            v2 = *(a2 + 1) + 4;
            *(a2 + 1) = v2;
            goto LABEL_81;
          case 0x186A4:
            *(this + 28) |= 4u;
            v23 = *(a2 + 1);
            v2 = *(a2 + 2);
            v24 = *a2;
            if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
            {
              v46 = 0;
              v47 = 0;
              v27 = 0;
              if (v2 <= v23)
              {
                v2 = *(a2 + 1);
              }

              v48 = v2 - v23;
              v49 = (v24 + v23);
              v50 = v23 + 1;
              while (1)
              {
                if (!v48)
                {
                  LODWORD(v27) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_80;
                }

                v51 = v50;
                v52 = *v49;
                *(a2 + 1) = v51;
                v27 |= (v52 & 0x7F) << v46;
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
                  LODWORD(v27) = 0;
                  goto LABEL_79;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v27) = 0;
              }

LABEL_79:
              v2 = v51;
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

LABEL_80:
            *(this + 4) = v27;
            goto LABEL_81;
        }
      }

      if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
      {
        v53 = 0;
        return v53 & 1;
      }

      v2 = *(a2 + 1);
LABEL_81:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_85:
  v53 = v4 ^ 1;
  return v53 & 1;
}

uint64_t CMMsl::KappaMildImpactResult::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 28);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8), 0x186A0u);
    v4 = *(v3 + 28);
    if ((v4 & 8) == 0)
    {
LABEL_3:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 28) & 8) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 20), 0x186A1u);
  v4 = *(v3 + 28);
  if ((v4 & 0x10) == 0)
  {
LABEL_4:
    if ((v4 & 2) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = PB::Writer::write(a2, *(v3 + 12), 0x186A3u);
    if ((*(v3 + 28) & 4) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = PB::Writer::writeVarInt(a2, *(v3 + 24), 0x186A2u);
  v4 = *(v3 + 28);
  if ((v4 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v4 & 4) == 0)
  {
    return this;
  }

LABEL_11:
  v5 = *(v3 + 16);

  return PB::Writer::writeVarInt(a2, v5, 0x186A4u);
}

uint64_t CMMsl::KappaMildImpactResult::hash_value(CMMsl::KappaMildImpactResult *this)
{
  if ((*(this + 28) & 1) == 0)
  {
    v1 = 0;
    if ((*(this + 28) & 8) != 0)
    {
      goto LABEL_3;
    }

LABEL_14:
    v3 = 0;
    if ((*(this + 28) & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  v8 = *(this + 2);
  v1 = LODWORD(v8);
  if (v8 == 0.0)
  {
    v1 = 0;
  }

  if ((*(this + 28) & 8) == 0)
  {
    goto LABEL_14;
  }

LABEL_3:
  v2 = *(this + 5);
  v3 = LODWORD(v2);
  if (v2 == 0.0)
  {
    v3 = 0;
  }

  if ((*(this + 28) & 0x10) != 0)
  {
LABEL_6:
    v4 = *(this + 6);
    if ((*(this + 28) & 2) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  v4 = 0;
  if ((*(this + 28) & 2) != 0)
  {
LABEL_7:
    v5 = *(this + 3);
    v6 = LODWORD(v5);
    if (v5 == 0.0)
    {
      v6 = 0;
    }

    if ((*(this + 28) & 4) != 0)
    {
      goto LABEL_10;
    }

LABEL_17:
    v7 = 0;
    return v3 ^ v1 ^ v4 ^ v6 ^ v7;
  }

LABEL_16:
  v6 = 0;
  if ((*(this + 28) & 4) == 0)
  {
    goto LABEL_17;
  }

LABEL_10:
  v7 = *(this + 4);
  return v3 ^ v1 ^ v4 ^ v6 ^ v7;
}

void CMMsl::KappaPeakDetectorMapMagTimestamps::~KappaPeakDetectorMapMagTimestamps(CMMsl::KappaPeakDetectorMapMagTimestamps *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::KappaPeakDetectorMapMagTimestamps::KappaPeakDetectorMapMagTimestamps(uint64_t this, const CMMsl::KappaPeakDetectorMapMagTimestamps *a2)
{
  *this = off_10041F810;
  *(this + 44) = 0;
  v2 = *(a2 + 44);
  if ((v2 & 8) != 0)
  {
    v4 = *(a2 + 4);
    v3 = 8;
    *(this + 44) = 8;
    *(this + 32) = v4;
    v2 = *(a2 + 44);
    if ((v2 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if (*(a2 + 44))
  {
LABEL_5:
    v5 = *(a2 + 1);
    v3 |= 1u;
    *(this + 44) = v3;
    *(this + 8) = v5;
    v2 = *(a2 + 44);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    v6 = *(a2 + 2);
    v3 |= 2u;
    *(this + 44) = v3;
    *(this + 16) = v6;
    v2 = *(a2 + 44);
    if ((v2 & 0x10) == 0)
    {
LABEL_8:
      if ((v2 & 4) == 0)
      {
        return this;
      }

LABEL_12:
      v8 = *(a2 + 3);
      *(this + 44) = v3 | 4;
      *(this + 24) = v8;
      return this;
    }
  }

  else if ((v2 & 0x10) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 10);
  v3 |= 0x10u;
  *(this + 44) = v3;
  *(this + 40) = v7;
  if ((*(a2 + 44) & 4) != 0)
  {
    goto LABEL_12;
  }

  return this;
}