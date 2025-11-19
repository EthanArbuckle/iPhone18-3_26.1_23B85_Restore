unint64_t CMMsl::AccessoryDeviceMotion::hash_value(CMMsl::AccessoryDeviceMotion *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    v2 = CMMsl::DeviceMotion::hash_value(v2);
  }

  if (*(this + 24))
  {
    v3 = *(this + 4);
    if ((*(this + 24) & 2) != 0)
    {
      goto LABEL_5;
    }

LABEL_7:
    v4 = 0;
    return v3 ^ v2 ^ v4;
  }

  v3 = 0;
  if ((*(this + 24) & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_5:
  v4 = *(this + 5);
  return v3 ^ v2 ^ v4;
}

uint64_t CMMsl::AccessoryDeviceMotion::makeDm(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

void CMMsl::AccessoryDeviceMotionConfig::~AccessoryDeviceMotionConfig(CMMsl::AccessoryDeviceMotionConfig *this)
{
  *this = off_10041C9B0;
  v2 = *(this + 4);
  *(this + 4) = 0;
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
  CMMsl::AccessoryDeviceMotionConfig::~AccessoryDeviceMotionConfig(this);

  operator delete();
}

CMMsl::AccessoryDeviceMotionConfig *CMMsl::AccessoryDeviceMotionConfig::AccessoryDeviceMotionConfig(CMMsl::AccessoryDeviceMotionConfig *this, const CMMsl::AccessoryDeviceMotionConfig *a2)
{
  *this = off_10041C9B0;
  *(this + 8) = 0u;
  *(this + 11) = 0;
  *(this + 24) = 0u;
  if (*(a2 + 4))
  {
    operator new();
  }

  if (*(a2 + 44))
  {
    v3 = *(a2 + 40);
    *(this + 44) |= 1u;
    *(this + 40) = v3;
  }

  if (this != a2)
  {
    sub_100035D1C(this + 1, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 2);
  }

  return this;
}

uint64_t CMMsl::AccessoryDeviceMotionConfig::operator=(uint64_t a1, const CMMsl::AccessoryDeviceMotionConfig *a2)
{
  if (a1 != a2)
  {
    CMMsl::AccessoryDeviceMotionConfig::AccessoryDeviceMotionConfig(&v7, a2);
    v3 = *(a1 + 44);
    *(a1 + 44) = v11;
    v11 = v3;
    LOBYTE(v3) = *(a1 + 40);
    *(a1 + 40) = v10;
    v10 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v4;
    v5 = *(a1 + 24);
    *(a1 + 24) = v9;
    v9 = v5;
    CMMsl::AccessoryDeviceMotionConfig::~AccessoryDeviceMotionConfig(&v7);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::AccessoryDeviceMotionConfig *a2, CMMsl::AccessoryDeviceMotionConfig *a3)
{
  v3 = *(this + 44);
  *(this + 44) = *(a2 + 11);
  *(a2 + 11) = v3;
  v4 = *(this + 32);
  *(this + 32) = *(a2 + 4);
  *(a2 + 4) = v4;
  LOBYTE(v4) = *(this + 40);
  *(this + 40) = *(a2 + 40);
  *(a2 + 40) = v4;
  v5 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v5;
  v6 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v6;
  v7 = *(this + 24);
  *(this + 24) = *(a2 + 3);
  *(a2 + 3) = v7;
  return this;
}

uint64_t CMMsl::AccessoryDeviceMotionConfig::AccessoryDeviceMotionConfig(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041C9B0;
  *(a1 + 8) = 0u;
  v4 = a1 + 8;
  *(a1 + 24) = 0u;
  *(a1 + 44) = *(a2 + 44);
  *(a2 + 44) = 0;
  v5 = *(a2 + 32);
  *(a2 + 32) = 0;
  v6 = *(a1 + 32);
  *(a1 + 32) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  *(a1 + 40) = *(a2 + 40);
  sub_1002A2DD0(v4, (a2 + 8));
  return a1;
}

uint64_t CMMsl::AccessoryDeviceMotionConfig::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::AccessoryDeviceMotionConfig::AccessoryDeviceMotionConfig(&v7, a2);
    v3 = *(a1 + 44);
    *(a1 + 44) = v11;
    v11 = v3;
    LOBYTE(v3) = *(a1 + 40);
    *(a1 + 40) = v10;
    v10 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v4;
    v5 = *(a1 + 24);
    *(a1 + 24) = v9;
    v9 = v5;
    CMMsl::AccessoryDeviceMotionConfig::~AccessoryDeviceMotionConfig(&v7);
  }

  return a1;
}

uint64_t CMMsl::AccessoryDeviceMotionConfig::formatText(CMMsl::AccessoryDeviceMotionConfig *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 4);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "config");
  }

  v6 = *(this + 1);
  v7 = *(this + 2);
  while (v6 != v7)
  {
    v8 = *v6++;
    PB::TextFormatter::format(a2, "headToHeadsetTransformation", v8);
  }

  if (*(this + 44))
  {
    PB::TextFormatter::format(a2, "isH2HValid", *(this + 40));
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::AccessoryDeviceMotionConfig::readFrom(CMMsl::AccessoryDeviceMotionConfig *this, PB::Reader *a2)
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
            goto LABEL_74;
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
      if ((v10 >> 3) == 3)
      {
        if (v22 == 2)
        {
          if (PB::Reader::placeMark())
          {
            goto LABEL_76;
          }

          v28 = *(a2 + 1);
          v29 = *(a2 + 2);
          while (v28 < v29 && (*(a2 + 24) & 1) == 0)
          {
            v31 = *(this + 2);
            v30 = *(this + 3);
            if (v31 >= v30)
            {
              v33 = *(this + 1);
              v34 = v31 - v33;
              v35 = (v31 - v33) >> 2;
              v36 = v35 + 1;
              if ((v35 + 1) >> 62)
              {
                goto LABEL_77;
              }

              v37 = v30 - v33;
              if (v37 >> 1 > v36)
              {
                v36 = v37 >> 1;
              }

              if (v37 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v38 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v38 = v36;
              }

              if (v38)
              {
                sub_10002290C(this + 8, v38);
              }

              v39 = (v31 - v33) >> 2;
              v40 = (4 * v35);
              v41 = (4 * v35 - 4 * v39);
              *v40 = 0;
              v32 = v40 + 1;
              memcpy(v41, v33, v34);
              v42 = *(this + 1);
              *(this + 1) = v41;
              *(this + 2) = v32;
              *(this + 3) = 0;
              if (v42)
              {
                operator delete(v42);
              }
            }

            else
            {
              *v31 = 0;
              v32 = v31 + 4;
            }

            *(this + 2) = v32;
            v43 = *(a2 + 1);
            if (v43 > 0xFFFFFFFFFFFFFFFBLL || v43 + 4 > *(a2 + 2))
            {
              *(a2 + 24) = 1;
              break;
            }

            *(v32 - 1) = *(*a2 + v43);
            v29 = *(a2 + 2);
            v28 = *(a2 + 1) + 4;
            *(a2 + 1) = v28;
          }

          PB::Reader::recallMark();
        }

        else
        {
          v45 = *(this + 2);
          v44 = *(this + 3);
          if (v45 >= v44)
          {
            v47 = *(this + 1);
            v48 = v45 - v47;
            v49 = (v45 - v47) >> 2;
            v50 = v49 + 1;
            if ((v49 + 1) >> 62)
            {
LABEL_77:
              sub_10000CD24();
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
              sub_10002290C(this + 8, v52);
            }

            v53 = (v45 - v47) >> 2;
            v54 = (4 * v49);
            v55 = (4 * v49 - 4 * v53);
            *v54 = 0;
            v46 = v54 + 1;
            memcpy(v55, v47, v48);
            v56 = *(this + 1);
            *(this + 1) = v55;
            *(this + 2) = v46;
            *(this + 3) = 0;
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

          *(this + 2) = v46;
          v57 = *(a2 + 1);
          if (v57 <= 0xFFFFFFFFFFFFFFFBLL && v57 + 4 <= *(a2 + 2))
          {
            *(v46 - 1) = *(*a2 + v57);
            *(a2 + 1) += 4;
          }

          else
          {
            *(a2 + 24) = 1;
          }
        }
      }

      else if (v23 == 2)
      {
        *(this + 44) |= 1u;
        v24 = *(a2 + 1);
        if (v24 >= *(a2 + 2))
        {
          v27 = 0;
          *(a2 + 24) = 1;
        }

        else
        {
          v25 = v24 + 1;
          v26 = *(*a2 + v24);
          *(a2 + 1) = v25;
          v27 = v26 != 0;
        }

        *(this + 40) = v27;
      }

      else
      {
        if (v23 == 1)
        {
          operator new();
        }

        if ((PB::Reader::skip(a2, v23, v22, 0) & 1) == 0)
        {
LABEL_76:
          v58 = 0;
          return v58 & 1;
        }
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_74:
  v58 = v4 ^ 1;
  return v58 & 1;
}

uint64_t CMMsl::AccessoryDeviceMotionConfig::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 32);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4, 1u);
  }

  if (*(v3 + 44))
  {
    this = PB::Writer::write(a2, *(v3 + 40), 2u);
  }

  v6 = *(v3 + 8);
  v5 = *(v3 + 16);
  while (v6 != v5)
  {
    v7 = *v6++;
    this = PB::Writer::write(a2, v7, 3u);
  }

  return this;
}

unint64_t CMMsl::AccessoryDeviceMotionConfig::hash_value(CMMsl::AccessoryDeviceMotionConfig *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v2 = CMMsl::AccessoryConfig::hash_value(v2);
  }

  if (*(this + 44))
  {
    v3 = *(this + 40);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3 ^ v2;
  v5 = *(this + 1);
  v6 = *(this + 2);
  return v4 ^ PBHashBytes();
}

uint64_t CMMsl::AccessoryDeviceMotionConfig::makeConfig(uint64_t this)
{
  if (!*(this + 32))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::AccessoryGyro::AccessoryGyro(uint64_t this)
{
  *this = off_10041C9E8;
  *(this + 8) = 0;
  *(this + 36) = 0;
  return this;
}

{
  *this = off_10041C9E8;
  *(this + 8) = 0;
  *(this + 36) = 0;
  return this;
}

void CMMsl::AccessoryGyro::~AccessoryGyro(CMMsl::AccessoryGyro *this)
{
  v2 = *(this + 1);
  *this = off_10041C9E8;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::AccessoryGyro::~AccessoryGyro(this);

  operator delete();
}

uint64_t CMMsl::AccessoryGyro::AccessoryGyro(uint64_t this, const CMMsl::AccessoryGyro *a2)
{
  *this = off_10041C9E8;
  *(this + 8) = 0;
  *(this + 36) = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  v2 = *(a2 + 36);
  if ((v2 & 2) != 0)
  {
    v4 = *(a2 + 6);
    *(this + 36) |= 2u;
    *(this + 24) = v4;
    v2 = *(a2 + 36);
    if ((v2 & 4) == 0)
    {
LABEL_5:
      if ((v2 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_11;
    }
  }

  else if ((*(a2 + 36) & 4) == 0)
  {
    goto LABEL_5;
  }

  v5 = *(a2 + 7);
  *(this + 36) |= 4u;
  *(this + 28) = v5;
  v2 = *(a2 + 36);
  if ((v2 & 8) == 0)
  {
LABEL_6:
    if ((v2 & 1) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

LABEL_11:
  v6 = *(a2 + 8);
  *(this + 36) |= 8u;
  *(this + 32) = v6;
  if ((*(a2 + 36) & 1) == 0)
  {
    return this;
  }

LABEL_7:
  v3 = *(a2 + 2);
  *(this + 36) |= 1u;
  *(this + 16) = v3;
  return this;
}

uint64_t CMMsl::AccessoryGyro::operator=(uint64_t a1, const CMMsl::AccessoryGyro *a2)
{
  if (a1 != a2)
  {
    CMMsl::AccessoryGyro::AccessoryGyro(v10, a2);
    v3 = *(a1 + 36);
    *(a1 + 36) = v15;
    v15 = v3;
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    v6 = v12;
    *(a1 + 8) = v11;
    *(a1 + 16) = v6;
    v7 = *(a1 + 24);
    *(a1 + 24) = v13;
    v13 = v7;
    v8 = *(a1 + 32);
    *(a1 + 32) = v14;
    v14 = v8;
    v11 = v4;
    v12 = v5;
    CMMsl::AccessoryGyro::~AccessoryGyro(v10);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::AccessoryGyro *a2, CMMsl::AccessoryGyro *a3)
{
  v3 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v3;
  v4 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v4;
  v5 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v5;
  v6 = *(this + 1);
  v7 = *(this + 2);
  v8 = *(a2 + 2);
  *(this + 1) = *(a2 + 1);
  *(this + 2) = v8;
  result = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = result;
  *(a2 + 1) = v6;
  *(a2 + 2) = v7;
  return result;
}

uint64_t CMMsl::AccessoryGyro::AccessoryGyro(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041C9E8;
  *(a1 + 8) = 0;
  *(a1 + 36) = *(a2 + 36);
  *(a2 + 36) = 0;
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t CMMsl::AccessoryGyro::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::AccessoryGyro::AccessoryGyro(v10, a2);
    v3 = *(a1 + 36);
    *(a1 + 36) = v15;
    v15 = v3;
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    v6 = v12;
    *(a1 + 8) = v11;
    *(a1 + 16) = v6;
    v7 = *(a1 + 24);
    *(a1 + 24) = v13;
    v13 = v7;
    v8 = *(a1 + 32);
    *(a1 + 32) = v14;
    v14 = v8;
    v11 = v4;
    v12 = v5;
    CMMsl::AccessoryGyro::~AccessoryGyro(v10);
  }

  return a1;
}

uint64_t CMMsl::AccessoryGyro::formatText(CMMsl::AccessoryGyro *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "gyro");
  }

  v6 = *(this + 36);
  if ((v6 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "location", *(this + 6));
    v6 = *(this + 36);
    if ((v6 & 1) == 0)
    {
LABEL_5:
      if ((v6 & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  else if ((*(this + 36) & 1) == 0)
  {
    goto LABEL_5;
  }

  PB::TextFormatter::format(a2, "sensorTime", *(this + 2));
  v6 = *(this + 36);
  if ((v6 & 4) == 0)
  {
LABEL_6:
    if ((v6 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_13:
  PB::TextFormatter::format(a2, "sequenceNumber", *(this + 7));
  if ((*(this + 36) & 8) != 0)
  {
LABEL_7:
    PB::TextFormatter::format(a2, "temp", *(this + 8));
  }

LABEL_8:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::AccessoryGyro::readFrom(CMMsl::AccessoryGyro *this, PB::Reader *a2)
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
            goto LABEL_96;
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
          operator new();
        }

        if (v22 == 2)
        {
          *(this + 36) |= 2u;
          v33 = *(a2 + 1);
          v32 = *(a2 + 2);
          v34 = *a2;
          if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v32)
          {
            v63 = 0;
            v64 = 0;
            v37 = 0;
            v17 = v32 >= v33;
            v65 = v32 - v33;
            if (!v17)
            {
              v65 = 0;
            }

            v66 = (v34 + v33);
            v67 = v33 + 1;
            while (1)
            {
              if (!v65)
              {
                LODWORD(v37) = 0;
                *(a2 + 24) = 1;
                goto LABEL_91;
              }

              v68 = *v66;
              *(a2 + 1) = v67;
              v37 |= (v68 & 0x7F) << v63;
              if ((v68 & 0x80) == 0)
              {
                break;
              }

              v63 += 7;
              --v65;
              ++v66;
              ++v67;
              v14 = v64++ > 8;
              if (v14)
              {
LABEL_78:
                LODWORD(v37) = 0;
                goto LABEL_91;
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
                goto LABEL_78;
              }
            }
          }

LABEL_91:
          *(this + 6) = v37;
          goto LABEL_92;
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            *(this + 36) |= 4u;
            v42 = *(a2 + 1);
            v41 = *(a2 + 2);
            v43 = *a2;
            if (v42 > 0xFFFFFFFFFFFFFFF5 || v42 + 10 > v41)
            {
              v51 = 0;
              v52 = 0;
              v46 = 0;
              v17 = v41 >= v42;
              v53 = v41 - v42;
              if (!v17)
              {
                v53 = 0;
              }

              v54 = (v43 + v42);
              v55 = v42 + 1;
              while (1)
              {
                if (!v53)
                {
                  LODWORD(v46) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_85;
                }

                v56 = *v54;
                *(a2 + 1) = v55;
                v46 |= (v56 & 0x7F) << v51;
                if ((v56 & 0x80) == 0)
                {
                  break;
                }

                v51 += 7;
                --v53;
                ++v54;
                ++v55;
                v14 = v52++ > 8;
                if (v14)
                {
LABEL_62:
                  LODWORD(v46) = 0;
                  goto LABEL_85;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v46) = 0;
              }
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
                  goto LABEL_62;
                }
              }
            }

LABEL_85:
            *(this + 7) = v46;
            goto LABEL_92;
          case 4:
            *(this + 36) |= 8u;
            v50 = *(a2 + 1);
            if (v50 <= 0xFFFFFFFFFFFFFFFBLL && v50 + 4 <= *(a2 + 2))
            {
              *(this + 8) = *(*a2 + v50);
              *(a2 + 1) += 4;
            }

            else
            {
              *(a2 + 24) = 1;
            }

            goto LABEL_92;
          case 5:
            *(this + 36) |= 1u;
            v24 = *(a2 + 1);
            v23 = *(a2 + 2);
            v25 = *a2;
            if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
            {
              v57 = 0;
              v58 = 0;
              v28 = 0;
              v17 = v23 >= v24;
              v59 = v23 - v24;
              if (!v17)
              {
                v59 = 0;
              }

              v60 = (v25 + v24);
              v61 = v24 + 1;
              while (1)
              {
                if (!v59)
                {
                  v28 = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_88;
                }

                v62 = *v60;
                *(a2 + 1) = v61;
                v28 |= (v62 & 0x7F) << v57;
                if ((v62 & 0x80) == 0)
                {
                  break;
                }

                v57 += 7;
                --v59;
                ++v60;
                ++v61;
                v14 = v58++ > 8;
                if (v14)
                {
LABEL_70:
                  v28 = 0;
                  goto LABEL_88;
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
                  goto LABEL_70;
                }
              }
            }

LABEL_88:
            *(this + 2) = v28;
            goto LABEL_92;
        }
      }

      if ((PB::Reader::skip(a2, v22, v10 & 7, 0) & 1) == 0)
      {
        v70 = 0;
        return v70 & 1;
      }

LABEL_92:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_96:
  v70 = v4 ^ 1;
  return v70 & 1;
}

uint64_t CMMsl::Gyro::Gyro(uint64_t this)
{
  *this = off_10041EA80;
  *(this + 44) = 0;
  return this;
}

{
  *this = off_10041EA80;
  *(this + 44) = 0;
  return this;
}

uint64_t CMMsl::AccessoryGyro::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4, 1u);
  }

  v5 = *(v3 + 36);
  if ((v5 & 2) != 0)
  {
    this = PB::Writer::writeVarInt(a2, *(v3 + 24), 2u);
    v5 = *(v3 + 36);
    if ((v5 & 4) == 0)
    {
LABEL_5:
      if ((v5 & 8) == 0)
      {
        goto LABEL_6;
      }

LABEL_10:
      this = PB::Writer::write(a2, *(v3 + 32), 4u);
      if ((*(v3 + 36) & 1) == 0)
      {
        return this;
      }

      goto LABEL_11;
    }
  }

  else if ((*(v3 + 36) & 4) == 0)
  {
    goto LABEL_5;
  }

  this = PB::Writer::writeVarInt(a2, *(v3 + 28), 3u);
  v5 = *(v3 + 36);
  if ((v5 & 8) != 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  if ((v5 & 1) == 0)
  {
    return this;
  }

LABEL_11:
  v6 = *(v3 + 16);

  return PB::Writer::writeVarInt(a2, v6, 5u);
}

BOOL CMMsl::AccessoryGyro::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5 || !CMMsl::Gyro::operator==(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if ((*(a1 + 36) & 2) != 0)
  {
    if ((*(a2 + 36) & 2) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 36) & 2) != 0)
  {
    return 0;
  }

  if ((*(a1 + 36) & 4) != 0)
  {
    if ((*(a2 + 36) & 4) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((*(a2 + 36) & 4) != 0)
  {
    return 0;
  }

  if ((*(a1 + 36) & 8) != 0)
  {
    if ((*(a2 + 36) & 8) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((*(a2 + 36) & 8) != 0)
  {
    return 0;
  }

  result = (*(a2 + 36) & 1) == 0;
  if ((*(a1 + 36) & 1) == 0)
  {
    return result;
  }

  return (*(a2 + 36) & 1) != 0 && *(a1 + 16) == *(a2 + 16);
}

BOOL CMMsl::Gyro::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 44);
  v3 = *(a2 + 44);
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

  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 28) != *(a2 + 28))
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
    if ((v3 & 0x20) == 0 || *(a1 + 32) != *(a2 + 32))
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
    if ((v3 & 0x40) == 0 || *(a1 + 36) != *(a2 + 36))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 20) != *(a2 + 20))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if ((*(a1 + 44) & 0x100) != 0)
  {
    if ((*(a2 + 44) & 0x100) == 0 || *(a1 + 41) != *(a2 + 41))
    {
      return 0;
    }
  }

  else if ((*(a2 + 44) & 0x100) != 0)
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

unint64_t CMMsl::AccessoryGyro::hash_value(CMMsl::AccessoryGyro *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    v2 = CMMsl::Gyro::hash_value(v2);
  }

  if ((*(this + 36) & 2) != 0)
  {
    v3 = *(this + 6);
    if ((*(this + 36) & 4) != 0)
    {
LABEL_5:
      v4 = *(this + 7);
      if ((*(this + 36) & 8) != 0)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 36) & 4) != 0)
    {
      goto LABEL_5;
    }
  }

  v4 = 0;
  if ((*(this + 36) & 8) != 0)
  {
LABEL_6:
    v5 = *(this + 8);
    v6 = LODWORD(v5);
    if (v5 == 0.0)
    {
      v6 = 0;
    }

    if (*(this + 36))
    {
      goto LABEL_9;
    }

LABEL_13:
    v7 = 0;
    return v3 ^ v2 ^ v4 ^ v6 ^ v7;
  }

LABEL_12:
  v6 = 0;
  if ((*(this + 36) & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_9:
  v7 = *(this + 2);
  return v3 ^ v2 ^ v4 ^ v6 ^ v7;
}

uint64_t CMMsl::AccessoryGyro::makeGyro(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

void *CMMsl::AccessoryGyroCachedBias::AccessoryGyroCachedBias(void *this)
{
  *this = off_10041CA20;
  this[1] = 0;
  return this;
}

{
  *this = off_10041CA20;
  this[1] = 0;
  return this;
}

void CMMsl::AccessoryGyroCachedBias::~AccessoryGyroCachedBias(CMMsl::AccessoryGyroCachedBias *this)
{
  *this = off_10041CA20;
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
  CMMsl::AccessoryGyroCachedBias::~AccessoryGyroCachedBias(this);

  operator delete();
}

void *CMMsl::AccessoryGyroCachedBias::AccessoryGyroCachedBias(void *this, const CMMsl::AccessoryGyroCachedBias *a2)
{
  *this = off_10041CA20;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const CMMsl::AccessoryGyroCachedBias *CMMsl::AccessoryGyroCachedBias::operator=(const CMMsl::AccessoryGyroCachedBias *a1, const CMMsl::AccessoryGyroCachedBias *a2)
{
  if (a1 != a2)
  {
    CMMsl::AccessoryGyroCachedBias::AccessoryGyroCachedBias(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    CMMsl::AccessoryGyroCachedBias::~AccessoryGyroCachedBias(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::AccessoryGyroCachedBias *a2, CMMsl::AccessoryGyroCachedBias *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::AccessoryGyroCachedBias::AccessoryGyroCachedBias(void *a1, uint64_t a2)
{
  *a1 = off_10041CA20;
  a1[1] = 0;
  v3 = a1 + 1;
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

uint64_t CMMsl::AccessoryGyroCachedBias::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::AccessoryGyroCachedBias::AccessoryGyroCachedBias(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    CMMsl::AccessoryGyroCachedBias::~AccessoryGyroCachedBias(&v5);
  }

  return a1;
}

uint64_t CMMsl::AccessoryGyroCachedBias::formatText(CMMsl::AccessoryGyroCachedBias *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 1))
  {
    PB::TextFormatter::format();
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::AccessoryGyroCachedBias::readFrom(CMMsl::AccessoryGyroCachedBias *this, PB::Reader *a2)
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

      if (!PB::Reader::skip(a2, v9 >> 3, v9 & 7, 0))
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

uint64_t CMMsl::AccessoryGyroCachedBias::writeTo(uint64_t this, PB::Writer *a2)
{
  if (*(this + 8))
  {
    return PB::Writer::write();
  }

  return this;
}

BOOL CMMsl::AccessoryGyroCachedBias::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  result = v3 == 0;
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    v5 = *(v2 + 23);
    if (v5 >= 0)
    {
      v6 = *(v2 + 23);
    }

    else
    {
      v6 = v2[1];
    }

    v7 = *(v3 + 23);
    v8 = v7;
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(v3 + 8);
    }

    if (v6 == v7 && (v5 >= 0 ? (v9 = v2) : (v9 = *v2), v8 >= 0 ? (v10 = *(a2 + 8)) : (v10 = *v3), !memcmp(v9, v10, v6)))
    {
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t CMMsl::AccessoryGyroCachedBias::hash_value(CMMsl::AccessoryGyroCachedBias *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    return sub_100011074(&v3, v1);
  }

  else
  {
    return 0;
  }
}

void *CMMsl::AccessoryGyroConfig::AccessoryGyroConfig(void *this)
{
  *this = off_10041CA58;
  this[1] = 0;
  return this;
}

{
  *this = off_10041CA58;
  this[1] = 0;
  return this;
}

void CMMsl::AccessoryGyroConfig::~AccessoryGyroConfig(CMMsl::AccessoryGyroConfig *this)
{
  v2 = *(this + 1);
  *this = off_10041CA58;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::AccessoryGyroConfig::~AccessoryGyroConfig(this);

  operator delete();
}

void *CMMsl::AccessoryGyroConfig::AccessoryGyroConfig(void *this, const CMMsl::AccessoryGyroConfig *a2)
{
  *this = off_10041CA58;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const CMMsl::AccessoryGyroConfig *CMMsl::AccessoryGyroConfig::operator=(const CMMsl::AccessoryGyroConfig *a1, const CMMsl::AccessoryGyroConfig *a2)
{
  if (a1 != a2)
  {
    CMMsl::AccessoryGyroConfig::AccessoryGyroConfig(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    CMMsl::AccessoryGyroConfig::~AccessoryGyroConfig(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::AccessoryGyroConfig *a2, CMMsl::AccessoryGyroConfig *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::AccessoryGyroConfig::AccessoryGyroConfig(void *a1, uint64_t a2)
{
  *a1 = off_10041CA58;
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
  *a1 = off_10041CA58;
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

uint64_t CMMsl::AccessoryGyroConfig::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = off_10041CA58;
    v6[1] = v4;
    CMMsl::AccessoryGyroConfig::~AccessoryGyroConfig(v6);
  }

  return a1;
}

uint64_t CMMsl::AccessoryGyroConfig::formatText(CMMsl::AccessoryGyroConfig *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "config");
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::AccessoryGyroConfig::readFrom(CMMsl::AccessoryGyroConfig *this, PB::Reader *a2)
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

uint64_t CMMsl::AccessoryGyroConfig::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2, 1u);
  }

  return this;
}

BOOL CMMsl::AccessoryGyroConfig::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  result = v3 == 0;
  if (v2)
  {
    return v3 && CMMsl::AccessoryConfig::operator==(v2, v3);
  }

  return result;
}

CMMsl::AccessoryConfig *CMMsl::AccessoryGyroConfig::hash_value(CMMsl::AccessoryGyroConfig *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::AccessoryConfig::hash_value(result);
  }

  return result;
}

uint64_t CMMsl::AccessoryGyroConfig::makeConfig(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

void *CMMsl::AccessoryGyroGYTT::AccessoryGyroGYTT(void *this)
{
  *this = off_10041CA90;
  this[1] = 0;
  return this;
}

{
  *this = off_10041CA90;
  this[1] = 0;
  return this;
}

void CMMsl::AccessoryGyroGYTT::~AccessoryGyroGYTT(CMMsl::AccessoryGyroGYTT *this)
{
  *this = off_10041CA90;
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
  CMMsl::AccessoryGyroGYTT::~AccessoryGyroGYTT(this);

  operator delete();
}

void *CMMsl::AccessoryGyroGYTT::AccessoryGyroGYTT(void *this, const CMMsl::AccessoryGyroGYTT *a2)
{
  *this = off_10041CA90;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const CMMsl::AccessoryGyroGYTT *CMMsl::AccessoryGyroGYTT::operator=(const CMMsl::AccessoryGyroGYTT *a1, const CMMsl::AccessoryGyroGYTT *a2)
{
  if (a1 != a2)
  {
    CMMsl::AccessoryGyroGYTT::AccessoryGyroGYTT(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    CMMsl::AccessoryGyroGYTT::~AccessoryGyroGYTT(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::AccessoryGyroGYTT *a2, CMMsl::AccessoryGyroGYTT *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::AccessoryGyroGYTT::AccessoryGyroGYTT(void *a1, uint64_t a2)
{
  *a1 = off_10041CA90;
  a1[1] = 0;
  v3 = a1 + 1;
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

uint64_t CMMsl::AccessoryGyroGYTT::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::AccessoryGyroGYTT::AccessoryGyroGYTT(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    CMMsl::AccessoryGyroGYTT::~AccessoryGyroGYTT(&v5);
  }

  return a1;
}

uint64_t CMMsl::AccessoryGyroGYTT::formatText(CMMsl::AccessoryGyroGYTT *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 1))
  {
    PB::TextFormatter::format();
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::AccessoryGyroGYTT::readFrom(CMMsl::AccessoryGyroGYTT *this, PB::Reader *a2)
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

      if (!PB::Reader::skip(a2, v9 >> 3, v9 & 7, 0))
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

uint64_t CMMsl::AccessoryGyroGYTT::writeTo(uint64_t this, PB::Writer *a2)
{
  if (*(this + 8))
  {
    return PB::Writer::write();
  }

  return this;
}

BOOL CMMsl::AccessoryGyroGYTT::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  result = v3 == 0;
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    v5 = *(v2 + 23);
    if (v5 >= 0)
    {
      v6 = *(v2 + 23);
    }

    else
    {
      v6 = v2[1];
    }

    v7 = *(v3 + 23);
    v8 = v7;
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(v3 + 8);
    }

    if (v6 == v7 && (v5 >= 0 ? (v9 = v2) : (v9 = *v2), v8 >= 0 ? (v10 = *(a2 + 8)) : (v10 = *v3), !memcmp(v9, v10, v6)))
    {
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t CMMsl::AccessoryGyroGYTT::hash_value(CMMsl::AccessoryGyroGYTT *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    return sub_100011074(&v3, v1);
  }

  else
  {
    return 0;
  }
}

void CMMsl::AccessoryHeartRate::~AccessoryHeartRate(CMMsl::AccessoryHeartRate *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::AccessoryHeartRate::AccessoryHeartRate(uint64_t this, const CMMsl::AccessoryHeartRate *a2)
{
  *this = off_10041CAC8;
  *(this + 56) = 0;
  *(this + 64) = 0;
  v2 = *(a2 + 34);
  if ((v2 & 0x10) != 0)
  {
    v4 = *(a2 + 5);
    v3 = 16;
    *(this + 68) = 16;
    *(this + 40) = v4;
    v2 = *(a2 + 34);
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x40) != 0)
  {
LABEL_5:
    v5 = *(a2 + 13);
    v3 |= 0x40u;
    *(this + 68) = v3;
    *(this + 52) = v5;
    v2 = *(a2 + 34);
  }

LABEL_6:
  if ((v2 & 0x20) != 0)
  {
    v6 = *(a2 + 12);
    v3 |= 0x20u;
    *(this + 68) = v3;
    *(this + 48) = v6;
    v2 = *(a2 + 34);
    if ((v2 & 2) == 0)
    {
LABEL_8:
      if ((v2 & 0x100) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 2);
  v3 |= 2u;
  *(this + 68) = v3;
  *(this + 16) = v7;
  v2 = *(a2 + 34);
  if ((v2 & 0x100) == 0)
  {
LABEL_9:
    if ((v2 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

LABEL_17:
  v8 = *(a2 + 15);
  v3 |= 0x100u;
  *(this + 68) = v3;
  *(this + 60) = v8;
  v2 = *(a2 + 34);
  if ((v2 & 8) == 0)
  {
LABEL_10:
    if ((v2 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

LABEL_18:
  v9 = *(a2 + 4);
  v3 |= 8u;
  *(this + 68) = v3;
  *(this + 32) = v9;
  v2 = *(a2 + 34);
  if ((v2 & 4) == 0)
  {
LABEL_11:
    if ((v2 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

LABEL_19:
  v10 = *(a2 + 3);
  v3 |= 4u;
  *(this + 68) = v3;
  *(this + 24) = v10;
  v2 = *(a2 + 34);
  if ((v2 & 1) == 0)
  {
LABEL_12:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_21;
  }

LABEL_20:
  v11 = *(a2 + 1);
  v3 |= 1u;
  *(this + 68) = v3;
  *(this + 8) = v11;
  v2 = *(a2 + 34);
  if ((v2 & 0x200) == 0)
  {
LABEL_13:
    if ((v2 & 0x80) == 0)
    {
      return this;
    }

LABEL_22:
    v13 = *(a2 + 14);
    *(this + 68) = v3 | 0x80;
    *(this + 56) = v13;
    return this;
  }

LABEL_21:
  v12 = *(a2 + 16);
  v3 |= 0x200u;
  *(this + 68) = v3;
  *(this + 64) = v12;
  if ((*(a2 + 34) & 0x80) != 0)
  {
    goto LABEL_22;
  }

  return this;
}

uint64_t CMMsl::AccessoryHeartRate::operator=(uint64_t a1, const CMMsl::AccessoryHeartRate *a2)
{
  if (a1 != a2)
  {
    CMMsl::AccessoryHeartRate::AccessoryHeartRate(v10, a2);
    v3 = *(a1 + 68);
    *(a1 + 68) = v16;
    v16 = v3;
    v4 = *(a1 + 40);
    *(a1 + 40) = v13;
    v13 = v4;
    LODWORD(v4) = *(a1 + 48);
    *(a1 + 48) = v14;
    v14 = v4;
    v5 = v11;
    v6 = *(a1 + 24);
    *(a1 + 24) = v12;
    v7 = *(a1 + 8);
    *(a1 + 8) = v5;
    v11 = v7;
    v12 = v6;
    v8 = *(a1 + 52);
    *(a1 + 52) = v15;
    v15 = v8;
    PB::Base::~Base(v10);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::AccessoryHeartRate *a2, CMMsl::AccessoryHeartRate *a3)
{
  v3 = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v3;
  v4 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v4;
  LODWORD(v4) = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v4;
  v5 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v5;
  v6 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v6;
  v7 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v7;
  v8 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v8;
  v9 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v9;
  result = *(a2 + 52);
  v11 = *(this + 52);
  *(this + 52) = result;
  *(a2 + 52) = v11;
  v12 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v12;
  return result;
}

double CMMsl::AccessoryHeartRate::AccessoryHeartRate(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041CAC8;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 68) = *(a2 + 68);
  *(a2 + 68) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 64) = *(a2 + 64);
  result = *(a2 + 52);
  *(a1 + 52) = result;
  *(a1 + 60) = *(a2 + 60);
  return result;
}

uint64_t CMMsl::AccessoryHeartRate::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::AccessoryHeartRate::AccessoryHeartRate(v10, a2);
    v3 = *(a1 + 68);
    *(a1 + 68) = v16;
    v16 = v3;
    v4 = *(a1 + 40);
    *(a1 + 40) = v13;
    v13 = v4;
    LODWORD(v4) = *(a1 + 48);
    *(a1 + 48) = v14;
    v14 = v4;
    v5 = v11;
    v6 = *(a1 + 24);
    *(a1 + 24) = v12;
    v7 = *(a1 + 8);
    *(a1 + 8) = v5;
    v11 = v7;
    v12 = v6;
    v8 = *(a1 + 52);
    *(a1 + 52) = v15;
    v15 = v8;
    PB::Base::~Base(v10);
  }

  return a1;
}

uint64_t CMMsl::AccessoryHeartRate::formatText(CMMsl::AccessoryHeartRate *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 34);
  if (v5)
  {
    PB::TextFormatter::format(a2, "arrivalTimestamp", *(this + 1));
    v5 = *(this + 34);
    if ((v5 & 0x20) == 0)
    {
LABEL_3:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((v5 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "confidence", *(this + 12));
  v5 = *(this + 34);
  if ((v5 & 0x40) == 0)
  {
LABEL_4:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  PB::TextFormatter::format(a2, "heartRate", *(this + 13));
  v5 = *(this + 34);
  if ((v5 & 0x80) == 0)
  {
LABEL_5:
    if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  PB::TextFormatter::format(a2, "hrSensorLocation", *(this + 14));
  v5 = *(this + 34);
  if ((v5 & 2) == 0)
  {
LABEL_6:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  PB::TextFormatter::format(a2, "sensorTime", *(this + 2));
  v5 = *(this + 34);
  if ((v5 & 0x100) == 0)
  {
LABEL_7:
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(a2, "sequenceNumber", *(this + 15));
  v5 = *(this + 34);
  if ((v5 & 4) == 0)
  {
LABEL_8:
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(a2, "sourceTimestampToCFAbsoluteTime", *(this + 3));
  v5 = *(this + 34);
  if ((v5 & 8) == 0)
  {
LABEL_9:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(a2, "sourceTimestampToMachContinuous", *(this + 4));
  v5 = *(this + 34);
  if ((v5 & 0x200) == 0)
  {
LABEL_10:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  PB::TextFormatter::format(a2, "timeSyncStatus", *(this + 16));
  if ((*(this + 34) & 0x10) != 0)
  {
LABEL_11:
    PB::TextFormatter::format(a2, "timestamp", *(this + 5));
  }

LABEL_12:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::AccessoryHeartRate::readFrom(CMMsl::AccessoryHeartRate *this, PB::Reader *a2)
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
            goto LABEL_142;
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
            *(this + 34) |= 8u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
LABEL_73:
              *(a2 + 24) = 1;
              goto LABEL_138;
            }

            *(this + 4) = *(*a2 + v2);
LABEL_116:
            v2 = *(a2 + 1) + 8;
LABEL_117:
            *(a2 + 1) = v2;
            goto LABEL_138;
          }

          if (v22 == 7)
          {
            *(this + 34) |= 4u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
              goto LABEL_73;
            }

            *(this + 3) = *(*a2 + v2);
            goto LABEL_116;
          }
        }

        else
        {
          switch(v22)
          {
            case 8:
              *(this + 34) |= 1u;
              v2 = *(a2 + 1);
              if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
              {
                goto LABEL_73;
              }

              *(this + 1) = *(*a2 + v2);
              goto LABEL_116;
            case 9:
              *(this + 34) |= 0x200u;
              v47 = *(a2 + 1);
              v2 = *(a2 + 2);
              v48 = *a2;
              if (v47 > 0xFFFFFFFFFFFFFFF5 || v47 + 10 > v2)
              {
                v76 = 0;
                v77 = 0;
                v51 = 0;
                if (v2 <= v47)
                {
                  v2 = *(a2 + 1);
                }

                v78 = v2 - v47;
                v79 = (v48 + v47);
                v80 = v47 + 1;
                while (1)
                {
                  if (!v78)
                  {
                    LODWORD(v51) = 0;
                    *(a2 + 24) = 1;
                    goto LABEL_137;
                  }

                  v81 = v80;
                  v82 = *v79;
                  *(a2 + 1) = v81;
                  v51 |= (v82 & 0x7F) << v76;
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
                    LODWORD(v51) = 0;
                    goto LABEL_136;
                  }
                }

                if (*(a2 + 24))
                {
                  LODWORD(v51) = 0;
                }

LABEL_136:
                v2 = v81;
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

LABEL_137:
              *(this + 16) = v51;
              goto LABEL_138;
            case 0xA:
              *(this + 34) |= 0x80u;
              v31 = *(a2 + 1);
              v2 = *(a2 + 2);
              v32 = *a2;
              if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
              {
                v69 = 0;
                v70 = 0;
                v35 = 0;
                if (v2 <= v31)
                {
                  v2 = *(a2 + 1);
                }

                v71 = v2 - v31;
                v72 = (v32 + v31);
                v73 = v31 + 1;
                while (1)
                {
                  if (!v71)
                  {
                    LODWORD(v35) = 0;
                    *(a2 + 24) = 1;
                    goto LABEL_133;
                  }

                  v74 = v73;
                  v75 = *v72;
                  *(a2 + 1) = v74;
                  v35 |= (v75 & 0x7F) << v69;
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
                    LODWORD(v35) = 0;
                    goto LABEL_132;
                  }
                }

                if (*(a2 + 24))
                {
                  LODWORD(v35) = 0;
                }

LABEL_132:
                v2 = v74;
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

LABEL_133:
              *(this + 14) = v35;
              goto LABEL_138;
          }
        }
      }

      else if (v22 <= 2)
      {
        if (v22 == 1)
        {
          *(this + 34) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_73;
          }

          *(this + 5) = *(*a2 + v2);
          goto LABEL_116;
        }

        if (v22 == 2)
        {
          *(this + 34) |= 0x40u;
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
                goto LABEL_125;
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
                goto LABEL_124;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v43) = 0;
            }

LABEL_124:
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

LABEL_125:
          *(this + 13) = v43;
          goto LABEL_138;
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            *(this + 34) |= 0x20u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
              goto LABEL_73;
            }

            *(this + 12) = *(*a2 + v2);
            v2 = *(a2 + 1) + 4;
            goto LABEL_117;
          case 4:
            *(this + 34) |= 2u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
              goto LABEL_73;
            }

            *(this + 2) = *(*a2 + v2);
            goto LABEL_116;
          case 5:
            *(this + 34) |= 0x100u;
            v23 = *(a2 + 1);
            v2 = *(a2 + 2);
            v24 = *a2;
            if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
            {
              v62 = 0;
              v63 = 0;
              v27 = 0;
              if (v2 <= v23)
              {
                v2 = *(a2 + 1);
              }

              v64 = v2 - v23;
              v65 = (v24 + v23);
              v66 = v23 + 1;
              while (1)
              {
                if (!v64)
                {
                  LODWORD(v27) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_129;
                }

                v67 = v66;
                v68 = *v65;
                *(a2 + 1) = v67;
                v27 |= (v68 & 0x7F) << v62;
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
                  LODWORD(v27) = 0;
                  goto LABEL_128;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v27) = 0;
              }

LABEL_128:
              v2 = v67;
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

LABEL_129:
            *(this + 15) = v27;
            goto LABEL_138;
        }
      }

      if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
      {
        v83 = 0;
        return v83 & 1;
      }

      v2 = *(a2 + 1);
LABEL_138:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_142:
  v83 = v4 ^ 1;
  return v83 & 1;
}

uint64_t CMMsl::AccessoryHeartRate::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 68);
  if ((v4 & 0x10) != 0)
  {
    this = PB::Writer::write(a2, *(this + 40), 1u);
    v4 = *(v3 + 68);
    if ((v4 & 0x40) == 0)
    {
LABEL_3:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v4 & 0x40) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::writeVarInt(a2, *(v3 + 52), 2u);
  v4 = *(v3 + 68);
  if ((v4 & 0x20) == 0)
  {
LABEL_4:
    if ((v4 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = PB::Writer::write(a2, *(v3 + 48), 3u);
  v4 = *(v3 + 68);
  if ((v4 & 2) == 0)
  {
LABEL_5:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  this = PB::Writer::write(a2, *(v3 + 16), 4u);
  v4 = *(v3 + 68);
  if ((v4 & 0x100) == 0)
  {
LABEL_6:
    if ((v4 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = PB::Writer::writeVarInt(a2, *(v3 + 60), 5u);
  v4 = *(v3 + 68);
  if ((v4 & 8) == 0)
  {
LABEL_7:
    if ((v4 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = PB::Writer::write(a2, *(v3 + 32), 6u);
  v4 = *(v3 + 68);
  if ((v4 & 4) == 0)
  {
LABEL_8:
    if ((v4 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = PB::Writer::write(a2, *(v3 + 24), 7u);
  v4 = *(v3 + 68);
  if ((v4 & 1) == 0)
  {
LABEL_9:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    this = PB::Writer::writeVarInt(a2, *(v3 + 64), 9u);
    if ((*(v3 + 68) & 0x80) == 0)
    {
      return this;
    }

    goto LABEL_21;
  }

LABEL_19:
  this = PB::Writer::write(a2, *(v3 + 8), 8u);
  v4 = *(v3 + 68);
  if ((v4 & 0x200) != 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((v4 & 0x80) == 0)
  {
    return this;
  }

LABEL_21:
  v5 = *(v3 + 56);

  return PB::Writer::writeVarInt(a2, v5, 0xAu);
}

uint64_t CMMsl::AccessoryHeartRate::hash_value(CMMsl::AccessoryHeartRate *this)
{
  v1 = *(this + 34);
  if ((v1 & 0x10) != 0)
  {
    v2 = *(this + 5);
    if (v2 == 0.0)
    {
      v2 = 0.0;
    }

    if ((v1 & 0x40) != 0)
    {
LABEL_3:
      v3 = *(this + 13);
      if ((v1 & 0x20) != 0)
      {
        goto LABEL_4;
      }

LABEL_26:
      v5 = 0;
      if ((v1 & 2) != 0)
      {
        goto LABEL_7;
      }

LABEL_27:
      v6 = 0.0;
      if ((*(this + 34) & 0x100) != 0)
      {
        goto LABEL_10;
      }

      goto LABEL_28;
    }
  }

  else
  {
    v2 = 0.0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((v1 & 0x20) == 0)
  {
    goto LABEL_26;
  }

LABEL_4:
  v4 = *(this + 12);
  v5 = LODWORD(v4);
  if (v4 == 0.0)
  {
    v5 = 0;
  }

  if ((v1 & 2) == 0)
  {
    goto LABEL_27;
  }

LABEL_7:
  v6 = *(this + 2);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  if ((*(this + 34) & 0x100) != 0)
  {
LABEL_10:
    v7 = *(this + 15);
    if ((v1 & 8) != 0)
    {
      goto LABEL_11;
    }

LABEL_29:
    v8 = 0.0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_14;
    }

LABEL_30:
    v9 = 0.0;
    if (v1)
    {
      goto LABEL_17;
    }

LABEL_31:
    v10 = 0.0;
    if ((*(this + 34) & 0x200) != 0)
    {
      goto LABEL_20;
    }

LABEL_32:
    v11 = 0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_21;
    }

LABEL_33:
    v12 = 0;
    return v3 ^ *&v2 ^ v5 ^ *&v6 ^ v7 ^ *&v8 ^ *&v9 ^ *&v10 ^ v11 ^ v12;
  }

LABEL_28:
  v7 = 0;
  if ((v1 & 8) == 0)
  {
    goto LABEL_29;
  }

LABEL_11:
  v8 = *(this + 4);
  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  if ((v1 & 4) == 0)
  {
    goto LABEL_30;
  }

LABEL_14:
  v9 = *(this + 3);
  if (v9 == 0.0)
  {
    v9 = 0.0;
  }

  if ((v1 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_17:
  v10 = *(this + 1);
  if (v10 == 0.0)
  {
    v10 = 0.0;
  }

  if ((*(this + 34) & 0x200) == 0)
  {
    goto LABEL_32;
  }

LABEL_20:
  v11 = *(this + 16);
  if ((v1 & 0x80) == 0)
  {
    goto LABEL_33;
  }

LABEL_21:
  v12 = *(this + 14);
  return v3 ^ *&v2 ^ v5 ^ *&v6 ^ v7 ^ *&v8 ^ *&v9 ^ *&v10 ^ v11 ^ v12;
}

uint64_t CMMsl::AccessoryInEarDetection::AccessoryInEarDetection(uint64_t this)
{
  *this = off_10041CB00;
  *(this + 112) = 0;
  return this;
}

{
  *this = off_10041CB00;
  *(this + 112) = 0;
  return this;
}

void CMMsl::AccessoryInEarDetection::~AccessoryInEarDetection(CMMsl::AccessoryInEarDetection *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::AccessoryInEarDetection::AccessoryInEarDetection(uint64_t this, const CMMsl::AccessoryInEarDetection *a2)
{
  *this = off_10041CB00;
  *(this + 112) = 0;
  v2 = *(a2 + 28);
  if ((v2 & 2) != 0)
  {
    v4 = *(a2 + 2);
    v3 = 2;
    *(this + 112) = 2;
    *(this + 16) = v4;
    v2 = *(a2 + 28);
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
    v5 = *(a2 + 1);
    v3 |= 1u;
    *(this + 112) = v3;
    *(this + 8) = v5;
    v2 = *(a2 + 28);
  }

LABEL_6:
  if ((v2 & 0x20) != 0)
  {
    v6 = *(a2 + 9);
    v3 |= 0x20u;
    *(this + 112) = v3;
    *(this + 36) = v6;
    v2 = *(a2 + 28);
    if ((v2 & 0x10) == 0)
    {
LABEL_8:
      if ((v2 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_31;
    }
  }

  else if ((v2 & 0x10) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 8);
  v3 |= 0x10u;
  *(this + 112) = v3;
  *(this + 32) = v7;
  v2 = *(a2 + 28);
  if ((v2 & 0x40) == 0)
  {
LABEL_9:
    if ((v2 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  v8 = *(a2 + 10);
  v3 |= 0x40u;
  *(this + 112) = v3;
  *(this + 40) = v8;
  v2 = *(a2 + 28);
  if ((v2 & 8) == 0)
  {
LABEL_10:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_33;
  }

LABEL_32:
  v9 = *(a2 + 7);
  v3 |= 8u;
  *(this + 112) = v3;
  *(this + 28) = v9;
  v2 = *(a2 + 28);
  if ((v2 & 0x400) == 0)
  {
LABEL_11:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_34;
  }

LABEL_33:
  v10 = *(a2 + 14);
  v3 |= 0x400u;
  *(this + 112) = v3;
  *(this + 56) = v10;
  v2 = *(a2 + 28);
  if ((v2 & 0x1000) == 0)
  {
LABEL_12:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_35;
  }

LABEL_34:
  v11 = *(a2 + 16);
  v3 |= 0x1000u;
  *(this + 112) = v3;
  *(this + 64) = v11;
  v2 = *(a2 + 28);
  if ((v2 & 0x800) == 0)
  {
LABEL_13:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_35:
  v12 = *(a2 + 15);
  v3 |= 0x800u;
  *(this + 112) = v3;
  *(this + 60) = v12;
  v2 = *(a2 + 28);
  if ((v2 & 0x2000) == 0)
  {
LABEL_14:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

LABEL_36:
  v13 = *(a2 + 17);
  v3 |= 0x2000u;
  *(this + 112) = v3;
  *(this + 68) = v13;
  v2 = *(a2 + 28);
  if ((v2 & 0x20000) == 0)
  {
LABEL_15:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_37:
  v14 = *(a2 + 21);
  v3 |= 0x20000u;
  *(this + 112) = v3;
  *(this + 84) = v14;
  v2 = *(a2 + 28);
  if ((v2 & 0x80000) == 0)
  {
LABEL_16:
    if ((v2 & 0x40000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

LABEL_38:
  v15 = *(a2 + 23);
  v3 |= 0x80000u;
  *(this + 112) = v3;
  *(this + 92) = v15;
  v2 = *(a2 + 28);
  if ((v2 & 0x40000) == 0)
  {
LABEL_17:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_40;
  }

LABEL_39:
  v16 = *(a2 + 22);
  v3 |= 0x40000u;
  *(this + 112) = v3;
  *(this + 88) = v16;
  v2 = *(a2 + 28);
  if ((v2 & 0x100000) == 0)
  {
LABEL_18:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_41;
  }

LABEL_40:
  v17 = *(a2 + 24);
  v3 |= 0x100000u;
  *(this + 112) = v3;
  *(this + 96) = v17;
  v2 = *(a2 + 28);
  if ((v2 & 0x100) == 0)
  {
LABEL_19:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_42;
  }

LABEL_41:
  v18 = *(a2 + 12);
  v3 |= 0x100u;
  *(this + 112) = v3;
  *(this + 48) = v18;
  v2 = *(a2 + 28);
  if ((v2 & 0x200) == 0)
  {
LABEL_20:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_43;
  }

LABEL_42:
  v19 = *(a2 + 13);
  v3 |= 0x200u;
  *(this + 112) = v3;
  *(this + 52) = v19;
  v2 = *(a2 + 28);
  if ((v2 & 0x8000) == 0)
  {
LABEL_21:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_44;
  }

LABEL_43:
  v20 = *(a2 + 19);
  v3 |= 0x8000u;
  *(this + 112) = v3;
  *(this + 76) = v20;
  v2 = *(a2 + 28);
  if ((v2 & 0x10000) == 0)
  {
LABEL_22:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_45;
  }

LABEL_44:
  v21 = *(a2 + 20);
  v3 |= 0x10000u;
  *(this + 112) = v3;
  *(this + 80) = v21;
  v2 = *(a2 + 28);
  if ((v2 & 0x4000) == 0)
  {
LABEL_23:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_46;
  }

LABEL_45:
  v22 = *(a2 + 18);
  v3 |= 0x4000u;
  *(this + 112) = v3;
  *(this + 72) = v22;
  v2 = *(a2 + 28);
  if ((v2 & 0x200000) == 0)
  {
LABEL_24:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_47;
  }

LABEL_46:
  v23 = *(a2 + 25);
  v3 |= 0x200000u;
  *(this + 112) = v3;
  *(this + 100) = v23;
  v2 = *(a2 + 28);
  if ((v2 & 0x80) == 0)
  {
LABEL_25:
    if ((v2 & 4) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_48;
  }

LABEL_47:
  v24 = *(a2 + 11);
  v3 |= 0x80u;
  *(this + 112) = v3;
  *(this + 44) = v24;
  v2 = *(a2 + 28);
  if ((v2 & 4) == 0)
  {
LABEL_26:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_49;
  }

LABEL_48:
  v25 = *(a2 + 6);
  v3 |= 4u;
  *(this + 112) = v3;
  *(this + 24) = v25;
  v2 = *(a2 + 28);
  if ((v2 & 0x400000) == 0)
  {
LABEL_27:
    if ((v2 & 0x800000) == 0)
    {
      return this;
    }

LABEL_50:
    *(this + 108) = *(a2 + 27);
    *(this + 112) = v3 | 0x800000;
    return this;
  }

LABEL_49:
  v26 = *(a2 + 26);
  v3 |= 0x400000u;
  *(this + 112) = v3;
  *(this + 104) = v26;
  if ((*(a2 + 28) & 0x800000) != 0)
  {
    goto LABEL_50;
  }

  return this;
}

CMMsl *CMMsl::AccessoryInEarDetection::operator=(CMMsl *a1, const CMMsl::AccessoryInEarDetection *a2)
{
  if (a1 != a2)
  {
    CMMsl::AccessoryInEarDetection::AccessoryInEarDetection(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::AccessoryInEarDetection *a2, CMMsl::AccessoryInEarDetection *a3)
{
  v3 = *(this + 28);
  *(this + 28) = *(a2 + 28);
  *(a2 + 28) = v3;
  v4 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v5;
  LODWORD(v5) = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v5;
  LODWORD(v5) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v5;
  LODWORD(v5) = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v5;
  LODWORD(v5) = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v5;
  LODWORD(v5) = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v5;
  LODWORD(v5) = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v5;
  LODWORD(v5) = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v5;
  LODWORD(v5) = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v5;
  LODWORD(v5) = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v5;
  LODWORD(v5) = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = v5;
  LODWORD(v5) = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v5;
  LODWORD(v5) = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v5;
  LODWORD(v5) = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v5;
  LODWORD(v4) = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v4;
  LODWORD(v5) = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v5;
  result = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = result;
  LODWORD(v5) = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v5;
  LODWORD(v5) = *(this + 25);
  *(this + 25) = *(a2 + 25);
  *(a2 + 25) = v5;
  LODWORD(v5) = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v5;
  LODWORD(v5) = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v5;
  LODWORD(v5) = *(this + 26);
  *(this + 26) = *(a2 + 26);
  *(a2 + 26) = v5;
  LODWORD(v5) = *(this + 27);
  *(this + 27) = *(a2 + 27);
  *(a2 + 27) = v5;
  return result;
}

float CMMsl::AccessoryInEarDetection::AccessoryInEarDetection(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041CB00;
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 112) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 76) = *(a2 + 76);
  result = *(a2 + 80);
  *(a1 + 80) = result;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  return result;
}

CMMsl *CMMsl::AccessoryInEarDetection::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::AccessoryInEarDetection::AccessoryInEarDetection(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::AccessoryInEarDetection::formatText(CMMsl::AccessoryInEarDetection *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 28);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(a2, "configId", *(this + 6));
    v5 = *(this + 28);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_31;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "failure", *(this + 7));
  v5 = *(this + 28);
  if ((v5 & 0x10) == 0)
  {
LABEL_4:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_32;
  }

LABEL_31:
  PB::TextFormatter::format(a2, "frameNum", *(this + 8));
  v5 = *(this + 28);
  if ((v5 & 0x20) == 0)
  {
LABEL_5:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_33;
  }

LABEL_32:
  PB::TextFormatter::format(a2, "reportId", *(this + 9));
  v5 = *(this + 28);
  if ((v5 & 0x40) == 0)
  {
LABEL_6:
    if ((v5 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(a2, "scanError", *(this + 10));
  v5 = *(this + 28);
  if ((v5 & 1) == 0)
  {
LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_35;
  }

LABEL_34:
  PB::TextFormatter::format(a2, "sensorTime", *(this + 1));
  v5 = *(this + 28);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(a2, "temperature", *(this + 11));
  v5 = *(this + 28);
  if ((v5 & 2) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(a2, "timestamp", *(this + 2));
  v5 = *(this + 28);
  if ((v5 & 0x100) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_38;
  }

LABEL_37:
  PB::TextFormatter::format(a2, "ts0CalCount", *(this + 12));
  v5 = *(this + 28);
  if ((v5 & 0x200) == 0)
  {
LABEL_11:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(a2, "ts0CalnA", *(this + 13));
  v5 = *(this + 28);
  if ((v5 & 0x400) == 0)
  {
LABEL_12:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(a2, "ts0Dark0", *(this + 14));
  v5 = *(this + 28);
  if ((v5 & 0x800) == 0)
  {
LABEL_13:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_41;
  }

LABEL_40:
  PB::TextFormatter::format(a2, "ts0Dark1", *(this + 15));
  v5 = *(this + 28);
  if ((v5 & 0x1000) == 0)
  {
LABEL_14:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_42;
  }

LABEL_41:
  PB::TextFormatter::format(a2, "ts0Light", *(this + 16));
  v5 = *(this + 28);
  if ((v5 & 0x2000) == 0)
  {
LABEL_15:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_43;
  }

LABEL_42:
  PB::TextFormatter::format(a2, "ts0PdVf", *(this + 17));
  v5 = *(this + 28);
  if ((v5 & 0x4000) == 0)
  {
LABEL_16:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_44;
  }

LABEL_43:
  PB::TextFormatter::format(a2, "ts0RxGain", *(this + 18));
  v5 = *(this + 28);
  if ((v5 & 0x8000) == 0)
  {
LABEL_17:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_45;
  }

LABEL_44:
  PB::TextFormatter::format(a2, "ts1CalCount", *(this + 19));
  v5 = *(this + 28);
  if ((v5 & 0x10000) == 0)
  {
LABEL_18:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_46;
  }

LABEL_45:
  PB::TextFormatter::format(a2, "ts1CalnA", *(this + 20));
  v5 = *(this + 28);
  if ((v5 & 0x20000) == 0)
  {
LABEL_19:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_47;
  }

LABEL_46:
  PB::TextFormatter::format(a2, "ts1Dark0", *(this + 21));
  v5 = *(this + 28);
  if ((v5 & 0x40000) == 0)
  {
LABEL_20:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_48;
  }

LABEL_47:
  PB::TextFormatter::format(a2, "ts1Dark1", *(this + 22));
  v5 = *(this + 28);
  if ((v5 & 0x80000) == 0)
  {
LABEL_21:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_49;
  }

LABEL_48:
  PB::TextFormatter::format(a2, "ts1Light", *(this + 23));
  v5 = *(this + 28);
  if ((v5 & 0x100000) == 0)
  {
LABEL_22:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_50;
  }

LABEL_49:
  PB::TextFormatter::format(a2, "ts1PdVf", *(this + 24));
  v5 = *(this + 28);
  if ((v5 & 0x200000) == 0)
  {
LABEL_23:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_51;
  }

LABEL_50:
  PB::TextFormatter::format(a2, "ts1RxGain", *(this + 25));
  v5 = *(this + 28);
  if ((v5 & 0x400000) == 0)
  {
LABEL_24:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_51:
  PB::TextFormatter::format(a2, "tx0CurrentuA", *(this + 26));
  if ((*(this + 28) & 0x800000) != 0)
  {
LABEL_25:
    PB::TextFormatter::format(a2, "tx1CurrentuA", *(this + 27));
  }

LABEL_26:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::AccessoryInEarDetection::readFrom(CMMsl::AccessoryInEarDetection *this, PB::Reader *a2)
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
            goto LABEL_440;
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
          *(this + 28) |= 2u;
          v22 = *(a2 + 1);
          if (v22 > 0xFFFFFFFFFFFFFFF7 || v22 + 8 > *(a2 + 2))
          {
            goto LABEL_101;
          }

          *(this + 2) = *(*a2 + v22);
          v23 = *(a2 + 1) + 8;
          goto LABEL_351;
        case 2u:
          *(this + 28) |= 1u;
          v107 = *(a2 + 1);
          v106 = *(a2 + 2);
          v108 = *a2;
          if (v107 <= 0xFFFFFFFFFFFFFFF5 && v107 + 10 <= v106)
          {
            v109 = 0;
            v110 = 0;
            v111 = 0;
            v112 = (v108 + v107);
            v113 = v107 + 1;
            do
            {
              *(a2 + 1) = v113;
              v114 = *v112++;
              v111 |= (v114 & 0x7F) << v109;
              if ((v114 & 0x80) == 0)
              {
                goto LABEL_402;
              }

              v109 += 7;
              ++v113;
              v14 = v110++ > 8;
            }

            while (!v14);
LABEL_260:
            v111 = 0;
            goto LABEL_402;
          }

          v269 = 0;
          v270 = 0;
          v111 = 0;
          v17 = v106 >= v107;
          v271 = v106 - v107;
          if (!v17)
          {
            v271 = 0;
          }

          v272 = (v108 + v107);
          v273 = v107 + 1;
          while (2)
          {
            if (v271)
            {
              v274 = *v272;
              *(a2 + 1) = v273;
              v111 |= (v274 & 0x7F) << v269;
              if (v274 < 0)
              {
                v269 += 7;
                --v271;
                ++v272;
                ++v273;
                v14 = v270++ > 8;
                if (v14)
                {
                  goto LABEL_260;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v111 = 0;
              }
            }

            else
            {
              v111 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_402:
          *(this + 1) = v111;
          goto LABEL_436;
        case 3u:
          *(this + 28) |= 0x20u;
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
                goto LABEL_393;
              }

              v81 += 7;
              ++v85;
              v14 = v82++ > 8;
            }

            while (!v14);
LABEL_236:
            LODWORD(v83) = 0;
            goto LABEL_393;
          }

          v251 = 0;
          v252 = 0;
          v83 = 0;
          v17 = v78 >= v79;
          v253 = v78 - v79;
          if (!v17)
          {
            v253 = 0;
          }

          v254 = (v80 + v79);
          v255 = v79 + 1;
          while (2)
          {
            if (v253)
            {
              v256 = *v254;
              *(a2 + 1) = v255;
              v83 |= (v256 & 0x7F) << v251;
              if (v256 < 0)
              {
                v251 += 7;
                --v253;
                ++v254;
                ++v255;
                v14 = v252++ > 8;
                if (v14)
                {
                  goto LABEL_236;
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

LABEL_393:
          *(this + 9) = v83;
          goto LABEL_436;
        case 4u:
          *(this + 28) |= 0x10u;
          v89 = *(a2 + 1);
          v88 = *(a2 + 2);
          v90 = *a2;
          if (v89 <= 0xFFFFFFFFFFFFFFF5 && v89 + 10 <= v88)
          {
            v91 = 0;
            v92 = 0;
            v93 = 0;
            v94 = (v90 + v89);
            v95 = v89 + 1;
            do
            {
              *(a2 + 1) = v95;
              v96 = *v94++;
              v93 |= (v96 & 0x7F) << v91;
              if ((v96 & 0x80) == 0)
              {
                goto LABEL_396;
              }

              v91 += 7;
              ++v95;
              v14 = v92++ > 8;
            }

            while (!v14);
LABEL_244:
            LODWORD(v93) = 0;
            goto LABEL_396;
          }

          v257 = 0;
          v258 = 0;
          v93 = 0;
          v17 = v88 >= v89;
          v259 = v88 - v89;
          if (!v17)
          {
            v259 = 0;
          }

          v260 = (v90 + v89);
          v261 = v89 + 1;
          while (2)
          {
            if (v259)
            {
              v262 = *v260;
              *(a2 + 1) = v261;
              v93 |= (v262 & 0x7F) << v257;
              if (v262 < 0)
              {
                v257 += 7;
                --v259;
                ++v260;
                ++v261;
                v14 = v258++ > 8;
                if (v14)
                {
                  goto LABEL_244;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v93) = 0;
              }
            }

            else
            {
              LODWORD(v93) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_396:
          *(this + 8) = v93;
          goto LABEL_436;
        case 5u:
          *(this + 28) |= 0x40u;
          v52 = *(a2 + 1);
          v51 = *(a2 + 2);
          v53 = *a2;
          if (v52 <= 0xFFFFFFFFFFFFFFF5 && v52 + 10 <= v51)
          {
            v54 = 0;
            v55 = 0;
            v56 = 0;
            v57 = (v53 + v52);
            v58 = v52 + 1;
            do
            {
              *(a2 + 1) = v58;
              v59 = *v57++;
              v56 |= (v59 & 0x7F) << v54;
              if ((v59 & 0x80) == 0)
              {
                goto LABEL_384;
              }

              v54 += 7;
              ++v58;
              v14 = v55++ > 8;
            }

            while (!v14);
LABEL_212:
            LODWORD(v56) = 0;
            goto LABEL_384;
          }

          v233 = 0;
          v234 = 0;
          v56 = 0;
          v17 = v51 >= v52;
          v235 = v51 - v52;
          if (!v17)
          {
            v235 = 0;
          }

          v236 = (v53 + v52);
          v237 = v52 + 1;
          while (2)
          {
            if (v235)
            {
              v238 = *v236;
              *(a2 + 1) = v237;
              v56 |= (v238 & 0x7F) << v233;
              if (v238 < 0)
              {
                v233 += 7;
                --v235;
                ++v236;
                ++v237;
                v14 = v234++ > 8;
                if (v14)
                {
                  goto LABEL_212;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v56) = 0;
              }
            }

            else
            {
              LODWORD(v56) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_384:
          *(this + 10) = v56;
          goto LABEL_436;
        case 6u:
          *(this + 28) |= 8u;
          v126 = *(a2 + 1);
          v125 = *(a2 + 2);
          v127 = *a2;
          if (v126 <= 0xFFFFFFFFFFFFFFF5 && v126 + 10 <= v125)
          {
            v128 = 0;
            v129 = 0;
            v130 = 0;
            v131 = (v127 + v126);
            v132 = v126 + 1;
            do
            {
              *(a2 + 1) = v132;
              v133 = *v131++;
              v130 |= (v133 & 0x7F) << v128;
              if ((v133 & 0x80) == 0)
              {
                goto LABEL_408;
              }

              v128 += 7;
              ++v132;
              v14 = v129++ > 8;
            }

            while (!v14);
LABEL_276:
            LODWORD(v130) = 0;
            goto LABEL_408;
          }

          v281 = 0;
          v282 = 0;
          v130 = 0;
          v17 = v125 >= v126;
          v283 = v125 - v126;
          if (!v17)
          {
            v283 = 0;
          }

          v284 = (v127 + v126);
          v285 = v126 + 1;
          while (2)
          {
            if (v283)
            {
              v286 = *v284;
              *(a2 + 1) = v285;
              v130 |= (v286 & 0x7F) << v281;
              if (v286 < 0)
              {
                v281 += 7;
                --v283;
                ++v284;
                ++v285;
                v14 = v282++ > 8;
                if (v14)
                {
                  goto LABEL_276;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v130) = 0;
              }
            }

            else
            {
              LODWORD(v130) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_408:
          *(this + 7) = v130;
          goto LABEL_436;
        case 7u:
          *(this + 28) |= 0x400u;
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
                goto LABEL_417;
              }

              v155 += 7;
              ++v159;
              v14 = v156++ > 8;
            }

            while (!v14);
LABEL_300:
            LODWORD(v157) = 0;
            goto LABEL_417;
          }

          v299 = 0;
          v300 = 0;
          v157 = 0;
          v17 = v152 >= v153;
          v301 = v152 - v153;
          if (!v17)
          {
            v301 = 0;
          }

          v302 = (v154 + v153);
          v303 = v153 + 1;
          while (2)
          {
            if (v301)
            {
              v304 = *v302;
              *(a2 + 1) = v303;
              v157 |= (v304 & 0x7F) << v299;
              if (v304 < 0)
              {
                v299 += 7;
                --v301;
                ++v302;
                ++v303;
                v14 = v300++ > 8;
                if (v14)
                {
                  goto LABEL_300;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v157) = 0;
              }
            }

            else
            {
              LODWORD(v157) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_417:
          *(this + 14) = v157;
          goto LABEL_436;
        case 8u:
          *(this + 28) |= 0x1000u;
          v98 = *(a2 + 1);
          v97 = *(a2 + 2);
          v99 = *a2;
          if (v98 <= 0xFFFFFFFFFFFFFFF5 && v98 + 10 <= v97)
          {
            v100 = 0;
            v101 = 0;
            v102 = 0;
            v103 = (v99 + v98);
            v104 = v98 + 1;
            do
            {
              *(a2 + 1) = v104;
              v105 = *v103++;
              v102 |= (v105 & 0x7F) << v100;
              if ((v105 & 0x80) == 0)
              {
                goto LABEL_399;
              }

              v100 += 7;
              ++v104;
              v14 = v101++ > 8;
            }

            while (!v14);
LABEL_252:
            LODWORD(v102) = 0;
            goto LABEL_399;
          }

          v263 = 0;
          v264 = 0;
          v102 = 0;
          v17 = v97 >= v98;
          v265 = v97 - v98;
          if (!v17)
          {
            v265 = 0;
          }

          v266 = (v99 + v98);
          v267 = v98 + 1;
          while (2)
          {
            if (v265)
            {
              v268 = *v266;
              *(a2 + 1) = v267;
              v102 |= (v268 & 0x7F) << v263;
              if (v268 < 0)
              {
                v263 += 7;
                --v265;
                ++v266;
                ++v267;
                v14 = v264++ > 8;
                if (v14)
                {
                  goto LABEL_252;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v102) = 0;
              }
            }

            else
            {
              LODWORD(v102) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_399:
          *(this + 16) = v102;
          goto LABEL_436;
        case 9u:
          *(this + 28) |= 0x800u;
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
                goto LABEL_426;
              }

              v182 += 7;
              ++v186;
              v14 = v183++ > 8;
            }

            while (!v14);
LABEL_324:
            LODWORD(v184) = 0;
            goto LABEL_426;
          }

          v317 = 0;
          v318 = 0;
          v184 = 0;
          v17 = v179 >= v180;
          v319 = v179 - v180;
          if (!v17)
          {
            v319 = 0;
          }

          v320 = (v181 + v180);
          v321 = v180 + 1;
          while (2)
          {
            if (v319)
            {
              v322 = *v320;
              *(a2 + 1) = v321;
              v184 |= (v322 & 0x7F) << v317;
              if (v322 < 0)
              {
                v317 += 7;
                --v319;
                ++v320;
                ++v321;
                v14 = v318++ > 8;
                if (v14)
                {
                  goto LABEL_324;
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

LABEL_426:
          *(this + 15) = v184;
          goto LABEL_436;
        case 0xAu:
          *(this + 28) |= 0x2000u;
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
                goto LABEL_390;
              }

              v72 += 7;
              ++v76;
              v14 = v73++ > 8;
            }

            while (!v14);
LABEL_228:
            LODWORD(v74) = 0;
            goto LABEL_390;
          }

          v245 = 0;
          v246 = 0;
          v74 = 0;
          v17 = v69 >= v70;
          v247 = v69 - v70;
          if (!v17)
          {
            v247 = 0;
          }

          v248 = (v71 + v70);
          v249 = v70 + 1;
          while (2)
          {
            if (v247)
            {
              v250 = *v248;
              *(a2 + 1) = v249;
              v74 |= (v250 & 0x7F) << v245;
              if (v250 < 0)
              {
                v245 += 7;
                --v247;
                ++v248;
                ++v249;
                v14 = v246++ > 8;
                if (v14)
                {
                  goto LABEL_228;
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

LABEL_390:
          *(this + 17) = v74;
          goto LABEL_436;
        case 0xBu:
          *(this + 28) |= 0x20000u;
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
                goto LABEL_423;
              }

              v173 += 7;
              ++v177;
              v14 = v174++ > 8;
            }

            while (!v14);
LABEL_316:
            LODWORD(v175) = 0;
            goto LABEL_423;
          }

          v311 = 0;
          v312 = 0;
          v175 = 0;
          v17 = v170 >= v171;
          v313 = v170 - v171;
          if (!v17)
          {
            v313 = 0;
          }

          v314 = (v172 + v171);
          v315 = v171 + 1;
          while (2)
          {
            if (v313)
            {
              v316 = *v314;
              *(a2 + 1) = v315;
              v175 |= (v316 & 0x7F) << v311;
              if (v316 < 0)
              {
                v311 += 7;
                --v313;
                ++v314;
                ++v315;
                v14 = v312++ > 8;
                if (v14)
                {
                  goto LABEL_316;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v175) = 0;
              }
            }

            else
            {
              LODWORD(v175) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_423:
          *(this + 21) = v175;
          goto LABEL_436;
        case 0xCu:
          *(this + 28) |= 0x80000u;
          v43 = *(a2 + 1);
          v42 = *(a2 + 2);
          v44 = *a2;
          if (v43 <= 0xFFFFFFFFFFFFFFF5 && v43 + 10 <= v42)
          {
            v45 = 0;
            v46 = 0;
            v47 = 0;
            v48 = (v44 + v43);
            v49 = v43 + 1;
            do
            {
              *(a2 + 1) = v49;
              v50 = *v48++;
              v47 |= (v50 & 0x7F) << v45;
              if ((v50 & 0x80) == 0)
              {
                goto LABEL_381;
              }

              v45 += 7;
              ++v49;
              v14 = v46++ > 8;
            }

            while (!v14);
LABEL_204:
            LODWORD(v47) = 0;
            goto LABEL_381;
          }

          v227 = 0;
          v228 = 0;
          v47 = 0;
          v17 = v42 >= v43;
          v229 = v42 - v43;
          if (!v17)
          {
            v229 = 0;
          }

          v230 = (v44 + v43);
          v231 = v43 + 1;
          while (2)
          {
            if (v229)
            {
              v232 = *v230;
              *(a2 + 1) = v231;
              v47 |= (v232 & 0x7F) << v227;
              if (v232 < 0)
              {
                v227 += 7;
                --v229;
                ++v230;
                ++v231;
                v14 = v228++ > 8;
                if (v14)
                {
                  goto LABEL_204;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v47) = 0;
              }
            }

            else
            {
              LODWORD(v47) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_381:
          *(this + 23) = v47;
          goto LABEL_436;
        case 0xDu:
          *(this + 28) |= 0x40000u;
          v61 = *(a2 + 1);
          v60 = *(a2 + 2);
          v62 = *a2;
          if (v61 <= 0xFFFFFFFFFFFFFFF5 && v61 + 10 <= v60)
          {
            v63 = 0;
            v64 = 0;
            v65 = 0;
            v66 = (v62 + v61);
            v67 = v61 + 1;
            do
            {
              *(a2 + 1) = v67;
              v68 = *v66++;
              v65 |= (v68 & 0x7F) << v63;
              if ((v68 & 0x80) == 0)
              {
                goto LABEL_387;
              }

              v63 += 7;
              ++v67;
              v14 = v64++ > 8;
            }

            while (!v14);
LABEL_220:
            LODWORD(v65) = 0;
            goto LABEL_387;
          }

          v239 = 0;
          v240 = 0;
          v65 = 0;
          v17 = v60 >= v61;
          v241 = v60 - v61;
          if (!v17)
          {
            v241 = 0;
          }

          v242 = (v62 + v61);
          v243 = v61 + 1;
          while (2)
          {
            if (v241)
            {
              v244 = *v242;
              *(a2 + 1) = v243;
              v65 |= (v244 & 0x7F) << v239;
              if (v244 < 0)
              {
                v239 += 7;
                --v241;
                ++v242;
                ++v243;
                v14 = v240++ > 8;
                if (v14)
                {
                  goto LABEL_220;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v65) = 0;
              }
            }

            else
            {
              LODWORD(v65) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_387:
          *(this + 22) = v65;
          goto LABEL_436;
        case 0xEu:
          *(this + 28) |= 0x100000u;
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
                goto LABEL_414;
              }

              v146 += 7;
              ++v150;
              v14 = v147++ > 8;
            }

            while (!v14);
LABEL_292:
            LODWORD(v148) = 0;
            goto LABEL_414;
          }

          v293 = 0;
          v294 = 0;
          v148 = 0;
          v17 = v143 >= v144;
          v295 = v143 - v144;
          if (!v17)
          {
            v295 = 0;
          }

          v296 = (v145 + v144);
          v297 = v144 + 1;
          while (2)
          {
            if (v295)
            {
              v298 = *v296;
              *(a2 + 1) = v297;
              v148 |= (v298 & 0x7F) << v293;
              if (v298 < 0)
              {
                v293 += 7;
                --v295;
                ++v296;
                ++v297;
                v14 = v294++ > 8;
                if (v14)
                {
                  goto LABEL_292;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v148) = 0;
              }
            }

            else
            {
              LODWORD(v148) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_414:
          *(this + 24) = v148;
          goto LABEL_436;
        case 0xFu:
          *(this + 28) |= 0x100u;
          v34 = *(a2 + 1);
          v33 = *(a2 + 2);
          v35 = *a2;
          if (v34 <= 0xFFFFFFFFFFFFFFF5 && v34 + 10 <= v33)
          {
            v36 = 0;
            v37 = 0;
            v38 = 0;
            v39 = (v35 + v34);
            v40 = v34 + 1;
            do
            {
              *(a2 + 1) = v40;
              v41 = *v39++;
              v38 |= (v41 & 0x7F) << v36;
              if ((v41 & 0x80) == 0)
              {
                goto LABEL_378;
              }

              v36 += 7;
              ++v40;
              v14 = v37++ > 8;
            }

            while (!v14);
LABEL_196:
            LODWORD(v38) = 0;
            goto LABEL_378;
          }

          v221 = 0;
          v222 = 0;
          v38 = 0;
          v17 = v33 >= v34;
          v223 = v33 - v34;
          if (!v17)
          {
            v223 = 0;
          }

          v224 = (v35 + v34);
          v225 = v34 + 1;
          while (2)
          {
            if (v223)
            {
              v226 = *v224;
              *(a2 + 1) = v225;
              v38 |= (v226 & 0x7F) << v221;
              if (v226 < 0)
              {
                v221 += 7;
                --v223;
                ++v224;
                ++v225;
                v14 = v222++ > 8;
                if (v14)
                {
                  goto LABEL_196;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v38) = 0;
              }
            }

            else
            {
              LODWORD(v38) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_378:
          *(this + 12) = v38;
          goto LABEL_436;
        case 0x10u:
          *(this + 28) |= 0x200u;
          v87 = *(a2 + 1);
          if (v87 > 0xFFFFFFFFFFFFFFFBLL || v87 + 4 > *(a2 + 2))
          {
            goto LABEL_101;
          }

          *(this + 13) = *(*a2 + v87);
          goto LABEL_350;
        case 0x11u:
          *(this + 28) |= 0x8000u;
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
                goto LABEL_375;
              }

              v27 += 7;
              ++v31;
              v14 = v28++ > 8;
            }

            while (!v14);
LABEL_188:
            LODWORD(v29) = 0;
            goto LABEL_375;
          }

          v215 = 0;
          v216 = 0;
          v29 = 0;
          v17 = v24 >= v25;
          v217 = v24 - v25;
          if (!v17)
          {
            v217 = 0;
          }

          v218 = (v26 + v25);
          v219 = v25 + 1;
          while (2)
          {
            if (v217)
            {
              v220 = *v218;
              *(a2 + 1) = v219;
              v29 |= (v220 & 0x7F) << v215;
              if (v220 < 0)
              {
                v215 += 7;
                --v217;
                ++v218;
                ++v219;
                v14 = v216++ > 8;
                if (v14)
                {
                  goto LABEL_188;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v29) = 0;
              }
            }

            else
            {
              LODWORD(v29) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_375:
          *(this + 19) = v29;
          goto LABEL_436;
        case 0x12u:
          *(this + 28) |= 0x10000u;
          v115 = *(a2 + 1);
          if (v115 <= 0xFFFFFFFFFFFFFFFBLL && v115 + 4 <= *(a2 + 2))
          {
            *(this + 20) = *(*a2 + v115);
LABEL_350:
            v23 = *(a2 + 1) + 4;
LABEL_351:
            *(a2 + 1) = v23;
          }

          else
          {
LABEL_101:
            *(a2 + 24) = 1;
          }

          goto LABEL_436;
        case 0x13u:
          *(this + 28) |= 0x4000u;
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
                goto LABEL_420;
              }

              v164 += 7;
              ++v168;
              v14 = v165++ > 8;
            }

            while (!v14);
LABEL_308:
            LODWORD(v166) = 0;
            goto LABEL_420;
          }

          v305 = 0;
          v306 = 0;
          v166 = 0;
          v17 = v161 >= v162;
          v307 = v161 - v162;
          if (!v17)
          {
            v307 = 0;
          }

          v308 = (v163 + v162);
          v309 = v162 + 1;
          while (2)
          {
            if (v307)
            {
              v310 = *v308;
              *(a2 + 1) = v309;
              v166 |= (v310 & 0x7F) << v305;
              if (v310 < 0)
              {
                v305 += 7;
                --v307;
                ++v308;
                ++v309;
                v14 = v306++ > 8;
                if (v14)
                {
                  goto LABEL_308;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v166) = 0;
              }
            }

            else
            {
              LODWORD(v166) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_420:
          *(this + 18) = v166;
          goto LABEL_436;
        case 0x14u:
          *(this + 28) |= 0x200000u;
          v198 = *(a2 + 1);
          v197 = *(a2 + 2);
          v199 = *a2;
          if (v198 <= 0xFFFFFFFFFFFFFFF5 && v198 + 10 <= v197)
          {
            v200 = 0;
            v201 = 0;
            v202 = 0;
            v203 = (v199 + v198);
            v204 = v198 + 1;
            do
            {
              *(a2 + 1) = v204;
              v205 = *v203++;
              v202 |= (v205 & 0x7F) << v200;
              if ((v205 & 0x80) == 0)
              {
                goto LABEL_432;
              }

              v200 += 7;
              ++v204;
              v14 = v201++ > 8;
            }

            while (!v14);
LABEL_340:
            LODWORD(v202) = 0;
            goto LABEL_432;
          }

          v329 = 0;
          v330 = 0;
          v202 = 0;
          v17 = v197 >= v198;
          v331 = v197 - v198;
          if (!v17)
          {
            v331 = 0;
          }

          v332 = (v199 + v198);
          v333 = v198 + 1;
          while (2)
          {
            if (v331)
            {
              v334 = *v332;
              *(a2 + 1) = v333;
              v202 |= (v334 & 0x7F) << v329;
              if (v334 < 0)
              {
                v329 += 7;
                --v331;
                ++v332;
                ++v333;
                v14 = v330++ > 8;
                if (v14)
                {
                  goto LABEL_340;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v202) = 0;
              }
            }

            else
            {
              LODWORD(v202) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_432:
          *(this + 25) = v202;
          goto LABEL_436;
        case 0x15u:
          *(this + 28) |= 0x80u;
          v117 = *(a2 + 1);
          v116 = *(a2 + 2);
          v118 = *a2;
          if (v117 <= 0xFFFFFFFFFFFFFFF5 && v117 + 10 <= v116)
          {
            v119 = 0;
            v120 = 0;
            v121 = 0;
            v122 = (v118 + v117);
            v123 = v117 + 1;
            do
            {
              *(a2 + 1) = v123;
              v124 = *v122++;
              v121 |= (v124 & 0x7F) << v119;
              if ((v124 & 0x80) == 0)
              {
                goto LABEL_405;
              }

              v119 += 7;
              ++v123;
              v14 = v120++ > 8;
            }

            while (!v14);
LABEL_268:
            LODWORD(v121) = 0;
            goto LABEL_405;
          }

          v275 = 0;
          v276 = 0;
          v121 = 0;
          v17 = v116 >= v117;
          v277 = v116 - v117;
          if (!v17)
          {
            v277 = 0;
          }

          v278 = (v118 + v117);
          v279 = v117 + 1;
          while (2)
          {
            if (v277)
            {
              v280 = *v278;
              *(a2 + 1) = v279;
              v121 |= (v280 & 0x7F) << v275;
              if (v280 < 0)
              {
                v275 += 7;
                --v277;
                ++v278;
                ++v279;
                v14 = v276++ > 8;
                if (v14)
                {
                  goto LABEL_268;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v121) = 0;
              }
            }

            else
            {
              LODWORD(v121) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_405:
          *(this + 11) = v121;
          goto LABEL_436;
        case 0x16u:
          *(this + 28) |= 4u;
          v135 = *(a2 + 1);
          v134 = *(a2 + 2);
          v136 = *a2;
          if (v135 <= 0xFFFFFFFFFFFFFFF5 && v135 + 10 <= v134)
          {
            v137 = 0;
            v138 = 0;
            v139 = 0;
            v140 = (v136 + v135);
            v141 = v135 + 1;
            do
            {
              *(a2 + 1) = v141;
              v142 = *v140++;
              v139 |= (v142 & 0x7F) << v137;
              if ((v142 & 0x80) == 0)
              {
                goto LABEL_411;
              }

              v137 += 7;
              ++v141;
              v14 = v138++ > 8;
            }

            while (!v14);
LABEL_284:
            LODWORD(v139) = 0;
            goto LABEL_411;
          }

          v287 = 0;
          v288 = 0;
          v139 = 0;
          v17 = v134 >= v135;
          v289 = v134 - v135;
          if (!v17)
          {
            v289 = 0;
          }

          v290 = (v136 + v135);
          v291 = v135 + 1;
          while (2)
          {
            if (v289)
            {
              v292 = *v290;
              *(a2 + 1) = v291;
              v139 |= (v292 & 0x7F) << v287;
              if (v292 < 0)
              {
                v287 += 7;
                --v289;
                ++v290;
                ++v291;
                v14 = v288++ > 8;
                if (v14)
                {
                  goto LABEL_284;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v139) = 0;
              }
            }

            else
            {
              LODWORD(v139) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_411:
          *(this + 6) = v139;
          goto LABEL_436;
        case 0x17u:
          *(this + 28) |= 0x400000u;
          v189 = *(a2 + 1);
          v188 = *(a2 + 2);
          v190 = *a2;
          if (v189 <= 0xFFFFFFFFFFFFFFF5 && v189 + 10 <= v188)
          {
            v191 = 0;
            v192 = 0;
            v193 = 0;
            v194 = (v190 + v189);
            v195 = v189 + 1;
            do
            {
              *(a2 + 1) = v195;
              v196 = *v194++;
              v193 |= (v196 & 0x7F) << v191;
              if ((v196 & 0x80) == 0)
              {
                goto LABEL_429;
              }

              v191 += 7;
              ++v195;
              v14 = v192++ > 8;
            }

            while (!v14);
LABEL_332:
            LODWORD(v193) = 0;
            goto LABEL_429;
          }

          v323 = 0;
          v324 = 0;
          v193 = 0;
          v17 = v188 >= v189;
          v325 = v188 - v189;
          if (!v17)
          {
            v325 = 0;
          }

          v326 = (v190 + v189);
          v327 = v189 + 1;
          while (2)
          {
            if (v325)
            {
              v328 = *v326;
              *(a2 + 1) = v327;
              v193 |= (v328 & 0x7F) << v323;
              if (v328 < 0)
              {
                v323 += 7;
                --v325;
                ++v326;
                ++v327;
                v14 = v324++ > 8;
                if (v14)
                {
                  goto LABEL_332;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v193) = 0;
              }
            }

            else
            {
              LODWORD(v193) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_429:
          *(this + 26) = v193;
          goto LABEL_436;
        case 0x18u:
          *(this + 28) |= 0x800000u;
          v207 = *(a2 + 1);
          v206 = *(a2 + 2);
          v208 = *a2;
          if (v207 <= 0xFFFFFFFFFFFFFFF5 && v207 + 10 <= v206)
          {
            v209 = 0;
            v210 = 0;
            v211 = 0;
            v212 = (v208 + v207);
            v213 = v207 + 1;
            do
            {
              *(a2 + 1) = v213;
              v214 = *v212++;
              v211 |= (v214 & 0x7F) << v209;
              if ((v214 & 0x80) == 0)
              {
                goto LABEL_435;
              }

              v209 += 7;
              ++v213;
              v14 = v210++ > 8;
            }

            while (!v14);
LABEL_348:
            LODWORD(v211) = 0;
            goto LABEL_435;
          }

          v335 = 0;
          v336 = 0;
          v211 = 0;
          v17 = v206 >= v207;
          v337 = v206 - v207;
          if (!v17)
          {
            v337 = 0;
          }

          v338 = (v208 + v207);
          v339 = v207 + 1;
          break;
        default:
          if (PB::Reader::skip(a2, v10 >> 3, v10 & 7, 0))
          {
            goto LABEL_436;
          }

          v342 = 0;
          return v342 & 1;
      }

      while (1)
      {
        if (!v337)
        {
          LODWORD(v211) = 0;
          *(a2 + 24) = 1;
          goto LABEL_435;
        }

        v340 = *v338;
        *(a2 + 1) = v339;
        v211 |= (v340 & 0x7F) << v335;
        if ((v340 & 0x80) == 0)
        {
          break;
        }

        v335 += 7;
        --v337;
        ++v338;
        ++v339;
        v14 = v336++ > 8;
        if (v14)
        {
          goto LABEL_348;
        }
      }

      if (*(a2 + 24))
      {
        LODWORD(v211) = 0;
      }

LABEL_435:
      *(this + 27) = v211;
LABEL_436:
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

LABEL_440:
  v342 = v4 ^ 1;
  return v342 & 1;
}

uint64_t CMMsl::AccessoryInEarDetection::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 112);
  if ((v4 & 2) != 0)
  {
    this = PB::Writer::write(a2, *(this + 16), 1u);
    v4 = *(v3 + 112);
    if ((v4 & 1) == 0)
    {
LABEL_3:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else if ((v4 & 1) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::writeVarInt(a2, *(v3 + 8), 2u);
  v4 = *(v3 + 112);
  if ((v4 & 0x20) == 0)
  {
LABEL_4:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = PB::Writer::writeVarInt(a2, *(v3 + 36), 3u);
  v4 = *(v3 + 112);
  if ((v4 & 0x10) == 0)
  {
LABEL_5:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = PB::Writer::writeVarInt(a2, *(v3 + 32), 4u);
  v4 = *(v3 + 112);
  if ((v4 & 0x40) == 0)
  {
LABEL_6:
    if ((v4 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = PB::Writer::writeVarInt(a2, *(v3 + 40), 5u);
  v4 = *(v3 + 112);
  if ((v4 & 8) == 0)
  {
LABEL_7:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = PB::Writer::writeVarInt(a2, *(v3 + 28), 6u);
  v4 = *(v3 + 112);
  if ((v4 & 0x400) == 0)
  {
LABEL_8:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = PB::Writer::writeVarInt(a2, *(v3 + 56), 7u);
  v4 = *(v3 + 112);
  if ((v4 & 0x1000) == 0)
  {
LABEL_9:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = PB::Writer::writeVarInt(a2, *(v3 + 64), 8u);
  v4 = *(v3 + 112);
  if ((v4 & 0x800) == 0)
  {
LABEL_10:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = PB::Writer::writeVarInt(a2, *(v3 + 60), 9u);
  v4 = *(v3 + 112);
  if ((v4 & 0x2000) == 0)
  {
LABEL_11:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = PB::Writer::writeVarInt(a2, *(v3 + 68), 0xAu);
  v4 = *(v3 + 112);
  if ((v4 & 0x20000) == 0)
  {
LABEL_12:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = PB::Writer::writeVarInt(a2, *(v3 + 84), 0xBu);
  v4 = *(v3 + 112);
  if ((v4 & 0x80000) == 0)
  {
LABEL_13:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = PB::Writer::writeVarInt(a2, *(v3 + 92), 0xCu);
  v4 = *(v3 + 112);
  if ((v4 & 0x40000) == 0)
  {
LABEL_14:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = PB::Writer::writeVarInt(a2, *(v3 + 88), 0xDu);
  v4 = *(v3 + 112);
  if ((v4 & 0x100000) == 0)
  {
LABEL_15:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_40;
  }

LABEL_39:
  this = PB::Writer::writeVarInt(a2, *(v3 + 96), 0xEu);
  v4 = *(v3 + 112);
  if ((v4 & 0x100) == 0)
  {
LABEL_16:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_41;
  }

LABEL_40:
  this = PB::Writer::writeVarInt(a2, *(v3 + 48), 0xFu);
  v4 = *(v3 + 112);
  if ((v4 & 0x200) == 0)
  {
LABEL_17:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_42;
  }

LABEL_41:
  this = PB::Writer::write(a2, *(v3 + 52), 0x10u);
  v4 = *(v3 + 112);
  if ((v4 & 0x8000) == 0)
  {
LABEL_18:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_43;
  }

LABEL_42:
  this = PB::Writer::writeVarInt(a2, *(v3 + 76), 0x11u);
  v4 = *(v3 + 112);
  if ((v4 & 0x10000) == 0)
  {
LABEL_19:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_44;
  }

LABEL_43:
  this = PB::Writer::write(a2, *(v3 + 80), 0x12u);
  v4 = *(v3 + 112);
  if ((v4 & 0x4000) == 0)
  {
LABEL_20:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_45;
  }

LABEL_44:
  this = PB::Writer::writeVarInt(a2, *(v3 + 72), 0x13u);
  v4 = *(v3 + 112);
  if ((v4 & 0x200000) == 0)
  {
LABEL_21:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_46;
  }

LABEL_45:
  this = PB::Writer::writeVarInt(a2, *(v3 + 100), 0x14u);
  v4 = *(v3 + 112);
  if ((v4 & 0x80) == 0)
  {
LABEL_22:
    if ((v4 & 4) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_47;
  }

LABEL_46:
  this = PB::Writer::writeVarInt(a2, *(v3 + 44), 0x15u);
  v4 = *(v3 + 112);
  if ((v4 & 4) == 0)
  {
LABEL_23:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

LABEL_48:
    this = PB::Writer::writeVarInt(a2, *(v3 + 104), 0x17u);
    if ((*(v3 + 112) & 0x800000) == 0)
    {
      return this;
    }

    goto LABEL_49;
  }

LABEL_47:
  this = PB::Writer::writeVarInt(a2, *(v3 + 24), 0x16u);
  v4 = *(v3 + 112);
  if ((v4 & 0x400000) != 0)
  {
    goto LABEL_48;
  }

LABEL_24:
  if ((v4 & 0x800000) == 0)
  {
    return this;
  }

LABEL_49:
  v5 = *(v3 + 108);

  return PB::Writer::writeVarInt(a2, v5, 0x18u);
}

BOOL CMMsl::AccessoryInEarDetection::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  v3 = *(a2 + 112);
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

  if ((v2 & 0x400) != 0)
  {
    if ((v3 & 0x400) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((v3 & 0x400) != 0)
  {
    return 0;
  }

  if ((v2 & 0x1000) != 0)
  {
    if ((v3 & 0x1000) == 0 || *(a1 + 64) != *(a2 + 64))
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
    if ((v3 & 0x800) == 0 || *(a1 + 60) != *(a2 + 60))
    {
      return 0;
    }
  }

  else if ((v3 & 0x800) != 0)
  {
    return 0;
  }

  if ((v2 & 0x2000) != 0)
  {
    if ((v3 & 0x2000) == 0 || *(a1 + 68) != *(a2 + 68))
    {
      return 0;
    }
  }

  else if ((v3 & 0x2000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20000) != 0)
  {
    if ((v3 & 0x20000) == 0 || *(a1 + 84) != *(a2 + 84))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80000) != 0)
  {
    if ((v3 & 0x80000) == 0 || *(a1 + 92) != *(a2 + 92))
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
    if ((v3 & 0x40000) == 0 || *(a1 + 88) != *(a2 + 88))
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
    if ((v3 & 0x100000) == 0 || *(a1 + 96) != *(a2 + 96))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x100) != 0)
  {
    if ((v3 & 0x100) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100) != 0)
  {
    return 0;
  }

  if ((v2 & 0x200) != 0)
  {
    if ((v3 & 0x200) == 0 || *(a1 + 52) != *(a2 + 52))
    {
      return 0;
    }
  }

  else if ((v3 & 0x200) != 0)
  {
    return 0;
  }

  if ((v2 & 0x8000) != 0)
  {
    if ((v3 & 0x8000) == 0 || *(a1 + 76) != *(a2 + 76))
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10000) != 0)
  {
    if ((v3 & 0x10000) == 0 || *(a1 + 80) != *(a2 + 80))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x4000) != 0)
  {
    if ((v3 & 0x4000) == 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if ((v3 & 0x4000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x200000) != 0)
  {
    if ((v3 & 0x200000) == 0 || *(a1 + 100) != *(a2 + 100))
    {
      return 0;
    }
  }

  else if ((v3 & 0x200000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 44) != *(a2 + 44))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
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

  if ((v2 & 0x400000) != 0)
  {
    if ((v3 & 0x400000) == 0 || *(a1 + 104) != *(a2 + 104))
    {
      return 0;
    }
  }

  else if ((v3 & 0x400000) != 0)
  {
    return 0;
  }

  v4 = (v3 & 0x800000) == 0;
  if ((v2 & 0x800000) != 0)
  {
    return (v3 & 0x800000) != 0 && *(a1 + 108) == *(a2 + 108);
  }

  return v4;
}

uint64_t CMMsl::AccessoryInEarDetection::hash_value(CMMsl::AccessoryInEarDetection *this)
{
  v1 = *(this + 28);
  if ((v1 & 2) != 0)
  {
    v2 = *(this + 2);
    if (v2 == 0.0)
    {
      v2 = 0.0;
    }

    if (v1)
    {
LABEL_3:
      v3 = *(this + 1);
      if ((v1 & 0x20) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else
  {
    v2 = 0.0;
    if (v1)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((v1 & 0x20) != 0)
  {
LABEL_4:
    v4 = *(this + 9);
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  v4 = 0;
  if ((v1 & 0x10) != 0)
  {
LABEL_5:
    v5 = *(this + 8);
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  v5 = 0;
  if ((v1 & 0x40) != 0)
  {
LABEL_6:
    v6 = *(this + 10);
    if ((v1 & 8) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  v6 = 0;
  if ((v1 & 8) != 0)
  {
LABEL_7:
    v7 = *(this + 7);
    if ((v1 & 0x400) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  v7 = 0;
  if ((v1 & 0x400) != 0)
  {
LABEL_8:
    v8 = *(this + 14);
    if ((v1 & 0x1000) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  v8 = 0;
  if ((v1 & 0x1000) != 0)
  {
LABEL_9:
    v9 = *(this + 16);
    if ((v1 & 0x800) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  v9 = 0;
  if ((v1 & 0x800) != 0)
  {
LABEL_10:
    v10 = *(this + 15);
    if ((v1 & 0x2000) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  v10 = 0;
  if ((v1 & 0x2000) != 0)
  {
LABEL_11:
    v11 = *(this + 17);
    if ((v1 & 0x20000) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  v11 = 0;
  if ((v1 & 0x20000) != 0)
  {
LABEL_12:
    v12 = *(this + 21);
    if ((v1 & 0x80000) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  v12 = 0;
  if ((v1 & 0x80000) != 0)
  {
LABEL_13:
    v13 = *(this + 23);
    if ((v1 & 0x40000) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  v13 = 0;
  if ((v1 & 0x40000) != 0)
  {
LABEL_14:
    v14 = *(this + 22);
    if ((v1 & 0x100000) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  v14 = 0;
  if ((v1 & 0x100000) != 0)
  {
LABEL_15:
    v15 = *(this + 24);
    if ((v1 & 0x100) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  v15 = 0;
  if ((v1 & 0x100) != 0)
  {
LABEL_16:
    v16 = *(this + 12);
    if ((v1 & 0x200) != 0)
    {
      goto LABEL_17;
    }

LABEL_37:
    v18 = 0;
    goto LABEL_38;
  }

LABEL_36:
  v16 = 0;
  if ((v1 & 0x200) == 0)
  {
    goto LABEL_37;
  }

LABEL_17:
  v17 = *(this + 13);
  v18 = LODWORD(v17);
  if (v17 == 0.0)
  {
    v18 = 0;
  }

LABEL_38:
  if ((v1 & 0x8000) == 0)
  {
    v19 = 0;
    if ((v1 & 0x10000) != 0)
    {
      goto LABEL_40;
    }

LABEL_50:
    v21 = 0;
    if ((v1 & 0x4000) != 0)
    {
      goto LABEL_43;
    }

    goto LABEL_51;
  }

  v19 = *(this + 19);
  if ((v1 & 0x10000) == 0)
  {
    goto LABEL_50;
  }

LABEL_40:
  v20 = *(this + 20);
  v21 = LODWORD(v20);
  if (v20 == 0.0)
  {
    v21 = 0;
  }

  if ((v1 & 0x4000) != 0)
  {
LABEL_43:
    v22 = *(this + 18);
    if ((v1 & 0x200000) != 0)
    {
      goto LABEL_44;
    }

    goto LABEL_52;
  }

LABEL_51:
  v22 = 0;
  if ((v1 & 0x200000) != 0)
  {
LABEL_44:
    v23 = *(this + 25);
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_45;
    }

    goto LABEL_53;
  }

LABEL_52:
  v23 = 0;
  if ((v1 & 0x80) != 0)
  {
LABEL_45:
    v24 = *(this + 11);
    if ((v1 & 4) != 0)
    {
      goto LABEL_46;
    }

    goto LABEL_54;
  }

LABEL_53:
  v24 = 0;
  if ((v1 & 4) != 0)
  {
LABEL_46:
    v25 = *(this + 6);
    if ((v1 & 0x400000) != 0)
    {
      goto LABEL_47;
    }

LABEL_55:
    v26 = 0;
    if ((v1 & 0x800000) != 0)
    {
      goto LABEL_48;
    }

LABEL_56:
    v27 = 0;
    return v3 ^ *&v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v18 ^ v19 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27;
  }

LABEL_54:
  v25 = 0;
  if ((v1 & 0x400000) == 0)
  {
    goto LABEL_55;
  }

LABEL_47:
  v26 = *(this + 26);
  if ((v1 & 0x800000) == 0)
  {
    goto LABEL_56;
  }

LABEL_48:
  v27 = *(this + 27);
  return v3 ^ *&v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v18 ^ v19 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27;
}

uint64_t CMMsl::AccessoryInEarStatus::AccessoryInEarStatus(uint64_t this)
{
  *this = off_10041CB38;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

{
  *this = off_10041CB38;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

void CMMsl::AccessoryInEarStatus::~AccessoryInEarStatus(CMMsl::AccessoryInEarStatus *this)
{
  PB::Base::~Base(this);

  operator delete();
}

float CMMsl::AccessoryInEarStatus::AccessoryInEarStatus(CMMsl::AccessoryInEarStatus *this, const CMMsl::AccessoryInEarStatus *a2)
{
  *this = off_10041CB38;
  *(this + 2) = 0;
  *(this + 4) = 0;
  if (*(a2 + 16))
  {
    v3 = *(a2 + 2);
    *(this + 16) = 1;
    *(this + 2) = v3;
    v2 = 3;
    if ((*(a2 + 16) & 2) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  v2 = 2;
  if ((*(a2 + 16) & 2) != 0)
  {
LABEL_5:
    result = *(a2 + 3);
    *(this + 16) = v2;
    *(this + 3) = result;
  }

  return result;
}

const CMMsl::AccessoryInEarStatus *CMMsl::AccessoryInEarStatus::operator=(const CMMsl::AccessoryInEarStatus *a1, const CMMsl::AccessoryInEarStatus *a2)
{
  if (a1 != a2)
  {
    CMMsl::AccessoryInEarStatus::AccessoryInEarStatus(v7, a2);
    v3 = *(a1 + 4);
    *(a1 + 4) = v10;
    v10 = v3;
    v4 = *(a1 + 2);
    *(a1 + 2) = v8;
    v8 = v4;
    v5 = *(a1 + 3);
    *(a1 + 3) = v9;
    v9 = v5;
    PB::Base::~Base(v7);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::AccessoryInEarStatus *a2, CMMsl::AccessoryInEarStatus *a3)
{
  v3 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v3;
  v4 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v4;
  result = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = result;
  return result;
}

float CMMsl::AccessoryInEarStatus::AccessoryInEarStatus(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041CB38;
  *(a1 + 8) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 12);
  *(a1 + 12) = result;
  return result;
}

{
  *a1 = off_10041CB38;
  *(a1 + 8) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 12);
  *(a1 + 12) = result;
  return result;
}

_DWORD *CMMsl::AccessoryInEarStatus::operator=(_DWORD *a1, _DWORD *a2)
{
  if (a1 != a2)
  {
    v10 = off_10041CB38;
    v3 = a2[4];
    a2[4] = 0;
    v4 = a2[2];
    v5 = a2[3];
    v6 = a1[4];
    a1[4] = v3;
    v13 = v6;
    v7 = a1[2];
    a1[2] = v4;
    v11 = v7;
    v8 = a1[3];
    a1[3] = v5;
    v12 = v8;
    PB::Base::~Base(&v10);
  }

  return a1;
}

uint64_t CMMsl::AccessoryInEarStatus::formatText(CMMsl::AccessoryInEarStatus *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 16);
  if (v5)
  {
    PB::TextFormatter::format(a2, "status", *(this + 2));
    v5 = *(this + 16);
  }

  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 3));
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::AccessoryInEarStatus::readFrom(CMMsl::AccessoryInEarStatus *this, PB::Reader *a2)
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
        *(this + 16) |= 2u;
        v2 = *(a2 + 1);
        if (v2 <= 0xFFFFFFFFFFFFFFFBLL && v2 + 4 <= *(a2 + 2))
        {
          *(this + 3) = *(*a2 + v2);
          v2 = *(a2 + 1) + 4;
          *(a2 + 1) = v2;
        }

        else
        {
          *(a2 + 24) = 1;
        }
      }

      else if (v22 == 1)
      {
        *(this + 16) |= 1u;
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
        *(this + 2) = v27;
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

uint64_t CMMsl::AccessoryInEarStatus::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 16);
  if (v4)
  {
    this = PB::Writer::writeVarInt(a2, *(this + 8), 1u);
    v4 = *(v3 + 16);
  }

  if ((v4 & 2) != 0)
  {
    v5 = *(v3 + 12);

    return PB::Writer::write(a2, v5, 2u);
  }

  return this;
}

BOOL CMMsl::AccessoryInEarStatus::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    if ((*(a2 + 16) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 16))
  {
    return 0;
  }

  v2 = (*(a2 + 16) & 2) == 0;
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*(a2 + 16) & 2) != 0 && *(a1 + 12) == *(a2 + 12);
  }

  return v2;
}

uint64_t CMMsl::AccessoryInEarStatus::hash_value(CMMsl::AccessoryInEarStatus *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    v1 = 0;
    if ((*(this + 16) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v3 = 0;
    return v3 ^ v1;
  }

  v1 = *(this + 2);
  if ((*(this + 16) & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  v2 = *(this + 3);
  v3 = LODWORD(v2);
  if (v2 == 0.0)
  {
    v3 = 0;
  }

  return v3 ^ v1;
}

uint64_t CMMsl::AccessoryMagnetometer::AccessoryMagnetometer(uint64_t this)
{
  *this = off_10041CB70;
  *(this + 8) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *this = off_10041CB70;
  *(this + 8) = 0;
  *(this + 32) = 0;
  return this;
}

void CMMsl::AccessoryMagnetometer::~AccessoryMagnetometer(CMMsl::AccessoryMagnetometer *this)
{
  v2 = *(this + 1);
  *this = off_10041CB70;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::AccessoryMagnetometer::~AccessoryMagnetometer(this);

  operator delete();
}

uint64_t CMMsl::AccessoryMagnetometer::AccessoryMagnetometer(uint64_t this, const CMMsl::AccessoryMagnetometer *a2)
{
  *this = off_10041CB70;
  *(this + 8) = 0;
  *(this + 32) = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  v2 = *(a2 + 32);
  if ((v2 & 2) != 0)
  {
    v4 = *(a2 + 6);
    *(this + 32) |= 2u;
    *(this + 24) = v4;
    v2 = *(a2 + 32);
    if ((v2 & 4) == 0)
    {
LABEL_5:
      if ((v2 & 1) == 0)
      {
        return this;
      }

      goto LABEL_6;
    }
  }

  else if ((*(a2 + 32) & 4) == 0)
  {
    goto LABEL_5;
  }

  v5 = *(a2 + 7);
  *(this + 32) |= 4u;
  *(this + 28) = v5;
  if ((*(a2 + 32) & 1) == 0)
  {
    return this;
  }

LABEL_6:
  v3 = *(a2 + 2);
  *(this + 32) |= 1u;
  *(this + 16) = v3;
  return this;
}

uint64_t CMMsl::AccessoryMagnetometer::operator=(uint64_t a1, const CMMsl::AccessoryMagnetometer *a2)
{
  if (a1 != a2)
  {
    CMMsl::AccessoryMagnetometer::AccessoryMagnetometer(v9, a2);
    v3 = *(a1 + 32);
    *(a1 + 32) = v13;
    v13 = v3;
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    v6 = v11;
    *(a1 + 8) = v10;
    *(a1 + 16) = v6;
    v7 = *(a1 + 24);
    *(a1 + 24) = v12;
    v12 = v7;
    v10 = v4;
    v11 = v5;
    CMMsl::AccessoryMagnetometer::~AccessoryMagnetometer(v9);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::AccessoryMagnetometer *a2, CMMsl::AccessoryMagnetometer *a3)
{
  v3 = *(this + 32);
  *(this + 32) = *(a2 + 8);
  *(a2 + 8) = v3;
  v4 = *(this + 24);
  *(this + 24) = *(a2 + 6);
  *(a2 + 6) = v4;
  v5 = *(this + 28);
  *(this + 28) = *(a2 + 7);
  v6 = *(this + 8);
  v7 = *(this + 16);
  v8 = *(a2 + 2);
  *(this + 8) = *(a2 + 1);
  *(this + 16) = v8;
  *(a2 + 7) = v5;
  *(a2 + 1) = v6;
  *(a2 + 2) = v7;
  return this;
}

uint64_t CMMsl::AccessoryMagnetometer::AccessoryMagnetometer(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041CB70;
  *(a1 + 8) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t CMMsl::AccessoryMagnetometer::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::AccessoryMagnetometer::AccessoryMagnetometer(v9, a2);
    v3 = *(a1 + 32);
    *(a1 + 32) = v13;
    v13 = v3;
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    v6 = v11;
    *(a1 + 8) = v10;
    *(a1 + 16) = v6;
    v7 = *(a1 + 24);
    *(a1 + 24) = v12;
    v12 = v7;
    v10 = v4;
    v11 = v5;
    CMMsl::AccessoryMagnetometer::~AccessoryMagnetometer(v9);
  }

  return a1;
}

uint64_t CMMsl::AccessoryMagnetometer::formatText(CMMsl::AccessoryMagnetometer *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if ((*(this + 32) & 2) != 0)
  {
    PB::TextFormatter::format(a2, "location", *(this + 6));
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "magnetometer");
  }

  v6 = *(this + 32);
  if (v6)
  {
    PB::TextFormatter::format(a2, "sensorTime", *(this + 2));
    v6 = *(this + 32);
  }

  if ((v6 & 4) != 0)
  {
    PB::TextFormatter::format(a2, "sequenceNumber", *(this + 7));
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::AccessoryMagnetometer::readFrom(CMMsl::AccessoryMagnetometer *this, PB::Reader *a2)
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
            goto LABEL_91;
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
          *(this + 32) |= 4u;
          v42 = *(a2 + 1);
          v41 = *(a2 + 2);
          v43 = *a2;
          if (v42 > 0xFFFFFFFFFFFFFFF5 || v42 + 10 > v41)
          {
            v62 = 0;
            v63 = 0;
            v46 = 0;
            v17 = v41 >= v42;
            v64 = v41 - v42;
            if (!v17)
            {
              v64 = 0;
            }

            v65 = (v43 + v42);
            v66 = v42 + 1;
            while (1)
            {
              if (!v64)
              {
                LODWORD(v46) = 0;
                *(a2 + 24) = 1;
                goto LABEL_86;
              }

              v67 = *v65;
              *(a2 + 1) = v66;
              v46 |= (v67 & 0x7F) << v62;
              if ((v67 & 0x80) == 0)
              {
                break;
              }

              v62 += 7;
              --v64;
              ++v65;
              ++v66;
              v14 = v63++ > 8;
              if (v14)
              {
LABEL_74:
                LODWORD(v46) = 0;
                goto LABEL_86;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v46) = 0;
            }
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
                goto LABEL_74;
              }
            }
          }

LABEL_86:
          *(this + 7) = v46;
          goto LABEL_87;
        }

        if (v22 == 4)
        {
          *(this + 32) |= 1u;
          v33 = *(a2 + 1);
          v32 = *(a2 + 2);
          v34 = *a2;
          if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v32)
          {
            v56 = 0;
            v57 = 0;
            v37 = 0;
            v17 = v32 >= v33;
            v58 = v32 - v33;
            if (!v17)
            {
              v58 = 0;
            }

            v59 = (v34 + v33);
            v60 = v33 + 1;
            while (1)
            {
              if (!v58)
              {
                v37 = 0;
                *(a2 + 24) = 1;
                goto LABEL_83;
              }

              v61 = *v59;
              *(a2 + 1) = v60;
              v37 |= (v61 & 0x7F) << v56;
              if ((v61 & 0x80) == 0)
              {
                break;
              }

              v56 += 7;
              --v58;
              ++v59;
              ++v60;
              v14 = v57++ > 8;
              if (v14)
              {
LABEL_66:
                v37 = 0;
                goto LABEL_83;
              }
            }

            if (*(a2 + 24))
            {
              v37 = 0;
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
                goto LABEL_66;
              }
            }
          }

LABEL_83:
          *(this + 2) = v37;
          goto LABEL_87;
        }
      }

      else
      {
        if (v22 == 1)
        {
          operator new();
        }

        if (v22 == 2)
        {
          *(this + 32) |= 2u;
          v24 = *(a2 + 1);
          v23 = *(a2 + 2);
          v25 = *a2;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
          {
            v50 = 0;
            v51 = 0;
            v28 = 0;
            v17 = v23 >= v24;
            v52 = v23 - v24;
            if (!v17)
            {
              v52 = 0;
            }

            v53 = (v25 + v24);
            v54 = v24 + 1;
            while (1)
            {
              if (!v52)
              {
                LODWORD(v28) = 0;
                *(a2 + 24) = 1;
                goto LABEL_80;
              }

              v55 = *v53;
              *(a2 + 1) = v54;
              v28 |= (v55 & 0x7F) << v50;
              if ((v55 & 0x80) == 0)
              {
                break;
              }

              v50 += 7;
              --v52;
              ++v53;
              ++v54;
              v14 = v51++ > 8;
              if (v14)
              {
LABEL_58:
                LODWORD(v28) = 0;
                goto LABEL_80;
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
                goto LABEL_58;
              }
            }
          }

LABEL_80:
          *(this + 6) = v28;
          goto LABEL_87;
        }
      }

      if ((PB::Reader::skip(a2, v22, v10 & 7, 0) & 1) == 0)
      {
        v69 = 0;
        return v69 & 1;
      }

LABEL_87:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_91:
  v69 = v4 ^ 1;
  return v69 & 1;
}

uint64_t CMMsl::Magnetometer::Magnetometer(uint64_t this)
{
  *this = off_100420060;
  *(this + 36) = 0;
  return this;
}

{
  *this = off_100420060;
  *(this + 36) = 0;
  return this;
}

uint64_t CMMsl::AccessoryMagnetometer::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4, 1u);
  }

  v5 = *(v3 + 32);
  if ((v5 & 2) == 0)
  {
    if ((*(v3 + 32) & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    this = PB::Writer::writeVarInt(a2, *(v3 + 28), 3u);
    if ((*(v3 + 32) & 1) == 0)
    {
      return this;
    }

    goto LABEL_9;
  }

  this = PB::Writer::writeVarInt(a2, *(v3 + 24), 2u);
  v5 = *(v3 + 32);
  if ((v5 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  if ((v5 & 1) == 0)
  {
    return this;
  }

LABEL_9:
  v6 = *(v3 + 16);

  return PB::Writer::writeVarInt(a2, v6, 4u);
}

BOOL CMMsl::AccessoryMagnetometer::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5 || !CMMsl::Magnetometer::operator==(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if ((*(a1 + 32) & 2) != 0)
  {
    if ((*(a2 + 32) & 2) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 2) != 0)
  {
    return 0;
  }

  if ((*(a1 + 32) & 4) != 0)
  {
    if ((*(a2 + 32) & 4) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 4) != 0)
  {
    return 0;
  }

  result = (*(a2 + 32) & 1) == 0;
  if ((*(a1 + 32) & 1) == 0)
  {
    return result;
  }

  return (*(a2 + 32) & 1) != 0 && *(a1 + 16) == *(a2 + 16);
}

BOOL CMMsl::Magnetometer::operator==(uint64_t a1, uint64_t a2)
{
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

  if ((*(a1 + 36) & 8) != 0)
  {
    if ((*(a2 + 36) & 8) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 36) & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 36) & 0x10) != 0)
  {
    if ((*(a2 + 36) & 0x10) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((*(a2 + 36) & 0x10) != 0)
  {
    return 0;
  }

  if ((*(a1 + 36) & 0x20) != 0)
  {
    if ((*(a2 + 36) & 0x20) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((*(a2 + 36) & 0x20) != 0)
  {
    return 0;
  }

  if ((*(a1 + 36) & 4) != 0)
  {
    if ((*(a2 + 36) & 4) == 0 || *(a1 + 20) != *(a2 + 20))
    {
      return 0;
    }
  }

  else if ((*(a2 + 36) & 4) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 36) & 2) == 0;
  if ((*(a1 + 36) & 2) != 0)
  {
    return (*(a2 + 36) & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v2;
}

unint64_t CMMsl::AccessoryMagnetometer::hash_value(CMMsl::AccessoryMagnetometer *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    v2 = CMMsl::Magnetometer::hash_value(v2);
  }

  if ((*(this + 32) & 2) == 0)
  {
    v3 = 0;
    if ((*(this + 32) & 4) != 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v4 = 0;
    if (*(this + 32))
    {
      goto LABEL_6;
    }

LABEL_9:
    v5 = 0;
    return v3 ^ v2 ^ v4 ^ v5;
  }

  v3 = *(this + 6);
  if ((*(this + 32) & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  v4 = *(this + 7);
  if ((*(this + 32) & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  v5 = *(this + 2);
  return v3 ^ v2 ^ v4 ^ v5;
}

uint64_t CMMsl::AccessoryMagnetometer::makeMagnetometer(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

void *CMMsl::AccessoryMagnetometerConfig::AccessoryMagnetometerConfig(void *this)
{
  *this = off_10041CBA8;
  this[1] = 0;
  return this;
}

{
  *this = off_10041CBA8;
  this[1] = 0;
  return this;
}

void CMMsl::AccessoryMagnetometerConfig::~AccessoryMagnetometerConfig(CMMsl::AccessoryMagnetometerConfig *this)
{
  v2 = *(this + 1);
  *this = off_10041CBA8;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::AccessoryMagnetometerConfig::~AccessoryMagnetometerConfig(this);

  operator delete();
}

void *CMMsl::AccessoryMagnetometerConfig::AccessoryMagnetometerConfig(void *this, const CMMsl::AccessoryMagnetometerConfig *a2)
{
  *this = off_10041CBA8;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const CMMsl::AccessoryMagnetometerConfig *CMMsl::AccessoryMagnetometerConfig::operator=(const CMMsl::AccessoryMagnetometerConfig *a1, const CMMsl::AccessoryMagnetometerConfig *a2)
{
  if (a1 != a2)
  {
    CMMsl::AccessoryMagnetometerConfig::AccessoryMagnetometerConfig(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    CMMsl::AccessoryMagnetometerConfig::~AccessoryMagnetometerConfig(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::AccessoryMagnetometerConfig *a2, CMMsl::AccessoryMagnetometerConfig *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::AccessoryMagnetometerConfig::AccessoryMagnetometerConfig(void *a1, uint64_t a2)
{
  *a1 = off_10041CBA8;
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
  *a1 = off_10041CBA8;
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

uint64_t CMMsl::AccessoryMagnetometerConfig::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = off_10041CBA8;
    v6[1] = v4;
    CMMsl::AccessoryMagnetometerConfig::~AccessoryMagnetometerConfig(v6);
  }

  return a1;
}

uint64_t CMMsl::AccessoryMagnetometerConfig::formatText(CMMsl::AccessoryMagnetometerConfig *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "config");
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::AccessoryMagnetometerConfig::readFrom(CMMsl::AccessoryMagnetometerConfig *this, PB::Reader *a2)
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

uint64_t CMMsl::AccessoryMagnetometerConfig::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2, 1u);
  }

  return this;
}

BOOL CMMsl::AccessoryMagnetometerConfig::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  result = v3 == 0;
  if (v2)
  {
    return v3 && CMMsl::AccessoryConfig::operator==(v2, v3);
  }

  return result;
}

CMMsl::AccessoryConfig *CMMsl::AccessoryMagnetometerConfig::hash_value(CMMsl::AccessoryMagnetometerConfig *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::AccessoryConfig::hash_value(result);
  }

  return result;
}

uint64_t CMMsl::AccessoryMagnetometerConfig::makeConfig(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

double CMMsl::AccessoryPPG::AccessoryPPG(CMMsl::AccessoryPPG *this)
{
  *this = off_10041CBE0;
  *(this + 56) = 0;
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
  return result;
}

{
  *this = off_10041CBE0;
  *(this + 56) = 0;
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
  return result;
}

void CMMsl::AccessoryPPG::~AccessoryPPG(CMMsl::AccessoryPPG *this)
{
  *this = off_10041CBE0;
  v2 = *(this + 22);
  if (v2)
  {
    *(this + 23) = v2;
    operator delete(v2);
  }

  v3 = *(this + 19);
  if (v3)
  {
    *(this + 20) = v3;
    operator delete(v3);
  }

  v4 = *(this + 16);
  if (v4)
  {
    *(this + 17) = v4;
    operator delete(v4);
  }

  v5 = *(this + 13);
  if (v5)
  {
    *(this + 14) = v5;
    operator delete(v5);
  }

  v6 = *(this + 10);
  if (v6)
  {
    *(this + 11) = v6;
    operator delete(v6);
  }

  v7 = *(this + 7);
  if (v7)
  {
    *(this + 8) = v7;
    operator delete(v7);
  }

  v8 = *(this + 4);
  if (v8)
  {
    *(this + 5) = v8;
    operator delete(v8);
  }

  v9 = *(this + 1);
  if (v9)
  {
    *(this + 2) = v9;
    operator delete(v9);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::AccessoryPPG::~AccessoryPPG(this);

  operator delete();
}

CMMsl::AccessoryPPG *CMMsl::AccessoryPPG::AccessoryPPG(CMMsl::AccessoryPPG *this, const CMMsl::AccessoryPPG *a2)
{
  *this = off_10041CBE0;
  *(this + 8) = 0u;
  v4 = (this + 8);
  *(this + 56) = 0u;
  *(this + 104) = 0u;
  *(this + 152) = 0u;
  *(this + 56) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  v5 = *(a2 + 224);
  if ((v5 & 2) != 0)
  {
    v7 = *(a2 + 26);
    v6 = 2;
    *(this + 224) = 2;
    *(this + 26) = v7;
    v5 = *(a2 + 224);
    if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = 0;
  if (*(a2 + 224))
  {
LABEL_5:
    v8 = *(a2 + 25);
    v6 |= 1u;
    *(this + 224) = v6;
    *(this + 25) = v8;
    v5 = *(a2 + 224);
  }

LABEL_6:
  if ((v5 & 8) == 0)
  {
    if ((v5 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v11 = *(a2 + 55);
  v6 |= 8u;
  *(this + 224) = v6;
  *(this + 55) = v11;
  if ((*(a2 + 224) & 4) != 0)
  {
LABEL_8:
    v9 = *(a2 + 54);
    *(this + 224) = v6 | 4;
    *(this + 54) = v9;
  }

LABEL_9:
  if (this != a2)
  {
    sub_100035D1C(v4, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 2);
    sub_100035D1C(this + 4, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 2);
    sub_100035D1C(this + 7, *(a2 + 7), *(a2 + 8), (*(a2 + 8) - *(a2 + 7)) >> 2);
    sub_100035D1C(this + 10, *(a2 + 10), *(a2 + 11), (*(a2 + 11) - *(a2 + 10)) >> 2);
    sub_100035D1C(this + 16, *(a2 + 16), *(a2 + 17), (*(a2 + 17) - *(a2 + 16)) >> 2);
    sub_100035D1C(this + 19, *(a2 + 19), *(a2 + 20), (*(a2 + 20) - *(a2 + 19)) >> 2);
    sub_100035D1C(this + 22, *(a2 + 22), *(a2 + 23), (*(a2 + 23) - *(a2 + 22)) >> 2);
    sub_100035D1C(this + 13, *(a2 + 13), *(a2 + 14), (*(a2 + 14) - *(a2 + 13)) >> 2);
  }

  return this;
}

CMMsl *CMMsl::AccessoryPPG::operator=(CMMsl *a1, const CMMsl::AccessoryPPG *a2)
{
  if (a1 != a2)
  {
    CMMsl::AccessoryPPG::AccessoryPPG(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::AccessoryPPG::~AccessoryPPG(v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::AccessoryPPG *a2, CMMsl::AccessoryPPG *a3)
{
  v3 = *(this + 56);
  *(this + 56) = *(a2 + 56);
  *(a2 + 56) = v3;
  v4 = *(this + 55);
  *(this + 55) = *(a2 + 55);
  *(a2 + 55) = v4;
  v5 = *(this + 54);
  *(this + 54) = *(a2 + 54);
  *(a2 + 54) = v5;
  v6 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v6;
  v7 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v7;
  v8 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v8;
  v9 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v9;
  v10 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v10;
  v11 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v11;
  v12 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v12;
  v13 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v13;
  v14 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v14;
  v15 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v15;
  v16 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v16;
  v17 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v17;
  v18 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v18;
  v19 = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v19;
  v20 = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v20;
  v21 = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v21;
  v22 = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v22;
  v23 = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v23;
  v24 = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v24;
  v25 = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = v25;
  v27 = *(this + 24);
  v26 = *(this + 25);
  v28 = *(a2 + 25);
  *(this + 24) = *(a2 + 24);
  *(this + 25) = v28;
  result = *(this + 26);
  *(this + 26) = *(a2 + 26);
  *(a2 + 26) = result;
  *(a2 + 24) = v27;
  *(a2 + 25) = v26;
  v30 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v30;
  v31 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v31;
  v32 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v32;
  return result;
}

uint64_t CMMsl::AccessoryPPG::AccessoryPPG(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041CBE0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 104) = 0u;
  v4 = a1 + 104;
  *(a1 + 152) = 0u;
  v5 = a1 + 152;
  *(a1 + 56) = 0u;
  v6 = a1 + 56;
  *(a1 + 8) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 224) = *(a2 + 224);
  *(a2 + 224) = 0;
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 220) = *(a2 + 220);
  *(a1 + 216) = *(a2 + 216);
  sub_1002A2DD0(a1 + 8, (a2 + 8));
  sub_1002A2DD0(a1 + 32, (a2 + 32));
  sub_1002A2DD0(v6, (a2 + 56));
  sub_1002A2DD0(a1 + 80, (a2 + 80));
  sub_1002A2DD0(a1 + 128, (a2 + 128));
  sub_1002A2DD0(v5, (a2 + 152));
  sub_1002A2DD0(a1 + 176, (a2 + 176));
  sub_1002A2DD0(v4, (a2 + 104));
  return a1;
}

CMMsl *CMMsl::AccessoryPPG::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::AccessoryPPG::AccessoryPPG(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::AccessoryPPG::~AccessoryPPG(v5);
  }

  return a1;
}

uint64_t CMMsl::AccessoryPPG::formatText(CMMsl::AccessoryPPG *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(a2, "dark0", v7);
  }

  v8 = *(this + 4);
  v9 = *(this + 5);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::TextFormatter::format(a2, "dark1", v10);
  }

  v11 = *(this + 7);
  v12 = *(this + 8);
  while (v11 != v12)
  {
    v13 = *v11++;
    PB::TextFormatter::format(a2, "dark2", v13);
  }

  v14 = *(this + 10);
  v15 = *(this + 11);
  while (v14 != v15)
  {
    v16 = *v14++;
    PB::TextFormatter::format(a2, "dark3", v16);
  }

  v17 = *(this + 224);
  if ((v17 & 4) != 0)
  {
    PB::TextFormatter::format(a2, "error", *(this + 54));
    v17 = *(this + 224);
  }

  if ((v17 & 8) != 0)
  {
    PB::TextFormatter::format(a2, "frameNum", *(this + 55));
  }

  v18 = *(this + 13);
  v19 = *(this + 14);
  while (v18 != v19)
  {
    v20 = *v18++;
    PB::TextFormatter::format(a2, "ledCurrent", v20);
  }

  v21 = *(this + 16);
  v22 = *(this + 17);
  while (v21 != v22)
  {
    v23 = *v21++;
    PB::TextFormatter::format(a2, "light0", v23);
  }

  v24 = *(this + 19);
  v25 = *(this + 20);
  while (v24 != v25)
  {
    v26 = *v24++;
    PB::TextFormatter::format(a2, "light1", v26);
  }

  v27 = *(this + 22);
  v28 = *(this + 23);
  while (v27 != v28)
  {
    v29 = *v27++;
    PB::TextFormatter::format(a2, "rxGain", v29);
  }

  v30 = *(this + 224);
  if (v30)
  {
    PB::TextFormatter::format(a2, "sensorTime", *(this + 25));
    v30 = *(this + 224);
  }

  if ((v30 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 26));
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::AccessoryPPG::readFrom(CMMsl::AccessoryPPG *this, PB::Reader *a2)
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
        v14 = 0;
        v15 = 0;
        v10 = 0;
        v16 = v3 >= v2;
        v17 = v3 - v2;
        if (!v16)
        {
          v17 = 0;
        }

        v18 = (v7 + v2);
        v19 = v2 + 1;
        while (v17)
        {
          v20 = *v18;
          *(a2 + 1) = v19;
          v10 |= (v20 & 0x7F) << v14;
          if ((v20 & 0x80) == 0)
          {
            if (v4)
            {
              v10 = 0;
            }

            goto LABEL_21;
          }

          v14 += 7;
          --v17;
          ++v18;
          ++v19;
          v49 = v15++ > 8;
          if (v49)
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
        v49 = v9++ > 8;
        if (v49)
        {
          goto LABEL_18;
        }
      }

LABEL_21:
      v21 = v10 & 7;
      if (v4 & 1 | (v21 == 4))
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
              if (v21 == 2)
              {
                if (PB::Reader::placeMark())
                {
                  goto LABEL_640;
                }

                if (*(a2 + 1) < *(a2 + 2) && (*(a2 + 24) & 1) == 0)
                {
                  v32 = *(this + 20);
                  while (1)
                  {
                    v147 = *(this + 21);
                    if (v32 >= v147)
                    {
                      v148 = *(this + 19);
                      v149 = v32 - v148;
                      v150 = (v32 - v148) >> 2;
                      v151 = v150 + 1;
                      if ((v150 + 1) >> 62)
                      {
                        goto LABEL_641;
                      }

                      v152 = v147 - v148;
                      if (v152 >> 1 > v151)
                      {
                        v151 = v152 >> 1;
                      }

                      if (v152 >= 0x7FFFFFFFFFFFFFFCLL)
                      {
                        v153 = 0x3FFFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v153 = v151;
                      }

                      if (v153)
                      {
                        sub_10002290C(this + 152, v153);
                      }

                      v154 = (v32 - v148) >> 2;
                      v155 = (4 * v150);
                      v156 = (4 * v150 - 4 * v154);
                      *v155 = 0;
                      v32 = (v155 + 1);
                      memcpy(v156, v148, v149);
                      v157 = *(this + 19);
                      *(this + 19) = v156;
                      *(this + 20) = v32;
                      *(this + 21) = 0;
                      if (v157)
                      {
                        operator delete(v157);
                      }
                    }

                    else
                    {
                      *v32 = 0;
                      v32 += 4;
                    }

                    *(this + 20) = v32;
                    v159 = *(a2 + 1);
                    v158 = *(a2 + 2);
                    v160 = *a2;
                    v161 = 0;
                    v162 = 0;
                    if (v159 > 0xFFFFFFFFFFFFFFF5 || v159 + 10 > v158)
                    {
                      break;
                    }

                    v169 = 0;
                    v170 = (v160 + v159);
                    v171 = v159 + 1;
                    while (1)
                    {
                      v167 = v171;
                      *(a2 + 1) = v171;
                      v172 = *v170++;
                      v169 |= (v172 & 0x7F) << v161;
                      if ((v172 & 0x80) == 0)
                      {
                        break;
                      }

                      v161 += 7;
                      ++v171;
                      v49 = v162++ > 8;
                      if (v49)
                      {
                        goto LABEL_243;
                      }
                    }

LABEL_246:
                    *(v32 - 1) = v169;
                    if (v167 >= v158 || (*(a2 + 24) & 1) != 0)
                    {
                      goto LABEL_374;
                    }
                  }

                  v169 = 0;
                  v164 = v158 - v159;
                  if (v158 < v159)
                  {
                    v164 = 0;
                  }

                  v165 = (v160 + v159);
                  v166 = v159 + 1;
                  while (v164)
                  {
                    v167 = v166;
                    v168 = *v165;
                    *(a2 + 1) = v167;
                    v169 |= (v168 & 0x7F) << v161;
                    if ((v168 & 0x80) == 0)
                    {
                      if (*(a2 + 24))
                      {
                        LODWORD(v169) = 0;
                      }

                      goto LABEL_246;
                    }

                    v161 += 7;
                    --v164;
                    ++v165;
                    v166 = v167 + 1;
                    v49 = v162++ > 8;
                    if (v49)
                    {
LABEL_243:
                      LODWORD(v169) = 0;
                      goto LABEL_246;
                    }
                  }

LABEL_373:
                  *(a2 + 24) = 1;
                  *(v32 - 1) = 0;
                }

                goto LABEL_374;
              }

              v288 = *(this + 20);
              v287 = *(this + 21);
              if (v288 >= v287)
              {
                v319 = *(this + 19);
                v320 = v288 - v319;
                v321 = (v288 - v319) >> 2;
                v322 = v321 + 1;
                if ((v321 + 1) >> 62)
                {
                  goto LABEL_641;
                }

                v323 = v287 - v319;
                if (v323 >> 1 > v322)
                {
                  v322 = v323 >> 1;
                }

                if (v323 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v324 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v324 = v322;
                }

                if (v324)
                {
                  sub_10002290C(this + 152, v324);
                }

                v416 = (v288 - v319) >> 2;
                v417 = (4 * v321);
                v418 = (4 * v321 - 4 * v416);
                *v417 = 0;
                v268 = v417 + 1;
                memcpy(v418, v319, v320);
                v419 = *(this + 19);
                *(this + 19) = v418;
                *(this + 20) = v268;
                *(this + 21) = 0;
                if (v419)
                {
                  operator delete(v419);
                }
              }

              else
              {
                *v288 = 0;
                v268 = v288 + 4;
              }

              *(this + 20) = v268;
              v421 = *(a2 + 1);
              v420 = *(a2 + 2);
              v422 = *a2;
              if (v421 <= 0xFFFFFFFFFFFFFFF5 && v421 + 10 <= v420)
              {
                v423 = 0;
                v424 = 0;
                v352 = 0;
                v425 = (v422 + v421);
                v426 = v421 + 1;
                while (1)
                {
                  *(a2 + 1) = v426;
                  v427 = *v425++;
                  v352 |= (v427 & 0x7F) << v423;
                  if ((v427 & 0x80) == 0)
                  {
                    goto LABEL_633;
                  }

                  v423 += 7;
                  ++v426;
                  v49 = v424++ > 8;
                  if (v49)
                  {
                    goto LABEL_629;
                  }
                }
              }

              v428 = 0;
              v429 = 0;
              v352 = 0;
              v16 = v420 >= v421;
              v430 = v420 - v421;
              if (!v16)
              {
                v430 = 0;
              }

              v431 = (v422 + v421);
              v432 = v421 + 1;
              while (v430)
              {
                v433 = *v431;
                *(a2 + 1) = v432;
                v352 |= (v433 & 0x7F) << v428;
                if ((v433 & 0x80) == 0)
                {
LABEL_631:
                  if (*(a2 + 24))
                  {
                    LODWORD(v352) = 0;
                  }

                  goto LABEL_633;
                }

                v428 += 7;
                --v430;
                ++v431;
                ++v432;
                v49 = v429++ > 8;
                if (v49)
                {
LABEL_629:
                  LODWORD(v352) = 0;
                  goto LABEL_633;
                }
              }

              goto LABEL_630;
            case 0xB:
              if (v21 == 2)
              {
                if (PB::Reader::placeMark())
                {
                  goto LABEL_640;
                }

                if (*(a2 + 1) < *(a2 + 2) && (*(a2 + 24) & 1) == 0)
                {
                  v32 = *(this + 23);
                  do
                  {
                    v234 = *(this + 24);
                    if (v32 >= v234)
                    {
                      v235 = *(this + 22);
                      v236 = v32 - v235;
                      v237 = (v32 - v235) >> 2;
                      v238 = v237 + 1;
                      if ((v237 + 1) >> 62)
                      {
                        goto LABEL_641;
                      }

                      v239 = v234 - v235;
                      if (v239 >> 1 > v238)
                      {
                        v238 = v239 >> 1;
                      }

                      if (v239 >= 0x7FFFFFFFFFFFFFFCLL)
                      {
                        v240 = 0x3FFFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v240 = v238;
                      }

                      if (v240)
                      {
                        sub_10002290C(this + 176, v240);
                      }

                      v241 = (v32 - v235) >> 2;
                      v242 = (4 * v237);
                      v243 = (4 * v237 - 4 * v241);
                      *v242 = 0;
                      v32 = (v242 + 1);
                      memcpy(v243, v235, v236);
                      v244 = *(this + 22);
                      *(this + 22) = v243;
                      *(this + 23) = v32;
                      *(this + 24) = 0;
                      if (v244)
                      {
                        operator delete(v244);
                      }
                    }

                    else
                    {
                      *v32 = 0;
                      v32 += 4;
                    }

                    *(this + 23) = v32;
                    v246 = *(a2 + 1);
                    v245 = *(a2 + 2);
                    v247 = *a2;
                    v248 = 0;
                    v249 = 0;
                    if (v246 > 0xFFFFFFFFFFFFFFF5 || v246 + 10 > v245)
                    {
                      v256 = 0;
                      v251 = v245 - v246;
                      if (v245 < v246)
                      {
                        v251 = 0;
                      }

                      v252 = (v247 + v246);
                      v253 = v246 + 1;
                      while (1)
                      {
                        if (!v251)
                        {
                          goto LABEL_373;
                        }

                        v254 = v253;
                        v255 = *v252;
                        *(a2 + 1) = v254;
                        v256 |= (v255 & 0x7F) << v248;
                        if ((v255 & 0x80) == 0)
                        {
                          break;
                        }

                        v248 += 7;
                        --v251;
                        ++v252;
                        v253 = v254 + 1;
                        v49 = v249++ > 8;
                        if (v49)
                        {
LABEL_367:
                          LODWORD(v256) = 0;
                          goto LABEL_370;
                        }
                      }

                      if (*(a2 + 24))
                      {
                        LODWORD(v256) = 0;
                      }
                    }

                    else
                    {
                      v256 = 0;
                      v257 = (v247 + v246);
                      v258 = v246 + 1;
                      while (1)
                      {
                        v254 = v258;
                        *(a2 + 1) = v258;
                        v259 = *v257++;
                        v256 |= (v259 & 0x7F) << v248;
                        if ((v259 & 0x80) == 0)
                        {
                          break;
                        }

                        v248 += 7;
                        ++v258;
                        v49 = v249++ > 8;
                        if (v49)
                        {
                          goto LABEL_367;
                        }
                      }
                    }

LABEL_370:
                    *(v32 - 1) = v256;
                  }

                  while (v254 < v245 && (*(a2 + 24) & 1) == 0);
                }

                goto LABEL_374;
              }

              v294 = *(this + 23);
              v293 = *(this + 24);
              if (v294 >= v293)
              {
                v337 = *(this + 22);
                v338 = v294 - v337;
                v339 = (v294 - v337) >> 2;
                v340 = v339 + 1;
                if ((v339 + 1) >> 62)
                {
LABEL_641:
                  sub_10000CD24();
                }

                v341 = v293 - v337;
                if (v341 >> 1 > v340)
                {
                  v340 = v341 >> 1;
                }

                if (v341 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v342 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v342 = v340;
                }

                if (v342)
                {
                  sub_10002290C(this + 176, v342);
                }

                v470 = (v294 - v337) >> 2;
                v471 = (4 * v339);
                v472 = (4 * v339 - 4 * v470);
                *v471 = 0;
                v268 = v471 + 1;
                memcpy(v472, v337, v338);
                v473 = *(this + 22);
                *(this + 22) = v472;
                *(this + 23) = v268;
                *(this + 24) = 0;
                if (v473)
                {
                  operator delete(v473);
                }
              }

              else
              {
                *v294 = 0;
                v268 = v294 + 4;
              }

              *(this + 23) = v268;
              v475 = *(a2 + 1);
              v474 = *(a2 + 2);
              v476 = *a2;
              if (v475 <= 0xFFFFFFFFFFFFFFF5 && v475 + 10 <= v474)
              {
                v477 = 0;
                v478 = 0;
                v352 = 0;
                v479 = (v476 + v475);
                v480 = v475 + 1;
                while (1)
                {
                  *(a2 + 1) = v480;
                  v481 = *v479++;
                  v352 |= (v481 & 0x7F) << v477;
                  if ((v481 & 0x80) == 0)
                  {
                    goto LABEL_633;
                  }

                  v477 += 7;
                  ++v480;
                  v49 = v478++ > 8;
                  if (v49)
                  {
                    goto LABEL_629;
                  }
                }
              }

              v482 = 0;
              v483 = 0;
              v352 = 0;
              v16 = v474 >= v475;
              v484 = v474 - v475;
              if (!v16)
              {
                v484 = 0;
              }

              v485 = (v476 + v475);
              v486 = v475 + 1;
              while (v484)
              {
                v487 = *v485;
                *(a2 + 1) = v486;
                v352 |= (v487 & 0x7F) << v482;
                if ((v487 & 0x80) == 0)
                {
                  goto LABEL_631;
                }

                v482 += 7;
                --v484;
                ++v485;
                ++v486;
                v49 = v483++ > 8;
                if (v49)
                {
                  goto LABEL_629;
                }
              }

              goto LABEL_630;
            case 0xC:
              if (v21 == 2)
              {
                if (PB::Reader::placeMark())
                {
                  goto LABEL_640;
                }

                if (*(a2 + 1) < *(a2 + 2) && (*(a2 + 24) & 1) == 0)
                {
                  v32 = *(this + 14);
                  do
                  {
                    v85 = *(this + 15);
                    if (v32 >= v85)
                    {
                      v86 = *(this + 13);
                      v87 = v32 - v86;
                      v88 = (v32 - v86) >> 2;
                      v89 = v88 + 1;
                      if ((v88 + 1) >> 62)
                      {
                        goto LABEL_641;
                      }

                      v90 = v85 - v86;
                      if (v90 >> 1 > v89)
                      {
                        v89 = v90 >> 1;
                      }

                      if (v90 >= 0x7FFFFFFFFFFFFFFCLL)
                      {
                        v91 = 0x3FFFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v91 = v89;
                      }

                      if (v91)
                      {
                        sub_10002290C(this + 104, v91);
                      }

                      v92 = (v32 - v86) >> 2;
                      v93 = (4 * v88);
                      v94 = (4 * v88 - 4 * v92);
                      *v93 = 0;
                      v32 = (v93 + 1);
                      memcpy(v94, v86, v87);
                      v95 = *(this + 13);
                      *(this + 13) = v94;
                      *(this + 14) = v32;
                      *(this + 15) = 0;
                      if (v95)
                      {
                        operator delete(v95);
                      }
                    }

                    else
                    {
                      *v32 = 0;
                      v32 += 4;
                    }

                    *(this + 14) = v32;
                    v97 = *(a2 + 1);
                    v96 = *(a2 + 2);
                    v98 = *a2;
                    v99 = 0;
                    v100 = 0;
                    if (v97 > 0xFFFFFFFFFFFFFFF5 || v97 + 10 > v96)
                    {
                      v107 = 0;
                      v102 = v96 - v97;
                      if (v96 < v97)
                      {
                        v102 = 0;
                      }

                      v103 = (v98 + v97);
                      v104 = v97 + 1;
                      while (1)
                      {
                        if (!v102)
                        {
                          goto LABEL_373;
                        }

                        v105 = v104;
                        v106 = *v103;
                        *(a2 + 1) = v105;
                        v107 |= (v106 & 0x7F) << v99;
                        if ((v106 & 0x80) == 0)
                        {
                          break;
                        }

                        v99 += 7;
                        --v102;
                        ++v103;
                        v104 = v105 + 1;
                        v49 = v100++ > 8;
                        if (v49)
                        {
LABEL_155:
                          LODWORD(v107) = 0;
                          goto LABEL_158;
                        }
                      }

                      if (*(a2 + 24))
                      {
                        LODWORD(v107) = 0;
                      }
                    }

                    else
                    {
                      v107 = 0;
                      v108 = (v98 + v97);
                      v109 = v97 + 1;
                      while (1)
                      {
                        v105 = v109;
                        *(a2 + 1) = v109;
                        v110 = *v108++;
                        v107 |= (v110 & 0x7F) << v99;
                        if ((v110 & 0x80) == 0)
                        {
                          break;
                        }

                        v99 += 7;
                        ++v109;
                        v49 = v100++ > 8;
                        if (v49)
                        {
                          goto LABEL_155;
                        }
                      }
                    }

LABEL_158:
                    *(v32 - 1) = v107;
                  }

                  while (v105 < v96 && (*(a2 + 24) & 1) == 0);
                }

                goto LABEL_374;
              }

              v272 = *(this + 14);
              v271 = *(this + 15);
              if (v272 >= v271)
              {
                v307 = *(this + 13);
                v308 = v272 - v307;
                v309 = (v272 - v307) >> 2;
                v310 = v309 + 1;
                if ((v309 + 1) >> 62)
                {
                  goto LABEL_641;
                }

                v311 = v271 - v307;
                if (v311 >> 1 > v310)
                {
                  v310 = v311 >> 1;
                }

                if (v311 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v312 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v312 = v310;
                }

                if (v312)
                {
                  sub_10002290C(this + 104, v312);
                }

                v380 = (v272 - v307) >> 2;
                v381 = (4 * v309);
                v382 = (4 * v309 - 4 * v380);
                *v381 = 0;
                v268 = v381 + 1;
                memcpy(v382, v307, v308);
                v383 = *(this + 13);
                *(this + 13) = v382;
                *(this + 14) = v268;
                *(this + 15) = 0;
                if (v383)
                {
                  operator delete(v383);
                }
              }

              else
              {
                *v272 = 0;
                v268 = v272 + 4;
              }

              *(this + 14) = v268;
              v385 = *(a2 + 1);
              v384 = *(a2 + 2);
              v386 = *a2;
              if (v385 <= 0xFFFFFFFFFFFFFFF5 && v385 + 10 <= v384)
              {
                v387 = 0;
                v388 = 0;
                v352 = 0;
                v389 = (v386 + v385);
                v390 = v385 + 1;
                while (1)
                {
                  *(a2 + 1) = v390;
                  v391 = *v389++;
                  v352 |= (v391 & 0x7F) << v387;
                  if ((v391 & 0x80) == 0)
                  {
                    goto LABEL_633;
                  }

                  v387 += 7;
                  ++v390;
                  v49 = v388++ > 8;
                  if (v49)
                  {
                    goto LABEL_629;
                  }
                }
              }

              v392 = 0;
              v393 = 0;
              v352 = 0;
              v16 = v384 >= v385;
              v394 = v384 - v385;
              if (!v16)
              {
                v394 = 0;
              }

              v395 = (v386 + v385);
              v396 = v385 + 1;
              while (v394)
              {
                v397 = *v395;
                *(a2 + 1) = v396;
                v352 |= (v397 & 0x7F) << v392;
                if ((v397 & 0x80) == 0)
                {
                  goto LABEL_631;
                }

                v392 += 7;
                --v394;
                ++v395;
                ++v396;
                v49 = v393++ > 8;
                if (v49)
                {
                  goto LABEL_629;
                }
              }

              goto LABEL_630;
          }
        }

        else
        {
          switch(v22)
          {
            case 7:
              if (v21 == 2)
              {
                if (PB::Reader::placeMark())
                {
                  goto LABEL_640;
                }

                if (*(a2 + 1) < *(a2 + 2) && (*(a2 + 24) & 1) == 0)
                {
                  v32 = *(this + 8);
                  do
                  {
                    v112 = *(this + 9);
                    if (v32 >= v112)
                    {
                      v113 = *(this + 7);
                      v114 = v32 - v113;
                      v115 = (v32 - v113) >> 2;
                      v116 = v115 + 1;
                      if ((v115 + 1) >> 62)
                      {
                        goto LABEL_641;
                      }

                      v117 = v112 - v113;
                      if (v117 >> 1 > v116)
                      {
                        v116 = v117 >> 1;
                      }

                      if (v117 >= 0x7FFFFFFFFFFFFFFCLL)
                      {
                        v118 = 0x3FFFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v118 = v116;
                      }

                      if (v118)
                      {
                        sub_10002290C(this + 56, v118);
                      }

                      v119 = (v32 - v113) >> 2;
                      v120 = (4 * v115);
                      v121 = (4 * v115 - 4 * v119);
                      *v120 = 0;
                      v32 = (v120 + 1);
                      memcpy(v121, v113, v114);
                      v122 = *(this + 7);
                      *(this + 7) = v121;
                      *(this + 8) = v32;
                      *(this + 9) = 0;
                      if (v122)
                      {
                        operator delete(v122);
                      }
                    }

                    else
                    {
                      *v32 = 0;
                      v32 += 4;
                    }

                    *(this + 8) = v32;
                    v124 = *(a2 + 1);
                    v123 = *(a2 + 2);
                    v125 = *a2;
                    v126 = 0;
                    v127 = 0;
                    if (v124 > 0xFFFFFFFFFFFFFFF5 || v124 + 10 > v123)
                    {
                      v134 = 0;
                      v129 = v123 - v124;
                      if (v123 < v124)
                      {
                        v129 = 0;
                      }

                      v130 = (v125 + v124);
                      v131 = v124 + 1;
                      while (1)
                      {
                        if (!v129)
                        {
                          goto LABEL_373;
                        }

                        v132 = v131;
                        v133 = *v130;
                        *(a2 + 1) = v132;
                        v134 |= (v133 & 0x7F) << v126;
                        if ((v133 & 0x80) == 0)
                        {
                          break;
                        }

                        v126 += 7;
                        --v129;
                        ++v130;
                        v131 = v132 + 1;
                        v49 = v127++ > 8;
                        if (v49)
                        {
LABEL_197:
                          LODWORD(v134) = 0;
                          goto LABEL_200;
                        }
                      }

                      if (*(a2 + 24))
                      {
                        LODWORD(v134) = 0;
                      }
                    }

                    else
                    {
                      v134 = 0;
                      v135 = (v125 + v124);
                      v136 = v124 + 1;
                      while (1)
                      {
                        v132 = v136;
                        *(a2 + 1) = v136;
                        v137 = *v135++;
                        v134 |= (v137 & 0x7F) << v126;
                        if ((v137 & 0x80) == 0)
                        {
                          break;
                        }

                        v126 += 7;
                        ++v136;
                        v49 = v127++ > 8;
                        if (v49)
                        {
                          goto LABEL_197;
                        }
                      }
                    }

LABEL_200:
                    *(v32 - 1) = v134;
                  }

                  while (v132 < v123 && (*(a2 + 24) & 1) == 0);
                }

                goto LABEL_374;
              }

              v286 = *(this + 8);
              v285 = *(this + 9);
              if (v286 >= v285)
              {
                v313 = *(this + 7);
                v314 = v286 - v313;
                v315 = (v286 - v313) >> 2;
                v316 = v315 + 1;
                if ((v315 + 1) >> 62)
                {
                  goto LABEL_641;
                }

                v317 = v285 - v313;
                if (v317 >> 1 > v316)
                {
                  v316 = v317 >> 1;
                }

                if (v317 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v318 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v318 = v316;
                }

                if (v318)
                {
                  sub_10002290C(this + 56, v318);
                }

                v398 = (v286 - v313) >> 2;
                v399 = (4 * v315);
                v400 = (4 * v315 - 4 * v398);
                *v399 = 0;
                v268 = v399 + 1;
                memcpy(v400, v313, v314);
                v401 = *(this + 7);
                *(this + 7) = v400;
                *(this + 8) = v268;
                *(this + 9) = 0;
                if (v401)
                {
                  operator delete(v401);
                }
              }

              else
              {
                *v286 = 0;
                v268 = v286 + 4;
              }

              *(this + 8) = v268;
              v403 = *(a2 + 1);
              v402 = *(a2 + 2);
              v404 = *a2;
              if (v403 <= 0xFFFFFFFFFFFFFFF5 && v403 + 10 <= v402)
              {
                v405 = 0;
                v406 = 0;
                v352 = 0;
                v407 = (v404 + v403);
                v408 = v403 + 1;
                while (1)
                {
                  *(a2 + 1) = v408;
                  v409 = *v407++;
                  v352 |= (v409 & 0x7F) << v405;
                  if ((v409 & 0x80) == 0)
                  {
                    goto LABEL_633;
                  }

                  v405 += 7;
                  ++v408;
                  v49 = v406++ > 8;
                  if (v49)
                  {
                    goto LABEL_629;
                  }
                }
              }

              v410 = 0;
              v411 = 0;
              v352 = 0;
              v16 = v402 >= v403;
              v412 = v402 - v403;
              if (!v16)
              {
                v412 = 0;
              }

              v413 = (v404 + v403);
              v414 = v403 + 1;
              while (v412)
              {
                v415 = *v413;
                *(a2 + 1) = v414;
                v352 |= (v415 & 0x7F) << v410;
                if ((v415 & 0x80) == 0)
                {
                  goto LABEL_631;
                }

                v410 += 7;
                --v412;
                ++v413;
                ++v414;
                v49 = v411++ > 8;
                if (v49)
                {
                  goto LABEL_629;
                }
              }

              goto LABEL_630;
            case 8:
              if (v21 == 2)
              {
                if (PB::Reader::placeMark())
                {
                  goto LABEL_640;
                }

                if (*(a2 + 1) < *(a2 + 2) && (*(a2 + 24) & 1) == 0)
                {
                  v32 = *(this + 11);
                  do
                  {
                    v182 = *(this + 12);
                    if (v32 >= v182)
                    {
                      v183 = *(this + 10);
                      v184 = v32 - v183;
                      v185 = (v32 - v183) >> 2;
                      v186 = v185 + 1;
                      if ((v185 + 1) >> 62)
                      {
                        goto LABEL_641;
                      }

                      v187 = v182 - v183;
                      if (v187 >> 1 > v186)
                      {
                        v186 = v187 >> 1;
                      }

                      if (v187 >= 0x7FFFFFFFFFFFFFFCLL)
                      {
                        v188 = 0x3FFFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v188 = v186;
                      }

                      if (v188)
                      {
                        sub_10002290C(this + 80, v188);
                      }

                      v189 = (v32 - v183) >> 2;
                      v190 = (4 * v185);
                      v191 = (4 * v185 - 4 * v189);
                      *v190 = 0;
                      v32 = (v190 + 1);
                      memcpy(v191, v183, v184);
                      v192 = *(this + 10);
                      *(this + 10) = v191;
                      *(this + 11) = v32;
                      *(this + 12) = 0;
                      if (v192)
                      {
                        operator delete(v192);
                      }
                    }

                    else
                    {
                      *v32 = 0;
                      v32 += 4;
                    }

                    *(this + 11) = v32;
                    v194 = *(a2 + 1);
                    v193 = *(a2 + 2);
                    v195 = *a2;
                    v196 = 0;
                    v197 = 0;
                    if (v194 > 0xFFFFFFFFFFFFFFF5 || v194 + 10 > v193)
                    {
                      v204 = 0;
                      v199 = v193 - v194;
                      if (v193 < v194)
                      {
                        v199 = 0;
                      }

                      v200 = (v195 + v194);
                      v201 = v194 + 1;
                      while (1)
                      {
                        if (!v199)
                        {
                          goto LABEL_373;
                        }

                        v202 = v201;
                        v203 = *v200;
                        *(a2 + 1) = v202;
                        v204 |= (v203 & 0x7F) << v196;
                        if ((v203 & 0x80) == 0)
                        {
                          break;
                        }

                        v196 += 7;
                        --v199;
                        ++v200;
                        v201 = v202 + 1;
                        v49 = v197++ > 8;
                        if (v49)
                        {
LABEL_289:
                          LODWORD(v204) = 0;
                          goto LABEL_292;
                        }
                      }

                      if (*(a2 + 24))
                      {
                        LODWORD(v204) = 0;
                      }
                    }

                    else
                    {
                      v204 = 0;
                      v205 = (v195 + v194);
                      v206 = v194 + 1;
                      while (1)
                      {
                        v202 = v206;
                        *(a2 + 1) = v206;
                        v207 = *v205++;
                        v204 |= (v207 & 0x7F) << v196;
                        if ((v207 & 0x80) == 0)
                        {
                          break;
                        }

                        v196 += 7;
                        ++v206;
                        v49 = v197++ > 8;
                        if (v49)
                        {
                          goto LABEL_289;
                        }
                      }
                    }

LABEL_292:
                    *(v32 - 1) = v204;
                  }

                  while (v202 < v193 && (*(a2 + 24) & 1) == 0);
                }

                goto LABEL_374;
              }

              v290 = *(this + 11);
              v289 = *(this + 12);
              if (v290 >= v289)
              {
                v325 = *(this + 10);
                v326 = v290 - v325;
                v327 = (v290 - v325) >> 2;
                v328 = v327 + 1;
                if ((v327 + 1) >> 62)
                {
                  goto LABEL_641;
                }

                v329 = v289 - v325;
                if (v329 >> 1 > v328)
                {
                  v328 = v329 >> 1;
                }

                if (v329 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v330 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v330 = v328;
                }

                if (v330)
                {
                  sub_10002290C(this + 80, v330);
                }

                v434 = (v290 - v325) >> 2;
                v435 = (4 * v327);
                v436 = (4 * v327 - 4 * v434);
                *v435 = 0;
                v268 = v435 + 1;
                memcpy(v436, v325, v326);
                v437 = *(this + 10);
                *(this + 10) = v436;
                *(this + 11) = v268;
                *(this + 12) = 0;
                if (v437)
                {
                  operator delete(v437);
                }
              }

              else
              {
                *v290 = 0;
                v268 = v290 + 4;
              }

              *(this + 11) = v268;
              v439 = *(a2 + 1);
              v438 = *(a2 + 2);
              v440 = *a2;
              if (v439 <= 0xFFFFFFFFFFFFFFF5 && v439 + 10 <= v438)
              {
                v441 = 0;
                v442 = 0;
                v352 = 0;
                v443 = (v440 + v439);
                v444 = v439 + 1;
                while (1)
                {
                  *(a2 + 1) = v444;
                  v445 = *v443++;
                  v352 |= (v445 & 0x7F) << v441;
                  if ((v445 & 0x80) == 0)
                  {
                    goto LABEL_633;
                  }

                  v441 += 7;
                  ++v444;
                  v49 = v442++ > 8;
                  if (v49)
                  {
                    goto LABEL_629;
                  }
                }
              }

              v446 = 0;
              v447 = 0;
              v352 = 0;
              v16 = v438 >= v439;
              v448 = v438 - v439;
              if (!v16)
              {
                v448 = 0;
              }

              v449 = (v440 + v439);
              v450 = v439 + 1;
              while (v448)
              {
                v451 = *v449;
                *(a2 + 1) = v450;
                v352 |= (v451 & 0x7F) << v446;
                if ((v451 & 0x80) == 0)
                {
                  goto LABEL_631;
                }

                v446 += 7;
                --v448;
                ++v449;
                ++v450;
                v49 = v447++ > 8;
                if (v49)
                {
                  goto LABEL_629;
                }
              }

              goto LABEL_630;
            case 9:
              if (v21 == 2)
              {
                if (PB::Reader::placeMark())
                {
                  goto LABEL_640;
                }

                if (*(a2 + 1) < *(a2 + 2) && (*(a2 + 24) & 1) == 0)
                {
                  v32 = *(this + 17);
                  do
                  {
                    v33 = *(this + 18);
                    if (v32 >= v33)
                    {
                      v34 = *(this + 16);
                      v35 = v32 - v34;
                      v36 = (v32 - v34) >> 2;
                      v37 = v36 + 1;
                      if ((v36 + 1) >> 62)
                      {
                        goto LABEL_641;
                      }

                      v38 = v33 - v34;
                      if (v38 >> 1 > v37)
                      {
                        v37 = v38 >> 1;
                      }

                      if (v38 >= 0x7FFFFFFFFFFFFFFCLL)
                      {
                        v39 = 0x3FFFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v39 = v37;
                      }

                      if (v39)
                      {
                        sub_10002290C(this + 128, v39);
                      }

                      v40 = (v32 - v34) >> 2;
                      v41 = (4 * v36);
                      v42 = (4 * v36 - 4 * v40);
                      *v41 = 0;
                      v32 = (v41 + 1);
                      memcpy(v42, v34, v35);
                      v43 = *(this + 16);
                      *(this + 16) = v42;
                      *(this + 17) = v32;
                      *(this + 18) = 0;
                      if (v43)
                      {
                        operator delete(v43);
                      }
                    }

                    else
                    {
                      *v32 = 0;
                      v32 += 4;
                    }

                    *(this + 17) = v32;
                    v45 = *(a2 + 1);
                    v44 = *(a2 + 2);
                    v46 = *a2;
                    v47 = 0;
                    v48 = 0;
                    v49 = v45 > 0xFFFFFFFFFFFFFFF5 || v45 + 10 > v44;
                    if (v49)
                    {
                      v55 = 0;
                      v50 = v44 - v45;
                      if (v44 < v45)
                      {
                        v50 = 0;
                      }

                      v51 = (v46 + v45);
                      v52 = v45 + 1;
                      while (1)
                      {
                        if (!v50)
                        {
                          goto LABEL_373;
                        }

                        v53 = v52;
                        v54 = *v51;
                        *(a2 + 1) = v53;
                        v55 |= (v54 & 0x7F) << v47;
                        if ((v54 & 0x80) == 0)
                        {
                          break;
                        }

                        v47 += 7;
                        --v50;
                        ++v51;
                        v52 = v53 + 1;
                        v49 = v48++ > 8;
                        if (v49)
                        {
LABEL_71:
                          LODWORD(v55) = 0;
                          goto LABEL_74;
                        }
                      }

                      if (*(a2 + 24))
                      {
                        LODWORD(v55) = 0;
                      }
                    }

                    else
                    {
                      v55 = 0;
                      v56 = (v46 + v45);
                      v57 = v45 + 1;
                      while (1)
                      {
                        v53 = v57;
                        *(a2 + 1) = v57;
                        v58 = *v56++;
                        v55 |= (v58 & 0x7F) << v47;
                        if ((v58 & 0x80) == 0)
                        {
                          break;
                        }

                        v47 += 7;
                        ++v57;
                        v49 = v48++ > 8;
                        if (v49)
                        {
                          goto LABEL_71;
                        }
                      }
                    }

LABEL_74:
                    *(v32 - 1) = v55;
                  }

                  while (v53 < v44 && (*(a2 + 24) & 1) == 0);
                }

LABEL_374:
                PB::Reader::recallMark();
                goto LABEL_634;
              }

              v267 = *(this + 17);
              v266 = *(this + 18);
              if (v267 >= v266)
              {
                v295 = *(this + 16);
                v296 = v267 - v295;
                v297 = (v267 - v295) >> 2;
                v298 = v297 + 1;
                if ((v297 + 1) >> 62)
                {
                  goto LABEL_641;
                }

                v299 = v266 - v295;
                if (v299 >> 1 > v298)
                {
                  v298 = v299 >> 1;
                }

                if (v299 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v300 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v300 = v298;
                }

                if (v300)
                {
                  sub_10002290C(this + 128, v300);
                }

                v343 = (v267 - v295) >> 2;
                v344 = (4 * v297);
                v345 = (4 * v297 - 4 * v343);
                *v344 = 0;
                v268 = v344 + 1;
                memcpy(v345, v295, v296);
                v346 = *(this + 16);
                *(this + 16) = v345;
                *(this + 17) = v268;
                *(this + 18) = 0;
                if (v346)
                {
                  operator delete(v346);
                }
              }

              else
              {
                *v267 = 0;
                v268 = v267 + 4;
              }

              *(this + 17) = v268;
              v348 = *(a2 + 1);
              v347 = *(a2 + 2);
              v349 = *a2;
              if (v348 <= 0xFFFFFFFFFFFFFFF5 && v348 + 10 <= v347)
              {
                v350 = 0;
                v351 = 0;
                v352 = 0;
                v353 = (v349 + v348);
                v354 = v348 + 1;
                while (1)
                {
                  *(a2 + 1) = v354;
                  v355 = *v353++;
                  v352 |= (v355 & 0x7F) << v350;
                  if ((v355 & 0x80) == 0)
                  {
                    goto LABEL_633;
                  }

                  v350 += 7;
                  ++v354;
                  v49 = v351++ > 8;
                  if (v49)
                  {
                    goto LABEL_629;
                  }
                }
              }

              v356 = 0;
              v357 = 0;
              v352 = 0;
              v16 = v347 >= v348;
              v358 = v347 - v348;
              if (!v16)
              {
                v358 = 0;
              }

              v359 = (v349 + v348);
              v360 = v348 + 1;
              while (v358)
              {
                v361 = *v359;
                *(a2 + 1) = v360;
                v352 |= (v361 & 0x7F) << v356;
                if ((v361 & 0x80) == 0)
                {
                  goto LABEL_631;
                }

                v356 += 7;
                --v358;
                ++v359;
                ++v360;
                v49 = v357++ > 8;
                if (v49)
                {
                  goto LABEL_629;
                }
              }

              goto LABEL_630;
          }
        }
      }

      else if (v22 > 3)
      {
        switch(v22)
        {
          case 4:
            *(this + 224) |= 4u;
            v139 = *(a2 + 1);
            v138 = *(a2 + 2);
            v140 = *a2;
            if (v139 > 0xFFFFFFFFFFFFFFF5 || v139 + 10 > v138)
            {
              v273 = 0;
              v274 = 0;
              v143 = 0;
              v16 = v138 >= v139;
              v275 = v138 - v139;
              if (!v16)
              {
                v275 = 0;
              }

              v276 = (v140 + v139);
              v277 = v139 + 1;
              while (1)
              {
                if (!v275)
                {
                  LODWORD(v143) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_490;
                }

                v278 = *v276;
                *(a2 + 1) = v277;
                v143 |= (v278 & 0x7F) << v273;
                if ((v278 & 0x80) == 0)
                {
                  break;
                }

                v273 += 7;
                --v275;
                ++v276;
                ++v277;
                v49 = v274++ > 8;
                if (v49)
                {
LABEL_398:
                  LODWORD(v143) = 0;
                  goto LABEL_490;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v143) = 0;
              }
            }

            else
            {
              v141 = 0;
              v142 = 0;
              v143 = 0;
              v144 = (v140 + v139);
              v145 = v139 + 1;
              while (1)
              {
                *(a2 + 1) = v145;
                v146 = *v144++;
                v143 |= (v146 & 0x7F) << v141;
                if ((v146 & 0x80) == 0)
                {
                  break;
                }

                v141 += 7;
                ++v145;
                v49 = v142++ > 8;
                if (v49)
                {
                  goto LABEL_398;
                }
              }
            }

LABEL_490:
            *(this + 54) = v143;
            goto LABEL_634;
          case 5:
            if (v21 == 2)
            {
              if (PB::Reader::placeMark())
              {
                goto LABEL_640;
              }

              if (*(a2 + 1) < *(a2 + 2) && (*(a2 + 24) & 1) == 0)
              {
                v32 = *(this + 2);
                do
                {
                  v208 = *(this + 3);
                  if (v32 >= v208)
                  {
                    v209 = *(this + 1);
                    v210 = v32 - v209;
                    v211 = (v32 - v209) >> 2;
                    v212 = v211 + 1;
                    if ((v211 + 1) >> 62)
                    {
                      goto LABEL_641;
                    }

                    v213 = v208 - v209;
                    if (v213 >> 1 > v212)
                    {
                      v212 = v213 >> 1;
                    }

                    if (v213 >= 0x7FFFFFFFFFFFFFFCLL)
                    {
                      v214 = 0x3FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v214 = v212;
                    }

                    if (v214)
                    {
                      sub_10002290C(this + 8, v214);
                    }

                    v215 = (v32 - v209) >> 2;
                    v216 = (4 * v211);
                    v217 = (4 * v211 - 4 * v215);
                    *v216 = 0;
                    v32 = (v216 + 1);
                    memcpy(v217, v209, v210);
                    v218 = *(this + 1);
                    *(this + 1) = v217;
                    *(this + 2) = v32;
                    *(this + 3) = 0;
                    if (v218)
                    {
                      operator delete(v218);
                    }
                  }

                  else
                  {
                    *v32 = 0;
                    v32 += 4;
                  }

                  *(this + 2) = v32;
                  v220 = *(a2 + 1);
                  v219 = *(a2 + 2);
                  v221 = *a2;
                  v222 = 0;
                  v223 = 0;
                  if (v220 > 0xFFFFFFFFFFFFFFF5 || v220 + 10 > v219)
                  {
                    v230 = 0;
                    v225 = v219 - v220;
                    if (v219 < v220)
                    {
                      v225 = 0;
                    }

                    v226 = (v221 + v220);
                    v227 = v220 + 1;
                    while (1)
                    {
                      if (!v225)
                      {
                        goto LABEL_373;
                      }

                      v228 = v227;
                      v229 = *v226;
                      *(a2 + 1) = v228;
                      v230 |= (v229 & 0x7F) << v222;
                      if ((v229 & 0x80) == 0)
                      {
                        break;
                      }

                      v222 += 7;
                      --v225;
                      ++v226;
                      v227 = v228 + 1;
                      v49 = v223++ > 8;
                      if (v49)
                      {
LABEL_328:
                        LODWORD(v230) = 0;
                        goto LABEL_331;
                      }
                    }

                    if (*(a2 + 24))
                    {
                      LODWORD(v230) = 0;
                    }
                  }

                  else
                  {
                    v230 = 0;
                    v231 = (v221 + v220);
                    v232 = v220 + 1;
                    while (1)
                    {
                      v228 = v232;
                      *(a2 + 1) = v232;
                      v233 = *v231++;
                      v230 |= (v233 & 0x7F) << v222;
                      if ((v233 & 0x80) == 0)
                      {
                        break;
                      }

                      v222 += 7;
                      ++v232;
                      v49 = v223++ > 8;
                      if (v49)
                      {
                        goto LABEL_328;
                      }
                    }
                  }

LABEL_331:
                  *(v32 - 1) = v230;
                }

                while (v228 < v219 && (*(a2 + 24) & 1) == 0);
              }

              goto LABEL_374;
            }

            v292 = *(this + 2);
            v291 = *(this + 3);
            if (v292 >= v291)
            {
              v331 = *(this + 1);
              v332 = v292 - v331;
              v333 = (v292 - v331) >> 2;
              v334 = v333 + 1;
              if ((v333 + 1) >> 62)
              {
                goto LABEL_641;
              }

              v335 = v291 - v331;
              if (v335 >> 1 > v334)
              {
                v334 = v335 >> 1;
              }

              if (v335 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v336 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v336 = v334;
              }

              if (v336)
              {
                sub_10002290C(this + 8, v336);
              }

              v452 = (v292 - v331) >> 2;
              v453 = (4 * v333);
              v454 = (4 * v333 - 4 * v452);
              *v453 = 0;
              v268 = v453 + 1;
              memcpy(v454, v331, v332);
              v455 = *(this + 1);
              *(this + 1) = v454;
              *(this + 2) = v268;
              *(this + 3) = 0;
              if (v455)
              {
                operator delete(v455);
              }
            }

            else
            {
              *v292 = 0;
              v268 = v292 + 4;
            }

            *(this + 2) = v268;
            v457 = *(a2 + 1);
            v456 = *(a2 + 2);
            v458 = *a2;
            if (v457 <= 0xFFFFFFFFFFFFFFF5 && v457 + 10 <= v456)
            {
              v459 = 0;
              v460 = 0;
              v352 = 0;
              v461 = (v458 + v457);
              v462 = v457 + 1;
              while (1)
              {
                *(a2 + 1) = v462;
                v463 = *v461++;
                v352 |= (v463 & 0x7F) << v459;
                if ((v463 & 0x80) == 0)
                {
                  goto LABEL_633;
                }

                v459 += 7;
                ++v462;
                v49 = v460++ > 8;
                if (v49)
                {
                  goto LABEL_629;
                }
              }
            }

            v464 = 0;
            v465 = 0;
            v352 = 0;
            v16 = v456 >= v457;
            v466 = v456 - v457;
            if (!v16)
            {
              v466 = 0;
            }

            v467 = (v458 + v457);
            v468 = v457 + 1;
            while (v466)
            {
              v469 = *v467;
              *(a2 + 1) = v468;
              v352 |= (v469 & 0x7F) << v464;
              if ((v469 & 0x80) == 0)
              {
                goto LABEL_631;
              }

              v464 += 7;
              --v466;
              ++v467;
              ++v468;
              v49 = v465++ > 8;
              if (v49)
              {
                goto LABEL_629;
              }
            }

LABEL_630:
            LODWORD(v352) = 0;
            *(a2 + 24) = 1;
LABEL_633:
            *(v268 - 1) = v352;
            goto LABEL_634;
          case 6:
            if (v21 == 2)
            {
              if (PB::Reader::placeMark())
              {
                goto LABEL_640;
              }

              if (*(a2 + 1) < *(a2 + 2) && (*(a2 + 24) & 1) == 0)
              {
                v32 = *(this + 5);
                do
                {
                  v59 = *(this + 6);
                  if (v32 >= v59)
                  {
                    v60 = *(this + 4);
                    v61 = v32 - v60;
                    v62 = (v32 - v60) >> 2;
                    v63 = v62 + 1;
                    if ((v62 + 1) >> 62)
                    {
                      goto LABEL_641;
                    }

                    v64 = v59 - v60;
                    if (v64 >> 1 > v63)
                    {
                      v63 = v64 >> 1;
                    }

                    if (v64 >= 0x7FFFFFFFFFFFFFFCLL)
                    {
                      v65 = 0x3FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v65 = v63;
                    }

                    if (v65)
                    {
                      sub_10002290C(this + 32, v65);
                    }

                    v66 = (v32 - v60) >> 2;
                    v67 = (4 * v62);
                    v68 = (4 * v62 - 4 * v66);
                    *v67 = 0;
                    v32 = (v67 + 1);
                    memcpy(v68, v60, v61);
                    v69 = *(this + 4);
                    *(this + 4) = v68;
                    *(this + 5) = v32;
                    *(this + 6) = 0;
                    if (v69)
                    {
                      operator delete(v69);
                    }
                  }

                  else
                  {
                    *v32 = 0;
                    v32 += 4;
                  }

                  *(this + 5) = v32;
                  v71 = *(a2 + 1);
                  v70 = *(a2 + 2);
                  v72 = *a2;
                  v73 = 0;
                  v74 = 0;
                  if (v71 > 0xFFFFFFFFFFFFFFF5 || v71 + 10 > v70)
                  {
                    v81 = 0;
                    v76 = v70 - v71;
                    if (v70 < v71)
                    {
                      v76 = 0;
                    }

                    v77 = (v72 + v71);
                    v78 = v71 + 1;
                    while (1)
                    {
                      if (!v76)
                      {
                        goto LABEL_373;
                      }

                      v79 = v78;
                      v80 = *v77;
                      *(a2 + 1) = v79;
                      v81 |= (v80 & 0x7F) << v73;
                      if ((v80 & 0x80) == 0)
                      {
                        break;
                      }

                      v73 += 7;
                      --v76;
                      ++v77;
                      v78 = v79 + 1;
                      v49 = v74++ > 8;
                      if (v49)
                      {
LABEL_113:
                        LODWORD(v81) = 0;
                        goto LABEL_116;
                      }
                    }

                    if (*(a2 + 24))
                    {
                      LODWORD(v81) = 0;
                    }
                  }

                  else
                  {
                    v81 = 0;
                    v82 = (v72 + v71);
                    v83 = v71 + 1;
                    while (1)
                    {
                      v79 = v83;
                      *(a2 + 1) = v83;
                      v84 = *v82++;
                      v81 |= (v84 & 0x7F) << v73;
                      if ((v84 & 0x80) == 0)
                      {
                        break;
                      }

                      v73 += 7;
                      ++v83;
                      v49 = v74++ > 8;
                      if (v49)
                      {
                        goto LABEL_113;
                      }
                    }
                  }

LABEL_116:
                  *(v32 - 1) = v81;
                }

                while (v79 < v70 && (*(a2 + 24) & 1) == 0);
              }

              goto LABEL_374;
            }

            v270 = *(this + 5);
            v269 = *(this + 6);
            if (v270 >= v269)
            {
              v301 = *(this + 4);
              v302 = v270 - v301;
              v303 = (v270 - v301) >> 2;
              v304 = v303 + 1;
              if ((v303 + 1) >> 62)
              {
                goto LABEL_641;
              }

              v305 = v269 - v301;
              if (v305 >> 1 > v304)
              {
                v304 = v305 >> 1;
              }

              if (v305 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v306 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v306 = v304;
              }

              if (v306)
              {
                sub_10002290C(this + 32, v306);
              }

              v362 = (v270 - v301) >> 2;
              v363 = (4 * v303);
              v364 = (4 * v303 - 4 * v362);
              *v363 = 0;
              v268 = v363 + 1;
              memcpy(v364, v301, v302);
              v365 = *(this + 4);
              *(this + 4) = v364;
              *(this + 5) = v268;
              *(this + 6) = 0;
              if (v365)
              {
                operator delete(v365);
              }
            }

            else
            {
              *v270 = 0;
              v268 = v270 + 4;
            }

            *(this + 5) = v268;
            v367 = *(a2 + 1);
            v366 = *(a2 + 2);
            v368 = *a2;
            if (v367 > 0xFFFFFFFFFFFFFFF5 || v367 + 10 > v366)
            {
              v374 = 0;
              v375 = 0;
              v352 = 0;
              v16 = v366 >= v367;
              v376 = v366 - v367;
              if (!v16)
              {
                v376 = 0;
              }

              v377 = (v368 + v367);
              v378 = v367 + 1;
              while (v376)
              {
                v379 = *v377;
                *(a2 + 1) = v378;
                v352 |= (v379 & 0x7F) << v374;
                if ((v379 & 0x80) == 0)
                {
                  goto LABEL_631;
                }

                v374 += 7;
                --v376;
                ++v377;
                ++v378;
                v49 = v375++ > 8;
                if (v49)
                {
                  goto LABEL_629;
                }
              }

              goto LABEL_630;
            }

            v369 = 0;
            v370 = 0;
            v352 = 0;
            v371 = (v368 + v367);
            v372 = v367 + 1;
            while (1)
            {
              *(a2 + 1) = v372;
              v373 = *v371++;
              v352 |= (v373 & 0x7F) << v369;
              if ((v373 & 0x80) == 0)
              {
                goto LABEL_633;
              }

              v369 += 7;
              ++v372;
              v49 = v370++ > 8;
              if (v49)
              {
                goto LABEL_629;
              }
            }
        }
      }

      else
      {
        switch(v22)
        {
          case 1:
            *(this + 224) |= 2u;
            v111 = *(a2 + 1);
            if (v111 <= 0xFFFFFFFFFFFFFFF7 && v111 + 8 <= *(a2 + 2))
            {
              *(this + 26) = *(*a2 + v111);
              *(a2 + 1) += 8;
            }

            else
            {
              *(a2 + 24) = 1;
            }

            goto LABEL_634;
          case 2:
            *(this + 224) |= 1u;
            v174 = *(a2 + 1);
            v173 = *(a2 + 2);
            v175 = *a2;
            if (v174 > 0xFFFFFFFFFFFFFFF5 || v174 + 10 > v173)
            {
              v279 = 0;
              v280 = 0;
              v178 = 0;
              v16 = v173 >= v174;
              v281 = v173 - v174;
              if (!v16)
              {
                v281 = 0;
              }

              v282 = (v175 + v174);
              v283 = v174 + 1;
              while (1)
              {
                if (!v281)
                {
                  v178 = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_493;
                }

                v284 = *v282;
                *(a2 + 1) = v283;
                v178 |= (v284 & 0x7F) << v279;
                if ((v284 & 0x80) == 0)
                {
                  break;
                }

                v279 += 7;
                --v281;
                ++v282;
                ++v283;
                v49 = v280++ > 8;
                if (v49)
                {
LABEL_406:
                  v178 = 0;
                  goto LABEL_493;
                }
              }

              if (*(a2 + 24))
              {
                v178 = 0;
              }
            }

            else
            {
              v176 = 0;
              v177 = 0;
              v178 = 0;
              v179 = (v175 + v174);
              v180 = v174 + 1;
              while (1)
              {
                *(a2 + 1) = v180;
                v181 = *v179++;
                v178 |= (v181 & 0x7F) << v176;
                if ((v181 & 0x80) == 0)
                {
                  break;
                }

                v176 += 7;
                ++v180;
                v49 = v177++ > 8;
                if (v49)
                {
                  goto LABEL_406;
                }
              }
            }

LABEL_493:
            *(this + 25) = v178;
            goto LABEL_634;
          case 3:
            *(this + 224) |= 8u;
            v24 = *(a2 + 1);
            v23 = *(a2 + 2);
            v25 = *a2;
            if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
            {
              v260 = 0;
              v261 = 0;
              v28 = 0;
              v16 = v23 >= v24;
              v262 = v23 - v24;
              if (!v16)
              {
                v262 = 0;
              }

              v263 = (v25 + v24);
              v264 = v24 + 1;
              while (1)
              {
                if (!v262)
                {
                  LODWORD(v28) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_487;
                }

                v265 = *v263;
                *(a2 + 1) = v264;
                v28 |= (v265 & 0x7F) << v260;
                if ((v265 & 0x80) == 0)
                {
                  break;
                }

                v260 += 7;
                --v262;
                ++v263;
                ++v264;
                v49 = v261++ > 8;
                if (v49)
                {
LABEL_384:
                  LODWORD(v28) = 0;
                  goto LABEL_487;
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
                v49 = v27++ > 8;
                if (v49)
                {
                  goto LABEL_384;
                }
              }
            }

LABEL_487:
            *(this + 55) = v28;
            goto LABEL_634;
        }
      }

      if ((PB::Reader::skip(a2, v22, v21, 0) & 1) == 0)
      {
LABEL_640:
        v488 = 0;
        return v488 & 1;
      }

LABEL_634:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

  v488 = v4 ^ 1;
  return v488 & 1;
}