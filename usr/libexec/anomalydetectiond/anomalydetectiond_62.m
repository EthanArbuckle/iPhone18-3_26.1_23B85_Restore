uint64_t CMMsl::TNB::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 92);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8), 1u);
    v4 = *(v3 + 92);
    if ((v4 & 0x200) == 0)
    {
LABEL_3:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::writeVarInt(a2, *(v3 + 48), 2u);
  v4 = *(v3 + 92);
  if ((v4 & 0x10) == 0)
  {
LABEL_4:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = PB::Writer::write(a2, *(v3 + 28), 3u);
  v4 = *(v3 + 92);
  if ((v4 & 0x80000) == 0)
  {
LABEL_5:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = PB::Writer::write(a2, *(v3 + 88), 4u);
  v4 = *(v3 + 92);
  if ((v4 & 0x40) == 0)
  {
LABEL_6:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = PB::Writer::write(a2, *(v3 + 36), 5u);
  v4 = *(v3 + 92);
  if ((v4 & 0x80) == 0)
  {
LABEL_7:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = PB::Writer::write(a2, *(v3 + 40), 6u);
  v4 = *(v3 + 92);
  if ((v4 & 0x100) == 0)
  {
LABEL_8:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = PB::Writer::write(a2, *(v3 + 44), 7u);
  v4 = *(v3 + 92);
  if ((v4 & 0x4000) == 0)
  {
LABEL_9:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = PB::Writer::write(a2, *(v3 + 68), 8u);
  v4 = *(v3 + 92);
  if ((v4 & 0x8000) == 0)
  {
LABEL_10:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = PB::Writer::write(a2, *(v3 + 72), 9u);
  v4 = *(v3 + 92);
  if ((v4 & 0x10000) == 0)
  {
LABEL_11:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = PB::Writer::write(a2, *(v3 + 76), 0xAu);
  v4 = *(v3 + 92);
  if ((v4 & 0x400) == 0)
  {
LABEL_12:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = PB::Writer::write(a2, *(v3 + 52), 0xBu);
  v4 = *(v3 + 92);
  if ((v4 & 0x800) == 0)
  {
LABEL_13:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = PB::Writer::write(a2, *(v3 + 56), 0xCu);
  v4 = *(v3 + 92);
  if ((v4 & 0x1000) == 0)
  {
LABEL_14:
    if ((v4 & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = PB::Writer::write(a2, *(v3 + 60), 0xDu);
  v4 = *(v3 + 92);
  if ((v4 & 2) == 0)
  {
LABEL_15:
    if ((v4 & 4) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = PB::Writer::write(a2, *(v3 + 16), 0xEu);
  v4 = *(v3 + 92);
  if ((v4 & 4) == 0)
  {
LABEL_16:
    if ((v4 & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = PB::Writer::write(a2, *(v3 + 20), 0xFu);
  v4 = *(v3 + 92);
  if ((v4 & 8) == 0)
  {
LABEL_17:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = PB::Writer::write(a2, *(v3 + 24), 0x10u);
  v4 = *(v3 + 92);
  if ((v4 & 0x2000) == 0)
  {
LABEL_18:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = PB::Writer::write(a2, *(v3 + 64), 0x11u);
  v4 = *(v3 + 92);
  if ((v4 & 0x20) == 0)
  {
LABEL_19:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_20;
    }

LABEL_40:
    this = PB::Writer::write(a2, *(v3 + 80), 0x13u);
    if ((*(v3 + 92) & 0x40000) == 0)
    {
      return this;
    }

    goto LABEL_41;
  }

LABEL_39:
  this = PB::Writer::write(a2, *(v3 + 32), 0x12u);
  v4 = *(v3 + 92);
  if ((v4 & 0x20000) != 0)
  {
    goto LABEL_40;
  }

LABEL_20:
  if ((v4 & 0x40000) == 0)
  {
    return this;
  }

LABEL_41:
  v5 = *(v3 + 84);

  return PB::Writer::write(a2, v5, 0x14u);
}

uint64_t CMMsl::TNB::hash_value(CMMsl::TNB *this)
{
  v1 = *(this + 23);
  if (v1)
  {
    v2 = *(this + 1);
    if (v2 == 0.0)
    {
      v2 = 0.0;
    }

    if ((v1 & 0x200) != 0)
    {
LABEL_3:
      v3 = *(this + 12);
      if ((v1 & 0x10) != 0)
      {
        goto LABEL_4;
      }

LABEL_48:
      v5 = 0;
      if ((v1 & 0x80000) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_49;
    }
  }

  else
  {
    v2 = 0.0;
    if ((v1 & 0x200) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((v1 & 0x10) == 0)
  {
    goto LABEL_48;
  }

LABEL_4:
  v4 = *(this + 7);
  v5 = LODWORD(v4);
  if (v4 == 0.0)
  {
    v5 = 0;
  }

  if ((v1 & 0x80000) != 0)
  {
LABEL_7:
    v6 = *(this + 88);
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_8;
    }

LABEL_50:
    v8 = 0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_11;
    }

LABEL_51:
    v10 = 0;
    if ((v1 & 0x100) != 0)
    {
      goto LABEL_14;
    }

LABEL_52:
    v12 = 0;
    if ((v1 & 0x4000) != 0)
    {
      goto LABEL_17;
    }

LABEL_53:
    v14 = 0;
    if ((v1 & 0x8000) != 0)
    {
      goto LABEL_20;
    }

LABEL_54:
    v16 = 0;
    if ((v1 & 0x10000) != 0)
    {
      goto LABEL_23;
    }

LABEL_55:
    v18 = 0;
    if ((v1 & 0x400) != 0)
    {
      goto LABEL_26;
    }

LABEL_56:
    v20 = 0;
    if ((v1 & 0x800) != 0)
    {
      goto LABEL_29;
    }

LABEL_57:
    v22 = 0;
    if ((v1 & 0x1000) != 0)
    {
      goto LABEL_32;
    }

LABEL_58:
    v24 = 0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_35;
    }

LABEL_59:
    v26 = 0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_38;
    }

    goto LABEL_60;
  }

LABEL_49:
  v6 = 0;
  if ((v1 & 0x40) == 0)
  {
    goto LABEL_50;
  }

LABEL_8:
  v7 = *(this + 9);
  v8 = LODWORD(v7);
  if (v7 == 0.0)
  {
    v8 = 0;
  }

  if ((v1 & 0x80) == 0)
  {
    goto LABEL_51;
  }

LABEL_11:
  v9 = *(this + 10);
  v10 = LODWORD(v9);
  if (v9 == 0.0)
  {
    v10 = 0;
  }

  if ((v1 & 0x100) == 0)
  {
    goto LABEL_52;
  }

LABEL_14:
  v11 = *(this + 11);
  v12 = LODWORD(v11);
  if (v11 == 0.0)
  {
    v12 = 0;
  }

  if ((v1 & 0x4000) == 0)
  {
    goto LABEL_53;
  }

LABEL_17:
  v13 = *(this + 17);
  v14 = LODWORD(v13);
  if (v13 == 0.0)
  {
    v14 = 0;
  }

  if ((v1 & 0x8000) == 0)
  {
    goto LABEL_54;
  }

LABEL_20:
  v15 = *(this + 18);
  v16 = LODWORD(v15);
  if (v15 == 0.0)
  {
    v16 = 0;
  }

  if ((v1 & 0x10000) == 0)
  {
    goto LABEL_55;
  }

LABEL_23:
  v17 = *(this + 19);
  v18 = LODWORD(v17);
  if (v17 == 0.0)
  {
    v18 = 0;
  }

  if ((v1 & 0x400) == 0)
  {
    goto LABEL_56;
  }

LABEL_26:
  v19 = *(this + 13);
  v20 = LODWORD(v19);
  if (v19 == 0.0)
  {
    v20 = 0;
  }

  if ((v1 & 0x800) == 0)
  {
    goto LABEL_57;
  }

LABEL_29:
  v21 = *(this + 14);
  v22 = LODWORD(v21);
  if (v21 == 0.0)
  {
    v22 = 0;
  }

  if ((v1 & 0x1000) == 0)
  {
    goto LABEL_58;
  }

LABEL_32:
  v23 = *(this + 15);
  v24 = LODWORD(v23);
  if (v23 == 0.0)
  {
    v24 = 0;
  }

  if ((v1 & 2) == 0)
  {
    goto LABEL_59;
  }

LABEL_35:
  v25 = *(this + 4);
  v26 = LODWORD(v25);
  if (v25 == 0.0)
  {
    v26 = 0;
  }

  if ((v1 & 4) != 0)
  {
LABEL_38:
    v27 = *(this + 5);
    v28 = LODWORD(v27);
    if (v27 == 0.0)
    {
      v28 = 0;
    }

    if ((v1 & 8) != 0)
    {
      goto LABEL_41;
    }

LABEL_61:
    v30 = 0;
    goto LABEL_62;
  }

LABEL_60:
  v28 = 0;
  if ((v1 & 8) == 0)
  {
    goto LABEL_61;
  }

LABEL_41:
  v29 = *(this + 6);
  v30 = LODWORD(v29);
  if (v29 == 0.0)
  {
    v30 = 0;
  }

LABEL_62:
  if ((v1 & 0x2000) == 0)
  {
    v31 = 0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_64;
    }

LABEL_76:
    v33 = 0;
    if ((v1 & 0x20000) != 0)
    {
      goto LABEL_67;
    }

    goto LABEL_77;
  }

  v38 = *(this + 16);
  v31 = LODWORD(v38);
  if (v38 == 0.0)
  {
    v31 = 0;
  }

  if ((v1 & 0x20) == 0)
  {
    goto LABEL_76;
  }

LABEL_64:
  v32 = *(this + 8);
  v33 = LODWORD(v32);
  if (v32 == 0.0)
  {
    v33 = 0;
  }

  if ((v1 & 0x20000) != 0)
  {
LABEL_67:
    v34 = *(this + 20);
    v35 = LODWORD(v34);
    if (v34 == 0.0)
    {
      v35 = 0;
    }

    if ((v1 & 0x40000) != 0)
    {
      goto LABEL_70;
    }

LABEL_78:
    v37 = 0;
    return v3 ^ *&v2 ^ v5 ^ v6 ^ v8 ^ v10 ^ v12 ^ v14 ^ v16 ^ v18 ^ v20 ^ v22 ^ v24 ^ v26 ^ v28 ^ v30 ^ v31 ^ v33 ^ v35 ^ v37;
  }

LABEL_77:
  v35 = 0;
  if ((v1 & 0x40000) == 0)
  {
    goto LABEL_78;
  }

LABEL_70:
  v36 = *(this + 21);
  v37 = LODWORD(v36);
  if (v36 == 0.0)
  {
    v37 = 0;
  }

  return v3 ^ *&v2 ^ v5 ^ v6 ^ v8 ^ v10 ^ v12 ^ v14 ^ v16 ^ v18 ^ v20 ^ v22 ^ v24 ^ v26 ^ v28 ^ v30 ^ v31 ^ v33 ^ v35 ^ v37;
}

void CMMsl::TapAccept::~TapAccept(CMMsl::TapAccept *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::TapAccept::TapAccept(uint64_t this, const CMMsl::TapAccept *a2)
{
  *this = off_100422520;
  *(this + 36) = -1;
  *(this + 44) = 0;
  v2 = *(a2 + 44);
  if ((v2 & 2) != 0)
  {
    v4 = *(a2 + 2);
    v3 = 2;
    *(this + 44) = 2;
    *(this + 16) = v4;
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
    v5 = *(a2 + 6);
    v3 |= 4u;
    *(this + 44) = v3;
    *(this + 24) = v5;
    v2 = *(a2 + 44);
  }

LABEL_6:
  if ((v2 & 0x20) != 0)
  {
    v6 = *(a2 + 9);
    v3 |= 0x20u;
    *(this + 44) = v3;
    *(this + 36) = v6;
    v2 = *(a2 + 44);
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

  v7 = *(a2 + 8);
  v3 |= 0x10u;
  *(this + 44) = v3;
  *(this + 32) = v7;
  v2 = *(a2 + 44);
  if ((v2 & 8) == 0)
  {
LABEL_9:
    if ((v2 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

LABEL_14:
  v8 = *(a2 + 7);
  v3 |= 8u;
  *(this + 44) = v3;
  *(this + 28) = v8;
  v2 = *(a2 + 44);
  if ((v2 & 1) == 0)
  {
LABEL_10:
    if ((v2 & 0x40) == 0)
    {
      return this;
    }

LABEL_16:
    v10 = *(a2 + 10);
    *(this + 44) = v3 | 0x40;
    *(this + 40) = v10;
    return this;
  }

LABEL_15:
  v9 = *(a2 + 1);
  v3 |= 1u;
  *(this + 44) = v3;
  *(this + 8) = v9;
  if ((*(a2 + 44) & 0x40) != 0)
  {
    goto LABEL_16;
  }

  return this;
}

uint64_t CMMsl::TapAccept::operator=(uint64_t a1, const CMMsl::TapAccept *a2)
{
  if (a1 != a2)
  {
    CMMsl::TapAccept::TapAccept(&v8, a2);
    v3 = *(a1 + 44);
    *(a1 + 44) = v13;
    v13 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v10;
    v10 = v4;
    v5 = *(a1 + 28);
    *(a1 + 28) = v11;
    v11 = v5;
    v6 = *(a1 + 8);
    *(a1 + 8) = v9;
    v9 = v6;
    *&v6 = *(a1 + 36);
    *(a1 + 36) = v12;
    v12 = v6;
    PB::Base::~Base(&v8);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::TapAccept *a2, CMMsl::TapAccept *a3)
{
  v3 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v3;
  v4 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v5;
  LODWORD(v4) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v4;
  LODWORD(v4) = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v4;
  v6 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v6;
  result = *(a2 + 36);
  v8 = *(this + 36);
  *(this + 36) = result;
  *(a2 + 36) = v8;
  return result;
}

double CMMsl::TapAccept::TapAccept(uint64_t a1, uint64_t a2)
{
  *a1 = off_100422520;
  *(a1 + 36) = -1;
  *(a1 + 44) = *(a2 + 44);
  *(a2 + 44) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 36);
  *(a1 + 36) = result;
  return result;
}

{
  *a1 = off_100422520;
  *(a1 + 36) = -1;
  *(a1 + 44) = *(a2 + 44);
  *(a2 + 44) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 36);
  *(a1 + 36) = result;
  return result;
}

uint64_t CMMsl::TapAccept::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v9 = off_100422520;
    v3 = *(a2 + 44);
    *(a2 + 44) = 0;
    v4 = *(a2 + 24);
    v14 = *(a1 + 44);
    v11 = *(a1 + 24);
    v5 = *(a1 + 28);
    *(a1 + 28) = *(a2 + 28);
    v12 = v5;
    v6 = *(a1 + 8);
    *(a1 + 8) = *(a2 + 8);
    v10 = v6;
    *&v6 = *(a1 + 36);
    v7 = *(a2 + 36);
    *(a1 + 24) = v4;
    *(a1 + 44) = v3;
    *(a1 + 36) = v7;
    v13 = v6;
    PB::Base::~Base(&v9);
  }

  return a1;
}

uint64_t CMMsl::TapAccept::formatText(CMMsl::TapAccept *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 44);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(a2, "location", *(this + 6));
    v5 = *(this + 44);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(this + 44) & 8) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "peakHalfWidth", *(this + 7));
  v5 = *(this + 44);
  if ((v5 & 0x10) == 0)
  {
LABEL_4:
    if ((v5 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  PB::TextFormatter::format(a2, "peakMagnitude", *(this + 8));
  v5 = *(this + 44);
  if ((v5 & 1) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  PB::TextFormatter::format(a2, "peakTime", *(this + 1));
  v5 = *(this + 44);
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
  PB::TextFormatter::format(a2, "tapAcceptStatus", *(this + 9));
  v5 = *(this + 44);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  PB::TextFormatter::format(a2, "tapCounter", *(this + 10));
  if ((*(this + 44) & 2) != 0)
  {
LABEL_8:
    PB::TextFormatter::format(a2, "timestamp", *(this + 2));
  }

LABEL_9:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::TapAccept::readFrom(CMMsl::TapAccept *this, PB::Reader *a2)
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
            goto LABEL_113;
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
            *(this + 44) |= 2u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
LABEL_59:
              *(a2 + 24) = 1;
              goto LABEL_109;
            }

            *(this + 2) = *(*a2 + v2);
LABEL_92:
            v2 = *(a2 + 1) + 8;
LABEL_93:
            *(a2 + 1) = v2;
            goto LABEL_109;
          case 2:
            *(this + 44) |= 4u;
            v39 = *(a2 + 1);
            v2 = *(a2 + 2);
            v40 = *a2;
            if (v39 > 0xFFFFFFFFFFFFFFF5 || v39 + 10 > v2)
            {
              v61 = 0;
              v62 = 0;
              v43 = 0;
              if (v2 <= v39)
              {
                v2 = *(a2 + 1);
              }

              v63 = v2 - v39;
              v64 = (v40 + v39);
              v65 = v39 + 1;
              while (1)
              {
                if (!v63)
                {
                  LODWORD(v43) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_108;
                }

                v66 = v65;
                v67 = *v64;
                *(a2 + 1) = v66;
                v43 |= (v67 & 0x7F) << v61;
                if ((v67 & 0x80) == 0)
                {
                  break;
                }

                v61 += 7;
                --v63;
                ++v64;
                v65 = v66 + 1;
                v14 = v62++ > 8;
                if (v14)
                {
                  LODWORD(v43) = 0;
                  goto LABEL_107;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v43) = 0;
              }

LABEL_107:
              v2 = v66;
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

LABEL_108:
            *(this + 6) = v43;
            goto LABEL_109;
          case 3:
            *(this + 44) |= 0x20u;
            v23 = *(a2 + 1);
            v2 = *(a2 + 2);
            v24 = *a2;
            if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
            {
              v54 = 0;
              v55 = 0;
              v27 = 0;
              if (v2 <= v23)
              {
                v2 = *(a2 + 1);
              }

              v56 = v2 - v23;
              v57 = (v24 + v23);
              v58 = v23 + 1;
              while (1)
              {
                if (!v56)
                {
                  LODWORD(v27) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_104;
                }

                v59 = v58;
                v60 = *v57;
                *(a2 + 1) = v59;
                v27 |= (v60 & 0x7F) << v54;
                if ((v60 & 0x80) == 0)
                {
                  break;
                }

                v54 += 7;
                --v56;
                ++v57;
                v58 = v59 + 1;
                v14 = v55++ > 8;
                if (v14)
                {
                  LODWORD(v27) = 0;
                  goto LABEL_103;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v27) = 0;
              }

LABEL_103:
              v2 = v59;
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

LABEL_104:
            *(this + 9) = v27;
            goto LABEL_109;
        }
      }

      else if (v22 > 5)
      {
        if (v22 == 6)
        {
          *(this + 44) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_59;
          }

          *(this + 1) = *(*a2 + v2);
          goto LABEL_92;
        }

        if (v22 == 7)
        {
          *(this + 44) |= 0x40u;
          v31 = *(a2 + 1);
          v2 = *(a2 + 2);
          v32 = *a2;
          if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
          {
            v47 = 0;
            v48 = 0;
            v35 = 0;
            if (v2 <= v31)
            {
              v2 = *(a2 + 1);
            }

            v49 = v2 - v31;
            v50 = (v32 + v31);
            v51 = v31 + 1;
            while (1)
            {
              if (!v49)
              {
                LODWORD(v35) = 0;
                *(a2 + 24) = 1;
                goto LABEL_100;
              }

              v52 = v51;
              v53 = *v50;
              *(a2 + 1) = v52;
              v35 |= (v53 & 0x7F) << v47;
              if ((v53 & 0x80) == 0)
              {
                break;
              }

              v47 += 7;
              --v49;
              ++v50;
              v51 = v52 + 1;
              v14 = v48++ > 8;
              if (v14)
              {
                LODWORD(v35) = 0;
                goto LABEL_99;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v35) = 0;
            }

LABEL_99:
            v2 = v52;
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

LABEL_100:
          *(this + 10) = v35;
          goto LABEL_109;
        }
      }

      else
      {
        if (v22 == 4)
        {
          *(this + 44) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_59;
          }

          *(this + 8) = *(*a2 + v2);
          goto LABEL_56;
        }

        if (v22 == 5)
        {
          *(this + 44) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_59;
          }

          *(this + 7) = *(*a2 + v2);
LABEL_56:
          v2 = *(a2 + 1) + 4;
          goto LABEL_93;
        }
      }

      if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
      {
        v68 = 0;
        return v68 & 1;
      }

      v2 = *(a2 + 1);
LABEL_109:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_113:
  v68 = v4 ^ 1;
  return v68 & 1;
}

uint64_t CMMsl::TapAccept::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 44);
  if ((v4 & 2) != 0)
  {
    this = PB::Writer::write(a2, *(this + 16), 1u);
    v4 = *(v3 + 44);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(this + 44) & 4) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::writeVarInt(a2, *(v3 + 24), 2u);
  v4 = *(v3 + 44);
  if ((v4 & 0x20) == 0)
  {
LABEL_4:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  this = PB::Writer::writeVarInt(a2, *(v3 + 36), 3u);
  v4 = *(v3 + 44);
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
  this = PB::Writer::write(a2, *(v3 + 32), 4u);
  v4 = *(v3 + 44);
  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    this = PB::Writer::write(a2, *(v3 + 8), 6u);
    if ((*(v3 + 44) & 0x40) == 0)
    {
      return this;
    }

    goto LABEL_15;
  }

LABEL_13:
  this = PB::Writer::write(a2, *(v3 + 28), 5u);
  v4 = *(v3 + 44);
  if (v4)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v4 & 0x40) == 0)
  {
    return this;
  }

LABEL_15:
  v5 = *(v3 + 40);

  return PB::Writer::writeVarInt(a2, v5, 7u);
}

uint64_t CMMsl::TapAccept::hash_value(CMMsl::TapAccept *this)
{
  if ((*(this + 44) & 2) != 0)
  {
    v1 = *(this + 2);
    if (v1 == 0.0)
    {
      v1 = 0.0;
    }

    if ((*(this + 44) & 4) != 0)
    {
LABEL_3:
      v2 = *(this + 6);
      if ((*(this + 44) & 0x20) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
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
  if ((*(this + 44) & 0x20) != 0)
  {
LABEL_4:
    v3 = *(this + 9);
    if ((*(this + 44) & 0x10) != 0)
    {
      goto LABEL_5;
    }

LABEL_20:
    v5 = 0;
    if ((*(this + 44) & 8) != 0)
    {
      goto LABEL_8;
    }

LABEL_21:
    v7 = 0;
    if (*(this + 44))
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_19:
  v3 = 0;
  if ((*(this + 44) & 0x10) == 0)
  {
    goto LABEL_20;
  }

LABEL_5:
  v4 = *(this + 8);
  v5 = LODWORD(v4);
  if (v4 == 0.0)
  {
    v5 = 0;
  }

  if ((*(this + 44) & 8) == 0)
  {
    goto LABEL_21;
  }

LABEL_8:
  v6 = *(this + 7);
  v7 = LODWORD(v6);
  if (v6 == 0.0)
  {
    v7 = 0;
  }

  if (*(this + 44))
  {
LABEL_11:
    v8 = *(this + 1);
    if (v8 == 0.0)
    {
      v8 = 0.0;
    }

    if ((*(this + 44) & 0x40) != 0)
    {
      goto LABEL_14;
    }

LABEL_23:
    v9 = 0;
    return v2 ^ *&v1 ^ v3 ^ v5 ^ v7 ^ *&v8 ^ v9;
  }

LABEL_22:
  v8 = 0.0;
  if ((*(this + 44) & 0x40) == 0)
  {
    goto LABEL_23;
  }

LABEL_14:
  v9 = *(this + 10);
  return v2 ^ *&v1 ^ v3 ^ v5 ^ v7 ^ *&v8 ^ v9;
}

void CMMsl::TapDetect::~TapDetect(CMMsl::TapDetect *this)
{
  PB::Base::~Base(this);

  operator delete();
}

double CMMsl::TapDetect::TapDetect(CMMsl::TapDetect *this, const CMMsl::TapDetect *a2)
{
  *this = off_100422558;
  *(this + 7) = -2;
  result = NAN;
  *(this + 52) = xmmword_10037FF30;
  v3 = *(a2 + 32);
  if ((v3 & 2) != 0)
  {
    result = *(a2 + 2);
    v4 = 2;
    *(this + 32) = 2;
    *(this + 2) = result;
    v3 = *(a2 + 32);
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v4 = 0;
  if ((v3 & 0x20) != 0)
  {
LABEL_5:
    v5 = *(a2 + 9);
    v4 |= 0x20u;
    *(this + 32) = v4;
    *(this + 9) = v5;
    v3 = *(a2 + 32);
  }

LABEL_6:
  if ((v3 & 0x400) != 0)
  {
    v6 = *(a2 + 14);
    v4 |= 0x400u;
    *(this + 32) = v4;
    *(this + 14) = v6;
    v3 = *(a2 + 32);
    if ((v3 & 4) == 0)
    {
LABEL_8:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_19;
    }
  }

  else if ((v3 & 4) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 6);
  v4 |= 4u;
  *(this + 32) = v4;
  *(this + 6) = v7;
  v3 = *(a2 + 32);
  if ((v3 & 0x10) == 0)
  {
LABEL_9:
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  v8 = *(a2 + 8);
  v4 |= 0x10u;
  *(this + 32) = v4;
  *(this + 8) = v8;
  v3 = *(a2 + 32);
  if ((v3 & 0x200) == 0)
  {
LABEL_10:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  v9 = *(a2 + 13);
  v4 |= 0x200u;
  *(this + 32) = v4;
  *(this + 13) = v9;
  v3 = *(a2 + 32);
  if ((v3 & 0x800) == 0)
  {
LABEL_11:
    if ((v3 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_21:
  v10 = *(a2 + 15);
  v4 |= 0x800u;
  *(this + 32) = v4;
  *(this + 15) = v10;
  v3 = *(a2 + 32);
  if ((v3 & 8) == 0)
  {
LABEL_12:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_23;
  }

LABEL_22:
  v11 = *(a2 + 7);
  v4 |= 8u;
  *(this + 32) = v4;
  *(this + 7) = v11;
  v3 = *(a2 + 32);
  if ((v3 & 0x100) == 0)
  {
LABEL_13:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_24;
  }

LABEL_23:
  LODWORD(result) = *(a2 + 12);
  v4 |= 0x100u;
  *(this + 32) = v4;
  *(this + 12) = LODWORD(result);
  v3 = *(a2 + 32);
  if ((v3 & 0x80) == 0)
  {
LABEL_14:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_25;
  }

LABEL_24:
  LODWORD(result) = *(a2 + 11);
  v4 |= 0x80u;
  *(this + 32) = v4;
  *(this + 11) = LODWORD(result);
  v3 = *(a2 + 32);
  if ((v3 & 0x40) == 0)
  {
LABEL_15:
    if ((v3 & 1) == 0)
    {
      return result;
    }

LABEL_26:
    result = *(a2 + 1);
    *(this + 32) = v4 | 1;
    *(this + 1) = result;
    return result;
  }

LABEL_25:
  LODWORD(result) = *(a2 + 10);
  v4 |= 0x40u;
  *(this + 32) = v4;
  *(this + 10) = LODWORD(result);
  if (*(a2 + 32))
  {
    goto LABEL_26;
  }

  return result;
}

CMMsl *CMMsl::TapDetect::operator=(CMMsl *a1, const CMMsl::TapDetect *a2)
{
  if (a1 != a2)
  {
    CMMsl::TapDetect::TapDetect(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::TapDetect *a2, CMMsl::TapDetect *a3)
{
  v3 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v3;
  v4 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v5;
  v6 = *(this + 52);
  *(this + 52) = *(a2 + 52);
  *(a2 + 52) = v6;
  v7 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v7;
  v8 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v8;
  v9 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v9;
  LODWORD(v4) = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v4;
  LODWORD(v4) = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v4;
  LODWORD(v4) = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v4;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  return result;
}

double CMMsl::TapDetect::TapDetect(uint64_t a1, uint64_t a2)
{
  *a1 = off_100422558;
  *(a1 + 28) = -2;
  *(a1 + 52) = 0x100000001;
  *(a1 + 60) = -2;
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 40) = *(a2 + 40);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

CMMsl *CMMsl::TapDetect::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::TapDetect::TapDetect(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::TapDetect::formatText(CMMsl::TapDetect *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 32);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(a2, "axis", *(this + 6));
    v5 = *(this + 32);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "clippedPeakType", *(this + 7));
  v5 = *(this + 32);
  if ((v5 & 0x10) == 0)
  {
LABEL_4:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  PB::TextFormatter::format(a2, "direction", *(this + 8));
  v5 = *(this + 32);
  if ((v5 & 0x20) == 0)
  {
LABEL_5:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(a2, "location", *(this + 9));
  v5 = *(this + 32);
  if ((v5 & 0x40) == 0)
  {
LABEL_6:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(a2, "peakHalfWidth", *(this + 10));
  v5 = *(this + 32);
  if ((v5 & 0x80) == 0)
  {
LABEL_7:
    if ((v5 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(a2, "peakMagnitude", *(this + 11));
  v5 = *(this + 32);
  if ((v5 & 1) == 0)
  {
LABEL_8:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(a2, "peakTime", *(this + 1));
  v5 = *(this + 32);
  if ((v5 & 0x100) == 0)
  {
LABEL_9:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(a2, "peakValue", *(this + 12));
  v5 = *(this + 32);
  if ((v5 & 0x200) == 0)
  {
LABEL_10:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  PB::TextFormatter::format(a2, "strideDirection", *(this + 13));
  v5 = *(this + 32);
  if ((v5 & 0x400) == 0)
  {
LABEL_11:
    if ((v5 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(a2, "tapDetectStatus", *(this + 14));
  v5 = *(this + 32);
  if ((v5 & 2) == 0)
  {
LABEL_12:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_27:
  PB::TextFormatter::format(a2, "timestamp", *(this + 2));
  if ((*(this + 32) & 0x800) != 0)
  {
LABEL_13:
    PB::TextFormatter::format(a2, "widthCalculationMethod", *(this + 15));
  }

LABEL_14:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::TapDetect::readFrom(CMMsl::TapDetect *this, PB::Reader *a2)
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
            goto LABEL_202;
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
      if ((v10 >> 3) > 6)
      {
        if (v22 > 9)
        {
          switch(v22)
          {
            case 0xA:
              *(this + 32) |= 0x80u;
              v2 = *(a2 + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
              {
LABEL_101:
                *(a2 + 24) = 1;
                goto LABEL_198;
              }

              *(this + 11) = *(*a2 + v2);
              goto LABEL_161;
            case 0xB:
              *(this + 32) |= 0x40u;
              v2 = *(a2 + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
              {
                goto LABEL_101;
              }

              *(this + 10) = *(*a2 + v2);
LABEL_161:
              v2 = *(a2 + 1) + 4;
              goto LABEL_162;
            case 0xC:
              *(this + 32) |= 1u;
              v2 = *(a2 + 1);
              if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
              {
                goto LABEL_101;
              }

              *(this + 1) = *(*a2 + v2);
LABEL_60:
              v2 = *(a2 + 1) + 8;
LABEL_162:
              *(a2 + 1) = v2;
              goto LABEL_198;
          }
        }

        else
        {
          switch(v22)
          {
            case 7:
              *(this + 32) |= 0x800u;
              v39 = *(a2 + 1);
              v2 = *(a2 + 2);
              v40 = *a2;
              if (v39 > 0xFFFFFFFFFFFFFFF5 || v39 + 10 > v2)
              {
                v93 = 0;
                v94 = 0;
                v43 = 0;
                if (v2 <= v39)
                {
                  v2 = *(a2 + 1);
                }

                v95 = v2 - v39;
                v96 = (v40 + v39);
                v97 = v39 + 1;
                while (1)
                {
                  if (!v95)
                  {
                    LODWORD(v43) = 0;
                    *(a2 + 24) = 1;
                    goto LABEL_181;
                  }

                  v98 = v97;
                  v99 = *v96;
                  *(a2 + 1) = v98;
                  v43 |= (v99 & 0x7F) << v93;
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
                    LODWORD(v43) = 0;
                    goto LABEL_180;
                  }
                }

                if (*(a2 + 24))
                {
                  LODWORD(v43) = 0;
                }

LABEL_180:
                v2 = v98;
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

LABEL_181:
              *(this + 15) = v43;
              goto LABEL_198;
            case 8:
              *(this + 32) |= 8u;
              v63 = *(a2 + 1);
              v2 = *(a2 + 2);
              v64 = *a2;
              if (v63 > 0xFFFFFFFFFFFFFFF5 || v63 + 10 > v2)
              {
                v114 = 0;
                v115 = 0;
                v67 = 0;
                if (v2 <= v63)
                {
                  v2 = *(a2 + 1);
                }

                v116 = v2 - v63;
                v117 = (v64 + v63);
                v118 = v63 + 1;
                while (1)
                {
                  if (!v116)
                  {
                    LODWORD(v67) = 0;
                    *(a2 + 24) = 1;
                    goto LABEL_193;
                  }

                  v119 = v118;
                  v120 = *v117;
                  *(a2 + 1) = v119;
                  v67 |= (v120 & 0x7F) << v114;
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
                    LODWORD(v67) = 0;
                    goto LABEL_192;
                  }
                }

                if (*(a2 + 24))
                {
                  LODWORD(v67) = 0;
                }

LABEL_192:
                v2 = v119;
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

LABEL_193:
              *(this + 7) = v67;
              goto LABEL_198;
            case 9:
              *(this + 32) |= 0x100u;
              v2 = *(a2 + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
              {
                goto LABEL_101;
              }

              *(this + 12) = *(*a2 + v2);
              goto LABEL_161;
          }
        }
      }

      else if (v22 > 3)
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
              v100 = 0;
              v101 = 0;
              v51 = 0;
              if (v2 <= v47)
              {
                v2 = *(a2 + 1);
              }

              v102 = v2 - v47;
              v103 = (v48 + v47);
              v104 = v47 + 1;
              while (1)
              {
                if (!v102)
                {
                  LODWORD(v51) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_185;
                }

                v105 = v104;
                v106 = *v103;
                *(a2 + 1) = v105;
                v51 |= (v106 & 0x7F) << v100;
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
                  LODWORD(v51) = 0;
                  goto LABEL_184;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v51) = 0;
              }

LABEL_184:
              v2 = v105;
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

LABEL_185:
            *(this + 6) = v51;
            goto LABEL_198;
          case 5:
            *(this + 32) |= 0x10u;
            v71 = *(a2 + 1);
            v2 = *(a2 + 2);
            v72 = *a2;
            if (v71 > 0xFFFFFFFFFFFFFFF5 || v71 + 10 > v2)
            {
              v121 = 0;
              v122 = 0;
              v75 = 0;
              if (v2 <= v71)
              {
                v2 = *(a2 + 1);
              }

              v123 = v2 - v71;
              v124 = (v72 + v71);
              v125 = v71 + 1;
              while (1)
              {
                if (!v123)
                {
                  LODWORD(v75) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_197;
                }

                v126 = v125;
                v127 = *v124;
                *(a2 + 1) = v126;
                v75 |= (v127 & 0x7F) << v121;
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
                  LODWORD(v75) = 0;
                  goto LABEL_196;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v75) = 0;
              }

LABEL_196:
              v2 = v126;
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
                v2 = v77;
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
                  LODWORD(v75) = 0;
                  break;
                }
              }
            }

LABEL_197:
            *(this + 8) = v75;
            goto LABEL_198;
          case 6:
            *(this + 32) |= 0x200u;
            v31 = *(a2 + 1);
            v2 = *(a2 + 2);
            v32 = *a2;
            if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
            {
              v86 = 0;
              v87 = 0;
              v35 = 0;
              if (v2 <= v31)
              {
                v2 = *(a2 + 1);
              }

              v88 = v2 - v31;
              v89 = (v32 + v31);
              v90 = v31 + 1;
              while (1)
              {
                if (!v88)
                {
                  LODWORD(v35) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_177;
                }

                v91 = v90;
                v92 = *v89;
                *(a2 + 1) = v91;
                v35 |= (v92 & 0x7F) << v86;
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
                  LODWORD(v35) = 0;
                  goto LABEL_176;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v35) = 0;
              }

LABEL_176:
              v2 = v91;
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

LABEL_177:
            *(this + 13) = v35;
            goto LABEL_198;
        }
      }

      else
      {
        switch(v22)
        {
          case 1:
            *(this + 32) |= 2u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
              goto LABEL_101;
            }

            *(this + 2) = *(*a2 + v2);
            goto LABEL_60;
          case 2:
            *(this + 32) |= 0x20u;
            v55 = *(a2 + 1);
            v2 = *(a2 + 2);
            v56 = *a2;
            if (v55 > 0xFFFFFFFFFFFFFFF5 || v55 + 10 > v2)
            {
              v107 = 0;
              v108 = 0;
              v59 = 0;
              if (v2 <= v55)
              {
                v2 = *(a2 + 1);
              }

              v109 = v2 - v55;
              v110 = (v56 + v55);
              v111 = v55 + 1;
              while (1)
              {
                if (!v109)
                {
                  LODWORD(v59) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_189;
                }

                v112 = v111;
                v113 = *v110;
                *(a2 + 1) = v112;
                v59 |= (v113 & 0x7F) << v107;
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
                  LODWORD(v59) = 0;
                  goto LABEL_188;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v59) = 0;
              }

LABEL_188:
              v2 = v112;
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

LABEL_189:
            *(this + 9) = v59;
            goto LABEL_198;
          case 3:
            *(this + 32) |= 0x400u;
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
                v2 = *(a2 + 1);
              }

              v81 = v2 - v23;
              v82 = (v24 + v23);
              v83 = v23 + 1;
              while (1)
              {
                if (!v81)
                {
                  LODWORD(v27) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_173;
                }

                v84 = v83;
                v85 = *v82;
                *(a2 + 1) = v84;
                v27 |= (v85 & 0x7F) << v79;
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
                  LODWORD(v27) = 0;
                  goto LABEL_172;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v27) = 0;
              }

LABEL_172:
              v2 = v84;
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

LABEL_173:
            *(this + 14) = v27;
            goto LABEL_198;
        }
      }

      if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
      {
        v128 = 0;
        return v128 & 1;
      }

      v2 = *(a2 + 1);
LABEL_198:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_202:
  v128 = v4 ^ 1;
  return v128 & 1;
}

uint64_t CMMsl::TapDetect::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 64);
  if ((v4 & 2) != 0)
  {
    this = PB::Writer::write(a2, *(this + 16), 1u);
    v4 = *(v3 + 64);
    if ((v4 & 0x20) == 0)
    {
LABEL_3:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v4 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::writeVarInt(a2, *(v3 + 36), 2u);
  v4 = *(v3 + 64);
  if ((v4 & 0x400) == 0)
  {
LABEL_4:
    if ((v4 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = PB::Writer::writeVarInt(a2, *(v3 + 56), 3u);
  v4 = *(v3 + 64);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = PB::Writer::writeVarInt(a2, *(v3 + 24), 4u);
  v4 = *(v3 + 64);
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = PB::Writer::writeVarInt(a2, *(v3 + 32), 5u);
  v4 = *(v3 + 64);
  if ((v4 & 0x200) == 0)
  {
LABEL_7:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = PB::Writer::writeVarInt(a2, *(v3 + 52), 6u);
  v4 = *(v3 + 64);
  if ((v4 & 0x800) == 0)
  {
LABEL_8:
    if ((v4 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = PB::Writer::writeVarInt(a2, *(v3 + 60), 7u);
  v4 = *(v3 + 64);
  if ((v4 & 8) == 0)
  {
LABEL_9:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = PB::Writer::writeVarInt(a2, *(v3 + 28), 8u);
  v4 = *(v3 + 64);
  if ((v4 & 0x100) == 0)
  {
LABEL_10:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = PB::Writer::write(a2, *(v3 + 48), 9u);
  v4 = *(v3 + 64);
  if ((v4 & 0x80) == 0)
  {
LABEL_11:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_12;
    }

LABEL_24:
    this = PB::Writer::write(a2, *(v3 + 40), 0xBu);
    if ((*(v3 + 64) & 1) == 0)
    {
      return this;
    }

    goto LABEL_25;
  }

LABEL_23:
  this = PB::Writer::write(a2, *(v3 + 44), 0xAu);
  v4 = *(v3 + 64);
  if ((v4 & 0x40) != 0)
  {
    goto LABEL_24;
  }

LABEL_12:
  if ((v4 & 1) == 0)
  {
    return this;
  }

LABEL_25:
  v5 = *(v3 + 8);

  return PB::Writer::write(a2, v5, 0xCu);
}

uint64_t CMMsl::TapDetect::hash_value(CMMsl::TapDetect *this)
{
  v1 = *(this + 32);
  if ((v1 & 2) != 0)
  {
    v2 = *(this + 2);
    if (v2 == 0.0)
    {
      v2 = 0.0;
    }

    if ((v1 & 0x20) != 0)
    {
LABEL_3:
      v3 = *(this + 9);
      if ((*(this + 32) & 0x400) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
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
  if ((*(this + 32) & 0x400) != 0)
  {
LABEL_4:
    v4 = *(this + 14);
    if ((v1 & 4) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_27;
  }

LABEL_26:
  v4 = 0;
  if ((v1 & 4) != 0)
  {
LABEL_5:
    v5 = *(this + 6);
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_27:
  v5 = 0;
  if ((v1 & 0x10) != 0)
  {
LABEL_6:
    v6 = *(this + 8);
    if ((*(this + 32) & 0x200) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_29;
  }

LABEL_28:
  v6 = 0;
  if ((*(this + 32) & 0x200) != 0)
  {
LABEL_7:
    v7 = *(this + 13);
    if ((*(this + 32) & 0x800) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_29:
  v7 = 0;
  if ((*(this + 32) & 0x800) != 0)
  {
LABEL_8:
    v8 = *(this + 15);
    if ((v1 & 8) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_30:
  v8 = 0;
  if ((v1 & 8) != 0)
  {
LABEL_9:
    v9 = *(this + 7);
    if ((*(this + 32) & 0x100) != 0)
    {
      goto LABEL_10;
    }

LABEL_32:
    v11 = 0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_13;
    }

LABEL_33:
    v13 = 0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_31:
  v9 = 0;
  if ((*(this + 32) & 0x100) == 0)
  {
    goto LABEL_32;
  }

LABEL_10:
  v10 = *(this + 12);
  v11 = LODWORD(v10);
  if (v10 == 0.0)
  {
    v11 = 0;
  }

  if ((v1 & 0x80) == 0)
  {
    goto LABEL_33;
  }

LABEL_13:
  v12 = *(this + 11);
  v13 = LODWORD(v12);
  if (v12 == 0.0)
  {
    v13 = 0;
  }

  if ((v1 & 0x40) != 0)
  {
LABEL_16:
    v14 = *(this + 10);
    v15 = LODWORD(v14);
    if (v14 == 0.0)
    {
      v15 = 0;
    }

    if (v1)
    {
      goto LABEL_19;
    }

LABEL_35:
    v16 = 0.0;
    return v3 ^ *&v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v11 ^ v13 ^ v15 ^ *&v16;
  }

LABEL_34:
  v15 = 0;
  if ((v1 & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_19:
  v16 = *(this + 1);
  if (v16 == 0.0)
  {
    v16 = 0.0;
  }

  return v3 ^ *&v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v11 ^ v13 ^ v15 ^ *&v16;
}

void CMMsl::TempestPoCAuxiliaryDeviceMotion::~TempestPoCAuxiliaryDeviceMotion(CMMsl::TempestPoCAuxiliaryDeviceMotion *this)
{
  *this = off_100422590;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
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
  CMMsl::TempestPoCAuxiliaryDeviceMotion::~TempestPoCAuxiliaryDeviceMotion(this);

  operator delete();
}

CMMsl::TempestPoCAuxiliaryDeviceMotion *CMMsl::TempestPoCAuxiliaryDeviceMotion::TempestPoCAuxiliaryDeviceMotion(CMMsl::TempestPoCAuxiliaryDeviceMotion *this, const CMMsl::TempestPoCAuxiliaryDeviceMotion *a2)
{
  *(this + 1) = 0;
  *this = off_100422590;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 10) = 0;
  *(this + 26) = 0;
  if (*(a2 + 10))
  {
    operator new();
  }

  if (this != a2)
  {
    sub_100035D1C(this + 1, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 2);
  }

  v4 = *(a2 + 52);
  if ((v4 & 0x80) != 0)
  {
    v7 = *(a2 + 23);
    *(this + 52) |= 0x80u;
    *(this + 23) = v7;
    v4 = *(a2 + 52);
    if ((v4 & 0x40) == 0)
    {
LABEL_7:
      if ((v4 & 0x100) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_19;
    }
  }

  else if ((v4 & 0x40) == 0)
  {
    goto LABEL_7;
  }

  v8 = *(a2 + 22);
  *(this + 52) |= 0x40u;
  *(this + 22) = v8;
  v4 = *(a2 + 52);
  if ((v4 & 0x100) == 0)
  {
LABEL_8:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  v9 = *(a2 + 24);
  *(this + 52) |= 0x100u;
  *(this + 24) = v9;
  v4 = *(a2 + 52);
  if ((v4 & 0x200) == 0)
  {
LABEL_9:
    if ((v4 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  v10 = *(a2 + 25);
  *(this + 52) |= 0x200u;
  *(this + 25) = v10;
  v4 = *(a2 + 52);
  if ((v4 & 2) == 0)
  {
LABEL_10:
    if ((v4 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  v11 = *(a2 + 5);
  *(this + 52) |= 2u;
  *(this + 5) = v11;
  v4 = *(a2 + 52);
  if ((v4 & 4) == 0)
  {
LABEL_11:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_22:
  v12 = *(a2 + 6);
  *(this + 52) |= 4u;
  *(this + 6) = v12;
  v4 = *(a2 + 52);
  if ((v4 & 0x10) == 0)
  {
LABEL_12:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_24;
  }

LABEL_23:
  v13 = *(a2 + 8);
  *(this + 52) |= 0x10u;
  *(this + 8) = v13;
  v4 = *(a2 + 52);
  if ((v4 & 0x20) == 0)
  {
LABEL_13:
    if ((v4 & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_25:
    v15 = *(a2 + 4);
    *(this + 52) |= 1u;
    *(this + 4) = v15;
    if ((*(a2 + 52) & 8) == 0)
    {
      return this;
    }

    goto LABEL_15;
  }

LABEL_24:
  v14 = *(a2 + 9);
  *(this + 52) |= 0x20u;
  *(this + 9) = v14;
  v4 = *(a2 + 52);
  if (v4)
  {
    goto LABEL_25;
  }

LABEL_14:
  if ((v4 & 8) != 0)
  {
LABEL_15:
    v5 = *(a2 + 7);
    *(this + 52) |= 8u;
    *(this + 7) = v5;
  }

  return this;
}

CMMsl *CMMsl::TempestPoCAuxiliaryDeviceMotion::operator=(CMMsl *a1, const CMMsl::TempestPoCAuxiliaryDeviceMotion *a2)
{
  if (a1 != a2)
  {
    CMMsl::TempestPoCAuxiliaryDeviceMotion::TempestPoCAuxiliaryDeviceMotion(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::TempestPoCAuxiliaryDeviceMotion::~TempestPoCAuxiliaryDeviceMotion(v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::TempestPoCAuxiliaryDeviceMotion *a2, CMMsl::TempestPoCAuxiliaryDeviceMotion *a3)
{
  v3 = *(this + 26);
  *(this + 26) = *(a2 + 26);
  *(a2 + 26) = v3;
  v4 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v4;
  v5 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v5;
  v6 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v6;
  v7 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v7;
  v8 = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = v8;
  LODWORD(v7) = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v7;
  LODWORD(v7) = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v7;
  v9 = *(this + 25);
  *(this + 25) = *(a2 + 25);
  *(a2 + 25) = v9;
  v10 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v10;
  v11 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v11;
  v12 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v12;
  v13 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v13;
  v14 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v14;
  result = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = result;
  return result;
}

uint64_t CMMsl::TempestPoCAuxiliaryDeviceMotion::TempestPoCAuxiliaryDeviceMotion(uint64_t a1, uint64_t a2)
{
  *a1 = off_100422590;
  *(a1 + 8) = 0;
  v4 = a1 + 8;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 80) = 0;
  *(a1 + 104) = *(a2 + 104);
  *(a2 + 104) = 0;
  v5 = *(a2 + 80);
  *(a2 + 80) = 0;
  v6 = *(a1 + 80);
  *(a1 + 80) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  sub_1002A2DD0(v4, (a2 + 8));
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

CMMsl *CMMsl::TempestPoCAuxiliaryDeviceMotion::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::TempestPoCAuxiliaryDeviceMotion::TempestPoCAuxiliaryDeviceMotion(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::TempestPoCAuxiliaryDeviceMotion::~TempestPoCAuxiliaryDeviceMotion(v5);
  }

  return a1;
}

uint64_t CMMsl::TempestPoCAuxiliaryDeviceMotion::formatText(CMMsl::TempestPoCAuxiliaryDeviceMotion *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 52))
  {
    PB::TextFormatter::format(a2, "auxiliaryIosTimeUncertainty", *(this + 4));
  }

  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(a2, "filteredAcceleration", v7);
  }

  v8 = *(this + 52);
  if ((v8 & 0x40) != 0)
  {
    PB::TextFormatter::format(a2, "quiescentMode", *(this + 22));
    v8 = *(this + 52);
    if ((v8 & 0x80) == 0)
    {
LABEL_7:
      if ((v8 & 2) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_23;
    }
  }

  else if ((v8 & 0x80) == 0)
  {
    goto LABEL_7;
  }

  PB::TextFormatter::format(a2, "quiescentNoise", *(this + 23));
  v8 = *(this + 52);
  if ((v8 & 2) == 0)
  {
LABEL_8:
    if ((v8 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(a2, "sensorTimeBeforeAlignment", *(this + 5));
  v8 = *(this + 52);
  if ((v8 & 4) == 0)
  {
LABEL_9:
    if ((v8 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(a2, "sentCftime", *(this + 6));
  v8 = *(this + 52);
  if ((v8 & 0x100) == 0)
  {
LABEL_10:
    if ((v8 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  PB::TextFormatter::format(a2, "sequenceNumber", *(this + 24));
  v8 = *(this + 52);
  if ((v8 & 8) == 0)
  {
LABEL_11:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(a2, "sourceIosTimeUncertainty", *(this + 7));
  v8 = *(this + 52);
  if ((v8 & 0x10) == 0)
  {
LABEL_12:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_27:
  PB::TextFormatter::format(a2, "sourceReceiveCftime", *(this + 8));
  if ((*(this + 52) & 0x20) != 0)
  {
LABEL_13:
    PB::TextFormatter::format(a2, "sourceReceiveSensorTimestamp", *(this + 9));
  }

LABEL_14:
  v9 = *(this + 10);
  if (v9)
  {
    (*(*v9 + 32))(v9, a2, "super");
  }

  if ((*(this + 52) & 0x200) != 0)
  {
    PB::TextFormatter::format(a2, "version", *(this + 25));
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::TempestPoCAuxiliaryDeviceMotion::readFrom(CMMsl::TempestPoCAuxiliaryDeviceMotion *this, PB::Reader *a2)
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
            goto LABEL_147;
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
        goto LABEL_147;
      }

      v23 = v10 >> 3;
      if ((v10 >> 3) > 6)
      {
        if (v23 > 9)
        {
          switch(v23)
          {
            case 0xA:
              *(this + 52) |= 0x20u;
              v38 = *(a2 + 1);
              if (v38 > 0xFFFFFFFFFFFFFFF7 || v38 + 8 > *(a2 + 2))
              {
                goto LABEL_139;
              }

              *(this + 9) = *(*a2 + v38);
              goto LABEL_97;
            case 0xB:
              *(this + 52) |= 1u;
              v65 = *(a2 + 1);
              if (v65 > 0xFFFFFFFFFFFFFFF7 || v65 + 8 > *(a2 + 2))
              {
                goto LABEL_139;
              }

              *(this + 4) = *(*a2 + v65);
              goto LABEL_97;
            case 0xC:
              *(this + 52) |= 8u;
              v27 = *(a2 + 1);
              if (v27 > 0xFFFFFFFFFFFFFFF7 || v27 + 8 > *(a2 + 2))
              {
                goto LABEL_139;
              }

              *(this + 7) = *(*a2 + v27);
              goto LABEL_97;
          }
        }

        else
        {
          switch(v23)
          {
            case 7:
              *(this + 52) |= 2u;
              v28 = *(a2 + 1);
              if (v28 > 0xFFFFFFFFFFFFFFF7 || v28 + 8 > *(a2 + 2))
              {
                goto LABEL_139;
              }

              *(this + 5) = *(*a2 + v28);
              goto LABEL_97;
            case 8:
              *(this + 52) |= 4u;
              v55 = *(a2 + 1);
              if (v55 > 0xFFFFFFFFFFFFFFF7 || v55 + 8 > *(a2 + 2))
              {
                goto LABEL_139;
              }

              *(this + 6) = *(*a2 + v55);
              goto LABEL_97;
            case 9:
              *(this + 52) |= 0x10u;
              v25 = *(a2 + 1);
              if (v25 > 0xFFFFFFFFFFFFFFF7 || v25 + 8 > *(a2 + 2))
              {
                goto LABEL_139;
              }

              *(this + 8) = *(*a2 + v25);
LABEL_97:
              v66 = *(a2 + 1) + 8;
              goto LABEL_142;
          }
        }

        goto LABEL_98;
      }

      if (v23 > 3)
      {
        break;
      }

      if (v23 == 1)
      {
        operator new();
      }

      if (v23 != 2)
      {
        if (v23 == 3)
        {
          *(this + 52) |= 0x80u;
          v24 = *(a2 + 1);
          if (v24 > 0xFFFFFFFFFFFFFFFBLL || v24 + 4 > *(a2 + 2))
          {
            goto LABEL_139;
          }

          *(this + 23) = *(*a2 + v24);
          goto LABEL_141;
        }

LABEL_98:
        if ((PB::Reader::skip(a2, v23, v22, 0) & 1) == 0)
        {
LABEL_149:
          v93 = 0;
          return v93 & 1;
        }

        goto LABEL_143;
      }

      if (v22 != 2)
      {
        v80 = *(this + 2);
        v79 = *(this + 3);
        if (v80 >= v79)
        {
          v82 = *(this + 1);
          v83 = v80 - v82;
          v84 = (v80 - v82) >> 2;
          v85 = v84 + 1;
          if ((v84 + 1) >> 62)
          {
LABEL_150:
            sub_10000CD24();
          }

          v86 = v79 - v82;
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
            sub_10002290C(this + 8, v87);
          }

          v88 = (v80 - v82) >> 2;
          v89 = (4 * v84);
          v90 = (4 * v84 - 4 * v88);
          *v89 = 0;
          v81 = v89 + 1;
          memcpy(v90, v82, v83);
          v91 = *(this + 1);
          *(this + 1) = v90;
          *(this + 2) = v81;
          *(this + 3) = 0;
          if (v91)
          {
            operator delete(v91);
          }
        }

        else
        {
          *v80 = 0;
          v81 = v80 + 4;
        }

        *(this + 2) = v81;
        v92 = *(a2 + 1);
        if (v92 > 0xFFFFFFFFFFFFFFFBLL || v92 + 4 > *(a2 + 2))
        {
LABEL_139:
          *(a2 + 24) = 1;
          goto LABEL_143;
        }

        *(v81 - 1) = *(*a2 + v92);
LABEL_141:
        v66 = *(a2 + 1) + 4;
LABEL_142:
        *(a2 + 1) = v66;
        goto LABEL_143;
      }

      if (PB::Reader::placeMark())
      {
        goto LABEL_149;
      }

      v39 = *(a2 + 1);
      v40 = *(a2 + 2);
      while (v39 < v40 && (*(a2 + 24) & 1) == 0)
      {
        v42 = *(this + 2);
        v41 = *(this + 3);
        if (v42 >= v41)
        {
          v44 = *(this + 1);
          v45 = v42 - v44;
          v46 = (v42 - v44) >> 2;
          v47 = v46 + 1;
          if ((v46 + 1) >> 62)
          {
            goto LABEL_150;
          }

          v48 = v41 - v44;
          if (v48 >> 1 > v47)
          {
            v47 = v48 >> 1;
          }

          if (v48 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v49 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v49 = v47;
          }

          if (v49)
          {
            sub_10002290C(this + 8, v49);
          }

          v50 = (v42 - v44) >> 2;
          v51 = (4 * v46);
          v52 = (4 * v46 - 4 * v50);
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
          v43 = v42 + 4;
        }

        *(this + 2) = v43;
        v54 = *(a2 + 1);
        if (v54 > 0xFFFFFFFFFFFFFFFBLL || v54 + 4 > *(a2 + 2))
        {
          *(a2 + 24) = 1;
          break;
        }

        *(v43 - 1) = *(*a2 + v54);
        v40 = *(a2 + 2);
        v39 = *(a2 + 1) + 4;
        *(a2 + 1) = v39;
      }

      PB::Reader::recallMark();
LABEL_143:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_147;
      }
    }

    switch(v23)
    {
      case 4:
        *(this + 52) |= 0x40u;
        v30 = *(a2 + 1);
        v29 = *(a2 + 2);
        v31 = *a2;
        if (v30 > 0xFFFFFFFFFFFFFFF5 || v30 + 10 > v29)
        {
          v67 = 0;
          v68 = 0;
          v34 = 0;
          v17 = v29 >= v30;
          v69 = v29 - v30;
          if (!v17)
          {
            v69 = 0;
          }

          v70 = (v31 + v30);
          v71 = v30 + 1;
          while (1)
          {
            if (!v69)
            {
              LODWORD(v34) = 0;
              *(a2 + 24) = 1;
              goto LABEL_130;
            }

            v72 = *v70;
            *(a2 + 1) = v71;
            v34 |= (v72 & 0x7F) << v67;
            if ((v72 & 0x80) == 0)
            {
              break;
            }

            v67 += 7;
            --v69;
            ++v70;
            ++v71;
            v14 = v68++ > 8;
            if (v14)
            {
LABEL_107:
              LODWORD(v34) = 0;
              goto LABEL_130;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v34) = 0;
          }
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
              goto LABEL_107;
            }
          }
        }

LABEL_130:
        *(this + 22) = v34;
        goto LABEL_143;
      case 5:
        *(this + 52) |= 0x100u;
        v57 = *(a2 + 1);
        v56 = *(a2 + 2);
        v58 = *a2;
        if (v57 > 0xFFFFFFFFFFFFFFF5 || v57 + 10 > v56)
        {
          v73 = 0;
          v74 = 0;
          v61 = 0;
          v17 = v56 >= v57;
          v75 = v56 - v57;
          if (!v17)
          {
            v75 = 0;
          }

          v76 = (v58 + v57);
          v77 = v57 + 1;
          while (1)
          {
            if (!v75)
            {
              LODWORD(v61) = 0;
              *(a2 + 24) = 1;
              goto LABEL_133;
            }

            v78 = *v76;
            *(a2 + 1) = v77;
            v61 |= (v78 & 0x7F) << v73;
            if ((v78 & 0x80) == 0)
            {
              break;
            }

            v73 += 7;
            --v75;
            ++v76;
            ++v77;
            v14 = v74++ > 8;
            if (v14)
            {
LABEL_115:
              LODWORD(v61) = 0;
              goto LABEL_133;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v61) = 0;
          }
        }

        else
        {
          v59 = 0;
          v60 = 0;
          v61 = 0;
          v62 = (v58 + v57);
          v63 = v57 + 1;
          while (1)
          {
            *(a2 + 1) = v63;
            v64 = *v62++;
            v61 |= (v64 & 0x7F) << v59;
            if ((v64 & 0x80) == 0)
            {
              break;
            }

            v59 += 7;
            ++v63;
            v14 = v60++ > 8;
            if (v14)
            {
              goto LABEL_115;
            }
          }
        }

LABEL_133:
        *(this + 24) = v61;
        goto LABEL_143;
      case 6:
        *(this + 52) |= 0x200u;
        v26 = *(a2 + 1);
        if (v26 > 0xFFFFFFFFFFFFFFFBLL || v26 + 4 > *(a2 + 2))
        {
          goto LABEL_139;
        }

        *(this + 25) = *(*a2 + v26);
        goto LABEL_141;
    }

    goto LABEL_98;
  }

LABEL_147:
  v93 = v4 ^ 1;
  return v93 & 1;
}

uint64_t CMMsl::TempestPoCAuxiliaryDeviceMotion::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 80);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4, 1u);
  }

  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    this = PB::Writer::write(a2, v7, 2u);
  }

  v8 = *(v3 + 104);
  if ((v8 & 0x80) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 92), 3u);
    v8 = *(v3 + 104);
    if ((v8 & 0x40) == 0)
    {
LABEL_8:
      if ((v8 & 0x100) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_19;
    }
  }

  else if ((v8 & 0x40) == 0)
  {
    goto LABEL_8;
  }

  this = PB::Writer::writeVarInt(a2, *(v3 + 88), 4u);
  v8 = *(v3 + 104);
  if ((v8 & 0x100) == 0)
  {
LABEL_9:
    if ((v8 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = PB::Writer::writeVarInt(a2, *(v3 + 96), 5u);
  v8 = *(v3 + 104);
  if ((v8 & 0x200) == 0)
  {
LABEL_10:
    if ((v8 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = PB::Writer::write(a2, *(v3 + 100), 6u);
  v8 = *(v3 + 104);
  if ((v8 & 2) == 0)
  {
LABEL_11:
    if ((v8 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = PB::Writer::write(a2, *(v3 + 40), 7u);
  v8 = *(v3 + 104);
  if ((v8 & 4) == 0)
  {
LABEL_12:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = PB::Writer::write(a2, *(v3 + 48), 8u);
  v8 = *(v3 + 104);
  if ((v8 & 0x10) == 0)
  {
LABEL_13:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = PB::Writer::write(a2, *(v3 + 64), 9u);
  v8 = *(v3 + 104);
  if ((v8 & 0x20) == 0)
  {
LABEL_14:
    if ((v8 & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_25:
    this = PB::Writer::write(a2, *(v3 + 32), 0xBu);
    if ((*(v3 + 104) & 8) == 0)
    {
      return this;
    }

    goto LABEL_26;
  }

LABEL_24:
  this = PB::Writer::write(a2, *(v3 + 72), 0xAu);
  v8 = *(v3 + 104);
  if (v8)
  {
    goto LABEL_25;
  }

LABEL_15:
  if ((v8 & 8) == 0)
  {
    return this;
  }

LABEL_26:
  v9 = *(v3 + 56);

  return PB::Writer::write(a2, v9, 0xCu);
}

uint64_t CMMsl::TempestPoCAuxiliaryDeviceMotion::hash_value(CMMsl::TempestPoCAuxiliaryDeviceMotion *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    v3 = CMMsl::AuxiliaryDeviceMotion::hash_value(v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 1);
  v5 = *(this + 2);
  v6 = PBHashBytes();
  v7 = *(this + 52);
  if ((v7 & 0x80) != 0)
  {
    v19 = *(this + 23);
    v8 = LODWORD(v19);
    if (v19 == 0.0)
    {
      v8 = 0;
    }

    if ((v7 & 0x40) != 0)
    {
LABEL_6:
      v9 = *(this + 22);
      if ((*(this + 52) & 0x100) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_33;
    }
  }

  else
  {
    v8 = 0;
    if ((v7 & 0x40) != 0)
    {
      goto LABEL_6;
    }
  }

  v9 = 0;
  if ((*(this + 52) & 0x100) != 0)
  {
LABEL_7:
    v10 = *(this + 24);
    if ((*(this + 52) & 0x200) != 0)
    {
      goto LABEL_8;
    }

LABEL_34:
    v12 = 0;
    if ((v7 & 2) != 0)
    {
      goto LABEL_11;
    }

LABEL_35:
    v13 = 0.0;
    if ((v7 & 4) != 0)
    {
      goto LABEL_14;
    }

LABEL_36:
    v14 = 0.0;
    if ((v7 & 0x10) != 0)
    {
      goto LABEL_17;
    }

LABEL_37:
    v15 = 0.0;
    if ((v7 & 0x20) != 0)
    {
      goto LABEL_20;
    }

LABEL_38:
    v16 = 0.0;
    if (v7)
    {
      goto LABEL_23;
    }

    goto LABEL_39;
  }

LABEL_33:
  v10 = 0;
  if ((*(this + 52) & 0x200) == 0)
  {
    goto LABEL_34;
  }

LABEL_8:
  v11 = *(this + 25);
  v12 = LODWORD(v11);
  if (v11 == 0.0)
  {
    v12 = 0;
  }

  if ((v7 & 2) == 0)
  {
    goto LABEL_35;
  }

LABEL_11:
  v13 = *(this + 5);
  if (v13 == 0.0)
  {
    v13 = 0.0;
  }

  if ((v7 & 4) == 0)
  {
    goto LABEL_36;
  }

LABEL_14:
  v14 = *(this + 6);
  if (v14 == 0.0)
  {
    v14 = 0.0;
  }

  if ((v7 & 0x10) == 0)
  {
    goto LABEL_37;
  }

LABEL_17:
  v15 = *(this + 8);
  if (v15 == 0.0)
  {
    v15 = 0.0;
  }

  if ((v7 & 0x20) == 0)
  {
    goto LABEL_38;
  }

LABEL_20:
  v16 = *(this + 9);
  if (v16 == 0.0)
  {
    v16 = 0.0;
  }

  if (v7)
  {
LABEL_23:
    v17 = *(this + 4);
    if (v17 == 0.0)
    {
      v17 = 0.0;
    }

    if ((v7 & 8) != 0)
    {
      goto LABEL_26;
    }

LABEL_40:
    v18 = 0.0;
    return v6 ^ v3 ^ v8 ^ v9 ^ v10 ^ v12 ^ *&v13 ^ *&v14 ^ *&v15 ^ *&v16 ^ *&v17 ^ *&v18;
  }

LABEL_39:
  v17 = 0.0;
  if ((v7 & 8) == 0)
  {
    goto LABEL_40;
  }

LABEL_26:
  v18 = *(this + 7);
  if (v18 == 0.0)
  {
    v18 = 0.0;
  }

  return v6 ^ v3 ^ v8 ^ v9 ^ v10 ^ v12 ^ *&v13 ^ *&v14 ^ *&v15 ^ *&v16 ^ *&v17 ^ *&v18;
}

uint64_t CMMsl::TempestPoCAuxiliaryDeviceMotion::makeSuper(uint64_t this)
{
  if (!*(this + 80))
  {
    operator new();
  }

  return this;
}

void CMMsl::TempestPoCListenerOrientation::~TempestPoCListenerOrientation(CMMsl::TempestPoCListenerOrientation *this)
{
  *this = off_1004225C8;
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
  CMMsl::TempestPoCListenerOrientation::~TempestPoCListenerOrientation(this);

  operator delete();
}

CMMsl::TempestPoCListenerOrientation *CMMsl::TempestPoCListenerOrientation::TempestPoCListenerOrientation(CMMsl::TempestPoCListenerOrientation *this, const CMMsl::TempestPoCListenerOrientation *a2)
{
  *this = off_1004225C8;
  *(this + 8) = 0u;
  v4 = (this + 8);
  *(this + 32) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  v5 = *(a2 + 64);
  if ((v5 & 0x20) != 0)
  {
    v7 = *(a2 + 12);
    v6 = 32;
    *(this + 64) = 32;
    *(this + 12) = v7;
    v5 = *(a2 + 64);
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = 0;
  if ((*(a2 + 64) & 0x400) != 0)
  {
LABEL_5:
    v8 = *(a2 + 30);
    v6 |= 0x400u;
    *(this + 64) = v6;
    *(this + 30) = v8;
    v5 = *(a2 + 64);
  }

LABEL_6:
  if ((v5 & 0x100) == 0)
  {
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v14 = *(a2 + 28);
  v6 |= 0x100u;
  *(this + 64) = v6;
  *(this + 28) = v14;
  if ((*(a2 + 64) & 0x200) != 0)
  {
LABEL_8:
    v9 = *(a2 + 29);
    *(this + 64) = v6 | 0x200;
    *(this + 29) = v9;
  }

LABEL_9:
  if (this != a2)
  {
    sub_100035D1C(this + 4, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 2);
  }

  v10 = *(a2 + 64);
  if ((v10 & 0x800) != 0)
  {
    v15 = *(a2 + 124);
    *(this + 64) |= 0x800u;
    *(this + 124) = v15;
    v10 = *(a2 + 64);
    if ((v10 & 0x40) == 0)
    {
LABEL_13:
      if ((v10 & 0x80) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_28;
    }
  }

  else if ((v10 & 0x40) == 0)
  {
    goto LABEL_13;
  }

  v16 = *(a2 + 26);
  *(this + 64) |= 0x40u;
  *(this + 26) = v16;
  v10 = *(a2 + 64);
  if ((v10 & 0x80) == 0)
  {
LABEL_14:
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_29;
  }

LABEL_28:
  v17 = *(a2 + 27);
  *(this + 64) |= 0x80u;
  *(this + 27) = v17;
  v10 = *(a2 + 64);
  if ((v10 & 0x10) == 0)
  {
LABEL_15:
    if ((v10 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_30;
  }

LABEL_29:
  v18 = *(a2 + 11);
  *(this + 64) |= 0x10u;
  *(this + 11) = v18;
  v10 = *(a2 + 64);
  if ((v10 & 1) == 0)
  {
LABEL_16:
    if ((v10 & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_31;
  }

LABEL_30:
  v19 = *(a2 + 7);
  *(this + 64) |= 1u;
  *(this + 7) = v19;
  v10 = *(a2 + 64);
  if ((v10 & 8) == 0)
  {
LABEL_17:
    if ((v10 & 2) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_31:
  v20 = *(a2 + 10);
  *(this + 64) |= 8u;
  *(this + 10) = v20;
  if ((*(a2 + 64) & 2) != 0)
  {
LABEL_18:
    v11 = *(a2 + 8);
    *(this + 64) |= 2u;
    *(this + 8) = v11;
  }

LABEL_19:
  if (this != a2)
  {
    sub_100035D1C(v4, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 2);
  }

  if ((*(a2 + 64) & 4) != 0)
  {
    v12 = *(a2 + 9);
    *(this + 64) |= 4u;
    *(this + 9) = v12;
  }

  return this;
}

CMMsl *CMMsl::TempestPoCListenerOrientation::operator=(CMMsl *a1, const CMMsl::TempestPoCListenerOrientation *a2)
{
  if (a1 != a2)
  {
    CMMsl::TempestPoCListenerOrientation::TempestPoCListenerOrientation(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::TempestPoCListenerOrientation::~TempestPoCListenerOrientation(v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::TempestPoCListenerOrientation *a2, CMMsl::TempestPoCListenerOrientation *a3)
{
  v3 = *(this + 32);
  *(this + 32) = *(a2 + 32);
  *(a2 + 32) = v3;
  v4 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v4;
  LODWORD(v4) = *(this + 30);
  *(this + 30) = *(a2 + 30);
  *(a2 + 30) = v4;
  LODWORD(v4) = *(this + 28);
  *(this + 28) = *(a2 + 28);
  *(a2 + 28) = v4;
  LODWORD(v4) = *(this + 29);
  *(this + 29) = *(a2 + 29);
  *(a2 + 29) = v4;
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v6;
  v7 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v7;
  LOBYTE(v7) = *(this + 124);
  *(this + 124) = *(a2 + 124);
  *(a2 + 124) = v7;
  LODWORD(v4) = *(this + 26);
  *(this + 26) = *(a2 + 26);
  *(a2 + 26) = v4;
  LODWORD(v4) = *(this + 27);
  *(this + 27) = *(a2 + 27);
  *(a2 + 27) = v4;
  v8 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v8;
  v9 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v9;
  v10 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v10;
  v11 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v11;
  v12 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v12;
  v13 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v13;
  v14 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v14;
  result = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = result;
  return result;
}

uint64_t CMMsl::TempestPoCListenerOrientation::TempestPoCListenerOrientation(uint64_t a1, uint64_t a2)
{
  *a1 = off_1004225C8;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  v4 = a1 + 8;
  *(a1 + 40) = 0u;
  *(a1 + 128) = *(a2 + 128);
  *(a2 + 128) = 0;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 116) = *(a2 + 116);
  sub_1002A2DD0(a1 + 32, (a2 + 32));
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  sub_1002A2DD0(v4, (a2 + 8));
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

CMMsl *CMMsl::TempestPoCListenerOrientation::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::TempestPoCListenerOrientation::TempestPoCListenerOrientation(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::TempestPoCListenerOrientation::~TempestPoCListenerOrientation(v5);
  }

  return a1;
}

uint64_t CMMsl::TempestPoCListenerOrientation::formatText(CMMsl::TempestPoCListenerOrientation *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 64);
  if ((v5 & 0x40) != 0)
  {
    PB::TextFormatter::format(a2, "angularVelocityConstraintRps", *(this + 26));
    v5 = *(this + 64);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((v5 & 1) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "consumedAuxTimestamp", *(this + 7));
  v5 = *(this + 64);
  if ((v5 & 0x80) == 0)
  {
LABEL_4:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(a2, "dthetaNormRad", *(this + 27));
  v5 = *(this + 64);
  if ((v5 & 0x800) == 0)
  {
LABEL_5:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  PB::TextFormatter::format(a2, "inBTZ", *(this + 124));
  v5 = *(this + 64);
  if ((v5 & 0x100) == 0)
  {
LABEL_6:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(a2, "listenerPitch", *(this + 28));
  v5 = *(this + 64);
  if ((v5 & 0x200) == 0)
  {
LABEL_7:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  PB::TextFormatter::format(a2, "listenerRoll", *(this + 29));
  v5 = *(this + 64);
  if ((v5 & 0x400) == 0)
  {
LABEL_8:
    if ((v5 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(a2, "listenerYaw", *(this + 30));
  v5 = *(this + 64);
  if ((v5 & 2) == 0)
  {
LABEL_9:
    if ((v5 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_29:
  PB::TextFormatter::format(a2, "machAbsTimestamp", *(this + 8));
  if ((*(this + 64) & 4) != 0)
  {
LABEL_10:
    PB::TextFormatter::format(a2, "presentationTimestamp", *(this + 9));
  }

LABEL_11:
  v6 = *(this + 4);
  v7 = *(this + 5);
  while (v6 != v7)
  {
    v8 = *v6++;
    PB::TextFormatter::format(a2, "quaternion", v8);
  }

  v9 = *(this + 1);
  v10 = *(this + 2);
  while (v9 != v10)
  {
    v11 = *v9++;
    PB::TextFormatter::format(a2, "quaternionWithoutPrediction", v11);
  }

  v12 = *(this + 64);
  if ((v12 & 8) != 0)
  {
    PB::TextFormatter::format(a2, "receivedAuxTimestamp", *(this + 10));
    v12 = *(this + 64);
    if ((v12 & 0x10) == 0)
    {
LABEL_17:
      if ((v12 & 0x20) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  else if ((v12 & 0x10) == 0)
  {
    goto LABEL_17;
  }

  PB::TextFormatter::format(a2, "srcTimestamp", *(this + 11));
  if ((*(this + 64) & 0x20) != 0)
  {
LABEL_18:
    PB::TextFormatter::format(a2, "timestamp", *(this + 12));
  }

LABEL_19:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::TempestPoCListenerOrientation::readFrom(CMMsl::TempestPoCListenerOrientation *this, PB::Reader *a2)
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
        goto LABEL_141;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 64) |= 0x20u;
          v23 = *(a2 + 1);
          if (v23 > 0xFFFFFFFFFFFFFFF7 || v23 + 8 > *(a2 + 2))
          {
            goto LABEL_133;
          }

          *(this + 12) = *(*a2 + v23);
          goto LABEL_98;
        case 2u:
          *(this + 64) |= 0x400u;
          v61 = *(a2 + 1);
          if (v61 > 0xFFFFFFFFFFFFFFFBLL || v61 + 4 > *(a2 + 2))
          {
            goto LABEL_133;
          }

          *(this + 30) = *(*a2 + v61);
          goto LABEL_135;
        case 3u:
          *(this + 64) |= 0x100u;
          v58 = *(a2 + 1);
          if (v58 > 0xFFFFFFFFFFFFFFFBLL || v58 + 4 > *(a2 + 2))
          {
            goto LABEL_133;
          }

          *(this + 28) = *(*a2 + v58);
          goto LABEL_135;
        case 4u:
          *(this + 64) |= 0x200u;
          v59 = *(a2 + 1);
          if (v59 > 0xFFFFFFFFFFFFFFFBLL || v59 + 4 > *(a2 + 2))
          {
            goto LABEL_133;
          }

          *(this + 29) = *(*a2 + v59);
          goto LABEL_135;
        case 5u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_143;
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
                  goto LABEL_144;
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
                goto LABEL_107;
              }

              *(v29 - 1) = *(*a2 + v40);
              v26 = *(a2 + 2);
              v25 = *(a2 + 1) + 4;
              *(a2 + 1) = v25;
            }

            goto LABEL_108;
          }

          v72 = *(this + 5);
          v71 = *(this + 6);
          if (v72 >= v71)
          {
            v76 = *(this + 4);
            v77 = v72 - v76;
            v78 = (v72 - v76) >> 2;
            v79 = v78 + 1;
            if ((v78 + 1) >> 62)
            {
              goto LABEL_144;
            }

            v80 = v71 - v76;
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
              sub_10002290C(this + 32, v81);
            }

            v88 = (v72 - v76) >> 2;
            v89 = (4 * v78);
            v90 = (4 * v78 - 4 * v88);
            *v89 = 0;
            v73 = v89 + 1;
            memcpy(v90, v76, v77);
            v91 = *(this + 4);
            *(this + 4) = v90;
            *(this + 5) = v73;
            *(this + 6) = 0;
            if (v91)
            {
              operator delete(v91);
            }
          }

          else
          {
            *v72 = 0;
            v73 = v72 + 4;
          }

          *(this + 5) = v73;
          goto LABEL_131;
        case 6u:
          *(this + 64) |= 0x800u;
          v62 = *(a2 + 1);
          if (v62 >= *(a2 + 2))
          {
            v65 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v63 = v62 + 1;
            v64 = *(*a2 + v62);
            *(a2 + 1) = v63;
            v65 = v64 != 0;
          }

          *(this + 124) = v65;
          goto LABEL_137;
        case 7u:
          *(this + 64) |= 0x40u;
          v67 = *(a2 + 1);
          if (v67 > 0xFFFFFFFFFFFFFFFBLL || v67 + 4 > *(a2 + 2))
          {
            goto LABEL_133;
          }

          *(this + 26) = *(*a2 + v67);
          goto LABEL_135;
        case 8u:
          *(this + 64) |= 0x80u;
          v60 = *(a2 + 1);
          if (v60 > 0xFFFFFFFFFFFFFFFBLL || v60 + 4 > *(a2 + 2))
          {
            goto LABEL_133;
          }

          *(this + 27) = *(*a2 + v60);
          goto LABEL_135;
        case 9u:
          *(this + 64) |= 0x10u;
          v69 = *(a2 + 1);
          if (v69 > 0xFFFFFFFFFFFFFFF7 || v69 + 8 > *(a2 + 2))
          {
            goto LABEL_133;
          }

          *(this + 11) = *(*a2 + v69);
          goto LABEL_98;
        case 0xAu:
          *(this + 64) |= 1u;
          v57 = *(a2 + 1);
          if (v57 > 0xFFFFFFFFFFFFFFF7 || v57 + 8 > *(a2 + 2))
          {
            goto LABEL_133;
          }

          *(this + 7) = *(*a2 + v57);
          goto LABEL_98;
        case 0xBu:
          *(this + 64) |= 8u;
          v68 = *(a2 + 1);
          if (v68 > 0xFFFFFFFFFFFFFFF7 || v68 + 8 > *(a2 + 2))
          {
            goto LABEL_133;
          }

          *(this + 10) = *(*a2 + v68);
          goto LABEL_98;
        case 0xCu:
          *(this + 64) |= 2u;
          v24 = *(a2 + 1);
          if (v24 > 0xFFFFFFFFFFFFFFF7 || v24 + 8 > *(a2 + 2))
          {
            goto LABEL_133;
          }

          *(this + 8) = *(*a2 + v24);
          goto LABEL_98;
        case 0xDu:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
LABEL_143:
              v97 = 0;
              return v97 & 1;
            }

            v41 = *(a2 + 1);
            v42 = *(a2 + 2);
            while (v41 < v42 && (*(a2 + 24) & 1) == 0)
            {
              v44 = *(this + 2);
              v43 = *(this + 3);
              if (v44 >= v43)
              {
                v46 = *(this + 1);
                v47 = v44 - v46;
                v48 = (v44 - v46) >> 2;
                v49 = v48 + 1;
                if ((v48 + 1) >> 62)
                {
                  goto LABEL_144;
                }

                v50 = v43 - v46;
                if (v50 >> 1 > v49)
                {
                  v49 = v50 >> 1;
                }

                if (v50 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v51 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v51 = v49;
                }

                if (v51)
                {
                  sub_10002290C(this + 8, v51);
                }

                v52 = (v44 - v46) >> 2;
                v53 = (4 * v48);
                v54 = (4 * v48 - 4 * v52);
                *v53 = 0;
                v45 = v53 + 1;
                memcpy(v54, v46, v47);
                v55 = *(this + 1);
                *(this + 1) = v54;
                *(this + 2) = v45;
                *(this + 3) = 0;
                if (v55)
                {
                  operator delete(v55);
                }
              }

              else
              {
                *v44 = 0;
                v45 = v44 + 4;
              }

              *(this + 2) = v45;
              v56 = *(a2 + 1);
              if (v56 > 0xFFFFFFFFFFFFFFFBLL || v56 + 4 > *(a2 + 2))
              {
LABEL_107:
                *(a2 + 24) = 1;
                break;
              }

              *(v45 - 1) = *(*a2 + v56);
              v42 = *(a2 + 2);
              v41 = *(a2 + 1) + 4;
              *(a2 + 1) = v41;
            }

LABEL_108:
            PB::Reader::recallMark();
          }

          else
          {
            v75 = *(this + 2);
            v74 = *(this + 3);
            if (v75 >= v74)
            {
              v82 = *(this + 1);
              v83 = v75 - v82;
              v84 = (v75 - v82) >> 2;
              v85 = v84 + 1;
              if ((v84 + 1) >> 62)
              {
LABEL_144:
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
                sub_10002290C(this + 8, v87);
              }

              v92 = (v75 - v82) >> 2;
              v93 = (4 * v84);
              v94 = (4 * v84 - 4 * v92);
              *v93 = 0;
              v73 = v93 + 1;
              memcpy(v94, v82, v83);
              v95 = *(this + 1);
              *(this + 1) = v94;
              *(this + 2) = v73;
              *(this + 3) = 0;
              if (v95)
              {
                operator delete(v95);
              }
            }

            else
            {
              *v75 = 0;
              v73 = v75 + 4;
            }

            *(this + 2) = v73;
LABEL_131:
            v96 = *(a2 + 1);
            if (v96 <= 0xFFFFFFFFFFFFFFFBLL && v96 + 4 <= *(a2 + 2))
            {
              *(v73 - 1) = *(*a2 + v96);
LABEL_135:
              v70 = *(a2 + 1) + 4;
LABEL_136:
              *(a2 + 1) = v70;
            }

            else
            {
LABEL_133:
              *(a2 + 24) = 1;
            }
          }

LABEL_137:
          v2 = *(a2 + 1);
          v3 = *(a2 + 2);
          v4 = *(a2 + 24);
          if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
          {
            goto LABEL_141;
          }

          break;
        case 0xEu:
          *(this + 64) |= 4u;
          v66 = *(a2 + 1);
          if (v66 > 0xFFFFFFFFFFFFFFF7 || v66 + 8 > *(a2 + 2))
          {
            goto LABEL_133;
          }

          *(this + 9) = *(*a2 + v66);
LABEL_98:
          v70 = *(a2 + 1) + 8;
          goto LABEL_136;
        default:
          if ((PB::Reader::skip(a2, v10 >> 3, v22, 0) & 1) == 0)
          {
            goto LABEL_143;
          }

          goto LABEL_137;
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

LABEL_141:
  v97 = v4 ^ 1;
  return v97 & 1;
}

uint64_t CMMsl::TempestPoCListenerOrientation::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 128);
  if ((v4 & 0x20) != 0)
  {
    this = PB::Writer::write(a2, *(this + 96), 1u);
    v4 = *(v3 + 128);
    if ((v4 & 0x400) == 0)
    {
LABEL_3:
      if ((v4 & 0x100) == 0)
      {
        goto LABEL_4;
      }

LABEL_24:
      this = PB::Writer::write(a2, *(v3 + 112), 3u);
      if ((*(v3 + 128) & 0x200) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((*(this + 128) & 0x400) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 120), 2u);
  v4 = *(v3 + 128);
  if ((v4 & 0x100) != 0)
  {
    goto LABEL_24;
  }

LABEL_4:
  if ((v4 & 0x200) != 0)
  {
LABEL_5:
    this = PB::Writer::write(a2, *(v3 + 116), 4u);
  }

LABEL_6:
  v5 = *(v3 + 32);
  v6 = *(v3 + 40);
  while (v5 != v6)
  {
    v7 = *v5++;
    this = PB::Writer::write(a2, v7, 5u);
  }

  v8 = *(v3 + 128);
  if ((v8 & 0x800) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 124), 6u);
    v8 = *(v3 + 128);
    if ((v8 & 0x40) == 0)
    {
LABEL_11:
      if ((v8 & 0x80) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_28;
    }
  }

  else if ((v8 & 0x40) == 0)
  {
    goto LABEL_11;
  }

  this = PB::Writer::write(a2, *(v3 + 104), 7u);
  v8 = *(v3 + 128);
  if ((v8 & 0x80) == 0)
  {
LABEL_12:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = PB::Writer::write(a2, *(v3 + 108), 8u);
  v8 = *(v3 + 128);
  if ((v8 & 0x10) == 0)
  {
LABEL_13:
    if ((v8 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = PB::Writer::write(a2, *(v3 + 88), 9u);
  v8 = *(v3 + 128);
  if ((v8 & 1) == 0)
  {
LABEL_14:
    if ((v8 & 8) == 0)
    {
      goto LABEL_15;
    }

LABEL_31:
    this = PB::Writer::write(a2, *(v3 + 80), 0xBu);
    if ((*(v3 + 128) & 2) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_30:
  this = PB::Writer::write(a2, *(v3 + 56), 0xAu);
  v8 = *(v3 + 128);
  if ((v8 & 8) != 0)
  {
    goto LABEL_31;
  }

LABEL_15:
  if ((v8 & 2) != 0)
  {
LABEL_16:
    this = PB::Writer::write(a2, *(v3 + 64), 0xCu);
  }

LABEL_17:
  v9 = *(v3 + 8);
  v10 = *(v3 + 16);
  while (v9 != v10)
  {
    v11 = *v9++;
    this = PB::Writer::write(a2, v11, 0xDu);
  }

  if ((*(v3 + 128) & 4) != 0)
  {
    v12 = *(v3 + 72);

    return PB::Writer::write(a2, v12, 0xEu);
  }

  return this;
}

uint64_t CMMsl::TempestPoCListenerOrientation::hash_value(CMMsl::TempestPoCListenerOrientation *this)
{
  if ((*(this + 64) & 0x20) == 0)
  {
    v29 = 0.0;
    if ((*(this + 64) & 0x400) != 0)
    {
      goto LABEL_3;
    }

LABEL_15:
    v28 = 0;
    if ((*(this + 64) & 0x100) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

  v8 = *(this + 12);
  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  v29 = v8;
  if ((*(this + 64) & 0x400) == 0)
  {
    goto LABEL_15;
  }

LABEL_3:
  v2 = *(this + 30);
  v3 = LODWORD(v2);
  if (v2 == 0.0)
  {
    v3 = 0;
  }

  v28 = v3;
  if ((*(this + 64) & 0x100) != 0)
  {
LABEL_6:
    v4 = *(this + 28);
    v5 = LODWORD(v4);
    if (v4 == 0.0)
    {
      v5 = 0;
    }

    v27 = v5;
    if ((*(this + 64) & 0x200) != 0)
    {
      goto LABEL_9;
    }

LABEL_17:
    v7 = 0;
    goto LABEL_18;
  }

LABEL_16:
  v27 = 0;
  if ((*(this + 64) & 0x200) == 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  v6 = *(this + 29);
  if (v6 == 0.0)
  {
    v7 = 0;
  }

  else
  {
    v7 = LODWORD(v6);
  }

LABEL_18:
  v9 = *(this + 4);
  v10 = *(this + 5);
  v11 = PBHashBytes();
  v12 = *(this + 64);
  if ((v12 & 0x800) == 0)
  {
    v13 = 0;
    if ((v12 & 0x40) != 0)
    {
      goto LABEL_20;
    }

LABEL_44:
    v15 = 0;
    if ((v12 & 0x80) != 0)
    {
      goto LABEL_24;
    }

LABEL_45:
    v17 = 0;
    if ((v12 & 0x10) != 0)
    {
      goto LABEL_28;
    }

LABEL_46:
    v18 = 0;
    if (v12)
    {
      goto LABEL_32;
    }

LABEL_47:
    v19 = 0;
    if ((v12 & 8) != 0)
    {
      goto LABEL_36;
    }

    goto LABEL_48;
  }

  v13 = *(this + 124);
  if ((v12 & 0x40) == 0)
  {
    goto LABEL_44;
  }

LABEL_20:
  v14 = *(this + 26);
  if (v14 == 0.0)
  {
    v15 = 0;
  }

  else
  {
    v15 = LODWORD(v14);
  }

  if ((v12 & 0x80) == 0)
  {
    goto LABEL_45;
  }

LABEL_24:
  v16 = *(this + 27);
  if (v16 == 0.0)
  {
    v17 = 0;
  }

  else
  {
    v17 = LODWORD(v16);
  }

  if ((v12 & 0x10) == 0)
  {
    goto LABEL_46;
  }

LABEL_28:
  if (*(this + 11) == 0.0)
  {
    v18 = 0;
  }

  else
  {
    v18 = *(this + 11);
  }

  if ((v12 & 1) == 0)
  {
    goto LABEL_47;
  }

LABEL_32:
  if (*(this + 7) == 0.0)
  {
    v19 = 0;
  }

  else
  {
    v19 = *(this + 7);
  }

  if ((v12 & 8) != 0)
  {
LABEL_36:
    if (*(this + 10) == 0.0)
    {
      v20 = 0;
    }

    else
    {
      v20 = *(this + 10);
    }

    if ((v12 & 2) != 0)
    {
      goto LABEL_40;
    }

LABEL_49:
    v21 = 0;
    goto LABEL_50;
  }

LABEL_48:
  v20 = 0;
  if ((v12 & 2) == 0)
  {
    goto LABEL_49;
  }

LABEL_40:
  if (*(this + 8) == 0.0)
  {
    v21 = 0;
  }

  else
  {
    v21 = *(this + 8);
  }

LABEL_50:
  v22 = *(this + 1);
  v23 = *(this + 2);
  v24 = PBHashBytes();
  if ((*(this + 64) & 4) != 0)
  {
    v25 = *(this + 9);
    if (v25 == 0.0)
    {
      v25 = 0.0;
    }
  }

  else
  {
    v25 = 0.0;
  }

  return v28 ^ *&v29 ^ v27 ^ v7 ^ v13 ^ v15 ^ v17 ^ v18 ^ v11 ^ v19 ^ v20 ^ v21 ^ v24 ^ *&v25;
}

void CMMsl::Timestamp::~Timestamp(CMMsl::Timestamp *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::Timestamp::Timestamp(uint64_t this, const CMMsl::Timestamp *a2)
{
  *this = off_100422600;
  *(this + 16) = 0;
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

const CMMsl::Timestamp *CMMsl::Timestamp::operator=(const CMMsl::Timestamp *a1, const CMMsl::Timestamp *a2)
{
  if (a1 != a2)
  {
    CMMsl::Timestamp::Timestamp(v6, a2);
    v3 = *(a1 + 2);
    *(a1 + 2) = v8;
    v8 = v3;
    v4 = *(a1 + 1);
    *(a1 + 1) = v7;
    v7 = v4;
    PB::Base::~Base(v6);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::Timestamp *a2, CMMsl::Timestamp *a3)
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

uint64_t CMMsl::Timestamp::Timestamp(uint64_t result, uint64_t a2)
{
  *result = off_100422600;
  *(result + 16) = 0;
  *(result + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  *(result + 16) = *(a2 + 16);
  *(result + 8) = *(a2 + 8);
  return result;
}

{
  *result = off_100422600;
  *(result + 16) = 0;
  *(result + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  *(result + 16) = *(a2 + 16);
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t CMMsl::Timestamp::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    v4 = *(a2 + 16);
    *(a2 + 20) = 0;
    v5 = *(a1 + 16);
    *(a1 + 16) = v4;
    v8[2] = v5;
    v6 = *(a1 + 8);
    *(a1 + 8) = v3;
    v8[0] = off_100422600;
    v8[1] = v6;
    PB::Base::~Base(v8);
  }

  return a1;
}

uint64_t CMMsl::Timestamp::formatText(CMMsl::Timestamp *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 20);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "source", *(this + 4));
    v5 = *(this + 20);
  }

  if (v5)
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::Timestamp::readFrom(CMMsl::Timestamp *this, PB::Reader *a2)
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
            goto LABEL_73;
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

        v10 = (v4 & 1) != 0 ? 0 : v17;
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
      if ((v10 >> 3) == 2)
      {
        *(this + 20) |= 1u;
        v32 = *(a2 + 1);
        v2 = *(a2 + 2);
        v33 = *a2;
        if (v32 > 0xFFFFFFFFFFFFFFF5 || v32 + 10 > v2)
        {
          v47 = 0;
          v48 = 0;
          v36 = 0;
          if (v2 <= v32)
          {
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          v49 = v3 - v32;
          v50 = (v33 + v32);
          v51 = v32 + 1;
          while (1)
          {
            if (!v49)
            {
              v36 = 0;
              *(a2 + 24) = 1;
              goto LABEL_68;
            }

            v52 = v51;
            v53 = *v50;
            *(a2 + 1) = v52;
            v36 |= (v53 & 0x7F) << v47;
            if ((v53 & 0x80) == 0)
            {
              break;
            }

            v47 += 7;
            --v49;
            ++v50;
            v51 = v52 + 1;
            v14 = v48++ > 8;
            if (v14)
            {
              v36 = 0;
              goto LABEL_67;
            }
          }

          if (*(a2 + 24))
          {
            v36 = 0;
          }

LABEL_67:
          v3 = v52;
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
              v36 = 0;
              break;
            }
          }
        }

LABEL_68:
        *(this + 1) = v36;
      }

      else if (v23 == 1)
      {
        *(this + 20) |= 2u;
        v24 = *(a2 + 1);
        v2 = *(a2 + 2);
        v25 = *a2;
        if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v2)
        {
          v40 = 0;
          v41 = 0;
          v28 = 0;
          if (v2 <= v24)
          {
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          v42 = v3 - v24;
          v43 = (v25 + v24);
          v44 = v24 + 1;
          while (1)
          {
            if (!v42)
            {
              LODWORD(v28) = 0;
              *(a2 + 24) = 1;
              goto LABEL_64;
            }

            v45 = v44;
            v46 = *v43;
            *(a2 + 1) = v45;
            v28 |= (v46 & 0x7F) << v40;
            if ((v46 & 0x80) == 0)
            {
              break;
            }

            v40 += 7;
            --v42;
            ++v43;
            v44 = v45 + 1;
            v14 = v41++ > 8;
            if (v14)
            {
              LODWORD(v28) = 0;
              goto LABEL_63;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v28) = 0;
          }

LABEL_63:
          v3 = v45;
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

LABEL_64:
        *(this + 4) = v28;
      }

      else
      {
        if (!PB::Reader::skip(a2, v23, v10 & 7, 0))
        {
          v54 = 0;
          return v54 & 1;
        }

        v3 = *(a2 + 1);
        v2 = *(a2 + 2);
      }

      v4 = *(a2 + 24);
    }

    while (v3 < v2 && (*(a2 + 24) & 1) == 0);
  }

LABEL_73:
  v54 = v4 ^ 1;
  return v54 & 1;
}

uint64_t CMMsl::Timestamp::writeTo(uint64_t this, PB::Writer *a2)
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

    return PB::Writer::writeVarInt(a2, v5, 2u);
  }

  return this;
}

uint64_t CMMsl::Timestamp::hash_value(CMMsl::Timestamp *this)
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

void CMMsl::TouchOscarEmu::~TouchOscarEmu(CMMsl::TouchOscarEmu *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::TouchOscarEmu::TouchOscarEmu(uint64_t this, const CMMsl::TouchOscarEmu *a2)
{
  *this = off_100422638;
  *(this + 20) = 0;
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
    v4 = *(a2 + 16);
    *(this + 20) = v2;
    *(this + 16) = v4;
  }

  return this;
}

uint64_t CMMsl::TouchOscarEmu::operator=(uint64_t a1, const CMMsl::TouchOscarEmu *a2)
{
  if (a1 != a2)
  {
    CMMsl::TouchOscarEmu::TouchOscarEmu(v6, a2);
    v3 = *(a1 + 20);
    *(a1 + 20) = v9;
    v9 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    LOBYTE(v3) = *(a1 + 16);
    *(a1 + 16) = v8;
    v8 = v3;
    PB::Base::~Base(v6);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::TouchOscarEmu *a2, CMMsl::TouchOscarEmu *a3)
{
  v3 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v3;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  LOBYTE(v3) = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v3;
  return result;
}

double CMMsl::TouchOscarEmu::TouchOscarEmu(uint64_t a1, uint64_t a2)
{
  *a1 = off_100422638;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = *(a2 + 16);
  return result;
}

{
  *a1 = off_100422638;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = *(a2 + 16);
  return result;
}

uint64_t CMMsl::TouchOscarEmu::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v9[0] = off_100422638;
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
    LOBYTE(v3) = *(a1 + 16);
    *(a1 + 16) = v5;
    v10 = v3;
    PB::Base::~Base(v9);
  }

  return a1;
}

uint64_t CMMsl::TouchOscarEmu::formatText(CMMsl::TouchOscarEmu *this, PB::TextFormatter *a2, const char *a3)
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
    PB::TextFormatter::format(a2, "touchDetected", *(this + 16));
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::TouchOscarEmu::readFrom(CMMsl::TouchOscarEmu *this, PB::Reader *a2)
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
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 2)
      {
        *(this + 20) |= 2u;
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

        *(this + 16) = v24;
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
          v25 = 0;
          return v25 & 1;
        }

        v2 = *(a2 + 1);
      }

      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_38:
  v25 = v4 ^ 1;
  return v25 & 1;
}

uint64_t CMMsl::TouchOscarEmu::writeTo(uint64_t this, PB::Writer *a2)
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

uint64_t CMMsl::TouchOscarEmu::hash_value(CMMsl::TouchOscarEmu *this)
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
  v2 = *(this + 16);
  return v2 ^ *&v1;
}

void CMMsl::TrackRunData::~TrackRunData(CMMsl::TrackRunData *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::TrackRunData::TrackRunData(uint64_t this, const CMMsl::TrackRunData *a2)
{
  *this = off_100422670;
  *(this + 40) = 0;
  v2 = *(a2 + 40);
  if ((v2 & 0x10) != 0)
  {
    v4 = *(a2 + 7);
    v3 = 16;
    *(this + 40) = 16;
    *(this + 28) = v4;
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
    v5 = *(a2 + 5);
    v3 |= 4u;
    *(this + 40) = v3;
    *(this + 20) = v5;
    v2 = *(a2 + 40);
  }

LABEL_6:
  if ((v2 & 8) != 0)
  {
    v6 = *(a2 + 6);
    v3 |= 8u;
    *(this + 40) = v3;
    *(this + 24) = v6;
    v2 = *(a2 + 40);
    if ((v2 & 2) == 0)
    {
LABEL_8:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_14;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 4);
  v3 |= 2u;
  *(this + 40) = v3;
  *(this + 16) = v7;
  v2 = *(a2 + 40);
  if ((v2 & 0x20) == 0)
  {
LABEL_9:
    if ((v2 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

LABEL_14:
  v8 = *(a2 + 8);
  v3 |= 0x20u;
  *(this + 40) = v3;
  *(this + 32) = v8;
  v2 = *(a2 + 40);
  if ((v2 & 1) == 0)
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
  v9 = *(a2 + 1);
  v3 |= 1u;
  *(this + 40) = v3;
  *(this + 8) = v9;
  if ((*(a2 + 40) & 0x40) != 0)
  {
    goto LABEL_16;
  }

  return this;
}

uint64_t CMMsl::TrackRunData::operator=(uint64_t a1, const CMMsl::TrackRunData *a2)
{
  if (a1 != a2)
  {
    CMMsl::TrackRunData::TrackRunData(&v8, a2);
    v3 = *(a1 + 40);
    *(a1 + 40) = v13;
    v13 = v3;
    v4 = *(a1 + 16);
    *(a1 + 16) = v10;
    v10 = v4;
    v5 = *(a1 + 32);
    *(a1 + 32) = v11;
    v11 = v5;
    v6 = *(a1 + 8);
    *(a1 + 8) = v9;
    v9 = v6;
    LOBYTE(v5) = *(a1 + 36);
    *(a1 + 36) = v12;
    v12 = v5;
    PB::Base::~Base(&v8);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::TrackRunData *a2, CMMsl::TrackRunData *a3)
{
  v3 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v3;
  v4 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v4;
  v5 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v5;
  v6 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v6;
  v7 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v7;
  v8 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v8;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  LOBYTE(v8) = *(this + 36);
  *(this + 36) = *(a2 + 36);
  *(a2 + 36) = v8;
  return result;
}

double CMMsl::TrackRunData::TrackRunData(uint64_t a1, uint64_t a2)
{
  *a1 = off_100422670;
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 36) = *(a2 + 36);
  return result;
}

{
  *a1 = off_100422670;
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 36) = *(a2 + 36);
  return result;
}

uint64_t CMMsl::TrackRunData::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v11[0] = off_100422670;
    v3 = *(a2 + 40);
    *(a2 + 40) = 0;
    v4 = *(a2 + 32);
    v5 = *(a2 + 8);
    v6 = *(a2 + 36);
    v15 = *(a1 + 40);
    v7 = *(a1 + 16);
    v8 = *(a2 + 16);
    *(a1 + 40) = v3;
    *(a1 + 16) = v8;
    v12 = v7;
    v9 = *(a1 + 32);
    *(a1 + 32) = v4;
    v13 = v9;
    *&v7 = *(a1 + 8);
    *(a1 + 8) = v5;
    v11[1] = v7;
    LOBYTE(v9) = *(a1 + 36);
    *(a1 + 36) = v6;
    v14 = v9;
    PB::Base::~Base(v11);
  }

  return a1;
}

uint64_t CMMsl::TrackRunData::formatText(CMMsl::TrackRunData *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 40);
  if (v5)
  {
    PB::TextFormatter::format(a2, "distanceToTrackMeters", *(this + 1));
    v5 = *(this + 40);
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

  else if ((*(this + 40) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "estimatedLaneConfidence", *(this + 4));
  v5 = *(this + 40);
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
  PB::TextFormatter::format(a2, "estimatedLaneNumber", *(this + 5));
  v5 = *(this + 40);
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
  PB::TextFormatter::format(a2, "laneCount", *(this + 6));
  v5 = *(this + 40);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  PB::TextFormatter::format(a2, "laneNumber", *(this + 7));
  v5 = *(this + 40);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  PB::TextFormatter::format(a2, "odometerHasBeenCorrected", *(this + 36));
  if ((*(this + 40) & 0x20) != 0)
  {
LABEL_8:
    PB::TextFormatter::format(a2, "trackProximity", *(this + 8));
  }

LABEL_9:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::TrackRunData::readFrom(CMMsl::TrackRunData *this, PB::Reader *a2)
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
            goto LABEL_145;
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
            *(this + 40) |= 0x10u;
            v41 = *(a2 + 1);
            v2 = *(a2 + 2);
            v42 = *a2;
            if (v41 > 0xFFFFFFFFFFFFFFF5 || v41 + 10 > v2)
            {
              v65 = 0;
              v66 = 0;
              v45 = 0;
              if (v2 <= v41)
              {
                v2 = *(a2 + 1);
              }

              v67 = v2 - v41;
              v68 = (v42 + v41);
              v69 = v41 + 1;
              while (1)
              {
                if (!v67)
                {
                  LODWORD(v45) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_124;
                }

                v70 = v69;
                v71 = *v68;
                *(a2 + 1) = v70;
                v45 |= (v71 & 0x7F) << v65;
                if ((v71 & 0x80) == 0)
                {
                  break;
                }

                v65 += 7;
                --v67;
                ++v68;
                v69 = v70 + 1;
                v14 = v66++ > 8;
                if (v14)
                {
                  LODWORD(v45) = 0;
                  goto LABEL_123;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v45) = 0;
              }

LABEL_123:
              v2 = v70;
            }

            else
            {
              v43 = 0;
              v44 = 0;
              v45 = 0;
              v46 = (v42 + v41);
              v47 = v41 + 1;
              while (1)
              {
                v2 = v47;
                *(a2 + 1) = v47;
                v48 = *v46++;
                v45 |= (v48 & 0x7F) << v43;
                if ((v48 & 0x80) == 0)
                {
                  break;
                }

                v43 += 7;
                ++v47;
                v14 = v44++ > 8;
                if (v14)
                {
                  LODWORD(v45) = 0;
                  break;
                }
              }
            }

LABEL_124:
            *(this + 7) = v45;
            goto LABEL_141;
          case 2:
            *(this + 40) |= 4u;
            v57 = *(a2 + 1);
            v2 = *(a2 + 2);
            v58 = *a2;
            if (v57 > 0xFFFFFFFFFFFFFFF5 || v57 + 10 > v2)
            {
              v93 = 0;
              v94 = 0;
              v61 = 0;
              if (v2 <= v57)
              {
                v2 = *(a2 + 1);
              }

              v95 = v2 - v57;
              v96 = (v58 + v57);
              v97 = v57 + 1;
              while (1)
              {
                if (!v95)
                {
                  LODWORD(v61) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_140;
                }

                v98 = v97;
                v99 = *v96;
                *(a2 + 1) = v98;
                v61 |= (v99 & 0x7F) << v93;
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
                  LODWORD(v61) = 0;
                  goto LABEL_139;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v61) = 0;
              }

LABEL_139:
              v2 = v98;
            }

            else
            {
              v59 = 0;
              v60 = 0;
              v61 = 0;
              v62 = (v58 + v57);
              v63 = v57 + 1;
              while (1)
              {
                v2 = v63;
                *(a2 + 1) = v63;
                v64 = *v62++;
                v61 |= (v64 & 0x7F) << v59;
                if ((v64 & 0x80) == 0)
                {
                  break;
                }

                v59 += 7;
                ++v63;
                v14 = v60++ > 8;
                if (v14)
                {
                  LODWORD(v61) = 0;
                  break;
                }
              }
            }

LABEL_140:
            *(this + 5) = v61;
            goto LABEL_141;
          case 3:
            *(this + 40) |= 8u;
            v31 = *(a2 + 1);
            v2 = *(a2 + 2);
            v32 = *a2;
            if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
            {
              v86 = 0;
              v87 = 0;
              v35 = 0;
              if (v2 <= v31)
              {
                v2 = *(a2 + 1);
              }

              v88 = v2 - v31;
              v89 = (v32 + v31);
              v90 = v31 + 1;
              while (1)
              {
                if (!v88)
                {
                  LODWORD(v35) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_136;
                }

                v91 = v90;
                v92 = *v89;
                *(a2 + 1) = v91;
                v35 |= (v92 & 0x7F) << v86;
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
                  LODWORD(v35) = 0;
                  goto LABEL_135;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v35) = 0;
              }

LABEL_135:
              v2 = v91;
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

LABEL_136:
            *(this + 6) = v35;
            goto LABEL_141;
        }
      }

      else if (v22 > 5)
      {
        if (v22 == 6)
        {
          *(this + 40) |= 1u;
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

          goto LABEL_141;
        }

        if (v22 == 7)
        {
          *(this + 40) |= 0x40u;
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

          *(this + 36) = v40;
          goto LABEL_141;
        }
      }

      else
      {
        if (v22 == 4)
        {
          *(this + 40) |= 2u;
          v49 = *(a2 + 1);
          v2 = *(a2 + 2);
          v50 = *a2;
          if (v49 > 0xFFFFFFFFFFFFFFF5 || v49 + 10 > v2)
          {
            v72 = 0;
            v73 = 0;
            v53 = 0;
            if (v2 <= v49)
            {
              v2 = *(a2 + 1);
            }

            v74 = v2 - v49;
            v75 = (v50 + v49);
            v76 = v49 + 1;
            while (1)
            {
              if (!v74)
              {
                LODWORD(v53) = 0;
                *(a2 + 24) = 1;
                goto LABEL_128;
              }

              v77 = v76;
              v78 = *v75;
              *(a2 + 1) = v77;
              v53 |= (v78 & 0x7F) << v72;
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
                LODWORD(v53) = 0;
                goto LABEL_127;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v53) = 0;
            }

LABEL_127:
            v2 = v77;
          }

          else
          {
            v51 = 0;
            v52 = 0;
            v53 = 0;
            v54 = (v50 + v49);
            v55 = v49 + 1;
            while (1)
            {
              v2 = v55;
              *(a2 + 1) = v55;
              v56 = *v54++;
              v53 |= (v56 & 0x7F) << v51;
              if ((v56 & 0x80) == 0)
              {
                break;
              }

              v51 += 7;
              ++v55;
              v14 = v52++ > 8;
              if (v14)
              {
                LODWORD(v53) = 0;
                break;
              }
            }
          }

LABEL_128:
          *(this + 4) = v53;
          goto LABEL_141;
        }

        if (v22 == 5)
        {
          *(this + 40) |= 0x20u;
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
              v2 = *(a2 + 1);
            }

            v81 = v2 - v23;
            v82 = (v24 + v23);
            v83 = v23 + 1;
            while (1)
            {
              if (!v81)
              {
                LODWORD(v27) = 0;
                *(a2 + 24) = 1;
                goto LABEL_132;
              }

              v84 = v83;
              v85 = *v82;
              *(a2 + 1) = v84;
              v27 |= (v85 & 0x7F) << v79;
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
                LODWORD(v27) = 0;
                goto LABEL_131;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v27) = 0;
            }

LABEL_131:
            v2 = v84;
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

LABEL_132:
          *(this + 8) = v27;
          goto LABEL_141;
        }
      }

      if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
      {
        v100 = 0;
        return v100 & 1;
      }

      v2 = *(a2 + 1);
LABEL_141:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_145:
  v100 = v4 ^ 1;
  return v100 & 1;
}

uint64_t CMMsl::TrackRunData::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 40);
  if ((v4 & 0x10) != 0)
  {
    this = PB::Writer::writeVarInt(a2, *(this + 28), 1u);
    v4 = *(v3 + 40);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
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

  this = PB::Writer::writeVarInt(a2, *(v3 + 20), 2u);
  v4 = *(v3 + 40);
  if ((v4 & 8) == 0)
  {
LABEL_4:
    if ((v4 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  this = PB::Writer::writeVarInt(a2, *(v3 + 24), 3u);
  v4 = *(v3 + 40);
  if ((v4 & 2) == 0)
  {
LABEL_5:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  this = PB::Writer::writeVarInt(a2, *(v3 + 16), 4u);
  v4 = *(v3 + 40);
  if ((v4 & 0x20) == 0)
  {
LABEL_6:
    if ((v4 & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    this = PB::Writer::write(a2, *(v3 + 8), 6u);
    if ((*(v3 + 40) & 0x40) == 0)
    {
      return this;
    }

    goto LABEL_15;
  }

LABEL_13:
  this = PB::Writer::writeVarInt(a2, *(v3 + 32), 5u);
  v4 = *(v3 + 40);
  if (v4)
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

uint64_t CMMsl::TrackRunData::hash_value(CMMsl::TrackRunData *this)
{
  if ((*(this + 40) & 0x10) != 0)
  {
    v1 = *(this + 7);
    if ((*(this + 40) & 4) != 0)
    {
LABEL_3:
      v2 = *(this + 5);
      if ((*(this + 40) & 8) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v1 = 0;
    if ((*(this + 40) & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  v2 = 0;
  if ((*(this + 40) & 8) != 0)
  {
LABEL_4:
    v3 = *(this + 6);
    if ((*(this + 40) & 2) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v3 = 0;
  if ((*(this + 40) & 2) != 0)
  {
LABEL_5:
    v4 = *(this + 4);
    if ((*(this + 40) & 0x20) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  v4 = 0;
  if ((*(this + 40) & 0x20) != 0)
  {
LABEL_6:
    v5 = *(this + 8);
    if (*(this + 40))
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  v5 = 0;
  if (*(this + 40))
  {
LABEL_7:
    v6 = *(this + 1);
    if (v6 == 0.0)
    {
      v6 = 0.0;
    }

    if ((*(this + 40) & 0x40) != 0)
    {
      goto LABEL_10;
    }

LABEL_17:
    v7 = 0;
    return v2 ^ v1 ^ v3 ^ v4 ^ v5 ^ *&v6 ^ v7;
  }

LABEL_16:
  v6 = 0.0;
  if ((*(this + 40) & 0x40) == 0)
  {
    goto LABEL_17;
  }

LABEL_10:
  v7 = *(this + 36);
  return v2 ^ v1 ^ v3 ^ v4 ^ v5 ^ *&v6 ^ v7;
}

void CMMsl::UWBRange::~UWBRange(CMMsl::UWBRange *this)
{
  PB::Base::~Base(this);

  operator delete();
}

double CMMsl::UWBRange::UWBRange(CMMsl::UWBRange *this, const CMMsl::UWBRange *a2)
{
  *this = off_1004226A8;
  *(this + 14) = 0;
  v2 = *(a2 + 56);
  if ((v2 & 8) != 0)
  {
    result = *(a2 + 4);
    v3 = 8;
    *(this + 56) = 8;
    *(this + 4) = result;
    v2 = *(a2 + 56);
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 56) & 4) != 0)
  {
LABEL_5:
    result = *(a2 + 3);
    v3 |= 4u;
    *(this + 56) = v3;
    *(this + 3) = result;
    v2 = *(a2 + 56);
  }

LABEL_6:
  if (v2)
  {
    v5 = *(a2 + 1);
    v3 |= 1u;
    *(this + 56) = v3;
    *(this + 1) = v5;
    v2 = *(a2 + 56);
    if ((v2 & 2) == 0)
    {
LABEL_8:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_13;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_8;
  }

  v6 = *(a2 + 2);
  v3 |= 2u;
  *(this + 56) = v3;
  *(this + 2) = v6;
  v2 = *(a2 + 56);
  if ((v2 & 0x10) == 0)
  {
LABEL_9:
    if ((v2 & 0x20) == 0)
    {
      return result;
    }

LABEL_14:
    result = *(a2 + 6);
    *(this + 56) = v3 | 0x20;
    *(this + 6) = result;
    return result;
  }

LABEL_13:
  result = *(a2 + 5);
  v3 |= 0x10u;
  *(this + 56) = v3;
  *(this + 5) = result;
  if ((*(a2 + 56) & 0x20) != 0)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t CMMsl::UWBRange::operator=(uint64_t a1, const CMMsl::UWBRange *a2)
{
  if (a1 != a2)
  {
    CMMsl::UWBRange::UWBRange(&v8, a2);
    v3 = *(a1 + 56);
    *(a1 + 56) = v12;
    v12 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v10;
    v10 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v9;
    v9 = v5;
    v6 = *(a1 + 40);
    *(a1 + 40) = v11;
    v11 = v6;
    PB::Base::~Base(&v8);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::UWBRange *a2, CMMsl::UWBRange *a3)
{
  v3 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v3;
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v5;
  v6 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v6;
  v7 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v7;
  v8 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v8;
  result = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = result;
  return result;
}

double CMMsl::UWBRange::UWBRange(uint64_t a1, uint64_t a2)
{
  *a1 = off_1004226A8;
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 40) = *(a2 + 40);
  result = *(a2 + 48);
  *(a1 + 48) = result;
  return result;
}

{
  *a1 = off_1004226A8;
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 40) = *(a2 + 40);
  result = *(a2 + 48);
  *(a1 + 48) = result;
  return result;
}

uint64_t CMMsl::UWBRange::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v9 = off_1004226A8;
    v3 = *(a2 + 56);
    *(a2 + 56) = 0;
    v13 = *(a1 + 56);
    v4 = *(a2 + 24);
    v11 = *(a1 + 24);
    v5 = *(a1 + 8);
    *(a1 + 8) = *(a2 + 8);
    v10 = v5;
    v6 = *(a1 + 40);
    v7 = *(a2 + 40);
    *(a1 + 56) = v3;
    *(a1 + 24) = v4;
    *(a1 + 40) = v7;
    v12 = v6;
    PB::Base::~Base(&v9);
  }

  return a1;
}

uint64_t CMMsl::UWBRange::formatText(CMMsl::UWBRange *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 56);
  if (v5)
  {
    PB::TextFormatter::format(a2, "cycleIndex", *(this + 1));
    v5 = *(this + 56);
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

  else if ((*(this + 56) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "error", *(this + 2));
  v5 = *(this + 56);
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
  PB::TextFormatter::format(a2, "machAbsoluteTimestamp", *(this + 3));
  v5 = *(this + 56);
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
  PB::TextFormatter::format(a2, "machContinuousTimestamp", *(this + 4));
  v5 = *(this + 56);
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
  PB::TextFormatter::format(a2, "range", *(this + 5));
  if ((*(this + 56) & 0x20) != 0)
  {
LABEL_7:
    PB::TextFormatter::format(a2, "rssi", *(this + 6));
  }

LABEL_8:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::UWBRange::readFrom(CMMsl::UWBRange *this, PB::Reader *a2)
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
            goto LABEL_89;
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
      if ((v10 >> 3) > 3)
      {
        switch(v22)
        {
          case 4:
            *(this + 56) |= 2u;
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
                  v35 = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_80;
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
                  v35 = 0;
                  goto LABEL_79;
                }
              }

              if (*(a2 + 24))
              {
                v35 = 0;
              }

LABEL_79:
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
                  v35 = 0;
                  break;
                }
              }
            }

LABEL_80:
            *(this + 2) = v35;
            goto LABEL_85;
          case 5:
            *(this + 56) |= 0x10u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
LABEL_56:
              *(a2 + 24) = 1;
              goto LABEL_85;
            }

            *(this + 5) = *(*a2 + v2);
            goto LABEL_74;
          case 6:
            *(this + 56) |= 0x20u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
              goto LABEL_56;
            }

            *(this + 6) = *(*a2 + v2);
            goto LABEL_74;
        }
      }

      else
      {
        switch(v22)
        {
          case 1:
            *(this + 56) |= 8u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
              goto LABEL_56;
            }

            *(this + 4) = *(*a2 + v2);
            goto LABEL_74;
          case 2:
            *(this + 56) |= 4u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
              goto LABEL_56;
            }

            *(this + 3) = *(*a2 + v2);
LABEL_74:
            v2 = *(a2 + 1) + 8;
            *(a2 + 1) = v2;
            goto LABEL_85;
          case 3:
            *(this + 56) |= 1u;
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
                  v27 = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_84;
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
                  v27 = 0;
                  goto LABEL_83;
                }
              }

              if (*(a2 + 24))
              {
                v27 = 0;
              }

LABEL_83:
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
                  v27 = 0;
                  break;
                }
              }
            }

LABEL_84:
            *(this + 1) = v27;
            goto LABEL_85;
        }
      }

      if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
      {
        v53 = 0;
        return v53 & 1;
      }

      v2 = *(a2 + 1);
LABEL_85:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_89:
  v53 = v4 ^ 1;
  return v53 & 1;
}

uint64_t CMMsl::UWBRange::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 56);
  if ((v4 & 8) != 0)
  {
    this = PB::Writer::write(a2, *(this + 32), 1u);
    v4 = *(v3 + 56);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*(this + 56) & 4) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 24), 2u);
  v4 = *(v3 + 56);
  if ((v4 & 1) == 0)
  {
LABEL_4:
    if ((v4 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  this = PB::Writer::writeVarInt(a2, *(v3 + 8), 3u);
  v4 = *(v3 + 56);
  if ((v4 & 2) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    this = PB::Writer::write(a2, *(v3 + 40), 5u);
    if ((*(v3 + 56) & 0x20) == 0)
    {
      return this;
    }

    goto LABEL_13;
  }

LABEL_11:
  this = PB::Writer::writeVarInt(a2, *(v3 + 16), 4u);
  v4 = *(v3 + 56);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v4 & 0x20) == 0)
  {
    return this;
  }

LABEL_13:
  v5 = *(v3 + 48);

  return PB::Writer::write(a2, v5, 6u);
}

uint64_t CMMsl::UWBRange::hash_value(CMMsl::UWBRange *this)
{
  if ((*(this + 56) & 8) == 0)
  {
    v1 = 0.0;
    if ((*(this + 56) & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_17:
    v2 = 0.0;
    if (*(this + 56))
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

  v1 = *(this + 4);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  if ((*(this + 56) & 4) == 0)
  {
    goto LABEL_17;
  }

LABEL_3:
  v2 = *(this + 3);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if (*(this + 56))
  {
LABEL_6:
    v3 = *(this + 1);
    if ((*(this + 56) & 2) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  v3 = 0;
  if ((*(this + 56) & 2) != 0)
  {
LABEL_7:
    v4 = *(this + 2);
    if ((*(this + 56) & 0x10) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  v4 = 0;
  if ((*(this + 56) & 0x10) != 0)
  {
LABEL_8:
    v5 = *(this + 5);
    if (v5 == 0.0)
    {
      v5 = 0.0;
    }

    if ((*(this + 56) & 0x20) != 0)
    {
      goto LABEL_11;
    }

LABEL_21:
    v6 = 0.0;
    return *&v2 ^ *&v1 ^ v3 ^ v4 ^ *&v5 ^ *&v6;
  }

LABEL_20:
  v5 = 0.0;
  if ((*(this + 56) & 0x20) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  v6 = *(this + 6);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  return *&v2 ^ *&v1 ^ v3 ^ v4 ^ *&v5 ^ *&v6;
}

void CMMsl::UltraFastAccel::~UltraFastAccel(CMMsl::UltraFastAccel *this)
{
  *this = off_1004226E0;
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::UltraFastAccel::~UltraFastAccel(this);

  operator delete();
}

uint64_t CMMsl::UltraFastAccel::UltraFastAccel(uint64_t this, const CMMsl::UltraFastAccel *a2)
{
  *this = off_1004226E0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  if (*(a2 + 2))
  {
    operator new();
  }

  if (*(a2 + 24))
  {
    v2 = *(a2 + 1);
    *(this + 24) |= 1u;
    *(this + 8) = v2;
  }

  return this;
}

uint64_t CMMsl::UltraFastAccel::operator=(uint64_t a1, const CMMsl::UltraFastAccel *a2)
{
  if (a1 != a2)
  {
    CMMsl::UltraFastAccel::UltraFastAccel(&v8, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v11;
    v11 = v3;
    v5 = *(a1 + 8);
    v4 = *(a1 + 16);
    v6 = v10;
    *(a1 + 8) = v9;
    *(a1 + 16) = v6;
    v9 = v5;
    v10 = v4;
    CMMsl::UltraFastAccel::~UltraFastAccel(&v8);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::UltraFastAccel *a2, CMMsl::UltraFastAccel *a3)
{
  v3 = *(this + 24);
  *(this + 24) = *(a2 + 6);
  *(a2 + 6) = v3;
  v5 = *(this + 8);
  v4 = *(this + 16);
  v6 = *(a2 + 2);
  *(this + 8) = *(a2 + 1);
  *(this + 16) = v6;
  *(a2 + 1) = v5;
  *(a2 + 2) = v4;
  return this;
}

uint64_t CMMsl::UltraFastAccel::UltraFastAccel(uint64_t a1, uint64_t a2)
{
  *a1 = off_1004226E0;
  *(a1 + 16) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  v4 = *(a2 + 16);
  *(a2 + 16) = 0;
  v5 = *(a1 + 16);
  *(a1 + 16) = v4;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t CMMsl::UltraFastAccel::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::UltraFastAccel::UltraFastAccel(&v8, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v11;
    v11 = v3;
    v5 = *(a1 + 8);
    v4 = *(a1 + 16);
    v6 = v10;
    *(a1 + 8) = v9;
    *(a1 + 16) = v6;
    v9 = v5;
    v10 = v4;
    CMMsl::UltraFastAccel::~UltraFastAccel(&v8);
  }

  return a1;
}

uint64_t CMMsl::UltraFastAccel::formatText(CMMsl::UltraFastAccel *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 24))
  {
    PB::TextFormatter::format(a2, "aopTimestamp", *(this + 1));
  }

  v5 = *(this + 2);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::UltraFastAccel::readFrom(CMMsl::UltraFastAccel *this, PB::Reader *a2)
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
            goto LABEL_50;
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
        *(this + 24) |= 1u;
        v24 = *(a2 + 1);
        v23 = *(a2 + 2);
        v25 = *a2;
        if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
        {
          v32 = 0;
          v33 = 0;
          v28 = 0;
          v17 = v23 >= v24;
          v34 = v23 - v24;
          if (!v17)
          {
            v34 = 0;
          }

          v35 = (v25 + v24);
          v36 = v24 + 1;
          while (1)
          {
            if (!v34)
            {
              v28 = 0;
              *(a2 + 24) = 1;
              goto LABEL_45;
            }

            v37 = *v35;
            *(a2 + 1) = v36;
            v28 |= (v37 & 0x7F) << v32;
            if ((v37 & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            --v34;
            ++v35;
            ++v36;
            v14 = v33++ > 8;
            if (v14)
            {
LABEL_41:
              v28 = 0;
              goto LABEL_45;
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
              goto LABEL_41;
            }
          }
        }

LABEL_45:
        *(this + 1) = v28;
      }

      else
      {
        if (v22 == 1)
        {
          operator new();
        }

        if ((PB::Reader::skip(a2, v22, v10 & 7, 0) & 1) == 0)
        {
          v39 = 0;
          return v39 & 1;
        }
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_50:
  v39 = v4 ^ 1;
  return v39 & 1;
}

uint64_t CMMsl::UltraFastAccel::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 16);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4, 1u);
  }

  if (*(v3 + 24))
  {
    v5 = *(v3 + 8);

    return PB::Writer::writeVarInt(a2, v5, 2u);
  }

  return this;
}

unint64_t CMMsl::UltraFastAccel::hash_value(CMMsl::UltraFastAccel *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    v2 = CMMsl::Accel::hash_value(v2);
  }

  if (*(this + 24))
  {
    v3 = *(this + 1);
  }

  else
  {
    v3 = 0;
  }

  return v3 ^ v2;
}

uint64_t CMMsl::UltraFastAccel::makeSuper(uint64_t this)
{
  if (!*(this + 16))
  {
    operator new();
  }

  return this;
}

void CMMsl::UserStudyEvent::~UserStudyEvent(CMMsl::UserStudyEvent *this)
{
  *this = off_100422718;
  v4 = *(this + 1);
  v2 = (this + 8);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_100011018(v2, v3);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::UserStudyEvent::~UserStudyEvent(this);

  operator delete();
}

uint64_t CMMsl::UserStudyEvent::UserStudyEvent(uint64_t this, const CMMsl::UserStudyEvent *a2)
{
  *this = off_100422718;
  *(this + 8) = 0;
  *(this + 24) = 0;
  if (*(a2 + 24))
  {
    v2 = *(a2 + 2);
    *(this + 24) = 1;
    *(this + 16) = v2;
  }

  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::UserStudyEvent::operator=(uint64_t a1, const CMMsl::UserStudyEvent *a2)
{
  if (a1 != a2)
  {
    CMMsl::UserStudyEvent::UserStudyEvent(&v7, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v10;
    v10 = v3;
    v4 = *(a1 + 16);
    *(a1 + 16) = v9;
    v9 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v5;
    CMMsl::UserStudyEvent::~UserStudyEvent(&v7);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::UserStudyEvent *a2, CMMsl::UserStudyEvent *a3)
{
  v3 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v3;
  result = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = result;
  v5 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v5;
  return result;
}

uint64_t CMMsl::UserStudyEvent::UserStudyEvent(uint64_t a1, uint64_t a2)
{
  *a1 = off_100422718;
  *(a1 + 8) = 0;
  v3 = (a1 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;
  v5 = *v3;
  *v3 = v4;
  if (v5)
  {
    sub_100011018(v3, v5);
  }

  return a1;
}

uint64_t CMMsl::UserStudyEvent::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::UserStudyEvent::UserStudyEvent(&v7, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v10;
    v10 = v3;
    v4 = *(a1 + 16);
    *(a1 + 16) = v9;
    v9 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v5;
    CMMsl::UserStudyEvent::~UserStudyEvent(&v7);
  }

  return a1;
}

uint64_t CMMsl::UserStudyEvent::formatText(CMMsl::UserStudyEvent *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 1))
  {
    PB::TextFormatter::format();
  }

  if (*(this + 24))
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 2));
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::UserStudyEvent::readFrom(CMMsl::UserStudyEvent *this, PB::Reader *a2)
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
            goto LABEL_35;
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
        operator new();
      }

      if (v22 == 1)
      {
        *(this + 24) |= 1u;
        v23 = *(a2 + 1);
        if (v23 <= 0xFFFFFFFFFFFFFFF7 && v23 + 8 <= *(a2 + 2))
        {
          *(this + 2) = *(*a2 + v23);
          *(a2 + 1) += 8;
        }

        else
        {
          *(a2 + 24) = 1;
        }
      }

      else if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
      {
        v25 = 0;
        return v25 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_35:
  v25 = v4 ^ 1;
  return v25 & 1;
}

uint64_t CMMsl::UserStudyEvent::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = this;
  if (*(this + 24))
  {
    this = PB::Writer::write(a2, *(this + 16), 1u);
  }

  if (*(v2 + 8))
  {

    return PB::Writer::write();
  }

  return this;
}

unint64_t CMMsl::UserStudyEvent::hash_value(CMMsl::UserStudyEvent *this)
{
  if (*(this + 24))
  {
    if (*(this + 2) == 0.0)
    {
      v1 = 0;
    }

    else
    {
      v1 = *(this + 2);
    }
  }

  else
  {
    v1 = 0;
  }

  v2 = *(this + 1);
  if (v2)
  {
    v3 = sub_100011074(&v5, v2);
  }

  else
  {
    v3 = 0;
  }

  return v3 ^ v1;
}

void CMMsl::VIOEstimation::~VIOEstimation(CMMsl::VIOEstimation *this)
{
  *this = off_100422750;
  v2 = *(this + 34);
  if (v2)
  {
    *(this + 35) = v2;
    operator delete(v2);
  }

  v3 = *(this + 31);
  if (v3)
  {
    *(this + 32) = v3;
    operator delete(v3);
  }

  v4 = *(this + 28);
  if (v4)
  {
    *(this + 29) = v4;
    operator delete(v4);
  }

  v5 = *(this + 25);
  if (v5)
  {
    *(this + 26) = v5;
    operator delete(v5);
  }

  v6 = *(this + 22);
  if (v6)
  {
    *(this + 23) = v6;
    operator delete(v6);
  }

  v7 = *(this + 19);
  if (v7)
  {
    *(this + 20) = v7;
    operator delete(v7);
  }

  v8 = *(this + 16);
  if (v8)
  {
    *(this + 17) = v8;
    operator delete(v8);
  }

  v9 = *(this + 13);
  if (v9)
  {
    *(this + 14) = v9;
    operator delete(v9);
  }

  v10 = *(this + 10);
  if (v10)
  {
    *(this + 11) = v10;
    operator delete(v10);
  }

  v11 = *(this + 7);
  if (v11)
  {
    *(this + 8) = v11;
    operator delete(v11);
  }

  v12 = *(this + 4);
  if (v12)
  {
    *(this + 5) = v12;
    operator delete(v12);
  }

  v13 = *(this + 1);
  if (v13)
  {
    *(this + 2) = v13;
    operator delete(v13);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::VIOEstimation::~VIOEstimation(this);

  operator delete();
}

CMMsl::VIOEstimation *CMMsl::VIOEstimation::VIOEstimation(CMMsl::VIOEstimation *this, const CMMsl::VIOEstimation *a2)
{
  *this = off_100422750;
  *(this + 8) = 0u;
  v4 = (this + 8);
  *(this + 56) = 0u;
  v5 = (this + 56);
  *(this + 104) = 0u;
  v6 = (this + 104);
  *(this + 152) = 0u;
  v7 = (this + 152);
  *(this + 200) = 0u;
  v8 = (this + 200);
  *(this + 248) = 0u;
  v9 = (this + 248);
  *(this + 42) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  v10 = *(a2 + 340);
  if ((v10 & 0x40) != 0)
  {
    v12 = *(a2 + 84);
    v11 = 64;
    *(this + 340) = 64;
    *(this + 84) = v12;
    v10 = *(a2 + 340);
    if ((v10 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v11 = 0;
  if ((*(a2 + 340) & 4) != 0)
  {
LABEL_5:
    v13 = *(a2 + 39);
    v11 |= 4u;
    *(this + 340) = v11;
    *(this + 39) = v13;
    v10 = *(a2 + 340);
  }

LABEL_6:
  if (v10)
  {
    v19 = *(a2 + 37);
    v11 |= 1u;
    *(this + 340) = v11;
    *(this + 37) = v19;
    v10 = *(a2 + 340);
    if ((v10 & 8) == 0)
    {
LABEL_8:
      if ((v10 & 2) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else if ((v10 & 8) == 0)
  {
    goto LABEL_8;
  }

  v20 = *(a2 + 40);
  v11 |= 8u;
  *(this + 340) = v11;
  *(this + 40) = v20;
  if ((*(a2 + 340) & 2) != 0)
  {
LABEL_9:
    v14 = *(a2 + 38);
    *(this + 340) = v11 | 2;
    *(this + 38) = v14;
  }

LABEL_10:
  if (this != a2)
  {
    sub_100035BF0(this + 22, *(a2 + 22), *(a2 + 23), (*(a2 + 23) - *(a2 + 22)) >> 3);
    sub_100035BF0(v6, *(a2 + 13), *(a2 + 14), (*(a2 + 14) - *(a2 + 13)) >> 3);
    sub_100035BF0(this + 34, *(a2 + 34), *(a2 + 35), (*(a2 + 35) - *(a2 + 34)) >> 3);
    sub_100035BF0(v4, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 3);
    sub_100035BF0(this + 28, *(a2 + 28), *(a2 + 29), (*(a2 + 29) - *(a2 + 28)) >> 3);
    sub_100035BF0(v7, *(a2 + 19), *(a2 + 20), (*(a2 + 20) - *(a2 + 19)) >> 3);
    sub_100035BF0(this + 16, *(a2 + 16), *(a2 + 17), (*(a2 + 17) - *(a2 + 16)) >> 3);
    sub_100035BF0(v9, *(a2 + 31), *(a2 + 32), (*(a2 + 32) - *(a2 + 31)) >> 3);
    sub_100035BF0(this + 4, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 3);
    sub_100035BF0(v8, *(a2 + 25), *(a2 + 26), (*(a2 + 26) - *(a2 + 25)) >> 3);
    sub_100035BF0(this + 10, *(a2 + 10), *(a2 + 11), (*(a2 + 11) - *(a2 + 10)) >> 3);
    sub_100035BF0(v5, *(a2 + 7), *(a2 + 8), (*(a2 + 8) - *(a2 + 7)) >> 3);
  }

  v15 = *(a2 + 340);
  if ((v15 & 0x20) != 0)
  {
    v16 = *(a2 + 83);
    *(this + 340) |= 0x20u;
    *(this + 83) = v16;
    v15 = *(a2 + 340);
  }

  if ((v15 & 0x10) != 0)
  {
    v17 = *(a2 + 82);
    *(this + 340) |= 0x10u;
    *(this + 82) = v17;
  }

  return this;
}

CMMsl *CMMsl::VIOEstimation::operator=(CMMsl *a1, const CMMsl::VIOEstimation *a2)
{
  if (a1 != a2)
  {
    CMMsl::VIOEstimation::VIOEstimation(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::VIOEstimation::~VIOEstimation(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::VIOEstimation *a2, CMMsl::VIOEstimation *a3)
{
  v3 = *(this + 85);
  *(this + 85) = *(a2 + 85);
  *(a2 + 85) = v3;
  v4 = *(this + 84);
  *(this + 84) = *(a2 + 84);
  *(a2 + 84) = v4;
  v5 = *(this + 39);
  *(this + 39) = *(a2 + 39);
  *(a2 + 39) = v5;
  v6 = *(this + 37);
  *(this + 37) = *(a2 + 37);
  *(a2 + 37) = v6;
  v7 = *(this + 40);
  *(this + 40) = *(a2 + 40);
  *(a2 + 40) = v7;
  v8 = *(this + 38);
  *(this + 38) = *(a2 + 38);
  *(a2 + 38) = v8;
  v9 = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v9;
  v10 = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = v10;
  v11 = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v11;
  v12 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v12;
  v13 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v13;
  v14 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v14;
  v15 = *(this + 34);
  *(this + 34) = *(a2 + 34);
  *(a2 + 34) = v15;
  v16 = *(this + 35);
  *(this + 35) = *(a2 + 35);
  *(a2 + 35) = v16;
  v17 = *(this + 36);
  *(this + 36) = *(a2 + 36);
  *(a2 + 36) = v17;
  v18 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v18;
  v19 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v19;
  v20 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v20;
  v21 = *(this + 28);
  *(this + 28) = *(a2 + 28);
  *(a2 + 28) = v21;
  v22 = *(this + 29);
  *(this + 29) = *(a2 + 29);
  *(a2 + 29) = v22;
  v23 = *(this + 30);
  *(this + 30) = *(a2 + 30);
  *(a2 + 30) = v23;
  v24 = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v24;
  v25 = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v25;
  v26 = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v26;
  v27 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v27;
  v28 = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v28;
  v29 = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v29;
  v30 = *(this + 31);
  *(this + 31) = *(a2 + 31);
  *(a2 + 31) = v30;
  v31 = *(this + 32);
  *(this + 32) = *(a2 + 32);
  *(a2 + 32) = v31;
  v32 = *(this + 33);
  *(this + 33) = *(a2 + 33);
  *(a2 + 33) = v32;
  v33 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v33;
  v34 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v34;
  v35 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v35;
  v36 = *(this + 25);
  *(this + 25) = *(a2 + 25);
  *(a2 + 25) = v36;
  v37 = *(this + 26);
  *(this + 26) = *(a2 + 26);
  *(a2 + 26) = v37;
  v38 = *(this + 27);
  *(this + 27) = *(a2 + 27);
  *(a2 + 27) = v38;
  v39 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v39;
  v40 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v40;
  v41 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v41;
  v42 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v42;
  v43 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v43;
  v44 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v44;
  LODWORD(v8) = *(this + 83);
  *(this + 83) = *(a2 + 83);
  *(a2 + 83) = v8;
  result = *(this + 82);
  *(this + 82) = *(a2 + 82);
  *(a2 + 82) = result;
  return result;
}