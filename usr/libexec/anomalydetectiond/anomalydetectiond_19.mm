BOOL CMMsl::FallDetectionReplay::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 364);
  v3 = *(a2 + 364);
  if ((v2 & 0x40000000) != 0)
  {
    if ((v3 & 0x40000000) == 0 || *(a1 + 248) != *(a2 + 248))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80000000) != 0)
  {
    if ((v3 & 0x80000000) == 0 || *(a1 + 256) != *(a2 + 256))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80000) != 0)
  {
    if ((v3 & 0x80000) == 0 || *(a1 + 160) != *(a2 + 160))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x100000) != 0)
  {
    if ((v3 & 0x100000) == 0 || *(a1 + 168) != *(a2 + 168))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x200000) != 0)
  {
    if ((v3 & 0x200000) == 0 || *(a1 + 176) != *(a2 + 176))
    {
      return 0;
    }
  }

  else if ((v3 & 0x200000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x8000000000) != 0)
  {
    if ((v3 & 0x8000000000) == 0 || *(a1 + 320) != *(a2 + 320))
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40000000000) != 0)
  {
    if ((v3 & 0x40000000000) == 0 || *(a1 + 344) != *(a2 + 344))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40000000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10000000000) != 0)
  {
    if ((v3 & 0x10000000000) == 0 || *(a1 + 328) != *(a2 + 328))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10000000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20000000000) != 0)
  {
    if ((v3 & 0x20000000000) == 0 || *(a1 + 336) != *(a2 + 336))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20000000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80000000000) != 0)
  {
    if ((v3 & 0x80000000000) == 0 || *(a1 + 352) != *(a2 + 352))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80000000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x100000000000) != 0)
  {
    if ((v3 & 0x100000000000) == 0 || *(a1 + 360) != *(a2 + 360))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100000000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x1000000) != 0)
  {
    if ((v3 & 0x1000000) == 0 || *(a1 + 200) != *(a2 + 200))
    {
      return 0;
    }
  }

  else if ((v3 & 0x1000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x8000000) != 0)
  {
    if ((v3 & 0x8000000) == 0 || *(a1 + 224) != *(a2 + 224))
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x2000000) != 0)
  {
    if ((v3 & 0x2000000) == 0 || *(a1 + 208) != *(a2 + 208))
    {
      return 0;
    }
  }

  else if ((v3 & 0x2000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x4000000) != 0)
  {
    if ((v3 & 0x4000000) == 0 || *(a1 + 216) != *(a2 + 216))
    {
      return 0;
    }
  }

  else if ((v3 & 0x4000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x400000) != 0)
  {
    if ((v3 & 0x400000) == 0 || *(a1 + 184) != *(a2 + 184))
    {
      return 0;
    }
  }

  else if ((v3 & 0x400000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x800000) != 0)
  {
    if ((v3 & 0x800000) == 0 || *(a1 + 192) != *(a2 + 192))
    {
      return 0;
    }
  }

  else if ((v3 & 0x800000) != 0)
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

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 56) != *(a2 + 56))
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
    if ((v3 & 0x100) == 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100) != 0)
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

  if ((v2 & 0x200) != 0)
  {
    if ((v3 & 0x200) == 0 || *(a1 + 80) != *(a2 + 80))
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
    if ((v3 & 0x400) == 0 || *(a1 + 88) != *(a2 + 88))
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
    if ((v3 & 0x800) == 0 || *(a1 + 96) != *(a2 + 96))
    {
      return 0;
    }
  }

  else if ((v3 & 0x800) != 0)
  {
    return 0;
  }

  if ((v2 & 0x4000) != 0)
  {
    if ((v3 & 0x4000) == 0 || *(a1 + 120) != *(a2 + 120))
    {
      return 0;
    }
  }

  else if ((v3 & 0x4000) != 0)
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

  if ((v2 & 0x8000) != 0)
  {
    if ((v3 & 0x8000) == 0 || *(a1 + 128) != *(a2 + 128))
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x800000000) != 0)
  {
    if ((v3 & 0x800000000) == 0 || *(a1 + 288) != *(a2 + 288))
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
    if ((v3 & 0x400000000) == 0 || *(a1 + 280) != *(a2 + 280))
    {
      return 0;
    }
  }

  else if ((v3 & 0x400000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x200000000) != 0)
  {
    if ((v3 & 0x200000000) == 0 || *(a1 + 272) != *(a2 + 272))
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
    if ((v3 & 0x100000000) == 0 || *(a1 + 264) != *(a2 + 264))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20000000) != 0)
  {
    if ((v3 & 0x20000000) == 0 || *(a1 + 240) != *(a2 + 240))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10000000) != 0)
  {
    if ((v3 & 0x10000000) == 0 || *(a1 + 232) != *(a2 + 232))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x2000) != 0)
  {
    if ((v3 & 0x2000) == 0 || *(a1 + 112) != *(a2 + 112))
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
    if ((v3 & 0x10000) == 0 || *(a1 + 136) != *(a2 + 136))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10000) != 0)
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

  if ((v2 & 0x40000) != 0)
  {
    if ((v3 & 0x40000) == 0 || *(a1 + 152) != *(a2 + 152))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20000) != 0)
  {
    if ((v3 & 0x20000) == 0 || *(a1 + 144) != *(a2 + 144))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if ((v2 & 0x1000) != 0)
  {
    if ((v3 & 0x1000) == 0 || *(a1 + 104) != *(a2 + 104))
    {
      return 0;
    }
  }

  else if ((v3 & 0x1000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x4000000000) != 0)
  {
    if ((v3 & 0x4000000000) == 0 || *(a1 + 312) != *(a2 + 312))
    {
      return 0;
    }
  }

  else if ((v3 & 0x4000000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x1000000000) != 0)
  {
    if ((v3 & 0x1000000000) == 0 || *(a1 + 296) != *(a2 + 296))
    {
      return 0;
    }
  }

  else if ((v3 & 0x1000000000) != 0)
  {
    return 0;
  }

  v4 = (v3 & 0x2000000000) == 0;
  if ((v2 & 0x2000000000) != 0)
  {
    return (v3 & 0x2000000000) != 0 && *(a1 + 304) == *(a2 + 304);
  }

  return v4;
}

uint64_t CMMsl::FallDetectionReplay::hash_value(CMMsl::FallDetectionReplay *this)
{
  v1 = *(this + 364);
  if ((v1 & 0x40000000) != 0)
  {
    v2 = *(this + 31);
    if ((v1 & 0x80000000) != 0)
    {
LABEL_3:
      v47 = *(this + 32);
      if ((v1 & 0x80000) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_51;
    }
  }

  else
  {
    v2 = 0;
    if ((v1 & 0x80000000) != 0)
    {
      goto LABEL_3;
    }
  }

  v47 = 0;
  if ((v1 & 0x80000) != 0)
  {
LABEL_4:
    v46 = *(this + 20);
    if ((v1 & 0x100000) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_52;
  }

LABEL_51:
  v46 = 0;
  if ((v1 & 0x100000) != 0)
  {
LABEL_5:
    v45 = *(this + 21);
    if ((v1 & 0x200000) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_53;
  }

LABEL_52:
  v45 = 0;
  if ((v1 & 0x200000) != 0)
  {
LABEL_6:
    v44 = *(this + 22);
    if ((v1 & 0x8000000000) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_54;
  }

LABEL_53:
  v44 = 0;
  if ((v1 & 0x8000000000) != 0)
  {
LABEL_7:
    v43 = *(this + 40);
    if ((v1 & 0x40000000000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_55;
  }

LABEL_54:
  v43 = 0;
  if ((v1 & 0x40000000000) != 0)
  {
LABEL_8:
    v42 = *(this + 43);
    if ((v1 & 0x10000000000) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_56;
  }

LABEL_55:
  v42 = 0;
  if ((v1 & 0x10000000000) != 0)
  {
LABEL_9:
    v41 = *(this + 41);
    if ((v1 & 0x20000000000) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_57;
  }

LABEL_56:
  v41 = 0;
  if ((v1 & 0x20000000000) != 0)
  {
LABEL_10:
    v40 = *(this + 42);
    if ((v1 & 0x80000000000) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_58;
  }

LABEL_57:
  v40 = 0;
  if ((v1 & 0x80000000000) != 0)
  {
LABEL_11:
    v39 = *(this + 44);
    if ((v1 & 0x100000000000) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_59;
  }

LABEL_58:
  v39 = 0;
  if ((v1 & 0x100000000000) != 0)
  {
LABEL_12:
    v38 = *(this + 90);
    if ((v1 & 0x1000000) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_60;
  }

LABEL_59:
  v38 = 0;
  if ((v1 & 0x1000000) != 0)
  {
LABEL_13:
    v37 = *(this + 25);
    if ((v1 & 0x8000000) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_61;
  }

LABEL_60:
  v37 = 0;
  if ((v1 & 0x8000000) != 0)
  {
LABEL_14:
    v36 = *(this + 28);
    if ((v1 & 0x2000000) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_62;
  }

LABEL_61:
  v36 = 0;
  if ((v1 & 0x2000000) != 0)
  {
LABEL_15:
    v35 = *(this + 26);
    if ((v1 & 0x4000000) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_63;
  }

LABEL_62:
  v35 = 0;
  if ((v1 & 0x4000000) != 0)
  {
LABEL_16:
    v34 = *(this + 27);
    if ((v1 & 0x400000) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_64;
  }

LABEL_63:
  v34 = 0;
  if ((v1 & 0x400000) != 0)
  {
LABEL_17:
    v33 = *(this + 23);
    if ((v1 & 0x800000) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_65;
  }

LABEL_64:
  v33 = 0;
  if ((v1 & 0x800000) != 0)
  {
LABEL_18:
    v32 = *(this + 24);
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_66;
  }

LABEL_65:
  v32 = 0;
  if ((v1 & 0x20) != 0)
  {
LABEL_19:
    v31 = *(this + 6);
    if ((v1 & 8) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_67;
  }

LABEL_66:
  v31 = 0;
  if ((v1 & 8) != 0)
  {
LABEL_20:
    v30 = *(this + 4);
    if (v1)
    {
      goto LABEL_21;
    }

    goto LABEL_68;
  }

LABEL_67:
  v30 = 0;
  if (v1)
  {
LABEL_21:
    v3 = *(this + 1);
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_69;
  }

LABEL_68:
  v3 = 0;
  if ((v1 & 0x40) != 0)
  {
LABEL_22:
    v4 = *(this + 7);
    if ((v1 & 0x100) != 0)
    {
      goto LABEL_23;
    }

    goto LABEL_70;
  }

LABEL_69:
  v4 = 0;
  if ((v1 & 0x100) != 0)
  {
LABEL_23:
    v5 = *(this + 9);
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_71;
  }

LABEL_70:
  v5 = 0;
  if ((v1 & 0x10) != 0)
  {
LABEL_24:
    v6 = *(this + 5);
    if ((v1 & 0x200) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_72;
  }

LABEL_71:
  v6 = 0;
  if ((v1 & 0x200) != 0)
  {
LABEL_25:
    v7 = *(this + 10);
    if ((v1 & 0x400) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_73;
  }

LABEL_72:
  v7 = 0;
  if ((v1 & 0x400) != 0)
  {
LABEL_26:
    v8 = *(this + 11);
    if ((v1 & 0x800) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_74;
  }

LABEL_73:
  v8 = 0;
  if ((v1 & 0x800) != 0)
  {
LABEL_27:
    v9 = *(this + 12);
    if ((v1 & 0x4000) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_75;
  }

LABEL_74:
  v9 = 0;
  if ((v1 & 0x4000) != 0)
  {
LABEL_28:
    v10 = *(this + 15);
    if ((v1 & 2) != 0)
    {
      goto LABEL_29;
    }

    goto LABEL_76;
  }

LABEL_75:
  v10 = 0;
  if ((v1 & 2) != 0)
  {
LABEL_29:
    v11 = *(this + 2);
    if ((v1 & 0x8000) != 0)
    {
      goto LABEL_30;
    }

    goto LABEL_77;
  }

LABEL_76:
  v11 = 0;
  if ((v1 & 0x8000) != 0)
  {
LABEL_30:
    v12 = *(this + 16);
    if ((v1 & 0x800000000) != 0)
    {
      goto LABEL_31;
    }

    goto LABEL_78;
  }

LABEL_77:
  v12 = 0;
  if ((v1 & 0x800000000) != 0)
  {
LABEL_31:
    v13 = *(this + 36);
    if ((v1 & 0x400000000) != 0)
    {
      goto LABEL_32;
    }

    goto LABEL_79;
  }

LABEL_78:
  v13 = 0;
  if ((v1 & 0x400000000) != 0)
  {
LABEL_32:
    v14 = *(this + 35);
    if ((v1 & 0x200000000) != 0)
    {
      goto LABEL_33;
    }

    goto LABEL_80;
  }

LABEL_79:
  v14 = 0;
  if ((v1 & 0x200000000) != 0)
  {
LABEL_33:
    v15 = *(this + 34);
    if ((v1 & 0x100000000) != 0)
    {
      goto LABEL_34;
    }

    goto LABEL_81;
  }

LABEL_80:
  v15 = 0;
  if ((v1 & 0x100000000) != 0)
  {
LABEL_34:
    v16 = *(this + 33);
    if ((v1 & 0x20000000) != 0)
    {
      goto LABEL_35;
    }

    goto LABEL_82;
  }

LABEL_81:
  v16 = 0;
  if ((v1 & 0x20000000) != 0)
  {
LABEL_35:
    v17 = *(this + 30);
    if ((v1 & 0x10000000) != 0)
    {
      goto LABEL_36;
    }

    goto LABEL_83;
  }

LABEL_82:
  v17 = 0;
  if ((v1 & 0x10000000) != 0)
  {
LABEL_36:
    v18 = *(this + 29);
    if ((v1 & 0x2000) != 0)
    {
      goto LABEL_37;
    }

    goto LABEL_84;
  }

LABEL_83:
  v18 = 0;
  if ((v1 & 0x2000) != 0)
  {
LABEL_37:
    v19 = *(this + 14);
    if ((v1 & 0x10000) != 0)
    {
      goto LABEL_38;
    }

    goto LABEL_85;
  }

LABEL_84:
  v19 = 0;
  if ((v1 & 0x10000) != 0)
  {
LABEL_38:
    v20 = *(this + 17);
    if ((v1 & 4) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_86;
  }

LABEL_85:
  v20 = 0;
  if ((v1 & 4) != 0)
  {
LABEL_39:
    v21 = *(this + 3);
    if ((v1 & 0x40000) != 0)
    {
      goto LABEL_40;
    }

    goto LABEL_87;
  }

LABEL_86:
  v21 = 0;
  if ((v1 & 0x40000) != 0)
  {
LABEL_40:
    v22 = *(this + 19);
    if ((v1 & 0x20000) != 0)
    {
      goto LABEL_41;
    }

    goto LABEL_88;
  }

LABEL_87:
  v22 = 0;
  if ((v1 & 0x20000) != 0)
  {
LABEL_41:
    v23 = *(this + 18);
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_42;
    }

    goto LABEL_89;
  }

LABEL_88:
  v23 = 0;
  if ((v1 & 0x80) != 0)
  {
LABEL_42:
    v24 = *(this + 8);
    if ((v1 & 0x1000) != 0)
    {
      goto LABEL_43;
    }

    goto LABEL_90;
  }

LABEL_89:
  v24 = 0;
  if ((v1 & 0x1000) != 0)
  {
LABEL_43:
    v25 = *(this + 13);
    if ((v1 & 0x4000000000) != 0)
    {
      goto LABEL_44;
    }

    goto LABEL_91;
  }

LABEL_90:
  v25 = 0;
  if ((v1 & 0x4000000000) != 0)
  {
LABEL_44:
    v26 = *(this + 39);
    if ((v1 & 0x1000000000) != 0)
    {
      goto LABEL_45;
    }

    goto LABEL_92;
  }

LABEL_91:
  v26 = 0;
  if ((v1 & 0x1000000000) != 0)
  {
LABEL_45:
    v27 = *(this + 37);
    if ((v1 & 0x2000000000) != 0)
    {
      goto LABEL_46;
    }

LABEL_93:
    v28 = 0.0;
    return v47 ^ v2 ^ v46 ^ v45 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ *&v28;
  }

LABEL_92:
  v27 = 0;
  if ((v1 & 0x2000000000) == 0)
  {
    goto LABEL_93;
  }

LABEL_46:
  v28 = *(this + 38);
  if (v28 == 0.0)
  {
    v28 = 0.0;
  }

  return v47 ^ v2 ^ v46 ^ v45 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ *&v28;
}

void *CMMsl::FallDetectionStateMachine::FallDetectionStateMachine(void *this)
{
  *this = off_10041E310;
  *(this + 156) = 0;
  return this;
}

{
  *this = off_10041E310;
  *(this + 156) = 0;
  return this;
}

void CMMsl::FallDetectionStateMachine::~FallDetectionStateMachine(CMMsl::FallDetectionStateMachine *this)
{
  PB::Base::~Base(this);

  operator delete();
}

double CMMsl::FallDetectionStateMachine::FallDetectionStateMachine(CMMsl::FallDetectionStateMachine *this, const CMMsl::FallDetectionStateMachine *a2)
{
  *this = off_10041E310;
  *(this + 156) = 0;
  v2 = *(a2 + 156);
  if ((v2 & 4) != 0)
  {
    result = *(a2 + 3);
    v3 = 4;
    *(this + 156) = 4;
    *(this + 3) = result;
    v2 = *(a2 + 156);
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
    v3 |= 8uLL;
    *(this + 156) = v3;
    *(this + 4) = v5;
    v2 = *(a2 + 156);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    v6 = *(a2 + 2);
    v3 |= 2uLL;
    *(this + 156) = v3;
    *(this + 2) = v6;
    v2 = *(a2 + 156);
    if ((v2 & 0x400) == 0)
    {
LABEL_8:
      if ((v2 & 0x200) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_43;
    }
  }

  else if ((v2 & 0x400) == 0)
  {
    goto LABEL_8;
  }

  LODWORD(result) = *(a2 + 16);
  v3 |= 0x400uLL;
  *(this + 156) = v3;
  *(this + 16) = LODWORD(result);
  v2 = *(a2 + 156);
  if ((v2 & 0x200) == 0)
  {
LABEL_9:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_44;
  }

LABEL_43:
  LODWORD(result) = *(a2 + 15);
  v3 |= 0x200uLL;
  *(this + 156) = v3;
  *(this + 15) = LODWORD(result);
  v2 = *(a2 + 156);
  if ((v2 & 0x100) == 0)
  {
LABEL_10:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_45;
  }

LABEL_44:
  LODWORD(result) = *(a2 + 14);
  v3 |= 0x100uLL;
  *(this + 156) = v3;
  *(this + 14) = LODWORD(result);
  v2 = *(a2 + 156);
  if ((v2 & 0x800) == 0)
  {
LABEL_11:
    if ((v2 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_46;
  }

LABEL_45:
  v7 = *(a2 + 17);
  v3 |= 0x800uLL;
  *(this + 156) = v3;
  *(this + 17) = v7;
  v2 = *(a2 + 156);
  if ((v2 & 0x80000000) == 0)
  {
LABEL_12:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_47;
  }

LABEL_46:
  v8 = *(a2 + 37);
  v3 |= 0x80000000uLL;
  *(this + 156) = v3;
  *(this + 37) = v8;
  v2 = *(a2 + 156);
  if ((v2 & 0x1000) == 0)
  {
LABEL_13:
    if ((v2 & 0x10000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_48;
  }

LABEL_47:
  v9 = *(a2 + 18);
  v3 |= 0x1000uLL;
  *(this + 156) = v3;
  *(this + 18) = v9;
  v2 = *(a2 + 156);
  if ((v2 & 0x10000000) == 0)
  {
LABEL_14:
    if ((v2 & 0x20000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_49;
  }

LABEL_48:
  LODWORD(result) = *(a2 + 34);
  v3 |= 0x10000000uLL;
  *(this + 156) = v3;
  *(this + 34) = LODWORD(result);
  v2 = *(a2 + 156);
  if ((v2 & 0x20000000) == 0)
  {
LABEL_15:
    if ((v2 & 0x8000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_50;
  }

LABEL_49:
  LODWORD(result) = *(a2 + 35);
  v3 |= 0x20000000uLL;
  *(this + 156) = v3;
  *(this + 35) = LODWORD(result);
  v2 = *(a2 + 156);
  if ((v2 & 0x8000000) == 0)
  {
LABEL_16:
    if ((v2 & 0x40000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_51;
  }

LABEL_50:
  LODWORD(result) = *(a2 + 33);
  v3 |= 0x8000000uLL;
  *(this + 156) = v3;
  *(this + 33) = LODWORD(result);
  v2 = *(a2 + 156);
  if ((v2 & 0x40000) == 0)
  {
LABEL_17:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_52;
  }

LABEL_51:
  v10 = *(a2 + 24);
  v3 |= 0x40000uLL;
  *(this + 156) = v3;
  *(this + 24) = v10;
  v2 = *(a2 + 156);
  if ((v2 & 0x4000) == 0)
  {
LABEL_18:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_53;
  }

LABEL_52:
  LODWORD(result) = *(a2 + 20);
  v3 |= 0x4000uLL;
  *(this + 156) = v3;
  *(this + 20) = LODWORD(result);
  v2 = *(a2 + 156);
  if ((v2 & 0x20) == 0)
  {
LABEL_19:
    if ((v2 & 0x400000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_54;
  }

LABEL_53:
  v11 = *(a2 + 11);
  v3 |= 0x20uLL;
  *(this + 156) = v3;
  *(this + 11) = v11;
  v2 = *(a2 + 156);
  if ((v2 & 0x400000000) == 0)
  {
LABEL_20:
    if ((v2 & 0x200000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_55;
  }

LABEL_54:
  v12 = *(a2 + 154);
  v3 |= 0x400000000uLL;
  *(this + 156) = v3;
  *(this + 154) = v12;
  v2 = *(a2 + 156);
  if ((v2 & 0x200000000) == 0)
  {
LABEL_21:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_56;
  }

LABEL_55:
  v13 = *(a2 + 153);
  v3 |= 0x200000000uLL;
  *(this + 156) = v3;
  *(this + 153) = v13;
  v2 = *(a2 + 156);
  if ((v2 & 0x80) == 0)
  {
LABEL_22:
    if ((v2 & 0x40000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_57;
  }

LABEL_56:
  v14 = *(a2 + 13);
  v3 |= 0x80uLL;
  *(this + 156) = v3;
  *(this + 13) = v14;
  v2 = *(a2 + 156);
  if ((v2 & 0x40000000) == 0)
  {
LABEL_23:
    if ((v2 & 0x2000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_58;
  }

LABEL_57:
  v15 = *(a2 + 36);
  v3 |= 0x40000000uLL;
  *(this + 156) = v3;
  *(this + 36) = v15;
  v2 = *(a2 + 156);
  if ((v2 & 0x2000000) == 0)
  {
LABEL_24:
    if ((v2 & 0x800000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_59;
  }

LABEL_58:
  v16 = *(a2 + 31);
  v3 |= 0x2000000uLL;
  *(this + 156) = v3;
  *(this + 31) = v16;
  v2 = *(a2 + 156);
  if ((v2 & 0x800000000) == 0)
  {
LABEL_25:
    if ((v2 & 0x100000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_60;
  }

LABEL_59:
  v17 = *(a2 + 155);
  v3 |= 0x800000000uLL;
  *(this + 156) = v3;
  *(this + 155) = v17;
  v2 = *(a2 + 156);
  if ((v2 & 0x100000000) == 0)
  {
LABEL_26:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_61;
  }

LABEL_60:
  v18 = *(a2 + 152);
  v3 |= &_mh_execute_header;
  *(this + 156) = v3;
  *(this + 152) = v18;
  v2 = *(a2 + 156);
  if ((v2 & 0x20000) == 0)
  {
LABEL_27:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_62;
  }

LABEL_61:
  v19 = *(a2 + 23);
  v3 |= 0x20000uLL;
  *(this + 156) = v3;
  *(this + 23) = v19;
  v2 = *(a2 + 156);
  if ((v2 & 0x200000) == 0)
  {
LABEL_28:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_63;
  }

LABEL_62:
  v20 = *(a2 + 27);
  v3 |= 0x200000uLL;
  *(this + 156) = v3;
  *(this + 27) = v20;
  v2 = *(a2 + 156);
  if ((v2 & 0x400000) == 0)
  {
LABEL_29:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_64;
  }

LABEL_63:
  v21 = *(a2 + 28);
  v3 |= 0x400000uLL;
  *(this + 156) = v3;
  *(this + 28) = v21;
  v2 = *(a2 + 156);
  if ((v2 & 0x80000) == 0)
  {
LABEL_30:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_65;
  }

LABEL_64:
  v22 = *(a2 + 25);
  v3 |= 0x80000uLL;
  *(this + 156) = v3;
  *(this + 25) = v22;
  v2 = *(a2 + 156);
  if ((v2 & 0x8000) == 0)
  {
LABEL_31:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_66;
  }

LABEL_65:
  v23 = *(a2 + 21);
  v3 |= 0x8000uLL;
  *(this + 156) = v3;
  *(this + 21) = v23;
  v2 = *(a2 + 156);
  if ((v2 & 0x800000) == 0)
  {
LABEL_32:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_67;
  }

LABEL_66:
  LODWORD(result) = *(a2 + 29);
  v3 |= 0x800000uLL;
  *(this + 156) = v3;
  *(this + 29) = LODWORD(result);
  v2 = *(a2 + 156);
  if ((v2 & 0x100000) == 0)
  {
LABEL_33:
    if ((v2 & 0x4000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_68;
  }

LABEL_67:
  v24 = *(a2 + 26);
  v3 |= 0x100000uLL;
  *(this + 156) = v3;
  *(this + 26) = v24;
  v2 = *(a2 + 156);
  if ((v2 & 0x4000000) == 0)
  {
LABEL_34:
    if ((v2 & 0x1000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_69;
  }

LABEL_68:
  LODWORD(result) = *(a2 + 32);
  v3 |= 0x4000000uLL;
  *(this + 156) = v3;
  *(this + 32) = LODWORD(result);
  v2 = *(a2 + 156);
  if ((v2 & 0x1000000) == 0)
  {
LABEL_35:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_70;
  }

LABEL_69:
  v25 = *(a2 + 30);
  v3 |= 0x1000000uLL;
  *(this + 156) = v3;
  *(this + 30) = v25;
  v2 = *(a2 + 156);
  if ((v2 & 0x10) == 0)
  {
LABEL_36:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_71;
  }

LABEL_70:
  v26 = *(a2 + 10);
  v3 |= 0x10uLL;
  *(this + 156) = v3;
  *(this + 10) = v26;
  v2 = *(a2 + 156);
  if ((v2 & 0x40) == 0)
  {
LABEL_37:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_72;
  }

LABEL_71:
  LODWORD(result) = *(a2 + 12);
  v3 |= 0x40uLL;
  *(this + 156) = v3;
  *(this + 12) = LODWORD(result);
  v2 = *(a2 + 156);
  if ((v2 & 0x10000) == 0)
  {
LABEL_38:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_73;
  }

LABEL_72:
  v27 = *(a2 + 22);
  v3 |= 0x10000uLL;
  *(this + 156) = v3;
  *(this + 22) = v27;
  v2 = *(a2 + 156);
  if ((v2 & 0x2000) == 0)
  {
LABEL_39:
    if ((v2 & 1) == 0)
    {
      return result;
    }

LABEL_74:
    result = *(a2 + 1);
    *(this + 156) = v3 | 1;
    *(this + 1) = result;
    return result;
  }

LABEL_73:
  v28 = *(a2 + 19);
  v3 |= 0x2000uLL;
  *(this + 156) = v3;
  *(this + 19) = v28;
  if (*(a2 + 156))
  {
    goto LABEL_74;
  }

  return result;
}

CMMsl *CMMsl::FallDetectionStateMachine::operator=(CMMsl *a1, const CMMsl::FallDetectionStateMachine *a2)
{
  if (a1 != a2)
  {
    CMMsl::FallDetectionStateMachine::FallDetectionStateMachine(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::FallDetectionStateMachine *a2, CMMsl::FallDetectionStateMachine *a3)
{
  v3 = *(this + 156);
  *(this + 156) = *(a2 + 156);
  *(a2 + 156) = v3;
  v4 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v4;
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v6;
  LODWORD(v4) = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v4;
  LODWORD(v4) = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v4;
  LODWORD(v4) = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v4;
  LODWORD(v6) = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v6;
  LODWORD(v6) = *(this + 37);
  *(this + 37) = *(a2 + 37);
  *(a2 + 37) = v6;
  LODWORD(v6) = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v6;
  LODWORD(v4) = *(this + 34);
  *(this + 34) = *(a2 + 34);
  *(a2 + 34) = v4;
  LODWORD(v4) = *(this + 35);
  *(this + 35) = *(a2 + 35);
  *(a2 + 35) = v4;
  LODWORD(v4) = *(this + 33);
  *(this + 33) = *(a2 + 33);
  *(a2 + 33) = v4;
  LODWORD(v6) = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v6;
  LODWORD(v4) = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v4;
  LODWORD(v6) = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v6;
  LOBYTE(v6) = *(this + 154);
  *(this + 154) = *(a2 + 154);
  *(a2 + 154) = v6;
  LOBYTE(v6) = *(this + 153);
  *(this + 153) = *(a2 + 153);
  *(a2 + 153) = v6;
  LODWORD(v6) = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v6;
  LODWORD(v6) = *(this + 36);
  *(this + 36) = *(a2 + 36);
  *(a2 + 36) = v6;
  LODWORD(v6) = *(this + 31);
  *(this + 31) = *(a2 + 31);
  *(a2 + 31) = v6;
  LOBYTE(v6) = *(this + 155);
  *(this + 155) = *(a2 + 155);
  *(a2 + 155) = v6;
  LOBYTE(v6) = *(this + 152);
  *(this + 152) = *(a2 + 152);
  *(a2 + 152) = v6;
  LODWORD(v6) = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = v6;
  LODWORD(v6) = *(this + 27);
  *(this + 27) = *(a2 + 27);
  *(a2 + 27) = v6;
  LODWORD(v6) = *(this + 28);
  *(this + 28) = *(a2 + 28);
  *(a2 + 28) = v6;
  LODWORD(v6) = *(this + 25);
  *(this + 25) = *(a2 + 25);
  *(a2 + 25) = v6;
  LODWORD(v6) = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v6;
  LODWORD(v4) = *(this + 29);
  *(this + 29) = *(a2 + 29);
  *(a2 + 29) = v4;
  LODWORD(v6) = *(this + 26);
  *(this + 26) = *(a2 + 26);
  *(a2 + 26) = v6;
  LODWORD(v4) = *(this + 32);
  *(this + 32) = *(a2 + 32);
  *(a2 + 32) = v4;
  LODWORD(v6) = *(this + 30);
  *(this + 30) = *(a2 + 30);
  *(a2 + 30) = v6;
  LODWORD(v6) = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v6;
  LODWORD(v4) = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v4;
  LODWORD(v6) = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v6;
  LODWORD(v6) = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v6;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  return result;
}

double CMMsl::FallDetectionStateMachine::FallDetectionStateMachine(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041E310;
  *(a1 + 156) = *(a2 + 156);
  *(a2 + 156) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 148) = *(a2 + 148);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 140) = *(a2 + 140);
  *(a1 + 132) = *(a2 + 132);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 154) = *(a2 + 154);
  *(a1 + 153) = *(a2 + 153);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 155) = *(a2 + 155);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 116) = *(a2 + 116);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 76) = *(a2 + 76);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

CMMsl *CMMsl::FallDetectionStateMachine::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::FallDetectionStateMachine::FallDetectionStateMachine(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::FallDetectionStateMachine::formatText(CMMsl::FallDetectionStateMachine *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 156);
  if ((v5 & 0x10) != 0)
  {
    PB::TextFormatter::format(a2, "conisderedSOS", *(this + 10));
    v5 = *(this + 156);
    if ((v5 & 0x20) == 0)
    {
LABEL_3:
      if ((v5 & 0x100000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_43;
    }
  }

  else if ((v5 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "deltaSteps", *(this + 11));
  v5 = *(this + 156);
  if ((v5 & 0x100000000) == 0)
  {
LABEL_4:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_44;
  }

LABEL_43:
  PB::TextFormatter::format(a2, "didCancelSOS", *(this + 152));
  v5 = *(this + 156);
  if ((v5 & 0x40) == 0)
  {
LABEL_5:
    if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_45;
  }

LABEL_44:
  PB::TextFormatter::format(a2, "distanceTraveled", *(this + 12));
  v5 = *(this + 156);
  if ((v5 & 1) == 0)
  {
LABEL_6:
    if ((v5 & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_46;
  }

LABEL_45:
  PB::TextFormatter::format(a2, "fallAlertUndelayedTimestamp", *(this + 1));
  v5 = *(this + 156);
  if ((v5 & 2) == 0)
  {
LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_47;
  }

LABEL_46:
  PB::TextFormatter::format(a2, "fallTime", *(this + 2));
  v5 = *(this + 156);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_48;
  }

LABEL_47:
  PB::TextFormatter::format(a2, "fromState", *(this + 13));
  v5 = *(this + 156);
  if ((v5 & 0x100) == 0)
  {
LABEL_9:
    if ((v5 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_49;
  }

LABEL_48:
  PB::TextFormatter::format(a2, "gyroMaxMean", *(this + 14));
  v5 = *(this + 156);
  if ((v5 & 4) == 0)
  {
LABEL_10:
    if ((v5 & 0x200000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_50;
  }

LABEL_49:
  PB::TextFormatter::format(a2, "iostime", *(this + 3));
  v5 = *(this + 156);
  if ((v5 & 0x200000000) == 0)
  {
LABEL_11:
    if ((v5 & 0x400000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_51;
  }

LABEL_50:
  PB::TextFormatter::format(a2, "isActive", *(this + 153));
  v5 = *(this + 156);
  if ((v5 & 0x400000000) == 0)
  {
LABEL_12:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_52;
  }

LABEL_51:
  PB::TextFormatter::format(a2, "isStand", *(this + 154));
  v5 = *(this + 156);
  if ((v5 & 0x200) == 0)
  {
LABEL_13:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_53;
  }

LABEL_52:
  PB::TextFormatter::format(a2, "magnitudeDiffUnity", *(this + 15));
  v5 = *(this + 156);
  if ((v5 & 0x400) == 0)
  {
LABEL_14:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_54;
  }

LABEL_53:
  PB::TextFormatter::format(a2, "maxAccelStdAxis", *(this + 16));
  v5 = *(this + 156);
  if ((v5 & 0x800) == 0)
  {
LABEL_15:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_55;
  }

LABEL_54:
  PB::TextFormatter::format(a2, "maxNumQuiescentBins", *(this + 17));
  v5 = *(this + 156);
  if ((v5 & 0x1000) == 0)
  {
LABEL_16:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_56;
  }

LABEL_55:
  PB::TextFormatter::format(a2, "maxNumStaticBins", *(this + 18));
  v5 = *(this + 156);
  if ((v5 & 0x2000) == 0)
  {
LABEL_17:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_57;
  }

LABEL_56:
  PB::TextFormatter::format(a2, "nominalQuiescentThreshold", *(this + 19));
  v5 = *(this + 156);
  if ((v5 & 0x4000) == 0)
  {
LABEL_18:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_58;
  }

LABEL_57:
  PB::TextFormatter::format(a2, "normalizedIQR", *(this + 20));
  v5 = *(this + 156);
  if ((v5 & 0x8000) == 0)
  {
LABEL_19:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_59;
  }

LABEL_58:
  PB::TextFormatter::format(a2, "numActiveBins", *(this + 21));
  v5 = *(this + 156);
  if ((v5 & 0x10000) == 0)
  {
LABEL_20:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_60;
  }

LABEL_59:
  PB::TextFormatter::format(a2, "numCyclingEpochs", *(this + 22));
  v5 = *(this + 156);
  if ((v5 & 0x20000) == 0)
  {
LABEL_21:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_61;
  }

LABEL_60:
  PB::TextFormatter::format(a2, "numNonzeroStepEpochs", *(this + 23));
  v5 = *(this + 156);
  if ((v5 & 0x40000) == 0)
  {
LABEL_22:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_62;
  }

LABEL_61:
  PB::TextFormatter::format(a2, "numPeaks", *(this + 24));
  v5 = *(this + 156);
  if ((v5 & 0x80000) == 0)
  {
LABEL_23:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_63;
  }

LABEL_62:
  PB::TextFormatter::format(a2, "numQuiescentBins", *(this + 25));
  v5 = *(this + 156);
  if ((v5 & 0x100000) == 0)
  {
LABEL_24:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_64;
  }

LABEL_63:
  PB::TextFormatter::format(a2, "numSharpPeaks", *(this + 26));
  v5 = *(this + 156);
  if ((v5 & 0x200000) == 0)
  {
LABEL_25:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_65;
  }

LABEL_64:
  PB::TextFormatter::format(a2, "numStandBins", *(this + 27));
  v5 = *(this + 156);
  if ((v5 & 0x400000) == 0)
  {
LABEL_26:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_66;
  }

LABEL_65:
  PB::TextFormatter::format(a2, "numStaticBins", *(this + 28));
  v5 = *(this + 156);
  if ((v5 & 0x800000) == 0)
  {
LABEL_27:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_67;
  }

LABEL_66:
  PB::TextFormatter::format(a2, "onBodyFeature", *(this + 29));
  v5 = *(this + 156);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_28:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_68;
  }

LABEL_67:
  PB::TextFormatter::format(a2, "operatingMode", *(this + 30));
  v5 = *(this + 156);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_29:
    if ((v5 & 8) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_69;
  }

LABEL_68:
  PB::TextFormatter::format(a2, "quiescentThreshold", *(this + 31));
  v5 = *(this + 156);
  if ((v5 & 8) == 0)
  {
LABEL_30:
    if ((v5 & 0x800000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_70;
  }

LABEL_69:
  PB::TextFormatter::format(a2, "sensorTime", *(this + 4));
  v5 = *(this + 156);
  if ((v5 & 0x800000000) == 0)
  {
LABEL_31:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_71;
  }

LABEL_70:
  PB::TextFormatter::format(a2, "sentFallAlert", *(this + 155));
  v5 = *(this + 156);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_32:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_72;
  }

LABEL_71:
  PB::TextFormatter::format(a2, "sharpPeaksDelaySpread", *(this + 32));
  v5 = *(this + 156);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_33:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_73;
  }

LABEL_72:
  PB::TextFormatter::format(a2, "sumHighQPeaksInDecLowFreqFFT", *(this + 33));
  v5 = *(this + 156);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_34:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_74;
  }

LABEL_73:
  PB::TextFormatter::format(a2, "sumHighQPeaksInHighFreqFFT", *(this + 34));
  v5 = *(this + 156);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_35:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_75;
  }

LABEL_74:
  PB::TextFormatter::format(a2, "sumHighQPeaksInLowFreqFFT", *(this + 35));
  v5 = *(this + 156);
  if ((v5 & 0x40000000) == 0)
  {
LABEL_36:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_75:
  PB::TextFormatter::format(a2, "toState", *(this + 36));
  if ((*(this + 156) & 0x80000000) != 0)
  {
LABEL_37:
    PB::TextFormatter::format(a2, "totalNumStaticBins", *(this + 37));
  }

LABEL_38:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::FallDetectionStateMachine::readFrom(CMMsl::FallDetectionStateMachine *this, PB::Reader *a2)
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
            goto LABEL_465;
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
          *(this + 156) |= 4uLL;
          v22 = *(a2 + 1);
          if (v22 > 0xFFFFFFFFFFFFFFF7 || v22 + 8 > *(a2 + 2))
          {
            goto LABEL_200;
          }

          *(this + 3) = *(*a2 + v22);
          goto LABEL_29;
        case 2u:
          *(this + 156) |= 8uLL;
          v111 = *(a2 + 1);
          v110 = *(a2 + 2);
          v112 = *a2;
          if (v111 <= 0xFFFFFFFFFFFFFFF5 && v111 + 10 <= v110)
          {
            v113 = 0;
            v114 = 0;
            v115 = 0;
            v116 = (v112 + v111);
            v117 = v111 + 1;
            do
            {
              *(a2 + 1) = v117;
              v118 = *v116++;
              v115 |= (v118 & 0x7F) << v113;
              if ((v118 & 0x80) == 0)
              {
                goto LABEL_427;
              }

              v113 += 7;
              ++v117;
              v14 = v114++ > 8;
            }

            while (!v14);
LABEL_285:
            v115 = 0;
            goto LABEL_427;
          }

          v279 = 0;
          v280 = 0;
          v115 = 0;
          v17 = v110 >= v111;
          v281 = v110 - v111;
          if (!v17)
          {
            v281 = 0;
          }

          v282 = (v112 + v111);
          v283 = v111 + 1;
          while (2)
          {
            if (v281)
            {
              v284 = *v282;
              *(a2 + 1) = v283;
              v115 |= (v284 & 0x7F) << v279;
              if (v284 < 0)
              {
                v279 += 7;
                --v281;
                ++v282;
                ++v283;
                v14 = v280++ > 8;
                if (v14)
                {
                  goto LABEL_285;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v115 = 0;
              }
            }

            else
            {
              v115 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_427:
          *(this + 4) = v115;
          goto LABEL_461;
        case 3u:
          *(this + 156) |= 2uLL;
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
                goto LABEL_421;
              }

              v90 += 7;
              ++v94;
              v14 = v91++ > 8;
            }

            while (!v14);
LABEL_267:
            v92 = 0;
            goto LABEL_421;
          }

          v267 = 0;
          v268 = 0;
          v92 = 0;
          v17 = v87 >= v88;
          v269 = v87 - v88;
          if (!v17)
          {
            v269 = 0;
          }

          v270 = (v89 + v88);
          v271 = v88 + 1;
          while (2)
          {
            if (v269)
            {
              v272 = *v270;
              *(a2 + 1) = v271;
              v92 |= (v272 & 0x7F) << v267;
              if (v272 < 0)
              {
                v267 += 7;
                --v269;
                ++v270;
                ++v271;
                v14 = v268++ > 8;
                if (v14)
                {
                  goto LABEL_267;
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

LABEL_421:
          *(this + 2) = v92;
          goto LABEL_461;
        case 4u:
          *(this + 156) |= 0x400uLL;
          v100 = *(a2 + 1);
          if (v100 > 0xFFFFFFFFFFFFFFFBLL || v100 + 4 > *(a2 + 2))
          {
            goto LABEL_200;
          }

          *(this + 16) = *(*a2 + v100);
          goto LABEL_379;
        case 5u:
          *(this + 156) |= 0x200uLL;
          v58 = *(a2 + 1);
          if (v58 > 0xFFFFFFFFFFFFFFFBLL || v58 + 4 > *(a2 + 2))
          {
            goto LABEL_200;
          }

          *(this + 15) = *(*a2 + v58);
          goto LABEL_379;
        case 6u:
          *(this + 156) |= 0x100uLL;
          v141 = *(a2 + 1);
          if (v141 > 0xFFFFFFFFFFFFFFFBLL || v141 + 4 > *(a2 + 2))
          {
            goto LABEL_200;
          }

          *(this + 14) = *(*a2 + v141);
          goto LABEL_379;
        case 7u:
          *(this + 156) |= 0x800uLL;
          v148 = *(a2 + 1);
          v147 = *(a2 + 2);
          v149 = *a2;
          if (v148 <= 0xFFFFFFFFFFFFFFF5 && v148 + 10 <= v147)
          {
            v150 = 0;
            v151 = 0;
            v152 = 0;
            v153 = (v149 + v148);
            v154 = v148 + 1;
            do
            {
              *(a2 + 1) = v154;
              v155 = *v153++;
              v152 |= (v155 & 0x7F) << v150;
              if ((v155 & 0x80) == 0)
              {
                goto LABEL_436;
              }

              v150 += 7;
              ++v154;
              v14 = v151++ > 8;
            }

            while (!v14);
LABEL_309:
            LODWORD(v152) = 0;
            goto LABEL_436;
          }

          v297 = 0;
          v298 = 0;
          v152 = 0;
          v17 = v147 >= v148;
          v299 = v147 - v148;
          if (!v17)
          {
            v299 = 0;
          }

          v300 = (v149 + v148);
          v301 = v148 + 1;
          while (2)
          {
            if (v299)
            {
              v302 = *v300;
              *(a2 + 1) = v301;
              v152 |= (v302 & 0x7F) << v297;
              if (v302 < 0)
              {
                v297 += 7;
                --v299;
                ++v300;
                ++v301;
                v14 = v298++ > 8;
                if (v14)
                {
                  goto LABEL_309;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v152) = 0;
              }
            }

            else
            {
              LODWORD(v152) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_436:
          *(this + 17) = v152;
          goto LABEL_461;
        case 8u:
          *(this + 156) |= 0x80000000uLL;
          v102 = *(a2 + 1);
          v101 = *(a2 + 2);
          v103 = *a2;
          if (v102 <= 0xFFFFFFFFFFFFFFF5 && v102 + 10 <= v101)
          {
            v104 = 0;
            v105 = 0;
            v106 = 0;
            v107 = (v103 + v102);
            v108 = v102 + 1;
            do
            {
              *(a2 + 1) = v108;
              v109 = *v107++;
              v106 |= (v109 & 0x7F) << v104;
              if ((v109 & 0x80) == 0)
              {
                goto LABEL_424;
              }

              v104 += 7;
              ++v108;
              v14 = v105++ > 8;
            }

            while (!v14);
LABEL_277:
            LODWORD(v106) = 0;
            goto LABEL_424;
          }

          v273 = 0;
          v274 = 0;
          v106 = 0;
          v17 = v101 >= v102;
          v275 = v101 - v102;
          if (!v17)
          {
            v275 = 0;
          }

          v276 = (v103 + v102);
          v277 = v102 + 1;
          while (2)
          {
            if (v275)
            {
              v278 = *v276;
              *(a2 + 1) = v277;
              v106 |= (v278 & 0x7F) << v273;
              if (v278 < 0)
              {
                v273 += 7;
                --v275;
                ++v276;
                ++v277;
                v14 = v274++ > 8;
                if (v14)
                {
                  goto LABEL_277;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v106) = 0;
              }
            }

            else
            {
              LODWORD(v106) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_424:
          *(this + 37) = v106;
          goto LABEL_461;
        case 9u:
          *(this + 156) |= 0x1000uLL;
          v167 = *(a2 + 1);
          v166 = *(a2 + 2);
          v168 = *a2;
          if (v167 <= 0xFFFFFFFFFFFFFFF5 && v167 + 10 <= v166)
          {
            v169 = 0;
            v170 = 0;
            v171 = 0;
            v172 = (v168 + v167);
            v173 = v167 + 1;
            do
            {
              *(a2 + 1) = v173;
              v174 = *v172++;
              v171 |= (v174 & 0x7F) << v169;
              if ((v174 & 0x80) == 0)
              {
                goto LABEL_442;
              }

              v169 += 7;
              ++v173;
              v14 = v170++ > 8;
            }

            while (!v14);
LABEL_327:
            LODWORD(v171) = 0;
            goto LABEL_442;
          }

          v309 = 0;
          v310 = 0;
          v171 = 0;
          v17 = v166 >= v167;
          v311 = v166 - v167;
          if (!v17)
          {
            v311 = 0;
          }

          v312 = (v168 + v167);
          v313 = v167 + 1;
          while (2)
          {
            if (v311)
            {
              v314 = *v312;
              *(a2 + 1) = v313;
              v171 |= (v314 & 0x7F) << v309;
              if (v314 < 0)
              {
                v309 += 7;
                --v311;
                ++v312;
                ++v313;
                v14 = v310++ > 8;
                if (v14)
                {
                  goto LABEL_327;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v171) = 0;
              }
            }

            else
            {
              LODWORD(v171) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_442:
          *(this + 18) = v171;
          goto LABEL_461;
        case 0xAu:
          *(this + 156) |= 0x10000000uLL;
          v68 = *(a2 + 1);
          if (v68 > 0xFFFFFFFFFFFFFFFBLL || v68 + 4 > *(a2 + 2))
          {
            goto LABEL_200;
          }

          *(this + 34) = *(*a2 + v68);
          goto LABEL_379;
        case 0xBu:
          *(this + 156) |= 0x20000000uLL;
          v165 = *(a2 + 1);
          if (v165 > 0xFFFFFFFFFFFFFFFBLL || v165 + 4 > *(a2 + 2))
          {
            goto LABEL_200;
          }

          *(this + 35) = *(*a2 + v165);
          goto LABEL_379;
        case 0xCu:
          *(this + 156) |= 0x8000000uLL;
          v57 = *(a2 + 1);
          if (v57 > 0xFFFFFFFFFFFFFFFBLL || v57 + 4 > *(a2 + 2))
          {
            goto LABEL_200;
          }

          *(this + 33) = *(*a2 + v57);
          goto LABEL_379;
        case 0xDu:
          *(this + 156) |= 0x40000uLL;
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
                goto LABEL_412;
              }

              v62 += 7;
              ++v66;
              v14 = v63++ > 8;
            }

            while (!v14);
LABEL_243:
            LODWORD(v64) = 0;
            goto LABEL_412;
          }

          v249 = 0;
          v250 = 0;
          v64 = 0;
          v17 = v59 >= v60;
          v251 = v59 - v60;
          if (!v17)
          {
            v251 = 0;
          }

          v252 = (v61 + v60);
          v253 = v60 + 1;
          while (2)
          {
            if (v251)
            {
              v254 = *v252;
              *(a2 + 1) = v253;
              v64 |= (v254 & 0x7F) << v249;
              if (v254 < 0)
              {
                v249 += 7;
                --v251;
                ++v252;
                ++v253;
                v14 = v250++ > 8;
                if (v14)
                {
                  goto LABEL_243;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v64) = 0;
              }
            }

            else
            {
              LODWORD(v64) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_412:
          *(this + 24) = v64;
          goto LABEL_461;
        case 0xEu:
          *(this + 156) |= 0x4000uLL;
          v146 = *(a2 + 1);
          if (v146 > 0xFFFFFFFFFFFFFFFBLL || v146 + 4 > *(a2 + 2))
          {
            goto LABEL_200;
          }

          *(this + 20) = *(*a2 + v146);
          goto LABEL_379;
        case 0xFu:
          *(this + 156) |= 0x20uLL;
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
                goto LABEL_406;
              }

              v42 += 7;
              ++v46;
              v14 = v43++ > 8;
            }

            while (!v14);
LABEL_227:
            LODWORD(v44) = 0;
            goto LABEL_406;
          }

          v237 = 0;
          v238 = 0;
          v44 = 0;
          v17 = v39 >= v40;
          v239 = v39 - v40;
          if (!v17)
          {
            v239 = 0;
          }

          v240 = (v41 + v40);
          v241 = v40 + 1;
          while (2)
          {
            if (v239)
            {
              v242 = *v240;
              *(a2 + 1) = v241;
              v44 |= (v242 & 0x7F) << v237;
              if (v242 < 0)
              {
                v237 += 7;
                --v239;
                ++v240;
                ++v241;
                v14 = v238++ > 8;
                if (v14)
                {
                  goto LABEL_227;
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

LABEL_406:
          *(this + 11) = v44;
          goto LABEL_461;
        case 0x10u:
          *(this + 156) |= 0x400000000uLL;
          v96 = *(a2 + 1);
          if (v96 >= *(a2 + 2))
          {
            v99 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v97 = v96 + 1;
            v98 = *(*a2 + v96);
            *(a2 + 1) = v97;
            v99 = v98 != 0;
          }

          *(this + 154) = v99;
          goto LABEL_461;
        case 0x11u:
          *(this + 156) |= 0x200000000uLL;
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

          *(this + 153) = v38;
          goto LABEL_461;
        case 0x12u:
          *(this + 156) |= 0x80uLL;
          v129 = *(a2 + 1);
          v128 = *(a2 + 2);
          v130 = *a2;
          if (v129 <= 0xFFFFFFFFFFFFFFF5 && v129 + 10 <= v128)
          {
            v131 = 0;
            v132 = 0;
            v133 = 0;
            v134 = (v130 + v129);
            v135 = v129 + 1;
            do
            {
              *(a2 + 1) = v135;
              v136 = *v134++;
              v133 |= (v136 & 0x7F) << v131;
              if ((v136 & 0x80) == 0)
              {
                goto LABEL_433;
              }

              v131 += 7;
              ++v135;
              v14 = v132++ > 8;
            }

            while (!v14);
LABEL_301:
            LODWORD(v133) = 0;
            goto LABEL_433;
          }

          v291 = 0;
          v292 = 0;
          v133 = 0;
          v17 = v128 >= v129;
          v293 = v128 - v129;
          if (!v17)
          {
            v293 = 0;
          }

          v294 = (v130 + v129);
          v295 = v129 + 1;
          while (2)
          {
            if (v293)
            {
              v296 = *v294;
              *(a2 + 1) = v295;
              v133 |= (v296 & 0x7F) << v291;
              if (v296 < 0)
              {
                v291 += 7;
                --v293;
                ++v294;
                ++v295;
                v14 = v292++ > 8;
                if (v14)
                {
                  goto LABEL_301;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v133) = 0;
              }
            }

            else
            {
              LODWORD(v133) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_433:
          *(this + 13) = v133;
          goto LABEL_461;
        case 0x13u:
          *(this + 156) |= 0x40000000uLL;
          v157 = *(a2 + 1);
          v156 = *(a2 + 2);
          v158 = *a2;
          if (v157 <= 0xFFFFFFFFFFFFFFF5 && v157 + 10 <= v156)
          {
            v159 = 0;
            v160 = 0;
            v161 = 0;
            v162 = (v158 + v157);
            v163 = v157 + 1;
            do
            {
              *(a2 + 1) = v163;
              v164 = *v162++;
              v161 |= (v164 & 0x7F) << v159;
              if ((v164 & 0x80) == 0)
              {
                goto LABEL_439;
              }

              v159 += 7;
              ++v163;
              v14 = v160++ > 8;
            }

            while (!v14);
LABEL_317:
            LODWORD(v161) = 0;
            goto LABEL_439;
          }

          v303 = 0;
          v304 = 0;
          v161 = 0;
          v17 = v156 >= v157;
          v305 = v156 - v157;
          if (!v17)
          {
            v305 = 0;
          }

          v306 = (v158 + v157);
          v307 = v157 + 1;
          while (2)
          {
            if (v305)
            {
              v308 = *v306;
              *(a2 + 1) = v307;
              v161 |= (v308 & 0x7F) << v303;
              if (v308 < 0)
              {
                v303 += 7;
                --v305;
                ++v306;
                ++v307;
                v14 = v304++ > 8;
                if (v14)
                {
                  goto LABEL_317;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v161) = 0;
              }
            }

            else
            {
              LODWORD(v161) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_439:
          *(this + 36) = v161;
          goto LABEL_461;
        case 0x14u:
          *(this + 156) |= 0x2000000uLL;
          v195 = *(a2 + 1);
          v194 = *(a2 + 2);
          v196 = *a2;
          if (v195 <= 0xFFFFFFFFFFFFFFF5 && v195 + 10 <= v194)
          {
            v197 = 0;
            v198 = 0;
            v199 = 0;
            v200 = (v196 + v195);
            v201 = v195 + 1;
            do
            {
              *(a2 + 1) = v201;
              v202 = *v200++;
              v199 |= (v202 & 0x7F) << v197;
              if ((v202 & 0x80) == 0)
              {
                goto LABEL_451;
              }

              v197 += 7;
              ++v201;
              v14 = v198++ > 8;
            }

            while (!v14);
LABEL_353:
            LODWORD(v199) = 0;
            goto LABEL_451;
          }

          v327 = 0;
          v328 = 0;
          v199 = 0;
          v17 = v194 >= v195;
          v329 = v194 - v195;
          if (!v17)
          {
            v329 = 0;
          }

          v330 = (v196 + v195);
          v331 = v195 + 1;
          while (2)
          {
            if (v329)
            {
              v332 = *v330;
              *(a2 + 1) = v331;
              v199 |= (v332 & 0x7F) << v327;
              if (v332 < 0)
              {
                v327 += 7;
                --v329;
                ++v330;
                ++v331;
                v14 = v328++ > 8;
                if (v14)
                {
                  goto LABEL_353;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v199) = 0;
              }
            }

            else
            {
              LODWORD(v199) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_451:
          *(this + 31) = v199;
          goto LABEL_461;
        case 0x15u:
          *(this + 156) |= 0x800000000uLL;
          v137 = *(a2 + 1);
          if (v137 >= *(a2 + 2))
          {
            v140 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v138 = v137 + 1;
            v139 = *(*a2 + v137);
            *(a2 + 1) = v138;
            v140 = v139 != 0;
          }

          *(this + 155) = v140;
          goto LABEL_461;
        case 0x16u:
          *(this + 156) |= &_mh_execute_header;
          v142 = *(a2 + 1);
          if (v142 >= *(a2 + 2))
          {
            v145 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v143 = v142 + 1;
            v144 = *(*a2 + v142);
            *(a2 + 1) = v143;
            v145 = v144 != 0;
          }

          *(this + 152) = v145;
          goto LABEL_461;
        case 0x17u:
          *(this + 156) |= 0x20000uLL;
          v186 = *(a2 + 1);
          v185 = *(a2 + 2);
          v187 = *a2;
          if (v186 <= 0xFFFFFFFFFFFFFFF5 && v186 + 10 <= v185)
          {
            v188 = 0;
            v189 = 0;
            v190 = 0;
            v191 = (v187 + v186);
            v192 = v186 + 1;
            do
            {
              *(a2 + 1) = v192;
              v193 = *v191++;
              v190 |= (v193 & 0x7F) << v188;
              if ((v193 & 0x80) == 0)
              {
                goto LABEL_448;
              }

              v188 += 7;
              ++v192;
              v14 = v189++ > 8;
            }

            while (!v14);
LABEL_345:
            LODWORD(v190) = 0;
            goto LABEL_448;
          }

          v321 = 0;
          v322 = 0;
          v190 = 0;
          v17 = v185 >= v186;
          v323 = v185 - v186;
          if (!v17)
          {
            v323 = 0;
          }

          v324 = (v187 + v186);
          v325 = v186 + 1;
          while (2)
          {
            if (v323)
            {
              v326 = *v324;
              *(a2 + 1) = v325;
              v190 |= (v326 & 0x7F) << v321;
              if (v326 < 0)
              {
                v321 += 7;
                --v323;
                ++v324;
                ++v325;
                v14 = v322++ > 8;
                if (v14)
                {
                  goto LABEL_345;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v190) = 0;
              }
            }

            else
            {
              LODWORD(v190) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_448:
          *(this + 23) = v190;
          goto LABEL_461;
        case 0x18u:
          *(this + 156) |= 0x200000uLL;
          v204 = *(a2 + 1);
          v203 = *(a2 + 2);
          v205 = *a2;
          if (v204 <= 0xFFFFFFFFFFFFFFF5 && v204 + 10 <= v203)
          {
            v206 = 0;
            v207 = 0;
            v208 = 0;
            v209 = (v205 + v204);
            v210 = v204 + 1;
            do
            {
              *(a2 + 1) = v210;
              v211 = *v209++;
              v208 |= (v211 & 0x7F) << v206;
              if ((v211 & 0x80) == 0)
              {
                goto LABEL_454;
              }

              v206 += 7;
              ++v210;
              v14 = v207++ > 8;
            }

            while (!v14);
LABEL_361:
            LODWORD(v208) = 0;
            goto LABEL_454;
          }

          v333 = 0;
          v334 = 0;
          v208 = 0;
          v17 = v203 >= v204;
          v335 = v203 - v204;
          if (!v17)
          {
            v335 = 0;
          }

          v336 = (v205 + v204);
          v337 = v204 + 1;
          while (2)
          {
            if (v335)
            {
              v338 = *v336;
              *(a2 + 1) = v337;
              v208 |= (v338 & 0x7F) << v333;
              if (v338 < 0)
              {
                v333 += 7;
                --v335;
                ++v336;
                ++v337;
                v14 = v334++ > 8;
                if (v14)
                {
                  goto LABEL_361;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v208) = 0;
              }
            }

            else
            {
              LODWORD(v208) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_454:
          *(this + 27) = v208;
          goto LABEL_461;
        case 0x19u:
          *(this + 156) |= 0x400000uLL;
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
                goto LABEL_418;
              }

              v81 += 7;
              ++v85;
              v14 = v82++ > 8;
            }

            while (!v14);
LABEL_259:
            LODWORD(v83) = 0;
            goto LABEL_418;
          }

          v261 = 0;
          v262 = 0;
          v83 = 0;
          v17 = v78 >= v79;
          v263 = v78 - v79;
          if (!v17)
          {
            v263 = 0;
          }

          v264 = (v80 + v79);
          v265 = v79 + 1;
          while (2)
          {
            if (v263)
            {
              v266 = *v264;
              *(a2 + 1) = v265;
              v83 |= (v266 & 0x7F) << v261;
              if (v266 < 0)
              {
                v261 += 7;
                --v263;
                ++v264;
                ++v265;
                v14 = v262++ > 8;
                if (v14)
                {
                  goto LABEL_259;
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

LABEL_418:
          *(this + 28) = v83;
          goto LABEL_461;
        case 0x1Au:
          *(this + 156) |= 0x80000uLL;
          v70 = *(a2 + 1);
          v69 = *(a2 + 2);
          v71 = *a2;
          if (v70 <= 0xFFFFFFFFFFFFFFF5 && v70 + 10 <= v69)
          {
            v72 = 0;
            v73 = 0;
            v74 = 0;
            v75 = (v71 + v70);
            v76 = v70 + 1;
            do
            {
              *(a2 + 1) = v76;
              v77 = *v75++;
              v74 |= (v77 & 0x7F) << v72;
              if ((v77 & 0x80) == 0)
              {
                goto LABEL_415;
              }

              v72 += 7;
              ++v76;
              v14 = v73++ > 8;
            }

            while (!v14);
LABEL_251:
            LODWORD(v74) = 0;
            goto LABEL_415;
          }

          v255 = 0;
          v256 = 0;
          v74 = 0;
          v17 = v69 >= v70;
          v257 = v69 - v70;
          if (!v17)
          {
            v257 = 0;
          }

          v258 = (v71 + v70);
          v259 = v70 + 1;
          while (2)
          {
            if (v257)
            {
              v260 = *v258;
              *(a2 + 1) = v259;
              v74 |= (v260 & 0x7F) << v255;
              if (v260 < 0)
              {
                v255 += 7;
                --v257;
                ++v258;
                ++v259;
                v14 = v256++ > 8;
                if (v14)
                {
                  goto LABEL_251;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v74) = 0;
              }
            }

            else
            {
              LODWORD(v74) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_415:
          *(this + 25) = v74;
          goto LABEL_461;
        case 0x1Bu:
          *(this + 156) |= 0x8000uLL;
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
                goto LABEL_460;
              }

              v225 += 7;
              ++v229;
              v14 = v226++ > 8;
            }

            while (!v14);
LABEL_377:
            LODWORD(v227) = 0;
            goto LABEL_460;
          }

          v345 = 0;
          v346 = 0;
          v227 = 0;
          v17 = v222 >= v223;
          v347 = v222 - v223;
          if (!v17)
          {
            v347 = 0;
          }

          v348 = (v224 + v223);
          v349 = v223 + 1;
          while (2)
          {
            if (v347)
            {
              v350 = *v348;
              *(a2 + 1) = v349;
              v227 |= (v350 & 0x7F) << v345;
              if (v350 < 0)
              {
                v345 += 7;
                --v347;
                ++v348;
                ++v349;
                v14 = v346++ > 8;
                if (v14)
                {
                  goto LABEL_377;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v227) = 0;
              }
            }

            else
            {
              LODWORD(v227) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_460:
          *(this + 21) = v227;
          goto LABEL_461;
        case 0x1Cu:
          *(this + 156) |= 0x800000uLL;
          v25 = *(a2 + 1);
          if (v25 > 0xFFFFFFFFFFFFFFFBLL || v25 + 4 > *(a2 + 2))
          {
            goto LABEL_200;
          }

          *(this + 29) = *(*a2 + v25);
          goto LABEL_379;
        case 0x1Du:
          *(this + 156) |= 0x100000uLL;
          v213 = *(a2 + 1);
          v212 = *(a2 + 2);
          v214 = *a2;
          if (v213 <= 0xFFFFFFFFFFFFFFF5 && v213 + 10 <= v212)
          {
            v215 = 0;
            v216 = 0;
            v217 = 0;
            v218 = (v214 + v213);
            v219 = v213 + 1;
            do
            {
              *(a2 + 1) = v219;
              v220 = *v218++;
              v217 |= (v220 & 0x7F) << v215;
              if ((v220 & 0x80) == 0)
              {
                goto LABEL_457;
              }

              v215 += 7;
              ++v219;
              v14 = v216++ > 8;
            }

            while (!v14);
LABEL_369:
            LODWORD(v217) = 0;
            goto LABEL_457;
          }

          v339 = 0;
          v340 = 0;
          v217 = 0;
          v17 = v212 >= v213;
          v341 = v212 - v213;
          if (!v17)
          {
            v341 = 0;
          }

          v342 = (v214 + v213);
          v343 = v213 + 1;
          while (2)
          {
            if (v341)
            {
              v344 = *v342;
              *(a2 + 1) = v343;
              v217 |= (v344 & 0x7F) << v339;
              if (v344 < 0)
              {
                v339 += 7;
                --v341;
                ++v342;
                ++v343;
                v14 = v340++ > 8;
                if (v14)
                {
                  goto LABEL_369;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v217) = 0;
              }
            }

            else
            {
              LODWORD(v217) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_457:
          *(this + 26) = v217;
          goto LABEL_461;
        case 0x1Eu:
          *(this + 156) |= 0x4000000uLL;
          v221 = *(a2 + 1);
          if (v221 > 0xFFFFFFFFFFFFFFFBLL || v221 + 4 > *(a2 + 2))
          {
            goto LABEL_200;
          }

          *(this + 32) = *(*a2 + v221);
          goto LABEL_379;
        case 0x1Fu:
          *(this + 156) |= 0x1000000uLL;
          v176 = *(a2 + 1);
          v175 = *(a2 + 2);
          v177 = *a2;
          if (v176 <= 0xFFFFFFFFFFFFFFF5 && v176 + 10 <= v175)
          {
            v178 = 0;
            v179 = 0;
            v180 = 0;
            v181 = (v177 + v176);
            v182 = v176 + 1;
            do
            {
              *(a2 + 1) = v182;
              v183 = *v181++;
              v180 |= (v183 & 0x7F) << v178;
              if ((v183 & 0x80) == 0)
              {
                goto LABEL_445;
              }

              v178 += 7;
              ++v182;
              v14 = v179++ > 8;
            }

            while (!v14);
LABEL_337:
            LODWORD(v180) = 0;
            goto LABEL_445;
          }

          v315 = 0;
          v316 = 0;
          v180 = 0;
          v17 = v175 >= v176;
          v317 = v175 - v176;
          if (!v17)
          {
            v317 = 0;
          }

          v318 = (v177 + v176);
          v319 = v176 + 1;
          while (2)
          {
            if (v317)
            {
              v320 = *v318;
              *(a2 + 1) = v319;
              v180 |= (v320 & 0x7F) << v315;
              if (v320 < 0)
              {
                v315 += 7;
                --v317;
                ++v318;
                ++v319;
                v14 = v316++ > 8;
                if (v14)
                {
                  goto LABEL_337;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v180) = 0;
              }
            }

            else
            {
              LODWORD(v180) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_445:
          *(this + 30) = v180;
          goto LABEL_461;
        case 0x20u:
          *(this + 156) |= 0x10uLL;
          v120 = *(a2 + 1);
          v119 = *(a2 + 2);
          v121 = *a2;
          if (v120 <= 0xFFFFFFFFFFFFFFF5 && v120 + 10 <= v119)
          {
            v122 = 0;
            v123 = 0;
            v124 = 0;
            v125 = (v121 + v120);
            v126 = v120 + 1;
            do
            {
              *(a2 + 1) = v126;
              v127 = *v125++;
              v124 |= (v127 & 0x7F) << v122;
              if ((v127 & 0x80) == 0)
              {
                goto LABEL_430;
              }

              v122 += 7;
              ++v126;
              v14 = v123++ > 8;
            }

            while (!v14);
LABEL_293:
            LODWORD(v124) = 0;
            goto LABEL_430;
          }

          v285 = 0;
          v286 = 0;
          v124 = 0;
          v17 = v119 >= v120;
          v287 = v119 - v120;
          if (!v17)
          {
            v287 = 0;
          }

          v288 = (v121 + v120);
          v289 = v120 + 1;
          while (2)
          {
            if (v287)
            {
              v290 = *v288;
              *(a2 + 1) = v289;
              v124 |= (v290 & 0x7F) << v285;
              if (v290 < 0)
              {
                v285 += 7;
                --v287;
                ++v288;
                ++v289;
                v14 = v286++ > 8;
                if (v14)
                {
                  goto LABEL_293;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v124) = 0;
              }
            }

            else
            {
              LODWORD(v124) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_430:
          *(this + 10) = v124;
          goto LABEL_461;
        case 0x21u:
          *(this + 156) |= 0x40uLL;
          v184 = *(a2 + 1);
          if (v184 > 0xFFFFFFFFFFFFFFFBLL || v184 + 4 > *(a2 + 2))
          {
            goto LABEL_200;
          }

          *(this + 12) = *(*a2 + v184);
LABEL_379:
          v24 = *(a2 + 1) + 4;
          goto LABEL_380;
        case 0x22u:
          *(this + 156) |= 0x10000uLL;
          v49 = *(a2 + 1);
          v48 = *(a2 + 2);
          v50 = *a2;
          if (v49 <= 0xFFFFFFFFFFFFFFF5 && v49 + 10 <= v48)
          {
            v51 = 0;
            v52 = 0;
            v53 = 0;
            v54 = (v50 + v49);
            v55 = v49 + 1;
            do
            {
              *(a2 + 1) = v55;
              v56 = *v54++;
              v53 |= (v56 & 0x7F) << v51;
              if ((v56 & 0x80) == 0)
              {
                goto LABEL_409;
              }

              v51 += 7;
              ++v55;
              v14 = v52++ > 8;
            }

            while (!v14);
LABEL_235:
            LODWORD(v53) = 0;
            goto LABEL_409;
          }

          v243 = 0;
          v244 = 0;
          v53 = 0;
          v17 = v48 >= v49;
          v245 = v48 - v49;
          if (!v17)
          {
            v245 = 0;
          }

          v246 = (v50 + v49);
          v247 = v49 + 1;
          while (2)
          {
            if (v245)
            {
              v248 = *v246;
              *(a2 + 1) = v247;
              v53 |= (v248 & 0x7F) << v243;
              if (v248 < 0)
              {
                v243 += 7;
                --v245;
                ++v246;
                ++v247;
                v14 = v244++ > 8;
                if (v14)
                {
                  goto LABEL_235;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v53) = 0;
              }
            }

            else
            {
              LODWORD(v53) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_409:
          *(this + 22) = v53;
          goto LABEL_461;
        case 0x23u:
          *(this + 156) |= 0x2000uLL;
          v27 = *(a2 + 1);
          v26 = *(a2 + 2);
          v28 = *a2;
          if (v27 <= 0xFFFFFFFFFFFFFFF5 && v27 + 10 <= v26)
          {
            v29 = 0;
            v30 = 0;
            v31 = 0;
            v32 = (v28 + v27);
            v33 = v27 + 1;
            do
            {
              *(a2 + 1) = v33;
              v34 = *v32++;
              v31 |= (v34 & 0x7F) << v29;
              if ((v34 & 0x80) == 0)
              {
                goto LABEL_403;
              }

              v29 += 7;
              ++v33;
              v14 = v30++ > 8;
            }

            while (!v14);
LABEL_217:
            LODWORD(v31) = 0;
            goto LABEL_403;
          }

          v231 = 0;
          v232 = 0;
          v31 = 0;
          v17 = v26 >= v27;
          v233 = v26 - v27;
          if (!v17)
          {
            v233 = 0;
          }

          v234 = (v28 + v27);
          v235 = v27 + 1;
          break;
        case 0x24u:
          *(this + 156) |= 1uLL;
          v23 = *(a2 + 1);
          if (v23 > 0xFFFFFFFFFFFFFFF7 || v23 + 8 > *(a2 + 2))
          {
LABEL_200:
            *(a2 + 24) = 1;
          }

          else
          {
            *(this + 1) = *(*a2 + v23);
LABEL_29:
            v24 = *(a2 + 1) + 8;
LABEL_380:
            *(a2 + 1) = v24;
          }

          goto LABEL_461;
        default:
          if (PB::Reader::skip(a2, v10 >> 3, v10 & 7, 0))
          {
            goto LABEL_461;
          }

          v352 = 0;
          return v352 & 1;
      }

      while (1)
      {
        if (!v233)
        {
          LODWORD(v31) = 0;
          *(a2 + 24) = 1;
          goto LABEL_403;
        }

        v236 = *v234;
        *(a2 + 1) = v235;
        v31 |= (v236 & 0x7F) << v231;
        if ((v236 & 0x80) == 0)
        {
          break;
        }

        v231 += 7;
        --v233;
        ++v234;
        ++v235;
        v14 = v232++ > 8;
        if (v14)
        {
          goto LABEL_217;
        }
      }

      if (*(a2 + 24))
      {
        LODWORD(v31) = 0;
      }

LABEL_403:
      *(this + 19) = v31;
LABEL_461:
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

LABEL_465:
  v352 = v4 ^ 1;
  return v352 & 1;
}

uint64_t CMMsl::FallDetectionStateMachine::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 156);
  if ((v4 & 4) != 0)
  {
    this = PB::Writer::write(a2, *(this + 24), 1u);
    v4 = *(v3 + 156);
    if ((v4 & 8) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_40;
    }
  }

  else if ((v4 & 8) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::writeVarInt(a2, *(v3 + 32), 2u);
  v4 = *(v3 + 156);
  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_41;
  }

LABEL_40:
  this = PB::Writer::writeVarInt(a2, *(v3 + 16), 3u);
  v4 = *(v3 + 156);
  if ((v4 & 0x400) == 0)
  {
LABEL_5:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_42;
  }

LABEL_41:
  this = PB::Writer::write(a2, *(v3 + 64), 4u);
  v4 = *(v3 + 156);
  if ((v4 & 0x200) == 0)
  {
LABEL_6:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_43;
  }

LABEL_42:
  this = PB::Writer::write(a2, *(v3 + 60), 5u);
  v4 = *(v3 + 156);
  if ((v4 & 0x100) == 0)
  {
LABEL_7:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_44;
  }

LABEL_43:
  this = PB::Writer::write(a2, *(v3 + 56), 6u);
  v4 = *(v3 + 156);
  if ((v4 & 0x800) == 0)
  {
LABEL_8:
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_45;
  }

LABEL_44:
  this = PB::Writer::writeVarInt(a2, *(v3 + 68), 7u);
  v4 = *(v3 + 156);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_9:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_46;
  }

LABEL_45:
  this = PB::Writer::writeVarInt(a2, *(v3 + 148), 8u);
  v4 = *(v3 + 156);
  if ((v4 & 0x1000) == 0)
  {
LABEL_10:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_47;
  }

LABEL_46:
  this = PB::Writer::writeVarInt(a2, *(v3 + 72), 9u);
  v4 = *(v3 + 156);
  if ((v4 & 0x10000000) == 0)
  {
LABEL_11:
    if ((v4 & 0x20000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_48;
  }

LABEL_47:
  this = PB::Writer::write(a2, *(v3 + 136), 0xAu);
  v4 = *(v3 + 156);
  if ((v4 & 0x20000000) == 0)
  {
LABEL_12:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_49;
  }

LABEL_48:
  this = PB::Writer::write(a2, *(v3 + 140), 0xBu);
  v4 = *(v3 + 156);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_13:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_50;
  }

LABEL_49:
  this = PB::Writer::write(a2, *(v3 + 132), 0xCu);
  v4 = *(v3 + 156);
  if ((v4 & 0x40000) == 0)
  {
LABEL_14:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_51;
  }

LABEL_50:
  this = PB::Writer::writeVarInt(a2, *(v3 + 96), 0xDu);
  v4 = *(v3 + 156);
  if ((v4 & 0x4000) == 0)
  {
LABEL_15:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_52;
  }

LABEL_51:
  this = PB::Writer::write(a2, *(v3 + 80), 0xEu);
  v4 = *(v3 + 156);
  if ((v4 & 0x20) == 0)
  {
LABEL_16:
    if ((v4 & 0x400000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_53;
  }

LABEL_52:
  this = PB::Writer::writeVarInt(a2, *(v3 + 44), 0xFu);
  v4 = *(v3 + 156);
  if ((v4 & 0x400000000) == 0)
  {
LABEL_17:
    if ((v4 & 0x200000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_54;
  }

LABEL_53:
  this = PB::Writer::write(a2, *(v3 + 154), 0x10u);
  v4 = *(v3 + 156);
  if ((v4 & 0x200000000) == 0)
  {
LABEL_18:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_55;
  }

LABEL_54:
  this = PB::Writer::write(a2, *(v3 + 153), 0x11u);
  v4 = *(v3 + 156);
  if ((v4 & 0x80) == 0)
  {
LABEL_19:
    if ((v4 & 0x40000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_56;
  }

LABEL_55:
  this = PB::Writer::writeVarInt(a2, *(v3 + 52), 0x12u);
  v4 = *(v3 + 156);
  if ((v4 & 0x40000000) == 0)
  {
LABEL_20:
    if ((v4 & 0x2000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_57;
  }

LABEL_56:
  this = PB::Writer::writeVarInt(a2, *(v3 + 144), 0x13u);
  v4 = *(v3 + 156);
  if ((v4 & 0x2000000) == 0)
  {
LABEL_21:
    if ((v4 & 0x800000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_58;
  }

LABEL_57:
  this = PB::Writer::writeVarInt(a2, *(v3 + 124), 0x14u);
  v4 = *(v3 + 156);
  if ((v4 & 0x800000000) == 0)
  {
LABEL_22:
    if ((v4 & 0x100000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_59;
  }

LABEL_58:
  this = PB::Writer::write(a2, *(v3 + 155), 0x15u);
  v4 = *(v3 + 156);
  if ((v4 & 0x100000000) == 0)
  {
LABEL_23:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_60;
  }

LABEL_59:
  this = PB::Writer::write(a2, *(v3 + 152), 0x16u);
  v4 = *(v3 + 156);
  if ((v4 & 0x20000) == 0)
  {
LABEL_24:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_61;
  }

LABEL_60:
  this = PB::Writer::writeVarInt(a2, *(v3 + 92), 0x17u);
  v4 = *(v3 + 156);
  if ((v4 & 0x200000) == 0)
  {
LABEL_25:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_62;
  }

LABEL_61:
  this = PB::Writer::writeVarInt(a2, *(v3 + 108), 0x18u);
  v4 = *(v3 + 156);
  if ((v4 & 0x400000) == 0)
  {
LABEL_26:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_63;
  }

LABEL_62:
  this = PB::Writer::writeVarInt(a2, *(v3 + 112), 0x19u);
  v4 = *(v3 + 156);
  if ((v4 & 0x80000) == 0)
  {
LABEL_27:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_64;
  }

LABEL_63:
  this = PB::Writer::writeVarInt(a2, *(v3 + 100), 0x1Au);
  v4 = *(v3 + 156);
  if ((v4 & 0x8000) == 0)
  {
LABEL_28:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_65;
  }

LABEL_64:
  this = PB::Writer::writeVarInt(a2, *(v3 + 84), 0x1Bu);
  v4 = *(v3 + 156);
  if ((v4 & 0x800000) == 0)
  {
LABEL_29:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_66;
  }

LABEL_65:
  this = PB::Writer::write(a2, *(v3 + 116), 0x1Cu);
  v4 = *(v3 + 156);
  if ((v4 & 0x100000) == 0)
  {
LABEL_30:
    if ((v4 & 0x4000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_67;
  }

LABEL_66:
  this = PB::Writer::writeVarInt(a2, *(v3 + 104), 0x1Du);
  v4 = *(v3 + 156);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_31:
    if ((v4 & 0x1000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_68;
  }

LABEL_67:
  this = PB::Writer::write(a2, *(v3 + 128), 0x1Eu);
  v4 = *(v3 + 156);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_32:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_69;
  }

LABEL_68:
  this = PB::Writer::writeVarInt(a2, *(v3 + 120), 0x1Fu);
  v4 = *(v3 + 156);
  if ((v4 & 0x10) == 0)
  {
LABEL_33:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_70;
  }

LABEL_69:
  this = PB::Writer::writeVarInt(a2, *(v3 + 40), 0x20u);
  v4 = *(v3 + 156);
  if ((v4 & 0x40) == 0)
  {
LABEL_34:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_71;
  }

LABEL_70:
  this = PB::Writer::write(a2, *(v3 + 48), 0x21u);
  v4 = *(v3 + 156);
  if ((v4 & 0x10000) == 0)
  {
LABEL_35:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_36;
    }

LABEL_72:
    this = PB::Writer::writeVarInt(a2, *(v3 + 76), 0x23u);
    if ((*(v3 + 156) & 1) == 0)
    {
      return this;
    }

    goto LABEL_73;
  }

LABEL_71:
  this = PB::Writer::writeVarInt(a2, *(v3 + 88), 0x22u);
  v4 = *(v3 + 156);
  if ((v4 & 0x2000) != 0)
  {
    goto LABEL_72;
  }

LABEL_36:
  if ((v4 & 1) == 0)
  {
    return this;
  }

LABEL_73:
  v5 = *(v3 + 8);

  return PB::Writer::write(a2, v5, 0x24u);
}

BOOL CMMsl::FallDetectionStateMachine::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 156);
  v3 = *(a2 + 156);
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

  if ((v2 & 0x400) != 0)
  {
    if ((v3 & 0x400) == 0 || *(a1 + 64) != *(a2 + 64))
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
    if ((v3 & 0x200) == 0 || *(a1 + 60) != *(a2 + 60))
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
    if ((v3 & 0x100) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100) != 0)
  {
    return 0;
  }

  if ((v2 & 0x800) != 0)
  {
    if ((v3 & 0x800) == 0 || *(a1 + 68) != *(a2 + 68))
    {
      return 0;
    }
  }

  else if ((v3 & 0x800) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80000000) != 0)
  {
    if ((v3 & 0x80000000) == 0 || *(a1 + 148) != *(a2 + 148))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x1000) != 0)
  {
    if ((v3 & 0x1000) == 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if ((v3 & 0x1000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10000000) != 0)
  {
    if ((v3 & 0x10000000) == 0 || *(a1 + 136) != *(a2 + 136))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20000000) != 0)
  {
    if ((v3 & 0x20000000) == 0 || *(a1 + 140) != *(a2 + 140))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x8000000) != 0)
  {
    if ((v3 & 0x8000000) == 0 || *(a1 + 132) != *(a2 + 132))
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40000) != 0)
  {
    if ((v3 & 0x40000) == 0 || *(a1 + 96) != *(a2 + 96))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x4000) != 0)
  {
    if ((v3 & 0x4000) == 0 || *(a1 + 80) != *(a2 + 80))
    {
      return 0;
    }
  }

  else if ((v3 & 0x4000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 44) != *(a2 + 44))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  if ((v2 & 0x400000000) != 0)
  {
    if ((v3 & 0x400000000) == 0 || *(a1 + 154) != *(a2 + 154))
    {
      return 0;
    }
  }

  else if ((v3 & 0x400000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x200000000) != 0)
  {
    if ((v3 & 0x200000000) == 0 || *(a1 + 153) != *(a2 + 153))
    {
      return 0;
    }
  }

  else if ((v3 & 0x200000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 52) != *(a2 + 52))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40000000) != 0)
  {
    if ((v3 & 0x40000000) == 0 || *(a1 + 144) != *(a2 + 144))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x2000000) != 0)
  {
    if ((v3 & 0x2000000) == 0 || *(a1 + 124) != *(a2 + 124))
    {
      return 0;
    }
  }

  else if ((v3 & 0x2000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x800000000) != 0)
  {
    if ((v3 & 0x800000000) == 0 || *(a1 + 155) != *(a2 + 155))
    {
      return 0;
    }
  }

  else if ((v3 & 0x800000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x100000000) != 0)
  {
    if ((v3 & 0x100000000) == 0 || *(a1 + 152) != *(a2 + 152))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20000) != 0)
  {
    if ((v3 & 0x20000) == 0 || *(a1 + 92) != *(a2 + 92))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x200000) != 0)
  {
    if ((v3 & 0x200000) == 0 || *(a1 + 108) != *(a2 + 108))
    {
      return 0;
    }
  }

  else if ((v3 & 0x200000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x400000) != 0)
  {
    if ((v3 & 0x400000) == 0 || *(a1 + 112) != *(a2 + 112))
    {
      return 0;
    }
  }

  else if ((v3 & 0x400000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80000) != 0)
  {
    if ((v3 & 0x80000) == 0 || *(a1 + 100) != *(a2 + 100))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x8000) != 0)
  {
    if ((v3 & 0x8000) == 0 || *(a1 + 84) != *(a2 + 84))
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x800000) != 0)
  {
    if ((v3 & 0x800000) == 0 || *(a1 + 116) != *(a2 + 116))
    {
      return 0;
    }
  }

  else if ((v3 & 0x800000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x100000) != 0)
  {
    if ((v3 & 0x100000) == 0 || *(a1 + 104) != *(a2 + 104))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x4000000) != 0)
  {
    if ((v3 & 0x4000000) == 0 || *(a1 + 128) != *(a2 + 128))
    {
      return 0;
    }
  }

  else if ((v3 & 0x4000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x1000000) != 0)
  {
    if ((v3 & 0x1000000) == 0 || *(a1 + 120) != *(a2 + 120))
    {
      return 0;
    }
  }

  else if ((v3 & 0x1000000) != 0)
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

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10000) != 0)
  {
    if ((v3 & 0x10000) == 0 || *(a1 + 88) != *(a2 + 88))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x2000) != 0)
  {
    if ((v3 & 0x2000) == 0 || *(a1 + 76) != *(a2 + 76))
    {
      return 0;
    }
  }

  else if ((v3 & 0x2000) != 0)
  {
    return 0;
  }

  v4 = (*(a2 + 156) & 1) == 0;
  if (v2)
  {
    return (v3 & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return v4;
}

uint64_t CMMsl::FallDetectionStateMachine::hash_value(CMMsl::FallDetectionStateMachine *this)
{
  v1 = *(this + 156);
  if ((v1 & 4) != 0)
  {
    if (*(this + 3) == 0.0)
    {
      v2 = 0;
    }

    else
    {
      v2 = *(this + 3);
    }
  }

  else
  {
    v2 = 0;
  }

  if ((v1 & 8) != 0)
  {
    v52 = *(this + 4);
    if ((v1 & 2) != 0)
    {
LABEL_8:
      v51 = *(this + 2);
      if ((v1 & 0x400) != 0)
      {
        goto LABEL_9;
      }

LABEL_69:
      v50 = 0;
      if ((v1 & 0x200) != 0)
      {
        goto LABEL_12;
      }

LABEL_70:
      v49 = 0;
      if ((v1 & 0x100) != 0)
      {
        goto LABEL_15;
      }

LABEL_71:
      v48 = 0;
      if ((v1 & 0x800) != 0)
      {
        goto LABEL_18;
      }

      goto LABEL_72;
    }
  }

  else
  {
    v52 = 0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_8;
    }
  }

  v51 = 0;
  if ((v1 & 0x400) == 0)
  {
    goto LABEL_69;
  }

LABEL_9:
  v3 = *(this + 16);
  v4 = LODWORD(v3);
  if (v3 == 0.0)
  {
    v4 = 0;
  }

  v50 = v4;
  if ((v1 & 0x200) == 0)
  {
    goto LABEL_70;
  }

LABEL_12:
  v5 = *(this + 15);
  v6 = LODWORD(v5);
  if (v5 == 0.0)
  {
    v6 = 0;
  }

  v49 = v6;
  if ((v1 & 0x100) == 0)
  {
    goto LABEL_71;
  }

LABEL_15:
  v7 = *(this + 14);
  v8 = LODWORD(v7);
  if (v7 == 0.0)
  {
    v8 = 0;
  }

  v48 = v8;
  if ((v1 & 0x800) != 0)
  {
LABEL_18:
    v47 = *(this + 17);
    if ((v1 & 0x80000000) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_73;
  }

LABEL_72:
  v47 = 0;
  if ((v1 & 0x80000000) != 0)
  {
LABEL_19:
    v46 = *(this + 37);
    if ((v1 & 0x1000) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_74;
  }

LABEL_73:
  v46 = 0;
  if ((v1 & 0x1000) != 0)
  {
LABEL_20:
    v45 = *(this + 18);
    if ((v1 & 0x10000000) != 0)
    {
      goto LABEL_21;
    }

LABEL_75:
    v44 = 0;
    if ((v1 & 0x20000000) != 0)
    {
      goto LABEL_24;
    }

LABEL_76:
    v12 = 0;
    if ((v1 & 0x8000000) != 0)
    {
      goto LABEL_28;
    }

LABEL_77:
    v14 = 0;
    if ((v1 & 0x40000) != 0)
    {
      goto LABEL_32;
    }

    goto LABEL_78;
  }

LABEL_74:
  v45 = 0;
  if ((v1 & 0x10000000) == 0)
  {
    goto LABEL_75;
  }

LABEL_21:
  v9 = *(this + 34);
  v10 = LODWORD(v9);
  if (v9 == 0.0)
  {
    v10 = 0;
  }

  v44 = v10;
  if ((v1 & 0x20000000) == 0)
  {
    goto LABEL_76;
  }

LABEL_24:
  v11 = *(this + 35);
  if (v11 == 0.0)
  {
    v12 = 0;
  }

  else
  {
    v12 = LODWORD(v11);
  }

  if ((v1 & 0x8000000) == 0)
  {
    goto LABEL_77;
  }

LABEL_28:
  v13 = *(this + 33);
  if (v13 == 0.0)
  {
    v14 = 0;
  }

  else
  {
    v14 = LODWORD(v13);
  }

  if ((v1 & 0x40000) != 0)
  {
LABEL_32:
    v15 = *(this + 24);
    if ((v1 & 0x4000) != 0)
    {
      goto LABEL_33;
    }

LABEL_79:
    v17 = 0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_37;
    }

    goto LABEL_80;
  }

LABEL_78:
  v15 = 0;
  if ((v1 & 0x4000) == 0)
  {
    goto LABEL_79;
  }

LABEL_33:
  v16 = *(this + 20);
  if (v16 == 0.0)
  {
    v17 = 0;
  }

  else
  {
    v17 = LODWORD(v16);
  }

  if ((v1 & 0x20) != 0)
  {
LABEL_37:
    v18 = *(this + 11);
    if ((v1 & 0x400000000) != 0)
    {
      goto LABEL_38;
    }

    goto LABEL_81;
  }

LABEL_80:
  v18 = 0;
  if ((v1 & 0x400000000) != 0)
  {
LABEL_38:
    v19 = *(this + 154);
    if ((v1 & 0x200000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_82;
  }

LABEL_81:
  v19 = 0;
  if ((v1 & 0x200000000) != 0)
  {
LABEL_39:
    v20 = *(this + 153);
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_40;
    }

    goto LABEL_83;
  }

LABEL_82:
  v20 = 0;
  if ((v1 & 0x80) != 0)
  {
LABEL_40:
    v21 = *(this + 13);
    if ((v1 & 0x40000000) != 0)
    {
      goto LABEL_41;
    }

    goto LABEL_84;
  }

LABEL_83:
  v21 = 0;
  if ((v1 & 0x40000000) != 0)
  {
LABEL_41:
    v22 = *(this + 36);
    if ((v1 & 0x2000000) != 0)
    {
      goto LABEL_42;
    }

    goto LABEL_85;
  }

LABEL_84:
  v22 = 0;
  if ((v1 & 0x2000000) != 0)
  {
LABEL_42:
    v23 = *(this + 31);
    if ((v1 & 0x800000000) != 0)
    {
      goto LABEL_43;
    }

    goto LABEL_86;
  }

LABEL_85:
  v23 = 0;
  if ((v1 & 0x800000000) != 0)
  {
LABEL_43:
    v24 = *(this + 155);
    if ((v1 & 0x100000000) != 0)
    {
      goto LABEL_44;
    }

    goto LABEL_87;
  }

LABEL_86:
  v24 = 0;
  if ((v1 & 0x100000000) != 0)
  {
LABEL_44:
    v25 = *(this + 152);
    if ((v1 & 0x20000) != 0)
    {
      goto LABEL_45;
    }

    goto LABEL_88;
  }

LABEL_87:
  v25 = 0;
  if ((v1 & 0x20000) != 0)
  {
LABEL_45:
    v26 = *(this + 23);
    if ((v1 & 0x200000) != 0)
    {
      goto LABEL_46;
    }

    goto LABEL_89;
  }

LABEL_88:
  v26 = 0;
  if ((v1 & 0x200000) != 0)
  {
LABEL_46:
    v27 = *(this + 27);
    if ((v1 & 0x400000) != 0)
    {
      goto LABEL_47;
    }

    goto LABEL_90;
  }

LABEL_89:
  v27 = 0;
  if ((v1 & 0x400000) != 0)
  {
LABEL_47:
    v28 = *(this + 28);
    if ((v1 & 0x80000) != 0)
    {
      goto LABEL_48;
    }

    goto LABEL_91;
  }

LABEL_90:
  v28 = 0;
  if ((v1 & 0x80000) != 0)
  {
LABEL_48:
    v29 = *(this + 25);
    if ((v1 & 0x8000) != 0)
    {
      goto LABEL_49;
    }

    goto LABEL_92;
  }

LABEL_91:
  v29 = 0;
  if ((v1 & 0x8000) != 0)
  {
LABEL_49:
    v30 = *(this + 21);
    if ((v1 & 0x800000) != 0)
    {
      goto LABEL_50;
    }

LABEL_93:
    v32 = 0;
    if ((v1 & 0x100000) != 0)
    {
      goto LABEL_53;
    }

    goto LABEL_94;
  }

LABEL_92:
  v30 = 0;
  if ((v1 & 0x800000) == 0)
  {
    goto LABEL_93;
  }

LABEL_50:
  v31 = *(this + 29);
  v32 = LODWORD(v31);
  if (v31 == 0.0)
  {
    v32 = 0;
  }

  if ((v1 & 0x100000) != 0)
  {
LABEL_53:
    v33 = *(this + 26);
    if ((v1 & 0x4000000) != 0)
    {
      goto LABEL_54;
    }

LABEL_95:
    v35 = 0;
    if ((v1 & 0x1000000) != 0)
    {
      goto LABEL_57;
    }

    goto LABEL_96;
  }

LABEL_94:
  v33 = 0;
  if ((v1 & 0x4000000) == 0)
  {
    goto LABEL_95;
  }

LABEL_54:
  v34 = *(this + 32);
  v35 = LODWORD(v34);
  if (v34 == 0.0)
  {
    v35 = 0;
  }

  if ((v1 & 0x1000000) != 0)
  {
LABEL_57:
    v36 = *(this + 30);
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_58;
    }

    goto LABEL_97;
  }

LABEL_96:
  v36 = 0;
  if ((v1 & 0x10) != 0)
  {
LABEL_58:
    v37 = *(this + 10);
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_59;
    }

LABEL_98:
    v39 = 0;
    if ((v1 & 0x10000) != 0)
    {
      goto LABEL_62;
    }

    goto LABEL_99;
  }

LABEL_97:
  v37 = 0;
  if ((v1 & 0x40) == 0)
  {
    goto LABEL_98;
  }

LABEL_59:
  v38 = *(this + 12);
  v39 = LODWORD(v38);
  if (v38 == 0.0)
  {
    v39 = 0;
  }

  if ((v1 & 0x10000) != 0)
  {
LABEL_62:
    v40 = *(this + 22);
    if ((v1 & 0x2000) != 0)
    {
      goto LABEL_63;
    }

    goto LABEL_100;
  }

LABEL_99:
  v40 = 0;
  if ((v1 & 0x2000) != 0)
  {
LABEL_63:
    v41 = *(this + 19);
    if (v1)
    {
      goto LABEL_64;
    }

LABEL_101:
    v42 = 0.0;
    return v52 ^ v2 ^ v51 ^ v50 ^ v49 ^ v48 ^ v47 ^ v46 ^ v45 ^ v44 ^ v12 ^ v14 ^ v15 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29 ^ v30 ^ v32 ^ v33 ^ v35 ^ v36 ^ v37 ^ v39 ^ v40 ^ v41 ^ *&v42;
  }

LABEL_100:
  v41 = 0;
  if ((v1 & 1) == 0)
  {
    goto LABEL_101;
  }

LABEL_64:
  v42 = *(this + 1);
  if (v42 == 0.0)
  {
    v42 = 0.0;
  }

  return v52 ^ v2 ^ v51 ^ v50 ^ v49 ^ v48 ^ v47 ^ v46 ^ v45 ^ v44 ^ v12 ^ v14 ^ v15 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29 ^ v30 ^ v32 ^ v33 ^ v35 ^ v36 ^ v37 ^ v39 ^ v40 ^ v41 ^ *&v42;
}

double CMMsl::FallDetectionWristStateReplay::FallDetectionWristStateReplay(CMMsl::FallDetectionWristStateReplay *this)
{
  *this = off_10041E348;
  *(this + 99) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 27) = 0;
  return result;
}

{
  *this = off_10041E348;
  *(this + 99) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 27) = 0;
  return result;
}

void CMMsl::FallDetectionWristStateReplay::~FallDetectionWristStateReplay(CMMsl::FallDetectionWristStateReplay *this)
{
  *this = off_10041E348;
  v2 = *(this + 25);
  if (v2)
  {
    *(this + 26) = v2;
    operator delete(v2);
  }

  v3 = *(this + 22);
  if (v3)
  {
    *(this + 23) = v3;
    operator delete(v3);
  }

  v4 = *(this + 19);
  if (v4)
  {
    *(this + 20) = v4;
    operator delete(v4);
  }

  v5 = *(this + 16);
  if (v5)
  {
    *(this + 17) = v5;
    operator delete(v5);
  }

  v6 = *(this + 13);
  if (v6)
  {
    *(this + 14) = v6;
    operator delete(v6);
  }

  v7 = *(this + 10);
  if (v7)
  {
    *(this + 11) = v7;
    operator delete(v7);
  }

  v8 = *(this + 7);
  if (v8)
  {
    *(this + 8) = v8;
    operator delete(v8);
  }

  v9 = *(this + 4);
  if (v9)
  {
    *(this + 5) = v9;
    operator delete(v9);
  }

  v10 = *(this + 1);
  if (v10)
  {
    *(this + 2) = v10;
    operator delete(v10);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::FallDetectionWristStateReplay::~FallDetectionWristStateReplay(this);

  operator delete();
}

CMMsl::FallDetectionWristStateReplay *CMMsl::FallDetectionWristStateReplay::FallDetectionWristStateReplay(CMMsl::FallDetectionWristStateReplay *this, const CMMsl::FallDetectionWristStateReplay *a2)
{
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
  *this = off_10041E348;
  *(this + 99) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 27) = 0;
  v9 = *(a2 + 99);
  if ((v9 & 0x80000) != 0)
  {
    v11 = *(a2 + 47);
    v10 = 0x80000;
    *(this + 99) = 0x80000;
    *(this + 47) = v11;
    v9 = *(a2 + 99);
    if ((v9 & 0x1000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v10 = 0;
  if ((v9 & 0x1000000) != 0)
  {
LABEL_5:
    v12 = *(a2 + 388);
    v10 |= 0x1000000u;
    *(this + 99) = v10;
    *(this + 388) = v12;
    v9 = *(a2 + 99);
  }

LABEL_6:
  if (v9)
  {
    v15 = *(a2 + 28);
    v10 |= 1u;
    *(this + 99) = v10;
    *(this + 28) = v15;
    v9 = *(a2 + 99);
    if ((v9 & 0x40000) == 0)
    {
LABEL_8:
      if ((v9 & 2) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_42;
    }
  }

  else if ((v9 & 0x40000) == 0)
  {
    goto LABEL_8;
  }

  v16 = *(a2 + 46);
  v10 |= 0x40000u;
  *(this + 99) = v10;
  *(this + 46) = v16;
  v9 = *(a2 + 99);
  if ((v9 & 2) == 0)
  {
LABEL_9:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_43;
  }

LABEL_42:
  v17 = *(a2 + 29);
  v10 |= 2u;
  *(this + 99) = v10;
  *(this + 29) = v17;
  v9 = *(a2 + 99);
  if ((v9 & 0x10) == 0)
  {
LABEL_10:
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_44;
  }

LABEL_43:
  v18 = *(a2 + 32);
  v10 |= 0x10u;
  *(this + 99) = v10;
  *(this + 32) = v18;
  v9 = *(a2 + 99);
  if ((v9 & 0x20) == 0)
  {
LABEL_11:
    if ((v9 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_45;
  }

LABEL_44:
  v19 = *(a2 + 33);
  v10 |= 0x20u;
  *(this + 99) = v10;
  *(this + 33) = v19;
  v9 = *(a2 + 99);
  if ((v9 & 0x100) == 0)
  {
LABEL_12:
    if ((v9 & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_46;
  }

LABEL_45:
  v20 = *(a2 + 36);
  v10 |= 0x100u;
  *(this + 99) = v10;
  *(this + 36) = v20;
  v9 = *(a2 + 99);
  if ((v9 & 0x400) == 0)
  {
LABEL_13:
    if ((v9 & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_47;
  }

LABEL_46:
  v21 = *(a2 + 38);
  v10 |= 0x400u;
  *(this + 99) = v10;
  *(this + 38) = v21;
  v9 = *(a2 + 99);
  if ((v9 & 0x200) == 0)
  {
LABEL_14:
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_48;
  }

LABEL_47:
  v22 = *(a2 + 37);
  v10 |= 0x200u;
  *(this + 99) = v10;
  *(this + 37) = v22;
  v9 = *(a2 + 99);
  if ((v9 & 0x80) == 0)
  {
LABEL_15:
    if ((v9 & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_49;
  }

LABEL_48:
  v23 = *(a2 + 35);
  v10 |= 0x80u;
  *(this + 99) = v10;
  *(this + 35) = v23;
  v9 = *(a2 + 99);
  if ((v9 & 0x40) == 0)
  {
LABEL_16:
    if ((v9 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_50;
  }

LABEL_49:
  v24 = *(a2 + 34);
  v10 |= 0x40u;
  *(this + 99) = v10;
  *(this + 34) = v24;
  v9 = *(a2 + 99);
  if ((v9 & 0x1000) == 0)
  {
LABEL_17:
    if ((v9 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_51;
  }

LABEL_50:
  v25 = *(a2 + 40);
  v10 |= 0x1000u;
  *(this + 99) = v10;
  *(this + 40) = v25;
  v9 = *(a2 + 99);
  if ((v9 & 0x800) == 0)
  {
LABEL_18:
    if ((v9 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_52;
  }

LABEL_51:
  v26 = *(a2 + 39);
  v10 |= 0x800u;
  *(this + 99) = v10;
  *(this + 39) = v26;
  v9 = *(a2 + 99);
  if ((v9 & 0x20000) == 0)
  {
LABEL_19:
    if ((v9 & 0x10000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_53;
  }

LABEL_52:
  v27 = *(a2 + 45);
  v10 |= 0x20000u;
  *(this + 99) = v10;
  *(this + 45) = v27;
  v9 = *(a2 + 99);
  if ((v9 & 0x10000) == 0)
  {
LABEL_20:
    if ((v9 & 0x8000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_54;
  }

LABEL_53:
  v28 = *(a2 + 44);
  v10 |= 0x10000u;
  *(this + 99) = v10;
  *(this + 44) = v28;
  v9 = *(a2 + 99);
  if ((v9 & 0x8000) == 0)
  {
LABEL_21:
    if ((v9 & 0x4000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_55;
  }

LABEL_54:
  v29 = *(a2 + 43);
  v10 |= 0x8000u;
  *(this + 99) = v10;
  *(this + 43) = v29;
  v9 = *(a2 + 99);
  if ((v9 & 0x4000) == 0)
  {
LABEL_22:
    if ((v9 & 0x2000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_56;
  }

LABEL_55:
  v30 = *(a2 + 42);
  v10 |= 0x4000u;
  *(this + 99) = v10;
  *(this + 42) = v30;
  v9 = *(a2 + 99);
  if ((v9 & 0x2000) == 0)
  {
LABEL_23:
    if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_57;
  }

LABEL_56:
  v31 = *(a2 + 41);
  v10 |= 0x2000u;
  *(this + 99) = v10;
  *(this + 41) = v31;
  v9 = *(a2 + 99);
  if ((v9 & 0x80000000) == 0)
  {
LABEL_24:
    if ((v9 & 4) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_58;
  }

LABEL_57:
  v32 = *(a2 + 395);
  v10 |= 0x80000000;
  *(this + 99) = v10;
  *(this + 395) = v32;
  v9 = *(a2 + 99);
  if ((v9 & 4) == 0)
  {
LABEL_25:
    if ((v9 & 8) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_59;
  }

LABEL_58:
  v33 = *(a2 + 30);
  v10 |= 4u;
  *(this + 99) = v10;
  *(this + 30) = v33;
  v9 = *(a2 + 99);
  if ((v9 & 8) == 0)
  {
LABEL_26:
    if ((v9 & 0x100000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_60;
  }

LABEL_59:
  v34 = *(a2 + 31);
  v10 |= 8u;
  *(this + 99) = v10;
  *(this + 31) = v34;
  v9 = *(a2 + 99);
  if ((v9 & 0x100000) == 0)
  {
LABEL_27:
    if ((v9 & 0x400000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_61;
  }

LABEL_60:
  v35 = *(a2 + 384);
  v10 |= 0x100000u;
  *(this + 99) = v10;
  *(this + 384) = v35;
  v9 = *(a2 + 99);
  if ((v9 & 0x400000) == 0)
  {
LABEL_28:
    if ((v9 & 0x40000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_62;
  }

LABEL_61:
  v36 = *(a2 + 386);
  v10 |= 0x400000u;
  *(this + 99) = v10;
  *(this + 386) = v36;
  v9 = *(a2 + 99);
  if ((v9 & 0x40000000) == 0)
  {
LABEL_29:
    if ((v9 & 0x200000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_63;
  }

LABEL_62:
  v37 = *(a2 + 394);
  v10 |= 0x40000000u;
  *(this + 99) = v10;
  *(this + 394) = v37;
  v9 = *(a2 + 99);
  if ((v9 & 0x200000) == 0)
  {
LABEL_30:
    if ((v9 & 0x800000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_64;
  }

LABEL_63:
  v38 = *(a2 + 385);
  v10 |= 0x200000u;
  *(this + 99) = v10;
  *(this + 385) = v38;
  v9 = *(a2 + 99);
  if ((v9 & 0x800000) == 0)
  {
LABEL_31:
    if ((v9 & 0x10000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_65;
  }

LABEL_64:
  v39 = *(a2 + 387);
  v10 |= 0x800000u;
  *(this + 99) = v10;
  *(this + 387) = v39;
  v9 = *(a2 + 99);
  if ((v9 & 0x10000000) == 0)
  {
LABEL_32:
    if ((v9 & 0x8000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_66;
  }

LABEL_65:
  v40 = *(a2 + 392);
  v10 |= 0x10000000u;
  *(this + 99) = v10;
  *(this + 392) = v40;
  v9 = *(a2 + 99);
  if ((v9 & 0x8000000) == 0)
  {
LABEL_33:
    if ((v9 & 0x20000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_67;
  }

LABEL_66:
  v41 = *(a2 + 391);
  v10 |= 0x8000000u;
  *(this + 99) = v10;
  *(this + 391) = v41;
  v9 = *(a2 + 99);
  if ((v9 & 0x20000000) == 0)
  {
LABEL_34:
    if ((v9 & 0x2000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_68;
  }

LABEL_67:
  v42 = *(a2 + 393);
  v10 |= 0x20000000u;
  *(this + 99) = v10;
  *(this + 393) = v42;
  v9 = *(a2 + 99);
  if ((v9 & 0x2000000) == 0)
  {
LABEL_35:
    if ((v9 & 0x4000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

LABEL_68:
  v43 = *(a2 + 389);
  v10 |= 0x2000000u;
  *(this + 99) = v10;
  *(this + 389) = v43;
  if ((*(a2 + 99) & 0x4000000) != 0)
  {
LABEL_36:
    v13 = *(a2 + 390);
    *(this + 99) = v10 | 0x4000000;
    *(this + 390) = v13;
  }

LABEL_37:
  if (this != a2)
  {
    sub_100035BF0(this + 4, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 3);
    sub_100035BF0(v4, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 3);
    sub_100035BF0(v5, *(a2 + 7), *(a2 + 8), (*(a2 + 8) - *(a2 + 7)) >> 3);
    sub_100035BF0(v6, *(a2 + 13), *(a2 + 14), (*(a2 + 14) - *(a2 + 13)) >> 3);
    sub_100035BF0(this + 10, *(a2 + 10), *(a2 + 11), (*(a2 + 11) - *(a2 + 10)) >> 3);
    sub_100035BF0(this + 16, *(a2 + 16), *(a2 + 17), (*(a2 + 17) - *(a2 + 16)) >> 3);
    sub_100035BF0(this + 22, *(a2 + 22), *(a2 + 23), (*(a2 + 23) - *(a2 + 22)) >> 3);
    sub_100035BF0(v7, *(a2 + 19), *(a2 + 20), (*(a2 + 20) - *(a2 + 19)) >> 3);
    sub_100035BF0(v8, *(a2 + 25), *(a2 + 26), (*(a2 + 26) - *(a2 + 25)) >> 3);
  }

  return this;
}

CMMsl *CMMsl::FallDetectionWristStateReplay::operator=(CMMsl *a1, const CMMsl::FallDetectionWristStateReplay *a2)
{
  if (a1 != a2)
  {
    CMMsl::FallDetectionWristStateReplay::FallDetectionWristStateReplay(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::FallDetectionWristStateReplay::~FallDetectionWristStateReplay(v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::FallDetectionWristStateReplay *a2, CMMsl::FallDetectionWristStateReplay *a3)
{
  v3 = *(this + 99);
  *(this + 99) = *(a2 + 99);
  *(a2 + 99) = v3;
  v4 = *(this + 47);
  *(this + 47) = *(a2 + 47);
  *(a2 + 47) = v4;
  LOBYTE(v4) = *(this + 388);
  *(this + 388) = *(a2 + 388);
  *(a2 + 388) = v4;
  v5 = *(this + 28);
  *(this + 28) = *(a2 + 28);
  *(a2 + 28) = v5;
  v6 = *(this + 46);
  *(this + 46) = *(a2 + 46);
  *(a2 + 46) = v6;
  v7 = *(this + 29);
  *(this + 29) = *(a2 + 29);
  *(a2 + 29) = v7;
  v8 = *(this + 32);
  *(this + 32) = *(a2 + 32);
  *(a2 + 32) = v8;
  v9 = *(this + 33);
  *(this + 33) = *(a2 + 33);
  *(a2 + 33) = v9;
  v10 = *(this + 36);
  *(this + 36) = *(a2 + 36);
  *(a2 + 36) = v10;
  v11 = *(this + 38);
  *(this + 38) = *(a2 + 38);
  *(a2 + 38) = v11;
  v12 = *(this + 37);
  *(this + 37) = *(a2 + 37);
  *(a2 + 37) = v12;
  v13 = *(this + 35);
  *(this + 35) = *(a2 + 35);
  *(a2 + 35) = v13;
  v14 = *(this + 34);
  *(this + 34) = *(a2 + 34);
  *(a2 + 34) = v14;
  v15 = *(this + 40);
  *(this + 40) = *(a2 + 40);
  *(a2 + 40) = v15;
  v16 = *(this + 39);
  *(this + 39) = *(a2 + 39);
  *(a2 + 39) = v16;
  v17 = *(this + 45);
  *(this + 45) = *(a2 + 45);
  *(a2 + 45) = v17;
  v18 = *(this + 44);
  *(this + 44) = *(a2 + 44);
  *(a2 + 44) = v18;
  v19 = *(this + 43);
  *(this + 43) = *(a2 + 43);
  *(a2 + 43) = v19;
  v20 = *(this + 42);
  *(this + 42) = *(a2 + 42);
  *(a2 + 42) = v20;
  v21 = *(this + 41);
  *(this + 41) = *(a2 + 41);
  *(a2 + 41) = v21;
  LOBYTE(v21) = *(this + 395);
  *(this + 395) = *(a2 + 395);
  *(a2 + 395) = v21;
  v22 = *(this + 30);
  *(this + 30) = *(a2 + 30);
  *(a2 + 30) = v22;
  result = *(this + 31);
  *(this + 31) = *(a2 + 31);
  *(a2 + 31) = result;
  LOBYTE(v21) = *(this + 384);
  *(this + 384) = *(a2 + 384);
  *(a2 + 384) = v21;
  LOBYTE(v21) = *(this + 386);
  *(this + 386) = *(a2 + 386);
  *(a2 + 386) = v21;
  LOBYTE(v21) = *(this + 394);
  *(this + 394) = *(a2 + 394);
  *(a2 + 394) = v21;
  LOBYTE(v21) = *(this + 385);
  *(this + 385) = *(a2 + 385);
  *(a2 + 385) = v21;
  LOBYTE(v21) = *(this + 387);
  *(this + 387) = *(a2 + 387);
  *(a2 + 387) = v21;
  LOBYTE(v21) = *(this + 392);
  *(this + 392) = *(a2 + 392);
  *(a2 + 392) = v21;
  LOBYTE(v21) = *(this + 391);
  *(this + 391) = *(a2 + 391);
  *(a2 + 391) = v21;
  LOBYTE(v21) = *(this + 393);
  *(this + 393) = *(a2 + 393);
  *(a2 + 393) = v21;
  LOBYTE(v21) = *(this + 389);
  *(this + 389) = *(a2 + 389);
  *(a2 + 389) = v21;
  LOBYTE(v21) = *(this + 390);
  *(this + 390) = *(a2 + 390);
  *(a2 + 390) = v21;
  v24 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v24;
  v25 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v25;
  v26 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v26;
  v27 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v27;
  v28 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v28;
  v29 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v29;
  v30 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v30;
  v31 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v31;
  v32 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v32;
  v33 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v33;
  v34 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v34;
  v35 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v35;
  v36 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v36;
  v37 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v37;
  v38 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v38;
  v39 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v39;
  v40 = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v40;
  v41 = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v41;
  v42 = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v42;
  v43 = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = v43;
  v44 = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v44;
  v45 = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v45;
  v46 = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v46;
  v47 = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v47;
  v48 = *(this + 25);
  *(this + 25) = *(a2 + 25);
  *(a2 + 25) = v48;
  v49 = *(this + 26);
  *(this + 26) = *(a2 + 26);
  *(a2 + 26) = v49;
  v50 = *(this + 27);
  *(this + 27) = *(a2 + 27);
  *(a2 + 27) = v50;
  return result;
}

uint64_t CMMsl::FallDetectionWristStateReplay::FallDetectionWristStateReplay(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041E348;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 216) = 0;
  *(a1 + 200) = 0u;
  v4 = a1 + 200;
  *(a1 + 152) = 0u;
  v5 = a1 + 152;
  *(a1 + 104) = 0u;
  v6 = a1 + 104;
  *(a1 + 56) = 0u;
  v7 = a1 + 56;
  *(a1 + 8) = 0u;
  v8 = a1 + 8;
  *(a1 + 396) = *(a2 + 396);
  *(a2 + 396) = 0;
  *(a1 + 376) = *(a2 + 376);
  *(a1 + 388) = *(a2 + 388);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 368) = *(a2 + 368);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 360) = *(a2 + 360);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 395) = *(a2 + 395);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 386) = *(a2 + 386);
  *(a1 + 394) = *(a2 + 394);
  *(a1 + 385) = *(a2 + 385);
  *(a1 + 387) = *(a2 + 387);
  *(a1 + 392) = *(a2 + 392);
  *(a1 + 391) = *(a2 + 391);
  *(a1 + 393) = *(a2 + 393);
  *(a1 + 389) = *(a2 + 389);
  *(a1 + 390) = *(a2 + 390);
  sub_1002A2DD0(a1 + 32, (a2 + 32));
  sub_1002A2DD0(v8, (a2 + 8));
  sub_1002A2DD0(v7, (a2 + 56));
  sub_1002A2DD0(v6, (a2 + 104));
  sub_1002A2DD0(a1 + 80, (a2 + 80));
  sub_1002A2DD0(a1 + 128, (a2 + 128));
  sub_1002A2DD0(a1 + 176, (a2 + 176));
  sub_1002A2DD0(v5, (a2 + 152));
  sub_1002A2DD0(v4, (a2 + 200));
  return a1;
}

CMMsl *CMMsl::FallDetectionWristStateReplay::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::FallDetectionWristStateReplay::FallDetectionWristStateReplay(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::FallDetectionWristStateReplay::~FallDetectionWristStateReplay(v5);
  }

  return a1;
}

uint64_t CMMsl::FallDetectionWristStateReplay::formatText(CMMsl::FallDetectionWristStateReplay *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 99);
  if (v5)
  {
    PB::TextFormatter::format(a2, "absoluteTimestampOfImpact", *(this + 28));
    v5 = *(this + 99);
    if ((v5 & 0x100000) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_62;
    }
  }

  else if ((v5 & 0x100000) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "anyOffWristAfterImpact", *(this + 384));
  v5 = *(this + 99);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_63;
  }

LABEL_62:
  PB::TextFormatter::format(a2, "aopTimestampOfImpact", *(this + 29));
  v5 = *(this + 99);
  if ((v5 & 0x200000) == 0)
  {
LABEL_5:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_64;
  }

LABEL_63:
  PB::TextFormatter::format(a2, "continuousLockedBeforeImpact", *(this + 385));
  v5 = *(this + 99);
  if ((v5 & 0x400000) == 0)
  {
LABEL_6:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_64:
  PB::TextFormatter::format(a2, "continuousOffWristBeforeImpact", *(this + 386));
  if ((*(this + 99) & 0x800000) != 0)
  {
LABEL_7:
    PB::TextFormatter::format(a2, "continuousStaticAndVerticalBeforeImpact", *(this + 387));
  }

LABEL_8:
  v6 = *(this + 1);
  v7 = *(this + 2);
  while (v6 != v7)
  {
    v8 = *v6++;
    PB::TextFormatter::format(a2, "coreMotionWristStateHistoryEndimestamp", v8);
  }

  v9 = *(this + 4);
  v10 = *(this + 5);
  while (v9 != v10)
  {
    v11 = *v9++;
    PB::TextFormatter::format(a2, "coreMotionWristStateHistoryStartTimestamp", v11);
  }

  v12 = *(this + 7);
  v13 = *(this + 8);
  while (v12 != v13)
  {
    v14 = *v12++;
    PB::TextFormatter::format(a2, "coreMotionWristStateHistoryState", v14);
  }

  v15 = *(this + 99);
  if ((v15 & 0x1000000) != 0)
  {
    PB::TextFormatter::format(a2, "gatingEnabled", *(this + 388));
    v15 = *(this + 99);
    if ((v15 & 0x2000000) == 0)
    {
LABEL_16:
      if ((v15 & 0x4000000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_68;
    }
  }

  else if ((v15 & 0x2000000) == 0)
  {
    goto LABEL_16;
  }

  PB::TextFormatter::format(a2, "gatingLockedNoMotionPreImpact", *(this + 389));
  v15 = *(this + 99);
  if ((v15 & 0x4000000) == 0)
  {
LABEL_17:
    if ((v15 & 0x8000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_69;
  }

LABEL_68:
  PB::TextFormatter::format(a2, "gatingMotionPreImpact", *(this + 390));
  v15 = *(this + 99);
  if ((v15 & 0x8000000) == 0)
  {
LABEL_18:
    if ((v15 & 0x10000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_70;
  }

LABEL_69:
  PB::TextFormatter::format(a2, "gatingOffWristPostImpact", *(this + 391));
  v15 = *(this + 99);
  if ((v15 & 0x10000000) == 0)
  {
LABEL_19:
    if ((v15 & 0x20000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_71;
  }

LABEL_70:
  PB::TextFormatter::format(a2, "gatingOffWristPreImpact", *(this + 392));
  v15 = *(this + 99);
  if ((v15 & 0x20000000) == 0)
  {
LABEL_20:
    if ((v15 & 0x40000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_72;
  }

LABEL_71:
  PB::TextFormatter::format(a2, "gatingOnCharger", *(this + 393));
  v15 = *(this + 99);
  if ((v15 & 0x40000000) == 0)
  {
LABEL_21:
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_73;
  }

LABEL_72:
  PB::TextFormatter::format(a2, "hasMotionBeforeImpact", *(this + 394));
  v15 = *(this + 99);
  if ((v15 & 0x80000000) == 0)
  {
LABEL_22:
    if ((v15 & 4) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_74;
  }

LABEL_73:
  PB::TextFormatter::format(a2, "lastChargerState", *(this + 395));
  v15 = *(this + 99);
  if ((v15 & 4) == 0)
  {
LABEL_23:
    if ((v15 & 8) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_75;
  }

LABEL_74:
  PB::TextFormatter::format(a2, "lastChargerStateDuration", *(this + 30));
  v15 = *(this + 99);
  if ((v15 & 8) == 0)
  {
LABEL_24:
    if ((v15 & 0x10) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_76;
  }

LABEL_75:
  PB::TextFormatter::format(a2, "lastChargerStateDurationThreshold", *(this + 31));
  v15 = *(this + 99);
  if ((v15 & 0x10) == 0)
  {
LABEL_25:
    if ((v15 & 0x20) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_77;
  }

LABEL_76:
  PB::TextFormatter::format(a2, "lastCoreMotionWristState", *(this + 32));
  v15 = *(this + 99);
  if ((v15 & 0x20) == 0)
  {
LABEL_26:
    if ((v15 & 0x40) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_78;
  }

LABEL_77:
  PB::TextFormatter::format(a2, "lastCoreMotionWristStateDuration", *(this + 33));
  v15 = *(this + 99);
  if ((v15 & 0x40) == 0)
  {
LABEL_27:
    if ((v15 & 0x80) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_79;
  }

LABEL_78:
  PB::TextFormatter::format(a2, "lastCoreMotionWristStateDurationPostEnd", *(this + 34));
  v15 = *(this + 99);
  if ((v15 & 0x80) == 0)
  {
LABEL_28:
    if ((v15 & 0x100) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_80;
  }

LABEL_79:
  PB::TextFormatter::format(a2, "lastCoreMotionWristStateDurationPostStart", *(this + 35));
  v15 = *(this + 99);
  if ((v15 & 0x100) == 0)
  {
LABEL_29:
    if ((v15 & 0x200) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_81;
  }

LABEL_80:
  PB::TextFormatter::format(a2, "lastCoreMotionWristStateDurationPostThreshold", *(this + 36));
  v15 = *(this + 99);
  if ((v15 & 0x200) == 0)
  {
LABEL_30:
    if ((v15 & 0x400) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_82;
  }

LABEL_81:
  PB::TextFormatter::format(a2, "lastCoreMotionWristStateDurationPreEnd", *(this + 37));
  v15 = *(this + 99);
  if ((v15 & 0x400) == 0)
  {
LABEL_31:
    if ((v15 & 0x800) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_83;
  }

LABEL_82:
  PB::TextFormatter::format(a2, "lastCoreMotionWristStateDurationPreStart", *(this + 38));
  v15 = *(this + 99);
  if ((v15 & 0x800) == 0)
  {
LABEL_32:
    if ((v15 & 0x1000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_84;
  }

LABEL_83:
  PB::TextFormatter::format(a2, "lastLockedStateDurationPreEnd", *(this + 39));
  v15 = *(this + 99);
  if ((v15 & 0x1000) == 0)
  {
LABEL_33:
    if ((v15 & 0x2000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_85;
  }

LABEL_84:
  PB::TextFormatter::format(a2, "lastLockedStateDurationPreStart", *(this + 40));
  v15 = *(this + 99);
  if ((v15 & 0x2000) == 0)
  {
LABEL_34:
    if ((v15 & 0x4000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_86;
  }

LABEL_85:
  PB::TextFormatter::format(a2, "lastMotionState", *(this + 41));
  v15 = *(this + 99);
  if ((v15 & 0x4000) == 0)
  {
LABEL_35:
    if ((v15 & 0x8000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

LABEL_86:
  PB::TextFormatter::format(a2, "lastMotionStateEndTime", *(this + 42));
  if ((*(this + 99) & 0x8000) != 0)
  {
LABEL_36:
    PB::TextFormatter::format(a2, "lastMotionStateStartTime", *(this + 43));
  }

LABEL_37:
  v16 = *(this + 10);
  v17 = *(this + 11);
  while (v16 != v17)
  {
    v18 = *v16++;
    PB::TextFormatter::format(a2, "lockStateHistoryEndTimestamp", v18);
  }

  v19 = *(this + 13);
  v20 = *(this + 14);
  while (v19 != v20)
  {
    v21 = *v19++;
    PB::TextFormatter::format(a2, "lockStateHistoryStartTimestamp", v21);
  }

  v22 = *(this + 16);
  v23 = *(this + 17);
  while (v22 != v23)
  {
    v24 = *v22++;
    PB::TextFormatter::format(a2, "lockStateHistoryState", v24);
  }

  v25 = *(this + 99);
  if ((v25 & 0x10000) != 0)
  {
    PB::TextFormatter::format(a2, "motionLookbackBeforeImpactEndOfInterval", *(this + 44));
    v25 = *(this + 99);
  }

  if ((v25 & 0x20000) != 0)
  {
    PB::TextFormatter::format(a2, "motionLookbackBeforeImpactStartOfInterval", *(this + 45));
  }

  v26 = *(this + 19);
  v27 = *(this + 20);
  while (v26 != v27)
  {
    v28 = *v26++;
    PB::TextFormatter::format(a2, "motionStateHistoryEndTimestamp", v28);
  }

  v29 = *(this + 22);
  v30 = *(this + 23);
  while (v29 != v30)
  {
    v31 = *v29++;
    PB::TextFormatter::format(a2, "motionStateHistoryStartTimestamp", v31);
  }

  v32 = *(this + 25);
  v33 = *(this + 26);
  while (v32 != v33)
  {
    v34 = *v32++;
    PB::TextFormatter::format(a2, "motionStateHistoryState", v34);
  }

  v35 = *(this + 99);
  if ((v35 & 0x40000) != 0)
  {
    PB::TextFormatter::format(a2, "relativeTimestampToImpact", *(this + 46));
    v35 = *(this + 99);
  }

  if ((v35 & 0x80000) != 0)
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 47));
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::FallDetectionWristStateReplay::readFrom(CMMsl::FallDetectionWristStateReplay *this, PB::Reader *a2)
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
        break;
      }

      v23 = v10 >> 3;
      if ((v10 >> 3) <= 100)
      {
        switch(v23)
        {
          case 1:
            *(this + 99) |= 0x80000u;
            v25 = *(a2 + 1);
            v24 = *(a2 + 2);
            v26 = *a2;
            if (v25 <= 0xFFFFFFFFFFFFFFF5 && v25 + 10 <= v24)
            {
              v27 = 0;
              v28 = 0;
              v29 = 0;
              v30 = (v26 + v25);
              v31 = v25 + 1;
              do
              {
                *(a2 + 1) = v31;
                v32 = *v30++;
                v29 |= (v32 & 0x7F) << v27;
                if ((v32 & 0x80) == 0)
                {
                  goto LABEL_548;
                }

                v27 += 7;
                ++v31;
                v14 = v28++ > 8;
              }

              while (!v14);
LABEL_406:
              v29 = 0;
              goto LABEL_548;
            }

            v336 = 0;
            v337 = 0;
            v29 = 0;
            v17 = v24 >= v25;
            v338 = v24 - v25;
            if (!v17)
            {
              v338 = 0;
            }

            v339 = (v26 + v25);
            v340 = v25 + 1;
            while (2)
            {
              if (v338)
              {
                v341 = *v339;
                *(a2 + 1) = v340;
                v29 |= (v341 & 0x7F) << v336;
                if (v341 < 0)
                {
                  v336 += 7;
                  --v338;
                  ++v339;
                  ++v340;
                  v14 = v337++ > 8;
                  if (v14)
                  {
                    goto LABEL_406;
                  }

                  continue;
                }

                if (*(a2 + 24))
                {
                  v29 = 0;
                }
              }

              else
              {
                v29 = 0;
                *(a2 + 24) = 1;
              }

              break;
            }

LABEL_548:
            *(this + 47) = v29;
            goto LABEL_584;
          case 2:
            *(this + 99) |= 0x1000000u;
            v167 = *(a2 + 1);
            if (v167 >= *(a2 + 2))
            {
              v170 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v168 = v167 + 1;
              v169 = *(*a2 + v167);
              *(a2 + 1) = v168;
              v170 = v169 != 0;
            }

            *(this + 388) = v170;
            goto LABEL_584;
          case 3:
            *(this + 99) |= 1u;
            v164 = *(a2 + 1);
            if (v164 > 0xFFFFFFFFFFFFFFF7 || v164 + 8 > *(a2 + 2))
            {
              goto LABEL_230;
            }

            *(this + 28) = *(*a2 + v164);
            goto LABEL_583;
          case 4:
            *(this + 99) |= 0x40000u;
            v154 = *(a2 + 1);
            if (v154 > 0xFFFFFFFFFFFFFFF7 || v154 + 8 > *(a2 + 2))
            {
              goto LABEL_230;
            }

            *(this + 46) = *(*a2 + v154);
            goto LABEL_583;
          case 5:
            *(this + 99) |= 2u;
            v156 = *(a2 + 1);
            v155 = *(a2 + 2);
            v157 = *a2;
            if (v156 <= 0xFFFFFFFFFFFFFFF5 && v156 + 10 <= v155)
            {
              v158 = 0;
              v159 = 0;
              v160 = 0;
              v161 = (v157 + v156);
              v162 = v156 + 1;
              do
              {
                *(a2 + 1) = v162;
                v163 = *v161++;
                v160 |= (v163 & 0x7F) << v158;
                if ((v163 & 0x80) == 0)
                {
                  goto LABEL_539;
                }

                v158 += 7;
                ++v162;
                v14 = v159++ > 8;
              }

              while (!v14);
LABEL_380:
              v160 = 0;
              goto LABEL_539;
            }

            v318 = 0;
            v319 = 0;
            v160 = 0;
            v17 = v155 >= v156;
            v320 = v155 - v156;
            if (!v17)
            {
              v320 = 0;
            }

            v321 = (v157 + v156);
            v322 = v156 + 1;
            while (2)
            {
              if (v320)
              {
                v323 = *v321;
                *(a2 + 1) = v322;
                v160 |= (v323 & 0x7F) << v318;
                if (v323 < 0)
                {
                  v318 += 7;
                  --v320;
                  ++v321;
                  ++v322;
                  v14 = v319++ > 8;
                  if (v14)
                  {
                    goto LABEL_380;
                  }

                  continue;
                }

                if (*(a2 + 24))
                {
                  v160 = 0;
                }
              }

              else
              {
                v160 = 0;
                *(a2 + 24) = 1;
              }

              break;
            }

LABEL_539:
            *(this + 29) = v160;
            goto LABEL_584;
          case 21:
            *(this + 99) |= 0x10u;
            v130 = *(a2 + 1);
            v129 = *(a2 + 2);
            v131 = *a2;
            if (v130 <= 0xFFFFFFFFFFFFFFF5 && v130 + 10 <= v129)
            {
              v132 = 0;
              v133 = 0;
              v134 = 0;
              v135 = (v131 + v130);
              v136 = v130 + 1;
              do
              {
                *(a2 + 1) = v136;
                v137 = *v135++;
                v134 |= (v137 & 0x7F) << v132;
                if ((v137 & 0x80) == 0)
                {
                  goto LABEL_533;
                }

                v132 += 7;
                ++v136;
                v14 = v133++ > 8;
              }

              while (!v14);
LABEL_362:
              v134 = 0;
              goto LABEL_533;
            }

            v306 = 0;
            v307 = 0;
            v134 = 0;
            v17 = v129 >= v130;
            v308 = v129 - v130;
            if (!v17)
            {
              v308 = 0;
            }

            v309 = (v131 + v130);
            v310 = v130 + 1;
            while (2)
            {
              if (v308)
              {
                v311 = *v309;
                *(a2 + 1) = v310;
                v134 |= (v311 & 0x7F) << v306;
                if (v311 < 0)
                {
                  v306 += 7;
                  --v308;
                  ++v309;
                  ++v310;
                  v14 = v307++ > 8;
                  if (v14)
                  {
                    goto LABEL_362;
                  }

                  continue;
                }

                if (*(a2 + 24))
                {
                  v134 = 0;
                }
              }

              else
              {
                v134 = 0;
                *(a2 + 24) = 1;
              }

              break;
            }

LABEL_533:
            *(this + 32) = v134;
            goto LABEL_584;
          case 22:
            *(this + 99) |= 0x20u;
            v152 = *(a2 + 1);
            if (v152 > 0xFFFFFFFFFFFFFFF7 || v152 + 8 > *(a2 + 2))
            {
              goto LABEL_230;
            }

            *(this + 33) = *(*a2 + v152);
            goto LABEL_583;
          case 23:
            *(this + 99) |= 0x100u;
            v153 = *(a2 + 1);
            if (v153 > 0xFFFFFFFFFFFFFFF7 || v153 + 8 > *(a2 + 2))
            {
              goto LABEL_230;
            }

            *(this + 36) = *(*a2 + v153);
            goto LABEL_583;
          case 24:
            *(this + 99) |= 0x400u;
            v142 = *(a2 + 1);
            if (v142 > 0xFFFFFFFFFFFFFFF7 || v142 + 8 > *(a2 + 2))
            {
              goto LABEL_230;
            }

            *(this + 38) = *(*a2 + v142);
            goto LABEL_583;
          case 25:
            *(this + 99) |= 0x200u;
            v166 = *(a2 + 1);
            if (v166 > 0xFFFFFFFFFFFFFFF7 || v166 + 8 > *(a2 + 2))
            {
              goto LABEL_230;
            }

            *(this + 37) = *(*a2 + v166);
            goto LABEL_583;
          case 26:
            *(this + 99) |= 0x80u;
            v128 = *(a2 + 1);
            if (v128 > 0xFFFFFFFFFFFFFFF7 || v128 + 8 > *(a2 + 2))
            {
              goto LABEL_230;
            }

            *(this + 35) = *(*a2 + v128);
            goto LABEL_583;
          case 27:
            *(this + 99) |= 0x40u;
            v119 = *(a2 + 1);
            if (v119 > 0xFFFFFFFFFFFFFFF7 || v119 + 8 > *(a2 + 2))
            {
              goto LABEL_230;
            }

            *(this + 34) = *(*a2 + v119);
            goto LABEL_583;
          case 28:
            *(this + 99) |= 0x1000u;
            v165 = *(a2 + 1);
            if (v165 > 0xFFFFFFFFFFFFFFF7 || v165 + 8 > *(a2 + 2))
            {
              goto LABEL_230;
            }

            *(this + 40) = *(*a2 + v165);
            goto LABEL_583;
          case 29:
            *(this + 99) |= 0x800u;
            v171 = *(a2 + 1);
            if (v171 > 0xFFFFFFFFFFFFFFF7 || v171 + 8 > *(a2 + 2))
            {
              goto LABEL_230;
            }

            *(this + 39) = *(*a2 + v171);
            goto LABEL_583;
          case 30:
            *(this + 99) |= 0x20000u;
            v111 = *(a2 + 1);
            v110 = *(a2 + 2);
            v112 = *a2;
            if (v111 <= 0xFFFFFFFFFFFFFFF5 && v111 + 10 <= v110)
            {
              v113 = 0;
              v114 = 0;
              v115 = 0;
              v116 = (v112 + v111);
              v117 = v111 + 1;
              do
              {
                *(a2 + 1) = v117;
                v118 = *v116++;
                v115 |= (v118 & 0x7F) << v113;
                if ((v118 & 0x80) == 0)
                {
                  goto LABEL_530;
                }

                v113 += 7;
                ++v117;
                v14 = v114++ > 8;
              }

              while (!v14);
LABEL_350:
              v115 = 0;
              goto LABEL_530;
            }

            v300 = 0;
            v301 = 0;
            v115 = 0;
            v17 = v110 >= v111;
            v302 = v110 - v111;
            if (!v17)
            {
              v302 = 0;
            }

            v303 = (v112 + v111);
            v304 = v111 + 1;
            while (2)
            {
              if (v302)
              {
                v305 = *v303;
                *(a2 + 1) = v304;
                v115 |= (v305 & 0x7F) << v300;
                if (v305 < 0)
                {
                  v300 += 7;
                  --v302;
                  ++v303;
                  ++v304;
                  v14 = v301++ > 8;
                  if (v14)
                  {
                    goto LABEL_350;
                  }

                  continue;
                }

                if (*(a2 + 24))
                {
                  v115 = 0;
                }
              }

              else
              {
                v115 = 0;
                *(a2 + 24) = 1;
              }

              break;
            }

LABEL_530:
            *(this + 45) = v115;
            goto LABEL_584;
          case 31:
            *(this + 99) |= 0x10000u;
            v182 = *(a2 + 1);
            v181 = *(a2 + 2);
            v183 = *a2;
            if (v182 <= 0xFFFFFFFFFFFFFFF5 && v182 + 10 <= v181)
            {
              v184 = 0;
              v185 = 0;
              v186 = 0;
              v187 = (v183 + v182);
              v188 = v182 + 1;
              do
              {
                *(a2 + 1) = v188;
                v189 = *v187++;
                v186 |= (v189 & 0x7F) << v184;
                if ((v189 & 0x80) == 0)
                {
                  goto LABEL_545;
                }

                v184 += 7;
                ++v188;
                v14 = v185++ > 8;
              }

              while (!v14);
LABEL_398:
              v186 = 0;
              goto LABEL_545;
            }

            v330 = 0;
            v331 = 0;
            v186 = 0;
            v17 = v181 >= v182;
            v332 = v181 - v182;
            if (!v17)
            {
              v332 = 0;
            }

            v333 = (v183 + v182);
            v334 = v182 + 1;
            while (2)
            {
              if (v332)
              {
                v335 = *v333;
                *(a2 + 1) = v334;
                v186 |= (v335 & 0x7F) << v330;
                if (v335 < 0)
                {
                  v330 += 7;
                  --v332;
                  ++v333;
                  ++v334;
                  v14 = v331++ > 8;
                  if (v14)
                  {
                    goto LABEL_398;
                  }

                  continue;
                }

                if (*(a2 + 24))
                {
                  v186 = 0;
                }
              }

              else
              {
                v186 = 0;
                *(a2 + 24) = 1;
              }

              break;
            }

LABEL_545:
            *(this + 44) = v186;
            goto LABEL_584;
          case 32:
            *(this + 99) |= 0x8000u;
            v144 = *(a2 + 1);
            v143 = *(a2 + 2);
            v145 = *a2;
            if (v144 <= 0xFFFFFFFFFFFFFFF5 && v144 + 10 <= v143)
            {
              v146 = 0;
              v147 = 0;
              v148 = 0;
              v149 = (v145 + v144);
              v150 = v144 + 1;
              do
              {
                *(a2 + 1) = v150;
                v151 = *v149++;
                v148 |= (v151 & 0x7F) << v146;
                if ((v151 & 0x80) == 0)
                {
                  goto LABEL_536;
                }

                v146 += 7;
                ++v150;
                v14 = v147++ > 8;
              }

              while (!v14);
LABEL_370:
              v148 = 0;
              goto LABEL_536;
            }

            v312 = 0;
            v313 = 0;
            v148 = 0;
            v17 = v143 >= v144;
            v314 = v143 - v144;
            if (!v17)
            {
              v314 = 0;
            }

            v315 = (v145 + v144);
            v316 = v144 + 1;
            while (2)
            {
              if (v314)
              {
                v317 = *v315;
                *(a2 + 1) = v316;
                v148 |= (v317 & 0x7F) << v312;
                if (v317 < 0)
                {
                  v312 += 7;
                  --v314;
                  ++v315;
                  ++v316;
                  v14 = v313++ > 8;
                  if (v14)
                  {
                    goto LABEL_370;
                  }

                  continue;
                }

                if (*(a2 + 24))
                {
                  v148 = 0;
                }
              }

              else
              {
                v148 = 0;
                *(a2 + 24) = 1;
              }

              break;
            }

LABEL_536:
            *(this + 43) = v148;
            goto LABEL_584;
          case 33:
            *(this + 99) |= 0x4000u;
            v173 = *(a2 + 1);
            v172 = *(a2 + 2);
            v174 = *a2;
            if (v173 <= 0xFFFFFFFFFFFFFFF5 && v173 + 10 <= v172)
            {
              v175 = 0;
              v176 = 0;
              v177 = 0;
              v178 = (v174 + v173);
              v179 = v173 + 1;
              do
              {
                *(a2 + 1) = v179;
                v180 = *v178++;
                v177 |= (v180 & 0x7F) << v175;
                if ((v180 & 0x80) == 0)
                {
                  goto LABEL_542;
                }

                v175 += 7;
                ++v179;
                v14 = v176++ > 8;
              }

              while (!v14);
LABEL_390:
              v177 = 0;
              goto LABEL_542;
            }

            v324 = 0;
            v325 = 0;
            v177 = 0;
            v17 = v172 >= v173;
            v326 = v172 - v173;
            if (!v17)
            {
              v326 = 0;
            }

            v327 = (v174 + v173);
            v328 = v173 + 1;
            while (2)
            {
              if (v326)
              {
                v329 = *v327;
                *(a2 + 1) = v328;
                v177 |= (v329 & 0x7F) << v324;
                if (v329 < 0)
                {
                  v324 += 7;
                  --v326;
                  ++v327;
                  ++v328;
                  v14 = v325++ > 8;
                  if (v14)
                  {
                    goto LABEL_390;
                  }

                  continue;
                }

                if (*(a2 + 24))
                {
                  v177 = 0;
                }
              }

              else
              {
                v177 = 0;
                *(a2 + 24) = 1;
              }

              break;
            }

LABEL_542:
            *(this + 42) = v177;
            goto LABEL_584;
          case 34:
            *(this + 99) |= 0x2000u;
            v195 = *(a2 + 1);
            v194 = *(a2 + 2);
            v196 = *a2;
            if (v195 <= 0xFFFFFFFFFFFFFFF5 && v195 + 10 <= v194)
            {
              v197 = 0;
              v198 = 0;
              v199 = 0;
              v200 = (v196 + v195);
              v201 = v195 + 1;
              do
              {
                *(a2 + 1) = v201;
                v202 = *v200++;
                v199 |= (v202 & 0x7F) << v197;
                if ((v202 & 0x80) == 0)
                {
                  goto LABEL_551;
                }

                v197 += 7;
                ++v201;
                v14 = v198++ > 8;
              }

              while (!v14);
LABEL_414:
              v199 = 0;
              goto LABEL_551;
            }

            v342 = 0;
            v343 = 0;
            v199 = 0;
            v17 = v194 >= v195;
            v344 = v194 - v195;
            if (!v17)
            {
              v344 = 0;
            }

            v345 = (v196 + v195);
            v346 = v195 + 1;
            break;
          case 41:
            *(this + 99) |= 0x80000000;
            v105 = *(a2 + 1);
            if (v105 >= *(a2 + 2))
            {
              v108 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v106 = v105 + 1;
              v107 = *(*a2 + v105);
              *(a2 + 1) = v106;
              v108 = v107 != 0;
            }

            *(this + 395) = v108;
            goto LABEL_584;
          case 42:
            *(this + 99) |= 4u;
            v207 = *(a2 + 1);
            if (v207 > 0xFFFFFFFFFFFFFFF7 || v207 + 8 > *(a2 + 2))
            {
              goto LABEL_230;
            }

            *(this + 30) = *(*a2 + v207);
            goto LABEL_583;
          case 43:
            *(this + 99) |= 8u;
            v109 = *(a2 + 1);
            if (v109 <= 0xFFFFFFFFFFFFFFF7 && v109 + 8 <= *(a2 + 2))
            {
              *(this + 31) = *(*a2 + v109);
              goto LABEL_583;
            }

LABEL_230:
            *(a2 + 24) = 1;
            goto LABEL_584;
          case 51:
            *(this + 99) |= 0x100000u;
            v138 = *(a2 + 1);
            if (v138 >= *(a2 + 2))
            {
              v141 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v139 = v138 + 1;
              v140 = *(*a2 + v138);
              *(a2 + 1) = v139;
              v141 = v140 != 0;
            }

            *(this + 384) = v141;
            goto LABEL_584;
          case 52:
            *(this + 99) |= 0x400000u;
            v203 = *(a2 + 1);
            if (v203 >= *(a2 + 2))
            {
              v206 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v204 = v203 + 1;
              v205 = *(*a2 + v203);
              *(a2 + 1) = v204;
              v206 = v205 != 0;
            }

            *(this + 386) = v206;
            goto LABEL_584;
          case 53:
            *(this + 99) |= 0x40000000u;
            v190 = *(a2 + 1);
            if (v190 >= *(a2 + 2))
            {
              v193 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v191 = v190 + 1;
              v192 = *(*a2 + v190);
              *(a2 + 1) = v191;
              v193 = v192 != 0;
            }

            *(this + 394) = v193;
            goto LABEL_584;
          case 54:
            *(this + 99) |= 0x200000u;
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

            *(this + 385) = v123;
            goto LABEL_584;
          case 55:
            *(this + 99) |= 0x800000u;
            v124 = *(a2 + 1);
            if (v124 >= *(a2 + 2))
            {
              v127 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v125 = v124 + 1;
              v126 = *(*a2 + v124);
              *(a2 + 1) = v125;
              v127 = v126 != 0;
            }

            *(this + 387) = v127;
            goto LABEL_584;
          default:
            goto LABEL_339;
        }

        while (1)
        {
          if (!v344)
          {
            v199 = 0;
            *(a2 + 24) = 1;
            goto LABEL_551;
          }

          v347 = *v345;
          *(a2 + 1) = v346;
          v199 |= (v347 & 0x7F) << v342;
          if ((v347 & 0x80) == 0)
          {
            break;
          }

          v342 += 7;
          --v344;
          ++v345;
          ++v346;
          v14 = v343++ > 8;
          if (v14)
          {
            goto LABEL_414;
          }
        }

        if (*(a2 + 24))
        {
          v199 = 0;
        }

LABEL_551:
        *(this + 41) = v199;
        goto LABEL_584;
      }

      if (v23 > 152)
      {
        if (v23 <= 162)
        {
          switch(v23)
          {
            case 0x99:
              if (v22 != 2)
              {
                v358 = *(this + 8);
                v357 = *(this + 9);
                if (v358 >= v357)
                {
                  v391 = *(this + 7);
                  v392 = v358 - v391;
                  v393 = (v358 - v391) >> 3;
                  v394 = v393 + 1;
                  if ((v393 + 1) >> 61)
                  {
                    goto LABEL_591;
                  }

                  v395 = v357 - v391;
                  if (v395 >> 2 > v394)
                  {
                    v394 = v395 >> 2;
                  }

                  if (v395 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v396 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v396 = v394;
                  }

                  if (v396)
                  {
                    sub_10000CDCC(this + 56, v396);
                  }

                  v437 = (v358 - v391) >> 3;
                  v438 = (8 * v393);
                  v439 = (8 * v393 - 8 * v437);
                  *v438 = 0;
                  v350 = v438 + 1;
                  memcpy(v439, v391, v392);
                  v440 = *(this + 7);
                  *(this + 7) = v439;
                  *(this + 8) = v350;
                  *(this + 9) = 0;
                  if (v440)
                  {
                    operator delete(v440);
                  }
                }

                else
                {
                  *v358 = 0;
                  v350 = v358 + 8;
                }

                *(this + 8) = v350;
                goto LABEL_579;
              }

              if (PB::Reader::placeMark())
              {
                goto LABEL_590;
              }

              v284 = *(a2 + 1);
              v285 = *(a2 + 2);
              while (v284 < v285 && (*(a2 + 24) & 1) == 0)
              {
                v287 = *(this + 8);
                v286 = *(this + 9);
                if (v287 >= v286)
                {
                  v289 = *(this + 7);
                  v290 = v287 - v289;
                  v291 = (v287 - v289) >> 3;
                  v292 = v291 + 1;
                  if ((v291 + 1) >> 61)
                  {
                    goto LABEL_591;
                  }

                  v293 = v286 - v289;
                  if (v293 >> 2 > v292)
                  {
                    v292 = v293 >> 2;
                  }

                  if (v293 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v294 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v294 = v292;
                  }

                  if (v294)
                  {
                    sub_10000CDCC(this + 56, v294);
                  }

                  v295 = (v287 - v289) >> 3;
                  v296 = (8 * v291);
                  v297 = (8 * v291 - 8 * v295);
                  *v296 = 0;
                  v288 = v296 + 1;
                  memcpy(v297, v289, v290);
                  v298 = *(this + 7);
                  *(this + 7) = v297;
                  *(this + 8) = v288;
                  *(this + 9) = 0;
                  if (v298)
                  {
                    operator delete(v298);
                  }
                }

                else
                {
                  *v287 = 0;
                  v288 = v287 + 8;
                }

                *(this + 8) = v288;
                v299 = *(a2 + 1);
                if (v299 > 0xFFFFFFFFFFFFFFF7 || v299 + 8 > *(a2 + 2))
                {
LABEL_337:
                  *(a2 + 24) = 1;
                  goto LABEL_338;
                }

                *(v288 - 1) = *(*a2 + v299);
                v285 = *(a2 + 2);
                v284 = *(a2 + 1) + 8;
                *(a2 + 1) = v284;
              }

              goto LABEL_338;
            case 0xA1:
              if (v22 != 2)
              {
                v356 = *(this + 14);
                v355 = *(this + 15);
                if (v356 >= v355)
                {
                  v385 = *(this + 13);
                  v386 = v356 - v385;
                  v387 = (v356 - v385) >> 3;
                  v388 = v387 + 1;
                  if ((v387 + 1) >> 61)
                  {
                    goto LABEL_591;
                  }

                  v389 = v355 - v385;
                  if (v389 >> 2 > v388)
                  {
                    v388 = v389 >> 2;
                  }

                  if (v389 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v390 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v390 = v388;
                  }

                  if (v390)
                  {
                    sub_10000CDCC(this + 104, v390);
                  }

                  v433 = (v356 - v385) >> 3;
                  v434 = (8 * v387);
                  v435 = (8 * v387 - 8 * v433);
                  *v434 = 0;
                  v350 = v434 + 1;
                  memcpy(v435, v385, v386);
                  v436 = *(this + 13);
                  *(this + 13) = v435;
                  *(this + 14) = v350;
                  *(this + 15) = 0;
                  if (v436)
                  {
                    operator delete(v436);
                  }
                }

                else
                {
                  *v356 = 0;
                  v350 = v356 + 8;
                }

                *(this + 14) = v350;
                goto LABEL_579;
              }

              if (PB::Reader::placeMark())
              {
                goto LABEL_590;
              }

              v264 = *(a2 + 1);
              v265 = *(a2 + 2);
              while (v264 < v265 && (*(a2 + 24) & 1) == 0)
              {
                v267 = *(this + 14);
                v266 = *(this + 15);
                if (v267 >= v266)
                {
                  v269 = *(this + 13);
                  v270 = v267 - v269;
                  v271 = (v267 - v269) >> 3;
                  v272 = v271 + 1;
                  if ((v271 + 1) >> 61)
                  {
                    goto LABEL_591;
                  }

                  v273 = v266 - v269;
                  if (v273 >> 2 > v272)
                  {
                    v272 = v273 >> 2;
                  }

                  if (v273 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v274 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v274 = v272;
                  }

                  if (v274)
                  {
                    sub_10000CDCC(this + 104, v274);
                  }

                  v275 = (v267 - v269) >> 3;
                  v276 = (8 * v271);
                  v277 = (8 * v271 - 8 * v275);
                  *v276 = 0;
                  v268 = v276 + 1;
                  memcpy(v277, v269, v270);
                  v278 = *(this + 13);
                  *(this + 13) = v277;
                  *(this + 14) = v268;
                  *(this + 15) = 0;
                  if (v278)
                  {
                    operator delete(v278);
                  }
                }

                else
                {
                  *v267 = 0;
                  v268 = v267 + 8;
                }

                *(this + 14) = v268;
                v279 = *(a2 + 1);
                if (v279 > 0xFFFFFFFFFFFFFFF7 || v279 + 8 > *(a2 + 2))
                {
                  goto LABEL_337;
                }

                *(v268 - 1) = *(*a2 + v279);
                v265 = *(a2 + 2);
                v264 = *(a2 + 1) + 8;
                *(a2 + 1) = v264;
              }

              goto LABEL_338;
            case 0xA2:
              if (v22 != 2)
              {
                v366 = *(this + 11);
                v365 = *(this + 12);
                if (v366 >= v365)
                {
                  v415 = *(this + 10);
                  v416 = v366 - v415;
                  v417 = (v366 - v415) >> 3;
                  v418 = v417 + 1;
                  if ((v417 + 1) >> 61)
                  {
LABEL_591:
                    sub_10000CD24();
                  }

                  v419 = v365 - v415;
                  if (v419 >> 2 > v418)
                  {
                    v418 = v419 >> 2;
                  }

                  if (v419 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v420 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v420 = v418;
                  }

                  if (v420)
                  {
                    sub_10000CDCC(this + 80, v420);
                  }

                  v453 = (v366 - v415) >> 3;
                  v454 = (8 * v417);
                  v455 = (8 * v417 - 8 * v453);
                  *v454 = 0;
                  v350 = v454 + 1;
                  memcpy(v455, v415, v416);
                  v456 = *(this + 10);
                  *(this + 10) = v455;
                  *(this + 11) = v350;
                  *(this + 12) = 0;
                  if (v456)
                  {
                    operator delete(v456);
                  }
                }

                else
                {
                  *v366 = 0;
                  v350 = v366 + 8;
                }

                *(this + 11) = v350;
                goto LABEL_579;
              }

              if (PB::Reader::placeMark())
              {
                goto LABEL_590;
              }

              v57 = *(a2 + 1);
              v58 = *(a2 + 2);
              while (v57 < v58 && (*(a2 + 24) & 1) == 0)
              {
                v60 = *(this + 11);
                v59 = *(this + 12);
                if (v60 >= v59)
                {
                  v62 = *(this + 10);
                  v63 = v60 - v62;
                  v64 = (v60 - v62) >> 3;
                  v65 = v64 + 1;
                  if ((v64 + 1) >> 61)
                  {
                    goto LABEL_591;
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
                    sub_10000CDCC(this + 80, v67);
                  }

                  v68 = (v60 - v62) >> 3;
                  v69 = (8 * v64);
                  v70 = (8 * v64 - 8 * v68);
                  *v69 = 0;
                  v61 = v69 + 1;
                  memcpy(v70, v62, v63);
                  v71 = *(this + 10);
                  *(this + 10) = v70;
                  *(this + 11) = v61;
                  *(this + 12) = 0;
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

                *(this + 11) = v61;
                v72 = *(a2 + 1);
                if (v72 > 0xFFFFFFFFFFFFFFF7 || v72 + 8 > *(a2 + 2))
                {
                  goto LABEL_337;
                }

                *(v61 - 1) = *(*a2 + v72);
                v58 = *(a2 + 2);
                v57 = *(a2 + 1) + 8;
                *(a2 + 1) = v57;
              }

LABEL_338:
              PB::Reader::recallMark();
              goto LABEL_584;
          }
        }

        else
        {
          if (v23 <= 164)
          {
            if (v23 == 163)
            {
              if (v22 != 2)
              {
                v349 = *(this + 17);
                v348 = *(this + 18);
                if (v349 >= v348)
                {
                  v367 = *(this + 16);
                  v368 = v349 - v367;
                  v369 = (v349 - v367) >> 3;
                  v370 = v369 + 1;
                  if ((v369 + 1) >> 61)
                  {
                    goto LABEL_591;
                  }

                  v371 = v348 - v367;
                  if (v371 >> 2 > v370)
                  {
                    v370 = v371 >> 2;
                  }

                  if (v371 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v372 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v372 = v370;
                  }

                  if (v372)
                  {
                    sub_10000CDCC(this + 128, v372);
                  }

                  v421 = (v349 - v367) >> 3;
                  v422 = (8 * v369);
                  v423 = (8 * v369 - 8 * v421);
                  *v422 = 0;
                  v350 = v422 + 1;
                  memcpy(v423, v367, v368);
                  v424 = *(this + 16);
                  *(this + 16) = v423;
                  *(this + 17) = v350;
                  *(this + 18) = 0;
                  if (v424)
                  {
                    operator delete(v424);
                  }
                }

                else
                {
                  *v349 = 0;
                  v350 = v349 + 8;
                }

                *(this + 17) = v350;
LABEL_579:
                v457 = *(a2 + 1);
                if (v457 <= 0xFFFFFFFFFFFFFFF7 && v457 + 8 <= *(a2 + 2))
                {
                  *(v350 - 1) = *(*a2 + v457);
LABEL_583:
                  *(a2 + 1) += 8;
                }

                else
                {
                  *(a2 + 24) = 1;
                }

                goto LABEL_584;
              }

              if (PB::Reader::placeMark())
              {
                goto LABEL_590;
              }

              v212 = *(a2 + 1);
              v213 = *(a2 + 2);
              while (v212 < v213 && (*(a2 + 24) & 1) == 0)
              {
                v215 = *(this + 17);
                v214 = *(this + 18);
                if (v215 >= v214)
                {
                  v217 = *(this + 16);
                  v218 = v215 - v217;
                  v219 = (v215 - v217) >> 3;
                  v220 = v219 + 1;
                  if ((v219 + 1) >> 61)
                  {
                    goto LABEL_591;
                  }

                  v221 = v214 - v217;
                  if (v221 >> 2 > v220)
                  {
                    v220 = v221 >> 2;
                  }

                  if (v221 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v222 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v222 = v220;
                  }

                  if (v222)
                  {
                    sub_10000CDCC(this + 128, v222);
                  }

                  v223 = (v215 - v217) >> 3;
                  v224 = (8 * v219);
                  v225 = (8 * v219 - 8 * v223);
                  *v224 = 0;
                  v216 = v224 + 1;
                  memcpy(v225, v217, v218);
                  v226 = *(this + 16);
                  *(this + 16) = v225;
                  *(this + 17) = v216;
                  *(this + 18) = 0;
                  if (v226)
                  {
                    operator delete(v226);
                  }
                }

                else
                {
                  *v215 = 0;
                  v216 = v215 + 8;
                }

                *(this + 17) = v216;
                v227 = *(a2 + 1);
                if (v227 > 0xFFFFFFFFFFFFFFF7 || v227 + 8 > *(a2 + 2))
                {
                  goto LABEL_337;
                }

                *(v216 - 1) = *(*a2 + v227);
                v213 = *(a2 + 2);
                v212 = *(a2 + 1) + 8;
                *(a2 + 1) = v212;
              }
            }

            else
            {
              if (v22 != 2)
              {
                v360 = *(this + 23);
                v359 = *(this + 24);
                if (v360 >= v359)
                {
                  v397 = *(this + 22);
                  v398 = v360 - v397;
                  v399 = (v360 - v397) >> 3;
                  v400 = v399 + 1;
                  if ((v399 + 1) >> 61)
                  {
                    goto LABEL_591;
                  }

                  v401 = v359 - v397;
                  if (v401 >> 2 > v400)
                  {
                    v400 = v401 >> 2;
                  }

                  if (v401 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v402 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v402 = v400;
                  }

                  if (v402)
                  {
                    sub_10000CDCC(this + 176, v402);
                  }

                  v441 = (v360 - v397) >> 3;
                  v442 = (8 * v399);
                  v443 = (8 * v399 - 8 * v441);
                  *v442 = 0;
                  v350 = v442 + 1;
                  memcpy(v443, v397, v398);
                  v444 = *(this + 22);
                  *(this + 22) = v443;
                  *(this + 23) = v350;
                  *(this + 24) = 0;
                  if (v444)
                  {
                    operator delete(v444);
                  }
                }

                else
                {
                  *v360 = 0;
                  v350 = v360 + 8;
                }

                *(this + 23) = v350;
                goto LABEL_579;
              }

              if (PB::Reader::placeMark())
              {
                goto LABEL_590;
              }

              v37 = *(a2 + 1);
              v38 = *(a2 + 2);
              while (v37 < v38 && (*(a2 + 24) & 1) == 0)
              {
                v40 = *(this + 23);
                v39 = *(this + 24);
                if (v40 >= v39)
                {
                  v42 = *(this + 22);
                  v43 = v40 - v42;
                  v44 = (v40 - v42) >> 3;
                  v45 = v44 + 1;
                  if ((v44 + 1) >> 61)
                  {
                    goto LABEL_591;
                  }

                  v46 = v39 - v42;
                  if (v46 >> 2 > v45)
                  {
                    v45 = v46 >> 2;
                  }

                  if (v46 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v47 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v47 = v45;
                  }

                  if (v47)
                  {
                    sub_10000CDCC(this + 176, v47);
                  }

                  v48 = (v40 - v42) >> 3;
                  v49 = (8 * v44);
                  v50 = (8 * v44 - 8 * v48);
                  *v49 = 0;
                  v41 = v49 + 1;
                  memcpy(v50, v42, v43);
                  v51 = *(this + 22);
                  *(this + 22) = v50;
                  *(this + 23) = v41;
                  *(this + 24) = 0;
                  if (v51)
                  {
                    operator delete(v51);
                  }
                }

                else
                {
                  *v40 = 0;
                  v41 = v40 + 8;
                }

                *(this + 23) = v41;
                v52 = *(a2 + 1);
                if (v52 > 0xFFFFFFFFFFFFFFF7 || v52 + 8 > *(a2 + 2))
                {
                  goto LABEL_337;
                }

                *(v41 - 1) = *(*a2 + v52);
                v38 = *(a2 + 2);
                v37 = *(a2 + 1) + 8;
                *(a2 + 1) = v37;
              }
            }

            goto LABEL_338;
          }

          if (v23 == 165)
          {
            if (v22 != 2)
            {
              v354 = *(this + 20);
              v353 = *(this + 21);
              if (v354 >= v353)
              {
                v379 = *(this + 19);
                v380 = v354 - v379;
                v381 = (v354 - v379) >> 3;
                v382 = v381 + 1;
                if ((v381 + 1) >> 61)
                {
                  goto LABEL_591;
                }

                v383 = v353 - v379;
                if (v383 >> 2 > v382)
                {
                  v382 = v383 >> 2;
                }

                if (v383 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v384 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v384 = v382;
                }

                if (v384)
                {
                  sub_10000CDCC(this + 152, v384);
                }

                v429 = (v354 - v379) >> 3;
                v430 = (8 * v381);
                v431 = (8 * v381 - 8 * v429);
                *v430 = 0;
                v350 = v430 + 1;
                memcpy(v431, v379, v380);
                v432 = *(this + 19);
                *(this + 19) = v431;
                *(this + 20) = v350;
                *(this + 21) = 0;
                if (v432)
                {
                  operator delete(v432);
                }
              }

              else
              {
                *v354 = 0;
                v350 = v354 + 8;
              }

              *(this + 20) = v350;
              goto LABEL_579;
            }

            if (PB::Reader::placeMark())
            {
              goto LABEL_590;
            }

            v244 = *(a2 + 1);
            v245 = *(a2 + 2);
            while (v244 < v245 && (*(a2 + 24) & 1) == 0)
            {
              v247 = *(this + 20);
              v246 = *(this + 21);
              if (v247 >= v246)
              {
                v249 = *(this + 19);
                v250 = v247 - v249;
                v251 = (v247 - v249) >> 3;
                v252 = v251 + 1;
                if ((v251 + 1) >> 61)
                {
                  goto LABEL_591;
                }

                v253 = v246 - v249;
                if (v253 >> 2 > v252)
                {
                  v252 = v253 >> 2;
                }

                if (v253 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v254 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v254 = v252;
                }

                if (v254)
                {
                  sub_10000CDCC(this + 152, v254);
                }

                v255 = (v247 - v249) >> 3;
                v256 = (8 * v251);
                v257 = (8 * v251 - 8 * v255);
                *v256 = 0;
                v248 = v256 + 1;
                memcpy(v257, v249, v250);
                v258 = *(this + 19);
                *(this + 19) = v257;
                *(this + 20) = v248;
                *(this + 21) = 0;
                if (v258)
                {
                  operator delete(v258);
                }
              }

              else
              {
                *v247 = 0;
                v248 = v247 + 8;
              }

              *(this + 20) = v248;
              v259 = *(a2 + 1);
              if (v259 > 0xFFFFFFFFFFFFFFF7 || v259 + 8 > *(a2 + 2))
              {
                goto LABEL_337;
              }

              *(v248 - 1) = *(*a2 + v259);
              v245 = *(a2 + 2);
              v244 = *(a2 + 1) + 8;
              *(a2 + 1) = v244;
            }

            goto LABEL_338;
          }

          if (v23 == 166)
          {
            if (v22 != 2)
            {
              v364 = *(this + 26);
              v363 = *(this + 27);
              if (v364 >= v363)
              {
                v409 = *(this + 25);
                v410 = v364 - v409;
                v411 = (v364 - v409) >> 3;
                v412 = v411 + 1;
                if ((v411 + 1) >> 61)
                {
                  goto LABEL_591;
                }

                v413 = v363 - v409;
                if (v413 >> 2 > v412)
                {
                  v412 = v413 >> 2;
                }

                if (v413 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v414 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v414 = v412;
                }

                if (v414)
                {
                  sub_10000CDCC(this + 200, v414);
                }

                v449 = (v364 - v409) >> 3;
                v450 = (8 * v411);
                v451 = (8 * v411 - 8 * v449);
                *v450 = 0;
                v350 = v450 + 1;
                memcpy(v451, v409, v410);
                v452 = *(this + 25);
                *(this + 25) = v451;
                *(this + 26) = v350;
                *(this + 27) = 0;
                if (v452)
                {
                  operator delete(v452);
                }
              }

              else
              {
                *v364 = 0;
                v350 = v364 + 8;
              }

              *(this + 26) = v350;
              goto LABEL_579;
            }

            if (PB::Reader::placeMark())
            {
              goto LABEL_590;
            }

            v89 = *(a2 + 1);
            v90 = *(a2 + 2);
            while (v89 < v90 && (*(a2 + 24) & 1) == 0)
            {
              v92 = *(this + 26);
              v91 = *(this + 27);
              if (v92 >= v91)
              {
                v94 = *(this + 25);
                v95 = v92 - v94;
                v96 = (v92 - v94) >> 3;
                v97 = v96 + 1;
                if ((v96 + 1) >> 61)
                {
                  goto LABEL_591;
                }

                v98 = v91 - v94;
                if (v98 >> 2 > v97)
                {
                  v97 = v98 >> 2;
                }

                if (v98 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v99 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v99 = v97;
                }

                if (v99)
                {
                  sub_10000CDCC(this + 200, v99);
                }

                v100 = (v92 - v94) >> 3;
                v101 = (8 * v96);
                v102 = (8 * v96 - 8 * v100);
                *v101 = 0;
                v93 = v101 + 1;
                memcpy(v102, v94, v95);
                v103 = *(this + 25);
                *(this + 25) = v102;
                *(this + 26) = v93;
                *(this + 27) = 0;
                if (v103)
                {
                  operator delete(v103);
                }
              }

              else
              {
                *v92 = 0;
                v93 = v92 + 8;
              }

              *(this + 26) = v93;
              v104 = *(a2 + 1);
              if (v104 > 0xFFFFFFFFFFFFFFF7 || v104 + 8 > *(a2 + 2))
              {
                goto LABEL_337;
              }

              *(v93 - 1) = *(*a2 + v104);
              v90 = *(a2 + 2);
              v89 = *(a2 + 1) + 8;
              *(a2 + 1) = v89;
            }

            goto LABEL_338;
          }
        }
      }

      else if (v23 <= 103)
      {
        switch(v23)
        {
          case 'e':
            *(this + 99) |= 0x10000000u;
            v280 = *(a2 + 1);
            if (v280 >= *(a2 + 2))
            {
              v283 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v281 = v280 + 1;
              v282 = *(*a2 + v280);
              *(a2 + 1) = v281;
              v283 = v282 != 0;
            }

            *(this + 392) = v283;
            goto LABEL_584;
          case 'f':
            *(this + 99) |= 0x8000000u;
            v260 = *(a2 + 1);
            if (v260 >= *(a2 + 2))
            {
              v263 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v261 = v260 + 1;
              v262 = *(*a2 + v260);
              *(a2 + 1) = v261;
              v263 = v262 != 0;
            }

            *(this + 391) = v263;
            goto LABEL_584;
          case 'g':
            *(this + 99) |= 0x20000000u;
            v53 = *(a2 + 1);
            if (v53 >= *(a2 + 2))
            {
              v56 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v54 = v53 + 1;
              v55 = *(*a2 + v53);
              *(a2 + 1) = v54;
              v56 = v55 != 0;
            }

            *(this + 393) = v56;
            goto LABEL_584;
        }
      }

      else
      {
        if (v23 > 150)
        {
          if (v23 == 151)
          {
            if (v22 != 2)
            {
              v352 = *(this + 5);
              v351 = *(this + 6);
              if (v352 >= v351)
              {
                v373 = *(this + 4);
                v374 = v352 - v373;
                v375 = (v352 - v373) >> 3;
                v376 = v375 + 1;
                if ((v375 + 1) >> 61)
                {
                  goto LABEL_591;
                }

                v377 = v351 - v373;
                if (v377 >> 2 > v376)
                {
                  v376 = v377 >> 2;
                }

                if (v377 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v378 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v378 = v376;
                }

                if (v378)
                {
                  sub_10000CDCC(this + 32, v378);
                }

                v425 = (v352 - v373) >> 3;
                v426 = (8 * v375);
                v427 = (8 * v375 - 8 * v425);
                *v426 = 0;
                v350 = v426 + 1;
                memcpy(v427, v373, v374);
                v428 = *(this + 4);
                *(this + 4) = v427;
                *(this + 5) = v350;
                *(this + 6) = 0;
                if (v428)
                {
                  operator delete(v428);
                }
              }

              else
              {
                *v352 = 0;
                v350 = v352 + 8;
              }

              *(this + 5) = v350;
              goto LABEL_579;
            }

            if (PB::Reader::placeMark())
            {
              goto LABEL_590;
            }

            v228 = *(a2 + 1);
            v229 = *(a2 + 2);
            while (v228 < v229 && (*(a2 + 24) & 1) == 0)
            {
              v231 = *(this + 5);
              v230 = *(this + 6);
              if (v231 >= v230)
              {
                v233 = *(this + 4);
                v234 = v231 - v233;
                v235 = (v231 - v233) >> 3;
                v236 = v235 + 1;
                if ((v235 + 1) >> 61)
                {
                  goto LABEL_591;
                }

                v237 = v230 - v233;
                if (v237 >> 2 > v236)
                {
                  v236 = v237 >> 2;
                }

                if (v237 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v238 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v238 = v236;
                }

                if (v238)
                {
                  sub_10000CDCC(this + 32, v238);
                }

                v239 = (v231 - v233) >> 3;
                v240 = (8 * v235);
                v241 = (8 * v235 - 8 * v239);
                *v240 = 0;
                v232 = v240 + 1;
                memcpy(v241, v233, v234);
                v242 = *(this + 4);
                *(this + 4) = v241;
                *(this + 5) = v232;
                *(this + 6) = 0;
                if (v242)
                {
                  operator delete(v242);
                }
              }

              else
              {
                *v231 = 0;
                v232 = v231 + 8;
              }

              *(this + 5) = v232;
              v243 = *(a2 + 1);
              if (v243 > 0xFFFFFFFFFFFFFFF7 || v243 + 8 > *(a2 + 2))
              {
                goto LABEL_337;
              }

              *(v232 - 1) = *(*a2 + v243);
              v229 = *(a2 + 2);
              v228 = *(a2 + 1) + 8;
              *(a2 + 1) = v228;
            }
          }

          else
          {
            if (v22 != 2)
            {
              v362 = *(this + 2);
              v361 = *(this + 3);
              if (v362 >= v361)
              {
                v403 = *(this + 1);
                v404 = v362 - v403;
                v405 = (v362 - v403) >> 3;
                v406 = v405 + 1;
                if ((v405 + 1) >> 61)
                {
                  goto LABEL_591;
                }

                v407 = v361 - v403;
                if (v407 >> 2 > v406)
                {
                  v406 = v407 >> 2;
                }

                if (v407 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v408 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v408 = v406;
                }

                if (v408)
                {
                  sub_10000CDCC(this + 8, v408);
                }

                v445 = (v362 - v403) >> 3;
                v446 = (8 * v405);
                v447 = (8 * v405 - 8 * v445);
                *v446 = 0;
                v350 = v446 + 1;
                memcpy(v447, v403, v404);
                v448 = *(this + 1);
                *(this + 1) = v447;
                *(this + 2) = v350;
                *(this + 3) = 0;
                if (v448)
                {
                  operator delete(v448);
                }
              }

              else
              {
                *v362 = 0;
                v350 = v362 + 8;
              }

              *(this + 2) = v350;
              goto LABEL_579;
            }

            if (PB::Reader::placeMark())
            {
              goto LABEL_590;
            }

            v73 = *(a2 + 1);
            v74 = *(a2 + 2);
            while (v73 < v74 && (*(a2 + 24) & 1) == 0)
            {
              v76 = *(this + 2);
              v75 = *(this + 3);
              if (v76 >= v75)
              {
                v78 = *(this + 1);
                v79 = v76 - v78;
                v80 = (v76 - v78) >> 3;
                v81 = v80 + 1;
                if ((v80 + 1) >> 61)
                {
                  goto LABEL_591;
                }

                v82 = v75 - v78;
                if (v82 >> 2 > v81)
                {
                  v81 = v82 >> 2;
                }

                if (v82 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v83 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v83 = v81;
                }

                if (v83)
                {
                  sub_10000CDCC(this + 8, v83);
                }

                v84 = (v76 - v78) >> 3;
                v85 = (8 * v80);
                v86 = (8 * v80 - 8 * v84);
                *v85 = 0;
                v77 = v85 + 1;
                memcpy(v86, v78, v79);
                v87 = *(this + 1);
                *(this + 1) = v86;
                *(this + 2) = v77;
                *(this + 3) = 0;
                if (v87)
                {
                  operator delete(v87);
                }
              }

              else
              {
                *v76 = 0;
                v77 = v76 + 8;
              }

              *(this + 2) = v77;
              v88 = *(a2 + 1);
              if (v88 > 0xFFFFFFFFFFFFFFF7 || v88 + 8 > *(a2 + 2))
              {
                goto LABEL_337;
              }

              *(v77 - 1) = *(*a2 + v88);
              v74 = *(a2 + 2);
              v73 = *(a2 + 1) + 8;
              *(a2 + 1) = v73;
            }
          }

          goto LABEL_338;
        }

        if (v23 == 104)
        {
          *(this + 99) |= 0x2000000u;
          v208 = *(a2 + 1);
          if (v208 >= *(a2 + 2))
          {
            v211 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v209 = v208 + 1;
            v210 = *(*a2 + v208);
            *(a2 + 1) = v209;
            v211 = v210 != 0;
          }

          *(this + 389) = v211;
          goto LABEL_584;
        }

        if (v23 == 105)
        {
          *(this + 99) |= 0x4000000u;
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

          *(this + 390) = v36;
          goto LABEL_584;
        }
      }

LABEL_339:
      if ((PB::Reader::skip(a2, v23, v22, 0) & 1) == 0)
      {
LABEL_590:
        v458 = 0;
        return v458 & 1;
      }

LABEL_584:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

  v458 = v4 ^ 1;
  return v458 & 1;
}