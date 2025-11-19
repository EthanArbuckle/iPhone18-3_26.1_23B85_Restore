id NBSCLog()
{
  if (qword_41110 != -1)
  {
    sub_23450();
  }

  v1 = qword_41108;

  return v1;
}

void sub_E64(id a1)
{
  qword_41108 = os_log_create("com.apple.Accessibility", "BRLTranslation.NBSC");

  _objc_release_x1();
}

id NBSCLogFormatParser()
{
  if (qword_41120 != -1)
  {
    sub_23464();
  }

  v1 = qword_41118;

  return v1;
}

void sub_EEC(id a1)
{
  qword_41118 = os_log_create("com.apple.Accessibility", "BRLTranslation.NBSC");

  _objc_release_x1();
}

uint64_t CToText::Init(CToText *this, const char *__filename)
{
  v3 = fopen(__filename, "rb");
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  if (fread(this, 0xBD0uLL, 1uLL, v3))
  {
    return 0;
  }

  fclose(v4);
  return 2;
}

uint64_t CToText::SetConvertMode(CToText *this, int a2)
{
  this->TenMap.Dat = 0;
  result = 1;
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        result = 0;
        v5 = 20;
        break;
      case 4:
        result = 0;
        v5 = 21;
        break;
      case 5:
        result = 0;
        v5 = 22;
        break;
      default:
        return result;
    }

    this->EvNo = v5;
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      result = 0;
      v4 = 4;
      this->EvNo = 4;
    }

    else
    {
      if (a2 != 2)
      {
        return result;
      }

      result = 0;
      this->EvNo = 1;
      v4 = 8;
    }

    this->TenMap.Dat = v4;
  }

  else
  {
    result = 0;
    this->EvNo = 0;
  }

  return result;
}

uint64_t CToText::BrlToText(CToText *this, uint64_t a2)
{
  v4 = *(a2 + 8);
  this->TextStr = v4;
  *(v4 + 8) = 0;
  *v4 = 0;
  v5 = *(a2 + 16);
  this->VoiceStr = v5;
  *(v5 + 8) = 0;
  *v5 = 0;
  this->Rep = 0;
  v6 = *a2;
  if (this->EvNo == 21)
  {
    v7 = *a2;
  }

  else
  {
    v7 = v6 - 1;
    if ((v6 - 1) >= 0x40u)
    {
      if (*a2)
      {
        return 3;
      }

      v7 = 64;
    }
  }

  this->cCh = v7;
    ;
  }

  this->cChOld = this->cCh;
  *(a2 + 24) = (this->TenMap.Dat >> 2) & 1;
  return this->Rep;
}

uint64_t CToText::EventCall(CToText *this)
{
  EvNo = this->EvNo;
  if (EvNo <= 3)
  {
    if (EvNo)
    {
      if (EvNo == 1)
      {

        return CToText::Func1(this);
      }

      goto LABEL_12;
    }

    CToText::Func0(this);
    return 0;
  }

  if (EvNo == 4)
  {
    CToText::Func4(this);
    return 0;
  }

  if (EvNo != 5)
  {
LABEL_12:
    if ((EvNo - 13) > 6)
    {
      if (EvNo == 21)
      {
        CToText::Func21(this);
      }

      else if (EvNo == 20)
      {
        cCh = this->cCh;
        if (cCh > 0x40)
        {
          v4 = 3;
        }

        else
        {
          v4 = 0;
          *this->TextStr = dword_24110[cCh];
        }

        this->Rep = v4;
      }

      else
      {
        CToText::Func2(this);
      }
    }

    else
    {
      CToText::Func13(this);
    }

    return 0;
  }

  return CToText::Func5(this);
}

uint64_t CToText::Func0(CToText *this)
{
  cCh = this->cCh;
  if (this->cCh > 0x2Eu)
  {
    if (cCh == 47)
    {
      this->EvNo = 4;
      this->TenMap.Dat |= 0x30u;
      goto LABEL_18;
    }

    if (cCh == 53)
    {
      v7 = 18;
      goto LABEL_17;
    }

    if (cCh != 64)
    {
      goto LABEL_13;
    }

    v3 = 0;
    TextStr = this->TextStr;
    v5 = 32;
LABEL_11:
    *TextStr = v5;
    goto LABEL_19;
  }

  if (cCh == 21)
  {
    v3 = 0;
    TextStr = this->TextStr;
    v5 = 33;
    goto LABEL_11;
  }

  if (cCh == 35)
  {
    v7 = 19;
LABEL_17:
    this->EvNo = v7;
    goto LABEL_18;
  }

  if (cCh != 37)
  {
LABEL_13:
    v6 = this->m_pcKanDat[4 * cCh];
    this->EvNo = v6;
    if (v6 - 161 <= 0x3E)
    {
      v3 = 0;
      *this->TextStr = v6 + 65216;
      this->EvNo = 0;
      goto LABEL_19;
    }

    if (v6 >= 0x14)
    {
      this->EvNo = 0;
      v3 = 4;
      goto LABEL_19;
    }

LABEL_18:
    v3 = 1;
    goto LABEL_19;
  }

  this->TenMap.Dat |= 4u;
  this->EvNo = 4;
  wcscpy(this->VoiceStr, dword_240F0);
  v3 = 2;
LABEL_19:
  this->Rep = v3;
  return 0;
}

uint64_t CToText::Func1(CToText *this)
{
  cCh = this->cCh;
  if (cCh == 35)
  {
    if ((this->TenMap.Dat & 8) != 0)
    {
      goto LABEL_15;
    }

    if ((this->TenMap.Dat & 0x14) == 0)
    {
      v2 = 0;
      *&this->EvNo = 0x100000000;
      return v2;
    }

    v4 = 4;
    goto LABEL_14;
  }

  if (cCh != 64)
  {
    v5 = 4 * cCh + 252 * this->EvNo;
    v6 = this->m_pcKanDat[v5];
    if (this->m_pcKanDat[v5])
    {
      if ((v6 - 48) > 9)
      {
        v2 = 0;
        this->EvNo = this->TenMap.Dat & 4;
        return v2;
      }

      v2 = 0;
      *this->TextStr = v6;
      goto LABEL_11;
    }

    if ((this->TenMap.Dat & 8) != 0)
    {
LABEL_15:
      v2 = 0;
      this->Rep = 3;
      return v2;
    }

    v4 = this->TenMap.Dat & 4;
LABEL_14:
    this->EvNo = v4;
    return 1;
  }

  if ((this->TenMap.Dat & 8) != 0)
  {
    goto LABEL_15;
  }

  v2 = 0;
  *this->TextStr = 32;
  Dat = this->TenMap.Dat;
  this->TenMap.Dat = Dat & 0xEF;
  this->EvNo = Dat & 4;
LABEL_11:
  this->Rep = 0;
  return v2;
}

uint64_t CToText::Func4(CToText *this)
{
  cCh = this->cCh;
  if (this->cCh <= 0x20u)
  {
    if (this->cCh <= 0x10u)
    {
      if (cCh == 3)
      {
        if ((~this->TenMap.Dat & 0x30) != 0)
        {
          goto LABEL_23;
        }

        TextStr = this->TextStr;
        v6 = 65378;
        goto LABEL_29;
      }

      if (cCh != 15)
      {
        goto LABEL_23;
      }

      this->TenMap.Dat &= ~0x20u;
      p_EvNo = &this->EvNo;
      v8 = 13;
    }

    else
    {
      switch(cCh)
      {
        case 0x11:
          this->TenMap.Dat &= ~0x20u;
          p_EvNo = &this->EvNo;
          v8 = 15;
          break;
        case 0x13:
          this->TenMap.Dat &= ~0x20u;
          p_EvNo = &this->EvNo;
          v8 = 14;
          break;
        case 0x1F:
          Dat = this->TenMap.Dat;
          *&this->EvNo = 0x100000005;
          this->TenMap.Dat = Dat & 0xDC | 2;
          return 0;
        default:
LABEL_23:
          v9 = this->m_pcKanDat[252 * this->EvNo + 4 * cCh];
          if (v9)
          {
            if (v9 >= 33)
            {
              *this->TextStr = v9;
              this->TenMap.Dat &= ~0x20u;
LABEL_42:
              this->Rep = 0;
              return 0;
            }

            this->EvNo = v9;
            this->TenMap.Dat &= ~0x20u;
            v12 = 1;
          }

          else
          {
            this->TenMap.Dat &= ~0x20u;
            v12 = 3;
          }

          this->Rep = v12;
          return 0;
      }
    }

    goto LABEL_34;
  }

  if (this->cCh > 0x34u)
  {
    if (cCh != 53)
    {
      if (cCh != 59)
      {
        if (cCh != 64)
        {
          goto LABEL_23;
        }

        v4 = this->TenMap.Dat;
        if ((~v4 & 0x30) == 0)
        {
          TextStr = this->TextStr;
          v6 = 65380;
LABEL_29:
          *TextStr = v6;
          v10 = this->TenMap.Dat & 0xCF;
          goto LABEL_44;
        }

        v13 = this->TextStr;
        v14 = 32;
LABEL_41:
        *v13 = v14;
        if ((v4 & 0x10) == 0)
        {
          goto LABEL_42;
        }

        v10 = this->TenMap.Dat & 0xEF;
LABEL_44:
        this->TenMap.Dat = v10;
        *&this->EvNo = 0;
        return 0;
      }

      this->TenMap.Dat &= ~0x20u;
      p_EvNo = &this->EvNo;
      v11 = 0x100000001;
LABEL_35:
      *p_EvNo = v11;
      return 0;
    }

    this->TenMap.Dat &= ~0x20u;
    p_EvNo = &this->EvNo;
    v8 = 17;
LABEL_34:
    v11 = v8 & 0xFFFF0000FFFFFFFFLL | 0x100000000;
    goto LABEL_35;
  }

  if (cCh == 33)
  {
    this->TenMap.Dat &= ~0x20u;
    p_EvNo = &this->EvNo;
    v8 = 16;
    goto LABEL_34;
  }

  if (cCh == 35)
  {
    v4 = this->TenMap.Dat;
    if ((~v4 & 0x30) == 0)
    {
      TextStr = this->TextStr;
      v6 = 12302;
      goto LABEL_29;
    }

    v13 = this->TextStr;
    v14 = 45;
    goto LABEL_41;
  }

  if (cCh != 51)
  {
    goto LABEL_23;
  }

  v2 = this->TenMap.Dat;
  if ((v2 & 4) == 0)
  {
    goto LABEL_23;
  }

  *&this->EvNo = 0x200000000;
  this->TenMap.Dat = v2 & 0xFB;
  wcscpy(this->VoiceStr, dword_24104);
  return 0;
}

uint64_t CToText::Func5(CToText *this)
{
  cCh = this->cCh;
  switch(cCh)
  {
    case 3:
      if (this->cChOld == 31)
      {
        v2 = 0;
        *this->TextStr = 34;
        this->TenMap.Dat &= ~1u;
        p_EvNo = &this->EvNo;
        v5 = 4;
        goto LABEL_22;
      }

      cCh = 3;
LABEL_13:
      v8 = this->m_pcKanDat[4 * cCh + 1260];
      if (!v8)
      {
        this->EvNo = 4;
        return 1;
      }

      if ((v8 - 65) <= 0x19)
      {
        *this->TextStr = v8;
        Dat = this->TenMap.Dat;
        if ((Dat & 1) == 0)
        {
          this->EvNo = 4;
        }

        v2 = 0;
        this->TenMap.Dat = Dat & 0xFD;
        goto LABEL_18;
      }

      v2 = 0;
      p_EvNo = &this->EvNo;
      v5 = 0x400000004;
LABEL_22:
      *p_EvNo = v5;
      return v2;
    case 0x40:
      v2 = 0;
      *this->TextStr = 32;
      v3 = this->TenMap.Dat;
      this->TenMap.Dat = v3 & 0xEE;
      this->EvNo = v3 & 4;
LABEL_18:
      this->Rep = 0;
      return v2;
    case 0x2F:
      v2 = 0;
      p_EvNo = &this->EvNo;
      v5 = 0x100000004;
      goto LABEL_22;
  }

  if (cCh != 31)
  {
    goto LABEL_13;
  }

  v2 = 0;
  v6 = this->TenMap.Dat;
  if ((v6 & 2) != 0)
  {
    v7 = v6 | 1;
  }

  else
  {
    v7 = v6 & 0xFC | 2;
  }

  this->TenMap.Dat = v7;
  this->Rep = 1;
  return v2;
}

uint64_t CToText::Func13(CToText *this)
{
  cCh = this->cCh;
  EvNo = this->EvNo;
  if (cCh > 0x10)
  {
    if (this->cCh <= 0x20u)
    {
      if (cCh == 17)
      {
        if (EvNo == 15)
        {
          TextStr = this->TextStr;
          v4 = 61;
          goto LABEL_40;
        }
      }

      else if (cCh == 19 && EvNo == 14)
      {
        TextStr = this->TextStr;
        v4 = 60;
        goto LABEL_40;
      }
    }

    else if (cCh == 33)
    {
      if (EvNo == 16)
      {
        TextStr = this->TextStr;
        v4 = 62;
        goto LABEL_40;
      }
    }

    else if (cCh == 35)
    {
      if (EvNo == 13)
      {
        TextStr = this->TextStr;
        v4 = 95;
        goto LABEL_40;
      }
    }

    else if (cCh == 53 && EvNo == 13)
    {
      TextStr = this->TextStr;
      v4 = 40;
LABEL_40:
      *TextStr = v4;
      v6 = 4;
      goto LABEL_41;
    }

    goto LABEL_44;
  }

  if (this->cCh > 7u)
  {
    if (cCh == 8)
    {
      if (EvNo == 13)
      {
        TextStr = this->TextStr;
        v4 = 126;
        goto LABEL_40;
      }
    }

    else if (cCh == 16 && EvNo == 13)
    {
      TextStr = this->TextStr;
      v4 = 96;
      goto LABEL_40;
    }

LABEL_44:
    this->Rep = 3;
    v6 = 4 * (EvNo < 18);
    goto LABEL_45;
  }

  if (cCh == 1)
  {
    if (EvNo == 13)
    {
      TextStr = this->TextStr;
      v4 = 58;
      goto LABEL_40;
    }

    if ((EvNo - 17) <= 1)
    {
      *this->TextStr = 41;
      v6 = 4 * (EvNo < 0x12);
      goto LABEL_41;
    }

    goto LABEL_44;
  }

  if (cCh != 5 || EvNo != 19)
  {
    goto LABEL_44;
  }

  v6 = 0;
  *this->TextStr = 12303;
LABEL_41:
  this->Rep = 0;
LABEL_45:
  this->EvNo = v6;
  return 0;
}

uint64_t CToText::Func20(CToText *this)
{
  cCh = this->cCh;
  if (cCh > 0x40)
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
    *this->TextStr = dword_24110[cCh];
  }

  this->Rep = v2;
  return 0;
}

uint64_t CToText::Func21(CToText *this)
{
  cCh = this->cCh;
  if (this->cCh)
  {
    if ((cCh & 0x80) == 0)
    {
      v2 = (cCh & 0x3F) - 1;
      v3 = dword_24110[v2];
      TextStr = this->TextStr;
      *TextStr = v3;
      if (cCh < 0x40)
      {
        if (cCh & 0x3F) != 0x38 && ((0x1694125077D577D5uLL >> v2))
        {
          *TextStr = v3 + 32;
        }

LABEL_15:
        v6 = 0;
        goto LABEL_16;
      }

      if ((cCh & 0x3F) != 0x38 && ((0xE96BEDAF882A882ALL >> v2) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v6 = 3;
  }

  else
  {
    v6 = 0;
    *this->TextStr = 32;
  }

LABEL_16:
  this->Rep = v6;
  return 0;
}

uint64_t CToText::Func2(CToText *this)
{
  cCh = this->cCh;
  EvNo = this->EvNo;
  if (this->cCh <= 8u)
  {
    if (this->cCh > 2u)
    {
      if (cCh == 3)
      {
        if (EvNo == 8)
        {
          TextStr = this->TextStr;
          v4 = 65439;
          goto LABEL_45;
        }
      }

      else if (cCh == 5)
      {
        if (EvNo == 3)
        {
          TextStr = this->TextStr;
          v4 = 65379;
          goto LABEL_45;
        }
      }

      else if (cCh == 8 && EvNo == 8)
      {
        TextStr = this->TextStr;
        v4 = 65385;
        goto LABEL_45;
      }
    }

    else if (this->cCh)
    {
      if (cCh == 1)
      {
        if (EvNo == 8)
        {
          TextStr = this->TextStr;
          v4 = 65438;
          goto LABEL_45;
        }
      }

      else if (EvNo == 8)
      {
        TextStr = this->TextStr;
        v4 = 65384;
        goto LABEL_45;
      }
    }

    else if (EvNo == 8)
    {
      TextStr = this->TextStr;
      v4 = 65383;
      goto LABEL_45;
    }
  }

  else if (this->cCh <= 0x1Au)
  {
    if (cCh == 9)
    {
      if (EvNo == 8)
      {
        TextStr = this->TextStr;
        v4 = 65387;
        goto LABEL_45;
      }
    }

    else if (cCh == 10)
    {
      if (EvNo == 8)
      {
        TextStr = this->TextStr;
        v4 = 65386;
        goto LABEL_45;
      }
    }

    else if (cCh == 11 && EvNo == 8)
    {
      TextStr = this->TextStr;
      v4 = 65388;
      goto LABEL_45;
    }
  }

  else if (this->cCh > 0x34u)
  {
    if (cCh == 53)
    {
      if (EvNo == 2)
      {
        TextStr = this->TextStr;
        v4 = 40;
        goto LABEL_45;
      }
    }

    else if (cCh == 64)
    {
      switch(EvNo)
      {
        case 2:
          v5 = 65381;
          break;
        case 10:
          v5 = 65377;
          break;
        case 7:
          v5 = 63;
          break;
        default:
          p_EvNo = &this->EvNo;
          v11 = 3;
          goto LABEL_56;
      }

      *this->TextStr = v5;
      goto LABEL_60;
    }
  }

  else if (cCh == 27)
  {
    if (EvNo == 8)
    {
      TextStr = this->TextStr;
      v4 = 65390;
      goto LABEL_45;
    }
  }

  else if (cCh == 43 && EvNo == 8)
  {
    TextStr = this->TextStr;
    v4 = 65389;
LABEL_45:
    *TextStr = v4;
LABEL_60:
    *&this->EvNo = 0;
    return 0;
  }

  v6 = 4 * cCh + 252 * EvNo;
  if (this->m_pcKanDat[v6])
  {
    if (this->m_pcKanDat[v6] - 161 <= 0x3E)
    {
      v7 = 0;
      v8 = &this->m_pcKanDat[v6];
      do
      {
        v9 = v8[v7];
        if (!v8[v7])
        {
          break;
        }

        if ((v9 - 161) <= 0x3E)
        {
          this->TextStr[v7] = v9 + 65216;
        }

        ++v7;
      }

      while (v7 != 3);
      this->TextStr[v7] = 0;
      goto LABEL_60;
    }

    p_EvNo = &this->EvNo;
    v11 = 0x400000000;
  }

  else
  {
    p_EvNo = &this->EvNo;
    v11 = 0x300000000;
  }

LABEL_56:
  *p_EvNo = v11;
  return 0;
}

void ktoau::~ktoau(ktoau *this)
{
  v2 = *(this + 8);
  if (v2)
  {
    fclose(v2);
  }

  v3 = *(this + 9);
  if (v3)
  {
    fclose(v3);
  }

  v4 = *(this + 10);
  if (v4)
  {
    fclose(v4);
  }

  v5 = *(this + 11);
  if (v5)
  {
    fclose(v5);
  }

  v6 = *(this + 12);
  if (v6)
  {
    fclose(v6);
  }

  v7 = *(this + 13);
  if (v7)
  {
    fclose(v7);
  }

  v8 = *(this + 14);
  if (v8)
  {
    fclose(v8);
  }

  v9 = *(this + 15);
  if (v9)
  {
    fclose(v9);
  }

  v10 = *(this + 16);
  if (v10)
  {
    fclose(v10);
  }

  v11 = *(this + 17);
  if (v11)
  {
    fclose(v11);
  }
}

uint64_t ktoau::Init(ktoau *this, char *a2)
{
  strcpy(__dst, a2);
  strcat(__dst, "ktoa_u_kwa.dic");
  v4 = getenv("HOME");
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = "var/mobile";
  }

  strcpy(__dst, v5);
  strcat(__dst, "/Library/Accessibility/ktoa_u_kwa_v5.dic");
  v6 = fopen(__dst, "rb");
  *(this + 8) = v6;
  if (!v6)
  {
    return 1;
  }

  v7 = this + 144;
  v8 = 44288;
  do
  {
    if (!fread(v7, 4uLL, 1uLL, *(this + 8)))
    {
      return 2;
    }

    v7 += 8;
    --v8;
  }

  while (v8);
  strcpy(__dst, a2);
  strcat(__dst, "ktoa_u_hir.dic");
  v9 = fopen(__dst, "rb");
  *(this + 9) = v9;
  if (!v9)
  {
    return 3;
  }

  v10 = this + 354448;
  v11 = 6241;
  while (1)
  {
    v12 = 4;
    if (!fread(v10, 4uLL, 1uLL, *(this + 9)))
    {
      break;
    }

    v10 += 8;
    if (!--v11)
    {
      strcpy(__dst, a2);
      strcat(__dst, "ktoa_u_kat.dic");
      v13 = fopen(__dst, "rb");
      *(this + 10) = v13;
      if (!v13)
      {
        return 5;
      }

      v14 = this + 404376;
      v15 = 7056;
      do
      {
        if (!fread(v14, 4uLL, 1uLL, *(this + 10)))
        {
          return 6;
        }

        v14 += 8;
        --v15;
      }

      while (v15);
      strcpy(__dst, a2);
      strcat(__dst, "setubiu.dic");
      v16 = fopen(__dst, "rb");
      *(this + 11) = v16;
      if (!v16)
      {
        return 7;
      }

      strcpy(__dst, a2);
      strcat(__dst, "settouu.dic");
      v17 = fopen(__dst, "rb");
      *(this + 12) = v17;
      if (!v17)
      {
        return 8;
      }

      strcpy(__dst, a2);
      strcat(__dst, "suushiu.dic");
      v18 = fopen(__dst, "rb");
      *(this + 13) = v18;
      if (!v18)
      {
        return 9;
      }

      strcpy(__dst, a2);
      strcat(__dst, "tan1u.dic");
      v19 = fopen(__dst, "rb");
      *(this + 14) = v19;
      if (!v19)
      {
        return 10;
      }

      strcpy(__dst, a2);
      strcat(__dst, "tan2u.dic");
      v20 = fopen(__dst, "rb");
      *(this + 15) = v20;
      if (!v20)
      {
        return 11;
      }

      strcpy(__dst, a2);
      strcat(__dst, "kigou.txt");
      v21 = fopen(__dst, "rb");
      *(this + 16) = v21;
      if (!v21)
      {
        return 12;
      }

      if (!fread(&__ptr, 2uLL, 1uLL, v21))
      {
        return 13;
      }

      v12 = 14;
      if (__ptr == 255 && v25 == 254)
      {
        strcpy(__dst, a2);
        strcat(__dst, "userdic.txt");
        v22 = fopen(__dst, "rb");
        *(this + 17) = v22;
        if (!v22 || fread(&__ptr, 2uLL, 1uLL, v22) && __ptr == 255 && v25 == 254)
        {
          return 0;
        }

        else
        {
          v12 = 0;
          *(this + 17) = 0;
        }
      }

      return v12;
    }
  }

  return v12;
}

void ktoau::SetBitReverse(uint64_t a1, int *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = a2 + 1;
    do
    {
      *(v3 - 1) = ~v2;
      v4 = *v3++;
      LOWORD(v2) = v4;
    }

    while (v4);
  }
}

size_t ktoau::IsKanjiMatch(uint64_t a1, __int32 *a2, __int32 *a3)
{
  if ((*a2 - 64256) < 0xFFFF5300)
  {
    return 0;
  }

  result = ktoau::IsUserMatch(a1, a2, a3);
  if (!result)
  {
    v7 = (a1 + 460824);
    bzero((a1 + 460824), 0x1400uLL);
    *(a1 + 471064) = 0;
    fseek(*(a1 + 64), *(a1 + 8 * (*a2 - 19968) + 144), 0);
    while (1)
    {
      v8 = &v22;
      bzero(&v22, 0x400uLL);
      do
      {
        fread(v8, 2uLL, 1uLL, *(a1 + 64));
      }

      while (*v8++);
      v10 = v22;
      if (!v22)
      {
        break;
      }

      v11 = v23;
      do
      {
        *(v11 - 1) = ~v10;
        v12 = *v11++;
        v10 = v12;
      }

      while (v12);
      v13 = v22;
      if (v22 != *a2)
      {
LABEL_39:
        if (!*(a1 + 471064))
        {
          return 0;
        }

        return ktoau::SelectList(a1, a2, a3);
      }

      if (v22 == 32)
      {
        v14 = 0;
        v15 = 0;
LABEL_18:
        v17 = v23[wcslen(&v22) - 2];
        if (v17 <= 41)
        {
          if (v17 == 38)
          {
            v18 = a2[v15];
            v19 = 24066;
            goto LABEL_32;
          }

          if (v17 == 40)
          {
            v18 = a2[v15];
            v19 = 21306;
            goto LABEL_32;
          }

          if (v17 != 41)
          {
            goto LABEL_33;
          }

LABEL_29:
          v18 = a2[v15];
          v19 = 30010;
          goto LABEL_32;
        }

        if (v17 == 42)
        {
          goto LABEL_29;
        }

        if (v17 == 43 || v17 == 46)
        {
          v18 = a2[v15];
          v19 = 26449;
LABEL_32:
          if (v18 == v19)
          {
            goto LABEL_33;
          }
        }

        else
        {
LABEL_33:
          v20 = *(a1 + 471064);
          if (v20)
          {
            if (v20 > 4 || *v7 != v14)
            {
              return ktoau::SelectList(a1, a2, a3);
            }

            wcscpy(&v7[256 * v20 + 1], &v22);
            v21 = *(a1 + 471064);
            v7[256 * v21] = v14;
          }

          else
          {
            wcscpy((a1 + 460828), &v22);
            *v7 = v14;
            LODWORD(v21) = *(a1 + 471064);
          }

          *(a1 + 471064) = v21 + 1;
        }
      }

      else
      {
LABEL_14:
        v16 = 0;
        while (v13 == a2[v16])
        {
          v15 = v16 + 1;
          v13 = v23[v16++];
          if (v13 == 32)
          {
            v14 = v15;
            goto LABEL_18;
          }
        }

        if (*(a1 + 471064))
        {
          return ktoau::SelectList(a1, a2, a3);
        }
      }
    }

    v13 = *a2;
    if (*a2)
    {
      goto LABEL_39;
    }

    goto LABEL_14;
  }

  return result;
}

size_t ktoau::IsUserMatch(uint64_t a1, _DWORD *a2, __int32 *a3)
{
  result = *(a1 + 136);
  if (!result)
  {
    return result;
  }

  fseek(result, 0, 0);
  fread(__ptr, 2uLL, 1uLL, *(a1 + 136));
  bzero(__ptr, 0x400uLL);
  result = fread(__ptr, 2uLL, 1uLL, *(a1 + 136));
  if (!result)
  {
    return result;
  }

  v7 = 0;
  v8 = __ptr;
  while (1)
  {
    while (*&__ptr[4 * v7] != 13)
    {
      ++v7;
      v8 = &__ptr[4 * v7];
      result = fread(v8, 2uLL, 1uLL, *(a1 + 136));
      if (!result)
      {
        return result;
      }
    }

    v9 = fread(v8, 2uLL, 1uLL, *(a1 + 136));
    if (v20 != *a2)
    {
      goto LABEL_13;
    }

    *v8 = 0;
    v10 = v20;
    if (v20 == 44)
    {
      break;
    }

    v11 = 0;
    while (v10 == a2[v11])
    {
      v10 = v21[v11++];
      if (v10 == 44)
      {
        v12 = v11 + 2;
        goto LABEL_15;
      }
    }

LABEL_13:
    v8 = __ptr;
    bzero(__ptr, 0x400uLL);
    result = fread(__ptr, 2uLL, 1uLL, *(a1 + 136));
    v7 = 0;
    if (!result)
    {
      return result;
    }
  }

  v12 = 2;
LABEL_15:
  v13 = 0;
  v14 = v12;
LABEL_16:
  v15 = v14 + 1;
  v16 = &__ptr[4 * v14 + 4];
  while (1)
  {
    v14 = v15;
    v17 = *v16;
    if (!*v16)
    {
      break;
    }

    if ((v17 - 65382) < 0x3A || (v17 - 33) <= 0x5E)
    {
      a3[v13] = v17;
LABEL_26:
      v9 = 1;
LABEL_27:
      v13 += v9;
      goto LABEL_16;
    }

    if (v17 == 12288 || v17 == 32)
    {
      a3[v13] = 32;
      goto LABEL_26;
    }

    v9 = ktoau::ZenToHan(v9, v16, v18);
    v15 = v14 + 1;
    ++v16;
    if (v9)
    {
      wcscat(a3, v18);
      v9 = wcslen(v18);
      goto LABEL_27;
    }
  }

  result = (v12 - 2);
  a3[v13] = 0;
  return result;
}

uint64_t ktoau::SelectList(uint64_t IsKei, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v5 = IsKei;
  v6 = *(IsKei + 8);
  *(IsKei + 8) = 0;
  *(IsKei + 16) = v6;
  v7 = *(IsKei + 40);
  *(IsKei + 40) = 0;
  *(IsKei + 48) = v7;
  v8 = *(IsKei + 471064);
  if (v8 < 1)
  {
    goto LABEL_48;
  }

  v9 = 0;
  v45 = 0;
  v44 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v35 = IsKei + 460824;
  v37 = v6 & 0x81;
  v38 = (v7 >> 7) & 1 | ((v6 & 0x80) >> 7);
  v43 = IsKei + 460816;
  v16 = IsKei + 460820;
  v40 = v8 << 10;
  v41 = 0;
  while (1)
  {
    v42 = v14;
    v17 = v43 + v13;
    if (*(v16 + 4 * wcslen((v43 + v13 + 8)) + v13) == 38)
    {
      v15 |= 2u;
      *(v5 + 8) = v15;
      *(v5 + 32) = *(v5 + 32) & 0xFFFFFFC7 | (8 * ((v12 >> 3) & 7));
    }

    if (*(v16 + 4 * wcslen((v17 + 8)) + v13) == 40)
    {
      v15 |= 4u;
      *(v5 + 8) = v15;
      *(v5 + 32) = *(v5 + 32) & 0xFFFFF8FF | (((v11 >> 8) & 7) << 8);
    }

    if (*(v16 + 4 * wcslen((v17 + 8)) + v13) == 41)
    {
      v15 |= 8u;
      *(v5 + 8) = v15;
      *(v5 + 32) = *(v5 + 32) & 0xFFFFC7FF | (((v10 >> 11) & 7) << 11);
    }

    if (*(v16 + 4 * wcslen((v17 + 8)) + v13) == 42)
    {
      v15 |= 0x10u;
      *(v5 + 8) = v15;
      *(v5 + 32) = *(v5 + 32) & 0xFFF8FFFF | ((HIWORD(v44) & 7) << 16);
    }

    if (*(v16 + 4 * wcslen((v17 + 8)) + v13) == 43)
    {
      v15 |= 0x20u;
      *(v5 + 8) = v15;
      *(v5 + 32) = *(v5 + 32) & 0xFFC7FFFF | (((v45 >> 19) & 7) << 19);
    }

    if (*(v16 + 4 * wcslen((v17 + 8)) + v13) == 46)
    {
      v15 |= 0x40u;
      *(v5 + 8) = v15;
      *(v5 + 32) = *(v5 + 32) & 0xF8FFFFFF | ((HIBYTE(HIDWORD(v45)) & 7) << 24);
    }

    if (*(v16 + 4 * wcslen((v17 + 8)) + v13) == 34)
    {
      v15 |= 1u;
      *(v5 + 8) = v15;
    }

    if (*(v16 + 4 * wcslen((v17 + 8)) + v13) == 35)
    {
      v15 |= 0x80u;
      *(v5 + 8) = v15;
      *(v5 + 32) = *(v5 + 32) & 0xC7FFFFFF | (((v9 >> 27) & 7) << 27);
    }

    if (*(v16 + 4 * wcslen((v17 + 8)) + v13) == 37)
    {
      v15 |= 0x200u;
      *(v5 + 8) = v15;
      IsKei = wcslen((v17 + 8));
      if (*(v43 + 4 * IsKei + v13) == 120)
      {
        if (v37)
        {
          break;
        }
      }
    }

    IsKei = wcslen((v17 + 8));
    if (*(v16 + 4 * IsKei + v13) == 33)
    {
      v15 |= 0x100u;
      *(v5 + 8) = v15;
      v18 = (a2 + 4 * *(v17 + 8));
      if ((v38 & 1) != 0 || (IsKei = ktoau::IsKei(IsKei, (a2 + 4 * *(v17 + 8))), IsKei))
      {
        IsKei = ktoau::IsKei(IsKei, v18);
        if (IsKei)
        {
          *(v5 + 8) = 1024;
        }

        break;
      }
    }

    if (v13)
    {
      v19 = *(v16 + 4 * wcslen((v17 + 8)) + v13);
      IsKei = wcslen((v43 + v13 - 1016));
      v20 = v42;
      if (v19 <= *(v43 + 4 * IsKei + v13 - 1020))
      {
        v21 = v41;
      }

      else
      {
        v21 = v42;
      }

      v41 = v21;
    }

    else
    {
      v20 = v42;
    }

    v14 = v20 + 1;
    v13 += 1024;
    v12 += 8;
    v11 += 256;
    v10 += 2048;
    v44 += 0x10000;
    LODWORD(v45) = v45 + 0x80000;
    HIDWORD(v45) += 0x1000000;
    v9 += 0x8000000;
    if (v40 == v13)
    {
      goto LABEL_36;
    }
  }

  v41 = v42;
LABEL_36:
  v22 = v41;
  if (!v41)
  {
    v3 = a3;
    v4 = a2;
    goto LABEL_50;
  }

  v23 = v41;
  IsKei = wcslen((v35 + (v41 << 10)));
  v3 = a3;
  v4 = a2;
  if (*(v35 + (v41 << 10) + 4 * IsKei - 8) == 120 && !v37)
  {
    if (v41 != 1)
    {
      v23 = v41 - 1;
      v22 = v41 - 1;
      goto LABEL_41;
    }

LABEL_48:
    v22 = 0;
    goto LABEL_50;
  }

LABEL_41:
  v24 = (v35 + (v23 << 10));
  IsKei = wcslen(v24);
  if (v24[IsKei - 1] == 35)
  {
    IsKei = ktoau::IsKanjiNa(v5, (a2 + 4 * *v24), 1);
    if (!IsKei)
    {
      IsKei = ktoau::IsHiraNa(v5, (a2 + 4 * *v24), 1);
      if (!IsKei)
      {
        IsKei = ktoau::IsKataNa(v5, (a2 + 4 * *v24), 1);
        if (!IsKei)
        {
          IsKei = ktoau::IsSetubiNa(v5, (a2 + 4 * *v24), 0);
          if (!IsKei)
          {
            IsKei = ktoau::IsKei(IsKei, (a2 + 4 * *v24));
            if (!IsKei)
            {
              *(v5 + 8) &= ~0x80u;
              --v22;
            }
          }
        }
      }
    }
  }

LABEL_50:
  v25 = *(v5 + 8);
  if ((v25 & 2) != 0)
  {
    if (*(v4 + 4 * *(v5 + (((*(v5 + 32) >> 3) & 7) << 10) + 460824)) == 24066)
    {
      v22 = (*(v5 + 32) >> 3) & 7;
    }

    if ((v25 & 4) == 0)
    {
LABEL_52:
      if ((v25 & 8) == 0)
      {
        goto LABEL_53;
      }

      goto LABEL_64;
    }
  }

  else if ((v25 & 4) == 0)
  {
    goto LABEL_52;
  }

  if (*(v4 + 4 * *(v5 + (((*(v5 + 32) >> 8) & 7) << 10) + 460824)) == 21306)
  {
    v22 = (*(v5 + 32) >> 8) & 7;
  }

  if ((v25 & 8) == 0)
  {
LABEL_53:
    if ((v25 & 0x10) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_67;
  }

LABEL_64:
  if (*(v4 + 4 * *(v5 + (((*(v5 + 32) >> 11) & 7) << 10) + 460824)) == 30010)
  {
    v22 = (*(v5 + 32) >> 11) & 7;
  }

  if ((v25 & 0x10) == 0)
  {
LABEL_54:
    if ((v25 & 0x20) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_70;
  }

LABEL_67:
  if (*(v4 + 4 * *(v5 + ((*(v5 + 34) & 7) << 10) + 460824)) == 30010)
  {
    v22 = *(v5 + 34) & 7;
  }

  if ((v25 & 0x20) == 0)
  {
LABEL_55:
    if ((v25 & 0x40) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_73;
  }

LABEL_70:
  if (*(v4 + 4 * *(v5 + (((*(v5 + 32) >> 19) & 7) << 10) + 460824)) == 26449)
  {
    v22 = (*(v5 + 32) >> 19) & 7;
  }

  if ((v25 & 0x40) == 0)
  {
LABEL_56:
    if ((v25 & 0x80) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_76;
  }

LABEL_73:
  if (*(v4 + 4 * *(v5 + ((*(v5 + 35) & 7) << 10) + 460824)) == 26449)
  {
    v22 = *(v5 + 35) & 7;
  }

  if ((v25 & 0x80) == 0)
  {
    goto LABEL_84;
  }

LABEL_76:
  v26 = (*(v5 + 32) >> 27) & 7;
  v27 = (v4 + 4 * *(v5 + (v26 << 10) + 460824));
  if (ktoau::IsKei(IsKei, v27))
  {
    v28 = 1024;
    v22 = v26;
  }

  else
  {
    if (!ktoau::IsKanjiNa(v5, v27, 1) && !ktoau::IsHiraNa(v5, v27, 1) && !ktoau::IsKataNa(v5, v27, 1) && !ktoau::IsSetubiNa(v5, v27, 0))
    {
      goto LABEL_84;
    }

    v22 = (*(v5 + 32) >> 27) & 7;
    v28 = 128;
  }

  *(v5 + 8) = v28;
LABEL_84:
  v29 = 0;
  do
  {
    v30 = *(v5 + (v22 << 10) + 460828 + 4 * v29++);
  }

  while (v30 != 32);
  v31 = 0;
  LODWORD(v32) = v29;
LABEL_87:
  v32 = v32;
  while (1)
  {
    v33 = *(v5 + (v22 << 10) + 460828 + 4 * v32);
    if (!v33 || v33 == 44)
    {
      break;
    }

    ++v32;
    if ((v33 - 65382) < 0x3A || (v33 - 32) <= 0x5F)
    {
      *(v3 + 4 * v31++) = v33;
      goto LABEL_87;
    }
  }

  result = (v29 - 1);
  *(v3 + 4 * v31) = 0;
  return result;
}

uint64_t ktoau::IsKanjiNa(uint64_t a1, int *a2, int a3)
{
  while (1)
  {
    v6 = *a2;
    if (*a2 != 12288 && v6 != 32)
    {
      break;
    }

    ++a2;
  }

  if ((v6 - 64256) < 0xFFFF5300)
  {
    return 0;
  }

  fseek(*(a1 + 64), *(a1 + 8 * (v6 - 19968) + 144), 0);
  do
  {
    while (1)
    {
      while (1)
      {
        v8 = &v14;
        bzero(&v14, 0x400uLL);
        do
        {
          fread(v8, 2uLL, 1uLL, *(a1 + 64));
        }

        while (*v8++);
        v10 = v14;
        if (!v14)
        {
          result = 0;
          if (*a2)
          {
            return result;
          }

          goto LABEL_16;
        }

        v11 = v15;
        do
        {
          *(v11 - 1) = ~v10;
          v12 = *v11++;
          LOWORD(v10) = v12;
        }

        while (v12);
        v10 = v14;
        if (v14 != *a2)
        {
          return 0;
        }

        if (v14 == 32)
        {
          break;
        }

LABEL_16:
        v13 = 0;
        while (v10 == a2[v13])
        {
          v10 = *&v15[v13 * 4];
          ++v13;
          if (v10 == 32)
          {
            goto LABEL_19;
          }
        }
      }

LABEL_19:
      if (a3 == 1)
      {
        break;
      }

      if (!a3)
      {
        return 1;
      }
    }
  }

  while (*&v15[4 * wcslen(&v14) - 8] != 33);
  return 1;
}

uint64_t ktoau::IsKei(uint64_t a1, const __int32 *a2)
{
  if (!dword_3B7A4)
  {
    return 0;
  }

  for (i = &dword_3B7A4; ; i += 10)
  {
    v4 = wcslen(i);
    if (!wcsncmp(a2, i, v4))
    {
      break;
    }

    if (!i[10])
    {
      return 0;
    }
  }

  return 1;
}

uint64_t ktoau::IsHiraNa(uint64_t a1, unsigned int *a2, int a3)
{
  while (1)
  {
    v6 = *a2;
    if (*a2 != 12288 && v6 != 32)
    {
      break;
    }

    ++a2;
  }

  if (v6 - 12432 >= 0xFFFFFFB2)
  {
    IsHiraIndex = ktoau::IsHiraIndex(a1, a2);
    if (IsHiraIndex != -1)
    {
      v8 = IsHiraIndex;
      v9 = *(a1 + 8 * IsHiraIndex + 354448);
      if (v9)
      {
        fseek(*(a1 + 72), v9, 0);
        while (1)
        {
          v10 = &v19;
          bzero(&v19, 0x400uLL);
          do
          {
            v11 = fread(v10, 2uLL, 1uLL, *(a1 + 72));
          }

          while (*v10++);
          v13 = v19;
          if (v19)
          {
            v14 = v20;
            do
            {
              *(v14 - 1) = ~v13;
              v15 = *v14++;
              v13 = v15;
            }

            while (v15);
          }

          if (v8 != ktoau::IsHiraIndex(v11, &v19))
          {
            break;
          }

          v16 = v19;
          if (v19 == 32)
          {
LABEL_18:
            if (a3 == 1)
            {
              if (*&v20[4 * wcslen(&v19) - 8] == 33)
              {
                return 1;
              }
            }

            else if (!a3)
            {
              return 1;
            }
          }

          else
          {
            v17 = 0;
            while (v16 == a2[v17])
            {
              v16 = *&v20[v17 * 4];
              ++v17;
              if (v16 == 32)
              {
                goto LABEL_18;
              }
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t ktoau::IsKataNa(uint64_t a1, int *a2, int a3)
{
  while (1)
  {
    v6 = *a2;
    if (*a2 != 12288 && v6 != 32)
    {
      break;
    }

    ++a2;
  }

  if ((v6 - 12533) >= 0xFFFFFFAD)
  {
    IsKataIndex = ktoau::IsKataIndex(a1, a2);
    if (IsKataIndex != -1)
    {
      v8 = IsKataIndex;
      fseek(*(a1 + 80), *(a1 + 8 * IsKataIndex + 404376), 0);
      while (1)
      {
        v9 = &v18;
        bzero(&v18, 0x400uLL);
        do
        {
          v10 = fread(v9, 2uLL, 1uLL, *(a1 + 80));
        }

        while (*v9++);
        v12 = v18;
        if (v18)
        {
          v13 = v19;
          do
          {
            *(v13 - 1) = ~v12;
            v14 = *v13++;
            v12 = v14;
          }

          while (v14);
        }

        if (v8 != ktoau::IsKataIndex(v10, &v18))
        {
          break;
        }

        v15 = v18;
        if (v18 == 32)
        {
LABEL_17:
          if (a3 == 1)
          {
            if (*&v19[4 * wcslen(&v18) - 8] == 33)
            {
              return 1;
            }
          }

          else if (!a3)
          {
            return 1;
          }
        }

        else
        {
          v16 = 0;
          while (v15 == a2[v16])
          {
            v15 = *&v19[v16 * 4];
            ++v16;
            if (v15 == 32)
            {
              goto LABEL_17;
            }
          }
        }
      }
    }
  }

  return 0;
}

size_t ktoau::IsSetubiNa(uint64_t a1, __int32 *a2, int a3)
{
  while (1)
  {
    v6 = *a2;
    if (*a2 != 12288 && v6 != 32)
    {
      break;
    }

    ++a2;
  }

  if ((v6 - 64256) < 0xFFFF3542)
  {
    return 0;
  }

  fseek(*(a1 + 88), 0, 0);
  bzero(&__ptr, 0x400uLL);
  result = fread(&__ptr, 2uLL, 1uLL, *(a1 + 88));
  if (result)
  {
    v8 = 0;
    do
    {
      while (*&v16[4 * v8 - 4])
      {
        ++v8;
        result = fread(&v16[4 * v8 - 4], 2uLL, 1uLL, *(a1 + 88));
        if (!result)
        {
          return result;
        }
      }

      v9 = __ptr;
      if (__ptr)
      {
        v10 = v16;
        do
        {
          *(v10 - 1) = ~v9;
          v11 = *v10++;
          v9 = v11;
        }

        while (v11);
        v12 = __ptr;
        if (__ptr == *a2)
        {
          if (__ptr != 32)
          {
            goto LABEL_18;
          }

LABEL_21:
          v14 = *&v16[4 * wcslen(&__ptr) - 8];
          if (a3 && v14 == 34 || !a3 && (v14 - 35) > 0xFFFFFFFD)
          {
            return 1;
          }
        }
      }

      else
      {
        v12 = *a2;
        if (!*a2)
        {
LABEL_18:
          v13 = 0;
          while (v12 == a2[v13])
          {
            v12 = *&v16[v13 * 4];
            ++v13;
            if (v12 == 32)
            {
              goto LABEL_21;
            }
          }
        }
      }

      bzero(&__ptr, 0x400uLL);
      result = fread(&__ptr, 2uLL, 1uLL, *(a1 + 88));
      v8 = 0;
    }

    while (result);
  }

  return result;
}

size_t ktoau::IsHiraMatch(uint64_t a1, unsigned int *a2, __int32 *a3)
{
  if (*a2 - 12432 >= 0xFFFFFFB2)
  {
    IsUserMatch = ktoau::IsUserMatch(a1, a2, a3);
    v3 = IsUserMatch;
    if (IsUserMatch)
    {
      return v3;
    }

    IsHiraIndex = ktoau::IsHiraIndex(IsUserMatch, a2);
    if (IsHiraIndex != -1)
    {
      v10 = IsHiraIndex;
      v11 = *(a1 + 8 * IsHiraIndex + 354448);
      if (v11)
      {
        fseek(*(a1 + 72), v11, 0);
        while (1)
        {
          v12 = &v37;
          bzero(&v37, 0x400uLL);
          do
          {
            v13 = fread(v12, 2uLL, 1uLL, *(a1 + 72));
          }

          while (*v12++);
          v15 = v37;
          if (v37)
          {
            v16 = v38;
            do
            {
              *(v16 - 1) = ~v15;
              v17 = *v16++;
              v15 = v17;
            }

            while (v17);
          }

          if (v10 != ktoau::IsHiraIndex(v13, &v37))
          {
            return 0;
          }

          v18 = v37;
          if (v37 == 32)
          {
            break;
          }

          v19 = 0;
          while (v18 == a2[v19])
          {
            v20 = v19 + 1;
            v18 = v38[v19++];
            if (v18 == 32)
            {
              v3 = v20;
              goto LABEL_19;
            }
          }
        }

        v3 = 0;
        v20 = 0;
LABEL_19:
        IsKei = wcslen(&v37);
        v22 = v38[IsKei - 2];
        if (v22 > 40)
        {
          if (v22 <= 42)
          {
            if (v22 == 41)
            {
              if (a2[v20] != 30010)
              {
                goto LABEL_61;
              }

              v26 = *(a1 + 8) | 8;
            }

            else
            {
              if (a2[v20] != 30010)
              {
                goto LABEL_61;
              }

              v26 = *(a1 + 8) | 0x10;
            }

            goto LABEL_57;
          }

          if (v22 == 43)
          {
            if (a2[v20] != 26449)
            {
              goto LABEL_61;
            }

            v26 = *(a1 + 8) | 0x20;
            goto LABEL_57;
          }

          if (v22 == 46 && a2[v20] == 26449)
          {
            v26 = *(a1 + 8) | 0x40;
            goto LABEL_57;
          }
        }

        else
        {
          if (v22 <= 37)
          {
            if (v22 == 33)
            {
              v27 = (a1 + 8);
              if ((*(a1 + 8) & 0x80) == 0 && (*(a1 + 40) & 0x80) == 0)
              {
                v28 = IsKei;
                IsKei = ktoau::IsKei(IsKei, &a2[v20]);
                if (!IsKei && v38[v28 - 3] != 119)
                {
                  return 0;
                }
              }

              v29 = ktoau::IsKei(IsKei, &a2[v20]);
              *v27 = 0;
              if (!v29)
              {
                v30 = 256;
                goto LABEL_60;
              }
            }

            else
            {
              if (v22 != 35)
              {
                goto LABEL_61;
              }

              v23 = &a2[v20];
              if (!ktoau::IsKanjiNa(a1, v23, 1) && !ktoau::IsHiraNa(a1, v23, 1) && !ktoau::IsKataNa(a1, v23, 1))
              {
                IsSetubiNa = ktoau::IsSetubiNa(a1, v23, 0);
                if (!IsSetubiNa && !ktoau::IsKei(IsSetubiNa, v23))
                {
                  return 0;
                }
              }

              if (ktoau::IsKanjiNa(a1, v23, 1) || ktoau::IsHiraNa(a1, v23, 1) || ktoau::IsKataNa(a1, v23, 1) || (v25 = ktoau::IsSetubiNa(a1, v23, 0), v25) || !ktoau::IsKei(v25, v23))
              {
                *(a1 + 8) = 128;
                goto LABEL_61;
              }

              *(a1 + 8) = 0;
              v27 = (a1 + 8);
            }

            v30 = 1024;
LABEL_60:
            *v27 = v30;
            goto LABEL_61;
          }

          if (v22 == 38)
          {
            if (a2[v20] != 24066)
            {
              goto LABEL_61;
            }

            v26 = *(a1 + 8) | 2;
            goto LABEL_57;
          }

          if (v22 == 40 && a2[v20] == 21306)
          {
            v26 = *(a1 + 8) | 4;
LABEL_57:
            *(a1 + 8) = v26;
          }
        }

LABEL_61:
        v31 = 0;
        *(a1 + 40) = 0;
        v32 = v3;
LABEL_62:
        v33 = v32 + 1;
        v34 = &v38[v32];
        while (1)
        {
          v36 = *v34++;
          v35 = v36;
          if (!v36 || v35 == 44)
          {
            break;
          }

          v32 = v33;
          if ((v35 - 65382) >= 0x3A && (v35 - 33) > 0x5E)
          {
            ++v33;
            if (v35 != 32)
            {
              continue;
            }
          }

          a3[v31++] = v35;
          goto LABEL_62;
        }

        a3[v31] = 0;
        return v3;
      }
    }
  }

  return 0;
}

uint64_t ktoau::IsHiraIndex(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  if (*a2 - 12432 < 0xFFFFFFB2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = a2[1];
  if ((v2 & 1) != 0 || v2 - 12364 >= 0x17)
  {
    v5 = -12354;
  }

  else
  {
    v5 = -12355;
  }

  v6 = v5 + v2 - (v2 & 1 & (v2 - 12394 > 0xFFFFFFFA));
  v11 = v2 == 12400 || v2 == 12403 || v2 == 12406 || v2 == 12409 || v2 == 12412;
  v12 = v6 - v11;
  if (v2 == 12407 || v2 == 12401 || v2 == 12413 || v2 == 12404 || v2 == 12410)
  {
    v12 -= 2;
  }

  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  if (v3 <= 12353)
  {
    return (79 * v12);
  }

  if (v3 == 12446)
  {
    v18 = *a2;
  }

  else
  {
    v18 = a2[1];
  }

  if (v18 >> 4 >= 0x309 && v18 != 12540)
  {
    return (79 * v12 + 79);
  }

  if (v3 == 12540)
  {
    if (v2 - 12354 > 0x3C || ((1 << (v2 - 66)) & 0x1000E10060180601) == 0)
    {
      if (v2 - 12420 > 0xB)
      {
        v19 = v18;
        goto LABEL_51;
      }

      v19 = v18;
      if (((1 << (v2 + 124)) & 0x821) == 0)
      {
        goto LABEL_51;
      }
    }

    v19 = 12354;
LABEL_51:
    v20 = *a2 & 0x30FE;
    if (v20 == 12402 || v2 - 12365 <= 0x3D && ((1 << (v2 - 77)) & 0x2004008040300C03) != 0 || v2 == 12356)
    {
      v19 = 12356;
    }

    if (v20 == 12388 || v2 - 12367 <= 0x3C && ((1 << (v2 - 79)) & 0x108201C020000C03) != 0 || v2 == 12358)
    {
      v19 = 12358;
    }

    if (v20 == 12392)
    {
      goto LABEL_91;
    }

    if (v2 - 12369 < 2 || v2 - 12379 < 2 || v2 == 12360 || v20 == 12390 || v2 == 12397 || v20 == 12408 || v2 == 12417 || v2 == 12428 || v2 == 12410)
    {
      v19 = 12360;
    }

    if (v2 - 12371 <= 0x3A && ((1 << (v2 - 83)) & 0x420870008000C03) != 0 || v2 == 12362)
    {
LABEL_91:
      v19 = 12362;
    }

    goto LABEL_93;
  }

  v19 = v18;
LABEL_93:
  v30 = v18 - 12394 < 0xFFFFFFFB;
  if ((v18 & 1) == 0)
  {
    v30 = 1;
  }

  if (v18 - 12364 < 0x17 && (v18 & 1) == 0)
  {
    v31 = v18 - 1;
  }

  else
  {
    v31 = v19;
  }

  if (!v30)
  {
    v31 = v18 - 1;
  }

  v32 = vdupq_n_s32(v18);
  if (vmaxv_u16(vmovn_s32(vceqq_s32(v32, xmmword_24210))) & 1 | (v18 == 12412))
  {
    v31 = v18 - 1;
  }

  if (vmaxv_u16(vmovn_s32(vceqq_s32(v32, xmmword_24220))) & 1 | (v18 == 12413))
  {
    v31 = v18 - 2;
  }

  if ((v18 & 0x3FFB) == 0x3043 || v18 == 12357 || v18 == 12361 || v18 == 12387 || v18 == 12419 || (v18 & 0x3FFD) == 12421)
  {
    v38 = v18 + 1;
  }

  else
  {
    v38 = v31;
  }

  return v38 + 79 * v12 - 12353;
}

size_t ktoau::IsKataMatch(uint64_t a1, int *a2, __int32 *a3)
{
  if (*a2 == 65288 || (*a2 - 12533) >= 0xFFFFFFAD)
  {
    IsUserMatch = ktoau::IsUserMatch(a1, a2, a3);
    v6 = IsUserMatch;
    if (IsUserMatch)
    {
      return v6;
    }

    IsKataIndex = ktoau::IsKataIndex(IsUserMatch, a2);
    if (IsKataIndex != -1)
    {
      v9 = IsKataIndex;
      fseek(*(a1 + 80), *(a1 + 8 * IsKataIndex + 404376), 0);
      while (1)
      {
        v10 = &v36;
        bzero(&v36, 0x400uLL);
        do
        {
          v11 = fread(v10, 2uLL, 1uLL, *(a1 + 80));
        }

        while (*v10++);
        v13 = v36;
        if (v36)
        {
          v14 = v37;
          do
          {
            *(v14 - 1) = ~v13;
            v15 = *v14++;
            v13 = v15;
          }

          while (v15);
        }

        if (v9 != ktoau::IsKataIndex(v11, &v36))
        {
          return 0;
        }

        v16 = v36;
        if (v36 == 32)
        {
          break;
        }

        v17 = 0;
        while (v16 == a2[v17])
        {
          v18 = v17 + 1;
          v16 = v37[v17++];
          if (v16 == 32)
          {
            v6 = v18;
            goto LABEL_18;
          }
        }
      }

      v6 = 0;
      v18 = 0;
LABEL_18:
      IsKei = wcslen(&v36);
      v20 = v37[IsKei - 2];
      if (v20 > 40)
      {
        if (v20 <= 42)
        {
          if (v20 == 41)
          {
            if (a2[v18] != 30010)
            {
              goto LABEL_60;
            }

            v24 = *(a1 + 8) | 8;
          }

          else
          {
            if (a2[v18] != 30010)
            {
              goto LABEL_60;
            }

            v24 = *(a1 + 8) | 0x10;
          }

          goto LABEL_56;
        }

        if (v20 == 43)
        {
          if (a2[v18] != 26449)
          {
            goto LABEL_60;
          }

          v24 = *(a1 + 8) | 0x20;
          goto LABEL_56;
        }

        if (v20 == 46 && a2[v18] == 26449)
        {
          v24 = *(a1 + 8) | 0x40;
          goto LABEL_56;
        }
      }

      else
      {
        if (v20 <= 37)
        {
          if (v20 == 33)
          {
            v25 = (a1 + 8);
            if ((*(a1 + 8) & 0x80) == 0 && (*(a1 + 40) & 0x80) == 0)
            {
              v26 = IsKei;
              IsKei = ktoau::IsKei(IsKei, &a2[v18]);
              if (!IsKei && v37[v26 - 3] != 119)
              {
                return 0;
              }
            }

            v27 = ktoau::IsKei(IsKei, &a2[v18]);
            *v25 = 0;
            if (!v27)
            {
              v28 = 256;
              goto LABEL_59;
            }
          }

          else
          {
            if (v20 != 35)
            {
              goto LABEL_60;
            }

            v21 = &a2[v18];
            if (!ktoau::IsKanjiNa(a1, v21, 1) && !ktoau::IsHiraNa(a1, v21, 1) && !ktoau::IsKataNa(a1, v21, 1))
            {
              IsSetubiNa = ktoau::IsSetubiNa(a1, v21, 0);
              if (!IsSetubiNa && !ktoau::IsKei(IsSetubiNa, v21))
              {
                return 0;
              }
            }

            if (ktoau::IsKanjiNa(a1, v21, 1) || ktoau::IsHiraNa(a1, v21, 1) || ktoau::IsKataNa(a1, v21, 1) || (v23 = ktoau::IsSetubiNa(a1, v21, 0), v23) || !ktoau::IsKei(v23, v21))
            {
              *(a1 + 8) = 128;
              goto LABEL_60;
            }

            *(a1 + 8) = 0;
            v25 = (a1 + 8);
          }

          v28 = 1024;
LABEL_59:
          *v25 = v28;
          goto LABEL_60;
        }

        if (v20 == 38)
        {
          if (a2[v18] != 24066)
          {
            goto LABEL_60;
          }

          v24 = *(a1 + 8) | 2;
          goto LABEL_56;
        }

        if (v20 == 40 && a2[v18] == 21306)
        {
          v24 = *(a1 + 8) | 4;
LABEL_56:
          *(a1 + 8) = v24;
        }
      }

LABEL_60:
      v29 = 0;
      *(a1 + 40) = 0;
      v30 = v6;
LABEL_61:
      v31 = v30 + 1;
      v32 = &v37[v30];
      while (1)
      {
        v34 = *v32++;
        v33 = v34;
        if (!v34 || v33 == 44)
        {
          break;
        }

        v30 = v31;
        if ((v33 - 65382) >= 0x3A && (v33 - 33) > 0x5E)
        {
          ++v31;
          if (v33 != 32)
          {
            continue;
          }
        }

        a3[v29++] = v33;
        goto LABEL_61;
      }

      a3[v29] = 0;
      return v6;
    }
  }

  return 0;
}

uint64_t ktoau::IsKataIndex(uint64_t a1, int *a2)
{
  v2 = *a2;
  if (*a2 == 65288)
  {
    return 0;
  }

  result = 0xFFFFFFFFLL;
  if ((v2 - 12535) >= 0xFFFFFFAB)
  {
    v4 = (v2 - 12515) > 0x13 || ((1 << (v2 + 29)) & 0x98015) == 0;
    if (v4 && ((v2 - 12451) > 0x20 || ((1 << (v2 + 93)) & 0x100000055) == 0))
    {
      if (v2 == 12532)
      {
        v5 = 12454;
      }

      else
      {
        v5 = *a2;
      }

      v6 = (v2 - 12490) < 0xFFFFFFFB;
      if ((v2 & 1) == 0)
      {
        v6 = 1;
      }

      if ((*a2 - 12460) < 0x17 && (*a2 & 1) == 0)
      {
        v5 = v2 - 1;
      }

      if (!v6)
      {
        v5 = v2 - 1;
      }

      if ((v2 - 12496) <= 0xC && ((1 << (v2 + 48)) & 0x1249) != 0)
      {
        v5 = v2 - 1;
      }

      if ((v2 - 12497) <= 0xC && ((1 << (v2 + 47)) & 0x1249) != 0)
      {
        v5 = v2 - 2;
      }

      v7 = a2[1];
      if (v7)
      {
        v8 = v5 - 12450;
        if (v7 > 12448)
        {
          if (v7 < 0x30F5 || v7 == 12540)
          {
            if (v7 == 12540)
            {
              if ((v2 - 12450) <= 0x3C && ((1 << (v2 + 94)) & 0x1000E10060180601) != 0 || (v9 = 12540, (v2 - 12516) <= 0xB) && ((1 << (v2 + 28)) & 0x821) != 0)
              {
                v9 = 12450;
              }

              if ((v2 - 12461) <= 0x3D && ((1 << (v2 + 83)) & 0x200400E040300C03) != 0 || v2 == 12452)
              {
                v9 = 12452;
              }

              if ((v2 - 12463) <= 0x3C && ((1 << (v2 + 81)) & 0x108201C020600C03) != 0 || v2 == 12454)
              {
                v9 = 12454;
              }

              if ((v2 - 12465) <= 0x3B && ((1 << (v2 + 79)) & 0x801038010600C03) != 0 || v2 == 12456)
              {
                v9 = 12456;
              }

              if ((v2 - 12467) <= 0x3A && ((1 << (v2 + 77)) & 0x420870008600C03) != 0 || v2 == 12458)
              {
                v9 = 12458;
              }
            }

            else
            {
              v9 = a2[1];
              if ((v7 - 12449) <= 0x22 && ((1 << (v7 + 95)) & 0x400000155) != 0 || (v7 - 12515) <= 4 && ((1 << (v7 + 29)) & 0x15) != 0)
              {
                v9 = v7 + 1;
              }
            }

            if (v7 == 12532)
            {
              v10 = 12454;
            }

            else
            {
              v10 = v9;
            }

            v11 = (v7 - 12490) < 0xFFFFFFFB;
            if ((v7 & 1) == 0)
            {
              v11 = 1;
            }

            if ((a2[1] - 12460) < 0x17 && (a2[1] & 1) == 0)
            {
              v10 = v7 - 1;
            }

            if (!v11)
            {
              v10 = v7 - 1;
            }

            if ((v7 - 12496) <= 0xC && ((1 << (v7 + 48)) & 0x1249) != 0)
            {
              v10 = v7 - 1;
            }

            if ((v7 - 12497) <= 0xC && ((1 << (v7 + 47)) & 0x1249) != 0)
            {
              v10 = v7 - 2;
            }

            return (v10 + 87 * v8 - 12449);
          }

          else
          {
            return (87 * v8 + 87);
          }
        }

        else
        {
          return (87 * v8);
        }
      }
    }
  }

  return result;
}

uint64_t ktoau::IsSettouu(uint64_t a1, __int32 *a2, uint64_t a3)
{
  fseek(*(a1 + 96), 0, 0);
  bzero(&v23, 0x400uLL);
  if (!fread(&v23, 2uLL, 1uLL, *(a1 + 96)))
  {
    return 0;
  }

  for (i = 0; ; i = 0)
  {
    while (v24[i - 1])
    {
      if (!fread(&v24[i++], 2uLL, 1uLL, *(a1 + 96)))
      {
        return 0;
      }
    }

    v7 = v23;
    if (v23)
    {
      break;
    }

    v10 = *a2;
    if (!*a2)
    {
LABEL_13:
      v12 = 0;
      while (v10 == a2[v12])
      {
        v11 = v12 + 1;
        v10 = v24[v12++];
        if (v10 == 32)
        {
          goto LABEL_16;
        }
      }
    }

LABEL_30:
    bzero(&v23, 0x400uLL);
    if (!fread(&v23, 2uLL, 1uLL, *(a1 + 96)))
    {
      return 0;
    }
  }

  v8 = v24;
  do
  {
    *(v8 - 1) = ~v7;
    v9 = *v8++;
    v7 = v9;
  }

  while (v9);
  v10 = v23;
  if (v23 != *a2)
  {
    goto LABEL_30;
  }

  if (v23 != 32)
  {
    goto LABEL_13;
  }

  v11 = 0;
LABEL_16:
  v13 = 0;
  v14 = v11;
LABEL_17:
  v15 = v14 + 1;
  v16 = 4 * v14 + 4;
  while (1)
  {
    v17 = *(&v24[-1] + v16);
    if (!v17 || v17 == 44)
    {
      break;
    }

    v14 = v15;
    if ((v17 - 65382) >= 0x3A && (v17 - 33) > 0x5E)
    {
      ++v15;
      v16 += 4;
      if (v17 != 32)
      {
        continue;
      }
    }

    *(a3 + 4 * v13++) = v17;
    goto LABEL_17;
  }

  *(a1 + 8) = 0;
  *(a1 + 40) = 0;
  v18 = wcslen(&v23);
  v19 = v24[v18 - 2];
  if (v19 == 35)
  {
    if (ktoau::IsSetubiNa(a1, a2 + 1, 0) || ktoau::IsKanjiNa(a1, a2 + 1, 1) || ktoau::IsHiraNa(a1, a2 + 1, 1) || (IsKataNa = ktoau::IsKataNa(a1, a2 + 1, 1), IsKataNa))
    {
      *(a1 + 40) = 128;
      goto LABEL_57;
    }

    if (ktoau::IsKei(IsKataNa, a2 + 1))
    {
      v21 = *(a1 + 8) | 0x400;
LABEL_56:
      *(a1 + 8) = v21;
      goto LABEL_57;
    }

    goto LABEL_30;
  }

  if (v19 > 41)
  {
    switch(v19)
    {
      case '*':
        if (a2[1] != 30010)
        {
          return 0;
        }

        v21 = 16;
        goto LABEL_56;
      case '+':
        if (a2[1] != 26449)
        {
          return 0;
        }

        v21 = 32;
        goto LABEL_56;
      case '.':
        if (a2[1] != 26449)
        {
          return 0;
        }

        v21 = 64;
        goto LABEL_56;
    }
  }

  else
  {
    switch(v19)
    {
      case '&':
        if (a2[1] != 24066)
        {
          return 0;
        }

        v21 = 2;
        goto LABEL_56;
      case '(':
        if (a2[1] != 21306)
        {
          return 0;
        }

        v21 = 4;
        goto LABEL_56;
      case ')':
        if (a2[1] != 30010)
        {
          return 0;
        }

        v21 = 8;
        goto LABEL_56;
    }
  }

  if (ktoau::IsMojiMode(v18, a2 + 1) == 10)
  {
    return 0;
  }

  if (v19 == 80)
  {
    *(a1 + 40) = 1024;
  }

LABEL_57:
  *(a3 + 4 * v13) = 0;
  return v11;
}

uint64_t ktoau::IsMojiMode(uint64_t a1, int *a2)
{
  v2 = *a2;
  v3 = 65281;
  v4 = &dword_2427C;
  do
  {
    if (v2 == v3)
    {
      return 9;
    }

    v5 = *v4++;
    v3 = v5;
  }

  while (v5);
  v6 = 19968;
  v7 = &dword_242D0;
  do
  {
    if (v2 == v6)
    {
      return 14;
    }

    v8 = *v7++;
    v6 = v8;
  }

  while (v8);
  if ((v2 - 19968) >> 8 < 0xAD)
  {
    if (v2 != 20189)
    {
      return 12;
    }

LABEL_9:
    if (v2 >> 8 == 40)
    {
      return 15;
    }

    else
    {
      return 7;
    }
  }

  result = 12;
  if (v2 != 19132 && v2 != 19410)
  {
    if ((v2 - 12353) < 0x53)
    {
      return 10;
    }

    if ((v2 - 12449) < 0x54)
    {
      return 11;
    }

    if ((v2 - 65296) < 0xA)
    {
      return 8;
    }

    result = 9;
    if ((v2 - 65345) >= 0x1A && (v2 - 65313) >= 0x1A)
    {
      if (v2 == 12540)
      {
        return 13;
      }

      if (v2 < 32)
      {
        return 1;
      }

      if (v2 == 32)
      {
        return 2;
      }

      if ((v2 - 48) < 0xA)
      {
        return 3;
      }

      if (v2 < 0x7F)
      {
        return 5;
      }

      if ((v2 - 65383) < 0x39)
      {
        return 6;
      }

      goto LABEL_9;
    }
  }

  return result;
}

uint64_t ktoau::IsSetubiu(uint64_t a1, __int32 *a2, uint64_t a3)
{
  if ((*a2 - 64256) < 0xFFFF3542)
  {
    return 0;
  }

  bzero((a1 + 460824), 0x1400uLL);
  *(a1 + 471068) = 0;
  fseek(*(a1 + 88), 0, 0);
  bzero(&v18, 0x400uLL);
  if (fread(&v18, 2uLL, 1uLL, *(a1 + 88)))
  {
    v6 = 0;
    v7 = (a1 + 465944);
    do
    {
      while (v19[v6 - 1])
      {
        if (!fread(&v19[v6++], 2uLL, 1uLL, *(a1 + 88)))
        {
          goto LABEL_31;
        }
      }

      v8 = v18;
      if (v18)
      {
        v9 = v19;
        do
        {
          *(v9 - 1) = ~v8;
          v10 = *v9++;
          v8 = v10;
        }

        while (v10);
        v11 = v18;
        if (v18 != *a2)
        {
          goto LABEL_30;
        }

        if (v18 != 32)
        {
          goto LABEL_14;
        }

        v12 = 0;
LABEL_17:
        v14 = v19[wcslen(&v18) - 2];
        if (v14 == 34)
        {
          if ((*(a1 + 8) & 0x80) == 0 && (*(a1 + 40) & 0x280) == 0)
          {
            goto LABEL_30;
          }
        }

        else if (v14 == 33 && (*(a1 + 8) & 0x80) == 0 && (*(a1 + 40) & 0x80) == 0)
        {
          goto LABEL_30;
        }

        v15 = *(a1 + 471068);
        if (v15)
        {
          if (v15 > 3 || *v7 != v12)
          {
            return ktoau::SelectSetubiList(a1, a2, a3);
          }

          wcscpy(&v7[256 * v15 + 1], &v18);
          v16 = *(a1 + 471068);
          v7[256 * v16] = v12;
        }

        else
        {
          wcscpy((a1 + 465948), &v18);
          *v7 = v12;
          LODWORD(v16) = *(a1 + 471068);
        }

        *(a1 + 471068) = v16 + 1;
      }

      else
      {
        v11 = *a2;
        if (!*a2)
        {
LABEL_14:
          v13 = 0;
          while (v11 == a2[v13])
          {
            v12 = v13 + 1;
            v11 = v19[v13++];
            if (v11 == 32)
            {
              goto LABEL_17;
            }
          }
        }
      }

LABEL_30:
      bzero(&v18, 0x400uLL);
      v6 = 0;
    }

    while (fread(&v18, 2uLL, 1uLL, *(a1 + 88)));
  }

LABEL_31:
  if (*(a1 + 471068))
  {
    return ktoau::SelectSetubiList(a1, a2, a3);
  }

  else
  {
    return 0;
  }
}

uint64_t ktoau::SelectSetubiList(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  *(a1 + 8) = 0;
  *(a1 + 16) = v6;
  v7 = *(a1 + 40);
  *(a1 + 40) = 0;
  *(a1 + 48) = v7;
  if (*(a1 + 471068) < 1)
  {
    v10 = 0;
  }

  else
  {
    v8 = 0;
    v9 = a1 + 465940;
    while (1)
    {
      v10 = v8;
      if (*(v9 + 4 * wcslen((v9 + 4))) == 33 && (*(a1 + 48) & 0x200) == 0 && (!ktoau::IsSetubiNa(a1, (a2 + 4), 1) || ktoau::IsKanjiNa(a1, (a2 + 4), 0)))
      {
        break;
      }

      if (*(v9 + 4 * wcslen((v9 + 4))) == 34 && ((*(a1 + 48) & 0x200) != 0 || ktoau::IsSetubiNa(a1, (a2 + 4), 1)))
      {
        v11 = 512;
        goto LABEL_15;
      }

      v8 = v10 + 1;
      v9 += 1024;
      if (v10 + 1 >= *(a1 + 471068))
      {
        goto LABEL_16;
      }
    }

    v11 = 256;
LABEL_15:
    *(a1 + 40) |= v11;
  }

LABEL_16:
  v12 = 0;
  do
  {
    v13 = *(a1 + (v10 << 10) + 465948 + 4 * v12++);
  }

  while (v13 != 32);
  v14 = 0;
  v15 = a1 + 465944 + (v10 << 10);
  LODWORD(v16) = v12;
LABEL_19:
  v16 = v16;
  while (1)
  {
    v17 = *(a1 + (v10 << 10) + 465948 + 4 * v16);
    if (!v17 || v17 == 44)
    {
      break;
    }

    ++v16;
    if ((v17 - 65382) < 0x3A || (v17 - 32) <= 0x5F)
    {
      *(a3 + 4 * v14++) = v17;
      goto LABEL_19;
    }
  }

  if (*(v15 + 4 * wcslen((a1 + 465944 + (v10 << 10))) - 4) == 33)
  {
    *(a1 + 8) = 0;
    *(a1 + 40) = 256;
    v18 = *(a2 - 4);
    if (v18 != 32 && v18 != 12288)
    {
      *(a1 + 40) = 1280;
    }
  }

  if (*(v15 + 4 * wcslen((a1 + 465944 + (v10 << 10))) - 4) == 34)
  {
    if ((*(a1 + 16) & 0x80) != 0 || (*(a1 + 48) & 0x80) != 0)
    {
      v20 = *(a2 - 4);
      v19 = v20 != 32 && v20 != 12288;
    }

    else
    {
      v19 = 0;
    }

    *(a1 + 8) = 0;
    *(a1 + 40) = 0;
    *(a1 + 40) = (v19 << 10) | 0x200;
  }

  result = (v12 - 1);
  *(a3 + 4 * v14) = 0;
  return result;
}

uint64_t ktoau::IsNaSetubiu(uint64_t a1, __int32 *a2, uint64_t a3)
{
  if ((*a2 - 64256) < 0xFFFF3542)
  {
    return 0;
  }

  bzero((a1 + 460824), 0x1400uLL);
  *(a1 + 471068) = 0;
  fseek(*(a1 + 88), 0, 0);
  bzero(&__ptr, 0x400uLL);
  if (!fread(&__ptr, 2uLL, 1uLL, *(a1 + 88)))
  {
    return 0;
  }

  for (i = 0; ; i = 0)
  {
    while (v23[i - 1])
    {
      if (!fread(&v23[i++], 2uLL, 1uLL, *(a1 + 88)))
      {
        return 0;
      }
    }

    v7 = __ptr;
    if (__ptr)
    {
      break;
    }

    v10 = *a2;
    if (!*a2)
    {
LABEL_14:
      v13 = 0;
      while (v10 == a2[v13])
      {
        v12 = v13 + 1;
        v10 = v23[v13++];
        if (v10 == 32)
        {
          v11 = v12;
          goto LABEL_18;
        }
      }
    }

LABEL_20:
    bzero(&__ptr, 0x400uLL);
    if (!fread(&__ptr, 2uLL, 1uLL, *(a1 + 88)))
    {
      return 0;
    }
  }

  v8 = v23;
  do
  {
    *(v8 - 1) = ~v7;
    v9 = *v8++;
    v7 = v9;
  }

  while (v9);
  v10 = __ptr;
  if (__ptr != *a2)
  {
    goto LABEL_20;
  }

  if (__ptr != 32)
  {
    goto LABEL_14;
  }

  v11 = 0;
  v12 = 0;
LABEL_18:
  v14 = wcslen(&__ptr);
  if (v23[v14 - 2] != 33 || !ktoau::IsKei(v14, &a2[v12]))
  {
    goto LABEL_20;
  }

  v16 = 0;
  *(a1 + 8) = 1024;
  *(a1 + 40) = 0;
  v17 = v11;
LABEL_24:
  v18 = v17 + 1;
  v19 = &v23[v17];
  while (1)
  {
    v21 = *v19++;
    v20 = v21;
    if (v21 == 44)
    {
      break;
    }

    v17 = v18;
    if ((v20 - 65382) >= 0x3A && (v20 - 33) > 0x5E)
    {
      ++v18;
      if (v20 != 32)
      {
        continue;
      }
    }

    *(a3 + 4 * v16++) = v20;
    goto LABEL_24;
  }

  *(a3 + 4 * v16) = 0;
  return v11;
}

size_t ktoau::IsSuushiu(uint64_t a1, int *a2, uint64_t a3)
{
  v6 = *a2;
  if ((*a2 - 12450) >= 0x55 && (v6 - 19968) >> 8 >= 0xAD && (v6 - 12354) > 0x4D)
  {
    return 0;
  }

  fseek(*(a1 + 104), 0, 0);
  bzero(&__ptr, 0x400uLL);
  result = fread(&__ptr, 2uLL, 1uLL, *(a1 + 104));
  if (result)
  {
    v8 = 0;
    do
    {
      while (v21[v8 - 1])
      {
        result = fread(&v21[v8++], 2uLL, 1uLL, *(a1 + 104));
        if (!result)
        {
          return result;
        }
      }

      v9 = __ptr;
      if (__ptr)
      {
        v10 = v21;
        do
        {
          *(v10 - 1) = ~v9;
          v11 = *v10++;
          v9 = v11;
        }

        while (v11);
        v12 = __ptr;
        if (__ptr == *a2)
        {
          if (__ptr == 32)
          {
            result = 0;
LABEL_22:
            v14 = 0;
            v15 = result;
LABEL_23:
            v16 = v15 + 1;
            v17 = &v21[v15];
            while (1)
            {
              v19 = *v17++;
              v18 = v19;
              if (!v19)
              {
                break;
              }

              v15 = v16;
              if ((v18 - 65382) >= 0x3A && (v18 - 33) > 0x5E)
              {
                ++v16;
                if (v18 != 32)
                {
                  continue;
                }
              }

              *(a3 + 4 * v14++) = v18;
              goto LABEL_23;
            }

            *(a3 + 4 * v14) = 0;
            return result;
          }

LABEL_19:
          v13 = 0;
          while (v12 == a2[v13])
          {
            result = v13 + 1;
            v12 = v21[v13++];
            if (v12 == 32)
            {
              goto LABEL_22;
            }
          }
        }
      }

      else
      {
        v12 = *a2;
        if (!*a2)
        {
          goto LABEL_19;
        }
      }

      bzero(&__ptr, 0x400uLL);
      result = fread(&__ptr, 2uLL, 1uLL, *(a1 + 104));
      v8 = 0;
    }

    while (result);
  }

  return result;
}

size_t ktoau::IsTan1u(uint64_t a1, int *a2, uint64_t a3)
{
  if ((*a2 - 64256) < 0xFFFF5300)
  {
    return 0;
  }

  fseek(*(a1 + 112), 0, 0);
  bzero(&__ptr, 0x400uLL);
  result = fread(&__ptr, 2uLL, 1uLL, *(a1 + 112));
  if (result)
  {
    v7 = 0;
    do
    {
      while (v20[v7 - 1])
      {
        result = fread(&v20[v7++], 2uLL, 1uLL, *(a1 + 112));
        if (!result)
        {
          return result;
        }
      }

      v8 = __ptr;
      if (__ptr)
      {
        v9 = v20;
        do
        {
          *(v9 - 1) = ~v8;
          v10 = *v9++;
          v8 = v10;
        }

        while (v10);
        v11 = __ptr;
        if (__ptr == *a2)
        {
          if (__ptr == 32)
          {
            result = 0;
LABEL_20:
            v13 = 0;
            v14 = result;
LABEL_21:
            v15 = v14 + 1;
            v16 = &v20[v14];
            while (1)
            {
              v18 = *v16++;
              v17 = v18;
              if (!v18)
              {
                break;
              }

              v14 = v15;
              if ((v17 - 65382) >= 0x3A && (v17 - 33) > 0x5E)
              {
                ++v15;
                if (v17 != 32)
                {
                  continue;
                }
              }

              *(a3 + 4 * v13++) = v17;
              goto LABEL_21;
            }

            *(a3 + 4 * v13) = 0;
            return result;
          }

LABEL_17:
          v12 = 0;
          while (v11 == a2[v12])
          {
            result = v12 + 1;
            v11 = v20[v12++];
            if (v11 == 32)
            {
              goto LABEL_20;
            }
          }
        }
      }

      else
      {
        v11 = *a2;
        if (!*a2)
        {
          goto LABEL_17;
        }
      }

      bzero(&__ptr, 0x400uLL);
      result = fread(&__ptr, 2uLL, 1uLL, *(a1 + 112));
      v7 = 0;
    }

    while (result);
  }

  return result;
}

size_t ktoau::TanKanji2Set(uint64_t a1, int *a2, __int32 *a3)
{
  v3 = *a2;
  if (*a2 != 19132 && v3 != 19410 && (v3 - 64256) < 0xFFFF5300)
  {
    return 0;
  }

  v9 = a2[1];
  v10 = *(a2 - 1);
  fseek(*(a1 + 120), 0, 0);
  bzero(&v22, 0x400uLL);
  result = fread(&v22, 2uLL, 1uLL, *(a1 + 120));
  if (result)
  {
    v11 = 0;
    do
    {
      while (v23[v11 - 1])
      {
        result = fread(&v23[v11++], 2uLL, 1uLL, *(a1 + 120));
        if (!result)
        {
          return result;
        }
      }

      v12 = v22;
      if (v22)
      {
        v13 = v23;
        do
        {
          *(v13 - 1) = ~v12;
          v14 = *v13++;
          v12 = v14;
        }

        while (v14);
        v15 = v22;
        if (v22 == *a2)
        {
          if (v22 == 32)
          {
            v21 = 0;
LABEL_27:
            v17 = 0;
LABEL_28:
            v18 = v21 + 1;
            while (1)
            {
              v19 = v23[v18 - 1];
              if (!v19)
              {
                break;
              }

              v21 = v18;
              if ((v19 - 65382) >= 0x3A && (v19 - 33) > 0x5E)
              {
                ++v18;
                if (v19 != 32)
                {
                  continue;
                }
              }

              a3[v17++] = v19;
              goto LABEL_28;
            }

            a3[v17] = 0;
            LODWORD(result) = ktoau::TanKanji2SetSub(result, a3, v3, v9, v10, a2);
            if (result <= 1)
            {
              return 1;
            }

            else
            {
              return result;
            }
          }

          goto LABEL_24;
        }
      }

      else if (!*a2)
      {
        v15 = 0;
LABEL_24:
        v16 = 0;
        while (v15 == a2[v16])
        {
          v21 = v16 + 1;
          v15 = v23[v16++];
          if (v15 == 32)
          {
            goto LABEL_27;
          }
        }
      }

      bzero(&v22, 0x400uLL);
      result = fread(&v22, 2uLL, 1uLL, *(a1 + 120));
      v11 = 0;
    }

    while (result);
  }

  return result;
}

uint64_t ktoau::TanKanji2SetSub(int a1, __int32 *a2, int a3, int a4, int a5, uint64_t a6)
{
  result = 0;
  if (a3 <= 27424)
  {
    if (a3 <= 23499)
    {
      if (a3 <= 21219)
      {
        if (a3 <= 20669)
        {
          if (a3 <= 20240)
          {
            if (a3 <= 20113)
            {
              if (a3 > 20026)
              {
                if (a3 <= 20093)
                {
                  if (a3 == 20027)
                  {
                    if (a4 >> 1 != 6197)
                    {
                      return 0;
                    }

                    goto LABEL_3380;
                  }

                  if (a3 != 20055)
                  {
                    if (a3 != 20081)
                    {
                      return result;
                    }

                    if (a4 != 12428)
                    {
                      result = 0;
                      if ((a4 - 12382) < 0xFFFFFFF7 || (a4 & 1) == 0)
                      {
                        return result;
                      }
                    }

                    v14 = &unk_281C8;
                    goto LABEL_3920;
                  }

                  if ((a4 - 12379) > 0x32 || ((1 << (a4 - 91)) & 0x7C00000000101) == 0)
                  {
                    if ((a4 & 0xFFFFFFFD) == 0x3058)
                    {
                      v14 = &unk_27784;
                      goto LABEL_3920;
                    }

                    return 0;
                  }

LABEL_1979:
                  v14 = &unk_26A00;
                  goto LABEL_3920;
                }

                if (a3 != 20094)
                {
                  if (a3 == 20104)
                  {
                    if (a4 != 12417)
                    {
                      return 0;
                    }

                    v14 = &unk_28148;
                    goto LABEL_3920;
                  }

                  if (a3 != 20105)
                  {
                    return result;
                  }

                  if ((a4 - 12356) < 7 || a4 == 12431 || a4 == 12387)
                  {
                    v14 = &unk_279CC;
                    goto LABEL_3920;
                  }

                  return 1;
                }

                if (a4 != 12356 && (a4 - 12363) > 8)
                {
                  return 0;
                }

                v93 = &unk_26DAC;
LABEL_2915:
                wcscpy(a2, v93);
                v35 = 12363;
                goto LABEL_2879;
              }

              if (a3 <= 20005)
              {
                if (a3 != 19978)
                {
                  if (a3 == 19979)
                  {
                    if (a4 != 12370 && a4 != 12364)
                    {
                      if ((a4 - 12373) > 0xE)
                      {
                        if (a4 == 12429 || a4 == 12426)
                        {
                          goto LABEL_3824;
                        }

                        if ((a4 - 12426) > 2)
                        {
                          return 0;
                        }
                      }

                      v14 = &unk_26AFC;
                      goto LABEL_3920;
                    }

                    goto LABEL_2387;
                  }

                  if (a3 != 19982)
                  {
                    return result;
                  }

                  result = 0;
                  if (a4 <= 12368)
                  {
                    if (a4 != 12360)
                    {
                      if (a4 != 12363)
                      {
                        return result;
                      }

                      goto LABEL_3094;
                    }

                    goto LABEL_1857;
                  }

                  if (a4 == 12369)
                  {
                    goto LABEL_3094;
                  }

                  if (a4 != 12428)
                  {
                    return result;
                  }

LABEL_3093:
                  v14 = &unk_28160;
                  goto LABEL_3920;
                }

                if (a4 > 12378)
                {
                  if (a4 == 12379 || a4 == 12387)
                  {
LABEL_1760:
                    v14 = &unk_2771C;
                    goto LABEL_3920;
                  }

LABEL_3195:
                  if ((a4 - 12425) > 4)
                  {
                    return 0;
                  }

                  goto LABEL_1760;
                }

                if (a4 != 12364 && a4 != 12370)
                {
                  goto LABEL_3195;
                }

LABEL_3806:
                v14 = &unk_2676C;
                goto LABEL_3920;
              }

              if (a3 == 20006)
              {
                result = 0;
                v90 = (a4 - 12400);
                if (v90 > 0x23)
                {
                  return result;
                }

                if (((1 << (a4 - 112)) & 0x800001249) != 0)
                {
                  v14 = &unk_26D58;
                  goto LABEL_3920;
                }

                if (v90 != 15)
                {
                  return result;
                }

                goto LABEL_2163;
              }

              if (a3 == 20013)
              {
                if ((a4 - 12425) > 4)
                {
                  return 0;
                }

                v14 = &unk_27B84;
                goto LABEL_3920;
              }

              if (a3 != 20024)
              {
                return result;
              }

LABEL_1112:
              result = 0;
              if ((a4 - 12356) > 0x3D || ((1 << (a4 - 68)) & 0x2C00000000000001) == 0)
              {
                return result;
              }

              v14 = &unk_26DC4;
              goto LABEL_3920;
            }

            if (a3 <= 20194)
            {
              if (a3 <= 20131)
              {
                if (a3 == 20114)
                {
                  if ((a4 - 12356) >= 7 && a4 != 12431)
                  {
                    return 0;
                  }

                  v14 = &unk_2722C;
                  goto LABEL_3920;
                }

                if (a3 == 20123)
                {
                  if (a4 != 12363)
                  {
                    return 0;
                  }

                  v14 = &unk_2738C;
                  goto LABEL_3920;
                }

                if (a3 != 20129)
                {
                  return result;
                }

                if ((a4 - 12400) > 0x23 || ((1 << (a4 - 112)) & 0x800001249) == 0)
                {
                  if (a4 != 12367)
                  {
                    return 0;
                  }

                  v11 = &unk_26900;
                  goto LABEL_3825;
                }

                goto LABEL_3090;
              }

              if (a3 == 20132)
              {
                if (a4 == 12431)
                {
                  v91 = *(a6 + 8);
                  if (v91 - 12382) >= 0xFFFFFFF7 && (v91)
                  {
                    v11 = &unk_26B70;
                    goto LABEL_3825;
                  }
                }

                else
                {
                  if ((a4 - 12374) <= 6 && (a4 & 1) == 0)
                  {
                    goto LABEL_3226;
                  }

                  result = 0;
                  if ((a4 - 12356) > 0x1F)
                  {
                    return result;
                  }

                  if (((1 << (a4 - 68)) & 0x80000045) != 0)
                  {
                    v14 = &unk_26B70;
                    goto LABEL_3920;
                  }

                  if (a4 != 12360)
                  {
                    return result;
                  }
                }

                v14 = &unk_27264;
                goto LABEL_3920;
              }

              if (a3 != 20181)
              {
                if (a3 != 20184)
                {
                  return result;
                }

                if (a4 != 12356 && ((a4 - 12372) < 0xFFFFFFF7 || (a4 & 1) == 0))
                {
                  result = 0;
                  if (a4 - 12382) >= 0xFFFFFFF7 && (a4)
                  {
                    v14 = &unk_26820;
                    goto LABEL_3920;
                  }

                  return result;
                }

                if (a5 == 32016 || a5 == 27671)
                {
                  v14 = &unk_27EB0;
                  goto LABEL_3920;
                }

LABEL_2841:
                v14 = &unk_267E0;
                goto LABEL_3920;
              }

              if ((a4 - 12356) >= 7 && a4 != 12431)
              {
                v65 = 12387;
                goto LABEL_2596;
              }

LABEL_2597:
              v14 = &unk_271A8;
              goto LABEL_3920;
            }

            if (a3 <= 20224)
            {
              if (a3 != 20195)
              {
                if (a3 == 20208)
                {
                  if ((a4 - 12364) <= 8)
                  {
                    if (a4)
                    {
                      if (a4 == 12369)
                      {
                        v14 = &unk_26A00;
                        goto LABEL_3920;
                      }

                      return 0;
                    }

                    goto LABEL_2005;
                  }

                  result = 0;
                  if (a4 <= 12424)
                  {
                    if (a4 == 12356)
                    {
                      goto LABEL_2005;
                    }

                    if (a4 == 12379)
                    {
                      v14 = &unk_27034;
                      goto LABEL_3920;
                    }

                    if (a4 != 12387)
                    {
                      return result;
                    }
                  }

                  else if ((a4 - 12425) >= 5)
                  {
                    return result;
                  }

                  v14 = &unk_27040;
                  goto LABEL_3920;
                }

                if (a3 != 20219)
                {
                  return result;
                }

                if ((a4 - 12376) <= 4 && ((1 << (a4 - 88)) & 0x15) != 0)
                {
                  v14 = &unk_27D0C;
                  goto LABEL_3920;
                }

                result = 0;
                if ((a4 - 12382) < 0xFFFFFFF7 || (a4 & 1) == 0)
                {
                  return result;
                }

LABEL_3752:
                v14 = &unk_268F4;
                goto LABEL_3920;
              }

              goto LABEL_1685;
            }

            if (a3 == 20225)
            {
              if ((a4 - 12414) >= 5)
              {
                if (a4 == 12390)
                {
                  v14 = &unk_26E18;
                  goto LABEL_3920;
                }

                if (a4 != 12435)
                {
                  return 0;
                }
              }

              v14 = &unk_26E08;
              goto LABEL_3920;
            }

            if (a3 == 20239)
            {
              result = 0;
              if ((a4 - 12382) < 0xFFFFFFF7 || (a4 & 1) == 0)
              {
                return result;
              }

              if (a5 == 12385)
              {
                v11 = &unk_27EC8;
              }

              else
              {
                v11 = &unk_26820;
              }

              goto LABEL_3825;
            }

            v45 = 20240;
            goto LABEL_1400;
          }

          if (a3 <= 20380)
          {
            if (a3 > 20308)
            {
              if (a3 <= 20340)
              {
                if (a3 == 20309)
                {
                  if ((a4 - 12391) < 2 || a4 == 12425)
                  {
                    v14 = &unk_26B28;
                    goto LABEL_3920;
                  }

                  if (a4 != 12428)
                  {
                    return 0;
                  }

                  v14 = &unk_26B18;
                  goto LABEL_3920;
                }

                if (a3 != 20313)
                {
                  if (a3 != 20316)
                  {
                    return result;
                  }

                  goto LABEL_690;
                }

                if (((a4 - 12380) < 0xFFFFFFFB || (a4 & 1) == 0) && (a4 - 12425) >= 5 && a4 != 12387)
                {
                  return 0;
                }

LABEL_2234:
                v14 = &unk_26DB8;
                goto LABEL_3920;
              }

              if (a3 == 20341)
              {
                result = 0;
                if (a4 - 12382) >= 0xFFFFFFF7 && (a4)
                {
                  v14 = &unk_2687C;
                  goto LABEL_3920;
                }

                return result;
              }

              if (a3 != 20351)
              {
                if (a3 != 20363)
                {
                  return result;
                }

                if (a4 != 12360)
                {
                  return 0;
                }

                v14 = &unk_28200;
                goto LABEL_3920;
              }

              if ((a4 - 12356) >= 7 && a4 != 12431 && a4 != 12387)
              {
                return 0;
              }

              if (a5 == 15192)
              {
                v14 = &unk_27198;
                goto LABEL_3920;
              }

              goto LABEL_2597;
            }

            if (a3 <= 20275)
            {
              if (a3 == 20241)
              {
                if ((a4 - 12414) >= 5 && a4 != 12435)
                {
                  return 0;
                }

                v14 = &unk_26EF8;
                goto LABEL_3920;
              }

              if (a3 != 20250)
              {
                if (a3 != 20253)
                {
                  return result;
                }

                if (a4 != 12431 && a4 != 12360)
                {
                  return 0;
                }

                v14 = &unk_25D68;
                goto LABEL_3920;
              }

              goto LABEL_1071;
            }

            if (a3 == 20276)
            {
              if ((a4 - 12356) >= 7 && a4 != 12431 && a4 != 12387)
              {
                return 0;
              }

              v14 = &unk_27DF0;
              goto LABEL_3920;
            }

            if (a3 != 20280)
            {
              if (a3 != 20303)
              {
                return result;
              }

LABEL_1152:
              if ((a4 - 12414) < 5)
              {
LABEL_2608:
                v14 = &unk_26B98;
                goto LABEL_3920;
              }

              v36 = 12435;
LABEL_2607:
              if (a4 != v36)
              {
                return 0;
              }

              goto LABEL_2608;
            }

LABEL_1711:
            result = 0;
            if ((a4 - 12400) <= 9 && ((1 << (a4 - 112)) & 0x209) != 0)
            {
              wcscpy(a2, &unk_26A00);
              if (a4 == 12400)
              {
                return 2;
              }

              else
              {
                return 1;
              }
            }

            return result;
          }

          if (a3 > 20497)
          {
            if (a3 <= 20604)
            {
              if (a3 == 20498)
              {
                if (((a4 - 12382) < 0xFFFFFFF7 || (a4 & 1) == 0) && a4 != 12428)
                {
                  return 0;
                }

                v14 = &unk_27C34;
                goto LABEL_3920;
              }

              if (a3 != 20511)
              {
                if (a3 != 20581)
                {
                  return result;
                }

                if (a4 != 12420)
                {
                  return 0;
                }

                v14 = &unk_27174;
                goto LABEL_3920;
              }

              if (a4 != 12426)
              {
                return 0;
              }

              goto LABEL_2771;
            }

            if (a3 == 20605)
            {
              if ((a4 - 12425) >= 5 && a4 != 12387)
              {
                return 0;
              }

              v14 = &unk_26E6C;
              goto LABEL_3920;
            }

            if (a3 == 20633)
            {
              if (a4 != 12431 && a4 != 12360)
              {
                return 0;
              }

              v14 = &unk_27E80;
              goto LABEL_3920;
            }

            if (a3 != 20663)
            {
              return result;
            }

            if ((a4 - 12414) >= 5 && a4 != 12435)
            {
              return 0;
            }

            goto LABEL_2918;
          }

          if (a3 <= 20444)
          {
            if (a3 != 20381)
            {
              if (a3 == 20415)
              {
                if (a4 != 12426)
                {
                  return 0;
                }

                goto LABEL_1966;
              }

              if (a3 != 20418)
              {
                return result;
              }

              if ((a4 - 12425) < 5)
              {
LABEL_1170:
                v14 = &unk_26D64;
                goto LABEL_3920;
              }

              v23 = 12387;
LABEL_1169:
              if (a4 != v23)
              {
                return 0;
              }

              goto LABEL_1170;
            }

            if ((a4 - 12425) >= 5 && a4 != 12387)
            {
              return 0;
            }

LABEL_2559:
            v14 = &unk_269EC;
            goto LABEL_3920;
          }

          if (a3 == 20445)
          {
            if ((a4 - 12383) > 9)
            {
              return 0;
            }

            v14 = &unk_27F8C;
            goto LABEL_3920;
          }

          if (a3 == 20449)
          {
            result = 0;
            if ((a4 - 12374) <= 4 && ((1 << (a4 - 86)) & 0x15) != 0)
            {
              v14 = &unk_277F8;
              goto LABEL_3920;
            }

            return result;
          }

          v39 = 20462;
LABEL_1237:
          if (a3 != v39)
          {
            return result;
          }

LABEL_1238:
          if (a4 != 12417 && a4 != 12414)
          {
            return 0;
          }

          v14 = &unk_27540;
          goto LABEL_3920;
        }

        if (a3 <= 20999)
        {
          if (a3 <= 20869)
          {
            if (a3 <= 20805)
            {
              if (a3 > 20777)
              {
                if (a3 == 20778)
                {
                  if (a4 == 12428)
                  {
                    v14 = &unk_28120;
                    goto LABEL_3920;
                  }

                  if (a4 != 12375)
                  {
                    return 0;
                  }

                  v14 = &unk_28114;
                  goto LABEL_3920;
                }

                if (a3 == 20804)
                {
                  if (a5 != 12362)
                  {
                    return 0;
                  }

                  v14 = &unk_270C8;
                  goto LABEL_3920;
                }

                if (a3 != 20805)
                {
                  return result;
                }

                if (a4 != 12390)
                {
                  return 0;
                }

                goto LABEL_3806;
              }

              if (a3 != 20670)
              {
                if (a3 == 20677)
                {
                  if (a4 != 12363)
                  {
                    return 0;
                  }

                  v14 = &unk_27064;
                  goto LABEL_3920;
                }

                if (a3 != 20685)
                {
                  return result;
                }

                if ((a4 - 12363) > 8)
                {
                  if (a4 != 12356)
                  {
                    return 0;
                  }
                }

                else if ((a4 & 1) == 0)
                {
                  return 0;
                }

                v11 = &unk_27C8C;
                goto LABEL_3825;
              }

              if ((a4 - 12363) > 8)
              {
                if (a4 != 12356)
                {
                  v83 = (a4 & 1) == 0;
                  goto LABEL_3759;
                }
              }

              else if ((a4 & 1) == 0)
              {
                v83 = 1;
LABEL_3759:
                result = 0;
                if ((a4 - 12364) <= 8 && v83)
                {
                  v14 = &unk_270BC;
                  goto LABEL_3920;
                }

                return result;
              }

              v14 = &unk_270AC;
              goto LABEL_3920;
            }

            if (a3 > 20836)
            {
              if (a3 != 20837)
              {
                if (a3 != 20840)
                {
                  if (a3 != 20860)
                  {
                    return result;
                  }

                  v42 = 12397;
LABEL_2780:
                  if (a4 != v42)
                  {
                    return 0;
                  }

                  v14 = &unk_26B70;
                  goto LABEL_3920;
                }

                if (a4 == 12390)
                {
                  v14 = &unk_26D08;
                  goto LABEL_3920;
                }

                if (a4 == 12367)
                {
                  v14 = &unk_27958;
                  goto LABEL_3920;
                }

                if (a4 != 12358)
                {
                  return 0;
                }

                v14 = &unk_27948;
                goto LABEL_3920;
              }

              if (a4 != 12428 && a4 != 12426)
              {
                if ((a4 - 12425) > 4 && a4 != 12387)
                {
                  return 0;
                }

                goto LABEL_2729;
              }

              goto LABEL_3837;
            }

            if (a3 == 20806)
            {
              result = 0;
              if (a4 - 12382) >= 0xFFFFFFF7 && (a4)
              {
                v14 = &unk_27370;
                goto LABEL_3920;
              }

              return result;
            }

            if (a3 != 20809)
            {
              if (a3 != 20811)
              {
                return result;
              }

LABEL_2770:
              if ((a4 - 12383) > 9)
              {
                return 0;
              }

              goto LABEL_2771;
            }

            if ((a4 - 12425) < 5)
            {
LABEL_2664:
              v14 = &unk_27274;
              goto LABEL_3920;
            }

            v62 = 12387;
LABEL_2663:
            if (a4 != v62)
            {
              return 0;
            }

            goto LABEL_2664;
          }

          if (a3 > 20940)
          {
            if (a3 <= 20985)
            {
              if (a3 != 20941)
              {
                if (a3 == 20961)
                {
                  if (a4 == 12390)
                  {
                    v14 = &unk_26D08;
                    goto LABEL_3920;
                  }

                  if (a4 != 12381)
                  {
                    return 0;
                  }

                  v14 = dword_26A64;
                }

                else
                {
                  if (a3 != 20985)
                  {
                    return result;
                  }

                  if ((a4 - 12414) >= 5 && a4 != 12435)
                  {
                    return 0;
                  }

                  v14 = &unk_26AAC;
                }

                goto LABEL_3920;
              }

              result = 0;
              if (a4 <= 12414)
              {
                if (a4 == 12360)
                {
                  v14 = &unk_27C40;
                  goto LABEL_3920;
                }

                if (a4 != 12387)
                {
                  if (a4 != 12390)
                  {
                    return result;
                  }

                  goto LABEL_3837;
                }
              }

              else if ((a4 - 12425) >= 5)
              {
                if (a4 != 12415)
                {
                  return result;
                }

                goto LABEL_2831;
              }

              v14 = &unk_27C50;
              goto LABEL_3920;
            }

            if (a3 == 20986)
            {
              if ((a4 - 12373) > 6)
              {
                if ((a4 - 12381) <= 0x2B && ((1 << (a4 - 93)) & 0x80000002245) != 0 || (a4 - 12425) <= 3)
                {
                  v14 = &unk_2766C;
                  goto LABEL_3920;
                }

                return 0;
              }

              v14 = &unk_267BC;
              goto LABEL_3920;
            }

            if (a3 == 20998)
            {
              result = 0;
              if ((a4 - 12370) < 0xFFFFFFF9 || (a4 & 1) == 0)
              {
                return result;
              }

LABEL_3273:
              v14 = &unk_26BAC;
              goto LABEL_3920;
            }

            v45 = 20999;
LABEL_1400:
            if (a3 != v45)
            {
              return result;
            }

            goto LABEL_1401;
          }

          if (a3 <= 20915)
          {
            if (a3 != 20870)
            {
              if (a3 == 20877)
              {
                if (a4 != 12403)
                {
                  return 0;
                }

                v14 = &unk_273C0;
                goto LABEL_3920;
              }

              v20 = 20889;
LABEL_1503:
              if (a3 != v20)
              {
                return result;
              }

              goto LABEL_1504;
            }

            goto LABEL_1112;
          }

          if (a3 != 20916)
          {
            if (a3 != 20919)
            {
              if (a3 != 20932)
              {
                return result;
              }

              if (a4 != 12414)
              {
                return 0;
              }

              v14 = &unk_27324;
              goto LABEL_3920;
            }

            result = 0;
            if (a4 <= 12413)
            {
              if (a4 != 12360)
              {
                if (a4 != 12383)
                {
                  return result;
                }

                v14 = &unk_2820C;
                goto LABEL_3920;
              }
            }

            else
            {
              if (a4 == 12414 || a4 == 12417)
              {
                goto LABEL_3024;
              }

              if (a4 != 12420)
              {
                return result;
              }
            }

            wcscpy(a2, &unk_26810);
            v35 = 12420;
            goto LABEL_2879;
          }

          v67 = 12360;
          goto LABEL_3117;
        }

        if (a3 <= 21105)
        {
          if (a3 <= 21049)
          {
            if (a3 > 21028)
            {
              if (a3 == 21029)
              {
                if (a4 != 12428)
                {
                  return 0;
                }

                v14 = &unk_26BF0;
                goto LABEL_3920;
              }

              if (a3 == 21046)
              {
                if (a4 != 12377 && a4 != 12375)
                {
                  return 0;
                }

                v14 = &unk_27890;
                goto LABEL_3920;
              }

              if (a3 != 21047)
              {
                return result;
              }

              if ((a4 - 12425) >= 5)
              {
                v38 = 12387;
                goto LABEL_2818;
              }

              goto LABEL_2819;
            }

            if (a3 != 21000)
            {
              if (a3 != 21021)
              {
                if (a3 != 21028)
                {
                  return result;
                }

                if ((a4 - 12425) >= 5 && a4 != 12387)
                {
                  return 0;
                }

                goto LABEL_3712;
              }

              if (a4 == 12417)
              {
                if (a5 == 12356 || a5 == 21682 || a5 == 12365)
                {
                  v14 = &unk_27498;
                  goto LABEL_3920;
                }

LABEL_1943:
                v14 = &unk_274A4;
                goto LABEL_3920;
              }

LABEL_1942:
              if ((a4 - 12414) > 4)
              {
                return 0;
              }

              goto LABEL_1943;
            }

            if ((a4 - 12425) >= 5)
            {
              v32 = 12387;
              goto LABEL_2531;
            }

LABEL_2532:
            v14 = &unk_26B70;
            goto LABEL_3920;
          }

          if (a3 > 21062)
          {
            if (a3 == 21063)
            {
              if ((a4 - 12425) >= 5 && a4 != 12387)
              {
                return 0;
              }

              v14 = &unk_27A08;
              goto LABEL_3920;
            }

            if (a3 != 21066)
            {
              if (a3 != 21093)
              {
                return result;
              }

              if ((a4 & 0xFFFFFFFD) != 0x304C)
              {
                if ((a4 - 12363) > 8)
                {
                  if (a4 != 12356)
                  {
                    return 0;
                  }
                }

                else if ((a4 & 1) == 0)
                {
                  return 0;
                }

                v14 = &unk_26840;
                goto LABEL_3920;
              }

              goto LABEL_2894;
            }

            if ((a4 - 12364) > 8)
            {
              if ((a4 - 12387) <= 0x2A && ((1 << (a4 - 99)) & 0x7C000000001) != 0)
              {
                v14 = &unk_27418;
                goto LABEL_3920;
              }

              v29 = 12356;
LABEL_1586:
              if (a4 != v29)
              {
                return 0;
              }

              goto LABEL_2127;
            }

            if (a4)
            {
              return 0;
            }

LABEL_2127:
            v14 = &unk_267AC;
            goto LABEL_3920;
          }

          if (a3 != 21050)
          {
            if (a3 == 21051)
            {
              if ((a4 - 12414) >= 5 && a4 != 12435)
              {
                return 0;
              }

              v14 = &unk_27370;
              goto LABEL_3920;
            }

            if (a3 != 21059)
            {
              return result;
            }

            if ((a4 - 12425) >= 5)
            {
              v29 = 12387;
              goto LABEL_1586;
            }

            goto LABEL_2127;
          }

          goto LABEL_1691;
        }

        if (a3 > 21190)
        {
          if (a3 > 21212)
          {
            if (a3 != 21213)
            {
              if (a3 == 21215)
              {
                if ((a4 - 12425) >= 5 && a4 != 12387)
                {
                  return 0;
                }

                v11 = &unk_27FB0;
                goto LABEL_3825;
              }

              if (a3 != 21218)
              {
                return result;
              }

              if (a4 != 12356)
              {
                return 0;
              }

              v14 = &unk_27854;
              goto LABEL_3920;
            }

            if ((a4 - 12425) <= 4)
            {
              v14 = &unk_276D4;
              goto LABEL_3920;
            }

            goto LABEL_2770;
          }

          if (a3 == 21191)
          {
            if (a4 != 12414)
            {
              return 0;
            }

            v14 = &unk_28104;
            goto LABEL_3920;
          }

          if (a3 == 21205)
          {
            if (a4 == 12367 || a4 == 12356)
            {
              v14 = &unk_27C9C;
              goto LABEL_3920;
            }

            result = 0;
            if ((a4 - 12372) < 0xFFFFFFF7 || (a4 & 1) == 0)
            {
              return result;
            }

            v11 = &unk_27C9C;
            goto LABEL_3825;
          }

          if (a3 != 21209)
          {
            return result;
          }
        }

        else
        {
          if (a3 <= 21160)
          {
            if (a3 != 21106)
            {
              if (a3 == 21109)
              {
                goto LABEL_690;
              }

              if (a3 != 21152)
              {
                return result;
              }

              goto LABEL_1722;
            }

            if ((a4 - 12425) < 5)
            {
LABEL_2600:
              v14 = &unk_26BAC;
              goto LABEL_3920;
            }

            v85 = 12387;
LABEL_2599:
            if (a4 != v85)
            {
              return 0;
            }

            goto LABEL_2600;
          }

          if (a3 == 21161)
          {
            result = 0;
            if (a4 - 12372) >= 0xFFFFFFF7 && (a4)
            {
              if (a5 == 25163)
              {
                v14 = &unk_276A8;
              }

              else
              {
                v14 = &unk_276B8;
              }

              goto LABEL_3920;
            }

            return result;
          }

          if (a3 != 21162)
          {
            if (a3 != 21172)
            {
              return result;
            }

            v40 = a4 - 87;
            if ((a4 - 12375) > 0x38)
            {
              goto LABEL_3839;
            }

            if (((1 << v40) & 0x7C000000000001) != 0)
            {
              v14 = &unk_28248;
              goto LABEL_3920;
            }

            if (((1 << v40) & 0x100000000001000) == 0)
            {
LABEL_3839:
              if ((a4 - 12356) >= 7)
              {
                return 0;
              }
            }

            v14 = &unk_28234;
            goto LABEL_3920;
          }
        }

        if (a4 != 12417 && a4 != 12414)
        {
          return 0;
        }

        v14 = &unk_26F34;
        goto LABEL_3920;
      }

      if (a3 <= 21915)
      {
        if (a3 <= 21511)
        {
          if (a3 <= 21426)
          {
            if (a3 <= 21328)
            {
              if (a3 > 21252)
              {
                switch(a3)
                {
                  case 21253:
                    if ((a4 - 12414) >= 5 && a4 != 12435)
                    {
                      return 0;
                    }

                    v14 = &unk_277E0;
                    break;
                  case 21270:
                    if (a4 != 12369 && a4 != 12363)
                    {
                      return 0;
                    }

                    v14 = &unk_26B0C;
                    break;
                  case 21322:
                    if (a4 != 12400)
                    {
                      return 0;
                    }

                    v14 = &unk_27E00;
                    break;
                  default:
                    return result;
                }

                goto LABEL_3920;
              }

              if (a3 != 21220)
              {
                if (a3 == 21223)
                {
                  goto LABEL_1661;
                }

                if (a3 != 21250)
                {
                  return result;
                }

                if ((a4 - 12356) >= 7 && a4 != 12431)
                {
                  v13 = 12387;
                  goto LABEL_3413;
                }

LABEL_3414:
                v14 = &unk_275F0;
                goto LABEL_3920;
              }

              if (a4 == 12417 || a4 == 12414)
              {
                v14 = &unk_26F34;
                goto LABEL_3920;
              }

              if (a4 != 12375)
              {
                return 0;
              }

LABEL_3214:
              v14 = &unk_26ED4;
              goto LABEL_3920;
            }

            if (a3 > 21360)
            {
              if (a3 == 21361)
              {
                if (a4 == 12394)
                {
                  v14 = &unk_26E3C;
                  goto LABEL_3920;
                }

                if (a4 != 12358)
                {
                  return 0;
                }

                v14 = &unk_26C30;
                goto LABEL_3920;
              }

              if (a3 == 21363)
              {
                if (a4 != 12385)
                {
                  return 0;
                }

                v14 = &unk_27A18;
                goto LABEL_3920;
              }

              if (a3 != 21421)
              {
                return result;
              }

              if ((a4 - 12356) <= 0x1F && (((1 << (a4 - 68)) & 0x8000007B) != 0 || a4 == 12358) || a4 == 12431)
              {
                v14 = &unk_26888;
                goto LABEL_3920;
              }

              if ((a4 - 12363) > 8)
              {
                return 0;
              }

LABEL_2032:
              v14 = &unk_2676C;
              goto LABEL_3920;
            }

            if (a3 == 21329)
            {
              goto LABEL_1734;
            }

            if (a3 != 21344)
            {
              if (a3 != 21360)
              {
                return result;
              }

              result = 0;
              if ((a4 - 12382) < 0xFFFFFFF7 || (a4 & 1) == 0)
              {
                return result;
              }

              v14 = &unk_269C8;
              goto LABEL_3920;
            }

            result = 0;
            if (a4 <= 12386)
            {
              if ((a4 - 12356) >= 7)
              {
                return result;
              }

              goto LABEL_1984;
            }

            if (a4 > 12424)
            {
              if (a4 != 12425 && a4 != 12431)
              {
                return result;
              }
            }

            else if (a4 != 12387)
            {
              if (a4 != 12417)
              {
                return result;
              }

              goto LABEL_3343;
            }

LABEL_1984:
            v14 = &unk_278D0;
            goto LABEL_3920;
          }

          if (a3 <= 21461)
          {
            if (a3 <= 21449)
            {
              if (a3 == 21427)
              {
                result = 0;
                if (a4 <= 12387)
                {
                  if (a4 == 12363)
                  {
                    v14 = &unk_271BC;
                  }

                  else
                  {
                    if (a4 != 12375)
                    {
                      return result;
                    }

                    v14 = &unk_271D0;
                  }

                  goto LABEL_3920;
                }

                if (a4 == 12388 || a4 == 12417)
                {
                  v14 = &unk_271E0;
                  goto LABEL_3920;
                }

                return result;
              }

              if (a3 != 21435)
              {
                if (a3 != 21442)
                {
                  return result;
                }

                if ((a4 - 12425) >= 5 && a4 != 12387)
                {
                  if ((a4 & 0xFFFFFFFD) == 0x3058)
                  {
                    v14 = &unk_27458;
                    goto LABEL_3920;
                  }

                  return 0;
                }

                v14 = &unk_2744C;
                goto LABEL_3920;
              }

              if ((a4 - 12425) >= 5 && a4 != 12387)
              {
                return 0;
              }

              if (a5 == 12365)
              {
                v14 = &unk_26F04;
                goto LABEL_3920;
              }

              goto LABEL_1958;
            }

            if (a3 == 21450)
            {
              result = 0;
              if ((a4 - 12400) > 0x23 || ((1 << (a4 - 112)) & 0x800001249) == 0)
              {
                return result;
              }

              wcscpy(a2, dword_26A64);
              v70 = 12412;
LABEL_2686:
              if (a4 == v70)
              {
                return 2;
              }

              else
              {
                return 1;
              }
            }

            if (a3 == 21453)
            {
              if (a4 == 12375 || a4 == 12377)
              {
                v14 = &unk_27E0C;
                goto LABEL_3920;
              }

              v66 = 12376;
              goto LABEL_3129;
            }

            v39 = 21454;
            goto LABEL_1237;
          }

          if (a3 <= 21480)
          {
            if (a3 != 21462)
            {
              if (a3 != 21463)
              {
                if (a3 != 21476)
                {
                  return result;
                }

                if ((a4 - 12363) <= 8)
                {
                  if ((a4 & 1) == 0)
                  {
                    return 0;
                  }

                  goto LABEL_3105;
                }

                v81 = 12356;
LABEL_3104:
                if (a4 != v81)
                {
                  return 0;
                }

LABEL_3105:
                v14 = &unk_27214;
                goto LABEL_3920;
              }

LABEL_3337:
              v64 = 12369;
LABEL_3338:
              if (a4 != v64)
              {
                return 0;
              }

              goto LABEL_3339;
            }

LABEL_1447:
            if ((a4 - 12425) < 5)
            {
              goto LABEL_2420;
            }

            v47 = 12387;
            goto LABEL_2419;
          }

          if (a3 == 21481)
          {
            if ((a4 - 12363) <= 8)
            {
              if ((a4 & 1) == 0)
              {
                return 0;
              }

              goto LABEL_3240;
            }

            v52 = 12356;
            goto LABEL_3239;
          }

          if (a3 == 21483)
          {
            result = 0;
            if ((a4 - 12400) > 0x23 || ((1 << (a4 - 112)) & 0x800001249) == 0)
            {
              return result;
            }

            v11 = &unk_26FA0;
            goto LABEL_3825;
          }

          if (a3 != 21494)
          {
            return result;
          }

          if ((a4 - 12356) < 7 || a4 == 12431)
          {
LABEL_2673:
            v14 = &unk_26870;
            goto LABEL_3920;
          }

          v46 = 12387;
LABEL_2672:
          if (a4 != v46)
          {
            return 0;
          }

          goto LABEL_2673;
        }

        if (a3 <= 21627)
        {
          if (a3 <= 21559)
          {
            if (a3 <= 21519)
            {
              if (a3 != 21512)
              {
                if (a3 != 21514)
                {
                  if (a3 != 21516)
                  {
                    return result;
                  }

                  if (a4 != 12376)
                  {
                    return 0;
                  }

                  v14 = &unk_27CAC;
                  goto LABEL_3920;
                }

LABEL_1736:
                if ((a4 - 12425) >= 5 && a4 != 12387)
                {
                  return 0;
                }

                goto LABEL_2841;
              }

              if (a4 - 12382) >= 0xFFFFFFF7 && (a4)
              {
                v14 = &unk_2687C;
                goto LABEL_3920;
              }

              if ((a4 - 12356) <= 6)
              {
                goto LABEL_1677;
              }

              if (a4 != 12431 && a4 != 12387)
              {
                return 0;
              }

              goto LABEL_790;
            }

            if (a3 != 21520)
            {
              if (a3 == 21521)
              {
                if (a4 != 12363)
                {
                  if ((a4 - 12363) > 8)
                  {
                    if (a4 != 12356)
                    {
                      return 0;
                    }
                  }

                  else if ((a4 & 1) == 0)
                  {
                    return 0;
                  }

                  v14 = &unk_26840;
                  goto LABEL_3920;
                }

                v11 = &unk_26840;
                goto LABEL_3825;
              }

              if (a3 != 21547)
              {
                return result;
              }

              if ((a4 - 12414) >= 5)
              {
                v37 = 12435;
                goto LABEL_2317;
              }

LABEL_2318:
              v14 = &unk_26DEC;
              goto LABEL_3920;
            }

LABEL_1767:
            if ((a4 - 12425) >= 5 && a4 != 12387)
            {
              return 0;
            }

            v14 = &unk_26BD8;
            goto LABEL_3920;
          }

          if (a3 <= 21584)
          {
            if (a3 != 21560)
            {
              if (a3 != 21561)
              {
                if (a3 != 21574)
                {
                  return result;
                }

                if ((a4 - 12425) > 4)
                {
                  return 0;
                }

                goto LABEL_708;
              }

              goto LABEL_1745;
            }

            if ((a4 - 12356) <= 0x1F)
            {
              v87 = 1 << (a4 - 68);
              if ((v87 & 0x8000007F) != 0)
              {
LABEL_2593:
                v14 = &unk_26B98;
                goto LABEL_3920;
              }

              if ((v87 & 0x2880) != 0)
              {
                goto LABEL_3698;
              }
            }

            if (a4 != 12431)
            {
              return 0;
            }

            goto LABEL_2593;
          }

          if (a3 == 21585)
          {
LABEL_1732:
            if ((a4 - 12414) >= 5 && a4 != 12435)
            {
              return 0;
            }

            v14 = &unk_26A00;
            goto LABEL_3920;
          }

          if (a3 != 21608)
          {
            if (a3 != 21610)
            {
              return result;
            }

            if ((a4 - 12356) >= 7 && a4 != 12431 && a4 != 12387)
            {
              return 0;
            }

            v14 = &unk_275D8;
            goto LABEL_3920;
          }

LABEL_1672:
          if (((a4 - 12382) < 0xFFFFFFF7 || (a4 & 1) == 0) && (a4 - 12425) >= 5 && a4 != 12387)
          {
            return 0;
          }

          v14 = &unk_26BFC;
          goto LABEL_3920;
        }

        if (a3 <= 21692)
        {
          if (a3 <= 21645)
          {
            if (a3 == 21628)
            {
              result = 0;
              if ((a4 - 12400) <= 0x23 && ((1 << (a4 - 112)) & 0x800001249) != 0)
              {
                v14 = &unk_269EC;
                goto LABEL_3920;
              }

              return result;
            }

            if (a3 != 21629)
            {
              if (a3 == 21644)
              {
                result = 0;
                if ((a4 - 12414) <= 0x15)
                {
                  if (((1 << (a4 - 126)) & 0x20005F) != 0)
                  {
                    v14 = &unk_2827C;
                  }

                  else
                  {
                    if (a4 != 12425)
                    {
                      return result;
                    }

                    v14 = &unk_2828C;
                  }

                  goto LABEL_3920;
                }
              }

              return result;
            }

            if ((a4 & 0xFFFFFFFD) != 0x3058)
            {
              return 0;
            }

            v14 = &unk_280A4;
            goto LABEL_3920;
          }

          if (a3 == 21646)
          {
            if (a4 != 12417)
            {
              return 0;
            }

            v14 = &unk_28318;
            goto LABEL_3920;
          }

          if (a3 != 21669)
          {
            if (a3 != 21682)
            {
              return result;
            }

            if ((a4 - 12363) <= 8)
            {
              if ((a4 & 1) == 0)
              {
                return 0;
              }

              goto LABEL_3118;
            }

            v67 = 12356;
            goto LABEL_3117;
          }

LABEL_1722:
          if (a4 != 12360)
          {
            return 0;
          }

          v14 = &unk_26B40;
          goto LABEL_3920;
        }

        if (a3 <= 21808)
        {
          if (a3 == 21693)
          {
            if (a4 != 12406)
            {
              return 0;
            }

            v14 = &unk_269D4;
            goto LABEL_3920;
          }

          if (a3 != 21696)
          {
            v12 = 21764;
            goto LABEL_807;
          }

          if (a4 == 12428)
          {
            v14 = &unk_2687C;
            goto LABEL_3920;
          }

          v46 = 12375;
          goto LABEL_2672;
        }

        if (a3 != 21809)
        {
          if (a3 != 21839)
          {
            if (a3 != 21914)
            {
              return result;
            }

            if (a4 != 12356 && (a4 - 12363) > 8)
            {
              return 0;
            }

            v14 = &unk_26D3C;
            goto LABEL_3920;
          }

          if ((a4 - 12356) >= 7 && a4 != 12431)
          {
            v58 = 12387;
LABEL_2501:
            if (a4 != v58)
            {
              return 0;
            }
          }

LABEL_2981:
          v14 = &unk_26BD8;
          goto LABEL_3920;
        }

        if ((a4 - 12356) <= 0x1F)
        {
          if (((1 << (a4 - 68)) & 0x8000006F) != 0)
          {
LABEL_2767:
            v14 = &unk_26B58;
            goto LABEL_3920;
          }

          if (a4 == 12360)
          {
            v14 = &unk_276E0;
            goto LABEL_3920;
          }
        }

        if (a4 != 12431)
        {
          return 0;
        }

        goto LABEL_2767;
      }

      if (a3 <= 22809)
      {
        if (a3 <= 22265)
        {
          if (a3 > 22131)
          {
            if (a3 > 22255)
            {
              if (a3 != 22256)
              {
                if (a3 == 22258)
                {
                  if (((a4 - 12387) > 0x30 || ((1 << (a4 - 99)) & 0x11000F8000001) == 0) && (a4 - 12356) >= 7)
                  {
                    return 0;
                  }

                  v14 = &unk_268D8;
                  goto LABEL_3920;
                }

                v26 = 22259;
                goto LABEL_1320;
              }

              if ((a4 - 12425) >= 5)
              {
                v94 = 12387;
                goto LABEL_2945;
              }

LABEL_2946:
              v14 = &unk_27380;
              goto LABEL_3920;
            }

            if (a3 == 22132)
            {
LABEL_1745:
              if ((a4 - 12363) <= 8)
              {
                if ((a4 & 1) == 0)
                {
                  return 0;
                }

                goto LABEL_2724;
              }

              if (a4 == 12387)
              {
LABEL_2724:
                v14 = &unk_26820;
                goto LABEL_3920;
              }

              v80 = 12356;
              goto LABEL_2723;
            }

            if (a3 != 22238)
            {
              if (a3 != 22240)
              {
                return result;
              }

              if ((a4 - 12415) <= 1)
              {
                v14 = &unk_269E0;
                goto LABEL_3920;
              }

              if ((a4 - 12425) < 5)
              {
LABEL_3102:
                v14 = &unk_269EC;
                goto LABEL_3920;
              }

              v55 = 12387;
LABEL_1718:
              if (a4 != v55)
              {
                return 0;
              }

              goto LABEL_3102;
            }

            goto LABEL_1672;
          }

          if (a3 <= 21956)
          {
            switch(a3)
            {
              case 21916:
                result = 0;
                if ((a4 - 12400) <= 0x23 && ((1 << (a4 - 112)) & 0x800001249) != 0)
                {
                  v14 = &unk_26E2C;
                  goto LABEL_3920;
                }

                return result;
              case 21931:
                if (a4 != 12377 && a4 != 12375)
                {
                  return 0;
                }

                v14 = &unk_26EA0;
                break;
              case 21942:
                if ((a4 - 12414) >= 5 && a4 != 12435)
                {
                  return 0;
                }

                v14 = &unk_26A70;
                break;
              default:
                return result;
            }

            goto LABEL_3920;
          }

          if (a3 != 21957)
          {
            if (a3 == 22022)
            {
              if ((a4 - 12363) > 8)
              {
                if (a4 != 12356)
                {
                  return 0;
                }
              }

              else if ((a4 & 1) == 0)
              {
                return 0;
              }

              v14 = &unk_27B08;
              goto LABEL_3920;
            }

            if (a3 != 22107)
            {
              return result;
            }

            if ((a4 - 12414) >= 5)
            {
              v32 = 12435;
              goto LABEL_2531;
            }

            goto LABEL_2532;
          }

          if ((a4 - 12364) <= 8)
          {
            if (a4)
            {
              return 0;
            }

            goto LABEL_2656;
          }

LABEL_2655:
          if (a4 != 12356)
          {
            return 0;
          }

          goto LABEL_2656;
        }

        if (a3 <= 22614)
        {
          if (a3 > 22518)
          {
            if (a3 != 22519)
            {
              if (a3 != 22570)
              {
                if (a3 != 22577)
                {
                  return result;
                }

                if ((a4 & 0xFFFFFFFD) != 0x3058)
                {
                  if (a4 == 12431 || a4 == 12356)
                  {
                    v14 = &unk_27FD4;
                    goto LABEL_3920;
                  }

                  return 0;
                }

                goto LABEL_1227;
              }

              goto LABEL_1669;
            }

            goto LABEL_1447;
          }

          if (a3 == 22266)
          {
            result = 0;
            if ((a4 - 12356) > 0x3D || ((1 << (a4 - 68)) & 0x2400000000020081) == 0)
            {
              return result;
            }

            goto LABEL_2554;
          }

          if (a3 != 22312)
          {
            if (a3 != 22475)
            {
              return result;
            }

            if (a4 == 12417 || a4 == 12414)
            {
              v14 = &unk_27484;
              goto LABEL_3920;
            }

            v21 = 12400;
            goto LABEL_2775;
          }

LABEL_1676:
          if ((a4 - 12425) >= 5 && a4 != 12387)
          {
            return 0;
          }

          goto LABEL_1677;
        }

        if (a3 <= 22769)
        {
          if (a3 != 22615)
          {
            if (a3 != 22679)
            {
              if (a3 != 22730)
              {
                return result;
              }

              if ((a4 - 12373) > 8)
              {
                if (a4 != 12428)
                {
                  return 0;
                }
              }

              else if ((a4 & 1) == 0)
              {
                return 0;
              }

              v14 = &unk_26C58;
              goto LABEL_3920;
            }

            if (a4 != 12420 && a4 != 12360)
            {
              result = 0;
              if (a4 - 12382) >= 0xFFFFFFF7 && (a4)
              {
                v14 = &unk_26D28;
                goto LABEL_3920;
              }

              return result;
            }

            goto LABEL_2724;
          }

          if ((a4 - 12425) < 5)
          {
LABEL_3223:
            v14 = &unk_267F0;
            goto LABEL_3920;
          }

          v89 = 12387;
LABEL_3222:
          if (a4 != v89)
          {
            return 0;
          }

          goto LABEL_3223;
        }

        if (a3 == 22770)
        {
          if ((a4 - 12425) >= 5 && a4 != 12387)
          {
            return 0;
          }

          v14 = &unk_27484;
          goto LABEL_3920;
        }

        if (a3 != 22793)
        {
          if (a3 != 22806)
          {
            return result;
          }

          if ((a4 - 12373) > 8)
          {
            if (a4 != 12428)
            {
              return 0;
            }
          }

          else if ((a4 & 1) == 0)
          {
            return 0;
          }

          v14 = &unk_26C80;
          goto LABEL_3920;
        }

        result = 0;
        if (a4 <= 12424)
        {
          if (a4 != 12360)
          {
            if (a4 != 12387)
            {
              return result;
            }

            goto LABEL_2149;
          }
        }

        else
        {
          if ((a4 - 12425) < 5)
          {
LABEL_2149:
            v14 = &unk_26DAC;
            goto LABEL_3920;
          }

          if (a4 != 12431)
          {
            return result;
          }
        }

LABEL_2656:
        v14 = &unk_26B70;
        goto LABEL_3920;
      }

      if (a3 <= 23232)
      {
        if (a3 > 22913)
        {
          if (a3 <= 22986)
          {
            if (a3 == 22914)
            {
              v30 = 12369;
              goto LABEL_2830;
            }

            if (a3 != 22956)
            {
              if (a3 != 22985)
              {
                return result;
              }

              if (a5 != 12362)
              {
                return 0;
              }

              v14 = &unk_274B4;
              goto LABEL_3920;
            }

LABEL_907:
            if ((a4 - 12363) > 8)
            {
              if (a4 != 12356)
              {
                return 0;
              }
            }

            else if ((a4 & 1) == 0)
            {
              return 0;
            }

            v14 = &unk_27190;
            goto LABEL_3920;
          }

          if (a3 != 22987)
          {
            if (a3 != 22996)
            {
              if (a3 != 23041)
              {
                return result;
              }

              result = 0;
              if ((a4 - 12382) < 0xFFFFFFF7 || (a4 & 1) == 0)
              {
                return result;
              }

              v14 = &unk_26974;
              goto LABEL_3920;
            }

            if (a4 == 12397)
            {
              v14 = &unk_268E4;
              goto LABEL_3920;
            }

            result = 0;
            if ((a4 - 12382) < 0xFFFFFFF7 || (a4 & 1) == 0)
            {
              return result;
            }

            goto LABEL_3752;
          }

          goto LABEL_1942;
        }

        if (a3 > 22862)
        {
          if (a3 != 22863)
          {
            if (a3 == 22890)
            {
              if ((a4 - 12356) >= 7 && a4 != 12431 && a4 != 12387)
              {
                return 0;
              }

              v14 = &unk_27AC4;
              goto LABEL_3920;
            }

            if (a3 != 22909)
            {
              return result;
            }

            if ((a4 - 12414) < 5 || a4 == 12435)
            {
              v14 = &unk_272A0;
              goto LABEL_3920;
            }

            if ((a4 - 12363) > 8)
            {
LABEL_1879:
              v38 = 12356;
              goto LABEL_2818;
            }

            if ((a4 & 1) == 0)
            {
              return 0;
            }

LABEL_2819:
            v14 = &unk_26B98;
            goto LABEL_3920;
          }

          v46 = 12391;
          goto LABEL_2672;
        }

        switch(a3)
        {
          case 22810:
            if ((a4 - 12363) <= 8)
            {
              if ((a4 & 1) == 0)
              {
                return 0;
              }

              goto LABEL_2539;
            }

            break;
          case 22823:
            if (a4 == 12365)
            {
LABEL_2539:
              v14 = &unk_27034;
              goto LABEL_3920;
            }

            break;
          case 22833:
            result = 0;
            if (a4 > 12376)
            {
              if (a4 <= 12386)
              {
                if (a4 == 12377)
                {
                  v14 = &unk_27578;
                  goto LABEL_3920;
                }

                if (a4 != 12379)
                {
                  return result;
                }

                goto LABEL_2291;
              }

              if (a4 != 12387 && a4 != 12431)
              {
                return result;
              }
            }

            else if ((a4 - 12356) >= 7)
            {
              return result;
            }

            v14 = &unk_27584;
            goto LABEL_3920;
          default:
            return result;
        }

        if (a4 != 12356)
        {
          return 0;
        }

        goto LABEL_2539;
      }

      if (a3 <= 23449)
      {
        if (a3 <= 23383)
        {
          switch(a3)
          {
            case 23233:
              if ((a4 - 12364) > 8)
              {
                if (a4 != 12356)
                {
                  return 0;
                }
              }

              else if (a4)
              {
                return 0;
              }

              v14 = &unk_26B34;
              goto LABEL_3920;
            case 23244:
              if ((a4 - 12356) >= 7 && a4 != 12431 && a4 != 12387)
              {
                return 0;
              }

              v14 = &unk_27168;
              break;
            case 23381:
              if ((a4 - 12414) >= 5 && a4 != 12435)
              {
                return 0;
              }

              v14 = &unk_26864;
              break;
            default:
              return result;
          }

          goto LABEL_3920;
        }

        if (a3 == 23384)
        {
          if (a4 != 12376)
          {
            return 0;
          }

          v14 = &unk_27A50;
          goto LABEL_3920;
        }

        if (a3 == 23398)
        {
          result = 0;
          if ((a4 - 12400) <= 0x23 && ((1 << (a4 - 112)) & 0x800001249) != 0)
          {
            v14 = &unk_26CCC;
            goto LABEL_3920;
          }

          return result;
        }

        v33 = 23432;
        goto LABEL_1273;
      }

      if (a3 > 23480)
      {
        if (a3 == 23481)
        {
          v21 = 12428;
          goto LABEL_2775;
        }

        if (a3 != 23492)
        {
          if (a3 != 23494)
          {
            return result;
          }

          if (a4 != 12363)
          {
            return 0;
          }

          v14 = &unk_2808C;
          goto LABEL_3920;
        }

        result = 0;
        if ((a4 - 12379) > 0x32 || ((1 << (a4 - 91)) & 0x7C00000000101) == 0)
        {
          return result;
        }

        goto LABEL_2559;
      }

      if (a3 == 23450)
      {
        if (a4 != 12417 && a4 != 12414)
        {
          return 0;
        }

        v14 = &unk_27BF0;
        goto LABEL_3920;
      }

      if (a3 == 23451)
      {
        v28 = 12390;
        goto LABEL_2031;
      }

      if (a3 != 23455)
      {
        return result;
      }

      result = 0;
      if (a4 > 12424)
      {
        if ((a4 - 12425) >= 5)
        {
          return result;
        }

        goto LABEL_831;
      }

      if (a4 != 12363)
      {
        if (a4 == 12387)
        {
LABEL_831:
          v14 = &unk_275B4;
          goto LABEL_3920;
        }

        if (a4 != 12398)
        {
          return result;
        }
      }

      v14 = &unk_275A4;
      goto LABEL_3920;
    }

    if (a3 <= 25306)
    {
      if (a3 <= 24539)
      {
        if (a3 <= 24230)
        {
          if (a3 <= 23814)
          {
            if (a3 > 23565)
            {
              if (a3 <= 23612)
              {
                switch(a3)
                {
                  case 23566:
                    if ((a4 - 12363) > 8)
                    {
                      if (a4 != 12356)
                      {
                        return 0;
                      }
                    }

                    else if ((a4 & 1) == 0)
                    {
                      return 0;
                    }

                    v14 = &unk_27CB8;
                    goto LABEL_3920;
                  case 23567:
                    if (a4 != 12373)
                    {
                      return 0;
                    }

                    v14 = &unk_276EC;
                    break;
                  case 23569:
                    if (a4 == 12394)
                    {
                      v14 = &unk_26EE0;
                      goto LABEL_3920;
                    }

                    if (a4 != 12375)
                    {
                      return 0;
                    }

                    v14 = &unk_27174;
                    break;
                  default:
                    return result;
                }

                goto LABEL_3920;
              }

              if (a3 != 23613)
              {
                if (a3 != 23624)
                {
                  if (a3 != 23626)
                  {
                    return result;
                  }

                  if ((a4 - 12363) > 8)
                  {
                    if (a4 != 12356)
                    {
                      return 0;
                    }
                  }

                  else if ((a4 & 1) == 0)
                  {
                    return 0;
                  }

                  v14 = &unk_27CCC;
                  goto LABEL_3920;
                }

                if ((a4 - 12414) >= 5 && a4 != 12435)
                {
                  return 0;
                }

                v14 = &unk_27090;
                goto LABEL_3920;
              }

              if ((a4 & 0xFFFFFFFD) == 0x304D)
              {
                v11 = &unk_267E0;
              }

              else
              {
                result = 0;
                if ((a4 - 12382) < 0xFFFFFFF7 || (a4 & 1) == 0)
                {
                  return result;
                }

                v11 = &unk_2740C;
              }

              goto LABEL_3825;
            }

            if (a3 <= 23518)
            {
              if (a3 == 23500)
              {
                if ((a4 - 12414) < 5)
                {
                  goto LABEL_2981;
                }

                v58 = 12435;
                goto LABEL_2501;
              }

              if (a3 == 23515)
              {
                if ((a4 - 12364) > 8)
                {
                  if (a4 != 12356)
                  {
                    return 0;
                  }
                }

                else if (a4)
                {
                  return 0;
                }

                v14 = &unk_26D48;
                goto LABEL_3920;
              }

              if (a3 != 23517)
              {
                return result;
              }

              if (a4 != 12363)
              {
                return 0;
              }

              v11 = &unk_26800;
              goto LABEL_3825;
            }

            if (a3 != 23519)
            {
              if (a3 != 23556)
              {
                if (a3 != 23563)
                {
                  return result;
                }

                goto LABEL_1118;
              }

              if (a4 - 12382) >= 0xFFFFFFF7 && (a4)
              {
                v14 = &unk_26AF4;
                goto LABEL_3920;
              }

              result = 0;
              v97 = a4 - 95;
              if ((a4 - 12383) > 0x2E)
              {
                return result;
              }

              if (((1 << v97) & 0x7C0000000081) != 0)
              {
LABEL_3047:
                v14 = &unk_268B4;
                goto LABEL_3920;
              }

              if (((1 << v97) & 0x220) == 0)
              {
                return result;
              }

              goto LABEL_3339;
            }

LABEL_1504:
            if (((a4 - 12382) < 0xFFFFFFF7 || (a4 & 1) == 0) && (a4 - 12425) >= 5 && a4 != 12387)
            {
              return 0;
            }

            v14 = &unk_26984;
            goto LABEL_3920;
          }

          if (a3 <= 24110)
          {
            if (a3 <= 24038)
            {
              switch(a3)
              {
                case 23815:
                  if (a4 != 12417)
                  {
                    return 0;
                  }

                  v14 = &unk_27844;
                  break;
                case 23849:
                  if ((a4 - 12373) > 8)
                  {
                    if (a4 != 12428)
                    {
                      return 0;
                    }
                  }

                  else if ((a4 & 1) == 0)
                  {
                    return 0;
                  }

                  v14 = &unk_27FEC;
                  goto LABEL_3920;
                case 23884:
                  if (a4 != 12417 && a4 != 12414)
                  {
                    return 0;
                  }

                  v14 = &unk_26DA4;
                  break;
                default:
                  return result;
              }

              goto LABEL_3920;
            }

            if (a3 == 24039)
            {
              if (a4 != 12415)
              {
                return 0;
              }

              v14 = &unk_272AC;
              goto LABEL_3920;
            }

            if (a3 != 24046)
            {
              if (a3 != 24059)
              {
                return result;
              }

              goto LABEL_1753;
            }

LABEL_1691:
            result = 0;
            if ((a4 - 12382) < 0xFFFFFFF7 || (a4 & 1) == 0)
            {
              return result;
            }

            if (a5 != 30446)
            {
LABEL_3118:
              v14 = &unk_26AF4;
              goto LABEL_3920;
            }

LABEL_3696:
            v14 = &unk_26F04;
            goto LABEL_3920;
          }

          if (a3 > 24178)
          {
            switch(a3)
            {
              case 24179:
                if (a4 != 12425)
                {
                  return 0;
                }

                v14 = &unk_27F18;
                break;
              case 24184:
                if (a4 == 12379)
                {
                  v14 = &unk_272C8;
                  goto LABEL_3920;
                }

                if (a4 != 12356)
                {
                  return 0;
                }

                v14 = &unk_272B8;
                break;
              case 24195:
                result = 0;
                if ((a4 - 12356) > 0x3D || ((1 << (a4 - 68)) & 0x2400000000024901) == 0)
                {
                  return result;
                }

                v14 = &unk_27294;
                break;
              default:
                return result;
            }

            goto LABEL_3920;
          }

          if (a3 == 24111)
          {
            v88 = 12403;
LABEL_3144:
            if (a4 != v88)
            {
              return 0;
            }

            goto LABEL_3145;
          }

          if (a3 == 24112)
          {
            goto LABEL_1042;
          }

          if (a3 != 24178)
          {
            return result;
          }

          if (a4 - 12382) >= 0xFFFFFFF7 && (a4)
          {
            v14 = &unk_268AC;
            goto LABEL_3920;
          }

          v98 = 12363;
          goto LABEL_3079;
        }

        if (a3 <= 24426)
        {
          if (a3 <= 24340)
          {
            if (a3 <= 24314)
            {
              if (a3 != 24231)
              {
                if (a3 != 24310)
                {
                  if (a3 != 24314)
                  {
                    return result;
                  }

                  if ((a4 - 12383) > 9)
                  {
                    return 0;
                  }

                  goto LABEL_3022;
                }

                goto LABEL_1711;
              }

              result = 0;
              v84 = a4 - 87;
              if ((a4 - 12375) > 0x36)
              {
                return result;
              }

              if (((1 << v84) & 0x7C000000001000) != 0)
              {
                v14 = &unk_2739C;
                goto LABEL_3920;
              }

              if (((1 << v84) & 5) == 0)
              {
                return result;
              }

              goto LABEL_3696;
            }

            if (a3 != 24315)
            {
              if (a3 == 24321)
              {
                if (a4 != 12360)
                {
                  return 0;
                }

                v14 = &unk_27F68;
              }

              else
              {
                if (a3 != 24324)
                {
                  return result;
                }

                result = 0;
                if ((a4 - 12400) > 0x23 || ((1 << (a4 - 112)) & 0x800001249) == 0)
                {
                  return result;
                }

                wcscpy(a2, dword_2813C);
                v14 = &unk_28258;
              }

              goto LABEL_3920;
            }

            goto LABEL_1672;
          }

          if (a3 <= 24374)
          {
            if (a3 == 24341)
            {
              goto LABEL_1410;
            }

            if (a3 == 24369)
            {
              if ((a4 - 12356) <= 0xF || (result = 0, v63 = a4 - 85, (a4 - 12373) <= 0x38) && (((1 << v63) & 0x1F0040000004101) != 0 || ((1 << v63) & 0x120000000000) != 0))
              {
                v14 = &unk_275C0;
                goto LABEL_3920;
              }

              return result;
            }

            if (a3 != 24373)
            {
              return result;
            }

            if ((a4 - 12425) >= 5 && a4 != 12387)
            {
              return 0;
            }

            if (a5 == 12435)
            {
              v14 = &unk_26B0C;
              goto LABEL_3920;
            }

            if (a5 == 12387)
            {
              v14 = &unk_27BB4;
              goto LABEL_3920;
            }

            goto LABEL_2551;
          }

          if (a3 == 24375)
          {
            if (a4 == 12356)
            {
              v95 = *(a6 + 8) - 12390;
              if (v95 <= 0x25 && ((1 << v95) & 0x2800000001) != 0)
              {
                v14 = &unk_26F68;
                goto LABEL_3920;
              }
            }

            else if ((a4 - 12356) >= 0x10)
            {
              result = 0;
              if ((a4 - 12373) > 0x2C || ((1 << (a4 - 85)) & 0x160000000111) == 0)
              {
                return result;
              }
            }

            if (a5 == 26681 || a5 == 21147)
            {
              v14 = &unk_26F74;
            }

            else
            {
              v14 = &unk_26F84;
            }

            goto LABEL_3920;
          }

          if (a3 != 24382)
          {
            if (a3 != 24403)
            {
              return result;
            }

            result = 0;
            v43 = a4 - 95;
            if ((a4 - 12383) > 0x2E)
            {
              return result;
            }

            if (((1 << v43) & 0x7C0000000010) != 0)
            {
              v14 = &unk_27B84;
              goto LABEL_3920;
            }

            if (((1 << v43) & 0x81) == 0)
            {
              return result;
            }

            goto LABEL_1677;
          }

          if ((a4 - 12414) <= 0x15 && ((1 << (a4 - 126)) & 0x20001F) != 0)
          {
            v14 = &unk_26C80;
            goto LABEL_3920;
          }

          if (a4 == 12369)
          {
            v14 = &unk_274A4;
            goto LABEL_3920;
          }

          if ((a4 - 12363) <= 8)
          {
            if ((a4 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_3080;
          }

          v98 = 12356;
LABEL_3079:
          if (a4 != v98)
          {
            return 0;
          }

LABEL_3080:
          v14 = &unk_26810;
          goto LABEL_3920;
        }

        if (a3 > 24466)
        {
          if (a3 > 24516)
          {
            switch(a3)
            {
              case 24517:
                if (a4 != 12378)
                {
                  return 0;
                }

                v14 = &unk_27E8C;
                break;
              case 24524:
                if (a4 >> 1 != 6207)
                {
                  return 0;
                }

                v14 = &unk_268B4;
                break;
              case 24536:
                if (a4 != 12428)
                {
                  return 0;
                }

                v14 = &unk_28058;
                break;
              default:
                return result;
            }

            goto LABEL_3920;
          }

          if (a3 == 24467)
          {
            if ((a4 - 12356) >= 7 && a4 != 12431 && a4 != 12387)
            {
              return 0;
            }

            v14 = &unk_2762C;
            goto LABEL_3920;
          }

          if (a3 != 24471)
          {
            if (a3 != 24481)
            {
              return result;
            }

            if (a4 > 12377)
            {
              return 0;
            }

            v14 = &unk_27254;
            goto LABEL_3920;
          }

          result = 0;
          if ((a4 - 12383) > 0x2E || ((1 << (a4 - 95)) & 0x7C0080002881) == 0)
          {
            return result;
          }

          goto LABEL_2314;
        }

        if (a3 > 24452)
        {
          if (a3 != 24453)
          {
            if (a3 == 24459)
            {
              result = 0;
              if (a4 - 12380) >= 0xFFFFFFFB && (a4)
              {
                v14 = &unk_281D8;
                goto LABEL_3920;
              }

              return result;
            }

            if (a3 != 24460)
            {
              return result;
            }

            if ((a4 - 12425) > 3)
            {
              if (a4 == 12429)
              {
                v14 = &unk_27248;
                goto LABEL_3920;
              }

              return 0;
            }

            v14 = &unk_2723C;
            goto LABEL_3920;
          }

          if ((a4 - 12383) > 9)
          {
            return 0;
          }

LABEL_2701:
          v11 = &unk_26D28;
          goto LABEL_3825;
        }

        if (a3 != 24427)
        {
          if (a3 != 24433)
          {
            if (a3 != 24448)
            {
              return result;
            }

            if ((a4 - 12363) > 8)
            {
              if (a4 != 12387)
              {
                return 0;
              }
            }

            else if ((a4 & 1) == 0)
            {
              return 0;
            }

            v14 = &unk_268B4;
            goto LABEL_3920;
          }

          goto LABEL_1729;
        }

LABEL_1751:
        if ((a4 - 12425) >= 5 && a4 != 12387)
        {
          return 0;
        }

        v14 = &unk_268AC;
        goto LABEL_3920;
      }

      if (a3 <= 24862)
      {
        if (a3 <= 24676)
        {
          if (a3 <= 24612)
          {
            if (a3 <= 24597)
            {
              if (a3 != 24540)
              {
                if (a3 == 24555)
                {
                  if ((a4 - 12363) > 8)
                  {
                    if (a4 != 12356)
                    {
                      return 0;
                    }
                  }

                  else if ((a4 & 1) == 0)
                  {
                    return 0;
                  }

                  v14 = &unk_26C08;
                  goto LABEL_3920;
                }

                if (a3 != 24594)
                {
                  return result;
                }

                if ((a4 - 12425) >= 5 && a4 != 12387)
                {
                  return 0;
                }

                goto LABEL_126;
              }

              if (a4 != 12360)
              {
                if ((a4 & 0xFFFFFFFD) == 0x3058)
                {
                  v14 = &unk_26AC4;
                  goto LABEL_3920;
                }

                return 0;
              }

LABEL_2514:
              v14 = &unk_26AB8;
              goto LABEL_3920;
            }

            if (a3 == 24598)
            {
              if (a4 == 12428)
              {
                v14 = &unk_26908;
                goto LABEL_3920;
              }

              v51 = 12376;
              goto LABEL_2650;
            }

            if (a3 != 24605)
            {
              if (a3 != 24608)
              {
                return result;
              }

              if ((a4 - 12425) >= 5 && a4 != 12387)
              {
                if (a4 == 12369)
                {
                  v14 = &unk_27A7C;
                  goto LABEL_3920;
                }

                return 0;
              }

              v14 = &unk_27A88;
              goto LABEL_3920;
            }

LABEL_1720:
            if ((a4 - 12356) >= 7 && a4 != 12431 && a4 != 12387)
            {
              return 0;
            }

            v14 = &unk_26858;
            goto LABEL_3920;
          }

          if (a3 <= 24622)
          {
            if (a3 != 24613)
            {
              if (a3 == 24616)
              {
                if ((a4 - 12414) >= 5 && a4 != 12435)
                {
                  return 0;
                }

                v14 = &unk_26A80;
              }

              else
              {
                if (a3 != 24618)
                {
                  return result;
                }

                if (a4 != 12375)
                {
                  return 0;
                }

                v14 = &unk_26C30;
              }

              goto LABEL_3920;
            }

            if ((a4 - 12364) > 8)
            {
              if (a4 == 12356)
              {
                goto LABEL_3214;
              }
            }

            else if ((a4 & 1) == 0)
            {
              goto LABEL_3214;
            }

            goto LABEL_3496;
          }

          if (a3 == 24623)
          {
            if (a4 != 12360)
            {
              return 0;
            }

            goto LABEL_2731;
          }

          if (a3 != 24651)
          {
            if (a3 != 24656)
            {
              return result;
            }

            if ((a4 - 12425) > 4 || a4 == 12426)
            {
              if (a4 != 12356 && (a4 - 12363) > 8)
              {
                return 0;
              }

              v11 = &unk_26C58;
            }

            else
            {
              v11 = &unk_26908;
            }

            goto LABEL_3825;
          }

          if (a4 != 12356)
          {
            return 0;
          }

LABEL_2111:
          v14 = &unk_2679C;
          goto LABEL_3920;
        }

        if (a3 > 24784)
        {
          if (a3 > 24824)
          {
            if (a3 != 24825)
            {
              if (a3 == 24858)
              {
                if (a4 != 12363)
                {
                  return 0;
                }

                v14 = &unk_27084;
              }

              else
              {
                if (a3 != 24859)
                {
                  return result;
                }

                if (a4 != 12362)
                {
                  result = 0;
                  if (a4 - 12382) >= 0xFFFFFFF7 && (a4)
                  {
                    v14 = &unk_26894;
                    goto LABEL_3920;
                  }

                  return result;
                }

                v14 = &unk_26888;
              }

              goto LABEL_3920;
            }

            goto LABEL_1410;
          }

          if (a3 == 24785)
          {
            if ((a4 - 12356) >= 7 && a4 != 12431 && a4 != 12387)
            {
              return 0;
            }

            v14 = &unk_28298;
            goto LABEL_3920;
          }

          if (a3 == 24808)
          {
            if ((a4 - 12363) > 8)
            {
              if (a4 == 12417)
              {
                v14 = &unk_27474;
                goto LABEL_3920;
              }

              if (a4 != 12356)
              {
                return 0;
              }
            }

            else if ((a4 & 1) == 0)
            {
              return 0;
            }

            v14 = &unk_27464;
            goto LABEL_3920;
          }

          if (a3 != 24819)
          {
            return result;
          }

          goto LABEL_1720;
        }

        if (a3 > 24744)
        {
          if (a3 == 24745)
          {
            if ((a4 - 12414) >= 5 && a4 != 12435)
            {
              return 0;
            }

            v14 = &unk_27D4C;
            goto LABEL_3920;
          }

          if (a3 != 24746)
          {
            if (a3 != 24773)
            {
              return result;
            }

            if (a4 != 12369)
            {
              return 0;
            }

            v14 = &unk_27778;
            goto LABEL_3920;
          }

          result = 0;
          if ((a4 - 12356) > 0x19)
          {
            return result;
          }

          if (((1 << (a4 - 68)) & 0x2222881) != 0)
          {
            v14 = &unk_268BC;
            goto LABEL_3920;
          }

          if (a4 != 12375)
          {
            return result;
          }

          goto LABEL_3806;
        }

        if (a3 == 24677)
        {
          if ((a4 & 0xFFFFFFFD) != 0x3058)
          {
            return 0;
          }

          goto LABEL_2551;
        }

        if (a3 == 24688)
        {
          if (a4 != 12418)
          {
            return 0;
          }

          v14 = &unk_26D18;
          goto LABEL_3920;
        }

        if (a3 != 24724)
        {
          return result;
        }

        if (a4 != 12420)
        {
          if (a4 == 12375)
          {
            v14 = &unk_26C24;
            goto LABEL_3920;
          }

          if (a4 != 12356)
          {
            return 0;
          }

          v14 = &unk_26C1C;
          goto LABEL_3920;
        }

LABEL_2541:
        v11 = &unk_26C1C;
        goto LABEL_3825;
      }

      if (a3 <= 25200)
      {
        if (a3 <= 25104)
        {
          if (a3 <= 24930)
          {
            switch(a3)
            {
              case 24863:
                if ((a4 & 0xFFFFFFFD) != 0x3058)
                {
                  return 0;
                }

                v14 = &unk_268A0;
                goto LABEL_3920;
              case 24910:
                if ((a4 - 12415) < 4 || a4 == 12435)
                {
                  v14 = &unk_26F40;
                  goto LABEL_3920;
                }

                if (a4 != 12414)
                {
                  return 0;
                }

                v11 = &unk_277E0;
                break;
              case 24917:
                if ((a4 - 12356) >= 7 && a4 != 12431 && a4 != 12387)
                {
                  return 0;
                }

                v11 = &unk_277EC;
                break;
              default:
                return result;
            }

            goto LABEL_3825;
          }

          switch(a3)
          {
            case 24931:
              if (a4 == 12425 || a4 == 12428)
              {
                goto LABEL_2959;
              }

              if (a4 != 12431)
              {
                return 0;
              }

              v14 = &unk_26D58;
              break;
            case 25040:
              if (a4 != 12363)
              {
                if ((a4 - 12365) <= 6)
                {
                  v14 = &unk_26C48;
                  goto LABEL_3920;
                }

                return 0;
              }

              v14 = &unk_26C3C;
              break;
            case 25104:
              if (((a4 - 12382) < 0xFFFFFFF7 || (a4 & 1) == 0) && (a4 - 12425) >= 5 && a4 != 12387)
              {
                return 0;
              }

              v14 = &unk_26900;
              break;
            default:
              return result;
          }

          goto LABEL_3920;
        }

        if (a3 <= 25146)
        {
          if (a3 == 25105)
          {
            v85 = 12364;
            goto LABEL_2599;
          }

          if (a3 != 25110)
          {
            if (a3 != 25126)
            {
              return result;
            }

            result = 0;
            if (a4 > 12366)
            {
              if (a4 == 12367)
              {
                v14 = &unk_278F0;
                goto LABEL_3920;
              }

              if (a4 != 12431 && a4 != 12387)
              {
                return result;
              }
            }

            else if ((a4 - 12356) >= 7)
            {
              return result;
            }

            v14 = &unk_278E0;
            goto LABEL_3920;
          }

          goto LABEL_1676;
        }

        if (a3 == 25147)
        {
          result = 0;
          if (a4 - 12382) >= 0xFFFFFFF7 && (a4)
          {
            v14 = &unk_280F4;
            goto LABEL_3920;
          }

          return result;
        }

        if (a3 != 25171)
        {
          if (a3 != 25173)
          {
            return result;
          }

          if ((a4 - 12356) >= 7 && a4 != 12431 && a4 != 12387)
          {
            return 0;
          }

          if (a5 == 19981 || a5 == 21463 || (v103 = (a6 - 8), v104 = wcsncmp((a6 - 8), dword_27ED4, 2uLL), a5 == 36861) || !v104 || (v105 = wcsncmp(v103, dword_27EE0, 2uLL), a5 == 25171) || !v105 || !wcsncmp(v103, dword_27EEC, 2uLL))
          {
            v14 = &unk_27EF8;
          }

          else
          {
            v14 = &unk_26864;
          }

          goto LABEL_3920;
        }

        goto LABEL_1663;
      }

      if (a3 <= 25243)
      {
        if (a3 <= 25236)
        {
          if (a3 == 25201)
          {
            v86 = a4 - 68;
            if ((a4 - 12356) > 0x1F)
            {
              goto LABEL_3532;
            }

            if (((1 << v86) & 0x8000007B) == 0)
            {
              if (((1 << v86) & 0x2200) != 0)
              {
                goto LABEL_1484;
              }

              if (a4 != 12358)
              {
LABEL_3532:
                if (a4 != 12431)
                {
                  return 0;
                }
              }
            }

            v14 = &unk_268C8;
            goto LABEL_3920;
          }

          if (a3 != 25215)
          {
            if (a3 != 25233)
            {
              return result;
            }

            if (a4 != 12360)
            {
              return 0;
            }

            v14 = &unk_27540;
            goto LABEL_3920;
          }

          if ((a4 - 12425) < 5 || a4 == 12387)
          {
            v14 = &unk_276F8;
            goto LABEL_3920;
          }

          goto LABEL_3337;
        }

        if (a3 == 25237)
        {
          v92 = 12370;
LABEL_2958:
          if (a4 != v92)
          {
            return 0;
          }

          goto LABEL_2959;
        }

        if (a3 == 25239)
        {
          if ((a4 - 12356) >= 7 && a4 != 12431 && a4 != 12387)
          {
            return 0;
          }

          v14 = &unk_272D8;
          goto LABEL_3920;
        }

        if (a3 != 25240)
        {
          return result;
        }

        result = 0;
        v41 = a4 - 87;
        if ((a4 - 12375) > 0x36)
        {
          return result;
        }

        if (((1 << v41) & 0x7C000000001000) != 0)
        {
          goto LABEL_3145;
        }

        if (((1 << v41) & 5) == 0)
        {
          return result;
        }

LABEL_1269:
        v14 = &unk_278B8;
        goto LABEL_3920;
      }

      if (a3 > 25276)
      {
        if (a3 == 25277)
        {
          if (a4 != 12435)
          {
            return 0;
          }

          v14 = &unk_27B90;
          goto LABEL_3920;
        }

        if (a3 == 25285)
        {
          if ((a4 - 12364) <= 8 && (a4 & 1) == 0 || !wcsncmp((a6 + 4), dword_27AE4, 2uLL))
          {
            v14 = &unk_27AF0;
            goto LABEL_3920;
          }

          if ((a4 - 12356) >= 7 && a4 != 12431 && a4 != 12387)
          {
            return 0;
          }

          v14 = &unk_27AFC;
          goto LABEL_3920;
        }

        v17 = 25299;
        goto LABEL_1457;
      }

      if (a3 == 25244)
      {
        if ((a4 - 12363) <= 8)
        {
          if ((a4 & 1) == 0)
          {
            return 0;
          }

          goto LABEL_3223;
        }

        v89 = 12356;
        goto LABEL_3222;
      }

      if (a3 == 25265)
      {
        if ((a4 - 12363) > 8)
        {
          if (a4 == 12360)
          {
            v14 = &unk_26D64;
            goto LABEL_3920;
          }

          if (a4 != 12356)
          {
            return 0;
          }
        }

        else if ((a4 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_3886;
      }

      if (a3 != 25276)
      {
        return result;
      }

LABEL_1666:
      result = 0;
      if ((a4 - 12382) < 0xFFFFFFF7 || (a4 & 1) == 0)
      {
        return result;
      }

      wcscpy(a2, &unk_26AD0);
      v35 = 12373;
      goto LABEL_2879;
    }

    if (a3 > 25792)
    {
      if (a3 <= 26285)
      {
        if (a3 > 25974)
        {
          if (a3 <= 26088)
          {
            if (a3 > 26031)
            {
              switch(a3)
              {
                case 26032:
                  if (a4 == 12383)
                  {
                    v14 = &unk_271F8;
                    goto LABEL_3920;
                  }

                  if (a4 != 12375)
                  {
                    return 0;
                  }

                  v14 = &unk_277C4;
                  break;
                case 26045:
                  result = 0;
                  if (a4 - 12382) >= 0xFFFFFFF7 && (a4)
                  {
                    v14 = &unk_27518;
                    goto LABEL_3920;
                  }

                  return result;
                case 26088:
                  if ((a4 - 12372) < 0xFFFFFFF7 || (a4 & 1) == 0)
                  {
                    if ((a4 - 12373) > 8)
                    {
                      if (a4 != 12356)
                      {
                        return 0;
                      }
                    }

                    else if ((a4 & 1) == 0)
                    {
                      return 0;
                    }
                  }

                  v14 = &unk_274CC;
                  break;
                default:
                  return result;
              }

              goto LABEL_3920;
            }

            if (a3 == 25975)
            {
              if ((a4 - 12363) <= 8)
              {
                if ((a4 & 1) == 0)
                {
                  return 0;
                }

                goto LABEL_3208;
              }

              v72 = 12356;
              goto LABEL_3207;
            }

            if (a3 != 26028)
            {
              if (a3 != 26029)
              {
                return result;
              }

              v22 = a4 - 88;
              if ((a4 - 12376) <= 0x35)
              {
                if (((1 << v22) & 0x3E000000000800) != 0)
                {
                  v14 = &unk_27B44;
                  goto LABEL_3920;
                }

                if (((1 << v22) & 0x40001) != 0)
                {
                  v14 = &unk_27B54;
                  goto LABEL_3920;
                }
              }

LABEL_1670:
              if ((a4 - 12383) > 9)
              {
                return 0;
              }

              goto LABEL_3022;
            }

LABEL_1401:
            if ((a4 - 12425) >= 5 && a4 != 12387)
            {
              return 0;
            }

            if (a5 == 25613 || a5 == 22823)
            {
              v14 = &unk_278AC;
              goto LABEL_3920;
            }

            goto LABEL_3313;
          }

          if (a3 <= 26143)
          {
            if (a3 == 26089)
            {
              if ((a4 - 12363) <= 8)
              {
                if ((a4 & 1) == 0)
                {
                  return 0;
                }

                goto LABEL_3220;
              }

              if (a4 == 12414)
              {
                goto LABEL_3220;
              }

LABEL_3219:
              if (a4 != 12356)
              {
                return 0;
              }

LABEL_3220:
              v14 = &unk_279C0;
              goto LABEL_3920;
            }

            if (a3 == 26119)
            {
LABEL_1759:
              if ((a4 - 12425) >= 5 && a4 != 12387)
              {
                return 0;
              }

              goto LABEL_1760;
            }

            if (a3 != 26126)
            {
              return result;
            }

            if (a4 == 12363)
            {
LABEL_790:
              v11 = &unk_2676C;
              goto LABEL_3825;
            }

            if (a4 - 12372) >= 0xFFFFFFF7 && (a4)
            {
              goto LABEL_3110;
            }

            if (a4 != 12425)
            {
              return 0;
            }

LABEL_708:
            v14 = &unk_27FE0;
            goto LABEL_3920;
          }

          if (a3 != 26144)
          {
            if (a3 == 26194)
            {
              result = 0;
              if (a4 - 12382) >= 0xFFFFFFF7 && (a4)
              {
                v14 = &unk_27440;
                goto LABEL_3920;
              }

              return result;
            }

            if (a3 != 26262)
            {
              return result;
            }

            if (a4 != 12363)
            {
              return 0;
            }

            v14 = &unk_27B34;
            goto LABEL_3920;
          }

          if (a4 == 12360)
          {
LABEL_2760:
            v14 = &unk_269C0;
            goto LABEL_3920;
          }

          goto LABEL_1504;
        }

        if (a3 <= 25936)
        {
          if (a3 <= 25912)
          {
            switch(a3)
            {
              case 25793:
                if (a4 != 12377 && a4 != 12375)
                {
                  return 0;
                }

                v14 = &unk_28194;
                break;
              case 25830:
                if ((a4 - 12425) >= 5 && a4 != 12387)
                {
                  return 0;
                }

                v14 = &unk_27428;
                break;
              case 25903:
                if (a4 != 12360)
                {
                  return 0;
                }

                v14 = &unk_274C0;
                break;
              default:
                return result;
            }

            goto LABEL_3920;
          }

          if (a3 == 25913)
          {
            if (a4 != 12417 && a4 != 12414)
            {
              return 0;
            }

            v14 = &unk_26C64;
            goto LABEL_3920;
          }

          if (a3 == 25915)
          {
            if (a4 != 12417 && a4 != 12414)
            {
              return 0;
            }

            v14 = &unk_26ECC;
            goto LABEL_3920;
          }

          if (a3 != 25918)
          {
            return result;
          }

LABEL_1739:
          if ((a4 - 12373) <= 8)
          {
            if ((a4 & 1) == 0)
            {
              return 0;
            }

LABEL_2191:
            if (a5 == 25163)
            {
              v14 = &unk_27FFC;
              goto LABEL_3920;
            }

            goto LABEL_2479;
          }

          if ((a4 - 12387) <= 0x29 && ((1 << (a4 - 99)) & 0x20000000003) != 0)
          {
            goto LABEL_2191;
          }

          if ((a4 - 12425) > 4)
          {
            return 0;
          }

LABEL_1227:
          v14 = &unk_27FC8;
          goto LABEL_3920;
        }

        if (a3 > 25954)
        {
          if (a3 != 25955)
          {
            if (a3 == 25968)
            {
              if (a4 != 12360)
              {
                return 0;
              }

              v14 = &unk_27834;
            }

            else
            {
              if (a3 != 25972)
              {
                return result;
              }

              if ((a4 - 12356) >= 7)
              {
                result = 0;
                if ((a4 - 12387) > 0x2C || ((1 << (a4 - 99)) & 0x104000000001) == 0)
                {
                  return result;
                }
              }

              v14 = &unk_27864;
            }

            goto LABEL_3920;
          }

          if ((a4 - 12425) >= 5 && a4 != 12387)
          {
            return 0;
          }

          v10 = &unk_267D0;
          goto LABEL_2878;
        }

        if (a3 != 25937)
        {
          if (a3 == 25945)
          {
            if (a4 == 12431)
            {
              v14 = &unk_26908;
              goto LABEL_3920;
            }

            if (a4 != 12360)
            {
              return 0;
            }

            v14 = &unk_26FB8;
            goto LABEL_3920;
          }

          if (a3 != 25954)
          {
            return result;
          }

          v28 = 12360;
          goto LABEL_2031;
        }

        if ((a4 - 12356) < 7 || a4 == 12431 || a4 == 12387)
        {
          v14 = &unk_26EE0;
          goto LABEL_3920;
        }

LABEL_3496:
        if ((a4 & 0xFFFFFFFB) != 0x304B)
        {
          return 0;
        }

        goto LABEL_3698;
      }

      if (a3 > 26398)
      {
        if (a3 > 26627)
        {
          if (a3 > 27009)
          {
            if (a3 == 27010)
            {
              if (a4 != 12397)
              {
                return 0;
              }

              v14 = &unk_26C90;
              goto LABEL_3920;
            }

            if (a3 == 27083)
            {
              if ((a4 - 12356) < 7 || a4 == 12431 || a4 == 12387)
              {
                if (a5 == 36523)
                {
                  v14 = &unk_272EC;
                }

                else
                {
                  v14 = &unk_272FC;
                }

                goto LABEL_3920;
              }

              return 0;
            }

            if (a3 != 27169)
            {
              return result;
            }

            result = 0;
            if ((a4 - 12382) < 0xFFFFFFF7 || (a4 & 1) == 0)
            {
              return result;
            }

LABEL_1472:
            v14 = &unk_2752C;
            goto LABEL_3920;
          }

          if (a3 == 26628)
          {
            if (a4 != 12360)
            {
              return 0;
            }

            v14 = &unk_26A48;
            goto LABEL_3920;
          }

          if (a3 != 26893)
          {
            if (a3 != 27005)
            {
              return result;
            }

            if (a4 != 12375)
            {
              return 0;
            }

            v14 = &unk_26CD8;
            goto LABEL_3920;
          }

          if (a4 != 12431)
          {
            v64 = 12360;
            goto LABEL_3338;
          }

LABEL_3339:
          v14 = &unk_27484;
          goto LABEL_3920;
        }

        if (a3 > 26523)
        {
          if (a3 == 26524)
          {
            if (a4 != 12383)
            {
              if ((a4 - 12373) <= 0xE)
              {
                v14 = &unk_26B4C;
                goto LABEL_3920;
              }

              return 0;
            }

            goto LABEL_2712;
          }

          if (a3 == 26543)
          {
            if (a4 != 12428 && a4 != 12425)
            {
              return 0;
            }

            v10 = &unk_26B70;
            goto LABEL_2878;
          }

          if (a3 != 26579)
          {
            return result;
          }

          if (a4 == 12414 || a4 == 12417)
          {
            v14 = &unk_267AC;
            goto LABEL_3920;
          }

          if (a4 != 12415)
          {
            return 0;
          }

LABEL_3343:
          v14 = &unk_27308;
          goto LABEL_3920;
        }

        if (a3 == 26399)
        {
          if (a4 != 12377 && a4 != 12375)
          {
            return 0;
          }

          goto LABEL_3313;
        }

        if (a3 == 26410)
        {
          if (a4 != 12384)
          {
            return 0;
          }

          v14 = &unk_28080;
          goto LABEL_3920;
        }

        if (a3 != 26469)
        {
          return result;
        }

        result = 0;
        v24 = (a4 - 12394);
        if (v24 > 0x22)
        {
          return result;
        }

        if (((1 << (a4 - 106)) & 0x480000005) == 0)
        {
          if (v24 != 33)
          {
            return result;
          }

          v14 = &unk_26C1C;
          goto LABEL_3920;
        }

        goto LABEL_2111;
      }

      if (a3 <= 26359)
      {
        if (a3 > 26353)
        {
          if (a3 == 26354)
          {
            result = 0;
            if (a4 <= 12424)
            {
              if (a4 == 12364 || a4 == 12370)
              {
                v14 = &unk_26D28;
                goto LABEL_3920;
              }

              if (a4 != 12387)
              {
                return result;
              }
            }

            else if ((a4 - 12425) >= 5)
            {
              return result;
            }

            v14 = &unk_27054;
            goto LABEL_3920;
          }

          if (a3 != 26355)
          {
            if (a3 != 26356)
            {
              return result;
            }

            if (a4 != 12369)
            {
              return 0;
            }

            goto LABEL_1894;
          }

          goto LABEL_1410;
        }

        if (a3 != 26286)
        {
          if (a3 != 26292)
          {
            if (a3 != 26333)
            {
              return result;
            }

            if ((a4 - 12373) > 8)
            {
              if (a4 != 12369)
              {
                return 0;
              }
            }

            else if ((a4 & 1) == 0)
            {
              return 0;
            }

            v14 = &unk_27440;
            goto LABEL_3920;
          }

          if (a4 == 12428)
          {
            v14 = &unk_28064;
            goto LABEL_3920;
          }

          return 0;
        }

        if ((a4 - 12425) > 4)
        {
          return 0;
        }

        goto LABEL_2541;
      }

      if (a3 > 26376)
      {
        if (a3 != 26377)
        {
          if (a3 == 26391)
          {
            if (a4 != 12425)
            {
              return 0;
            }

            v14 = &unk_2826C;
            goto LABEL_3920;
          }

          if (a3 != 26395)
          {
            return result;
          }

LABEL_1602:
          if ((a4 - 12414) >= 5 && a4 != 12435)
          {
            return 0;
          }

          v14 = &unk_276C4;
          goto LABEL_3920;
        }

        goto LABEL_1676;
      }

      if (a3 == 26360)
      {
        if ((a4 - 12363) > 8)
        {
          if (a4 != 12356)
          {
            return 0;
          }
        }

        else if ((a4 & 1) == 0)
        {
          return 0;
        }

        if (a5 == 25163)
        {
          goto LABEL_1690;
        }

        v54 = 12365;
        goto LABEL_1689;
      }

      if (a3 != 26367)
      {
        if (a3 != 26368)
        {
          return result;
        }

        if (a4 != 12418)
        {
          return 0;
        }

        v14 = &unk_273D0;
        goto LABEL_3920;
      }
    }

    else
    {
      if (a3 <= 25504)
      {
        if (a3 <= 25416)
        {
          if (a3 <= 25350)
          {
            if (a3 <= 25324)
            {
              if (a3 == 25307)
              {
                if ((a4 - 12363) > 8)
                {
                  if (a4 != 12356)
                  {
                    return 0;
                  }
                }

                else if ((a4 & 1) == 0)
                {
                  return 0;
                }

                v14 = &unk_27710;
                goto LABEL_3920;
              }

              if (a3 != 25309)
              {
                if (a3 != 25324)
                {
                  return result;
                }

                if ((a4 - 12425) >= 5 && a4 != 12387)
                {
                  return 0;
                }

                v14 = &unk_26CF0;
                goto LABEL_3920;
              }

              if ((a4 - 12380) < 0xFFFFFFFB || (a4 & 1) == 0)
              {
                if ((a4 - 12414) >= 5 && a4 != 12435)
                {
                  return 0;
                }

                v14 = &unk_27D68;
                goto LABEL_3920;
              }

              goto LABEL_2729;
            }

            if (a3 != 25325)
            {
              if (a3 == 25342)
              {
                if ((a4 - 12356) >= 7 && a4 != 12431 && a4 != 12387)
                {
                  return 0;
                }

                v14 = &unk_27294;
              }

              else
              {
                if (a3 != 25345)
                {
                  return result;
                }

                if ((a4 - 12383) > 9)
                {
                  return 0;
                }

                v14 = &unk_2752C;
              }

              goto LABEL_3920;
            }

            if ((a4 - 12356) < 7 || a4 == 12431 || a4 == 12387)
            {
              v14 = &unk_277A8;
              goto LABEL_3920;
            }

            result = 0;
            if ((a4 - 12372) < 0xFFFFFFF7 || (a4 & 1) == 0)
            {
              return result;
            }

            goto LABEL_2724;
          }

          if (a3 > 25390)
          {
            if (a3 != 25391)
            {
              if (a3 != 25405)
              {
                if (a3 != 25407)
                {
                  return result;
                }

                if ((a4 - 12382) < 0xFFFFFFF7 || (a4 & 1) == 0)
                {
                  if ((a4 - 12414) >= 5 && a4 != 12435)
                  {
                    return 0;
                  }

                  v14 = &unk_26FAC;
                  goto LABEL_3920;
                }

                goto LABEL_1958;
              }

              goto LABEL_1410;
            }

            if ((a4 - 12425) < 5)
            {
              goto LABEL_2724;
            }

            v80 = 12387;
LABEL_2723:
            if (a4 != v80)
            {
              return 0;
            }

            goto LABEL_2724;
          }

          if (a3 == 25351)
          {
            goto LABEL_1691;
          }

          if (a3 != 25369)
          {
            if (a3 != 25375)
            {
              return result;
            }

            if ((a4 - 12414) >= 5 && a4 != 12435)
            {
              return 0;
            }

            v11 = &unk_26FAC;
            goto LABEL_3825;
          }

LABEL_1348:
          if (a4 == 12370)
          {
LABEL_1351:
            v14 = &unk_2676C;
            goto LABEL_3920;
          }

          v44 = 12364;
LABEL_1350:
          if (a4 != v44)
          {
            return 0;
          }

          goto LABEL_1351;
        }

        if (a3 > 25453)
        {
          if (a3 > 25474)
          {
            if (a3 == 25475)
            {
              goto LABEL_1767;
            }

            if (a3 != 25496)
            {
              if (a3 != 25499)
              {
                return result;
              }

              if (a4 != 12369)
              {
                return 0;
              }

              if (a5 == 25163)
              {
                v14 = &unk_26CE4;
                goto LABEL_3920;
              }

              goto LABEL_2532;
            }

            goto LABEL_1751;
          }

          if (a3 == 25454)
          {
            v36 = 12360;
            goto LABEL_2607;
          }

          if (a3 != 25466)
          {
            if (a3 != 25467)
            {
              return result;
            }

            if ((a4 - 12425) >= 5 && a4 != 12387)
            {
              return 0;
            }

            v14 = &unk_27D30;
            goto LABEL_3920;
          }

          goto LABEL_1666;
        }

        if (a3 <= 25435)
        {
          if (a3 == 25417)
          {
            goto LABEL_390;
          }

          if (a3 == 25420)
          {
            if ((a4 - 12363) <= 8)
            {
LABEL_2365:
              if ((a4 & 1) == 0)
              {
                return 0;
              }

              goto LABEL_3156;
            }

LABEL_3155:
            if (a4 != 12356)
            {
              return 0;
            }

LABEL_3156:
            v14 = &unk_273E0;
            goto LABEL_3920;
          }

          if (a3 != 25429)
          {
            return result;
          }

          v19 = a4 - 99;
          if ((a4 - 12387) > 0x30)
          {
            goto LABEL_390;
          }

          if (((1 << v19) & 0x7C000000001) != 0)
          {
            goto LABEL_2420;
          }

          if (((1 << v19) & 0x10000F8000000) == 0)
          {
LABEL_390:
            if (a4 != 12360)
            {
              return 0;
            }

            v14 = &unk_273A8;
            goto LABEL_3920;
          }

          goto LABEL_2597;
        }

        if (a3 != 25436)
        {
          if (a3 == 25447)
          {
            if (a4 != 12370)
            {
              return 0;
            }

            v14 = &unk_274C0;
            goto LABEL_3920;
          }

          if (a3 != 25448)
          {
            return result;
          }

          v36 = 12390;
          goto LABEL_2607;
        }

        result = 0;
        if ((a4 - 12382) < 0xFFFFFFF7 || (a4 & 1) == 0)
        {
          return result;
        }

LABEL_2691:
        v14 = &unk_279B0;
        goto LABEL_3920;
      }

      if (a3 <= 25562)
      {
        if (a3 <= 25523)
        {
          if (a3 > 25510)
          {
            if (a3 == 25511)
            {
              v62 = 12360;
              goto LABEL_2663;
            }

            if (a3 != 25512)
            {
              if (a3 != 25522)
              {
                return result;
              }

              v23 = 12370;
              goto LABEL_1169;
            }

            goto LABEL_1666;
          }

          if (a3 == 25505)
          {
            goto LABEL_1447;
          }

          if (a3 != 25506)
          {
            if (a3 != 25509)
            {
              return result;
            }

            if (a4 != 12377 && a4 != 12375)
            {
              return 0;
            }

            goto LABEL_1269;
          }

          if ((a4 - 12382) < 0xFFFFFFF7 || (a4 & 1) == 0)
          {
            if ((a4 - 12425) >= 5 && a4 != 12387)
            {
              return 0;
            }

            v14 = &unk_27B18;
            goto LABEL_3920;
          }

          goto LABEL_2691;
        }

        if (a3 > 25550)
        {
          if (a3 == 25551)
          {
            goto LABEL_1756;
          }

          if (a3 == 25552)
          {
            v67 = 12370;
LABEL_3117:
            if (a4 != v67)
            {
              return 0;
            }

            goto LABEL_3118;
          }

          if (a3 != 25562)
          {
            return result;
          }

          goto LABEL_1348;
        }

        if (a3 == 25524)
        {
          if ((a4 - 12414) < 5)
          {
            goto LABEL_2597;
          }

          v65 = 12435;
LABEL_2596:
          if (a4 != v65)
          {
            return 0;
          }

          goto LABEL_2597;
        }

        if (a3 != 25531)
        {
          if (a3 != 25539)
          {
            return result;
          }

          if ((a4 - 12356) >= 7 && a4 != 12431 && a4 != 12387)
          {
            return 0;
          }

          v14 = &unk_27A44;
          goto LABEL_3920;
        }

LABEL_1748:
        if ((a4 - 12363) <= 8)
        {
          if ((a4 & 1) == 0)
          {
            return 0;
          }

          goto LABEL_2656;
        }

        if (a4 != 12387)
        {
          goto LABEL_2655;
        }

        goto LABEL_2656;
      }

      if (a3 > 25665)
      {
        if (a3 > 25745)
        {
          if (a3 != 25746)
          {
            if (a3 == 25771)
            {
              v50 = 12391;
LABEL_2162:
              if (a4 != v50)
              {
                return 0;
              }

              goto LABEL_2163;
            }

            if (a3 != 25774)
            {
              return result;
            }

            if (a4 - 12382) >= 0xFFFFFFF7 && (a4)
            {
              v14 = &unk_26984;
              goto LABEL_3920;
            }

            goto LABEL_1447;
          }

LABEL_1753:
          if (a4 != 12356 && (a4 - 12363) > 8)
          {
            return 0;
          }

          v14 = &unk_26D28;
          goto LABEL_3920;
        }

        if (a3 == 25666)
        {
          goto LABEL_1447;
        }

        if (a3 == 25688)
        {
          goto LABEL_1727;
        }

        if (a3 != 25731)
        {
          return result;
        }

LABEL_1663:
        result = 0;
        if ((a4 - 12383) > 9 || ((1 << (a4 - 95)) & 0x2B5) == 0)
        {
          return result;
        }

        goto LABEL_1665;
      }

      if (a3 > 25619)
      {
        if (a3 != 25620)
        {
          if (a3 == 25658)
          {
            if (a4 != 12431 && a4 != 12360)
            {
              return 0;
            }

            v14 = &unk_270D4;
            goto LABEL_3920;
          }

          if (a3 != 25662)
          {
            return result;
          }

          if ((a4 - 12425) >= 5 && a4 != 12387)
          {
            return 0;
          }

          goto LABEL_1256;
        }

        goto LABEL_1748;
      }

      if (a3 != 25563)
      {
        if (a3 == 25569)
        {
          if ((a4 - 12425) >= 5 && a4 != 12387)
          {
            return 0;
          }

          v14 = &unk_26CAC;
          goto LABEL_3920;
        }

        if (a3 != 25613)
        {
          return result;
        }

        result = 0;
        if (a4 <= 12386)
        {
          if ((a4 - 12356) >= 7)
          {
            return result;
          }

          goto LABEL_452;
        }

        if (a4 > 12396)
        {
          if (a4 != 12431)
          {
            v101 = 12397;
            goto LABEL_3803;
          }
        }

        else if (a4 != 12387)
        {
          v101 = 12394;
LABEL_3803:
          if (a4 != v101)
          {
            return result;
          }

          v14 = &unk_27A60;
          goto LABEL_3920;
        }

LABEL_452:
        v14 = &unk_27A6C;
        goto LABEL_3920;
      }
    }

LABEL_1685:
    if (a4 != 12431 && a4 != 12360)
    {
      return 0;
    }

    if (a5 == 32937)
    {
      goto LABEL_1690;
    }

    v54 = 26085;
LABEL_1689:
    if (a5 != v54)
    {
      goto LABEL_2771;
    }

LABEL_1690:
    v14 = &unk_26CE4;
    goto LABEL_3920;
  }

  if (a3 <= 33537)
  {
    if (a3 <= 30093)
    {
      if (a3 <= 28401)
      {
        if (a3 <= 27890)
        {
          if (a3 <= 27703)
          {
            if (a3 <= 27514)
            {
              if (a3 > 27489)
              {
                if (a3 != 27490)
                {
                  if (a3 != 27491)
                  {
                    if (a3 != 27497)
                    {
                      return result;
                    }

                    if ((a4 - 12363) > 8)
                    {
                      if ((a4 - 12414) <= 0x15 && ((1 << (a4 - 126)) & 0x20001F) != 0)
                      {
                        v14 = &unk_27FA4;
                        goto LABEL_3920;
                      }

                      if (a4 != 12356)
                      {
                        return 0;
                      }
                    }

                    else if ((a4 & 1) == 0)
                    {
                      return 0;
                    }

                    v14 = &unk_27F98;
                    goto LABEL_3920;
                  }

LABEL_1708:
                  result = 0;
                  if (a4 - 12382) >= 0xFFFFFFF7 && (a4)
                  {
                    v14 = &unk_27594;
                    goto LABEL_3920;
                  }

                  return result;
                }

                if (a5 == 21462 || a5 == 12426 || a4 == 12435 || (a4 - 12415) <= 1)
                {
                  goto LABEL_2953;
                }

                if (a4 != 12417 && a4 != 12414)
                {
                  return 0;
                }

                if (a5 == 14690 || a5 == 12860)
                {
                  v14 = &unk_274D8;
                  goto LABEL_3920;
                }

                goto LABEL_2420;
              }

              if (a3 != 27425)
              {
                if (a3 == 27442)
                {
                  if (a4 == 12377)
                  {
                    goto LABEL_2197;
                  }

                  if (a4 != 12375)
                  {
                    return 0;
                  }

                  v68 = *(a6 + 8);
                  if (v68 != 12356 && (((v68 - 12363) < 9) & v68) == 0)
                  {
LABEL_2197:
                    v14 = &unk_281B0;
                    goto LABEL_3920;
                  }

                  goto LABEL_2407;
                }

                v12 = 27468;
LABEL_807:
                if (a3 != v12)
                {
                  return result;
                }

                if ((a4 - 12356) >= 7 && a4 != 12431 && a4 != 12387)
                {
                  return 0;
                }

                v11 = &unk_26B58;
                goto LABEL_3825;
              }

              goto LABEL_1493;
            }

            if (a3 > 27577)
            {
              if (a3 != 27578)
              {
                if (a3 == 27597)
                {
                  if (a5 != 12362)
                  {
                    return 0;
                  }

                  v14 = &unk_27FBC;
                }

                else
                {
                  if (a3 != 27604)
                  {
                    return result;
                  }

                  if (a4 != 12409)
                  {
                    return 0;
                  }

                  v14 = &unk_27E38;
                }

                goto LABEL_3920;
              }

              result = 0;
              if ((a4 - 12382) < 0xFFFFFFF7 || (a4 & 1) == 0)
              {
                return result;
              }

              goto LABEL_3039;
            }

            if (a3 != 27515)
            {
              if (a3 != 27531)
              {
                if (a3 != 27572)
                {
                  return result;
                }

                if ((a4 - 12425) >= 5 && a4 != 12387)
                {
                  return 0;
                }

                v14 = &unk_26AD8;
                goto LABEL_3920;
              }

              goto LABEL_1702;
            }

            if ((a4 - 12394) >= 5)
            {
              v30 = 12435;
LABEL_2830:
              if (a4 != v30)
              {
                return 0;
              }
            }

LABEL_2831:
            v14 = &unk_27308;
            goto LABEL_3920;
          }

          if (a3 <= 27831)
          {
            if (a3 <= 27769)
            {
              switch(a3)
              {
                case 27704:
                  if ((a4 - 12363) > 8)
                  {
                    if (a4 != 12356)
                    {
                      return 0;
                    }
                  }

                  else if ((a4 & 1) == 0)
                  {
                    return 0;
                  }

                  v14 = &unk_26A54;
                  goto LABEL_3920;
                case 27714:
                  if (a4 >> 1 != 6208)
                  {
                    return 0;
                  }

                  v14 = &unk_26EEC;
                  break;
                case 27738:
                  if ((a4 - 12382) < 0xFFFFFFF7 || (a4 & 1) == 0)
                  {
                    if (a4 == 12425)
                    {
                      v14 = &unk_26A9C;
                      goto LABEL_3920;
                    }

                    if (a4 != 12428)
                    {
                      return 0;
                    }
                  }

                  v14 = &unk_26A8C;
                  break;
                default:
                  return result;
              }

              goto LABEL_3920;
            }

            if (a3 != 27770)
            {
              if (a3 != 27777)
              {
                if (a3 != 27784)
                {
                  return result;
                }

                if ((a4 - 12414) >= 5 && a4 != 12435)
                {
                  return 0;
                }

                v14 = &unk_2789C;
                goto LABEL_3920;
              }

              v72 = 12415;
LABEL_3207:
              if (a4 != v72)
              {
                return 0;
              }

              goto LABEL_3208;
            }

            result = 0;
            v96 = a4 - 87;
            if ((a4 - 12375) > 0x2A)
            {
              return result;
            }

            if (((1 << v96) & 0x15) != 0)
            {
              v14 = &unk_27148;
              goto LABEL_3920;
            }

            if (((1 << v96) & 0x48000000000) == 0)
            {
              return result;
            }

LABEL_3313:
            v14 = &unk_2678C;
            goto LABEL_3920;
          }

          if (a3 <= 27849)
          {
            if (a3 == 27832)
            {
              if ((a4 - 12363) <= 8)
              {
                if ((a4 & 1) == 0)
                {
                  return 0;
                }

                goto LABEL_3273;
              }

              v76 = 12356;
              goto LABEL_3272;
            }

            if (a3 != 27835)
            {
              if (a3 != 27841)
              {
                return result;
              }

              if (a4 != 12420)
              {
                return 0;
              }

              v14 = &unk_26FC4;
              goto LABEL_3920;
            }

            if ((a4 - 12425) >= 5 && a4 != 12387 && ((a4 - 12382) < 0xFFFFFFF7 || (a4 & 1) == 0))
            {
              if ((a4 - 12410) <= 8)
              {
                v14 = &unk_27540;
                goto LABEL_3920;
              }

              return 0;
            }

LABEL_2254:
            v14 = &unk_27534;
            goto LABEL_3920;
          }

          if (a3 != 27850)
          {
            if (a3 != 27875)
            {
              if (a3 != 27880)
              {
                return result;
              }

              if ((a4 - 12364) > 8)
              {
                if (a4 != 12356)
                {
                  return 0;
                }
              }

              else if (a4)
              {
                return 0;
              }

              v14 = &unk_278C4;
              goto LABEL_3920;
            }

            if (a4 != 12356 && (a4 - 12363) > 8)
            {
              return 0;
            }

            v14 = &unk_26900;
            goto LABEL_3920;
          }

LABEL_1769:
          if (a4 == 12417)
          {
            goto LABEL_2981;
          }

          v58 = 12414;
          goto LABEL_2501;
        }

        if (a3 <= 28167)
        {
          if (a3 <= 28023)
          {
            if (a3 <= 27968)
            {
              if (a3 == 27891)
              {
                if ((a4 - 12364) > 8)
                {
                  if (a4 != 12356)
                  {
                    return 0;
                  }
                }

                else if (a4)
                {
                  return 0;
                }

                v14 = dword_26A64;
                goto LABEL_3920;
              }

              if (a3 == 27927)
              {
                if ((a4 - 12356) >= 7 && a4 != 12431 && a4 != 12387)
                {
                  return 0;
                }

                v14 = &unk_271F8;
                goto LABEL_3920;
              }

              if (a3 != 27963)
              {
                return result;
              }

              if (a4 != 12363)
              {
                return 0;
              }

              goto LABEL_270;
            }

            if (a3 == 27969)
            {
              if (((a4 - 12382) < 0xFFFFFFF7 || (a4 & 1) == 0) && a4 != 12428)
              {
                return 0;
              }

              v14 = &unk_26A54;
              goto LABEL_3920;
            }

            if (a3 == 28014)
            {
              if ((a4 - 12363) > 8)
              {
                if (a4 != 12356)
                {
                  return 0;
                }
              }

              else if ((a4 & 1) == 0)
              {
                return 0;
              }

              v11 = &unk_27484;
              goto LABEL_3825;
            }

            if (a3 != 28020)
            {
              return result;
            }

            v48 = 12403;
            goto LABEL_2926;
          }

          if (a3 <= 28112)
          {
            if (a3 == 28024)
            {
              if ((a4 - 12372) < 0xFFFFFFF7 || (a4 & 1) == 0)
              {
                v100 = (a4 & 1) == 0 || (a4 - 12382) < 0xFFFFFFF7;
                if ((a4 - 12430) > 0xFFFFFFFA || !v100)
                {
                  v14 = &unk_277D4;
                  goto LABEL_3920;
                }

                return 0;
              }

              goto LABEL_2841;
            }

            if (a3 != 28040)
            {
              if (a3 != 28092)
              {
                return result;
              }

              if (a4 != 12375)
              {
                return 0;
              }

              v14 = &unk_281F0;
              goto LABEL_3920;
            }

            if ((a4 - 12382) < 0xFFFFFFF7 || (a4 & 1) == 0)
            {
              if (a4 != 12360)
              {
                return 0;
              }

              v14 = &unk_2678C;
              goto LABEL_3920;
            }

            goto LABEL_2374;
          }

          if (a3 == 28113)
          {
            if (a4 != 12420)
            {
              return 0;
            }

            v14 = &unk_2764C;
            goto LABEL_3920;
          }

          if (a3 != 28151)
          {
            if (a3 != 28155)
            {
              return result;
            }

            v29 = 12360;
            goto LABEL_1586;
          }

          result = 0;
          v73 = a4 - 86;
          if ((a4 - 12374) > 0x3D)
          {
            return result;
          }

          if (((1 << v73) & 0x20001F0000000000) != 0)
          {
            goto LABEL_3739;
          }

          if (((1 << v73) & 0x45) == 0)
          {
            return result;
          }

LABEL_3226:
          v14 = &unk_26D28;
          goto LABEL_3920;
        }

        if (a3 <= 28309)
        {
          if (a3 > 28200)
          {
            if (a3 == 28201)
            {
              if (a4 != 12418 && a4 != 12356)
              {
                return 0;
              }

              v14 = &unk_26AE8;
              goto LABEL_3920;
            }

            if (a3 != 28204)
            {
              if (a3 != 28288)
              {
                return result;
              }

              if (a4 != 12385 && a4 != 12383)
              {
                return 0;
              }

              v11 = &unk_271B4;
              goto LABEL_3825;
            }

            goto LABEL_1545;
          }

          if (a3 == 28168)
          {
            if ((a4 - 12414) >= 5)
            {
              v38 = 12435;
LABEL_2818:
              if (a4 != v38)
              {
                return 0;
              }

              goto LABEL_2819;
            }

            goto LABEL_2819;
          }

          if (a3 != 28187)
          {
            if (a3 != 28193)
            {
              return result;
            }

            if ((a4 - 12425) >= 5)
            {
              if ((a4 - 12373) > 8)
              {
                if (a4 != 12387)
                {
                  return 0;
                }
              }

              else if ((a4 & 1) == 0)
              {
                return 0;
              }
            }

            wcscpy(a2, dword_27C28);
            v18 = a4 == 12373 || a4 == 12425;
            goto LABEL_2880;
          }

          if (a4 == 12425 || a4 == 12387)
          {
            v11 = &unk_26830;
            goto LABEL_3825;
          }

          if ((a4 - 12425) > 4)
          {
            return 0;
          }

          if (a5 == 30446)
          {
            v14 = &unk_271EC;
            goto LABEL_3920;
          }

          goto LABEL_3392;
        }

        if (a3 <= 28341)
        {
          if (a3 == 28310)
          {
            if (a4 != 12360)
            {
              return 0;
            }

            v14 = &unk_27678;
            goto LABEL_3920;
          }

          if (a3 != 28316)
          {
            if (a3 != 28322)
            {
              return result;
            }

            if (a4 != 12428)
            {
              return 0;
            }

            v14 = &unk_269B4;
            goto LABEL_3920;
          }

          if (a4 != 12417 && a4 != 12414)
          {
            return 0;
          }

LABEL_2264:
          v14 = &unk_270E8;
          goto LABEL_3920;
        }

        if (a3 == 28342)
        {
LABEL_1742:
          if (a4 == 12363 || a4 == 12356)
          {
            v11 = &unk_26BD8;
            goto LABEL_3825;
          }

          result = 0;
          if ((a4 - 12372) < 0xFFFFFFF7 || (a4 & 1) == 0)
          {
            return result;
          }

          goto LABEL_2981;
        }

        if (a3 != 28357)
        {
          if (a3 != 28369)
          {
            return result;
          }

          if ((a4 - 12426) >= 4 && a4 != 12387)
          {
            if (a4 != 12425)
            {
              return 0;
            }

            if (*(a6 + 8) == 12363)
            {
              v11 = &unk_26CFC;
              goto LABEL_3825;
            }
          }

          v14 = &unk_26D08;
          goto LABEL_3920;
        }

        if (a4 - 12380) >= 0xFFFFFFFB && (a4)
        {
          v14 = &unk_280BC;
          goto LABEL_3920;
        }

        result = 0;
        if ((a4 - 12400) > 0x23 || ((1 << (a4 - 112)) & 0x800001249) == 0)
        {
          return result;
        }

LABEL_3090:
        v14 = &unk_2804C;
        goto LABEL_3920;
      }

      if (a3 <= 29086)
      {
        if (a3 <= 28817)
        {
          if (a3 <= 28515)
          {
            if (a3 <= 28430)
            {
              switch(a3)
              {
                case 28402:
                  if ((a4 - 12414) >= 5 && a4 != 12435)
                  {
                    return 0;
                  }

                  v14 = &unk_28370;
                  break;
                case 28417:
                  if ((a4 - 12425) >= 5 && a4 != 12387)
                  {
                    return 0;
                  }

                  v14 = &unk_26F28;
                  break;
                case 28418:
                  if ((a4 - 12356) >= 7 && a4 != 12431 && a4 != 12387)
                  {
                    return 0;
                  }

                  v14 = &unk_27E9C;
                  break;
                default:
                  return result;
              }

              goto LABEL_3920;
            }

            if (a3 == 28431)
            {
              if ((a4 - 12425) >= 5 && a4 != 12387)
              {
                return 0;
              }

              v10 = &unk_2752C;
              goto LABEL_2878;
            }

            if (a3 != 28437)
            {
              if (a3 != 28508)
              {
                return result;
              }

              if ((a4 - 12425) >= 5 && a4 != 12387)
              {
                return 0;
              }

              v14 = &unk_27900;
              goto LABEL_3920;
            }

            if ((a4 - 12364) > 8)
            {
              if (a4 != 12356)
              {
                return 1;
              }
            }

            else if (a4)
            {
              return 1;
            }

LABEL_1484:
            v14 = &unk_2679C;
            goto LABEL_3920;
          }

          if (a3 > 28607)
          {
            if (a3 == 28608)
            {
              if (a4 != 12375)
              {
                return 0;
              }

              v14 = &unk_27138;
              goto LABEL_3920;
            }

            if (a3 == 28655)
            {
              result = 0;
              if ((a4 - 12364) <= 8 && (a4 & 1) == 0)
              {
                v14 = &unk_27AAC;
                goto LABEL_3920;
              }

              return result;
            }

            if (a3 != 28810)
            {
              return result;
            }

            if ((a4 - 12363) > 8)
            {
              if (a4 != 12356)
              {
                return 0;
              }
            }

            else if ((a4 & 1) == 0)
            {
              return 0;
            }

LABEL_3332:
            v14 = &unk_270E8;
            goto LABEL_3920;
          }

          if (a3 == 28516)
          {
            if ((a4 - 12356) >= 7 && a4 != 12431 && a4 != 12387 && ((a4 - 12382) < 0xFFFFFFF7 || (a4 & 1) == 0))
            {
              if ((a4 - 12414) < 5 || a4 == 12435)
              {
                v14 = &unk_2769C;
                goto LABEL_3920;
              }

              return 0;
            }

            v14 = &unk_2768C;
            goto LABEL_3920;
          }

          if (a3 == 28528)
          {
            if (a4 != 12360)
            {
              return 0;
            }

            v14 = &unk_27BE4;
            goto LABEL_3920;
          }

          if (a3 != 28548)
          {
            return result;
          }

          goto LABEL_1152;
        }

        if (a3 <= 28965)
        {
          if (a3 <= 28857)
          {
            switch(a3)
            {
              case 28818:
                if ((a4 - 12414) >= 5 && a4 != 12435)
                {
                  return 0;
                }

                v14 = &unk_27500;
                break;
              case 28825:
                if ((a4 - 12425) >= 5 && a4 != 12387)
                {
                  return 0;
                }

                v14 = &unk_26E3C;
                break;
              case 28857:
                if (((a4 - 12382) < 0xFFFFFFF7 || (a4 & 1) == 0) && (a4 - 12425) > 4)
                {
                  return 0;
                }

                v14 = &unk_27C1C;
                break;
              default:
                return result;
            }

            goto LABEL_3920;
          }

          if (a3 == 28858)
          {
            result = 0;
            if ((a4 - 12382) < 0xFFFFFFF7 || (a4 & 1) == 0)
            {
              return result;
            }

LABEL_2959:
            v14 = &unk_26900;
            goto LABEL_3920;
          }

          if (a3 != 28953)
          {
            if (a3 != 28961)
            {
              return result;
            }

            if ((a4 - 12363) > 8)
            {
              if (a4 == 12356)
              {
LABEL_2163:
                v14 = &unk_26900;
                goto LABEL_3920;
              }
            }

            else if (a4)
            {
              goto LABEL_2163;
            }

            if ((a4 & 0xFFFFFFFD) != 0x3055)
            {
              return 0;
            }

            goto LABEL_2163;
          }

          goto LABEL_1739;
        }

        if (a3 <= 29030)
        {
          if (a3 == 28966)
          {
            if ((a4 - 12425) < 5 || a4 == 12387)
            {
              v14 = &unk_2772C;
              goto LABEL_3920;
            }

            result = 0;
            if (a4 - 12364) > 8 || (a4)
            {
              return result;
            }

            goto LABEL_1484;
          }

          if (a3 == 28982)
          {
            if (a4 != 12427)
            {
              return 0;
            }

            v14 = &unk_2793C;
            goto LABEL_3920;
          }

          if (a3 != 28988)
          {
            return result;
          }

          goto LABEL_907;
        }

        if (a3 == 29031)
        {
          result = 0;
          if (a4 - 12382) >= 0xFFFFFFF7 && (a4)
          {
            v14 = &unk_27748;
            goto LABEL_3920;
          }

          return result;
        }

        if (a3 == 29033)
        {
          if (a4 != 12431)
          {
            return 0;
          }

          v14 = &unk_27E24;
          goto LABEL_3920;
        }

        if (a3 != 29053)
        {
          return result;
        }

        if ((a4 - 12425) >= 5 && a4 != 12387)
        {
          if (a4 != 12390)
          {
            return 0;
          }

          v14 = &unk_27910;
          goto LABEL_3920;
        }

LABEL_2005:
        v14 = &unk_27028;
        goto LABEL_3920;
      }

      if (a3 <= 29693)
      {
        if (a3 <= 29308)
        {
          if (a3 <= 29189)
          {
            switch(a3)
            {
              case 29087:
                result = 0;
                if (a4 - 12382) >= 0xFFFFFFF7 && (a4)
                {
                  v14 = &unk_27658;
                  goto LABEL_3920;
                }

                break;
              case 29105:
                if (a4 - 12380) >= 0xFFFFFFFB && (a4)
                {
                  v14 = &unk_27D24;
                  goto LABEL_3920;
                }

                result = 0;
                if ((a4 - 12356) <= 0x19 && ((1 << (a4 - 68)) & 0x2020A81) != 0)
                {
                  v14 = &unk_27620;
                  goto LABEL_3920;
                }

                break;
              case 29123:
                if (a4 != 12420 && a4 != 12360)
                {
                  return 0;
                }

                wcscpy(a2, &unk_2752C);
                v18 = a4 == 12420;
                goto LABEL_2880;
              default:
                return result;
            }

            return result;
          }

          if (a3 != 29190)
          {
            if (a3 == 29238)
            {
              if (a5 != 12362)
              {
                return 0;
              }

              v14 = &unk_27EBC;
              goto LABEL_3920;
            }

            if (a3 != 29245)
            {
              return result;
            }

            v49 = 12420;
            goto LABEL_3286;
          }

          v79 = 12380;
          goto LABEL_2893;
        }

        if (a3 <= 29400)
        {
          if (a3 == 29309)
          {
            goto LABEL_1410;
          }

          if (a3 == 29359)
          {
            result = 0;
            if (a4 - 12382) >= 0xFFFFFFF7 && (a4)
            {
              v14 = &unk_27DE4;
              goto LABEL_3920;
            }

            return result;
          }

          if (a3 != 29378)
          {
            return result;
          }

          if ((a4 - 12356) >= 7 && a4 != 12431 && a4 != 12387)
          {
            return 0;
          }

LABEL_880:
          v14 = &unk_26FD4;
          goto LABEL_3920;
        }

        if (a3 == 29401)
        {
          if ((a4 - 12356) >= 7 && a4 != 12431 && a4 != 12387)
          {
            return 0;
          }

          v14 = &unk_27978;
          goto LABEL_3920;
        }

        if (a3 != 29554)
        {
          if (a3 != 29575)
          {
            return result;
          }

          if (a4 != 12356)
          {
            return 0;
          }

          v14 = &unk_281E4;
          goto LABEL_3920;
        }

        if ((a4 - 12425) >= 5 && a4 != 12383)
        {
          return 0;
        }

LABEL_2314:
        v14 = &unk_2677C;
        goto LABEL_3920;
      }

      if (a3 <= 30002)
      {
        if (a3 <= 29982)
        {
          if (a3 == 29694)
          {
            if (a4 != 12431)
            {
              if (a4 - 12425) <= 4 || (result = 0, (a4 - 12382) >= 0xFFFFFFF7) && (a4)
              {
                v14 = &unk_27204;
                goto LABEL_3920;
              }

              return result;
            }

            goto LABEL_2824;
          }

          if (a3 != 29976)
          {
            if (a3 != 29978)
            {
              return result;
            }

            if (a4 != 12384)
            {
              return 0;
            }

            v14 = &unk_27804;
            goto LABEL_3920;
          }

          result = 0;
          if ((a4 - 12356) > 0x19 || ((1 << (a4 - 68)) & 0x2022891) == 0)
          {
            return result;
          }

          goto LABEL_2234;
        }

        if (a3 != 29983)
        {
          if (a3 != 29987)
          {
            if (a3 != 29992)
            {
              return result;
            }

            if (a4 != 12356)
            {
              return 0;
            }

            v14 = &unk_2817C;
            goto LABEL_3920;
          }

          if ((a4 - 12414) >= 5 && a4 != 12435)
          {
            return 0;
          }

LABEL_2291:
          v14 = &unk_27484;
          goto LABEL_3920;
        }

        if (a4 - 12370) >= 0xFFFFFFF9 && (a4)
        {
          v93 = &unk_268B4;
          goto LABEL_2915;
        }

        if (a4 != 12420)
        {
          if (a4 != 12360)
          {
            if (a4 != 12356)
            {
              if ((a4 - 12376) <= 4 && (a4 & 1) == 0)
              {
                v14 = &unk_27874;
                goto LABEL_3920;
              }

              if ((a4 - 12414) >= 5 && a4 != 12435)
              {
                if (a4 == 12428)
                {
                  v14 = &unk_274CC;
                  goto LABEL_3920;
                }

                return 0;
              }

              goto LABEL_1665;
            }

LABEL_3145:
            v14 = &unk_26AD0;
            goto LABEL_3920;
          }

LABEL_2551:
          v14 = &unk_269C0;
          goto LABEL_3920;
        }

LABEL_2712:
        v11 = &unk_269C0;
        goto LABEL_3825;
      }

      if (a3 <= 30040)
      {
        if (a3 == 30003)
        {
          result = 0;
          if (a4 - 12382) >= 0xFFFFFFF7 && (a4)
          {
            v14 = &unk_27108;
            goto LABEL_3920;
          }

          return result;
        }

        if (a3 != 30011)
        {
          if (a3 != 30031)
          {
            return result;
          }

          if ((a4 - 12425) > 4)
          {
            if (a4 == 12414)
            {
              v14 = &unk_26914;
              goto LABEL_3920;
            }

            return 0;
          }

          v14 = &unk_26908;
          goto LABEL_3920;
        }

LABEL_1756:
        if ((a4 - 12363) > 8)
        {
          if (a4 != 12356)
          {
            return 0;
          }
        }

        else if ((a4 & 1) == 0)
        {
          return 0;
        }

        v14 = &unk_26BB4;
        goto LABEL_3920;
      }

      if (a3 == 30041)
      {
        goto LABEL_1769;
      }

      if (a3 == 30064)
      {
        if (a4 != 12394)
        {
          return 0;
        }

        v14 = &unk_26924;
        goto LABEL_3920;
      }

      if (a3 != 30067)
      {
        return result;
      }

      if ((a4 - 12414) < 5)
      {
LABEL_3240:
        v14 = &unk_27754;
        goto LABEL_3920;
      }

      v52 = 12435;
LABEL_3239:
      if (a4 != v52)
      {
        return 0;
      }

      goto LABEL_3240;
    }

    if (a3 <= 32075)
    {
      if (a3 <= 31033)
      {
        if (a3 <= 30426)
        {
          if (a3 <= 30201)
          {
            if (a3 <= 30148)
            {
              if (a3 == 30094)
              {
                if (a4 != 12435)
                {
                  return 0;
                }

                v14 = &unk_27994;
                goto LABEL_3920;
              }

              if (a3 == 30097)
              {
                if (((a4 - 12356) > 0x1F || ((1 << (a4 - 68)) & 0x8000007B) == 0 && a4 != 12358) && a4 != 12431)
                {
                  return 0;
                }

                v14 = &unk_26E7C;
                goto LABEL_3920;
              }

              if (a3 != 30130)
              {
                return result;
              }

              if (a4 != 12428)
              {
                return 0;
              }

              if (a5 == 27671)
              {
                v14 = &unk_27198;
                goto LABEL_3920;
              }

              goto LABEL_2597;
            }

            if (a3 == 30149)
            {
              if ((a4 - 12414) >= 5 && a4 != 12435)
              {
                return 0;
              }

              v14 = &unk_27190;
              goto LABEL_3920;
            }

            if (a3 != 30171)
            {
              if (a3 != 30185)
              {
                return result;
              }

              v34 = 12369;
LABEL_1483:
              if (a4 != v34)
              {
                return 0;
              }

              goto LABEL_1484;
            }

            if ((a4 - 12363) <= 8)
            {
              if ((a4 & 1) == 0)
              {
                return 0;
              }

              goto LABEL_3138;
            }

            if ((a4 - 12414) <= 0x15 && ((1 << (a4 - 126)) & 0x20001F) != 0)
            {
              goto LABEL_3138;
            }

            v25 = 12356;
LABEL_3137:
            if (a4 != v25)
            {
              return 0;
            }

LABEL_3138:
            v14 = &unk_27500;
            goto LABEL_3920;
          }

          if (a3 <= 30330)
          {
            if (a3 == 30202)
            {
              if (a4 != 12428)
              {
                return 0;
              }

              v14 = &unk_282B4;
              goto LABEL_3920;
            }

            if (a3 != 30290)
            {
              if (a3 != 30330)
              {
                return result;
              }

              if (a4 - 12382) >= 0xFFFFFFF7 && (a4)
              {
                v14 = &unk_27DC8;
                goto LABEL_3920;
              }

              result = 0;
              if (a4 - 12383) > 9 || (a4)
              {
                return result;
              }

              goto LABEL_3157;
            }

            v21 = 12360;
LABEL_2775:
            if (a4 != v21)
            {
              return 0;
            }

            v14 = &unk_268B4;
            goto LABEL_3920;
          }

          if (a3 != 30331)
          {
            if (a3 == 30333)
            {
              if (a4 != 12369)
              {
                if ((a4 - 12363) > 8)
                {
                  if (a4 != 12373 && a4 != 12356)
                  {
                    return 0;
                  }
                }

                else if ((a4 & 1) == 0)
                {
                  return 0;
                }

                v14 = &unk_27D94;
                goto LABEL_3920;
              }

              v14 = &unk_27BC0;
            }

            else
            {
              if (a3 != 30423)
              {
                return result;
              }

              if ((a4 - 12414) >= 5 && a4 != 12435)
              {
                return 0;
              }

              v14 = &unk_27C5C;
            }

            goto LABEL_3920;
          }

          goto LABEL_1759;
        }

        if (a3 <= 30567)
        {
          if (a3 <= 30494)
          {
            if (a3 == 30427)
            {
              if ((a4 - 12425) >= 5 && a4 != 12387)
              {
                return 0;
              }

              v14 = &unk_2752C;
              goto LABEL_3920;
            }

            if (a3 != 30452)
            {
              if (a3 != 30465)
              {
                return result;
              }

              if (a4 != 12415)
              {
                return 0;
              }

              v14 = &unk_27738;
              goto LABEL_3920;
            }

            if ((a4 - 12425) >= 5)
            {
              if (a4 == 12368)
              {
                goto LABEL_2819;
              }

              if (a4 != 12387 && ((a4 - 12382) < 0xFFFFFFF7 || (a4 & 1) == 0))
              {
                if (a4 != 12385)
                {
                  return 0;
                }

                v14 = &unk_27594;
                goto LABEL_3920;
              }
            }

            goto LABEL_2254;
          }

          if (a3 == 30495)
          {
            if (a4 != 12387)
            {
              return 0;
            }

            goto LABEL_3226;
          }

          if (a3 != 30496)
          {
            if (a3 != 30528)
            {
              return result;
            }

            goto LABEL_1764;
          }

          if ((a4 - 12363) > 8)
          {
            if (a4 == 12356)
            {
              goto LABEL_2286;
            }

            if ((a4 - 12382) < 0xFFFFFFF7)
            {
LABEL_2285:
              if ((a4 - 12425) >= 5 && a4 != 12387)
              {
                return 0;
              }

              goto LABEL_2286;
            }
          }

          if ((a4 & 1) == 0)
          {
            goto LABEL_2285;
          }

LABEL_2286:
          v14 = &unk_28098;
          goto LABEL_3920;
        }

        if (a3 > 30740)
        {
          if (a3 == 30741)
          {
            if ((a4 - 12363) > 8)
            {
              if (a4 != 12356)
              {
                return 0;
              }
            }

            else if ((a4 & 1) == 0)
            {
              return 0;
            }

            v14 = &unk_26AFC;
            goto LABEL_3920;
          }

          if (a3 != 30772)
          {
            if (a3 != 30952)
            {
              return result;
            }

            if ((a4 - 12363) > 8)
            {
              if (a4 != 12356)
              {
                return 0;
              }
            }

            else if ((a4 & 1) == 0)
            {
              return 0;
            }

            v14 = &unk_27180;
            goto LABEL_3920;
          }

          if ((a4 - 12425) >= 5 && a4 != 12387)
          {
            return 0;
          }

          v14 = &unk_27D58;
          goto LABEL_3920;
        }

        if (a3 == 30568)
        {
          if ((a4 - 12414) >= 5 && a4 != 12435)
          {
            return 0;
          }

          v14 = &unk_28328;
          goto LABEL_3920;
        }

        if (a3 == 30693)
        {
          if ((a4 - 12425) >= 5 && a4 != 12387)
          {
            return 0;
          }

          v10 = &unk_27308;
          goto LABEL_2878;
        }

        if (a3 != 30740)
        {
          return result;
        }

        if ((a4 - 12363) > 8)
        {
          if (a4 != 12356)
          {
            v31 = (a4 & 1) == 0;
            goto LABEL_3745;
          }
        }

        else if ((a4 & 1) == 0)
        {
          v31 = 1;
LABEL_3745:
          result = 0;
          if ((a4 - 12364) <= 8 && v31)
          {
            v14 = &unk_26BD8;
            goto LABEL_3920;
          }

          return result;
        }

        v14 = &unk_27180;
        goto LABEL_3920;
      }

      if (a3 <= 31504)
      {
        if (a3 <= 31291)
        {
          if (a3 <= 31104)
          {
            switch(a3)
            {
              case 31034:
                result = 0;
                if (a4 - 12382) >= 0xFFFFFFF7 && (a4)
                {
                  v14 = &unk_2754C;
                  goto LABEL_3920;
                }

                return result;
              case 31069:
                if ((a4 - 12356) >= 7 && a4 != 12431 && a4 != 12387)
                {
                  return 0;
                }

                v14 = &unk_26958;
                break;
              case 31085:
                if ((a4 - 12425) >= 5 && a4 != 12387)
                {
                  return 0;
                }

                v14 = &unk_273B4;
                break;
              default:
                return result;
            }

            goto LABEL_3920;
          }

          if (a3 == 31105)
          {
            result = 0;
            if ((a4 - 12374) <= 4 && ((1 << (a4 - 86)) & 0x15) != 0)
            {
              v14 = &unk_26F50;
              goto LABEL_3920;
            }

            return result;
          }

          if (a3 == 31216)
          {
            v52 = 12360;
            goto LABEL_3239;
          }

          v20 = 31227;
          goto LABEL_1503;
        }

        if (a3 <= 31360)
        {
          if (a3 == 31292)
          {
            if ((a4 - 12364) > 8)
            {
              if (a4 != 12356)
              {
                return 0;
              }
            }

            else if (a4)
            {
              return 0;
            }

            v14 = &unk_26B64;
            goto LABEL_3920;
          }

          if (a3 != 31309)
          {
            if (a3 != 31354)
            {
              return result;
            }

            if ((a4 - 12363) <= 8)
            {
              if ((a4 & 1) == 0)
              {
                return 0;
              }

              goto LABEL_1351;
            }

            if (a4 == 12375)
            {
              goto LABEL_3167;
            }

            v44 = 12356;
            goto LABEL_1350;
          }

LABEL_1727:
          if ((a4 - 12414) < 5)
          {
LABEL_2494:
            v14 = &unk_267E0;
            goto LABEL_3920;
          }

          v56 = 12435;
LABEL_2493:
          if (a4 != v56)
          {
            return 0;
          }

          goto LABEL_2494;
        }

        if (a3 == 31361)
        {
LABEL_1764:
          if ((a4 - 12363) <= 8)
          {
            if ((a4 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_2494;
          }

          v56 = 12356;
          goto LABEL_2493;
        }

        if (a3 != 31435)
        {
          if (a3 != 31478)
          {
            return result;
          }

          if ((a4 - 12356) <= 0x1F && (((1 << (a4 - 68)) & 0x8000007B) != 0 || a4 == 12358) || a4 == 12431)
          {
            v14 = &unk_26F5C;
            goto LABEL_3920;
          }

          if ((a4 - 12425) > 4)
          {
            return 0;
          }

LABEL_3698:
          v14 = &unk_26ECC;
          goto LABEL_3920;
        }

        if ((a4 - 12383) > 9)
        {
          return 0;
        }

        if (a5 <= 26396)
        {
          if (a5 == 20808 || a5 == 22805)
          {
            goto LABEL_3886;
          }

          v74 = 25163;
        }

        else if (a5 > 32206)
        {
          if (a5 == 38555)
          {
            goto LABEL_3886;
          }

          v74 = 32207;
        }

        else
        {
          if (a5 == 26397)
          {
            goto LABEL_3886;
          }

          v74 = 30446;
        }

        if (a5 != v74)
        {
          goto LABEL_2264;
        }

LABEL_3886:
        v14 = &unk_267BC;
        goto LABEL_3920;
      }

      if (a3 <= 31895)
      {
        if (a3 > 31688)
        {
          if (a3 == 31689)
          {
            if ((a4 - 12363) > 8)
            {
              if (a4 != 12356)
              {
                return 0;
              }
            }

            else if ((a4 & 1) == 0)
            {
              return 0;
            }

            v14 = &unk_27B64;
            goto LABEL_3920;
          }

          if (a3 != 31725 && a3 != 31840)
          {
            return result;
          }

          if ((a4 - 12425) >= 5 && a4 != 12387)
          {
            return 0;
          }

          v14 = &unk_26A14;
          goto LABEL_3920;
        }

        if (a3 == 31505)
        {
          result = 0;
          if (a4 > 12386)
          {
            if (a4 != 12387 && a4 != 12431)
            {
              if (a4 != 12415)
              {
                return result;
              }

              v14 = &unk_2677C;
              goto LABEL_3920;
            }
          }

          else if ((a4 - 12356) >= 7)
          {
            return result;
          }

          v14 = &unk_27760;
          goto LABEL_3920;
        }

        if (a3 == 31561)
        {
          if (a4 != 12375)
          {
            return 0;
          }

          v14 = &unk_27C68;
          goto LABEL_3920;
        }

        if (a3 != 31572)
        {
          return result;
        }

        if (a4 != 12360)
        {
          return 0;
        }

        goto LABEL_2514;
      }

      if (a3 <= 32047)
      {
        if (a3 == 31896)
        {
          if ((a4 - 12425) >= 5 && a4 != 12387)
          {
            return 0;
          }

          v14 = &unk_27D3C;
          goto LABEL_3920;
        }

        if (a3 != 32013)
        {
          if (a3 != 32027)
          {
            return result;
          }

          if ((a4 - 12425) > 4)
          {
            return 0;
          }

          v14 = &unk_27F08;
          goto LABEL_3920;
        }

        goto LABEL_1238;
      }

      if (a3 != 32048)
      {
        if (a3 != 32066)
        {
          if (a3 != 32068)
          {
            return result;
          }

          if ((a4 - 12414) >= 5 && a4 != 12435)
          {
            return 0;
          }

          goto LABEL_1781;
        }

        result = 0;
        if (a4 <= 12424)
        {
          if (a4 == 12360)
          {
            goto LABEL_3145;
          }

          if (a4 != 12387)
          {
            return result;
          }
        }

        else if ((a4 - 12425) >= 5)
        {
          if (a4 != 12431)
          {
            return result;
          }

          goto LABEL_3145;
        }

        v14 = &unk_275E4;
        goto LABEL_3920;
      }

      if (a4 != 12420)
      {
        v94 = 12363;
LABEL_2945:
        if (a4 != v94)
        {
          return 0;
        }

        goto LABEL_2946;
      }

      goto LABEL_2946;
    }

    if (a3 <= 32770)
    {
      if (a3 <= 32298)
      {
        if (a3 <= 32153)
        {
          if (a3 <= 32096)
          {
            if (a3 == 32076)
            {
              if (*(a6 + 8) == 12390 && *(a6 + 12) == 12400 || (a4 - 12385) <= 2)
              {
                goto LABEL_3022;
              }

              if (((a4 - 12383) > 0xB || ((1 << (a4 - 95)) & 0x881) == 0) && (a4 - 12425) > 4)
              {
                return 0;
              }

LABEL_3392:
              v14 = &unk_26830;
              goto LABEL_3920;
            }

            if (a3 != 32080)
            {
              if (a3 != 32094)
              {
                return result;
              }

              if ((a4 - 12425) >= 5 && a4 != 12387)
              {
                if ((a4 - 12414) > 4)
                {
                  return 0;
                }

                goto LABEL_2831;
              }

LABEL_1256:
              v14 = &unk_25988;
              goto LABEL_3920;
            }

            v69 = a4 - 99;
            if ((a4 - 12387) > 0x30)
            {
              goto LABEL_3842;
            }

            if (((1 << v69) & 0x1000002492000) != 0)
            {
              wcscpy(a2, dword_27154);
              v70 = 12400;
              goto LABEL_2686;
            }

            if (((1 << v69) & 0x100000000001) == 0)
            {
LABEL_3842:
              if ((a4 - 12356) >= 7)
              {
                return 0;
              }
            }

            v14 = &unk_27160;
            goto LABEL_3920;
          }

          if (a3 == 32097)
          {
            if ((a4 - 12414) >= 5 && a4 != 12435)
            {
              return 0;
            }

            v14 = &unk_281BC;
            goto LABEL_3920;
          }

          if (a3 != 32118)
          {
            if (a3 != 32153)
            {
              return result;
            }

LABEL_1493:
            if ((a4 - 12364) > 8)
            {
              if (a4 != 12356)
              {
                return 0;
              }
            }

            else if (a4)
            {
              return 0;
            }

            goto LABEL_2494;
          }

          goto LABEL_1669;
        }

        if (a3 > 32231)
        {
          if (a3 != 32232)
          {
            if (a3 == 32244)
            {
              if ((a4 - 12425) >= 5 && a4 != 12387)
              {
                return 0;
              }

              v14 = &unk_26800;
            }

            else
            {
              if (a3 != 32283)
              {
                return result;
              }

              if ((a4 - 12425) >= 5 && a4 != 12387)
              {
                return 0;
              }

              v14 = &unk_27DB8;
            }

            goto LABEL_3920;
          }

          if ((a4 - 12414) < 5)
          {
LABEL_3110:
            v14 = &unk_2676C;
            goto LABEL_3920;
          }

          v48 = 12435;
LABEL_2926:
          if (a4 != v48)
          {
            return 0;
          }

          goto LABEL_3110;
        }

        if (a3 == 32154)
        {
          if ((a4 - 12363) > 8)
          {
            if (a4 != 12356)
            {
              return 0;
            }
          }

          else if ((a4 & 1) == 0)
          {
            return 0;
          }

          v14 = &unk_27A34;
          goto LABEL_3920;
        }

        if (a3 != 32180)
        {
          if (a3 != 32224)
          {
            return result;
          }

          if (a4 != 12417)
          {
            v30 = 12414;
            goto LABEL_2830;
          }

          goto LABEL_2831;
        }

        if ((a4 - 12425) < 5 || a4 == 12387)
        {
          v14 = &unk_27A34;
          goto LABEL_3920;
        }

        v47 = 12376;
LABEL_2419:
        if (a4 != v47)
        {
          return 0;
        }

        goto LABEL_2420;
      }

      if (a3 <= 32653)
      {
        if (a3 <= 32367)
        {
          if (a3 != 32299)
          {
            if (a3 == 32331)
            {
              if ((a4 - 12364) > 8)
              {
                if (a4 != 12356)
                {
                  return 0;
                }
              }

              else if (a4)
              {
                return 0;
              }

              v14 = &unk_270F0;
              goto LABEL_3920;
            }

            if (a3 != 32341)
            {
              return result;
            }

            if ((a4 - 12356) >= 7 && a4 != 12431 && a4 != 12387)
            {
              return 0;
            }

            v14 = &unk_27968;
            goto LABEL_3920;
          }

          if ((a4 - 12356) >= 7 && a4 != 12431 && a4 != 12387)
          {
            return 0;
          }

          goto LABEL_2815;
        }

        if (a3 != 32368)
        {
          if (a3 != 32622)
          {
            if (a3 != 32624)
            {
              return result;
            }

            result = 0;
            if ((a4 - 12382) < 0xFFFFFFF7 || (a4 & 1) == 0)
            {
              return result;
            }

            v14 = &unk_27DD4;
            goto LABEL_3920;
          }

          if ((a4 - 12363) <= 8)
          {
            if ((a4 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_3145;
          }

          v88 = 12356;
          goto LABEL_3144;
        }

        if (a4 != 12428)
        {
          if (a4 != 12426)
          {
            return 0;
          }

          v14 = &unk_26C1C;
          goto LABEL_3920;
        }

LABEL_2978:
        v14 = &unk_26840;
        goto LABEL_3920;
      }

      if (a3 <= 32721)
      {
        if (a3 == 32654)
        {
          if (a4 != 12375)
          {
            return 0;
          }

          v14 = &unk_27E70;
          goto LABEL_3920;
        }

        if (a3 != 32676)
        {
          if (a3 != 32701)
          {
            return result;
          }

          if (a4 != 12400)
          {
            return 0;
          }

          goto LABEL_2760;
        }

        if (a4 != 12428)
        {
          if (a4 != 12364)
          {
            return 0;
          }

          v14 = &unk_270A0;
          goto LABEL_3920;
        }

        goto LABEL_2978;
      }

      if (a3 == 32722)
      {
        if ((a4 - 12356) >= 7 && a4 != 12431 && a4 != 12387)
        {
          return 0;
        }

        v14 = &unk_26D58;
        goto LABEL_3920;
      }

      if (a3 != 32755)
      {
        if (a3 != 32769)
        {
          return result;
        }

        if (a4 == 12369)
        {
          v14 = &unk_26820;
          goto LABEL_3920;
        }

        v51 = 12356;
LABEL_2650:
        if (a4 != v51)
        {
          return 0;
        }

        goto LABEL_2651;
      }

LABEL_1729:
      result = 0;
      if (a4 - 12382) >= 0xFFFFFFF7 && (a4)
      {
        v14 = &unk_26A38;
        goto LABEL_3920;
      }

      return result;
    }

    if (a3 <= 33257)
    {
      if (a3 <= 32945)
      {
        if (a3 > 32861)
        {
          if (a3 == 32862 || a3 == 32884)
          {
            v57 = a4 - 12363;
            if ((a4 - 12363) > 8)
            {
              if (a4 != 12356)
              {
                return 0;
              }
            }

            else if ((a4 & 1) == 0)
            {
              return 0;
            }

            wcscpy(a2, &unk_2678C);
            v18 = (v57 & 0xFFFFFFF7) == 0;
            goto LABEL_2880;
          }

          if (a3 != 32933)
          {
            return result;
          }

          if ((a4 - 12387) <= 0x2A && ((1 << (a4 - 99)) & 0x7C000000001) != 0)
          {
            v14 = &unk_27E44;
            goto LABEL_3920;
          }

          v15 = 12360;
LABEL_3738:
          if (a4 != v15)
          {
            return 0;
          }

LABEL_3739:
          v14 = &unk_2679C;
          goto LABEL_3920;
        }

        if (a3 == 32771)
        {
          if (a4 != 12360)
          {
            return 0;
          }

          v14 = &unk_27310;
          goto LABEL_3920;
        }

        if (a3 != 32784)
        {
          if (a3 != 32842)
          {
            return result;
          }

          if (a4 != 12363)
          {
            return 0;
          }

          v14 = &unk_2738C;
          goto LABEL_3920;
        }

LABEL_1669:
        if (a4 == 12360)
        {
          goto LABEL_3022;
        }

        goto LABEL_1670;
      }

      if (a3 <= 33072)
      {
        if (a3 == 32946)
        {
          if ((a4 - 12414) >= 5 && a4 != 12435)
          {
            if ((a4 - 12383) <= 9)
            {
              v14 = &unk_269A4;
              goto LABEL_3920;
            }

            return 0;
          }

          v14 = &unk_26990;
          goto LABEL_3920;
        }

        if (a3 != 32972)
        {
          if (a3 != 33029)
          {
            return result;
          }

          if (a4 == 12363)
          {
            v14 = &unk_26FE0;
            goto LABEL_3920;
          }

          if (a4 != 12360)
          {
            result = 0;
            if ((a4 - 12382) < 0xFFFFFFF7 || (a4 & 1) == 0)
            {
              return result;
            }

            v14 = &unk_26974;
            goto LABEL_3920;
          }

LABEL_2731:
          v14 = &unk_26F90;
          goto LABEL_3920;
        }

        if ((a4 - 12363) <= 8)
        {
          if ((a4 & 1) == 0)
          {
            return 0;
          }

          goto LABEL_3130;
        }

        v66 = 12356;
LABEL_3129:
        if (a4 != v66)
        {
          return 0;
        }

LABEL_3130:
        v14 = &unk_27D78;
        goto LABEL_3920;
      }

      if (a3 == 33073)
      {
        if ((a4 - 12364) > 8)
        {
          if (a4 != 12356)
          {
            result = 0;
            if (a4 - 12382) >= 0xFFFFFFF7 && (a4)
            {
              v14 = &unk_27AD4;
              goto LABEL_3920;
            }

            return result;
          }
        }

        else if (a4)
        {
          return 0;
        }

        v14 = &unk_267F0;
        goto LABEL_3920;
      }

      if (a3 != 33192)
      {
        if (a3 != 33256)
        {
          return result;
        }

        goto LABEL_1602;
      }

      if (a4 != 12428)
      {
        v37 = 12425;
LABEL_2317:
        if (a4 != v37)
        {
          return 0;
        }

        goto LABEL_2318;
      }

      goto LABEL_2318;
    }

    if (a3 <= 33309)
    {
      if (a3 <= 33267)
      {
        if (a3 == 33258)
        {
          if (a4 == 12425)
          {
            v14 = &unk_27564;
            goto LABEL_3920;
          }

          if (a4 != 12378)
          {
            return 0;
          }

          v14 = &unk_27558;
          goto LABEL_3920;
        }

        if (a3 != 33261)
        {
          if (a3 != 33267)
          {
            return result;
          }

          if ((a4 - 12425) < 5)
          {
            goto LABEL_3138;
          }

          if (a4 == 12415)
          {
            goto LABEL_3031;
          }

          v25 = 12387;
          goto LABEL_3137;
        }

        if ((a4 - 12358) > 0xF)
        {
          goto LABEL_3412;
        }

        v71 = 1 << (a4 - 70);
        if ((v71 & 0x8A20) != 0)
        {
          v14 = &unk_275FC;
          goto LABEL_3920;
        }

        if ((v71 & 5) == 0)
        {
LABEL_3412:
          v13 = 12431;
LABEL_3413:
          if (a4 != v13)
          {
            return 0;
          }

          goto LABEL_3414;
        }

        goto LABEL_3414;
      }

      if (a3 != 33268)
      {
        if (a3 == 33288)
        {
          result = 0;
          if ((a4 - 12374) <= 4 && ((1 << (a4 - 86)) & 0x15) != 0)
          {
            v14 = &unk_26FF4;
            goto LABEL_3920;
          }

          return result;
        }

        if (a3 != 33296)
        {
          return result;
        }

        v50 = 12417;
        goto LABEL_2162;
      }

      result = 0;
      if ((a4 - 12382) < 0xFFFFFFF7 || (a4 & 1) == 0)
      {
        return result;
      }

LABEL_2918:
      v14 = &unk_27500;
      goto LABEL_3920;
    }

    if (a3 > 33502)
    {
      if (a3 == 33503)
      {
        if (a4 != 12418)
        {
          return 0;
        }

        v14 = &unk_282C4;
        goto LABEL_3920;
      }

      if (a3 == 33509)
      {
        if (a4 != 12375)
        {
          if ((a4 - 12356) <= 0xF)
          {
            v14 = &unk_26BF0;
            goto LABEL_3920;
          }

          return 0;
        }

        v14 = &unk_2752C;
        goto LABEL_3920;
      }

      if (a3 != 33510)
      {
        return result;
      }

      result = 0;
      if ((a4 - 12356) > 0x13)
      {
        return result;
      }

      if (((1 << (a4 - 68)) & 0x22881) != 0)
      {
        v14 = &unk_27074;
        goto LABEL_3920;
      }

      if (a4 != 12375)
      {
        return result;
      }

      goto LABEL_880;
    }

    if (a3 == 33310)
    {
      if ((a4 - 12356) >= 7 && a4 != 12431 && a4 != 12387)
      {
        return 0;
      }

      v14 = &unk_26D28;
      goto LABEL_3920;
    }

    if (a3 == 33391)
    {
      if ((a4 - 12363) > 8)
      {
        if (a4 != 12373 && a4 != 12356)
        {
          return 0;
        }
      }

      else if ((a4 & 1) == 0)
      {
        return 0;
      }

      v14 = &unk_269EC;
      goto LABEL_3920;
    }

    if (a3 != 33459)
    {
      return result;
    }

    if (a4 == 12375)
    {
      v14 = &unk_28024;
      goto LABEL_3920;
    }

    if (a4 == 12400)
    {
      v14 = &unk_28018;
      goto LABEL_3920;
    }

    return 0;
  }

  if (a3 <= 36765)
  {
    if (a3 <= 35464)
    {
      if (a3 <= 35205)
      {
        if (a3 <= 34383)
        {
          if (a3 <= 33899)
          {
            if (a3 <= 33805)
            {
              if (a3 == 33538)
              {
                if ((a4 - 12425) >= 5 && a4 != 12387)
                {
                  return 0;
                }

                v14 = &unk_280C8;
                goto LABEL_3920;
              }

              if (a3 != 33618)
              {
                if (a3 != 33804)
                {
                  return result;
                }

                if (a4 != 12360)
                {
                  return 0;
                }

                goto LABEL_1472;
              }

              if (a4 == 12435)
              {
LABEL_1787:
                v14 = &unk_27324;
                goto LABEL_3920;
              }

              if (a4 != 12428)
              {
                if (a4 != 12416)
                {
                  return 0;
                }

                goto LABEL_1787;
              }

LABEL_1677:
              v14 = &unk_2676C;
              goto LABEL_3920;
            }

            if (a3 != 33806)
            {
              if (a3 != 33853)
              {
                if (a3 != 33879)
                {
                  return result;
                }

                if (a4 != 12375)
                {
                  result = 0;
                  if (a4 - 12382) >= 0xFFFFFFF7 && (a4)
                  {
                    v14 = &unk_27204;
                    goto LABEL_3920;
                  }

                  return result;
                }

                v14 = &unk_27B9C;
                goto LABEL_3920;
              }

              if (a4 != 12392 && a4 != 12385)
              {
                return 0;
              }

LABEL_3824:
              v11 = &unk_26AD0;
              goto LABEL_3825;
            }

            if (a4 == 12403)
            {
              v14 = &unk_26930;
              goto LABEL_3920;
            }

            if (a4 == 12360)
            {
              goto LABEL_2959;
            }

            if ((a4 - 12414) > 2)
            {
              if (a4 == 12428)
              {
                v14 = &unk_2694C;
                goto LABEL_3920;
              }

              return 0;
            }

            v14 = &unk_2693C;
LABEL_3920:
            wcscpy(a2, v14);
            return 1;
          }

          if (a3 > 34064)
          {
            if (a3 == 34065)
            {
              if ((a4 - 12414) >= 5 && a4 != 12435)
              {
                if (a4 == 12429)
                {
                  v14 = &unk_27F24;
                  goto LABEL_3920;
                }

                return 0;
              }

              v14 = &unk_27F3C;
              goto LABEL_3920;
            }

            if (a3 == 34180)
            {
              if ((a4 - 12363) > 8)
              {
                if (a4 != 12373 && a4 != 12356)
                {
                  return 0;
                }
              }

              else if ((a4 & 1) == 0)
              {
                return 0;
              }

              v14 = &unk_27DA0;
              goto LABEL_3920;
            }

            if (a3 != 34214)
            {
              return result;
            }

            goto LABEL_1661;
          }

          if (a3 != 33900)
          {
            if (a3 == 33976)
            {
              result = 0;
              if (a4 - 12382) >= 0xFFFFFFF7 && (a4)
              {
                v14 = &unk_26840;
                goto LABEL_3920;
              }

              return result;
            }

            if (a3 != 33988)
            {
              return result;
            }

            if (a4 != 12360)
            {
              return 0;
            }

            goto LABEL_2976;
          }

          if ((a4 - 12425) < 5 || a4 == 12387)
          {
            v14 = &unk_279DC;
            goto LABEL_3920;
          }

          return 1;
        }

        if (a3 <= 35008)
        {
          if (a3 > 34919)
          {
            switch(a3)
            {
              case 34920:
                if (a4 == 12428)
                {
                  goto LABEL_3395;
                }

                if (a4 == 12431)
                {
                  v14 = &unk_271F8;
                  goto LABEL_3920;
                }

                result = 0;
                if (a4 - 12382) >= 0xFFFFFFF7 && (a4)
                {
LABEL_3395:
                  v14 = &unk_27204;
                  goto LABEL_3920;
                }

                return result;
              case 34928:
                if (a4 != 12360)
                {
                  return 0;
                }

                v14 = &unk_27824;
                break;
              case 34987:
                if ((a4 - 12382) < 0xFFFFFFF7 || (a4 & 1) == 0)
                {
                  if ((a4 - 12425) < 5 || a4 == 12387)
                  {
                    v14 = &unk_27E60;
                    goto LABEL_3920;
                  }

                  return 0;
                }

                v14 = &unk_27E50;
                break;
              default:
                return result;
            }

            goto LABEL_3920;
          }

          if (a3 == 34384)
          {
            if (a4 == 12417)
            {
              v14 = &unk_26EBC;
              goto LABEL_3920;
            }

            if (a4 != 12370)
            {
              return 0;
            }

            v14 = &unk_26EAC;
            goto LABEL_3920;
          }

          if (a3 != 34394)
          {
            if (a3 != 34892)
            {
              return result;
            }

            if (a4 - 12372) >= 0xFFFFFFF7 && (a4)
            {
              goto LABEL_3837;
            }

            result = 0;
            if (a4 <= 12386)
            {
              if ((a4 - 12356) >= 7)
              {
                return result;
              }

              goto LABEL_312;
            }

            if (a4 == 12431)
            {
LABEL_312:
              v14 = &unk_27330;
              goto LABEL_3920;
            }

            if (a4 != 12394)
            {
              if (a4 != 12387)
              {
                return result;
              }

              if (a5 == 12434)
              {
                goto LABEL_312;
              }

LABEL_3837:
              v14 = &unk_268B4;
              goto LABEL_3920;
            }

LABEL_126:
            v14 = &unk_26E4C;
            goto LABEL_3920;
          }

          if (a4 == 12429)
          {
            v14 = &unk_26984;
            goto LABEL_3920;
          }

          if (a4 != 12375)
          {
            return 0;
          }

LABEL_3167:
          v14 = &unk_26F10;
          goto LABEL_3920;
        }

        if (a3 <= 35089)
        {
          if (a3 != 35009)
          {
            if (a3 != 35010)
            {
              if (a3 != 35036)
              {
                return result;
              }

              if ((a4 - 12356) >= 7 && a4 != 12431 && a4 != 12387)
              {
                return 0;
              }

              v14 = &unk_27F78;
              goto LABEL_3920;
            }

            if ((a4 - 12363) > 8)
            {
              if (a4 != 12356)
              {
                return 0;
              }
            }

            else if ((a4 & 1) == 0)
            {
              return 0;
            }

LABEL_3024:
            v14 = &unk_26AF4;
            goto LABEL_3920;
          }

          if ((a4 - 12363) <= 8)
          {
            goto LABEL_2365;
          }

          if (a4 == 12390)
          {
            goto LABEL_3157;
          }

          goto LABEL_3155;
        }

        if (a3 != 35090)
        {
          if (a3 == 35186)
          {
            if ((a4 - 12356) < 7 || a4 == 12431)
            {
              goto LABEL_3821;
            }

            v60 = 12387;
            goto LABEL_3820;
          }

          if (a3 != 35201)
          {
            return result;
          }

          if ((a4 - 12425) >= 5 && a4 != 12387)
          {
            return 0;
          }

          v10 = &unk_268B4;
LABEL_2878:
          wcscpy(a2, v10);
          v35 = 12425;
          goto LABEL_2879;
        }

        if (a4 != 12417)
        {
          return 0;
        }

LABEL_2407:
        v14 = &unk_268AC;
        goto LABEL_3920;
      }

      if (a3 <= 35351)
      {
        if (a3 <= 35301)
        {
          if (a3 <= 35225)
          {
            if (a3 == 35206)
            {
              if ((a4 - 12356) >= 7 && a4 != 12431 && a4 != 12387)
              {
                return 0;
              }

              v14 = &unk_27034;
              goto LABEL_3920;
            }

            if (a3 == 35211)
            {
              if ((a4 - 12425) < 5 || (result = 0, (a4 - 12356) <= 0x22) && ((1 << (a4 - 68)) & 0x408000011) != 0)
              {
                v14 = &unk_271B4;
                goto LABEL_3920;
              }

              return result;
            }

            v16 = 35223;
            goto LABEL_626;
          }

          if (a3 != 35226)
          {
            if (a3 == 35242)
            {
              if (a4 != 12375)
              {
                return 0;
              }

              v14 = &unk_277EC;
              goto LABEL_3920;
            }

            if (a3 != 35299)
            {
              return result;
            }

            if (a4 == 12356 || (a4 - 12363) <= 8)
            {
              v14 = &unk_26BD8;
              goto LABEL_3920;
            }

            result = 0;
            v106 = (a4 - 12387);
            if (v106 > 0x2A)
            {
              return result;
            }

            if (((1 << (a4 - 99)) & 0x5C000000001) == 0)
            {
              if (v106 != 41)
              {
                return result;
              }

              v14 = &unk_26BE0;
              goto LABEL_3920;
            }

LABEL_3712:
            v14 = &unk_26BF0;
            goto LABEL_3920;
          }

          if (a4 != 12417 && a4 != 12414)
          {
            if (a4 != 12360)
            {
              return 0;
            }

            v14 = &unk_26CBC;
            goto LABEL_3920;
          }

LABEL_2387:
          v14 = &unk_26AF4;
          goto LABEL_3920;
        }

        if (a3 <= 35337)
        {
          if (a3 != 35302)
          {
            if (a3 != 35328)
            {
              v26 = 35336;
LABEL_1320:
              if (a3 != v26)
              {
                return result;
              }

LABEL_1545:
              if ((a4 - 12425) >= 5 && a4 != 12387)
              {
                return 0;
              }

              v14 = &unk_270FC;
              goto LABEL_3920;
            }

            result = 0;
            if (a4 <= 12377)
            {
              if ((a4 - 12356) >= 7)
              {
                return result;
              }

              goto LABEL_3837;
            }

            if (a4 == 12378)
            {
              v14 = &unk_26924;
              goto LABEL_3920;
            }

            if (a4 == 12431)
            {
              goto LABEL_3837;
            }

            if (a4 != 12387)
            {
              return result;
            }

LABEL_270:
            v11 = &unk_268B4;
            goto LABEL_3825;
          }

          result = 0;
          v75 = (a4 - 12387);
          if (v75 > 0x2A)
          {
            return result;
          }

          if (((1 << (a4 - 99)) & 0x5C000000001) != 0)
          {
            goto LABEL_3287;
          }

          if (v75 != 41)
          {
            return result;
          }

          goto LABEL_2724;
        }

        if (a3 != 35338)
        {
          if (a3 != 35342)
          {
            if (a3 != 35351)
            {
              return result;
            }

            result = 0;
            if ((a4 - 12382) < 0xFFFFFFF7 || (a4 & 1) == 0)
            {
              return result;
            }

            v14 = &unk_272AC;
            goto LABEL_3920;
          }

          goto LABEL_1663;
        }

LABEL_1118:
        if (a4 != 12397)
        {
          return 0;
        }

        v14 = &unk_27814;
        goto LABEL_3920;
      }

      if (a3 <= 35423)
      {
        if (a3 > 35376)
        {
          switch(a3)
          {
            case 35377:
              result = 0;
              if (a4 - 12382) >= 0xFFFFFFF7 && (a4)
              {
                v14 = &unk_26F1C;
                goto LABEL_3920;
              }

              return result;
            case 35380:
              if (a4 != 12360)
              {
                return 0;
              }

              v14 = &unk_279A0;
              break;
            case 35388:
              result = 0;
              if ((a4 - 12382) < 0xFFFFFFF7 || (a4 & 1) == 0)
              {
                return result;
              }

              v14 = &unk_2776C;
              break;
            default:
              return result;
          }

          goto LABEL_3920;
        }

        if (a3 == 35352)
        {
          result = 0;
          if (a4 - 12382) >= 0xFFFFFFF7 && (a4)
          {
            v14 = &unk_269C8;
            goto LABEL_3920;
          }

          return result;
        }

        if (a3 == 35370)
        {
          if (a4 == 12428)
          {
            v14 = &unk_28038;
            goto LABEL_3920;
          }

          if (a4 != 12397)
          {
            return 0;
          }

          v14 = &unk_27814;
          goto LABEL_3920;
        }

        if (a3 != 35373)
        {
          return result;
        }

        if (a4 != 12369)
        {
          return 0;
        }

LABEL_1821:
        v14 = &unk_27108;
        goto LABEL_3920;
      }

      if (a3 <= 35434)
      {
        if (a3 != 35424)
        {
          if (a3 == 35427)
          {
            if (a4 != 12391)
            {
              return 0;
            }

            goto LABEL_1821;
          }

          if (a3 != 35430)
          {
            return result;
          }

          if (a4 - 12382) >= 0xFFFFFFF7 && (a4)
          {
            v14 = &unk_274E4;
            goto LABEL_3920;
          }

          if (a4 != 12415)
          {
            return 0;
          }

LABEL_3031:
          v14 = &unk_274F0;
          goto LABEL_3920;
        }

        goto LABEL_1716;
      }

      if (a3 != 35435)
      {
        if (a3 == 35440)
        {
          if ((a4 - 12425) >= 5 && a4 != 12387)
          {
            return 0;
          }

          v14 = &unk_26E90;
          goto LABEL_3920;
        }

        if (a3 != 35441)
        {
          return result;
        }

        result = 0;
        if ((a4 - 12382) < 0xFFFFFFF7 || (a4 & 1) == 0)
        {
          return result;
        }

        goto LABEL_2479;
      }

      v76 = 12403;
LABEL_3272:
      if (a4 != v76)
      {
        return 0;
      }

      goto LABEL_3273;
    }

    if (a3 <= 36023)
    {
      if (a3 <= 35557)
      {
        if (a3 <= 35491)
        {
          if (a3 <= 35474)
          {
            if (a3 != 35465)
            {
              if (a3 == 35469)
              {
                if (a4 != 12417)
                {
                  return 0;
                }

                v14 = &unk_27D18;
              }

              else
              {
                if (a3 != 35473)
                {
                  return result;
                }

                if (a4 != 12363)
                {
                  return 0;
                }

                v14 = &unk_28334;
              }

              goto LABEL_3920;
            }

            if (a4 == 12363 || a4 == 12369)
            {
              goto LABEL_3094;
            }

            if (a4 != 12428)
            {
              return 0;
            }

            goto LABEL_3093;
          }

          if (a3 == 35475)
          {
            if ((a4 - 12356) < 7 || (result = 0, (a4 - 12387) <= 0x2C) && ((1 << (a4 - 99)) & 0x104000000001) != 0)
            {
              v14 = &unk_27884;
              goto LABEL_3920;
            }

            return result;
          }

          if (a3 == 35480)
          {
            if ((a4 - 12372) < 0xFFFFFFF7 || (a4 & 1) == 0)
            {
              if ((a4 - 12356) < 7 || a4 == 12431 || a4 == 12387)
              {
                v14 = &unk_28130;
                goto LABEL_3920;
              }

              return 0;
            }

            v14 = &unk_26F90;
            goto LABEL_3920;
          }

          if (a3 != 35486)
          {
            return result;
          }

          if ((a4 - 12425) >= 5 && a4 != 12387)
          {
            return 0;
          }

LABEL_2554:
          v14 = &unk_27220;
          goto LABEL_3920;
        }

        if (a3 > 35518)
        {
          if (a3 == 35519)
          {
            if (a4 != 12409)
            {
              return 0;
            }

            v14 = &unk_27BC0;
            goto LABEL_3920;
          }

          if (a3 != 35531)
          {
            if (a3 != 35533)
            {
              return result;
            }

            if (a4 != 12356)
            {
              return 0;
            }

            v14 = &unk_282F8;
            goto LABEL_3920;
          }

          if (a4 != 12369)
          {
            return 0;
          }

LABEL_1665:
          v14 = &unk_27484;
          goto LABEL_3920;
        }

        if (a3 == 35492)
        {
          if ((a4 - 12425) > 4 && (a4 - 12385) > 5)
          {
            return 0;
          }

          v14 = &unk_26B88;
          goto LABEL_3920;
        }

        if (a3 != 35500)
        {
          if (a3 != 35501)
          {
            return result;
          }

LABEL_1716:
          if ((a4 - 12414) < 5)
          {
            goto LABEL_3102;
          }

          v55 = 12435;
          goto LABEL_1718;
        }

        goto LABEL_1742;
      }

      if (a3 <= 35999)
      {
        if (a3 <= 35640)
        {
          if (a3 == 35558)
          {
            if (a4 != 12417)
            {
              return 0;
            }

            v14 = &unk_27C00;
            goto LABEL_3920;
          }

          if (a3 == 35586)
          {
            if (a4 != 12428)
            {
              return 0;
            }

            v14 = &unk_26958;
            goto LABEL_3920;
          }

          v12 = 35617;
          goto LABEL_807;
        }

        if (a3 == 35641)
        {
          if ((a4 - 12414) >= 5 && a4 != 12435)
          {
            return 0;
          }

          v14 = &unk_26F40;
          goto LABEL_3920;
        }

        if (a3 == 35698)
        {
          if ((a4 - 12425) >= 5 && a4 != 12387)
          {
            return 0;
          }

          v14 = &unk_27798;
          goto LABEL_3920;
        }

        v33 = 35703;
LABEL_1273:
        if (a3 != v33)
        {
          return result;
        }

        if ((a4 - 12425) >= 5 && a4 != 12387)
        {
          return 0;
        }

        v14 = &unk_275CC;
        goto LABEL_3920;
      }

      if (a3 <= 36014)
      {
        if (a3 != 36000)
        {
          if (a3 != 36011)
          {
            if (a3 != 36012)
            {
              return result;
            }

            if (a4 != 12417)
            {
              return 0;
            }

            goto LABEL_3698;
          }

          if (a4 != 12356 && (a4 - 12363) > 8)
          {
            return 0;
          }

          if (a5 != 23556 && a5 != 12426)
          {
            v14 = &unk_26D94;
            goto LABEL_3920;
          }

LABEL_2815:
          v14 = &unk_267F0;
          goto LABEL_3920;
        }

        if ((a4 - 12356) >= 7 && a4 != 12431 && a4 != 12387)
        {
          result = 0;
          if ((a4 - 12372) < 0xFFFFFFF7 || (a4 & 1) == 0)
          {
            return result;
          }

          goto LABEL_2701;
        }

LABEL_2651:
        v14 = &unk_26AD0;
        goto LABEL_3920;
      }

      if (a3 != 36015)
      {
        if (a3 == 36022)
        {
          if ((a4 - 12414) > 4)
          {
            return 0;
          }

          v14 = &unk_28308;
          goto LABEL_3920;
        }

        if (a3 != 36023)
        {
          return result;
        }

LABEL_1025:
        if ((a4 - 12356) >= 7 && a4 != 12431 && a4 != 12387)
        {
          return 0;
        }

        wcscpy(a2, &unk_26B70);
        v35 = 12431;
        goto LABEL_2879;
      }

      if (a4 == 12360)
      {
LABEL_2976:
        v14 = &unk_27B74;
        goto LABEL_3920;
      }

      if (a4 != 12417 && a4 != 12414)
      {
        return 0;
      }

LABEL_3022:
      v14 = &unk_270E8;
      goto LABEL_3920;
    }

    if (a3 <= 36233)
    {
      if (a3 <= 36091)
      {
        if (a3 <= 36059)
        {
          if (a3 != 36024)
          {
            if (a3 != 36027)
            {
              if (a3 != 36028)
              {
                return result;
              }

              if ((a4 - 12425) >= 5)
              {
LABEL_2446:
                v79 = 12387;
LABEL_2893:
                if (a4 != v79)
                {
                  return 0;
                }
              }

LABEL_2894:
              v14 = &unk_269C0;
              goto LABEL_3920;
            }

            if (a4 != 12420)
            {
              return 0;
            }

            v11 = &unk_27BE4;
            goto LABEL_3825;
          }

          result = 0;
          if ((a4 - 12382) < 0xFFFFFFF7 || (a4 & 1) == 0)
          {
            return result;
          }

LABEL_2771:
          v14 = &unk_26B70;
          goto LABEL_3920;
        }

        if (a3 == 36060)
        {
          if (a4 != 12360)
          {
            return 0;
          }

          v14 = &unk_2750C;
          goto LABEL_3920;
        }

        if (a3 != 36068)
        {
          if (a3 != 36074)
          {
            return result;
          }

          goto LABEL_1708;
        }

LABEL_1734:
        if (a4 != 12375)
        {
          return 0;
        }

        v14 = &unk_282D8;
        goto LABEL_3920;
      }

      if (a3 <= 36207)
      {
        if (a3 != 36092)
        {
          if (a3 == 36104)
          {
LABEL_1065:
            if ((a4 - 12425) >= 5 && a4 != 12387)
            {
              return 0;
            }

            goto LABEL_1066;
          }

          if (a3 != 36118)
          {
            return result;
          }
        }

        if ((a4 - 12356) >= 7 && a4 != 12431 && a4 != 12387)
        {
          return 0;
        }

        v14 = &unk_27280;
        goto LABEL_3920;
      }

      if (a3 == 36208)
      {
        if ((a4 - 12425) < 5 || a4 == 12387)
        {
          if (a5 == 23567 || a5 == 16488)
          {
            v14 = &unk_279EC;
          }

          else
          {
            v14 = &unk_279FC;
          }

          goto LABEL_3920;
        }

        return 0;
      }

      if (a3 != 36215)
      {
        if (a3 != 36229)
        {
          return result;
        }

        goto LABEL_1014;
      }

      if (a4 <= 12424)
      {
        if (a4 == 12365 || a4 == 12371)
        {
          goto LABEL_3824;
        }

        if (a4 == 12387)
        {
LABEL_1845:
          v14 = &unk_26E4C;
          goto LABEL_3920;
        }
      }

      else if ((a4 - 12425) < 5)
      {
        goto LABEL_1845;
      }

      result = 0;
      if ((a4 - 12382) < 0xFFFFFFF7 || (a4 & 1) == 0)
      {
        return result;
      }

      goto LABEL_1845;
    }

    if (a3 <= 36467)
    {
      if (a3 <= 36361)
      {
        if (a3 == 36234)
        {
LABEL_1014:
          if (a4 - 12382) >= 0xFFFFFFF7 && (a4)
          {
            goto LABEL_3739;
          }

          v34 = 12360;
          goto LABEL_1483;
        }

        if (a3 == 36275)
        {
          if ((a4 - 12425) <= 4)
          {
            v11 = &unk_270E8;
            goto LABEL_3825;
          }

          result = 0;
          if ((a4 - 12382) < 0xFFFFFFF7 || (a4 & 1) == 0)
          {
            return result;
          }

          goto LABEL_3022;
        }

        if (a3 != 36339)
        {
          return result;
        }

        result = 0;
        if ((a4 - 12397) > 0x26)
        {
          return result;
        }

        if (((1 << (a4 - 109)) & 0x4000009248) == 0)
        {
          if (a4 != 12397)
          {
            return result;
          }

          goto LABEL_2894;
        }

LABEL_2420:
        v14 = &unk_26BD8;
        goto LABEL_3920;
      }

      if (a3 != 36362)
      {
        if (a3 != 36367)
        {
          if (a3 != 36466)
          {
            return result;
          }

          if ((a4 - 12425) >= 5 && a4 != 12387)
          {
            return 0;
          }

          v14 = &unk_28348;
          goto LABEL_3920;
        }

        if ((a4 - 12414) >= 5 && a4 != 12435)
        {
          return 0;
        }

        wcscpy(a2, &unk_26820);
        v35 = 12414;
LABEL_2879:
        v18 = a4 == v35;
LABEL_2880:
        if (v18)
        {
          return 2;
        }

        else
        {
          return 1;
        }
      }

LABEL_1706:
      if ((a4 - 12425) >= 5 && a4 != 12387)
      {
        return 0;
      }

      v14 = &unk_26974;
      goto LABEL_3920;
    }

    if (a3 <= 36604)
    {
      if (a3 != 36468)
      {
        if (a3 == 36493)
        {
          goto LABEL_1706;
        }

        if (a3 != 36578)
        {
          return result;
        }

        if ((a4 - 12364) > 8)
        {
          if ((a4 - 12400) > 0x23 || ((1 << (a4 - 112)) & 0x800001249) == 0)
          {
            goto LABEL_3783;
          }
        }

        else if (a4)
        {
          if (a4 == 12369)
          {
            goto LABEL_3739;
          }

LABEL_3783:
          if ((a4 & 0xFFFFFFFD) == 0x3058)
          {
            v14 = &unk_27C10;
            goto LABEL_3920;
          }

          return 0;
        }

LABEL_3039:
        v14 = &unk_27434;
        goto LABEL_3920;
      }

      if ((a4 - 12425) >= 5 && a4 != 12387)
      {
        return 0;
      }

LABEL_2374:
      v14 = &unk_27608;
      goto LABEL_3920;
    }

    if (a3 == 36605)
    {
      if ((a4 - 12356) > 0x19 || ((1 << (a4 - 68)) & 0x2022881) == 0)
      {
        if (a4 == 12435)
        {
          v14 = &unk_27120;
          goto LABEL_3920;
        }

        return 0;
      }

      v14 = &unk_27114;
      goto LABEL_3920;
    }

    if (a3 == 36637)
    {
      if (a4 != 12356 && (a4 - 12363) > 8)
      {
        return 0;
      }

      v14 = &unk_26E58;
      goto LABEL_3920;
    }

    if (a3 != 36706)
    {
      return result;
    }

LABEL_1410:
    if ((a4 - 12363) > 8)
    {
      if (a4 != 12387 && a4 != 12356)
      {
        return 0;
      }
    }

    else if ((a4 & 1) == 0)
    {
      return 0;
    }

    v53 = &unk_269F4;
    if (a5 != 22823 && a5 != 25163 && a5 != 38263)
    {
      v53 = &unk_26810;
    }

    wcscpy(a2, v53);
    v35 = 12387;
    goto LABEL_2879;
  }

  if (a3 <= 38262)
  {
    if (a3 <= 36929)
    {
      if (a3 <= 36866)
      {
        if (a3 <= 36842)
        {
          if (a3 <= 36798)
          {
            if (a3 != 36766)
            {
              if (a3 != 36794)
              {
                if (a3 != 36796)
                {
                  return result;
                }

                if ((a4 - 12414) < 5)
                {
                  goto LABEL_3739;
                }

                v15 = 12435;
                goto LABEL_3738;
              }

              if (a4 != 12426)
              {
                return 0;
              }

LABEL_1857:
              v14 = &unk_27B84;
              goto LABEL_3920;
            }

            if (a4 != 12417)
            {
              return 0;
            }

LABEL_2953:
            v14 = &unk_27190;
            goto LABEL_3920;
          }

          if (a3 == 36799)
          {
            if ((a4 - 12425) >= 5 && a4 != 12387)
            {
              return 0;
            }

            v14 = &unk_28360;
            goto LABEL_3920;
          }

          if (a3 == 36814)
          {
            if (a4 != 12360)
            {
              return 0;
            }

            v14 = &unk_2712C;
            goto LABEL_3920;
          }

          if (a3 != 36820)
          {
            return result;
          }

          if (a4 - 12382) >= 0xFFFFFFF7 && (a4)
          {
LABEL_1043:
            v14 = &unk_27F50;
            goto LABEL_3920;
          }

LABEL_1042:
          if ((a4 - 12425) >= 5 && a4 != 12387)
          {
            return 0;
          }

          goto LABEL_1043;
        }

        if (a3 <= 36860)
        {
          if (a3 == 36843)
          {
            if ((a4 - 12425) >= 5 && a4 != 12387)
            {
              return 0;
            }

            v14 = &unk_27DAC;
            goto LABEL_3920;
          }

          if (a3 != 36848)
          {
            if (a3 != 36855)
            {
              return result;
            }

            if ((a4 - 12356) >= 7 && a4 != 12431 && a4 != 12387)
            {
              return 0;
            }

            v11 = &unk_280B0;
            goto LABEL_3825;
          }

          if (a4 != 12409)
          {
            return 0;
          }

          goto LABEL_1979;
        }

        if (a3 == 36861)
        {
          if ((a4 - 12356) >= 7 && a4 != 12431 && a4 != 12387)
          {
            return 0;
          }

          goto LABEL_2451;
        }

        if (a3 == 36864)
        {
          if ((a4 - 12363) > 8)
          {
            if (a4 != 12356)
            {
              return 0;
            }
          }

          else if ((a4 & 1) == 0)
          {
            return 0;
          }

          v14 = &unk_27A98;
          goto LABEL_3920;
        }

        if (a3 != 36865)
        {
          return result;
        }

        goto LABEL_1065;
      }

      if (a3 <= 36894)
      {
        if (a3 <= 36888)
        {
          if (a3 == 36867)
          {
            if (a4 != 12370 && a4 != 12364)
            {
              if ((a4 - 12373) > 8)
              {
                if (a4 != 12428)
                {
                  return 0;
                }
              }

              else if ((a4 & 1) == 0)
              {
                return 0;
              }

              v14 = &unk_27C7C;
              goto LABEL_3920;
            }

            v14 = &unk_27C74;
            goto LABEL_3920;
          }

          if (a3 == 36870)
          {
            if (a4 != 12425)
            {
              return 0;
            }

            v14 = &unk_26A48;
            goto LABEL_3920;
          }

          if (a3 != 36879)
          {
            return result;
          }

          result = 0;
          if ((a4 - 12382) < 0xFFFFFFF7 || (a4 & 1) == 0)
          {
            return result;
          }

LABEL_1877:
          v14 = &unk_26DE0;
          goto LABEL_3920;
        }

        if (a3 != 36889)
        {
          if (a3 == 36890)
          {
            if ((a4 - 12382) < 0xFFFFFFF7 || (a4 & 1) == 0)
            {
              if ((a4 - 12425) > 4)
              {
                if ((a4 - 12356) <= 0x1F && (((1 << (a4 - 68)) & 0x8000007B) != 0 || a4 == 12358) || a4 == 12431)
                {
                  v14 = &unk_27BCC;
                  goto LABEL_3920;
                }

                if ((a4 & 0xFFFFFFFD) == 0x3058)
                {
                  v14 = &unk_27BD8;
                  goto LABEL_3920;
                }

                return 0;
              }

              if (a5 == 22823)
              {
                v14 = &unk_26DD0;
                goto LABEL_3920;
              }
            }

            goto LABEL_1877;
          }

          if (a3 != 36893)
          {
            return result;
          }

          if ((a4 - 12363) <= 8)
          {
            if ((a4 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_3047;
          }

LABEL_1886:
          if (a4 != 12387)
          {
            return 0;
          }

          goto LABEL_3047;
        }

        if ((a4 - 12356) >= 7 && a4 != 12431)
        {
          goto LABEL_2446;
        }

        goto LABEL_2894;
      }

      if (a3 <= 36898)
      {
        if (a3 != 36895)
        {
          if (a3 != 36896)
          {
            v27 = 36898;
            goto LABEL_1070;
          }

LABEL_690:
          if ((a4 - 12425) < 5 || a4 == 12387)
          {
            if (a5 == 12369 || a5 == 33509 || a5 == 25163)
            {
              v14 = &unk_273FC;
            }

            else
            {
              v14 = &unk_2740C;
            }

            goto LABEL_3920;
          }

          return 0;
        }

        v78 = (a4 - 12363);
        if (v78 <= 0x39)
        {
          if (((1 << (a4 - 75)) & 0x451) != 0)
          {
            goto LABEL_3220;
          }

          if (v78 == 57)
          {
            v14 = &unk_27A28;
            goto LABEL_3920;
          }
        }

        goto LABEL_3219;
      }

      if (a3 == 36899)
      {
        if (a4 != 12394)
        {
          if (a4 == 12428)
          {
            v14 = &unk_267E0;
            goto LABEL_3920;
          }

          if (a4 != 12397)
          {
            return 0;
          }
        }

        v14 = &unk_28228;
        goto LABEL_3920;
      }

      if (a3 != 36914)
      {
        if (a3 != 36920)
        {
          return result;
        }

        if (a4 != 12420)
        {
          if (a4 != 12428 && a4 != 12425)
          {
            return 0;
          }

          v14 = &unk_267AC;
          goto LABEL_3920;
        }

        goto LABEL_2760;
      }

LABEL_1661:
      if ((a4 - 12414) >= 5 && a4 != 12435)
      {
        return 0;
      }

      v14 = &unk_26D30;
      goto LABEL_3920;
    }

    if (a3 <= 36983)
    {
      if (a3 <= 36948)
      {
        if (a3 <= 36938)
        {
          if (a3 != 36930)
          {
            if (a3 != 36933)
            {
              if (a3 != 36938)
              {
                return result;
              }

              result = 0;
              if ((a4 - 12400) > 0x23 || ((1 << (a4 - 112)) & 0x800001249) == 0)
              {
                return result;
              }

              v14 = dword_2813C;
              goto LABEL_3920;
            }

            if (a4 == 12428 || a4 == 12425)
            {
LABEL_1066:
              v14 = &unk_2723C;
              goto LABEL_3920;
            }

            if ((a4 - 12363) <= 8)
            {
              if ((a4 & 1) == 0)
              {
                return 0;
              }

              goto LABEL_3821;
            }

            v60 = 12356;
LABEL_3820:
            if (a4 != v60)
            {
              return 0;
            }

LABEL_3821:
            v14 = &unk_26908;
            goto LABEL_3920;
          }

          v47 = 12370;
          goto LABEL_2419;
        }

        if (a3 == 36939)
        {
          result = 0;
          if ((a4 - 12400) <= 0x23 && ((1 << (a4 - 112)) & 0x800001249) != 0)
          {
            v14 = &unk_26A2C;
            goto LABEL_3920;
          }

          return result;
        }

        if (a3 != 36942)
        {
          if (a3 != 36948)
          {
            return result;
          }

          result = 0;
          if ((a4 - 12382) < 0xFFFFFFF7 || (a4 & 1) == 0)
          {
            return result;
          }

          v14 = &unk_27AB8;
          goto LABEL_3920;
        }

        if (a4 - 12382) >= 0xFFFFFFF7 && (a4)
        {
          v14 = &unk_26B78;
          goto LABEL_3920;
        }

        if ((a4 - 12385) <= 5)
        {
          v14 = &unk_26B88;
          goto LABEL_3920;
        }

        if (a4 != 12372 && a4 != 12366)
        {
          return 0;
        }

        v11 = &unk_26B98;
LABEL_3825:
        wcscpy(a2, v11);
        return 2;
      }

      if (a3 <= 36962)
      {
        if (a3 == 36949)
        {
          if ((a4 - 12356) >= 7 && a4 != 12431 && a4 != 12387)
          {
            return 0;
          }

          v14 = &unk_26964;
          goto LABEL_3920;
        }

        if (a3 != 36953)
        {
          if (a3 == 36960)
          {
            result = 0;
            if ((a4 - 12356) <= 0x11 && ((1 << (a4 - 68)) & 0x22801) != 0)
            {
              if (a5 == 32257)
              {
                v14 = &unk_26DD0;
              }

              else
              {
                v14 = &unk_26DE0;
              }

              goto LABEL_3920;
            }
          }

          return result;
        }

        goto LABEL_1700;
      }

      if (a3 != 36963)
      {
        if (a3 != 36965)
        {
          v27 = 36973;
LABEL_1070:
          if (a3 != v27)
          {
            return result;
          }

LABEL_1071:
          if ((a4 - 12356) < 7 || a4 == 12431)
          {
            goto LABEL_2032;
          }

          v28 = 12387;
LABEL_2031:
          if (a4 != v28)
          {
            return 0;
          }

          goto LABEL_2032;
        }

LABEL_1700:
        if (a4 != 12363)
        {
          return 0;
        }

        v14 = &unk_28188;
        goto LABEL_3920;
      }

      result = 0;
      if (a4 <= 12386)
      {
        if ((a4 - 12356) >= 7)
        {
          return result;
        }

        goto LABEL_2454;
      }

      if ((a4 - 12425) >= 5)
      {
        if (a4 == 12431)
        {
LABEL_2454:
          if (a5 == 27671)
          {
            v14 = &unk_27198;
          }

          else
          {
            v14 = &unk_271A8;
          }

          goto LABEL_3920;
        }

        if (a4 != 12387)
        {
          return result;
        }
      }

      v14 = &unk_27190;
      goto LABEL_3920;
    }

    if (a3 <= 37303)
    {
      if (a3 <= 37238)
      {
        if (a3 == 36984)
        {
          result = 0;
          v77 = a4 - 99;
          if ((a4 - 12387) > 0x30)
          {
            return result;
          }

          if (((1 << v77) & 0x7C000000001) != 0)
          {
            v14 = &unk_269EC;
          }

          else
          {
            if (((1 << v77) & 0x1000002492000) == 0)
            {
              return result;
            }

            v14 = &unk_27920;
          }

          goto LABEL_3920;
        }

        if (a3 != 36986)
        {
          if (a3 != 37197)
          {
            return result;
          }

          if ((a4 - 12380) < 0xFFFFFFFB || (a4 & 1) == 0)
          {
            if ((a4 - 12425) >= 5 && a4 != 12387)
            {
              return 0;
            }

            v14 = &unk_27D84;
            goto LABEL_3920;
          }

LABEL_2729:
          v14 = &unk_27D00;
          goto LABEL_3920;
        }

LABEL_1702:
        if (((a4 - 12382) < 0xFFFFFFF7 || (a4 & 1) == 0) && (a4 - 12425) >= 5 && a4 != 12387)
        {
          return 0;
        }

        v14 = &unk_2748C;
        goto LABEL_3920;
      }

      if (a3 == 37239)
      {
        if ((a4 - 12363) > 8)
        {
          if (a4 != 12356)
          {
            return 0;
          }
        }

        else if ((a4 & 1) == 0)
        {
          return 0;
        }

        v14 = &unk_27360;
        goto LABEL_3920;
      }

      if (a3 != 37240)
      {
        if (a3 != 37266)
        {
          return result;
        }

        if (a4 != 12417 && a4 != 12414)
        {
          return 0;
        }

        goto LABEL_2387;
      }

      if (a4 != 12387)
      {
        goto LABEL_1879;
      }

      goto LABEL_2819;
    }

    if (a3 <= 37346)
    {
      if (a3 == 37304)
      {
        if (a4 != 12377 && a4 != 12375)
        {
          return 0;
        }

        v14 = &unk_27E18;
        goto LABEL_3920;
      }

      if (a3 == 37325)
      {
        if (a4 == 12397 || a4 == 12394)
        {
          v14 = &unk_27640;
          goto LABEL_3920;
        }

        if ((a4 - 12372) < 0xFFFFFFF7 || (a4 & 1) == 0)
        {
          if ((a4 - 12373) > 8)
          {
            if (a4 != 12356)
            {
              return 0;
            }
          }

          else if ((a4 & 1) == 0)
          {
            return 0;
          }
        }

        goto LABEL_3380;
      }

      v26 = 37327;
      goto LABEL_1320;
    }

    if (a3 != 37347)
    {
      if (a3 != 37619)
      {
        if (a3 != 37723)
        {
          return result;
        }

        if (a4 != 12360)
        {
          return 0;
        }

        v14 = &unk_27B28;
        goto LABEL_3920;
      }

      if ((a4 - 12382) < 0xFFFFFFF7 || (a4 & 1) == 0)
      {
        if ((a4 - 12425) < 5)
        {
          goto LABEL_3047;
        }

        goto LABEL_1886;
      }

LABEL_1958:
      v14 = &unk_26AF4;
      goto LABEL_3920;
    }

    goto LABEL_1736;
  }

  if (a3 <= 38927)
  {
    if (a3 <= 38596)
    {
      if (a3 <= 38462)
      {
        if (a3 > 38305)
        {
          switch(a3)
          {
            case 38306:
              result = 0;
              if (a4 > 12394)
              {
                if (a4 != 12395)
                {
                  if (a4 != 12431)
                  {
                    return result;
                  }

                  v14 = &unk_26D64;
                  goto LABEL_3920;
                }
              }

              else if (a4 != 12375 && a4 != 12377)
              {
                return result;
              }

              v14 = &unk_268A0;
              goto LABEL_3920;
            case 38450:
              if ((a4 - 12364) > 8 || (a4) && a4 != 12356)
              {
                return 0;
              }

              v14 = &unk_28074;
              break;
            case 38459:
              if ((a4 - 12414) >= 5 && a4 != 12435)
              {
                return 0;
              }

              v14 = &unk_27984;
              break;
            default:
              return result;
          }

          goto LABEL_3920;
        }

        if (a3 != 38263)
        {
          if (a3 != 38281)
          {
            v17 = 38283;
LABEL_1457:
            if (a3 != v17)
            {
              return result;
            }

            if (a4 != 12369)
            {
              if (a4 != 12356 && (a4 - 12363) > 8)
              {
                return 0;
              }

              v14 = &unk_26C74;
              goto LABEL_3920;
            }

            goto LABEL_2032;
          }

          if ((a4 - 12410) > 7)
          {
            v58 = 12376;
            goto LABEL_2501;
          }

LABEL_3208:
          v14 = &unk_27308;
          goto LABEL_3920;
        }

        if (a4 != 12369)
        {
          if ((a4 - 12363) > 8)
          {
            if (a4 != 12356)
            {
              return 0;
            }
          }

          else if ((a4 & 1) == 0)
          {
            return 0;
          }

          v14 = &unk_26A54;
          goto LABEL_3920;
        }

LABEL_3157:
        v14 = &unk_270E8;
        goto LABEL_3920;
      }

      if (a3 > 38500)
      {
        switch(a3)
        {
          case 38501:
            result = 0;
            v82 = (a4 - 12387);
            if (v82 > 0x2A)
            {
              return result;
            }

            if (((1 << (a4 - 99)) & 0x5C000000001) != 0)
            {
              v14 = &unk_26D84;
            }

            else
            {
              if (v82 != 41)
              {
                return result;
              }

              v14 = &unk_26D70;
            }

            goto LABEL_3920;
          case 38555:
            if (a4 != 12393 && a4 != 12384)
            {
              return 0;
            }

            v14 = &unk_273F0;
            break;
          case 38560:
            if (a4 != 12428 && ((a4 - 12382) < 0xFFFFFFF7 || (a4 & 1) == 0))
            {
              result = 0;
              if ((a4 - 12387) <= 0x2A && ((1 << (a4 - 99)) & 0x5C000000001) != 0)
              {
                v14 = &unk_26A14;
                goto LABEL_3920;
              }

              return result;
            }

            v14 = &unk_26A08;
            break;
          default:
            return result;
        }

        goto LABEL_3920;
      }

      if (a3 != 38463)
      {
        if (a3 != 38477)
        {
          v16 = 38500;
LABEL_626:
          if (a3 != v16)
          {
            return result;
          }

          if ((a4 - 12363) > 8)
          {
            if (a4 != 12356)
            {
              return 0;
            }
          }

          else if ((a4 & 1) == 0)
          {
            return 0;
          }

          v14 = &unk_276C4;
          goto LABEL_3920;
        }

        v61 = (a4 - 12387);
        if (v61 <= 0x2A)
        {
          if (((1 << (a4 - 99)) & 0x34000000001) != 0)
          {
LABEL_1894:
            v14 = &unk_26820;
            goto LABEL_3920;
          }

          if (v61 == 39)
          {
            v107 = *(a6 + 8);
            if ((v107 - 12383) <= 0x2C && ((1 << (v107 - 95)) & 0x120000000081) != 0)
            {
              v102 = 1;
              goto LABEL_3882;
            }

            if (v107 == 27880)
            {
              goto LABEL_1894;
            }
          }

          else if (v61 == 42)
          {
            v102 = 2;
LABEL_3882:
            wcscpy(a2, &unk_26AD0);
            return v102;
          }
        }

        result = 0;
        if ((a5 - 12391) > 0x22 || ((1 << (a5 - 103)) & 0x400001001) == 0)
        {
          return result;
        }

LABEL_2451:
        v14 = &unk_26AD0;
        goto LABEL_3920;
      }

      if (a4 != 12397)
      {
        if (a4 != 12427)
        {
          return 0;
        }

        v14 = &unk_26848;
        goto LABEL_3920;
      }

LABEL_3380:
      v14 = &unk_26858;
      goto LABEL_3920;
    }

    if (a3 <= 38662)
    {
      if (a3 <= 38625)
      {
        switch(a3)
        {
          case 38597:
            if (a4 != 12420)
            {
              return 0;
            }

            v14 = &unk_26BC4;
            break;
          case 38598:
            if ((a4 - 12356) >= 7 && a4 != 12431 && a4 != 12387)
            {
              if ((a4 - 12414) <= 4)
              {
                v14 = &unk_27620;
                goto LABEL_3920;
              }

              return 0;
            }

            v14 = &unk_27610;
            break;
          case 38614:
            if (a4 != 12418)
            {
              return 0;
            }

            v14 = &unk_282E4;
            break;
          default:
            return result;
        }

        goto LABEL_3920;
      }

      if (a3 != 38626)
      {
        if (a3 == 38627)
        {
          result = 0;
          if (a4 > 12372)
          {
            if (a4 == 12373)
            {
              v14 = &unk_27CDC;
            }

            else
            {
              if (a4 != 12375)
              {
                return result;
              }

              v14 = &unk_27CEC;
            }

            goto LABEL_3920;
          }

          if (a4 == 12356 || a4 == 12367)
          {
            v14 = &unk_27220;
            goto LABEL_3920;
          }

          return result;
        }

        if (a3 != 38642)
        {
          return result;
        }

        if ((a4 - 12425) >= 5 && a4 != 12387)
        {
          return 0;
        }

        v14 = &unk_26A20;
        goto LABEL_3920;
      }

      if (a4 != 12428)
      {
        return 0;
      }

LABEL_2479:
      v14 = &unk_2800C;
      goto LABEL_3920;
    }

    if (a3 <= 38744)
    {
      if (a3 != 38663)
      {
        if (a3 == 38686)
        {
          if ((a4 - 12414) >= 5 && a4 != 12435)
          {
            return 0;
          }

          v14 = &unk_26BA0;
        }

        else
        {
          if (a3 != 38706)
          {
            return result;
          }

          if (a4 != 12431)
          {
            return 0;
          }

          v14 = &unk_271F8;
        }

        goto LABEL_3920;
      }

      v81 = 12360;
      goto LABEL_3104;
    }

    if (a3 == 38745)
    {
      if (((a4 - 12414) > 0x15 || ((1 << (a4 - 126)) & 0x20001F) == 0) && a4 != 12363)
      {
        return 0;
      }

      v14 = &unk_2789C;
      goto LABEL_3920;
    }

    if (a3 != 38750)
    {
      if (a3 != 38911)
      {
        return result;
      }

      if ((a4 - 12363) > 8)
      {
        if (a4 != 12356)
        {
          return 0;
        }
      }

      else if ((a4 & 1) == 0)
      {
        return 0;
      }

      v14 = &unk_27004;
      goto LABEL_3920;
    }

    if (a4 != 12378)
    {
      return 0;
    }

LABEL_2824:
    v11 = &unk_271F8;
    goto LABEL_3825;
  }

  if (a3 <= 39347)
  {
    if (a3 <= 39163)
    {
      if (a3 <= 39130)
      {
        if (a3 != 38928)
        {
          if (a3 != 38972)
          {
            if (a3 != 39000)
            {
              return result;
            }

            if ((a4 - 12356) >= 7 && a4 != 12431 && a4 != 12387)
            {
              return 0;
            }

            v14 = &unk_26DF8;
            goto LABEL_3920;
          }

          result = 0;
          v59 = a4 - 99;
          if ((a4 - 12387) > 0x30)
          {
            return result;
          }

          if (((1 << v59) & 0x7C000000001) == 0)
          {
            if (((1 << v59) & 0x10000F8000000) == 0)
            {
              return result;
            }

            v14 = &unk_26CD8;
            goto LABEL_3920;
          }

LABEL_1966:
          v14 = &unk_27F5C;
          goto LABEL_3920;
        }

        if (a4 != 12369 && a4 != 12363)
        {
          return 0;
        }

LABEL_3094:
        v14 = &unk_2816C;
        goto LABEL_3920;
      }

      if (a3 == 39131)
      {
        result = 0;
        if ((a4 - 12400) <= 0x23 && ((1 << (a4 - 112)) & 0x800001249) != 0)
        {
          wcscpy(a2, &unk_26BD8);
          if (a4 == 12400)
          {
            return 2;
          }

          else
          {
            return 1;
          }
        }

        return result;
      }

      if (a3 != 39135)
      {
        if (a3 != 39154)
        {
          return result;
        }

        goto LABEL_1732;
      }

      result = 0;
      if (a4 <= 12386)
      {
        if ((a4 - 12356) >= 7)
        {
          return result;
        }

        goto LABEL_1781;
      }

      if (a4 > 12424)
      {
        if (a4 != 12431 && a4 != 12425)
        {
          return result;
        }
      }

      else if (a4 != 12387)
      {
        if (a4 != 12409)
        {
          return result;
        }

        goto LABEL_3332;
      }

LABEL_1781:
      v14 = &unk_26C1C;
      goto LABEL_3920;
    }

    if (a3 > 39177)
    {
      switch(a3)
      {
        case 39178:
          if ((a4 - 12356) >= 7 && a4 != 12431 && a4 != 12387)
          {
            return 0;
          }

          v14 = &unk_281A0;
          break;
        case 39321:
          if ((a4 - 12425) >= 5 && a4 != 12387)
          {
            if (a4 == 12375)
            {
              v14 = &unk_27340;
              goto LABEL_3920;
            }

            return 0;
          }

          v14 = &unk_26CA0;
          break;
        case 39336:
          if ((a4 - 12425) >= 5 && a4 != 12387)
          {
            return 0;
          }

          v14 = &unk_26CA0;
          break;
        default:
          return result;
      }

      goto LABEL_3920;
    }

    if (a3 != 39164)
    {
      if (a3 == 39165)
      {
        if (a4 != 12365)
        {
          return 0;
        }

        v14 = &unk_26764;
      }

      else
      {
        if (a3 != 39166)
        {
          return result;
        }

        if ((a4 - 12425) >= 5 && a4 != 12387)
        {
          return 0;
        }

        v14 = &unk_26A38;
      }

      goto LABEL_3920;
    }

    goto LABEL_1025;
  }

  if (a3 <= 39513)
  {
    if (a3 <= 39441)
    {
      if (a3 != 39348)
      {
        if (a3 != 39366)
        {
          if (a3 != 39368)
          {
            return result;
          }

          v32 = 12369;
LABEL_2531:
          if (a4 != v32)
          {
            return 0;
          }

          goto LABEL_2532;
        }

        v42 = 12369;
        goto LABEL_2780;
      }

      v92 = 12428;
      goto LABEL_2958;
    }

    if (a3 != 39442)
    {
      if (a3 == 39449)
      {
        result = 0;
        if (a4 - 12382) >= 0xFFFFFFF7 && (a4)
        {
          goto LABEL_3281;
        }

        return result;
      }

      if (a3 != 39472)
      {
        return result;
      }

      if ((a4 - 12425) >= 5 && a4 != 12387)
      {
        return 0;
      }

      v14 = &unk_27844;
      goto LABEL_3920;
    }

    if ((a4 - 12364) <= 8)
    {
      if (a4)
      {
        return 0;
      }

      goto LABEL_3287;
    }

    v49 = 12356;
LABEL_3286:
    if (a4 != v49)
    {
      return 0;
    }

LABEL_3287:
    v14 = &unk_277B8;
    goto LABEL_3920;
  }

  if (a3 > 39853)
  {
    if (a3 <= 40598)
    {
      if (a3 != 39854)
      {
        if (a3 != 40180)
        {
          return result;
        }

        if ((a4 - 12425) >= 5 && a4 != 12387)
        {
          return 0;
        }

        v10 = &unk_26900;
        goto LABEL_2878;
      }

      if (a4 == 12420)
      {
        v14 = &unk_2792C;
        goto LABEL_3920;
      }

      return 0;
    }

    if (a3 == 40599)
    {
      if (a4 == 12375)
      {
        v14 = &unk_28218;
        goto LABEL_3920;
      }

      return 0;
    }

    if (a3 != 40665)
    {
      return result;
    }

    if (a4 - 12380) >= 0xFFFFFFFB && (a4)
    {
      v14 = &unk_280D8;
      goto LABEL_3920;
    }

    if ((a4 - 12425) >= 5 && a4 != 12387)
    {
      return 0;
    }

LABEL_3281:
    v14 = &unk_280E4;
    goto LABEL_3920;
  }

  switch(a3)
  {
    case 39514:
      if (a4 != 12363)
      {
        if ((a4 - 12363) > 8)
        {
          if (a4 != 12356)
          {
            return 0;
          }
        }

        else if ((a4 & 1) == 0)
        {
          return 0;
        }

        v14 = &unk_27014;
        goto LABEL_3920;
      }

      v11 = &unk_27014;
      goto LABEL_3825;
    case 39640:
      if ((a4 - 12363) > 8)
      {
        result = 0;
        if ((a4 - 12356) > 0x3D || ((1 << (a4 - 68)) & 0x2400000002220001) == 0)
        {
          return result;
        }
      }

      else if ((a4 & 1) == 0)
      {
        return 0;
      }

      v14 = &unk_27354;
      goto LABEL_3920;
    case 39729:
      result = 0;
      if ((a4 - 12364) <= 8 && (a4 & 1) == 0)
      {
        v14 = &unk_282A8;
        goto LABEL_3920;
      }

      break;
  }

  return result;
}