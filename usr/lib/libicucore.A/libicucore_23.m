void *icu::CollationRuleParser::parseStarredCharacters(icu::CollationRuleParser *this, uint64_t a2, int a3, UErrorCode *a4)
{
  v51 = *MEMORY[0x1E69E9840];
  v47 = 0u;
  v50 = 0;
  v49 = 0u;
  v48 = 0u;
  v45 = 0;
  v46 = &unk_1F0935D00;
  LOWORD(v47) = 2;
  v42 = 0u;
  v44 = 0u;
  v43 = 0u;
  v41 = &unk_1F0935D00;
  LOWORD(v42) = 2;
  v7 = icu::CollationRuleParser::skipWhiteSpace(this, a3);
  v8 = icu::CollationRuleParser::parseString(this, v7, &v41, a4);
  v9 = *a4;
  if (v9 <= 0)
  {
    v10 = v42;
    if (v42 < 0x20u)
    {
      *a4 = U_INVALID_FORMAT_ERROR;
      v30 = "missing starred-relation string";
    }

    else
    {
      v11 = v8;
      v12 = 0;
      while (1)
      {
        v13 = v10;
        LODWORD(v14) = v10 >> 5;
        if (v13 >= 0)
        {
          v14 = v14;
        }

        else
        {
          v14 = DWORD1(v42);
        }

        if (v12 < v14)
        {
          while (1)
          {
            v15 = icu::UnicodeString::char32At(v14, &v41, v12);
            if (!(*(**this + 136))(*this, v15))
            {
              break;
            }

            v16 = *(this + 7);
            icu::UnicodeString::UnicodeString(&v36, v15);
            (*(*v16 + 32))(v16, a2, &v46, &v36, &v46, this + 48, a4);
            icu::UnicodeString::~UnicodeString(v17, &v36);
            if (*a4 >= 1)
            {
              goto LABEL_48;
            }

            if (v15 < 0x10000)
            {
              v18 = 1;
            }

            else
            {
              v18 = 2;
            }

            v12 += v18;
            LODWORD(v14) = v42 >> 5;
            if ((v42 & 0x8000u) == 0)
            {
              v14 = v14;
            }

            else
            {
              v14 = DWORD1(v42);
            }

            if (v12 >= v14)
            {
              goto LABEL_19;
            }
          }

          v9 = *a4;
          if (v9 <= 0)
          {
            *a4 = U_INVALID_FORMAT_ERROR;
            v30 = "starred-relation string is not all NFD-inert";
            goto LABEL_47;
          }

          goto LABEL_60;
        }

        LODWORD(v15) = -1;
LABEL_19:
        v19 = *(this + 2);
        v20 = *(v19 + 8);
        if (*(v19 + 8) < 0)
        {
          v21 = *(v19 + 12);
          if (v11 >= v21)
          {
            goto LABEL_61;
          }
        }

        else
        {
          if (v11 >= (v20 >> 5))
          {
            goto LABEL_61;
          }

          v21 = v20 >> 5;
        }

        if (v21 <= v11 || ((v20 & 2) != 0 ? (v22 = v19 + 10) : (v22 = *(v19 + 24)), *(v22 + 2 * v11) != 45))
        {
LABEL_61:
          *(this + 18) = icu::CollationRuleParser::skipWhiteSpace(this, v11);
          goto LABEL_60;
        }

        if ((v15 & 0x80000000) != 0)
        {
          v9 = *a4;
          if (v9 > 0)
          {
            goto LABEL_60;
          }

          *a4 = U_INVALID_FORMAT_ERROR;
          v30 = "range without start in starred-relation string";
          goto LABEL_47;
        }

        v23 = icu::CollationRuleParser::parseString(this, (v11 + 1), &v41, a4);
        v9 = *a4;
        if (v9 > 0)
        {
          goto LABEL_60;
        }

        if (v42 <= 0x1Fu)
        {
          *a4 = U_INVALID_FORMAT_ERROR;
          v30 = "range without end in starred-relation string";
          goto LABEL_47;
        }

        v11 = v23;
        v24 = icu::UnicodeString::char32At(v42, &v41, 0);
        if (v24 < v15)
        {
          break;
        }

        v25 = v24;
        v40 = 0;
        v39 = 0u;
        v38 = 0u;
        v37 = 0u;
        v36 = &unk_1F0935D00;
        v26 = 2;
        LOWORD(v37) = 2;
        while (v25 != v15)
        {
          v27 = (v15 + 1);
          if (!(*(**this + 136))(*this, v27))
          {
            v31 = *a4;
            if (v31 > 0)
            {
              goto LABEL_59;
            }

            *a4 = U_INVALID_FORMAT_ERROR;
            v32 = "starred-relation string range is not all NFD-inert";
            goto LABEL_57;
          }

          if ((v27 & 0x7FFFF800) == 0xD800)
          {
            v31 = *a4;
            if (v31 > 0)
            {
              goto LABEL_59;
            }

            *a4 = U_INVALID_FORMAT_ERROR;
            v32 = "starred-relation string range contains a surrogate";
LABEL_57:
            *(this + 6) = v32;
            v31 = *(this + 5);
            if (v31)
            {
LABEL_58:
              icu::CollationRuleParser::setErrorContext(this);
            }

            goto LABEL_59;
          }

          v28 = v27 - 65533;
          if (v28 <= 2)
          {
            v31 = *a4;
            if (v31 <= 0)
            {
              *a4 = U_INVALID_FORMAT_ERROR;
              v32 = "starred-relation string range contains U+FFFD, U+FFFE or U+FFFF";
              goto LABEL_57;
            }

LABEL_59:
            icu::UnicodeString::~UnicodeString(v31, &v36);
            goto LABEL_60;
          }

          icu::UnicodeString::unBogus(&v36);
          if ((v37 & 0x8000u) == 0)
          {
            v29 = v37 >> 5;
          }

          else
          {
            v29 = DWORD1(v37);
          }

          LODWORD(v15) = v28 + 65533;
          icu::UnicodeString::replace(&v36, 0, v29, v15);
          (*(**(this + 7) + 32))(*(this + 7), a2, &v46, &v36, &v46, this + 48, a4);
          v26 = *a4;
          if (v26 >= 1)
          {
            goto LABEL_58;
          }
        }

        if (v25 < 0x10000)
        {
          v12 = 1;
        }

        else
        {
          v12 = 2;
        }

        icu::UnicodeString::~UnicodeString(v26, &v36);
        v10 = v42;
      }

      v9 = *a4;
      if (v9 > 0)
      {
        goto LABEL_60;
      }

      *a4 = U_INVALID_FORMAT_ERROR;
      v30 = "range start greater than end in starred-relation string";
    }

LABEL_47:
    *(this + 6) = v30;
    v9 = *(this + 5);
    if (v9)
    {
LABEL_48:
      icu::CollationRuleParser::setErrorContext(this);
    }
  }

LABEL_60:
  icu::UnicodeString::~UnicodeString(v9, &v41);
  result = icu::UnicodeString::~UnicodeString(v33, &v46);
  v35 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t icu::CollationRuleParser::skipWhiteSpace(icu::CollationRuleParser *this, int a2)
{
  v3 = a2;
  do
  {
    v4 = v3;
    v5 = *(this + 2);
    v6 = *(v5 + 8);
    if (v6 < 0)
    {
      v7 = *(v5 + 12);
      if (v3 >= v7)
      {
        return v4;
      }
    }

    else
    {
      if (v3 >= (*(v5 + 8) >> 5))
      {
        return v4;
      }

      v7 = *(v5 + 8) >> 5;
    }

    if (v7 <= v3)
    {
      v9 = 0xFFFFLL;
    }

    else
    {
      if ((v6 & 2) != 0)
      {
        v8 = v5 + 10;
      }

      else
      {
        v8 = *(v5 + 24);
      }

      v9 = *(v8 + 2 * v3);
    }

    ++v3;
  }

  while (icu::PatternProps::isWhiteSpace(v9));
  return v4;
}

uint64_t icu::CollationRuleParser::parseSpecialPosition(icu::CollationRuleParser *this, uint64_t a2, icu::UnicodeString *a3, UErrorCode *a4)
{
  v45 = *MEMORY[0x1E69E9840];
  if (*a4 <= 0)
  {
    v41 = 0u;
    v44 = 0;
    v43 = 0u;
    v42 = 0u;
    v40 = &unk_1F0935D00;
    LOWORD(v41) = 2;
    Words = icu::CollationRuleParser::readWords(this, a2 + 1, &v40);
    if (Words <= a2 || ((v10 = *(this + 2), v11 = *(v10 + 8), *(v10 + 8) < 0) ? (v12 = *(v10 + 12)) : (v12 = v11 >> 5), v12 <= Words || ((v11 & 2) != 0 ? (v13 = v10 + 10) : (v13 = *(v10 + 24)), *(v13 + 2 * Words) != 93 || v41 < 0x20u)))
    {
LABEL_53:
      v30 = *a4;
      if (v30 <= 0)
      {
        *a4 = U_INVALID_FORMAT_ERROR;
        *(this + 6) = "not a valid special reset position";
        v30 = *(this + 5);
        if (v30)
        {
          icu::CollationRuleParser::setErrorContext(this);
        }
      }

      v4 = a2;
      goto LABEL_57;
    }

    v14 = 0;
    v4 = (Words + 1);
    do
    {
      icu::UnicodeString::UnicodeString(&v35, off_1E740C1A8[v14], 0xFFFFFFFFLL, 0);
      if (v41)
      {
        v20 = v36;
        icu::UnicodeString::~UnicodeString(v41, &v35);
        if (v20)
        {
          goto LABEL_45;
        }
      }

      else
      {
        if ((v41 & 0x8000u) == 0)
        {
          v15 = v41 >> 5;
        }

        else
        {
          v15 = DWORD1(v41);
        }

        if ((v36 & 0x8000u) == 0)
        {
          v16 = v36 >> 5;
        }

        else
        {
          v16 = v38;
        }

        if ((v36 & 1) != 0 || v15 != v16)
        {
          icu::UnicodeString::~UnicodeString(v36, &v35);
        }

        else
        {
          if ((v36 & 2) != 0)
          {
            v17 = v37;
          }

          else
          {
            v17 = v39;
          }

          v18 = icu::UnicodeString::doEquals(&v40, v17, v15);
          icu::UnicodeString::~UnicodeString(v19, &v35);
          if (v18)
          {
LABEL_45:
            v26 = sub_1952DDBC8(a3, 65534);
            v27 = v14 | 0x2800;
            goto LABEL_52;
          }
        }
      }

      ++v14;
    }

    while (v14 != 14);
    v34 = "t";
    icu::UnicodeString::UnicodeString(&v35, 1, &v34);
    if (v41)
    {
      v24 = v36;
      v25 = v36 & 1;
    }

    else
    {
      if ((v41 & 0x8000u) == 0)
      {
        v21 = v41 >> 5;
      }

      else
      {
        v21 = DWORD1(v41);
      }

      if ((v36 & 0x8000u) == 0)
      {
        v22 = v36 >> 5;
      }

      else
      {
        v22 = v38;
      }

      if ((v36 & 1) != 0 || v21 != v22)
      {
        icu::UnicodeString::~UnicodeString(v36, &v35);
        goto LABEL_50;
      }

      if ((v36 & 2) != 0)
      {
        v23 = v37;
      }

      else
      {
        v23 = v39;
      }

      v25 = icu::UnicodeString::doEquals(&v40, v23, v21);
    }

    icu::UnicodeString::~UnicodeString(v24, &v35);
    if (v25)
    {
      v26 = sub_1952DDBC8(a3, 65534);
      v27 = 10249;
LABEL_52:
      v35 = v27;
      icu::UnicodeString::doAppend(v26, &v35, 0, 1);
LABEL_57:
      icu::UnicodeString::~UnicodeString(v30, &v40);
      goto LABEL_58;
    }

LABEL_50:
    v33 = "v";
    icu::UnicodeString::UnicodeString(&v35, 1, &v33);
    v28 = sub_195213DE4(&v40, &v35);
    icu::UnicodeString::~UnicodeString(v29, &v35);
    if (!v28)
    {
      goto LABEL_53;
    }

    v26 = sub_1952DDBC8(a3, 65534);
    v27 = 10247;
    goto LABEL_52;
  }

  v4 = 0;
LABEL_58:
  v31 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t icu::CollationRuleParser::parseTailoringString(icu::CollationRuleParser *this, int a2, icu::UnicodeString *a3, UErrorCode *a4)
{
  v7 = icu::CollationRuleParser::skipWhiteSpace(this, a2);
  v8 = icu::CollationRuleParser::parseString(this, v7, a3, a4);
  if (*a4 <= 0 && *(a3 + 4) <= 0x1Fu)
  {
    *a4 = U_INVALID_FORMAT_ERROR;
    *(this + 6) = "missing relation string";
    if (*(this + 5))
    {
      icu::CollationRuleParser::setErrorContext(this);
    }
  }

  return icu::CollationRuleParser::skipWhiteSpace(this, v8);
}

char *icu::CollationRuleParser::setErrorContext(char *this)
{
  v1 = *(this + 5);
  if (v1)
  {
    v2 = this;
    v3 = 0;
    v4 = *(this + 18);
    *v1 = 0;
    v1[1] = v4;
    v5 = *(this + 2);
    if (v4 >= 16)
    {
      v3 = v4 - 15;
      v6 = *(v5 + 8);
      v7 = *(v5 + 8) < 0 ? *(v5 + 12) : v6 >> 5;
      if (v7 > v3)
      {
        v8 = (v6 & 2) != 0 ? v5 + 10 : *(v5 + 24);
        if (*(v8 + 2 * v3) >> 10 == 55)
        {
          v3 = v4 - 14;
        }
      }
    }

    v9 = v4 - v3;
    icu::UnicodeString::doExtract(v5, v3, v4 - v3, (v1 + 2), 0);
    v10 = *(v2 + 5);
    *(v10 + 2 * v9 + 8) = 0;
    v11 = *(v2 + 2);
    v12 = *(v11 + 8);
    v13 = *(v2 + 18);
    if (*(v11 + 8) < 0)
    {
      v14 = *(v11 + 12);
      v15 = v14 - v13;
      if ((v14 - v13) <= 15)
      {
LABEL_24:
        this = icu::UnicodeString::doExtract(v11, v13, v15, v10 + 40, 0);
        *(*(v2 + 5) + 2 * v15 + 40) = 0;
        return this;
      }
    }

    else
    {
      v14 = v12 >> 5;
      v15 = (v12 >> 5) - v13;
      if (v15 < 16)
      {
        goto LABEL_24;
      }
    }

    if (v14 <= v13 + 14)
    {
      v15 = 15;
    }

    else
    {
      if ((v12 & 2) != 0)
      {
        v16 = v11 + 10;
      }

      else
      {
        v16 = *(v11 + 24);
      }

      if ((*(v16 + 2 * (v13 + 14)) & 0xFC00) == 0xD800)
      {
        v15 = 14;
      }

      else
      {
        v15 = 15;
      }
    }

    goto LABEL_24;
  }

  return this;
}

uint64_t icu::CollationRuleParser::parseString(icu::CollationRuleParser *this, uint64_t a2, icu::UnicodeString *a3, UErrorCode *a4)
{
  if (*a4 > 0)
  {
    return a2;
  }

  if (*(a3 + 4))
  {
    v10 = 2;
  }

  else
  {
    v10 = *(a3 + 4) & 0x1E;
  }

  *(a3 + 4) = v10;
  while (1)
  {
    while (1)
    {
      while (1)
      {
LABEL_8:
        v11 = *(this + 2);
        v12 = *(v11 + 8);
        if (*(v11 + 8) < 0)
        {
          v13 = *(v11 + 12);
          if (a2 >= v13)
          {
            goto LABEL_66;
          }
        }

        else
        {
          if (a2 >= (v12 >> 5))
          {
            goto LABEL_66;
          }

          v13 = v12 >> 5;
        }

        v5 = a2 + 1;
        if (v13 <= a2)
        {
          v15 = 0xFFFFLL;
          goto LABEL_55;
        }

        v14 = (v12 & 2) != 0 ? v11 + 10 : *(v11 + 24);
        v15 = *(v14 + 2 * a2);
        if ((v15 - 33) <= 0x5D)
        {
          break;
        }

LABEL_55:
        if (icu::PatternProps::isWhiteSpace(v15))
        {
LABEL_66:
          v28 = *(a3 + 4);
          v29 = v28;
          LODWORD(v30) = v28 >> 5;
          if (v29 >= 0)
          {
            v30 = v30;
          }

          else
          {
            v30 = *(a3 + 3);
          }

          if (v30 < 1)
          {
            return a2;
          }

          v31 = 0;
          while (1)
          {
            v32 = icu::UnicodeString::char32At(v30, a3, v31);
            if (v32 >> 11 == 27)
            {
              break;
            }

            if (v32 - 65533 <= 2)
            {
              if (*a4 <= 0)
              {
                *a4 = U_INVALID_FORMAT_ERROR;
                v36 = "string contains U+FFFD, U+FFFE or U+FFFF";
LABEL_88:
                *(this + 6) = v36;
                v20 = a2;
                v5 = a2;
                if (*(this + 5))
                {
                  goto LABEL_89;
                }

                return v5;
              }

              return a2;
            }

            if (v32 < 0x10000)
            {
              v33 = 1;
            }

            else
            {
              v33 = 2;
            }

            v31 += v33;
            v34 = *(a3 + 4);
            v35 = v34;
            LODWORD(v30) = v34 >> 5;
            if (v35 >= 0)
            {
              v30 = v30;
            }

            else
            {
              v30 = *(a3 + 3);
            }

            if (v31 >= v30)
            {
              return a2;
            }
          }

          if (*a4 <= 0)
          {
            *a4 = U_INVALID_FORMAT_ERROR;
            v36 = "string contains an unpaired surrogate";
            goto LABEL_88;
          }

          return a2;
        }

        v39 = v15;
        icu::UnicodeString::doAppend(a3, &v39, 0, 1);
        a2 = a2 + 1;
      }

      if (v15 < 0x30)
      {
        goto LABEL_19;
      }

      v17 = (v15 - 58);
      if (v17 > 0x26)
      {
        break;
      }

      if (v17 != 34)
      {
        if (((1 << (v15 - 58)) & 0x7A0000007FLL) != 0)
        {
          goto LABEL_66;
        }

        break;
      }

      if ((v12 & 0x8000) != 0)
      {
        v18 = *(v11 + 12);
      }

      else
      {
        v18 = (v12 >> 5);
      }

      if (v5 == v18)
      {
        if (*a4 <= 0)
        {
          *a4 = U_INVALID_FORMAT_ERROR;
          *(this + 6) = "backslash escape at the end of the rule string";
          v20 = a2 + 1;
          if (*(this + 5))
          {
            goto LABEL_89;
          }
        }

        return v5;
      }

      v26 = icu::UnicodeString::char32At(v18, v11, a2 + 1);
      icu::UnicodeString::append(a3, v26);
      if (v26 < 0x10000)
      {
        v27 = 1;
      }

      else
      {
        v27 = 2;
      }

      a2 = (v27 + v5);
    }

    if (v15 < 0x7B)
    {
      goto LABEL_55;
    }

LABEL_19:
    if (v15 != 39)
    {
      goto LABEL_66;
    }

    if ((v12 & 0x8000) != 0)
    {
      v16 = *(v11 + 12);
      if (v5 >= v16)
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (v5 >= (v12 >> 5))
      {
        goto LABEL_31;
      }

      v16 = v12 >> 5;
    }

    if (v16 <= v5)
    {
LABEL_31:
      v20 = a2 + 1;
      break;
    }

    v19 = (v12 & 2) != 0 ? v11 + 10 : *(v11 + 24);
    v20 = a2 + 1;
    if (*(v19 + 2 * v5) != 39)
    {
      break;
    }

    v37 = 39;
    icu::UnicodeString::doAppend(a3, &v37, 0, 1);
    a2 = (a2 + 2);
  }

  while ((v12 & 0x8000) == 0)
  {
    if (v20 == v12 >> 5)
    {
      goto LABEL_81;
    }

    v21 = v12 >> 5;
LABEL_36:
    a2 = v20 + 1;
    if (v21 <= v20)
    {
      LOWORD(v23) = -1;
    }

    else
    {
      if ((v12 & 2) != 0)
      {
        v22 = v11 + 10;
      }

      else
      {
        v22 = *(v11 + 24);
      }

      v23 = *(v22 + 2 * v20);
      if (v23 == 39)
      {
        if ((v12 & 0x8000) != 0)
        {
          v24 = *(v11 + 12);
          if (a2 >= v24)
          {
            goto LABEL_8;
          }
        }

        else
        {
          if (a2 >= (v12 >> 5))
          {
            goto LABEL_8;
          }

          v24 = v12 >> 5;
        }

        if (v24 <= a2)
        {
          goto LABEL_8;
        }

        v25 = (v12 & 2) != 0 ? v11 + 10 : *(v11 + 24);
        if (*(v25 + 2 * a2) != 39)
        {
          goto LABEL_8;
        }

        a2 = (v20 + 2);
        LOWORD(v23) = 39;
      }
    }

    v38 = v23;
    icu::UnicodeString::doAppend(a3, &v38, 0, 1);
    v11 = *(this + 2);
    v12 = *(v11 + 8);
    v20 = a2;
  }

  v21 = *(v11 + 12);
  if (v20 != v21)
  {
    goto LABEL_36;
  }

LABEL_81:
  if (*a4 <= 0)
  {
    *a4 = U_INVALID_FORMAT_ERROR;
    *(this + 6) = "quoted literal text missing terminating apostrophe";
    v5 = v20;
    if (!*(this + 5))
    {
      return v5;
    }

LABEL_89:
    icu::CollationRuleParser::setErrorContext(this);
  }

  return v20;
}

BOOL icu::CollationRuleParser::isSyntaxChar(icu::CollationRuleParser *this)
{
  if ((this - 33) > 0x5D)
  {
    return 0;
  }

  if (this < 0x30 || (this - 58) < 0x27 && ((0x7E0000007FuLL >> (this - 58)) & 1) != 0)
  {
    return 1;
  }

  return this > 0x7A;
}

uint64_t icu::CollationRuleParser::readWords(icu::CollationRuleParser *this, int a2, icu::UnicodeString *a3)
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
  v6 = icu::CollationRuleParser::skipWhiteSpace(this, a2);
  while (1)
  {
    v7 = *(this + 2);
    v8 = *(v7 + 8);
    if (*(v7 + 8) < 0)
    {
      v9 = *(v7 + 12);
      if (v6 >= v9)
      {
        return 0;
      }
    }

    else
    {
      if (v6 >= (v8 >> 5))
      {
        return 0;
      }

      v9 = v8 >> 5;
    }

    if (v9 <= v6)
    {
      v11 = 0xFFFFLL;
      goto LABEL_22;
    }

    v10 = (v8 & 2) != 0 ? v7 + 10 : *(v7 + 24);
    v11 = *(v10 + 2 * v6);
    if ((v11 - 33) <= 0x5D)
    {
      break;
    }

LABEL_22:
    v6 = (v6 + 1);
    if (icu::PatternProps::isWhiteSpace(v11))
    {
      v20 = 32;
      icu::UnicodeString::doAppend(a3, &v20, 0, 1);
      v6 = icu::CollationRuleParser::skipWhiteSpace(this, v6);
    }

    else
    {
      v21 = v11;
      icu::UnicodeString::doAppend(a3, &v21, 0, 1);
    }
  }

  if (v11 < 0x30)
  {
LABEL_16:
    if (v11 != 45)
    {
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  v12 = (v11 - 58);
  if (v12 > 0x26)
  {
    goto LABEL_21;
  }

  if (v12 == 37)
  {
    goto LABEL_22;
  }

  if (((1 << (v11 - 58)) & 0x5E0000007FLL) == 0)
  {
LABEL_21:
    if (v11 < 0x7B)
    {
      goto LABEL_22;
    }

    goto LABEL_16;
  }

LABEL_26:
  v13 = *(a3 + 4);
  if (v13 >= 0x20)
  {
    v14 = v13;
    v15 = v13 >> 5;
    if (v14 < 0)
    {
      v15 = *(a3 + 3);
    }

    if (icu::UnicodeString::doEqualsSubstring(a3, v15 - 1, 1, " ", 0, 1))
    {
      v16 = *(a3 + 4);
      if (*(a3 + 4) < 0)
      {
        v17 = *(a3 + 3);
      }

      else
      {
        v17 = v16 >> 5;
      }

      v18 = v17 - 1;
      if ((v16 & 1) != 0 && v17 == 1)
      {
        icu::UnicodeString::unBogus(a3);
      }

      else if (v17 > v18)
      {
        if (v18 > 1023)
        {
          *(a3 + 4) = v16 | 0xFFE0;
          *(a3 + 3) = v18;
        }

        else
        {
          *(a3 + 4) = *(a3 + 4) & 0x1F | (32 * v18);
        }
      }
    }
  }

  return v6;
}

uint64_t sub_1952DDBC8(uint64_t a1, __int16 a2)
{
  v5 = a2;
  icu::UnicodeString::unBogus(a1);
  if (*(a1 + 8) < 0)
  {
    v3 = *(a1 + 12);
  }

  else
  {
    v3 = *(a1 + 8) >> 5;
  }

  return icu::UnicodeString::doReplace(a1, 0, v3, &v5, 0, 1);
}

void icu::CollationRuleParser::parseReordering(icu::CollationRuleParser *this, const icu::UnicodeString *a2, UErrorCode *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  if (*a3 > 0)
  {
    goto LABEL_45;
  }

  v5 = *(a2 + 4);
  v6 = v5;
  v7 = v5 >> 5;
  if (v6 < 0)
  {
    v7 = *(a2 + 3);
  }

  if (v7 == 7)
  {
    v8 = *(this + 4);
    v9 = *MEMORY[0x1E69E9840];

    icu::CollationSettings::resetReordering(v8);
    return;
  }

  *v25 = 0u;
  *v26 = 0u;
  icu::UVector32::UVector32(v25, a3);
  if (*a3 > 0)
  {
    goto LABEL_44;
  }

  memset(&v28[1], 0, 48);
  v28[0] = (&v28[1] + 5);
  LODWORD(v28[1]) = 40;
  v11 = 7;
  v29 = 0;
  while (1)
  {
    v12 = *(a2 + 4);
    v13 = v12;
    v14 = v12 >> 5;
    if (v13 >= 0)
    {
      v15 = v14;
    }

    else
    {
      v15 = *(a2 + 3);
    }

    if (v11 >= v15)
    {
      icu::CollationSettings::setReordering(*(this + 4), *(this + 3), v26[1], v25[2], a3);
      goto LABEL_42;
    }

    v16 = v11 + 1;
    if (v11 < -1)
    {
      v17 = 0;
      v18 = 0;
      if ((v13 & 0x80000000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    if (v13 < 0)
    {
      if (*(a2 + 3) >= v16)
      {
        v17 = v11 + 1;
      }

      else
      {
        v17 = *(a2 + 3);
      }

LABEL_24:
      v18 = v17;
      v14 = *(a2 + 3);
      goto LABEL_25;
    }

    v18 = v14 >= v16 ? v11 + 1 : v14;
LABEL_25:
    v11 = icu::UnicodeString::doIndexOf(a2, 0x20u, v18, v14 - v18);
    if (v11 < 0)
    {
      if (*(a2 + 4) < 0)
      {
        v11 = *(a2 + 3);
      }

      else
      {
        v11 = *(a2 + 4) >> 5;
      }
    }

    LODWORD(v29) = 0;
    *v28[0] = 0;
    icu::UnicodeString::tempSubString(a2, v16, v11 - v16, v27);
    icu::CharString::appendInvariantChars(v28, v27, a3);
    icu::UnicodeString::~UnicodeString(v19, v27);
    if (*a3 > 0)
    {
      goto LABEL_42;
    }

    ReorderCode = icu::CollationRuleParser::getReorderCode(v28[0], v20);
    if (ReorderCode < 0)
    {
      break;
    }

    v22 = ReorderCode;
    v23 = v25[2];
    if (v25[2] >= -1 && v25[3] > v25[2])
    {
      goto LABEL_35;
    }

    if (icu::UVector32::expandCapacity(v25, v25[2] + 1, a3))
    {
      v23 = v25[2];
LABEL_35:
      v26[1][v23] = v22;
      ++v25[2];
    }

    if (*a3 >= 1)
    {
      goto LABEL_42;
    }
  }

  if (*a3 <= 0)
  {
    *a3 = U_INVALID_FORMAT_ERROR;
    *(this + 6) = "unknown script or reorder code";
    if (*(this + 5))
    {
      icu::CollationRuleParser::setErrorContext(this);
    }
  }

LABEL_42:
  if (BYTE4(v28[1]))
  {
    free(v28[0]);
  }

LABEL_44:
  icu::UVector32::~UVector32(v25);
LABEL_45:
  v24 = *MEMORY[0x1E69E9840];
}

uint64_t icu::CollationRuleParser::getOnOffValue(icu::CollationRuleParser *this, const icu::UnicodeString *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v22 = L"on";
  icu::UnicodeString::UnicodeString(v23, 1, &v22);
  v3 = *(this + 4);
  if (v3)
  {
    v9 = v24;
    v10 = v24 & 1;
  }

  else
  {
    v4 = v3;
    v5 = v3 >> 5;
    if (v4 >= 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = *(this + 3);
    }

    if ((v24 & 0x8000u) == 0)
    {
      v7 = v24 >> 5;
    }

    else
    {
      v7 = v26;
    }

    if ((v24 & 1) != 0 || v6 != v7)
    {
      icu::UnicodeString::~UnicodeString(v24, v23);
      goto LABEL_18;
    }

    if ((v24 & 2) != 0)
    {
      v8 = v25;
    }

    else
    {
      v8 = v27;
    }

    v10 = icu::UnicodeString::doEquals(this, v8, v6);
  }

  icu::UnicodeString::~UnicodeString(v9, v23);
  if (v10)
  {
    result = 17;
    goto LABEL_35;
  }

LABEL_18:
  v21 = "o";
  icu::UnicodeString::UnicodeString(v23, 1, &v21);
  v12 = *(this + 4);
  if (v12)
  {
    v17 = v24;
    v13 = v24 & 1;
  }

  else
  {
    v13 = 0;
    v14 = v12;
    v15 = v12 >> 5;
    if (v14 >= 0)
    {
      v16 = v15;
    }

    else
    {
      v16 = *(this + 3);
    }

    v17 = v24;
    if ((v24 & 0x8000u) == 0)
    {
      v18 = v24 >> 5;
    }

    else
    {
      v18 = v26;
    }

    if ((v24 & 1) == 0 && v16 == v18)
    {
      if ((v24 & 2) != 0)
      {
        v19 = v25;
      }

      else
      {
        v19 = v27;
      }

      v13 = icu::UnicodeString::doEquals(this, v19, v16);
    }
  }

  icu::UnicodeString::~UnicodeString(v17, v23);
  if (v13)
  {
    result = 16;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

LABEL_35:
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t icu::CollationRuleParser::parseUnicodeSet(icu::CollationRuleParser *this, int a2, icu::UnicodeSet *a3, UErrorCode *a4)
{
  v7 = 0;
  v24 = *MEMORY[0x1E69E9840];
  v8 = *(this + 2);
  v9 = *(v8 + 8);
  v10 = a2;
  if ((v9 & 0x8000) != 0)
  {
    goto LABEL_4;
  }

LABEL_2:
  v11 = v9 >> 5;
  if (v9 >> 5 == v10)
  {
LABEL_18:
    if (*a4 >= 1)
    {
      goto LABEL_22;
    }

    *a4 = U_INVALID_FORMAT_ERROR;
    v15 = "unbalanced UnicodeSet pattern brackets";
    goto LABEL_20;
  }

  while (1)
  {
    if (v11 <= v10)
    {
      goto LABEL_11;
    }

    v12 = v8 + 10;
    if ((v9 & 2) == 0)
    {
      v12 = *(v8 + 24);
    }

    v13 = *(v12 + 2 * v10);
    if (v13 == 93)
    {
      break;
    }

    if (v13 == 91)
    {
      ++v7;
    }

LABEL_11:
    ++v10;
    if ((v9 & 0x8000) == 0)
    {
      goto LABEL_2;
    }

LABEL_4:
    LODWORD(v11) = *(v8 + 12);
    if (v10 == v11)
    {
      goto LABEL_18;
    }
  }

  if (--v7)
  {
    goto LABEL_11;
  }

  icu::UnicodeString::tempSubString(v8, a2, v10 - a2 + 1, v23);
  icu::UnicodeSet::applyPattern(a3, v23, a4);
  icu::UnicodeString::~UnicodeString(v14, v23);
  if (*a4 < 1)
  {
    v18 = icu::CollationRuleParser::skipWhiteSpace(this, v10 + 1);
    v10 = v18;
    v19 = *(this + 2);
    v20 = *(v19 + 8);
    if ((v20 & 0x8000) != 0)
    {
      v21 = *(v19 + 12);
      if (v18 != v21)
      {
        goto LABEL_27;
      }
    }

    else if (v18 != v20 >> 5)
    {
      v21 = v20 >> 5;
LABEL_27:
      if (v21 > v18)
      {
        v22 = (v20 & 2) != 0 ? v19 + 10 : *(v19 + 24);
        if (*(v22 + 2 * v18) == 93)
        {
          v10 = (v18 + 1);
          goto LABEL_22;
        }
      }
    }

    if (*a4 > 0)
    {
      goto LABEL_22;
    }

    *a4 = U_INVALID_FORMAT_ERROR;
    v15 = "missing option-terminating ']' after UnicodeSet pattern";
LABEL_20:
    *(this + 6) = v15;
    if (*(this + 5))
    {
      icu::CollationRuleParser::setErrorContext(this);
    }

    goto LABEL_22;
  }

  *a4 = U_INVALID_FORMAT_ERROR;
  *(this + 6) = "not a valid UnicodeSet pattern";
  if (*(this + 5))
  {
    icu::CollationRuleParser::setErrorContext(this);
  }

  ++v10;
LABEL_22:
  v16 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t icu::CollationRuleParser::getReorderCode(icu::CollationRuleParser *this, const char *a2)
{
  for (i = 0; i != 5; ++i)
  {
    if (!uprv_stricmp(this, off_1E740C218[i]))
    {
      return (i + 4096);
    }
  }

  result = u_getPropertyValueEnum(UCHAR_SCRIPT, this);
  if ((result & 0x80000000) != 0)
  {
    if (uprv_stricmp(this, "others"))
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 103;
    }
  }

  return result;
}

uint64_t sub_1952DE340(uint64_t result, uint64_t *a2, _DWORD *a3)
{
  if (*a3 <= 0)
  {
    v4 = result;
    *(result + 96) = *a3;
    v5 = a2[4];
    *result = a2;
    *(result + 8) = v5;
    result = utrie2_enum(*a2, 0, sub_1952DE3AC, result);
    *a3 = *(v4 + 96);
  }

  return result;
}

BOOL sub_1952DE3C0(uint64_t a1, icu::Collation *a2, int a3, uint64_t a4)
{
  IndirectCE32 = a4;
  if ((~a4 & 0xC0) != 0 || (IndirectCE32 = icu::CollationData::getIndirectCE32(*a1, a4), IndirectCE32 != 192))
  {
    v8 = IndirectCE32 & 0xF;
    if (a3 <= a2)
    {
      v9 = a2;
    }

    else
    {
      v9 = a3;
    }

    v10 = v9 + 1;
    do
    {
      v11 = *(a1 + 8);
      v12 = sub_1952C6CA0(v11, a2);
      FinalCE32 = icu::CollationData::getFinalCE32(v11, v12);
      if ((IndirectCE32 & 0xC0) == 0xC0 && (v8 > 4 || ((1 << v8) & 0x16) == 0) || (~FinalCE32 & 0xC0) == 0 && ((FinalCE32 & 0xF) <= 4 ? (v14 = ((1 << (FinalCE32 & 0xF)) & 0x16) == 0) : (v14 = 1), v14))
      {
        sub_1952DE4E8(a1, a2, IndirectCE32, FinalCE32);
      }

      else if (IndirectCE32 != FinalCE32)
      {
        icu::UnicodeSet::add(*(a1 + 16), a2);
      }

      a2 = (a2 + 1);
    }

    while (v10 != a2);
  }

  return *(a1 + 96) < 1;
}

void sub_1952DE4E8(uint64_t a1, icu::Collation *a2, unsigned int a3, unsigned int a4)
{
  v4 = a4;
  FinalCE32 = a3;
  if ((a3 & 0xCF) == 0xC8)
  {
    v8 = (*(*a1 + 24) + 2 * (a3 >> 13));
    FinalCE32 = icu::CollationData::getFinalCE32(*a1, v8[1] | (*v8 << 16));
    if ((v4 & 0xCF) == 0xC8)
    {
      v9 = *(a1 + 8);
      v10 = (*(v9 + 3) + 2 * (v4 >> 13));
      v4 = icu::CollationData::getFinalCE32(v9, v10[1] | (*v10 << 16));
      sub_1952DE8C0(a1, a2, (v8 + 2), (v10 + 2));
      goto LABEL_8;
    }

    v12 = *a1;
  }

  else
  {
    if ((a4 & 0xCF) != 0xC8)
    {
      goto LABEL_8;
    }

    v11 = *(a1 + 8);
    v8 = (*(v11 + 3) + 2 * (a4 >> 13));
    v4 = icu::CollationData::getFinalCE32(v11, v8[1] | (*v8 << 16));
    v12 = *(a1 + 8);
  }

  sub_1952DEB40(a1, v12, a2, (v8 + 2));
LABEL_8:
  if ((FinalCE32 & 0xCF) != 0xC9)
  {
    if ((v4 & 0xCF) != 0xC9)
    {
      goto LABEL_20;
    }

    v14 = *(a1 + 8);
    v13 = (*(v14 + 3) + 2 * (v4 >> 13));
    v4 = icu::CollationData::getFinalCE32(v14, v13[1] | (*v13 << 16));
    goto LABEL_17;
  }

  v13 = (*(*a1 + 24) + 2 * (FinalCE32 >> 13));
  if ((FinalCE32 & 0x100) != 0)
  {
    FinalCE32 = 1;
  }

  else
  {
    FinalCE32 = icu::CollationData::getFinalCE32(*a1, v13[1] | (*v13 << 16));
  }

  if ((v4 & 0xCF) != 0xC9)
  {
LABEL_17:
    sub_1952DEE88(a1, a2, (v13 + 2));
    goto LABEL_20;
  }

  v15 = *(a1 + 8);
  v16 = (*(v15 + 3) + 2 * (v4 >> 13));
  if ((v4 & 0x100) != 0)
  {
    v4 = 1;
  }

  else
  {
    v4 = icu::CollationData::getFinalCE32(v15, v16[1] | (*v16 << 16));
  }

  sub_1952DEC18(a1, a2, (v13 + 2), (v16 + 2));
LABEL_20:
  if ((~FinalCE32 & 0xC0) != 0)
  {
    v17 = -1;
  }

  else
  {
    v17 = FinalCE32 & 0xF;
  }

  if ((~v4 & 0xC0) != 0)
  {
    v18 = -1;
  }

  else
  {
    v18 = v4 & 0xF;
    if (v18 == 14)
    {
      if ((FinalCE32 & 0xCF) != 0xC1 || (FinalCE32 & 0xFFFFFF00) != icu::Collation::getThreeBytePrimaryForOffsetData(a2, *(*(*(a1 + 8) + 16) + 8 * (v4 >> 13))))
      {
        goto LABEL_49;
      }

      v18 = 14;
    }
  }

  if (v17 == v18)
  {
    switch(v17)
    {
      case 12:
        v31 = a2 - 44032;
        if (!icu::UnicodeSet::contains(*(a1 + 16), ((a2 - 44032) / 588 + 4352)) && !icu::UnicodeSet::contains(*(a1 + 16), v31 / 28 % 21 + 4449) && (!(v31 % 28) || !icu::UnicodeSet::contains(*(a1 + 16), v31 % 28 + 4519)))
        {
          return;
        }

        break;
      case 6:
        v25 = (FinalCE32 >> 8) & 0x1F;
        if (v25 == ((v4 >> 8) & 0x1F))
        {
          if (!v25)
          {
            return;
          }

          v26 = (*(*a1 + 16) + 8 * (FinalCE32 >> 13));
          v27 = (*(*(a1 + 8) + 16) + 8 * (v4 >> 13));
          while (1)
          {
            v29 = *v26++;
            v28 = v29;
            v30 = *v27++;
            if (v28 != v30)
            {
              break;
            }

            if (!--v25)
            {
              return;
            }
          }
        }

        break;
      case 5:
        v19 = (FinalCE32 >> 8) & 0x1F;
        if (v19 == ((v4 >> 8) & 0x1F))
        {
          if (!v19)
          {
            return;
          }

          v20 = (*(*a1 + 8) + 4 * (FinalCE32 >> 13));
          v21 = (*(*(a1 + 8) + 8) + 4 * (v4 >> 13));
          while (1)
          {
            v23 = *v20++;
            v22 = v23;
            v24 = *v21++;
            if (v22 != v24)
            {
              break;
            }

            if (!--v19)
            {
              return;
            }
          }
        }

        break;
      default:
        if (FinalCE32 == v4)
        {
          return;
        }

        break;
    }
  }

LABEL_49:

  sub_1952DEF54(a1, a2);
}

void sub_1952DE8C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v26 = 0;
  v25 = 0u;
  memset(v24, 0, sizeof(v24));
  v19 = a3;
  icu::UCharsTrie::Iterator::Iterator(v24, &v19, 0, a1 + 96);
  v23 = 0;
  v22 = 0u;
  memset(v21, 0, sizeof(v21));
  v18 = a4;
  icu::UCharsTrie::Iterator::Iterator(v21, &v18, 0, a1 + 96);
  memset(v20, 0, sizeof(v20));
  icu::UnicodeString::UnicodeString(v20, 0xFFFF);
  v8 = 0;
  v9 = 0;
  while (1)
  {
    if (v9)
    {
      if (v8)
      {
        goto LABEL_11;
      }
    }

    else
    {
      if (icu::UCharsTrie::Iterator::next(v7, v24, (a1 + 96)))
      {
        v9 = &v24[2] + 8;
      }

      else
      {
        v9 = v20;
      }

      if (v8)
      {
        goto LABEL_11;
      }
    }

    v8 = &v21[2] + 8;
    if (icu::UCharsTrie::Iterator::next(v7, v21, (a1 + 96)))
    {
      goto LABEL_13;
    }

    v8 = v20;
LABEL_11:
    if (v9 == v20 && v8 == v20)
    {
      break;
    }

LABEL_13:
    v10 = *(v9 + 4);
    if (*(v9 + 4) < 0)
    {
      v11 = *(v9 + 3);
    }

    else
    {
      v11 = v10 >> 5;
    }

    v12 = *(v8 + 4);
    if (v12)
    {
      if (v10)
      {
        goto LABEL_27;
      }

LABEL_25:
      sub_1952DF064(a1, *(a1 + 8), v8, a2, HIDWORD(v22));
      v8 = 0;
    }

    else
    {
      if ((v12 & 0x8000u) == 0)
      {
        v13 = v12 >> 5;
      }

      else
      {
        v13 = *(v8 + 3);
      }

      if ((v12 & 2) != 0)
      {
        v14 = (v8 + 10);
      }

      else
      {
        v14 = *(v8 + 3);
      }

      v15 = icu::UnicodeString::doCompare(v9, 0, v11, v14, v13 & (v13 >> 31), v13 & ~(v13 >> 31));
      if (v15 < 0)
      {
        sub_1952DF064(a1, *a1, v9, a2, HIDWORD(v25));
        v9 = 0;
      }

      else
      {
        if (v15)
        {
          goto LABEL_25;
        }

LABEL_27:
        sub_1952DF154(a1, v9);
        sub_1952DE4E8(a1, a2, HIDWORD(v25), HIDWORD(v22));
        v8 = 0;
        v9 = 0;
        v16 = *(a1 + 32);
        if (v16)
        {
          v7 = 2;
        }

        else
        {
          v7 = v16 & 0x1E;
        }

        *(a1 + 32) = v7;
      }
    }
  }

  icu::UnicodeString::~UnicodeString((v8 == v20), v20);
  icu::UCharsTrie::Iterator::~Iterator(v21);
  icu::UCharsTrie::Iterator::~Iterator(v24);
  v17 = *MEMORY[0x1E69E9840];
}

void sub_1952DEB40(uint64_t a1, icu::CollationData *a2, unsigned int a3, uint64_t a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v12 = 0u;
  memset(v11, 0, sizeof(v11));
  v10 = a4;
  icu::UCharsTrie::Iterator::Iterator(v11, &v10, 0, a1 + 96);
  v9 = v10;
  v7 = &v9;
  while (icu::UCharsTrie::Iterator::next(v7, v11, (a1 + 96)))
  {
    sub_1952DF064(a1, a2, &v11[2] + 1, a3, HIDWORD(v12));
  }

  icu::UCharsTrie::Iterator::~Iterator(v11);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1952DEC18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v26 = 0;
  v25 = 0u;
  memset(v24, 0, sizeof(v24));
  v18 = a3;
  icu::UCharsTrie::Iterator::Iterator(v24, &v18, 0, a1 + 96);
  v23 = 0;
  v22 = 0u;
  memset(v21, 0, sizeof(v21));
  v17 = a4;
  icu::UCharsTrie::Iterator::Iterator(v21, &v17, 0, a1 + 96);
  memset(v20, 0, sizeof(v20));
  icu::UnicodeString::UnicodeString(v20, 0xFFFF);
  v19 = -1;
  icu::UnicodeString::doAppend(v20, &v19, 0, 1);
  v8 = 0;
  v9 = 0;
  while (1)
  {
    if (v9)
    {
      if (v8)
      {
        goto LABEL_11;
      }
    }

    else
    {
      if (icu::UCharsTrie::Iterator::next(v7, v24, (a1 + 96)))
      {
        v9 = &v24[40];
      }

      else
      {
        v9 = v20;
      }

      if (v8)
      {
        goto LABEL_11;
      }
    }

    v8 = &v21[2] + 8;
    if (icu::UCharsTrie::Iterator::next(v7, v21, (a1 + 96)))
    {
      goto LABEL_13;
    }

    v8 = v20;
LABEL_11:
    if (v9 == v20 && v8 == v20)
    {
      break;
    }

LABEL_13:
    v10 = *(v9 + 4);
    if (*(v9 + 4) < 0)
    {
      v11 = *(v9 + 3);
    }

    else
    {
      v11 = v10 >> 5;
    }

    v12 = *(v8 + 4);
    if (v12)
    {
      if (v10)
      {
        goto LABEL_27;
      }

LABEL_25:
      sub_1952DF1A8(a1, a2, v8);
      v8 = 0;
    }

    else
    {
      if ((v12 & 0x8000u) == 0)
      {
        v13 = v12 >> 5;
      }

      else
      {
        v13 = *(v8 + 3);
      }

      if ((v12 & 2) != 0)
      {
        v14 = (v8 + 10);
      }

      else
      {
        v14 = *(v8 + 3);
      }

      v15 = icu::UnicodeString::doCompare(v9, 0, v11, v14, v13 & (v13 >> 31), v13 & ~(v13 >> 31));
      if (v15 < 0)
      {
        sub_1952DF1A8(a1, a2, v9);
        v9 = 0;
      }

      else
      {
        if (v15)
        {
          goto LABEL_25;
        }

LABEL_27:
        *(a1 + 88) = v9;
        sub_1952DE4E8(a1, a2, HIDWORD(v25), HIDWORD(v22));
        v8 = 0;
        v9 = 0;
        *(a1 + 88) = 0;
      }
    }
  }

  icu::UnicodeString::~UnicodeString((v8 == v20), v20);
  icu::UCharsTrie::Iterator::~Iterator(v21);
  icu::UCharsTrie::Iterator::~Iterator(v24);
  v16 = *MEMORY[0x1E69E9840];
}

void sub_1952DEE88(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v8 = a3;
  icu::UCharsTrie::Iterator::Iterator(v9, &v8, 0, a1 + 96);
  v7 = v8;
  v5 = &v7;
  while (icu::UCharsTrie::Iterator::next(v5, v9, (a1 + 96)))
  {
    sub_1952DF1A8(a1, a2, &v9[2] + 8);
  }

  icu::UCharsTrie::Iterator::~Iterator(v9);
  v6 = *MEMORY[0x1E69E9840];
}

icu::UnicodeSet *sub_1952DEF54(uint64_t a1, unsigned int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32) > 0x1Fu || *(a1 + 88))
  {
    memset(v14, 0, sizeof(v14));
    icu::UnicodeString::UnicodeString(v14, (a1 + 24));
    icu::UnicodeString::append(v14, a2);
    v4 = *(a1 + 88);
    if (v4)
    {
      v5 = *(v4 + 8);
      v6 = v5;
      v7 = v5 >> 5;
      if (v6 >= 0)
      {
        v8 = v7;
      }

      else
      {
        v8 = *(v4 + 12);
      }

      icu::UnicodeString::doAppend(v14, v4, 0, v8);
    }

    icu::UnicodeSet::add(*(a1 + 16), v14);
    result = icu::UnicodeString::~UnicodeString(v9, v14);
    v11 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v12 = *(a1 + 16);
    v13 = *MEMORY[0x1E69E9840];

    return icu::UnicodeSet::add(v12, a2);
  }

  return result;
}

void *sub_1952DF064(uint64_t a1, icu::CollationData *a2, UChar **a3, unsigned int a4, uint64_t a5)
{
  v17 = *MEMORY[0x1E69E9840];
  sub_1952DF154(a1, a3);
  FinalCE32 = icu::CollationData::getFinalCE32(a2, a5);
  if ((FinalCE32 & 0xCF) == 0xC9)
  {
    sub_1952DEE88(a1, a4, *(a2 + 3) + 2 * (FinalCE32 >> 13) + 4);
  }

  v10 = *(a1 + 16);
  icu::UnicodeString::UnicodeString(v16, (a1 + 24));
  v11 = icu::UnicodeString::append(v16, a4);
  icu::UnicodeSet::add(v10, v11);
  result = icu::UnicodeString::~UnicodeString(v12, v16);
  if (*(a1 + 32))
  {
    v14 = 2;
  }

  else
  {
    v14 = *(a1 + 32) & 0x1E;
  }

  *(a1 + 32) = v14;
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

icu::UnicodeString *sub_1952DF154(uint64_t a1, UChar **a2)
{
  icu::UnicodeString::operator=((a1 + 24), a2);
  v3 = *(a1 + 32);
  if ((v3 & 0x8000) != 0)
  {
    v4 = *(a1 + 36);
  }

  else
  {
    v4 = v3 >> 5;
  }

  return icu::UnicodeString::doReverse((a1 + 24), 0, v4);
}

void *sub_1952DF1A8(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 16);
  icu::UnicodeString::UnicodeString(v15, (a1 + 24));
  v6 = icu::UnicodeString::append(v15, a2);
  v7 = *(a3 + 8);
  v8 = v7;
  v9 = v7 >> 5;
  if (v8 >= 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = *(a3 + 12);
  }

  v11 = icu::UnicodeString::doAppend(v6, a3, 0, v10);
  icu::UnicodeSet::add(v5, v11);
  result = icu::UnicodeString::~UnicodeString(v12, v15);
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1952DF260(uint64_t result, uint64_t *a2, int *a3)
{
  if (*a3 <= 0)
  {
    v5 = result;
    *(result + 760) = *a3;
    if (a2[4])
    {
      *(result + 33) = -1;
    }

    *result = a2;
    result = utrie2_enum(*a2, 0, sub_1952DF330, result);
    v6 = *(v5 + 760);
    if (a2[4])
    {
      if (v6 <= 0)
      {
        icu::UnicodeSet::freeze((v5 + 40));
        *(v5 + 33) = 1;
        v7 = a2[4];
        *v5 = v7;
        result = utrie2_enum(*v7, 0, sub_1952DF330, v5);
        v6 = *(v5 + 760);
      }
    }

    *a3 = v6;
  }

  return result;
}

BOOL sub_1952DF330(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (!*(a1 + 33))
  {
    goto LABEL_14;
  }

  if (*(a1 + 33) < 0)
  {
    if (a4 == 192)
    {
      return 1;
    }

    icu::UnicodeSet::add((a1 + 40), a2, a3);
  }

  else
  {
    v8 = (a1 + 40);
    if (a2 == a3)
    {
      if (!icu::UnicodeSet::contains(v8, a2))
      {
        goto LABEL_14;
      }

      return 1;
    }

    if (!icu::UnicodeSet::containsNone(v8, a2, a3))
    {
      v10 = icu::UnicodeSet::set((a1 + 240), a2, a3);
      icu::UnicodeSet::removeAll(v10, (a1 + 40));
      RangeCount = icu::UnicodeSet::getRangeCount((a1 + 240));
      if (RangeCount >= 1)
      {
        v12 = RangeCount;
        for (i = 0; i != v12; ++i)
        {
          RangeStart = icu::UnicodeSet::getRangeStart((a1 + 240), i);
          RangeEnd = icu::UnicodeSet::getRangeEnd((a1 + 240), i);
          sub_1952DF4E0(a1, RangeStart, RangeEnd, a4);
        }
      }

      return *(a1 + 760) < 1;
    }
  }

LABEL_14:
  sub_1952DF4E0(a1, a2, a3, a4);
  return *(a1 + 760) < 1;
}

void sub_1952DF450(uint64_t a1, uint64_t *a2, uint64_t a3, _DWORD *a4)
{
  if (*a4 <= 0)
  {
    v6 = a2;
    *(a1 + 760) = *a4;
    v8 = sub_1952C6CA0(a2, a3);
    if (v8 == 192)
    {
      v6 = v6[4];
      v8 = sub_1952C6CA0(v6, a3);
    }

    *a1 = v6;
    sub_1952DF4E0(a1, a3, a3, v8);
    *a4 = *(a1 + 760);
  }
}

void sub_1952DF4E0(void **a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if ((~a4 & 0xC0) != 0)
  {
LABEL_7:
    v8 = a1[3];
    if (v8)
    {
      v9 = *(*v8 + 16);
LABEL_9:

      v9();
    }
  }

  else
  {
    v5 = a3;
    v6 = a2;
    while (2)
    {
      switch(a4 & 0xF)
      {
        case 1u:
          v10 = a1[3];
          if (v10)
          {
            goto LABEL_32;
          }

          return;
        case 2u:
          v10 = a1[3];
          if (v10)
          {
LABEL_32:
            v9 = *(*v10 + 16);
            goto LABEL_9;
          }

          return;
        case 3u:
        case 7u:
        case 0xDu:
          if (*(a1 + 190) <= 0)
          {
            *(a1 + 190) = 5;
          }

          return;
        case 4u:
          v23 = a1[3];
          if (!v23)
          {
            goto LABEL_38;
          }

          a1[64] = ((a4 >> 8) & 0xFF00 | (((a4 & 0xFF000000) >> 24) << 56) | 0x5000000);
          a1[65] = ((BYTE1(a4) << 24) | 0x500u);
          v20 = *(*v23 + 24);
          goto LABEL_37;
        case 5u:
          v11 = a1[3];
          if (!v11)
          {
            goto LABEL_38;
          }

          if (((a4 >> 8) & 0x1F) != 0)
          {
            v12 = ((*a1)[1] + 4 * (a4 >> 13));
            v13 = (a1 + 64);
            v14 = (a4 >> 8) & 0x1F;
            do
            {
              v16 = *v12++;
              v15 = v16;
              v17 = v16;
              v18 = v16 & 0xFFFFFF00;
              if ((v16 & 0xF) == 1)
              {
                v18 = (v18 << 32) | 0x5000500;
              }

              v19 = (v15 << 16) & 0xFF000000 | (((v15 & 0xFFFF0000) >> 16) << 48) | (v17 << 8);
              if (v17 > 0xBF)
              {
                v19 = v18;
              }

              *v13++ = v19;
              --v14;
            }

            while (v14);
          }

          v20 = *(*v11 + 24);
          goto LABEL_37;
        case 6u:
          v21 = a1[3];
          if (!v21)
          {
            goto LABEL_38;
          }

          v22 = (*a1)[2] + 8 * (a4 >> 13);
          v20 = *(*v21 + 24);
LABEL_37:
          v20();
LABEL_38:
          if (*(a1 + 224) <= 0x1Fu)
          {

            sub_1952DF9F4(a1, v6, v5);
          }

          return;
        case 8u:

          sub_1952DFA20(a1, a2, a3, a4);
          return;
        case 9u:

          sub_1952DFB6C(a1, a2, a3, a4);
          return;
        case 0xAu:
          v7 = ((*a1)[1] + 4 * (a4 >> 13));
          goto LABEL_6;
        case 0xBu:
          v7 = (*a1)[1];
LABEL_6:
          a4 = *v7;
          if ((~*v7 & 0xC0) != 0)
          {
            goto LABEL_7;
          }

          continue;
        case 0xCu:
          if (!a1[3])
          {
            goto LABEL_48;
          }

          v33 = 0u;
          v34 = 0u;
          memset(v32, 0, sizeof(v32));
          v31 = 0u;
          v24 = *a1;
          v30[1] = **a1;
          v30[2] = v24;
          *(&v31 + 1) = v32 + 8;
          LODWORD(v32[0]) = 40;
          DWORD2(v33) = 0;
          DWORD2(v34) = -1;
          v30[0] = &unk_1F09444F0;
          v36 = 0;
          v37 = 0;
          v35 = 0;
          if (a2 > a3)
          {
            goto LABEL_47;
          }

          v25 = (a1 + 95);
          v26 = a3 + 1;
          v27 = a2;
          break;
        default:
          return;
      }

      break;
    }

    do
    {
      v29 = v27;
      icu::CollationIterator::reset(v30);
      v35 = &v29;
      v36 = &v29;
      v37 = v30;
      CEs = icu::CollationIterator::fetchCEs(v30, a1 + 190);
      if (*v25 > 0)
      {
        icu::UTF16CollationIterator::~UTF16CollationIterator(v30);
        return;
      }

      (*(*a1[3] + 24))(a1[3], *(&v31 + 1), (CEs - 1));
      ++v27;
    }

    while (v26 != v27);
LABEL_47:
    icu::UTF16CollationIterator::~UTF16CollationIterator(v30);
LABEL_48:
    if (*(a1 + 224) <= 0x1Fu)
    {
      sub_1952DF9F4(a1, v6, v5);
    }
  }
}

icu::UnicodeSet *sub_1952DF9F4(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (*(a1 + 448) > 0x1Fu || *(a1 + 504))
  {
    return sub_1952DFD14(a1, a2, a3, *(a1 + 16));
  }

  result = *(a1 + 16);
  if (result)
  {
    return icu::UnicodeSet::add(result, a2, a3);
  }

  return result;
}

void sub_1952DFA20(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v7 = (*(*a1 + 24) + 2 * (a4 >> 13));
  v8 = v7[1] | (*v7 << 16);
  (sub_1952DF4E0)();
  if (*(a1 + 32))
  {
    v14 = 0;
    v13 = 0u;
    memset(v12, 0, sizeof(v12));
    v11 = v7 + 2;
    icu::UCharsTrie::Iterator::Iterator(v12, &v11, 0, a1 + 760);
    while (icu::UCharsTrie::Iterator::next(v12, (a1 + 760)))
    {
      sub_1952DFCC0(a1, &v12[2] + 1);
      sub_1952DFD14(a1, a2, a3, *(a1 + 8));
      sub_1952DFD14(a1, a2, a3, *(a1 + 16));
      sub_1952DF4E0(a1, a2, a3, HIDWORD(v13));
    }

    if (*(a1 + 448))
    {
      v9 = 2;
    }

    else
    {
      v9 = *(a1 + 448) & 0x1E;
    }

    *(a1 + 448) = v9;
    icu::UCharsTrie::Iterator::~Iterator(v12);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1952DFB6C(void *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v7 = (*(*a1 + 24) + 2 * (a4 >> 13));
  if ((a4 & 0x100) == 0)
  {
    sub_1952DF4E0(a1, a2, a3, v7[1] | (*v7 << 16));
  }

  v14 = 0;
  v13 = 0u;
  memset(v12, 0, sizeof(v12));
  v11 = (v7 + 2);
  icu::UCharsTrie::Iterator::Iterator(v12, &v11, 0, a1 + 95);
  v10 = v11;
  if (icu::UCharsTrie::Iterator::next(&v10, v12, a1 + 190))
  {
    do
    {
      a1[63] = &v12[2] + 8;
      sub_1952DFD14(a1, a2, a3, a1[1]);
      if (*(a1 + 224) >= 0x20u)
      {
        sub_1952DFD14(a1, a2, a3, a1[2]);
      }

      sub_1952DF4E0(a1, a2, a3, HIDWORD(v13));
    }

    while (icu::UCharsTrie::Iterator::next(v8, v12, a1 + 190));
  }

  a1[63] = 0;
  icu::UCharsTrie::Iterator::~Iterator(v12);
  v9 = *MEMORY[0x1E69E9840];
}

icu::UnicodeString *sub_1952DFCC0(uint64_t a1, UChar **a2)
{
  icu::UnicodeString::operator=((a1 + 440), a2);
  v3 = *(a1 + 448);
  if ((v3 & 0x8000) != 0)
  {
    v4 = *(a1 + 452);
  }

  else
  {
    v4 = v3 >> 5;
  }

  return icu::UnicodeString::doReverse((a1 + 440), 0, v4);
}

UChar **sub_1952DFD14(UChar **result, signed int a2, signed int a3, icu::UnicodeSet *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v7 = result;
    memset(v19, 0, sizeof(v19));
    icu::UnicodeString::UnicodeString(v19, result + 55);
    if (a3 <= a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = a3;
    }

    v9 = v8 + 1;
    do
    {
      icu::UnicodeString::append(v19, a2);
      v10 = v7[63];
      if (v10)
      {
        v11 = v10[4];
        v12 = v11;
        v13 = v11 >> 5;
        if (v12 >= 0)
        {
          v14 = v13;
        }

        else
        {
          v14 = *(v10 + 3);
        }

        icu::UnicodeString::doAppend(v19, v10, 0, v14);
      }

      icu::UnicodeSet::add(a4, v19);
      v15 = *(v7 + 224);
      if ((v15 & 0x8000) != 0)
      {
        v16 = *(v7 + 113);
      }

      else
      {
        v16 = (v15 >> 5);
      }

      if (v16 || (BYTE8(v19[0]) & 1) == 0)
      {
        if ((SWORD4(v19[0]) & 0x8000u) == 0)
        {
          v17 = WORD4(v19[0]) >> 5;
        }

        else
        {
          v17 = HIDWORD(v19[0]);
        }

        if (v17 > v16)
        {
          if (v16 > 1023)
          {
            WORD4(v19[0]) = BYTE8(v19[0]) | 0xFFE0;
            HIDWORD(v19[0]) = v16;
          }

          else
          {
            WORD4(v19[0]) = BYTE8(v19[0]) & 0x1F | (32 * v16);
          }
        }
      }

      else
      {
        icu::UnicodeString::unBogus(v19);
      }

      ++a2;
    }

    while (v9 != a2);
    result = icu::UnicodeString::~UnicodeString(v16, v19);
  }

  v18 = *MEMORY[0x1E69E9840];
  return result;
}

icu::CollationSettings *icu::CollationSettings::CollationSettings(icu::CollationSettings *this, const icu::CollationSettings *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F09385C0;
  *(this + 3) = *(a2 + 3);
  *(this + 4) = 0;
  *(this + 10) = *(a2 + 10);
  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 20) = *(a2 + 20);
  v5 = U_ZERO_ERROR;
  icu::CollationSettings::copyReorderingFrom(this, a2, &v5);
  if ((*(this + 20) & 0x80000000) == 0)
  {
    memcpy(this + 84, a2 + 84, 0x300uLL);
  }

  return this;
}

_DWORD *icu::CollationSettings::copyReorderingFrom(_DWORD *this, const icu::CollationSettings *a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    v3 = *(a2 + 4);
    if (v3)
    {
      this[10] = *(a2 + 10);
      if (*(a2 + 19))
      {
        return icu::CollationSettings::setReorderArrays(this, *(a2 + 8), *(a2 + 18), *(a2 + 6), *(a2 + 14), v3, a3);
      }

      else
      {
        *(this + 4) = v3;
        *(this + 6) = *(a2 + 6);
        this[14] = *(a2 + 14);
        *(this + 8) = *(a2 + 8);
        this[18] = *(a2 + 18);
      }
    }

    else
    {
      *(this + 4) = 0;
      this[10] = 0;
      this[14] = 0;
      this[18] = 0;
    }
  }

  return this;
}

void icu::CollationSettings::~CollationSettings(void **this)
{
  *this = &unk_1F09385C0;
  if (*(this + 19))
  {
    free(this[8]);
  }

  icu::SharedObject::~SharedObject(this);
}

{
  icu::CollationSettings::~CollationSettings(this);

  JUMPOUT(0x19A8B2600);
}

BOOL icu::CollationSettings::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if (v2 != *(a2 + 24) || (v2 & 0xC) != 0 && *(a1 + 28) != *(a2 + 28))
  {
    return 0;
  }

  v3 = *(a1 + 72);
  if (v3 != *(a2 + 72))
  {
    return 0;
  }

  if (v3 < 1)
  {
    return 1;
  }

  v4 = *(a1 + 64);
  v5 = *(a2 + 64);
  v6 = v3 - 1;
  do
  {
    v8 = *v4++;
    v7 = v8;
    v9 = *v5++;
    result = v7 == v9;
  }

  while (v7 == v9 && v6-- != 0);
  return result;
}

uint64_t icu::CollationSettings::hashCode(icu::CollationSettings *this)
{
  v2 = *(this + 6);
  v3 = v2 << 8;
  if ((v2 & 0xC) != 0)
  {
    v3 ^= *(this + 7);
  }

  v4 = *(this + 18);
  result = v4 ^ v3;
  if (v4 >= 1)
  {
    v6 = 0;
    v7 = *(this + 8);
    do
    {
      result = (*(v7 + 4 * v6) << v6) ^ result;
      ++v6;
    }

    while (v4 != v6);
  }

  return result;
}

uint64_t icu::CollationSettings::resetReordering(uint64_t this)
{
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 56) = 0;
  *(this + 72) = 0;
  return this;
}

void icu::CollationSettings::aliasReordering(void **this, const icu::CollationData *a2, const int *a3, int a4, const unsigned int *a5, int a6, const unsigned __int8 *a7, UErrorCode *a8)
{
  if (*a8 > 0)
  {
    return;
  }

  if (!a7)
  {
    goto LABEL_13;
  }

  if (a6)
  {
    if (a6 < 2 || *a5 || !LOWORD(a5[a6 - 1]))
    {
LABEL_13:

      icu::CollationSettings::setReordering(this, a2, a3, a4, a8);
      return;
    }
  }

  else
  {
    if (!a7[1])
    {
      goto LABEL_13;
    }

    v14 = 0;
    while (v14 != 254)
    {
      if (!a7[v14++ + 2])
      {
        if (v14 >= 0xFF)
        {
          break;
        }

        goto LABEL_13;
      }
    }
  }

  if (*(this + 19))
  {
    free(this[8]);
    *(this + 19) = 0;
  }

  this[4] = a7;
  this[8] = a3;
  *(this + 18) = a4;
  if (a6 < 1)
  {
    LODWORD(v16) = 0;
  }

  else
  {
    v16 = 0;
    while (!(BYTE2(a5[v16]) << 16))
    {
      if (a6 == ++v16)
      {
        goto LABEL_25;
      }
    }
  }

  if (a6 == v16)
  {
LABEL_25:
    *(this + 10) = 0;
    this[6] = 0;
    *(this + 14) = 0;
  }

  else
  {
    *(this + 10) = HIWORD(a5[a6 - 1]) << 16;
    this[6] = &a5[v16];
    *(this + 14) = a6 - v16;
  }
}

BOOL icu::CollationSettings::reorderTableHasSplitBytes(icu::CollationSettings *this, const unsigned __int8 *a2)
{
  if (!*(this + 1))
  {
    return 1;
  }

  v2 = this + 2;
  v3 = -1;
  do
  {
    v4 = v3;
    if (v3 == -255)
    {
      break;
    }

    v5 = *v2++;
    --v3;
  }

  while (v5);
  return -v4 < 0xFF;
}

void icu::CollationSettings::setReordering(icu::CollationSettings *this, const icu::CollationData *a2, const int *a3, int a4, UErrorCode *a5)
{
  v50 = *MEMORY[0x1E69E9840];
  if (*a5 <= 0)
  {
    if (!a4 || a4 == 1 && *a3 == 103)
    {
      *(this + 4) = 0;
      *(this + 10) = 0;
      *(this + 14) = 0;
      *(this + 18) = 0;
      goto LABEL_53;
    }

    v32 = 0u;
    v33 = 0u;
    icu::UVector32::UVector32(&v32, a5);
    icu::CollationData::makeReorderRanges(a2, a3, a4, &v32, a5);
    if (*a5 <= 0)
    {
      v10 = SDWORD2(v32);
      if (DWORD2(v32))
      {
        v11 = *(&v33 + 1);
        *(this + 10) = *(*(&v33 + 1) + 4 * SDWORD2(v32) - 2) << 16;
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        *v34 = 0u;
        v35 = 0u;
        if (v10 < 1)
        {
          LODWORD(v13) = 0;
          v14 = -1;
        }

        else
        {
          v12 = 0;
          LODWORD(v13) = 0;
          v14 = -1;
          do
          {
            v15 = *(v11 + 4 * v12);
            v16 = v15 >> 24;
            if (v13 < SHIBYTE(*(v11 + 4 * v12)))
            {
              v17 = 0;
              v18 = v16 - v13;
              v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
              v20 = vdupq_n_s64(v18 - 1);
              v21 = v13 + v15;
              v22 = &v34[v13];
              do
              {
                v23 = vdupq_n_s64(v17);
                v24 = vmovn_s64(vcgeq_u64(v20, vorrq_s8(v23, xmmword_19544D5F0)));
                if (vuzp1_s8(vuzp1_s16(v24, 14), 14).u8[0])
                {
                  v22[v17] = v21 + v17;
                }

                if (vuzp1_s8(vuzp1_s16(v24, 14), 14).i8[1])
                {
                  v22[v17 + 1] = v21 + v17 + 1;
                }

                if (vuzp1_s8(vuzp1_s16(14, vmovn_s64(vcgeq_u64(v20, vorrq_s8(v23, xmmword_19544D5E0)))), 14).i8[2])
                {
                  v22[v17 + 2] = v21 + v17 + 2;
                  v22[v17 + 3] = v21 + v17 + 3;
                }

                v25 = vmovn_s64(vcgeq_u64(v20, vorrq_s8(v23, xmmword_19547BF90)));
                if (vuzp1_s8(14, vuzp1_s16(v25, 14)).i32[1])
                {
                  v22[v17 + 4] = v21 + v17 + 4;
                }

                if (vuzp1_s8(14, vuzp1_s16(v25, 14)).i8[5])
                {
                  v22[v17 + 5] = v21 + v17 + 5;
                }

                if (vuzp1_s8(14, vuzp1_s16(14, vmovn_s64(vcgeq_u64(v20, vorrq_s8(v23, xmmword_19547BF80))))).i8[6])
                {
                  v22[v17 + 6] = v21 + v17 + 6;
                  v22[v17 + 7] = v21 + v17 + 7;
                }

                v26 = vmovn_s64(vcgeq_u64(v20, vorrq_s8(v23, xmmword_195489660)));
                if (vuzp1_s8(vuzp1_s16(v26, 14), 14).u8[0])
                {
                  v22[v17 + 8] = v21 + v17 + 8;
                }

                if (vuzp1_s8(vuzp1_s16(v26, 14), 14).i8[1])
                {
                  v22[v17 + 9] = v21 + v17 + 9;
                }

                if (vuzp1_s8(vuzp1_s16(14, vmovn_s64(vcgeq_u64(v20, vorrq_s8(v23, xmmword_195489650)))), 14).i8[2])
                {
                  v22[v17 + 10] = v21 + v17 + 10;
                  v22[v17 + 11] = v21 + v17 + 11;
                }

                v27 = vmovn_s64(vcgeq_u64(v20, vorrq_s8(v23, xmmword_195489640)));
                if (vuzp1_s8(14, vuzp1_s16(v27, 14)).i32[1])
                {
                  v22[v17 + 12] = v21 + v17 + 12;
                }

                if (vuzp1_s8(14, vuzp1_s16(v27, 14)).i8[5])
                {
                  v22[v17 + 13] = v21 + v17 + 13;
                }

                if (vuzp1_s8(14, vuzp1_s16(14, vmovn_s64(vcgeq_u64(v20, vorrq_s8(v23, xmmword_195489630))))).i8[6])
                {
                  v22[v17 + 14] = v21 + v17 + 14;
                  v22[v17 + 15] = v21 + v17 + 15;
                }

                v17 += 16;
              }

              while (v19 != v17);
              v13 = v15 >> 24;
            }

            if ((v15 & 0xFF0000) != 0)
            {
              v34[v16] = 0;
              LODWORD(v13) = v16 + 1;
              if (v14 < 0)
              {
                v14 = v12;
              }
            }

            ++v12;
          }

          while (v12 != v10);
          if (v13 > 255)
          {
            goto LABEL_48;
          }
        }

        v28 = v13;
        do
        {
          v34[v28] = v28;
          ++v28;
        }

        while (v28 != 256);
LABEL_48:
        v29 = v10 - v14;
        if (v14 >= 0)
        {
          v30 = v29;
        }

        else
        {
          v30 = 0;
        }

        icu::CollationSettings::setReorderArrays(this, a3, a4, (v11 + 4 * (v14 & ~(v14 >> 31))), v30, v34, a5);
        goto LABEL_52;
      }

      *(this + 4) = 0;
      *(this + 10) = 0;
      *(this + 14) = 0;
      *(this + 18) = 0;
    }

LABEL_52:
    icu::UVector32::~UVector32(&v32);
  }

LABEL_53:
  v31 = *MEMORY[0x1E69E9840];
}

_DWORD *icu::CollationSettings::setReorderArrays(_DWORD *this, const int *a2, int a3, const unsigned int *a4, int a5, const unsigned __int8 *a6, UErrorCode *a7)
{
  if (*a7 <= 0)
  {
    v12 = this;
    v13 = this[19];
    if (a5 + a3 <= v13)
    {
      v15 = *(this + 8);
LABEL_8:
      v16 = &v15[4 * v13];
      v17 = *a6;
      v18 = *(a6 + 1);
      v19 = *(a6 + 3);
      *(v16 + 2) = *(a6 + 2);
      *(v16 + 3) = v19;
      *v16 = v17;
      *(v16 + 1) = v18;
      v20 = *(a6 + 4);
      v21 = *(a6 + 5);
      v22 = *(a6 + 7);
      *(v16 + 6) = *(a6 + 6);
      *(v16 + 7) = v22;
      *(v16 + 4) = v20;
      *(v16 + 5) = v21;
      v23 = *(a6 + 8);
      v24 = *(a6 + 9);
      v25 = *(a6 + 11);
      *(v16 + 10) = *(a6 + 10);
      *(v16 + 11) = v25;
      *(v16 + 8) = v23;
      *(v16 + 9) = v24;
      v26 = *(a6 + 12);
      v27 = *(a6 + 13);
      v28 = *(a6 + 15);
      *(v16 + 14) = *(a6 + 14);
      *(v16 + 15) = v28;
      *(v16 + 12) = v26;
      *(v16 + 13) = v27;
      memcpy(v15, a2, 4 * a3);
      this = memcpy(&v15[4 * a3], a4, 4 * a5);
      *(v12 + 32) = *(v12 + 64) + 4 * *(v12 + 76);
      *(v12 + 72) = a3;
      *(v12 + 48) = &v15[4 * a3];
      *(v12 + 56) = a5;
      return this;
    }

    v13 = (a5 + a3 + 3) & 0xFFFFFFFC;
    this = malloc_type_malloc(4 * v13 + 256, 0x100004052888210uLL);
    if (this)
    {
      v15 = this;
      if (*(v12 + 76))
      {
        free(*(v12 + 64));
      }

      *(v12 + 64) = v15;
      *(v12 + 76) = v13;
      goto LABEL_8;
    }

    *(v12 + 32) = 0;
    *(v12 + 40) = 0;
    *(v12 + 56) = 0;
    *(v12 + 72) = 0;
    *a7 = U_MEMORY_ALLOCATION_ERROR;
  }

  return this;
}

uint64_t icu::CollationSettings::reorderEx(icu::CollationSettings *this, uint64_t a2)
{
  if (*(this + 10) > a2)
  {
    v2 = *(this + 6);
    do
    {
      v4 = *v2++;
      v3 = v4;
    }

    while ((a2 | 0xFFFF) >= v4);
    return a2 + (v3 << 24);
  }

  return a2;
}

uint64_t icu::CollationSettings::setStrength(uint64_t this, unsigned int a2, __int16 a3, UErrorCode *a4)
{
  if (*a4 <= 0)
  {
    v4 = *(this + 24) & 0xFFFF0FFF;
    if (a2 < 4)
    {
      goto LABEL_3;
    }

    if (a2 == -1)
    {
      v5 = v4 | a3 & 0xF000;
      goto LABEL_4;
    }

    if (a2 == 15)
    {
LABEL_3:
      v5 = v4 | (a2 << 12);
LABEL_4:
      *(this + 24) = v5;
      return this;
    }

    *a4 = U_ILLEGAL_ARGUMENT_ERROR;
  }

  return this;
}

uint64_t icu::CollationSettings::setFlag(uint64_t result, int a2, int a3, int a4, int *a5)
{
  if (*a5 <= 0)
  {
    switch(a3)
    {
      case -1:
        v5 = *(result + 24) & ~a2 | a4 & a2;
        goto LABEL_8;
      case 16:
        v5 = *(result + 24) & ~a2;
        goto LABEL_8;
      case 17:
        v5 = *(result + 24) | a2;
LABEL_8:
        *(result + 24) = v5;
        return result;
    }

    *a5 = 1;
  }

  return result;
}

uint64_t icu::CollationSettings::setCaseFirst(uint64_t result, int a2, __int16 a3, int *a4)
{
  if (*a4 <= 0)
  {
    v4 = *(result + 24);
    v5 = v4 & 0xFFFFFCFF;
    if (a2 > 23)
    {
      if (a2 == 24)
      {
        v5 |= 0x200u;
      }

      else
      {
        if (a2 != 25)
        {
LABEL_9:
          *a4 = 1;
          return result;
        }

        v5 = v4 | 0x300;
      }
    }

    else if (a2 == -1)
    {
      v5 |= a3 & 0x300;
    }

    else if (a2 != 16)
    {
      goto LABEL_9;
    }

    *(result + 24) = v5;
  }

  return result;
}

uint64_t icu::CollationSettings::setAlternateHandling(uint64_t result, int a2, char a3, int *a4)
{
  if (*a4 <= 0)
  {
    v4 = *(result + 24) & 0xFFFFFFF3;
    switch(a2)
    {
      case -1:
        v4 |= a3 & 0xC;
        break;
      case 20:
        v4 |= 4u;
        break;
      case 21:
        break;
      default:
        *a4 = 1;
        return result;
    }

    *(result + 24) = v4;
  }

  return result;
}

uint64_t icu::CollationSettings::setMaxVariable(uint64_t this, unsigned int a2, char a3, UErrorCode *a4)
{
  if (*a4 <= 0)
  {
    v4 = *(this + 24) & 0xFFFFFF8F;
    if (a2 < 4)
    {
      v5 = v4 | (16 * a2);
LABEL_6:
      *(this + 24) = v5;
      return this;
    }

    if (a2 == -1)
    {
      v5 = v4 | a3 & 0x70;
      goto LABEL_6;
    }

    *a4 = U_ILLEGAL_ARGUMENT_ERROR;
  }

  return this;
}

icu::CollationTailoring *icu::CollationTailoring::CollationTailoring(icu::CollationTailoring *this, const icu::CollationSettings *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F0938600;
  *(this + 3) = 0;
  *(this + 4) = a2;
  v4 = (this + 40);
  *(this + 5) = &unk_1F0935D00;
  *(this + 24) = 2;
  icu::Locale::Locale((this + 104), "", 0, 0, 0);
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  if (!a2)
  {
    operator new();
  }

  v5 = *(this + 4);
  if (v5)
  {
    icu::SharedObject::addRef(v5);
  }

  icu::UnicodeString::getTerminatedBuffer(v4);
  *(this + 82) = 0;
  atomic_store(0, this + 98);
  return this;
}

void icu::CollationTailoring::~CollationTailoring(icu::CollationTailoring *this)
{
  *this = &unk_1F0938600;
  v2 = *(this + 4);
  if (v2)
  {
    icu::SharedObject::removeRef(v2);
    *(this + 4) = 0;
  }

  v3 = *(this + 42);
  if (v3)
  {
    MEMORY[0x19A8B2600](v3, 0x1070C40F66E0808);
  }

  v4 = *(this + 43);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  udata_close(*(this + 44));
  ures_close(*(this + 45));
  utrie2_close(*(this + 46));
  v6 = *(this + 47);
  if (v6)
  {
    v7 = icu::UnicodeSet::~UnicodeSet(v5, v6);
    MEMORY[0x19A8B2600](v7, 0x10B1C403432821BLL);
  }

  uhash_close(*(this + 48));
  atomic_store(0, this + 98);
  icu::Locale::~Locale((this + 104));
  icu::UnicodeString::~UnicodeString(v8, (this + 40));

  icu::SharedObject::~SharedObject(this);
}

{
  icu::CollationTailoring::~CollationTailoring(this);

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::CollationTailoring::ensureOwnedData(icu::CollationTailoring *this, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  v4 = *(this + 42);
  if (v4)
  {
    *(this + 3) = v4;
    return 1;
  }

  else
  {
    icu::Normalizer2Factory::getNFCImpl(a2, a2);
    if (*a2 <= 0)
    {
      operator new();
    }

    return 0;
  }
}

_BYTE *icu::CollationTailoring::makeBaseVersion(_BYTE *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  *a2 = 9;
  a2[1] = this[1] + 8 * *this;
  a2[2] = this[2] << 6;
  a2[3] = 0;
  return this;
}

_BYTE *icu::CollationTailoring::setVersion(_BYTE *this, const unsigned __int8 *a2, const unsigned __int8 *a3)
{
  this[328] = 9;
  this[329] = a2[1];
  this[330] = a2[2] & 0xC0 | (*a3 + (*a3 >> 6)) & 0x3F;
  this[331] = ((a3[1] >> 5) | (8 * a3[1])) + a3[2] + 16 * a3[3] + (a3[3] >> 4);
  return this;
}

void icu::CollationCacheEntry::~CollationCacheEntry(icu::CollationCacheEntry *this)
{
  *this = &unk_1F0938628;
  v2 = *(this + 31);
  if (v2)
  {
    icu::SharedObject::removeRef(v2);
    *(this + 31) = 0;
  }

  icu::Locale::~Locale((this + 24));

  icu::SharedObject::~SharedObject(this);
}

{
  icu::CollationCacheEntry::~CollationCacheEntry(this);

  JUMPOUT(0x19A8B2600);
}

int64x2_t icu::CollationWeights::CollationWeights(icu::CollationWeights *this)
{
  v1 = 0;
  *(this + 39) = 0;
  *(this + 40) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = 0;
  result = xmmword_19544D5F0;
  v3 = vdupq_n_s64(5uLL);
  v4 = vdupq_n_s64(2uLL);
  do
  {
    if (vmovn_s64(vcgtq_u64(v3, result)).u8[0])
    {
      *(this + v1 + 24) = 0;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(5uLL), *&result)).i32[1])
    {
      *(this + v1 + 28) = 0;
    }

    result = vaddq_s64(result, v4);
    v1 += 8;
  }

  while (v1 != 24);
  return result;
}

double icu::CollationWeights::CollationWeights(icu::CollationWeights *this)
{
  *(this + 39) = 0;
  *(this + 40) = 0;
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 28) = 0u;
  return result;
}

double icu::CollationWeights::initForPrimary(icu::CollationWeights *this, int a2)
{
  *this = 1;
  if (a2)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  *(this + 2) = 3;
  *(this + 3) = v2;
  if (a2)
  {
    v3 = 254;
  }

  else
  {
    v3 = 255;
  }

  *(this + 7) = 255;
  *(this + 8) = v3;
  *(this + 2) = 0x200000002;
  *&result = 0xFF000000FFLL;
  *(this + 36) = 0xFF000000FFLL;
  return result;
}

double icu::CollationWeights::initForSecondary(icu::CollationWeights *this)
{
  *this = 3;
  *(this + 8) = xmmword_1954896D0;
  result = 0.0;
  *(this + 28) = xmmword_1954896E0;
  return result;
}

double icu::CollationWeights::initForTertiary(icu::CollationWeights *this)
{
  *this = 3;
  *(this + 8) = xmmword_1954896D0;
  result = 0.0;
  *(this + 28) = xmmword_1954896F0;
  return result;
}

uint64_t icu::CollationWeights::incWeight(icu::CollationWeights *this, unsigned int a2, uint64_t a3)
{
  v3 = 8 * a3;
  v4 = (a2 >> (-8 * a3));
  if (v4 >= *(this + a3 + 6))
  {
    a3 = a3;
    v6 = 40 - v3;
    v7 = (this + 4 * a3 + 20);
    do
    {
      v8 = 0xFFFFFFFF >> v3;
      if (a3 >= 4)
      {
        v8 = 0;
      }

      a2 = (*(v7 - 4) << (v6 - 8)) | (v8 | (-256 << (v6 - 8))) & a2;
      --a3;
      v4 = (a2 >> v6);
      v9 = *v7--;
      v6 += 8;
      v3 -= 8;
    }

    while (v4 >= v9);
    v5 = v6 - 8;
  }

  else
  {
    v5 = 32 - 8 * a3;
  }

  v10 = v4 + 1;
  v11 = 0xFFFFFFFF >> v3;
  if (a3 >= 4)
  {
    v11 = 0;
  }

  return (v10 << v5) | (v11 | (-256 << v5)) & a2;
}

uint64_t icu::CollationWeights::incWeightByOffset(icu::CollationWeights *this, unsigned int a2, uint64_t a3, int a4)
{
  v4 = 8 * a3;
  v5 = a4 + (a2 >> (-8 * a3));
  v6 = *(this + a3 + 6);
  if (v5 <= v6)
  {
    v16 = 32 - 8 * a3;
  }

  else
  {
    a3 = a3;
    v7 = 40 - v4;
    v8 = (this + 4 * a3 + 20);
    do
    {
      v9 = *(v8 - 4);
      v10 = v5 - v9;
      v11 = v6 - v9 + 1;
      v12 = v10 / v11;
      v13 = v10 % v11 + v9;
      v14 = 0xFFFFFFFF >> v4;
      if (a3 >= 4)
      {
        v14 = 0;
      }

      a2 = (v13 << (v7 - 8)) | (v14 | (-256 << (v7 - 8))) & a2;
      --a3;
      v5 = v12 + (a2 >> v7);
      v15 = *v8--;
      v6 = v15;
      v7 += 8;
      v4 -= 8;
    }

    while (v5 > v15);
    v16 = v7 - 8;
  }

  v17 = 0xFFFFFFFF >> v4;
  if (a3 >= 4)
  {
    v17 = 0;
  }

  return (v5 << v16) | (v17 | (-256 << v16)) & a2;
}

uint64_t icu::CollationWeights::lengthenRange(uint64_t result, int *a2)
{
  v2 = a2[3];
  v3 = a2[2] + 1;
  v4 = result + 4 * v3;
  v5 = -256 << (-8 * v3);
  v6 = a2[1];
  *a2 = v5 & *a2 | (*(v4 + 4) << (-8 * v3));
  a2[1] = (*(v4 + 24) << (-8 * v3)) | v5 & v6;
  v7 = v2 + v2 * (*(v4 + 24) - *(v4 + 4));
  a2[2] = v3;
  a2[3] = v7;
  return result;
}

BOOL icu::CollationWeights::getWeightRanges(icu::CollationWeights *this, unsigned int a2, unsigned int a3)
{
  v47 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    LODWORD(v3) = 4;
  }

  else
  {
    LODWORD(v3) = 3;
  }

  if (!a2)
  {
    LODWORD(v3) = 2;
  }

  if ((a2 & 0xFFFFFF) != 0)
  {
    v3 = v3;
  }

  else
  {
    v3 = 1;
  }

  if (a3)
  {
    LODWORD(v4) = 4;
  }

  else
  {
    LODWORD(v4) = 3;
  }

  if (!a3)
  {
    LODWORD(v4) = 2;
  }

  if ((a3 & 0xFFFFFF) != 0)
  {
    v4 = v4;
  }

  else
  {
    v4 = 1;
  }

  if (a2 >= a3 || v3 < v4 && ((-1 << (-8 * v3)) & a3) == a2)
  {
    result = 0;
  }

  else
  {
    memset(v45, 0, sizeof(v45));
    v46 = 0u;
    memset(v43, 0, sizeof(v43));
    v7 = *this;
    v44 = 0u;
    if (v3 > v7)
    {
      v8 = 40 - 8 * v3;
      v9 = (&v45[v3] | 8);
      do
      {
        v10 = v8 - 8;
        v11 = *(this + v3 + 6);
        if (v11 > (a2 >> (v8 - 8)))
        {
          *(v9 - 2) = a2 + (1 << v10);
          *(v9 - 1) = (v11 << v10) | (-256 << v10) & a2;
          *v9 = v3;
          v9[1] = v11 - (a2 >> (v8 - 8));
        }

        --v3;
        a2 &= -1 << v8;
        v8 += 8;
        v9 -= 4;
      }

      while (v3 > v7);
    }

    v12 = 32 - 8 * v7;
    v13 = a2 + (1 << v12);
    if (HIBYTE(a2) == 255)
    {
      v13 = -1;
    }

    if (v4 > v7)
    {
      v14 = 40 - 8 * v4;
      v15 = (&v43[v4] | 8);
      do
      {
        v16 = v14 - 8;
        v17 = (a3 >> (v14 - 8));
        v18 = *(this + v4 + 1);
        v19 = v17 >= v18;
        v20 = v17 - v18;
        if (v20 != 0 && v19)
        {
          *(v15 - 2) = (v18 << v16) | (-256 << v16) & a3;
          *(v15 - 1) = a3 + (-1 << v16);
          *v15 = v4;
          v15[1] = v20;
        }

        --v4;
        a3 &= -1 << v14;
        v14 += 8;
        v15 -= 4;
      }

      while (v4 > v7);
    }

    v21 = a3 + (-1 << v12);
    if (v21 >= v13)
    {
      v30 = (v21 - v13) >> v12;
      *(this + 40) = 0;
      v31 = (this + 160);
      if ((v30 & 0x80000000) != 0)
      {
        v32 = 0;
      }

      else
      {
        *(this + 11) = v13;
        *(this + 12) = v21;
        *(this + 13) = v7;
        *(this + 14) = v30 + 1;
        v32 = 1;
        *(this + 40) = 1;
      }
    }

    else
    {
      if (v7 <= 3)
      {
        v22 = 0;
        v23 = &v46 + 3;
        v24 = &v44 + 3;
        v25 = 4;
        while (1)
        {
          v26 = *v23;
          if (*v23 >= 1)
          {
            v27 = *v24;
            if (*v24 >= 1)
            {
              v28 = *(v23 - 2);
              v29 = *(v24 - 3);
              if (v28 > v29)
              {
                v33 = *(v24 - 2);
                *(v23 - 2) = v33;
                v34 = (v33 >> v22) - (*(v23 - 3) >> v22) + 1;
                goto LABEL_49;
              }

              if (v28 != v29 && icu::CollationWeights::incWeight(this, v28, v25) == v29)
              {
                break;
              }
            }
          }

          --v25;
          v22 += 8;
          v23 -= 4;
          v24 -= 4;
          if (v25 <= v7)
          {
            goto LABEL_52;
          }
        }

        *(v23 - 2) = *(v24 - 2);
        v34 = v27 + v26;
LABEL_49:
        *v23 = v34;
        *v24 = 0;
        if (v25 - 1 > v7)
        {
          v35 = v25 - 1;
          v36 = &v43[v25 - 1] + 3;
          v37 = &v45[v25 - 1] + 3;
          do
          {
            *v36 = 0;
            v36 -= 4;
            *v37 = 0;
            v37 -= 4;
            --v35;
          }

          while (v35 > v7);
        }
      }

LABEL_52:
      v32 = 0;
      *(this + 40) = 0;
      v31 = (this + 160);
    }

    if (v7 <= 3)
    {
      v38 = this + 44;
      v39 = v7 - 4;
      v40 = &v43[v7 + 1];
      v41 = &v45[v7 + 1];
      do
      {
        if (v40[3] >= 1)
        {
          *&v38[16 * v32] = *v40;
          v32 = *v31 + 1;
          *v31 = v32;
        }

        if (v41[3] >= 1)
        {
          *&v38[16 * v32] = *v41;
          v32 = *v31 + 1;
          *v31 = v32;
        }

        v40 += 4;
        v41 += 4;
        v19 = __CFADD__(v39++, 1);
      }

      while (!v19);
    }

    result = v32 > 0;
  }

  v42 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t icu::CollationWeights::allocWeightsInShortRanges(icu::CollationWeights *this, int a2, int a3)
{
  v5 = *(this + 40);
  if (v5 < 1)
  {
    return 0;
  }

  v12 = v3;
  v13 = v4;
  v6 = 0;
  for (i = (this + 56); ; i += 4)
  {
    v8 = *(i - 1);
    if (v8 > a3 + 1)
    {
      return 0;
    }

    v9 = a2 - *i;
    if (a2 <= *i)
    {
      break;
    }

    ++v6;
    a2 = v9;
    if (v5 == v6)
    {
      return 0;
    }
  }

  if (v8 > a3)
  {
    *i = a2;
  }

  *(this + 40) = v6 + 1;
  if (v6)
  {
    v11 = 0;
    uprv_sortArray(this + 44, v6 + 1, 16, sub_1952E16E0, 0, 0, &v11);
  }

  return 1;
}

uint64_t sub_1952E16E0(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (*a2 < *a3)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a2 > *a3;
  }
}

uint64_t icu::CollationWeights::allocWeightsInMinLengthRanges(icu::CollationWeights *this, int a2, uint64_t a3)
{
  v5 = *(this + 40);
  if (v5 < 1)
  {
    v7 = 0;
    LODWORD(v6) = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = (this + 56);
    while (*(v8 - 1) == a3)
    {
      v9 = *v8;
      v8 += 4;
      v7 += v9;
      if (v5 == ++v6)
      {
        LODWORD(v6) = *(this + 40);
        break;
      }
    }
  }

  v10 = *(this + a3 + 7) - *(this + a3 + 2) + 1;
  if (v10 * v7 < a2)
  {
    return 0;
  }

  v12 = *(this + 11);
  v13 = *(this + 12);
  if (v6 >= 2)
  {
    v14 = v6;
    v15 = (this + 64);
    v16 = v14 - 1;
    do
    {
      if (*(v15 - 1) < v12)
      {
        v12 = *(v15 - 1);
      }

      if (*v15 > v13)
      {
        v13 = *v15;
      }

      v15 += 4;
      --v16;
    }

    while (v16);
  }

  v17 = (this + 44);
  v18 = (a2 - v7) / (*(this + a3 + 7) - *(this + a3 + 2));
  v19 = v7 - v18 + v18 * v10;
  if (v18)
  {
    v20 = v19 < a2;
  }

  else
  {
    v20 = 1;
  }

  if (v20)
  {
    v21 = v18 + 1;
  }

  else
  {
    v21 = (a2 - v7) / (*(this + a3 + 7) - *(this + a3 + 2));
  }

  if (v20)
  {
    v22 = v7 - v18 - 1;
  }

  else
  {
    v22 = v7 - v18;
  }

  *v17 = v12;
  if (v22)
  {
    v23 = icu::CollationWeights::incWeightByOffset(this, v12, a3, v22 - 1);
    *(this + 12) = v23;
    *(this + 14) = v22;
    *(this + 15) = icu::CollationWeights::incWeight(this, v23, a3);
    *(this + 16) = v13;
    v17 = (this + 60);
    *(this + 17) = a3;
    v24 = 2;
    v25 = 72;
    v7 = v21;
  }

  else
  {
    *(this + 12) = v13;
    v24 = 1;
    v25 = 56;
  }

  *(this + v25) = v7;
  icu::CollationWeights::lengthenRange(this, v17);
  *(this + 40) = v24;
  return 1;
}

BOOL icu::CollationWeights::allocWeights(icu::CollationWeights *this, unsigned int a2, unsigned int a3, int a4)
{
  result = icu::CollationWeights::getWeightRanges(this, a2, a3);
  if (result)
  {
    v7 = *(this + 13);
    if (icu::CollationWeights::allocWeightsInShortRanges(this, a4, *(this + 13)))
    {
LABEL_3:
      *(this + 39) = 0;
      return 1;
    }

    else
    {
      while (v7 != 4)
      {
        if (!icu::CollationWeights::allocWeightsInMinLengthRanges(this, a4, v7))
        {
          if (*(this + 40) >= 1)
          {
            v8 = 0;
            v9 = (this + 44);
            do
            {
              if (v9[2] != v7)
              {
                break;
              }

              v10 = v9 + 4;
              icu::CollationWeights::lengthenRange(this, v9);
              ++v8;
              v9 = v10;
            }

            while (v8 < *(this + 40));
          }

          v7 = *(this + 13);
          if (!icu::CollationWeights::allocWeightsInShortRanges(this, a4, *(this + 13)))
          {
            continue;
          }
        }

        goto LABEL_3;
      }

      return 0;
    }
  }

  return result;
}

uint64_t icu::CollationWeights::nextWeight(icu::CollationWeights *this)
{
  v1 = *(this + 39);
  if (v1 >= *(this + 40))
  {
    return 0xFFFFFFFFLL;
  }

  v2 = this + 16 * v1;
  v5 = *(v2 + 11);
  v4 = v2 + 44;
  v3 = v5;
  v6 = v4[3] - 1;
  v4[3] = v6;
  if (v6)
  {
    *v4 = icu::CollationWeights::incWeight(this, v3, v4[2]);
  }

  else
  {
    *(this + 39) = v1 + 1;
  }

  return v3;
}

icu::DecimalFormat *icu::CompactDecimalFormat::CompactDecimalFormat(icu::CompactDecimalFormat *this, const icu::CompactDecimalFormat *a2)
{
  result = icu::DecimalFormat::DecimalFormat(this, a2);
  *result = &unk_1F0938680;
  return result;
}

{
  result = icu::DecimalFormat::DecimalFormat(this, a2);
  *result = &unk_1F0938680;
  return result;
}

void icu::CompactDecimalFormat::~CompactDecimalFormat(icu::CompactDecimalFormat *this)
{
  icu::DecimalFormat::~DecimalFormat(this);

  JUMPOUT(0x19A8B2600);
}

icu::CECalendar *sub_1952E1C64(icu::CECalendar *a1, char **a2, UErrorCode *a3)
{
  result = icu::CECalendar::CECalendar(a1, a2, a3);
  *result = &unk_1F0938908;
  return result;
}

void sub_1952E1C9C(icu::CECalendar *a1)
{
  icu::CECalendar::~CECalendar(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_1952E1D3C(_DWORD *a1, int *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  if (icu::Calendar::newerField(a1, 0x13u, 1u) == 19)
  {
    if (a1[54] >= 1)
    {
      return a1[22];
    }

    return 1;
  }

  if (a1[35] < 1 || (v5 = a1[3], v5 == 1))
  {
    if (a1[36] >= 1)
    {
      return a1[4];
    }

    return 1;
  }

  if (v5)
  {
    result = 0;
    *a2 = 1;
  }

  else if (a1[36] < 1)
  {
    return 0;
  }

  else
  {
    return (1 - a1[4]);
  }

  return result;
}

uint64_t sub_1952E1E08(uint64_t a1, icu::CECalendar *a2, int *a3)
{
  *v16 = 0;
  v15 = 0;
  v6 = (*(*a1 + 456))(a1);
  result = icu::CECalendar::jdToCE(a2, v6, &v16[1], v16, &v15, a3, v7);
  if (*a3 <= 0)
  {
    v9 = v16[1];
    v10 = 1 - v16[1];
    v11 = v16[1] <= 0;
    *(a1 + 88) = v16[1];
    v12 = !v11;
    if (v11)
    {
      v9 = v10;
    }

    *(a1 + 216) = 1;
    *(a1 + 131) = 1;
    *(a1 + 140) = 1;
    *(a1 + 112) = 1;
    *(a1 + 12) = v12;
    *(a1 + 16) = v9;
    *(a1 + 144) = 0x100000001;
    *(a1 + 113) = 257;
    v14 = v15;
    v13 = v16[0];
    *(a1 + 20) = v16[0];
    *(a1 + 104) = v13;
    *(a1 + 232) = 1;
    *(a1 + 135) = 1;
    *(a1 + 117) = 257;
    *(a1 + 32) = v14;
    *(a1 + 36) = v14 + 30 * v13;
    *(a1 + 160) = 1;
    *(a1 + 164) = 1;
  }

  return result;
}

uint64_t sub_1952E1F04(_BYTE *a1, UErrorCode *a2)
{
  v3 = icu::Calendar::get(a1, 0x13u, a2) + 284;
  if (*a2 <= 0)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

double sub_1952E1F4C()
{
  if (atomic_load_explicit(dword_1ED442B98, memory_order_acquire) != 2 && icu::umtx_initImplPreInit(dword_1ED442B98))
  {
    sub_1952E1FA0();
    icu::umtx_initImplPostInit(dword_1ED442B98);
  }

  return *&qword_1ED441AC8;
}

void sub_1952E1FA0()
{
  v5[80] = *MEMORY[0x1E69E9840];
  v3 = U_ZERO_ERROR;
  bzero(v5, 0x280uLL);
  icu::Locale::Locale(v4, "@calendar=coptic", 0, 0, 0);
  icu::CECalendar::CECalendar(v5, v4, &v3);
  v5[0] = &unk_1F0938908;
  icu::Locale::~Locale(v4);
  if (v3 <= U_ZERO_ERROR)
  {
    icu::Calendar::getNow(v0);
    icu::Calendar::setTimeInMillis(v5, v1, &v3);
    icu::Calendar::add(v5, 1u, -80, &v3);
    qword_1ED441AC8 = icu::Calendar::getTimeInMillis(v5, &v3);
    dword_1ED441AD0 = icu::Calendar::get(v5, 1u, &v3);
  }

  icu::CECalendar::~CECalendar(v5);
  v2 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1952E20B8()
{
  if (atomic_load_explicit(dword_1ED442B98, memory_order_acquire) != 2 && icu::umtx_initImplPreInit(dword_1ED442B98))
  {
    sub_1952E1FA0();
    icu::umtx_initImplPostInit(dword_1ED442B98);
  }

  return dword_1ED441AD0;
}

icu::CompoundTransliterator *icu::CompoundTransliterator::CompoundTransliterator(icu::CompoundTransliterator *this, icu::Transliterator *const *a2, int a3, icu::UnicodeFilter *a4)
{
  v11[8] = *MEMORY[0x1E69E9840];
  *this = &unk_1F0938B00;
  icu::CompoundTransliterator::joinIDs(a2, a3, v11);
  icu::Transliterator::Transliterator(this, v11, a4);
  icu::UnicodeString::~UnicodeString(v8, v11);
  *this = &unk_1F0938B00;
  *(this + 11) = 0;
  *(this + 12) = 0;
  icu::CompoundTransliterator::setTransliterators(this, a2, a3);
  v9 = *MEMORY[0x1E69E9840];
  return this;
}

void icu::CompoundTransliterator::joinIDs(icu::Transliterator *const *a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  *(a3 + 8) = 0u;
  *(a3 + 56) = 0;
  *(a3 + 40) = 0u;
  *(a3 + 24) = 0u;
  *a3 = &unk_1F0935D00;
  *(a3 + 8) = 2;
  if (a2 >= 1)
  {
    v6 = 0;
    v7 = 8 * a2;
    do
    {
      if (v6)
      {
        v13 = 59;
        icu::UnicodeString::doAppend(a3, &v13, 0, 1);
      }

      v8 = (*(*a1[v6 / 8] + 104))(a1[v6 / 8]);
      v9 = *(v8 + 8);
      v10 = v9;
      v11 = v9 >> 5;
      if (v10 >= 0)
      {
        v12 = v11;
      }

      else
      {
        v12 = *(v8 + 12);
      }

      icu::UnicodeString::doAppend(a3, v8, 0, v12);
      v6 += 8;
    }

    while (v7 != v6);
  }
}

void icu::CompoundTransliterator::setTransliterators(icu::CompoundTransliterator *this, icu::Transliterator *const *a2, int a3)
{
  v6 = malloc_type_malloc(8 * a3, 0x2004093837F09uLL);
  if (v6)
  {
    v7 = v6;
    if (a3 < 1)
    {
      goto LABEL_11;
    }

    v8 = 0;
    while (1)
    {
      v9 = (*(*a2[v8] + 24))(a2[v8]);
      v7[v8] = v9;
      if (!v9)
      {
        break;
      }

      if (a3 == ++v8)
      {
        goto LABEL_11;
      }
    }

    if (v8)
    {
      v10 = v8 + 1;
      do
      {
        free(v7[(v10 - 2)]);
        v7[(v10-- - 2)] = 0;
      }

      while (v10 > 1);
    }

    else
    {
LABEL_11:

      icu::CompoundTransliterator::adoptTransliterators(this, v7, a3);
    }
  }
}

icu::Transliterator *icu::CompoundTransliterator::CompoundTransliterator(icu::Transliterator *a1, UChar **a2, uint64_t a3, icu::UnicodeFilter *a4, uint64_t a5, UErrorCode *a6)
{
  v10 = icu::Transliterator::Transliterator(a1, a2, a4);
  *v10 = &unk_1F0938B00;
  *(v10 + 11) = 0;
  *(v10 + 25) = 0;
  icu::CompoundTransliterator::init(v10, a2, a3, 1, a6);
  return a1;
}

{
  v10 = icu::Transliterator::Transliterator(a1, a2, a4);
  *v10 = &unk_1F0938B00;
  *(v10 + 11) = 0;
  *(v10 + 25) = 0;
  icu::CompoundTransliterator::init(v10, a2, a3, 1, a6);
  return a1;
}

void icu::CompoundTransliterator::init(icu::Transliterator *a1, uint64_t a2, uint64_t a3, int a4, UErrorCode *a5)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*a5 <= 0)
  {
    v15 = 0;
    memset(v14, 0, sizeof(v14));
    icu::UVector::UVector(v14, a5);
    v13 = 0;
    v17 = 0u;
    v18 = 0u;
    v20 = 0;
    v19 = 0u;
    v16 = &unk_1F0935D00;
    LOWORD(v17) = 2;
    if (sub_1953E95C8(a2, a3, &v16, v14, &v13))
    {
      sub_1953E995C(v14, a5);
      icu::CompoundTransliterator::init(a1, v14, a3, a4, a5);
      if (v13)
      {
        icu::Transliterator::adoptFilter(a1, v13);
      }
    }

    else
    {
      v10 = 65569;
      *a5 = U_INVALID_ID;
      if (v13)
      {
        v11 = icu::UnicodeSet::~UnicodeSet(0x10021, v13);
        MEMORY[0x19A8B2600](v11, 0x10B1C403432821BLL);
      }
    }

    icu::UnicodeString::~UnicodeString(v10, &v16);
    icu::UVector::~UVector(v14);
  }

  v12 = *MEMORY[0x1E69E9840];
}

icu::CompoundTransliterator *icu::CompoundTransliterator::CompoundTransliterator(icu::CompoundTransliterator *this, UChar **a2, UParseError *a3, UErrorCode *a4)
{
  v7 = icu::Transliterator::Transliterator(this, a2, 0);
  *v7 = &unk_1F0938B00;
  *(v7 + 11) = 0;
  *(v7 + 25) = 0;
  icu::CompoundTransliterator::init(v7, a2, 0, 1, a4);
  return this;
}

icu::CompoundTransliterator *icu::CompoundTransliterator::CompoundTransliterator(icu::CompoundTransliterator *this, UChar **a2, icu::UVector *a3, icu::UnicodeFilter *a4, int a5, UParseError *a6, UErrorCode *a7)
{
  v11 = icu::Transliterator::Transliterator(this, a2, a4);
  *v11 = &unk_1F0938B00;
  *(v11 + 11) = 0;
  *(v11 + 25) = a5;
  icu::CompoundTransliterator::init(v11, a3, 0, 0, a7);
  return this;
}

{
  v11 = icu::Transliterator::Transliterator(this, a2, a4);
  *v11 = &unk_1F0938B00;
  *(v11 + 11) = 0;
  *(v11 + 25) = a5;
  icu::CompoundTransliterator::init(v11, a3, 0, 0, a7);
  return this;
}

_DWORD *icu::CompoundTransliterator::init(_DWORD *result, int *a2, int a3, int a4, int *a5)
{
  v34 = *MEMORY[0x1E69E9840];
  if (*a5 <= 0)
  {
    v10 = result;
    v11 = a2[2];
    result[24] = v11;
    result = malloc_type_malloc(8 * v11, 0x2004093837F09uLL);
    *(v10 + 11) = result;
    if (result)
    {
      if (*a5 <= 0)
      {
        LODWORD(v12) = v10[24];
        if (v12 < 1)
        {
          v17 = 0;
        }

        else
        {
          v13 = 0;
          v14 = -1;
          do
          {
            v15 = v12 + v14;
            if (a3)
            {
              v16 = v15;
            }

            else
            {
              v16 = v13;
            }

            *(*(v10 + 11) + 8 * v13++) = icu::UVector::elementAt(a2, v16);
            v12 = v10[24];
            --v14;
          }

          while (v13 < v12);
          v17 = v12 > 0;
        }

        if (a3 == 1 && a4)
        {
          v30 = 0u;
          v31 = 0u;
          v33 = 0;
          v32 = 0u;
          v29 = &unk_1F0935D00;
          LOWORD(v30) = 2;
          if (v17)
          {
            v18 = 0;
            do
            {
              if (v18)
              {
                v28 = 59;
                icu::UnicodeString::doAppend(&v29, &v28, 0, 1);
              }

              v19 = *(*(v10 + 11) + 8 * v18);
              v20 = (*(*v19 + 104))(v19);
              v21 = *(v20 + 8);
              v22 = v21;
              v23 = v21 >> 5;
              if (v22 >= 0)
              {
                v24 = v23;
              }

              else
              {
                v24 = *(v20 + 12);
              }

              icu::UnicodeString::doAppend(&v29, v20, 0, v24);
              ++v18;
            }

            while (v18 < v10[24]);
          }

          icu::UnicodeString::operator=(v10 + 1, &v29);
          v28 = 0;
          icu::UnicodeString::doAppend((v10 + 2), &v28, 0, 1);
          v25 = *(v10 + 8);
          if (v10[4] < 0)
          {
            v26 = v10[5];
          }

          else
          {
            v26 = v25 >> 5;
          }

          v27 = v26 - 1;
          if ((v25 & 1) != 0 && v26 == 1)
          {
            icu::UnicodeString::unBogus((v10 + 2));
          }

          else if (v26 > v27)
          {
            if (v27 > 1023)
            {
              v25 = (v25 | 0xFFE0);
              *(v10 + 8) = v25;
              v10[5] = v27;
            }

            else
            {
              v25 = (v25 & 0x1F | (32 * v27));
              *(v10 + 8) = v25;
            }
          }

          icu::UnicodeString::~UnicodeString(v25, &v29);
        }

        result = icu::CompoundTransliterator::computeMaximumContextLength(v10);
      }
    }

    else
    {
      *a5 = 7;
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

icu::CompoundTransliterator *icu::CompoundTransliterator::CompoundTransliterator(icu::CompoundTransliterator *this, icu::UVector *a2, UParseError *a3, UErrorCode *a4)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = &unk_1F0935D00;
  v11 = 2;
  icu::Transliterator::Transliterator(this, &v10, 0);
  icu::UnicodeString::~UnicodeString(v7, &v10);
  *this = &unk_1F0938B00;
  *(this + 11) = 0;
  *(this + 25) = 0;
  icu::CompoundTransliterator::init(this, a2, 0, 0, a4);
  v8 = *MEMORY[0x1E69E9840];
  return this;
}

icu::CompoundTransliterator *icu::CompoundTransliterator::CompoundTransliterator(icu::CompoundTransliterator *this, icu::UVector *a2, int a3, UParseError *a4, UErrorCode *a5)
{
  v14 = *MEMORY[0x1E69E9840];
  v12 = &unk_1F0935D00;
  v13 = 2;
  icu::Transliterator::Transliterator(this, &v12, 0);
  icu::UnicodeString::~UnicodeString(v9, &v12);
  *this = &unk_1F0938B00;
  *(this + 11) = 0;
  *(this + 25) = a3;
  icu::CompoundTransliterator::init(this, a2, 0, 0, a5);
  v10 = *MEMORY[0x1E69E9840];
  return this;
}

uint64_t icu::CompoundTransliterator::computeMaximumContextLength(icu::CompoundTransliterator *this)
{
  v1 = *(this + 24);
  if (v1 < 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = 0;
    v3 = *(this + 11);
    do
    {
      v4 = *v3++;
      v5 = *(v4 + 80);
      if (v5 > v2)
      {
        v2 = v5;
      }

      --v1;
    }

    while (v1);
  }

  return icu::Transliterator::setMaximumContextLength(this, v2);
}

uint64_t icu::CompoundTransliterator::CompoundTransliterator(icu::CompoundTransliterator *this, UChar **a2)
{
  v3 = icu::Transliterator::Transliterator(this, a2);
  *v3 = &unk_1F0938B00;
  *(v3 + 11) = 0;
  *(v3 + 12) = 0xFFFFFFFF00000000;

  return icu::CompoundTransliterator::operator=(v3, a2);
}

{
  v3 = icu::Transliterator::Transliterator(this, a2);
  *v3 = &unk_1F0938B00;
  *(v3 + 11) = 0;
  *(v3 + 12) = 0xFFFFFFFF00000000;

  return icu::CompoundTransliterator::operator=(v3, a2);
}

uint64_t icu::CompoundTransliterator::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    icu::Transliterator::operator=(a1, a2);
    v4 = *(a1 + 96);
    if (*(a1 + 88))
    {
      v5 = v4 < 1;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      v6 = 0;
      do
      {
        v7 = *(a1 + 88);
        v8 = *(v7 + 8 * v6);
        if (v8)
        {
          (*(*v8 + 8))(v8);
          v7 = *(a1 + 88);
          v4 = *(a1 + 96);
        }

        *(v7 + 8 * v6++) = 0;
      }

      while (v6 < v4);
    }

    v9 = *(a2 + 96);
    v10 = *(a1 + 88);
    if (v9 > v4)
    {
      if (v10)
      {
        free(v10);
        v9 = *(a2 + 96);
      }

      v10 = malloc_type_malloc(8 * v9, 0x2004093837F09uLL);
      *(a1 + 88) = v10;
      v9 = *(a2 + 96);
    }

    *(a1 + 96) = v9;
    if (v10 && v9 >= 1)
    {
      v11 = 0;
      while (1)
      {
        v12 = *(*(a2 + 88) + 8 * v11);
        *(*(a1 + 88) + 8 * v11) = (*(*v12 + 24))(v12);
        if (!*(*(a1 + 88) + 8 * v11))
        {
          break;
        }

        if (++v11 >= *(a1 + 96))
        {
          goto LABEL_23;
        }
      }

      if (v11)
      {
        v13 = v11 + 1;
        do
        {
          free(*(*(a1 + 88) + 8 * (v13 - 2)));
          *(*(a1 + 88) + 8 * (v13-- - 2)) = 0;
        }

        while (v13 > 1);
      }
    }

LABEL_23:
    *(a1 + 100) = *(a2 + 100);
  }

  return a1;
}

void icu::CompoundTransliterator::~CompoundTransliterator(icu::CompoundTransliterator *this)
{
  *this = &unk_1F0938B00;
  icu::CompoundTransliterator::freeTransliterators(this);

  icu::Transliterator::~Transliterator(this);
}

{
  *this = &unk_1F0938B00;
  icu::CompoundTransliterator::freeTransliterators(this);

  icu::Transliterator::~Transliterator(this);
}

{
  *this = &unk_1F0938B00;
  icu::CompoundTransliterator::freeTransliterators(this);
  icu::Transliterator::~Transliterator(this);

  JUMPOUT(0x19A8B2600);
}

void icu::CompoundTransliterator::freeTransliterators(icu::CompoundTransliterator *this)
{
  v2 = *(this + 11);
  if (v2)
  {
    v3 = *(this + 24);
    if (v3 >= 1)
    {
      for (i = 0; i < v3; ++i)
      {
        v5 = *(*(this + 11) + 8 * i);
        if (v5)
        {
          (*(*v5 + 8))(v5);
          v3 = *(this + 24);
        }
      }

      v2 = *(this + 11);
    }

    free(v2);
  }

  *(this + 11) = 0;
  *(this + 24) = 0;
}

void *icu::CompoundTransliterator::adoptTransliterators(icu::CompoundTransliterator *this, icu::Transliterator **a2, int a3)
{
  v12[8] = *MEMORY[0x1E69E9840];
  icu::CompoundTransliterator::freeTransliterators(this);
  *(this + 11) = a2;
  *(this + 24) = a3;
  icu::CompoundTransliterator::computeMaximumContextLength(this);
  icu::CompoundTransliterator::joinIDs(*(this + 11), *(this + 24), v12);
  icu::UnicodeString::operator=(this + 1, v12);
  v11 = 0;
  icu::UnicodeString::doAppend(this + 8, &v11, 0, 1);
  v6 = *(this + 8);
  if (*(this + 8) < 0)
  {
    v7 = *(this + 5);
  }

  else
  {
    v7 = v6 >> 5;
  }

  v8 = v7 - 1;
  if ((v6 & 1) != 0 && v7 == 1)
  {
    icu::UnicodeString::unBogus(this + 8);
  }

  else if (v7 > v8)
  {
    if (v8 > 1023)
    {
      v6 = (v6 | 0xFFE0);
      *(this + 8) = v6;
      *(this + 5) = v8;
    }

    else
    {
      v6 = (v6 & 0x1F | (32 * v8));
      *(this + 8) = v6;
    }
  }

  result = icu::UnicodeString::~UnicodeString(v6, v12);
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

icu::UnicodeString *icu::CompoundTransliterator::toRules(icu::CompoundTransliterator *this, icu::UnicodeString *a2, uint64_t a3)
{
  v45 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 4);
  if (v6)
  {
    icu::UnicodeString::unBogus(a2);
  }

  else
  {
    if ((v6 & 0x8000u) == 0)
    {
      v7 = v6 >> 5;
    }

    else
    {
      v7 = *(a2 + 3);
    }

    if (v7)
    {
      *(a2 + 4) &= 0x1Eu;
    }
  }

  if (*(this + 25) >= 1 && icu::Transliterator::getFilter(this))
  {
    v41 = 0u;
    v44 = 0;
    v43 = 0u;
    v42 = 0u;
    v40 = &unk_1F0935D00;
    LOWORD(v41) = 2;
    v8 = icu::UnicodeString::doAppend(a2, L"::", 0, 2);
    Filter = icu::Transliterator::getFilter(this);
    v10 = (*(*(Filter + 8) + 24))();
    v11 = *(v10 + 8);
    v12 = v11;
    v13 = v11 >> 5;
    if (v12 >= 0)
    {
      v14 = v13;
    }

    else
    {
      v14 = *(v10 + 12);
    }

    v15 = icu::UnicodeString::doAppend(v8, v10, 0, v14);
    v39[0] = 59;
    icu::UnicodeString::doAppend(v15, v39, 0, 1);
    v36 = L"::";
    icu::UnicodeString::~UnicodeString(&v36, &v40);
  }

  if (*(this + 24) >= 1)
  {
    v16 = 0;
    do
    {
      v44 = 0;
      v43 = 0u;
      v42 = 0u;
      v41 = 0u;
      v40 = &unk_1F0935D00;
      LOWORD(v41) = 2;
      v17 = *(*(this + 11) + 8 * v16);
      v18 = (*(*v17 + 104))(v17);
      v19 = icu::UnicodeString::doEqualsSubstring(v18, 0, 5, L"%Pass", 0, 5);
      v20 = **(*(this + 11) + 8 * v16);
      if (v19)
      {
        (*(v20 + 112))();
        if (v16)
        {
          if (*(this + 25) >= 2)
          {
            v21 = *(*(this + 11) + 8 * v16 - 8);
            v22 = (*(*v21 + 104))(v21);
            if (icu::UnicodeString::doEqualsSubstring(v22, 0, 5, L"%Pass", 0, 5))
            {
              v37 = ":";
              icu::UnicodeString::UnicodeString(v38, 1, &v37);
              icu::operator+(v38, &v40, v39);
              icu::UnicodeString::operator=(&v40, v39);
              icu::UnicodeString::~UnicodeString(v23, v39);
              icu::UnicodeString::~UnicodeString(v24, v38);
            }
          }
        }
      }

      else
      {
        v25 = (*(v20 + 104))();
        v26 = *(v25 + 8);
        v27 = v26;
        v28 = v26 >> 5;
        if (v27 >= 0)
        {
          v29 = v28;
        }

        else
        {
          v29 = *(v25 + 12);
        }

        v30 = icu::UnicodeString::doIndexOf(v25, 0x3Bu, 0, v29);
        v31 = *(*(this + 11) + 8 * v16);
        if (v30 < 0)
        {
          icu::Transliterator::toRules(v31, &v40, a3);
        }

        else
        {
          (*(*v31 + 112))(v31, &v40, a3);
        }
      }

      sub_1952E35E4(a2, 10);
      if ((v41 & 0x8000u) == 0)
      {
        v32 = v41 >> 5;
      }

      else
      {
        v32 = DWORD1(v41);
      }

      icu::UnicodeString::doAppend(a2, &v40, 0, v32);
      sub_1952E35E4(a2, 59);
      icu::UnicodeString::~UnicodeString(v33, &v40);
      ++v16;
    }

    while (v16 < *(this + 24));
  }

  v34 = *MEMORY[0x1E69E9840];
  return a2;
}

uint64_t sub_1952E35E4(uint64_t result, int a2)
{
  v4 = *(result + 8);
  if (*(result + 8) < 0)
  {
    v5 = *(result + 12);
    if (!v5)
    {
      return result;
    }
  }

  else
  {
    if (v4 < 0x20)
    {
      return result;
    }

    v5 = v4 >> 5;
  }

  if ((v4 & 2) != 0)
  {
    v6 = result + 10;
  }

  else
  {
    v6 = *(result + 24);
  }

  if (*(v6 + 2 * v5 - 2) != a2)
  {
    v8 = v2;
    v9 = v3;
    v7 = a2;
    return icu::UnicodeString::doAppend(result, &v7, 0, 1);
  }

  return result;
}

void *icu::CompoundTransliterator::handleGetSourceSet(icu::CompoundTransliterator *this, icu::UnicodeSet *a2)
{
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  icu::UnicodeSet::UnicodeSet(v8);
  icu::UnicodeSet::clear(a2);
  v4 = *(this + 24);
  if (v4 >= 1)
  {
    for (i = 0; i < v4; ++i)
    {
      SourceSet = icu::Transliterator::getSourceSet(*(*(this + 11) + 8 * i), v8);
      icu::UnicodeSet::addAll(a2, SourceSet);
      if (!icu::UnicodeSet::isEmpty(a2))
      {
        break;
      }

      v4 = *(this + 24);
    }
  }

  return icu::UnicodeSet::~UnicodeSet(v4, v8);
}

icu::UnicodeSet *icu::CompoundTransliterator::getTargetSet(icu::CompoundTransliterator *this, icu::UnicodeSet *a2)
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  icu::UnicodeSet::UnicodeSet(v9);
  icu::UnicodeSet::clear(a2);
  v4 = *(this + 24);
  if (v4 >= 1)
  {
    for (i = 0; i < v4; ++i)
    {
      v6 = *(*(this + 11) + 8 * i);
      v7 = (*(*v6 + 128))(v6, v9);
      icu::UnicodeSet::addAll(a2, v7);
      v4 = *(this + 24);
    }
  }

  icu::UnicodeSet::~UnicodeSet(v4, v9);
  return a2;
}

uint64_t icu::CompoundTransliterator::handleTransliterate(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + 12);
  if (*(result + 96) <= 0)
  {
    *(a3 + 8) = v5;
  }

  else
  {
    v8 = result;
    v9 = 0;
    v10 = 0;
    v11 = *(a3 + 8);
    v12 = *(a3 + 12);
    do
    {
      *(a3 + 8) = v11;
      if (v11 == v12)
      {
        break;
      }

      v13 = *(*(v8 + 88) + 8 * v9);
      result = (*(*v13 + 88))(v13, a2, a3, a4);
      if (a4)
      {
        v14 = *(a3 + 8);
        v15 = *(a3 + 12);
        *(a3 + 12) = v14;
      }

      else
      {
        v14 = *(a3 + 12);
        if (*(a3 + 8) != v14)
        {
          *(a3 + 8) = v14;
        }

        v15 = v14;
      }

      v10 = v10 - v12 + v15;
      ++v9;
      v12 = v14;
    }

    while (v9 < *(v8 + 96));
    *(a3 + 12) = v10 + v5;
  }

  return result;
}

int *sub_1952E38DC(int *result)
{
  if (*result <= 0)
  {
    v1 = result;
    if (atomic_load_explicit(&dword_1EAEC9C48, memory_order_acquire) != 2)
    {
      result = icu::umtx_initImplPreInit(&dword_1EAEC9C48);
      if (result)
      {
        sub_1952E3974();
      }
    }

    if (dword_1EAEC9C4C >= 1)
    {
      *v1 = dword_1EAEC9C4C;
    }
  }

  return result;
}

void sub_1952E3974()
{
  v8 = *MEMORY[0x1E69E9840];
  sub_195400588(0x1Fu, sub_1952E4978);
  v7 = 0u;
  v6 = 0u;
  v5 = 0u;
  v4 = 0u;
  v3 = 0u;
  v2 = 0u;
  v1 = 0u;
  v0 = 0u;
  operator new();
}

uint64_t sub_1952E43A4(uint64_t a1)
{
  if (*a1)
  {
    v2 = sub_19532F18C();
    MEMORY[0x19A8B2600](v2, 0x1050C4064EBF5C7);
  }

  if (byte_1EAEC9C38 == 1)
  {
    v3 = 0;
    do
    {
      v4 = *(*(a1 + 8) + 8 * v3);
      if (v4)
      {
        MEMORY[0x19A8B2600](v4, 0x1070C40003B9F1ELL);
        if (!byte_1EAEC9C38)
        {
          break;
        }
      }
    }

    while (v3++ < 0x1B);
  }

  free(*(a1 + 8));
  v6 = *(a1 + 24);
  if (v6)
  {
    free(v6);
  }

  return a1;
}

size_t sub_1952E4464(uint64_t a1, char *a2, int a3)
{
  result = sub_19532F190(*a1, a2, a3);
  *(a1 + 21) = 1;
  return result;
}

uint64_t sub_1952E4494(uint64_t a1, char a2)
{
  v2 = *(a1 + 20);
  *(a1 + 20) = a2;
  *(a1 + 21) = 1;
  return v2;
}

uint64_t sub_1952E44BC(uint64_t a1, int *a2)
{
  v4 = 0;
  sub_1952E4510(a1, &v4, a2);
  if (v4 < 1)
  {
    return 0;
  }

  else
  {
    return **(a1 + 8);
  }
}

uint64_t sub_1952E4510(void *a1, _DWORD *a2, int *a3)
{
  if (sub_19532F260(*a1))
  {
    if (*(a1 + 21))
    {
      sub_19532F270(*a1, *(a1 + 20));
      *(a1 + 4) = 0;
      if (byte_1EAEC9C38 == 1)
      {
        v6 = 0;
        do
        {
          if ((*(***(qword_1EAEC9C40 + 8 * v6) + 16))(**(qword_1EAEC9C40 + 8 * v6), *a1, *(a1[1] + 8 * *(a1 + 4))))
          {
            ++*(a1 + 4);
          }
        }

        while (byte_1EAEC9C38 == 1 && v6++ < 0x1B);
        v8 = *(a1 + 4);
        if (v8 >= 2)
        {
          uprv_sortArray(a1[1], v8, 8, sub_1952E4648, 0, 1, a3);
        }
      }

      *(a1 + 21) = 0;
    }

    v9 = *(a1 + 4);
    *a2 = v9;
    if (v9)
    {
      return a1[1];
    }

    result = 0;
    v11 = 10;
  }

  else
  {
    result = 0;
    v11 = 2;
  }

  *a3 = v11;
  return result;
}

void *ucsdet_setDetectableCharset_0(void *result, const char *a2, unsigned __int8 a3, int *a4)
{
  if (*a4 > 0)
  {
    return result;
  }

  if (byte_1EAEC9C38 != 1)
  {
LABEL_10:
    v12 = 1;
    goto LABEL_11;
  }

  v7 = result;
  v8 = 0;
  while (1)
  {
    v9 = *(qword_1EAEC9C40 + 8 * v8);
    v10 = (***v9)();
    result = strcmp(v10, a2);
    if (!result)
    {
      break;
    }

    v11 = byte_1EAEC9C38 != 1 || v8++ >= 0x1B;
    if (v11)
    {
      goto LABEL_10;
    }
  }

  result = v7[3];
  if (!result && *(v9 + 8) != a3)
  {
    if (byte_1EAEC9C38)
    {
      v13 = 28;
    }

    else
    {
      v13 = 0;
    }

    result = malloc_type_malloc(v13, 0x100004077774924uLL);
    v7[3] = result;
    if (result)
    {
      if (byte_1EAEC9C38 != 1)
      {
LABEL_25:
        *(result + v8) = a3;
        return result;
      }

      v14 = 0;
      v15 = qword_1EAEC9C40;
      do
      {
        *(v7[3] + v14) = *(*(v15 + 8 * v14) + 8);
        v11 = v14++ >= 0x1B;
      }

      while (!v11);
      result = v7[3];
      goto LABEL_24;
    }

    v12 = 7;
LABEL_11:
    *a4 = v12;
    return result;
  }

LABEL_24:
  if (result)
  {
    goto LABEL_25;
  }

  return result;
}

void *sub_1952E47D4(int *a1)
{
  sub_1952E38DC(a1);
  if (*a1 <= 0)
  {
    v4 = malloc_type_malloc(0x38uLL, 0x80040C96DFCA5uLL);
    v2 = v4;
    if (!v4)
    {
      *a1 = 7;
      return v2;
    }

    v5 = *&off_1F0938BC0;
    *v4 = xmmword_1F0938BB0;
    *(v4 + 1) = v5;
    *(v4 + 2) = xmmword_1F0938BD0;
    v4[6] = off_1F0938BE0;
    v6 = malloc_type_malloc(0x10uLL, 0x10100404EB3D4D3uLL);
    v2[1] = v6;
    if (v6)
    {
      *v6 = 0;
      v6[1] = 0;
      *(v2[1] + 4) = 1;
      return v2;
    }

    *a1 = 7;
    free(v2);
  }

  return 0;
}

void *ucsdet_getDetectableCharsets_0(uint64_t a1, int *a2)
{
  if (*a2 <= 0)
  {
    v6 = malloc_type_malloc(0x38uLL, 0x80040C96DFCA5uLL);
    v2 = v6;
    if (!v6)
    {
      *a2 = 7;
      return v2;
    }

    v7 = *&off_1F0938BC0;
    *v6 = xmmword_1F0938BB0;
    *(v6 + 1) = v7;
    *(v6 + 2) = xmmword_1F0938BD0;
    v6[6] = off_1F0938BE0;
    v8 = malloc_type_malloc(0x10uLL, 0x10100404EB3D4D3uLL);
    v2[1] = v8;
    if (v8)
    {
      *v8 = 0;
      v8[1] = 0;
      v9 = v2[1];
      *(v9 + 4) = 0;
      *(v9 + 8) = *(a1 + 24);
      return v2;
    }

    *a2 = 7;
    free(v2);
  }

  return 0;
}

uint64_t sub_1952E4978()
{
  v0 = qword_1EAEC9C40;
  if (qword_1EAEC9C40)
  {
    if (byte_1EAEC9C38 == 1)
    {
      v1 = 0;
      do
      {
        v2 = v0[v1];
        if (v2)
        {
          if (*v2)
          {
            (*(**v2 + 32))(*v2);
          }

          MEMORY[0x19A8B2600](v2, 0x1020C405F07FB98);
          v0 = qword_1EAEC9C40;
          v3 = byte_1EAEC9C38;
        }

        else
        {
          v3 = 1;
        }

        v0[v1] = 0;
        if (!v3)
        {
          break;
        }
      }

      while (v1++ < 0x1B);
    }

    free(v0);
    qword_1EAEC9C40 = 0;
    byte_1EAEC9C38 = 0;
  }

  atomic_store(0, &dword_1EAEC9C48);
  return 1;
}

void sub_1952E4A58(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    free(v2);
  }

  free(a1);
}

uint64_t sub_1952E4A98(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (*(v1 + 4))
  {
    if (byte_1EAEC9C38)
    {
      return 28;
    }

    else
    {
      return 0;
    }
  }

  v3 = *(v1 + 8);
  if (v3)
  {
    if (byte_1EAEC9C38)
    {
      v4 = 0;
      LODWORD(result) = 0;
      do
      {
        if (*(v3 + v4))
        {
          result = (result + 1);
        }

        else
        {
          result = result;
        }
      }

      while (v4++ < 0x1B);
      return result;
    }

    return 0;
  }

  if (!byte_1EAEC9C38)
  {
    return 0;
  }

  LODWORD(result) = 0;
  v6 = qword_1EAEC9C40;
  v7 = -1;
  do
  {
    v8 = *v6++;
    if (*(v8 + 8))
    {
      result = (result + 1);
    }

    else
    {
      result = result;
    }

    ++v7;
  }

  while (v7 < 0x1B);
  return result;
}

const char *sub_1952E4B34(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 8);
  v4 = *v3;
  v5 = byte_1EAEC9C38;
  if (byte_1EAEC9C38)
  {
    v6 = 28;
  }

  else
  {
    v6 = 0;
  }

  if (v4 < v6)
  {
    if (*(v3 + 4))
    {
      v8 = **(qword_1EAEC9C40 + 8 * v4);
      v9 = (**v8)(v8);
      ++**(a1 + 8);
      goto LABEL_27;
    }

    v10 = *(v3 + 8);
    if (v10)
    {
      while (1)
      {
        v11 = (v5 & 1) != 0 ? 28 : 0;
        if (v4 >= v11)
        {
          break;
        }

        if (*(v10 + v4))
        {
          v12 = **(qword_1EAEC9C40 + 8 * v4);
          v9 = (**v12)(v12);
          v5 = byte_1EAEC9C38;
          v3 = *(a1 + 8);
          v4 = *v3;
        }

        else
        {
          v9 = 0;
        }

        *v3 = ++v4;
        if (v9)
        {
          goto LABEL_27;
        }
      }
    }

    else
    {
      while (1)
      {
        v13 = (v5 & 1) != 0 ? 28 : 0;
        if (v4 >= v13)
        {
          break;
        }

        v14 = *(qword_1EAEC9C40 + 8 * v4);
        if (*(v14 + 8))
        {
          v9 = (***v14)();
          v5 = byte_1EAEC9C38;
          v3 = *(a1 + 8);
          v4 = *v3;
        }

        else
        {
          v9 = 0;
        }

        *v3 = ++v4;
        if (v9)
        {
          goto LABEL_27;
        }
      }
    }
  }

  v9 = 0;
LABEL_27:
  if (a2)
  {
    if (v9)
    {
      v15 = strlen(v9);
    }

    else
    {
      v15 = 0;
    }

    *a2 = v15;
  }

  return v9;
}

uint64_t sub_1952E4D10(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_1952E4D20(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  *result = a2;
  *(result + 8) = a4;
  *(result + 16) = a5;
  *(result + 24) = a6;
  if (a3)
  {
    v7 = result;
    if (a5)
    {
      if (a6)
      {
        return result;
      }

LABEL_6:
      result = (*(*a3 + 8))(a3);
      *(v7 + 24) = result;
      return result;
    }

    result = (**a3)(a3);
    *(v7 + 16) = result;
    if (!*(v7 + 24))
    {
      goto LABEL_6;
    }
  }

  return result;
}

uint64_t sub_1952E4DDC(unsigned __int8 **a1, unint64_t a2, int a3, UErrorCode *a4)
{
  v8 = ucnv_open(a1[2], a4);
  v9 = ucnv_toUChars(v8, a2, a3, *(*a1 + 5), *(*a1 + 12), a4);
  ucnv_close(v8);
  return v9;
}

uint64_t sub_1952E4E54(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a3 < 1)
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  v23 = a2 + 1;
  v24 = 0;
  v22 = (a4 + 1);
  v25 = a5;
  do
  {
    v8 = *(a2 + v6);
    if (v8 == 27)
    {
      v9 = a5;
      if (a5 >= 1)
      {
        v10 = 0;
        v11 = v22;
        do
        {
          v12 = a4;
          v13 = strlen((a4 + 5 * v10));
          if (a3 - v6 >= v13)
          {
            if (v13 < 2)
            {
LABEL_13:
              ++HIDWORD(v24);
              v6 = v6 + v13 - 1;
              a5 = v9;
              a4 = v12;
              goto LABEL_17;
            }

            v14 = (v13 & 0x7FFFFFFF) - 1;
            v15 = v11;
            v16 = (v23 + v6);
            while (1)
            {
              v18 = *v15++;
              v17 = v18;
              v19 = *v16++;
              if (v17 != v19)
              {
                break;
              }

              if (!--v14)
              {
                goto LABEL_13;
              }
            }
          }

          ++v10;
          v11 += 5;
          a4 = v12;
        }

        while (v10 != v25);
      }

      LODWORD(v24) = v24 + 1;
      a5 = v9;
    }

    if ((v8 & 0xFE) == 0xE)
    {
      ++v7;
    }

LABEL_17:
    ++v6;
  }

  while (v6 < a3);
  if (!HIDWORD(v24))
  {
    return 0;
  }

  if (v7 + HIDWORD(v24) >= 5)
  {
    v20 = 0;
  }

  else
  {
    v20 = -10 * (5 - (v7 + HIDWORD(v24)));
  }

  return (100 * (HIDWORD(v24) - v24) / (v24 + HIDWORD(v24)) + v20) & ~((100 * (HIDWORD(v24) - v24) / (v24 + HIDWORD(v24)) + v20) >> 31);
}

void sub_1952E4FF8(uint64_t a1)
{
  nullsub_17(a1);

  JUMPOUT(0x19A8B2600);
}

BOOL sub_1952E503C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1952E4E54(a1, *a2, *(a2 + 8), "\x1B$(C", 12);
  sub_1952E4D20(a3, a2, a1, v6, 0, 0);
  return v6 > 0;
}

void sub_1952E50B0(uint64_t a1)
{
  nullsub_17(a1);

  JUMPOUT(0x19A8B2600);
}

BOOL sub_1952E50F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1952E4E54(a1, *a2, *(a2 + 8), "\x1B$)C", 1);
  sub_1952E4D20(a3, a2, a1, v6, 0, 0);
  return v6 > 0;
}

void sub_1952E5168(uint64_t a1)
{
  nullsub_17(a1);

  JUMPOUT(0x19A8B2600);
}

BOOL sub_1952E51AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1952E4E54(a1, *a2, *(a2 + 8), "\x1B$)A", 11);
  sub_1952E4D20(a3, a2, a1, v6, 0, 0);
  return v6 > 0;
}

uint64_t sub_1952E5228(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unsigned __int8 *a5)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v40 = 0;
  v13 = 0;
  v41 = 0xFFFFFFFF00000000;
  v42 = 0;
  v14 = a4 - 1;
  v39 = a5 + 1;
  while ((*(*a1 + 40))(a1, &v41, a2))
  {
    if (BYTE4(v42))
    {
      ++v10;
    }

    else if (v41 >= 0x100)
    {
      if (a3 && a4 >= 1)
      {
        v15 = 0;
        v16 = v14;
        v17 = v14;
        while (1)
        {
          v18 = v16 / 2;
          v19 = *(a3 + 2 * (v16 / 2));
          if (v19 == v41)
          {
            break;
          }

          if (v19 >= v41)
          {
            v17 = v18 - 1;
          }

          else
          {
            v15 = v18 + 1;
          }

          v16 = v15 + v17;
          if (v15 > v17)
          {
            goto LABEL_18;
          }
        }

        v20 = v40;
        if (v16 > -2)
        {
          v20 = v40 + 1;
        }

        v40 = v20;
      }

LABEL_18:
      if (v13 <= 19)
      {
        v21 = *a5;
        if (*a5)
        {
          v22 = 0;
          v23 = *(a2 + 40);
          v24 = *(a2 + 48);
          v25 = v23 + v24;
          v26 = v23 + SHIDWORD(v41) + 1;
          v27 = v39;
          do
          {
            if (SHIDWORD(v41) < v24)
            {
              v28 = 0;
              v29 = v26;
              v30 = v27;
              while (*(v29 - 1) == v21)
              {
                v31 = *v30++;
                v21 = v31;
                v28 += 5;
                if (v31)
                {
                  v32 = v29 >= v25;
                }

                else
                {
                  v32 = 1;
                }

                ++v29;
                if (v32)
                {
                  if (v21)
                  {
                    v33 = 0;
                  }

                  else
                  {
                    v33 = v28;
                  }

                  goto LABEL_33;
                }
              }
            }

            v33 = 0;
LABEL_33:
            v12 += v33;
            ++v22;
            v21 = a5[16 * v22];
            v27 += 16;
          }

          while (v21);
        }
      }

      ++v13;
    }

    ++v11;
    if (v10 >= 2 && 5 * v10 >= v13)
    {
      return 0;
    }
  }

  if (!v10 && v13 <= 10)
  {
    if (v13 || v11 >= 0xA)
    {
      if ((v12 - 1) >= 0x45)
      {
        v34 = v12;
      }

      else
      {
        v34 = v12 + 20;
      }

      v35 = v34 + 10;
      if (v12 <= 90)
      {
        return v35;
      }

      else
      {
        return 100;
      }
    }

    return 0;
  }

  if (v13 < 20 * v10)
  {
    return 0;
  }

  if (a3)
  {
    v37 = 90.0 / log(vcvtd_n_f64_s32(v13, 2uLL));
    v38 = v12 + (log(v40 + 1.0) * v37 + 10.0);
  }

  else
  {
    v38 = v12 - 20 * v10 + v13 + 30;
  }

  if (v38 >= 100)
  {
    v38 = 100;
  }

  return v38 & ~(v38 >> 31);
}

void sub_1952E54D4(uint64_t a1)
{
  nullsub_17(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_1952E550C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  *(a2 + 4) = v3;
  *(a2 + 12) = 0;
  v4 = *(a3 + 48);
  if (v3 >= v4)
  {
    result = 0;
    *(a2 + 13) = 1;
    *a2 = -1;
  }

  else
  {
    v5 = *(a3 + 40);
    v6 = v3 + 1;
    *(a2 + 8) = v3 + 1;
    v7 = *(v5 + v3);
    v8 = *(v5 + v3);
    *a2 = v8;
    result = 1;
    if (v7 < 0 && (v8 - 161) >= 0x3F)
    {
      if (v6 >= v4)
      {
        *(a2 + 13) = 1;
        v10 = -1;
      }

      else
      {
        *(a2 + 8) = v3 + 2;
        v10 = *(v5 + v6);
        *a2 = v10 | (v8 << 8);
      }

      if ((v10 & 0xFFFFFFC0) != 0x40 && (v10 - 128) >= 0x7F)
      {
        *(a2 + 12) = 1;
      }
    }
  }

  return result;
}

BOOL sub_1952E55B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1952E5228(a1, a2, &unk_195489866, 57, byte_195489CAD);
  sub_1952E4D20(a3, a2, a1, v6, 0, 0);
  return v6 > 0;
}

uint64_t sub_1952E563C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  *(a2 + 4) = v3;
  *(a2 + 12) = 0;
  v4 = *(a3 + 48);
  if (v3 >= v4)
  {
    result = 0;
    *(a2 + 13) = 1;
    *a2 = -1;
    return result;
  }

  v5 = *(a3 + 40);
  v6 = v3 + 1;
  *(a2 + 8) = v3 + 1;
  v7 = *(v5 + v3);
  *a2 = v7;
  if (v7 < 0x8E)
  {
    return 1;
  }

  if (v6 >= v4)
  {
    *(a2 + 13) = 1;
    if (v7 - 161 < 0x5E)
    {
LABEL_21:
      result = 1;
LABEL_22:
      *(a2 + 12) = 1;
      return result;
    }

    v10 = -1;
    v11 = v7;
  }

  else
  {
    v9 = v3 + 2;
    *(a2 + 8) = v3 + 2;
    v10 = *(v5 + v6);
    v11 = v10 | (v7 << 8);
    *a2 = v11;
    if (v7 - 161 < 0x5E)
    {
      if (v10 > 0xA0)
      {
        return 1;
      }

      goto LABEL_21;
    }

    LODWORD(v6) = v9;
  }

  if (v7 == 143)
  {
    if (v6 >= v4)
    {
      *(a2 + 13) = 1;
      *a2 = -1;
    }

    else
    {
      *(a2 + 8) = v6 + 1;
      v12 = *(v5 + v6);
      *a2 = v12 | (v11 << 8);
      if (v12 > 0xA0)
      {
        return 1;
      }
    }

    goto LABEL_21;
  }

  if (v7 != 142)
  {
    return 1;
  }

  result = 1;
  if (v10 <= 160)
  {
    goto LABEL_22;
  }

  return result;
}

void sub_1952E5750(uint64_t a1)
{
  nullsub_17(a1);

  JUMPOUT(0x19A8B2600);
}

BOOL sub_1952E57A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1952E5228(a1, a2, &unk_1954898D8, 100, byte_195489CDD);
  sub_1952E4D20(a3, a2, a1, v6, 0, 0);
  return v6 > 0;
}

void sub_1952E5814(uint64_t a1)
{
  nullsub_17(a1);

  JUMPOUT(0x19A8B2600);
}

BOOL sub_1952E5864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1952E5228(a1, a2, &unk_1954899A0, 100, byte_195489D0D);
  sub_1952E4D20(a3, a2, a1, v6, 0, 0);
  return v6 > 0;
}

void sub_1952E58D8(uint64_t a1)
{
  nullsub_17(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_1952E5910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  *(a2 + 4) = v3;
  *(a2 + 12) = 0;
  v4 = *(a3 + 48);
  if (v3 >= v4)
  {
    result = 0;
    *(a2 + 13) = 1;
    *a2 = -1;
  }

  else
  {
    v5 = *(a3 + 40);
    v6 = v3 + 1;
    *(a2 + 8) = v3 + 1;
    v7 = *(v5 + v3);
    v8 = *(v5 + v3);
    *a2 = v8;
    if (v7 > -2)
    {
      return 1;
    }

    if (v6 >= v4)
    {
      *(a2 + 13) = 1;
    }

    else
    {
      *(a2 + 8) = v3 + 2;
      v10 = *(v5 + v6);
      *a2 = v10 | (v8 << 8);
      if (v10 >= 0x40 && (v10 & 0x7F) != 0x7F)
      {
        return 1;
      }
    }

    result = 1;
    *(a2 + 12) = 1;
  }

  return result;
}

BOOL sub_1952E59C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1952E5228(a1, a2, &unk_195489A68, 96, byte_195489D4D);
  sub_1952E4D20(a3, a2, a1, v6, 0, 0);
  return v6 > 0;
}

void sub_1952E5A3C(uint64_t a1)
{
  nullsub_17(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_1952E5A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  *(a2 + 4) = v3;
  *(a2 + 12) = 0;
  v4 = *(a3 + 48);
  if (v3 >= v4)
  {
    result = 0;
    *(a2 + 13) = 1;
    v9 = -1;
LABEL_5:
    *a2 = v9;
    return result;
  }

  v5 = *(a3 + 40);
  v6 = v3 + 1;
  *(a2 + 8) = v3 + 1;
  v7 = *(v5 + v3);
  *a2 = v7;
  if (v7 < 0x81)
  {
    return 1;
  }

  if (v6 >= v4)
  {
    *(a2 + 13) = 1;
    v11 = -1;
    v12 = v7;
  }

  else
  {
    v10 = v3 + 2;
    *(a2 + 8) = v3 + 2;
    v11 = *(v5 + v6);
    v12 = v11 | (v7 << 8);
    *a2 = v12;
    LODWORD(v6) = v10;
  }

  result = 1;
  if (v7 != 255 && (v11 - 64) >= 0xBF)
  {
    if ((v11 - 48) <= 9)
    {
      if (v6 >= v4)
      {
        goto LABEL_18;
      }

      v13 = v6 + 1;
      *(a2 + 8) = v13;
      v14 = *(v5 + v6);
      if ((v14 - 129) > 0x7D)
      {
        goto LABEL_19;
      }

      if (v13 >= v4)
      {
LABEL_18:
        *(a2 + 13) = 1;
        goto LABEL_19;
      }

      *(a2 + 8) = v6 + 2;
      v15 = *(v5 + v13);
      if ((v15 - 48) <= 9)
      {
        v9 = (v12 << 16) | (v14 << 8) | v15;
        goto LABEL_5;
      }
    }

LABEL_19:
    *(a2 + 12) = 1;
  }

  return result;
}

BOOL sub_1952E5BA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1952E5228(a1, a2, &unk_195489B28, 100, byte_195489D8D);
  sub_1952E4D20(a3, a2, a1, v6, 0, 0);
  return v6 > 0;
}

uint64_t sub_1952E5C28(uint64_t a1, uint64_t a2, int a3)
{
  v3 = 32 * (*(a2 + 128) <= a3);
  if (*(a2 + 4 * (v3 | 0x10)) <= a3)
  {
    v3 = (32 * (*(a2 + 128) <= a3)) | 0x10;
  }

  if (*(a2 + 4 * (v3 | 8)) <= a3)
  {
    v3 |= 8u;
  }

  if (*(a2 + 4 * (v3 | 4)) <= a3)
  {
    v3 |= 4u;
  }

  if (*(a2 + 4 * (v3 + 2)) <= a3)
  {
    v3 += 2;
  }

  if (*(a2 + 4 * (v3 + 1)) <= a3)
  {
    ++v3;
  }

  v4 = v3 - (*(a2 + 4 * v3) > a3);
  if (v4 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a2 + 4 * v4) == a3)
  {
    return v4;
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1952E5CB8(uint64_t a1, int a2)
{
  ++*(a1 + 24);
  result = sub_1952E5C28(a1, *(a1 + 16), a2);
  if ((result & 0x80000000) == 0)
  {
    ++*(a1 + 28);
  }

  return result;
}

uint64_t sub_1952E5D00(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  if (v2 >= *(a2 + 2))
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *a2;
  *(a1 + 32) = v2 + 1;
  return *(v3 + v2);
}

uint64_t sub_1952E5D2C(uint64_t a1, uint64_t a2)
{
  result = (*(*a1 + 16))(a1);
  if ((result & 0x80000000) == 0)
  {
    v5 = 0;
    do
    {
      v6 = *(a1 + 40);
      v7 = *(v6 + result);
      if (*(v6 + result))
      {
        v8 = v7 == 32;
        if (((v7 == 32) & v5) != 0)
        {
          v5 = 1;
        }

        else
        {
          v9 = *(a1 + 8);
          v10 = v7 & 0xFF0000FF | (*(a1 + 8) << 8);
          *(a1 + 8) = v10;
          sub_1952E5CB8(a1, v10);
          v5 = v8;
        }
      }

      result = (*(*a1 + 16))(a1, a2);
    }

    while ((result & 0x80000000) == 0);
  }

  return result;
}

uint64_t sub_1952E5DF0(uint64_t a1)
{
  (*(*a1 + 24))(a1);
  v2 = *(a1 + 8);
  v3 = (*(a1 + 8) << 8) | 0x20;
  *(a1 + 8) = v3;
  sub_1952E5CB8(a1, v3);
  v4 = *(a1 + 28) / *(a1 + 24);
  if (v4 <= 0.33)
  {
    return (v4 * 300.0);
  }

  else
  {
    return 98;
  }
}

uint64_t sub_1952E5E98(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  if (v2 < *(a2 + 2))
  {
    v3 = *a2;
    if (*(*a2 + v2))
    {
      v4 = *(*a2 + v2) & 0xFE;
      switch(v4)
      {
        case 178:
          v5 = 71;
          break;
        case 184:
          v5 = 86;
          break;
        case 180:
          v5 = 73;
          break;
        default:
          *(a1 + 48) = 0;
          v6 = byte_195489DD0[*(v3 + v2)];
          goto LABEL_12;
      }

      *(a1 + 48) = v5;
      v6 = 177;
LABEL_12:
      *(a1 + 32) = v2 + 1;
      return v6;
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1952E5F1C(uint64_t a1, uint64_t a2)
{
  result = (*(*a1 + 16))(a1);
  if ((result & 0x80000000) == 0)
  {
    v5 = 0;
    do
    {
      v6 = *(a1 + 40);
      v7 = *(v6 + result);
      if (*(v6 + result))
      {
        v8 = v7 == 32;
        if (((v7 == 32) & v5) != 0)
        {
          v5 = 1;
        }

        else
        {
          v9 = *(a1 + 8);
          v10 = v7 & 0xFF0000FF | (*(a1 + 8) << 8);
          *(a1 + 8) = v10;
          sub_1952E5CB8(a1, v10);
          v5 = v8;
        }
      }

      if (*(a1 + 48))
      {
        v11 = *(a1 + 40);
        v12 = *(a1 + 48);
        v13 = *(v11 + v12);
        if (*(v11 + v12))
        {
          v14 = v13 == 32;
          if (((v13 == 32) & v5) != 0)
          {
            v5 = 1;
          }

          else
          {
            v15 = *(a1 + 8);
            v16 = v13 & 0xFF0000FF | (*(a1 + 8) << 8);
            *(a1 + 8) = v16;
            sub_1952E5CB8(a1, v16);
            v5 = v14;
          }
        }
      }

      result = (*(*a1 + 16))(a1, a2);
    }

    while ((result & 0x80000000) == 0);
  }

  return result;
}

uint64_t sub_1952E6050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = 0u;
  v5[1] = 0;
  v5[0] = &unk_1F0938F00;
  v5[2] = a3;
  v7 = a4;
  DWORD2(v6) = 0;
  LODWORD(v6) = 0;
  return sub_1952E5DF0(v5);
}

void sub_1952E60B4(uint64_t a1)
{
  nullsub_17(a1);

  JUMPOUT(0x19A8B2600);
}

BOOL sub_1952E60EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 24))
  {
    v6 = "windows-1252";
  }

  else
  {
    v6 = "ISO-8859-1";
  }

  v7 = -1;
  v8 = &unk_1E740C240;
  v9 = 10;
  do
  {
    v10 = v8[32];
    v11 = (*(*a1 + 40))(a1, a2, v8, "                                       ");
    if (v11 > v7)
    {
      v12 = v11;
      sub_1952E4D20(a3, a2, a1, v11, v6, v10);
      v7 = v12;
    }

    v8 += 33;
    --v9;
  }

  while (v9);
  if (v7 <= 9 && *(a2 + 25))
  {
    v7 = 15;
    sub_1952E4D20(a3, a2, a1, 15, v6, 0);
  }

  return v7 > 0;
}

void sub_1952E6220(uint64_t a1)
{
  nullsub_17(a1);

  JUMPOUT(0x19A8B2600);
}

BOOL sub_1952E6258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 24))
  {
    v6 = "windows-1250";
  }

  else
  {
    v6 = "ISO-8859-2";
  }

  v7 = -1;
  v8 = &unk_1E740CC90;
  v9 = 4;
  do
  {
    v10 = v8[32];
    v11 = (*(*a1 + 40))(a1, a2, v8, "                                       ");
    if (v11 > v7)
    {
      v12 = v11;
      sub_1952E4D20(a3, a2, a1, v11, v6, v10);
      v7 = v12;
    }

    v8 += 33;
    --v9;
  }

  while (v9);
  return v7 > 0;
}

void sub_1952E6368(uint64_t a1)
{
  nullsub_17(a1);

  JUMPOUT(0x19A8B2600);
}

BOOL sub_1952E63AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(*a1 + 40))(a1, a2, &unk_19548A0D0, "                                       ");
  sub_1952E4D20(a3, a2, a1, v6, 0, 0);
  return v6 > 0;
}

void sub_1952E6448(uint64_t a1)
{
  nullsub_17(a1);

  JUMPOUT(0x19A8B2600);
}

BOOL sub_1952E648C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(*a1 + 40))(a1, a2, &unk_19548A2D0, "                                       ");
  sub_1952E4D20(a3, a2, a1, v6, 0, 0);
  return v6 > 0;
}

void sub_1952E6528(uint64_t a1)
{
  nullsub_17(a1);

  JUMPOUT(0x19A8B2600);
}

BOOL sub_1952E656C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 24))
  {
    v6 = "windows-1253";
  }

  else
  {
    v6 = "ISO-8859-7";
  }

  v7 = (*(*a1 + 40))(a1);
  sub_1952E4D20(a3, a2, a1, v7, v6, "el");
  return v7 > 0;
}

void sub_1952E6630(uint64_t a1)
{
  nullsub_17(a1);

  JUMPOUT(0x19A8B2600);
}

BOOL sub_1952E6680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 24))
  {
    v6 = "windows-1255";
  }

  else
  {
    v6 = "ISO-8859-8-I";
  }

  v7 = (*(*a1 + 40))(a1);
  sub_1952E4D20(a3, a2, a1, v7, v6, "he");
  return v7 > 0;
}

void sub_1952E6738(uint64_t a1)
{
  nullsub_17(a1);

  JUMPOUT(0x19A8B2600);
}

BOOL sub_1952E677C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 24))
  {
    v6 = "windows-1255";
  }

  else
  {
    v6 = "ISO-8859-8";
  }

  v7 = (*(*a1 + 40))(a1);
  sub_1952E4D20(a3, a2, a1, v7, v6, "he");
  return v7 > 0;
}

void sub_1952E6840(uint64_t a1)
{
  nullsub_17(a1);

  JUMPOUT(0x19A8B2600);
}

BOOL sub_1952E6884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 24))
  {
    v6 = "windows-1254";
  }

  else
  {
    v6 = "ISO-8859-9";
  }

  v7 = (*(*a1 + 40))(a1);
  sub_1952E4D20(a3, a2, a1, v7, v6, "tr");
  return v7 > 0;
}

void sub_1952E693C(uint64_t a1)
{
  nullsub_17(a1);

  JUMPOUT(0x19A8B2600);
}

BOOL sub_1952E698C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(*a1 + 40))(a1, a2, &unk_19548ABD0, "                                       ");
  sub_1952E4D20(a3, a2, a1, v6, 0, 0);
  return v6 > 0;
}

void sub_1952E6A1C(uint64_t a1)
{
  nullsub_17(a1);

  JUMPOUT(0x19A8B2600);
}

BOOL sub_1952E6A6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(*a1 + 40))(a1, a2, &unk_19548ADD0, "                                       ");
  sub_1952E4D20(a3, a2, a1, v6, 0, 0);
  return v6 > 0;
}

void sub_1952E6AFC(uint64_t a1)
{
  nullsub_17(a1);

  JUMPOUT(0x19A8B2600);
}

BOOL sub_1952E6B4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(*a1 + 40))(a1, a2, &unk_19548AFD0, "                                       ");
  sub_1952E4D20(a3, a2, a1, v6, 0, 0);
  return v6 > 0;
}

void sub_1952E6BE8(uint64_t a1)
{
  nullsub_17(a1);

  JUMPOUT(0x19A8B2600);
}

BOOL sub_1952E6C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(*a1 + 40))(a1, a2, &unk_19548B1D0, "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ABCDEFGHI@@@@@@@QRSTUVWXY@@@@@@@@bcdefghi@@@@@@@q@@@@@@@@@@@");
  sub_1952E4D20(a3, a2, a1, v6, 0, 0);
  return v6 > 0;
}

void sub_1952E6CBC(uint64_t a1)
{
  nullsub_17(a1);

  JUMPOUT(0x19A8B2600);
}

BOOL sub_1952E6D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(*a1 + 40))(a1, a2, &unk_19548B3D0, "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ABCDEFGHI@@@@@@@QRSTUVWXY@@@@@@@@bcdefghi@@@@@@@q@@@@@@@@@@@");
  sub_1952E4D20(a3, a2, a1, v6, 0, 0);
  return v6 > 0;
}

uint64_t sub_1952E6D98(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5[1] = 0;
  v6 = 0u;
  v5[2] = a3;
  v7 = a4;
  LODWORD(v6) = 0;
  v5[0] = &unk_1F0938F30;
  return sub_1952E5DF0(v5);
}

void sub_1952E6DF8(uint64_t a1)
{
  nullsub_17(a1);

  JUMPOUT(0x19A8B2600);
}

BOOL sub_1952E6E3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(*a1 + 40))(a1, a2, &unk_19548B4D0, &unk_19548B5D0);
  sub_1952E4D20(a3, a2, a1, v6, 0, 0);
  return v6 > 0;
}

void sub_1952E6ECC(uint64_t a1)
{
  nullsub_17(a1);

  JUMPOUT(0x19A8B2600);
}

BOOL sub_1952E6F10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(*a1 + 40))(a1, a2, &unk_19548B6D0, &unk_19548B5D0);
  sub_1952E4D20(a3, a2, a1, v6, 0, 0);
  return v6 > 0;
}

void sub_1952E6FA0(uint64_t a1)
{
  nullsub_17(a1);

  JUMPOUT(0x19A8B2600);
}

BOOL sub_1952E6FE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 48);
  if (v3 >= 30)
  {
    v4 = 30;
  }

  else
  {
    v4 = *(a2 + 48);
  }

  if (v3 < 2)
  {
    v7 = 10;
  }

  else
  {
    v5 = 0;
    v6 = v4 - 1;
    v7 = 10;
    while (1)
    {
      v8 = __rev16(*(*(a2 + 40) + v5));
      if (!v5 && v8 == 65279)
      {
        break;
      }

      v9 = v8 - 32 < 0xE0 || v8 == 10;
      v10 = v7 + 10;
      if (!v9)
      {
        v10 = v7;
      }

      v11 = v7 - 10;
      if (v8)
      {
        v11 = v10;
      }

      if (v11 >= 100)
      {
        v11 = 100;
      }

      v7 = v11 & ~(v11 >> 31);
      if (v7)
      {
        v5 += 2;
        if (v7 != 100 && v6 > v5)
        {
          continue;
        }
      }

      goto LABEL_26;
    }

    v7 = 100;
  }

LABEL_26:
  if (v7 < 0x64 && v3 < 4)
  {
    v14 = 0;
  }

  else
  {
    v14 = v7;
  }

  sub_1952E4D20(a3, a2, a1, v14, 0, 0);
  return v14 != 0;
}

void sub_1952E70C8(uint64_t a1)
{
  nullsub_17(a1);

  JUMPOUT(0x19A8B2600);
}

BOOL sub_1952E710C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 48);
  if (v3 >= 30)
  {
    v4 = 30;
  }

  else
  {
    v4 = *(a2 + 48);
  }

  if (v3 < 2)
  {
    v8 = 10;
  }

  else
  {
    v5 = 0;
    v6 = *(a2 + 40);
    v7 = v4 - 1;
    v8 = 10;
    while (1)
    {
      v9 = *(v6 + v5);
      if (!v5 && v9 == 65279)
      {
        break;
      }

      v10 = (v9 - 32) < 0xE0 || v9 == 10;
      v11 = v8 + 10;
      if (!v10)
      {
        v11 = v8;
      }

      v12 = v8 - 10;
      if (*(v6 + v5))
      {
        v12 = v11;
      }

      if (v12 >= 100)
      {
        v12 = 100;
      }

      v8 = v12 & ~(v12 >> 31);
      if (v8)
      {
        v5 += 2;
        if (v8 != 100 && v7 > v5)
        {
          continue;
        }
      }

      goto LABEL_25;
    }

    if (v3 < 4)
    {
      v8 = 100;
    }

    else
    {
      v8 = 100;
      if (!*(v6 + 2))
      {
        if (*(v6 + 3))
        {
          v8 = 100;
        }

        else
        {
          v8 = 0;
        }
      }
    }
  }

LABEL_25:
  if (v8 < 0x64 && v3 < 4)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  sub_1952E4D20(a3, a2, a1, v15, 0, 0);
  return v15 != 0;
}

BOOL sub_1952E720C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 48);
  v6 = v5 + 3;
  if (v5 >= 0)
  {
    v6 = *(a2 + 48);
  }

  if (v5 < 4)
  {
    v17 = 0;
    v16 = 0;
  }

  else
  {
    v21 = a3;
    v7 = *(a2 + 40);
    v8 = v6 & 0xFFFFFFFC;
    v9 = (*(*a1 + 40))(a1, v7, 0);
    v10 = 0;
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = (*(*a1 + 40))(a1, v7, v11);
      v14 = v13 > 0x10FFFE || (v13 & 0x1FF800) == 55296;
      v15 = v14;
      if (v14)
      {
        ++v12;
      }

      v10 += v15 ^ 1;
      v11 = (v11 + 4);
    }

    while (v11 < v8);
    a3 = v21;
    if (v9 == 65279 && !v12)
    {
      goto LABEL_16;
    }

    if (v9 == 65279 && v10 > 10 * v12)
    {
      v16 = 80;
      goto LABEL_21;
    }

    if (v10 >= 4 && v12 == 0)
    {
LABEL_16:
      v16 = 100;
LABEL_21:
      v17 = 1;
      goto LABEL_22;
    }

    if (v10 <= 10 * v12)
    {
      v20 = 0;
    }

    else
    {
      v20 = 25;
    }

    v17 = v10 != 0 && v12 == 0 || v10 > 10 * v12;
    if (v10 != 0 && v12 == 0)
    {
      v16 = 80;
    }

    else
    {
      v16 = v20;
    }
  }

LABEL_22:
  sub_1952E4D20(a3, a2, a1, v16, 0, 0);
  return v17;
}

void sub_1952E73C4(uint64_t a1)
{
  nullsub_17(a1);

  JUMPOUT(0x19A8B2600);
}

void sub_1952E7418(uint64_t a1)
{
  nullsub_17(a1);

  JUMPOUT(0x19A8B2600);
}

void sub_1952E7468(uint64_t a1)
{
  nullsub_17(a1);

  JUMPOUT(0x19A8B2600);
}

BOOL sub_1952E74AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 40);
  v4 = *(a2 + 48);
  if (v4 < 3)
  {
    if (v4 < 1)
    {
      v15 = 1;
      goto LABEL_47;
    }

    goto LABEL_6;
  }

  if (*v3 != 239 || v3[1] != 187)
  {
LABEL_6:
    v5 = 0;
    goto LABEL_7;
  }

  v5 = v3[2] == 191;
LABEL_7:
  LODWORD(v6) = 0;
  v7 = 0;
  v8 = 0;
  do
  {
    v9 = v3[v6];
    if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    if ((v9 & 0xE0) == 0xC0)
    {
      v10 = 1;
    }

    else if ((v9 & 0xF0) == 0xE0)
    {
      v10 = 2;
    }

    else
    {
      if ((v9 & 0xF8) != 0xF0)
      {
LABEL_22:
        ++v7;
        goto LABEL_9;
      }

      v10 = 3;
    }

    v11 = v6 + v10;
    v6 = v6 + 1;
    while (v6 < v4)
    {
      if ((v3[v6] & 0xC0) != 0x80)
      {
        goto LABEL_22;
      }

      ++v6;
      if (!--v10)
      {
        ++v8;
        LODWORD(v6) = v11;
        break;
      }
    }

LABEL_9:
    LODWORD(v6) = v6 + 1;
  }

  while (v6 < v4);
  if (v7)
  {
    v12 = 0;
  }

  else
  {
    v12 = v5;
  }

  if (v12)
  {
LABEL_27:
    v13 = 100;
    goto LABEL_33;
  }

  if (v8 <= 10 * v7 || !v5)
  {
    if (v8 >= 4 && !v7)
    {
      goto LABEL_27;
    }

    if (v8 < 1 || v7)
    {
      if (v8 | v7)
      {
        v15 = v8 > 10 * v7;
      }

      else
      {
        v15 = 1;
      }

      if (v8 <= 10 * v7)
      {
        v13 = 0;
      }

      else
      {
        v13 = 25;
      }

      if (v8 | v7)
      {
        goto LABEL_48;
      }

LABEL_47:
      v13 = 15;
      goto LABEL_48;
    }
  }

  v13 = 80;
LABEL_33:
  v15 = 1;
LABEL_48:
  sub_1952E4D20(a3, a2, a1, v13, 0, 0);
  return v15;
}

void icu::CurrencyAmount::CurrencyAmount(double a1)
{
  v2 = *MEMORY[0x1E69E9840];
  icu::Formattable::Formattable(v1, a1);
  operator new();
}

void *icu::CurrencyAmount::CurrencyAmount(icu::CurrencyAmount *this, const icu::CurrencyAmount *a2)
{
  result = icu::Measure::Measure(this, a2);
  *result = &unk_1F0939788;
  return result;
}

{
  result = icu::Measure::Measure(this, a2);
  *result = &unk_1F0939788;
  return result;
}

void icu::CurrencyAmount::~CurrencyAmount(icu::CurrencyAmount *this)
{
  icu::Measure::~Measure(this);

  JUMPOUT(0x19A8B2600);
}

void *sub_1952E7928(uint64_t a1, const char **a2, UErrorCode *a3)
{
  result = icu::MeasureFormat::MeasureFormat(a1, a2, 0, a3);
  *result = &unk_1F09397D0;
  return result;
}

void sub_1952E7968(icu::MeasureFormat *a1)
{
  icu::MeasureFormat::~MeasureFormat(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_1952E79FC(icu::MeasureFormat *a1)
{
  v1 = *(*icu::MeasureFormat::getCurrencyFormatInternal(a1) + 40);

  return v1();
}

icu::UObject *sub_1952E7A74(icu::MeasureFormat *a1, uint64_t a2, icu::Formattable *a3, uint64_t a4)
{
  CurrencyFormatInternal = icu::MeasureFormat::getCurrencyFormatInternal(a1);
  result = (*(*CurrencyFormatInternal + 176))(CurrencyFormatInternal, a2, a4);
  if (result)
  {

    return icu::Formattable::adoptObject(a3, result);
  }

  return result;
}

icu::CurrencyPluralInfo *icu::CurrencyPluralInfo::CurrencyPluralInfo(icu::CurrencyPluralInfo *this, UErrorCode *a2)
{
  *this = &unk_1F0939838;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  Default = icu::Locale::getDefault(this);
  icu::CurrencyPluralInfo::initialize(this, Default, a2);
  return this;
}

{
  *this = &unk_1F0939838;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  Default = icu::Locale::getDefault(this);
  icu::CurrencyPluralInfo::initialize(this, Default, a2);
  return this;
}

uint64_t icu::CurrencyPluralInfo::initialize(uint64_t this, const icu::Locale *a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    v4 = this;
    v5 = *(this + 24);
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    *(v4 + 24) = 0;
    v6 = *(v4 + 16);
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    *(v4 + 16) = 0;
    icu::Locale::clone(a2);
  }

  return this;
}

icu::CurrencyPluralInfo *icu::CurrencyPluralInfo::CurrencyPluralInfo(icu::CurrencyPluralInfo *this, const icu::Locale *a2, UErrorCode *a3)
{
  *this = &unk_1F0939838;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  icu::CurrencyPluralInfo::initialize(this, a2, a3);
  return this;
}

{
  *this = &unk_1F0939838;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  icu::CurrencyPluralInfo::initialize(this, a2, a3);
  return this;
}

uint64_t icu::CurrencyPluralInfo::CurrencyPluralInfo(uint64_t this, uint64_t a2)
{
  *this = &unk_1F0939838;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return icu::CurrencyPluralInfo::operator=(this, a2);
}

{
  *this = &unk_1F0939838;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return icu::CurrencyPluralInfo::operator=(this, a2);
}

uint64_t icu::CurrencyPluralInfo::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 32);
    *(a1 + 32) = v4;
    if (v4 <= 0)
    {
      icu::CurrencyPluralInfo::deleteHash(a1, *(a1 + 8));
      inited = icu::CurrencyPluralInfo::initHash(v5, (a1 + 32));
      *(a1 + 8) = inited;
      icu::CurrencyPluralInfo::copyHash(inited, *(a2 + 8), inited, (a1 + 32));
      if (*(a1 + 32) <= 0)
      {
        v7 = *(a1 + 16);
        if (v7)
        {
          (*(*v7 + 8))(v7);
        }

        *(a1 + 16) = 0;
        v8 = *(a1 + 24);
        if (v8)
        {
          (*(*v8 + 8))(v8);
        }

        *(a1 + 24) = 0;
        v9 = *(a2 + 16);
        if (v9)
        {
          icu::PluralRules::clone(v9);
        }

        v10 = *(a2 + 24);
        if (v10)
        {
          icu::Locale::clone(v10);
        }
      }
    }
  }

  return a1;
}

void icu::CurrencyPluralInfo::deleteHash(uint64_t a1, uint64_t **a2)
{
  if (a2)
  {
    v5 = -1;
    while (1)
    {
      v3 = uhash_nextElement(*a2, &v5);
      if (!v3)
      {
        break;
      }

      v4 = *(v3 + 8);
      if (v4)
      {
        (*(*v4 + 8))(v4);
      }
    }

    if (*a2)
    {
      uhash_close(*a2);
    }

    MEMORY[0x19A8B2600](a2, 0x10A0C40DD2A5DBALL);
  }
}

uint64_t icu::CurrencyPluralInfo::initHash(icu::CurrencyPluralInfo *this, UErrorCode *a2)
{
  if (*a2 <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::CurrencyPluralInfo::copyHash(uint64_t a1, uint64_t **a2, uint64_t a3, int *a4)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*a4 <= 0)
  {
    v8 = -1;
    if (a2)
    {
      v5 = uhash_nextElement(*a2, &v8);
      if (v5)
      {
        v7 = *(v5 + 8);
        v6 = *(v5 + 16);
        operator new();
      }
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

void icu::CurrencyPluralInfo::~CurrencyPluralInfo(uint64_t ***this)
{
  *this = &unk_1F0939838;
  icu::CurrencyPluralInfo::deleteHash(this, this[1]);
  this[1] = 0;
  v2 = this[2];
  if (v2)
  {
    ((*v2)[1])(v2);
  }

  v3 = this[3];
  if (v3)
  {
    ((*v3)[1])(v3);
  }

  this[2] = 0;
  this[3] = 0;

  icu::UObject::~UObject(this);
}

{
  icu::CurrencyPluralInfo::~CurrencyPluralInfo(this);

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::CurrencyPluralInfo::operator==(uint64_t a1, uint64_t a2)
{
  result = (*(**(a1 + 16) + 24))(*(a1 + 16), *(a2 + 16));
  if (result)
  {
    result = icu::Locale::operator==(*(a1 + 24), *(a2 + 24));
    if (result)
    {
      return uhash_equals(**(a1 + 8), **(a2 + 8)) != 0;
    }
  }

  return result;
}

icu::UnicodeString *icu::CurrencyPluralInfo::getCurrencyPluralPattern(icu::CurrencyPluralInfo *this, const icu::UnicodeString *a2, icu::UnicodeString *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = uhash_get(**(this + 1), a2);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v8 = *(a2 + 4);
    v9 = v8;
    v10 = v8 >> 5;
    if (v9 >= 0)
    {
      v11 = v10;
    }

    else
    {
      v11 = *(a2 + 3);
    }

    if (!icu::UnicodeString::doCompare(a2, 0, v11, L"other", 0, 5) || (v12 = *(this + 1), v17 = L"other", icu::UnicodeString::UnicodeString(v18, 1, &v17), v7 = uhash_get(*v12, v18), icu::UnicodeString::~UnicodeString(v13, v18), !v7))
    {
      sub_1951D6EE0(v18, a0_1);
      icu::UnicodeString::operator=(a3, v18);
      icu::UnicodeString::~UnicodeString(v14, v18);
      goto LABEL_10;
    }
  }

  icu::UnicodeString::operator=(a3, v7);
LABEL_10:
  v15 = *MEMORY[0x1E69E9840];
  return a3;
}

uint64_t icu::CurrencyPluralInfo::setPluralRules(uint64_t this, const icu::UnicodeString *a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    v5 = this;
    v6 = *(this + 16);
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    this = icu::PluralRules::createRules(a2, a3, a3);
    *(v5 + 16) = this;
  }

  return this;
}

uint64_t icu::CurrencyPluralInfo::setCurrencyPluralPattern(uint64_t this, const icu::UnicodeString *a2, const icu::UnicodeString *a3, UErrorCode *a4)
{
  if (*a4 <= 0)
  {
    v4 = uhash_get(**(this + 8), a2);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    operator new();
  }

  return this;
}

void icu::CurrencyPluralInfo::setupCurrencyPluralPattern(uint64_t ***this, char **a2, UErrorCode *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  if (*a3 > 0)
  {
    goto LABEL_51;
  }

  icu::CurrencyPluralInfo::deleteHash(this, this[1]);
  this[1] = icu::CurrencyPluralInfo::initHash(v6, a3);
  if (*a3 > 0)
  {
    goto LABEL_51;
  }

  Instance = icu::NumberingSystem::createInstance(a2, a3, v7);
  v9 = *a3;
  if (!Instance && v9 <= U_ZERO_ERROR)
  {
    *a3 = U_MEMORY_ALLOCATION_ERROR;
    goto LABEL_51;
  }

  if (v9 <= U_ZERO_ERROR)
  {
    v35 = U_ZERO_ERROR;
    v10 = ures_open(0, a2[5], &v35);
    v11 = ures_getByKeyWithFallback(v10, "NumberElements", 0, &v35);
    Name = icu::NumberingSystem::getName(Instance);
    ures_getByKeyWithFallback(v11, Name, v10, &v35);
    ures_getByKeyWithFallback(v10, "patterns", v10, &v35);
    v34 = 0;
    StringByKeyWithFallback = ures_getStringByKeyWithFallback(v10, "decimalFormat", &v34, &v35);
    v14 = v35;
    if (v35 == U_MISSING_RESOURCE_ERROR)
    {
      v15 = icu::NumberingSystem::getName(Instance);
      if (strcmp(v15, "latn"))
      {
        v35 = U_ZERO_ERROR;
        ures_getByKeyWithFallback(v11, "latn", v10, &v35);
        ures_getByKeyWithFallback(v10, "patterns", v10, &v35);
        StringByKeyWithFallback = ures_getStringByKeyWithFallback(v10, "decimalFormat", &v34, &v35);
      }

      v14 = v35;
    }

    if (v14 > U_ZERO_ERROR)
    {
      if (v14 == U_MEMORY_ALLOCATION_ERROR)
      {
        *a3 = U_MEMORY_ALLOCATION_ERROR;
      }

LABEL_45:
      if (v11)
      {
        ures_close(v11);
      }

      if (v10)
      {
        ures_close(v10);
      }

      goto LABEL_49;
    }

    v16 = v34 - 1;
    if (v34 >= 1)
    {
      v17 = 0;
      v18 = StringByKeyWithFallback + 1;
      do
      {
        v19 = *(v18 - 1);
        ++v17;
        ++v18;
        --v16;
      }

      while (v34 != v17);
    }

    v32 = ures_open("icudt76l-curr", a2[5], &v35);
    v20 = ures_getByKeyWithFallback(v32, "CurrencyUnitPatterns", 0, &v35);
    Keywords = icu::PluralRules::getKeywords(this[2], &v35);
    v22 = Keywords;
    v23 = v35;
    if (Keywords || v35 > U_ZERO_ERROR)
    {
      if (v35 <= U_ZERO_ERROR)
      {
        v30 = v11;
        v24 = (*(*Keywords + 40))(Keywords, 0, &v35);
        if (v24)
        {
          v25 = v24;
          v31 = v20;
          while (1)
          {
            v23 = v35;
            if (v35 > U_ZERO_ERROR)
            {
              break;
            }

            v33 = 0;
            v26 = ures_getStringByKeyWithFallback(v20, v25, &v33 + 1, &v33);
            v23 = v33;
            if (v33 == 7 || v26 == 0)
            {
              v35 = v33;
              v11 = v30;
              v20 = v31;
              goto LABEL_37;
            }

            if (v33 <= 0 && SHIDWORD(v33) >= 1)
            {
              operator new();
            }

            v25 = (*(*v22 + 40))(v22, 0, &v35);
            v20 = v31;
            if (!v25)
            {
              goto LABEL_34;
            }
          }
        }

        else
        {
LABEL_34:
          v23 = v35;
        }

        v11 = v30;
      }

LABEL_37:
      if (v23 != U_MEMORY_ALLOCATION_ERROR)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v35 = U_MEMORY_ALLOCATION_ERROR;
    }

    *a3 = U_MEMORY_ALLOCATION_ERROR;
LABEL_39:
    if (v22)
    {
      (*(*v22 + 8))(v22);
    }

    if (v20)
    {
      ures_close(v20);
    }

    if (v32)
    {
      ures_close(v32);
    }

    goto LABEL_45;
  }

LABEL_49:
  if (Instance)
  {
    (*(*Instance + 8))(Instance);
  }

LABEL_51:
  v29 = *MEMORY[0x1E69E9840];
}

icu::UnicodeString *sub_1952E8E98(uint64_t a1, icu::UnicodeString *a2, icu::UnicodeString *a3)
{
  if (*(a1 + 8) < 0)
  {
    v4 = *(a1 + 12);
  }

  else
  {
    v4 = *(a1 + 8) >> 5;
  }

  v5 = *(a2 + 4);
  v6 = v5;
  v7 = v5 >> 5;
  if (v6 >= 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = *(a2 + 3);
  }

  v9 = *(a3 + 4);
  v10 = v9;
  v11 = v9 >> 5;
  if (v10 < 0)
  {
    v11 = *(a3 + 3);
  }

  return icu::UnicodeString::findAndReplace(a1, 0, v4, a2, 0, v8, a3, 0, v11);
}

BOOL sub_1952E8F18(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    return *(a2 + 8) & 1;
  }

  if ((v2 & 0x8000) != 0)
  {
    v3 = *(a1 + 12);
  }

  else
  {
    v3 = v2 >> 5;
  }

  v4 = 0;
  v5 = *(a2 + 8);
  if ((v5 & 0x8000u) == 0)
  {
    v6 = v5 >> 5;
  }

  else
  {
    v6 = *(a2 + 12);
  }

  if ((v5 & 1) == 0 && v3 == v6)
  {
    if ((v5 & 2) != 0)
    {
      v7 = (a2 + 10);
    }

    else
    {
      v7 = *(a2 + 24);
    }

    return icu::UnicodeString::doEquals(a1, v7, v3);
  }

  return v4;
}

void ****sub_1952E8F9C(void ****a1)
{
  v2 = *a1;
  if (*a1)
  {
    if (*v2)
    {
      uhash_close(*v2);
    }

    MEMORY[0x19A8B2600](v2, 0x10A0C40DD2A5DBALL);
  }

  return a1;
}

uint64_t icu::CurrencyUnit::CurrencyUnit(uint64_t a1, _WORD **a2, int *a3)
{
  *icu::MeasureUnit::MeasureUnit(a1) = &unk_1F0939878;
  if (*a3 > 0)
  {
    goto LABEL_2;
  }

  v7 = *a2;
  if (!*a2 || !*v7)
  {
    goto LABEL_2;
  }

  if (!v7[1] || !v7[2])
  {
    v9 = 1;
LABEL_13:
    *a3 = v9;
LABEL_2:
    *(a1 + 20) = 0x5800580058;
    goto LABEL_3;
  }

  if (!uprv_isInvariantUString(v7, 3))
  {
    v9 = 26;
    goto LABEL_13;
  }

  for (i = 0; i != 3; ++i)
  {
    *(a1 + 20 + i * 2) = u_asciiToUpper((*a2)[i]);
  }

  *(a1 + 26) = 0;
LABEL_3:
  *__s = 0;
  u_UCharsToChars((a1 + 20), __s, 4);
  icu::StringPiece::StringPiece(&v10, __s);
  icu::MeasureUnit::initCurrency(a1, v10, v11);
  return a1;
}

uint64_t icu::CurrencyUnit::CurrencyUnit(uint64_t a1, char *a2, int a3, int *a4)
{
  *icu::MeasureUnit::MeasureUnit(a1) = &unk_1F0939878;
  v14 = 0;
  if (a3 != 3 || memchr(a2, 0, 3uLL))
  {
    v8 = 1;
LABEL_4:
    *a4 = v8;
    v9 = "XXX";
    goto LABEL_5;
  }

  if (!uprv_isInvariantString(a2, 3))
  {
    v8 = 26;
    goto LABEL_4;
  }

  for (i = 0; i != 3; ++i)
  {
    *(&v14 + i) = uprv_toupper(a2[i]);
  }

  HIBYTE(v14) = 0;
  v9 = &v14;
LABEL_5:
  u_charsToUChars(v9, (a1 + 20), 4);
  icu::StringPiece::StringPiece(&v12, v9);
  icu::MeasureUnit::initCurrency(a1, v12, v13);
  return a1;
}

icu::CurrencyUnit *icu::CurrencyUnit::CurrencyUnit(icu::CurrencyUnit *this, const UChar *a2)
{
  v4 = icu::MeasureUnit::MeasureUnit(this, a2);
  *v4 = &unk_1F0939878;
  u_strcpy((v4 + 20), a2 + 10);
  return this;
}

{
  v4 = icu::MeasureUnit::MeasureUnit(this, a2);
  *v4 = &unk_1F0939878;
  u_strcpy((v4 + 20), a2 + 10);
  return this;
}

icu::CurrencyUnit *icu::CurrencyUnit::CurrencyUnit(icu::CurrencyUnit *this, const icu::MeasureUnit *a2, UErrorCode *a3)
{
  v5 = icu::MeasureUnit::MeasureUnit(this, a2);
  *v5 = &unk_1F0939878;
  v6 = (v5 + 20);
  Type = icu::MeasureUnit::getType(v5);
  if (!strcmp("currency", Type))
  {
    Subtype = icu::MeasureUnit::getSubtype(this);
    u_charsToUChars(Subtype, v6, 4);
    *(this + 13) = 0;
  }

  else
  {
    *a3 = U_ILLEGAL_ARGUMENT_ERROR;
    *v6 = 0;
  }

  return this;
}

icu::CurrencyUnit *icu::CurrencyUnit::CurrencyUnit(icu::CurrencyUnit *this)
{
  v2 = icu::MeasureUnit::MeasureUnit(this);
  *v2 = &unk_1F0939878;
  v3 = (v2 + 20);
  u_strcpy((v2 + 20), "X");
  *__s = 0;
  u_UCharsToChars(v3, __s, 4);
  icu::StringPiece::StringPiece(&v5, __s);
  icu::MeasureUnit::initCurrency(this, v5, v6);
  return this;
}

uint64_t icu::CurrencyUnit::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    icu::MeasureUnit::operator=(a1, a2);
    u_strcpy((a1 + 20), (a2 + 20));
  }

  return a1;
}

void icu::CurrencyUnit::~CurrencyUnit(icu::CurrencyUnit *this)
{
  icu::MeasureUnit::~MeasureUnit(this);

  JUMPOUT(0x19A8B2600);
}

icu::ChineseCalendar *sub_1952E94D0(icu::ChineseCalendar *a1, char **a2, UErrorCode *a3)
{
  result = icu::ChineseCalendar::ChineseCalendar(a1, a2, a3);
  *result = &unk_1F09398C8;
  return result;
}

void sub_1952E9508(icu::ChineseCalendar *a1)
{
  icu::ChineseCalendar::~ChineseCalendar(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_1952E95A8(int *a1)
{
  if (*a1 <= 0)
  {
    if (atomic_load_explicit(&dword_1EAEC9C74, memory_order_acquire) != 2 && icu::umtx_initImplPreInit(&dword_1EAEC9C74))
    {
      sub_1952E9638();
    }

    if (dword_1EAEC9C78 >= 1)
    {
      *a1 = dword_1EAEC9C78;
    }
  }

  return qword_1EAEC9C58;
}

void sub_1952E9638()
{
  v3 = *MEMORY[0x1E69E9840];
  v2 = 0xC280C00C2C600000;
  v1 = 0xC280854EA3000000;
  v0 = 0xC27A9DE23F800000;
  operator new();
}

uint64_t sub_1952E9998(_BYTE *a1, UErrorCode *a2)
{
  v3 = icu::Calendar::get(a1, 0x13u, a2);
  v5 = v3;
  if (*a2 > 0)
  {
    return 0;
  }

  if (!uprv_add32_overflow(v3, -2333, &v5))
  {
    return v5;
  }

  result = 0;
  *a2 = U_ILLEGAL_ARGUMENT_ERROR;
  return result;
}

uint64_t sub_1952E9A14@<X0>(int *a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = -2332;
  result = sub_1952E95A8(a1);
  *(a2 + 8) = result;
  *(a2 + 16) = &qword_1EAEC9C60;
  *(a2 + 24) = &qword_1EAEC9C68;
  return result;
}

uint64_t sub_1952E9A74()
{
  if (qword_1EAEC9C60)
  {
    (*(*qword_1EAEC9C60 + 8))(qword_1EAEC9C60);
    qword_1EAEC9C60 = 0;
  }

  if (qword_1EAEC9C68)
  {
    (*(*qword_1EAEC9C68 + 8))(qword_1EAEC9C68);
    qword_1EAEC9C68 = 0;
  }

  if (qword_1EAEC9C58)
  {
    (*(*qword_1EAEC9C58 + 8))(qword_1EAEC9C58);
    qword_1EAEC9C58 = 0;
  }

  atomic_store(0, &dword_1EAEC9C74);
  return 1;
}

void sub_1952E9B3C(uint64_t a1)
{
  *a1 = &unk_1F0939AC8;
  icu::UnicodeString::~UnicodeString((a1 + 24));

  icu::SharedObject::~SharedObject(a1);
}

void sub_1952E9B90(uint64_t a1)
{
  *a1 = &unk_1F0939AC8;
  icu::UnicodeString::~UnicodeString((a1 + 24));
  icu::SharedObject::~SharedObject(a1);

  JUMPOUT(0x19A8B2600);
}

void sub_1952E9C08(uint64_t a1)
{
  *a1 = &unk_1F0939AF0;
  icu::UnicodeString::~UnicodeString((a1 + 240));
  *a1 = &unk_1F0939CB0;
  icu::Locale::~Locale((a1 + 16));

  icu::CacheKeyBase::~CacheKeyBase(a1);
}

void sub_1952E9C84(uint64_t a1)
{
  sub_1952E9C08(a1);

  JUMPOUT(0x19A8B2600);
}

void *icu::DateFormat::DateFormat(icu::DateFormat *this)
{
  result = icu::Format::Format(this);
  *result = &unk_1F0939B40;
  result[41] = 0;
  result[42] = 0;
  result[43] = 0x10000000000;
  return result;
}

void *icu::DateFormat::DateFormat(icu::DateFormat *this, const icu::DateFormat *a2)
{
  v3 = icu::Format::Format(this, a2);
  *v3 = &unk_1F0939B40;
  v3[41] = 0;
  v3[42] = 0;
  v3[43] = 0x10000000000;

  return icu::DateFormat::operator=(v3, a2);
}

void *icu::DateFormat::operator=(void *a1, void *a2)
{
  if (a1 != a2)
  {
    v4 = a1[41];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = a1[42];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = a2[41];
    if (v6)
    {
      v6 = (*(*v6 + 24))(v6);
    }

    a1[41] = v6;
    v7 = a2[42];
    if (v7)
    {
      v7 = (*(*v7 + 32))(v7);
    }

    a1[42] = v7;
    a1[43] = a2[43];
  }

  return a1;
}

void icu::DateFormat::~DateFormat(icu::DateFormat *this)
{
  *this = &unk_1F0939B40;
  v2 = *(this + 41);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 42);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  icu::Format::~Format(this);
}

uint64_t icu::DateFormat::operator==(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = icu::Format::operator==(a1, a2);
  if (result)
  {
    result = *(a1 + 328);
    if (result)
    {
      result = (*(*result + 40))(result, *(a2 + 328));
      if (result)
      {
        result = *(a1 + 336);
        if (result)
        {
          result = (*(*result + 24))(result, *(a2 + 336));
          if (result)
          {
            return *(a1 + 348) == *(a2 + 348);
          }
        }
      }
    }
  }

  return result;
}

icu::UnicodeString *icu::DateFormat::format(icu::DateFormat *this, const icu::Formattable *a2, icu::UnicodeString *a3, icu::FieldPosition *a4, UErrorCode *a5)
{
  if (*a5 <= 0)
  {
    Type = icu::Formattable::getType(a2);
    if (Type == 2)
    {
      v11 = *(a2 + 2);
    }

    else
    {
      if (Type > 1)
      {
        *a5 = U_ILLEGAL_ARGUMENT_ERROR;
        return a3;
      }

      v11 = *(a2 + 1);
    }

    icu::DateFormat::format(this, v11, a3, a4);
  }

  return a3;
}

icu::UnicodeString *icu::DateFormat::format(icu::DateFormat *this, double a2, icu::UnicodeString *a3, icu::FieldPosition *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = *(this + 41);
  if (v6)
  {
    v14 = U_ZERO_ERROR;
    v9 = (*(*v6 + 184))(v6);
    if (!strcmp(v9, "gregorian"))
    {
      bzero(v15, 0x2A0uLL);
      icu::GregorianCalendar::GregorianCalendar(v15, *(this + 41));
      icu::Calendar::setTimeInMillis(v15, a2, &v14);
      if (v14 <= U_ZERO_ERROR)
      {
        (*(*this + 64))(this, v15, a3, a4);
      }

      icu::GregorianCalendar::~GregorianCalendar(v15);
    }

    else
    {
      v10 = (*(**(this + 41) + 24))(*(this + 41));
      if (v10)
      {
        v11 = v10;
        icu::Calendar::setTimeInMillis(v10, a2, &v14);
        if (v14 <= U_ZERO_ERROR)
        {
          (*(*this + 64))(this, v11, a3, a4);
        }

        (*(*v11 + 8))(v11);
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return a3;
}

icu::UnicodeString *icu::DateFormat::format(icu::DateFormat *this, const icu::Formattable *a2, icu::UnicodeString *a3, icu::FieldPositionIterator *a4, UErrorCode *a5)
{
  if (*a5 <= 0)
  {
    Type = icu::Formattable::getType(a2);
    if (Type == 2)
    {
      v11 = *(a2 + 2);
    }

    else
    {
      if (Type > 1)
      {
        *a5 = U_ILLEGAL_ARGUMENT_ERROR;
        return a3;
      }

      v11 = *(a2 + 1);
    }

    icu::DateFormat::format(this, v11, a3, a4, a5);
  }

  return a3;
}

icu::UnicodeString *icu::DateFormat::format(icu::DateFormat *this, double a2, icu::UnicodeString *a3, icu::FieldPositionIterator *a4, UErrorCode *a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = *(this + 41);
  if (v7)
  {
    v16 = U_ZERO_ERROR;
    v11 = (*(*v7 + 184))(v7);
    if (!strcmp(v11, "gregorian"))
    {
      bzero(v17, 0x2A0uLL);
      icu::GregorianCalendar::GregorianCalendar(v17, *(this + 41));
      icu::Calendar::setTimeInMillis(v17, a2, &v16);
      if (v16 <= U_ZERO_ERROR)
      {
        (*(*this + 72))(this, v17, a3, a4, a5);
      }

      icu::GregorianCalendar::~GregorianCalendar(v17);
    }

    else
    {
      v12 = (*(**(this + 41) + 24))(*(this + 41));
      if (v12)
      {
        v13 = v12;
        icu::Calendar::setTimeInMillis(v12, a2, a5);
        if (*a5 <= 0)
        {
          (*(*this + 72))(this, v13, a3, a4, a5);
        }

        (*(*v13 + 8))(v13);
      }
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return a3;
}

uint64_t icu::DateFormat::format(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  result = a3;
  if (*a5 <= 0)
  {
    *a5 = 16;
  }

  return result;
}

icu::UnicodeString *icu::DateFormat::format(icu::DateFormat *this, double a2, icu::UnicodeString *a3)
{
  v5[2] = 0;
  v5[0] = &unk_1F093AD90;
  v5[1] = 0xFFFFFFFFLL;
  icu::DateFormat::format(this, a2, a3, v5);
  icu::FieldPosition::~FieldPosition(v5);
  return a3;
}

double icu::DateFormat::parse(icu::DateFormat *this, const icu::UnicodeString *a2, icu::ParsePosition *a3)
{
  v4 = *(this + 41);
  v5 = 0.0;
  if (v4)
  {
    v8 = (*(*v4 + 24))(v4);
    if (v8)
    {
      v9 = v8;
      v10 = *(a3 + 2);
      icu::Calendar::clear(v8);
      (*(*this + 88))(this, a2, v9, a3);
      if (*(a3 + 2) != v10)
      {
        v13 = U_ZERO_ERROR;
        v11.n128_f64[0] = icu::Calendar::getTimeInMillis(v9, &v13);
        if (v13 < U_ILLEGAL_ARGUMENT_ERROR)
        {
          v5 = v11.n128_f64[0];
        }

        else
        {
          *(a3 + 2) = v10;
          *(a3 + 3) = v10;
        }
      }

      (*(*v9 + 8))(v9, v11);
    }
  }

  return v5;
}

double icu::DateFormat::parse(icu::DateFormat *this, const icu::UnicodeString *a2, UErrorCode *a3)
{
  v3 = 0.0;
  if (*a3 <= 0)
  {
    v6 = &unk_1F0932C70;
    v7 = 0xFFFFFFFF00000000;
    v3 = icu::DateFormat::parse(this, a2, &v6);
    if (!v7)
    {
      *a3 = U_ILLEGAL_ARGUMENT_ERROR;
    }

    icu::ParsePosition::~ParsePosition(&v6);
  }

  return v3;
}

uint64_t icu::DateFormat::parseObject(icu::DateFormat *this, const icu::UnicodeString *a2, icu::Formattable *a3, icu::ParsePosition *a4)
{
  v5 = icu::DateFormat::parse(this, a2, a4);

  return icu::Formattable::setDate(a3, v5);
}

void icu::DateFormat::createDateTimeInstance(int a1, uint64_t a2)
{
  if (a1 == -1)
  {
    v3 = -1;
  }

  else
  {
    v3 = a1 + 4;
  }

  icu::DateFormat::create(a2, v3);
}

void icu::DateFormat::createDateInstance(int a1)
{
  if (a1 == -1)
  {
    v1 = -1;
  }

  else
  {
    v1 = a1 + 4;
  }

  icu::DateFormat::create(0xFFFFFFFFLL, v1);
}

void icu::DateFormat::create(uint64_t a1, int a2)
{
  v2 = U_ZERO_ERROR;
  if (a2 != -1 && ((a2 - 4) & 0x80) != 0)
  {
    operator new();
  }

  operator new();
}

void icu::DateFormat::createInstance(icu::DateFormat *this)
{
  icu::Locale::getDefault(this);

  icu::DateFormat::create(3, 7);
}

void icu::DateFormat::getBestPattern(icu::DateFormat *this@<X0>, UErrorCode *a2@<X1>, const icu::UnicodeString *a3@<X2>, uint64_t a4@<X8>)
{
  v13[38] = *MEMORY[0x1E69E9840];
  Instance = icu::UnifiedCache::getInstance(a3, a2);
  if (*a3 < 1)
  {
    v10 = Instance;
    memset(&v13[1], 0, 296);
    icu::Locale::Locale(&v13[2], this);
    v13[0] = &unk_1F0939AF0;
    icu::DateTimePatternGenerator::staticGetSkeleton(a2, &v13[30]);
    v12 = 0;
    sub_1952C1AD0(v10, v13, 0, &v12, a3);
    if (*a3 < 1)
    {
      *(a4 + 32) = 0u;
      *(a4 + 48) = 0u;
      *a4 = 0u;
      *(a4 + 16) = 0u;
      icu::UnicodeString::UnicodeString(a4, v12 + 3);
      icu::SharedObject::removeRef(v12);
    }

    else
    {
      *a4 = &unk_1F0935D00;
      *(a4 + 8) = 2;
    }

    sub_1952E9C08(v13);
  }

  else
  {
    *a4 = &unk_1F0935D00;
    *(a4 + 8) = 2;
  }

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t icu::DateFormat::createInstanceForSkeleton(icu::DateFormat *this, icu::Calendar *a2, const icu::UnicodeString *a3, UErrorCode *a4, UErrorCode *a5)
{
  v5 = this;
  v15 = *MEMORY[0x1E69E9840];
  if (*a4 > 0)
  {
    v6 = 0;
    if (!this)
    {
      goto LABEL_11;
    }

LABEL_9:
    (*(*v5 + 8))(v5, a2, a3);
    goto LABEL_11;
  }

  if (!this)
  {
    v6 = 0;
    *a4 = U_ILLEGAL_ARGUMENT_ERROR;
    goto LABEL_11;
  }

  memset(v14, 0, sizeof(v14));
  icu::Locale::Locale(v14, a3);
  v9 = (*(*v5 + 184))(v5);
  sub_1951DE32C(v14, "calendar", v9, a4);
  if (*a4 <= 0 && (InstanceForSkeleton = icu::DateFormat::createInstanceForSkeleton(a2, v14, a4, v10), *a4 <= 0))
  {
    v6 = InstanceForSkeleton;
    (*(*InstanceForSkeleton + 136))(InstanceForSkeleton, v5);
    v5 = 0;
  }

  else
  {
    v6 = 0;
  }

  icu::Locale::~Locale(v14);
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_11:
  v12 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t icu::DateFormat::createInstanceForSkeleton(icu::DateFormat *this, const icu::UnicodeString *a2, const icu::Locale *a3, UErrorCode *a4)
{
  v6 = *MEMORY[0x1E69E9840];
  if (*a3 <= 0)
  {
    operator new();
  }

  v4 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t icu::DateFormat::createInstanceForSkeleton(icu::DateFormat *this, const icu::UnicodeString *a2, UErrorCode *a3)
{
  Default = icu::Locale::getDefault(this);

  return icu::DateFormat::createInstanceForSkeleton(this, Default, a2, v6);
}

uint64_t icu::DateFormat::adoptCalendar(icu::DateFormat *this, icu::Calendar *a2)
{
  result = *(this + 41);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(this + 41) = a2;
  return result;
}

uint64_t icu::DateFormat::setCalendar(icu::DateFormat *this, const icu::Calendar *a2)
{
  v4 = *(this + 41);
  if (!v4 || (result = (*(*v4 + 40))(v4, a2), !result))
  {
    result = (*(*a2 + 24))(a2);
    if (result)
    {
      v6 = *(*this + 136);

      return v6(this, result);
    }
  }

  return result;
}

uint64_t icu::DateFormat::adoptNumberFormat(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 336);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  *(a1 + 336) = a2;
  (*(*a2 + 184))(a2, 1);
  v5 = *(*a2 + 208);

  return v5(a2, 0);
}

uint64_t icu::DateFormat::setNumberFormat(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2);
  if (result)
  {
    v4 = *(*a1 + 160);

    return v4(a1, result);
  }

  return result;
}

void *icu::DateFormat::adoptTimeZone(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 328);
  if (result)
  {
    return icu::Calendar::adoptTimeZone(result, a2);
  }

  return result;
}

uint64_t icu::DateFormat::setTimeZone(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 328);
  if (result)
  {
    return icu::Calendar::setTimeZone(result, a2);
  }

  return result;
}

uint64_t icu::DateFormat::getTimeZone(icu::DateFormat *this)
{
  v1 = *(this + 41);
  if (v1)
  {
    return icu::Calendar::getTimeZone(v1);
  }

  else
  {
    return icu::TimeZone::createDefault(0);
  }
}

uint64_t icu::DateFormat::setLenient(icu::DateFormat *this, uint64_t a2)
{
  v4 = *(this + 41);
  if (v4)
  {
    icu::Calendar::setLenient(v4, a2);
  }

  v6 = 0;
  (*(*this + 216))(this, 0, a2, &v6);
  return (*(*this + 216))(this, 1, a2, &v6);
}

uint64_t icu::DateFormat::isLenient(icu::DateFormat *this)
{
  v2 = *(this + 41);
  if (v2)
  {
    result = icu::Calendar::isLenient(v2);
    v4 = 0;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v4 = 0;
  }

  result = (*(*this + 224))(this, 0, &v4);
  if (result)
  {
    return (*(*this + 224))(this, 1, &v4) != 0;
  }

  return result;
}

uint64_t icu::DateFormat::setCalendarLenient(icu::DateFormat *this, char a2)
{
  result = *(this + 41);
  if (result)
  {
    return icu::Calendar::setLenient(result, a2);
  }

  return result;
}

icu::Calendar *icu::DateFormat::isCalendarLenient(icu::DateFormat *this)
{
  result = *(this + 41);
  if (result)
  {
    return icu::Calendar::isLenient(result);
  }

  return result;
}

uint64_t icu::DateFormat::setContext(uint64_t result, int a2, int *a3)
{
  if (*a3 <= 0)
  {
    if ((a2 & 0xFFFFFF00) == 0x100)
    {
      *(result + 348) = a2;
    }

    else
    {
      *a3 = 1;
    }
  }

  return result;
}

uint64_t icu::DateFormat::getContext(uint64_t a1, int a2, int *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  if (a2 == 1)
  {
    return *(a1 + 348);
  }

  result = 0;
  *a3 = 1;
  return result;
}

uint64_t icu::DateFormat::setBooleanAttribute(uint64_t result, char a2, unsigned int a3, _DWORD *a4)
{
  if (a3 < 2)
  {
    if (a3)
    {
      v4 = 1 << a2;
    }

    else
    {
      v4 = 0;
    }

    *(result + 344) = *(result + 344) & ~(1 << a2) | v4;
  }

  else
  {
    *a4 = 1;
  }

  return result;
}

uint64_t sub_1952EB2D0(uint64_t a1, uint64_t a2, const icu::Locale *a3)
{
  v7 = *MEMORY[0x1E69E9840];
  Instance = icu::DateTimePatternGenerator::createInstance((a1 + 16), a3, 0);
  if (*a3 <= 0)
  {
    operator new();
  }

  if (Instance)
  {
    (*(*Instance + 8))(Instance);
  }

  v5 = *MEMORY[0x1E69E9840];
  return 0;
}

char *sub_1952EB42C(uint64_t a1, char *__dst, int a3)
{
  result = strncpy(__dst, *(a1 + 56), a3);
  __dst[a3 - 1] = 0;
  return result;
}

BOOL sub_1952EB468(uint64_t a1, uint64_t a2)
{
  result = sub_1952C1D2C(a1, a2);
  if (result)
  {
    result = icu::Locale::operator==(a1 + 16, a2 + 16);
    if (result)
    {
      v5 = *(a1 + 248);
      if (v5)
      {
        return *(a2 + 248) & 1;
      }

      else
      {
        if ((v5 & 0x8000) != 0)
        {
          v6 = *(a1 + 252);
        }

        else
        {
          v6 = v5 >> 5;
        }

        result = 0;
        v7 = *(a2 + 248);
        if ((v7 & 0x8000u) == 0)
        {
          v8 = v7 >> 5;
        }

        else
        {
          v8 = *(a2 + 252);
        }

        if ((v7 & 1) == 0 && v6 == v8)
        {
          if ((v7 & 2) != 0)
          {
            v9 = (a2 + 250);
          }

          else
          {
            v9 = *(a2 + 264);
          }

          return icu::UnicodeString::doEquals(a1 + 240, v9, v6);
        }
      }
    }
  }

  return result;
}

void sub_1952EB510(uint64_t a1)
{
  *a1 = &unk_1F0939CB0;
  icu::Locale::~Locale((a1 + 16));

  icu::CacheKeyBase::~CacheKeyBase(a1);
}

void sub_1952EB564(uint64_t a1)
{
  *a1 = &unk_1F0939CB0;
  icu::Locale::~Locale((a1 + 16));
  icu::CacheKeyBase::~CacheKeyBase(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_1952EB5CC(uint64_t a1)
{
  v2 = strlen(("N3icu18DateFmtBestPatternE" & 0x7FFFFFFFFFFFFFFFLL));
  v3 = ustr_hashCharsN(("N3icu18DateFmtBestPatternE" & 0x7FFFFFFFFFFFFFFFLL), v2);
  return icu::Locale::hashCode((a1 + 16)) + 37 * v3;
}

BOOL sub_1952EB694(void *a1, void *a2)
{
  result = sub_1952C1D2C(a1, a2);
  if (result)
  {

    return icu::Locale::operator==((a1 + 2), (a2 + 2));
  }

  return result;
}

uint64_t sub_1952EB6E4(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = 0;
  *a1 = &unk_1F0939CB0;
  icu::Locale::Locale((a1 + 16), a2 + 16);
  *a1 = &unk_1F0939AF0;
  icu::UnicodeString::UnicodeString((a1 + 240), (a2 + 240));
  return a1;
}

void sub_1952EB768(icu::ResourceSink *a1)
{
  icu::ResourceSink::~ResourceSink(a1);

  JUMPOUT(0x19A8B2600);
}

void sub_1952EB7A4(icu::ResourceSink *a1)
{
  icu::ResourceSink::~ResourceSink(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_1952EB7DC()
{
  v0 = qword_1EAEC9C80;
  v1 = *(qword_1EAEC9C80 + 8);
  if (v1)
  {
    MEMORY[0x19A8B25E0](v1, 0x1000C8072A9A78DLL);
    v0 = qword_1EAEC9C80;
  }

  uhash_close(*v0);
  if (qword_1EAEC9C80)
  {
    MEMORY[0x19A8B2600](qword_1EAEC9C80, 0x1020C40EDCEB4C7);
  }

  qword_1EAEC9C80 = 0;
  return 1;
}

int *sub_1952EB84C(int *result)
{
  if (*result <= 0)
  {
    v5 = v2;
    v6 = v1;
    v7 = v3;
    v8 = v4;
    operator new();
  }

  return result;
}

uint64_t sub_1952EB9C0(icu::Locale *a1, int *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*a2 > 0)
  {
    goto LABEL_2;
  }

  if (atomic_load_explicit(&dword_1ED442BA0, memory_order_acquire) == 2 || !icu::umtx_initImplPreInit(&dword_1ED442BA0))
  {
    v5 = dword_1ED442BA4;
    if (dword_1ED442BA4 >= 1)
    {
      result = 0;
LABEL_8:
      *a2 = v5;
      goto LABEL_9;
    }
  }

  else
  {
    sub_1952EB84C(a2);
    dword_1ED442BA4 = *a2;
    icu::umtx_initImplPostInit(&dword_1ED442BA0);
  }

  if (*a2 > 0)
  {
LABEL_2:
    result = 0;
    goto LABEL_9;
  }

  BaseName = icu::Locale::getBaseName(a1);
  v21 = 0u;
  memset(v22, 0, sizeof(v22));
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  *__dst = 0u;
  if (strlen(BaseName) > 0x9C)
  {
    result = 0;
    v5 = 15;
    goto LABEL_8;
  }

  strcpy(__dst, BaseName);
  if (!__dst[0])
  {
    strcpy(__dst, "root");
  }

  while (1)
  {
    v8 = uhash_geti(*qword_1EAEC9C80, __dst);
    if (v8)
    {
      break;
    }

    v12 = 0u;
    v13 = 0u;
    *v10 = 0u;
    v11 = 0u;
    ulocimp_getParent(__dst, a2, v10);
    v9 = DWORD2(v13);
    if (DWORD2(v13))
    {
      icu::CharString::extract(v10, __dst, 157, a2);
    }

    if (BYTE4(v10[1]))
    {
      free(v10[0]);
    }

    result = 0;
    if (!v9 || !__dst[0])
    {
      goto LABEL_9;
    }
  }

  if (v8 < 1)
  {
    goto LABEL_2;
  }

  if (*(*(qword_1EAEC9C80 + 8) + 100 * v8 + 4) == -1)
  {
    result = 0;
  }

  else
  {
    result = *(qword_1EAEC9C80 + 8) + 100 * v8;
  }

LABEL_9:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

double sub_1952EBB9C(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = -1.0;
  if (*a3 <= 0)
  {
    v7 = sub_1952EBC38(a1, a2, a3);
    v8 = sub_1952EBCD0(a1, a2, a3);
    if (*a3 <= 0)
    {
      v3 = vcvtd_n_f64_s32(v8 + v7, 1uLL);
      if (v7 > v8)
      {
        v3 = v3 + 12.0;
        if (v3 >= 24.0)
        {
          return v3 + -24.0;
        }
      }
    }
  }

  return v3;
}

uint64_t sub_1952EBC38(uint64_t a1, uint64_t a2, int *a3)
{
  if (*a3 > 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a2)
  {
    return a2;
  }

  if (a2 == 1)
  {
    return 12;
  }

  v4 = a1 + 4;
  if (*(a1 + 4) == a2 && *(a1 + 96) == a2)
  {
    result = 23;
    while (1)
    {
      v5 = result - 1;
      if (*(v4 + 4 * (result - 1)) != a2)
      {
        break;
      }

      result = (result - 1);
      if (v5 <= 1)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
    result = 0;
    while (*(v4 + 4 * result) != a2)
    {
      if (++result == 24)
      {
LABEL_17:
        *a3 = 1;
        return 0xFFFFFFFFLL;
      }
    }
  }

  return result;
}

uint64_t sub_1952EBCD0(uint64_t a1, uint64_t a2, int *a3)
{
  if (*a3 > 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      return 12;
    }

    else if (*(a1 + 4) == a2 && *(a1 + 96) == a2)
    {
      v4 = 2;
      while (*(a1 + 4 * v4) == a2)
      {
        if (++v4 == 24)
        {
          goto LABEL_16;
        }
      }

      return (v4 - 1);
    }

    else
    {
      v5 = 24;
      while (*(a1 + 4 + 4 * (v5 - 1)) != a2)
      {
        v5 = (v5 - 1);
        if (!v5)
        {
LABEL_16:
          *a3 = 1;
          return 0xFFFFFFFFLL;
        }
      }

      return v5;
    }
  }

  return a2;
}

uint64_t sub_1952EBD70(const char *a1)
{
  result = strcmp(a1, "midnight");
  if (result)
  {
    if (!strcmp(a1, "noon"))
    {
      return 1;
    }

    if (!strcmp(a1, "morning1"))
    {
      return 2;
    }

    if (!strcmp(a1, "afternoon1"))
    {
      return 3;
    }

    if (!strcmp(a1, "evening1"))
    {
      return 4;
    }

    if (!strcmp(a1, "night1"))
    {
      return 5;
    }

    if (!strcmp(a1, "morning2"))
    {
      return 6;
    }

    if (!strcmp(a1, "afternoon2"))
    {
      return 7;
    }

    if (!strcmp(a1, "evening2"))
    {
      return 8;
    }

    if (!strcmp(a1, "night2"))
    {
      return 9;
    }

    v3 = *a1;
    if (v3 == 112)
    {
      if (a1[1] == 109)
      {
        v4 = 11;
LABEL_26:
        if (a1[2])
        {
          return 0xFFFFFFFFLL;
        }

        else
        {
          return v4;
        }
      }
    }

    else if (v3 == 97 && a1[1] == 109)
    {
      v4 = 10;
      goto LABEL_26;
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}