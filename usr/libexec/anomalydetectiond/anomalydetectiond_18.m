uint64_t CMMsl::FallDetectionDetector::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 156);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8), 1u);
    v4 = *(v3 + 156);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_41;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::writeVarInt(a2, *(v3 + 24), 2u);
  v4 = *(v3 + 156);
  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_42;
  }

LABEL_41:
  this = PB::Writer::writeVarInt(a2, *(v3 + 16), 3u);
  v4 = *(v3 + 156);
  if ((v4 & 0x40) == 0)
  {
LABEL_5:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_43;
  }

LABEL_42:
  this = PB::Writer::write(a2, *(v3 + 44), 4u);
  v4 = *(v3 + 156);
  if ((v4 & 0x20) == 0)
  {
LABEL_6:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_44;
  }

LABEL_43:
  this = PB::Writer::write(a2, *(v3 + 40), 5u);
  v4 = *(v3 + 156);
  if ((v4 & 0x20000) == 0)
  {
LABEL_7:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_45;
  }

LABEL_44:
  this = PB::Writer::write(a2, *(v3 + 88), 6u);
  v4 = *(v3 + 156);
  if ((v4 & 0x2000) == 0)
  {
LABEL_8:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_46;
  }

LABEL_45:
  this = PB::Writer::write(a2, *(v3 + 72), 7u);
  v4 = *(v3 + 156);
  if ((v4 & 0x10000) == 0)
  {
LABEL_9:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_47;
  }

LABEL_46:
  this = PB::Writer::write(a2, *(v3 + 84), 8u);
  v4 = *(v3 + 156);
  if ((v4 & 0x80000) == 0)
  {
LABEL_10:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_48;
  }

LABEL_47:
  this = PB::Writer::write(a2, *(v3 + 96), 9u);
  v4 = *(v3 + 156);
  if ((v4 & 0x10) == 0)
  {
LABEL_11:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_49;
  }

LABEL_48:
  this = PB::Writer::write(a2, *(v3 + 36), 0xAu);
  v4 = *(v3 + 156);
  if ((v4 & 0x8000) == 0)
  {
LABEL_12:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_50;
  }

LABEL_49:
  this = PB::Writer::write(a2, *(v3 + 80), 0xBu);
  v4 = *(v3 + 156);
  if ((v4 & 0x4000) == 0)
  {
LABEL_13:
    if ((v4 & 0x4000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_51;
  }

LABEL_50:
  this = PB::Writer::write(a2, *(v3 + 76), 0xCu);
  v4 = *(v3 + 156);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_14:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_52;
  }

LABEL_51:
  this = PB::Writer::write(a2, *(v3 + 124), 0xDu);
  v4 = *(v3 + 156);
  if ((v4 & 0x10000000) == 0)
  {
LABEL_15:
    if ((v4 & 0x40000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_53;
  }

LABEL_52:
  this = PB::Writer::write(a2, *(v3 + 132), 0xEu);
  v4 = *(v3 + 156);
  if ((v4 & 0x40000000) == 0)
  {
LABEL_16:
    if ((v4 & 0x20000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_54;
  }

LABEL_53:
  this = PB::Writer::write(a2, *(v3 + 140), 0xFu);
  v4 = *(v3 + 156);
  if ((v4 & 0x20000000) == 0)
  {
LABEL_17:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_55;
  }

LABEL_54:
  this = PB::Writer::write(a2, *(v3 + 136), 0x10u);
  v4 = *(v3 + 156);
  if ((v4 & 0x80) == 0)
  {
LABEL_18:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_56;
  }

LABEL_55:
  this = PB::Writer::writeVarInt(a2, *(v3 + 48), 0x11u);
  v4 = *(v3 + 156);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_19:
    if ((v4 & 0x200000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_57;
  }

LABEL_56:
  this = PB::Writer::write(a2, *(v3 + 128), 0x12u);
  v4 = *(v3 + 156);
  if ((v4 & 0x200000000) == 0)
  {
LABEL_20:
    if ((v4 & 0x100000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_58;
  }

LABEL_57:
  this = PB::Writer::write(a2, *(v3 + 152), 0x13u);
  v4 = *(v3 + 156);
  if ((v4 & 0x100000000) == 0)
  {
LABEL_21:
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_59;
  }

LABEL_58:
  this = PB::Writer::writeVarInt(a2, *(v3 + 148), 0x14u);
  v4 = *(v3 + 156);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_22:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_60;
  }

LABEL_59:
  this = PB::Writer::write(a2, *(v3 + 144), 0x15u);
  v4 = *(v3 + 156);
  if ((v4 & 0x400) == 0)
  {
LABEL_23:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_61;
  }

LABEL_60:
  this = PB::Writer::write(a2, *(v3 + 60), 0x16u);
  v4 = *(v3 + 156);
  if ((v4 & 0x800) == 0)
  {
LABEL_24:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_62;
  }

LABEL_61:
  this = PB::Writer::write(a2, *(v3 + 64), 0x17u);
  v4 = *(v3 + 156);
  if ((v4 & 0x1000) == 0)
  {
LABEL_25:
    if ((v4 & 0x400000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_63;
  }

LABEL_62:
  this = PB::Writer::write(a2, *(v3 + 68), 0x18u);
  v4 = *(v3 + 156);
  if ((v4 & 0x400000000) == 0)
  {
LABEL_26:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_64;
  }

LABEL_63:
  this = PB::Writer::write(a2, *(v3 + 153), 0x19u);
  v4 = *(v3 + 156);
  if ((v4 & 0x800000) == 0)
  {
LABEL_27:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_65;
  }

LABEL_64:
  this = PB::Writer::write(a2, *(v3 + 112), 0x1Au);
  v4 = *(v3 + 156);
  if ((v4 & 0x400000) == 0)
  {
LABEL_28:
    if ((v4 & 0x1000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_66;
  }

LABEL_65:
  this = PB::Writer::write(a2, *(v3 + 108), 0x1Bu);
  v4 = *(v3 + 156);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_29:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_67;
  }

LABEL_66:
  this = PB::Writer::write(a2, *(v3 + 116), 0x1Cu);
  v4 = *(v3 + 156);
  if ((v4 & 0x200000) == 0)
  {
LABEL_30:
    if ((v4 & 0x1000000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_68;
  }

LABEL_67:
  this = PB::Writer::write(a2, *(v3 + 104), 0x1Du);
  v4 = *(v3 + 156);
  if ((v4 & 0x1000000000) == 0)
  {
LABEL_31:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_69;
  }

LABEL_68:
  this = PB::Writer::write(a2, *(v3 + 155), 0x1Eu);
  v4 = *(v3 + 156);
  if ((v4 & 0x100000) == 0)
  {
LABEL_32:
    if ((v4 & 0x2000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_70;
  }

LABEL_69:
  this = PB::Writer::write(a2, *(v3 + 100), 0x1Fu);
  v4 = *(v3 + 156);
  if ((v4 & 0x2000000) == 0)
  {
LABEL_33:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_71;
  }

LABEL_70:
  this = PB::Writer::writeVarInt(a2, *(v3 + 120), 0x20u);
  v4 = *(v3 + 156);
  if ((v4 & 0x200) == 0)
  {
LABEL_34:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_72;
  }

LABEL_71:
  this = PB::Writer::write(a2, *(v3 + 56), 0x21u);
  v4 = *(v3 + 156);
  if ((v4 & 0x100) == 0)
  {
LABEL_35:
    if ((v4 & 0x800000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_73;
  }

LABEL_72:
  this = PB::Writer::write(a2, *(v3 + 52), 0x22u);
  v4 = *(v3 + 156);
  if ((v4 & 0x800000000) == 0)
  {
LABEL_36:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_37;
    }

LABEL_74:
    this = PB::Writer::write(a2, *(v3 + 92), 0x24u);
    if ((*(v3 + 156) & 8) == 0)
    {
      return this;
    }

    goto LABEL_75;
  }

LABEL_73:
  this = PB::Writer::write(a2, *(v3 + 154), 0x23u);
  v4 = *(v3 + 156);
  if ((v4 & 0x40000) != 0)
  {
    goto LABEL_74;
  }

LABEL_37:
  if ((v4 & 8) == 0)
  {
    return this;
  }

LABEL_75:
  v5 = *(v3 + 32);

  return PB::Writer::write(a2, v5, 0x25u);
}

BOOL CMMsl::FallDetectionDetector::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 156);
  v3 = *(a2 + 156);
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

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 44) != *(a2 + 44))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20000) != 0)
  {
    if ((v3 & 0x20000) == 0 || *(a1 + 88) != *(a2 + 88))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x2000) != 0)
  {
    if ((v3 & 0x2000) == 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if ((v3 & 0x2000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10000) != 0)
  {
    if ((v3 & 0x10000) == 0 || *(a1 + 84) != *(a2 + 84))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80000) != 0)
  {
    if ((v3 & 0x80000) == 0 || *(a1 + 96) != *(a2 + 96))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 36) != *(a2 + 36))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if ((v2 & 0x8000) != 0)
  {
    if ((v3 & 0x8000) == 0 || *(a1 + 80) != *(a2 + 80))
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x4000) != 0)
  {
    if ((v3 & 0x4000) == 0 || *(a1 + 76) != *(a2 + 76))
    {
      return 0;
    }
  }

  else if ((v3 & 0x4000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x4000000) != 0)
  {
    if ((v3 & 0x4000000) == 0 || *(a1 + 124) != *(a2 + 124))
    {
      return 0;
    }
  }

  else if ((v3 & 0x4000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10000000) != 0)
  {
    if ((v3 & 0x10000000) == 0 || *(a1 + 132) != *(a2 + 132))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40000000) != 0)
  {
    if ((v3 & 0x40000000) == 0 || *(a1 + 140) != *(a2 + 140))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20000000) != 0)
  {
    if ((v3 & 0x20000000) == 0 || *(a1 + 136) != *(a2 + 136))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if ((v2 & 0x8000000) != 0)
  {
    if ((v3 & 0x8000000) == 0 || *(a1 + 128) != *(a2 + 128))
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x200000000) != 0)
  {
    if ((v3 & 0x200000000) == 0 || *(a1 + 152) != *(a2 + 152))
    {
      return 0;
    }
  }

  else if ((v3 & 0x200000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x100000000) != 0)
  {
    if ((v3 & 0x100000000) == 0 || *(a1 + 148) != *(a2 + 148))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80000000) != 0)
  {
    if ((v3 & 0x80000000) == 0 || *(a1 + 144) != *(a2 + 144))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x400) != 0)
  {
    if ((v3 & 0x400) == 0 || *(a1 + 60) != *(a2 + 60))
    {
      return 0;
    }
  }

  else if ((v3 & 0x400) != 0)
  {
    return 0;
  }

  if ((v2 & 0x800) != 0)
  {
    if ((v3 & 0x800) == 0 || *(a1 + 64) != *(a2 + 64))
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
    if ((v3 & 0x1000) == 0 || *(a1 + 68) != *(a2 + 68))
    {
      return 0;
    }
  }

  else if ((v3 & 0x1000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x400000000) != 0)
  {
    if ((v3 & 0x400000000) == 0 || *(a1 + 153) != *(a2 + 153))
    {
      return 0;
    }
  }

  else if ((v3 & 0x400000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x800000) != 0)
  {
    if ((v3 & 0x800000) == 0 || *(a1 + 112) != *(a2 + 112))
    {
      return 0;
    }
  }

  else if ((v3 & 0x800000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x400000) != 0)
  {
    if ((v3 & 0x400000) == 0 || *(a1 + 108) != *(a2 + 108))
    {
      return 0;
    }
  }

  else if ((v3 & 0x400000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x1000000) != 0)
  {
    if ((v3 & 0x1000000) == 0 || *(a1 + 116) != *(a2 + 116))
    {
      return 0;
    }
  }

  else if ((v3 & 0x1000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x200000) != 0)
  {
    if ((v3 & 0x200000) == 0 || *(a1 + 104) != *(a2 + 104))
    {
      return 0;
    }
  }

  else if ((v3 & 0x200000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x1000000000) != 0)
  {
    if ((v3 & 0x1000000000) == 0 || *(a1 + 155) != *(a2 + 155))
    {
      return 0;
    }
  }

  else if ((v3 & 0x1000000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x100000) != 0)
  {
    if ((v3 & 0x100000) == 0 || *(a1 + 100) != *(a2 + 100))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x2000000) != 0)
  {
    if ((v3 & 0x2000000) == 0 || *(a1 + 120) != *(a2 + 120))
    {
      return 0;
    }
  }

  else if ((v3 & 0x2000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x200) != 0)
  {
    if ((v3 & 0x200) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((v3 & 0x200) != 0)
  {
    return 0;
  }

  if ((v2 & 0x100) != 0)
  {
    if ((v3 & 0x100) == 0 || *(a1 + 52) != *(a2 + 52))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100) != 0)
  {
    return 0;
  }

  if ((v2 & 0x800000000) != 0)
  {
    if ((v3 & 0x800000000) == 0 || *(a1 + 154) != *(a2 + 154))
    {
      return 0;
    }
  }

  else if ((v3 & 0x800000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40000) != 0)
  {
    if ((v3 & 0x40000) == 0 || *(a1 + 92) != *(a2 + 92))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40000) != 0)
  {
    return 0;
  }

  v4 = (*(a2 + 156) & 8) == 0;
  if ((v2 & 8) != 0)
  {
    return (v3 & 8) != 0 && *(a1 + 32) == *(a2 + 32);
  }

  return v4;
}

uint64_t CMMsl::FallDetectionDetector::hash_value(CMMsl::FallDetectionDetector *this)
{
  v1 = *(this + 156);
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
  }

  else
  {
    v2 = 0;
  }

  if ((v1 & 4) != 0)
  {
    v74 = *(this + 3);
    if ((v1 & 2) != 0)
    {
LABEL_8:
      v73 = *(this + 2);
      if ((v1 & 0x40) != 0)
      {
        goto LABEL_9;
      }

LABEL_111:
      v72 = 0;
      if ((v1 & 0x20) != 0)
      {
        goto LABEL_12;
      }

LABEL_112:
      v71 = 0;
      if ((v1 & 0x20000) != 0)
      {
        goto LABEL_15;
      }

LABEL_113:
      v70 = 0;
      if ((v1 & 0x2000) != 0)
      {
        goto LABEL_18;
      }

LABEL_114:
      v69 = 0;
      if ((v1 & 0x10000) != 0)
      {
        goto LABEL_21;
      }

LABEL_115:
      v68 = 0;
      if ((v1 & 0x80000) != 0)
      {
        goto LABEL_24;
      }

LABEL_116:
      v67 = 0;
      if ((v1 & 0x10) != 0)
      {
        goto LABEL_27;
      }

LABEL_117:
      v66 = 0;
      if ((v1 & 0x8000) != 0)
      {
        goto LABEL_30;
      }

LABEL_118:
      v65 = 0;
      if ((v1 & 0x4000) != 0)
      {
        goto LABEL_33;
      }

LABEL_119:
      v20 = 0;
      if ((v1 & 0x4000000) != 0)
      {
        goto LABEL_37;
      }

LABEL_120:
      v22 = 0;
      if ((v1 & 0x10000000) != 0)
      {
        goto LABEL_41;
      }

LABEL_121:
      v24 = 0;
      if ((v1 & 0x40000000) != 0)
      {
        goto LABEL_45;
      }

LABEL_122:
      v26 = 0;
      if ((v1 & 0x20000000) != 0)
      {
        goto LABEL_49;
      }

LABEL_123:
      v28 = 0;
      if ((v1 & 0x80) != 0)
      {
        goto LABEL_53;
      }

      goto LABEL_124;
    }
  }

  else
  {
    v74 = 0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_8;
    }
  }

  v73 = 0;
  if ((v1 & 0x40) == 0)
  {
    goto LABEL_111;
  }

LABEL_9:
  v3 = *(this + 11);
  v4 = LODWORD(v3);
  if (v3 == 0.0)
  {
    v4 = 0;
  }

  v72 = v4;
  if ((v1 & 0x20) == 0)
  {
    goto LABEL_112;
  }

LABEL_12:
  v5 = *(this + 10);
  v6 = LODWORD(v5);
  if (v5 == 0.0)
  {
    v6 = 0;
  }

  v71 = v6;
  if ((v1 & 0x20000) == 0)
  {
    goto LABEL_113;
  }

LABEL_15:
  v7 = *(this + 22);
  v8 = LODWORD(v7);
  if (v7 == 0.0)
  {
    v8 = 0;
  }

  v70 = v8;
  if ((v1 & 0x2000) == 0)
  {
    goto LABEL_114;
  }

LABEL_18:
  v9 = *(this + 18);
  v10 = LODWORD(v9);
  if (v9 == 0.0)
  {
    v10 = 0;
  }

  v69 = v10;
  if ((v1 & 0x10000) == 0)
  {
    goto LABEL_115;
  }

LABEL_21:
  v11 = *(this + 21);
  v12 = LODWORD(v11);
  if (v11 == 0.0)
  {
    v12 = 0;
  }

  v68 = v12;
  if ((v1 & 0x80000) == 0)
  {
    goto LABEL_116;
  }

LABEL_24:
  v13 = *(this + 24);
  v14 = LODWORD(v13);
  if (v13 == 0.0)
  {
    v14 = 0;
  }

  v67 = v14;
  if ((v1 & 0x10) == 0)
  {
    goto LABEL_117;
  }

LABEL_27:
  v15 = *(this + 9);
  v16 = LODWORD(v15);
  if (v15 == 0.0)
  {
    v16 = 0;
  }

  v66 = v16;
  if ((v1 & 0x8000) == 0)
  {
    goto LABEL_118;
  }

LABEL_30:
  v17 = *(this + 20);
  v18 = LODWORD(v17);
  if (v17 == 0.0)
  {
    v18 = 0;
  }

  v65 = v18;
  if ((v1 & 0x4000) == 0)
  {
    goto LABEL_119;
  }

LABEL_33:
  v19 = *(this + 19);
  if (v19 == 0.0)
  {
    v20 = 0;
  }

  else
  {
    v20 = LODWORD(v19);
  }

  if ((v1 & 0x4000000) == 0)
  {
    goto LABEL_120;
  }

LABEL_37:
  v21 = *(this + 31);
  if (v21 == 0.0)
  {
    v22 = 0;
  }

  else
  {
    v22 = LODWORD(v21);
  }

  if ((v1 & 0x10000000) == 0)
  {
    goto LABEL_121;
  }

LABEL_41:
  v23 = *(this + 33);
  if (v23 == 0.0)
  {
    v24 = 0;
  }

  else
  {
    v24 = LODWORD(v23);
  }

  if ((v1 & 0x40000000) == 0)
  {
    goto LABEL_122;
  }

LABEL_45:
  v25 = *(this + 35);
  if (v25 == 0.0)
  {
    v26 = 0;
  }

  else
  {
    v26 = LODWORD(v25);
  }

  if ((v1 & 0x20000000) == 0)
  {
    goto LABEL_123;
  }

LABEL_49:
  v27 = *(this + 34);
  if (v27 == 0.0)
  {
    v28 = 0;
  }

  else
  {
    v28 = LODWORD(v27);
  }

  if ((v1 & 0x80) != 0)
  {
LABEL_53:
    v29 = *(this + 12);
    if ((v1 & 0x8000000) != 0)
    {
      goto LABEL_54;
    }

LABEL_125:
    v31 = 0;
    if ((v1 & 0x200000000) != 0)
    {
      goto LABEL_58;
    }

    goto LABEL_126;
  }

LABEL_124:
  v29 = 0;
  if ((v1 & 0x8000000) == 0)
  {
    goto LABEL_125;
  }

LABEL_54:
  v30 = *(this + 32);
  if (v30 == 0.0)
  {
    v31 = 0;
  }

  else
  {
    v31 = LODWORD(v30);
  }

  if ((v1 & 0x200000000) != 0)
  {
LABEL_58:
    v32 = *(this + 152);
    if ((v1 & 0x100000000) != 0)
    {
      goto LABEL_59;
    }

    goto LABEL_127;
  }

LABEL_126:
  v32 = 0;
  if ((v1 & 0x100000000) != 0)
  {
LABEL_59:
    v33 = *(this + 37);
    if ((v1 & 0x80000000) != 0)
    {
      goto LABEL_60;
    }

LABEL_128:
    v35 = 0;
    if ((v1 & 0x400) != 0)
    {
      goto LABEL_64;
    }

LABEL_129:
    v37 = 0;
    if ((v1 & 0x800) != 0)
    {
      goto LABEL_68;
    }

LABEL_130:
    v39 = 0;
    if ((v1 & 0x1000) != 0)
    {
      goto LABEL_72;
    }

LABEL_131:
    v41 = 0;
    if ((v1 & 0x400000000) != 0)
    {
      goto LABEL_76;
    }

    goto LABEL_132;
  }

LABEL_127:
  v33 = 0;
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_128;
  }

LABEL_60:
  v34 = *(this + 36);
  if (v34 == 0.0)
  {
    v35 = 0;
  }

  else
  {
    v35 = LODWORD(v34);
  }

  if ((v1 & 0x400) == 0)
  {
    goto LABEL_129;
  }

LABEL_64:
  v36 = *(this + 15);
  if (v36 == 0.0)
  {
    v37 = 0;
  }

  else
  {
    v37 = LODWORD(v36);
  }

  if ((v1 & 0x800) == 0)
  {
    goto LABEL_130;
  }

LABEL_68:
  v38 = *(this + 16);
  if (v38 == 0.0)
  {
    v39 = 0;
  }

  else
  {
    v39 = LODWORD(v38);
  }

  if ((v1 & 0x1000) == 0)
  {
    goto LABEL_131;
  }

LABEL_72:
  v40 = *(this + 17);
  if (v40 == 0.0)
  {
    v41 = 0;
  }

  else
  {
    v41 = LODWORD(v40);
  }

  if ((v1 & 0x400000000) != 0)
  {
LABEL_76:
    v42 = *(this + 153);
    if ((v1 & 0x800000) != 0)
    {
      goto LABEL_77;
    }

LABEL_133:
    v44 = 0;
    if ((v1 & 0x400000) != 0)
    {
      goto LABEL_81;
    }

LABEL_134:
    v46 = 0;
    if ((v1 & 0x1000000) != 0)
    {
      goto LABEL_85;
    }

LABEL_135:
    v48 = 0;
    if ((v1 & 0x200000) != 0)
    {
      goto LABEL_88;
    }

LABEL_136:
    v50 = 0;
    if ((v1 & 0x1000000000) != 0)
    {
      goto LABEL_91;
    }

    goto LABEL_137;
  }

LABEL_132:
  v42 = 0;
  if ((v1 & 0x800000) == 0)
  {
    goto LABEL_133;
  }

LABEL_77:
  v43 = *(this + 28);
  if (v43 == 0.0)
  {
    v44 = 0;
  }

  else
  {
    v44 = LODWORD(v43);
  }

  if ((v1 & 0x400000) == 0)
  {
    goto LABEL_134;
  }

LABEL_81:
  v45 = *(this + 27);
  if (v45 == 0.0)
  {
    v46 = 0;
  }

  else
  {
    v46 = LODWORD(v45);
  }

  if ((v1 & 0x1000000) == 0)
  {
    goto LABEL_135;
  }

LABEL_85:
  v47 = *(this + 29);
  v48 = LODWORD(v47);
  if (v47 == 0.0)
  {
    v48 = 0;
  }

  if ((v1 & 0x200000) == 0)
  {
    goto LABEL_136;
  }

LABEL_88:
  v49 = *(this + 26);
  v50 = LODWORD(v49);
  if (v49 == 0.0)
  {
    v50 = 0;
  }

  if ((v1 & 0x1000000000) != 0)
  {
LABEL_91:
    v51 = *(this + 155);
    if ((v1 & 0x100000) != 0)
    {
      goto LABEL_92;
    }

LABEL_138:
    v53 = 0;
    if ((v1 & 0x2000000) != 0)
    {
      goto LABEL_95;
    }

    goto LABEL_139;
  }

LABEL_137:
  v51 = 0;
  if ((v1 & 0x100000) == 0)
  {
    goto LABEL_138;
  }

LABEL_92:
  v52 = *(this + 25);
  v53 = LODWORD(v52);
  if (v52 == 0.0)
  {
    v53 = 0;
  }

  if ((v1 & 0x2000000) != 0)
  {
LABEL_95:
    v54 = *(this + 30);
    if ((v1 & 0x200) != 0)
    {
      goto LABEL_96;
    }

LABEL_140:
    v56 = 0;
    if ((v1 & 0x100) != 0)
    {
      goto LABEL_99;
    }

LABEL_141:
    v58 = 0;
    if ((v1 & 0x800000000) != 0)
    {
      goto LABEL_102;
    }

    goto LABEL_142;
  }

LABEL_139:
  v54 = 0;
  if ((v1 & 0x200) == 0)
  {
    goto LABEL_140;
  }

LABEL_96:
  v55 = *(this + 14);
  v56 = LODWORD(v55);
  if (v55 == 0.0)
  {
    v56 = 0;
  }

  if ((v1 & 0x100) == 0)
  {
    goto LABEL_141;
  }

LABEL_99:
  v57 = *(this + 13);
  v58 = LODWORD(v57);
  if (v57 == 0.0)
  {
    v58 = 0;
  }

  if ((v1 & 0x800000000) != 0)
  {
LABEL_102:
    v59 = *(this + 154);
    if ((v1 & 0x40000) != 0)
    {
      goto LABEL_103;
    }

    goto LABEL_143;
  }

LABEL_142:
  v59 = 0;
  if ((v1 & 0x40000) != 0)
  {
LABEL_103:
    v60 = *(this + 23);
    v61 = LODWORD(v60);
    if (v60 == 0.0)
    {
      v61 = 0;
    }

    if ((v1 & 8) != 0)
    {
      goto LABEL_106;
    }

LABEL_144:
    v63 = 0;
    return v74 ^ v2 ^ v73 ^ v72 ^ v71 ^ v70 ^ v69 ^ v68 ^ v67 ^ v66 ^ v65 ^ v20 ^ v22 ^ v24 ^ v26 ^ v28 ^ v29 ^ v31 ^ v32 ^ v33 ^ v35 ^ v37 ^ v39 ^ v41 ^ v42 ^ v44 ^ v46 ^ v48 ^ v50 ^ v51 ^ v53 ^ v54 ^ v56 ^ v58 ^ v59 ^ v61 ^ v63;
  }

LABEL_143:
  v61 = 0;
  if ((v1 & 8) == 0)
  {
    goto LABEL_144;
  }

LABEL_106:
  v62 = *(this + 8);
  v63 = LODWORD(v62);
  if (v62 == 0.0)
  {
    v63 = 0;
  }

  return v74 ^ v2 ^ v73 ^ v72 ^ v71 ^ v70 ^ v69 ^ v68 ^ v67 ^ v66 ^ v65 ^ v20 ^ v22 ^ v24 ^ v26 ^ v28 ^ v29 ^ v31 ^ v32 ^ v33 ^ v35 ^ v37 ^ v39 ^ v41 ^ v42 ^ v44 ^ v46 ^ v48 ^ v50 ^ v51 ^ v53 ^ v54 ^ v56 ^ v58 ^ v59 ^ v61 ^ v63;
}

uint64_t CMMsl::FallDetectionGyroControllerReplay::FallDetectionGyroControllerReplay(uint64_t this)
{
  *this = off_10041E268;
  *(this + 20) = 0;
  return this;
}

{
  *this = off_10041E268;
  *(this + 20) = 0;
  return this;
}

void CMMsl::FallDetectionGyroControllerReplay::~FallDetectionGyroControllerReplay(CMMsl::FallDetectionGyroControllerReplay *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::FallDetectionGyroControllerReplay::FallDetectionGyroControllerReplay(uint64_t this, const CMMsl::FallDetectionGyroControllerReplay *a2)
{
  *this = off_10041E268;
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

uint64_t CMMsl::FallDetectionGyroControllerReplay::operator=(uint64_t a1, const CMMsl::FallDetectionGyroControllerReplay *a2)
{
  if (a1 != a2)
  {
    CMMsl::FallDetectionGyroControllerReplay::FallDetectionGyroControllerReplay(v6, a2);
    v3 = *(a1 + 20);
    *(a1 + 20) = v9;
    v9 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    LOBYTE(v4) = *(a1 + 16);
    *(a1 + 16) = v8;
    v8 = v4;
    PB::Base::~Base(v6);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::FallDetectionGyroControllerReplay *a2, CMMsl::FallDetectionGyroControllerReplay *a3)
{
  v3 = *(this + 20);
  *(this + 20) = *(a2 + 5);
  *(a2 + 5) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v4;
  LOBYTE(v4) = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v4;
  return this;
}

uint64_t CMMsl::FallDetectionGyroControllerReplay::FallDetectionGyroControllerReplay(uint64_t result, uint64_t a2)
{
  *result = off_10041E268;
  *(result + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  *(result + 8) = *(a2 + 8);
  *(result + 16) = *(a2 + 16);
  return result;
}

{
  *result = off_10041E268;
  *(result + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  *(result + 8) = *(a2 + 8);
  *(result + 16) = *(a2 + 16);
  return result;
}

uint64_t CMMsl::FallDetectionGyroControllerReplay::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 20);
    *(a2 + 20) = 0;
    v4 = *(a2 + 8);
    v5 = *(a2 + 16);
    v6 = *(a1 + 20);
    *(a1 + 20) = v3;
    v11 = v6;
    v7 = *(a1 + 8);
    *(a1 + 8) = v4;
    v9[0] = off_10041E268;
    v9[1] = v7;
    LOBYTE(v7) = *(a1 + 16);
    *(a1 + 16) = v5;
    v10 = v7;
    PB::Base::~Base(v9);
  }

  return a1;
}

uint64_t CMMsl::FallDetectionGyroControllerReplay::formatText(CMMsl::FallDetectionGyroControllerReplay *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 20);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "gyroOn", *(this + 16));
    v5 = *(this + 20);
  }

  if (v5)
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::FallDetectionGyroControllerReplay::readFrom(CMMsl::FallDetectionGyroControllerReplay *this, PB::Reader *a2)
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
            goto LABEL_56;
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
        *(this + 20) |= 2u;
        v3 = *(a2 + 1);
        v2 = *(a2 + 2);
        if (v3 >= v2)
        {
          v33 = 0;
          *(a2 + 24) = 1;
        }

        else
        {
          v32 = *(*a2 + v3++);
          *(a2 + 1) = v3;
          v33 = v32 != 0;
        }

        *(this + 16) = v33;
      }

      else if (v23 == 1)
      {
        *(this + 20) |= 1u;
        v24 = *(a2 + 1);
        v2 = *(a2 + 2);
        v25 = *a2;
        if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v2)
        {
          v34 = 0;
          v35 = 0;
          v28 = 0;
          if (v2 <= v24)
          {
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          v36 = v3 - v24;
          v37 = (v25 + v24);
          v38 = v24 + 1;
          while (1)
          {
            if (!v36)
            {
              v28 = 0;
              *(a2 + 24) = 1;
              goto LABEL_51;
            }

            v39 = v38;
            v40 = *v37;
            *(a2 + 1) = v39;
            v28 |= (v40 & 0x7F) << v34;
            if ((v40 & 0x80) == 0)
            {
              break;
            }

            v34 += 7;
            --v36;
            ++v37;
            v38 = v39 + 1;
            v14 = v35++ > 8;
            if (v14)
            {
              v28 = 0;
              goto LABEL_50;
            }
          }

          if (*(a2 + 24))
          {
            v28 = 0;
          }

LABEL_50:
          v3 = v39;
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
              v28 = 0;
              break;
            }
          }
        }

LABEL_51:
        *(this + 1) = v28;
      }

      else
      {
        if (!PB::Reader::skip(a2, v23, v10 & 7, 0))
        {
          v41 = 0;
          return v41 & 1;
        }

        v3 = *(a2 + 1);
        v2 = *(a2 + 2);
      }

      v4 = *(a2 + 24);
    }

    while (v3 < v2 && (*(a2 + 24) & 1) == 0);
  }

LABEL_56:
  v41 = v4 ^ 1;
  return v41 & 1;
}

uint64_t CMMsl::FallDetectionGyroControllerReplay::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 20);
  if (v4)
  {
    this = PB::Writer::writeVarInt(a2, *(this + 8), 1u);
    v4 = *(v3 + 20);
  }

  if ((v4 & 2) != 0)
  {
    v5 = *(v3 + 16);

    return PB::Writer::write(a2, v5, 2u);
  }

  return this;
}

BOOL CMMsl::FallDetectionGyroControllerReplay::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 20))
  {
    if ((*(a2 + 20) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 20))
  {
    return 0;
  }

  v2 = (*(a2 + 20) & 2) == 0;
  if ((*(a1 + 20) & 2) != 0)
  {
    return (*(a2 + 20) & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v2;
}

uint64_t CMMsl::FallDetectionGyroControllerReplay::hash_value(CMMsl::FallDetectionGyroControllerReplay *this)
{
  if (*(this + 20))
  {
    v1 = *(this + 1);
    if ((*(this + 20) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v2 = 0;
    return v2 ^ v1;
  }

  v1 = 0;
  if ((*(this + 20) & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v2 = *(this + 16);
  return v2 ^ v1;
}

uint64_t CMMsl::FallDetectionReferee::FallDetectionReferee(uint64_t this)
{
  *this = off_10041E2A0;
  *(this + 52) = 0;
  return this;
}

{
  *this = off_10041E2A0;
  *(this + 52) = 0;
  return this;
}

void CMMsl::FallDetectionReferee::~FallDetectionReferee(CMMsl::FallDetectionReferee *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::FallDetectionReferee::FallDetectionReferee(uint64_t this, const CMMsl::FallDetectionReferee *a2)
{
  *this = off_10041E2A0;
  *(this + 52) = 0;
  v2 = *(a2 + 26);
  if ((v2 & 2) != 0)
  {
    v4 = *(a2 + 2);
    v3 = 2;
    *(this + 52) = 2;
    *(this + 16) = v4;
    v2 = *(a2 + 26);
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 4) != 0)
  {
LABEL_5:
    v5 = *(a2 + 3);
    v3 |= 4u;
    *(this + 52) = v3;
    *(this + 24) = v5;
    v2 = *(a2 + 26);
  }

LABEL_6:
  if (v2)
  {
    v6 = *(a2 + 1);
    v3 |= 1u;
    *(this + 52) = v3;
    *(this + 8) = v6;
    v2 = *(a2 + 26);
    if ((v2 & 8) == 0)
    {
LABEL_8:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_20;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 8);
  v3 |= 8u;
  *(this + 52) = v3;
  *(this + 32) = v7;
  v2 = *(a2 + 26);
  if ((v2 & 0x20) == 0)
  {
LABEL_9:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  v8 = *(a2 + 10);
  v3 |= 0x20u;
  *(this + 52) = v3;
  *(this + 40) = v8;
  v2 = *(a2 + 26);
  if ((v2 & 0x10) == 0)
  {
LABEL_10:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  v9 = *(a2 + 9);
  v3 |= 0x10u;
  *(this + 52) = v3;
  *(this + 36) = v9;
  v2 = *(a2 + 26);
  if ((v2 & 0x1000) == 0)
  {
LABEL_11:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_22:
  v10 = *(a2 + 50);
  v3 |= 0x1000u;
  *(this + 52) = v3;
  *(this + 50) = v10;
  v2 = *(a2 + 26);
  if ((v2 & 0x40) == 0)
  {
LABEL_12:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_24;
  }

LABEL_23:
  v11 = *(a2 + 44);
  v3 |= 0x40u;
  *(this + 52) = v3;
  *(this + 44) = v11;
  v2 = *(a2 + 26);
  if ((v2 & 0x80) == 0)
  {
LABEL_13:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

LABEL_24:
  v12 = *(a2 + 45);
  v3 |= 0x80u;
  *(this + 52) = v3;
  *(this + 45) = v12;
  v2 = *(a2 + 26);
  if ((v2 & 0x100) == 0)
  {
LABEL_14:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_26;
  }

LABEL_25:
  v13 = *(a2 + 46);
  v3 |= 0x100u;
  *(this + 52) = v3;
  *(this + 46) = v13;
  v2 = *(a2 + 26);
  if ((v2 & 0x200) == 0)
  {
LABEL_15:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_27;
  }

LABEL_26:
  v14 = *(a2 + 47);
  v3 |= 0x200u;
  *(this + 52) = v3;
  *(this + 47) = v14;
  v2 = *(a2 + 26);
  if ((v2 & 0x400) == 0)
  {
LABEL_16:
    if ((v2 & 0x800) == 0)
    {
      return this;
    }

LABEL_28:
    v16 = *(a2 + 49);
    *(this + 52) = v3 | 0x800;
    *(this + 49) = v16;
    return this;
  }

LABEL_27:
  v15 = *(a2 + 48);
  v3 |= 0x400u;
  *(this + 52) = v3;
  *(this + 48) = v15;
  if ((*(a2 + 26) & 0x800) != 0)
  {
    goto LABEL_28;
  }

  return this;
}

CMMsl *CMMsl::FallDetectionReferee::operator=(CMMsl *a1, const CMMsl::FallDetectionReferee *a2)
{
  if (a1 != a2)
  {
    CMMsl::FallDetectionReferee::FallDetectionReferee(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::FallDetectionReferee *a2, CMMsl::FallDetectionReferee *a3)
{
  v3 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v3;
  result = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = result;
  v5 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v5;
  v6 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v6;
  LODWORD(v6) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v6;
  LODWORD(v6) = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v6;
  LODWORD(v6) = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v6;
  LOBYTE(v6) = *(this + 50);
  *(this + 50) = *(a2 + 50);
  *(a2 + 50) = v6;
  LOBYTE(v6) = *(this + 44);
  *(this + 44) = *(a2 + 44);
  *(a2 + 44) = v6;
  LOBYTE(v6) = *(this + 45);
  *(this + 45) = *(a2 + 45);
  *(a2 + 45) = v6;
  LOBYTE(v6) = *(this + 46);
  *(this + 46) = *(a2 + 46);
  *(a2 + 46) = v6;
  LOBYTE(v6) = *(this + 47);
  *(this + 47) = *(a2 + 47);
  *(a2 + 47) = v6;
  LOBYTE(v6) = *(this + 48);
  *(this + 48) = *(a2 + 48);
  *(a2 + 48) = v6;
  LOBYTE(v6) = *(this + 49);
  *(this + 49) = *(a2 + 49);
  *(a2 + 49) = v6;
  return result;
}

double CMMsl::FallDetectionReferee::FallDetectionReferee(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041E2A0;
  *(a1 + 52) = *(a2 + 52);
  *(a2 + 52) = 0;
  result = *(a2 + 16);
  *(a1 + 16) = result;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 50) = *(a2 + 50);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 45) = *(a2 + 45);
  *(a1 + 46) = *(a2 + 46);
  *(a1 + 47) = *(a2 + 47);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 49) = *(a2 + 49);
  return result;
}

CMMsl *CMMsl::FallDetectionReferee::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::FallDetectionReferee::FallDetectionReferee(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::FallDetectionReferee::formatText(CMMsl::FallDetectionReferee *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 26);
  if ((v5 & 0x40) != 0)
  {
    PB::TextFormatter::format(a2, "consideredAlert", *(this + 44));
    v5 = *(this + 26);
    if ((v5 & 0x80) == 0)
    {
LABEL_3:
      if ((v5 & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((v5 & 0x80) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "consideredRecovery", *(this + 45));
  v5 = *(this + 26);
  if ((v5 & 0x100) == 0)
  {
LABEL_4:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(a2, "consideredSOS", *(this + 46));
  v5 = *(this + 26);
  if ((v5 & 0x200) == 0)
  {
LABEL_5:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(a2, "droppedAlert", *(this + 47));
  v5 = *(this + 26);
  if ((v5 & 0x400) == 0)
  {
LABEL_6:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(a2, "droppedRecovery", *(this + 48));
  v5 = *(this + 26);
  if ((v5 & 0x800) == 0)
  {
LABEL_7:
    if ((v5 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(a2, "droppedSOS", *(this + 49));
  v5 = *(this + 26);
  if ((v5 & 1) == 0)
  {
LABEL_8:
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(a2, "fallTime", *(this + 1));
  v5 = *(this + 26);
  if ((v5 & 8) == 0)
  {
LABEL_9:
    if ((v5 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  PB::TextFormatter::format(a2, "impactOperatingMode", *(this + 8));
  v5 = *(this + 26);
  if ((v5 & 2) == 0)
  {
LABEL_10:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(a2, "iostime", *(this + 2));
  v5 = *(this + 26);
  if ((v5 & 0x1000) == 0)
  {
LABEL_11:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  PB::TextFormatter::format(a2, "isOtherStateMachineProcessingNearbyImpact", *(this + 50));
  v5 = *(this + 26);
  if ((v5 & 0x10) == 0)
  {
LABEL_12:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(a2, "refereeCyclingStateDecision", *(this + 9));
  v5 = *(this + 26);
  if ((v5 & 0x20) == 0)
  {
LABEL_13:
    if ((v5 & 4) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_29:
  PB::TextFormatter::format(a2, "refereeOperatingMode", *(this + 10));
  if ((*(this + 26) & 4) != 0)
  {
LABEL_14:
    PB::TextFormatter::format(a2, "sensorTime", *(this + 3));
  }

LABEL_15:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::FallDetectionReferee::readFrom(CMMsl::FallDetectionReferee *this, PB::Reader *a2)
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
        goto LABEL_161;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 26) |= 2u;
          v2 = *(a2 + 1);
          if (v2 <= 0xFFFFFFFFFFFFFFF7 && v2 + 8 <= *(a2 + 2))
          {
            *(this + 2) = *(*a2 + v2);
            v2 = *(a2 + 1) + 8;
            *(a2 + 1) = v2;
          }

          else
          {
            *(a2 + 24) = 1;
          }

          goto LABEL_157;
        case 2u:
          *(this + 26) |= 4u;
          v60 = *(a2 + 1);
          v2 = *(a2 + 2);
          v61 = *a2;
          if (v60 > 0xFFFFFFFFFFFFFFF5 || v60 + 10 > v2)
          {
            v104 = 0;
            v105 = 0;
            v64 = 0;
            if (v2 <= v60)
            {
              v2 = *(a2 + 1);
            }

            v106 = v2 - v60;
            v107 = (v61 + v60);
            v108 = v60 + 1;
            while (1)
            {
              if (!v106)
              {
                v64 = 0;
                *(a2 + 24) = 1;
                goto LABEL_156;
              }

              v109 = v108;
              v110 = *v107;
              *(a2 + 1) = v109;
              v64 |= (v110 & 0x7F) << v104;
              if ((v110 & 0x80) == 0)
              {
                break;
              }

              v104 += 7;
              --v106;
              ++v107;
              v108 = v109 + 1;
              v14 = v105++ > 8;
              if (v14)
              {
                v64 = 0;
LABEL_155:
                v2 = v109;
                goto LABEL_156;
              }
            }

            if (*(a2 + 24))
            {
              v64 = 0;
            }

            goto LABEL_155;
          }

          v62 = 0;
          v63 = 0;
          v64 = 0;
          v65 = (v61 + v60);
          v66 = v60 + 1;
          do
          {
            v2 = v66;
            *(a2 + 1) = v66;
            v67 = *v65++;
            v64 |= (v67 & 0x7F) << v62;
            if ((v67 & 0x80) == 0)
            {
              goto LABEL_156;
            }

            v62 += 7;
            ++v66;
            v14 = v63++ > 8;
          }

          while (!v14);
          v64 = 0;
LABEL_156:
          *(this + 3) = v64;
          goto LABEL_157;
        case 3u:
          *(this + 26) |= 1u;
          v52 = *(a2 + 1);
          v2 = *(a2 + 2);
          v53 = *a2;
          if (v52 > 0xFFFFFFFFFFFFFFF5 || v52 + 10 > v2)
          {
            v97 = 0;
            v98 = 0;
            v56 = 0;
            if (v2 <= v52)
            {
              v2 = *(a2 + 1);
            }

            v99 = v2 - v52;
            v100 = (v53 + v52);
            v101 = v52 + 1;
            while (1)
            {
              if (!v99)
              {
                v56 = 0;
                *(a2 + 24) = 1;
                goto LABEL_152;
              }

              v102 = v101;
              v103 = *v100;
              *(a2 + 1) = v102;
              v56 |= (v103 & 0x7F) << v97;
              if ((v103 & 0x80) == 0)
              {
                break;
              }

              v97 += 7;
              --v99;
              ++v100;
              v101 = v102 + 1;
              v14 = v98++ > 8;
              if (v14)
              {
                v56 = 0;
LABEL_151:
                v2 = v102;
                goto LABEL_152;
              }
            }

            if (*(a2 + 24))
            {
              v56 = 0;
            }

            goto LABEL_151;
          }

          v54 = 0;
          v55 = 0;
          v56 = 0;
          v57 = (v53 + v52);
          v58 = v52 + 1;
          do
          {
            v2 = v58;
            *(a2 + 1) = v58;
            v59 = *v57++;
            v56 |= (v59 & 0x7F) << v54;
            if ((v59 & 0x80) == 0)
            {
              goto LABEL_152;
            }

            v54 += 7;
            ++v58;
            v14 = v55++ > 8;
          }

          while (!v14);
          v56 = 0;
LABEL_152:
          *(this + 1) = v56;
          goto LABEL_157;
        case 4u:
          *(this + 26) |= 8u;
          v44 = *(a2 + 1);
          v2 = *(a2 + 2);
          v45 = *a2;
          if (v44 > 0xFFFFFFFFFFFFFFF5 || v44 + 10 > v2)
          {
            v90 = 0;
            v91 = 0;
            v48 = 0;
            if (v2 <= v44)
            {
              v2 = *(a2 + 1);
            }

            v92 = v2 - v44;
            v93 = (v45 + v44);
            v94 = v44 + 1;
            while (1)
            {
              if (!v92)
              {
                LODWORD(v48) = 0;
                *(a2 + 24) = 1;
                goto LABEL_148;
              }

              v95 = v94;
              v96 = *v93;
              *(a2 + 1) = v95;
              v48 |= (v96 & 0x7F) << v90;
              if ((v96 & 0x80) == 0)
              {
                break;
              }

              v90 += 7;
              --v92;
              ++v93;
              v94 = v95 + 1;
              v14 = v91++ > 8;
              if (v14)
              {
                LODWORD(v48) = 0;
LABEL_147:
                v2 = v95;
                goto LABEL_148;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v48) = 0;
            }

            goto LABEL_147;
          }

          v46 = 0;
          v47 = 0;
          v48 = 0;
          v49 = (v45 + v44);
          v50 = v44 + 1;
          do
          {
            v2 = v50;
            *(a2 + 1) = v50;
            v51 = *v49++;
            v48 |= (v51 & 0x7F) << v46;
            if ((v51 & 0x80) == 0)
            {
              goto LABEL_148;
            }

            v46 += 7;
            ++v50;
            v14 = v47++ > 8;
          }

          while (!v14);
          LODWORD(v48) = 0;
LABEL_148:
          *(this + 8) = v48;
          goto LABEL_157;
        case 5u:
          *(this + 26) |= 0x20u;
          v24 = *(a2 + 1);
          v2 = *(a2 + 2);
          v25 = *a2;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v2)
          {
            v76 = 0;
            v77 = 0;
            v28 = 0;
            if (v2 <= v24)
            {
              v2 = *(a2 + 1);
            }

            v78 = v2 - v24;
            v79 = (v25 + v24);
            v80 = v24 + 1;
            while (1)
            {
              if (!v78)
              {
                LODWORD(v28) = 0;
                *(a2 + 24) = 1;
                goto LABEL_140;
              }

              v81 = v80;
              v82 = *v79;
              *(a2 + 1) = v81;
              v28 |= (v82 & 0x7F) << v76;
              if ((v82 & 0x80) == 0)
              {
                break;
              }

              v76 += 7;
              --v78;
              ++v79;
              v80 = v81 + 1;
              v14 = v77++ > 8;
              if (v14)
              {
                LODWORD(v28) = 0;
LABEL_139:
                v2 = v81;
                goto LABEL_140;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v28) = 0;
            }

            goto LABEL_139;
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
              goto LABEL_140;
            }

            v26 += 7;
            ++v30;
            v14 = v27++ > 8;
          }

          while (!v14);
          LODWORD(v28) = 0;
LABEL_140:
          *(this + 10) = v28;
          goto LABEL_157;
        case 6u:
          *(this + 26) |= 0x10u;
          v34 = *(a2 + 1);
          v2 = *(a2 + 2);
          v35 = *a2;
          if (v34 > 0xFFFFFFFFFFFFFFF5 || v34 + 10 > v2)
          {
            v83 = 0;
            v84 = 0;
            v38 = 0;
            if (v2 <= v34)
            {
              v2 = *(a2 + 1);
            }

            v85 = v2 - v34;
            v86 = (v35 + v34);
            v87 = v34 + 1;
            while (1)
            {
              if (!v85)
              {
                LODWORD(v38) = 0;
                *(a2 + 24) = 1;
                goto LABEL_144;
              }

              v88 = v87;
              v89 = *v86;
              *(a2 + 1) = v88;
              v38 |= (v89 & 0x7F) << v83;
              if ((v89 & 0x80) == 0)
              {
                break;
              }

              v83 += 7;
              --v85;
              ++v86;
              v87 = v88 + 1;
              v14 = v84++ > 8;
              if (v14)
              {
                LODWORD(v38) = 0;
LABEL_143:
                v2 = v88;
                goto LABEL_144;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v38) = 0;
            }

            goto LABEL_143;
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
              goto LABEL_144;
            }

            v36 += 7;
            ++v40;
            v14 = v37++ > 8;
          }

          while (!v14);
          LODWORD(v38) = 0;
LABEL_144:
          *(this + 9) = v38;
          goto LABEL_157;
        case 7u:
          *(this + 26) |= 0x1000u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v69 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v68 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v69 = v68 != 0;
          }

          *(this + 50) = v69;
          goto LABEL_157;
        case 0xBu:
          *(this + 26) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v71 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v70 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v71 = v70 != 0;
          }

          *(this + 44) = v71;
          goto LABEL_157;
        case 0xCu:
          *(this + 26) |= 0x80u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v75 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v74 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v75 = v74 != 0;
          }

          *(this + 45) = v75;
          goto LABEL_157;
        case 0xDu:
          *(this + 26) |= 0x100u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v73 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v72 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v73 = v72 != 0;
          }

          *(this + 46) = v73;
          goto LABEL_157;
        case 0x15u:
          *(this + 26) |= 0x200u;
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

          *(this + 47) = v23;
          goto LABEL_157;
        case 0x16u:
          *(this + 26) |= 0x400u;
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

          *(this + 48) = v43;
          goto LABEL_157;
        case 0x17u:
          *(this + 26) |= 0x800u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v33 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v32 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v33 = v32 != 0;
          }

          *(this + 49) = v33;
          goto LABEL_157;
        default:
          if (!PB::Reader::skip(a2, v10 >> 3, v10 & 7, 0))
          {
            v111 = 0;
            return v111 & 1;
          }

          v2 = *(a2 + 1);
LABEL_157:
          v3 = *(a2 + 2);
          v4 = *(a2 + 24);
          if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
          {
            goto LABEL_161;
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

LABEL_161:
  v111 = v4 ^ 1;
  return v111 & 1;
}

uint64_t CMMsl::FallDetectionReferee::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 52);
  if ((v4 & 2) != 0)
  {
    this = PB::Writer::write(a2, *(this + 16), 1u);
    v4 = *(v3 + 52);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::writeVarInt(a2, *(v3 + 24), 2u);
  v4 = *(v3 + 52);
  if ((v4 & 1) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = PB::Writer::writeVarInt(a2, *(v3 + 8), 3u);
  v4 = *(v3 + 52);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = PB::Writer::writeVarInt(a2, *(v3 + 32), 4u);
  v4 = *(v3 + 52);
  if ((v4 & 0x20) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = PB::Writer::writeVarInt(a2, *(v3 + 40), 5u);
  v4 = *(v3 + 52);
  if ((v4 & 0x10) == 0)
  {
LABEL_7:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = PB::Writer::writeVarInt(a2, *(v3 + 36), 6u);
  v4 = *(v3 + 52);
  if ((v4 & 0x1000) == 0)
  {
LABEL_8:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = PB::Writer::write(a2, *(v3 + 50), 7u);
  v4 = *(v3 + 52);
  if ((v4 & 0x40) == 0)
  {
LABEL_9:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = PB::Writer::write(a2, *(v3 + 44), 0xBu);
  v4 = *(v3 + 52);
  if ((v4 & 0x80) == 0)
  {
LABEL_10:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = PB::Writer::write(a2, *(v3 + 45), 0xCu);
  v4 = *(v3 + 52);
  if ((v4 & 0x100) == 0)
  {
LABEL_11:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = PB::Writer::write(a2, *(v3 + 46), 0xDu);
  v4 = *(v3 + 52);
  if ((v4 & 0x200) == 0)
  {
LABEL_12:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_13;
    }

LABEL_26:
    this = PB::Writer::write(a2, *(v3 + 48), 0x16u);
    if ((*(v3 + 52) & 0x800) == 0)
    {
      return this;
    }

    goto LABEL_27;
  }

LABEL_25:
  this = PB::Writer::write(a2, *(v3 + 47), 0x15u);
  v4 = *(v3 + 52);
  if ((v4 & 0x400) != 0)
  {
    goto LABEL_26;
  }

LABEL_13:
  if ((v4 & 0x800) == 0)
  {
    return this;
  }

LABEL_27:
  v5 = *(v3 + 49);

  return PB::Writer::write(a2, v5, 0x17u);
}

BOOL CMMsl::FallDetectionReferee::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 52);
  v3 = *(a2 + 52);
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
    if ((v3 & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
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

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 36) != *(a2 + 36))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if ((*(a1 + 52) & 0x1000) != 0)
  {
    if ((*(a2 + 52) & 0x1000) == 0 || *(a1 + 50) != *(a2 + 50))
    {
      return 0;
    }
  }

  else if ((*(a2 + 52) & 0x1000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 44) != *(a2 + 44))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 45) != *(a2 + 45))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if ((*(a1 + 52) & 0x100) != 0)
  {
    if ((*(a2 + 52) & 0x100) == 0 || *(a1 + 46) != *(a2 + 46))
    {
      return 0;
    }
  }

  else if ((*(a2 + 52) & 0x100) != 0)
  {
    return 0;
  }

  if ((*(a1 + 52) & 0x200) != 0)
  {
    if ((*(a2 + 52) & 0x200) == 0 || *(a1 + 47) != *(a2 + 47))
    {
      return 0;
    }
  }

  else if ((*(a2 + 52) & 0x200) != 0)
  {
    return 0;
  }

  if ((*(a1 + 52) & 0x400) != 0)
  {
    if ((*(a2 + 52) & 0x400) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((*(a2 + 52) & 0x400) != 0)
  {
    return 0;
  }

  v4 = (v3 & 0x800) == 0;
  if ((*(a1 + 52) & 0x800) != 0)
  {
    return (*(a2 + 52) & 0x800) != 0 && *(a1 + 49) == *(a2 + 49);
  }

  return v4;
}

uint64_t CMMsl::FallDetectionReferee::hash_value(CMMsl::FallDetectionReferee *this)
{
  v1 = *(this + 26);
  if ((v1 & 2) != 0)
  {
    v2 = *(this + 2);
    if (v2 == 0.0)
    {
      v2 = 0.0;
    }

    if ((v1 & 4) != 0)
    {
LABEL_3:
      v3 = *(this + 3);
      if (v1)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v2 = 0.0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if (v1)
  {
LABEL_4:
    v4 = *(this + 1);
    if ((v1 & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  v4 = 0;
  if ((v1 & 8) != 0)
  {
LABEL_5:
    v5 = *(this + 8);
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  v5 = 0;
  if ((v1 & 0x20) != 0)
  {
LABEL_6:
    v6 = *(this + 10);
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  v6 = 0;
  if ((v1 & 0x10) != 0)
  {
LABEL_7:
    v7 = *(this + 9);
    if ((*(this + 26) & 0x1000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  v7 = 0;
  if ((*(this + 26) & 0x1000) != 0)
  {
LABEL_8:
    v8 = *(this + 50);
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  v8 = 0;
  if ((v1 & 0x40) != 0)
  {
LABEL_9:
    v9 = *(this + 44);
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  v9 = 0;
  if ((v1 & 0x80) != 0)
  {
LABEL_10:
    v10 = *(this + 45);
    if ((*(this + 26) & 0x100) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  v10 = 0;
  if ((*(this + 26) & 0x100) != 0)
  {
LABEL_11:
    v11 = *(this + 46);
    if ((*(this + 26) & 0x200) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  v11 = 0;
  if ((*(this + 26) & 0x200) != 0)
  {
LABEL_12:
    v12 = *(this + 47);
    if ((*(this + 26) & 0x400) != 0)
    {
      goto LABEL_13;
    }

LABEL_28:
    v13 = 0;
    if ((*(this + 26) & 0x800) != 0)
    {
      goto LABEL_14;
    }

LABEL_29:
    v14 = 0;
    return v3 ^ *&v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14;
  }

LABEL_27:
  v12 = 0;
  if ((*(this + 26) & 0x400) == 0)
  {
    goto LABEL_28;
  }

LABEL_13:
  v13 = *(this + 48);
  if ((*(this + 26) & 0x800) == 0)
  {
    goto LABEL_29;
  }

LABEL_14:
  v14 = *(this + 49);
  return v3 ^ *&v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14;
}

void *CMMsl::FallDetectionReplay::FallDetectionReplay(void *this)
{
  *this = off_10041E2D8;
  *(this + 364) = 0;
  return this;
}

{
  *this = off_10041E2D8;
  *(this + 364) = 0;
  return this;
}

void CMMsl::FallDetectionReplay::~FallDetectionReplay(CMMsl::FallDetectionReplay *this)
{
  PB::Base::~Base(this);

  operator delete();
}

double CMMsl::FallDetectionReplay::FallDetectionReplay(CMMsl::FallDetectionReplay *this, const CMMsl::FallDetectionReplay *a2)
{
  *this = off_10041E2D8;
  v2 = (this + 364);
  *(this + 364) = 0;
  v3 = (a2 + 364);
  v4 = *(a2 + 364);
  if ((v4 & 0x40000000) != 0)
  {
    v6 = *(a2 + 31);
    v5 = 0x40000000;
    *v2 = 0x40000000;
    *(this + 31) = v6;
    v4 = *v3;
    if ((*v3 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v5 = 0;
  if ((v4 & 0x80000000) != 0)
  {
LABEL_5:
    v7 = *(a2 + 32);
    v5 |= 0x80000000uLL;
    *v2 = v5;
    *(this + 32) = v7;
    v4 = *v3;
  }

LABEL_6:
  if ((v4 & 0x80000) != 0)
  {
    v8 = *(a2 + 20);
    v5 |= 0x80000uLL;
    *v2 = v5;
    *(this + 20) = v8;
    v4 = *v3;
    if ((*v3 & 0x100000) == 0)
    {
LABEL_8:
      if ((v4 & 0x200000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_52;
    }
  }

  else if ((v4 & 0x100000) == 0)
  {
    goto LABEL_8;
  }

  v9 = *(a2 + 21);
  v5 |= 0x100000uLL;
  *v2 = v5;
  *(this + 21) = v9;
  v4 = *v3;
  if ((*v3 & 0x200000) == 0)
  {
LABEL_9:
    if ((v4 & 0x8000000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_53;
  }

LABEL_52:
  v10 = *(a2 + 22);
  v5 |= 0x200000uLL;
  *v2 = v5;
  *(this + 22) = v10;
  v4 = *v3;
  if ((*v3 & 0x8000000000) == 0)
  {
LABEL_10:
    if ((v4 & 0x40000000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_54;
  }

LABEL_53:
  v11 = *(a2 + 40);
  v5 |= 0x8000000000uLL;
  *v2 = v5;
  *(this + 40) = v11;
  v4 = *v3;
  if ((*v3 & 0x40000000000) == 0)
  {
LABEL_11:
    if ((v4 & 0x10000000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_55;
  }

LABEL_54:
  v12 = *(a2 + 43);
  v5 |= 0x40000000000uLL;
  *v2 = v5;
  *(this + 43) = v12;
  v4 = *v3;
  if ((*v3 & 0x10000000000) == 0)
  {
LABEL_12:
    if ((v4 & 0x20000000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_56;
  }

LABEL_55:
  v13 = *(a2 + 41);
  v5 |= 0x10000000000uLL;
  *v2 = v5;
  *(this + 41) = v13;
  v4 = *v3;
  if ((*v3 & 0x20000000000) == 0)
  {
LABEL_13:
    if ((v4 & 0x80000000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_57;
  }

LABEL_56:
  v14 = *(a2 + 42);
  v5 |= 0x20000000000uLL;
  *v2 = v5;
  *(this + 42) = v14;
  v4 = *v3;
  if ((*v3 & 0x80000000000) == 0)
  {
LABEL_14:
    if ((v4 & 0x100000000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_58;
  }

LABEL_57:
  v15 = *(a2 + 44);
  v5 |= 0x80000000000uLL;
  *v2 = v5;
  *(this + 44) = v15;
  v4 = *v3;
  if ((*v3 & 0x100000000000) == 0)
  {
LABEL_15:
    if ((v4 & 0x1000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_59;
  }

LABEL_58:
  v16 = *(a2 + 90);
  v5 |= 0x100000000000uLL;
  *v2 = v5;
  *(this + 90) = v16;
  v4 = *v3;
  if ((*v3 & 0x1000000) == 0)
  {
LABEL_16:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_60;
  }

LABEL_59:
  v17 = *(a2 + 25);
  v5 |= 0x1000000uLL;
  *v2 = v5;
  *(this + 25) = v17;
  v4 = *v3;
  if ((*v3 & 0x8000000) == 0)
  {
LABEL_17:
    if ((v4 & 0x2000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_61;
  }

LABEL_60:
  v18 = *(a2 + 28);
  v5 |= 0x8000000uLL;
  *v2 = v5;
  *(this + 28) = v18;
  v4 = *v3;
  if ((*v3 & 0x2000000) == 0)
  {
LABEL_18:
    if ((v4 & 0x4000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_62;
  }

LABEL_61:
  v19 = *(a2 + 26);
  v5 |= 0x2000000uLL;
  *v2 = v5;
  *(this + 26) = v19;
  v4 = *v3;
  if ((*v3 & 0x4000000) == 0)
  {
LABEL_19:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_63;
  }

LABEL_62:
  v20 = *(a2 + 27);
  v5 |= 0x4000000uLL;
  *v2 = v5;
  *(this + 27) = v20;
  v4 = *v3;
  if ((*v3 & 0x400000) == 0)
  {
LABEL_20:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_64;
  }

LABEL_63:
  v21 = *(a2 + 23);
  v5 |= 0x400000uLL;
  *v2 = v5;
  *(this + 23) = v21;
  v4 = *v3;
  if ((*v3 & 0x800000) == 0)
  {
LABEL_21:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_65;
  }

LABEL_64:
  v22 = *(a2 + 24);
  v5 |= 0x800000uLL;
  *v2 = v5;
  *(this + 24) = v22;
  v4 = *v3;
  if ((*v3 & 0x20) == 0)
  {
LABEL_22:
    if ((v4 & 8) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_66;
  }

LABEL_65:
  v23 = *(a2 + 6);
  v5 |= 0x20uLL;
  *v2 = v5;
  *(this + 6) = v23;
  v4 = *v3;
  if ((*v3 & 8) == 0)
  {
LABEL_23:
    if ((v4 & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_67;
  }

LABEL_66:
  v24 = *(a2 + 4);
  v5 |= 8uLL;
  *v2 = v5;
  *(this + 4) = v24;
  v4 = *v3;
  if ((*v3 & 1) == 0)
  {
LABEL_24:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_68;
  }

LABEL_67:
  v25 = *(a2 + 1);
  v5 |= 1uLL;
  *v2 = v5;
  *(this + 1) = v25;
  v4 = *v3;
  if ((*v3 & 0x40) == 0)
  {
LABEL_25:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_69;
  }

LABEL_68:
  v26 = *(a2 + 7);
  v5 |= 0x40uLL;
  *v2 = v5;
  *(this + 7) = v26;
  v4 = *v3;
  if ((*v3 & 0x100) == 0)
  {
LABEL_26:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_70;
  }

LABEL_69:
  v27 = *(a2 + 9);
  v5 |= 0x100uLL;
  *v2 = v5;
  *(this + 9) = v27;
  v4 = *v3;
  if ((*v3 & 0x10) == 0)
  {
LABEL_27:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_71;
  }

LABEL_70:
  v28 = *(a2 + 5);
  v5 |= 0x10uLL;
  *v2 = v5;
  *(this + 5) = v28;
  v4 = *v3;
  if ((*v3 & 0x200) == 0)
  {
LABEL_28:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_72;
  }

LABEL_71:
  v29 = *(a2 + 10);
  v5 |= 0x200uLL;
  *v2 = v5;
  *(this + 10) = v29;
  v4 = *v3;
  if ((*v3 & 0x400) == 0)
  {
LABEL_29:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_73;
  }

LABEL_72:
  v30 = *(a2 + 11);
  v5 |= 0x400uLL;
  *v2 = v5;
  *(this + 11) = v30;
  v4 = *v3;
  if ((*v3 & 0x800) == 0)
  {
LABEL_30:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_74;
  }

LABEL_73:
  v31 = *(a2 + 12);
  v5 |= 0x800uLL;
  *v2 = v5;
  *(this + 12) = v31;
  v4 = *v3;
  if ((*v3 & 0x4000) == 0)
  {
LABEL_31:
    if ((v4 & 2) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_75;
  }

LABEL_74:
  v32 = *(a2 + 15);
  v5 |= 0x4000uLL;
  *v2 = v5;
  *(this + 15) = v32;
  v4 = *v3;
  if ((*v3 & 2) == 0)
  {
LABEL_32:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_76;
  }

LABEL_75:
  v33 = *(a2 + 2);
  v5 |= 2uLL;
  *v2 = v5;
  *(this + 2) = v33;
  v4 = *v3;
  if ((*v3 & 0x8000) == 0)
  {
LABEL_33:
    if ((v4 & 0x800000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_77;
  }

LABEL_76:
  v34 = *(a2 + 16);
  v5 |= 0x8000uLL;
  *v2 = v5;
  *(this + 16) = v34;
  v4 = *v3;
  if ((*v3 & 0x800000000) == 0)
  {
LABEL_34:
    if ((v4 & 0x400000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_78;
  }

LABEL_77:
  v35 = *(a2 + 36);
  v5 |= 0x800000000uLL;
  *v2 = v5;
  *(this + 36) = v35;
  v4 = *v3;
  if ((*v3 & 0x400000000) == 0)
  {
LABEL_35:
    if ((v4 & 0x200000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_79;
  }

LABEL_78:
  v36 = *(a2 + 35);
  v5 |= 0x400000000uLL;
  *v2 = v5;
  *(this + 35) = v36;
  v4 = *v3;
  if ((*v3 & 0x200000000) == 0)
  {
LABEL_36:
    if ((v4 & 0x100000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_80;
  }

LABEL_79:
  v37 = *(a2 + 34);
  v5 |= 0x200000000uLL;
  *v2 = v5;
  *(this + 34) = v37;
  v4 = *v3;
  if ((*v3 & 0x100000000) == 0)
  {
LABEL_37:
    if ((v4 & 0x20000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_81;
  }

LABEL_80:
  v38 = *(a2 + 33);
  v5 |= &_mh_execute_header;
  *v2 = v5;
  *(this + 33) = v38;
  v4 = *v3;
  if ((*v3 & 0x20000000) == 0)
  {
LABEL_38:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_82;
  }

LABEL_81:
  v39 = *(a2 + 30);
  v5 |= 0x20000000uLL;
  *v2 = v5;
  *(this + 30) = v39;
  v4 = *v3;
  if ((*v3 & 0x10000000) == 0)
  {
LABEL_39:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_83;
  }

LABEL_82:
  v40 = *(a2 + 29);
  v5 |= 0x10000000uLL;
  *v2 = v5;
  *(this + 29) = v40;
  v4 = *v3;
  if ((*v3 & 0x2000) == 0)
  {
LABEL_40:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_84;
  }

LABEL_83:
  v41 = *(a2 + 14);
  v5 |= 0x2000uLL;
  *v2 = v5;
  *(this + 14) = v41;
  v4 = *v3;
  if ((*v3 & 0x10000) == 0)
  {
LABEL_41:
    if ((v4 & 4) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_85;
  }

LABEL_84:
  v42 = *(a2 + 17);
  v5 |= 0x10000uLL;
  *v2 = v5;
  *(this + 17) = v42;
  v4 = *v3;
  if ((*v3 & 4) == 0)
  {
LABEL_42:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_86;
  }

LABEL_85:
  v43 = *(a2 + 3);
  v5 |= 4uLL;
  *v2 = v5;
  *(this + 3) = v43;
  v4 = *v3;
  if ((*v3 & 0x40000) == 0)
  {
LABEL_43:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_87;
  }

LABEL_86:
  v44 = *(a2 + 19);
  v5 |= 0x40000uLL;
  *v2 = v5;
  *(this + 19) = v44;
  v4 = *v3;
  if ((*v3 & 0x20000) == 0)
  {
LABEL_44:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_88;
  }

LABEL_87:
  v45 = *(a2 + 18);
  v5 |= 0x20000uLL;
  *v2 = v5;
  *(this + 18) = v45;
  v4 = *v3;
  if ((*v3 & 0x80) == 0)
  {
LABEL_45:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_89;
  }

LABEL_88:
  v46 = *(a2 + 8);
  v5 |= 0x80uLL;
  *v2 = v5;
  *(this + 8) = v46;
  v4 = *v3;
  if ((*v3 & 0x1000) == 0)
  {
LABEL_46:
    if ((v4 & 0x4000000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_90;
  }

LABEL_89:
  v47 = *(a2 + 13);
  v5 |= 0x1000uLL;
  *v2 = v5;
  *(this + 13) = v47;
  v4 = *v3;
  if ((*v3 & 0x4000000000) == 0)
  {
LABEL_47:
    if ((v4 & 0x1000000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_91;
  }

LABEL_90:
  v48 = *(a2 + 39);
  v5 |= 0x4000000000uLL;
  *v2 = v5;
  *(this + 39) = v48;
  v4 = *v3;
  if ((*v3 & 0x1000000000) == 0)
  {
LABEL_48:
    if ((v4 & 0x2000000000) == 0)
    {
      return result;
    }

LABEL_92:
    result = *(a2 + 38);
    *v2 = v5 | 0x2000000000;
    *(this + 38) = result;
    return result;
  }

LABEL_91:
  v49 = *(a2 + 37);
  v5 |= 0x1000000000uLL;
  *v2 = v5;
  *(this + 37) = v49;
  if ((*v3 & 0x2000000000) != 0)
  {
    goto LABEL_92;
  }

  return result;
}

CMMsl *CMMsl::FallDetectionReplay::operator=(CMMsl *a1, const CMMsl::FallDetectionReplay *a2)
{
  if (a1 != a2)
  {
    CMMsl::FallDetectionReplay::FallDetectionReplay(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::FallDetectionReplay *a2, CMMsl::FallDetectionReplay *a3)
{
  v3 = *(this + 364);
  *(this + 364) = *(a2 + 364);
  *(a2 + 364) = v3;
  v4 = *(this + 31);
  *(this + 31) = *(a2 + 31);
  *(a2 + 31) = v4;
  v5 = *(this + 32);
  *(this + 32) = *(a2 + 32);
  *(a2 + 32) = v5;
  v6 = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v6;
  v7 = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v7;
  v8 = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v8;
  v9 = *(this + 40);
  *(this + 40) = *(a2 + 40);
  *(a2 + 40) = v9;
  v10 = *(this + 43);
  *(this + 43) = *(a2 + 43);
  *(a2 + 43) = v10;
  v11 = *(this + 41);
  *(this + 41) = *(a2 + 41);
  *(a2 + 41) = v11;
  v12 = *(this + 42);
  *(this + 42) = *(a2 + 42);
  *(a2 + 42) = v12;
  v13 = *(this + 44);
  *(this + 44) = *(a2 + 44);
  *(a2 + 44) = v13;
  LODWORD(v13) = *(this + 90);
  *(this + 90) = *(a2 + 90);
  *(a2 + 90) = v13;
  v14 = *(this + 25);
  *(this + 25) = *(a2 + 25);
  *(a2 + 25) = v14;
  v15 = *(this + 28);
  *(this + 28) = *(a2 + 28);
  *(a2 + 28) = v15;
  v16 = *(this + 26);
  *(this + 26) = *(a2 + 26);
  *(a2 + 26) = v16;
  v17 = *(this + 27);
  *(this + 27) = *(a2 + 27);
  *(a2 + 27) = v17;
  v18 = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = v18;
  v19 = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v19;
  v20 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v20;
  v21 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v21;
  v22 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v22;
  v23 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v23;
  v24 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v24;
  v25 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v25;
  v26 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v26;
  v27 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v27;
  v28 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v28;
  v29 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v29;
  v30 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v30;
  v31 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v31;
  v32 = *(this + 36);
  *(this + 36) = *(a2 + 36);
  *(a2 + 36) = v32;
  v33 = *(this + 35);
  *(this + 35) = *(a2 + 35);
  *(a2 + 35) = v33;
  v34 = *(this + 34);
  *(this + 34) = *(a2 + 34);
  *(a2 + 34) = v34;
  v35 = *(this + 33);
  *(this + 33) = *(a2 + 33);
  *(a2 + 33) = v35;
  v36 = *(this + 30);
  *(this + 30) = *(a2 + 30);
  *(a2 + 30) = v36;
  v37 = *(this + 29);
  *(this + 29) = *(a2 + 29);
  *(a2 + 29) = v37;
  v38 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v38;
  v39 = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v39;
  v40 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v40;
  v41 = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v41;
  v42 = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v42;
  v43 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v43;
  v44 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v44;
  v45 = *(this + 39);
  *(this + 39) = *(a2 + 39);
  *(a2 + 39) = v45;
  v46 = *(this + 37);
  *(this + 37) = *(a2 + 37);
  *(a2 + 37) = v46;
  result = *(this + 38);
  *(this + 38) = *(a2 + 38);
  *(a2 + 38) = result;
  return result;
}

double CMMsl::FallDetectionReplay::FallDetectionReplay(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041E2D8;
  *(a1 + 364) = *(a2 + 364);
  *(a2 + 364) = 0;
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 360) = *(a2 + 360);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 296) = *(a2 + 296);
  result = *(a2 + 304);
  *(a1 + 304) = result;
  return result;
}

CMMsl *CMMsl::FallDetectionReplay::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::FallDetectionReplay::FallDetectionReplay(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::FallDetectionReplay::formatText(CMMsl::FallDetectionReplay *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = (this + 364);
  v6 = *(this + 364);
  if (v6)
  {
    PB::TextFormatter::format(a2, "alertCanceledBecauseOfAbsenceOfQuiessence", *(this + 1));
    v6 = *v5;
    if ((*v5 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_52;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "alertCanceledBecauseOfActive", *(this + 2));
  v6 = *v5;
  if ((*v5 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_53;
  }

LABEL_52:
  PB::TextFormatter::format(a2, "alertCanceledBecauseOfChargerState", *(this + 3));
  v6 = *v5;
  if ((*v5 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_54;
  }

LABEL_53:
  PB::TextFormatter::format(a2, "alertCanceledBecauseOfCyclingPostImpact", *(this + 4));
  v6 = *v5;
  if ((*v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_55;
  }

LABEL_54:
  PB::TextFormatter::format(a2, "alertCanceledBecauseOfDecimatedLowFrequencyFFT", *(this + 5));
  v6 = *v5;
  if ((*v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_56;
  }

LABEL_55:
  PB::TextFormatter::format(a2, "alertCanceledBecauseOfDistanceTraveledPostImpact", *(this + 6));
  v6 = *v5;
  if ((*v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_57;
  }

LABEL_56:
  PB::TextFormatter::format(a2, "alertCanceledBecauseOfHighFrequencyFFT", *(this + 7));
  v6 = *v5;
  if ((*v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_58;
  }

LABEL_57:
  PB::TextFormatter::format(a2, "alertCanceledBecauseOfLockedNoMotionPre", *(this + 8));
  v6 = *v5;
  if ((*v5 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_59;
  }

LABEL_58:
  PB::TextFormatter::format(a2, "alertCanceledBecauseOfLowFrequencyFFT", *(this + 9));
  v6 = *v5;
  if ((*v5 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_60;
  }

LABEL_59:
  PB::TextFormatter::format(a2, "alertCanceledBecauseOfNumberOfPeaksFFT", *(this + 10));
  v6 = *v5;
  if ((*v5 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_61;
  }

LABEL_60:
  PB::TextFormatter::format(a2, "alertCanceledBecauseOfOffBody", *(this + 11));
  v6 = *v5;
  if ((*v5 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_62;
  }

LABEL_61:
  PB::TextFormatter::format(a2, "alertCanceledBecauseOfRepetitiveMotion", *(this + 12));
  v6 = *v5;
  if ((*v5 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_63;
  }

LABEL_62:
  PB::TextFormatter::format(a2, "alertCanceledBecauseOfRetraction", *(this + 13));
  v6 = *v5;
  if ((*v5 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_64;
  }

LABEL_63:
  PB::TextFormatter::format(a2, "alertCanceledBecauseOfSimilarPeaks", *(this + 14));
  v6 = *v5;
  if ((*v5 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_65;
  }

LABEL_64:
  PB::TextFormatter::format(a2, "alertCanceledBecauseOfStand", *(this + 15));
  v6 = *v5;
  if ((*v5 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_66;
  }

LABEL_65:
  PB::TextFormatter::format(a2, "alertCanceledBecauseOfSteps", *(this + 16));
  v6 = *v5;
  if ((*v5 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_67;
  }

LABEL_66:
  PB::TextFormatter::format(a2, "alertCanceledBecauseOfWristState", *(this + 17));
  v6 = *v5;
  if ((*v5 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_68;
  }

LABEL_67:
  PB::TextFormatter::format(a2, "alertCanceledBecauseOfWristStatePost", *(this + 18));
  v6 = *v5;
  if ((*v5 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_69;
  }

LABEL_68:
  PB::TextFormatter::format(a2, "alertCanceledBecauseOfWristStatePre", *(this + 19));
  v6 = *v5;
  if ((*v5 & 0x80000) == 0)
  {
LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_70;
  }

LABEL_69:
  PB::TextFormatter::format(a2, "fallStatsDispatchResetOnAccelSensorTime", *(this + 20));
  v6 = *v5;
  if ((*v5 & 0x100000) == 0)
  {
LABEL_22:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_71;
  }

LABEL_70:
  PB::TextFormatter::format(a2, "fallStatsDispatchRestoredOnAccelSensorTime", *(this + 21));
  v6 = *v5;
  if ((*v5 & 0x200000) == 0)
  {
LABEL_23:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_72;
  }

LABEL_71:
  PB::TextFormatter::format(a2, "hkWorkoutId", *(this + 22));
  v6 = *v5;
  if ((*v5 & 0x400000) == 0)
  {
LABEL_24:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_73;
  }

LABEL_72:
  PB::TextFormatter::format(a2, "impactCanceledBecauseOfExistingAlert", *(this + 23));
  v6 = *v5;
  if ((*v5 & 0x800000) == 0)
  {
LABEL_25:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_74;
  }

LABEL_73:
  PB::TextFormatter::format(a2, "impactNotConsideredBecauseOfCyclingImpactThresholds", *(this + 24));
  v6 = *v5;
  if ((*v5 & 0x1000000) == 0)
  {
LABEL_26:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_75;
  }

LABEL_74:
  PB::TextFormatter::format(a2, "impactNotConsideredBecauseOfMaxAccelNormThreshold", *(this + 25));
  v6 = *v5;
  if ((*v5 & 0x2000000) == 0)
  {
LABEL_27:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_76;
  }

LABEL_75:
  PB::TextFormatter::format(a2, "impactNotConsideredBecauseOfMultiPeaks", *(this + 26));
  v6 = *v5;
  if ((*v5 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_77;
  }

LABEL_76:
  PB::TextFormatter::format(a2, "impactNotConsideredBecauseOfNaiveBayesClassifier", *(this + 27));
  v6 = *v5;
  if ((*v5 & 0x8000000) == 0)
  {
LABEL_29:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_78;
  }

LABEL_77:
  PB::TextFormatter::format(a2, "impactNotConsideredBecauseOfOtherHardThresholds", *(this + 28));
  v6 = *v5;
  if ((*v5 & 0x10000000) == 0)
  {
LABEL_30:
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_79;
  }

LABEL_78:
  PB::TextFormatter::format(a2, "leavingImpactBecauseOfNewImpactNewImpact", *(this + 29));
  v6 = *v5;
  if ((*v5 & 0x20000000) == 0)
  {
LABEL_31:
    if ((v6 & 0x100000000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_80;
  }

LABEL_79:
  PB::TextFormatter::format(a2, "leavingImpactBecauseOfNewImpactOldImpact", *(this + 30));
  v6 = *v5;
  if ((*v5 & 0x100000000000) == 0)
  {
LABEL_32:
    if ((v6 & 0x40000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_81;
  }

LABEL_80:
  PB::TextFormatter::format(a2, "operatingMode", *(this + 90));
  v6 = *v5;
  if ((*v5 & 0x40000000) == 0)
  {
LABEL_33:
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_82;
  }

LABEL_81:
  PB::TextFormatter::format(a2, "skippedFallStatsSensorTime", *(this + 31));
  v6 = *v5;
  if ((*v5 & 0x80000000) == 0)
  {
LABEL_34:
    if ((v6 & 0x100000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_83;
  }

LABEL_82:
  PB::TextFormatter::format(a2, "skippedGyroSensorTime", *(this + 32));
  v6 = *v5;
  if ((*v5 & 0x100000000) == 0)
  {
LABEL_35:
    if ((v6 & 0x200000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_84;
  }

LABEL_83:
  PB::TextFormatter::format(a2, "sosCanceledBecauseOfAbsenceOfLongLie", *(this + 33));
  v6 = *v5;
  if ((*v5 & 0x200000000) == 0)
  {
LABEL_36:
    if ((v6 & 0x400000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_85;
  }

LABEL_84:
  PB::TextFormatter::format(a2, "sosCanceledBecauseOfActive", *(this + 34));
  v6 = *v5;
  if ((*v5 & 0x400000000) == 0)
  {
LABEL_37:
    if ((v6 & 0x800000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_86;
  }

LABEL_85:
  PB::TextFormatter::format(a2, "sosCanceledBecauseOfStand", *(this + 35));
  v6 = *v5;
  if ((*v5 & 0x800000000) == 0)
  {
LABEL_38:
    if ((v6 & 0x1000000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_87;
  }

LABEL_86:
  PB::TextFormatter::format(a2, "sosCanceledBecauseOfSteps", *(this + 36));
  v6 = *v5;
  if ((*v5 & 0x1000000000) == 0)
  {
LABEL_39:
    if ((v6 & 0x2000000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_88;
  }

LABEL_87:
  PB::TextFormatter::format(a2, "sosConsideredFallTimestamp", *(this + 37));
  v6 = *v5;
  if ((*v5 & 0x2000000000) == 0)
  {
LABEL_40:
    if ((v6 & 0x4000000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_89;
  }

LABEL_88:
  PB::TextFormatter::format(a2, "sosConsideredIOSTime", *(this + 38));
  v6 = *v5;
  if ((*v5 & 0x4000000000) == 0)
  {
LABEL_41:
    if ((v6 & 0x8000000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_90;
  }

LABEL_89:
  PB::TextFormatter::format(a2, "sosConsideredSensorTime", *(this + 39));
  v6 = *v5;
  if ((*v5 & 0x8000000000) == 0)
  {
LABEL_42:
    if ((v6 & 0x10000000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_91;
  }

LABEL_90:
  PB::TextFormatter::format(a2, "workoutId", *(this + 40));
  v6 = *v5;
  if ((*v5 & 0x10000000000) == 0)
  {
LABEL_43:
    if ((v6 & 0x20000000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_92;
  }

LABEL_91:
  PB::TextFormatter::format(a2, "workoutTransitionPause", *(this + 41));
  v6 = *v5;
  if ((*v5 & 0x20000000000) == 0)
  {
LABEL_44:
    if ((v6 & 0x40000000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_93;
  }

LABEL_92:
  PB::TextFormatter::format(a2, "workoutTransitionResume", *(this + 42));
  v6 = *v5;
  if ((*v5 & 0x40000000000) == 0)
  {
LABEL_45:
    if ((v6 & 0x80000000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

LABEL_93:
  PB::TextFormatter::format(a2, "workoutTransitionStart", *(this + 43));
  if ((*v5 & 0x80000000000) != 0)
  {
LABEL_46:
    PB::TextFormatter::format(a2, "workoutTransitionStop", *(this + 44));
  }

LABEL_47:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::FallDetectionReplay::readFrom(CMMsl::FallDetectionReplay *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    v7 = (this + 364);
    do
    {
      v8 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v16 = 0;
        v17 = 0;
        v11 = 0;
        v18 = v3 >= v2;
        v19 = v3 - v2;
        if (!v18)
        {
          v19 = 0;
        }

        v20 = (v8 + v2);
        v21 = v2 + 1;
        while (1)
        {
          if (!v19)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            goto LABEL_869;
          }

          v22 = *v20;
          *(a2 + 1) = v21;
          v11 |= (v22 & 0x7F) << v16;
          if ((v22 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          --v19;
          ++v20;
          ++v21;
          v15 = v17++ > 8;
          if (v15)
          {
LABEL_18:
            v11 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v11 = 0;
        }
      }

      else
      {
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = (v8 + v2);
        v13 = v2 + 1;
        while (1)
        {
          *(a2 + 1) = v13;
          v14 = *v12++;
          v11 |= (v14 & 0x7F) << v9;
          if ((v14 & 0x80) == 0)
          {
            break;
          }

          v9 += 7;
          ++v13;
          v15 = v10++ > 8;
          if (v15)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v11 & 7) == 4))
      {
        break;
      }

      switch((v11 >> 3))
      {
        case 1u:
          *v7 |= 0x40000000uLL;
          v24 = *(a2 + 1);
          v23 = *(a2 + 2);
          v25 = *a2;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
          {
            v576 = 0;
            v577 = 0;
            v28 = 0;
            v18 = v23 >= v24;
            v578 = v23 - v24;
            if (!v18)
            {
              v578 = 0;
            }

            v579 = (v25 + v24);
            v580 = v24 + 1;
            do
            {
              if (!v578)
              {
                v28 = 0;
                *(a2 + 24) = 1;
                goto LABEL_813;
              }

              v581 = *v579;
              *(a2 + 1) = v580;
              v28 |= (v581 & 0x7F) << v576;
              if ((v581 & 0x80) == 0)
              {
                if (*(a2 + 24))
                {
                  v28 = 0;
                }

                goto LABEL_813;
              }

              v576 += 7;
              --v578;
              ++v579;
              ++v580;
              v15 = v577++ > 8;
            }

            while (!v15);
LABEL_551:
            v28 = 0;
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
              v15 = v27++ > 8;
              if (v15)
              {
                goto LABEL_551;
              }
            }
          }

LABEL_813:
          *(this + 31) = v28;
          goto LABEL_865;
        case 2u:
          *v7 |= 0x80000000uLL;
          v187 = *(a2 + 1);
          v186 = *(a2 + 2);
          v188 = *a2;
          if (v187 <= 0xFFFFFFFFFFFFFFF5 && v187 + 10 <= v186)
          {
            v189 = 0;
            v190 = 0;
            v191 = 0;
            v192 = (v188 + v187);
            v193 = v187 + 1;
            do
            {
              *(a2 + 1) = v193;
              v194 = *v192++;
              v191 |= (v194 & 0x7F) << v189;
              if ((v194 & 0x80) == 0)
              {
                goto LABEL_786;
              }

              v189 += 7;
              ++v193;
              v15 = v190++ > 8;
            }

            while (!v15);
LABEL_479:
            v191 = 0;
            goto LABEL_786;
          }

          v522 = 0;
          v523 = 0;
          v191 = 0;
          v18 = v186 >= v187;
          v524 = v186 - v187;
          if (!v18)
          {
            v524 = 0;
          }

          v525 = (v188 + v187);
          v526 = v187 + 1;
          while (2)
          {
            if (v524)
            {
              v527 = *v525;
              *(a2 + 1) = v526;
              v191 |= (v527 & 0x7F) << v522;
              if (v527 < 0)
              {
                v522 += 7;
                --v524;
                ++v525;
                ++v526;
                v15 = v523++ > 8;
                if (v15)
                {
                  goto LABEL_479;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v191 = 0;
              }
            }

            else
            {
              v191 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_786:
          *(this + 32) = v191;
          goto LABEL_865;
        case 0x15u:
          *v7 |= 0x80000uLL;
          v277 = *(a2 + 1);
          v276 = *(a2 + 2);
          v278 = *a2;
          if (v277 <= 0xFFFFFFFFFFFFFFF5 && v277 + 10 <= v276)
          {
            v279 = 0;
            v280 = 0;
            v281 = 0;
            v282 = (v278 + v277);
            v283 = v277 + 1;
            do
            {
              *(a2 + 1) = v283;
              v284 = *v282++;
              v281 |= (v284 & 0x7F) << v279;
              if ((v284 & 0x80) == 0)
              {
                goto LABEL_819;
              }

              v279 += 7;
              ++v283;
              v15 = v280++ > 8;
            }

            while (!v15);
LABEL_567:
            v281 = 0;
            goto LABEL_819;
          }

          v588 = 0;
          v589 = 0;
          v281 = 0;
          v18 = v276 >= v277;
          v590 = v276 - v277;
          if (!v18)
          {
            v590 = 0;
          }

          v591 = (v278 + v277);
          v592 = v277 + 1;
          while (2)
          {
            if (v590)
            {
              v593 = *v591;
              *(a2 + 1) = v592;
              v281 |= (v593 & 0x7F) << v588;
              if (v593 < 0)
              {
                v588 += 7;
                --v590;
                ++v591;
                ++v592;
                v15 = v589++ > 8;
                if (v15)
                {
                  goto LABEL_567;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v281 = 0;
              }
            }

            else
            {
              v281 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_819:
          *(this + 20) = v281;
          goto LABEL_865;
        case 0x16u:
          *v7 |= 0x100000uLL;
          v178 = *(a2 + 1);
          v177 = *(a2 + 2);
          v179 = *a2;
          if (v178 <= 0xFFFFFFFFFFFFFFF5 && v178 + 10 <= v177)
          {
            v180 = 0;
            v181 = 0;
            v182 = 0;
            v183 = (v179 + v178);
            v184 = v178 + 1;
            do
            {
              *(a2 + 1) = v184;
              v185 = *v183++;
              v182 |= (v185 & 0x7F) << v180;
              if ((v185 & 0x80) == 0)
              {
                goto LABEL_783;
              }

              v180 += 7;
              ++v184;
              v15 = v181++ > 8;
            }

            while (!v15);
LABEL_471:
            v182 = 0;
            goto LABEL_783;
          }

          v516 = 0;
          v517 = 0;
          v182 = 0;
          v18 = v177 >= v178;
          v518 = v177 - v178;
          if (!v18)
          {
            v518 = 0;
          }

          v519 = (v179 + v178);
          v520 = v178 + 1;
          while (2)
          {
            if (v518)
            {
              v521 = *v519;
              *(a2 + 1) = v520;
              v182 |= (v521 & 0x7F) << v516;
              if (v521 < 0)
              {
                v516 += 7;
                --v518;
                ++v519;
                ++v520;
                v15 = v517++ > 8;
                if (v15)
                {
                  goto LABEL_471;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v182 = 0;
              }
            }

            else
            {
              v182 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_783:
          *(this + 21) = v182;
          goto LABEL_865;
        case 0x2Cu:
          *v7 |= 0x200000uLL;
          v241 = *(a2 + 1);
          v240 = *(a2 + 2);
          v242 = *a2;
          if (v241 <= 0xFFFFFFFFFFFFFFF5 && v241 + 10 <= v240)
          {
            v243 = 0;
            v244 = 0;
            v245 = 0;
            v246 = (v242 + v241);
            v247 = v241 + 1;
            do
            {
              *(a2 + 1) = v247;
              v248 = *v246++;
              v245 |= (v248 & 0x7F) << v243;
              if ((v248 & 0x80) == 0)
              {
                goto LABEL_804;
              }

              v243 += 7;
              ++v247;
              v15 = v244++ > 8;
            }

            while (!v15);
LABEL_527:
            v245 = 0;
            goto LABEL_804;
          }

          v558 = 0;
          v559 = 0;
          v245 = 0;
          v18 = v240 >= v241;
          v560 = v240 - v241;
          if (!v18)
          {
            v560 = 0;
          }

          v561 = (v242 + v241);
          v562 = v241 + 1;
          while (2)
          {
            if (v560)
            {
              v563 = *v561;
              *(a2 + 1) = v562;
              v245 |= (v563 & 0x7F) << v558;
              if (v563 < 0)
              {
                v558 += 7;
                --v560;
                ++v561;
                ++v562;
                v15 = v559++ > 8;
                if (v15)
                {
                  goto LABEL_527;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v245 = 0;
              }
            }

            else
            {
              v245 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_804:
          *(this + 22) = v245;
          goto LABEL_865;
        case 0x2Du:
          *v7 |= 0x8000000000uLL;
          v268 = *(a2 + 1);
          v267 = *(a2 + 2);
          v269 = *a2;
          if (v268 <= 0xFFFFFFFFFFFFFFF5 && v268 + 10 <= v267)
          {
            v270 = 0;
            v271 = 0;
            v272 = 0;
            v273 = (v269 + v268);
            v274 = v268 + 1;
            do
            {
              *(a2 + 1) = v274;
              v275 = *v273++;
              v272 |= (v275 & 0x7F) << v270;
              if ((v275 & 0x80) == 0)
              {
                goto LABEL_816;
              }

              v270 += 7;
              ++v274;
              v15 = v271++ > 8;
            }

            while (!v15);
LABEL_559:
            v272 = 0;
            goto LABEL_816;
          }

          v582 = 0;
          v583 = 0;
          v272 = 0;
          v18 = v267 >= v268;
          v584 = v267 - v268;
          if (!v18)
          {
            v584 = 0;
          }

          v585 = (v269 + v268);
          v586 = v268 + 1;
          while (2)
          {
            if (v584)
            {
              v587 = *v585;
              *(a2 + 1) = v586;
              v272 |= (v587 & 0x7F) << v582;
              if (v587 < 0)
              {
                v582 += 7;
                --v584;
                ++v585;
                ++v586;
                v15 = v583++ > 8;
                if (v15)
                {
                  goto LABEL_559;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v272 = 0;
              }
            }

            else
            {
              v272 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_816:
          *(this + 40) = v272;
          goto LABEL_865;
        case 0x2Eu:
          *v7 |= 0x40000000000uLL;
          v331 = *(a2 + 1);
          v330 = *(a2 + 2);
          v332 = *a2;
          if (v331 <= 0xFFFFFFFFFFFFFFF5 && v331 + 10 <= v330)
          {
            v333 = 0;
            v334 = 0;
            v335 = 0;
            v336 = (v332 + v331);
            v337 = v331 + 1;
            do
            {
              *(a2 + 1) = v337;
              v338 = *v336++;
              v335 |= (v338 & 0x7F) << v333;
              if ((v338 & 0x80) == 0)
              {
                goto LABEL_837;
              }

              v333 += 7;
              ++v337;
              v15 = v334++ > 8;
            }

            while (!v15);
LABEL_615:
            v335 = 0;
            goto LABEL_837;
          }

          v624 = 0;
          v625 = 0;
          v335 = 0;
          v18 = v330 >= v331;
          v626 = v330 - v331;
          if (!v18)
          {
            v626 = 0;
          }

          v627 = (v332 + v331);
          v628 = v331 + 1;
          while (2)
          {
            if (v626)
            {
              v629 = *v627;
              *(a2 + 1) = v628;
              v335 |= (v629 & 0x7F) << v624;
              if (v629 < 0)
              {
                v624 += 7;
                --v626;
                ++v627;
                ++v628;
                v15 = v625++ > 8;
                if (v15)
                {
                  goto LABEL_615;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v335 = 0;
              }
            }

            else
            {
              v335 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_837:
          *(this + 43) = v335;
          goto LABEL_865;
        case 0x2Fu:
          *v7 |= 0x10000000000uLL;
          v340 = *(a2 + 1);
          v339 = *(a2 + 2);
          v341 = *a2;
          if (v340 <= 0xFFFFFFFFFFFFFFF5 && v340 + 10 <= v339)
          {
            v342 = 0;
            v343 = 0;
            v344 = 0;
            v345 = (v341 + v340);
            v346 = v340 + 1;
            do
            {
              *(a2 + 1) = v346;
              v347 = *v345++;
              v344 |= (v347 & 0x7F) << v342;
              if ((v347 & 0x80) == 0)
              {
                goto LABEL_840;
              }

              v342 += 7;
              ++v346;
              v15 = v343++ > 8;
            }

            while (!v15);
LABEL_623:
            v344 = 0;
            goto LABEL_840;
          }

          v630 = 0;
          v631 = 0;
          v344 = 0;
          v18 = v339 >= v340;
          v632 = v339 - v340;
          if (!v18)
          {
            v632 = 0;
          }

          v633 = (v341 + v340);
          v634 = v340 + 1;
          while (2)
          {
            if (v632)
            {
              v635 = *v633;
              *(a2 + 1) = v634;
              v344 |= (v635 & 0x7F) << v630;
              if (v635 < 0)
              {
                v630 += 7;
                --v632;
                ++v633;
                ++v634;
                v15 = v631++ > 8;
                if (v15)
                {
                  goto LABEL_623;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v344 = 0;
              }
            }

            else
            {
              v344 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_840:
          *(this + 41) = v344;
          goto LABEL_865;
        case 0x30u:
          *v7 |= 0x20000000000uLL;
          v133 = *(a2 + 1);
          v132 = *(a2 + 2);
          v134 = *a2;
          if (v133 <= 0xFFFFFFFFFFFFFFF5 && v133 + 10 <= v132)
          {
            v135 = 0;
            v136 = 0;
            v137 = 0;
            v138 = (v134 + v133);
            v139 = v133 + 1;
            do
            {
              *(a2 + 1) = v139;
              v140 = *v138++;
              v137 |= (v140 & 0x7F) << v135;
              if ((v140 & 0x80) == 0)
              {
                goto LABEL_768;
              }

              v135 += 7;
              ++v139;
              v15 = v136++ > 8;
            }

            while (!v15);
LABEL_431:
            v137 = 0;
            goto LABEL_768;
          }

          v486 = 0;
          v487 = 0;
          v137 = 0;
          v18 = v132 >= v133;
          v488 = v132 - v133;
          if (!v18)
          {
            v488 = 0;
          }

          v489 = (v134 + v133);
          v490 = v133 + 1;
          while (2)
          {
            if (v488)
            {
              v491 = *v489;
              *(a2 + 1) = v490;
              v137 |= (v491 & 0x7F) << v486;
              if (v491 < 0)
              {
                v486 += 7;
                --v488;
                ++v489;
                ++v490;
                v15 = v487++ > 8;
                if (v15)
                {
                  goto LABEL_431;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v137 = 0;
              }
            }

            else
            {
              v137 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_768:
          *(this + 42) = v137;
          goto LABEL_865;
        case 0x31u:
          *v7 |= 0x80000000000uLL;
          v349 = *(a2 + 1);
          v348 = *(a2 + 2);
          v350 = *a2;
          if (v349 <= 0xFFFFFFFFFFFFFFF5 && v349 + 10 <= v348)
          {
            v351 = 0;
            v352 = 0;
            v353 = 0;
            v354 = (v350 + v349);
            v355 = v349 + 1;
            do
            {
              *(a2 + 1) = v355;
              v356 = *v354++;
              v353 |= (v356 & 0x7F) << v351;
              if ((v356 & 0x80) == 0)
              {
                goto LABEL_843;
              }

              v351 += 7;
              ++v355;
              v15 = v352++ > 8;
            }

            while (!v15);
LABEL_631:
            v353 = 0;
            goto LABEL_843;
          }

          v636 = 0;
          v637 = 0;
          v353 = 0;
          v18 = v348 >= v349;
          v638 = v348 - v349;
          if (!v18)
          {
            v638 = 0;
          }

          v639 = (v350 + v349);
          v640 = v349 + 1;
          while (2)
          {
            if (v638)
            {
              v641 = *v639;
              *(a2 + 1) = v640;
              v353 |= (v641 & 0x7F) << v636;
              if (v641 < 0)
              {
                v636 += 7;
                --v638;
                ++v639;
                ++v640;
                v15 = v637++ > 8;
                if (v15)
                {
                  goto LABEL_631;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v353 = 0;
              }
            }

            else
            {
              v353 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_843:
          *(this + 44) = v353;
          goto LABEL_865;
        case 0x32u:
          *v7 |= 0x100000000000uLL;
          v160 = *(a2 + 1);
          v159 = *(a2 + 2);
          v161 = *a2;
          if (v160 <= 0xFFFFFFFFFFFFFFF5 && v160 + 10 <= v159)
          {
            v162 = 0;
            v163 = 0;
            v164 = 0;
            v165 = (v161 + v160);
            v166 = v160 + 1;
            do
            {
              *(a2 + 1) = v166;
              v167 = *v165++;
              v164 |= (v167 & 0x7F) << v162;
              if ((v167 & 0x80) == 0)
              {
                goto LABEL_777;
              }

              v162 += 7;
              ++v166;
              v15 = v163++ > 8;
            }

            while (!v15);
LABEL_455:
            LODWORD(v164) = 0;
            goto LABEL_777;
          }

          v504 = 0;
          v505 = 0;
          v164 = 0;
          v18 = v159 >= v160;
          v506 = v159 - v160;
          if (!v18)
          {
            v506 = 0;
          }

          v507 = (v161 + v160);
          v508 = v160 + 1;
          while (2)
          {
            if (v506)
            {
              v509 = *v507;
              *(a2 + 1) = v508;
              v164 |= (v509 & 0x7F) << v504;
              if (v509 < 0)
              {
                v504 += 7;
                --v506;
                ++v507;
                ++v508;
                v15 = v505++ > 8;
                if (v15)
                {
                  goto LABEL_455;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v164) = 0;
              }
            }

            else
            {
              LODWORD(v164) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_777:
          *(this + 90) = v164;
          goto LABEL_865;
        case 0x33u:
          *v7 |= 0x1000000uLL;
          v250 = *(a2 + 1);
          v249 = *(a2 + 2);
          v251 = *a2;
          if (v250 <= 0xFFFFFFFFFFFFFFF5 && v250 + 10 <= v249)
          {
            v252 = 0;
            v253 = 0;
            v254 = 0;
            v255 = (v251 + v250);
            v256 = v250 + 1;
            do
            {
              *(a2 + 1) = v256;
              v257 = *v255++;
              v254 |= (v257 & 0x7F) << v252;
              if ((v257 & 0x80) == 0)
              {
                goto LABEL_807;
              }

              v252 += 7;
              ++v256;
              v15 = v253++ > 8;
            }

            while (!v15);
LABEL_535:
            v254 = 0;
            goto LABEL_807;
          }

          v564 = 0;
          v565 = 0;
          v254 = 0;
          v18 = v249 >= v250;
          v566 = v249 - v250;
          if (!v18)
          {
            v566 = 0;
          }

          v567 = (v251 + v250);
          v568 = v250 + 1;
          while (2)
          {
            if (v566)
            {
              v569 = *v567;
              *(a2 + 1) = v568;
              v254 |= (v569 & 0x7F) << v564;
              if (v569 < 0)
              {
                v564 += 7;
                --v566;
                ++v567;
                ++v568;
                v15 = v565++ > 8;
                if (v15)
                {
                  goto LABEL_535;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v254 = 0;
              }
            }

            else
            {
              v254 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_807:
          *(this + 25) = v254;
          goto LABEL_865;
        case 0x34u:
          *v7 |= 0x8000000uLL;
          v223 = *(a2 + 1);
          v222 = *(a2 + 2);
          v224 = *a2;
          if (v223 <= 0xFFFFFFFFFFFFFFF5 && v223 + 10 <= v222)
          {
            v225 = 0;
            v226 = 0;
            v227 = 0;
            v228 = (v224 + v223);
            v229 = v223 + 1;
            do
            {
              *(a2 + 1) = v229;
              v230 = *v228++;
              v227 |= (v230 & 0x7F) << v225;
              if ((v230 & 0x80) == 0)
              {
                goto LABEL_798;
              }

              v225 += 7;
              ++v229;
              v15 = v226++ > 8;
            }

            while (!v15);
LABEL_511:
            v227 = 0;
            goto LABEL_798;
          }

          v546 = 0;
          v547 = 0;
          v227 = 0;
          v18 = v222 >= v223;
          v548 = v222 - v223;
          if (!v18)
          {
            v548 = 0;
          }

          v549 = (v224 + v223);
          v550 = v223 + 1;
          while (2)
          {
            if (v548)
            {
              v551 = *v549;
              *(a2 + 1) = v550;
              v227 |= (v551 & 0x7F) << v546;
              if (v551 < 0)
              {
                v546 += 7;
                --v548;
                ++v549;
                ++v550;
                v15 = v547++ > 8;
                if (v15)
                {
                  goto LABEL_511;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v227 = 0;
              }
            }

            else
            {
              v227 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_798:
          *(this + 28) = v227;
          goto LABEL_865;
        case 0x35u:
          *v7 |= 0x2000000uLL;
          v115 = *(a2 + 1);
          v114 = *(a2 + 2);
          v116 = *a2;
          if (v115 <= 0xFFFFFFFFFFFFFFF5 && v115 + 10 <= v114)
          {
            v117 = 0;
            v118 = 0;
            v119 = 0;
            v120 = (v116 + v115);
            v121 = v115 + 1;
            do
            {
              *(a2 + 1) = v121;
              v122 = *v120++;
              v119 |= (v122 & 0x7F) << v117;
              if ((v122 & 0x80) == 0)
              {
                goto LABEL_762;
              }

              v117 += 7;
              ++v121;
              v15 = v118++ > 8;
            }

            while (!v15);
LABEL_415:
            v119 = 0;
            goto LABEL_762;
          }

          v474 = 0;
          v475 = 0;
          v119 = 0;
          v18 = v114 >= v115;
          v476 = v114 - v115;
          if (!v18)
          {
            v476 = 0;
          }

          v477 = (v116 + v115);
          v478 = v115 + 1;
          while (2)
          {
            if (v476)
            {
              v479 = *v477;
              *(a2 + 1) = v478;
              v119 |= (v479 & 0x7F) << v474;
              if (v479 < 0)
              {
                v474 += 7;
                --v476;
                ++v477;
                ++v478;
                v15 = v475++ > 8;
                if (v15)
                {
                  goto LABEL_415;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v119 = 0;
              }
            }

            else
            {
              v119 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_762:
          *(this + 26) = v119;
          goto LABEL_865;
        case 0x36u:
          *v7 |= 0x4000000uLL;
          v313 = *(a2 + 1);
          v312 = *(a2 + 2);
          v314 = *a2;
          if (v313 <= 0xFFFFFFFFFFFFFFF5 && v313 + 10 <= v312)
          {
            v315 = 0;
            v316 = 0;
            v317 = 0;
            v318 = (v314 + v313);
            v319 = v313 + 1;
            do
            {
              *(a2 + 1) = v319;
              v320 = *v318++;
              v317 |= (v320 & 0x7F) << v315;
              if ((v320 & 0x80) == 0)
              {
                goto LABEL_831;
              }

              v315 += 7;
              ++v319;
              v15 = v316++ > 8;
            }

            while (!v15);
LABEL_599:
            v317 = 0;
            goto LABEL_831;
          }

          v612 = 0;
          v613 = 0;
          v317 = 0;
          v18 = v312 >= v313;
          v614 = v312 - v313;
          if (!v18)
          {
            v614 = 0;
          }

          v615 = (v314 + v313);
          v616 = v313 + 1;
          while (2)
          {
            if (v614)
            {
              v617 = *v615;
              *(a2 + 1) = v616;
              v317 |= (v617 & 0x7F) << v612;
              if (v617 < 0)
              {
                v612 += 7;
                --v614;
                ++v615;
                ++v616;
                v15 = v613++ > 8;
                if (v15)
                {
                  goto LABEL_599;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v317 = 0;
              }
            }

            else
            {
              v317 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_831:
          *(this + 27) = v317;
          goto LABEL_865;
        case 0x37u:
          *v7 |= 0x400000uLL;
          v322 = *(a2 + 1);
          v321 = *(a2 + 2);
          v323 = *a2;
          if (v322 <= 0xFFFFFFFFFFFFFFF5 && v322 + 10 <= v321)
          {
            v324 = 0;
            v325 = 0;
            v326 = 0;
            v327 = (v323 + v322);
            v328 = v322 + 1;
            do
            {
              *(a2 + 1) = v328;
              v329 = *v327++;
              v326 |= (v329 & 0x7F) << v324;
              if ((v329 & 0x80) == 0)
              {
                goto LABEL_834;
              }

              v324 += 7;
              ++v328;
              v15 = v325++ > 8;
            }

            while (!v15);
LABEL_607:
            v326 = 0;
            goto LABEL_834;
          }

          v618 = 0;
          v619 = 0;
          v326 = 0;
          v18 = v321 >= v322;
          v620 = v321 - v322;
          if (!v18)
          {
            v620 = 0;
          }

          v621 = (v323 + v322);
          v622 = v322 + 1;
          while (2)
          {
            if (v620)
            {
              v623 = *v621;
              *(a2 + 1) = v622;
              v326 |= (v623 & 0x7F) << v618;
              if (v623 < 0)
              {
                v618 += 7;
                --v620;
                ++v621;
                ++v622;
                v15 = v619++ > 8;
                if (v15)
                {
                  goto LABEL_607;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v326 = 0;
              }
            }

            else
            {
              v326 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_834:
          *(this + 23) = v326;
          goto LABEL_865;
        case 0x38u:
          *v7 |= 0x800000uLL;
          v376 = *(a2 + 1);
          v375 = *(a2 + 2);
          v377 = *a2;
          if (v376 <= 0xFFFFFFFFFFFFFFF5 && v376 + 10 <= v375)
          {
            v378 = 0;
            v379 = 0;
            v380 = 0;
            v381 = (v377 + v376);
            v382 = v376 + 1;
            do
            {
              *(a2 + 1) = v382;
              v383 = *v381++;
              v380 |= (v383 & 0x7F) << v378;
              if ((v383 & 0x80) == 0)
              {
                goto LABEL_852;
              }

              v378 += 7;
              ++v382;
              v15 = v379++ > 8;
            }

            while (!v15);
LABEL_655:
            v380 = 0;
            goto LABEL_852;
          }

          v654 = 0;
          v655 = 0;
          v380 = 0;
          v18 = v375 >= v376;
          v656 = v375 - v376;
          if (!v18)
          {
            v656 = 0;
          }

          v657 = (v377 + v376);
          v658 = v376 + 1;
          while (2)
          {
            if (v656)
            {
              v659 = *v657;
              *(a2 + 1) = v658;
              v380 |= (v659 & 0x7F) << v654;
              if (v659 < 0)
              {
                v654 += 7;
                --v656;
                ++v657;
                ++v658;
                v15 = v655++ > 8;
                if (v15)
                {
                  goto LABEL_655;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v380 = 0;
              }
            }

            else
            {
              v380 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_852:
          *(this + 24) = v380;
          goto LABEL_865;
        case 0x3Bu:
          *v7 |= 0x20uLL;
          v367 = *(a2 + 1);
          v366 = *(a2 + 2);
          v368 = *a2;
          if (v367 <= 0xFFFFFFFFFFFFFFF5 && v367 + 10 <= v366)
          {
            v369 = 0;
            v370 = 0;
            v371 = 0;
            v372 = (v368 + v367);
            v373 = v367 + 1;
            do
            {
              *(a2 + 1) = v373;
              v374 = *v372++;
              v371 |= (v374 & 0x7F) << v369;
              if ((v374 & 0x80) == 0)
              {
                goto LABEL_849;
              }

              v369 += 7;
              ++v373;
              v15 = v370++ > 8;
            }

            while (!v15);
LABEL_647:
            v371 = 0;
            goto LABEL_849;
          }

          v648 = 0;
          v649 = 0;
          v371 = 0;
          v18 = v366 >= v367;
          v650 = v366 - v367;
          if (!v18)
          {
            v650 = 0;
          }

          v651 = (v368 + v367);
          v652 = v367 + 1;
          while (2)
          {
            if (v650)
            {
              v653 = *v651;
              *(a2 + 1) = v652;
              v371 |= (v653 & 0x7F) << v648;
              if (v653 < 0)
              {
                v648 += 7;
                --v650;
                ++v651;
                ++v652;
                v15 = v649++ > 8;
                if (v15)
                {
                  goto LABEL_647;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v371 = 0;
              }
            }

            else
            {
              v371 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_849:
          *(this + 6) = v371;
          goto LABEL_865;
        case 0x3Cu:
          *v7 |= 8uLL;
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
                goto LABEL_753;
              }

              v90 += 7;
              ++v94;
              v15 = v91++ > 8;
            }

            while (!v15);
LABEL_391:
            v92 = 0;
            goto LABEL_753;
          }

          v456 = 0;
          v457 = 0;
          v92 = 0;
          v18 = v87 >= v88;
          v458 = v87 - v88;
          if (!v18)
          {
            v458 = 0;
          }

          v459 = (v89 + v88);
          v460 = v88 + 1;
          while (2)
          {
            if (v458)
            {
              v461 = *v459;
              *(a2 + 1) = v460;
              v92 |= (v461 & 0x7F) << v456;
              if (v461 < 0)
              {
                v456 += 7;
                --v458;
                ++v459;
                ++v460;
                v15 = v457++ > 8;
                if (v15)
                {
                  goto LABEL_391;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v92 = 0;
              }
            }

            else
            {
              v92 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_753:
          *(this + 4) = v92;
          goto LABEL_865;
        case 0x3Du:
          *v7 |= 1uLL;
          v232 = *(a2 + 1);
          v231 = *(a2 + 2);
          v233 = *a2;
          if (v232 <= 0xFFFFFFFFFFFFFFF5 && v232 + 10 <= v231)
          {
            v234 = 0;
            v235 = 0;
            v236 = 0;
            v237 = (v233 + v232);
            v238 = v232 + 1;
            do
            {
              *(a2 + 1) = v238;
              v239 = *v237++;
              v236 |= (v239 & 0x7F) << v234;
              if ((v239 & 0x80) == 0)
              {
                goto LABEL_801;
              }

              v234 += 7;
              ++v238;
              v15 = v235++ > 8;
            }

            while (!v15);
LABEL_519:
            v236 = 0;
            goto LABEL_801;
          }

          v552 = 0;
          v553 = 0;
          v236 = 0;
          v18 = v231 >= v232;
          v554 = v231 - v232;
          if (!v18)
          {
            v554 = 0;
          }

          v555 = (v233 + v232);
          v556 = v232 + 1;
          while (2)
          {
            if (v554)
            {
              v557 = *v555;
              *(a2 + 1) = v556;
              v236 |= (v557 & 0x7F) << v552;
              if (v557 < 0)
              {
                v552 += 7;
                --v554;
                ++v555;
                ++v556;
                v15 = v553++ > 8;
                if (v15)
                {
                  goto LABEL_519;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v236 = 0;
              }
            }

            else
            {
              v236 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_801:
          *(this + 1) = v236;
          goto LABEL_865;
        case 0x3Eu:
          *v7 |= 0x40uLL;
          v394 = *(a2 + 1);
          v393 = *(a2 + 2);
          v395 = *a2;
          if (v394 <= 0xFFFFFFFFFFFFFFF5 && v394 + 10 <= v393)
          {
            v396 = 0;
            v397 = 0;
            v398 = 0;
            v399 = (v395 + v394);
            v400 = v394 + 1;
            do
            {
              *(a2 + 1) = v400;
              v401 = *v399++;
              v398 |= (v401 & 0x7F) << v396;
              if ((v401 & 0x80) == 0)
              {
                goto LABEL_858;
              }

              v396 += 7;
              ++v400;
              v15 = v397++ > 8;
            }

            while (!v15);
LABEL_671:
            v398 = 0;
            goto LABEL_858;
          }

          v666 = 0;
          v667 = 0;
          v398 = 0;
          v18 = v393 >= v394;
          v668 = v393 - v394;
          if (!v18)
          {
            v668 = 0;
          }

          v669 = (v395 + v394);
          v670 = v394 + 1;
          while (2)
          {
            if (v668)
            {
              v671 = *v669;
              *(a2 + 1) = v670;
              v398 |= (v671 & 0x7F) << v666;
              if (v671 < 0)
              {
                v666 += 7;
                --v668;
                ++v669;
                ++v670;
                v15 = v667++ > 8;
                if (v15)
                {
                  goto LABEL_671;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v398 = 0;
              }
            }

            else
            {
              v398 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_858:
          *(this + 7) = v398;
          goto LABEL_865;
        case 0x3Fu:
          *v7 |= 0x100uLL;
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
                goto LABEL_759;
              }

              v108 += 7;
              ++v112;
              v15 = v109++ > 8;
            }

            while (!v15);
LABEL_407:
            v110 = 0;
            goto LABEL_759;
          }

          v468 = 0;
          v469 = 0;
          v110 = 0;
          v18 = v105 >= v106;
          v470 = v105 - v106;
          if (!v18)
          {
            v470 = 0;
          }

          v471 = (v107 + v106);
          v472 = v106 + 1;
          while (2)
          {
            if (v470)
            {
              v473 = *v471;
              *(a2 + 1) = v472;
              v110 |= (v473 & 0x7F) << v468;
              if (v473 < 0)
              {
                v468 += 7;
                --v470;
                ++v471;
                ++v472;
                v15 = v469++ > 8;
                if (v15)
                {
                  goto LABEL_407;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v110 = 0;
              }
            }

            else
            {
              v110 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_759:
          *(this + 9) = v110;
          goto LABEL_865;
        case 0x40u:
          *v7 |= 0x10uLL;
          v214 = *(a2 + 1);
          v213 = *(a2 + 2);
          v215 = *a2;
          if (v214 <= 0xFFFFFFFFFFFFFFF5 && v214 + 10 <= v213)
          {
            v216 = 0;
            v217 = 0;
            v218 = 0;
            v219 = (v215 + v214);
            v220 = v214 + 1;
            do
            {
              *(a2 + 1) = v220;
              v221 = *v219++;
              v218 |= (v221 & 0x7F) << v216;
              if ((v221 & 0x80) == 0)
              {
                goto LABEL_795;
              }

              v216 += 7;
              ++v220;
              v15 = v217++ > 8;
            }

            while (!v15);
LABEL_503:
            v218 = 0;
            goto LABEL_795;
          }

          v540 = 0;
          v541 = 0;
          v218 = 0;
          v18 = v213 >= v214;
          v542 = v213 - v214;
          if (!v18)
          {
            v542 = 0;
          }

          v543 = (v215 + v214);
          v544 = v214 + 1;
          while (2)
          {
            if (v542)
            {
              v545 = *v543;
              *(a2 + 1) = v544;
              v218 |= (v545 & 0x7F) << v540;
              if (v545 < 0)
              {
                v540 += 7;
                --v542;
                ++v543;
                ++v544;
                v15 = v541++ > 8;
                if (v15)
                {
                  goto LABEL_503;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v218 = 0;
              }
            }

            else
            {
              v218 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_795:
          *(this + 5) = v218;
          goto LABEL_865;
        case 0x41u:
          *v7 |= 0x200uLL;
          v142 = *(a2 + 1);
          v141 = *(a2 + 2);
          v143 = *a2;
          if (v142 <= 0xFFFFFFFFFFFFFFF5 && v142 + 10 <= v141)
          {
            v144 = 0;
            v145 = 0;
            v146 = 0;
            v147 = (v143 + v142);
            v148 = v142 + 1;
            do
            {
              *(a2 + 1) = v148;
              v149 = *v147++;
              v146 |= (v149 & 0x7F) << v144;
              if ((v149 & 0x80) == 0)
              {
                goto LABEL_771;
              }

              v144 += 7;
              ++v148;
              v15 = v145++ > 8;
            }

            while (!v15);
LABEL_439:
            v146 = 0;
            goto LABEL_771;
          }

          v492 = 0;
          v493 = 0;
          v146 = 0;
          v18 = v141 >= v142;
          v494 = v141 - v142;
          if (!v18)
          {
            v494 = 0;
          }

          v495 = (v143 + v142);
          v496 = v142 + 1;
          while (2)
          {
            if (v494)
            {
              v497 = *v495;
              *(a2 + 1) = v496;
              v146 |= (v497 & 0x7F) << v492;
              if (v497 < 0)
              {
                v492 += 7;
                --v494;
                ++v495;
                ++v496;
                v15 = v493++ > 8;
                if (v15)
                {
                  goto LABEL_439;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v146 = 0;
              }
            }

            else
            {
              v146 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_771:
          *(this + 10) = v146;
          goto LABEL_865;
        case 0x42u:
          *v7 |= 0x400uLL;
          v286 = *(a2 + 1);
          v285 = *(a2 + 2);
          v287 = *a2;
          if (v286 <= 0xFFFFFFFFFFFFFFF5 && v286 + 10 <= v285)
          {
            v288 = 0;
            v289 = 0;
            v290 = 0;
            v291 = (v287 + v286);
            v292 = v286 + 1;
            do
            {
              *(a2 + 1) = v292;
              v293 = *v291++;
              v290 |= (v293 & 0x7F) << v288;
              if ((v293 & 0x80) == 0)
              {
                goto LABEL_822;
              }

              v288 += 7;
              ++v292;
              v15 = v289++ > 8;
            }

            while (!v15);
LABEL_575:
            v290 = 0;
            goto LABEL_822;
          }

          v594 = 0;
          v595 = 0;
          v290 = 0;
          v18 = v285 >= v286;
          v596 = v285 - v286;
          if (!v18)
          {
            v596 = 0;
          }

          v597 = (v287 + v286);
          v598 = v286 + 1;
          while (2)
          {
            if (v596)
            {
              v599 = *v597;
              *(a2 + 1) = v598;
              v290 |= (v599 & 0x7F) << v594;
              if (v599 < 0)
              {
                v594 += 7;
                --v596;
                ++v597;
                ++v598;
                v15 = v595++ > 8;
                if (v15)
                {
                  goto LABEL_575;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v290 = 0;
              }
            }

            else
            {
              v290 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_822:
          *(this + 11) = v290;
          goto LABEL_865;
        case 0x43u:
          *v7 |= 0x800uLL;
          v124 = *(a2 + 1);
          v123 = *(a2 + 2);
          v125 = *a2;
          if (v124 <= 0xFFFFFFFFFFFFFFF5 && v124 + 10 <= v123)
          {
            v126 = 0;
            v127 = 0;
            v128 = 0;
            v129 = (v125 + v124);
            v130 = v124 + 1;
            do
            {
              *(a2 + 1) = v130;
              v131 = *v129++;
              v128 |= (v131 & 0x7F) << v126;
              if ((v131 & 0x80) == 0)
              {
                goto LABEL_765;
              }

              v126 += 7;
              ++v130;
              v15 = v127++ > 8;
            }

            while (!v15);
LABEL_423:
            v128 = 0;
            goto LABEL_765;
          }

          v480 = 0;
          v481 = 0;
          v128 = 0;
          v18 = v123 >= v124;
          v482 = v123 - v124;
          if (!v18)
          {
            v482 = 0;
          }

          v483 = (v125 + v124);
          v484 = v124 + 1;
          while (2)
          {
            if (v482)
            {
              v485 = *v483;
              *(a2 + 1) = v484;
              v128 |= (v485 & 0x7F) << v480;
              if (v485 < 0)
              {
                v480 += 7;
                --v482;
                ++v483;
                ++v484;
                v15 = v481++ > 8;
                if (v15)
                {
                  goto LABEL_423;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v128 = 0;
              }
            }

            else
            {
              v128 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_765:
          *(this + 12) = v128;
          goto LABEL_865;
        case 0x44u:
          *v7 |= 0x4000uLL;
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
                goto LABEL_750;
              }

              v80 += 7;
              ++v84;
              v15 = v81++ > 8;
            }

            while (!v15);
LABEL_383:
            v82 = 0;
            goto LABEL_750;
          }

          v450 = 0;
          v451 = 0;
          v82 = 0;
          v18 = v77 >= v78;
          v452 = v77 - v78;
          if (!v18)
          {
            v452 = 0;
          }

          v453 = (v79 + v78);
          v454 = v78 + 1;
          while (2)
          {
            if (v452)
            {
              v455 = *v453;
              *(a2 + 1) = v454;
              v82 |= (v455 & 0x7F) << v450;
              if (v455 < 0)
              {
                v450 += 7;
                --v452;
                ++v453;
                ++v454;
                v15 = v451++ > 8;
                if (v15)
                {
                  goto LABEL_383;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v82 = 0;
              }
            }

            else
            {
              v82 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_750:
          *(this + 15) = v82;
          goto LABEL_865;
        case 0x45u:
          *v7 |= 2uLL;
          v403 = *(a2 + 1);
          v402 = *(a2 + 2);
          v404 = *a2;
          if (v403 <= 0xFFFFFFFFFFFFFFF5 && v403 + 10 <= v402)
          {
            v405 = 0;
            v406 = 0;
            v407 = 0;
            v408 = (v404 + v403);
            v409 = v403 + 1;
            do
            {
              *(a2 + 1) = v409;
              v410 = *v408++;
              v407 |= (v410 & 0x7F) << v405;
              if ((v410 & 0x80) == 0)
              {
                goto LABEL_861;
              }

              v405 += 7;
              ++v409;
              v15 = v406++ > 8;
            }

            while (!v15);
LABEL_679:
            v407 = 0;
            goto LABEL_861;
          }

          v672 = 0;
          v673 = 0;
          v407 = 0;
          v18 = v402 >= v403;
          v674 = v402 - v403;
          if (!v18)
          {
            v674 = 0;
          }

          v675 = (v404 + v403);
          v676 = v403 + 1;
          while (2)
          {
            if (v674)
            {
              v677 = *v675;
              *(a2 + 1) = v676;
              v407 |= (v677 & 0x7F) << v672;
              if (v677 < 0)
              {
                v672 += 7;
                --v674;
                ++v675;
                ++v676;
                v15 = v673++ > 8;
                if (v15)
                {
                  goto LABEL_679;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v407 = 0;
              }
            }

            else
            {
              v407 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_861:
          *(this + 2) = v407;
          goto LABEL_865;
        case 0x46u:
          *v7 |= 0x8000uLL;
          v169 = *(a2 + 1);
          v168 = *(a2 + 2);
          v170 = *a2;
          if (v169 <= 0xFFFFFFFFFFFFFFF5 && v169 + 10 <= v168)
          {
            v171 = 0;
            v172 = 0;
            v173 = 0;
            v174 = (v170 + v169);
            v175 = v169 + 1;
            do
            {
              *(a2 + 1) = v175;
              v176 = *v174++;
              v173 |= (v176 & 0x7F) << v171;
              if ((v176 & 0x80) == 0)
              {
                goto LABEL_780;
              }

              v171 += 7;
              ++v175;
              v15 = v172++ > 8;
            }

            while (!v15);
LABEL_463:
            v173 = 0;
            goto LABEL_780;
          }

          v510 = 0;
          v511 = 0;
          v173 = 0;
          v18 = v168 >= v169;
          v512 = v168 - v169;
          if (!v18)
          {
            v512 = 0;
          }

          v513 = (v170 + v169);
          v514 = v169 + 1;
          while (2)
          {
            if (v512)
            {
              v515 = *v513;
              *(a2 + 1) = v514;
              v173 |= (v515 & 0x7F) << v510;
              if (v515 < 0)
              {
                v510 += 7;
                --v512;
                ++v513;
                ++v514;
                v15 = v511++ > 8;
                if (v15)
                {
                  goto LABEL_463;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v173 = 0;
              }
            }

            else
            {
              v173 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_780:
          *(this + 16) = v173;
          goto LABEL_865;
        case 0x47u:
          *v7 |= 0x800000000uLL;
          v196 = *(a2 + 1);
          v195 = *(a2 + 2);
          v197 = *a2;
          if (v196 <= 0xFFFFFFFFFFFFFFF5 && v196 + 10 <= v195)
          {
            v198 = 0;
            v199 = 0;
            v200 = 0;
            v201 = (v197 + v196);
            v202 = v196 + 1;
            do
            {
              *(a2 + 1) = v202;
              v203 = *v201++;
              v200 |= (v203 & 0x7F) << v198;
              if ((v203 & 0x80) == 0)
              {
                goto LABEL_789;
              }

              v198 += 7;
              ++v202;
              v15 = v199++ > 8;
            }

            while (!v15);
LABEL_487:
            v200 = 0;
            goto LABEL_789;
          }

          v528 = 0;
          v529 = 0;
          v200 = 0;
          v18 = v195 >= v196;
          v530 = v195 - v196;
          if (!v18)
          {
            v530 = 0;
          }

          v531 = (v197 + v196);
          v532 = v196 + 1;
          while (2)
          {
            if (v530)
            {
              v533 = *v531;
              *(a2 + 1) = v532;
              v200 |= (v533 & 0x7F) << v528;
              if (v533 < 0)
              {
                v528 += 7;
                --v530;
                ++v531;
                ++v532;
                v15 = v529++ > 8;
                if (v15)
                {
                  goto LABEL_487;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v200 = 0;
              }
            }

            else
            {
              v200 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_789:
          *(this + 36) = v200;
          goto LABEL_865;
        case 0x48u:
          *v7 |= 0x400000000uLL;
          v304 = *(a2 + 1);
          v303 = *(a2 + 2);
          v305 = *a2;
          if (v304 <= 0xFFFFFFFFFFFFFFF5 && v304 + 10 <= v303)
          {
            v306 = 0;
            v307 = 0;
            v308 = 0;
            v309 = (v305 + v304);
            v310 = v304 + 1;
            do
            {
              *(a2 + 1) = v310;
              v311 = *v309++;
              v308 |= (v311 & 0x7F) << v306;
              if ((v311 & 0x80) == 0)
              {
                goto LABEL_828;
              }

              v306 += 7;
              ++v310;
              v15 = v307++ > 8;
            }

            while (!v15);
LABEL_591:
            v308 = 0;
            goto LABEL_828;
          }

          v606 = 0;
          v607 = 0;
          v308 = 0;
          v18 = v303 >= v304;
          v608 = v303 - v304;
          if (!v18)
          {
            v608 = 0;
          }

          v609 = (v305 + v304);
          v610 = v304 + 1;
          while (2)
          {
            if (v608)
            {
              v611 = *v609;
              *(a2 + 1) = v610;
              v308 |= (v611 & 0x7F) << v606;
              if (v611 < 0)
              {
                v606 += 7;
                --v608;
                ++v609;
                ++v610;
                v15 = v607++ > 8;
                if (v15)
                {
                  goto LABEL_591;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v308 = 0;
              }
            }

            else
            {
              v308 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_828:
          *(this + 35) = v308;
          goto LABEL_865;
        case 0x49u:
          *v7 |= 0x200000000uLL;
          v205 = *(a2 + 1);
          v204 = *(a2 + 2);
          v206 = *a2;
          if (v205 <= 0xFFFFFFFFFFFFFFF5 && v205 + 10 <= v204)
          {
            v207 = 0;
            v208 = 0;
            v209 = 0;
            v210 = (v206 + v205);
            v211 = v205 + 1;
            do
            {
              *(a2 + 1) = v211;
              v212 = *v210++;
              v209 |= (v212 & 0x7F) << v207;
              if ((v212 & 0x80) == 0)
              {
                goto LABEL_792;
              }

              v207 += 7;
              ++v211;
              v15 = v208++ > 8;
            }

            while (!v15);
LABEL_495:
            v209 = 0;
            goto LABEL_792;
          }

          v534 = 0;
          v535 = 0;
          v209 = 0;
          v18 = v204 >= v205;
          v536 = v204 - v205;
          if (!v18)
          {
            v536 = 0;
          }

          v537 = (v206 + v205);
          v538 = v205 + 1;
          while (2)
          {
            if (v536)
            {
              v539 = *v537;
              *(a2 + 1) = v538;
              v209 |= (v539 & 0x7F) << v534;
              if (v539 < 0)
              {
                v534 += 7;
                --v536;
                ++v537;
                ++v538;
                v15 = v535++ > 8;
                if (v15)
                {
                  goto LABEL_495;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v209 = 0;
              }
            }

            else
            {
              v209 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_792:
          *(this + 34) = v209;
          goto LABEL_865;
        case 0x4Au:
          *v7 |= &_mh_execute_header;
          v42 = *(a2 + 1);
          v41 = *(a2 + 2);
          v43 = *a2;
          if (v42 <= 0xFFFFFFFFFFFFFFF5 && v42 + 10 <= v41)
          {
            v44 = 0;
            v45 = 0;
            v46 = 0;
            v47 = (v43 + v42);
            v48 = v42 + 1;
            do
            {
              *(a2 + 1) = v48;
              v49 = *v47++;
              v46 |= (v49 & 0x7F) << v44;
              if ((v49 & 0x80) == 0)
              {
                goto LABEL_738;
              }

              v44 += 7;
              ++v48;
              v15 = v45++ > 8;
            }

            while (!v15);
LABEL_351:
            v46 = 0;
            goto LABEL_738;
          }

          v426 = 0;
          v427 = 0;
          v46 = 0;
          v18 = v41 >= v42;
          v428 = v41 - v42;
          if (!v18)
          {
            v428 = 0;
          }

          v429 = (v43 + v42);
          v430 = v42 + 1;
          while (2)
          {
            if (v428)
            {
              v431 = *v429;
              *(a2 + 1) = v430;
              v46 |= (v431 & 0x7F) << v426;
              if (v431 < 0)
              {
                v426 += 7;
                --v428;
                ++v429;
                ++v430;
                v15 = v427++ > 8;
                if (v15)
                {
                  goto LABEL_351;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v46 = 0;
              }
            }

            else
            {
              v46 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_738:
          *(this + 33) = v46;
          goto LABEL_865;
        case 0x51u:
          *v7 |= 0x20000000uLL;
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
                goto LABEL_756;
              }

              v99 += 7;
              ++v103;
              v15 = v100++ > 8;
            }

            while (!v15);
LABEL_399:
            v101 = 0;
            goto LABEL_756;
          }

          v462 = 0;
          v463 = 0;
          v101 = 0;
          v18 = v96 >= v97;
          v464 = v96 - v97;
          if (!v18)
          {
            v464 = 0;
          }

          v465 = (v98 + v97);
          v466 = v97 + 1;
          while (2)
          {
            if (v464)
            {
              v467 = *v465;
              *(a2 + 1) = v466;
              v101 |= (v467 & 0x7F) << v462;
              if (v467 < 0)
              {
                v462 += 7;
                --v464;
                ++v465;
                ++v466;
                v15 = v463++ > 8;
                if (v15)
                {
                  goto LABEL_399;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v101 = 0;
              }
            }

            else
            {
              v101 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_756:
          *(this + 30) = v101;
          goto LABEL_865;
        case 0x52u:
          *v7 |= 0x10000000uLL;
          v358 = *(a2 + 1);
          v357 = *(a2 + 2);
          v359 = *a2;
          if (v358 <= 0xFFFFFFFFFFFFFFF5 && v358 + 10 <= v357)
          {
            v360 = 0;
            v361 = 0;
            v362 = 0;
            v363 = (v359 + v358);
            v364 = v358 + 1;
            do
            {
              *(a2 + 1) = v364;
              v365 = *v363++;
              v362 |= (v365 & 0x7F) << v360;
              if ((v365 & 0x80) == 0)
              {
                goto LABEL_846;
              }

              v360 += 7;
              ++v364;
              v15 = v361++ > 8;
            }

            while (!v15);
LABEL_639:
            v362 = 0;
            goto LABEL_846;
          }

          v642 = 0;
          v643 = 0;
          v362 = 0;
          v18 = v357 >= v358;
          v644 = v357 - v358;
          if (!v18)
          {
            v644 = 0;
          }

          v645 = (v359 + v358);
          v646 = v358 + 1;
          while (2)
          {
            if (v644)
            {
              v647 = *v645;
              *(a2 + 1) = v646;
              v362 |= (v647 & 0x7F) << v642;
              if (v647 < 0)
              {
                v642 += 7;
                --v644;
                ++v645;
                ++v646;
                v15 = v643++ > 8;
                if (v15)
                {
                  goto LABEL_639;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v362 = 0;
              }
            }

            else
            {
              v362 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_846:
          *(this + 29) = v362;
          goto LABEL_865;
        case 0x53u:
          *v7 |= 0x2000uLL;
          v412 = *(a2 + 1);
          v411 = *(a2 + 2);
          v413 = *a2;
          if (v412 <= 0xFFFFFFFFFFFFFFF5 && v412 + 10 <= v411)
          {
            v414 = 0;
            v415 = 0;
            v416 = 0;
            v417 = (v413 + v412);
            v418 = v412 + 1;
            do
            {
              *(a2 + 1) = v418;
              v419 = *v417++;
              v416 |= (v419 & 0x7F) << v414;
              if ((v419 & 0x80) == 0)
              {
                goto LABEL_864;
              }

              v414 += 7;
              ++v418;
              v15 = v415++ > 8;
            }

            while (!v15);
LABEL_687:
            v416 = 0;
            goto LABEL_864;
          }

          v678 = 0;
          v679 = 0;
          v416 = 0;
          v18 = v411 >= v412;
          v680 = v411 - v412;
          if (!v18)
          {
            v680 = 0;
          }

          v681 = (v413 + v412);
          v682 = v412 + 1;
          while (2)
          {
            if (v680)
            {
              v683 = *v681;
              *(a2 + 1) = v682;
              v416 |= (v683 & 0x7F) << v678;
              if (v683 < 0)
              {
                v678 += 7;
                --v680;
                ++v681;
                ++v682;
                v15 = v679++ > 8;
                if (v15)
                {
                  goto LABEL_687;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v416 = 0;
              }
            }

            else
            {
              v416 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_864:
          *(this + 14) = v416;
          goto LABEL_865;
        case 0x54u:
          *v7 |= 0x10000uLL;
          v69 = *(a2 + 1);
          v68 = *(a2 + 2);
          v70 = *a2;
          if (v69 <= 0xFFFFFFFFFFFFFFF5 && v69 + 10 <= v68)
          {
            v71 = 0;
            v72 = 0;
            v73 = 0;
            v74 = (v70 + v69);
            v75 = v69 + 1;
            do
            {
              *(a2 + 1) = v75;
              v76 = *v74++;
              v73 |= (v76 & 0x7F) << v71;
              if ((v76 & 0x80) == 0)
              {
                goto LABEL_747;
              }

              v71 += 7;
              ++v75;
              v15 = v72++ > 8;
            }

            while (!v15);
LABEL_375:
            v73 = 0;
            goto LABEL_747;
          }

          v444 = 0;
          v445 = 0;
          v73 = 0;
          v18 = v68 >= v69;
          v446 = v68 - v69;
          if (!v18)
          {
            v446 = 0;
          }

          v447 = (v70 + v69);
          v448 = v69 + 1;
          while (2)
          {
            if (v446)
            {
              v449 = *v447;
              *(a2 + 1) = v448;
              v73 |= (v449 & 0x7F) << v444;
              if (v449 < 0)
              {
                v444 += 7;
                --v446;
                ++v447;
                ++v448;
                v15 = v445++ > 8;
                if (v15)
                {
                  goto LABEL_375;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v73 = 0;
              }
            }

            else
            {
              v73 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_747:
          *(this + 17) = v73;
          goto LABEL_865;
        case 0x55u:
          *v7 |= 4uLL;
          v295 = *(a2 + 1);
          v294 = *(a2 + 2);
          v296 = *a2;
          if (v295 <= 0xFFFFFFFFFFFFFFF5 && v295 + 10 <= v294)
          {
            v297 = 0;
            v298 = 0;
            v299 = 0;
            v300 = (v296 + v295);
            v301 = v295 + 1;
            do
            {
              *(a2 + 1) = v301;
              v302 = *v300++;
              v299 |= (v302 & 0x7F) << v297;
              if ((v302 & 0x80) == 0)
              {
                goto LABEL_825;
              }

              v297 += 7;
              ++v301;
              v15 = v298++ > 8;
            }

            while (!v15);
LABEL_583:
            v299 = 0;
            goto LABEL_825;
          }

          v600 = 0;
          v601 = 0;
          v299 = 0;
          v18 = v294 >= v295;
          v602 = v294 - v295;
          if (!v18)
          {
            v602 = 0;
          }

          v603 = (v296 + v295);
          v604 = v295 + 1;
          while (2)
          {
            if (v602)
            {
              v605 = *v603;
              *(a2 + 1) = v604;
              v299 |= (v605 & 0x7F) << v600;
              if (v605 < 0)
              {
                v600 += 7;
                --v602;
                ++v603;
                ++v604;
                v15 = v601++ > 8;
                if (v15)
                {
                  goto LABEL_583;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v299 = 0;
              }
            }

            else
            {
              v299 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_825:
          *(this + 3) = v299;
          goto LABEL_865;
        case 0x56u:
          *v7 |= 0x40000uLL;
          v60 = *(a2 + 1);
          v59 = *(a2 + 2);
          v61 = *a2;
          if (v60 <= 0xFFFFFFFFFFFFFFF5 && v60 + 10 <= v59)
          {
            v62 = 0;
            v63 = 0;
            v64 = 0;
            v65 = (v61 + v60);
            v66 = v60 + 1;
            do
            {
              *(a2 + 1) = v66;
              v67 = *v65++;
              v64 |= (v67 & 0x7F) << v62;
              if ((v67 & 0x80) == 0)
              {
                goto LABEL_744;
              }

              v62 += 7;
              ++v66;
              v15 = v63++ > 8;
            }

            while (!v15);
LABEL_367:
            v64 = 0;
            goto LABEL_744;
          }

          v438 = 0;
          v439 = 0;
          v64 = 0;
          v18 = v59 >= v60;
          v440 = v59 - v60;
          if (!v18)
          {
            v440 = 0;
          }

          v441 = (v61 + v60);
          v442 = v60 + 1;
          while (2)
          {
            if (v440)
            {
              v443 = *v441;
              *(a2 + 1) = v442;
              v64 |= (v443 & 0x7F) << v438;
              if (v443 < 0)
              {
                v438 += 7;
                --v440;
                ++v441;
                ++v442;
                v15 = v439++ > 8;
                if (v15)
                {
                  goto LABEL_367;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v64 = 0;
              }
            }

            else
            {
              v64 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_744:
          *(this + 19) = v64;
          goto LABEL_865;
        case 0x57u:
          *v7 |= 0x20000uLL;
          v51 = *(a2 + 1);
          v50 = *(a2 + 2);
          v52 = *a2;
          if (v51 <= 0xFFFFFFFFFFFFFFF5 && v51 + 10 <= v50)
          {
            v53 = 0;
            v54 = 0;
            v55 = 0;
            v56 = (v52 + v51);
            v57 = v51 + 1;
            do
            {
              *(a2 + 1) = v57;
              v58 = *v56++;
              v55 |= (v58 & 0x7F) << v53;
              if ((v58 & 0x80) == 0)
              {
                goto LABEL_741;
              }

              v53 += 7;
              ++v57;
              v15 = v54++ > 8;
            }

            while (!v15);
LABEL_359:
            v55 = 0;
            goto LABEL_741;
          }

          v432 = 0;
          v433 = 0;
          v55 = 0;
          v18 = v50 >= v51;
          v434 = v50 - v51;
          if (!v18)
          {
            v434 = 0;
          }

          v435 = (v52 + v51);
          v436 = v51 + 1;
          while (2)
          {
            if (v434)
            {
              v437 = *v435;
              *(a2 + 1) = v436;
              v55 |= (v437 & 0x7F) << v432;
              if (v437 < 0)
              {
                v432 += 7;
                --v434;
                ++v435;
                ++v436;
                v15 = v433++ > 8;
                if (v15)
                {
                  goto LABEL_359;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v55 = 0;
              }
            }

            else
            {
              v55 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_741:
          *(this + 18) = v55;
          goto LABEL_865;
        case 0x58u:
          *v7 |= 0x80uLL;
          v151 = *(a2 + 1);
          v150 = *(a2 + 2);
          v152 = *a2;
          if (v151 <= 0xFFFFFFFFFFFFFFF5 && v151 + 10 <= v150)
          {
            v153 = 0;
            v154 = 0;
            v155 = 0;
            v156 = (v152 + v151);
            v157 = v151 + 1;
            do
            {
              *(a2 + 1) = v157;
              v158 = *v156++;
              v155 |= (v158 & 0x7F) << v153;
              if ((v158 & 0x80) == 0)
              {
                goto LABEL_774;
              }

              v153 += 7;
              ++v157;
              v15 = v154++ > 8;
            }

            while (!v15);
LABEL_447:
            v155 = 0;
            goto LABEL_774;
          }

          v498 = 0;
          v499 = 0;
          v155 = 0;
          v18 = v150 >= v151;
          v500 = v150 - v151;
          if (!v18)
          {
            v500 = 0;
          }

          v501 = (v152 + v151);
          v502 = v151 + 1;
          while (2)
          {
            if (v500)
            {
              v503 = *v501;
              *(a2 + 1) = v502;
              v155 |= (v503 & 0x7F) << v498;
              if (v503 < 0)
              {
                v498 += 7;
                --v500;
                ++v501;
                ++v502;
                v15 = v499++ > 8;
                if (v15)
                {
                  goto LABEL_447;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v155 = 0;
              }
            }

            else
            {
              v155 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_774:
          *(this + 8) = v155;
          goto LABEL_865;
        case 0x59u:
          *v7 |= 0x1000uLL;
          v259 = *(a2 + 1);
          v258 = *(a2 + 2);
          v260 = *a2;
          if (v259 <= 0xFFFFFFFFFFFFFFF5 && v259 + 10 <= v258)
          {
            v261 = 0;
            v262 = 0;
            v263 = 0;
            v264 = (v260 + v259);
            v265 = v259 + 1;
            do
            {
              *(a2 + 1) = v265;
              v266 = *v264++;
              v263 |= (v266 & 0x7F) << v261;
              if ((v266 & 0x80) == 0)
              {
                goto LABEL_810;
              }

              v261 += 7;
              ++v265;
              v15 = v262++ > 8;
            }

            while (!v15);
LABEL_543:
            v263 = 0;
            goto LABEL_810;
          }

          v570 = 0;
          v571 = 0;
          v263 = 0;
          v18 = v258 >= v259;
          v572 = v258 - v259;
          if (!v18)
          {
            v572 = 0;
          }

          v573 = (v260 + v259);
          v574 = v259 + 1;
          while (2)
          {
            if (v572)
            {
              v575 = *v573;
              *(a2 + 1) = v574;
              v263 |= (v575 & 0x7F) << v570;
              if (v575 < 0)
              {
                v570 += 7;
                --v572;
                ++v573;
                ++v574;
                v15 = v571++ > 8;
                if (v15)
                {
                  goto LABEL_543;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v263 = 0;
              }
            }

            else
            {
              v263 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_810:
          *(this + 13) = v263;
          goto LABEL_865;
        case 0x64u:
          *v7 |= 0x4000000000uLL;
          v385 = *(a2 + 1);
          v384 = *(a2 + 2);
          v386 = *a2;
          if (v385 <= 0xFFFFFFFFFFFFFFF5 && v385 + 10 <= v384)
          {
            v387 = 0;
            v388 = 0;
            v389 = 0;
            v390 = (v386 + v385);
            v391 = v385 + 1;
            do
            {
              *(a2 + 1) = v391;
              v392 = *v390++;
              v389 |= (v392 & 0x7F) << v387;
              if ((v392 & 0x80) == 0)
              {
                goto LABEL_855;
              }

              v387 += 7;
              ++v391;
              v15 = v388++ > 8;
            }

            while (!v15);
LABEL_663:
            v389 = 0;
            goto LABEL_855;
          }

          v660 = 0;
          v661 = 0;
          v389 = 0;
          v18 = v384 >= v385;
          v662 = v384 - v385;
          if (!v18)
          {
            v662 = 0;
          }

          v663 = (v386 + v385);
          v664 = v385 + 1;
          while (2)
          {
            if (v662)
            {
              v665 = *v663;
              *(a2 + 1) = v664;
              v389 |= (v665 & 0x7F) << v660;
              if (v665 < 0)
              {
                v660 += 7;
                --v662;
                ++v663;
                ++v664;
                v15 = v661++ > 8;
                if (v15)
                {
                  goto LABEL_663;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v389 = 0;
              }
            }

            else
            {
              v389 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_855:
          *(this + 39) = v389;
          goto LABEL_865;
        case 0x65u:
          *v7 |= 0x1000000000uLL;
          v33 = *(a2 + 1);
          v32 = *(a2 + 2);
          v34 = *a2;
          if (v33 <= 0xFFFFFFFFFFFFFFF5 && v33 + 10 <= v32)
          {
            v35 = 0;
            v36 = 0;
            v37 = 0;
            v38 = (v34 + v33);
            v39 = v33 + 1;
            do
            {
              *(a2 + 1) = v39;
              v40 = *v38++;
              v37 |= (v40 & 0x7F) << v35;
              if ((v40 & 0x80) == 0)
              {
                goto LABEL_735;
              }

              v35 += 7;
              ++v39;
              v15 = v36++ > 8;
            }

            while (!v15);
LABEL_343:
            v37 = 0;
            goto LABEL_735;
          }

          v420 = 0;
          v421 = 0;
          v37 = 0;
          v18 = v32 >= v33;
          v422 = v32 - v33;
          if (!v18)
          {
            v422 = 0;
          }

          v423 = (v34 + v33);
          v424 = v33 + 1;
          break;
        case 0x66u:
          *v7 |= 0x2000000000uLL;
          v86 = *(a2 + 1);
          if (v86 <= 0xFFFFFFFFFFFFFFF7 && v86 + 8 <= *(a2 + 2))
          {
            *(this + 38) = *(*a2 + v86);
            *(a2 + 1) += 8;
          }

          else
          {
            *(a2 + 24) = 1;
          }

          goto LABEL_865;
        default:
          if (PB::Reader::skip(a2, v11 >> 3, v11 & 7, 0))
          {
            goto LABEL_865;
          }

          v685 = 0;
          return v685 & 1;
      }

      while (1)
      {
        if (!v422)
        {
          v37 = 0;
          *(a2 + 24) = 1;
          goto LABEL_735;
        }

        v425 = *v423;
        *(a2 + 1) = v424;
        v37 |= (v425 & 0x7F) << v420;
        if ((v425 & 0x80) == 0)
        {
          break;
        }

        v420 += 7;
        --v422;
        ++v423;
        ++v424;
        v15 = v421++ > 8;
        if (v15)
        {
          goto LABEL_343;
        }
      }

      if (*(a2 + 24))
      {
        v37 = 0;
      }

LABEL_735:
      *(this + 37) = v37;
LABEL_865:
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

LABEL_869:
  v685 = v4 ^ 1;
  return v685 & 1;
}

uint64_t CMMsl::FallDetectionReplay::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = (this + 364);
  v5 = *(this + 364);
  if ((v5 & 0x40000000) != 0)
  {
    this = PB::Writer::writeVarInt(a2, *(this + 248), 1u);
    v5 = *v4;
    if ((*v4 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v5 & 0x80000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_49;
    }
  }

  else if ((v5 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::writeVarInt(a2, *(v3 + 256), 2u);
  v5 = *v4;
  if ((*v4 & 0x80000) == 0)
  {
LABEL_4:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_50;
  }

LABEL_49:
  this = PB::Writer::writeVarInt(a2, *(v3 + 160), 0x15u);
  v5 = *v4;
  if ((*v4 & 0x100000) == 0)
  {
LABEL_5:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_51;
  }

LABEL_50:
  this = PB::Writer::writeVarInt(a2, *(v3 + 168), 0x16u);
  v5 = *v4;
  if ((*v4 & 0x200000) == 0)
  {
LABEL_6:
    if ((v5 & 0x8000000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_52;
  }

LABEL_51:
  this = PB::Writer::writeVarInt(a2, *(v3 + 176), 0x2Cu);
  v5 = *v4;
  if ((*v4 & 0x8000000000) == 0)
  {
LABEL_7:
    if ((v5 & 0x40000000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_53;
  }

LABEL_52:
  this = PB::Writer::writeVarInt(a2, *(v3 + 320), 0x2Du);
  v5 = *v4;
  if ((*v4 & 0x40000000000) == 0)
  {
LABEL_8:
    if ((v5 & 0x10000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_54;
  }

LABEL_53:
  this = PB::Writer::writeVarInt(a2, *(v3 + 344), 0x2Eu);
  v5 = *v4;
  if ((*v4 & 0x10000000000) == 0)
  {
LABEL_9:
    if ((v5 & 0x20000000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_55;
  }

LABEL_54:
  this = PB::Writer::writeVarInt(a2, *(v3 + 328), 0x2Fu);
  v5 = *v4;
  if ((*v4 & 0x20000000000) == 0)
  {
LABEL_10:
    if ((v5 & 0x80000000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_56;
  }

LABEL_55:
  this = PB::Writer::writeVarInt(a2, *(v3 + 336), 0x30u);
  v5 = *v4;
  if ((*v4 & 0x80000000000) == 0)
  {
LABEL_11:
    if ((v5 & 0x100000000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_57;
  }

LABEL_56:
  this = PB::Writer::writeVarInt(a2, *(v3 + 352), 0x31u);
  v5 = *v4;
  if ((*v4 & 0x100000000000) == 0)
  {
LABEL_12:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_58;
  }

LABEL_57:
  this = PB::Writer::writeVarInt(a2, *(v3 + 360), 0x32u);
  v5 = *v4;
  if ((*v4 & 0x1000000) == 0)
  {
LABEL_13:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_59;
  }

LABEL_58:
  this = PB::Writer::writeVarInt(a2, *(v3 + 200), 0x33u);
  v5 = *v4;
  if ((*v4 & 0x8000000) == 0)
  {
LABEL_14:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_60;
  }

LABEL_59:
  this = PB::Writer::writeVarInt(a2, *(v3 + 224), 0x34u);
  v5 = *v4;
  if ((*v4 & 0x2000000) == 0)
  {
LABEL_15:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_61;
  }

LABEL_60:
  this = PB::Writer::writeVarInt(a2, *(v3 + 208), 0x35u);
  v5 = *v4;
  if ((*v4 & 0x4000000) == 0)
  {
LABEL_16:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_62;
  }

LABEL_61:
  this = PB::Writer::writeVarInt(a2, *(v3 + 216), 0x36u);
  v5 = *v4;
  if ((*v4 & 0x400000) == 0)
  {
LABEL_17:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_63;
  }

LABEL_62:
  this = PB::Writer::writeVarInt(a2, *(v3 + 184), 0x37u);
  v5 = *v4;
  if ((*v4 & 0x800000) == 0)
  {
LABEL_18:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_64;
  }

LABEL_63:
  this = PB::Writer::writeVarInt(a2, *(v3 + 192), 0x38u);
  v5 = *v4;
  if ((*v4 & 0x20) == 0)
  {
LABEL_19:
    if ((v5 & 8) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_65;
  }

LABEL_64:
  this = PB::Writer::writeVarInt(a2, *(v3 + 48), 0x3Bu);
  v5 = *v4;
  if ((*v4 & 8) == 0)
  {
LABEL_20:
    if ((v5 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_66;
  }

LABEL_65:
  this = PB::Writer::writeVarInt(a2, *(v3 + 32), 0x3Cu);
  v5 = *v4;
  if ((*v4 & 1) == 0)
  {
LABEL_21:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_67;
  }

LABEL_66:
  this = PB::Writer::writeVarInt(a2, *(v3 + 8), 0x3Du);
  v5 = *v4;
  if ((*v4 & 0x40) == 0)
  {
LABEL_22:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_68;
  }

LABEL_67:
  this = PB::Writer::writeVarInt(a2, *(v3 + 56), 0x3Eu);
  v5 = *v4;
  if ((*v4 & 0x100) == 0)
  {
LABEL_23:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_69;
  }

LABEL_68:
  this = PB::Writer::writeVarInt(a2, *(v3 + 72), 0x3Fu);
  v5 = *v4;
  if ((*v4 & 0x10) == 0)
  {
LABEL_24:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_70;
  }

LABEL_69:
  this = PB::Writer::writeVarInt(a2, *(v3 + 40), 0x40u);
  v5 = *v4;
  if ((*v4 & 0x200) == 0)
  {
LABEL_25:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_71;
  }

LABEL_70:
  this = PB::Writer::writeVarInt(a2, *(v3 + 80), 0x41u);
  v5 = *v4;
  if ((*v4 & 0x400) == 0)
  {
LABEL_26:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_72;
  }

LABEL_71:
  this = PB::Writer::writeVarInt(a2, *(v3 + 88), 0x42u);
  v5 = *v4;
  if ((*v4 & 0x800) == 0)
  {
LABEL_27:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_73;
  }

LABEL_72:
  this = PB::Writer::writeVarInt(a2, *(v3 + 96), 0x43u);
  v5 = *v4;
  if ((*v4 & 0x4000) == 0)
  {
LABEL_28:
    if ((v5 & 2) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_74;
  }

LABEL_73:
  this = PB::Writer::writeVarInt(a2, *(v3 + 120), 0x44u);
  v5 = *v4;
  if ((*v4 & 2) == 0)
  {
LABEL_29:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_75;
  }

LABEL_74:
  this = PB::Writer::writeVarInt(a2, *(v3 + 16), 0x45u);
  v5 = *v4;
  if ((*v4 & 0x8000) == 0)
  {
LABEL_30:
    if ((v5 & 0x800000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_76;
  }

LABEL_75:
  this = PB::Writer::writeVarInt(a2, *(v3 + 128), 0x46u);
  v5 = *v4;
  if ((*v4 & 0x800000000) == 0)
  {
LABEL_31:
    if ((v5 & 0x400000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_77;
  }

LABEL_76:
  this = PB::Writer::writeVarInt(a2, *(v3 + 288), 0x47u);
  v5 = *v4;
  if ((*v4 & 0x400000000) == 0)
  {
LABEL_32:
    if ((v5 & 0x200000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_78;
  }

LABEL_77:
  this = PB::Writer::writeVarInt(a2, *(v3 + 280), 0x48u);
  v5 = *v4;
  if ((*v4 & 0x200000000) == 0)
  {
LABEL_33:
    if ((v5 & 0x100000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_79;
  }

LABEL_78:
  this = PB::Writer::writeVarInt(a2, *(v3 + 272), 0x49u);
  v5 = *v4;
  if ((*v4 & 0x100000000) == 0)
  {
LABEL_34:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_80;
  }

LABEL_79:
  this = PB::Writer::writeVarInt(a2, *(v3 + 264), 0x4Au);
  v5 = *v4;
  if ((*v4 & 0x20000000) == 0)
  {
LABEL_35:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_81;
  }

LABEL_80:
  this = PB::Writer::writeVarInt(a2, *(v3 + 240), 0x51u);
  v5 = *v4;
  if ((*v4 & 0x10000000) == 0)
  {
LABEL_36:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_82;
  }

LABEL_81:
  this = PB::Writer::writeVarInt(a2, *(v3 + 232), 0x52u);
  v5 = *v4;
  if ((*v4 & 0x2000) == 0)
  {
LABEL_37:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_83;
  }

LABEL_82:
  this = PB::Writer::writeVarInt(a2, *(v3 + 112), 0x53u);
  v5 = *v4;
  if ((*v4 & 0x10000) == 0)
  {
LABEL_38:
    if ((v5 & 4) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_84;
  }

LABEL_83:
  this = PB::Writer::writeVarInt(a2, *(v3 + 136), 0x54u);
  v5 = *v4;
  if ((*v4 & 4) == 0)
  {
LABEL_39:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_85;
  }

LABEL_84:
  this = PB::Writer::writeVarInt(a2, *(v3 + 24), 0x55u);
  v5 = *v4;
  if ((*v4 & 0x40000) == 0)
  {
LABEL_40:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_86;
  }

LABEL_85:
  this = PB::Writer::writeVarInt(a2, *(v3 + 152), 0x56u);
  v5 = *v4;
  if ((*v4 & 0x20000) == 0)
  {
LABEL_41:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_87;
  }

LABEL_86:
  this = PB::Writer::writeVarInt(a2, *(v3 + 144), 0x57u);
  v5 = *v4;
  if ((*v4 & 0x80) == 0)
  {
LABEL_42:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_88;
  }

LABEL_87:
  this = PB::Writer::writeVarInt(a2, *(v3 + 64), 0x58u);
  v5 = *v4;
  if ((*v4 & 0x1000) == 0)
  {
LABEL_43:
    if ((v5 & 0x4000000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_89;
  }

LABEL_88:
  this = PB::Writer::writeVarInt(a2, *(v3 + 104), 0x59u);
  v5 = *v4;
  if ((*v4 & 0x4000000000) == 0)
  {
LABEL_44:
    if ((v5 & 0x1000000000) == 0)
    {
      goto LABEL_45;
    }

LABEL_90:
    this = PB::Writer::writeVarInt(a2, *(v3 + 296), 0x65u);
    if ((*v4 & 0x2000000000) == 0)
    {
      return this;
    }

    goto LABEL_91;
  }

LABEL_89:
  this = PB::Writer::writeVarInt(a2, *(v3 + 312), 0x64u);
  v5 = *v4;
  if ((*v4 & 0x1000000000) != 0)
  {
    goto LABEL_90;
  }

LABEL_45:
  if ((v5 & 0x2000000000) == 0)
  {
    return this;
  }

LABEL_91:
  v6 = *(v3 + 304);

  return PB::Writer::write(a2, v6, 0x66u);
}