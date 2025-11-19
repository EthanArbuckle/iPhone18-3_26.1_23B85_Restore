icu::StringCharacterIterator *icu::StringCharacterIterator::StringCharacterIterator(icu::StringCharacterIterator *this, const icu::UnicodeString *a2, unsigned int a3)
{
  v6 = *(a2 + 4);
  if ((v6 & 0x11) != 0)
  {
    v7 = 0;
  }

  else if ((v6 & 2) != 0)
  {
    v7 = (a2 + 10);
  }

  else
  {
    v7 = *(a2 + 3);
  }

  v8 = v6;
  v14 = v7;
  v9 = v6 >> 5;
  if (v8 >= 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = *(a2 + 3);
  }

  icu::UCharCharacterIterator::UCharCharacterIterator(this, &v14, v10, a3);
  *this = &unk_1F09332F8;
  icu::UnicodeString::UnicodeString((this + 32), a2);
  v11 = *(this + 20);
  if ((v11 & 0x11) != 0)
  {
    v12 = 0;
  }

  else if ((v11 & 2) != 0)
  {
    v12 = this + 42;
  }

  else
  {
    v12 = *(this + 7);
  }

  *(this + 3) = v12;
  return this;
}

icu::StringCharacterIterator *icu::StringCharacterIterator::StringCharacterIterator(icu::StringCharacterIterator *this, const icu::UnicodeString *a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v10 = *(a2 + 4);
  if ((v10 & 0x11) != 0)
  {
    v11 = 0;
  }

  else if ((v10 & 2) != 0)
  {
    v11 = (a2 + 10);
  }

  else
  {
    v11 = *(a2 + 3);
  }

  v12 = v10;
  v18 = v11;
  v13 = v10 >> 5;
  if (v12 >= 0)
  {
    v14 = v13;
  }

  else
  {
    v14 = *(a2 + 3);
  }

  icu::UCharCharacterIterator::UCharCharacterIterator(this, &v18, v14, a3, a4, a5);
  *this = &unk_1F09332F8;
  icu::UnicodeString::UnicodeString((this + 32), a2);
  v15 = *(this + 20);
  if ((v15 & 0x11) != 0)
  {
    v16 = 0;
  }

  else if ((v15 & 2) != 0)
  {
    v16 = this + 42;
  }

  else
  {
    v16 = *(this + 7);
  }

  *(this + 3) = v16;
  return this;
}

icu::StringCharacterIterator *icu::StringCharacterIterator::StringCharacterIterator(icu::StringCharacterIterator *this, UChar **a2)
{
  icu::UCharCharacterIterator::UCharCharacterIterator(this, a2);
  *v4 = &unk_1F09332F8;
  icu::UnicodeString::UnicodeString((v4 + 4), a2 + 4);
  v5 = *(this + 20);
  if ((v5 & 0x11) != 0)
  {
    v6 = 0;
  }

  else if ((v5 & 2) != 0)
  {
    v6 = this + 42;
  }

  else
  {
    v6 = *(this + 7);
  }

  *(this + 3) = v6;
  return this;
}

void icu::StringCharacterIterator::~StringCharacterIterator(icu::StringCharacterIterator *this)
{
  *this = &unk_1F09332F8;
  icu::UnicodeString::~UnicodeString((this + 32));

  icu::UCharCharacterIterator::~UCharCharacterIterator(this);
}

{
  *this = &unk_1F09332F8;
  icu::UnicodeString::~UnicodeString((this + 32));

  icu::UCharCharacterIterator::~UCharCharacterIterator(this);
}

{
  *this = &unk_1F09332F8;
  icu::UnicodeString::~UnicodeString((this + 32));
  icu::UCharCharacterIterator::~UCharCharacterIterator(this);

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::StringCharacterIterator::operator=(uint64_t a1, uint64_t a2)
{
  icu::UCharCharacterIterator::operator=(a1, a2);
  icu::UnicodeString::operator=((a1 + 32), (a2 + 32));
  v4 = *(a1 + 40);
  if ((v4 & 0x11) != 0)
  {
    v5 = 0;
  }

  else if ((v4 & 2) != 0)
  {
    v5 = a1 + 42;
  }

  else
  {
    v5 = *(a1 + 56);
  }

  *(a1 + 24) = v5;
  return a1;
}

uint64_t icu::StringCharacterIterator::operator==(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (!a1)
  {
    __cxa_bad_typeid();
  }

  result = sub_19520B9EC(*(*a1 - 8), *(*a2 - 8));
  if (result)
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      if ((*(a2 + 40) & 1) == 0)
      {
        return 0;
      }

LABEL_20:
      if (*(a1 + 12) == *(a2 + 12) && *(a1 + 16) == *(a2 + 16))
      {
        return *(a1 + 20) == *(a2 + 20);
      }

      return 0;
    }

    if ((v5 & 0x8000) != 0)
    {
      v6 = *(a1 + 44);
    }

    else
    {
      v6 = v5 >> 5;
    }

    result = 0;
    v7 = *(a2 + 40);
    if ((v7 & 0x8000u) == 0)
    {
      v8 = v7 >> 5;
    }

    else
    {
      v8 = *(a2 + 44);
    }

    if ((v7 & 1) == 0 && v6 == v8)
    {
      v9 = (v7 & 2) != 0 ? (a2 + 42) : *(a2 + 56);
      result = icu::UnicodeString::doEquals(a1 + 32, v9, v6);
      if (result)
      {
        goto LABEL_20;
      }
    }
  }

  return result;
}

uint64_t icu::StringCharacterIterator::setText(UChar **this, UChar **a2)
{
  icu::UnicodeString::operator=(this + 4, a2);
  v3 = *(this + 20);
  if ((v3 & 0x11) != 0)
  {
    v4 = 0;
  }

  else if ((v3 & 2) != 0)
  {
    v4 = this + 21;
  }

  else
  {
    v4 = this[7];
  }

  v7 = v4;
  if ((v3 & 0x8000) != 0)
  {
    v5 = *(this + 11);
  }

  else
  {
    v5 = v3 >> 5;
  }

  return icu::UCharCharacterIterator::setText(this, &v7, v5);
}

void icu::SharedObject::~SharedObject(icu::SharedObject *this)
{
  icu::UObject::~UObject(this);

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::SharedObject::removeRef(uint64_t this)
{
  v1 = *(this + 16);
  if (atomic_fetch_add((this + 12), 0xFFFFFFFF) == 1)
  {
    if (v1)
    {
      return (*(*v1 + 24))(v1);
    }

    else
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

uint64_t icu::SharedObject::deleteIfZeroRefCount(uint64_t this)
{
  if (!*(this + 16) && !atomic_load_explicit((this + 12), memory_order_acquire))
  {
    return (*(*this + 8))();
  }

  return this;
}

uint64_t icu::SimpleFormatter::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    icu::UnicodeString::operator=((a1 + 8), (a2 + 8));
  }

  return a1;
}

void icu::SimpleFormatter::~SimpleFormatter(icu::SimpleFormatter *this)
{
  icu::UnicodeString::~UnicodeString((this + 8));
}

{
  icu::UnicodeString::~UnicodeString((this + 8));
}

uint64_t icu::SimpleFormatter::applyPatternMinMaxArguments(icu::SimpleFormatter *this, const icu::UnicodeString *a2, int a3, int a4, int a5, UErrorCode *a6)
{
  if (*a6 > 0)
  {
    return 0;
  }

  v43 = v6;
  v44 = v7;
  v14 = *(a2 + 4);
  if ((v14 & 0x11) != 0)
  {
    v15 = 0;
  }

  else if ((v14 & 2) != 0)
  {
    v15 = a2 + 10;
  }

  else
  {
    v15 = *(a2 + 3);
  }

  v16 = v14;
  v17 = v14 >> 5;
  if (v16 >= 0)
  {
    v18 = v17;
  }

  else
  {
    v18 = *(a2 + 3);
  }

  v39 = 0;
  icu::UnicodeString::unBogus(this + 8);
  if (*(this + 8) < 0)
  {
    v19 = *(this + 5);
  }

  else
  {
    v19 = *(this + 8) >> 5;
  }

  icu::UnicodeString::doReplace(this + 8, 0, v19, &v39, 0, 1);
  if (v18 >= 1)
  {
    v36 = a3;
    v37 = a5;
    v35 = a4;
    LODWORD(v20) = 0;
    v21 = 0;
    v22 = 0;
    v38 = -1;
    while (1)
    {
      v23 = v20;
      v24 = *&v15[2 * v20];
      v20 = v20 + 1;
      if (v24 == 39)
      {
        if (v20 >= v18)
        {
          v24 = 39;
        }

        else
        {
          v24 = *&v15[2 * v20];
          if (v24 == 39)
          {
            LODWORD(v20) = v23 + 2;
            if (!v22)
            {
              goto LABEL_31;
            }

            goto LABEL_32;
          }
        }

        if (!v21)
        {
          if (v37 || v24 == 125 || v24 == 123)
          {
            LODWORD(v20) = v23 + 2;
            v21 = 1;
LABEL_30:
            if (!v22)
            {
LABEL_31:
              v41 = -1;
              icu::UnicodeString::doAppend(this + 8, &v41, 0, 1);
            }
          }

          else
          {
            v21 = 0;
            LOWORD(v24) = 39;
            if (!v22)
            {
              goto LABEL_31;
            }
          }

LABEL_32:
          v42 = v24;
          icu::UnicodeString::doAppend(this + 8, &v42, 0, 1);
          if (v22 == 65278)
          {
            v22 = 0;
          }

          else
          {
            ++v22;
          }

          goto LABEL_54;
        }
      }

      else
      {
        if (v21 || v24 != 123)
        {
          goto LABEL_30;
        }

        if (v22 >= 1)
        {
          if (*(this + 8) < 0)
          {
            v25 = *(this + 5);
          }

          else
          {
            v25 = *(this + 8) >> 5;
          }

          icu::UnicodeString::setCharAt((this + 8), v25 + ~v22, v22 + 256);
          v22 = 0;
        }

        v26 = v23 + 2;
        if (v23 + 2 >= v18 || (v27 = *&v15[2 * v20] - 48, v27 > 9) || *&v15[2 * v26] != 125)
        {
          if (v20 < v18)
          {
            v28 = *&v15[2 * v20];
            if ((v28 - 49) <= 8)
            {
              v27 = v28 - 48;
              v29 = v18 - v26;
              LODWORD(v20) = v23 + 3;
              v30 = &v15[2 * v26];
              while (v29)
              {
                v31 = *v30;
                if ((v31 - 48) > 9)
                {
                  if (v27 < 0 || v31 != 125)
                  {
                    goto LABEL_64;
                  }

                  goto LABEL_50;
                }

                v27 = v31 + 10 * v27 - 48;
                --v29;
                v30 += 2;
                LODWORD(v20) = v20 + 1;
                if (v27 > 255)
                {
                  goto LABEL_64;
                }
              }
            }
          }

          goto LABEL_64;
        }

        LODWORD(v20) = v23 + 3;
LABEL_50:
        v32 = v38;
        if (v27 > v38)
        {
          v32 = v27;
        }

        v38 = v32;
        v40 = v27;
        icu::UnicodeString::doAppend(this + 8, &v40, 0, 1);
      }

      v21 = 0;
LABEL_54:
      if (v20 >= v18)
      {
        a4 = v35;
        if (v22 < 1)
        {
          a3 = v36;
          v33 = v38;
        }

        else
        {
          v33 = v38;
          if (*(this + 8) < 0)
          {
            v34 = *(this + 5);
          }

          else
          {
            v34 = *(this + 8) >> 5;
          }

          icu::UnicodeString::setCharAt((this + 8), v34 + ~v22, v22 + 256);
          a3 = v36;
        }

        goto LABEL_61;
      }
    }
  }

  v33 = -1;
LABEL_61:
  if (v33 >= a4 || v33 + 1 < a3)
  {
LABEL_64:
    result = 0;
    *a6 = U_ILLEGAL_ARGUMENT_ERROR;
  }

  else
  {
    icu::UnicodeString::setCharAt((this + 8), 0, v33 + 1);
    return 1;
  }

  return result;
}

icu::UnicodeString *icu::SimpleFormatter::format(icu::SimpleFormatter *this, const icu::UnicodeString *a2, icu::UnicodeString *a3, UErrorCode *a4)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = a2;
  icu::SimpleFormatter::formatAndAppend(this, v7, 1u, a3, 0, 0, a4);
  v5 = *MEMORY[0x1E69E9840];
  return a3;
}

icu::UnicodeString *icu::SimpleFormatter::formatAndAppend(icu::SimpleFormatter *this, const icu::UnicodeString *const *a2, unsigned int a3, icu::UnicodeString *a4, void *__b, int a6, UErrorCode *a7)
{
  if (*a7 > 0)
  {
    return a4;
  }

  if ((a3 & 0x80000000) != 0 || (a3 ? (v9 = a2 == 0) : (v9 = 0), v9 || a6 < 0 || !__b && a6))
  {
LABEL_20:
    *a7 = U_ILLEGAL_ARGUMENT_ERROR;
    return a4;
  }

  v10 = *(this + 8);
  if ((v10 & 0x11) != 0)
  {
    v11 = 0;
  }

  else if ((v10 & 2) != 0)
  {
    v11 = (this + 18);
  }

  else
  {
    v11 = *(this + 4);
  }

  if ((v10 & 0x8000) != 0)
  {
    if (!*(this + 5))
    {
      goto LABEL_22;
    }
  }

  else if (!(v10 >> 5))
  {
    goto LABEL_22;
  }

  if (*v11 > a3)
  {
    goto LABEL_20;
  }

LABEL_22:
  if ((v10 & 0x11) != 0)
  {
    v13 = 0;
  }

  else if ((v10 & 2) != 0)
  {
    v13 = this + 18;
  }

  else
  {
    v13 = *(this + 4);
  }

  if ((v10 & 0x8000) != 0)
  {
    v14 = *(this + 5);
  }

  else
  {
    v14 = v10 >> 5;
  }

  icu::SimpleFormatter::format(v13, v14, a2, a4, 0, 1, __b, a6, a7);
  return a4;
}

icu::UnicodeString *icu::SimpleFormatter::format(icu::SimpleFormatter *this, const icu::UnicodeString *a2, const icu::UnicodeString *a3, icu::UnicodeString *a4, UErrorCode *a5)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v8[0] = a2;
  v8[1] = a3;
  icu::SimpleFormatter::formatAndAppend(this, v8, 2u, a4, 0, 0, a5);
  v6 = *MEMORY[0x1E69E9840];
  return a4;
}

icu::UnicodeString *icu::SimpleFormatter::format(icu::SimpleFormatter *this, const icu::UnicodeString *a2, const icu::UnicodeString *a3, const icu::UnicodeString *a4, icu::UnicodeString *a5, UErrorCode *a6)
{
  v9[3] = *MEMORY[0x1E69E9840];
  v9[0] = a2;
  v9[1] = a3;
  v9[2] = a4;
  icu::SimpleFormatter::formatAndAppend(this, v9, 3u, a5, 0, 0, a6);
  v7 = *MEMORY[0x1E69E9840];
  return a5;
}

icu::UnicodeString *icu::SimpleFormatter::format(uint64_t a1, int a2, uint64_t a3, icu::UnicodeString *this, uint64_t a5, int a6, void *__b, int a8, int *a9)
{
  if (*a9 <= 0)
  {
    if (a8 >= 1)
    {
      memset(__b, 255, 4 * a8);
    }

    if (a2 > 1)
    {
      LODWORD(v15) = 1;
      do
      {
        v16 = *(a1 + 2 * v15);
        v15 = v15 + 1;
        if (v16 > 0xFF)
        {
          v21 = v16 - 256;
          icu::UnicodeString::doAppend(this, a1 + 2 * v15, 0, v16 - 256);
          LODWORD(v15) = v21 + v15;
        }

        else
        {
          v17 = *(a3 + 8 * v16);
          if (!v17)
          {
            goto LABEL_30;
          }

          if (v17 == this)
          {
            if (a6)
            {
LABEL_30:
              *a9 = 1;
              return this;
            }

            if (v15 == 2)
            {
              if (v16 < a8)
              {
                *(__b + v16) = 0;
              }

              LODWORD(v15) = 2;
              continue;
            }

            if (v16 < a8)
            {
              v22 = *(this + 4);
              v23 = v22;
              v24 = v22 >> 5;
              if (v23 < 0)
              {
                v24 = *(this + 3);
              }

              *(__b + v16) = v24;
            }

            v17 = a5;
          }

          else if (v16 < a8)
          {
            v18 = *(this + 4);
            v19 = v18;
            v20 = v18 >> 5;
            if (v19 < 0)
            {
              v20 = *(this + 3);
            }

            *(__b + v16) = v20;
          }

          v25 = *(v17 + 8);
          v26 = v25;
          v27 = v25 >> 5;
          if (v26 >= 0)
          {
            v28 = v27;
          }

          else
          {
            v28 = *(v17 + 12);
          }

          icu::UnicodeString::doAppend(this, v17, 0, v28);
        }
      }

      while (v15 < a2);
    }
  }

  return this;
}

UChar **icu::SimpleFormatter::formatAndReplace(icu::SimpleFormatter *this, const icu::UnicodeString *const *a2, unsigned int a3, UChar **a4, void *__b, int a6, UErrorCode *a7)
{
  v28 = *MEMORY[0x1E69E9840];
  if (*a7 > 0)
  {
    goto LABEL_21;
  }

  if ((a3 & 0x80000000) != 0 || (a3 ? (v10 = a2 == 0) : (v10 = 0), v10 || a6 < 0 || !__b && a6))
  {
LABEL_20:
    *a7 = U_ILLEGAL_ARGUMENT_ERROR;
    goto LABEL_21;
  }

  v13 = *(this + 8);
  if ((v13 & 0x11) != 0)
  {
    v14 = 0;
  }

  else if ((v13 & 2) != 0)
  {
    v14 = (this + 18);
  }

  else
  {
    v14 = *(this + 4);
  }

  if ((v13 & 0x8000) != 0)
  {
    v15 = *(this + 5);
    if (!v15)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v15 = v13 >> 5;
    if (!(v13 >> 5))
    {
      goto LABEL_22;
    }
  }

  if (*v14 > a3)
  {
    goto LABEL_20;
  }

LABEL_22:
  v24 = 0u;
  v25 = 0u;
  v27 = 0;
  v26 = 0u;
  v23 = &unk_1F0935D00;
  LOWORD(v24) = 2;
  if (!v15 || !*v14 || v15 < 2)
  {
    goto LABEL_37;
  }

  v18 = -1;
  v19 = 1;
  do
  {
    v20 = v14[v19];
    if (v20 > 0xFF)
    {
      v19 = v19 + v20 - 255;
    }

    else
    {
      ++v19;
      if (a2[v20] == a4)
      {
        if (v19 == 2)
        {
          v18 = v20;
        }

        else if (v24 <= 0x1Fu && *(a4 + 4) >= 0x20u)
        {
          icu::UnicodeString::operator=(&v23, a4);
        }
      }
    }
  }

  while (v19 < v15);
  if (v18 < 0)
  {
LABEL_37:
    if (a4[1])
    {
      v21 = 2;
    }

    else
    {
      v21 = a4[1] & 0x1E;
    }

    *(a4 + 4) = v21;
  }

  icu::SimpleFormatter::format(v14, v15, a2, a4, &v23, 0, __b, a6, a7);
  icu::UnicodeString::~UnicodeString(v22, &v23);
LABEL_21:
  v16 = *MEMORY[0x1E69E9840];
  return a4;
}

uint64_t icu::SimpleFormatter::getTextWithNoArguments@<X0>(void *__b@<X2>, unsigned __int16 *a2@<X0>, int a3@<W1>, int a4@<W3>, uint64_t a5@<X8>)
{
  if (a4 >= 1)
  {
    memset(__b, 255, 4 * a4);
  }

  if (a3)
  {
    v10 = ~*a2;
  }

  else
  {
    v10 = -1;
  }

  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  result = icu::UnicodeString::UnicodeString(a5, v10 + a3, 0, 0);
  if (a3 >= 2)
  {
    LODWORD(v12) = 1;
    do
    {
      v13 = a2[v12];
      v12 = v12 + 1;
      if (v13 < 0x101)
      {
        if (v13 < a4)
        {
          v15 = *(a5 + 8);
          v16 = v15;
          v17 = v15 >> 5;
          if (v16 < 0)
          {
            v17 = *(a5 + 12);
          }

          *(__b + v13) = v17;
        }
      }

      else
      {
        v14 = v13 - 256;
        result = icu::UnicodeString::doAppend(a5, &a2[v12], 0, v13 - 256);
        LODWORD(v12) = v14 + v12;
      }
    }

    while (v12 < a3);
  }

  return result;
}

void *icu::unisets::get(int a1)
{
  if (atomic_load_explicit(&dword_1ED442708, memory_order_acquire) != 2 && icu::umtx_initImplPreInit(&dword_1ED442708))
  {
    sub_19521EF64();
  }

  if (dword_1ED44270C > 0)
  {
    return &unk_1ED442640;
  }

  if (qword_1ED442718[a1])
  {
    return qword_1ED442718[a1];
  }

  return &unk_1ED442640;
}

void sub_19521EF64()
{
  v1 = *MEMORY[0x1E69E9840];
  sub_1952376A4(0, sub_19521F350);
  icu::UnicodeSet::UnicodeSet(&unk_1ED442640);
  icu::UnicodeSet::freeze(v0);
  byte_1ED442710 = 1;
  operator new();
}

uint64_t icu::unisets::chooseFrom(const icu::UnicodeString *a1, unsigned int a2)
{
  v4 = icu::unisets::get(a2);
  if (icu::UnicodeSet::contains(v4, a1))
  {
    return a2;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t icu::unisets::chooseFrom(UChar **a1, uint64_t a2, unsigned int a3)
{
  v4 = a2;
  v12 = *MEMORY[0x1E69E9840];
  v6 = icu::unisets::get(a2);
  if (!icu::UnicodeSet::contains(v6, a1))
  {
    icu::UnicodeString::UnicodeString(v11, a1);
    v7 = icu::unisets::get(a3);
    if (icu::UnicodeSet::contains(v7, v11))
    {
      v4 = a3;
    }

    else
    {
      v4 = 0xFFFFFFFFLL;
    }

    icu::UnicodeString::~UnicodeString(v8, v11);
  }

  v9 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t sub_19521F350()
{
  if (byte_1ED442710)
  {
    icu::UnicodeSet::~UnicodeSet(&unk_1ED442640);
    byte_1ED442710 = 0;
  }

  for (i = 0; i != 24; ++i)
  {
    v1 = qword_1ED442718[i];
    if (v1)
    {
      icu::UnicodeSet::~UnicodeSet(v1);
      MEMORY[0x19A8B2600]();
    }

    qword_1ED442718[i] = 0;
  }

  atomic_store(0, &dword_1ED442708);
  return 1;
}

void sub_19521F50C(icu::ResourceSink *a1)
{
  icu::ResourceSink::~ResourceSink(a1);

  JUMPOUT(0x19A8B2600);
}

void *sub_19521F544(uint64_t a1, char *a2, icu::ResourceValue *a3, uint64_t a4, int *a5)
{
  v37 = *MEMORY[0x1E69E9840];
  v32 = 0;
  __s1 = a2;
  memset(v31, 0, sizeof(v31));
  result = (*(*a3 + 88))(v31, a3, a5);
  if (*a5 <= 0)
  {
    result = icu::ResourceTable::getKeyAndValue(v31, 0, &__s1, a3);
    if (result)
    {
      v9 = 0;
      while (1)
      {
        if (strcmp(__s1, "date"))
        {
          v30 = 0;
          memset(v29, 0, sizeof(v29));
          result = (*(*a3 + 88))(v29, a3, a5);
          if (*a5 > 0)
          {
            goto LABEL_2;
          }

          if (icu::ResourceTable::getKeyAndValue(v29, 0, &__s1, a3))
          {
            break;
          }
        }

LABEL_75:
        result = icu::ResourceTable::getKeyAndValue(v31, ++v9, &__s1, a3);
        if (!result)
        {
          goto LABEL_2;
        }
      }

      v10 = 0;
      while (1)
      {
        strcmp(__s1, "lenient");
        v27[0] = 0;
        v27[1] = 0;
        v28 = 0;
        result = (*(*a3 + 80))(v27, a3, a5);
        if (*a5 > 0)
        {
          break;
        }

        if (v28 >= 1)
        {
          v11 = 0;
          while (1)
          {
            icu::ResourceArray::getValue(v27, v11, a3);
            memset(v36, 0, sizeof(v36));
            v35 = 0;
            v34 = (*(*a3 + 32))(a3, &v35, a5);
            icu::UnicodeString::UnicodeString(v36, 1, &v34);
            v12 = *a5;
            if (v12 > 0)
            {
              break;
            }

            if ((SWORD4(v36[0]) & 0x8000u) == 0)
            {
              v13 = WORD4(v36[0]) >> 5;
            }

            else
            {
              v13 = HIDWORD(v36[0]);
            }

            if (icu::UnicodeString::doIndexOf(v36, 0x2Eu, 0, v13) != -1)
            {
              operator new();
            }

            if ((SWORD4(v36[0]) & 0x8000u) == 0)
            {
              v14 = WORD4(v36[0]) >> 5;
            }

            else
            {
              v14 = HIDWORD(v36[0]);
            }

            if (icu::UnicodeString::doIndexOf(v36, 0x2Cu, 0, v14) != -1)
            {
              operator new();
            }

            if ((SWORD4(v36[0]) & 0x8000u) == 0)
            {
              v15 = WORD4(v36[0]) >> 5;
            }

            else
            {
              v15 = HIDWORD(v36[0]);
            }

            if (icu::UnicodeString::doIndexOf(v36, 0x2Bu, 0, v15) != -1)
            {
              operator new();
            }

            if ((SWORD4(v36[0]) & 0x8000u) == 0)
            {
              v16 = WORD4(v36[0]) >> 5;
            }

            else
            {
              v16 = HIDWORD(v36[0]);
            }

            if (icu::UnicodeString::doIndexOf(v36, 0x2Du, 0, v16) != -1)
            {
              operator new();
            }

            if ((SWORD4(v36[0]) & 0x8000u) == 0)
            {
              v17 = WORD4(v36[0]) >> 5;
            }

            else
            {
              v17 = HIDWORD(v36[0]);
            }

            if (icu::UnicodeString::doIndexOf(v36, 0x24u, 0, v17) != -1)
            {
              operator new();
            }

            if ((SWORD4(v36[0]) & 0x8000u) == 0)
            {
              v18 = WORD4(v36[0]) >> 5;
            }

            else
            {
              v18 = HIDWORD(v36[0]);
            }

            if (icu::UnicodeString::doIndexOf(v36, 0xA3u, 0, v18) != -1)
            {
              operator new();
            }

            if ((SWORD4(v36[0]) & 0x8000u) == 0)
            {
              v19 = WORD4(v36[0]) >> 5;
            }

            else
            {
              v19 = HIDWORD(v36[0]);
            }

            if (icu::UnicodeString::doIndexOf(v36, 0x20B9u, 0, v19) != -1)
            {
              operator new();
            }

            if ((SWORD4(v36[0]) & 0x8000u) == 0)
            {
              v20 = WORD4(v36[0]) >> 5;
            }

            else
            {
              v20 = HIDWORD(v36[0]);
            }

            if (icu::UnicodeString::doIndexOf(v36, 0xA5u, 0, v20) != -1)
            {
              operator new();
            }

            if ((SWORD4(v36[0]) & 0x8000u) == 0)
            {
              v21 = WORD4(v36[0]) >> 5;
            }

            else
            {
              v21 = HIDWORD(v36[0]);
            }

            if (icu::UnicodeString::doIndexOf(v36, 0x20A9u, 0, v21) != -1)
            {
              operator new();
            }

            if ((SWORD4(v36[0]) & 0x8000u) == 0)
            {
              v22 = WORD4(v36[0]) >> 5;
            }

            else
            {
              v22 = HIDWORD(v36[0]);
            }

            if (icu::UnicodeString::doIndexOf(v36, 0x25u, 0, v22) != -1)
            {
              operator new();
            }

            if ((SWORD4(v36[0]) & 0x8000u) == 0)
            {
              v23 = WORD4(v36[0]) >> 5;
            }

            else
            {
              v23 = HIDWORD(v36[0]);
            }

            if (icu::UnicodeString::doIndexOf(v36, 0x2030u, 0, v23) != -1 || ((SWORD4(v36[0]) & 0x8000u) == 0 ? (v24 = WORD4(v36[0]) >> 5) : (v24 = HIDWORD(v36[0])), icu::UnicodeString::doIndexOf(v36, 0x2019u, 0, v24) != -1))
            {
              sub_19521FBF0();
            }

            v26 = *a5;
            result = icu::UnicodeString::~UnicodeString(v25, v36);
            if (v26 >= 1)
            {
              goto LABEL_2;
            }

            if (++v11 >= v28)
            {
              goto LABEL_74;
            }
          }

          result = icu::UnicodeString::~UnicodeString(v12, v36);
          break;
        }

LABEL_74:
        if (!icu::ResourceTable::getKeyAndValue(v29, ++v10, &__s1, a3))
        {
          goto LABEL_75;
        }
      }
    }
  }

LABEL_2:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

icu::StringPiece *icu::StringPiece::StringPiece(icu::StringPiece *this, const char *__s)
{
  *this = __s;
  if (__s)
  {
    v3 = strlen(__s);
  }

  else
  {
    v3 = 0;
  }

  *(this + 2) = v3;
  return this;
}

{
  *this = __s;
  if (__s)
  {
    v3 = strlen(__s);
  }

  else
  {
    v3 = 0;
  }

  *(this + 2) = v3;
  return this;
}

uint64_t icu::StringPiece::StringPiece(uint64_t this, const icu::StringPiece *a2, int a3)
{
  v3 = *(a2 + 2);
  if (v3 >= a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = *(a2 + 2);
  }

  if (a3 < 0)
  {
    v4 = 0;
  }

  *this = *a2 + v4;
  *(this + 8) = v3 - v4;
  return this;
}

{
  v3 = *(a2 + 2);
  if (v3 >= a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = *(a2 + 2);
  }

  if (a3 < 0)
  {
    v4 = 0;
  }

  *this = *a2 + v4;
  *(this + 8) = v3 - v4;
  return this;
}

uint64_t icu::StringPiece::StringPiece(uint64_t this, const icu::StringPiece *a2, int a3, int a4)
{
  v4 = *(a2 + 2);
  if (v4 >= a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = *(a2 + 2);
  }

  if (a3 < 0)
  {
    v5 = 0;
  }

  v6 = v4 - v5;
  if (v6 >= a4)
  {
    v6 = a4;
  }

  if (a4 < 0)
  {
    v6 = 0;
  }

  *this = *a2 + v5;
  *(this + 8) = v6;
  return this;
}

{
  v4 = *(a2 + 2);
  if (v4 >= a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = *(a2 + 2);
  }

  if (a3 < 0)
  {
    v5 = 0;
  }

  v6 = v4 - v5;
  if (v6 >= a4)
  {
    v6 = a4;
  }

  if (a4 < 0)
  {
    v6 = 0;
  }

  *this = *a2 + v5;
  *(this + 8) = v6;
  return this;
}

size_t icu::StringPiece::set(icu::StringPiece *this, const char *__s)
{
  *this = __s;
  if (__s)
  {
    result = strlen(__s);
  }

  else
  {
    result = 0;
  }

  *(this + 2) = result;
  return result;
}

uint64_t icu::StringPiece::find(uint64_t a1, unsigned __int8 *a2, int a3, int a4)
{
  v4 = *(a1 + 8);
  v5 = v4 | a3;
  if (v5)
  {
    if (v4 <= a4)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      v6 = a4;
      while (a3 >= 1)
      {
        v7 = a3 & 0x7FFFFFFF;
        v8 = a2;
        v9 = v6;
        while (1)
        {
          v10 = *v8++;
          if (*(*a1 + v9) != v10)
          {
            break;
          }

          ++v9;
          if (!--v7)
          {
            LODWORD(v6) = v9;
            return (v6 - a3);
          }
        }

        ++v6;
        v5 = 0xFFFFFFFFLL;
        if (v4 <= v6)
        {
          return v5;
        }
      }

      a3 = 0;
      return (v6 - a3);
    }
  }

  return v5;
}

uint64_t icu::StringPiece::compare(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 8);
  if (v3 < 1)
  {
    LODWORD(v3) = 0;
LABEL_9:
    if (v3 >= a3)
    {
      return 0;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    v4 = 0;
    while (1)
    {
      if (a3 == v4)
      {
        return 1;
      }

      v5 = *(*a1 + v4);
      v6 = *(a2 + v4);
      if (v5 < v6)
      {
        return 0xFFFFFFFFLL;
      }

      if (v5 > v6)
      {
        return 1;
      }

      if (v3 == ++v4)
      {
        goto LABEL_9;
      }
    }
  }
}

BOOL icu::operator==(unsigned __int8 **a1, unsigned __int8 **a2)
{
  v2 = *(a1 + 2);
  if (v2 != *(a2 + 2))
  {
    return 0;
  }

  if (v2)
  {
    v3 = *a1;
    v4 = *a2;
    if (v3[v2 - 1] == v4[v2 - 1])
    {
      return memcmp(v3, v4, v2 - 1) == 0;
    }

    return 0;
  }

  return 1;
}

void *icu::StringTrieBuilder::StringTrieBuilder(void *this)
{
  *this = &unk_1F09334C8;
  this[1] = 0;
  return this;
}

void icu::StringTrieBuilder::~StringTrieBuilder(void ***this)
{
  *this = &unk_1F09334C8;
  uhash_close(this[1]);
  this[1] = 0;

  icu::UObject::~UObject(this);
}

int32x2_t *icu::StringTrieBuilder::createCompactBuilder(int32x2_t *this, int a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    v4 = this;
    this = uhash_openSize(sub_195220088, sub_195220090, 0, a2, a3);
    v4[1] = this;
    if (*a3 <= 0)
    {
      if (this)
      {

        return uhash_setKeyDeleter(this, uprv_deleteUObject);
      }

      else
      {
        *a3 = U_MEMORY_ALLOCATION_ERROR;
      }
    }
  }

  return this;
}

void icu::StringTrieBuilder::build(icu::StringTrieBuilder *this, uint64_t a2, uint64_t a3, UErrorCode *a4)
{
  if (a2)
  {
    icu::StringTrieBuilder::createCompactBuilder(this, 2 * a3, a4);
    Node = icu::StringTrieBuilder::makeNode(this, 0, a3, 0, a4);
    if (*a4 <= 0)
    {
      v8 = Node;
      (*(*Node + 32))(Node, 0xFFFFFFFFLL);
      (*(*v8 + 40))(v8, this);
    }

    uhash_close(*(this + 1));
    *(this + 1) = 0;
  }

  else
  {

    icu::StringTrieBuilder::writeNode(this, a2, a3, 0);
  }
}

uint64_t icu::StringTrieBuilder::writeNode(icu::StringTrieBuilder *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(*this + 24))(this) == a4)
  {
    v8 = (*(*this + 40))(this, a2);
    if (a2 + 1 == a3)
    {
      v9 = *(*this + 136);

      return v9(this, v8, 1);
    }

    v11 = 1;
    a2 = (a2 + 1);
  }

  else
  {
    v8 = 0;
    v11 = 0;
  }

  v12 = (*(*this + 32))(this, a2, a4);
  v13 = (*(*this + 32))(this, (a3 - 1), a4);
  v14 = *this;
  if (v12 == v13)
  {
    v15 = (*(v14 + 48))(this, a2, (a3 - 1), a4);
    icu::StringTrieBuilder::writeNode(this, a2, a3, v15);
    v16 = (v15 - a4);
    v17 = (*(*this + 104))(this);
    if (v16 > v17)
    {
      v18 = v17;
      v19 = v17 - 1;
      v20 = (v15 - v17);
      do
      {
        v16 = (v16 - v18);
        (*(*this + 128))(this, a2, v20, v18);
        v21 = (*(*this + 96))(this);
        (*(*this + 120))(this, (v19 + v21));
        v20 = (v20 - v18);
      }

      while (v16 > v18);
    }

    (*(*this + 128))(this, a2, a4, v16);
    v22 = v16 + (*(*this + 96))(this) - 1;
  }

  else
  {
    v23 = (*(v14 + 56))(this, a2, a3, a4);
    icu::StringTrieBuilder::writeBranchSubNode(this, a2, a3, a4, v23);
    v22 = (v23 - 1);
    if (v23 > (*(*this + 96))(this))
    {
      (*(*this + 120))(this, (v23 - 1));
      v22 = 0;
    }
  }

  v24 = *(*this + 144);

  return v24(this, v11, v8, v22);
}

icu::StringTrieBuilder::Node *icu::StringTrieBuilder::makeNode(icu::StringTrieBuilder *this, uint64_t a2, uint64_t a3, uint64_t a4, UErrorCode *a5)
{
  if (*a5 > 0)
  {
    return 0;
  }

  v11 = (*(*this + 24))(this);
  if (v11 == a4)
  {
    v12 = (*(*this + 40))(this, a2);
    if (a2 + 1 == a3)
    {

      return icu::StringTrieBuilder::registerFinalValue(this, v12, a5);
    }

    a2 = (a2 + 1);
  }

  else
  {
    v12 = 0;
  }

  v13 = (*(*this + 32))(this, a2, a4);
  v14 = (*(*this + 32))(this, (a3 - 1), a4);
  v15 = *this;
  if (v13 != v14)
  {
    v24 = (*(v15 + 56))(this, a2, a3, a4);
    icu::StringTrieBuilder::makeBranchSubNode(this, a2, a3, a4, v24, a5);
    operator new();
  }

  v16 = (*(v15 + 48))(this, a2, (a3 - 1), a4);
  Node = icu::StringTrieBuilder::makeNode(this, a2, a3, v16, a5);
  v18 = (v16 - a4);
  v19 = (*(*this + 104))(this);
  if (v18 > v19)
  {
    v20 = v19;
    v21 = (v16 - v19);
    do
    {
      v18 = (v18 - v20);
      v22 = (*(*this + 112))(this, a2, v21, v20, Node);
      Node = icu::StringTrieBuilder::registerNode(this, v22, a5);
      v21 = (v21 - v20);
    }

    while (v18 > v20);
  }

  v23 = (*(*this + 112))(this, a2, a4, v18, Node);
  if (v11 == a4 && v23)
  {
    if (!(*(*this + 80))(this))
    {
      operator new();
    }

    *(v23 + 16) = 1;
    *(v23 + 20) = v12;
    *(v23 + 8) = 37 * *(v23 + 8) + v12;
  }

  return icu::StringTrieBuilder::registerNode(this, v23, a5);
}

uint64_t icu::StringTrieBuilder::writeBranchSubNode(icu::StringTrieBuilder *this, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v5 = a5;
  v30 = a3;
  v39 = *MEMORY[0x1E69E9840];
  memset(v37, 0, sizeof(v37));
  v38 = 0;
  v36 = 0;
  memset(v35, 0, sizeof(v35));
  if ((*(*this + 88))(this) >= a5)
  {
    LODWORD(v9) = 0;
  }

  else
  {
    v9 = 0;
    do
    {
      v10 = a2;
      a2 = (*(*this + 64))(this, a2, a4, (v5 / 2));
      *(v37 + v9) = (*(*this + 32))(this, a2, a4);
      *(v35 + v9++) = icu::StringTrieBuilder::writeBranchSubNode(this, v10, a2, a4, v5 / 2);
      v5 -= v5 / 2;
    }

    while (v5 > (*(*this + 88))(this));
  }

  v11 = 0;
  v33[0] = 0;
  v33[1] = 0;
  v34 = 0;
  v31 = 0;
  if (v5 - 1 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = (v5 - 1);
  }

  v13 = v33;
  do
  {
    *v13 = a2;
    v14 = (*(*this + 32))(this, a2, a4);
    v15 = (*(*this + 72))(this, (a2 + 1), a4, v14);
    v16 = a2 == v15 - 1 && a4 + 1 == (*(*this + 24))(this, a2);
    *(&v31 + v11++) = v16;
    ++v13;
    a2 = v15;
  }

  while (v12 != v11);
  *(v33 + v12) = v15;
  v17 = v11 - 1;
  v32[0] = 0;
  v32[1] = 0;
  do
  {
    if (!*(&v31 + v17))
    {
      *(v32 + v17) = icu::StringTrieBuilder::writeNode(this, *(v13 - 1), *v13, a4 + 1);
    }

    v18 = v17-- + 1;
    --v13;
  }

  while (v18 > 1);
  icu::StringTrieBuilder::writeNode(this, v15, v30, a4 + 1);
  v19 = (*(*this + 32))(this, v15, a4);
  result = (*(*this + 120))(this, v19);
  if (v5 > 1)
  {
    v21 = (v5 - 2);
    do
    {
      v22 = *(v33 + v21);
      v23 = *(&v31 + v21);
      if (*(&v31 + v21))
      {
        v24 = (*(*this + 40))(this, *(v33 + v21));
      }

      else
      {
        v24 = (result - *(v32 + v21));
      }

      (*(*this + 136))(this, v24, v23);
      v25 = (*(*this + 32))(this, v22, a4);
      result = (*(*this + 120))(this, v25);
    }

    while (v21-- > 0);
  }

  if (v9 >= 1)
  {
    v27 = v9 - 1;
    do
    {
      (*(*this + 152))(this, *(v35 + v27));
      result = (*(*this + 120))(this, *(v37 + v27));
      v28 = v27-- + 1;
    }

    while (v28 > 1);
  }

  v29 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t icu::StringTrieBuilder::registerFinalValue(icu::StringTrieBuilder *this, unsigned int a2, UErrorCode *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  v7 = a2 + 41383797;
  v8 = 0;
  v6 = &unk_1F09335D0;
  v9 = a2;
  v4 = uhash_find(*(this + 1), &v6);
  if (!v4)
  {
    operator new();
  }

  v3 = *(v4 + 2);
  icu::UObject::~UObject(&v6);
  return v3;
}

icu::StringTrieBuilder::Node *icu::StringTrieBuilder::registerNode(icu::StringTrieBuilder *this, icu::StringTrieBuilder::Node *a2, UErrorCode *a3)
{
  v3 = a2;
  if (*a3 < 1)
  {
    if (!a2)
    {
      *a3 = U_MEMORY_ALLOCATION_ERROR;
      return v3;
    }

    v6 = uhash_find(*(this + 1), a2);
    if (v6)
    {
      v7 = v6;
      (*(*v3 + 8))(v3);
      return *(v7 + 2);
    }

    uhash_puti(*(this + 1), v3, 1u, a3);
    if (*a3 < 1)
    {
      return v3;
    }

    goto LABEL_3;
  }

  if (a2)
  {
LABEL_3:
    (*(*v3 + 8))(v3);
    return 0;
  }

  return v3;
}

uint64_t icu::StringTrieBuilder::makeBranchSubNode(icu::StringTrieBuilder *this, uint64_t a2, int a3, uint64_t a4, int a5, UErrorCode *a6)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*a6 <= 0)
  {
    v7 = a5;
    memset(v16, 0, sizeof(v16));
    v17 = 0;
    memset(v15, 0, sizeof(v15));
    if ((*(*this + 88))(this) < a5)
    {
      v11 = 0;
      do
      {
        v12 = a2;
        a2 = (*(*this + 64))(this, a2, a4, (v7 / 2));
        *(v16 + v11) = (*(*this + 32))(this, a2, a4);
        *(v15 + v11++) = icu::StringTrieBuilder::makeBranchSubNode(this, v12, a2, a4, v7 / 2, a6);
        v7 -= v7 / 2;
      }

      while (v7 > (*(*this + 88))(this));
    }

    if (*a6 <= 0)
    {
      operator new();
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t icu::StringTrieBuilder::Node::operator==(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (!a1)
  {
    __cxa_bad_typeid();
  }

  result = sub_19520B9EC(*(*a1 - 8), *(*a2 - 8));
  if (result)
  {
    return *(a1 + 8) == *(a2 + 8);
  }

  return result;
}

uint64_t icu::StringTrieBuilder::Node::markRightEdgesFirst(icu::StringTrieBuilder::Node *this, uint64_t a2)
{
  if (!*(this + 3))
  {
    *(this + 3) = a2;
  }

  return a2;
}

uint64_t icu::StringTrieBuilder::FinalValueNode::operator==(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = icu::StringTrieBuilder::Node::operator==(a1, a2);
  if (result)
  {
    return *(a1 + 16) == *(a2 + 16);
  }

  return result;
}

uint64_t icu::StringTrieBuilder::FinalValueNode::write(icu::StringTrieBuilder::FinalValueNode *this, icu::StringTrieBuilder *a2)
{
  result = (*(*a2 + 136))(a2, *(this + 4), 1);
  *(this + 3) = result;
  return result;
}

uint64_t icu::StringTrieBuilder::ValueNode::operator==(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = icu::StringTrieBuilder::Node::operator==(a1, a2);
  if (result)
  {
    if (*(a1 + 16) == *(a2 + 16))
    {
      return !*(a1 + 16) || *(a1 + 20) == *(a2 + 20);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t icu::StringTrieBuilder::IntermediateValueNode::operator==(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = icu::StringTrieBuilder::ValueNode::operator==(a1, a2);
  if (result)
  {
    return *(a1 + 24) == *(a2 + 24);
  }

  return result;
}

uint64_t icu::StringTrieBuilder::IntermediateValueNode::markRightEdgesFirst(icu::StringTrieBuilder::IntermediateValueNode *this, uint64_t a2)
{
  if (!*(this + 3))
  {
    a2 = (*(**(this + 3) + 32))(*(this + 3));
    *(this + 3) = a2;
  }

  return a2;
}

uint64_t icu::StringTrieBuilder::IntermediateValueNode::write(icu::StringTrieBuilder::IntermediateValueNode *this, icu::StringTrieBuilder *a2)
{
  (*(**(this + 3) + 40))(*(this + 3));
  result = (*(*a2 + 136))(a2, *(this + 5), 0);
  *(this + 3) = result;
  return result;
}

uint64_t icu::StringTrieBuilder::LinearMatchNode::operator==(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = icu::StringTrieBuilder::ValueNode::operator==(a1, a2);
  if (result)
  {
    return *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32);
  }

  return result;
}

uint64_t icu::StringTrieBuilder::LinearMatchNode::markRightEdgesFirst(icu::StringTrieBuilder::LinearMatchNode *this, uint64_t a2)
{
  if (!*(this + 3))
  {
    a2 = (*(**(this + 4) + 32))(*(this + 4));
    *(this + 3) = a2;
  }

  return a2;
}

uint64_t icu::StringTrieBuilder::ListBranchNode::operator==(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = icu::StringTrieBuilder::Node::operator==(a1, a2);
  if (result)
  {
    v5 = *(a1 + 64);
    if (v5 < 1)
    {
      return 1;
    }

    else
    {
      v6 = 0;
      while (*(a1 + 2 * v6 + 88) == *(a2 + 2 * v6 + 88) && *(a1 + 4 * v6 + 68) == *(a2 + 4 * v6 + 68) && *(a1 + 8 * v6 + 24) == *(a2 + 8 * v6 + 24))
      {
        if (v5 == ++v6)
        {
          return 1;
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t icu::StringTrieBuilder::ListBranchNode::markRightEdgesFirst(icu::StringTrieBuilder::ListBranchNode *this, uint64_t a2)
{
  v2 = *(this + 3);
  if (!v2)
  {
    *(this + 4) = a2;
    v4 = *(this + 16);
    v5 = v4 + 1;
    v6 = (this + 8 * v4 + 16);
    do
    {
      if (*v6)
      {
        a2 = (*(**v6 + 32))(*v6, (a2 + v2));
      }

      --v5;
      --v6;
      v2 = -1;
    }

    while (v5 > 1);
    *(this + 3) = a2;
  }

  return a2;
}

uint64_t icu::StringTrieBuilder::ListBranchNode::write(icu::StringTrieBuilder::ListBranchNode *this, icu::StringTrieBuilder *a2)
{
  v4 = *(this + 16);
  v5 = *(this + v4 + 2);
  v6 = (this + 16);
  v7 = v5 + 3;
  if (!v5)
  {
    v7 = (this + 16);
  }

  v8 = *v7;
  v9 = this + 8;
  do
  {
    v10 = *&v9[8 * v4];
    if (v10)
    {
      v11 = v10[3];
      if (v11 < 0)
      {
        v12 = v11 >= v8 && v11 <= *v6;
        if (!v12)
        {
          (*(*v10 + 40))(v10, a2);
        }
      }
    }

    --v4;
  }

  while (v4 > 1);
  v13 = *(this + 16);
  v14 = v13 - 1;
  if (v5)
  {
    (*(*v5 + 40))(v5, a2);
    v14 = v14;
  }

  else
  {
    (*(*a2 + 136))(a2, *(this + v14 + 17), 1);
  }

  result = (*(*a2 + 120))(a2, *(this + v14 + 44));
  *(this + 3) = result;
  v16 = __OFSUB__(v13, 2);
  v17 = (v13 - 2);
  if (v17 < 0 == v16)
  {
    v18 = this + 68;
    do
    {
      v19 = *&v18[8 * v17 - 44];
      if (v19)
      {
        v20 = 0;
        v21 = (result - *(v19 + 12));
      }

      else
      {
        v21 = *&v18[4 * v17];
        v20 = 1;
      }

      (*(*a2 + 136))(a2, v21, v20);
      result = (*(*a2 + 120))(a2, *&v18[2 * v17 + 20]);
      *(this + 3) = result;
      v12 = v17-- <= 0;
    }

    while (!v12);
  }

  return result;
}

uint64_t icu::StringTrieBuilder::SplitBranchNode::operator==(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = icu::StringTrieBuilder::Node::operator==(a1, a2);
  if (result)
  {
    return *(a1 + 20) == *(a2 + 20) && *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32);
  }

  return result;
}

uint64_t icu::StringTrieBuilder::SplitBranchNode::markRightEdgesFirst(icu::StringTrieBuilder::SplitBranchNode *this, uint64_t a2)
{
  if (!*(this + 3))
  {
    *(this + 4) = a2;
    v3 = (*(**(this + 4) + 32))(*(this + 4));
    a2 = (*(**(this + 3) + 32))(*(this + 3), (v3 - 1));
    *(this + 3) = a2;
  }

  return a2;
}

uint64_t icu::StringTrieBuilder::SplitBranchNode::write(icu::StringTrieBuilder::SplitBranchNode *this, icu::StringTrieBuilder *a2)
{
  v5 = *(this + 3);
  v4 = *(this + 4);
  v6 = v5[3];
  if (v6 < 0 && (v6 < v4[3] || v6 > *(this + 4)))
  {
    (*(*v5 + 40))(v5, a2);
    v4 = *(this + 4);
  }

  (*(*v4 + 40))(v4, a2);
  (*(*a2 + 152))(a2, *(*(this + 3) + 12));
  result = (*(*a2 + 120))(a2, *(this + 10));
  *(this + 3) = result;
  return result;
}

uint64_t icu::StringTrieBuilder::BranchHeadNode::operator==(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = icu::StringTrieBuilder::ValueNode::operator==(a1, a2);
  if (result)
  {
    return *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32);
  }

  return result;
}

uint64_t icu::StringTrieBuilder::BranchHeadNode::markRightEdgesFirst(icu::StringTrieBuilder::BranchHeadNode *this, uint64_t a2)
{
  if (!*(this + 3))
  {
    a2 = (*(**(this + 4) + 32))(*(this + 4));
    *(this + 3) = a2;
  }

  return a2;
}

uint64_t icu::StringTrieBuilder::BranchHeadNode::write(icu::StringTrieBuilder::BranchHeadNode *this, icu::StringTrieBuilder *a2)
{
  (*(**(this + 4) + 40))(*(this + 4));
  v4 = *(this + 6);
  if (v4 <= (*(*a2 + 96))(a2))
  {
    result = (*(*a2 + 144))(a2, *(this + 16), *(this + 5), (*(this + 6) - 1));
  }

  else
  {
    (*(*a2 + 120))(a2, (*(this + 6) - 1));
    result = (*(*a2 + 144))(a2, *(this + 16), *(this + 5), 0);
  }

  *(this + 3) = result;
  return result;
}

void sub_1952221E0(icu::UObject *a1)
{
  icu::UObject::~UObject(a1);

  JUMPOUT(0x19A8B2600);
}

void sub_19522221C(icu::UObject *a1)
{
  icu::UObject::~UObject(a1);

  JUMPOUT(0x19A8B2600);
}

void sub_195222258(icu::UObject *a1)
{
  icu::UObject::~UObject(a1);

  JUMPOUT(0x19A8B2600);
}

void sub_195222294(icu::UObject *a1)
{
  icu::UObject::~UObject(a1);

  JUMPOUT(0x19A8B2600);
}

void sub_1952222D0(icu::UObject *a1)
{
  icu::UObject::~UObject(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_195222308(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    v4 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  v4 = *(a3 + 8);
  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = *(a4 + 8);
LABEL_6:
  *(result + 8) = (v5 + 37 * (v4 + 37 * a2) - 195751071);
  *result = &unk_1F09337A0;
  *(result + 20) = a2;
  *(result + 24) = a3;
  *(result + 32) = a4;
  return result;
}

uint64_t ualoc_getLanguagesForRegion(const char *a1, void *a2, int a3, UErrorCode *a4, double a5)
{
  v45 = *MEMORY[0x1E69E9840];
  if (*a4 > 0)
  {
    goto LABEL_2;
  }

  v9 = a5 > 1.0 || a1 == 0;
  if (v9 || a5 < 0.0)
  {
    goto LABEL_13;
  }

  LODWORD(v10) = a3;
  if (a2)
  {
    if ((a3 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

LABEL_13:
    v5 = 0;
    *a4 = U_ILLEGAL_ARGUMENT_ERROR;
    goto LABEL_14;
  }

  if (a3)
  {
    goto LABEL_13;
  }

LABEL_10:
  v12 = ures_openDirect(0, "supplementalData", a4);
  v13 = ures_getByKey(v12, "territoryInfo", v12, a4);
  v14 = ures_getByKey(v13, a1, v13, a4);
  v15 = v14;
  if (*a4 >= 1)
  {
    ures_close(v14);
LABEL_2:
    v5 = 0;
    goto LABEL_14;
  }

  Size = ures_getSize(v14);
  bzero(__src, 0x410uLL);
  if (Size < 1)
  {
    v5 = 0;
    v19 = 0;
    v21 = __src;
  }

  else
  {
    v5 = 0;
    v19 = 0;
    v20 = 0;
    v41 = 26;
    v42 = Size;
    v21 = __src;
    do
    {
      v22 = ures_getByIndex(v15, v20, v19, a4);
      v19 = v22;
      if (*a4 > 0)
      {
        break;
      }

      Key = ures_getKey(v22);
      if (strcmp(Key, "territoryF") && strnlen(Key, 0x18uLL) <= 0x17)
      {
        HIDWORD(v43) = 0;
        v24 = ures_getByKey(v19, "populationShareF", 0, &v43 + 1);
        v25 = 0.0;
        if (SHIDWORD(v43) <= 0)
        {
          v26 = v24;
          Int = ures_getInt(v24, &v43 + 1);
          if (SHIDWORD(v43) <= 0)
          {
            v25 = uprv_pow10(Int / 1000000 - 55) * (Int % 1000000);
          }

          ures_close(v26);
        }

        if (v25 >= a5)
        {
          if (a2)
          {
            v43 = 0;
            StringByKey = ures_getStringByKey(v19, "officialStatus", &v43, &v43 + 1);
            v29 = 0;
            if (SHIDWORD(v43) <= 0)
            {
              v30 = StringByKey;
              v31 = u_strcmp(StringByKey, L"official");
              if (v31)
              {
                if (v31 < 0 && !u_strcmp(v30, "d"))
                {
                  v29 = 8;
                }

                else
                {
                  v29 = 4 * (u_strcmp(v30, "o") == 0);
                }
              }

              else
              {
                v29 = 12;
              }
            }

            v32 = v41;
            v40 = v29;
            if (v5 >= v41)
            {
              v32 = 3 * v41;
              if (v21 == __src)
              {
                v33 = malloc_type_malloc(40 * v32, 0x10000407A37F5ACuLL);
                if (!v33)
                {
LABEL_60:
                  v21 = 0;
                  *a4 = U_MEMORY_ALLOCATION_ERROR;
                  break;
                }

                v21 = v33;
                memcpy(v33, __src, 40 * v5);
              }

              else
              {
                v21 = malloc_type_realloc(v21, 120 * v41, 0x10000407A37F5ACuLL);
                if (!v21)
                {
                  goto LABEL_60;
                }
              }
            }

            v41 = v32;
            v39 = v21;
            v34 = &v21[40 * v5];
            v35 = off_1E74032B0;
            v36 = "az";
            while (1)
            {
              v37 = strcmp(Key, v36);
              if (v37 <= 0)
              {
                break;
              }

              v38 = *v35;
              v35 += 2;
              v36 = v38;
              if (!v38)
              {
                goto LABEL_44;
              }
            }

            if (!v37)
            {
              Key = *(v35 - 1);
            }

LABEL_44:
            strcpy(v34, Key);
            *(v34 + 3) = v25;
            *(v34 + 8) = v40;
            v21 = v39;
          }

          v5 = (v5 + 1);
        }

        Size = v42;
      }

      ++v20;
    }

    while (v20 != Size);
  }

  ures_close(v19);
  ures_close(v15);
  if (*a4 < 1)
  {
    if (!a2)
    {
      goto LABEL_14;
    }

    qsort(v21, v5, 0x28uLL, sub_1952227CC);
    if (v5 >= v10)
    {
      v10 = v10;
    }

    else
    {
      v10 = v5;
    }

    memcpy(a2, v21, 40 * v10);
    v5 = v10;
  }

  else
  {
    v10 = 0;
    v5 = 0;
  }

  if (v21 != __src)
  {
    free(v21);
    v5 = v10;
  }

LABEL_14:
  v16 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t sub_1952227CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  if (v2 > v3)
  {
    return 0xFFFFFFFFLL;
  }

  if (v2 < v3)
  {
    return 1;
  }

  return strcmp(a1, a2);
}

uint64_t ualoc_getRegionsForLanguage(icu::Locale *a1, void *a2, unsigned int a3, int *a4, double a5)
{
  v65 = *MEMORY[0x1E69E9840];
  if (*a4 > 0)
  {
    v5 = 0;
    goto LABEL_29;
  }

  __p = 0;
  v44 = 0;
  v45 = 0;
  v54 = 0u;
  memset(v55, 0, sizeof(v55));
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  *__s = 0u;
  v63 = 0u;
  memset(v64, 0, sizeof(v64));
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  *__s2 = 0u;
  ualoc_canonicalForm(a1, __s, 157, a4);
  v46 = 0;
  if (uloc_getVariant(__s, 0, 0, &v46) >= 1)
  {
    *strrchr(__s, 95) = 0;
  }

  uloc_getLanguage(__s, __s2, 157, a4);
  uloc_addLikelySubtags(__s, __s, 157, a4);
  uloc_addLikelySubtags(__s2, __s2, 157, a4);
  if (*a4 <= 0)
  {
    v20 = strrchr(__s, 95);
    if (v20)
    {
      *v20 = 0;
      *strrchr(__s2, 95) = 0;
      if (!strcmp(__s, __s2))
      {
        *strrchr(__s, 95) = 0;
      }
    }
  }

  v10 = ures_openDirect(0, "supplementalData", a4);
  v11 = ures_getByKey(v10, "territoryInfo", 0, a4);
  if (*a4 <= 0)
  {
    v5 = 0;
    v14 = 0;
    v13 = 0;
    v12 = 0;
    v42 = a2;
    while (1)
    {
      if (!ures_hasNext(v11))
      {
        goto LABEL_8;
      }

      NextResource = ures_getNextResource(v11, v12, a4);
      v12 = NextResource;
      if (*a4 > 0)
      {
        goto LABEL_8;
      }

      v46 = 0;
      Key = ures_getKey(NextResource);
      if (*Key == 85 && Key[1] == 83 && !Key[2] && !(*__s ^ 0x687A | __s[2]))
      {
        v23 = "zh_Hans";
      }

      else
      {
        v23 = __s;
      }

      v24 = ures_getByKey(v12, v23, v13, &v46);
      v13 = v24;
      if (v46 <= 0)
      {
        v25 = ures_getByKey(v24, "populationShareF", v14, &v46);
        v14 = v25;
        v26 = 0.0;
        if (v46 <= 0)
        {
          Int = ures_getInt(v25, &v46);
          if (v46 <= 0)
          {
            v26 = uprv_pow10(Int / 1000000 - 55) * (Int % 1000000);
          }
        }

        if (v26 >= a5)
        {
          if (a2)
          {
            memset(__s2, 0, sizeof(__s2));
            *&v57 = 0;
            v28 = ures_getKey(v12);
            strcpy(__s2, v28);
            *&__s2[8] = v26;
            LODWORD(v57) = 0;
            v46 = 0;
            StringByKey = ures_getStringByKey(v13, "officialStatus", 0, &v46);
            if (v46 > 0)
            {
              goto LABEL_58;
            }

            v30 = StringByKey;
            if (!StringByKey)
            {
              goto LABEL_58;
            }

            if (u_strcmp(StringByKey, L"official"))
            {
              if (u_strcmp(v30, "o"))
              {
                if (!u_strcmp(v30, "d"))
                {
                  v31 = 8;
                  goto LABEL_57;
                }

LABEL_58:
                v32 = v44;
                if (v44 >= v45)
                {
                  v36 = 0xAAAAAAAAAAAAAAABLL * ((v44 - __p) >> 3);
                  v37 = v36 + 1;
                  if (v36 + 1 > 0xAAAAAAAAAAAAAAALL)
                  {
                    sub_195223E74();
                  }

                  if (0x5555555555555556 * ((v45 - __p) >> 3) > v37)
                  {
                    v37 = 0x5555555555555556 * ((v45 - __p) >> 3);
                  }

                  if (0xAAAAAAAAAAAAAAABLL * ((v45 - __p) >> 3) >= 0x555555555555555)
                  {
                    v38 = 0xAAAAAAAAAAAAAAALL;
                  }

                  else
                  {
                    v38 = v37;
                  }

                  if (v38)
                  {
                    sub_195223E84(&__p, v38);
                  }

                  v33 = v10;
                  v39 = 8 * ((v44 - __p) >> 3);
                  v40 = *__s2;
                  *(v39 + 16) = v57;
                  *v39 = v40;
                  v35 = (24 * v36 + 24);
                  memcpy((24 * v36 - (v44 - __p)), __p, v44 - __p);
                  v41 = __p;
                  __p = (24 * v36 - (v44 - __p));
                  v44 = v35;
                  v45 = 0;
                  if (v41)
                  {
                    operator delete(v41);
                  }
                }

                else
                {
                  v33 = v10;
                  v34 = *__s2;
                  *(v44 + 2) = v57;
                  *v32 = v34;
                  v35 = v32 + 24;
                }

                v44 = v35;
                v10 = v33;
                a2 = v42;
                goto LABEL_71;
              }

              v31 = 4;
            }

            else
            {
              v31 = 12;
            }

LABEL_57:
            LODWORD(v57) = v31;
            goto LABEL_58;
          }

          v5 = (v5 + 1);
        }
      }

LABEL_71:
      if (*a4 >= 1)
      {
        goto LABEL_8;
      }
    }
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  v5 = 0;
LABEL_8:
  if (a2)
  {
    v15 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v44 - __p) >> 3));
    v16 = v44 == __p ? 0 : v15;
    sub_195223EDC(__p, v44, v16, 1);
    v17 = -1431655765 * ((v44 - __p) >> 3);
    v5 = v17 >= a3 ? a3 : v17;
    if (v5)
    {
      memmove(a2, __p, 24 * v5);
    }
  }

  if (v14)
  {
    ures_close(v14);
  }

  if (v13)
  {
    ures_close(v13);
  }

  if (v12)
  {
    ures_close(v12);
  }

  if (v11)
  {
    ures_close(v11);
  }

  if (v10)
  {
    ures_close(v10);
  }

  if (__p)
  {
    v44 = __p;
    operator delete(__p);
  }

LABEL_29:
  v18 = *MEMORY[0x1E69E9840];
  return v5;
}

size_t ualoc_getAppleParent(char *a1, char *a2, int a3, UErrorCode *a4)
{
  v34 = *MEMORY[0x1E69E9840];
  if (*a4 > 0)
  {
    goto LABEL_2;
  }

  if (a2)
  {
    if ((a3 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_25:
    Parent = 0;
    v18 = 1;
LABEL_26:
    *a4 = v18;
    goto LABEL_3;
  }

  if (a3)
  {
    goto LABEL_25;
  }

LABEL_6:
  memset(v33, 0, sizeof(v33));
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  *__s1 = 0u;
  v26 = 0u;
  BaseName = uloc_getBaseName(a1, __s1, 157, a4);
  if (*a4 > 0)
  {
LABEL_2:
    Parent = 0;
    goto LABEL_3;
  }

  v11 = BaseName;
  if (*a4 == U_STRING_NOT_TERMINATED_WARNING)
  {
    v33[29] = 0;
    *a4 = U_ZERO_ERROR;
  }

  v12 = strstr(__s1, "__");
  if (v12)
  {
    *v12 = 0;
    v11 = strlen(__s1);
  }

  if (v11 > 1)
  {
    if (*__s1 == 28261 || *__s1 == 26746 || v11 != 2 && (*__s1 == 30073 ? (v13 = __s1[2] == 101) : (v13 = 0), v13))
    {
      v14 = "en_150";
      v15 = off_1E7402D18;
      while (1)
      {
        v16 = strcmp(__s1, v14);
        if (v16 <= 0)
        {
          break;
        }

        v17 = *v15;
        v15 += 2;
        v14 = v17;
        if (!v17)
        {
          goto LABEL_28;
        }
      }

      if (!v16)
      {
        LocaleByType = *(v15 - 1);
        Parent = strlen(LocaleByType);
        if (Parent < a3)
        {
          goto LABEL_41;
        }

LABEL_43:
        v18 = 15;
        goto LABEL_26;
      }
    }
  }

LABEL_28:
  v24 = U_ZERO_ERROR;
  v19 = ures_openDirect(0, __s1, &v24);
  if (v24 < U_ILLEGAL_ARGUMENT_ERROR)
  {
    v20 = v19;
    LocaleByType = ures_getLocaleByType(v19, 0, &v24);
    ures_close(v20);
    if (v24 <= U_ZERO_ERROR)
    {
      if (strcmp(__s1, LocaleByType))
      {
        Parent = strlen(LocaleByType);
        if (Parent < a3)
        {
LABEL_41:
          strcpy(a2, LocaleByType);
          goto LABEL_3;
        }

        goto LABEL_43;
      }
    }
  }

  LocParent = ures_getLocParent(__s1, a2, a3, a4);
  Parent = LocParent;
  v23 = *a4;
  if (*a4 <= 0 && !LocParent)
  {
    Parent = uloc_getParent(__s1, a2, a3, a4);
    v23 = *a4;
  }

  if (v23 <= U_ZERO_ERROR && !Parent)
  {
    if (a3 < 5)
    {
      *a4 = U_BUFFER_OVERFLOW_ERROR;
    }

    else
    {
      strcpy(a2, "root");
    }

    Parent = 4;
  }

LABEL_3:
  v5 = *MEMORY[0x1E69E9840];
  return Parent;
}

char **sub_195223044(char **result, char *a2, uint64_t a3, UErrorCode *a4)
{
  v43 = *MEMORY[0x1E69E9840];
  if (*result)
  {
    goto LABEL_20;
  }

  v5 = a3;
  v6 = result;
  *result = a2;
  v7 = sub_1952233C4(a3);
  v6[1] = v7;
  BaseName = uloc_getBaseName(*v6, v7, 58, a4);
  v9 = v5;
  do
  {
    v10 = v9;
    v9 = *(v9 + 672);
  }

  while (v9);
  v11 = (*(v10 + 656) + BaseName);
  *(v10 + 656) = v11 + 1;
  *v11 = 0;
  v12 = sub_1952233C4(v5);
  v6[2] = v12;
  if (*a4 <= 0)
  {
    v13 = v6[1];
    v14 = bsearch(v13, off_1EAEC65E0, 0x1BuLL, 0x10uLL, sub_195223DD8);
    if (v14)
    {
      v13 = v14[1];
      goto LABEL_7;
    }

    if (dword_1ED4427D8 >= 1)
    {
      v33 = 0;
      v27 = ures_getByKey(qword_1ED4427E0, v13, 0, &v33);
      v28 = v33;
      if (v33 < 1)
      {
        v29 = v27;
        v30 = 0;
        goto LABEL_26;
      }

      if (strchr(v13, 95))
      {
        memset(v42, 0, sizeof(v42));
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        *__dst = 0u;
        v35 = 0u;
        strcpy(__dst, v13);
        *strchr(__dst, 95) = 0;
        v33 = 0;
        v29 = ures_getByKey(qword_1ED4427E0, __dst, 0, &v33);
        v30 = v33 > 0;
LABEL_26:
        if (v30 || !v29)
        {
          goto LABEL_7;
        }

        *__dst = 58;
        ures_getUTF8StringByKey(v29, "replacement", v12, __dst, 1, a4);
        if (*a4 <= 0 && *__dst >= 58)
        {
          *a4 = U_BUFFER_OVERFLOW_ERROR;
        }

        if (v28 >= 1)
        {
          if (strchr(v12, 95))
          {
            v31 = strlen(v12);
            if (v31 < 6)
            {
              goto LABEL_39;
            }

            if (v12[v31 - 5] != 95)
            {
              goto LABEL_39;
            }

            v32 = strrchr(v13, 95);
            if (strlen(v32) > 4)
            {
              goto LABEL_39;
            }
          }

          else
          {
            v32 = strchr(v13, 95);
          }

          strcat(v12, v32);
        }

LABEL_39:
        ures_close(v29);
LABEL_10:
        v12 = v6[2];
        goto LABEL_11;
      }
    }

LABEL_7:
    if (strnlen(v13, 0x3AuLL) > 57)
    {
      *a4 = U_BUFFER_OVERFLOW_ERROR;
    }

    else
    {
      strcpy(v12, v13);
    }

    goto LABEL_10;
  }

LABEL_11:
  v15 = strlen(v12);
  v16 = v5;
  do
  {
    v17 = v16;
    v16 = *(v16 + 672);
  }

  while (v16);
  v18 = (*(v17 + 656) + v15);
  *(v17 + 656) = v18 + 1;
  *v18 = 0;
  v19 = sub_1952233C4(v5);
  v6[3] = v19;
  Language = uloc_getLanguage(v6[2], v19, 58, a4);
  do
  {
    v21 = v5;
    v5 = *(v5 + 672);
  }

  while (v5);
  v22 = (*(v21 + 656) + Language);
  *(v21 + 656) = v22 + 1;
  *v22 = 0;
  v23 = v6[3];
  v6[4] = v23;
  v24 = off_1E7403248;
  v25 = -2;
  while (1)
  {
    result = strcmp(v23, *(v24 - 1));
    if (!result)
    {
      break;
    }

    v24 += 2;
    v25 += 2;
    if (v25 >= 0xA)
    {
      goto LABEL_20;
    }
  }

  v6[4] = *v24;
LABEL_20:
  v26 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1952233C4(uint64_t a1)
{
  do
  {
    v2 = a1;
    a1 = *(a1 + 672);
  }

  while (a1);
  result = *(v2 + 656);
  if (*(v2 + 664) - result <= 58)
  {
    operator new();
  }

  return result;
}

uint64_t sub_19522344C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v20[2] = *MEMORY[0x1E69E9840];
  v4 = result + 40;
  if (!*(result + 40))
  {
    v8 = result;
    result = *(result + 16);
    v8[5] = result;
    if (!a3)
    {
      goto LABEL_9;
    }

    v19 = 0;
    result = uloc_getCountry(result, 0, 0, &v19);
    if (result < 1)
    {
      goto LABEL_9;
    }

    v9 = v8[2];
    result = strcmp(v9, "es_MX");
    if (!result)
    {
      goto LABEL_9;
    }

    result = strcmp(v9, "zh_Hant_TW");
    if (result && (v19 = 0, v20[0] = 0, v20[1] = 0, uloc_minimizeSubtags(v9, v20, 16, &v19), result = uloc_getCountry(v20, 0, 0, &v19), result >= 1))
    {
      v8[6] = v8[2];
      v10 = 1;
    }

    else
    {
LABEL_9:
      v10 = 0;
    }

    do
    {
      if (!*(v4 + 8 * v10))
      {
        break;
      }

      result = sub_1952233C4(a2);
      v11 = result;
      if (*a4 <= 0)
      {
        v16 = *(v4 + 8 * v10);
        v17 = bsearch(v16, off_1EAEC6790, 0x5AuLL, 0x10uLL, sub_195223DD8);
        if (v17)
        {
          v18 = *(v17 + 1);
          result = strlen(v18);
          if (result > 57)
          {
            *a4 = 15;
          }

          else
          {
            result = strcpy(v11, v18);
          }
        }

        else
        {
          result = ures_getLocParent(v16, v11, 57, a4);
          if (result <= 0 && *a4 < 1)
          {
            result = uloc_getParent(v16, v11, 57, a4);
          }

          v11[57] = 0;
        }
      }

      v12 = v10 + 1;
      if (v10 != 8 && *v11 && (result = strcmp(v11, "root"), result))
      {
        *(v4 + 8 * v12) = v11;
        result = strlen(v11);
        v13 = a2;
        do
        {
          v14 = v13;
          v13 = *(v13 + 672);
        }

        while (v13);
        v15 = (*(v14 + 656) + result);
        *(v14 + 656) = v15 + 1;
        *v15 = 0;
      }

      else
      {
        *(v4 + 8 * v12) = 0;
      }

      ++v10;
    }

    while (v12 != 9);
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ualoc_localizationsToUse(uint64_t a1, int a2, const char **a3, uint64_t a4, const char **a5, int a6, UErrorCode *a7)
{
  v88 = *MEMORY[0x1E69E9840];
  if (*a7 > 0)
  {
    goto LABEL_73;
  }

  v8 = a1;
  v73 = a3;
  if (!a1 || !v73 || !a5)
  {
    *a7 = U_ILLEGAL_ARGUMENT_ERROR;
LABEL_73:
    v45 = 0xFFFFFFFFLL;
    goto LABEL_74;
  }

  v80 = a6;
  if (!dword_1ED4427D8 && atomic_load_explicit(dword_1ED4427E8, memory_order_acquire) != 2 && icu::umtx_initImplPreInit(dword_1ED4427E8))
  {
    sub_195223D3C();
    icu::umtx_initImplPostInit(dword_1ED4427E8);
  }

  v66[1] = v66;
  v71 = a2;
  MEMORY[0x1EEE9AC00]();
  v72 = v66 - v12;
  bzero(v66 - v12, v13);
  if (a2)
  {
    v14 = &v72[120 * v71];
    v15 = v72;
    do
    {
      *v15 = 0;
      *(v15 + 5) = 0;
      v15 += 120;
    }

    while (v15 != v14);
  }

  v75 = a4;
  MEMORY[0x1EEE9AC00]();
  v82 = v66 - v16;
  bzero(v66 - v16, v17);
  if (a4)
  {
    v18 = &v82[120 * v75];
    v19 = v82;
    do
    {
      *v19 = 0;
      *(v19 + 5) = 0;
      v19 += 120;
    }

    while (v19 != v18);
  }

  v79 = a5;
  bzero(v84, 0x290uLL);
  *&v85[6] = v84;
  v86 = v85;
  v87 = 0;
  v76 = a4;
  if (a2 < 1)
  {
    v44 = 0;
    v37 = 0;
    v22 = v73;
    goto LABEL_76;
  }

  v20 = 0;
  v69 = 0;
  v70 = v8;
  v67 = v82 + 48;
  v21 = 999;
  v22 = v73;
  do
  {
    v23 = &v72[120 * v20];
    v78 = v20;
    sub_195223044(v23, *(v8 + 8 * v20), v84, a7);
    if (a4 >= 1)
    {
      v24 = 0;
      v81 = 0;
      v74 = (v23 + 40);
      v25 = v67;
      v26 = v75;
      while (1)
      {
        v27 = &v82[120 * v24];
        sub_195223044(v27, v22[v24], v84, a7);
        if (*a7 < 1)
        {
          if ((v21 & 0x80000000) == 0)
          {
            if (!strcmp(*(v23 + 8), *(v27 + 8)))
            {
              v21 = -1;
LABEL_49:
              v81 = v27;
              goto LABEL_22;
            }

            if (v21)
            {
              if (strcmp(*(v23 + 16), *(v27 + 16)))
              {
                if (!strcmp(*(v23 + 32), *(v27 + 32)))
                {
                  sub_19522344C(v23, v84, 0, a7);
                  sub_19522344C(v27, v84, 1, a7);
                  if (*a7 <= 0)
                  {
                    v28 = *v74;
                    if (*v74)
                    {
                      v29 = 0;
                      v68 = *(v27 + 40);
                      do
                      {
                        v30 = v25;
                        v77 = v29;
                        v31 = v29;
                        v32 = v68;
                        if (v68)
                        {
                          do
                          {
                            if (!strcmp(v28, v32))
                            {
                              if (!strcmp(*(v23 + 16), "pt_PT") && !strcmp(*(v27 + 16), "pt_BR"))
                              {
                                v69 = v27;
                              }

                              else
                              {
                                if (!strcmp(*(v23 + 24), *(v27 + 24)))
                                {
                                  v33 = v31;
                                }

                                else
                                {
                                  v33 = v31 + 1;
                                }

                                v34 = v33 < v21;
                                if (v33 < v21)
                                {
                                  v21 = v33;
                                }

                                v35 = v81;
                                if (v34)
                                {
                                  v35 = v27;
                                }

                                v81 = v35;
                              }
                            }

                            v36 = *v30++;
                            v32 = v36;
                            ++v31;
                          }

                          while (v36);
                        }

                        v29 = v77 + 1;
                        v22 = v73;
                        v28 = v74[v77 + 1];
                        v26 = v75;
                      }

                      while (v28);
                    }
                  }
                }

                goto LABEL_22;
              }

              v21 = 0;
              goto LABEL_49;
            }
          }
        }

        else
        {
          *a7 = U_ZERO_ERROR;
        }

LABEL_22:
        ++v24;
        v25 += 120;
        if (v24 == v26)
        {
          goto LABEL_52;
        }
      }
    }

    v81 = 0;
LABEL_52:
    LODWORD(a4) = v76;
    v8 = v70;
    v37 = v81;
    if (v81)
    {
      break;
    }

    v20 = (v78 + 1);
  }

  while (v78 + 1 < v71);
  if (v81)
  {
    if (v21 > 0)
    {
      v83 = 0;
      if (uloc_getCountry(*(v81 + 16), 0, 0, &v83))
      {
        v38 = *(v37 + 24);
        if (*v38 != 122 || v38[1] != 104 || v38[2])
        {
          v39 = 0;
          while (1)
          {
            v40 = &v72[120 * v39];
            sub_195223044(v40, *(v8 + 8 * v39), v84, a7);
            if (!strcmp(*(v40 + 3), *(v37 + 24)) && a4 >= 1)
            {
              break;
            }

LABEL_69:
            ++v39;
            v37 = v81;
            if (v39 == v71)
            {
              goto LABEL_70;
            }
          }

          v42 = *(v40 + 1);
          v43 = v75;
          v37 = v82;
          while (strcmp(v42, *(v37 + 8)) && strcmp(*(v40 + 2), *(v37 + 16)))
          {
            v37 += 120;
            if (!--v43)
            {
              goto LABEL_69;
            }
          }

LABEL_70:
          v22 = v73;
        }
      }
    }
  }

  v44 = v69;
LABEL_76:
  if (v44)
  {
    v48 = v37 == 0;
  }

  else
  {
    v48 = 0;
  }

  if (v48)
  {
    v37 = v44;
  }

  if (!v37)
  {
    goto LABEL_109;
  }

  *v79 = *v37;
  v45 = 1;
  sub_19522344C(v37, v84, 1, a7);
  v50 = (v37 + 40);
  v49 = *(v37 + 40);
  if (v49)
  {
    v51 = 0;
    if (a4 <= 1)
    {
      v52 = 1;
    }

    else
    {
      v52 = a4;
    }

    v81 = v52;
    v78 = (v82 + 16);
    v53 = (v37 + 40);
    v54 = v80;
    v82 = (v37 + 40);
    while (1)
    {
      if (v51)
      {
        if (*&v50[8 * v51 - 8] != v49 && a4 >= 1)
        {
LABEL_95:
          v56 = v81;
          v57 = v78;
          do
          {
            v58 = *(v57 - 2);
            if (*v37 != v58 && v45 < v54)
            {
              v60 = *v53;
              v61 = strcmp(*v53, "zh_Hant_HK");
              v62 = *v57;
              if (!v61 && !strcmp(*v57, "zh_Hant_TW") || !strcmp(v60, v62))
              {
                v79[v45] = v58;
                v45 = (v45 + 1);
              }

              v54 = v80;
            }

            v57 += 15;
            --v56;
          }

          while (v56);
        }
      }

      else if (a4 >= 1)
      {
        goto LABEL_95;
      }

      ++v51;
      v50 = v82;
      v53 = &v82[8 * v51];
      v49 = *v53;
      LODWORD(a4) = v76;
      if (!*v53)
      {
        v22 = v73;
        if (!v45)
        {
LABEL_109:
          if (a4 < 1)
          {
LABEL_113:
            v45 = 0;
          }

          else
          {
            v63 = v22;
            v64 = v79;
            v65 = v75;
            while (strcmp(*v63, "zxx"))
            {
              ++v63;
              if (!--v65)
              {
                goto LABEL_113;
              }
            }

            *v64 = *v63;
            v45 = 1;
          }
        }

        break;
      }
    }
  }

  sub_195223E30(v84);
LABEL_74:
  v46 = *MEMORY[0x1E69E9840];
  return v45;
}

uint64_t sub_195223D3C()
{
  sub_1952376A4(7u, sub_195223DE0);
  v4 = U_ZERO_ERROR;
  v0 = ures_openDirect(0, "metadata", &v4);
  v1 = ures_getByKey(v0, "alias", v0, &v4);
  result = ures_getByKey(v1, "language", v1, &v4);
  if (v4 <= U_ZERO_ERROR)
  {
    qword_1ED4427E0 = result;
    v3 = 1;
  }

  else
  {
    v3 = -1;
  }

  dword_1ED4427D8 = v3;
  return result;
}

uint64_t sub_195223DE0()
{
  if (dword_1ED4427D8 >= 1)
  {
    ures_close(qword_1ED4427E0);
    qword_1ED4427E0 = 0;
  }

  dword_1ED4427D8 = 0;
  atomic_store(0, &unk_1ED4427E8);
  return 1;
}

uint64_t sub_195223E30(uint64_t a1)
{
  if (*(a1 + 672))
  {
    v2 = sub_195223E30();
    MEMORY[0x19A8B2600](v2, 0x1030C402393BEA7);
  }

  return a1;
}

void sub_195223E84(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_195223E74();
}

void sub_195223EDC(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  while (2)
  {
    v8 = (a2 - 24);
    j = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = j;
          v10 = a2 - j;
          v11 = 0xAAAAAAAAAAAAAAABLL * ((a2 - j) >> 3);
          if (v11 > 2)
          {
            switch(v11)
            {
              case 3:

                sub_195224B58(a1, (a1 + 24), (a2 - 24));
                return;
              case 4:
                sub_195224B58(a1, (a1 + 24), (a1 + 48));
                v67 = *(a2 - 16);
                v68 = *(a1 + 56);
                if (v67 > v68 || v67 == v68 && strcmp((a2 - 24), (a1 + 48)) < 0)
                {
                  *__s1 = *(a1 + 48);
                  v69 = *__s1;
                  v165 = *(a1 + 64);
                  v70 = v165;
                  v71 = *(a2 - 8);
                  *(a1 + 48) = *v8;
                  *(a1 + 64) = v71;
                  *(a2 - 8) = v70;
                  *v8 = v69;
                  v72 = *(a1 + 56);
                  v73 = *(a1 + 32);
                  if (v72 > v73 || v72 == v73 && strcmp((a1 + 48), (a1 + 24)) < 0)
                  {
                    v74 = *(a1 + 40);
                    v75 = *(a1 + 24);
                    *(a1 + 24) = *(a1 + 48);
                    *(a1 + 40) = *(a1 + 64);
                    *(a1 + 48) = v75;
                    *(a1 + 64) = v74;
                    v76 = *(a1 + 32);
                    v77 = *(a1 + 8);
                    if (v76 > v77 || v76 == v77 && strcmp((a1 + 24), a1) < 0)
                    {
                      v78 = *a1;
                      v165 = *(a1 + 16);
                      *__s1 = v78;
                      *a1 = *(a1 + 24);
                      *(a1 + 16) = *(a1 + 40);
                      *(a1 + 24) = *__s1;
                      *(a1 + 40) = v165;
                    }
                  }
                }

                return;
              case 5:

                sub_195224CE4(a1, a1 + 24, a1 + 48, a1 + 72, a2 - 24);
                return;
            }
          }

          else
          {
            if (v11 < 2)
            {
              return;
            }

            if (v11 == 2)
            {
              v79 = *(a2 - 16);
              v80 = *(a1 + 8);
              if (v79 > v80 || v79 == v80 && strcmp((a2 - 24), a1) < 0)
              {
                v81 = *a1;
                v165 = *(a1 + 16);
                *__s1 = v81;
                v82 = *v8;
                *(a1 + 16) = *(a2 - 8);
                *a1 = v82;
                v83 = *__s1;
                *(a2 - 8) = v165;
                *v8 = v83;
              }

              return;
            }
          }

          if (v10 <= 575)
          {
            if (a4)
            {
              if (a1 != a2)
              {
                v84 = (a1 + 24);
                if (a1 + 24 != a2)
                {
                  v85 = 0;
                  v86 = a1;
                  do
                  {
                    v87 = v86;
                    v86 = v84;
                    v88 = *(v87 + 32);
                    v89 = *(v87 + 8);
                    if (v88 > v89 || v88 == v89 && strcmp(v84, v87) < 0)
                    {
                      v90 = *v86;
                      v165 = *(v86 + 16);
                      *__s1 = v90;
                      *v86 = *v87;
                      *(v86 + 16) = *(v87 + 16);
                      v91 = a1;
                      if (v87 != a1)
                      {
                        v92 = *&__s1[8];
                        v93 = v85;
                        while (1)
                        {
                          v94 = a1 + v93;
                          v95 = *(a1 + v93 - 16);
                          if (v92 <= v95)
                          {
                            if (v92 != v95)
                            {
                              v91 = a1 + v93;
                              goto LABEL_135;
                            }

                            if ((strcmp(__s1, (a1 + v93 - 24)) & 0x80000000) == 0)
                            {
                              break;
                            }
                          }

                          v87 -= 24;
                          *v94 = *(a1 + v93 - 24);
                          *(v94 + 16) = *(a1 + v93 - 8);
                          v93 -= 24;
                          if (!v93)
                          {
                            v91 = a1;
                            goto LABEL_135;
                          }
                        }

                        v91 = v87;
                      }

LABEL_135:
                      v96 = *__s1;
                      *(v91 + 16) = v165;
                      *v91 = v96;
                    }

                    v84 = (v86 + 24);
                    v85 += 24;
                  }

                  while (v86 + 24 != a2);
                }
              }
            }

            else if (a1 != a2)
            {
              v152 = (a1 + 24);
              if (a1 + 24 != a2)
              {
                v153 = a1 - 24;
                do
                {
                  v154 = a1;
                  a1 = v152;
                  v155 = *(v154 + 32);
                  v156 = *(v154 + 8);
                  if (v155 > v156 || v155 == v156 && strcmp(v152, v154) < 0)
                  {
                    v157 = *(a1 + 16);
                    *__s1 = *a1;
                    v165 = v157;
                    v158 = *&__s1[8];
                    for (i = v153; ; i -= 24)
                    {
                      *(i + 48) = *(i + 24);
                      *(i + 64) = *(i + 40);
                      v160 = *(i + 8);
                      if (v158 <= v160 && (v158 != v160 || (strcmp(__s1, i) & 0x80000000) == 0))
                      {
                        break;
                      }
                    }

                    v161 = *__s1;
                    *(i + 40) = v165;
                    *(i + 24) = v161;
                  }

                  v152 = (a1 + 24);
                  v153 += 24;
                }

                while (a1 + 24 != a2);
              }
            }

            return;
          }

          if (!a3)
          {
            if (a1 != a2)
            {
              v97 = (v11 - 2) >> 1;
              v98 = v97;
              do
              {
                v99 = v98;
                if (v97 >= v98)
                {
                  v100 = (2 * v98) | 1;
                  v101 = a1 + 24 * v100;
                  if (2 * v98 + 2 < v11)
                  {
                    v102 = *(v101 + 8);
                    v103 = *(v101 + 32);
                    if (v102 > v103 || v102 == v103 && (v104 = strcmp((a1 + 24 * v100), (v101 + 24)), v97 = (v11 - 2) >> 1, v104 < 0))
                    {
                      v101 += 24;
                      v100 = 2 * v99 + 2;
                    }
                  }

                  v105 = a1 + 24 * v99;
                  v106 = *(v101 + 8);
                  v107 = *(v105 + 8);
                  if (v106 <= v107)
                  {
                    if (v106 != v107 || (v108 = strcmp(v101, (a1 + 24 * v99)), v97 = (v11 - 2) >> 1, (v108 & 0x80000000) == 0))
                    {
                      v109 = *v105;
                      v165 = *(v105 + 16);
                      *__s1 = v109;
                      v110 = *v101;
                      *(v105 + 16) = *(v101 + 16);
                      *v105 = v110;
                      if (v97 >= v100)
                      {
                        v113 = *&__s1[8];
                        while (1)
                        {
                          v114 = 2 * v100;
                          v100 = (2 * v100) | 1;
                          v111 = a1 + 24 * v100;
                          v115 = v114 + 2;
                          if (v114 + 2 < v11)
                          {
                            v116 = *(v111 + 8);
                            v117 = *(v111 + 32);
                            if (v116 > v117 || v116 == v117 && (v118 = strcmp((a1 + 24 * v100), (v111 + 24)), v97 = (v11 - 2) >> 1, v118 < 0))
                            {
                              v111 += 24;
                              v100 = v115;
                            }
                          }

                          v119 = *(v111 + 8);
                          if (v119 > v113)
                          {
                            break;
                          }

                          if (v119 == v113)
                          {
                            v120 = strcmp(v111, __s1);
                            v97 = (v11 - 2) >> 1;
                            if (v120 < 0)
                            {
                              break;
                            }
                          }

                          v121 = *v111;
                          *(v101 + 16) = *(v111 + 16);
                          *v101 = v121;
                          v101 = v111;
                          if (v97 < v100)
                          {
                            goto LABEL_151;
                          }
                        }
                      }

                      v111 = v101;
LABEL_151:
                      v112 = *__s1;
                      *(v111 + 16) = v165;
                      *v111 = v112;
                    }
                  }
                }

                v98 = v99 - 1;
              }

              while (v99);
              v122 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 3);
              do
              {
                v123 = 0;
                v124 = *a1;
                v163 = *(a1 + 16);
                *__s2 = v124;
                v125 = a1;
                do
                {
                  v126 = v125;
                  v127 = v125 + 24 * v123;
                  v125 = v127 + 24;
                  v128 = 2 * v123;
                  v123 = (2 * v123) | 1;
                  v129 = v128 + 2;
                  if (v128 + 2 < v122)
                  {
                    v130 = v127 + 48;
                    v131 = *(v127 + 32);
                    v132 = *(v127 + 56);
                    if (v131 > v132 || v131 == v132 && strcmp((v127 + 24), (v127 + 48)) < 0)
                    {
                      v125 = v130;
                      v123 = v129;
                    }
                  }

                  v133 = *v125;
                  *(v126 + 16) = *(v125 + 16);
                  *v126 = v133;
                }

                while (v123 <= ((v122 - 2) >> 1));
                a2 -= 24;
                if (v125 == a2)
                {
                  v145 = *__s2;
                  *(v125 + 16) = v163;
                  *v125 = v145;
                }

                else
                {
                  v134 = *a2;
                  *(v125 + 16) = *(a2 + 16);
                  *v125 = v134;
                  v135 = *__s2;
                  *(a2 + 16) = v163;
                  *a2 = v135;
                  v136 = v125 - a1 + 24;
                  if (v136 >= 25)
                  {
                    v137 = -2 - 0x5555555555555555 * (v136 >> 3);
                    v138 = v137 >> 1;
                    v139 = a1 + 24 * (v137 >> 1);
                    v140 = *(v139 + 8);
                    v141 = *(v125 + 8);
                    if (v140 > v141 || v140 == v141 && strcmp((a1 + 24 * (v137 >> 1)), v125) < 0)
                    {
                      v142 = *v125;
                      v165 = *(v125 + 16);
                      *__s1 = v142;
                      v143 = *v139;
                      *(v125 + 16) = *(v139 + 16);
                      *v125 = v143;
                      if (v137 >= 2)
                      {
                        v146 = *&__s1[8];
                        while (1)
                        {
                          v147 = v138 - 1;
                          v138 = (v138 - 1) >> 1;
                          v144 = a1 + 24 * v138;
                          v148 = *(v144 + 8);
                          if (v148 <= v146 && (v148 != v146 || (strcmp((a1 + 24 * v138), __s1) & 0x80000000) == 0))
                          {
                            break;
                          }

                          v149 = *v144;
                          *(v139 + 16) = *(v144 + 16);
                          *v139 = v149;
                          v139 = a1 + 24 * v138;
                          if (v147 <= 1)
                          {
                            goto LABEL_185;
                          }
                        }
                      }

                      v144 = v139;
LABEL_185:
                      v150 = *__s1;
                      *(v144 + 16) = v165;
                      *v144 = v150;
                    }
                  }
                }
              }

              while (v122-- > 2);
            }

            return;
          }

          v12 = v11 >> 1;
          v13 = a1 + 24 * (v11 >> 1);
          if (v10 < 0xC01)
          {
            sub_195224B58(v13, a1, (a2 - 24));
          }

          else
          {
            sub_195224B58(a1, v13, (a2 - 24));
            v14 = 3 * v12;
            sub_195224B58(a1 + 24, (a1 + 8 * v14 - 24), (a2 - 48));
            sub_195224B58(a1 + 48, (a1 + 24 + 8 * v14), (a2 - 72));
            sub_195224B58(a1 + 8 * v14 - 24, v13, (a1 + 24 + 8 * v14));
            v15 = *a1;
            v165 = *(a1 + 16);
            *__s1 = v15;
            v16 = *(v13 + 16);
            *a1 = *v13;
            *(a1 + 16) = v16;
            v17 = *__s1;
            *(v13 + 16) = v165;
            *v13 = v17;
          }

          --a3;
          if (a4)
          {
            break;
          }

          v18 = *(a1 - 16);
          v19 = *(a1 + 8);
          if (v18 > v19 || v18 == v19 && strcmp((a1 - 24), a1) < 0)
          {
            break;
          }

          v46 = *(a1 + 16);
          *__s2 = *a1;
          v163 = v46;
          v47 = *&__s2[8];
          v48 = *(a2 - 16);
          if (*&__s2[8] > v48 || *&__s2[8] == v48 && strcmp(__s2, (a2 - 24)) < 0)
          {
            v49 = *(a1 + 32);
            if (v47 <= v49)
            {
              v51 = (a1 + 56);
              while (1)
              {
                if (v47 == v49)
                {
                  j = v51 - 4;
                  if (strcmp(__s2, v51 - 32) < 0)
                  {
                    break;
                  }
                }

                v52 = *v51;
                v51 += 3;
                v49 = v52;
                if (v47 > v52)
                {
                  j = v51 - 4;
                  break;
                }
              }
            }

            else
            {
              j = (a1 + 24);
            }
          }

          else
          {
            for (j = (a1 + 24); j < a2; j += 3)
            {
              v50 = j[1];
              if (v47 > v50 || v47 == v50 && strcmp(__s2, j) < 0)
              {
                break;
              }
            }
          }

          v53 = a2;
          if (j < a2)
          {
            for (k = a2 - 40; v47 > v48 || v47 == v48 && strcmp(__s2, (k + 16)) < 0; k -= 24)
            {
              v55 = *k;
              v48 = v55;
            }

            v53 = k + 16;
          }

          while (j < v53)
          {
            v56 = *j;
            v165 = *(j + 2);
            *__s1 = v56;
            v57 = *v53;
            j[2] = *(v53 + 16);
            *j = v57;
            v58 = *__s1;
            *(v53 + 16) = v165;
            *v53 = v58;
            v59 = *&__s2[8];
            v60 = j[4];
            if (*&__s2[8] <= v60)
            {
              v61 = j + 7;
              while (1)
              {
                if (v59 == v60)
                {
                  j = v61 - 4;
                  if (strcmp(__s2, v61 - 32) < 0)
                  {
                    break;
                  }
                }

                v62 = *v61;
                v61 += 3;
                v60 = v62;
                if (v59 > v62)
                {
                  j = v61 - 4;
                  goto LABEL_90;
                }
              }
            }

            else
            {
              j += 3;
            }

            do
            {
              do
              {
LABEL_90:
                v53 -= 24;
                v63 = *(v53 + 8);
              }

              while (v59 > v63);
            }

            while (v59 == v63 && strcmp(__s2, v53) < 0);
          }

          v64 = j - 3;
          if (j - 3 != a1)
          {
            v65 = *v64;
            *(a1 + 16) = *(j - 1);
            *a1 = v65;
          }

          a4 = 0;
          v66 = *__s2;
          *(j - 1) = v163;
          *v64 = v66;
        }

        v20 = 0;
        v21 = *(a1 + 16);
        *__s2 = *a1;
        v163 = v21;
        v22 = *&__s2[8];
        while (1)
        {
          v23 = *(a1 + v20 + 32);
          if (v23 <= v22 && (v23 != v22 || (strcmp((a1 + v20 + 24), __s2) & 0x80000000) == 0))
          {
            break;
          }

          v20 += 24;
        }

        v24 = a1 + v20;
        v25 = a1 + v20 + 24;
        if (v20)
        {
          v26 = *(a2 - 16);
          v27 = a2 - 40;
          v28 = a2 - 24;
          if (v26 <= v22)
          {
            do
            {
              if (v26 == v22 && strcmp((v27 + 16), __s2) < 0)
              {
                break;
              }

              v29 = *v27;
              v27 -= 24;
              v26 = v29;
            }

            while (v29 <= v22);
LABEL_28:
            v28 = v27 + 16;
          }
        }

        else
        {
          v28 = a2;
          if (v25 < a2)
          {
            v30 = *(a2 - 16);
            v28 = a2 - 24;
            if (v30 <= v22)
            {
              v27 = a2 - 40;
              v28 = a2 - 24;
              while (1)
              {
                v44 = v27 + 16;
                if (v30 == v22)
                {
                  if (strcmp((v27 + 16), __s2) < 0 || v25 >= v44)
                  {
                    break;
                  }
                }

                else if (v25 >= v44)
                {
                  goto LABEL_28;
                }

                v28 -= 24;
                v45 = *v27;
                v27 -= 24;
                v30 = v45;
                if (v45 > v22)
                {
                  goto LABEL_28;
                }
              }
            }
          }
        }

        if (v25 < v28)
        {
          v31 = v25;
          v32 = v28;
          do
          {
            v33 = *v31;
            v165 = *(v31 + 16);
            *__s1 = v33;
            v34 = *v32;
            *(v31 + 16) = *(v32 + 16);
            *v31 = v34;
            v35 = *__s1;
            *(v32 + 16) = v165;
            *v32 = v35;
            v36 = *&__s2[8];
            do
            {
              do
              {
                v31 += 24;
                v37 = *(v31 + 8);
              }

              while (v37 > v36);
            }

            while (v37 == v36 && strcmp(v31, __s2) < 0);
            v38 = *(v32 - 16);
            if (v38 <= v36)
            {
              v39 = v32 - 40;
              do
              {
                if (v38 == v36 && strcmp((v39 + 16), __s2) < 0)
                {
                  break;
                }

                v40 = *v39;
                v39 -= 24;
                v38 = v40;
              }

              while (v40 <= v36);
              v32 = v39 + 16;
            }

            else
            {
              v32 -= 24;
            }
          }

          while (v31 < v32);
          v24 = v31 - 24;
        }

        if (v24 != a1)
        {
          v41 = *v24;
          *(a1 + 16) = *(v24 + 16);
          *a1 = v41;
        }

        v42 = *__s2;
        *(v24 + 16) = v163;
        *v24 = v42;
        if (v25 >= v28)
        {
          break;
        }

LABEL_51:
        sub_195223EDC(a1, v24, a3, a4 & 1);
        a4 = 0;
        j = (v24 + 24);
      }

      v43 = sub_195224F0C(a1, v24);
      j = (v24 + 24);
      if (sub_195224F0C((v24 + 24), a2))
      {
        break;
      }

      if (!v43)
      {
        goto LABEL_51;
      }
    }

    a2 = v24;
    if (!v43)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_195224B58(uint64_t __s2, double *a2, double *__s1)
{
  v5 = __s2;
  v6 = a2[1];
  v7 = *(__s2 + 8);
  if (v6 > v7 || v6 == v7 && (__s2 = strcmp(a2, __s2), (__s2 & 0x80000000) != 0))
  {
    v8 = __s1[1];
    if (v8 > v6 || v8 == v6 && (__s2 = strcmp(__s1, a2), (__s2 & 0x80000000) != 0))
    {
      v9 = *(v5 + 16);
      v10 = *v5;
      v11 = *(__s1 + 2);
      *v5 = *__s1;
      *(v5 + 16) = v11;
LABEL_19:
      *__s1 = v10;
      *(__s1 + 2) = v9;
      return __s2;
    }

    v21 = *(v5 + 16);
    v22 = *v5;
    v23 = *(a2 + 2);
    *v5 = *a2;
    *(v5 + 16) = v23;
    *a2 = v22;
    *(a2 + 2) = v21;
    v24 = __s1[1];
    v25 = a2[1];
    if (v24 > v25 || v24 == v25 && (__s2 = strcmp(__s1, a2), (__s2 & 0x80000000) != 0))
    {
      v9 = *(a2 + 2);
      v10 = *a2;
      v26 = *(__s1 + 2);
      *a2 = *__s1;
      *(a2 + 2) = v26;
      goto LABEL_19;
    }
  }

  else
  {
    v12 = __s1[1];
    if (v12 > v6 || v12 == v6 && (__s2 = strcmp(__s1, a2), (__s2 & 0x80000000) != 0))
    {
      v13 = *(a2 + 2);
      v14 = *a2;
      v15 = *(__s1 + 2);
      *a2 = *__s1;
      *(a2 + 2) = v15;
      *__s1 = v14;
      *(__s1 + 2) = v13;
      v16 = a2[1];
      v17 = *(v5 + 8);
      if (v16 > v17 || v16 == v17 && (__s2 = strcmp(a2, v5), (__s2 & 0x80000000) != 0))
      {
        v18 = *(v5 + 16);
        v19 = *v5;
        v20 = *(a2 + 2);
        *v5 = *a2;
        *(v5 + 16) = v20;
        *a2 = v19;
        *(a2 + 2) = v18;
      }
    }
  }

  return __s2;
}

__n128 sub_195224CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_195224B58(a1, a2, a3);
  result.n128_u64[0] = *(a4 + 8);
  v11 = *(a3 + 8);
  if (result.n128_f64[0] > v11 || result.n128_f64[0] == v11 && strcmp(a4, a3) < 0)
  {
    v12 = *(a3 + 16);
    result = *a3;
    v13 = *(a4 + 16);
    *a3 = *a4;
    *(a3 + 16) = v13;
    *a4 = result;
    *(a4 + 16) = v12;
    result.n128_u64[0] = *(a3 + 8);
    v14 = *(a2 + 8);
    if (result.n128_f64[0] > v14 || result.n128_f64[0] == v14 && strcmp(a3, a2) < 0)
    {
      v15 = *(a2 + 16);
      result = *a2;
      v16 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v16;
      *a3 = result;
      *(a3 + 16) = v15;
      result.n128_u64[0] = *(a2 + 8);
      v17 = *(a1 + 8);
      if (result.n128_f64[0] > v17 || result.n128_f64[0] == v17 && strcmp(a2, a1) < 0)
      {
        v18 = *(a1 + 16);
        result = *a1;
        v19 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v19;
        *a2 = result;
        *(a2 + 16) = v18;
      }
    }
  }

  result.n128_u64[0] = *(a5 + 8);
  v20 = *(a4 + 8);
  if (result.n128_f64[0] > v20 || result.n128_f64[0] == v20 && strcmp(a5, a4) < 0)
  {
    v21 = *(a4 + 16);
    result = *a4;
    v22 = *(a5 + 16);
    *a4 = *a5;
    *(a4 + 16) = v22;
    *a5 = result;
    *(a5 + 16) = v21;
    result.n128_u64[0] = *(a4 + 8);
    v23 = *(a3 + 8);
    if (result.n128_f64[0] > v23 || result.n128_f64[0] == v23 && strcmp(a4, a3) < 0)
    {
      v24 = *(a3 + 16);
      result = *a3;
      v25 = *(a4 + 16);
      *a3 = *a4;
      *(a3 + 16) = v25;
      *a4 = result;
      *(a4 + 16) = v24;
      result.n128_u64[0] = *(a3 + 8);
      v26 = *(a2 + 8);
      if (result.n128_f64[0] > v26 || result.n128_f64[0] == v26 && strcmp(a3, a2) < 0)
      {
        v27 = *(a2 + 16);
        result = *a2;
        v28 = *(a3 + 16);
        *a2 = *a3;
        *(a2 + 16) = v28;
        *a3 = result;
        *(a3 + 16) = v27;
        result.n128_u64[0] = *(a2 + 8);
        v29 = *(a1 + 8);
        if (result.n128_f64[0] > v29 || result.n128_f64[0] == v29 && strcmp(a2, a1) < 0)
        {
          v30 = *(a1 + 16);
          result = *a1;
          v31 = *(a2 + 16);
          *a1 = *a2;
          *(a1 + 16) = v31;
          *a2 = result;
          *(a2 + 16) = v30;
        }
      }
    }
  }

  return result;
}

BOOL sub_195224F0C(double *__s2, char *a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - __s2) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_195224B58(__s2, __s2 + 3, a2 - 3);
        break;
      case 4:
        v22 = a2 - 24;
        sub_195224B58(__s2, __s2 + 3, __s2 + 6);
        v23 = *(a2 - 2);
        v24 = __s2[7];
        if (v23 > v24 || v23 == v24 && strcmp(a2 - 24, __s2 + 48) < 0)
        {
          v25 = *(__s2 + 8);
          v26 = *(__s2 + 3);
          v27 = *(a2 - 1);
          *(__s2 + 3) = *v22;
          *(__s2 + 8) = v27;
          *v22 = v26;
          *(a2 - 1) = v25;
          v28 = __s2[7];
          v29 = __s2[4];
          if (v28 > v29 || v28 == v29 && strcmp(__s2 + 48, __s2 + 24) < 0)
          {
            v30 = *(__s2 + 5);
            v31 = *(__s2 + 3);
            *(__s2 + 3) = *(__s2 + 3);
            __s2[5] = __s2[8];
            *(__s2 + 3) = v31;
            *(__s2 + 8) = v30;
            v32 = __s2[4];
            v33 = __s2[1];
            if (v32 > v33 || v32 == v33 && strcmp(__s2 + 24, __s2) < 0)
            {
              v34 = *(__s2 + 2);
              v35 = *__s2;
              *__s2 = *(__s2 + 3);
              __s2[2] = __s2[5];
              *(__s2 + 3) = v35;
              *(__s2 + 5) = v34;
            }
          }
        }

        return 1;
      case 5:
        sub_195224CE4(__s2, (__s2 + 3), (__s2 + 6), (__s2 + 9), (a2 - 24));
        break;
      default:
        goto LABEL_13;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = a2 - 24;
    v6 = *(a2 - 2);
    v7 = __s2[1];
    if (v6 > v7 || v6 == v7 && strcmp(a2 - 24, __s2) < 0)
    {
      v8 = *(__s2 + 2);
      v9 = *__s2;
      v10 = *(a2 - 1);
      *__s2 = *v5;
      *(__s2 + 2) = v10;
      *v5 = v9;
      *(a2 - 1) = v8;
    }

    return 1;
  }

LABEL_13:
  v11 = (__s2 + 6);
  sub_195224B58(__s2, __s2 + 3, __s2 + 6);
  v12 = (__s2 + 9);
  if (__s2 + 9 == a2)
  {
    return 1;
  }

  v13 = 0;
  v14 = 0;
  while (1)
  {
    v15 = *(v12 + 1);
    v16 = *(v11 + 1);
    if (v15 > v16 || v15 == v16 && strcmp(v12, v11) < 0)
    {
      v37 = *v12;
      v38 = *(v12 + 2);
      *v12 = *v11;
      *(v12 + 2) = *(v11 + 2);
      v17 = *(&v37 + 1);
      v18 = v13;
      while (1)
      {
        v19 = __s2 + v18;
        v20 = *(__s2 + v18 + 32);
        if (v17 <= v20 && (v17 != v20 || (strcmp(&v37, v19 + 24) & 0x80000000) == 0))
        {
          break;
        }

        *(v19 + 3) = *(v19 + 24);
        *(v19 + 8) = *(v19 + 5);
        v18 -= 24;
        if (v18 == -48)
        {
          v21 = __s2;
          goto LABEL_25;
        }
      }

      v21 = __s2 + v18 + 48;
LABEL_25:
      *v21 = v37;
      *(v21 + 2) = v38;
      if (++v14 == 8)
      {
        return v12 + 24 == a2;
      }
    }

    v11 = v12;
    v13 += 24;
    v12 += 24;
    if (v12 == a2)
    {
      return 1;
    }
  }
}

uint64_t uprv_uint32Comparator(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (*a2 < *a3)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a2 != *a3;
  }
}

uint64_t uprv_stableBinarySearch(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  v10 = a2;
  if (a2 < 9)
  {
    v13 = 0;
    v12 = 0;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = (v10 + v12) / 2;
      v15 = a5(a6, a3, a1 + v14 * a4);
      if (v15 >= 0)
      {
        v16 = (v10 + v12) / 2;
      }

      else
      {
        v16 = v12;
      }

      if (v15 >= 0)
      {
        v17 = v10;
      }

      else
      {
        v17 = (v10 + v12) / 2;
      }

      if (v15)
      {
        v12 = v16;
      }

      else
      {
        v13 = 1;
        v12 = v14 + 1;
      }

      if (v15)
      {
        v10 = v17;
      }
    }

    while (v10 - v12 > 8);
  }

  if (v12 < v10)
  {
    v18 = a4;
    v19 = a1 + v12 * a4;
    do
    {
      v20 = a5(a6, a3, v19);
      if (v20)
      {
        if (v20 < 0)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v13 = 1;
      }

      ++v12;
      v19 += v18;
    }

    while (v10 != v12);
    v12 = v10;
  }

LABEL_25:
  if (v13)
  {
    return (v12 - 1);
  }

  else
  {
    return ~v12;
  }
}

void uprv_sortArray(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5, int a6, int *a7)
{
  if (a7 && *a7 <= 0)
  {
    if (a1)
    {
      v11 = 1;
    }

    else
    {
      v11 = a2 <= 0;
    }

    v12 = !v11;
    if (!a4 || a3 < 1 || (a2 & 0x80000000) != 0 || v12)
    {
      *a7 = 1;
      return;
    }

    if (a2 < 2)
    {
      return;
    }

    v15 = (a3 + 7) >> 3;
    if (a2 >= 9 && !a6)
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v37 = 0u;
      v46 = 0;
      v36 = 0u;
      v35 = 0u;
      v34 = 0u;
      v33 = 0u;
      v32 = 0u;
      v31 = 0u;
      v30 = 0u;
      v29 = 0u;
      v28 = 0u;
      v27 = 0u;
      v26 = 0u;
      v25 = 0u;
      v24 = 0u;
      v23 = 0u;
      v22 = 0u;
      v21 = 0u;
      v16 = &v21 + 8;
      v20 = &v21 + 8;
      if (a3 < 0xC9)
      {
LABEL_21:
        sub_1952256D0(a1, 0, a2, a3, a4, a5, v16, &v16[8 * v15]);
        goto LABEL_30;
      }

      v17 = malloc_type_malloc(16 * v15, 0x100004000313F17uLL);
      if (v17)
      {
        v16 = v17;
        if (BYTE4(v21))
        {
          free(&v21 + 8);
        }

        v20 = v16;
        BYTE4(v21) = 1;
        goto LABEL_21;
      }

      goto LABEL_29;
    }

    v21 = 0u;
    v33 = 0u;
    v32 = 0u;
    v31 = 0u;
    v30 = 0u;
    v29 = 0u;
    v28 = 0u;
    v27 = 0u;
    v26 = 0u;
    v25 = 0u;
    v24 = 0u;
    v23 = 0u;
    v22 = 0u;
    v18 = &v21 + 8;
    v20 = &v21 + 8;
    if (a3 >= 0xC9)
    {
      v19 = malloc_type_malloc((a3 + 7) & 0xFFFFFFF8, 0x100004000313F17uLL);
      if (!v19)
      {
LABEL_29:
        *a7 = 7;
LABEL_30:
        if (BYTE4(v21))
        {
          free(v20);
        }

        return;
      }

      v18 = v19;
      if (BYTE4(v21))
      {
        free(&v21 + 8);
      }

      v20 = v18;
      BYTE4(v21) = 1;
    }

    sub_1952255AC(a1, a2, a3, a4, a5, v18);
    goto LABEL_30;
  }
}

uint64_t sub_1952255AC(uint64_t result, int a2, int a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5, void *a6)
{
  if (a2 >= 2)
  {
    v8 = a3;
    v9 = result;
    __n = a3;
    v10 = a3;
    v11 = a2;
    v12 = 1;
    v13 = (result + a3);
    v17 = a2;
    do
    {
      result = uprv_stableBinarySearch(v9, v12, v13, v8, a4, a5);
      v14 = ~result;
      if (result >= 0)
      {
        v14 = result + 1;
      }

      if (v12 > v14)
      {
        v15 = v14;
        v16 = (v9 + (v14 * v8));
        memcpy(a6, v13, __n);
        memmove(&v16[__n], v16, (v12 - v15) * __n);
        v8 = a3;
        v11 = v17;
        result = memcpy(v16, a6, __n);
      }

      ++v12;
      v13 += v10;
    }

    while (v11 != v12);
  }

  return result;
}

uint64_t sub_1952256D0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t), uint64_t a6, void *a7, void *a8)
{
  v13 = a4;
  __n = a4;
  v30 = a4;
  v29 = -a4;
  while (a2 + 9 < a3)
  {
    memcpy(a7, (a1 + ((a2 + a3 + ((a2 + a3) >> 31)) >> 1) * __n), __n);
    v25 = a2;
    v26 = a3;
    LODWORD(v14) = a2;
    v15 = a3;
    do
    {
      v16 = (v14 << 32) - 0x100000000;
      v17 = v14 - 1;
      v18 = a1 + v13 * v14;
      do
      {
        v19 = a5(a6, v18, a7);
        v16 += 0x100000000;
        ++v17;
        v14 = (v14 + 1);
        v18 += v13;
      }

      while (v19 < 0);
      v20 = v15 << 32;
      v15 = v15;
      v21 = a1 + v13 * (v15 - 1);
      do
      {
        --v15;
        result = a5(a6, a7, v21);
        v20 -= 0x100000000;
        v21 += v29;
      }

      while ((result & 0x80000000) != 0);
      if (v17 >= v15 + 1)
      {
        v14 = (v14 - 1);
        ++v15;
        v13 = v30;
      }

      else
      {
        v13 = v30;
        if (v17 < v15)
        {
          memcpy(a8, (a1 + (v16 >> 32) * __n), __n);
          v23 = (a1 + (v20 >> 32) * __n);
          memcpy((a1 + (v16 >> 32) * __n), v23, __n);
          result = memcpy(v23, a8, __n);
        }
      }
    }

    while (v14 < v15);
    a3 = v26;
    if (v15 - v25 >= (v26 - v14))
    {
      if (v14 < (v26 - 1))
      {
        result = sub_1952256D0(a1, v14, v26, a4, a5, a6, a7, a8);
      }

      a3 = v15;
      LODWORD(v14) = v25;
    }

    else if (v25 < v15 - 1)
    {
      result = sub_1952256D0(a1, v25, v15, a4, a5, a6, a7, a8);
    }

    a2 = v14;
    if (v14 >= a3 - 1)
    {
      return result;
    }
  }

  return sub_1952255AC(a1 + v13 * a2, a3 - a2, a4, a5, a6, a7);
}

void **ubidi_openSized(int a1, int a2, int *a3)
{
  if (!a3 || *a3 > 0)
  {
    return 0;
  }

  if ((a2 | a1) < 0)
  {
    v4 = 0;
    v9 = 1;
LABEL_13:
    *a3 = v9;
    return v4;
  }

  v8 = malloc_type_malloc(0x1E0uLL, 0x10F004042B94B8AuLL);
  v4 = v8;
  if (!v8)
  {
    v9 = 7;
    goto LABEL_13;
  }

  *(v8 + 28) = 0u;
  *(v8 + 29) = 0u;
  *(v8 + 26) = 0u;
  *(v8 + 27) = 0u;
  *(v8 + 24) = 0u;
  *(v8 + 25) = 0u;
  *(v8 + 22) = 0u;
  *(v8 + 23) = 0u;
  *(v8 + 20) = 0u;
  *(v8 + 21) = 0u;
  *(v8 + 18) = 0u;
  *(v8 + 19) = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 17) = 0u;
  *(v8 + 14) = 0u;
  *(v8 + 15) = 0u;
  *(v8 + 12) = 0u;
  *(v8 + 13) = 0u;
  *(v8 + 10) = 0u;
  *(v8 + 11) = 0u;
  *(v8 + 8) = 0u;
  *(v8 + 9) = 0u;
  *(v8 + 6) = 0u;
  *(v8 + 7) = 0u;
  *(v8 + 4) = 0u;
  *(v8 + 5) = 0u;
  *(v8 + 2) = 0u;
  *(v8 + 3) = 0u;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  if (a1 < 1)
  {
    *(v8 + 112) = 1;
  }

  else if (!sub_195225B04(v8 + 8, v8 + 8, 1, a1) || !sub_195225B04(v4 + 9, v4 + 9, 1, a1))
  {
    *a3 = 7;
  }

  if (a2 < 1)
  {
    *(v4 + 113) = 1;
    goto LABEL_21;
  }

  if (a2 == 1)
  {
    *(v4 + 12) = 12;
    goto LABEL_21;
  }

  if (sub_195225B04(v4 + 12, v4 + 12, 1, 12 * a2))
  {
LABEL_21:
    if (*a3 < 1)
    {
      return v4;
    }

    goto LABEL_22;
  }

  *a3 = 7;
LABEL_22:
  ubidi_close(v4);
  return 0;
}

uint64_t sub_195225B04(void **a1, _DWORD *a2, int a3, int a4)
{
  v7 = *a1;
  if (v7)
  {
    if (*a2 >= a4)
    {
      return 1;
    }

    if (a3)
    {
      result = malloc_type_realloc(v7, a4, 0x5F3197FBuLL);
      if (!result)
      {
        return result;
      }

      *a1 = result;
LABEL_8:
      *a2 = a4;
      return 1;
    }
  }

  else if (a3)
  {
    result = malloc_type_malloc(a4, 0x2B1ADC5BuLL);
    *a1 = result;
    if (!result)
    {
      return result;
    }

    goto LABEL_8;
  }

  return 0;
}

void ubidi_close(void *a1)
{
  if (a1)
  {
    *a1 = 0;
    v2 = a1[7];
    if (v2)
    {
      free(v2);
    }

    v3 = a1[8];
    if (v3)
    {
      free(v3);
    }

    v4 = a1[9];
    if (v4)
    {
      free(v4);
    }

    v5 = a1[10];
    if (v5)
    {
      free(v5);
    }

    v6 = a1[11];
    if (v6)
    {
      free(v6);
    }

    v7 = a1[12];
    if (v7)
    {
      free(v7);
    }

    v8 = a1[13];
    if (v8)
    {
      free(v8);
    }

    v9 = a1[56];
    if (v9)
    {
      free(v9);
    }

    free(a1);
  }
}

uint64_t ubidi_setInverse(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 144) = a2;
    *(result + 148) = 4 * (a2 != 0);
  }

  return result;
}

uint64_t ubidi_isInverse(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 144);
  }

  else
  {
    return 0;
  }
}

uint64_t ubidi_setReorderingMode(uint64_t result, unsigned int a2)
{
  if (result)
  {
    if (a2 <= 6)
    {
      *(result + 148) = a2;
      *(result + 144) = a2 == 4;
    }
  }

  return result;
}

uint64_t ubidi_getReorderingMode(uint64_t result)
{
  if (result)
  {
    return *(result + 148);
  }

  return result;
}

uint64_t ubidi_setReorderingOptions(uint64_t result, unsigned int a2)
{
  if (result)
  {
    v2 = a2 & 0xFFFFFFFE;
    if ((a2 & 2) == 0)
    {
      v2 = a2;
    }

    *(result + 152) = v2;
  }

  return result;
}

uint64_t ubidi_getReorderingOptions(uint64_t result)
{
  if (result)
  {
    return *(result + 152);
  }

  return result;
}

uint64_t ubidi_getBaseDirection(UChar *s, int a2)
{
  result = 3;
  if (s)
  {
    v4 = a2;
    if (a2 >= -1)
    {
      if (a2 == -1)
      {
        v4 = u_strlen(s);
      }

      v5 = 0;
      while (v5 < v4)
      {
        v6 = v5 + 1;
        v7 = s[v5];
        if ((v7 & 0xFC00) != 0xD800 || v6 == v4)
        {
          ++v5;
        }

        else
        {
          v9 = s[v6];
          v10 = (v9 & 0xFC00) == 56320;
          v11 = v9 + (v7 << 10) - 56613888;
          if (v10)
          {
            v5 += 2;
          }

          else
          {
            ++v5;
          }

          if (v10)
          {
            v7 = v11;
          }
        }

        result = u_charDirection(v7);
        if (!result)
        {
          return result;
        }

        if (result == 13 || result == 1)
        {
          return 1;
        }
      }

      return 3;
    }
  }

  return result;
}

uint64_t sub_195225D90(uint64_t a1, int a2)
{
  v2 = *(a1 + 216);
  v3 = *(a1 + 224);
  if (v2 <= 0)
  {
    v6 = v2 - 1;
  }

  else
  {
    if (*v3 <= a2)
    {
      v4 = 0;
      v7 = v3 + 2;
      while (v2 - 1 != v4)
      {
        v8 = *v7;
        v7 += 2;
        ++v4;
        if (v8 > a2)
        {
          v5 = v4 < v2;
          goto LABEL_10;
        }
      }

      v5 = 0;
      LODWORD(v4) = *(a1 + 216);
    }

    else
    {
      LODWORD(v4) = 0;
      v5 = 1;
    }

LABEL_10:
    v6 = v2 - 1;
    if (v5)
    {
      v6 = v4;
    }
  }

  return LOBYTE(v3[2 * v6 + 1]);
}

uint64_t ubidi_setContext(uint64_t result, UChar *s, int a3, UChar *a4, int a5, int *a6)
{
  if (a6 && *a6 <= 0)
  {
    v6 = result;
    if (result && a3 >= -1 && (v7 = a5, a5 >= -1) && (s || !a3) && (a4 || !a5))
    {
      if (a3 == -1)
      {
        result = u_strlen(s);
        a3 = result;
      }

      *(v6 + 168) = a3;
      if (v7 == -1)
      {
        result = u_strlen(a4);
        v7 = result;
      }

      *(v6 + 184) = v7;
      *(v6 + 160) = s;
      *(v6 + 176) = a4;
    }

    else
    {
      *a6 = 1;
    }
  }

  return result;
}

void ubidi_setPara(uint64_t a1, const UChar *a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  if (a6)
  {
    if (*a6 <= 0)
    {
      sub_195225F08(a1, a2, a3, a4, a5, 0, 0, 0, 0, a6);
    }
  }
}

void sub_195225F08(uint64_t a1, const UChar *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, int *a10)
{
  v243 = *MEMORY[0x1E69E9840];
  if (!a1 || !a2 || (v11 = a3, a3 < -1) || ((a4 - 126) & 0x80000000) == 0)
  {
    *a10 = 1;
    goto LABEL_253;
  }

  v17 = a1;
  if (a3 == -1)
  {
    v11 = u_strlen(a2);
  }

  v18 = *(v17 + 148);
  if (v18 <= 2)
  {
    v19 = a7;
  }

  else
  {
    v19 = 0;
  }

  if (a7 <= 0)
  {
    v20 = 0;
  }

  else
  {
    v20 = v19;
  }

  v236 = v17;
  if (v18 == 3)
  {
    *(v17 + 148) = 0;
    if (!v11)
    {
      if (a10 && *a10 <= 0)
      {
        sub_195225F08(v17, a2, 0, a4, 0, 0, 0, 0, 0, a10);
      }

      v21 = 0;
      goto LABEL_113;
    }

    v21 = malloc_type_malloc(7 * v11, 0x100004077774924uLL);
    if (!v21)
    {
      *a10 = 7;
      goto LABEL_113;
    }

    v22 = *(v17 + 152);
    if (v22)
    {
      *(v17 + 152) = v22 & 0xFFFFFFFC | 2;
    }

    if (a10)
    {
      if (*a10 > 0)
      {
        goto LABEL_113;
      }

      sub_195225F08(v17, a2, v11, a4 & 1, 0, 0, 0, 0, 0, a10);
    }

    if (*a10 <= 0)
    {
      v232 = a4 & 1;
      v23 = &v21[v11] + 2 * v11;
      Levels = ubidi_getLevels(v17, a10);
      memcpy(v23, Levels, *(v17 + 20));
      v25 = *(v17 + 20);
      v26 = *(v17 + 200);
      v27 = *(v17 + 212);
      v229 = ubidi_writeReordered(v17, &v21[v11], v11, 2u, a10);
      ubidi_getVisualMap(v17, v21, a10);
      if (*a10 >= 1)
      {
LABEL_72:
        *(v17 + 8) = a2;
        *(v17 + 16) = v11;
        *(v17 + 20) = v25;
        *(v17 + 200) = v26;
        v76 = *(v17 + 36);
        if (v25 < v76)
        {
          v76 = v25;
        }

        memcpy(*(v17 + 136), v23, v76);
        *(v17 + 212) = v27;
        if (*(v17 + 312) > 1)
        {
          *(v17 + 200) = 2;
        }

        goto LABEL_113;
      }

      v226 = v25;
      v228 = v27;
      *(v17 + 148) = 5;
      *(v17 + 152) = v22;
      v28 = *(v17 + 112);
      *(v236 + 112) = 0;
      sub_195225F08(v236, &v21[v11], v229, v232 ^ 1u, 0, 0, 0, 0, 0, a10);
      *(v236 + 112) = v28;
      v17 = v236;
      sub_19522A818(v236);
      if (*a10 <= 0)
      {
        v29 = *(v236 + 312);
        if (v29 >= 1)
        {
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = *(v236 + 320);
          do
          {
            v34 = v33 + 3 * v30;
            v35 = v34[1];
            v36 = v35 - v32;
            if (v36 >= 2)
            {
              v37 = *v34;
              v38 = (v37 & 0x7FFFFFFF) + v36;
              v39 = v37 & 0x7FFFFFFF;
              do
              {
                v40 = v21[v39 + 1];
                v41 = v21[v39];
                v42 = v40 - v41;
                if (v40 - v41 < 0)
                {
                  v42 = v41 - v40;
                }

                if (v42 != 1 || v23[v40] != v23[v41])
                {
                  ++v31;
                }

                ++v39;
              }

              while (v38 > v39 + 1);
            }

            ++v30;
            v32 = v35;
          }

          while (v30 != v29);
          if (!v31)
          {
            goto LABEL_40;
          }

          if (sub_195225B04((v236 + 96), (v236 + 48), *(v236 + 113), 12 * (v31 + v29)))
          {
            if (v29 == 1)
            {
              v43 = *(v236 + 96);
              v44 = *v33;
              *(v43 + 8) = *(v33 + 2);
              *v43 = v44;
            }

            v33 = *(v236 + 96);
            *(v236 + 320) = v33;
            *(v236 + 312) += v31;
            do
            {
LABEL_40:
              v45 = v29 - 1;
              if (v29 == 1)
              {
                v46 = *(v33 + 1);
              }

              else
              {
                v46 = *(v33 + 3 * v45 + 1) - *(v33 + 3 * v29 - 5);
              }

              v47 = v33 + 3 * v45;
              v48 = *v47;
              v49 = (v48 >> 31) & 1;
              v50 = v48 & 0x7FFFFFFF;
              if (v46 > 1)
              {
                v55 = 0;
                v56 = v46 + v50 - 1;
                if ((v48 & 0x80000000) != 0)
                {
                  v57 = v48 & 0x7FFFFFFF;
                }

                else
                {
                  v57 = v46 + v50 - 1;
                }

                if ((v48 & 0x80000000) == 0)
                {
                  v58 = -1;
                }

                else
                {
                  LODWORD(v50) = v56;
                  v58 = 1;
                }

                v59 = v57;
                v60 = &v21[v57];
                v61 = v58 + v57;
                v62 = v57;
                do
                {
                  v63 = v60[v55];
                  v59 += v58;
                  v64 = v60[v58 + v55];
                  v65 = v63 - v64;
                  if (v63 - v64 < 0)
                  {
                    v65 = v64 - v63;
                  }

                  if (v65 == 1 && v23[v63] == v23[v64])
                  {
                    v66 = v61 + v55;
                  }

                  else
                  {
                    if (v21[v62] < v63)
                    {
                      LODWORD(v63) = v21[v62];
                    }

                    v67 = v33 + 3 * v45 + 3 * v31;
                    v68 = v57 + v55 - v62;
                    v69 = v47[1];
                    v70 = v47[2];
                    *v67 = v63 | ((v49 ^ v23[v63]) << 31);
                    v67[1] = v69;
                    if (v68 < 0)
                    {
                      v68 = -v68;
                    }

                    v71 = v70 & 0xA;
                    v17 = v236;
                    v67[2] = v71;
                    v72 = v47[2];
                    v47[1] = v69 + ~v68;
                    v47[2] = v72 & ~v71;
                    --v31;
                    v62 = v61 + v55;
                    v66 = v59;
                  }

                  v55 += v58;
                }

                while (v66 != v50);
                v51 = v29 - 1;
                if (v31)
                {
                  v51 = v45 + v31;
                  v73 = *v47;
                  v74 = v33 + 12 * v51;
                  *(v74 + 8) = v47[2];
                  *v74 = v73;
                }

                v54 = v21[v62];
                v75 = v21[v50];
                if (v54 >= v75)
                {
                  v54 = v75;
                }
              }

              else
              {
                v51 = v29 - 1;
                if (v31)
                {
                  v51 = v45 + v31;
                  v52 = *v47;
                  v53 = v33 + 12 * v51;
                  *(v53 + 8) = v47[2];
                  *v53 = v52;
                }

                v54 = v21[v50];
              }

              *(v33 + 3 * v51) = v54 | ((v49 ^ v23[v54]) << 31);
              v170 = v29-- <= 1;
            }

            while (!v170);
          }
        }
      }

      *(v17 + 157) ^= 1u;
      v25 = v226;
      v27 = v228;
      goto LABEL_72;
    }

LABEL_113:
    free(v21);
    *(v17 + 148) = 3;
    goto LABEL_253;
  }

  *v17 = 0;
  *(v17 + 8) = a2;
  *(v17 + 20) = v11;
  *(v17 + 24) = v11;
  *(v17 + 16) = v11;
  *(v17 + 157) = a4;
  *(v17 + 200) = a4 & 1;
  *(v17 + 216) = 1;
  *(v17 + 320) = 0;
  *(v17 + 436) = 0;
  *(v17 + 128) = 0;
  *(v17 + 136) = 0;
  *(v17 + 120) = 0;
  *(v17 + 158) = a4 > 0xFD;
  if (!v11)
  {
    if (a4 >= 0xFE)
    {
      *(v17 + 157) = a4 & 1;
    }

    *(v17 + 204) = dword_1954461CC[a4 & 1];
    *(v17 + 312) = 0;
    *(v17 + 216) = 0;
    goto LABEL_110;
  }

  v77 = *(v17 + 88);
  *(v17 + 312) = -1;
  v222 = (v17 + 88);
  v223 = (v17 + 232);
  if (!v77)
  {
    v77 = v17 + 232;
  }

  *(v17 + 224) = v77;
  if (v20)
  {
    if (sub_195225B04((v17 + 56), (v17 + 28), *(v17 + 112), 2 * v11))
    {
      v78 = *(v17 + 56);
      *(v17 + 120) = v78;
      v79 = *(v17 + 20);
      if (v79 >= 1)
      {
        bzero(v78, 2 * v79);
      }

      v80 = 0;
      v224 = a5;
      v230 = v78;
      v233 = v20;
      while (1)
      {
        v81 = *(a6 + 4 * v80);
        if ((v81 & 0x80000000) != 0 || v81 >= *(v236 + 20))
        {
          break;
        }

        v82 = a8 ? *(a8 + 4 * v80) : v80;
        v83 = *(a9 + 8 * v82);
        if (!v83)
        {
          break;
        }

        v84 = 0;
        v85 = 0;
        v86 = 0;
        while (1)
        {
          v87 = *(v83 + 2 * v85);
          if (!*(v83 + 2 * v85))
          {
            break;
          }

          if ((v87 & 0xF800) == 0xD800)
          {
            v88 = 0;
          }

          else
          {
            v88 = word_1954461D4[ubidi_getCustomizedClass(v236, v87)];
          }

          if (v85 <= 3)
          {
            v86 |= v88 << v84;
            v84 += 4;
            ++v85;
            if (v88)
            {
              continue;
            }
          }

          goto LABEL_111;
        }

        v230[v81] = v86;
        ++v80;
        v17 = v236;
        a5 = v224;
        if (v80 == v233)
        {
          goto LABEL_100;
        }
      }

LABEL_111:
      v90 = 1;
LABEL_252:
      *a10 = v90;
      goto LABEL_253;
    }

LABEL_251:
    v90 = 7;
    goto LABEL_252;
  }

LABEL_100:
  if (!sub_195225B04((v17 + 64), (v17 + 32), *(v17 + 112), v11))
  {
    goto LABEL_251;
  }

  v235 = *(v17 + 64);
  *(v17 + 128) = v235;
  v89 = *(v17 + 157);
  v219 = v89 >= 0xFE && (*(v17 + 148) - 5) < 2;
  v91 = *(v17 + 8);
  v92 = *(v17 + 120);
  v93 = *(v17 + 16);
  v94 = *(v17 + 152);
  v242 = 0;
  memset(v241, 0, sizeof(v241));
  memset(v240, 0, 126);
  v239 = 0;
  memset(v238, 0, sizeof(v238));
  if ((v94 & 4) != 0)
  {
    *(v17 + 20) = 0;
  }

  v95 = v89 & 1;
  v96 = *(v17 + 224);
  v234 = v91;
  v231 = v94;
  v225 = a5;
  v217 = v95;
  v218 = v89;
  if (v89 < 0xFE)
  {
    v227 = 0;
    *(v96 + 4) = v89;
    v112 = 10;
  }

  else
  {
    *(v96 + 4) = v95;
    v97 = *(v17 + 168);
    v227 = 1;
    if (v97 < 1)
    {
LABEL_149:
      v112 = v95;
      goto LABEL_150;
    }

    v98 = 0;
    v99 = *(v17 + 160);
    v100 = 10;
    do
    {
      v101 = v98 + 1;
      v102 = *(v99 + 2 * v98);
      if ((v102 & 0xFC00) == 0xD800 && v101 != v97)
      {
        v104 = *(v99 + 2 * v101);
        v105 = (v104 & 0xFC00) == 56320;
        v106 = v98 + 2;
        v107 = (v102 << 10) - 56613888 + v104;
        if (v105)
        {
          LODWORD(v101) = v106;
        }

        if (v105)
        {
          v102 = v107;
        }

        else
        {
          v102 = v102;
        }
      }

      CustomizedClass = ubidi_getCustomizedClass(v17, v102);
      if (CustomizedClass == 7)
      {
        v109 = 10;
      }

      else
      {
        v109 = v100;
      }

      if (CustomizedClass > 0xDu || ((1 << CustomizedClass) & 0x2003) == 0)
      {
        v111 = 10;
      }

      else
      {
        v111 = CustomizedClass;
      }

      if (v100 == 10)
      {
        v100 = v111;
      }

      else
      {
        v100 = v109;
      }

      v98 = v101;
    }

    while (v101 < v97);
    v89 = v218;
    if (v100 != 10)
    {
      v91 = v234;
      LOBYTE(v94) = v231;
      v95 = v217;
      v227 = 0;
      if (v100)
      {
        *(*(v17 + 224) + 4) = 1;
      }

      else
      {
        *(*(v17 + 224) + 4) = 0;
      }

      goto LABEL_149;
    }

    v227 = 1;
    v112 = v217;
    v91 = v234;
    LOBYTE(v94) = v231;
  }

LABEL_150:
  if (v93 < 1)
  {
    v113 = 0;
    v115 = 0;
    v118 = -1;
    goto LABEL_268;
  }

  v220 = v112;
  v113 = 0;
  v114 = 0;
  v115 = 0;
  v116 = 0;
  v117 = -1;
  v221 = -1;
  v118 = -1;
  do
  {
    if (v92 && v117 < 0)
    {
      v116 = *(v92 + 2 * v114);
    }

    if (v116 >= 1)
    {
      LODWORD(v119) = 0;
      ++v117;
      v120 = byte_195446206[v116 & 0xF];
      v116 = v116 >> 4;
      v115 |= 1 << v120;
      if ((v94 & 2) == 0)
      {
        goto LABEL_165;
      }

LABEL_157:
      if ((v119 - 8234) < 5 || (v119 - 8294) < 4 || v119 >> 2 == 2051)
      {
        ++v113;
      }

      goto LABEL_165;
    }

    v128 = v114 + 1;
    v119 = *(v91 + 2 * v114);
    if ((v119 & 0xFC00) != 0xD800 || v128 == v93)
    {
      ++v114;
    }

    else
    {
      v130 = *(v91 + 2 * v128);
      v131 = (v130 & 0xFC00) == 56320;
      v132 = (v119 << 10) - 56613888 + v130;
      if (v131)
      {
        v119 = v132;
      }

      else
      {
        v119 = *(v91 + 2 * v114);
      }

      if (v131)
      {
        v114 += 2;
      }

      else
      {
        ++v114;
      }
    }

    v133 = ubidi_getCustomizedClass(v17, v119);
    v120 = v133;
    v115 |= 1 << v133;
    v134 = v235 + v114;
    *(v134 - 1) = v133;
    v116 = 0;
    if (v119 >= 0x10000)
    {
      v115 |= 0x40000u;
      *(v134 - 2) = 18;
    }

    v117 = -1;
    v91 = v234;
    LOBYTE(v94) = v231;
    if ((v231 & 2) != 0)
    {
      goto LABEL_157;
    }

LABEL_165:
    if (v120 == 13 || v120 == 1)
    {
      if (v227 == 2)
      {
        if (v221 <= 125)
        {
          v135 = *(v240 + v221);
          if (v135 < 0)
          {
            *(v235 + *(v241 + v221)) = 21;
          }

          else
          {
            *(v92 + 2 * v221) = *(v92 + 2 * v221) & ~(15 << (4 * v135)) | (11 << (4 * v135));
          }

          v115 |= 0x200000u;
        }

        v227 = 3;
      }

      else if (v227 == 1)
      {
        v227 = 0;
        *(*(v17 + 224) + 8 * *(v17 + 216) - 4) = 1;
      }

      if (v120 == 13)
      {
        v118 = v114 - 1;
      }

      v220 = 1;
    }

    else if (v120)
    {
      if ((v120 - 19) <= 2)
      {
        v126 = v221 + 1;
        if (v221 <= 124)
        {
          *(v241 + v126) = v114 + (v117 >> 7);
          *(v240 + v126) = v117;
          *(v238 + v126) = v227;
        }

        if (v120 == 19)
        {
          if (v117 < 0)
          {
            *(v235 - 1 + v114) = 20;
          }

          else
          {
            *(v92 + 2 * v114) = *(v92 + 2 * v114) & ~(15 << (4 * v117)) | (10 << (4 * v117));
          }

          v125 = 2;
        }

        else
        {
          v125 = 3;
        }

        goto LABEL_235;
      }

      if (v120 != 7)
      {
        if (v120 != 22)
        {
          continue;
        }

        if (v221 < 126 && v227 == 2)
        {
          v115 |= 0x100000u;
        }

        if (v221 < 0)
        {
          v125 = v227;
          goto LABEL_236;
        }

        v125 = v227;
        if (v221 <= 125)
        {
          v125 = *(v238 + v221);
        }

        LODWORD(v126) = v221 - 1;
LABEL_235:
        v221 = v126;
LABEL_236:
        v227 = v125;
        continue;
      }

      v127 = v114 < v93;
      if (v119 == 13 && v114 < v93)
      {
        if (*(v91 + 2 * v114) == 10)
        {
          continue;
        }

        v127 = 1;
      }

      v136 = *(v17 + 224);
      v137 = *(v17 + 216);
      v138 = v136 + 8 * v137;
      *(v138 - 2) = v114;
      v139 = v219;
      if (v220 != 1)
      {
        v139 = 0;
      }

      if (v139)
      {
        *(v138 - 1) = 1;
      }

      if ((*(v17 + 152) & 4) != 0)
      {
        *(v17 + 20) = v114;
        *(v17 + 456) = v113;
      }

      if (v127)
      {
        *(v17 + 216) = v137 + 1;
        if (v136 != v223)
        {
          if (!sub_195225B04(v222, (v17 + 44), 1, 16 * (v137 + 1)))
          {
            goto LABEL_251;
          }

          *(v17 + 224) = *(v17 + 88);
          goto LABEL_241;
        }

        if (v137 >= 10)
        {
          if (!sub_195225B04(v222, (v17 + 44), 1, 160))
          {
            goto LABEL_251;
          }

          v140 = *(v17 + 88);
          *(v17 + 224) = v140;
          v141 = v223[1];
          v143 = v223[3];
          v142 = v223[4];
          v140[2] = v223[2];
          v140[3] = v143;
          v140[1] = v141;
          *v140 = *v223;
          v140[4] = v142;
LABEL_241:
          v91 = v234;
          LOBYTE(v94) = v231;
        }

        if (v218 < 0xFE)
        {
          v227 = 0;
          *(*(v17 + 224) + 8 * *(v17 + 216) - 4) = *(v17 + 157);
          v221 = -1;
        }

        else
        {
          *(*(v17 + 224) + 8 * *(v17 + 216) - 4) = v217;
          v221 = -1;
          v227 = 1;
          v220 = v217;
        }
      }
    }

    else
    {
      if (v227 == 2)
      {
        v220 = 0;
        if (v221 < 126)
        {
          v115 |= 0x100000u;
        }

        v125 = 3;
        goto LABEL_236;
      }

      if (v227 == 1)
      {
        v227 = 0;
        v220 = 0;
        *(*(v17 + 224) + 8 * *(v17 + 216) - 4) = 0;
      }

      else
      {
        v220 = 0;
      }
    }
  }

  while (v114 < v93);
  if (v221 < 0)
  {
    v89 = v218;
    v112 = v220;
  }

  else
  {
    if (v221 >= 0x7D)
    {
      v145 = 125;
    }

    else
    {
      v145 = v221;
    }

    v146 = v227;
    if (v221 > 0x7D)
    {
      v146 = 2;
    }

    v147 = v145 + 1;
    v148 = v238 + v145;
    v89 = v218;
    v112 = v220;
    while (v146 != 2)
    {
      v149 = *v148--;
      v146 = v149;
      v170 = v147-- <= 1;
      if (v170)
      {
        goto LABEL_268;
      }
    }

    v115 |= 0x100000u;
  }

LABEL_268:
  if ((*(v17 + 152) & 4) != 0)
  {
    v150 = v225;
    if (*(v17 + 20) < v93)
    {
      --*(v17 + 216);
    }
  }

  else
  {
    *(*(v17 + 224) + 8 * *(v17 + 216) - 8) = v93;
    *(v17 + 456) = v113;
    v150 = v225;
  }

  v151 = v219;
  if (v112 != 1)
  {
    v151 = 0;
  }

  if (v151)
  {
    *(*(v17 + 224) + 8 * *(v17 + 216) - 4) = 1;
  }

  if (v89 >= 0xFE)
  {
    *(v17 + 157) = *(*(v17 + 224) + 4);
  }

  v152 = *(v17 + 216);
  if (v152 >= 1)
  {
    v153 = (*(v17 + 224) + 4);
    do
    {
      v154 = *v153;
      v153 += 2;
      v115 |= dword_1954461CC[v154 & 1];
      --v152;
    }

    while (v152);
  }

  v155 = (v115 >> 7) & 1;
  if (!*(v17 + 156))
  {
    v155 = 0;
  }

  *(v17 + 204) = v115 | v155;
  *(v17 + 208) = v118;
  v156 = *(v17 + 128);
  v157 = *(v17 + 20);
  *(v17 + 212) = v157;
  if (!v150)
  {
    v158 = a10;
    if (sub_195225B04((v17 + 72), (v17 + 36), *(v17 + 112), v157))
    {
      *(v17 + 136) = *(v17 + 72);
      v174 = sub_195227998(v17, a10);
      if (*a10 < 1)
      {
        v173 = v174;
        goto LABEL_323;
      }

      goto LABEL_253;
    }

    goto LABEL_353;
  }

  *(v17 + 136) = v150;
  *(v17 + 340) = 0;
  v158 = a10;
  if (v157 <= 0)
  {
    v173 = 0;
    *(v17 + 204) = 0;
    goto LABEL_322;
  }

  v159 = 0;
  v160 = 0;
  v161 = 0;
  v162 = 0;
  v163 = *(v17 + 157);
  v164 = **(v17 + 224);
  while (2)
  {
    v165 = *(v150 + v159);
    v166 = *(v156 + v159);
    if ((v166 & 0xFE) == 0x14)
    {
      if (v160 >= *(v17 + 340))
      {
        *(v17 + 340) = v160 + 1;
      }

      ++v160;
    }

    else if (v166 == 7)
    {
      v160 = 0;
    }

    else if (v166 == 22)
    {
      --v160;
    }

    if (*(v17 + 158))
    {
      if (v159 == v164)
      {
        v167 = v161 + 1;
        if (v161 + 1 < *(v17 + 216))
        {
          v168 = (*(v17 + 224) + 8 * v167);
          v164 = *v168;
          v163 = v168[1];
          v161 = v167;
        }
      }
    }

    v169 = v165 & 0x7F;
    v170 = v169 <= 0x7D && v163 <= v169;
    if (!v170)
    {
      if ((v165 & 0x7F) == 0)
      {
        if (v166 == 7)
        {
          LOBYTE(v169) = 0;
        }

        else
        {
          LOBYTE(v169) = v163;
          *(v150 + v159) = v165 | v163;
        }

        goto LABEL_306;
      }

      v189 = 1;
LABEL_355:
      *v158 = v189;
      goto LABEL_253;
    }

LABEL_306:
    v171 = v169 & 1;
    if (v165 < 0)
    {
      v172 = dword_195446218[v171];
    }

    else
    {
      v172 = dword_195446220[v171] | (1 << v166);
    }

    v162 |= v172;
    if (v157 != ++v159)
    {
      continue;
    }

    break;
  }

  if ((v162 & 0x7FDFD8) != 0)
  {
    v162 |= dword_1954461CC[*(v17 + 157) & 1];
  }

  *(v17 + 204) = v162;
  if ((*&v162 & 0x20E002) != 0 || (v173 = 0, (v162 & 0x20) != 0) && (*&v162 & 0x5D1FD8) != 0)
  {
    if ((v162 & 0x1901825) != 0)
    {
      v173 = 2;
    }

    else
    {
      v173 = 1;
    }
  }

LABEL_322:
  if (*a10 > 0)
  {
    goto LABEL_253;
  }

LABEL_323:
  v175 = *(v17 + 340);
  if (v175 <= 5)
  {
    v176 = v17 + 352;
    goto LABEL_328;
  }

  if (16 * v175 > *(v17 + 52) && !sub_195225B04((v17 + 104), (v17 + 52), 1, 16 * v175))
  {
LABEL_353:
    v189 = 7;
    goto LABEL_355;
  }

  v176 = *(v17 + 104);
LABEL_328:
  *(v17 + 344) = v176;
  *(v17 + 340) = -1;
  *(v17 + 200) = v173;
  if (v173 > 1)
  {
    v190 = *(v17 + 148);
    if (v190 <= 3)
    {
      switch(v190)
      {
        case 0:
          v191 = &off_1E7403448;
          goto LABEL_375;
        case 1:
          v191 = &off_1E7403468;
          goto LABEL_375;
        case 2:
          v191 = &off_1E7403488;
          goto LABEL_375;
      }

LABEL_435:
      abort();
    }

    switch(v190)
    {
      case 4:
        v191 = &off_1E74034A8;
        break;
      case 5:
        if (*(v17 + 152))
        {
          v191 = &off_1E74034C8;
        }

        else
        {
          v191 = &off_1E74034E8;
        }

        break;
      case 6:
        if (*(v17 + 152))
        {
          v191 = &off_1E7403508;
        }

        else
        {
          v191 = &off_1E7403528;
        }

        break;
      default:
        goto LABEL_435;
    }

LABEL_375:
    *(v17 + 192) = v191;
    if (v150 || *(v17 + 216) > 1 || (*(v17 + 204) & 0x80000000) != 0)
    {
      v237 = *(v17 + 136);
      if (*(v17 + 158) && **(v17 + 224) < 1)
      {
        v195 = sub_195225D90(v17, 0);
      }

      else
      {
        v195 = *(v17 + 157);
      }

      v196 = 0;
      v197 = *v237;
      if (v195 <= v197)
      {
        v198 = *v237;
      }

      else
      {
        v198 = v195;
      }

      v199 = v198 & 1;
      do
      {
        if (v196 < 1)
        {
          v200 = v199;
        }

        else
        {
          v200 = v199;
          if (*(v156 - 1 + v196) == 7)
          {
            if (*(v17 + 158) && v196 >= **(v17 + 224))
            {
              v201 = sub_195225D90(v17, v196);
            }

            else
            {
              v201 = *(v17 + 157);
            }

            v200 = v201 & 1;
          }
        }

        v202 = v196 + 1;
        if (v202 >= v157)
        {
          v204 = 0;
          v206 = v196;
LABEL_404:
          if (*(v17 + 158) && (v207 = *(v17 + 224), v157 > *v207))
          {
            v208 = *(v17 + 216);
            if (v208 > 0)
            {
              v209 = 0;
              v210 = v207 + 2;
              while (v208 - 1 != v209)
              {
                v211 = *v210;
                v210 += 2;
                ++v209;
                if (v211 >= v157)
                {
                  if (v209 >= v208)
                  {
                    v212 = v208 - 1;
                  }

                  else
                  {
                    v212 = v209;
                  }

                  goto LABEL_415;
                }
              }
            }

            v212 = v208 - 1;
LABEL_415:
            v205 = v207[2 * v212 + 1];
          }

          else
          {
            LOBYTE(v205) = *(v17 + 157);
          }
        }

        else
        {
          v203 = 0;
          v204 = 1;
          while (1)
          {
            v205 = v237[v202 + v203];
            if (v205 != v197 && ((1 << *(v156 + v202 + v203)) & 0x5D800) == 0)
            {
              break;
            }

            v204 = ++v203 + v202 < v157;
            if (!(1 - v157 + v196 + v203))
            {
              v206 = v157 - 1;
              LODWORD(v202) = v157;
              goto LABEL_404;
            }
          }

          v206 = v196 + v203;
          LODWORD(v202) = v206 + 1;
        }

        if ((v197 & 0x7F) >= (v205 & 0x7Fu))
        {
          v213 = v197;
        }

        else
        {
          v213 = v205;
        }

        v199 = v213 & 1;
        if ((v197 & 0x80) != 0)
        {
          if (v206 <= v196)
          {
            v206 = v196;
          }

          v214 = &v237[v196];
          v215 = v206 - v196 + 1;
          do
          {
            *v214++ &= ~0x80u;
            --v215;
          }

          while (v215);
        }

        else
        {
          sub_195228418(v17, v196, v202, v200, v213 & 1);
        }

        v196 = v202;
        LOBYTE(v197) = v205;
      }

      while (v204);
    }

    else
    {
      if (*(v17 + 158))
      {
        v192 = v17;
        v193 = **(v17 + 224);
        if (v193 <= 0)
        {
          v194 = sub_195225D90(v192, 0);
        }

        else
        {
          v194 = *(v192 + 157);
        }

        if (v157 <= v193)
        {
          v17 = v236;
          v216 = *(v236 + 157);
        }

        else
        {
          v17 = v236;
          v216 = sub_195225D90(v236, v157 - 1);
        }
      }

      else
      {
        v194 = *(v17 + 157);
        v216 = v194;
      }

      sub_195228418(v17, 0, v157, v194 & 1, v216 & 1);
    }

    v90 = *(v17 + 444);
    if (v90 < 1)
    {
      sub_195228B94(v17);
      goto LABEL_330;
    }

    goto LABEL_252;
  }

  *(v17 + 212) = 0;
LABEL_330:
  v177 = *(v17 + 152);
  if (*(v17 + 158))
  {
    if ((v177 & 1) != 0 && (*(v17 + 148) - 5) <= 1)
    {
      v178 = *(v17 + 216);
      if (v178 >= 1)
      {
        for (i = 0; i < v178; ++i)
        {
          v180 = *(v17 + 224) + 8 * i;
          if (*(v180 + 4))
          {
            v181 = i ? *(v180 - 8) : 0;
            v182 = *v180;
            if (v182 > v181)
            {
              v183 = v182 - 1;
              v184 = v182 - 1;
              while (1)
              {
                v185 = *(v156 + v184);
                if (!v185)
                {
                  break;
                }

                if (v184 > v181)
                {
                  --v184;
                  if (((1 << v185) & 0x2002) == 0)
                  {
                    continue;
                  }
                }

                goto LABEL_349;
              }

              if (v183 > v184)
              {
                v186 = (v156 - 1 + v182);
                v183 = v182;
                do
                {
                  v187 = *v186--;
                  --v183;
                }

                while (v187 == 7);
              }

              sub_195228D6C(v17, v183, 4);
              v178 = *(v17 + 216);
            }
          }

LABEL_349:
          ;
        }

        v177 = *(v17 + 152);
      }
    }
  }

  if ((v177 & 2) != 0)
  {
    v188 = *(v17 + 24) - *(v17 + 456);
  }

  else
  {
    v188 = *(v17 + 24) + *(v17 + 436);
  }

  *(v17 + 24) = v188;
LABEL_110:
  *(v17 + 168) = 0;
  *(v17 + 184) = 0;
  *v17 = v17;
LABEL_253:
  v144 = *MEMORY[0x1E69E9840];
}

void ubidi_setParaWithControls(uint64_t a1, const UChar *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, int *a9)
{
  if (a9 && *a9 <= 0)
  {
    if (a6 < 0 || a6 && (!a5 || !a8))
    {
      *a9 = 1;
    }

    else
    {
      sub_195225F08(a1, a2, a3, a4, 0, a5, a6, a7, a8, a9);
    }
  }
}

uint64_t ubidi_orderParagraphsLTR(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 156) = a2;
  }

  return result;
}

uint64_t ubidi_isOrderParagraphsLTR(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 156);
  }

  else
  {
    return 0;
  }
}

uint64_t ubidi_getDirection(uint64_t result)
{
  if (result)
  {
    v1 = *result;
    if (*result == result || v1 && *v1 == v1)
    {
      return *(result + 200);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t ubidi_getText(uint64_t result)
{
  if (result)
  {
    v1 = *result;
    if (*result == result || v1 && *v1 == v1)
    {
      return *(result + 8);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t ubidi_getLength(uint64_t result)
{
  if (result)
  {
    v1 = *result;
    if (*result == result || v1 && *v1 == v1)
    {
      return *(result + 16);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t ubidi_getProcessedLength(uint64_t result)
{
  if (result)
  {
    v1 = *result;
    if (*result == result || v1 && *v1 == v1)
    {
      return *(result + 20);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t ubidi_getResultLength(uint64_t result)
{
  if (result)
  {
    v1 = *result;
    if (*result == result || v1 && *v1 == v1)
    {
      return *(result + 24);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t ubidi_getParaLevel(uint64_t result)
{
  if (result)
  {
    v1 = *result;
    if (*result == result || v1 && *v1 == v1)
    {
      return *(result + 157);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t ubidi_countParagraphs(uint64_t result)
{
  if (result)
  {
    v1 = *result;
    if (*result == result || v1 && *v1 == v1)
    {
      return *(result + 216);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t ubidi_getParagraphByIndex(uint64_t result, unsigned int a2, int *a3, _DWORD *a4, _BYTE *a5, int *a6)
{
  if (!a6 || *a6 > 0)
  {
    return result;
  }

  v6 = result;
  if (!result || (result = *result, *v6 != v6) && (!result || *result != result))
  {
    v8 = 27;
LABEL_14:
    *a6 = v8;
    return result;
  }

  if ((a2 & 0x80000000) != 0 || *(v6 + 216) <= a2)
  {
    v8 = 1;
    goto LABEL_14;
  }

  if (a2)
  {
    v9 = *(*(result + 224) + 8 * a2 - 8);
  }

  else
  {
    v9 = 0;
  }

  if (a3)
  {
    *a3 = v9;
  }

  if (a4)
  {
    *a4 = *(*(result + 224) + 8 * a2);
  }

  if (a5)
  {
    if (*(result + 158) && v9 >= **(result + 224))
    {
      result = sub_195225D90(result, v9);
    }

    else
    {
      result = *(result + 157);
    }

    *a5 = result;
  }

  return result;
}

uint64_t ubidi_getParagraph(uint64_t *a1, int a2, int *a3, _DWORD *a4, _BYTE *a5, int *a6)
{
  if (!a6 || *a6 > 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a1 || (v7 = *a1, *a1 != a1) && (!v7 || *v7 != v7))
  {
    v8 = 27;
LABEL_14:
    *a6 = v8;
    return 0xFFFFFFFFLL;
  }

  if (a2 < 0 || *(v7 + 20) <= a2)
  {
    v8 = 1;
    goto LABEL_14;
  }

  v9 = *(v7 + 224);
  LODWORD(v10) = -1;
  do
  {
    v11 = *v9;
    v9 += 2;
    v10 = (v10 + 1);
  }

  while (v11 <= a2);
  ubidi_getParagraphByIndex(v7, v10, a3, a4, a5, a6);
  return v10;
}

uint64_t ubidi_setClassCallback(uint64_t result, uint64_t a2, uint64_t a3, void *a4, void *a5, int *a6)
{
  if (a6 && *a6 <= 0)
  {
    if (result)
    {
      if (a4)
      {
        *a4 = *(result + 464);
      }

      if (a5)
      {
        *a5 = *(result + 472);
      }

      *(result + 464) = a2;
      *(result + 472) = a3;
    }

    else
    {
      *a6 = 1;
    }
  }

  return result;
}

uint64_t ubidi_getClassCallback(uint64_t result, void *a2, void *a3)
{
  if (result)
  {
    if (a2)
    {
      *a2 = *(result + 464);
    }

    if (a3)
    {
      *a3 = *(result + 472);
    }
  }

  return result;
}

uint64_t ubidi_getCustomizedClass(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 464);
  if (!v3 || (LODWORD(result) = v3(*(a1 + 472), a2), result == 23))
  {
    LODWORD(result) = ubidi_getClass(v2);
  }

  if (result <= 22)
  {
    return result;
  }

  else
  {
    return 10;
  }
}

uint64_t sub_195227998(uint64_t a1, int *a2)
{
  v117 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 120);
  v4 = *(a1 + 128);
  v6 = *(a1 + 136);
  v7 = *(a1 + 8);
  v8 = *(a1 + 20);
  v9 = *(a1 + 204);
  if (*(a1 + 158) && (v10 = *(a1 + 224), *v10 < 1))
  {
    v12 = *(a1 + 216);
    if (v12 > 0)
    {
      v13 = 0;
      v14 = v10 + 2;
      while (v12 - 1 != v13)
      {
        v15 = *v14;
        v14 += 2;
        ++v13;
        if (v15 > 0)
        {
          if (v13 >= v12)
          {
            v16 = v12 - 1;
          }

          else
          {
            v16 = v13;
          }

          goto LABEL_12;
        }
      }
    }

    v16 = v12 - 1;
LABEL_12:
    v11 = v10[2 * v16 + 1];
  }

  else
  {
    v11 = *(a1 + 157);
  }

  result = 0;
  *(a1 + 340) = 0;
  if (*a2 > 0)
  {
    goto LABEL_14;
  }

  if ((*&v9 & 0x20E002) == 0)
  {
    result = 0;
    if ((v9 & 0x20) == 0 || (*&v9 & 0x5D1FD8) == 0)
    {
      goto LABEL_14;
    }
  }

  if ((v9 & 0x1901825) == 0)
  {
    result = 1;
    goto LABEL_14;
  }

  if (*(a1 + 148) >= 2)
  {
    v19 = *(a1 + 216);
    if (v19 >= 1)
    {
      v20 = 0;
      for (i = 0; i < v19; ++i)
      {
        v22 = *(a1 + 224);
        if (v20)
        {
          v23 = *(v22 + v20 - 8);
        }

        else
        {
          v23 = 0;
        }

        v24 = *(v22 + v20);
        if (v23 < v24)
        {
          memset((v6 + v23), *(v22 + v20 + 4), (v24 + ~v23) + 1);
          v19 = *(a1 + 216);
        }

        v20 += 8;
      }
    }

LABEL_28:
    result = 2;
    goto LABEL_14;
  }

  v92 = v4;
  v93 = v8;
  if ((v9 & 0x79D800) == 0)
  {
    bzero(v94, 0x9F0uLL);
    sub_195228E3C(a1, v94);
    v72 = *(a1 + 216);
    if (v72 >= 1)
    {
      v73 = 0;
      v91 = v7 + 2;
      v74 = v92;
      v75 = v93;
      do
      {
        v76 = (*(a1 + 224) + 8 * v73);
        if (v73)
        {
          v77 = *(v76 - 2);
        }

        else
        {
          v77 = 0;
        }

        v78 = *v76;
        if (v77 < v78)
        {
          v79 = v76[1];
          v80 = v77;
          v81 = (v91 + 2 * v77);
          do
          {
            *(v6 + v80) = v79;
            v82 = *(v74 + v80);
            if (v82 != 18)
            {
              if (v82 == 7)
              {
                if (v80 + 1 < v75 && (*(v81 - 1) != 13 || *v81 != 10))
                {
                  v95 = 0;
                  v96 = 0;
                  v97 = v79;
                  v99[0] = v79 & 1;
                  v98 = v79 & 1;
                  v100 = v79 & 1;
                }
              }

              else
              {
                result = sub_195228F7C(v94, v80);
                v74 = v92;
                v75 = v93;
                if (!result)
                {
                  *a2 = 7;
                  goto LABEL_14;
                }
              }
            }

            ++v80;
            ++v81;
          }

          while (v78 != v80);
          v72 = *(a1 + 216);
        }

        ++v73;
      }

      while (v73 < v72);
    }

    goto LABEL_28;
  }

  v89 = v5;
  memset(v116, 0, sizeof(v116));
  v115 = 0u;
  v114 = 0u;
  v113 = 0u;
  v112 = 0u;
  v111 = 0u;
  v110 = 0u;
  v109 = 0u;
  v108 = 0u;
  v107 = 0u;
  v106 = 0u;
  v105 = 0u;
  v104 = 0u;
  v103 = 0u;
  v102 = 0u;
  bzero(v94, 0x9F0uLL);
  sub_195228E3C(a1, v94);
  v101 = v11;
  v25 = v93;
  if (v93 < 1)
  {
    v32 = 0;
    goto LABEL_165;
  }

  v85 = v7;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v90 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  LOBYTE(v34) = -1;
  v35 = v11;
  v36 = &unk_1954461CC;
  v37 = v92;
  v38 = v89;
  do
  {
    if (v38 && (v34 & 0x80) != 0)
    {
      v31 = *(v38 + 2 * v33);
    }

    v39 = &unk_195446206 + (v31 & 0xF);
    v40 = (v37 + v33);
    v41 = v31 <= 0;
    if (v31 > 0)
    {
      v31 = v31 >> 4;
    }

    else
    {
      v39 = (v37 + v33);
      v31 = 0;
    }

    if (v41)
    {
      v42 = -1;
    }

    else
    {
      v42 = v34 + 1;
    }

    v34 = v42;
    v43 = *v39;
    if (v43 > 15)
    {
      if (v43 <= 19)
      {
        if (v43 == 16)
        {
          v32 |= 0x40000u;
          *(v6 + v33) = v11;
          if (!v28)
          {
            if (v27)
            {
              v28 = 0;
              --v27;
            }

            else
            {
              if (v29 && *(&v101 + v29) <= 0xFFu)
              {
                v28 = 0;
                v27 = 0;
                v44 = *(&v101 + --v29);
                v30 = 16;
                v90 = v33;
                goto LABEL_143;
              }

              v28 = 0;
              v27 = 0;
            }
          }

          goto LABEL_142;
        }

        if (v43 == 18)
        {
          *(v6 + v33) = v11;
          v32 |= 0x40000u;
LABEL_142:
          v44 = v35;
          goto LABEL_143;
        }
      }

      else
      {
        if ((v43 - 20) < 2)
        {
          v45 = v32 | v36[v35 & 1];
          *(v6 + v33) = v35 & 0x7F;
          if ((v35 & 0x7F) == (v11 & 0x7F))
          {
            v32 = v45 | 0x400;
          }

          else
          {
            v52 = v36;
            v53 = v30;
            if (((1 << v30) & 0x780000) == 0)
            {
              v54 = &v95 + 16 * v95 + 4;
              if ((v35 & 0x7Fu) <= (v11 & 0x7Fu))
              {
                v55 = v11;
              }

              else
              {
                v55 = v35;
              }

              *(v54 + 3) = *(v54 + 2);
              v54[8] = v35;
              v56 = v55 & 1;
              v54[10] = v56;
              v54[9] = v56;
              *(v54 + 3) = v56;
              *v54 = v90;
            }

            v32 = v45 | 0x80000400;
            v30 = v53;
            v36 = v52;
          }

          if (v43 == 20)
          {
            v44 = (v35 + 2) & 0x7E;
          }

          else
          {
            v44 = ((v35 & 0x7F) + 1) | 1;
          }

          if (v44 > 0x7D || v28 || v27)
          {
            if (v42 < 0)
            {
              *v40 = 9;
            }

            else
            {
              *(v38 + 2 * v33) |= 15 << (4 * v42);
            }

            v28 = (v28 + 1);
            v44 = v35;
            LOBYTE(v11) = v35;
          }

          else
          {
            if (v26 >= *(a1 + 340))
            {
              *(a1 + 340) = v26 + 1;
            }

            v28 = 0;
            v27 = 0;
            v32 |= 1 << v43;
            *(&v101 + ++v29) = v44 | 0x100;
            v57 = &v95 + 16 * v95 + 4;
            LODWORD(v95) = v95 + 1;
            v58 = *(v57 + 3);
            *(v57 + 11) = v58;
            *(v57 + 10) = v58;
            v57[26] = v44 & 1;
            v57[25] = v44 & 1;
            *(v57 + 7) = v44 & 1;
            v57[10] = 10;
            v57[24] = v44;
            *(v57 + 4) = 0;
            LOBYTE(v11) = v35;
            v90 = v33;
            v30 = v43;
            ++v26;
          }

          goto LABEL_143;
        }

        if (v43 == 22)
        {
          if (((v11 ^ v35) & 0x7F) != 0)
          {
            if (((1 << v30) & 0x780000) == 0)
            {
              v49 = &v95 + 16 * v95 + 4;
              *(v49 + 3) = *(v49 + 2);
              if ((v35 & 0x7Fu) <= (v11 & 0x7Fu))
              {
                v50 = v11;
              }

              else
              {
                v50 = v35;
              }

              v49[8] = v35;
              v51 = v50 & 1;
              v49[10] = v51;
              v49[9] = v51;
              *(v49 + 3) = v51;
              *v49 = v90;
            }

            v32 |= 0x80000000;
          }

          if (v28)
          {
            v28 = (v28 - 1);
            if ((v34 & 0x80000000) == 0)
            {
              goto LABEL_79;
            }

LABEL_127:
            *v40 = 9;
          }

          else if (v26)
          {
            do
            {
              v63 = *(&v101 + v29--);
            }

            while (v63 < 0x100);
            v28 = 0;
            v27 = 0;
            v32 |= 0x400000u;
            --v26;
            v64 = v95 - 1;
            LODWORD(v95) = v95 - 1;
            v99[16 * v64] = 10;
            v30 = 22;
            v90 = v33;
          }

          else
          {
            v28 = 0;
            v26 = 0;
            if (v34 < 0)
            {
              goto LABEL_127;
            }

LABEL_79:
            *(v38 + 2 * v33) |= 15 << (4 * v34);
          }

          v44 = *(&v101 + v29);
          v32 |= v36[v44 & 1] | 0x400;
          *(v6 + v33) = v44 & 0x7F;
          LOBYTE(v11) = v44;
          goto LABEL_143;
        }
      }

LABEL_100:
      v88 = v26;
      v87 = v28;
      v86 = v30;
      if ((v35 & 0x7F) != (v11 & 0x7F))
      {
        if (((1 << v30) & 0x780000) == 0)
        {
          v59 = &v95 + 16 * v95 + 4;
          if ((v35 & 0x7Fu) <= (v11 & 0x7Fu))
          {
            v60 = v11;
          }

          else
          {
            v60 = v35;
          }

          *(v59 + 3) = *(v59 + 2);
          v59[8] = v35;
          v61 = v60 & 1;
          v59[10] = v61;
          v59[9] = v61;
          *(v59 + 3) = v61;
          *v59 = v90;
        }

        v62 = &unk_195446218;
        if ((v35 & 0x80u) == 0)
        {
          v62 = &unk_195446220;
        }

        v32 |= v62[v35 & 1] | 0x80000000;
      }

      *(v6 + v33) = v35;
      if (!sub_195228F7C(v94, v33))
      {
        result = 0xFFFFFFFFLL;
        goto LABEL_14;
      }

      v32 |= 1 << *v40;
      v44 = v35;
      LOBYTE(v11) = v35;
      v37 = v92;
      v25 = v93;
      v38 = v89;
      v30 = v86;
      v36 = &unk_1954461CC;
      v26 = v88;
      v28 = v87;
      goto LABEL_143;
    }

    if ((v43 - 11) >= 2 && (v43 - 14) >= 2)
    {
      if (v43 == 7)
      {
        if (*(a1 + 158) && (v46 = *(a1 + 224), v33 >= *v46))
        {
          v65 = *(a1 + 216);
          if (v65 <= 0)
          {
            v69 = v65 - 1;
          }

          else
          {
            v66 = 0;
            v67 = v46 + 2;
            do
            {
              if (v65 - 1 == v66)
              {
                v69 = v65 - 1;
                goto LABEL_131;
              }

              v68 = *v67;
              v67 += 2;
              ++v66;
            }

            while (v68 <= v33);
            if (v66 >= v65)
            {
              v69 = v65 - 1;
            }

            else
            {
              v69 = v66;
            }
          }

LABEL_131:
          v47 = v28;
          v48 = v46[2 * v69 + 1];
        }

        else
        {
          v47 = v28;
          LOBYTE(v48) = *(a1 + 157);
        }

        v32 |= 0x80u;
        *(v6 + v33) = v48;
        v70 = v33 + 1;
        if ((v33 + 1) >= v25 || *(v85 + 2 * v33) == 13 && *(v85 + 2 * v70) == 10)
        {
          v44 = v35;
          v28 = v47;
        }

        else
        {
          if (*(a1 + 158) && v70 >= **(a1 + 224))
          {
            v71 = v30;
            v44 = sub_195225D90(a1, v70);
            v30 = v71;
            v36 = &unk_1954461CC;
            v38 = v89;
            v37 = v92;
            v25 = v93;
          }

          else
          {
            v44 = *(a1 + 157);
          }

          v29 = 0;
          v28 = 0;
          v27 = 0;
          v26 = 0;
          v101 = v44;
          v95 = 0;
          v96 = 0;
          v97 = v44;
          v99[0] = v44 & 1;
          v98 = v44 & 1;
          LOBYTE(v11) = v44;
          v100 = v44 & 1;
        }

        goto LABEL_143;
      }

      goto LABEL_100;
    }

    *(v6 + v33) = v11;
    if ((v43 - 11) > 1)
    {
      v44 = ((v35 & 0x7F) + 1) | 1;
    }

    else
    {
      v44 = (v35 + 2) & 0x7E;
    }

    v32 |= 0x40000u;
    if (v44 > 0x7D || v28 || v27)
    {
      if (!v28)
      {
        ++v27;
      }

      goto LABEL_142;
    }

    if (v43 == 15 || v43 == 12)
    {
      v44 = v44 | 0xFFFFFF80;
    }

    v28 = 0;
    v27 = 0;
    *(&v101 + ++v29) = v44;
    v90 = v33;
    v30 = v43;
LABEL_143:
    v33 += (v34 & 0x80) >> 7;
    v35 = v44;
  }

  while (v33 < v25);
  if ((v32 & 0x7FDFD8) != 0)
  {
    v32 |= v36[*(a1 + 157) & 1];
  }

LABEL_165:
  v83 = (v32 >> 7) & 1;
  if (!*(a1 + 156))
  {
    v83 = 0;
  }

  v84 = v32 | v83;
  *(a1 + 204) = v84;
  if ((*&v84 & 0x20E002) != 0 || (result = 0, (v84 & 0x20) != 0) && (*&v84 & 0x5D1FD8) != 0)
  {
    if ((v84 & 0x1901825) != 0)
    {
      result = 2;
    }

    else
    {
      result = 1;
    }
  }

LABEL_14:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_195228418(unint64_t a1, int a2, int a3, unsigned __int8 a4, unsigned int a5)
{
  v6 = a3;
  v7 = a2;
  v9 = *(a1 + 120);
  v8 = *(a1 + 128);
  if (*(a1 + 208) <= a2)
  {
    goto LABEL_5;
  }

  if (*(a1 + 158))
  {
    v10 = *(a1 + 224);
    if (*v10 <= a2)
    {
      v11 = *(a1 + 216);
      if (v11 > 0)
      {
        v12 = 0;
        v13 = v10 + 2;
        while (v11 - 1 != v12)
        {
          v14 = *v13;
          v13 += 2;
          ++v12;
          if (v14 > a2)
          {
            if (v12 >= v11)
            {
              v15 = v11 - 1;
            }

            else
            {
              v15 = v12;
            }

            goto LABEL_14;
          }
        }
      }

      v15 = v11 - 1;
LABEL_14:
      if ((v10[2 * v15 + 1] & 1) == 0)
      {
        goto LABEL_5;
      }

LABEL_15:
      v81 = (*(a1 + 148) - 5) < 2;
      goto LABEL_16;
    }
  }

  if (*(a1 + 157))
  {
    goto LABEL_15;
  }

LABEL_5:
  v81 = 0;
LABEL_16:
  v89 = 0;
  v91 = 0;
  v93 = 0;
  v90 = -1;
  v92 = a2;
  v16 = a2;
  LOBYTE(v93) = *(*(a1 + 136) + a2);
  v17 = (*(a1 + 192) + 8 * (v93 & 1));
  v18 = *v17;
  v19 = v17[2];
  v88[0] = v18;
  v88[1] = v19;
  v87 = a1;
  v85 = a2;
  if (!a2)
  {
    v20 = *(a1 + 168);
    if (v20 >= 1)
    {
      v22 = *(a1 + 160);
      while (v20 >= 1)
      {
        v23 = *(v22 + 2 * (v20 - 1));
        if ((v23 & 0xFC00) == 0xDC00)
        {
          if (v20 == 1)
          {
            v20 = 0;
          }

          else
          {
            v24 = *(v22 - 4 + 2 * v20);
            v25 = v24 & 0xFC00;
            v26 = v23 + (v24 << 10) - 56613888;
            if (v25 == 55296)
            {
              v20 -= 2;
            }

            else
            {
              --v20;
            }

            if (v25 == 55296)
            {
              v23 = v26;
            }

            else
            {
              v23 = v23;
            }
          }
        }

        else
        {
          --v20;
        }

        CustomizedClass = ubidi_getCustomizedClass(a1, v23);
        v28 = CustomizedClass;
        if (CustomizedClass > 6u)
        {
          v7 = a2;
          a1 = v87;
          v16 = v85;
          if (v28 == 13)
          {
LABEL_37:
            a4 = 1;
            break;
          }

          if (v28 == 7)
          {
            break;
          }
        }

        else
        {
          v16 = v85;
          v7 = a2;
          if (!CustomizedClass)
          {
            a4 = CustomizedClass;
            a1 = v87;
            break;
          }

          a1 = v87;
          if (v28 == 1)
          {
            goto LABEL_37;
          }
        }
      }

      v6 = a3;
    }
  }

  if (v9 && (v29 = *(v9 + 2 * v16), *(v9 + 2 * v16)))
  {
    while ((v29 & 0xF) != 0xC)
    {
      v30 = v29 >= 0x10;
      v29 >>= 4;
      if (!v30)
      {
        goto LABEL_44;
      }
    }

    v31 = *(v8 + v16);
  }

  else
  {
LABEL_44:
    v31 = *(v8 + v16);
    if (v31 != 22)
    {
      goto LABEL_49;
    }
  }

  v32 = *(a1 + 340);
  if ((v32 & 0x80000000) == 0)
  {
    v33 = *(a1 + 344) + 16 * v32;
    v34 = *v33;
    v35 = *(v33 + 4);
    v36 = *(v33 + 12);
    LODWORD(v33) = *(v33 + 8);
    v89 = v34;
    v91 = v33;
    *(a1 + 340) = v32 - 1;
    goto LABEL_53;
  }

LABEL_49:
  if (v31 == 17)
  {
    v36 = a4 + 1;
  }

  else
  {
    v36 = 0;
  }

  v89 = -1;
  v91 = 0;
  sub_195229614(a1, v88, a4, v7, a2);
  v16 = v85;
  v7 = a2;
  v35 = a2;
LABEL_53:
  v78 = v6;
  v37 = 0;
  if (v7 <= v6)
  {
    v80 = v6 - 1;
    v79 = v8;
    v54 = v6;
    v55 = v6 + 1;
    v56 = v16 + 1;
    v57 = v7;
    v58 = v16;
    v84 = -1;
    v59 = 1;
    v82 = v7;
    v38 = v87;
    while (1)
    {
      if (v58 >= v54)
      {
        LODWORD(v63) = v6 - 1;
        if (v80 > v7)
        {
          v63 = v80;
          do
          {
            v37 = *(v8 + v63);
            if (((0x5D800uLL >> v37) & 1) == 0)
            {
              break;
            }

            if (v9 && (v64 = *(v9 + 2 * v63), *(v9 + 2 * v63)))
            {
              while (1)
              {
                v37 = byte_195446206[v64 & 0xF];
                if (((0x5D800uLL >> v37) & 1) == 0)
                {
                  break;
                }

                v52 = v64 > 0xF;
                v64 >>= 4;
                if (!v52)
                {
                  v64 = 0;
                  break;
                }
              }

              v65 = v64 == 0;
            }

            else
            {
              v65 = 1;
              v37 = 10;
            }

            --v63;
            if (!v65)
            {
              break;
            }
          }

          while (v63 > v16);
        }

        if (v63 == v7)
        {
          v37 = *(v8 + v16);
        }

        v66 = a5;
        if ((v37 & 0xFE) == 0x14)
        {
          goto LABEL_55;
        }
      }

      else
      {
        v60 = *(v8 + v58);
        if (v60 == 7)
        {
          *(v38 + 340) = -1;
        }

        if (v81)
        {
          if (v60 == 13)
          {
            v60 = 1u;
          }

          else if (v60 == 2)
          {
            if (v58 < v84)
            {
LABEL_107:
              if (v59 == 13)
              {
                v60 = 5;
              }

              else
              {
                v60 = 2;
              }
            }

            else
            {
              v61 = v56;
              v84 = v57;
              while (v61 < v54)
              {
                v59 = *(v8 + v61);
                ++v84;
                ++v61;
                if (v59 <= 0xD && ((1 << v59) & 0x2003) != 0)
                {
                  goto LABEL_107;
                }
              }

              v60 = 2u;
              v59 = 1;
              v84 = v6;
            }
          }
        }

        v66 = *(&unk_19544644E + v60);
      }

      v67 = byte_195446467[16 * v36 + v66];
      if (v67 < 0x20u && v58 == v54)
      {
        v69 = 1;
      }

      else
      {
        v69 = v67 >> 5;
      }

      if (v69)
      {
        v70 = byte_195446467[16 * v36 + 15];
        if (v69 > 2)
        {
          if (v69 != 3)
          {
            if (v69 != 4)
            {
              abort();
            }

            v71 = v59;
            sub_195229614(v38, v88, v70, v35, v82);
            v59 = v71;
            v8 = v79;
            v55 = v6 + 1;
            v54 = v6;
            v16 = v85;
            v7 = a2;
            v38 = v87;
            v35 = v82;
            v82 = v58;
            goto LABEL_144;
          }

          v73 = v59;
          sub_195229614(v38, v88, v70, v35, v82);
          sub_195229614(v87, v88, 4u, v82, v58);
          v59 = v73;
          v8 = v79;
          goto LABEL_143;
        }

        if (v69 == 1)
        {
          v72 = v59;
          sub_195229614(v38, v88, v70, v35, v58);
          v59 = v72;
LABEL_143:
          v55 = v6 + 1;
          v54 = v6;
          v16 = v85;
          v7 = a2;
          v38 = v87;
          v35 = v58;
          goto LABEL_144;
        }

        v82 = v58;
      }

LABEL_144:
      v36 = v67 & 0x1F;
      ++v58;
      ++v57;
      ++v56;
      if (v55 == v58)
      {
        goto LABEL_55;
      }
    }
  }

  v38 = v87;
LABEL_55:
  if (*(v38 + 20) == v6)
  {
    v39 = *(v38 + 184);
    if (v39 >= 1)
    {
      v40 = 0;
      v41 = *(v38 + 176);
      v42 = v35;
      while (v40 < v39)
      {
        v43 = v40 + 1;
        v44 = *(v41 + 2 * v40);
        if ((v44 & 0xFC00) != 0xD800 || v43 == v39)
        {
          ++v40;
        }

        else
        {
          v46 = *(v41 + 2 * v43);
          v47 = (v46 & 0xFC00) == 56320;
          v48 = (v44 << 10) - 56613888 + v46;
          if (v47)
          {
            v40 += 2;
          }

          else
          {
            ++v40;
          }

          if (v47)
          {
            v44 = v48;
          }

          else
          {
            v44 = v44;
          }
        }

        result = ubidi_getCustomizedClass(v38, v44);
        if (result <= 1u)
        {
          v7 = a2;
          v38 = v87;
          v16 = v85;
          v35 = v42;
          if (!result)
          {
            goto LABEL_80;
          }

          if (result == 1)
          {
LABEL_78:
            result = 1;
            goto LABEL_80;
          }
        }

        else
        {
          v7 = a2;
          v38 = v87;
          v16 = v85;
          v35 = v42;
          switch(result)
          {
            case 2u:
              goto LABEL_80;
            case 5u:
              result = 3;
              goto LABEL_80;
            case 0xDu:
              goto LABEL_78;
          }
        }
      }
    }
  }

  result = a5;
LABEL_80:
  LODWORD(v50) = v78 - 1;
  if (v78 - 1 > v7)
  {
    v50 = v50;
    do
    {
      v37 = *(v8 + v50);
      if (((0x5D800uLL >> v37) & 1) == 0)
      {
        break;
      }

      if (v9 && (v51 = *(v9 + 2 * v50), *(v9 + 2 * v50)))
      {
        while (1)
        {
          v37 = byte_195446206[v51 & 0xF];
          if (((0x5D800uLL >> v37) & 1) == 0)
          {
            break;
          }

          v52 = v51 > 0xF;
          v51 >>= 4;
          if (!v52)
          {
            v51 = 0;
            break;
          }
        }

        v53 = v51 == 0;
      }

      else
      {
        v53 = 1;
        v37 = 10;
      }

      --v50;
      if (!v53)
      {
        break;
      }
    }

    while (v50 > v16);
  }

  if (v50 == v7)
  {
    v37 = *(v8 + v16);
  }

  if ((v37 & 0xFE) != 0x14 || *(v38 + 20) <= v78)
  {
    return sub_195229614(v38, v88, result, v78, v78);
  }

  v74 = *(v38 + 340) + 1;
  *(v38 + 340) = v74;
  v75 = *(v38 + 344) + 16 * v74;
  *(v75 + 12) = v36;
  v76 = v91;
  v77 = v89;
  *(v75 + 4) = v35;
  *(v75 + 8) = v76;
  *v75 = v77;
  return result;
}

uint64_t sub_195228B94(uint64_t result)
{
  if ((*(result + 204) & 0x7DDB80) == 0)
  {
    return result;
  }

  v1 = *(result + 212);
  if (v1 < 1)
  {
    return result;
  }

  v2 = *(result + 128);
  v3 = *(result + 136);
  v4 = *(result + 156);
  do
  {
    v5 = v1;
    for (i = v1 + 0x7FFFFFFF; ; i += 0x7FFFFFFF)
    {
      v7 = v5--;
      v8 = 1 << *(v2 + v5);
      if ((v8 & 0x7DDB80) == 0)
      {
        break;
      }

      if (v4 && (v8 & 0x80) != 0)
      {
        LOBYTE(v9) = 0;
      }

      else if (*(result + 158) && (v10 = *(result + 224), *v10 < v7))
      {
        v11 = *(result + 216);
        if (v11 > 0)
        {
          v12 = 0;
          v13 = v10 + 2;
          while (v11 - 1 != v12)
          {
            v14 = *v13;
            v13 += 2;
            ++v12;
            if (v14 >= v7)
            {
              if (v12 >= v11)
              {
                v15 = v11 - 1;
              }

              else
              {
                v15 = v12;
              }

              goto LABEL_20;
            }
          }
        }

        v15 = v11 - 1;
LABEL_20:
        v9 = v10[2 * v15 + 1];
      }

      else
      {
        LOBYTE(v9) = *(result + 157);
      }

      *(v3 + v5) = v9;
      if (v7 <= 1)
      {
        return result;
      }
    }

    if (v5 < 1)
    {
      return result;
    }

    v16 = (i & 0x7FFFFFFF) + 1;
    while (1)
    {
      v17 = 1 << *(v2 + v16 - 2);
      if ((v17 & 0x5D800) != 0)
      {
        *(v3 + v16 - 2) = *(v3 + v16 - 1);
        goto LABEL_30;
      }

      if (v4 && (v17 & 0x80) != 0)
      {
        LOBYTE(v18) = 0;
        goto LABEL_45;
      }

      if ((v17 & 0x180) != 0)
      {
        break;
      }

LABEL_30:
      if (--v16 <= 1)
      {
        return result;
      }
    }

    if (*(result + 158) && (v19 = *(result + 224), *v19 < v16 - 1))
    {
      v20 = *(result + 216);
      if (v20 > 0)
      {
        v21 = 0;
        v22 = v19 + 2;
        while (v20 - 1 != v21)
        {
          v23 = *v22;
          v22 += 2;
          ++v21;
          if (v23 >= v16 - 1)
          {
            if (v21 >= v20)
            {
              v24 = v20 - 1;
            }

            else
            {
              v24 = v21;
            }

            goto LABEL_44;
          }
        }
      }

      v24 = v20 - 1;
LABEL_44:
      v18 = v19[2 * v24 + 1];
    }

    else
    {
      LOBYTE(v18) = *(result + 157);
    }

LABEL_45:
    v1 = v16 - 2;
    *(v3 + v16 - 2) = v18;
  }

  while (v16 - 2 > 0);
  return result;
}

_DWORD *sub_195228D6C(_DWORD *result, int a2, int a3)
{
  v5 = result;
  v6 = result[108];
  if (!v6)
  {
    result = malloc_type_malloc(0x50uLL, 0x100004000313F17uLL);
    *(v5 + 56) = result;
    if (!result)
    {
      goto LABEL_9;
    }

    v6 = 10;
    v5[108] = 10;
  }

  v7 = v5[109];
  v8 = *(v5 + 56);
  if (v7 < v6)
  {
LABEL_7:
    v9 = &v8[2 * v7];
    *v9 = a2;
    v9[1] = a3;
    ++v5[109];
    return result;
  }

  result = malloc_type_realloc(*(v5 + 56), 16 * v6, 0x100004000313F17uLL);
  *(v5 + 56) = result;
  if (result)
  {
    v5[108] *= 2;
    v7 = v5[109];
    v8 = result;
    goto LABEL_7;
  }

  *(v5 + 56) = v8;
LABEL_9:
  v5[111] = 7;
  return result;
}

uint64_t sub_195228E3C(uint64_t result, uint64_t a2)
{
  *a2 = result;
  *(a2 + 500) = 0;
  *(a2 + 508) = 0;
  v2 = *(result + 158);
  if (*(result + 158) && (v3 = *(result + 224), *v3 < 1))
  {
    v5 = *(result + 216);
    if (v5 > 0)
    {
      v6 = 0;
      v7 = v3 + 2;
      while (v5 - 1 != v6)
      {
        v8 = *v7;
        v7 += 2;
        ++v6;
        if (v8 > 0)
        {
          if (v6 >= v5)
          {
            v9 = v5 - 1;
          }

          else
          {
            v9 = v6;
          }

          goto LABEL_12;
        }
      }
    }

    v9 = v5 - 1;
LABEL_12:
    v4 = v3[2 * v9 + 1];
  }

  else
  {
    LOBYTE(v4) = *(result + 157);
  }

  *(a2 + 512) = v4;
  if (v2 && (v10 = *(result + 224), *v10 < 1))
  {
    v12 = *(result + 216);
    if (v12 > 0)
    {
      v13 = 0;
      v14 = v10 + 2;
      while (v12 - 1 != v13)
      {
        v15 = *v14;
        v14 += 2;
        ++v13;
        if (v15 > 0)
        {
          if (v13 >= v12)
          {
            v16 = v12 - 1;
          }

          else
          {
            v16 = v13;
          }

          goto LABEL_24;
        }
      }
    }

    v16 = v12 - 1;
LABEL_24:
    v11 = v10[2 * v16 + 1];
  }

  else
  {
    LOBYTE(v11) = *(result + 157);
  }

  v17 = v11 & 1;
  *(a2 + 514) = v17;
  *(a2 + 513) = v17;
  *(a2 + 516) = v17;
  *(a2 + 504) = 0;
  v18 = *(result + 80);
  if (v18)
  {
    v19 = *(result + 40) / 0x18uLL;
  }

  else
  {
    v18 = a2 + 8;
    LODWORD(v19) = 20;
  }

  *(a2 + 488) = v18;
  *(a2 + 496) = v19;
  v20 = *(result + 148);
  v22 = v20 == 1 || v20 == 6;
  *(a2 + 2536) = v22;
  return result;
}

uint64_t sub_195228F7C(int *a1, int a2)
{
  v4 = &a1[4 * a1[125] + 126];
  v5 = *(*a1 + 128);
  v6 = *(v5 + a2);
  if (v6 != 10)
  {
    goto LABEL_49;
  }

  v7 = *(*(*a1 + 8) + 2 * a2);
  v8 = HIWORD(a1[4 * a1[125] + 127]);
  v9 = LOWORD(a1[4 * a1[125] + 127]);
  v10 = 24 * v8 - 24;
  do
  {
    if (v8 <= v9)
    {
      if (!*(*(*a1 + 8) + 2 * a2))
      {
        goto LABEL_49;
      }

      BidiPairedBracket = u_getBidiPairedBracket(*(*(*a1 + 8) + 2 * a2));
      if (v7 == BidiPairedBracket)
      {
        goto LABEL_49;
      }

      v18 = BidiPairedBracket;
      if (sub_19522A0A4(v7) != 1)
      {
        goto LABEL_49;
      }

      if (v18 == 12297)
      {
        v19 = a1;
        v20 = 9002;
      }

      else
      {
        if (v18 != 9002)
        {
          goto LABEL_48;
        }

        v19 = a1;
        v20 = 12297;
      }

      result = sub_195229444(v19, v20, a2);
      if (!result)
      {
        return result;
      }

LABEL_48:
      result = sub_195229444(a1, v18, a2);
      if (!result)
      {
        return result;
      }

      goto LABEL_49;
    }

    --v8;
    v11 = *(a1 + 61);
    v12 = *(v11 + v10 + 4);
    v10 -= 24;
  }

  while (v12 != v7);
  v13 = v11 + v10;
  v14 = *(v11 + v10 + 36);
  if ((a1[4 * a1[125] + 128] & 1) == 0)
  {
    if (v14)
    {
      LOBYTE(v16) = 0;
      v15 = 1;
      goto LABEL_19;
    }

LABEL_15:
    if ((v14 & 3) == 0)
    {
      HIWORD(a1[4 * a1[125] + 127]) = v8;
      goto LABEL_49;
    }

    v16 = a1[4 * a1[125] + 128] & 1;
    v15 = v9 == v8;
    if (*(v11 + v10 + 40) != v16)
    {
      v16 = *(v11 + v10 + 40);
    }

    goto LABEL_19;
  }

  if ((v14 & 2) == 0)
  {
    goto LABEL_15;
  }

  v15 = 1;
  LOBYTE(v16) = 1;
LABEL_19:
  *(v5 + *(v13 + 24)) = v16;
  *(*(*a1 + 128) + a2) = v16;
  v44 = v16;
  sub_19522952C(a1, v8, *(v13 + 24), v16);
  if (v15)
  {
    LODWORD(v21) = *(v4 + 4);
    if (v21 >= v8)
    {
      v22 = v8;
    }

    else
    {
      v22 = v8;
      while (*(*(a1 + 61) + 24 * (v22 - 1)) == *(v13 + 24))
      {
        if (v21 >= --v22)
        {
          v22 = *(v4 + 4);
          break;
        }
      }
    }

    *(v4 + 6) = v22;
  }

  else
  {
    LODWORD(v23) = v8 + 1;
    *(v11 + v10 + 28) = -a2;
    v21 = *(v4 + 4);
    if (v8 > v21)
    {
      v24 = *(v13 + 24);
      v25 = (*(a1 + 61) + v10);
      v26 = v8;
      do
      {
        if (*v25 != v24)
        {
          break;
        }

        --v26;
        v25[1] = 0;
        v25 -= 6;
      }

      while (v26 > v21);
    }

    v27 = *(v4 + 6);
    if (v23 < v27)
    {
      v23 = v23;
      v28 = (*(a1 + 61) + 24 * (v8 + 1) + 4);
      do
      {
        if (*(v28 - 1) >= a2)
        {
          break;
        }

        if (*v28 >= 1)
        {
          *v28 = 0;
        }

        ++v23;
        v28 += 6;
      }

      while (v23 < v27);
    }
  }

  if (v44 != 10)
  {
    *(v4 + 10) = 10;
    *(v4 + 12) = v44;
    *v4 = a2;
    v29 = *(*a1 + 136);
    v30 = *(v29 + a2);
    if (v30 < 0)
    {
      *(v4 + 9) = v30 & 1;
      if (v8 > v21)
      {
        v31 = 1 << (v30 & 1);
        v32 = v21;
        v33 = (*(a1 + 61) + 24 * v21 + 12);
        do
        {
          *v33 |= v31;
          v33 += 12;
          ++v32;
        }

        while (v32 < v8);
      }

      *(v29 + a2) &= ~0x80u;
      v29 = *(*a1 + 136);
    }

    v34 = *(*(a1 + 61) + v10 + 24);
    *(v29 + v34) &= ~0x80u;
    return 1;
  }

LABEL_49:
  v36 = *(*(*a1 + 136) + a2);
  if (v36 < 0)
  {
    v37 = v36 & 1;
    if ((v6 - 11) <= 0xFCu)
    {
      *(v5 + a2) = v37;
    }

    *(v4 + 10) = v37;
    *(v4 + 9) = v37;
    *(v4 + 12) = v37;
    v6 = v37;
    goto LABEL_64;
  }

  if (v6 > 4)
  {
    if (v6 == 5)
    {
      *(v4 + 10) = 5;
LABEL_78:
      v6 = 1;
      goto LABEL_79;
    }

    if (v6 == 17)
    {
      v6 = *(v4 + 10);
      if (v6 == 10)
      {
        *(v5 + a2) = 10;
        return 1;
      }

      goto LABEL_65;
    }

    if (v6 != 13)
    {
      goto LABEL_72;
    }

    goto LABEL_63;
  }

  if (v6 < 2)
  {
LABEL_63:
    *(v4 + 10) = v6;
    *(v4 + 9) = v6;
    v6 = v6 != 0;
    *(v4 + 12) = v6;
LABEL_64:
    *v4 = a2;
    goto LABEL_65;
  }

  if (v6 != 2)
  {
LABEL_72:
    *(v4 + 10) = v6;
LABEL_65:
    result = 1;
    if (v6 <= 0xD && ((1 << v6) & 0x2003) != 0)
    {
      goto LABEL_80;
    }

    return result;
  }

  *(v4 + 10) = 2;
  if (*(v4 + 9) == 13)
  {
    v39 = 5;
LABEL_77:
    *(v5 + a2) = v39;
    goto LABEL_78;
  }

  if (*(v4 + 9))
  {
    v39 = 24;
    goto LABEL_77;
  }

  v6 = 0;
  if (!*(a1 + 2536))
  {
    *(v5 + a2) = 23;
  }

LABEL_79:
  *(v4 + 12) = v6;
  *v4 = a2;
LABEL_80:
  result = 1;
  v40 = *(v4 + 4);
  v41 = *(v4 + 6);
  if (v40 < v41)
  {
    v42 = (*(a1 + 61) + 24 * *(v4 + 4) + 12);
    v43 = v41 - v40;
    do
    {
      if (*(v42 - 3) < a2)
      {
        *v42 |= 1 << (v6 != 0);
      }

      v42 += 12;
      --v43;
    }

    while (v43);
    return 1;
  }

  return result;
}

uint64_t sub_195229444(int *a1, int a2, int a3)
{
  v6 = &a1[4 * a1[125]];
  v7 = v6 + 126;
  v8 = *(v6 + 255);
  if (a1[124] <= v8)
  {
    v10 = *a1;
    result = sub_195225B04((*a1 + 80), (*a1 + 40), 1, 48 * v8);
    if (!result)
    {
      return result;
    }

    if (*(a1 + 61) == a1 + 2)
    {
      memcpy(*(v10 + 80), a1 + 2, 0x1E0uLL);
    }

    v9 = *(v10 + 80);
    *(a1 + 61) = v9;
    a1[124] = *(v10 + 40) / 0x18uLL;
    v8 = *(v7 + 3);
  }

  else
  {
    v9 = *(a1 + 61);
  }

  v12 = v9 + 24 * v8;
  *v12 = a3;
  *(v12 + 4) = a2;
  *(v12 + 16) = v7[3];
  *(v12 + 8) = *v7;
  *(v12 + 12) = 0;
  *(v7 + 3) = v8 + 1;
  return 1;
}

uint64_t sub_19522952C(uint64_t result, int a2, int a3, int a4)
{
  v4 = result + 16 * *(result + 500);
  v5 = (a2 + 1);
  v6 = *(v4 + 510);
  if (v5 < v6)
  {
    v9 = result;
    v10 = *(*result + 128);
    v11 = (*(result + 488) + 24 * v5);
    do
    {
      if (v11[1] < 0)
      {
        if (v11[2] > a3)
        {
          return result;
        }

        v12 = *v11;
        if (v12 > a3)
        {
          if (v11[4] == a4)
          {
            return result;
          }

          *(v10 + v12) = a4;
          *(v10 - v11[1]) = a4;
          v11[1] = 0;
          sub_19522952C(v9, v5);
          result = sub_19522952C(v9, v5);
          v6 = *(v4 + 510);
        }
      }

      v5 = (v5 + 1);
      v11 += 6;
    }

    while (v5 < v6);
  }

  return result;
}