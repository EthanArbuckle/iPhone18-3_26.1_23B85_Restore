uint64_t CMMsl::FocusModes::FocusModes(uint64_t this)
{
  *(this + 48) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_10041E700;
  return this;
}

{
  *(this + 48) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_10041E700;
  return this;
}

void CMMsl::FocusModes::~FocusModes(CMMsl::FocusModes *this)
{
  *this = off_10041E700;
  v4 = *(this + 2);
  v2 = (this + 16);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_100011018(v2, v3);
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5)
  {
    sub_100011018(this + 8, v5);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::FocusModes::~FocusModes(this);

  operator delete();
}

uint64_t CMMsl::FocusModes::FocusModes(uint64_t this, const CMMsl::FocusModes *a2)
{
  *(this + 8) = 0;
  *this = off_10041E700;
  *(this + 16) = 0;
  *(this + 48) = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  if (*(a2 + 2))
  {
    operator new();
  }

  v2 = *(a2 + 48);
  if ((v2 & 4) != 0)
  {
    v4 = *(a2 + 9);
    *(this + 48) |= 4u;
    *(this + 36) = v4;
    v2 = *(a2 + 48);
    if ((v2 & 2) == 0)
    {
LABEL_7:
      if ((v2 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }
  }

  else if ((*(a2 + 48) & 2) == 0)
  {
    goto LABEL_7;
  }

  v5 = *(a2 + 8);
  *(this + 48) |= 2u;
  *(this + 32) = v5;
  v2 = *(a2 + 48);
  if ((v2 & 8) == 0)
  {
LABEL_8:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_14:
  v6 = *(a2 + 10);
  *(this + 48) |= 8u;
  *(this + 40) = v6;
  v2 = *(a2 + 48);
  if ((v2 & 0x10) == 0)
  {
LABEL_9:
    if ((v2 & 1) == 0)
    {
      return this;
    }

    goto LABEL_10;
  }

LABEL_15:
  v7 = *(a2 + 44);
  *(this + 48) |= 0x10u;
  *(this + 44) = v7;
  if ((*(a2 + 48) & 1) == 0)
  {
    return this;
  }

LABEL_10:
  v3 = *(a2 + 3);
  *(this + 48) |= 1u;
  *(this + 24) = v3;
  return this;
}

uint64_t CMMsl::FocusModes::operator=(uint64_t a1, const CMMsl::FocusModes *a2)
{
  if (a1 != a2)
  {
    CMMsl::FocusModes::FocusModes(v9, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v10;
    v10 = v3;
    *&v3 = *(a1 + 24);
    v4 = *(a1 + 32);
    v5 = v12;
    *(a1 + 24) = v11;
    *(a1 + 32) = v5;
    v6 = *(a1 + 48);
    *(a1 + 48) = v15;
    v15 = v6;
    v7 = *(a1 + 40);
    *(a1 + 40) = v13;
    v13 = v7;
    LOBYTE(v7) = *(a1 + 44);
    *(a1 + 44) = v14;
    v14 = v7;
    v11 = v3;
    v12 = v4;
    CMMsl::FocusModes::~FocusModes(v9);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::FocusModes *a2, CMMsl::FocusModes *a3)
{
  v3 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  v5 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v5;
  LODWORD(v5) = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v5;
  LODWORD(v5) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v5;
  LODWORD(v5) = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v5;
  LOBYTE(v5) = *(this + 44);
  *(this + 44) = *(a2 + 44);
  *(a2 + 44) = v5;
  result = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = result;
  return result;
}

uint64_t CMMsl::FocusModes::FocusModes(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041E700;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = (a1 + 16);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  v6 = *(a2 + 8);
  *(a2 + 8) = 0;
  v7 = *v4;
  *v4 = v6;
  if (v7)
  {
    sub_100011018(v4, v7);
  }

  v8 = *(a2 + 16);
  *(a2 + 16) = 0;
  v9 = *v5;
  *v5 = v8;
  if (v9)
  {
    sub_100011018(a1 + 16, v9);
  }

  *(a1 + 36) = *(a2 + 36);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t CMMsl::FocusModes::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::FocusModes::FocusModes(v9, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v10;
    v10 = v3;
    *&v3 = *(a1 + 24);
    v4 = *(a1 + 32);
    v5 = v12;
    *(a1 + 24) = v11;
    *(a1 + 32) = v5;
    v6 = *(a1 + 48);
    *(a1 + 48) = v15;
    v15 = v6;
    v7 = *(a1 + 40);
    *(a1 + 40) = v13;
    v13 = v7;
    LOBYTE(v7) = *(a1 + 44);
    *(a1 + 44) = v14;
    v14 = v7;
    v11 = v3;
    v12 = v4;
    CMMsl::FocusModes::~FocusModes(v9);
  }

  return a1;
}

uint64_t CMMsl::FocusModes::formatText(CMMsl::FocusModes *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 1))
  {
    PB::TextFormatter::format();
  }

  v5 = *(this + 48);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "modeSemanticType", *(this + 8));
    v5 = *(this + 48);
    if ((v5 & 4) == 0)
    {
LABEL_5:
      if ((v5 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*(this + 48) & 4) == 0)
  {
    goto LABEL_5;
  }

  PB::TextFormatter::format(a2, "modeUpdateReason", *(this + 9));
  if ((*(this + 48) & 8) != 0)
  {
LABEL_6:
    PB::TextFormatter::format(a2, "modeUpdateSource", *(this + 10));
  }

LABEL_7:
  if (*(this + 2))
  {
    PB::TextFormatter::format();
  }

  v6 = *(this + 48);
  if ((v6 & 0x10) != 0)
  {
    PB::TextFormatter::format(a2, "starting", *(this + 44));
    v6 = *(this + 48);
  }

  if (v6)
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 3));
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::FocusModes::readFrom(CMMsl::FocusModes *this, PB::Reader *a2)
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
            goto LABEL_104;
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
            operator new();
          case 2:
            operator new();
          case 3:
            *(this + 48) |= 4u;
            v33 = *(a2 + 1);
            v32 = *(a2 + 2);
            v34 = *a2;
            if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v32)
            {
              v67 = 0;
              v68 = 0;
              v37 = 0;
              v17 = v32 >= v33;
              v69 = v32 - v33;
              if (!v17)
              {
                v69 = 0;
              }

              v70 = (v34 + v33);
              v71 = v33 + 1;
              while (1)
              {
                if (!v69)
                {
                  LODWORD(v37) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_99;
                }

                v72 = *v70;
                *(a2 + 1) = v71;
                v37 |= (v72 & 0x7F) << v67;
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
LABEL_86:
                  LODWORD(v37) = 0;
                  goto LABEL_99;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v37) = 0;
              }
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
                  goto LABEL_86;
                }
              }
            }

LABEL_99:
            *(this + 9) = v37;
            goto LABEL_100;
        }
      }

      else if (v22 > 5)
      {
        if (v22 == 6)
        {
          *(this + 48) |= 0x10u;
          v51 = *(a2 + 1);
          if (v51 >= *(a2 + 2))
          {
            v54 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v52 = v51 + 1;
            v53 = *(*a2 + v51);
            *(a2 + 1) = v52;
            v54 = v53 != 0;
          }

          *(this + 44) = v54;
          goto LABEL_100;
        }

        if (v22 == 7)
        {
          *(this + 48) |= 1u;
          v41 = *(a2 + 1);
          if (v41 <= 0xFFFFFFFFFFFFFFF7 && v41 + 8 <= *(a2 + 2))
          {
            *(this + 3) = *(*a2 + v41);
            *(a2 + 1) += 8;
          }

          else
          {
            *(a2 + 24) = 1;
          }

          goto LABEL_100;
        }
      }

      else
      {
        if (v22 == 4)
        {
          *(this + 48) |= 2u;
          v43 = *(a2 + 1);
          v42 = *(a2 + 2);
          v44 = *a2;
          if (v43 > 0xFFFFFFFFFFFFFFF5 || v43 + 10 > v42)
          {
            v55 = 0;
            v56 = 0;
            v47 = 0;
            v17 = v42 >= v43;
            v57 = v42 - v43;
            if (!v17)
            {
              v57 = 0;
            }

            v58 = (v44 + v43);
            v59 = v43 + 1;
            while (1)
            {
              if (!v57)
              {
                LODWORD(v47) = 0;
                *(a2 + 24) = 1;
                goto LABEL_93;
              }

              v60 = *v58;
              *(a2 + 1) = v59;
              v47 |= (v60 & 0x7F) << v55;
              if ((v60 & 0x80) == 0)
              {
                break;
              }

              v55 += 7;
              --v57;
              ++v58;
              ++v59;
              v14 = v56++ > 8;
              if (v14)
              {
LABEL_68:
                LODWORD(v47) = 0;
                goto LABEL_93;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v47) = 0;
            }
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
                goto LABEL_68;
              }
            }
          }

LABEL_93:
          *(this + 8) = v47;
          goto LABEL_100;
        }

        if (v22 == 5)
        {
          *(this + 48) |= 8u;
          v24 = *(a2 + 1);
          v23 = *(a2 + 2);
          v25 = *a2;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
          {
            v61 = 0;
            v62 = 0;
            v28 = 0;
            v17 = v23 >= v24;
            v63 = v23 - v24;
            if (!v17)
            {
              v63 = 0;
            }

            v64 = (v25 + v24);
            v65 = v24 + 1;
            while (1)
            {
              if (!v63)
              {
                LODWORD(v28) = 0;
                *(a2 + 24) = 1;
                goto LABEL_96;
              }

              v66 = *v64;
              *(a2 + 1) = v65;
              v28 |= (v66 & 0x7F) << v61;
              if ((v66 & 0x80) == 0)
              {
                break;
              }

              v61 += 7;
              --v63;
              ++v64;
              ++v65;
              v14 = v62++ > 8;
              if (v14)
              {
LABEL_78:
                LODWORD(v28) = 0;
                goto LABEL_96;
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
                goto LABEL_78;
              }
            }
          }

LABEL_96:
          *(this + 10) = v28;
          goto LABEL_100;
        }
      }

      if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
      {
        v74 = 0;
        return v74 & 1;
      }

LABEL_100:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_104:
  v74 = v4 ^ 1;
  return v74 & 1;
}

uint64_t CMMsl::FocusModes::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if (*(this + 8))
  {
    this = PB::Writer::write();
  }

  if (*(v3 + 16))
  {
    this = PB::Writer::write();
  }

  v4 = *(v3 + 48);
  if ((v4 & 4) != 0)
  {
    this = PB::Writer::writeVarInt(a2, *(v3 + 36), 3u);
    v4 = *(v3 + 48);
    if ((v4 & 2) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }
  }

  else if ((*(v3 + 48) & 2) == 0)
  {
    goto LABEL_7;
  }

  this = PB::Writer::writeVarInt(a2, *(v3 + 32), 4u);
  v4 = *(v3 + 48);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

LABEL_14:
    this = PB::Writer::write(a2, *(v3 + 44), 6u);
    if ((*(v3 + 48) & 1) == 0)
    {
      return this;
    }

    goto LABEL_15;
  }

LABEL_13:
  this = PB::Writer::writeVarInt(a2, *(v3 + 40), 5u);
  v4 = *(v3 + 48);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_14;
  }

LABEL_9:
  if ((v4 & 1) == 0)
  {
    return this;
  }

LABEL_15:
  v5 = *(v3 + 24);

  return PB::Writer::write(a2, v5, 7u);
}

BOOL CMMsl::FocusModes::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
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

    v10 = v6 >= 0 ? *(a1 + 8) : *v4;
    v11 = v9 >= 0 ? *(a2 + 8) : *v5;
    if (memcmp(v10, v11, v7))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v13 = *(a1 + 16);
  v14 = *(a2 + 16);
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

    v19 = v15 >= 0 ? *(a1 + 16) : *v13;
    v20 = v18 >= 0 ? *(a2 + 16) : *v14;
    if (memcmp(v19, v20, v16))
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  if ((*(a1 + 48) & 4) != 0)
  {
    if ((*(a2 + 48) & 4) == 0 || *(a1 + 36) != *(a2 + 36))
    {
      return 0;
    }
  }

  else if ((*(a2 + 48) & 4) != 0)
  {
    return 0;
  }

  if ((*(a1 + 48) & 2) != 0)
  {
    if ((*(a2 + 48) & 2) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((*(a2 + 48) & 2) != 0)
  {
    return 0;
  }

  if ((*(a1 + 48) & 8) != 0)
  {
    if ((*(a2 + 48) & 8) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((*(a2 + 48) & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 48) & 0x10) == 0)
  {
    if ((*(a2 + 48) & 0x10) == 0)
    {
      goto LABEL_57;
    }

    return 0;
  }

  if ((*(a2 + 48) & 0x10) == 0 || *(a1 + 44) != *(a2 + 44))
  {
    return 0;
  }

LABEL_57:
  result = (*(a2 + 48) & 1) == 0;
  if (*(a1 + 48))
  {
    return (*(a2 + 48) & 1) != 0 && *(a1 + 24) == *(a2 + 24);
  }

  return result;
}

unint64_t CMMsl::FocusModes::hash_value(CMMsl::FocusModes *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    v3 = sub_100011074(&v12, v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 2);
  if (v4)
  {
    v5 = sub_100011074(&v13, v4);
  }

  else
  {
    v5 = 0;
  }

  if ((*(this + 48) & 4) != 0)
  {
    v6 = *(this + 9);
    if ((*(this + 48) & 2) != 0)
    {
LABEL_9:
      v7 = *(this + 8);
      if ((*(this + 48) & 8) != 0)
      {
        goto LABEL_10;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v6 = 0;
    if ((*(this + 48) & 2) != 0)
    {
      goto LABEL_9;
    }
  }

  v7 = 0;
  if ((*(this + 48) & 8) != 0)
  {
LABEL_10:
    v8 = *(this + 10);
    if ((*(this + 48) & 0x10) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_18;
  }

LABEL_17:
  v8 = 0;
  if ((*(this + 48) & 0x10) != 0)
  {
LABEL_11:
    v9 = *(this + 44);
    if (*(this + 48))
    {
      goto LABEL_12;
    }

LABEL_19:
    v10 = 0.0;
    return v5 ^ v3 ^ v6 ^ v7 ^ v8 ^ v9 ^ *&v10;
  }

LABEL_18:
  v9 = 0;
  if ((*(this + 48) & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_12:
  v10 = *(this + 3);
  if (v10 == 0.0)
  {
    v10 = 0.0;
  }

  return v5 ^ v3 ^ v6 ^ v7 ^ v8 ^ v9 ^ *&v10;
}

double CMMsl::FrequencyResponse::FrequencyResponse(CMMsl::FrequencyResponse *this)
{
  *this = off_10041E738;
  *(this + 16) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

{
  *this = off_10041E738;
  *(this + 16) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

void CMMsl::FrequencyResponse::~FrequencyResponse(CMMsl::FrequencyResponse *this)
{
  *this = off_10041E738;
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
  CMMsl::FrequencyResponse::~FrequencyResponse(this);

  operator delete();
}

CMMsl::FrequencyResponse *CMMsl::FrequencyResponse::FrequencyResponse(CMMsl::FrequencyResponse *this, const CMMsl::FrequencyResponse *a2)
{
  *this = off_10041E738;
  *(this + 8) = 0u;
  v4 = (this + 8);
  *(this + 16) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  if (*(a2 + 64))
  {
    v5 = *(a2 + 7);
    *(this + 64) = 1;
    *(this + 7) = v5;
  }

  if (this != a2)
  {
    sub_100035D1C(v4, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 2);
    sub_100035D1C(this + 4, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 2);
  }

  return this;
}

uint64_t CMMsl::FrequencyResponse::operator=(uint64_t a1, const CMMsl::FrequencyResponse *a2)
{
  if (a1 != a2)
  {
    CMMsl::FrequencyResponse::FrequencyResponse(v10, a2);
    v3 = *(a1 + 64);
    *(a1 + 64) = v15;
    v15 = v3;
    v4 = *(a1 + 56);
    *(a1 + 56) = v14;
    v14 = v4;
    v5 = v12;
    v6 = *(a1 + 8);
    *(a1 + 8) = v11;
    v7 = *(a1 + 24);
    *(a1 + 24) = v5;
    v11 = v6;
    v12 = v7;
    v8 = *(a1 + 40);
    *(a1 + 40) = v13;
    v13 = v8;
    CMMsl::FrequencyResponse::~FrequencyResponse(v10);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::FrequencyResponse *a2, CMMsl::FrequencyResponse *a3)
{
  v3 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v3;
  result = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = result;
  v5 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v5;
  v6 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v6;
  v7 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v7;
  v8 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v8;
  v9 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v9;
  v10 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v10;
  return result;
}

uint64_t CMMsl::FrequencyResponse::FrequencyResponse(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041E738;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = 0;
  *(a1 + 56) = *(a2 + 56);
  sub_1002A2DD0(a1 + 8, (a2 + 8));
  sub_1002A2DD0(a1 + 32, (a2 + 32));
  return a1;
}

uint64_t CMMsl::FrequencyResponse::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::FrequencyResponse::FrequencyResponse(v10, a2);
    v3 = *(a1 + 64);
    *(a1 + 64) = v15;
    v15 = v3;
    v4 = *(a1 + 56);
    *(a1 + 56) = v14;
    v14 = v4;
    v5 = v12;
    v6 = *(a1 + 8);
    *(a1 + 8) = v11;
    v7 = *(a1 + 24);
    *(a1 + 24) = v5;
    v11 = v6;
    v12 = v7;
    v8 = *(a1 + 40);
    *(a1 + 40) = v13;
    v13 = v8;
    CMMsl::FrequencyResponse::~FrequencyResponse(v10);
  }

  return a1;
}

uint64_t CMMsl::FrequencyResponse::formatText(CMMsl::FrequencyResponse *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(a2, "freq", v7);
  }

  v8 = *(this + 4);
  v9 = *(this + 5);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::TextFormatter::format(a2, "mag", v10);
  }

  if (*(this + 64))
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 7));
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::FrequencyResponse::readFrom(CMMsl::FrequencyResponse *this, PB::Reader *a2)
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
        goto LABEL_107;
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
        goto LABEL_107;
      }

      v23 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        break;
      }

      if (v23 == 2)
      {
        if (v22 == 2)
        {
          if (PB::Reader::placeMark())
          {
            goto LABEL_109;
          }

          v26 = *(a2 + 1);
          v27 = *(a2 + 2);
          while (v26 < v27 && (*(a2 + 24) & 1) == 0)
          {
            v29 = *(this + 2);
            v28 = *(this + 3);
            if (v29 >= v28)
            {
              v31 = *(this + 1);
              v32 = v29 - v31;
              v33 = (v29 - v31) >> 2;
              v34 = v33 + 1;
              if ((v33 + 1) >> 62)
              {
                goto LABEL_110;
              }

              v35 = v28 - v31;
              if (v35 >> 1 > v34)
              {
                v34 = v35 >> 1;
              }

              if (v35 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v36 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v36 = v34;
              }

              if (v36)
              {
                sub_10002290C(this + 8, v36);
              }

              v37 = (v29 - v31) >> 2;
              v38 = (4 * v33);
              v39 = (4 * v33 - 4 * v37);
              *v38 = 0;
              v30 = v38 + 1;
              memcpy(v39, v31, v32);
              v40 = *(this + 1);
              *(this + 1) = v39;
              *(this + 2) = v30;
              *(this + 3) = 0;
              if (v40)
              {
                operator delete(v40);
              }
            }

            else
            {
              *v29 = 0;
              v30 = v29 + 4;
            }

            *(this + 2) = v30;
            v41 = *(a2 + 1);
            if (v41 > 0xFFFFFFFFFFFFFFFBLL || v41 + 4 > *(a2 + 2))
            {
              goto LABEL_74;
            }

            *(v30 - 1) = *(*a2 + v41);
            v27 = *(a2 + 2);
            v26 = *(a2 + 1) + 4;
            *(a2 + 1) = v26;
          }

LABEL_75:
          PB::Reader::recallMark();
          goto LABEL_103;
        }

        v59 = *(this + 2);
        v58 = *(this + 3);
        if (v59 >= v58)
        {
          v63 = *(this + 1);
          v64 = v59 - v63;
          v65 = (v59 - v63) >> 2;
          v66 = v65 + 1;
          if ((v65 + 1) >> 62)
          {
            goto LABEL_110;
          }

          v67 = v58 - v63;
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

          v75 = (v59 - v63) >> 2;
          v76 = (4 * v65);
          v77 = (4 * v65 - 4 * v75);
          *v76 = 0;
          v60 = v76 + 1;
          memcpy(v77, v63, v64);
          v78 = *(this + 1);
          *(this + 1) = v77;
          *(this + 2) = v60;
          *(this + 3) = 0;
          if (v78)
          {
            operator delete(v78);
          }
        }

        else
        {
          *v59 = 0;
          v60 = v59 + 4;
        }

        *(this + 2) = v60;
LABEL_98:
        v83 = *(a2 + 1);
        if (v83 > 0xFFFFFFFFFFFFFFFBLL || v83 + 4 > *(a2 + 2))
        {
LABEL_100:
          *(a2 + 24) = 1;
          goto LABEL_103;
        }

        *(v60 - 1) = *(*a2 + v83);
        v25 = *(a2 + 1) + 4;
        goto LABEL_102;
      }

      if (v23 == 1)
      {
        *(this + 64) |= 1u;
        v24 = *(a2 + 1);
        if (v24 > 0xFFFFFFFFFFFFFFF7 || v24 + 8 > *(a2 + 2))
        {
          goto LABEL_100;
        }

        *(this + 7) = *(*a2 + v24);
        v25 = *(a2 + 1) + 8;
LABEL_102:
        *(a2 + 1) = v25;
        goto LABEL_103;
      }

      if ((PB::Reader::skip(a2, v23, v22, 0) & 1) == 0)
      {
LABEL_109:
        v84 = 0;
        return v84 & 1;
      }

LABEL_103:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_107;
      }
    }

    if (v22 == 2)
    {
      if (PB::Reader::placeMark())
      {
        goto LABEL_109;
      }

      v42 = *(a2 + 1);
      v43 = *(a2 + 2);
      while (v42 < v43 && (*(a2 + 24) & 1) == 0)
      {
        v45 = *(this + 5);
        v44 = *(this + 6);
        if (v45 >= v44)
        {
          v47 = *(this + 4);
          v48 = v45 - v47;
          v49 = (v45 - v47) >> 2;
          v50 = v49 + 1;
          if ((v49 + 1) >> 62)
          {
            goto LABEL_110;
          }

          v51 = v44 - v47;
          if (v51 >> 1 > v50)
          {
            v50 = v51 >> 1;
          }

          if (v51 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v52 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v52 = v50;
          }

          if (v52)
          {
            sub_10002290C(this + 32, v52);
          }

          v53 = (v45 - v47) >> 2;
          v54 = (4 * v49);
          v55 = (4 * v49 - 4 * v53);
          *v54 = 0;
          v46 = v54 + 1;
          memcpy(v55, v47, v48);
          v56 = *(this + 4);
          *(this + 4) = v55;
          *(this + 5) = v46;
          *(this + 6) = 0;
          if (v56)
          {
            operator delete(v56);
          }
        }

        else
        {
          *v45 = 0;
          v46 = v45 + 4;
        }

        *(this + 5) = v46;
        v57 = *(a2 + 1);
        if (v57 > 0xFFFFFFFFFFFFFFFBLL || v57 + 4 > *(a2 + 2))
        {
LABEL_74:
          *(a2 + 24) = 1;
          goto LABEL_75;
        }

        *(v46 - 1) = *(*a2 + v57);
        v43 = *(a2 + 2);
        v42 = *(a2 + 1) + 4;
        *(a2 + 1) = v42;
      }

      goto LABEL_75;
    }

    v62 = *(this + 5);
    v61 = *(this + 6);
    if (v62 >= v61)
    {
      v69 = *(this + 4);
      v70 = v62 - v69;
      v71 = (v62 - v69) >> 2;
      v72 = v71 + 1;
      if ((v71 + 1) >> 62)
      {
LABEL_110:
        sub_10000CD24();
      }

      v73 = v61 - v69;
      if (v73 >> 1 > v72)
      {
        v72 = v73 >> 1;
      }

      if (v73 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v74 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v74 = v72;
      }

      if (v74)
      {
        sub_10002290C(this + 32, v74);
      }

      v79 = (v62 - v69) >> 2;
      v80 = (4 * v71);
      v81 = (4 * v71 - 4 * v79);
      *v80 = 0;
      v60 = v80 + 1;
      memcpy(v81, v69, v70);
      v82 = *(this + 4);
      *(this + 4) = v81;
      *(this + 5) = v60;
      *(this + 6) = 0;
      if (v82)
      {
        operator delete(v82);
      }
    }

    else
    {
      *v62 = 0;
      v60 = v62 + 4;
    }

    *(this + 5) = v60;
    goto LABEL_98;
  }

LABEL_107:
  v84 = v4 ^ 1;
  return v84 & 1;
}

uint64_t CMMsl::FrequencyResponse::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if (*(this + 64))
  {
    this = PB::Writer::write(a2, *(this + 56), 1u);
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

BOOL CMMsl::FrequencyResponse::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 64);
  if (*(a1 + 64))
  {
    if ((*(a2 + 64) & 1) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if (*(a2 + 64))
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

uint64_t CMMsl::FrequencyResponse::hash_value(CMMsl::FrequencyResponse *this)
{
  if (*(this + 64))
  {
    if (*(this + 7) == 0.0)
    {
      v2 = 0;
    }

    else
    {
      v2 = *(this + 7);
    }
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

void *CMMsl::FusedBioMotionClassification::FusedBioMotionClassification(void *this)
{
  *this = off_10041E770;
  this[1] = 0;
  return this;
}

{
  *this = off_10041E770;
  this[1] = 0;
  return this;
}

void CMMsl::FusedBioMotionClassification::~FusedBioMotionClassification(CMMsl::FusedBioMotionClassification *this)
{
  v2 = *(this + 1);
  *this = off_10041E770;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::FusedBioMotionClassification::~FusedBioMotionClassification(this);

  operator delete();
}

void *CMMsl::FusedBioMotionClassification::FusedBioMotionClassification(void *this, const CMMsl::FusedBioMotionClassification *a2)
{
  *this = off_10041E770;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const CMMsl::FusedBioMotionClassification *CMMsl::FusedBioMotionClassification::operator=(const CMMsl::FusedBioMotionClassification *a1, const CMMsl::FusedBioMotionClassification *a2)
{
  if (a1 != a2)
  {
    CMMsl::FusedBioMotionClassification::FusedBioMotionClassification(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    CMMsl::FusedBioMotionClassification::~FusedBioMotionClassification(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::FusedBioMotionClassification *a2, CMMsl::FusedBioMotionClassification *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::FusedBioMotionClassification::FusedBioMotionClassification(void *a1, uint64_t a2)
{
  *a1 = off_10041E770;
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
  *a1 = off_10041E770;
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

uint64_t CMMsl::FusedBioMotionClassification::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = off_10041E770;
    v6[1] = v4;
    CMMsl::FusedBioMotionClassification::~FusedBioMotionClassification(v6);
  }

  return a1;
}

uint64_t CMMsl::FusedBioMotionClassification::formatText(CMMsl::FusedBioMotionClassification *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::FusedBioMotionClassification::readFrom(CMMsl::FusedBioMotionClassification *this, PB::Reader *a2)
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

uint64_t CMMsl::FusedBioMotionClassification::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2, 1u);
  }

  return this;
}

BOOL CMMsl::FusedBioMotionClassification::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  result = v3 == 0;
  if (v2)
  {
    return v3 && CMMsl::BioMotionClassification::operator==(v2, v3);
  }

  return result;
}

CMMsl::BioMotionClassification *CMMsl::FusedBioMotionClassification::hash_value(CMMsl::FusedBioMotionClassification *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::BioMotionClassification::hash_value(result);
  }

  return result;
}

uint64_t CMMsl::FusedBioMotionClassification::makeSuper(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::GPSCalibrationBin::GPSCalibrationBin(uint64_t this)
{
  *this = off_10041E7A8;
  *(this + 52) = 0;
  return this;
}

{
  *this = off_10041E7A8;
  *(this + 52) = 0;
  return this;
}

void CMMsl::GPSCalibrationBin::~GPSCalibrationBin(CMMsl::GPSCalibrationBin *this)
{
  PB::Base::~Base(this);

  operator delete();
}

double CMMsl::GPSCalibrationBin::GPSCalibrationBin(CMMsl::GPSCalibrationBin *this, const CMMsl::GPSCalibrationBin *a2)
{
  *this = off_10041E7A8;
  *(this + 13) = 0;
  v2 = *(a2 + 52);
  if ((v2 & 4) != 0)
  {
    result = *(a2 + 3);
    v3 = 4;
    *(this + 52) = 4;
    *(this + 3) = result;
    v2 = *(a2 + 52);
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 52) & 8) != 0)
  {
LABEL_5:
    result = *(a2 + 4);
    v3 |= 8u;
    *(this + 52) = v3;
    *(this + 4) = result;
    v2 = *(a2 + 52);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    result = *(a2 + 2);
    v3 |= 2u;
    *(this + 52) = v3;
    *(this + 2) = result;
    v2 = *(a2 + 52);
    if ((v2 & 0x10) == 0)
    {
LABEL_8:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_13;
    }
  }

  else if ((v2 & 0x10) == 0)
  {
    goto LABEL_8;
  }

  result = *(a2 + 5);
  v3 |= 0x10u;
  *(this + 52) = v3;
  *(this + 5) = result;
  v2 = *(a2 + 52);
  if ((v2 & 0x20) == 0)
  {
LABEL_9:
    if ((v2 & 1) == 0)
    {
      return result;
    }

LABEL_14:
    result = *(a2 + 1);
    *(this + 52) = v3 | 1;
    *(this + 1) = result;
    return result;
  }

LABEL_13:
  v5 = *(a2 + 12);
  v3 |= 0x20u;
  *(this + 52) = v3;
  *(this + 12) = v5;
  if (*(a2 + 52))
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t CMMsl::GPSCalibrationBin::operator=(uint64_t a1, const CMMsl::GPSCalibrationBin *a2)
{
  if (a1 != a2)
  {
    CMMsl::GPSCalibrationBin::GPSCalibrationBin(v9, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v11;
    v4 = v13;
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    *(a1 + 40) = v12;
    *(a1 + 48) = v4;
    v12 = v5;
    v13 = v6;
    v7 = *(a1 + 8);
    *(a1 + 8) = v10;
    v10 = v7;
    v11 = v3;
    PB::Base::~Base(v9);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::GPSCalibrationBin *a2, CMMsl::GPSCalibrationBin *a3)
{
  v3 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v3;
  v4 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v4;
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v6;
  v7 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v7;
  v8 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v8;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  return result;
}

double CMMsl::GPSCalibrationBin::GPSCalibrationBin(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041E7A8;
  *(a1 + 52) = *(a2 + 52);
  *(a2 + 52) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

{
  *a1 = off_10041E7A8;
  *(a1 + 52) = *(a2 + 52);
  *(a2 + 52) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

uint64_t CMMsl::GPSCalibrationBin::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v11 = off_10041E7A8;
    v3 = *(a2 + 8);
    v4 = *(a2 + 24);
    v5 = *(a2 + 40);
    v6 = *(a2 + 48);
    *(a2 + 52) = 0;
    v7 = *(a1 + 24);
    v8 = *(a1 + 48);
    v14 = *(a1 + 40);
    v15 = v8;
    v9 = *(a1 + 8);
    *(a1 + 24) = v4;
    *(a1 + 40) = v5;
    *(a1 + 48) = v6;
    *(a1 + 8) = v3;
    v12 = v9;
    v13 = v7;
    PB::Base::~Base(&v11);
  }

  return a1;
}

uint64_t CMMsl::GPSCalibrationBin::formatText(CMMsl::GPSCalibrationBin *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 52);
  if (v5)
  {
    PB::TextFormatter::format(a2, "lastUpdateTime", *(this + 1));
    v5 = *(this + 52);
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

  else if ((*(this + 52) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "mean", *(this + 2));
  v5 = *(this + 52);
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
  PB::TextFormatter::format(a2, "speedLB", *(this + 3));
  v5 = *(this + 52);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  PB::TextFormatter::format(a2, "speedUB", *(this + 4));
  v5 = *(this + 52);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  PB::TextFormatter::format(a2, "updateCount", *(this + 12));
  if ((*(this + 52) & 0x10) != 0)
  {
LABEL_7:
    PB::TextFormatter::format(a2, "variance", *(this + 5));
  }

LABEL_8:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::GPSCalibrationBin::readFrom(CMMsl::GPSCalibrationBin *this, PB::Reader *a2)
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
            goto LABEL_72;
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
            *(this + 52) |= 0x10u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
LABEL_45:
              *(a2 + 24) = 1;
              goto LABEL_68;
            }

            *(this + 5) = *(*a2 + v2);
            goto LABEL_62;
          case 5:
            *(this + 52) |= 0x20u;
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
                  goto LABEL_67;
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
                  goto LABEL_66;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v27) = 0;
              }

LABEL_66:
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

LABEL_67:
            *(this + 12) = v27;
            goto LABEL_68;
          case 6:
            *(this + 52) |= 1u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
              goto LABEL_45;
            }

            *(this + 1) = *(*a2 + v2);
            goto LABEL_62;
        }
      }

      else
      {
        switch(v22)
        {
          case 1:
            *(this + 52) |= 4u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
              goto LABEL_45;
            }

            *(this + 3) = *(*a2 + v2);
            goto LABEL_62;
          case 2:
            *(this + 52) |= 8u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
              goto LABEL_45;
            }

            *(this + 4) = *(*a2 + v2);
            goto LABEL_62;
          case 3:
            *(this + 52) |= 2u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
              goto LABEL_45;
            }

            *(this + 2) = *(*a2 + v2);
LABEL_62:
            v2 = *(a2 + 1) + 8;
            *(a2 + 1) = v2;
            goto LABEL_68;
        }
      }

      if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
      {
        v38 = 0;
        return v38 & 1;
      }

      v2 = *(a2 + 1);
LABEL_68:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_72:
  v38 = v4 ^ 1;
  return v38 & 1;
}

uint64_t CMMsl::GPSCalibrationBin::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 52);
  if ((v4 & 4) != 0)
  {
    this = PB::Writer::write(a2, *(this + 24), 1u);
    v4 = *(v3 + 52);
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

  else if ((*(this + 52) & 8) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 32), 2u);
  v4 = *(v3 + 52);
  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  this = PB::Writer::write(a2, *(v3 + 16), 3u);
  v4 = *(v3 + 52);
  if ((v4 & 0x10) == 0)
  {
LABEL_5:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    this = PB::Writer::writeVarInt(a2, *(v3 + 48), 5u);
    if ((*(v3 + 52) & 1) == 0)
    {
      return this;
    }

    goto LABEL_13;
  }

LABEL_11:
  this = PB::Writer::write(a2, *(v3 + 40), 4u);
  v4 = *(v3 + 52);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v4 & 1) == 0)
  {
    return this;
  }

LABEL_13:
  v5 = *(v3 + 8);

  return PB::Writer::write(a2, v5, 6u);
}

BOOL CMMsl::GPSCalibrationBin::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 52) & 4) != 0)
  {
    if ((*(a2 + 52) & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 52) & 4) != 0)
  {
    return 0;
  }

  if ((*(a1 + 52) & 8) != 0)
  {
    if ((*(a2 + 52) & 8) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((*(a2 + 52) & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 52) & 2) != 0)
  {
    if ((*(a2 + 52) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 52) & 2) != 0)
  {
    return 0;
  }

  if ((*(a1 + 52) & 0x10) != 0)
  {
    if ((*(a2 + 52) & 0x10) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((*(a2 + 52) & 0x10) != 0)
  {
    return 0;
  }

  if ((*(a1 + 52) & 0x20) != 0)
  {
    if ((*(a2 + 52) & 0x20) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((*(a2 + 52) & 0x20) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 52) & 1) == 0;
  if (*(a1 + 52))
  {
    return (*(a2 + 52) & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return v2;
}

uint64_t CMMsl::GPSCalibrationBin::hash_value(CMMsl::GPSCalibrationBin *this)
{
  if ((*(this + 52) & 4) == 0)
  {
    v1 = 0.0;
    if ((*(this + 52) & 8) != 0)
    {
      goto LABEL_3;
    }

LABEL_19:
    v2 = 0.0;
    if ((*(this + 52) & 2) != 0)
    {
      goto LABEL_6;
    }

LABEL_20:
    v3 = 0.0;
    if ((*(this + 52) & 0x10) != 0)
    {
      goto LABEL_9;
    }

LABEL_21:
    v4 = 0.0;
    if ((*(this + 52) & 0x20) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_22;
  }

  v1 = *(this + 3);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  if ((*(this + 52) & 8) == 0)
  {
    goto LABEL_19;
  }

LABEL_3:
  v2 = *(this + 4);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((*(this + 52) & 2) == 0)
  {
    goto LABEL_20;
  }

LABEL_6:
  v3 = *(this + 2);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  if ((*(this + 52) & 0x10) == 0)
  {
    goto LABEL_21;
  }

LABEL_9:
  v4 = *(this + 5);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  if ((*(this + 52) & 0x20) != 0)
  {
LABEL_12:
    v5 = *(this + 12);
    if (*(this + 52))
    {
      goto LABEL_13;
    }

LABEL_23:
    v6 = 0.0;
    return *&v2 ^ *&v1 ^ *&v3 ^ *&v4 ^ v5 ^ *&v6;
  }

LABEL_22:
  v5 = 0;
  if ((*(this + 52) & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_13:
  v6 = *(this + 1);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  return *&v2 ^ *&v1 ^ *&v3 ^ *&v4 ^ v5 ^ *&v6;
}

uint64_t CMMsl::GaitCycleSegment::GaitCycleSegment(uint64_t this)
{
  *this = off_10041E7E0;
  *(this + 100) = 0;
  return this;
}

{
  *this = off_10041E7E0;
  *(this + 100) = 0;
  return this;
}

void CMMsl::GaitCycleSegment::~GaitCycleSegment(CMMsl::GaitCycleSegment *this)
{
  PB::Base::~Base(this);

  operator delete();
}

float CMMsl::GaitCycleSegment::GaitCycleSegment(CMMsl::GaitCycleSegment *this, const CMMsl::GaitCycleSegment *a2)
{
  *this = off_10041E7E0;
  *(this + 25) = 0;
  v2 = *(a2 + 25);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 25) = 1;
    *(this + 1) = v4;
    v2 = *(a2 + 25);
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
    *(this + 25) = v3;
    *(this + 3) = v5;
    v2 = *(a2 + 25);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    v6 = *(a2 + 2);
    v3 |= 2u;
    *(this + 25) = v3;
    *(this + 2) = v6;
    v2 = *(a2 + 25);
    if ((v2 & 0x200) == 0)
    {
LABEL_8:
      if ((v2 & 0x10000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_31;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_8;
  }

  result = *(a2 + 15);
  v3 |= 0x200u;
  *(this + 25) = v3;
  *(this + 15) = result;
  v2 = *(a2 + 25);
  if ((v2 & 0x10000) == 0)
  {
LABEL_9:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  result = *(a2 + 22);
  v3 |= 0x10000u;
  *(this + 25) = v3;
  *(this + 22) = result;
  v2 = *(a2 + 25);
  if ((v2 & 0x40) == 0)
  {
LABEL_10:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_33;
  }

LABEL_32:
  result = *(a2 + 12);
  v3 |= 0x40u;
  *(this + 25) = v3;
  *(this + 12) = result;
  v2 = *(a2 + 25);
  if ((v2 & 0x4000) == 0)
  {
LABEL_11:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_34;
  }

LABEL_33:
  result = *(a2 + 20);
  v3 |= 0x4000u;
  *(this + 25) = v3;
  *(this + 20) = result;
  v2 = *(a2 + 25);
  if ((v2 & 0x100) == 0)
  {
LABEL_12:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_35;
  }

LABEL_34:
  result = *(a2 + 14);
  v3 |= 0x100u;
  *(this + 25) = v3;
  *(this + 14) = result;
  v2 = *(a2 + 25);
  if ((v2 & 0x80) == 0)
  {
LABEL_13:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_35:
  result = *(a2 + 13);
  v3 |= 0x80u;
  *(this + 25) = v3;
  *(this + 13) = result;
  v2 = *(a2 + 25);
  if ((v2 & 0x2000) == 0)
  {
LABEL_14:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = *(a2 + 19);
  v3 |= 0x2000u;
  *(this + 25) = v3;
  *(this + 19) = result;
  v2 = *(a2 + 25);
  if ((v2 & 0x20) == 0)
  {
LABEL_15:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = *(a2 + 11);
  v3 |= 0x20u;
  *(this + 25) = v3;
  *(this + 11) = result;
  v2 = *(a2 + 25);
  if ((v2 & 0x8000) == 0)
  {
LABEL_16:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = *(a2 + 21);
  v3 |= 0x8000u;
  *(this + 25) = v3;
  *(this + 21) = result;
  v2 = *(a2 + 25);
  if ((v2 & 0x400) == 0)
  {
LABEL_17:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = *(a2 + 16);
  v3 |= 0x400u;
  *(this + 25) = v3;
  *(this + 16) = result;
  v2 = *(a2 + 25);
  if ((v2 & 0x800000) == 0)
  {
LABEL_18:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_41;
  }

LABEL_40:
  v8 = *(a2 + 98);
  v3 |= 0x800000u;
  *(this + 25) = v3;
  *(this + 98) = v8;
  v2 = *(a2 + 25);
  if ((v2 & 0x800) == 0)
  {
LABEL_19:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_42;
  }

LABEL_41:
  result = *(a2 + 17);
  v3 |= 0x800u;
  *(this + 25) = v3;
  *(this + 17) = result;
  v2 = *(a2 + 25);
  if ((v2 & 0x400000) == 0)
  {
LABEL_20:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_43;
  }

LABEL_42:
  v9 = *(a2 + 97);
  v3 |= 0x400000u;
  *(this + 25) = v3;
  *(this + 97) = v9;
  v2 = *(a2 + 25);
  if ((v2 & 0x80000) == 0)
  {
LABEL_21:
    if ((v2 & 0x40000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_44;
  }

LABEL_43:
  v10 = *(a2 + 94);
  v3 |= 0x80000u;
  *(this + 25) = v3;
  *(this + 94) = v10;
  v2 = *(a2 + 25);
  if ((v2 & 0x40000) == 0)
  {
LABEL_22:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_45;
  }

LABEL_44:
  v11 = *(a2 + 93);
  v3 |= 0x40000u;
  *(this + 25) = v3;
  *(this + 93) = v11;
  v2 = *(a2 + 25);
  if ((v2 & 0x100000) == 0)
  {
LABEL_23:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_46;
  }

LABEL_45:
  v12 = *(a2 + 95);
  v3 |= 0x100000u;
  *(this + 25) = v3;
  *(this + 95) = v12;
  v2 = *(a2 + 25);
  if ((v2 & 0x10) == 0)
  {
LABEL_24:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_47;
  }

LABEL_46:
  result = *(a2 + 10);
  v3 |= 0x10u;
  *(this + 25) = v3;
  *(this + 10) = result;
  v2 = *(a2 + 25);
  if ((v2 & 0x200000) == 0)
  {
LABEL_25:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_48;
  }

LABEL_47:
  v13 = *(a2 + 96);
  v3 |= 0x200000u;
  *(this + 25) = v3;
  *(this + 96) = v13;
  v2 = *(a2 + 25);
  if ((v2 & 0x20000) == 0)
  {
LABEL_26:
    if ((v2 & 8) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_49;
  }

LABEL_48:
  v14 = *(a2 + 92);
  v3 |= 0x20000u;
  *(this + 25) = v3;
  *(this + 92) = v14;
  v2 = *(a2 + 25);
  if ((v2 & 8) == 0)
  {
LABEL_27:
    if ((v2 & 0x1000) == 0)
    {
      return result;
    }

LABEL_50:
    result = *(a2 + 18);
    *(this + 25) = v3 | 0x1000;
    *(this + 18) = result;
    return result;
  }

LABEL_49:
  v15 = *(a2 + 4);
  v3 |= 8u;
  *(this + 25) = v3;
  *(this + 4) = v15;
  if ((*(a2 + 25) & 0x1000) != 0)
  {
    goto LABEL_50;
  }

  return result;
}

CMMsl *CMMsl::GaitCycleSegment::operator=(CMMsl *a1, const CMMsl::GaitCycleSegment *a2)
{
  if (a1 != a2)
  {
    CMMsl::GaitCycleSegment::GaitCycleSegment(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::GaitCycleSegment *a2, CMMsl::GaitCycleSegment *a3)
{
  v3 = *(this + 25);
  *(this + 25) = *(a2 + 25);
  *(a2 + 25) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  v5 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v5;
  v6 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v6;
  v7 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v7;
  v8 = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v8;
  v9 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v9;
  v10 = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v10;
  v11 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v11;
  v12 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v12;
  v13 = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v13;
  v14 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v14;
  v15 = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v15;
  v16 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v16;
  LOBYTE(v6) = *(this + 98);
  *(this + 98) = *(a2 + 98);
  *(a2 + 98) = v6;
  v17 = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v17;
  LOBYTE(v6) = *(this + 97);
  *(this + 97) = *(a2 + 97);
  *(a2 + 97) = v6;
  LOBYTE(v6) = *(this + 94);
  *(this + 94) = *(a2 + 94);
  *(a2 + 94) = v6;
  LOBYTE(v6) = *(this + 93);
  *(this + 93) = *(a2 + 93);
  *(a2 + 93) = v6;
  LOBYTE(v6) = *(this + 95);
  *(this + 95) = *(a2 + 95);
  *(a2 + 95) = v6;
  v18 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v18;
  LOBYTE(v6) = *(this + 96);
  *(this + 96) = *(a2 + 96);
  *(a2 + 96) = v6;
  LOBYTE(v6) = *(this + 92);
  *(this + 92) = *(a2 + 92);
  *(a2 + 92) = v6;
  v19 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v19;
  result = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = result;
  return result;
}

float CMMsl::GaitCycleSegment::GaitCycleSegment(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041E7E0;
  *(a1 + 100) = *(a2 + 100);
  *(a2 + 100) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 98) = *(a2 + 98);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 97) = *(a2 + 97);
  *(a1 + 94) = *(a2 + 94);
  *(a1 + 93) = *(a2 + 93);
  *(a1 + 95) = *(a2 + 95);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 72);
  *(a1 + 72) = result;
  return result;
}

CMMsl *CMMsl::GaitCycleSegment::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::GaitCycleSegment::GaitCycleSegment(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::GaitCycleSegment::formatText(CMMsl::GaitCycleSegment *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 25);
  if ((v5 & 0x10) != 0)
  {
    PB::TextFormatter::format(a2, "asymmetryProbabilityEstimate", *(this + 10));
    v5 = *(this + 25);
    if ((v5 & 0x20) == 0)
    {
LABEL_3:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_31;
    }
  }

  else if ((v5 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "cadence", *(this + 11));
  v5 = *(this + 25);
  if ((v5 & 0x40) == 0)
  {
LABEL_4:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_32;
  }

LABEL_31:
  PB::TextFormatter::format(a2, "doubleSupportEstimate", *(this + 12));
  v5 = *(this + 25);
  if ((v5 & 0x80) == 0)
  {
LABEL_5:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_33;
  }

LABEL_32:
  PB::TextFormatter::format(a2, "horizontalRotationRateMax", *(this + 13));
  v5 = *(this + 25);
  if ((v5 & 0x100) == 0)
  {
LABEL_6:
    if ((v5 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(a2, "impulseMagnitude", *(this + 14));
  v5 = *(this + 25);
  if ((v5 & 1) == 0)
  {
LABEL_7:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_35;
  }

LABEL_34:
  PB::TextFormatter::format(a2, "impulseStartTime", *(this + 1));
  v5 = *(this + 25);
  if ((v5 & 0x20000) == 0)
  {
LABEL_8:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(a2, "isCadenceConcordant", *(this + 92));
  v5 = *(this + 25);
  if ((v5 & 0x40000) == 0)
  {
LABEL_9:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(a2, "isFeasibleWalkingSpeed", *(this + 93));
  v5 = *(this + 25);
  if ((v5 & 0x80000) == 0)
  {
LABEL_10:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_38;
  }

LABEL_37:
  PB::TextFormatter::format(a2, "isNotRunning", *(this + 94));
  v5 = *(this + 25);
  if ((v5 & 0x100000) == 0)
  {
LABEL_11:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(a2, "isPendular", *(this + 95));
  v5 = *(this + 25);
  if ((v5 & 0x200000) == 0)
  {
LABEL_12:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(a2, "isSufficientVerticalTwist", *(this + 96));
  v5 = *(this + 25);
  if ((v5 & 0x400000) == 0)
  {
LABEL_13:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_41;
  }

LABEL_40:
  PB::TextFormatter::format(a2, "isSwingStanceCycle", *(this + 97));
  v5 = *(this + 25);
  if ((v5 & 0x800000) == 0)
  {
LABEL_14:
    if ((v5 & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_42;
  }

LABEL_41:
  PB::TextFormatter::format(a2, "isValid", *(this + 98));
  v5 = *(this + 25);
  if ((v5 & 2) == 0)
  {
LABEL_15:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_43;
  }

LABEL_42:
  PB::TextFormatter::format(a2, "loftEndTime", *(this + 2));
  v5 = *(this + 25);
  if ((v5 & 0x200) == 0)
  {
LABEL_16:
    if ((v5 & 4) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_44;
  }

LABEL_43:
  PB::TextFormatter::format(a2, "loftMagnitude", *(this + 15));
  v5 = *(this + 25);
  if ((v5 & 4) == 0)
  {
LABEL_17:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_45;
  }

LABEL_44:
  PB::TextFormatter::format(a2, "loftStartTime", *(this + 3));
  v5 = *(this + 25);
  if ((v5 & 0x400) == 0)
  {
LABEL_18:
    if ((v5 & 8) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_46;
  }

LABEL_45:
  PB::TextFormatter::format(a2, "pendulumResidual", *(this + 16));
  v5 = *(this + 25);
  if ((v5 & 8) == 0)
  {
LABEL_19:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_47;
  }

LABEL_46:
  PB::TextFormatter::format(a2, "previousImpulseStartTime", *(this + 4));
  v5 = *(this + 25);
  if ((v5 & 0x800) == 0)
  {
LABEL_20:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_48;
  }

LABEL_47:
  PB::TextFormatter::format(a2, "rawLoftSpeed", *(this + 17));
  v5 = *(this + 25);
  if ((v5 & 0x1000) == 0)
  {
LABEL_21:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_49;
  }

LABEL_48:
  PB::TextFormatter::format(a2, "sqrtMaxAbsLoftAccel", *(this + 18));
  v5 = *(this + 25);
  if ((v5 & 0x2000) == 0)
  {
LABEL_22:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_50;
  }

LABEL_49:
  PB::TextFormatter::format(a2, "stanceProbability", *(this + 19));
  v5 = *(this + 25);
  if ((v5 & 0x4000) == 0)
  {
LABEL_23:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_51;
  }

LABEL_50:
  PB::TextFormatter::format(a2, "stepLengthEstimate", *(this + 20));
  v5 = *(this + 25);
  if ((v5 & 0x8000) == 0)
  {
LABEL_24:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_51:
  PB::TextFormatter::format(a2, "verticalRotationRateMean", *(this + 21));
  if ((*(this + 25) & 0x10000) != 0)
  {
LABEL_25:
    PB::TextFormatter::format(a2, "walkSpeedEstimate", *(this + 22));
  }

LABEL_26:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::GaitCycleSegment::readFrom(CMMsl::GaitCycleSegment *this, PB::Reader *a2)
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
        goto LABEL_178;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 25) |= 1u;
          v22 = *(a2 + 1);
          v2 = *(a2 + 2);
          v23 = *a2;
          if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
          {
            v75 = 0;
            v76 = 0;
            v26 = 0;
            if (v2 <= v22)
            {
              v2 = *(a2 + 1);
            }

            v77 = v2 - v22;
            v78 = (v23 + v22);
            v79 = v22 + 1;
            while (1)
            {
              if (!v77)
              {
                v26 = 0;
                *(a2 + 24) = 1;
                goto LABEL_165;
              }

              v80 = v79;
              v81 = *v78;
              *(a2 + 1) = v80;
              v26 |= (v81 & 0x7F) << v75;
              if ((v81 & 0x80) == 0)
              {
                break;
              }

              v75 += 7;
              --v77;
              ++v78;
              v79 = v80 + 1;
              v14 = v76++ > 8;
              if (v14)
              {
                v26 = 0;
                goto LABEL_164;
              }
            }

            if (*(a2 + 24))
            {
              v26 = 0;
            }

LABEL_164:
            v2 = v80;
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
                goto LABEL_165;
              }

              v24 += 7;
              ++v28;
              v14 = v25++ > 8;
            }

            while (!v14);
            v26 = 0;
          }

LABEL_165:
          *(this + 1) = v26;
          goto LABEL_174;
        case 2u:
          *(this + 25) |= 4u;
          v42 = *(a2 + 1);
          v2 = *(a2 + 2);
          v43 = *a2;
          if (v42 > 0xFFFFFFFFFFFFFFF5 || v42 + 10 > v2)
          {
            v82 = 0;
            v83 = 0;
            v46 = 0;
            if (v2 <= v42)
            {
              v2 = *(a2 + 1);
            }

            v84 = v2 - v42;
            v85 = (v43 + v42);
            v86 = v42 + 1;
            while (1)
            {
              if (!v84)
              {
                v46 = 0;
                *(a2 + 24) = 1;
                goto LABEL_169;
              }

              v87 = v86;
              v88 = *v85;
              *(a2 + 1) = v87;
              v46 |= (v88 & 0x7F) << v82;
              if ((v88 & 0x80) == 0)
              {
                break;
              }

              v82 += 7;
              --v84;
              ++v85;
              v86 = v87 + 1;
              v14 = v83++ > 8;
              if (v14)
              {
                v46 = 0;
LABEL_168:
                v2 = v87;
                goto LABEL_169;
              }
            }

            if (*(a2 + 24))
            {
              v46 = 0;
            }

            goto LABEL_168;
          }

          v44 = 0;
          v45 = 0;
          v46 = 0;
          v47 = (v43 + v42);
          v48 = v42 + 1;
          do
          {
            v2 = v48;
            *(a2 + 1) = v48;
            v49 = *v47++;
            v46 |= (v49 & 0x7F) << v44;
            if ((v49 & 0x80) == 0)
            {
              goto LABEL_169;
            }

            v44 += 7;
            ++v48;
            v14 = v45++ > 8;
          }

          while (!v14);
          v46 = 0;
LABEL_169:
          *(this + 3) = v46;
          goto LABEL_174;
        case 3u:
          *(this + 25) |= 2u;
          v32 = *(a2 + 1);
          v2 = *(a2 + 2);
          v33 = *a2;
          if (v32 > 0xFFFFFFFFFFFFFFF5 || v32 + 10 > v2)
          {
            v68 = 0;
            v69 = 0;
            v36 = 0;
            if (v2 <= v32)
            {
              v2 = *(a2 + 1);
            }

            v70 = v2 - v32;
            v71 = (v33 + v32);
            v72 = v32 + 1;
            while (1)
            {
              if (!v70)
              {
                v36 = 0;
                *(a2 + 24) = 1;
                goto LABEL_161;
              }

              v73 = v72;
              v74 = *v71;
              *(a2 + 1) = v73;
              v36 |= (v74 & 0x7F) << v68;
              if ((v74 & 0x80) == 0)
              {
                break;
              }

              v68 += 7;
              --v70;
              ++v71;
              v72 = v73 + 1;
              v14 = v69++ > 8;
              if (v14)
              {
                v36 = 0;
LABEL_160:
                v2 = v73;
                goto LABEL_161;
              }
            }

            if (*(a2 + 24))
            {
              v36 = 0;
            }

            goto LABEL_160;
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
              goto LABEL_161;
            }

            v34 += 7;
            ++v38;
            v14 = v35++ > 8;
          }

          while (!v14);
          v36 = 0;
LABEL_161:
          *(this + 2) = v36;
          goto LABEL_174;
        case 4u:
          *(this + 25) |= 0x200u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_103;
          }

          *(this + 15) = *(*a2 + v2);
          goto LABEL_153;
        case 5u:
          *(this + 25) |= 0x10000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_103;
          }

          *(this + 22) = *(*a2 + v2);
          goto LABEL_153;
        case 6u:
          *(this + 25) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_103;
          }

          *(this + 12) = *(*a2 + v2);
          goto LABEL_153;
        case 7u:
          *(this + 25) |= 0x4000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_103;
          }

          *(this + 20) = *(*a2 + v2);
          goto LABEL_153;
        case 8u:
          *(this + 25) |= 0x100u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_103;
          }

          *(this + 14) = *(*a2 + v2);
          goto LABEL_153;
        case 9u:
          *(this + 25) |= 0x80u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_103;
          }

          *(this + 13) = *(*a2 + v2);
          goto LABEL_153;
        case 0xAu:
          *(this + 25) |= 0x2000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_103;
          }

          *(this + 19) = *(*a2 + v2);
          goto LABEL_153;
        case 0xBu:
          *(this + 25) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_103;
          }

          *(this + 11) = *(*a2 + v2);
          goto LABEL_153;
        case 0xCu:
          *(this + 25) |= 0x8000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_103;
          }

          *(this + 21) = *(*a2 + v2);
          goto LABEL_153;
        case 0xDu:
          *(this + 25) |= 0x400u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_103;
          }

          *(this + 16) = *(*a2 + v2);
          goto LABEL_153;
        case 0xEu:
          *(this + 25) |= 0x800000u;
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

          *(this + 98) = v57;
          goto LABEL_174;
        case 0xFu:
          *(this + 25) |= 0x800u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_103;
          }

          *(this + 17) = *(*a2 + v2);
          goto LABEL_153;
        case 0x10u:
          *(this + 25) |= 0x400000u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v41 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v40 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v41 = v40 != 0;
          }

          *(this + 97) = v41;
          goto LABEL_174;
        case 0x11u:
          *(this + 25) |= 0x80000u;
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

          *(this + 94) = v31;
          goto LABEL_174;
        case 0x12u:
          *(this + 25) |= 0x40000u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v51 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v50 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v51 = v50 != 0;
          }

          *(this + 93) = v51;
          goto LABEL_174;
        case 0x13u:
          *(this + 25) |= 0x100000u;
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

          *(this + 95) = v59;
          goto LABEL_174;
        case 0x14u:
          *(this + 25) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_103;
          }

          *(this + 10) = *(*a2 + v2);
          goto LABEL_153;
        case 0x15u:
          *(this + 25) |= 0x200000u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v53 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v52 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v53 = v52 != 0;
          }

          *(this + 96) = v53;
          goto LABEL_174;
        case 0x16u:
          *(this + 25) |= 0x20000u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v55 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v54 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v55 = v54 != 0;
          }

          *(this + 92) = v55;
          goto LABEL_174;
        case 0x17u:
          *(this + 25) |= 8u;
          v60 = *(a2 + 1);
          v2 = *(a2 + 2);
          v61 = *a2;
          if (v60 > 0xFFFFFFFFFFFFFFF5 || v60 + 10 > v2)
          {
            v89 = 0;
            v90 = 0;
            v64 = 0;
            if (v2 <= v60)
            {
              v2 = *(a2 + 1);
            }

            v91 = v2 - v60;
            v92 = (v61 + v60);
            v93 = v60 + 1;
            while (1)
            {
              if (!v91)
              {
                v64 = 0;
                *(a2 + 24) = 1;
                goto LABEL_173;
              }

              v94 = v93;
              v95 = *v92;
              *(a2 + 1) = v94;
              v64 |= (v95 & 0x7F) << v89;
              if ((v95 & 0x80) == 0)
              {
                break;
              }

              v89 += 7;
              --v91;
              ++v92;
              v93 = v94 + 1;
              v14 = v90++ > 8;
              if (v14)
              {
                v64 = 0;
LABEL_172:
                v2 = v94;
                goto LABEL_173;
              }
            }

            if (*(a2 + 24))
            {
              v64 = 0;
            }

            goto LABEL_172;
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
              goto LABEL_173;
            }

            v62 += 7;
            ++v66;
            v14 = v63++ > 8;
          }

          while (!v14);
          v64 = 0;
LABEL_173:
          *(this + 4) = v64;
          goto LABEL_174;
        case 0x18u:
          *(this + 25) |= 0x1000u;
          v2 = *(a2 + 1);
          if (v2 <= 0xFFFFFFFFFFFFFFFBLL && v2 + 4 <= *(a2 + 2))
          {
            *(this + 18) = *(*a2 + v2);
LABEL_153:
            v2 = *(a2 + 1) + 4;
            *(a2 + 1) = v2;
          }

          else
          {
LABEL_103:
            *(a2 + 24) = 1;
          }

          goto LABEL_174;
        default:
          if (!PB::Reader::skip(a2, v10 >> 3, v10 & 7, 0))
          {
            v96 = 0;
            return v96 & 1;
          }

          v2 = *(a2 + 1);
LABEL_174:
          v3 = *(a2 + 2);
          v4 = *(a2 + 24);
          if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
          {
            goto LABEL_178;
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

LABEL_178:
  v96 = v4 ^ 1;
  return v96 & 1;
}

uint64_t CMMsl::GaitCycleSegment::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 100);
  if (v4)
  {
    this = PB::Writer::writeVarInt(a2, *(this + 8), 1u);
    v4 = *(v3 + 100);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::writeVarInt(a2, *(v3 + 24), 2u);
  v4 = *(v3 + 100);
  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = PB::Writer::writeVarInt(a2, *(v3 + 16), 3u);
  v4 = *(v3 + 100);
  if ((v4 & 0x200) == 0)
  {
LABEL_5:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = PB::Writer::write(a2, *(v3 + 60), 4u);
  v4 = *(v3 + 100);
  if ((v4 & 0x10000) == 0)
  {
LABEL_6:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = PB::Writer::write(a2, *(v3 + 88), 5u);
  v4 = *(v3 + 100);
  if ((v4 & 0x40) == 0)
  {
LABEL_7:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = PB::Writer::write(a2, *(v3 + 48), 6u);
  v4 = *(v3 + 100);
  if ((v4 & 0x4000) == 0)
  {
LABEL_8:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = PB::Writer::write(a2, *(v3 + 80), 7u);
  v4 = *(v3 + 100);
  if ((v4 & 0x100) == 0)
  {
LABEL_9:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = PB::Writer::write(a2, *(v3 + 56), 8u);
  v4 = *(v3 + 100);
  if ((v4 & 0x80) == 0)
  {
LABEL_10:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = PB::Writer::write(a2, *(v3 + 52), 9u);
  v4 = *(v3 + 100);
  if ((v4 & 0x2000) == 0)
  {
LABEL_11:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = PB::Writer::write(a2, *(v3 + 76), 0xAu);
  v4 = *(v3 + 100);
  if ((v4 & 0x20) == 0)
  {
LABEL_12:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = PB::Writer::write(a2, *(v3 + 44), 0xBu);
  v4 = *(v3 + 100);
  if ((v4 & 0x8000) == 0)
  {
LABEL_13:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = PB::Writer::write(a2, *(v3 + 84), 0xCu);
  v4 = *(v3 + 100);
  if ((v4 & 0x400) == 0)
  {
LABEL_14:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = PB::Writer::write(a2, *(v3 + 64), 0xDu);
  v4 = *(v3 + 100);
  if ((v4 & 0x800000) == 0)
  {
LABEL_15:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_40;
  }

LABEL_39:
  this = PB::Writer::write(a2, *(v3 + 98), 0xEu);
  v4 = *(v3 + 100);
  if ((v4 & 0x800) == 0)
  {
LABEL_16:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_41;
  }

LABEL_40:
  this = PB::Writer::write(a2, *(v3 + 68), 0xFu);
  v4 = *(v3 + 100);
  if ((v4 & 0x400000) == 0)
  {
LABEL_17:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_42;
  }

LABEL_41:
  this = PB::Writer::write(a2, *(v3 + 97), 0x10u);
  v4 = *(v3 + 100);
  if ((v4 & 0x80000) == 0)
  {
LABEL_18:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_43;
  }

LABEL_42:
  this = PB::Writer::write(a2, *(v3 + 94), 0x11u);
  v4 = *(v3 + 100);
  if ((v4 & 0x40000) == 0)
  {
LABEL_19:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_44;
  }

LABEL_43:
  this = PB::Writer::write(a2, *(v3 + 93), 0x12u);
  v4 = *(v3 + 100);
  if ((v4 & 0x100000) == 0)
  {
LABEL_20:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_45;
  }

LABEL_44:
  this = PB::Writer::write(a2, *(v3 + 95), 0x13u);
  v4 = *(v3 + 100);
  if ((v4 & 0x10) == 0)
  {
LABEL_21:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_46;
  }

LABEL_45:
  this = PB::Writer::write(a2, *(v3 + 40), 0x14u);
  v4 = *(v3 + 100);
  if ((v4 & 0x200000) == 0)
  {
LABEL_22:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_47;
  }

LABEL_46:
  this = PB::Writer::write(a2, *(v3 + 96), 0x15u);
  v4 = *(v3 + 100);
  if ((v4 & 0x20000) == 0)
  {
LABEL_23:
    if ((v4 & 8) == 0)
    {
      goto LABEL_24;
    }

LABEL_48:
    this = PB::Writer::writeVarInt(a2, *(v3 + 32), 0x17u);
    if ((*(v3 + 100) & 0x1000) == 0)
    {
      return this;
    }

    goto LABEL_49;
  }

LABEL_47:
  this = PB::Writer::write(a2, *(v3 + 92), 0x16u);
  v4 = *(v3 + 100);
  if ((v4 & 8) != 0)
  {
    goto LABEL_48;
  }

LABEL_24:
  if ((v4 & 0x1000) == 0)
  {
    return this;
  }

LABEL_49:
  v5 = *(v3 + 72);

  return PB::Writer::write(a2, v5, 0x18u);
}

BOOL CMMsl::GaitCycleSegment::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 100);
  v3 = *(a2 + 100);
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

  if ((v2 & 0x800000) != 0)
  {
    if ((v3 & 0x800000) == 0 || *(a1 + 98) != *(a2 + 98))
    {
      return 0;
    }
  }

  else if ((v3 & 0x800000) != 0)
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

  if ((v2 & 0x400000) != 0)
  {
    if ((v3 & 0x400000) == 0 || *(a1 + 97) != *(a2 + 97))
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
    if ((v3 & 0x80000) == 0 || *(a1 + 94) != *(a2 + 94))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40000) != 0)
  {
    if ((v3 & 0x40000) == 0 || *(a1 + 93) != *(a2 + 93))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x100000) != 0)
  {
    if ((v3 & 0x100000) == 0 || *(a1 + 95) != *(a2 + 95))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100000) != 0)
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

  if ((v2 & 0x200000) != 0)
  {
    if ((v3 & 0x200000) == 0 || *(a1 + 96) != *(a2 + 96))
    {
      return 0;
    }
  }

  else if ((v3 & 0x200000) != 0)
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

  v4 = (*(a2 + 100) & 0x1000) == 0;
  if ((v2 & 0x1000) != 0)
  {
    return (v3 & 0x1000) != 0 && *(a1 + 72) == *(a2 + 72);
  }

  return v4;
}

uint64_t CMMsl::GaitCycleSegment::hash_value(CMMsl::GaitCycleSegment *this)
{
  v1 = *(this + 25);
  if (v1)
  {
    v2 = *(this + 1);
    if ((v1 & 4) != 0)
    {
LABEL_3:
      v3 = *(this + 3);
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
    if ((v1 & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((v1 & 2) != 0)
  {
LABEL_4:
    v4 = *(this + 2);
    if ((v1 & 0x200) != 0)
    {
      goto LABEL_5;
    }

LABEL_43:
    v6 = 0;
    if ((v1 & 0x10000) != 0)
    {
      goto LABEL_8;
    }

LABEL_44:
    v8 = 0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_11;
    }

LABEL_45:
    v10 = 0;
    if ((v1 & 0x4000) != 0)
    {
      goto LABEL_14;
    }

LABEL_46:
    v12 = 0;
    if ((v1 & 0x100) != 0)
    {
      goto LABEL_17;
    }

LABEL_47:
    v14 = 0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_20;
    }

LABEL_48:
    v16 = 0;
    if ((v1 & 0x2000) != 0)
    {
      goto LABEL_23;
    }

LABEL_49:
    v18 = 0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_26;
    }

LABEL_50:
    v20 = 0;
    if ((v1 & 0x8000) != 0)
    {
      goto LABEL_29;
    }

LABEL_51:
    v22 = 0;
    if ((v1 & 0x400) != 0)
    {
      goto LABEL_32;
    }

LABEL_52:
    v24 = 0;
    if ((v1 & 0x800000) != 0)
    {
      goto LABEL_35;
    }

    goto LABEL_53;
  }

LABEL_42:
  v4 = 0;
  if ((v1 & 0x200) == 0)
  {
    goto LABEL_43;
  }

LABEL_5:
  v5 = *(this + 15);
  v6 = LODWORD(v5);
  if (v5 == 0.0)
  {
    v6 = 0;
  }

  if ((v1 & 0x10000) == 0)
  {
    goto LABEL_44;
  }

LABEL_8:
  v7 = *(this + 22);
  v8 = LODWORD(v7);
  if (v7 == 0.0)
  {
    v8 = 0;
  }

  if ((v1 & 0x40) == 0)
  {
    goto LABEL_45;
  }

LABEL_11:
  v9 = *(this + 12);
  v10 = LODWORD(v9);
  if (v9 == 0.0)
  {
    v10 = 0;
  }

  if ((v1 & 0x4000) == 0)
  {
    goto LABEL_46;
  }

LABEL_14:
  v11 = *(this + 20);
  v12 = LODWORD(v11);
  if (v11 == 0.0)
  {
    v12 = 0;
  }

  if ((v1 & 0x100) == 0)
  {
    goto LABEL_47;
  }

LABEL_17:
  v13 = *(this + 14);
  v14 = LODWORD(v13);
  if (v13 == 0.0)
  {
    v14 = 0;
  }

  if ((v1 & 0x80) == 0)
  {
    goto LABEL_48;
  }

LABEL_20:
  v15 = *(this + 13);
  v16 = LODWORD(v15);
  if (v15 == 0.0)
  {
    v16 = 0;
  }

  if ((v1 & 0x2000) == 0)
  {
    goto LABEL_49;
  }

LABEL_23:
  v17 = *(this + 19);
  v18 = LODWORD(v17);
  if (v17 == 0.0)
  {
    v18 = 0;
  }

  if ((v1 & 0x20) == 0)
  {
    goto LABEL_50;
  }

LABEL_26:
  v19 = *(this + 11);
  v20 = LODWORD(v19);
  if (v19 == 0.0)
  {
    v20 = 0;
  }

  if ((v1 & 0x8000) == 0)
  {
    goto LABEL_51;
  }

LABEL_29:
  v21 = *(this + 21);
  v22 = LODWORD(v21);
  if (v21 == 0.0)
  {
    v22 = 0;
  }

  if ((v1 & 0x400) == 0)
  {
    goto LABEL_52;
  }

LABEL_32:
  v23 = *(this + 16);
  v24 = LODWORD(v23);
  if (v23 == 0.0)
  {
    v24 = 0;
  }

  if ((v1 & 0x800000) != 0)
  {
LABEL_35:
    v25 = *(this + 98);
    if ((v1 & 0x800) != 0)
    {
      goto LABEL_36;
    }

    goto LABEL_54;
  }

LABEL_53:
  v25 = 0;
  if ((v1 & 0x800) != 0)
  {
LABEL_36:
    v26 = *(this + 17);
    v27 = LODWORD(v26);
    if (v26 == 0.0)
    {
      v27 = 0;
    }

    if ((v1 & 0x400000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_55;
  }

LABEL_54:
  v27 = 0;
  if ((v1 & 0x400000) != 0)
  {
LABEL_39:
    v28 = *(this + 97);
    goto LABEL_56;
  }

LABEL_55:
  v28 = 0;
LABEL_56:
  if ((v1 & 0x80000) != 0)
  {
    v29 = *(this + 94);
    if ((v1 & 0x40000) != 0)
    {
LABEL_58:
      v30 = *(this + 93);
      if ((v1 & 0x100000) != 0)
      {
        goto LABEL_59;
      }

      goto LABEL_71;
    }
  }

  else
  {
    v29 = 0;
    if ((v1 & 0x40000) != 0)
    {
      goto LABEL_58;
    }
  }

  v30 = 0;
  if ((v1 & 0x100000) != 0)
  {
LABEL_59:
    v31 = *(this + 95);
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_60;
    }

LABEL_72:
    v33 = 0;
    if ((v1 & 0x200000) != 0)
    {
      goto LABEL_63;
    }

    goto LABEL_73;
  }

LABEL_71:
  v31 = 0;
  if ((v1 & 0x10) == 0)
  {
    goto LABEL_72;
  }

LABEL_60:
  v32 = *(this + 10);
  v33 = LODWORD(v32);
  if (v32 == 0.0)
  {
    v33 = 0;
  }

  if ((v1 & 0x200000) != 0)
  {
LABEL_63:
    v34 = *(this + 96);
    if ((v1 & 0x20000) != 0)
    {
      goto LABEL_64;
    }

    goto LABEL_74;
  }

LABEL_73:
  v34 = 0;
  if ((v1 & 0x20000) != 0)
  {
LABEL_64:
    v35 = *(this + 92);
    if ((v1 & 8) != 0)
    {
      goto LABEL_65;
    }

    goto LABEL_75;
  }

LABEL_74:
  v35 = 0;
  if ((v1 & 8) != 0)
  {
LABEL_65:
    v36 = *(this + 4);
    if ((v1 & 0x1000) != 0)
    {
      goto LABEL_66;
    }

LABEL_76:
    v38 = 0;
    return v3 ^ v2 ^ v4 ^ v6 ^ v8 ^ v10 ^ v12 ^ v14 ^ v16 ^ v18 ^ v20 ^ v22 ^ v24 ^ v25 ^ v27 ^ v28 ^ v29 ^ v30 ^ v31 ^ v33 ^ v34 ^ v35 ^ v36 ^ v38;
  }

LABEL_75:
  v36 = 0;
  if ((v1 & 0x1000) == 0)
  {
    goto LABEL_76;
  }

LABEL_66:
  v37 = *(this + 18);
  v38 = LODWORD(v37);
  if (v37 == 0.0)
  {
    v38 = 0;
  }

  return v3 ^ v2 ^ v4 ^ v6 ^ v8 ^ v10 ^ v12 ^ v14 ^ v16 ^ v18 ^ v20 ^ v22 ^ v24 ^ v25 ^ v27 ^ v28 ^ v29 ^ v30 ^ v31 ^ v33 ^ v34 ^ v35 ^ v36 ^ v38;
}

uint64_t CMMsl::GaitCycleSegmentationState::GaitCycleSegmentationState(uint64_t this)
{
  *this = off_10041E818;
  *(this + 116) = 0;
  return this;
}

{
  *this = off_10041E818;
  *(this + 116) = 0;
  return this;
}

void CMMsl::GaitCycleSegmentationState::~GaitCycleSegmentationState(CMMsl::GaitCycleSegmentationState *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::GaitCycleSegmentationState::GaitCycleSegmentationState(uint64_t this, const CMMsl::GaitCycleSegmentationState *a2)
{
  *this = off_10041E818;
  *(this + 116) = 0;
  v2 = *(a2 + 29);
  if ((v2 & 0x80) != 0)
  {
    v4 = *(a2 + 8);
    v3 = 128;
    *(this + 116) = 128;
    *(this + 64) = v4;
    v2 = *(a2 + 29);
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x100000) != 0)
  {
LABEL_5:
    v5 = *(a2 + 114);
    v3 |= 0x100000u;
    *(this + 116) = v3;
    *(this + 114) = v5;
    v2 = *(a2 + 29);
  }

LABEL_6:
  if ((v2 & 0x80000) != 0)
  {
    v6 = *(a2 + 113);
    v3 |= 0x80000u;
    *(this + 116) = v3;
    *(this + 113) = v6;
    v2 = *(a2 + 29);
    if ((v2 & 0x200000) == 0)
    {
LABEL_8:
      if ((v2 & 0x40000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_29;
    }
  }

  else if ((v2 & 0x200000) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 115);
  v3 |= 0x200000u;
  *(this + 116) = v3;
  *(this + 115) = v7;
  v2 = *(a2 + 29);
  if ((v2 & 0x40000) == 0)
  {
LABEL_9:
    if ((v2 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  v8 = *(a2 + 112);
  v3 |= 0x40000u;
  *(this + 116) = v3;
  *(this + 112) = v8;
  v2 = *(a2 + 29);
  if ((v2 & 4) == 0)
  {
LABEL_10:
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  v9 = *(a2 + 3);
  v3 |= 4u;
  *(this + 116) = v3;
  *(this + 24) = v9;
  v2 = *(a2 + 29);
  if ((v2 & 2) == 0)
  {
LABEL_11:
    if ((v2 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  v10 = *(a2 + 2);
  v3 |= 2u;
  *(this + 116) = v3;
  *(this + 16) = v10;
  v2 = *(a2 + 29);
  if ((v2 & 1) == 0)
  {
LABEL_12:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  v11 = *(a2 + 1);
  v3 |= 1u;
  *(this + 116) = v3;
  *(this + 8) = v11;
  v2 = *(a2 + 29);
  if ((v2 & 0x20) == 0)
  {
LABEL_13:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  v12 = *(a2 + 6);
  v3 |= 0x20u;
  *(this + 116) = v3;
  *(this + 48) = v12;
  v2 = *(a2 + 29);
  if ((v2 & 0x40) == 0)
  {
LABEL_14:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  v13 = *(a2 + 7);
  v3 |= 0x40u;
  *(this + 116) = v3;
  *(this + 56) = v13;
  v2 = *(a2 + 29);
  if ((v2 & 0x2000) == 0)
  {
LABEL_15:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  v14 = *(a2 + 23);
  v3 |= 0x2000u;
  *(this + 116) = v3;
  *(this + 92) = v14;
  v2 = *(a2 + 29);
  if ((v2 & 0x10000) == 0)
  {
LABEL_16:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  v15 = *(a2 + 26);
  v3 |= 0x10000u;
  *(this + 116) = v3;
  *(this + 104) = v15;
  v2 = *(a2 + 29);
  if ((v2 & 0x1000) == 0)
  {
LABEL_17:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_38;
  }

LABEL_37:
  v16 = *(a2 + 22);
  v3 |= 0x1000u;
  *(this + 116) = v3;
  *(this + 88) = v16;
  v2 = *(a2 + 29);
  if ((v2 & 0x800) == 0)
  {
LABEL_18:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_39;
  }

LABEL_38:
  v17 = *(a2 + 21);
  v3 |= 0x800u;
  *(this + 116) = v3;
  *(this + 84) = v17;
  v2 = *(a2 + 29);
  if ((v2 & 0x8000) == 0)
  {
LABEL_19:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_40;
  }

LABEL_39:
  v18 = *(a2 + 25);
  v3 |= 0x8000u;
  *(this + 116) = v3;
  *(this + 100) = v18;
  v2 = *(a2 + 29);
  if ((v2 & 0x200) == 0)
  {
LABEL_20:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_41;
  }

LABEL_40:
  v19 = *(a2 + 19);
  v3 |= 0x200u;
  *(this + 116) = v3;
  *(this + 76) = v19;
  v2 = *(a2 + 29);
  if ((v2 & 0x400) == 0)
  {
LABEL_21:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_42;
  }

LABEL_41:
  v20 = *(a2 + 20);
  v3 |= 0x400u;
  *(this + 116) = v3;
  *(this + 80) = v20;
  v2 = *(a2 + 29);
  if ((v2 & 0x4000) == 0)
  {
LABEL_22:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_43;
  }

LABEL_42:
  v21 = *(a2 + 24);
  v3 |= 0x4000u;
  *(this + 116) = v3;
  *(this + 96) = v21;
  v2 = *(a2 + 29);
  if ((v2 & 0x100) == 0)
  {
LABEL_23:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_44;
  }

LABEL_43:
  v22 = *(a2 + 18);
  v3 |= 0x100u;
  *(this + 116) = v3;
  *(this + 72) = v22;
  v2 = *(a2 + 29);
  if ((v2 & 0x20000) == 0)
  {
LABEL_24:
    if ((v2 & 8) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_45;
  }

LABEL_44:
  v23 = *(a2 + 27);
  v3 |= 0x20000u;
  *(this + 116) = v3;
  *(this + 108) = v23;
  v2 = *(a2 + 29);
  if ((v2 & 8) == 0)
  {
LABEL_25:
    if ((v2 & 0x10) == 0)
    {
      return this;
    }

LABEL_46:
    v25 = *(a2 + 5);
    *(this + 116) = v3 | 0x10;
    *(this + 40) = v25;
    return this;
  }

LABEL_45:
  v24 = *(a2 + 4);
  v3 |= 8u;
  *(this + 116) = v3;
  *(this + 32) = v24;
  if ((*(a2 + 29) & 0x10) != 0)
  {
    goto LABEL_46;
  }

  return this;
}

CMMsl *CMMsl::GaitCycleSegmentationState::operator=(CMMsl *a1, const CMMsl::GaitCycleSegmentationState *a2)
{
  if (a1 != a2)
  {
    CMMsl::GaitCycleSegmentationState::GaitCycleSegmentationState(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::GaitCycleSegmentationState *a2, CMMsl::GaitCycleSegmentationState *a3)
{
  v3 = *(this + 29);
  *(this + 29) = *(a2 + 29);
  *(a2 + 29) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v4;
  LOBYTE(v3) = *(this + 114);
  *(this + 114) = *(a2 + 114);
  *(a2 + 114) = v3;
  LOBYTE(v3) = *(this + 113);
  *(this + 113) = *(a2 + 113);
  *(a2 + 113) = v3;
  LOBYTE(v3) = *(this + 115);
  *(this + 115) = *(a2 + 115);
  *(a2 + 115) = v3;
  LOBYTE(v3) = *(this + 112);
  *(this + 112) = *(a2 + 112);
  *(a2 + 112) = v3;
  v5 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v5;
  v6 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v6;
  v7 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v7;
  v8 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v8;
  v9 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v9;
  LODWORD(v4) = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = v4;
  LODWORD(v4) = *(this + 26);
  *(this + 26) = *(a2 + 26);
  *(a2 + 26) = v4;
  LODWORD(v4) = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v4;
  LODWORD(v4) = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v4;
  LODWORD(v4) = *(this + 25);
  *(this + 25) = *(a2 + 25);
  *(a2 + 25) = v4;
  LODWORD(v4) = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v4;
  LODWORD(v4) = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v4;
  LODWORD(v4) = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v4;
  LODWORD(v4) = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v4;
  result = *(this + 27);
  *(this + 27) = *(a2 + 27);
  *(a2 + 27) = result;
  v11 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v11;
  v12 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v12;
  return result;
}

float CMMsl::GaitCycleSegmentationState::GaitCycleSegmentationState(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041E818;
  *(a1 + 116) = *(a2 + 116);
  *(a2 + 116) = 0;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 114) = *(a2 + 114);
  *(a1 + 113) = *(a2 + 113);
  *(a1 + 115) = *(a2 + 115);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 72) = *(a2 + 72);
  result = *(a2 + 108);
  *(a1 + 108) = result;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  return result;
}

CMMsl *CMMsl::GaitCycleSegmentationState::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::GaitCycleSegmentationState::GaitCycleSegmentationState(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::GaitCycleSegmentationState::formatText(CMMsl::GaitCycleSegmentationState *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 29);
  if (v5)
  {
    PB::TextFormatter::format(a2, "curImpulseStartTime", *(this + 1));
    v5 = *(this + 29);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_29;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "curLoftEndTime", *(this + 2));
  v5 = *(this + 29);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_30;
  }

LABEL_29:
  PB::TextFormatter::format(a2, "curLoftStartTime", *(this + 3));
  v5 = *(this + 29);
  if ((v5 & 0x100) == 0)
  {
LABEL_5:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_31;
  }

LABEL_30:
  PB::TextFormatter::format(a2, "currentCadence", *(this + 18));
  v5 = *(this + 29);
  if ((v5 & 0x200) == 0)
  {
LABEL_6:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_32;
  }

LABEL_31:
  PB::TextFormatter::format(a2, "currentHorzRotRateMax", *(this + 19));
  v5 = *(this + 29);
  if ((v5 & 0x400) == 0)
  {
LABEL_7:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_33;
  }

LABEL_32:
  PB::TextFormatter::format(a2, "currentImpulseMagnitude", *(this + 20));
  v5 = *(this + 29);
  if ((v5 & 0x800) == 0)
  {
LABEL_8:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(a2, "currentLoftMagnitude", *(this + 21));
  v5 = *(this + 29);
  if ((v5 & 0x1000) == 0)
  {
LABEL_9:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_35;
  }

LABEL_34:
  PB::TextFormatter::format(a2, "currentMax", *(this + 22));
  v5 = *(this + 29);
  if ((v5 & 0x2000) == 0)
  {
LABEL_10:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(a2, "currentMin", *(this + 23));
  v5 = *(this + 29);
  if ((v5 & 0x4000) == 0)
  {
LABEL_11:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(a2, "currentWalkSpeedEstimate", *(this + 24));
  v5 = *(this + 29);
  if ((v5 & 0x40000) == 0)
  {
LABEL_12:
    if ((v5 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_38;
  }

LABEL_37:
  PB::TextFormatter::format(a2, "firstLoft", *(this + 112));
  v5 = *(this + 29);
  if ((v5 & 8) == 0)
  {
LABEL_13:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(a2, "impulseStartTimeWalkingSpeed", *(this + 4));
  v5 = *(this + 29);
  if ((v5 & 0x10) == 0)
  {
LABEL_14:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(a2, "impulseStopTimeWalkingSpeed", *(this + 5));
  v5 = *(this + 29);
  if ((v5 & 0x20) == 0)
  {
LABEL_15:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_41;
  }

LABEL_40:
  PB::TextFormatter::format(a2, "lastZeroTime", *(this + 6));
  v5 = *(this + 29);
  if ((v5 & 0x80000) == 0)
  {
LABEL_16:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_42;
  }

LABEL_41:
  PB::TextFormatter::format(a2, "loftEndDetected", *(this + 113));
  v5 = *(this + 29);
  if ((v5 & 0x100000) == 0)
  {
LABEL_17:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_43;
  }

LABEL_42:
  PB::TextFormatter::format(a2, "loftStartDetected", *(this + 114));
  v5 = *(this + 29);
  if ((v5 & 0x40) == 0)
  {
LABEL_18:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_44;
  }

LABEL_43:
  PB::TextFormatter::format(a2, "prevLoftStartTime", *(this + 7));
  v5 = *(this + 29);
  if ((v5 & 0x8000) == 0)
  {
LABEL_19:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_45;
  }

LABEL_44:
  PB::TextFormatter::format(a2, "previousHorzRotRateMax", *(this + 25));
  v5 = *(this + 29);
  if ((v5 & 0x10000) == 0)
  {
LABEL_20:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_46;
  }

LABEL_45:
  PB::TextFormatter::format(a2, "previousMax", *(this + 26));
  v5 = *(this + 29);
  if ((v5 & 0x80) == 0)
  {
LABEL_21:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_47;
  }

LABEL_46:
  PB::TextFormatter::format(a2, "timestamp", *(this + 8));
  v5 = *(this + 29);
  if ((v5 & 0x20000) == 0)
  {
LABEL_22:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_47:
  PB::TextFormatter::format(a2, "vertRotationRateMean", *(this + 27));
  if ((*(this + 29) & 0x200000) != 0)
  {
LABEL_23:
    PB::TextFormatter::format(a2, "waitingToConfirmLoft", *(this + 115));
  }

LABEL_24:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::GaitCycleSegmentationState::readFrom(CMMsl::GaitCycleSegmentationState *this, PB::Reader *a2)
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
        goto LABEL_221;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 29) |= 0x80u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_114;
          }

          *(this + 8) = *(*a2 + v2);
          v2 = *(a2 + 1) + 8;
          goto LABEL_181;
        case 2u:
          *(this + 29) |= 0x100000u;
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

          *(this + 114) = v45;
          goto LABEL_217;
        case 3u:
          *(this + 29) |= 0x80000u;
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

          *(this + 113) = v33;
          goto LABEL_217;
        case 4u:
          *(this + 29) |= 0x200000u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v35 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v34 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v35 = v34 != 0;
          }

          *(this + 115) = v35;
          goto LABEL_217;
        case 5u:
          *(this + 29) |= 0x40000u;
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

          *(this + 112) = v23;
          goto LABEL_217;
        case 6u:
          *(this + 29) |= 4u;
          v54 = *(a2 + 1);
          v2 = *(a2 + 2);
          v55 = *a2;
          if (v54 > 0xFFFFFFFFFFFFFFF5 || v54 + 10 > v2)
          {
            v107 = 0;
            v108 = 0;
            v58 = 0;
            if (v2 <= v54)
            {
              v2 = *(a2 + 1);
            }

            v109 = v2 - v54;
            v110 = (v55 + v54);
            v111 = v54 + 1;
            while (1)
            {
              if (!v109)
              {
                v58 = 0;
                *(a2 + 24) = 1;
                goto LABEL_204;
              }

              v112 = v111;
              v113 = *v110;
              *(a2 + 1) = v112;
              v58 |= (v113 & 0x7F) << v107;
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
                v58 = 0;
LABEL_203:
                v2 = v112;
                goto LABEL_204;
              }
            }

            if (*(a2 + 24))
            {
              v58 = 0;
            }

            goto LABEL_203;
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
              goto LABEL_204;
            }

            v56 += 7;
            ++v60;
            v14 = v57++ > 8;
          }

          while (!v14);
          v58 = 0;
LABEL_204:
          *(this + 3) = v58;
          goto LABEL_217;
        case 7u:
          *(this + 29) |= 2u;
          v70 = *(a2 + 1);
          v2 = *(a2 + 2);
          v71 = *a2;
          if (v70 > 0xFFFFFFFFFFFFFFF5 || v70 + 10 > v2)
          {
            v121 = 0;
            v122 = 0;
            v74 = 0;
            if (v2 <= v70)
            {
              v2 = *(a2 + 1);
            }

            v123 = v2 - v70;
            v124 = (v71 + v70);
            v125 = v70 + 1;
            while (1)
            {
              if (!v123)
              {
                v74 = 0;
                *(a2 + 24) = 1;
                goto LABEL_212;
              }

              v126 = v125;
              v127 = *v124;
              *(a2 + 1) = v126;
              v74 |= (v127 & 0x7F) << v121;
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
                v74 = 0;
LABEL_211:
                v2 = v126;
                goto LABEL_212;
              }
            }

            if (*(a2 + 24))
            {
              v74 = 0;
            }

            goto LABEL_211;
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
              goto LABEL_212;
            }

            v72 += 7;
            ++v76;
            v14 = v73++ > 8;
          }

          while (!v14);
          v74 = 0;
LABEL_212:
          *(this + 2) = v74;
          goto LABEL_217;
        case 8u:
          *(this + 29) |= 1u;
          v36 = *(a2 + 1);
          v2 = *(a2 + 2);
          v37 = *a2;
          if (v36 > 0xFFFFFFFFFFFFFFF5 || v36 + 10 > v2)
          {
            v93 = 0;
            v94 = 0;
            v40 = 0;
            if (v2 <= v36)
            {
              v2 = *(a2 + 1);
            }

            v95 = v2 - v36;
            v96 = (v37 + v36);
            v97 = v36 + 1;
            while (1)
            {
              if (!v95)
              {
                v40 = 0;
                *(a2 + 24) = 1;
                goto LABEL_196;
              }

              v98 = v97;
              v99 = *v96;
              *(a2 + 1) = v98;
              v40 |= (v99 & 0x7F) << v93;
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
                v40 = 0;
LABEL_195:
                v2 = v98;
                goto LABEL_196;
              }
            }

            if (*(a2 + 24))
            {
              v40 = 0;
            }

            goto LABEL_195;
          }

          v38 = 0;
          v39 = 0;
          v40 = 0;
          v41 = (v37 + v36);
          v42 = v36 + 1;
          do
          {
            v2 = v42;
            *(a2 + 1) = v42;
            v43 = *v41++;
            v40 |= (v43 & 0x7F) << v38;
            if ((v43 & 0x80) == 0)
            {
              goto LABEL_196;
            }

            v38 += 7;
            ++v42;
            v14 = v39++ > 8;
          }

          while (!v14);
          v40 = 0;
LABEL_196:
          *(this + 1) = v40;
          goto LABEL_217;
        case 9u:
          *(this + 29) |= 0x20u;
          v78 = *(a2 + 1);
          v2 = *(a2 + 2);
          v79 = *a2;
          if (v78 > 0xFFFFFFFFFFFFFFF5 || v78 + 10 > v2)
          {
            v128 = 0;
            v129 = 0;
            v82 = 0;
            if (v2 <= v78)
            {
              v2 = *(a2 + 1);
            }

            v130 = v2 - v78;
            v131 = (v79 + v78);
            v132 = v78 + 1;
            while (1)
            {
              if (!v130)
              {
                v82 = 0;
                *(a2 + 24) = 1;
                goto LABEL_216;
              }

              v133 = v132;
              v134 = *v131;
              *(a2 + 1) = v133;
              v82 |= (v134 & 0x7F) << v128;
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
                v82 = 0;
LABEL_215:
                v2 = v133;
                goto LABEL_216;
              }
            }

            if (*(a2 + 24))
            {
              v82 = 0;
            }

            goto LABEL_215;
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
              goto LABEL_216;
            }

            v80 += 7;
            ++v84;
            v14 = v81++ > 8;
          }

          while (!v14);
          v82 = 0;
LABEL_216:
          *(this + 6) = v82;
          goto LABEL_217;
        case 0xAu:
          *(this + 29) |= 0x40u;
          v24 = *(a2 + 1);
          v2 = *(a2 + 2);
          v25 = *a2;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v2)
          {
            v86 = 0;
            v87 = 0;
            v28 = 0;
            if (v2 <= v24)
            {
              v2 = *(a2 + 1);
            }

            v88 = v2 - v24;
            v89 = (v25 + v24);
            v90 = v24 + 1;
            while (1)
            {
              if (!v88)
              {
                v28 = 0;
                *(a2 + 24) = 1;
                goto LABEL_192;
              }

              v91 = v90;
              v92 = *v89;
              *(a2 + 1) = v91;
              v28 |= (v92 & 0x7F) << v86;
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
                v28 = 0;
LABEL_191:
                v2 = v91;
                goto LABEL_192;
              }
            }

            if (*(a2 + 24))
            {
              v28 = 0;
            }

            goto LABEL_191;
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
              goto LABEL_192;
            }

            v26 += 7;
            ++v30;
            v14 = v27++ > 8;
          }

          while (!v14);
          v28 = 0;
LABEL_192:
          *(this + 7) = v28;
          goto LABEL_217;
        case 0xBu:
          *(this + 29) |= 0x2000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_114;
          }

          *(this + 23) = *(*a2 + v2);
          goto LABEL_180;
        case 0xCu:
          *(this + 29) |= 0x10000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_114;
          }

          *(this + 26) = *(*a2 + v2);
          goto LABEL_180;
        case 0xDu:
          *(this + 29) |= 0x1000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_114;
          }

          *(this + 22) = *(*a2 + v2);
          goto LABEL_180;
        case 0xEu:
          *(this + 29) |= 0x800u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_114;
          }

          *(this + 21) = *(*a2 + v2);
          goto LABEL_180;
        case 0xFu:
          *(this + 29) |= 0x8000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_114;
          }

          *(this + 25) = *(*a2 + v2);
          goto LABEL_180;
        case 0x10u:
          *(this + 29) |= 0x200u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_114;
          }

          *(this + 19) = *(*a2 + v2);
          goto LABEL_180;
        case 0x11u:
          *(this + 29) |= 0x400u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_114;
          }

          *(this + 20) = *(*a2 + v2);
          goto LABEL_180;
        case 0x12u:
          *(this + 29) |= 0x4000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_114;
          }

          *(this + 24) = *(*a2 + v2);
          goto LABEL_180;
        case 0x13u:
          *(this + 29) |= 0x100u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_114;
          }

          *(this + 18) = *(*a2 + v2);
          goto LABEL_180;
        case 0x14u:
          *(this + 29) |= 0x20000u;
          v2 = *(a2 + 1);
          if (v2 <= 0xFFFFFFFFFFFFFFFBLL && v2 + 4 <= *(a2 + 2))
          {
            *(this + 27) = *(*a2 + v2);
LABEL_180:
            v2 = *(a2 + 1) + 4;
LABEL_181:
            *(a2 + 1) = v2;
          }

          else
          {
LABEL_114:
            *(a2 + 24) = 1;
          }

          goto LABEL_217;
        case 0x15u:
          *(this + 29) |= 8u;
          v46 = *(a2 + 1);
          v2 = *(a2 + 2);
          v47 = *a2;
          if (v46 > 0xFFFFFFFFFFFFFFF5 || v46 + 10 > v2)
          {
            v100 = 0;
            v101 = 0;
            v50 = 0;
            if (v2 <= v46)
            {
              v2 = *(a2 + 1);
            }

            v102 = v2 - v46;
            v103 = (v47 + v46);
            v104 = v46 + 1;
            while (1)
            {
              if (!v102)
              {
                v50 = 0;
                *(a2 + 24) = 1;
                goto LABEL_200;
              }

              v105 = v104;
              v106 = *v103;
              *(a2 + 1) = v105;
              v50 |= (v106 & 0x7F) << v100;
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
                v50 = 0;
LABEL_199:
                v2 = v105;
                goto LABEL_200;
              }
            }

            if (*(a2 + 24))
            {
              v50 = 0;
            }

            goto LABEL_199;
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
              goto LABEL_200;
            }

            v48 += 7;
            ++v52;
            v14 = v49++ > 8;
          }

          while (!v14);
          v50 = 0;
LABEL_200:
          *(this + 4) = v50;
          goto LABEL_217;
        case 0x16u:
          *(this + 29) |= 0x10u;
          v62 = *(a2 + 1);
          v2 = *(a2 + 2);
          v63 = *a2;
          if (v62 > 0xFFFFFFFFFFFFFFF5 || v62 + 10 > v2)
          {
            v114 = 0;
            v115 = 0;
            v66 = 0;
            if (v2 <= v62)
            {
              v2 = *(a2 + 1);
            }

            v116 = v2 - v62;
            v117 = (v63 + v62);
            v118 = v62 + 1;
            while (1)
            {
              if (!v116)
              {
                v66 = 0;
                *(a2 + 24) = 1;
                goto LABEL_208;
              }

              v119 = v118;
              v120 = *v117;
              *(a2 + 1) = v119;
              v66 |= (v120 & 0x7F) << v114;
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
                v66 = 0;
LABEL_207:
                v2 = v119;
                goto LABEL_208;
              }
            }

            if (*(a2 + 24))
            {
              v66 = 0;
            }

            goto LABEL_207;
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
              goto LABEL_208;
            }

            v64 += 7;
            ++v68;
            v14 = v65++ > 8;
          }

          while (!v14);
          v66 = 0;
LABEL_208:
          *(this + 5) = v66;
          goto LABEL_217;
        default:
          if (!PB::Reader::skip(a2, v10 >> 3, v10 & 7, 0))
          {
            v135 = 0;
            return v135 & 1;
          }

          v2 = *(a2 + 1);
LABEL_217:
          v3 = *(a2 + 2);
          v4 = *(a2 + 24);
          if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
          {
            goto LABEL_221;
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

LABEL_221:
  v135 = v4 ^ 1;
  return v135 & 1;
}

uint64_t CMMsl::GaitCycleSegmentationState::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 116);
  if ((v4 & 0x80) != 0)
  {
    this = PB::Writer::write(a2, *(this + 64), 1u);
    v4 = *(v3 + 116);
    if ((v4 & 0x100000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
    }
  }

  else if ((v4 & 0x100000) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 114), 2u);
  v4 = *(v3 + 116);
  if ((v4 & 0x80000) == 0)
  {
LABEL_4:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = PB::Writer::write(a2, *(v3 + 113), 3u);
  v4 = *(v3 + 116);
  if ((v4 & 0x200000) == 0)
  {
LABEL_5:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = PB::Writer::write(a2, *(v3 + 115), 4u);
  v4 = *(v3 + 116);
  if ((v4 & 0x40000) == 0)
  {
LABEL_6:
    if ((v4 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = PB::Writer::write(a2, *(v3 + 112), 5u);
  v4 = *(v3 + 116);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = PB::Writer::writeVarInt(a2, *(v3 + 24), 6u);
  v4 = *(v3 + 116);
  if ((v4 & 2) == 0)
  {
LABEL_8:
    if ((v4 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = PB::Writer::writeVarInt(a2, *(v3 + 16), 7u);
  v4 = *(v3 + 116);
  if ((v4 & 1) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = PB::Writer::writeVarInt(a2, *(v3 + 8), 8u);
  v4 = *(v3 + 116);
  if ((v4 & 0x20) == 0)
  {
LABEL_10:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = PB::Writer::writeVarInt(a2, *(v3 + 48), 9u);
  v4 = *(v3 + 116);
  if ((v4 & 0x40) == 0)
  {
LABEL_11:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = PB::Writer::writeVarInt(a2, *(v3 + 56), 0xAu);
  v4 = *(v3 + 116);
  if ((v4 & 0x2000) == 0)
  {
LABEL_12:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = PB::Writer::write(a2, *(v3 + 92), 0xBu);
  v4 = *(v3 + 116);
  if ((v4 & 0x10000) == 0)
  {
LABEL_13:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = PB::Writer::write(a2, *(v3 + 104), 0xCu);
  v4 = *(v3 + 116);
  if ((v4 & 0x1000) == 0)
  {
LABEL_14:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = PB::Writer::write(a2, *(v3 + 88), 0xDu);
  v4 = *(v3 + 116);
  if ((v4 & 0x800) == 0)
  {
LABEL_15:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = PB::Writer::write(a2, *(v3 + 84), 0xEu);
  v4 = *(v3 + 116);
  if ((v4 & 0x8000) == 0)
  {
LABEL_16:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = PB::Writer::write(a2, *(v3 + 100), 0xFu);
  v4 = *(v3 + 116);
  if ((v4 & 0x200) == 0)
  {
LABEL_17:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_40;
  }

LABEL_39:
  this = PB::Writer::write(a2, *(v3 + 76), 0x10u);
  v4 = *(v3 + 116);
  if ((v4 & 0x400) == 0)
  {
LABEL_18:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_41;
  }

LABEL_40:
  this = PB::Writer::write(a2, *(v3 + 80), 0x11u);
  v4 = *(v3 + 116);
  if ((v4 & 0x4000) == 0)
  {
LABEL_19:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_42;
  }

LABEL_41:
  this = PB::Writer::write(a2, *(v3 + 96), 0x12u);
  v4 = *(v3 + 116);
  if ((v4 & 0x100) == 0)
  {
LABEL_20:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_43;
  }

LABEL_42:
  this = PB::Writer::write(a2, *(v3 + 72), 0x13u);
  v4 = *(v3 + 116);
  if ((v4 & 0x20000) == 0)
  {
LABEL_21:
    if ((v4 & 8) == 0)
    {
      goto LABEL_22;
    }

LABEL_44:
    this = PB::Writer::writeVarInt(a2, *(v3 + 32), 0x15u);
    if ((*(v3 + 116) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_45;
  }

LABEL_43:
  this = PB::Writer::write(a2, *(v3 + 108), 0x14u);
  v4 = *(v3 + 116);
  if ((v4 & 8) != 0)
  {
    goto LABEL_44;
  }

LABEL_22:
  if ((v4 & 0x10) == 0)
  {
    return this;
  }

LABEL_45:
  v5 = *(v3 + 40);

  return PB::Writer::writeVarInt(a2, v5, 0x16u);
}

BOOL CMMsl::GaitCycleSegmentationState::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 116);
  v3 = *(a2 + 116);
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

  if ((v2 & 0x100000) != 0)
  {
    if ((v3 & 0x100000) == 0 || *(a1 + 114) != *(a2 + 114))
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
    if ((v3 & 0x80000) == 0 || *(a1 + 113) != *(a2 + 113))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x200000) != 0)
  {
    if ((v3 & 0x200000) == 0 || *(a1 + 115) != *(a2 + 115))
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
    if ((v3 & 0x40000) == 0 || *(a1 + 112) != *(a2 + 112))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40000) != 0)
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
    if ((v3 & 0x40) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if ((v2 & 0x2000) != 0)
  {
    if ((v3 & 0x2000) == 0 || *(a1 + 92) != *(a2 + 92))
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
    if ((v3 & 0x10000) == 0 || *(a1 + 104) != *(a2 + 104))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x1000) != 0)
  {
    if ((v3 & 0x1000) == 0 || *(a1 + 88) != *(a2 + 88))
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
    if ((v3 & 0x800) == 0 || *(a1 + 84) != *(a2 + 84))
    {
      return 0;
    }
  }

  else if ((v3 & 0x800) != 0)
  {
    return 0;
  }

  if ((v2 & 0x8000) != 0)
  {
    if ((v3 & 0x8000) == 0 || *(a1 + 100) != *(a2 + 100))
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x200) != 0)
  {
    if ((v3 & 0x200) == 0 || *(a1 + 76) != *(a2 + 76))
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
    if ((v3 & 0x400) == 0 || *(a1 + 80) != *(a2 + 80))
    {
      return 0;
    }
  }

  else if ((v3 & 0x400) != 0)
  {
    return 0;
  }

  if ((v2 & 0x4000) != 0)
  {
    if ((v3 & 0x4000) == 0 || *(a1 + 96) != *(a2 + 96))
    {
      return 0;
    }
  }

  else if ((v3 & 0x4000) != 0)
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

  if ((v2 & 0x20000) != 0)
  {
    if ((v3 & 0x20000) == 0 || *(a1 + 108) != *(a2 + 108))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20000) != 0)
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

  v4 = (*(a2 + 116) & 0x10) == 0;
  if ((v2 & 0x10) != 0)
  {
    return (v3 & 0x10) != 0 && *(a1 + 40) == *(a2 + 40);
  }

  return v4;
}

uint64_t CMMsl::GaitCycleSegmentationState::hash_value(CMMsl::GaitCycleSegmentationState *this)
{
  v1 = *(this + 29);
  if ((v1 & 0x80) != 0)
  {
    v2 = *(this + 8);
    if (v2 == 0.0)
    {
      v2 = 0.0;
    }

    if ((v1 & 0x100000) != 0)
    {
LABEL_3:
      v3 = *(this + 114);
      if ((v1 & 0x80000) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_34;
    }
  }

  else
  {
    v2 = 0.0;
    if ((v1 & 0x100000) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((v1 & 0x80000) != 0)
  {
LABEL_4:
    v4 = *(this + 113);
    if ((v1 & 0x200000) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_35;
  }

LABEL_34:
  v4 = 0;
  if ((v1 & 0x200000) != 0)
  {
LABEL_5:
    v5 = *(this + 115);
    if ((v1 & 0x40000) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_36;
  }

LABEL_35:
  v5 = 0;
  if ((v1 & 0x40000) != 0)
  {
LABEL_6:
    v6 = *(this + 112);
    if ((v1 & 4) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_37;
  }

LABEL_36:
  v6 = 0;
  if ((v1 & 4) != 0)
  {
LABEL_7:
    v7 = *(this + 3);
    if ((v1 & 2) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_38;
  }

LABEL_37:
  v7 = 0;
  if ((v1 & 2) != 0)
  {
LABEL_8:
    v8 = *(this + 2);
    if (v1)
    {
      goto LABEL_9;
    }

    goto LABEL_39;
  }

LABEL_38:
  v8 = 0;
  if (v1)
  {
LABEL_9:
    v9 = *(this + 1);
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_40;
  }

LABEL_39:
  v9 = 0;
  if ((v1 & 0x20) != 0)
  {
LABEL_10:
    v10 = *(this + 6);
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_41;
  }

LABEL_40:
  v10 = 0;
  if ((v1 & 0x40) != 0)
  {
LABEL_11:
    v11 = *(this + 7);
    if ((v1 & 0x2000) != 0)
    {
      goto LABEL_12;
    }

LABEL_42:
    v13 = 0;
    if ((v1 & 0x10000) != 0)
    {
      goto LABEL_15;
    }

LABEL_43:
    v15 = 0;
    if ((v1 & 0x1000) != 0)
    {
      goto LABEL_18;
    }

LABEL_44:
    v17 = 0;
    if ((v1 & 0x800) != 0)
    {
      goto LABEL_21;
    }

LABEL_45:
    v19 = 0;
    if ((v1 & 0x8000) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_46;
  }

LABEL_41:
  v11 = 0;
  if ((v1 & 0x2000) == 0)
  {
    goto LABEL_42;
  }

LABEL_12:
  v12 = *(this + 23);
  v13 = LODWORD(v12);
  if (v12 == 0.0)
  {
    v13 = 0;
  }

  if ((v1 & 0x10000) == 0)
  {
    goto LABEL_43;
  }

LABEL_15:
  v14 = *(this + 26);
  v15 = LODWORD(v14);
  if (v14 == 0.0)
  {
    v15 = 0;
  }

  if ((v1 & 0x1000) == 0)
  {
    goto LABEL_44;
  }

LABEL_18:
  v16 = *(this + 22);
  v17 = LODWORD(v16);
  if (v16 == 0.0)
  {
    v17 = 0;
  }

  if ((v1 & 0x800) == 0)
  {
    goto LABEL_45;
  }

LABEL_21:
  v18 = *(this + 21);
  v19 = LODWORD(v18);
  if (v18 == 0.0)
  {
    v19 = 0;
  }

  if ((v1 & 0x8000) != 0)
  {
LABEL_24:
    v20 = *(this + 25);
    v21 = LODWORD(v20);
    if (v20 == 0.0)
    {
      v21 = 0;
    }

    if ((v1 & 0x200) != 0)
    {
      goto LABEL_27;
    }

LABEL_47:
    v23 = 0;
    goto LABEL_48;
  }

LABEL_46:
  v21 = 0;
  if ((v1 & 0x200) == 0)
  {
    goto LABEL_47;
  }

LABEL_27:
  v22 = *(this + 19);
  v23 = LODWORD(v22);
  if (v22 == 0.0)
  {
    v23 = 0;
  }

LABEL_48:
  if ((v1 & 0x400) == 0)
  {
    v24 = 0;
    if ((v1 & 0x4000) != 0)
    {
      goto LABEL_50;
    }

LABEL_64:
    v26 = 0;
    if ((v1 & 0x100) != 0)
    {
      goto LABEL_53;
    }

LABEL_65:
    v28 = 0;
    if ((v1 & 0x20000) != 0)
    {
      goto LABEL_56;
    }

LABEL_66:
    v30 = 0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_59;
    }

LABEL_67:
    v31 = 0;
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_60;
    }

LABEL_68:
    v32 = 0;
    return v3 ^ *&v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v13 ^ v15 ^ v17 ^ v19 ^ v21 ^ v23 ^ v24 ^ v26 ^ v28 ^ v30 ^ v31 ^ v32;
  }

  v33 = *(this + 20);
  v24 = LODWORD(v33);
  if (v33 == 0.0)
  {
    v24 = 0;
  }

  if ((v1 & 0x4000) == 0)
  {
    goto LABEL_64;
  }

LABEL_50:
  v25 = *(this + 24);
  v26 = LODWORD(v25);
  if (v25 == 0.0)
  {
    v26 = 0;
  }

  if ((v1 & 0x100) == 0)
  {
    goto LABEL_65;
  }

LABEL_53:
  v27 = *(this + 18);
  v28 = LODWORD(v27);
  if (v27 == 0.0)
  {
    v28 = 0;
  }

  if ((v1 & 0x20000) == 0)
  {
    goto LABEL_66;
  }

LABEL_56:
  v29 = *(this + 27);
  v30 = LODWORD(v29);
  if (v29 == 0.0)
  {
    v30 = 0;
  }

  if ((v1 & 8) == 0)
  {
    goto LABEL_67;
  }

LABEL_59:
  v31 = *(this + 4);
  if ((v1 & 0x10) == 0)
  {
    goto LABEL_68;
  }

LABEL_60:
  v32 = *(this + 5);
  return v3 ^ *&v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v13 ^ v15 ^ v17 ^ v19 ^ v21 ^ v23 ^ v24 ^ v26 ^ v28 ^ v30 ^ v31 ^ v32;
}

uint64_t CMMsl::GaitEventsHKResult::GaitEventsHKResult(uint64_t this)
{
  *this = off_10041E850;
  *(this + 76) = 0;
  return this;
}

{
  *this = off_10041E850;
  *(this + 76) = 0;
  return this;
}

void CMMsl::GaitEventsHKResult::~GaitEventsHKResult(CMMsl::GaitEventsHKResult *this)
{
  PB::Base::~Base(this);

  operator delete();
}

double CMMsl::GaitEventsHKResult::GaitEventsHKResult(CMMsl::GaitEventsHKResult *this, const CMMsl::GaitEventsHKResult *a2)
{
  *this = off_10041E850;
  *(this + 19) = 0;
  v2 = *(a2 + 38);
  if ((v2 & 4) != 0)
  {
    result = *(a2 + 3);
    v3 = 4;
    *(this + 38) = 4;
    *(this + 3) = result;
    v2 = *(a2 + 38);
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
    result = *(a2 + 5);
    v3 |= 0x10u;
    *(this + 38) = v3;
    *(this + 5) = result;
    v2 = *(a2 + 38);
  }

LABEL_6:
  if ((v2 & 8) != 0)
  {
    result = *(a2 + 4);
    v3 |= 8u;
    *(this + 38) = v3;
    *(this + 4) = result;
    v2 = *(a2 + 38);
    if ((v2 & 0x20) == 0)
    {
LABEL_8:
      if ((v2 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }
  }

  else if ((v2 & 0x20) == 0)
  {
    goto LABEL_8;
  }

  result = *(a2 + 6);
  v3 |= 0x20u;
  *(this + 38) = v3;
  *(this + 6) = result;
  v2 = *(a2 + 38);
  if ((v2 & 1) == 0)
  {
LABEL_9:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = *(a2 + 1);
  v3 |= 1u;
  *(this + 38) = v3;
  *(this + 1) = result;
  v2 = *(a2 + 38);
  if ((v2 & 0x80) == 0)
  {
LABEL_10:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = *(a2 + 8);
  v3 |= 0x80u;
  *(this + 38) = v3;
  *(this + 8) = result;
  v2 = *(a2 + 38);
  if ((v2 & 0x40) == 0)
  {
LABEL_11:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = *(a2 + 7);
  v3 |= 0x40u;
  *(this + 38) = v3;
  *(this + 7) = result;
  v2 = *(a2 + 38);
  if ((v2 & 0x200) == 0)
  {
LABEL_12:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_21;
  }

LABEL_20:
  v5 = *(a2 + 73);
  v3 |= 0x200u;
  *(this + 38) = v3;
  *(this + 73) = v5;
  v2 = *(a2 + 38);
  if ((v2 & 0x100) == 0)
  {
LABEL_13:
    if ((v2 & 2) == 0)
    {
      return result;
    }

LABEL_22:
    result = *(a2 + 2);
    *(this + 38) = v3 | 2;
    *(this + 2) = result;
    return result;
  }

LABEL_21:
  v6 = *(a2 + 72);
  v3 |= 0x100u;
  *(this + 38) = v3;
  *(this + 72) = v6;
  if ((*(a2 + 38) & 2) != 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t CMMsl::GaitEventsHKResult::operator=(uint64_t a1, const CMMsl::GaitEventsHKResult *a2)
{
  if (a1 != a2)
  {
    CMMsl::GaitEventsHKResult::GaitEventsHKResult(&v9, a2);
    v3 = *(a1 + 76);
    *(a1 + 76) = v16;
    v16 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v11;
    v11 = v4;
    v5 = *(a1 + 40);
    *(a1 + 40) = v12;
    v12 = v5;
    v6 = *(a1 + 56);
    *(a1 + 56) = v13;
    v13 = v6;
    LOBYTE(v3) = *(a1 + 73);
    *(a1 + 73) = v15;
    v15 = v3;
    LOBYTE(v3) = *(a1 + 72);
    *(a1 + 72) = v14;
    v14 = v3;
    v7 = *(a1 + 8);
    *(a1 + 8) = v10;
    v10 = v7;
    PB::Base::~Base(&v9);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::GaitEventsHKResult *a2, CMMsl::GaitEventsHKResult *a3)
{
  v3 = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v3;
  v4 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v4;
  v5 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v5;
  v6 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v6;
  v7 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v7;
  v8 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v8;
  v9 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v9;
  v10 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v10;
  LOBYTE(v3) = *(this + 73);
  *(this + 73) = *(a2 + 73);
  *(a2 + 73) = v3;
  LOBYTE(v3) = *(this + 72);
  *(this + 72) = *(a2 + 72);
  *(a2 + 72) = v3;
  result = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = result;
  return result;
}

double CMMsl::GaitEventsHKResult::GaitEventsHKResult(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041E850;
  *(a1 + 76) = *(a2 + 76);
  *(a2 + 76) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 72) = *(a2 + 72);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

uint64_t CMMsl::GaitEventsHKResult::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::GaitEventsHKResult::GaitEventsHKResult(&v9, a2);
    v3 = *(a1 + 76);
    *(a1 + 76) = v16;
    v16 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v11;
    v11 = v4;
    v5 = *(a1 + 40);
    *(a1 + 40) = v12;
    v12 = v5;
    v6 = *(a1 + 56);
    *(a1 + 56) = v13;
    v13 = v6;
    LOBYTE(v3) = *(a1 + 73);
    *(a1 + 73) = v15;
    v15 = v3;
    LOBYTE(v3) = *(a1 + 72);
    *(a1 + 72) = v14;
    v14 = v3;
    v7 = *(a1 + 8);
    *(a1 + 8) = v10;
    v10 = v7;
    PB::Base::~Base(&v9);
  }

  return a1;
}

uint64_t CMMsl::GaitEventsHKResult::formatText(CMMsl::GaitEventsHKResult *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 38);
  if (v5)
  {
    PB::TextFormatter::format(a2, "emptyField2", *(this + 1));
    v5 = *(this + 38);
    if ((v5 & 0x100) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((*(this + 38) & 0x100) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "emptyField3", *(this + 72));
  v5 = *(this + 38);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  PB::TextFormatter::format(a2, "groundContactTime", *(this + 2));
  v5 = *(this + 38);
  if ((v5 & 0x200) == 0)
  {
LABEL_5:
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  PB::TextFormatter::format(a2, "hasValidGroundContactTime", *(this + 73));
  v5 = *(this + 38);
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
  PB::TextFormatter::format(a2, "leftGroundContactTime", *(this + 3));
  v5 = *(this + 38);
  if ((v5 & 8) == 0)
  {
LABEL_7:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(a2, "leftGroundContactTimePercentage", *(this + 4));
  v5 = *(this + 38);
  if ((v5 & 0x10) == 0)
  {
LABEL_8:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(a2, "rightGroundContactTime", *(this + 5));
  v5 = *(this + 38);
  if ((v5 & 0x20) == 0)
  {
LABEL_9:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(a2, "rightGroundContactTimePercentage", *(this + 6));
  v5 = *(this + 38);
  if ((v5 & 0x40) == 0)
  {
LABEL_10:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  PB::TextFormatter::format(a2, "windowEndTime", *(this + 7));
  if ((*(this + 38) & 0x80) != 0)
  {
LABEL_11:
    PB::TextFormatter::format(a2, "windowStartTime", *(this + 8));
  }

LABEL_12:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::GaitEventsHKResult::readFrom(CMMsl::GaitEventsHKResult *this, PB::Reader *a2)
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
      if ((v10 >> 3) > 5)
      {
        if (v22 <= 7)
        {
          if (v22 == 6)
          {
            *(this + 38) |= 0x80u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
LABEL_60:
              *(a2 + 24) = 1;
              goto LABEL_71;
            }

            *(this + 8) = *(*a2 + v2);
            goto LABEL_70;
          }

          if (v22 == 7)
          {
            *(this + 38) |= 0x40u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
              goto LABEL_60;
            }

            *(this + 7) = *(*a2 + v2);
            goto LABEL_70;
          }
        }

        else
        {
          switch(v22)
          {
            case 8:
              *(this + 38) |= 0x200u;
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

              *(this + 73) = v24;
              goto LABEL_71;
            case 9:
              *(this + 38) |= 0x100u;
              v2 = *(a2 + 1);
              if (v2 >= *(a2 + 2))
              {
                v26 = 0;
                *(a2 + 24) = 1;
              }

              else
              {
                v25 = *(*a2 + v2++);
                *(a2 + 1) = v2;
                v26 = v25 != 0;
              }

              *(this + 72) = v26;
              goto LABEL_71;
            case 0xA:
              *(this + 38) |= 2u;
              v2 = *(a2 + 1);
              if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
              {
                goto LABEL_60;
              }

              *(this + 2) = *(*a2 + v2);
              goto LABEL_70;
          }
        }
      }

      else if (v22 <= 2)
      {
        if (v22 == 1)
        {
          *(this + 38) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_60;
          }

          *(this + 3) = *(*a2 + v2);
          goto LABEL_70;
        }

        if (v22 == 2)
        {
          *(this + 38) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_60;
          }

          *(this + 5) = *(*a2 + v2);
          goto LABEL_70;
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            *(this + 38) |= 8u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
              goto LABEL_60;
            }

            *(this + 4) = *(*a2 + v2);
            goto LABEL_70;
          case 4:
            *(this + 38) |= 0x20u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
              goto LABEL_60;
            }

            *(this + 6) = *(*a2 + v2);
            goto LABEL_70;
          case 5:
            *(this + 38) |= 1u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
              goto LABEL_60;
            }

            *(this + 1) = *(*a2 + v2);
LABEL_70:
            v2 = *(a2 + 1) + 8;
            *(a2 + 1) = v2;
            goto LABEL_71;
        }
      }

      if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
      {
        v27 = 0;
        return v27 & 1;
      }

      v2 = *(a2 + 1);
LABEL_71:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_75:
  v27 = v4 ^ 1;
  return v27 & 1;
}

uint64_t CMMsl::GaitEventsHKResult::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 76);
  if ((v4 & 4) != 0)
  {
    this = PB::Writer::write(a2, *(this + 24), 1u);
    v4 = *(v3 + 76);
    if ((v4 & 0x10) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v4 & 0x10) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 40), 2u);
  v4 = *(v3 + 76);
  if ((v4 & 8) == 0)
  {
LABEL_4:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = PB::Writer::write(a2, *(v3 + 32), 3u);
  v4 = *(v3 + 76);
  if ((v4 & 0x20) == 0)
  {
LABEL_5:
    if ((v4 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  this = PB::Writer::write(a2, *(v3 + 48), 4u);
  v4 = *(v3 + 76);
  if ((v4 & 1) == 0)
  {
LABEL_6:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = PB::Writer::write(a2, *(v3 + 8), 5u);
  v4 = *(v3 + 76);
  if ((v4 & 0x80) == 0)
  {
LABEL_7:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = PB::Writer::write(a2, *(v3 + 64), 6u);
  v4 = *(v3 + 76);
  if ((v4 & 0x40) == 0)
  {
LABEL_8:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = PB::Writer::write(a2, *(v3 + 56), 7u);
  v4 = *(v3 + 76);
  if ((v4 & 0x200) == 0)
  {
LABEL_9:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    this = PB::Writer::write(a2, *(v3 + 72), 9u);
    if ((*(v3 + 76) & 2) == 0)
    {
      return this;
    }

    goto LABEL_21;
  }

LABEL_19:
  this = PB::Writer::write(a2, *(v3 + 73), 8u);
  v4 = *(v3 + 76);
  if ((v4 & 0x100) != 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((v4 & 2) == 0)
  {
    return this;
  }

LABEL_21:
  v5 = *(v3 + 16);

  return PB::Writer::write(a2, v5, 0xAu);
}

BOOL CMMsl::GaitEventsHKResult::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 76);
  v3 = *(a2 + 76);
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
    if ((v3 & 0x80) == 0 || *(a1 + 64) != *(a2 + 64))
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
    if ((v3 & 0x40) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if ((*(a1 + 76) & 0x200) != 0)
  {
    if ((*(a2 + 76) & 0x200) == 0 || *(a1 + 73) != *(a2 + 73))
    {
      return 0;
    }
  }

  else if ((*(a2 + 76) & 0x200) != 0)
  {
    return 0;
  }

  if ((*(a1 + 76) & 0x100) != 0)
  {
    if ((*(a2 + 76) & 0x100) == 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if ((*(a2 + 76) & 0x100) != 0)
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

uint64_t CMMsl::GaitEventsHKResult::hash_value(CMMsl::GaitEventsHKResult *this)
{
  v1 = *(this + 38);
  if ((v1 & 4) == 0)
  {
    v2 = 0.0;
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_3;
    }

LABEL_29:
    v3 = 0.0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_6;
    }

LABEL_30:
    v4 = 0.0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_9;
    }

LABEL_31:
    v5 = 0.0;
    if (v1)
    {
      goto LABEL_12;
    }

LABEL_32:
    v6 = 0.0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_15;
    }

LABEL_33:
    v7 = 0.0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_18;
    }

LABEL_34:
    v8 = 0.0;
    if ((*(this + 38) & 0x200) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_35;
  }

  v2 = *(this + 3);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((v1 & 0x10) == 0)
  {
    goto LABEL_29;
  }

LABEL_3:
  v3 = *(this + 5);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  if ((v1 & 8) == 0)
  {
    goto LABEL_30;
  }

LABEL_6:
  v4 = *(this + 4);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  if ((v1 & 0x20) == 0)
  {
    goto LABEL_31;
  }

LABEL_9:
  v5 = *(this + 6);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  if ((v1 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_12:
  v6 = *(this + 1);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  if ((v1 & 0x80) == 0)
  {
    goto LABEL_33;
  }

LABEL_15:
  v7 = *(this + 8);
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  if ((v1 & 0x40) == 0)
  {
    goto LABEL_34;
  }

LABEL_18:
  v8 = *(this + 7);
  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  if ((*(this + 38) & 0x200) != 0)
  {
LABEL_21:
    v9 = *(this + 73);
    if ((*(this + 38) & 0x100) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_36;
  }

LABEL_35:
  v9 = 0;
  if ((*(this + 38) & 0x100) != 0)
  {
LABEL_22:
    v10 = *(this + 72);
    if ((v1 & 2) != 0)
    {
      goto LABEL_23;
    }

LABEL_37:
    v11 = 0.0;
    return *&v3 ^ *&v2 ^ *&v4 ^ *&v5 ^ *&v6 ^ *&v7 ^ *&v8 ^ v9 ^ v10 ^ *&v11;
  }

LABEL_36:
  v10 = 0;
  if ((v1 & 2) == 0)
  {
    goto LABEL_37;
  }

LABEL_23:
  v11 = *(this + 2);
  if (v11 == 0.0)
  {
    v11 = 0.0;
  }

  return *&v3 ^ *&v2 ^ *&v4 ^ *&v5 ^ *&v6 ^ *&v7 ^ *&v8 ^ v9 ^ v10 ^ *&v11;
}

uint64_t CMMsl::GaitEventsModelOutput::GaitEventsModelOutput(uint64_t this)
{
  *this = off_10041E888;
  *(this + 88) = 0;
  return this;
}

{
  *this = off_10041E888;
  *(this + 88) = 0;
  return this;
}

void CMMsl::GaitEventsModelOutput::~GaitEventsModelOutput(CMMsl::GaitEventsModelOutput *this)
{
  PB::Base::~Base(this);

  operator delete();
}

double CMMsl::GaitEventsModelOutput::GaitEventsModelOutput(CMMsl::GaitEventsModelOutput *this, const CMMsl::GaitEventsModelOutput *a2)
{
  *this = off_10041E888;
  *(this + 22) = 0;
  v2 = *(a2 + 44);
  if ((v2 & 0x800) != 0)
  {
    v4 = *(a2 + 84);
    v3 = 2048;
    *(this + 44) = 2048;
    *(this + 84) = v4;
    v2 = *(a2 + 44);
    if ((v2 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if (v2)
  {
LABEL_5:
    result = *(a2 + 1);
    v3 |= 1u;
    *(this + 44) = v3;
    *(this + 1) = result;
    v2 = *(a2 + 44);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    result = *(a2 + 2);
    v3 |= 2u;
    *(this + 44) = v3;
    *(this + 2) = result;
    v2 = *(a2 + 44);
    if ((v2 & 0x20) == 0)
    {
LABEL_8:
      if ((v2 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_21;
    }
  }

  else if ((v2 & 0x20) == 0)
  {
    goto LABEL_8;
  }

  result = *(a2 + 6);
  v3 |= 0x20u;
  *(this + 44) = v3;
  *(this + 6) = result;
  v2 = *(a2 + 44);
  if ((v2 & 8) == 0)
  {
LABEL_9:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = *(a2 + 4);
  v3 |= 8u;
  *(this + 44) = v3;
  *(this + 4) = result;
  v2 = *(a2 + 44);
  if ((v2 & 0x10) == 0)
  {
LABEL_10:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = *(a2 + 5);
  v3 |= 0x10u;
  *(this + 44) = v3;
  *(this + 5) = result;
  v2 = *(a2 + 44);
  if ((v2 & 0x80) == 0)
  {
LABEL_11:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = *(a2 + 8);
  v3 |= 0x80u;
  *(this + 44) = v3;
  *(this + 8) = result;
  v2 = *(a2 + 44);
  if ((v2 & 0x40) == 0)
  {
LABEL_12:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = *(a2 + 7);
  v3 |= 0x40u;
  *(this + 44) = v3;
  *(this + 7) = result;
  v2 = *(a2 + 44);
  if ((v2 & 0x200) == 0)
  {
LABEL_13:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_26;
  }

LABEL_25:
  v6 = *(a2 + 19);
  v3 |= 0x200u;
  *(this + 44) = v3;
  *(this + 19) = v6;
  v2 = *(a2 + 44);
  if ((v2 & 0x1000) == 0)
  {
LABEL_14:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_27;
  }

LABEL_26:
  v7 = *(a2 + 85);
  v3 |= 0x1000u;
  *(this + 44) = v3;
  *(this + 85) = v7;
  v2 = *(a2 + 44);
  if ((v2 & 0x2000) == 0)
  {
LABEL_15:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_28;
  }

LABEL_27:
  v8 = *(a2 + 86);
  v3 |= 0x2000u;
  *(this + 44) = v3;
  *(this + 86) = v8;
  v2 = *(a2 + 44);
  if ((v2 & 0x400) == 0)
  {
LABEL_16:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_29;
  }

LABEL_28:
  v9 = *(a2 + 20);
  v3 |= 0x400u;
  *(this + 44) = v3;
  *(this + 20) = v9;
  v2 = *(a2 + 44);
  if ((v2 & 0x100) == 0)
  {
LABEL_17:
    if ((v2 & 4) == 0)
    {
      return result;
    }

LABEL_30:
    result = *(a2 + 3);
    *(this + 44) = v3 | 4;
    *(this + 3) = result;
    return result;
  }

LABEL_29:
  v10 = *(a2 + 18);
  v3 |= 0x100u;
  *(this + 44) = v3;
  *(this + 18) = v10;
  if ((*(a2 + 44) & 4) != 0)
  {
    goto LABEL_30;
  }

  return result;
}

CMMsl *CMMsl::GaitEventsModelOutput::operator=(CMMsl *a1, const CMMsl::GaitEventsModelOutput *a2)
{
  if (a1 != a2)
  {
    CMMsl::GaitEventsModelOutput::GaitEventsModelOutput(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::GaitEventsModelOutput *a2, CMMsl::GaitEventsModelOutput *a3)
{
  v3 = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v3;
  LOBYTE(v3) = *(this + 84);
  *(this + 84) = *(a2 + 84);
  *(a2 + 84) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  v5 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v5;
  v6 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v6;
  v7 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v7;
  v8 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v8;
  v9 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v9;
  v10 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v10;
  v11 = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v11;
  LOBYTE(v11) = *(this + 85);
  *(this + 85) = *(a2 + 85);
  *(a2 + 85) = v11;
  LOBYTE(v11) = *(this + 86);
  *(this + 86) = *(a2 + 86);
  *(a2 + 86) = v11;
  v12 = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v12;
  v13 = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v13;
  result = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = result;
  return result;
}

double CMMsl::GaitEventsModelOutput::GaitEventsModelOutput(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041E888;
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 88) = 0;
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 85) = *(a2 + 85);
  *(a1 + 86) = *(a2 + 86);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  return result;
}

CMMsl *CMMsl::GaitEventsModelOutput::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::GaitEventsModelOutput::GaitEventsModelOutput(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::GaitEventsModelOutput::formatText(CMMsl::GaitEventsModelOutput *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 44);
  if ((v5 & 0x100) != 0)
  {
    PB::TextFormatter::format(a2, "crownOrientation", *(this + 18));
    v5 = *(this + 44);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((v5 & 1) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "groundContactTime", *(this + 1));
  v5 = *(this + 44);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(a2, "initialContactTime", *(this + 2));
  v5 = *(this + 44);
  if ((v5 & 0x800) == 0)
  {
LABEL_5:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(a2, "isSuccessful", *(this + 84));
  v5 = *(this + 44);
  if ((v5 & 0x1000) == 0)
  {
LABEL_6:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(a2, "isValidSide", *(this + 85));
  v5 = *(this + 44);
  if ((v5 & 0x2000) == 0)
  {
LABEL_7:
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(a2, "isValidToeOff", *(this + 86));
  v5 = *(this + 44);
  if ((v5 & 4) == 0)
  {
LABEL_8:
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  PB::TextFormatter::format(a2, "meanRotationZ", *(this + 3));
  v5 = *(this + 44);
  if ((v5 & 8) == 0)
  {
LABEL_9:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(a2, "relativeInitialContactTime", *(this + 4));
  v5 = *(this + 44);
  if ((v5 & 0x10) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  PB::TextFormatter::format(a2, "relativeToeOffTime", *(this + 5));
  v5 = *(this + 44);
  if ((v5 & 0x200) == 0)
  {
LABEL_11:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(a2, "stepSide", *(this + 19));
  v5 = *(this + 44);
  if ((v5 & 0x20) == 0)
  {
LABEL_12:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  PB::TextFormatter::format(a2, "toeOffTime", *(this + 6));
  v5 = *(this + 44);
  if ((v5 & 0x40) == 0)
  {
LABEL_13:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  PB::TextFormatter::format(a2, "windowEndTime", *(this + 7));
  v5 = *(this + 44);
  if ((v5 & 0x80) == 0)
  {
LABEL_14:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_31:
  PB::TextFormatter::format(a2, "windowStartTime", *(this + 8));
  if ((*(this + 44) & 0x400) != 0)
  {
LABEL_15:
    PB::TextFormatter::format(a2, "wristOrientation", *(this + 20));
  }

LABEL_16:

  return PB::TextFormatter::endObject(a2);
}