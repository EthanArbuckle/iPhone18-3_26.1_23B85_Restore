uint64_t icu::SimpleDateFormat::isSyntaxChar(unsigned int a1)
{
  if (a1 > 0x7F)
  {
    return 0;
  }

  else
  {
    return byte_195492D64[a1];
  }
}

uint64_t icu::SimpleDateFormat::getLevelFromChar(unsigned int a1)
{
  if (a1 > 0x7F)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return dword_195492B64[a1];
  }
}

uint64_t sub_1953D0AB0(char **a1, const icu::Locale *a2, UErrorCode *a3)
{
  Instance = icu::NumberFormat::createInstance(a1, a2, a3);
  if (*a2 <= 0)
  {
    (*(*Instance + 288))(Instance);
    operator new();
  }

  return 0;
}

void icu::SimpleDateFormat::zeroPaddingNumber(icu::SimpleDateFormat *this, uint64_t (***lpsrc)(const icu::NumberFormat *), icu::UnicodeString *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v48 = *MEMORY[0x1E69E9840];
  if (*(this + 42) == lpsrc && *(this + 101))
  {
    v26 = U_ZERO_ERROR;
    v47 = 0;
    memset(v46, 0, sizeof(v46));
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
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v27 = 0u;
    sub_1952FDFB0(&v27);
    icu::number::impl::DecimalQuantity::setToLong(v46, a4);
    v24 = 0;
    v25 = 0;
    icu::number::SimpleNumber::SimpleNumber(&v24, &v27, &v26);
    icu::number::SimpleNumber::setMinimumIntegerDigits(&v24, a5, &v26);
    icu::number::SimpleNumber::setMaximumIntegerDigits(&v24, a6, &v26);
    v21 = 0;
    v22 = 0;
    v15 = *(this + 101);
    v19 = v24;
    v20 = v25;
    v23 = 0;
    v24 = 0;
    icu::number::SimpleNumberFormatter::format(v15, &v19, &v26, &v21);
    icu::number::SimpleNumber::cleanup(&v19);
    if (v26 < U_ILLEGAL_ARGUMENT_ERROR)
    {
      v18[0] = &unk_1F0935D68;
      v18[1] = a3;
      icu::number::FormattedNumber::appendTo(&v21, v18, &v26);
      v22 = 0;
      icu::UnicodeStringAppendable::~UnicodeStringAppendable(v18);
    }

    else
    {
      v22 = 0;
    }

    icu::number::FormattedNumber::~FormattedNumber(&v21);
    icu::number::SimpleNumber::cleanup(&v24);
    icu::number::impl::UFormattedNumberData::~UFormattedNumberData(&v27);
  }

  else if (lpsrc)
  {
    v11 = *lpsrc;
    v12 = **lpsrc;
    *&v28 = 0;
    *&v27 = &unk_1F093AD90;
    *(&v27 + 1) = 0xFFFFFFFFLL;
    if (v13)
    {
      (*(*v13 + 88))(v13, a4, a3, &v27);
    }

    else
    {
      v16 = v11[4](lpsrc);
      (*(*v16 + 224))(v16, a5);
      (*(*v16 + 216))(v16, a6);
      (*(*v16 + 88))(v16, a4, a3, &v27);
      (*(*v16 + 8))(v16);
    }

    icu::FieldPosition::~FieldPosition(&v27);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void sub_1953D0EC0(icu::UnicodeString *this, unsigned int a2, uint64_t a3, int a4, icu::UnicodeString *a5, UErrorCode *a6)
{
  v19 = *MEMORY[0x1E69E9840];
  if ((a2 & 0x80000000) != 0 || a2 >= a4)
  {
    goto LABEL_5;
  }

  if (a5)
  {
    v17[1] = &unk_1F0935D00;
    v18 = 2;
    icu::SimpleFormatter::applyPatternMinMaxArguments(v17, a5, 1, 1, 0, a6);
    icu::SimpleFormatter::format(v17, (a3 + (a2 << 6)), this, a6);
    icu::SimpleFormatter::~SimpleFormatter(v17);
LABEL_5:
    v10 = *MEMORY[0x1E69E9840];
    return;
  }

  v11 = a3 + (a2 << 6);
  v12 = *(v11 + 8);
  v13 = v12;
  v14 = v12 >> 5;
  if (v13 >= 0)
  {
    v15 = v14;
  }

  else
  {
    v15 = *(v11 + 12);
  }

  v16 = *MEMORY[0x1E69E9840];

  icu::UnicodeString::doAppend(this, v11, 0, v15);
}

uint64_t icu::SimpleDateFormat::tzFormat(icu::SimpleDateFormat *this, UErrorCode *a2)
{
  umtx_lock(&unk_1ED443060);
  v5 = *(this + 97);
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = *a2 <= U_ZERO_ERROR;
  }

  if (v6)
  {
    icu::TimeZoneFormat::createInstance((this + 544), a2, v4);
  }

  umtx_unlock(&unk_1ED443060);
  return v5;
}

uint64_t sub_1953D1078(icu::UnicodeString *a1, uint64_t a2, int a3, uint64_t a4)
{
  v4 = (a3 - a2);
  v5 = *(a4 + 8);
  v6 = v5;
  v7 = v5 >> 5;
  if (v6 >= 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = *(a4 + 12);
  }

  return icu::UnicodeString::doReplace(a1, a2, v4, a4, 0, v8);
}

char **icu::SimpleDateFormat::adoptNumberFormat(icu::SimpleDateFormat *this, icu::NumberFormat *a2)
{
  v4 = *(this + 101);
  if (v4)
  {
    icu::number::SimpleNumberFormatter::cleanup(*(this + 101));
    MEMORY[0x19A8B2600](v4, 0x1020C40E72D6CFBLL);
  }

  *(this + 101) = 0;
  (*(*a2 + 288))(a2);
  v5 = *(this + 42);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *(this + 42) = a2;
  v6 = *(this + 100);
  if (v6)
  {
    sub_1953CB7D4(v6);
    *(this + 100) = 0;
  }

  v8 = U_ZERO_ERROR;
  return icu::SimpleDateFormat::initSimpleNumberFormatter(this, &v8);
}

uint64_t icu::SimpleDateFormat::adoptNumberFormat(icu::SimpleDateFormat *this, const icu::UnicodeString *a2, icu::NumberFormat *a3, UErrorCode *a4)
{
  (*(*a3 + 288))(a3);
  if (*a4 <= 0)
  {
    if (!*(this + 100))
    {
      v9 = malloc_type_malloc(0x130uLL, 0x6004044C4A2DFuLL);
      if (!v9)
      {
        *(this + 100) = 0;
        *a4 = U_MEMORY_ALLOCATION_ERROR;
        goto LABEL_2;
      }

      v9[17] = 0u;
      v9[18] = 0u;
      v9[15] = 0u;
      v9[16] = 0u;
      v9[13] = 0u;
      v9[14] = 0u;
      v9[11] = 0u;
      v9[12] = 0u;
      v9[9] = 0u;
      v9[10] = 0u;
      v9[7] = 0u;
      v9[8] = 0u;
      v9[5] = 0u;
      v9[6] = 0u;
      v9[3] = 0u;
      v9[4] = 0u;
      v9[1] = 0u;
      v9[2] = 0u;
      *v9 = 0u;
      *(this + 100) = v9;
    }

    (*(*a3 + 288))(a3);
    operator new();
  }

LABEL_2:
  v7 = *(*a3 + 8);

  return v7(a3);
}

uint64_t icu::SimpleDateFormat::getNumberFormatForField(uint64_t a1, unsigned int a2)
{
  PatternCharIndex = icu::DateFormatSymbols::getPatternCharIndex(a2);
  if (PatternCharIndex == 38)
  {
    return 0;
  }

  v5 = *(a1 + 800);
  if (v5 && (v6 = *(v5 + 8 * PatternCharIndex)) != 0)
  {
    v7 = v6 + 24;
  }

  else
  {
    v7 = a1 + 336;
  }

  return *v7;
}

uint64_t icu::SimpleDateFormat::isAtNumericField(icu::SimpleDateFormat *this, const icu::UnicodeString *a2)
{
  v2 = a2;
  v4 = *(this + 4);
  if (*(this + 4) < 0)
  {
    v5 = *(this + 3);
  }

  else
  {
    v5 = v4 >> 5;
  }

  if (v5 <= a2)
  {
    return 0;
  }

  if (v5 <= a2)
  {
    v7 = 0xFFFF;
  }

  else
  {
    v6 = (v4 & 2) != 0 ? (this + 10) : *(this + 3);
    v7 = *(v6 + a2);
  }

  PatternCharIndex = icu::DateFormatSymbols::getPatternCharIndex(v7);
  if (PatternCharIndex == 38)
  {
    return 0;
  }

  v10 = 0;
  v11 = *(this + 4);
  if ((v11 & 0x8000u) == 0)
  {
    v12 = v11 >> 5;
  }

  else
  {
    v12 = *(this + 3);
  }

  if ((v11 & 2) != 0)
  {
    v13 = this + 10;
  }

  else
  {
    v13 = *(this + 3);
  }

  v14 = &v13[2 * v2 + 2];
  do
  {
    if (v12 <= v2 + 1 + v10)
    {
      v15 = 0xFFFF;
    }

    else
    {
      v15 = *(v14 + 2 * v10);
    }

    ++v10;
  }

  while (v15 == v7);

  return icu::DateFormatSymbols::isNumericField(PatternCharIndex, v10);
}

BOOL icu::SimpleDateFormat::isAfterNonNumericField(icu::SimpleDateFormat *this, const icu::UnicodeString *a2)
{
  v2 = a2 - 1;
  if (a2 < 1)
  {
    return 0;
  }

  v3 = a2;
  v5 = *(this + 4);
  v6 = (v5 & 0x8000u) == 0 ? v5 >> 5 : *(this + 3);
  if (v6 <= v2)
  {
    v8 = 0xFFFF;
  }

  else
  {
    v7 = (v5 & 2) != 0 ? (this + 10) : *(this + 3);
    v8 = *(v7 + v2);
  }

  PatternCharIndex = icu::DateFormatSymbols::getPatternCharIndex(v8);
  if (PatternCharIndex == 38)
  {
    return 0;
  }

  v11 = 0;
  v12 = *(this + 4);
  if ((v12 & 0x8000u) == 0)
  {
    v13 = v12 >> 5;
  }

  else
  {
    v13 = *(this + 3);
  }

  if ((v12 & 2) != 0)
  {
    v14 = this + 10;
  }

  else
  {
    v14 = *(this + 3);
  }

  v15 = &v14[2 * v2 - 2];
  do
  {
    if (v13 <= v3 - 2 + v11)
    {
      v16 = 0xFFFF;
    }

    else
    {
      v16 = *(v15 + 2 * v11);
    }

    --v11;
  }

  while (v16 == v8);
  return icu::DateFormatSymbols::isNumericField(PatternCharIndex, -v11) == 0;
}

void icu::SimpleDateFormat::parse(icu::SimpleDateFormat *this, const icu::UnicodeString *a2, icu::Calendar *a3, icu::ParsePosition *a4)
{
  v4 = *(a4 + 2);
  v110[0] = v4;
  if ((v4 & 0x80000000) != 0)
  {
    *(a4 + 3) = 0;
    return;
  }

  v98 = v4;
  v109 = -1;
  v108 = 0;
  v106 = 0;
  v107 = -1;
  if (*(this + 41) == a3 || (v8 = (*(*a3 + 184))(a3), v9 = (*(**(this + 41) + 184))(*(this + 41)), !strcmp(v8, v9)))
  {
    v13 = 0;
    v11 = a3;
  }

  else
  {
    v10 = (*(**(this + 41) + 24))(*(this + 41));
    if (!v10)
    {
      goto LABEL_174;
    }

    v11 = v10;
    TimeInMillis = icu::Calendar::getTimeInMillis(a3, v110 + 1);
    icu::Calendar::setTimeInMillis(v11, TimeInMillis, v110 + 1);
    if (v110[0] > 0)
    {
      v13 = v11;
      goto LABEL_172;
    }

    TimeZone = icu::Calendar::getTimeZone(a3);
    icu::Calendar::setTimeZone(v11, TimeZone);
    v13 = v11;
  }

  v14 = *(this + 96);
  if (*(v14 + 472) && *(v14 + 480) >= 7)
  {
    operator new();
  }

  v97 = a3;
  v15 = 0;
  v101 = 0;
  v96 = 0;
  v16 = -1;
  v100 = v11;
  v102 = a2;
  while (1)
  {
    LODWORD(v104[0]) = v15;
    v17 = *(this + 180);
    if ((v17 & 0x8000) != 0)
    {
      break;
    }

    if (v15 >= (v17 >> 5))
    {
      goto LABEL_81;
    }

    v18 = v17 >> 5;
    if (v18 <= v15)
    {
      goto LABEL_34;
    }

LABEL_17:
    v19 = this + 362;
    if ((v17 & 2) == 0)
    {
      v19 = *(this + 47);
    }

    v20 = *&v19[2 * v15];
    if (v20 <= 0x7F && byte_195492D64[v20])
    {
      v103 = v16;
      v21 = 0;
      v22 = v15;
      for (i = 0xFFFFFFFF00000000 * v15; ; i -= 0x100000000)
      {
        v24 = v15 + 1 + v21;
        if ((v17 & 0x8000) != 0)
        {
          v25 = *(this + 91);
          if (v24 >= v25)
          {
            break;
          }
        }

        else
        {
          v25 = v17 >> 5;
          if (v24 >= (v17 >> 5))
          {
            break;
          }
        }

        if (v25 <= v15 + v21 + 1)
        {
          v27 = 0xFFFF;
        }

        else
        {
          v26 = this + 362;
          if ((v17 & 2) == 0)
          {
            v26 = *(this + 47);
          }

          v27 = *&v26[2 * v15 + 2 + 2 * v21];
        }

        if (v27 != v20)
        {
          break;
        }

        ++v21;
        ++v22;
      }

      v31 = v21 + v15;
      LODWORD(v104[0]) = v21 + v15;
      v32 = v31 + 1;
      if (!icu::DateFormatSymbols::isNumericPatternChar(v20, v21 + 1))
      {
        v103 = -1;
        goto LABEL_44;
      }

      if (v103 < 0)
      {
        if (!icu::SimpleDateFormat::isAtNumericField((this + 352), (v31 + 1)))
        {
          goto LABEL_44;
        }

        v96 = v110[0];
        if (v15 < 0)
        {
          v101 = 0;
          v103 = v15;
LABEL_44:
          if (v20 == 108)
          {
            v11 = v100;
            a2 = v102;
            v16 = v103;
            goto LABEL_36;
          }

          v11 = v100;
          v35 = icu::SimpleDateFormat::subParse(this, v102, v110, v20, v21 + 1, 0, 1u, &v108, &v107, v100, v31, 0, &v106, &v109);
          v36 = v110[0];
          if ((LODWORD(v110[0]) ^ v35) == 0xFFFFFFFF)
          {
            v37 = *(this + 180);
            if (*(this + 180) < 0)
            {
              v38 = *(this + 91);
              if (v38 <= v32)
              {
                goto LABEL_49;
              }
            }

            else
            {
              if (v32 >= (v37 >> 5))
              {
                goto LABEL_49;
              }

              v38 = v37 >> 5;
            }

            if (v38 <= v32)
            {
              v40 = 0xFFFFLL;
            }

            else
            {
              v39 = this + 362;
              if ((v37 & 2) == 0)
              {
                v39 = *(this + 47);
              }

              v40 = *&v39[(0x100000000 - i) >> 31];
            }

            v16 = v103;
            if (icu::PatternProps::isWhiteSpace(v40))
            {
              v41 = v22 + 2;
              a2 = v102;
              do
              {
                v42 = v41;
                if (*(this + 180) < 0)
                {
                  v43 = *(this + 91);
                  if (v41 >= v43)
                  {
                    break;
                  }
                }

                else
                {
                  if (v41 >= (*(this + 180) >> 5))
                  {
                    break;
                  }

                  v43 = *(this + 180) >> 5;
                }

                if (v43 <= v41)
                {
                  v45 = 0xFFFFLL;
                }

                else
                {
                  v44 = this + 362;
                  if ((*(this + 180) & 2) == 0)
                  {
                    v44 = *(this + 47);
                  }

                  v45 = *&v44[2 * v41];
                }

                ++v41;
              }

              while (icu::PatternProps::isWhiteSpace(v45));
              LODWORD(v31) = v42 - 1;
              LODWORD(v104[0]) = v42 - 1;
            }

            else
            {
              a2 = v102;
            }
          }

          else
          {
            if (v35 < 1)
            {
LABEL_92:
              HIDWORD(v110[0]) = 9;
              v50 = v97;
              goto LABEL_168;
            }

            v36 = v35;
LABEL_49:
            a2 = v102;
            v16 = v103;
          }

          LODWORD(v110[0]) = v36;
          goto LABEL_36;
        }

        v101 = 0;
        v16 = v15;
      }

      else
      {
        v16 = v103;
      }

      v11 = v100;
      a2 = v102;
      if (v15 == v16)
      {
        if (v21 - v101 == -1)
        {
          HIDWORD(v110[0]) = 9;
          v50 = v97;
          goto LABEL_168;
        }

        v33 = v101 + 1;
        v34 = v21 - v101 + 1;
      }

      else
      {
        v33 = v101;
        v34 = v21 + 1;
      }

      v101 = v33;
      LODWORD(v110[0]) = icu::SimpleDateFormat::subParse(this, v102, v110, v20, v34, 1u, 0, &v108, &v107, v100, v31, 0, &v106, 0);
      if ((v110[0] & 0x80000000) != 0)
      {
        LODWORD(v31) = v16 - 1;
        LODWORD(v104[0]) = v16 - 1;
        LODWORD(v110[0]) = v96;
      }
    }

    else
    {
LABEL_34:
      v28 = (*(*this + 224))(this, 0, v110 + 4);
      v29 = (*(*this + 224))(this, 2, v110 + 4);
      v30 = (*(*this + 96))(this);
      if (!icu::SimpleDateFormat::matchLiterals((this + 352), v104, a2, v110, v28, v29, v30))
      {
        goto LABEL_92;
      }

      v16 = -1;
      LODWORD(v31) = v104[0];
    }

LABEL_36:
    v15 = v31 + 1;
  }

  v18 = *(this + 91);
  if (v15 < v18)
  {
    goto LABEL_17;
  }

LABEL_81:
  v46 = v110[0];
  v47 = *(a2 + 4);
  if ((v47 & 0x8000u) == 0)
  {
    v48 = v47 >> 5;
  }

  else
  {
    v48 = *(a2 + 3);
  }

  if (v48 <= LODWORD(v110[0]))
  {
    v50 = v97;
  }

  else
  {
    if ((v47 & 2) != 0)
    {
      v49 = a2 + 10;
    }

    else
    {
      v49 = *(a2 + 3);
    }

    v50 = v97;
    if (*&v49[2 * SLODWORD(v110[0])] == 46 && (*(*this + 224))(this, 0, v110 + 4))
    {
      v51 = *(this + 180) < 0 ? *(this + 91) : (*(this + 180) >> 5);
      if (icu::SimpleDateFormat::isAfterNonNumericField((this + 352), v51))
      {
        LODWORD(v110[0]) = ++v46;
      }
    }
  }

  v52 = v109;
  if ((v109 & 0x80000000) == 0)
  {
    v53 = sub_1952EB9C0((this + 544), v110 + 1);
    if (icu::Calendar::isSet(v50, 0xAu) || icu::Calendar::isSet(v50, 0xBu))
    {
      if (icu::Calendar::isSet(v50, 0xBu))
      {
        v54 = icu::Calendar::get(v50, 0xBu, v110 + 1);
        if (!v54)
        {
LABEL_114:
          v62 = v50;
          v63 = 11;
          v64 = v54;
          goto LABEL_115;
        }
      }

      else
      {
        v56 = icu::Calendar::get(v50, 0xAu, v110 + 1);
        if (v56)
        {
          v54 = v56;
        }

        else
        {
          v54 = 12;
        }
      }

      if ((v54 - 13) <= 0xA)
      {
        goto LABEL_114;
      }

      v57 = icu::Calendar::get(v50, 0xCu, v110 + 1);
      v58 = sub_1952EBB9C(v53, v52, v110 + 1);
      if (SHIDWORD(v110[0]) <= 0)
      {
        if (v54 == 12)
        {
          v59 = 0;
        }

        else
        {
          v59 = v54;
        }

        v60 = v57 / 60.0 + v59 - v58;
        v61 = v60 >= -6.0 && v60 < 6.0;
        v62 = v50;
        v63 = 9;
        v64 = !v61;
        goto LABEL_115;
      }
    }

    else
    {
      v83 = sub_1952EBB9C(v53, v52, v110 + 1);
      if (SHIDWORD(v110[0]) <= 0)
      {
        if (v83 <= v83)
        {
          v84 = 0;
        }

        else
        {
          v84 = 30;
        }

        icu::Calendar::set(v50, 0xBu, v83);
        v62 = v50;
        v63 = 12;
        v64 = v84;
LABEL_115:
        icu::Calendar::set(v62, v63, v64);
      }
    }
  }

  *(a4 + 2) = v46;
  v65 = v106;
  if (v108 || v106)
  {
    if (!v108)
    {
      goto LABEL_124;
    }

    v66 = (*(*v50 + 24))(v50);
    if (!v66)
    {
      goto LABEL_134;
    }

    v67 = v66;
    v68.n128_f64[0] = icu::Calendar::getTimeInMillis(v66, v110 + 1);
    if (*(this + 816) && v68.n128_f64[0] < *(this + 98))
    {
      icu::Calendar::set(v50, 1u, *(this + 199) + 100);
    }

    (*(*v67 + 8))(v67, v68);
    v65 = v106;
LABEL_124:
    if (!v65)
    {
      goto LABEL_168;
    }

    v69 = (*(*v50 + 24))(v50);
    if (!v69)
    {
LABEL_134:
      HIDWORD(v110[0]) = 7;
      goto LABEL_168;
    }

    v70 = v69;
    v71 = icu::Calendar::getTimeZone(v50);
    v72 = *v71;
    v73 = **v71;
    {
      v77 = v71;
    }

    else
    {
      v77 = 0;
    }

    icu::Calendar::set(v70, 0xFu, 0);
    icu::Calendar::set(v70, 0x10u, 0);
    v78 = icu::Calendar::getTimeInMillis(v70, v110 + 1);
    v79 = v78;
    v105 = 0;
    if (v77)
    {
      v80 = (*v77 + 160);
      if (v106 == 1)
      {
        v81 = 5;
        v82 = 13;
      }

      else
      {
        v81 = 7;
        v82 = 15;
      }

      (*(*v77 + 20))(v77, v81, v82, &v105 + 4, &v105, v110 + 4);
    }

    else
    {
      (*(*v71 + 6))(v71, 1, &v105 + 4, &v105, v110 + 4, v78);
    }

    if (v106 == 1)
    {
      v85 = 0;
    }

    else
    {
      v85 = v105;
      if (!v105)
      {
        if (v77)
        {
          v86 = v79 + SHIDWORD(v105);
          memset(v104, 0, sizeof(v104));
          icu::TimeZoneTransition::TimeZoneTransition(v104);
          if (v86 < v86 + 9.4608e11)
          {
            v87.n128_f64[0] = v86;
            do
            {
              if (!(*(*v77 + 14))(v77, 0, v104, v87))
              {
                break;
              }

              v88 = icu::TimeZoneTransition::getTo(v104);
              DSTSavings = icu::TimeZoneRule::getDSTSavings(v88);
              if (DSTSavings)
              {
                goto LABEL_161;
              }

              v87.n128_f64[0] = icu::TimeZoneTransition::getTime(v104);
            }

            while (v87.n128_f64[0] < v86 + 9.4608e11);
          }

          for (j = v86 + -9.4608e11; v86 > j; v86 = icu::TimeZoneTransition::getTime(v104) + -1.0)
          {
            if (!(*(*v77 + 15))(v77, 1, v104, v86))
            {
              break;
            }

            v91 = icu::TimeZoneTransition::getFrom(v104);
            DSTSavings = icu::TimeZoneRule::getDSTSavings(v91);
            if (DSTSavings)
            {
              goto LABEL_161;
            }
          }

          DSTSavings = (*(*v77 + 13))(v77);
LABEL_161:
          v92 = DSTSavings;
          icu::TimeZoneTransition::~TimeZoneTransition(v104);
        }

        else
        {
          v92 = (*(*v71 + 13))(v71);
        }

        if (v92)
        {
          v85 = v92;
        }

        else
        {
          v85 = 3600000;
        }
      }
    }

    icu::Calendar::set(v50, 0xFu, SHIDWORD(v105));
    icu::Calendar::set(v50, 0x10u, v85);
    (*(*v70 + 8))(v70);
  }

LABEL_168:
  if (v11 != v50 && SHIDWORD(v110[0]) <= 0)
  {
    v93 = icu::Calendar::getTimeZone(v11);
    icu::Calendar::setTimeZone(v50, v93);
    v94 = icu::Calendar::getTimeInMillis(v11, v110 + 1);
    icu::Calendar::setTimeInMillis(v50, v94, v110 + 1);
  }

  if (v13)
  {
LABEL_172:
    (*(*v13 + 8))(v13);
  }

  if (SHIDWORD(v110[0]) >= 1)
  {
LABEL_174:
    v95 = v110[0];
    *(a4 + 2) = v98;
    *(a4 + 3) = v95;
  }
}

uint64_t icu::SimpleDateFormat::subParse(icu::NumberFormat **a1, uint64_t a2, int *a3, unsigned int a4, int a5, unsigned int a6, unsigned int a7, BOOL *a8, int *a9, _BYTE *a10, int a11, uint64_t a12, uint64_t a13, int *a14)
{
  v234 = *MEMORY[0x1E69E9840];
  memset(v233, 0, sizeof(v233));
  icu::Formattable::Formattable(v233);
  v221 = U_ZERO_ERROR;
  v219 = &unk_1F0932C70;
  *v220 = 0xFFFFFFFF00000000;
  PatternCharIndex = icu::DateFormatSymbols::getPatternCharIndex(a4);
  lpsrc = 0;
  v229 = 0u;
  v232 = 0;
  v231 = 0u;
  v230 = 0u;
  v228 = &unk_1F0935D00;
  LOWORD(v229) = 2;
  v22 = (*(*a1 + 12))(a1) != 0;
  v23 = a1[100];
  if (v23 && (v24 = *(v23 + PatternCharIndex)) != 0)
  {
    v25 = (v24 + 24);
  }

  else
  {
    v25 = a1 + 42;
  }

  lpsrc = *v25;
  if (lpsrc)
  {
    v214 = a7;
    v26 = icu::SimpleDateFormat::fgPatternIndexToCalendarField[PatternCharIndex];
    memset(v227, 0, sizeof(v227));
    icu::UnicodeString::UnicodeString(v227, "hebr", 4, 0);
    if (a12)
    {
      (*(*a12 + 120))(a12, &lpsrc, 1);
    }

    v27 = (*(*a10 + 184))(a10);
    if (!strcmp(v27, "chinese"))
    {
      v29 = 1;
    }

    else
    {
      v28 = (*(*a10 + 184))(a10);
      v29 = strcmp(v28, "dangi") == 0;
    }

    v32 = *a3;
    v33 = *(a2 + 8);
    v34 = v33;
    LODWORD(v35) = v33 >> 5;
    if (v34 >= 0)
    {
      v35 = v35;
    }

    else
    {
      v35 = *(a2 + 12);
    }

    if (v32 >= v35)
    {
LABEL_26:
      v31 = -v32;
LABEL_27:
      icu::UnicodeString::~UnicodeString(v35, v227);
      goto LABEL_28;
    }

    v210 = v29;
    v211 = v26;
    v213 = a5;
    v35 = a13;
    while (1)
    {
      v36 = icu::UnicodeString::char32At(v35, a2, v32);
      if (!u_isUWhiteSpace(v36))
      {
        isWhiteSpace = icu::PatternProps::isWhiteSpace(v36);
        if (!isWhiteSpace)
        {
          break;
        }
      }

      if (v36 < 0x10000)
      {
        v38 = 1;
      }

      else
      {
        v38 = 2;
      }

      v32 = *a3 + v38;
      *a3 = v32;
      v39 = *(a2 + 8);
      v40 = v39;
      LODWORD(v35) = v39 >> 5;
      if (v40 >= 0)
      {
        v35 = v35;
      }

      else
      {
        v35 = *(a2 + 12);
      }

      if (v32 >= v35)
      {
        goto LABEL_26;
      }
    }

    v209 = *a3;
    v220[0] = *a3;
    if (PatternCharIndex > 0x10 || ((1 << PatternCharIndex) & 0x18030) == 0)
    {
      v59 = PatternCharIndex == 19 || PatternCharIndex == 25;
      v60 = v59 || PatternCharIndex == 2;
      v61 = v60 || (PatternCharIndex & 0xFFFFFFFE) == 26;
      v62 = v61 || PatternCharIndex == 28;
      v63 = v62;
      if ((v213 > 2 || !v63) && (PatternCharIndex > 0x1E || ((1 << PatternCharIndex) & 0x40040002) == 0) && PatternCharIndex != 8)
      {
        v56 = (PatternCharIndex == 0) & v210;
        if (PatternCharIndex != 0 || !v210)
        {
          v57 = 0;
          v58 = 1;
          goto LABEL_88;
        }
      }
    }

    if (a12 && (PatternCharIndex == 26 || PatternCharIndex == 2))
    {
      v222[0] = U_ZERO_ERROR;
      v44 = (*(*a12 + 184))(a12, a2, &v219, v222);
      if (v44)
      {
        v45 = v222[0] == U_ILLEGAL_ARGUMENT_ERROR;
      }

      else
      {
        v45 = 0;
      }

      if (v45 && v220[0] > v209)
      {
        v47 = v44;
        if (icu::Formattable::isNumeric(v44))
        {
          icu::Formattable::setLong(v233, *(v47 + 2));
          icu::Calendar::set(a10, 0x16u, 1);
          v48 = v47 - 16;
          v49 = *(v47 - 1);
          if (v49)
          {
            v50 = (v47 + 112 * v49 - 112);
            v51 = -112 * v49;
            do
            {
              v50 = (icu::Formattable::~Formattable(v49, v50) - 112);
              v51 += 112;
            }

            while (v51);
          }

          isWhiteSpace = MEMORY[0x19A8B25E0](v48, 0x10B3C80062A7C37);
          goto LABEL_53;
        }
      }

      v220[0] = v209;
      isWhiteSpace = icu::Calendar::set(a10, 0x16u, 0);
    }

    v52 = a2;
    if (a6)
    {
      v35 = *a3;
      v53 = *(a2 + 8);
      v54 = v53;
      v55 = v53 >> 5;
      if (v54 < 0)
      {
        v55 = *(a2 + 12);
      }

      if (v35 + v213 > v55)
      {
        goto LABEL_323;
      }

      v52 = &v228;
      isWhiteSpace = (*(*a2 + 24))(a2, 0);
    }

    isWhiteSpace = icu::SimpleDateFormat::parseInt(isWhiteSpace, v52, v233, -1, &v219, v214, lpsrc);
LABEL_53:
    v56 = v209;
    if (v220[0] <= v209)
    {
      v57 = 0;
      v58 = 1;
      v209 = v220[0];
    }

    else
    {
      v57 = DWORD2(v233[0]);
      if ((DWORD2(v233[0]) & 0x80000000) != 0)
      {
        v209 = icu::SimpleDateFormat::checkIntSuffix(a1, a2, v220[0], (a11 + 1), 1);
        if (v209 == v220[0])
        {
          v57 = v57;
        }

        else
        {
          v57 = -v57;
        }
      }

      else
      {
        v209 = icu::SimpleDateFormat::checkIntSuffix(a1, a2, v220[0], (a11 + 1), 0);
      }

      isWhiteSpace = (*(*a1 + 28))(a1, 0, &v221);
      v64 = 0x60000CCuLL >> PatternCharIndex;
      if (isWhiteSpace)
      {
        if (v64)
        {
          v65 = dword_19549300C[PatternCharIndex];
          isWhiteSpace = (*(*a10 + 128))(a10, v211);
          if (v57 > isWhiteSpace + v65)
          {
            goto LABEL_322;
          }
        }
      }

      else if (v64)
      {
        v66 = dword_195492F7C[PatternCharIndex];
        if (v57 > ((*(*a10 + 128))(a10, v211) + v66))
        {
          goto LABEL_322;
        }

        isWhiteSpace = (*(*a10 + 112))(a10, v211);
        if (v57 < isWhiteSpace + v66)
        {
          goto LABEL_322;
        }
      }

      v58 = 0;
      v56 = v209;
      v220[0] = v209;
    }

LABEL_88:
    if (PatternCharIndex > 0x25)
    {
      goto LABEL_313;
    }

    switch(PatternCharIndex)
    {
      case 0:
        if (!v210)
        {
          v116 = 48;
          v117 = 40;
          v118 = 16;
          v119 = 8;
          if (v213 == 4)
          {
            v119 = 24;
            v118 = 32;
          }

          if (v213 != 5)
          {
            v117 = v119;
            v116 = v118;
          }

          matched = icu::SimpleDateFormat::matchString(isWhiteSpace, a2, *a3, 0, *(a1[96] + v117), *(a1[96] + v116), 0, a10);
          v35 = matched + *a3 == 0;
          v31 = (__PAIR64__(matched, matched + *a3) - 1) >> 32;
          goto LABEL_27;
        }

        if (v58)
        {
          goto LABEL_322;
        }

        v90 = a10;
        v91 = 0;
        goto LABEL_369;
      case 1:
      case 8:
      case 18:
        goto LABEL_91;
      case 2:
      case 26:
        if ((v58 & 1) == 0)
        {
          goto LABEL_240;
        }

        v67 = a1[96];
        v68 = *(v67 + 59);
        if (v68 && *(v67 + 120) >= 7)
        {
          v69 = v213;
          if (PatternCharIndex == 2)
          {
            v212 = (v68 + 64);
            goto LABEL_207;
          }

          v110 = (v68 + 192);
          v212 = (v68 + 256);
        }

        else
        {
          v68 = 0;
          v212 = 0;
          v110 = 0;
          v69 = v213;
          if (PatternCharIndex == 2)
          {
LABEL_207:
            v111 = (*(*a1 + 28))(a1, 3, &v221);
            v31 = 0;
            if ((v69 - 3) <= 1 && v111)
            {
              v112 = a1[96];
              if (*(v112 + 59) || (v113 = *(v112 + 16), v113 != *(v112 + 20)))
              {
                v31 = 0;
              }

              else
              {
                v31 = icu::SimpleDateFormat::matchAlphaMonthStrings(v111, a2, *a3, *(v112 + 7), *(v112 + 9), v113, a10);
                if (v31 > 0)
                {
                  goto LABEL_27;
                }
              }
            }

            v149 = (*(*a1 + 28))(a1, 3, &v221);
            if (v213 == 4 || v149)
            {
              v31 = icu::SimpleDateFormat::matchString(v149, a2, *a3, 2, *(a1[96] + 7), *(a1[96] + 16), v68, a10);
              if (v31 > 0)
              {
                goto LABEL_27;
              }
            }

            v139 = (*(*a1 + 28))(a1, 3, &v221);
            v150 = 80;
            v151 = 72;
            goto LABEL_308;
          }
        }

        v152 = (*(*a1 + 28))(a1, 3, &v221);
        v31 = 0;
        if ((v69 - 3) <= 1 && v152)
        {
          v153 = a1[96];
          if (*(v153 + 59) || (v154 = *(v153 + 28), v154 != *(v153 + 32)))
          {
            v31 = 0;
          }

          else
          {
            v31 = icu::SimpleDateFormat::matchAlphaMonthStrings(v152, a2, *a3, *(v153 + 13), *(v153 + 15), v154, a10);
            if (v31 > 0)
            {
              goto LABEL_27;
            }
          }
        }

        v155 = (*(*a1 + 28))(a1, 3, &v221);
        if (v213 == 4 || v155)
        {
          v31 = icu::SimpleDateFormat::matchString(v155, a2, *a3, 2, *(a1[96] + 13), *(a1[96] + 28), v110, a10);
          if (v31 > 0)
          {
            goto LABEL_27;
          }
        }

        v139 = (*(*a1 + 28))(a1, 3, &v221);
        v150 = 128;
        v151 = 120;
LABEL_308:
        if (v213 == 3 || v139)
        {
          v140 = *a3;
          v156 = a1[96];
          v142 = *(v156 + v151);
          v143 = *(v156 + v150);
          v144 = a2;
          v145 = 2;
          v146 = v212;
          goto LABEL_311;
        }

LABEL_312:
        isWhiteSpace = (*(*a1 + 28))(a1, 1, &v221);
        if (isWhiteSpace)
        {
          goto LABEL_313;
        }

        goto LABEL_27;
      case 3:
      case 6:
      case 7:
      case 10:
      case 11:
      case 12:
      case 13:
      case 20:
      case 21:
      case 22:
      case 34:
        goto LABEL_313;
      case 4:
      case 5:
      case 15:
      case 16:
        if (v57 >= 0x19)
        {
          goto LABEL_322;
        }

LABEL_91:
        if (v58)
        {
          goto LABEL_322;
        }

        if (PatternCharIndex <= 8)
        {
          if (PatternCharIndex <= 3)
          {
            if (PatternCharIndex == 1)
            {
              if (sub_19537E5F8((a1 + 52), v227) || v57 > 999)
              {
                v166 = icu::UnicodeString::moveIndex32(a2, *a3, 2);
                if (v166 == v220[0] && !v210)
                {
                  v167 = icu::UnicodeString::char32At(((v166 != v220[0]) | v210), a2, *a3);
                  if (u_isdigit(v167))
                  {
                    v168 = icu::UnicodeString::moveIndex32(a2, *a3, 1);
                    v170 = icu::UnicodeString::char32At(v169, a2, v168);
                    v171 = u_isdigit(v170);
                    if (v213 <= 2 && v171 && *(a1 + 816))
                    {
                      v172 = *(a1 + 199) % 100;
                      *a8 = v57 == v172;
                      if (v57 >= v172)
                      {
                        v173 = 0;
                      }

                      else
                      {
                        v173 = 100;
                      }

                      v57 = (v57 + 100 * (*(a1 + 199) / 100) + v173);
                    }
                  }
                }
              }

              else
              {
                v57 = (v57 + 5000);
              }

              icu::Calendar::set(a10, 1u, v57);
              v35 = *a9;
              if ((v35 & 0x80000000) == 0)
              {
                isLeapYear = icu::HebrewCalendar::isLeapYear(v57);
                v175 = *a9;
                v177 = isLeapYear || v175 < 6;
                icu::Calendar::set(a10, 2u, v175 - v177);
                v35 = 0xFFFFFFFFLL;
                *a9 = -1;
              }

              goto LABEL_385;
            }

            if (PatternCharIndex != 2)
            {
              goto LABEL_313;
            }

LABEL_240:
            v121 = (*(*a10 + 184))(a10);
            if (strcmp(v121, "hebrew"))
            {
              v80 = v57 - 1;
              goto LABEL_383;
            }

            if (!icu::Calendar::isSet(a10, 1u))
            {
              v35 = a9;
              *a9 = v57;
              goto LABEL_385;
            }

            v222[0] = U_ZERO_ERROR;
            v122 = icu::Calendar::get(a10, 1u, v222);
            v124 = icu::HebrewCalendar::isLeapYear(v122) || v57 < 6;
            v80 = v57 - v124;
            goto LABEL_383;
          }

          switch(PatternCharIndex)
          {
            case 4:
              if (v57 == (*(*a10 + 128))(a10, 11) + 1)
              {
                LODWORD(v57) = 0;
              }

              break;
            case 5:
              break;
            case 8:
              v73 = icu::SimpleDateFormat::countDigits(a2, *a3, v209, v56);
              if (v73 > 2)
              {
                if (v73 == 3)
                {
                  v178 = 1;
                }

                else
                {
                  v194 = vdupq_n_s32(v73 - 4);
                  v195.i64[0] = 0x100000001;
                  v195.i64[1] = 0x100000001;
                  v196 = 4;
                  v197.i64[0] = 0xA0000000ALL;
                  v197.i64[1] = 0xA0000000ALL;
                  do
                  {
                    v198 = v195;
                    v195 = vmulq_s32(v195, v197);
                    v196 -= 4;
                  }

                  while ((v73 & 0x7FFFFFFC) + v196 != 4);
                  v199 = vbslq_s8(vcgtq_u32(vorrq_s8(vdupq_n_s32(-v196), xmmword_19547B440), v194), v198, v195);
                  *v199.i8 = vmul_s32(*v199.i8, *&vextq_s8(v199, v199, 8uLL));
                  v178 = v199.i32[0] * v199.i32[1];
                }

                v80 = v57 / v178;
              }

              else
              {
                v74.i64[1] = 0x100000001;
                v74.i64[0] = v57 | 0x100000000;
                v75 = vdupq_n_s32(2 - v73);
                v76 = 4;
                v77.i64[0] = 0xA0000000ALL;
                v77.i64[1] = 0xA0000000ALL;
                do
                {
                  v78 = v74;
                  v74 = vmulq_s32(v74, v77);
                  v76 -= 4;
                }

                while (((6 - v73) & 0xFFFFFFFC) + v76 != 4);
                v79 = vbslq_s8(vcgtq_u32(vorrq_s8(vdupq_n_s32(-v76), xmmword_19547B440), v75), v78, v74);
                *v79.i8 = vmul_s32(*v79.i8, *&vextq_s8(v79, v79, 8uLL));
                v80 = v79.i32[0] * v79.i32[1];
              }

              v90 = a10;
              v91 = 14;
              goto LABEL_384;
            default:
              goto LABEL_313;
          }

          v90 = a10;
          v91 = 11;
        }

        else
        {
          if (PatternCharIndex <= 15)
          {
            if (PatternCharIndex != 9)
            {
              if (PatternCharIndex != 14)
              {
                if (PatternCharIndex != 15)
                {
                  goto LABEL_313;
                }

                if (v57 == (*(*a10 + 160))(a10, 10) + 1)
                {
                  LODWORD(v57) = 0;
                }

                goto LABEL_250;
              }

LABEL_108:
              v70 = (*(*a1 + 28))(a1, 3, &v221);
              if (v213 < 5 || v70)
              {
                v71 = icu::SimpleDateFormat::matchString(v70, a2, *a3, 9, *(a1[96] + 35), *(a1[96] + 72), 0, a10);
                if (v71 > 0)
                {
                  goto LABEL_192;
                }
              }

              v72 = (*(*a1 + 28))(a1, 3, &v221);
              if (v213 > 4 || v72)
              {
                v71 = icu::SimpleDateFormat::matchString(v72, a2, *a3, 9, *(a1[96] + 37), *(a1[96] + 76), 0, a10);
LABEL_182:
                if (v71 > 0)
                {
LABEL_192:
                  v31 = v71;
                  goto LABEL_27;
                }
              }

              goto LABEL_322;
            }

LABEL_123:
            v81 = (*(*a1 + 28))(a1, 3, &v221);
            if (v213 == 4 || v81)
            {
              v31 = icu::SimpleDateFormat::matchString(v81, a2, *a3, 7, *(a1[96] + 19), *(a1[96] + 40), 0, a10);
              if (v31 > 0)
              {
                goto LABEL_27;
              }
            }

            else
            {
              v31 = 0;
            }

            v107 = (*(*a1 + 28))(a1, 3, &v221);
            if (v213 == 3 || v107)
            {
              v31 = icu::SimpleDateFormat::matchString(v107, a2, *a3, 7, *(a1[96] + 21), *(a1[96] + 44), 0, a10);
              if (v31 > 0)
              {
                goto LABEL_27;
              }
            }

            v108 = (*(*a1 + 28))(a1, 3, &v221);
            if (v213 == 6 || v108)
            {
              v31 = icu::SimpleDateFormat::matchString(v108, a2, *a3, 7, *(a1[96] + 23), *(a1[96] + 48), 0, a10);
              if (v31 > 0)
              {
                goto LABEL_27;
              }
            }

            v109 = (*(*a1 + 28))(a1, 3, &v221);
            if (v213 == 5 || v109)
            {
              v31 = icu::SimpleDateFormat::matchString(v109, a2, *a3, 7, *(a1[96] + 25), *(a1[96] + 52), 0, a10);
              if (v31 > 0)
              {
                goto LABEL_27;
              }
            }

            isWhiteSpace = (*(*a1 + 28))(a1, 1, &v221);
            if (!isWhiteSpace || PatternCharIndex == 9)
            {
              goto LABEL_27;
            }

LABEL_313:
            v157 = v220[0];
            if (a6)
            {
              v35 = *a3;
              v158 = *(a2 + 8);
              v159 = v158;
              v160 = v158 >> 5;
              if (v159 < 0)
              {
                v160 = *(a2 + 12);
              }

              if (v35 + v213 > v160)
              {
                goto LABEL_323;
              }

              v161 = (*(*a2 + 24))(a2, 0);
              icu::SimpleDateFormat::parseInt(v161, &v228, v233, -1, &v219, v214, lpsrc);
              v162 = (*(*a1 + 12))(a1);
              v35 = v220[0];
              if (!v162 && v220[0] < *a3 + v213)
              {
                v31 = -*a3;
                goto LABEL_27;
              }
            }

            else
            {
              icu::SimpleDateFormat::parseInt(isWhiteSpace, a2, v233, -1, &v219, v214, lpsrc);
              LODWORD(v35) = v220[0];
            }

            if (v35 == v157)
            {
LABEL_322:
              v35 = *a3;
LABEL_323:
              v31 = -v35;
              goto LABEL_27;
            }

            v163 = DWORD2(v233[0]);
            if ((*(*a1 + 28))(a1, 1, &v221))
            {
              if ((0x60000CCuLL >> PatternCharIndex))
              {
                v164 = dword_19549300C[PatternCharIndex];
                if (v57 > ((*(*a10 + 128))(a10, v211) + v164))
                {
                  goto LABEL_322;
                }
              }
            }

            else if ((0x60000CCuLL >> PatternCharIndex))
            {
              v165 = dword_195492F7C[PatternCharIndex];
              if (((*(*a10 + 128))(a10, v211) + v165) < v163 || ((*(*a10 + 112))(a10, v211) + v165) > v163)
              {
                goto LABEL_322;
              }
            }

            if (PatternCharIndex > 25)
            {
              if ((PatternCharIndex - 27) < 2)
              {
                v100 = 3 * v163;
LABEL_165:
                v80 = v100 - 3;
                goto LABEL_383;
              }

              if (PatternCharIndex != 26)
              {
                if (PatternCharIndex == 34)
                {
                  (*(*a10 + 448))(a10, v163);
LABEL_385:
                  v31 = v220[0];
                  goto LABEL_27;
                }

                goto LABEL_386;
              }
            }

            else
            {
              if (PatternCharIndex != 2)
              {
                if (PatternCharIndex == 19 || PatternCharIndex == 25)
                {
                  v90 = a10;
                  v91 = 18;
LABEL_387:
                  v80 = v163;
                  goto LABEL_384;
                }

LABEL_386:
                v90 = a10;
                v91 = v211;
                goto LABEL_387;
              }

              v193 = (*(*a10 + 184))(a10);
              if (!strcmp(v193, "hebrew"))
              {
                if (!icu::Calendar::isSet(a10, 1u))
                {
                  v35 = a9;
                  *a9 = v163;
                  goto LABEL_385;
                }

                v222[0] = U_ZERO_ERROR;
                v206 = icu::Calendar::get(a10, 1u, v222);
                v208 = icu::HebrewCalendar::isLeapYear(v206) || v163 < 6;
                v80 = v163 - v208;
                goto LABEL_383;
              }
            }

            v80 = v163 - 1;
LABEL_383:
            v90 = a10;
            v91 = 2;
LABEL_384:
            icu::Calendar::set(v90, v91, v80);
            goto LABEL_385;
          }

          if (PatternCharIndex == 16)
          {
LABEL_250:
            v90 = a10;
            v91 = 10;
            goto LABEL_369;
          }

          if (PatternCharIndex == 17)
          {
LABEL_219:
            v92 = icu::SimpleDateFormat::tzFormat(a1, &v221);
            if (v221 <= U_ZERO_ERROR)
            {
              v93 = v213 < 4;
              v94 = 3;
LABEL_221:
              v114 = v93 ? (v94 + 1) : v94;
              v115 = (*(*v92 + 72))(v92, v114, a2, &v219, v22, a13);
              if (v115)
              {
LABEL_237:
                icu::Calendar::adoptTimeZone(a10, v115);
                goto LABEL_385;
              }
            }

            goto LABEL_322;
          }

          if (PatternCharIndex != 18)
          {
            goto LABEL_313;
          }

          if (sub_19537E5F8((a1 + 52), v227) || v57 > 999)
          {
            v179 = icu::UnicodeString::moveIndex32(a2, *a3, 2);
            if (v179 == v220[0])
            {
              v180 = icu::UnicodeString::char32At(v220[0], a2, *a3);
              if (u_isdigit(v180))
              {
                v181 = icu::UnicodeString::moveIndex32(a2, *a3, 1);
                v183 = icu::UnicodeString::char32At(v182, a2, v181);
                if (u_isdigit(v183))
                {
                  if (*(a1 + 816))
                  {
                    v184 = *(a1 + 199) % 100;
                    *a8 = v57 == v184;
                    if (v57 >= v184)
                    {
                      v185 = 0;
                    }

                    else
                    {
                      v185 = 100;
                    }

                    LODWORD(v57) = v57 + 100 * (*(a1 + 199) / 100) + v185;
                  }
                }
              }
            }
          }

          else
          {
            LODWORD(v57) = v57 + 5000;
          }

          v90 = a10;
          v91 = 17;
        }

LABEL_369:
        v80 = v57;
        goto LABEL_384;
      case 9:
        goto LABEL_123;
      case 14:
        goto LABEL_108;
      case 17:
        goto LABEL_219;
      case 19:
        if (v58)
        {
          goto LABEL_123;
        }

        goto LABEL_152;
      case 23:
        v96 = icu::SimpleDateFormat::tzFormat(a1, &v221);
        if (v221 > U_ZERO_ERROR)
        {
          goto LABEL_322;
        }

        if (v213 == 5)
        {
          v97 = 15;
        }

        else
        {
          v97 = 5;
        }

        if (v213 >= 4)
        {
          v98 = v97;
        }

        else
        {
          v98 = 12;
        }

        goto LABEL_236;
      case 24:
        v92 = icu::SimpleDateFormat::tzFormat(a1, &v221);
        if (v221 > U_ZERO_ERROR)
        {
          goto LABEL_322;
        }

        v93 = v213 < 4;
        v94 = 1;
        goto LABEL_221;
      case 25:
        if ((v58 & 1) == 0)
        {
LABEL_152:
          v90 = a10;
          v91 = 18;
          goto LABEL_369;
        }

        v95 = (*(*a1 + 28))(a1, 3, &v221);
        if (v213 == 4 || v95)
        {
          v31 = icu::SimpleDateFormat::matchString(v95, a2, *a3, 7, *(a1[96] + 27), *(a1[96] + 56), 0, a10);
          if (v31 > 0)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v31 = 0;
        }

        v138 = (*(*a1 + 28))(a1, 3, &v221);
        if (v213 != 3 && !v138 || (v31 = icu::SimpleDateFormat::matchString(v138, a2, *a3, 7, *(a1[96] + 29), *(a1[96] + 60), 0, a10), v31 <= 0))
        {
          v139 = (*(*a1 + 28))(a1, 3, &v221);
          if (v213 != 6 && !v139)
          {
            goto LABEL_312;
          }

          v140 = *a3;
          v141 = a1[96];
          v142 = *(v141 + 31);
          v143 = *(v141 + 64);
          v144 = a2;
          v145 = 7;
          v146 = 0;
LABEL_311:
          v31 = icu::SimpleDateFormat::matchString(v139, v144, v140, v145, v142, v143, v146, a10);
          if (v31 <= 0)
          {
            goto LABEL_312;
          }
        }

        goto LABEL_27;
      case 27:
        if ((v58 & 1) == 0)
        {
          goto LABEL_164;
        }

        v87 = (*(*a1 + 28))(a1, 3, &v221);
        if (v213 == 4 || v87)
        {
          v31 = icu::SimpleDateFormat::matchQuarterString(v87, a2, *a3, 2u, *(a1[96] + 47), *(a1[96] + 96), a10);
          if (v31 > 0)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v31 = 0;
        }

        v132 = (*(*a1 + 28))(a1, 3, &v221);
        if (v213 == 3 || v132)
        {
          v31 = icu::SimpleDateFormat::matchQuarterString(v132, a2, *a3, 2u, *(a1[96] + 49), *(a1[96] + 100), a10);
          if (v31 > 0)
          {
            goto LABEL_27;
          }
        }

        v133 = (*(*a1 + 28))(a1, 3, &v221);
        if (v213 != 5 && !v133)
        {
          goto LABEL_281;
        }

        v134 = *a3;
        v135 = a1[96];
        v136 = *(v135 + 51);
        v137 = *(v135 + 104);
        goto LABEL_280;
      case 28:
        if ((v58 & 1) == 0)
        {
LABEL_164:
          v100 = 3 * v57;
          goto LABEL_165;
        }

        v99 = (*(*a1 + 28))(a1, 3, &v221);
        if (v213 == 4 || v99)
        {
          v31 = icu::SimpleDateFormat::matchQuarterString(v99, a2, *a3, 2u, *(a1[96] + 53), *(a1[96] + 108), a10);
          if (v31 > 0)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v31 = 0;
        }

        v147 = (*(*a1 + 28))(a1, 3, &v221);
        if (v213 == 3 || v147)
        {
          v31 = icu::SimpleDateFormat::matchQuarterString(v147, a2, *a3, 2u, *(a1[96] + 55), *(a1[96] + 112), a10);
          if (v31 > 0)
          {
            goto LABEL_27;
          }
        }

        v133 = (*(*a1 + 28))(a1, 3, &v221);
        if (v213 == 5 || v133)
        {
          v134 = *a3;
          v148 = a1[96];
          v136 = *(v148 + 57);
          v137 = *(v148 + 116);
LABEL_280:
          v31 = icu::SimpleDateFormat::matchQuarterString(v133, a2, v134, 2u, v136, v137, a10);
          if (v31 > 0)
          {
            goto LABEL_27;
          }
        }

LABEL_281:
        if (!(*(*a1 + 28))(a1, 1, &v221))
        {
          goto LABEL_27;
        }

        isWhiteSpace = (*(*a1 + 28))(a1, 3, &v221);
        if (!isWhiteSpace)
        {
          goto LABEL_322;
        }

        goto LABEL_313;
      case 29:
        v104 = v213 - 1;
        if ((v213 - 1) <= 2)
        {
          v105 = &unk_1954930C0;
          goto LABEL_190;
        }

        v106 = 0;
        goto LABEL_234;
      case 30:
        v88 = a1[96];
        v89 = *(v88 + 61);
        if (v89)
        {
          v71 = icu::SimpleDateFormat::matchString(isWhiteSpace, a2, *a3, 1, v89, *(v88 + 124), 0, a10);
          if (v71 > 0)
          {
            goto LABEL_192;
          }
        }

        if ((v58 & 1) != 0 || !(*(*a1 + 28))(a1, 1, &v221) && v57 <= *(a1[96] + 124))
        {
          goto LABEL_322;
        }

        v90 = a10;
        v91 = 1;
        goto LABEL_369;
      case 31:
        v96 = icu::SimpleDateFormat::tzFormat(a1, &v221);
        if (v221 > U_ZERO_ERROR)
        {
          goto LABEL_322;
        }

        if (v213 >= 4)
        {
          v98 = 5;
        }

        else
        {
          v98 = 6;
        }

        goto LABEL_236;
      case 32:
        v104 = v213 - 1;
        if ((v213 - 1) <= 3)
        {
          v105 = &unk_195492AB0;
          goto LABEL_190;
        }

        v106 = 15;
        goto LABEL_234;
      case 33:
        v104 = v213 - 1;
        if ((v213 - 1) > 3)
        {
          v106 = 16;
        }

        else
        {
          v105 = &unk_195492AC0;
LABEL_190:
          v106 = v105[v104];
        }

LABEL_234:
        v96 = icu::SimpleDateFormat::tzFormat(a1, &v221);
        if (v221 <= U_ZERO_ERROR)
        {
          v98 = v106;
LABEL_236:
          v115 = icu::TimeZoneFormat::parse(v96, v98, a2, &v219, a13);
          if (v115)
          {
            goto LABEL_237;
          }
        }

        goto LABEL_322;
      case 35:
        v71 = icu::SimpleDateFormat::subParse(a1, a2, a3, 97, v213, a6, v214, a8, a9, a10, a11, a12, a13, 0);
        if (v71 > 0)
        {
          goto LABEL_192;
        }

        v125 = (*(*a1 + 28))(a1, 3, &v221);
        if (v213 != 3 && !v125)
        {
          goto LABEL_403;
        }

        v126 = 0;
        v127 = 0;
        v128 = *a3;
        v129 = *(a1[96] + 108);
        v130 = -1;
        do
        {
          v131 = sub_1953D4E50(a2, v128, v129);
          if (v131 > v127)
          {
            v127 = v131;
            v130 = v126;
          }

          ++v126;
          v129 += 64;
        }

        while (v126 != 2);
        if (v130 < 0)
        {
          v31 = -v128;
        }

        else
        {
          v35 = a14;
          *a14 = v130;
          v31 = (v127 + v128);
        }

        if (v31 <= 0)
        {
LABEL_403:
          v186 = (*(*a1 + 28))(a1, 3, &v221);
          if (v213 != 5 && !v186)
          {
            goto LABEL_416;
          }

          v187 = 0;
          v188 = 0;
          v189 = *a3;
          v190 = *(a1[96] + 112);
          v191 = -1;
          do
          {
            v192 = sub_1953D4E50(a2, v189, v190);
            if (v192 > v188)
            {
              v188 = v192;
              v191 = v187;
            }

            ++v187;
            v190 += 64;
          }

          while (v187 != 2);
          if (v191 < 0)
          {
            v31 = -v189;
          }

          else
          {
            v35 = a14;
            *a14 = v191;
            v31 = (v188 + v189);
          }

          if (v31 <= 0)
          {
LABEL_416:
            if (!(*(*a1 + 28))(a1, 3, &v221))
            {
              goto LABEL_322;
            }

            v200 = 0;
            v201 = 0;
            v202 = *a3;
            v203 = *(a1[96] + 110);
            v204 = -1;
            do
            {
              v205 = sub_1953D4E50(a2, v202, v203);
              if (v205 > v201)
              {
                v201 = v205;
                v204 = v200;
              }

              ++v200;
              v203 += 64;
            }

            while (v200 != 2);
            if (v204 < 0)
            {
              v31 = -v202;
            }

            else
            {
              v35 = a14;
              *a14 = v204;
              v31 = (v201 + v202);
            }

            if (v31 <= 0)
            {
              goto LABEL_322;
            }
          }
        }

        goto LABEL_27;
      case 36:
        v101 = (*(*a1 + 28))(a1, 3, &v221);
        if (v213 == 3 || v101)
        {
          v71 = icu::SimpleDateFormat::matchDayPeriodStrings(v101, a2, *a3, *(a1[96] + 108), *(a1[96] + 218), a14);
          if (v71 > 0)
          {
            goto LABEL_192;
          }
        }

        v102 = (*(*a1 + 28))(a1, 3, &v221);
        if (v213 == 5 || v102)
        {
          v71 = icu::SimpleDateFormat::matchDayPeriodStrings(v102, a2, *a3, *(a1[96] + 112), *(a1[96] + 226), a14);
          if (v71 > 0)
          {
            goto LABEL_192;
          }
        }

        v103 = (*(*a1 + 28))(a1, 3, &v221);
        if (v213 != 4 && !v103)
        {
          goto LABEL_322;
        }

        v71 = icu::SimpleDateFormat::matchDayPeriodStrings(v103, a2, *a3, *(a1[96] + 110), *(a1[96] + 222), a14);
        goto LABEL_182;
      case 37:
        v82 = 0;
        memset(v226, 0, sizeof(v226));
        v224 = 0u;
        v225 = 0u;
        *v222 = 0u;
        v223 = 0u;
        do
        {
          v83 = &v222[v82];
          *v83 = &unk_1F0935D00;
          *(v83 + 4) = 2;
          v82 += 16;
        }

        while (v82 != 48);
        icu::DateFormatSymbols::getTimeSeparatorString(a1[96], v222);
        v217 = &unk_19549309C;
        v84 = 1;
        if (sub_1951D0FDC(v222, &v217, 1))
        {
          sub_1952DDBC8(v226, 58);
          v84 = 2;
        }

        v85 = (*(*a1 + 12))(a1);
        if (v85)
        {
          v216 = &unk_19549309E;
          v85 = sub_1951D0FDC(v222, &v216, 1);
          if (v85)
          {
            v85 = sub_1952DDBC8(&v222[16 * v84++], 46);
          }
        }

        v31 = icu::SimpleDateFormat::matchString(v85, a2, *a3, 25, v222, v84, 0, a10);
        for (i = 32; i != -16; i -= 16)
        {
          icu::UnicodeString::~UnicodeString(v35, &v222[i]);
        }

        goto LABEL_27;
      default:
        break;
    }
  }

  v30 = *a3;
  v31 = -v30;
LABEL_28:
  icu::UnicodeString::~UnicodeString(v30, &v228);
  icu::ParsePosition::~ParsePosition(&v219);
  icu::Formattable::~Formattable(v41, v233);
  v42 = *MEMORY[0x1E69E9840];
  return v31;
}

uint64_t icu::SimpleDateFormat::matchLiterals(icu::SimpleDateFormat *this, const icu::UnicodeString *a2, int *a3, const icu::UnicodeString *a4, int *a5, unsigned int a6, int a7)
{
  v91 = a5;
  v9 = 0;
  v98 = *MEMORY[0x1E69E9840];
  v94 = 0u;
  v95 = 0u;
  v97 = 0;
  v96 = 0u;
  v93 = &unk_1F0935D00;
  LOWORD(v94) = 2;
  v10 = *a2;
  v11 = this + 10;
  while (1)
  {
    v12 = *(this + 4);
    if (*(this + 4) < 0)
    {
      v13 = *(this + 3);
      if (v10 >= v13)
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (v10 >= (v12 >> 5))
      {
        goto LABEL_31;
      }

      v13 = v12 >> 5;
    }

    if (v13 <= v10)
    {
      LOWORD(v15) = -1;
LABEL_20:
      v92 = v15;
      icu::UnicodeString::doAppend(&v93, &v92, 0, 1);
LABEL_21:
      v18 = v9;
      goto LABEL_22;
    }

    if ((v12 & 2) != 0)
    {
      v14 = v11;
    }

    else
    {
      v14 = *(this + 3);
    }

    v15 = *&v14[2 * v10];
    if (v9)
    {
      goto LABEL_13;
    }

    if (v15 <= 0x7F)
    {
      break;
    }

    v18 = 0;
    if (v15 - 8206 >= 2 && v15 != 1564)
    {
      goto LABEL_20;
    }

LABEL_22:
    ++v10;
    v9 = v18;
  }

  if (!byte_195492D64[*&v14[2 * v10]])
  {
LABEL_13:
    if (v15 - 8206 < 2 || v15 == 1564)
    {
      goto LABEL_21;
    }

    if (v15 != 39)
    {
      goto LABEL_20;
    }

    v16 = v10 + 1;
    if ((v12 & 0x8000) != 0)
    {
      v17 = *(this + 3);
      if (v16 < v17)
      {
        goto LABEL_27;
      }
    }

    else if (v16 < (v12 >> 5))
    {
      v17 = v12 >> 5;
LABEL_27:
      if (v17 > v16 && *&v14[2 * v16] == 39)
      {
        LOWORD(v15) = 39;
        ++v10;
        goto LABEL_20;
      }
    }

    v18 = !v9;
    goto LABEL_22;
  }

LABEL_31:
  LODWORD(i) = *a4;
  if (v91)
  {
    i = i;
    icu::UnicodeString::trim(&v93);
    while (1)
    {
      v20 = *(a3 + 4);
      if (v20 < 0)
      {
        v21 = a3[3];
        if (i >= v21)
        {
          break;
        }
      }

      else
      {
        if (i >= (*(a3 + 4) >> 5))
        {
          break;
        }

        v21 = *(a3 + 4) >> 5;
      }

      if (v21 <= i)
      {
        v23 = 0xFFFF;
      }

      else
      {
        v22 = (v20 & 2) != 0 ? (a3 + 10) : *(a3 + 3);
        v23 = *(v22 + i);
      }

      if (!u_isWhitespace(v23) && (v23 - 8206) >= 2 && v23 != 1564)
      {
        break;
      }

      ++i;
    }

    v12 = *(this + 4);
  }

  if ((v12 & 0x8000u) == 0)
  {
    v24 = v12 >> 5;
  }

  else
  {
    v24 = *(this + 3);
  }

  if (v24 <= v10)
  {
    v26 = 0xFFFF;
  }

  else
  {
    if ((v12 & 2) != 0)
    {
      v25 = v11;
    }

    else
    {
      v25 = *(this + 3);
    }

    v26 = *&v25[2 * v10];
  }

  PatternCharIndex = icu::DateFormatSymbols::getPatternCharIndex(v26);
  if (PatternCharIndex == 38)
  {
    v28 = 0;
  }

  else
  {
    v28 = sub_1953D6D24(PatternCharIndex);
  }

  v29 = v94;
  if ((v94 & 0x8000u) == 0)
  {
    v30 = v94 >> 5;
  }

  else
  {
    v30 = DWORD1(v94);
  }

  if (v30 < 1)
  {
LABEL_166:
    for (i = *a4; ; ++i)
    {
      v71 = *(a3 + 4);
      if (v71 < 0)
      {
        v72 = a3[3];
        if (i >= v72)
        {
          goto LABEL_164;
        }
      }

      else
      {
        if (i >= (*(a3 + 4) >> 5))
        {
          goto LABEL_164;
        }

        v72 = *(a3 + 4) >> 5;
      }

      if (v72 <= i)
      {
        v74 = 0xFFFF;
        if (!v28)
        {
          goto LABEL_164;
        }
      }

      else
      {
        if ((v71 & 2) != 0)
        {
          v73 = a3 + 10;
        }

        else
        {
          v73 = *(a3 + 3);
        }

        v74 = *&v73[2 * i];
        if ((v74 - 8206) < 2 || v74 == 1564)
        {
          continue;
        }

        if (!v28)
        {
          goto LABEL_164;
        }
      }

      if (!icu::UnicodeSet::contains(v28, v74))
      {
        goto LABEL_164;
      }
    }
  }

  v87 = v28;
  v31 = 0;
  while (1)
  {
    v32 = *(a3 + 4);
    v33 = v32;
    v34 = v32 >> 5;
    if (v33 < 0)
    {
      v34 = a3[3];
    }

    if (i >= v34)
    {
      goto LABEL_163;
    }

    v35 = v31;
    v36 = v31 << 32;
    v37 = 1;
    if ((v29 & 0x8000) == 0)
    {
LABEL_69:
      v38 = v29 >> 5;
      if (v35 >= v38)
      {
        goto LABEL_81;
      }

      goto LABEL_72;
    }

    while (1)
    {
      LODWORD(v38) = DWORD1(v94);
      if (v35 >= SDWORD1(v94))
      {
        break;
      }

LABEL_72:
      if (v38 <= v31)
      {
        v40 = 0xFFFFLL;
      }

      else
      {
        v39 = (v29 & 2) != 0 ? (&v94 + 2) : v95;
        v40 = *(v39 + v35);
      }

      if (!icu::PatternProps::isWhiteSpace(v40))
      {
        break;
      }

      v37 = 0;
      ++v35;
      v29 = v94;
      v36 += 0x100000000;
      v31 = (v31 + 1);
      if ((v94 & 0x8000) == 0)
      {
        goto LABEL_69;
      }
    }

LABEL_81:
    if ((v37 & 1) == 0)
    {
      v48 = 0;
      for (j = i; ; ++j)
      {
        v50 = *(a3 + 4);
        if (v50 < 0)
        {
          v51 = a3[3];
          if (j >= v51)
          {
            goto LABEL_114;
          }
        }

        else
        {
          if (j >= (*(a3 + 4) >> 5))
          {
            goto LABEL_114;
          }

          v51 = *(a3 + 4) >> 5;
        }

        if (v51 <= i)
        {
          v54 = 0xFFFFLL;
        }

        else
        {
          v52 = (v50 & 2) == 0;
          v53 = a3 + 10;
          if (v52)
          {
            v53 = *(a3 + 3);
          }

          v54 = *&v53[2 * j];
        }

        if (u_isUWhiteSpace(v54) || icu::PatternProps::isWhiteSpace(v54))
        {
          v48 = 1;
        }

        else if ((v54 - 8206) >= 2 && v54 != 1564)
        {
LABEL_114:
          v55 = v91;
          if (!v91 && !v48)
          {
            goto LABEL_211;
          }

          v56 = v94 >> 5;
          if ((v94 & 0x8000u) != 0)
          {
            v56 = DWORD1(v94);
          }

          if (v56 <= v31)
          {
            goto LABEL_163;
          }

          LODWORD(v41) = *(a3 + 4);
          v43 = a3[3];
          LODWORD(v42) = v41 >> 5;
          goto LABEL_120;
        }

        LODWORD(i) = i + 1;
      }
    }

    v41 = *(a3 + 4);
    v42 = v41 >> 5;
    v43 = a3[3];
    v44 = *(a3 + 3);
    if ((v41 & 2) != 0)
    {
      v44 = a3 + 10;
    }

    if ((v41 & 0x8000u) == 0)
    {
      v45 = v41 >> 5;
    }

    else
    {
      v45 = a3[3];
    }

    i = i;
    if ((v41 & 0x8000) == 0)
    {
LABEL_88:
      v46 = v41 >> 5;
      if (i >= v42)
      {
        goto LABEL_120;
      }

      goto LABEL_91;
    }

    while (1)
    {
      LODWORD(v46) = a3[3];
      if (i >= v43)
      {
        break;
      }

LABEL_91:
      if (v46 <= i || *&v44[2 * i] != 8206)
      {
        if (v45 <= i)
        {
          break;
        }

        v47 = *&v44[2 * i];
        if (v47 != 8207 && v47 != 1564)
        {
          break;
        }
      }

      ++i;
      if ((v41 & 0x8000) == 0)
      {
        goto LABEL_88;
      }
    }

LABEL_120:
    if ((v41 & 0x8000u) == 0)
    {
      v57 = v42;
    }

    else
    {
      v57 = v43;
    }

    if (i < v57)
    {
      v58 = (v94 & 0x8000u) == 0 ? v94 >> 5 : DWORD1(v94);
      if (v58 <= v31)
      {
        v60 = 0xFFFF;
      }

      else
      {
        v59 = (v94 & 2) != 0 ? (&v94 + 2) : v95;
        v60 = *(v59 + (v36 >> 31));
      }

      if (v57 <= i)
      {
        v62 = 0xFFFF;
      }

      else
      {
        v61 = *(a3 + 3);
        if ((v41 & 2) != 0)
        {
          v61 = a3 + 10;
        }

        v62 = *&v61[2 * i];
      }

      if (v60 == v62)
      {
        v31 = (v31 + 1);
        goto LABEL_156;
      }
    }

    if (!v91)
    {
      goto LABEL_161;
    }

    if (i != *a4 || v57 <= i)
    {
      goto LABEL_148;
    }

    v63 = *(a3 + 3);
    if ((v41 & 2) != 0)
    {
      v63 = a3 + 10;
    }

    if (*&v63[2 * i] != 46)
    {
      goto LABEL_148;
    }

    if (!icu::SimpleDateFormat::isAfterNonNumericField(this, *a2))
    {
      break;
    }

LABEL_156:
    LODWORD(i) = i + 1;
    v29 = v94;
    if ((v94 & 0x8000u) == 0)
    {
      v66 = v94 >> 5;
    }

    else
    {
      v66 = DWORD1(v94);
    }

    if (v31 >= v66)
    {
      goto LABEL_163;
    }
  }

  LODWORD(v41) = *(a3 + 4);
  v43 = a3[3];
  LODWORD(v42) = v41 >> 5;
LABEL_148:
  if ((v41 & 0x8000u) == 0)
  {
    v43 = v42;
  }

  if (v43 <= i)
  {
    v65 = 0xFFFFLL;
  }

  else
  {
    v52 = (v41 & 2) == 0;
    v64 = a3 + 10;
    if (v52)
    {
      v64 = *(a3 + 3);
    }

    v65 = *&v64[2 * i];
  }

  if (icu::PatternProps::isWhiteSpace(v65))
  {
    goto LABEL_156;
  }

LABEL_161:
  v55 = a6;
  if (!a6)
  {
    goto LABEL_211;
  }

  if (!a7)
  {
    v55 = v87;
    if (!v87)
    {
      goto LABEL_211;
    }

    v75 = (v94 & 0x8000u) == 0 ? v94 >> 5 : DWORD1(v94);
    if (v75 <= v31)
    {
      v77 = 0xFFFF;
    }

    else
    {
      v76 = (v94 & 2) != 0 ? (&v94 + 2) : v95;
      v77 = *(v76 + (v36 >> 31));
    }

    if (!icu::UnicodeSet::contains(v87, v77))
    {
      goto LABEL_211;
    }

    v78 = *(a3 + 4);
    v79 = (v78 & 0x8000u) == 0 ? v78 >> 5 : a3[3];
    if (v79 <= i)
    {
      v81 = 0xFFFF;
    }

    else
    {
      v52 = (v78 & 2) == 0;
      v80 = a3 + 10;
      if (v52)
      {
        v80 = *(a3 + 3);
      }

      v81 = *&v80[2 * i];
    }

    if (!icu::UnicodeSet::contains(v87, v81))
    {
      v82 = *(a3 + 4);
      v83 = (v82 & 0x8000u) == 0 ? v82 >> 5 : a3[3];
      if (v83 <= i)
      {
        v85 = 0xFFFF;
      }

      else
      {
        v52 = (v82 & 2) == 0;
        v84 = a3 + 10;
        if (v52)
        {
          v84 = *(a3 + 3);
        }

        v85 = *&v84[2 * i];
      }

      if (!u_isalpha(v85))
      {
LABEL_211:
        v68 = 0;
        goto LABEL_165;
      }
    }
  }

LABEL_163:
  v67 = v31 <= 0;
  v28 = v87;
  if (v67)
  {
    goto LABEL_166;
  }

LABEL_164:
  *a2 = v10 - 1;
  v55 = a4;
  *a4 = i;
  v68 = 1;
LABEL_165:
  icu::UnicodeString::~UnicodeString(v55, &v93);
  v69 = *MEMORY[0x1E69E9840];
  return v68;
}

uint64_t icu::SimpleDateFormat::matchQuarterString(uint64_t a1, uint64_t a2, int a3, unsigned int a4, uint64_t a5, int a6, _BYTE *a7)
{
  v29 = *MEMORY[0x1E69E9840];
  v25 = 0u;
  v26 = 0u;
  v28 = 0;
  v27 = 0u;
  v24 = &unk_1F0935D00;
  v8 = 2;
  LOWORD(v25) = 2;
  if (a6 < 1)
  {
    goto LABEL_10;
  }

  v13 = 0;
  v14 = 0;
  v15 = -1;
  v16 = a6;
  do
  {
    v17 = sub_1953D4E50(a2, a3, a5);
    v20 = __OFSUB__(v17, v14);
    v18 = v17 == v14;
    v19 = v17 - v14 < 0;
    if (v17 > v14)
    {
      v14 = v17;
    }

    if (!(v19 ^ v20 | v18))
    {
      v15 = v13;
    }

    ++v13;
    a5 += 64;
  }

  while (v16 != v13);
  if (v15 < 0)
  {
LABEL_10:
    v21 = -a3;
  }

  else
  {
    icu::Calendar::set(a7, a4, 3 * v15);
    v21 = (v14 + a3);
  }

  icu::UnicodeString::~UnicodeString(v8, &v24);
  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

uint64_t sub_1953D4E50(uint64_t a1, int a2, uint64_t a3)
{
  v24 = 0;
  v23 = 0;
  v5 = *(a1 + 8);
  if ((v5 & 0x11) != 0)
  {
    v6 = 0;
  }

  else if ((v5 & 2) != 0)
  {
    v6 = a1 + 10;
  }

  else
  {
    v6 = *(a1 + 24);
  }

  v7 = v5;
  v8 = v6 + 2 * a2;
  v9 = v5 >> 5;
  v10 = *(a1 + 12);
  if (v7 >= 0)
  {
    v10 = v9;
  }

  v11 = v10 - a2;
  v12 = *(a3 + 8);
  if ((v12 & 0x11) != 0)
  {
    v13 = 0;
  }

  else if ((v12 & 2) != 0)
  {
    v13 = a3 + 10;
  }

  else
  {
    v13 = *(a3 + 24);
  }

  v14 = v12;
  v15 = v12 >> 5;
  if (v14 >= 0)
  {
    v16 = v15;
  }

  else
  {
    v16 = *(a3 + 12);
  }

  u_caseInsensitivePrefixMatch(v8, v11, v13, v16, 0, &v24, &v23, &v24 + 4);
  v17 = *(a3 + 8);
  if (*(a3 + 8) < 0)
  {
    v18 = *(a3 + 12);
    if (v23 != v18)
    {
      goto LABEL_20;
    }

    return v24;
  }

  if (v23 == v17 >> 5)
  {
    return v24;
  }

  v18 = v17 >> 5;
LABEL_20:
  if (v18)
  {
    v19 = a3 + 10;
    if ((v17 & 2) == 0)
    {
      v19 = *(a3 + 24);
    }

    if (*(v19 + 2 * v18 - 2) == 46)
    {
      v20 = v17;
      v21 = v17 >> 5;
      if (v20 < 0)
      {
        v21 = *(a3 + 12);
      }

      if (v23 == v21 - 1)
      {
        return v24;
      }
    }
  }

  return 0;
}

uint64_t icu::SimpleDateFormat::matchDayPeriodStrings(icu::SimpleDateFormat *this, const icu::UnicodeString *a2, int a3, const icu::UnicodeString *a4, int a5, int *a6)
{
  if (a5 < 1)
  {
    return -a3;
  }

  v10 = 0;
  v11 = 0;
  v12 = -1;
  v13 = a5;
  do
  {
    v14 = sub_1953D4E50(a2, a3, a4);
    if (v14 > v11)
    {
      v11 = v14;
      v12 = v10;
    }

    ++v10;
    a4 = (a4 + 64);
  }

  while (v13 != v10);
  if (v12 < 0)
  {
    return -a3;
  }

  *a6 = v12;
  return (v11 + a3);
}

uint64_t icu::SimpleDateFormat::matchAlphaMonthStrings(icu::SimpleDateFormat *this, const icu::UnicodeString *a2, int a3, const icu::UnicodeString *a4, const icu::UnicodeString *a5, int a6, icu::Calendar *a7)
{
  if (a6 < 1)
  {
    return -a3;
  }

  v12 = 0;
  v13 = 0;
  v14 = -1;
  v15 = a6;
  do
  {
    v16 = sub_1953D4E50(a2, a3, a4);
    if (v16 > v13)
    {
      v13 = v16;
      v14 = v12;
    }

    ++v12;
    a4 = (a4 + 64);
  }

  while (v15 != v12);
  for (i = 0; i != v15; ++i)
  {
    v18 = sub_1953D4E50(a2, a3, a5);
    if (v18 > v13)
    {
      v13 = v18;
      v14 = i;
    }

    a5 = (a5 + 64);
  }

  if (v14 < 0)
  {
    return -a3;
  }

  v19 = (*(*a7 + 184))(a7);
  v20 = strcmp(v19, "hebrew");
  if (v14 == 13 && v20 == 0)
  {
    v22 = 6;
  }

  else
  {
    v22 = v14;
  }

  icu::Calendar::set(a7, 2u, v22);
  return (v13 + a3);
}

uint64_t icu::SimpleDateFormat::matchString(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, int a6, const icu::UnicodeString *a7, _BYTE *a8)
{
  v46 = *MEMORY[0x1E69E9840];
  v42 = 0u;
  v45 = 0;
  v44 = 0u;
  v43 = 0u;
  v41 = &unk_1F0935D00;
  v9 = 2;
  LOWORD(v42) = 2;
  if ((a4 == 7) >= a6)
  {
    goto LABEL_22;
  }

  v31 = 0;
  v12 = 0;
  v13 = a4 == 7;
  v14 = a6;
  v15 = -1;
  v16 = (a5 + (v13 << 6));
  do
  {
    v17 = sub_1953D4E50(a2, a3, v16);
    if (v17 > v12)
    {
      v12 = v17;
      v15 = v13;
    }

    if (a7)
    {
      v32 = U_ZERO_ERROR;
      v40 = 0;
      v39 = 0u;
      v38 = 0u;
      v37 = 0u;
      v36 = &unk_1F0935D00;
      LOWORD(v37) = 2;
      v34 = &unk_1F0935D00;
      v35 = 2;
      icu::SimpleFormatter::applyPatternMinMaxArguments(v33, a7, 1, 1, 0, &v32);
      icu::SimpleFormatter::format(v33, v16, &v36, &v32);
      icu::SimpleFormatter::~SimpleFormatter(v33);
      v18 = v32;
      if (v32 <= U_ZERO_ERROR)
      {
        v19 = sub_1953D4E50(a2, a3, &v36);
        if (v19 <= v12)
        {
          v18 = v31;
        }

        else
        {
          v12 = v19;
          v15 = v13;
          v18 = 1;
        }

        v31 = v18;
      }

      icu::UnicodeString::~UnicodeString(v18, &v36);
    }

    ++v13;
    v16 = (v16 + 64);
  }

  while (v14 != v13);
  if (v15 < 0)
  {
LABEL_22:
    v26 = -a3;
  }

  else
  {
    if (a4 <= 24)
    {
      v20 = (*(*a8 + 184))(a8);
      v21 = strcmp(v20, "hebrew");
      if (a4 == 2 && (!v21 ? (v22 = v15 == 13) : (v22 = 0), v22))
      {
        v23 = a8;
        v24 = 2;
        v25 = 6;
      }

      else
      {
        if (a4 == 1)
        {
          v25 = v15 + 1;
        }

        else
        {
          v25 = v15;
        }

        v23 = a8;
        v24 = a4;
      }

      icu::Calendar::set(v23, v24, v25);
      if (a7)
      {
        icu::Calendar::set(a8, 0x16u, v31);
      }
    }

    v26 = (v12 + a3);
  }

  icu::UnicodeString::~UnicodeString(v9, &v41);
  v27 = *MEMORY[0x1E69E9840];
  return v26;
}

uint64_t icu::SimpleDateFormat::checkIntSuffix(icu::SimpleDateFormat *this, const icu::UnicodeString *a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = a3;
  v28 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  v25 = 0u;
  v27 = 0;
  v26 = 0u;
  v23 = &unk_1F0935D00;
  LOWORD(v24) = 2;
  v6 = *(a2 + 4);
  v7 = v6;
  LODWORD(v8) = v6 >> 5;
  if (v7 >= 0)
  {
    v8 = v8;
  }

  else
  {
    v8 = *(a2 + 3);
  }

  if (((a4 | a3) & 0x80000000) == 0 && v8 >= a3)
  {
    v8 = *(this + 180) < 0 ? *(this + 91) : *(this + 180) >> 5;
    if (v8 >= a4)
    {
      v13 = *(this + 42);
      if (v13)
      {
        v14 = **v13;
        if (v15)
        {
          if (a5)
          {
            NegativeSuffix = icu::DecimalFormat::getNegativeSuffix(v15, &v23);
          }

          else
          {
            NegativeSuffix = icu::DecimalFormat::getPositiveSuffix(v15, &v23);
          }

          icu::UnicodeString::operator=(&v23, NegativeSuffix);
        }
      }

      LODWORD(v8) = v24 >> 5;
      if ((v24 & 0x8000u) == 0)
      {
        v8 = v8;
      }

      else
      {
        v8 = DWORD1(v24);
      }

      if (v8 >= 1)
      {
        v17 = icu::SimpleDateFormat::compareSimpleAffix(this, &v23, (this + 352), a4);
        v18 = icu::SimpleDateFormat::compareSimpleAffix(this, &v23, a2, v5);
        v19 = v24 >> 5;
        if ((v24 & 0x8000u) != 0)
        {
          v19 = DWORD1(v24);
        }

        v20 = icu::SimpleDateFormat::compareSimpleAffix(this, &v23, a2, (v5 - v19));
        if ((v18 < 0 || v17 < 0 || v18 != v17) && (v20 & 0x80000000) == 0 && (v17 & 0x80000000) == 0 && v20 == v17)
        {
          LODWORD(v8) = v24 >> 5;
          if ((v24 & 0x8000u) == 0)
          {
            v8 = v8;
          }

          else
          {
            v8 = DWORD1(v24);
          }

          v5 = (v5 - v8);
        }
      }
    }
  }

  icu::UnicodeString::~UnicodeString(v8, &v23);
  v21 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t icu::SimpleDateFormat::countDigits@<X0>(const icu::UnicodeString *a1@<X1>, int a2@<W2>, int a3@<W3>, uint64_t a4@<X8>)
{
  if (a2 >= a3)
  {
    return 0;
  }

  v6 = a2;
  LODWORD(v8) = 0;
  do
  {
    v9 = icu::UnicodeString::char32At(a4, a1, v6);
    if (u_isdigit(v9))
    {
      v8 = (v8 + 1);
    }

    else
    {
      v8 = v8;
    }

    if (v9 < 0x10000)
    {
      a4 = 1;
    }

    else
    {
      a4 = 2;
    }

    v6 += a4;
  }

  while (v6 < a3);
  return v8;
}

void *icu::SimpleDateFormat::parseInt(icu::SimpleDateFormat *this, const icu::UnicodeString *a2, icu::Formattable *a3, int a4, icu::ParsePosition *a5, int a6, const icu::NumberFormat *lpsrc)
{
  v7 = lpsrc;
  v33 = *MEMORY[0x1E69E9840];
  v29 = 0u;
  v30 = 0u;
  v32 = 0;
  v31 = 0u;
  v28 = &unk_1F0935D00;
  LOWORD(v29) = 2;
  if (lpsrc)
  {
    v13 = **lpsrc;
    v15 = 0;
    if (!a6 && v14)
    {
      v16 = (*(*v14 + 32))(v14);
      if (!v16)
      {
        goto LABEL_15;
      }

      v15 = v16;
      v26 = &unk_1954930A0;
      icu::UnicodeString::UnicodeString(v27, 1, &v26);
      (*(*v15 + 376))(v15, v27);
      icu::UnicodeString::~UnicodeString(v18, v27);
      v7 = v15;
    }
  }

  else
  {
    v15 = 0;
  }

  v19 = *(a5 + 2);
  (*(*v7 + 160))(v7, a2, a3, a5);
  if (a4 >= 1)
  {
    v20 = *(a5 + 2) - v19;
    v21 = __OFSUB__(v20, a4);
    v17 = (v20 - a4);
    if (!(((v17 & 0x80000000) != 0) ^ v21 | (v17 == 0)))
    {
      v22 = *(a3 + 2);
      if (v17 >= 1)
      {
        v23 = v17 + 1;
        do
        {
          v22 /= 10;
          --v23;
        }

        while (v23 > 1);
      }

      *(a5 + 2) = v19 + a4;
      icu::Formattable::setLong(a3, v22);
    }
  }

  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

LABEL_15:
  result = icu::UnicodeString::~UnicodeString(v17, &v28);
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t icu::SimpleDateFormat::translatePattern(uint64_t this, const icu::UnicodeString *a2, icu::UnicodeString *a3, const icu::UnicodeString *a4, const icu::UnicodeString *a5, UErrorCode *a6)
{
  if (*a5 > 0)
  {
    return this;
  }

  v30 = v6;
  v31 = v7;
  v12 = this;
  v13 = 0;
  v14 = 0;
  if (*(a2 + 4))
  {
    v15 = 2;
  }

  else
  {
    v15 = *(a2 + 4) & 0x1E;
  }

  *(a2 + 4) = v15;
  v16 = this + 10;
  v17 = a4 + 10;
  while (1)
  {
    v18 = *(v12 + 8);
    if (v18 < 0)
    {
      break;
    }

    if (v13 >= *(v12 + 8) >> 5)
    {
      goto LABEL_38;
    }

    v19 = *(v12 + 8) >> 5;
LABEL_11:
    if (v19 <= v13)
    {
      v14 = v14;
LABEL_18:
      v21 = -1;
      goto LABEL_19;
    }

    if ((v18 & 2) != 0)
    {
      v20 = v16;
    }

    else
    {
      v20 = *(v12 + 24);
    }

    v21 = *(v20 + 2 * v13);
    if (v14)
    {
      v14 = v21 != 39;
      goto LABEL_19;
    }

    if (v21 == 39)
    {
      v14 = 1;
      v21 = 39;
    }

    else if (v21 <= 0x7Fu && byte_195492D64[v21])
    {
      v22 = *(a3 + 4);
      v23 = v22;
      v24 = v22 >> 5;
      if (v23 >= 0)
      {
        v25 = v24;
      }

      else
      {
        v25 = *(a3 + 3);
      }

      this = icu::UnicodeString::doIndexOf(a3, v21, 0, v25);
      if (this == -1)
      {
        goto LABEL_39;
      }

      v26 = *(a4 + 4);
      if ((v26 & 0x8000u) == 0)
      {
        v27 = v26 >> 5;
      }

      else
      {
        v27 = *(a4 + 3);
      }

      if (v27 <= this)
      {
        v14 = 0;
        goto LABEL_18;
      }

      v14 = 0;
      if ((v26 & 2) != 0)
      {
        v28 = v17;
      }

      else
      {
        v28 = *(a4 + 3);
      }

      v21 = *&v28[2 * this];
    }

    else
    {
      v14 = 0;
    }

LABEL_19:
    v29 = v21;
    this = icu::UnicodeString::doAppend(a2, &v29, 0, 1);
    ++v13;
  }

  v19 = *(v12 + 12);
  if (v13 < v19)
  {
    v19 = v19;
    goto LABEL_11;
  }

LABEL_38:
  if (!v14)
  {
    return this;
  }

LABEL_39:
  *a5 = 3;
  return this;
}

icu::UnicodeString *icu::SimpleDateFormat::toLocalizedPattern(icu::SimpleDateFormat *this, icu::UnicodeString *a2, UErrorCode *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  PatternUChars = icu::DateFormatSymbols::getPatternUChars(this);
  sub_1951F3478(v11, &PatternUChars);
  icu::SimpleDateFormat::translatePattern(this + 352, a2, v11, (*(this + 96) + 768), a3, v6);
  icu::UnicodeString::~UnicodeString(v7, v11);
  v8 = *MEMORY[0x1E69E9840];
  return a2;
}

void icu::SimpleDateFormat::applyPattern(icu::SimpleDateFormat *this, UChar **a2)
{
  v36 = *MEMORY[0x1E69E9840];
  icu::UnicodeString::operator=(this + 44, a2);
  icu::SimpleDateFormat::parsePattern(this);
  v3 = *(this + 41);
  if (!v3)
  {
    goto LABEL_12;
  }

  v4 = (*(*v3 + 184))(v3);
  if (strcmp(v4, "japanese") || *(this + 552) != 106 || *(this + 553) != 97 || *(this + 554))
  {
    if (*(this + 41) && icu::SimpleDateFormat::isHinduCalendar(this))
    {
      icu::SimpleDateFormat::setIndianDateOverride(this);
      v5 = *(this + 100);
      if (v5)
      {
        sub_1953CB7D4(v5);
        *(this + 100) = 0;
      }

      if ((*(this + 212) & 1) == 0)
      {
        v22[0] = U_ZERO_ERROR;
        icu::SimpleDateFormat::initNumberFormatters(this, (this + 544), v22);
      }
    }

    goto LABEL_12;
  }

  sub_1951D6EE0(v22, L"y=jpanyear");
  v7 = *(this + 212);
  if (v7)
  {
    v9 = LOWORD(v22[2]);
    if (v22[2])
    {
      goto LABEL_28;
    }

LABEL_32:
    icu::UnicodeString::~UnicodeString(v9, v22);
    goto LABEL_33;
  }

  if ((v7 & 0x8000) != 0)
  {
    v8 = *(this + 107);
  }

  else
  {
    v8 = v7 >> 5;
  }

  v9 = LOWORD(v22[2]);
  if (SLOWORD(v22[2]) >= 0)
  {
    v10 = LOWORD(v22[2]) >> 5;
  }

  else
  {
    v10 = v22[3];
  }

  if ((v22[2] & 1) != 0 || v8 != v10)
  {
    goto LABEL_32;
  }

  v11 = (v22[2] & 2) != 0 ? (&v22[2] + 2) : *(&v23 + 1);
  if (!icu::UnicodeString::doEquals(this + 416, v11, v8))
  {
    goto LABEL_32;
  }

LABEL_28:
  v12 = *(this + 794);
  icu::UnicodeString::~UnicodeString(v9, v22);
  if (!v12)
  {
    v13 = *(this + 100);
    if (v13)
    {
      sub_1953CB7D4(v13);
      *(this + 100) = 0;
    }

    icu::UnicodeString::setToBogus((this + 416));
    goto LABEL_12;
  }

LABEL_33:
  if ((*(this + 212) & 1) != 0 && *(this + 794))
  {
    umtx_lock(&unk_1ED443060);
    if (!*(this + 100))
    {
      v14 = malloc_type_malloc(0x130uLL, 0x6004044C4A2DFuLL);
      if (v14)
      {
        v14[17] = 0u;
        v14[18] = 0u;
        v14[15] = 0u;
        v14[16] = 0u;
        v14[13] = 0u;
        v14[14] = 0u;
        v14[11] = 0u;
        v14[12] = 0u;
        v14[9] = 0u;
        v14[10] = 0u;
        v14[7] = 0u;
        v14[8] = 0u;
        v14[5] = 0u;
        v14[6] = 0u;
        v14[3] = 0u;
        v14[4] = 0u;
        v14[1] = 0u;
        v14[2] = 0u;
        *v14 = 0u;
      }

      *(this + 100) = v14;
    }

    umtx_unlock(&unk_1ED443060);
    if (*(this + 100))
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      *v22 = 0u;
      v23 = 0u;
      v15 = *(this + 760);
      if (*(this + 760))
      {
        v16 = "";
      }

      else
      {
        v15 = *(this + 94);
        v16 = v15 + *(this + 144);
      }

      icu::Locale::Locale(v15, v22, this + 552, this + 570, v16, "numbers=jpanyear");
      v21 = 0;
      v18 = sub_1953D0AB0(v22, &v21, v17);
      if (v21 <= 0)
      {
        v19 = v18;
        PatternCharIndex = icu::DateFormatSymbols::getPatternCharIndex(0x79u);
        sub_1952769E4(v19, (*(this + 100) + 8 * PatternCharIndex));
        icu::SharedObject::deleteIfZeroRefCount(v19);
        sub_19537E4C8(this + 416, L"y=jpanyear", 0xFFFFFFFFLL);
      }

      icu::Locale::~Locale(v22);
    }
  }

LABEL_12:
  v6 = *MEMORY[0x1E69E9840];
}

BOOL icu::SimpleDateFormat::isHinduCalendar(icu::SimpleDateFormat *this)
{
  v2 = (*(**(this + 41) + 184))(*(this + 41));
  if (!strcmp(v2, "vikram"))
  {
    return 1;
  }

  v3 = (*(**(this + 41) + 184))(*(this + 41));
  if (!strcmp(v3, "bangla"))
  {
    return 1;
  }

  v4 = (*(**(this + 41) + 184))(*(this + 41));
  if (!strcmp(v4, "gujarati"))
  {
    return 1;
  }

  v5 = (*(**(this + 41) + 184))(*(this + 41));
  if (!strcmp(v5, "kannada"))
  {
    return 1;
  }

  v6 = (*(**(this + 41) + 184))(*(this + 41));
  if (!strcmp(v6, "malayalam"))
  {
    return 1;
  }

  v7 = (*(**(this + 41) + 184))(*(this + 41));
  if (!strcmp(v7, "marathi"))
  {
    return 1;
  }

  v8 = (*(**(this + 41) + 184))(*(this + 41));
  if (!strcmp(v8, "odia"))
  {
    return 1;
  }

  v9 = (*(**(this + 41) + 184))(*(this + 41));
  if (!strcmp(v9, "tamil"))
  {
    return 1;
  }

  v10 = (*(**(this + 41) + 184))(*(this + 41));
  return strcmp(v10, "telugu") == 0;
}

void *icu::SimpleDateFormat::applyLocalizedPattern(icu::SimpleDateFormat *this, const icu::UnicodeString *a2, UErrorCode *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = *(this + 96);
  PatternUChars = icu::DateFormatSymbols::getPatternUChars(this);
  sub_1951F3478(v12, &PatternUChars);
  icu::SimpleDateFormat::translatePattern(a2, (this + 352), (v6 + 768), v12, a3, v7);
  result = icu::UnicodeString::~UnicodeString(v8, v12);
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

icu::DateFormatSymbols *icu::SimpleDateFormat::adoptDateFormatSymbols(icu::SimpleDateFormat *this, icu::DateFormatSymbols *a2)
{
  result = *(this + 96);
  if (result)
  {
    icu::DateFormatSymbols::~DateFormatSymbols(result);
    result = MEMORY[0x19A8B2600]();
  }

  *(this + 96) = a2;
  return result;
}

void icu::SimpleDateFormat::setDateFormatSymbols(icu::SimpleDateFormat *this, const icu::DateFormatSymbols *a2)
{
  v2 = *(this + 96);
  if (v2)
  {
    icu::DateFormatSymbols::~DateFormatSymbols(v2);
    MEMORY[0x19A8B2600]();
  }

  operator new();
}

uint64_t icu::SimpleDateFormat::adoptTimeZoneFormat(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 776);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(a1 + 776) = a2;
  return result;
}

void icu::SimpleDateFormat::setTimeZoneFormat(icu::SimpleDateFormat *this, const icu::TimeZoneFormat *a2)
{
  v2 = *(this + 97);
  if (v2)
  {
    (*(*v2 + 8))(v2, a2);
  }

  operator new();
}

void icu::SimpleDateFormat::adoptCalendar(icu::SimpleDateFormat *this, icu::Calendar *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v11 = 0;
  memset(v12, 0, sizeof(v12));
  icu::Locale::Locale(v12, this + 544);
  v4 = *(this + 96);
  if (!v4 || (v5 = (*(**(this + 41) + 184))(*(this + 41)), v5 != (*(*a2 + 184))(a2)))
  {
    v6 = (*(*a2 + 184))(a2);
    sub_1951DE32C(v12, "calendar", v6, &v11);
    v8 = icu::DateFormatSymbols::createForLocale(v12, &v11, v7);
    if (v11 >= 1)
    {
      (*(*a2 + 8))(a2);
      goto LABEL_11;
    }

    v4 = v8;
  }

  icu::DateFormat::adoptCalendar(this, a2);
  v9 = *(this + 96);
  if (v9 != v4)
  {
    if (v9)
    {
      icu::DateFormatSymbols::~DateFormatSymbols(v9);
      MEMORY[0x19A8B2600]();
    }

    *(this + 96) = v4;
  }

  icu::SimpleDateFormat::initializeDefaultCentury(this);
LABEL_11:
  icu::Locale::~Locale(v12);
  v10 = *MEMORY[0x1E69E9840];
}

uint64_t icu::SimpleDateFormat::setContext(uint64_t a1, int a2, int *a3)
{
  result = icu::DateFormat::setContext(a1, a2, a3);
  if (*a3 <= 0 && (a2 - 258) <= 2 && !*(a1 + 824))
  {
    *a3 = 0;
    result = icu::BreakIterator::createSentenceInstance((a1 + 544), a3, v7, v8);
    *(a1 + 824) = result;
    if (*a3 >= 1)
    {
      if (result)
      {
        result = (*(*result + 8))(result);
      }

      *(a1 + 824) = 0;
    }
  }

  return result;
}

BOOL icu::SimpleDateFormat::isFieldUnitIgnored(uint64_t a1, unsigned int a2)
{
  return icu::SimpleDateFormat::isFieldUnitIgnored(a1 + 352, a2);
}

{
  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = icu::SimpleDateFormat::fgCalendarFieldToLevel[a2];
  v7 = *(a1 + 8);
  v8 = v7 >> 5;
  v9 = *(a1 + 12);
  v10 = *(a1 + 24);
  if ((v7 & 2) != 0)
  {
    v10 = a1 + 10;
  }

  if ((v7 & 0x8000) != 0)
  {
    goto LABEL_6;
  }

LABEL_4:
  v11 = v7 >> 5;
  if (v5 < v8)
  {
    while (1)
    {
      if (v11 <= v5)
      {
        v12 = 0xFFFFLL;
      }

      else
      {
        v12 = *(v10 + 2 * v5);
      }

      if (v12 != v3 && v4 >= 1)
      {
        v4 = 0;
        if (v6 <= dword_195492B64[v3])
        {
          return 0;
        }
      }

      if (v12 == 39)
      {
        v13 = v5 + 1;
        if ((v7 & 0x8000) != 0)
        {
          v14 = v9;
          if (v13 >= v9)
          {
LABEL_23:
            v2 = !v2;
            goto LABEL_30;
          }
        }

        else
        {
          v14 = v7 >> 5;
          if (v13 >= v8)
          {
            goto LABEL_23;
          }
        }

        if (v14 > v13 && *(v10 + 2 * v13) == 39)
        {
          ++v5;
          goto LABEL_30;
        }

        goto LABEL_23;
      }

      if (v2)
      {
        v2 = 1;
        goto LABEL_30;
      }

      if (v12 > 0x7F)
      {
        break;
      }

      v15 = byte_195492D64[v12] == 0;
      if (!byte_195492D64[v12])
      {
        goto LABEL_28;
      }

LABEL_29:
      v2 = 0;
      v4 += !v15;
      v3 = v12;
LABEL_30:
      ++v5;
      if ((v7 & 0x8000) == 0)
      {
        goto LABEL_4;
      }

LABEL_6:
      v11 = v9;
      if (v5 >= v9)
      {
        return v4 < 1 || v6 > dword_195492B64[v3];
      }
    }

    v15 = 1;
LABEL_28:
    v12 = v3;
    goto LABEL_29;
  }

  return v4 < 1 || v6 > dword_195492B64[v3];
}

uint64_t icu::SimpleDateFormat::compareSimpleAffix(icu::SimpleDateFormat *this, const icu::UnicodeString *a2, const icu::UnicodeString *a3, uint64_t a4)
{
  v4 = a4;
  v5 = *(a2 + 4);
  v6 = v5;
  LODWORD(v7) = v5 >> 5;
  if (v6 >= 0)
  {
    v7 = v7;
  }

  else
  {
    v7 = *(a2 + 3);
  }

  LODWORD(v8) = a4;
  if (v7 < 1)
  {
    return (v8 - v4);
  }

  v11 = 0;
  v8 = a4;
  while (1)
  {
    v12 = icu::UnicodeString::char32At(v7, a2, v11);
    v13 = v12;
    v14 = v12 < 0x10000 ? 1 : 2;
    isWhiteSpace = icu::PatternProps::isWhiteSpace(v12);
    LODWORD(v17) = *(a3 + 4);
    v16 = v17;
    LODWORD(v17) = v17 >> 5;
    v17 = v16 >= 0 ? v17 : *(a3 + 3);
    if (isWhiteSpace)
    {
      break;
    }

    if (v8 >= v17 || icu::UnicodeString::char32At(v17, a3, v8) != v13)
    {
      return 0xFFFFFFFFLL;
    }

    v11 += v14;
    v8 = (v14 + v8);
LABEL_36:
    v30 = *(a2 + 4);
    v31 = v30;
    LODWORD(v7) = v30 >> 5;
    if (v31 >= 0)
    {
      v7 = v7;
    }

    else
    {
      v7 = *(a2 + 3);
    }

    if (v11 >= v7)
    {
      return (v8 - v4);
    }
  }

  if (v8 < v17)
  {
    isWhiteSpace = icu::UnicodeString::char32At(v17, a3, v8);
    v26 = isWhiteSpace == v13;
    if (isWhiteSpace == v13)
    {
      do
      {
        v11 += v14;
        v8 = (v14 + v8);
        v18 = *(a2 + 4);
        v19 = v18;
        LODWORD(v20) = v18 >> 5;
        if (v19 >= 0)
        {
          v20 = v20;
        }

        else
        {
          v20 = *(a2 + 3);
        }

        if (v11 == v20)
        {
          break;
        }

        v21 = icu::UnicodeString::char32At(v20, a2, v11);
        v22 = v21;
        isWhiteSpace = icu::PatternProps::isWhiteSpace(v21);
        if (!isWhiteSpace)
        {
          break;
        }

        v23 = *(a3 + 4);
        v24 = v23;
        LODWORD(v25) = v23 >> 5;
        v25 = v24 >= 0 ? v25 : *(a3 + 3);
        if (v8 >= v25)
        {
          break;
        }

        v14 = v22 < 0x10000 ? 1 : 2;
        isWhiteSpace = icu::UnicodeString::char32At(v25, a3, v8);
      }

      while (isWhiteSpace == v22);
    }
  }

  else
  {
    v26 = 0;
  }

  v27 = icu::SimpleDateFormat::skipPatternWhiteSpace(isWhiteSpace, a2, v11);
  v28 = icu::SimpleDateFormat::skipUWhiteSpace(v27, a3, v8);
  v29 = v28;
  if (v26 || v28 != v8)
  {
    v11 = icu::SimpleDateFormat::skipUWhiteSpace(v28, a2, v27);
    v8 = v29;
    goto LABEL_36;
  }

  return 0xFFFFFFFFLL;
}

unint64_t icu::SimpleDateFormat::skipPatternWhiteSpace(icu::SimpleDateFormat *this, const icu::UnicodeString *a2, int a3)
{
  v3 = *(a2 + 4);
  if ((v3 & 0x11) != 0)
  {
    v4 = 0;
  }

  else if ((v3 & 2) != 0)
  {
    v4 = a2 + 10;
  }

  else
  {
    v4 = *(a2 + 3);
  }

  v5 = v3;
  v6 = v3 >> 5;
  if (v5 < 0)
  {
    v6 = *(a2 + 3);
  }

  return (icu::PatternProps::skipWhiteSpace(&v4[2 * a3], v6 - a3) - v4) >> 1;
}

uint64_t icu::SimpleDateFormat::skipUWhiteSpace(icu::SimpleDateFormat *this, const icu::UnicodeString *a2, uint64_t a3)
{
  do
  {
    v4 = a3;
    v5 = *(a2 + 4);
    v6 = v5;
    LODWORD(v7) = v5 >> 5;
    if (v6 >= 0)
    {
      v7 = v7;
    }

    else
    {
      v7 = *(a2 + 3);
    }

    if (a3 >= v7)
    {
      break;
    }

    v8 = icu::UnicodeString::char32At(v7, a2, a3);
    isUWhiteSpace = u_isUWhiteSpace(v8);
    v10 = v8 < 0x10000 ? 1 : 2;
    a3 = (v10 + v4);
  }

  while (isUWhiteSpace);
  return v4;
}

uint64_t **sub_1953D6A08(uint64_t **a1)
{
  v2 = *a1;
  if (*a1)
  {
    if (*v2)
    {
      icu::SharedObject::removeRef(*v2);
    }

    MEMORY[0x19A8B2600](v2, 0x1060C402CF69088);
  }

  return a1;
}

void sub_1953D6A58(void *a1)
{
  v1 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

icu::UnicodeSet **sub_1953D6C54(icu::UnicodeSet **a1)
{
  v2 = *a1;
  if (v2)
  {
    icu::UnicodeSet::~UnicodeSet(v2);
    MEMORY[0x19A8B2600]();
  }

  *a1 = 0;
  v3 = a1[1];
  if (v3)
  {
    icu::UnicodeSet::~UnicodeSet(v3);
    MEMORY[0x19A8B2600]();
  }

  a1[1] = 0;
  v4 = a1[2];
  if (v4)
  {
    icu::UnicodeSet::~UnicodeSet(v4);
    MEMORY[0x19A8B2600]();
  }

  a1[2] = 0;
  return a1;
}

uint64_t sub_1953D6CD0()
{
  if (qword_1ED443498)
  {
    v0 = sub_1953D6C54(qword_1ED443498);
    MEMORY[0x19A8B2600](v0, 0x20C40960023A9);
  }

  qword_1ED443498 = 0;
  atomic_store(0, &dword_1ED4434A0);
  return 1;
}

uint64_t sub_1953D6D24(unsigned int a1)
{
  if (atomic_load_explicit(&dword_1ED4434A0, memory_order_acquire) != 2)
  {
    if (icu::umtx_initImplPreInit(&dword_1ED4434A0))
    {
      sub_1953D6E18();
    }
  }

  if (dword_1ED4434A4 > 0)
  {
    return 0;
  }

  if (a1 > 0x1A)
  {
    goto LABEL_12;
  }

  if (((1 << a1) & 0x180F0) == 0)
  {
    if (((1 << a1) & 0x600000E) != 0)
    {
      v3 = qword_1ED443498;
      return *v3;
    }

LABEL_12:
    v3 = qword_1ED443498 + 16;
    return *v3;
  }

  v3 = qword_1ED443498 + 8;
  return *v3;
}

double icu::CollationKey::CollationKey(icu::CollationKey *this)
{
  *this = &unk_1F0942A28;
  *&result = 0x100000000;
  *(this + 1) = 0x100000000;
  return result;
}

{
  *this = &unk_1F0942A28;
  *&result = 0x100000000;
  *(this + 1) = 0x100000000;
  return result;
}

icu::CollationKey *icu::CollationKey::CollationKey(icu::CollationKey *this, const unsigned __int8 *a2, unsigned int a3)
{
  v3 = a3;
  *this = &unk_1F0942A28;
  *(this + 2) = a3;
  *(this + 3) = 0;
  if ((a3 & 0x80000000) != 0 || !a2 && a3)
  {
    goto LABEL_4;
  }

  if (a3 < 0x21)
  {
    if (!a3)
    {
      return this;
    }

    v6 = (this + 16);
LABEL_11:
    memcpy(v6, a2, v3);
    return this;
  }

  if (icu::CollationKey::reallocate(this, a3, 0))
  {
    v6 = (this + 16);
    if ((*(this + 2) & 0x80000000) != 0)
    {
      v6 = *v6;
    }

    goto LABEL_11;
  }

  v3 = *(this + 2);
LABEL_4:
  *(this + 2) = v3 & 0x80000000;
  *(this + 3) = 2;
  return this;
}

void *icu::CollationKey::reallocate(icu::CollationKey *this, int a2, int a3)
{
  v6 = malloc_type_malloc(a2, 0x100004077774924uLL);
  v7 = v6;
  if (v6)
  {
    if (a3 >= 1)
    {
      v8 = (this + 16);
      if ((*(this + 2) & 0x80000000) != 0)
      {
        v8 = *v8;
      }

      memcpy(v6, v8, a3);
    }

    v9 = *(this + 2);
    if (v9 < 0)
    {
      free(*(this + 2));
      v9 = *(this + 2);
    }

    *(this + 2) = v7;
    *(this + 6) = a2;
    *(this + 2) = v9 | 0x80000000;
  }

  return v7;
}

uint64_t icu::CollationKey::setToBogus(uint64_t this)
{
  *(this + 8) &= 0x80000000;
  *(this + 12) = 2;
  return this;
}

icu::CollationKey *icu::CollationKey::CollationKey(icu::CollationKey *this, const icu::CollationKey *a2)
{
  *this = &unk_1F0942A28;
  v3 = *(a2 + 2);
  v4 = *(a2 + 3);
  v5 = v3 & 0x7FFFFFFF;
  *(this + 2) = v3 & 0x7FFFFFFF;
  *(this + 3) = v4;
  if (v4 == 2)
  {
    *(this + 1) = 0x200000000;
  }

  else
  {
    if (v5 < 0x21)
    {
      if (!v5)
      {
        return this;
      }

      v9 = (this + 16);
    }

    else
    {
      v7 = icu::CollationKey::reallocate(this, v3 & 0x7FFFFFFF, 0);
      v8 = *(this + 2);
      if (!v7)
      {
        *(this + 2) = v8 & 0x80000000;
        *(this + 3) = 2;
        return this;
      }

      v9 = (this + 16);
      if (v8 < 0)
      {
        v9 = *v9;
      }
    }

    v12 = *(a2 + 2);
    v11 = a2 + 16;
    v10 = v12;
    if (*(v11 - 2) >= 0)
    {
      v13 = v11;
    }

    else
    {
      v13 = v10;
    }

    memcpy(v9, v13, v5);
  }

  return this;
}

void icu::CollationKey::~CollationKey(void **this)
{
  *this = &unk_1F0942A28;
  if ((this[1] & 0x80000000) != 0)
  {
    free(this[2]);
  }

  icu::UObject::~UObject(this);
}

{
  icu::CollationKey::~CollationKey(this);

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::CollationKey::reset(uint64_t this)
{
  *(this + 8) &= 0x80000000;
  *(this + 12) = 1;
  return this;
}

BOOL icu::CollationKey::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = v2 & 0x7FFFFFFF;
  v4 = *(a2 + 8);
  if ((v2 & 0x7FFFFFFF) != (v4 & 0x7FFFFFFF))
  {
    return 0;
  }

  if (a1 == a2)
  {
    return 1;
  }

  v5 = (a1 + 16);
  if (v2 < 0)
  {
    v5 = *v5;
  }

  v8 = *(a2 + 16);
  v6 = (a2 + 16);
  v7 = v8;
  if (v4 < 0)
  {
    v6 = v7;
  }

  return memcmp(v5, v6, v3) == 0;
}

icu::CollationKey *icu::CollationKey::operator=(icu::CollationKey *this, icu::CollationKey *a2)
{
  if (this != a2)
  {
    if (*(a2 + 3) == 2)
    {
      v4 = *(this + 2);
    }

    else
    {
      v6 = *(a2 + 2) & 0x7FFFFFFF;
      v4 = *(this + 2);
      if (v4 < 0)
      {
        v7 = *(this + 6);
      }

      else
      {
        v7 = 32;
      }

      if (v6 <= v7 || (v8 = icu::CollationKey::reallocate(this, *(a2 + 2) & 0x7FFFFFFF, 0), v4 = *(this + 2), v8))
      {
        if (v6)
        {
          v9 = (this + 16);
          if (v4 < 0)
          {
            v9 = *v9;
          }

          if (*(a2 + 2) >= 0)
          {
            v10 = a2 + 16;
          }

          else
          {
            v10 = *(a2 + 2);
          }

          memcpy(v9, v10, v6);
          v4 = *(this + 2);
        }

        *(this + 2) = v4 & 0x80000000 | v6;
        v5 = *(a2 + 3);
        goto LABEL_18;
      }
    }

    *(this + 2) = v4 & 0x80000000;
    v5 = 2;
LABEL_18:
    *(this + 3) = v5;
  }

  return this;
}

uint64_t icu::CollationKey::compareTo(icu::CollationKey *this, const icu::CollationKey *a2, UErrorCode *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  v5 = *(this + 2);
  v6 = this + 16;
  if (v5 < 0)
  {
    v6 = *v6;
  }

  v9 = *(a2 + 2);
  v7 = a2 + 16;
  v8 = v9;
  v10 = *(v7 - 2);
  if (v10 < 0)
  {
    v7 = v8;
  }

  if (v6 == v7)
  {
    return 0;
  }

  v11 = v5 & 0x7FFFFFFF;
  v12 = v10 & 0x7FFFFFFF;
  if (v11 < v12)
  {
    v3 = 0xFFFFFFFFLL;
  }

  else
  {
    v3 = v11 != v12;
  }

  if (v11 >= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    v14 = memcmp(v6, v7, v13);
    if (v14 <= 0)
    {
      if (v14)
      {
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      return 1;
    }
  }

  return v3;
}

uint64_t icu::CollationKey::hashCode(icu::CollationKey *this)
{
  result = *(this + 3);
  if (!result)
  {
    v3 = *(this + 2);
    v4 = this + 16;
    if (v3 < 0)
    {
      v4 = *v4;
    }

    if ((v3 & 0x7FFFFFFF) == 0 || v4 == 0)
    {
      result = 1;
    }

    else
    {
      LODWORD(result) = ustr_hashCharsN(v4, v3 & 0x7FFFFFFF);
      if ((result & 0xFFFFFFFD) != 0)
      {
        result = result;
      }

      else
      {
        result = 1;
      }
    }

    *(this + 3) = result;
  }

  return result;
}

uint64_t ucol_keyHashCode(unsigned __int8 *a1, int a2)
{
  result = 1;
  if (a1 && a2)
  {
    LODWORD(result) = ustr_hashCharsN(a1, a2);
    if ((result & 0xFFFFFFFD) != 0)
    {
      return result;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t icu::StandardPlural::indexOrNegativeFromString(icu::StandardPlural *this, const char *a2)
{
  v4 = this + 1;
  v3 = *this;
  if (v3 <= 0x6C)
  {
    if (*this <= 0x3Cu)
    {
      if (v3 != 48)
      {
        if (v3 == 49 && !*v4)
        {
          return 7;
        }

        return 0xFFFFFFFFLL;
      }

      if (*v4)
      {
        return 0xFFFFFFFFLL;
      }

      return 6;
    }

    if (v3 != 61)
    {
      if (v3 == 102 && *v4 == 101 && *(this + 2) == 119 && !*(this + 3))
      {
        return 3;
      }

      return 0xFFFFFFFFLL;
    }

    v6 = *v4;
    if (v6 != 49)
    {
      if (v6 != 48 || *(this + 2))
      {
        return 0xFFFFFFFFLL;
      }

      return 6;
    }

    if (!*(this + 2))
    {
      return 7;
    }

    return 0xFFFFFFFFLL;
  }

  if (*this <= 0x73u)
  {
    if (v3 == 109)
    {
      if (!strcmp(this + 1, "any"))
      {
        return 4;
      }
    }

    else if (v3 == 111)
    {
      if (!strcmp(this + 1, "ther"))
      {
        return 5;
      }

      if (*v4 == 110 && *(this + 2) == 101 && !*(this + 3))
      {
        return 1;
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (v3 == 116)
  {
    if (*v4 == 119 && *(this + 2) == 111 && !*(this + 3))
    {
      return 2;
    }

    return 0xFFFFFFFFLL;
  }

  if (v3 != 122)
  {
    return 0xFFFFFFFFLL;
  }

  result = strcmp(this + 1, "ero");
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t icu::StandardPlural::indexOrNegativeFromString(icu::StandardPlural *this, const icu::UnicodeString *a2)
{
  v3 = *(this + 4);
  if ((v3 & 0x8000u) == 0)
  {
    v4 = v3 >> 5;
  }

  else
  {
    v4 = *(this + 3);
  }

  if (v4 <= 2)
  {
    if (v4 != 1)
    {
      if (v4 == 2)
      {
        if (!icu::UnicodeString::doCompare(this, 0, 2, "=", 0, 2))
        {
          return 6;
        }

        v6 = *(this + 4);
        v7 = v6;
        v8 = v6 >> 5;
        v9 = v7 >= 0 ? v8 : *(this + 3);
        if (!icu::UnicodeString::doCompare(this, 0, v9, L"=1", 0, 2))
        {
          return 7;
        }
      }

      return 0xFFFFFFFFLL;
    }

    v22 = (this + 10);
    if ((v3 & 2) == 0)
    {
      v22 = *(this + 3);
    }

    v23 = *v22;
    if (v23 == 49)
    {
      v24 = 7;
    }

    else
    {
      v24 = -1;
    }

    if (v23 == 48)
    {
      return 6;
    }

    else
    {
      return v24;
    }
  }

  else
  {
    if (v4 != 3)
    {
      if (v4 == 4)
      {
        v5 = 4;
        if (!icu::UnicodeString::doCompare(this, 0, 4, "m", 0, 4))
        {
          return v5;
        }

        v18 = *(this + 4);
        v19 = v18;
        v20 = v18 >> 5;
        if (v19 >= 0)
        {
          v21 = v20;
        }

        else
        {
          v21 = *(this + 3);
        }

        if (!icu::UnicodeString::doCompare(this, 0, v21, L"zero", 0, 4))
        {
          return 0;
        }
      }

      else if (v4 == 5)
      {
        v5 = 5;
        if (!icu::UnicodeString::doCompare(this, 0, 5, "o", 0, 5))
        {
          return v5;
        }
      }

      return 0xFFFFFFFFLL;
    }

    if (!icu::UnicodeString::doCompare(this, 0, 3, "o", 0, 3))
    {
      return 1;
    }

    v10 = *(this + 4);
    v11 = v10;
    v12 = v10 >> 5;
    if (v11 >= 0)
    {
      v13 = v12;
    }

    else
    {
      v13 = *(this + 3);
    }

    if (!icu::UnicodeString::doCompare(this, 0, v13, "t", 0, 3))
    {
      return 2;
    }

    v14 = *(this + 4);
    v15 = v14;
    v16 = v14 >> 5;
    if (v15 >= 0)
    {
      v17 = v16;
    }

    else
    {
      v17 = *(this + 3);
    }

    v5 = 3;
    if (icu::UnicodeString::doCompare(this, 0, v17, "f", 0, 3))
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v5;
}

uint64_t icu::StandardPlural::indexFromString(icu::StandardPlural *this, char *a2, UErrorCode *a3)
{
  if (*a2 > 0)
  {
    return 5;
  }

  result = icu::StandardPlural::indexOrNegativeFromString(this, a2);
  if ((result & 0x80000000) != 0)
  {
    *a2 = 1;
    return 5;
  }

  return result;
}

uint64_t icu::StandardPlural::indexFromString(icu::StandardPlural *this, const icu::UnicodeString *a2, UErrorCode *a3)
{
  if (*a2 > 0)
  {
    return 5;
  }

  result = icu::StandardPlural::indexOrNegativeFromString(this, a2);
  if ((result & 0x80000000) != 0)
  {
    *a2 = 1;
    return 5;
  }

  return result;
}

uint64_t icu::StringSegment::StringSegment(uint64_t this, const icu::UnicodeString *a2, char a3)
{
  *this = a2;
  *(this + 8) = 0;
  v3 = *(a2 + 4);
  v4 = v3;
  v5 = v3 >> 5;
  if (v4 < 0)
  {
    v5 = *(a2 + 3);
  }

  *(this + 12) = v5;
  *(this + 16) = a3;
  return this;
}

{
  *this = a2;
  *(this + 8) = 0;
  v3 = *(a2 + 4);
  v4 = v3;
  v5 = v3 >> 5;
  if (v4 < 0)
  {
    v5 = *(a2 + 3);
  }

  *(this + 12) = v5;
  *(this + 16) = a3;
  return this;
}

unint64_t icu::StringSegment::adjustOffsetByCodePoint(icu::StringSegment *this)
{
  result = icu::StringSegment::getCodePoint(this);
  if (result < 0x10000)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  *(this + 2) += v3;
  return result;
}

unint64_t icu::StringSegment::getCodePoint(icu::StringSegment *this)
{
  v2 = *this;
  v3 = *(this + 2);
  v4 = *(v2 + 8);
  if (*(v2 + 8) < 0)
  {
    v5 = *(v2 + 12);
  }

  else
  {
    v5 = v4 >> 5;
  }

  if (v5 <= v3)
  {
    v7 = 0xFFFF;
  }

  else
  {
    if ((v4 & 2) != 0)
    {
      v6 = v2 + 10;
    }

    else
    {
      v6 = *(v2 + 24);
    }

    v7 = *(v6 + 2 * v3);
    if ((v7 & 0xFC00) == 0xD800)
    {
      v8 = *(this + 3);
      if (v3 + 1 < v8)
      {
        return icu::UnicodeString::char32At(v8, v2, v3);
      }
    }
  }

  if ((v7 & 0xF800) == 0xD800)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v7;
  }
}

_DWORD *icu::StringSegment::resetLength(_DWORD *this)
{
  if (*(*this + 8) < 0)
  {
    v1 = *(*this + 12);
  }

  else
  {
    v1 = *(*this + 8) >> 5;
  }

  this[3] = v1;
  return this;
}

uint64_t icu::StringSegment::charAt(icu::StringSegment *this, int a2)
{
  v2 = *this;
  v3 = *(this + 2) + a2;
  v4 = *(*this + 8);
  if (*(*this + 8) < 0)
  {
    v5 = *(v2 + 12);
  }

  else
  {
    v5 = v4 >> 5;
  }

  if (v5 <= v3)
  {
    return 0xFFFFLL;
  }

  if ((v4 & 2) != 0)
  {
    v6 = v2 + 10;
  }

  else
  {
    v6 = *(v2 + 24);
  }

  return *(v6 + 2 * v3);
}

uint64_t icu::StringSegment::toUnicodeString@<X0>(icu::StringSegment *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *this;
  v5 = *(*this + 8);
  if ((v5 & 0x11) != 0)
  {
    v6 = 0;
  }

  else if ((v5 & 2) != 0)
  {
    v6 = v4 + 10;
  }

  else
  {
    v6 = *(v4 + 24);
  }

  return icu::UnicodeString::UnicodeString(a2, v6 + 2 * *(this + 2), (*(this + 3) - *(this + 2)));
}

uint64_t icu::StringSegment::toTempUnicodeString@<X0>(icu::StringSegment *this@<X0>, uint64_t a2@<X8>)
{
  v6 = *this;
  v7 = *(*this + 8);
  if ((v7 & 0x11) != 0)
  {
    v8 = 0;
  }

  else if ((v7 & 2) != 0)
  {
    v8 = v6 + 10;
  }

  else
  {
    v8 = *(v6 + 24);
  }

  v12[1] = v2;
  v12[2] = v3;
  v10 = *(this + 2);
  v9 = *(this + 3);
  v12[0] = v8 + 2 * v10;
  return icu::UnicodeString::UnicodeString(a2, 0, v12);
}

BOOL icu::StringSegment::startsWith(icu::StringSegment *this, UChar32 a2)
{
  CodePoint = icu::StringSegment::getCodePoint(this);
  v5 = *(this + 16);

  return icu::StringSegment::codePointsEqual(CodePoint, a2, v5);
}

BOOL icu::StringSegment::codePointsEqual(UChar32 c, UChar32 a2, int a3)
{
  v4 = c == a2;
  result = c == a2;
  if (!v4)
  {
    if (a3)
    {
      v7 = u_foldCase(c, 1u);
      return v7 == u_foldCase(a2, 1u);
    }
  }

  return result;
}

BOOL icu::StringSegment::startsWith(icu::StringSegment *this, const icu::UnicodeString *a2)
{
  v2 = *(a2 + 4);
  if (v2)
  {
    return 0;
  }

  v4 = v2;
  v5 = v2 >> 5;
  if (v4 < 0)
  {
    v5 = *(a2 + 3);
  }

  if (!v5 || *(this + 3) == *(this + 2))
  {
    return 0;
  }

  CodePoint = icu::StringSegment::getCodePoint(this);
  v10 = icu::UnicodeString::char32At(v9, a2, 0);
  v11 = *(this + 16);

  return icu::StringSegment::codePointsEqual(CodePoint, v10, v11);
}

unint64_t icu::StringSegment::getPrefixLengthInternal(icu::StringSegment *this, const icu::UnicodeString *a2, int a3)
{
  v6 = 0;
  v7 = a2 + 10;
  do
  {
    v8 = v6;
    v9 = *(a2 + 4);
    v10 = v9;
    v11 = v9 >> 5;
    if (v10 >= 0)
    {
      v12 = v11;
    }

    else
    {
      v12 = *(a2 + 3);
    }

    if (v8 >= uprv_min((*(this + 3) - *(this + 2)), v12))
    {
      break;
    }

    v13 = *this;
    v14 = *(*this + 8);
    v15 = *(*this + 8) < 0 ? *(v13 + 12) : v14 >> 5;
    v16 = v8 + *(this + 2);
    if (v15 <= v16)
    {
      v18 = 0xFFFF;
    }

    else
    {
      v17 = (v14 & 2) != 0 ? v13 + 10 : *(v13 + 24);
      v18 = *(v17 + 2 * v16);
    }

    v19 = *(a2 + 4);
    v20 = (v19 & 0x8000u) == 0 ? v19 >> 5 : *(a2 + 3);
    if (v8 >= v20)
    {
      v22 = 0xFFFF;
    }

    else
    {
      v21 = (v19 & 2) != 0 ? v7 : *(a2 + 3);
      v22 = *&v21[2 * v8];
    }

    v23 = icu::StringSegment::codePointsEqual(v18, v22, a3);
    v6 = v8 + 1;
  }

  while (v23);
  return v8;
}

BOOL icu::StringSegment::operator==(icu::StringSegment *a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  icu::StringSegment::toTempUnicodeString(a1, v10);
  if (v11)
  {
    v5 = *(a2 + 8);
    v3 = v5 & 1;
  }

  else
  {
    v3 = 0;
    if ((v11 & 0x8000u) == 0)
    {
      v4 = v11 >> 5;
    }

    else
    {
      v4 = v12;
    }

    v5 = *(a2 + 8);
    if (v5 >= 0)
    {
      v6 = v5 >> 5;
    }

    else
    {
      v6 = *(a2 + 12);
    }

    if ((v5 & 1) == 0 && v4 == v6)
    {
      if ((v5 & 2) != 0)
      {
        v7 = (a2 + 10);
      }

      else
      {
        v7 = *(a2 + 24);
      }

      v3 = icu::UnicodeString::doEquals(v10, v7, v4);
    }
  }

  icu::UnicodeString::~UnicodeString(v5, v10);
  v8 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t sub_1953D7FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  *a1 = &unk_1F0942A68;
  *(a1 + 8) = &unk_1F0942AE8;
  *(a1 + 16) = &unk_1F0942B28;
  *(a1 + 24) = &unk_1F0935D00;
  *(a1 + 32) = 2;
  *(a1 + 88) = a6;
  *(a1 + 96) = a5;
  *(a1 + 100) = -1;
  (*(*a2 + 24))(a2, a3, a4);
  return a1;
}

uint64_t sub_1953D80A4(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F0942A68;
  *(a1 + 8) = &unk_1F0942AE8;
  *(a1 + 16) = &unk_1F0942B28;
  icu::UnicodeString::UnicodeString((a1 + 24), (a2 + 24));
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  return a1;
}

void sub_1953D814C(void *a1)
{
  *a1 = &unk_1F0942A68;
  v2 = (a1 + 1);
  a1[1] = &unk_1F0942AE8;
  v3 = (a1 + 2);
  a1[2] = &unk_1F0942B28;
  icu::UnicodeString::~UnicodeString((a1 + 3));
  icu::UnicodeReplacer::~UnicodeReplacer(v3);
  icu::UnicodeMatcher::~UnicodeMatcher(v2);

  icu::UnicodeFunctor::~UnicodeFunctor(a1);
}

void sub_1953D8210(void *a1)
{
  sub_1953D814C(a1);

  JUMPOUT(0x19A8B2600);
}

void sub_1953D8248(uint64_t a1)
{
  sub_1953D814C((a1 - 8));

  JUMPOUT(0x19A8B2600);
}

void sub_1953D8284(uint64_t a1)
{
  sub_1953D814C((a1 - 16));

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_1953D830C(uint64_t a1)
{
  if (a1)
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1953D831C(uint64_t a1)
{
  if (a1)
  {
    return a1 + 16;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1953D832C(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5)
{
  v10 = *a3;
  v28 = v10;
  if (v10 <= a4)
  {
    for (i = 0; ; ++i)
    {
      v13 = *(a1 + 32);
      if (*(a1 + 32) < 0)
      {
        v14 = *(a1 + 36);
      }

      else
      {
        v14 = v13 >> 5;
      }

      if (i >= v14)
      {
        *(a1 + 100) = *a3;
        v27 = v28;
        v10 = v28;
        goto LABEL_49;
      }

      if (a5 && v28 == a4)
      {
        break;
      }

      if ((v13 & 0x8000) != 0)
      {
        v15 = *(a1 + 36);
      }

      else
      {
        v15 = v13 >> 5;
      }

      if (i >= v15)
      {
        v17 = 0xFFFF;
      }

      else
      {
        v16 = a1 + 34;
        if ((v13 & 2) == 0)
        {
          v16 = *(a1 + 48);
        }

        v17 = *(v16 + 2 * i);
      }

      v18 = sub_19539E9F4(*(a1 + 88), v17);
      if (v18)
      {
        result = (*(*v18 + 16))(v18, a2, &v28, a4, a5);
        if (result != 2)
        {
          return result;
        }
      }

      else
      {
        if (v28 >= a4 || v17 != (*(*a2 + 72))(a2))
        {
          return 0;
        }

        ++v28;
      }
    }

    return 1;
  }

  else
  {
    if (*(a1 + 32) < 0)
    {
      v11 = *(a1 + 36);
    }

    else
    {
      v11 = *(a1 + 32) >> 5;
    }

    if (v11 >= 1)
    {
      v20 = v11 - 1;
      do
      {
        v21 = *(a1 + 32);
        if (*(a1 + 32) < 0)
        {
          v22 = *(a1 + 36);
        }

        else
        {
          v22 = v21 >> 5;
        }

        if (v20 >= v22)
        {
          v24 = 0xFFFF;
        }

        else
        {
          v23 = a1 + 34;
          if ((v21 & 2) == 0)
          {
            v23 = *(a1 + 48);
          }

          v24 = *(v23 + 2 * v20);
        }

        v25 = sub_19539E9F4(*(a1 + 88), v24);
        if (v25)
        {
          result = (*(*v25 + 16))(v25, a2, &v28, a4, a5);
          if (result != 2)
          {
            return result;
          }
        }

        else
        {
          if (v28 <= a4 || v24 != (*(*a2 + 72))(a2))
          {
            return 0;
          }

          --v28;
        }

        v26 = v20-- + 1;
      }

      while (v26 > 1);
      v10 = v28;
    }

    if ((*(a1 + 100) & 0x80000000) != 0)
    {
      *(a1 + 100) = v10 + 1;
      v27 = *a3 + 1;
LABEL_49:
      *(a1 + 104) = v27;
    }

    *a3 = v10;
    return 2;
  }
}

icu::ICU_Utility *sub_1953D85F4(uint64_t a1, icu::ICU_Utility *this, uint64_t a3, uint64_t a4, uint64_t a5, icu::UnicodeString *a6)
{
  v34 = *MEMORY[0x1E69E9840];
  v9 = *(this + 4);
  if (v9)
  {
    icu::UnicodeString::unBogus(this);
  }

  else
  {
    if ((v9 & 0x8000u) == 0)
    {
      v10 = v9 >> 5;
    }

    else
    {
      v10 = *(this + 3);
    }

    if (v10)
    {
      *(this + 4) &= 0x1Eu;
    }
  }

  v30 = 0u;
  v31 = 0u;
  v33 = 0;
  v32 = 0u;
  v28 = 0;
  v29 = &unk_1F0935D00;
  LOWORD(v30) = 2;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = &unk_1F0935D00;
  LOWORD(v25) = 2;
  if (*(a1 + 96) >= 1)
  {
    v23 = 40;
    icu::UnicodeString::doAppend(this, &v23, 0, 1);
  }

  v11 = 0;
  while ((*(a1 + 32) & 0x80000000) == 0)
  {
    if (v11 >= *(a1 + 32) >> 5)
    {
      goto LABEL_25;
    }

    v12 = *(a1 + 32) >> 5;
LABEL_16:
    if (v12 <= v11)
    {
      v14 = 0xFFFFLL;
    }

    else
    {
      v13 = a1 + 34;
      if ((*(a1 + 32) & 2) == 0)
      {
        v13 = *(a1 + 48);
      }

      v14 = *(v13 + 2 * v11);
    }

    v15 = sub_19539E9F4(*(a1 + 88), v14);
    if (v15)
    {
      v17 = (*(*v15 + 24))(v15, &v29, a3);
      icu::ICU_Utility::appendToRule(this, v17, 1, a3, &v24, v18);
    }

    else
    {
      icu::ICU_Utility::appendToRule(this, v14, 0, a3, &v24, v16);
    }

    ++v11;
  }

  v12 = *(a1 + 36);
  if (v11 < v12)
  {
    v12 = v12;
    goto LABEL_16;
  }

LABEL_25:
  if (*(a1 + 96) > 0)
  {
    v23 = 41;
    icu::UnicodeString::doAppend(this, &v23, 0, 1);
  }

  icu::ICU_Utility::appendToRule(this, 0xFFFFFFFFLL, 1, a3, &v24, a6);
  icu::UnicodeString::~UnicodeString(v19, &v24);
  icu::UnicodeString::~UnicodeString(v20, &v29);
  v21 = *MEMORY[0x1E69E9840];
  return this;
}

uint64_t sub_1953D884C(uint64_t a1, int a2)
{
  if ((*(a1 + 32) & 0x80000000) == 0)
  {
    v4 = (*(a1 + 32) >> 5);
    if (v4)
    {
      goto LABEL_3;
    }

    return 1;
  }

  v4 = *(a1 + 36);
  if (!v4)
  {
    return 1;
  }

LABEL_3:
  v5 = icu::UnicodeString::char32At(v4, (a1 + 24), 0);
  v6 = v5;
  v7 = sub_19539E9F4(*(a1 + 88), v5);
  if (!v7)
  {
    return a2 == v6;
  }

  v8 = *(*v7 + 32);

  return v8();
}

icu::UnicodeSet *sub_1953D8910(icu::UnicodeSet *result, icu::UnicodeSet *a2)
{
  v3 = result;
  for (i = 0; ; i += v8)
  {
    v5 = *(v3 + 16) < 0 ? *(v3 + 9) : (*(v3 + 16) >> 5);
    if (i >= v5)
    {
      break;
    }

    v6 = icu::UnicodeString::char32At(v5, (v3 + 24), i);
    v7 = sub_19539E9F4(*(v3 + 11), v6);
    if (v7)
    {
      result = (*(*v7 + 40))(v7, a2);
    }

    else
    {
      result = icu::UnicodeSet::add(a2, v6);
    }

    if (v6 < 0x10000)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  return result;
}

uint64_t sub_1953D89DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 100);
  if (v7 < 0 || v7 == *(a1 + 104))
  {
    v9 = 0;
  }

  else
  {
    (*(*a2 + 40))(a2);
    v9 = (*(a1 + 104) - *(a1 + 100));
  }

  v12 = &unk_1F0935D00;
  v13 = 2;
  (*(*a2 + 32))(a2, a3, a4, &v12);
  icu::UnicodeString::~UnicodeString(&v12);
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

icu::UnicodeString *sub_1953D8B04(uint64_t a1, icu::UnicodeString *this)
{
  v4 = *(this + 4);
  if (v4)
  {
    icu::UnicodeString::unBogus(this);
  }

  else
  {
    if ((v4 & 0x8000u) == 0)
    {
      v5 = v4 >> 5;
    }

    else
    {
      v5 = *(this + 3);
    }

    if (v5)
    {
      *(this + 4) &= 0x1Eu;
    }
  }

  v7 = 36;
  icu::UnicodeString::doAppend(this, &v7, 0, 1);
  icu::ICU_Utility::appendNumber(this, *(a1 + 96), 0xAu, 1);
  return this;
}

double sub_1953D8BA4(uint64_t a1)
{
  result = NAN;
  *(a1 + 100) = -1;
  return result;
}

void *sub_1953D8BB8(void *result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  result[11] = a2;
  while (1)
  {
    v4 = v2[4] < 0 ? *(v2 + 9) : (*(v2 + 16) >> 5);
    if (v3 >= v4)
    {
      break;
    }

    v5 = icu::UnicodeString::char32At(v4, (v2 + 3), v3);
    result = sub_19539E9C8(v2[11], v5);
    if (result)
    {
      result = (*(*result + 48))(result, v2[11]);
    }

    if (v5 < 0x10000)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    v3 += v6;
  }

  return result;
}

uint64_t sub_1953D8C7C(uint64_t a1, UChar **a2, int a3, uint64_t a4)
{
  *a1 = &unk_1F0942BA8;
  *(a1 + 8) = &unk_1F0942C08;
  *(a1 + 16) = &unk_1F0935D00;
  *(a1 + 24) = 2;
  icu::UnicodeString::operator=((a1 + 16), a2);
  *(a1 + 80) = a3;
  *(a1 + 84) = 257;
  *(a1 + 88) = a4;
  return a1;
}

uint64_t sub_1953D8D28(uint64_t a1, UChar **a2, uint64_t a3)
{
  *a1 = &unk_1F0942BA8;
  *(a1 + 8) = &unk_1F0942C08;
  *(a1 + 16) = &unk_1F0935D00;
  *(a1 + 24) = 2;
  icu::UnicodeString::operator=((a1 + 16), a2);
  *(a1 + 80) = 0;
  *(a1 + 84) = 256;
  *(a1 + 88) = a3;
  return a1;
}

uint64_t sub_1953D8DC8(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F0942BA8;
  *(a1 + 8) = &unk_1F0942C08;
  *(a1 + 16) = &unk_1F0935D00;
  *(a1 + 24) = 2;
  icu::UnicodeString::operator=((a1 + 16), (a2 + 16));
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  return a1;
}

void sub_1953D8E74(void *a1)
{
  *a1 = &unk_1F0942BA8;
  a1[1] = &unk_1F0942C08;
  icu::UnicodeString::~UnicodeString((a1 + 2));

  icu::UnicodeFunctor::~UnicodeFunctor(a1);
}

void sub_1953D8EEC(void *a1)
{
  v1 = (a1 - 1);
  *(a1 - 1) = &unk_1F0942BA8;
  *a1 = &unk_1F0942C08;
  icu::UnicodeString::~UnicodeString((a1 + 1));

  icu::UnicodeFunctor::~UnicodeFunctor(v1);
}

void sub_1953D8F5C(void *a1)
{
  *a1 = &unk_1F0942BA8;
  a1[1] = &unk_1F0942C08;
  icu::UnicodeString::~UnicodeString((a1 + 2));
  icu::UnicodeFunctor::~UnicodeFunctor(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_1953D903C(uint64_t a1)
{
  if (a1)
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1953D904C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v5 = a3;
  v49 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 85))
  {
    (*(*a2 + 32))(a2, a3, a4, a1 + 16);
    if (*(a1 + 24) < 0)
    {
      v10 = *(a1 + 28);
    }

    else
    {
      v10 = *(a1 + 24) >> 5;
    }

    v26 = *(a1 + 80);
    goto LABEL_46;
  }

  v41 = a4;
  v45 = 0u;
  v48 = 0;
  v47 = 0u;
  v46 = 0u;
  v44 = &unk_1F0935D00;
  LOWORD(v45) = 2;
  *(a1 + 85) = 0;
  v8 = (*(*a2 + 64))(a2);
  if (v5 < 1)
  {
    memset(v43, 0, sizeof(v43));
    icu::UnicodeString::UnicodeString(v43, 0xFFFF);
    (*(*a2 + 32))(a2, v8, v8, v43);
    icu::UnicodeString::~UnicodeString(v11, v43);
    v9 = 1;
  }

  else
  {
    if ((*(*a2 + 80))(a2, (v5 - 1)) < 0x10000)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    (*(*a2 + 40))(a2, (v5 - v9), v5, v8);
  }

  v12 = 0;
  v13 = 0;
  v40 = v8;
  v14 = (v9 + v8);
  v15 = v14;
  while (1)
  {
    v16 = *(a1 + 24) < 0 ? *(a1 + 28) : *(a1 + 24) >> 5;
    if (v12 >= v16)
    {
      break;
    }

    v17 = *(a1 + 80);
    if (v12 == v17)
    {
      v13 = v15 - v14;
    }

    v18 = icu::UnicodeString::char32At(v17, (a1 + 16), v12);
    v19 = sub_19539EA44(*(a1 + 88), v18);
    if (!v19)
    {
      icu::UnicodeString::append(&v44, v18);
      goto LABEL_30;
    }

    v20 = v19;
    *(a1 + 85) = 1;
    v21 = v45 >> 5;
    if ((v45 & 0x8000u) != 0)
    {
      v21 = DWORD1(v45);
    }

    if (v21 >= 1)
    {
      (*(*a2 + 32))(a2, v15, v15, &v44);
      if (v45 < 0)
      {
        v22 = DWORD1(v45);
        v15 = (DWORD1(v45) + v15);
        if ((v45 & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v15 = v15 + (v45 >> 5);
        if ((v45 & 1) == 0)
        {
          v22 = v45 >> 5;
LABEL_26:
          if (v22)
          {
            LOBYTE(v45) = v45 & 0x1F;
            LOWORD(v45) = v45;
          }

          goto LABEL_29;
        }
      }

      icu::UnicodeString::unBogus(&v44);
    }

LABEL_29:
    v15 = (*(*v20 + 16))(v20, a2, v15, v15, a5) + v15;
LABEL_30:
    if (v18 < 0x10000)
    {
      v23 = 1;
    }

    else
    {
      v23 = 2;
    }

    v12 += v23;
  }

  v24 = v45 >> 5;
  if ((v45 & 0x8000u) != 0)
  {
    v24 = DWORD1(v45);
  }

  if (v24 >= 1)
  {
    (*(*a2 + 32))(a2, v15, v15, &v44);
    v25 = v45 >> 5;
    if ((v45 & 0x8000u) != 0)
    {
      v25 = DWORD1(v45);
    }

    v15 = (v25 + v15);
  }

  v10 = (v15 - v14);
  if (v12 == *(a1 + 80))
  {
    v26 = v15 - v14;
  }

  else
  {
    v26 = v13;
  }

  (*(*a2 + 40))(a2, v14, v15, v5);
  *&v43[0] = &unk_1F0935D00;
  WORD4(v43[0]) = 2;
  (*(*a2 + 32))(a2, (v10 + v40), (v10 + v15), v43);
  icu::UnicodeString::~UnicodeString(v27, v43);
  *&v43[0] = &unk_1F0935D00;
  WORD4(v43[0]) = 2;
  (*(*a2 + 32))(a2, (v10 + v5), (v10 + v41), v43);
  icu::UnicodeString::~UnicodeString(v28, v43);
  icu::UnicodeString::~UnicodeString(v29, &v44);
LABEL_46:
  if (*(a1 + 84))
  {
    v30 = *(a1 + 80);
    if (v30 < 0)
    {
      if (v5 >= 1)
      {
        v33 = -v30;
        do
        {
          if ((*(*a2 + 80))(a2, (v5 - 1)) >= 0x10000)
          {
            v34 = -2;
          }

          else
          {
            v34 = -1;
          }

          LODWORD(v5) = v34 + v5;
          --v33;
        }

        while (v33 && v5 > 0);
        v30 = -v33;
      }

      v35 = v30 + v5;
    }

    else
    {
      if (*(a1 + 24) < 0)
      {
        v32 = *(a1 + 28);
        if (v30 > v32)
        {
          goto LABEL_61;
        }
      }

      else
      {
        v31 = *(a1 + 24);
        if (v30 > v31 >> 5)
        {
          v32 = v31 >> 5;
LABEL_61:
          v5 = (v10 + v5);
          v26 = v30 - v32;
          if (v30 - v32 >= 1)
          {
            while (v5 < (*(*a2 + 64))(a2))
            {
              if ((*(*a2 + 80))(a2, v5) < 0x10000)
              {
                v36 = 1;
              }

              else
              {
                v36 = 2;
              }

              v5 = (v36 + v5);
              v37 = __OFSUB__(v26--, 1);
              if ((v26 < 0) ^ v37 | (v26 == 0))
              {
                v26 = 0;
                break;
              }
            }
          }
        }
      }

      v35 = v26 + v5;
    }

    *a5 = v35;
  }

  v38 = *MEMORY[0x1E69E9840];
  return v10;
}

icu::ICU_Utility *sub_1953D9688(uint64_t a1, icu::ICU_Utility *this, uint64_t a3, uint64_t a4, uint64_t a5, icu::UnicodeString *a6)
{
  v42 = *MEMORY[0x1E69E9840];
  v9 = *(this + 4);
  if (v9)
  {
    icu::UnicodeString::unBogus(this);
  }

  else
  {
    if ((v9 & 0x8000u) == 0)
    {
      v10 = v9 >> 5;
    }

    else
    {
      v10 = *(this + 3);
    }

    if (v10)
    {
      *(this + 4) &= 0x1Eu;
    }
  }

  v38 = 0u;
  v39 = 0u;
  v41 = 0;
  v40 = 0u;
  v37 = &unk_1F0935D00;
  LOWORD(v38) = 2;
  v11 = *(a1 + 80);
  if (*(a1 + 84) && (v11 & 0x80000000) != 0)
  {
    do
    {
      icu::ICU_Utility::appendToRule(this, 0x40, 1, a3, &v37, a6);
    }

    while (!__CFADD__(v11++, 1));
    v11 = 1;
  }

  v13 = 0;
  v14 = v11;
  while (1)
  {
    v15 = *(a1 + 24);
    v16 = *(a1 + 24);
    v17 = v15 < 0 ? *(a1 + 28) : v16 >> 5;
    v18 = *(a1 + 84);
    if (v13 >= v17)
    {
      break;
    }

    if (*(a1 + 84) && v14 == v13)
    {
      icu::ICU_Utility::appendToRule(this, 0x7C, 1, a3, &v37, a6);
      LOWORD(v15) = *(a1 + 24);
    }

    if ((v15 & 0x8000) != 0)
    {
      v19 = *(a1 + 28);
    }

    else
    {
      v19 = v15 >> 5;
    }

    if (v13 >= v19)
    {
      v21 = 0xFFFFLL;
    }

    else
    {
      v20 = a1 + 26;
      if ((v15 & 2) == 0)
      {
        v20 = *(a1 + 40);
      }

      v21 = *(v20 + 2 * v13);
    }

    v22 = sub_19539EA44(*(a1 + 88), v21);
    if (v22)
    {
      v36 = 0;
      v35 = 0u;
      v34 = 0u;
      v33 = 0u;
      v32 = &unk_1F0935D00;
      LOWORD(v33) = 2;
      (*(*v22 + 24))(v22, &v32, a3);
      v31 = 32;
      icu::UnicodeString::doReplace(&v32, 0, 0, &v31, 0, 1);
      v31 = 32;
      icu::UnicodeString::doAppend(&v32, &v31, 0, 1);
      icu::ICU_Utility::appendToRule(this, &v32, 1, a3, &v37, v24);
      icu::UnicodeString::~UnicodeString(v25, &v32);
    }

    else
    {
      icu::ICU_Utility::appendToRule(this, v21, 0, a3, &v37, v23);
    }

    ++v13;
  }

  if (*(a1 + 84))
  {
    if (v15 < 0)
    {
      v26 = *(a1 + 28);
      if (v14 <= v26)
      {
        goto LABEL_42;
      }
    }

    else
    {
      if (v14 <= (v16 >> 5))
      {
        goto LABEL_42;
      }

      v26 = v16 >> 5;
    }

    if (v14 - v26 >= 1)
    {
      v27 = v14 - v26 + 1;
      do
      {
        icu::ICU_Utility::appendToRule(this, 0x40, 1, a3, &v37, a6);
        --v27;
      }

      while (v27 > 1);
    }

    icu::ICU_Utility::appendToRule(this, 0x7C, 1, a3, &v37, a6);
  }

LABEL_42:
  icu::ICU_Utility::appendToRule(this, 0xFFFFFFFFLL, 1, a3, &v37, a6);
  icu::UnicodeString::~UnicodeString(v28, &v37);
  v29 = *MEMORY[0x1E69E9840];
  return this;
}

icu::UnicodeSet *sub_1953D99C0(icu::UnicodeSet *result, icu::UnicodeSet *a2)
{
  v3 = result;
  for (i = 0; ; i += v8)
  {
    v5 = *(v3 + 12) < 0 ? *(v3 + 7) : (*(v3 + 12) >> 5);
    if (i >= v5)
    {
      break;
    }

    v6 = icu::UnicodeString::char32At(v5, (v3 + 16), i);
    v7 = sub_19539EA44(*(v3 + 11), v6);
    if (v7)
    {
      result = (*(*v7 + 32))(v7, a2);
    }

    else
    {
      result = icu::UnicodeSet::add(a2, v6);
    }

    if (v6 < 0x10000)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  return result;
}

void *sub_1953D9A8C(void *result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  result[11] = a2;
  while (1)
  {
    v4 = v2[3] < 0 ? *(v2 + 7) : (*(v2 + 12) >> 5);
    if (v3 >= v4)
    {
      break;
    }

    v5 = icu::UnicodeString::char32At(v4, (v2 + 2), v3);
    result = sub_19539E9C8(v2[11], v5);
    if (result)
    {
      result = (*(*result + 48))(result, v2[11]);
    }

    if (v5 < 0x10000)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    v3 += v6;
  }

  return result;
}

void **icu::StringSearch::StringSearch(void **this, UChar **a2, UChar **a3, char **a4, icu::BreakIterator *a5, UErrorCode *a6)
{
  v11 = icu::SearchIterator::SearchIterator(this, a3, a5);
  *v11 = &unk_1F0942CC0;
  icu::UnicodeString::UnicodeString((v11 + 88), a2);
  if (*a6 >= 1)
  {
    this[19] = 0;
    return this;
  }

  v12 = *(this + 48);
  if ((v12 & 0x11) != 0)
  {
    v13 = 0;
    if ((v12 & 0x8000) != 0)
    {
      goto LABEL_10;
    }

LABEL_8:
    v14 = v12 >> 5;
    goto LABEL_11;
  }

  if ((v12 & 2) != 0)
  {
    v13 = this + 49;
    if ((v12 & 0x8000) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v13 = this[14];
    if ((v12 & 0x8000) == 0)
    {
      goto LABEL_8;
    }
  }

LABEL_10:
  v14 = *(this + 25);
LABEL_11:
  v15 = *(this + 16);
  if ((v15 & 0x11) != 0)
  {
    v16 = 0;
    if ((v15 & 0x8000) != 0)
    {
      goto LABEL_18;
    }

LABEL_16:
    v17 = v15 >> 5;
    goto LABEL_19;
  }

  if ((v15 & 2) != 0)
  {
    v16 = this + 17;
    if ((v15 & 0x8000) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v16 = this[6];
    if ((v15 & 0x8000) == 0)
    {
      goto LABEL_16;
    }
  }

LABEL_18:
  v17 = *(this + 9);
LABEL_19:
  this[19] = usearch_open(v13, v14, v16, v17, a4[5], a5, a6);
  free(this[1]);
  this[1] = 0;
  if (*a6 <= 0)
  {
    this[1] = *this[19];
  }

  return this;
}

{
  v11 = icu::SearchIterator::SearchIterator(this, a3, a5);
  *v11 = &unk_1F0942CC0;
  icu::UnicodeString::UnicodeString((v11 + 88), a2);
  if (*a6 >= 1)
  {
    goto LABEL_2;
  }

  if (!a4)
  {
    *a6 = U_ILLEGAL_ARGUMENT_ERROR;
LABEL_2:
    this[19] = 0;
    return this;
  }

  v13 = *(this + 48);
  if ((v13 & 0x11) != 0)
  {
    v14 = 0;
    if ((v13 & 0x8000) != 0)
    {
      goto LABEL_13;
    }

LABEL_11:
    v15 = v13 >> 5;
    goto LABEL_14;
  }

  if ((v13 & 2) != 0)
  {
    v14 = this + 49;
    if ((v13 & 0x8000) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v14 = this[14];
    if ((v13 & 0x8000) == 0)
    {
      goto LABEL_11;
    }
  }

LABEL_13:
  v15 = *(this + 25);
LABEL_14:
  v16 = *(this + 16);
  if ((v16 & 0x11) != 0)
  {
    v17 = 0;
    if ((v16 & 0x8000) != 0)
    {
      goto LABEL_21;
    }

LABEL_19:
    v18 = v16 >> 5;
    goto LABEL_22;
  }

  if ((v16 & 2) != 0)
  {
    v17 = this + 17;
    if ((v16 & 0x8000) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v17 = this[6];
    if ((v16 & 0x8000) == 0)
    {
      goto LABEL_19;
    }
  }

LABEL_21:
  v18 = *(this + 9);
LABEL_22:
  this[19] = usearch_openFromCollator(v14, v15, v17, v18, a4, a5, a6);
  free(this[1]);
  this[1] = 0;
  if (*a6 <= 0)
  {
    this[1] = *this[19];
  }

  return this;
}

void **icu::StringSearch::StringSearch(void **this, UChar **a2, icu::CharacterIterator *a3, char **a4, icu::BreakIterator *a5, UErrorCode *a6)
{
  v11 = icu::SearchIterator::SearchIterator(this, a3, a5);
  *v11 = &unk_1F0942CC0;
  icu::UnicodeString::UnicodeString((v11 + 88), a2);
  if (*a6 >= 1)
  {
    this[19] = 0;
    return this;
  }

  v12 = *(this + 48);
  if ((v12 & 0x11) != 0)
  {
    v13 = 0;
    if ((v12 & 0x8000) != 0)
    {
      goto LABEL_10;
    }

LABEL_8:
    v14 = v12 >> 5;
    goto LABEL_11;
  }

  if ((v12 & 2) != 0)
  {
    v13 = this + 49;
    if ((v12 & 0x8000) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v13 = this[14];
    if ((v12 & 0x8000) == 0)
    {
      goto LABEL_8;
    }
  }

LABEL_10:
  v14 = *(this + 25);
LABEL_11:
  v15 = *(this + 16);
  if ((v15 & 0x11) != 0)
  {
    v16 = 0;
    if ((v15 & 0x8000) != 0)
    {
      goto LABEL_18;
    }

LABEL_16:
    v17 = v15 >> 5;
    goto LABEL_19;
  }

  if ((v15 & 2) != 0)
  {
    v16 = this + 17;
    if ((v15 & 0x8000) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v16 = this[6];
    if ((v15 & 0x8000) == 0)
    {
      goto LABEL_16;
    }
  }

LABEL_18:
  v17 = *(this + 9);
LABEL_19:
  this[19] = usearch_open(v13, v14, v16, v17, a4[5], a5, a6);
  free(this[1]);
  this[1] = 0;
  if (*a6 <= 0)
  {
    this[1] = *this[19];
  }

  return this;
}

{
  v11 = icu::SearchIterator::SearchIterator(this, a3, a5);
  *v11 = &unk_1F0942CC0;
  icu::UnicodeString::UnicodeString((v11 + 88), a2);
  if (*a6 >= 1)
  {
    goto LABEL_2;
  }

  if (!a4)
  {
    *a6 = U_ILLEGAL_ARGUMENT_ERROR;
LABEL_2:
    this[19] = 0;
    return this;
  }

  v13 = *(this + 48);
  if ((v13 & 0x11) != 0)
  {
    v14 = 0;
    if ((v13 & 0x8000) != 0)
    {
      goto LABEL_13;
    }

LABEL_11:
    v15 = v13 >> 5;
    goto LABEL_14;
  }

  if ((v13 & 2) != 0)
  {
    v14 = this + 49;
    if ((v13 & 0x8000) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v14 = this[14];
    if ((v13 & 0x8000) == 0)
    {
      goto LABEL_11;
    }
  }

LABEL_13:
  v15 = *(this + 25);
LABEL_14:
  v16 = *(this + 16);
  if ((v16 & 0x11) != 0)
  {
    v17 = 0;
    if ((v16 & 0x8000) != 0)
    {
      goto LABEL_21;
    }

LABEL_19:
    v18 = v16 >> 5;
    goto LABEL_22;
  }

  if ((v16 & 2) != 0)
  {
    v17 = this + 17;
    if ((v16 & 0x8000) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v17 = this[6];
    if ((v16 & 0x8000) == 0)
    {
      goto LABEL_19;
    }
  }

LABEL_21:
  v18 = *(this + 9);
LABEL_22:
  this[19] = usearch_openFromCollator(v14, v15, v17, v18, a4, a5, a6);
  free(this[1]);
  this[1] = 0;
  if (*a6 <= 0)
  {
    this[1] = *this[19];
  }

  return this;
}

void **icu::StringSearch::StringSearch(void **this, const icu::StringSearch *a2)
{
  v4 = icu::SearchIterator::SearchIterator(this, a2 + 3, *(a2 + 2));
  *v4 = &unk_1F0942CC0;
  icu::UnicodeString::UnicodeString((v4 + 88), a2 + 11);
  v14 = 0;
  free(this[1]);
  this[1] = 0;
  v5 = *(a2 + 19);
  if (!v5)
  {
    this[19] = 0;
    return this;
  }

  v6 = *(this + 48);
  if ((v6 & 0x11) != 0)
  {
    v7 = 0;
    if ((v6 & 0x8000) != 0)
    {
      goto LABEL_10;
    }

LABEL_8:
    v8 = v6 >> 5;
    goto LABEL_11;
  }

  if ((v6 & 2) != 0)
  {
    v7 = this + 49;
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = this[14];
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_8;
    }
  }

LABEL_10:
  v8 = *(this + 25);
LABEL_11:
  v9 = *(this + 16);
  if ((v9 & 0x11) != 0)
  {
    v10 = 0;
    if ((v9 & 0x8000) != 0)
    {
      goto LABEL_18;
    }

LABEL_16:
    v11 = v9 >> 5;
    goto LABEL_19;
  }

  if ((v9 & 2) != 0)
  {
    v10 = this + 17;
    if ((v9 & 0x8000) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v10 = this[6];
    if ((v9 & 0x8000) == 0)
    {
      goto LABEL_16;
    }
  }

LABEL_18:
  v11 = *(this + 9);
LABEL_19:
  v12 = usearch_openFromCollator(v7, v8, v10, v11, *(v5 + 3128), *(a2 + 2), &v14);
  this[19] = v12;
  if (v14 <= 0)
  {
    this[1] = *v12;
  }

  return this;
}

void icu::StringSearch::~StringSearch(icu::StringSearch *this@<X0>, void *a2@<X8>)
{
  v3 = *(this + 19);
  if (v3)
  {
    usearch_close(v3);
    *(this + 1) = 0;
  }

  icu::UnicodeString::~UnicodeString(a2, (this + 88));

  icu::SearchIterator::~SearchIterator(this, v4);
}

{
  icu::StringSearch::~StringSearch(this, a2);

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::StringSearch::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  v12 = 0;
  icu::UnicodeString::operator=((a1 + 24), (a2 + 24));
  *(a1 + 16) = *(a2 + 16);
  icu::UnicodeString::operator=((a1 + 88), (a2 + 88));
  usearch_close(*(a1 + 152));
  v4 = *(a1 + 96);
  if ((v4 & 0x11) != 0)
  {
    v5 = 0;
    if ((v4 & 0x8000) != 0)
    {
      goto LABEL_9;
    }

LABEL_7:
    v6 = v4 >> 5;
    goto LABEL_10;
  }

  if ((v4 & 2) != 0)
  {
    v5 = (a1 + 98);
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v5 = *(a1 + 112);
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_7;
    }
  }

LABEL_9:
  v6 = *(a1 + 100);
LABEL_10:
  v7 = *(a1 + 32);
  if ((v7 & 0x11) != 0)
  {
    v8 = 0;
    if ((v7 & 0x8000) != 0)
    {
      goto LABEL_17;
    }

LABEL_15:
    v9 = v7 >> 5;
    goto LABEL_18;
  }

  if ((v7 & 2) != 0)
  {
    v8 = (a1 + 34);
    if ((v7 & 0x8000) == 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v8 = *(a1 + 48);
    if ((v7 & 0x8000) == 0)
    {
      goto LABEL_15;
    }
  }

LABEL_17:
  v9 = *(a1 + 36);
LABEL_18:
  v10 = usearch_openFromCollator(v5, v6, v8, v9, *(*(a2 + 152) + 3128), 0, &v12);
  *(a1 + 152) = v10;
  if (v10)
  {
    *(a1 + 8) = *v10;
  }

  return a1;
}

uint64_t icu::StringSearch::operator==(uint64_t a1, char **a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = icu::SearchIterator::operator==(a1, a2);
  if (result)
  {
    v5 = **a2;
    if (result)
    {
      v6 = result;
      v7 = *(a1 + 96);
      if (v7)
      {
        if ((*(result + 96) & 1) == 0)
        {
          return 0;
        }

        return *(*(a1 + 152) + 3128) == *(*(v6 + 152) + 3128);
      }

      if ((v7 & 0x8000) != 0)
      {
        v8 = *(a1 + 100);
      }

      else
      {
        v8 = v7 >> 5;
      }

      result = 0;
      v9 = *(v6 + 96);
      if ((v9 & 0x8000u) == 0)
      {
        v10 = v9 >> 5;
      }

      else
      {
        v10 = *(v6 + 100);
      }

      if ((v9 & 1) == 0 && v8 == v10)
      {
        v11 = (v9 & 2) != 0 ? (v6 + 98) : *(v6 + 112);
        result = icu::UnicodeString::doEquals(a1 + 88, v11, v8);
        if (result)
        {
          return *(*(a1 + 152) + 3128) == *(*(v6 + 152) + 3128);
        }
      }
    }
  }

  return result;
}

uint64_t icu::StringSearch::setText(uint64_t this, UChar **a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    v6 = this;
    icu::UnicodeString::operator=((this + 24), a2);
    v7 = *(v6 + 152);
    v8 = *(a2 + 4);
    if ((v8 & 0x11) != 0)
    {
      v9 = 0;
    }

    else if ((v8 & 2) != 0)
    {
      v9 = a2 + 5;
    }

    else
    {
      v9 = a2[3];
    }

    v10 = v8;
    v11 = v8 >> 5;
    if (v10 >= 0)
    {
      v12 = v11;
    }

    else
    {
      v12 = *(a2 + 3);
    }

    return usearch_setText(v7, v9, v12, a3);
  }

  return this;
}

uint64_t icu::StringSearch::setText(uint64_t this, icu::CharacterIterator *a2, UErrorCode *a3)
{
  if (*a3 > 0)
  {
    return this;
  }

  v5 = this;
  (*(*a2 + 208))(a2, this + 24);
  v6 = *(v5 + 152);
  v7 = *(v5 + 32);
  if ((v7 & 0x11) == 0)
  {
    if ((v7 & 2) != 0)
    {
      v8 = (v5 + 34);
      if ((v7 & 0x8000) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v8 = *(v5 + 48);
      if ((v7 & 0x8000) == 0)
      {
        goto LABEL_7;
      }
    }

LABEL_9:
    v9 = *(v5 + 36);
    goto LABEL_10;
  }

  v8 = 0;
  if ((v7 & 0x8000) != 0)
  {
    goto LABEL_9;
  }

LABEL_7:
  v9 = v7 >> 5;
LABEL_10:

  return usearch_setText(v6, v8, v9, a3);
}

char **icu::StringSearch::getCollator(icu::StringSearch *this)
{
  result = *(*(this + 19) + 3128);
  if (result)
  {
    v2 = **result;
  }

  return result;
}

uint64_t icu::StringSearch::setCollator(uint64_t this, char **a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    return usearch_setCollator(*(this + 152), a2, a3);
  }

  return this;
}

uint64_t icu::StringSearch::setPattern(uint64_t this, UChar **a2, UErrorCode *a3)
{
  if (*a3 > 0)
  {
    return this;
  }

  v5 = this;
  icu::UnicodeString::operator=((this + 88), a2);
  v6 = *(v5 + 152);
  v7 = *(v5 + 96);
  if ((v7 & 0x11) == 0)
  {
    if ((v7 & 2) != 0)
    {
      v8 = (v5 + 98);
      if ((v7 & 0x8000) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v8 = *(v5 + 112);
      if ((v7 & 0x8000) == 0)
      {
        goto LABEL_7;
      }
    }

LABEL_9:
    v9 = *(v5 + 100);
    goto LABEL_10;
  }

  v8 = 0;
  if ((v7 & 0x8000) != 0)
  {
    goto LABEL_9;
  }

LABEL_7:
  v9 = v7 >> 5;
LABEL_10:

  return usearch_setPattern(v6, v8, v9, a3);
}

uint64_t icu::StringSearch::handleNext(icu::StringSearch *this, uint64_t a2, UErrorCode *a3)
{
  if (*a3 > 0)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = *(this + 19);
  v7 = *(this + 1);
  if (*(v6 + 20))
  {
    if (*(v7 + 36) <= 0)
    {
      *(v7 + 32) = a2 - 1;
    }

    ucol_setOffset(*(v6 + 3144), a2, a3);
    sub_19541A554(*(this + 19), a3);
    if (*a3 <= 0)
    {
      v10 = *(this + 1);
      v11 = *(v10 + 32);
      if (v11 == -1)
      {
        v11 = *(v10 + 8);
      }

      ucol_setOffset(*(*(this + 19) + 3144), v11, a3);
      return *(*(this + 1) + 32);
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    v8 = *(v7 + 32);
    if (v8 == -1)
    {
      Offset = usearch_getOffset(v6);
      v7 = *(this + 1);
      v6 = *(this + 19);
    }

    else
    {
      Offset = (v8 + 1);
    }

    *(v7 + 32) = Offset;
    *(v7 + 36) = 0;
    ucol_setOffset(*(v6 + 3144), Offset, a3);
    v12 = *(this + 1);
    result = 0xFFFFFFFFLL;
    if (*(v12 + 32) == *(v12 + 8))
    {
      *(v12 + 32) = -1;
    }
  }

  return result;
}

uint64_t icu::StringSearch::handlePrev(icu::StringSearch *this, uint64_t a2, UErrorCode *a3)
{
  if (*a3 > 0)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = *(this + 19);
  if (*(v6 + 20))
  {
    ucol_setOffset(*(v6 + 3144), a2, a3);
    sub_19541A620(*(this + 19), a3);
    if (*a3 > 0)
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_12;
  }

  v7 = *(this + 1);
  Offset = *(v7 + 32);
  if (Offset == -1)
  {
    Offset = usearch_getOffset(v6);
    v7 = *(this + 1);
  }

  *(v7 + 32) = Offset;
  if (!Offset)
  {
    icu::SearchIterator::setMatchNotFound(this);
LABEL_12:
    v10 = *(this + 1);
    return *(v10 + 32);
  }

  v9 = (Offset - 1);
  *(v7 + 32) = v9;
  ucol_setOffset(*(*(this + 19) + 3144), v9, a3);
  v10 = *(this + 1);
  *(v10 + 36) = 0;
  return *(v10 + 32);
}

icu::GregorianCalendar *sub_1953DA98C(icu::GregorianCalendar *a1, char **a2, UErrorCode *a3)
{
  v5 = icu::GregorianCalendar::GregorianCalendar(a1, a2, a3);
  *v5 = &unk_1F0942D58;
  icu::Calendar::getNow(v5);
  icu::Calendar::setTimeInMillis(a1, v6, a3);
  return a1;
}

void sub_1953DA9EC(icu::GregorianCalendar *a1)
{
  icu::GregorianCalendar::~GregorianCalendar(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_1953DAA8C(_DWORD *a1, int *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  v11 = v2;
  v12 = v3;
  if (icu::Calendar::newerField(a1, 0x13u, 1u) != 19 || icu::Calendar::newerField(a1, 0x13u, 0) != 19)
  {
    if (a1[35] < 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = a1[3];
    }

    if (a1[36] < 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = a1[4];
    }

    v10 = v8;
    if (v7)
    {
      if (v7 != 1)
      {
        goto LABEL_18;
      }

      v9 = 1911;
    }

    else
    {
      v9 = -v8;
      v8 = 1912;
    }

    if (!uprv_add32_overflow(v8, v9, &v10))
    {
      return v10;
    }

LABEL_18:
    result = 0;
    *a2 = 1;
    return result;
  }

  if (a1[54] < 1)
  {
    return 1970;
  }

  else
  {
    return a1[22];
  }
}

_DWORD *sub_1953DAB8C(uint64_t a1, int a2, UErrorCode *a3)
{
  result = icu::GregorianCalendar::handleComputeFields(a1, a2, a3);
  v5 = *(a1 + 88);
  v6 = 1912 - v5;
  v7 = __OFSUB__(v5, 1911);
  v8 = v5 - 1911;
  if ((v8 < 0) ^ v7 | (v8 == 0))
  {
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  *(a1 + 140) = 0x100000001;
  *(a1 + 112) = 257;
  if ((v8 < 0) ^ v7 | (v8 == 0))
  {
    v8 = v6;
  }

  *(a1 + 12) = v9;
  *(a1 + 16) = v8;
  return result;
}

uint64_t sub_1953DABDC(uint64_t a1, int a2, unsigned int a3)
{
  if (a2)
  {
    return icu::GregorianCalendar::handleGetLimit(a1, a2, a3);
  }

  else
  {
    return a3 > 1;
  }
}

double sub_1953DABF0()
{
  if (atomic_load_explicit(dword_1ED4430F8, memory_order_acquire) != 2 && icu::umtx_initImplPreInit(dword_1ED4430F8))
  {
    sub_1953DAC44();
    icu::umtx_initImplPostInit(dword_1ED4430F8);
  }

  return *&qword_1ED441B48;
}

void sub_1953DAC44()
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = U_ZERO_ERROR;
  bzero(v6, 0x2A0uLL);
  icu::Locale::Locale(v0, v5, "@calendar=roc", 0, 0, 0);
  sub_1953DA98C(v6, v5, &v4);
  icu::Locale::~Locale(v5);
  if (v4 <= U_ZERO_ERROR)
  {
    icu::Calendar::getNow(v1);
    icu::Calendar::setTimeInMillis(v6, v2, &v4);
    icu::Calendar::add(v6, 1u, -80, &v4);
    qword_1ED441B48 = icu::Calendar::getTimeInMillis(v6, &v4);
    dword_1ED441B50 = icu::Calendar::get(v6, 1u, &v4);
  }

  icu::GregorianCalendar::~GregorianCalendar(v6);
  v3 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1953DAD3C()
{
  if (atomic_load_explicit(dword_1ED4430F8, memory_order_acquire) != 2 && icu::umtx_initImplPreInit(dword_1ED4430F8))
  {
    sub_1953DAC44();
    icu::umtx_initImplPostInit(dword_1ED4430F8);
  }

  return dword_1ED441B50;
}

uint64_t icu::TimeZone::loadRule(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v11 = *MEMORY[0x1E69E9840];
  memset(v10, 0, sizeof(v10));
  icu::UnicodeString::extract(a2, 0, 63, v10, 63);
  v7 = ures_getByKey(a1, "Rules", a3, a4);
  result = ures_getByKey(v7, v10, v7, a4);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t *icu::TimeZone::getUnknown(icu::TimeZone *this)
{
  if (atomic_load_explicit(dword_1EAECA1B4, memory_order_acquire) != 2 && icu::umtx_initImplPreInit(dword_1EAECA1B4))
  {
    sub_1953DAEA0();
    icu::umtx_initImplPostInit(dword_1EAECA1B4);
  }

  return qword_1EAECA058;
}

void *sub_1953DAEA0()
{
  v7 = *MEMORY[0x1E69E9840];
  sub_195400588(0x15u, sub_1953DB838);
  v5 = L"GMT";
  icu::UnicodeString::UnicodeString(v6, 1, &v5);
  icu::SimpleTimeZone::SimpleTimeZone(qword_1EAECA0F8, 0, v6);
  icu::UnicodeString::~UnicodeString(v0, v6);
  v4 = L"Etc/Unknown";
  icu::UnicodeString::UnicodeString(v6, 1, &v4);
  icu::SimpleTimeZone::SimpleTimeZone(qword_1EAECA058, 0, v6);
  result = icu::UnicodeString::~UnicodeString(v1, v6);
  byte_1EAECA1BC = 1;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t *icu::TimeZone::getGMT(icu::TimeZone *this)
{
  if (atomic_load_explicit(dword_1EAECA1B4, memory_order_acquire) != 2 && icu::umtx_initImplPreInit(dword_1EAECA1B4))
  {
    sub_1953DAEA0();
    icu::umtx_initImplPostInit(dword_1EAECA1B4);
  }

  return qword_1EAECA0F8;
}

uint64_t icu::TimeZone::TimeZone(uint64_t this)
{
  *this = &unk_1F0942F68;
  *(this + 8) = &unk_1F0935D00;
  *(this + 16) = 2;
  return this;
}

icu::TimeZone *icu::TimeZone::TimeZone(icu::TimeZone *this, UChar **a2)
{
  *this = &unk_1F0942F68;
  icu::UnicodeString::UnicodeString((this + 8), a2);
  return this;
}

{
  *this = &unk_1F0942F68;
  icu::UnicodeString::UnicodeString((this + 8), a2 + 1);
  return this;
}

void icu::TimeZone::~TimeZone(icu::TimeZone *this)
{
  *this = &unk_1F0942F68;
  icu::UnicodeString::~UnicodeString((this + 8));

  icu::UObject::~UObject(this);
}

uint64_t icu::TimeZone::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    icu::UnicodeString::operator=((a1 + 8), (a2 + 8));
  }

  return a1;
}

BOOL icu::TimeZone::operator==(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  result = sub_19520B9EC(*(*a1 - 8), *(*a2 - 8));
  if (result)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      return *(a2 + 16) & 1;
    }

    else
    {
      if ((v5 & 0x8000) != 0)
      {
        v6 = *(a1 + 20);
      }

      else
      {
        v6 = v5 >> 5;
      }

      result = 0;
      v7 = *(a2 + 16);
      if ((v7 & 0x8000u) == 0)
      {
        v8 = v7 >> 5;
      }

      else
      {
        v8 = *(a2 + 20);
      }

      if ((v7 & 1) == 0 && v6 == v8)
      {
        if ((v7 & 2) != 0)
        {
          v9 = (a2 + 18);
        }

        else
        {
          v9 = *(a2 + 32);
        }

        return icu::UnicodeString::doEquals(a1 + 8, v9, v6);
      }
    }
  }

  return result;
}

uint64_t icu::TimeZone::createTimeZone(icu::TimeZone *this, const icu::UnicodeString *a2)
{
  v9 = 0;
  result = sub_1953DE298(this, &v9);
  if (!result)
  {
    result = icu::TimeZone::createCustomTimeZone(this, v4, v5, v6, v7, v8);
    if (!result)
    {
      icu::TimeZone::getUnknown(0);
      return (*(qword_1EAECA058[0] + 96))();
    }
  }

  return result;
}

uint64_t icu::TimeZone::createCustomTimeZone(icu::TimeZone *this, const icu::UnicodeString *a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  v16 = *MEMORY[0x1E69E9840];
  *v9 = 0;
  *v10 = 0;
  if (icu::TimeZone::parseCustomID(this, &v10[1], v10, &v9[1], v9, a6))
  {
    v12 = 0u;
    v13 = 0u;
    v15 = 0;
    v14 = 0u;
    v11 = &unk_1F0935D00;
    LOWORD(v12) = 2;
    icu::TimeZone::formatCustomID(v10[0], v9[1], v9[0], v10[1] >> 31, &v11, v6);
    operator new();
  }

  v7 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t icu::TimeZone::detectHostTimeZone(icu::TimeZone *this)
{
  v17 = *MEMORY[0x1E69E9840];
  uprv_tzset();
  uprv_tzname_clear_cache();
  v1 = uprv_tzname(0);
  v2 = uprv_timezone();
  memset(v16, 0, sizeof(v16));
  icu::UnicodeString::UnicodeString(v16, v1, 0xFFFFFFFFLL, 0);
  if ((SWORD4(v16[0]) & 0x8000u) == 0)
  {
    v3 = WORD4(v16[0]) >> 5;
  }

  else
  {
    v3 = HIDWORD(v16[0]);
  }

  if (!v3)
  {
    v14 = L"Etc/Unknown";
    icu::UnicodeString::UnicodeString(v15, 1, &v14);
    icu::UnicodeString::operator=(v16, v15);
    icu::UnicodeString::~UnicodeString(v4, v15);
  }

  v5 = -1000 * v2;
  v15[0] = U_ZERO_ERROR;
  v6 = sub_1953DE298(v16, v15);
  if (v6)
  {
    v7 = v6;
    if ((SWORD4(v16[0]) & 0x8000u) == 0)
    {
      v8 = WORD4(v16[0]) >> 5;
    }

    else
    {
      v8 = HIDWORD(v16[0]);
    }

    v9 = (*(*v6 + 64))(v6);
    v10 = (v8 - 3);
    if (v5 == v9 || v10 > 1)
    {
      goto LABEL_18;
    }

    v6 = (*(*v7 + 8))(v7);
  }

  if (v3)
  {
    operator new();
  }

  icu::TimeZone::getUnknown(v6);
  v7 = (*(qword_1EAECA058[0] + 96))(qword_1EAECA058);
LABEL_18:
  icu::UnicodeString::~UnicodeString(v10, v16);
  v12 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t icu::TimeZone::createDefault(icu::TimeZone *this)
{
  if (atomic_load_explicit(dword_1ED443108, memory_order_acquire) != 2 && icu::umtx_initImplPreInit(dword_1ED443108))
  {
    sub_1953DB668();
    icu::umtx_initImplPostInit(dword_1ED443108);
  }

  umtx_lock(&unk_1ED443110);
  if (qword_1ED443100)
  {
    v1 = (*(*qword_1ED443100 + 96))(qword_1ED443100);
  }

  else
  {
    v1 = 0;
  }

  umtx_unlock(&unk_1ED443110);
  return v1;
}

void sub_1953DB668()
{
  sub_195400588(0x15u, sub_1953DB838);
  umtx_lock(&unk_1ED443110);
  if (!qword_1ED443100)
  {
    qword_1ED443100 = icu::TimeZone::detectHostTimeZone(v0);
  }

  umtx_unlock(&unk_1ED443110);
}

uint64_t icu::TimeZone::forLocaleOrDefault(char **this, const icu::Locale *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  *v12 = 0u;
  v13 = 0u;
  v10 = U_ZERO_ERROR;
  KeywordValue = icu::Locale::getKeywordValue(this, "timezone", v12, 96, &v10);
  if (v10 != U_STRING_NOT_TERMINATED_WARNING && v10 <= U_ZERO_ERROR)
  {
    v4 = KeywordValue;
  }

  else
  {
    v4 = 0;
  }

  if (v4 < 1)
  {
    Default = icu::TimeZone::createDefault(KeywordValue);
  }

  else
  {
    icu::UnicodeString::UnicodeString(v11, v12, v4, 0);
    Default = icu::TimeZone::createTimeZone(v11, v5);
    icu::UnicodeString::~UnicodeString(v7, v11);
  }

  v8 = *MEMORY[0x1E69E9840];
  return Default;
}

void icu::TimeZone::adoptDefault(icu::TimeZone *this, icu::TimeZone *a2)
{
  if (this)
  {
    umtx_lock(&unk_1ED443110);
    v3 = qword_1ED443100;
    qword_1ED443100 = this;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    umtx_unlock(&unk_1ED443110);

    sub_195400588(0x15u, sub_1953DB838);
  }
}

uint64_t sub_1953DB838()
{
  if (qword_1ED443100)
  {
    (*(*qword_1ED443100 + 8))(qword_1ED443100);
  }

  qword_1ED443100 = 0;
  atomic_store(0, &unk_1ED443108);
  if (byte_1EAECA1BC == 1)
  {
    (*qword_1EAECA0F8)();
    (*qword_1EAECA058)();
    byte_1EAECA1BC = 0;
    atomic_store(0, &unk_1EAECA1B4);
  }

  qword_1EAECA1A1 = 0;
  unk_1EAECA1A9 = 0;
  atomic_store(0, &dword_1EAECA208);
  dword_1EAECA1C0 = 0;
  free(qword_1EAECA1C8);
  qword_1EAECA1C8 = 0;
  atomic_store(0, &unk_1EAECA1F0);
  dword_1EAECA1D0 = 0;
  free(qword_1EAECA1D8);
  qword_1EAECA1D8 = 0;
  atomic_store(0, &unk_1EAECA1F8);
  dword_1EAECA1E0 = 0;
  free(qword_1EAECA1E8);
  qword_1EAECA1E8 = 0;
  atomic_store(0, &unk_1EAECA200);
  return 1;
}

void icu::TimeZone::setDefault(icu::TimeZone *this, const icu::TimeZone *a2)
{
  v2 = (*(*this + 96))(this, a2);

  icu::TimeZone::adoptDefault(v2, v3);
}

void icu::TimeZone::getOffset(icu::TimeZone *this, double a2, int a3, int *a4, int *a5, UErrorCode *a6)
{
  if (*a6 <= 0)
  {
    v30 = v9;
    v31 = v8;
    v32 = v6;
    v33 = v7;
    v16 = (*(*this + 64))(this);
    *a4 = v16;
    if (!a3)
    {
      a2 = v16 + a2;
    }

    v28 = 0;
    v26 = 0;
    v27 = 0;
    v17 = sub_195328C88(86400000, &v26, a2);
    if (v17 < -2147483650.0 || v17 > 2147483650.0)
    {
LABEL_19:
      *a6 = U_ILLEGAL_ARGUMENT_ERROR;
    }

    else
    {
      v18 = 0;
      while (1)
      {
        v29 = 0;
        sub_195328E3C(v17, &v28, &v27 + 1, &v27, &v26 + 1, &v29, a6);
        if (*a6 > 0)
        {
          break;
        }

        if ((v28 & 3) != 0)
        {
          v19 = 0;
        }

        else
        {
          HIDWORD(v21) = -1030792151 * v28 + 85899344;
          LODWORD(v21) = HIDWORD(v21);
          v20 = v21 >> 2;
          LODWORD(v21) = HIDWORD(v21);
          v19 = (v21 >> 4) >= 0xA3D70B ? 0 : 12;
          if (v20 > 0x28F5C28)
          {
            v19 = 12;
          }
        }

        v22 = byte_19548DBC2[SHIDWORD(v27) + v19];
        v23 = (*(*this + 40))(this, 1);
        v24 = *a4;
        v25 = v23 - *a4;
        *a5 = v25;
        if ((a3 == 0) | v18 & 1 || v23 == v24)
        {
          break;
        }

        a2 = a2 - v25;
        v28 = 0;
        v26 = 0;
        v27 = 0;
        v17 = sub_195328C88(86400000, &v26, a2);
        if (v17 >= -2147483650.0)
        {
          v18 = 1;
          if (v17 <= 2147483650.0)
          {
            continue;
          }
        }

        goto LABEL_19;
      }
    }
  }
}

void sub_1953DBC0C(icu::StringEnumeration *this)
{
  *this = &unk_1F0942FE8;
  v2 = *(this + 16);
  if (v2)
  {
    free(v2);
  }

  icu::StringEnumeration::~StringEnumeration(this);
}

void sub_1953DBC6C(icu::StringEnumeration *a1)
{
  sub_1953DBC0C(a1);

  JUMPOUT(0x19A8B2600);
}

void *sub_1953DBCB4(int a1, unsigned __int8 *a2, unint64_t a3, int *a4)
{
  v40 = *MEMORY[0x1E69E9840];
  if (*a4 <= 0)
  {
    v32 = 0;
    v7 = sub_1953DE3D0(a1, &v32, a4);
    if (*a4 <= 0)
    {
      v10 = v7;
      if (a2 | a3)
      {
        result = malloc_type_malloc(0x20uLL, 0x100004052888210uLL);
        if (!result)
        {
          *a4 = 7;
          goto LABEL_4;
        }

        v11 = result;
        v12 = ures_openDirect(0, "zoneinfo64", a4);
        v13 = ures_getByKey(v12, "Names", v12, a4);
        if (v32 >= 1)
        {
          v14 = 0;
          v15 = 0;
          v30 = 8;
          while (1)
          {
            v16 = *(v10 + 4 * v14);
            v39 = 0;
            v38 = 0u;
            v37 = 0u;
            v36 = 0u;
            v35 = &unk_1F0935D00;
            LOWORD(v36) = 2;
            v34 = 0;
            v31 = v16;
            StringByIndex = ures_getStringByIndex(v13, v16, &v34, a4);
            if (*a4 <= 0)
            {
              v33 = StringByIndex;
              icu::UnicodeString::setTo(&v35, 1, &v33, v34);
            }

            else
            {
              icu::UnicodeString::setToBogus(&v35);
            }

            v19 = *a4;
            if (v19 > 0)
            {
              break;
            }

            if (a2)
            {
              LODWORD(v33) = 0;
              icu::TimeZone::getRegion(&v35, &v33, 4, a4, v18);
              v19 = *a4;
              if (v19 >= 1)
              {
                break;
              }

              if (uprv_stricmp(&v33, a2))
              {
                goto LABEL_23;
              }
            }

            if (!a3)
            {
              goto LABEL_19;
            }

            v21 = v13;
            v22 = v15;
            v23 = v10;
            v24 = v11;
            v25 = sub_1953DE298(&v35, a4);
            v26 = *a4;
            if (v26 >= 1)
            {
              icu::UnicodeString::~UnicodeString(v26, &v35);
              v13 = v21;
              goto LABEL_31;
            }

            v27 = v25;
            v28 = (*(*v25 + 64))(v25);
            (*(*v27 + 8))(v27);
            v20 = *a3;
            v11 = v24;
            v10 = v23;
            v15 = v22;
            v13 = v21;
            if (v28 != v20)
            {
LABEL_23:
              icu::UnicodeString::~UnicodeString(v20, &v35);
            }

            else
            {
LABEL_19:
              if (v30 <= v15)
              {
                v30 += 8;
                v29 = malloc_type_realloc(v11, 4 * v30, 0x100004052888210uLL);
                if (!v29)
                {
                  v19 = 7;
                  *a4 = 7;
                  break;
                }

                v11 = v29;
              }

              *(v11 + v15) = v31;
              icu::UnicodeString::~UnicodeString(v31, &v35);
              v15 = (v15 + 1);
            }

            if (++v14 >= v32)
            {
              goto LABEL_31;
            }
          }

          icu::UnicodeString::~UnicodeString(v19, &v35);
        }

LABEL_31:
        if (*a4 >= 1)
        {
          free(v11);
          v11 = 0;
        }

        ures_close(v13);
        if (*a4 > 0)
        {
          if (v11)
          {
            free(v11);
          }

          goto LABEL_3;
        }

        if (v11)
        {
          operator new();
        }
      }

      operator new();
    }
  }

LABEL_3:
  result = 0;
LABEL_4:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void *icu::TimeZone::createEnumeration(icu::TimeZone *this)
{
  v2 = 0;
  return sub_1953DBCB4(0, 0, 0, &v2);
}

{
  v2 = 0;
  v3 = this;
  return sub_1953DBCB4(0, 0, &v3, &v2);
}

uint64_t icu::TimeZone::countEquivalentIDs(icu::TimeZone *this, const icu::UnicodeString *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  icu::StackUResourceBundle::StackUResourceBundle(v10);
  v3 = sub_1953DC2D0(this, v10, &v7);
  if (v7 <= 0)
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    icu::StackUResourceBundle::StackUResourceBundle(v8);
    ures_getByKey(v10, "links", v8, &v7);
    ures_getIntVector(v8, &v7 + 1, &v7);
    icu::StackUResourceBundle::~StackUResourceBundle(v8);
  }

  ures_close(v3);
  v4 = HIDWORD(v7);
  icu::StackUResourceBundle::~StackUResourceBundle(v10);
  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t sub_1953DC2D0(uint64_t a1, _DWORD *a2, UErrorCode *a3)
{
  v6 = ures_openDirect(0, "zoneinfo64", a3);
  v7 = ures_getByKey(v6, "Names", 0, a3);
  v8 = sub_1953DC690(v7, a1, a3);
  if (v8 == -1 && *a3 <= U_ZERO_ERROR)
  {
    *a3 = U_MISSING_RESOURCE_ERROR;
  }

  else
  {
    v10 = v8;
    v7 = ures_getByKey(v6, "Zones", v7, a3);
    ures_getByIndex(v7, v10, a2, a3);
  }

  ures_close(v7);
  if (ures_getType(a2) == 7)
  {
    Int = ures_getInt(a2, a3);
    v12 = ures_getByKey(v6, "Zones", 0, a3);
    ures_getByIndex(v12, Int, a2, a3);
    ures_close(v12);
  }

  return v6;
}

void icu::TimeZone::getEquivalentID(icu::TimeZone *this@<X0>, const icu::UnicodeString *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v20 = *MEMORY[0x1E69E9840];
  *(a3 + 8) = 0u;
  *(a3 + 56) = 0;
  *(a3 + 40) = 0u;
  *(a3 + 24) = 0u;
  *a3 = &unk_1F0935D00;
  *(a3 + 8) = 2;
  v15 = 0;
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  icu::StackUResourceBundle::StackUResourceBundle(v18);
  v6 = sub_1953DC2D0(this, v18, &v15);
  if (v15 <= 0)
  {
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    icu::StackUResourceBundle::StackUResourceBundle(v16);
    v14 = 0;
    ures_getByKey(v18, "links", v16, &v15);
    IntVector = ures_getIntVector(v16, &v14, &v15);
    if (v3 < 0 || v15 > 0 || v14 <= v3)
    {
      icu::StackUResourceBundle::~StackUResourceBundle(v16);
    }

    else
    {
      v8 = IntVector[v3];
      icu::StackUResourceBundle::~StackUResourceBundle(v16);
      if ((v8 & 0x80000000) == 0)
      {
        v9 = ures_getByKey(v6, "Names", 0, &v15);
        v10 = v9;
        if (v15 <= 0)
        {
          v14 = 0;
          StringByIndex = ures_getStringByIndex(v9, v8, &v14, &v15);
          icu::UnicodeString::UnicodeString(v16, 1, &StringByIndex);
          icu::UnicodeString::fastCopyFrom(a3, v16);
          icu::UnicodeString::~UnicodeString(v11, v16);
        }

        ures_close(v10);
      }
    }
  }

  ures_close(v6);
  icu::StackUResourceBundle::~StackUResourceBundle(v18);
  v12 = *MEMORY[0x1E69E9840];
}

const UChar *icu::TimeZone::findID(icu::TimeZone *this, const icu::UnicodeString *a2)
{
  v9 = U_ZERO_ERROR;
  v3 = ures_openDirect(0, "zoneinfo64", &v9);
  v4 = ures_getByKey(v3, "Names", 0, &v9);
  v5 = sub_1953DC690(v4, this, &v9);
  StringByIndex = ures_getStringByIndex(v4, v5, 0, &v9);
  if (v9 >= U_ILLEGAL_ARGUMENT_ERROR)
  {
    v7 = 0;
  }

  else
  {
    v7 = StringByIndex;
  }

  ures_close(v4);
  ures_close(v3);
  return v7;
}

uint64_t sub_1953DC690(uint64_t a1, uint64_t a2, UErrorCode *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v25 = 0u;
  v26 = 0u;
  v28 = 0;
  v27 = 0u;
  v24 = &unk_1F0935D00;
  LOWORD(v25) = 2;
  v23 = 0;
  Size = ures_getSize(a1);
  v7 = *a3;
  if (v7 <= 0 && Size >= 1)
  {
    v11 = Size;
    v12 = 0;
    LODWORD(v13) = 0x7FFFFFFF;
    while (1)
    {
      v7 = (v11 + v12);
      if (v13 == v7 >> 1)
      {
        break;
      }

      v13 = v7 >> 1;
      StringByIndex = ures_getStringByIndex(a1, v7 >> 1, &v23, a3);
      v7 = *a3;
      if (v7 > 0)
      {
        break;
      }

      v22 = StringByIndex;
      icu::UnicodeString::setTo(&v24, 1, &v22, v23);
      v15 = *(a2 + 8);
      v7 = v25;
      if (v25)
      {
        v21 = (v15 & 1) == 0;
      }

      else
      {
        v16 = v15;
        v17 = v15 >> 5;
        if (v16 >= 0)
        {
          v18 = v17;
        }

        else
        {
          v18 = *(a2 + 12);
        }

        if ((v25 & 0x8000u) == 0)
        {
          v19 = v25 >> 5;
        }

        else
        {
          v19 = DWORD1(v25);
        }

        if ((v25 & 2) != 0)
        {
          v20 = &v25 + 2;
        }

        else
        {
          v20 = v26;
        }

        v21 = icu::UnicodeString::doCompare(a2, 0, v18, v20, v19 & (v19 >> 31), v19 & ~(v19 >> 31));
      }

      if (v21 < 0)
      {
        v11 = v13;
      }

      else
      {
        v12 = v13;
      }

      if (!v21)
      {
        goto LABEL_7;
      }
    }
  }

  v13 = 0xFFFFFFFFLL;
LABEL_7:
  icu::UnicodeString::~UnicodeString(v7, &v24);
  v9 = *MEMORY[0x1E69E9840];
  return v13;
}

const UChar *icu::TimeZone::dereferOlsonLink(icu::TimeZone *this, const icu::UnicodeString *a2)
{
  v10 = U_ZERO_ERROR;
  v3 = ures_openDirect(0, "zoneinfo64", &v10);
  v4 = ures_getByKey(v3, "Names", 0, &v10);
  v5 = sub_1953DC690(v4, this, &v10);
  StringByIndex = ures_getStringByIndex(v4, v5, 0, &v10);
  ures_getByKey(v3, "Zones", v3, &v10);
  ures_getByIndex(v3, v5, v3, &v10);
  if (v10 <= U_ZERO_ERROR && ures_getType(v3) == 7)
  {
    Int = ures_getInt(v3, &v10);
    v8 = ures_getStringByIndex(v4, Int, 0, &v10);
    if (v10 <= U_ZERO_ERROR)
    {
      StringByIndex = v8;
    }
  }

  ures_close(v4);
  ures_close(v3);
  return StringByIndex;
}

const UChar *icu::TimeZone::getRegion(icu::TimeZone *this, UErrorCode *a2, UErrorCode *a3)
{
  if (*a2 > 0)
  {
    return 0;
  }

  v6 = ures_openDirect(0, "zoneinfo64", a2);
  v7 = ures_getByKey(v6, "Names", 0, a2);
  LODWORD(this) = sub_1953DC690(v7, this, a2);
  ures_getByKey(v6, "Regions", v7, a2);
  StringByIndex = ures_getStringByIndex(v7, this, 0, a2);
  if (*a2 <= 0)
  {
    v3 = StringByIndex;
  }

  else
  {
    v3 = 0;
  }

  ures_close(v7);
  ures_close(v6);
  return v3;
}

uint64_t icu::TimeZone::getRegion(icu::TimeZone *this, const icu::UnicodeString *a2, char *a3, int *a4, UErrorCode *a5)
{
  v5 = 0;
  *a2 = 0;
  if (*a4 <= 0)
  {
    v7 = a3;
    v10 = *(this + 4);
    v11 = v10;
    v12 = v10 >> 5;
    if (v11 >= 0)
    {
      v13 = v12;
    }

    else
    {
      v13 = *(this + 3);
    }

    if (icu::UnicodeString::doCompare(this, 0, v13, L"Etc/Unknown", 0, 11) && (v20 = U_ZERO_ERROR, (Region = icu::TimeZone::getRegion(this, &v20, v14)) != 0))
    {
      v16 = Region;
      v5 = u_strlen(Region);
      v17 = uprv_min(v5, v7);
      u_UCharsToChars(v16, a2, v17);
      if (v5 <= v7)
      {
        return u_terminateChars(a2, v7, v5, a4);
      }

      v18 = 15;
    }

    else
    {
      v5 = 0;
      v18 = 1;
    }

    *a4 = v18;
  }

  return v5;
}

uint64_t icu::TimeZone::getDisplayName(icu::TimeZone *this, icu::UnicodeString *a2)
{
  Default = icu::Locale::getDefault(this);

  return icu::TimeZone::getDisplayName(this, 0, 2u, Default, a2);
}

uint64_t icu::TimeZone::getDisplayName(icu::Calendar *a1, int a2, unsigned int a3, icu::TimeZoneFormat *a4, uint64_t a5)
{
  v31 = *MEMORY[0x1E69E9840];
  v29 = U_ZERO_ERROR;
  icu::Calendar::getNow(a1);
  v12 = v11;
  v28 = 0;
  if (a3 <= 8 && ((1 << a3) & 0x118) != 0)
  {
    icu::TimeZoneFormat::createInstance(a4, &v29, v10);
  }

  if (a3 - 5 <= 1)
  {
    icu::TimeZoneFormat::createInstance(a4, &v29, v10);
  }

  if (a3 == 1 || a3 == 7)
  {
    v13 = a2 == 0;
    v14 = 32;
    v15 = 16;
  }

  else
  {
    if (a3 != 2)
    {
      abort();
    }

    v13 = a2 == 0;
    v14 = 4;
    v15 = 2;
  }

  if (v13)
  {
    v16 = v15;
  }

  else
  {
    v16 = v14;
  }

  Instance = icu::TimeZoneNames::createInstance(a4, &v29, v10);
  v19 = Instance;
  v20 = v29;
  if (v29 <= U_ZERO_ERROR)
  {
    memset(v30, 0, sizeof(v30));
    CanonicalCLDRID = icu::ZoneMeta::getCanonicalCLDRID(a1, v18);
    sub_1951F3478(v30, &CanonicalCLDRID);
    (*(*v19 + 96))(v19, v30, v16, a5, v12);
    v23 = *(a5 + 8);
    if (v23 <= 0x1F)
    {
      icu::TimeZoneFormat::createInstance(a4, &v29, v22);
    }

    icu::UnicodeString::~UnicodeString(v23, v30);
  }

  else
  {
    if (*(a5 + 8))
    {
      v21 = 2;
    }

    else
    {
      v21 = *(a5 + 8) & 0x1E;
    }

    *(a5 + 8) = v21;
    if (!Instance)
    {
      goto LABEL_29;
    }
  }

  (*(*v19 + 8))(v19);
  if (v20 <= U_ZERO_ERROR && v29 >= U_ILLEGAL_ARGUMENT_ERROR)
  {
    if (*(a5 + 8))
    {
      v24 = 2;
    }

    else
    {
      v24 = *(a5 + 8) & 0x1E;
    }

    *(a5 + 8) = v24;
  }

LABEL_29:
  v25 = *MEMORY[0x1E69E9840];
  return a5;
}

uint64_t icu::TimeZone::getDisplayName(icu::Locale *a1, int a2, unsigned int a3, uint64_t a4)
{
  Default = icu::Locale::getDefault(a1);

  return icu::TimeZone::getDisplayName(a1, a2, a3, Default, a4);
}

uint64_t icu::TimeZone::getDSTSavings(icu::TimeZone *this)
{
  if ((*(*this + 72))(this))
  {
    return 3600000;
  }

  else
  {
    return 0;
  }
}

BOOL icu::TimeZone::parseCustomID(icu::TimeZone *this, const icu::UnicodeString *a2, int *a3, int *a4, int *a5, int *a6)
{
  v8 = *(this + 4);
  if ((v8 & 0x8000u) == 0)
  {
    v9 = v8 >> 5;
  }

  else
  {
    v9 = *(this + 3);
  }

  if (v9 < 3)
  {
    return 0;
  }

  v39 = v6;
  v40 = v7;
  if ((v8 & 0x11) != 0)
  {
    v16 = 0;
  }

  else if ((v8 & 2) != 0)
  {
    v16 = (this + 10);
  }

  else
  {
    v16 = *(this + 3);
  }

  if (u_strncasecmp(v16, L"GMT", 3, 0))
  {
    return 0;
  }

  *a2 = 1;
  *a3 = 0;
  *a4 = 0;
  *a5 = 0;
  v17 = *(this + 4);
  v18 = (v17 & 0x8000u) == 0 ? v17 >> 5 : *(this + 3);
  if (v18 < 4)
  {
    return 0;
  }

  if ((v17 & 2) != 0)
  {
    v19 = this + 10;
  }

  else
  {
    v19 = *(this + 3);
  }

  v20 = *(v19 + 3);
  if (v20 != 43)
  {
    if (v20 != 45)
    {
      return 0;
    }

    *a2 = -1;
  }

  v38 = 4;
  v21 = icu::ICU_Utility::parseNumber(this, &v38, 0xA);
  *a3 = v21;
  v22 = v38;
  v23 = *(this + 4);
  v24 = v23 >> 5;
  if ((v23 & 0x8000u) != 0)
  {
    v24 = *(this + 3);
  }

  if (v38 == v24)
  {
    v10 = 0;
    if (v38 > 0xA)
    {
      return v10;
    }

    if (((1 << v38) & 0x60) == 0)
    {
      if (((1 << v38) & 0x180) != 0)
      {
        v25 = 100;
      }

      else
      {
        if (((1 << v38) & 0x600) == 0)
        {
          return v10;
        }

        *a5 = v21 % 100;
        v21 = *a3 / 100;
        v25 = 10000;
      }

      *a4 = v21 % 100;
      *a3 /= v25;
    }

    return *a3 < 24 && *a4 < 60 && *a5 < 60;
  }

  v10 = 0;
  if (v38 - 5 > 1 || v24 <= v38)
  {
    return v10;
  }

  v26 = *(this + 3);
  if ((v23 & 2) != 0)
  {
    v26 = this + 10;
  }

  if (*&v26[2 * v38] != 58)
  {
    return 0;
  }

  v27 = ++v38;
  if (v24 == v22 + 1)
  {
    return 0;
  }

  *a4 = icu::ICU_Utility::parseNumber(this, &v38, 0xA);
  if (v38 - v27 != 2)
  {
    return 0;
  }

  v28 = *(this + 4);
  if (*(this + 4) < 0)
  {
    v29 = *(this + 3);
    if (v29 <= v38)
    {
      return *a3 < 24 && *a4 < 60 && *a5 < 60;
    }
  }

  else
  {
    if (v38 >= (v28 >> 5))
    {
      return *a3 < 24 && *a4 < 60 && *a5 < 60;
    }

    v29 = v28 >> 5;
  }

  if (v29 <= v38)
  {
    return 0;
  }

  v32 = (v28 & 2) != 0 ? (this + 10) : *(this + 3);
  if (*(v32 + v38) != 58)
  {
    return 0;
  }

  v33 = ++v38;
  *a5 = icu::ICU_Utility::parseNumber(this, &v38, 0xA);
  if (v38 - v33 != 2)
  {
    return 0;
  }

  v34 = *(this + 4);
  v35 = v34;
  v36 = v34 >> 5;
  if (v35 < 0)
  {
    v36 = *(this + 3);
  }

  if (v36 > v38)
  {
    return 0;
  }

  return *a3 < 24 && *a4 < 60 && *a5 < 60;
}

icu::UnicodeString *icu::TimeZone::formatCustomID(icu::TimeZone *this, int a2, int a3, int a4, icu::UnicodeString *a5, icu::UnicodeString *a6)
{
  v10 = this;
  icu::UnicodeString::unBogus(a5);
  v11 = *(a5 + 4);
  v12 = v11;
  v13 = v11 >> 5;
  if (v12 >= 0)
  {
    v14 = v13;
  }

  else
  {
    v14 = *(a5 + 3);
  }

  icu::UnicodeString::doReplace(a5, 0, v14, L"GMT", 0, 3);
  if (a2 | v10 | a3)
  {
    v15 = a4 ? 45 : 43;
    v20 = v15;
    icu::UnicodeString::doAppend(a5, &v20, 0, 1);
    if (v10 > 9)
    {
      v16 = v10 / 0xAu + 48;
    }

    else
    {
      LOWORD(v16) = 48;
    }

    v20 = v16;
    icu::UnicodeString::doAppend(a5, &v20, 0, 1);
    v20 = v10 % 10 + 48;
    icu::UnicodeString::doAppend(a5, &v20, 0, 1);
    v20 = 58;
    icu::UnicodeString::doAppend(a5, &v20, 0, 1);
    if (a2 > 9)
    {
      v17 = a2 / 0xAu + 48;
    }

    else
    {
      LOWORD(v17) = 48;
    }

    v20 = v17;
    icu::UnicodeString::doAppend(a5, &v20, 0, 1);
    v20 = a2 % 10 + 48;
    icu::UnicodeString::doAppend(a5, &v20, 0, 1);
    if (a3)
    {
      v20 = 58;
      icu::UnicodeString::doAppend(a5, &v20, 0, 1);
      if (a3 > 9)
      {
        v18 = a3 / 0xAu + 48;
      }

      else
      {
        LOWORD(v18) = 48;
      }

      v20 = v18;
      icu::UnicodeString::doAppend(a5, &v20, 0, 1);
      v20 = a3 % 10 + 48;
      icu::UnicodeString::doAppend(a5, &v20, 0, 1);
    }
  }

  return a5;
}

const icu::UnicodeString *icu::TimeZone::getCustomID(icu::TimeZone *this, const icu::UnicodeString *a2, icu::UnicodeString *a3, UErrorCode *a4, uint64_t a5, int *a6)
{
  if (*(a2 + 4))
  {
    v7 = 2;
  }

  else
  {
    v7 = *(a2 + 4) & 0x1E;
  }

  *(a2 + 4) = v7;
  if (*a3 <= 0)
  {
    *v11 = 0;
    *v12 = 0;
    if (icu::TimeZone::parseCustomID(this, &v12[1], v12, &v11[1], v11, a6))
    {
      icu::TimeZone::formatCustomID(v12[0], v11[1], v11[0], v12[1] >> 31, a2, v9);
    }

    else
    {
      *a3 = 1;
    }
  }

  return a2;
}

BOOL icu::TimeZone::hasSameRules(icu::TimeZone *this, const icu::TimeZone *a2)
{
  v4 = (*(*this + 64))(this);
  if (v4 != (*(*a2 + 64))(a2))
  {
    return 0;
  }

  v5 = (*(*this + 72))(this);
  return v5 == (*(*a2 + 72))(a2);
}

uint64_t *icu::TimeZone::getTZDataVersion(UErrorCode *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    if (atomic_load_explicit(&dword_1EAECA208, memory_order_acquire) == 2 || !icu::umtx_initImplPreInit(&dword_1EAECA208))
    {
      if (dword_1EAECA20C >= 1)
      {
        *this = dword_1EAECA20C;
      }
    }

    else
    {
      sub_1953DD9CC(this);
      dword_1EAECA20C = *this;
      icu::umtx_initImplPostInit(&dword_1EAECA208);
    }
  }

  return &qword_1EAECA1A1;
}

void sub_1953DD9CC(UErrorCode *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  sub_195400588(0x15u, sub_1953DB838);
  v5 = 0;
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  icu::StackUResourceBundle::StackUResourceBundle(v6);
  ures_openDirectFillIn(v6, 0, "zoneinfo64", a1);
  StringByKey = ures_getStringByKey(v6, "TZVersion", &v5, a1);
  if (*a1 <= 0)
  {
    v3 = v5;
    if (v5 >= 16)
    {
      v3 = 15;
      v5 = 15;
    }

    u_UCharsToChars(StringByKey, &qword_1EAECA1A1, v3);
  }

  icu::StackUResourceBundle::~StackUResourceBundle(v6);
  v4 = *MEMORY[0x1E69E9840];
}

const icu::UnicodeString *icu::TimeZone::getCanonicalID(icu::TimeZone *this, const icu::UnicodeString *a2, icu::UnicodeString *a3, icu::UnicodeString *a4, UErrorCode *a5)
{
  if (*(a2 + 4))
  {
    v6 = 2;
  }

  else
  {
    v6 = *(a2 + 4) & 0x1E;
  }

  *(a2 + 4) = v6;
  *a3 = 0;
  if (*a4 <= 0)
  {
    v11 = *(this + 4);
    v12 = v11;
    v13 = v11 >> 5;
    if (v12 >= 0)
    {
      v14 = v13;
    }

    else
    {
      v14 = *(this + 3);
    }

    if (icu::UnicodeString::doCompare(this, 0, v14, L"Etc/Unknown", 0, 11))
    {
      icu::ZoneMeta::getCanonicalCLDRID(this, a2, a4, v15);
      if (*a4 <= 0)
      {
        *a3 = 1;
      }

      else
      {
        *a4 = 0;
        icu::TimeZone::getCustomID(this, a2, a4, v16, v17, v18);
      }
    }

    else
    {
      icu::UnicodeString::fastCopyFrom(a2, this);
      *a3 = 0;
    }
  }

  return a2;
}

const icu::UnicodeString *icu::TimeZone::getIanaID(icu::TimeZone *this, const icu::UnicodeString *a2, icu::UnicodeString *a3, UErrorCode *a4)
{
  if (*(a2 + 4))
  {
    v5 = 2;
  }

  else
  {
    v5 = *(a2 + 4) & 0x1E;
  }

  *(a2 + 4) = v5;
  if (*a3 <= 0)
  {
    v8 = *(this + 4);
    v9 = v8;
    v10 = v8 >> 5;
    if (v9 >= 0)
    {
      v11 = v10;
    }

    else
    {
      v11 = *(this + 3);
    }

    if (icu::UnicodeString::doCompare(this, 0, v11, L"Etc/Unknown", 0, 11))
    {
      icu::ZoneMeta::getIanaID(this, a2, a3, v12);
    }

    else
    {
      *a3 = 1;
      icu::UnicodeString::setToBogus(a2);
    }
  }

  return a2;
}

const icu::UnicodeString *icu::TimeZone::getWindowsID(icu::TimeZone *this, const icu::UnicodeString *a2, icu::UnicodeString *a3, UErrorCode *a4, UErrorCode *a5)
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 4) & 0x1E;
  if (*(a2 + 4))
  {
    v6 = 2;
  }

  *(a2 + 4) = v6;
  if (*a3 <= 0)
  {
    v33 = 0u;
    v36 = 0;
    v35 = 0u;
    v34 = 0u;
    v32 = &unk_1F0935D00;
    LOWORD(v33) = 2;
    v30 = 0;
    icu::TimeZone::getCanonicalID(this, &v32, &v30, a3, a5);
    v8 = *a3;
    if (v8 <= 0 && v30)
    {
      v9 = ures_openDirect(0, "windowsZones", a3);
      v10 = v9;
      v8 = *a3;
      if (v8 <= 0)
      {
        ures_getByKey(v9, "mapTimezones", v9, a3);
        v8 = *a3;
        if (v8 <= 0)
        {
          v11 = 0;
          if (ures_hasNext(v10))
          {
            do
            {
              NextResource = ures_getNextResource(v10, v11, a3);
              v11 = NextResource;
              if (*a3 > 0)
              {
                break;
              }

              if (ures_getType(NextResource) == 2)
              {
                v13 = 0;
                if (ures_hasNext(v11))
                {
                  while (1)
                  {
                    v14 = ures_getNextResource(v11, v13, a3);
                    v13 = v14;
                    if (*a3 > 0)
                    {
                      break;
                    }

                    if (ures_getType(v14))
                    {
LABEL_23:
                      v21 = 0;
                    }

                    else
                    {
                      v29 = 0;
                      String = ures_getString(v13, &v29, a3);
                      v16 = String;
                      if (*a3 > 0)
                      {
                        goto LABEL_29;
                      }

                      while (1)
                      {
                        v17 = u_strchr(v16, 0x20u);
                        v18 = v17;
                        v19 = v17 ? v17 : &String[v29];
                        v20 = (v33 & 0x8000u) == 0 ? v33 >> 5 : DWORD1(v33);
                        if (!icu::UnicodeString::doCompare(&v32, 0, v20, v16, 0, (v19 - v16) >> 1))
                        {
                          break;
                        }

                        v16 = v19 + 1;
                        if (!v18)
                        {
                          goto LABEL_23;
                        }
                      }

                      Key = ures_getKey(v11);
                      icu::UnicodeString::UnicodeString(v31, Key, 0xFFFFFFFFLL, 0);
                      icu::UnicodeString::operator=(a2, v31);
                      icu::UnicodeString::~UnicodeString(v24, v31);
                      v21 = 1;
                    }

                    hasNext = ures_hasNext(v11);
                    if (v21 || !hasNext)
                    {
                      goto LABEL_31;
                    }
                  }

                  v21 = 0;
LABEL_31:
                  v25 = v21 == 0;
                }

                else
                {
LABEL_29:
                  v25 = 1;
                }

                ures_close(v13);
              }

              else
              {
                v25 = 1;
              }

              v26 = ures_hasNext(v10);
              if (!v25)
              {
                break;
              }
            }

            while (v26);
          }

          ures_close(v11);
        }
      }

      if (v10)
      {
        ures_close(v10);
      }
    }

    else if (v8 == 1)
    {
      *a3 = 0;
    }

    icu::UnicodeString::~UnicodeString(v8, &v32);
  }

  v27 = *MEMORY[0x1E69E9840];
  return a2;
}