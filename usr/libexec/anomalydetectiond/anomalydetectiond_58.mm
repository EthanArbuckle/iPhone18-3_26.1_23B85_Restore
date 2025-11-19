uint64_t CMMsl::SafetyCompanionStatus::SafetyCompanionStatus(uint64_t result, uint64_t a2)
{
  *result = off_100421B48;
  *(result + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  *(result + 8) = *(a2 + 8);
  *(result + 16) = *(a2 + 16);
  return result;
}

{
  *result = off_100421B48;
  *(result + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  *(result + 8) = *(a2 + 8);
  *(result + 16) = *(a2 + 16);
  return result;
}

uint64_t CMMsl::SafetyCompanionStatus::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 16);
    v3 = *(a2 + 20);
    *(a2 + 20) = 0;
    v5 = *(a1 + 8);
    *(a1 + 8) = *(a2 + 8);
    v8[0] = off_100421B48;
    v8[1] = v5;
    LODWORD(v5) = *(a1 + 16);
    v6 = *(a1 + 20);
    *(a1 + 16) = v4;
    *(a1 + 20) = v3;
    v9 = v5;
    v10 = v6;
    PB::Base::~Base(v8);
  }

  return a1;
}

uint64_t CMMsl::SafetyCompanionStatus::formatText(CMMsl::SafetyCompanionStatus *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 20);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "code", *(this + 4));
    v5 = *(this + 20);
  }

  if (v5)
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::SafetyCompanionStatus::readFrom(CMMsl::SafetyCompanionStatus *this, PB::Reader *a2)
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
        *(this + 20) |= 2u;
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
        *(this + 4) = v36;
      }

      else if (v23 == 1)
      {
        *(this + 20) |= 1u;
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
              v28 = 0;
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
              v28 = 0;
              goto LABEL_63;
            }
          }

          if (*(a2 + 24))
          {
            v28 = 0;
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
              v28 = 0;
              break;
            }
          }
        }

LABEL_64:
        *(this + 1) = v28;
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

uint64_t CMMsl::SafetyCompanionStatus::writeTo(uint64_t this, PB::Writer *a2)
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

    return PB::Writer::writeVarInt(a2, v5, 2u);
  }

  return this;
}

uint64_t CMMsl::SafetyCompanionStatus::hash_value(CMMsl::SafetyCompanionStatus *this)
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
  v2 = *(this + 4);
  return v2 ^ v1;
}

void CMMsl::SafetyHertzSample::~SafetyHertzSample(CMMsl::SafetyHertzSample *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::SafetyHertzSample::SafetyHertzSample(uint64_t this, const CMMsl::SafetyHertzSample *a2)
{
  *this = off_100421B80;
  *(this + 28) = 0;
  v2 = *(a2 + 28);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 28) = 1;
    *(this + 8) = v4;
    v2 = *(a2 + 28);
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 28) & 4) != 0)
  {
LABEL_5:
    v5 = *(a2 + 5);
    v3 |= 4u;
    *(this + 28) = v3;
    *(this + 20) = v5;
    v2 = *(a2 + 28);
  }

LABEL_6:
  if ((v2 & 2) == 0)
  {
    if ((v2 & 8) == 0)
    {
      return this;
    }

LABEL_10:
    v7 = *(a2 + 24);
    *(this + 28) = v3 | 8;
    *(this + 24) = v7;
    return this;
  }

  v6 = *(a2 + 4);
  v3 |= 2u;
  *(this + 28) = v3;
  *(this + 16) = v6;
  if ((*(a2 + 28) & 8) != 0)
  {
    goto LABEL_10;
  }

  return this;
}

uint64_t CMMsl::SafetyHertzSample::operator=(uint64_t a1, const CMMsl::SafetyHertzSample *a2)
{
  if (a1 != a2)
  {
    CMMsl::SafetyHertzSample::SafetyHertzSample(&v7, a2);
    v3 = *(a1 + 28);
    *(a1 + 28) = v11;
    v11 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v4;
    v5 = *(a1 + 16);
    *(a1 + 16) = v9;
    v9 = v5;
    LOBYTE(v4) = *(a1 + 24);
    *(a1 + 24) = v10;
    v10 = v4;
    PB::Base::~Base(&v7);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::SafetyHertzSample *a2, CMMsl::SafetyHertzSample *a3)
{
  v3 = *(this + 28);
  *(this + 28) = *(a2 + 7);
  *(a2 + 7) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 20);
  *(this + 20) = *(a2 + 5);
  *(a2 + 5) = v4;
  LODWORD(v4) = *(this + 16);
  *(this + 16) = *(a2 + 4);
  *(a2 + 4) = v4;
  LOBYTE(v4) = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v4;
  return this;
}

uint64_t CMMsl::SafetyHertzSample::SafetyHertzSample(uint64_t result, uint64_t a2)
{
  *result = off_100421B80;
  *(result + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(result + 8) = *(a2 + 8);
  *(result + 20) = *(a2 + 20);
  *(result + 16) = *(a2 + 16);
  *(result + 24) = *(a2 + 24);
  return result;
}

{
  *result = off_100421B80;
  *(result + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(result + 8) = *(a2 + 8);
  *(result + 20) = *(a2 + 20);
  *(result + 16) = *(a2 + 16);
  *(result + 24) = *(a2 + 24);
  return result;
}

uint64_t CMMsl::SafetyHertzSample::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 28);
    *(a2 + 28) = 0;
    v4 = *(a2 + 8);
    v11 = *(a1 + 28);
    v5 = *(a1 + 8);
    *(a1 + 8) = v4;
    LOBYTE(v4) = *(a2 + 24);
    v9[0] = off_100421B80;
    v9[1] = v5;
    v6 = *(a1 + 16);
    v7 = *(a2 + 16);
    *(a1 + 28) = v3;
    *(a1 + 16) = v7;
    v9[2] = v6;
    LOBYTE(v3) = *(a1 + 24);
    *(a1 + 24) = v4;
    v10 = v3;
    PB::Base::~Base(v9);
  }

  return a1;
}

uint64_t CMMsl::SafetyHertzSample::formatText(CMMsl::SafetyHertzSample *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 28);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "dramDurationMs", *(this + 4));
    v5 = *(this + 28);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(this + 28) & 8) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "hapticsOn", *(this + 24));
  v5 = *(this + 28);
  if ((v5 & 1) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  if ((*(this + 28) & 4) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(a2, "vehicularFlags", *(this + 5));
  }

LABEL_6:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::SafetyHertzSample::readFrom(CMMsl::SafetyHertzSample *this, PB::Reader *a2)
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
            goto LABEL_101;
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
      if ((v10 >> 3) > 2)
      {
        if (v23 == 3)
        {
          *(this + 28) |= 2u;
          v42 = *(a2 + 1);
          v2 = *(a2 + 2);
          v43 = *a2;
          if (v42 > 0xFFFFFFFFFFFFFFF5 || v42 + 10 > v2)
          {
            v64 = 0;
            v65 = 0;
            v46 = 0;
            if (v2 <= v42)
            {
              v3 = *(a2 + 1);
            }

            else
            {
              v3 = *(a2 + 2);
            }

            v66 = v3 - v42;
            v67 = (v43 + v42);
            v68 = v42 + 1;
            while (1)
            {
              if (!v66)
              {
                LODWORD(v46) = 0;
                *(a2 + 24) = 1;
                goto LABEL_96;
              }

              v69 = v68;
              v70 = *v67;
              *(a2 + 1) = v69;
              v46 |= (v70 & 0x7F) << v64;
              if ((v70 & 0x80) == 0)
              {
                break;
              }

              v64 += 7;
              --v66;
              ++v67;
              v68 = v69 + 1;
              v14 = v65++ > 8;
              if (v14)
              {
                LODWORD(v46) = 0;
                goto LABEL_95;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v46) = 0;
            }

LABEL_95:
            v3 = v69;
          }

          else
          {
            v44 = 0;
            v45 = 0;
            v46 = 0;
            v47 = (v43 + v42);
            v48 = v42 + 1;
            while (1)
            {
              v3 = v48;
              *(a2 + 1) = v48;
              v49 = *v47++;
              v46 |= (v49 & 0x7F) << v44;
              if ((v49 & 0x80) == 0)
              {
                break;
              }

              v44 += 7;
              ++v48;
              v14 = v45++ > 8;
              if (v14)
              {
                LODWORD(v46) = 0;
                break;
              }
            }
          }

LABEL_96:
          *(this + 4) = v46;
          goto LABEL_97;
        }

        if (v23 == 4)
        {
          *(this + 28) |= 8u;
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

          *(this + 24) = v33;
          goto LABEL_97;
        }
      }

      else
      {
        if (v23 == 1)
        {
          *(this + 28) |= 1u;
          v34 = *(a2 + 1);
          v2 = *(a2 + 2);
          v35 = *a2;
          if (v34 > 0xFFFFFFFFFFFFFFF5 || v34 + 10 > v2)
          {
            v57 = 0;
            v58 = 0;
            v38 = 0;
            if (v2 <= v34)
            {
              v3 = *(a2 + 1);
            }

            else
            {
              v3 = *(a2 + 2);
            }

            v59 = v3 - v34;
            v60 = (v35 + v34);
            v61 = v34 + 1;
            while (1)
            {
              if (!v59)
              {
                v38 = 0;
                *(a2 + 24) = 1;
                goto LABEL_92;
              }

              v62 = v61;
              v63 = *v60;
              *(a2 + 1) = v62;
              v38 |= (v63 & 0x7F) << v57;
              if ((v63 & 0x80) == 0)
              {
                break;
              }

              v57 += 7;
              --v59;
              ++v60;
              v61 = v62 + 1;
              v14 = v58++ > 8;
              if (v14)
              {
                v38 = 0;
                goto LABEL_91;
              }
            }

            if (*(a2 + 24))
            {
              v38 = 0;
            }

LABEL_91:
            v3 = v62;
          }

          else
          {
            v36 = 0;
            v37 = 0;
            v38 = 0;
            v39 = (v35 + v34);
            v40 = v34 + 1;
            while (1)
            {
              v3 = v40;
              *(a2 + 1) = v40;
              v41 = *v39++;
              v38 |= (v41 & 0x7F) << v36;
              if ((v41 & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              ++v40;
              v14 = v37++ > 8;
              if (v14)
              {
                v38 = 0;
                break;
              }
            }
          }

LABEL_92:
          *(this + 1) = v38;
          goto LABEL_97;
        }

        if (v23 == 2)
        {
          *(this + 28) |= 4u;
          v24 = *(a2 + 1);
          v2 = *(a2 + 2);
          v25 = *a2;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v2)
          {
            v50 = 0;
            v51 = 0;
            v28 = 0;
            if (v2 <= v24)
            {
              v3 = *(a2 + 1);
            }

            else
            {
              v3 = *(a2 + 2);
            }

            v52 = v3 - v24;
            v53 = (v25 + v24);
            v54 = v24 + 1;
            while (1)
            {
              if (!v52)
              {
                LODWORD(v28) = 0;
                *(a2 + 24) = 1;
                goto LABEL_88;
              }

              v55 = v54;
              v56 = *v53;
              *(a2 + 1) = v55;
              v28 |= (v56 & 0x7F) << v50;
              if ((v56 & 0x80) == 0)
              {
                break;
              }

              v50 += 7;
              --v52;
              ++v53;
              v54 = v55 + 1;
              v14 = v51++ > 8;
              if (v14)
              {
                LODWORD(v28) = 0;
                goto LABEL_87;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v28) = 0;
            }

LABEL_87:
            v3 = v55;
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

LABEL_88:
          *(this + 5) = v28;
          goto LABEL_97;
        }
      }

      if (!PB::Reader::skip(a2, v23, v10 & 7, 0))
      {
        v71 = 0;
        return v71 & 1;
      }

      v3 = *(a2 + 1);
      v2 = *(a2 + 2);
LABEL_97:
      v4 = *(a2 + 24);
    }

    while (v3 < v2 && (*(a2 + 24) & 1) == 0);
  }

LABEL_101:
  v71 = v4 ^ 1;
  return v71 & 1;
}

uint64_t CMMsl::SafetyHertzSample::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 28);
  if (v4)
  {
    this = PB::Writer::writeVarInt(a2, *(this + 8), 1u);
    v4 = *(v3 + 28);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = PB::Writer::writeVarInt(a2, *(v3 + 16), 3u);
      if ((*(v3 + 28) & 8) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 28) & 4) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::writeVarInt(a2, *(v3 + 20), 2u);
  v4 = *(v3 + 28);
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
  v5 = *(v3 + 24);

  return PB::Writer::write(a2, v5, 4u);
}

uint64_t CMMsl::SafetyHertzSample::hash_value(CMMsl::SafetyHertzSample *this)
{
  if (*(this + 28))
  {
    v1 = *(this + 1);
    if ((*(this + 28) & 4) != 0)
    {
LABEL_3:
      v2 = *(this + 5);
      if ((*(this + 28) & 2) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v3 = 0;
      if ((*(this + 28) & 8) != 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v4 = 0;
      return v2 ^ v1 ^ v3 ^ v4;
    }
  }

  else
  {
    v1 = 0;
    if ((*(this + 28) & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  v2 = 0;
  if ((*(this + 28) & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v3 = *(this + 4);
  if ((*(this + 28) & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v4 = *(this + 24);
  return v2 ^ v1 ^ v3 ^ v4;
}

void CMMsl::SafetyRemoteSample::~SafetyRemoteSample(CMMsl::SafetyRemoteSample *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::SafetyRemoteSample::SafetyRemoteSample(uint64_t this, const CMMsl::SafetyRemoteSample *a2)
{
  *this = off_100421BB8;
  *(this + 52) = 0;
  v2 = *(a2 + 52);
  if ((v2 & 0x20) != 0)
  {
    v4 = *(a2 + 11);
    v3 = 32;
    *(this + 52) = 32;
    *(this + 44) = v4;
    v2 = *(a2 + 52);
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 52) & 0x40) != 0)
  {
LABEL_5:
    v5 = *(a2 + 12);
    v3 |= 0x40u;
    *(this + 52) = v3;
    *(this + 48) = v5;
    v2 = *(a2 + 52);
  }

LABEL_6:
  if ((v2 & 0x10) != 0)
  {
    v6 = *(a2 + 10);
    v3 |= 0x10u;
    *(this + 52) = v3;
    *(this + 40) = v6;
    v2 = *(a2 + 52);
    if ((v2 & 8) == 0)
    {
LABEL_8:
      if ((v2 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_14;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 4);
  v3 |= 8u;
  *(this + 52) = v3;
  *(this + 32) = v7;
  v2 = *(a2 + 52);
  if ((v2 & 1) == 0)
  {
LABEL_9:
    if ((v2 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

LABEL_14:
  v8 = *(a2 + 1);
  v3 |= 1u;
  *(this + 52) = v3;
  *(this + 8) = v8;
  v2 = *(a2 + 52);
  if ((v2 & 4) == 0)
  {
LABEL_10:
    if ((v2 & 2) == 0)
    {
      return this;
    }

LABEL_16:
    v10 = *(a2 + 2);
    *(this + 52) = v3 | 2;
    *(this + 16) = v10;
    return this;
  }

LABEL_15:
  v9 = *(a2 + 3);
  v3 |= 4u;
  *(this + 52) = v3;
  *(this + 24) = v9;
  if ((*(a2 + 52) & 2) != 0)
  {
    goto LABEL_16;
  }

  return this;
}

uint64_t CMMsl::SafetyRemoteSample::operator=(uint64_t a1, const CMMsl::SafetyRemoteSample *a2)
{
  if (a1 != a2)
  {
    CMMsl::SafetyRemoteSample::SafetyRemoteSample(v8, a2);
    v3 = v10;
    v4 = *(a1 + 40);
    *(a1 + 40) = v11;
    v5 = *(a1 + 24);
    *(a1 + 24) = v3;
    v10 = v5;
    v11 = v4;
    v6 = *(a1 + 8);
    *(a1 + 8) = v9;
    v9 = v6;
    PB::Base::~Base(v8);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::SafetyRemoteSample *a2, CMMsl::SafetyRemoteSample *a3)
{
  v3 = *(this + 52);
  *(this + 52) = *(a2 + 13);
  *(a2 + 13) = v3;
  v4 = *(this + 44);
  *(this + 44) = *(a2 + 11);
  *(a2 + 11) = v4;
  v5 = *(this + 48);
  *(this + 48) = *(a2 + 12);
  *(a2 + 12) = v5;
  v6 = *(this + 40);
  *(this + 40) = *(a2 + 10);
  *(a2 + 10) = v6;
  v7 = *(this + 32);
  *(this + 32) = *(a2 + 4);
  *(a2 + 4) = v7;
  v8 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v8;
  v9 = *(this + 24);
  *(this + 24) = *(a2 + 3);
  *(a2 + 3) = v9;
  v10 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v10;
  return this;
}

uint64_t CMMsl::SafetyRemoteSample::SafetyRemoteSample(uint64_t result, uint64_t a2)
{
  *result = off_100421BB8;
  *(result + 52) = *(a2 + 52);
  *(a2 + 52) = 0;
  *(result + 44) = *(a2 + 44);
  *(result + 48) = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 8) = *(a2 + 8);
  *(result + 24) = *(a2 + 24);
  *(result + 16) = *(a2 + 16);
  return result;
}

{
  *result = off_100421BB8;
  *(result + 52) = *(a2 + 52);
  *(a2 + 52) = 0;
  *(result + 44) = *(a2 + 44);
  *(result + 48) = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 8) = *(a2 + 8);
  *(result + 24) = *(a2 + 24);
  *(result + 16) = *(a2 + 16);
  return result;
}

uint64_t CMMsl::SafetyRemoteSample::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v9 = off_100421BB8;
    v3 = *(a2 + 8);
    v4 = *(a2 + 24);
    v5 = *(a2 + 40);
    *(a2 + 52) = 0;
    v6 = *(a1 + 40);
    v11 = *(a1 + 24);
    v12 = v6;
    v7 = *(a1 + 8);
    *(a1 + 40) = v5;
    *(a1 + 24) = v4;
    *(a1 + 8) = v3;
    v10 = v7;
    PB::Base::~Base(&v9);
  }

  return a1;
}

uint64_t CMMsl::SafetyRemoteSample::formatText(CMMsl::SafetyRemoteSample *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 52);
  if (v5)
  {
    PB::TextFormatter::format(a2, "createdAtTimestamp", *(this + 1));
    v5 = *(this + 52);
    if ((v5 & 0x10) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(this + 52) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "epochNumber", *(this + 10));
  v5 = *(this + 52);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  PB::TextFormatter::format(a2, "epochTimestamp", *(this + 2));
  v5 = *(this + 52);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  PB::TextFormatter::format(a2, "lastRealTriggerTimestamp", *(this + 3));
  v5 = *(this + 52);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  PB::TextFormatter::format(a2, "mode", *(this + 11));
  v5 = *(this + 52);
  if ((v5 & 8) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  PB::TextFormatter::format(a2, "receivedAtTimestamp", *(this + 4));
  if ((*(this + 52) & 0x40) != 0)
  {
LABEL_8:
    PB::TextFormatter::format(a2, "sessionNumber", *(this + 12));
  }

LABEL_9:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::SafetyRemoteSample::readFrom(CMMsl::SafetyRemoteSample *this, PB::Reader *a2)
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
            goto LABEL_185;
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
      if ((v10 >> 3) <= 4)
      {
        switch(v23)
        {
          case 2:
            *(this + 52) |= 0x20u;
            v48 = *(a2 + 1);
            v2 = *(a2 + 2);
            v49 = *a2;
            if (v48 > 0xFFFFFFFFFFFFFFF5 || v48 + 10 > v2)
            {
              v80 = 0;
              v81 = 0;
              v52 = 0;
              if (v2 <= v48)
              {
                v3 = *(a2 + 1);
              }

              else
              {
                v3 = *(a2 + 2);
              }

              v82 = v3 - v48;
              v83 = (v49 + v48);
              v84 = v48 + 1;
              while (1)
              {
                if (!v82)
                {
                  LODWORD(v52) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_156;
                }

                v85 = v84;
                v86 = *v83;
                *(a2 + 1) = v85;
                v52 |= (v86 & 0x7F) << v80;
                if ((v86 & 0x80) == 0)
                {
                  break;
                }

                v80 += 7;
                --v82;
                ++v83;
                v84 = v85 + 1;
                v14 = v81++ > 8;
                if (v14)
                {
                  LODWORD(v52) = 0;
                  goto LABEL_155;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v52) = 0;
              }

LABEL_155:
              v3 = v85;
            }

            else
            {
              v50 = 0;
              v51 = 0;
              v52 = 0;
              v53 = (v49 + v48);
              v54 = v48 + 1;
              while (1)
              {
                v3 = v54;
                *(a2 + 1) = v54;
                v55 = *v53++;
                v52 |= (v55 & 0x7F) << v50;
                if ((v55 & 0x80) == 0)
                {
                  break;
                }

                v50 += 7;
                ++v54;
                v14 = v51++ > 8;
                if (v14)
                {
                  LODWORD(v52) = 0;
                  break;
                }
              }
            }

LABEL_156:
            *(this + 11) = v52;
            goto LABEL_181;
          case 3:
            *(this + 52) |= 0x40u;
            v72 = *(a2 + 1);
            v2 = *(a2 + 2);
            v73 = *a2;
            if (v72 > 0xFFFFFFFFFFFFFFF5 || v72 + 10 > v2)
            {
              v122 = 0;
              v123 = 0;
              v76 = 0;
              if (v2 <= v72)
              {
                v3 = *(a2 + 1);
              }

              else
              {
                v3 = *(a2 + 2);
              }

              v124 = v3 - v72;
              v125 = (v73 + v72);
              v126 = v72 + 1;
              while (1)
              {
                if (!v124)
                {
                  LODWORD(v76) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_180;
                }

                v127 = v126;
                v128 = *v125;
                *(a2 + 1) = v127;
                v76 |= (v128 & 0x7F) << v122;
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
                  LODWORD(v76) = 0;
                  goto LABEL_179;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v76) = 0;
              }

LABEL_179:
              v3 = v127;
            }

            else
            {
              v74 = 0;
              v75 = 0;
              v76 = 0;
              v77 = (v73 + v72);
              v78 = v72 + 1;
              while (1)
              {
                v3 = v78;
                *(a2 + 1) = v78;
                v79 = *v77++;
                v76 |= (v79 & 0x7F) << v74;
                if ((v79 & 0x80) == 0)
                {
                  break;
                }

                v74 += 7;
                ++v78;
                v14 = v75++ > 8;
                if (v14)
                {
                  LODWORD(v76) = 0;
                  break;
                }
              }
            }

LABEL_180:
            *(this + 12) = v76;
            goto LABEL_181;
          case 4:
            *(this + 52) |= 0x10u;
            v32 = *(a2 + 1);
            v2 = *(a2 + 2);
            v33 = *a2;
            if (v32 > 0xFFFFFFFFFFFFFFF5 || v32 + 10 > v2)
            {
              v115 = 0;
              v116 = 0;
              v36 = 0;
              if (v2 <= v32)
              {
                v3 = *(a2 + 1);
              }

              else
              {
                v3 = *(a2 + 2);
              }

              v117 = v3 - v32;
              v118 = (v33 + v32);
              v119 = v32 + 1;
              while (1)
              {
                if (!v117)
                {
                  LODWORD(v36) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_176;
                }

                v120 = v119;
                v121 = *v118;
                *(a2 + 1) = v120;
                v36 |= (v121 & 0x7F) << v115;
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
                  LODWORD(v36) = 0;
                  goto LABEL_175;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v36) = 0;
              }

LABEL_175:
              v3 = v120;
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

LABEL_176:
            *(this + 10) = v36;
            goto LABEL_181;
        }
      }

      else if (v23 > 99)
      {
        if (v23 == 100)
        {
          *(this + 52) |= 4u;
          v64 = *(a2 + 1);
          v2 = *(a2 + 2);
          v65 = *a2;
          if (v64 > 0xFFFFFFFFFFFFFFF5 || v64 + 10 > v2)
          {
            v94 = 0;
            v95 = 0;
            v68 = 0;
            if (v2 <= v64)
            {
              v3 = *(a2 + 1);
            }

            else
            {
              v3 = *(a2 + 2);
            }

            v96 = v3 - v64;
            v97 = (v65 + v64);
            v98 = v64 + 1;
            while (1)
            {
              if (!v96)
              {
                v68 = 0;
                *(a2 + 24) = 1;
                goto LABEL_164;
              }

              v99 = v98;
              v100 = *v97;
              *(a2 + 1) = v99;
              v68 |= (v100 & 0x7F) << v94;
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
                v68 = 0;
                goto LABEL_163;
              }
            }

            if (*(a2 + 24))
            {
              v68 = 0;
            }

LABEL_163:
            v3 = v99;
          }

          else
          {
            v66 = 0;
            v67 = 0;
            v68 = 0;
            v69 = (v65 + v64);
            v70 = v64 + 1;
            while (1)
            {
              v3 = v70;
              *(a2 + 1) = v70;
              v71 = *v69++;
              v68 |= (v71 & 0x7F) << v66;
              if ((v71 & 0x80) == 0)
              {
                break;
              }

              v66 += 7;
              ++v70;
              v14 = v67++ > 8;
              if (v14)
              {
                v68 = 0;
                break;
              }
            }
          }

LABEL_164:
          *(this + 3) = v68;
          goto LABEL_181;
        }

        if (v23 == 101)
        {
          *(this + 52) |= 2u;
          v40 = *(a2 + 1);
          v2 = *(a2 + 2);
          v41 = *a2;
          if (v40 > 0xFFFFFFFFFFFFFFF5 || v40 + 10 > v2)
          {
            v108 = 0;
            v109 = 0;
            v44 = 0;
            if (v2 <= v40)
            {
              v3 = *(a2 + 1);
            }

            else
            {
              v3 = *(a2 + 2);
            }

            v110 = v3 - v40;
            v111 = (v41 + v40);
            v112 = v40 + 1;
            while (1)
            {
              if (!v110)
              {
                v44 = 0;
                *(a2 + 24) = 1;
                goto LABEL_172;
              }

              v113 = v112;
              v114 = *v111;
              *(a2 + 1) = v113;
              v44 |= (v114 & 0x7F) << v108;
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
                v44 = 0;
                goto LABEL_171;
              }
            }

            if (*(a2 + 24))
            {
              v44 = 0;
            }

LABEL_171:
            v3 = v113;
          }

          else
          {
            v42 = 0;
            v43 = 0;
            v44 = 0;
            v45 = (v41 + v40);
            v46 = v40 + 1;
            while (1)
            {
              v3 = v46;
              *(a2 + 1) = v46;
              v47 = *v45++;
              v44 |= (v47 & 0x7F) << v42;
              if ((v47 & 0x80) == 0)
              {
                break;
              }

              v42 += 7;
              ++v46;
              v14 = v43++ > 8;
              if (v14)
              {
                v44 = 0;
                break;
              }
            }
          }

LABEL_172:
          *(this + 2) = v44;
          goto LABEL_181;
        }
      }

      else
      {
        if (v23 == 5)
        {
          *(this + 52) |= 8u;
          v56 = *(a2 + 1);
          v2 = *(a2 + 2);
          v57 = *a2;
          if (v56 > 0xFFFFFFFFFFFFFFF5 || v56 + 10 > v2)
          {
            v87 = 0;
            v88 = 0;
            v60 = 0;
            if (v2 <= v56)
            {
              v3 = *(a2 + 1);
            }

            else
            {
              v3 = *(a2 + 2);
            }

            v89 = v3 - v56;
            v90 = (v57 + v56);
            v91 = v56 + 1;
            while (1)
            {
              if (!v89)
              {
                v60 = 0;
                *(a2 + 24) = 1;
                goto LABEL_160;
              }

              v92 = v91;
              v93 = *v90;
              *(a2 + 1) = v92;
              v60 |= (v93 & 0x7F) << v87;
              if ((v93 & 0x80) == 0)
              {
                break;
              }

              v87 += 7;
              --v89;
              ++v90;
              v91 = v92 + 1;
              v14 = v88++ > 8;
              if (v14)
              {
                v60 = 0;
                goto LABEL_159;
              }
            }

            if (*(a2 + 24))
            {
              v60 = 0;
            }

LABEL_159:
            v3 = v92;
          }

          else
          {
            v58 = 0;
            v59 = 0;
            v60 = 0;
            v61 = (v57 + v56);
            v62 = v56 + 1;
            while (1)
            {
              v3 = v62;
              *(a2 + 1) = v62;
              v63 = *v61++;
              v60 |= (v63 & 0x7F) << v58;
              if ((v63 & 0x80) == 0)
              {
                break;
              }

              v58 += 7;
              ++v62;
              v14 = v59++ > 8;
              if (v14)
              {
                v60 = 0;
                break;
              }
            }
          }

LABEL_160:
          *(this + 4) = v60;
          goto LABEL_181;
        }

        if (v23 == 6)
        {
          *(this + 52) |= 1u;
          v24 = *(a2 + 1);
          v2 = *(a2 + 2);
          v25 = *a2;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v2)
          {
            v101 = 0;
            v102 = 0;
            v28 = 0;
            if (v2 <= v24)
            {
              v3 = *(a2 + 1);
            }

            else
            {
              v3 = *(a2 + 2);
            }

            v103 = v3 - v24;
            v104 = (v25 + v24);
            v105 = v24 + 1;
            while (1)
            {
              if (!v103)
              {
                v28 = 0;
                *(a2 + 24) = 1;
                goto LABEL_168;
              }

              v106 = v105;
              v107 = *v104;
              *(a2 + 1) = v106;
              v28 |= (v107 & 0x7F) << v101;
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
                v28 = 0;
                goto LABEL_167;
              }
            }

            if (*(a2 + 24))
            {
              v28 = 0;
            }

LABEL_167:
            v3 = v106;
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

LABEL_168:
          *(this + 1) = v28;
          goto LABEL_181;
        }
      }

      if (!PB::Reader::skip(a2, v23, v10 & 7, 0))
      {
        v129 = 0;
        return v129 & 1;
      }

      v3 = *(a2 + 1);
      v2 = *(a2 + 2);
LABEL_181:
      v4 = *(a2 + 24);
    }

    while (v3 < v2 && (*(a2 + 24) & 1) == 0);
  }

LABEL_185:
  v129 = v4 ^ 1;
  return v129 & 1;
}

uint64_t CMMsl::SafetyRemoteSample::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 52);
  if ((v4 & 0x20) != 0)
  {
    this = PB::Writer::writeVarInt(a2, *(this + 44), 2u);
    v4 = *(v3 + 52);
    if ((v4 & 0x40) == 0)
    {
LABEL_3:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(this + 52) & 0x40) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::writeVarInt(a2, *(v3 + 48), 3u);
  v4 = *(v3 + 52);
  if ((v4 & 0x10) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  this = PB::Writer::writeVarInt(a2, *(v3 + 40), 4u);
  v4 = *(v3 + 52);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  this = PB::Writer::writeVarInt(a2, *(v3 + 32), 5u);
  v4 = *(v3 + 52);
  if ((v4 & 1) == 0)
  {
LABEL_6:
    if ((v4 & 4) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    this = PB::Writer::writeVarInt(a2, *(v3 + 24), 0x64u);
    if ((*(v3 + 52) & 2) == 0)
    {
      return this;
    }

    goto LABEL_15;
  }

LABEL_13:
  this = PB::Writer::writeVarInt(a2, *(v3 + 8), 6u);
  v4 = *(v3 + 52);
  if ((v4 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v4 & 2) == 0)
  {
    return this;
  }

LABEL_15:
  v5 = *(v3 + 16);

  return PB::Writer::writeVarInt(a2, v5, 0x65u);
}

uint64_t CMMsl::SafetyRemoteSample::hash_value(CMMsl::SafetyRemoteSample *this)
{
  if ((*(this + 52) & 0x20) != 0)
  {
    v1 = *(this + 11);
    if ((*(this + 52) & 0x40) != 0)
    {
LABEL_3:
      v2 = *(this + 12);
      if ((*(this + 52) & 0x10) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v1 = 0;
    if ((*(this + 52) & 0x40) != 0)
    {
      goto LABEL_3;
    }
  }

  v2 = 0;
  if ((*(this + 52) & 0x10) != 0)
  {
LABEL_4:
    v3 = *(this + 10);
    if ((*(this + 52) & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v3 = 0;
  if ((*(this + 52) & 8) != 0)
  {
LABEL_5:
    v4 = *(this + 4);
    if (*(this + 52))
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v4 = 0;
  if (*(this + 52))
  {
LABEL_6:
    v5 = *(this + 1);
    if ((*(this + 52) & 4) != 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v6 = 0;
    if ((*(this + 52) & 2) != 0)
    {
      goto LABEL_8;
    }

LABEL_15:
    v7 = 0;
    return v2 ^ v1 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7;
  }

LABEL_13:
  v5 = 0;
  if ((*(this + 52) & 4) == 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v6 = *(this + 3);
  if ((*(this + 52) & 2) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v7 = *(this + 2);
  return v2 ^ v1 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7;
}

void CMMsl::SafetyTrustedAudioResult::~SafetyTrustedAudioResult(CMMsl::SafetyTrustedAudioResult *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::SafetyTrustedAudioResult::SafetyTrustedAudioResult(uint64_t this, const CMMsl::SafetyTrustedAudioResult *a2)
{
  *this = off_100421BF0;
  *(this + 212) = 0;
  v2 = *(a2 + 212);
  if ((v2 & 0x800) != 0)
  {
    v4 = *(a2 + 12);
    v3 = 2048;
    *(this + 212) = 2048;
    *(this + 96) = v4;
    v2 = *(a2 + 212);
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x200000) != 0)
  {
LABEL_5:
    v5 = *(a2 + 35);
    v3 |= 0x200000uLL;
    *(this + 212) = v3;
    *(this + 140) = v5;
    v2 = *(a2 + 212);
  }

LABEL_6:
  if ((v2 & 0x40) != 0)
  {
    v6 = *(a2 + 7);
    v3 |= 0x40uLL;
    *(this + 212) = v3;
    *(this + 56) = v6;
    v2 = *(a2 + 212);
    if ((v2 & 0x10000) == 0)
    {
LABEL_8:
      if ((v2 & 0x1000000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_47;
    }
  }

  else if ((v2 & 0x10000) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 30);
  v3 |= 0x10000uLL;
  *(this + 212) = v3;
  *(this + 120) = v7;
  v2 = *(a2 + 212);
  if ((v2 & 0x1000000) == 0)
  {
LABEL_9:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_48;
  }

LABEL_47:
  v8 = *(a2 + 38);
  v3 |= 0x1000000uLL;
  *(this + 212) = v3;
  *(this + 152) = v8;
  v2 = *(a2 + 212);
  if ((v2 & 0x100000) == 0)
  {
LABEL_10:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_49;
  }

LABEL_48:
  v9 = *(a2 + 34);
  v3 |= 0x100000uLL;
  *(this + 212) = v3;
  *(this + 136) = v9;
  v2 = *(a2 + 212);
  if ((v2 & 0x20) == 0)
  {
LABEL_11:
    if ((v2 & 0x40000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_50;
  }

LABEL_49:
  v10 = *(a2 + 6);
  v3 |= 0x20uLL;
  *(this + 212) = v3;
  *(this + 48) = v10;
  v2 = *(a2 + 212);
  if ((v2 & 0x40000) == 0)
  {
LABEL_12:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_51;
  }

LABEL_50:
  v11 = *(a2 + 32);
  v3 |= 0x40000uLL;
  *(this + 212) = v3;
  *(this + 128) = v11;
  v2 = *(a2 + 212);
  if ((v2 & 0x800000) == 0)
  {
LABEL_13:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_52;
  }

LABEL_51:
  v12 = *(a2 + 37);
  v3 |= 0x800000uLL;
  *(this + 212) = v3;
  *(this + 148) = v12;
  v2 = *(a2 + 212);
  if ((v2 & 0x400000) == 0)
  {
LABEL_14:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_53;
  }

LABEL_52:
  v13 = *(a2 + 36);
  v3 |= 0x400000uLL;
  *(this + 212) = v3;
  *(this + 144) = v13;
  v2 = *(a2 + 212);
  if ((v2 & 0x80) == 0)
  {
LABEL_15:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_54;
  }

LABEL_53:
  v14 = *(a2 + 8);
  v3 |= 0x80uLL;
  *(this + 212) = v3;
  *(this + 64) = v14;
  v2 = *(a2 + 212);
  if ((v2 & 0x20000) == 0)
  {
LABEL_16:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_55;
  }

LABEL_54:
  v15 = *(a2 + 31);
  v3 |= 0x20000uLL;
  *(this + 212) = v3;
  *(this + 124) = v15;
  v2 = *(a2 + 212);
  if ((v2 & 0x80000) == 0)
  {
LABEL_17:
    if ((v2 & 0x40000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_56;
  }

LABEL_55:
  v16 = *(a2 + 33);
  v3 |= 0x80000uLL;
  *(this + 212) = v3;
  *(this + 132) = v16;
  v2 = *(a2 + 212);
  if ((v2 & 0x40000000) == 0)
  {
LABEL_18:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_57;
  }

LABEL_56:
  v17 = *(a2 + 44);
  v3 |= 0x40000000uLL;
  *(this + 212) = v3;
  *(this + 176) = v17;
  v2 = *(a2 + 212);
  if ((v2 & 0x200) == 0)
  {
LABEL_19:
    if ((v2 & 0x2000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_58;
  }

LABEL_57:
  v18 = *(a2 + 10);
  v3 |= 0x200uLL;
  *(this + 212) = v3;
  *(this + 80) = v18;
  v2 = *(a2 + 212);
  if ((v2 & 0x2000000) == 0)
  {
LABEL_20:
    if ((v2 & 0x200000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_59;
  }

LABEL_58:
  v19 = *(a2 + 39);
  v3 |= 0x2000000uLL;
  *(this + 212) = v3;
  *(this + 156) = v19;
  v2 = *(a2 + 212);
  if ((v2 & 0x200000000) == 0)
  {
LABEL_21:
    if ((v2 & 0x20000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_60;
  }

LABEL_59:
  v20 = *(a2 + 47);
  v3 |= 0x200000000uLL;
  *(this + 212) = v3;
  *(this + 188) = v20;
  v2 = *(a2 + 212);
  if ((v2 & 0x20000000) == 0)
  {
LABEL_22:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_61;
  }

LABEL_60:
  v21 = *(a2 + 43);
  v3 |= 0x20000000uLL;
  *(this + 212) = v3;
  *(this + 172) = v21;
  v2 = *(a2 + 212);
  if ((v2 & 0x100) == 0)
  {
LABEL_23:
    if ((v2 & 0x8000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_62;
  }

LABEL_61:
  v22 = *(a2 + 9);
  v3 |= 0x100uLL;
  *(this + 212) = v3;
  *(this + 72) = v22;
  v2 = *(a2 + 212);
  if ((v2 & 0x8000000) == 0)
  {
LABEL_24:
    if ((v2 & 0x100000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_63;
  }

LABEL_62:
  v23 = *(a2 + 41);
  v3 |= 0x8000000uLL;
  *(this + 212) = v3;
  *(this + 164) = v23;
  v2 = *(a2 + 212);
  if ((v2 & 0x100000000) == 0)
  {
LABEL_25:
    if ((v2 & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_64;
  }

LABEL_63:
  v24 = *(a2 + 46);
  v3 |= &_mh_execute_header;
  *(this + 212) = v3;
  *(this + 184) = v24;
  v2 = *(a2 + 212);
  if ((v2 & 0x80000000) == 0)
  {
LABEL_26:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_65;
  }

LABEL_64:
  v25 = *(a2 + 45);
  v3 |= 0x80000000uLL;
  *(this + 212) = v3;
  *(this + 180) = v25;
  v2 = *(a2 + 212);
  if ((v2 & 0x400) == 0)
  {
LABEL_27:
    if ((v2 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_66;
  }

LABEL_65:
  v26 = *(a2 + 11);
  v3 |= 0x400uLL;
  *(this + 212) = v3;
  *(this + 88) = v26;
  v2 = *(a2 + 212);
  if ((v2 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v2 & 0x10000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_67;
  }

LABEL_66:
  v27 = *(a2 + 40);
  v3 |= 0x4000000uLL;
  *(this + 212) = v3;
  *(this + 160) = v27;
  v2 = *(a2 + 212);
  if ((v2 & 0x10000000) == 0)
  {
LABEL_29:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_68;
  }

LABEL_67:
  v28 = *(a2 + 42);
  v3 |= 0x10000000uLL;
  *(this + 212) = v3;
  *(this + 168) = v28;
  v2 = *(a2 + 212);
  if ((v2 & 0x2000) == 0)
  {
LABEL_30:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_69;
  }

LABEL_68:
  v29 = *(a2 + 27);
  v3 |= 0x2000uLL;
  *(this + 212) = v3;
  *(this + 108) = v29;
  v2 = *(a2 + 212);
  if ((v2 & 0x8000) == 0)
  {
LABEL_31:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_70;
  }

LABEL_69:
  v30 = *(a2 + 29);
  v3 |= 0x8000uLL;
  *(this + 212) = v3;
  *(this + 116) = v30;
  v2 = *(a2 + 212);
  if ((v2 & 0x4000) == 0)
  {
LABEL_32:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_71;
  }

LABEL_70:
  v31 = *(a2 + 28);
  v3 |= 0x4000uLL;
  *(this + 212) = v3;
  *(this + 112) = v31;
  v2 = *(a2 + 212);
  if ((v2 & 0x10) == 0)
  {
LABEL_33:
    if ((v2 & 8) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_72;
  }

LABEL_71:
  v32 = *(a2 + 5);
  v3 |= 0x10uLL;
  *(this + 212) = v3;
  *(this + 40) = v32;
  v2 = *(a2 + 212);
  if ((v2 & 8) == 0)
  {
LABEL_34:
    if ((v2 & 0x800000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_73;
  }

LABEL_72:
  v33 = *(a2 + 4);
  v3 |= 8uLL;
  *(this + 212) = v3;
  *(this + 32) = v33;
  v2 = *(a2 + 212);
  if ((v2 & 0x800000000) == 0)
  {
LABEL_35:
    if ((v2 & 0x2000000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_74;
  }

LABEL_73:
  v34 = *(a2 + 49);
  v3 |= 0x800000000uLL;
  *(this + 212) = v3;
  *(this + 196) = v34;
  v2 = *(a2 + 212);
  if ((v2 & 0x2000000000) == 0)
  {
LABEL_36:
    if ((v2 & 0x1000000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_75;
  }

LABEL_74:
  v35 = *(a2 + 51);
  v3 |= 0x2000000000uLL;
  *(this + 212) = v3;
  *(this + 204) = v35;
  v2 = *(a2 + 212);
  if ((v2 & 0x1000000000) == 0)
  {
LABEL_37:
    if ((v2 & 0x400000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_76;
  }

LABEL_75:
  v36 = *(a2 + 50);
  v3 |= 0x1000000000uLL;
  *(this + 212) = v3;
  *(this + 200) = v36;
  v2 = *(a2 + 212);
  if ((v2 & 0x400000000) == 0)
  {
LABEL_38:
    if ((v2 & 0x4000000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_77;
  }

LABEL_76:
  v37 = *(a2 + 48);
  v3 |= 0x400000000uLL;
  *(this + 212) = v3;
  *(this + 192) = v37;
  v2 = *(a2 + 212);
  if ((v2 & 0x4000000000) == 0)
  {
LABEL_39:
    if ((v2 & 0x8000000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_78;
  }

LABEL_77:
  v38 = *(a2 + 208);
  v3 |= 0x4000000000uLL;
  *(this + 212) = v3;
  *(this + 208) = v38;
  v2 = *(a2 + 212);
  if ((v2 & 0x8000000000) == 0)
  {
LABEL_40:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_79;
  }

LABEL_78:
  v39 = *(a2 + 209);
  v3 |= 0x8000000000uLL;
  *(this + 212) = v3;
  *(this + 209) = v39;
  v2 = *(a2 + 212);
  if ((v2 & 0x1000) == 0)
  {
LABEL_41:
    if ((v2 & 4) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_80;
  }

LABEL_79:
  v40 = *(a2 + 26);
  v3 |= 0x1000uLL;
  *(this + 212) = v3;
  *(this + 104) = v40;
  v2 = *(a2 + 212);
  if ((v2 & 4) == 0)
  {
LABEL_42:
    if ((v2 & 2) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_81;
  }

LABEL_80:
  v41 = *(a2 + 3);
  v3 |= 4uLL;
  *(this + 212) = v3;
  *(this + 24) = v41;
  v2 = *(a2 + 212);
  if ((v2 & 2) == 0)
  {
LABEL_43:
    if ((v2 & 1) == 0)
    {
      return this;
    }

LABEL_82:
    v43 = *(a2 + 1);
    *(this + 212) = v3 | 1;
    *(this + 8) = v43;
    return this;
  }

LABEL_81:
  v42 = *(a2 + 2);
  v3 |= 2uLL;
  *(this + 212) = v3;
  *(this + 16) = v42;
  if (*(a2 + 212))
  {
    goto LABEL_82;
  }

  return this;
}

CMMsl *CMMsl::SafetyTrustedAudioResult::operator=(CMMsl *a1, const CMMsl::SafetyTrustedAudioResult *a2)
{
  if (a1 != a2)
  {
    CMMsl::SafetyTrustedAudioResult::SafetyTrustedAudioResult(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::SafetyTrustedAudioResult *a2, CMMsl::SafetyTrustedAudioResult *a3)
{
  v3 = *(this + 212);
  *(this + 212) = *(a2 + 212);
  *(a2 + 212) = v3;
  v4 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v4;
  v5 = *(this + 35);
  *(this + 35) = *(a2 + 35);
  *(a2 + 35) = v5;
  v6 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v6;
  v7 = *(this + 30);
  *(this + 30) = *(a2 + 30);
  *(a2 + 30) = v7;
  v8 = *(this + 38);
  *(this + 38) = *(a2 + 38);
  *(a2 + 38) = v8;
  v9 = *(this + 34);
  *(this + 34) = *(a2 + 34);
  *(a2 + 34) = v9;
  v10 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v10;
  v11 = *(this + 32);
  *(this + 32) = *(a2 + 32);
  *(a2 + 32) = v11;
  v12 = *(this + 37);
  *(this + 37) = *(a2 + 37);
  *(a2 + 37) = v12;
  v13 = *(this + 36);
  *(this + 36) = *(a2 + 36);
  *(a2 + 36) = v13;
  v14 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v14;
  v15 = *(this + 31);
  *(this + 31) = *(a2 + 31);
  *(a2 + 31) = v15;
  v16 = *(this + 33);
  *(this + 33) = *(a2 + 33);
  *(a2 + 33) = v16;
  v17 = *(this + 44);
  *(this + 44) = *(a2 + 44);
  *(a2 + 44) = v17;
  v18 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v18;
  v19 = *(this + 39);
  *(this + 39) = *(a2 + 39);
  *(a2 + 39) = v19;
  v20 = *(this + 47);
  *(this + 47) = *(a2 + 47);
  *(a2 + 47) = v20;
  v21 = *(this + 43);
  *(this + 43) = *(a2 + 43);
  *(a2 + 43) = v21;
  v22 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v22;
  v23 = *(this + 41);
  *(this + 41) = *(a2 + 41);
  *(a2 + 41) = v23;
  v24 = *(this + 46);
  *(this + 46) = *(a2 + 46);
  *(a2 + 46) = v24;
  v25 = *(this + 45);
  *(this + 45) = *(a2 + 45);
  *(a2 + 45) = v25;
  v26 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v26;
  v27 = *(this + 40);
  *(this + 40) = *(a2 + 40);
  *(a2 + 40) = v27;
  v28 = *(this + 42);
  *(this + 42) = *(a2 + 42);
  *(a2 + 42) = v28;
  v29 = *(this + 27);
  *(this + 27) = *(a2 + 27);
  *(a2 + 27) = v29;
  LODWORD(v26) = *(this + 29);
  *(this + 29) = *(a2 + 29);
  *(a2 + 29) = v26;
  LODWORD(v26) = *(this + 28);
  *(this + 28) = *(a2 + 28);
  *(a2 + 28) = v26;
  v30 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v30;
  v31 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v31;
  v32 = *(this + 49);
  *(this + 49) = *(a2 + 49);
  *(a2 + 49) = v32;
  v33 = *(this + 51);
  *(this + 51) = *(a2 + 51);
  *(a2 + 51) = v33;
  v34 = *(this + 50);
  *(this + 50) = *(a2 + 50);
  *(a2 + 50) = v34;
  result = *(this + 48);
  *(this + 48) = *(a2 + 48);
  *(a2 + 48) = result;
  LOBYTE(v31) = *(this + 208);
  *(this + 208) = *(a2 + 208);
  *(a2 + 208) = v31;
  LOBYTE(v31) = *(this + 209);
  *(this + 209) = *(a2 + 209);
  *(a2 + 209) = v31;
  LODWORD(v31) = *(this + 26);
  *(this + 26) = *(a2 + 26);
  *(a2 + 26) = v31;
  v36 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v36;
  v37 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v37;
  v38 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v38;
  return result;
}

float CMMsl::SafetyTrustedAudioResult::SafetyTrustedAudioResult(uint64_t a1, uint64_t a2)
{
  *a1 = off_100421BF0;
  *(a1 + 212) = *(a2 + 212);
  *(a2 + 212) = 0;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 140) = *(a2 + 140);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 148) = *(a2 + 148);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 132) = *(a2 + 132);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 156) = *(a2 + 156);
  *(a1 + 188) = *(a2 + 188);
  *(a1 + 172) = *(a2 + 172);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 164) = *(a2 + 164);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 180) = *(a2 + 180);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 116) = *(a2 + 116);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 196) = *(a2 + 196);
  *(a1 + 204) = *(a2 + 204);
  *(a1 + 200) = *(a2 + 200);
  result = *(a2 + 192);
  *(a1 + 192) = result;
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 209) = *(a2 + 209);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  return result;
}

CMMsl *CMMsl::SafetyTrustedAudioResult::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::SafetyTrustedAudioResult::SafetyTrustedAudioResult(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::SafetyTrustedAudioResult::formatText(CMMsl::SafetyTrustedAudioResult *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 212);
  if (v5)
  {
    PB::TextFormatter::format(a2, "calculationTimestamp", *(this + 1));
    v5 = *(this + 212);
    if ((v5 & 0x1000) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_47;
    }
  }

  else if ((v5 & 0x1000) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "dramDuration", *(this + 26));
  v5 = *(this + 212);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_48;
  }

LABEL_47:
  PB::TextFormatter::format(a2, "dramMaxTimestamp", *(this + 2));
  v5 = *(this + 212);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_49;
  }

LABEL_48:
  PB::TextFormatter::format(a2, "dramMinTimestamp", *(this + 3));
  v5 = *(this + 212);
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_50;
  }

LABEL_49:
  PB::TextFormatter::format(a2, "epochMaxTimestamp", *(this + 4));
  v5 = *(this + 212);
  if ((v5 & 0x10) == 0)
  {
LABEL_7:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_51;
  }

LABEL_50:
  PB::TextFormatter::format(a2, "epochMinTimestamp", *(this + 5));
  v5 = *(this + 212);
  if ((v5 & 0x2000) == 0)
  {
LABEL_8:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_52;
  }

LABEL_51:
  PB::TextFormatter::format(a2, "maxRMS", *(this + 27));
  v5 = *(this + 212);
  if ((v5 & 0x4000) == 0)
  {
LABEL_9:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_53;
  }

LABEL_52:
  PB::TextFormatter::format(a2, "numPointsInEpoch", *(this + 28));
  v5 = *(this + 212);
  if ((v5 & 0x8000) == 0)
  {
LABEL_10:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_54;
  }

LABEL_53:
  PB::TextFormatter::format(a2, "numShortAudio", *(this + 29));
  v5 = *(this + 212);
  if ((v5 & 0x10000) == 0)
  {
LABEL_11:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_55;
  }

LABEL_54:
  PB::TextFormatter::format(a2, "planarChaosAtMaxEnergy", *(this + 30));
  v5 = *(this + 212);
  if ((v5 & 0x20000) == 0)
  {
LABEL_12:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_56;
  }

LABEL_55:
  PB::TextFormatter::format(a2, "planarChaosAtMaxSaturation", *(this + 31));
  v5 = *(this + 212);
  if ((v5 & 0x40000) == 0)
  {
LABEL_13:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_57;
  }

LABEL_56:
  PB::TextFormatter::format(a2, "planarEnergyAtMaxChaos", *(this + 32));
  v5 = *(this + 212);
  if ((v5 & 0x80000) == 0)
  {
LABEL_14:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_58;
  }

LABEL_57:
  PB::TextFormatter::format(a2, "planarEnergyAtMaxSaturation", *(this + 33));
  v5 = *(this + 212);
  if ((v5 & 0x100000) == 0)
  {
LABEL_15:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_59;
  }

LABEL_58:
  PB::TextFormatter::format(a2, "planarMaxChaos", *(this + 34));
  v5 = *(this + 212);
  if ((v5 & 0x200000) == 0)
  {
LABEL_16:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_60;
  }

LABEL_59:
  PB::TextFormatter::format(a2, "planarMaxEnergy", *(this + 35));
  v5 = *(this + 212);
  if ((v5 & 0x400000) == 0)
  {
LABEL_17:
    if ((v5 & 0x4000000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_61;
  }

LABEL_60:
  PB::TextFormatter::format(a2, "planarMaxSaturation", *(this + 36));
  v5 = *(this + 212);
  if ((v5 & 0x4000000000) == 0)
  {
LABEL_18:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_62;
  }

LABEL_61:
  PB::TextFormatter::format(a2, "planarPassThru", *(this + 208));
  v5 = *(this + 212);
  if ((v5 & 0x800000) == 0)
  {
LABEL_19:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_63;
  }

LABEL_62:
  PB::TextFormatter::format(a2, "planarSaturationAtMaxChaos", *(this + 37));
  v5 = *(this + 212);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_20:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_64;
  }

LABEL_63:
  PB::TextFormatter::format(a2, "planarSaturationAtMaxEnergy", *(this + 38));
  v5 = *(this + 212);
  if ((v5 & 0x20) == 0)
  {
LABEL_21:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_65;
  }

LABEL_64:
  PB::TextFormatter::format(a2, "planarTimestampAtMaxChaos", *(this + 6));
  v5 = *(this + 212);
  if ((v5 & 0x40) == 0)
  {
LABEL_22:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_66;
  }

LABEL_65:
  PB::TextFormatter::format(a2, "planarTimestampAtMaxEnergy", *(this + 7));
  v5 = *(this + 212);
  if ((v5 & 0x80) == 0)
  {
LABEL_23:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_67;
  }

LABEL_66:
  PB::TextFormatter::format(a2, "planarTimestampAtMaxSaturation", *(this + 8));
  v5 = *(this + 212);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_24:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_68;
  }

LABEL_67:
  PB::TextFormatter::format(a2, "rolloverChaosAtMaxEnergy", *(this + 39));
  v5 = *(this + 212);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_25:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_69;
  }

LABEL_68:
  PB::TextFormatter::format(a2, "rolloverChaosAtMaxSaturation", *(this + 40));
  v5 = *(this + 212);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_26:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_70;
  }

LABEL_69:
  PB::TextFormatter::format(a2, "rolloverEnergyAtMaxChaos", *(this + 41));
  v5 = *(this + 212);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_27:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_71;
  }

LABEL_70:
  PB::TextFormatter::format(a2, "rolloverEnergyAtMaxSaturation", *(this + 42));
  v5 = *(this + 212);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_28:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_72;
  }

LABEL_71:
  PB::TextFormatter::format(a2, "rolloverMaxChaos", *(this + 43));
  v5 = *(this + 212);
  if ((v5 & 0x40000000) == 0)
  {
LABEL_29:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_73;
  }

LABEL_72:
  PB::TextFormatter::format(a2, "rolloverMaxEnergy", *(this + 44));
  v5 = *(this + 212);
  if ((v5 & 0x80000000) == 0)
  {
LABEL_30:
    if ((v5 & 0x8000000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_74;
  }

LABEL_73:
  PB::TextFormatter::format(a2, "rolloverMaxSaturation", *(this + 45));
  v5 = *(this + 212);
  if ((v5 & 0x8000000000) == 0)
  {
LABEL_31:
    if ((v5 & 0x100000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_75;
  }

LABEL_74:
  PB::TextFormatter::format(a2, "rolloverPassThru", *(this + 209));
  v5 = *(this + 212);
  if ((v5 & 0x100000000) == 0)
  {
LABEL_32:
    if ((v5 & 0x200000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_76;
  }

LABEL_75:
  PB::TextFormatter::format(a2, "rolloverSaturationAtMaxChaos", *(this + 46));
  v5 = *(this + 212);
  if ((v5 & 0x200000000) == 0)
  {
LABEL_33:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_77;
  }

LABEL_76:
  PB::TextFormatter::format(a2, "rolloverSaturationAtMaxEnergy", *(this + 47));
  v5 = *(this + 212);
  if ((v5 & 0x100) == 0)
  {
LABEL_34:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_78;
  }

LABEL_77:
  PB::TextFormatter::format(a2, "rolloverTimestampAtMaxChaos", *(this + 9));
  v5 = *(this + 212);
  if ((v5 & 0x200) == 0)
  {
LABEL_35:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_79;
  }

LABEL_78:
  PB::TextFormatter::format(a2, "rolloverTimestampAtMaxEnergy", *(this + 10));
  v5 = *(this + 212);
  if ((v5 & 0x400) == 0)
  {
LABEL_36:
    if ((v5 & 0x400000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_80;
  }

LABEL_79:
  PB::TextFormatter::format(a2, "rolloverTimestampAtMaxSaturation", *(this + 11));
  v5 = *(this + 212);
  if ((v5 & 0x400000000) == 0)
  {
LABEL_37:
    if ((v5 & 0x800000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_81;
  }

LABEL_80:
  PB::TextFormatter::format(a2, "soundEnvelopeCount", *(this + 48));
  v5 = *(this + 212);
  if ((v5 & 0x800000000) == 0)
  {
LABEL_38:
    if ((v5 & 0x1000000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_82;
  }

LABEL_81:
  PB::TextFormatter::format(a2, "soundMaxMeanOverArmSession", *(this + 49));
  v5 = *(this + 212);
  if ((v5 & 0x1000000000) == 0)
  {
LABEL_39:
    if ((v5 & 0x2000000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_83;
  }

LABEL_82:
  PB::TextFormatter::format(a2, "soundMeanCurrentWindow", *(this + 50));
  v5 = *(this + 212);
  if ((v5 & 0x2000000000) == 0)
  {
LABEL_40:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

LABEL_83:
  PB::TextFormatter::format(a2, "soundMeanLast15s", *(this + 51));
  if ((*(this + 212) & 0x800) != 0)
  {
LABEL_41:
    PB::TextFormatter::format(a2, "timestamp", *(this + 12));
  }

LABEL_42:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::SafetyTrustedAudioResult::readFrom(CMMsl::SafetyTrustedAudioResult *this, PB::Reader *a2)
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
            goto LABEL_393;
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
          *(this + 212) |= 0x800uLL;
          v23 = *(a2 + 1);
          v22 = *(a2 + 2);
          v24 = *a2;
          if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v22)
          {
            v218 = 0;
            v219 = 0;
            v27 = 0;
            v17 = v22 >= v23;
            v220 = v22 - v23;
            if (!v17)
            {
              v220 = 0;
            }

            v221 = (v24 + v23);
            v222 = v23 + 1;
            do
            {
              if (!v220)
              {
                v27 = 0;
                *(a2 + 24) = 1;
                goto LABEL_364;
              }

              v223 = *v221;
              *(a2 + 1) = v222;
              v27 |= (v223 & 0x7F) << v218;
              if ((v223 & 0x80) == 0)
              {
                if (*(a2 + 24))
                {
                  v27 = 0;
                }

                goto LABEL_364;
              }

              v218 += 7;
              --v220;
              ++v221;
              ++v222;
              v14 = v219++ > 8;
            }

            while (!v14);
LABEL_254:
            v27 = 0;
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
                goto LABEL_254;
              }
            }
          }

LABEL_364:
          *(this + 12) = v27;
          goto LABEL_329;
        case 2u:
          *(this + 212) |= 0x200000uLL;
          v95 = *(a2 + 1);
          if (v95 > 0xFFFFFFFFFFFFFFFBLL || v95 + 4 > *(a2 + 2))
          {
            goto LABEL_172;
          }

          *(this + 35) = *(*a2 + v95);
          goto LABEL_328;
        case 3u:
          *(this + 212) |= 0x40uLL;
          v84 = *(a2 + 1);
          v83 = *(a2 + 2);
          v85 = *a2;
          if (v84 <= 0xFFFFFFFFFFFFFFF5 && v84 + 10 <= v83)
          {
            v86 = 0;
            v87 = 0;
            v88 = 0;
            v89 = (v85 + v84);
            v90 = v84 + 1;
            do
            {
              *(a2 + 1) = v90;
              v91 = *v89++;
              v88 |= (v91 & 0x7F) << v86;
              if ((v91 & 0x80) == 0)
              {
                goto LABEL_361;
              }

              v86 += 7;
              ++v90;
              v14 = v87++ > 8;
            }

            while (!v14);
LABEL_246:
            v88 = 0;
            goto LABEL_361;
          }

          v212 = 0;
          v213 = 0;
          v88 = 0;
          v17 = v83 >= v84;
          v214 = v83 - v84;
          if (!v17)
          {
            v214 = 0;
          }

          v215 = (v85 + v84);
          v216 = v84 + 1;
          while (2)
          {
            if (v214)
            {
              v217 = *v215;
              *(a2 + 1) = v216;
              v88 |= (v217 & 0x7F) << v212;
              if (v217 < 0)
              {
                v212 += 7;
                --v214;
                ++v215;
                ++v216;
                v14 = v213++ > 8;
                if (v14)
                {
                  goto LABEL_246;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v88 = 0;
              }
            }

            else
            {
              v88 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_361:
          *(this + 7) = v88;
          goto LABEL_329;
        case 4u:
          *(this + 212) |= 0x10000uLL;
          v93 = *(a2 + 1);
          if (v93 > 0xFFFFFFFFFFFFFFFBLL || v93 + 4 > *(a2 + 2))
          {
            goto LABEL_172;
          }

          *(this + 30) = *(*a2 + v93);
          goto LABEL_328;
        case 5u:
          *(this + 212) |= 0x1000000uLL;
          v78 = *(a2 + 1);
          if (v78 > 0xFFFFFFFFFFFFFFFBLL || v78 + 4 > *(a2 + 2))
          {
            goto LABEL_172;
          }

          *(this + 38) = *(*a2 + v78);
          goto LABEL_328;
        case 6u:
          *(this + 212) |= 0x100000uLL;
          v99 = *(a2 + 1);
          if (v99 > 0xFFFFFFFFFFFFFFFBLL || v99 + 4 > *(a2 + 2))
          {
            goto LABEL_172;
          }

          *(this + 34) = *(*a2 + v99);
          goto LABEL_328;
        case 7u:
          *(this + 212) |= 0x20uLL;
          v103 = *(a2 + 1);
          v102 = *(a2 + 2);
          v104 = *a2;
          if (v103 <= 0xFFFFFFFFFFFFFFF5 && v103 + 10 <= v102)
          {
            v105 = 0;
            v106 = 0;
            v107 = 0;
            v108 = (v104 + v103);
            v109 = v103 + 1;
            do
            {
              *(a2 + 1) = v109;
              v110 = *v108++;
              v107 |= (v110 & 0x7F) << v105;
              if ((v110 & 0x80) == 0)
              {
                goto LABEL_367;
              }

              v105 += 7;
              ++v109;
              v14 = v106++ > 8;
            }

            while (!v14);
LABEL_262:
            v107 = 0;
            goto LABEL_367;
          }

          v224 = 0;
          v225 = 0;
          v107 = 0;
          v17 = v102 >= v103;
          v226 = v102 - v103;
          if (!v17)
          {
            v226 = 0;
          }

          v227 = (v104 + v103);
          v228 = v103 + 1;
          while (2)
          {
            if (v226)
            {
              v229 = *v227;
              *(a2 + 1) = v228;
              v107 |= (v229 & 0x7F) << v224;
              if (v229 < 0)
              {
                v224 += 7;
                --v226;
                ++v227;
                ++v228;
                v14 = v225++ > 8;
                if (v14)
                {
                  goto LABEL_262;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v107 = 0;
              }
            }

            else
            {
              v107 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_367:
          *(this + 6) = v107;
          goto LABEL_329;
        case 8u:
          *(this + 212) |= 0x40000uLL;
          v94 = *(a2 + 1);
          if (v94 > 0xFFFFFFFFFFFFFFFBLL || v94 + 4 > *(a2 + 2))
          {
            goto LABEL_172;
          }

          *(this + 32) = *(*a2 + v94);
          goto LABEL_328;
        case 9u:
          *(this + 212) |= 0x800000uLL;
          v129 = *(a2 + 1);
          if (v129 > 0xFFFFFFFFFFFFFFFBLL || v129 + 4 > *(a2 + 2))
          {
            goto LABEL_172;
          }

          *(this + 37) = *(*a2 + v129);
          goto LABEL_328;
        case 0xAu:
          *(this + 212) |= 0x400000uLL;
          v80 = *(a2 + 1);
          if (v80 > 0xFFFFFFFFFFFFFFFBLL || v80 + 4 > *(a2 + 2))
          {
            goto LABEL_172;
          }

          *(this + 36) = *(*a2 + v80);
          goto LABEL_328;
        case 0xBu:
          *(this + 212) |= 0x80uLL;
          v121 = *(a2 + 1);
          v120 = *(a2 + 2);
          v122 = *a2;
          if (v121 <= 0xFFFFFFFFFFFFFFF5 && v121 + 10 <= v120)
          {
            v123 = 0;
            v124 = 0;
            v125 = 0;
            v126 = (v122 + v121);
            v127 = v121 + 1;
            do
            {
              *(a2 + 1) = v127;
              v128 = *v126++;
              v125 |= (v128 & 0x7F) << v123;
              if ((v128 & 0x80) == 0)
              {
                goto LABEL_373;
              }

              v123 += 7;
              ++v127;
              v14 = v124++ > 8;
            }

            while (!v14);
LABEL_278:
            v125 = 0;
            goto LABEL_373;
          }

          v236 = 0;
          v237 = 0;
          v125 = 0;
          v17 = v120 >= v121;
          v238 = v120 - v121;
          if (!v17)
          {
            v238 = 0;
          }

          v239 = (v122 + v121);
          v240 = v121 + 1;
          while (2)
          {
            if (v238)
            {
              v241 = *v239;
              *(a2 + 1) = v240;
              v125 |= (v241 & 0x7F) << v236;
              if (v241 < 0)
              {
                v236 += 7;
                --v238;
                ++v239;
                ++v240;
                v14 = v237++ > 8;
                if (v14)
                {
                  goto LABEL_278;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v125 = 0;
              }
            }

            else
            {
              v125 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_373:
          *(this + 8) = v125;
          goto LABEL_329;
        case 0xCu:
          *(this + 212) |= 0x20000uLL;
          v77 = *(a2 + 1);
          if (v77 > 0xFFFFFFFFFFFFFFFBLL || v77 + 4 > *(a2 + 2))
          {
            goto LABEL_172;
          }

          *(this + 31) = *(*a2 + v77);
          goto LABEL_328;
        case 0xDu:
          *(this + 212) |= 0x80000uLL;
          v79 = *(a2 + 1);
          if (v79 > 0xFFFFFFFFFFFFFFFBLL || v79 + 4 > *(a2 + 2))
          {
            goto LABEL_172;
          }

          *(this + 33) = *(*a2 + v79);
          goto LABEL_328;
        case 0xEu:
          *(this + 212) |= 0x40000000uLL;
          v101 = *(a2 + 1);
          if (v101 > 0xFFFFFFFFFFFFFFFBLL || v101 + 4 > *(a2 + 2))
          {
            goto LABEL_172;
          }

          *(this + 44) = *(*a2 + v101);
          goto LABEL_328;
        case 0xFu:
          *(this + 212) |= 0x200uLL;
          v68 = *(a2 + 1);
          v67 = *(a2 + 2);
          v69 = *a2;
          if (v68 <= 0xFFFFFFFFFFFFFFF5 && v68 + 10 <= v67)
          {
            v70 = 0;
            v71 = 0;
            v72 = 0;
            v73 = (v69 + v68);
            v74 = v68 + 1;
            do
            {
              *(a2 + 1) = v74;
              v75 = *v73++;
              v72 |= (v75 & 0x7F) << v70;
              if ((v75 & 0x80) == 0)
              {
                goto LABEL_358;
              }

              v70 += 7;
              ++v74;
              v14 = v71++ > 8;
            }

            while (!v14);
LABEL_238:
            v72 = 0;
            goto LABEL_358;
          }

          v206 = 0;
          v207 = 0;
          v72 = 0;
          v17 = v67 >= v68;
          v208 = v67 - v68;
          if (!v17)
          {
            v208 = 0;
          }

          v209 = (v69 + v68);
          v210 = v68 + 1;
          while (2)
          {
            if (v208)
            {
              v211 = *v209;
              *(a2 + 1) = v210;
              v72 |= (v211 & 0x7F) << v206;
              if (v211 < 0)
              {
                v206 += 7;
                --v208;
                ++v209;
                ++v210;
                v14 = v207++ > 8;
                if (v14)
                {
                  goto LABEL_238;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v72 = 0;
              }
            }

            else
            {
              v72 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_358:
          *(this + 10) = v72;
          goto LABEL_329;
        case 0x10u:
          *(this + 212) |= 0x2000000uLL;
          v92 = *(a2 + 1);
          if (v92 > 0xFFFFFFFFFFFFFFFBLL || v92 + 4 > *(a2 + 2))
          {
            goto LABEL_172;
          }

          *(this + 39) = *(*a2 + v92);
          goto LABEL_328;
        case 0x11u:
          *(this + 212) |= 0x200000000uLL;
          v66 = *(a2 + 1);
          if (v66 > 0xFFFFFFFFFFFFFFFBLL || v66 + 4 > *(a2 + 2))
          {
            goto LABEL_172;
          }

          *(this + 47) = *(*a2 + v66);
          goto LABEL_328;
        case 0x12u:
          *(this + 212) |= 0x20000000uLL;
          v97 = *(a2 + 1);
          if (v97 > 0xFFFFFFFFFFFFFFFBLL || v97 + 4 > *(a2 + 2))
          {
            goto LABEL_172;
          }

          *(this + 43) = *(*a2 + v97);
          goto LABEL_328;
        case 0x13u:
          *(this + 212) |= 0x100uLL;
          v112 = *(a2 + 1);
          v111 = *(a2 + 2);
          v113 = *a2;
          if (v112 <= 0xFFFFFFFFFFFFFFF5 && v112 + 10 <= v111)
          {
            v114 = 0;
            v115 = 0;
            v116 = 0;
            v117 = (v113 + v112);
            v118 = v112 + 1;
            do
            {
              *(a2 + 1) = v118;
              v119 = *v117++;
              v116 |= (v119 & 0x7F) << v114;
              if ((v119 & 0x80) == 0)
              {
                goto LABEL_370;
              }

              v114 += 7;
              ++v118;
              v14 = v115++ > 8;
            }

            while (!v14);
LABEL_270:
            v116 = 0;
            goto LABEL_370;
          }

          v230 = 0;
          v231 = 0;
          v116 = 0;
          v17 = v111 >= v112;
          v232 = v111 - v112;
          if (!v17)
          {
            v232 = 0;
          }

          v233 = (v113 + v112);
          v234 = v112 + 1;
          while (2)
          {
            if (v232)
            {
              v235 = *v233;
              *(a2 + 1) = v234;
              v116 |= (v235 & 0x7F) << v230;
              if (v235 < 0)
              {
                v230 += 7;
                --v232;
                ++v233;
                ++v234;
                v14 = v231++ > 8;
                if (v14)
                {
                  goto LABEL_270;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v116 = 0;
              }
            }

            else
            {
              v116 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_370:
          *(this + 9) = v116;
          goto LABEL_329;
        case 0x14u:
          *(this + 212) |= 0x8000000uLL;
          v150 = *(a2 + 1);
          if (v150 > 0xFFFFFFFFFFFFFFFBLL || v150 + 4 > *(a2 + 2))
          {
            goto LABEL_172;
          }

          *(this + 41) = *(*a2 + v150);
          goto LABEL_328;
        case 0x15u:
          *(this + 212) |= &_mh_execute_header;
          v98 = *(a2 + 1);
          if (v98 > 0xFFFFFFFFFFFFFFFBLL || v98 + 4 > *(a2 + 2))
          {
            goto LABEL_172;
          }

          *(this + 46) = *(*a2 + v98);
          goto LABEL_328;
        case 0x16u:
          *(this + 212) |= 0x80000000uLL;
          v100 = *(a2 + 1);
          if (v100 > 0xFFFFFFFFFFFFFFFBLL || v100 + 4 > *(a2 + 2))
          {
            goto LABEL_172;
          }

          *(this + 45) = *(*a2 + v100);
          goto LABEL_328;
        case 0x17u:
          *(this + 212) |= 0x400uLL;
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
                goto LABEL_376;
              }

              v135 += 7;
              ++v139;
              v14 = v136++ > 8;
            }

            while (!v14);
LABEL_286:
            v137 = 0;
            goto LABEL_376;
          }

          v242 = 0;
          v243 = 0;
          v137 = 0;
          v17 = v132 >= v133;
          v244 = v132 - v133;
          if (!v17)
          {
            v244 = 0;
          }

          v245 = (v134 + v133);
          v246 = v133 + 1;
          while (2)
          {
            if (v244)
            {
              v247 = *v245;
              *(a2 + 1) = v246;
              v137 |= (v247 & 0x7F) << v242;
              if (v247 < 0)
              {
                v242 += 7;
                --v244;
                ++v245;
                ++v246;
                v14 = v243++ > 8;
                if (v14)
                {
                  goto LABEL_286;
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

LABEL_376:
          *(this + 11) = v137;
          goto LABEL_329;
        case 0x18u:
          *(this + 212) |= 0x4000000uLL;
          v151 = *(a2 + 1);
          if (v151 > 0xFFFFFFFFFFFFFFFBLL || v151 + 4 > *(a2 + 2))
          {
            goto LABEL_172;
          }

          *(this + 40) = *(*a2 + v151);
          goto LABEL_328;
        case 0x19u:
          *(this + 212) |= 0x10000000uLL;
          v82 = *(a2 + 1);
          if (v82 > 0xFFFFFFFFFFFFFFFBLL || v82 + 4 > *(a2 + 2))
          {
            goto LABEL_172;
          }

          *(this + 42) = *(*a2 + v82);
          goto LABEL_328;
        case 0x1Au:
          *(this + 212) |= 0x2000uLL;
          v81 = *(a2 + 1);
          if (v81 > 0xFFFFFFFFFFFFFFFBLL || v81 + 4 > *(a2 + 2))
          {
            goto LABEL_172;
          }

          *(this + 27) = *(*a2 + v81);
          goto LABEL_328;
        case 0x1Bu:
          *(this + 212) |= 0x8000uLL;
          v180 = *(a2 + 1);
          v179 = *(a2 + 2);
          v181 = *a2;
          if (v180 <= 0xFFFFFFFFFFFFFFF5 && v180 + 10 <= v179)
          {
            v182 = 0;
            v183 = 0;
            v184 = 0;
            v185 = (v181 + v180);
            v186 = v180 + 1;
            do
            {
              *(a2 + 1) = v186;
              v187 = *v185++;
              v184 |= (v187 & 0x7F) << v182;
              if ((v187 & 0x80) == 0)
              {
                goto LABEL_391;
              }

              v182 += 7;
              ++v186;
              v14 = v183++ > 8;
            }

            while (!v14);
LABEL_326:
            LODWORD(v184) = 0;
            goto LABEL_391;
          }

          v272 = 0;
          v273 = 0;
          v184 = 0;
          v17 = v179 >= v180;
          v274 = v179 - v180;
          if (!v17)
          {
            v274 = 0;
          }

          v275 = (v181 + v180);
          v276 = v180 + 1;
          while (2)
          {
            if (v274)
            {
              v277 = *v275;
              *(a2 + 1) = v276;
              v184 |= (v277 & 0x7F) << v272;
              if (v277 < 0)
              {
                v272 += 7;
                --v274;
                ++v275;
                ++v276;
                v14 = v273++ > 8;
                if (v14)
                {
                  goto LABEL_326;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v184) = 0;
              }
            }

            else
            {
              LODWORD(v184) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_391:
          *(this + 29) = v184;
          goto LABEL_329;
        case 0x1Cu:
          *(this + 212) |= 0x4000uLL;
          v54 = *(a2 + 1);
          v53 = *(a2 + 2);
          v55 = *a2;
          if (v54 <= 0xFFFFFFFFFFFFFFF5 && v54 + 10 <= v53)
          {
            v56 = 0;
            v57 = 0;
            v58 = 0;
            v59 = (v55 + v54);
            v60 = v54 + 1;
            do
            {
              *(a2 + 1) = v60;
              v61 = *v59++;
              v58 |= (v61 & 0x7F) << v56;
              if ((v61 & 0x80) == 0)
              {
                goto LABEL_355;
              }

              v56 += 7;
              ++v60;
              v14 = v57++ > 8;
            }

            while (!v14);
LABEL_228:
            LODWORD(v58) = 0;
            goto LABEL_355;
          }

          v200 = 0;
          v201 = 0;
          v58 = 0;
          v17 = v53 >= v54;
          v202 = v53 - v54;
          if (!v17)
          {
            v202 = 0;
          }

          v203 = (v55 + v54);
          v204 = v54 + 1;
          while (2)
          {
            if (v202)
            {
              v205 = *v203;
              *(a2 + 1) = v204;
              v58 |= (v205 & 0x7F) << v200;
              if (v205 < 0)
              {
                v200 += 7;
                --v202;
                ++v203;
                ++v204;
                v14 = v201++ > 8;
                if (v14)
                {
                  goto LABEL_228;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v58) = 0;
              }
            }

            else
            {
              LODWORD(v58) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_355:
          *(this + 28) = v58;
          goto LABEL_329;
        case 0x1Du:
          *(this + 212) |= 0x10uLL;
          v153 = *(a2 + 1);
          v152 = *(a2 + 2);
          v154 = *a2;
          if (v153 <= 0xFFFFFFFFFFFFFFF5 && v153 + 10 <= v152)
          {
            v155 = 0;
            v156 = 0;
            v157 = 0;
            v158 = (v154 + v153);
            v159 = v153 + 1;
            do
            {
              *(a2 + 1) = v159;
              v160 = *v158++;
              v157 |= (v160 & 0x7F) << v155;
              if ((v160 & 0x80) == 0)
              {
                goto LABEL_382;
              }

              v155 += 7;
              ++v159;
              v14 = v156++ > 8;
            }

            while (!v14);
LABEL_302:
            v157 = 0;
            goto LABEL_382;
          }

          v254 = 0;
          v255 = 0;
          v157 = 0;
          v17 = v152 >= v153;
          v256 = v152 - v153;
          if (!v17)
          {
            v256 = 0;
          }

          v257 = (v154 + v153);
          v258 = v153 + 1;
          while (2)
          {
            if (v256)
            {
              v259 = *v257;
              *(a2 + 1) = v258;
              v157 |= (v259 & 0x7F) << v254;
              if (v259 < 0)
              {
                v254 += 7;
                --v256;
                ++v257;
                ++v258;
                v14 = v255++ > 8;
                if (v14)
                {
                  goto LABEL_302;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v157 = 0;
              }
            }

            else
            {
              v157 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_382:
          *(this + 5) = v157;
          goto LABEL_329;
        case 0x1Eu:
          *(this + 212) |= 8uLL;
          v162 = *(a2 + 1);
          v161 = *(a2 + 2);
          v163 = *a2;
          if (v162 <= 0xFFFFFFFFFFFFFFF5 && v162 + 10 <= v161)
          {
            v164 = 0;
            v165 = 0;
            v166 = 0;
            v167 = (v163 + v162);
            v168 = v162 + 1;
            do
            {
              *(a2 + 1) = v168;
              v169 = *v167++;
              v166 |= (v169 & 0x7F) << v164;
              if ((v169 & 0x80) == 0)
              {
                goto LABEL_385;
              }

              v164 += 7;
              ++v168;
              v14 = v165++ > 8;
            }

            while (!v14);
LABEL_310:
            v166 = 0;
            goto LABEL_385;
          }

          v260 = 0;
          v261 = 0;
          v166 = 0;
          v17 = v161 >= v162;
          v262 = v161 - v162;
          if (!v17)
          {
            v262 = 0;
          }

          v263 = (v163 + v162);
          v264 = v162 + 1;
          while (2)
          {
            if (v262)
            {
              v265 = *v263;
              *(a2 + 1) = v264;
              v166 |= (v265 & 0x7F) << v260;
              if (v265 < 0)
              {
                v260 += 7;
                --v262;
                ++v263;
                ++v264;
                v14 = v261++ > 8;
                if (v14)
                {
                  goto LABEL_310;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v166 = 0;
              }
            }

            else
            {
              v166 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_385:
          *(this + 4) = v166;
          goto LABEL_329;
        case 0x1Fu:
          *(this + 212) |= 0x800000000uLL;
          v130 = *(a2 + 1);
          if (v130 > 0xFFFFFFFFFFFFFFFBLL || v130 + 4 > *(a2 + 2))
          {
            goto LABEL_172;
          }

          *(this + 49) = *(*a2 + v130);
          goto LABEL_328;
        case 0x20u:
          *(this + 212) |= 0x2000000000uLL;
          v96 = *(a2 + 1);
          if (v96 > 0xFFFFFFFFFFFFFFFBLL || v96 + 4 > *(a2 + 2))
          {
            goto LABEL_172;
          }

          *(this + 51) = *(*a2 + v96);
          goto LABEL_328;
        case 0x21u:
          *(this + 212) |= 0x1000000000uLL;
          v131 = *(a2 + 1);
          if (v131 > 0xFFFFFFFFFFFFFFFBLL || v131 + 4 > *(a2 + 2))
          {
            goto LABEL_172;
          }

          *(this + 50) = *(*a2 + v131);
          goto LABEL_328;
        case 0x22u:
          *(this + 212) |= 0x400000000uLL;
          v76 = *(a2 + 1);
          if (v76 > 0xFFFFFFFFFFFFFFFBLL || v76 + 4 > *(a2 + 2))
          {
LABEL_172:
            *(a2 + 24) = 1;
          }

          else
          {
            *(this + 48) = *(*a2 + v76);
LABEL_328:
            *(a2 + 1) += 4;
          }

          goto LABEL_329;
        case 0x23u:
          *(this + 212) |= 0x4000000000uLL;
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

          *(this + 208) = v65;
          goto LABEL_329;
        case 0x24u:
          *(this + 212) |= 0x8000000000uLL;
          v40 = *(a2 + 1);
          if (v40 >= *(a2 + 2))
          {
            v43 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v41 = v40 + 1;
            v42 = *(*a2 + v40);
            *(a2 + 1) = v41;
            v43 = v42 != 0;
          }

          *(this + 209) = v43;
          goto LABEL_329;
        case 0x25u:
          *(this + 212) |= 0x1000uLL;
          v45 = *(a2 + 1);
          v44 = *(a2 + 2);
          v46 = *a2;
          if (v45 <= 0xFFFFFFFFFFFFFFF5 && v45 + 10 <= v44)
          {
            v47 = 0;
            v48 = 0;
            v49 = 0;
            v50 = (v46 + v45);
            v51 = v45 + 1;
            do
            {
              *(a2 + 1) = v51;
              v52 = *v50++;
              v49 |= (v52 & 0x7F) << v47;
              if ((v52 & 0x80) == 0)
              {
                goto LABEL_352;
              }

              v47 += 7;
              ++v51;
              v14 = v48++ > 8;
            }

            while (!v14);
LABEL_220:
            LODWORD(v49) = 0;
            goto LABEL_352;
          }

          v194 = 0;
          v195 = 0;
          v49 = 0;
          v17 = v44 >= v45;
          v196 = v44 - v45;
          if (!v17)
          {
            v196 = 0;
          }

          v197 = (v46 + v45);
          v198 = v45 + 1;
          while (2)
          {
            if (v196)
            {
              v199 = *v197;
              *(a2 + 1) = v198;
              v49 |= (v199 & 0x7F) << v194;
              if (v199 < 0)
              {
                v194 += 7;
                --v196;
                ++v197;
                ++v198;
                v14 = v195++ > 8;
                if (v14)
                {
                  goto LABEL_220;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v49) = 0;
              }
            }

            else
            {
              LODWORD(v49) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_352:
          *(this + 26) = v49;
          goto LABEL_329;
        case 0x26u:
          *(this + 212) |= 4uLL;
          v32 = *(a2 + 1);
          v31 = *(a2 + 2);
          v33 = *a2;
          if (v32 <= 0xFFFFFFFFFFFFFFF5 && v32 + 10 <= v31)
          {
            v34 = 0;
            v35 = 0;
            v36 = 0;
            v37 = (v33 + v32);
            v38 = v32 + 1;
            do
            {
              *(a2 + 1) = v38;
              v39 = *v37++;
              v36 |= (v39 & 0x7F) << v34;
              if ((v39 & 0x80) == 0)
              {
                goto LABEL_349;
              }

              v34 += 7;
              ++v38;
              v14 = v35++ > 8;
            }

            while (!v14);
LABEL_210:
            v36 = 0;
            goto LABEL_349;
          }

          v188 = 0;
          v189 = 0;
          v36 = 0;
          v17 = v31 >= v32;
          v190 = v31 - v32;
          if (!v17)
          {
            v190 = 0;
          }

          v191 = (v33 + v32);
          v192 = v32 + 1;
          while (2)
          {
            if (v190)
            {
              v193 = *v191;
              *(a2 + 1) = v192;
              v36 |= (v193 & 0x7F) << v188;
              if (v193 < 0)
              {
                v188 += 7;
                --v190;
                ++v191;
                ++v192;
                v14 = v189++ > 8;
                if (v14)
                {
                  goto LABEL_210;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v36 = 0;
              }
            }

            else
            {
              v36 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_349:
          *(this + 3) = v36;
          goto LABEL_329;
        case 0x27u:
          *(this + 212) |= 2uLL;
          v171 = *(a2 + 1);
          v170 = *(a2 + 2);
          v172 = *a2;
          if (v171 <= 0xFFFFFFFFFFFFFFF5 && v171 + 10 <= v170)
          {
            v173 = 0;
            v174 = 0;
            v175 = 0;
            v176 = (v172 + v171);
            v177 = v171 + 1;
            do
            {
              *(a2 + 1) = v177;
              v178 = *v176++;
              v175 |= (v178 & 0x7F) << v173;
              if ((v178 & 0x80) == 0)
              {
                goto LABEL_388;
              }

              v173 += 7;
              ++v177;
              v14 = v174++ > 8;
            }

            while (!v14);
LABEL_318:
            v175 = 0;
            goto LABEL_388;
          }

          v266 = 0;
          v267 = 0;
          v175 = 0;
          v17 = v170 >= v171;
          v268 = v170 - v171;
          if (!v17)
          {
            v268 = 0;
          }

          v269 = (v172 + v171);
          v270 = v171 + 1;
          while (2)
          {
            if (v268)
            {
              v271 = *v269;
              *(a2 + 1) = v270;
              v175 |= (v271 & 0x7F) << v266;
              if (v271 < 0)
              {
                v266 += 7;
                --v268;
                ++v269;
                ++v270;
                v14 = v267++ > 8;
                if (v14)
                {
                  goto LABEL_318;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v175 = 0;
              }
            }

            else
            {
              v175 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_388:
          *(this + 2) = v175;
          goto LABEL_329;
        case 0x28u:
          *(this + 212) |= 1uLL;
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
                goto LABEL_379;
              }

              v144 += 7;
              ++v148;
              v14 = v145++ > 8;
            }

            while (!v14);
LABEL_294:
            v146 = 0;
            goto LABEL_379;
          }

          v248 = 0;
          v249 = 0;
          v146 = 0;
          v17 = v141 >= v142;
          v250 = v141 - v142;
          if (!v17)
          {
            v250 = 0;
          }

          v251 = (v143 + v142);
          v252 = v142 + 1;
          break;
        default:
          if (PB::Reader::skip(a2, v10 >> 3, v10 & 7, 0))
          {
            goto LABEL_329;
          }

          v279 = 0;
          return v279 & 1;
      }

      while (1)
      {
        if (!v250)
        {
          v146 = 0;
          *(a2 + 24) = 1;
          goto LABEL_379;
        }

        v253 = *v251;
        *(a2 + 1) = v252;
        v146 |= (v253 & 0x7F) << v248;
        if ((v253 & 0x80) == 0)
        {
          break;
        }

        v248 += 7;
        --v250;
        ++v251;
        ++v252;
        v14 = v249++ > 8;
        if (v14)
        {
          goto LABEL_294;
        }
      }

      if (*(a2 + 24))
      {
        v146 = 0;
      }

LABEL_379:
      *(this + 1) = v146;
LABEL_329:
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

LABEL_393:
  v279 = v4 ^ 1;
  return v279 & 1;
}

uint64_t CMMsl::SafetyTrustedAudioResult::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 212);
  if ((v4 & 0x800) != 0)
  {
    this = PB::Writer::writeVarInt(a2, *(this + 96), 1u);
    v4 = *(v3 + 212);
    if ((v4 & 0x200000) == 0)
    {
LABEL_3:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_44;
    }
  }

  else if ((v4 & 0x200000) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 140), 2u);
  v4 = *(v3 + 212);
  if ((v4 & 0x40) == 0)
  {
LABEL_4:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_45;
  }

LABEL_44:
  this = PB::Writer::writeVarInt(a2, *(v3 + 56), 3u);
  v4 = *(v3 + 212);
  if ((v4 & 0x10000) == 0)
  {
LABEL_5:
    if ((v4 & 0x1000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_46;
  }

LABEL_45:
  this = PB::Writer::write(a2, *(v3 + 120), 4u);
  v4 = *(v3 + 212);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_6:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_47;
  }

LABEL_46:
  this = PB::Writer::write(a2, *(v3 + 152), 5u);
  v4 = *(v3 + 212);
  if ((v4 & 0x100000) == 0)
  {
LABEL_7:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_48;
  }

LABEL_47:
  this = PB::Writer::write(a2, *(v3 + 136), 6u);
  v4 = *(v3 + 212);
  if ((v4 & 0x20) == 0)
  {
LABEL_8:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_49;
  }

LABEL_48:
  this = PB::Writer::writeVarInt(a2, *(v3 + 48), 7u);
  v4 = *(v3 + 212);
  if ((v4 & 0x40000) == 0)
  {
LABEL_9:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_50;
  }

LABEL_49:
  this = PB::Writer::write(a2, *(v3 + 128), 8u);
  v4 = *(v3 + 212);
  if ((v4 & 0x800000) == 0)
  {
LABEL_10:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_51;
  }

LABEL_50:
  this = PB::Writer::write(a2, *(v3 + 148), 9u);
  v4 = *(v3 + 212);
  if ((v4 & 0x400000) == 0)
  {
LABEL_11:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_52;
  }

LABEL_51:
  this = PB::Writer::write(a2, *(v3 + 144), 0xAu);
  v4 = *(v3 + 212);
  if ((v4 & 0x80) == 0)
  {
LABEL_12:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_53;
  }

LABEL_52:
  this = PB::Writer::writeVarInt(a2, *(v3 + 64), 0xBu);
  v4 = *(v3 + 212);
  if ((v4 & 0x20000) == 0)
  {
LABEL_13:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_54;
  }

LABEL_53:
  this = PB::Writer::write(a2, *(v3 + 124), 0xCu);
  v4 = *(v3 + 212);
  if ((v4 & 0x80000) == 0)
  {
LABEL_14:
    if ((v4 & 0x40000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_55;
  }

LABEL_54:
  this = PB::Writer::write(a2, *(v3 + 132), 0xDu);
  v4 = *(v3 + 212);
  if ((v4 & 0x40000000) == 0)
  {
LABEL_15:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_56;
  }

LABEL_55:
  this = PB::Writer::write(a2, *(v3 + 176), 0xEu);
  v4 = *(v3 + 212);
  if ((v4 & 0x200) == 0)
  {
LABEL_16:
    if ((v4 & 0x2000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_57;
  }

LABEL_56:
  this = PB::Writer::writeVarInt(a2, *(v3 + 80), 0xFu);
  v4 = *(v3 + 212);
  if ((v4 & 0x2000000) == 0)
  {
LABEL_17:
    if ((v4 & 0x200000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_58;
  }

LABEL_57:
  this = PB::Writer::write(a2, *(v3 + 156), 0x10u);
  v4 = *(v3 + 212);
  if ((v4 & 0x200000000) == 0)
  {
LABEL_18:
    if ((v4 & 0x20000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_59;
  }

LABEL_58:
  this = PB::Writer::write(a2, *(v3 + 188), 0x11u);
  v4 = *(v3 + 212);
  if ((v4 & 0x20000000) == 0)
  {
LABEL_19:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_60;
  }

LABEL_59:
  this = PB::Writer::write(a2, *(v3 + 172), 0x12u);
  v4 = *(v3 + 212);
  if ((v4 & 0x100) == 0)
  {
LABEL_20:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_61;
  }

LABEL_60:
  this = PB::Writer::writeVarInt(a2, *(v3 + 72), 0x13u);
  v4 = *(v3 + 212);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_21:
    if ((v4 & 0x100000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_62;
  }

LABEL_61:
  this = PB::Writer::write(a2, *(v3 + 164), 0x14u);
  v4 = *(v3 + 212);
  if ((v4 & 0x100000000) == 0)
  {
LABEL_22:
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_63;
  }

LABEL_62:
  this = PB::Writer::write(a2, *(v3 + 184), 0x15u);
  v4 = *(v3 + 212);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_23:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_64;
  }

LABEL_63:
  this = PB::Writer::write(a2, *(v3 + 180), 0x16u);
  v4 = *(v3 + 212);
  if ((v4 & 0x400) == 0)
  {
LABEL_24:
    if ((v4 & 0x4000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_65;
  }

LABEL_64:
  this = PB::Writer::writeVarInt(a2, *(v3 + 88), 0x17u);
  v4 = *(v3 + 212);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_25:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_66;
  }

LABEL_65:
  this = PB::Writer::write(a2, *(v3 + 160), 0x18u);
  v4 = *(v3 + 212);
  if ((v4 & 0x10000000) == 0)
  {
LABEL_26:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_67;
  }

LABEL_66:
  this = PB::Writer::write(a2, *(v3 + 168), 0x19u);
  v4 = *(v3 + 212);
  if ((v4 & 0x2000) == 0)
  {
LABEL_27:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_68;
  }

LABEL_67:
  this = PB::Writer::write(a2, *(v3 + 108), 0x1Au);
  v4 = *(v3 + 212);
  if ((v4 & 0x8000) == 0)
  {
LABEL_28:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_69;
  }

LABEL_68:
  this = PB::Writer::writeVarInt(a2, *(v3 + 116), 0x1Bu);
  v4 = *(v3 + 212);
  if ((v4 & 0x4000) == 0)
  {
LABEL_29:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_70;
  }

LABEL_69:
  this = PB::Writer::writeVarInt(a2, *(v3 + 112), 0x1Cu);
  v4 = *(v3 + 212);
  if ((v4 & 0x10) == 0)
  {
LABEL_30:
    if ((v4 & 8) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_71;
  }

LABEL_70:
  this = PB::Writer::writeVarInt(a2, *(v3 + 40), 0x1Du);
  v4 = *(v3 + 212);
  if ((v4 & 8) == 0)
  {
LABEL_31:
    if ((v4 & 0x800000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_72;
  }

LABEL_71:
  this = PB::Writer::writeVarInt(a2, *(v3 + 32), 0x1Eu);
  v4 = *(v3 + 212);
  if ((v4 & 0x800000000) == 0)
  {
LABEL_32:
    if ((v4 & 0x2000000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_73;
  }

LABEL_72:
  this = PB::Writer::write(a2, *(v3 + 196), 0x1Fu);
  v4 = *(v3 + 212);
  if ((v4 & 0x2000000000) == 0)
  {
LABEL_33:
    if ((v4 & 0x1000000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_74;
  }

LABEL_73:
  this = PB::Writer::write(a2, *(v3 + 204), 0x20u);
  v4 = *(v3 + 212);
  if ((v4 & 0x1000000000) == 0)
  {
LABEL_34:
    if ((v4 & 0x400000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_75;
  }

LABEL_74:
  this = PB::Writer::write(a2, *(v3 + 200), 0x21u);
  v4 = *(v3 + 212);
  if ((v4 & 0x400000000) == 0)
  {
LABEL_35:
    if ((v4 & 0x4000000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_76;
  }

LABEL_75:
  this = PB::Writer::write(a2, *(v3 + 192), 0x22u);
  v4 = *(v3 + 212);
  if ((v4 & 0x4000000000) == 0)
  {
LABEL_36:
    if ((v4 & 0x8000000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_77;
  }

LABEL_76:
  this = PB::Writer::write(a2, *(v3 + 208), 0x23u);
  v4 = *(v3 + 212);
  if ((v4 & 0x8000000000) == 0)
  {
LABEL_37:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_78;
  }

LABEL_77:
  this = PB::Writer::write(a2, *(v3 + 209), 0x24u);
  v4 = *(v3 + 212);
  if ((v4 & 0x1000) == 0)
  {
LABEL_38:
    if ((v4 & 4) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_79;
  }

LABEL_78:
  this = PB::Writer::writeVarInt(a2, *(v3 + 104), 0x25u);
  v4 = *(v3 + 212);
  if ((v4 & 4) == 0)
  {
LABEL_39:
    if ((v4 & 2) == 0)
    {
      goto LABEL_40;
    }

LABEL_80:
    this = PB::Writer::writeVarInt(a2, *(v3 + 16), 0x27u);
    if ((*(v3 + 212) & 1) == 0)
    {
      return this;
    }

    goto LABEL_81;
  }

LABEL_79:
  this = PB::Writer::writeVarInt(a2, *(v3 + 24), 0x26u);
  v4 = *(v3 + 212);
  if ((v4 & 2) != 0)
  {
    goto LABEL_80;
  }

LABEL_40:
  if ((v4 & 1) == 0)
  {
    return this;
  }

LABEL_81:
  v5 = *(v3 + 8);

  return PB::Writer::writeVarInt(a2, v5, 0x28u);
}

uint64_t CMMsl::SafetyTrustedAudioResult::hash_value(CMMsl::SafetyTrustedAudioResult *this)
{
  v1 = *(this + 212);
  if ((v1 & 0x800) != 0)
  {
    v2 = *(this + 12);
  }

  else
  {
    v2 = 0;
  }

  if ((v1 & 0x200000) != 0)
  {
    v60 = *(this + 35);
    v61 = LODWORD(v60);
    if (v60 == 0.0)
    {
      v61 = 0;
    }

    v75 = v61;
    if ((v1 & 0x40) != 0)
    {
LABEL_6:
      v74 = *(this + 7);
      if ((v1 & 0x10000) != 0)
      {
        goto LABEL_7;
      }

LABEL_101:
      v73 = 0;
      if ((v1 & 0x1000000) != 0)
      {
        goto LABEL_10;
      }

LABEL_102:
      v72 = 0;
      if ((v1 & 0x100000) != 0)
      {
        goto LABEL_13;
      }

LABEL_103:
      v71 = 0;
      if ((v1 & 0x20) != 0)
      {
        goto LABEL_16;
      }

      goto LABEL_104;
    }
  }

  else
  {
    v75 = 0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_6;
    }
  }

  v74 = 0;
  if ((v1 & 0x10000) == 0)
  {
    goto LABEL_101;
  }

LABEL_7:
  v3 = *(this + 30);
  v4 = LODWORD(v3);
  if (v3 == 0.0)
  {
    v4 = 0;
  }

  v73 = v4;
  if ((v1 & 0x1000000) == 0)
  {
    goto LABEL_102;
  }

LABEL_10:
  v5 = *(this + 38);
  v6 = LODWORD(v5);
  if (v5 == 0.0)
  {
    v6 = 0;
  }

  v72 = v6;
  if ((v1 & 0x100000) == 0)
  {
    goto LABEL_103;
  }

LABEL_13:
  v7 = *(this + 34);
  v8 = LODWORD(v7);
  if (v7 == 0.0)
  {
    v8 = 0;
  }

  v71 = v8;
  if ((v1 & 0x20) != 0)
  {
LABEL_16:
    v70 = *(this + 6);
    if ((v1 & 0x40000) != 0)
    {
      goto LABEL_17;
    }

LABEL_105:
    v69 = 0;
    if ((v1 & 0x800000) != 0)
    {
      goto LABEL_20;
    }

LABEL_106:
    v68 = 0;
    if ((v1 & 0x400000) != 0)
    {
      goto LABEL_23;
    }

LABEL_107:
    v67 = 0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_108;
  }

LABEL_104:
  v70 = 0;
  if ((v1 & 0x40000) == 0)
  {
    goto LABEL_105;
  }

LABEL_17:
  v9 = *(this + 32);
  v10 = LODWORD(v9);
  if (v9 == 0.0)
  {
    v10 = 0;
  }

  v69 = v10;
  if ((v1 & 0x800000) == 0)
  {
    goto LABEL_106;
  }

LABEL_20:
  v11 = *(this + 37);
  v12 = LODWORD(v11);
  if (v11 == 0.0)
  {
    v12 = 0;
  }

  v68 = v12;
  if ((v1 & 0x400000) == 0)
  {
    goto LABEL_107;
  }

LABEL_23:
  v13 = *(this + 36);
  v14 = LODWORD(v13);
  if (v13 == 0.0)
  {
    v14 = 0;
  }

  v67 = v14;
  if ((v1 & 0x80) != 0)
  {
LABEL_26:
    v66 = *(this + 8);
    if ((v1 & 0x20000) != 0)
    {
      goto LABEL_27;
    }

LABEL_109:
    v65 = 0;
    if ((v1 & 0x80000) != 0)
    {
      goto LABEL_30;
    }

LABEL_110:
    v64 = 0;
    if ((v1 & 0x40000000) != 0)
    {
      goto LABEL_33;
    }

LABEL_111:
    v63 = 0;
    if ((v1 & 0x200) != 0)
    {
      goto LABEL_36;
    }

    goto LABEL_112;
  }

LABEL_108:
  v66 = 0;
  if ((v1 & 0x20000) == 0)
  {
    goto LABEL_109;
  }

LABEL_27:
  v15 = *(this + 31);
  v16 = LODWORD(v15);
  if (v15 == 0.0)
  {
    v16 = 0;
  }

  v65 = v16;
  if ((v1 & 0x80000) == 0)
  {
    goto LABEL_110;
  }

LABEL_30:
  v17 = *(this + 33);
  v18 = LODWORD(v17);
  if (v17 == 0.0)
  {
    v18 = 0;
  }

  v64 = v18;
  if ((v1 & 0x40000000) == 0)
  {
    goto LABEL_111;
  }

LABEL_33:
  v19 = *(this + 44);
  v20 = LODWORD(v19);
  if (v19 == 0.0)
  {
    v20 = 0;
  }

  v63 = v20;
  if ((v1 & 0x200) != 0)
  {
LABEL_36:
    v21 = *(this + 10);
    if ((v1 & 0x2000000) != 0)
    {
      goto LABEL_37;
    }

LABEL_113:
    v23 = 0;
    if ((v1 & 0x200000000) != 0)
    {
      goto LABEL_41;
    }

LABEL_114:
    v25 = 0;
    if ((v1 & 0x20000000) != 0)
    {
      goto LABEL_45;
    }

LABEL_115:
    v27 = 0;
    if ((v1 & 0x100) != 0)
    {
      goto LABEL_49;
    }

    goto LABEL_116;
  }

LABEL_112:
  v21 = 0;
  if ((v1 & 0x2000000) == 0)
  {
    goto LABEL_113;
  }

LABEL_37:
  v22 = *(this + 39);
  if (v22 == 0.0)
  {
    v23 = 0;
  }

  else
  {
    v23 = LODWORD(v22);
  }

  if ((v1 & 0x200000000) == 0)
  {
    goto LABEL_114;
  }

LABEL_41:
  v24 = *(this + 47);
  if (v24 == 0.0)
  {
    v25 = 0;
  }

  else
  {
    v25 = LODWORD(v24);
  }

  if ((v1 & 0x20000000) == 0)
  {
    goto LABEL_115;
  }

LABEL_45:
  v26 = *(this + 43);
  if (v26 == 0.0)
  {
    v27 = 0;
  }

  else
  {
    v27 = LODWORD(v26);
  }

  if ((v1 & 0x100) != 0)
  {
LABEL_49:
    v28 = *(this + 9);
    if ((v1 & 0x8000000) != 0)
    {
      goto LABEL_50;
    }

LABEL_117:
    v30 = 0;
    if ((v1 & 0x100000000) != 0)
    {
      goto LABEL_54;
    }

LABEL_118:
    v32 = 0;
    if ((v1 & 0x80000000) != 0)
    {
      goto LABEL_58;
    }

LABEL_119:
    v34 = 0;
    if ((v1 & 0x400) != 0)
    {
      goto LABEL_62;
    }

    goto LABEL_120;
  }

LABEL_116:
  v28 = 0;
  if ((v1 & 0x8000000) == 0)
  {
    goto LABEL_117;
  }

LABEL_50:
  v29 = *(this + 41);
  if (v29 == 0.0)
  {
    v30 = 0;
  }

  else
  {
    v30 = LODWORD(v29);
  }

  if ((v1 & 0x100000000) == 0)
  {
    goto LABEL_118;
  }

LABEL_54:
  v31 = *(this + 46);
  if (v31 == 0.0)
  {
    v32 = 0;
  }

  else
  {
    v32 = LODWORD(v31);
  }

  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_119;
  }

LABEL_58:
  v33 = *(this + 45);
  if (v33 == 0.0)
  {
    v34 = 0;
  }

  else
  {
    v34 = LODWORD(v33);
  }

  if ((v1 & 0x400) != 0)
  {
LABEL_62:
    v35 = *(this + 11);
    if ((v1 & 0x4000000) != 0)
    {
      goto LABEL_63;
    }

LABEL_121:
    v37 = 0;
    if ((v1 & 0x10000000) != 0)
    {
      goto LABEL_67;
    }

LABEL_122:
    v39 = 0;
    if ((v1 & 0x2000) != 0)
    {
      goto LABEL_71;
    }

LABEL_123:
    v41 = 0;
    if ((v1 & 0x8000) != 0)
    {
      goto LABEL_75;
    }

    goto LABEL_124;
  }

LABEL_120:
  v35 = 0;
  if ((v1 & 0x4000000) == 0)
  {
    goto LABEL_121;
  }

LABEL_63:
  v36 = *(this + 40);
  if (v36 == 0.0)
  {
    v37 = 0;
  }

  else
  {
    v37 = LODWORD(v36);
  }

  if ((v1 & 0x10000000) == 0)
  {
    goto LABEL_122;
  }

LABEL_67:
  v38 = *(this + 42);
  if (v38 == 0.0)
  {
    v39 = 0;
  }

  else
  {
    v39 = LODWORD(v38);
  }

  if ((v1 & 0x2000) == 0)
  {
    goto LABEL_123;
  }

LABEL_71:
  v40 = *(this + 27);
  if (v40 == 0.0)
  {
    v41 = 0;
  }

  else
  {
    v41 = LODWORD(v40);
  }

  if ((v1 & 0x8000) != 0)
  {
LABEL_75:
    v42 = *(this + 29);
    if ((v1 & 0x4000) != 0)
    {
      goto LABEL_76;
    }

    goto LABEL_125;
  }

LABEL_124:
  v42 = 0;
  if ((v1 & 0x4000) != 0)
  {
LABEL_76:
    v43 = *(this + 28);
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_77;
    }

    goto LABEL_126;
  }

LABEL_125:
  v43 = 0;
  if ((v1 & 0x10) != 0)
  {
LABEL_77:
    v44 = *(this + 5);
    if ((v1 & 8) != 0)
    {
      goto LABEL_78;
    }

    goto LABEL_127;
  }

LABEL_126:
  v44 = 0;
  if ((v1 & 8) != 0)
  {
LABEL_78:
    v45 = *(this + 4);
    if ((v1 & 0x800000000) != 0)
    {
      goto LABEL_79;
    }

LABEL_128:
    v47 = 0;
    if ((v1 & 0x2000000000) != 0)
    {
      goto LABEL_82;
    }

LABEL_129:
    v49 = 0;
    if ((v1 & 0x1000000000) != 0)
    {
      goto LABEL_85;
    }

LABEL_130:
    v51 = 0;
    if ((v1 & 0x400000000) != 0)
    {
      goto LABEL_88;
    }

LABEL_131:
    v53 = 0;
    if ((v1 & 0x4000000000) != 0)
    {
      goto LABEL_91;
    }

    goto LABEL_132;
  }

LABEL_127:
  v45 = 0;
  if ((v1 & 0x800000000) == 0)
  {
    goto LABEL_128;
  }

LABEL_79:
  v46 = *(this + 49);
  v47 = LODWORD(v46);
  if (v46 == 0.0)
  {
    v47 = 0;
  }

  if ((v1 & 0x2000000000) == 0)
  {
    goto LABEL_129;
  }

LABEL_82:
  v48 = *(this + 51);
  v49 = LODWORD(v48);
  if (v48 == 0.0)
  {
    v49 = 0;
  }

  if ((v1 & 0x1000000000) == 0)
  {
    goto LABEL_130;
  }

LABEL_85:
  v50 = *(this + 50);
  v51 = LODWORD(v50);
  if (v50 == 0.0)
  {
    v51 = 0;
  }

  if ((v1 & 0x400000000) == 0)
  {
    goto LABEL_131;
  }

LABEL_88:
  v52 = *(this + 48);
  v53 = LODWORD(v52);
  if (v52 == 0.0)
  {
    v53 = 0;
  }

  if ((v1 & 0x4000000000) != 0)
  {
LABEL_91:
    v54 = *(this + 208);
    if ((v1 & 0x8000000000) != 0)
    {
      goto LABEL_92;
    }

    goto LABEL_133;
  }

LABEL_132:
  v54 = 0;
  if ((v1 & 0x8000000000) != 0)
  {
LABEL_92:
    v55 = *(this + 209);
    if ((v1 & 0x1000) != 0)
    {
      goto LABEL_93;
    }

    goto LABEL_134;
  }

LABEL_133:
  v55 = 0;
  if ((v1 & 0x1000) != 0)
  {
LABEL_93:
    v56 = *(this + 26);
    if ((v1 & 4) != 0)
    {
      goto LABEL_94;
    }

    goto LABEL_135;
  }

LABEL_134:
  v56 = 0;
  if ((v1 & 4) != 0)
  {
LABEL_94:
    v57 = *(this + 3);
    if ((v1 & 2) != 0)
    {
      goto LABEL_95;
    }

LABEL_136:
    v58 = 0;
    if (v1)
    {
      goto LABEL_96;
    }

LABEL_137:
    v59 = 0;
    return v75 ^ v2 ^ v74 ^ v73 ^ v72 ^ v71 ^ v70 ^ v69 ^ v68 ^ v67 ^ v66 ^ v65 ^ v64 ^ v63 ^ v21 ^ v23 ^ v25 ^ v27 ^ v28 ^ v30 ^ v32 ^ v34 ^ v35 ^ v37 ^ v39 ^ v41 ^ v42 ^ v43 ^ v44 ^ v45 ^ v47 ^ v49 ^ v51 ^ v53 ^ v54 ^ v55 ^ v56 ^ v57 ^ v58 ^ v59;
  }

LABEL_135:
  v57 = 0;
  if ((v1 & 2) == 0)
  {
    goto LABEL_136;
  }

LABEL_95:
  v58 = *(this + 2);
  if ((v1 & 1) == 0)
  {
    goto LABEL_137;
  }

LABEL_96:
  v59 = *(this + 1);
  return v75 ^ v2 ^ v74 ^ v73 ^ v72 ^ v71 ^ v70 ^ v69 ^ v68 ^ v67 ^ v66 ^ v65 ^ v64 ^ v63 ^ v21 ^ v23 ^ v25 ^ v27 ^ v28 ^ v30 ^ v32 ^ v34 ^ v35 ^ v37 ^ v39 ^ v41 ^ v42 ^ v43 ^ v44 ^ v45 ^ v47 ^ v49 ^ v51 ^ v53 ^ v54 ^ v55 ^ v56 ^ v57 ^ v58 ^ v59;
}

uint64_t CMMsl::SatelliteInfo::SatelliteInfo(uint64_t this)
{
  *this = off_100421C28;
  *(this + 20) = 0;
  return this;
}

{
  *this = off_100421C28;
  *(this + 20) = 0;
  return this;
}

void CMMsl::SatelliteInfo::~SatelliteInfo(CMMsl::SatelliteInfo *this)
{
  PB::Base::~Base(this);

  operator delete();
}

float CMMsl::SatelliteInfo::SatelliteInfo(CMMsl::SatelliteInfo *this, const CMMsl::SatelliteInfo *a2)
{
  *this = off_100421C28;
  *(this + 5) = 0;
  v2 = *(a2 + 20);
  if ((v2 & 2) != 0)
  {
    result = *(a2 + 3);
    v3 = 2;
    *(this + 20) = 2;
    *(this + 3) = result;
    v2 = *(a2 + 20);
    if ((v2 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if (*(a2 + 20))
  {
LABEL_5:
    result = *(a2 + 2);
    v3 |= 1u;
    *(this + 20) = v3;
    *(this + 2) = result;
    v2 = *(a2 + 20);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    result = *(a2 + 4);
    *(this + 20) = v3 | 4;
    *(this + 4) = result;
  }

  return result;
}

uint64_t CMMsl::SatelliteInfo::operator=(uint64_t a1, const CMMsl::SatelliteInfo *a2)
{
  if (a1 != a2)
  {
    CMMsl::SatelliteInfo::SatelliteInfo(v7, a2);
    v3 = *(a1 + 20);
    *(a1 + 20) = v10;
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

float CMMsl::swap(CMMsl *this, CMMsl::SatelliteInfo *a2, CMMsl::SatelliteInfo *a3)
{
  v3 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v3;
  v4 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v4;
  v5 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v5;
  result = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = result;
  return result;
}

float CMMsl::SatelliteInfo::SatelliteInfo(uint64_t a1, uint64_t a2)
{
  *a1 = off_100421C28;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

{
  *a1 = off_100421C28;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

uint64_t CMMsl::SatelliteInfo::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v8[0] = off_100421C28;
    v3 = *(a2 + 20);
    *(a2 + 20) = 0;
    v4 = *(a2 + 16);
    v10 = *(a1 + 20);
    v5 = *(a1 + 8);
    v6 = *(a2 + 8);
    *(a1 + 20) = v3;
    *(a1 + 8) = v6;
    v8[1] = v5;
    LODWORD(v5) = *(a1 + 16);
    *(a1 + 16) = v4;
    v9 = v5;
    PB::Base::~Base(v8);
  }

  return a1;
}

uint64_t CMMsl::SatelliteInfo::formatText(CMMsl::SatelliteInfo *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 20);
  if (v5)
  {
    PB::TextFormatter::format(a2, "azimuthDeg", *(this + 2));
    v5 = *(this + 20);
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

  else if ((*(this + 20) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "elevationDeg", *(this + 3));
  if ((*(this + 20) & 4) != 0)
  {
LABEL_4:
    PB::TextFormatter::format(a2, "l1Cn0", *(this + 4));
  }

LABEL_5:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::SatelliteInfo::readFrom(CMMsl::SatelliteInfo *this, PB::Reader *a2)
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
            goto LABEL_42;
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
        goto LABEL_42;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        *(this + 20) |= 4u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
LABEL_33:
          *(a2 + 24) = 1;
          goto LABEL_38;
        }

        *(this + 4) = *(*a2 + v2);
        goto LABEL_37;
      }

      if (v22 == 2)
      {
        break;
      }

      if (v22 == 1)
      {
        *(this + 20) |= 2u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_33;
        }

        *(this + 3) = *(*a2 + v2);
LABEL_37:
        v2 = *(a2 + 1) + 4;
        *(a2 + 1) = v2;
        goto LABEL_38;
      }

      if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(a2 + 1);
LABEL_38:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_42;
      }
    }

    *(this + 20) |= 1u;
    v2 = *(a2 + 1);
    if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
    {
      goto LABEL_33;
    }

    *(this + 2) = *(*a2 + v2);
    goto LABEL_37;
  }

LABEL_42:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t CMMsl::SatelliteInfo::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 20);
  if ((v4 & 2) == 0)
  {
    if ((*(this + 20) & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = PB::Writer::write(a2, *(v3 + 8), 2u);
    if ((*(v3 + 20) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = PB::Writer::write(a2, *(this + 12), 1u);
  v4 = *(v3 + 20);
  if (v4)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v4 & 4) == 0)
  {
    return this;
  }

LABEL_7:
  v5 = *(v3 + 16);

  return PB::Writer::write(a2, v5, 3u);
}

BOOL CMMsl::SatelliteInfo::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 20) & 2) != 0)
  {
    if ((*(a2 + 20) & 2) == 0 || *(a1 + 12) != *(a2 + 12))
    {
      return 0;
    }
  }

  else if ((*(a2 + 20) & 2) != 0)
  {
    return 0;
  }

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

  v2 = (*(a2 + 20) & 4) == 0;
  if ((*(a1 + 20) & 4) != 0)
  {
    return (*(a2 + 20) & 4) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v2;
}

uint64_t CMMsl::SatelliteInfo::hash_value(CMMsl::SatelliteInfo *this)
{
  if ((*(this + 20) & 2) != 0)
  {
    v6 = *(this + 3);
    v1 = LODWORD(v6);
    if (v6 == 0.0)
    {
      v1 = 0;
    }

    if (*(this + 20))
    {
LABEL_3:
      v2 = *(this + 2);
      v3 = LODWORD(v2);
      if (v2 == 0.0)
      {
        v3 = 0;
      }

      if ((*(this + 20) & 4) != 0)
      {
        goto LABEL_6;
      }

LABEL_13:
      v5 = 0;
      return v3 ^ v1 ^ v5;
    }
  }

  else
  {
    v1 = 0;
    if (*(this + 20))
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*(this + 20) & 4) == 0)
  {
    goto LABEL_13;
  }

LABEL_6:
  v4 = *(this + 4);
  v5 = LODWORD(v4);
  if (v4 == 0.0)
  {
    v5 = 0;
  }

  return v3 ^ v1 ^ v5;
}

void CMMsl::SessionOverride::~SessionOverride(CMMsl::SessionOverride *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::SessionOverride::SessionOverride(uint64_t this, const CMMsl::SessionOverride *a2)
{
  *this = off_100421C60;
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

const CMMsl::SessionOverride *CMMsl::SessionOverride::operator=(const CMMsl::SessionOverride *a1, const CMMsl::SessionOverride *a2)
{
  if (a1 != a2)
  {
    CMMsl::SessionOverride::SessionOverride(v7, a2);
    v3 = v9;
    v4 = *(a1 + 1);
    v5 = *(a1 + 2);
    *(a1 + 1) = v8;
    *(a1 + 2) = v3;
    v8 = v4;
    v9 = v5;
    PB::Base::~Base(v7);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::SessionOverride *a2, CMMsl::SessionOverride *a3)
{
  v3 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v3;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  return result;
}

double CMMsl::SessionOverride::SessionOverride(uint64_t a1, uint64_t a2)
{
  *a1 = off_100421C60;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = *(a2 + 16);
  return result;
}

{
  *a1 = off_100421C60;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = *(a2 + 16);
  return result;
}

uint64_t CMMsl::SessionOverride::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v8[0] = off_100421C60;
    v3 = *(a2 + 8);
    v4 = *(a2 + 16);
    *(a2 + 20) = 0;
    v5 = *(a1 + 8);
    v6 = *(a1 + 16);
    *(a1 + 8) = v3;
    *(a1 + 16) = v4;
    v8[1] = v5;
    v8[2] = v6;
    PB::Base::~Base(v8);
  }

  return a1;
}

uint64_t CMMsl::SessionOverride::formatText(CMMsl::SessionOverride *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 20);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "sessionType", *(this + 4));
    v5 = *(this + 20);
  }

  if (v5)
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::SessionOverride::readFrom(CMMsl::SessionOverride *this, PB::Reader *a2)
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
            goto LABEL_54;
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
              goto LABEL_49;
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
              goto LABEL_48;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v27) = 0;
          }

LABEL_48:
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

LABEL_49:
        *(this + 4) = v27;
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
          v38 = 0;
          return v38 & 1;
        }

        v2 = *(a2 + 1);
      }

      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_54:
  v38 = v4 ^ 1;
  return v38 & 1;
}

uint64_t CMMsl::SessionOverride::writeTo(uint64_t this, PB::Writer *a2)
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

    return PB::Writer::writeVarInt(a2, v5, 2u);
  }

  return this;
}

uint64_t CMMsl::SessionOverride::hash_value(CMMsl::SessionOverride *this)
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
  v2 = *(this + 4);
  return v2 ^ *&v1;
}

void CMMsl::SignalEnvironment::~SignalEnvironment(CMMsl::SignalEnvironment *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::SignalEnvironment::SignalEnvironment(uint64_t this, const CMMsl::SignalEnvironment *a2)
{
  *this = off_100421C98;
  *(this + 8) = 0;
  if (*(a2 + 12))
  {
    v2 = *(a2 + 2);
    *(this + 12) = 1;
    *(this + 8) = v2;
  }

  return this;
}

uint64_t CMMsl::SignalEnvironment::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v6[0] = off_100421C98;
    v3 = *(a2 + 12);
    v4 = *(a1 + 8);
    *(a1 + 8) = (v3 << 31 >> 31) & *(a2 + 8);
    *(a1 + 12) = v3 & 1;
    v6[1] = v4;
    PB::Base::~Base(v6);
  }

  return a1;
}

{
  if (a1 != a2)
  {
    v6[0] = off_100421C98;
    v3 = *(a2 + 8);
    *(a2 + 12) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[1] = v4;
    PB::Base::~Base(v6);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::SignalEnvironment *a2, CMMsl::SignalEnvironment *a3)
{
  v3 = *(this + 12);
  *(this + 12) = *(a2 + 3);
  *(a2 + 3) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 2);
  *(a2 + 2) = v4;
  return this;
}

uint64_t CMMsl::SignalEnvironment::formatText(CMMsl::SignalEnvironment *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 12))
  {
    PB::TextFormatter::format(a2, "type", *(this + 2));
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::SignalEnvironment::readFrom(CMMsl::SignalEnvironment *this, PB::Reader *a2)
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
            goto LABEL_51;
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

      if ((v10 >> 3) == 1)
      {
        *(this + 12) |= 1u;
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
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          v33 = v3 - v23;
          v34 = (v24 + v23);
          v35 = v23 + 1;
          while (1)
          {
            if (!v33)
            {
              LODWORD(v27) = 0;
              *(a2 + 24) = 1;
              goto LABEL_46;
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
              goto LABEL_45;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v27) = 0;
          }

LABEL_45:
          v3 = v36;
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
            v3 = v29;
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

LABEL_46:
        *(this + 2) = v27;
      }

      else
      {
        if (!PB::Reader::skip(a2, v10 >> 3, v10 & 7, 0))
        {
          v38 = 0;
          return v38 & 1;
        }

        v3 = *(a2 + 1);
        v2 = *(a2 + 2);
      }

      v4 = *(a2 + 24);
    }

    while (v3 < v2 && (*(a2 + 24) & 1) == 0);
  }

LABEL_51:
  v38 = v4 ^ 1;
  return v38 & 1;
}

uint64_t CMMsl::SignalEnvironment::writeTo(uint64_t this, PB::Writer *a2)
{
  if (*(this + 12))
  {
    return PB::Writer::writeVarInt(a2, *(this + 8), 1u);
  }

  return this;
}

uint64_t CMMsl::SignalEnvironment::hash_value(CMMsl::SignalEnvironment *this)
{
  if (*(this + 12))
  {
    return *(this + 2);
  }

  else
  {
    return 0;
  }
}

void CMMsl::SignificantUserInteraction::~SignificantUserInteraction(CMMsl::SignificantUserInteraction *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::SignificantUserInteraction::SignificantUserInteraction(uint64_t this, const CMMsl::SignificantUserInteraction *a2)
{
  *this = off_100421CD0;
  *(this + 16) = 0;
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

uint64_t CMMsl::SignificantUserInteraction::operator=(uint64_t a1, const CMMsl::SignificantUserInteraction *a2)
{
  if (a1 != a2)
  {
    CMMsl::SignificantUserInteraction::SignificantUserInteraction(v7, a2);
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

uint64_t CMMsl::swap(uint64_t this, CMMsl::SignificantUserInteraction *a2, CMMsl::SignificantUserInteraction *a3)
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

uint64_t CMMsl::SignificantUserInteraction::SignificantUserInteraction(uint64_t result, uint64_t a2)
{
  *result = off_100421CD0;
  *(result + 16) = 0;
  *(result + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  *(result + 8) = *(a2 + 8);
  *(result + 16) = *(a2 + 16);
  return result;
}

{
  *result = off_100421CD0;
  *(result + 16) = 0;
  *(result + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  *(result + 8) = *(a2 + 8);
  *(result + 16) = *(a2 + 16);
  return result;
}

uint64_t CMMsl::SignificantUserInteraction::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 16);
    v3 = *(a2 + 20);
    *(a2 + 20) = 0;
    v5 = *(a1 + 8);
    *(a1 + 8) = *(a2 + 8);
    v8[0] = off_100421CD0;
    v8[1] = v5;
    LODWORD(v5) = *(a1 + 16);
    v6 = *(a1 + 20);
    *(a1 + 16) = v4;
    *(a1 + 20) = v3;
    v9 = v5;
    v10 = v6;
    PB::Base::~Base(v8);
  }

  return a1;
}

uint64_t CMMsl::SignificantUserInteraction::formatText(CMMsl::SignificantUserInteraction *this, PB::TextFormatter *a2, const char *a3)
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
    PB::TextFormatter::format(a2, "type", *(this + 4));
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::SignificantUserInteraction::readFrom(CMMsl::SignificantUserInteraction *this, PB::Reader *a2)
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
        *(this + 20) |= 2u;
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
        *(this + 4) = v36;
      }

      else if (v23 == 1)
      {
        *(this + 20) |= 1u;
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
              v28 = 0;
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
              v28 = 0;
              goto LABEL_63;
            }
          }

          if (*(a2 + 24))
          {
            v28 = 0;
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
              v28 = 0;
              break;
            }
          }
        }

LABEL_64:
        *(this + 1) = v28;
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

uint64_t CMMsl::SignificantUserInteraction::writeTo(uint64_t this, PB::Writer *a2)
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

    return PB::Writer::writeVarInt(a2, v5, 2u);
  }

  return this;
}

uint64_t CMMsl::SignificantUserInteraction::hash_value(CMMsl::SignificantUserInteraction *this)
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
  v2 = *(this + 4);
  return v2 ^ v1;
}

void CMMsl::SimActivityEvent::~SimActivityEvent(CMMsl::SimActivityEvent *this)
{
  v2 = *(this + 1);
  *this = off_100421D08;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::SimActivityEvent::~SimActivityEvent(this);

  operator delete();
}

uint64_t CMMsl::SimActivityEvent::SimActivityEvent(uint64_t this, const CMMsl::SimActivityEvent *a2)
{
  *this = off_100421D08;
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

uint64_t CMMsl::SimMotionState::SimMotionState(uint64_t result, uint64_t a2)
{
  *result = off_100421D40;
  *(result + 12) = 0;
  if (*(a2 + 12))
  {
    v2 = *(a2 + 8);
    *(result + 12) = 1;
    *(result + 8) = v2;
  }

  return result;
}

{
  *result = off_100421D40;
  *(result + 12) = *(a2 + 12);
  *(a2 + 12) = 0;
  *(result + 8) = *(a2 + 8);
  return result;
}

{
  *result = off_100421D40;
  *(result + 12) = *(a2 + 12);
  *(a2 + 12) = 0;
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t CMMsl::SimActivityEvent::operator=(uint64_t a1, const CMMsl::SimActivityEvent *a2)
{
  if (a1 != a2)
  {
    CMMsl::SimActivityEvent::SimActivityEvent(&v8, a2);
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
    CMMsl::SimActivityEvent::~SimActivityEvent(&v8);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::SimActivityEvent *a2, CMMsl::SimActivityEvent *a3)
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

uint64_t CMMsl::SimActivityEvent::SimActivityEvent(uint64_t a1, uint64_t a2)
{
  *a1 = off_100421D08;
  *(a1 + 8) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  v4 = *(a2 + 8);
  v3 = *(a2 + 16);
  *(a2 + 8) = 0;
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return a1;
}

uint64_t CMMsl::SimActivityEvent::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::SimActivityEvent::SimActivityEvent(&v8, a2);
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
    CMMsl::SimActivityEvent::~SimActivityEvent(&v8);
  }

  return a1;
}

uint64_t CMMsl::SimActivityEvent::formatText(CMMsl::SimActivityEvent *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "motionState");
  }

  if (*(this + 24))
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 2));
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::SimActivityEvent::readFrom(CMMsl::SimActivityEvent *this, PB::Reader *a2)
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
        operator new();
      }

      if (v22 == 1)
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
        *(this + 2) = v28;
      }

      else if ((PB::Reader::skip(a2, v22, v10 & 7, 0) & 1) == 0)
      {
        v39 = 0;
        return v39 & 1;
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

uint64_t CMMsl::SimMotionState::SimMotionState(uint64_t this)
{
  *this = off_100421D40;
  *(this + 12) = 0;
  return this;
}

{
  *this = off_100421D40;
  *(this + 12) = 0;
  return this;
}

uint64_t CMMsl::SimActivityEvent::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if (*(this + 24))
  {
    this = PB::Writer::writeVarInt(a2, *(this + 16), 1u);
  }

  v4 = *(v3 + 8);
  if (v4)
  {

    return PB::Writer::writeSubmessage(a2, v4, 2u);
  }

  return this;
}

BOOL CMMsl::SimMotionState::operator==(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  result = (*(a2 + 12) & 1) == 0;
  if (v3)
  {
    return (*(a2 + 12) & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return result;
}

uint64_t CMMsl::SimActivityEvent::hash_value(CMMsl::SimActivityEvent *this)
{
  if (*(this + 24))
  {
    v1 = *(this + 2);
  }

  else
  {
    v1 = 0;
  }

  v2 = *(this + 1);
  if (v2)
  {
    v3 = *(v2 + 12);
    v2 = *(v2 + 8);
    if ((v3 & 1) == 0)
    {
      v2 = 0;
    }
  }

  return v2 ^ v1;
}

uint64_t CMMsl::SimActivityEvent::makeMotionState(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

void CMMsl::SimMotionState::~SimMotionState(CMMsl::SimMotionState *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::SimMotionState::SimMotionState(uint64_t this, const CMMsl::SimMotionState *a2)
{
  *this = off_100421D40;
  *(this + 12) = 0;
  if (*(a2 + 12))
  {
    v2 = *(a2 + 2);
    *(this + 12) = 1;
    *(this + 8) = v2;
  }

  return this;
}

uint64_t CMMsl::SimMotionState::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v6[0] = off_100421D40;
    v3 = *(a2 + 12) & 1;
    v4 = *(a1 + 8);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 12) = v3;
    v6[1] = v4;
    PB::Base::~Base(v6);
  }

  return a1;
}

{
  if (a1 != a2)
  {
    v6[0] = off_100421D40;
    v3 = *(a2 + 8);
    *(a2 + 12) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[1] = v4;
    PB::Base::~Base(v6);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::SimMotionState *a2, CMMsl::SimMotionState *a3)
{
  v3 = *(this + 12);
  *(this + 12) = *(a2 + 3);
  *(a2 + 3) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 2);
  *(a2 + 2) = v4;
  return this;
}

uint64_t CMMsl::SimMotionState::formatText(CMMsl::SimMotionState *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 12))
  {
    PB::TextFormatter::format(a2, "type", *(this + 2));
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::SimMotionState::readFrom(CMMsl::SimMotionState *this, PB::Reader *a2)
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
            goto LABEL_51;
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

      if ((v10 >> 3) == 1)
      {
        *(this + 12) |= 1u;
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
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          v33 = v3 - v23;
          v34 = (v24 + v23);
          v35 = v23 + 1;
          while (1)
          {
            if (!v33)
            {
              LODWORD(v27) = 0;
              *(a2 + 24) = 1;
              goto LABEL_46;
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
              goto LABEL_45;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v27) = 0;
          }

LABEL_45:
          v3 = v36;
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
            v3 = v29;
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

LABEL_46:
        *(this + 2) = v27;
      }

      else
      {
        if (!PB::Reader::skip(a2, v10 >> 3, v10 & 7, 0))
        {
          v38 = 0;
          return v38 & 1;
        }

        v3 = *(a2 + 1);
        v2 = *(a2 + 2);
      }

      v4 = *(a2 + 24);
    }

    while (v3 < v2 && (*(a2 + 24) & 1) == 0);
  }

LABEL_51:
  v38 = v4 ^ 1;
  return v38 & 1;
}

uint64_t CMMsl::SimMotionState::writeTo(uint64_t this, PB::Writer *a2)
{
  if (*(this + 12))
  {
    return PB::Writer::writeVarInt(a2, *(this + 8), 1u);
  }

  return this;
}

uint64_t CMMsl::SimMotionState::hash_value(CMMsl::SimMotionState *this)
{
  if (*(this + 12))
  {
    return *(this + 2);
  }

  else
  {
    return 0;
  }
}

void CMMsl::SitStandDetectorFeatures::~SitStandDetectorFeatures(CMMsl::SitStandDetectorFeatures *this)
{
  PB::Base::~Base(this);

  operator delete();
}

float CMMsl::SitStandDetectorFeatures::SitStandDetectorFeatures(CMMsl::SitStandDetectorFeatures *this, const CMMsl::SitStandDetectorFeatures *a2)
{
  *this = off_100421D78;
  *(this + 11) = 0;
  v2 = *(a2 + 44);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 44) = 1;
    *(this + 1) = v4;
    v2 = *(a2 + 44);
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 44) & 0x10) != 0)
  {
LABEL_5:
    LODWORD(v4) = *(a2 + 7);
    v3 |= 0x10u;
    *(this + 44) = v3;
    *(this + 7) = v4;
    v2 = *(a2 + 44);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    LODWORD(v4) = *(a2 + 4);
    v3 |= 2u;
    *(this + 44) = v3;
    *(this + 4) = v4;
    v2 = *(a2 + 44);
    if ((v2 & 0x80) == 0)
    {
LABEL_8:
      if ((v2 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_15;
    }
  }

  else if ((v2 & 0x80) == 0)
  {
    goto LABEL_8;
  }

  LODWORD(v4) = *(a2 + 10);
  v3 |= 0x80u;
  *(this + 44) = v3;
  *(this + 10) = v4;
  v2 = *(a2 + 44);
  if ((v2 & 8) == 0)
  {
LABEL_9:
    if ((v2 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_16;
  }

LABEL_15:
  LODWORD(v4) = *(a2 + 6);
  v3 |= 8u;
  *(this + 44) = v3;
  *(this + 6) = v4;
  v2 = *(a2 + 44);
  if ((v2 & 4) == 0)
  {
LABEL_10:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_16:
  LODWORD(v4) = *(a2 + 5);
  v3 |= 4u;
  *(this + 44) = v3;
  *(this + 5) = v4;
  v2 = *(a2 + 44);
  if ((v2 & 0x40) == 0)
  {
LABEL_11:
    if ((v2 & 0x20) == 0)
    {
      return *&v4;
    }

    goto LABEL_18;
  }

LABEL_17:
  LODWORD(v4) = *(a2 + 9);
  v3 |= 0x40u;
  *(this + 44) = v3;
  *(this + 9) = v4;
  if ((*(a2 + 44) & 0x20) == 0)
  {
    return *&v4;
  }

LABEL_18:
  LODWORD(v4) = *(a2 + 8);
  *(this + 44) = v3 | 0x20;
  *(this + 8) = v4;
  return *&v4;
}

uint64_t CMMsl::SitStandDetectorFeatures::operator=(uint64_t a1, const CMMsl::SitStandDetectorFeatures *a2)
{
  if (a1 != a2)
  {
    CMMsl::SitStandDetectorFeatures::SitStandDetectorFeatures(&v7, a2);
    v3 = *(a1 + 44);
    *(a1 + 44) = v12;
    v12 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v4;
    LODWORD(v4) = *(a1 + 40);
    *(a1 + 40) = v11;
    v11 = v4;
    v5 = *(a1 + 16);
    *(a1 + 16) = v9;
    v9 = v5;
    *&v5 = *(a1 + 32);
    *(a1 + 32) = v10;
    v10 = v5;
    PB::Base::~Base(&v7);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::SitStandDetectorFeatures *a2, CMMsl::SitStandDetectorFeatures *a3)
{
  v3 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v4;
  LODWORD(v4) = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  LODWORD(v4) = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v4;
  LODWORD(v4) = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v4;
  LODWORD(v4) = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v4;
  LODWORD(v4) = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v4;
  result = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = result;
  return result;
}

float CMMsl::SitStandDetectorFeatures::SitStandDetectorFeatures(uint64_t a1, uint64_t a2)
{
  *a1 = off_100421D78;
  *(a1 + 44) = *(a2 + 44);
  *(a2 + 44) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 36) = *(a2 + 36);
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

{
  *a1 = off_100421D78;
  *(a1 + 44) = *(a2 + 44);
  *(a2 + 44) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 36) = *(a2 + 36);
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

uint64_t CMMsl::SitStandDetectorFeatures::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v11[0] = off_100421D78;
    v3 = *(a2 + 44);
    *(a2 + 44) = 0;
    v4 = *(a2 + 8);
    v5 = *(a2 + 40);
    v15 = *(a1 + 44);
    v6 = *(a1 + 8);
    *(a1 + 8) = v4;
    v11[1] = v6;
    v14 = *(a1 + 40);
    v7 = *(a2 + 16);
    v12 = *(a1 + 16);
    v8 = *(a1 + 32);
    v9 = *(a2 + 32);
    *(a1 + 44) = v3;
    *(a1 + 40) = v5;
    *(a1 + 16) = v7;
    *(a1 + 32) = v9;
    v13 = v8;
    PB::Base::~Base(v11);
  }

  return a1;
}

uint64_t CMMsl::SitStandDetectorFeatures::formatText(CMMsl::SitStandDetectorFeatures *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 44);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "magnitudeRangeInertialVertical", *(this + 4));
    v5 = *(this + 44);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(this + 44) & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "maxAngleBetweenThighAndShinDeg", *(this + 5));
  v5 = *(this + 44);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  PB::TextFormatter::format(a2, "minAngleBetweenThighAndShinDeg", *(this + 6));
  v5 = *(this + 44);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  PB::TextFormatter::format(a2, "motionPlanarity", *(this + 7));
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
  PB::TextFormatter::format(a2, "timeToReachMaxThighAndShinAngleThreshold", *(this + 8));
  v5 = *(this + 44);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_18:
    PB::TextFormatter::format(a2, "timestamp", *(this + 1));
    if ((*(this + 44) & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_17:
  PB::TextFormatter::format(a2, "timeToReachMinThighAndShinAngleThreshold", *(this + 9));
  v5 = *(this + 44);
  if (v5)
  {
    goto LABEL_18;
  }

LABEL_8:
  if ((v5 & 0x80) == 0)
  {
    goto LABEL_9;
  }

LABEL_19:
  PB::TextFormatter::format(a2, "vm", *(this + 10));
LABEL_9:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::SitStandDetectorFeatures::readFrom(CMMsl::SitStandDetectorFeatures *this, PB::Reader *a2)
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
            goto LABEL_66;
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
      if ((v10 >> 3) > 4)
      {
        if (v22 > 6)
        {
          if (v22 == 7)
          {
            *(this + 44) |= 0x40u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
LABEL_56:
              *(a2 + 24) = 1;
              goto LABEL_62;
            }

            *(this + 9) = *(*a2 + v2);
LABEL_60:
            v2 = *(a2 + 1) + 4;
LABEL_61:
            *(a2 + 1) = v2;
            goto LABEL_62;
          }

          if (v22 == 8)
          {
            *(this + 44) |= 0x20u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
              goto LABEL_56;
            }

            *(this + 8) = *(*a2 + v2);
            goto LABEL_60;
          }
        }

        else
        {
          if (v22 == 5)
          {
            *(this + 44) |= 8u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
              goto LABEL_56;
            }

            *(this + 6) = *(*a2 + v2);
            goto LABEL_60;
          }

          if (v22 == 6)
          {
            *(this + 44) |= 4u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
              goto LABEL_56;
            }

            *(this + 5) = *(*a2 + v2);
            goto LABEL_60;
          }
        }
      }

      else if (v22 > 2)
      {
        if (v22 == 3)
        {
          *(this + 44) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_56;
          }

          *(this + 4) = *(*a2 + v2);
          goto LABEL_60;
        }

        if (v22 == 4)
        {
          *(this + 44) |= 0x80u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_56;
          }

          *(this + 10) = *(*a2 + v2);
          goto LABEL_60;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(this + 44) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_56;
          }

          *(this + 1) = *(*a2 + v2);
          v2 = *(a2 + 1) + 8;
          goto LABEL_61;
        }

        if (v22 == 2)
        {
          *(this + 44) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_56;
          }

          *(this + 7) = *(*a2 + v2);
          goto LABEL_60;
        }
      }

      if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(a2 + 1);
LABEL_62:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_66:
  v23 = v4 ^ 1;
  return v23 & 1;
}