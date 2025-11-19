uint64_t CMMsl::WorkoutRecorderPressure::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2, 1u);
  }

  return this;
}

CMMsl::Pressure *CMMsl::WorkoutRecorderPressure::hash_value(CMMsl::WorkoutRecorderPressure *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::Pressure::hash_value(result);
  }

  return result;
}

uint64_t CMMsl::WorkoutRecorderPressure::makeSuper(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

void CMMsl::WorkoutRecorderRotationRate::~WorkoutRecorderRotationRate(CMMsl::WorkoutRecorderRotationRate *this)
{
  v2 = *(this + 1);
  *this = off_1004232B0;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::WorkoutRecorderRotationRate::~WorkoutRecorderRotationRate(this);

  operator delete();
}

void *CMMsl::WorkoutRecorderRotationRate::WorkoutRecorderRotationRate(void *this, const CMMsl::WorkoutRecorderRotationRate *a2)
{
  *this = off_1004232B0;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const CMMsl::WorkoutRecorderRotationRate *CMMsl::WorkoutRecorderRotationRate::operator=(const CMMsl::WorkoutRecorderRotationRate *a1, const CMMsl::WorkoutRecorderRotationRate *a2)
{
  if (a1 != a2)
  {
    CMMsl::WorkoutRecorderRotationRate::WorkoutRecorderRotationRate(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    CMMsl::WorkoutRecorderRotationRate::~WorkoutRecorderRotationRate(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::WorkoutRecorderRotationRate *a2, CMMsl::WorkoutRecorderRotationRate *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::WorkoutRecorderRotationRate::WorkoutRecorderRotationRate(void *a1, uint64_t a2)
{
  *a1 = off_1004232B0;
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
  *a1 = off_1004232B0;
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

uint64_t CMMsl::WorkoutRecorderRotationRate::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = off_1004232B0;
    v6[1] = v4;
    CMMsl::WorkoutRecorderRotationRate::~WorkoutRecorderRotationRate(v6);
  }

  return a1;
}

uint64_t CMMsl::WorkoutRecorderRotationRate::formatText(CMMsl::WorkoutRecorderRotationRate *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::WorkoutRecorderRotationRate::readFrom(CMMsl::WorkoutRecorderRotationRate *this, PB::Reader *a2)
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

uint64_t CMMsl::WorkoutRecorderRotationRate::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2, 1u);
  }

  return this;
}

CMMsl::RotationRate *CMMsl::WorkoutRecorderRotationRate::hash_value(CMMsl::WorkoutRecorderRotationRate *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::RotationRate::hash_value(result);
  }

  return result;
}

uint64_t CMMsl::WorkoutRecorderRotationRate::makeSuper(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

void CMMsl::WorkoutRecorderWatchOnWristStatus::~WorkoutRecorderWatchOnWristStatus(CMMsl::WorkoutRecorderWatchOnWristStatus *this)
{
  v2 = *(this + 1);
  *this = off_1004232E8;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::WorkoutRecorderWatchOnWristStatus::~WorkoutRecorderWatchOnWristStatus(this);

  operator delete();
}

void *CMMsl::WorkoutRecorderWatchOnWristStatus::WorkoutRecorderWatchOnWristStatus(void *this, const CMMsl::WorkoutRecorderWatchOnWristStatus *a2)
{
  *this = off_1004232E8;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const CMMsl::WorkoutRecorderWatchOnWristStatus *CMMsl::WorkoutRecorderWatchOnWristStatus::operator=(const CMMsl::WorkoutRecorderWatchOnWristStatus *a1, const CMMsl::WorkoutRecorderWatchOnWristStatus *a2)
{
  if (a1 != a2)
  {
    CMMsl::WorkoutRecorderWatchOnWristStatus::WorkoutRecorderWatchOnWristStatus(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    CMMsl::WorkoutRecorderWatchOnWristStatus::~WorkoutRecorderWatchOnWristStatus(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::WorkoutRecorderWatchOnWristStatus *a2, CMMsl::WorkoutRecorderWatchOnWristStatus *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::WorkoutRecorderWatchOnWristStatus::WorkoutRecorderWatchOnWristStatus(void *a1, uint64_t a2)
{
  *a1 = off_1004232E8;
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
  *a1 = off_1004232E8;
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

uint64_t CMMsl::WorkoutRecorderWatchOnWristStatus::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = off_1004232E8;
    v6[1] = v4;
    CMMsl::WorkoutRecorderWatchOnWristStatus::~WorkoutRecorderWatchOnWristStatus(v6);
  }

  return a1;
}

uint64_t CMMsl::WorkoutRecorderWatchOnWristStatus::formatText(CMMsl::WorkoutRecorderWatchOnWristStatus *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::WorkoutRecorderWatchOnWristStatus::readFrom(CMMsl::WorkoutRecorderWatchOnWristStatus *this, PB::Reader *a2)
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

uint64_t CMMsl::WorkoutRecorderWatchOnWristStatus::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2, 1u);
  }

  return this;
}

CMMsl::WatchOnWristState *CMMsl::WorkoutRecorderWatchOnWristStatus::hash_value(CMMsl::WorkoutRecorderWatchOnWristStatus *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::WatchOnWristState::hash_value(result);
  }

  return result;
}

uint64_t CMMsl::WorkoutRecorderWatchOnWristStatus::makeSuper(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

void CMMsl::WorkoutRecorderWatchOrientationSettings::~WorkoutRecorderWatchOrientationSettings(CMMsl::WorkoutRecorderWatchOrientationSettings *this)
{
  v2 = *(this + 1);
  *this = off_100423320;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::WorkoutRecorderWatchOrientationSettings::~WorkoutRecorderWatchOrientationSettings(this);

  operator delete();
}

void *CMMsl::WorkoutRecorderWatchOrientationSettings::WorkoutRecorderWatchOrientationSettings(void *this, const CMMsl::WorkoutRecorderWatchOrientationSettings *a2)
{
  *this = off_100423320;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const CMMsl::WorkoutRecorderWatchOrientationSettings *CMMsl::WorkoutRecorderWatchOrientationSettings::operator=(const CMMsl::WorkoutRecorderWatchOrientationSettings *a1, const CMMsl::WorkoutRecorderWatchOrientationSettings *a2)
{
  if (a1 != a2)
  {
    CMMsl::WorkoutRecorderWatchOrientationSettings::WorkoutRecorderWatchOrientationSettings(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    CMMsl::WorkoutRecorderWatchOrientationSettings::~WorkoutRecorderWatchOrientationSettings(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::WorkoutRecorderWatchOrientationSettings *a2, CMMsl::WorkoutRecorderWatchOrientationSettings *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::WorkoutRecorderWatchOrientationSettings::WorkoutRecorderWatchOrientationSettings(void *a1, uint64_t a2)
{
  *a1 = off_100423320;
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
  *a1 = off_100423320;
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

uint64_t CMMsl::WorkoutRecorderWatchOrientationSettings::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = off_100423320;
    v6[1] = v4;
    CMMsl::WorkoutRecorderWatchOrientationSettings::~WorkoutRecorderWatchOrientationSettings(v6);
  }

  return a1;
}

uint64_t CMMsl::WorkoutRecorderWatchOrientationSettings::formatText(CMMsl::WorkoutRecorderWatchOrientationSettings *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::WorkoutRecorderWatchOrientationSettings::readFrom(CMMsl::WorkoutRecorderWatchOrientationSettings *this, PB::Reader *a2)
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

uint64_t CMMsl::WorkoutRecorderWatchOrientationSettings::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2, 1u);
  }

  return this;
}

uint64_t CMMsl::WorkoutRecorderWatchOrientationSettings::hash_value(CMMsl::WorkoutRecorderWatchOrientationSettings *this)
{
  v1 = *(this + 1);
  if (!v1)
  {
    return 0;
  }

  v2 = vbic_s8(v1[1], vceqz_s32(vand_s8(vdup_n_s32(v1[2].u8[0]), 0x200000001)));
  return (v2.i32[0] ^ v2.i32[1]);
}

uint64_t CMMsl::WorkoutRecorderWatchOrientationSettings::makeSuper(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

void CMMsl::WorkoutRecorderWifiScanResults::~WorkoutRecorderWifiScanResults(CMMsl::WorkoutRecorderWifiScanResults *this)
{
  v2 = *(this + 1);
  *this = off_100423358;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::WorkoutRecorderWifiScanResults::~WorkoutRecorderWifiScanResults(this);

  operator delete();
}

void *CMMsl::WorkoutRecorderWifiScanResults::WorkoutRecorderWifiScanResults(void *this, const CMMsl::WorkoutRecorderWifiScanResults *a2)
{
  *this = off_100423358;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const CMMsl::WorkoutRecorderWifiScanResults *CMMsl::WorkoutRecorderWifiScanResults::operator=(const CMMsl::WorkoutRecorderWifiScanResults *a1, const CMMsl::WorkoutRecorderWifiScanResults *a2)
{
  if (a1 != a2)
  {
    CMMsl::WorkoutRecorderWifiScanResults::WorkoutRecorderWifiScanResults(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    CMMsl::WorkoutRecorderWifiScanResults::~WorkoutRecorderWifiScanResults(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::WorkoutRecorderWifiScanResults *a2, CMMsl::WorkoutRecorderWifiScanResults *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::WorkoutRecorderWifiScanResults::WorkoutRecorderWifiScanResults(void *a1, uint64_t a2)
{
  *a1 = off_100423358;
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
  *a1 = off_100423358;
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

uint64_t CMMsl::WorkoutRecorderWifiScanResults::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = off_100423358;
    v6[1] = v4;
    CMMsl::WorkoutRecorderWifiScanResults::~WorkoutRecorderWifiScanResults(v6);
  }

  return a1;
}

uint64_t CMMsl::WorkoutRecorderWifiScanResults::formatText(CMMsl::WorkoutRecorderWifiScanResults *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::WorkoutRecorderWifiScanResults::readFrom(CMMsl::WorkoutRecorderWifiScanResults *this, PB::Reader *a2)
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

uint64_t CMMsl::WorkoutRecorderWifiScanResults::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2, 1u);
  }

  return this;
}

uint64_t CMMsl::WorkoutRecorderWifiScanResults::makeSuper(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

void CMMsl::WorkoutRecorderWorkoutEvent::~WorkoutRecorderWorkoutEvent(CMMsl::WorkoutRecorderWorkoutEvent *this)
{
  v2 = *(this + 1);
  *this = off_100423390;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::WorkoutRecorderWorkoutEvent::~WorkoutRecorderWorkoutEvent(this);

  operator delete();
}

void *CMMsl::WorkoutRecorderWorkoutEvent::WorkoutRecorderWorkoutEvent(void *this, const CMMsl::WorkoutRecorderWorkoutEvent *a2)
{
  *this = off_100423390;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const CMMsl::WorkoutRecorderWorkoutEvent *CMMsl::WorkoutRecorderWorkoutEvent::operator=(const CMMsl::WorkoutRecorderWorkoutEvent *a1, const CMMsl::WorkoutRecorderWorkoutEvent *a2)
{
  if (a1 != a2)
  {
    CMMsl::WorkoutRecorderWorkoutEvent::WorkoutRecorderWorkoutEvent(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    CMMsl::WorkoutRecorderWorkoutEvent::~WorkoutRecorderWorkoutEvent(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::WorkoutRecorderWorkoutEvent *a2, CMMsl::WorkoutRecorderWorkoutEvent *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::WorkoutRecorderWorkoutEvent::WorkoutRecorderWorkoutEvent(void *a1, uint64_t a2)
{
  *a1 = off_100423390;
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
  *a1 = off_100423390;
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

uint64_t CMMsl::WorkoutRecorderWorkoutEvent::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = off_100423390;
    v6[1] = v4;
    CMMsl::WorkoutRecorderWorkoutEvent::~WorkoutRecorderWorkoutEvent(v6);
  }

  return a1;
}

uint64_t CMMsl::WorkoutRecorderWorkoutEvent::formatText(CMMsl::WorkoutRecorderWorkoutEvent *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::WorkoutRecorderWorkoutEvent::readFrom(CMMsl::WorkoutRecorderWorkoutEvent *this, PB::Reader *a2)
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

uint64_t CMMsl::WorkoutRecorderWorkoutEvent::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2, 1u);
  }

  return this;
}

CMMsl::WorkoutEvent *CMMsl::WorkoutRecorderWorkoutEvent::hash_value(CMMsl::WorkoutRecorderWorkoutEvent *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::WorkoutEvent::hash_value(result);
  }

  return result;
}

uint64_t CMMsl::WorkoutRecorderWorkoutEvent::makeSuper(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

void CMMsl::WorkoutRecorderWorkoutSessionPriors::~WorkoutRecorderWorkoutSessionPriors(CMMsl::WorkoutRecorderWorkoutSessionPriors *this)
{
  v2 = *(this + 1);
  *this = off_1004233C8;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::WorkoutRecorderWorkoutSessionPriors::~WorkoutRecorderWorkoutSessionPriors(this);

  operator delete();
}

void *CMMsl::WorkoutRecorderWorkoutSessionPriors::WorkoutRecorderWorkoutSessionPriors(void *this, const CMMsl::WorkoutRecorderWorkoutSessionPriors *a2)
{
  *this = off_1004233C8;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const CMMsl::WorkoutRecorderWorkoutSessionPriors *CMMsl::WorkoutRecorderWorkoutSessionPriors::operator=(const CMMsl::WorkoutRecorderWorkoutSessionPriors *a1, const CMMsl::WorkoutRecorderWorkoutSessionPriors *a2)
{
  if (a1 != a2)
  {
    CMMsl::WorkoutRecorderWorkoutSessionPriors::WorkoutRecorderWorkoutSessionPriors(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    CMMsl::WorkoutRecorderWorkoutSessionPriors::~WorkoutRecorderWorkoutSessionPriors(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::WorkoutRecorderWorkoutSessionPriors *a2, CMMsl::WorkoutRecorderWorkoutSessionPriors *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::WorkoutRecorderWorkoutSessionPriors::WorkoutRecorderWorkoutSessionPriors(void *a1, uint64_t a2)
{
  *a1 = off_1004233C8;
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
  *a1 = off_1004233C8;
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

uint64_t CMMsl::WorkoutRecorderWorkoutSessionPriors::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = off_1004233C8;
    v6[1] = v4;
    CMMsl::WorkoutRecorderWorkoutSessionPriors::~WorkoutRecorderWorkoutSessionPriors(v6);
  }

  return a1;
}

uint64_t CMMsl::WorkoutRecorderWorkoutSessionPriors::formatText(CMMsl::WorkoutRecorderWorkoutSessionPriors *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::WorkoutRecorderWorkoutSessionPriors::readFrom(CMMsl::WorkoutRecorderWorkoutSessionPriors *this, PB::Reader *a2)
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

uint64_t CMMsl::WorkoutRecorderWorkoutSessionPriors::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2, 1u);
  }

  return this;
}

uint64_t CMMsl::WorkoutRecorderWorkoutSessionPriors::makeSuper(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

void CMMsl::WorkoutSessionPriors::~WorkoutSessionPriors(CMMsl::WorkoutSessionPriors *this)
{
  *this = off_100423400;
  v2 = (this + 8);
  sub_1002A2E24(&v2);
  PB::Base::~Base(this);
}

{
  *this = off_100423400;
  v2 = (this + 8);
  sub_1002A2E24(&v2);
  PB::Base::~Base(this);
}

{
  *this = off_100423400;
  v2 = (this + 8);
  sub_1002A2E24(&v2);
  PB::Base::~Base(this);
  operator delete();
}

void *CMMsl::WorkoutSessionPriors::WorkoutSessionPriors(void *this, const CMMsl::WorkoutSessionPriors *a2)
{
  this[1] = 0;
  *this = off_100423400;
  this[2] = 0;
  this[3] = 0;
  v2 = *(a2 + 1);
  if (v2 != *(a2 + 2))
  {
    v3 = *v2;
    sub_10029D448();
  }

  return this;
}

uint64_t CMMsl::WorkoutSessionPriors::operator=(uint64_t a1, const CMMsl::WorkoutSessionPriors *a2)
{
  if (a1 != a2)
  {
    CMMsl::WorkoutSessionPriors::WorkoutSessionPriors(&v6, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v4;
    v6 = off_100423400;
    v9 = &v7;
    sub_1002A2E24(&v9);
    PB::Base::~Base(&v6);
  }

  return a1;
}

void *CMMsl::swap(void *this, CMMsl::WorkoutSessionPriors *a2, CMMsl::WorkoutSessionPriors *a3)
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

uint64_t CMMsl::WorkoutSessionPriors::WorkoutSessionPriors(uint64_t a1, uint64_t a2)
{
  *a1 = off_100423400;
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
  *a1 = off_100423400;
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

uint64_t CMMsl::WorkoutSessionPriors::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v9 = off_100423400;
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
    v9 = off_100423400;
    sub_1002A2E24(&v12);
    PB::Base::~Base(&v9);
  }

  return a1;
}

uint64_t CMMsl::WorkoutSessionPriors::formatText(CMMsl::WorkoutSessionPriors *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, a2, "workoutPriors");
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::WorkoutSessionPriors::readFrom(CMMsl::WorkoutSessionPriors *this, PB::Reader *a2)
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

      if ((v9 >> 3) == 2)
      {
        sub_10029DA70();
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

uint64_t CMMsl::WorkoutSessionPriors::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  for (i = *(this + 16); v2 != i; this = PB::Writer::writeSubmessage(a2, v5, 2u))
  {
    v5 = *v2++;
  }

  return this;
}

BOOL sub_10029DC24(uint64_t *a1, uint64_t a2)
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
    result = CMMsl::WorkoutPriorInformation::operator==(*(v5 - 8), v6);
    v8 = !result || v5 == v3;
    v5 += 8;
  }

  while (!v8);
  return result;
}

uint64_t CMMsl::WorkoutSessionPriors::hash_value(CMMsl::WorkoutSessionPriors *this)
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
    v3 ^= CMMsl::WorkoutPriorInformation::hash_value(v4);
  }

  while (v1 != v2);
  return v3;
}

void CMMsl::ZeroVelocityCorrection::~ZeroVelocityCorrection(CMMsl::ZeroVelocityCorrection *this)
{
  v2 = *(this + 1);
  *this = off_100423438;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::ZeroVelocityCorrection::~ZeroVelocityCorrection(this);

  operator delete();
}

void *CMMsl::ZeroVelocityCorrection::ZeroVelocityCorrection(void *this, const CMMsl::ZeroVelocityCorrection *a2)
{
  *this = off_100423438;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const CMMsl::ZeroVelocityCorrection *CMMsl::ZeroVelocityCorrection::operator=(const CMMsl::ZeroVelocityCorrection *a1, const CMMsl::ZeroVelocityCorrection *a2)
{
  if (a1 != a2)
  {
    CMMsl::ZeroVelocityCorrection::ZeroVelocityCorrection(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    CMMsl::ZeroVelocityCorrection::~ZeroVelocityCorrection(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::ZeroVelocityCorrection *a2, CMMsl::ZeroVelocityCorrection *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::ZeroVelocityCorrection::ZeroVelocityCorrection(void *a1, uint64_t a2)
{
  *a1 = off_100423438;
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
  *a1 = off_100423438;
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

uint64_t CMMsl::ZeroVelocityCorrection::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = off_100423438;
    v6[1] = v4;
    CMMsl::ZeroVelocityCorrection::~ZeroVelocityCorrection(v6);
  }

  return a1;
}

uint64_t CMMsl::ZeroVelocityCorrection::formatText(CMMsl::ZeroVelocityCorrection *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "correction");
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::ZeroVelocityCorrection::readFrom(CMMsl::ZeroVelocityCorrection *this, PB::Reader *a2)
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

uint64_t CMMsl::ZeroVelocityCorrection::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2, 1u);
  }

  return this;
}

CMMsl::DeviceMotionCorrection *CMMsl::ZeroVelocityCorrection::hash_value(CMMsl::ZeroVelocityCorrection *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::DeviceMotionCorrection::hash_value(result);
  }

  return result;
}

uint64_t CMMsl::ZeroVelocityCorrection::makeCorrection(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

CMMsl::Writer *CMMsl::Writer::Writer(CMMsl::Writer *this)
{
  *this = 0;
  v2 = dispatch_queue_create("CMMsl.Writer", 0);
  *(this + 1) = v2;
  v3 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v2);
  *(this + 2) = v3;
  *(this + 3) = 0;
  *(this + 4) = 300;
  *(this + 10) = -1;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10029E530;
  handler[3] = &unk_100423460;
  handler[4] = this;
  dispatch_source_set_event_handler(v3, handler);
  dispatch_source_set_timer(*(this + 2), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_resume(*(this + 2));
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  deflateInit_((this + 80), -1, "1.2.12", 112);
  return this;
}

void CMMsl::Writer::closeSensRecord(CMMsl::Writer *this)
{
  v1 = this + 56;
  if (*(this + 7))
  {
    while (1)
    {
      v3 = deflate((this + 80), 4);
      if (v3)
      {
        break;
      }

      CMMsl::Writer::growZlibStream(this);
    }

    if (v3 == 1)
    {
      v4 = *(this + 15);
      v5 = v4 + 28;
      v6 = (v4 + 35) & 0xFFFFFFFFFFFFFFF8;
      *(*(this + 7) + 12) = v4 + 12;
      if (v4 + 28 < v6)
      {
        do
        {
          *(*v1 + v5++) = 0;
        }

        while (v6 != v5);
      }

      v7 = *(this + 7);
      if (*this)
      {
        (*(**this + 24))(*this, v7, v6);
        free(*v1);
      }

      else
      {
        v8 = *(this + 1);
        destructor[0] = _NSConcreteStackBlock;
        destructor[1] = 3221225472;
        destructor[2] = sub_10029F090;
        destructor[3] = &unk_100423460;
        destructor[4] = v7;
        v9 = dispatch_data_create(v7, v6, v8, destructor);
        dispatch_io_write(*(this + 3), *(this + 6), v9, *(this + 1), &stru_100423530);
      }

      *(this + 6) += v6;
      *(v1 + 1) = 0;
      *(v1 + 2) = 0;
      *v1 = 0;
      deflateReset((this + 80));
      dispatch_source_set_timer(*(this + 2), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, (1000000000 * *(this + 4)) >> 1);
    }

    else
    {
      fprintf(__stderrp, "zstream status? Msl %d\n", v3);
    }
  }
}

void CMMsl::Writer::setFlushTimeoutSeconds(CMMsl::Writer *this, uint64_t a2)
{
  v2 = *(this + 1);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10029E76C;
  v3[3] = &unk_100423480;
  v3[4] = this;
  v3[5] = a2;
  dispatch_sync(v2, v3);
}

uint64_t sub_10029E76C(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 40) != -1)
  {
    sub_1002A3200();
  }

  *(v1 + 32) = *(result + 40);
  return result;
}

void CMMsl::Writer::~Writer(CMMsl::Writer *this)
{
  if (!*(this + 3))
  {
    v2 = *(this + 10);
    if ((v2 & 0x80000000) == 0)
    {
      close(v2);
    }
  }

  free(*(this + 7));
  deflateEnd((this + 80));
}

uint64_t CMMsl::Writer::open(uint64_t a1, uint64_t a2, int a3)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v3 = *(a1 + 8);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10029E8B4;
  v6[3] = &unk_1004234C8;
  v6[5] = a1;
  v6[6] = a2;
  v7 = a3;
  v6[4] = &v8;
  dispatch_sync(v3, v6);
  v4 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v4;
}

void sub_10029E8B4(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = open_dprotected_np(*(a1 + 48), 16777730, *(a1 + 56), 0, 438);
  *(v2 + 40) = v3;
  if (v3 < 0)
  {
    v7 = __stderrp;
    v8 = "Cannot open Msl file\n";
    v9 = 21;
  }

  else
  {
    v4 = lseek(v3, 0, 2);
    if (v4 < 0)
    {
      v7 = __stderrp;
      v8 = "Cannot seek to end of Msl file\n";
      v9 = 31;
    }

    else
    {
      v5 = v4;
      if ((lseek(*(v2 + 40), 0, 0) & 0x8000000000000000) == 0)
      {
        if (v5)
        {
          __buf = 0;
          if (pread(*(v2 + 40), &__buf, 8uLL, 0) == 8)
          {
            if (__buf == 0xE020C5BE006C536DLL)
            {
              v6 = (v5 + 7) & 0x7FFFFFFFFFFFFFF8;
LABEL_15:
              *(v2 + 48) = v6;
              v10 = *(v2 + 40);
              v11 = *(v2 + 8);
              cleanup_handler[0] = _NSConcreteStackBlock;
              cleanup_handler[1] = 3221225472;
              cleanup_handler[2] = sub_10029EAF4;
              cleanup_handler[3] = &unk_1004234A0;
              v18 = v10;
              v12 = dispatch_io_create(1uLL, v10, v11, cleanup_handler);
              v13 = *(v2 + 24);
              *(v2 + 24) = v12;

              if (*(v2 + 24))
              {
                *(*(*(a1 + 32) + 8) + 24) = 1;
                return;
              }

              v14 = __stderrp;
              v15 = "Cannot create dispatch_io for Msl file\n";
              v16 = 39;
              goto LABEL_20;
            }

            v14 = __stderrp;
            v15 = "Bad signature in Msl file\n";
            v16 = 26;
          }

          else
          {
            v14 = __stderrp;
            v15 = "Short signature in Msl file\n";
            v16 = 28;
          }

LABEL_20:
          fwrite(v15, v16, 1uLL, v14);
          return;
        }

        v6 = 8;
        pwrite(*(v2 + 40), &unk_10037FF80, 8uLL, 0);
        goto LABEL_15;
      }

      v7 = __stderrp;
      v8 = "Cannot seek to start of Msl file\n";
      v9 = 33;
    }
  }

  fwrite(v8, v9, 1uLL, v7);
}

uint64_t CMMsl::Writer::open(void *a1, uint64_t a2, char a3)
{
  *a1 = a2;
  if ((a3 & 1) == 0)
  {
    (*(*a2 + 24))(a2, &unk_10037FF80, 8);
    a1[6] = 8;
  }

  return 1;
}

void CMMsl::Writer::writeItem(CMMsl::Writer *this, const CMMsl::Item *a2)
{
  v2 = *(this + 1);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10029EBE0;
  v3[3] = &unk_100423480;
  v3[4] = this;
  v3[5] = a2;
  dispatch_sync(v2, v3);
}

void sub_10029EBE0(uint64_t a1)
{
  v2 = *(a1 + 32);
  PB::Writer::Writer(&v5);
  (*(**(a1 + 40) + 24))(*(a1 + 40), &v5);
  v3 = *(v2 + 7);
  if (!v3)
  {
    CMMsl::Writer::openSensRecord(v2);
    v3 = *(v2 + 7);
  }

  ++*(v3 + 16);
  *v4 = v5 - v6;
  CMMsl::Writer::pumpZlib(v2, v4, 4);
  CMMsl::Writer::pumpZlib(v2, v6, v5 - v6);
  if (!*(v2 + 9))
  {
    CMMsl::Writer::closeSensRecord(v2);
  }

  PB::Writer::~Writer(&v5);
}

void sub_10029ECA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PB::Writer::~Writer(va);
  _Unwind_Resume(a1);
}

void CMMsl::Writer::openSensRecord(CMMsl::Writer *this)
{
  *(this + 7) = malloc_type_malloc(0x8000uLL, 0x100004077774924uLL);
  *(this + 4) = xmmword_10037FF40;
  gettimeofday(&v7, 0);
  v2 = *(this + 7);
  *v2 = 0x5979AAB3D5E07959;
  *(v2 + 8) = 1936614771;
  tv_sec = v7.tv_sec;
  *(v2 + 16) = 0;
  *(v2 + 20) = tv_sec;
  *(v2 + 24) = 1000 * v7.tv_usec;
  *(this + 13) = v2 + 28;
  *(this + 28) = *(this + 16) - 28;
  v4 = 1000000000 * *(this + 4);
  v5 = *(this + 2);
  v6 = dispatch_time(0, v4);

  dispatch_source_set_timer(v5, v6, 0xFFFFFFFFFFFFFFFFLL, v4 >> 1);
}

void **CMMsl::Writer::pumpZlib(void **this, const unsigned __int8 *a2, int a3)
{
  this[10] = a2;
  v3 = (this + 10);
  *(this + 22) = a3;
  if (a3)
  {
    v4 = this;
    do
    {
      this = deflate(v3, 0);
      if (!this && !*(v4 + 112))
      {
        this = CMMsl::Writer::growZlibStream(v4);
      }
    }

    while (*(v4 + 88));
  }

  return this;
}

void CMMsl::Writer::flush(CMMsl::Writer *this)
{
  v1 = *(this + 1);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10029EE78;
  block[3] = &unk_100423460;
  block[4] = this;
  dispatch_sync(v1, block);
}

void CMMsl::Writer::sync(CMMsl::Writer *this)
{
  v2 = dispatch_semaphore_create(0);
  v3 = *(this + 1);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10029EF1C;
  v5[3] = &unk_1004234F0;
  v6 = v2;
  v7 = this;
  v4 = v2;
  dispatch_sync(v3, v5);
}

void sub_10029EF1C(uint64_t a1)
{
  v2 = *(a1 + 40);
  CMMsl::Writer::closeSensRecord(v2);
  v3 = *(v2 + 3);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10029EFD0;
  v4[3] = &unk_1004234F0;
  v6 = v2;
  v5 = *(a1 + 32);
  dispatch_io_barrier(v3, v4);
  dispatch_semaphore_wait(*(a1 + 32), 0xFFFFFFFFFFFFFFFFLL);
}

intptr_t sub_10029EFD0(uint64_t a1)
{
  fsync(*(*(a1 + 40) + 40));
  v2 = *(a1 + 32);

  return dispatch_semaphore_signal(v2);
}

void **CMMsl::Writer::growZlibStream(void **this)
{
  v1 = this;
  v3 = this[8];
  v2 = this[9];
  if (v2)
  {
    *(this + 28) += v2;
    this[8] = &v2[v3];
    this[9] = 0;
  }

  else
  {
    this[8] = (2 * v3);
    this = malloc_type_realloc(this[7], 2 * v3, 0x100004077774924uLL);
    v1[7] = this;
    v4 = v1[15];
    v1[13] = &v4[this + 28];
    *(v1 + 28) = *(v1 + 16) - v4;
  }

  return this;
}

void sub_10029F098(id a1, BOOL a2, OS_dispatch_data *a3, int a4)
{
  if (a4 || !a2)
  {
    v4 = __stderrp;
    v5 = strerror(a4);
    fprintf(v4, "Msl dispatch io write error %s\n", v5);
  }
}

void sub_10029F4D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  sub_1002A2F68(&a17);

  _Unwind_Resume(a1);
}

_BYTE *sub_10029F5A0(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100011000();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void sub_10029F7D0(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_10029FF74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  CMMsl::Item::~Item(&a9);

  _Unwind_Resume(a1);
}

void sub_1002A0138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  CMMsl::Item::~Item(&a9);

  _Unwind_Resume(a1);
}

void sub_1002A03D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  CMMsl::Item::~Item(&a9);

  _Unwind_Resume(a1);
}

void sub_1002A0634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  CMMsl::Item::~Item(&a9);

  _Unwind_Resume(a1);
}

void sub_1002A0800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  CMMsl::Item::~Item(&a9);

  _Unwind_Resume(a1);
}

void sub_1002A0D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  CMMsl::Item::~Item(&a9);

  _Unwind_Resume(a1);
}

void sub_1002A0EE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  CMMsl::Item::~Item(&a9);

  _Unwind_Resume(a1);
}

void sub_1002A108C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  CMMsl::Item::~Item(&a9);

  _Unwind_Resume(a1);
}

void sub_1002A1258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  CMMsl::Item::~Item(&a9);

  _Unwind_Resume(a1);
}

void sub_1002A141C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  CMMsl::Item::~Item(&a9);

  _Unwind_Resume(a1);
}

void sub_1002A17CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  CMMsl::Item::~Item(&a9);

  _Unwind_Resume(a1);
}

void sub_1002A1970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  CMMsl::Item::~Item(&a9);

  _Unwind_Resume(a1);
}

void sub_1002A1FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  CMMsl::Item::~Item(&a9);

  _Unwind_Resume(a1);
}

void sub_1002A234C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CMMsl::Item::~Item(va);

  _Unwind_Resume(a1);
}

void sub_1002A2514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  CMMsl::Item::~Item(&a9);

  _Unwind_Resume(a1);
}

void sub_1002A2684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  CMMsl::Item::~Item(&a9);

  _Unwind_Resume(a1);
}

void sub_1002A2890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  CMMsl::Item::~Item(&a9);

  _Unwind_Resume(a1);
}

__n128 sub_1002A2DD0(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

void sub_1002A2E24(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1002A2E78(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *sub_1002A2E78(void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

void sub_1002A2EE4(void **a1)
{
  if (*a1)
  {
    sub_1002A2E78(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_1002A2F24(id a1)
{
  qword_1004568F0 = os_log_create("com.apple.anomalydetectiond", "MSLDataRecording");

  _objc_release_x1();
}

uint64_t sub_1002A2F68(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void ***sub_1002A2FBC(void ***result, void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    free(*v2);

    operator delete();
  }

  return result;
}

uint64_t sub_1002A301C(uint64_t a1)
{
  sub_1002A3054(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_1002A3054(void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 8))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

void *sub_1002A3124(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_100426580;
  CMMsl::Writer::Writer((a1 + 3));
  return a1;
}

void sub_1002A31A0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100426580;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

id KappaCompanion::serializeDeviceInfo(KappaCompanion *this, const CompanionDeviceInfo *a2)
{
  if (qword_100456868 != -1)
  {
    sub_1002A4308();
  }

  v3 = qword_100456870;
  if (os_log_type_enabled(qword_100456870, OS_LOG_TYPE_DEBUG))
  {
    v4 = *this;
    if (*(this + 31) >= 0)
    {
      v5 = this + 8;
    }

    else
    {
      v5 = *(this + 1);
    }

    v6 = *(this + 8);
    v7 = *(this + 9);
    v8 = *(this + 10);
    v9 = *(this + 11);
    v10 = *(this + 12);
    v11 = *(this + 13);
    v12 = *(this + 14);
    *buf = 67176707;
    v24 = v4;
    *v25 = 2081;
    *&v25[2] = v5;
    *&v25[10] = 1025;
    v26 = v6;
    LOWORD(v27) = 1025;
    *(&v27 + 2) = v8;
    HIWORD(v27) = 1025;
    v28 = v7;
    LOWORD(v29) = 1025;
    *(&v29 + 2) = v9;
    HIWORD(v29) = 1025;
    v30 = v10;
    v31 = 1025;
    v32 = v11;
    v33 = 1025;
    v34 = v12;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "sending kappa device info %{private}d %{private}s %{private}d %{private}d %{private}d %{private}d %{private}d %{private}d %{private}d", buf, 0x3Cu);
  }

  PB::Writer::Writer(&v21);
  KappaCompanionDeviceInfo::KappaCompanionDeviceInfo(buf);
  v13 = *this;
  LOBYTE(v31) = v31 | 1;
  *&v25[8] = v13;
  sub_10002A8F0(buf);
  std::string::operator=(*v25, (this + 8));
  v14 = *(this + 9);
  v15 = *(this + 10);
  v16 = *(this + 11);
  HIDWORD(v27) = *(this + 8);
  v28 = v15;
  HIDWORD(v29) = v14;
  v30 = v16;
  v17 = *(this + 12);
  LODWORD(v29) = *(this + 13);
  v18 = *(this + 14);
  LOBYTE(v31) = v31 | 0xFE;
  v26 = v18;
  LODWORD(v27) = v17;
  KappaCompanionDeviceInfo::writeTo(buf, &v21);
  v19 = [NSData dataWithBytes:v22 length:v21 - v22];
  KappaCompanionDeviceInfo::~KappaCompanionDeviceInfo(buf);
  PB::Writer::~Writer(&v21);

  return v19;
}

void sub_1002A3440(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  KappaCompanionDeviceInfo::~KappaCompanionDeviceInfo(va1);
  PB::Writer::~Writer(va);
  _Unwind_Resume(a1);
}

void KappaCompanion::deserializeDeviceInfo(KappaCompanion *this, const NSData *a2)
{
  v2 = this;
  PB::Reader::Reader(v24, [(KappaCompanion *)v2 bytes], [(KappaCompanion *)v2 length]);
  KappaCompanionDeviceInfo::KappaCompanionDeviceInfo(v13);
  v8 = 0;
  *__p = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0;
  KappaCompanionDeviceInfo::readFrom(v13, v24);
  v3 = v23;
  if (v23)
  {
    v8 = v15;
  }

  if (__str)
  {
    std::string::operator=(__p, __str);
    v3 = v23;
  }

  v4 = v18;
  v5 = v21;
  if ((v3 & 8) == 0)
  {
    v4 = -1;
  }

  if ((v3 & 0x40) == 0)
  {
    v5 = -1;
  }

  *(&v10 + 1) = __PAIR64__(v5, v4);
  if ((v3 & 0x10) != 0)
  {
    LODWORD(v11) = v19;
    if ((v3 & 0x80) == 0)
    {
LABEL_11:
      if ((v3 & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_25;
    }
  }

  else if ((v3 & 0x80) == 0)
  {
    goto LABEL_11;
  }

  DWORD1(v11) = v22;
  if ((v3 & 4) == 0)
  {
LABEL_12:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_26;
  }

LABEL_25:
  DWORD2(v11) = v17;
  if ((v3 & 0x20) == 0)
  {
LABEL_13:
    if ((v3 & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_26:
  HIDWORD(v11) = v20;
  if ((v3 & 2) == 0)
  {
LABEL_15:
    if (qword_100456868 != -1)
    {
      sub_1002A431C();
    }

    v6 = qword_100456870;
    if (os_log_type_enabled(qword_100456870, OS_LOG_TYPE_DEBUG))
    {
      if ((SBYTE7(v10) & 0x80u) == 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = __p[0];
      }

      *buf = 67176707;
      v26 = v8;
      v27 = 2081;
      v28 = v7;
      v29 = 1025;
      v30 = DWORD2(v10);
      v31 = 1025;
      v32 = v11;
      v33 = 1025;
      v34 = HIDWORD(v10);
      v35 = 1025;
      v36 = DWORD1(v11);
      v37 = 1025;
      v38 = DWORD2(v11);
      v39 = 1025;
      v40 = HIDWORD(v11);
      v41 = 1025;
      v42 = v12;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "receiving kappa device info %{private}d %{private}s %{private}d %{private}d %{private}d %{private}d %{private}d %{private}d %{private}d", buf, 0x3Cu);
    }

    operator new();
  }

LABEL_14:
  v12 = v16;
  goto LABEL_15;
}

id KappaCompanion::serializeTrigger(float16x4_t *this, const CompanionTrigger *a2)
{
  if (qword_100456868 != -1)
  {
    sub_1002A4308();
  }

  v3 = qword_100456870;
  if (os_log_type_enabled(qword_100456870, OS_LOG_TYPE_DEBUG))
  {
    v4 = this[1].u8[0];
    v5 = this[1].u8[1];
    v6 = this[1].u16[1];
    v7 = this[1].i32[1];
    v8 = this[2];
    v9 = *this[3].i32;
    v10 = *&this[3].i32[1];
    v11 = this[4].i8[0];
    v12 = this[4].i8[1];
    v13 = this[4].i8[2];
    v14 = this[4].i8[3];
    v15 = this[4].i8[4];
    v16 = this[5];
    _H2 = this[6].i16[0];
    __asm { FCVT            D2, H2 }

    _H3 = this[6].i16[1];
    __asm { FCVT            D3, H3 }

    _H4 = this[6].i16[2];
    __asm { FCVT            D4, H4 }

    v27 = this[6].u8[6];
    v28 = this[6].u8[7];
    v29 = this[7].u16[0];
    v30 = this[8];
    v31 = *&this[11].i32[1];
    v32 = *this[12].i32;
    *buf = 67180033;
    v52 = v4;
    LOWORD(v53) = 1025;
    *(&v53 + 2) = v5;
    HIWORD(v53) = 1025;
    v54 = v6;
    v55 = 1025;
    v56 = v7;
    v57 = 2049;
    *v58 = v8;
    *&v58[8] = 2049;
    *&v58[10] = v9;
    *&v58[18] = 2049;
    v59 = v10;
    v60.i16[0] = 1025;
    *(v60.i32 + 2) = v11;
    v60.i16[3] = 1025;
    v61 = v12;
    LOWORD(v62) = 1025;
    *(&v62 + 2) = v13;
    HIWORD(v62) = 1025;
    v63 = v14;
    LOWORD(v64) = 1025;
    *(&v64 + 2) = v15;
    HIWORD(v64) = 2049;
    v65 = v16;
    *v66 = 2049;
    *&v66[2] = _D2;
    *&v66[10] = 2049;
    v67 = _D3;
    *v68 = 2049;
    *&v68[2] = _D4;
    v69 = 1025;
    v70 = v27;
    v71 = 1025;
    v72 = v28;
    v73 = 1025;
    v74 = v29;
    v75 = 2049;
    v76 = v30;
    v77 = 2049;
    v78 = v31;
    v79 = 2049;
    v80 = v32;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "sending kappa trigger info %{private}d %{private}d %{private}d %{private}d %{private}llu %{private}f %{private}f %{private}d %{private}d %{private}d %{private}d %{private}d %{private}llu %{private}f %{private}f %{private}f %{private}d %{private}d%{private}d %{private}llu%{private}f %{private}f", buf, 0xAEu);
  }

  PB::Writer::Writer(&v46);
  KappaTriggerSample::KappaTriggerSample(buf);
  v59 = *this;
  v33 = this[3].i32[1];
  HIDWORD(v62) = this[3].i32[0];
  v34 = this[1].u8[1];
  v35 = this[1].u16[1];
  *&v66[4] = this[1].u8[0];
  v65.i32[0] = v35;
  v36 = this[1].i32[1];
  v60 = this[2];
  HIDWORD(v64) = v33;
  *&v66[8] = this[4].i8[0];
  v67 = __PAIR64__(v36, v34);
  LODWORD(v64) = this[4].i8[1];
  v37 = this[4].i8[2];
  *v68 = __PAIR64__(*&v68[4], this[4].i8[3]) | 0x3E77E00000000;
  v38 = this[4].i8[4];
  v61 = v37;
  LODWORD(v62) = v38;
  *&v58[12] = this[5];
  __src = vcvtq_f32_f16(this[6]).u64[0];
  _H0 = this[6].i16[2];
  __asm { FCVT            S0, H0 }

  v49 = _S0;
  sub_10002A964(&v53, &__src, v50, 3uLL);
  v41 = this[6].u8[6];
  v42 = this[7].u16[0];
  v63 = this[6].u8[7];
  v65.i32[1] = v42;
  *v66 = v41;
  v43 = this[8];
  *&v68[4] |= 0x1881u;
  *&v58[4] = v43;
  KappaTriggerSample::writeTo(buf, &v46);
  v44 = [NSData dataWithBytes:v47 length:v46 - v47];
  KappaTriggerSample::~KappaTriggerSample(buf);
  PB::Writer::~Writer(&v46);

  return v44;
}

void sub_1002A3A80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  KappaTriggerSample::~KappaTriggerSample(va1);
  PB::Writer::~Writer(va);
  _Unwind_Resume(a1);
}

void KappaCompanion::deserializeTrigger(KappaCompanion *this, const NSData *a2)
{
  v2 = this;
  PB::Reader::Reader(v81, [(KappaCompanion *)v2 bytes], [(KappaCompanion *)v2 length]);
  KappaTriggerSample::KappaTriggerSample(v60);
  v58 = 0;
  v59 = 0;
  v122 = 0u;
  v123 = 0u;
  v124 = 0u;
  KappaTriggerSample::readFrom(v60, v81);
  v3 = v80;
  v4 = v75;
  v5 = v77;
  v6 = v72;
  if ((v80 & 8) != 0)
  {
    v7 = v65;
  }

  else
  {
    v7 = 0;
  }

  if ((v80 & 0x40) != 0)
  {
    v8 = v68;
  }

  else
  {
    v8 = 0.0;
  }

  if ((v80 & 0x200) != 0)
  {
    v9 = v71;
  }

  else
  {
    v9 = 0.0;
  }

  v10 = v76;
  v11 = v70;
  v12 = v66;
  v51 = v79;
  v53 = v78;
  v49 = v67;
  if ((v80 & 2) != 0)
  {
    v13 = v64;
  }

  else
  {
    v13 = 0;
  }

  __p = 0;
  v56 = 0;
  v57 = 0;
  sub_10002AA98(&__p, v61, v62, (v62 - v61) >> 2);
  v41 = v12;
  v42 = v11;
  v43 = v10;
  v44 = v7;
  v45 = v13;
  _H11 = 0;
  _H12 = 0;
  _H13 = 0;
  if (v56 - __p == 12)
  {
    _S0 = *__p;
    _S1 = *(__p + 1);
    __asm
    {
      FCVT            H11, S0
      FCVT            H12, S1
    }

    _S0 = *(__p + 2);
    __asm { FCVT            H13, S0 }
  }

  v24 = v80;
  v25 = v74;
  v26 = v69;
  v27 = v73;
  if (v80)
  {
    v28 = v63;
  }

  else
  {
    v28 = 0;
  }

  if (qword_100456868 != -1)
  {
    sub_1002A431C();
  }

  v29 = v53;
  v48 = v4 & (v3 << 18 >> 31);
  v47 = v5 & (v3 >> 15);
  v46 = v6 & (v3 << 21 >> 31);
  v30 = v43 & (v3 << 17 >> 31);
  v31 = v42 & (v3 << 23 >> 31);
  v52 = v51 & (v3 << 14 >> 31);
  v54 = v41 & (v3 << 27 >> 31);
  v50 = v49 & (v3 << 26 >> 31);
  v32 = v29 & (v3 << 15 >> 31);
  v33 = v25 & (v24 << 19 >> 31);
  v34 = v26 & (v24 >> 7);
  v35 = v24 << 20;
  v36 = qword_100456870;
  v37 = v27 & (v35 >> 31);
  if (os_log_type_enabled(qword_100456870, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67179521;
    v83 = v48;
    v84 = 1025;
    v85 = v47;
    v86 = 1025;
    v87 = v46;
    __asm
    {
      FCVT            D2, H11
      FCVT            D3, H12
    }

    v88 = 1025;
    __asm { FCVT            D4, H13 }

    v89 = v32;
    v90 = 2049;
    v91 = v44;
    v92 = 2049;
    v93 = v8;
    v94 = 2049;
    v95 = v9;
    v96 = 1025;
    v97 = v30;
    v98 = 1025;
    v99 = v31;
    v100 = 1025;
    v101 = v54;
    v102 = 1025;
    v103 = v52;
    v104 = 1025;
    v105 = v50;
    v106 = 2049;
    v107 = v45;
    v108 = 2049;
    v109 = _D2;
    v110 = 2049;
    v111 = _D3;
    v112 = 2049;
    v113 = _D4;
    v114 = 1025;
    v115 = v33;
    v116 = 1025;
    v117 = v34;
    v118 = 1025;
    v119 = v37;
    v120 = 2049;
    v121 = v28;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, "receiving kappa trigger info %{private}d %{private}d %{private}d %{private}d %{private}llu %{private}f %{private}f %{private}d %{private}d %{private}d %{private}d %{private}d %{private}llu %{private}f %{private}f %{private}f %{private}d %{private}d%{private}d %{private}llu", buf, 0x9Au);
  }

  operator new();
}

void sub_1002A3F30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  KappaTriggerSample::~KappaTriggerSample(&a23);

  _Unwind_Resume(a1);
}

id KappaCompanion::serializeCompanionUUID(const std::string *this, const CompanionUUID *a2)
{
  if (qword_100456868 != -1)
  {
    sub_1002A4308();
  }

  v3 = qword_100456870;
  if (os_log_type_enabled(qword_100456870, OS_LOG_TYPE_DEBUG))
  {
    if ((this->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v4 = this;
    }

    else
    {
      v4 = this->__r_.__value_.__r.__words[0];
    }

    LODWORD(buf) = 136446210;
    *(&buf + 4) = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "sending kappa companion uuid %{public}s", &buf, 0xCu);
  }

  PB::Writer::Writer(&buf);
  KappaCompanionUUID::KappaCompanionUUID(&v7);
  sub_10002A8F0(&v7);
  std::string::operator=(v8, this);
  KappaCompanionUUID::writeTo(&v7, &buf);
  v5 = [NSData dataWithBytes:*(&buf + 1) length:buf - *(&buf + 1)];
  KappaCompanionUUID::~KappaCompanionUUID(&v7);
  PB::Writer::~Writer(&buf);

  return v5;
}

void sub_1002A40B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  KappaCompanionUUID::~KappaCompanionUUID(&a9);
  PB::Writer::~Writer(&a11);
  _Unwind_Resume(a1);
}

void KappaCompanion::deserializeCompanionUUID(KappaCompanion *this, const NSData *a2)
{
  v2 = this;
  PB::Reader::Reader(v8, [(KappaCompanion *)v2 bytes], [(KappaCompanion *)v2 length]);
  KappaCompanionUUID::KappaCompanionUUID(v6);
  memset(&v5, 0, sizeof(v5));
  KappaCompanionUUID::readFrom(v6, v8);
  if (__str)
  {
    std::string::operator=(&v5, __str);
  }

  if (qword_100456868 != -1)
  {
    sub_1002A431C();
  }

  v3 = qword_100456870;
  if (os_log_type_enabled(qword_100456870, OS_LOG_TYPE_DEBUG))
  {
    v4 = &v5;
    if ((v5.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v4 = v5.__r_.__value_.__r.__words[0];
    }

    *buf = 136446210;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "receiving kappa companion uuid %{public}s", buf, 0xCu);
  }

  operator new();
}

void sub_1002A42C4(id a1)
{
  qword_100456870 = os_log_create("com.apple.anomalydetectiond", "Companion");

  _objc_release_x1();
}

double CLKappaFeaturesAlgTriggerClustersResult::log(CLKappaFeaturesAlgTriggerClustersResult *this)
{
  if (qword_1004567F8 != -1)
  {
    sub_1002A6200();
  }

  v2 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(this + 4);
    v5 = *(this + 40);
    v6 = *(this + 41);
    v7 = *(this + 42);
    v8 = *(this + 6);
    v9 = *(this + 7);
    v10 = *(this + 8);
    v11 = *(this + 9);
    v12 = *(this + 10);
    v13 = *(this + 11);
    v14 = *(this + 24);
    v15 = *(this + 104);
    v16 = *(this + 4);
    v17 = *(this + 5);
    v18 = *(this + 6);
    v19 = 134352640;
    v20 = v4;
    v21 = 1026;
    v22 = v5;
    v23 = 1026;
    v24 = v6;
    v25 = 1026;
    v26 = v7;
    v27 = 2050;
    v28 = v8;
    v29 = 2050;
    v30 = v9;
    v31 = 2050;
    v32 = v10;
    v33 = 2050;
    v34 = v11;
    v35 = 2050;
    v36 = v12;
    v37 = 2050;
    v38 = v13;
    v39 = 1026;
    v40 = v14;
    v41 = 1026;
    v42 = v15;
    v43 = 2048;
    v44 = v16;
    v45 = 1026;
    v46 = v17;
    v47 = 2050;
    v48 = v18;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[TC] summary,A,%{public}llu,B,%{public}d,C,%{public}d,D,%{public}d,E,%{public}llu,debug-1,%{public}llu,debug-2,%{public}llu,debug-3,%{public}llu,debug-4,%{public}llu,debug-5,%{public}llu,debug-6,%{public}d,debug-7,%{public}u,config-1,%f,config-2,%{public}d,config-3,%{public}f", &v19, 0x80u);
  }

  return result;
}

void CLKappaFeaturesAlgTriggerClusters::CLKappaFeaturesAlgTriggerClusters(CLKappaFeaturesAlgTriggerClusters *this, uint64_t *a2)
{
  CLKappaAlgBlock::CLKappaAlgBlock(this, a2 + 1);
  v4 = *a2;
  *v5 = *a2;
  *(this + *(v4 - 152)) = a2[6];
  *(this + *(*this - 160)) = a2[7];
  *(this + *(*this - 168)) = a2[8];
  *(this + *(*this - 176)) = a2[9];
  *(this + 4) = 0u;
  *(this + 17) = 0;
  *(this + 72) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 64) = 0;
  operator new();
}

void sub_1002A47C0(_Unwind_Exception *a1)
{
  sub_10000EEA4(v3);
  v5 = *(v1 + 7);
  if (v5)
  {
    sub_100009A48(v5);
  }

  v6 = *(v1 + 5);
  if (v6)
  {
    sub_100009A48(v6);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, (v2 + 8));
  _Unwind_Resume(a1);
}

char **sub_1002A47FC@<X0>(uint64_t a1@<X0>, char ***a2@<X8>)
{
  result = *a1;
  {
    v6 = *(a1 + 8);
    *a2 = result;
    a2[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

void CLKappaFeaturesAlgTriggerClusters::CLKappaFeaturesAlgTriggerClusters(CLKappaFeaturesAlgTriggerClusters *this)
{
  *this = off_100411FE8;
  *(this + 19) = off_100412090;
  *(this + 20) = off_100412158;
  *(this + 21) = off_100412210;
  CLKappaAlgBlock::CLKappaAlgBlock(this, off_100426BE0);
  *v1 = off_100426690;
  *(v1 + 152) = off_100426950;
  *(v1 + 160) = off_100426A98;
  *(v1 + 168) = off_100426B88;
  *(v1 + 64) = 0u;
  *(v1 + 136) = 0;
  *(v1 + 144) = 0;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0;
  operator new();
}

void sub_1002A4B18(_Unwind_Exception *a1)
{
  sub_10000EEA4(v2);
  v4 = *(v1 + 7);
  if (v4)
  {
    sub_100009A48(v4);
  }

  v5 = *(v1 + 5);
  if (v5)
  {
    sub_100009A48(v5);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_100426BE0);
  _Unwind_Resume(a1);
}

void CLKappaFeaturesAlgTriggerClusters::resetConfiguration(CLKappaFeaturesAlgTriggerClusters *this)
{
  v17 = [CSPersistentConfiguration configBaseKey:"FeaturesAlgTriggerClustersConfig" forFeatureMode:*(this + 24)];
  v2 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v3) = 1163984896;
  LODWORD(v4) = 5.0;
  LODWORD(v5) = 30.0;
  [v2 algorithmThresholdNumber:0 inArrayForKey:v17 withMinValue:v4 maxValue:v3 defaultValue:v5];
  LODWORD(v18) = v6;

  v7 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v8) = 1120403456;
  LODWORD(v9) = 2.0;
  LODWORD(v10) = 8.0;
  [v7 algorithmThresholdNumber:1 inArrayForKey:v17 withMinValue:v9 maxValue:v8 defaultValue:v10];
  HIDWORD(v18) = v11;

  v12 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v13) = 1192009728;
  LODWORD(v14) = 1192009472;
  LODWORD(v15) = 15.0;
  [v12 algorithmThresholdNumber:2 inArrayForKey:v17 withMinValue:v15 maxValue:v13 defaultValue:v14];
  v19 = v16;

  CLKappaFeaturesAlgTriggerClusters::setConfig(this, &v18);
}

double CLKappaFeaturesAlgTriggerClusters::setConfig(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 32);
  v4 = *a2;
  *(v3 + 24) = *(a2 + 2);
  *(v3 + 16) = v4;
  if (qword_1004567F8 != -1)
  {
    sub_1002A6200();
  }

  v5 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 32);
    v8 = *(v7 + 16);
    v9 = *(v7 + 20);
    v10 = *(v7 + 24);
    v11 = 134218496;
    v12 = v8;
    v13 = 1024;
    v14 = v9;
    v15 = 2048;
    v16 = v10;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[TC] config, %f, %d, %f", &v11, 0x1Cu);
  }

  return result;
}

uint64_t CLKappaFeaturesAlgTriggerClusters::reset(CLKappaFeaturesAlgTriggerClusters *this)
{
  (*(**(this + 4) + 24))(*(this + 4));
  v2 = *(this + 4);
  *(v2 + 39) = 0;
  *(v2 + 32) = 0;
  *(v2 + 48) = 0;
  v3 = *(this + 4);
  *(v3 + 104) = 0;
  *(v3 + 88) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 56) = 0u;
  memset(v5, 0, sizeof(v5));
  sub_1002A5F74(this + 8, v5);
  result = sub_10000EEA4(v5);
  *(this + 15) = 0;
  *(this + 64) = 0;
  *(this + 72) = 0;
  return result;
}

void CLKappaFeaturesAlgTriggerClusters::epochFinalize(int64x2_t *this, unint64_t a2)
{
  v4 = this[2].i64[0];
  *(v4 + 39) = 0;
  *(v4 + 32) = 0;
  *(v4 + 48) = 0;
  v5 = this[2].i64[0];
  *(v5 + 104) = 0;
  *(v5 + 88) = 0u;
  *(v5 + 72) = 0u;
  *(v5 + 56) = 0u;
  v6 = this[2].i64[0];
  *(v6 + 100) = 0;
  *(v6 + 56) = 0;
  *(v6 + 64) = 0;
  *(v6 + 32) = a2;
  v7 = this[6].i64[1];
  if (v7)
  {
    v8 = this[4].i64[1];
    v9 = this[6].u64[0];
    *(v6 + 72) = *(*(v8 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF));
    v10 = *(*(v8 + (((v7 + v9 - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v7 + v9 - 1) & 0x1FF));
  }

  else
  {
    v10 = 0;
    *(v6 + 72) = 0;
  }

  *(v6 + 80) = v10;
  *(v6 + 96) = v7;
  *(v6 + 42) = this[9].i8[1];
  v11 = this[7].u64[1];
  this[7].i64[1] = a2;
  v12 = *(this[3].i64[0] + 96);
  if (![v12 count])
  {
    goto LABEL_32;
  }

  v13 = [v12 firstObject];
  *(this[2].i64[0] + 56) = *([v13 c_struct] + 1);

  v14 = [v12 lastObject];
  *(this[2].i64[0] + 64) = *([v14 c_struct] + 1);

  *(this[2].i64[0] + 100) = [v12 count];
  if ((this[9].i8[0] & 1) == 0)
  {
    this[9].i8[0] = 1;
    v15 = [v12 firstObject];
    this[8].i16[0] = *([v15 c_struct] + 1);

    v16 = [v12 firstObject];
    this[7].i64[0] = *([v16 c_struct] + 1);

    if (qword_1004567F8 != -1)
    {
      sub_1002A6200();
    }

    v17 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
    {
      v19 = this[8].u16[0];
      v20 = this[7].i64[0];
      *buf = 67109376;
      *&buf[4] = v19;
      *&buf[8] = 2048;
      *&buf[10] = v20;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "[TC] setting armedDuration:%hu firstSessionTriggerTs:%llu", buf, 0x12u);
    }

    LOWORD(v18) = this[8].i16[0];
    this[8].i64[1] = (this[7].u64[0] + ((*(this[2].i64[0] + 24) - v18) * 1000000.0));
  }

  for (i = 0; [v12 count] > i; ++i)
  {
    v22 = [v12 objectAtIndexedSubscript:i];
    v23 = *([v22 c_struct] + 1);

    *buf = v23;
    v24 = this[1].u8[8];
    if (v24 == 2)
    {
      v27 = [v12 objectAtIndexedSubscript:i];
      v26 = *([v27 c_struct] + 46);
    }

    else
    {
      if (v24 != 1)
      {
        continue;
      }

      v25 = [v12 objectAtIndexedSubscript:i];
      v26 = *([v25 c_struct] + 1);
    }

    if ((v26 & 4) == 0 && *buf >= v11 && *buf < a2)
    {
      sub_10000BB8C(this[4].i64, buf);
      v28 = [v12 objectAtIndexedSubscript:i];
      this[9].i8[1] |= *([v28 c_struct] + 28) == 1;

      v29 = [v12 objectAtIndexedSubscript:i];
      *(this[2].i64[0] + 104) = *([v29 c_struct] + 28);

      v30 = [v12 objectAtIndexedSubscript:i];
      *(this[2].i64[0] + 88) = *([v30 c_struct] + 1);
    }
  }

  v31 = this[6].i64[1];
  if (v31)
  {
    v32 = *(*(this[4].i64[1] + (((v31 + this[6].i64[0] - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v31 + this[6].i64[0] - 1) & 0x1FF));
    while (1)
    {
      v33 = this[6].u64[1];
      if (!v33)
      {
        break;
      }

      v34 = this[4].i64[1];
      v35 = this[6].u64[0];
      v36 = *(*(v34 + ((v35 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v35 & 0x1FF));
      v37 = this[2].i64[0];
      if ((v32 + (*(v37 + 16) * -1000000.0)) <= v36)
      {
        *(v37 + 72) = v36;
        *(v37 + 80) = *(*(v34 + (((v33 + v35 - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v33 + v35 - 1) & 0x1FF));
        *(v37 + 96) = v33;
        if (v33 > *(v37 + 20))
        {
          if (qword_1004567F8 != -1)
          {
            sub_1002A6214();
          }

          v42 = qword_100456800;
          if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
          {
            v43 = this[6].i64[1];
            *buf = 134217984;
            *&buf[4] = v43;
            _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEBUG, "[TC] found cluster - clusterSize:%lu", buf, 0xCu);
          }

          *(this[2].i64[0] + 40) = 1;
          if (qword_1004567F8 != -1)
          {
            sub_1002A6214();
          }

          v44 = qword_100456800;
          if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
          {
            v45 = this[8].i64[1];
            *buf = 134217984;
            *&buf[4] = v45;
            _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEBUG, "[TC] cluster must be before ts:%llu", buf, 0xCu);
          }

          v46 = this[8].u64[1];
          if (v32 <= v46)
          {
            v47 = this[2].i64[0];
            *(v47 + 41) = 1;
            *(v47 + 48) = v46;
          }

          if (qword_1004567F8 != -1)
          {
            sub_1002A6214();
          }

          v48 = qword_100456800;
          if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
          {
            v49 = this[2].i64[0];
            v50 = *(v49 + 41);
            v51 = *(v49 + 48);
            *buf = 67109376;
            *&buf[4] = v50;
            *&buf[8] = 2048;
            *&buf[10] = v51;
            _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEBUG, "[TC] isClusterInBeginningOfDrive:%d fArmedDurationThresholdTimestamp:%llu", buf, 0x12u);
          }
        }

        goto LABEL_32;
      }

      if (qword_1004567F8 != -1)
      {
        sub_1002A6214();
      }

      v38 = qword_100456800;
      if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
      {
        v39 = *(*(this[4].i64[1] + ((this[6].i64[0] >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (this[6].i64[0] & 0x1FF));
        v40 = *(this[2].i64[0] + 16);
        *buf = 134218496;
        *&buf[4] = v39;
        *&buf[12] = 2048;
        *&buf[14] = v32 - v39;
        v53 = 2048;
        v54 = v40;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEBUG, "[TC] removing trigger ts from cluster:%llu, timeFromFirstTrigger:%llu, windowDuration:%f", buf, 0x20u);
      }

      this[6] = vaddq_s64(this[6], xmmword_10037DC90);
      sub_100010720(this[4].i64, 1);
    }
  }

  v41 = this[2].i64[0];
  *(v41 + 96) = 0;
  *(v41 + 72) = 0;
  *(v41 + 80) = 0;
LABEL_32:
}

void sub_1002A55F4(CLKappaAlgBlock *a1)
{
  *a1 = off_100426690;
  *(a1 + 19) = off_100426950;
  *(a1 + 20) = off_100426A98;
  *(a1 + *(*a1 - 176)) = off_100426B88;
  sub_10000EEA4(a1 + 8);
  v2 = *(a1 + 7);
  if (v2)
  {
    sub_100009A48(v2);
  }

  v3 = *(a1 + 5);
  if (v3)
  {
    sub_100009A48(v3);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(a1, off_100426BE0);
}

void sub_1002A56F8(CLKappaAlgBlock *a1)
{
  *a1 = off_100426690;
  *(a1 + 19) = off_100426950;
  *(a1 + 20) = off_100426A98;
  *(a1 + 21) = off_100426B88;
  sub_10000EEA4(a1 + 8);
  v2 = *(a1 + 7);
  if (v2)
  {
    sub_100009A48(v2);
  }

  v3 = *(a1 + 5);
  if (v3)
  {
    sub_100009A48(v3);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(a1, off_100426BE0);

  operator delete();
}

void sub_1002A57E8(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 56);
  *(a1 + 48) = v3;
  *(a1 + 56) = v2;
  if (v4)
  {
    sub_100009A48(v4);
  }
}

void sub_1002A5814(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_100426690;
  *(v1 + 19) = off_100426950;
  *(v1 + 20) = off_100426A98;
  *(v1 + 21) = off_100426B88;
  sub_10000EEA4(v1 + 8);
  v2 = *(v1 + 7);
  if (v2)
  {
    sub_100009A48(v2);
  }

  v3 = *(v1 + 5);
  if (v3)
  {
    sub_100009A48(v3);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_100426BE0);
}

void sub_1002A5900(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_100426690;
  *(v1 + 19) = off_100426950;
  *(v1 + 20) = off_100426A98;
  *(v1 + 21) = off_100426B88;
  sub_10000EEA4(v1 + 8);
  v2 = *(v1 + 7);
  if (v2)
  {
    sub_100009A48(v2);
  }

  v3 = *(v1 + 5);
  if (v3)
  {
    sub_100009A48(v3);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_100426BE0);

  operator delete();
}

void sub_1002A5A00(void *a1, uint64_t *a2)
{
  v2 = a1 + *(*a1 - 32);
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(v2 + 7);
  *(v2 + 6) = v4;
  *(v2 + 7) = v3;
  if (v5)
  {
    sub_100009A48(v5);
  }
}

void sub_1002A5A40(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_100426690;
  *(v1 + 19) = off_100426950;
  *(v1 + 20) = off_100426A98;
  *(v1 + 21) = off_100426B88;
  sub_10000EEA4(v1 + 8);
  v2 = *(v1 + 7);
  if (v2)
  {
    sub_100009A48(v2);
  }

  v3 = *(v1 + 5);
  if (v3)
  {
    sub_100009A48(v3);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_100426BE0);
}

void sub_1002A5B2C(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_100426690;
  *(v1 + 19) = off_100426950;
  *(v1 + 20) = off_100426A98;
  *(v1 + 21) = off_100426B88;
  sub_10000EEA4(v1 + 8);
  v2 = *(v1 + 7);
  if (v2)
  {
    sub_100009A48(v2);
  }

  v3 = *(v1 + 5);
  if (v3)
  {
    sub_100009A48(v3);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_100426BE0);

  operator delete();
}

void sub_1002A5C2C(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_100426690;
  *(v1 + 19) = off_100426950;
  *(v1 + 20) = off_100426A98;
  *(v1 + 21) = off_100426B88;
  sub_10000EEA4(v1 + 8);
  v2 = *(v1 + 7);
  if (v2)
  {
    sub_100009A48(v2);
  }

  v3 = *(v1 + 5);
  if (v3)
  {
    sub_100009A48(v3);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_100426BE0);
}

void sub_1002A5D18(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_100426690;
  *(v1 + 19) = off_100426950;
  *(v1 + 20) = off_100426A98;
  *(v1 + 21) = off_100426B88;
  sub_10000EEA4(v1 + 8);
  v2 = *(v1 + 7);
  if (v2)
  {
    sub_100009A48(v2);
  }

  v3 = *(v1 + 5);
  if (v3)
  {
    sub_100009A48(v3);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_100426BE0);

  operator delete();
}

void sub_1002A5E18(id a1)
{
  qword_100456800 = os_log_create("com.apple.anomalydetectiond", "Alg");

  _objc_release_x1();
}

void sub_1002A5E5C(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      return;
    }

    v6 = 512;
  }

  a1[4] = v6;
}

void sub_1002A5EF8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100427268;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002A5F74(void **a1, uint64_t a2)
{
  sub_1002A5E5C(a1);
  sub_1002A5FC4(a1);
  result = sub_1002A6198(a1, a2);
  a1[4] = *(a2 + 32);
  a1[5] = *(a2 + 40);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return result;
}

void sub_1002A5FC4(void **a1)
{
  if (a1[5])
  {
    sub_100010720(a1, 0);
    sub_1002A6048(a1, 0);
  }

  else
  {
    v3 = a1[1];
    for (i = a1[2]; i != v3; a1[2] = i)
    {
      operator delete(*(i - 8));
      v3 = a1[1];
      i = a1[2] - 8;
    }

    a1[4] = 0;
  }

  sub_1002A60B8(a1);
}

uint64_t sub_1002A6048(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v3) << 6) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x200)
  {
    a2 = 1;
  }

  if (v5 < 0x400)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

void sub_1002A60B8(void **a1)
{
  v1 = a1[2];
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[3] - *a1;
  if (v4 > (v1 - v3))
  {
    if (v1 != v3)
    {
      sub_100010140(a1, (v1 - v3) >> 3);
    }

    v6 = 0;
    if (v4 >> 3)
    {
      v7 = a1[1];
      v8 = a1[2] - v7;
      if (v8)
      {
        v9 = 0;
        do
        {
          v10 = *v7++;
          *v9++ = v10;
          v8 -= 8;
        }

        while (v8);
        v7 = a1[1];
        v11 = a1[2];
        v2 = *a1;
      }

      else
      {
        v11 = a1[1];
      }

      *a1 = 0;
      a1[1] = 0;
      a1[2] = (v11 - v7);
      a1[3] = 0;
      v6 = v2;
    }

    if (v6)
    {

      operator delete(v6);
    }
  }
}

uint64_t sub_1002A6198(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v4 != v5)
  {
    *(a1 + 16) = v4 + ((v5 - v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  sub_1002A60B8(a1);
  *a1 = *a2;
  *(a1 + 16) = a2[1];
  *a2 = 0u;
  a2[1] = 0u;
  return a1;
}

uint64_t CLKappaFeaturesAlgShortAudioResult::reset(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 12) = 0;
  *(this + 20) = -1;
  return this;
}

void CLKappaFeaturesAlgShortAudio::CLKappaFeaturesAlgShortAudio(CLKappaFeaturesAlgShortAudio *this, uint64_t *a2)
{
  CLKappaAlgBlock::CLKappaAlgBlock(this, a2 + 1);
  v4 = *a2;
  *v5 = *a2;
  *(this + *(v4 - 152)) = a2[6];
  *(this + *(*this - 160)) = a2[7];
  *(this + *(*this - 168)) = a2[8];
  *(this + *(*this - 176)) = a2[9];
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  operator new();
}

void sub_1002A6538(_Unwind_Exception *a1)
{
  v4 = *(v1 + 7);
  if (v4)
  {
    sub_100009A48(v4);
  }

  v5 = *(v1 + 5);
  if (v5)
  {
    sub_100009A48(v5);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, (v2 + 8));
  _Unwind_Resume(a1);
}

char **sub_1002A656C@<X0>(uint64_t a1@<X0>, char ***a2@<X8>)
{
  result = *a1;
  {
    v6 = *(a1 + 8);
    *a2 = result;
    a2[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

void CLKappaFeaturesAlgShortAudio::CLKappaFeaturesAlgShortAudio(CLKappaFeaturesAlgShortAudio *this)
{
  *this = off_100411FE8;
  *(this + 8) = off_100412090;
  *(this + 9) = off_100412158;
  *(this + 10) = off_100412210;
  CLKappaAlgBlock::CLKappaAlgBlock(this, off_1004278A8);
  *v1 = off_100427358;
  *(v1 + 64) = off_100427618;
  *(v1 + 72) = off_100427760;
  *(v1 + 80) = off_100427850;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  operator new();
}

void sub_1002A6834(_Unwind_Exception *a1)
{
  v3 = *(v1 + 7);
  if (v3)
  {
    sub_100009A48(v3);
  }

  v4 = *(v1 + 5);
  if (v4)
  {
    sub_100009A48(v4);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_1004278A8);
  _Unwind_Resume(a1);
}

void CLKappaFeaturesAlgShortAudio::epochFinalize(CLKappaFeaturesAlgShortAudio *this)
{
  *(*(this + 4) + 20) = -1;
  v2 = +[CSPlatformInfo sharedInstance];
  v3 = [v2 isMDevice];

  if (v3)
  {

    CLKappaFeaturesAlgShortAudio::extractFeaturesFromTrustedStream(this);
  }

  else
  {

    CLKappaFeaturesAlgShortAudio::computeFeaturesFromSPL(this);
  }
}

void CLKappaFeaturesAlgShortAudio::extractFeaturesFromTrustedStream(CLKappaFeaturesAlgShortAudio *this)
{
  v3 = *(*(this + 6) + 88);
  if ([v3 count])
  {
    v2 = [v3 lastObject];
    *(*(this + 4) + 20) = *([v2 c_struct] + 47);
  }
}

void CLKappaFeaturesAlgShortAudio::computeFeaturesFromSPL(CLKappaFeaturesAlgShortAudio *this)
{
  v8 = *(*(this + 6) + 80);
  v2 = [v8 count];
  v3 = v2;
  if (v2)
  {
    v4 = 0;
    v5 = -1;
    do
    {
      v6 = [v8 objectAtIndex:v4];
      v7 = *([v6 c_struct] + 2);
      if ((LODWORD(v7) & 0x7FFFFFFFu) >= 0x7F800000)
      {
        v7 = 0.0;
      }

      if (v7 < 0.0)
      {
        v7 = 0.0;
      }

      if (v7 > 1.0)
      {
        v7 = 1.0;
      }

      if (v7 > 0.5)
      {
        ++v5;
      }

      ++v4;
    }

    while (v3 != v4);
    *(*(this + 4) + 20) = v5;
  }
}

void sub_1002A6B4C(CLKappaAlgBlock *this)
{
  *this = off_100427358;
  *(this + 8) = off_100427618;
  *(this + 9) = off_100427760;
  *(this + *(*this - 176)) = off_100427850;
  v2 = *(this + 7);
  if (v2)
  {
    sub_100009A48(v2);
  }

  v3 = *(this + 5);
  if (v3)
  {
    sub_100009A48(v3);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(this, off_1004278A8);
}

void sub_1002A6C48(CLKappaAlgBlock *this)
{
  *this = off_100427358;
  *(this + 8) = off_100427618;
  *(this + 9) = off_100427760;
  *(this + 10) = off_100427850;
  v2 = *(this + 7);
  if (v2)
  {
    sub_100009A48(v2);
  }

  v3 = *(this + 5);
  if (v3)
  {
    sub_100009A48(v3);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(this, off_1004278A8);

  operator delete();
}

void sub_1002A6D2C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 56);
  *(a1 + 48) = v3;
  *(a1 + 56) = v2;
  if (v4)
  {
    sub_100009A48(v4);
  }
}

void sub_1002A6D58(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_100427358;
  *(v1 + 8) = off_100427618;
  *(v1 + 9) = off_100427760;
  *(v1 + 10) = off_100427850;
  v2 = *(v1 + 7);
  if (v2)
  {
    sub_100009A48(v2);
  }

  v3 = *(v1 + 5);
  if (v3)
  {
    sub_100009A48(v3);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_1004278A8);
}

void sub_1002A6E3C(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_100427358;
  *(v1 + 8) = off_100427618;
  *(v1 + 9) = off_100427760;
  *(v1 + 10) = off_100427850;
  v2 = *(v1 + 7);
  if (v2)
  {
    sub_100009A48(v2);
  }

  v3 = *(v1 + 5);
  if (v3)
  {
    sub_100009A48(v3);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_1004278A8);

  operator delete();
}

void sub_1002A6F34(void *a1, uint64_t *a2)
{
  v2 = a1 + *(*a1 - 32);
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(v2 + 7);
  *(v2 + 6) = v4;
  *(v2 + 7) = v3;
  if (v5)
  {
    sub_100009A48(v5);
  }
}

void sub_1002A6F74(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_100427358;
  *(v1 + 8) = off_100427618;
  *(v1 + 9) = off_100427760;
  *(v1 + 10) = off_100427850;
  v2 = *(v1 + 7);
  if (v2)
  {
    sub_100009A48(v2);
  }

  v3 = *(v1 + 5);
  if (v3)
  {
    sub_100009A48(v3);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_1004278A8);
}

void sub_1002A7058(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_100427358;
  *(v1 + 8) = off_100427618;
  *(v1 + 9) = off_100427760;
  *(v1 + 10) = off_100427850;
  v2 = *(v1 + 7);
  if (v2)
  {
    sub_100009A48(v2);
  }

  v3 = *(v1 + 5);
  if (v3)
  {
    sub_100009A48(v3);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_1004278A8);

  operator delete();
}

void sub_1002A7150(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_100427358;
  *(v1 + 8) = off_100427618;
  *(v1 + 9) = off_100427760;
  *(v1 + 10) = off_100427850;
  v2 = *(v1 + 7);
  if (v2)
  {
    sub_100009A48(v2);
  }

  v3 = *(v1 + 5);
  if (v3)
  {
    sub_100009A48(v3);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_1004278A8);
}

void sub_1002A7234(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_100427358;
  *(v1 + 8) = off_100427618;
  *(v1 + 9) = off_100427760;
  *(v1 + 10) = off_100427850;
  v2 = *(v1 + 7);
  if (v2)
  {
    sub_100009A48(v2);
  }

  v3 = *(v1 + 5);
  if (v3)
  {
    sub_100009A48(v3);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_1004278A8);

  operator delete();
}

void sub_1002A734C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100427F10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t CLKappaEstimatesAlgHighSpeedCrashResult::reset(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 12) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 52) = 0;
  *(this + 68) = 0;
  *(this + 60) = 0;
  *(this + 76) = 0;
  return this;
}

void CLKappaEstimatesAlgHighSpeedCrashResult::log(CLKappaEstimatesAlgHighSpeedCrashResult *this)
{
  if (qword_1004567F8 != -1)
  {
    sub_1002A8DD8();
  }

  v2 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 5);
    v4 = *(this + 32);
    v5 = *(this + 4);
    v6 = *(this + 5);
    v7 = *(this + 6);
    v8 = *(this + 48);
    v9 = *(this + 13);
    v10 = *(this + 14);
    v11 = *(this + 15);
    v12 = *(this + 16);
    v13 = *(this + 17);
    v14 = *(this + 72);
    v15 = *(this + 73);
    v16 = *(this + 74);
    v17 = *(this + 75);
    v18 = *(this + 76);
    v19 = 134352896;
    v20 = v3;
    v21 = 1026;
    v22 = v4;
    v23 = 2050;
    v24 = v5;
    v25 = 2050;
    v26 = v6;
    v27 = 1026;
    v28 = v7;
    v29 = 1026;
    v30 = v8;
    v31 = 1026;
    v32 = v9;
    v33 = 1026;
    v34 = v10;
    v35 = 1026;
    v36 = v11;
    v37 = 1026;
    v38 = v12;
    v39 = 1026;
    v40 = v13;
    v41 = 1026;
    v42 = v14;
    v43 = 1026;
    v44 = v15;
    v45 = 1026;
    v46 = v16;
    v47 = 1026;
    v48 = v17;
    v49 = 1026;
    v50 = v18;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[HSC] summary,A,%{public}llu,B,%{public}d,config-1,%{public}f,config-2,%{public}f,config-3,%{public}u,debug-1,%{public}d,debug-2a,%{public}d,debug-2b,%{public}d,debug-2c,%{public}d,debug-2d,%{public}d,debug-2e,%{public}d,debug-3a,%{public}d,debug-3b,%{public}d,debug-3c,%{public}d,debug-3d,%{public}d,debug-3e,%{public}d\n", &v19, 0x6Eu);
  }
}

void CLKappaEstimatesAlgHighSpeedCrash::CLKappaEstimatesAlgHighSpeedCrash(CLKappaEstimatesAlgHighSpeedCrash *this, uint64_t *a2)
{
  CLKappaAlgBlock::CLKappaAlgBlock(this, a2 + 1);
  v4 = *a2;
  *v5 = *a2;
  *(this + *(v4 - 152)) = a2[6];
  *(this + *(*this - 160)) = a2[7];
  *(this + *(*this - 168)) = a2[8];
  *(this + *(*this - 176)) = a2[9];
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 46) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 7) = 0;
  *(this + 40) = 0;
  operator new();
}

void sub_1002A7854(_Unwind_Exception *a1)
{
  v4 = *(v1 + 5);
  if (v4)
  {
    sub_100009A48(v4);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, (v2 + 8));
  _Unwind_Resume(a1);
}

char **sub_1002A787C@<X0>(uint64_t a1@<X0>, char ***a2@<X8>)
{
  result = *a1;
  {
    v6 = *(a1 + 8);
    *a2 = result;
    a2[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

void CLKappaEstimatesAlgHighSpeedCrash::CLKappaEstimatesAlgHighSpeedCrash(CLKappaEstimatesAlgHighSpeedCrash *this)
{
  *this = off_100411FE8;
  *(this + 11) = off_100412090;
  *(this + 12) = off_100412158;
  *(this + 13) = off_100412210;
  CLKappaAlgBlock::CLKappaAlgBlock(this, off_100428550);
  *v1 = off_100428000;
  *(v1 + 88) = off_1004282C0;
  *(v1 + 96) = off_100428408;
  *(v1 + 104) = off_1004284F8;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 46) = 0;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  *(v1 + 56) = 0;
  *(v1 + 80) = 0;
  operator new();
}

void sub_1002A7B78(_Unwind_Exception *a1)
{
  v3 = *(v1 + 5);
  if (v3)
  {
    sub_100009A48(v3);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_100428550);
  _Unwind_Resume(a1);
}

void CLKappaEstimatesAlgHighSpeedCrash::resetConfiguration(CLKappaEstimatesAlgHighSpeedCrash *this)
{
  v17 = [CSPersistentConfiguration configBaseKey:"EstimatesAlgHighSpeedCrashConfig" forFeatureMode:*(this + 24)];
  v2 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v3) = -30.0;
  LODWORD(v4) = -5.0;
  LODWORD(v5) = -25.0;
  [v2 algorithmThresholdNumber:0 inArrayForKey:v17 withMinValue:v3 maxValue:v4 defaultValue:v5];
  LODWORD(v18) = v6;

  v7 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v8) = 5.0;
  LODWORD(v9) = 30.0;
  LODWORD(v10) = 15.0;
  [v7 algorithmThresholdNumber:1 inArrayForKey:v17 withMinValue:v8 maxValue:v9 defaultValue:v10];
  HIDWORD(v18) = v11;

  v12 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v13) = 2.0;
  LODWORD(v14) = 15.0;
  LODWORD(v15) = 9.0;
  [v12 algorithmThresholdNumber:2 inArrayForKey:v17 withMinValue:v13 maxValue:v14 defaultValue:v15];
  v19 = v16;

  CLKappaEstimatesAlgHighSpeedCrash::setConfig(this, &v18);
}

double CLKappaEstimatesAlgHighSpeedCrash::setConfig(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 32);
  v4 = *a2;
  *(v3 + 24) = *(a2 + 2);
  *(v3 + 16) = v4;
  if (qword_1004567F8 != -1)
  {
    sub_1002A8DD8();
  }

  v5 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 32);
    v8 = *(v7 + 16);
    v9 = *(v7 + 20);
    v10 = 134218240;
    v11 = v8;
    v12 = 2048;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[HSC] config, %f, %f", &v10, 0x16u);
  }

  return result;
}

uint64_t CLKappaEstimatesAlgHighSpeedCrash::reset(CLKappaEstimatesAlgHighSpeedCrash *this)
{
  result = (*(**(this + 4) + 24))(*(this + 4));
  *(this + 26) = 0;
  *(this + 12) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 18) = 0;
  return result;
}

uint64_t CLKappaEstimatesAlgHighSpeedCrash::resetCounters(uint64_t this)
{
  *(this + 52) = 0;
  *(this + 48) = 0;
  *(this + 56) = 0;
  *(this + 64) = 0;
  *(this + 72) = 0;
  return this;
}

void CLKappaEstimatesAlgHighSpeedCrash::epochFinalize(CLKappaEstimatesAlgHighSpeedCrash *this, uint64_t a2)
{
  if (qword_1004567F8 != -1)
  {
    sub_1002A8DD8();
  }

  v4 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_INFO))
  {
    v5 = *(this + 81);
    v6 = *(this + 76);
    v7 = *(this + 77);
    v8 = *(this + 78);
    v9 = *(this + 79);
    v10 = *(this + 80);
    v11 = *(this + 49);
    v12 = *(this + 50);
    v13 = *(this + 51);
    v14 = *(this + 52);
    v15 = *(this + 53);
    v33 = 67111680;
    v34 = v5;
    v35 = 1024;
    v36 = v6;
    v37 = 1024;
    v38 = v7;
    v39 = 1024;
    v40 = v8;
    v41 = 1024;
    v42 = v9;
    v43 = 1024;
    v44 = v10;
    v45 = 1024;
    v46 = v11;
    v47 = 1024;
    v48 = v12;
    v49 = 1024;
    v50 = v13;
    v51 = 1024;
    v52 = v14;
    v53 = 1024;
    v54 = v15;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[HSC] force %d %d %d %d %d %d is %d %d %d %d %d", &v33, 0x44u);
  }

  if (*(this + 49) == 1)
  {
    v16 = *(*(this + 4) + 24);
  }

  else
  {
    v17 = *(this + 14);
    v18 = v17 != 0;
    v16 = v17 - 1;
    if (!v18)
    {
      v16 = 0;
    }
  }

  *(this + 14) = v16;
  v19 = this + 56;
  if (*(this + 50) == 1)
  {
    v20 = *(*(this + 4) + 24);
  }

  else
  {
    v21 = *(this + 15);
    v18 = v21 != 0;
    v20 = v21 - 1;
    if (!v18)
    {
      v20 = 0;
    }
  }

  *(this + 15) = v20;
  if (*(this + 51) == 1)
  {
    v22 = *(*(this + 4) + 24);
  }

  else
  {
    v23 = *(this + 16);
    v18 = v23 != 0;
    v22 = v23 - 1;
    if (!v18)
    {
      v22 = 0;
    }
  }

  *(this + 16) = v22;
  if (*(this + 52) == 1)
  {
    v24 = *(*(this + 4) + 24);
  }

  else
  {
    v25 = *(this + 17);
    v18 = v25 != 0;
    v24 = v25 - 1;
    if (!v18)
    {
      v24 = 0;
    }
  }

  *(this + 17) = v24;
  if (*(this + 53) == 1)
  {
    v26 = *(*(this + 4) + 24);
  }

  else
  {
    v27 = *(this + 18);
    v18 = v27 != 0;
    v26 = v27 - 1;
    if (!v18)
    {
      v26 = 0;
    }
  }

  *(this + 18) = v26;
  v28 = *(this + 81);
  if (v28 == 1)
  {
    *(this + 81) = 0;
  }

  if (qword_1004567F8 != -1)
  {
    sub_1002A8DEC();
  }

  v29 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEFAULT))
  {
    v33 = 67240192;
    v34 = v28;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "[HSC] decision %{public}d", &v33, 8u);
  }

  v31 = *(this + 48);
  v30 = this + 48;
  v32 = *(v30 - 2);
  *(v32 + 40) = a2;
  *(v32 + 32) = v28;
  *(v32 + 48) = v31;
  *(v32 + 52) = *(v30 + 8);
  *(v32 + 68) = *(v30 + 6);
  *(v32 + 72) = *(v30 + 1);
  *(v32 + 76) = v30[5];
  if (v28)
  {
    *(v30 + 2) = 0;
    *v30 = 0;
    *v19 = 0;
    *(v19 + 1) = 0;
    *(v19 + 4) = 0;
  }
}

void CLKappaEstimatesAlgHighSpeedCrash::feedFeatures(uint64_t a1, _BYTE *a2)
{
  if (*(a1 + 76) == 1)
  {
    if (qword_1004567F8 != -1)
    {
      sub_1002A8DD8();
    }

    v3 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[HSC] forcing pu", v4, 2u);
    }

    *(a1 + 49) = 1;
    *(a1 + 76) = 0;
  }

  else
  {
    *(a1 + 49) = *a2;
  }
}

void CLKappaEstimatesAlgHighSpeedCrash::feedFeatures(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 78) == 1)
  {
    if (qword_1004567F8 != -1)
    {
      sub_1002A8DD8();
    }

    v3 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[HSC] forcing ba", v4, 2u);
    }

    *(a1 + 51) = 1;
    *(a1 + 78) = 0;
  }

  else
  {
    *(a1 + 51) = *(a2 + 52) != 0;
  }
}

{
  if (*(a1 + 77) == 1)
  {
    if (qword_1004567F8 != -1)
    {
      sub_1002A8DD8();
    }

    v3 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[HSC] forcing ff", v4, 2u);
    }

    *(a1 + 50) = 1;
    *(a1 + 77) = 0;
  }

  else
  {
    *(a1 + 50) = *(a2 + 44);
  }
}

{
  if (*(a1 + 80) == 1)
  {
    if (qword_1004567F8 != -1)
    {
      sub_1002A8DD8();
    }

    v3 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[HSC] forcing gp", v4, 2u);
    }

    *(a1 + 53) = 1;
    *(a1 + 80) = 0;
  }

  else
  {
    *(a1 + 53) = *(a2 + 8);
  }
}

void virtual thunk toCLKappaEstimatesAlgHighSpeedCrash::feedFeatures(void *a1, uint64_t a2)
{
  CLKappaEstimatesAlgHighSpeedCrash::feedFeatures(a1 + *(*a1 - 56), a2);
}

{
  CLKappaEstimatesAlgHighSpeedCrash::feedFeatures(a1 + *(*a1 - 88), a2);
}

{
  CLKappaEstimatesAlgHighSpeedCrash::feedFeatures(a1 + *(*a1 - 112), a2);
}

{
  CLKappaEstimatesAlgHighSpeedCrash::feedFeatures(a1 + *(*a1 - 72), a2);
}

void CLKappaEstimatesAlgHighSpeedCrash::feedFeatures(_BYTE *a1, uint64_t a2)
{
  if (a1[79] == 1)
  {
    if (qword_1004567F8 != -1)
    {
      sub_1002A8DD8();
    }

    v4 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[HSC] forcing au", v5, 2u);
    }

    a1[52] = 1;
    a1[79] = 0;
  }

  else
  {
    a1[52] = *(a2 + 29);
  }

  a1[48] = *(a2 + 8) > 0.0;
}

uint64_t CLKappaEstimatesAlgHighSpeedCrash::epochReset(uint64_t this)
{
  if ((*(this + 76) & 1) == 0)
  {
    *(this + 49) = 0;
  }

  if ((*(this + 77) & 1) == 0)
  {
    *(this + 50) = 0;
  }

  if ((*(this + 78) & 1) == 0)
  {
    *(this + 51) = 0;
  }

  if ((*(this + 79) & 1) == 0)
  {
    *(this + 52) = 0;
  }

  if ((*(this + 80) & 1) == 0)
  {
    *(this + 53) = 0;
  }

  *(this + 48) = 0;
  v1 = *(this + 32);
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 52) = 0;
  *(v1 + 68) = 0;
  *(v1 + 60) = 0;
  *(v1 + 76) = 0;
  return this;
}

void sub_1002A8598(CLKappaAlgBlock *this)
{
  *this = off_100428000;
  *(this + 11) = off_1004282C0;
  *(this + 12) = off_100428408;
  *(this + *(*this - 176)) = off_1004284F8;
  v2 = *(this + 5);
  if (v2)
  {
    sub_100009A48(v2);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(this, off_100428550);
}

void sub_1002A8688(CLKappaAlgBlock *this)
{
  *this = off_100428000;
  *(this + 11) = off_1004282C0;
  *(this + 12) = off_100428408;
  *(this + 13) = off_1004284F8;
  v2 = *(this + 5);
  if (v2)
  {
    sub_100009A48(v2);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(this, off_100428550);

  operator delete();
}

void sub_1002A8788(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_100428000;
  *(v1 + 11) = off_1004282C0;
  *(v1 + 12) = off_100428408;
  *(v1 + 13) = off_1004284F8;
  v2 = *(v1 + 5);
  if (v2)
  {
    sub_100009A48(v2);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_100428550);
}

void sub_1002A8860(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_100428000;
  *(v1 + 11) = off_1004282C0;
  *(v1 + 12) = off_100428408;
  *(v1 + 13) = off_1004284F8;
  v2 = *(v1 + 5);
  if (v2)
  {
    sub_100009A48(v2);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_100428550);

  operator delete();
}

void sub_1002A894C(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_100428000;
  *(v1 + 11) = off_1004282C0;
  *(v1 + 12) = off_100428408;
  *(v1 + 13) = off_1004284F8;
  v2 = *(v1 + 5);
  if (v2)
  {
    sub_100009A48(v2);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_100428550);
}

void sub_1002A8A24(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_100428000;
  *(v1 + 11) = off_1004282C0;
  *(v1 + 12) = off_100428408;
  *(v1 + 13) = off_1004284F8;
  v2 = *(v1 + 5);
  if (v2)
  {
    sub_100009A48(v2);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_100428550);

  operator delete();
}

void sub_1002A8B34(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_100428000;
  *(v1 + 11) = off_1004282C0;
  *(v1 + 12) = off_100428408;
  *(v1 + 13) = off_1004284F8;
  v2 = *(v1 + 5);
  if (v2)
  {
    sub_100009A48(v2);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_100428550);
}

void sub_1002A8C0C(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_100428000;
  *(v1 + 11) = off_1004282C0;
  *(v1 + 12) = off_100428408;
  *(v1 + 13) = off_1004284F8;
  v2 = *(v1 + 5);
  if (v2)
  {
    sub_100009A48(v2);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_100428550);

  operator delete();
}

void sub_1002A8CF8(id a1)
{
  qword_100456800 = os_log_create("com.apple.anomalydetectiond", "Alg");

  _objc_release_x1();
}

void sub_1002A8D5C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100428BD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

double CLKappaFeaturesAlgLocalAudioResult::log(CLKappaFeaturesAlgLocalAudioResult *this)
{
  if (qword_1004567F8 != -1)
  {
    sub_1002AB554();
  }

  v2 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(this + 101);
    v5 = *(this + 20);
    v6 = *(this + 21);
    v7 = *(this + 22);
    v8 = *(this + 23);
    v9 = *(this + 96);
    v10 = *(this + 97);
    v11 = *(this + 98);
    v12 = *(this + 99);
    v13 = *(this + 100);
    v14 = *(this + 168);
    v15 = *(this + 43);
    v17 = *(this + 22);
    v16 = *(this + 23);
    v18 = *(this + 52);
    v19 = *(this + 56);
    v20 = *(this + 4);
    v21 = *(this + 5);
    v22 = *(this + 6);
    v23 = *(this + 7);
    v25 = *(this + 8);
    v24 = *(this + 9);
    v26 = *(this + 16);
    v27 = *(this + 121);
    v28 = *(this + 26);
    v29 = *(this + 27);
    v30 = *(this + 28);
    v31 = *(this + 116);
    v32 = *(this + 117);
    v33 = *(this + 118);
    v34 = *(this + 119);
    v35 = *(this + 120);
    v36 = *(this + 60);
    v37 = *(this + 64);
    v38 = *(this + 10);
    v39 = *(this + 11);
    v40 = *(this + 12);
    v41 = *(this + 13);
    v43 = *(this + 14);
    v42 = *(this + 15);
    v44[0] = 67250176;
    v44[1] = v4;
    v45 = 2050;
    v46 = v5;
    v47 = 2050;
    v48 = v6;
    v49 = 2050;
    v50 = v7;
    v51 = 2050;
    v52 = v8;
    v53 = 1026;
    v54 = v9;
    v55 = 1026;
    v56 = v10;
    v57 = 1026;
    v58 = v11;
    v59 = 1026;
    v60 = v12;
    v61 = 1026;
    v62 = v13;
    v63 = 1026;
    v64 = v14;
    v65 = 1026;
    v66 = v15;
    v67 = 2050;
    v68 = v17;
    v69 = 2050;
    v70 = v16;
    v71 = 2050;
    v72 = v18;
    v73 = 2050;
    v74 = v19;
    v75 = 2050;
    v76 = v20;
    v77 = 2050;
    v78 = v21;
    v79 = 2050;
    v80 = v22;
    v81 = 2050;
    v82 = v23;
    v83 = 1026;
    v84 = v25;
    v85 = 1026;
    v86 = v24;
    v87 = 2050;
    v88 = v26;
    v89 = 1026;
    v90 = v27;
    v91 = 2050;
    v92 = v28;
    v93 = 2050;
    v94 = v29;
    v95 = 2050;
    v96 = v30;
    v97 = 1026;
    v98 = v31;
    v99 = 1026;
    v100 = v32;
    v101 = 1026;
    v102 = v33;
    v103 = 1026;
    v104 = v34;
    v105 = 1026;
    v106 = v35;
    v107 = 2050;
    v108 = v36;
    v109 = 2050;
    v110 = v37;
    v111 = 2050;
    v112 = v38;
    v113 = 2050;
    v114 = v39;
    v115 = 2050;
    v116 = v40;
    v117 = 2050;
    v118 = v41;
    v119 = 1026;
    v120 = v43;
    v121 = 1026;
    v122 = v42;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[LA] summary,%{public}d,A,%{public}f,B,%{public}f,C,%{public}f,D,%{public}f,E,%{public}d,F,%{public}d,G,%{public}d,H,%{public}d,I,%{public}d,debug-1,%{public}d,debug-2,%{public}d,debug-3,%{public}llu,debug-4,%{public}llu,debug-5,%{public}f,debug-6,%{public}f,config-1,%{public}f,config-2,%{public}f,config-3,%{public}f,config-4,%{public}f,config-5,%{public}d,config-6,%{public}d,config-7,%{public}f,J,%{public}d,K,%{public}f,L,%{public}f,M,%{public}f,N,%{public}d,O,%{public}d,P,%{public}d,Q,%{public}d,R,%{public}d,debug-7,%{public}f,debug-8,%{public}f,config-8,%{public}f,config-9,%{public}f,config-10,%{public}f,config-11,%{public}f,config-12,%{public}d,config-13,%{public}d", v44, 0x14Au);
  }

  return result;
}

void CLKappaFeaturesAlgLocalAudio::CLKappaFeaturesAlgLocalAudio(CLKappaFeaturesAlgLocalAudio *this, uint64_t *a2)
{
  CLKappaAlgBlock::CLKappaAlgBlock(this, a2 + 1);
  v4 = *a2;
  *v5 = *a2;
  *(this + *(v4 - 152)) = a2[6];
  *(this + *(*this - 160)) = a2[7];
  *(this + *(*this - 168)) = a2[8];
  *(this + *(*this - 176)) = a2[9];
  *(this + 44) = 0;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  sub_1002AB3B0();
}

void sub_1002A938C(_Unwind_Exception *a1)
{
  v4 = *(v1 + 41);
  if (v4)
  {
    *(v1 + 42) = v4;
    operator delete(v4);
  }

  v5 = *(v1 + 38);
  if (v5)
  {
    *(v1 + 39) = v5;
    operator delete(v5);
  }

  v6 = *(v1 + 35);
  if (v6)
  {
    *(v1 + 36) = v6;
    operator delete(v6);
  }

  v7 = *(v1 + 32);
  if (v7)
  {
    *(v1 + 33) = v7;
    operator delete(v7);
  }

  v8 = *(v1 + 29);
  if (v8)
  {
    *(v1 + 30) = v8;
    operator delete(v8);
  }

  v9 = *(v1 + 26);
  if (v9)
  {
    *(v1 + 27) = v9;
    operator delete(v9);
  }

  v10 = *(v1 + 23);
  if (v10)
  {
    *(v1 + 24) = v10;
    operator delete(v10);
  }

  v11 = *(v1 + 20);
  if (v11)
  {
    *(v1 + 21) = v11;
    operator delete(v11);
  }

  v12 = *(v1 + 17);
  if (v12)
  {
    *(v1 + 18) = v12;
    operator delete(v12);
  }

  v13 = *(v1 + 14);
  if (v13)
  {
    *(v1 + 15) = v13;
    operator delete(v13);
  }

  v14 = *(v1 + 11);
  if (v14)
  {
    *(v1 + 12) = v14;
    operator delete(v14);
  }

  v15 = *(v1 + 8);
  if (v15)
  {
    *(v1 + 9) = v15;
    operator delete(v15);
  }

  v16 = *(v1 + 7);
  if (v16)
  {
    sub_100009A48(v16);
  }

  v17 = *(v1 + 5);
  if (v17)
  {
    sub_100009A48(v17);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, (v2 + 8));
  _Unwind_Resume(a1);
}

char **sub_1002A9480@<X0>(uint64_t a1@<X0>, char ***a2@<X8>)
{
  result = *a1;
  {
    v6 = *(a1 + 8);
    *a2 = result;
    a2[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

void CLKappaFeaturesAlgLocalAudio::CLKappaFeaturesAlgLocalAudio(CLKappaFeaturesAlgLocalAudio *this)
{
  *this = off_100411FE8;
  *(this + 45) = off_100412090;
  *(this + 46) = off_100412158;
  *(this + 47) = off_100412210;
  CLKappaAlgBlock::CLKappaAlgBlock(this, off_100429218);
  *v1 = off_100428CC8;
  *(v1 + 360) = off_100428F88;
  *(v1 + 368) = off_1004290D0;
  *(v1 + 376) = off_1004291C0;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0u;
  *(v1 + 160) = 0u;
  *(v1 + 176) = 0u;
  *(v1 + 192) = 0u;
  *(v1 + 208) = 0u;
  *(v1 + 224) = 0u;
  *(v1 + 240) = 0u;
  *(v1 + 256) = 0u;
  *(v1 + 272) = 0u;
  *(v1 + 288) = 0u;
  *(v1 + 304) = 0u;
  *(v1 + 320) = 0u;
  *(v1 + 336) = 0u;
  *(v1 + 352) = 0;
  sub_1002AB3B0();
}

void sub_1002A9724(_Unwind_Exception *a1)
{
  v3 = *(v1 + 41);
  if (v3)
  {
    *(v1 + 42) = v3;
    operator delete(v3);
  }

  v4 = *(v1 + 38);
  if (v4)
  {
    *(v1 + 39) = v4;
    operator delete(v4);
  }

  v5 = *(v1 + 35);
  if (v5)
  {
    *(v1 + 36) = v5;
    operator delete(v5);
  }

  v6 = *(v1 + 32);
  if (v6)
  {
    *(v1 + 33) = v6;
    operator delete(v6);
  }

  v7 = *(v1 + 29);
  if (v7)
  {
    *(v1 + 30) = v7;
    operator delete(v7);
  }

  v8 = *(v1 + 26);
  if (v8)
  {
    *(v1 + 27) = v8;
    operator delete(v8);
  }

  v9 = *(v1 + 23);
  if (v9)
  {
    *(v1 + 24) = v9;
    operator delete(v9);
  }

  v10 = *(v1 + 20);
  if (v10)
  {
    *(v1 + 21) = v10;
    operator delete(v10);
  }

  v11 = *(v1 + 17);
  if (v11)
  {
    *(v1 + 18) = v11;
    operator delete(v11);
  }

  v12 = *(v1 + 14);
  if (v12)
  {
    *(v1 + 15) = v12;
    operator delete(v12);
  }

  v13 = *(v1 + 11);
  if (v13)
  {
    *(v1 + 12) = v13;
    operator delete(v13);
  }

  v14 = *(v1 + 8);
  if (v14)
  {
    *(v1 + 9) = v14;
    operator delete(v14);
  }

  v15 = *(v1 + 7);
  if (v15)
  {
    sub_100009A48(v15);
  }

  v16 = *(v1 + 5);
  if (v16)
  {
    sub_100009A48(v16);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_100429218);
  _Unwind_Resume(a1);
}

void CLKappaFeaturesAlgLocalAudio::resetConfiguration(CLKappaFeaturesAlgLocalAudio *this)
{
  v57 = [CSPersistentConfiguration configBaseKey:"FeaturesAlgLAConfig" forFeatureMode:*(this + 24)];
  v2 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v3) = *"ff&?33s?";
  LODWORD(v4) = 10.0;
  LODWORD(v5) = 1028443341;
  [v2 algorithmThresholdNumber:0 inArrayForKey:v57 withMinValue:v5 maxValue:v4 defaultValue:v3];
  LODWORD(v58) = v6;

  v7 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v8) = 1140457472;
  LODWORD(v9) = 1112014848;
  LODWORD(v10) = 10.0;
  [v7 algorithmThresholdNumber:1 inArrayForKey:v57 withMinValue:v10 maxValue:v8 defaultValue:v9];
  DWORD1(v58) = v11;

  v12 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v13) = 1120403456;
  LODWORD(v14) = 1.0;
  LODWORD(v15) = 17.0;
  [v12 algorithmThresholdNumber:2 inArrayForKey:v57 withMinValue:v14 maxValue:v13 defaultValue:v15];
  DWORD2(v58) = v16;

  v17 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v18) = 1140457472;
  LODWORD(v19) = 1120403456;
  LODWORD(v20) = 10.0;
  [v17 algorithmThresholdNumber:3 inArrayForKey:v57 withMinValue:v20 maxValue:v18 defaultValue:v19];
  HIDWORD(v58) = v21;

  v22 = +[CSPersistentConfiguration sharedConfiguration];
  v59 = [v22 algorithmIntegerNumber:4 inArrayForKey:v57 withMinValue:3 maxValue:128 defaultValue:21];

  v23 = +[CSPersistentConfiguration sharedConfiguration];
  v60 = [v23 algorithmIntegerNumber:5 inArrayForKey:v57 withMinValue:3 maxValue:2048 defaultValue:501];

  v24 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v25) = *"33s?";
  LODWORD(v26) = 2.0;
  LODWORD(v27) = 1028443341;
  [v24 algorithmThresholdNumber:6 inArrayForKey:v57 withMinValue:v27 maxValue:v26 defaultValue:v25];
  v67 = v28;

  v29 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v30) = 10.0;
  LODWORD(v31) = 0.75;
  LODWORD(v32) = 1028443341;
  [v29 algorithmThresholdNumber:7 inArrayForKey:v57 withMinValue:v32 maxValue:v30 defaultValue:v31];
  v61 = v33;

  v34 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v35) = 1140457472;
  LODWORD(v36) = 1124204544;
  LODWORD(v37) = 10.0;
  [v34 algorithmThresholdNumber:8 inArrayForKey:v57 withMinValue:v37 maxValue:v35 defaultValue:v36];
  v62 = v38;

  v39 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v40) = 1120403456;
  LODWORD(v41) = 1109393408;
  LODWORD(v42) = 1.0;
  [v39 algorithmThresholdNumber:9 inArrayForKey:v57 withMinValue:v42 maxValue:v40 defaultValue:v41];
  v63 = v43;

  v44 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v45) = 1140457472;
  LODWORD(v46) = 1137180672;
  LODWORD(v47) = 10.0;
  [v44 algorithmThresholdNumber:10 inArrayForKey:v57 withMinValue:v47 maxValue:v45 defaultValue:v46];
  v64 = v48;

  v49 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v50) = 3.0;
  LODWORD(v51) = 21.0;
  [v49 algorithmThresholdNumber:11 inArrayForKey:v57 withMinValue:v50 maxValue:5.62950094e14 defaultValue:v51];
  v65 = v52;

  v53 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v54) = *"";
  LODWORD(v55) = 3.0;
  [v53 algorithmThresholdNumber:12 inArrayForKey:v57 withMinValue:v55 maxValue:2.41785226e24 defaultValue:v54];
  v66 = v56;

  CLKappaFeaturesAlgLocalAudio::setConfig(this, &v58);
}

double CLKappaFeaturesAlgLocalAudio::setConfig(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 32);
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  *(v3 + 64) = *(a2 + 12);
  *(v3 + 32) = v5;
  *(v3 + 48) = v6;
  *(v3 + 16) = v4;
  if (qword_1004567F8 != -1)
  {
    sub_1002AB554();
  }

  v7 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
  {
    v9 = *a2;
    v10 = *(a2 + 1);
    v11 = *(a2 + 2);
    v12 = *(a2 + 3);
    v13 = *(a2 + 4);
    v14 = *(a2 + 5);
    v15 = *(a2 + 12);
    v16 = *(a2 + 6);
    v17 = *(a2 + 7);
    v18 = *(a2 + 8);
    v19 = *(a2 + 9);
    v20 = *(a2 + 10);
    v21 = *(a2 + 11);
    v22 = 134221056;
    v23 = v9;
    v24 = 2048;
    v25 = v10;
    v26 = 2048;
    v27 = v11;
    v28 = 2048;
    v29 = v12;
    v30 = 1024;
    v31 = v13;
    v32 = 1024;
    v33 = v14;
    v34 = 2048;
    v35 = v15;
    v36 = 2048;
    v37 = v16;
    v38 = 2048;
    v39 = v17;
    v40 = 2048;
    v41 = v18;
    v42 = 2048;
    v43 = v19;
    v44 = 1024;
    v45 = v20;
    v46 = 1024;
    v47 = v21;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[LA] config, %f, %f, %f, %f, %d, %d, %f, %f, %f, %f, %f, %d, %d\n", &v22, 0x74u);
  }

  return result;
}

double CLKappaFeaturesAlgLocalAudio::reset(CLKappaFeaturesAlgLocalAudio *this)
{
  (*(**(this + 4) + 24))(*(this + 4));
  v2 = *(this + 4);
  *(v2 + 72) = 0;
  *(v2 + 80) = 0;
  *(v2 + 94) = 0;
  *(v2 + 88) = 0;
  *(v2 + 104) = 0;
  *(v2 + 112) = 0;
  *(v2 + 120) = 0;
  result = 0.0;
  *(v2 + 128) = 0u;
  *(v2 + 144) = 0u;
  *(v2 + 160) = 0;
  *(this + 44) = 0;
  return result;
}

void CLKappaFeaturesAlgLocalAudio::epochFinalize(CLKappaFeaturesAlgLocalAudio *this, NSArray *a2)
{
  v4 = *(this + 4);
  *(v4 + 72) = 0;
  *(v4 + 80) = 0;
  *(v4 + 94) = 0;
  *(v4 + 88) = 0;
  *(v4 + 104) = 0;
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  *(v4 + 128) = 0u;
  *(v4 + 144) = 0u;
  *(v4 + 160) = 0;
  v5 = *(this + 44);
  v6 = *(this + 4);
  *(v6 + 168) = 0;
  *(v6 + 172) = 0;
  *(v6 + 176) = a2;
  *(v6 + 184) = v5;
  *(v6 + 216) = 0;
  *(v6 + 224) = 0;
  *(v6 + 232) = 0;
  *(v6 + 240) = 0;
  *(v6 + 248) = 0;
  *(v6 + 256) = 0;
  *(v6 + 264) = 0;
  *(v6 + 192) = 0;
  *(v6 + 200) = 0;
  *(v6 + 208) = 0;
  v10 = *(*(this + 6) + 96);
  if (!*(this + 44) && [v10 count])
  {
    v7 = [v10 objectAtIndex:0];
    *(this + 44) = [v7 timestamp];
  }

  *(*(this + 4) + 184) = *(this + 44);
  v8 = +[CSPlatformInfo sharedInstance];
  v9 = [v8 isMDevice];

  if (v9)
  {
    CLKappaFeaturesAlgLocalAudio::extractFeaturesFromTrustedStream(this, a2);
  }

  else
  {
    CLKappaFeaturesAlgLocalAudio::computeFeaturesFromSPL(this);
  }
}

void CLKappaFeaturesAlgLocalAudio::extractFeaturesFromTrustedStream(CLKappaFeaturesAlgLocalAudio *this, NSArray *a2)
{
  v4 = *(*(this + 6) + 88);
  v5 = TrustedAudioHelper::selectTrustedAudioResult(v4, a2);
  v6 = v5;
  if (v5)
  {
    v7 = [v5 c_struct];
    if (qword_1004567F8 != -1)
    {
      sub_1002AB554();
    }

    v8 = qword_100456800;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v13 = 134218240;
      v14 = [v6 timestamp];
      v15 = 2048;
      v16 = +[CSTimeManager SPU_estimate_current_timestamp];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "[LA] effts timestamp %llu now %llu", &v13, 0x16u);
    }

    v9 = *(this + 4);
    v10 = *(v7 + 2);
    *(v9 + 80) = *(v7 + 46);
    *(v9 + 84) = v10;
    v11 = *(v7 + 14);
    *(v9 + 88) = *(v7 + 8);
    *(v9 + 92) = v11;
    *(v9 + 101) = v7[80];
    v12 = *(v7 + 28);
    *(v9 + 104) = *(v7 + 22);
    *(v9 + 108) = v12;
    *(v9 + 112) = *(v7 + 34);
    *(v9 + 121) = v7[160];
    *(v9 + 168) = 1;
    *(v9 + 172) = *(v7 + 48);
    *(v9 + 192) = *(v7 + 200);
    *(v9 + 208) = *(v7 + 6);
    *(v9 + 216) = *(v7 + 2);
    *(v9 + 224) = *(v7 + 12);
    *(v9 + 232) = *(v7 + 5);
    *(v9 + 240) = *(v7 + 26);
    *(v9 + 248) = *(v7 + 12);
    *(v9 + 256) = *(v7 + 32);
    *(v9 + 264) = *(v7 + 15);
  }
}

void CLKappaFeaturesAlgLocalAudio::computeFeaturesFromSPL(CLKappaFeaturesAlgLocalAudio *this)
{
  v1 = this;
  v2 = *(*(this + 6) + 80);
  v3 = *(v1 + 4);
  v164 = *(v3 + 64);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v156 = v5;
  v157 = *(v3 + 20);
  v155 = *(v3 + 28);
  v6 = *(v3 + 32);
  v7 = *(v3 + 36);
  v8 = *(v3 + 40);
  v9 = *(v3 + 44);
  v10 = *(v3 + 48);
  v11 = *(v3 + 52);
  v12 = *(v3 + 56);
  v13 = *(v3 + 60);
  v171 = v2;
  v14 = [v2 count];
  v15 = v14;
  *(*(v1 + 4) + 172) = v14;
  if (v14)
  {
    v16 = v14;
    sub_1002AAD30(v1 + 8, v14);
    sub_1002AAD30(v1 + 11, v15);
    sub_1002AAD30(v1 + 14, v15);
    v167 = v7 / 2;
    v168 = v1;
    v170 = v15;
    v158 = v15;
    if (v15 >= 1)
    {
      v162 = v13;
      v165 = v12;
      v17 = 0;
      v18 = v6 / 2;
      v19 = v6 / -2;
      v20 = v15 & 0x7FFFFFFF;
      do
      {
        v21 = v17 + 1;
        v22 = v18 + v17 + 1;
        if (v22 >= v170)
        {
          v23 = v170;
        }

        else
        {
          v23 = v22;
        }

        v24 = [v171 objectAtIndex:(v17 - v18) & ~((v17 - v18) >> 31)];
        v25 = *([v24 c_struct] + 2);
        if ((LODWORD(v25) & 0x7FFFFFFFu) >= 0x7F800000)
        {
          v25 = 0.0;
        }

        if (v25 < 0.0)
        {
          v25 = 0.0;
        }

        if (v25 <= 1.0)
        {
          v26 = v25;
        }

        else
        {
          v26 = 1.0;
        }

        if (((v17 - v18) & ~((v17 - v18) >> 31)) >= v23)
        {
          v28 = v24;
        }

        else
        {
          v27 = v19 & ~(v19 >> 31);
          do
          {
            v28 = [v171 objectAtIndex:v27];

            v29 = *([v28 c_struct] + 2);
            if ((LODWORD(v29) & 0x7FFFFFFFu) >= 0x7F800000)
            {
              v29 = 0.0;
            }

            if (v29 < 0.0)
            {
              v29 = 0.0;
            }

            if (v29 > 1.0)
            {
              v29 = 1.0;
            }

            if (v26 < v29)
            {
              v26 = v29;
            }

            ++v27;
            v24 = v28;
          }

          while (v27 < v23);
        }

        *(*(v168 + 8) + 4 * v17) = v26;
        *(*(v168 + 11) + 4 * v17) = v26 * v26;

        ++v19;
        ++v17;
      }

      while (v21 != v20);
      v30 = 0;
      v1 = v168;
      v31 = *(v168 + 14);
      v12 = v165;
      v32 = -v167;
      v16 = v158;
      v13 = v162;
      do
      {
        v33 = v30 + 1;
        LODWORD(v34) = v167 + v30 + 1;
        if (v34 >= v170)
        {
          v34 = v170;
        }

        else
        {
          v34 = v34;
        }

        v35 = 0.0;
        if (((v30 - v167) & ~((v30 - v167) >> 31)) < v34)
        {
          v36 = v32 & ~(v32 >> 31);
          do
          {
            v35 = v35 + *(*(v168 + 11) + 4 * v36++);
          }

          while (v36 < v34);
        }

        *(v31 + 4 * v30) = v35;
        ++v32;
        ++v30;
      }

      while (v33 != v20);
    }

    sub_1002AAD30(v1 + 29, v16);
    sub_1002AAD30(v1 + 32, v16);
    sub_1002AAD30(v1 + 35, v16);
    v166 = v13 / 2;
    if (v170 >= 1)
    {
      v37 = 0;
      v38 = v12 / 2;
      v39 = v12 / -2;
      v40 = v170 & 0x7FFFFFFF;
      do
      {
        v41 = v37 + 1;
        v42 = v38 + v37 + 1;
        if (v42 >= v170)
        {
          v43 = v170;
        }

        else
        {
          v43 = v42;
        }

        v44 = [v171 objectAtIndex:(v37 - v38) & ~((v37 - v38) >> 31)];
        v45 = *([v44 c_struct] + 2);
        if ((LODWORD(v45) & 0x7FFFFFFFu) >= 0x7F800000)
        {
          v45 = 0.0;
        }

        if (v45 < 0.0)
        {
          v45 = 0.0;
        }

        if (v45 <= 1.0)
        {
          v46 = v45;
        }

        else
        {
          v46 = 1.0;
        }

        if (((v37 - v38) & ~((v37 - v38) >> 31)) >= v43)
        {
          v48 = v44;
        }

        else
        {
          v47 = v39 & ~(v39 >> 31);
          do
          {
            v48 = [v171 objectAtIndex:v47];

            v49 = *([v48 c_struct] + 2);
            if ((LODWORD(v49) & 0x7FFFFFFFu) >= 0x7F800000)
            {
              v49 = 0.0;
            }

            if (v49 < 0.0)
            {
              v49 = 0.0;
            }

            if (v49 > 1.0)
            {
              v49 = 1.0;
            }

            if (v46 < v49)
            {
              v46 = v49;
            }

            ++v47;
            v44 = v48;
          }

          while (v47 < v43);
        }

        *(*(v168 + 29) + 4 * v37) = v46;
        *(*(v168 + 32) + 4 * v37) = v46 * v46;

        ++v39;
        ++v37;
      }

      while (v41 != v40);
      v50 = 0;
      v1 = v168;
      v51 = *(v168 + 35);
      v52 = -v166;
      v16 = v158;
      do
      {
        v53 = v50 + 1;
        LODWORD(v54) = v166 + v50 + 1;
        if (v54 >= v170)
        {
          v54 = v170;
        }

        else
        {
          v54 = v54;
        }

        v55 = 0.0;
        if (((v50 - v166) & ~((v50 - v166) >> 31)) < v54)
        {
          v56 = v52 & ~(v52 >> 31);
          do
          {
            v55 = v55 + *(*(v168 + 32) + 4 * v56++);
          }

          while (v56 < v54);
        }

        *(v51 + 4 * v50) = v55;
        ++v52;
        ++v50;
      }

      while (v53 != v40);
    }

    sub_1002AAD30(v1 + 20, v16);
    sub_1002AAD30(v1 + 17, v16);
    sub_1002AAD30(v1 + 38, v16);
    **(v1 + 17) = 0;
    if (v170 > 1)
    {
      v57 = 1;
      do
      {
        v58 = [v171 objectAtIndex:v57];
        v59 = v57 - 1;
        v60 = [v171 objectAtIndex:v57 - 1];
        v61 = *([v58 c_struct] + 2);
        v62 = [v60 c_struct];
        if ((LODWORD(v61) & 0x7FFFFFFFu) >= 0x7F800000)
        {
          v63 = 0.0;
        }

        else
        {
          v63 = v61;
        }

        if (v63 < 0.0)
        {
          v63 = 0.0;
        }

        if (v63 > 1.0)
        {
          v63 = 1.0;
        }

        v64 = v62[2];
        if ((LODWORD(v64) & 0x7FFFFFFFu) >= 0x7F800000)
        {
          v64 = 0.0;
        }

        if (v64 < 0.0)
        {
          v64 = 0.0;
        }

        if (v64 > 1.0)
        {
          v64 = 1.0;
        }

        *(*(v1 + 17) + 4 * v57) = vabds_f32(v63, v64);

        ++v57;
      }

      while (v59 + 2 != (v170 & 0x7FFFFFFF));
    }

    v153 = v9;
    v154 = v8;
    v152 = v10;
    v151 = __PAIR64__(v11, v4);
    if (v170 < 1)
    {
      v83 = 0;
      v160 = 0;
      v82 = 0;
      v81 = 0;
      v161 = 0;
      v163 = 0;
      v169 = 0;
      v88 = 0.0;
      v87 = 0.0;
      v159 = 0;
      v86 = 0.0;
      v85 = 0.0;
      v84 = 0.0;
    }

    else
    {
      v65 = 0;
      v66 = *(v1 + 20);
      v67 = -v167;
      v68 = v170 & 0x7FFFFFFF;
      do
      {
        v69 = v65 + 1;
        LODWORD(v70) = v167 + v65 + 1;
        if (v70 >= v170)
        {
          v70 = v170;
        }

        else
        {
          v70 = v70;
        }

        v71 = 0.0;
        if (((v65 - v167) & ~((v65 - v167) >> 31)) < v70)
        {
          v72 = v67 & ~(v67 >> 31);
          do
          {
            v71 = v71 + *(*(v1 + 17) + 4 * v72++);
          }

          while (v72 < v70);
        }

        *(v66 + 4 * v65) = v71;
        ++v67;
        ++v65;
      }

      while (v69 != v68);
      v73 = 0;
      v74 = *(v1 + 38);
      v75 = -v166;
      do
      {
        v76 = v73 + 1;
        LODWORD(v77) = v166 + v73 + 1;
        if (v77 >= v170)
        {
          v77 = v170;
        }

        else
        {
          v77 = v77;
        }

        v78 = 0.0;
        if (((v73 - v166) & ~((v73 - v166) >> 31)) < v77)
        {
          v79 = v75 & ~(v75 >> 31);
          do
          {
            v78 = v78 + *(*(v1 + 17) + 4 * v79++);
          }

          while (v79 < v77);
        }

        *(v74 + 4 * v73) = v78;
        ++v75;
        ++v73;
      }

      while (v76 != v68);
      v80 = 0;
      v81 = 0;
      v82 = 0;
      v160 = 0;
      v83 = 0;
      v84 = 0.0;
      v85 = 0.0;
      v86 = 0.0;
      v161 = 0;
      v163 = 0;
      v159 = 0;
      v87 = 0.0;
      v88 = 0.0;
      v169 = 0;
      do
      {
        v89 = [v171 objectAtIndex:{v80, v151}];
        v90 = *([v89 c_struct] + 2);
        if ((LODWORD(v90) & 0x7FFFFFFFu) >= 0x7F800000)
        {
          v90 = 0.0;
        }

        if (v90 < 0.0)
        {
          v90 = 0.0;
        }

        if (v90 > 1.0)
        {
          v90 = 1.0;
        }

        if (v90 > v84)
        {
          v84 = v90;
        }

        v91 = *(*(v1 + 14) + 4 * v80);
        if (v91 > v85)
        {
          v169 = *(*(v1 + 20) + 4 * v80);
          v83 = [v89 timestamp];
          v85 = v91;
        }

        v92 = *(*(v1 + 35) + 4 * v80);
        if (v92 > v88)
        {
          v163 = *(*(v1 + 38) + 4 * v80);
          v82 = [v89 timestamp];
          v88 = v92;
        }

        v93 = *(*(v1 + 20) + 4 * v80);
        if (v93 > v86)
        {
          v161 = *(*(v1 + 14) + 4 * v80);
          v81 = [v89 timestamp];
          v86 = v93;
        }

        v94 = *(*(v1 + 38) + 4 * v80);
        if (v94 > v87)
        {
          v159 = *(*(v1 + 35) + 4 * v80);
          v160 = [v89 timestamp];
          v87 = v94;
        }

        ++v80;
      }

      while (v68 != v80);
    }

    sub_1002AAD30(v1 + 23, v158);
    sub_1002AAD30(v1 + 26, v158);
    sub_1002AAD30(v1 + 41, v158);
    if (v170 < 1)
    {
      v137 = 0;
      v117 = 0;
      v118 = 0;
      v119 = 0;
      v120 = 0;
      v121 = 0;
      v136 = 0;
      v135 = 0;
      LOBYTE(v125) = 0;
      v134 = 0;
      v133 = 0;
      v104 = 0.0;
      v112 = 0.0;
    }

    else
    {
      v96 = 0;
      v97 = v170 & 0x7FFFFFFF;
      do
      {
        v98 = [v171 objectAtIndex:{v96, v151}];
        v99 = *([v98 c_struct] + 2);
        if ((LODWORD(v99) & 0x7FFFFFFFu) >= 0x7F800000)
        {
          v99 = 0.0;
        }

        if (v99 < 0.0)
        {
          v99 = 0.0;
        }

        if (v99 > 1.0)
        {
          v99 = 1.0;
        }

        if (v99 <= v164)
        {
          v100 = 0.0;
        }

        else
        {
          v100 = 1.0;
        }

        *(*(v1 + 23) + 4 * v96) = v100;

        ++v96;
      }

      while (v97 != v96);
      v101 = 0;
      v102 = *(v1 + 26);
      v103 = -v167;
      v104 = 0.0;
      do
      {
        v105 = v101 + 1;
        LODWORD(v106) = v167 + v101 + 1;
        if (v106 >= v170)
        {
          v106 = v170;
        }

        else
        {
          v106 = v106;
        }

        v107 = 0.0;
        if (((v101 - v167) & ~((v101 - v167) >> 31)) < v106)
        {
          v108 = v103 & ~(v103 >> 31);
          do
          {
            v107 = v107 + *(*(v1 + 23) + 4 * v108++);
          }

          while (v108 < v106);
        }

        *(v102 + 4 * v101) = v107;
        if (v107 > v104)
        {
          v104 = v107;
        }

        ++v103;
        ++v101;
      }

      while (v105 != v97);
      v109 = 0;
      v110 = *(v1 + 41);
      v111 = -v166;
      v112 = 0.0;
      do
      {
        v113 = v109 + 1;
        LODWORD(v114) = v166 + v109 + 1;
        if (v114 >= v170)
        {
          v114 = v170;
        }

        else
        {
          v114 = v114;
        }

        v115 = 0.0;
        if (((v109 - v166) & ~((v109 - v166) >> 31)) < v114)
        {
          v116 = v111 & ~(v111 >> 31);
          do
          {
            v115 = v115 + *(*(v1 + 23) + 4 * v116++);
          }

          while (v116 < v114);
        }

        *(v110 + 4 * v109) = v115;
        if (v115 > v112)
        {
          v112 = v115;
        }

        ++v111;
        ++v109;
      }

      while (v113 != v97);
      v117 = 0;
      v118 = 0;
      v119 = 0;
      v120 = 0;
      v121 = 0;
      v122 = *(v1 + 14);
      v123 = *(v1 + 20);
      v124 = *(v1 + 26);
      v125 = v170 & 0x7FFFFFFF;
      do
      {
        v126 = *v122++;
        v127 = v126 > v157;
        v128 = *v123++;
        v129 = v128 <= v156;
        v130 = *v124++;
        v131 = v130;
        v132 = !v129;
        v118 |= v127;
        v119 |= v132;
        v120 |= v131 > v155;
        v121 |= v132 & 1 | (v131 > v155);
        v117 |= v127 & (v132 | (v131 > v155));
        --v125;
      }

      while (v125);
      v133 = 0;
      v134 = 0;
      v135 = 0;
      v136 = 0;
      v137 = v117 & (v84 > *&v151);
      v138 = *(v1 + 35);
      v139 = *(v1 + 38);
      v95 = *(v1 + 41);
      do
      {
        v140 = *v138++;
        v141 = v140 > v153;
        v142 = *v139++;
        v129 = v142 <= v152;
        v143 = *v95++;
        v144 = v143;
        v145 = !v129;
        v135 |= v141;
        LOBYTE(v125) = v125 | v145;
        v134 |= v144 > *(&v151 + 1);
        v133 |= v145 & 1 | (v144 > *(&v151 + 1));
        v136 |= v141 & (v145 | (v144 > *(&v151 + 1)));
        --v97;
      }

      while (v97);
    }

    v146 = *(v1 + 4);
    *(v146 + 80) = v84;
    *(v146 + 84) = v85;
    *(v146 + 88) = v86;
    *(v146 + 92) = v104;
    *(v146 + 96) = v118;
    *(v146 + 97) = v119;
    *(v146 + 98) = v120;
    *(v146 + 99) = v121;
    *(v146 + 100) = v117;
    *(v146 + 101) = v137;
    *(v146 + 104) = v88;
    *(v146 + 108) = v87;
    *(v146 + 112) = v112;
    *(v146 + 116) = v135;
    *(v146 + 117) = v125;
    *(v146 + 118) = v134;
    *(v146 + 119) = v133;
    *(v146 + 120) = v136;
    *(v146 + 121) = v136 & (v84 > v154);
    v147 = [v171 objectAtIndex:{0, v95}];
    v148 = [v171 objectAtIndex:((v170 << 32) - 0x100000000) >> 32];
    *(*(v1 + 4) + 168) = 1;
    *(*(v1 + 4) + 192) = [v147 timestamp];
    v149 = [v148 timestamp];
    v150 = *(v1 + 4);
    *(v150 + 200) = v149;
    *(v150 + 208) = v169;
    *(v150 + 216) = v83;
    *(v150 + 224) = v161;
    *(v150 + 232) = v81;
    *(v150 + 240) = v163;
    *(v150 + 248) = v82;
    *(v150 + 256) = v159;
    *(v150 + 264) = v160;
  }
}

void sub_1002AAD30(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 2;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 4 * a2;
    }
  }

  else
  {
    sub_1002AB004(a1, a2 - v2);
  }
}

void sub_1002AAD6C(CLKappaAlgBlock *a1)
{

  operator delete();
}

void sub_1002AADB0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 56);
  *(a1 + 48) = v3;
  *(a1 + 56) = v2;
  if (v4)
  {
    sub_100009A48(v4);
  }
}

void sub_1002AAE00(void *a1)
{

  operator delete();
}

void sub_1002AAE68(void *a1, uint64_t *a2)
{
  v2 = a1 + *(*a1 - 32);
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(v2 + 7);
  *(v2 + 6) = v4;
  *(v2 + 7) = v3;
  if (v5)
  {
    sub_100009A48(v5);
  }
}

void sub_1002AAECC(void *a1)
{

  operator delete();
}

void sub_1002AAF58(void *a1)
{

  operator delete();
}

void sub_1002AAFC0(id a1)
{
  qword_100456800 = os_log_create("com.apple.anomalydetectiond", "Alg");

  _objc_release_x1();
}

void sub_1002AB004(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 2)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 4 * a2);
      v5 += 4 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 2);
    if (v8 >> 62)
    {
      sub_10000CD24();
    }

    v9 = v4 - v6;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_10002290C(a1, v10);
    }

    v11 = (4 * (v7 >> 2));
    bzero(v11, 4 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[4 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void sub_1002AB134(CLKappaAlgBlock *this, uint64_t *a2)
{
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 152)) = a2[6];
  *(this + *(*this - 160)) = a2[7];
  *(this + *(*this - 168)) = a2[8];
  *(this + *(*this - 176)) = a2[9];
  v5 = *(this + 41);
  if (v5)
  {
    *(this + 42) = v5;
    operator delete(v5);
  }

  v6 = *(this + 38);
  if (v6)
  {
    *(this + 39) = v6;
    operator delete(v6);
  }

  v7 = *(this + 35);
  if (v7)
  {
    *(this + 36) = v7;
    operator delete(v7);
  }

  v8 = *(this + 32);
  if (v8)
  {
    *(this + 33) = v8;
    operator delete(v8);
  }

  v9 = *(this + 29);
  if (v9)
  {
    *(this + 30) = v9;
    operator delete(v9);
  }

  v10 = *(this + 26);
  if (v10)
  {
    *(this + 27) = v10;
    operator delete(v10);
  }

  v11 = *(this + 23);
  if (v11)
  {
    *(this + 24) = v11;
    operator delete(v11);
  }

  v12 = *(this + 20);
  if (v12)
  {
    *(this + 21) = v12;
    operator delete(v12);
  }

  v13 = *(this + 17);
  if (v13)
  {
    *(this + 18) = v13;
    operator delete(v13);
  }

  v14 = *(this + 14);
  if (v14)
  {
    *(this + 15) = v14;
    operator delete(v14);
  }

  v15 = *(this + 11);
  if (v15)
  {
    *(this + 12) = v15;
    operator delete(v15);
  }

  v16 = *(this + 8);
  if (v16)
  {
    *(this + 9) = v16;
    operator delete(v16);
  }

  v17 = *(this + 7);
  if (v17)
  {
    sub_100009A48(v17);
  }

  v18 = *(this + 5);
  if (v18)
  {
    sub_100009A48(v18);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(this, a2 + 1);
}

void sub_1002AB4D8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1004298A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void CLKappaDeescalatorMovingGps::CLKappaDeescalatorMovingGps(CLKappaDeescalatorMovingGps *this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 36) = 1;
  *(this + 10) = 0;
  *(this + 44) = 0;
  *this = &off_1004298F0;
  *(this + 74) = 0;
  *(this + 19) = 0;
  *(this + 80) = 0;
  *(this + 21) = 0;
  *(this + 88) = 0;
  *(this + 71) = 7;
  strcpy(this + 48, "de-MGPS");
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 36) = 1;
  *(this + 10) = 0;
  *(this + 44) = 0;
  *this = &off_1004298F0;
  *(this + 74) = 0;
  *(this + 19) = 0;
  *(this + 80) = 0;
  *(this + 21) = 0;
  *(this + 88) = 0;
  *(this + 71) = 7;
  strcpy(this + 48, "de-MGPS");
}

uint64_t CLKappaDeescalatorMovingGps::setConfig(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  if ((*(result + 74) & 1) == 0)
  {
    *(result + 74) = 1;
  }

  *(result + 72) = v2;
  return result;
}

void CLKappaDeescalatorMovingGps::resetConfiguration(CLKappaDeescalatorMovingGps *this)
{
  v4 = [CSPersistentConfiguration configBaseKey:"DeescalatorMGPSConfig" forFeatureMode:*(this + 36)];
  v2 = +[CSPersistentConfiguration sharedConfiguration];
  v3 = [v2 intThreshold:&CLKappaDeescalatorMovingGps::kConfigurationDefaults forKey:v4];
  if ((*(this + 74) & 1) == 0)
  {
    *(this + 74) = 1;
  }

  *(this + 36) = v3;
  *(this + 88) = CLKappaDeescalator::shouldForce(this, "ForceEscalateGPS");
  *(this + 44) = CLKappaDeescalator::shouldForceNoop(this, "ForceMovingGps");
  *(this + 10) = CLKappaDeescalator::shouldForceDeescalate(this, "ForceMovingGps");
}

void CLKappaDeescalatorMovingGps::log(CLKappaDeescalatorMovingGps *this, uint64_t a2)
{
  if ((*(this + 74) & 1) == 0)
  {
    sub_100005BF0();
  }

  v4 = *(this + 19);
  v5 = *(this + 21);
  if (qword_1004567F8 != -1)
  {
    sub_1002AB994();
  }

  v6 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(this + 6);
    v8 = *(this + 36);
    v9 = *(this + 36);
    v10 = 134350336;
    v11 = a2;
    v12 = 1026;
    v13 = v7;
    v14 = 1026;
    v15 = v8;
    v16 = 1026;
    v17 = v9;
    v18 = 1026;
    v19 = v4;
    v20 = 1026;
    v21 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[de-MGPS] summary,A,%{public}llu,B,%{public}u,mode,%{public}u,config-1,%{public}u,debug-1a,%{public}u,debug-1b,%{public}u", &v10, 0x2Au);
  }
}

uint64_t CLKappaDeescalatorMovingGps::updateCountTotal(uint64_t this)
{
  v1 = *(this + 76);
  if ((*(this + 80) & 1) == 0)
  {
    v1 += *(this + 84);
  }

  *(this + 84) = v1;
  return this;
}

uint64_t CLKappaDeescalatorMovingGps::updateWithFeatures(uint64_t result, uint64_t a2)
{
  *(result + 80) = *(a2 + 25);
  *(result + 76) = *(a2 + 20);
  return result;
}

uint64_t CLKappaDeescalatorMovingGps::onEvaluateBetweenMinAndMaxHoldDuration(CLKappaDeescalatorMovingGps *this)
{
  if (*(this + 88))
  {
    return 0;
  }

  if ((*(this + 74) & 1) == 0)
  {
    sub_100005BF0();
  }

  return 4 * (*(this + 21) >= *(this + 72));
}

uint64_t CLKappaDeescalatorMovingGps::onPreviousEpochMadeDecision(uint64_t this)
{
  *(this + 80) = 0;
  *(this + 84) = 0;
  return this;
}

void sub_1002AB918(void **a1)
{
  CLKappaDeescalator::~CLKappaDeescalator(a1);

  operator delete();
}

void sub_1002AB950(id a1)
{
  qword_100456800 = os_log_create("com.apple.anomalydetectiond", "Alg");

  _objc_release_x1();
}

void MartyCompanionUUID::MartyCompanionUUID(MartyCompanionUUID *this)
{
  *this = off_1004299A0;
  *(this + 1) = 0;
}

{
  *this = off_1004299A0;
  *(this + 1) = 0;
}

void MartyCompanionUUID::~MartyCompanionUUID(MartyCompanionUUID *this)
{
  *this = off_1004299A0;
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
  MartyCompanionUUID::~MartyCompanionUUID(this);

  operator delete();
}

void MartyCompanionUUID::MartyCompanionUUID(MartyCompanionUUID *this, const MartyCompanionUUID *a2)
{
  *this = off_1004299A0;
  *(this + 1) = 0;
  if (*(a2 + 1))
  {
    operator new();
  }
}

const MartyCompanionUUID *MartyCompanionUUID::operator=(const MartyCompanionUUID *a1, const MartyCompanionUUID *a2)
{
  if (a1 != a2)
  {
    MartyCompanionUUID::MartyCompanionUUID(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    MartyCompanionUUID::~MartyCompanionUUID(&v5);
  }

  return a1;
}

uint64_t swap(uint64_t result, MartyCompanionUUID *a2)
{
  v2 = *(result + 8);
  *(result + 8) = *(a2 + 1);
  *(a2 + 1) = v2;
  return result;
}

void *MartyCompanionUUID::MartyCompanionUUID(void *a1, uint64_t a2)
{
  *a1 = off_1004299A0;
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

uint64_t MartyCompanionUUID::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    MartyCompanionUUID::MartyCompanionUUID(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    MartyCompanionUUID::~MartyCompanionUUID(&v5);
  }

  return a1;
}

uint64_t MartyCompanionUUID::formatText(MartyCompanionUUID *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 1))
  {
    PB::TextFormatter::format();
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t MartyCompanionUUID::readFrom(MartyCompanionUUID *this, PB::Reader *a2)
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

uint64_t MartyCompanionUUID::writeTo(uint64_t this, PB::Writer *a2)
{
  if (*(this + 8))
  {
    return PB::Writer::write();
  }

  return this;
}

BOOL MartyCompanionUUID::operator==(uint64_t a1, uint64_t a2)
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

unint64_t MartyCompanionUUID::hash_value(MartyCompanionUUID *this)
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

double CMOQuaternion::operator*@<D0>(uint64_t a1@<X0>, float *a2@<X1>, float32x4_t *a3@<X8>, float32x4_t a4@<Q0>)
{
  v4 = *(a1 + 8);
  a4.i32[0] = *(a1 + 12);
  v5 = a2[1];
  v6 = *(a1 + 4);
  v7 = a2[2];
  v8 = a2[3];
  v9 = (((v4 * v5) + (a4.f32[0] * *a2)) - (v6 * v7)) + (*a1 * v8);
  v10 = (((a4.f32[0] * v5) - (v4 * *a2)) + (*a1 * v7)) + (v6 * v8);
  v11 = (((v6 * *a2) - (*a1 * v5)) + (a4.f32[0] * v7)) + (v4 * v8);
  v12 = (-(v6 * v5) - (*a1 * *a2)) - (v4 * v7);
  a3->f32[0] = v9;
  a3->f32[1] = v10;
  a4.f32[0] = v12 + (a4.f32[0] * v8);
  a3->f32[2] = v11;
  a3->i32[3] = a4.i32[0];
  *&result = CMOQuaternion::normalize(a3, a4).u64[0];
  return result;
}

double CMOQuaternion::conj@<D0>(float32x2_t *this@<X0>, float32x4_t *a2@<X8>, float32x4_t a3@<Q0>)
{
  v3 = this[1].i32[1];
  a3.f32[0] = -this[1].f32[0];
  *a2->f32 = vneg_f32(*this);
  a2->i32[2] = a3.i32[0];
  a2->i32[3] = v3;
  *&result = CMOQuaternion::normalize(a2, a3).u64[0];
  return result;
}

double CMOQuaternion::negate@<D0>(float32x4_t *this@<X0>, float32x4_t *a2@<X8>)
{
  v2 = vnegq_f32(*this);
  *a2 = v2;
  *&result = CMOQuaternion::normalize(a2, v2).u64[0];
  return result;
}

float32x4_t CMOQuaternion::forceScalarPositive@<Q0>(float32x4_t *this@<X0>, float32x4_t *a2@<X8>)
{
  if (this->f32[3] >= 0.0)
  {
    result = *this;
    *a2 = *this;
  }

  else
  {
    v2 = vnegq_f32(*this);
    *a2 = v2;
    result.i64[0] = CMOQuaternion::normalize(a2, v2).u64[0];
  }

  return result;
}

double CMOQuaternion::deltaTo@<D0>(float32x2_t *this@<X0>, const CMOQuaternion *a2@<X1>, float32x4_t *a3@<X8>, float32x4_t a4@<Q0>)
{
  v6 = this[1].i32[1];
  a4.f32[0] = -this[1].f32[0];
  *v9.f32 = vneg_f32(*this);
  v9.i64[1] = __PAIR64__(v6, a4.u32[0]);
  v7 = CMOQuaternion::normalize(&v9, a4);
  CMOQuaternion::operator*(a2, v9.f32, &v10, v7);
  *&result = CMOQuaternion::forceScalarPositive(&v10, a3).u64[0];
  return result;
}

float CMOQuaternion::roll(CMOQuaternion *this)
{
  v1 = *(this + 1);
  v2 = (*this * *(this + 2)) - (*(this + 3) * v1);
  return -atan2f(v2 + v2, (((v1 * v1) + (*this * *this)) * -2.0) + 1.0);
}

float CMOQuaternion::yaw(CMOQuaternion *this)
{
  v1 = *(this + 2);
  v2 = (*this * *(this + 1)) - (*(this + 3) * v1);
  return -atan2f(v2 + v2, (((v1 * v1) + (*this * *this)) * -2.0) + 1.0);
}

float CMOQuaternion::gravity(CMOQuaternion *this)
{
  v1 = 0;
  v2 = *(this + 2);
  v3 = *(this + 3);
  v4 = *(this + 1);
  v5 = ((v3 * v4) - (*this * v2)) + ((v3 * v4) - (*this * v2));
  v6 = -(v3 * *this) - (v4 * v2);
  v7 = (((v4 * v4) + (*this * *this)) * 2.0) + -1.0;
  *v10 = v5;
  *&v10[1] = v6 + v6;
  *&v10[2] = v7;
  v8 = 0.0;
  do
  {
    v8 = v8 + (*&v10[v1] * *&v10[v1]);
    ++v1;
  }

  while (v1 != 3);
  return v5 / sqrtf(v8);
}

float CMOQuaternion::north(CMOQuaternion *this)
{
  v1 = 0;
  v2 = *(this + 1);
  v4 = *(this + 2);
  v3 = *(this + 3);
  v5 = (((*this * *this) + (v3 * v3)) * 2.0) + -1.0;
  v6 = ((*this * v2) - (v3 * v4)) + ((*this * v2) - (v3 * v4));
  v7 = ((v3 * v2) + (*this * v4)) + ((v3 * v2) + (*this * v4));
  v10[0] = v5;
  v10[1] = v6;
  v10[2] = v7;
  v8 = 0.0;
  do
  {
    v8 = v8 + (v10[v1] * v10[v1]);
    ++v1;
  }

  while (v1 != 3);
  return v5 / sqrtf(v8);
}

void CMOQuaternion::rotateVectorInPlace(CMOQuaternion *a1, uint64_t a2)
{
  CMOQuaternion::rotationMatrixShared(a1, 1.0, v5);
  *a2 = sub_1002AC2D0(v5, a2);
  *(a2 + 4) = v3;
  *(a2 + 8) = v4;
}

float sub_1002AC2D0(uint64_t a1, float *a2)
{
  for (i = 0; i != 3; ++i)
  {
    v5 = sub_1002AD268(a1, i, 0) * *a2;
    *sub_1000204F0(&v11, i) = v5;
    for (j = 1; j != 3; ++j)
    {
      v7 = sub_1002AD268(a1, i, j);
      v8 = sub_10002247C(a2, j);
      v9 = sub_1000204F0(&v11, i);
      *v9 = *v9 + (v7 * v8);
    }
  }

  return v11;
}

float CMOQuaternion::rotateVector(CMOQuaternion *a1, float a2, float a3, float a4)
{
  v5[0] = a2;
  v5[1] = a3;
  v5[2] = a4;
  CMOQuaternion::rotationMatrixShared(a1, 1.0, v6);
  return sub_1002AC2D0(v6, v5);
}

void CMOQuaternion::rotateFrameInPlace(CMOQuaternion *a1, uint64_t a2)
{
  CMOQuaternion::rotationMatrixShared(a1, -1.0, v5);
  *a2 = sub_1002AC2D0(v5, a2);
  *(a2 + 4) = v3;
  *(a2 + 8) = v4;
}

float CMOQuaternion::rotateFrame(CMOQuaternion *a1, float a2, float a3, float a4)
{
  v5[0] = a2;
  v5[1] = a3;
  v5[2] = a4;
  CMOQuaternion::rotationMatrixShared(a1, -1.0, v6);
  return sub_1002AC2D0(v6, v5);
}

double CMOQuaternion::angleAxis(float32x4_t *a1, float *a2)
{
  v4 = 0;
  v5 = 0.0;
  do
  {
    v5 = v5 + (a2[v4] * a2[v4]);
    ++v4;
  }

  while (v4 != 3);
  v6 = sqrtf(v5);
  v7 = 0.5;
  v8 = v6 * 0.5;
  if ((v6 * 0.5) > 0.0)
  {
    v7 = (sinf(v6 * 0.5) / v8) * 0.5;
  }

  a1->f32[0] = v7 * *a2;
  a1->f32[1] = v7 * a2[1];
  a1->f32[2] = v7 * a2[2];
  v9.f32[0] = cosf(v8);
  a1->i32[3] = v9.i32[0];

  *&result = CMOQuaternion::normalize(a1, v9).u64[0];
  return result;
}

float32x4_t CMOQuaternion::normalize(float32x4_t *this, float32x4_t result)
{
  result.f32[0] = sqrtf((((this->f32[1] * this->f32[1]) + (this->f32[0] * this->f32[0])) + (this->f32[2] * this->f32[2])) + (this->f32[3] * this->f32[3]));
  v2 = result.f32[0] + -1.0;
  if ((result.f32[0] + -1.0) <= 0.0)
  {
    v2 = -(result.f32[0] + -1.0);
  }

  if (v2 >= 0.00000011921)
  {
    if (result.f32[0] == 0.0)
    {
      this->i64[0] = 0;
      this->i64[1] = 0x3F80000000000000;
    }

    else
    {
      result = vdivq_f32(*this, vdupq_lane_s32(*result.f32, 0));
      *this = result;
    }
  }

  return result;
}

float CMOQuaternion::angleAxis(float32x4_t *this)
{
  v8 = *this;
  CMOQuaternion::forceScalarPositive(&v8, &v7);
  v1 = 0;
  v8 = v7;
  v2 = v7.f32[0];
  v3 = 0.0;
  do
  {
    v3 = v3 + (v7.f32[v1] * v7.f32[v1]);
    ++v1;
  }

  while (v1 != 3);
  v4 = sqrtf(v3);
  if (v4 >= 0.00000011921)
  {
    v5 = atan2f(v4, v8.f32[3]);
    return v2 * ((v5 + v5) / v4);
  }

  return v2;
}

BOOL CMOQuaternion::northAndGravity(float *a1, float32x4_t *a2, uint64_t a3, float a4, float a5, float a6, float a7, float a8, float a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16)
{
  v136 = a4;
  v137 = __PAIR64__(LODWORD(a6), LODWORD(a5));
  v134 = a7;
  v135 = __PAIR64__(LODWORD(a9), LODWORD(a8));
  *v133 = a15;
  *&v133[8] = a16;
  if ((atomic_load_explicit(&qword_100458848, memory_order_acquire) & 1) == 0)
  {
    sub_1002AD844();
  }

  v19 = 0;
  v20 = 0.0;
  do
  {
    v20 = v20 + (*(&v136 + v19) * *(&v136 + v19));
    v19 += 4;
  }

  while (v19 != 12);
  if (sqrtf(v20) == 0.0)
  {
    return 0;
  }

  v21 = 0;
  v22 = 0.0;
  do
  {
    v22 = v22 + (*(&v134 + v21) * *(&v134 + v21));
    v21 += 4;
  }

  while (v21 != 12);
  if (sqrtf(v22) == 0.0)
  {
    return 0;
  }

  v25 = 0;
  *buf = v136;
  *&buf[4] = v137;
  v26 = 0.0;
  do
  {
    v26 = v26 + (*&buf[v25] * *&buf[v25]);
    v25 += 4;
  }

  while (v25 != 12);
  v27 = 0;
  v28 = sqrtf(v26);
  v29 = v136 / v28;
  v30 = v137.f32[0] / v28;
  v31 = v137.f32[1] / v28;
  v136 = v29;
  v137 = __PAIR64__(LODWORD(v31), LODWORD(v30));
  *buf = v134;
  *&buf[4] = v135;
  v32 = 0.0;
  do
  {
    v32 = v32 + (*&buf[v27] * *&buf[v27]);
    v27 += 4;
  }

  while (v27 != 12);
  v33 = 0;
  v34 = sqrtf(v32);
  v35 = v134 / v34;
  v36 = v135.f32[0] / v34;
  v37 = v135.f32[1] / v34;
  v134 = v35;
  v135 = __PAIR64__(v135.f32[1] / v34, v135.f32[0] / v34);
  v38 = (v30 * v37) - (v31 * v36);
  v39 = (v31 * v35) - (v29 * v37);
  v40 = (v29 * v36) - (v30 * v35);
  v130 = v38;
  v131 = v39;
  v132 = v40;
  v41 = 0.0;
  do
  {
    v41 = v41 + (*(&v130 + v33) * *(&v130 + v33));
    v33 += 4;
  }

  while (v33 != 12);
  v42 = sqrtf(v41);
  if (v42 < *&dword_100458840)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      Current = CFAbsoluteTimeGetCurrent();
      *buf = 134218498;
      *&buf[4] = Current;
      *&buf[12] = 2080;
      *&buf[14] = "static BOOL CMOQuaternion::northAndGravity(CMVector<float, 3>, CMVector<float, 3>, CMVector<float, 3>, const float *, CMOQuaternion &, CMMatrix<float, 3> &)";
      *&buf[22] = 2048;
      *&buf[24] = v42;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "STATUS,Generic,Time,%.3f,Function,%s,n and g are too close %f\n", buf, 0x20u);
    }

    return 0;
  }

  v44 = 0;
  v45 = v38 / v42;
  v46 = v39 / v42;
  v130 = v38 / v42;
  v131 = v39 / v42;
  v47 = v40 / v42;
  v132 = v47;
  v48 = *&v133[8];
  *buf = *v133;
  *&buf[8] = *&v133[8];
  v49 = 0.0;
  do
  {
    v49 = v49 + (*&buf[v44] * *&buf[v44]);
    v44 += 4;
  }

  while (v44 != 12);
  v50 = 0;
  v51 = sqrtf(v49);
  v52 = *&v133[4] / v51;
  *v133 = *v133 / v51;
  *&v133[4] = v52;
  *&v133[8] = *&v133[8] / v51;
  *v129 = 0;
  *&v129[8] = -1082130432;
  v53 = ((v48 / v51) * -0.0) - v52;
  v54 = 0.0;
  *buf = v53;
  *&buf[4] = *v133 + (*&v133[8] * 0.0);
  *&buf[8] = (v52 * -0.0) + (*v133 * 0.0);
  do
  {
    v54 = v54 + (*&buf[v50] * *&buf[v50]);
    v50 += 4;
  }

  while (v50 != 12);
  v55 = 0;
  v56 = sqrtf(v54);
  v128[0] = v53 / v56;
  v128[1] = (*v133 + (*&v133[8] * 0.0)) / v56;
  v128[2] = ((v52 * -0.0) + (*v133 * 0.0)) / v56;
  v57 = (v36 * v47) - (v37 * v46);
  v58 = (v37 * v45) - (v35 * v47);
  v59 = (v35 * v46) - (v36 * v45);
  *buf = v57;
  *&buf[4] = v58;
  *&buf[8] = v59;
  v60 = 0.0;
  do
  {
    v60 = v60 + (*&buf[v55] * *&buf[v55]);
    v55 += 4;
  }

  while (v55 != 12);
  v61 = sqrtf(v60);
  v136 = v57 / v61;
  v137.f32[0] = v58 / v61;
  v137.f32[1] = v59 / v61;
  sub_1002ACEE8(&v136, v133, buf);
  sub_1002ACEE8(&v134, v129, &v125);
  sub_1002ACEE8(&v130, v128, v123);
  v62 = *a1;
  v63 = ((a1[1] * a1[1]) + (v62 * v62)) + ((v62 + v62) * a1[1]);
  if (v63 == 0.0)
  {
    sub_1002AD894();
  }

  v121[0] = v123[0];
  v121[1] = v123[1];
  v122 = v124;
  v117 = v141;
  v115 = *buf;
  v116 = *&buf[16];
  v106 = 0;
  v107 = v137.i32[1];
  v108 = vneg_f32(v137);
  v64 = sqrtf(v63);
  v109 = 0;
  v110 = v136;
  v111 = v137.i32[0];
  v112 = -v136;
  v113 = 0;
  sub_1002ACF7C(&v106, v123, v114);
  v99 = 0;
  v100 = *&v133[8];
  v101 = vneg_f32(*&v133[4]);
  v102 = 0;
  v103 = *v133;
  v104 = -*v133;
  v105 = 0;
  sub_1002ACF7C(v114, &v99, v138);
  for (i = 0; i != 9; ++i)
  {
    *(&v115 + i) = *(&v115 + i) - sub_1002AD72C(v138, i);
  }

  v66 = 0;
  v67 = 1.0 / v64;
  do
  {
    *(&v115 + v66) = (v62 * v67) * *(&v115 + v66);
    v66 += 4;
  }

  while (v66 != 36);
  v68 = 0;
  v118 = v115;
  v119 = v116;
  v120 = v117;
  do
  {
    *(v121 + v68) = sub_1002AD72C(&v118, v68) + *(v121 + v68);
    ++v68;
  }

  while (v68 != 9);
  v69 = a1[1];
  v96 = v125;
  v97 = v126;
  v98 = v127;
  v106 = 0;
  v107 = v135.i32[1];
  v108 = vneg_f32(v135);
  v109 = 0;
  v110 = v134;
  v111 = v135.i32[0];
  v112 = -v134;
  v113 = 0;
  sub_1002ACF7C(&v106, v123, v114);
  v99 = 0;
  v100 = *&v129[8];
  v101 = vneg_f32(*&v129[4]);
  v102 = 0;
  v103 = *v129;
  v104 = -*v129;
  v105 = 0;
  sub_1002ACF7C(v114, &v99, v138);
  for (j = 0; j != 9; ++j)
  {
    *(&v96 + j) = *(&v96 + j) - sub_1002AD72C(v138, j);
  }

  for (k = 0; k != 36; k += 4)
  {
    *(&v96 + k) = (v67 * v69) * *(&v96 + k);
  }

  v72 = 0;
  v118 = v96;
  v119 = v97;
  v120 = v98;
  do
  {
    v73.f32[0] = sub_1002AD72C(&v118, v72) + *(v121 + v72);
    *(v121 + v72++) = v73.i32[0];
  }

  while (v72 != 9);
  CMOQuaternion::rotationMatrix(a2, v121, v73);
  v74 = 0;
  v75 = *a1;
  v93 = *buf;
  v94 = *&buf[16];
  v95 = v141;
  do
  {
    *(&v93 + v74) = v75 * *(&v93 + v74);
    v74 += 4;
  }

  while (v74 != 36);
  v76 = 0;
  v77 = a1[1];
  v118 = v125;
  v119 = v126;
  v120 = v127;
  do
  {
    *(&v118 + v76) = v77 * *(&v118 + v76);
    v76 += 4;
  }

  while (v76 != 36);
  v78 = 0;
  *v138 = v118;
  *&v138[16] = v119;
  v139 = v120;
  do
  {
    *(&v93 + v78) = sub_1002AD72C(v138, v78) + *(&v93 + v78);
    ++v78;
  }

  while (v78 != 9);
  v79 = 0;
  v118 = v93;
  v119 = v94;
  v120 = v95;
  v80 = 0.0;
  do
  {
    v80 = v80 + (*(&v118 + v79) * *(&v118 + v79));
    v79 += 4;
  }

  while (v79 != 36);
  v81 = sqrtf(v80);
  v82 = (v63 - (v81 * v81)) * 0.5;
  v23 = v82 != 0.0;
  if (v82 == 0.0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v92 = CFAbsoluteTimeGetCurrent();
      *v138 = 134218242;
      *&v138[4] = v92;
      *&v138[12] = 2080;
      *&v138[14] = "static BOOL CMOQuaternion::northAndGravity(CMVector<float, 3>, CMVector<float, 3>, CMVector<float, 3>, const float *, CMOQuaternion &, CMMatrix<float, 3> &)";
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "STATUS,Generic,Time,%.3f,Function,%s,kappa zero!\n", v138, 0x16u);
    }
  }

  else
  {
    v83 = 0;
    v84 = v67 * (1.0 / v82);
    do
    {
      for (m = 0; m != 3; ++m)
      {
        v86 = 0;
        *sub_1002AD228(a3, v83, m) = 0;
        do
        {
          v87 = sub_1002AD268(&v118, v83, v86);
          v88 = sub_1002AD268(&v118, m, v86);
          v89 = sub_1002AD228(a3, v83, m);
          *v89 = *v89 + (v87 * v88);
          ++v86;
        }

        while (v86 != 3);
        v90 = sub_1002AD228(a3, v83, m);
        *v90 = v84 * *v90;
      }

      v91 = sub_1002AD228(a3, v83, v83);
      *v91 = v67 + *v91;
      ++v83;
    }

    while (v83 != 3);
  }

  return v23;
}

float *sub_1002ACEE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  for (i = 0; i != 3; ++i)
  {
    for (j = 0; j != 3; ++j)
    {
      v8 = sub_10002247C(a1, i);
      v9 = v8 * sub_10002247C(a2, j);
      result = sub_1002AD228(a3, i, j);
      *result = v9;
    }
  }

  return result;
}

float *sub_1002ACF7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  for (i = 0; i != 3; ++i)
  {
    for (j = 0; j != 3; ++j)
    {
      v8 = sub_1002AD268(a1, i, 0);
      v9 = v8 * sub_1002AD268(a2, 0, j);
      *sub_1002AD228(a3, i, j) = v9;
      for (k = 1; k != 3; ++k)
      {
        v11 = sub_1002AD268(a1, i, k);
        v12 = sub_1002AD268(a2, k, j);
        result = sub_1002AD228(a3, i, j);
        *result = *result + (v11 * v12);
      }
    }
  }

  return result;
}

double CMOQuaternion::rotationMatrix(float32x4_t *a1, float *a2, float32x4_t a3)
{
  v3 = *a2;
  v4 = a2[4];
  v5 = a2[8];
  v6 = (*a2 + v4) + v5;
  if (v6 <= 0.0)
  {
    if (v3 > v4)
    {
      v8 = v3 == v5;
      v9 = v3 < v5;
    }

    else
    {
      v8 = 1;
      v9 = 0;
    }

    if (v9 || v8)
    {
      if (v4 <= v5)
      {
        v15 = ((-v3 - v4) + v5) + 1.0;
        v16 = 0.5 / sqrtf(v15);
        a1->f32[2] = v15 * v16;
        a1->f32[3] = v16 * (a2[3] - a2[1]);
        a1->f32[0] = v16 * (a2[2] + a2[6]);
        a3.f32[0] = v16 * (a2[7] + a2[5]);
        a1->i32[1] = a3.i32[0];
      }

      else
      {
        v10 = ((v4 - v3) - v5) + 1.0;
        v11 = 0.5 / sqrtf(v10);
        a1->f32[1] = v10 * v11;
        a1->f32[0] = v11 * (a2[3] + a2[1]);
        a1->f32[3] = v11 * (a2[2] - a2[6]);
        a3.f32[0] = v11 * (a2[7] + a2[5]);
        a1->i32[2] = a3.i32[0];
      }
    }

    else
    {
      v13 = ((v3 - v4) - v5) + 1.0;
      v14 = 0.5 / sqrtf(v13);
      a1->f32[0] = v13 * v14;
      a1->f32[1] = v14 * (a2[3] + a2[1]);
      a1->f32[2] = v14 * (a2[2] + a2[6]);
      a3.f32[0] = v14 * (a2[7] - a2[5]);
      a1->i32[3] = a3.i32[0];
    }
  }

  else
  {
    v7 = 0.5 / sqrtf(v6 + 1.0);
    a1->f32[3] = (v6 + 1.0) * v7;
    a1->f32[2] = v7 * (a2[3] - a2[1]);
    a1->f32[1] = v7 * (a2[2] - a2[6]);
    a3.f32[0] = v7 * (a2[7] - a2[5]);
    a1->i32[0] = a3.i32[0];
  }

  *&result = CMOQuaternion::normalize(a1, a3).u64[0];
  return result;
}

uint64_t sub_1002AD228(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a2 >= 3)
  {
    sub_1002AD9D8();
  }

  if (a3 >= 3)
  {
    sub_1002AD934();
  }

  return a1 + 4 * (3 * a3 + a2);
}

float sub_1002AD268(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a2 >= 3)
  {
    sub_1002ADB20();
  }

  if (a3 >= 3)
  {
    sub_1002ADA7C();
  }

  return *(a1 + 4 * (3 * a3 + a2));
}

float CMOQuaternion::rotationMatrixShared@<S0>(CMOQuaternion *this@<X0>, float a2@<S0>, float *a3@<X8>)
{
  v4 = *(this + 2);
  v3 = *(this + 3);
  v5 = v3 + v3;
  v6 = *this;
  v7 = *(this + 1);
  v8 = v7 + v7;
  v9 = v3 * (v3 + v3);
  v10 = ((v7 + v7) * v7) + -1.0;
  v11 = ((v4 + v4) * v4) + -1.0;
  v12 = (v6 + v6) * v7;
  v13 = (v6 + v6) * v4;
  v14 = v3 * (v6 + v6);
  v15 = v8 * v4;
  v16 = v3 * v8;
  v17 = v5 * v4;
  v18 = v9 + (((v6 + v6) * v6) + -1.0);
  v19 = v12 - (v17 * a2);
  v20 = v13 + (v16 * a2);
  v21 = v12 + (v17 * a2);
  v22 = v9 + v10;
  v23 = v15 - (v14 * a2);
  v24 = v13 - (v16 * a2);
  result = v15 + (v14 * a2);
  *a3 = v18;
  a3[1] = v19;
  a3[2] = v20;
  a3[3] = v21;
  a3[4] = v22;
  a3[5] = v23;
  a3[6] = v24;
  a3[7] = result;
  a3[8] = v9 + v11;
  return result;
}

void CMOQuaternion::headingReference(CMOQuaternion *this)
{
  if ((atomic_load_explicit(&qword_100458850, memory_order_acquire) & 1) == 0)
  {
    sub_1002ADBC4();
  }

  v2 = CMOQuaternion::gravity(this);
  if (v4 <= sqrtf((v3 * v3) + (v2 * v2)))
  {
    v5 = -1.0;
  }

  else
  {
    v5 = 1.0;
  }

  v21 = 0x3F80000000000000;
  v22 = 0;
  v6 = CMOQuaternion::gravity(this);
  v8 = v7;
  v9 = 0;
  v10 = (v7 * v7) + (v6 * v6);
  v12 = v11 * v5;
  v13 = (v11 * -0.0) + (v8 * v5);
  v14 = 0.0;
  v15 = (v11 * 0.0) - (v6 * v5);
  v16 = (v8 * -0.0) + (v6 * 0.0);
  *v20 = v13;
  *&v20[1] = v15;
  *&v20[2] = v16;
  do
  {
    v14 = v14 + (*&v20[v9] * *&v20[v9]);
    ++v9;
  }

  while (v9 != 3);
  v17 = sqrtf(v14);
  if (v17 > *&dword_100458844)
  {
    v18 = -atan2f(sqrtf(v10), v12) / v17;
    v23[0] = v13 * v18;
    v23[1] = v15 * v18;
    v23[2] = v16 * v18;
    CMOQuaternion::angleAxis(&v19, v23);
    CMOQuaternion::rotationMatrixShared(&v19, -1.0, v23);
    sub_1002AC2D0(v23, &v21);
  }
}

float CMOQuaternion::heading(CMOQuaternion *this)
{
  CMOQuaternion::headingReference(this);
  v5 = CMOQuaternion::rotateFrame(this, v2, v3, v4);
    ;
  }

    ;
  }

  return result;
}

float *CMMath::wrap(float *this, float *a2)
{
  v2 = *this;
  if (*this < 0.0)
  {
    do
    {
      v2 = v2 + 360.0;
    }

    while (v2 < 0.0);
    *this = v2;
  }

  if (v2 >= 360.0)
  {
    do
    {
      v2 = v2 + -360.0;
    }

    while (v2 >= 360.0);
    *this = v2;
  }

  return this;
}

double CMOQuaternion::slerp@<D0>(float32x4_t *this@<X0>, float32x4_t *a2@<X1>, float a3@<S0>, float32x4_t *a4@<X8>)
{
  if (a3 < 0.0 || a3 > 1.0)
  {
    sub_1002ADC14();
  }

  v28 = *this;
  CMOQuaternion::normalize(&v28, v28);
  v27 = *a2;
  CMOQuaternion::normalize(&v27, v27);
  v10 = v27.i64[0];
  v11 = v28.f32[2];
  v12 = v27.i64[1];
  v13 = fmaxf(fminf((((v28.f32[1] * v27.f32[1]) + (v28.f32[0] * v27.f32[0])) + (v28.f32[2] * v27.f32[2])) + (v28.f32[3] * v27.f32[3]), 1.0), -1.0);
  v14 = -v13;
  if (v13 > 0.0)
  {
    v14 = v13;
  }

  v15 = v14 + -1.0;
  if ((v14 + -1.0) <= 0.0)
  {
    v15 = -v15;
  }

  if (v15 >= 0.00000011921)
  {
    v25 = v28.i64[0];
    v26 = v28.f32[3];
    v17 = acosf(v13);
    v18 = sinf(v17);
    v19 = sinf((1.0 - a3) * v17);
    v20 = v17 * a3;
    v21 = v19 / v18;
    v23.f32[0] = sinf(v20) / v18;
    v22 = (*&v12 * v23.f32[0]) + (v21 * v11);
    a4->f32[0] = (*&v10 * v23.f32[0]) + (v21 * *&v25);
    a4->f32[1] = (*(&v10 + 1) * v23.f32[0]) + (v21 * *(&v25 + 1));
    v23.f32[0] = (*(&v12 + 1) * v23.f32[0]) + (v21 * v26);
    a4->f32[2] = v22;
    a4->i32[3] = v23.i32[0];

    v16.i64[0] = CMOQuaternion::normalize(a4, v23).u64[0];
  }

  else
  {
    v16 = *this;
    *a4 = *this;
  }

  return *v16.i64;
}

float sub_1002AD72C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 9)
  {
    sub_1002ADD58();
  }

  return *(a1 + 4 * a2);
}

void sub_1002AD770(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x2Au);
}

void sub_1002AD7A0()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    CFAbsoluteTimeGetCurrent();
    sub_1002AD78C();
    sub_1002AD750();
    sub_1002AD770(&_mh_execute_header, &_os_log_default, v0, "ERROR,Die,Time,%.3f,Function,%s,invalid index %zu >= %zu\n", v1, v2, v3, v4, v5);
  }

  __assert_rtn("operator[]", "CMVector.h", 271, "false");
}

void sub_1002AD844()
{
  if (__cxa_guard_acquire(&qword_100458848))
  {
    dword_100458840 = 1043452116;

    __cxa_guard_release(&qword_100458848);
  }
}

void sub_1002AD894()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    CFAbsoluteTimeGetCurrent();
    sub_1002AD78C();
    v1 = "static BOOL CMOQuaternion::northAndGravity(CMVector<float, 3>, CMVector<float, 3>, CMVector<float, 3>, const float *, CMOQuaternion &, CMMatrix<float, 3> &)";
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "ERROR,Die,Time,%.3f,Function,%s,invalid weights\n", v0, 0x16u);
  }

  __assert_rtn("northAndGravity", "CMOQuaternion.cpp", 214, "false");
}

void sub_1002AD934()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    CFAbsoluteTimeGetCurrent();
    sub_1002AD78C();
    sub_1002AD750();
    sub_1002AD770(&_mh_execute_header, &_os_log_default, v0, "ERROR,Die,Time,%.3f,Function,%s,invalid col %zu > %zu\n", v1, v2, v3, v4, v5);
  }

  __assert_rtn("operator()", "CMMatrix.h", 78, "false");
}

void sub_1002AD9D8()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    CFAbsoluteTimeGetCurrent();
    sub_1002AD78C();
    sub_1002AD750();
    sub_1002AD770(&_mh_execute_header, &_os_log_default, v0, "ERROR,Die,Time,%.3f,Function,%s,invalid row %zu > %zu\n", v1, v2, v3, v4, v5);
  }

  __assert_rtn("operator()", "CMMatrix.h", 77, "false");
}

void sub_1002ADA7C()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    CFAbsoluteTimeGetCurrent();
    sub_1002AD78C();
    sub_1002AD750();
    sub_1002AD770(&_mh_execute_header, &_os_log_default, v0, "ERROR,Die,Time,%.3f,Function,%s,invalid col %zu > %zu\n", v1, v2, v3, v4, v5);
  }

  __assert_rtn("operator()", "CMMatrix.h", 71, "false");
}

void sub_1002ADB20()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    CFAbsoluteTimeGetCurrent();
    sub_1002AD78C();
    sub_1002AD750();
    sub_1002AD770(&_mh_execute_header, &_os_log_default, v0, "ERROR,Die,Time,%.3f,Function,%s,invalid row %zu > %zu\n", v1, v2, v3, v4, v5);
  }

  __assert_rtn("operator()", "CMMatrix.h", 70, "false");
}

void sub_1002ADBC4()
{
  if (__cxa_guard_acquire(&qword_100458850))
  {
    dword_100458844 = 1043452116;

    __cxa_guard_release(&qword_100458850);
  }
}

void sub_1002ADC14()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    CFAbsoluteTimeGetCurrent();
    sub_1002AD78C();
    v1 = "static CMOQuaternion CMOQuaternion::slerp(const CMOQuaternion &, const CMOQuaternion &, const float)";
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "ERROR,Die,Time,%.3f,Function,%s,Invalid time t for slerp\n", v0, 0x16u);
  }

  __assert_rtn("slerp", "CMOQuaternion.cpp", 381, "false");
}

void sub_1002ADCB4()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    CFAbsoluteTimeGetCurrent();
    sub_1002AD78C();
    sub_1002AD750();
    sub_1002AD770(&_mh_execute_header, &_os_log_default, v0, "ERROR,Die,Time,%.3f,Function,%s,invalid index %zu >= %zu\n", v1, v2, v3, v4, v5);
  }

  __assert_rtn("operator[]", "CMVector.h", 277, "false");
}

void sub_1002ADD58()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    CFAbsoluteTimeGetCurrent();
    sub_1002AD78C();
    sub_1002AD770(&_mh_execute_header, &_os_log_default, v0, "ERROR,Die,Time,%.3f,Function,%s,invalid element %zu >= %zu\n", v1, v2, v3, v4, v5);
  }

  __assert_rtn("operator[]", "CMMatrix.h", 84, "false");
}

void CLKappaDeescalatorCrashClassifier::CLKappaDeescalatorCrashClassifier(CLKappaDeescalatorCrashClassifier *this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 36) = 1;
  *(this + 10) = 0;
  *(this + 44) = 0;
  *this = off_1004299F0;
  *(this + 73) = 0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 137) = 0u;
  *(this + 71) = 18;
  strcpy(this + 48, "de-CrashClassifier");
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 36) = 1;
  *(this + 10) = 0;
  *(this + 44) = 0;
  *this = off_1004299F0;
  *(this + 73) = 0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 137) = 0u;
  *(this + 71) = 18;
  strcpy(this + 48, "de-CrashClassifier");
}

void CLKappaDeescalatorCrashClassifier::log(CLKappaDeescalatorCrashClassifier *this, uint64_t a2)
{
  if ((*(this + 73) & 1) == 0)
  {
    sub_100005BF0();
  }

  v4 = *(this + 11);
  v5 = *(this + 14);
  v6 = *(this + 17);
  v7 = *(this + 152);
  v8 = +[CSPlatformInfo sharedInstance];
  v9 = [v8 isCrashClassifierSupportedPlatform];

  if (v9)
  {
    if (qword_1004567F8 != -1)
    {
      sub_1002AEB8C();
    }

    v10 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(this + 6);
      v12 = *(this + 36);
      v13 = *(this + 72);
      v14 = 134350848;
      v15 = a2;
      v16 = 1026;
      v17 = v11;
      v18 = 1026;
      v19 = v12;
      v20 = 1026;
      v21 = v13;
      v22 = 1026;
      v23 = v7;
      v24 = 2050;
      v25 = v4;
      v26 = 2050;
      v27 = v5;
      v28 = 2050;
      v29 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[de-CrashClassifier] summary,A,%{public}llu,B,%{public}u,mode,%{public}u,config-1,%{public}u,debug-1a,%{public}u,debug-1b,%{public}zu,debug-1c,%{public}zu,debug-1d,%{public}zu", &v14, 0x42u);
    }
  }
}

id sub_1002AE084()
{
  if (qword_1004567F8 != -1)
  {
    sub_1002AEB8C();
  }

  v1 = qword_100456800;

  return v1;
}

void CLKappaDeescalatorCrashClassifier::setConfig(uint64_t a1, char *a2)
{
  if (qword_1004567F8 != -1)
  {
    sub_1002AEB8C();
  }

  v4 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_INFO))
  {
    v5 = *a2;
    v7[0] = 67109120;
    v7[1] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[de-CrashClassifier] setConfig with enable,%d", v7, 8u);
  }

  v6 = *a2;
  if ((*(a1 + 73) & 1) == 0)
  {
    *(a1 + 73) = 1;
  }

  *(a1 + 72) = v6;
}

void CLKappaDeescalatorCrashClassifier::resetConfiguration(CLKappaDeescalatorCrashClassifier *this)
{
  if (qword_1004567F8 != -1)
  {
    sub_1002AEB8C();
  }

  v2 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[de-CrashClassifier] resetConfiguration", buf, 2u);
  }

  v3 = [CSPersistentConfiguration configBaseKey:"DeescalatorCrashClassifierConfig" forFeatureMode:*(this + 36)];
  v4 = +[CSPersistentConfiguration sharedConfiguration];
  v5 = [v4 BOOLThreshold:&CLKappaDeescalatorCrashClassifier::kConfigurationDefaults forKey:v3];
  CLKappaDeescalatorCrashClassifier::setConfig(this, &v5);
  *(this + 44) = CLKappaDeescalator::shouldForceNoop(this, "ForceCrashClassifier");
  *(this + 10) = CLKappaDeescalator::shouldForceDeescalate(this, "ForceCrashClassifier");
}

void CLKappaDeescalatorCrashClassifier::updateWithCrashClassifierEstimates(uint64_t a1, char *a2)
{
  v4 = +[CSPlatformInfo sharedInstance];
  v5 = [v4 isCrashClassifierSupportedPlatform];

  if (v5)
  {
    v6 = *a2;
    sub_1002AE7E0(a1 + 80, &v6);
  }
}

void CLKappaDeescalatorCrashClassifier::updateWithAlgCrashEstimates(uint64_t a1, uint64_t a2)
{
  v4 = +[CSPlatformInfo sharedInstance];
  v5 = [v4 isCrashClassifierSupportedPlatform];

  if (v5)
  {
    v6 = *(a2 + 1);
    sub_1002AE7E0(a1 + 104, &v6);
  }
}

void CLKappaDeescalatorCrashClassifier::updateWithAlgRolloverCrashEstimates(uint64_t a1, uint64_t a2)
{
  v4 = +[CSPlatformInfo sharedInstance];
  v5 = [v4 isCrashClassifierSupportedPlatform];

  if (v5)
  {
    v6 = *(a2 + 1);
    sub_1002AE7E0(a1 + 128, &v6);
  }
}

uint64_t CLKappaDeescalatorCrashClassifier::onEvaluateAtMinHoldDuration(CLKappaDeescalatorCrashClassifier *this)
{
  v2 = +[CSPlatformInfo sharedInstance];
  v3 = [v2 isCrashClassifierSupportedPlatform];

  if ((v3 & 1) == 0)
  {
    return 1;
  }

  v4 = *(this + 11);
  if (!v4 || v4 != *(this + 14) || v4 != *(this + 17))
  {
    if (qword_1004567F8 != -1)
    {
      sub_1002AEB8C();
    }

    v10 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_ERROR))
    {
      v11 = *(this + 11);
      v12 = *(this + 14);
      v13 = *(this + 17);
      v18 = 134218496;
      v19 = v11;
      v20 = 2048;
      v21 = v12;
      v22 = 2048;
      v23 = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[de-CrashClassifier] Unexpected dimensions, crashClassifierFPHistory,%zu,crashHistory,%zu,rolloverHistory,%zu", &v18, 0x20u);
    }

    return 1;
  }

  v5 = 0;
  for (i = 0; i != v4; ++i)
  {
    while (1)
    {
      v7 = i >> 6;
      v8 = 1 << i;
      if ((*(*(this + 13) + 8 * (i >> 6)) & (1 << i)) == 0 && (*(*(this + 16) + 8 * v7) & v8) == 0)
      {
        break;
      }

      if ((*(*(this + 10) + 8 * v7) & v8) == 0)
      {
        return 1;
      }

      v5 = 1;
      if (v4 - 1 == i++)
      {
        goto LABEL_20;
      }
    }
  }

  if ((v5 & 1) == 0)
  {
    return 1;
  }

LABEL_20:
  *(this + 152) = 1;
  if ((*(this + 73) & 1) == 0)
  {
    sub_100005BF0();
  }

  v15 = *(this + 72);
  v16 = sub_1002AE084();
  v17 = v16;
  if (v15)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "[de-CrashClassifier] de-escalate", &v18, 2u);
    }

    return 4;
  }

  else
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "[de-CrashClassifier] disabled", &v18, 2u);
    }

    return 5;
  }
}

void sub_1002AE6A0(CLKappaDeescalator *this)
{
  *this = off_1004299F0;
  v2 = *(this + 16);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(this + 13);
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 10);
  if (v4)
  {
    operator delete(v4);
  }

  CLKappaDeescalator::~CLKappaDeescalator(this);
}

void sub_1002AE714(CLKappaDeescalator *this)
{
  *this = off_1004299F0;
  v2 = *(this + 16);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(this + 13);
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 10);
  if (v4)
  {
    operator delete(v4);
  }

  CLKappaDeescalator::~CLKappaDeescalator(this);

  operator delete();
}

void sub_1002AE79C(id a1)
{
  qword_100456800 = os_log_create("com.apple.anomalydetectiond", "Alg");

  _objc_release_x1();
}

uint64_t sub_1002AE7E0(uint64_t result, _BYTE *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 == v5 << 6)
  {
    if ((v4 + 1) < 0)
    {
      sub_10000CD24();
    }

    v6 = v5 << 7;
    if (v6 <= (v4 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v6 = (v4 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v4 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    result = sub_1002AE888(result, v7);
    v4 = v3[1];
  }

  v3[1] = v4 + 1;
  v8 = *v3;
  v9 = v4 >> 6;
  v10 = 1 << v4;
  if (*a2 == 1)
  {
    v11 = *(v8 + 8 * v9) | v10;
  }

  else
  {
    v11 = *(v8 + 8 * v9) & ~v10;
  }

  *(v8 + 8 * v9) = v11;
  return result;
}

uint64_t sub_1002AE888(uint64_t result, unint64_t a2)
{
  if (a2 > *(result + 16) << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = 0;
      v3 = 0uLL;
      sub_1002AE944(&v2, a2);
    }

    sub_10000CD24();
  }

  return result;
}

void sub_1002AE92C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002AE944(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    sub_10000CDCC(a1, v2);
  }

  sub_10000CD24();
}

void sub_1002AE988(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[1];
  v7 = v6 + a4;
  a1[1] = v6 + a4;
  if (!v6 || ((v7 - 1) ^ (v6 - 1)) >= 0x40)
  {
    if (v7 >= 0x41)
    {
      v8 = (v7 - 1) >> 6;
    }

    else
    {
      v8 = 0;
    }

    *(*a1 + 8 * v8) = 0;
  }

  v20 = v4;
  v21 = v5;
  v9 = *(a2 + 8);
  v10 = *a3;
  v11 = *(a3 + 8);
  v12 = *a1 + 8 * (v6 >> 6);
  v18 = *a2;
  v19 = v9;
  v16 = v10;
  v17 = v11;
  v14 = v12;
  v15 = v6 & 0x3F;
  sub_1002AEA2C(&v18, &v16, &v14, &v13);
}

void sub_1002AEA2C(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 2);
  v6 = *a2;
  v7 = *(a2 + 2);
  v16 = *a1;
  v17 = v5;
  v14 = v6;
  v15 = v7;
  v8 = *(a3 + 2);
  v12 = *a3;
  v13 = v8;
  sub_1002AEABC(&v16, &v14, &v12, &v18);
  v9 = v19;
  v10 = v20;
  v11 = v21;
  *a4 = v18;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10;
  *(a4 + 24) = v11;
}

void sub_1002AEABC(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a3 + 8);
  if (*a1 != *a2 || v5 != *(a2 + 8))
  {
    do
    {
      v8 = *a3;
      v9 = 1 << v6;
      if ((*v4 >> v5))
      {
        v10 = *v8 | v9;
      }

      else
      {
        v10 = *v8 & ~v9;
      }

      *v8 = v10;
      if (v5 == 63)
      {
        v11 = 0;
        *a1 = ++v4;
      }

      else
      {
        v11 = v5 + 1;
      }

      *(a1 + 8) = v11;
      v12 = *(a3 + 8);
      if (v12 == 63)
      {
        v6 = 0;
        *a3 += 8;
        v4 = *a1;
      }

      else
      {
        v6 = v12 + 1;
      }

      *(a3 + 8) = v6;
      v5 = *(a1 + 8);
    }

    while (v4 != *a2 || v5 != *(a2 + 8));
  }

  *a4 = v4;
  *(a4 + 8) = v5;
  *(a4 + 16) = *a3;
  *(a4 + 24) = v6;
}

double CLKappaEstimatesAlgCrashClassifierResult::reset(CLKappaEstimatesAlgCrashClassifierResult *this)
{
  *(this + 8) = 0;
  *(this + 3) = 0;
  *(this + 1) = xmmword_1003841C0;
  *(this + 32) = 0;
  *(this + 5) = 0;
  result = 0.0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 105) = 0u;
  return result;
}

void CLKappaEstimatesAlgCrashClassifierResult::log(CLKappaEstimatesAlgCrashClassifierResult *this)
{
  v2 = +[CSPlatformInfo sharedInstance];
  v3 = [v2 isCrashClassifierSupportedPlatform];

  if (v3)
  {
    if (qword_1004567F8 != -1)
    {
      sub_1002B0168();
    }

    v4 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(this + 32);
      v6 = *(this + 2);
      v7 = *(this + 3);
      v8 = *(this + 5);
      v9 = *(this + 6);
      v10 = *(this + 7);
      v11 = *(this + 8);
      v12 = *(this + 9);
      v13 = *(this + 10);
      v15 = *(this + 11);
      v14 = *(this + 12);
      v16 = *(this + 13);
      v17 = *(this + 14);
      v18 = *(this + 120);
      v19[0] = 67243520;
      v19[1] = v5;
      v20 = 2050;
      v21 = v8;
      v22 = 2050;
      v23 = v6;
      v24 = 2050;
      v25 = v7;
      v26 = 2050;
      v27 = v9;
      v28 = 2050;
      v29 = v10;
      v30 = 2050;
      v31 = v11;
      v32 = 2050;
      v33 = v12;
      v34 = 2050;
      v35 = v13;
      v36 = 2050;
      v37 = v15;
      v38 = 2050;
      v39 = v14;
      v40 = 2050;
      v41 = v16;
      v42 = 2050;
      v43 = v17;
      v44 = 1026;
      v45 = v18;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[CrashClassifier-Estimates] summary,A,%{public}d,B,%{public}llu,config-1,%{public}g,config-2,%{public}g,debug-1a,%{public}g,debug-1b,%{public}g,debug-1c,%{public}g,debug-1d,%{public}g,debug-1e,%{public}g,debug-1f,%{public}g,debug-1g,%{public}g,debug-1h,%{public}g,debug-1i,%{public}g,debug-1j,%{public}d", v19, 0x86u);
    }
  }
}

id sub_1002AED5C()
{
  if (qword_1004567F8 != -1)
  {
    sub_1002B0168();
  }

  v1 = qword_100456800;

  return v1;
}

void CLKappaEstimatesAlgCrashClassifier::CLKappaEstimatesAlgCrashClassifier(CLKappaEstimatesAlgCrashClassifier *this, uint64_t *a2)
{
  CLKappaAlgBlock::CLKappaAlgBlock(this, a2 + 1);
  v4 = *a2;
  *v5 = *a2;
  *(this + *(v4 - 152)) = a2[6];
  *(this + *(*this - 160)) = a2[7];
  *(this + *(*this - 168)) = a2[8];
  *(this + *(*this - 176)) = a2[9];
  *(this + 4) = 0;
  *(this + 5) = 0;
  operator new();
}

void sub_1002AF08C(_Unwind_Exception *a1)
{
  v4 = *(v1 + 5);
  if (v4)
  {
    sub_100009A48(v4);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, (v2 + 8));
  _Unwind_Resume(a1);
}

char **sub_1002AF0B4@<X0>(uint64_t a1@<X0>, char ***a2@<X8>)
{
  result = *a1;
  {
    v6 = *(a1 + 8);
    *a2 = result;
    a2[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

void CLKappaEstimatesAlgCrashClassifier::CLKappaEstimatesAlgCrashClassifier(CLKappaEstimatesAlgCrashClassifier *this)
{
  *this = off_100411FE8;
  *(this + 6) = off_100412090;
  *(this + 7) = off_100412158;
  *(this + 8) = off_100412210;
  CLKappaAlgBlock::CLKappaAlgBlock(this, off_10042A090);
  *v1 = off_100429B40;
  v1[5] = 0;
  v1[6] = off_100429E00;
  v1[7] = off_100429F48;
  v1[8] = off_10042A038;
  v1[4] = 0;
  operator new();
}

void sub_1002AF3AC(_Unwind_Exception *a1)
{
  v3 = *(v1 + 5);
  if (v3)
  {
    sub_100009A48(v3);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_10042A090);
  _Unwind_Resume(a1);
}

void CLKappaEstimatesAlgCrashClassifier::resetConfiguration(CLKappaEstimatesAlgCrashClassifier *this)
{
  v14 = [CSPersistentConfiguration configBaseKey:"EstimatesAlgCrashClassifierConfig" forFeatureMode:*(this + 24)];
  v2 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v3) = 1077323126;
  LODWORD(v4) = -10.0;
  LODWORD(v5) = 10.0;
  [v2 algorithmThresholdNumber:0 inArrayForKey:v14 withMinValue:v4 maxValue:v5 defaultValue:v3];
  v7 = v6;
  v8 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v9) = -10.0;
  LODWORD(v10) = 10.0;
  [v8 algorithmThresholdNumber:1 inArrayForKey:v14 withMinValue:v9 maxValue:v10 defaultValue:0.0];
  v12 = v11;

  v13 = *(this + 4);
  *(v13 + 16) = v7;
  *(v13 + 24) = v12;
}

__n128 CLKappaEstimatesAlgCrashClassifier::setConfig(uint64_t a1, __n128 *a2)
{
  result = *a2;
  *(*(a1 + 32) + 16) = *a2;
  return result;
}

double CLKappaEstimatesAlgCrashClassifier::epochReset(CLKappaEstimatesAlgCrashClassifier *this)
{
  v1 = *(this + 4);
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  result = 0.0;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 105) = 0u;
  return result;
}

double virtual thunk toCLKappaEstimatesAlgCrashClassifier::epochReset(CLKappaEstimatesAlgCrashClassifier *this)
{
  v1 = *(this + *(*this - 56) + 32);
  *(v1 + 32) = 0;
  result = 0.0;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0u;
  *(v1 + 104) = 0u;
  *(v1 + 120) = 0;
  return result;
}

void CLKappaEstimatesAlgCrashClassifier::feedFeatures(uint64_t a1, uint64_t a2)
{
  v4 = 0.0;
  if (*(a2 + 152) != 1)
  {
LABEL_25:
    v37 = 0;
    v33 = 0.0;
    v13 = 0.0;
    v30 = 0.0;
    v20 = 0.0;
    v11 = 0.0;
    v36 = 0.0;
    goto LABEL_26;
  }

  if (*(a2 + 8) - *a2 != 752 || (v5 = *(a2 + 24), *(a2 + 32) - v5 != 4992) || (v6 = *(a2 + 48), *(a2 + 56) - v6 != 1040) || (v7 = *(a2 + 72), *(a2 + 80) - v7 != 4464) || (v8 = *(a2 + 96), *(a2 + 104) - v8 != 752) || (v9 = *(a2 + 120), *(a2 + 128) - v9 != 2160))
  {
    if (qword_1004567F8 != -1)
    {
      sub_1002B0168();
    }

    v38 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_ERROR))
    {
      v39 = (*(a2 + 8) - *a2) >> 3;
      v40 = (*(a2 + 32) - *(a2 + 24)) >> 3;
      v41 = (*(a2 + 56) - *(a2 + 48)) >> 3;
      v42 = (*(a2 + 80) - *(a2 + 72)) >> 3;
      v43 = (*(a2 + 104) - *(a2 + 96)) >> 3;
      v44 = (*(a2 + 128) - *(a2 + 120)) >> 3;
      *buf = 134219264;
      v47 = v39;
      v48 = 2048;
      v49 = v40;
      v50 = 2048;
      v51 = v41;
      v52 = 2048;
      v53 = v42;
      v54 = 2048;
      v55 = v43;
      v56 = 2048;
      v57 = v44;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "[CrashClassifier][Estimates] Unexpected input buffer size baro,%zu,rotationRate,%zu,inertialAccel,%zunBaro,%zu,nRotationRate,%zu,nInertialAccel,%zu", buf, 0x3Eu);
    }

    goto LABEL_25;
  }

  v10 = 0;
  v11 = 0.0;
  do
  {
    v12 = vmulq_f64(*(*a2 + v10 * 16), xmmword_100384210[v10]);
    v11 = v11 + v12.f64[0] + v12.f64[1];
    ++v10;
  }

  while (v10 != 47);
  v13 = 0.0;
  v14 = &xmmword_100384500;
  v15 = 558;
  do
  {
    v16 = *v7++;
    v17 = v16;
    v18 = *v14++;
    v19 = vmulq_f64(v17, v18);
    v13 = v13 + v19.f64[0] + v19.f64[1];
    v15 -= 2;
  }

  while (v15);
  v20 = 0.0;
  v21 = &xmmword_100385670;
  v22 = 624;
  do
  {
    v23 = *v5++;
    v24 = v23;
    v25 = *v21++;
    v26 = vmulq_f64(v24, v25);
    v20 = v20 + v26.f64[0] + v26.f64[1];
    v22 -= 2;
  }

  while (v22);
  v27 = 0;
  v4 = 0.0;
  do
  {
    v28 = vmulq_f64(*(v8 + v27 * 16), xmmword_1003869F0[v27]);
    v4 = v4 + v28.f64[0] + v28.f64[1];
    ++v27;
  }

  while (v27 != 47);
  v29 = 0;
  v30 = 0.0;
  do
  {
    v31 = vmulq_f64(*(v6 + v29 * 16), xmmword_100386CE0[v29]);
    v30 = v30 + v31.f64[0] + v31.f64[1];
    ++v29;
  }

  while (v29 != 65);
  v32 = 0;
  v33 = 0.0;
  do
  {
    v34 = vmulq_f64(*(v9 + v32 * 16), xmmword_1003870F0[v32]);
    v33 = v33 + v34.f64[0] + v34.f64[1];
    ++v32;
  }

  while (v32 != 135);
  v35 = *(a1 + 32);
  v36 = v4 + v13 + v11 + v20 + v30 + v33 + *(v35 + 16);
  v37 = v36 < *(v35 + 24);
LABEL_26:
  v45 = *(a1 + 32);
  *(v45 + 32) = v37;
  *(v45 + 40) = *(a2 + 144);
  *(v45 + 48) = v36;
  *(v45 + 56) = v11;
  *(v45 + 64) = v20;
  *(v45 + 72) = v30;
  *(v45 + 80) = v13;
  *(v45 + 88) = v4;
  *(v45 + 96) = v33;
  *(v45 + 104) = *(v45 + 16);
}

void sub_1002AF974(CLKappaAlgBlock *this)
{
  *this = off_100429B40;
  *(this + 6) = off_100429E00;
  *(this + 7) = off_100429F48;
  *(this + *(*this - 176)) = off_10042A038;
  v2 = *(this + 5);
  if (v2)
  {
    sub_100009A48(v2);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(this, off_10042A090);
}

void sub_1002AFA64(CLKappaAlgBlock *this)
{
  *this = off_100429B40;
  *(this + 6) = off_100429E00;
  *(this + 7) = off_100429F48;
  *(this + 8) = off_10042A038;
  v2 = *(this + 5);
  if (v2)
  {
    sub_100009A48(v2);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(this, off_10042A090);

  operator delete();
}

void sub_1002AFB3C(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_100429B40;
  *(v1 + 6) = off_100429E00;
  *(v1 + 7) = off_100429F48;
  *(v1 + 8) = off_10042A038;
  v2 = *(v1 + 5);
  if (v2)
  {
    sub_100009A48(v2);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_10042A090);
}