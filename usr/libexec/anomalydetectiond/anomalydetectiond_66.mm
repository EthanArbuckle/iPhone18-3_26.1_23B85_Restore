uint64_t CMMsl::WatchOnWristState::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 40);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8), 1u);
    v4 = *(v3 + 40);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(this + 40) & 4) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::writeVarInt(a2, *(v3 + 24), 2u);
  v4 = *(v3 + 40);
  if ((v4 & 0x10) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  this = PB::Writer::writeVarInt(a2, *(v3 + 32), 3u);
  v4 = *(v3 + 40);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  this = PB::Writer::writeVarInt(a2, *(v3 + 28), 4u);
  v4 = *(v3 + 40);
  if ((v4 & 0x40) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = PB::Writer::write(a2, *(v3 + 37), 5u);
  v4 = *(v3 + 40);
  if ((v4 & 0x20) == 0)
  {
LABEL_7:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    this = PB::Writer::write(a2, *(v3 + 38), 7u);
    if ((*(v3 + 40) & 2) == 0)
    {
      return this;
    }

    goto LABEL_17;
  }

LABEL_15:
  this = PB::Writer::write(a2, *(v3 + 36), 6u);
  v4 = *(v3 + 40);
  if (v4 < 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v4 & 2) == 0)
  {
    return this;
  }

LABEL_17:
  v5 = *(v3 + 16);

  return PB::Writer::writeVarInt(a2, v5, 8u);
}

uint64_t CMMsl::WatchOnWristState::hash_value(CMMsl::WatchOnWristState *this)
{
  if (*(this + 40))
  {
    v1 = *(this + 1);
    if (v1 == 0.0)
    {
      v1 = 0.0;
    }

    if ((*(this + 40) & 4) != 0)
    {
LABEL_3:
      v2 = *(this + 6);
      if ((*(this + 40) & 0x10) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v1 = 0.0;
    if ((*(this + 40) & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  v2 = 0;
  if ((*(this + 40) & 0x10) != 0)
  {
LABEL_4:
    v3 = *(this + 8);
    if ((*(this + 40) & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v3 = 0;
  if ((*(this + 40) & 8) != 0)
  {
LABEL_5:
    v4 = *(this + 7);
    if ((*(this + 40) & 0x40) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v4 = 0;
  if ((*(this + 40) & 0x40) != 0)
  {
LABEL_6:
    v5 = *(this + 37);
    if ((*(this + 40) & 0x20) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v5 = 0;
  if ((*(this + 40) & 0x20) != 0)
  {
LABEL_7:
    v6 = *(this + 36);
    if ((*(this + 40) & 0x80) != 0)
    {
      goto LABEL_8;
    }

LABEL_18:
    v7 = 0;
    if ((*(this + 40) & 2) != 0)
    {
      goto LABEL_9;
    }

LABEL_19:
    v8 = 0;
    return v2 ^ *&v1 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8;
  }

LABEL_17:
  v6 = 0;
  if ((*(this + 40) & 0x80) == 0)
  {
    goto LABEL_18;
  }

LABEL_8:
  v7 = *(this + 38);
  if ((*(this + 40) & 2) == 0)
  {
    goto LABEL_19;
  }

LABEL_9:
  v8 = *(this + 2);
  return v2 ^ *&v1 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8;
}

void CMMsl::WatchOrientationSettings::~WatchOrientationSettings(CMMsl::WatchOrientationSettings *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::WatchOrientationSettings::WatchOrientationSettings(uint64_t this, const CMMsl::WatchOrientationSettings *a2)
{
  *this = off_100422D38;
  *(this + 16) = 0;
  if ((*(a2 + 16) & 2) != 0)
  {
    v3 = *(a2 + 3);
    *(this + 16) = 2;
    *(this + 12) = v3;
    v2 = 3;
    if ((*(a2 + 16) & 1) == 0)
    {
      return this;
    }

    goto LABEL_5;
  }

  v2 = 1;
  if (*(a2 + 16))
  {
LABEL_5:
    v4 = *(a2 + 2);
    *(this + 16) = v2;
    *(this + 8) = v4;
  }

  return this;
}

uint64_t CMMsl::WatchOrientationSettings::operator=(uint64_t a1, const CMMsl::WatchOrientationSettings *a2)
{
  if (a1 != a2)
  {
    CMMsl::WatchOrientationSettings::WatchOrientationSettings(v6, a2);
    v3 = *(a1 + 16);
    *(a1 + 16) = v8;
    v8 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    PB::Base::~Base(v6);
  }

  return a1;
}

_DWORD *CMMsl::swap(_DWORD *this, CMMsl::WatchOrientationSettings *a2, CMMsl::WatchOrientationSettings *a3)
{
  v3 = this[4];
  this[4] = *(a2 + 4);
  *(a2 + 4) = v3;
  v4 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v4;
  v5 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v5;
  return this;
}

uint64_t CMMsl::WatchOrientationSettings::WatchOrientationSettings(uint64_t result, _DWORD *a2)
{
  *result = off_100422D38;
  *(result + 16) = a2[4];
  a2[4] = 0;
  *(result + 12) = a2[3];
  *(result + 8) = a2[2];
  return result;
}

{
  *result = off_100422D38;
  *(result + 16) = a2[4];
  a2[4] = 0;
  *(result + 12) = a2[3];
  *(result + 8) = a2[2];
  return result;
}

uint64_t CMMsl::WatchOrientationSettings::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v7[0] = off_100422D38;
    v3 = *(a2 + 16);
    *(a2 + 16) = 0;
    v8 = *(a1 + 16);
    v4 = *(a1 + 8);
    v5 = *(a2 + 8);
    *(a1 + 16) = v3;
    *(a1 + 8) = v5;
    v7[1] = v4;
    PB::Base::~Base(v7);
  }

  return a1;
}

uint64_t CMMsl::WatchOrientationSettings::formatText(CMMsl::WatchOrientationSettings *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 16);
  if (v5)
  {
    PB::TextFormatter::format(a2, "crown", *(this + 2));
    v5 = *(this + 16);
  }

  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "wrist", *(this + 3));
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::WatchOrientationSettings::readFrom(CMMsl::WatchOrientationSettings *this, PB::Reader *a2)
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
        *(this + 16) |= 1u;
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
              LODWORD(v36) = 0;
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
              LODWORD(v36) = 0;
              goto LABEL_67;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v36) = 0;
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
              LODWORD(v36) = 0;
              break;
            }
          }
        }

LABEL_68:
        *(this + 2) = v36;
      }

      else if (v23 == 1)
      {
        *(this + 16) |= 2u;
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
        *(this + 3) = v28;
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

uint64_t CMMsl::WatchOrientationSettings::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 16);
  if ((v4 & 2) != 0)
  {
    this = PB::Writer::writeVarInt(a2, *(this + 12), 1u);
    v4 = *(v3 + 16);
  }

  if (v4)
  {
    v5 = *(v3 + 8);

    return PB::Writer::writeVarInt(a2, v5, 2u);
  }

  return this;
}

uint64_t CMMsl::WatchOrientationSettings::hash_value(CMMsl::WatchOrientationSettings *this)
{
  if ((*(this + 16) & 2) != 0)
  {
    v1 = *(this + 3);
    if (*(this + 16))
    {
      goto LABEL_3;
    }

LABEL_5:
    v2 = 0;
    return v2 ^ v1;
  }

  v1 = 0;
  if ((*(this + 16) & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v2 = *(this + 2);
  return v2 ^ v1;
}

uint64_t CMMsl::WifiScanEntry::WifiScanEntry(uint64_t this)
{
  *this = off_100422D70;
  *(this + 32) = 0;
  return this;
}

{
  *this = off_100422D70;
  *(this + 32) = 0;
  return this;
}

void CMMsl::WifiScanEntry::~WifiScanEntry(CMMsl::WifiScanEntry *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::WifiScanEntry::WifiScanEntry(uint64_t this, const CMMsl::WifiScanEntry *a2)
{
  *this = off_100422D70;
  *(this + 32) = 0;
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 32) = 1;
    *(this + 8) = v4;
    v2 = *(a2 + 32);
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 32) & 4) != 0)
  {
LABEL_5:
    v5 = *(a2 + 6);
    v3 |= 4u;
    *(this + 32) = v3;
    *(this + 24) = v5;
    v2 = *(a2 + 32);
  }

LABEL_6:
  if ((v2 & 2) == 0)
  {
    if ((v2 & 8) == 0)
    {
      return this;
    }

LABEL_10:
    v7 = *(a2 + 28);
    *(this + 32) = v3 | 8;
    *(this + 28) = v7;
    return this;
  }

  v6 = *(a2 + 2);
  v3 |= 2u;
  *(this + 32) = v3;
  *(this + 16) = v6;
  if ((*(a2 + 32) & 8) != 0)
  {
    goto LABEL_10;
  }

  return this;
}

uint64_t CMMsl::WifiScanEntry::operator=(uint64_t a1, const CMMsl::WifiScanEntry *a2)
{
  if (a1 != a2)
  {
    CMMsl::WifiScanEntry::WifiScanEntry(v7, a2);
    v3 = *(a1 + 32);
    *(a1 + 32) = v12;
    v12 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v4;
    LODWORD(v4) = *(a1 + 24);
    *(a1 + 24) = v10;
    v10 = v4;
    v5 = *(a1 + 16);
    *(a1 + 16) = v9;
    v9 = v5;
    LOBYTE(v4) = *(a1 + 28);
    *(a1 + 28) = v11;
    v11 = v4;
    PB::Base::~Base(v7);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::WifiScanEntry *a2, CMMsl::WifiScanEntry *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v4;
  result = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = result;
  LOBYTE(v4) = *(this + 28);
  *(this + 28) = *(a2 + 28);
  *(a2 + 28) = v4;
  return result;
}

double CMMsl::WifiScanEntry::WifiScanEntry(uint64_t a1, uint64_t a2)
{
  *a1 = off_100422D70;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  *(a1 + 28) = *(a2 + 28);
  return result;
}

{
  *a1 = off_100422D70;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  *(a1 + 28) = *(a2 + 28);
  return result;
}

uint64_t CMMsl::WifiScanEntry::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 32);
    *(a2 + 32) = 0;
    v4 = *(a2 + 8);
    v5 = *(a2 + 24);
    v6 = *(a2 + 16);
    v7 = *(a2 + 28);
    v8 = *(a1 + 32);
    *(a1 + 32) = v3;
    v15 = v8;
    v9 = *(a1 + 8);
    *(a1 + 8) = v4;
    v12[0] = off_100422D70;
    v12[1] = v9;
    LODWORD(v9) = *(a1 + 24);
    *(a1 + 24) = v5;
    v13 = v9;
    v10 = *(a1 + 16);
    *(a1 + 16) = v6;
    v12[2] = v10;
    LOBYTE(v9) = *(a1 + 28);
    *(a1 + 28) = v7;
    v14 = v9;
    PB::Base::~Base(v12);
  }

  return a1;
}

uint64_t CMMsl::WifiScanEntry::formatText(CMMsl::WifiScanEntry *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 32);
  if (v5)
  {
    PB::TextFormatter::format(a2, "entryId", *(this + 1));
    v5 = *(this + 32);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(this + 32) & 8) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "isMoving", *(this + 28));
  v5 = *(this + 32);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  PB::TextFormatter::format(a2, "rssi", *(this + 6));
  if ((*(this + 32) & 2) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(a2, "timestamp", *(this + 2));
  }

LABEL_6:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::WifiScanEntry::readFrom(CMMsl::WifiScanEntry *this, PB::Reader *a2)
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
            goto LABEL_81;
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
          *(this + 32) |= 2u;
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

          goto LABEL_77;
        }

        if (v22 == 4)
        {
          *(this + 32) |= 8u;
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

          *(this + 28) = v32;
          goto LABEL_77;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(this + 32) |= 1u;
          v33 = *(a2 + 1);
          v2 = *(a2 + 2);
          v34 = *a2;
          if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v2)
          {
            v48 = 0;
            v49 = 0;
            v37 = 0;
            if (v2 <= v33)
            {
              v2 = *(a2 + 1);
            }

            v50 = v2 - v33;
            v51 = (v34 + v33);
            v52 = v33 + 1;
            while (1)
            {
              if (!v50)
              {
                v37 = 0;
                *(a2 + 24) = 1;
                goto LABEL_76;
              }

              v53 = v52;
              v54 = *v51;
              *(a2 + 1) = v53;
              v37 |= (v54 & 0x7F) << v48;
              if ((v54 & 0x80) == 0)
              {
                break;
              }

              v48 += 7;
              --v50;
              ++v51;
              v52 = v53 + 1;
              v14 = v49++ > 8;
              if (v14)
              {
                v37 = 0;
                goto LABEL_75;
              }
            }

            if (*(a2 + 24))
            {
              v37 = 0;
            }

LABEL_75:
            v2 = v53;
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
                v37 = 0;
                break;
              }
            }
          }

LABEL_76:
          *(this + 1) = v37;
          goto LABEL_77;
        }

        if (v22 == 2)
        {
          *(this + 32) |= 4u;
          v23 = *(a2 + 1);
          v2 = *(a2 + 2);
          v24 = *a2;
          if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
          {
            v41 = 0;
            v42 = 0;
            v27 = 0;
            if (v2 <= v23)
            {
              v2 = *(a2 + 1);
            }

            v43 = v2 - v23;
            v44 = (v24 + v23);
            v45 = v23 + 1;
            while (1)
            {
              if (!v43)
              {
                LODWORD(v27) = 0;
                *(a2 + 24) = 1;
                goto LABEL_72;
              }

              v46 = v45;
              v47 = *v44;
              *(a2 + 1) = v46;
              v27 |= (v47 & 0x7F) << v41;
              if ((v47 & 0x80) == 0)
              {
                break;
              }

              v41 += 7;
              --v43;
              ++v44;
              v45 = v46 + 1;
              v14 = v42++ > 8;
              if (v14)
              {
                LODWORD(v27) = 0;
                goto LABEL_71;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v27) = 0;
            }

LABEL_71:
            v2 = v46;
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

LABEL_72:
          *(this + 6) = -(v27 & 1) ^ (v27 >> 1);
          goto LABEL_77;
        }
      }

      if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
      {
        v55 = 0;
        return v55 & 1;
      }

      v2 = *(a2 + 1);
LABEL_77:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_81:
  v55 = v4 ^ 1;
  return v55 & 1;
}

uint64_t CMMsl::WifiScanEntry::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 32);
  if (v4)
  {
    this = PB::Writer::writeVarInt(a2, *(this + 8), 1u);
    v4 = *(v3 + 32);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = PB::Writer::write(a2, *(v3 + 16), 3u);
      if ((*(v3 + 32) & 8) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 32) & 4) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::writeSInt(a2, *(v3 + 24), 2u);
  v4 = *(v3 + 32);
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
  v5 = *(v3 + 28);

  return PB::Writer::write(a2, v5, 4u);
}

BOOL CMMsl::WifiScanEntry::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    if ((*(a2 + 32) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 32))
  {
    return 0;
  }

  if ((*(a1 + 32) & 4) != 0)
  {
    if ((*(a2 + 32) & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 4) != 0)
  {
    return 0;
  }

  if ((*(a1 + 32) & 2) != 0)
  {
    if ((*(a2 + 32) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 2) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 32) & 8) == 0;
  if ((*(a1 + 32) & 8) != 0)
  {
    return (*(a2 + 32) & 8) != 0 && *(a1 + 28) == *(a2 + 28);
  }

  return v2;
}

uint64_t CMMsl::WifiScanEntry::hash_value(CMMsl::WifiScanEntry *this)
{
  if (*(this + 32))
  {
    v1 = *(this + 1);
    if ((*(this + 32) & 4) != 0)
    {
LABEL_3:
      v2 = *(this + 6);
      if ((*(this + 32) & 2) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v1 = 0;
    if ((*(this + 32) & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  v2 = 0;
  if ((*(this + 32) & 2) != 0)
  {
LABEL_4:
    v3 = *(this + 2);
    if (v3 == 0.0)
    {
      v3 = 0.0;
    }

    if ((*(this + 32) & 8) != 0)
    {
      goto LABEL_7;
    }

LABEL_11:
    v4 = 0;
    return v2 ^ v1 ^ *&v3 ^ v4;
  }

LABEL_10:
  v3 = 0.0;
  if ((*(this + 32) & 8) == 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  v4 = *(this + 28);
  return v2 ^ v1 ^ *&v3 ^ v4;
}

void CMMsl::WifiScanResults::~WifiScanResults(CMMsl::WifiScanResults *this)
{
  *this = off_100422DA8;
  v2 = (this + 8);
  sub_1002A2E24(&v2);
  PB::Base::~Base(this);
}

{
  *this = off_100422DA8;
  v2 = (this + 8);
  sub_1002A2E24(&v2);
  PB::Base::~Base(this);
}

{
  *this = off_100422DA8;
  v2 = (this + 8);
  sub_1002A2E24(&v2);
  PB::Base::~Base(this);
  operator delete();
}

void *CMMsl::WifiScanResults::WifiScanResults(void *this, const CMMsl::WifiScanResults *a2)
{
  this[1] = 0;
  *this = off_100422DA8;
  this[2] = 0;
  this[3] = 0;
  v2 = *(a2 + 1);
  if (v2 != *(a2 + 2))
  {
    v3 = *v2;
    sub_10028FA50();
  }

  return this;
}

uint64_t CMMsl::WifiScanResults::operator=(uint64_t a1, const CMMsl::WifiScanResults *a2)
{
  if (a1 != a2)
  {
    CMMsl::WifiScanResults::WifiScanResults(&v6, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v4;
    v6 = off_100422DA8;
    v9 = &v7;
    sub_1002A2E24(&v9);
    PB::Base::~Base(&v6);
  }

  return a1;
}

void *CMMsl::swap(void *this, CMMsl::WifiScanResults *a2, CMMsl::WifiScanResults *a3)
{
  v3 = this[1];
  this[1] = *(a2 + 1);
  *(a2 + 1) = v3;
  v4 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v5;
  return this;
}

uint64_t CMMsl::WifiScanResults::WifiScanResults(uint64_t a1, uint64_t a2)
{
  *a1 = off_100422DA8;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  sub_1002A2EE4((a1 + 8));
  *v4 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return a1;
}

{
  *a1 = off_100422DA8;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  sub_1002A2EE4((a1 + 8));
  *v4 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return a1;
}

uint64_t CMMsl::WifiScanResults::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v9 = off_100422DA8;
    v10 = 0uLL;
    v11 = 0;
    sub_1002A2EE4(&v10);
    v4 = *(a2 + 24);
    v5 = *(a2 + 8);
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    v6 = *(a1 + 8);
    *(a1 + 8) = v5;
    v10 = v6;
    v7 = *(a1 + 24);
    *(a1 + 24) = v4;
    v11 = v7;
    v12 = &v10;
    v9 = off_100422DA8;
    sub_1002A2E24(&v12);
    PB::Base::~Base(&v9);
  }

  return a1;
}

uint64_t CMMsl::WifiScanResults::formatText(CMMsl::WifiScanResults *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, a2, "entries");
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::WifiScanResults::readFrom(CMMsl::WifiScanResults *this, PB::Reader *a2)
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
        sub_100290078();
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

uint64_t CMMsl::WifiScanResults::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  for (i = *(this + 16); v2 != i; this = PB::Writer::writeSubmessage(a2, v5, 1u))
  {
    v5 = *v2++;
  }

  return this;
}

BOOL sub_10029022C(uint64_t *a1, uint64_t a2)
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
    result = CMMsl::WifiScanEntry::operator==(*(v5 - 8), v6);
    v8 = !result || v5 == v3;
    v5 += 8;
  }

  while (!v8);
  return result;
}

uint64_t CMMsl::WifiScanResults::hash_value(CMMsl::WifiScanResults *this)
{
  v1 = *(this + 1);
  v2 = *(this + 2);
  if (v1 == v2)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v4 = *v1++;
    v3 ^= CMMsl::WifiScanEntry::hash_value(v4);
  }

  while (v1 != v2);
  return v3;
}

void CMMsl::WorkoutActivity::~WorkoutActivity(CMMsl::WorkoutActivity *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::WorkoutActivity::WorkoutActivity(uint64_t this, const CMMsl::WorkoutActivity *a2)
{
  *this = off_100422DE0;
  *(this + 16) = 0;
  if ((*(a2 + 16) & 2) != 0)
  {
    v3 = *(a2 + 3);
    *(this + 16) = 2;
    *(this + 12) = v3;
    v2 = 3;
    if ((*(a2 + 16) & 1) == 0)
    {
      return this;
    }

    goto LABEL_5;
  }

  v2 = 1;
  if (*(a2 + 16))
  {
LABEL_5:
    v4 = *(a2 + 2);
    *(this + 16) = v2;
    *(this + 8) = v4;
  }

  return this;
}

uint64_t CMMsl::WorkoutActivity::operator=(uint64_t a1, const CMMsl::WorkoutActivity *a2)
{
  if (a1 != a2)
  {
    CMMsl::WorkoutActivity::WorkoutActivity(v6, a2);
    v3 = *(a1 + 16);
    *(a1 + 16) = v8;
    v8 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    PB::Base::~Base(v6);
  }

  return a1;
}

_DWORD *CMMsl::swap(_DWORD *this, CMMsl::WorkoutActivity *a2, CMMsl::WorkoutActivity *a3)
{
  v3 = this[4];
  this[4] = *(a2 + 4);
  *(a2 + 4) = v3;
  v4 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v4;
  v5 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v5;
  return this;
}

uint64_t CMMsl::WorkoutActivity::WorkoutActivity(uint64_t result, _DWORD *a2)
{
  *result = off_100422DE0;
  *(result + 16) = a2[4];
  a2[4] = 0;
  *(result + 12) = a2[3];
  *(result + 8) = a2[2];
  return result;
}

{
  *result = off_100422DE0;
  *(result + 16) = a2[4];
  a2[4] = 0;
  *(result + 12) = a2[3];
  *(result + 8) = a2[2];
  return result;
}

uint64_t CMMsl::WorkoutActivity::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v7[0] = off_100422DE0;
    v3 = *(a2 + 16);
    *(a2 + 16) = 0;
    v8 = *(a1 + 16);
    v4 = *(a1 + 8);
    v5 = *(a2 + 8);
    *(a1 + 16) = v3;
    *(a1 + 8) = v5;
    v7[1] = v4;
    PB::Base::~Base(v7);
  }

  return a1;
}

uint64_t CMMsl::WorkoutActivity::formatText(CMMsl::WorkoutActivity *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 16);
  if (v5)
  {
    PB::TextFormatter::format(a2, "activityType", *(this + 2));
    v5 = *(this + 16);
  }

  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "motionNotification", *(this + 3));
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::WorkoutActivity::readFrom(CMMsl::WorkoutActivity *this, PB::Reader *a2)
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
        *(this + 16) |= 1u;
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
              LODWORD(v36) = 0;
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
              LODWORD(v36) = 0;
              goto LABEL_67;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v36) = 0;
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
              LODWORD(v36) = 0;
              break;
            }
          }
        }

LABEL_68:
        *(this + 2) = v36;
      }

      else if (v23 == 1)
      {
        *(this + 16) |= 2u;
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
        *(this + 3) = v28;
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

uint64_t CMMsl::WorkoutActivity::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 16);
  if ((v4 & 2) != 0)
  {
    this = PB::Writer::writeVarInt(a2, *(this + 12), 1u);
    v4 = *(v3 + 16);
  }

  if (v4)
  {
    v5 = *(v3 + 8);

    return PB::Writer::writeVarInt(a2, v5, 2u);
  }

  return this;
}

uint64_t CMMsl::WorkoutActivity::hash_value(CMMsl::WorkoutActivity *this)
{
  if ((*(this + 16) & 2) != 0)
  {
    v1 = *(this + 3);
    if (*(this + 16))
    {
      goto LABEL_3;
    }

LABEL_5:
    v2 = 0;
    return v2 ^ v1;
  }

  v1 = 0;
  if ((*(this + 16) & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v2 = *(this + 2);
  return v2 ^ v1;
}

void CMMsl::WorkoutEvent::~WorkoutEvent(CMMsl::WorkoutEvent *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::WorkoutEvent::WorkoutEvent(uint64_t this, const CMMsl::WorkoutEvent *a2)
{
  *this = off_100422E18;
  *(this + 64) = 0;
  v2 = *(a2 + 32);
  if ((v2 & 0x200) != 0)
  {
    v4 = *(a2 + 15);
    v3 = 512;
    *(this + 64) = 512;
    *(this + 60) = v4;
    v2 = *(a2 + 32);
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
    v5 = *(a2 + 10);
    v3 |= 0x10u;
    *(this + 64) = v3;
    *(this + 40) = v5;
    v2 = *(a2 + 32);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    v6 = *(a2 + 2);
    v3 |= 2u;
    *(this + 64) = v3;
    *(this + 16) = v6;
    v2 = *(a2 + 32);
    if ((v2 & 8) == 0)
    {
LABEL_8:
      if ((v2 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 4);
  v3 |= 8u;
  *(this + 64) = v3;
  *(this + 32) = v7;
  v2 = *(a2 + 32);
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
  v8 = *(a2 + 1);
  v3 |= 1u;
  *(this + 64) = v3;
  *(this + 8) = v8;
  v2 = *(a2 + 32);
  if ((v2 & 0x80) == 0)
  {
LABEL_10:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

LABEL_18:
  v9 = *(a2 + 13);
  v3 |= 0x80u;
  *(this + 64) = v3;
  *(this + 52) = v9;
  v2 = *(a2 + 32);
  if ((v2 & 0x100) == 0)
  {
LABEL_11:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

LABEL_19:
  v10 = *(a2 + 14);
  v3 |= 0x100u;
  *(this + 64) = v3;
  *(this + 56) = v10;
  v2 = *(a2 + 32);
  if ((v2 & 0x40) == 0)
  {
LABEL_12:
    if ((v2 & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_21;
  }

LABEL_20:
  v11 = *(a2 + 12);
  v3 |= 0x40u;
  *(this + 64) = v3;
  *(this + 48) = v11;
  v2 = *(a2 + 32);
  if ((v2 & 4) == 0)
  {
LABEL_13:
    if ((v2 & 0x20) == 0)
    {
      return this;
    }

LABEL_22:
    v13 = *(a2 + 11);
    *(this + 64) = v3 | 0x20;
    *(this + 44) = v13;
    return this;
  }

LABEL_21:
  v12 = *(a2 + 3);
  v3 |= 4u;
  *(this + 64) = v3;
  *(this + 24) = v12;
  if ((*(a2 + 32) & 0x20) != 0)
  {
    goto LABEL_22;
  }

  return this;
}

uint64_t CMMsl::WorkoutEvent::operator=(uint64_t a1, const CMMsl::WorkoutEvent *a2)
{
  if (a1 != a2)
  {
    CMMsl::WorkoutEvent::WorkoutEvent(v10, a2);
    v3 = *(a1 + 64);
    *(a1 + 64) = v15;
    v15 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v11;
    v5 = *(a1 + 56);
    *(a1 + 56) = v14;
    v14 = v5;
    v6 = v13;
    v7 = *(a1 + 24);
    *(a1 + 24) = v12;
    v11 = v4;
    v12 = v7;
    v8 = *(a1 + 40);
    *(a1 + 40) = v6;
    v13 = v8;
    PB::Base::~Base(v10);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::WorkoutEvent *a2, CMMsl::WorkoutEvent *a3)
{
  v3 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v3;
  v4 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v4;
  v5 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v5;
  v6 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v6;
  v7 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v7;
  v8 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v8;
  v9 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v9;
  v10 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v10;
  v11 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v11;
  result = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = result;
  v13 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v13;
  return result;
}

double CMMsl::WorkoutEvent::WorkoutEvent(uint64_t a1, uint64_t a2)
{
  *a1 = off_100422E18;
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = 0;
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  *(a1 + 44) = *(a2 + 44);
  return result;
}

uint64_t CMMsl::WorkoutEvent::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::WorkoutEvent::WorkoutEvent(v10, a2);
    v3 = *(a1 + 64);
    *(a1 + 64) = v15;
    v15 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v11;
    v5 = *(a1 + 56);
    *(a1 + 56) = v14;
    v14 = v5;
    v6 = v13;
    v7 = *(a1 + 24);
    *(a1 + 24) = v12;
    v11 = v4;
    v12 = v7;
    v8 = *(a1 + 40);
    *(a1 + 40) = v6;
    v13 = v8;
    PB::Base::~Base(v10);
  }

  return a1;
}

uint64_t CMMsl::WorkoutEvent::formatText(CMMsl::WorkoutEvent *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 32);
  if (v5)
  {
    PB::TextFormatter::format(a2, "endTime", *(this + 1));
    v5 = *(this + 32);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "eventTime", *(this + 2));
  v5 = *(this + 32);
  if ((v5 & 0x10) == 0)
  {
LABEL_4:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  PB::TextFormatter::format(a2, "eventType", *(this + 10));
  v5 = *(this + 32);
  if ((v5 & 0x20) == 0)
  {
LABEL_5:
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  PB::TextFormatter::format(a2, "genericWorkoutLabel", *(this + 11));
  v5 = *(this + 32);
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
  PB::TextFormatter::format(a2, "poolLength", *(this + 3));
  v5 = *(this + 32);
  if ((v5 & 8) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(a2, "startTime", *(this + 4));
  v5 = *(this + 32);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(a2, "swimLocation", *(this + 12));
  v5 = *(this + 32);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(a2, "workoutLocationType", *(this + 13));
  v5 = *(this + 32);
  if ((v5 & 0x100) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  PB::TextFormatter::format(a2, "workoutMode", *(this + 14));
  if ((*(this + 32) & 0x200) != 0)
  {
LABEL_11:
    PB::TextFormatter::format(a2, "workoutType", *(this + 15));
  }

LABEL_12:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::WorkoutEvent::readFrom(CMMsl::WorkoutEvent *this, PB::Reader *a2)
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
            goto LABEL_175;
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
            *(this + 32) |= 0x80u;
            v55 = *(a2 + 1);
            v2 = *(a2 + 2);
            v56 = *a2;
            if (v55 > 0xFFFFFFFFFFFFFFF5 || v55 + 10 > v2)
            {
              v92 = 0;
              v93 = 0;
              v59 = 0;
              if (v2 <= v55)
              {
                v2 = *(a2 + 1);
              }

              v94 = v2 - v55;
              v95 = (v56 + v55);
              v96 = v55 + 1;
              while (1)
              {
                if (!v94)
                {
                  LODWORD(v59) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_162;
                }

                v97 = v96;
                v98 = *v95;
                *(a2 + 1) = v97;
                v59 |= (v98 & 0x7F) << v92;
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
                  LODWORD(v59) = 0;
                  goto LABEL_161;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v59) = 0;
              }

LABEL_161:
              v2 = v97;
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

LABEL_162:
            *(this + 13) = v59;
            goto LABEL_171;
          }

          if (v22 == 7)
          {
            *(this + 32) |= 0x100u;
            v39 = *(a2 + 1);
            v2 = *(a2 + 2);
            v40 = *a2;
            if (v39 > 0xFFFFFFFFFFFFFFF5 || v39 + 10 > v2)
            {
              v78 = 0;
              v79 = 0;
              v43 = 0;
              if (v2 <= v39)
              {
                v2 = *(a2 + 1);
              }

              v80 = v2 - v39;
              v81 = (v40 + v39);
              v82 = v39 + 1;
              while (1)
              {
                if (!v80)
                {
                  LODWORD(v43) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_154;
                }

                v83 = v82;
                v84 = *v81;
                *(a2 + 1) = v83;
                v43 |= (v84 & 0x7F) << v78;
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
                  LODWORD(v43) = 0;
                  goto LABEL_153;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v43) = 0;
              }

LABEL_153:
              v2 = v83;
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

LABEL_154:
            *(this + 14) = v43;
            goto LABEL_171;
          }
        }

        else
        {
          switch(v22)
          {
            case 8:
              *(this + 32) |= 0x40u;
              v63 = *(a2 + 1);
              v2 = *(a2 + 2);
              v64 = *a2;
              if (v63 > 0xFFFFFFFFFFFFFFF5 || v63 + 10 > v2)
              {
                v99 = 0;
                v100 = 0;
                v67 = 0;
                if (v2 <= v63)
                {
                  v2 = *(a2 + 1);
                }

                v101 = v2 - v63;
                v102 = (v64 + v63);
                v103 = v63 + 1;
                while (1)
                {
                  if (!v101)
                  {
                    LODWORD(v67) = 0;
                    *(a2 + 24) = 1;
                    goto LABEL_166;
                  }

                  v104 = v103;
                  v105 = *v102;
                  *(a2 + 1) = v104;
                  v67 |= (v105 & 0x7F) << v99;
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
                    LODWORD(v67) = 0;
                    goto LABEL_165;
                  }
                }

                if (*(a2 + 24))
                {
                  LODWORD(v67) = 0;
                }

LABEL_165:
                v2 = v104;
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

LABEL_166:
              *(this + 12) = v67;
              goto LABEL_171;
            case 9:
              *(this + 32) |= 4u;
              v2 = *(a2 + 1);
              if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
              {
LABEL_88:
                *(a2 + 24) = 1;
                goto LABEL_171;
              }

              *(this + 3) = *(*a2 + v2);
              goto LABEL_140;
            case 0xA:
              *(this + 32) |= 0x20u;
              v23 = *(a2 + 1);
              v2 = *(a2 + 2);
              v24 = *a2;
              if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
              {
                v106 = 0;
                v107 = 0;
                v27 = 0;
                if (v2 <= v23)
                {
                  v2 = *(a2 + 1);
                }

                v108 = v2 - v23;
                v109 = (v24 + v23);
                v110 = v23 + 1;
                while (1)
                {
                  if (!v108)
                  {
                    LODWORD(v27) = 0;
                    *(a2 + 24) = 1;
                    goto LABEL_170;
                  }

                  v111 = v110;
                  v112 = *v109;
                  *(a2 + 1) = v111;
                  v27 |= (v112 & 0x7F) << v106;
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
                    LODWORD(v27) = 0;
                    goto LABEL_169;
                  }
                }

                if (*(a2 + 24))
                {
                  LODWORD(v27) = 0;
                }

LABEL_169:
                v2 = v111;
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

LABEL_170:
              *(this + 11) = v27;
              goto LABEL_171;
          }
        }
      }

      else if (v22 <= 2)
      {
        if (v22 == 1)
        {
          *(this + 32) |= 0x200u;
          v47 = *(a2 + 1);
          v2 = *(a2 + 2);
          v48 = *a2;
          if (v47 > 0xFFFFFFFFFFFFFFF5 || v47 + 10 > v2)
          {
            v85 = 0;
            v86 = 0;
            v51 = 0;
            if (v2 <= v47)
            {
              v2 = *(a2 + 1);
            }

            v87 = v2 - v47;
            v88 = (v48 + v47);
            v89 = v47 + 1;
            while (1)
            {
              if (!v87)
              {
                LODWORD(v51) = 0;
                *(a2 + 24) = 1;
                goto LABEL_158;
              }

              v90 = v89;
              v91 = *v88;
              *(a2 + 1) = v90;
              v51 |= (v91 & 0x7F) << v85;
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
                LODWORD(v51) = 0;
                goto LABEL_157;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v51) = 0;
            }

LABEL_157:
            v2 = v90;
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

LABEL_158:
          *(this + 15) = v51;
          goto LABEL_171;
        }

        if (v22 == 2)
        {
          *(this + 32) |= 0x10u;
          v31 = *(a2 + 1);
          v2 = *(a2 + 2);
          v32 = *a2;
          if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
          {
            v71 = 0;
            v72 = 0;
            v35 = 0;
            if (v2 <= v31)
            {
              v2 = *(a2 + 1);
            }

            v73 = v2 - v31;
            v74 = (v32 + v31);
            v75 = v31 + 1;
            while (1)
            {
              if (!v73)
              {
                LODWORD(v35) = 0;
                *(a2 + 24) = 1;
                goto LABEL_150;
              }

              v76 = v75;
              v77 = *v74;
              *(a2 + 1) = v76;
              v35 |= (v77 & 0x7F) << v71;
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
                LODWORD(v35) = 0;
                goto LABEL_149;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v35) = 0;
            }

LABEL_149:
            v2 = v76;
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

LABEL_150:
          *(this + 10) = v35;
          goto LABEL_171;
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            *(this + 32) |= 2u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
              goto LABEL_88;
            }

            *(this + 2) = *(*a2 + v2);
            goto LABEL_140;
          case 4:
            *(this + 32) |= 8u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
              goto LABEL_88;
            }

            *(this + 4) = *(*a2 + v2);
            goto LABEL_140;
          case 5:
            *(this + 32) |= 1u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
              goto LABEL_88;
            }

            *(this + 1) = *(*a2 + v2);
LABEL_140:
            v2 = *(a2 + 1) + 8;
            *(a2 + 1) = v2;
            goto LABEL_171;
        }
      }

      if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
      {
        v113 = 0;
        return v113 & 1;
      }

      v2 = *(a2 + 1);
LABEL_171:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_175:
  v113 = v4 ^ 1;
  return v113 & 1;
}

uint64_t CMMsl::WorkoutEvent::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 64);
  if ((v4 & 0x200) != 0)
  {
    this = PB::Writer::writeVarInt(a2, *(this + 60), 1u);
    v4 = *(v3 + 64);
    if ((v4 & 0x10) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
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

  this = PB::Writer::writeVarInt(a2, *(v3 + 40), 2u);
  v4 = *(v3 + 64);
  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = PB::Writer::write(a2, *(v3 + 16), 3u);
  v4 = *(v3 + 64);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  this = PB::Writer::write(a2, *(v3 + 32), 4u);
  v4 = *(v3 + 64);
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
  v4 = *(v3 + 64);
  if ((v4 & 0x80) == 0)
  {
LABEL_7:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = PB::Writer::writeVarInt(a2, *(v3 + 52), 6u);
  v4 = *(v3 + 64);
  if ((v4 & 0x100) == 0)
  {
LABEL_8:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = PB::Writer::writeVarInt(a2, *(v3 + 56), 7u);
  v4 = *(v3 + 64);
  if ((v4 & 0x40) == 0)
  {
LABEL_9:
    if ((v4 & 4) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    this = PB::Writer::write(a2, *(v3 + 24), 9u);
    if ((*(v3 + 64) & 0x20) == 0)
    {
      return this;
    }

    goto LABEL_21;
  }

LABEL_19:
  this = PB::Writer::writeVarInt(a2, *(v3 + 48), 8u);
  v4 = *(v3 + 64);
  if ((v4 & 4) != 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((v4 & 0x20) == 0)
  {
    return this;
  }

LABEL_21:
  v5 = *(v3 + 44);

  return PB::Writer::writeVarInt(a2, v5, 0xAu);
}

uint64_t CMMsl::WorkoutEvent::hash_value(CMMsl::WorkoutEvent *this)
{
  v1 = *(this + 32);
  if ((v1 & 0x200) != 0)
  {
    v2 = *(this + 15);
    if ((v1 & 0x10) != 0)
    {
LABEL_3:
      v3 = *(this + 10);
      if ((v1 & 2) != 0)
      {
        goto LABEL_4;
      }

LABEL_22:
      v4 = 0.0;
      if ((v1 & 8) != 0)
      {
        goto LABEL_7;
      }

LABEL_23:
      v5 = 0.0;
      if (v1)
      {
        goto LABEL_10;
      }

LABEL_24:
      v6 = 0.0;
      if ((v1 & 0x80) != 0)
      {
        goto LABEL_13;
      }

      goto LABEL_25;
    }
  }

  else
  {
    v2 = 0;
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((v1 & 2) == 0)
  {
    goto LABEL_22;
  }

LABEL_4:
  v4 = *(this + 2);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  if ((v1 & 8) == 0)
  {
    goto LABEL_23;
  }

LABEL_7:
  v5 = *(this + 4);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  if ((v1 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_10:
  v6 = *(this + 1);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  if ((v1 & 0x80) != 0)
  {
LABEL_13:
    v7 = *(this + 13);
    if ((*(this + 32) & 0x100) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_26;
  }

LABEL_25:
  v7 = 0;
  if ((*(this + 32) & 0x100) != 0)
  {
LABEL_14:
    v8 = *(this + 14);
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_27;
  }

LABEL_26:
  v8 = 0;
  if ((v1 & 0x40) != 0)
  {
LABEL_15:
    v9 = *(this + 12);
    if ((v1 & 4) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_28;
  }

LABEL_27:
  v9 = 0;
  if ((v1 & 4) != 0)
  {
LABEL_16:
    v10 = *(this + 3);
    if (v10 == 0.0)
    {
      v10 = 0.0;
    }

    if ((v1 & 0x20) != 0)
    {
      goto LABEL_19;
    }

LABEL_29:
    v11 = 0;
    return v3 ^ v2 ^ *&v4 ^ *&v5 ^ *&v6 ^ v7 ^ v8 ^ v9 ^ *&v10 ^ v11;
  }

LABEL_28:
  v10 = 0.0;
  if ((v1 & 0x20) == 0)
  {
    goto LABEL_29;
  }

LABEL_19:
  v11 = *(this + 11);
  return v3 ^ v2 ^ *&v4 ^ *&v5 ^ *&v6 ^ v7 ^ v8 ^ v9 ^ *&v10 ^ v11;
}

uint64_t CMMsl::WorkoutPriorInformation::WorkoutPriorInformation(uint64_t this)
{
  *this = off_100422E50;
  *(this + 32) = 0;
  return this;
}

{
  *this = off_100422E50;
  *(this + 32) = 0;
  return this;
}

void CMMsl::WorkoutPriorInformation::~WorkoutPriorInformation(CMMsl::WorkoutPriorInformation *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::WorkoutPriorInformation::WorkoutPriorInformation(uint64_t this, const CMMsl::WorkoutPriorInformation *a2)
{
  *this = off_100422E50;
  *(this + 32) = 0;
  v2 = *(a2 + 32);
  if ((v2 & 0x10) != 0)
  {
    v4 = *(a2 + 7);
    v3 = 16;
    *(this + 32) = 16;
    *(this + 28) = v4;
    v2 = *(a2 + 32);
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 32) & 8) != 0)
  {
LABEL_5:
    v5 = *(a2 + 6);
    v3 |= 8u;
    *(this + 32) = v3;
    *(this + 24) = v5;
    v2 = *(a2 + 32);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    v6 = *(a2 + 5);
    v3 |= 4u;
    *(this + 32) = v3;
    *(this + 20) = v6;
    v2 = *(a2 + 32);
    if ((v2 & 1) == 0)
    {
LABEL_8:
      if ((v2 & 2) == 0)
      {
        return this;
      }

LABEL_12:
      v8 = *(a2 + 4);
      *(this + 32) = v3 | 2;
      *(this + 16) = v8;
      return this;
    }
  }

  else if ((v2 & 1) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 1);
  v3 |= 1u;
  *(this + 32) = v3;
  *(this + 8) = v7;
  if ((*(a2 + 32) & 2) != 0)
  {
    goto LABEL_12;
  }

  return this;
}

uint64_t CMMsl::WorkoutPriorInformation::operator=(uint64_t a1, const CMMsl::WorkoutPriorInformation *a2)
{
  if (a1 != a2)
  {
    CMMsl::WorkoutPriorInformation::WorkoutPriorInformation(v7, a2);
    v3 = *(a1 + 32);
    *(a1 + 32) = v10;
    v10 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v4;
    v5 = *(a1 + 16);
    *(a1 + 16) = v9;
    v9 = v5;
    PB::Base::~Base(v7);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::WorkoutPriorInformation *a2, CMMsl::WorkoutPriorInformation *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v3;
  v4 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v4;
  v5 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v5;
  v6 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v6;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  v8 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v8;
  return result;
}

double CMMsl::WorkoutPriorInformation::WorkoutPriorInformation(uint64_t a1, uint64_t a2)
{
  *a1 = off_100422E50;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 20) = *(a2 + 20);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = *(a2 + 16);
  return result;
}

{
  *a1 = off_100422E50;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 20) = *(a2 + 20);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = *(a2 + 16);
  return result;
}

uint64_t CMMsl::WorkoutPriorInformation::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v9[0] = off_100422E50;
    v3 = *(a2 + 32);
    *(a2 + 32) = 0;
    v4 = *(a2 + 8);
    v11 = *(a1 + 32);
    v5 = *(a1 + 8);
    *(a1 + 8) = v4;
    v9[1] = v5;
    v6 = *(a1 + 16);
    v7 = *(a2 + 16);
    *(a1 + 32) = v3;
    *(a1 + 16) = v7;
    v10 = v6;
    PB::Base::~Base(v9);
  }

  return a1;
}

uint64_t CMMsl::WorkoutPriorInformation::formatText(CMMsl::WorkoutPriorInformation *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 32);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "genericWorkoutLabel", *(this + 4));
    v5 = *(this + 32);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(this + 32) & 1) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "poolLength", *(this + 1));
  v5 = *(this + 32);
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
  PB::TextFormatter::format(a2, "swimLocation", *(this + 5));
  v5 = *(this + 32);
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
  PB::TextFormatter::format(a2, "workoutLocationType", *(this + 6));
  if ((*(this + 32) & 0x10) != 0)
  {
LABEL_6:
    PB::TextFormatter::format(a2, "workoutType", *(this + 7));
  }

LABEL_7:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::WorkoutPriorInformation::readFrom(CMMsl::WorkoutPriorInformation *this, PB::Reader *a2)
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
            goto LABEL_118;
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
      if ((v10 >> 3) <= 2)
      {
        if (v22 == 1)
        {
          *(this + 32) |= 0x10u;
          v47 = *(a2 + 1);
          v2 = *(a2 + 2);
          v48 = *a2;
          if (v47 > 0xFFFFFFFFFFFFFFF5 || v47 + 10 > v2)
          {
            v62 = 0;
            v63 = 0;
            v51 = 0;
            if (v2 <= v47)
            {
              v2 = *(a2 + 1);
            }

            v64 = v2 - v47;
            v65 = (v48 + v47);
            v66 = v47 + 1;
            while (1)
            {
              if (!v64)
              {
                LODWORD(v51) = 0;
                *(a2 + 24) = 1;
                goto LABEL_105;
              }

              v67 = v66;
              v68 = *v65;
              *(a2 + 1) = v67;
              v51 |= (v68 & 0x7F) << v62;
              if ((v68 & 0x80) == 0)
              {
                break;
              }

              v62 += 7;
              --v64;
              ++v65;
              v66 = v67 + 1;
              v14 = v63++ > 8;
              if (v14)
              {
                LODWORD(v51) = 0;
                goto LABEL_104;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v51) = 0;
            }

LABEL_104:
            v2 = v67;
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

LABEL_105:
          *(this + 7) = v51;
          goto LABEL_114;
        }

        if (v22 == 2)
        {
          *(this + 32) |= 8u;
          v31 = *(a2 + 1);
          v2 = *(a2 + 2);
          v32 = *a2;
          if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
          {
            v76 = 0;
            v77 = 0;
            v35 = 0;
            if (v2 <= v31)
            {
              v2 = *(a2 + 1);
            }

            v78 = v2 - v31;
            v79 = (v32 + v31);
            v80 = v31 + 1;
            while (1)
            {
              if (!v78)
              {
                LODWORD(v35) = 0;
                *(a2 + 24) = 1;
                goto LABEL_113;
              }

              v81 = v80;
              v82 = *v79;
              *(a2 + 1) = v81;
              v35 |= (v82 & 0x7F) << v76;
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
                LODWORD(v35) = 0;
                goto LABEL_112;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v35) = 0;
            }

LABEL_112:
            v2 = v81;
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

LABEL_113:
          *(this + 6) = v35;
          goto LABEL_114;
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            *(this + 32) |= 4u;
            v39 = *(a2 + 1);
            v2 = *(a2 + 2);
            v40 = *a2;
            if (v39 > 0xFFFFFFFFFFFFFFF5 || v39 + 10 > v2)
            {
              v55 = 0;
              v56 = 0;
              v43 = 0;
              if (v2 <= v39)
              {
                v2 = *(a2 + 1);
              }

              v57 = v2 - v39;
              v58 = (v40 + v39);
              v59 = v39 + 1;
              while (1)
              {
                if (!v57)
                {
                  LODWORD(v43) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_101;
                }

                v60 = v59;
                v61 = *v58;
                *(a2 + 1) = v60;
                v43 |= (v61 & 0x7F) << v55;
                if ((v61 & 0x80) == 0)
                {
                  break;
                }

                v55 += 7;
                --v57;
                ++v58;
                v59 = v60 + 1;
                v14 = v56++ > 8;
                if (v14)
                {
                  LODWORD(v43) = 0;
                  goto LABEL_100;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v43) = 0;
              }

LABEL_100:
              v2 = v60;
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

LABEL_101:
            *(this + 5) = v43;
            goto LABEL_114;
          case 4:
            *(this + 32) |= 1u;
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

            goto LABEL_114;
          case 5:
            *(this + 32) |= 2u;
            v23 = *(a2 + 1);
            v2 = *(a2 + 2);
            v24 = *a2;
            if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
            {
              v69 = 0;
              v70 = 0;
              v27 = 0;
              if (v2 <= v23)
              {
                v2 = *(a2 + 1);
              }

              v71 = v2 - v23;
              v72 = (v24 + v23);
              v73 = v23 + 1;
              while (1)
              {
                if (!v71)
                {
                  LODWORD(v27) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_109;
                }

                v74 = v73;
                v75 = *v72;
                *(a2 + 1) = v74;
                v27 |= (v75 & 0x7F) << v69;
                if ((v75 & 0x80) == 0)
                {
                  break;
                }

                v69 += 7;
                --v71;
                ++v72;
                v73 = v74 + 1;
                v14 = v70++ > 8;
                if (v14)
                {
                  LODWORD(v27) = 0;
                  goto LABEL_108;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v27) = 0;
              }

LABEL_108:
              v2 = v74;
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

LABEL_109:
            *(this + 4) = v27;
            goto LABEL_114;
        }
      }

      if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
      {
        v83 = 0;
        return v83 & 1;
      }

      v2 = *(a2 + 1);
LABEL_114:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_118:
  v83 = v4 ^ 1;
  return v83 & 1;
}

uint64_t CMMsl::WorkoutPriorInformation::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 32);
  if ((v4 & 0x10) != 0)
  {
    this = PB::Writer::writeVarInt(a2, *(this + 28), 1u);
    v4 = *(v3 + 32);
    if ((v4 & 8) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 32) & 8) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::writeVarInt(a2, *(v3 + 24), 2u);
  v4 = *(v3 + 32);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = PB::Writer::write(a2, *(v3 + 8), 4u);
    if ((*(v3 + 32) & 2) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = PB::Writer::writeVarInt(a2, *(v3 + 20), 3u);
  v4 = *(v3 + 32);
  if (v4)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v4 & 2) == 0)
  {
    return this;
  }

LABEL_11:
  v5 = *(v3 + 16);

  return PB::Writer::writeVarInt(a2, v5, 5u);
}

BOOL CMMsl::WorkoutPriorInformation::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 32) & 0x10) != 0)
  {
    if ((*(a2 + 32) & 0x10) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 0x10) != 0)
  {
    return 0;
  }

  if ((*(a1 + 32) & 8) != 0)
  {
    if ((*(a2 + 32) & 8) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 32) & 4) != 0)
  {
    if ((*(a2 + 32) & 4) == 0 || *(a1 + 20) != *(a2 + 20))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 4) != 0)
  {
    return 0;
  }

  if (*(a1 + 32))
  {
    if ((*(a2 + 32) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 32))
  {
    return 0;
  }

  v2 = (*(a2 + 32) & 2) == 0;
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*(a2 + 32) & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v2;
}

uint64_t CMMsl::WorkoutPriorInformation::hash_value(CMMsl::WorkoutPriorInformation *this)
{
  if ((*(this + 32) & 0x10) != 0)
  {
    v1 = *(this + 7);
    if ((*(this + 32) & 8) != 0)
    {
LABEL_3:
      v2 = *(this + 6);
      if ((*(this + 32) & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v1 = 0;
    if ((*(this + 32) & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  v2 = 0;
  if ((*(this + 32) & 4) != 0)
  {
LABEL_4:
    v3 = *(this + 5);
    if (*(this + 32))
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v3 = 0;
  if (*(this + 32))
  {
LABEL_5:
    v4 = *(this + 1);
    if (v4 == 0.0)
    {
      v4 = 0.0;
    }

    if ((*(this + 32) & 2) != 0)
    {
      goto LABEL_8;
    }

LABEL_13:
    v5 = 0;
    return v2 ^ v1 ^ v3 ^ *&v4 ^ v5;
  }

LABEL_12:
  v4 = 0.0;
  if ((*(this + 32) & 2) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v5 = *(this + 4);
  return v2 ^ v1 ^ v3 ^ *&v4 ^ v5;
}

void CMMsl::WorkoutRecorderALSData::~WorkoutRecorderALSData(CMMsl::WorkoutRecorderALSData *this)
{
  v2 = *(this + 1);
  *this = off_100422E88;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::WorkoutRecorderALSData::~WorkoutRecorderALSData(this);

  operator delete();
}

void *CMMsl::WorkoutRecorderALSData::WorkoutRecorderALSData(void *this, const CMMsl::WorkoutRecorderALSData *a2)
{
  *this = off_100422E88;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const CMMsl::WorkoutRecorderALSData *CMMsl::WorkoutRecorderALSData::operator=(const CMMsl::WorkoutRecorderALSData *a1, const CMMsl::WorkoutRecorderALSData *a2)
{
  if (a1 != a2)
  {
    CMMsl::WorkoutRecorderALSData::WorkoutRecorderALSData(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    CMMsl::WorkoutRecorderALSData::~WorkoutRecorderALSData(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::WorkoutRecorderALSData *a2, CMMsl::WorkoutRecorderALSData *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::WorkoutRecorderALSData::WorkoutRecorderALSData(void *a1, uint64_t a2)
{
  *a1 = off_100422E88;
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
  *a1 = off_100422E88;
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

uint64_t CMMsl::WorkoutRecorderALSData::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = off_100422E88;
    v6[1] = v4;
    CMMsl::WorkoutRecorderALSData::~WorkoutRecorderALSData(v6);
  }

  return a1;
}

uint64_t CMMsl::WorkoutRecorderALSData::formatText(CMMsl::WorkoutRecorderALSData *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::WorkoutRecorderALSData::readFrom(CMMsl::WorkoutRecorderALSData *this, PB::Reader *a2)
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

uint64_t CMMsl::WorkoutRecorderALSData::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2, 1u);
  }

  return this;
}

uint64_t CMMsl::WorkoutRecorderALSData::hash_value(CMMsl::WorkoutRecorderALSData *this)
{
  v1 = *(this + 1);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 8);
  if (v2 == 0.0 || (*(v1 + 12) & 1) == 0)
  {
    return 0;
  }

  else
  {
    return LODWORD(v2);
  }
}

uint64_t CMMsl::WorkoutRecorderALSData::makeSuper(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

void CMMsl::WorkoutRecorderAccel::~WorkoutRecorderAccel(CMMsl::WorkoutRecorderAccel *this)
{
  v2 = *(this + 1);
  *this = off_100422EC0;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::WorkoutRecorderAccel::~WorkoutRecorderAccel(this);

  operator delete();
}

void *CMMsl::WorkoutRecorderAccel::WorkoutRecorderAccel(void *this, const CMMsl::WorkoutRecorderAccel *a2)
{
  *this = off_100422EC0;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const CMMsl::WorkoutRecorderAccel *CMMsl::WorkoutRecorderAccel::operator=(const CMMsl::WorkoutRecorderAccel *a1, const CMMsl::WorkoutRecorderAccel *a2)
{
  if (a1 != a2)
  {
    CMMsl::WorkoutRecorderAccel::WorkoutRecorderAccel(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    CMMsl::WorkoutRecorderAccel::~WorkoutRecorderAccel(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::WorkoutRecorderAccel *a2, CMMsl::WorkoutRecorderAccel *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::WorkoutRecorderAccel::WorkoutRecorderAccel(void *a1, uint64_t a2)
{
  *a1 = off_100422EC0;
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
  *a1 = off_100422EC0;
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

uint64_t CMMsl::WorkoutRecorderAccel::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = off_100422EC0;
    v6[1] = v4;
    CMMsl::WorkoutRecorderAccel::~WorkoutRecorderAccel(v6);
  }

  return a1;
}

uint64_t CMMsl::WorkoutRecorderAccel::formatText(CMMsl::WorkoutRecorderAccel *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::WorkoutRecorderAccel::readFrom(CMMsl::WorkoutRecorderAccel *this, PB::Reader *a2)
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

uint64_t CMMsl::WorkoutRecorderAccel::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2, 1u);
  }

  return this;
}

CMMsl::Accel *CMMsl::WorkoutRecorderAccel::hash_value(CMMsl::WorkoutRecorderAccel *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::Accel::hash_value(result);
  }

  return result;
}

uint64_t CMMsl::WorkoutRecorderAccel::makeSuper(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

void CMMsl::WorkoutRecorderAccel800::~WorkoutRecorderAccel800(CMMsl::WorkoutRecorderAccel800 *this)
{
  v2 = *(this + 1);
  *this = off_100422EF8;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::WorkoutRecorderAccel800::~WorkoutRecorderAccel800(this);

  operator delete();
}

void *CMMsl::WorkoutRecorderAccel800::WorkoutRecorderAccel800(void *this, const CMMsl::WorkoutRecorderAccel800 *a2)
{
  *this = off_100422EF8;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const CMMsl::WorkoutRecorderAccel800 *CMMsl::WorkoutRecorderAccel800::operator=(const CMMsl::WorkoutRecorderAccel800 *a1, const CMMsl::WorkoutRecorderAccel800 *a2)
{
  if (a1 != a2)
  {
    CMMsl::WorkoutRecorderAccel800::WorkoutRecorderAccel800(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    CMMsl::WorkoutRecorderAccel800::~WorkoutRecorderAccel800(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::WorkoutRecorderAccel800 *a2, CMMsl::WorkoutRecorderAccel800 *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::WorkoutRecorderAccel800::WorkoutRecorderAccel800(void *a1, uint64_t a2)
{
  *a1 = off_100422EF8;
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
  *a1 = off_100422EF8;
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

uint64_t CMMsl::WorkoutRecorderAccel800::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = off_100422EF8;
    v6[1] = v4;
    CMMsl::WorkoutRecorderAccel800::~WorkoutRecorderAccel800(v6);
  }

  return a1;
}

uint64_t CMMsl::WorkoutRecorderAccel800::formatText(CMMsl::WorkoutRecorderAccel800 *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::WorkoutRecorderAccel800::readFrom(CMMsl::WorkoutRecorderAccel800 *this, PB::Reader *a2)
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

uint64_t CMMsl::WorkoutRecorderAccel800::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2, 1u);
  }

  return this;
}

CMMsl::Accel *CMMsl::WorkoutRecorderAccel800::hash_value(CMMsl::WorkoutRecorderAccel800 *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::Accel::hash_value(result);
  }

  return result;
}

uint64_t CMMsl::WorkoutRecorderAccel800::makeSuper(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

void CMMsl::WorkoutRecorderAccessoryDeviceMotionConfig::~WorkoutRecorderAccessoryDeviceMotionConfig(CMMsl::WorkoutRecorderAccessoryDeviceMotionConfig *this)
{
  v2 = *(this + 1);
  *this = off_100422F30;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::WorkoutRecorderAccessoryDeviceMotionConfig::~WorkoutRecorderAccessoryDeviceMotionConfig(this);

  operator delete();
}

void *CMMsl::WorkoutRecorderAccessoryDeviceMotionConfig::WorkoutRecorderAccessoryDeviceMotionConfig(void *this, const CMMsl::WorkoutRecorderAccessoryDeviceMotionConfig *a2)
{
  *this = off_100422F30;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const CMMsl::WorkoutRecorderAccessoryDeviceMotionConfig *CMMsl::WorkoutRecorderAccessoryDeviceMotionConfig::operator=(const CMMsl::WorkoutRecorderAccessoryDeviceMotionConfig *a1, const CMMsl::WorkoutRecorderAccessoryDeviceMotionConfig *a2)
{
  if (a1 != a2)
  {
    CMMsl::WorkoutRecorderAccessoryDeviceMotionConfig::WorkoutRecorderAccessoryDeviceMotionConfig(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    CMMsl::WorkoutRecorderAccessoryDeviceMotionConfig::~WorkoutRecorderAccessoryDeviceMotionConfig(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::WorkoutRecorderAccessoryDeviceMotionConfig *a2, CMMsl::WorkoutRecorderAccessoryDeviceMotionConfig *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::WorkoutRecorderAccessoryDeviceMotionConfig::WorkoutRecorderAccessoryDeviceMotionConfig(void *a1, uint64_t a2)
{
  *a1 = off_100422F30;
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
  *a1 = off_100422F30;
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

uint64_t CMMsl::WorkoutRecorderAccessoryDeviceMotionConfig::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = off_100422F30;
    v6[1] = v4;
    CMMsl::WorkoutRecorderAccessoryDeviceMotionConfig::~WorkoutRecorderAccessoryDeviceMotionConfig(v6);
  }

  return a1;
}

uint64_t CMMsl::WorkoutRecorderAccessoryDeviceMotionConfig::formatText(CMMsl::WorkoutRecorderAccessoryDeviceMotionConfig *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::WorkoutRecorderAccessoryDeviceMotionConfig::readFrom(CMMsl::WorkoutRecorderAccessoryDeviceMotionConfig *this, PB::Reader *a2)
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

uint64_t CMMsl::WorkoutRecorderAccessoryDeviceMotionConfig::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2, 1u);
  }

  return this;
}

CMMsl::AccessoryDeviceMotionConfig *CMMsl::WorkoutRecorderAccessoryDeviceMotionConfig::hash_value(CMMsl::WorkoutRecorderAccessoryDeviceMotionConfig *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::AccessoryDeviceMotionConfig::hash_value(result);
  }

  return result;
}

uint64_t CMMsl::WorkoutRecorderAccessoryDeviceMotionConfig::makeSuper(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

void CMMsl::WorkoutRecorderAudioAccessoryDeviceMotion::~WorkoutRecorderAudioAccessoryDeviceMotion(CMMsl::WorkoutRecorderAudioAccessoryDeviceMotion *this)
{
  v2 = *(this + 1);
  *this = off_100422F68;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::WorkoutRecorderAudioAccessoryDeviceMotion::~WorkoutRecorderAudioAccessoryDeviceMotion(this);

  operator delete();
}

void *CMMsl::WorkoutRecorderAudioAccessoryDeviceMotion::WorkoutRecorderAudioAccessoryDeviceMotion(void *this, const CMMsl::WorkoutRecorderAudioAccessoryDeviceMotion *a2)
{
  *this = off_100422F68;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const CMMsl::WorkoutRecorderAudioAccessoryDeviceMotion *CMMsl::WorkoutRecorderAudioAccessoryDeviceMotion::operator=(const CMMsl::WorkoutRecorderAudioAccessoryDeviceMotion *a1, const CMMsl::WorkoutRecorderAudioAccessoryDeviceMotion *a2)
{
  if (a1 != a2)
  {
    CMMsl::WorkoutRecorderAudioAccessoryDeviceMotion::WorkoutRecorderAudioAccessoryDeviceMotion(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    CMMsl::WorkoutRecorderAudioAccessoryDeviceMotion::~WorkoutRecorderAudioAccessoryDeviceMotion(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::WorkoutRecorderAudioAccessoryDeviceMotion *a2, CMMsl::WorkoutRecorderAudioAccessoryDeviceMotion *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::WorkoutRecorderAudioAccessoryDeviceMotion::WorkoutRecorderAudioAccessoryDeviceMotion(void *a1, uint64_t a2)
{
  *a1 = off_100422F68;
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
  *a1 = off_100422F68;
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

uint64_t CMMsl::WorkoutRecorderAudioAccessoryDeviceMotion::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = off_100422F68;
    v6[1] = v4;
    CMMsl::WorkoutRecorderAudioAccessoryDeviceMotion::~WorkoutRecorderAudioAccessoryDeviceMotion(v6);
  }

  return a1;
}

uint64_t CMMsl::WorkoutRecorderAudioAccessoryDeviceMotion::formatText(CMMsl::WorkoutRecorderAudioAccessoryDeviceMotion *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::WorkoutRecorderAudioAccessoryDeviceMotion::readFrom(CMMsl::WorkoutRecorderAudioAccessoryDeviceMotion *this, PB::Reader *a2)
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

uint64_t CMMsl::WorkoutRecorderAudioAccessoryDeviceMotion::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2, 1u);
  }

  return this;
}

CMMsl::AudioAccessoryDeviceMotion *CMMsl::WorkoutRecorderAudioAccessoryDeviceMotion::hash_value(CMMsl::WorkoutRecorderAudioAccessoryDeviceMotion *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::AudioAccessoryDeviceMotion::hash_value(result);
  }

  return result;
}

uint64_t CMMsl::WorkoutRecorderAudioAccessoryDeviceMotion::makeSuper(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

void CMMsl::WorkoutRecorderAveragedALSData::~WorkoutRecorderAveragedALSData(CMMsl::WorkoutRecorderAveragedALSData *this)
{
  v2 = *(this + 1);
  *this = off_100422FA0;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::WorkoutRecorderAveragedALSData::~WorkoutRecorderAveragedALSData(this);

  operator delete();
}

void *CMMsl::WorkoutRecorderAveragedALSData::WorkoutRecorderAveragedALSData(void *this, const CMMsl::WorkoutRecorderAveragedALSData *a2)
{
  *this = off_100422FA0;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const CMMsl::WorkoutRecorderAveragedALSData *CMMsl::WorkoutRecorderAveragedALSData::operator=(const CMMsl::WorkoutRecorderAveragedALSData *a1, const CMMsl::WorkoutRecorderAveragedALSData *a2)
{
  if (a1 != a2)
  {
    CMMsl::WorkoutRecorderAveragedALSData::WorkoutRecorderAveragedALSData(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    CMMsl::WorkoutRecorderAveragedALSData::~WorkoutRecorderAveragedALSData(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::WorkoutRecorderAveragedALSData *a2, CMMsl::WorkoutRecorderAveragedALSData *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::WorkoutRecorderAveragedALSData::WorkoutRecorderAveragedALSData(void *a1, uint64_t a2)
{
  *a1 = off_100422FA0;
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
  *a1 = off_100422FA0;
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

uint64_t CMMsl::WorkoutRecorderAveragedALSData::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = off_100422FA0;
    v6[1] = v4;
    CMMsl::WorkoutRecorderAveragedALSData::~WorkoutRecorderAveragedALSData(v6);
  }

  return a1;
}

uint64_t CMMsl::WorkoutRecorderAveragedALSData::formatText(CMMsl::WorkoutRecorderAveragedALSData *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::WorkoutRecorderAveragedALSData::readFrom(CMMsl::WorkoutRecorderAveragedALSData *this, PB::Reader *a2)
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

uint64_t CMMsl::WorkoutRecorderAveragedALSData::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2, 1u);
  }

  return this;
}

uint64_t CMMsl::WorkoutRecorderAveragedALSData::hash_value(CMMsl::WorkoutRecorderAveragedALSData *this)
{
  v1 = *(this + 1);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 20);
  v3 = *(v1 + 8) == 0.0 || (v2 & 1) == 0;
  v4 = *(v1 + 8);
  if (v3)
  {
    v4 = 0;
  }

  v5 = v2 & 2;
  v6 = *(v1 + 16);
  v7 = v6 == 0.0 || v5 == 0;
  v8 = LODWORD(v6);
  if (v7)
  {
    v8 = 0;
  }

  return v8 ^ v4;
}

uint64_t CMMsl::WorkoutRecorderAveragedALSData::makeSuper(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

void CMMsl::WorkoutRecorderBodyMetrics::~WorkoutRecorderBodyMetrics(CMMsl::WorkoutRecorderBodyMetrics *this)
{
  v2 = *(this + 1);
  *this = off_100422FD8;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::WorkoutRecorderBodyMetrics::~WorkoutRecorderBodyMetrics(this);

  operator delete();
}

void *CMMsl::WorkoutRecorderBodyMetrics::WorkoutRecorderBodyMetrics(void *this, const CMMsl::WorkoutRecorderBodyMetrics *a2)
{
  *this = off_100422FD8;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const CMMsl::WorkoutRecorderBodyMetrics *CMMsl::WorkoutRecorderBodyMetrics::operator=(const CMMsl::WorkoutRecorderBodyMetrics *a1, const CMMsl::WorkoutRecorderBodyMetrics *a2)
{
  if (a1 != a2)
  {
    CMMsl::WorkoutRecorderBodyMetrics::WorkoutRecorderBodyMetrics(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    CMMsl::WorkoutRecorderBodyMetrics::~WorkoutRecorderBodyMetrics(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::WorkoutRecorderBodyMetrics *a2, CMMsl::WorkoutRecorderBodyMetrics *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::WorkoutRecorderBodyMetrics::WorkoutRecorderBodyMetrics(void *a1, uint64_t a2)
{
  *a1 = off_100422FD8;
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
  *a1 = off_100422FD8;
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

uint64_t CMMsl::WorkoutRecorderBodyMetrics::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = off_100422FD8;
    v6[1] = v4;
    CMMsl::WorkoutRecorderBodyMetrics::~WorkoutRecorderBodyMetrics(v6);
  }

  return a1;
}

uint64_t CMMsl::WorkoutRecorderBodyMetrics::formatText(CMMsl::WorkoutRecorderBodyMetrics *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::WorkoutRecorderBodyMetrics::readFrom(CMMsl::WorkoutRecorderBodyMetrics *this, PB::Reader *a2)
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

uint64_t CMMsl::WorkoutRecorderBodyMetrics::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2, 1u);
  }

  return this;
}

CMMsl::BodyMetrics *CMMsl::WorkoutRecorderBodyMetrics::hash_value(CMMsl::WorkoutRecorderBodyMetrics *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::BodyMetrics::hash_value(result);
  }

  return result;
}

uint64_t CMMsl::WorkoutRecorderBodyMetrics::makeSuper(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

void CMMsl::WorkoutRecorderCompassCalibration::~WorkoutRecorderCompassCalibration(CMMsl::WorkoutRecorderCompassCalibration *this)
{
  v2 = *(this + 1);
  *this = off_100423010;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::WorkoutRecorderCompassCalibration::~WorkoutRecorderCompassCalibration(this);

  operator delete();
}

void *CMMsl::WorkoutRecorderCompassCalibration::WorkoutRecorderCompassCalibration(void *this, const CMMsl::WorkoutRecorderCompassCalibration *a2)
{
  *this = off_100423010;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const CMMsl::WorkoutRecorderCompassCalibration *CMMsl::WorkoutRecorderCompassCalibration::operator=(const CMMsl::WorkoutRecorderCompassCalibration *a1, const CMMsl::WorkoutRecorderCompassCalibration *a2)
{
  if (a1 != a2)
  {
    CMMsl::WorkoutRecorderCompassCalibration::WorkoutRecorderCompassCalibration(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    CMMsl::WorkoutRecorderCompassCalibration::~WorkoutRecorderCompassCalibration(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::WorkoutRecorderCompassCalibration *a2, CMMsl::WorkoutRecorderCompassCalibration *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::WorkoutRecorderCompassCalibration::WorkoutRecorderCompassCalibration(void *a1, uint64_t a2)
{
  *a1 = off_100423010;
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
  *a1 = off_100423010;
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

uint64_t CMMsl::WorkoutRecorderCompassCalibration::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = off_100423010;
    v6[1] = v4;
    CMMsl::WorkoutRecorderCompassCalibration::~WorkoutRecorderCompassCalibration(v6);
  }

  return a1;
}

uint64_t CMMsl::WorkoutRecorderCompassCalibration::formatText(CMMsl::WorkoutRecorderCompassCalibration *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::WorkoutRecorderCompassCalibration::readFrom(CMMsl::WorkoutRecorderCompassCalibration *this, PB::Reader *a2)
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

uint64_t CMMsl::WorkoutRecorderCompassCalibration::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2, 1u);
  }

  return this;
}

CMMsl::CompassCalibration *CMMsl::WorkoutRecorderCompassCalibration::hash_value(CMMsl::WorkoutRecorderCompassCalibration *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::CompassCalibration::hash_value(result);
  }

  return result;
}

uint64_t CMMsl::WorkoutRecorderCompassCalibration::makeSuper(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

void CMMsl::WorkoutRecorderElevation::~WorkoutRecorderElevation(CMMsl::WorkoutRecorderElevation *this)
{
  v2 = *(this + 1);
  *this = off_100423048;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::WorkoutRecorderElevation::~WorkoutRecorderElevation(this);

  operator delete();
}

void *CMMsl::WorkoutRecorderElevation::WorkoutRecorderElevation(void *this, const CMMsl::WorkoutRecorderElevation *a2)
{
  *this = off_100423048;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const CMMsl::WorkoutRecorderElevation *CMMsl::WorkoutRecorderElevation::operator=(const CMMsl::WorkoutRecorderElevation *a1, const CMMsl::WorkoutRecorderElevation *a2)
{
  if (a1 != a2)
  {
    CMMsl::WorkoutRecorderElevation::WorkoutRecorderElevation(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    CMMsl::WorkoutRecorderElevation::~WorkoutRecorderElevation(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::WorkoutRecorderElevation *a2, CMMsl::WorkoutRecorderElevation *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::WorkoutRecorderElevation::WorkoutRecorderElevation(void *a1, uint64_t a2)
{
  *a1 = off_100423048;
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
  *a1 = off_100423048;
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

uint64_t CMMsl::WorkoutRecorderElevation::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = off_100423048;
    v6[1] = v4;
    CMMsl::WorkoutRecorderElevation::~WorkoutRecorderElevation(v6);
  }

  return a1;
}

uint64_t CMMsl::WorkoutRecorderElevation::formatText(CMMsl::WorkoutRecorderElevation *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::WorkoutRecorderElevation::readFrom(CMMsl::WorkoutRecorderElevation *this, PB::Reader *a2)
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

uint64_t CMMsl::WorkoutRecorderElevation::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2, 1u);
  }

  return this;
}

CMMsl::ElevationChange *CMMsl::WorkoutRecorderElevation::hash_value(CMMsl::WorkoutRecorderElevation *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::ElevationChange::hash_value(result);
  }

  return result;
}

uint64_t CMMsl::WorkoutRecorderElevation::makeSuper(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

void CMMsl::WorkoutRecorderFaceCovered::~WorkoutRecorderFaceCovered(CMMsl::WorkoutRecorderFaceCovered *this)
{
  v2 = *(this + 1);
  *this = off_100423080;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::WorkoutRecorderFaceCovered::~WorkoutRecorderFaceCovered(this);

  operator delete();
}

void *CMMsl::WorkoutRecorderFaceCovered::WorkoutRecorderFaceCovered(void *this, const CMMsl::WorkoutRecorderFaceCovered *a2)
{
  *this = off_100423080;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const CMMsl::WorkoutRecorderFaceCovered *CMMsl::WorkoutRecorderFaceCovered::operator=(const CMMsl::WorkoutRecorderFaceCovered *a1, const CMMsl::WorkoutRecorderFaceCovered *a2)
{
  if (a1 != a2)
  {
    CMMsl::WorkoutRecorderFaceCovered::WorkoutRecorderFaceCovered(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    CMMsl::WorkoutRecorderFaceCovered::~WorkoutRecorderFaceCovered(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::WorkoutRecorderFaceCovered *a2, CMMsl::WorkoutRecorderFaceCovered *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::WorkoutRecorderFaceCovered::WorkoutRecorderFaceCovered(void *a1, uint64_t a2)
{
  *a1 = off_100423080;
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
  *a1 = off_100423080;
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

uint64_t CMMsl::WorkoutRecorderFaceCovered::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = off_100423080;
    v6[1] = v4;
    CMMsl::WorkoutRecorderFaceCovered::~WorkoutRecorderFaceCovered(v6);
  }

  return a1;
}

uint64_t CMMsl::WorkoutRecorderFaceCovered::formatText(CMMsl::WorkoutRecorderFaceCovered *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::WorkoutRecorderFaceCovered::readFrom(CMMsl::WorkoutRecorderFaceCovered *this, PB::Reader *a2)
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

uint64_t CMMsl::WorkoutRecorderFaceCovered::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2, 1u);
  }

  return this;
}

uint64_t CMMsl::WorkoutRecorderFaceCovered::hash_value(CMMsl::WorkoutRecorderFaceCovered *this)
{
  v1 = *(this + 1);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 20);
  v3 = *(v1 + 8) == 0.0 || (v2 & 1) == 0;
  v4 = *(v1 + 8);
  if (v3)
  {
    v4 = 0;
  }

  return v4 ^ (*(v1 + 16) & (v2 << 30 >> 31));
}

uint64_t CMMsl::WorkoutRecorderFaceCovered::makeSuper(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

void CMMsl::WorkoutRecorderFitnessMachineData::~WorkoutRecorderFitnessMachineData(CMMsl::WorkoutRecorderFitnessMachineData *this)
{
  v2 = *(this + 1);
  *this = off_1004230B8;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::WorkoutRecorderFitnessMachineData::~WorkoutRecorderFitnessMachineData(this);

  operator delete();
}

void *CMMsl::WorkoutRecorderFitnessMachineData::WorkoutRecorderFitnessMachineData(void *this, const CMMsl::WorkoutRecorderFitnessMachineData *a2)
{
  *this = off_1004230B8;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const CMMsl::WorkoutRecorderFitnessMachineData *CMMsl::WorkoutRecorderFitnessMachineData::operator=(const CMMsl::WorkoutRecorderFitnessMachineData *a1, const CMMsl::WorkoutRecorderFitnessMachineData *a2)
{
  if (a1 != a2)
  {
    CMMsl::WorkoutRecorderFitnessMachineData::WorkoutRecorderFitnessMachineData(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    CMMsl::WorkoutRecorderFitnessMachineData::~WorkoutRecorderFitnessMachineData(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::WorkoutRecorderFitnessMachineData *a2, CMMsl::WorkoutRecorderFitnessMachineData *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::WorkoutRecorderFitnessMachineData::WorkoutRecorderFitnessMachineData(void *a1, uint64_t a2)
{
  *a1 = off_1004230B8;
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
  *a1 = off_1004230B8;
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

uint64_t CMMsl::WorkoutRecorderFitnessMachineData::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = off_1004230B8;
    v6[1] = v4;
    CMMsl::WorkoutRecorderFitnessMachineData::~WorkoutRecorderFitnessMachineData(v6);
  }

  return a1;
}

uint64_t CMMsl::WorkoutRecorderFitnessMachineData::formatText(CMMsl::WorkoutRecorderFitnessMachineData *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::WorkoutRecorderFitnessMachineData::readFrom(CMMsl::WorkoutRecorderFitnessMachineData *this, PB::Reader *a2)
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

uint64_t CMMsl::WorkoutRecorderFitnessMachineData::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2, 1u);
  }

  return this;
}

CMMsl::FitnessMachineData *CMMsl::WorkoutRecorderFitnessMachineData::hash_value(CMMsl::WorkoutRecorderFitnessMachineData *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::FitnessMachineData::hash_value(result);
  }

  return result;
}

uint64_t CMMsl::WorkoutRecorderFitnessMachineData::makeSuper(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

void CMMsl::WorkoutRecorderHealthKitInfo::~WorkoutRecorderHealthKitInfo(CMMsl::WorkoutRecorderHealthKitInfo *this)
{
  PB::Base::~Base(this);

  operator delete();
}

double CMMsl::WorkoutRecorderHealthKitInfo::WorkoutRecorderHealthKitInfo(CMMsl::WorkoutRecorderHealthKitInfo *this, const CMMsl::WorkoutRecorderHealthKitInfo *a2)
{
  *this = off_1004230F0;
  *(this + 7) = 0;
  v2 = *(a2 + 28);
  if ((v2 & 4) != 0)
  {
    v4 = *(a2 + 6);
    v3 = 4;
    *(this + 28) = 4;
    *(this + 6) = v4;
    v2 = *(a2 + 28);
    if ((v2 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if (*(a2 + 28))
  {
LABEL_5:
    result = *(a2 + 1);
    v3 |= 1u;
    *(this + 28) = v3;
    *(this + 1) = result;
    v2 = *(a2 + 28);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    result = *(a2 + 2);
    *(this + 28) = v3 | 2;
    *(this + 2) = result;
  }

  return result;
}

uint64_t CMMsl::WorkoutRecorderHealthKitInfo::operator=(uint64_t a1, const CMMsl::WorkoutRecorderHealthKitInfo *a2)
{
  if (a1 != a2)
  {
    CMMsl::WorkoutRecorderHealthKitInfo::WorkoutRecorderHealthKitInfo(&v6, a2);
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

double CMMsl::swap(CMMsl *this, CMMsl::WorkoutRecorderHealthKitInfo *a2, CMMsl::WorkoutRecorderHealthKitInfo *a3)
{
  v3 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v3;
  v4 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v4;
  v5 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v5;
  result = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = result;
  return result;
}

double CMMsl::WorkoutRecorderHealthKitInfo::WorkoutRecorderHealthKitInfo(uint64_t a1, uint64_t a2)
{
  *a1 = off_1004230F0;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

{
  *a1 = off_1004230F0;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

uint64_t CMMsl::WorkoutRecorderHealthKitInfo::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v7 = off_1004230F0;
    v3 = *(a2 + 8);
    v4 = *(a2 + 24);
    *(a2 + 28) = 0;
    v9 = *(a1 + 24);
    v5 = *(a1 + 8);
    *(a1 + 24) = v4;
    *(a1 + 8) = v3;
    v8 = v5;
    PB::Base::~Base(&v7);
  }

  return a1;
}

uint64_t CMMsl::WorkoutRecorderHealthKitInfo::formatText(CMMsl::WorkoutRecorderHealthKitInfo *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 28);
  if (v5)
  {
    PB::TextFormatter::format(a2, "restingHeartRate", *(this + 1));
    v5 = *(this + 28);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(this + 28) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "walkingHeartRateAverage", *(this + 2));
  if ((*(this + 28) & 4) != 0)
  {
LABEL_4:
    PB::TextFormatter::format(a2, "workoutActivityType", *(this + 6));
  }

LABEL_5:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::WorkoutRecorderHealthKitInfo::readFrom(CMMsl::WorkoutRecorderHealthKitInfo *this, PB::Reader *a2)
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
            goto LABEL_59;
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
        goto LABEL_59;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        break;
      }

      if (v22 == 2)
      {
        *(this + 28) |= 1u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_37;
        }

        *(this + 1) = *(*a2 + v2);
LABEL_49:
        v2 = *(a2 + 1) + 8;
        *(a2 + 1) = v2;
        goto LABEL_55;
      }

      if (v22 == 1)
      {
        *(this + 28) |= 4u;
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
              goto LABEL_54;
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
              goto LABEL_53;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v27) = 0;
          }

LABEL_53:
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

LABEL_54:
        *(this + 6) = v27;
      }

      else
      {
        if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
        {
          v38 = 0;
          return v38 & 1;
        }

        v2 = *(a2 + 1);
      }

LABEL_55:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_59;
      }
    }

    *(this + 28) |= 2u;
    v2 = *(a2 + 1);
    if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
    {
LABEL_37:
      *(a2 + 24) = 1;
      goto LABEL_55;
    }

    *(this + 2) = *(*a2 + v2);
    goto LABEL_49;
  }

LABEL_59:
  v38 = v4 ^ 1;
  return v38 & 1;
}

uint64_t CMMsl::WorkoutRecorderHealthKitInfo::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 28);
  if ((v4 & 4) == 0)
  {
    if ((*(this + 28) & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = PB::Writer::write(a2, *(v3 + 8), 2u);
    if ((*(v3 + 28) & 2) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = PB::Writer::writeVarInt(a2, *(this + 24), 1u);
  v4 = *(v3 + 28);
  if (v4)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v4 & 2) == 0)
  {
    return this;
  }

LABEL_7:
  v5 = *(v3 + 16);

  return PB::Writer::write(a2, v5, 3u);
}

uint64_t CMMsl::WorkoutRecorderHealthKitInfo::hash_value(CMMsl::WorkoutRecorderHealthKitInfo *this)
{
  if ((*(this + 28) & 4) != 0)
  {
    v1 = *(this + 6);
    if (*(this + 28))
    {
LABEL_3:
      v2 = *(this + 1);
      if (v2 == 0.0)
      {
        v2 = 0.0;
      }

      if ((*(this + 28) & 2) != 0)
      {
        goto LABEL_6;
      }

LABEL_11:
      v3 = 0.0;
      return *&v2 ^ v1 ^ *&v3;
    }
  }

  else
  {
    v1 = 0;
    if (*(this + 28))
    {
      goto LABEL_3;
    }
  }

  v2 = 0.0;
  if ((*(this + 28) & 2) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v3 = *(this + 2);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  return *&v2 ^ v1 ^ *&v3;
}

void CMMsl::WorkoutRecorderHeartRate::~WorkoutRecorderHeartRate(CMMsl::WorkoutRecorderHeartRate *this)
{
  v2 = *(this + 1);
  *this = off_100423128;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::WorkoutRecorderHeartRate::~WorkoutRecorderHeartRate(this);

  operator delete();
}

void *CMMsl::WorkoutRecorderHeartRate::WorkoutRecorderHeartRate(void *this, const CMMsl::WorkoutRecorderHeartRate *a2)
{
  *this = off_100423128;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const CMMsl::WorkoutRecorderHeartRate *CMMsl::WorkoutRecorderHeartRate::operator=(const CMMsl::WorkoutRecorderHeartRate *a1, const CMMsl::WorkoutRecorderHeartRate *a2)
{
  if (a1 != a2)
  {
    CMMsl::WorkoutRecorderHeartRate::WorkoutRecorderHeartRate(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    CMMsl::WorkoutRecorderHeartRate::~WorkoutRecorderHeartRate(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::WorkoutRecorderHeartRate *a2, CMMsl::WorkoutRecorderHeartRate *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::WorkoutRecorderHeartRate::WorkoutRecorderHeartRate(void *a1, uint64_t a2)
{
  *a1 = off_100423128;
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
  *a1 = off_100423128;
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

uint64_t CMMsl::WorkoutRecorderHeartRate::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = off_100423128;
    v6[1] = v4;
    CMMsl::WorkoutRecorderHeartRate::~WorkoutRecorderHeartRate(v6);
  }

  return a1;
}

uint64_t CMMsl::WorkoutRecorderHeartRate::formatText(CMMsl::WorkoutRecorderHeartRate *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::WorkoutRecorderHeartRate::readFrom(CMMsl::WorkoutRecorderHeartRate *this, PB::Reader *a2)
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

uint64_t CMMsl::WorkoutRecorderHeartRate::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2, 1u);
  }

  return this;
}

CMMsl::OnsetHeartRateData *CMMsl::WorkoutRecorderHeartRate::hash_value(CMMsl::WorkoutRecorderHeartRate *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::OnsetHeartRateData::hash_value(result);
  }

  return result;
}

uint64_t CMMsl::WorkoutRecorderHeartRate::makeSuper(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

void CMMsl::WorkoutRecorderHeartRateAccessory::~WorkoutRecorderHeartRateAccessory(CMMsl::WorkoutRecorderHeartRateAccessory *this)
{
  v2 = *(this + 1);
  *this = off_100423160;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::WorkoutRecorderHeartRateAccessory::~WorkoutRecorderHeartRateAccessory(this);

  operator delete();
}

void *CMMsl::WorkoutRecorderHeartRateAccessory::WorkoutRecorderHeartRateAccessory(void *this, const CMMsl::WorkoutRecorderHeartRateAccessory *a2)
{
  *this = off_100423160;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const CMMsl::WorkoutRecorderHeartRateAccessory *CMMsl::WorkoutRecorderHeartRateAccessory::operator=(const CMMsl::WorkoutRecorderHeartRateAccessory *a1, const CMMsl::WorkoutRecorderHeartRateAccessory *a2)
{
  if (a1 != a2)
  {
    CMMsl::WorkoutRecorderHeartRateAccessory::WorkoutRecorderHeartRateAccessory(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    CMMsl::WorkoutRecorderHeartRateAccessory::~WorkoutRecorderHeartRateAccessory(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::WorkoutRecorderHeartRateAccessory *a2, CMMsl::WorkoutRecorderHeartRateAccessory *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::WorkoutRecorderHeartRateAccessory::WorkoutRecorderHeartRateAccessory(void *a1, uint64_t a2)
{
  *a1 = off_100423160;
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
  *a1 = off_100423160;
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

uint64_t CMMsl::WorkoutRecorderHeartRateAccessory::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = off_100423160;
    v6[1] = v4;
    CMMsl::WorkoutRecorderHeartRateAccessory::~WorkoutRecorderHeartRateAccessory(v6);
  }

  return a1;
}

uint64_t CMMsl::WorkoutRecorderHeartRateAccessory::formatText(CMMsl::WorkoutRecorderHeartRateAccessory *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::WorkoutRecorderHeartRateAccessory::readFrom(CMMsl::WorkoutRecorderHeartRateAccessory *this, PB::Reader *a2)
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

uint64_t CMMsl::WorkoutRecorderHeartRateAccessory::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2, 1u);
  }

  return this;
}

CMMsl::AccessoryHeartRate *CMMsl::WorkoutRecorderHeartRateAccessory::hash_value(CMMsl::WorkoutRecorderHeartRateAccessory *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::AccessoryHeartRate::hash_value(result);
  }

  return result;
}

uint64_t CMMsl::WorkoutRecorderHeartRateAccessory::makeSuper(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

void CMMsl::WorkoutRecorderHeartRateSourceDevice::~WorkoutRecorderHeartRateSourceDevice(CMMsl::WorkoutRecorderHeartRateSourceDevice *this)
{
  v2 = *(this + 1);
  *this = off_100423198;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::WorkoutRecorderHeartRateSourceDevice::~WorkoutRecorderHeartRateSourceDevice(this);

  operator delete();
}

void *CMMsl::WorkoutRecorderHeartRateSourceDevice::WorkoutRecorderHeartRateSourceDevice(void *this, const CMMsl::WorkoutRecorderHeartRateSourceDevice *a2)
{
  *this = off_100423198;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const CMMsl::WorkoutRecorderHeartRateSourceDevice *CMMsl::WorkoutRecorderHeartRateSourceDevice::operator=(const CMMsl::WorkoutRecorderHeartRateSourceDevice *a1, const CMMsl::WorkoutRecorderHeartRateSourceDevice *a2)
{
  if (a1 != a2)
  {
    CMMsl::WorkoutRecorderHeartRateSourceDevice::WorkoutRecorderHeartRateSourceDevice(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    CMMsl::WorkoutRecorderHeartRateSourceDevice::~WorkoutRecorderHeartRateSourceDevice(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::WorkoutRecorderHeartRateSourceDevice *a2, CMMsl::WorkoutRecorderHeartRateSourceDevice *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::WorkoutRecorderHeartRateSourceDevice::WorkoutRecorderHeartRateSourceDevice(void *a1, uint64_t a2)
{
  *a1 = off_100423198;
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
  *a1 = off_100423198;
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

uint64_t CMMsl::WorkoutRecorderHeartRateSourceDevice::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = off_100423198;
    v6[1] = v4;
    CMMsl::WorkoutRecorderHeartRateSourceDevice::~WorkoutRecorderHeartRateSourceDevice(v6);
  }

  return a1;
}

uint64_t CMMsl::WorkoutRecorderHeartRateSourceDevice::formatText(CMMsl::WorkoutRecorderHeartRateSourceDevice *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::WorkoutRecorderHeartRateSourceDevice::readFrom(CMMsl::WorkoutRecorderHeartRateSourceDevice *this, PB::Reader *a2)
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

uint64_t CMMsl::WorkoutRecorderHeartRateSourceDevice::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2, 1u);
  }

  return this;
}

CMMsl::HeartRateSourceDevice *CMMsl::WorkoutRecorderHeartRateSourceDevice::hash_value(CMMsl::WorkoutRecorderHeartRateSourceDevice *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::HeartRateSourceDevice::hash_value(result);
  }

  return result;
}

uint64_t CMMsl::WorkoutRecorderHeartRateSourceDevice::makeSuper(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

void CMMsl::WorkoutRecorderHighFrequencyHeartRateWatch::~WorkoutRecorderHighFrequencyHeartRateWatch(CMMsl::WorkoutRecorderHighFrequencyHeartRateWatch *this)
{
  v2 = *(this + 1);
  *this = off_1004231D0;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::WorkoutRecorderHighFrequencyHeartRateWatch::~WorkoutRecorderHighFrequencyHeartRateWatch(this);

  operator delete();
}

void *CMMsl::WorkoutRecorderHighFrequencyHeartRateWatch::WorkoutRecorderHighFrequencyHeartRateWatch(void *this, const CMMsl::WorkoutRecorderHighFrequencyHeartRateWatch *a2)
{
  *this = off_1004231D0;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const CMMsl::WorkoutRecorderHighFrequencyHeartRateWatch *CMMsl::WorkoutRecorderHighFrequencyHeartRateWatch::operator=(const CMMsl::WorkoutRecorderHighFrequencyHeartRateWatch *a1, const CMMsl::WorkoutRecorderHighFrequencyHeartRateWatch *a2)
{
  if (a1 != a2)
  {
    CMMsl::WorkoutRecorderHighFrequencyHeartRateWatch::WorkoutRecorderHighFrequencyHeartRateWatch(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    CMMsl::WorkoutRecorderHighFrequencyHeartRateWatch::~WorkoutRecorderHighFrequencyHeartRateWatch(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::WorkoutRecorderHighFrequencyHeartRateWatch *a2, CMMsl::WorkoutRecorderHighFrequencyHeartRateWatch *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::WorkoutRecorderHighFrequencyHeartRateWatch::WorkoutRecorderHighFrequencyHeartRateWatch(void *a1, uint64_t a2)
{
  *a1 = off_1004231D0;
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
  *a1 = off_1004231D0;
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

uint64_t CMMsl::WorkoutRecorderHighFrequencyHeartRateWatch::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = off_1004231D0;
    v6[1] = v4;
    CMMsl::WorkoutRecorderHighFrequencyHeartRateWatch::~WorkoutRecorderHighFrequencyHeartRateWatch(v6);
  }

  return a1;
}

uint64_t CMMsl::WorkoutRecorderHighFrequencyHeartRateWatch::formatText(CMMsl::WorkoutRecorderHighFrequencyHeartRateWatch *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::WorkoutRecorderHighFrequencyHeartRateWatch::readFrom(CMMsl::WorkoutRecorderHighFrequencyHeartRateWatch *this, PB::Reader *a2)
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

uint64_t CMMsl::WorkoutRecorderHighFrequencyHeartRateWatch::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2, 1u);
  }

  return this;
}

CMMsl::OnsetHeartRateData *CMMsl::WorkoutRecorderHighFrequencyHeartRateWatch::hash_value(CMMsl::WorkoutRecorderHighFrequencyHeartRateWatch *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::OnsetHeartRateData::hash_value(result);
  }

  return result;
}

uint64_t CMMsl::WorkoutRecorderHighFrequencyHeartRateWatch::makeSuper(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

void CMMsl::WorkoutRecorderMagnetometer::~WorkoutRecorderMagnetometer(CMMsl::WorkoutRecorderMagnetometer *this)
{
  v2 = *(this + 1);
  *this = off_100423208;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::WorkoutRecorderMagnetometer::~WorkoutRecorderMagnetometer(this);

  operator delete();
}

void *CMMsl::WorkoutRecorderMagnetometer::WorkoutRecorderMagnetometer(void *this, const CMMsl::WorkoutRecorderMagnetometer *a2)
{
  *this = off_100423208;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const CMMsl::WorkoutRecorderMagnetometer *CMMsl::WorkoutRecorderMagnetometer::operator=(const CMMsl::WorkoutRecorderMagnetometer *a1, const CMMsl::WorkoutRecorderMagnetometer *a2)
{
  if (a1 != a2)
  {
    CMMsl::WorkoutRecorderMagnetometer::WorkoutRecorderMagnetometer(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    CMMsl::WorkoutRecorderMagnetometer::~WorkoutRecorderMagnetometer(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::WorkoutRecorderMagnetometer *a2, CMMsl::WorkoutRecorderMagnetometer *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::WorkoutRecorderMagnetometer::WorkoutRecorderMagnetometer(void *a1, uint64_t a2)
{
  *a1 = off_100423208;
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
  *a1 = off_100423208;
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

uint64_t CMMsl::WorkoutRecorderMagnetometer::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = off_100423208;
    v6[1] = v4;
    CMMsl::WorkoutRecorderMagnetometer::~WorkoutRecorderMagnetometer(v6);
  }

  return a1;
}

uint64_t CMMsl::WorkoutRecorderMagnetometer::formatText(CMMsl::WorkoutRecorderMagnetometer *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::WorkoutRecorderMagnetometer::readFrom(CMMsl::WorkoutRecorderMagnetometer *this, PB::Reader *a2)
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

uint64_t CMMsl::WorkoutRecorderMagnetometer::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2, 1u);
  }

  return this;
}

CMMsl::Magnetometer *CMMsl::WorkoutRecorderMagnetometer::hash_value(CMMsl::WorkoutRecorderMagnetometer *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::Magnetometer::hash_value(result);
  }

  return result;
}

uint64_t CMMsl::WorkoutRecorderMagnetometer::makeSuper(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

void CMMsl::WorkoutRecorderOdometer::~WorkoutRecorderOdometer(CMMsl::WorkoutRecorderOdometer *this)
{
  v2 = *(this + 1);
  *this = off_100423240;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::WorkoutRecorderOdometer::~WorkoutRecorderOdometer(this);

  operator delete();
}

void *CMMsl::WorkoutRecorderOdometer::WorkoutRecorderOdometer(void *this, const CMMsl::WorkoutRecorderOdometer *a2)
{
  *this = off_100423240;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const CMMsl::WorkoutRecorderOdometer *CMMsl::WorkoutRecorderOdometer::operator=(const CMMsl::WorkoutRecorderOdometer *a1, const CMMsl::WorkoutRecorderOdometer *a2)
{
  if (a1 != a2)
  {
    CMMsl::WorkoutRecorderOdometer::WorkoutRecorderOdometer(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    CMMsl::WorkoutRecorderOdometer::~WorkoutRecorderOdometer(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::WorkoutRecorderOdometer *a2, CMMsl::WorkoutRecorderOdometer *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::WorkoutRecorderOdometer::WorkoutRecorderOdometer(void *a1, uint64_t a2)
{
  *a1 = off_100423240;
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
  *a1 = off_100423240;
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

uint64_t CMMsl::WorkoutRecorderOdometer::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = off_100423240;
    v6[1] = v4;
    CMMsl::WorkoutRecorderOdometer::~WorkoutRecorderOdometer(v6);
  }

  return a1;
}

uint64_t CMMsl::WorkoutRecorderOdometer::formatText(CMMsl::WorkoutRecorderOdometer *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::WorkoutRecorderOdometer::readFrom(CMMsl::WorkoutRecorderOdometer *this, PB::Reader *a2)
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

uint64_t CMMsl::WorkoutRecorderOdometer::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2, 1u);
  }

  return this;
}

CMMsl::OdometerWithAltitude *CMMsl::WorkoutRecorderOdometer::hash_value(CMMsl::WorkoutRecorderOdometer *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::OdometerWithAltitude::hash_value(result);
  }

  return result;
}

uint64_t CMMsl::WorkoutRecorderOdometer::makeSuper(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

void CMMsl::WorkoutRecorderPressure::~WorkoutRecorderPressure(CMMsl::WorkoutRecorderPressure *this)
{
  v2 = *(this + 1);
  *this = off_100423278;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::WorkoutRecorderPressure::~WorkoutRecorderPressure(this);

  operator delete();
}

void *CMMsl::WorkoutRecorderPressure::WorkoutRecorderPressure(void *this, const CMMsl::WorkoutRecorderPressure *a2)
{
  *this = off_100423278;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const CMMsl::WorkoutRecorderPressure *CMMsl::WorkoutRecorderPressure::operator=(const CMMsl::WorkoutRecorderPressure *a1, const CMMsl::WorkoutRecorderPressure *a2)
{
  if (a1 != a2)
  {
    CMMsl::WorkoutRecorderPressure::WorkoutRecorderPressure(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    CMMsl::WorkoutRecorderPressure::~WorkoutRecorderPressure(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::WorkoutRecorderPressure *a2, CMMsl::WorkoutRecorderPressure *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::WorkoutRecorderPressure::WorkoutRecorderPressure(void *a1, uint64_t a2)
{
  *a1 = off_100423278;
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
  *a1 = off_100423278;
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

uint64_t CMMsl::WorkoutRecorderPressure::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = off_100423278;
    v6[1] = v4;
    CMMsl::WorkoutRecorderPressure::~WorkoutRecorderPressure(v6);
  }

  return a1;
}

uint64_t CMMsl::WorkoutRecorderPressure::formatText(CMMsl::WorkoutRecorderPressure *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::WorkoutRecorderPressure::readFrom(CMMsl::WorkoutRecorderPressure *this, PB::Reader *a2)
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