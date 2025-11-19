uint64_t CMMsl::RunningSpeedKFResult::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 188);
  if ((v4 & 0x80000) != 0)
  {
    this = PB::Writer::write(a2, *(this + 160), 1u);
    v4 = *(v3 + 188);
    if ((v4 & 0x80) == 0)
    {
LABEL_3:
      if ((v4 & 0x40000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_32;
    }
  }

  else if ((v4 & 0x80) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 64), 2u);
  v4 = *(v3 + 188);
  if ((v4 & 0x40000) == 0)
  {
LABEL_4:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = PB::Writer::write(a2, *(v3 + 152), 3u);
  v4 = *(v3 + 188);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_5:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = PB::Writer::write(a2, *(v3 + 184), 4u);
  v4 = *(v3 + 188);
  if ((v4 & 0x20000) == 0)
  {
LABEL_6:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = PB::Writer::write(a2, *(v3 + 144), 5u);
  v4 = *(v3 + 188);
  if ((v4 & 0x10000) == 0)
  {
LABEL_7:
    if ((v4 & 0x2000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = PB::Writer::write(a2, *(v3 + 136), 6u);
  v4 = *(v3 + 188);
  if ((v4 & 0x2000000) == 0)
  {
LABEL_8:
    if ((v4 & 0x4000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = PB::Writer::write(a2, *(v3 + 182), 7u);
  v4 = *(v3 + 188);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_9:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = PB::Writer::write(a2, *(v3 + 183), 8u);
  v4 = *(v3 + 188);
  if ((v4 & 0x40) == 0)
  {
LABEL_10:
    if ((v4 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = PB::Writer::write(a2, *(v3 + 56), 9u);
  v4 = *(v3 + 188);
  if ((v4 & 8) == 0)
  {
LABEL_11:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_40;
  }

LABEL_39:
  this = PB::Writer::write(a2, *(v3 + 32), 0xAu);
  v4 = *(v3 + 188);
  if ((v4 & 0x20) == 0)
  {
LABEL_12:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_41;
  }

LABEL_40:
  this = PB::Writer::write(a2, *(v3 + 48), 0xBu);
  v4 = *(v3 + 188);
  if ((v4 & 0x10) == 0)
  {
LABEL_13:
    if ((v4 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_42;
  }

LABEL_41:
  this = PB::Writer::write(a2, *(v3 + 40), 0xCu);
  v4 = *(v3 + 188);
  if ((v4 & 1) == 0)
  {
LABEL_14:
    if ((v4 & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_43;
  }

LABEL_42:
  this = PB::Writer::write(a2, *(v3 + 8), 0xDu);
  v4 = *(v3 + 188);
  if ((v4 & 2) == 0)
  {
LABEL_15:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_44;
  }

LABEL_43:
  this = PB::Writer::write(a2, *(v3 + 16), 0xEu);
  v4 = *(v3 + 188);
  if ((v4 & 0x8000) == 0)
  {
LABEL_16:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_45;
  }

LABEL_44:
  this = PB::Writer::write(a2, *(v3 + 128), 0xFu);
  v4 = *(v3 + 188);
  if ((v4 & 0x4000) == 0)
  {
LABEL_17:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_46;
  }

LABEL_45:
  this = PB::Writer::write(a2, *(v3 + 120), 0x10u);
  v4 = *(v3 + 188);
  if ((v4 & 0x100) == 0)
  {
LABEL_18:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_47;
  }

LABEL_46:
  this = PB::Writer::write(a2, *(v3 + 72), 0x11u);
  v4 = *(v3 + 188);
  if ((v4 & 0x200) == 0)
  {
LABEL_19:
    if ((v4 & 4) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_48;
  }

LABEL_47:
  this = PB::Writer::write(a2, *(v3 + 80), 0x12u);
  v4 = *(v3 + 188);
  if ((v4 & 4) == 0)
  {
LABEL_20:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_49;
  }

LABEL_48:
  this = PB::Writer::write(a2, *(v3 + 24), 0x13u);
  v4 = *(v3 + 188);
  if ((v4 & 0x400000) == 0)
  {
LABEL_21:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_50;
  }

LABEL_49:
  this = PB::Writer::writeVarInt(a2, *(v3 + 176), 0x14u);
  v4 = *(v3 + 188);
  if ((v4 & 0x100000) == 0)
  {
LABEL_22:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_51;
  }

LABEL_50:
  this = PB::Writer::writeVarInt(a2, *(v3 + 168), 0x15u);
  v4 = *(v3 + 188);
  if ((v4 & 0x200000) == 0)
  {
LABEL_23:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_52;
  }

LABEL_51:
  this = PB::Writer::writeVarInt(a2, *(v3 + 172), 0x16u);
  v4 = *(v3 + 188);
  if ((v4 & 0x800000) == 0)
  {
LABEL_24:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_53;
  }

LABEL_52:
  this = PB::Writer::write(a2, *(v3 + 180), 0x17u);
  v4 = *(v3 + 188);
  if ((v4 & 0x1000) == 0)
  {
LABEL_25:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_54;
  }

LABEL_53:
  this = PB::Writer::write(a2, *(v3 + 104), 0x18u);
  v4 = *(v3 + 188);
  if ((v4 & 0x2000) == 0)
  {
LABEL_26:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_55;
  }

LABEL_54:
  this = PB::Writer::write(a2, *(v3 + 112), 0x19u);
  v4 = *(v3 + 188);
  if ((v4 & 0x400) == 0)
  {
LABEL_27:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_28;
    }

LABEL_56:
    this = PB::Writer::write(a2, *(v3 + 96), 0x1Bu);
    if ((*(v3 + 188) & 0x1000000) == 0)
    {
      return this;
    }

    goto LABEL_57;
  }

LABEL_55:
  this = PB::Writer::write(a2, *(v3 + 88), 0x1Au);
  v4 = *(v3 + 188);
  if ((v4 & 0x800) != 0)
  {
    goto LABEL_56;
  }

LABEL_28:
  if ((v4 & 0x1000000) == 0)
  {
    return this;
  }

LABEL_57:
  v5 = *(v3 + 181);

  return PB::Writer::write(a2, v5, 0x1Cu);
}

uint64_t CMMsl::RunningSpeedKFResult::hash_value(CMMsl::RunningSpeedKFResult *this)
{
  v1 = *(this + 47);
  if ((v1 & 0x80000) == 0)
  {
    v2 = 0.0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_3;
    }

LABEL_45:
    v3 = 0.0;
    if ((v1 & 0x40000) != 0)
    {
      goto LABEL_6;
    }

LABEL_46:
    v4 = 0.0;
    if ((v1 & 0x8000000) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_47;
  }

  v2 = *(this + 20);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((v1 & 0x80) == 0)
  {
    goto LABEL_45;
  }

LABEL_3:
  v3 = *(this + 8);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  if ((v1 & 0x40000) == 0)
  {
    goto LABEL_46;
  }

LABEL_6:
  v4 = *(this + 19);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  if ((v1 & 0x8000000) != 0)
  {
LABEL_9:
    v5 = *(this + 184);
    if ((v1 & 0x20000) != 0)
    {
      goto LABEL_10;
    }

LABEL_48:
    v6 = 0.0;
    if ((v1 & 0x10000) != 0)
    {
      goto LABEL_13;
    }

LABEL_49:
    v7 = 0.0;
    if ((v1 & 0x2000000) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_50;
  }

LABEL_47:
  v5 = 0;
  if ((v1 & 0x20000) == 0)
  {
    goto LABEL_48;
  }

LABEL_10:
  v6 = *(this + 18);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  if ((v1 & 0x10000) == 0)
  {
    goto LABEL_49;
  }

LABEL_13:
  v7 = *(this + 17);
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  if ((v1 & 0x2000000) != 0)
  {
LABEL_16:
    v8 = *(this + 182);
    if ((v1 & 0x4000000) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_51;
  }

LABEL_50:
  v8 = 0;
  if ((v1 & 0x4000000) != 0)
  {
LABEL_17:
    v9 = *(this + 183);
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_18;
    }

LABEL_52:
    v10 = 0.0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_21;
    }

LABEL_53:
    v11 = 0.0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_24;
    }

LABEL_54:
    v12 = 0.0;
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_27;
    }

LABEL_55:
    v13 = 0.0;
    if (v1)
    {
      goto LABEL_30;
    }

LABEL_56:
    v14 = 0.0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_33;
    }

LABEL_57:
    v15 = 0.0;
    if ((v1 & 0x8000) != 0)
    {
      goto LABEL_36;
    }

    goto LABEL_58;
  }

LABEL_51:
  v9 = 0;
  if ((v1 & 0x40) == 0)
  {
    goto LABEL_52;
  }

LABEL_18:
  v10 = *(this + 7);
  if (v10 == 0.0)
  {
    v10 = 0.0;
  }

  if ((v1 & 8) == 0)
  {
    goto LABEL_53;
  }

LABEL_21:
  v11 = *(this + 4);
  if (v11 == 0.0)
  {
    v11 = 0.0;
  }

  if ((v1 & 0x20) == 0)
  {
    goto LABEL_54;
  }

LABEL_24:
  v12 = *(this + 6);
  if (v12 == 0.0)
  {
    v12 = 0.0;
  }

  if ((v1 & 0x10) == 0)
  {
    goto LABEL_55;
  }

LABEL_27:
  v13 = *(this + 5);
  if (v13 == 0.0)
  {
    v13 = 0.0;
  }

  if ((v1 & 1) == 0)
  {
    goto LABEL_56;
  }

LABEL_30:
  v14 = *(this + 1);
  if (v14 == 0.0)
  {
    v14 = 0.0;
  }

  if ((v1 & 2) == 0)
  {
    goto LABEL_57;
  }

LABEL_33:
  v15 = *(this + 2);
  if (v15 == 0.0)
  {
    v15 = 0.0;
  }

  if ((v1 & 0x8000) != 0)
  {
LABEL_36:
    v16 = *(this + 16);
    if (v16 == 0.0)
    {
      v16 = 0.0;
    }

    if ((v1 & 0x4000) != 0)
    {
      goto LABEL_39;
    }

LABEL_59:
    v17 = 0.0;
    goto LABEL_60;
  }

LABEL_58:
  v16 = 0.0;
  if ((v1 & 0x4000) == 0)
  {
    goto LABEL_59;
  }

LABEL_39:
  v17 = *(this + 15);
  if (v17 == 0.0)
  {
    v17 = 0.0;
  }

LABEL_60:
  if ((v1 & 0x100) == 0)
  {
    v18 = 0.0;
    if ((v1 & 0x200) != 0)
    {
      goto LABEL_62;
    }

LABEL_88:
    v19 = 0.0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_65;
    }

LABEL_89:
    v20 = 0.0;
    if ((v1 & 0x400000) != 0)
    {
      goto LABEL_68;
    }

    goto LABEL_90;
  }

  v18 = *(this + 9);
  if (v18 == 0.0)
  {
    v18 = 0.0;
  }

  if ((v1 & 0x200) == 0)
  {
    goto LABEL_88;
  }

LABEL_62:
  v19 = *(this + 10);
  if (v19 == 0.0)
  {
    v19 = 0.0;
  }

  if ((v1 & 4) == 0)
  {
    goto LABEL_89;
  }

LABEL_65:
  v20 = *(this + 3);
  if (v20 == 0.0)
  {
    v20 = 0.0;
  }

  if ((v1 & 0x400000) != 0)
  {
LABEL_68:
    v21 = *(this + 44);
    if ((v1 & 0x100000) != 0)
    {
      goto LABEL_69;
    }

    goto LABEL_91;
  }

LABEL_90:
  v21 = 0;
  if ((v1 & 0x100000) != 0)
  {
LABEL_69:
    v22 = *(this + 42);
    if ((v1 & 0x200000) != 0)
    {
      goto LABEL_70;
    }

    goto LABEL_92;
  }

LABEL_91:
  v22 = 0;
  if ((v1 & 0x200000) != 0)
  {
LABEL_70:
    v23 = *(this + 43);
    if ((v1 & 0x800000) != 0)
    {
      goto LABEL_71;
    }

    goto LABEL_93;
  }

LABEL_92:
  v23 = 0;
  if ((v1 & 0x800000) != 0)
  {
LABEL_71:
    v24 = *(this + 180);
    if ((v1 & 0x1000) != 0)
    {
      goto LABEL_72;
    }

LABEL_94:
    v25 = 0.0;
    if ((v1 & 0x2000) != 0)
    {
      goto LABEL_75;
    }

LABEL_95:
    v26 = 0.0;
    if ((v1 & 0x400) != 0)
    {
      goto LABEL_78;
    }

LABEL_96:
    v27 = 0.0;
    if ((v1 & 0x800) != 0)
    {
      goto LABEL_81;
    }

    goto LABEL_97;
  }

LABEL_93:
  v24 = 0;
  if ((v1 & 0x1000) == 0)
  {
    goto LABEL_94;
  }

LABEL_72:
  v25 = *(this + 13);
  if (v25 == 0.0)
  {
    v25 = 0.0;
  }

  if ((v1 & 0x2000) == 0)
  {
    goto LABEL_95;
  }

LABEL_75:
  v26 = *(this + 14);
  if (v26 == 0.0)
  {
    v26 = 0.0;
  }

  if ((v1 & 0x400) == 0)
  {
    goto LABEL_96;
  }

LABEL_78:
  v27 = *(this + 11);
  if (v27 == 0.0)
  {
    v27 = 0.0;
  }

  if ((v1 & 0x800) != 0)
  {
LABEL_81:
    v28 = *(this + 12);
    if (v28 == 0.0)
    {
      v28 = 0.0;
    }

    if ((v1 & 0x1000000) != 0)
    {
      goto LABEL_84;
    }

LABEL_98:
    v29 = 0;
    return *&v3 ^ *&v2 ^ *&v4 ^ v5 ^ *&v6 ^ *&v7 ^ v8 ^ v9 ^ *&v10 ^ *&v11 ^ *&v12 ^ *&v13 ^ *&v14 ^ *&v15 ^ *&v16 ^ *&v17 ^ *&v18 ^ *&v19 ^ *&v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ *&v25 ^ *&v26 ^ *&v27 ^ *&v28 ^ v29;
  }

LABEL_97:
  v28 = 0.0;
  if ((v1 & 0x1000000) == 0)
  {
    goto LABEL_98;
  }

LABEL_84:
  v29 = *(this + 181);
  return *&v3 ^ *&v2 ^ *&v4 ^ v5 ^ *&v6 ^ *&v7 ^ v8 ^ v9 ^ *&v10 ^ *&v11 ^ *&v12 ^ *&v13 ^ *&v14 ^ *&v15 ^ *&v16 ^ *&v17 ^ *&v18 ^ *&v19 ^ *&v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ *&v25 ^ *&v26 ^ *&v27 ^ *&v28 ^ v29;
}

void CMMsl::RunningStrideLength::~RunningStrideLength(CMMsl::RunningStrideLength *this)
{
  PB::Base::~Base(this);

  operator delete();
}

double CMMsl::RunningStrideLength::RunningStrideLength(CMMsl::RunningStrideLength *this, const CMMsl::RunningStrideLength *a2)
{
  *this = off_100421918;
  *(this + 34) = 0;
  v2 = *(a2 + 34);
  if ((v2 & 4) != 0)
  {
    result = *(a2 + 3);
    v3 = 4;
    *(this + 34) = 4;
    *(this + 3) = result;
    v2 = *(a2 + 34);
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
    result = *(a2 + 10);
    v3 |= 0x200u;
    *(this + 34) = v3;
    *(this + 10) = result;
    v2 = *(a2 + 34);
  }

LABEL_6:
  if ((v2 & 0x4000) != 0)
  {
    result = *(a2 + 15);
    v3 |= 0x4000u;
    *(this + 34) = v3;
    *(this + 15) = result;
    v2 = *(a2 + 34);
    if ((v2 & 0x400) == 0)
    {
LABEL_8:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_24;
    }
  }

  else if ((v2 & 0x400) == 0)
  {
    goto LABEL_8;
  }

  result = *(a2 + 11);
  v3 |= 0x400u;
  *(this + 34) = v3;
  *(this + 11) = result;
  v2 = *(a2 + 34);
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
  result = *(a2 + 5);
  v3 |= 0x10u;
  *(this + 34) = v3;
  *(this + 5) = result;
  v2 = *(a2 + 34);
  if ((v2 & 0x20) == 0)
  {
LABEL_10:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = *(a2 + 6);
  v3 |= 0x20u;
  *(this + 34) = v3;
  *(this + 6) = result;
  v2 = *(a2 + 34);
  if ((v2 & 0x80) == 0)
  {
LABEL_11:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = *(a2 + 8);
  v3 |= 0x80u;
  *(this + 34) = v3;
  *(this + 8) = result;
  v2 = *(a2 + 34);
  if ((v2 & 0x40) == 0)
  {
LABEL_12:
    if ((v2 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = *(a2 + 7);
  v3 |= 0x40u;
  *(this + 34) = v3;
  *(this + 7) = result;
  v2 = *(a2 + 34);
  if ((v2 & 8) == 0)
  {
LABEL_13:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  result = *(a2 + 4);
  v3 |= 8u;
  *(this + 34) = v3;
  *(this + 4) = result;
  v2 = *(a2 + 34);
  if ((v2 & 0x1000) == 0)
  {
LABEL_14:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_30;
  }

LABEL_29:
  result = *(a2 + 13);
  v3 |= 0x1000u;
  *(this + 34) = v3;
  *(this + 13) = result;
  v2 = *(a2 + 34);
  if ((v2 & 0x800) == 0)
  {
LABEL_15:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = *(a2 + 12);
  v3 |= 0x800u;
  *(this + 34) = v3;
  *(this + 12) = result;
  v2 = *(a2 + 34);
  if ((v2 & 0x2000) == 0)
  {
LABEL_16:
    if ((v2 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_32;
  }

LABEL_31:
  result = *(a2 + 14);
  v3 |= 0x2000u;
  *(this + 34) = v3;
  *(this + 14) = result;
  v2 = *(a2 + 34);
  if ((v2 & 1) == 0)
  {
LABEL_17:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_33;
  }

LABEL_32:
  result = *(a2 + 1);
  v3 |= 1u;
  *(this + 34) = v3;
  *(this + 1) = result;
  v2 = *(a2 + 34);
  if ((v2 & 0x8000) == 0)
  {
LABEL_18:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_34;
  }

LABEL_33:
  v5 = *(a2 + 32);
  v3 |= 0x8000u;
  *(this + 34) = v3;
  *(this + 32) = v5;
  v2 = *(a2 + 34);
  if ((v2 & 0x10000) == 0)
  {
LABEL_19:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_35;
  }

LABEL_34:
  v6 = *(a2 + 132);
  v3 |= 0x10000u;
  *(this + 34) = v3;
  *(this + 132) = v6;
  v2 = *(a2 + 34);
  if ((v2 & 0x100) == 0)
  {
LABEL_20:
    if ((v2 & 2) == 0)
    {
      return result;
    }

LABEL_36:
    result = *(a2 + 2);
    *(this + 34) = v3 | 2;
    *(this + 2) = result;
    return result;
  }

LABEL_35:
  result = *(a2 + 9);
  v3 |= 0x100u;
  *(this + 34) = v3;
  *(this + 9) = result;
  if ((*(a2 + 34) & 2) != 0)
  {
    goto LABEL_36;
  }

  return result;
}

CMMsl *CMMsl::RunningStrideLength::operator=(CMMsl *a1, const CMMsl::RunningStrideLength *a2)
{
  if (a1 != a2)
  {
    CMMsl::RunningStrideLength::RunningStrideLength(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::RunningStrideLength *a2, CMMsl::RunningStrideLength *a3)
{
  v3 = *(this + 34);
  *(this + 34) = *(a2 + 34);
  *(a2 + 34) = v3;
  v4 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v4;
  v5 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v5;
  v6 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v6;
  v7 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v7;
  v8 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v8;
  v9 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v9;
  v10 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v11;
  v12 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v12;
  v13 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v13;
  v14 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v14;
  v15 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v15;
  v16 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v16;
  v17 = *(this + 32);
  *(this + 32) = *(a2 + 32);
  *(a2 + 32) = v17;
  LOBYTE(v17) = *(this + 132);
  *(this + 132) = *(a2 + 132);
  *(a2 + 132) = v17;
  v18 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v18;
  result = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = result;
  return result;
}

double CMMsl::RunningStrideLength::RunningStrideLength(uint64_t a1, uint64_t a2)
{
  *a1 = off_100421918;
  *(a1 + 136) = *(a2 + 136);
  *(a2 + 136) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 132) = *(a2 + 132);
  *(a1 + 72) = *(a2 + 72);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

CMMsl *CMMsl::RunningStrideLength::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::RunningStrideLength::RunningStrideLength(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::RunningStrideLength::formatText(CMMsl::RunningStrideLength *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 34);
  if ((v5 & 0x8000) != 0)
  {
    PB::TextFormatter::format(a2, "algorithmType", *(this + 32));
    v5 = *(this + 34);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
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

  PB::TextFormatter::format(a2, "alpha", *(this + 1));
  v5 = *(this + 34);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(a2, "cadence", *(this + 2));
  v5 = *(this + 34);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  PB::TextFormatter::format(a2, "formBasedStartTime", *(this + 3));
  v5 = *(this + 34);
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(a2, "grade", *(this + 4));
  v5 = *(this + 34);
  if ((v5 & 0x10) == 0)
  {
LABEL_7:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  PB::TextFormatter::format(a2, "heightCM", *(this + 5));
  v5 = *(this + 34);
  if ((v5 & 0x20) == 0)
  {
LABEL_8:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(a2, "horizontalAccelMagnitudeMeanSqrt", *(this + 6));
  v5 = *(this + 34);
  if ((v5 & 0x10000) == 0)
  {
LABEL_9:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  PB::TextFormatter::format(a2, "isValid", *(this + 132));
  v5 = *(this + 34);
  if ((v5 & 0x40) == 0)
  {
LABEL_10:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  PB::TextFormatter::format(a2, "rotationRateGravityProjectionMax", *(this + 7));
  v5 = *(this + 34);
  if ((v5 & 0x80) == 0)
  {
LABEL_11:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  PB::TextFormatter::format(a2, "rotationRateMagnitudeMin", *(this + 8));
  v5 = *(this + 34);
  if ((v5 & 0x100) == 0)
  {
LABEL_12:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  PB::TextFormatter::format(a2, "speed", *(this + 9));
  v5 = *(this + 34);
  if ((v5 & 0x200) == 0)
  {
LABEL_13:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(a2, "speedBasedStartTime", *(this + 10));
  v5 = *(this + 34);
  if ((v5 & 0x400) == 0)
  {
LABEL_14:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  PB::TextFormatter::format(a2, "strideLength", *(this + 11));
  v5 = *(this + 34);
  if ((v5 & 0x800) == 0)
  {
LABEL_15:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(a2, "strideLengthFormBasedCalibrated", *(this + 12));
  v5 = *(this + 34);
  if ((v5 & 0x1000) == 0)
  {
LABEL_16:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(a2, "strideLengthFormBasedUncalibrated", *(this + 13));
  v5 = *(this + 34);
  if ((v5 & 0x2000) == 0)
  {
LABEL_17:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_37:
  PB::TextFormatter::format(a2, "strideLengthSpeedBased", *(this + 14));
  if ((*(this + 34) & 0x4000) != 0)
  {
LABEL_18:
    PB::TextFormatter::format(a2, "timestamp", *(this + 15));
  }

LABEL_19:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::RunningStrideLength::readFrom(CMMsl::RunningStrideLength *this, PB::Reader *a2)
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
        goto LABEL_100;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 34) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_78;
          }

          *(this + 3) = *(*a2 + v2);
          goto LABEL_90;
        case 2u:
          *(this + 34) |= 0x200u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_78;
          }

          *(this + 10) = *(*a2 + v2);
          goto LABEL_90;
        case 3u:
          *(this + 34) |= 0x4000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_78;
          }

          *(this + 15) = *(*a2 + v2);
          goto LABEL_90;
        case 4u:
          *(this + 34) |= 0x400u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_78;
          }

          *(this + 11) = *(*a2 + v2);
          goto LABEL_90;
        case 5u:
          *(this + 34) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_78;
          }

          *(this + 5) = *(*a2 + v2);
          goto LABEL_90;
        case 6u:
          *(this + 34) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_78;
          }

          *(this + 6) = *(*a2 + v2);
          goto LABEL_90;
        case 7u:
          *(this + 34) |= 0x80u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_78;
          }

          *(this + 8) = *(*a2 + v2);
          goto LABEL_90;
        case 8u:
          *(this + 34) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_78;
          }

          *(this + 7) = *(*a2 + v2);
          goto LABEL_90;
        case 9u:
          *(this + 34) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_78;
          }

          *(this + 4) = *(*a2 + v2);
          goto LABEL_90;
        case 0xAu:
          *(this + 34) |= 0x1000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_78;
          }

          *(this + 13) = *(*a2 + v2);
          goto LABEL_90;
        case 0xBu:
          *(this + 34) |= 0x800u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_78;
          }

          *(this + 12) = *(*a2 + v2);
          goto LABEL_90;
        case 0xCu:
          *(this + 34) |= 0x2000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_78;
          }

          *(this + 14) = *(*a2 + v2);
          goto LABEL_90;
        case 0xDu:
          *(this + 34) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_78;
          }

          *(this + 1) = *(*a2 + v2);
          goto LABEL_90;
        case 0xEu:
          *(this + 34) |= 0x8000u;
          v24 = *(a2 + 1);
          v2 = *(a2 + 2);
          v25 = *a2;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v2)
          {
            v32 = 0;
            v33 = 0;
            v28 = 0;
            if (v2 <= v24)
            {
              v2 = *(a2 + 1);
            }

            v34 = v2 - v24;
            v35 = (v25 + v24);
            v36 = v24 + 1;
            while (1)
            {
              if (!v34)
              {
                LODWORD(v28) = 0;
                *(a2 + 24) = 1;
                goto LABEL_95;
              }

              v37 = v36;
              v38 = *v35;
              *(a2 + 1) = v37;
              v28 |= (v38 & 0x7F) << v32;
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
                LODWORD(v28) = 0;
LABEL_94:
                v2 = v37;
                goto LABEL_95;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v28) = 0;
            }

            goto LABEL_94;
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
              goto LABEL_95;
            }

            v26 += 7;
            ++v30;
            v14 = v27++ > 8;
          }

          while (!v14);
          LODWORD(v28) = 0;
LABEL_95:
          *(this + 32) = v28;
          goto LABEL_96;
        case 0xFu:
          *(this + 34) |= 0x10000u;
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

          *(this + 132) = v23;
          goto LABEL_96;
        case 0x10u:
          *(this + 34) |= 0x100u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_78;
          }

          *(this + 9) = *(*a2 + v2);
          goto LABEL_90;
        case 0x11u:
          *(this + 34) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
LABEL_78:
            *(a2 + 24) = 1;
          }

          else
          {
            *(this + 2) = *(*a2 + v2);
LABEL_90:
            v2 = *(a2 + 1) + 8;
            *(a2 + 1) = v2;
          }

          goto LABEL_96;
        default:
          if (!PB::Reader::skip(a2, v10 >> 3, v10 & 7, 0))
          {
            v39 = 0;
            return v39 & 1;
          }

          v2 = *(a2 + 1);
LABEL_96:
          v3 = *(a2 + 2);
          v4 = *(a2 + 24);
          if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
          {
            goto LABEL_100;
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

LABEL_100:
  v39 = v4 ^ 1;
  return v39 & 1;
}

uint64_t CMMsl::RunningStrideLength::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 136);
  if ((v4 & 4) != 0)
  {
    this = PB::Writer::write(a2, *(this + 24), 1u);
    v4 = *(v3 + 136);
    if ((v4 & 0x200) == 0)
    {
LABEL_3:
      if ((v4 & 0x4000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 80), 2u);
  v4 = *(v3 + 136);
  if ((v4 & 0x4000) == 0)
  {
LABEL_4:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = PB::Writer::write(a2, *(v3 + 120), 3u);
  v4 = *(v3 + 136);
  if ((v4 & 0x400) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = PB::Writer::write(a2, *(v3 + 88), 4u);
  v4 = *(v3 + 136);
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
  this = PB::Writer::write(a2, *(v3 + 40), 5u);
  v4 = *(v3 + 136);
  if ((v4 & 0x20) == 0)
  {
LABEL_7:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = PB::Writer::write(a2, *(v3 + 48), 6u);
  v4 = *(v3 + 136);
  if ((v4 & 0x80) == 0)
  {
LABEL_8:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = PB::Writer::write(a2, *(v3 + 64), 7u);
  v4 = *(v3 + 136);
  if ((v4 & 0x40) == 0)
  {
LABEL_9:
    if ((v4 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = PB::Writer::write(a2, *(v3 + 56), 8u);
  v4 = *(v3 + 136);
  if ((v4 & 8) == 0)
  {
LABEL_10:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = PB::Writer::write(a2, *(v3 + 32), 9u);
  v4 = *(v3 + 136);
  if ((v4 & 0x1000) == 0)
  {
LABEL_11:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = PB::Writer::write(a2, *(v3 + 104), 0xAu);
  v4 = *(v3 + 136);
  if ((v4 & 0x800) == 0)
  {
LABEL_12:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = PB::Writer::write(a2, *(v3 + 96), 0xBu);
  v4 = *(v3 + 136);
  if ((v4 & 0x2000) == 0)
  {
LABEL_13:
    if ((v4 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = PB::Writer::write(a2, *(v3 + 112), 0xCu);
  v4 = *(v3 + 136);
  if ((v4 & 1) == 0)
  {
LABEL_14:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = PB::Writer::write(a2, *(v3 + 8), 0xDu);
  v4 = *(v3 + 136);
  if ((v4 & 0x8000) == 0)
  {
LABEL_15:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = PB::Writer::writeVarInt(a2, *(v3 + 128), 0xEu);
  v4 = *(v3 + 136);
  if ((v4 & 0x10000) == 0)
  {
LABEL_16:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_17;
    }

LABEL_34:
    this = PB::Writer::write(a2, *(v3 + 72), 0x10u);
    if ((*(v3 + 136) & 2) == 0)
    {
      return this;
    }

    goto LABEL_35;
  }

LABEL_33:
  this = PB::Writer::write(a2, *(v3 + 132), 0xFu);
  v4 = *(v3 + 136);
  if ((v4 & 0x100) != 0)
  {
    goto LABEL_34;
  }

LABEL_17:
  if ((v4 & 2) == 0)
  {
    return this;
  }

LABEL_35:
  v5 = *(v3 + 16);

  return PB::Writer::write(a2, v5, 0x11u);
}

uint64_t CMMsl::RunningStrideLength::hash_value(CMMsl::RunningStrideLength *this)
{
  v1 = *(this + 34);
  if ((v1 & 4) == 0)
  {
    v2 = 0.0;
    if ((v1 & 0x200) != 0)
    {
      goto LABEL_3;
    }

LABEL_50:
    v3 = 0.0;
    if ((v1 & 0x4000) != 0)
    {
      goto LABEL_6;
    }

LABEL_51:
    v4 = 0.0;
    if ((v1 & 0x400) != 0)
    {
      goto LABEL_9;
    }

LABEL_52:
    v5 = 0.0;
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_12;
    }

LABEL_53:
    v6 = 0.0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_15;
    }

LABEL_54:
    v7 = 0.0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_18;
    }

LABEL_55:
    v8 = 0.0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_21;
    }

LABEL_56:
    v9 = 0.0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_24;
    }

LABEL_57:
    v10 = 0.0;
    if ((v1 & 0x1000) != 0)
    {
      goto LABEL_27;
    }

LABEL_58:
    v11 = 0.0;
    if ((v1 & 0x800) != 0)
    {
      goto LABEL_30;
    }

LABEL_59:
    v12 = 0.0;
    if ((v1 & 0x2000) != 0)
    {
      goto LABEL_33;
    }

LABEL_60:
    v13 = 0.0;
    if (v1)
    {
      goto LABEL_36;
    }

LABEL_61:
    v14 = 0.0;
    if ((v1 & 0x8000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_62;
  }

  v2 = *(this + 3);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((v1 & 0x200) == 0)
  {
    goto LABEL_50;
  }

LABEL_3:
  v3 = *(this + 10);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  if ((v1 & 0x4000) == 0)
  {
    goto LABEL_51;
  }

LABEL_6:
  v4 = *(this + 15);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  if ((v1 & 0x400) == 0)
  {
    goto LABEL_52;
  }

LABEL_9:
  v5 = *(this + 11);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  if ((v1 & 0x10) == 0)
  {
    goto LABEL_53;
  }

LABEL_12:
  v6 = *(this + 5);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  if ((v1 & 0x20) == 0)
  {
    goto LABEL_54;
  }

LABEL_15:
  v7 = *(this + 6);
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  if ((v1 & 0x80) == 0)
  {
    goto LABEL_55;
  }

LABEL_18:
  v8 = *(this + 8);
  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  if ((v1 & 0x40) == 0)
  {
    goto LABEL_56;
  }

LABEL_21:
  v9 = *(this + 7);
  if (v9 == 0.0)
  {
    v9 = 0.0;
  }

  if ((v1 & 8) == 0)
  {
    goto LABEL_57;
  }

LABEL_24:
  v10 = *(this + 4);
  if (v10 == 0.0)
  {
    v10 = 0.0;
  }

  if ((v1 & 0x1000) == 0)
  {
    goto LABEL_58;
  }

LABEL_27:
  v11 = *(this + 13);
  if (v11 == 0.0)
  {
    v11 = 0.0;
  }

  if ((v1 & 0x800) == 0)
  {
    goto LABEL_59;
  }

LABEL_30:
  v12 = *(this + 12);
  if (v12 == 0.0)
  {
    v12 = 0.0;
  }

  if ((v1 & 0x2000) == 0)
  {
    goto LABEL_60;
  }

LABEL_33:
  v13 = *(this + 14);
  if (v13 == 0.0)
  {
    v13 = 0.0;
  }

  if ((v1 & 1) == 0)
  {
    goto LABEL_61;
  }

LABEL_36:
  v14 = *(this + 1);
  if (v14 == 0.0)
  {
    v14 = 0.0;
  }

  if ((v1 & 0x8000) != 0)
  {
LABEL_39:
    v15 = *(this + 32);
    if ((v1 & 0x10000) != 0)
    {
      goto LABEL_40;
    }

    goto LABEL_63;
  }

LABEL_62:
  v15 = 0;
  if ((v1 & 0x10000) != 0)
  {
LABEL_40:
    v16 = *(this + 132);
    if ((v1 & 0x100) != 0)
    {
      goto LABEL_41;
    }

    goto LABEL_64;
  }

LABEL_63:
  v16 = 0;
  if ((v1 & 0x100) != 0)
  {
LABEL_41:
    v17 = *(this + 9);
    if (v17 == 0.0)
    {
      v17 = 0.0;
    }

    if ((v1 & 2) != 0)
    {
      goto LABEL_44;
    }

LABEL_65:
    v18 = 0.0;
    return *&v3 ^ *&v2 ^ *&v4 ^ *&v5 ^ *&v6 ^ *&v7 ^ *&v8 ^ *&v9 ^ *&v10 ^ *&v11 ^ *&v12 ^ *&v13 ^ *&v14 ^ v15 ^ v16 ^ *&v17 ^ *&v18;
  }

LABEL_64:
  v17 = 0.0;
  if ((v1 & 2) == 0)
  {
    goto LABEL_65;
  }

LABEL_44:
  v18 = *(this + 2);
  if (v18 == 0.0)
  {
    v18 = 0.0;
  }

  return *&v3 ^ *&v2 ^ *&v4 ^ *&v5 ^ *&v6 ^ *&v7 ^ *&v8 ^ *&v9 ^ *&v10 ^ *&v11 ^ *&v12 ^ *&v13 ^ *&v14 ^ v15 ^ v16 ^ *&v17 ^ *&v18;
}

void CMMsl::RunningVerticalOscillation::~RunningVerticalOscillation(CMMsl::RunningVerticalOscillation *this)
{
  PB::Base::~Base(this);

  operator delete();
}

double CMMsl::RunningVerticalOscillation::RunningVerticalOscillation(CMMsl::RunningVerticalOscillation *this, const CMMsl::RunningVerticalOscillation *a2)
{
  *this = off_100421950;
  *(this + 10) = 0;
  v2 = *(a2 + 40);
  if ((v2 & 4) != 0)
  {
    result = *(a2 + 3);
    v3 = 4;
    *(this + 40) = 4;
    *(this + 3) = result;
    v2 = *(a2 + 40);
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 40) & 8) != 0)
  {
LABEL_5:
    result = *(a2 + 4);
    v3 |= 8u;
    *(this + 40) = v3;
    *(this + 4) = result;
    v2 = *(a2 + 40);
  }

LABEL_6:
  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      return result;
    }

LABEL_10:
    result = *(a2 + 2);
    *(this + 40) = v3 | 2;
    *(this + 2) = result;
    return result;
  }

  result = *(a2 + 1);
  v3 |= 1u;
  *(this + 40) = v3;
  *(this + 1) = result;
  if ((*(a2 + 40) & 2) != 0)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t CMMsl::RunningVerticalOscillation::operator=(uint64_t a1, const CMMsl::RunningVerticalOscillation *a2)
{
  if (a1 != a2)
  {
    CMMsl::RunningVerticalOscillation::RunningVerticalOscillation(&v7, a2);
    v3 = *(a1 + 40);
    *(a1 + 40) = v10;
    v10 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v9;
    v9 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v5;
    PB::Base::~Base(&v7);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::RunningVerticalOscillation *a2, CMMsl::RunningVerticalOscillation *a3)
{
  v3 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v3;
  v4 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v4;
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v6;
  result = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = result;
  return result;
}

double CMMsl::RunningVerticalOscillation::RunningVerticalOscillation(uint64_t a1, uint64_t a2)
{
  *a1 = off_100421950;
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

{
  *a1 = off_100421950;
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

uint64_t CMMsl::RunningVerticalOscillation::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v8 = off_100421950;
    v3 = *(a2 + 40);
    *(a2 + 40) = 0;
    v11 = *(a1 + 40);
    v10 = *(a1 + 24);
    v4 = *(a1 + 8);
    v5 = *(a2 + 8);
    v6 = *(a2 + 24);
    *(a1 + 40) = v3;
    *(a1 + 24) = v6;
    *(a1 + 8) = v5;
    v9 = v4;
    PB::Base::~Base(&v8);
  }

  return a1;
}

uint64_t CMMsl::RunningVerticalOscillation::formatText(CMMsl::RunningVerticalOscillation *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 40);
  if (v5)
  {
    PB::TextFormatter::format(a2, "displacement", *(this + 1));
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

  PB::TextFormatter::format(a2, "endTime", *(this + 2));
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
  PB::TextFormatter::format(a2, "startTime", *(this + 3));
  if ((*(this + 40) & 8) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(a2, "timestamp", *(this + 4));
  }

LABEL_6:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::RunningVerticalOscillation::readFrom(CMMsl::RunningVerticalOscillation *this, PB::Reader *a2)
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
          *(this + 40) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
LABEL_40:
            *(a2 + 24) = 1;
            goto LABEL_43;
          }

          *(this + 1) = *(*a2 + v2);
          goto LABEL_42;
        }

        if (v22 == 4)
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
      }

      else
      {
        if (v22 == 1)
        {
          *(this + 40) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_40;
          }

          *(this + 3) = *(*a2 + v2);
          goto LABEL_42;
        }

        if (v22 == 2)
        {
          *(this + 40) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_40;
          }

          *(this + 4) = *(*a2 + v2);
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

uint64_t CMMsl::RunningVerticalOscillation::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 40);
  if ((v4 & 4) != 0)
  {
    this = PB::Writer::write(a2, *(this + 24), 1u);
    v4 = *(v3 + 40);
    if ((v4 & 8) == 0)
    {
LABEL_3:
      if ((v4 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = PB::Writer::write(a2, *(v3 + 8), 3u);
      if ((*(v3 + 40) & 2) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 40) & 8) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 32), 2u);
  v4 = *(v3 + 40);
  if (v4)
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

uint64_t CMMsl::RunningVerticalOscillation::hash_value(CMMsl::RunningVerticalOscillation *this)
{
  if ((*(this + 40) & 4) == 0)
  {
    v1 = 0.0;
    if ((*(this + 40) & 8) != 0)
    {
      goto LABEL_3;
    }

LABEL_15:
    v2 = 0.0;
    if (*(this + 40))
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

  v1 = *(this + 3);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  if ((*(this + 40) & 8) == 0)
  {
    goto LABEL_15;
  }

LABEL_3:
  v2 = *(this + 4);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if (*(this + 40))
  {
LABEL_6:
    v3 = *(this + 1);
    if (v3 == 0.0)
    {
      v3 = 0.0;
    }

    if ((*(this + 40) & 2) != 0)
    {
      goto LABEL_9;
    }

LABEL_17:
    v4 = 0.0;
    return *&v2 ^ *&v1 ^ *&v3 ^ *&v4;
  }

LABEL_16:
  v3 = 0.0;
  if ((*(this + 40) & 2) == 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  v4 = *(this + 2);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  return *&v2 ^ *&v1 ^ *&v3 ^ *&v4;
}

void CMMsl::RunningVerticalOscillationGradientBoostedSignals::~RunningVerticalOscillationGradientBoostedSignals(CMMsl::RunningVerticalOscillationGradientBoostedSignals *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::RunningVerticalOscillationGradientBoostedSignals::RunningVerticalOscillationGradientBoostedSignals(uint64_t this, const CMMsl::RunningVerticalOscillationGradientBoostedSignals *a2)
{
  *this = off_100421988;
  *(this + 212) = 0;
  v2 = *(a2 + 53);
  if ((v2 & 0x40000) != 0)
  {
    v4 = *(a2 + 19);
    v3 = 0x40000;
    *(this + 212) = 0x40000;
    *(this + 152) = v4;
    v2 = *(a2 + 53);
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
    v5 = *(a2 + 15);
    v3 |= 0x4000u;
    *(this + 212) = v3;
    *(this + 120) = v5;
    v2 = *(a2 + 53);
  }

LABEL_6:
  if ((v2 & 0x400) != 0)
  {
    v6 = *(a2 + 11);
    v3 |= 0x400u;
    *(this + 212) = v3;
    *(this + 88) = v6;
    v2 = *(a2 + 53);
    if ((v2 & 0x800) == 0)
    {
LABEL_8:
      if ((v2 & 0x1000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_33;
    }
  }

  else if ((v2 & 0x800) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 12);
  v3 |= 0x800u;
  *(this + 212) = v3;
  *(this + 96) = v7;
  v2 = *(a2 + 53);
  if ((v2 & 0x1000) == 0)
  {
LABEL_9:
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_33:
  v8 = *(a2 + 13);
  v3 |= 0x1000u;
  *(this + 212) = v3;
  *(this + 104) = v8;
  v2 = *(a2 + 53);
  if ((v2 & 2) == 0)
  {
LABEL_10:
    if ((v2 & 0x1000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_35;
  }

LABEL_34:
  v9 = *(a2 + 2);
  v3 |= 2u;
  *(this + 212) = v3;
  *(this + 16) = v9;
  v2 = *(a2 + 53);
  if ((v2 & 0x1000000) == 0)
  {
LABEL_11:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_36;
  }

LABEL_35:
  v10 = *(a2 + 25);
  v3 |= 0x1000000u;
  *(this + 212) = v3;
  *(this + 200) = v10;
  v2 = *(a2 + 53);
  if ((v2 & 0x200000) == 0)
  {
LABEL_12:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_37;
  }

LABEL_36:
  v11 = *(a2 + 22);
  v3 |= 0x200000u;
  *(this + 212) = v3;
  *(this + 176) = v11;
  v2 = *(a2 + 53);
  if ((v2 & 0x100000) == 0)
  {
LABEL_13:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_38;
  }

LABEL_37:
  v12 = *(a2 + 21);
  v3 |= 0x100000u;
  *(this + 212) = v3;
  *(this + 168) = v12;
  v2 = *(a2 + 53);
  if ((v2 & 0x20000) == 0)
  {
LABEL_14:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_39;
  }

LABEL_38:
  v13 = *(a2 + 18);
  v3 |= 0x20000u;
  *(this + 212) = v3;
  *(this + 144) = v13;
  v2 = *(a2 + 53);
  if ((v2 & 0x8000) == 0)
  {
LABEL_15:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_40;
  }

LABEL_39:
  v14 = *(a2 + 16);
  v3 |= 0x8000u;
  *(this + 212) = v3;
  *(this + 128) = v14;
  v2 = *(a2 + 53);
  if ((v2 & 0x200) == 0)
  {
LABEL_16:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_41;
  }

LABEL_40:
  v15 = *(a2 + 10);
  v3 |= 0x200u;
  *(this + 212) = v3;
  *(this + 80) = v15;
  v2 = *(a2 + 53);
  if ((v2 & 0x40) == 0)
  {
LABEL_17:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_42;
  }

LABEL_41:
  v16 = *(a2 + 7);
  v3 |= 0x40u;
  *(this + 212) = v3;
  *(this + 56) = v16;
  v2 = *(a2 + 53);
  if ((v2 & 0x20) == 0)
  {
LABEL_18:
    if ((v2 & 8) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_43;
  }

LABEL_42:
  v17 = *(a2 + 6);
  v3 |= 0x20u;
  *(this + 212) = v3;
  *(this + 48) = v17;
  v2 = *(a2 + 53);
  if ((v2 & 8) == 0)
  {
LABEL_19:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_44;
  }

LABEL_43:
  v18 = *(a2 + 4);
  v3 |= 8u;
  *(this + 212) = v3;
  *(this + 32) = v18;
  v2 = *(a2 + 53);
  if ((v2 & 0x800000) == 0)
  {
LABEL_20:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_45;
  }

LABEL_44:
  v19 = *(a2 + 24);
  v3 |= 0x800000u;
  *(this + 212) = v3;
  *(this + 192) = v19;
  v2 = *(a2 + 53);
  if ((v2 & 0x10) == 0)
  {
LABEL_21:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_46;
  }

LABEL_45:
  v20 = *(a2 + 5);
  v3 |= 0x10u;
  *(this + 212) = v3;
  *(this + 40) = v20;
  v2 = *(a2 + 53);
  if ((v2 & 0x2000) == 0)
  {
LABEL_22:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_47;
  }

LABEL_46:
  v21 = *(a2 + 14);
  v3 |= 0x2000u;
  *(this + 212) = v3;
  *(this + 112) = v21;
  v2 = *(a2 + 53);
  if ((v2 & 0x100) == 0)
  {
LABEL_23:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_48;
  }

LABEL_47:
  v22 = *(a2 + 9);
  v3 |= 0x100u;
  *(this + 212) = v3;
  *(this + 72) = v22;
  v2 = *(a2 + 53);
  if ((v2 & 0x10000) == 0)
  {
LABEL_24:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_49;
  }

LABEL_48:
  v23 = *(a2 + 17);
  v3 |= 0x10000u;
  *(this + 212) = v3;
  *(this + 136) = v23;
  v2 = *(a2 + 53);
  if ((v2 & 0x80) == 0)
  {
LABEL_25:
    if ((v2 & 4) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_50;
  }

LABEL_49:
  v24 = *(a2 + 8);
  v3 |= 0x80u;
  *(this + 212) = v3;
  *(this + 64) = v24;
  v2 = *(a2 + 53);
  if ((v2 & 4) == 0)
  {
LABEL_26:
    if ((v2 & 1) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_51;
  }

LABEL_50:
  v25 = *(a2 + 3);
  v3 |= 4u;
  *(this + 212) = v3;
  *(this + 24) = v25;
  v2 = *(a2 + 53);
  if ((v2 & 1) == 0)
  {
LABEL_27:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_52;
  }

LABEL_51:
  v26 = *(a2 + 1);
  v3 |= 1u;
  *(this + 212) = v3;
  *(this + 8) = v26;
  v2 = *(a2 + 53);
  if ((v2 & 0x400000) == 0)
  {
LABEL_28:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_53;
  }

LABEL_52:
  v27 = *(a2 + 23);
  v3 |= 0x400000u;
  *(this + 212) = v3;
  *(this + 184) = v27;
  v2 = *(a2 + 53);
  if ((v2 & 0x80000) == 0)
  {
LABEL_29:
    if ((v2 & 0x2000000) == 0)
    {
      return this;
    }

LABEL_54:
    v29 = *(a2 + 208);
    *(this + 212) = v3 | 0x2000000;
    *(this + 208) = v29;
    return this;
  }

LABEL_53:
  v28 = *(a2 + 20);
  v3 |= 0x80000u;
  *(this + 212) = v3;
  *(this + 160) = v28;
  if ((*(a2 + 53) & 0x2000000) != 0)
  {
    goto LABEL_54;
  }

  return this;
}

CMMsl *CMMsl::RunningVerticalOscillationGradientBoostedSignals::operator=(CMMsl *a1, const CMMsl::RunningVerticalOscillationGradientBoostedSignals *a2)
{
  if (a1 != a2)
  {
    CMMsl::RunningVerticalOscillationGradientBoostedSignals::RunningVerticalOscillationGradientBoostedSignals(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::RunningVerticalOscillationGradientBoostedSignals *a2, CMMsl::RunningVerticalOscillationGradientBoostedSignals *a3)
{
  v3 = *(this + 53);
  *(this + 53) = *(a2 + 53);
  *(a2 + 53) = v3;
  v4 = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v4;
  v5 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v5;
  v6 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v6;
  v7 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v7;
  v8 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v8;
  v9 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v9;
  v10 = *(this + 25);
  *(this + 25) = *(a2 + 25);
  *(a2 + 25) = v10;
  v11 = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v11;
  v12 = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v12;
  v13 = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v13;
  v14 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v14;
  v15 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v15;
  v16 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v16;
  v17 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v17;
  v18 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v18;
  v19 = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v19;
  v20 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v20;
  v21 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v21;
  v22 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v22;
  v23 = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v23;
  v24 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v24;
  v25 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v25;
  v26 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v26;
  v27 = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = v27;
  result = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = result;
  LOBYTE(v3) = *(this + 208);
  *(this + 208) = *(a2 + 208);
  *(a2 + 208) = v3;
  return result;
}

double CMMsl::RunningVerticalOscillationGradientBoostedSignals::RunningVerticalOscillationGradientBoostedSignals(uint64_t a1, uint64_t a2)
{
  *a1 = off_100421988;
  *(a1 + 212) = *(a2 + 212);
  *(a2 + 212) = 0;
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 184) = *(a2 + 184);
  result = *(a2 + 160);
  *(a1 + 160) = result;
  *(a1 + 208) = *(a2 + 208);
  return result;
}

CMMsl *CMMsl::RunningVerticalOscillationGradientBoostedSignals::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::RunningVerticalOscillationGradientBoostedSignals::RunningVerticalOscillationGradientBoostedSignals(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::RunningVerticalOscillationGradientBoostedSignals::formatText(CMMsl::RunningVerticalOscillationGradientBoostedSignals *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 53);
  if (v5)
  {
    PB::TextFormatter::format(a2, "centerOfMassAccelZAmplitudeBackwards", *(this + 1));
    v5 = *(this + 53);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_33;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "height", *(this + 2));
  v5 = *(this + 53);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(a2, "integratedAngleYg", *(this + 3));
  v5 = *(this + 53);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_35;
  }

LABEL_34:
  PB::TextFormatter::format(a2, "integratedAngleYgBackwards", *(this + 4));
  v5 = *(this + 53);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(a2, "integratedCenterOfAccelZMaxBackwards", *(this + 5));
  v5 = *(this + 53);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(a2, "integratedRotationAxisWZ", *(this + 6));
  v5 = *(this + 53);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_38;
  }

LABEL_37:
  PB::TextFormatter::format(a2, "integratedRotationAxisWZForwards", *(this + 7));
  v5 = *(this + 53);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(a2, "integratedRotationRateYBackwards", *(this + 8));
  v5 = *(this + 53);
  if ((v5 & 0x100) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(a2, "integratedUserAccelTForwards", *(this + 9));
  v5 = *(this + 53);
  if ((v5 & 0x200) == 0)
  {
LABEL_11:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_41;
  }

LABEL_40:
  PB::TextFormatter::format(a2, "integratedUserAccelY", *(this + 10));
  v5 = *(this + 53);
  if ((v5 & 0x400) == 0)
  {
LABEL_12:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_42;
  }

LABEL_41:
  PB::TextFormatter::format(a2, "integratedVelocityZ", *(this + 11));
  v5 = *(this + 53);
  if ((v5 & 0x800) == 0)
  {
LABEL_13:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_43;
  }

LABEL_42:
  PB::TextFormatter::format(a2, "integratedVelocityZBackwards", *(this + 12));
  v5 = *(this + 53);
  if ((v5 & 0x1000) == 0)
  {
LABEL_14:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_44;
  }

LABEL_43:
  PB::TextFormatter::format(a2, "integratedVelocityZForwards", *(this + 13));
  v5 = *(this + 53);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_15:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_45;
  }

LABEL_44:
  PB::TextFormatter::format(a2, "isValidPeak", *(this + 208));
  v5 = *(this + 53);
  if ((v5 & 0x2000) == 0)
  {
LABEL_16:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_46;
  }

LABEL_45:
  PB::TextFormatter::format(a2, "medianCadence", *(this + 14));
  v5 = *(this + 53);
  if ((v5 & 0x4000) == 0)
  {
LABEL_17:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_47;
  }

LABEL_46:
  PB::TextFormatter::format(a2, "peakTime", *(this + 15));
  v5 = *(this + 53);
  if ((v5 & 0x8000) == 0)
  {
LABEL_18:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_48;
  }

LABEL_47:
  PB::TextFormatter::format(a2, "rotationAxisWTAmplitudeXForwards", *(this + 16));
  v5 = *(this + 53);
  if ((v5 & 0x10000) == 0)
  {
LABEL_19:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_49;
  }

LABEL_48:
  PB::TextFormatter::format(a2, "rotationRateMaxZForwards", *(this + 17));
  v5 = *(this + 53);
  if ((v5 & 0x20000) == 0)
  {
LABEL_20:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_50;
  }

LABEL_49:
  PB::TextFormatter::format(a2, "rotationTMaxZForwards", *(this + 18));
  v5 = *(this + 53);
  if ((v5 & 0x40000) == 0)
  {
LABEL_21:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_51;
  }

LABEL_50:
  PB::TextFormatter::format(a2, "startTime", *(this + 19));
  v5 = *(this + 53);
  if ((v5 & 0x80000) == 0)
  {
LABEL_22:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_52;
  }

LABEL_51:
  PB::TextFormatter::format(a2, "strideLengthCadence", *(this + 20));
  v5 = *(this + 53);
  if ((v5 & 0x100000) == 0)
  {
LABEL_23:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_53;
  }

LABEL_52:
  PB::TextFormatter::format(a2, "swingAccelAmplitudeYBackwards", *(this + 21));
  v5 = *(this + 53);
  if ((v5 & 0x200000) == 0)
  {
LABEL_24:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_54;
  }

LABEL_53:
  PB::TextFormatter::format(a2, "swingAccelMeanXBackwards", *(this + 22));
  v5 = *(this + 53);
  if ((v5 & 0x400000) == 0)
  {
LABEL_25:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_55;
  }

LABEL_54:
  PB::TextFormatter::format(a2, "swingAccelTZMean", *(this + 23));
  v5 = *(this + 53);
  if ((v5 & 0x800000) == 0)
  {
LABEL_26:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_55:
  PB::TextFormatter::format(a2, "userAccelTMeanXBackards", *(this + 24));
  if ((*(this + 53) & 0x1000000) != 0)
  {
LABEL_27:
    PB::TextFormatter::format(a2, "weight", *(this + 25));
  }

LABEL_28:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::RunningVerticalOscillationGradientBoostedSignals::readFrom(CMMsl::RunningVerticalOscillationGradientBoostedSignals *this, PB::Reader *a2)
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
        goto LABEL_110;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 53) |= 0x40000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_99;
          }

          *(this + 19) = *(*a2 + v2);
          goto LABEL_105;
        case 2u:
          *(this + 53) |= 0x4000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_99;
          }

          *(this + 15) = *(*a2 + v2);
          goto LABEL_105;
        case 3u:
          *(this + 53) |= 0x400u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_99;
          }

          *(this + 11) = *(*a2 + v2);
          goto LABEL_105;
        case 4u:
          *(this + 53) |= 0x800u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_99;
          }

          *(this + 12) = *(*a2 + v2);
          goto LABEL_105;
        case 5u:
          *(this + 53) |= 0x1000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_99;
          }

          *(this + 13) = *(*a2 + v2);
          goto LABEL_105;
        case 6u:
          *(this + 53) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_99;
          }

          *(this + 2) = *(*a2 + v2);
          goto LABEL_105;
        case 7u:
          *(this + 53) |= 0x1000000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_99;
          }

          *(this + 25) = *(*a2 + v2);
          goto LABEL_105;
        case 8u:
          *(this + 53) |= 0x200000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_99;
          }

          *(this + 22) = *(*a2 + v2);
          goto LABEL_105;
        case 9u:
          *(this + 53) |= 0x100000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_99;
          }

          *(this + 21) = *(*a2 + v2);
          goto LABEL_105;
        case 0xAu:
          *(this + 53) |= 0x20000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_99;
          }

          *(this + 18) = *(*a2 + v2);
          goto LABEL_105;
        case 0xBu:
          *(this + 53) |= 0x8000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_99;
          }

          *(this + 16) = *(*a2 + v2);
          goto LABEL_105;
        case 0xCu:
          *(this + 53) |= 0x200u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_99;
          }

          *(this + 10) = *(*a2 + v2);
          goto LABEL_105;
        case 0xDu:
          *(this + 53) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_99;
          }

          *(this + 7) = *(*a2 + v2);
          goto LABEL_105;
        case 0xEu:
          *(this + 53) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_99;
          }

          *(this + 6) = *(*a2 + v2);
          goto LABEL_105;
        case 0xFu:
          *(this + 53) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_99;
          }

          *(this + 4) = *(*a2 + v2);
          goto LABEL_105;
        case 0x10u:
          *(this + 53) |= 0x800000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_99;
          }

          *(this + 24) = *(*a2 + v2);
          goto LABEL_105;
        case 0x11u:
          *(this + 53) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_99;
          }

          *(this + 5) = *(*a2 + v2);
          goto LABEL_105;
        case 0x12u:
          *(this + 53) |= 0x2000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_99;
          }

          *(this + 14) = *(*a2 + v2);
          goto LABEL_105;
        case 0x13u:
          *(this + 53) |= 0x100u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_99;
          }

          *(this + 9) = *(*a2 + v2);
          goto LABEL_105;
        case 0x14u:
          *(this + 53) |= 0x10000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_99;
          }

          *(this + 17) = *(*a2 + v2);
          goto LABEL_105;
        case 0x15u:
          *(this + 53) |= 0x80u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_99;
          }

          *(this + 8) = *(*a2 + v2);
          goto LABEL_105;
        case 0x16u:
          *(this + 53) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_99;
          }

          *(this + 3) = *(*a2 + v2);
          goto LABEL_105;
        case 0x17u:
          *(this + 53) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_99;
          }

          *(this + 1) = *(*a2 + v2);
          goto LABEL_105;
        case 0x18u:
          *(this + 53) |= 0x400000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_99;
          }

          *(this + 23) = *(*a2 + v2);
          goto LABEL_105;
        case 0x19u:
          *(this + 53) |= 0x80000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
LABEL_99:
            *(a2 + 24) = 1;
          }

          else
          {
            *(this + 20) = *(*a2 + v2);
LABEL_105:
            v2 = *(a2 + 1) + 8;
            *(a2 + 1) = v2;
          }

          goto LABEL_106;
        case 0x1Au:
          *(this + 53) |= 0x2000000u;
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

          *(this + 208) = v23;
          goto LABEL_106;
        default:
          if (!PB::Reader::skip(a2, v10 >> 3, v10 & 7, 0))
          {
            v24 = 0;
            return v24 & 1;
          }

          v2 = *(a2 + 1);
LABEL_106:
          v3 = *(a2 + 2);
          v4 = *(a2 + 24);
          if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
          {
            goto LABEL_110;
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

LABEL_110:
  v24 = v4 ^ 1;
  return v24 & 1;
}

uint64_t CMMsl::RunningVerticalOscillationGradientBoostedSignals::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 212);
  if ((v4 & 0x40000) != 0)
  {
    this = PB::Writer::write(a2, *(this + 152), 1u);
    v4 = *(v3 + 212);
    if ((v4 & 0x4000) == 0)
    {
LABEL_3:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_30;
    }
  }

  else if ((v4 & 0x4000) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 120), 2u);
  v4 = *(v3 + 212);
  if ((v4 & 0x400) == 0)
  {
LABEL_4:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = PB::Writer::write(a2, *(v3 + 88), 3u);
  v4 = *(v3 + 212);
  if ((v4 & 0x800) == 0)
  {
LABEL_5:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = PB::Writer::write(a2, *(v3 + 96), 4u);
  v4 = *(v3 + 212);
  if ((v4 & 0x1000) == 0)
  {
LABEL_6:
    if ((v4 & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = PB::Writer::write(a2, *(v3 + 104), 5u);
  v4 = *(v3 + 212);
  if ((v4 & 2) == 0)
  {
LABEL_7:
    if ((v4 & 0x1000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = PB::Writer::write(a2, *(v3 + 16), 6u);
  v4 = *(v3 + 212);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_8:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = PB::Writer::write(a2, *(v3 + 200), 7u);
  v4 = *(v3 + 212);
  if ((v4 & 0x200000) == 0)
  {
LABEL_9:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = PB::Writer::write(a2, *(v3 + 176), 8u);
  v4 = *(v3 + 212);
  if ((v4 & 0x100000) == 0)
  {
LABEL_10:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = PB::Writer::write(a2, *(v3 + 168), 9u);
  v4 = *(v3 + 212);
  if ((v4 & 0x20000) == 0)
  {
LABEL_11:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = PB::Writer::write(a2, *(v3 + 144), 0xAu);
  v4 = *(v3 + 212);
  if ((v4 & 0x8000) == 0)
  {
LABEL_12:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = PB::Writer::write(a2, *(v3 + 128), 0xBu);
  v4 = *(v3 + 212);
  if ((v4 & 0x200) == 0)
  {
LABEL_13:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_40;
  }

LABEL_39:
  this = PB::Writer::write(a2, *(v3 + 80), 0xCu);
  v4 = *(v3 + 212);
  if ((v4 & 0x40) == 0)
  {
LABEL_14:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_41;
  }

LABEL_40:
  this = PB::Writer::write(a2, *(v3 + 56), 0xDu);
  v4 = *(v3 + 212);
  if ((v4 & 0x20) == 0)
  {
LABEL_15:
    if ((v4 & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_42;
  }

LABEL_41:
  this = PB::Writer::write(a2, *(v3 + 48), 0xEu);
  v4 = *(v3 + 212);
  if ((v4 & 8) == 0)
  {
LABEL_16:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_43;
  }

LABEL_42:
  this = PB::Writer::write(a2, *(v3 + 32), 0xFu);
  v4 = *(v3 + 212);
  if ((v4 & 0x800000) == 0)
  {
LABEL_17:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_44;
  }

LABEL_43:
  this = PB::Writer::write(a2, *(v3 + 192), 0x10u);
  v4 = *(v3 + 212);
  if ((v4 & 0x10) == 0)
  {
LABEL_18:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_45;
  }

LABEL_44:
  this = PB::Writer::write(a2, *(v3 + 40), 0x11u);
  v4 = *(v3 + 212);
  if ((v4 & 0x2000) == 0)
  {
LABEL_19:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_46;
  }

LABEL_45:
  this = PB::Writer::write(a2, *(v3 + 112), 0x12u);
  v4 = *(v3 + 212);
  if ((v4 & 0x100) == 0)
  {
LABEL_20:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_47;
  }

LABEL_46:
  this = PB::Writer::write(a2, *(v3 + 72), 0x13u);
  v4 = *(v3 + 212);
  if ((v4 & 0x10000) == 0)
  {
LABEL_21:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_48;
  }

LABEL_47:
  this = PB::Writer::write(a2, *(v3 + 136), 0x14u);
  v4 = *(v3 + 212);
  if ((v4 & 0x80) == 0)
  {
LABEL_22:
    if ((v4 & 4) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_49;
  }

LABEL_48:
  this = PB::Writer::write(a2, *(v3 + 64), 0x15u);
  v4 = *(v3 + 212);
  if ((v4 & 4) == 0)
  {
LABEL_23:
    if ((v4 & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_50;
  }

LABEL_49:
  this = PB::Writer::write(a2, *(v3 + 24), 0x16u);
  v4 = *(v3 + 212);
  if ((v4 & 1) == 0)
  {
LABEL_24:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_51;
  }

LABEL_50:
  this = PB::Writer::write(a2, *(v3 + 8), 0x17u);
  v4 = *(v3 + 212);
  if ((v4 & 0x400000) == 0)
  {
LABEL_25:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_26;
    }

LABEL_52:
    this = PB::Writer::write(a2, *(v3 + 160), 0x19u);
    if ((*(v3 + 212) & 0x2000000) == 0)
    {
      return this;
    }

    goto LABEL_53;
  }

LABEL_51:
  this = PB::Writer::write(a2, *(v3 + 184), 0x18u);
  v4 = *(v3 + 212);
  if ((v4 & 0x80000) != 0)
  {
    goto LABEL_52;
  }

LABEL_26:
  if ((v4 & 0x2000000) == 0)
  {
    return this;
  }

LABEL_53:
  v5 = *(v3 + 208);

  return PB::Writer::write(a2, v5, 0x1Au);
}

uint64_t CMMsl::RunningVerticalOscillationGradientBoostedSignals::hash_value(CMMsl::RunningVerticalOscillationGradientBoostedSignals *this)
{
  v1 = *(this + 53);
  if ((v1 & 0x40000) == 0)
  {
    v2 = 0.0;
    if ((v1 & 0x4000) != 0)
    {
      goto LABEL_3;
    }

LABEL_51:
    v3 = 0.0;
    if ((v1 & 0x400) != 0)
    {
      goto LABEL_6;
    }

LABEL_52:
    v4 = 0.0;
    if ((v1 & 0x800) != 0)
    {
      goto LABEL_9;
    }

LABEL_53:
    v5 = 0.0;
    if ((v1 & 0x1000) != 0)
    {
      goto LABEL_12;
    }

LABEL_54:
    v6 = 0.0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_15;
    }

LABEL_55:
    v7 = 0.0;
    if ((v1 & 0x1000000) != 0)
    {
      goto LABEL_18;
    }

LABEL_56:
    v8 = 0.0;
    if ((v1 & 0x200000) != 0)
    {
      goto LABEL_21;
    }

LABEL_57:
    v9 = 0.0;
    if ((v1 & 0x100000) != 0)
    {
      goto LABEL_24;
    }

LABEL_58:
    v10 = 0.0;
    if ((v1 & 0x20000) != 0)
    {
      goto LABEL_27;
    }

LABEL_59:
    v11 = 0.0;
    if ((v1 & 0x8000) != 0)
    {
      goto LABEL_30;
    }

LABEL_60:
    v12 = 0.0;
    if ((v1 & 0x200) != 0)
    {
      goto LABEL_33;
    }

LABEL_61:
    v13 = 0.0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_36;
    }

LABEL_62:
    v14 = 0.0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_39;
    }

LABEL_63:
    v15 = 0.0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_42;
    }

    goto LABEL_64;
  }

  v2 = *(this + 19);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((v1 & 0x4000) == 0)
  {
    goto LABEL_51;
  }

LABEL_3:
  v3 = *(this + 15);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  if ((v1 & 0x400) == 0)
  {
    goto LABEL_52;
  }

LABEL_6:
  v4 = *(this + 11);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  if ((v1 & 0x800) == 0)
  {
    goto LABEL_53;
  }

LABEL_9:
  v5 = *(this + 12);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  if ((v1 & 0x1000) == 0)
  {
    goto LABEL_54;
  }

LABEL_12:
  v6 = *(this + 13);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  if ((v1 & 2) == 0)
  {
    goto LABEL_55;
  }

LABEL_15:
  v7 = *(this + 2);
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  if ((v1 & 0x1000000) == 0)
  {
    goto LABEL_56;
  }

LABEL_18:
  v8 = *(this + 25);
  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  if ((v1 & 0x200000) == 0)
  {
    goto LABEL_57;
  }

LABEL_21:
  v9 = *(this + 22);
  if (v9 == 0.0)
  {
    v9 = 0.0;
  }

  if ((v1 & 0x100000) == 0)
  {
    goto LABEL_58;
  }

LABEL_24:
  v10 = *(this + 21);
  if (v10 == 0.0)
  {
    v10 = 0.0;
  }

  if ((v1 & 0x20000) == 0)
  {
    goto LABEL_59;
  }

LABEL_27:
  v11 = *(this + 18);
  if (v11 == 0.0)
  {
    v11 = 0.0;
  }

  if ((v1 & 0x8000) == 0)
  {
    goto LABEL_60;
  }

LABEL_30:
  v12 = *(this + 16);
  if (v12 == 0.0)
  {
    v12 = 0.0;
  }

  if ((v1 & 0x200) == 0)
  {
    goto LABEL_61;
  }

LABEL_33:
  v13 = *(this + 10);
  if (v13 == 0.0)
  {
    v13 = 0.0;
  }

  if ((v1 & 0x40) == 0)
  {
    goto LABEL_62;
  }

LABEL_36:
  v14 = *(this + 7);
  if (v14 == 0.0)
  {
    v14 = 0.0;
  }

  if ((v1 & 0x20) == 0)
  {
    goto LABEL_63;
  }

LABEL_39:
  v15 = *(this + 6);
  if (v15 == 0.0)
  {
    v15 = 0.0;
  }

  if ((v1 & 8) != 0)
  {
LABEL_42:
    v16 = *(this + 4);
    if (v16 == 0.0)
    {
      v16 = 0.0;
    }

    if ((v1 & 0x800000) != 0)
    {
      goto LABEL_45;
    }

LABEL_65:
    v17 = 0.0;
    goto LABEL_66;
  }

LABEL_64:
  v16 = 0.0;
  if ((v1 & 0x800000) == 0)
  {
    goto LABEL_65;
  }

LABEL_45:
  v17 = *(this + 24);
  if (v17 == 0.0)
  {
    v17 = 0.0;
  }

LABEL_66:
  if ((v1 & 0x10) == 0)
  {
    v18 = 0.0;
    if ((v1 & 0x2000) != 0)
    {
      goto LABEL_68;
    }

LABEL_96:
    v19 = 0.0;
    if ((v1 & 0x100) != 0)
    {
      goto LABEL_71;
    }

LABEL_97:
    v20 = 0.0;
    if ((v1 & 0x10000) != 0)
    {
      goto LABEL_74;
    }

LABEL_98:
    v21 = 0.0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_77;
    }

LABEL_99:
    v22 = 0.0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_80;
    }

LABEL_100:
    v23 = 0.0;
    if (v1)
    {
      goto LABEL_83;
    }

LABEL_101:
    v24 = 0.0;
    if ((v1 & 0x400000) != 0)
    {
      goto LABEL_86;
    }

LABEL_102:
    v25 = 0.0;
    if ((v1 & 0x80000) != 0)
    {
      goto LABEL_89;
    }

    goto LABEL_103;
  }

  v18 = *(this + 5);
  if (v18 == 0.0)
  {
    v18 = 0.0;
  }

  if ((v1 & 0x2000) == 0)
  {
    goto LABEL_96;
  }

LABEL_68:
  v19 = *(this + 14);
  if (v19 == 0.0)
  {
    v19 = 0.0;
  }

  if ((v1 & 0x100) == 0)
  {
    goto LABEL_97;
  }

LABEL_71:
  v20 = *(this + 9);
  if (v20 == 0.0)
  {
    v20 = 0.0;
  }

  if ((v1 & 0x10000) == 0)
  {
    goto LABEL_98;
  }

LABEL_74:
  v21 = *(this + 17);
  if (v21 == 0.0)
  {
    v21 = 0.0;
  }

  if ((v1 & 0x80) == 0)
  {
    goto LABEL_99;
  }

LABEL_77:
  v22 = *(this + 8);
  if (v22 == 0.0)
  {
    v22 = 0.0;
  }

  if ((v1 & 4) == 0)
  {
    goto LABEL_100;
  }

LABEL_80:
  v23 = *(this + 3);
  if (v23 == 0.0)
  {
    v23 = 0.0;
  }

  if ((v1 & 1) == 0)
  {
    goto LABEL_101;
  }

LABEL_83:
  v24 = *(this + 1);
  if (v24 == 0.0)
  {
    v24 = 0.0;
  }

  if ((v1 & 0x400000) == 0)
  {
    goto LABEL_102;
  }

LABEL_86:
  v25 = *(this + 23);
  if (v25 == 0.0)
  {
    v25 = 0.0;
  }

  if ((v1 & 0x80000) != 0)
  {
LABEL_89:
    v26 = *(this + 20);
    if (v26 == 0.0)
    {
      v26 = 0.0;
    }

    if ((v1 & 0x2000000) != 0)
    {
      goto LABEL_92;
    }

LABEL_104:
    v27 = 0;
    return *&v3 ^ *&v2 ^ *&v4 ^ *&v5 ^ *&v6 ^ *&v7 ^ *&v8 ^ *&v9 ^ *&v10 ^ *&v11 ^ *&v12 ^ *&v13 ^ *&v14 ^ *&v15 ^ *&v16 ^ *&v17 ^ *&v18 ^ *&v19 ^ *&v20 ^ *&v21 ^ *&v22 ^ *&v23 ^ *&v24 ^ *&v25 ^ *&v26 ^ v27;
  }

LABEL_103:
  v26 = 0.0;
  if ((v1 & 0x2000000) == 0)
  {
    goto LABEL_104;
  }

LABEL_92:
  v27 = *(this + 208);
  return *&v3 ^ *&v2 ^ *&v4 ^ *&v5 ^ *&v6 ^ *&v7 ^ *&v8 ^ *&v9 ^ *&v10 ^ *&v11 ^ *&v12 ^ *&v13 ^ *&v14 ^ *&v15 ^ *&v16 ^ *&v17 ^ *&v18 ^ *&v19 ^ *&v20 ^ *&v21 ^ *&v22 ^ *&v23 ^ *&v24 ^ *&v25 ^ *&v26 ^ v27;
}

void CMMsl::RunningVerticalOscillationSignals::~RunningVerticalOscillationSignals(CMMsl::RunningVerticalOscillationSignals *this)
{
  PB::Base::~Base(this);

  operator delete();
}

double CMMsl::RunningVerticalOscillationSignals::RunningVerticalOscillationSignals(CMMsl::RunningVerticalOscillationSignals *this, const CMMsl::RunningVerticalOscillationSignals *a2)
{
  *this = off_1004219C0;
  *(this + 52) = 0;
  v2 = *(a2 + 52);
  if ((v2 & 0x400) != 0)
  {
    result = *(a2 + 11);
    v3 = 1024;
    *(this + 52) = 1024;
    *(this + 11) = result;
    v2 = *(a2 + 52);
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x10000) != 0)
  {
LABEL_5:
    result = *(a2 + 17);
    v3 |= 0x10000u;
    *(this + 52) = v3;
    *(this + 17) = result;
    v2 = *(a2 + 52);
  }

LABEL_6:
  if (v2)
  {
    result = *(a2 + 1);
    v3 |= 1u;
    *(this + 52) = v3;
    *(this + 1) = result;
    v2 = *(a2 + 52);
    if ((v2 & 0x800000) == 0)
    {
LABEL_8:
      if ((v2 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_32;
    }
  }

  else if ((v2 & 0x800000) == 0)
  {
    goto LABEL_8;
  }

  result = *(a2 + 24);
  v3 |= 0x800000u;
  *(this + 52) = v3;
  *(this + 24) = result;
  v2 = *(a2 + 52);
  if ((v2 & 0x40) == 0)
  {
LABEL_9:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_33;
  }

LABEL_32:
  result = *(a2 + 7);
  v3 |= 0x40u;
  *(this + 52) = v3;
  *(this + 7) = result;
  v2 = *(a2 + 52);
  if ((v2 & 0x800) == 0)
  {
LABEL_10:
    if ((v2 & 0x1000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_34;
  }

LABEL_33:
  result = *(a2 + 12);
  v3 |= 0x800u;
  *(this + 52) = v3;
  *(this + 12) = result;
  v2 = *(a2 + 52);
  if ((v2 & 0x1000000) == 0)
  {
LABEL_11:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_35;
  }

LABEL_34:
  result = *(a2 + 25);
  v3 |= 0x1000000u;
  *(this + 52) = v3;
  *(this + 25) = result;
  v2 = *(a2 + 52);
  if ((v2 & 0x20) == 0)
  {
LABEL_12:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_36;
  }

LABEL_35:
  result = *(a2 + 6);
  v3 |= 0x20u;
  *(this + 52) = v3;
  *(this + 6) = result;
  v2 = *(a2 + 52);
  if ((v2 & 0x80) == 0)
  {
LABEL_13:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = *(a2 + 8);
  v3 |= 0x80u;
  *(this + 52) = v3;
  *(this + 8) = result;
  v2 = *(a2 + 52);
  if ((v2 & 0x100000) == 0)
  {
LABEL_14:
    if ((v2 & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = *(a2 + 21);
  v3 |= 0x100000u;
  *(this + 52) = v3;
  *(this + 21) = result;
  v2 = *(a2 + 52);
  if ((v2 & 8) == 0)
  {
LABEL_15:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = *(a2 + 4);
  v3 |= 8u;
  *(this + 52) = v3;
  *(this + 4) = result;
  v2 = *(a2 + 52);
  if ((v2 & 0x200000) == 0)
  {
LABEL_16:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = *(a2 + 22);
  v3 |= 0x200000u;
  *(this + 52) = v3;
  *(this + 22) = result;
  v2 = *(a2 + 52);
  if ((v2 & 0x8000) == 0)
  {
LABEL_17:
    if ((v2 & 4) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = *(a2 + 16);
  v3 |= 0x8000u;
  *(this + 52) = v3;
  *(this + 16) = result;
  v2 = *(a2 + 52);
  if ((v2 & 4) == 0)
  {
LABEL_18:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_42;
  }

LABEL_41:
  result = *(a2 + 3);
  v3 |= 4u;
  *(this + 52) = v3;
  *(this + 3) = result;
  v2 = *(a2 + 52);
  if ((v2 & 0x10) == 0)
  {
LABEL_19:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = *(a2 + 5);
  v3 |= 0x10u;
  *(this + 52) = v3;
  *(this + 5) = result;
  v2 = *(a2 + 52);
  if ((v2 & 0x200) == 0)
  {
LABEL_20:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_44;
  }

LABEL_43:
  result = *(a2 + 10);
  v3 |= 0x200u;
  *(this + 52) = v3;
  *(this + 10) = result;
  v2 = *(a2 + 52);
  if ((v2 & 0x2000) == 0)
  {
LABEL_21:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_45;
  }

LABEL_44:
  result = *(a2 + 14);
  v3 |= 0x2000u;
  *(this + 52) = v3;
  *(this + 14) = result;
  v2 = *(a2 + 52);
  if ((v2 & 0x1000) == 0)
  {
LABEL_22:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_46;
  }

LABEL_45:
  result = *(a2 + 13);
  v3 |= 0x1000u;
  *(this + 52) = v3;
  *(this + 13) = result;
  v2 = *(a2 + 52);
  if ((v2 & 0x4000) == 0)
  {
LABEL_23:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_47;
  }

LABEL_46:
  result = *(a2 + 15);
  v3 |= 0x4000u;
  *(this + 52) = v3;
  *(this + 15) = result;
  v2 = *(a2 + 52);
  if ((v2 & 0x80000) == 0)
  {
LABEL_24:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_48;
  }

LABEL_47:
  result = *(a2 + 20);
  v3 |= 0x80000u;
  *(this + 52) = v3;
  *(this + 20) = result;
  v2 = *(a2 + 52);
  if ((v2 & 0x400000) == 0)
  {
LABEL_25:
    if ((v2 & 0x40000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_49;
  }

LABEL_48:
  result = *(a2 + 23);
  v3 |= 0x400000u;
  *(this + 52) = v3;
  *(this + 23) = result;
  v2 = *(a2 + 52);
  if ((v2 & 0x40000) == 0)
  {
LABEL_26:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_50;
  }

LABEL_49:
  result = *(a2 + 19);
  v3 |= 0x40000u;
  *(this + 52) = v3;
  *(this + 19) = result;
  v2 = *(a2 + 52);
  if ((v2 & 0x20000) == 0)
  {
LABEL_27:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_51;
  }

LABEL_50:
  result = *(a2 + 18);
  v3 |= 0x20000u;
  *(this + 52) = v3;
  *(this + 18) = result;
  v2 = *(a2 + 52);
  if ((v2 & 0x100) == 0)
  {
LABEL_28:
    if ((v2 & 2) == 0)
    {
      return result;
    }

LABEL_52:
    result = *(a2 + 2);
    *(this + 52) = v3 | 2;
    *(this + 2) = result;
    return result;
  }

LABEL_51:
  result = *(a2 + 9);
  v3 |= 0x100u;
  *(this + 52) = v3;
  *(this + 9) = result;
  if ((*(a2 + 52) & 2) != 0)
  {
    goto LABEL_52;
  }

  return result;
}

CMMsl *CMMsl::RunningVerticalOscillationSignals::operator=(CMMsl *a1, const CMMsl::RunningVerticalOscillationSignals *a2)
{
  if (a1 != a2)
  {
    CMMsl::RunningVerticalOscillationSignals::RunningVerticalOscillationSignals(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::RunningVerticalOscillationSignals *a2, CMMsl::RunningVerticalOscillationSignals *a3)
{
  v3 = *(this + 52);
  *(this + 52) = *(a2 + 52);
  *(a2 + 52) = v3;
  v4 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v4;
  v5 = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v5;
  v6 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v6;
  v7 = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v7;
  v8 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v8;
  v9 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v9;
  v10 = *(this + 25);
  *(this + 25) = *(a2 + 25);
  *(a2 + 25) = v10;
  v11 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v11;
  v12 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v12;
  v13 = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v13;
  v14 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v14;
  v15 = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v15;
  v16 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v16;
  v17 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v17;
  v18 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v18;
  v19 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v19;
  v20 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v20;
  v21 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v21;
  v22 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v22;
  v23 = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v23;
  v24 = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = v24;
  v25 = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v25;
  v26 = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v26;
  v27 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v27;
  result = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = result;
  return result;
}

double CMMsl::RunningVerticalOscillationSignals::RunningVerticalOscillationSignals(uint64_t a1, uint64_t a2)
{
  *a1 = off_1004219C0;
  *(a1 + 208) = *(a2 + 208);
  *(a2 + 208) = 0;
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 72) = *(a2 + 72);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

CMMsl *CMMsl::RunningVerticalOscillationSignals::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::RunningVerticalOscillationSignals::RunningVerticalOscillationSignals(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::RunningVerticalOscillationSignals::formatText(CMMsl::RunningVerticalOscillationSignals *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 52);
  if (v5)
  {
    PB::TextFormatter::format(a2, "acceleration", *(this + 1));
    v5 = *(this + 52);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_32;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "centerOfMassAccelAmplitude", *(this + 2));
  v5 = *(this + 52);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_33;
  }

LABEL_32:
  PB::TextFormatter::format(a2, "centerOfMassAccelMax", *(this + 3));
  v5 = *(this + 52);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(a2, "centripetalAccelMeanY", *(this + 4));
  v5 = *(this + 52);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_35;
  }

LABEL_34:
  PB::TextFormatter::format(a2, "centripetalAccelMeanZ", *(this + 5));
  v5 = *(this + 52);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(a2, "height", *(this + 6));
  v5 = *(this + 52);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(a2, "position", *(this + 7));
  v5 = *(this + 52);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_38;
  }

LABEL_37:
  PB::TextFormatter::format(a2, "rotationProjectedGravityAmplitude", *(this + 8));
  v5 = *(this + 52);
  if ((v5 & 0x100) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(a2, "rotationRateMean", *(this + 9));
  v5 = *(this + 52);
  if ((v5 & 0x200) == 0)
  {
LABEL_11:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(a2, "rotationRateMeanX", *(this + 10));
  v5 = *(this + 52);
  if ((v5 & 0x400) == 0)
  {
LABEL_12:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_41;
  }

LABEL_40:
  PB::TextFormatter::format(a2, "startTime", *(this + 11));
  v5 = *(this + 52);
  if ((v5 & 0x800) == 0)
  {
LABEL_13:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_42;
  }

LABEL_41:
  PB::TextFormatter::format(a2, "strideLengthCadence", *(this + 12));
  v5 = *(this + 52);
  if ((v5 & 0x1000) == 0)
  {
LABEL_14:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_43;
  }

LABEL_42:
  PB::TextFormatter::format(a2, "swingAccelAmplitudeY", *(this + 13));
  v5 = *(this + 52);
  if ((v5 & 0x2000) == 0)
  {
LABEL_15:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_44;
  }

LABEL_43:
  PB::TextFormatter::format(a2, "swingAccelAmplitudeZ", *(this + 14));
  v5 = *(this + 52);
  if ((v5 & 0x4000) == 0)
  {
LABEL_16:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_45;
  }

LABEL_44:
  PB::TextFormatter::format(a2, "swingAccelMaxY", *(this + 15));
  v5 = *(this + 52);
  if ((v5 & 0x8000) == 0)
  {
LABEL_17:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_46;
  }

LABEL_45:
  PB::TextFormatter::format(a2, "swingAccelMaxZ", *(this + 16));
  v5 = *(this + 52);
  if ((v5 & 0x10000) == 0)
  {
LABEL_18:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_47;
  }

LABEL_46:
  PB::TextFormatter::format(a2, "timestamp", *(this + 17));
  v5 = *(this + 52);
  if ((v5 & 0x20000) == 0)
  {
LABEL_19:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_48;
  }

LABEL_47:
  PB::TextFormatter::format(a2, "userAccelAmplitudeZ", *(this + 18));
  v5 = *(this + 52);
  if ((v5 & 0x40000) == 0)
  {
LABEL_20:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_49;
  }

LABEL_48:
  PB::TextFormatter::format(a2, "userAccelMaxX", *(this + 19));
  v5 = *(this + 52);
  if ((v5 & 0x80000) == 0)
  {
LABEL_21:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_50;
  }

LABEL_49:
  PB::TextFormatter::format(a2, "userAccelMaxY", *(this + 20));
  v5 = *(this + 52);
  if ((v5 & 0x100000) == 0)
  {
LABEL_22:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_51;
  }

LABEL_50:
  PB::TextFormatter::format(a2, "userAccelMean", *(this + 21));
  v5 = *(this + 52);
  if ((v5 & 0x200000) == 0)
  {
LABEL_23:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_52;
  }

LABEL_51:
  PB::TextFormatter::format(a2, "userAccelMeanY", *(this + 22));
  v5 = *(this + 52);
  if ((v5 & 0x400000) == 0)
  {
LABEL_24:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_53;
  }

LABEL_52:
  PB::TextFormatter::format(a2, "userAccelProjectedGravityAmplitudeCadence", *(this + 23));
  v5 = *(this + 52);
  if ((v5 & 0x800000) == 0)
  {
LABEL_25:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_53:
  PB::TextFormatter::format(a2, "velocity", *(this + 24));
  if ((*(this + 52) & 0x1000000) != 0)
  {
LABEL_26:
    PB::TextFormatter::format(a2, "weight", *(this + 25));
  }

LABEL_27:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::RunningVerticalOscillationSignals::readFrom(CMMsl::RunningVerticalOscillationSignals *this, PB::Reader *a2)
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
        goto LABEL_106;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 52) |= 0x400u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_97;
          }

          *(this + 11) = *(*a2 + v2);
          goto LABEL_101;
        case 2u:
          *(this + 52) |= 0x10000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_97;
          }

          *(this + 17) = *(*a2 + v2);
          goto LABEL_101;
        case 3u:
          *(this + 52) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_97;
          }

          *(this + 1) = *(*a2 + v2);
          goto LABEL_101;
        case 4u:
          *(this + 52) |= 0x800000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_97;
          }

          *(this + 24) = *(*a2 + v2);
          goto LABEL_101;
        case 5u:
          *(this + 52) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_97;
          }

          *(this + 7) = *(*a2 + v2);
          goto LABEL_101;
        case 6u:
          *(this + 52) |= 0x800u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_97;
          }

          *(this + 12) = *(*a2 + v2);
          goto LABEL_101;
        case 7u:
          *(this + 52) |= 0x1000000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_97;
          }

          *(this + 25) = *(*a2 + v2);
          goto LABEL_101;
        case 8u:
          *(this + 52) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_97;
          }

          *(this + 6) = *(*a2 + v2);
          goto LABEL_101;
        case 9u:
          *(this + 52) |= 0x80u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_97;
          }

          *(this + 8) = *(*a2 + v2);
          goto LABEL_101;
        case 0xAu:
          *(this + 52) |= 0x100000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_97;
          }

          *(this + 21) = *(*a2 + v2);
          goto LABEL_101;
        case 0xBu:
          *(this + 52) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_97;
          }

          *(this + 4) = *(*a2 + v2);
          goto LABEL_101;
        case 0xCu:
          *(this + 52) |= 0x200000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_97;
          }

          *(this + 22) = *(*a2 + v2);
          goto LABEL_101;
        case 0xDu:
          *(this + 52) |= 0x8000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_97;
          }

          *(this + 16) = *(*a2 + v2);
          goto LABEL_101;
        case 0xEu:
          *(this + 52) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_97;
          }

          *(this + 3) = *(*a2 + v2);
          goto LABEL_101;
        case 0xFu:
          *(this + 52) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_97;
          }

          *(this + 5) = *(*a2 + v2);
          goto LABEL_101;
        case 0x10u:
          *(this + 52) |= 0x200u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_97;
          }

          *(this + 10) = *(*a2 + v2);
          goto LABEL_101;
        case 0x11u:
          *(this + 52) |= 0x2000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_97;
          }

          *(this + 14) = *(*a2 + v2);
          goto LABEL_101;
        case 0x12u:
          *(this + 52) |= 0x1000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_97;
          }

          *(this + 13) = *(*a2 + v2);
          goto LABEL_101;
        case 0x13u:
          *(this + 52) |= 0x4000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_97;
          }

          *(this + 15) = *(*a2 + v2);
          goto LABEL_101;
        case 0x14u:
          *(this + 52) |= 0x80000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_97;
          }

          *(this + 20) = *(*a2 + v2);
          goto LABEL_101;
        case 0x15u:
          *(this + 52) |= 0x400000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_97;
          }

          *(this + 23) = *(*a2 + v2);
          goto LABEL_101;
        case 0x16u:
          *(this + 52) |= 0x40000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_97;
          }

          *(this + 19) = *(*a2 + v2);
          goto LABEL_101;
        case 0x17u:
          *(this + 52) |= 0x20000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_97;
          }

          *(this + 18) = *(*a2 + v2);
          goto LABEL_101;
        case 0x18u:
          *(this + 52) |= 0x100u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_97;
          }

          *(this + 9) = *(*a2 + v2);
          goto LABEL_101;
        case 0x19u:
          *(this + 52) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
LABEL_97:
            *(a2 + 24) = 1;
          }

          else
          {
            *(this + 2) = *(*a2 + v2);
LABEL_101:
            v2 = *(a2 + 1) + 8;
            *(a2 + 1) = v2;
          }

          goto LABEL_102;
        default:
          if (!PB::Reader::skip(a2, v10 >> 3, v10 & 7, 0))
          {
            v22 = 0;
            return v22 & 1;
          }

          v2 = *(a2 + 1);
LABEL_102:
          v3 = *(a2 + 2);
          v4 = *(a2 + 24);
          if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
          {
            goto LABEL_106;
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

LABEL_106:
  v22 = v4 ^ 1;
  return v22 & 1;
}

uint64_t CMMsl::RunningVerticalOscillationSignals::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 208);
  if ((v4 & 0x400) != 0)
  {
    this = PB::Writer::write(a2, *(this + 88), 1u);
    v4 = *(v3 + 208);
    if ((v4 & 0x10000) == 0)
    {
LABEL_3:
      if ((v4 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_29;
    }
  }

  else if ((v4 & 0x10000) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 136), 2u);
  v4 = *(v3 + 208);
  if ((v4 & 1) == 0)
  {
LABEL_4:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = PB::Writer::write(a2, *(v3 + 8), 3u);
  v4 = *(v3 + 208);
  if ((v4 & 0x800000) == 0)
  {
LABEL_5:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = PB::Writer::write(a2, *(v3 + 192), 4u);
  v4 = *(v3 + 208);
  if ((v4 & 0x40) == 0)
  {
LABEL_6:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = PB::Writer::write(a2, *(v3 + 56), 5u);
  v4 = *(v3 + 208);
  if ((v4 & 0x800) == 0)
  {
LABEL_7:
    if ((v4 & 0x1000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = PB::Writer::write(a2, *(v3 + 96), 6u);
  v4 = *(v3 + 208);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_8:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = PB::Writer::write(a2, *(v3 + 200), 7u);
  v4 = *(v3 + 208);
  if ((v4 & 0x20) == 0)
  {
LABEL_9:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = PB::Writer::write(a2, *(v3 + 48), 8u);
  v4 = *(v3 + 208);
  if ((v4 & 0x80) == 0)
  {
LABEL_10:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = PB::Writer::write(a2, *(v3 + 64), 9u);
  v4 = *(v3 + 208);
  if ((v4 & 0x100000) == 0)
  {
LABEL_11:
    if ((v4 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = PB::Writer::write(a2, *(v3 + 168), 0xAu);
  v4 = *(v3 + 208);
  if ((v4 & 8) == 0)
  {
LABEL_12:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = PB::Writer::write(a2, *(v3 + 32), 0xBu);
  v4 = *(v3 + 208);
  if ((v4 & 0x200000) == 0)
  {
LABEL_13:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = PB::Writer::write(a2, *(v3 + 176), 0xCu);
  v4 = *(v3 + 208);
  if ((v4 & 0x8000) == 0)
  {
LABEL_14:
    if ((v4 & 4) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_40;
  }

LABEL_39:
  this = PB::Writer::write(a2, *(v3 + 128), 0xDu);
  v4 = *(v3 + 208);
  if ((v4 & 4) == 0)
  {
LABEL_15:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_41;
  }

LABEL_40:
  this = PB::Writer::write(a2, *(v3 + 24), 0xEu);
  v4 = *(v3 + 208);
  if ((v4 & 0x10) == 0)
  {
LABEL_16:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_42;
  }

LABEL_41:
  this = PB::Writer::write(a2, *(v3 + 40), 0xFu);
  v4 = *(v3 + 208);
  if ((v4 & 0x200) == 0)
  {
LABEL_17:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_43;
  }

LABEL_42:
  this = PB::Writer::write(a2, *(v3 + 80), 0x10u);
  v4 = *(v3 + 208);
  if ((v4 & 0x2000) == 0)
  {
LABEL_18:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_44;
  }

LABEL_43:
  this = PB::Writer::write(a2, *(v3 + 112), 0x11u);
  v4 = *(v3 + 208);
  if ((v4 & 0x1000) == 0)
  {
LABEL_19:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_45;
  }

LABEL_44:
  this = PB::Writer::write(a2, *(v3 + 104), 0x12u);
  v4 = *(v3 + 208);
  if ((v4 & 0x4000) == 0)
  {
LABEL_20:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_46;
  }

LABEL_45:
  this = PB::Writer::write(a2, *(v3 + 120), 0x13u);
  v4 = *(v3 + 208);
  if ((v4 & 0x80000) == 0)
  {
LABEL_21:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_47;
  }

LABEL_46:
  this = PB::Writer::write(a2, *(v3 + 160), 0x14u);
  v4 = *(v3 + 208);
  if ((v4 & 0x400000) == 0)
  {
LABEL_22:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_48;
  }

LABEL_47:
  this = PB::Writer::write(a2, *(v3 + 184), 0x15u);
  v4 = *(v3 + 208);
  if ((v4 & 0x40000) == 0)
  {
LABEL_23:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_49;
  }

LABEL_48:
  this = PB::Writer::write(a2, *(v3 + 152), 0x16u);
  v4 = *(v3 + 208);
  if ((v4 & 0x20000) == 0)
  {
LABEL_24:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_25;
    }

LABEL_50:
    this = PB::Writer::write(a2, *(v3 + 72), 0x18u);
    if ((*(v3 + 208) & 2) == 0)
    {
      return this;
    }

    goto LABEL_51;
  }

LABEL_49:
  this = PB::Writer::write(a2, *(v3 + 144), 0x17u);
  v4 = *(v3 + 208);
  if ((v4 & 0x100) != 0)
  {
    goto LABEL_50;
  }

LABEL_25:
  if ((v4 & 2) == 0)
  {
    return this;
  }

LABEL_51:
  v5 = *(v3 + 16);

  return PB::Writer::write(a2, v5, 0x19u);
}

uint64_t CMMsl::RunningVerticalOscillationSignals::hash_value(CMMsl::RunningVerticalOscillationSignals *this)
{
  v1 = *(this + 52);
  if ((v1 & 0x400) == 0)
  {
    v2 = 0.0;
    if ((v1 & 0x10000) != 0)
    {
      goto LABEL_3;
    }

LABEL_51:
    v3 = 0.0;
    if (v1)
    {
      goto LABEL_6;
    }

LABEL_52:
    v4 = 0.0;
    if ((v1 & 0x800000) != 0)
    {
      goto LABEL_9;
    }

LABEL_53:
    v5 = 0.0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_12;
    }

LABEL_54:
    v6 = 0.0;
    if ((v1 & 0x800) != 0)
    {
      goto LABEL_15;
    }

LABEL_55:
    v7 = 0.0;
    if ((v1 & 0x1000000) != 0)
    {
      goto LABEL_18;
    }

LABEL_56:
    v8 = 0.0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_21;
    }

LABEL_57:
    v9 = 0.0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_24;
    }

LABEL_58:
    v10 = 0.0;
    if ((v1 & 0x100000) != 0)
    {
      goto LABEL_27;
    }

LABEL_59:
    v11 = 0.0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_30;
    }

LABEL_60:
    v12 = 0.0;
    if ((v1 & 0x200000) != 0)
    {
      goto LABEL_33;
    }

LABEL_61:
    v13 = 0.0;
    if ((v1 & 0x8000) != 0)
    {
      goto LABEL_36;
    }

LABEL_62:
    v14 = 0.0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_39;
    }

LABEL_63:
    v15 = 0.0;
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_42;
    }

    goto LABEL_64;
  }

  v2 = *(this + 11);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((v1 & 0x10000) == 0)
  {
    goto LABEL_51;
  }

LABEL_3:
  v3 = *(this + 17);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  if ((v1 & 1) == 0)
  {
    goto LABEL_52;
  }

LABEL_6:
  v4 = *(this + 1);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  if ((v1 & 0x800000) == 0)
  {
    goto LABEL_53;
  }

LABEL_9:
  v5 = *(this + 24);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  if ((v1 & 0x40) == 0)
  {
    goto LABEL_54;
  }

LABEL_12:
  v6 = *(this + 7);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  if ((v1 & 0x800) == 0)
  {
    goto LABEL_55;
  }

LABEL_15:
  v7 = *(this + 12);
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  if ((v1 & 0x1000000) == 0)
  {
    goto LABEL_56;
  }

LABEL_18:
  v8 = *(this + 25);
  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  if ((v1 & 0x20) == 0)
  {
    goto LABEL_57;
  }

LABEL_21:
  v9 = *(this + 6);
  if (v9 == 0.0)
  {
    v9 = 0.0;
  }

  if ((v1 & 0x80) == 0)
  {
    goto LABEL_58;
  }

LABEL_24:
  v10 = *(this + 8);
  if (v10 == 0.0)
  {
    v10 = 0.0;
  }

  if ((v1 & 0x100000) == 0)
  {
    goto LABEL_59;
  }

LABEL_27:
  v11 = *(this + 21);
  if (v11 == 0.0)
  {
    v11 = 0.0;
  }

  if ((v1 & 8) == 0)
  {
    goto LABEL_60;
  }

LABEL_30:
  v12 = *(this + 4);
  if (v12 == 0.0)
  {
    v12 = 0.0;
  }

  if ((v1 & 0x200000) == 0)
  {
    goto LABEL_61;
  }

LABEL_33:
  v13 = *(this + 22);
  if (v13 == 0.0)
  {
    v13 = 0.0;
  }

  if ((v1 & 0x8000) == 0)
  {
    goto LABEL_62;
  }

LABEL_36:
  v14 = *(this + 16);
  if (v14 == 0.0)
  {
    v14 = 0.0;
  }

  if ((v1 & 4) == 0)
  {
    goto LABEL_63;
  }

LABEL_39:
  v15 = *(this + 3);
  if (v15 == 0.0)
  {
    v15 = 0.0;
  }

  if ((v1 & 0x10) != 0)
  {
LABEL_42:
    v16 = *(this + 5);
    if (v16 == 0.0)
    {
      v16 = 0.0;
    }

    if ((v1 & 0x200) != 0)
    {
      goto LABEL_45;
    }

LABEL_65:
    v17 = 0.0;
    goto LABEL_66;
  }

LABEL_64:
  v16 = 0.0;
  if ((v1 & 0x200) == 0)
  {
    goto LABEL_65;
  }

LABEL_45:
  v17 = *(this + 10);
  if (v17 == 0.0)
  {
    v17 = 0.0;
  }

LABEL_66:
  if ((v1 & 0x2000) == 0)
  {
    v18 = 0.0;
    if ((v1 & 0x1000) != 0)
    {
      goto LABEL_68;
    }

LABEL_95:
    v19 = 0.0;
    if ((v1 & 0x4000) != 0)
    {
      goto LABEL_71;
    }

LABEL_96:
    v20 = 0.0;
    if ((v1 & 0x80000) != 0)
    {
      goto LABEL_74;
    }

LABEL_97:
    v21 = 0.0;
    if ((v1 & 0x400000) != 0)
    {
      goto LABEL_77;
    }

LABEL_98:
    v22 = 0.0;
    if ((v1 & 0x40000) != 0)
    {
      goto LABEL_80;
    }

LABEL_99:
    v23 = 0.0;
    if ((v1 & 0x20000) != 0)
    {
      goto LABEL_83;
    }

LABEL_100:
    v24 = 0.0;
    if ((v1 & 0x100) != 0)
    {
      goto LABEL_86;
    }

    goto LABEL_101;
  }

  v18 = *(this + 14);
  if (v18 == 0.0)
  {
    v18 = 0.0;
  }

  if ((v1 & 0x1000) == 0)
  {
    goto LABEL_95;
  }

LABEL_68:
  v19 = *(this + 13);
  if (v19 == 0.0)
  {
    v19 = 0.0;
  }

  if ((v1 & 0x4000) == 0)
  {
    goto LABEL_96;
  }

LABEL_71:
  v20 = *(this + 15);
  if (v20 == 0.0)
  {
    v20 = 0.0;
  }

  if ((v1 & 0x80000) == 0)
  {
    goto LABEL_97;
  }

LABEL_74:
  v21 = *(this + 20);
  if (v21 == 0.0)
  {
    v21 = 0.0;
  }

  if ((v1 & 0x400000) == 0)
  {
    goto LABEL_98;
  }

LABEL_77:
  v22 = *(this + 23);
  if (v22 == 0.0)
  {
    v22 = 0.0;
  }

  if ((v1 & 0x40000) == 0)
  {
    goto LABEL_99;
  }

LABEL_80:
  v23 = *(this + 19);
  if (v23 == 0.0)
  {
    v23 = 0.0;
  }

  if ((v1 & 0x20000) == 0)
  {
    goto LABEL_100;
  }

LABEL_83:
  v24 = *(this + 18);
  if (v24 == 0.0)
  {
    v24 = 0.0;
  }

  if ((v1 & 0x100) != 0)
  {
LABEL_86:
    v25 = *(this + 9);
    if (v25 == 0.0)
    {
      v25 = 0.0;
    }

    if ((v1 & 2) != 0)
    {
      goto LABEL_89;
    }

LABEL_102:
    v26 = 0.0;
    return *&v3 ^ *&v2 ^ *&v4 ^ *&v5 ^ *&v6 ^ *&v7 ^ *&v8 ^ *&v9 ^ *&v10 ^ *&v11 ^ *&v12 ^ *&v13 ^ *&v14 ^ *&v15 ^ *&v16 ^ *&v17 ^ *&v18 ^ *&v19 ^ *&v20 ^ *&v21 ^ *&v22 ^ *&v23 ^ *&v24 ^ *&v25 ^ *&v26;
  }

LABEL_101:
  v25 = 0.0;
  if ((v1 & 2) == 0)
  {
    goto LABEL_102;
  }

LABEL_89:
  v26 = *(this + 2);
  if (v26 == 0.0)
  {
    v26 = 0.0;
  }

  return *&v3 ^ *&v2 ^ *&v4 ^ *&v5 ^ *&v6 ^ *&v7 ^ *&v8 ^ *&v9 ^ *&v10 ^ *&v11 ^ *&v12 ^ *&v13 ^ *&v14 ^ *&v15 ^ *&v16 ^ *&v17 ^ *&v18 ^ *&v19 ^ *&v20 ^ *&v21 ^ *&v22 ^ *&v23 ^ *&v24 ^ *&v25 ^ *&v26;
}

uint64_t CMMsl::SMEstimatedTimeOfArrival::SMEstimatedTimeOfArrival(uint64_t this)
{
  *this = off_1004219F8;
  *(this + 36) = 0;
  return this;
}

{
  *this = off_1004219F8;
  *(this + 36) = 0;
  return this;
}

void CMMsl::SMEstimatedTimeOfArrival::~SMEstimatedTimeOfArrival(CMMsl::SMEstimatedTimeOfArrival *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::SMEstimatedTimeOfArrival::SMEstimatedTimeOfArrival(uint64_t this, const CMMsl::SMEstimatedTimeOfArrival *a2)
{
  *this = off_1004219F8;
  *(this + 36) = 0;
  v2 = *(a2 + 36);
  if ((v2 & 4) != 0)
  {
    v4 = *(a2 + 3);
    v3 = 4;
    *(this + 36) = 4;
    *(this + 24) = v4;
    v2 = *(a2 + 36);
    if ((v2 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if (*(a2 + 36))
  {
LABEL_5:
    v5 = *(a2 + 1);
    v3 |= 1u;
    *(this + 36) = v3;
    *(this + 8) = v5;
    v2 = *(a2 + 36);
  }

LABEL_6:
  if ((v2 & 2) == 0)
  {
    if ((v2 & 8) == 0)
    {
      return this;
    }

LABEL_10:
    v7 = *(a2 + 8);
    *(this + 36) = v3 | 8;
    *(this + 32) = v7;
    return this;
  }

  v6 = *(a2 + 2);
  v3 |= 2u;
  *(this + 36) = v3;
  *(this + 16) = v6;
  if ((*(a2 + 36) & 8) != 0)
  {
    goto LABEL_10;
  }

  return this;
}

uint64_t CMMsl::SMEstimatedTimeOfArrival::operator=(uint64_t a1, const CMMsl::SMEstimatedTimeOfArrival *a2)
{
  if (a1 != a2)
  {
    CMMsl::SMEstimatedTimeOfArrival::SMEstimatedTimeOfArrival(v7, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v3;
    *&v3 = v10;
    v4 = *(a1 + 24);
    v5 = *(a1 + 32);
    *(a1 + 24) = v9;
    *(a1 + 32) = v3;
    v9 = v4;
    v10 = v5;
    PB::Base::~Base(v7);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::SMEstimatedTimeOfArrival *a2, CMMsl::SMEstimatedTimeOfArrival *a3)
{
  v3 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v3;
  v4 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v4;
  v5 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v5;
  result = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = result;
  v7 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v7;
  return result;
}

double CMMsl::SMEstimatedTimeOfArrival::SMEstimatedTimeOfArrival(uint64_t a1, uint64_t a2)
{
  *a1 = off_1004219F8;
  *(a1 + 36) = *(a2 + 36);
  *(a2 + 36) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  *(a1 + 32) = *(a2 + 32);
  return result;
}

{
  *a1 = off_1004219F8;
  *(a1 + 36) = *(a2 + 36);
  *(a2 + 36) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  *(a1 + 32) = *(a2 + 32);
  return result;
}

uint64_t CMMsl::SMEstimatedTimeOfArrival::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v8 = off_1004219F8;
    v3 = *(a2 + 8);
    v4 = *(a2 + 24);
    v5 = *(a2 + 32);
    *(a2 + 36) = 0;
    v6 = *(a1 + 8);
    *(a1 + 8) = v3;
    v9 = v6;
    *&v3 = *(a1 + 24);
    *&v6 = *(a1 + 32);
    *(a1 + 24) = v4;
    *(a1 + 32) = v5;
    v10 = v3;
    v11 = v6;
    PB::Base::~Base(&v8);
  }

  return a1;
}

uint64_t CMMsl::SMEstimatedTimeOfArrival::formatText(CMMsl::SMEstimatedTimeOfArrival *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 36);
  if (v5)
  {
    PB::TextFormatter::format(a2, "calculatedArrival", *(this + 1));
    v5 = *(this + 36);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(this + 36) & 8) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "motionState", *(this + 8));
  v5 = *(this + 36);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  PB::TextFormatter::format(a2, "originalArrival", *(this + 2));
  if ((*(this + 36) & 4) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(a2, "timestamp", *(this + 3));
  }

LABEL_6:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::SMEstimatedTimeOfArrival::readFrom(CMMsl::SMEstimatedTimeOfArrival *this, PB::Reader *a2)
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
            goto LABEL_64;
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
          *(this + 36) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
LABEL_44:
            *(a2 + 24) = 1;
            goto LABEL_60;
          }

          *(this + 2) = *(*a2 + v2);
          goto LABEL_54;
        }

        if (v22 == 4)
        {
          *(this + 36) |= 8u;
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
                goto LABEL_59;
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
                goto LABEL_58;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v27) = 0;
            }

LABEL_58:
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

LABEL_59:
          *(this + 8) = v27;
          goto LABEL_60;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(this + 36) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_44;
          }

          *(this + 3) = *(*a2 + v2);
          goto LABEL_54;
        }

        if (v22 == 2)
        {
          *(this + 36) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_44;
          }

          *(this + 1) = *(*a2 + v2);
LABEL_54:
          v2 = *(a2 + 1) + 8;
          *(a2 + 1) = v2;
          goto LABEL_60;
        }
      }

      if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
      {
        v38 = 0;
        return v38 & 1;
      }

      v2 = *(a2 + 1);
LABEL_60:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_64:
  v38 = v4 ^ 1;
  return v38 & 1;
}

uint64_t CMMsl::SMEstimatedTimeOfArrival::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 36);
  if ((v4 & 4) != 0)
  {
    this = PB::Writer::write(a2, *(this + 24), 1u);
    v4 = *(v3 + 36);
    if ((v4 & 1) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = PB::Writer::write(a2, *(v3 + 16), 3u);
      if ((*(v3 + 36) & 8) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 36) & 1) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 8), 2u);
  v4 = *(v3 + 36);
  if ((v4 & 2) != 0)
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

  return PB::Writer::writeVarInt(a2, v5, 4u);
}

BOOL CMMsl::SMEstimatedTimeOfArrival::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 36) & 4) != 0)
  {
    if ((*(a2 + 36) & 4) == 0 || *(a1 + 24) != *(a2 + 24))
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

  v2 = (*(a2 + 36) & 8) == 0;
  if ((*(a1 + 36) & 8) != 0)
  {
    return (*(a2 + 36) & 8) != 0 && *(a1 + 32) == *(a2 + 32);
  }

  return v2;
}

uint64_t CMMsl::SMEstimatedTimeOfArrival::hash_value(CMMsl::SMEstimatedTimeOfArrival *this)
{
  if ((*(this + 36) & 4) == 0)
  {
    v1 = 0.0;
    if (*(this + 36))
    {
      goto LABEL_3;
    }

LABEL_13:
    v2 = 0.0;
    if ((*(this + 36) & 2) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

  v1 = *(this + 3);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  if ((*(this + 36) & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_3:
  v2 = *(this + 1);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((*(this + 36) & 2) != 0)
  {
LABEL_6:
    v3 = *(this + 2);
    if (v3 == 0.0)
    {
      v3 = 0.0;
    }

    if ((*(this + 36) & 8) != 0)
    {
      goto LABEL_9;
    }

LABEL_15:
    v4 = 0;
    return *&v2 ^ *&v1 ^ *&v3 ^ v4;
  }

LABEL_14:
  v3 = 0.0;
  if ((*(this + 36) & 8) == 0)
  {
    goto LABEL_15;
  }

LABEL_9:
  v4 = *(this + 8);
  return *&v2 ^ *&v1 ^ *&v3 ^ v4;
}

uint64_t CMMsl::SMLastScreenLock::SMLastScreenLock(uint64_t this)
{
  *this = off_100421A30;
  *(this + 24) = 0;
  return this;
}

{
  *this = off_100421A30;
  *(this + 24) = 0;
  return this;
}

void CMMsl::SMLastScreenLock::~SMLastScreenLock(CMMsl::SMLastScreenLock *this)
{
  PB::Base::~Base(this);

  operator delete();
}

double CMMsl::SMLastScreenLock::SMLastScreenLock(CMMsl::SMLastScreenLock *this, const CMMsl::SMLastScreenLock *a2)
{
  *this = off_100421A30;
  *(this + 6) = 0;
  if ((*(a2 + 24) & 2) != 0)
  {
    result = *(a2 + 2);
    *(this + 24) = 2;
    *(this + 2) = result;
    v2 = 3;
    if ((*(a2 + 24) & 1) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  v2 = 1;
  if (*(a2 + 24))
  {
LABEL_5:
    result = *(a2 + 1);
    *(this + 24) = v2;
    *(this + 1) = result;
  }

  return result;
}

uint64_t CMMsl::SMLastScreenLock::operator=(uint64_t a1, const CMMsl::SMLastScreenLock *a2)
{
  if (a1 != a2)
  {
    CMMsl::SMLastScreenLock::SMLastScreenLock(&v6, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    PB::Base::~Base(&v6);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::SMLastScreenLock *a2, CMMsl::SMLastScreenLock *a3)
{
  v3 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v3;
  v4 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v4;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  return result;
}

double CMMsl::SMLastScreenLock::SMLastScreenLock(uint64_t a1, uint64_t a2)
{
  *a1 = off_100421A30;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

{
  *a1 = off_100421A30;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

uint64_t CMMsl::SMLastScreenLock::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v7 = off_100421A30;
    v3 = *(a2 + 24);
    *(a2 + 24) = 0;
    v9 = *(a1 + 24);
    v4 = *(a1 + 8);
    v5 = *(a2 + 8);
    *(a1 + 24) = v3;
    *(a1 + 8) = v5;
    v8 = v4;
    PB::Base::~Base(&v7);
  }

  return a1;
}

uint64_t CMMsl::SMLastScreenLock::formatText(CMMsl::SMLastScreenLock *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 24);
  if (v5)
  {
    PB::TextFormatter::format(a2, "lastUnlockDate", *(this + 1));
    v5 = *(this + 24);
  }

  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 2));
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::SMLastScreenLock::readFrom(CMMsl::SMLastScreenLock *this, PB::Reader *a2)
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
        *(this + 24) |= 2u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_29;
        }

        *(this + 2) = *(*a2 + v2);
LABEL_33:
        v2 = *(a2 + 1) + 8;
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

    *(this + 24) |= 1u;
    v2 = *(a2 + 1);
    if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
    {
LABEL_29:
      *(a2 + 24) = 1;
      goto LABEL_34;
    }

    *(this + 1) = *(*a2 + v2);
    goto LABEL_33;
  }

LABEL_38:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t CMMsl::SMLastScreenLock::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 24);
  if ((v4 & 2) != 0)
  {
    this = PB::Writer::write(a2, *(this + 16), 1u);
    v4 = *(v3 + 24);
  }

  if (v4)
  {
    v5 = *(v3 + 8);

    return PB::Writer::write(a2, v5, 2u);
  }

  return this;
}

BOOL CMMsl::SMLastScreenLock::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    if ((*(a2 + 24) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 24) & 2) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 24) & 1) == 0;
  if (*(a1 + 24))
  {
    return (*(a2 + 24) & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return v2;
}

uint64_t CMMsl::SMLastScreenLock::hash_value(CMMsl::SMLastScreenLock *this)
{
  if ((*(this + 24) & 2) != 0)
  {
    v1 = *(this + 2);
    if (v1 == 0.0)
    {
      v1 = 0.0;
    }

    if (*(this + 24))
    {
      goto LABEL_3;
    }

LABEL_9:
    v2 = 0.0;
    return *&v2 ^ *&v1;
  }

  v1 = 0.0;
  if ((*(this + 24) & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  v2 = *(this + 1);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  return *&v2 ^ *&v1;
}

uint64_t CMMsl::SMLockStateChange::SMLockStateChange(uint64_t this)
{
  *this = off_100421A68;
  *(this + 24) = 0;
  return this;
}

{
  *this = off_100421A68;
  *(this + 24) = 0;
  return this;
}

void CMMsl::SMLockStateChange::~SMLockStateChange(CMMsl::SMLockStateChange *this)
{
  PB::Base::~Base(this);

  operator delete();
}

double CMMsl::SMLockStateChange::SMLockStateChange(CMMsl::SMLockStateChange *this, const CMMsl::SMLockStateChange *a2)
{
  *this = off_100421A68;
  *(this + 6) = 0;
  if ((*(a2 + 24) & 2) != 0)
  {
    result = *(a2 + 2);
    *(this + 24) = 2;
    *(this + 2) = result;
    v2 = 3;
    if ((*(a2 + 24) & 1) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  v2 = 1;
  if (*(a2 + 24))
  {
LABEL_5:
    result = *(a2 + 1);
    *(this + 24) = v2;
    *(this + 1) = result;
  }

  return result;
}

uint64_t CMMsl::SMLockStateChange::operator=(uint64_t a1, const CMMsl::SMLockStateChange *a2)
{
  if (a1 != a2)
  {
    CMMsl::SMLockStateChange::SMLockStateChange(&v6, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    PB::Base::~Base(&v6);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::SMLockStateChange *a2, CMMsl::SMLockStateChange *a3)
{
  v3 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v3;
  v4 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v4;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  return result;
}

double CMMsl::SMLockStateChange::SMLockStateChange(uint64_t a1, uint64_t a2)
{
  *a1 = off_100421A68;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

{
  *a1 = off_100421A68;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

uint64_t CMMsl::SMLockStateChange::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v7 = off_100421A68;
    v3 = *(a2 + 24);
    *(a2 + 24) = 0;
    v9 = *(a1 + 24);
    v4 = *(a1 + 8);
    v5 = *(a2 + 8);
    *(a1 + 24) = v3;
    *(a1 + 8) = v5;
    v8 = v4;
    PB::Base::~Base(&v7);
  }

  return a1;
}

uint64_t CMMsl::SMLockStateChange::formatText(CMMsl::SMLockStateChange *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 24);
  if (v5)
  {
    PB::TextFormatter::format(a2, "stateChangeType", *(this + 1));
    v5 = *(this + 24);
  }

  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 2));
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::SMLockStateChange::readFrom(CMMsl::SMLockStateChange *this, PB::Reader *a2)
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
        *(this + 24) |= 2u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_29;
        }

        *(this + 2) = *(*a2 + v2);
LABEL_33:
        v2 = *(a2 + 1) + 8;
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

    *(this + 24) |= 1u;
    v2 = *(a2 + 1);
    if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
    {
LABEL_29:
      *(a2 + 24) = 1;
      goto LABEL_34;
    }

    *(this + 1) = *(*a2 + v2);
    goto LABEL_33;
  }

LABEL_38:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t CMMsl::SMLockStateChange::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 24);
  if ((v4 & 2) != 0)
  {
    this = PB::Writer::write(a2, *(this + 16), 1u);
    v4 = *(v3 + 24);
  }

  if (v4)
  {
    v5 = *(v3 + 8);

    return PB::Writer::write(a2, v5, 2u);
  }

  return this;
}

BOOL CMMsl::SMLockStateChange::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    if ((*(a2 + 24) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 24) & 2) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 24) & 1) == 0;
  if (*(a1 + 24))
  {
    return (*(a2 + 24) & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return v2;
}

uint64_t CMMsl::SMLockStateChange::hash_value(CMMsl::SMLockStateChange *this)
{
  if ((*(this + 24) & 2) != 0)
  {
    v1 = *(this + 2);
    if (v1 == 0.0)
    {
      v1 = 0.0;
    }

    if (*(this + 24))
    {
      goto LABEL_3;
    }

LABEL_9:
    v2 = 0.0;
    return *&v2 ^ *&v1;
  }

  v1 = 0.0;
  if ((*(this + 24) & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  v2 = *(this + 1);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  return *&v2 ^ *&v1;
}

uint64_t CMMsl::SMSessionConfiguration::SMSessionConfiguration(uint64_t this)
{
  *this = off_100421AA0;
  *(this + 56) = 0;
  return this;
}

{
  *this = off_100421AA0;
  *(this + 56) = 0;
  return this;
}

void CMMsl::SMSessionConfiguration::~SMSessionConfiguration(CMMsl::SMSessionConfiguration *this)
{
  PB::Base::~Base(this);

  operator delete();
}

double CMMsl::SMSessionConfiguration::SMSessionConfiguration(CMMsl::SMSessionConfiguration *this, const CMMsl::SMSessionConfiguration *a2)
{
  *this = off_100421AA0;
  *(this + 14) = 0;
  v2 = *(a2 + 56);
  if ((v2 & 0x10) != 0)
  {
    result = *(a2 + 5);
    v3 = 16;
    *(this + 56) = 16;
    *(this + 5) = result;
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
    result = *(a2 + 4);
    v3 |= 8u;
    *(this + 56) = v3;
    *(this + 4) = result;
    v2 = *(a2 + 56);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    result = *(a2 + 2);
    v3 |= 2u;
    *(this + 56) = v3;
    *(this + 2) = result;
    v2 = *(a2 + 56);
    if ((v2 & 4) == 0)
    {
LABEL_8:
      if ((v2 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_13;
    }
  }

  else if ((v2 & 4) == 0)
  {
    goto LABEL_8;
  }

  result = *(a2 + 3);
  v3 |= 4u;
  *(this + 56) = v3;
  *(this + 3) = result;
  v2 = *(a2 + 56);
  if ((v2 & 1) == 0)
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
  result = *(a2 + 1);
  v3 |= 1u;
  *(this + 56) = v3;
  *(this + 1) = result;
  if ((*(a2 + 56) & 0x20) != 0)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t CMMsl::SMSessionConfiguration::operator=(uint64_t a1, const CMMsl::SMSessionConfiguration *a2)
{
  if (a1 != a2)
  {
    CMMsl::SMSessionConfiguration::SMSessionConfiguration(&v8, a2);
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

double CMMsl::swap(CMMsl *this, CMMsl::SMSessionConfiguration *a2, CMMsl::SMSessionConfiguration *a3)
{
  v3 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v3;
  v4 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v4;
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v6;
  v7 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v7;
  v8 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v8;
  result = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = result;
  return result;
}

double CMMsl::SMSessionConfiguration::SMSessionConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = off_100421AA0;
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 48);
  *(a1 + 48) = result;
  return result;
}

{
  *a1 = off_100421AA0;
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 48);
  *(a1 + 48) = result;
  return result;
}

uint64_t CMMsl::SMSessionConfiguration::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v9 = off_100421AA0;
    v3 = *(a2 + 56);
    *(a2 + 56) = 0;
    v13 = *(a1 + 56);
    v11 = *(a1 + 24);
    v4 = *(a2 + 8);
    v5 = *(a2 + 24);
    v10 = *(a1 + 8);
    v6 = *(a1 + 40);
    v7 = *(a2 + 40);
    *(a1 + 56) = v3;
    *(a1 + 24) = v5;
    *(a1 + 8) = v4;
    *(a1 + 40) = v7;
    v12 = v6;
    PB::Base::~Base(&v9);
  }

  return a1;
}

uint64_t CMMsl::SMSessionConfiguration::formatText(CMMsl::SMSessionConfiguration *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 56);
  if (v5)
  {
    PB::TextFormatter::format(a2, "destinationHunc", *(this + 1));
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

  PB::TextFormatter::format(a2, "destinationLat", *(this + 2));
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
  PB::TextFormatter::format(a2, "destinationLon", *(this + 3));
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
  PB::TextFormatter::format(a2, "sessionEndTimestamp", *(this + 4));
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
  PB::TextFormatter::format(a2, "sessionStartTimestamp", *(this + 5));
  if ((*(this + 56) & 0x20) != 0)
  {
LABEL_7:
    PB::TextFormatter::format(a2, "transportationType", *(this + 6));
  }

LABEL_8:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::SMSessionConfiguration::readFrom(CMMsl::SMSessionConfiguration *this, PB::Reader *a2)
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
      if ((v10 >> 3) > 3)
      {
        switch(v22)
        {
          case 4:
            *(this + 56) |= 4u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
LABEL_48:
              *(a2 + 24) = 1;
              goto LABEL_51;
            }

            *(this + 3) = *(*a2 + v2);
            goto LABEL_50;
          case 5:
            *(this + 56) |= 1u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
              goto LABEL_48;
            }

            *(this + 1) = *(*a2 + v2);
            goto LABEL_50;
          case 6:
            *(this + 56) |= 0x20u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
              goto LABEL_48;
            }

            *(this + 6) = *(*a2 + v2);
            goto LABEL_50;
        }
      }

      else
      {
        switch(v22)
        {
          case 1:
            *(this + 56) |= 0x10u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
              goto LABEL_48;
            }

            *(this + 5) = *(*a2 + v2);
            goto LABEL_50;
          case 2:
            *(this + 56) |= 8u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
              goto LABEL_48;
            }

            *(this + 4) = *(*a2 + v2);
            goto LABEL_50;
          case 3:
            *(this + 56) |= 2u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
              goto LABEL_48;
            }

            *(this + 2) = *(*a2 + v2);
LABEL_50:
            v2 = *(a2 + 1) + 8;
            *(a2 + 1) = v2;
            goto LABEL_51;
        }
      }

      if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(a2 + 1);
LABEL_51:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_55:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t CMMsl::SMSessionConfiguration::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 56);
  if ((v4 & 0x10) != 0)
  {
    this = PB::Writer::write(a2, *(this + 40), 1u);
    v4 = *(v3 + 56);
    if ((v4 & 8) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
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
    if ((v4 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  this = PB::Writer::write(a2, *(v3 + 16), 3u);
  v4 = *(v3 + 56);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    this = PB::Writer::write(a2, *(v3 + 8), 5u);
    if ((*(v3 + 56) & 0x20) == 0)
    {
      return this;
    }

    goto LABEL_13;
  }

LABEL_11:
  this = PB::Writer::write(a2, *(v3 + 24), 4u);
  v4 = *(v3 + 56);
  if (v4)
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

BOOL CMMsl::SMSessionConfiguration::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 56) & 0x10) != 0)
  {
    if ((*(a2 + 56) & 0x10) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((*(a2 + 56) & 0x10) != 0)
  {
    return 0;
  }

  if ((*(a1 + 56) & 8) != 0)
  {
    if ((*(a2 + 56) & 8) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((*(a2 + 56) & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 56) & 2) != 0)
  {
    if ((*(a2 + 56) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 56) & 2) != 0)
  {
    return 0;
  }

  if ((*(a1 + 56) & 4) != 0)
  {
    if ((*(a2 + 56) & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 56) & 4) != 0)
  {
    return 0;
  }

  if (*(a1 + 56))
  {
    if ((*(a2 + 56) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 56))
  {
    return 0;
  }

  v2 = (*(a2 + 56) & 0x20) == 0;
  if ((*(a1 + 56) & 0x20) != 0)
  {
    return (*(a2 + 56) & 0x20) != 0 && *(a1 + 48) == *(a2 + 48);
  }

  return v2;
}

uint64_t CMMsl::SMSessionConfiguration::hash_value(CMMsl::SMSessionConfiguration *this)
{
  if ((*(this + 56) & 0x10) == 0)
  {
    v1 = 0.0;
    if ((*(this + 56) & 8) != 0)
    {
      goto LABEL_3;
    }

LABEL_21:
    v2 = 0.0;
    if ((*(this + 56) & 2) != 0)
    {
      goto LABEL_6;
    }

LABEL_22:
    v3 = 0.0;
    if ((*(this + 56) & 4) != 0)
    {
      goto LABEL_9;
    }

LABEL_23:
    v4 = 0.0;
    if (*(this + 56))
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

  v1 = *(this + 5);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  if ((*(this + 56) & 8) == 0)
  {
    goto LABEL_21;
  }

LABEL_3:
  v2 = *(this + 4);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((*(this + 56) & 2) == 0)
  {
    goto LABEL_22;
  }

LABEL_6:
  v3 = *(this + 2);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  if ((*(this + 56) & 4) == 0)
  {
    goto LABEL_23;
  }

LABEL_9:
  v4 = *(this + 3);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  if (*(this + 56))
  {
LABEL_12:
    v5 = *(this + 1);
    if (v5 == 0.0)
    {
      v5 = 0.0;
    }

    if ((*(this + 56) & 0x20) != 0)
    {
      goto LABEL_15;
    }

LABEL_25:
    v6 = 0.0;
    return *&v2 ^ *&v1 ^ *&v3 ^ *&v4 ^ *&v5 ^ *&v6;
  }

LABEL_24:
  v5 = 0.0;
  if ((*(this + 56) & 0x20) == 0)
  {
    goto LABEL_25;
  }

LABEL_15:
  v6 = *(this + 6);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  return *&v2 ^ *&v1 ^ *&v3 ^ *&v4 ^ *&v5 ^ *&v6;
}

void CMMsl::SPUPlaybackExampleDeviceMotion::~SPUPlaybackExampleDeviceMotion(CMMsl::SPUPlaybackExampleDeviceMotion *this)
{
  v2 = *(this + 1);
  *this = off_100421AD8;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::SPUPlaybackExampleDeviceMotion::~SPUPlaybackExampleDeviceMotion(this);

  operator delete();
}

void *CMMsl::SPUPlaybackExampleDeviceMotion::SPUPlaybackExampleDeviceMotion(void *this, const CMMsl::SPUPlaybackExampleDeviceMotion *a2)
{
  *this = off_100421AD8;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const CMMsl::SPUPlaybackExampleDeviceMotion *CMMsl::SPUPlaybackExampleDeviceMotion::operator=(const CMMsl::SPUPlaybackExampleDeviceMotion *a1, const CMMsl::SPUPlaybackExampleDeviceMotion *a2)
{
  if (a1 != a2)
  {
    CMMsl::SPUPlaybackExampleDeviceMotion::SPUPlaybackExampleDeviceMotion(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    CMMsl::SPUPlaybackExampleDeviceMotion::~SPUPlaybackExampleDeviceMotion(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::SPUPlaybackExampleDeviceMotion *a2, CMMsl::SPUPlaybackExampleDeviceMotion *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::SPUPlaybackExampleDeviceMotion::SPUPlaybackExampleDeviceMotion(void *a1, uint64_t a2)
{
  *a1 = off_100421AD8;
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
  *a1 = off_100421AD8;
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

uint64_t CMMsl::SPUPlaybackExampleDeviceMotion::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = off_100421AD8;
    v6[1] = v4;
    CMMsl::SPUPlaybackExampleDeviceMotion::~SPUPlaybackExampleDeviceMotion(v6);
  }

  return a1;
}

uint64_t CMMsl::SPUPlaybackExampleDeviceMotion::formatText(CMMsl::SPUPlaybackExampleDeviceMotion *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::SPUPlaybackExampleDeviceMotion::readFrom(CMMsl::SPUPlaybackExampleDeviceMotion *this, PB::Reader *a2)
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

uint64_t CMMsl::SPUPlaybackExampleDeviceMotion::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2, 1u);
  }

  return this;
}

CMMsl::DeviceMotion *CMMsl::SPUPlaybackExampleDeviceMotion::hash_value(CMMsl::SPUPlaybackExampleDeviceMotion *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::DeviceMotion::hash_value(result);
  }

  return result;
}

uint64_t CMMsl::SPUPlaybackExampleDeviceMotion::makeSuper(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

void CMMsl::SPUPlaybackExampleMotionStateUpdate::~SPUPlaybackExampleMotionStateUpdate(CMMsl::SPUPlaybackExampleMotionStateUpdate *this)
{
  v2 = *(this + 1);
  *this = off_100421B10;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::SPUPlaybackExampleMotionStateUpdate::~SPUPlaybackExampleMotionStateUpdate(this);

  operator delete();
}

void *CMMsl::SPUPlaybackExampleMotionStateUpdate::SPUPlaybackExampleMotionStateUpdate(void *this, const CMMsl::SPUPlaybackExampleMotionStateUpdate *a2)
{
  *this = off_100421B10;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const CMMsl::SPUPlaybackExampleMotionStateUpdate *CMMsl::SPUPlaybackExampleMotionStateUpdate::operator=(const CMMsl::SPUPlaybackExampleMotionStateUpdate *a1, const CMMsl::SPUPlaybackExampleMotionStateUpdate *a2)
{
  if (a1 != a2)
  {
    CMMsl::SPUPlaybackExampleMotionStateUpdate::SPUPlaybackExampleMotionStateUpdate(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    CMMsl::SPUPlaybackExampleMotionStateUpdate::~SPUPlaybackExampleMotionStateUpdate(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::SPUPlaybackExampleMotionStateUpdate *a2, CMMsl::SPUPlaybackExampleMotionStateUpdate *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::SPUPlaybackExampleMotionStateUpdate::SPUPlaybackExampleMotionStateUpdate(void *a1, uint64_t a2)
{
  *a1 = off_100421B10;
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
  *a1 = off_100421B10;
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

uint64_t CMMsl::SPUPlaybackExampleMotionStateUpdate::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = off_100421B10;
    v6[1] = v4;
    CMMsl::SPUPlaybackExampleMotionStateUpdate::~SPUPlaybackExampleMotionStateUpdate(v6);
  }

  return a1;
}

uint64_t CMMsl::SPUPlaybackExampleMotionStateUpdate::formatText(CMMsl::SPUPlaybackExampleMotionStateUpdate *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::SPUPlaybackExampleMotionStateUpdate::readFrom(CMMsl::SPUPlaybackExampleMotionStateUpdate *this, PB::Reader *a2)
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

uint64_t CMMsl::SPUPlaybackExampleMotionStateUpdate::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2, 1u);
  }

  return this;
}

CMMsl::MotionStateUpdate *CMMsl::SPUPlaybackExampleMotionStateUpdate::hash_value(CMMsl::SPUPlaybackExampleMotionStateUpdate *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::MotionStateUpdate::hash_value(result);
  }

  return result;
}

uint64_t CMMsl::SPUPlaybackExampleMotionStateUpdate::makeSuper(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

void CMMsl::SafetyCompanionStatus::~SafetyCompanionStatus(CMMsl::SafetyCompanionStatus *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::SafetyCompanionStatus::SafetyCompanionStatus(uint64_t this, const CMMsl::SafetyCompanionStatus *a2)
{
  *this = off_100421B48;
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
    v4 = *(a2 + 4);
    *(this + 20) = v2;
    *(this + 16) = v4;
  }

  return this;
}

uint64_t CMMsl::SafetyCompanionStatus::operator=(uint64_t a1, const CMMsl::SafetyCompanionStatus *a2)
{
  if (a1 != a2)
  {
    CMMsl::SafetyCompanionStatus::SafetyCompanionStatus(v7, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v3;
    v4 = *(a1 + 16);
    LODWORD(v3) = *(a1 + 20);
    v5 = v10;
    *(a1 + 16) = v9;
    *(a1 + 20) = v5;
    v9 = v4;
    v10 = v3;
    PB::Base::~Base(v7);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::SafetyCompanionStatus *a2, CMMsl::SafetyCompanionStatus *a3)
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