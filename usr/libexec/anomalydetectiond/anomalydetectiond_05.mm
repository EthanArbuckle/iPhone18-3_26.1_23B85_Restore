uint64_t CMMsl::AccelBatch::hash_value(CMMsl::AccelBatch *this)
{
  if ((*(this + 32) & 1) == 0)
  {
    v1 = 0.0;
    if ((*(this + 32) & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_16:
    v3 = 0;
    if ((*(this + 32) & 8) != 0)
    {
      goto LABEL_6;
    }

LABEL_17:
    v5 = 0;
    if ((*(this + 32) & 0x10) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

  v1 = *(this + 1);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  if ((*(this + 32) & 4) == 0)
  {
    goto LABEL_16;
  }

LABEL_3:
  v2 = *(this + 5);
  v3 = LODWORD(v2);
  if (v2 == 0.0)
  {
    v3 = 0;
  }

  if ((*(this + 32) & 8) == 0)
  {
    goto LABEL_17;
  }

LABEL_6:
  v4 = *(this + 6);
  v5 = LODWORD(v4);
  if (v4 == 0.0)
  {
    v5 = 0;
  }

  if ((*(this + 32) & 0x10) != 0)
  {
LABEL_9:
    v6 = *(this + 7);
    v7 = LODWORD(v6);
    if (v6 == 0.0)
    {
      v7 = 0;
    }

    if ((*(this + 32) & 2) != 0)
    {
      goto LABEL_12;
    }

LABEL_19:
    v8 = 0;
    return v3 ^ *&v1 ^ v5 ^ v7 ^ v8;
  }

LABEL_18:
  v7 = 0;
  if ((*(this + 32) & 2) == 0)
  {
    goto LABEL_19;
  }

LABEL_12:
  v8 = *(this + 4);
  return v3 ^ *&v1 ^ v5 ^ v7 ^ v8;
}

double CMMsl::AccelBiasEstimate::AccelBiasEstimate(CMMsl::AccelBiasEstimate *this)
{
  *this = off_10041C6D8;
  *(this + 20) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

{
  *this = off_10041C6D8;
  *(this + 20) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

void CMMsl::AccelBiasEstimate::~AccelBiasEstimate(CMMsl::AccelBiasEstimate *this)
{
  *this = off_10041C6D8;
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
  CMMsl::AccelBiasEstimate::~AccelBiasEstimate(this);

  operator delete();
}

CMMsl::AccelBiasEstimate *CMMsl::AccelBiasEstimate::AccelBiasEstimate(CMMsl::AccelBiasEstimate *this, const CMMsl::AccelBiasEstimate *a2)
{
  *this = off_10041C6D8;
  *(this + 8) = 0u;
  v4 = (this + 8);
  *(this + 20) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  if ((*(a2 + 80) & 2) != 0)
  {
    v5 = *(a2 + 8);
    *(this + 80) = 2;
    *(this + 8) = v5;
  }

  if (this != a2)
  {
    sub_100035BF0(this + 4, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 3);
    sub_100035BF0(v4, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 3);
  }

  v6 = *(a2 + 80);
  if ((v6 & 8) == 0)
  {
    if ((*(a2 + 80) & 4) == 0)
    {
      goto LABEL_7;
    }

LABEL_11:
    v10 = *(a2 + 18);
    *(this + 80) |= 4u;
    *(this + 18) = v10;
    if ((*(a2 + 80) & 1) == 0)
    {
      return this;
    }

    goto LABEL_8;
  }

  v9 = *(a2 + 76);
  *(this + 80) |= 8u;
  *(this + 76) = v9;
  v6 = *(a2 + 80);
  if ((v6 & 4) != 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  if (v6)
  {
LABEL_8:
    v7 = *(a2 + 7);
    *(this + 80) |= 1u;
    *(this + 7) = v7;
  }

  return this;
}

uint64_t CMMsl::AccelBiasEstimate::operator=(uint64_t a1, const CMMsl::AccelBiasEstimate *a2)
{
  if (a1 != a2)
  {
    CMMsl::AccelBiasEstimate::AccelBiasEstimate(v11, a2);
    v3 = *(a1 + 80);
    *(a1 + 80) = v18;
    v18 = v3;
    v4 = *(a1 + 40);
    *(a1 + 40) = v14;
    v5 = v13;
    v6 = *(a1 + 8);
    *(a1 + 8) = v12;
    v12 = v6;
    v7 = *(a1 + 24);
    *(a1 + 24) = v5;
    v13 = v7;
    v14 = v4;
    LOBYTE(v3) = *(a1 + 76);
    *(a1 + 76) = v17;
    v17 = v3;
    v8 = *(a1 + 72);
    *(a1 + 72) = v16;
    v16 = v8;
    v9 = *(a1 + 56);
    *(a1 + 56) = v15;
    v15 = v9;
    CMMsl::AccelBiasEstimate::~AccelBiasEstimate(v11);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::AccelBiasEstimate *a2, CMMsl::AccelBiasEstimate *a3)
{
  v3 = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v4;
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v6;
  v7 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v7;
  v8 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v8;
  v9 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v9;
  v10 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v10;
  LOBYTE(v10) = *(this + 76);
  *(this + 76) = *(a2 + 76);
  *(a2 + 76) = v10;
  LODWORD(v10) = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v10;
  result = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = result;
  return result;
}

uint64_t CMMsl::AccelBiasEstimate::AccelBiasEstimate(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041C6D8;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  v4 = a1 + 8;
  *(a1 + 40) = 0u;
  *(a1 + 80) = *(a2 + 80);
  *(a2 + 80) = 0;
  *(a1 + 64) = *(a2 + 64);
  sub_1002A2DD0(a1 + 32, (a2 + 32));
  sub_1002A2DD0(v4, (a2 + 8));
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t CMMsl::AccelBiasEstimate::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::AccelBiasEstimate::AccelBiasEstimate(v11, a2);
    v3 = *(a1 + 80);
    *(a1 + 80) = v18;
    v18 = v3;
    v4 = *(a1 + 40);
    *(a1 + 40) = v14;
    v5 = v13;
    v6 = *(a1 + 8);
    *(a1 + 8) = v12;
    v12 = v6;
    v7 = *(a1 + 24);
    *(a1 + 24) = v5;
    v13 = v7;
    v14 = v4;
    LOBYTE(v3) = *(a1 + 76);
    *(a1 + 76) = v17;
    v17 = v3;
    v8 = *(a1 + 72);
    *(a1 + 72) = v16;
    v16 = v8;
    v9 = *(a1 + 56);
    *(a1 + 56) = v15;
    v15 = v9;
    CMMsl::AccelBiasEstimate::~AccelBiasEstimate(v11);
  }

  return a1;
}

uint64_t CMMsl::AccelBiasEstimate::formatText(CMMsl::AccelBiasEstimate *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(a2, "covUT", v7);
  }

  v8 = *(this + 4);
  v9 = *(this + 5);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::TextFormatter::format(a2, "est", v10);
  }

  v11 = *(this + 80);
  if ((v11 & 8) != 0)
  {
    PB::TextFormatter::format(a2, "isCandidate", *(this + 76));
    v11 = *(this + 80);
    if ((v11 & 4) == 0)
    {
LABEL_7:
      if ((v11 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }
  }

  else if ((*(this + 80) & 4) == 0)
  {
    goto LABEL_7;
  }

  PB::TextFormatter::format(a2, "numSamplesInAverage", *(this + 18));
  v11 = *(this + 80);
  if ((v11 & 1) == 0)
  {
LABEL_8:
    if ((v11 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_15:
  PB::TextFormatter::format(a2, "temperature", *(this + 7));
  if ((*(this + 80) & 2) != 0)
  {
LABEL_9:
    PB::TextFormatter::format(a2, "timestamp", *(this + 8));
  }

LABEL_10:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::AccelBiasEstimate::readFrom(CMMsl::AccelBiasEstimate *this, PB::Reader *a2)
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
      if ((v10 >> 3) > 3)
      {
        if (v23 == 4)
        {
          *(this + 80) |= 8u;
          v42 = *(a2 + 1);
          if (v42 >= *(a2 + 2))
          {
            v45 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v43 = v42 + 1;
            v44 = *(*a2 + v42);
            *(a2 + 1) = v43;
            v45 = v44 != 0;
          }

          *(this + 76) = v45;
          goto LABEL_133;
        }

        if (v23 == 5)
        {
          *(this + 80) |= 4u;
          v63 = *(a2 + 1);
          v62 = *(a2 + 2);
          v64 = *a2;
          if (v63 > 0xFFFFFFFFFFFFFFF5 || v63 + 10 > v62)
          {
            v71 = 0;
            v72 = 0;
            v67 = 0;
            v17 = v62 >= v63;
            v73 = v62 - v63;
            if (!v17)
            {
              v73 = 0;
            }

            v74 = (v64 + v63);
            v75 = v63 + 1;
            while (1)
            {
              if (!v73)
              {
                LODWORD(v67) = 0;
                *(a2 + 24) = 1;
                goto LABEL_121;
              }

              v76 = *v74;
              *(a2 + 1) = v75;
              v67 |= (v76 & 0x7F) << v71;
              if ((v76 & 0x80) == 0)
              {
                break;
              }

              v71 += 7;
              --v73;
              ++v74;
              ++v75;
              v14 = v72++ > 8;
              if (v14)
              {
LABEL_95:
                LODWORD(v67) = 0;
                goto LABEL_121;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v67) = 0;
            }
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
                goto LABEL_95;
              }
            }
          }

LABEL_121:
          *(this + 18) = v67;
          goto LABEL_133;
        }

        if (v23 != 6)
        {
LABEL_57:
          if ((PB::Reader::skip(a2, v23, v22, 0) & 1) == 0)
          {
            goto LABEL_139;
          }

          goto LABEL_133;
        }

        *(this + 80) |= 1u;
        v40 = *(a2 + 1);
        if (v40 > 0xFFFFFFFFFFFFFFF7 || v40 + 8 > *(a2 + 2))
        {
          goto LABEL_130;
        }

        *(this + 7) = *(*a2 + v40);
      }

      else if (v23 == 1)
      {
        *(this + 80) |= 2u;
        v41 = *(a2 + 1);
        if (v41 > 0xFFFFFFFFFFFFFFF7 || v41 + 8 > *(a2 + 2))
        {
          goto LABEL_130;
        }

        *(this + 8) = *(*a2 + v41);
      }

      else
      {
        if (v23 == 2)
        {
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
LABEL_139:
              v103 = 0;
              return v103 & 1;
            }

            v46 = *(a2 + 1);
            v47 = *(a2 + 2);
            while (v46 < v47 && (*(a2 + 24) & 1) == 0)
            {
              v49 = *(this + 5);
              v48 = *(this + 6);
              if (v49 >= v48)
              {
                v51 = *(this + 4);
                v52 = v49 - v51;
                v53 = (v49 - v51) >> 3;
                v54 = v53 + 1;
                if ((v53 + 1) >> 61)
                {
                  goto LABEL_140;
                }

                v55 = v48 - v51;
                if (v55 >> 2 > v54)
                {
                  v54 = v55 >> 2;
                }

                if (v55 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v56 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v56 = v54;
                }

                if (v56)
                {
                  sub_10000CDCC(this + 32, v56);
                }

                v57 = (v49 - v51) >> 3;
                v58 = (8 * v53);
                v59 = (8 * v53 - 8 * v57);
                *v58 = 0;
                v50 = v58 + 1;
                memcpy(v59, v51, v52);
                v60 = *(this + 4);
                *(this + 4) = v59;
                *(this + 5) = v50;
                *(this + 6) = 0;
                if (v60)
                {
                  operator delete(v60);
                }
              }

              else
              {
                *v49 = 0;
                v50 = v49 + 8;
              }

              *(this + 5) = v50;
              v61 = *(a2 + 1);
              if (v61 > 0xFFFFFFFFFFFFFFF7 || v61 + 8 > *(a2 + 2))
              {
LABEL_100:
                *(a2 + 24) = 1;
                goto LABEL_101;
              }

              *(v50 - 1) = *(*a2 + v61);
              v47 = *(a2 + 2);
              v46 = *(a2 + 1) + 8;
              *(a2 + 1) = v46;
            }

            goto LABEL_101;
          }

          v81 = *(this + 5);
          v80 = *(this + 6);
          if (v81 >= v80)
          {
            v88 = *(this + 4);
            v89 = v81 - v88;
            v90 = (v81 - v88) >> 3;
            v91 = v90 + 1;
            if ((v90 + 1) >> 61)
            {
LABEL_140:
              sub_10000CD24();
            }

            v92 = v80 - v88;
            if (v92 >> 2 > v91)
            {
              v91 = v92 >> 2;
            }

            if (v92 >= 0x7FFFFFFFFFFFFFF8)
            {
              v93 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v93 = v91;
            }

            if (v93)
            {
              sub_10000CDCC(this + 32, v93);
            }

            v98 = (v81 - v88) >> 3;
            v99 = (8 * v90);
            v100 = (8 * v90 - 8 * v98);
            *v99 = 0;
            v79 = v99 + 1;
            memcpy(v100, v88, v89);
            v101 = *(this + 4);
            *(this + 4) = v100;
            *(this + 5) = v79;
            *(this + 6) = 0;
            if (v101)
            {
              operator delete(v101);
            }
          }

          else
          {
            *v81 = 0;
            v79 = v81 + 8;
          }

          *(this + 5) = v79;
        }

        else
        {
          if (v23 != 3)
          {
            goto LABEL_57;
          }

          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_139;
            }

            v24 = *(a2 + 1);
            v25 = *(a2 + 2);
            while (v24 < v25 && (*(a2 + 24) & 1) == 0)
            {
              v27 = *(this + 2);
              v26 = *(this + 3);
              if (v27 >= v26)
              {
                v29 = *(this + 1);
                v30 = v27 - v29;
                v31 = (v27 - v29) >> 3;
                v32 = v31 + 1;
                if ((v31 + 1) >> 61)
                {
                  goto LABEL_140;
                }

                v33 = v26 - v29;
                if (v33 >> 2 > v32)
                {
                  v32 = v33 >> 2;
                }

                if (v33 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v34 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v34 = v32;
                }

                if (v34)
                {
                  sub_10000CDCC(this + 8, v34);
                }

                v35 = (v27 - v29) >> 3;
                v36 = (8 * v31);
                v37 = (8 * v31 - 8 * v35);
                *v36 = 0;
                v28 = v36 + 1;
                memcpy(v37, v29, v30);
                v38 = *(this + 1);
                *(this + 1) = v37;
                *(this + 2) = v28;
                *(this + 3) = 0;
                if (v38)
                {
                  operator delete(v38);
                }
              }

              else
              {
                *v27 = 0;
                v28 = v27 + 8;
              }

              *(this + 2) = v28;
              v39 = *(a2 + 1);
              if (v39 > 0xFFFFFFFFFFFFFFF7 || v39 + 8 > *(a2 + 2))
              {
                goto LABEL_100;
              }

              *(v28 - 1) = *(*a2 + v39);
              v25 = *(a2 + 2);
              v24 = *(a2 + 1) + 8;
              *(a2 + 1) = v24;
            }

LABEL_101:
            PB::Reader::recallMark();
            goto LABEL_133;
          }

          v78 = *(this + 2);
          v77 = *(this + 3);
          if (v78 >= v77)
          {
            v82 = *(this + 1);
            v83 = v78 - v82;
            v84 = (v78 - v82) >> 3;
            v85 = v84 + 1;
            if ((v84 + 1) >> 61)
            {
              goto LABEL_140;
            }

            v86 = v77 - v82;
            if (v86 >> 2 > v85)
            {
              v85 = v86 >> 2;
            }

            if (v86 >= 0x7FFFFFFFFFFFFFF8)
            {
              v87 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v87 = v85;
            }

            if (v87)
            {
              sub_10000CDCC(this + 8, v87);
            }

            v94 = (v78 - v82) >> 3;
            v95 = (8 * v84);
            v96 = (8 * v84 - 8 * v94);
            *v95 = 0;
            v79 = v95 + 1;
            memcpy(v96, v82, v83);
            v97 = *(this + 1);
            *(this + 1) = v96;
            *(this + 2) = v79;
            *(this + 3) = 0;
            if (v97)
            {
              operator delete(v97);
            }
          }

          else
          {
            *v78 = 0;
            v79 = v78 + 8;
          }

          *(this + 2) = v79;
        }

        v102 = *(a2 + 1);
        if (v102 > 0xFFFFFFFFFFFFFFF7 || v102 + 8 > *(a2 + 2))
        {
LABEL_130:
          *(a2 + 24) = 1;
          goto LABEL_133;
        }

        *(v79 - 1) = *(*a2 + v102);
      }

      *(a2 + 1) += 8;
LABEL_133:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

  v103 = v4 ^ 1;
  return v103 & 1;
}

uint64_t CMMsl::AccelBiasEstimate::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if ((*(this + 80) & 2) != 0)
  {
    this = PB::Writer::write(a2, *(this + 64), 1u);
  }

  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  while (v4 != v5)
  {
    v6 = *v4++;
    this = PB::Writer::write(a2, v6, 2u);
  }

  v7 = *(v3 + 8);
  v8 = *(v3 + 16);
  while (v7 != v8)
  {
    v9 = *v7++;
    this = PB::Writer::write(a2, v9, 3u);
  }

  v10 = *(v3 + 80);
  if ((v10 & 8) == 0)
  {
    if ((*(v3 + 80) & 4) == 0)
    {
      goto LABEL_11;
    }

LABEL_14:
    this = PB::Writer::writeVarInt(a2, *(v3 + 72), 5u);
    if ((*(v3 + 80) & 1) == 0)
    {
      return this;
    }

    goto LABEL_15;
  }

  this = PB::Writer::write(a2, *(v3 + 76), 4u);
  v10 = *(v3 + 80);
  if ((v10 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  if ((v10 & 1) == 0)
  {
    return this;
  }

LABEL_15:
  v11 = *(v3 + 56);

  return PB::Writer::write(a2, v11, 6u);
}

BOOL CMMsl::AccelBiasEstimate::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 80) & 2) != 0)
  {
    if ((*(a2 + 80) & 2) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((*(a2 + 80) & 2) != 0)
  {
    return 0;
  }

  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a2 + 32);
  if (v2 - v3 != *(a2 + 40) - v4)
  {
    return 0;
  }

  while (v3 != v2)
  {
    if (*v3 != *v4)
    {
      return 0;
    }

    ++v3;
    ++v4;
  }

  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a2 + 8);
  if (v5 - v6 != *(a2 + 16) - v7)
  {
    return 0;
  }

  while (v6 != v5)
  {
    if (*v6 != *v7)
    {
      return 0;
    }

    ++v6;
    ++v7;
  }

  if ((*(a1 + 80) & 8) != 0)
  {
    if ((*(a2 + 80) & 8) == 0 || *(a1 + 76) != *(a2 + 76))
    {
      return 0;
    }
  }

  else if ((*(a2 + 80) & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 80) & 4) != 0)
  {
    if ((*(a2 + 80) & 4) == 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if ((*(a2 + 80) & 4) != 0)
  {
    return 0;
  }

  v8 = (*(a2 + 80) & 1) == 0;
  if (*(a1 + 80))
  {
    return (*(a2 + 80) & 1) != 0 && *(a1 + 56) == *(a2 + 56);
  }

  return v8;
}

uint64_t CMMsl::AccelBiasEstimate::hash_value(CMMsl::AccelBiasEstimate *this)
{
  if ((*(this + 80) & 2) != 0)
  {
    if (*(this + 8) == 0.0)
    {
      v2 = 0;
    }

    else
    {
      v2 = *(this + 8);
    }
  }

  else
  {
    v2 = 0;
  }

  v3 = *(this + 4);
  v4 = *(this + 5);
  v5 = PBHashBytes();
  v6 = *(this + 1);
  v7 = *(this + 2);
  v8 = PBHashBytes();
  if ((*(this + 80) & 8) != 0)
  {
    v9 = *(this + 76);
    if ((*(this + 80) & 4) != 0)
    {
LABEL_8:
      v10 = *(this + 18);
      if (*(this + 80))
      {
        goto LABEL_9;
      }

LABEL_14:
      v11 = 0.0;
      return v5 ^ v2 ^ v8 ^ v9 ^ v10 ^ *&v11;
    }
  }

  else
  {
    v9 = 0;
    if ((*(this + 80) & 4) != 0)
    {
      goto LABEL_8;
    }
  }

  v10 = 0;
  if ((*(this + 80) & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_9:
  v11 = *(this + 7);
  if (v11 == 0.0)
  {
    v11 = 0.0;
  }

  return v5 ^ v2 ^ v8 ^ v9 ^ v10 ^ *&v11;
}

void *CMMsl::AccelGesture::AccelGesture(void *this)
{
  *this = off_10041C710;
  this[1] = 0;
  return this;
}

{
  *this = off_10041C710;
  this[1] = 0;
  return this;
}

void CMMsl::AccelGesture::~AccelGesture(CMMsl::AccelGesture *this)
{
  v2 = *(this + 1);
  *this = off_10041C710;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::AccelGesture::~AccelGesture(this);

  operator delete();
}

void *CMMsl::AccelGesture::AccelGesture(void *this, const CMMsl::AccelGesture *a2)
{
  *this = off_10041C710;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const CMMsl::AccelGesture *CMMsl::AccelGesture::operator=(const CMMsl::AccelGesture *a1, const CMMsl::AccelGesture *a2)
{
  if (a1 != a2)
  {
    CMMsl::AccelGesture::AccelGesture(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    CMMsl::AccelGesture::~AccelGesture(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::AccelGesture *a2, CMMsl::AccelGesture *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::AccelGesture::AccelGesture(void *a1, uint64_t a2)
{
  *a1 = off_10041C710;
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
  *a1 = off_10041C710;
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

uint64_t CMMsl::AccelGesture::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = off_10041C710;
    v6[1] = v4;
    CMMsl::AccelGesture::~AccelGesture(v6);
  }

  return a1;
}

uint64_t CMMsl::AccelGesture::formatText(CMMsl::AccelGesture *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::AccelGesture::readFrom(CMMsl::AccelGesture *this, PB::Reader *a2)
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

uint64_t CMMsl::AccelGesture::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2, 1u);
  }

  return this;
}

BOOL CMMsl::AccelGesture::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  result = v3 == 0;
  if (v2)
  {
    return v3 && CMMsl::Accel::operator==(v2, v3);
  }

  return result;
}

CMMsl::Accel *CMMsl::AccelGesture::hash_value(CMMsl::AccelGesture *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::Accel::hash_value(result);
  }

  return result;
}

uint64_t CMMsl::AccelGesture::makeSuper(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::AccelGps::AccelGps(uint64_t this)
{
  *this = off_10041C748;
  *(this + 28) = 0;
  return this;
}

{
  *this = off_10041C748;
  *(this + 28) = 0;
  return this;
}

void CMMsl::AccelGps::~AccelGps(CMMsl::AccelGps *this)
{
  PB::Base::~Base(this);

  operator delete();
}

float CMMsl::AccelGps::AccelGps(CMMsl::AccelGps *this, const CMMsl::AccelGps *a2)
{
  *this = off_10041C748;
  *(this + 7) = 0;
  v2 = *(a2 + 28);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 28) = 1;
    *(this + 1) = v4;
    v2 = *(a2 + 28);
    if ((v2 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 28) & 2) != 0)
  {
LABEL_5:
    LODWORD(v4) = *(a2 + 4);
    v3 |= 2u;
    *(this + 28) = v3;
    *(this + 4) = v4;
    v2 = *(a2 + 28);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    LODWORD(v4) = *(a2 + 5);
    v3 |= 4u;
    *(this + 28) = v3;
    *(this + 5) = v4;
    if ((*(a2 + 28) & 8) == 0)
    {
      return *&v4;
    }
  }

  else if ((v2 & 8) == 0)
  {
    return *&v4;
  }

  LODWORD(v4) = *(a2 + 6);
  *(this + 28) = v3 | 8;
  *(this + 6) = v4;
  return *&v4;
}

uint64_t CMMsl::AccelGps::operator=(uint64_t a1, const CMMsl::AccelGps *a2)
{
  if (a1 != a2)
  {
    CMMsl::AccelGps::AccelGps(&v9, a2);
    v3 = v11;
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    *(a1 + 8) = v10;
    *(a1 + 16) = v3;
    v6 = *(a1 + 28);
    *(a1 + 28) = v13;
    v13 = v6;
    v10 = v4;
    v11 = v5;
    v7 = *(a1 + 24);
    *(a1 + 24) = v12;
    v12 = v7;
    PB::Base::~Base(&v9);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::AccelGps *a2, CMMsl::AccelGps *a3)
{
  v3 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  LODWORD(v4) = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v4;
  result = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = result;
  return result;
}

float CMMsl::AccelGps::AccelGps(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041C748;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  return result;
}

{
  *a1 = off_10041C748;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  return result;
}

uint64_t CMMsl::AccelGps::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 28);
    *(a2 + 28) = 0;
    v4 = *(a2 + 24);
    v5 = *(a1 + 8);
    v6 = *(a1 + 16);
    v7 = *(a2 + 16);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = v7;
    v9[0] = off_10041C748;
    v11 = *(a1 + 28);
    *(a1 + 28) = v3;
    v9[1] = v5;
    v9[2] = v6;
    LODWORD(v5) = *(a1 + 24);
    *(a1 + 24) = v4;
    v10 = v5;
    PB::Base::~Base(v9);
  }

  return a1;
}

uint64_t CMMsl::AccelGps::formatText(CMMsl::AccelGps *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 28);
  if (v5)
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 1));
    v5 = *(this + 28);
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

  else if ((*(this + 28) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "x", *(this + 4));
  v5 = *(this + 28);
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
  PB::TextFormatter::format(a2, "y", *(this + 5));
  if ((*(this + 28) & 8) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(a2, "z", *(this + 6));
  }

LABEL_6:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::AccelGps::readFrom(CMMsl::AccelGps *this, PB::Reader *a2)
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
            goto LABEL_48;
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
          *(this + 28) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
LABEL_40:
            *(a2 + 24) = 1;
            goto LABEL_44;
          }

          *(this + 5) = *(*a2 + v2);
LABEL_42:
          v2 = *(a2 + 1) + 4;
LABEL_43:
          *(a2 + 1) = v2;
          goto LABEL_44;
        }

        if (v22 == 4)
        {
          *(this + 28) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_40;
          }

          *(this + 6) = *(*a2 + v2);
          goto LABEL_42;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(this + 28) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_40;
          }

          *(this + 1) = *(*a2 + v2);
          v2 = *(a2 + 1) + 8;
          goto LABEL_43;
        }

        if (v22 == 2)
        {
          *(this + 28) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_40;
          }

          *(this + 4) = *(*a2 + v2);
          goto LABEL_42;
        }
      }

      if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(a2 + 1);
LABEL_44:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_48:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t CMMsl::AccelGps::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 28);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8), 1u);
    v4 = *(v3 + 28);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = PB::Writer::write(a2, *(v3 + 20), 3u);
      if ((*(v3 + 28) & 8) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 28) & 2) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 16), 2u);
  v4 = *(v3 + 28);
  if ((v4 & 4) != 0)
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

BOOL CMMsl::AccelGps::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 28))
  {
    if ((*(a2 + 28) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 28))
  {
    return 0;
  }

  if ((*(a1 + 28) & 2) != 0)
  {
    if ((*(a2 + 28) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 28) & 2) != 0)
  {
    return 0;
  }

  if ((*(a1 + 28) & 4) != 0)
  {
    if ((*(a2 + 28) & 4) == 0 || *(a1 + 20) != *(a2 + 20))
    {
      return 0;
    }
  }

  else if ((*(a2 + 28) & 4) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 28) & 8) == 0;
  if ((*(a1 + 28) & 8) != 0)
  {
    return (*(a2 + 28) & 8) != 0 && *(a1 + 24) == *(a2 + 24);
  }

  return v2;
}

uint64_t CMMsl::AccelGps::hash_value(CMMsl::AccelGps *this)
{
  if ((*(this + 28) & 1) == 0)
  {
    v1 = 0.0;
    if ((*(this + 28) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_15:
    v3 = 0;
    if ((*(this + 28) & 4) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

  v1 = *(this + 1);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  if ((*(this + 28) & 2) == 0)
  {
    goto LABEL_15;
  }

LABEL_3:
  v2 = *(this + 4);
  v3 = LODWORD(v2);
  if (v2 == 0.0)
  {
    v3 = 0;
  }

  if ((*(this + 28) & 4) != 0)
  {
LABEL_6:
    v4 = *(this + 5);
    v5 = LODWORD(v4);
    if (v4 == 0.0)
    {
      v5 = 0;
    }

    if ((*(this + 28) & 8) != 0)
    {
      goto LABEL_9;
    }

LABEL_17:
    v7 = 0;
    return v3 ^ *&v1 ^ v5 ^ v7;
  }

LABEL_16:
  v5 = 0;
  if ((*(this + 28) & 8) == 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  v6 = *(this + 6);
  v7 = LODWORD(v6);
  if (v6 == 0.0)
  {
    v7 = 0;
  }

  return v3 ^ *&v1 ^ v5 ^ v7;
}

void *CMMsl::AccelOscarEmu::AccelOscarEmu(void *this)
{
  *this = off_10041C780;
  this[1] = 0;
  return this;
}

{
  *this = off_10041C780;
  this[1] = 0;
  return this;
}

void CMMsl::AccelOscarEmu::~AccelOscarEmu(CMMsl::AccelOscarEmu *this)
{
  v2 = *(this + 1);
  *this = off_10041C780;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::AccelOscarEmu::~AccelOscarEmu(this);

  operator delete();
}

void *CMMsl::AccelOscarEmu::AccelOscarEmu(void *this, const CMMsl::AccelOscarEmu *a2)
{
  *this = off_10041C780;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const CMMsl::AccelOscarEmu *CMMsl::AccelOscarEmu::operator=(const CMMsl::AccelOscarEmu *a1, const CMMsl::AccelOscarEmu *a2)
{
  if (a1 != a2)
  {
    CMMsl::AccelOscarEmu::AccelOscarEmu(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    CMMsl::AccelOscarEmu::~AccelOscarEmu(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::AccelOscarEmu *a2, CMMsl::AccelOscarEmu *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::AccelOscarEmu::AccelOscarEmu(void *a1, uint64_t a2)
{
  *a1 = off_10041C780;
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
  *a1 = off_10041C780;
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

uint64_t CMMsl::AccelOscarEmu::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = off_10041C780;
    v6[1] = v4;
    CMMsl::AccelOscarEmu::~AccelOscarEmu(v6);
  }

  return a1;
}

uint64_t CMMsl::AccelOscarEmu::formatText(CMMsl::AccelOscarEmu *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::AccelOscarEmu::readFrom(CMMsl::AccelOscarEmu *this, PB::Reader *a2)
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

uint64_t CMMsl::AccelOscarEmu::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2, 1u);
  }

  return this;
}

BOOL CMMsl::AccelOscarEmu::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  result = v3 == 0;
  if (v2)
  {
    return v3 && CMMsl::Accel::operator==(v2, v3);
  }

  return result;
}

CMMsl::Accel *CMMsl::AccelOscarEmu::hash_value(CMMsl::AccelOscarEmu *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::Accel::hash_value(result);
  }

  return result;
}

uint64_t CMMsl::AccelOscarEmu::makeSuper(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

double CMMsl::AccelTNBFrame::AccelTNBFrame(CMMsl::AccelTNBFrame *this)
{
  *this = off_10041C7B8;
  *(this + 29) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  return result;
}

{
  *this = off_10041C7B8;
  *(this + 29) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  return result;
}

void CMMsl::AccelTNBFrame::~AccelTNBFrame(CMMsl::AccelTNBFrame *this)
{
  *this = off_10041C7B8;
  v2 = *(this + 7);
  if (v2)
  {
    *(this + 8) = v2;
    operator delete(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    *(this + 5) = v3;
    operator delete(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    *(this + 2) = v4;
    operator delete(v4);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::AccelTNBFrame::~AccelTNBFrame(this);

  operator delete();
}

CMMsl::AccelTNBFrame *CMMsl::AccelTNBFrame::AccelTNBFrame(char **this, char **a2)
{
  *this = off_10041C7B8;
  *(this + 1) = 0u;
  v4 = this + 1;
  *(this + 29) = 0;
  *(this + 3) = 0u;
  *(this + 5) = 0u;
  *(this + 7) = 0u;
  this[9] = 0;
  if (this != a2)
  {
    sub_100035D1C(this + 7, a2[7], a2[8], (a2[8] - a2[7]) >> 2);
    sub_100035D1C(this + 4, a2[4], a2[5], (a2[5] - a2[4]) >> 2);
    sub_100035D1C(v4, a2[1], a2[2], (a2[2] - a2[1]) >> 2);
  }

  v5 = *(a2 + 116);
  if ((v5 & 2) != 0)
  {
    v8 = a2[11];
    *(this + 116) |= 2u;
    this[11] = v8;
    v5 = *(a2 + 116);
    if ((v5 & 1) == 0)
    {
LABEL_5:
      if ((v5 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }
  }

  else if ((*(a2 + 116) & 1) == 0)
  {
    goto LABEL_5;
  }

  v9 = a2[10];
  *(this + 116) |= 1u;
  this[10] = v9;
  v5 = *(a2 + 116);
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    v11 = *(a2 + 112);
    *(this + 116) |= 0x10u;
    *(this + 112) = v11;
    if ((*(a2 + 116) & 4) == 0)
    {
      return this;
    }

    goto LABEL_8;
  }

LABEL_12:
  v10 = a2[13];
  *(this + 116) |= 8u;
  this[13] = v10;
  v5 = *(a2 + 116);
  if ((v5 & 0x10) != 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  if ((v5 & 4) != 0)
  {
LABEL_8:
    v6 = a2[12];
    *(this + 116) |= 4u;
    this[12] = v6;
  }

  return this;
}

CMMsl *CMMsl::AccelTNBFrame::operator=(CMMsl *a1, char **a2)
{
  if (a1 != a2)
  {
    CMMsl::AccelTNBFrame::AccelTNBFrame(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::AccelTNBFrame::~AccelTNBFrame(v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::AccelTNBFrame *a2, CMMsl::AccelTNBFrame *a3)
{
  v3 = *(this + 29);
  *(this + 29) = *(a2 + 29);
  *(a2 + 29) = v3;
  v4 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v4;
  v5 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v5;
  v6 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v6;
  v7 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v7;
  v8 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v8;
  v9 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v9;
  v10 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v10;
  v11 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v11;
  v12 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v12;
  v13 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v13;
  v14 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v14;
  v15 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v15;
  LOBYTE(v12) = *(this + 112);
  *(this + 112) = *(a2 + 112);
  *(a2 + 112) = v12;
  result = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = result;
  return result;
}

uint64_t CMMsl::AccelTNBFrame::AccelTNBFrame(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041C7B8;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 8) = 0u;
  v4 = a1 + 8;
  *(a1 + 56) = 0u;
  *(a1 + 116) = *(a2 + 116);
  *(a2 + 116) = 0;
  sub_1002A2DD0(a1 + 56, (a2 + 56));
  sub_1002A2DD0(a1 + 32, (a2 + 32));
  sub_1002A2DD0(v4, (a2 + 8));
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  return a1;
}

CMMsl *CMMsl::AccelTNBFrame::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::AccelTNBFrame::AccelTNBFrame(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::AccelTNBFrame::~AccelTNBFrame(v5);
  }

  return a1;
}

uint64_t CMMsl::AccelTNBFrame::formatText(CMMsl::AccelTNBFrame *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(a2, "B", v7);
  }

  v8 = *(this + 4);
  v9 = *(this + 5);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::TextFormatter::format(a2, "N", v10);
  }

  v11 = *(this + 7);
  v12 = *(this + 8);
  while (v11 != v12)
  {
    v13 = *v11++;
    PB::TextFormatter::format(a2, "T", v13);
  }

  v14 = *(this + 116);
  if (v14)
  {
    PB::TextFormatter::format(a2, "curvature", *(this + 10));
    v14 = *(this + 116);
    if ((v14 & 0x10) == 0)
    {
LABEL_9:
      if ((v14 & 2) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }
  }

  else if ((*(this + 116) & 0x10) == 0)
  {
    goto LABEL_9;
  }

  PB::TextFormatter::format(a2, "isValid", *(this + 112));
  v14 = *(this + 116);
  if ((v14 & 2) == 0)
  {
LABEL_10:
    if ((v14 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

LABEL_18:
  PB::TextFormatter::format(a2, "jerkNorm", *(this + 11));
  v14 = *(this + 116);
  if ((v14 & 4) == 0)
  {
LABEL_11:
    if ((v14 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_19:
  PB::TextFormatter::format(a2, "timestamp", *(this + 12));
  if ((*(this + 116) & 8) != 0)
  {
LABEL_12:
    PB::TextFormatter::format(a2, "torsion", *(this + 13));
  }

LABEL_13:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::AccelTNBFrame::readFrom(CMMsl::AccelTNBFrame *this, PB::Reader *a2)
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
      if ((v10 >> 3) > 4)
      {
        if (v23 > 6)
        {
          if (v23 == 7)
          {
            *(this + 116) |= 0x10u;
            v77 = *(a2 + 1);
            if (v77 >= *(a2 + 2))
            {
              v80 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v78 = v77 + 1;
              v79 = *(*a2 + v77);
              *(a2 + 1) = v78;
              v80 = v79 != 0;
            }

            *(this + 112) = v80;
            goto LABEL_158;
          }

          if (v23 == 8)
          {
            *(this + 116) |= 4u;
            v42 = *(a2 + 1);
            if (v42 > 0xFFFFFFFFFFFFFFF7 || v42 + 8 > *(a2 + 2))
            {
LABEL_155:
              *(a2 + 24) = 1;
              goto LABEL_158;
            }

            *(this + 12) = *(*a2 + v42);
LABEL_85:
            v60 = *(a2 + 1) + 8;
LABEL_157:
            *(a2 + 1) = v60;
            goto LABEL_158;
          }
        }

        else
        {
          if (v23 == 5)
          {
            *(this + 116) |= 1u;
            v59 = *(a2 + 1);
            if (v59 > 0xFFFFFFFFFFFFFFF7 || v59 + 8 > *(a2 + 2))
            {
              goto LABEL_155;
            }

            *(this + 10) = *(*a2 + v59);
            goto LABEL_85;
          }

          if (v23 == 6)
          {
            *(this + 116) |= 8u;
            v40 = *(a2 + 1);
            if (v40 > 0xFFFFFFFFFFFFFFF7 || v40 + 8 > *(a2 + 2))
            {
              goto LABEL_155;
            }

            *(this + 13) = *(*a2 + v40);
            goto LABEL_85;
          }
        }
      }

      else if (v23 > 2)
      {
        if (v23 == 3)
        {
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_164;
            }

            v61 = *(a2 + 1);
            v62 = *(a2 + 2);
            while (v61 < v62 && (*(a2 + 24) & 1) == 0)
            {
              v64 = *(this + 2);
              v63 = *(this + 3);
              if (v64 >= v63)
              {
                v66 = *(this + 1);
                v67 = v64 - v66;
                v68 = (v64 - v66) >> 2;
                v69 = v68 + 1;
                if ((v68 + 1) >> 62)
                {
                  goto LABEL_165;
                }

                v70 = v63 - v66;
                if (v70 >> 1 > v69)
                {
                  v69 = v70 >> 1;
                }

                if (v70 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v71 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v71 = v69;
                }

                if (v71)
                {
                  sub_10002290C(this + 8, v71);
                }

                v72 = (v64 - v66) >> 2;
                v73 = (4 * v68);
                v74 = (4 * v68 - 4 * v72);
                *v73 = 0;
                v65 = v73 + 1;
                memcpy(v74, v66, v67);
                v75 = *(this + 1);
                *(this + 1) = v74;
                *(this + 2) = v65;
                *(this + 3) = 0;
                if (v75)
                {
                  operator delete(v75);
                }
              }

              else
              {
                *v64 = 0;
                v65 = v64 + 4;
              }

              *(this + 2) = v65;
              v76 = *(a2 + 1);
              if (v76 > 0xFFFFFFFFFFFFFFFBLL || v76 + 4 > *(a2 + 2))
              {
LABEL_118:
                *(a2 + 24) = 1;
                goto LABEL_119;
              }

              *(v65 - 1) = *(*a2 + v76);
              v62 = *(a2 + 2);
              v61 = *(a2 + 1) + 4;
              *(a2 + 1) = v61;
            }

            goto LABEL_119;
          }

          v85 = *(this + 2);
          v84 = *(this + 3);
          if (v85 >= v84)
          {
            v94 = *(this + 1);
            v95 = v85 - v94;
            v96 = (v85 - v94) >> 2;
            v97 = v96 + 1;
            if ((v96 + 1) >> 62)
            {
              goto LABEL_165;
            }

            v98 = v84 - v94;
            if (v98 >> 1 > v97)
            {
              v97 = v98 >> 1;
            }

            if (v98 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v99 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v99 = v97;
            }

            if (v99)
            {
              sub_10002290C(this + 8, v99);
            }

            v110 = (v85 - v94) >> 2;
            v111 = (4 * v96);
            v112 = (4 * v96 - 4 * v110);
            *v111 = 0;
            v83 = v111 + 1;
            memcpy(v112, v94, v95);
            v113 = *(this + 1);
            *(this + 1) = v112;
            *(this + 2) = v83;
            *(this + 3) = 0;
            if (v113)
            {
              operator delete(v113);
            }
          }

          else
          {
            *v85 = 0;
            v83 = v85 + 4;
          }

          *(this + 2) = v83;
LABEL_153:
          v118 = *(a2 + 1);
          if (v118 > 0xFFFFFFFFFFFFFFFBLL || v118 + 4 > *(a2 + 2))
          {
            goto LABEL_155;
          }

          *(v83 - 1) = *(*a2 + v118);
          v60 = *(a2 + 1) + 4;
          goto LABEL_157;
        }

        if (v23 == 4)
        {
          *(this + 116) |= 2u;
          v41 = *(a2 + 1);
          if (v41 > 0xFFFFFFFFFFFFFFF7 || v41 + 8 > *(a2 + 2))
          {
            goto LABEL_155;
          }

          *(this + 11) = *(*a2 + v41);
          goto LABEL_85;
        }
      }

      else
      {
        if (v23 == 1)
        {
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_164;
            }

            v43 = *(a2 + 1);
            v44 = *(a2 + 2);
            while (v43 < v44 && (*(a2 + 24) & 1) == 0)
            {
              v46 = *(this + 8);
              v45 = *(this + 9);
              if (v46 >= v45)
              {
                v48 = *(this + 7);
                v49 = v46 - v48;
                v50 = (v46 - v48) >> 2;
                v51 = v50 + 1;
                if ((v50 + 1) >> 62)
                {
                  goto LABEL_165;
                }

                v52 = v45 - v48;
                if (v52 >> 1 > v51)
                {
                  v51 = v52 >> 1;
                }

                if (v52 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v53 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v53 = v51;
                }

                if (v53)
                {
                  sub_10002290C(this + 56, v53);
                }

                v54 = (v46 - v48) >> 2;
                v55 = (4 * v50);
                v56 = (4 * v50 - 4 * v54);
                *v55 = 0;
                v47 = v55 + 1;
                memcpy(v56, v48, v49);
                v57 = *(this + 7);
                *(this + 7) = v56;
                *(this + 8) = v47;
                *(this + 9) = 0;
                if (v57)
                {
                  operator delete(v57);
                }
              }

              else
              {
                *v46 = 0;
                v47 = v46 + 4;
              }

              *(this + 8) = v47;
              v58 = *(a2 + 1);
              if (v58 > 0xFFFFFFFFFFFFFFFBLL || v58 + 4 > *(a2 + 2))
              {
                goto LABEL_118;
              }

              *(v47 - 1) = *(*a2 + v58);
              v44 = *(a2 + 2);
              v43 = *(a2 + 1) + 4;
              *(a2 + 1) = v43;
            }

            goto LABEL_119;
          }

          v82 = *(this + 8);
          v81 = *(this + 9);
          if (v82 >= v81)
          {
            v88 = *(this + 7);
            v89 = v82 - v88;
            v90 = (v82 - v88) >> 2;
            v91 = v90 + 1;
            if ((v90 + 1) >> 62)
            {
              goto LABEL_165;
            }

            v92 = v81 - v88;
            if (v92 >> 1 > v91)
            {
              v91 = v92 >> 1;
            }

            if (v92 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v93 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v93 = v91;
            }

            if (v93)
            {
              sub_10002290C(this + 56, v93);
            }

            v106 = (v82 - v88) >> 2;
            v107 = (4 * v90);
            v108 = (4 * v90 - 4 * v106);
            *v107 = 0;
            v83 = v107 + 1;
            memcpy(v108, v88, v89);
            v109 = *(this + 7);
            *(this + 7) = v108;
            *(this + 8) = v83;
            *(this + 9) = 0;
            if (v109)
            {
              operator delete(v109);
            }
          }

          else
          {
            *v82 = 0;
            v83 = v82 + 4;
          }

          *(this + 8) = v83;
          goto LABEL_153;
        }

        if (v23 == 2)
        {
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_164;
            }

            v24 = *(a2 + 1);
            v25 = *(a2 + 2);
            while (v24 < v25 && (*(a2 + 24) & 1) == 0)
            {
              v27 = *(this + 5);
              v26 = *(this + 6);
              if (v27 >= v26)
              {
                v29 = *(this + 4);
                v30 = v27 - v29;
                v31 = (v27 - v29) >> 2;
                v32 = v31 + 1;
                if ((v31 + 1) >> 62)
                {
                  goto LABEL_165;
                }

                v33 = v26 - v29;
                if (v33 >> 1 > v32)
                {
                  v32 = v33 >> 1;
                }

                if (v33 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v34 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v34 = v32;
                }

                if (v34)
                {
                  sub_10002290C(this + 32, v34);
                }

                v35 = (v27 - v29) >> 2;
                v36 = (4 * v31);
                v37 = (4 * v31 - 4 * v35);
                *v36 = 0;
                v28 = v36 + 1;
                memcpy(v37, v29, v30);
                v38 = *(this + 4);
                *(this + 4) = v37;
                *(this + 5) = v28;
                *(this + 6) = 0;
                if (v38)
                {
                  operator delete(v38);
                }
              }

              else
              {
                *v27 = 0;
                v28 = v27 + 4;
              }

              *(this + 5) = v28;
              v39 = *(a2 + 1);
              if (v39 > 0xFFFFFFFFFFFFFFFBLL || v39 + 4 > *(a2 + 2))
              {
                goto LABEL_118;
              }

              *(v28 - 1) = *(*a2 + v39);
              v25 = *(a2 + 2);
              v24 = *(a2 + 1) + 4;
              *(a2 + 1) = v24;
            }

LABEL_119:
            PB::Reader::recallMark();
            goto LABEL_158;
          }

          v87 = *(this + 5);
          v86 = *(this + 6);
          if (v87 >= v86)
          {
            v100 = *(this + 4);
            v101 = v87 - v100;
            v102 = (v87 - v100) >> 2;
            v103 = v102 + 1;
            if ((v102 + 1) >> 62)
            {
LABEL_165:
              sub_10000CD24();
            }

            v104 = v86 - v100;
            if (v104 >> 1 > v103)
            {
              v103 = v104 >> 1;
            }

            if (v104 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v105 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v105 = v103;
            }

            if (v105)
            {
              sub_10002290C(this + 32, v105);
            }

            v114 = (v87 - v100) >> 2;
            v115 = (4 * v102);
            v116 = (4 * v102 - 4 * v114);
            *v115 = 0;
            v83 = v115 + 1;
            memcpy(v116, v100, v101);
            v117 = *(this + 4);
            *(this + 4) = v116;
            *(this + 5) = v83;
            *(this + 6) = 0;
            if (v117)
            {
              operator delete(v117);
            }
          }

          else
          {
            *v87 = 0;
            v83 = v87 + 4;
          }

          *(this + 5) = v83;
          goto LABEL_153;
        }
      }

      if ((PB::Reader::skip(a2, v23, v22, 0) & 1) == 0)
      {
LABEL_164:
        v119 = 0;
        return v119 & 1;
      }

LABEL_158:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

  v119 = v4 ^ 1;
  return v119 & 1;
}

uint64_t CMMsl::AccelTNBFrame::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 56);
  v5 = *(this + 64);
  while (v4 != v5)
  {
    v6 = *v4++;
    this = PB::Writer::write(a2, v6, 1u);
  }

  v7 = *(v3 + 32);
  v8 = *(v3 + 40);
  while (v7 != v8)
  {
    v9 = *v7++;
    this = PB::Writer::write(a2, v9, 2u);
  }

  v10 = *(v3 + 8);
  v11 = *(v3 + 16);
  while (v10 != v11)
  {
    v12 = *v10++;
    this = PB::Writer::write(a2, v12, 3u);
  }

  v13 = *(v3 + 116);
  if ((v13 & 2) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 88), 4u);
    v13 = *(v3 + 116);
    if ((v13 & 1) == 0)
    {
LABEL_12:
      if ((v13 & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_18;
    }
  }

  else if ((*(v3 + 116) & 1) == 0)
  {
    goto LABEL_12;
  }

  this = PB::Writer::write(a2, *(v3 + 80), 5u);
  v13 = *(v3 + 116);
  if ((v13 & 8) == 0)
  {
LABEL_13:
    if ((v13 & 0x10) == 0)
    {
      goto LABEL_14;
    }

LABEL_19:
    this = PB::Writer::write(a2, *(v3 + 112), 7u);
    if ((*(v3 + 116) & 4) == 0)
    {
      return this;
    }

    goto LABEL_20;
  }

LABEL_18:
  this = PB::Writer::write(a2, *(v3 + 104), 6u);
  v13 = *(v3 + 116);
  if ((v13 & 0x10) != 0)
  {
    goto LABEL_19;
  }

LABEL_14:
  if ((v13 & 4) == 0)
  {
    return this;
  }

LABEL_20:
  v14 = *(v3 + 96);

  return PB::Writer::write(a2, v14, 8u);
}

BOOL CMMsl::AccelTNBFrame::operator==(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 56);
  v2 = *(a1 + 64);
  v4 = *(a2 + 56);
  if (v2 - v3 != *(a2 + 64) - v4)
  {
    return 0;
  }

  while (v3 != v2)
  {
    if (*v3 != *v4)
    {
      return 0;
    }

    ++v3;
    ++v4;
  }

  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a2 + 32);
  if (v5 - v6 != *(a2 + 40) - v7)
  {
    return 0;
  }

  while (v6 != v5)
  {
    if (*v6 != *v7)
    {
      return 0;
    }

    ++v6;
    ++v7;
  }

  v9 = *(a1 + 8);
  v8 = *(a1 + 16);
  v10 = *(a2 + 8);
  if (v8 - v9 != *(a2 + 16) - v10)
  {
    return 0;
  }

  while (v9 != v8)
  {
    if (*v9 != *v10)
    {
      return 0;
    }

    ++v9;
    ++v10;
  }

  if ((*(a1 + 116) & 2) != 0)
  {
    if ((*(a2 + 116) & 2) == 0 || *(a1 + 88) != *(a2 + 88))
    {
      return 0;
    }
  }

  else if ((*(a2 + 116) & 2) != 0)
  {
    return 0;
  }

  if (*(a1 + 116))
  {
    if ((*(a2 + 116) & 1) == 0 || *(a1 + 80) != *(a2 + 80))
    {
      return 0;
    }
  }

  else if (*(a2 + 116))
  {
    return 0;
  }

  if ((*(a1 + 116) & 8) != 0)
  {
    if ((*(a2 + 116) & 8) == 0 || *(a1 + 104) != *(a2 + 104))
    {
      return 0;
    }
  }

  else if ((*(a2 + 116) & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 116) & 0x10) != 0)
  {
    if ((*(a2 + 116) & 0x10) == 0 || *(a1 + 112) != *(a2 + 112))
    {
      return 0;
    }
  }

  else if ((*(a2 + 116) & 0x10) != 0)
  {
    return 0;
  }

  v11 = (*(a2 + 116) & 4) == 0;
  if ((*(a1 + 116) & 4) != 0)
  {
    return (*(a2 + 116) & 4) != 0 && *(a1 + 96) == *(a2 + 96);
  }

  return v11;
}

uint64_t CMMsl::AccelTNBFrame::hash_value(CMMsl::AccelTNBFrame *this)
{
  v2 = *(this + 7);
  v3 = *(this + 8);
  v4 = PBHashBytes();
  v5 = *(this + 4);
  v6 = *(this + 5);
  v7 = PBHashBytes();
  v8 = *(this + 1);
  v9 = *(this + 2);
  v10 = PBHashBytes();
  if ((*(this + 116) & 2) == 0)
  {
    v11 = 0.0;
    if (*(this + 116))
    {
      goto LABEL_3;
    }

LABEL_16:
    v12 = 0.0;
    if ((*(this + 116) & 8) != 0)
    {
      goto LABEL_6;
    }

LABEL_17:
    v13 = 0.0;
    if ((*(this + 116) & 0x10) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

  v11 = *(this + 11);
  if (v11 == 0.0)
  {
    v11 = 0.0;
  }

  if ((*(this + 116) & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_3:
  v12 = *(this + 10);
  if (v12 == 0.0)
  {
    v12 = 0.0;
  }

  if ((*(this + 116) & 8) == 0)
  {
    goto LABEL_17;
  }

LABEL_6:
  v13 = *(this + 13);
  if (v13 == 0.0)
  {
    v13 = 0.0;
  }

  if ((*(this + 116) & 0x10) != 0)
  {
LABEL_9:
    v14 = *(this + 112);
    if ((*(this + 116) & 4) != 0)
    {
      goto LABEL_10;
    }

LABEL_19:
    v15 = 0.0;
    return v7 ^ v4 ^ v10 ^ *&v11 ^ *&v12 ^ *&v13 ^ v14 ^ *&v15;
  }

LABEL_18:
  v14 = 0;
  if ((*(this + 116) & 4) == 0)
  {
    goto LABEL_19;
  }

LABEL_10:
  v15 = *(this + 12);
  if (v15 == 0.0)
  {
    v15 = 0.0;
  }

  return v7 ^ v4 ^ v10 ^ *&v11 ^ *&v12 ^ *&v13 ^ v14 ^ *&v15;
}

uint64_t CMMsl::AccelerometerPace::AccelerometerPace(uint64_t this)
{
  *this = off_10041C7F0;
  *(this + 32) = 0;
  return this;
}

{
  *this = off_10041C7F0;
  *(this + 32) = 0;
  return this;
}

void CMMsl::AccelerometerPace::~AccelerometerPace(CMMsl::AccelerometerPace *this)
{
  PB::Base::~Base(this);

  operator delete();
}

double CMMsl::AccelerometerPace::AccelerometerPace(CMMsl::AccelerometerPace *this, const CMMsl::AccelerometerPace *a2)
{
  *this = off_10041C7F0;
  *(this + 8) = 0;
  v2 = *(a2 + 32);
  if (v2)
  {
    result = *(a2 + 1);
    v3 = 1;
    *(this + 32) = 1;
    *(this + 1) = result;
    v2 = *(a2 + 32);
    if ((v2 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 32) & 2) != 0)
  {
LABEL_5:
    result = *(a2 + 2);
    v3 |= 2u;
    *(this + 32) = v3;
    *(this + 2) = result;
    v2 = *(a2 + 32);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    result = *(a2 + 3);
    *(this + 32) = v3 | 4;
    *(this + 3) = result;
  }

  return result;
}

uint64_t CMMsl::AccelerometerPace::operator=(uint64_t a1, const CMMsl::AccelerometerPace *a2)
{
  if (a1 != a2)
  {
    CMMsl::AccelerometerPace::AccelerometerPace(v7, a2);
    v3 = *(a1 + 32);
    *(a1 + 32) = v10;
    v10 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v4;
    v5 = *(a1 + 24);
    *(a1 + 24) = v9;
    v9 = v5;
    PB::Base::~Base(v7);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::AccelerometerPace *a2, CMMsl::AccelerometerPace *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  v5 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v5;
  result = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = result;
  return result;
}

double CMMsl::AccelerometerPace::AccelerometerPace(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041C7F0;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  return result;
}

{
  *a1 = off_10041C7F0;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  return result;
}

uint64_t CMMsl::AccelerometerPace::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v8 = off_10041C7F0;
    v3 = *(a2 + 32);
    *(a2 + 32) = 0;
    v4 = *(a2 + 24);
    v11 = *(a1 + 32);
    v5 = *(a1 + 8);
    v6 = *(a2 + 8);
    *(a1 + 32) = v3;
    *(a1 + 8) = v6;
    v9 = v5;
    *&v5 = *(a1 + 24);
    *(a1 + 24) = v4;
    v10 = v5;
    PB::Base::~Base(&v8);
  }

  return a1;
}

uint64_t CMMsl::AccelerometerPace::formatText(CMMsl::AccelerometerPace *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 32);
  if (v5)
  {
    PB::TextFormatter::format(a2, "calibrated", *(this + 1));
    v5 = *(this + 32);
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

  else if ((*(this + 32) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "lowerBound", *(this + 2));
  if ((*(this + 32) & 4) != 0)
  {
LABEL_4:
    PB::TextFormatter::format(a2, "upperBound", *(this + 3));
  }

LABEL_5:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::AccelerometerPace::readFrom(CMMsl::AccelerometerPace *this, PB::Reader *a2)
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
        *(this + 32) |= 4u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
LABEL_33:
          *(a2 + 24) = 1;
          goto LABEL_38;
        }

        *(this + 3) = *(*a2 + v2);
        goto LABEL_37;
      }

      if (v22 == 2)
      {
        break;
      }

      if (v22 == 1)
      {
        *(this + 32) |= 1u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_33;
        }

        *(this + 1) = *(*a2 + v2);
LABEL_37:
        v2 = *(a2 + 1) + 8;
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

    *(this + 32) |= 2u;
    v2 = *(a2 + 1);
    if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
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

uint64_t CMMsl::AccelerometerPace::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 32);
  if ((v4 & 1) == 0)
  {
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = PB::Writer::write(a2, *(v3 + 16), 2u);
    if ((*(v3 + 32) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = PB::Writer::write(a2, *(this + 8), 1u);
  v4 = *(v3 + 32);
  if ((v4 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v4 & 4) == 0)
  {
    return this;
  }

LABEL_7:
  v5 = *(v3 + 24);

  return PB::Writer::write(a2, v5, 3u);
}

BOOL CMMsl::AccelerometerPace::operator==(uint64_t a1, uint64_t a2)
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

  v2 = (*(a2 + 32) & 4) == 0;
  if ((*(a1 + 32) & 4) != 0)
  {
    return (*(a2 + 32) & 4) != 0 && *(a1 + 24) == *(a2 + 24);
  }

  return v2;
}

uint64_t CMMsl::AccelerometerPace::hash_value(CMMsl::AccelerometerPace *this)
{
  if (*(this + 32))
  {
    v1 = *(this + 1);
    if (v1 == 0.0)
    {
      v1 = 0.0;
    }

    if ((*(this + 32) & 2) != 0)
    {
LABEL_3:
      v2 = *(this + 2);
      if (v2 == 0.0)
      {
        v2 = 0.0;
      }

      if ((*(this + 32) & 4) != 0)
      {
        goto LABEL_6;
      }

LABEL_13:
      v3 = 0.0;
      return *&v2 ^ *&v1 ^ *&v3;
    }
  }

  else
  {
    v1 = 0.0;
    if ((*(this + 32) & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v2 = 0.0;
  if ((*(this + 32) & 4) == 0)
  {
    goto LABEL_13;
  }

LABEL_6:
  v3 = *(this + 3);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  return *&v2 ^ *&v1 ^ *&v3;
}

uint64_t CMMsl::AccessoryAccel::AccessoryAccel(uint64_t this)
{
  *this = off_10041C828;
  *(this + 8) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *this = off_10041C828;
  *(this + 8) = 0;
  *(this + 32) = 0;
  return this;
}

void CMMsl::AccessoryAccel::~AccessoryAccel(CMMsl::AccessoryAccel *this)
{
  v2 = *(this + 1);
  *this = off_10041C828;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::AccessoryAccel::~AccessoryAccel(this);

  operator delete();
}

uint64_t CMMsl::AccessoryAccel::AccessoryAccel(uint64_t this, const CMMsl::AccessoryAccel *a2)
{
  *this = off_10041C828;
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

uint64_t CMMsl::AccessoryAccel::operator=(uint64_t a1, const CMMsl::AccessoryAccel *a2)
{
  if (a1 != a2)
  {
    CMMsl::AccessoryAccel::AccessoryAccel(v9, a2);
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
    CMMsl::AccessoryAccel::~AccessoryAccel(v9);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::AccessoryAccel *a2, CMMsl::AccessoryAccel *a3)
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

uint64_t CMMsl::AccessoryAccel::AccessoryAccel(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041C828;
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

uint64_t CMMsl::AccessoryAccel::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::AccessoryAccel::AccessoryAccel(v9, a2);
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
    CMMsl::AccessoryAccel::~AccessoryAccel(v9);
  }

  return a1;
}

uint64_t CMMsl::AccessoryAccel::formatText(CMMsl::AccessoryAccel *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "accel");
  }

  v6 = *(this + 32);
  if ((v6 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "location", *(this + 6));
    v6 = *(this + 32);
    if ((v6 & 1) == 0)
    {
LABEL_5:
      if ((v6 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*(this + 32) & 1) == 0)
  {
    goto LABEL_5;
  }

  PB::TextFormatter::format(a2, "sensorTime", *(this + 2));
  if ((*(this + 32) & 4) != 0)
  {
LABEL_6:
    PB::TextFormatter::format(a2, "sequenceNumber", *(this + 7));
  }

LABEL_7:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::AccessoryAccel::readFrom(CMMsl::AccessoryAccel *this, PB::Reader *a2)
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

uint64_t CMMsl::AccessoryAccel::writeTo(uint64_t this, PB::Writer *a2)
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

BOOL CMMsl::AccessoryAccel::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5 || !CMMsl::Accel::operator==(v4, v5))
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

unint64_t CMMsl::AccessoryAccel::hash_value(CMMsl::AccessoryAccel *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    v2 = CMMsl::Accel::hash_value(v2);
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

uint64_t CMMsl::AccessoryAccel::makeAccel(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

void *CMMsl::AccessoryAccelConfig::AccessoryAccelConfig(void *this)
{
  *this = off_10041C860;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = off_10041C860;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

void CMMsl::AccessoryAccelConfig::~AccessoryAccelConfig(CMMsl::AccessoryAccelConfig *this)
{
  *this = off_10041C860;
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    sub_100011018(this + 16, v3);
  }

  sub_1002A2FBC(this + 1, 0);

  PB::Base::~Base(this);
}

{
  CMMsl::AccessoryAccelConfig::~AccessoryAccelConfig(this);

  operator delete();
}

void *CMMsl::AccessoryAccelConfig::AccessoryAccelConfig(void *this, const CMMsl::AccessoryAccelConfig *a2)
{
  this[1] = 0;
  *this = off_10041C860;
  this[2] = 0;
  this[3] = 0;
  if (*(a2 + 3))
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

  return this;
}

uint64_t CMMsl::AccessoryAccelConfig::operator=(uint64_t a1, const CMMsl::AccessoryAccelConfig *a2)
{
  if (a1 != a2)
  {
    CMMsl::AccessoryAccelConfig::AccessoryAccelConfig(&v6, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    CMMsl::AccessoryAccelConfig::~AccessoryAccelConfig(&v6);
  }

  return a1;
}

void *CMMsl::swap(void *this, CMMsl::AccessoryAccelConfig *a2, CMMsl::AccessoryAccelConfig *a3)
{
  v3 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v3;
  v4 = this[1];
  this[1] = *(a2 + 1);
  *(a2 + 1) = v4;
  v5 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v5;
  return this;
}

void *CMMsl::AccessoryAccelConfig::AccessoryAccelConfig(void *a1, void *a2)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  v5 = a1 + 2;
  *a1 = off_10041C860;
  a1[3] = 0;
  v6 = a2[3];
  a2[3] = 0;
  v7 = a1[3];
  a1[3] = v6;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = a2[1];
  a2[1] = 0;
  sub_1002A2FBC(v4, v8);
  v9 = a2[2];
  a2[2] = 0;
  v10 = *v5;
  *v5 = v9;
  if (v10)
  {
    sub_100011018(v5, v10);
  }

  return a1;
}

uint64_t CMMsl::AccessoryAccelConfig::operator=(uint64_t a1, void *a2)
{
  if (a1 != a2)
  {
    CMMsl::AccessoryAccelConfig::AccessoryAccelConfig(&v6, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    CMMsl::AccessoryAccelConfig::~AccessoryAccelConfig(&v6);
  }

  return a1;
}

uint64_t CMMsl::AccessoryAccelConfig::formatText(CMMsl::AccessoryAccelConfig *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 1))
  {
    PB::TextFormatter::format();
  }

  if (*(this + 2))
  {
    PB::TextFormatter::format();
  }

  v5 = *(this + 3);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "config");
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::AccessoryAccelConfig::readFrom(CMMsl::AccessoryAccelConfig *this, PB::Reader *a2)
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
            goto LABEL_33;
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

      v21 = v9 >> 3;
      if ((v9 >> 3) == 3)
      {
        operator new();
      }

      if (v21 == 2)
      {
        operator new();
      }

      if (v21 == 1)
      {
        operator new();
      }

      if ((PB::Reader::skip(a2, v21, v9 & 7, 0) & 1) == 0)
      {
        v22 = 0;
        return v22 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_33:
  v22 = v4 ^ 1;
  return v22 & 1;
}

uint64_t CMMsl::AccessoryConfig::AccessoryConfig(uint64_t this)
{
  *(this + 36) = 0;
  *this = off_10041C940;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 36) = 0;
  *this = off_10041C940;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

uint64_t CMMsl::AccessoryAccelConfig::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 24);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4, 1u);
  }

  if (*(v3 + 8))
  {
    this = PB::Writer::write();
  }

  if (*(v3 + 16))
  {

    return PB::Writer::write();
  }

  return this;
}

BOOL CMMsl::AccessoryAccelConfig::operator==(void *a1, void *a2)
{
  v4 = a1[3];
  v5 = a2[3];
  if (v4)
  {
    if (!v5 || !CMMsl::AccessoryConfig::operator==(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v6 = a2[1];
  if (a1[1])
  {
    if (!v6 || (PB::Data::operator==() & 1) == 0 && a1[1] | a2[1])
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v7 = a1[2];
  v8 = a2[2];
  result = v8 == 0;
  if (!v7)
  {
    return result;
  }

  if (v8)
  {
    v10 = *(v7 + 23);
    if (v10 >= 0)
    {
      v11 = *(v7 + 23);
    }

    else
    {
      v11 = *(v7 + 8);
    }

    v12 = *(v8 + 23);
    v13 = v12;
    if ((v12 & 0x80u) != 0)
    {
      v12 = *(v8 + 8);
    }

    if (v11 == v12)
    {
      v14 = v10 >= 0 ? a1[2] : *v7;
      v15 = v13 >= 0 ? a2[2] : *v8;
      if (!memcmp(v14, v15, v11))
      {
        return 1;
      }
    }
  }

  return 0;
}

BOOL CMMsl::AccessoryConfig::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 36);
  v5 = *(a2 + 36);
  if ((v4 & 2) != 0)
  {
    if ((*(a2 + 36) & 2) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((*(a2 + 36) & 2) != 0)
  {
    return 0;
  }

  v6 = *(a1 + 16);
  v7 = *(a2 + 16);
  if (v6)
  {
    if (!v7)
    {
      return 0;
    }

    v8 = *(v6 + 23);
    if (v8 >= 0)
    {
      v9 = *(v6 + 23);
    }

    else
    {
      v9 = *(v6 + 8);
    }

    v10 = *(v7 + 23);
    v11 = v10;
    if ((v10 & 0x80u) != 0)
    {
      v10 = *(v7 + 8);
    }

    if (v9 != v10)
    {
      return 0;
    }

    v12 = v8 >= 0 ? *(a1 + 16) : *v6;
    v13 = v11 >= 0 ? *(a2 + 16) : *v7;
    if (memcmp(v12, v13, v9))
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v15 = *(a1 + 8);
  v16 = *(a2 + 8);
  if (v15)
  {
    if (!v16)
    {
      return 0;
    }

    v17 = *(v15 + 23);
    if (v17 >= 0)
    {
      v18 = *(v15 + 23);
    }

    else
    {
      v18 = *(v15 + 8);
    }

    v19 = *(v16 + 23);
    v20 = v19;
    if ((v19 & 0x80u) != 0)
    {
      v19 = *(v16 + 8);
    }

    if (v18 != v19)
    {
      return 0;
    }

    v21 = v17 >= 0 ? *(a1 + 8) : *v15;
    v22 = v20 >= 0 ? *(a2 + 8) : *v16;
    if (memcmp(v21, v22, v18))
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  if ((v4 & 1) == 0)
  {
    if ((v5 & 1) == 0)
    {
      goto LABEL_47;
    }

    return 0;
  }

  if ((v5 & 1) == 0 || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

LABEL_47:
  result = (v5 & 4) == 0;
  if ((v4 & 4) != 0)
  {
    return (v5 & 4) != 0 && *(a1 + 32) == *(a2 + 32);
  }

  return result;
}

unint64_t CMMsl::AccessoryAccelConfig::hash_value(CMMsl::AccessoryAccelConfig *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    v3 = CMMsl::AccessoryConfig::hash_value(v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 1);
  if (v4)
  {
    v5 = *v4;
    v6 = v4[1];
    v7 = PBHashBytes();
  }

  else
  {
    v7 = 0;
  }

  v8 = *(this + 2);
  if (v8)
  {
    v9 = sub_100011074(&v11, v8);
  }

  else
  {
    v9 = 0;
  }

  return v7 ^ v3 ^ v9;
}

uint64_t CMMsl::AccessoryAccelConfig::makeConfig(uint64_t this)
{
  if (!*(this + 24))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::AccessoryActivityAlseepConfidenceEpoch::AccessoryActivityAlseepConfidenceEpoch(uint64_t this)
{
  *this = off_10041C898;
  *(this + 32) = 0;
  return this;
}

{
  *this = off_10041C898;
  *(this + 32) = 0;
  return this;
}

void CMMsl::AccessoryActivityAlseepConfidenceEpoch::~AccessoryActivityAlseepConfidenceEpoch(CMMsl::AccessoryActivityAlseepConfidenceEpoch *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::AccessoryActivityAlseepConfidenceEpoch::AccessoryActivityAlseepConfidenceEpoch(uint64_t this, const CMMsl::AccessoryActivityAlseepConfidenceEpoch *a2)
{
  *this = off_10041C898;
  *(this + 32) = 0;
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 32) = 1;
    *(this + 8) = v4;
    v2 = *(a2 + 32);
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 32) & 0x10) != 0)
  {
LABEL_5:
    v5 = *(a2 + 28);
    v3 |= 0x10u;
    *(this + 32) = v3;
    *(this + 28) = v5;
    v2 = *(a2 + 32);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    v6 = *(a2 + 4);
    v3 |= 2u;
    *(this + 32) = v3;
    *(this + 16) = v6;
    v2 = *(a2 + 32);
    if ((v2 & 4) == 0)
    {
LABEL_8:
      if ((v2 & 8) == 0)
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

  v7 = *(a2 + 5);
  v3 |= 4u;
  *(this + 32) = v3;
  *(this + 20) = v7;
  v2 = *(a2 + 32);
  if ((v2 & 8) == 0)
  {
LABEL_9:
    if ((v2 & 0x20) == 0)
    {
      return this;
    }

LABEL_14:
    v9 = *(a2 + 29);
    *(this + 32) = v3 | 0x20;
    *(this + 29) = v9;
    return this;
  }

LABEL_13:
  v8 = *(a2 + 6);
  v3 |= 8u;
  *(this + 32) = v3;
  *(this + 24) = v8;
  if ((*(a2 + 32) & 0x20) != 0)
  {
    goto LABEL_14;
  }

  return this;
}

uint64_t CMMsl::AccessoryActivityAlseepConfidenceEpoch::operator=(uint64_t a1, const CMMsl::AccessoryActivityAlseepConfidenceEpoch *a2)
{
  if (a1 != a2)
  {
    CMMsl::AccessoryActivityAlseepConfidenceEpoch::AccessoryActivityAlseepConfidenceEpoch(v7, a2);
    v3 = *(a1 + 32);
    *(a1 + 32) = v14;
    v14 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v4;
    LOBYTE(v4) = *(a1 + 28);
    *(a1 + 28) = v12;
    v12 = v4;
    LODWORD(v4) = *(a1 + 16);
    *(a1 + 16) = v9;
    v9 = v4;
    v5 = *(a1 + 20);
    *(a1 + 20) = v10;
    v10 = v5;
    LODWORD(v4) = *(a1 + 24);
    *(a1 + 24) = v11;
    v11 = v4;
    LOBYTE(v4) = *(a1 + 29);
    *(a1 + 29) = v13;
    v13 = v4;
    PB::Base::~Base(v7);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::AccessoryActivityAlseepConfidenceEpoch *a2, CMMsl::AccessoryActivityAlseepConfidenceEpoch *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  LOBYTE(v4) = *(this + 28);
  *(this + 28) = *(a2 + 28);
  *(a2 + 28) = v4;
  LODWORD(v4) = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  result = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = result;
  LODWORD(v4) = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v4;
  LOBYTE(v4) = *(this + 29);
  *(this + 29) = *(a2 + 29);
  *(a2 + 29) = v4;
  return result;
}

float CMMsl::AccessoryActivityAlseepConfidenceEpoch::AccessoryActivityAlseepConfidenceEpoch(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041C898;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 20);
  *(a1 + 20) = result;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 29) = *(a2 + 29);
  return result;
}

{
  *a1 = off_10041C898;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 20);
  *(a1 + 20) = result;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 29) = *(a2 + 29);
  return result;
}

uint64_t CMMsl::AccessoryActivityAlseepConfidenceEpoch::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 32);
    *(a2 + 32) = 0;
    v4 = *(a2 + 8);
    v5 = *(a2 + 28);
    v6 = *(a2 + 16);
    v7 = *(a2 + 20);
    v8 = *(a2 + 24);
    v9 = *(a2 + 29);
    v10 = *(a1 + 32);
    *(a1 + 32) = v3;
    v20 = v10;
    v11 = *(a1 + 8);
    *(a1 + 8) = v4;
    v14[0] = off_10041C898;
    v14[1] = v11;
    LOBYTE(v11) = *(a1 + 28);
    *(a1 + 28) = v5;
    v18 = v11;
    LODWORD(v11) = *(a1 + 16);
    *(a1 + 16) = v6;
    v15 = v11;
    v12 = *(a1 + 20);
    *(a1 + 20) = v7;
    v16 = v12;
    LODWORD(v11) = *(a1 + 24);
    *(a1 + 24) = v8;
    v17 = v11;
    LOBYTE(v11) = *(a1 + 29);
    *(a1 + 29) = v9;
    v19 = v11;
    PB::Base::~Base(v14);
  }

  return a1;
}

uint64_t CMMsl::AccessoryActivityAlseepConfidenceEpoch::formatText(CMMsl::AccessoryActivityAlseepConfidenceEpoch *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 32);
  if ((v5 & 0x10) != 0)
  {
    PB::TextFormatter::format(a2, "asleep", *(this + 28));
    v5 = *(this + 32);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*(this + 32) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "averageConfidence", *(this + 4));
  v5 = *(this + 32);
  if ((v5 & 0x20) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  PB::TextFormatter::format(a2, "initialized", *(this + 29));
  v5 = *(this + 32);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  PB::TextFormatter::format(a2, "rawConfidence", *(this + 5));
  v5 = *(this + 32);
  if ((v5 & 1) == 0)
  {
LABEL_6:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  PB::TextFormatter::format(a2, "sensorTime", *(this + 1));
  if ((*(this + 32) & 8) != 0)
  {
LABEL_7:
    PB::TextFormatter::format(a2, "sequenceNumber", *(this + 6));
  }

LABEL_8:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::AccessoryActivityAlseepConfidenceEpoch::readFrom(CMMsl::AccessoryActivityAlseepConfidenceEpoch *this, PB::Reader *a2)
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
            goto LABEL_107;
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
            *(this + 32) |= 4u;
            v2 = *(a2 + 1);
            if (v2 <= 0xFFFFFFFFFFFFFFFBLL && v2 + 4 <= *(a2 + 2))
            {
              *(this + 5) = *(*a2 + v2);
              v2 = *(a2 + 1) + 4;
              *(a2 + 1) = v2;
            }

            else
            {
              *(a2 + 24) = 1;
            }

            goto LABEL_103;
          case 5:
            *(this + 32) |= 8u;
            v43 = *(a2 + 1);
            v2 = *(a2 + 2);
            v44 = *a2;
            if (v43 > 0xFFFFFFFFFFFFFFF5 || v43 + 10 > v2)
            {
              v65 = 0;
              v66 = 0;
              v47 = 0;
              if (v2 <= v43)
              {
                v2 = *(a2 + 1);
              }

              v67 = v2 - v43;
              v68 = (v44 + v43);
              v69 = v43 + 1;
              while (1)
              {
                if (!v67)
                {
                  LODWORD(v47) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_102;
                }

                v70 = v69;
                v71 = *v68;
                *(a2 + 1) = v70;
                v47 |= (v71 & 0x7F) << v65;
                if ((v71 & 0x80) == 0)
                {
                  break;
                }

                v65 += 7;
                --v67;
                ++v68;
                v69 = v70 + 1;
                v14 = v66++ > 8;
                if (v14)
                {
                  LODWORD(v47) = 0;
                  goto LABEL_101;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v47) = 0;
              }

LABEL_101:
              v2 = v70;
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
                v2 = v49;
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
                  LODWORD(v47) = 0;
                  break;
                }
              }
            }

LABEL_102:
            *(this + 6) = v47;
            goto LABEL_103;
          case 6:
            *(this + 32) |= 0x20u;
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

            *(this + 29) = v32;
            goto LABEL_103;
        }
      }

      else
      {
        switch(v22)
        {
          case 1:
            *(this + 32) |= 1u;
            v33 = *(a2 + 1);
            v2 = *(a2 + 2);
            v34 = *a2;
            if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v2)
            {
              v51 = 0;
              v52 = 0;
              v37 = 0;
              if (v2 <= v33)
              {
                v2 = *(a2 + 1);
              }

              v53 = v2 - v33;
              v54 = (v34 + v33);
              v55 = v33 + 1;
              while (1)
              {
                if (!v53)
                {
                  v37 = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_94;
                }

                v56 = v55;
                v57 = *v54;
                *(a2 + 1) = v56;
                v37 |= (v57 & 0x7F) << v51;
                if ((v57 & 0x80) == 0)
                {
                  break;
                }

                v51 += 7;
                --v53;
                ++v54;
                v55 = v56 + 1;
                v14 = v52++ > 8;
                if (v14)
                {
                  v37 = 0;
                  goto LABEL_93;
                }
              }

              if (*(a2 + 24))
              {
                v37 = 0;
              }

LABEL_93:
              v2 = v56;
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

LABEL_94:
            *(this + 1) = v37;
            goto LABEL_103;
          case 2:
            *(this + 32) |= 0x10u;
            v2 = *(a2 + 1);
            if (v2 >= *(a2 + 2))
            {
              v42 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v41 = *(*a2 + v2++);
              *(a2 + 1) = v2;
              v42 = v41 != 0;
            }

            *(this + 28) = v42;
            goto LABEL_103;
          case 3:
            *(this + 32) |= 2u;
            v23 = *(a2 + 1);
            v2 = *(a2 + 2);
            v24 = *a2;
            if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
            {
              v58 = 0;
              v59 = 0;
              v27 = 0;
              if (v2 <= v23)
              {
                v2 = *(a2 + 1);
              }

              v60 = v2 - v23;
              v61 = (v24 + v23);
              v62 = v23 + 1;
              while (1)
              {
                if (!v60)
                {
                  LODWORD(v27) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_98;
                }

                v63 = v62;
                v64 = *v61;
                *(a2 + 1) = v63;
                v27 |= (v64 & 0x7F) << v58;
                if ((v64 & 0x80) == 0)
                {
                  break;
                }

                v58 += 7;
                --v60;
                ++v61;
                v62 = v63 + 1;
                v14 = v59++ > 8;
                if (v14)
                {
                  LODWORD(v27) = 0;
                  goto LABEL_97;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v27) = 0;
              }

LABEL_97:
              v2 = v63;
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

LABEL_98:
            *(this + 4) = v27;
            goto LABEL_103;
        }
      }

      if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
      {
        v72 = 0;
        return v72 & 1;
      }

      v2 = *(a2 + 1);
LABEL_103:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_107:
  v72 = v4 ^ 1;
  return v72 & 1;
}

uint64_t CMMsl::AccessoryActivityAlseepConfidenceEpoch::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 32);
  if (v4)
  {
    this = PB::Writer::writeVarInt(a2, *(this + 8), 1u);
    v4 = *(v3 + 32);
    if ((v4 & 0x10) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*(this + 32) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 28), 2u);
  v4 = *(v3 + 32);
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
  this = PB::Writer::writeVarInt(a2, *(v3 + 16), 3u);
  v4 = *(v3 + 32);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    this = PB::Writer::writeVarInt(a2, *(v3 + 24), 5u);
    if ((*(v3 + 32) & 0x20) == 0)
    {
      return this;
    }

    goto LABEL_13;
  }

LABEL_11:
  this = PB::Writer::write(a2, *(v3 + 20), 4u);
  v4 = *(v3 + 32);
  if ((v4 & 8) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v4 & 0x20) == 0)
  {
    return this;
  }

LABEL_13:
  v5 = *(v3 + 29);

  return PB::Writer::write(a2, v5, 6u);
}

BOOL CMMsl::AccessoryActivityAlseepConfidenceEpoch::operator==(uint64_t a1, uint64_t a2)
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

  v2 = (*(a2 + 32) & 0x20) == 0;
  if ((*(a1 + 32) & 0x20) != 0)
  {
    return (*(a2 + 32) & 0x20) != 0 && *(a1 + 29) == *(a2 + 29);
  }

  return v2;
}

uint64_t CMMsl::AccessoryActivityAlseepConfidenceEpoch::hash_value(CMMsl::AccessoryActivityAlseepConfidenceEpoch *this)
{
  if (*(this + 32))
  {
    v1 = *(this + 1);
    if ((*(this + 32) & 0x10) != 0)
    {
LABEL_3:
      v2 = *(this + 28);
      if ((*(this + 32) & 2) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v1 = 0;
    if ((*(this + 32) & 0x10) != 0)
    {
      goto LABEL_3;
    }
  }

  v2 = 0;
  if ((*(this + 32) & 2) != 0)
  {
LABEL_4:
    v3 = *(this + 4);
    if ((*(this + 32) & 4) != 0)
    {
      goto LABEL_5;
    }

LABEL_13:
    v5 = 0;
    if ((*(this + 32) & 8) != 0)
    {
      goto LABEL_8;
    }

LABEL_14:
    v6 = 0;
    if ((*(this + 32) & 0x20) != 0)
    {
      goto LABEL_9;
    }

LABEL_15:
    v7 = 0;
    return v2 ^ v1 ^ v3 ^ v5 ^ v6 ^ v7;
  }

LABEL_12:
  v3 = 0;
  if ((*(this + 32) & 4) == 0)
  {
    goto LABEL_13;
  }

LABEL_5:
  v4 = *(this + 5);
  v5 = LODWORD(v4);
  if (v4 == 0.0)
  {
    v5 = 0;
  }

  if ((*(this + 32) & 8) == 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v6 = *(this + 6);
  if ((*(this + 32) & 0x20) == 0)
  {
    goto LABEL_15;
  }

LABEL_9:
  v7 = *(this + 29);
  return v2 ^ v1 ^ v3 ^ v5 ^ v6 ^ v7;
}

uint64_t CMMsl::AccessoryActivityStateUpdate::AccessoryActivityStateUpdate(uint64_t this)
{
  *this = off_10041C8D0;
  *(this + 28) = 0;
  return this;
}

{
  *this = off_10041C8D0;
  *(this + 28) = 0;
  return this;
}

void CMMsl::AccessoryActivityStateUpdate::~AccessoryActivityStateUpdate(CMMsl::AccessoryActivityStateUpdate *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::AccessoryActivityStateUpdate::AccessoryActivityStateUpdate(uint64_t this, const CMMsl::AccessoryActivityStateUpdate *a2)
{
  *this = off_10041C8D0;
  *(this + 28) = 0;
  v2 = *(a2 + 28);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 28) = 1;
    *(this + 8) = v4;
    v2 = *(a2 + 28);
    if ((v2 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 28) & 2) != 0)
  {
LABEL_5:
    v5 = *(a2 + 4);
    v3 |= 2u;
    *(this + 28) = v3;
    *(this + 16) = v5;
    v2 = *(a2 + 28);
  }

LABEL_6:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      return this;
    }

LABEL_10:
    v7 = *(a2 + 6);
    *(this + 28) = v3 | 8;
    *(this + 24) = v7;
    return this;
  }

  v6 = *(a2 + 5);
  v3 |= 4u;
  *(this + 28) = v3;
  *(this + 20) = v6;
  if ((*(a2 + 28) & 8) != 0)
  {
    goto LABEL_10;
  }

  return this;
}

uint64_t CMMsl::AccessoryActivityStateUpdate::operator=(uint64_t a1, const CMMsl::AccessoryActivityStateUpdate *a2)
{
  if (a1 != a2)
  {
    CMMsl::AccessoryActivityStateUpdate::AccessoryActivityStateUpdate(&v8, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v9;
    v9 = v3;
    v4 = *(a1 + 24);
    LODWORD(v3) = *(a1 + 28);
    v5 = v12;
    *(a1 + 24) = v11;
    *(a1 + 28) = v5;
    v6 = *(a1 + 16);
    *(a1 + 16) = v10;
    v10 = v6;
    v11 = v4;
    v12 = v3;
    PB::Base::~Base(&v8);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::AccessoryActivityStateUpdate *a2, CMMsl::AccessoryActivityStateUpdate *a3)
{
  v3 = *(this + 28);
  *(this + 28) = *(a2 + 7);
  *(a2 + 7) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 16);
  *(this + 16) = *(a2 + 4);
  *(a2 + 4) = v4;
  LODWORD(v4) = *(this + 20);
  *(this + 20) = *(a2 + 5);
  *(a2 + 5) = v4;
  LODWORD(v4) = *(this + 24);
  *(this + 24) = *(a2 + 6);
  *(a2 + 6) = v4;
  return this;
}

uint64_t CMMsl::AccessoryActivityStateUpdate::AccessoryActivityStateUpdate(uint64_t result, uint64_t a2)
{
  *result = off_10041C8D0;
  *(result + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(result + 8) = *(a2 + 8);
  *(result + 16) = *(a2 + 16);
  *(result + 20) = *(a2 + 20);
  *(result + 24) = *(a2 + 24);
  return result;
}

{
  *result = off_10041C8D0;
  *(result + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(result + 8) = *(a2 + 8);
  *(result + 16) = *(a2 + 16);
  *(result + 20) = *(a2 + 20);
  *(result + 24) = *(a2 + 24);
  return result;
}

uint64_t CMMsl::AccessoryActivityStateUpdate::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 24);
    v3 = *(a2 + 28);
    *(a2 + 28) = 0;
    v5 = *(a1 + 8);
    *(a1 + 8) = *(a2 + 8);
    v9[0] = off_10041C8D0;
    v9[1] = v5;
    v6 = *(a1 + 16);
    *(a1 + 16) = *(a2 + 16);
    v9[2] = v6;
    LODWORD(v5) = *(a1 + 24);
    v7 = *(a1 + 28);
    *(a1 + 24) = v4;
    *(a1 + 28) = v3;
    v10 = v5;
    v11 = v7;
    PB::Base::~Base(v9);
  }

  return a1;
}

uint64_t CMMsl::AccessoryActivityStateUpdate::formatText(CMMsl::AccessoryActivityStateUpdate *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 28);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "activity", *(this + 4));
    v5 = *(this + 28);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(this + 28) & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "confidenceLevel", *(this + 5));
  v5 = *(this + 28);
  if ((v5 & 1) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  PB::TextFormatter::format(a2, "sensorTime", *(this + 1));
  if ((*(this + 28) & 8) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(a2, "sequenceNumber", *(this + 6));
  }

LABEL_6:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::AccessoryActivityStateUpdate::readFrom(CMMsl::AccessoryActivityStateUpdate *this, PB::Reader *a2)
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
            goto LABEL_118;
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
          *(this + 28) |= 4u;
          v48 = *(a2 + 1);
          v2 = *(a2 + 2);
          v49 = *a2;
          if (v48 > 0xFFFFFFFFFFFFFFF5 || v48 + 10 > v2)
          {
            v77 = 0;
            v78 = 0;
            v52 = 0;
            if (v2 <= v48)
            {
              v3 = *(a2 + 1);
            }

            else
            {
              v3 = *(a2 + 2);
            }

            v79 = v3 - v48;
            v80 = (v49 + v48);
            v81 = v48 + 1;
            while (1)
            {
              if (!v79)
              {
                LODWORD(v52) = 0;
                *(a2 + 24) = 1;
                goto LABEL_113;
              }

              v82 = v81;
              v83 = *v80;
              *(a2 + 1) = v82;
              v52 |= (v83 & 0x7F) << v77;
              if ((v83 & 0x80) == 0)
              {
                break;
              }

              v77 += 7;
              --v79;
              ++v80;
              v81 = v82 + 1;
              v14 = v78++ > 8;
              if (v14)
              {
                LODWORD(v52) = 0;
                goto LABEL_112;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v52) = 0;
            }

LABEL_112:
            v3 = v82;
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

LABEL_113:
          *(this + 5) = v52;
          goto LABEL_114;
        }

        if (v23 == 4)
        {
          *(this + 28) |= 8u;
          v32 = *(a2 + 1);
          v2 = *(a2 + 2);
          v33 = *a2;
          if (v32 > 0xFFFFFFFFFFFFFFF5 || v32 + 10 > v2)
          {
            v63 = 0;
            v64 = 0;
            v36 = 0;
            if (v2 <= v32)
            {
              v3 = *(a2 + 1);
            }

            else
            {
              v3 = *(a2 + 2);
            }

            v65 = v3 - v32;
            v66 = (v33 + v32);
            v67 = v32 + 1;
            while (1)
            {
              if (!v65)
              {
                LODWORD(v36) = 0;
                *(a2 + 24) = 1;
                goto LABEL_105;
              }

              v68 = v67;
              v69 = *v66;
              *(a2 + 1) = v68;
              v36 |= (v69 & 0x7F) << v63;
              if ((v69 & 0x80) == 0)
              {
                break;
              }

              v63 += 7;
              --v65;
              ++v66;
              v67 = v68 + 1;
              v14 = v64++ > 8;
              if (v14)
              {
                LODWORD(v36) = 0;
                goto LABEL_104;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v36) = 0;
            }

LABEL_104:
            v3 = v68;
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

LABEL_105:
          *(this + 6) = v36;
          goto LABEL_114;
        }
      }

      else
      {
        if (v23 == 1)
        {
          *(this + 28) |= 1u;
          v40 = *(a2 + 1);
          v2 = *(a2 + 2);
          v41 = *a2;
          if (v40 > 0xFFFFFFFFFFFFFFF5 || v40 + 10 > v2)
          {
            v70 = 0;
            v71 = 0;
            v44 = 0;
            if (v2 <= v40)
            {
              v3 = *(a2 + 1);
            }

            else
            {
              v3 = *(a2 + 2);
            }

            v72 = v3 - v40;
            v73 = (v41 + v40);
            v74 = v40 + 1;
            while (1)
            {
              if (!v72)
              {
                v44 = 0;
                *(a2 + 24) = 1;
                goto LABEL_109;
              }

              v75 = v74;
              v76 = *v73;
              *(a2 + 1) = v75;
              v44 |= (v76 & 0x7F) << v70;
              if ((v76 & 0x80) == 0)
              {
                break;
              }

              v70 += 7;
              --v72;
              ++v73;
              v74 = v75 + 1;
              v14 = v71++ > 8;
              if (v14)
              {
                v44 = 0;
                goto LABEL_108;
              }
            }

            if (*(a2 + 24))
            {
              v44 = 0;
            }

LABEL_108:
            v3 = v75;
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

LABEL_109:
          *(this + 1) = v44;
          goto LABEL_114;
        }

        if (v23 == 2)
        {
          *(this + 28) |= 2u;
          v24 = *(a2 + 1);
          v2 = *(a2 + 2);
          v25 = *a2;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v2)
          {
            v56 = 0;
            v57 = 0;
            v28 = 0;
            if (v2 <= v24)
            {
              v3 = *(a2 + 1);
            }

            else
            {
              v3 = *(a2 + 2);
            }

            v58 = v3 - v24;
            v59 = (v25 + v24);
            v60 = v24 + 1;
            while (1)
            {
              if (!v58)
              {
                LODWORD(v28) = 0;
                *(a2 + 24) = 1;
                goto LABEL_101;
              }

              v61 = v60;
              v62 = *v59;
              *(a2 + 1) = v61;
              v28 |= (v62 & 0x7F) << v56;
              if ((v62 & 0x80) == 0)
              {
                break;
              }

              v56 += 7;
              --v58;
              ++v59;
              v60 = v61 + 1;
              v14 = v57++ > 8;
              if (v14)
              {
                LODWORD(v28) = 0;
                goto LABEL_100;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v28) = 0;
            }

LABEL_100:
            v3 = v61;
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

LABEL_101:
          *(this + 4) = v28;
          goto LABEL_114;
        }
      }

      if (!PB::Reader::skip(a2, v23, v10 & 7, 0))
      {
        v84 = 0;
        return v84 & 1;
      }

      v3 = *(a2 + 1);
      v2 = *(a2 + 2);
LABEL_114:
      v4 = *(a2 + 24);
    }

    while (v3 < v2 && (*(a2 + 24) & 1) == 0);
  }

LABEL_118:
  v84 = v4 ^ 1;
  return v84 & 1;
}

uint64_t CMMsl::AccessoryActivityStateUpdate::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 28);
  if (v4)
  {
    this = PB::Writer::writeVarInt(a2, *(this + 8), 1u);
    v4 = *(v3 + 28);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = PB::Writer::writeVarInt(a2, *(v3 + 20), 3u);
      if ((*(v3 + 28) & 8) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 28) & 2) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::writeVarInt(a2, *(v3 + 16), 2u);
  v4 = *(v3 + 28);
  if ((v4 & 4) != 0)
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

  return PB::Writer::writeVarInt(a2, v5, 4u);
}

BOOL CMMsl::AccessoryActivityStateUpdate::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 28))
  {
    if ((*(a2 + 28) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 28))
  {
    return 0;
  }

  if ((*(a1 + 28) & 2) != 0)
  {
    if ((*(a2 + 28) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 28) & 2) != 0)
  {
    return 0;
  }

  if ((*(a1 + 28) & 4) != 0)
  {
    if ((*(a2 + 28) & 4) == 0 || *(a1 + 20) != *(a2 + 20))
    {
      return 0;
    }
  }

  else if ((*(a2 + 28) & 4) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 28) & 8) == 0;
  if ((*(a1 + 28) & 8) != 0)
  {
    return (*(a2 + 28) & 8) != 0 && *(a1 + 24) == *(a2 + 24);
  }

  return v2;
}

uint64_t CMMsl::AccessoryActivityStateUpdate::hash_value(CMMsl::AccessoryActivityStateUpdate *this)
{
  if (*(this + 28))
  {
    v1 = *(this + 1);
    if ((*(this + 28) & 2) != 0)
    {
LABEL_3:
      v2 = *(this + 4);
      if ((*(this + 28) & 4) != 0)
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
    if ((*(this + 28) & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v2 = 0;
  if ((*(this + 28) & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v3 = *(this + 5);
  if ((*(this + 28) & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v4 = *(this + 6);
  return v2 ^ v1 ^ v3 ^ v4;
}

uint64_t CMMsl::AccessoryBatchedPPG::AccessoryBatchedPPG(uint64_t this)
{
  *this = off_10041C908;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 64) = 0;
  return this;
}

{
  *this = off_10041C908;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 64) = 0;
  return this;
}

void CMMsl::AccessoryBatchedPPG::~AccessoryBatchedPPG(CMMsl::AccessoryBatchedPPG *this)
{
  *this = off_10041C908;
  v2 = (this + 8);
  sub_1002A2E24(&v2);
  PB::Base::~Base(this);
}

{
  *this = off_10041C908;
  v2 = (this + 8);
  sub_1002A2E24(&v2);
  PB::Base::~Base(this);
}

{
  *this = off_10041C908;
  v2 = (this + 8);
  sub_1002A2E24(&v2);
  PB::Base::~Base(this);
  operator delete();
}

uint64_t CMMsl::AccessoryBatchedPPG::AccessoryBatchedPPG(uint64_t this, const CMMsl::AccessoryBatchedPPG *a2)
{
  *this = off_10041C908;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 64) = 0;
  v2 = *(a2 + 64);
  if ((v2 & 2) != 0)
  {
    v4 = *(a2 + 5);
    v3 = 2;
    *(this + 64) = 2;
    *(this + 40) = v4;
    v2 = *(a2 + 64);
    if ((v2 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if (*(a2 + 64))
  {
LABEL_5:
    v5 = *(a2 + 4);
    v3 |= 1u;
    *(this + 64) = v3;
    *(this + 32) = v5;
    v2 = *(a2 + 64);
  }

LABEL_6:
  if ((v2 & 0x10) != 0)
  {
    v9 = *(a2 + 14);
    v3 |= 0x10u;
    *(this + 64) = v3;
    *(this + 56) = v9;
    v2 = *(a2 + 64);
    if ((v2 & 8) == 0)
    {
LABEL_8:
      if ((v2 & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_16;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_8;
  }

  v10 = *(a2 + 13);
  v3 |= 8u;
  *(this + 64) = v3;
  *(this + 52) = v10;
  v2 = *(a2 + 64);
  if ((v2 & 4) == 0)
  {
LABEL_9:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_16:
  v11 = *(a2 + 12);
  v3 |= 4u;
  *(this + 64) = v3;
  *(this + 48) = v11;
  if ((*(a2 + 64) & 0x20) != 0)
  {
LABEL_10:
    v6 = *(a2 + 15);
    *(this + 64) = v3 | 0x20;
    *(this + 60) = v6;
  }

LABEL_11:
  v7 = *(a2 + 1);
  if (v7 != *(a2 + 2))
  {
    v8 = *v7;
    sub_10006A194();
  }

  return this;
}

uint64_t CMMsl::AccessoryBatchedPPG::operator=(uint64_t a1, const CMMsl::AccessoryBatchedPPG *a2)
{
  if (a1 != a2)
  {
    CMMsl::AccessoryBatchedPPG::AccessoryBatchedPPG(&v11, a2);
    v3 = *(a1 + 64);
    *(a1 + 64) = v17;
    v17 = v3;
    v4 = *(a1 + 40);
    *(a1 + 40) = v15;
    v15 = v4;
    v5 = *(a1 + 48);
    *(a1 + 48) = v16;
    v16 = v5;
    v7 = *(a1 + 24);
    v6 = *(a1 + 32);
    v8 = v14;
    *(a1 + 24) = v13;
    *(a1 + 32) = v8;
    v9 = *(a1 + 8);
    *(a1 + 8) = v12;
    v12 = v9;
    v13 = v7;
    v14 = v6;
    v11 = off_10041C908;
    v18 = &v12;
    sub_1002A2E24(&v18);
    PB::Base::~Base(&v11);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::AccessoryBatchedPPG *a2, CMMsl::AccessoryBatchedPPG *a3)
{
  v3 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v3;
  v4 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v4;
  v5 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v5;
  v6 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v6;
  v7 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  v8 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v8;
  v9 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v9;
  v11 = *(this + 3);
  v10 = *(this + 4);
  v12 = *(a2 + 4);
  *(this + 3) = *(a2 + 3);
  *(this + 4) = v12;
  result = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = result;
  *(a2 + 15) = v7;
  *(a2 + 3) = v11;
  *(a2 + 4) = v10;
  return result;
}

uint64_t CMMsl::AccessoryBatchedPPG::AccessoryBatchedPPG(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041C908;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 60) = *(a2 + 60);
  sub_1002A2EE4((a1 + 8));
  *v4 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return a1;
}

uint64_t CMMsl::AccessoryBatchedPPG::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::AccessoryBatchedPPG::AccessoryBatchedPPG(&v11, a2);
    v3 = *(a1 + 64);
    *(a1 + 64) = v17;
    v17 = v3;
    v4 = *(a1 + 40);
    *(a1 + 40) = v15;
    v15 = v4;
    v5 = *(a1 + 48);
    *(a1 + 48) = v16;
    v16 = v5;
    v7 = *(a1 + 24);
    v6 = *(a1 + 32);
    v8 = v14;
    *(a1 + 24) = v13;
    *(a1 + 32) = v8;
    v9 = *(a1 + 8);
    *(a1 + 8) = v12;
    v12 = v9;
    v13 = v7;
    v14 = v6;
    v11 = off_10041C908;
    v18 = &v12;
    sub_1002A2E24(&v18);
    PB::Base::~Base(&v11);
  }

  return a1;
}

uint64_t CMMsl::AccessoryBatchedPPG::formatText(CMMsl::AccessoryBatchedPPG *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, a2, "batchedPPGData");
  }

  v8 = *(this + 64);
  if ((v8 & 4) != 0)
  {
    PB::TextFormatter::format(a2, "flagBitfield", *(this + 12));
    v8 = *(this + 64);
    if ((v8 & 8) == 0)
    {
LABEL_5:
      if ((v8 & 0x10) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  else if ((*(this + 64) & 8) == 0)
  {
    goto LABEL_5;
  }

  PB::TextFormatter::format(a2, "frameNum", *(this + 13));
  v8 = *(this + 64);
  if ((v8 & 0x10) == 0)
  {
LABEL_6:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  PB::TextFormatter::format(a2, "frameType", *(this + 14));
  v8 = *(this + 64);
  if ((v8 & 0x20) == 0)
  {
LABEL_7:
    if ((v8 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  PB::TextFormatter::format(a2, "payloadsInBatch", *(this + 15));
  v8 = *(this + 64);
  if ((v8 & 1) == 0)
  {
LABEL_8:
    if ((v8 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_17:
  PB::TextFormatter::format(a2, "sensorTime", *(this + 4));
  if ((*(this + 64) & 2) != 0)
  {
LABEL_9:
    PB::TextFormatter::format(a2, "timestamp", *(this + 5));
  }

LABEL_10:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::AccessoryBatchedPPG::readFrom(CMMsl::AccessoryBatchedPPG *this, PB::Reader *a2)
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
            goto LABEL_137;
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
            *(this + 64) |= 2u;
            v41 = *(a2 + 1);
            if (v41 <= 0xFFFFFFFFFFFFFFF7 && v41 + 8 <= *(a2 + 2))
            {
              *(this + 5) = *(*a2 + v41);
              *(a2 + 1) += 8;
            }

            else
            {
              *(a2 + 24) = 1;
            }

            goto LABEL_133;
          case 2:
            *(this + 64) |= 1u;
            v61 = *(a2 + 1);
            v60 = *(a2 + 2);
            v62 = *a2;
            if (v61 > 0xFFFFFFFFFFFFFFF5 || v61 + 10 > v60)
            {
              v93 = 0;
              v94 = 0;
              v65 = 0;
              v17 = v60 >= v61;
              v95 = v60 - v61;
              if (!v17)
              {
                v95 = 0;
              }

              v96 = (v62 + v61);
              v97 = v61 + 1;
              while (1)
              {
                if (!v95)
                {
                  v65 = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_132;
                }

                v98 = *v96;
                *(a2 + 1) = v97;
                v65 |= (v98 & 0x7F) << v93;
                if ((v98 & 0x80) == 0)
                {
                  break;
                }

                v93 += 7;
                --v95;
                ++v96;
                ++v97;
                v14 = v94++ > 8;
                if (v14)
                {
LABEL_111:
                  v65 = 0;
                  goto LABEL_132;
                }
              }

              if (*(a2 + 24))
              {
                v65 = 0;
              }
            }

            else
            {
              v63 = 0;
              v64 = 0;
              v65 = 0;
              v66 = (v62 + v61);
              v67 = v61 + 1;
              while (1)
              {
                *(a2 + 1) = v67;
                v68 = *v66++;
                v65 |= (v68 & 0x7F) << v63;
                if ((v68 & 0x80) == 0)
                {
                  break;
                }

                v63 += 7;
                ++v67;
                v14 = v64++ > 8;
                if (v14)
                {
                  goto LABEL_111;
                }
              }
            }

LABEL_132:
            *(this + 4) = v65;
            goto LABEL_133;
          case 3:
            *(this + 64) |= 0x10u;
            v33 = *(a2 + 1);
            v32 = *(a2 + 2);
            v34 = *a2;
            if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v32)
            {
              v87 = 0;
              v88 = 0;
              v37 = 0;
              v17 = v32 >= v33;
              v89 = v32 - v33;
              if (!v17)
              {
                v89 = 0;
              }

              v90 = (v34 + v33);
              v91 = v33 + 1;
              while (1)
              {
                if (!v89)
                {
                  LODWORD(v37) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_129;
                }

                v92 = *v90;
                *(a2 + 1) = v91;
                v37 |= (v92 & 0x7F) << v87;
                if ((v92 & 0x80) == 0)
                {
                  break;
                }

                v87 += 7;
                --v89;
                ++v90;
                ++v91;
                v14 = v88++ > 8;
                if (v14)
                {
LABEL_103:
                  LODWORD(v37) = 0;
                  goto LABEL_129;
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
                  goto LABEL_103;
                }
              }
            }

LABEL_129:
            *(this + 14) = v37;
            goto LABEL_133;
        }
      }

      else if (v22 > 5)
      {
        if (v22 == 6)
        {
          *(this + 64) |= 0x20u;
          v52 = *(a2 + 1);
          v51 = *(a2 + 2);
          v53 = *a2;
          if (v52 > 0xFFFFFFFFFFFFFFF5 || v52 + 10 > v51)
          {
            v75 = 0;
            v76 = 0;
            v56 = 0;
            v17 = v51 >= v52;
            v77 = v51 - v52;
            if (!v17)
            {
              v77 = 0;
            }

            v78 = (v53 + v52);
            v79 = v52 + 1;
            while (1)
            {
              if (!v77)
              {
                LODWORD(v56) = 0;
                *(a2 + 24) = 1;
                goto LABEL_123;
              }

              v80 = *v78;
              *(a2 + 1) = v79;
              v56 |= (v80 & 0x7F) << v75;
              if ((v80 & 0x80) == 0)
              {
                break;
              }

              v75 += 7;
              --v77;
              ++v78;
              ++v79;
              v14 = v76++ > 8;
              if (v14)
              {
LABEL_87:
                LODWORD(v56) = 0;
                goto LABEL_123;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v56) = 0;
            }
          }

          else
          {
            v54 = 0;
            v55 = 0;
            v56 = 0;
            v57 = (v53 + v52);
            v58 = v52 + 1;
            while (1)
            {
              *(a2 + 1) = v58;
              v59 = *v57++;
              v56 |= (v59 & 0x7F) << v54;
              if ((v59 & 0x80) == 0)
              {
                break;
              }

              v54 += 7;
              ++v58;
              v14 = v55++ > 8;
              if (v14)
              {
                goto LABEL_87;
              }
            }
          }

LABEL_123:
          *(this + 15) = v56;
          goto LABEL_133;
        }

        if (v22 == 7)
        {
          sub_10006AE34();
        }
      }

      else
      {
        if (v22 == 4)
        {
          *(this + 64) |= 8u;
          v43 = *(a2 + 1);
          v42 = *(a2 + 2);
          v44 = *a2;
          if (v43 > 0xFFFFFFFFFFFFFFF5 || v43 + 10 > v42)
          {
            v69 = 0;
            v70 = 0;
            v47 = 0;
            v17 = v42 >= v43;
            v71 = v42 - v43;
            if (!v17)
            {
              v71 = 0;
            }

            v72 = (v44 + v43);
            v73 = v43 + 1;
            while (1)
            {
              if (!v71)
              {
                LODWORD(v47) = 0;
                *(a2 + 24) = 1;
                goto LABEL_120;
              }

              v74 = *v72;
              *(a2 + 1) = v73;
              v47 |= (v74 & 0x7F) << v69;
              if ((v74 & 0x80) == 0)
              {
                break;
              }

              v69 += 7;
              --v71;
              ++v72;
              ++v73;
              v14 = v70++ > 8;
              if (v14)
              {
LABEL_79:
                LODWORD(v47) = 0;
                goto LABEL_120;
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
                goto LABEL_79;
              }
            }
          }

LABEL_120:
          *(this + 13) = v47;
          goto LABEL_133;
        }

        if (v22 == 5)
        {
          *(this + 64) |= 4u;
          v24 = *(a2 + 1);
          v23 = *(a2 + 2);
          v25 = *a2;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
          {
            v81 = 0;
            v82 = 0;
            v28 = 0;
            v17 = v23 >= v24;
            v83 = v23 - v24;
            if (!v17)
            {
              v83 = 0;
            }

            v84 = (v25 + v24);
            v85 = v24 + 1;
            while (1)
            {
              if (!v83)
              {
                LODWORD(v28) = 0;
                *(a2 + 24) = 1;
                goto LABEL_126;
              }

              v86 = *v84;
              *(a2 + 1) = v85;
              v28 |= (v86 & 0x7F) << v81;
              if ((v86 & 0x80) == 0)
              {
                break;
              }

              v81 += 7;
              --v83;
              ++v84;
              ++v85;
              v14 = v82++ > 8;
              if (v14)
              {
LABEL_95:
                LODWORD(v28) = 0;
                goto LABEL_126;
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
                goto LABEL_95;
              }
            }
          }

LABEL_126:
          *(this + 12) = v28;
          goto LABEL_133;
        }
      }

      if ((PB::Reader::skip(a2, v22, v10 & 7, 0) & 1) == 0)
      {
        v100 = 0;
        return v100 & 1;
      }

LABEL_133:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_137:
  v100 = v4 ^ 1;
  return v100 & 1;
}

uint64_t CMMsl::AccessoryBatchedPPG::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 64);
  if ((v4 & 2) != 0)
  {
    this = PB::Writer::write(a2, *(this + 40), 1u);
    v4 = *(v3 + 64);
    if ((v4 & 1) == 0)
    {
LABEL_3:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(this + 64) & 1) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::writeVarInt(a2, *(v3 + 32), 2u);
  v4 = *(v3 + 64);
  if ((v4 & 0x10) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = PB::Writer::writeVarInt(a2, *(v3 + 56), 3u);
  v4 = *(v3 + 64);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 4) == 0)
    {
      goto LABEL_6;
    }

LABEL_16:
    this = PB::Writer::writeVarInt(a2, *(v3 + 48), 5u);
    if ((*(v3 + 64) & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  this = PB::Writer::writeVarInt(a2, *(v3 + 52), 4u);
  v4 = *(v3 + 64);
  if ((v4 & 4) != 0)
  {
    goto LABEL_16;
  }

LABEL_6:
  if ((v4 & 0x20) != 0)
  {
LABEL_7:
    this = PB::Writer::writeVarInt(a2, *(v3 + 60), 6u);
  }

LABEL_8:
  v6 = *(v3 + 8);
  v5 = *(v3 + 16);
  while (v6 != v5)
  {
    v7 = *v6++;
    this = PB::Writer::writeSubmessage(a2, v7, 7u);
  }

  return this;
}

BOOL CMMsl::AccessoryBatchedPPG::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 64);
  if ((*(a1 + 64) & 2) != 0)
  {
    if ((*(a2 + 64) & 2) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }

LABEL_6:
    if (*(a1 + 64))
    {
      if ((*(a2 + 64) & 1) == 0 || *(a1 + 32) != *(a2 + 32))
      {
        return 0;
      }
    }

    else if (*(a2 + 64))
    {
      return 0;
    }

    if ((*(a1 + 64) & 0x10) != 0)
    {
      if ((*(a2 + 64) & 0x10) == 0 || *(a1 + 56) != *(a2 + 56))
      {
        return 0;
      }
    }

    else if ((*(a2 + 64) & 0x10) != 0)
    {
      return 0;
    }

    if ((*(a1 + 64) & 8) != 0)
    {
      if ((*(a2 + 64) & 8) == 0 || *(a1 + 52) != *(a2 + 52))
      {
        return 0;
      }
    }

    else if ((*(a2 + 64) & 8) != 0)
    {
      return 0;
    }

    if ((*(a1 + 64) & 4) != 0)
    {
      if ((*(a2 + 64) & 4) == 0 || *(a1 + 48) != *(a2 + 48))
      {
        return 0;
      }
    }

    else if ((*(a2 + 64) & 4) != 0)
    {
      return 0;
    }

    if ((*(a1 + 64) & 0x20) != 0)
    {
      if ((*(a2 + 64) & 0x20) == 0 || *(a1 + 60) != *(a2 + 60))
      {
        return 0;
      }
    }

    else if ((*(a2 + 64) & 0x20) != 0)
    {
      return 0;
    }

    return sub_10006B188((a1 + 8), a2 + 8);
  }

  if ((*(a2 + 64) & 2) == 0)
  {
    goto LABEL_6;
  }

  return 0;
}

BOOL sub_10006B188(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  if (v2 - *a1 != *(a2 + 8) - *a2)
  {
    return 0;
  }

  if (v3 == v2)
  {
    return 1;
  }

  do
  {
    result = CMMsl::BatchedPPGData::operator==(*v3, *v4);
    if (!result)
    {
      break;
    }

    ++v3;
    ++v4;
  }

  while (v3 != a1[1]);
  return result;
}

uint64_t CMMsl::AccessoryBatchedPPG::hash_value(CMMsl::AccessoryBatchedPPG *this)
{
  if ((*(this + 64) & 2) != 0)
  {
    if (*(this + 5) == 0.0)
    {
      v1 = 0;
    }

    else
    {
      v1 = *(this + 5);
    }

    if (*(this + 64))
    {
LABEL_3:
      v2 = *(this + 4);
      if ((*(this + 64) & 0x10) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v1 = 0;
    if (*(this + 64))
    {
      goto LABEL_3;
    }
  }

  v2 = 0;
  if ((*(this + 64) & 0x10) != 0)
  {
LABEL_4:
    v3 = *(this + 14);
    if ((*(this + 64) & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v3 = 0;
  if ((*(this + 64) & 8) != 0)
  {
LABEL_5:
    v4 = *(this + 13);
    if ((*(this + 64) & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_15:
    v5 = 0;
    if ((*(this + 64) & 0x20) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_14:
  v4 = 0;
  if ((*(this + 64) & 4) == 0)
  {
    goto LABEL_15;
  }

LABEL_6:
  v5 = *(this + 12);
  if ((*(this + 64) & 0x20) != 0)
  {
LABEL_7:
    v6 = *(this + 15);
    goto LABEL_17;
  }

LABEL_16:
  v6 = 0;
LABEL_17:
  v7 = *(this + 1);
  v8 = *(this + 2);
  if (v7 == v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 0;
    do
    {
      v10 = *v7++;
      v9 ^= CMMsl::BatchedPPGData::hash_value(v10);
    }

    while (v7 != v8);
  }

  return v2 ^ v1 ^ v3 ^ v4 ^ v5 ^ v6 ^ v9;
}

void CMMsl::AccessoryConfig::~AccessoryConfig(CMMsl::AccessoryConfig *this)
{
  *this = off_10041C940;
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
  CMMsl::AccessoryConfig::~AccessoryConfig(this);

  operator delete();
}

uint64_t CMMsl::AccessoryConfig::AccessoryConfig(uint64_t this, const CMMsl::AccessoryConfig *a2)
{
  *this = off_10041C940;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 36) = 0;
  *(this + 24) = 0;
  if ((*(a2 + 36) & 2) != 0)
  {
    v2 = *(a2 + 7);
    *(this + 36) = 2;
    *(this + 28) = v2;
  }

  if (*(a2 + 2))
  {
    operator new();
  }

  if (*(a2 + 1))
  {
    operator new();
  }

  v3 = *(a2 + 36);
  if (v3)
  {
    v4 = *(a2 + 6);
    *(this + 36) |= 1u;
    *(this + 24) = v4;
    v3 = *(a2 + 36);
  }

  if ((v3 & 4) != 0)
  {
    v5 = *(a2 + 32);
    *(this + 36) |= 4u;
    *(this + 32) = v5;
  }

  return this;
}

uint64_t CMMsl::AccessoryConfig::operator=(uint64_t a1, const CMMsl::AccessoryConfig *a2)
{
  if (a1 != a2)
  {
    CMMsl::AccessoryConfig::AccessoryConfig(v6, a2);
    v3 = *(a1 + 36);
    *(a1 + 36) = v10;
    v10 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    *&v4 = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v4;
    LOBYTE(v3) = *(a1 + 32);
    *(a1 + 32) = v9;
    v9 = v3;
    CMMsl::AccessoryConfig::~AccessoryConfig(v6);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::AccessoryConfig *a2, CMMsl::AccessoryConfig *a3)
{
  v3 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v3;
  v4 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v5;
  result = *(a2 + 3);
  v7 = *(this + 3);
  *(this + 3) = result;
  *(a2 + 3) = v7;
  LOBYTE(v5) = *(this + 32);
  *(this + 32) = *(a2 + 32);
  *(a2 + 32) = v5;
  return result;
}

uint64_t CMMsl::AccessoryConfig::AccessoryConfig(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041C940;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = (a1 + 16);
  *(a1 + 24) = 0;
  *(a1 + 36) = *(a2 + 36);
  *(a2 + 36) = 0;
  *(a1 + 28) = *(a2 + 28);
  v6 = *(a2 + 16);
  *(a2 + 16) = 0;
  v7 = *v5;
  *v5 = v6;
  if (v7)
  {
    sub_100011018(v5, v7);
  }

  v8 = *(a2 + 8);
  *(a2 + 8) = 0;
  v9 = *v4;
  *v4 = v8;
  if (v9)
  {
    sub_100011018(v4, v9);
  }

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t CMMsl::AccessoryConfig::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::AccessoryConfig::AccessoryConfig(v6, a2);
    v3 = *(a1 + 36);
    *(a1 + 36) = v10;
    v10 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    *&v4 = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v4;
    LOBYTE(v3) = *(a1 + 32);
    *(a1 + 32) = v9;
    v9 = v3;
    CMMsl::AccessoryConfig::~AccessoryConfig(v6);
  }

  return a1;
}

uint64_t CMMsl::AccessoryConfig::formatText(CMMsl::AccessoryConfig *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 1))
  {
    PB::TextFormatter::format();
  }

  v5 = *(this + 36);
  if (v5)
  {
    PB::TextFormatter::format(a2, "hardwareModel", *(this + 6));
    v5 = *(this + 36);
  }

  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(a2, "isVirtualTransport", *(this + 32));
  }

  if (*(this + 2))
  {
    PB::TextFormatter::format();
  }

  if ((*(this + 36) & 2) != 0)
  {
    PB::TextFormatter::format(a2, "side", *(this + 7));
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::AccessoryConfig::readFrom(CMMsl::AccessoryConfig *this, PB::Reader *a2)
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
            goto LABEL_78;
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
          *(this + 36) |= 2u;
          v37 = *(a2 + 1);
          v36 = *(a2 + 2);
          v38 = *a2;
          if (v37 > 0xFFFFFFFFFFFFFFF5 || v37 + 10 > v36)
          {
            v51 = 0;
            v52 = 0;
            v41 = 0;
            v17 = v36 >= v37;
            v53 = v36 - v37;
            if (!v17)
            {
              v53 = 0;
            }

            v54 = (v38 + v37);
            v55 = v37 + 1;
            while (1)
            {
              if (!v53)
              {
                LODWORD(v41) = 0;
                *(a2 + 24) = 1;
                goto LABEL_73;
              }

              v56 = *v54;
              *(a2 + 1) = v55;
              v41 |= (v56 & 0x7F) << v51;
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
LABEL_63:
                LODWORD(v41) = 0;
                goto LABEL_73;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v41) = 0;
            }
          }

          else
          {
            v39 = 0;
            v40 = 0;
            v41 = 0;
            v42 = (v38 + v37);
            v43 = v37 + 1;
            while (1)
            {
              *(a2 + 1) = v43;
              v44 = *v42++;
              v41 |= (v44 & 0x7F) << v39;
              if ((v44 & 0x80) == 0)
              {
                break;
              }

              v39 += 7;
              ++v43;
              v14 = v40++ > 8;
              if (v14)
              {
                goto LABEL_63;
              }
            }
          }

LABEL_73:
          *(this + 7) = v41;
          goto LABEL_74;
        }

        if (v22 == 2)
        {
          operator new();
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            operator new();
          case 4:
            *(this + 36) |= 1u;
            v28 = *(a2 + 1);
            v27 = *(a2 + 2);
            v29 = *a2;
            if (v28 > 0xFFFFFFFFFFFFFFF5 || v28 + 10 > v27)
            {
              v45 = 0;
              v46 = 0;
              v32 = 0;
              v17 = v27 >= v28;
              v47 = v27 - v28;
              if (!v17)
              {
                v47 = 0;
              }

              v48 = (v29 + v28);
              v49 = v28 + 1;
              while (1)
              {
                if (!v47)
                {
                  LODWORD(v32) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_70;
                }

                v50 = *v48;
                *(a2 + 1) = v49;
                v32 |= (v50 & 0x7F) << v45;
                if ((v50 & 0x80) == 0)
                {
                  break;
                }

                v45 += 7;
                --v47;
                ++v48;
                ++v49;
                v14 = v46++ > 8;
                if (v14)
                {
LABEL_55:
                  LODWORD(v32) = 0;
                  goto LABEL_70;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v32) = 0;
              }
            }

            else
            {
              v30 = 0;
              v31 = 0;
              v32 = 0;
              v33 = (v29 + v28);
              v34 = v28 + 1;
              while (1)
              {
                *(a2 + 1) = v34;
                v35 = *v33++;
                v32 |= (v35 & 0x7F) << v30;
                if ((v35 & 0x80) == 0)
                {
                  break;
                }

                v30 += 7;
                ++v34;
                v14 = v31++ > 8;
                if (v14)
                {
                  goto LABEL_55;
                }
              }
            }

LABEL_70:
            *(this + 6) = v32;
            goto LABEL_74;
          case 5:
            *(this + 36) |= 4u;
            v23 = *(a2 + 1);
            if (v23 >= *(a2 + 2))
            {
              v26 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v24 = v23 + 1;
              v25 = *(*a2 + v23);
              *(a2 + 1) = v24;
              v26 = v25 != 0;
            }

            *(this + 32) = v26;
            goto LABEL_74;
        }
      }

      if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
      {
        v58 = 0;
        return v58 & 1;
      }

LABEL_74:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_78:
  v58 = v4 ^ 1;
  return v58 & 1;
}

uint64_t CMMsl::AccessoryConfig::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if ((*(this + 36) & 2) != 0)
  {
    this = PB::Writer::writeVarInt(a2, *(this + 28), 1u);
  }

  if (*(v3 + 16))
  {
    this = PB::Writer::write();
  }

  if (*(v3 + 8))
  {
    this = PB::Writer::write();
  }

  v4 = *(v3 + 36);
  if (v4)
  {
    this = PB::Writer::writeVarInt(a2, *(v3 + 24), 4u);
    v4 = *(v3 + 36);
  }

  if ((v4 & 4) != 0)
  {
    v5 = *(v3 + 32);

    return PB::Writer::write(a2, v5, 5u);
  }

  return this;
}

unint64_t CMMsl::AccessoryConfig::hash_value(CMMsl::AccessoryConfig *this)
{
  if ((*(this + 36) & 2) != 0)
  {
    v2 = *(this + 7);
  }

  else
  {
    v2 = 0;
  }

  v3 = *(this + 2);
  if (v3)
  {
    v4 = sub_100011074(&v10, v3);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(this + 1);
  if (v5)
  {
    v6 = sub_100011074(&v11, v5);
  }

  else
  {
    v6 = 0;
  }

  if (*(this + 36))
  {
    v7 = *(this + 6);
    if ((*(this + 36) & 4) != 0)
    {
      goto LABEL_12;
    }

LABEL_14:
    v8 = 0;
    return v4 ^ v2 ^ v6 ^ v7 ^ v8;
  }

  v7 = 0;
  if ((*(this + 36) & 4) == 0)
  {
    goto LABEL_14;
  }

LABEL_12:
  v8 = *(this + 32);
  return v4 ^ v2 ^ v6 ^ v7 ^ v8;
}

uint64_t CMMsl::AccessoryDeviceMotion::AccessoryDeviceMotion(uint64_t this)
{
  *this = off_10041C978;
  *(this + 8) = 0;
  *(this + 24) = 0;
  return this;
}

{
  *this = off_10041C978;
  *(this + 8) = 0;
  *(this + 24) = 0;
  return this;
}

void CMMsl::AccessoryDeviceMotion::~AccessoryDeviceMotion(CMMsl::AccessoryDeviceMotion *this)
{
  v2 = *(this + 1);
  *this = off_10041C978;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::AccessoryDeviceMotion::~AccessoryDeviceMotion(this);

  operator delete();
}

uint64_t CMMsl::AccessoryDeviceMotion::AccessoryDeviceMotion(uint64_t this, const CMMsl::AccessoryDeviceMotion *a2)
{
  *this = off_10041C978;
  *(this + 8) = 0;
  *(this + 24) = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  v2 = *(a2 + 24);
  if (v2)
  {
    v3 = *(a2 + 4);
    *(this + 24) |= 1u;
    *(this + 16) = v3;
    v2 = *(a2 + 24);
  }

  if ((v2 & 2) != 0)
  {
    v4 = *(a2 + 5);
    *(this + 24) |= 2u;
    *(this + 20) = v4;
  }

  return this;
}

uint64_t CMMsl::AccessoryDeviceMotion::operator=(uint64_t a1, const CMMsl::AccessoryDeviceMotion *a2)
{
  if (a1 != a2)
  {
    CMMsl::AccessoryDeviceMotion::AccessoryDeviceMotion(&v7, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v10;
    v10 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v4;
    v5 = *(a1 + 16);
    *(a1 + 16) = v9;
    v9 = v5;
    CMMsl::AccessoryDeviceMotion::~AccessoryDeviceMotion(&v7);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::AccessoryDeviceMotion *a2, CMMsl::AccessoryDeviceMotion *a3)
{
  v3 = *(this + 24);
  *(this + 24) = *(a2 + 6);
  *(a2 + 6) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 16);
  *(this + 16) = *(a2 + 4);
  *(a2 + 4) = v4;
  LODWORD(v4) = *(this + 20);
  *(this + 20) = *(a2 + 5);
  *(a2 + 5) = v4;
  return this;
}

uint64_t CMMsl::AccessoryDeviceMotion::AccessoryDeviceMotion(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041C978;
  *(a1 + 8) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  return a1;
}

uint64_t CMMsl::AccessoryDeviceMotion::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::AccessoryDeviceMotion::AccessoryDeviceMotion(&v7, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v10;
    v10 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v4;
    v5 = *(a1 + 16);
    *(a1 + 16) = v9;
    v9 = v5;
    CMMsl::AccessoryDeviceMotion::~AccessoryDeviceMotion(&v7);
  }

  return a1;
}

uint64_t CMMsl::AccessoryDeviceMotion::formatText(CMMsl::AccessoryDeviceMotion *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "dm");
  }

  v6 = *(this + 24);
  if (v6)
  {
    PB::TextFormatter::format(a2, "location", *(this + 4));
    v6 = *(this + 24);
  }

  if ((v6 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "sequenceNumber", *(this + 5));
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::AccessoryDeviceMotion::readFrom(CMMsl::AccessoryDeviceMotion *this, PB::Reader *a2)
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
            goto LABEL_70;
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
      if ((v10 >> 3) == 3)
      {
        *(this + 24) |= 2u;
        v33 = *(a2 + 1);
        v32 = *(a2 + 2);
        v34 = *a2;
        if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v32)
        {
          v47 = 0;
          v48 = 0;
          v37 = 0;
          v17 = v32 >= v33;
          v49 = v32 - v33;
          if (!v17)
          {
            v49 = 0;
          }

          v50 = (v34 + v33);
          v51 = v33 + 1;
          while (1)
          {
            if (!v49)
            {
              LODWORD(v37) = 0;
              *(a2 + 24) = 1;
              goto LABEL_65;
            }

            v52 = *v50;
            *(a2 + 1) = v51;
            v37 |= (v52 & 0x7F) << v47;
            if ((v52 & 0x80) == 0)
            {
              break;
            }

            v47 += 7;
            --v49;
            ++v50;
            ++v51;
            v14 = v48++ > 8;
            if (v14)
            {
LABEL_57:
              LODWORD(v37) = 0;
              goto LABEL_65;
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
              goto LABEL_57;
            }
          }
        }

LABEL_65:
        *(this + 5) = v37;
      }

      else if (v22 == 2)
      {
        *(this + 24) |= 1u;
        v24 = *(a2 + 1);
        v23 = *(a2 + 2);
        v25 = *a2;
        if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
        {
          v41 = 0;
          v42 = 0;
          v28 = 0;
          v17 = v23 >= v24;
          v43 = v23 - v24;
          if (!v17)
          {
            v43 = 0;
          }

          v44 = (v25 + v24);
          v45 = v24 + 1;
          while (1)
          {
            if (!v43)
            {
              LODWORD(v28) = 0;
              *(a2 + 24) = 1;
              goto LABEL_62;
            }

            v46 = *v44;
            *(a2 + 1) = v45;
            v28 |= (v46 & 0x7F) << v41;
            if ((v46 & 0x80) == 0)
            {
              break;
            }

            v41 += 7;
            --v43;
            ++v44;
            ++v45;
            v14 = v42++ > 8;
            if (v14)
            {
LABEL_49:
              LODWORD(v28) = 0;
              goto LABEL_62;
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
              goto LABEL_49;
            }
          }
        }

LABEL_62:
        *(this + 4) = v28;
      }

      else
      {
        if (v22 == 1)
        {
          operator new();
        }

        if ((PB::Reader::skip(a2, v22, v10 & 7, 0) & 1) == 0)
        {
          v54 = 0;
          return v54 & 1;
        }
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_70:
  v54 = v4 ^ 1;
  return v54 & 1;
}

uint64_t CMMsl::DeviceMotion::DeviceMotion(uint64_t this)
{
  *this = off_10041DC10;
  *(this + 124) = 0;
  return this;
}

{
  *this = off_10041DC10;
  *(this + 124) = 0;
  return this;
}

uint64_t CMMsl::AccessoryDeviceMotion::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4, 1u);
  }

  v5 = *(v3 + 24);
  if (v5)
  {
    this = PB::Writer::writeVarInt(a2, *(v3 + 16), 2u);
    v5 = *(v3 + 24);
  }

  if ((v5 & 2) != 0)
  {
    v6 = *(v3 + 20);

    return PB::Writer::writeVarInt(a2, v6, 3u);
  }

  return this;
}

BOOL CMMsl::AccessoryDeviceMotion::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5 || !CMMsl::DeviceMotion::operator==(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (*(a1 + 24))
  {
    if ((*(a2 + 24) & 1) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if (*(a2 + 24))
  {
    return 0;
  }

  result = (*(a2 + 24) & 2) == 0;
  if ((*(a1 + 24) & 2) == 0)
  {
    return result;
  }

  return (*(a2 + 24) & 2) != 0 && *(a1 + 20) == *(a2 + 20);
}

BOOL CMMsl::DeviceMotion::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 124);
  v3 = *(a2 + 124);
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

  if ((v2 & 0x40000) != 0)
  {
    if ((v3 & 0x40000) == 0 || *(a1 + 100) != *(a2 + 100))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80000) != 0)
  {
    if ((v3 & 0x80000) == 0 || *(a1 + 104) != *(a2 + 104))
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
    if ((v3 & 0x100000) == 0 || *(a1 + 108) != *(a2 + 108))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x2000) != 0)
  {
    if ((v3 & 0x2000) == 0 || *(a1 + 80) != *(a2 + 80))
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
    if ((v3 & 0x4000) == 0 || *(a1 + 84) != *(a2 + 84))
    {
      return 0;
    }
  }

  else if ((v3 & 0x4000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x8000) != 0)
  {
    if ((v3 & 0x8000) == 0 || *(a1 + 88) != *(a2 + 88))
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x100) != 0)
  {
    if ((v3 & 0x100) == 0 || *(a1 + 60) != *(a2 + 60))
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
    if ((v3 & 0x200) == 0 || *(a1 + 64) != *(a2 + 64))
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
    if ((v3 & 0x400) == 0 || *(a1 + 68) != *(a2 + 68))
    {
      return 0;
    }
  }

  else if ((v3 & 0x400) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if ((v2 & 0x800) != 0)
  {
    if ((v3 & 0x800) == 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if ((v3 & 0x800) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20000) != 0)
  {
    if ((v3 & 0x20000) == 0 || *(a1 + 96) != *(a2 + 96))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20000) != 0)
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

  if ((v2 & 0x1000) != 0)
  {
    if ((v3 & 0x1000) == 0 || *(a1 + 76) != *(a2 + 76))
    {
      return 0;
    }
  }

  else if ((v3 & 0x1000) != 0)
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

  if ((v2 & 0x10000) != 0)
  {
    if ((v3 & 0x10000) == 0 || *(a1 + 92) != *(a2 + 92))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x200000) != 0)
  {
    if ((v3 & 0x200000) == 0 || *(a1 + 112) != *(a2 + 112))
    {
      return 0;
    }
  }

  else if ((v3 & 0x200000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x800000) != 0)
  {
    if ((v3 & 0x800000) == 0 || *(a1 + 120) != *(a2 + 120))
    {
      return 0;
    }
  }

  else if ((v3 & 0x800000) != 0)
  {
    return 0;
  }

  v4 = (v3 & 0x400000) == 0;
  if ((v2 & 0x400000) != 0)
  {
    return (v3 & 0x400000) != 0 && *(a1 + 116) == *(a2 + 116);
  }

  return v4;
}