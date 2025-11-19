uint64_t icu::DateInterval::DateInterval(uint64_t this, double a2, double a3)
{
  *this = &unk_1F0931C70;
  *(this + 8) = a2;
  *(this + 16) = a3;
  return this;
}

{
  *this = &unk_1F0931C70;
  *(this + 8) = a2;
  *(this + 16) = a3;
  return this;
}

void icu::DateInterval::~DateInterval(icu::DateInterval *this)
{
  icu::UObject::~UObject(this);

  JUMPOUT(0x19A8B2600);
}

__n128 icu::DateInterval::DateInterval(icu::DateInterval *this, const icu::DateInterval *a2)
{
  *this = &unk_1F0931C70;
  if (this != a2)
  {
    result = *(a2 + 8);
    *(this + 8) = result;
  }

  return result;
}

{
  *this = &unk_1F0931C70;
  if (this != a2)
  {
    result = *(a2 + 8);
    *(this + 8) = result;
  }

  return result;
}

__n128 icu::DateInterval::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    result = *(a2 + 8);
    *(a1 + 8) = result;
  }

  return result;
}

void icu::Edits::releaseArray(void **this)
{
  v2 = this + 28;
  v1 = *this;
  if (v1 != v2)
  {
    free(v1);
  }
}

icu::Edits *icu::Edits::copyArray(icu::Edits *this, const void **a2)
{
  if (*(this + 6) < 1)
  {
    v4 = *(this + 3);
    if (v4 > *(this + 2))
    {
      v5 = malloc_type_malloc(2 * v4, 0x1000040BDFB0063uLL);
      if (!v5)
      {
        *(this + 12) = xmmword_195430A60;
        return this;
      }

      v6 = v5;
      if (*this != (this + 28))
      {
        free(*this);
      }

      *this = v6;
      v4 = *(this + 3);
      *(this + 2) = v4;
    }

    if (v4 >= 1)
    {
      memcpy(*this, *a2, (2 * v4));
    }
  }

  else
  {
    *(this + 2) = 0;
    *(this + 3) = 0;
  }

  return this;
}

icu::Edits *icu::Edits::moveArray(icu::Edits *this, icu::Edits *a2)
{
  if (*(this + 6) < 1)
  {
    v5 = this + 28;
    v4 = *this;
    if (*this != (this + 28))
    {
      free(v4);
    }

    v6 = *(this + 3);
    if (v6 < 101)
    {
      *this = v5;
      *(this + 2) = 100;
      if (v6 >= 1)
      {
        memcpy(this + 28, *a2, 2 * v6);
      }
    }

    else
    {
      *this = *a2;
      *(this + 2) = *(a2 + 2);
      *a2 = a2 + 28;
      *(a2 + 2) = 100;
      *(a2 + 20) = 0;
      *(a2 + 12) = 0;
    }
  }

  else
  {
    *(this + 2) = 0;
    *(this + 3) = 0;
  }

  return this;
}

uint64_t icu::Edits::reset(uint64_t this)
{
  *(this + 20) = 0;
  *(this + 12) = 0;
  return this;
}

icu::Edits *icu::Edits::operator=(icu::Edits *result, uint64_t a2)
{
  if (result != a2)
  {
    *(result + 12) = *(a2 + 12);
    return icu::Edits::copyArray(result, a2);
  }

  return result;
}

void icu::Edits::~Edits(void **this)
{
  v2 = this + 28;
  v1 = *this;
  if (v1 != v2)
  {
    free(v1);
  }
}

{
  v2 = this + 28;
  v1 = *this;
  if (v1 != v2)
  {
    free(v1);
  }
}

_DWORD *icu::Edits::addUnchanged(_DWORD *this, unsigned int a2)
{
  if (a2)
  {
    v2 = this;
    if (this[6] <= 0)
    {
      v3 = a2;
      if ((a2 & 0x80000000) != 0)
      {
        this[6] = 1;
        return this;
      }

      v4 = this[3];
      if (v4 >= 1)
      {
        v5 = *this + 2 * v4;
        v6 = *(v5 - 2);
        if (v6 <= 0xFFE)
        {
          if (a2 <= 4095 - v6)
          {
            *(v5 - 2) = v6 + a2;
            return this;
          }

          *(v5 - 2) = 4095;
          v3 = a2 - (4095 - v6);
        }
      }

      if (v3 < 4096)
      {
        v7 = v3;
      }

      else
      {
        do
        {
          this = icu::Edits::append(v2, 4095);
          v7 = v3 - 4096;
          v8 = v3 >> 13;
          v3 -= 4096;
        }

        while (v8);
      }

      if (v7 >= 1)
      {

        return icu::Edits::append(v2, v7 - 1);
      }
    }
  }

  return this;
}

_DWORD *icu::Edits::append(_DWORD *this, __int16 a2)
{
  v3 = this;
  v4 = this[3];
  if (v4 >= this[2])
  {
    this = icu::Edits::growArray(this);
    if (!this)
    {
      return this;
    }

    v4 = v3[3];
  }

  v5 = *v3;
  v3[3] = v4 + 1;
  *(v5 + 2 * v4) = a2;
  return this;
}

_DWORD *icu::Edits::addReplace(_DWORD *this, int a2, int a3)
{
  if (this[6] > 0)
  {
    return this;
  }

  v3 = a3;
  v4 = a2;
  v5 = this;
  if ((a3 | a2) < 0)
  {
    v8 = 1;
    goto LABEL_10;
  }

  if (!(a3 | a2))
  {
    return this;
  }

  ++this[5];
  v6 = a3 - a2;
  if (a3 != a2)
  {
    if (v6 < 1)
    {
      v7 = this[4];
      if (v6 < 0 && v7 < 0 && v6 < (0x80000000 - v7))
      {
        goto LABEL_8;
      }
    }

    else
    {
      v7 = this[4];
      if ((v7 & 0x80000000) == 0 && v6 > (v7 ^ 0x7FFFFFFFu))
      {
LABEL_8:
        v8 = 8;
LABEL_10:
        this[6] = v8;
        return this;
      }
    }

    this[4] = v7 + v6;
  }

  if ((a2 - 1) <= 5 && a3 <= 7)
  {
    v9 = this[3];
    if (v9 < 1)
    {
      v10 = 0xFFFF;
    }

    else
    {
      v10 = *(*this + 2 * v9 - 2);
    }

    a2 = (a3 << 9) | (a2 << 12);
    if ((~v10 & 0x1FF) != 0 && (v10 - 28671) >= 0xFFFFA001 && (v10 & 0x7E00) == a2)
    {
      *(*this + 2 * v9 - 2) = v10 + 1;
      return this;
    }

    goto LABEL_31;
  }

  if (a2 <= 60 && a3 <= 60)
  {
    LOWORD(a2) = a3 | (a2 << 6) | 0x7000;
LABEL_31:

    return icu::Edits::append(this, a2);
  }

  v11 = this[3];
  if (this[2] - v11 <= 4)
  {
    this = icu::Edits::growArray(this);
    if (!this)
    {
      return this;
    }

    v11 = v5[3];
  }

  v12 = v11 + 1;
  if (v4 > 60)
  {
    if (v4 >> 15)
    {
      v13 = HIBYTE(v4) & 0x40 | 0x7F80;
      v14 = *v5;
      *(*v5 + 2 * v12) = (v4 >> 15) | 0x8000;
      LODWORD(v12) = v11 + 3;
      *(v14 + 2 * v11 + 4) = v4 | 0x8000;
    }

    else
    {
      *(*v5 + 2 * v12) = v4 | 0x8000;
      LODWORD(v12) = v11 + 2;
      LOWORD(v13) = 32576;
    }
  }

  else
  {
    LOWORD(v13) = (v4 << 6) | 0x7000;
  }

  if (v3 > 60)
  {
    v16 = v3 >> 15;
    if (v3 >> 15)
    {
      v17 = v3 | 0x8000;
      v3 = (v3 >> 30) | 0x3E;
      v18 = v16 | 0x8000;
      v15 = *v5;
      v19 = (*v5 + 2 * v12);
      *v19 = v18;
      LODWORD(v12) = v12 + 2;
      v19[1] = v17;
    }

    else
    {
      v15 = *v5;
      *(*v5 + 2 * v12) = v3 | 0x8000;
      LODWORD(v12) = v12 + 1;
      LOWORD(v3) = 61;
    }
  }

  else
  {
    v15 = *v5;
  }

  *(v15 + 2 * v11) = v3 | v13;
  v5[3] = v12;
  return this;
}

uint64_t icu::Edits::growArray(icu::Edits *this)
{
  v2 = this + 28;
  v3 = *(this + 2);
  if (*this == (this + 28))
  {
    v4 = 2000;
  }

  else
  {
    if (v3 == 0x7FFFFFFF)
    {
LABEL_8:
      result = 0;
      v6 = 8;
LABEL_9:
      *(this + 6) = v6;
      return result;
    }

    if (v3 <= 1073741822)
    {
      v4 = 2 * v3;
    }

    else
    {
      v4 = 0x7FFFFFFF;
    }
  }

  if (v4 - v3 <= 4)
  {
    goto LABEL_8;
  }

  result = malloc_type_malloc(2 * v4, 0x1000040BDFB0063uLL);
  if (!result)
  {
    v6 = 7;
    goto LABEL_9;
  }

  v7 = result;
  memcpy(result, *this, 2 * *(this + 3));
  if (*this != v2)
  {
    free(*this);
  }

  *this = v7;
  *(this + 2) = v4;
  return 1;
}

uint64_t icu::Edits::copyErrorTo(icu::Edits *this, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 1;
  }

  v2 = *(this + 6);
  if (v2 >= U_ILLEGAL_ARGUMENT_ERROR)
  {
    *a2 = v2;
    return 1;
  }

  return 0;
}

icu::Edits *icu::Edits::mergeAndAppend(icu::Edits *this, const icu::Edits *a2, const icu::Edits *a3, UErrorCode *a4)
{
  if (*a4 > 0)
  {
    return this;
  }

  v6 = *(this + 6);
  if (v6 >= U_ILLEGAL_ARGUMENT_ERROR)
  {
LABEL_3:
    *a4 = v6;
    return this;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = *a2;
  v28 = 0;
  v29 = v13;
  LODWORD(v13) = *(a2 + 3);
  v30 = 0;
  v31 = v13;
  v22 = *a3;
  v34 = 0;
  v35 = 0;
  *v32 = 0;
  v33 = 0;
  LODWORD(v13) = *(a3 + 3);
  v23 = 0;
  v24 = v13;
  v26 = 0;
  v27 = 0;
  *v25 = 0;
  v14 = 1;
  while (1)
  {
    while (v9 || !v14)
    {
LABEL_18:
      if (!v8)
      {
        goto LABEL_19;
      }

LABEL_25:
      if (!v9)
      {
        goto LABEL_52;
      }

      if (v32[7])
      {
        if (v25[7])
        {
          if (v8 == v9)
          {
            icu::Edits::addReplace(this, v7 + v11, v10 + v12);
            v8 = 0;
            v9 = 0;
LABEL_30:
            v11 = 0;
            v12 = 0;
          }

          else
          {
LABEL_35:
            v11 += v7;
            v12 += v10;
            v18 = v9 - v8;
            v19 = v8 < v9;
            if (v8 < v9)
            {
              v8 = 0;
            }

            else
            {
              v7 = 0;
              v8 -= v9;
            }

            if (v19)
            {
              v9 = v18;
            }

            else
            {
              v9 = 0;
            }

            if (v19)
            {
              v10 = 0;
            }
          }
        }

        else
        {
          if (v8 > v9)
          {
            goto LABEL_35;
          }

          icu::Edits::addReplace(this, v7 + v11, v8 + v12);
          v11 = 0;
          v12 = 0;
          v9 -= v8;
          v10 = v9;
          v8 = 0;
        }
      }

      else if (v25[7])
      {
        v17 = v8 - v9;
        if (v8 < v9)
        {
          goto LABEL_35;
        }

        icu::Edits::addReplace(this, v9 + v11, v10 + v12);
        v9 = 0;
        v11 = 0;
        v12 = 0;
        v7 = v17;
        v8 = v17;
      }

      else
      {
        if (v11 | v12)
        {
          icu::Edits::addReplace(this, v11, v12);
        }

        if (v7 >= v10)
        {
          v20 = v10;
        }

        else
        {
          v20 = v7;
        }

        icu::Edits::addUnchanged(this, v20);
        v11 = 0;
        v12 = 0;
        v7 -= v20;
        v9 = v10 - v20;
        v8 = v7;
        v10 = v9;
      }
    }

    if (v32[7])
    {
      v15 = v8 == 0;
    }

    else
    {
      v15 = 1;
    }

    v16 = v15;
    while (1)
    {
      if (!icu::Edits::Iterator::next(&v22, v25[4], a4))
      {
        v14 = 0;
        v9 = 0;
        goto LABEL_18;
      }

      v9 = v26;
      v10 = HIDWORD(v26);
      if (v26)
      {
        break;
      }

      v12 += HIDWORD(v26);
      if (v16)
      {
        icu::Edits::addReplace(this, v11, v12);
        v11 = 0;
        v12 = 0;
      }
    }

    v14 = 1;
    if (v8)
    {
      goto LABEL_25;
    }

LABEL_19:
    if (!icu::Edits::Iterator::next(&v29, v32[4], a4))
    {
      break;
    }

    v7 = v33;
    v8 = HIDWORD(v33);
    if (HIDWORD(v33))
    {
      goto LABEL_25;
    }

    v11 += v33;
    if (v9 != v26)
    {
      v8 = 0;
      if (v25[7])
      {
        continue;
      }
    }

    icu::Edits::addReplace(this, v11, v12);
    v8 = 0;
    goto LABEL_30;
  }

  if (v9)
  {
LABEL_52:
    if (*a4 >= 1)
    {
      return this;
    }

    v6 = *(this + 6);
    if (v6 <= U_ILLEGAL_ARGUMENT_ERROR)
    {
      v6 = U_ILLEGAL_ARGUMENT_ERROR;
    }

    goto LABEL_3;
  }

  if (v11 | v12)
  {
    icu::Edits::addReplace(this, v11, v12);
  }

  if (*a4 <= 0)
  {
    v6 = *(this + 6);
    if (v6 > U_ZERO_ERROR)
    {
      goto LABEL_3;
    }
  }

  return this;
}

uint64_t icu::Edits::Iterator::Iterator(uint64_t this, const unsigned __int16 *a2, int a3, char a4, char a5)
{
  *this = a2;
  *(this + 8) = 0;
  *(this + 12) = a3;
  *(this + 16) = 0;
  *(this + 20) = a4;
  *(this + 21) = a5;
  *(this + 30) = 0;
  *(this + 22) = 0;
  *(this + 36) = 0;
  return this;
}

{
  *this = a2;
  *(this + 8) = 0;
  *(this + 12) = a3;
  *(this + 16) = 0;
  *(this + 20) = a4;
  *(this + 21) = a5;
  *(this + 30) = 0;
  *(this + 22) = 0;
  *(this + 36) = 0;
  return this;
}

uint64_t icu::Edits::Iterator::readLength(icu::Edits::Iterator *this, uint64_t a2)
{
  if (a2 >= 61)
  {
    if (a2 == 61)
    {
      v2 = *this;
      v3 = *(this + 2);
      *(this + 2) = v3 + 1;
      return *(v2 + 2 * v3) & 0x7FFF;
    }

    else
    {
      v4 = *(this + 2);
      a2 = ((a2 & 1) << 30) | ((*(*this + 2 * v4) & 0x7FFF) << 15) | *(*this + 2 * v4 + 2) & 0x7FFF;
      *(this + 2) = v4 + 2;
    }
  }

  return a2;
}

uint64_t icu::Edits::Iterator::updateNextIndexes(uint64_t this)
{
  v1 = *(this + 28);
  *(this + 32) += *(this + 24);
  if (*(this + 23))
  {
    *(this + 36) += v1;
  }

  *(this + 40) += v1;
  return this;
}

uint64_t icu::Edits::Iterator::updatePreviousIndexes(uint64_t this)
{
  v1 = *(this + 28);
  *(this + 32) -= *(this + 24);
  if (*(this + 23))
  {
    *(this + 36) -= v1;
  }

  *(this + 40) -= v1;
  return this;
}

uint64_t icu::Edits::Iterator::noNext(icu::Edits::Iterator *this)
{
  *(this + 15) = 0;
  *(this + 22) = 0;
  return 0;
}

uint64_t icu::Edits::Iterator::next(icu::Edits::Iterator *this, int a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    v6 = this + 22;
    v5 = *(this + 22);
    if (v5 < 1)
    {
      if (v5 < 0 && *(this + 4) >= 1)
      {
        ++*(this + 2);
        v3 = 1;
        *(this + 22) = 1;
        return v3;
      }

      *v6 = 1;
    }

    else
    {
      v7 = *(this + 7);
      *(this + 8) += *(this + 6);
      if (*(this + 23))
      {
        *(this + 9) += v7;
      }

      *(this + 10) += v7;
    }

    v8 = *(this + 4);
    v9 = __OFSUB__(v8, 1);
    v10 = v8 - 1;
    if (v10 < 0 == v9)
    {
      if (v10)
      {
        *(this + 4) = v10;
        return 1;
      }

      *(this + 4) = 0;
    }

    v11 = *(this + 3);
    v12 = *(this + 2);
    if (v12 < v11)
    {
      v13 = *this;
      v14 = v12 + 1;
      *(this + 2) = v12 + 1;
      v15 = *(v13 + 2 * v12);
      if (v15 > 0xFFF)
      {
        goto LABEL_30;
      }

      *(this + 23) = 0;
      v16 = v15 + 1;
      if (v14 >= v11)
      {
        v20 = 0;
      }

      else
      {
        v15 = *(v13 + 2 * v14);
        if (v15 > 0xFFF)
        {
          v20 = 1;
        }

        else
        {
          v17 = 0;
          v18 = v13 + 2 * v14 + 2;
          while (1)
          {
            v16 += v15 + 1;
            if (!(2 - v11 + v12 + v17))
            {
              break;
            }

            v15 = *(v18 + 2 * v17++);
            if (v15 > 0xFFF)
            {
              v19 = v12 + v17 + 1;
              *(this + 2) = v19;
              v20 = v14 + v17 < v11;
              LODWORD(v14) = v19;
              goto LABEL_27;
            }
          }

          *(this + 2) = v12 + v17 + 2;
          v20 = v14 + v17 + 1 < v11;
          LODWORD(v14) = v11;
        }
      }

LABEL_27:
      *(this + 6) = v16;
      *(this + 7) = v16;
      if (!a2)
      {
        return 1;
      }

      *(this + 8) += v16;
      *(this + 10) += v16;
      if (v20)
      {
        LODWORD(v14) = v14 + 1;
        *(this + 2) = v14;
LABEL_30:
        *(this + 23) = 1;
        v21 = v15 >> 12;
        if (v15 >> 12 > 6)
        {
          *(this + 6) = icu::Edits::Iterator::readLength(this, (v15 >> 6) & 0x3F);
          Length = icu::Edits::Iterator::readLength(this, v15 & 0x3F);
          *(this + 7) = Length;
          if (!*(this + 21))
          {
            return 1;
          }

          LODWORD(v14) = *(this + 2);
          v11 = *(this + 3);
        }

        else
        {
          v22 = (v15 >> 9) & 7;
          v23 = (v15 & 0x1FF) + 1;
          if (!*(this + 21))
          {
            *(this + 6) = v21;
            *(this + 7) = v22;
            if ((v15 & 0x1FF) != 0)
            {
              *(this + 4) = v23;
            }

            return 1;
          }

          Length = v23 * v22;
          *(this + 6) = v23 * v21;
          *(this + 7) = v23 * v22;
        }

        if (v14 < v11)
        {
          while (1)
          {
            v26 = *(*this + 2 * v14);
            if (v26 < 0x1000)
            {
              break;
            }

            LODWORD(v14) = v14 + 1;
            *(this + 2) = v14;
            if (v26 >> 12 > 6)
            {
              *(this + 6) += icu::Edits::Iterator::readLength(this, (v26 >> 6) & 0x3F);
              Length = *(this + 7) + icu::Edits::Iterator::readLength(this, v26 & 0x3F);
              *(this + 7) = Length;
              LODWORD(v14) = *(this + 2);
              v11 = *(this + 3);
            }

            else
            {
              v27 = (v26 & 0x1FF) + 1;
              Length += ((v26 >> 9) & 7) * v27;
              *(this + 6) += v27 * (v26 >> 12);
              *(this + 7) = Length;
            }

            v3 = 1;
            if (v14 >= v11)
            {
              return v3;
            }
          }
        }

        return 1;
      }
    }

    v3 = 0;
    *(this + 15) = 0;
    *v6 = 0;
    return v3;
  }

  return 0;
}

uint64_t icu::Edits::Iterator::previous(icu::Edits::Iterator *this, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  v4 = this + 22;
  if (*(this + 22) < 0)
  {
LABEL_11:
    v6 = *(this + 4);
    if (v6 <= 0)
    {
      LODWORD(v7) = *(this + 2);
    }

    else
    {
      v7 = *(this + 2);
      if (v6 <= (*(*this + 2 * v7) & 0x1FFu))
      {
        *(this + 4) = v6 + 1;
        v16 = *(this + 7);
        *(this + 8) -= *(this + 6);
        if (*(this + 23))
        {
          *(this + 9) -= v16;
        }

        v15 = *(this + 10) - v16;
        goto LABEL_49;
      }

      *(this + 4) = 0;
    }

    if (v7 <= 0)
    {
      result = 0;
      *(v4 + 4) = 0;
      *v4 = 0;
      return result;
    }

    v8 = *this;
    v9 = (v7 - 1);
    *(this + 2) = v9;
    v10 = *(v8 + 2 * v9);
    if (v10 <= 0xFFF)
    {
      *(this + 23) = 0;
      v11 = v10 + 1;
      if (v7 != 1)
      {
        v12 = v8 - 2;
        do
        {
          v13 = v7 - 1;
          v14 = *(v12 + 2 * (v7 - 1));
          if (v14 > 0xFFF)
          {
            break;
          }

          *(this + 2) = v7 - 2;
          v11 += v14 + 1;
          LODWORD(v7) = v7 - 1;
        }

        while (v13 > 1);
      }

      *(this + 6) = v11;
      *(this + 7) = v11;
      *(this + 8) -= v11;
      v15 = *(this + 10) - v11;
LABEL_49:
      *(this + 10) = v15;
      return 1;
    }

    *(this + 23) = 1;
    v17 = v10 >> 12;
    if (v10 >> 12 > 6)
    {
      if ((v10 & 0x8000) != 0)
      {
        v21 = (v8 + 2 * v9 - 2);
        do
        {
          v23 = *v21--;
          v22 = v23;
          LODWORD(v7) = v7 - 1;
        }

        while ((v23 & 0x80000000) != 0);
        v24 = v7 - 1;
        *(this + 2) = v7;
        *(this + 6) = icu::Edits::Iterator::readLength(this, (v22 >> 6) & 0x3F);
        Length = icu::Edits::Iterator::readLength(this, v22 & 0x3F);
        *(this + 7) = Length;
        *(this + 2) = v24;
      }

      else
      {
        *(this + 6) = icu::Edits::Iterator::readLength(this, (v10 >> 6) & 0x3F);
        Length = icu::Edits::Iterator::readLength(this, v10 & 0x3F);
        *(this + 7) = Length;
      }

      if (!*(this + 21))
      {
LABEL_46:
        *(this + 8) -= *(this + 6);
        if (*(this + 23))
        {
          *(this + 9) -= Length;
        }

        v15 = *(this + 10) - Length;
        goto LABEL_49;
      }

      LODWORD(v9) = *(this + 2);
    }

    else
    {
      v18 = (v10 >> 9) & 7;
      if (!*(this + 21))
      {
        *(this + 6) = v17;
        *(this + 7) = v18;
        if ((v10 & 0x1FF) != 0)
        {
          *(this + 4) = 1;
        }

        *(this + 8) -= v17;
        *(this + 36) = vsub_s32(*(this + 36), vdup_n_s32(v18));
        return 1;
      }

      v19 = (v10 & 0x1FF) + 1;
      Length = v19 * v18;
      *(this + 6) = v19 * v17;
      *(this + 7) = v19 * v18;
    }

    if (v9 >= 1)
    {
      do
      {
        v25 = *(*this + 2 * v9 - 2);
        if (v25 < 0x1000)
        {
          break;
        }

        v26 = v9;
        LODWORD(v9) = v9 - 1;
        *(this + 2) = v9;
        if (v25 >> 12 > 6)
        {
          if ((v25 & 0x8000) == 0)
          {
            *(this + 2) = v26;
            *(this + 6) += icu::Edits::Iterator::readLength(this, (v25 >> 6) & 0x3F);
            Length = *(this + 7) + icu::Edits::Iterator::readLength(this, v25 & 0x3F);
            *(this + 7) = Length;
            *(this + 2) = v9;
          }
        }

        else
        {
          v27 = (v25 & 0x1FF) + 1;
          Length += ((v25 >> 9) & 7) * v27;
          *(this + 6) += v27 * (v25 >> 12);
          *(this + 7) = Length;
        }
      }

      while ((v9 + 1) > 1);
    }

    goto LABEL_46;
  }

  if (!*(this + 22))
  {
LABEL_10:
    *v4 = -1;
    goto LABEL_11;
  }

  if (*(this + 4) < 1)
  {
    v5 = *(this + 7);
    *(this + 8) += *(this + 6);
    if (*(this + 23))
    {
      *(this + 9) += v5;
    }

    *(this + 10) += v5;
    goto LABEL_10;
  }

  --*(this + 2);
  *(this + 22) = -1;
  return 1;
}

uint64_t icu::Edits::Iterator::findIndex(int32x2_t *this, signed int a2, int a3, UErrorCode *a4)
{
  result = 0xFFFFFFFFLL;
  if ((a2 & 0x80000000) == 0 && *a4 <= 0)
  {
    v8 = (this + 28);
    if (a3)
    {
      v9 = 6;
    }

    else
    {
      v9 = 7;
    }

    if (a3)
    {
      v8 = this + 3;
      v10 = 4;
    }

    else
    {
      v10 = 5;
    }

    v11 = this[v10].i32[0];
    if (v11 > a2)
    {
      if (a2 < v11 >> 1)
      {
        this[2].i8[6] = 0;
        this[2].i32[0] = 0;
        this[1].i32[0] = 0;
        this[3] = 0;
        this[4] = 0;
        this[5].i32[0] = 0;
        goto LABEL_22;
      }

      while (1)
      {
        icu::Edits::Iterator::previous(this, a4);
        v12 = this[v10].i32[0];
        if (v12 <= a2)
        {
          return 0;
        }

        v13 = this[2].i32[0];
        if (v13 >= 1)
        {
          v14 = this->i32[v9];
          v15 = (*(*this + 2 * this[1].i32[0]) & 0x1FF) - v13 + 1;
          if ((v12 - v15 * v14) <= a2)
          {
            result = 0;
            v24 = (v12 + ~a2) / v14 + 1;
            v25 = vmul_s32(vdup_n_s32(v24), this[3]);
            v26 = this[5].i32[0] - v25.i32[1];
            this[4] = vsub_s32(this[4], v25);
            this[5].i32[0] = v26;
            v23 = v24 + v13;
            goto LABEL_26;
          }

          v16 = vmul_s32(this[3], vdup_n_s32(v15));
          this[4] = vsub_s32(this[4], v16);
          this[5].i32[0] -= v16.i32[1];
          this[2].i32[0] = 0;
        }
      }
    }

    if (v8->i32[0] + v11 > a2)
    {
      return 0;
    }

    while (1)
    {
      do
      {
LABEL_22:
        if (!icu::Edits::Iterator::next(this, 0, a4))
        {
          return 1;
        }

        v17 = this[v10].i32[0];
        v18 = this->i32[v9];
        if (v18 + v17 > a2)
        {
          return 0;
        }

        v19 = this[2].i32[0];
      }

      while (v19 < 2);
      if (v17 + v19 * v18 > a2)
      {
        break;
      }

      this[3] = vmul_s32(this[3], vdup_n_s32(v19));
      this[2].i32[0] = 0;
    }

    result = 0;
    v20 = (a2 - v17) / v18;
    v21 = vmul_s32(this[3], vdup_n_s32(v20));
    v22 = this[5].i32[0] + v21.i32[1];
    this[4] = vadd_s32(this[4], v21);
    this[5].i32[0] = v22;
    v23 = v19 - v20;
LABEL_26:
    this[2].i32[0] = v23;
  }

  return result;
}

uint64_t icu::Edits::Iterator::destinationIndexFromSourceIndex(int32x2_t *this, signed int a2, UErrorCode *a3)
{
  Index = icu::Edits::Iterator::findIndex(this, a2, 1, a3);
  if (Index < 0)
  {
    return 0;
  }

  if (Index)
  {
    return this[5].u32[0];
  }

  v6 = a2 - this[4].i32[0];
  if (!v6)
  {
    return this[5].u32[0];
  }

  if (this[2].i8[7])
  {
    v6 = this[3].i32[1];
  }

  return (v6 + this[5].i32[0]);
}

uint64_t icu::Edits::Iterator::sourceIndexFromDestinationIndex(int32x2_t *this, signed int a2, UErrorCode *a3)
{
  Index = icu::Edits::Iterator::findIndex(this, a2, 0, a3);
  if (Index < 0)
  {
    return 0;
  }

  if (Index)
  {
    return this[4].u32[0];
  }

  v6 = a2 - this[5].i32[0];
  if (!v6)
  {
    return this[4].u32[0];
  }

  if (this[2].i8[7])
  {
    v6 = this[3].i32[0];
  }

  return (v6 + this[4].i32[0]);
}

icu::UnicodeString *icu::Edits::Iterator::toString(icu::Edits::Iterator *this, icu::UnicodeString *a2)
{
  icu::UnicodeString::doAppend(a2, L"{ src[", 0, 0xFFFFFFFFLL);
  icu::ICU_Utility::appendNumber(a2, *(this + 8), 0xAu, 1);
  icu::UnicodeString::doAppend(a2, ".", 0, 0xFFFFFFFFLL);
  icu::ICU_Utility::appendNumber(a2, (*(this + 6) + *(this + 8)), 0xAu, 1);
  if (*(this + 23))
  {
    icu::UnicodeString::doAppend(a2, "]", 0, 0xFFFFFFFFLL);
  }

  else
  {
    icu::UnicodeString::doAppend(a2, &unk_19549D8A8, 0, 0xFFFFFFFFLL);
  }

  icu::ICU_Utility::appendNumber(a2, *(this + 10), 0xAu, 1);
  icu::UnicodeString::doAppend(a2, ".", 0, 0xFFFFFFFFLL);
  icu::ICU_Utility::appendNumber(a2, (*(this + 7) + *(this + 10)), 0xAu, 1);
  if (*(this + 23))
  {
    icu::UnicodeString::doAppend(a2, L"], repl[", 0, 0xFFFFFFFFLL);
    icu::ICU_Utility::appendNumber(a2, *(this + 9), 0xAu, 1);
    icu::UnicodeString::doAppend(a2, ".", 0, 0xFFFFFFFFLL);
    icu::ICU_Utility::appendNumber(a2, (*(this + 7) + *(this + 9)), 0xAu, 1);
    icu::UnicodeString::doAppend(a2, "]", 0, 0xFFFFFFFFLL);
  }

  else
  {
    icu::UnicodeString::doAppend(a2, "]", 0, 0xFFFFFFFFLL);
  }

  return a2;
}

uint64_t sub_1951D8F3C(int *a1)
{
  if (*a1 > 0)
  {
    return 0;
  }

  if (atomic_load_explicit(&dword_1ED442100, memory_order_acquire) == 2 || !icu::umtx_initImplPreInit(&dword_1ED442100))
  {
    if (dword_1ED442104 >= 1)
    {
      *a1 = dword_1ED442104;
    }
  }

  else
  {
    sub_1951D8FD4(a1);
    dword_1ED442104 = *a1;
    icu::umtx_initImplPostInit(&dword_1ED442100);
  }

  return qword_1ED4420F8;
}

int *sub_1951D8FD4(int *result)
{
  if (*result <= 0)
  {
    operator new();
  }

  return result;
}

BOOL sub_1951D9098(uint8x8_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int16 *a5)
{
  a1.i32[0] = *(a5 + 2);
  v5 = vmovl_u8(a1).u64[0];
  v6 = vuzp1_s8(v5, v5).u32[0];
  if (a5[2])
  {
    v7 = 0;
  }

  else
  {
    v7 = v6 == 1785687365;
  }

  return v7 && *a5 > 0x13u && *(a5 + 12) == 1;
}

unsigned int *sub_1951D90E8(void *a1, UErrorCode *a2)
{
  result = udata_openChoice(0, "icu", "uemoji", sub_1951D9098, a1, a2);
  *a1 = result;
  if (*a2 <= 0)
  {
    result = udata_getMemory(result);
    v5 = *result;
    if (v5 > 39)
    {
      v6 = result;
      result = ucptrie_openFromBinary(0, 2, result + v5, result[1] - v5, 0, a2);
      a1[1] = result;
      if (*a2 <= 0)
      {
        v7 = 0;
        v8 = v6[4];
        do
        {
          v9 = v6[v7 + 5];
          if (v9 <= v8)
          {
            v10 = 0;
          }

          else
          {
            v10 = v6 + v8;
          }

          a1[v7++ + 2] = v10;
          v8 = v9;
        }

        while (v7 != 6);
      }
    }

    else
    {
      *a2 = U_INVALID_FORMAT_ERROR;
    }
  }

  return result;
}

uint64_t sub_1951D91D8(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  result = ucptrie_getRange(*(a1 + 8), 0, 0, 0, 0, 0, &v7);
  if ((result & 0x80000000) == 0)
  {
    v5 = result;
    v6 = 0;
    do
    {
      (*(a2 + 8))(*a2, v6);
      v6 = (v5 + 1);
      result = ucptrie_getRange(*(a1 + 8), v6, 0, 0, 0, 0, &v7);
      v5 = result;
    }

    while ((result & 0x80000000) == 0);
  }

  return result;
}

BOOL sub_1951D9274(unsigned int a1, int a2)
{
  v6 = 0;
  v4 = sub_1951D8F3C(&v6);
  result = 0;
  if (v6 <= 0)
  {
    return sub_1951D92D8(v4, a1, a2) != 0;
  }

  return result;
}

uint64_t sub_1951D92D8(uint64_t a1, unsigned int a2, int a3)
{
  if (a3 - 72) < 0xFFFFFFF1 || ((0x3E60uLL >> (a3 - 57)))
  {
    return 0;
  }

  v3 = byte_195430A70[a3 - 57];
  v4 = *(a1 + 8);
  v5 = *(v4 + 8);
  if (HIWORD(a2))
  {
    if (HIWORD(a2) > 0x10u)
    {
      v6 = *(v4 + 20) - 1;
    }

    else if (*(v4 + 24) <= a2)
    {
      v6 = *(v4 + 20) - 2;
    }

    else
    {
      v6 = ucptrie_internalSmallIndex(v4, a2);
    }
  }

  else
  {
    v6 = (a2 & 0x3F) + *(*v4 + 2 * (a2 >> 6));
  }

  return (*(v5 + v6) >> v3) & 1;
}

BOOL sub_1951D938C(_WORD *a1, int a2, unsigned int a3)
{
  v8 = 0;
  v6 = sub_1951D8F3C(&v8);
  result = 0;
  if (v8 <= 0)
  {
    return sub_1951D9400(v6, a1, a2, a3) != 0;
  }

  return result;
}

uint64_t sub_1951D9400(uint64_t a1, _WORD *a2, int a3, unsigned int a4)
{
  if (!a2 && a3)
  {
    return 0;
  }

  if (a3 > 0)
  {
    if (a4 - 72 < 0xFFFFFFF9)
    {
      return 0;
    }

LABEL_9:
    if (a4 == 71)
    {
      v7 = 70;
    }

    else
    {
      v7 = a4;
    }

    if (a4 == 71)
    {
      v8 = 65;
    }

    else
    {
      v8 = a4;
    }

    if (v8 > v7)
    {
      return 0;
    }

    v9 = a1 + 16;
    v10 = v8 - 65;
    v11 = v8 - 1;
    while (1)
    {
      v12 = *(v9 + 8 * v10);
      if (v12)
      {
        v16[0] = 0;
        v16[1] = v12;
        v16[2] = v12;
        v16[3] = 0xFFFFFFFFLL;
        v15 = a2;
        v13 = icu::UCharsTrie::next(v16, &v15, a3);
        icu::UCharsTrie::~UCharsTrie(v16);
        if (v13 > 1)
        {
          break;
        }
      }

      ++v10;
      if (v7 <= ++v11)
      {
        return 0;
      }
    }

    return 1;
  }

  if (!a3)
  {
    return 0;
  }

  v6 = 0;
  if (a4 - 72 >= 0xFFFFFFF9 && *a2)
  {
    goto LABEL_9;
  }

  return v6;
}

void sub_1951D952C(uint64_t a1, uint64_t a2, int a3, UErrorCode *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = (a3 - 72) >= 0xFFFFFFF9 && *a4 <= U_ZERO_ERROR;
  if (v4)
  {
    v5 = a3 == 71 ? 70 : a3;
    v6 = a3 == 71 ? 65 : a3;
    if (v6 <= v5)
    {
      v9 = a1 + 16;
      do
      {
        v10 = *(v9 + 8 * (v6 - 65));
        if (v10)
        {
          v21 = 0;
          v19 = 0u;
          v20 = 0u;
          v17 = 0u;
          v18 = 0u;
          memset(v16, 0, sizeof(v16));
          v15 = v10;
          icu::UCharsTrie::Iterator::Iterator(v16, &v15, 0, a4);
          while (icu::UCharsTrie::Iterator::next(v16, a4))
          {
            v11 = v18;
            if ((v17 & 2) != 0)
            {
              v11 = &v17 + 2;
            }

            if ((v17 & 0x11) != 0)
            {
              v12 = 0;
            }

            else
            {
              v12 = v11;
            }

            if ((v17 & 0x8000u) == 0)
            {
              v13 = v17 >> 5;
            }

            else
            {
              v13 = DWORD1(v17);
            }

            (*(a2 + 24))(*a2, v12, v13);
          }

          icu::UCharsTrie::Iterator::~Iterator(v16);
        }

        v4 = v5 <= v6++;
      }

      while (!v4);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1951D9688()
{
  v0 = qword_1ED4420F8;
  if (qword_1ED4420F8)
  {
    udata_close(*qword_1ED4420F8);
    ucptrie_close(*(v0 + 8));
    MEMORY[0x19A8B2600](v0, 0x70C40A437A2B0);
  }

  qword_1ED4420F8 = 0;
  atomic_store(0, &dword_1ED442100);
  return 1;
}

uint64_t icu::ErrorCode::reset(icu::ErrorCode *this)
{
  v1 = *(this + 2);
  *(this + 2) = 0;
  return v1;
}

int *icu::ErrorCode::assertSuccess(int *this)
{
  if (this[2] >= 1)
  {
    return (*(*this + 16))();
  }

  return this;
}

void sub_1951D975C(void **a1)
{
  icu::UVector::~UVector(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_1951D9794(uint64_t a1)
{
  *a1 = &unk_1F0931D00;
  v2 = (a1 + 8);
  sub_1951DB0C8((a1 + 16));
  sub_1951DB0C8(v2);
  return a1;
}

void sub_1951D97E8(uint64_t a1)
{
  *a1 = &unk_1F0931D00;
  v1 = (a1 + 8);
  sub_1951DB0C8((a1 + 16));
  sub_1951DB0C8(v1);

  JUMPOUT(0x19A8B2600);
}

icu::BreakIterator *sub_1951D985C(icu::BreakIterator *a1, uint64_t a2)
{
  v4 = icu::BreakIterator::BreakIterator(a1, a2);
  *v4 = &unk_1F0931D20;
  v5 = *(a2 + 488);
  atomic_fetch_add((v5 + 24), 1u);
  *(v4 + 61) = v5;
  *(a1 + 62) = (*(**(a2 + 496) + 32))(*(a2 + 496));
  *(a1 + 63) = 0;
  return a1;
}

void sub_1951D98E4(icu::BreakIterator *a1, const char *a2, uint64_t a3, uint64_t a4, int *a5)
{
  v10 = *MEMORY[0x1E69E9840];
  icu::BreakIterator::getLocale(a2, 1, a5, v9);
  icu::BreakIterator::getLocale(a2, 0, a5, v8);
  icu::BreakIterator::BreakIterator(a1, v9, v8);
  icu::Locale::~Locale(v8);
  icu::Locale::~Locale(v9);
  *a1 = &unk_1F0931D20;
  operator new();
}

void sub_1951D9A10(icu::BreakIterator *this)
{
  *this = &unk_1F0931D20;
  v2 = *(this + 61);
  add = atomic_fetch_add(v2 + 6, 0xFFFFFFFF);
  if (v2)
  {
    v4 = add <= 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 61) = 0;
  v5 = *(this + 63);
  if (v5)
  {
    utext_close(v5);
  }

  v6 = *(this + 62);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  icu::BreakIterator::~BreakIterator(this);
}

void sub_1951D9AE0(icu::BreakIterator *a1)
{
  sub_1951D9A10(a1);

  JUMPOUT(0x19A8B2600);
}

UText *sub_1951D9B18(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 496);
  v5 = *(a1 + 504);
  *(a1 + 504) = 0;
  v6 = (*(*v4 + 48))(v4, v5, a2);
  result = *(a1 + 504);
  if (result)
  {
    result = utext_close(result);
  }

  *(a1 + 504) = v6;
  return result;
}

uint64_t sub_1951D9B80(uint64_t a1, int a2)
{
  utext_setNativeIndex(*(a1 + 504), a2);
  if (utext_previous32(*(a1 + 504)) != 32)
  {
    utext_next32(*(a1 + 504));
  }

  v22 = 0;
  v3 = *(*(a1 + 488) + 16);
  v20 = 0;
  v21 = *(v3 + 8);
  NativeIndex = -1;
  LODWORD(v22) = *(v3 + 24);
  v5 = -1;
  while (1)
  {
    v6 = utext_previous32(*(a1 + 504));
    if (v6 == -1)
    {
      break;
    }

    v7 = icu::UCharsTrie::nextForCodePoint(&v20, v6);
    v8 = v7;
    if (v7 < 2)
    {
LABEL_17:
      if ((v8 & 1) == 0)
      {
        break;
      }
    }

    else
    {
      NativeIndex = utext_getNativeIndex(*(a1 + 504));
      v9 = (*(&v21 + 1) + 2);
      v10 = **(&v21 + 1);
      if ((v10 & 0x8000) != 0)
      {
        v5 = v10 & 0x7FFF;
        if (v5 < 0x4000)
        {
          goto LABEL_17;
        }

        if (v5 == 0x7FFF)
        {
          v12 = *(*(&v21 + 1) + 2) << 16;
          v9 = (*(&v21 + 1) + 4);
        }

        else
        {
          v12 = (v5 << 16) - 0x40000000;
        }

        v5 = v12 | *v9;
        if ((v8 & 1) == 0)
        {
          break;
        }
      }

      else
      {
        v11 = v10 >> 6;
        if (v11 > 0x100)
        {
          if (v11 > 0x1FE)
          {
            v5 = *(*(&v21 + 1) + 4) | (*(*(&v21 + 1) + 2) << 16);
            goto LABEL_17;
          }

          v5 = (*v9 | ((v11 & 0x1FF) << 16)) - 16842752;
          if ((v8 & 1) == 0)
          {
            break;
          }
        }

        else
        {
          v5 = v11 - 1;
          if ((v8 & 1) == 0)
          {
            break;
          }
        }
      }
    }
  }

  icu::UCharsTrie::~UCharsTrie(&v20);
  if (NativeIndex < 0)
  {
    return 0;
  }

  if (NativeIndex)
  {
    v13 = utext_char32At(*(a1 + 504), NativeIndex - 1);
    if (v13 != -1)
    {
      if (u_isUAlphabetic(v13))
      {
        return 0;
      }
    }
  }

  if (v5 == 2)
  {
    return 1;
  }

  if (v5 != 1 || !*(*(a1 + 488) + 8))
  {
    return 0;
  }

  utext_setNativeIndex(*(a1 + 504), NativeIndex);
  v22 = 0;
  v14 = *(*(a1 + 488) + 8);
  v20 = 0;
  v21 = *(v14 + 8);
  LODWORD(v22) = *(v14 + 24);
  v15 = utext_next32(*(a1 + 504));
  if (v15 == -1)
  {
    v18 = 1;
  }

  else
  {
    for (i = v15; i != -1; i = utext_next32(*(a1 + 504)))
    {
      v17 = icu::UCharsTrie::nextForCodePoint(&v20, i);
      if ((v17 & 1) == 0)
      {
        break;
      }
    }

    v18 = v17 != 0;
  }

  icu::UCharsTrie::~UCharsTrie(&v20);
  return v18;
}

uint64_t sub_1951D9DB0(uint64_t a1, uint64_t a2)
{
  if (a2 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = a2;
  if (*(*(a1 + 488) + 16))
  {
    v9 = 0;
    sub_1951D9B18(a1, &v9);
    if (v9 > 0)
    {
      return 0xFFFFFFFFLL;
    }

    v5 = utext_nativeLength(*(a1 + 504));
    if (v5 != v2)
    {
      v6 = v5;
      do
      {
        if (!sub_1951D9B80(a1, v2))
        {
          break;
        }

        v7 = (*(**(a1 + 496) + 104))(*(a1 + 496));
        v2 = v7;
      }

      while (v7 != -1 && v6 != v7);
    }
  }

  return v2;
}

uint64_t sub_1951D9E80(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if ((a2 + 1) >= 2 && *(*(a1 + 488) + 16))
  {
    v5 = 0;
    sub_1951D9B18(a1, &v5);
    if (v5 <= 0)
    {
      do
      {
        if (!sub_1951D9B80(a1, v2))
        {
          break;
        }

        v2 = (*(**(a1 + 496) + 96))(*(a1 + 496));
      }

      while ((v2 - 1) < 0xFFFFFFFE);
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v2;
}

uint64_t sub_1951D9F34(uint64_t a1)
{
  v2 = (*(**(a1 + 496) + 104))(*(a1 + 496));

  return sub_1951D9DB0(a1, v2);
}

uint64_t sub_1951D9FBC(uint64_t a1)
{
  v2 = (*(**(a1 + 496) + 128))(*(a1 + 496));

  return sub_1951D9E80(a1, v2);
}

uint64_t sub_1951DA01C(uint64_t a1)
{
  v2 = (*(**(a1 + 496) + 96))(*(a1 + 496));

  return sub_1951D9E80(a1, v2);
}

uint64_t sub_1951DA07C(uint64_t a1, int a2)
{
  if ((*(**(a1 + 496) + 136))(*(a1 + 496)))
  {
    if (*(*(a1 + 488) + 16))
    {
      v6 = 0;
      sub_1951D9B18(a1, &v6);
      return (sub_1951D9B80(a1, a2) ^ 1);
    }

    else
    {
      return 1;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1951DA114(uint64_t a1)
{
  v2 = (*(**(a1 + 496) + 144))(*(a1 + 496));

  return sub_1951D9DB0(a1, v2);
}

uint64_t sub_1951DA174(uint64_t a1)
{
  v2 = (*(**(a1 + 496) + 120))(*(a1 + 496));

  return sub_1951D9DB0(a1, v2);
}

void sub_1951DA200(void **a1)
{
  *a1 = &unk_1F0931DE8;
  icu::UVector::~UVector(a1 + 1);

  icu::UObject::~UObject(a1);
}

void sub_1951DA254(void **a1)
{
  *a1 = &unk_1F0931DE8;
  icu::UVector::~UVector(a1 + 1);
  icu::UObject::~UObject(a1);

  JUMPOUT(0x19A8B2600);
}

void *sub_1951DA2DC(void *a1, icu::Locale *a2, int *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F0931DE8;
  icu::UVector::UVector((a1 + 1), uprv_deleteUObject, uhash_compareUnicodeString, 1, a3);
  a1[1] = &unk_1F0931E68;
  if (*a3 <= 0)
  {
    v20 = 0;
    BaseName = icu::Locale::getBaseName(a2);
    v7 = ures_open("icudt76l-brkitr", BaseName, &v20);
    v8 = v7;
    if (v20 > 0 || v20 == -127)
    {
      *a3 = v20;
    }

    else
    {
      v9 = ures_getByKeyWithFallback(v7, "exceptions", 0, &v20);
      v10 = v9;
      if (v20 > 0 || v20 == -127)
      {
        *a3 = v20;
      }

      else
      {
        v11 = ures_getByKeyWithFallback(v9, "SentenceBreak", 0, &v20);
        if (v20 > 0 || v20 == -127)
        {
          *a3 = v20;
        }

        else
        {
          v12 = 0;
          v20 = *a3;
          do
          {
            NextResource = ures_getNextResource(v11, v12, &v20);
            v12 = NextResource;
            v14 = v20;
            if (!NextResource || v20 > 0)
            {
              break;
            }

            v27 = 0;
            v26 = 0u;
            v25 = 0u;
            v24 = 0u;
            v23 = &unk_1F0935D00;
            LOWORD(v24) = 2;
            v22 = 0;
            String = ures_getString(NextResource, &v22, a3);
            if (*a3 <= 0)
            {
              v21 = String;
              icu::UnicodeString::setTo(&v23, 1, &v21, v22);
            }

            else
            {
              icu::UnicodeString::setToBogus(&v23);
            }

            (*(*a1 + 24))(a1, &v23, a3);
            icu::UnicodeString::~UnicodeString(&v23);
            v14 = v20;
          }

          while (v20 < 1);
          if (v14 >= 1 && v14 != 8 && *a3 <= 0)
          {
            *a3 = v14;
          }

          if (v12)
          {
            ures_close(v12);
          }
        }

        if (v11)
        {
          ures_close(v11);
        }
      }

      if (v10)
      {
        ures_close(v10);
      }
    }

    if (v8)
    {
      ures_close(v8);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
  return a1;
}

uint64_t sub_1951DA5CC(uint64_t a1, uint64_t a2, int *a3)
{
  if (*a3 <= 0)
  {
    operator new();
  }

  return 0;
}

uint64_t sub_1951DA6B4(uint64_t a1, uint64_t a2, int *a3)
{
  if (*a3 <= 0)
  {
    return icu::UVector::removeElement((a1 + 8), a2);
  }

  else
  {
    return 0;
  }
}

uint64_t icu::FilteredBreakIteratorBuilder::createInstance(icu::FilteredBreakIteratorBuilder *this, const icu::Locale *a2, UErrorCode *a3)
{
  if (*a2 <= 0)
  {
    operator new();
  }

  return 0;
}

uint64_t icu::FilteredBreakIteratorBuilder::createEmptyInstance(icu::FilteredBreakIteratorBuilder *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

uint64_t sub_1951DB050(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (*(a1 + 8) < 0)
  {
    v3 = *(a1 + 12);
  }

  else
  {
    v3 = v2 >> 5;
  }

  v4 = *(a2 + 8);
  if (v4)
  {
    return (v2 & 1) == 0;
  }

  if ((v4 & 0x8000u) == 0)
  {
    v5 = v4 >> 5;
  }

  else
  {
    v5 = *(a2 + 12);
  }

  if ((v4 & 2) != 0)
  {
    v6 = a2 + 10;
  }

  else
  {
    v6 = *(a2 + 24);
  }

  return icu::UnicodeString::doCompare(a1, 0, v3, v6, v5 & (v5 >> 31), v5 & ~(v5 >> 31));
}

void ***sub_1951DB0C8(void ***a1)
{
  v2 = *a1;
  if (v2)
  {
    icu::UCharsTrie::~UCharsTrie(v2);
    MEMORY[0x19A8B2600]();
  }

  return a1;
}

uint64_t *sub_1951DB10C(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      v5 = (v2 + (v4 << 6) - 64);
      v6 = -64 * v4;
      do
      {
        icu::UnicodeString::~UnicodeString(v5);
        v5 = (v7 - 64);
        v6 += 64;
      }

      while (v6);
    }

    MEMORY[0x19A8B25E0](v3, 0x1093C808E78F3FDLL);
  }

  return a1;
}

void icu::FilteredNormalizer2::~FilteredNormalizer2(icu::FilteredNormalizer2 *this)
{
  icu::Normalizer2::~Normalizer2(this);

  JUMPOUT(0x19A8B2600);
}

icu::UnicodeString *icu::FilteredNormalizer2::normalize(icu::FilteredNormalizer2 *this, const icu::UnicodeString *a2, icu::UnicodeString *a3, UErrorCode *a4)
{
  if (*a4 > 0)
  {
    goto LABEL_9;
  }

  if (*(a2 + 4))
  {
    *a4 = U_ILLEGAL_ARGUMENT_ERROR;
LABEL_9:
    icu::UnicodeString::setToBogus(a3);
    return a3;
  }

  if (a3 == a2)
  {
    *a4 = U_ILLEGAL_ARGUMENT_ERROR;
  }

  else
  {
    if (*(a3 + 4))
    {
      v5 = 2;
    }

    else
    {
      v5 = *(a3 + 4) & 0x1E;
    }

    *(a3 + 4) = v5;
    icu::FilteredNormalizer2::normalize(this, a2, a3, 2, a4);
  }

  return a3;
}

uint64_t icu::FilteredNormalizer2::normalize(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int *a5)
{
  v38 = *MEMORY[0x1E69E9840];
  v34 = 0u;
  v35 = 0u;
  v37 = 0;
  v36 = 0u;
  v33 = &unk_1F0935D00;
  LOWORD(v34) = 2;
  v6 = *(a2 + 8);
  v7 = (v6 & 0x8000u) != 0;
  v8 = v6 >> 5;
  v9 = *(a2 + 12);
  if ((v6 & 0x8000u) != 0)
  {
    v8 = *(a2 + 12);
  }

  if (v8 >= 1)
  {
    v14 = 0;
    v15 = a2 + 10;
    do
    {
      v16 = *(a2 + 24);
      if ((v6 & 2) != 0)
      {
        v16 = v15;
      }

      if ((v6 & 0x11) != 0)
      {
        v16 = 0;
      }

      v17 = v6 >> 5;
      if (v7)
      {
        v17 = v9;
      }

      if (v17 >= v14)
      {
        v18 = v14;
      }

      else
      {
        v18 = v17;
      }

      if (v14 >= 0)
      {
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }

      v20 = icu::UnicodeSet::span(*(a1 + 16), (v16 + 2 * v19), (v17 - v19), a4) + v19;
      if (a4)
      {
        if (v20 != v14)
        {
          v21 = *(a1 + 8);
          icu::UnicodeString::tempSubString(a2, v14, v20 - v14, v32);
          v22 = (*(*v21 + 24))(v21, v32, &v33, a5);
          v23 = *(v22 + 8);
          v24 = v23;
          v25 = v23 >> 5;
          v26 = v24 >= 0 ? v25 : *(v22 + 12);
          icu::UnicodeString::doAppend(a3, v22, 0, v26);
          icu::UnicodeString::~UnicodeString(v32);
          if (*a5 > 0)
          {
            break;
          }
        }

        a4 = 0;
      }

      else
      {
        if (v20 != v14)
        {
          icu::UnicodeString::doAppend(a3, a2, v14, (v20 - v14));
        }

        a4 = 2;
      }

      v27 = *(a2 + 8);
      v6 = *(a2 + 8);
      v28 = v27 < 0;
      v7 = v27 < 0;
      v29 = v27 >> 5;
      v9 = *(a2 + 12);
      if (v28)
      {
        v29 = *(a2 + 12);
      }

      v14 = v20;
    }

    while (v20 < v29);
  }

  icu::UnicodeString::~UnicodeString(&v33);
  v30 = *MEMORY[0x1E69E9840];
  return a3;
}

uint64_t icu::FilteredNormalizer2::normalizeUTF8(uint64_t result, int a2, char *a3, size_t a4, uint64_t a5, _DWORD *a6, int *a7)
{
  if (*a7 <= 0)
  {
    v14 = result;
    if ((a2 & 0x2000) == 0 && a6)
    {
      icu::Edits::reset(a6);
    }

    return icu::FilteredNormalizer2::normalizeUTF8(v14, a2 | 0x2000u, a3, a4, a5, a6, 2, a7);
  }

  return result;
}

uint64_t icu::FilteredNormalizer2::normalizeUTF8(uint64_t result, uint64_t a2, char *a3, size_t a4, uint64_t a5, _DWORD *a6, int a7, int *a8)
{
  if (a4 >= 1)
  {
    v13 = a4;
    v16 = result;
    do
    {
      result = icu::UnicodeSet::spanUTF8(*(v16 + 16), a3, v13, a7);
      v17 = result;
      if (a7)
      {
        if (result)
        {
          v8 = v8 & 0xFFFFFFFF00000000 | result;
          result = (*(**(v16 + 8) + 32))(*(v16 + 8), a2, a3, v8, a5, a6, a8);
          if (*a8 > 0)
          {
            return result;
          }
        }

        a7 = 0;
      }

      else
      {
        if (result)
        {
          if (a6)
          {
            result = icu::Edits::addUnchanged(a6, result);
          }

          if ((a2 & 0x4000) == 0)
          {
            result = (*(*a5 + 16))(a5, a3, v17);
          }
        }

        a7 = 2;
      }

      a3 += v17;
      v18 = __OFSUB__(v13, v17);
      v13 = (v13 - v17);
    }

    while (!(((v13 & 0x80000000) != 0) ^ v18 | (v13 == 0)));
  }

  return result;
}

icu::UnicodeString *icu::FilteredNormalizer2::normalizeSecondAndAppend(icu::FilteredNormalizer2 *this, icu::UnicodeString *a2, const icu::UnicodeString *a3, int a4, UErrorCode *a5)
{
  v41 = *MEMORY[0x1E69E9840];
  if (*a5 > 0)
  {
    goto LABEL_10;
  }

  v7 = *(a2 + 4);
  if (v7 & 1) != 0 || (v9 = *(a3 + 4), (v9) || a2 == a3)
  {
    *a5 = U_ILLEGAL_ARGUMENT_ERROR;
LABEL_10:
    v14 = *MEMORY[0x1E69E9840];
    return a2;
  }

  if (v7 > 0x1F)
  {
    v12 = *(this + 2);
    if ((v9 & 0x10) != 0)
    {
      v13 = 0;
    }

    else if ((v9 & 2) != 0)
    {
      v13 = a3 + 10;
    }

    else
    {
      v13 = *(a3 + 3);
    }

    v19 = v9;
    v20 = v9 >> 5;
    if (v19 < 0)
    {
      v20 = *(a3 + 3);
    }

    v21 = icu::UnicodeSet::span(v12, &v13[2 * (v20 & (v20 >> 31))], v20 - (v20 & (v20 >> 31)), 2) + (v20 & (v20 >> 31));
    if (v21)
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      icu::UnicodeString::tempSubString(a3, 0, v21, &v37);
      v22 = *(a2 + 4);
      if ((v22 & 0x11) != 0)
      {
        v23 = 0;
      }

      else if ((v22 & 2) != 0)
      {
        v23 = (a2 + 10);
      }

      else
      {
        v23 = *(a2 + 3);
      }

      v24 = v22;
      v25 = v22 >> 5;
      if (v24 >= 0)
      {
        v26 = v25;
      }

      else
      {
        v26 = *(a2 + 3);
      }

      v27 = icu::UnicodeSet::spanBack(*(this + 2), v23, v26, 2);
      if (v27)
      {
        v28 = v27;
        memset(v36, 0, sizeof(v36));
        icu::UnicodeString::UnicodeString(v36, a2, v27, 0x7FFFFFFFLL);
        v29 = **(this + 1);
        if (a4)
        {
          (*(v29 + 40))();
        }

        else
        {
          (*(v29 + 48))();
        }

        if ((SWORD4(v36[0]) & 0x8000u) == 0)
        {
          v31 = WORD4(v36[0]) >> 5;
        }

        else
        {
          v31 = HIDWORD(v36[0]);
        }

        icu::UnicodeString::doReplace(a2, v28, 0x7FFFFFFFLL, v36, 0, v31);
        icu::UnicodeString::~UnicodeString(v36);
      }

      else
      {
        v30 = **(this + 1);
        if (a4)
        {
          (*(v30 + 40))();
        }

        else
        {
          (*(v30 + 48))();
        }
      }

      icu::UnicodeString::~UnicodeString(&v37);
    }

    v32 = *(a3 + 4);
    v33 = v32;
    v34 = v32 >> 5;
    if (v33 < 0)
    {
      v34 = *(a3 + 3);
    }

    if (v21 < v34)
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      icu::UnicodeString::tempSubString(a3, v21, 0x7FFFFFFF, &v37);
      if (a4)
      {
        icu::FilteredNormalizer2::normalize(this, &v37, a2, 0, a5);
      }

      else
      {
        if ((SWORD4(v37) & 0x8000u) == 0)
        {
          v35 = WORD4(v37) >> 5;
        }

        else
        {
          v35 = HIDWORD(v37);
        }

        icu::UnicodeString::doAppend(a2, &v37, 0, v35);
      }

      icu::UnicodeString::~UnicodeString(&v37);
    }

    goto LABEL_10;
  }

  if (a4)
  {
    v16 = *(*this + 24);
    v17 = *MEMORY[0x1E69E9840];

    return v16();
  }

  else
  {
    v18 = *MEMORY[0x1E69E9840];

    return icu::UnicodeString::operator=(a2, a3);
  }
}

uint64_t icu::FilteredNormalizer2::getDecomposition(icu::UnicodeSet **this, uint64_t a2, icu::UnicodeString *a3)
{
  result = icu::UnicodeSet::contains(this[2], a2);
  if (result)
  {
    return (*(*this[1] + 56))(this[1], a2, a3) != 0;
  }

  return result;
}

uint64_t icu::FilteredNormalizer2::getRawDecomposition(icu::UnicodeSet **this, uint64_t a2, icu::UnicodeString *a3)
{
  result = icu::UnicodeSet::contains(this[2], a2);
  if (result)
  {
    return (*(*this[1] + 64))(this[1], a2, a3) != 0;
  }

  return result;
}

uint64_t icu::FilteredNormalizer2::composePair(icu::UnicodeSet **this, int a2, int a3)
{
  if (!icu::UnicodeSet::contains(this[2], a2) || !icu::UnicodeSet::contains(this[2], a3))
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *(*this[1] + 72);

  return v5();
}

uint64_t icu::FilteredNormalizer2::getCombiningClass(icu::UnicodeSet **this, int a2)
{
  result = icu::UnicodeSet::contains(this[2], a2);
  if (result)
  {
    v4 = *(*this[1] + 80);

    return v4();
  }

  return result;
}

uint64_t icu::FilteredNormalizer2::isNormalized(icu::UnicodeSet **this, const icu::UnicodeString *a2, UErrorCode *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  if (*a3 <= 0)
  {
    v6 = *(a2 + 4);
    if (v6)
    {
      result = 0;
      *a3 = U_ILLEGAL_ARGUMENT_ERROR;
    }

    else
    {
      v7 = (v6 & 0x8000u) != 0;
      v8 = v6 >> 5;
      v9 = *(a2 + 3);
      if ((v6 & 0x8000u) != 0)
      {
        v8 = *(a2 + 3);
      }

      if (v8 >= 1)
      {
        v11 = 0;
        v12 = 2;
        do
        {
          v13 = *(a2 + 3);
          if ((v6 & 2) != 0)
          {
            v13 = a2 + 10;
          }

          if ((v6 & 0x11) != 0)
          {
            v13 = 0;
          }

          v14 = v6 >> 5;
          if (v7)
          {
            v14 = v9;
          }

          if (v14 >= v11)
          {
            v15 = v11;
          }

          else
          {
            v15 = v14;
          }

          if (v11 >= 0)
          {
            v16 = v15;
          }

          else
          {
            v16 = 0;
          }

          v17 = icu::UnicodeSet::span(this[2], &v13[2 * v16], (v14 - v16), v12) + v16;
          if (v12)
          {
            v18 = this[1];
            icu::UnicodeString::tempSubString(a2, v11, v17 - v11, v25);
            if (!(*(*v18 + 88))(v18, v25, a3))
            {
              icu::UnicodeString::~UnicodeString(v19, v25);
              goto LABEL_2;
            }

            v20 = *a3;
            icu::UnicodeString::~UnicodeString(v19, v25);
            v12 = 0;
            if (v20 >= 1)
            {
              goto LABEL_2;
            }
          }

          else
          {
            v12 = 2;
          }

          v21 = *(a2 + 4);
          v6 = *(a2 + 4);
          v22 = v21 < 0;
          v7 = v21 < 0;
          v23 = v21 >> 5;
          v9 = *(a2 + 3);
          if (v22)
          {
            v23 = *(a2 + 3);
          }

          v11 = v17;
        }

        while (v17 < v23);
      }

      result = 1;
    }
  }

  else
  {
LABEL_2:
    result = 0;
  }

  v24 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t icu::FilteredNormalizer2::isNormalizedUTF8(uint64_t a1, char *a2, size_t a3, int *a4)
{
  if (*a4 > 0)
  {
    return 0;
  }

  v6 = a3;
  if (a3 >= 1)
  {
    v10 = 2;
    do
    {
      v11 = icu::UnicodeSet::spanUTF8(*(a1 + 16), a2, v6, v10);
      if (v10)
      {
        v4 = v4 & 0xFFFFFFFF00000000 | v11;
        if ((*(**(a1 + 8) + 96))(*(a1 + 8), a2, v4, a4))
        {
          v12 = *a4 <= 0;
        }

        else
        {
          v12 = 0;
        }

        if (!v12)
        {
          return 0;
        }

        v10 = 0;
      }

      else
      {
        v10 = 2;
      }

      a2 += v11;
      v13 = __OFSUB__(v6, v11);
      v6 = v6 - v11;
    }

    while (!(((v6 & 0x80000000) != 0) ^ v13 | (v6 == 0)));
  }

  return 1;
}

uint64_t icu::FilteredNormalizer2::quickCheck(icu::UnicodeSet **this, const icu::UnicodeString *a2, UErrorCode *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  if (*a3 > 0)
  {
    goto LABEL_32;
  }

  v5 = *(a2 + 4);
  if (v5)
  {
    *a3 = U_ILLEGAL_ARGUMENT_ERROR;
LABEL_32:
    v19 = 2;
    goto LABEL_33;
  }

  v6 = (v5 & 0x8000u) != 0;
  v7 = v5 >> 5;
  v8 = *(a2 + 3);
  if ((v5 & 0x8000u) != 0)
  {
    v7 = *(a2 + 3);
  }

  if (v7 < 1)
  {
    v19 = 1;
  }

  else
  {
    v10 = 0;
    v11 = 2;
    v12 = 1;
    do
    {
      v13 = *(a2 + 3);
      if ((v5 & 2) != 0)
      {
        v13 = a2 + 10;
      }

      if ((v5 & 0x11) != 0)
      {
        v13 = 0;
      }

      v14 = v5 >> 5;
      if (v6)
      {
        v14 = v8;
      }

      if (v14 >= v10)
      {
        v15 = v10;
      }

      else
      {
        v15 = v14;
      }

      if (v10 >= 0)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      v17 = icu::UnicodeSet::span(this[2], &v13[2 * v16], (v14 - v16), v11) + v16;
      if (v11)
      {
        v18 = this[1];
        icu::UnicodeString::tempSubString(a2, v10, v17 - v10, v26);
        v19 = (*(*v18 + 104))(v18, v26, a3);
        icu::UnicodeString::~UnicodeString(v20, v26);
        if (v19 == 2)
        {
          v12 = 2;
        }

        else
        {
          v12 = v12;
        }

        if (*a3 > 0 || !v19)
        {
          break;
        }

        v11 = 0;
      }

      else
      {
        v11 = 2;
      }

      v21 = *(a2 + 4);
      v5 = *(a2 + 4);
      v22 = v21 < 0;
      v6 = v21 < 0;
      v23 = v21 >> 5;
      v8 = *(a2 + 3);
      if (v22)
      {
        v23 = *(a2 + 3);
      }

      v10 = v17;
      v19 = v12;
    }

    while (v17 < v23);
  }

LABEL_33:
  v24 = *MEMORY[0x1E69E9840];
  return v19;
}

uint64_t icu::FilteredNormalizer2::spanQuickCheckYes(icu::UnicodeSet **this, const icu::UnicodeString *a2, UErrorCode *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  if (*a3 <= 0)
  {
    v6 = *(a2 + 4);
    if (v6)
    {
      v3 = 0;
      *a3 = U_ILLEGAL_ARGUMENT_ERROR;
    }

    else
    {
      v7 = (v6 & 0x8000u) != 0;
      v8 = v6 >> 5;
      v9 = *(a2 + 3);
      if ((v6 & 0x8000u) != 0)
      {
        v8 = *(a2 + 3);
      }

      if (v8 >= 1)
      {
        v11 = 0;
        v12 = 2;
        do
        {
          v13 = *(a2 + 3);
          if ((v6 & 2) != 0)
          {
            v13 = a2 + 10;
          }

          if ((v6 & 0x11) != 0)
          {
            v13 = 0;
          }

          v14 = v6 >> 5;
          if (v7)
          {
            v14 = v9;
          }

          if (v14 >= v11)
          {
            v15 = v11;
          }

          else
          {
            v15 = v14;
          }

          if (v11 >= 0)
          {
            v16 = v15;
          }

          else
          {
            v16 = 0;
          }

          v17 = icu::UnicodeSet::span(this[2], &v13[2 * v16], (v14 - v16), v12) + v16;
          if (v12)
          {
            v18 = this[1];
            icu::UnicodeString::tempSubString(a2, v11, v17 - v11, v24);
            v3 = (*(*v18 + 112))(v18, v24, a3) + v11;
            icu::UnicodeString::~UnicodeString(v24);
            if (*a3 > 0 || v3 < v17)
            {
              goto LABEL_32;
            }

            v12 = 0;
          }

          else
          {
            v12 = 2;
          }

          v19 = *(a2 + 4);
          v6 = *(a2 + 4);
          v20 = v19 < 0;
          v7 = v19 < 0;
          v21 = v19 >> 5;
          v9 = *(a2 + 3);
          if (v20)
          {
            v21 = *(a2 + 3);
          }

          v11 = v17;
        }

        while (v17 < v21);
      }

      if ((v6 & 0x8000) != 0)
      {
        v3 = v9;
      }

      else
      {
        v3 = v6 >> 5;
      }
    }
  }

  else
  {
    v3 = 0;
  }

LABEL_32:
  v22 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t unorm2_openFiltered(uint64_t a1, uint64_t a2, int *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  if (a2)
  {
    operator new();
  }

  result = 0;
  *a3 = 1;
  return result;
}

void u_getDataVersion(uint8_t *a1, UErrorCode *a2)
{
  if (a1 && *a2 <= 0)
  {
    v4 = ures_openDirect(0, "icuver", a2);
    v5 = v4;
    if (*a2 <= 0)
    {
      ures_getVersionByKey(v4, "DataVersion", a1, a2);
    }

    ures_close(v5);
  }
}

void sub_1951DC518(uint64_t a1)
{
  *a1 = &unk_1F0931FC0;
  udata_close(*(a1 + 80));
  ucptrie_close(*(a1 + 88));

  icu::Normalizer2Impl::~Normalizer2Impl(a1);
}

void sub_1951DC57C(uint64_t a1)
{
  sub_1951DC518(a1);

  JUMPOUT(0x19A8B2600);
}

unsigned int *sub_1951DC61C(unsigned int *result, char *a2, const char *a3, UErrorCode *a4)
{
  if (*a4 <= 0)
  {
    v5 = result;
    result = udata_openChoice(a2, "nrm", a3, sub_1951DC5B4, result, a4);
    *(v5 + 80) = result;
    if (*a4 <= 0)
    {
      result = udata_getMemory(result);
      v6 = *result;
      if (v6 > 75)
      {
        v7 = result;
        v8 = result[1];
        result = ucptrie_openFromBinary(0, 0, result + v6, v8 - v6, 0, a4);
        *(v5 + 88) = result;
        if (*a4 <= 0)
        {
          v9 = v7 + *(v7 + 8);

          return icu::Normalizer2Impl::init(v5, v7, result, v7 + v8, v9);
        }
      }

      else
      {
        *a4 = U_INVALID_FORMAT_ERROR;
      }
    }
  }

  return result;
}

uint64_t sub_1951DC718(uint64_t a1, uint64_t a2, int *a3)
{
  if (*a3 <= 0)
  {
    operator new();
  }

  return 0;
}

void sub_1951DC7C8(const char *a1, int *a2)
{
  v4 = "nfkc";
  if (!strcmp(a1, "nfkc"))
  {
    v5 = &qword_1ED442108;
  }

  else
  {
    v4 = "nfkc_cf";
    if (!strcmp(a1, "nfkc_cf"))
    {
      v5 = &qword_1EAEC9698;
    }

    else
    {
      v4 = "nfkc_scf";
      if (strcmp(a1, "nfkc_scf"))
      {
        abort();
      }

      v5 = &qword_1EAEC96A0;
    }
  }

  *v5 = sub_1951DC718(0, v4, a2);

  sub_1952376A4(0xFu, sub_1951DCDAC);
}

uint64_t icu::Normalizer2::getNFKCInstance(icu::Normalizer2 *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    sub_1951D10A4(&unk_1ED442118, sub_1951DC7C8, "nfkc", this);
    v2 = qword_1ED442108;
  }

  else
  {
    v2 = 0;
  }

  if (v2)
  {
    return v2 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t icu::Normalizer2::getNFKDInstance(icu::Normalizer2 *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    sub_1951D10A4(&unk_1ED442118, sub_1951DC7C8, "nfkc", this);
    v2 = qword_1ED442108;
  }

  else
  {
    v2 = 0;
  }

  if (v2)
  {
    return v2 + 32;
  }

  else
  {
    return 0;
  }
}

uint64_t icu::Normalizer2::getNFKCCasefoldInstance(icu::Normalizer2 *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    sub_1951D10A4(&unk_1EAEC96A8, sub_1951DC7C8, "nfkc_cf", this);
    v2 = qword_1EAEC9698;
  }

  else
  {
    v2 = 0;
  }

  if (v2)
  {
    return v2 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t icu::Normalizer2::getNFKCSimpleCasefoldInstance(icu::Normalizer2 *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    sub_1951D10A4(dword_1EAEC96B0, sub_1951DC7C8, "nfkc_scf", this);
    v2 = qword_1EAEC96A0;
  }

  else
  {
    v2 = 0;
  }

  if (v2)
  {
    return v2 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t icu::Normalizer2::getInstance(uint64_t a1, char *__s1, int a3, int *a4)
{
  if (*a4 > 0)
  {
    return 0;
  }

  v19[9] = v4;
  v19[10] = v5;
  if (!__s1 || !*__s1)
  {
    result = 0;
    *a4 = 1;
    return result;
  }

  if (!a1)
  {
    if (!strcmp(__s1, "nfc"))
    {
      v11 = sub_1951F9BB4(a4);
    }

    else if (!strcmp(__s1, "nfkc"))
    {
      sub_1951D10A4(&unk_1ED442118, sub_1951DC7C8, "nfkc", a4);
      v11 = qword_1ED442108;
    }

    else if (!strcmp(__s1, "nfkc_cf"))
    {
      sub_1951D10A4(&unk_1EAEC96A8, sub_1951DC7C8, "nfkc_cf", a4);
      v11 = qword_1EAEC9698;
    }

    else
    {
      if (strcmp(__s1, "nfkc_scf"))
      {
        goto LABEL_6;
      }

      sub_1951D10A4(dword_1EAEC96B0, sub_1951DC7C8, "nfkc_scf", a4);
      v11 = qword_1EAEC96A0;
    }

    if (v11)
    {
      goto LABEL_30;
    }

    if (*a4 > 0)
    {
      return 0;
    }
  }

LABEL_6:
  umtx_lock(0);
  if (qword_1ED442110)
  {
    v11 = uhash_get(qword_1ED442110, __s1);
    umtx_unlock(0);
    if (v11)
    {
      goto LABEL_30;
    }
  }

  else
  {
    umtx_unlock(0);
  }

  sub_1952376A4(0xFu, sub_1951DCDAC);
  v12 = sub_1951DC718(a1, __s1, a4);
  v19[0] = v12;
  if (*a4 >= 1)
  {
LABEL_17:
    sub_1951DD2E8(v19);
    return 0;
  }

  v13 = v12;
  umtx_lock(0);
  v14 = qword_1ED442110;
  if (!qword_1ED442110)
  {
    v18 = uhash_open(uhash_hashChars, uhash_compareChars, 0, a4);
    qword_1ED442110 = v18;
    if (*a4 > 0)
    {
LABEL_45:
      umtx_unlock(0);
      goto LABEL_17;
    }

    uhash_setKeyDeleter(v18, MEMORY[0x1E69E9B38]);
    uhash_setValueDeleter(qword_1ED442110, sub_1951DCE64);
    v14 = qword_1ED442110;
  }

  v11 = uhash_get(v14, __s1);
  if (v11)
  {
    goto LABEL_22;
  }

  v15 = (strlen(__s1) + 1);
  v16 = malloc_type_malloc(v15, 0x100004077774924uLL);
  if (!v16)
  {
    *a4 = 7;
    goto LABEL_45;
  }

  v17 = v16;
  memcpy(v16, __s1, v15);
  v19[0] = 0;
  uhash_put(qword_1ED442110, v17, v13, a4);
  v11 = v13;
LABEL_22:
  umtx_unlock(0);
  sub_1951DD2E8(v19);
  if (!v11)
  {
    return 0;
  }

LABEL_30:
  if (*a4 > 0)
  {
    return 0;
  }

  result = 0;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      return v11 + 48;
    }

    else if (a3 == 3)
    {
      return v11 + 64;
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      return v11 + 32;
    }
  }

  else
  {
    return v11 + 8;
  }

  return result;
}

uint64_t sub_1951DCDAC()
{
  if (qword_1ED442108)
  {
    v0 = sub_1951F99F8();
    MEMORY[0x19A8B2600](v0, 0x10E0C40F96D9B5DLL);
  }

  qword_1ED442108 = 0;
  atomic_store(0, &unk_1ED442118);
  if (qword_1EAEC9698)
  {
    v1 = sub_1951F99F8();
    MEMORY[0x19A8B2600](v1, 0x10E0C40F96D9B5DLL);
  }

  qword_1EAEC9698 = 0;
  atomic_store(0, &unk_1EAEC96A8);
  if (qword_1EAEC96A0)
  {
    v2 = sub_1951F99F8();
    MEMORY[0x19A8B2600](v2, 0x10E0C40F96D9B5DLL);
  }

  qword_1EAEC96A0 = 0;
  atomic_store(0, dword_1EAEC96B0);
  uhash_close(qword_1ED442110);
  qword_1ED442110 = 0;
  return 1;
}

uint64_t sub_1951DCE64(uint64_t result)
{
  if (result)
  {
    sub_1951F99F8();

    JUMPOUT(0x19A8B2600);
  }

  return result;
}

uint64_t icu::Normalizer2Factory::getInstance(int a1, icu::Normalizer2Factory *this)
{
  if (*this > 0)
  {
    return 0;
  }

  if (a1 <= 3)
  {
    if (a1 != 2)
    {
      if (a1 != 3)
      {
LABEL_24:

        return icu::Normalizer2Factory::getNoopInstance(this, this);
      }

      sub_1951D10A4(&unk_1ED442118, sub_1951DC7C8, "nfkc", this);
      v3 = qword_1ED442108;
      v4 = qword_1ED442108 + 32;
LABEL_18:
      if (v3)
      {
        return v4;
      }

      else
      {
        return 0;
      }
    }

    return icu::Normalizer2::getNFDInstance(this, this);
  }

  else
  {
    if (a1 != 4)
    {
      if (a1 != 5)
      {
        if (a1 == 6)
        {

          return icu::Normalizer2Factory::getFCDInstance(this, this);
        }

        goto LABEL_24;
      }

      sub_1951D10A4(&unk_1ED442118, sub_1951DC7C8, "nfkc", this);
      v3 = qword_1ED442108;
      v4 = qword_1ED442108 + 8;
      goto LABEL_18;
    }

    return icu::Normalizer2::getNFCInstance(this, this);
  }
}

uint64_t icu::Normalizer2Factory::getNFKCImpl(icu::Normalizer2Factory *this, UErrorCode *a2)
{
  if (*this > 0)
  {
    return 0;
  }

  sub_1951D10A4(&unk_1ED442118, sub_1951DC7C8, "nfkc", this);
  if (qword_1ED442108)
  {
    return *qword_1ED442108;
  }

  else
  {
    return 0;
  }
}

uint64_t icu::Normalizer2Factory::getNFKC_CFImpl(icu::Normalizer2Factory *this, UErrorCode *a2)
{
  if (*this > 0)
  {
    return 0;
  }

  sub_1951D10A4(&unk_1EAEC96A8, sub_1951DC7C8, "nfkc_cf", this);
  if (qword_1EAEC9698)
  {
    return *qword_1EAEC9698;
  }

  else
  {
    return 0;
  }
}

uint64_t unorm2_getNFKCInstance(int *a1)
{
  if (*a1 <= 0)
  {
    sub_1951D10A4(&unk_1ED442118, sub_1951DC7C8, "nfkc", a1);
    v1 = qword_1ED442108;
  }

  else
  {
    v1 = 0;
  }

  if (v1)
  {
    return v1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t unorm2_getNFKDInstance(int *a1)
{
  if (*a1 <= 0)
  {
    sub_1951D10A4(&unk_1ED442118, sub_1951DC7C8, "nfkc", a1);
    v1 = qword_1ED442108;
  }

  else
  {
    v1 = 0;
  }

  if (v1)
  {
    return v1 + 32;
  }

  else
  {
    return 0;
  }
}

uint64_t unorm2_getNFKCCasefoldInstance(int *a1)
{
  if (*a1 <= 0)
  {
    sub_1951D10A4(&unk_1EAEC96A8, sub_1951DC7C8, "nfkc_cf", a1);
    v1 = qword_1EAEC9698;
  }

  else
  {
    v1 = 0;
  }

  if (v1)
  {
    return v1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t unorm2_getNFKCSimpleCasefoldInstance(int *a1)
{
  if (*a1 <= 0)
  {
    sub_1951D10A4(dword_1EAEC96B0, sub_1951DC7C8, "nfkc_scf", a1);
    v1 = qword_1EAEC96A0;
  }

  else
  {
    v1 = 0;
  }

  if (v1)
  {
    return v1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1951DD258(uint64_t a1, int a2)
{
  if ((a2 - 6) < 0xFFFFFFFC)
  {
    return 1;
  }

  v8 = v2;
  v9 = v3;
  v7 = 0;
  Instance = icu::Normalizer2Factory::getInstance(a2, &v7);
  if (v7 <= 0)
  {
    return (*(*Instance + 168))(Instance, a1);
  }

  else
  {
    return 2;
  }
}

void *sub_1951DD2E8(void *a1)
{
  if (*a1)
  {
    v2 = sub_1951F99F8();
    MEMORY[0x19A8B2600](v2, 0x10E0C40F96D9B5DLL);
  }

  return a1;
}

void *icu::LocaleBuilder::LocaleBuilder(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F0932000;
  *(this + 22) = 0;
  this[4] = 0;
  this[5] = 0;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F0932000;
  *(this + 22) = 0;
  this[4] = 0;
  this[5] = 0;
  return this;
}

void icu::LocaleBuilder::~LocaleBuilder(icu::LocaleBuilder *this)
{
  *this = &unk_1F0932000;
  v2 = *(this + 4);
  if (v2)
  {
    if (*(v2 + 12))
    {
      free(*v2);
    }

    MEMORY[0x19A8B2600](v2, 0x1010C40AA5E6C2FLL);
  }

  v3 = *(this + 5);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  icu::UObject::~UObject(this);
}

{
  icu::LocaleBuilder::~LocaleBuilder(this);

  JUMPOUT(0x19A8B2600);
}

void icu::LocaleBuilder::setLocale(icu::LocaleBuilder *this, const icu::Locale *a2)
{
  icu::LocaleBuilder::clear(this);
  icu::StringPiece::StringPiece(&v5, a2 + 8);
  icu::LocaleBuilder::setLanguage(this, v5, v6);
  icu::StringPiece::StringPiece(&v5, a2 + 20);
  icu::LocaleBuilder::setScript(this, v5, v6);
  icu::StringPiece::StringPiece(&v5, a2 + 26);
  icu::LocaleBuilder::setRegion(this, v5, v6);
  if (*(a2 + 216))
  {
    v4 = "";
  }

  else
  {
    v4 = (*(a2 + 26) + *(a2 + 8));
  }

  icu::StringPiece::StringPiece(&v5, v4);
  icu::LocaleBuilder::setVariant(this, v5, v6);
  icu::Locale::clone(a2);
}

icu::LocaleBuilder *icu::LocaleBuilder::clear(icu::LocaleBuilder *this)
{
  *(this + 2) = 0;
  *(this + 12) = 0;
  *(this + 21) = 0;
  *(this + 26) = 0;
  v2 = *(this + 4);
  if (v2)
  {
    if (*(v2 + 12))
    {
      free(*v2);
    }

    MEMORY[0x19A8B2600](v2, 0x1010C40AA5E6C2FLL);
  }

  *(this + 4) = 0;
  v3 = *(this + 5);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *(this + 5) = 0;
  return this;
}

uint64_t icu::LocaleBuilder::setLanguage(uint64_t a1, void *a2, signed int a3)
{
  if (*(a1 + 8) <= 0)
  {
    v6 = (a1 + 12);
    if (a3)
    {
      if (sub_19526A4A8(a2, a3))
      {
        memcpy((a1 + 12), a2, a3);
        v6[a3] = 0;
      }

      else
      {
        *(a1 + 8) = 1;
      }
    }

    else
    {
      *v6 = 0;
    }
  }

  return a1;
}

uint64_t icu::LocaleBuilder::setScript(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 8) <= 0)
  {
    v6 = (a1 + 21);
    if (a3)
    {
      if (sub_19526A534(a2, a3))
      {
        memcpy((a1 + 21), a2, a3);
        v6[a3] = 0;
      }

      else
      {
        *(a1 + 8) = 1;
      }
    }

    else
    {
      *v6 = 0;
    }
  }

  return a1;
}

uint64_t icu::LocaleBuilder::setRegion(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 8) <= 0)
  {
    v6 = (a1 + 26);
    if (a3)
    {
      if (sub_19526A5B0(a2, a3))
      {
        memcpy((a1 + 26), a2, a3);
        v6[a3] = 0;
      }

      else
      {
        *(a1 + 8) = 1;
      }
    }

    else
    {
      *v6 = 0;
    }
  }

  return a1;
}

uint64_t icu::LocaleBuilder::setVariant(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a1 + 8) <= 0)
  {
    if (a3)
    {
      operator new();
    }

    v5 = *(a1 + 32);
    if (v5)
    {
      if (*(v5 + 12))
      {
        free(*v5);
      }

      MEMORY[0x19A8B2600](v5, 0x1010C40AA5E6C2FLL);
    }

    *(a1 + 32) = 0;
  }

  return a1;
}

UErrorCode *icu::LocaleBuilder::setLanguageTag(UErrorCode *a1, const char *a2, int a3)
{
  v7 = *MEMORY[0x1E69E9840];
  memset(v6, 0, sizeof(v6));
  icu::Locale::forLanguageTag(a2, a3, a1 + 2, v6);
  if (*(a1 + 2) <= 0)
  {
    icu::LocaleBuilder::setLocale(a1, v6);
  }

  icu::Locale::~Locale(v6);
  v4 = *MEMORY[0x1E69E9840];
  return a1;
}

uint64_t icu::LocaleBuilder::setExtension(uint64_t a1, int a2, const char *a3, int a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v25 = a2;
  v5 = (a1 + 8);
  if (*(a1 + 8) > 0)
  {
    goto LABEL_8;
  }

  isASCIILetter = uprv_isASCIILetter(a2);
  if ((a2 - 48) >= 0xA && !isASCIILetter)
  {
    *v5 = U_ILLEGAL_ARGUMENT_ERROR;
    goto LABEL_8;
  }

  memset(&__s[1], 0, 48);
  v29 = 0;
  __s[0] = &__s[1] + 5;
  LODWORD(__s[1]) = 40;
  v10 = icu::CharString::append(__s, a3, a4, v5);
  if (*v5 <= 0)
  {
    v13 = v29;
    if (v29 >= 1)
    {
      v14 = __s[0];
      do
      {
        v15 = *v14;
        if (v15 == 95)
        {
          v10 = 45;
        }

        else
        {
          v10 = uprv_asciitolower(v15);
        }

        *v14++ = v10;
        --v13;
      }

      while (v13);
      v13 = v29;
    }

    if (v13)
    {
      v10 = sub_1951DDC78(a2, __s[0], v13);
      if ((v10 & 1) == 0)
      {
        *v5 = U_ILLEGAL_ARGUMENT_ERROR;
        goto LABEL_6;
      }
    }

    if (!*(a1 + 40))
    {
      Root = icu::Locale::getRoot(v10);
      icu::Locale::clone(Root);
    }

    v17 = uprv_asciitolower(a2);
    v18 = *(a1 + 40);
    if (v17 != 117)
    {
      icu::StringPiece::StringPiece(&v26, __s[0]);
      icu::Locale::setKeywordValue(v18, &v25, 1, v26, v27, v5);
      goto LABEL_6;
    }

    if (*v5 > 0)
    {
      goto LABEL_6;
    }

    sub_1951DE32C(*(a1 + 40), "attribute", "", v5);
    UnicodeKeywords = icu::Locale::createUnicodeKeywords(v18, v5);
    v20 = UnicodeKeywords;
    v21 = *v5;
    if (*v5 <= 0 && UnicodeKeywords)
    {
      v22 = (*(*UnicodeKeywords + 40))(UnicodeKeywords, 0, v5);
      if (v22)
      {
        v23 = v22;
        do
        {
          icu::StringPiece::StringPiece(&v26, v23);
          icu::Locale::setUnicodeKeywordValue(v18, v26, v27, 0, 0, v5);
          v23 = (*(*v20 + 40))(v20, 0, v5);
        }

        while (v23);
      }
    }

    else if (!UnicodeKeywords)
    {
      goto LABEL_32;
    }

    (*(*v20 + 8))(v20);
    v21 = *v5;
LABEL_32:
    if (v21 <= U_ZERO_ERROR && a4 != 0)
    {
      sub_1951DDD30(*(a1 + 40), __s, v5);
    }
  }

LABEL_6:
  if (BYTE4(__s[1]))
  {
    free(__s[0]);
  }

LABEL_8:
  v11 = *MEMORY[0x1E69E9840];
  return a1;
}

uint64_t sub_1951DDC78(unsigned __int8 a1, char *a2, int a3)
{
  v5 = uprv_asciitolower(a1);
  if (v5 == 116)
  {

    return sub_19526A9F8(a2, a3);
  }

  else if (v5 == 120)
  {

    return sub_19526A7F4(a2, a3);
  }

  else if (v5 == 117)
  {

    return sub_19526AC38(a2, a3);
  }

  else
  {

    return sub_19526A7D0(a2, a3);
  }
}

void sub_1951DDD30(uint64_t a1, uint64_t a2, UErrorCode *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*a3 <= 0)
  {
    v12 = 0;
    memset(&v11[1], 0, 48);
    icu::StringPiece::StringPiece(&v9, "und-u-");
    v11[0] = &v11[1] + 5;
    LODWORD(v11[1]) = 40;
    WORD2(v11[1]) = 0;
    LODWORD(v12) = 0;
    icu::CharString::append(v11, v9, v10, a3);
    icu::CharString::append(v11, *a2, *(a2 + 56), a3);
    icu::StringPiece::StringPiece(&v7, v11[0]);
    icu::Locale::forLanguageTag(v7, v8, a3, &v9);
    sub_1951DE808(&v9, 0, a1, 0, a3);
    icu::Locale::~Locale(&v9);
    if (BYTE4(v11[1]))
    {
      free(v11[0]);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t icu::LocaleBuilder::setUnicodeLocaleKeyword(uint64_t a1, char *a2, int a3, char *a4, int a5)
{
  v6 = (a1 + 8);
  if (*(a1 + 8) <= 0)
  {
    if (sub_19526A898(a2, a3) && (!a5 || (sub_19526A90C(a4, a5) & 1) != 0))
    {
      v11 = *(a1 + 40);
      if (!v11)
      {
        Root = icu::Locale::getRoot(0);
        icu::Locale::clone(Root);
      }

      icu::Locale::setUnicodeKeywordValue(v11, a2, a3, a4, a5, v6);
    }

    else
    {
      *v6 = U_ILLEGAL_ARGUMENT_ERROR;
    }
  }

  return a1;
}

uint64_t icu::LocaleBuilder::addUnicodeLocaleAttribute(uint64_t a1, const char *a2, int a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v35 = 0;
  memset(&v34[1], 0, 48);
  v34[0] = &v34[1] + 5;
  LODWORD(v34[1]) = 40;
  icu::CharString::append(v34, a2, a3, (a1 + 8));
  if (*(a1 + 8) > 0)
  {
    goto LABEL_22;
  }

  v4 = v34[0];
  v5 = v35;
  if (v35 >= 1)
  {
    do
    {
      v6 = *v4;
      if (v6 == 95)
      {
        v7 = 45;
      }

      else
      {
        v7 = uprv_asciitolower(v6);
      }

      *v4++ = v7;
      --v5;
    }

    while (v5);
    v4 = v34[0];
    v5 = v35;
  }

  v8 = sub_19526A818(v4, v5);
  if (!v8)
  {
    *(a1 + 8) = 1;
    goto LABEL_22;
  }

  v9 = *(a1 + 40);
  if (!v9)
  {
    Root = icu::Locale::getRoot(v8);
    icu::Locale::clone(Root);
  }

  v27 = 0;
  memset(__s1, 0, 64);
  icu::StringPiece::StringPiece(&v25, "attribute");
  if (v27 >= 1)
  {
    __s1[0] = (__s1 | 0xD);
    LODWORD(__s1[1]) = 40;
    WORD2(__s1[1]) = 0;
    LODWORD(__s1[7]) = 0;
LABEL_15:
    v32 = 0;
    v31 = 0u;
    v30 = 0u;
    v29 = 0u;
    icu::StringPiece::StringPiece(&v25, v34[0]);
    v13 = v25;
    v14 = v26[0];
    v28 = &v29 + 5;
    LODWORD(v29) = 40;
    WORD2(v29) = 0;
    LODWORD(v32) = 0;
LABEL_16:
    icu::CharString::append(&v28, v13, v14, (a1 + 8));
    goto LABEL_17;
  }

  v11 = v25;
  v12 = v26[0];
  memset(&__s1[1], 0, 56);
  __s1[0] = (__s1 | 0xD);
  LODWORD(__s1[1]) = 40;
  v28 = 0;
  *&v29 = 0;
  icu::CharStringByteSink::CharStringByteSink(&v28, __s1);
  v28 = &unk_1F0931548;
  icu::Locale::getKeywordValue(v9, v11, v12, &v28, &v27);
  icu::CharStringByteSink::~CharStringByteSink(&v28);
  if (v27 >= 1)
  {
    goto LABEL_15;
  }

  v17 = __s1[0];
  v18 = __s1[7];
  if (SLODWORD(__s1[7]) >= 1)
  {
    do
    {
      v19 = *v17;
      if (v19 == 95)
      {
        v20 = 45;
      }

      else
      {
        v20 = uprv_asciitolower(v19);
      }

      *v17++ = v20;
      --v18;
    }

    while (v18);
    v17 = __s1[0];
    v18 = __s1[7];
  }

  v29 = 0u;
  v32 = 0;
  v31 = 0u;
  v30 = 0u;
  v28 = &v29 + 5;
  LODWORD(v29) = 40;
  if (v18 < 1)
  {
LABEL_47:
    icu::StringPiece::StringPiece(&v25, v34[0]);
    v13 = v25;
    v14 = v26[0];
    goto LABEL_16;
  }

  v21 = 0;
  v22 = &v17[v18];
  do
  {
    if (v21)
    {
      goto LABEL_39;
    }

    v23 = v34[0];
    v24 = strcmp(v17, v34[0]);
    if (!v24)
    {
      goto LABEL_18;
    }

    if (v24 >= 1)
    {
      if (v32)
      {
        icu::CharString::append(&v28, 95, (a1 + 8));
        v23 = v34[0];
      }

      icu::StringPiece::StringPiece(&v25, v23);
      icu::CharString::append(&v28, v25, v26[0], (a1 + 8));
LABEL_39:
      v21 = 1;
      goto LABEL_41;
    }

    v21 = 0;
LABEL_41:
    if (v32)
    {
      icu::CharString::append(&v28, 95, (a1 + 8));
    }

    icu::StringPiece::StringPiece(&v25, v17);
    icu::CharString::append(&v28, v25, v26[0], (a1 + 8));
    v17 += strlen(v17) + 1;
  }

  while (v17 < v22);
  if ((v21 & 1) == 0)
  {
    if (v32)
    {
      icu::CharString::append(&v28, 95, (a1 + 8));
    }

    goto LABEL_47;
  }

LABEL_17:
  sub_1951DE32C(*(a1 + 40), "attribute", v28, (a1 + 8));
LABEL_18:
  if (BYTE4(v29))
  {
    free(v28);
  }

  if (BYTE4(__s1[1]))
  {
    free(__s1[0]);
  }

LABEL_22:
  if (BYTE4(v34[1]))
  {
    free(v34[0]);
  }

  v15 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1951DE32C(uint64_t a1, const char *a2, const char *a3, UErrorCode *a4)
{
  icu::StringPiece::StringPiece(&v9, a2);
  icu::StringPiece::StringPiece(&v7, a3);
  icu::Locale::setKeywordValue(a1, v9, v10, v7, v8, a4);
}

uint64_t icu::LocaleBuilder::removeUnicodeLocaleAttribute(uint64_t a1, const char *a2, int a3)
{
  v29 = *MEMORY[0x1E69E9840];
  memset(&v27[1], 0, 48);
  v28 = 0;
  v27[0] = &v27[1] + 5;
  LODWORD(v27[1]) = 40;
  icu::CharString::append(v27, a2, a3, (a1 + 8));
  if (*(a1 + 8) <= 0)
  {
    v4 = v27[0];
    v5 = v28;
    if (v28 >= 1)
    {
      do
      {
        v6 = *v4;
        if (v6 == 95)
        {
          v7 = 45;
        }

        else
        {
          v7 = uprv_asciitolower(v6);
        }

        *v4++ = v7;
        --v5;
      }

      while (v5);
      v4 = v27[0];
      v5 = v28;
    }

    if (sub_19526A818(v4, v5))
    {
      v8 = *(a1 + 40);
      if (v8)
      {
        v22 = 0;
        icu::StringPiece::StringPiece(&v20, "attribute");
        v9 = v20;
        v10 = v21[0];
        memset(&__s1[1], 0, 48);
        v26 = 0;
        __s1[0] = &__s1[1] + 5;
        LODWORD(__s1[1]) = 40;
        v23[0] = 0;
        v23[1] = 0;
        icu::CharStringByteSink::CharStringByteSink(v23, __s1);
        v23[0] = &unk_1F0931548;
        icu::Locale::getKeywordValue(v8, v9, v10, v23, &v22);
        icu::CharStringByteSink::~CharStringByteSink(v23);
        if (v22 <= 0)
        {
          v11 = v26;
          if (v26)
          {
            v12 = __s1[0];
            if (v26 >= 1)
            {
              v13 = 0;
              do
              {
                v14 = 0;
                v15 = v12[v13];
                if (v15 != 45 && v15 != 95)
                {
                  v14 = uprv_asciitolower(v15);
                }

                v12[v13] = v14;
                v11 = v26;
                ++v13;
              }

              while (v13 < v26);
              v12 = __s1[0];
            }

            memset(&v23[1], 0, 48);
            v24 = 0;
            v23[0] = &v23[1] + 5;
            LODWORD(v23[1]) = 40;
            if (v11 >= 1)
            {
              v16 = 0;
              v17 = &v12[v11];
              do
              {
                while (!strcmp(v12, v27[0]))
                {
                  v12 += strlen(v12) + 1;
                  v16 = 1;
                  if (v12 >= v17)
                  {
                    goto LABEL_30;
                  }
                }

                if (v24)
                {
                  icu::CharString::append(v23, 95, (a1 + 8));
                }

                icu::StringPiece::StringPiece(&v20, v12);
                icu::CharString::append(v23, v20, v21[0], (a1 + 8));
                v12 += strlen(v12) + 1;
              }

              while (v12 < v17);
              if ((v16 & 1) == 0)
              {
                goto LABEL_31;
              }

LABEL_30:
              sub_1951DE32C(*(a1 + 40), "attribute", v23[0], (a1 + 8));
LABEL_31:
              if (BYTE4(v23[1]))
              {
                free(v23[0]);
              }
            }
          }
        }

        if (BYTE4(__s1[1]))
        {
          free(__s1[0]);
        }
      }
    }

    else
    {
      *(a1 + 8) = 1;
    }
  }

  if (BYTE4(v27[1]))
  {
    free(v27[0]);
  }

  v18 = *MEMORY[0x1E69E9840];
  return a1;
}

icu::LocaleBuilder *icu::LocaleBuilder::clearExtensions(icu::LocaleBuilder *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 5) = 0;
  return this;
}

char *icu::LocaleBuilder::copyExtensionsFrom(char *this, const icu::Locale *a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    v5 = this;
    this = icu::Locale::createKeywords(a2, a3);
    v6 = this;
    if (*a3 > 0 || this == 0)
    {
      if (!this)
      {
        return this;
      }
    }

    else
    {
      v8 = (*(*this + 32))(this, a3);
      if (v8)
      {
        v9 = *(v5 + 5);
        if (!v9)
        {
          Root = icu::Locale::getRoot(v8);
          icu::Locale::clone(Root);
        }

        sub_1951DE808(a2, v6, v9, 0, a3);
      }
    }

    v11 = *(*v6 + 8);

    return v11(v6);
  }

  return this;
}

char *sub_1951DE808(char *this, char *a2, uint64_t a3, int a4, UErrorCode *a5)
{
  v36[9] = *MEMORY[0x1E69E9840];
  if (*a5 > 0)
  {
    goto LABEL_45;
  }

  v8 = a2;
  v9 = this;
  if (a2)
  {
    this = 0;
    goto LABEL_8;
  }

  this = icu::Locale::createKeywords(this, a5);
  v10 = *a5 > 0 || this == 0;
  v8 = this;
  if (!v10)
  {
LABEL_8:
    v29 = this;
    do
    {
      v11 = (*(*v8 + 40))(v8, 0, a5);
      if (!v11)
      {
        break;
      }

      v12 = v11;
      memset(v36, 0, 64);
      icu::StringPiece::StringPiece(&v30, v11);
      if (*a5 >= 1)
      {
        v36[0] = &v36[1] + 5;
        LODWORD(v36[1]) = 40;
        BYTE4(v36[1]) = 0;
        break;
      }

      v13 = v30;
      v14 = v31;
      memset(&v36[1], 0, 56);
      v36[0] = &v36[1] + 5;
      LODWORD(v36[1]) = 40;
      __s = 0;
      v34 = 0;
      icu::CharStringByteSink::CharStringByteSink(&__s, v36);
      __s = &unk_1F0931548;
      icu::Locale::getKeywordValue(v9, v13, v14, &__s, a5);
      icu::CharStringByteSink::~CharStringByteSink(&__s);
      if (*a5 > 0)
      {
        goto LABEL_39;
      }

      if (!strcmp(v12, "attribute"))
      {
        v15 = v36[7];
        if (SLODWORD(v36[7]) >= 1)
        {
          v16 = v36[0];
          do
          {
            v17 = *v16;
            if (v17 == 95)
            {
              v18 = 45;
            }

            else
            {
              v18 = uprv_asciitolower(v17);
            }

            *v16++ = v18;
            --v15;
          }

          while (v15);
        }
      }

      if (a4)
      {
        v19 = v36[0];
        v20 = v36[7];
        if (*(v12 + 1))
        {
          if (!strcmp(v12, "attribute"))
          {
            if ((sub_19526A87C(v19, v20) & 1) == 0)
            {
              goto LABEL_38;
            }
          }

          else
          {
            __s = 0;
            v34 = 0;
            v35 = 0;
            v21 = strlen(v12);
            ulocimp_toBcpKeyWithFallback(v12, v21, &__s);
            v30 = 0;
            v31 = 0;
            v32 = 0;
            v22 = strlen(v12);
            v23 = strlen(v19);
            ulocimp_toBcpTypeWithFallback(v12, v22, v19, v23, &v30);
            if (v35 != 1 || v32 != 1 || !sub_19526A898(__s, v34) || (sub_19526A90C(v30, v31) & 1) == 0)
            {
              goto LABEL_38;
            }
          }
        }

        else
        {
          v24 = uprv_asciitolower(*v12);
          isASCIILetter = uprv_isASCIILetter(v24);
          v26 = (v24 - 48) >= 0xA && !isASCIILetter;
          if (v26 || (sub_1951DDC78(*v12, v19, v20) & 1) == 0)
          {
LABEL_38:
            *a5 = U_ILLEGAL_ARGUMENT_ERROR;
LABEL_39:
            if (BYTE4(v36[1]))
            {
              free(v36[0]);
            }

            break;
          }
        }
      }

      sub_1951DE32C(a3, v12, v36[0], a5);
      v27 = *a5;
      if (BYTE4(v36[1]))
      {
        free(v36[0]);
      }
    }

    while (v27 < U_ILLEGAL_ARGUMENT_ERROR);
    this = v29;
  }

  if (this)
  {
    this = (*(*this + 8))(this);
  }

LABEL_45:
  v28 = *MEMORY[0x1E69E9840];
  return this;
}

void icu::LocaleBuilder::build(icu::LocaleBuilder *this@<X0>, UErrorCode *a2@<X1>, icu::Locale *a3@<X8>)
{
  v31 = *MEMORY[0x1E69E9840];
  if (*a2 >= 1)
  {
    *(a3 + 12) = 0u;
    *(a3 + 13) = 0u;
    *(a3 + 10) = 0u;
    *(a3 + 11) = 0u;
    *(a3 + 8) = 0u;
    *(a3 + 9) = 0u;
    *(a3 + 6) = 0u;
    *(a3 + 7) = 0u;
    *(a3 + 4) = 0u;
    *(a3 + 5) = 0u;
    *(a3 + 2) = 0u;
    *(a3 + 3) = 0u;
    *a3 = 0u;
    *(a3 + 1) = 0u;
LABEL_5:
    icu::Locale::Locale(a3);
    v7 = *MEMORY[0x1E69E9840];

    icu::Locale::setToBogus(a3);
    return;
  }

  v6 = *(this + 2);
  if (v6 >= U_ILLEGAL_ARGUMENT_ERROR)
  {
    *a2 = v6;
    *a3 = 0u;
    *(a3 + 1) = 0u;
    *(a3 + 2) = 0u;
    *(a3 + 3) = 0u;
    *(a3 + 4) = 0u;
    *(a3 + 5) = 0u;
    *(a3 + 6) = 0u;
    *(a3 + 7) = 0u;
    *(a3 + 8) = 0u;
    *(a3 + 9) = 0u;
    *(a3 + 10) = 0u;
    *(a3 + 11) = 0u;
    *(a3 + 12) = 0u;
    *(a3 + 13) = 0u;
    goto LABEL_5;
  }

  v30 = 0;
  memset(&v29[1], 0, 48);
  icu::StringPiece::StringPiece(v15, this + 12);
  v29[0] = &v29[1] + 5;
  LODWORD(v29[1]) = 40;
  WORD2(v29[1]) = 0;
  LODWORD(v30) = 0;
  icu::CharString::append(v29, v15[0], v15[1], a2);
  if (*(this + 21))
  {
    v8 = icu::CharString::append(v29, 45, a2);
    icu::StringPiece::StringPiece(v15, this + 21);
    icu::CharString::append(v8, v15[0], v15[1], a2);
  }

  if (*(this + 26))
  {
    v9 = icu::CharString::append(v29, 45, a2);
    icu::StringPiece::StringPiece(v15, this + 26);
    icu::CharString::append(v9, v15[0], v15[1], a2);
  }

  if (*(this + 4))
  {
    v10 = icu::CharString::append(v29, 45, a2);
    icu::StringPiece::StringPiece(v15, **(this + 4));
    icu::CharString::append(v10, v15[0], v15[1], a2);
  }

  if (*a2 < 1)
  {
    v27 = 0uLL;
    v28 = 0uLL;
    v25 = 0uLL;
    v26 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
    v21 = 0uLL;
    v22 = 0uLL;
    v19 = 0uLL;
    v20 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    *v15 = 0uLL;
    v16 = 0uLL;
    icu::Locale::Locale(v15, v29[0], 0, 0, 0);
    v12 = *(this + 5);
    if (v12)
    {
      sub_1951DE808(v12, 0, v15, 1, a2);
    }

    if (*a2 < 1)
    {
      icu::Locale::Locale(a3, v15);
    }

    else
    {
      *(a3 + 12) = 0u;
      *(a3 + 13) = 0u;
      *(a3 + 10) = 0u;
      *(a3 + 11) = 0u;
      *(a3 + 8) = 0u;
      *(a3 + 9) = 0u;
      *(a3 + 6) = 0u;
      *(a3 + 7) = 0u;
      *(a3 + 4) = 0u;
      *(a3 + 5) = 0u;
      *(a3 + 2) = 0u;
      *(a3 + 3) = 0u;
      *a3 = 0u;
      *(a3 + 1) = 0u;
      v13 = icu::Locale::Locale(a3);
      icu::Locale::setToBogus(v13);
    }

    icu::Locale::~Locale(v15);
  }

  else
  {
    *(a3 + 12) = 0uLL;
    *(a3 + 13) = 0uLL;
    *(a3 + 10) = 0uLL;
    *(a3 + 11) = 0uLL;
    *(a3 + 8) = 0uLL;
    *(a3 + 9) = 0uLL;
    *(a3 + 6) = 0uLL;
    *(a3 + 7) = 0uLL;
    *(a3 + 4) = 0uLL;
    *(a3 + 5) = 0uLL;
    *(a3 + 2) = 0uLL;
    *(a3 + 3) = 0uLL;
    *a3 = 0uLL;
    *(a3 + 1) = 0uLL;
    v11 = icu::Locale::Locale(a3);
    icu::Locale::setToBogus(v11);
  }

  if (BYTE4(v29[1]))
  {
    free(v29[0]);
  }

  v14 = *MEMORY[0x1E69E9840];
}

BOOL icu::LocaleBuilder::copyErrorTo(icu::LocaleBuilder *this, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 1;
  }

  v3 = *(this + 2);
  *a2 = v3;
  return v3 > U_ZERO_ERROR;
}

uint64_t icu::LocaleMatcher::Result::Result(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 16) = *(a2 + 16);
  v2 = *(a2 + 24);
  *(result + 24) = v2;
  if (v2)
  {
    *a2 = 0;
    *(a2 + 16) = -1;
    *(a2 + 24) = 0;
  }

  return result;
}

{
  *result = *a2;
  *(result + 16) = *(a2 + 16);
  v2 = *(a2 + 24);
  *(result + 24) = v2;
  if (v2)
  {
    *a2 = 0;
    *(a2 + 16) = -1;
    *(a2 + 24) = 0;
  }

  return result;
}

void icu::LocaleMatcher::Result::~Result(icu::LocaleMatcher::Result *this)
{
  if (*(this + 24))
  {
    v2 = *this;
    if (*this)
    {
      (*(*v2 + 8))(v2);
    }
  }
}

{
  if (*(this + 24))
  {
    v2 = *this;
    if (*this)
    {
      (*(*v2 + 8))(v2);
    }
  }
}

uint64_t *icu::LocaleMatcher::Result::operator=(uint64_t *a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    v4 = *a1;
    if (*a1)
    {
      (*(*v4 + 8))(v4);
    }
  }

  *a1 = *a2;
  a1[2] = *(a2 + 16);
  v5 = *(a2 + 24);
  *(a1 + 24) = v5;
  if (v5)
  {
    *a2 = 0;
    *(a2 + 16) = -1;
    *(a2 + 24) = 0;
  }

  return a1;
}

icu::Locale *icu::LocaleMatcher::Result::makeResolvedLocale@<X0>(const icu::Locale **this@<X0>, UErrorCode *a2@<X1>, icu::Locale *a3@<X8>)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*a2 <= 0 && (v6 = this[1]) != 0)
  {
    if (*this)
    {
      if (!icu::Locale::operator==(this[1], *this))
      {
        memset(v10, 0, sizeof(v10));
        icu::LocaleBuilder::LocaleBuilder(v10);
        icu::LocaleBuilder::setLocale(v10, this[1]);
      }

      v6 = this[1];
    }

    v9 = *MEMORY[0x1E69E9840];
  }

  else
  {
    Root = icu::Locale::getRoot(this);
    v5 = *MEMORY[0x1E69E9840];
    v6 = Root;
  }

  return icu::Locale::Locale(a3, v6);
}

double icu::LocaleMatcher::Builder::Builder(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 36);
  *(a1 + 36) = result;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a2 + 8) = 0;
  *(a2 + 24) = 0;
  return result;
}

{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 36);
  *(a1 + 36) = result;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a2 + 8) = 0;
  *(a2 + 24) = 0;
  return result;
}

void icu::LocaleMatcher::Builder::~Builder(icu::LocaleMatcher::Builder *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 6);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 7);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }
}

double icu::LocaleMatcher::Builder::operator=(icu::LocaleMatcher::Builder *a1, uint64_t a2)
{
  icu::LocaleMatcher::Builder::~Builder(a1);
  *v3 = *a2;
  *(v3 + 8) = *(a2 + 8);
  *(v3 + 16) = *(a2 + 16);
  *(v3 + 24) = *(a2 + 24);
  *(v3 + 32) = *(a2 + 32);
  result = *(a2 + 36);
  *(v3 + 36) = result;
  *(a2 + 8) = 0;
  *(a2 + 24) = 0;
  return result;
}

uint64_t icu::LocaleMatcher::Builder::clearSupportedLocales(icu::LocaleMatcher::Builder *this)
{
  result = *(this + 1);
  if (result)
  {
    return icu::UVector::removeAllElements(result);
  }

  return result;
}

uint64_t icu::LocaleMatcher::Builder::ensureSupportedLocaleVector(icu::LocaleMatcher::Builder *this)
{
  if (*this > 0)
  {
    return 0;
  }

  if (!*(this + 1))
  {
    operator new();
  }

  return 1;
}

uint64_t icu::LocaleMatcher::Builder::setSupportedLocalesFromListString(uint64_t a1, uint64_t a2, uint64_t a3)
{
  memset(v10, 0, sizeof(v10));
  icu::LocalePriorityList::LocalePriorityList(v10, a2, a3, a1);
  if (*a1 <= 0)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      icu::UVector::removeAllElements(v4);
    }

    if (icu::LocaleMatcher::Builder::ensureSupportedLocaleVector(a1))
    {
      v5 = DWORD2(v10[0]);
      if (SDWORD2(v10[0]) >= 1)
      {
        v6 = 0;
        do
        {
          while (1)
          {
            v7 = icu::LocalePriorityList::orphanLocaleAt(v10, v6);
            if (v7)
            {
              break;
            }

            if (++v6 >= v5)
            {
              goto LABEL_14;
            }
          }

          icu::UVector::adoptElement(*(a1 + 8), v7, a1);
          ++v6;
        }

        while (*a1 <= 0 && v6 < v5);
      }
    }
  }

LABEL_14:
  icu::LocalePriorityList::~LocalePriorityList(v10);
  return a1;
}

icu::LocaleMatcher::Builder *icu::LocaleMatcher::Builder::setSupportedLocales(icu::LocaleMatcher::Builder *this, icu::Locale::Iterator *a2)
{
  if (icu::LocaleMatcher::Builder::ensureSupportedLocaleVector(this))
  {
    v4 = *(this + 1);
    if (v4)
    {
      icu::UVector::removeAllElements(v4);
    }

    if ((*(*a2 + 16))(a2) && *this <= 0)
    {
      v5 = (*(*a2 + 24))(a2);
      icu::Locale::clone(v5);
    }
  }

  return this;
}

icu::LocaleMatcher::Builder *icu::LocaleMatcher::Builder::addSupportedLocale(icu::LocaleMatcher::Builder *this, const icu::Locale *a2)
{
  if (icu::LocaleMatcher::Builder::ensureSupportedLocaleVector(this))
  {
    icu::Locale::clone(a2);
  }

  return this;
}

icu::LocaleMatcher::Builder *icu::LocaleMatcher::Builder::setNoDefaultLocale(icu::LocaleMatcher::Builder *this)
{
  if (*this <= 0)
  {
    v2 = *(this + 3);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    *(this + 3) = 0;
    *(this + 32) = 0;
  }

  return this;
}

icu::LocaleMatcher::Builder *icu::LocaleMatcher::Builder::setDefaultLocale(icu::LocaleMatcher::Builder *this, const icu::Locale *a2)
{
  if (*this <= 0)
  {
    if (a2)
    {
      icu::Locale::clone(a2);
    }

    v3 = *(this + 3);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    *(this + 3) = 0;
    *(this + 32) = 1;
  }

  return this;
}

int *icu::LocaleMatcher::Builder::setFavorSubtag(int *result, int a2)
{
  if (*result <= 0)
  {
    result[9] = a2;
  }

  return result;
}

int *icu::LocaleMatcher::Builder::setDemotionPerDesiredLocale(int *result, int a2)
{
  if (*result <= 0)
  {
    result[5] = a2;
  }

  return result;
}

int *icu::LocaleMatcher::Builder::setMaxDistance(int *this, const icu::Locale *a2, const icu::Locale *a3)
{
  if (*this <= 0)
  {
    icu::Locale::clone(a2);
  }

  return this;
}

uint64_t icu::LocaleMatcher::Builder::copyErrorTo(UErrorCode *this, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 1;
  }

  if (*this >= 1)
  {
    *a2 = *this;
    return 1;
  }

  return 0;
}

icu::LocaleMatcher *icu::LocaleMatcher::Builder::build@<X0>(icu::LocaleMatcher::Builder *this@<X0>, UErrorCode *a2@<X1>, icu::LocaleMatcher *a3@<X8>)
{
  if (*a2 <= 0 && *this >= 1)
  {
    *a2 = *this;
  }

  return icu::LocaleMatcher::LocaleMatcher(a3, this, a2);
}

uint64_t icu::LocaleMatcher::putIfAbsent(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4, int *a5)
{
  if (*a5 <= 0 && !uhash_containsKey(a1[7], a2))
  {
    uhash_putiAllowZero(a1[7], a2, a3, a5);
    if (*a5 <= 0)
    {
      *(a1[8] + 8 * a4) = a2;
      *(a1[9] + 4 * a4) = a3;
      return (a4 + 1);
    }
  }

  return a4;
}

icu::LocaleMatcher *icu::LocaleMatcher::LocaleMatcher(icu::LocaleMatcher *this, const icu::LocaleMatcher::Builder *a2, UErrorCode *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  *this = sub_1951F0C8C(a3);
  *(this + 1) = sub_1951E4388(a3);
  *(this + 4) = *(a2 + 4);
  *(this + 5) = 0;
  v6 = *(a2 + 36);
  *(this + 4) = 0;
  *(this + 7) = 0;
  *(this + 3) = v6;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 5) = 0;
  *(this + 20) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 12) = 0;
  if (*a3 <= 0)
  {
    v7 = *(a2 + 3);
    v18[0] = "und";
    v18[1] = "";
    v20 = 0;
    v21 = 0;
    v18[2] = "";
    v19 = 0;
    if (v7)
    {
      icu::Locale::clone(v7);
    }

    v8 = *(a2 + 1);
    if (v8)
    {
      v9 = *(v8 + 8);
      *(this + 12) = v9;
      if (v9 >= 1)
      {
        *(this + 4) = malloc_type_malloc(8 * v9, 0x6004044C4A2DFuLL);
        is_mul_ok(*(this + 12), 0x30uLL);
        operator new[]();
      }
    }

    else
    {
      *(this + 12) = 0;
    }

    *(this + 12) = 0;
    if (*(a2 + 5) == 1)
    {
      *(this + 5) = *(*(this + 1) + 84);
    }

    if ((*(this + 4) & 0x80000000) != 0)
    {
      if (*(a2 + 6))
      {
        v24 = 0u;
        *v22 = 0u;
        v23 = 0u;
        sub_1951E0044(*this, *(a2 + 7), a3, v22);
        v17 = v22;
        v10 = *(this + 1);
        sub_1951E0044(*this, *(a2 + 6), a3, v15);
        v11 = sub_1951E4558(v10, v15, &v17, 1, 800, *(this + 6), *(this + 7));
        if (v16)
        {
          sub_1951F388C(v15);
        }

        if (*a3 <= 0)
        {
          v12 = ((v11 >> 3) & 0x7F) + 1;
        }

        else
        {
          v12 = 0;
        }

        *(this + 4) = v12;
        if (*(&v23 + 1))
        {
          sub_1951F388C(v22);
        }
      }

      else
      {
        *(this + 4) = *(*(this + 1) + 72);
      }
    }

    if (v19)
    {
      sub_1951F388C(v18);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return this;
}

double sub_1951E0044@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, UErrorCode *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a3 <= 0 && *(a2 + 216) == 0;
  if (v5 && **(a2 + 40))
  {

    sub_1951F0F5C(a1, a2, a3, a4);
  }

  else
  {
    *a4 = "und";
    *(a4 + 8) = "";
    *(a4 + 16) = "";
    *(a4 + 24) = 0;
    *(a4 + 32) = sub_1951F366C("");
    *&result = 7;
    *(a4 + 36) = 7;
  }

  return result;
}

uint64_t sub_1951E00F0(uint64_t a1, size_t size, int a3)
{
  *a1 = a1 + 13;
  *(a1 + 8) = 100;
  *(a1 + 12) = 0;
  if (size >= 101 && a3 <= 0)
  {
    v4 = size;
    v5 = malloc_type_malloc(size, 0x100004077774924uLL);
    if (v5)
    {
      v6 = v5;
      if (*(a1 + 12))
      {
        free(*a1);
      }

      *a1 = v6;
      *(a1 + 8) = v4;
      *(a1 + 12) = 1;
    }
  }

  return a1;
}

__n128 icu::LocaleMatcher::LocaleMatcher(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  result = *(a2 + 88);
  *(a1 + 88) = result;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 56) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  return result;
}

void icu::LocaleMatcher::~LocaleMatcher(icu::LocaleMatcher *this)
{
  v2 = *(this + 12);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*(this + 4) + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(this + 12);
      }
    }
  }

  free(*(this + 4));
  v5 = *(this + 5);
  if (v5)
  {
    v6 = v5 - 16;
    v7 = *(v5 - 8);
    if (v7)
    {
      v8 = v5 + 48 * v7 - 48;
      v9 = -48 * v7;
      do
      {
        if (*(v8 + 24))
        {
          sub_1951F388C(v8);
        }

        v8 -= 48;
        v9 += 48;
      }

      while (v9);
    }

    MEMORY[0x19A8B25E0](v6, 0x1050C803E1AAB50);
  }

  uhash_close(*(this + 7));
  free(*(this + 8));
  free(*(this + 9));
  v10 = *(this + 11);
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }
}

__n128 icu::LocaleMatcher::operator=(icu::LocaleMatcher *a1, uint64_t a2)
{
  icu::LocaleMatcher::~LocaleMatcher(a1);
  *(v3 + 16) = *(a2 + 16);
  *(v3 + 32) = *(a2 + 32);
  *(v3 + 48) = *(a2 + 48);
  *(v3 + 56) = *(a2 + 56);
  *(v3 + 72) = *(a2 + 72);
  *(v3 + 80) = *(a2 + 80);
  result = *(a2 + 88);
  *(v3 + 88) = result;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 56) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  return result;
}

uint64_t icu::LocaleMatcher::getBestMatch(icu::LocaleMatcher *this, const icu::Locale *a2, UErrorCode *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  v11[10] = v3;
  v11[11] = v4;
  sub_1951E0044(*this, a2, a3, v11);
  BestSuppIndex = icu::LocaleMatcher::getBestSuppIndex(this, v11, 0, a3);
  if (v11[3])
  {
    sub_1951F388C(v11);
  }

  if (*a3 > 0 || (BestSuppIndex & 0x100000000) == 0)
  {
    v10 = this + 96;
  }

  else
  {
    v10 = (*(this + 4) + 8 * BestSuppIndex);
  }

  return *v10;
}

uint64_t icu::LocaleMatcher::getBestSuppIndex(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if (*a4 <= 0)
  {
    v12 = 0;
    v13 = (8 * *(a1 + 16));
    v14 = -1;
    while (1)
    {
      if (*(a1 + 56))
      {
        sub_1951F3A04(a2);
        v19[0] = 0;
        v15 = uhash_getiAndFound(*(a1 + 56), a2, v19);
        if (v19[0])
        {
          v4 = v15;
          if (a3)
          {
            sub_1951E0AA4(a3, v12, a4);
          }

          goto LABEL_22;
        }
      }

      v16 = sub_1951E4558(*(a1 + 8), a2, *(a1 + 64), *(a1 + 80), v13, *(a1 + 24), *(a1 + 28));
      if ((v16 & 0x80000000) == 0)
      {
        v17 = v16;
        if (a3)
        {
          sub_1951E0AA4(a3, v12, a4);
          if (*a4 > 0)
          {
            goto LABEL_2;
          }
        }

        LODWORD(v13) = v17 & 0x3FF;
        v14 = v17 >> 10;
      }

      if (!a3)
      {
        break;
      }

      v13 = (v13 - 8 * *(a1 + 20));
      if (v13 < 1 || !(*(**(a3 + 8) + 16))(*(a3 + 8)))
      {
        break;
      }

      v18 = (*(**(a3 + 8) + 24))(*(a3 + 8));
      *(a3 + 24) = v18;
      sub_1951E0044(*a3, v18, a4, v19);
      sub_1951F3894(a2, v19);
      if (v20)
      {
        sub_1951F388C(v19);
      }

      if (*a4 > 0)
      {
        goto LABEL_2;
      }

      ++v12;
    }

    if ((v14 & 0x80000000) != 0)
    {
      goto LABEL_2;
    }

    v4 = *(*(a1 + 72) + 4 * v14);
LABEL_22:
    v6 = v4 & 0xFFFFFF00;
    v5 = 0x100000000;
  }

  else
  {
LABEL_2:
    LOBYTE(v4) = 0;
    v5 = 0;
    v6 = 0;
  }

  return v5 | v6 | v4;
}

uint64_t icu::LocaleMatcher::getBestMatch(icu::LocaleMatcher *this, icu::Locale::Iterator *a2, UErrorCode *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  if (!(*(*a2 + 16))(a2))
  {
    return *(this + 12);
  }

  v12 = 0u;
  v13 = 0u;
  v11[0] = *this;
  v11[1] = a2;
  *&v13 = 0;
  DWORD2(v13) = -1;
  *(&v12 + 1) = (*(*a2 + 24))(a2);
  sub_1951E0044(v11[0], *(&v12 + 1), a3, v10);
  BestSuppIndex = icu::LocaleMatcher::getBestSuppIndex(this, v10, v11, a3);
  if (v10[3])
  {
    sub_1951F388C(v10);
  }

  if (*a3 <= 0 && (BestSuppIndex & 0x100000000) != 0)
  {
    v9 = (*(this + 4) + 8 * BestSuppIndex);
  }

  else
  {
    v9 = (this + 96);
  }

  v3 = *v9;
  if (!v12 && v13)
  {
    (*(*v13 + 8))(v13);
  }

  return v3;
}

uint64_t icu::LocaleMatcher::getBestMatchForListString(icu::LocaleMatcher *a1, uint64_t a2, uint64_t a3, UErrorCode *a4)
{
  if (*a4 > 0)
  {
    return 0;
  }

  memset(v10, 0, sizeof(v10));
  icu::LocalePriorityList::LocalePriorityList(v10, a2, a3, a4);
  v8[0] = &unk_1F0932040;
  v8[1] = v10;
  v9 = 0u;
  DWORD2(v9) = DWORD2(v10[0]) - HIDWORD(v10[0]);
  BestMatch = icu::LocaleMatcher::getBestMatch(a1, v8, a4);
  icu::Locale::Iterator::~Iterator(v8);
  icu::LocalePriorityList::~LocalePriorityList(v10);
  return BestMatch;
}

void icu::LocaleMatcher::getBestMatchResult(icu::LocaleMatcher *this@<X0>, const icu::Locale *a2@<X1>, UErrorCode *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a3 >= 1)
  {
    goto LABEL_9;
  }

  v7 = a2;
  sub_1951E0044(*this, a2, a3, v13);
  BestSuppIndex = icu::LocaleMatcher::getBestSuppIndex(this, v13, 0, a3);
  if (v13[3])
  {
    sub_1951F388C(v13);
  }

  if (*a3 > 0 || (BestSuppIndex & 0x100000000) == 0)
  {
LABEL_9:
    v7 = 0;
    v12 = (this + 96);
    v11 = -1;
    LODWORD(BestSuppIndex) = -1;
  }

  else
  {
    v11 = 0;
    v12 = (*(this + 4) + 8 * BestSuppIndex);
  }

  v10 = *v12;
  *a4 = v7;
  *(a4 + 8) = v10;
  *(a4 + 16) = v11;
  *(a4 + 20) = BestSuppIndex;
  *(a4 + 24) = 0;
}

void icu::LocaleMatcher::getBestMatchResult(icu::LocaleMatcher *this@<X0>, icu::Locale::Iterator *a2@<X1>, UErrorCode *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a3 <= 0 && (*(*a2 + 16))(a2))
  {
    v17 = 0u;
    v18 = 0u;
    v16[0] = *this;
    v16[1] = a2;
    *&v18 = 0;
    DWORD2(v18) = -1;
    *(&v17 + 1) = (*(*a2 + 24))(a2);
    sub_1951E0044(v16[0], *(&v17 + 1), a3, v15);
    BestSuppIndex = icu::LocaleMatcher::getBestSuppIndex(this, v15, v16, a3);
    if (v15[3])
    {
      sub_1951F388C(v15);
    }

    if (*a3 <= 0 && (BestSuppIndex & 0x100000000) != 0)
    {
      v10 = v18;
      *&v18 = 0;
      v11 = (*(this + 4) + 8 * BestSuppIndex);
      v12 = 1;
      v13 = DWORD2(v18);
    }

    else
    {
      v10 = 0;
      v12 = 0;
      v11 = (this + 96);
      v13 = -1;
      LODWORD(BestSuppIndex) = -1;
    }

    v14 = *v11;
    *a4 = v10;
    *(a4 + 8) = v14;
    *(a4 + 16) = v13;
    *(a4 + 20) = BestSuppIndex;
    *(a4 + 24) = v12;
    if (!v17)
    {
      if (v18)
      {
        (*(*v18 + 8))(v18);
      }
    }
  }

  else
  {
    v6 = *(this + 12);
    *a4 = 0;
    *(a4 + 8) = v6;
    *(a4 + 16) = -1;
    *(a4 + 24) = 0;
  }
}

uint64_t sub_1951E0AA4(uint64_t result, int a2, int *a3)
{
  if (*a3 <= 0)
  {
    *(result + 40) = a2;
    if (*(result + 16) != 1)
    {
      v3 = *(result + 32);
      if (v3)
      {
        (*(*v3 + 8))(v3);
      }

      operator new();
    }

    *(result + 32) = *(result + 24);
  }

  return result;
}

BOOL icu::LocaleMatcher::isMatch(icu::LocaleMatcher *this, const icu::Locale *a2, const icu::Locale *a3, UErrorCode *a4)
{
  if (*a4 > 0)
  {
    return 0;
  }

  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  sub_1951E0044(*this, a3, a4, &v14);
  if (*a4 <= 0)
  {
    v13 = &v14;
    v8 = *(this + 1);
    sub_1951E0044(*this, a2, a4, v11);
    v9 = sub_1951E4558(v8, v11, &v13, 1, (8 * *(this + 4)), *(this + 6), *(this + 7));
    if (v12)
    {
      sub_1951F388C(v11);
    }

    v4 = v9 >= 0;
  }

  else
  {
    v4 = 0;
  }

  if (*(&v15 + 1))
  {
    sub_1951F388C(&v14);
  }

  return v4;
}

double icu::LocaleMatcher::internalMatch(icu::LocaleMatcher *this, const icu::Locale *a2, const icu::Locale *a3, UErrorCode *a4)
{
  v4 = 0.0;
  if (*a4 <= 0)
  {
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    sub_1951E0044(*this, a3, a4, &v14);
    if (*a4 <= 0)
    {
      v13 = &v14;
      v8 = *(this + 1);
      sub_1951E0044(*this, a2, a4, v11);
      v9 = sub_1951E4558(v8, v11, &v13, 1, (8 * *(this + 4)), *(this + 6), *(this + 7));
      if (v12)
      {
        sub_1951F388C(v11);
      }

      v4 = ((v9 & 0x3FF) * -0.125 + 100.0) / 100.0;
    }

    if (*(&v15 + 1))
    {
      sub_1951F388C(&v14);
    }
  }

  return v4;
}

uint64_t uloc_acceptLanguage(icu::Locale *a1, int a2, int *a3, uint64_t a4, unsigned int a5, uint64_t a6, int *a7)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*a7 <= 0)
  {
    if (a1)
    {
      if (a2 < 0)
      {
        goto LABEL_13;
      }
    }

    else if (a2)
    {
      goto LABEL_13;
    }

    if (a4)
    {
      if ((a5 & 0x80000000) != 0)
      {
        goto LABEL_13;
      }
    }

    else if (a5)
    {
      goto LABEL_13;
    }

    if (a6)
    {
      memset(v21, 0, 224);
      Root = icu::Locale::getRoot(a1);
      icu::Locale::Locale(v21, Root);
      memset(v20, 0, sizeof(v20));
      icu::Locale::Locale(v18, v21);
      v19[0] = &unk_1F0932088;
      v19[1] = a4;
      v19[2] = a4 + 8 * a5;
      icu::Locale::Locale(v20, v18);
      icu::Locale::~Locale(v18);
      v7 = sub_1951E0F04(a6, v19, a1, a2, a3, a7);
      v19[0] = &unk_1F0932088;
      icu::Locale::~Locale(v20);
      icu::Locale::Iterator::~Iterator(v19);
      icu::Locale::~Locale(v21);
      goto LABEL_14;
    }

LABEL_13:
    v7 = 0;
    *a7 = 1;
    goto LABEL_14;
  }

  v7 = 0;
LABEL_14:
  v16 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t sub_1951E0F04(uint64_t a1, icu::Locale::Iterator *a2, void *a3, int a4, int *a5, int *a6)
{
  v42 = *MEMORY[0x1E69E9840];
  if (*a6 <= 0)
  {
    v25 = 0u;
    v24[0] = 0u;
    v24[1] = 0x1FFFFFFFFuLL;
    LOBYTE(v25) = 1;
    DWORD2(v25) = 0;
    v26 = 0;
    v27 = 0;
    v13 = uenum_next(a1, 0, a6);
    if (v13)
    {
      v14 = v13;
      while (1)
      {
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        icu::Locale::Locale(&v28, v14, 0, 0, 0);
        if (BYTE8(v41))
        {
          break;
        }

        icu::LocaleMatcher::Builder::addSupportedLocale(v24, &v28);
        icu::Locale::~Locale(&v28);
        v14 = uenum_next(a1, 0, a6);
        if (!v14)
        {
          goto LABEL_7;
        }
      }

      *a6 = 1;
      icu::Locale::~Locale(&v28);
      v6 = 0;
    }

    else
    {
LABEL_7:
      *&v34 = 0;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      if (*a6 <= 0 && SLODWORD(v24[0]) >= 1)
      {
        *a6 = v24[0];
      }

      icu::LocaleMatcher::LocaleMatcher(&v28, v24, a6);
      v22 = 0u;
      v23 = 0u;
      icu::LocaleMatcher::getBestMatchResult(&v28, a2, a6, &v22);
      if (*a6 <= 0)
      {
        if ((v23 & 0x80000000) != 0)
        {
          v17 = 0;
          if (a5)
          {
            *a5 = 0;
          }
        }

        else
        {
          if (a5)
          {
            v15 = *(&v22 + 1);
            if (icu::Locale::operator==(v22, *(&v22 + 1)))
            {
              v16 = 1;
            }

            else
            {
              v16 = 2;
            }

            *a5 = v16;
          }

          else
          {
            v15 = *(&v22 + 1);
          }

          v18 = *(v15 + 40);
          v19 = strlen(v18);
          v17 = v19;
          if (v19 <= a4)
          {
            memcpy(a3, v18, v19);
          }
        }

        v6 = u_terminateChars(a3, a4, v17, a6);
      }

      else
      {
        v6 = 0;
      }

      if (BYTE8(v23) && v22)
      {
        (*(*v22 + 8))(v22);
      }

      icu::LocaleMatcher::~LocaleMatcher(&v28);
    }

    icu::LocaleMatcher::Builder::~Builder(v24);
  }

  else
  {
    v6 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v6;
}

void sub_1951E118C(uint64_t a1)
{
  *a1 = &unk_1F0932088;
  icu::Locale::~Locale((a1 + 24));

  icu::Locale::Iterator::~Iterator(a1);
}

uint64_t uloc_acceptLanguageFromHTTP(void *a1, int a2, int *a3, char *__s, uint64_t a5, int *a6)
{
  if (*a6 <= 0)
  {
    if (a1)
    {
      if (a2 < 0)
      {
        goto LABEL_10;
      }
    }

    else if (a2)
    {
      goto LABEL_10;
    }

    if (__s && a5)
    {
      memset(v16, 0, sizeof(v16));
      icu::StringPiece::StringPiece(&v13, __s);
      icu::LocalePriorityList::LocalePriorityList(v16, v13, v14, a6);
      v13 = &unk_1F0932040;
      v14 = v16;
      v15 = 0u;
      DWORD2(v15) = DWORD2(v16[0]) - HIDWORD(v16[0]);
      v6 = sub_1951E0F04(a5, &v13, a1, a2, a3, a6);
      icu::Locale::Iterator::~Iterator(&v13);
      icu::LocalePriorityList::~LocalePriorityList(v16);
      return v6;
    }

LABEL_10:
    v6 = 0;
    *a6 = 1;
    return v6;
  }

  return 0;
}

void sub_1951E1304(icu::Locale::Iterator *a1)
{
  icu::Locale::Iterator::~Iterator(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_1951E134C(uint64_t a1)
{
  do
  {
    v2 = *(a1 + 8);
    v3 = *(a1 + 16);
    *(a1 + 16) = v3 + 1;
    result = icu::LocalePriorityList::localeAt(v2, v3);
  }

  while (!result);
  ++*(a1 + 20);
  return result;
}

void sub_1951E1390(uint64_t a1)
{
  *a1 = &unk_1F0932088;
  icu::Locale::~Locale((a1 + 24));
  icu::Locale::Iterator::~Iterator(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_1951E1408(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  *(a1 + 8) = v2 + 1;
  icu::Locale::Locale(v6, *v2, 0, 0, 0);
  v3 = icu::Locale::operator=(a1 + 24, v6);
  icu::Locale::~Locale(v6);
  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t icu::LocalePriorityList::LocalePriorityList(uint64_t result, uint64_t a2, uint64_t a3, int *a4)
{
  v5 = *MEMORY[0x1E69E9840];
  *(result + 24) = 0;
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  if (*a4 <= 0)
  {
    operator new();
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1951E1874(unint64_t *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  if (*a1 < a2)
  {
    while (*v2 == 32)
    {
      if (++v2 == a2)
      {
        v2 = a2;
        break;
      }
    }
  }

  *a1 = v2;
  if (v2 == a2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *v2;
  if ((v3 - 50) < 0xFFFFFFFE)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = (1000 * v3 - 48000);
  *a1 = (v2 + 1);
  if (v2 + 1 != a2 && v2[1] == 46)
  {
    v6 = v2 + 2;
    *a1 = v6;
    if (v6 != a2)
    {
      v7 = 100;
      do
      {
        if (*v6 - 48 > 9)
        {
          break;
        }

        v8 = (*v6 - 48);
        v9 = v8 <= 4 ? v4 : v4 + 1;
        if (v7)
        {
          v9 = v4;
          v10 = v7;
        }

        else
        {
          v10 = -1;
        }

        LODWORD(v4) = v4 + v7 * v8;
        if (v7 >= 1)
        {
          v7 /= 0xAu;
        }

        else
        {
          LODWORD(v4) = v9;
          v7 = v10;
        }

        *a1 = ++v6;
      }

      while (v6 != a2);
    }

    if (v4 >= 1001)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return v4;
    }
  }

  return v4;
}

uint64_t icu::LocalePriorityList::add(icu::LocalePriorityList *this, const icu::Locale *a2, int a3, UErrorCode *a4)
{
  if (*a4 > 0)
  {
    return 0;
  }

  v10 = *(this + 3);
  if (v10)
  {
    goto LABEL_5;
  }

  if (a3 < 1)
  {
    return 1;
  }

  v10 = uhash_open(icu::Locale::hashCode, sub_1951E1D48, uhash_compareLong, a4);
  *(this + 3) = v10;
  if (*a4 <= 0)
  {
LABEL_5:
    v22 = 0;
    v11 = uhash_getiAndFound(v10, a2, &v22);
    if (v22)
    {
      v12 = **this + 16 * v11;
      v13 = *v12;
      *v12 = 0;
      *(v12 + 8) = 0;
      ++*(this + 3);
      if (a3 <= 0)
      {
        uhash_removei(*(this + 3), a2);
        v4 = 1;
        if (!v13)
        {
          return v4;
        }

        goto LABEL_35;
      }

      if (v13)
      {
        v14 = *(this + 2);
        v15 = *this;
        if (v14 == *(*this + 8))
        {
          if (v14 >= 50)
          {
            v16 = 4 * v14;
          }

          else
          {
            v16 = 100;
          }

          v17 = malloc_type_malloc(16 * v16, 0x1020040EDED9539uLL);
          if (!v17)
          {
            *a4 = U_MEMORY_ALLOCATION_ERROR;
LABEL_34:
            v4 = 0;
LABEL_35:
            (*(*v13 + 8))(v13);
            return v4;
          }

          v18 = v17;
          if (v14 >= 1)
          {
            v19 = *(v15 + 8);
            if (v19 >= v14)
            {
              v19 = v14;
            }

            if (v19 >= v16)
            {
              v19 = v16;
            }

            memcpy(v17, *v15, 16 * v19);
          }

          if (*(v15 + 12))
          {
            free(*v15);
          }

          *v15 = v18;
          *(v15 + 8) = v16;
          *(v15 + 12) = 1;
          v14 = *(this + 2);
        }

        uhash_putiAllowZero(*(this + 3), v13, v14, a4);
        if (*a4 <= 0)
        {
          v20 = *(this + 2);
          v21 = **this + 16 * v20;
          *v21 = v13;
          *(this + 2) = v20 + 1;
          *(v21 + 8) = a3;
          *(v21 + 12) = v20;
          if (a3 <= 0x3E7)
          {
            *(this + 16) = 1;
          }

          return 1;
        }

        goto LABEL_34;
      }

LABEL_29:
      icu::Locale::clone(a2);
    }

    if (a3 > 0)
    {
      goto LABEL_29;
    }

    return 1;
  }

  return 0;
}

void icu::LocalePriorityList::sort(uint64_t **this, UErrorCode *a2)
{
  if (*a2 <= 0)
  {
    v3 = *(this + 2);
    if (v3 - *(this + 3) >= 2 && *(this + 16) == 1)
    {
      uprv_sortArray(**this, v3, 16, sub_1951E1D60, 0, 0, a2);
    }
  }
}

void icu::LocalePriorityList::~LocalePriorityList(icu::LocalePriorityList *this)
{
  v2 = *this;
  if (*this)
  {
    v3 = *(this + 2);
    if (v3 < 1)
    {
      goto LABEL_14;
    }

    v4 = 0;
    for (i = 0; i < v3; ++i)
    {
      v6 = *(**this + v4);
      if (v6)
      {
        (*(*v6 + 8))(v6);
        v3 = *(this + 2);
      }

      v4 += 16;
    }

    v2 = *this;
    if (*this)
    {
LABEL_14:
      if (*(v2 + 12))
      {
        free(*v2);
      }

      MEMORY[0x19A8B2600](v2, 0x1020C40A9DBCF1BLL);
    }
  }

  uhash_close(*(this + 3));
}

uint64_t icu::LocalePriorityList::orphanLocaleAt(uint64_t **this, int a2)
{
  if (!*this)
  {
    return 0;
  }

  v2 = **this;
  v3 = 16 * a2;
  result = *(v2 + v3);
  *(v2 + v3) = 0;
  return result;
}

uint64_t sub_1951E1D60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  v4 = *(a2 + 8);
  result = (v3 - v4);
  if (v3 == v4)
  {
    return (*(a2 + 12) - *(a3 + 12));
  }

  return result;
}

void sub_1951E1D8C()
{
  v0 = uloc_countAvailable();
  dword_1EAEC96C0 = v0;
  if (v0)
  {
    is_mul_ok(v0, 0xE0uLL);
    operator new[]();
  }

  if (!qword_1EAEC96C8)
  {
    dword_1EAEC96C0 = 0;
  }

  sub_1952376A4(0xAu, sub_1951E2028);
}

uint64_t uloc_countAvailable()
{
  v2 = &unk_1F0931CC0;
  v3 = 0;
  if (atomic_load_explicit(&dword_1EAEC96F8, memory_order_acquire) == 2 || !icu::umtx_initImplPreInit(&dword_1EAEC96F8))
  {
    if (dword_1EAEC96FC >= 1)
    {
      LODWORD(v3) = dword_1EAEC96FC;
    }
  }

  else
  {
    sub_1951E2254(&v3);
    dword_1EAEC96FC = v3;
    icu::umtx_initImplPostInit(&dword_1EAEC96F8);
  }

  if (v3 <= 0)
  {
    v0 = qword_1EAEC96D0;
  }

  else
  {
    v0 = 0;
  }

  icu::ErrorCode::~ErrorCode(&v2);
  return v0;
}

uint64_t uloc_getAvailable(int a1)
{
  v5 = &unk_1F0931CC0;
  v6 = 0;
  if (atomic_load_explicit(&dword_1EAEC96F8, memory_order_acquire) == 2 || !icu::umtx_initImplPreInit(&dword_1EAEC96F8))
  {
    if (dword_1EAEC96FC >= 1)
    {
      LODWORD(v6) = dword_1EAEC96FC;
    }
  }

  else
  {
    sub_1951E2254(&v6);
    dword_1EAEC96FC = v6;
    icu::umtx_initImplPostInit(&dword_1EAEC96F8);
  }

  if (v6 > 0 || qword_1EAEC96D0 < a1)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(qword_1EAEC96E0 + 8 * a1);
  }

  icu::ErrorCode::~ErrorCode(&v5);
  return v3;
}

uint64_t sub_1951E2028()
{
  if (qword_1EAEC96C8)
  {
    v0 = qword_1EAEC96C8 - 16;
    v1 = *(qword_1EAEC96C8 - 8);
    if (v1)
    {
      v2 = (qword_1EAEC96C8 + 224 * v1 - 224);
      v3 = -224 * v1;
      do
      {
        icu::Locale::~Locale(v2);
        v2 = (v4 - 224);
        v3 += 224;
      }

      while (v3);
    }

    MEMORY[0x19A8B25E0](v0, 0x1091C80EF191B47);
    qword_1EAEC96C8 = 0;
  }

  dword_1EAEC96C0 = 0;
  atomic_store(0, &unk_1EAEC96F0);
  return 1;
}

uint64_t icu::Locale::getAvailableLocales(icu::Locale *this, int *a2)
{
  if (atomic_load_explicit(dword_1EAEC96F0, memory_order_acquire) != 2 && icu::umtx_initImplPreInit(dword_1EAEC96F0))
  {
    sub_1951E1D8C();
    icu::umtx_initImplPostInit(dword_1EAEC96F0);
  }

  *this = dword_1EAEC96C0;
  return qword_1EAEC96C8;
}

uint64_t uloc_openAvailableByType(unsigned int a1, UErrorCode *a2)
{
  if (*a2 <= 0)
  {
    if (a1 >= 3)
    {
      v3 = 1;
LABEL_8:
      *a2 = v3;
      return 0;
    }

    if (atomic_load_explicit(&dword_1EAEC96F8, memory_order_acquire) == 2 || !icu::umtx_initImplPreInit(&dword_1EAEC96F8))
    {
      v3 = dword_1EAEC96FC;
      if (dword_1EAEC96FC >= 1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      sub_1951E2254(a2);
      dword_1EAEC96FC = *a2;
      icu::umtx_initImplPostInit(&dword_1EAEC96F8);
    }

    if (*a2 <= 0)
    {
      operator new();
    }
  }

  return 0;
}

void sub_1951E2254(UErrorCode *a1)
{
  sub_1952376A4(0xDu, sub_1951E22F4);
  v2 = ures_openDirect(0, "res_index", a1);
  v3 = &unk_1F09320F0;
  ures_getAllItemsWithFallback(v2, "", &v3, a1);
  icu::ResourceSink::~ResourceSink(&v3);
  if (v2)
  {
    ures_close(v2);
  }
}

uint64_t sub_1951E22F4()
{
  qword_1EAEC96D0 = 0;
  free(qword_1EAEC96E0);
  free(qword_1EAEC96E8);
  qword_1EAEC96E0 = 0;
  qword_1EAEC96E8 = 0;
  atomic_store(0, &dword_1EAEC96F8);
  return 1;
}

void sub_1951E2348(icu::ResourceSink *a1)
{
  icu::ResourceSink::~ResourceSink(a1);

  JUMPOUT(0x19A8B2600);
}

void sub_1951E2380(uint64_t a1, char *a2, icu::ResourceValue *a3, uint64_t a4, int *a5)
{
  __s1 = a2;
  if (*a5 <= 0)
  {
    v16 = 0;
    memset(v15, 0, sizeof(v15));
    (*(*a3 + 88))(v15, a3, a5);
    if (*a5 <= 0)
    {
      if (icu::ResourceTable::getKeyAndValue(v15, 0, &__s1, a3))
      {
        for (i = 0; icu::ResourceTable::getKeyAndValue(v15, i, &__s1, a3); ++i)
        {
          v8 = __s1;
          if (!strcmp(__s1, "InstalledLocales"))
          {
            v9 = 0;
          }

          else
          {
            if (strcmp(v8, "AliasLocales"))
            {
              continue;
            }

            v9 = 1;
          }

          v14 = 0;
          memset(v13, 0, sizeof(v13));
          (*(*a3 + 88))(v13, a3, a5);
          if (*a5 > 0)
          {
            return;
          }

          v10 = v14;
          *(&qword_1EAEC96D0 + v9) = v14;
          v11 = malloc_type_malloc(8 * v10, 0x50040EE9192B6uLL);
          qword_1EAEC96E0[v9] = v11;
          if (!v11)
          {
            *a5 = 7;
            return;
          }

          if (icu::ResourceTable::getKeyAndValue(v13, 0, &__s1, a3))
          {
            v12 = 0;
            do
            {
              *(qword_1EAEC96E0[v9] + 8 * v12++) = __s1;
            }

            while (icu::ResourceTable::getKeyAndValue(v13, v12, &__s1, a3));
          }
        }
      }
    }
  }
}

void sub_1951E2578(icu::StringEnumeration *a1)
{
  icu::StringEnumeration::~StringEnumeration(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_1951E25B0(uint64_t a1, int *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  v3 = *(a1 + 116);
  if (v3 == 2)
  {
    return (HIDWORD(qword_1EAEC96D0) + qword_1EAEC96D0);
  }

  else
  {
    return *(&qword_1EAEC96D0 + v3);
  }
}

uint64_t sub_1951E25F4(uint64_t a1, _DWORD *a2, int *a3)
{
  if (*a3 <= 0)
  {
    v6 = *(a1 + 116);
    v5 = *(a1 + 120);
    *(a1 + 120) = v5 + 1;
    if (v6 == 2)
    {
      v7 = qword_1EAEC96D0;
      v6 = v5 >= qword_1EAEC96D0;
      if (v5 < qword_1EAEC96D0)
      {
        v7 = 0;
      }

      v5 -= v7;
    }

    if (v5 >= *(&qword_1EAEC96D0 + v6))
    {
      v3 = 0;
      if (!a2)
      {
        return v3;
      }

      v9 = 0;
    }

    else
    {
      v8 = qword_1EAEC96E0[v6];
      v3 = *(v8 + 8 * v5);
      if (!a2)
      {
        return v3;
      }

      v9 = strlen(*(v8 + 8 * v5));
    }

    *a2 = v9;
    return v3;
  }

  return 0;
}

uint64_t sub_1951E269C(uint64_t result, int *a2)
{
  if (*a2 <= 0)
  {
    *(result + 120) = 0;
  }

  return result;
}

uint64_t icu::LocaleBased::getLocale@<X0>(const char **a1@<X0>, int a2@<W1>, int *a3@<X2>, icu::Locale *a4@<X8>)
{
  if (*a3 <= 0)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v6 = *a1;
      }

      else
      {
        v6 = 0;
        *a3 = 1;
      }
    }

    else
    {
      v6 = a1[1];
    }
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = "";
  }

  return icu::Locale::Locale(a4, v7, 0, 0, 0);
}

uint64_t icu::LocaleBased::getLocaleID(void *a1, int a2, int *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  if (!a2)
  {
    return a1[1];
  }

  if (a2 == 1)
  {
    return *a1;
  }

  result = 0;
  *a3 = 1;
  return result;
}

char *icu::LocaleBased::setLocaleIDs(char *this, const char *a2, const char *__src)
{
  v4 = this;
  if (a2)
  {
    this = strncpy(*this, a2, 0x9DuLL);
    (*v4)[156] = 0;
  }

  if (__src)
  {
    this = strncpy(v4[1], __src, 0x9DuLL);
    v4[1][156] = 0;
  }

  return this;
}

char *icu::LocaleBased::setLocaleIDs(char **a1, uint64_t a2, uint64_t a3)
{
  strcpy(*a1, *(a2 + 40));
  v5 = a1[1];
  v6 = *(a3 + 40);

  return strcpy(v5, v6);
}

icu::UnicodeString *icu::Locale::getDisplayLanguage(icu::Locale *this, icu::UnicodeString *a2)
{
  Default = icu::Locale::getDefault(this);

  return icu::Locale::getDisplayLanguage(this, Default, a2);
}

icu::UnicodeString *icu::Locale::getDisplayLanguage(icu::Locale *this, char **a2, icu::UnicodeString *a3)
{
  v18 = 0;
  Buffer = icu::UnicodeString::getBuffer(a3, 157);
  if (Buffer)
  {
    if ((*(a3 + 4) & 2) != 0)
    {
      v7 = 27;
    }

    else
    {
      v7 = *(a3 + 4);
    }

    v8 = sub_1951E3B38(*(this + 5), a2[5], Buffer, v7, ulocimp_getLanguage, "Languages", &v18);
    v9 = v8;
    if (v18 <= 0)
    {
      v10 = v8;
    }

    else
    {
      v10 = 0;
    }

    icu::UnicodeString::releaseBuffer(a3, v10);
    if (v18 != 15)
    {
      return a3;
    }

    v11 = icu::UnicodeString::getBuffer(a3, v9);
    if (v11)
    {
      v18 = 0;
      if ((*(a3 + 4) & 2) != 0)
      {
        v12 = 27;
      }

      else
      {
        v12 = *(a3 + 4);
      }

      v13 = sub_1951E3B38(*(this + 5), a2[5], v11, v12, ulocimp_getLanguage, "Languages", &v18);
      if (v18 <= 0)
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }

      icu::UnicodeString::releaseBuffer(a3, v14);
      return a3;
    }
  }

  v15 = *(a3 + 4);
  if (v15)
  {
    icu::UnicodeString::unBogus(a3);
  }

  else
  {
    if ((v15 & 0x8000u) == 0)
    {
      v16 = v15 >> 5;
    }

    else
    {
      v16 = *(a3 + 3);
    }

    if (v16)
    {
      *(a3 + 4) &= 0x1Eu;
    }
  }

  return a3;
}

icu::UnicodeString *icu::Locale::getDisplayScript(icu::Locale *this, icu::UnicodeString *a2)
{
  Default = icu::Locale::getDefault(this);

  return icu::Locale::getDisplayScript(this, Default, a2);
}

icu::UnicodeString *icu::Locale::getDisplayScript(icu::Locale *this, char **a2, icu::UnicodeString *a3)
{
  v18 = 0;
  Buffer = icu::UnicodeString::getBuffer(a3, 157);
  if (Buffer)
  {
    if ((*(a3 + 4) & 2) != 0)
    {
      v7 = 27;
    }

    else
    {
      v7 = *(a3 + 4);
    }

    DisplayScript = uloc_getDisplayScript(*(this + 5), a2[5], Buffer, v7, &v18);
    v9 = DisplayScript;
    if (v18 <= 0)
    {
      v10 = DisplayScript;
    }

    else
    {
      v10 = 0;
    }

    icu::UnicodeString::releaseBuffer(a3, v10);
    if (v18 != 15)
    {
      return a3;
    }

    v11 = icu::UnicodeString::getBuffer(a3, v9);
    if (v11)
    {
      v18 = 0;
      if ((*(a3 + 4) & 2) != 0)
      {
        v12 = 27;
      }

      else
      {
        v12 = *(a3 + 4);
      }

      v13 = uloc_getDisplayScript(*(this + 5), a2[5], v11, v12, &v18);
      if (v18 <= 0)
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }

      icu::UnicodeString::releaseBuffer(a3, v14);
      return a3;
    }
  }

  v15 = *(a3 + 4);
  if (v15)
  {
    icu::UnicodeString::unBogus(a3);
  }

  else
  {
    if ((v15 & 0x8000u) == 0)
    {
      v16 = v15 >> 5;
    }

    else
    {
      v16 = *(a3 + 3);
    }

    if (v16)
    {
      *(a3 + 4) &= 0x1Eu;
    }
  }

  return a3;
}

uint64_t uloc_getDisplayScript(uint64_t a1, char *a2, UChar *a3, int a4, int *a5)
{
  if (*a5 > 0)
  {
    return 0;
  }

  v13 = 0;
  v5 = sub_1951E3B38(a1, a2, a3, a4, ulocimp_getScript, "Scripts%stand-alone", &v13);
  if (a4 || v13 != 15)
  {
    if (v13 == -127)
    {
      return sub_1951E3B38(a1, a2, a3, a4, ulocimp_getScript, "Scripts", a5);
    }

    else
    {
      *a5 = v13;
    }
  }

  else
  {
    v11 = sub_1951E3B38(a1, a2, a3, 0, ulocimp_getScript, "Scripts", a5);
    if (v11 <= v5)
    {
      return v5;
    }

    else
    {
      return v11;
    }
  }

  return v5;
}

icu::UnicodeString *icu::Locale::getDisplayCountry(icu::Locale *this, icu::UnicodeString *a2)
{
  Default = icu::Locale::getDefault(this);

  return icu::Locale::getDisplayCountry(this, Default, a2);
}

icu::UnicodeString *icu::Locale::getDisplayCountry(icu::Locale *this, char **a2, icu::UnicodeString *a3)
{
  v18 = 0;
  Buffer = icu::UnicodeString::getBuffer(a3, 157);
  if (Buffer)
  {
    if ((*(a3 + 4) & 2) != 0)
    {
      v7 = 27;
    }

    else
    {
      v7 = *(a3 + 4);
    }

    DisplayCountry = uloc_getDisplayCountry(*(this + 5), a2[5], Buffer, v7, &v18);
    v9 = DisplayCountry;
    if (v18 <= 0)
    {
      v10 = DisplayCountry;
    }

    else
    {
      v10 = 0;
    }

    icu::UnicodeString::releaseBuffer(a3, v10);
    if (v18 != 15)
    {
      return a3;
    }

    v11 = icu::UnicodeString::getBuffer(a3, v9);
    if (v11)
    {
      v18 = 0;
      if ((*(a3 + 4) & 2) != 0)
      {
        v12 = 27;
      }

      else
      {
        v12 = *(a3 + 4);
      }

      v13 = uloc_getDisplayCountry(*(this + 5), a2[5], v11, v12, &v18);
      if (v18 <= 0)
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }

      icu::UnicodeString::releaseBuffer(a3, v14);
      return a3;
    }
  }

  v15 = *(a3 + 4);
  if (v15)
  {
    icu::UnicodeString::unBogus(a3);
  }

  else
  {
    if ((v15 & 0x8000u) == 0)
    {
      v16 = v15 >> 5;
    }

    else
    {
      v16 = *(a3 + 3);
    }

    if (v16)
    {
      *(a3 + 4) &= 0x1Eu;
    }
  }

  return a3;
}

uint64_t uloc_getDisplayCountry(uint64_t a1, char *a2, UChar *a3, uint64_t a4, UErrorCode *a5)
{
  v18 = 0;
  Country = uloc_getCountry(a1, &v18, 4, a5);
  if (*a5 > 0 || Country < 1)
  {
    return sub_1951E3B38(a1, a2, a3, a4, ulocimp_getRegion, "Countries", a5);
  }

  v12 = Country;
  if (!sub_1951E3C90(&v18))
  {
    return sub_1951E3B38(a1, a2, a3, a4, ulocimp_getRegion, "Countries", a5);
  }

  v13 = uldn_open(a2, 0, a5);
  if (*a5 > 0)
  {
    return sub_1951E3B38(a1, a2, a3, a4, ulocimp_getRegion, "Countries", a5);
  }

  v16 = v13;
  v14 = uldn_regionDisplayName(v13, &v18, a3, a4, a5);
  uldn_close(v16);
  if (v14 == v12)
  {
    v17 = 0;
    while (*(&v18 + v17) == a3[v17])
    {
      if (v12 == ++v17)
      {
        goto LABEL_15;
      }
    }

    if (v12 != v17)
    {
      return v12;
    }

LABEL_15:
    *a5 = U_USING_DEFAULT_WARNING;
    return v12;
  }

  return v14;
}

icu::UnicodeString *icu::Locale::getDisplayVariant(icu::Locale *this, icu::UnicodeString *a2)
{
  Default = icu::Locale::getDefault(this);

  return icu::Locale::getDisplayVariant(this, Default, a2);
}

icu::UnicodeString *icu::Locale::getDisplayVariant(icu::Locale *this, char **a2, icu::UnicodeString *a3)
{
  v18 = 0;
  Buffer = icu::UnicodeString::getBuffer(a3, 157);
  if (Buffer)
  {
    if ((*(a3 + 4) & 2) != 0)
    {
      v7 = 27;
    }

    else
    {
      v7 = *(a3 + 4);
    }

    v8 = sub_1951E3B38(*(this + 5), a2[5], Buffer, v7, ulocimp_getVariant, "Variants", &v18);
    v9 = v8;
    if (v18 <= 0)
    {
      v10 = v8;
    }

    else
    {
      v10 = 0;
    }

    icu::UnicodeString::releaseBuffer(a3, v10);
    if (v18 != 15)
    {
      return a3;
    }

    v11 = icu::UnicodeString::getBuffer(a3, v9);
    if (v11)
    {
      v18 = 0;
      if ((*(a3 + 4) & 2) != 0)
      {
        v12 = 27;
      }

      else
      {
        v12 = *(a3 + 4);
      }

      v13 = sub_1951E3B38(*(this + 5), a2[5], v11, v12, ulocimp_getVariant, "Variants", &v18);
      if (v18 <= 0)
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }

      icu::UnicodeString::releaseBuffer(a3, v14);
      return a3;
    }
  }

  v15 = *(a3 + 4);
  if (v15)
  {
    icu::UnicodeString::unBogus(a3);
  }

  else
  {
    if ((v15 & 0x8000u) == 0)
    {
      v16 = v15 >> 5;
    }

    else
    {
      v16 = *(a3 + 3);
    }

    if (v16)
    {
      *(a3 + 4) &= 0x1Eu;
    }
  }

  return a3;
}

icu::UnicodeString *icu::Locale::getDisplayName(icu::Locale *this, icu::UnicodeString *a2)
{
  Default = icu::Locale::getDefault(this);

  return icu::Locale::getDisplayName(this, Default, a2);
}

icu::UnicodeString *icu::Locale::getDisplayName(char **this, char **a2, icu::UnicodeString *a3)
{
  v18 = 0;
  Buffer = icu::UnicodeString::getBuffer(a3, 157);
  if (Buffer)
  {
    if ((*(a3 + 4) & 2) != 0)
    {
      v7 = 27;
    }

    else
    {
      v7 = *(a3 + 4);
    }

    DisplayName = uloc_getDisplayName(this[5], a2[5], Buffer, v7, &v18);
    v9 = DisplayName;
    if (v18 <= 0)
    {
      v10 = DisplayName;
    }

    else
    {
      v10 = 0;
    }

    icu::UnicodeString::releaseBuffer(a3, v10);
    if (v18 != 15)
    {
      return a3;
    }

    v11 = icu::UnicodeString::getBuffer(a3, v9);
    if (v11)
    {
      v18 = 0;
      if ((*(a3 + 4) & 2) != 0)
      {
        v12 = 27;
      }

      else
      {
        v12 = *(a3 + 4);
      }

      v13 = uloc_getDisplayName(this[5], a2[5], v11, v12, &v18);
      if (v18 <= 0)
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }

      icu::UnicodeString::releaseBuffer(a3, v14);
      return a3;
    }
  }

  v15 = *(a3 + 4);
  if (v15)
  {
    icu::UnicodeString::unBogus(a3);
  }

  else
  {
    if ((v15 & 0x8000u) == 0)
    {
      v16 = v15 >> 5;
    }

    else
    {
      v16 = *(a3 + 3);
    }

    if (v16)
    {
      *(a3 + 4) &= 0x1Eu;
    }
  }

  return a3;
}

uint64_t uloc_getDisplayName(char *a1, char *a2, UChar *a3, uint64_t a4, int *a5)
{
  v102 = *MEMORY[0x1E69E9840];
  v99 = 0;
  if (a5 && *a5 <= 0)
  {
    v7 = a4;
    if ((a4 & 0x80000000) == 0 && (a3 || !a4))
    {
      v101 = 0;
      v100 = 0;
      v98 = 0;
      v97 = 0;
      v96 = 0;
      uloc_getLanguage(a1, &v100, 12, &v96);
      Script = uloc_getScript(a1, &v97, 6, &v96);
      Country = uloc_getCountry(a1, &v96 + 4, 4, &v96);
      if (v96 <= 0 && (Script >= 1 && (!(v100 ^ 0x687A | BYTE2(v100)) || v100 == 6649209 || !(v100 ^ 0x736B | BYTE2(v100)) || !(v100 ^ 0x6170 | BYTE2(v100)) || !(v100 ^ 0x7275 | BYTE2(v100))) || Country >= 1 && sub_1951E3C90(&v96 + 4)))
      {
        v12 = uldn_open(a2, 0, &v96);
        if (v96 <= 0)
        {
          v75 = v12;
          v6 = uldn_localeDisplayName(v12, a1, a3, v7, a5);
          uldn_close(v75);
          goto LABEL_8;
        }
      }

      LODWORD(v100) = 0;
      v13 = ures_open("icudt76l-lang", a2, &v100);
      v14 = ures_getByKeyWithFallback(v13, "localeDisplayPattern", 0, &v100);
      StringByKeyWithFallback = ures_getStringByKeyWithFallback(v14, "separator", &v99 + 1, &v100);
      ucs1 = ures_getStringByKeyWithFallback(v14, "pattern", &v99, &v100);
      if (v14)
      {
        ures_close(v14);
      }

      if (v13)
      {
        ures_close(v13);
      }

      v16 = HIDWORD(v99) ? StringByKeyWithFallback : L"{0}, {1}";
      v17 = u_strstr(v16, "{");
      v18 = u_strstr(v16, "{");
      if (v17)
      {
        if (v18 && v18 >= v17)
        {
          v78 = v17 + 3;
          HIDWORD(v99) = (v18 - (v17 + 3)) >> 1;
          if (!v99 || v99 == 9 && !u_strncmp(ucs1, "{", 9))
          {
            v94 = 0;
            LODWORD(v99) = 9;
            v81 = 5;
            v82 = 0;
            v91 = 40;
            v24 = 91;
            v25 = 41;
            v26 = 93;
            ucs1 = "{";
LABEL_42:
            v84 = v26;
            v85 = v25;
            v86 = v24;
            v27 = 0;
            v28 = 1;
            v29 = 1;
            v79 = v7;
            while (1)
            {
              v30 = v82;
              v76 = v27;
              if (!v82)
              {
                goto LABEL_49;
              }

              v31 = v82;
              v32 = a3;
              if (v82 <= v7)
              {
                break;
              }

LABEL_50:
              v36 = 0;
              v37 = 0;
              v80 = 0;
              v87 = 0;
              v90 = 0;
              v83 = 0;
              do
              {
                v38 = v7 - v30;
                if (v7 - v30 < 1)
                {
                  v39 = 0;
                }

                else
                {
                  v32 = &a3[v30];
                  v39 = v38;
                }

                if (v37 == v94)
                {
                  if (v29)
                  {
                    v40 = v36;
                    v41 = sub_1951E3B38(a1, a2, v32, v39, ulocimp_getLanguage, "Languages", a5);
                    v36 = v40;
                    v42 = 0;
                    v87 = v30;
                    v30 = (v41 + v30);
                    v90 = v41;
                    v29 = v41 > 0;
                    goto LABEL_107;
                  }

                  v29 = 0;
                  goto LABEL_64;
                }

                if (!v28)
                {
                  v28 = 0;
LABEL_64:
                  v42 = 0;
                  goto LABEL_107;
                }

                LODWORD(v100) = 0;
                if (v36 > 1)
                {
                  v43 = v91;
                  if (v36 == 2)
                  {
                    v56 = v29;
                    LODWORD(v44) = sub_1951E3B38(a1, a2, v32, v39, ulocimp_getVariant, "Variants", a5);
                    v52 = 2;
                    v29 = v56;
                    v54 = v84;
                    v53 = v85;
                    v55 = v86;
                    goto LABEL_93;
                  }

                  v88 = v36;
                  v89 = v29;
                  if (v36 == 3)
                  {
                    v45 = uloc_openKeywords(a1, a5);
                    if (v83)
                    {
                      uenum_close(v83);
                    }

                    v46 = v45;
                    v43 = v91;
                    goto LABEL_71;
                  }
                }

                else
                {
                  v43 = v91;
                  if (!v36)
                  {
                    v51 = v29;
                    LODWORD(v44) = sub_1951E3B38(a1, a2, v32, v39, ulocimp_getScript, "Scripts", a5);
                    v52 = 0;
                    v29 = v51;
                    v54 = v84;
                    v53 = v85;
                    v55 = v86;
                    v42 = 1;
                    LODWORD(v80) = v30;
                    goto LABEL_94;
                  }

                  v88 = v36;
                  v89 = v29;
                  if (v36 == 1)
                  {
                    LODWORD(v44) = uloc_getDisplayCountry(a1, a2, v32, v39, a5);
                    v42 = 1;
LABEL_80:
                    v53 = v85;
                    v55 = v86;
                    v54 = v84;
                    v52 = v88;
                    v29 = v89;
                    goto LABEL_94;
                  }
                }

                v46 = v83;
LABEL_71:
                v83 = v46;
                v44 = uenum_next(v46, &v100, a5);
                v42 = v44 != 0;
                if (!v44)
                {
                  LODWORD(v7) = v79;
                  goto LABEL_80;
                }

                v47 = v44;
                DisplayKeyword = uloc_getDisplayKeyword(v44, a2, v32, v39, a5);
                LODWORD(v100) = DisplayKeyword;
                if (DisplayKeyword)
                {
                  if (DisplayKeyword < v39)
                  {
                    v32[DisplayKeyword] = 61;
                  }

                  v49 = DisplayKeyword + 1;
                  LODWORD(v100) = v49;
                  v50 = v39 - v49;
                  if (v39 - v49 < 1)
                  {
                    v50 = 0;
                  }

                  else
                  {
                    v32 += v49;
                  }
                }

                else
                {
                  v50 = v39;
                }

                if (*a5 == 15)
                {
                  *a5 = 0;
                }

                DisplayKeywordValue = uloc_getDisplayKeywordValue(a1, v47, a2, v32, v50, a5);
                v58 = v100;
                if (v100)
                {
                  LODWORD(v7) = v79;
                  v53 = v85;
                  v55 = v86;
                  v54 = v84;
                  v52 = v88;
                  v29 = v89;
                  if (!DisplayKeywordValue)
                  {
                    v58 = v100 - 1;
                    LODWORD(v100) = v100 - 1;
                  }

                  if (v38 >= 1)
                  {
                    v32 = &a3[v30];
                  }

                  v43 = v91;
                }

                else
                {
                  LODWORD(v39) = v50;
                  LODWORD(v7) = v79;
                  v43 = v91;
                  v53 = v85;
                  v55 = v86;
                  v54 = v84;
                  v52 = v88;
                  v29 = v89;
                }

                LODWORD(v44) = v58 + DisplayKeywordValue;
LABEL_93:
                v42 = 1;
LABEL_94:
                if (v44 < 1)
                {
                  if (!v42)
                  {
                    v70 = HIDWORD(v99);
                    if (v30 == v80)
                    {
                      v70 = 0;
                    }

                    v30 = (v30 - v70);
                    HIDWORD(v80) = v30 - v80;
                    v28 = v30 > v80;
                    goto LABEL_106;
                  }
                }

                else
                {
                  v59 = HIDWORD(v99);
                  v60 = HIDWORD(v99) + v44;
                  if (HIDWORD(v99) + v44 <= v39)
                  {
                    v61 = &v32[v44];
                    do
                    {
                      v62 = *v32;
                      v63 = v55;
                      if (v62 == v43 || (v63 = v54, v62 == v53))
                      {
                        *v32 = v63;
                      }

                      ++v32;
                    }

                    while (v32 < v61);
                    v64 = v78;
                    if (v59 >= 1)
                    {
                      do
                      {
                        v65 = *v64++;
                        *v32++ = v65;
                        --v59;
                      }

                      while (v59);
                    }
                  }

                  v30 = (v60 + v30);
                }

                v28 = 1;
LABEL_106:
                v36 = (v52 + 1);
LABEL_107:
                if (*a5 == 15)
                {
                  *a5 = 0;
                }

                if (!v42)
                {
                  if (v29 && v28)
                  {
                    v66 = v31 + 3;
                    if (v37)
                    {
                      v31 = v99;
                    }

                    else
                    {
                      v31 = v81;
                    }

                    v67 = (v31 - v66 + v30);
                    if (v67 <= v7)
                    {
                      v32 = &a3[v30];
                      if (v31 - v66 >= 1)
                      {
                        v68 = &ucs1[v66];
                        do
                        {
                          v69 = *v68++;
                          *v32++ = v69;
                          ++v66;
                        }

                        while (v31 != v66);
                      }

                      v31 = v66;
                    }

                    v30 = v67;
                  }

                  else if (v37)
                  {
                    if (v30 >= 1)
                    {
                      v30 = v29 ? v90 : HIDWORD(v80);
                      if (a3 && v82)
                      {
                        if (v30 + v82 <= v7)
                        {
                          v71 = v80;
                          if (v29)
                          {
                            v71 = v87;
                          }

                          v72 = v36;
                          v73 = v29;
                          u_memmove(a3, &a3[v71], v30);
                          v36 = v72;
                          v29 = v73;
                        }

                        else
                        {
                          v82 = 0;
                          v76 = 1;
                        }
                      }
                    }
                  }

                  else
                  {
                    v82 = 0;
                    v30 = 0;
                  }

                  ++v37;
                }
              }

              while (v37 < 2);
              if (v83)
              {
                v74 = v29;
                uenum_close(v83);
                v29 = v74;
              }

              v27 = 1;
              if (!v76)
              {
                v6 = u_terminateUChars(a3, v7, v30, a5);
                goto LABEL_8;
              }
            }

            if (v82 >= 1)
            {
              v33 = v82;
              v34 = ucs1;
              v32 = a3;
              do
              {
                v35 = *v34++;
                *v32++ = v35;
                --v33;
              }

              while (v33);
              v31 = v82;
              goto LABEL_50;
            }

LABEL_49:
            v31 = 0;
            v32 = a3;
            goto LABEL_50;
          }

          v19 = u_strstr(ucs1, "{");
          v20 = u_strstr(ucs1, "{");
          if (v19 && v20)
          {
            v21 = (v19 - ucs1) >> 1;
            v22 = (v20 - ucs1) >> 1;
            v94 = v22 < v21;
            if (v22 <= v21)
            {
              v23 = (v19 - ucs1) >> 1;
            }

            else
            {
              v23 = (v20 - ucs1) >> 1;
            }

            if (v22 <= v21)
            {
              LODWORD(v21) = (v20 - ucs1) >> 1;
            }

            v81 = v23;
            v82 = v21;
            if (u_strchr(ucs1, 0xFF08u))
            {
              v91 = 65288;
              v24 = -197;
              v25 = 65289;
              v26 = -195;
            }

            else
            {
              v91 = 40;
              v24 = 91;
              v25 = 41;
              v26 = 93;
            }

            goto LABEL_42;
          }
        }
      }
    }

    v6 = 0;
    *a5 = 1;
    goto LABEL_8;
  }

  v6 = 0;
LABEL_8:
  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

icu::UnicodeString *icu::BreakIterator::getDisplayName(icu::BreakIterator *this, const icu::Locale *a2, icu::UnicodeString *a3)
{
  Default = icu::Locale::getDefault(this);

  return icu::Locale::getDisplayName(this, Default, a2);
}

uint64_t sub_1951E3B38(uint64_t a1, char *a2, UChar *a3, int a4, void (*a5)(void **__return_ptr, uint64_t, int *), char *a6, int *a7)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*a7 <= 0)
  {
    if (a4 < 0 || !a3 && a4)
    {
      v7 = 0;
      *a7 = 1;
    }

    else
    {
      v17 = 0;
      v20 = 0u;
      v21 = 0u;
      *v18 = 0u;
      v19 = 0u;
      a5(v18, a1, &v17);
      if (v17 < 1)
      {
        if (DWORD2(v21))
        {
          if (a6 == "Countries")
          {
            v13 = "icudt76l-region";
          }

          else
          {
            v13 = "icudt76l-lang";
          }

          v14 = sub_1951E4024(v13, a2, a6, 0, v18[0], v18[0], a3, a4, a7);
        }

        else
        {
          v14 = u_terminateUChars(a3, a4, 0, a7);
        }

        v7 = v14;
      }

      else
      {
        v7 = 0;
        *a7 = 1;
      }

      if (BYTE4(v18[1]))
      {
        free(v18[0]);
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v7;
}

BOOL sub_1951E3C90(unsigned __int8 *a1)
{
  v1 = 0;
  v2 = *a1;
  if (v2 > 0x4C)
  {
    if (v2 == 77)
    {
      if (a1[1] != 79)
      {
        return 0;
      }
    }

    else
    {
      if (v2 != 84)
      {
        return v1;
      }

      if (a1[1] != 87)
      {
        return 0;
      }
    }

    return a1[2] == 0;
  }

  if (v2 == 67)
  {
    if (a1[1] != 78)
    {
      return 0;
    }

    return !a1[2];
  }

  if (v2 == 72)
  {
    if (a1[1] != 75)
    {
      return 0;
    }

    return !a1[2];
  }

  return v1;
}

uint64_t uloc_getDisplayKeyword(char *a1, char *a2, UChar *a3, int a4, int *a5)
{
  if (!a5 || *a5 > 0)
  {
    return 0;
  }

  if (a4 < 0 || !a3 && a4)
  {
    *a5 = 1;
    return 0;
  }

  return sub_1951E4024("icudt76l-lang", a2, "Keys", 0, a1, a1, a3, a4, a5);
}

uint64_t uloc_getDisplayKeywordValue(char *a1, char *__s, char *a3, UChar *a4, int a5, UErrorCode *a6)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!a6 || *a6 > 0)
  {
    v7 = 0;
    goto LABEL_4;
  }

  if (a5 < 0 || !a4 && a5)
  {
    v7 = 0;
    *a6 = U_ILLEGAL_ARGUMENT_ERROR;
    goto LABEL_4;
  }

  memset(&v23[1], 0, 48);
  *length = 0;
  v23[0] = &v23[1] + 5;
  LODWORD(v23[1]) = 40;
  if (__s)
  {
    if (*__s)
    {
      v15 = strlen(__s);
      ulocimp_getKeywordValue(a1, __s, v15, a6, count);
      icu::CharString::operator=(v23, count);
      if (v22)
      {
        free(*count);
      }
    }
  }

  if (!uprv_stricmp(__s, "currency"))
  {
    count[0] = 0;
    v16 = ures_open("icudt76l-curr", a3, a6);
    v17 = ures_getByKey(v16, "Currencies", 0, a6);
    v18 = ures_getByKeyWithFallback(v17, v23[0], 0, a6);
    StringByIndex = ures_getStringByIndex(v18, 1, count, a6);
    if (*a6 >= 1)
    {
      if (*a6 != U_MISSING_RESOURCE_ERROR)
      {
        v7 = 0;
        goto LABEL_26;
      }

      *a6 = U_USING_DEFAULT_WARNING;
    }

    if (StringByIndex)
    {
      v7 = count[0];
      if (count[0] <= a5)
      {
        u_memcpy(a4, StringByIndex, count[0]);
        v20 = count[0];
LABEL_25:
        v7 = u_terminateUChars(a4, a5, v20, a6);
        goto LABEL_26;
      }
    }

    else
    {
      v7 = length[0];
      if (length[0] <= a5)
      {
        u_charsToUChars(v23[0], a4, length[0]);
        v20 = length[0];
        goto LABEL_25;
      }
    }

    *a6 = U_BUFFER_OVERFLOW_ERROR;
LABEL_26:
    if (v18)
    {
      ures_close(v18);
    }

    if (v17)
    {
      ures_close(v17);
    }

    if (v16)
    {
      ures_close(v16);
    }

    goto LABEL_32;
  }

  v7 = sub_1951E4024("icudt76l-lang", a3, "Types", __s, v23[0], v23[0], a4, a5, a6);
LABEL_32:
  if (BYTE4(v23[1]))
  {
    free(v23[0]);
  }

LABEL_4:
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t sub_1951E4024(const char *a1, char *a2, char *__s1, char *a4, char *a5, const char *a6, UChar *a7, int a8, int *a9)
{
  v42 = *MEMORY[0x1E69E9840];
  if (*a9 <= 0)
  {
    v28 = 0;
    if (a5)
    {
      v18 = strncmp(__s1, "Languages", 9uLL);
      if (!v18 && strtol(a5, 0, 10))
      {
        *a9 = 2;
        goto LABEL_18;
      }

      TableStringWithFallback = uloc_getTableStringWithFallback(a1, a2, __s1, a4, a5, &v28, a9);
      v20 = *a9;
      if (v18)
      {
        StringByKey = TableStringWithFallback;
LABEL_12:
        if (v20 <= 0)
        {
          v24 = uprv_min(v28, a8);
          if (v24 >= 1 && StringByKey)
          {
            u_memcpy(a7, StringByKey, v24);
          }

          goto LABEL_19;
        }

LABEL_18:
        v25 = strlen(a6);
        v28 = v25;
        v26 = uprv_min(v25, a8);
        u_charsToUChars(a6, a7, v26);
        *a9 = -127;
LABEL_19:
        result = u_terminateUChars(a7, a8, v28, a9);
        goto LABEL_20;
      }

      StringByKey = TableStringWithFallback;
      if (v20 < 1)
      {
        goto LABEL_12;
      }

      *a9 = 0;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      memset(v29, 0, sizeof(v29));
      icu::Locale::createCanonical(a5, v29);
      StringByKey = uloc_getTableStringWithFallback(a1, a2, __s1, a4, *(&v30 + 1), &v28, a9);
      icu::Locale::~Locale(v29);
LABEL_11:
      v20 = *a9;
      goto LABEL_12;
    }

    v22 = ures_open(a1, a2, a9);
    v23 = v22;
    if (*a9 <= 0)
    {
      StringByKey = ures_getStringByKey(v22, __s1, &v28, a9);
      if (!v23)
      {
        goto LABEL_11;
      }
    }

    else
    {
      StringByKey = 0;
      if (!v22)
      {
        goto LABEL_11;
      }
    }

    ures_close(v23);
    goto LABEL_11;
  }

  result = 0;
LABEL_20:
  v27 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_1951E4274(int *a1)
{
  result = sub_1951F0C8C(a1);
  if (*a1 <= 0)
  {
    if (result[38])
    {
      v3 = result[39] == 0;
    }

    else
    {
      v3 = 1;
    }

    if (!v3 && result[40] != 0 && result[43] != 0)
    {
      operator new();
    }

    *a1 = 2;
  }

  return result;
}

uint64_t sub_1951E432C()
{
  v0 = qword_1EAEC9700;
  if (qword_1EAEC9700)
  {
    icu::BytesTrie::~BytesTrie((qword_1EAEC9700 + 8));
    MEMORY[0x19A8B2600](v0, 0x10F0C407D6706D8);
  }

  qword_1EAEC9700 = 0;
  atomic_store(0, &dword_1EAEC9708);
  return 1;
}

uint64_t sub_1951E4388(int *a1)
{
  if (*a1 > 0)
  {
    return 0;
  }

  if (atomic_load_explicit(&dword_1EAEC9708, memory_order_acquire) == 2 || !icu::umtx_initImplPreInit(&dword_1EAEC9708))
  {
    if (dword_1EAEC970C >= 1)
    {
      *a1 = dword_1EAEC970C;
    }
  }

  else
  {
    sub_1951E4274(a1);
    dword_1EAEC970C = *a1;
    icu::umtx_initImplPostInit(&dword_1EAEC9708);
  }

  return qword_1EAEC9700;
}

uint64_t sub_1951E4420(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *a1 = a3;
  v4 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v4;
  *(a1 + 24) = v4;
  *(a1 + 32) = -1;
  *(a1 + 40) = *(a2 + 1);
  *(a1 + 56) = a2[3];
  *(a1 + 64) = *(a2 + 8);
  v5 = a2[5];
  *(a1 + 68) = *v5;
  *(a1 + 72) = v5[1];
  *(a1 + 76) = v5[2];
  *(a1 + 80) = v5[3];
  v17 = 0;
  v13[0] = "en";
  v13[1] = "Latn";
  v13[2] = "US";
  v14 = 0;
  v15 = sub_1951F366C("US");
  v16 = 7;
  v12 = 0;
  v8[0] = "en";
  v8[1] = "Latn";
  v8[2] = "GB";
  v9 = 0;
  v10 = sub_1951F366C("GB");
  v11 = 7;
  v7 = v8;
  *(a1 + 84) = (sub_1951E4558(a1, v13, &v7, 1, 400, 0, 0) >> 3) & 0x7F;
  if (v9)
  {
    sub_1951F388C(v8);
  }

  if (v14)
  {
    sub_1951F388C(v13);
  }

  return a1;
}

uint64_t sub_1951E4558(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, unsigned int a6, int a7)
{
  memset(v41, 0, sizeof(v41));
  *(v41 + 8) = *(a1 + 16);
  DWORD2(v41[1]) = *(a1 + 32);
  v10 = sub_1951E492C(v41, *a2, 0);
  if (a4 <= 1 || (v10 & 0x80000000) != 0)
  {
    if (a4 < 1)
    {
      v12 = 4294967072;
      goto LABEL_52;
    }

    v11 = 0;
  }

  else
  {
    v11 = (*&v41[1] - *(&v41[0] + 1)) | ((DWORD2(v41[1]) + 2) << 59);
  }

  v12 = 0;
  v13 = 0;
  v36 = (v11 >> 59) - 2;
  v35 = v11 & 0x7FFFFFFFFFFFFFFLL;
  v32 = -1;
  v34 = -1;
  v38 = a4;
  do
  {
    v14 = *(a3 + 8 * v13);
    v15 = v10;
    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_12;
    }

    if (v13)
    {
      DWORD2(v41[1]) = v36;
      *&v41[1] = *(&v41[0] + 1) + v35;
    }

    v16 = sub_1951E492C(v41, *v14, 1);
    if (v16 < 0)
    {
LABEL_12:
      if (!strcmp(*a2, *v14))
      {
        v19 = 0;
        v18 = 0;
      }

      else
      {
        v18 = 0;
        v19 = *(a1 + 68);
      }

      v17 = 1;
    }

    else
    {
      v17 = 0;
      v18 = v16 & 0x180;
      v19 = v16 & 0x7FFFFE7F;
    }

    v20 = a5 + 7;
    if (a6 == 1)
    {
      v21 = v19 >> 2;
    }

    else
    {
      v21 = v19;
    }

    if (v21 <= v20 >> 3)
    {
      if (((v18 == 0) & ~v17) != 0)
      {
        v23 = sub_1951E49DC(v41, (*&v41[1] - *(&v41[0] + 1)) | ((DWORD2(v41[1]) + 2) << 59), *(a2 + 8), *(v14 + 8));
        LOWORD(v18) = v23;
        v22 = v23 & 0xFFFFFEFF;
      }

      else
      {
        v22 = !strcmp(*(a2 + 8), *(v14 + 8)) ? 0 : *(a1 + 72);
      }

      v24 = v20 >> 3;
      v25 = v22 + v21;
      v26 = v24 - (v22 + v21);
      if (v24 >= v25)
      {
        if (strcmp(*(a2 + 16), *(v14 + 16)))
        {
          if ((v17 | ((v18 & 0x100) >> 8)) == 1)
          {
            v25 += *(a1 + 76);
          }

          else
          {
            if (*(a1 + 80) > v26)
            {
              goto LABEL_48;
            }

            v25 += sub_1951E4A8C(v41, (*&v41[1] - *(&v41[0] + 1)) | ((DWORD2(v41[1]) + 2) << 59), *(*(a1 + 48) + 8 * *(*(a1 + 40) + *(a2 + 32))), *(*(a1 + 48) + 8 * *(*(a1 + 40) + *(v14 + 32))), v26);
          }
        }

        v27 = (8 * v25);
        if (v27)
        {
          if (v27 >= a5)
          {
            if (v27 == a5 && (v34 & 0x80000000) == 0)
            {
              if (a7 != 1 || (v42 = a2, (sub_1951E4558(a1, v14, &v42, 1, a5, a6, 0) & 0x80000000) == 0))
              {
                v30 = v34;
                v32 = sub_1951F1C8C(*a1, v14, *(a3 + 8 * v34), v32);
                if (v32)
                {
                  v30 = v13;
                }

                v34 = v30;
              }
            }
          }

          else
          {
            if (a7 != 1)
            {
              goto LABEL_40;
            }

            v42 = a2;
            if ((sub_1951E4558(a1, v14, &v42, 1, a5, a6, 0) & 0x80000000) == 0)
            {
              goto LABEL_40;
            }
          }
        }

        else
        {
          v28 = *(a2 + 36);
          v29 = *(v14 + 36);
          v27 = v29 ^ v28;
          if (v27 < a5)
          {
            if (a7 != 1 || (v42 = a2, (sub_1951E4558(a1, v14, &v42, 1, a5, a6, 0) & 0x80000000) == 0))
            {
              if (v28 == v29)
              {
                goto LABEL_52;
              }

LABEL_40:
              v32 = -1;
              v34 = v13;
              a5 = v27;
            }
          }
        }
      }
    }

LABEL_48:
    ++v13;
    v12 = (v12 + 1024);
    v10 = v15;
  }

  while (v38 != v13);
  if (v34 >= 0)
  {
    v12 = a5 | (v34 << 10);
  }

  else
  {
    v12 = 4294967072;
  }

LABEL_52:
  icu::BytesTrie::~BytesTrie(v41);
  return v12;
}

uint64_t sub_1951E492C(icu::BytesTrie *this, unsigned __int8 *a2, int a3)
{
  v4 = *a2;
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = a2 + 1;
  while (1)
  {
    v9 = *v7++;
    v8 = v9;
    if (!v9)
    {
      break;
    }

    v10 = icu::BytesTrie::next(this, v4);
    v4 = v8;
    if ((v10 & 1) == 0)
    {
      return 0xFFFFFFFFLL;
    }
  }

  v12 = icu::BytesTrie::next(this, v4 | 0x80);
  v13 = v12;
  if (!a3)
  {
    if (v12)
    {
      return 0;
    }

    return 0xFFFFFFFFLL;
  }

  if (v12 < 2)
  {
    return 0xFFFFFFFFLL;
  }

  LODWORD(result) = icu::BytesTrie::readValue((*(this + 2) + 1), (**(this + 2) >> 1));
  if (v13 == 2)
  {
    return result | 0x100;
  }

  else
  {
    return result;
  }
}

uint64_t sub_1951E49DC(uint64_t a1, unint64_t a2, char *a3, char *a4)
{
  if ((sub_1951E492C(a1, a3, 0) & 0x80000000) != 0 || (result = sub_1951E492C(a1, a4, 1), (result & 0x80000000) != 0))
  {
    *(a1 + 24) = (a2 >> 59) - 2;
    *(a1 + 16) = *(a1 + 8) + (a2 & 0x7FFFFFFFFFFFFFFLL);
    v9 = icu::BytesTrie::next(a1, 0x2Au);
    LODWORD(result) = strcmp(a3, a4);
    if (result)
    {
      LODWORD(result) = icu::BytesTrie::readValue((*(a1 + 16) + 1), (**(a1 + 16) >> 1));
    }

    if (v9 == 2)
    {
      return result | 0x100;
    }

    else
    {
      return result;
    }
  }

  return result;
}

uint64_t sub_1951E4A8C(icu::BytesTrie *this, unint64_t a2, char *a3, char *a4, int a5)
{
  v7 = *a3;
  v8 = a3 + 1;
  v30 = a4 + 1;
  v9 = *a4;
  if (a3[1] | a4[1])
  {
    v11 = a4;
    v12 = 0;
    v13 = 0;
    v14 = *a4;
    v15 = a4[1];
    v16 = (a2 >> 59) - 2;
    v29 = a2 & 0x7FFFFFFFFFFFFFFLL;
    v26 = v16;
    v27 = v15;
    while ((icu::BytesTrie::next(this, v7 | 0x80u) & 1) == 0)
    {
      if ((v13 & 1) == 0)
      {
        result = sub_1951E4CE0(this, a2);
        v12 = v12 <= result ? result : v12;
        if (result > a5)
        {
          return result;
        }
      }

      v13 = 1;
LABEL_27:
      LOBYTE(v7) = *v8;
      if (!*v8)
      {
        return v12;
      }

      ++v8;
      *(this + 6) = v16;
      *(this + 2) = *(this + 1) + v29;
      v14 = *v11;
    }

    if (v15)
    {
      v18 = (*(this + 2) - *(this + 1)) | ((*(this + 6) + 2) << 59);
    }

    else
    {
      v18 = 0;
    }

    v19 = (v18 >> 59) - 2;
    v20 = v18 & 0x7FFFFFFFFFFFFFFLL;
    for (i = v30; ; ++i)
    {
      if (icu::BytesTrie::next(this, v14 | 0x80u) < 2)
      {
        result = (v13 & 1) != 0 ? 0 : sub_1951E4CE0(this, a2);
        v13 = 1;
      }

      else
      {
        result = icu::BytesTrie::readValue((*(this + 2) + 1), (**(this + 2) >> 1));
      }

      if (result > a5)
      {
        break;
      }

      if (v12 <= result)
      {
        v12 = result;
      }

      else
      {
        v12 = v12;
      }

      v14 = *i;
      if (!*i)
      {
        v11 = a4;
        v16 = v26;
        v15 = v27;
        goto LABEL_27;
      }

      *(this + 6) = v19;
      *(this + 2) = *(this + 1) + v20;
    }
  }

  else if ((icu::BytesTrie::next(this, v7 | 0x80u) & 1) != 0 && icu::BytesTrie::next(this, v9 | 0x80u) >= 2)
  {
    v22 = *(this + 2);
    v24 = *v22;
    v23 = (v22 + 1);
    v25 = (v24 >> 1);

    return icu::BytesTrie::readValue(v23, v25);
  }

  else
  {

    return sub_1951E4CE0(this, a2);
  }

  return result;
}

uint64_t sub_1951E4CE0(uint64_t a1, unint64_t a2)
{
  *(a1 + 24) = (a2 >> 59) - 2;
  *(a1 + 16) = *(a1 + 8) + (a2 & 0x7FFFFFFFFFFFFFFLL);
  icu::BytesTrie::next(a1, 0x2Au);
  v3 = *(a1 + 16);
  v5 = *v3;
  v4 = (v3 + 1);
  v6 = (v5 >> 1);

  return icu::BytesTrie::readValue(v4, v6);
}

BOOL sub_1951E4D40(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 64) < 1)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  do
  {
    v6 = sub_1951F3900(a2, *(a1 + 56) + v4);
    result = v6;
    if (v6)
    {
      break;
    }

    ++v5;
    v4 += 48;
  }

  while (v5 < *(a1 + 64));
  return result;
}

uint64_t sub_1951E4DC0(uint64_t a1, char *a2, char *a3, char *a4, uint64_t a5)
{
  v19[8] = *MEMORY[0x1E69E9840];
  v18 = 0;
  TableStringWithFallback = uloc_getTableStringWithFallback(*a1, *(a1 + 48), a2, a3, a4, &v18, &v18 + 1);
  v8 = v18;
  if (SHIDWORD(v18) > 0 || v18 < 1)
  {
    icu::UnicodeString::UnicodeString(v19, a4, 0xFFFFFFFFLL, 0);
    v10 = icu::UnicodeString::copyFrom(a5, v19, 0);
    icu::UnicodeString::~UnicodeString(v19);
  }

  else
  {
    v11 = TableStringWithFallback;
    icu::UnicodeString::unBogus(a5);
    v12 = *(a5 + 8);
    v13 = v12;
    v14 = v12 >> 5;
    if (v13 >= 0)
    {
      v15 = v14;
    }

    else
    {
      v15 = *(a5 + 12);
    }

    v10 = icu::UnicodeString::doReplace(a5, 0, v15, v11, 0, v8);
  }

  v16 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t sub_1951E4ED0(uint64_t a1, char *a2, char *a3, char *a4, uint64_t a5)
{
  v14 = 0;
  TableStringWithFallback = uloc_getTableStringWithFallback(*a1, *(a1 + 48), a2, a3, a4, &v14, &v14 + 1);
  if (SHIDWORD(v14) <= 0)
  {
    v7 = TableStringWithFallback;
    v8 = v14;
    icu::UnicodeString::unBogus(a5);
    v9 = *(a5 + 8);
    v10 = v9;
    v11 = v9 >> 5;
    if (v10 >= 0)
    {
      v12 = v11;
    }

    else
    {
      v12 = *(a5 + 12);
    }

    return icu::UnicodeString::doReplace(a5, 0, v12, v7, 0, v8);
  }

  else
  {
    icu::UnicodeString::setToBogus(a5);
  }

  return a5;
}

uint64_t sub_1951E4F94(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = &unk_1F09321B8;
  icu::Locale::Locale((a1 + 8));
  *(a1 + 232) = a3;
  *(a1 + 240) = "icudt76l-lang";
  icu::Locale::Locale((a1 + 248), a2);
  *(a1 + 472) = "icudt76l-region";
  icu::Locale::Locale((a1 + 480), a2);
  icu::UnicodeString::UnicodeString(a1 + 712, 0);
  icu::UnicodeString::UnicodeString(a1 + 784, 0);
  icu::UnicodeString::UnicodeString(a1 + 856, 0);
  *(a1 + 920) = 256;
  *(a1 + 928) = 0;
  *(a1 + 936) = &unk_1F0935D00;
  *(a1 + 944) = 2;
  *(a1 + 1000) = &unk_1F0935D00;
  *(a1 + 1008) = 2;
  *(a1 + 1064) = &unk_1F0935D00;
  *(a1 + 1072) = 2;
  *(a1 + 1128) = &unk_1F0935D00;
  *(a1 + 1136) = 2;
  *(a1 + 1192) = &unk_1F0935D00;
  *(a1 + 1200) = 2;
  *(a1 + 1256) = 0x30000000200;
  sub_1951E5118(a1);
  return a1;
}

void sub_1951E5118(uint64_t a1)
{
  v46 = *MEMORY[0x1E69E9840];
  v2 = a1 + 248;
  Root = icu::Locale::getRoot(a1);
  if (icu::Locale::operator==(v2, Root))
  {
    v4 = a1 + 480;
  }

  else
  {
    v4 = v2;
  }

  icu::Locale::operator=((a1 + 8), v4);
  v42 = 0u;
  v45 = 0;
  v44 = 0u;
  v43 = 0u;
  v41 = &unk_1F0935D00;
  LOWORD(v42) = 2;
  sub_1951E4ED0(a1 + 240, "localeDisplayPattern", 0, "separator", &v41);
  if (v42)
  {
    icu::UnicodeString::UnicodeString(&v36, "{0}, {1}", 0xFFFFFFFFLL, 0);
    icu::UnicodeString::operator=(&v41, &v36);
    icu::UnicodeString::~UnicodeString(&v36);
  }

  v27 = U_ZERO_ERROR;
  icu::SimpleFormatter::applyPatternMinMaxArguments((a1 + 704), &v41, 2, 2, 0, &v27);
  v37 = 0u;
  v40 = 0;
  v39 = 0u;
  v38 = 0u;
  v36 = &unk_1F0935D00;
  LOWORD(v37) = 2;
  sub_1951E4ED0(a1 + 240, "localeDisplayPattern", 0, "pattern", &v36);
  if (v37)
  {
    icu::UnicodeString::UnicodeString(&v31, "{0} ({1})", 0xFFFFFFFFLL, 0);
    icu::UnicodeString::operator=(&v36, &v31);
    icu::UnicodeString::~UnicodeString(&v31);
  }

  icu::SimpleFormatter::applyPatternMinMaxArguments((a1 + 776), &v36, 2, 2, 0, &v27);
  if ((v37 & 0x8000u) == 0)
  {
    v5 = v37 >> 5;
  }

  else
  {
    v5 = DWORD1(v37);
  }

  if ((icu::UnicodeString::doIndexOf(&v36, 0xFF08u, 0, v5) & 0x80000000) != 0)
  {
    LOWORD(v31) = 40;
    icu::UnicodeString::unBogus(a1 + 936);
    if (*(a1 + 944) < 0)
    {
      v7 = *(a1 + 948);
    }

    else
    {
      v7 = *(a1 + 944) >> 5;
    }

    icu::UnicodeString::doReplace(a1 + 936, 0, v7, &v31, 0, 1);
    LOWORD(v31) = 91;
    icu::UnicodeString::unBogus(a1 + 1000);
    if (*(a1 + 1008) < 0)
    {
      v15 = *(a1 + 1012);
    }

    else
    {
      v15 = *(a1 + 1008) >> 5;
    }

    icu::UnicodeString::doReplace(a1 + 1000, 0, v15, &v31, 0, 1);
    LOWORD(v31) = 41;
    icu::UnicodeString::unBogus(a1 + 1064);
    if (*(a1 + 1072) < 0)
    {
      v16 = *(a1 + 1076);
    }

    else
    {
      v16 = *(a1 + 1072) >> 5;
    }

    icu::UnicodeString::doReplace(a1 + 1064, 0, v16, &v31, 0, 1);
    LOWORD(v31) = 93;
    icu::UnicodeString::unBogus(a1 + 1128);
    if (*(a1 + 1136) < 0)
    {
      v17 = *(a1 + 1140);
    }

    else
    {
      v17 = *(a1 + 1136) >> 5;
    }

    icu::UnicodeString::doReplace(a1 + 1128, 0, v17, &v31, 0, 1);
    icu::UnicodeString::unBogus(a1 + 1192);
    if (*(a1 + 1200) < 0)
    {
      v11 = *(a1 + 1204);
    }

    else
    {
      v11 = *(a1 + 1200) >> 5;
    }

    v12 = L") (";
    v13 = a1 + 1192;
    v14 = 3;
  }

  else
  {
    LOWORD(v31) = -248;
    icu::UnicodeString::unBogus(a1 + 936);
    if (*(a1 + 944) < 0)
    {
      v6 = *(a1 + 948);
    }

    else
    {
      v6 = *(a1 + 944) >> 5;
    }

    icu::UnicodeString::doReplace(a1 + 936, 0, v6, &v31, 0, 1);
    LOWORD(v31) = -197;
    icu::UnicodeString::unBogus(a1 + 1000);
    if (*(a1 + 1008) < 0)
    {
      v8 = *(a1 + 1012);
    }

    else
    {
      v8 = *(a1 + 1008) >> 5;
    }

    icu::UnicodeString::doReplace(a1 + 1000, 0, v8, &v31, 0, 1);
    LOWORD(v31) = -247;
    icu::UnicodeString::unBogus(a1 + 1064);
    if (*(a1 + 1072) < 0)
    {
      v9 = *(a1 + 1076);
    }

    else
    {
      v9 = *(a1 + 1072) >> 5;
    }

    icu::UnicodeString::doReplace(a1 + 1064, 0, v9, &v31, 0, 1);
    LOWORD(v31) = -195;
    icu::UnicodeString::unBogus(a1 + 1128);
    if (*(a1 + 1136) < 0)
    {
      v10 = *(a1 + 1140);
    }

    else
    {
      v10 = *(a1 + 1136) >> 5;
    }

    icu::UnicodeString::doReplace(a1 + 1128, 0, v10, &v31, 0, 1);
    icu::UnicodeString::unBogus(a1 + 1192);
    if (*(a1 + 1200) < 0)
    {
      v11 = *(a1 + 1204);
    }

    else
    {
      v11 = *(a1 + 1200) >> 5;
    }

    v12 = &unk_19549D8F6;
    v13 = a1 + 1192;
    v14 = 2;
  }

  icu::UnicodeString::doReplace(v13, 0, v11, v12, 0, v14);
  v32 = 0u;
  v33 = 0u;
  v35 = 0;
  v34 = 0u;
  v31 = &unk_1F0935D00;
  LOWORD(v32) = 2;
  sub_1951E4DC0(a1 + 240, "localeDisplayPattern", 0, "keyTypePattern", &v31);
  if (v32)
  {
    icu::UnicodeString::UnicodeString(&v28, "{0}={1}", 0xFFFFFFFFLL, 0);
    icu::UnicodeString::operator=(&v31, &v28);
    icu::UnicodeString::~UnicodeString(&v28);
  }

  icu::SimpleFormatter::applyPatternMinMaxArguments((a1 + 848), &v31, 2, 2, 0, &v27);
  *(a1 + 1264) = 0;
  *(a1 + 1268) = 0;
  v20 = *(a1 + 920);
  if ((v20 - 259) > 1)
  {
LABEL_53:
    if (v20 != 258)
    {
      goto LABEL_58;
    }

    goto LABEL_54;
  }

  v21 = ures_open(0, *(a1 + 48), &v27);
  v22 = v21;
  if (v27 > U_ZERO_ERROR)
  {
    v23 = 0;
    v24 = 0;
    if (!v21)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  v28 = &unk_1F09322F8;
  v29 = 0;
  v30 = a1;
  ures_getAllItemsWithFallback(v21, "contextTransforms", &v28, &v27);
  if (v27 == U_MISSING_RESOURCE_ERROR)
  {
    v27 = U_ZERO_ERROR;
  }

  else if (v27 > U_ZERO_ERROR)
  {
    v23 = 0;
    v24 = 0;
    goto LABEL_64;
  }

  v24 = 1;
  v23 = v29;
LABEL_64:
  icu::ResourceSink::~ResourceSink(&v28);
  if (v22)
  {
LABEL_49:
    ures_close(v22);
  }

LABEL_50:
  if (!v24)
  {
    goto LABEL_58;
  }

  if ((v23 & 1) == 0)
  {
    v20 = *(a1 + 920);
    goto LABEL_53;
  }

LABEL_54:
  v27 = U_ZERO_ERROR;
  v25 = icu::BreakIterator::createSentenceInstance((a1 + 8), &v27, v18, v19);
  *(a1 + 928) = v25;
  if (v27 >= U_ILLEGAL_ARGUMENT_ERROR)
  {
    if (v25)
    {
      (*(*v25 + 8))(v25);
    }

    *(a1 + 928) = 0;
  }

LABEL_58:
  icu::UnicodeString::~UnicodeString(&v31);
  icu::UnicodeString::~UnicodeString(&v36);
  icu::UnicodeString::~UnicodeString(&v41);
  v26 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1951E5788(uint64_t a1, uint64_t a2, unsigned int *a3, int a4)
{
  *a1 = &unk_1F09321B8;
  icu::Locale::Locale((a1 + 8));
  *(a1 + 232) = 0;
  *(a1 + 240) = "icudt76l-lang";
  icu::Locale::Locale((a1 + 248), a2);
  *(a1 + 472) = "icudt76l-region";
  icu::Locale::Locale((a1 + 480), a2);
  icu::UnicodeString::UnicodeString(a1 + 712, 0);
  icu::UnicodeString::UnicodeString(a1 + 784, 0);
  icu::UnicodeString::UnicodeString(a1 + 856, 0);
  *(a1 + 920) = 256;
  *(a1 + 928) = 0;
  *(a1 + 936) = &unk_1F0935D00;
  *(a1 + 944) = 2;
  *(a1 + 1000) = &unk_1F0935D00;
  *(a1 + 1008) = 2;
  *(a1 + 1064) = &unk_1F0935D00;
  *(a1 + 1072) = 2;
  *(a1 + 1128) = &unk_1F0935D00;
  *(a1 + 1136) = 2;
  *(a1 + 1192) = &unk_1F0935D00;
  *(a1 + 1200) = 2;
  *(a1 + 1256) = 0x30000000200;
  if (a4 >= 1)
  {
    v8 = a4 + 1;
    while (1)
    {
      v10 = *a3++;
      v9 = v10;
      v11 = v10 >> 8;
      if (v10 >> 8 <= 1)
      {
        if (v11)
        {
          if (v11 == 1)
          {
            *(a1 + 920) = v9;
          }
        }

        else
        {
          *(a1 + 232) = v9;
        }

        goto LABEL_16;
      }

      if (v11 == 2)
      {
        goto LABEL_10;
      }

      if (v11 == 3)
      {
        *(a1 + 1260) = v9;
        goto LABEL_16;
      }

      if (v11 == 32)
      {
        break;
      }

LABEL_16:
      if (--v8 <= 1)
      {
        goto LABEL_17;
      }
    }

    if (v9 == 8193)
    {
      v9 = 513;
    }

    else
    {
      v9 = 512;
    }

LABEL_10:
    *(a1 + 1256) = v9;
    goto LABEL_16;
  }

LABEL_17:
  sub_1951E5118(a1);
  return a1;
}

void sub_1951E598C(icu::ResourceSink *a1)
{
  icu::ResourceSink::~ResourceSink(a1);

  JUMPOUT(0x19A8B2600);
}