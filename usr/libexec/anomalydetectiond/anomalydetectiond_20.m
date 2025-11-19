uint64_t CMMsl::FallDetectionWristStateReplay::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 396);
  if ((v4 & 0x80000) != 0)
  {
    this = PB::Writer::writeVarInt(a2, *(this + 376), 1u);
    v4 = *(v3 + 396);
    if ((v4 & 0x1000000) == 0)
    {
LABEL_3:
      if ((v4 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_64;
    }
  }

  else if ((v4 & 0x1000000) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 388), 2u);
  v4 = *(v3 + 396);
  if ((v4 & 1) == 0)
  {
LABEL_4:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_65;
  }

LABEL_64:
  this = PB::Writer::write(a2, *(v3 + 224), 3u);
  v4 = *(v3 + 396);
  if ((v4 & 0x40000) == 0)
  {
LABEL_5:
    if ((v4 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_66;
  }

LABEL_65:
  this = PB::Writer::write(a2, *(v3 + 368), 4u);
  v4 = *(v3 + 396);
  if ((v4 & 2) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_67;
  }

LABEL_66:
  this = PB::Writer::writeVarInt(a2, *(v3 + 232), 5u);
  v4 = *(v3 + 396);
  if ((v4 & 0x10) == 0)
  {
LABEL_7:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_68;
  }

LABEL_67:
  this = PB::Writer::writeVarInt(a2, *(v3 + 256), 0x15u);
  v4 = *(v3 + 396);
  if ((v4 & 0x20) == 0)
  {
LABEL_8:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_69;
  }

LABEL_68:
  this = PB::Writer::write(a2, *(v3 + 264), 0x16u);
  v4 = *(v3 + 396);
  if ((v4 & 0x100) == 0)
  {
LABEL_9:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_70;
  }

LABEL_69:
  this = PB::Writer::write(a2, *(v3 + 288), 0x17u);
  v4 = *(v3 + 396);
  if ((v4 & 0x400) == 0)
  {
LABEL_10:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_71;
  }

LABEL_70:
  this = PB::Writer::write(a2, *(v3 + 304), 0x18u);
  v4 = *(v3 + 396);
  if ((v4 & 0x200) == 0)
  {
LABEL_11:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_72;
  }

LABEL_71:
  this = PB::Writer::write(a2, *(v3 + 296), 0x19u);
  v4 = *(v3 + 396);
  if ((v4 & 0x80) == 0)
  {
LABEL_12:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_73;
  }

LABEL_72:
  this = PB::Writer::write(a2, *(v3 + 280), 0x1Au);
  v4 = *(v3 + 396);
  if ((v4 & 0x40) == 0)
  {
LABEL_13:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_74;
  }

LABEL_73:
  this = PB::Writer::write(a2, *(v3 + 272), 0x1Bu);
  v4 = *(v3 + 396);
  if ((v4 & 0x1000) == 0)
  {
LABEL_14:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_75;
  }

LABEL_74:
  this = PB::Writer::write(a2, *(v3 + 320), 0x1Cu);
  v4 = *(v3 + 396);
  if ((v4 & 0x800) == 0)
  {
LABEL_15:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_76;
  }

LABEL_75:
  this = PB::Writer::write(a2, *(v3 + 312), 0x1Du);
  v4 = *(v3 + 396);
  if ((v4 & 0x20000) == 0)
  {
LABEL_16:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_77;
  }

LABEL_76:
  this = PB::Writer::writeVarInt(a2, *(v3 + 360), 0x1Eu);
  v4 = *(v3 + 396);
  if ((v4 & 0x10000) == 0)
  {
LABEL_17:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_78;
  }

LABEL_77:
  this = PB::Writer::writeVarInt(a2, *(v3 + 352), 0x1Fu);
  v4 = *(v3 + 396);
  if ((v4 & 0x8000) == 0)
  {
LABEL_18:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_79;
  }

LABEL_78:
  this = PB::Writer::writeVarInt(a2, *(v3 + 344), 0x20u);
  v4 = *(v3 + 396);
  if ((v4 & 0x4000) == 0)
  {
LABEL_19:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_80;
  }

LABEL_79:
  this = PB::Writer::writeVarInt(a2, *(v3 + 336), 0x21u);
  v4 = *(v3 + 396);
  if ((v4 & 0x2000) == 0)
  {
LABEL_20:
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_81;
  }

LABEL_80:
  this = PB::Writer::writeVarInt(a2, *(v3 + 328), 0x22u);
  v4 = *(v3 + 396);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_21:
    if ((v4 & 4) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_82;
  }

LABEL_81:
  this = PB::Writer::write(a2, *(v3 + 395), 0x29u);
  v4 = *(v3 + 396);
  if ((v4 & 4) == 0)
  {
LABEL_22:
    if ((v4 & 8) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_83;
  }

LABEL_82:
  this = PB::Writer::write(a2, *(v3 + 240), 0x2Au);
  v4 = *(v3 + 396);
  if ((v4 & 8) == 0)
  {
LABEL_23:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_84;
  }

LABEL_83:
  this = PB::Writer::write(a2, *(v3 + 248), 0x2Bu);
  v4 = *(v3 + 396);
  if ((v4 & 0x100000) == 0)
  {
LABEL_24:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_85;
  }

LABEL_84:
  this = PB::Writer::write(a2, *(v3 + 384), 0x33u);
  v4 = *(v3 + 396);
  if ((v4 & 0x400000) == 0)
  {
LABEL_25:
    if ((v4 & 0x40000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_86;
  }

LABEL_85:
  this = PB::Writer::write(a2, *(v3 + 386), 0x34u);
  v4 = *(v3 + 396);
  if ((v4 & 0x40000000) == 0)
  {
LABEL_26:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_87;
  }

LABEL_86:
  this = PB::Writer::write(a2, *(v3 + 394), 0x35u);
  v4 = *(v3 + 396);
  if ((v4 & 0x200000) == 0)
  {
LABEL_27:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_88;
  }

LABEL_87:
  this = PB::Writer::write(a2, *(v3 + 385), 0x36u);
  v4 = *(v3 + 396);
  if ((v4 & 0x800000) == 0)
  {
LABEL_28:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_89;
  }

LABEL_88:
  this = PB::Writer::write(a2, *(v3 + 387), 0x37u);
  v4 = *(v3 + 396);
  if ((v4 & 0x10000000) == 0)
  {
LABEL_29:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_90;
  }

LABEL_89:
  this = PB::Writer::write(a2, *(v3 + 392), 0x65u);
  v4 = *(v3 + 396);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_30:
    if ((v4 & 0x20000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_91;
  }

LABEL_90:
  this = PB::Writer::write(a2, *(v3 + 391), 0x66u);
  v4 = *(v3 + 396);
  if ((v4 & 0x20000000) == 0)
  {
LABEL_31:
    if ((v4 & 0x2000000) == 0)
    {
      goto LABEL_32;
    }

LABEL_92:
    this = PB::Writer::write(a2, *(v3 + 389), 0x68u);
    if ((*(v3 + 396) & 0x4000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_91:
  this = PB::Writer::write(a2, *(v3 + 393), 0x67u);
  v4 = *(v3 + 396);
  if ((v4 & 0x2000000) != 0)
  {
    goto LABEL_92;
  }

LABEL_32:
  if ((v4 & 0x4000000) != 0)
  {
LABEL_33:
    this = PB::Writer::write(a2, *(v3 + 390), 0x69u);
  }

LABEL_34:
  v5 = *(v3 + 32);
  v6 = *(v3 + 40);
  while (v5 != v6)
  {
    v7 = *v5++;
    this = PB::Writer::write(a2, v7, 0x97u);
  }

  v8 = *(v3 + 8);
  v9 = *(v3 + 16);
  while (v8 != v9)
  {
    v10 = *v8++;
    this = PB::Writer::write(a2, v10, 0x98u);
  }

  v11 = *(v3 + 56);
  v12 = *(v3 + 64);
  while (v11 != v12)
  {
    v13 = *v11++;
    this = PB::Writer::write(a2, v13, 0x99u);
  }

  v14 = *(v3 + 104);
  v15 = *(v3 + 112);
  while (v14 != v15)
  {
    v16 = *v14++;
    this = PB::Writer::write(a2, v16, 0xA1u);
  }

  v17 = *(v3 + 80);
  v18 = *(v3 + 88);
  while (v17 != v18)
  {
    v19 = *v17++;
    this = PB::Writer::write(a2, v19, 0xA2u);
  }

  v20 = *(v3 + 128);
  v21 = *(v3 + 136);
  while (v20 != v21)
  {
    v22 = *v20++;
    this = PB::Writer::write(a2, v22, 0xA3u);
  }

  v23 = *(v3 + 176);
  v24 = *(v3 + 184);
  while (v23 != v24)
  {
    v25 = *v23++;
    this = PB::Writer::write(a2, v25, 0xA4u);
  }

  v26 = *(v3 + 152);
  v27 = *(v3 + 160);
  while (v26 != v27)
  {
    v28 = *v26++;
    this = PB::Writer::write(a2, v28, 0xA5u);
  }

  v30 = *(v3 + 200);
  v29 = *(v3 + 208);
  while (v30 != v29)
  {
    v31 = *v30++;
    this = PB::Writer::write(a2, v31, 0xA6u);
  }

  return this;
}

BOOL CMMsl::FallDetectionWristStateReplay::operator==(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 396);
  v4 = *(a2 + 396);
  if ((v3 & 0x80000) != 0)
  {
    if ((v4 & 0x80000) == 0)
    {
      return 0;
    }

    v5 = *(a1 + 376);
    v6 = *(a2 + 376);
    v2 = __OFSUB__(v5, v6);
    if (v5 != v6)
    {
      return 0;
    }
  }

  else if ((v4 & 0x80000) != 0)
  {
    return 0;
  }

  if ((v3 & 0x1000000) != 0)
  {
    if ((v4 & 0x1000000) == 0)
    {
      return 0;
    }

    v7 = *(a1 + 388);
    v8 = *(a2 + 388);
    v2 = __OFSUB__(v7, v8);
    if (v7 != v8)
    {
      return 0;
    }
  }

  else if ((v4 & 0x1000000) != 0)
  {
    return 0;
  }

  if (v3)
  {
    if ((v4 & 1) == 0)
    {
      return 0;
    }

    v2 = 0;
    if (*(a1 + 224) != *(a2 + 224))
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  if ((v3 & 0x40000) != 0)
  {
    if ((v4 & 0x40000) == 0)
    {
      return 0;
    }

    v2 = 0;
    if (*(a1 + 368) != *(a2 + 368))
    {
      return 0;
    }
  }

  else if ((v4 & 0x40000) != 0)
  {
    return 0;
  }

  if ((v3 & 2) != 0)
  {
    if ((v4 & 2) == 0)
    {
      return 0;
    }

    v9 = *(a1 + 232);
    v10 = *(a2 + 232);
    v2 = __OFSUB__(v9, v10);
    if (v9 != v10)
    {
      return 0;
    }
  }

  else if ((v4 & 2) != 0)
  {
    return 0;
  }

  if ((v3 & 0x10) != 0)
  {
    if ((v4 & 0x10) == 0)
    {
      return 0;
    }

    v11 = *(a1 + 256);
    v12 = *(a2 + 256);
    v2 = __OFSUB__(v11, v12);
    if (v11 != v12)
    {
      return 0;
    }
  }

  else if ((v4 & 0x10) != 0)
  {
    return 0;
  }

  if ((v3 & 0x20) != 0)
  {
    if ((v4 & 0x20) == 0)
    {
      return 0;
    }

    v2 = 0;
    if (*(a1 + 264) != *(a2 + 264))
    {
      return 0;
    }
  }

  else if ((v4 & 0x20) != 0)
  {
    return 0;
  }

  if ((v3 & 0x100) != 0)
  {
    if ((v4 & 0x100) == 0)
    {
      return 0;
    }

    v2 = 0;
    if (*(a1 + 288) != *(a2 + 288))
    {
      return 0;
    }
  }

  else if ((v4 & 0x100) != 0)
  {
    return 0;
  }

  if ((v3 & 0x400) != 0)
  {
    if ((v4 & 0x400) == 0)
    {
      return 0;
    }

    v2 = 0;
    if (*(a1 + 304) != *(a2 + 304))
    {
      return 0;
    }
  }

  else if ((v4 & 0x400) != 0)
  {
    return 0;
  }

  if ((v3 & 0x200) != 0)
  {
    if ((v4 & 0x200) == 0)
    {
      return 0;
    }

    v2 = 0;
    if (*(a1 + 296) != *(a2 + 296))
    {
      return 0;
    }
  }

  else if ((v4 & 0x200) != 0)
  {
    return 0;
  }

  if ((v3 & 0x80) != 0)
  {
    if ((v4 & 0x80) == 0)
    {
      return 0;
    }

    v2 = 0;
    if (*(a1 + 280) != *(a2 + 280))
    {
      return 0;
    }
  }

  else if ((v4 & 0x80) != 0)
  {
    return 0;
  }

  if ((v3 & 0x40) != 0)
  {
    if ((v4 & 0x40) == 0)
    {
      return 0;
    }

    v2 = 0;
    if (*(a1 + 272) != *(a2 + 272))
    {
      return 0;
    }
  }

  else if ((v4 & 0x40) != 0)
  {
    return 0;
  }

  if ((v3 & 0x1000) != 0)
  {
    if ((v4 & 0x1000) == 0)
    {
      return 0;
    }

    v2 = 0;
    if (*(a1 + 320) != *(a2 + 320))
    {
      return 0;
    }
  }

  else if ((v4 & 0x1000) != 0)
  {
    return 0;
  }

  if ((v3 & 0x800) != 0)
  {
    if ((v4 & 0x800) == 0)
    {
      return 0;
    }

    v2 = 0;
    if (*(a1 + 312) != *(a2 + 312))
    {
      return 0;
    }
  }

  else if ((v4 & 0x800) != 0)
  {
    return 0;
  }

  if ((v3 & 0x20000) != 0)
  {
    if ((v4 & 0x20000) == 0)
    {
      return 0;
    }

    v13 = *(a1 + 360);
    v14 = *(a2 + 360);
    v2 = __OFSUB__(v13, v14);
    if (v13 != v14)
    {
      return 0;
    }
  }

  else if ((v4 & 0x20000) != 0)
  {
    return 0;
  }

  if ((v3 & 0x10000) != 0)
  {
    if ((v4 & 0x10000) == 0)
    {
      return 0;
    }

    v15 = *(a1 + 352);
    v16 = *(a2 + 352);
    v2 = __OFSUB__(v15, v16);
    if (v15 != v16)
    {
      return 0;
    }
  }

  else if ((v4 & 0x10000) != 0)
  {
    return 0;
  }

  if ((v3 & 0x8000) != 0)
  {
    if ((v4 & 0x8000) == 0)
    {
      return 0;
    }

    v17 = *(a1 + 344);
    v18 = *(a2 + 344);
    v2 = __OFSUB__(v17, v18);
    if (v17 != v18)
    {
      return 0;
    }
  }

  else if ((v4 & 0x8000) != 0)
  {
    return 0;
  }

  if ((v3 & 0x4000) != 0)
  {
    if ((v4 & 0x4000) == 0)
    {
      return 0;
    }

    v19 = *(a1 + 336);
    v20 = *(a2 + 336);
    v2 = __OFSUB__(v19, v20);
    if (v19 != v20)
    {
      return 0;
    }
  }

  else if ((v4 & 0x4000) != 0)
  {
    return 0;
  }

  if ((v3 & 0x2000) != 0)
  {
    if ((v4 & 0x2000) == 0)
    {
      return 0;
    }

    v21 = *(a1 + 328);
    v22 = *(a2 + 328);
    v2 = __OFSUB__(v21, v22);
    if (v21 != v22)
    {
      return 0;
    }
  }

  else if ((v4 & 0x2000) != 0)
  {
    return 0;
  }

  if ((v3 & v4) < 0 != v2)
  {
    if (*(a1 + 395) != *(a2 + 395))
    {
      return 0;
    }
  }

  else if ((v3 | v4) < 0)
  {
    return 0;
  }

  if ((v3 & 4) != 0)
  {
    if ((v4 & 4) == 0 || *(a1 + 240) != *(a2 + 240))
    {
      return 0;
    }
  }

  else if ((v4 & 4) != 0)
  {
    return 0;
  }

  if ((v3 & 8) != 0)
  {
    if ((v4 & 8) == 0 || *(a1 + 248) != *(a2 + 248))
    {
      return 0;
    }
  }

  else if ((v4 & 8) != 0)
  {
    return 0;
  }

  if ((v3 & 0x100000) != 0)
  {
    if ((v4 & 0x100000) == 0 || *(a1 + 384) != *(a2 + 384))
    {
      return 0;
    }
  }

  else if ((v4 & 0x100000) != 0)
  {
    return 0;
  }

  if ((v3 & 0x400000) != 0)
  {
    if ((v4 & 0x400000) == 0 || *(a1 + 386) != *(a2 + 386))
    {
      return 0;
    }
  }

  else if ((v4 & 0x400000) != 0)
  {
    return 0;
  }

  if ((v3 & 0x40000000) != 0)
  {
    if ((v4 & 0x40000000) == 0 || *(a1 + 394) != *(a2 + 394))
    {
      return 0;
    }
  }

  else if ((v4 & 0x40000000) != 0)
  {
    return 0;
  }

  if ((v3 & 0x200000) != 0)
  {
    if ((v4 & 0x200000) == 0 || *(a1 + 385) != *(a2 + 385))
    {
      return 0;
    }
  }

  else if ((v4 & 0x200000) != 0)
  {
    return 0;
  }

  if ((v3 & 0x800000) != 0)
  {
    if ((v4 & 0x800000) == 0 || *(a1 + 387) != *(a2 + 387))
    {
      return 0;
    }
  }

  else if ((v4 & 0x800000) != 0)
  {
    return 0;
  }

  if ((v3 & 0x10000000) != 0)
  {
    if ((v4 & 0x10000000) == 0 || *(a1 + 392) != *(a2 + 392))
    {
      return 0;
    }
  }

  else if ((v4 & 0x10000000) != 0)
  {
    return 0;
  }

  if ((v3 & 0x8000000) != 0)
  {
    if ((v4 & 0x8000000) == 0 || *(a1 + 391) != *(a2 + 391))
    {
      return 0;
    }
  }

  else if ((v4 & 0x8000000) != 0)
  {
    return 0;
  }

  if ((v3 & 0x20000000) != 0)
  {
    if ((v4 & 0x20000000) == 0 || *(a1 + 393) != *(a2 + 393))
    {
      return 0;
    }
  }

  else if ((v4 & 0x20000000) != 0)
  {
    return 0;
  }

  if ((v3 & 0x2000000) != 0)
  {
    if ((v4 & 0x2000000) == 0 || *(a1 + 389) != *(a2 + 389))
    {
      return 0;
    }
  }

  else if ((v4 & 0x2000000) != 0)
  {
    return 0;
  }

  if ((v3 & 0x4000000) != 0)
  {
    if ((v4 & 0x4000000) == 0 || *(a1 + 390) != *(a2 + 390))
    {
      return 0;
    }
  }

  else if ((v4 & 0x4000000) != 0)
  {
    return 0;
  }

  v24 = *(a1 + 32);
  v23 = *(a1 + 40);
  v25 = *(a2 + 32);
  if (v23 - v24 != *(a2 + 40) - v25)
  {
    return 0;
  }

  while (v24 != v23)
  {
    if (*v24 != *v25)
    {
      return 0;
    }

    ++v24;
    ++v25;
  }

  v27 = *(a1 + 8);
  v26 = *(a1 + 16);
  v28 = *(a2 + 8);
  if (v26 - v27 != *(a2 + 16) - v28)
  {
    return 0;
  }

  while (v27 != v26)
  {
    if (*v27 != *v28)
    {
      return 0;
    }

    ++v27;
    ++v28;
  }

  v30 = *(a1 + 56);
  v29 = *(a1 + 64);
  v31 = *(a2 + 56);
  if (v29 - v30 != *(a2 + 64) - v31)
  {
    return 0;
  }

  while (v30 != v29)
  {
    if (*v30 != *v31)
    {
      return 0;
    }

    ++v30;
    ++v31;
  }

  v33 = *(a1 + 104);
  v32 = *(a1 + 112);
  v34 = *(a2 + 104);
  if (v32 - v33 != *(a2 + 112) - v34)
  {
    return 0;
  }

  while (v33 != v32)
  {
    if (*v33 != *v34)
    {
      return 0;
    }

    ++v33;
    ++v34;
  }

  v36 = *(a1 + 80);
  v35 = *(a1 + 88);
  v37 = *(a2 + 80);
  if (v35 - v36 != *(a2 + 88) - v37)
  {
    return 0;
  }

  while (v36 != v35)
  {
    if (*v36 != *v37)
    {
      return 0;
    }

    ++v36;
    ++v37;
  }

  v39 = *(a1 + 128);
  v38 = *(a1 + 136);
  v40 = *(a2 + 128);
  if (v38 - v39 != *(a2 + 136) - v40)
  {
    return 0;
  }

  while (v39 != v38)
  {
    if (*v39 != *v40)
    {
      return 0;
    }

    ++v39;
    ++v40;
  }

  v42 = *(a1 + 176);
  v41 = *(a1 + 184);
  v43 = *(a2 + 176);
  if (v41 - v42 != *(a2 + 184) - v43)
  {
    return 0;
  }

  while (v42 != v41)
  {
    if (*v42 != *v43)
    {
      return 0;
    }

    ++v42;
    ++v43;
  }

  v45 = *(a1 + 152);
  v44 = *(a1 + 160);
  v46 = *(a2 + 152);
  if (v44 - v45 != *(a2 + 160) - v46)
  {
    return 0;
  }

  while (v45 != v44)
  {
    if (*v45 != *v46)
    {
      return 0;
    }

    ++v45;
    ++v46;
  }

  v48 = *(a1 + 200);
  v47 = *(a1 + 208);
  v49 = *(a2 + 200);
  if (v47 - v48 != *(a2 + 208) - v49)
  {
    return 0;
  }

  if (v48 == v47)
  {
    return 1;
  }

  v50 = v48 + 8;
  do
  {
    v51 = *v49++;
    result = *(v50 - 8) == v51;
    v53 = *(v50 - 8) != v51 || v50 == v47;
    v50 += 8;
  }

  while (!v53);
  return result;
}

uint64_t CMMsl::FallDetectionWristStateReplay::hash_value(CMMsl::FallDetectionWristStateReplay *this)
{
  v2 = *(this + 99);
  if ((v2 & 0x80000) != 0)
  {
    v3 = *(this + 47);
    if ((v2 & 0x1000000) != 0)
    {
LABEL_3:
      v4 = *(this + 388);
      if (v2)
      {
        goto LABEL_4;
      }

LABEL_69:
      v65 = 0.0;
      if ((v2 & 0x40000) != 0)
      {
        goto LABEL_7;
      }

LABEL_70:
      v64 = 0.0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_10;
      }

      goto LABEL_71;
    }
  }

  else
  {
    v3 = 0;
    if ((v2 & 0x1000000) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((v2 & 1) == 0)
  {
    goto LABEL_69;
  }

LABEL_4:
  v5 = *(this + 28);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  v65 = v5;
  if ((v2 & 0x40000) == 0)
  {
    goto LABEL_70;
  }

LABEL_7:
  v6 = *(this + 46);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  v64 = v6;
  if ((v2 & 2) != 0)
  {
LABEL_10:
    v63 = *(this + 29);
    if ((v2 & 0x10) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_72;
  }

LABEL_71:
  v63 = 0;
  if ((v2 & 0x10) != 0)
  {
LABEL_11:
    v62 = *(this + 32);
    if ((v2 & 0x20) != 0)
    {
      goto LABEL_12;
    }

LABEL_73:
    v61 = 0.0;
    if ((v2 & 0x100) != 0)
    {
      goto LABEL_15;
    }

LABEL_74:
    v8 = 0;
    if ((v2 & 0x400) != 0)
    {
      goto LABEL_19;
    }

LABEL_75:
    v9 = 0;
    if ((v2 & 0x200) != 0)
    {
      goto LABEL_23;
    }

LABEL_76:
    v10 = 0;
    if ((v2 & 0x80) != 0)
    {
      goto LABEL_27;
    }

LABEL_77:
    v11 = 0;
    if ((v2 & 0x40) != 0)
    {
      goto LABEL_31;
    }

LABEL_78:
    v12 = 0;
    if ((v2 & 0x1000) != 0)
    {
      goto LABEL_35;
    }

LABEL_79:
    v13 = 0;
    if ((v2 & 0x800) != 0)
    {
      goto LABEL_39;
    }

LABEL_80:
    v14 = 0;
    if ((v2 & 0x20000) != 0)
    {
      goto LABEL_43;
    }

    goto LABEL_81;
  }

LABEL_72:
  v62 = 0;
  if ((v2 & 0x20) == 0)
  {
    goto LABEL_73;
  }

LABEL_12:
  v7 = *(this + 33);
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  v61 = v7;
  if ((v2 & 0x100) == 0)
  {
    goto LABEL_74;
  }

LABEL_15:
  if (*(this + 36) == 0.0)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(this + 36);
  }

  if ((v2 & 0x400) == 0)
  {
    goto LABEL_75;
  }

LABEL_19:
  if (*(this + 38) == 0.0)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(this + 38);
  }

  if ((v2 & 0x200) == 0)
  {
    goto LABEL_76;
  }

LABEL_23:
  if (*(this + 37) == 0.0)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(this + 37);
  }

  if ((v2 & 0x80) == 0)
  {
    goto LABEL_77;
  }

LABEL_27:
  if (*(this + 35) == 0.0)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(this + 35);
  }

  if ((v2 & 0x40) == 0)
  {
    goto LABEL_78;
  }

LABEL_31:
  if (*(this + 34) == 0.0)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(this + 34);
  }

  if ((v2 & 0x1000) == 0)
  {
    goto LABEL_79;
  }

LABEL_35:
  if (*(this + 40) == 0.0)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(this + 40);
  }

  if ((v2 & 0x800) == 0)
  {
    goto LABEL_80;
  }

LABEL_39:
  if (*(this + 39) == 0.0)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(this + 39);
  }

  if ((v2 & 0x20000) != 0)
  {
LABEL_43:
    v15 = *(this + 45);
    if ((v2 & 0x10000) != 0)
    {
      goto LABEL_44;
    }

    goto LABEL_82;
  }

LABEL_81:
  v15 = 0;
  if ((v2 & 0x10000) != 0)
  {
LABEL_44:
    v16 = *(this + 44);
    if ((v2 & 0x8000) != 0)
    {
      goto LABEL_45;
    }

    goto LABEL_83;
  }

LABEL_82:
  v16 = 0;
  if ((v2 & 0x8000) != 0)
  {
LABEL_45:
    v17 = *(this + 43);
    if ((v2 & 0x4000) != 0)
    {
      goto LABEL_46;
    }

    goto LABEL_84;
  }

LABEL_83:
  v17 = 0;
  if ((v2 & 0x4000) != 0)
  {
LABEL_46:
    v18 = *(this + 42);
    if ((v2 & 0x2000) != 0)
    {
      goto LABEL_47;
    }

    goto LABEL_85;
  }

LABEL_84:
  v18 = 0;
  if ((v2 & 0x2000) != 0)
  {
LABEL_47:
    v19 = *(this + 41);
    if (v2 < 0)
    {
      goto LABEL_48;
    }

    goto LABEL_86;
  }

LABEL_85:
  v19 = 0;
  if (v2 < 0)
  {
LABEL_48:
    v20 = *(this + 395);
    if ((v2 & 4) != 0)
    {
      goto LABEL_49;
    }

LABEL_87:
    v21 = 0;
    if ((v2 & 8) != 0)
    {
      goto LABEL_53;
    }

LABEL_88:
    v22 = 0;
    if ((v2 & 0x100000) != 0)
    {
      goto LABEL_57;
    }

    goto LABEL_89;
  }

LABEL_86:
  v20 = 0;
  if ((v2 & 4) == 0)
  {
    goto LABEL_87;
  }

LABEL_49:
  if (*(this + 30) == 0.0)
  {
    v21 = 0;
  }

  else
  {
    v21 = *(this + 30);
  }

  if ((v2 & 8) == 0)
  {
    goto LABEL_88;
  }

LABEL_53:
  if (*(this + 31) == 0.0)
  {
    v22 = 0;
  }

  else
  {
    v22 = *(this + 31);
  }

  if ((v2 & 0x100000) != 0)
  {
LABEL_57:
    v23 = *(this + 384);
    if ((v2 & 0x400000) != 0)
    {
      goto LABEL_58;
    }

    goto LABEL_90;
  }

LABEL_89:
  v23 = 0;
  if ((v2 & 0x400000) != 0)
  {
LABEL_58:
    v24 = *(this + 386);
    if ((v2 & 0x40000000) != 0)
    {
      goto LABEL_59;
    }

    goto LABEL_91;
  }

LABEL_90:
  v24 = 0;
  if ((v2 & 0x40000000) != 0)
  {
LABEL_59:
    v25 = *(this + 394);
    if ((v2 & 0x200000) != 0)
    {
      goto LABEL_60;
    }

    goto LABEL_92;
  }

LABEL_91:
  v25 = 0;
  if ((v2 & 0x200000) != 0)
  {
LABEL_60:
    v26 = *(this + 385);
    if ((v2 & 0x800000) != 0)
    {
      goto LABEL_61;
    }

    goto LABEL_93;
  }

LABEL_92:
  v26 = 0;
  if ((v2 & 0x800000) != 0)
  {
LABEL_61:
    v27 = *(this + 387);
    if ((v2 & 0x10000000) != 0)
    {
      goto LABEL_62;
    }

    goto LABEL_94;
  }

LABEL_93:
  v27 = 0;
  if ((v2 & 0x10000000) != 0)
  {
LABEL_62:
    v28 = *(this + 392);
    if ((v2 & 0x8000000) != 0)
    {
      goto LABEL_63;
    }

    goto LABEL_95;
  }

LABEL_94:
  v28 = 0;
  if ((v2 & 0x8000000) != 0)
  {
LABEL_63:
    v29 = *(this + 391);
    if ((v2 & 0x20000000) != 0)
    {
      goto LABEL_64;
    }

    goto LABEL_96;
  }

LABEL_95:
  v29 = 0;
  if ((v2 & 0x20000000) != 0)
  {
LABEL_64:
    v30 = *(this + 393);
    if ((v2 & 0x2000000) != 0)
    {
      goto LABEL_65;
    }

LABEL_97:
    v31 = 0;
    if ((v2 & 0x4000000) != 0)
    {
      goto LABEL_66;
    }

LABEL_98:
    v32 = 0;
    goto LABEL_99;
  }

LABEL_96:
  v30 = 0;
  if ((v2 & 0x2000000) == 0)
  {
    goto LABEL_97;
  }

LABEL_65:
  v31 = *(this + 389);
  if ((v2 & 0x4000000) == 0)
  {
    goto LABEL_98;
  }

LABEL_66:
  v32 = *(this + 390);
LABEL_99:
  v33 = v4 ^ v3 ^ *&v65 ^ *&v64 ^ v63 ^ v62 ^ *&v61 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29;
  v34 = *(this + 4);
  v35 = *(this + 5);
  v36 = v33 ^ v30 ^ v31 ^ v32 ^ PBHashBytes();
  v37 = *(this + 1);
  v38 = *(this + 2);
  v39 = PBHashBytes();
  v40 = *(this + 7);
  v41 = *(this + 8);
  v42 = v39 ^ PBHashBytes();
  v43 = *(this + 13);
  v44 = *(this + 14);
  v45 = v36 ^ v42 ^ PBHashBytes();
  v46 = *(this + 10);
  v47 = *(this + 11);
  v48 = PBHashBytes();
  v49 = *(this + 16);
  v50 = *(this + 17);
  v51 = v48 ^ PBHashBytes();
  v52 = *(this + 22);
  v53 = *(this + 23);
  v54 = v51 ^ PBHashBytes();
  v55 = *(this + 19);
  v56 = *(this + 20);
  v57 = v45 ^ v54 ^ PBHashBytes();
  v58 = *(this + 25);
  v59 = *(this + 26);
  return v57 ^ PBHashBytes();
}

uint64_t CMMsl::FallDistanceReplay::FallDistanceReplay(uint64_t this)
{
  *this = off_10041E380;
  *(this + 72) = 0;
  return this;
}

{
  *this = off_10041E380;
  *(this + 72) = 0;
  return this;
}

void CMMsl::FallDistanceReplay::~FallDistanceReplay(CMMsl::FallDistanceReplay *this)
{
  PB::Base::~Base(this);

  operator delete();
}

float CMMsl::FallDistanceReplay::FallDistanceReplay(CMMsl::FallDistanceReplay *this, const CMMsl::FallDistanceReplay *a2)
{
  *this = off_10041E380;
  *(this + 18) = 0;
  v2 = *(a2 + 36);
  if ((v2 & 4) != 0)
  {
    v4 = *(a2 + 3);
    v3 = 4;
    *(this + 36) = 4;
    *(this + 3) = v4;
    v2 = *(a2 + 36);
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 8) != 0)
  {
LABEL_5:
    v5 = *(a2 + 4);
    v3 |= 8u;
    *(this + 36) = v3;
    *(this + 4) = v5;
    v2 = *(a2 + 36);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    v6 = *(a2 + 2);
    v3 |= 2u;
    *(this + 36) = v3;
    *(this + 2) = v6;
    v2 = *(a2 + 36);
    if ((v2 & 0x200) == 0)
    {
LABEL_8:
      if ((v2 & 0x100) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 17);
  v3 |= 0x200u;
  *(this + 36) = v3;
  *(this + 17) = v7;
  v2 = *(a2 + 36);
  if ((v2 & 0x100) == 0)
  {
LABEL_9:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

LABEL_17:
  LODWORD(v4) = *(a2 + 16);
  v3 |= 0x100u;
  *(this + 36) = v3;
  *(this + 16) = v4;
  v2 = *(a2 + 36);
  if ((v2 & 0x10) == 0)
  {
LABEL_10:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

LABEL_18:
  v8 = *(a2 + 5);
  v3 |= 0x10u;
  *(this + 36) = v3;
  *(this + 5) = v8;
  v2 = *(a2 + 36);
  if ((v2 & 0x20) == 0)
  {
LABEL_11:
    if ((v2 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

LABEL_19:
  v9 = *(a2 + 6);
  v3 |= 0x20u;
  *(this + 36) = v3;
  *(this + 6) = v9;
  v2 = *(a2 + 36);
  if ((v2 & 1) == 0)
  {
LABEL_12:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_21;
  }

LABEL_20:
  v10 = *(a2 + 1);
  v3 |= 1u;
  *(this + 36) = v3;
  *(this + 1) = v10;
  v2 = *(a2 + 36);
  if ((v2 & 0x80) == 0)
  {
LABEL_13:
    if ((v2 & 0x40) == 0)
    {
      return *&v4;
    }

    goto LABEL_22;
  }

LABEL_21:
  LODWORD(v4) = *(a2 + 15);
  v3 |= 0x80u;
  *(this + 36) = v3;
  *(this + 15) = v4;
  if ((*(a2 + 36) & 0x40) == 0)
  {
    return *&v4;
  }

LABEL_22:
  LODWORD(v4) = *(a2 + 14);
  *(this + 36) = v3 | 0x40;
  *(this + 14) = v4;
  return *&v4;
}

uint64_t CMMsl::FallDistanceReplay::operator=(uint64_t a1, const CMMsl::FallDistanceReplay *a2)
{
  if (a1 != a2)
  {
    CMMsl::FallDistanceReplay::FallDistanceReplay(&v11, a2);
    v3 = *(a1 + 32);
    *(a1 + 32) = v15;
    v15 = v3;
    v5 = *(a1 + 8);
    v4 = *(a1 + 16);
    v6 = v13;
    *(a1 + 8) = v12;
    *(a1 + 16) = v6;
    v7 = *(a1 + 24);
    *(a1 + 24) = v14;
    v14 = v7;
    v8 = *(a1 + 68);
    *(a1 + 68) = v19;
    v19 = v8;
    LODWORD(v7) = *(a1 + 64);
    *(a1 + 64) = v18;
    v18 = v7;
    v9 = *(a1 + 40);
    *(a1 + 40) = v16;
    v16 = v9;
    v12 = v5;
    v13 = v4;
    *&v9 = *(a1 + 56);
    *(a1 + 56) = v17;
    v17 = v9;
    PB::Base::~Base(&v11);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::FallDistanceReplay *a2, CMMsl::FallDistanceReplay *a3)
{
  v3 = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v3;
  v4 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v4;
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v6;
  LODWORD(v6) = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v6;
  LODWORD(v4) = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v4;
  v7 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v7;
  v8 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v8;
  v9 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v9;
  LODWORD(v4) = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v4;
  result = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = result;
  return result;
}

float CMMsl::FallDistanceReplay::FallDistanceReplay(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041E380;
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 72) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 60) = *(a2 + 60);
  result = *(a2 + 56);
  *(a1 + 56) = result;
  return result;
}

uint64_t CMMsl::FallDistanceReplay::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::FallDistanceReplay::FallDistanceReplay(&v11, a2);
    v3 = *(a1 + 32);
    *(a1 + 32) = v15;
    v15 = v3;
    v5 = *(a1 + 8);
    v4 = *(a1 + 16);
    v6 = v13;
    *(a1 + 8) = v12;
    *(a1 + 16) = v6;
    v7 = *(a1 + 24);
    *(a1 + 24) = v14;
    v14 = v7;
    v8 = *(a1 + 68);
    *(a1 + 68) = v19;
    v19 = v8;
    LODWORD(v7) = *(a1 + 64);
    *(a1 + 64) = v18;
    v18 = v7;
    v9 = *(a1 + 40);
    *(a1 + 40) = v16;
    v16 = v9;
    v12 = v5;
    v13 = v4;
    *&v9 = *(a1 + 56);
    *(a1 + 56) = v17;
    v17 = v9;
    PB::Base::~Base(&v11);
  }

  return a1;
}

uint64_t CMMsl::FallDistanceReplay::formatText(CMMsl::FallDistanceReplay *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 36);
  if ((v5 & 0x40) != 0)
  {
    PB::TextFormatter::format(a2, "afterElevationMedian", *(this + 14));
    v5 = *(this + 36);
    if ((v5 & 0x80) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((v5 & 0x80) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "beforeElevationMedian", *(this + 15));
  v5 = *(this + 36);
  if ((v5 & 1) == 0)
  {
LABEL_4:
    if ((v5 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  PB::TextFormatter::format(a2, "endTimestampOfWindow", *(this + 1));
  v5 = *(this + 36);
  if ((v5 & 2) == 0)
  {
LABEL_5:
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  PB::TextFormatter::format(a2, "impactTimestamp", *(this + 2));
  v5 = *(this + 36);
  if ((v5 & 4) == 0)
  {
LABEL_6:
    if ((v5 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  PB::TextFormatter::format(a2, "iostime", *(this + 3));
  v5 = *(this + 36);
  if ((v5 & 8) == 0)
  {
LABEL_7:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(a2, "pressureTimestamp", *(this + 4));
  v5 = *(this + 36);
  if ((v5 & 0x100) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(a2, "rangeOfElevationInWindow", *(this + 16));
  v5 = *(this + 36);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(a2, "startTimestampOfLastInspectedWindow", *(this + 5));
  v5 = *(this + 36);
  if ((v5 & 0x20) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  PB::TextFormatter::format(a2, "startTimestampOfWindow", *(this + 6));
  if ((*(this + 36) & 0x200) != 0)
  {
LABEL_11:
    PB::TextFormatter::format(a2, "state", *(this + 17));
  }

LABEL_12:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::FallDistanceReplay::readFrom(CMMsl::FallDistanceReplay *this, PB::Reader *a2)
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
      if ((v10 >> 3) > 10)
      {
        if (v22 <= 12)
        {
          if (v22 == 11)
          {
            *(this + 36) |= 0x10u;
            v39 = *(a2 + 1);
            v2 = *(a2 + 2);
            v40 = *a2;
            if (v39 > 0xFFFFFFFFFFFFFFF5 || v39 + 10 > v2)
            {
              v85 = 0;
              v86 = 0;
              v43 = 0;
              if (v2 <= v39)
              {
                v2 = *(a2 + 1);
              }

              v87 = v2 - v39;
              v88 = (v40 + v39);
              v89 = v39 + 1;
              while (1)
              {
                if (!v87)
                {
                  v43 = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_159;
                }

                v90 = v89;
                v91 = *v88;
                *(a2 + 1) = v90;
                v43 |= (v91 & 0x7F) << v85;
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
                  v43 = 0;
                  goto LABEL_158;
                }
              }

              if (*(a2 + 24))
              {
                v43 = 0;
              }

LABEL_158:
              v2 = v90;
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
                  v43 = 0;
                  break;
                }
              }
            }

LABEL_159:
            *(this + 5) = v43;
            goto LABEL_172;
          }

          if (v22 == 12)
          {
            *(this + 36) |= 0x20u;
            v31 = *(a2 + 1);
            v2 = *(a2 + 2);
            v32 = *a2;
            if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
            {
              v78 = 0;
              v79 = 0;
              v35 = 0;
              if (v2 <= v31)
              {
                v2 = *(a2 + 1);
              }

              v80 = v2 - v31;
              v81 = (v32 + v31);
              v82 = v31 + 1;
              while (1)
              {
                if (!v80)
                {
                  v35 = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_155;
                }

                v83 = v82;
                v84 = *v81;
                *(a2 + 1) = v83;
                v35 |= (v84 & 0x7F) << v78;
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
                  v35 = 0;
                  goto LABEL_154;
                }
              }

              if (*(a2 + 24))
              {
                v35 = 0;
              }

LABEL_154:
              v2 = v83;
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

LABEL_155:
            *(this + 6) = v35;
            goto LABEL_172;
          }
        }

        else
        {
          switch(v22)
          {
            case 0xD:
              *(this + 36) |= 1u;
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
                    v59 = 0;
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
                    v59 = 0;
                    goto LABEL_166;
                  }
                }

                if (*(a2 + 24))
                {
                  v59 = 0;
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
                    v59 = 0;
                    break;
                  }
                }
              }

LABEL_167:
              *(this + 1) = v59;
              goto LABEL_172;
            case 0x14:
              *(this + 36) |= 0x80u;
              v2 = *(a2 + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
              {
LABEL_88:
                *(a2 + 24) = 1;
                goto LABEL_172;
              }

              *(this + 15) = *(*a2 + v2);
LABEL_140:
              v2 = *(a2 + 1) + 4;
LABEL_141:
              *(a2 + 1) = v2;
              goto LABEL_172;
            case 0x15:
              *(this + 36) |= 0x40u;
              v2 = *(a2 + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
              {
                goto LABEL_88;
              }

              *(this + 14) = *(*a2 + v2);
              goto LABEL_140;
          }
        }
      }

      else if (v22 <= 2)
      {
        if (v22 == 1)
        {
          *(this + 36) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_88;
          }

          *(this + 3) = *(*a2 + v2);
          v2 = *(a2 + 1) + 8;
          goto LABEL_141;
        }

        if (v22 == 2)
        {
          *(this + 36) |= 8u;
          v23 = *(a2 + 1);
          v2 = *(a2 + 2);
          v24 = *a2;
          if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
          {
            v71 = 0;
            v72 = 0;
            v27 = 0;
            if (v2 <= v23)
            {
              v2 = *(a2 + 1);
            }

            v73 = v2 - v23;
            v74 = (v24 + v23);
            v75 = v23 + 1;
            while (1)
            {
              if (!v73)
              {
                v27 = 0;
                *(a2 + 24) = 1;
                goto LABEL_151;
              }

              v76 = v75;
              v77 = *v74;
              *(a2 + 1) = v76;
              v27 |= (v77 & 0x7F) << v71;
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
                v27 = 0;
                goto LABEL_150;
              }
            }

            if (*(a2 + 24))
            {
              v27 = 0;
            }

LABEL_150:
            v2 = v76;
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

LABEL_151:
          *(this + 4) = v27;
          goto LABEL_172;
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            *(this + 36) |= 2u;
            v47 = *(a2 + 1);
            v2 = *(a2 + 2);
            v48 = *a2;
            if (v47 > 0xFFFFFFFFFFFFFFF5 || v47 + 10 > v2)
            {
              v92 = 0;
              v93 = 0;
              v51 = 0;
              if (v2 <= v47)
              {
                v2 = *(a2 + 1);
              }

              v94 = v2 - v47;
              v95 = (v48 + v47);
              v96 = v47 + 1;
              while (1)
              {
                if (!v94)
                {
                  v51 = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_163;
                }

                v97 = v96;
                v98 = *v95;
                *(a2 + 1) = v97;
                v51 |= (v98 & 0x7F) << v92;
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
                  v51 = 0;
                  goto LABEL_162;
                }
              }

              if (*(a2 + 24))
              {
                v51 = 0;
              }

LABEL_162:
              v2 = v97;
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

LABEL_163:
            *(this + 2) = v51;
            goto LABEL_172;
          case 4:
            *(this + 36) |= 0x200u;
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
            *(this + 17) = v67;
            goto LABEL_172;
          case 0xA:
            *(this + 36) |= 0x100u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
              goto LABEL_88;
            }

            *(this + 16) = *(*a2 + v2);
            goto LABEL_140;
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

uint64_t CMMsl::FallDistanceReplay::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 72);
  if ((v4 & 4) != 0)
  {
    this = PB::Writer::write(a2, *(this + 24), 1u);
    v4 = *(v3 + 72);
    if ((v4 & 8) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v4 & 8) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::writeVarInt(a2, *(v3 + 32), 2u);
  v4 = *(v3 + 72);
  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = PB::Writer::writeVarInt(a2, *(v3 + 16), 3u);
  v4 = *(v3 + 72);
  if ((v4 & 0x200) == 0)
  {
LABEL_5:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  this = PB::Writer::writeVarInt(a2, *(v3 + 68), 4u);
  v4 = *(v3 + 72);
  if ((v4 & 0x100) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = PB::Writer::write(a2, *(v3 + 64), 0xAu);
  v4 = *(v3 + 72);
  if ((v4 & 0x10) == 0)
  {
LABEL_7:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = PB::Writer::writeVarInt(a2, *(v3 + 40), 0xBu);
  v4 = *(v3 + 72);
  if ((v4 & 0x20) == 0)
  {
LABEL_8:
    if ((v4 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = PB::Writer::writeVarInt(a2, *(v3 + 48), 0xCu);
  v4 = *(v3 + 72);
  if ((v4 & 1) == 0)
  {
LABEL_9:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    this = PB::Writer::write(a2, *(v3 + 60), 0x14u);
    if ((*(v3 + 72) & 0x40) == 0)
    {
      return this;
    }

    goto LABEL_21;
  }

LABEL_19:
  this = PB::Writer::writeVarInt(a2, *(v3 + 8), 0xDu);
  v4 = *(v3 + 72);
  if ((v4 & 0x80) != 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    return this;
  }

LABEL_21:
  v5 = *(v3 + 56);

  return PB::Writer::write(a2, v5, 0x15u);
}

BOOL CMMsl::FallDistanceReplay::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 72);
  v3 = *(a2 + 72);
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

  if ((*(a1 + 72) & 0x200) != 0)
  {
    if ((*(a2 + 72) & 0x200) == 0 || *(a1 + 68) != *(a2 + 68))
    {
      return 0;
    }
  }

  else if ((*(a2 + 72) & 0x200) != 0)
  {
    return 0;
  }

  if ((*(a1 + 72) & 0x100) != 0)
  {
    if ((*(a2 + 72) & 0x100) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((*(a2 + 72) & 0x100) != 0)
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

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 60) != *(a2 + 60))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  v4 = (v3 & 0x40) == 0;
  if ((v2 & 0x40) != 0)
  {
    return (v3 & 0x40) != 0 && *(a1 + 56) == *(a2 + 56);
  }

  return v4;
}

uint64_t CMMsl::FallDistanceReplay::hash_value(CMMsl::FallDistanceReplay *this)
{
  v1 = *(this + 36);
  if ((v1 & 4) != 0)
  {
    v2 = *(this + 3);
    if (v2 == 0.0)
    {
      v2 = 0.0;
    }

    if ((v1 & 8) != 0)
    {
LABEL_3:
      v3 = *(this + 4);
      if ((v1 & 2) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else
  {
    v2 = 0.0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((v1 & 2) != 0)
  {
LABEL_4:
    v4 = *(this + 2);
    if ((*(this + 36) & 0x200) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  v4 = 0;
  if ((*(this + 36) & 0x200) != 0)
  {
LABEL_5:
    v5 = *(this + 17);
    if ((*(this + 36) & 0x100) != 0)
    {
      goto LABEL_6;
    }

LABEL_24:
    v7 = 0;
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_23:
  v5 = 0;
  if ((*(this + 36) & 0x100) == 0)
  {
    goto LABEL_24;
  }

LABEL_6:
  v6 = *(this + 16);
  v7 = LODWORD(v6);
  if (v6 == 0.0)
  {
    v7 = 0;
  }

  if ((v1 & 0x10) != 0)
  {
LABEL_9:
    v8 = *(this + 5);
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  v8 = 0;
  if ((v1 & 0x20) != 0)
  {
LABEL_10:
    v9 = *(this + 6);
    if (v1)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  v9 = 0;
  if (v1)
  {
LABEL_11:
    v10 = *(this + 1);
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  v10 = 0;
  if ((v1 & 0x80) != 0)
  {
LABEL_12:
    v11 = *(this + 15);
    v12 = LODWORD(v11);
    if (v11 == 0.0)
    {
      v12 = 0;
    }

    if ((v1 & 0x40) != 0)
    {
      goto LABEL_15;
    }

LABEL_29:
    v14 = 0;
    return v3 ^ *&v2 ^ v4 ^ v5 ^ v7 ^ v8 ^ v9 ^ v10 ^ v12 ^ v14;
  }

LABEL_28:
  v12 = 0;
  if ((v1 & 0x40) == 0)
  {
    goto LABEL_29;
  }

LABEL_15:
  v13 = *(this + 14);
  v14 = LODWORD(v13);
  if (v13 == 0.0)
  {
    v14 = 0;
  }

  return v3 ^ *&v2 ^ v4 ^ v5 ^ v7 ^ v8 ^ v9 ^ v10 ^ v12 ^ v14;
}

uint64_t CMMsl::FallFalsePositiveSuppressionFeatures::FallFalsePositiveSuppressionFeatures(uint64_t this)
{
  *this = off_10041E3B8;
  *(this + 80) = 0;
  return this;
}

{
  *this = off_10041E3B8;
  *(this + 80) = 0;
  return this;
}

void CMMsl::FallFalsePositiveSuppressionFeatures::~FallFalsePositiveSuppressionFeatures(CMMsl::FallFalsePositiveSuppressionFeatures *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::FallFalsePositiveSuppressionFeatures::FallFalsePositiveSuppressionFeatures(uint64_t this, const CMMsl::FallFalsePositiveSuppressionFeatures *a2)
{
  *this = off_10041E3B8;
  *(this + 80) = 0;
  v2 = *(a2 + 40);
  if ((v2 & 4) != 0)
  {
    v4 = *(a2 + 3);
    v3 = 4;
    *(this + 80) = 4;
    *(this + 24) = v4;
    v2 = *(a2 + 40);
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
    v5 = *(a2 + 2);
    v3 |= 2u;
    *(this + 80) = v3;
    *(this + 16) = v5;
    v2 = *(a2 + 40);
  }

LABEL_6:
  if (v2)
  {
    v6 = *(a2 + 1);
    v3 |= 1u;
    *(this + 80) = v3;
    *(this + 8) = v6;
    v2 = *(a2 + 40);
    if ((v2 & 0x200) == 0)
    {
LABEL_8:
      if ((v2 & 0x800) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_20;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 16);
  v3 |= 0x200u;
  *(this + 80) = v3;
  *(this + 64) = v7;
  v2 = *(a2 + 40);
  if ((v2 & 0x800) == 0)
  {
LABEL_9:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  v8 = *(a2 + 18);
  v3 |= 0x800u;
  *(this + 80) = v3;
  *(this + 72) = v8;
  v2 = *(a2 + 40);
  if ((v2 & 0x1000) == 0)
  {
LABEL_10:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  v9 = *(a2 + 19);
  v3 |= 0x1000u;
  *(this + 80) = v3;
  *(this + 76) = v9;
  v2 = *(a2 + 40);
  if ((v2 & 0x400) == 0)
  {
LABEL_11:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_22:
  v10 = *(a2 + 17);
  v3 |= 0x400u;
  *(this + 80) = v3;
  *(this + 68) = v10;
  v2 = *(a2 + 40);
  if ((v2 & 0x20) == 0)
  {
LABEL_12:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_24;
  }

LABEL_23:
  v11 = *(a2 + 12);
  v3 |= 0x20u;
  *(this + 80) = v3;
  *(this + 48) = v11;
  v2 = *(a2 + 40);
  if ((v2 & 0x40) == 0)
  {
LABEL_13:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

LABEL_24:
  v12 = *(a2 + 13);
  v3 |= 0x40u;
  *(this + 80) = v3;
  *(this + 52) = v12;
  v2 = *(a2 + 40);
  if ((v2 & 0x100) == 0)
  {
LABEL_14:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_26;
  }

LABEL_25:
  v13 = *(a2 + 15);
  v3 |= 0x100u;
  *(this + 80) = v3;
  *(this + 60) = v13;
  v2 = *(a2 + 40);
  if ((v2 & 0x10) == 0)
  {
LABEL_15:
    if ((v2 & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_27;
  }

LABEL_26:
  v14 = *(a2 + 5);
  v3 |= 0x10u;
  *(this + 80) = v3;
  *(this + 40) = v14;
  v2 = *(a2 + 40);
  if ((v2 & 8) == 0)
  {
LABEL_16:
    if ((v2 & 0x80) == 0)
    {
      return this;
    }

LABEL_28:
    v16 = *(a2 + 14);
    *(this + 80) = v3 | 0x80;
    *(this + 56) = v16;
    return this;
  }

LABEL_27:
  v15 = *(a2 + 4);
  v3 |= 8u;
  *(this + 80) = v3;
  *(this + 32) = v15;
  if ((*(a2 + 40) & 0x80) != 0)
  {
    goto LABEL_28;
  }

  return this;
}

CMMsl *CMMsl::FallFalsePositiveSuppressionFeatures::operator=(CMMsl *a1, const CMMsl::FallFalsePositiveSuppressionFeatures *a2)
{
  if (a1 != a2)
  {
    CMMsl::FallFalsePositiveSuppressionFeatures::FallFalsePositiveSuppressionFeatures(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::FallFalsePositiveSuppressionFeatures *a2, CMMsl::FallFalsePositiveSuppressionFeatures *a3)
{
  v3 = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v3;
  v4 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v4;
  v5 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v5;
  v6 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v6;
  LODWORD(v6) = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v6;
  v7 = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v7;
  v8 = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v8;
  v9 = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v9;
  LODWORD(v6) = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v6;
  result = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = result;
  LODWORD(v6) = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v6;
  v11 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v11;
  v12 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v12;
  LODWORD(v12) = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v12;
  return result;
}

float CMMsl::FallFalsePositiveSuppressionFeatures::FallFalsePositiveSuppressionFeatures(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041E3B8;
  *(a1 + 80) = *(a2 + 80);
  *(a2 + 80) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 48) = *(a2 + 48);
  result = *(a2 + 52);
  *(a1 + 52) = result;
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 56) = *(a2 + 56);
  return result;
}

CMMsl *CMMsl::FallFalsePositiveSuppressionFeatures::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::FallFalsePositiveSuppressionFeatures::FallFalsePositiveSuppressionFeatures(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::FallFalsePositiveSuppressionFeatures::formatText(CMMsl::FallFalsePositiveSuppressionFeatures *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 40);
  if (v5)
  {
    PB::TextFormatter::format(a2, "aopTsImpact", *(this + 1));
    v5 = *(this + 40);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "aopTsNow", *(this + 2));
  v5 = *(this + 40);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(a2, "aopTsSensor", *(this + 3));
  v5 = *(this + 40);
  if ((v5 & 0x20) == 0)
  {
LABEL_5:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(a2, "nPeaks", *(this + 12));
  v5 = *(this + 40);
  if ((v5 & 0x40) == 0)
  {
LABEL_6:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(a2, "normalizedIQR", *(this + 13));
  v5 = *(this + 40);
  if ((v5 & 0x80) == 0)
  {
LABEL_7:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(a2, "operatingMode", *(this + 14));
  v5 = *(this + 40);
  if ((v5 & 0x100) == 0)
  {
LABEL_8:
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(a2, "repetitiveMotion", *(this + 15));
  v5 = *(this + 40);
  if ((v5 & 8) == 0)
  {
LABEL_9:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  PB::TextFormatter::format(a2, "repetitiveMotionEndTs", *(this + 4));
  v5 = *(this + 40);
  if ((v5 & 0x10) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(a2, "repetitiveMotionStartTs", *(this + 5));
  v5 = *(this + 40);
  if ((v5 & 0x200) == 0)
  {
LABEL_11:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  PB::TextFormatter::format(a2, "seq", *(this + 16));
  v5 = *(this + 40);
  if ((v5 & 0x400) == 0)
  {
LABEL_12:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(a2, "sumHighQPeaksInDecLowFreqFFT", *(this + 17));
  v5 = *(this + 40);
  if ((v5 & 0x800) == 0)
  {
LABEL_13:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_29:
  PB::TextFormatter::format(a2, "sumHighQPeaksInHighFreqFFT", *(this + 18));
  if ((*(this + 40) & 0x1000) != 0)
  {
LABEL_14:
    PB::TextFormatter::format(a2, "sumHighQPeaksInLowFreqFFT", *(this + 19));
  }

LABEL_15:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::FallFalsePositiveSuppressionFeatures::readFrom(CMMsl::FallFalsePositiveSuppressionFeatures *this, PB::Reader *a2)
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
        goto LABEL_223;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 40) |= 4u;
          v22 = *(a2 + 1);
          v2 = *(a2 + 2);
          v23 = *a2;
          if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
          {
            v136 = 0;
            v137 = 0;
            v26 = 0;
            if (v2 <= v22)
            {
              v2 = *(a2 + 1);
            }

            v138 = v2 - v22;
            v139 = (v23 + v22);
            v140 = v22 + 1;
            while (1)
            {
              if (!v138)
              {
                v26 = 0;
                *(a2 + 24) = 1;
                goto LABEL_210;
              }

              v141 = v140;
              v142 = *v139;
              *(a2 + 1) = v141;
              v26 |= (v142 & 0x7F) << v136;
              if ((v142 & 0x80) == 0)
              {
                break;
              }

              v136 += 7;
              --v138;
              ++v139;
              v140 = v141 + 1;
              v14 = v137++ > 8;
              if (v14)
              {
                v26 = 0;
                goto LABEL_209;
              }
            }

            if (*(a2 + 24))
            {
              v26 = 0;
            }

LABEL_209:
            v2 = v141;
          }

          else
          {
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
                goto LABEL_210;
              }

              v24 += 7;
              ++v28;
              v14 = v25++ > 8;
            }

            while (!v14);
            v26 = 0;
          }

LABEL_210:
          *(this + 3) = v26;
          goto LABEL_219;
        case 2u:
          *(this + 40) |= 2u;
          v78 = *(a2 + 1);
          v2 = *(a2 + 2);
          v79 = *a2;
          if (v78 > 0xFFFFFFFFFFFFFFF5 || v78 + 10 > v2)
          {
            v143 = 0;
            v144 = 0;
            v82 = 0;
            if (v2 <= v78)
            {
              v2 = *(a2 + 1);
            }

            v145 = v2 - v78;
            v146 = (v79 + v78);
            v147 = v78 + 1;
            while (1)
            {
              if (!v145)
              {
                v82 = 0;
                *(a2 + 24) = 1;
                goto LABEL_214;
              }

              v148 = v147;
              v149 = *v146;
              *(a2 + 1) = v148;
              v82 |= (v149 & 0x7F) << v143;
              if ((v149 & 0x80) == 0)
              {
                break;
              }

              v143 += 7;
              --v145;
              ++v146;
              v147 = v148 + 1;
              v14 = v144++ > 8;
              if (v14)
              {
                v82 = 0;
LABEL_213:
                v2 = v148;
                goto LABEL_214;
              }
            }

            if (*(a2 + 24))
            {
              v82 = 0;
            }

            goto LABEL_213;
          }

          v80 = 0;
          v81 = 0;
          v82 = 0;
          v83 = (v79 + v78);
          v84 = v78 + 1;
          do
          {
            v2 = v84;
            *(a2 + 1) = v84;
            v85 = *v83++;
            v82 |= (v85 & 0x7F) << v80;
            if ((v85 & 0x80) == 0)
            {
              goto LABEL_214;
            }

            v80 += 7;
            ++v84;
            v14 = v81++ > 8;
          }

          while (!v14);
          v82 = 0;
LABEL_214:
          *(this + 2) = v82;
          goto LABEL_219;
        case 3u:
          *(this + 40) |= 1u;
          v54 = *(a2 + 1);
          v2 = *(a2 + 2);
          v55 = *a2;
          if (v54 > 0xFFFFFFFFFFFFFFF5 || v54 + 10 > v2)
          {
            v115 = 0;
            v116 = 0;
            v58 = 0;
            if (v2 <= v54)
            {
              v2 = *(a2 + 1);
            }

            v117 = v2 - v54;
            v118 = (v55 + v54);
            v119 = v54 + 1;
            while (1)
            {
              if (!v117)
              {
                v58 = 0;
                *(a2 + 24) = 1;
                goto LABEL_198;
              }

              v120 = v119;
              v121 = *v118;
              *(a2 + 1) = v120;
              v58 |= (v121 & 0x7F) << v115;
              if ((v121 & 0x80) == 0)
              {
                break;
              }

              v115 += 7;
              --v117;
              ++v118;
              v119 = v120 + 1;
              v14 = v116++ > 8;
              if (v14)
              {
                v58 = 0;
LABEL_197:
                v2 = v120;
                goto LABEL_198;
              }
            }

            if (*(a2 + 24))
            {
              v58 = 0;
            }

            goto LABEL_197;
          }

          v56 = 0;
          v57 = 0;
          v58 = 0;
          v59 = (v55 + v54);
          v60 = v54 + 1;
          do
          {
            v2 = v60;
            *(a2 + 1) = v60;
            v61 = *v59++;
            v58 |= (v61 & 0x7F) << v56;
            if ((v61 & 0x80) == 0)
            {
              goto LABEL_198;
            }

            v56 += 7;
            ++v60;
            v14 = v57++ > 8;
          }

          while (!v14);
          v58 = 0;
LABEL_198:
          *(this + 1) = v58;
          goto LABEL_219;
        case 4u:
          *(this + 40) |= 0x200u;
          v62 = *(a2 + 1);
          v2 = *(a2 + 2);
          v63 = *a2;
          if (v62 > 0xFFFFFFFFFFFFFFF5 || v62 + 10 > v2)
          {
            v122 = 0;
            v123 = 0;
            v66 = 0;
            if (v2 <= v62)
            {
              v2 = *(a2 + 1);
            }

            v124 = v2 - v62;
            v125 = (v63 + v62);
            v126 = v62 + 1;
            while (1)
            {
              if (!v124)
              {
                LODWORD(v66) = 0;
                *(a2 + 24) = 1;
                goto LABEL_202;
              }

              v127 = v126;
              v128 = *v125;
              *(a2 + 1) = v127;
              v66 |= (v128 & 0x7F) << v122;
              if ((v128 & 0x80) == 0)
              {
                break;
              }

              v122 += 7;
              --v124;
              ++v125;
              v126 = v127 + 1;
              v14 = v123++ > 8;
              if (v14)
              {
                LODWORD(v66) = 0;
LABEL_201:
                v2 = v127;
                goto LABEL_202;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v66) = 0;
            }

            goto LABEL_201;
          }

          v64 = 0;
          v65 = 0;
          v66 = 0;
          v67 = (v63 + v62);
          v68 = v62 + 1;
          do
          {
            v2 = v68;
            *(a2 + 1) = v68;
            v69 = *v67++;
            v66 |= (v69 & 0x7F) << v64;
            if ((v69 & 0x80) == 0)
            {
              goto LABEL_202;
            }

            v64 += 7;
            ++v68;
            v14 = v65++ > 8;
          }

          while (!v14);
          LODWORD(v66) = 0;
LABEL_202:
          *(this + 16) = v66;
          goto LABEL_219;
        case 5u:
          *(this + 40) |= 0x800u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_99;
          }

          *(this + 18) = *(*a2 + v2);
          goto LABEL_173;
        case 6u:
          *(this + 40) |= 0x1000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_99;
          }

          *(this + 19) = *(*a2 + v2);
          goto LABEL_173;
        case 7u:
          *(this + 40) |= 0x400u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_99;
          }

          *(this + 17) = *(*a2 + v2);
          goto LABEL_173;
        case 8u:
          *(this + 40) |= 0x20u;
          v70 = *(a2 + 1);
          v2 = *(a2 + 2);
          v71 = *a2;
          if (v70 > 0xFFFFFFFFFFFFFFF5 || v70 + 10 > v2)
          {
            v129 = 0;
            v130 = 0;
            v74 = 0;
            if (v2 <= v70)
            {
              v2 = *(a2 + 1);
            }

            v131 = v2 - v70;
            v132 = (v71 + v70);
            v133 = v70 + 1;
            while (1)
            {
              if (!v131)
              {
                LODWORD(v74) = 0;
                *(a2 + 24) = 1;
                goto LABEL_206;
              }

              v134 = v133;
              v135 = *v132;
              *(a2 + 1) = v134;
              v74 |= (v135 & 0x7F) << v129;
              if ((v135 & 0x80) == 0)
              {
                break;
              }

              v129 += 7;
              --v131;
              ++v132;
              v133 = v134 + 1;
              v14 = v130++ > 8;
              if (v14)
              {
                LODWORD(v74) = 0;
LABEL_205:
                v2 = v134;
                goto LABEL_206;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v74) = 0;
            }

            goto LABEL_205;
          }

          v72 = 0;
          v73 = 0;
          v74 = 0;
          v75 = (v71 + v70);
          v76 = v70 + 1;
          do
          {
            v2 = v76;
            *(a2 + 1) = v76;
            v77 = *v75++;
            v74 |= (v77 & 0x7F) << v72;
            if ((v77 & 0x80) == 0)
            {
              goto LABEL_206;
            }

            v72 += 7;
            ++v76;
            v14 = v73++ > 8;
          }

          while (!v14);
          LODWORD(v74) = 0;
LABEL_206:
          *(this + 12) = v74;
          goto LABEL_219;
        case 9u:
          *(this + 40) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 <= 0xFFFFFFFFFFFFFFFBLL && v2 + 4 <= *(a2 + 2))
          {
            *(this + 13) = *(*a2 + v2);
LABEL_173:
            v2 = *(a2 + 1) + 4;
            *(a2 + 1) = v2;
          }

          else
          {
LABEL_99:
            *(a2 + 24) = 1;
          }

          goto LABEL_219;
        case 0xAu:
          *(this + 40) |= 0x100u;
          v46 = *(a2 + 1);
          v2 = *(a2 + 2);
          v47 = *a2;
          if (v46 > 0xFFFFFFFFFFFFFFF5 || v46 + 10 > v2)
          {
            v108 = 0;
            v109 = 0;
            v50 = 0;
            if (v2 <= v46)
            {
              v2 = *(a2 + 1);
            }

            v110 = v2 - v46;
            v111 = (v47 + v46);
            v112 = v46 + 1;
            while (1)
            {
              if (!v110)
              {
                LODWORD(v50) = 0;
                *(a2 + 24) = 1;
                goto LABEL_194;
              }

              v113 = v112;
              v114 = *v111;
              *(a2 + 1) = v113;
              v50 |= (v114 & 0x7F) << v108;
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
                LODWORD(v50) = 0;
LABEL_193:
                v2 = v113;
                goto LABEL_194;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v50) = 0;
            }

            goto LABEL_193;
          }

          v48 = 0;
          v49 = 0;
          v50 = 0;
          v51 = (v47 + v46);
          v52 = v46 + 1;
          do
          {
            v2 = v52;
            *(a2 + 1) = v52;
            v53 = *v51++;
            v50 |= (v53 & 0x7F) << v48;
            if ((v53 & 0x80) == 0)
            {
              goto LABEL_194;
            }

            v48 += 7;
            ++v52;
            v14 = v49++ > 8;
          }

          while (!v14);
          LODWORD(v50) = 0;
LABEL_194:
          *(this + 15) = v50;
          goto LABEL_219;
        case 0xBu:
          *(this + 40) |= 0x10u;
          v86 = *(a2 + 1);
          v2 = *(a2 + 2);
          v87 = *a2;
          if (v86 > 0xFFFFFFFFFFFFFFF5 || v86 + 10 > v2)
          {
            v150 = 0;
            v151 = 0;
            v90 = 0;
            if (v2 <= v86)
            {
              v2 = *(a2 + 1);
            }

            v152 = v2 - v86;
            v153 = (v87 + v86);
            v154 = v86 + 1;
            while (1)
            {
              if (!v152)
              {
                v90 = 0;
                *(a2 + 24) = 1;
                goto LABEL_218;
              }

              v155 = v154;
              v156 = *v153;
              *(a2 + 1) = v155;
              v90 |= (v156 & 0x7F) << v150;
              if ((v156 & 0x80) == 0)
              {
                break;
              }

              v150 += 7;
              --v152;
              ++v153;
              v154 = v155 + 1;
              v14 = v151++ > 8;
              if (v14)
              {
                v90 = 0;
LABEL_217:
                v2 = v155;
                goto LABEL_218;
              }
            }

            if (*(a2 + 24))
            {
              v90 = 0;
            }

            goto LABEL_217;
          }

          v88 = 0;
          v89 = 0;
          v90 = 0;
          v91 = (v87 + v86);
          v92 = v86 + 1;
          do
          {
            v2 = v92;
            *(a2 + 1) = v92;
            v93 = *v91++;
            v90 |= (v93 & 0x7F) << v88;
            if ((v93 & 0x80) == 0)
            {
              goto LABEL_218;
            }

            v88 += 7;
            ++v92;
            v14 = v89++ > 8;
          }

          while (!v14);
          v90 = 0;
LABEL_218:
          *(this + 5) = v90;
          goto LABEL_219;
        case 0xCu:
          *(this + 40) |= 8u;
          v30 = *(a2 + 1);
          v2 = *(a2 + 2);
          v31 = *a2;
          if (v30 > 0xFFFFFFFFFFFFFFF5 || v30 + 10 > v2)
          {
            v94 = 0;
            v95 = 0;
            v34 = 0;
            if (v2 <= v30)
            {
              v2 = *(a2 + 1);
            }

            v96 = v2 - v30;
            v97 = (v31 + v30);
            v98 = v30 + 1;
            while (1)
            {
              if (!v96)
              {
                v34 = 0;
                *(a2 + 24) = 1;
                goto LABEL_186;
              }

              v99 = v98;
              v100 = *v97;
              *(a2 + 1) = v99;
              v34 |= (v100 & 0x7F) << v94;
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
                v34 = 0;
LABEL_185:
                v2 = v99;
                goto LABEL_186;
              }
            }

            if (*(a2 + 24))
            {
              v34 = 0;
            }

            goto LABEL_185;
          }

          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = (v31 + v30);
          v36 = v30 + 1;
          do
          {
            v2 = v36;
            *(a2 + 1) = v36;
            v37 = *v35++;
            v34 |= (v37 & 0x7F) << v32;
            if ((v37 & 0x80) == 0)
            {
              goto LABEL_186;
            }

            v32 += 7;
            ++v36;
            v14 = v33++ > 8;
          }

          while (!v14);
          v34 = 0;
LABEL_186:
          *(this + 4) = v34;
          goto LABEL_219;
        case 0xDu:
          *(this + 40) |= 0x80u;
          v38 = *(a2 + 1);
          v2 = *(a2 + 2);
          v39 = *a2;
          if (v38 > 0xFFFFFFFFFFFFFFF5 || v38 + 10 > v2)
          {
            v101 = 0;
            v102 = 0;
            v42 = 0;
            if (v2 <= v38)
            {
              v2 = *(a2 + 1);
            }

            v103 = v2 - v38;
            v104 = (v39 + v38);
            v105 = v38 + 1;
            while (1)
            {
              if (!v103)
              {
                LODWORD(v42) = 0;
                *(a2 + 24) = 1;
                goto LABEL_190;
              }

              v106 = v105;
              v107 = *v104;
              *(a2 + 1) = v106;
              v42 |= (v107 & 0x7F) << v101;
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
                LODWORD(v42) = 0;
LABEL_189:
                v2 = v106;
                goto LABEL_190;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v42) = 0;
            }

            goto LABEL_189;
          }

          v40 = 0;
          v41 = 0;
          v42 = 0;
          v43 = (v39 + v38);
          v44 = v38 + 1;
          do
          {
            v2 = v44;
            *(a2 + 1) = v44;
            v45 = *v43++;
            v42 |= (v45 & 0x7F) << v40;
            if ((v45 & 0x80) == 0)
            {
              goto LABEL_190;
            }

            v40 += 7;
            ++v44;
            v14 = v41++ > 8;
          }

          while (!v14);
          LODWORD(v42) = 0;
LABEL_190:
          *(this + 14) = v42;
          goto LABEL_219;
        default:
          if (!PB::Reader::skip(a2, v10 >> 3, v10 & 7, 0))
          {
            v157 = 0;
            return v157 & 1;
          }

          v2 = *(a2 + 1);
LABEL_219:
          v3 = *(a2 + 2);
          v4 = *(a2 + 24);
          if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
          {
            goto LABEL_223;
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

LABEL_223:
  v157 = v4 ^ 1;
  return v157 & 1;
}

uint64_t CMMsl::FallFalsePositiveSuppressionFeatures::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 80);
  if ((v4 & 4) != 0)
  {
    this = PB::Writer::writeVarInt(a2, *(this + 24), 1u);
    v4 = *(v3 + 80);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::writeVarInt(a2, *(v3 + 16), 2u);
  v4 = *(v3 + 80);
  if ((v4 & 1) == 0)
  {
LABEL_4:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = PB::Writer::writeVarInt(a2, *(v3 + 8), 3u);
  v4 = *(v3 + 80);
  if ((v4 & 0x200) == 0)
  {
LABEL_5:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = PB::Writer::writeVarInt(a2, *(v3 + 64), 4u);
  v4 = *(v3 + 80);
  if ((v4 & 0x800) == 0)
  {
LABEL_6:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = PB::Writer::write(a2, *(v3 + 72), 5u);
  v4 = *(v3 + 80);
  if ((v4 & 0x1000) == 0)
  {
LABEL_7:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = PB::Writer::write(a2, *(v3 + 76), 6u);
  v4 = *(v3 + 80);
  if ((v4 & 0x400) == 0)
  {
LABEL_8:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = PB::Writer::write(a2, *(v3 + 68), 7u);
  v4 = *(v3 + 80);
  if ((v4 & 0x20) == 0)
  {
LABEL_9:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = PB::Writer::writeVarInt(a2, *(v3 + 48), 8u);
  v4 = *(v3 + 80);
  if ((v4 & 0x40) == 0)
  {
LABEL_10:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = PB::Writer::write(a2, *(v3 + 52), 9u);
  v4 = *(v3 + 80);
  if ((v4 & 0x100) == 0)
  {
LABEL_11:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = PB::Writer::writeVarInt(a2, *(v3 + 60), 0xAu);
  v4 = *(v3 + 80);
  if ((v4 & 0x10) == 0)
  {
LABEL_12:
    if ((v4 & 8) == 0)
    {
      goto LABEL_13;
    }

LABEL_26:
    this = PB::Writer::writeVarInt(a2, *(v3 + 32), 0xCu);
    if ((*(v3 + 80) & 0x80) == 0)
    {
      return this;
    }

    goto LABEL_27;
  }

LABEL_25:
  this = PB::Writer::writeVarInt(a2, *(v3 + 40), 0xBu);
  v4 = *(v3 + 80);
  if ((v4 & 8) != 0)
  {
    goto LABEL_26;
  }

LABEL_13:
  if ((v4 & 0x80) == 0)
  {
    return this;
  }

LABEL_27:
  v5 = *(v3 + 56);

  return PB::Writer::writeVarInt(a2, v5, 0xDu);
}

BOOL CMMsl::FallFalsePositiveSuppressionFeatures::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v3 = *(a2 + 80);
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

  if ((*(a1 + 80) & 0x200) != 0)
  {
    if ((*(a2 + 80) & 0x200) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((*(a2 + 80) & 0x200) != 0)
  {
    return 0;
  }

  if ((*(a1 + 80) & 0x800) != 0)
  {
    if ((*(a2 + 80) & 0x800) == 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if ((*(a2 + 80) & 0x800) != 0)
  {
    return 0;
  }

  if ((*(a1 + 80) & 0x1000) != 0)
  {
    if ((*(a2 + 80) & 0x1000) == 0 || *(a1 + 76) != *(a2 + 76))
    {
      return 0;
    }
  }

  else if ((*(a2 + 80) & 0x1000) != 0)
  {
    return 0;
  }

  if ((*(a1 + 80) & 0x400) != 0)
  {
    if ((*(a2 + 80) & 0x400) == 0 || *(a1 + 68) != *(a2 + 68))
    {
      return 0;
    }
  }

  else if ((*(a2 + 80) & 0x400) != 0)
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

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 52) != *(a2 + 52))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if ((*(a1 + 80) & 0x100) != 0)
  {
    if ((*(a2 + 80) & 0x100) == 0 || *(a1 + 60) != *(a2 + 60))
    {
      return 0;
    }
  }

  else if ((*(a2 + 80) & 0x100) != 0)
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

  v4 = (v3 & 0x80) == 0;
  if ((v2 & 0x80) != 0)
  {
    return (v3 & 0x80) != 0 && *(a1 + 56) == *(a2 + 56);
  }

  return v4;
}

uint64_t CMMsl::FallFalsePositiveSuppressionFeatures::hash_value(CMMsl::FallFalsePositiveSuppressionFeatures *this)
{
  v1 = *(this + 40);
  if ((v1 & 4) != 0)
  {
    v2 = *(this + 3);
    if ((v1 & 2) != 0)
    {
LABEL_3:
      v3 = *(this + 2);
      if (v1)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  else
  {
    v2 = 0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if (v1)
  {
LABEL_4:
    v4 = *(this + 1);
    if ((*(this + 40) & 0x200) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_25:
  v4 = 0;
  if ((*(this + 40) & 0x200) != 0)
  {
LABEL_5:
    v5 = *(this + 16);
    if ((*(this + 40) & 0x800) != 0)
    {
      goto LABEL_6;
    }

LABEL_27:
    v7 = 0;
    if ((*(this + 40) & 0x1000) != 0)
    {
      goto LABEL_9;
    }

LABEL_28:
    v9 = 0;
    if ((*(this + 40) & 0x400) != 0)
    {
      goto LABEL_12;
    }

LABEL_29:
    v11 = 0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_30;
  }

LABEL_26:
  v5 = 0;
  if ((*(this + 40) & 0x800) == 0)
  {
    goto LABEL_27;
  }

LABEL_6:
  v6 = *(this + 18);
  v7 = LODWORD(v6);
  if (v6 == 0.0)
  {
    v7 = 0;
  }

  if ((*(this + 40) & 0x1000) == 0)
  {
    goto LABEL_28;
  }

LABEL_9:
  v8 = *(this + 19);
  v9 = LODWORD(v8);
  if (v8 == 0.0)
  {
    v9 = 0;
  }

  if ((*(this + 40) & 0x400) == 0)
  {
    goto LABEL_29;
  }

LABEL_12:
  v10 = *(this + 17);
  v11 = LODWORD(v10);
  if (v10 == 0.0)
  {
    v11 = 0;
  }

  if ((v1 & 0x20) != 0)
  {
LABEL_15:
    v12 = *(this + 12);
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_16;
    }

LABEL_31:
    v14 = 0;
    if ((*(this + 40) & 0x100) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_32;
  }

LABEL_30:
  v12 = 0;
  if ((v1 & 0x40) == 0)
  {
    goto LABEL_31;
  }

LABEL_16:
  v13 = *(this + 13);
  v14 = LODWORD(v13);
  if (v13 == 0.0)
  {
    v14 = 0;
  }

  if ((*(this + 40) & 0x100) != 0)
  {
LABEL_19:
    v15 = *(this + 15);
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_33;
  }

LABEL_32:
  v15 = 0;
  if ((v1 & 0x10) != 0)
  {
LABEL_20:
    v16 = *(this + 5);
    if ((v1 & 8) != 0)
    {
      goto LABEL_21;
    }

LABEL_34:
    v17 = 0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_22;
    }

LABEL_35:
    v18 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v7 ^ v9 ^ v11 ^ v12 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18;
  }

LABEL_33:
  v16 = 0;
  if ((v1 & 8) == 0)
  {
    goto LABEL_34;
  }

LABEL_21:
  v17 = *(this + 4);
  if ((v1 & 0x80) == 0)
  {
    goto LABEL_35;
  }

LABEL_22:
  v18 = *(this + 14);
  return v3 ^ v2 ^ v4 ^ v5 ^ v7 ^ v9 ^ v11 ^ v12 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18;
}

uint64_t CMMsl::FallMetaData::FallMetaData(uint64_t this)
{
  *this = off_10041E3F0;
  *(this + 72) = 0;
  return this;
}

{
  *this = off_10041E3F0;
  *(this + 72) = 0;
  return this;
}

void CMMsl::FallMetaData::~FallMetaData(CMMsl::FallMetaData *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::FallMetaData::FallMetaData(uint64_t this, const CMMsl::FallMetaData *a2)
{
  *this = off_10041E3F0;
  *(this + 72) = 0;
  v2 = *(a2 + 18);
  if (v2)
  {
    v4 = *(a2 + 2);
    v3 = 1;
    *(this + 72) = 1;
    *(this + 8) = v4;
    v2 = *(a2 + 18);
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x20000) != 0)
  {
LABEL_5:
    v5 = *(a2 + 70);
    v3 |= 0x20000u;
    *(this + 72) = v3;
    *(this + 70) = v5;
    v2 = *(a2 + 18);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    v6 = *(a2 + 3);
    v3 |= 2u;
    *(this + 72) = v3;
    *(this + 12) = v6;
    v2 = *(a2 + 18);
    if ((v2 & 0x2000) == 0)
    {
LABEL_8:
      if ((v2 & 0x4000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_25;
    }
  }

  else if ((v2 & 0x2000) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 15);
  v3 |= 0x2000u;
  *(this + 72) = v3;
  *(this + 60) = v7;
  v2 = *(a2 + 18);
  if ((v2 & 0x4000) == 0)
  {
LABEL_9:
    if ((v2 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  v8 = *(a2 + 16);
  v3 |= 0x4000u;
  *(this + 72) = v3;
  *(this + 64) = v8;
  v2 = *(a2 + 18);
  if ((v2 & 4) == 0)
  {
LABEL_10:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  v9 = *(a2 + 4);
  v3 |= 4u;
  *(this + 72) = v3;
  *(this + 16) = v9;
  v2 = *(a2 + 18);
  if ((v2 & 0x20) == 0)
  {
LABEL_11:
    if ((v2 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  v10 = *(a2 + 7);
  v3 |= 0x20u;
  *(this + 72) = v3;
  *(this + 28) = v10;
  v2 = *(a2 + 18);
  if ((v2 & 8) == 0)
  {
LABEL_12:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  v11 = *(a2 + 5);
  v3 |= 8u;
  *(this + 72) = v3;
  *(this + 20) = v11;
  v2 = *(a2 + 18);
  if ((v2 & 0x10) == 0)
  {
LABEL_13:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_29:
  v12 = *(a2 + 6);
  v3 |= 0x10u;
  *(this + 72) = v3;
  *(this + 24) = v12;
  v2 = *(a2 + 18);
  if ((v2 & 0x1000) == 0)
  {
LABEL_14:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_31;
  }

LABEL_30:
  v13 = *(a2 + 14);
  v3 |= 0x1000u;
  *(this + 72) = v3;
  *(this + 56) = v13;
  v2 = *(a2 + 18);
  if ((v2 & 0x800) == 0)
  {
LABEL_15:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_32;
  }

LABEL_31:
  v14 = *(a2 + 13);
  v3 |= 0x800u;
  *(this + 72) = v3;
  *(this + 52) = v14;
  v2 = *(a2 + 18);
  if ((v2 & 0x400) == 0)
  {
LABEL_16:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_33;
  }

LABEL_32:
  v15 = *(a2 + 12);
  v3 |= 0x400u;
  *(this + 72) = v3;
  *(this + 48) = v15;
  v2 = *(a2 + 18);
  if ((v2 & 0x200) == 0)
  {
LABEL_17:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_34;
  }

LABEL_33:
  v16 = *(a2 + 11);
  v3 |= 0x200u;
  *(this + 72) = v3;
  *(this + 44) = v16;
  v2 = *(a2 + 18);
  if ((v2 & 0x40) == 0)
  {
LABEL_18:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_35;
  }

LABEL_34:
  v17 = *(a2 + 8);
  v3 |= 0x40u;
  *(this + 72) = v3;
  *(this + 32) = v17;
  v2 = *(a2 + 18);
  if ((v2 & 0x80) == 0)
  {
LABEL_19:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_36;
  }

LABEL_35:
  v18 = *(a2 + 9);
  v3 |= 0x80u;
  *(this + 72) = v3;
  *(this + 36) = v18;
  v2 = *(a2 + 18);
  if ((v2 & 0x100) == 0)
  {
LABEL_20:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_37;
  }

LABEL_36:
  v19 = *(a2 + 10);
  v3 |= 0x100u;
  *(this + 72) = v3;
  *(this + 40) = v19;
  v2 = *(a2 + 18);
  if ((v2 & 0x10000) == 0)
  {
LABEL_21:
    if ((v2 & 0x8000) == 0)
    {
      return this;
    }

LABEL_38:
    v21 = *(a2 + 68);
    *(this + 72) = v3 | 0x8000;
    *(this + 68) = v21;
    return this;
  }

LABEL_37:
  v20 = *(a2 + 69);
  v3 |= 0x10000u;
  *(this + 72) = v3;
  *(this + 69) = v20;
  if ((*(a2 + 18) & 0x8000) != 0)
  {
    goto LABEL_38;
  }

  return this;
}

CMMsl *CMMsl::FallMetaData::operator=(CMMsl *a1, const CMMsl::FallMetaData *a2)
{
  if (a1 != a2)
  {
    CMMsl::FallMetaData::FallMetaData(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::FallMetaData *a2, CMMsl::FallMetaData *a3)
{
  v3 = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v3;
  v4 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v4;
  LOBYTE(v4) = *(this + 70);
  *(this + 70) = *(a2 + 70);
  *(a2 + 70) = v4;
  v5 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v5;
  v6 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v6;
  v7 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v7;
  v8 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v8;
  v9 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v9;
  v10 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v10;
  v11 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v11;
  v12 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v12;
  v13 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v13;
  v14 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v14;
  v15 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v15;
  v16 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v16;
  v17 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v17;
  result = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = result;
  LOBYTE(v7) = *(this + 69);
  *(this + 69) = *(a2 + 69);
  *(a2 + 69) = v7;
  LOBYTE(v7) = *(this + 68);
  *(this + 68) = *(a2 + 68);
  *(a2 + 68) = v7;
  return result;
}

float CMMsl::FallMetaData::FallMetaData(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041E3F0;
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 72) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 70) = *(a2 + 70);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a1 + 69) = *(a2 + 69);
  *(a1 + 68) = *(a2 + 68);
  return result;
}

CMMsl *CMMsl::FallMetaData::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::FallMetaData::FallMetaData(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::FallMetaData::formatText(CMMsl::FallMetaData *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 18);
  if (v5)
  {
    PB::TextFormatter::format(a2, "crownUpDown", *(this + 2));
    v5 = *(this + 18);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "fallType", *(this + 3));
  v5 = *(this + 18);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_25:
  PB::TextFormatter::format(a2, "impactMaxAccelNormAlertThreshold", *(this + 4));
  v5 = *(this + 18);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(a2, "impactMaxAccelNormLoggingHeartRateThreshold", *(this + 5));
  v5 = *(this + 18);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

LABEL_27:
  PB::TextFormatter::format(a2, "impactMaxAccelNormLoggingHighResolutionSensorDataThreshold", *(this + 6));
  v5 = *(this + 18);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(a2, "impactMaxAccelNormLoggingStatsThreshold", *(this + 7));
  v5 = *(this + 18);
  if ((v5 & 0x8000) == 0)
  {
LABEL_8:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_29:
  PB::TextFormatter::format(a2, "isADLImpact", *(this + 68));
  v5 = *(this + 18);
  if ((v5 & 0x10000) == 0)
  {
LABEL_9:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_30:
  PB::TextFormatter::format(a2, "isFallDetectionFeatureEnabled", *(this + 69));
  v5 = *(this + 18);
  if ((v5 & 0x20000) == 0)
  {
LABEL_10:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_32;
  }

LABEL_31:
  PB::TextFormatter::format(a2, "isNearFall", *(this + 70));
  v5 = *(this + 18);
  if ((v5 & 0x40) == 0)
  {
LABEL_11:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_33;
  }

LABEL_32:
  PB::TextFormatter::format(a2, "metMinutePercentile90", *(this + 8));
  v5 = *(this + 18);
  if ((v5 & 0x80) == 0)
  {
LABEL_12:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(a2, "metMinutePercentile95", *(this + 9));
  v5 = *(this + 18);
  if ((v5 & 0x100) == 0)
  {
LABEL_13:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_35;
  }

LABEL_34:
  PB::TextFormatter::format(a2, "metMinutePercentile98", *(this + 10));
  v5 = *(this + 18);
  if ((v5 & 0x200) == 0)
  {
LABEL_14:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(a2, "metMinutePercentileActual", *(this + 11));
  v5 = *(this + 18);
  if ((v5 & 0x400) == 0)
  {
LABEL_15:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(a2, "otherFallPosteriorRatioDetectionThreshold", *(this + 12));
  v5 = *(this + 18);
  if ((v5 & 0x800) == 0)
  {
LABEL_16:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_38;
  }

LABEL_37:
  PB::TextFormatter::format(a2, "slipFallPosteriorRatioDetectionThreshold", *(this + 13));
  v5 = *(this + 18);
  if ((v5 & 0x1000) == 0)
  {
LABEL_17:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(a2, "tripFallPosteriorRatioDetectionThreshold", *(this + 14));
  v5 = *(this + 18);
  if ((v5 & 0x2000) == 0)
  {
LABEL_18:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_39:
  PB::TextFormatter::format(a2, "userAgeBucket", *(this + 15));
  if ((*(this + 18) & 0x4000) != 0)
  {
LABEL_19:
    PB::TextFormatter::format(a2, "workoutType", *(this + 16));
  }

LABEL_20:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::FallMetaData::readFrom(CMMsl::FallMetaData *this, PB::Reader *a2)
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
        goto LABEL_156;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 18) |= 1u;
          v22 = *(a2 + 1);
          v2 = *(a2 + 2);
          v23 = *a2;
          if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
          {
            v81 = 0;
            v82 = 0;
            v26 = 0;
            if (v2 <= v22)
            {
              v2 = *(a2 + 1);
            }

            v83 = v2 - v22;
            v84 = (v23 + v22);
            v85 = v22 + 1;
            while (1)
            {
              if (!v83)
              {
                LODWORD(v26) = 0;
                *(a2 + 24) = 1;
                goto LABEL_151;
              }

              v86 = v85;
              v87 = *v84;
              *(a2 + 1) = v86;
              v26 |= (v87 & 0x7F) << v81;
              if ((v87 & 0x80) == 0)
              {
                break;
              }

              v81 += 7;
              --v83;
              ++v84;
              v85 = v86 + 1;
              v14 = v82++ > 8;
              if (v14)
              {
                LODWORD(v26) = 0;
                goto LABEL_150;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v26) = 0;
            }

LABEL_150:
            v2 = v86;
          }

          else
          {
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
                goto LABEL_151;
              }

              v24 += 7;
              ++v28;
              v14 = v25++ > 8;
            }

            while (!v14);
            LODWORD(v26) = 0;
          }

LABEL_151:
          *(this + 2) = v26;
          goto LABEL_152;
        case 2u:
          *(this + 18) |= 0x20000u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v57 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v56 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v57 = v56 != 0;
          }

          *(this + 70) = v57;
          goto LABEL_152;
        case 3u:
          *(this + 18) |= 2u;
          v40 = *(a2 + 1);
          v2 = *(a2 + 2);
          v41 = *a2;
          if (v40 > 0xFFFFFFFFFFFFFFF5 || v40 + 10 > v2)
          {
            v67 = 0;
            v68 = 0;
            v44 = 0;
            if (v2 <= v40)
            {
              v2 = *(a2 + 1);
            }

            v69 = v2 - v40;
            v70 = (v41 + v40);
            v71 = v40 + 1;
            while (1)
            {
              if (!v69)
              {
                LODWORD(v44) = 0;
                *(a2 + 24) = 1;
                goto LABEL_143;
              }

              v72 = v71;
              v73 = *v70;
              *(a2 + 1) = v72;
              v44 |= (v73 & 0x7F) << v67;
              if ((v73 & 0x80) == 0)
              {
                break;
              }

              v67 += 7;
              --v69;
              ++v70;
              v71 = v72 + 1;
              v14 = v68++ > 8;
              if (v14)
              {
                LODWORD(v44) = 0;
LABEL_142:
                v2 = v72;
                goto LABEL_143;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v44) = 0;
            }

            goto LABEL_142;
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
              goto LABEL_143;
            }

            v42 += 7;
            ++v46;
            v14 = v43++ > 8;
          }

          while (!v14);
          LODWORD(v44) = 0;
LABEL_143:
          *(this + 3) = v44;
          goto LABEL_152;
        case 4u:
          *(this + 18) |= 0x2000u;
          v48 = *(a2 + 1);
          v2 = *(a2 + 2);
          v49 = *a2;
          if (v48 > 0xFFFFFFFFFFFFFFF5 || v48 + 10 > v2)
          {
            v74 = 0;
            v75 = 0;
            v52 = 0;
            if (v2 <= v48)
            {
              v2 = *(a2 + 1);
            }

            v76 = v2 - v48;
            v77 = (v49 + v48);
            v78 = v48 + 1;
            while (1)
            {
              if (!v76)
              {
                LODWORD(v52) = 0;
                *(a2 + 24) = 1;
                goto LABEL_147;
              }

              v79 = v78;
              v80 = *v77;
              *(a2 + 1) = v79;
              v52 |= (v80 & 0x7F) << v74;
              if ((v80 & 0x80) == 0)
              {
                break;
              }

              v74 += 7;
              --v76;
              ++v77;
              v78 = v79 + 1;
              v14 = v75++ > 8;
              if (v14)
              {
                LODWORD(v52) = 0;
LABEL_146:
                v2 = v79;
                goto LABEL_147;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v52) = 0;
            }

            goto LABEL_146;
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
              goto LABEL_147;
            }

            v50 += 7;
            ++v54;
            v14 = v51++ > 8;
          }

          while (!v14);
          LODWORD(v52) = 0;
LABEL_147:
          *(this + 15) = v52;
          goto LABEL_152;
        case 5u:
          *(this + 18) |= 0x4000u;
          v32 = *(a2 + 1);
          v2 = *(a2 + 2);
          v33 = *a2;
          if (v32 > 0xFFFFFFFFFFFFFFF5 || v32 + 10 > v2)
          {
            v60 = 0;
            v61 = 0;
            v36 = 0;
            if (v2 <= v32)
            {
              v2 = *(a2 + 1);
            }

            v62 = v2 - v32;
            v63 = (v33 + v32);
            v64 = v32 + 1;
            while (1)
            {
              if (!v62)
              {
                LODWORD(v36) = 0;
                *(a2 + 24) = 1;
                goto LABEL_139;
              }

              v65 = v64;
              v66 = *v63;
              *(a2 + 1) = v65;
              v36 |= (v66 & 0x7F) << v60;
              if ((v66 & 0x80) == 0)
              {
                break;
              }

              v60 += 7;
              --v62;
              ++v63;
              v64 = v65 + 1;
              v14 = v61++ > 8;
              if (v14)
              {
                LODWORD(v36) = 0;
LABEL_138:
                v2 = v65;
                goto LABEL_139;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v36) = 0;
            }

            goto LABEL_138;
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
              goto LABEL_139;
            }

            v34 += 7;
            ++v38;
            v14 = v35++ > 8;
          }

          while (!v14);
          LODWORD(v36) = 0;
LABEL_139:
          *(this + 16) = v36;
          goto LABEL_152;
        case 6u:
          *(this + 18) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_91;
          }

          *(this + 4) = *(*a2 + v2);
          goto LABEL_131;
        case 7u:
          *(this + 18) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_91;
          }

          *(this + 7) = *(*a2 + v2);
          goto LABEL_131;
        case 8u:
          *(this + 18) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_91;
          }

          *(this + 5) = *(*a2 + v2);
          goto LABEL_131;
        case 9u:
          *(this + 18) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_91;
          }

          *(this + 6) = *(*a2 + v2);
          goto LABEL_131;
        case 0xAu:
          *(this + 18) |= 0x1000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_91;
          }

          *(this + 14) = *(*a2 + v2);
          goto LABEL_131;
        case 0xBu:
          *(this + 18) |= 0x800u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_91;
          }

          *(this + 13) = *(*a2 + v2);
          goto LABEL_131;
        case 0xCu:
          *(this + 18) |= 0x400u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_91;
          }

          *(this + 12) = *(*a2 + v2);
          goto LABEL_131;
        case 0xDu:
          *(this + 18) |= 0x200u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_91;
          }

          *(this + 11) = *(*a2 + v2);
          goto LABEL_131;
        case 0xEu:
          *(this + 18) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_91;
          }

          *(this + 8) = *(*a2 + v2);
          goto LABEL_131;
        case 0xFu:
          *(this + 18) |= 0x80u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_91;
          }

          *(this + 9) = *(*a2 + v2);
          goto LABEL_131;
        case 0x10u:
          *(this + 18) |= 0x100u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
LABEL_91:
            *(a2 + 24) = 1;
          }

          else
          {
            *(this + 10) = *(*a2 + v2);
LABEL_131:
            v2 = *(a2 + 1) + 4;
            *(a2 + 1) = v2;
          }

          goto LABEL_152;
        case 0x11u:
          *(this + 18) |= 0x10000u;
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

          *(this + 69) = v31;
          goto LABEL_152;
        case 0x12u:
          *(this + 18) |= 0x8000u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v59 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v58 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v59 = v58 != 0;
          }

          *(this + 68) = v59;
          goto LABEL_152;
        default:
          if (!PB::Reader::skip(a2, v10 >> 3, v10 & 7, 0))
          {
            v88 = 0;
            return v88 & 1;
          }

          v2 = *(a2 + 1);
LABEL_152:
          v3 = *(a2 + 2);
          v4 = *(a2 + 24);
          if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
          {
            goto LABEL_156;
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

LABEL_156:
  v88 = v4 ^ 1;
  return v88 & 1;
}

uint64_t CMMsl::FallMetaData::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 72);
  if (v4)
  {
    this = PB::Writer::writeVarInt(a2, *(this + 8), 1u);
    v4 = *(v3 + 72);
    if ((v4 & 0x20000) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((v4 & 0x20000) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 70), 2u);
  v4 = *(v3 + 72);
  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = PB::Writer::writeVarInt(a2, *(v3 + 12), 3u);
  v4 = *(v3 + 72);
  if ((v4 & 0x2000) == 0)
  {
LABEL_5:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = PB::Writer::writeVarInt(a2, *(v3 + 60), 4u);
  v4 = *(v3 + 72);
  if ((v4 & 0x4000) == 0)
  {
LABEL_6:
    if ((v4 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = PB::Writer::writeVarInt(a2, *(v3 + 64), 5u);
  v4 = *(v3 + 72);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = PB::Writer::write(a2, *(v3 + 16), 6u);
  v4 = *(v3 + 72);
  if ((v4 & 0x20) == 0)
  {
LABEL_8:
    if ((v4 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = PB::Writer::write(a2, *(v3 + 28), 7u);
  v4 = *(v3 + 72);
  if ((v4 & 8) == 0)
  {
LABEL_9:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = PB::Writer::write(a2, *(v3 + 20), 8u);
  v4 = *(v3 + 72);
  if ((v4 & 0x10) == 0)
  {
LABEL_10:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = PB::Writer::write(a2, *(v3 + 24), 9u);
  v4 = *(v3 + 72);
  if ((v4 & 0x1000) == 0)
  {
LABEL_11:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = PB::Writer::write(a2, *(v3 + 56), 0xAu);
  v4 = *(v3 + 72);
  if ((v4 & 0x800) == 0)
  {
LABEL_12:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = PB::Writer::write(a2, *(v3 + 52), 0xBu);
  v4 = *(v3 + 72);
  if ((v4 & 0x400) == 0)
  {
LABEL_13:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = PB::Writer::write(a2, *(v3 + 48), 0xCu);
  v4 = *(v3 + 72);
  if ((v4 & 0x200) == 0)
  {
LABEL_14:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = PB::Writer::write(a2, *(v3 + 44), 0xDu);
  v4 = *(v3 + 72);
  if ((v4 & 0x40) == 0)
  {
LABEL_15:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = PB::Writer::write(a2, *(v3 + 32), 0xEu);
  v4 = *(v3 + 72);
  if ((v4 & 0x80) == 0)
  {
LABEL_16:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = PB::Writer::write(a2, *(v3 + 36), 0xFu);
  v4 = *(v3 + 72);
  if ((v4 & 0x100) == 0)
  {
LABEL_17:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

LABEL_36:
    this = PB::Writer::write(a2, *(v3 + 69), 0x11u);
    if ((*(v3 + 72) & 0x8000) == 0)
    {
      return this;
    }

    goto LABEL_37;
  }

LABEL_35:
  this = PB::Writer::write(a2, *(v3 + 40), 0x10u);
  v4 = *(v3 + 72);
  if ((v4 & 0x10000) != 0)
  {
    goto LABEL_36;
  }

LABEL_18:
  if ((v4 & 0x8000) == 0)
  {
    return this;
  }

LABEL_37:
  v5 = *(v3 + 68);

  return PB::Writer::write(a2, v5, 0x12u);
}

BOOL CMMsl::FallMetaData::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 72);
  v3 = *(a2 + 72);
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

  if ((v2 & 0x20000) != 0)
  {
    if ((v3 & 0x20000) == 0 || *(a1 + 70) != *(a2 + 70))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20000) != 0)
  {
    return 0;
  }

  if ((v2 & 2) != 0)
  {
    if ((v3 & 2) == 0 || *(a1 + 12) != *(a2 + 12))
    {
      return 0;
    }
  }

  else if ((v3 & 2) != 0)
  {
    return 0;
  }

  if ((v2 & 0x2000) != 0)
  {
    if ((v3 & 0x2000) == 0 || *(a1 + 60) != *(a2 + 60))
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
    if ((v3 & 0x4000) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((v3 & 0x4000) != 0)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 16) != *(a2 + 16))
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
    if ((v3 & 0x20) == 0 || *(a1 + 28) != *(a2 + 28))
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
    if ((v3 & 8) == 0 || *(a1 + 20) != *(a2 + 20))
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
    if ((v3 & 0x10) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if ((v2 & 0x1000) != 0)
  {
    if ((v3 & 0x1000) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((v3 & 0x1000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x800) != 0)
  {
    if ((v3 & 0x800) == 0 || *(a1 + 52) != *(a2 + 52))
    {
      return 0;
    }
  }

  else if ((v3 & 0x800) != 0)
  {
    return 0;
  }

  if ((v2 & 0x400) != 0)
  {
    if ((v3 & 0x400) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((v3 & 0x400) != 0)
  {
    return 0;
  }

  if ((v2 & 0x200) != 0)
  {
    if ((v3 & 0x200) == 0 || *(a1 + 44) != *(a2 + 44))
    {
      return 0;
    }
  }

  else if ((v3 & 0x200) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 32) != *(a2 + 32))
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
    if ((v3 & 0x80) == 0 || *(a1 + 36) != *(a2 + 36))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if ((v2 & 0x100) != 0)
  {
    if ((v3 & 0x100) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10000) != 0)
  {
    if ((v3 & 0x10000) == 0 || *(a1 + 69) != *(a2 + 69))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10000) != 0)
  {
    return 0;
  }

  v4 = (*(a2 + 72) & 0x8000) == 0;
  if ((v2 & 0x8000) != 0)
  {
    return (v3 & 0x8000) != 0 && *(a1 + 68) == *(a2 + 68);
  }

  return v4;
}

uint64_t CMMsl::FallMetaData::hash_value(CMMsl::FallMetaData *this)
{
  v1 = *(this + 18);
  if (v1)
  {
    v2 = *(this + 2);
    if ((v1 & 0x20000) != 0)
    {
LABEL_3:
      v3 = *(this + 70);
      if ((v1 & 2) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_42;
    }
  }

  else
  {
    v2 = 0;
    if ((v1 & 0x20000) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((v1 & 2) != 0)
  {
LABEL_4:
    v4 = *(this + 3);
    if ((v1 & 0x2000) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_43;
  }

LABEL_42:
  v4 = 0;
  if ((v1 & 0x2000) != 0)
  {
LABEL_5:
    v5 = *(this + 15);
    if ((v1 & 0x4000) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_44;
  }

LABEL_43:
  v5 = 0;
  if ((v1 & 0x4000) != 0)
  {
LABEL_6:
    v6 = *(this + 16);
    if ((v1 & 4) != 0)
    {
      goto LABEL_7;
    }

LABEL_45:
    v8 = 0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_10;
    }

LABEL_46:
    v10 = 0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_13;
    }

LABEL_47:
    v12 = 0;
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_16;
    }

LABEL_48:
    v14 = 0;
    if ((v1 & 0x1000) != 0)
    {
      goto LABEL_19;
    }

LABEL_49:
    v16 = 0;
    if ((v1 & 0x800) != 0)
    {
      goto LABEL_22;
    }

LABEL_50:
    v18 = 0;
    if ((v1 & 0x400) != 0)
    {
      goto LABEL_25;
    }

LABEL_51:
    v20 = 0;
    if ((v1 & 0x200) != 0)
    {
      goto LABEL_28;
    }

LABEL_52:
    v22 = 0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_31;
    }

LABEL_53:
    v24 = 0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_34;
    }

    goto LABEL_54;
  }

LABEL_44:
  v6 = 0;
  if ((v1 & 4) == 0)
  {
    goto LABEL_45;
  }

LABEL_7:
  v7 = *(this + 4);
  v8 = LODWORD(v7);
  if (v7 == 0.0)
  {
    v8 = 0;
  }

  if ((v1 & 0x20) == 0)
  {
    goto LABEL_46;
  }

LABEL_10:
  v9 = *(this + 7);
  v10 = LODWORD(v9);
  if (v9 == 0.0)
  {
    v10 = 0;
  }

  if ((v1 & 8) == 0)
  {
    goto LABEL_47;
  }

LABEL_13:
  v11 = *(this + 5);
  v12 = LODWORD(v11);
  if (v11 == 0.0)
  {
    v12 = 0;
  }

  if ((v1 & 0x10) == 0)
  {
    goto LABEL_48;
  }

LABEL_16:
  v13 = *(this + 6);
  v14 = LODWORD(v13);
  if (v13 == 0.0)
  {
    v14 = 0;
  }

  if ((v1 & 0x1000) == 0)
  {
    goto LABEL_49;
  }

LABEL_19:
  v15 = *(this + 14);
  v16 = LODWORD(v15);
  if (v15 == 0.0)
  {
    v16 = 0;
  }

  if ((v1 & 0x800) == 0)
  {
    goto LABEL_50;
  }

LABEL_22:
  v17 = *(this + 13);
  v18 = LODWORD(v17);
  if (v17 == 0.0)
  {
    v18 = 0;
  }

  if ((v1 & 0x400) == 0)
  {
    goto LABEL_51;
  }

LABEL_25:
  v19 = *(this + 12);
  v20 = LODWORD(v19);
  if (v19 == 0.0)
  {
    v20 = 0;
  }

  if ((v1 & 0x200) == 0)
  {
    goto LABEL_52;
  }

LABEL_28:
  v21 = *(this + 11);
  v22 = LODWORD(v21);
  if (v21 == 0.0)
  {
    v22 = 0;
  }

  if ((v1 & 0x40) == 0)
  {
    goto LABEL_53;
  }

LABEL_31:
  v23 = *(this + 8);
  v24 = LODWORD(v23);
  if (v23 == 0.0)
  {
    v24 = 0;
  }

  if ((v1 & 0x80) != 0)
  {
LABEL_34:
    v25 = *(this + 9);
    v26 = LODWORD(v25);
    if (v25 == 0.0)
    {
      v26 = 0;
    }

    if ((v1 & 0x100) != 0)
    {
      goto LABEL_37;
    }

LABEL_55:
    v28 = 0;
    goto LABEL_56;
  }

LABEL_54:
  v26 = 0;
  if ((v1 & 0x100) == 0)
  {
    goto LABEL_55;
  }

LABEL_37:
  v27 = *(this + 10);
  v28 = LODWORD(v27);
  if (v27 == 0.0)
  {
    v28 = 0;
  }

LABEL_56:
  if ((v1 & 0x10000) != 0)
  {
    v29 = *(this + 69);
    if ((v1 & 0x8000) != 0)
    {
      goto LABEL_58;
    }

LABEL_60:
    v30 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v8 ^ v10 ^ v12 ^ v14 ^ v16 ^ v18 ^ v20 ^ v22 ^ v24 ^ v26 ^ v28 ^ v29 ^ v30;
  }

  v29 = 0;
  if ((v1 & 0x8000) == 0)
  {
    goto LABEL_60;
  }

LABEL_58:
  v30 = *(this + 68);
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v8 ^ v10 ^ v12 ^ v14 ^ v16 ^ v18 ^ v20 ^ v22 ^ v24 ^ v26 ^ v28 ^ v29 ^ v30;
}

double CMMsl::FallSnippet::FallSnippet(CMMsl::FallSnippet *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = off_10041E428;
  result = 0.0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 32) = 0;
  return result;
}

{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = off_10041E428;
  result = 0.0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 32) = 0;
  return result;
}

void CMMsl::FallSnippet::~FallSnippet(CMMsl::FallSnippet *this)
{
  *this = off_10041E428;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 14);
  *(this + 14) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 13);
  *(this + 13) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 12);
  *(this + 12) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 11);
  *(this + 11) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 10);
  *(this + 10) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 9);
  *(this + 9) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(this + 8);
  *(this + 8) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(this + 7);
  *(this + 7) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = *(this + 6);
  *(this + 6) = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = *(this + 5);
  *(this + 5) = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = *(this + 4);
  *(this + 4) = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = *(this + 2);
  *(this + 2) = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v15 = *(this + 1);
  *(this + 1) = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::FallSnippet::~FallSnippet(this);

  operator delete();
}

uint64_t CMMsl::FallSnippet::FallSnippet(uint64_t this, const CMMsl::FallSnippet *a2)
{
  *this = off_10041E428;
  *(this + 8) = 0;
  *(this + 32) = 0u;
  *(this + 16) = 0;
  *(this + 48) = 0u;
  *(this + 64) = 0u;
  *(this + 80) = 0u;
  *(this + 96) = 0u;
  *(this + 112) = 0u;
  *(this + 128) = 0;
  if (*(a2 + 128))
  {
    v2 = *(a2 + 3);
    *(this + 128) = 1;
    *(this + 24) = v2;
  }

  if (*(a2 + 11))
  {
    operator new();
  }

  if (*(a2 + 1))
  {
    operator new();
  }

  if (*(a2 + 2))
  {
    operator new();
  }

  if (*(a2 + 8))
  {
    operator new();
  }

  if (*(a2 + 9))
  {
    operator new();
  }

  if (*(a2 + 4))
  {
    operator new();
  }

  if (*(a2 + 13))
  {
    operator new();
  }

  if (*(a2 + 10))
  {
    operator new();
  }

  if (*(a2 + 15))
  {
    operator new();
  }

  if (*(a2 + 6))
  {
    operator new();
  }

  if (*(a2 + 7))
  {
    operator new();
  }

  if (*(a2 + 14))
  {
    operator new();
  }

  if (*(a2 + 5))
  {
    operator new();
  }

  if (*(a2 + 12))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::FallSnippet::operator=(uint64_t a1, const CMMsl::FallSnippet *a2)
{
  if (a1 != a2)
  {
    CMMsl::FallSnippet::FallSnippet(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::FallSnippet::~FallSnippet(v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::FallSnippet *a2, CMMsl::FallSnippet *a3)
{
  v3 = *(this + 128);
  *(this + 128) = *(a2 + 32);
  *(a2 + 32) = v3;
  v4 = *(this + 88);
  *(this + 88) = *(a2 + 11);
  *(a2 + 11) = v4;
  v5 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v5;
  v7 = *(this + 16);
  v6 = *(this + 24);
  v8 = *(a2 + 3);
  *(this + 16) = *(a2 + 2);
  *(this + 24) = v8;
  *(a2 + 2) = v7;
  *(a2 + 3) = v6;
  v9 = *(this + 64);
  *(this + 64) = *(a2 + 8);
  *(a2 + 8) = v9;
  v10 = *(this + 72);
  *(this + 72) = *(a2 + 9);
  *(a2 + 9) = v10;
  v11 = *(this + 32);
  *(this + 32) = *(a2 + 4);
  *(a2 + 4) = v11;
  v12 = *(this + 104);
  *(this + 104) = *(a2 + 13);
  *(a2 + 13) = v12;
  v13 = *(this + 80);
  *(this + 80) = *(a2 + 10);
  *(a2 + 10) = v13;
  v14 = *(this + 120);
  *(this + 120) = *(a2 + 15);
  *(a2 + 15) = v14;
  v15 = *(this + 48);
  *(this + 48) = *(a2 + 6);
  *(a2 + 6) = v15;
  v16 = *(this + 56);
  *(this + 56) = *(a2 + 7);
  *(a2 + 7) = v16;
  v17 = *(this + 112);
  *(this + 112) = *(a2 + 14);
  *(a2 + 14) = v17;
  v18 = *(this + 40);
  *(this + 40) = *(a2 + 5);
  *(a2 + 5) = v18;
  v19 = *(this + 96);
  *(this + 96) = *(a2 + 12);
  *(a2 + 12) = v19;
  return this;
}

uint64_t CMMsl::FallSnippet::FallSnippet(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041E428;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 32) = 0u;
  v5 = (a1 + 32);
  *(a1 + 16) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = *(a2 + 128);
  *(a2 + 128) = 0;
  *(a1 + 24) = *(a2 + 24);
  v6 = *(a2 + 88);
  *(a2 + 88) = 0;
  v7 = *(a1 + 88);
  *(a1 + 88) = v6;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(a2 + 8);
  *(a2 + 8) = 0;
  v9 = *v4;
  *v4 = v8;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(a2 + 16);
  *(a2 + 16) = 0;
  v11 = *(a1 + 16);
  *(a1 + 16) = v10;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = *(a2 + 64);
  *(a2 + 64) = 0;
  v13 = *(a1 + 64);
  *(a1 + 64) = v12;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = *(a2 + 72);
  *(a2 + 72) = 0;
  v15 = *(a1 + 72);
  *(a1 + 72) = v14;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v16 = *(a2 + 32);
  *(a2 + 32) = 0;
  v17 = *v5;
  *v5 = v16;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  v18 = *(a2 + 104);
  *(a2 + 104) = 0;
  v19 = *(a1 + 104);
  *(a1 + 104) = v18;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  v20 = *(a2 + 80);
  *(a2 + 80) = 0;
  v21 = *(a1 + 80);
  *(a1 + 80) = v20;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  v22 = *(a2 + 120);
  *(a2 + 120) = 0;
  v23 = *(a1 + 120);
  *(a1 + 120) = v22;
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  v24 = *(a2 + 48);
  *(a2 + 48) = 0;
  v25 = *(a1 + 48);
  *(a1 + 48) = v24;
  if (v25)
  {
    (*(*v25 + 8))(v25);
  }

  v26 = *(a2 + 56);
  *(a2 + 56) = 0;
  v27 = *(a1 + 56);
  *(a1 + 56) = v26;
  if (v27)
  {
    (*(*v27 + 8))(v27);
  }

  v28 = *(a2 + 112);
  *(a2 + 112) = 0;
  v29 = *(a1 + 112);
  *(a1 + 112) = v28;
  if (v29)
  {
    (*(*v29 + 8))(v29);
  }

  v30 = *(a2 + 40);
  *(a2 + 40) = 0;
  v31 = *(a1 + 40);
  *(a1 + 40) = v30;
  if (v31)
  {
    (*(*v31 + 8))(v31);
  }

  v32 = *(a2 + 96);
  *(a2 + 96) = 0;
  v33 = *(a1 + 96);
  *(a1 + 96) = v32;
  if (v33)
  {
    (*(*v33 + 8))(v33);
  }

  return a1;
}

uint64_t CMMsl::FallSnippet::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::FallSnippet::FallSnippet(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::FallSnippet::~FallSnippet(v5);
  }

  return a1;
}

uint64_t CMMsl::FallSnippet::formatText(CMMsl::FallSnippet *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "accel100");
  }

  v6 = *(this + 2);
  if (v6)
  {
    (*(*v6 + 32))(v6, a2, "accel800");
  }

  if (*(this + 128))
  {
    PB::TextFormatter::format(a2, "aopTimestamp", *(this + 3));
  }

  v7 = *(this + 4);
  if (v7)
  {
    (*(*v7 + 32))(v7, a2, "dm");
  }

  v8 = *(this + 5);
  if (v8)
  {
    (*(*v8 + 32))(v8, a2, "dmAlwaysOn");
  }

  v9 = *(this + 6);
  if (v9)
  {
    (*(*v9 + 32))(v9, a2, "fallState");
  }

  v10 = *(this + 7);
  if (v10)
  {
    (*(*v10 + 32))(v10, a2, "fallStats");
  }

  v11 = *(this + 8);
  if (v11)
  {
    (*(*v11 + 32))(v11, a2, "gyro100");
  }

  v12 = *(this + 9);
  if (v12)
  {
    (*(*v12 + 32))(v12, a2, "gyro200");
  }

  v13 = *(this + 10);
  if (v13)
  {
    (*(*v13 + 32))(v13, a2, "heartRate");
  }

  v14 = *(this + 11);
  if (v14)
  {
    (*(*v14 + 32))(v14, a2, "meta");
  }

  v15 = *(this + 12);
  if (v15)
  {
    (*(*v15 + 32))(v15, a2, "odometerEntry");
  }

  v16 = *(this + 13);
  if (v16)
  {
    (*(*v16 + 32))(v16, a2, "pressure");
  }

  v17 = *(this + 14);
  if (v17)
  {
    (*(*v17 + 32))(v17, a2, "suppressionFeatures");
  }

  v18 = *(this + 15);
  if (v18)
  {
    (*(*v18 + 32))(v18, a2, "wristState");
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::FallSnippet::readFrom(CMMsl::FallSnippet *this, PB::Reader *a2)
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
        v17 = 0;
        v18 = v3 >= v2;
        v19 = v3 - v2;
        if (!v18)
        {
          v19 = 0;
        }

        v20 = (v7 + v2);
        v21 = v2 + 1;
        while (1)
        {
          if (!v19)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            goto LABEL_63;
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

LABEL_22:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      switch((v10 >> 3))
      {
        case 2u:
          *(this + 128) |= 1u;
          v24 = *(a2 + 1);
          v23 = *(a2 + 2);
          v25 = *a2;
          if (v24 <= 0xFFFFFFFFFFFFFFF5 && v24 + 10 <= v23)
          {
            v26 = 0;
            v27 = 0;
            v28 = 0;
            v29 = (v25 + v24);
            v30 = v24 + 1;
            do
            {
              *(a2 + 1) = v30;
              v31 = *v29++;
              v28 |= (v31 & 0x7F) << v26;
              if ((v31 & 0x80) == 0)
              {
                goto LABEL_61;
              }

              v26 += 7;
              ++v30;
              v14 = v27++ > 8;
            }

            while (!v14);
LABEL_57:
            v28 = 0;
            goto LABEL_61;
          }

          v32 = 0;
          v33 = 0;
          v28 = 0;
          v18 = v23 >= v24;
          v34 = v23 - v24;
          if (!v18)
          {
            v34 = 0;
          }

          v35 = (v25 + v24);
          v36 = v24 + 1;
          break;
        case 3u:
          operator new();
        case 4u:
          operator new();
        case 5u:
          operator new();
        case 6u:
          operator new();
        case 7u:
          operator new();
        case 8u:
          operator new();
        case 9u:
          operator new();
        case 0xAu:
          operator new();
        case 0xBu:
          operator new();
        case 0xCu:
          operator new();
        case 0xDu:
          operator new();
        case 0xEu:
          operator new();
        case 0xFu:
          operator new();
        case 0x10u:
          operator new();
        default:
          if (PB::Reader::skip(a2, v10 >> 3, v10 & 7, 0))
          {
            goto LABEL_47;
          }

          v39 = 0;
          return v39 & 1;
      }

      while (1)
      {
        if (!v34)
        {
          v28 = 0;
          *(a2 + 24) = 1;
          goto LABEL_61;
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
          goto LABEL_57;
        }
      }

      if (*(a2 + 24))
      {
        v28 = 0;
      }

LABEL_61:
      *(this + 3) = v28;
LABEL_47:
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

LABEL_63:
  v39 = v4 ^ 1;
  return v39 & 1;
}

uint64_t CMMsl::Pressure::Pressure(uint64_t this)
{
  *this = off_1004212F8;
  *(this + 24) = 0;
  return this;
}

{
  *this = off_1004212F8;
  *(this + 24) = 0;
  return this;
}

void *CMMsl::StreamingHeartRateData::StreamingHeartRateData(void *this)
{
  *this = off_100422328;
  this[1] = 0;
  return this;
}

{
  *this = off_100422328;
  this[1] = 0;
  return this;
}

uint64_t CMMsl::WatchOnWristState::WatchOnWristState(uint64_t this)
{
  *this = off_100422D00;
  *(this + 40) = 0;
  return this;
}

{
  *this = off_100422D00;
  *(this + 40) = 0;
  return this;
}

uint64_t CMMsl::FallState::FallState(uint64_t this)
{
  *this = off_10041E460;
  *(this + 48) = 0;
  return this;
}

{
  *this = off_10041E460;
  *(this + 48) = 0;
  return this;
}

void *CMMsl::FallStats::FallStats(void *this)
{
  *this = off_10041E498;
  this[27] = 0;
  return this;
}

{
  *this = off_10041E498;
  this[27] = 0;
  return this;
}

uint64_t CMMsl::OdometerWithAltitude::OdometerWithAltitude(uint64_t this)
{
  *this = off_100420680;
  *(this + 72) = 0;
  *(this + 80) = 0;
  return this;
}

{
  *this = off_100420680;
  *(this + 72) = 0;
  *(this + 80) = 0;
  return this;
}

uint64_t CMMsl::FallSnippet::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if (*(this + 128))
  {
    this = PB::Writer::writeVarInt(a2, *(this + 24), 2u);
  }

  v4 = v3[11];
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4, 3u);
  }

  v5 = v3[1];
  if (v5)
  {
    this = PB::Writer::writeSubmessage(a2, v5, 4u);
  }

  v6 = v3[2];
  if (v6)
  {
    this = PB::Writer::writeSubmessage(a2, v6, 5u);
  }

  v7 = v3[8];
  if (v7)
  {
    this = PB::Writer::writeSubmessage(a2, v7, 6u);
  }

  v8 = v3[9];
  if (v8)
  {
    this = PB::Writer::writeSubmessage(a2, v8, 7u);
  }

  v9 = v3[4];
  if (v9)
  {
    this = PB::Writer::writeSubmessage(a2, v9, 8u);
  }

  v10 = v3[13];
  if (v10)
  {
    this = PB::Writer::writeSubmessage(a2, v10, 9u);
  }

  v11 = v3[10];
  if (v11)
  {
    this = PB::Writer::writeSubmessage(a2, v11, 0xAu);
  }

  v12 = v3[15];
  if (v12)
  {
    this = PB::Writer::writeSubmessage(a2, v12, 0xBu);
  }

  v13 = v3[6];
  if (v13)
  {
    this = PB::Writer::writeSubmessage(a2, v13, 0xCu);
  }

  v14 = v3[7];
  if (v14)
  {
    this = PB::Writer::writeSubmessage(a2, v14, 0xDu);
  }

  v15 = v3[14];
  if (v15)
  {
    this = PB::Writer::writeSubmessage(a2, v15, 0xEu);
  }

  v16 = v3[5];
  if (v16)
  {
    this = PB::Writer::writeSubmessage(a2, v16, 0xFu);
  }

  v17 = v3[12];
  if (v17)
  {

    return PB::Writer::writeSubmessage(a2, v17, 0x10u);
  }

  return this;
}

BOOL CMMsl::FallSnippet::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 128);
  if (*(a1 + 128))
  {
    if ((*(a2 + 128) & 1) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if (*(a2 + 128))
  {
    return 0;
  }

  v5 = *(a1 + 88);
  v6 = *(a2 + 88);
  if (v5)
  {
    if (!v6 || !CMMsl::FallMetaData::operator==(v5, v6))
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v7 = *(a1 + 8);
  v8 = *(a2 + 8);
  if (v7)
  {
    if (!v8 || !CMMsl::Accel::operator==(v7, v8))
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v9 = *(a1 + 16);
  v10 = *(a2 + 16);
  if (v9)
  {
    if (!v10 || !CMMsl::Accel::operator==(v9, v10))
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v11 = *(a1 + 64);
  v12 = *(a2 + 64);
  if (v11)
  {
    if (!v12 || !CMMsl::Gyro::operator==(v11, v12))
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  v13 = *(a1 + 72);
  v14 = *(a2 + 72);
  if (v13)
  {
    if (!v14 || !CMMsl::Gyro::operator==(v13, v14))
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  v15 = *(a1 + 32);
  v16 = *(a2 + 32);
  if (v15)
  {
    if (!v16 || !CMMsl::DeviceMotion::operator==(v15, v16))
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  v17 = *(a1 + 104);
  v18 = *(a2 + 104);
  if (v17)
  {
    if (!v18 || !CMMsl::Pressure::operator==(v17, v18))
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  v19 = *(a1 + 80);
  v20 = *(a2 + 80);
  if (v19)
  {
    if (!v20)
    {
      return 0;
    }

    v21 = *(v19 + 8);
    v22 = *(v20 + 8);
    if (v21)
    {
      if (!v22 || !CMMsl::OnsetHeartRateData::operator==(v21, v22))
      {
        return 0;
      }
    }

    else if (v22)
    {
      return 0;
    }
  }

  else if (v20)
  {
    return 0;
  }

  v23 = *(a1 + 120);
  v24 = *(a2 + 120);
  if (v23)
  {
    if (!v24 || !CMMsl::WatchOnWristState::operator==(v23, v24))
    {
      return 0;
    }
  }

  else if (v24)
  {
    return 0;
  }

  v25 = *(a1 + 48);
  v26 = *(a2 + 48);
  if (v25)
  {
    if (!v26 || !CMMsl::FallState::operator==(v25, v26))
    {
      return 0;
    }
  }

  else if (v26)
  {
    return 0;
  }

  v27 = *(a1 + 56);
  v28 = *(a2 + 56);
  if (v27)
  {
    if (!v28 || !CMMsl::FallStats::operator==(v27, v28))
    {
      return 0;
    }
  }

  else if (v28)
  {
    return 0;
  }

  v29 = *(a1 + 112);
  v30 = *(a2 + 112);
  if (v29)
  {
    if (!v30 || !CMMsl::FallFalsePositiveSuppressionFeatures::operator==(v29, v30))
    {
      return 0;
    }
  }

  else if (v30)
  {
    return 0;
  }

  v31 = *(a1 + 40);
  v32 = *(a2 + 40);
  if (v31)
  {
    if (!v32 || !CMMsl::DeviceMotion::operator==(v31, v32))
    {
      return 0;
    }
  }

  else if (v32)
  {
    return 0;
  }

  v33 = *(a2 + 96);
  result = v33 == 0;
  if (!*(a1 + 96))
  {
    return result;
  }

  return v33 && CMMsl::OdometerWithAltitude::operator==(*(a1 + 96), v33);
}

BOOL CMMsl::Pressure::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    if ((*(a2 + 24) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 24))
  {
    return 0;
  }

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

  v2 = (*(a2 + 24) & 4) == 0;
  if ((*(a1 + 24) & 4) != 0)
  {
    return (*(a2 + 24) & 4) != 0 && *(a1 + 20) == *(a2 + 20);
  }

  return v2;
}

BOOL CMMsl::StreamingHeartRateData::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  result = v3 == 0;
  if (v2)
  {
    return v3 && CMMsl::OnsetHeartRateData::operator==(v2, v3);
  }

  return result;
}

BOOL CMMsl::WatchOnWristState::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = *(a2 + 40);
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

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 28) != *(a2 + 28))
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
    if ((v3 & 0x40) == 0 || *(a1 + 37) != *(a2 + 37))
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
    if ((v3 & 0x20) == 0 || *(a1 + 36) != *(a2 + 36))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  if ((v2 & v3 & 0x80) != 0)
  {
    if (*(a1 + 38) != *(a2 + 38))
    {
      return 0;
    }
  }

  else if (((v2 | v3) & 0x80) != 0)
  {
    return 0;
  }

  v4 = (v3 & 2) == 0;
  if ((v2 & 2) != 0)
  {
    return (v3 & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v4;
}

BOOL CMMsl::FallState::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a2 + 48);
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

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if ((v2 & v3 & 0x80) != 0)
  {
    return *(a1 + 44) == *(a2 + 44);
  }

  else
  {
    return ((v2 | v3) & 0x80u) == 0;
  }
}

BOOL CMMsl::FallStats::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 216);
  v3 = *(a2 + 216);
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

  if ((v2 & 0x8000000000) != 0)
  {
    if ((v3 & 0x8000000000) == 0 || *(a1 + 176) != *(a2 + 176))
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x4000000000) != 0)
  {
    if ((v3 & 0x4000000000) == 0 || *(a1 + 172) != *(a2 + 172))
    {
      return 0;
    }
  }

  else if ((v3 & 0x4000000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80000000000) != 0)
  {
    if ((v3 & 0x80000000000) == 0 || *(a1 + 192) != *(a2 + 192))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80000000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40000000000) != 0)
  {
    if ((v3 & 0x40000000000) == 0 || *(a1 + 188) != *(a2 + 188))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40000000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x800000000000) != 0)
  {
    if ((v3 & 0x800000000000) == 0 || *(a1 + 208) != *(a2 + 208))
    {
      return 0;
    }
  }

  else if ((v3 & 0x800000000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x400000000000) != 0)
  {
    if ((v3 & 0x400000000000) == 0 || *(a1 + 204) != *(a2 + 204))
    {
      return 0;
    }
  }

  else if ((v3 & 0x400000000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10000000000) != 0)
  {
    if ((v3 & 0x10000000000) == 0 || *(a1 + 180) != *(a2 + 180))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10000000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x100000000000) != 0)
  {
    if ((v3 & 0x100000000000) == 0 || *(a1 + 196) != *(a2 + 196))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100000000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x1000000000000) != 0)
  {
    if ((v3 & 0x1000000000000) == 0 || *(a1 + 212) != *(a2 + 212))
    {
      return 0;
    }
  }

  else if ((v3 & 0x1000000000000) != 0)
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

  if ((v2 & 0x2000000000) != 0)
  {
    if ((v3 & 0x2000000000) == 0 || *(a1 + 168) != *(a2 + 168))
    {
      return 0;
    }
  }

  else if ((v3 & 0x2000000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20000000000) != 0)
  {
    if ((v3 & 0x20000000000) == 0 || *(a1 + 184) != *(a2 + 184))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20000000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x200000000000) != 0)
  {
    if ((v3 & 0x200000000000) == 0 || *(a1 + 200) != *(a2 + 200))
    {
      return 0;
    }
  }

  else if ((v3 & 0x200000000000) != 0)
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

  if ((v2 & 0x1000000000) != 0)
  {
    if ((v3 & 0x1000000000) == 0 || *(a1 + 164) != *(a2 + 164))
    {
      return 0;
    }
  }

  else if ((v3 & 0x1000000000) != 0)
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

  if ((v2 & 0x800000000) != 0)
  {
    if ((v3 & 0x800000000) == 0 || *(a1 + 160) != *(a2 + 160))
    {
      return 0;
    }
  }

  else if ((v3 & 0x800000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x400000000) != 0)
  {
    if ((v3 & 0x400000000) == 0 || *(a1 + 156) != *(a2 + 156))
    {
      return 0;
    }
  }

  else if ((v3 & 0x400000000) != 0)
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

  v4 = (*(a2 + 216) & 8) == 0;
  if ((v2 & 8) != 0)
  {
    return (v3 & 8) != 0 && *(a1 + 32) == *(a2 + 32);
  }

  return v4;
}

BOOL CMMsl::OdometerWithAltitude::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 72);
  v5 = *(a2 + 72);
  if (v4)
  {
    if (!v5 || !CMMsl::Odometer::operator==(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v6 = *(a1 + 80);
  v7 = *(a2 + 80);
  if ((v6 & 4) != 0)
  {
    if ((v7 & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((v7 & 4) != 0)
  {
    return 0;
  }

  if ((v6 & 8) != 0)
  {
    if ((v7 & 8) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v7 & 8) != 0)
  {
    return 0;
  }

  if ((v6 & 0x40) != 0)
  {
    if ((v7 & 0x40) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((v7 & 0x40) != 0)
  {
    return 0;
  }

  if ((v6 & v7 & 0x80) != 0)
  {
    if (*(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if (((v6 | v7) & 0x80) != 0)
  {
    return 0;
  }

  if ((v6 & 2) != 0)
  {
    if ((v7 & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((v7 & 2) != 0)
  {
    return 0;
  }

  if (v6)
  {
    if ((v7 & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if ((v6 & 0x20) != 0)
  {
    if ((v7 & 0x20) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((v7 & 0x20) != 0)
  {
    return 0;
  }

  result = (v7 & 0x10) == 0;
  if ((v6 & 0x10) == 0)
  {
    return result;
  }

  return (v7 & 0x10) != 0 && *(a1 + 40) == *(a2 + 40);
}

unint64_t CMMsl::FallSnippet::hash_value(CMMsl::FallSnippet *this)
{
  if (*(this + 128))
  {
    v31 = *(this + 3);
  }

  else
  {
    v31 = 0;
  }

  v2 = *(this + 11);
  if (v2)
  {
    v30 = CMMsl::FallMetaData::hash_value(v2);
  }

  else
  {
    v30 = 0;
  }

  v3 = *(this + 1);
  if (v3)
  {
    v29 = CMMsl::Accel::hash_value(v3);
  }

  else
  {
    v29 = 0;
  }

  v4 = *(this + 2);
  if (v4)
  {
    v28 = CMMsl::Accel::hash_value(v4);
  }

  else
  {
    v28 = 0;
  }

  v5 = *(this + 8);
  if (v5)
  {
    v27 = CMMsl::Gyro::hash_value(v5);
  }

  else
  {
    v27 = 0;
  }

  v6 = *(this + 9);
  if (v6)
  {
    v7 = CMMsl::Gyro::hash_value(v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(this + 4);
  if (v8)
  {
    v9 = CMMsl::DeviceMotion::hash_value(v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(this + 13);
  if (v10)
  {
    v11 = CMMsl::Pressure::hash_value(v10);
  }

  else
  {
    v11 = 0;
  }

  v12 = *(this + 10);
  if (v12 && (v13 = *(v12 + 8)) != 0)
  {
    v14 = CMMsl::OnsetHeartRateData::hash_value(v13);
  }

  else
  {
    v14 = 0;
  }

  v15 = *(this + 15);
  if (v15)
  {
    v16 = CMMsl::WatchOnWristState::hash_value(v15);
  }

  else
  {
    v16 = 0;
  }

  v17 = *(this + 6);
  if (v17)
  {
    v18 = CMMsl::FallState::hash_value(v17);
  }

  else
  {
    v18 = 0;
  }

  v19 = *(this + 7);
  if (v19)
  {
    v20 = CMMsl::FallStats::hash_value(v19);
  }

  else
  {
    v20 = 0;
  }

  v21 = *(this + 14);
  if (v21)
  {
    v22 = CMMsl::FallFalsePositiveSuppressionFeatures::hash_value(v21);
  }

  else
  {
    v22 = 0;
  }

  v23 = *(this + 5);
  if (v23)
  {
    v24 = CMMsl::DeviceMotion::hash_value(v23);
  }

  else
  {
    v24 = 0;
  }

  v25 = *(this + 12);
  if (v25)
  {
    v25 = CMMsl::OdometerWithAltitude::hash_value(v25);
  }

  return v30 ^ v31 ^ v29 ^ v28 ^ v27 ^ v7 ^ v9 ^ v11 ^ v14 ^ v16 ^ v18 ^ v20 ^ v22 ^ v24 ^ v25;
}