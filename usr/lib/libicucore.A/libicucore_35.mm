uint64_t icu::PluralRules::getSamples(icu::PluralRules *this, const icu::UnicodeString *a2, icu::number::impl::DecimalQuantity *a3, int a4, UErrorCode *a5)
{
  if (*a5 > 0)
  {
    return 0;
  }

  v7 = *(this + 6);
  if (v7 >= U_ILLEGAL_ARGUMENT_ERROR)
  {
    result = 0;
LABEL_14:
    *a5 = v7;
    return result;
  }

  if (!a3)
  {
    if (!a4)
    {
      goto LABEL_7;
    }

LABEL_13:
    result = 0;
    v7 = U_ILLEGAL_ARGUMENT_ERROR;
    goto LABEL_14;
  }

  if (a4 < 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  result = icu::PluralRules::rulesForKeyword(this, a2);
  if (result)
  {
    v10 = result;
    result = sub_1953941D0(result + 152, 0, a3, a4, a5);
    if (!result)
    {

      return sub_1953941D0(v10 + 88, 0, a3, a4, a5);
    }
  }

  return result;
}

BOOL icu::PluralRules::isKeyword(icu::PluralRules *this, const icu::UnicodeString *a2)
{
  v4 = *(a2 + 4);
  v5 = v4;
  v6 = v4 >> 5;
  if (v5 >= 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = *(a2 + 3);
  }

  v9 = "o";
  return !icu::UnicodeString::doCompare(a2, 0, v7, "o", 0, 5) || icu::PluralRules::rulesForKeyword(&v9, this, a2) != 0;
}

uint64_t icu::PluralRules::operator==(icu::PluralRules *a1, icu::PluralRules *a2)
{
  v11 = U_ZERO_ERROR;
  if (a1 == a2)
  {
    return 1;
  }

  Keywords = icu::PluralRules::getKeywords(a1, &v11);
  v5 = icu::PluralRules::getKeywords(a2, &v11);
  if (v11 <= U_ZERO_ERROR)
  {
    v7 = (*(*Keywords + 32))(Keywords, &v11);
    if (v7 == (*(*v5 + 32))(v5, &v11))
    {
      (*(*Keywords + 64))(Keywords, &v11);
      while (1)
      {
        v8 = (*(*Keywords + 56))(Keywords, &v11);
        if (!v8)
        {
          break;
        }

        if (!icu::PluralRules::isKeyword(a2, v8))
        {
          goto LABEL_3;
        }
      }

      (*(*v5 + 64))(v5, &v11);
      while (1)
      {
        v9 = (*(*v5 + 56))(v5, &v11);
        if (!v9)
        {
          break;
        }

        if (!icu::PluralRules::isKeyword(a1, v9))
        {
          goto LABEL_4;
        }
      }

      v6 = v11 < U_ILLEGAL_ARGUMENT_ERROR;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
LABEL_3:
    if (!v5)
    {
      v6 = 0;
      if (!Keywords)
      {
        return v6;
      }

      goto LABEL_20;
    }

LABEL_4:
    v6 = 0;
  }

  (*(*v5 + 8))(v5);
  if (Keywords)
  {
LABEL_20:
    (*(*Keywords + 8))(Keywords);
  }

  return v6;
}

int *sub_195394AB8(int *result, int *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  if (*a2 <= 0)
  {
    v3 = result;
    v4 = *(result + 1);
    v5 = v4 + 10;
    for (i = result[4]; ; v3[4] = i)
    {
      v7 = *(v4 + 8);
      if (*(v4 + 8) < 0)
      {
        v8 = *(v4 + 12);
        if (i >= v8)
        {
          goto LABEL_16;
        }
      }

      else
      {
        if (i >= (v7 >> 5))
        {
          goto LABEL_15;
        }

        v8 = v7 >> 5;
      }

      if (v8 <= i)
      {
        v10 = 0xFFFF;
      }

      else
      {
        v9 = v4 + 10;
        if ((v7 & 2) == 0)
        {
          v9 = *(v4 + 24);
        }

        v10 = *(v9 + 2 * i);
      }

      result = sub_19539677C(v10);
      v3[22] = result;
      if (result != 4)
      {
        break;
      }

      ++i;
    }

    v7 = *(v4 + 8);
    if ((*(v4 + 8) & 0x80000000) == 0)
    {
LABEL_15:
      v11 = 0;
      v12 = v7 >> 5;
      goto LABEL_17;
    }

LABEL_16:
    v12 = *(v4 + 12);
    v11 = 1;
LABEL_17:
    if (i < v12)
    {
      v13 = i + 1;
      v14 = v3[22];
      if (v14 <= 6)
      {
        if ((v14 - 2) < 2 || (v14 - 5) < 2)
        {
          goto LABEL_57;
        }

        if (v14 == 1)
        {
          do
          {
            v15 = v13;
            if (*(v4 + 8) < 0)
            {
              v16 = *(v4 + 12);
              if (v13 >= v16)
              {
                break;
              }
            }

            else
            {
              if (v13 >= (*(v4 + 8) >> 5))
              {
                break;
              }

              v16 = *(v4 + 8) >> 5;
            }

            if (v16 <= v13)
            {
              v18 = 0xFFFF;
            }

            else
            {
              v17 = v4 + 10;
              if ((*(v4 + 8) & 2) == 0)
              {
                v17 = *(v4 + 24);
              }

              v18 = *(v17 + 2 * v13);
            }

            v19 = sub_19539677C(v18);
            v3[22] = v19;
            v13 = v15 + 1;
          }

          while (v19 == 1);
          v20 = 1;
LABEL_51:
          v3[22] = v20;
LABEL_74:
          icu::UnicodeString::UnicodeString(v31, v4, i, (v15 - i));
          icu::UnicodeString::operator=((v3 + 6), v31);
          result = icu::UnicodeString::~UnicodeString(v29, v31);
          v3[4] = v15;
          goto LABEL_75;
        }

        goto LABEL_56;
      }

      if (v14 <= 0x12)
      {
        if (((1 << v14) & 0x52200) != 0)
        {
LABEL_57:
          LODWORD(v15) = i + 1;
          goto LABEL_74;
        }

        if (v14 == 10)
        {
          do
          {
            v15 = v13;
            if (*(v4 + 8) < 0)
            {
              v22 = *(v4 + 12);
              if (v13 >= v22)
              {
                break;
              }
            }

            else
            {
              if (v13 >= (*(v4 + 8) >> 5))
              {
                break;
              }

              v22 = *(v4 + 8) >> 5;
            }

            if (v22 <= v13)
            {
              v24 = 0xFFFF;
            }

            else
            {
              v23 = v4 + 10;
              if ((*(v4 + 8) & 2) == 0)
              {
                v23 = *(v4 + 24);
              }

              v24 = *(v23 + 2 * v13);
            }

            v25 = sub_19539677C(v24);
            v3[22] = v25;
            v13 = v15 + 1;
          }

          while (v25 == 10);
          v20 = 10;
          goto LABEL_51;
        }

        if (v14 == 17)
        {
          LODWORD(v15) = i + 1;
          if (v11)
          {
            v21 = *(v4 + 12);
          }

          else
          {
            v21 = v7 >> 5;
          }

          if (v21 <= v15)
          {
            goto LABEL_64;
          }

          if ((v7 & 2) == 0)
          {
            v5 = *(v4 + 24);
          }

          if (*(v5 + 2 * v15) == 61)
          {
            LODWORD(v15) = i + 2;
          }

          else
          {
LABEL_64:
            v3[22] = 0;
          }

          goto LABEL_74;
        }
      }

      if (v14 != 7)
      {
LABEL_56:
        *a2 = 65792;
        goto LABEL_57;
      }

      LODWORD(v15) = i + 1;
      if (v11)
      {
        v26 = *(v4 + 12);
        if (v15 >= v26)
        {
          goto LABEL_74;
        }
      }

      else
      {
        if (v15 >= (v7 >> 5))
        {
          goto LABEL_74;
        }

        v26 = v7 >> 5;
      }

      if (v26 <= v15)
      {
        goto LABEL_74;
      }

      v27 = v4 + 10;
      if ((v7 & 2) == 0)
      {
        v27 = *(v4 + 24);
      }

      if (*(v27 + 2 * v15) != 46)
      {
        goto LABEL_74;
      }

      LODWORD(v15) = i + 2;
      if (v11)
      {
        v28 = *(v4 + 12);
        if (v15 >= v28)
        {
          goto LABEL_83;
        }
      }

      else
      {
        if (v15 >= (v7 >> 5))
        {
          goto LABEL_83;
        }

        v28 = v7 >> 5;
      }

      if (v28 > v15)
      {
        if ((v7 & 2) == 0)
        {
          v5 = *(v4 + 24);
        }

        if (*(v5 + 2 * v15) == 46)
        {
          v3[22] = 9;
          LODWORD(v15) = i + 3;
          goto LABEL_74;
        }
      }

LABEL_83:
      v3[22] = 8;
      goto LABEL_74;
    }

    v3[22] = 30;
  }

LABEL_75:
  v30 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_195394E34(uint64_t result, int *a2)
{
  if (*a2 <= 0)
  {
    v3 = result;
    v4 = *(result + 92);
    if (v4)
    {
      v5 = v4 == 3;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      result = sub_19539635C(result + 24, *(result + 88));
      *(v3 + 88) = result;
      v4 = *(v3 + 92);
    }

    switch(v4)
    {
      case 0:
      case 3:
        v9 = *(v3 + 88);
        if (v9 != 10 && v9 != 30)
        {
          goto LABEL_9;
        }

        return result;
      case 1:
        v11 = *(v3 + 88);
        v7 = v11 > 0x1E;
        v12 = 1 << v11;
        v13 = 1075566924;
        goto LABEL_30;
      case 2:
      case 8:
      case 13:
      case 15:
      case 16:
      case 17:
      case 19:
        if (*(v3 + 88) != 1)
        {
          goto LABEL_9;
        }

        return result;
      case 5:
        v14 = *(v3 + 88);
        if ((v14 - 21) >= 7 && v14 != 6)
        {
          goto LABEL_9;
        }

        return result;
      case 6:
        if ((*(v3 + 88) & 0xFFFFFFFE) == 0x1C)
        {
          return result;
        }

        goto LABEL_9;
      case 10:
        if (*(v3 + 88) == 5)
        {
          return result;
        }

        goto LABEL_9;
      case 11:
      case 12:
        if ((*(v3 + 88) - 21) < 7)
        {
          return result;
        }

        goto LABEL_9;
      case 14:
        v16 = *(v3 + 88);
        v7 = v16 > 0x13;
        v12 = 1 << v16;
        v13 = 557058;
LABEL_30:
        v8 = v12 & v13;
        goto LABEL_31;
      case 20:
        v18 = *(v3 + 88);
        if (v18 != 1 && v18 != 14)
        {
          goto LABEL_9;
        }

        return result;
      case 21:
      case 22:
      case 23:
      case 24:
      case 25:
      case 26:
      case 27:
        v6 = *(v3 + 88);
        v7 = v6 > 0x14;
        v8 = (1 << v6) & 0x1BE000;
LABEL_31:
        if (!v7 && v8 != 0)
        {
          return result;
        }

        goto LABEL_9;
      default:
LABEL_9:
        *a2 = 65792;
        break;
    }
  }

  return result;
}

uint64_t sub_19539501C(uint64_t a1, int *a2)
{
  v2 = *(a1 + 48);
  if (v2 < 1)
  {
    operator new();
  }

  result = 0;
  *a2 = v2;
  return result;
}

uint64_t sub_1953950B8(uint64_t a1, int *a2)
{
  v2 = *(a1 + 24);
  if (v2 <= 0)
  {
    do
    {
      a1 = *(a1 + 16);
    }

    while (a1);
    operator new();
  }

  result = 0;
  *a2 = v2;
  return result;
}

void *icu::PluralRules::getRules@<X0>(icu::PluralRules *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0u;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0u;
  *(a2 + 24) = 0u;
  *a2 = &unk_1F0935D00;
  *(a2 + 8) = 2;
  result = *(this + 1);
  if (result)
  {
    return sub_1953951A8(result, a2);
  }

  return result;
}

void *sub_1953951A8(void *result, uint64_t a2)
{
  v79 = *MEMORY[0x1E69E9840];
  memset(v78, 0, sizeof(v78));
  v58 = result;
  if (result[10])
  {
    v3 = *(result + 8);
    v4 = v3;
    v5 = v3 >> 5;
    v6 = v4 >= 0 ? v5 : *(result + 5);
    icu::UnicodeString::doAppend(a2, (result + 1), 0, v6);
    v75 = 58;
    icu::UnicodeString::doAppend(a2, &v75, 0, 1);
    v75 = 32;
    result = icu::UnicodeString::doAppend(a2, &v75, 0, 1);
    v7 = v58[10];
    if (v7)
    {
      while (1)
      {
        v59 = v7;
        v8 = *(v7 + 8);
        if (v8)
        {
          break;
        }

LABEL_90:
        v7 = *(v59 + 16);
        if (!v7)
        {
          goto LABEL_95;
        }

        v62 = L" or ";
        icu::UnicodeString::UnicodeString(&v75, 1, &v62);
        if ((v76 & 0x8000u) == 0)
        {
          v53 = v76 >> 5;
        }

        else
        {
          v53 = v77;
        }

        icu::UnicodeString::doAppend(a2, &v75, 0, v53);
        result = icu::UnicodeString::~UnicodeString(v54, &v75);
        v60[1] = v62;
      }

      while (*(v8 + 8) || *(v8 + 24))
      {
        sub_195396204(*(v8 + 36), &v75);
        if ((v76 & 0x8000u) == 0)
        {
          v9 = v76 >> 5;
        }

        else
        {
          v9 = v77;
        }

        icu::UnicodeString::doAppend(a2, &v75, 0, v9);
        icu::UnicodeString::~UnicodeString(v10, &v75);
        v75 = 32;
        icu::UnicodeString::doAppend(a2, &v75, 0, 1);
        if (*(v8 + 8) == 1)
        {
          v72 = "m";
          icu::UnicodeString::UnicodeString(&v75, 1, &v72);
          if ((v76 & 0x8000u) == 0)
          {
            v11 = v76 >> 5;
          }

          else
          {
            v11 = v77;
          }

          icu::UnicodeString::doAppend(a2, &v75, 0, v11);
          icu::UnicodeString::~UnicodeString(v12, &v75);
          v60[13] = v72;
          uprv_itou(v78, 16, *(v8 + 12), 0xAu, 0);
          sub_1951D6EE0(&v75, v78);
          if ((v76 & 0x8000u) == 0)
          {
            v13 = v76 >> 5;
          }

          else
          {
            v13 = v77;
          }

          icu::UnicodeString::doAppend(a2, &v75, 0, v13);
          icu::UnicodeString::~UnicodeString(v14, &v75);
        }

        if (!*(v8 + 24))
        {
          if (*(v8 + 32))
          {
            v71 = L" is not ";
            icu::UnicodeString::UnicodeString(&v75, 1, &v71);
            if ((v76 & 0x8000u) == 0)
            {
              v17 = v76 >> 5;
            }

            else
            {
              v17 = v77;
            }

            icu::UnicodeString::doAppend(a2, &v75, 0, v17);
            icu::UnicodeString::~UnicodeString(v18, &v75);
            v60[6] = v71;
          }

          else
          {
            v70 = " ";
            icu::UnicodeString::UnicodeString(&v75, 1, &v70);
            if ((v76 & 0x8000u) == 0)
            {
              v31 = v76 >> 5;
            }

            else
            {
              v31 = v77;
            }

            icu::UnicodeString::doAppend(a2, &v75, 0, v31);
            icu::UnicodeString::~UnicodeString(v32, &v75);
            v60[5] = v70;
          }

LABEL_57:
          uprv_itou(v78, 16, *(v8 + 16), 0xAu, 0);
          sub_1951D6EE0(&v75, v78);
          if ((v76 & 0x8000u) == 0)
          {
            v33 = v76 >> 5;
          }

          else
          {
            v33 = v77;
          }

          icu::UnicodeString::doAppend(a2, &v75, 0, v33);
          result = icu::UnicodeString::~UnicodeString(v34, &v75);
          goto LABEL_85;
        }

        if (*(v8 + 32))
        {
          if (*(v8 + 33))
          {
            v69 = " ";
            icu::UnicodeString::UnicodeString(&v75, 1, &v69);
            if ((v76 & 0x8000u) == 0)
            {
              v15 = v76 >> 5;
            }

            else
            {
              v15 = v77;
            }

            icu::UnicodeString::doAppend(a2, &v75, 0, v15);
            result = icu::UnicodeString::~UnicodeString(v16, &v75);
            v60[12] = v69;
          }

          else
          {
            v68 = L" not within ";
            icu::UnicodeString::UnicodeString(&v75, 1, &v68);
            if ((v76 & 0x8000u) == 0)
            {
              v29 = v76 >> 5;
            }

            else
            {
              v29 = v77;
            }

            icu::UnicodeString::doAppend(a2, &v75, 0, v29);
            result = icu::UnicodeString::~UnicodeString(v30, &v75);
            v60[11] = v68;
          }
        }

        else if (*(v8 + 33))
        {
          v67 = " ";
          icu::UnicodeString::UnicodeString(&v75, 1, &v67);
          if ((v76 & 0x8000u) == 0)
          {
            v19 = v76 >> 5;
          }

          else
          {
            v19 = v77;
          }

          icu::UnicodeString::doAppend(a2, &v75, 0, v19);
          result = icu::UnicodeString::~UnicodeString(v20, &v75);
          v60[10] = v67;
        }

        else
        {
          v66 = L" within ";
          icu::UnicodeString::UnicodeString(&v75, 1, &v66);
          if ((v76 & 0x8000u) == 0)
          {
            v35 = v76 >> 5;
          }

          else
          {
            v35 = v77;
          }

          icu::UnicodeString::doAppend(a2, &v75, 0, v35);
          result = icu::UnicodeString::~UnicodeString(v36, &v75);
          v60[9] = v66;
        }

        v37 = *(v8 + 24);
        v38 = *(v37 + 8);
        if (v38 >= 1)
        {
          v39 = 0;
          do
          {
            v40 = *(v37 + 24);
            if (v39 + 1 >= v38)
            {
              v41 = 0;
            }

            else
            {
              v41 = *(v40 + 4 * v39 + 4);
            }

            uprv_itou(v78, 16, *(v40 + 4 * v39), 0xAu, 0);
            sub_1951D6EE0(&v75, v78);
            if ((v76 & 0x8000u) == 0)
            {
              v42 = v76 >> 5;
            }

            else
            {
              v42 = v77;
            }

            icu::UnicodeString::doAppend(a2, &v75, 0, v42);
            v44 = icu::UnicodeString::~UnicodeString(v43, &v75);
            v65 = ".";
            icu::UnicodeString::UnicodeString(v44, 1, &v65);
            if ((v76 & 0x8000u) == 0)
            {
              v45 = v76 >> 5;
            }

            else
            {
              v45 = v77;
            }

            icu::UnicodeString::doAppend(a2, &v75, 0, v45);
            icu::UnicodeString::~UnicodeString(v46, &v75);
            v60[8] = v65;
            uprv_itou(v78, 16, v41, 0xAu, 0);
            sub_1951D6EE0(&v75, v78);
            if ((v76 & 0x8000u) == 0)
            {
              v47 = v76 >> 5;
            }

            else
            {
              v47 = v77;
            }

            icu::UnicodeString::doAppend(a2, &v75, 0, v47);
            result = icu::UnicodeString::~UnicodeString(v48, &v75);
            v39 += 2;
            v37 = *(v8 + 24);
            v38 = *(v37 + 8);
            if (v38 > v39)
            {
              v64 = ",";
              icu::UnicodeString::UnicodeString(result, 1, &v64);
              if ((v76 & 0x8000u) == 0)
              {
                v49 = v76 >> 5;
              }

              else
              {
                v49 = v77;
              }

              icu::UnicodeString::doAppend(a2, &v75, 0, v49);
              result = icu::UnicodeString::~UnicodeString(v50, &v75);
              v60[7] = v64;
              v37 = *(v8 + 24);
              v38 = *(v37 + 8);
            }
          }

          while (v38 > v39);
        }

LABEL_85:
        v8 = *(v8 + 40);
        if (!v8)
        {
          goto LABEL_90;
        }

        v63 = L" and ";
        icu::UnicodeString::UnicodeString(&v75, 1, &v63);
        if ((v76 & 0x8000u) == 0)
        {
          v51 = v76 >> 5;
        }

        else
        {
          v51 = v77;
        }

        icu::UnicodeString::doAppend(a2, &v75, 0, v51);
        result = icu::UnicodeString::~UnicodeString(v52, &v75);
        v60[2] = v63;
      }

      if (*(v8 + 16) == -1)
      {
        goto LABEL_85;
      }

      sub_195396204(*(v8 + 36), &v75);
      if ((v76 & 0x8000u) == 0)
      {
        v21 = v76 >> 5;
      }

      else
      {
        v21 = v77;
      }

      icu::UnicodeString::doAppend(a2, &v75, 0, v21);
      v23 = icu::UnicodeString::~UnicodeString(v22, &v75);
      v74 = " ";
      icu::UnicodeString::UnicodeString(v23, 1, &v74);
      if ((v76 & 0x8000u) == 0)
      {
        v24 = v76 >> 5;
      }

      else
      {
        v24 = v77;
      }

      icu::UnicodeString::doAppend(a2, &v75, 0, v24);
      v26 = icu::UnicodeString::~UnicodeString(v25, &v75);
      v60[4] = v74;
      if (*(v8 + 32))
      {
        v73 = L"not ";
        icu::UnicodeString::UnicodeString(v26, 1, &v73);
        if ((v76 & 0x8000u) == 0)
        {
          v27 = v76 >> 5;
        }

        else
        {
          v27 = v77;
        }

        icu::UnicodeString::doAppend(a2, &v75, 0, v27);
        icu::UnicodeString::~UnicodeString(v28, &v75);
        v60[3] = v73;
      }

      goto LABEL_57;
    }
  }

LABEL_95:
  if (v58[9])
  {
    v61 = ";";
    icu::UnicodeString::UnicodeString(&v75, 1, &v61);
    if ((v76 & 0x8000u) == 0)
    {
      v55 = v76 >> 5;
    }

    else
    {
      v55 = v77;
    }

    icu::UnicodeString::doAppend(a2, &v75, 0, v55);
    icu::UnicodeString::~UnicodeString(v56, &v75);
    v60[0] = v61;
    result = sub_1953951A8(v60, v58[9], a2);
  }

  v57 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_195395A78(uint64_t result, uint64_t a2)
{
  *result = &unk_1F0941080;
  *(result + 8) = 0xFFFFFFFF00000000;
  *(result + 16) = -1;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 44) = 0;
  *(result + 36) = 0;
  v2 = *(a2 + 48);
  *(result + 48) = v2;
  if (v2 <= 0)
  {
    *(result + 8) = *(a2 + 8);
    *(result + 16) = *(a2 + 16);
    if (*(a2 + 24))
    {
      operator new();
    }

    *(result + 32) = *(a2 + 32);
    *(result + 36) = *(a2 + 36);
    if (*(a2 + 40))
    {
      operator new();
    }
  }

  return result;
}

void *sub_195395BB4(void *a1)
{
  *a1 = &unk_1F0941080;
  v2 = a1[3];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  a1[3] = 0;
  v3 = a1[5];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  a1[5] = 0;
  return a1;
}

void sub_195395C58(void *a1)
{
  sub_195395BB4(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_195395C90(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 36);
  if (!v3)
  {
    return 1;
  }

  v5 = sub_195395DC8(v3);
  v6 = (*(*a2 + 16))(a2, v5);
  v7 = v6;
  if (!*(a1 + 33) || v6 == uprv_floor(v6))
  {
    if (*(a1 + 8) == 1)
    {
      v7 = fmod(v7, *(a1 + 12));
    }

    v8 = *(a1 + 24);
    if (!v8)
    {
      v15 = *(a1 + 16);
      v13 = v7 == v15 || v15 == -1;
      return v13 ^ (*(a1 + 32) != 0);
    }

    v9 = *(v8 + 8);
    if (v9 >= 1)
    {
      v10 = 0;
      v11 = *(v8 + 24);
      while (1)
      {
        if (v7 >= *(v11 + 4 * v10))
        {
          v12 = 0.0;
          if (v10 + 1 < v9)
          {
            v12 = *(v11 + 4 * v10 + 4);
          }

          if (v7 <= v12)
          {
            break;
          }
        }

        v10 += 2;
        if (v9 <= v10)
        {
          goto LABEL_14;
        }
      }

      v13 = 1;
      return v13 ^ (*(a1 + 32) != 0);
    }
  }

LABEL_14:
  v13 = 0;
  return v13 ^ (*(a1 + 32) != 0);
}

uint64_t sub_195395DC8(int a1)
{
  if ((a1 - 21) >= 7)
  {
    abort();
  }

  return dword_195491A38[a1 - 21];
}

uint64_t sub_195395DF4(uint64_t result, uint64_t a2)
{
  *(result + 8) = 0;
  *result = &unk_1F09410A0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  v2 = *(a2 + 24);
  *(result + 24) = v2;
  if (v2 <= 0)
  {
    if (*(a2 + 8))
    {
      operator new();
    }

    if (*(a2 + 16))
    {
      operator new();
    }
  }

  return result;
}

void *sub_195395ECC(void *a1)
{
  *a1 = &unk_1F09410A0;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  a1[1] = 0;
  v3 = a1[2];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  a1[2] = 0;
  return a1;
}

void sub_195395F70(void *a1)
{
  sub_195395ECC(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_195395FA8(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    while (1)
    {
      v4 = *(v3 + 8);
      if (!v4)
      {
        break;
      }

      do
      {
        result = sub_195395C90(v4, a2);
        v4 = *(v4 + 40);
        if (v4)
        {
          v5 = result == 0;
        }

        else
        {
          v5 = 1;
        }
      }

      while (!v5);
      v3 = *(v3 + 16);
      if (v3)
      {
        v6 = result == 0;
      }

      else
      {
        v6 = 0;
      }

      if (!v6)
      {
        return result;
      }
    }

    return 1;
  }

  return result;
}

uint64_t sub_195396018(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F09410C0;
  icu::UnicodeString::UnicodeString((a1 + 8), (a2 + 8));
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  icu::UnicodeString::UnicodeString((a1 + 88), (a2 + 88));
  icu::UnicodeString::UnicodeString((a1 + 152), (a2 + 152));
  *(a1 + 216) = *(a2 + 216);
  v4 = *(a2 + 220);
  *(a1 + 220) = v4;
  if (v4 <= 0)
  {
    if (*(a2 + 80))
    {
      operator new();
    }

    if (*(a2 + 72))
    {
      operator new();
    }
  }

  return a1;
}

void *sub_195396118(void *a1)
{
  *a1 = &unk_1F09410C0;
  v2 = a1[9];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[10];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  icu::UnicodeString::~UnicodeString((a1 + 19));
  icu::UnicodeString::~UnicodeString((a1 + 11));
  icu::UnicodeString::~UnicodeString((a1 + 1));
  return a1;
}

void sub_1953961CC(void *a1)
{
  sub_195396118(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_195396204@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0u;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0u;
  *(a2 + 24) = 0u;
  *a2 = &unk_1F0935D00;
  *(a2 + 8) = 2;
  if (a1 <= 23)
  {
    switch(a1)
    {
      case 21:
        v4 = 110;
        goto LABEL_17;
      case 22:
        v4 = 105;
        goto LABEL_17;
      case 23:
        v4 = 102;
        goto LABEL_17;
    }

LABEL_13:
    v4 = 126;
    goto LABEL_17;
  }

  if (a1 > 25)
  {
    if (a1 == 26)
    {
      v4 = 101;
      goto LABEL_17;
    }

    if (a1 == 27)
    {
      v4 = 99;
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  if (a1 == 24)
  {
    v4 = 118;
  }

  else
  {
    v4 = 116;
  }

LABEL_17:
  v6 = v4;
  return icu::UnicodeString::doAppend(a2, &v6, 0, 1);
}

void sub_1953962F8(void *a1)
{
  *a1 = &unk_1F09410E0;
  icu::UnicodeString::~UnicodeString((a1 + 3));

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_19539635C(uint64_t a1, uint64_t a2)
{
  if (a2 == 10)
  {
    v42[3] = v2;
    v42[4] = v3;
    v5 = *(a1 + 8);
    v6 = v5;
    v7 = v5 >> 5;
    if (v6 >= 0)
    {
      v8 = v7;
    }

    else
    {
      v8 = *(a1 + 12);
    }

    if (icu::UnicodeString::doCompare(a1, 0, v8, "n", 0, 1))
    {
      v9 = *(a1 + 8);
      v10 = v9;
      v11 = v9 >> 5;
      if (v10 >= 0)
      {
        v12 = v11;
      }

      else
      {
        v12 = *(a1 + 12);
      }

      if (icu::UnicodeString::doCompare(a1, 0, v12, "i", 0, 1))
      {
        v13 = *(a1 + 8);
        v14 = v13;
        v15 = v13 >> 5;
        if (v14 >= 0)
        {
          v16 = v15;
        }

        else
        {
          v16 = *(a1 + 12);
        }

        if (icu::UnicodeString::doCompare(a1, 0, v16, "f", 0, 1))
        {
          v17 = *(a1 + 8);
          v18 = v17;
          v19 = v17 >> 5;
          if (v18 >= 0)
          {
            v20 = v19;
          }

          else
          {
            v20 = *(a1 + 12);
          }

          if (icu::UnicodeString::doCompare(a1, 0, v20, "t", 0, 1))
          {
            v21 = *(a1 + 8);
            v22 = v21;
            v23 = v21 >> 5;
            if (v22 >= 0)
            {
              v24 = v23;
            }

            else
            {
              v24 = *(a1 + 12);
            }

            if (icu::UnicodeString::doCompare(a1, 0, v24, "e", 0, 1))
            {
              v25 = *(a1 + 8);
              v26 = v25;
              v27 = v25 >> 5;
              if (v26 >= 0)
              {
                v28 = v27;
              }

              else
              {
                v28 = *(a1 + 12);
              }

              if (icu::UnicodeString::doCompare(a1, 0, v28, "c", 0, 1))
              {
                v29 = *(a1 + 8);
                v30 = v29;
                v31 = v29 >> 5;
                if (v30 >= 0)
                {
                  v32 = v31;
                }

                else
                {
                  v32 = *(a1 + 12);
                }

                if (icu::UnicodeString::doCompare(a1, 0, v32, "v", 0, 1))
                {
                  v42[0] = "i";
                  if (sub_1951D0FDC(a1, v42, 2))
                  {
                    v41 = L"and";
                    if (sub_1951D0FDC(a1, &v41, 3))
                    {
                      v40 = L"in";
                      if (sub_1951D0FDC(a1, &v40, 2))
                      {
                        v39 = "w";
                        if (sub_1951D0FDC(a1, &v39, 6))
                        {
                          v38 = L"not";
                          if (sub_1951D0FDC(a1, &v38, 3))
                          {
                            v37 = L"mod";
                            if (sub_1951D0FDC(a1, &v37, 3))
                            {
                              v36 = L"or";
                              if (sub_1951D0FDC(a1, &v36, 2))
                              {
                                v35 = "d";
                                if (sub_1951D0FDC(a1, &v35, 7))
                                {
                                  v34 = "i";
                                  if (sub_1951D0FDC(a1, &v34, 7))
                                  {
                                    return 10;
                                  }

                                  else
                                  {
                                    return 29;
                                  }
                                }

                                else
                                {
                                  return 28;
                                }
                              }

                              else
                              {
                                return 12;
                              }
                            }

                            else
                            {
                              return 13;
                            }
                          }

                          else
                          {
                            return 14;
                          }
                        }

                        else
                        {
                          return 19;
                        }
                      }

                      else
                      {
                        return 15;
                      }
                    }

                    else
                    {
                      return 11;
                    }
                  }

                  else
                  {
                    return 20;
                  }
                }

                else
                {
                  return 24;
                }
              }

              else
              {
                return 27;
              }
            }

            else
            {
              return 26;
            }
          }

          else
          {
            return 25;
          }
        }

        else
        {
          return 23;
        }
      }

      else
      {
        return 22;
      }
    }

    else
    {
      return 21;
    }
  }

  return a2;
}

uint64_t sub_19539677C(int a1)
{
  if ((a1 - 48) < 0xA)
  {
    return 1;
  }

  if ((a1 - 97) < 0x1A)
  {
    return 10;
  }

  if (a1 <= 57)
  {
    if (a1 <= 36)
    {
      if (a1 == 32)
      {
        return 4;
      }

      if (a1 == 33)
      {
        return 17;
      }
    }

    else
    {
      switch(a1)
      {
        case '%':
          return 13;
        case ',':
          return 2;
        case '.':
          return 7;
      }
    }
  }

  else if (a1 > 63)
  {
    switch(a1)
    {
      case 64:
        return 6;
      case 126:
        return 18;
      case 8230:
        return 9;
    }
  }

  else
  {
    switch(a1)
    {
      case ':':
        return 5;
      case ';':
        return 3;
      case '=':
        return 16;
    }
  }

  return 0;
}

uint64_t sub_195396878(uint64_t a1, uint64_t a2, UErrorCode *a3)
{
  v6 = icu::StringEnumeration::StringEnumeration(a1);
  *v6 = &unk_1F0941100;
  *(v6 + 116) = 0;
  icu::UVector::UVector((v6 + 120), a3);
  if (*a3 <= 0)
  {
    icu::UVector::setDeleter((a1 + 120), uprv_deleteUObject);
    if (a2)
    {
      icu::UnicodeString::clone((a2 + 8));
    }

    operator new();
  }

  return a1;
}

uint64_t sub_1953969EC(_DWORD *a1, int *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  v2 = a1[29];
  if (v2 >= a1[32])
  {
    return 0;
  }

  a1[29] = v2 + 1;
  return icu::UVector::elementAt((a1 + 30), v2);
}

void sub_195396A30(uint64_t a1)
{
  *a1 = &unk_1F0941100;
  icu::UVector::~UVector((a1 + 120));

  icu::StringEnumeration::~StringEnumeration(a1);
}

void sub_195396A84(uint64_t a1)
{
  *a1 = &unk_1F0941100;
  icu::UVector::~UVector((a1 + 120));
  icu::StringEnumeration::~StringEnumeration(a1);

  JUMPOUT(0x19A8B2600);
}

icu::FixedDecimal *icu::FixedDecimal::FixedDecimal(icu::FixedDecimal *this, double a2, int a3, uint64_t a4, int a5, int a6)
{
  *this = &unk_1F0941168;
  *(this + 1) = &unk_1F09411A8;
  icu::FixedDecimal::init(this, a2, a3, a4, a5, a6);
  return this;
}

{
  *this = &unk_1F0941168;
  *(this + 1) = &unk_1F09411A8;
  icu::FixedDecimal::init(this, a2, a3, a4, a5, a6);
  return this;
}

BOOL icu::FixedDecimal::init(icu::FixedDecimal *this, double a2, int a3, uint64_t a4, int a5, int a6)
{
  *(this + 61) = a2 < 0.0;
  v11 = fabs(a2);
  *(this + 2) = v11;
  *(this + 62) = uprv_isNaN(v11);
  result = uprv_isInfinite(*(this + 2));
  *(this + 63) = result;
  if (a5)
  {
    v13 = a5;
  }

  else
  {
    v13 = a6;
  }

  *(this + 14) = v13;
  if (*(this + 62) | result || (v14 = *(this + 2), fabs(v14) > 9.22337204e18))
  {
    a4 = 0;
    *(this + 6) = 0;
    *(this + 60) = 0;
    *(this + 6) = 0;
    *(this + 4) = 0;
  }

  else
  {
    *(this + 6) = v14;
    *(this + 60) = v14 == v14;
    *(this + 6) = a3;
    *(this + 4) = a4;
    if (a4 && __ROR8__(0xCCCCCCCCCCCCCCCDLL * a4 + 0x1999999999999998, 1) <= 0x1999999999999998uLL)
    {
      do
      {
        a4 /= 10;
      }

      while (__ROR8__(0x1999999999999998 - 0x3333333333333333 * a4, 1) < 0x1999999999999999uLL);
    }
  }

  *(this + 5) = a4;
  return result;
}

icu::FixedDecimal *icu::FixedDecimal::FixedDecimal(icu::FixedDecimal *this, double a2, int a3, uint64_t a4, int a5)
{
  *this = &unk_1F0941168;
  *(this + 1) = &unk_1F09411A8;
  icu::FixedDecimal::init(this, a2, a3, a4, a5, a5);
  return this;
}

{
  *this = &unk_1F0941168;
  *(this + 1) = &unk_1F09411A8;
  icu::FixedDecimal::init(this, a2, a3, a4, a5, a5);
  return this;
}

icu::FixedDecimal *icu::FixedDecimal::FixedDecimal(icu::FixedDecimal *this, double a2, int a3, uint64_t a4)
{
  *this = &unk_1F0941168;
  *(this + 1) = &unk_1F09411A8;
  icu::FixedDecimal::init(this, a2, a3, a4, 0, 0);
  return this;
}

{
  *this = &unk_1F0941168;
  *(this + 1) = &unk_1F09411A8;
  icu::FixedDecimal::init(this, a2, a3, a4, 0, 0);
  return this;
}

icu::FixedDecimal *icu::FixedDecimal::FixedDecimal(icu::FixedDecimal *this, double a2, icu::FixedDecimal *a3)
{
  v3 = a3;
  *this = &unk_1F0941168;
  *(this + 1) = &unk_1F09411A8;
  FractionalDigits = icu::FixedDecimal::getFractionalDigits(a3, a2);
  icu::FixedDecimal::init(this, a2, v3, FractionalDigits, 0, 0);
  return this;
}

unint64_t icu::FixedDecimal::getFractionalDigits(icu::FixedDecimal *this, double a2)
{
  v2 = this;
  result = 0;
  if (!v2 || floor(a2) == a2)
  {
    return result;
  }

  if (uprv_isNaN(a2) || uprv_isPositiveInfinity(a2))
  {
    return 0;
  }

  v5 = fabs(a2);
  v6 = v5 - floor(v5);
  switch(v2)
  {
    case 3:
      v8 = 1000.0;
      return (v6 * v8 + 0.5);
    case 2:
      v8 = 100.0;
      return (v6 * v8 + 0.5);
    case 1:
      return (v6 * 10.0 + 0.5);
  }

  v9 = v6 * __exp10(v2) + 0.5;
  v10 = vcvtmd_s64_f64(v9);
  if (floor(v9) >= 9.22337204e18)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return v10;
  }
}

BOOL icu::FixedDecimal::init(icu::FixedDecimal *this, double a2)
{
  v4 = icu::FixedDecimal::decimals(this, a2);
  v5 = v4;
  FractionalDigits = icu::FixedDecimal::getFractionalDigits(v4, a2);

  return icu::FixedDecimal::init(this, a2, v5, FractionalDigits, 0, 0);
}

icu::FixedDecimal *icu::FixedDecimal::FixedDecimal(icu::FixedDecimal *this)
{
  *this = &unk_1F0941168;
  *(this + 1) = &unk_1F09411A8;
  icu::FixedDecimal::init(this, 0.0, 0, 0, 0, 0);
  return this;
}

{
  *this = &unk_1F0941168;
  *(this + 1) = &unk_1F09411A8;
  icu::FixedDecimal::init(this, 0.0, 0, 0, 0, 0);
  return this;
}

icu::FixedDecimal *icu::FixedDecimal::FixedDecimal(icu::FixedDecimal *this, const icu::UnicodeString *a2, UErrorCode *a3)
{
  v50 = *MEMORY[0x1E69E9840];
  *this = &unk_1F0941168;
  *(this + 1) = &unk_1F09411A8;
  memset(&v48[1], 0, 48);
  v49 = 0;
  v48[0] = &v48[1] + 5;
  LODWORD(v48[1]) = 40;
  v6 = *(a2 + 4);
  v7 = v6;
  v8 = v6 >> 5;
  if (v7 >= 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = *(a2 + 3);
  }

  v10 = icu::UnicodeString::doIndexOf(a2, 0x65u, 0, v9);
  if (v10 < 0)
  {
    v11 = *(a2 + 4);
    v12 = v11;
    v13 = v11 >> 5;
    if (v12 >= 0)
    {
      v14 = v13;
    }

    else
    {
      v14 = *(a2 + 3);
    }

    v10 = icu::UnicodeString::doIndexOf(a2, 0x45u, 0, v14);
  }

  v15 = *(a2 + 4);
  v16 = v15;
  v17 = v15 >> 5;
  if (v16 >= 0)
  {
    v18 = v17;
  }

  else
  {
    v18 = *(a2 + 3);
  }

  v19 = icu::UnicodeString::doIndexOf(a2, 0x63u, 0, v18);
  if (v19 < 0)
  {
    v23 = *(a2 + 4);
    v24 = v23;
    v25 = v23 >> 5;
    if (v24 >= 0)
    {
      v26 = v25;
    }

    else
    {
      v26 = *(a2 + 3);
    }

    v19 = icu::UnicodeString::doIndexOf(a2, 0x43u, 0, v26);
    if ((v10 & 0x80000000) == 0)
    {
      goto LABEL_14;
    }
  }

  else if ((v10 & 0x80000000) == 0)
  {
LABEL_14:
    icu::UnicodeString::tempSubString(a2, 0, v10, v46);
    icu::CharString::appendInvariantChars(v48, v46, a3);
    icu::UnicodeString::~UnicodeString(v20, v46);
    v22 = v10 + 1;
LABEL_21:
    LODWORD(v46[0]) = v22;
    v28 = icu::ICU_Utility::parseAsciiInteger(a2, v46, v21);
    v29 = 0;
    goto LABEL_22;
  }

  if ((v19 & 0x80000000) == 0)
  {
    icu::UnicodeString::tempSubString(a2, 0, v19, v46);
    icu::CharString::appendInvariantChars(v48, v46, a3);
    icu::UnicodeString::~UnicodeString(v27, v46);
    v22 = v19 + 1;
    goto LABEL_21;
  }

  icu::CharString::appendInvariantChars(v48, a2, a3);
  v28 = 0;
  v29 = 1;
LABEL_22:
  v47 = 0;
  memset(v46, 0, sizeof(v46));
  icu::number::impl::DecimalQuantity::DecimalQuantity(v46);
  icu::number::impl::DecimalQuantity::setToDecNumber(v46, v48[0], v49, a3);
  if (*a3 < 1)
  {
    v36 = *(a2 + 4);
    v37 = v36;
    v38 = v36 >> 5;
    if (v37 >= 0)
    {
      v39 = v38;
    }

    else
    {
      v39 = *(a2 + 3);
    }

    v40 = icu::UnicodeString::doIndexOf(a2, 0x2Eu, 0, v39);
    v30 = icu::number::impl::DecimalQuantity::toDouble(v46);
    v41 = v30;
    if (v40 == -1)
    {
      v31 = this;
      v32 = 0;
      FractionalDigits = 0;
    }

    else
    {
      if (v29)
      {
        if (*(a2 + 4) < 0)
        {
          v42 = *(a2 + 3);
        }

        else
        {
          v42 = *(a2 + 4) >> 5;
        }
      }

      else
      {
        v42 = v49;
      }

      v43 = ~v40;
      FractionalDigits = icu::FixedDecimal::getFractionalDigits((v42 + v43), v30);
      v32 = v42 + v43;
      v31 = this;
      v30 = v41;
    }

    v34 = v28;
    v35 = v28;
  }

  else
  {
    v30 = 0.0;
    v31 = this;
    v32 = 0;
    FractionalDigits = 0;
    v34 = 0;
    v35 = 0;
  }

  icu::FixedDecimal::init(v31, v30, v32, FractionalDigits, v34, v35);
  icu::number::impl::DecimalQuantity::~DecimalQuantity(v46);
  if (BYTE4(v48[1]))
  {
    free(v48[0]);
  }

  v44 = *MEMORY[0x1E69E9840];
  return this;
}

__n128 icu::FixedDecimal::FixedDecimal(__n128 *this, __n128 *a2)
{
  this->n128_u64[0] = &unk_1F0941168;
  this->n128_u64[1] = &unk_1F09411A8;
  this[1].n128_u64[0] = a2[1].n128_u64[0];
  this[1].n128_u32[2] = a2[1].n128_u32[2];
  result = a2[2];
  this[2] = result;
  this[3].n128_u64[0] = a2[3].n128_u64[0];
  this[3].n128_u32[2] = a2[3].n128_u32[2];
  this[3].n128_u32[3] = a2[3].n128_u32[3];
  return result;
}

void non-virtual thunk toicu::FixedDecimal::~FixedDecimal(icu::FixedDecimal *this)
{
  v1 = (this - 8);
  icu::UObject::~UObject(this);

  icu::IFixedDecimal::~IFixedDecimal(v1);
}

{
  icu::FixedDecimal::~FixedDecimal((this - 8));
}

BOOL icu::FixedDecimal::createWithExponent@<W0>(icu::FixedDecimal *this@<X0>, double a2@<D0>, int a3@<W1>, icu::FixedDecimal *a4@<X8>)
{
  v5 = this;
  FractionalDigits = icu::FixedDecimal::getFractionalDigits(this, a2);
  *a4 = &unk_1F0941168;
  *(a4 + 1) = &unk_1F09411A8;

  return icu::FixedDecimal::init(a4, a2, v5, FractionalDigits, a3, a3);
}

uint64_t icu::FixedDecimal::decimals(icu::FixedDecimal *this, double a2)
{
  result = 0;
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = fabs(a2);
  while (1)
  {
    v4 = v3 * dword_1954918E4[result];
    if (v4 == floor(v4))
    {
      break;
    }

    if (++result == 4)
    {
      *__str = 0;
      v10 = 0;
      *(v11 + 6) = 0;
      v11[0] = 0;
      snprintf(__str, 0x1EuLL, "%1.15e", v3);
      v5 = atoi(v11 + 2);
      if (LOBYTE(v11[0]) == 48)
      {
        v6 = 15;
        do
        {
          v7 = __str[v6--];
        }

        while (v7 == 48);
      }

      else
      {
        LODWORD(v6) = 15;
      }

      result = (v6 - v5);
      break;
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t icu::FixedDecimal::quickInit(icu::FixedDecimal *this, double a2)
{
  v3 = fabs(a2);
  if (v3 == floor(v3))
  {
    v4 = 0;
    v5 = 0;
LABEL_7:
    v7 = 1;
    if (!v5)
    {
      FractionalDigits = icu::FixedDecimal::getFractionalDigits(v4, v3);
      icu::FixedDecimal::init(this, v3, v4, FractionalDigits, 0, 0);
    }
  }

  else
  {
    v4 = 0;
    while (v4 != 3)
    {
      v6 = v3 * dword_1954918E4[v4 + 1];
      v4 = (v4 + 1);
      if (v6 == floor(v6))
      {
        v5 = v4 - 1 > 2;
        goto LABEL_7;
      }
    }

    return 0;
  }

  return v7;
}

uint64_t icu::FixedDecimal::adjustForMinFractionDigits(uint64_t this, int a2)
{
  v2 = a2 - *(this + 24);
  if (v2 >= 1)
  {
    v3 = *(this + 32);
    do
    {
      if (v3 > 0x16345785D89FFFFLL)
      {
        break;
      }

      v3 *= 10;
      *(this + 32) = v3;
      --v2;
    }

    while (v2);
    *(this + 24) = a2;
  }

  return this;
}

double icu::FixedDecimal::getPluralOperand(uint64_t a1, int a2)
{
  if (a2 > 2)
  {
    if (a2 > 5)
    {
      if (a2 == 6 || a2 == 7)
      {
        return *(a1 + 56);
      }

LABEL_23:
      abort();
    }

    if (a2 != 3)
    {
      if (a2 == 4)
      {
        return *(a1 + 24);
      }

      goto LABEL_23;
    }

    return *(a1 + 40);
  }

  if (a2)
  {
    if (a2 != 1)
    {
      if (a2 != 2)
      {
        goto LABEL_23;
      }

      return *(a1 + 32);
    }

    v5 = *(a1 + 56);
    if (v5)
    {
      return (__exp10(v5) * *(a1 + 48));
    }

    else
    {
      return *(a1 + 48);
    }
  }

  else
  {
    v7 = *(a1 + 56);
    v4 = *(a1 + 16);
    if (v7)
    {
      return __exp10(v7) * v4;
    }
  }

  return v4;
}

uint64_t icu::FixedDecimal::longValue(icu::FixedDecimal *this)
{
  v1 = *(this + 14);
  if (v1)
  {
    return (__exp10(v1) * *(this + 6));
  }

  else
  {
    return *(this + 6);
  }
}

uint64_t icu::FixedDecimal::toString@<X0>(icu::FixedDecimal *this@<X0>, uint64_t a2@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  *__str = 0;
  v10 = 0;
  v11 = 0;
  v3 = *(this + 6);
  v4 = *(this + 2);
  if (*(this + 14))
  {
    v8 = *(this + 14);
    snprintf(__str, 0x14uLL, "%.*fe%d");
  }

  else
  {
    v7 = *(this + 2);
    snprintf(__str, 0x14uLL, "%.*f");
  }

  result = icu::UnicodeString::UnicodeString(a2, __str, 0xFFFFFFFFLL, 0);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

double icu::FixedDecimal::doubleValue(icu::FixedDecimal *this)
{
  if (*(this + 61))
  {
    v1 = -*(this + 2);
  }

  else
  {
    v1 = *(this + 2);
  }

  return v1 * __exp10(*(this + 14));
}

icu::PluralAvailableLocalesEnumeration *icu::PluralAvailableLocalesEnumeration::PluralAvailableLocalesEnumeration(icu::PluralAvailableLocalesEnumeration *this, UErrorCode *a2)
{
  v4 = icu::StringEnumeration::StringEnumeration(this);
  *v4 = &unk_1F09411D0;
  *(v4 + 120) = 0;
  v5 = (v4 + 120);
  *(v4 + 128) = 0;
  v6 = *a2;
  *(v4 + 116) = *a2;
  v7 = (v4 + 116);
  if (v6 <= U_ZERO_ERROR)
  {
    *v7 = U_ZERO_ERROR;
    v8 = ures_openDirect(0, "plurals", v7);
    *v5 = ures_getByKey(v8, "locales", 0, v7);
    if (v8)
    {
      ures_close(v8);
    }
  }

  return this;
}

void icu::PluralAvailableLocalesEnumeration::~PluralAvailableLocalesEnumeration(icu::PluralAvailableLocalesEnumeration *this)
{
  *this = &unk_1F09411D0;
  ures_close(*(this + 15));
  ures_close(*(this + 16));
  *(this + 15) = 0;
  *(this + 16) = 0;

  icu::StringEnumeration::~StringEnumeration(this);
}

{
  icu::PluralAvailableLocalesEnumeration::~PluralAvailableLocalesEnumeration(this);

  JUMPOUT(0x19A8B2600);
}

const char *icu::PluralAvailableLocalesEnumeration::next(icu::PluralAvailableLocalesEnumeration *this, int *a2, UErrorCode *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  v6 = *(this + 29);
  if (v6 >= U_ILLEGAL_ARGUMENT_ERROR)
  {
    v3 = 0;
    *a3 = v6;
    return v3;
  }

  NextResource = ures_getNextResource(*(this + 15), *(this + 16), a3);
  *(this + 16) = NextResource;
  v10 = *a3;
  if (NextResource)
  {
    v11 = v10 < 1;
  }

  else
  {
    v11 = 0;
  }

  if (!v11)
  {
    if (v10 == 8)
    {
      v3 = 0;
      *a3 = U_ZERO_ERROR;
      return v3;
    }

    return 0;
  }

  Key = ures_getKey(NextResource);
  v3 = Key;
  if (a2)
  {
    *a2 = strlen(Key);
  }

  return v3;
}

uint64_t icu::PluralAvailableLocalesEnumeration::reset(uint64_t this, UErrorCode *a2)
{
  if (*a2 <= 0)
  {
    v2 = *(this + 116);
    if (v2 < U_ILLEGAL_ARGUMENT_ERROR)
    {
      return ures_resetIterator(*(this + 120));
    }

    else
    {
      *a2 = v2;
    }
  }

  return this;
}

uint64_t icu::PluralAvailableLocalesEnumeration::count(icu::PluralAvailableLocalesEnumeration *this, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  v2 = *(this + 29);
  if (v2 >= U_ILLEGAL_ARGUMENT_ERROR)
  {
    *a2 = v2;
    return 0;
  }

  return ures_getSize(*(this + 15));
}

uint64_t *sub_195397E14(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    if (*(v2 + 12))
    {
      free(*v2);
    }

    MEMORY[0x19A8B2600](v2, 0x1020C40B16F7C2DLL);
  }

  return a1;
}

void sub_195397E68(uint64_t a1)
{
  *a1 = &unk_1F0941330;
  icu::Locale::~Locale((a1 + 16));

  icu::CacheKeyBase::~CacheKeyBase(a1);
}

void sub_195397EBC(uint64_t a1)
{
  *a1 = &unk_1F0941330;
  icu::Locale::~Locale((a1 + 16));
  icu::CacheKeyBase::~CacheKeyBase(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_195397F24(uint64_t a1)
{
  v2 = strlen(("N3icu17SharedPluralRulesE" & 0x7FFFFFFFFFFFFFFFLL));
  v3 = ustr_hashCharsN(("N3icu17SharedPluralRulesE" & 0x7FFFFFFFFFFFFFFFLL), v2);
  return icu::Locale::hashCode((a1 + 16)) + 37 * v3;
}

char *sub_195397FEC(uint64_t a1, char *__dst, int a3)
{
  result = strncpy(__dst, *(a1 + 56), a3);
  __dst[a3 - 1] = 0;
  return result;
}

BOOL sub_195398028(void *a1, void *a2)
{
  result = sub_1952C1D2C(a1, a2);
  if (result)
  {

    return icu::Locale::operator==((a1 + 2), (a2 + 2));
  }

  return result;
}

uint64_t sub_195398084(uint64_t result, uint64_t a2, int a3, int a4)
{
  *result = &unk_1F09413B0;
  *(result + 8) = &unk_1F0941418;
  *(result + 16) = a2;
  *(result + 24) = a3;
  *(result + 28) = a4;
  return result;
}

void sub_1953980C8(void *a1)
{
  *a1 = &unk_1F09413B0;
  v2 = (a1 + 1);
  a1[1] = &unk_1F0941418;
  v3 = a1[2];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  icu::UnicodeMatcher::~UnicodeMatcher(v2);

  icu::UnicodeFunctor::~UnicodeFunctor(a1);
}

void sub_195398178(void *a1)
{
  sub_1953980C8(a1);

  JUMPOUT(0x19A8B2600);
}

void sub_1953981B0(uint64_t a1)
{
  sub_1953980C8((a1 - 8));

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_19539829C(uint64_t a1)
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

uint64_t sub_1953982AC(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  v11 = *a3;
  v12 = *a3;
  while (1)
  {
    v13 = v12;
    if (v10 >= *(a1 + 28))
    {
LABEL_5:
      if (!a5)
      {
        goto LABEL_11;
      }

      goto LABEL_6;
    }

    v14 = (*(**(a1 + 16) + 32))(*(a1 + 16));
    result = (*(*v14 + 16))(v14, a2, a3, a4, a5);
    if (result != 2)
    {
      break;
    }

    ++v10;
    v12 = *a3;
    if (v13 == *a3)
    {
      goto LABEL_5;
    }
  }

  if (!a5 || result != 1)
  {
    v13 = *a3;
    if (!a5)
    {
LABEL_11:
      if (v10 >= *(a1 + 24))
      {
        return 2;
      }

      result = 0;
      *a3 = v11;
      return result;
    }

LABEL_6:
    if (v13 == a4)
    {
      return 1;
    }

    goto LABEL_11;
  }

  return result;
}

icu::ICU_Utility *sub_1953983D0(uint64_t a1, icu::UnicodeString *this, uint64_t a3)
{
  v4 = this;
  v6 = *(this + 4);
  if (v6)
  {
    icu::UnicodeString::unBogus(this);
  }

  else
  {
    if ((v6 & 0x8000u) == 0)
    {
      v7 = v6 >> 5;
    }

    else
    {
      v7 = *(this + 3);
    }

    if (v7)
    {
      *(this + 4) &= 0x1Eu;
    }
  }

  v8 = (*(**(a1 + 16) + 32))(*(a1 + 16));
  (*(*v8 + 24))(v8, v4, a3);
  v9 = *(a1 + 24);
  if (v9 == 1)
  {
    if (*(a1 + 28) == 0x7FFFFFFF)
    {
      v16 = 43;
      v11 = &v16;
      return icu::UnicodeString::doAppend(v4, v11, 0, 1);
    }
  }

  else if (!v9)
  {
    v10 = *(a1 + 28);
    if (v10 == 0x7FFFFFFF)
    {
      v15 = 42;
      v11 = &v15;
      return icu::UnicodeString::doAppend(v4, v11, 0, 1);
    }

    if (v10 == 1)
    {
      v14 = 63;
      v11 = &v14;
      return icu::UnicodeString::doAppend(v4, v11, 0, 1);
    }
  }

  v17 = 123;
  icu::UnicodeString::doAppend(v4, &v17, 0, 1);
  icu::ICU_Utility::appendNumber(v4, *(a1 + 24), 0xAu, 1);
  v18 = 44;
  icu::UnicodeString::doAppend(v4, &v18, 0, 1);
  v12 = *(a1 + 28);
  if (v12 != 0x7FFFFFFF)
  {
    icu::ICU_Utility::appendNumber(v4, v12, 0xAu, 1);
  }

  v19 = 125;
  icu::UnicodeString::doAppend(v4, &v19, 0, 1);
  return v4;
}

BOOL sub_1953985A0(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 24))
  {
    return 1;
  }

  v3 = (*(**(a1 + 16) + 32))(*(a1 + 16));
  return (*(*v3 + 32))(v3, a2) != 0;
}

uint64_t sub_195398634(uint64_t result)
{
  if (*(result + 28))
  {
    v1 = *(*(*(**(result + 16) + 32))(*(result + 16)) + 40);

    return v1();
  }

  return result;
}

double icu::QuantityFormatter::QuantityFormatter(icu::QuantityFormatter *this)
{
  result = 0.0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

{
  result = 0.0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

uint64_t icu::QuantityFormatter::QuantityFormatter(uint64_t this, const icu::QuantityFormatter *a2)
{
  for (i = 0; i != 64; i += 8)
  {
    if (*(a2 + i))
    {
      operator new();
    }

    *(this + i) = 0;
  }

  return this;
}

uint64_t icu::QuantityFormatter::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    for (i = 0; i != 64; i += 8)
    {
      v5 = *(a1 + i);
      if (v5)
      {
        icu::SimpleFormatter::~SimpleFormatter(v5);
        MEMORY[0x19A8B2600]();
      }

      if (*(a2 + i))
      {
        operator new();
      }

      *(a1 + i) = 0;
    }
  }

  return a1;
}

void icu::QuantityFormatter::~QuantityFormatter(icu::QuantityFormatter *this)
{
  for (i = 0; i != 64; i += 8)
  {
    v3 = *(this + i);
    if (v3)
    {
      icu::SimpleFormatter::~SimpleFormatter(v3);
      MEMORY[0x19A8B2600]();
    }
  }
}

icu::SimpleFormatter *icu::QuantityFormatter::reset(icu::QuantityFormatter *this)
{
  for (i = 0; i != 64; i += 8)
  {
    result = *(this + i);
    if (result)
    {
      icu::SimpleFormatter::~SimpleFormatter(result);
      result = MEMORY[0x19A8B2600]();
    }

    *(this + i) = 0;
  }

  return result;
}

uint64_t icu::QuantityFormatter::addIfAbsent(icu::QuantityFormatter *this, icu::StandardPlural *a2, UErrorCode *a3, UErrorCode *a4)
{
  v6 = icu::StandardPlural::indexFromString(a2, a4, a3);
  if (*a4 > 0)
  {
    return 0;
  }

  if (!*(this + v6))
  {
    operator new();
  }

  return 1;
}

uint64_t icu::QuantityFormatter::getByVariant(icu::QuantityFormatter *this, icu::StandardPlural *a2)
{
  v3 = icu::StandardPlural::indexOrNegativeFromString(a2, a2);
  if (v3 < 0)
  {
    v4 = 5;
  }

  else
  {
    v4 = v3;
  }

  result = *(this + v4);
  if (!result)
  {
    return *(this + 5);
  }

  return result;
}

icu::UnicodeString *icu::QuantityFormatter::format(icu::QuantityFormatter *this, const icu::Formattable *a2, char **a3, const icu::PluralRules *a4, icu::UnicodeString *a5, icu::FieldPosition *a6, UErrorCode *a7)
{
  v22 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v21 = 0;
  v20 = 0u;
  v17 = &unk_1F0935D00;
  LOWORD(v18) = 2;
  v11 = icu::QuantityFormatter::selectPlural(a2, a3, a4, &v17, a6, a7, a7);
  v13 = *a7;
  if (v13 <= 0)
  {
    v14 = *(this + v11);
    if (v14 || (v14 = *(this + 5)) != 0)
    {
      icu::QuantityFormatter::format(v14, &v17, a5, a6, a7, v12);
    }

    else
    {
      v13 = 27;
      *a7 = U_INVALID_STATE_ERROR;
    }
  }

  icu::UnicodeString::~UnicodeString(v13, &v17);
  v15 = *MEMORY[0x1E69E9840];
  return a5;
}

uint64_t icu::QuantityFormatter::selectPlural(icu::QuantityFormatter *this, char **lpsrc, const icu::NumberFormat *a3, const icu::PluralRules *a4, icu::UnicodeString *a5, UErrorCode *a6, UErrorCode *a7)
{
  v33 = *MEMORY[0x1E69E9840];
  if (*a6 <= 0)
  {
    v29 = 0u;
    v32 = 0;
    v31 = 0u;
    v30 = 0u;
    v28 = &unk_1F0935D00;
    LOWORD(v29) = 2;
    v14 = **lpsrc;
    if (v15)
    {
      v16 = v15;
      v27 = 0;
      memset(v26, 0, sizeof(v26));
      icu::number::impl::DecimalQuantity::DecimalQuantity(v26);
      icu::DecimalFormat::formatToDecimalQuantity(v16, this, v26, a6);
      if (*a6 > 0)
      {
        icu::number::impl::DecimalQuantity::~DecimalQuantity(v26);
LABEL_6:
        v7 = 5;
LABEL_17:
        icu::UnicodeString::~UnicodeString(v17, &v28);
        goto LABEL_18;
      }

      icu::PluralRules::select(a3, v26, v25);
      icu::UnicodeString::operator=(&v28, v25);
      icu::UnicodeString::~UnicodeString(v19, v25);
      (*(*v16 + 40))(v16, this, a4, a5, a6);
      icu::number::impl::DecimalQuantity::~DecimalQuantity(v26);
LABEL_14:
      v22 = icu::StandardPlural::indexOrNegativeFromString(&v28, v20);
      v17 = 5;
      if (v22 < 0)
      {
        v7 = 5;
      }

      else
      {
        v7 = v22;
      }

      goto LABEL_17;
    }

    if (icu::Formattable::getType(this) == 1)
    {
      v18 = *(this + 1);
    }

    else
    {
      if (icu::Formattable::getType(this) == 2)
      {
        icu::PluralRules::select(a3, *(this + 2), v26);
        goto LABEL_13;
      }

      if (icu::Formattable::getType(this) != 5)
      {
        v17 = 1;
        *a6 = U_ILLEGAL_ARGUMENT_ERROR;
        goto LABEL_6;
      }

      v18 = *(this + 1);
    }

    icu::PluralRules::select(a3, v18, v26);
LABEL_13:
    icu::UnicodeString::operator=(&v28, v26);
    icu::UnicodeString::~UnicodeString(v21, v26);
    (*(*lpsrc + 5))(lpsrc, this, a4, a5, a6);
    goto LABEL_14;
  }

  v7 = 5;
LABEL_18:
  v23 = *MEMORY[0x1E69E9840];
  return v7;
}

const icu::UnicodeString *icu::QuantityFormatter::format(icu::QuantityFormatter *this, const icu::SimpleFormatter *a2, const icu::UnicodeString *a3, icu::UnicodeString *a4, UErrorCode *a5, UErrorCode *a6)
{
  if (*a5 <= 0)
  {
    v13 = a2;
    __b = 0;
    icu::SimpleFormatter::formatAndAppend(this, &v13, 1u, a3, &__b, 1, a5);
    v8 = *(a4 + 4);
    if (*(a4 + 12))
    {
      v9 = __b;
      if (__b < 0)
      {
        v10 = 0;
        *(a4 + 3) = 0;
      }

      else
      {
        *(a4 + 3) += __b;
        v10 = v8 + v9;
      }

      *(a4 + 4) = v10;
    }
  }

  return a3;
}

void *icu::QuantityFormatter::formatAndSelect(char **a1, icu::PluralRules *a2, uint64_t a3, _DWORD *a4, UErrorCode *a5, double a6)
{
  v39 = *MEMORY[0x1E69E9840];
  v35 = 0u;
  v38 = 0;
  v37 = 0u;
  v36 = 0u;
  v34 = &unk_1F0935D00;
  LOWORD(v35) = 2;
  v12 = **a1;
  if (v13)
  {
    v14 = v13;
    v33 = 0;
    memset(v32, 0, sizeof(v32));
    memset(v31, 0, sizeof(v31));
    sub_1952FDFB0(v31);
    icu::number::impl::DecimalQuantity::setToDouble(v32, a6);
    v15 = icu::DecimalFormat::toNumberFormatter(v14, a5);
    if (*a5 > 0 || (icu::number::LocalizedNumberFormatter::formatImpl(v15, v31, a5), *a5 > 0))
    {
      icu::number::impl::UFormattedNumberData::~UFormattedNumberData(v31);
      goto LABEL_14;
    }

    icu::FormattedStringBuilder::operator=(a3, v31 + 8);
    icu::PluralRules::select(a2, v32, &v26);
    icu::UnicodeString::operator=(&v34, &v26);
    icu::UnicodeString::~UnicodeString(v19, &v26);
    icu::number::impl::UFormattedNumberData::~UFormattedNumberData(v31);
  }

  else
  {
    v27 = 0u;
    v30 = 0;
    v29 = 0u;
    v28 = 0u;
    v26 = &unk_1F0935D00;
    LOWORD(v27) = 2;
    icu::Formattable::Formattable(v31, a6);
    icu::Format::format(a1, v31, &v26, a5);
    icu::Formattable::~Formattable(v17, v31);
    v18 = *a5;
    if (v18 > 0 || (icu::FormattedStringBuilder::insert(a3, *(a3 + 132), &v26, 1, 0, a5), v18 = *a5, v18 > 0))
    {
      icu::UnicodeString::~UnicodeString(v18, &v26);
      goto LABEL_14;
    }

    icu::PluralRules::select(a2, a6, v31);
    icu::UnicodeString::operator=(&v34, v31);
    icu::UnicodeString::~UnicodeString(v21, v31);
    icu::UnicodeString::~UnicodeString(v22, &v26);
  }

  v23 = icu::StandardPlural::indexOrNegativeFromString(&v34, v20);
  if (v23 < 0)
  {
    v16 = 5;
  }

  else
  {
    v16 = v23;
  }

  *a4 = v16;
LABEL_14:
  result = icu::UnicodeString::~UnicodeString(v16, &v34);
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_195399164(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a1 != a2)
  {
    v4 = (*(*a1 + 24))(a1);
    if (v4 != (*(*a2 + 24))(a2))
    {
      return 0;
    }

    if (v4 >= 1)
    {
      v5 = 0;
      do
      {
        v6 = (*(*a1 + 32))(a1, v5);
        v7 = (*(*a2 + 32))(a2, v5);
        if (v7 != v6)
        {
          v8 = !v6 || v7 == 0;
          if (v8 || u_strcmp(v6, v7))
          {
            return 0;
          }
        }

        v5 = (v5 + 1);
      }

      while (v4 != v5);
    }

    v9 = (*(*a1 + 40))(a1);
    if (v9 != (*(*a2 + 40))(a2))
    {
      return 0;
    }

    if (v9 >= 1)
    {
      v10 = 0;
      while (1)
      {
        v11 = (*(*a1 + 48))(a1, v10);
        v12 = (*(*a2 + 64))(a2, v11);
        v13 = (*(*a2 + 48))(a2, v12);
        if (v13 != v11)
        {
          v14 = !v11 || v13 == 0;
          if (v14 || u_strcmp(v11, v13))
          {
            return 0;
          }
        }

        if (v4 >= 1)
        {
          v15 = 0;
          do
          {
            v16 = (*(*a1 + 56))(a1, v10, v15);
            v17 = (*(*a2 + 56))(a2, v12, v15);
            if (v17 != v16)
            {
              v18 = !v16 || v17 == 0;
              if (v18 || u_strcmp(v16, v17))
              {
                return 0;
              }
            }

            v15 = (v15 + 1);
          }

          while (v4 != v15);
        }

        v10 = (v10 + 1);
        result = 1;
        if (v10 == v9)
        {
          return result;
        }
      }
    }
  }

  return 1;
}

uint64_t sub_195399484(uint64_t a1, const UChar *a2)
{
  if ((*(*a1 + 40))(a1) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = 0;
  while (1)
  {
    v5 = (*(*a1 + 48))(a1, v4);
    if (v5 == a2)
    {
      break;
    }

    if (a2)
    {
      v6 = v5;
      if (v5)
      {
        if (!u_strcmp(a2, v5))
        {
          break;
        }
      }
    }

    v4 = (v4 + 1);
    if (v4 >= (*(*a1 + 40))(a1, v6))
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v4;
}

uint64_t sub_195399568(uint64_t a1, const UChar *a2)
{
  if (!a2 || (*(*a1 + 24))(a1) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = 0;
  while (1)
  {
    v5 = (*(*a1 + 32))(a1, v4);
    if (v5 == a2)
    {
      break;
    }

    v6 = v5;
    if (v5)
    {
      if (!u_strcmp(a2, v5))
      {
        break;
      }
    }

    v4 = (v4 + 1);
    if (v4 >= (*(*a1 + 24))(a1, v6))
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v4;
}

uint64_t sub_19539964C(uint64_t a1, char *a2, int a3)
{
  v3 = *(a1 + 40);
  if (*v3 >= 1)
  {
    if (!a2)
    {
      return 0;
    }

LABEL_3:
    free(a2);
    return 0;
  }

  v4 = *(a1 + 32);
  *v4 = 0xFFFFFFFF00000000;
  *(v4 + 40) = 0;
  *(v4 + 8) = 0;
  if (!a2)
  {
    *v3 = 1;
    return 0;
  }

  if (a3 <= 0)
  {
    *v3 = 1;
    goto LABEL_3;
  }

  *a1 = a2;
  *(a1 + 8) = &a2[2 * a3];
  *(a1 + 16) = a2;
  *(a1 + 24) = -1;

  return sub_1953996E4(a1);
}

uint64_t sub_1953996E4(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 < v3)
  {
    v4 = *(a1 + 24);
    do
    {
      if (v4 == 0xFFFF)
      {
        v4 = *v2;
      }

      isWhiteSpace = icu::PatternProps::isWhiteSpace(v4);
      v3 = *(a1 + 8);
      v2 = *(a1 + 16);
      if (!isWhiteSpace)
      {
        break;
      }

      *(a1 + 16) = ++v2;
      v4 = 0xFFFFLL;
      *(a1 + 24) = -1;
    }

    while (v2 < v3);
  }

  if (v2 < v3 && (*(a1 + 24) == 60 || *v2 == 60))
  {
    *(a1 + 16) = v2 + 1;
    *(a1 + 24) = -1;
    v20 = 0;
    v21 = 0;
    v22 = j__free_2;
    v19 = -1;
    while (1)
    {
      v6 = sub_195399ABC(a1, &v19);
      v8 = *(a1 + 8);
      v7 = *(a1 + 16);
      if (v7 < v8)
      {
        v9 = *(a1 + 24);
        do
        {
          if (v9 == 0xFFFF)
          {
            v9 = *v7;
          }

          v10 = icu::PatternProps::isWhiteSpace(v9);
          v8 = *(a1 + 8);
          v7 = *(a1 + 16);
          if (!v10)
          {
            break;
          }

          *(a1 + 16) = ++v7;
          v9 = 0xFFFFLL;
          *(a1 + 24) = -1;
        }

        while (v7 < v8);
      }

      if (v7 >= v8)
      {
        break;
      }

      if (*(a1 + 24) == 44)
      {
        v11 = 1;
        if (!v6)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v11 = *v7 == 44;
        if (!v6)
        {
LABEL_26:
          if (!v11)
          {
            goto LABEL_27;
          }

          goto LABEL_44;
        }
      }

      sub_195399D44(&v20, v6, *(a1 + 40));
      if (!v11)
      {
        goto LABEL_27;
      }

      *(a1 + 16) += 2;
      *(a1 + 24) = -1;
    }

    if (v6)
    {
      sub_195399D44(&v20, v6, *(a1 + 40));
    }

LABEL_27:
    v12 = *(a1 + 8);
    v13 = *(a1 + 16);
    if (v13 < v12)
    {
      v14 = *(a1 + 24);
      do
      {
        if (v14 == 0xFFFF)
        {
          v14 = *v13;
        }

        v15 = icu::PatternProps::isWhiteSpace(v14);
        v12 = *(a1 + 8);
        v13 = *(a1 + 16);
        if (!v15)
        {
          break;
        }

        *(a1 + 16) = ++v13;
        v14 = 0xFFFFLL;
        *(a1 + 24) = -1;
      }

      while (v13 < v12);
    }

    if (v13 >= v12 || *(a1 + 24) != 62 && *v13 != 62)
    {
      goto LABEL_44;
    }

    v16 = v13 + 1;
    for (*(a1 + 16) = v16; ; *(a1 + 16) = v16)
    {
      *(a1 + 24) = -1;
      if (v16 >= v12)
      {
        break;
      }

      v17 = icu::PatternProps::isWhiteSpace(*v16);
      v12 = *(a1 + 8);
      v16 = *(a1 + 16);
      if (!v17)
      {
        break;
      }

      ++v16;
    }

    if (v16 != v12)
    {
LABEL_44:
      sub_1953999C8(a1);
      sub_19539E150(&v20);
      return 0;
    }

    sub_195399D44(&v20, 0, *(a1 + 40));
    if (**(a1 + 40) <= 0)
    {
      v20 = 0;
      v21 = 0;
      operator new();
    }

    sub_19539E150(&v20);
  }

  sub_1953999C8(a1);
  return 0;
}

void sub_1953999C8(uint64_t a1)
{
  if (*a1)
  {
    v2 = *(a1 + 16);
    if ((v2 - 34) >= *a1)
    {
      v3 = (v2 - 34);
    }

    else
    {
      v3 = *a1;
    }

    v4 = (v2 - 2);
    while (v4 >= v3)
    {
      if (!*v4--)
      {
        v3 = v4 + 2;
        break;
      }
    }

    if ((v2 + 30) <= *(a1 + 8))
    {
      v6 = v2 + 30;
    }

    else
    {
      v6 = *(a1 + 8);
    }

    u_strncpy((*(a1 + 32) + 8), v3, (v2 - v3) >> 1);
    v7 = *(a1 + 32);
    v8 = *(a1 + 16);
    *(v7 + v8 - v3 + 8) = 0;
    u_strncpy((v7 + 40), v8, (v6 - v8) >> 1);
    v9 = *(a1 + 32);
    v10 = *(a1 + 16);
    *(v9 + v6 - v10 + 40) = 0;
    v11 = *a1;
    *(v9 + 4) = (v10 - *a1) >> 1;
    free(v11);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    v12 = *(a1 + 40);
    if (*v12 <= 0)
    {
      *v12 = 9;
    }
  }
}

uint64_t sub_195399ABC(uint64_t a1, _DWORD *a2)
{
  if (**(a1 + 40) > 0)
  {
    return 0;
  }

  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v4 < v5)
  {
    v6 = *(a1 + 24);
    do
    {
      if (v6 == 0xFFFF)
      {
        v6 = *v4;
      }

      isWhiteSpace = icu::PatternProps::isWhiteSpace(v6);
      v5 = *(a1 + 8);
      v4 = *(a1 + 16);
      if (!isWhiteSpace)
      {
        break;
      }

      *(a1 + 16) = ++v4;
      v6 = 0xFFFFLL;
      *(a1 + 24) = -1;
    }

    while (v4 < v5);
  }

  if (v4 >= v5 || *(a1 + 24) != 60 && *v4 != 60)
  {
    sub_1953999C8(a1);
    return 0;
  }

  *(a1 + 16) = v4 + 1;
  *(a1 + 24) = -1;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  while (1)
  {
    v8 = sub_195399E24(a1);
    v10 = *(a1 + 8);
    v9 = *(a1 + 16);
    if (v9 < v10)
    {
      v11 = *(a1 + 24);
      do
      {
        if (v11 == 0xFFFF)
        {
          v11 = *v9;
        }

        v12 = icu::PatternProps::isWhiteSpace(v11);
        v10 = *(a1 + 8);
        v9 = *(a1 + 16);
        if (!v12)
        {
          break;
        }

        *(a1 + 16) = ++v9;
        v11 = 0xFFFFLL;
        *(a1 + 24) = -1;
      }

      while (v9 < v10);
    }

    if (v9 >= v10)
    {
      break;
    }

    if (*(a1 + 24) == 44)
    {
      v13 = 1;
      if (!v8)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v13 = *v9 == 44;
      if (!v8)
      {
LABEL_30:
        if (!v13)
        {
          goto LABEL_31;
        }

        goto LABEL_44;
      }
    }

    sub_195399D44(&v21, v8, *(a1 + 40));
    if (!v13)
    {
      goto LABEL_31;
    }

    *(a1 + 16) += 2;
    *(a1 + 24) = -1;
  }

  if (v8)
  {
    sub_195399D44(&v21, v8, *(a1 + 40));
  }

LABEL_31:
  v17 = *(a1 + 8);
  v16 = *(a1 + 16);
  if (v16 < v17)
  {
    v18 = *(a1 + 24);
    do
    {
      if (v18 == 0xFFFF)
      {
        v18 = *v16;
      }

      v19 = icu::PatternProps::isWhiteSpace(v18);
      v17 = *(a1 + 8);
      v16 = *(a1 + 16);
      if (!v19)
      {
        break;
      }

      *(a1 + 16) = ++v16;
      v18 = 0xFFFFLL;
      *(a1 + 24) = -1;
    }

    while (v16 < v17);
  }

  if (v16 >= v17 || *(a1 + 24) != 62 && *v16 != 62 || (*(a1 + 16) = v16 + 1, *(a1 + 24) = -1, sub_195399D44(&v21, 0, *(a1 + 40)), v20 = *(a1 + 40), *v20 > 0))
  {
LABEL_44:
    sub_1953999C8(a1);
    v14 = 0;
    goto LABEL_45;
  }

  if (*a2 == -1)
  {
    *a2 = HIDWORD(v22) + 1;
  }

  else if (HIDWORD(v22) != *a2)
  {
    *v20 = 1;
    goto LABEL_44;
  }

  v14 = v21;
  v21 = 0;
  v22 = 0;
LABEL_45:
  sub_19539E150(&v21);
  return v14;
}

void sub_195399D44(uint64_t a1, uint64_t a2, int *a3)
{
  if (*a3 <= 0)
  {
    v5 = *(a1 + 12);
    if (v5 != *(a1 + 8))
    {
LABEL_13:
      v11 = *a1;
      *(a1 + 12) = v5 + 1;
      v11[v5] = a2;
      return;
    }

    v7 = v5 + 256;
    if (v5 <= 255)
    {
      v7 = 2 * v5;
    }

    if (v5)
    {
      v8 = v7;
    }

    else
    {
      v8 = 1;
    }

    *(a1 + 8) = v8;
    v9 = *a1;
    if (*a1)
    {
      v10 = malloc_type_realloc(v9, 8 * v8, 0x80040B8603338uLL);
    }

    else
    {
      v10 = malloc_type_malloc(8 * v8, 0x80040B8603338uLL);
    }

    *a1 = v10;
    if (v10)
    {
      bzero(&v10[8 * *(a1 + 12)], 8 * (*(a1 + 8) - *(a1 + 12)));
      v5 = *(a1 + 12);
      goto LABEL_13;
    }

    *a3 = 7;
  }
}

unsigned __int16 *sub_195399E24(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 < v2)
  {
    v4 = *(a1 + 24);
    do
    {
      if (v4 == 0xFFFF)
      {
        v4 = *v3;
      }

      isWhiteSpace = icu::PatternProps::isWhiteSpace(v4);
      v2 = *(a1 + 8);
      v3 = *(a1 + 16);
      if (!isWhiteSpace)
      {
        break;
      }

      *(a1 + 16) = ++v3;
      v4 = 0xFFFFLL;
      *(a1 + 24) = -1;
    }

    while (v3 < v2);
  }

  if (v3 >= v2)
  {
    return 0;
  }

  v6 = *v3;
  if (v6 == 39 || v6 == 34)
  {
    *(a1 + 16) = ++v3;
    *(a1 + 24) = -1;
    if (v6 == 34)
    {
      v7 = "";
    }

    else
    {
      v7 = "'";
    }
  }

  else
  {
    v7 = L" ,><'";
  }

  v8 = v3;
  if (v3 < v2)
  {
    v9 = *v7;
    v8 = v3;
    while (1)
    {
      v10 = *v8;
      v11 = v7;
      if (v9 == 32)
      {
        v12 = icu::PatternProps::isWhiteSpace(*v8);
        v11 = v7;
        if (v12)
        {
          break;
        }
      }

      do
      {
        v14 = *v11;
        v11 += 2;
        v13 = v14;
        if (v14)
        {
          v15 = v13 == v10;
        }

        else
        {
          v15 = 1;
        }
      }

      while (!v15);
      v8 = *(a1 + 16);
      if (v13 != v10)
      {
        *(a1 + 16) = ++v8;
        if (v8 < *(a1 + 8))
        {
          continue;
        }
      }

      goto LABEL_27;
    }

    v8 = *(a1 + 16);
LABEL_27:
    v2 = *(a1 + 8);
  }

  if (v8 == v2)
  {
    goto LABEL_41;
  }

  v16 = *v8;
  if (v8 <= v3)
  {
    result = 0;
  }

  else
  {
    *(a1 + 24) = v16;
    *v8 = 0;
    result = v3;
  }

  if (v6 == 39 || v6 == 34)
  {
    if (v16 == v6 && v8 != v3)
    {
      *(a1 + 16) = v8 + 1;
      *(a1 + 24) = -1;
      return result;
    }

    goto LABEL_41;
  }

  v18 = v16 > 0x3C;
  v19 = (1 << v16) & 0x1000008400000000;
  if (!v18 && v19 != 0)
  {
LABEL_41:
    sub_1953999C8(a1);
    return 0;
  }

  return result;
}

UChar *sub_195399FE0(uint64_t a1, uint64_t a2, int *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  v18[7] = v3;
  v18[8] = v4;
  v7 = *(a1 + 8);
  v8 = v7;
  v9 = v7 >> 5;
  if (v8 >= 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = *(a1 + 12);
  }

  if (!v10)
  {
    return 0;
  }

  result = malloc_type_malloc(2 * v10, 0x1000040BDFB0063uLL);
  if (result)
  {
    v13 = result;
    v18[0] = result;
    icu::UnicodeString::extract(a1, v18, v10, a3);
    if (*a3 <= 0)
    {
      *a3 = 0;
    }

    v14 = 0u;
    v15 = 0u;
    WORD4(v15) = -1;
    v16 = a2;
    v17 = a3;
    return sub_19539964C(&v14, v13, v10);
  }

  else
  {
    *a3 = 7;
  }

  return result;
}

void *sub_19539A0E0(void *a1)
{
  *a1 = &unk_1F0941490;
  v2 = a1[3];
  v3 = *v2;
  if (!*v2)
  {
    goto LABEL_5;
  }

  v4 = v2 + 1;
  do
  {
    free(v3);
    v5 = *v4++;
    v3 = v5;
  }

  while (v5);
  v2 = a1[3];
  if (v2)
  {
LABEL_5:
    free(v2);
  }

  v6 = a1[2];
  if (v6)
  {
    free(v6);
  }

  return a1;
}

void sub_19539A15C(void *a1)
{
  sub_19539A0E0(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_19539A194(void **a1, int a2)
{
  if (a2 < 0)
  {
    return 0;
  }

  if (((*a1)[3])(a1) <= a2)
  {
    return 0;
  }

  return *(*a1[3] + 8 * a2);
}

uint64_t sub_19539A208(void *a1, int a2)
{
  if (a2 < 0)
  {
    return 0;
  }

  if ((*(*a1 + 40))(a1) <= a2)
  {
    return 0;
  }

  return **(a1[3] + 8 * a2 + 8);
}

uint64_t sub_19539A280(void *a1, unsigned int a2, int a3)
{
  if ((a2 & 0x80000000) != 0)
  {
    return 0;
  }

  v6 = (*(*a1 + 40))(a1);
  result = 0;
  if ((a3 & 0x80000000) == 0 && v6 > a2)
  {
    if ((*(*a1 + 24))(a1) <= a3)
    {
      return 0;
    }

    else
    {
      return *(*(a1[3] + 8 * a2 + 8) + 8 * a3 + 8);
    }
  }

  return result;
}

icu::RuleBasedNumberFormat *icu::RuleBasedNumberFormat::RuleBasedNumberFormat(icu::RuleBasedNumberFormat *this, UChar **a2, const icu::UnicodeString *a3, const icu::Locale *a4, UParseError *a5, UErrorCode *a6)
{
  icu::NumberFormat::NumberFormat(this);
  *v12 = &unk_1F09414F0;
  *(v12 + 384) = 0;
  *(v12 + 360) = 0u;
  *(v12 + 376) = 0;
  icu::Locale::Locale((v12 + 392), a4);
  *(this + 616) = 0u;
  *(this + 632) = 0u;
  *(this + 162) = 7;
  *(this + 652) = 0;
  *(this + 41) = 0u;
  *(this + 84) = &unk_1F0935D00;
  *(this + 340) = 2;
  *(this + 368) = 0;
  *(this + 738) = 0;
  *(this + 93) = 0;
  v13 = sub_195399FE0(a3, a5, a6);
  icu::RuleBasedNumberFormat::init(this, a2, v13, a5, a6);
  return this;
}

icu::RuleBasedNumberFormat *icu::RuleBasedNumberFormat::init(icu::RuleBasedNumberFormat *result, UChar **a2, uint64_t a3, uint64_t a4, UErrorCode *a5)
{
  v47 = *MEMORY[0x1E69E9840];
  *(a4 + 64) = 0;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  if (*a5 <= 0)
  {
    v8 = result;
    icu::RuleBasedNumberFormat::initializeDecimalFormatSymbols(result, a5);
    icu::RuleBasedNumberFormat::initializeDefaultInfinityRule(v8, a5);
    result = icu::RuleBasedNumberFormat::initializeDefaultNaNRule(v8, a5);
    if (*a5 <= 0)
    {
      if (a3)
      {
        ++*(a3 + 8);
      }

      *(v8 + 83) = a3;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v9 = icu::UnicodeString::UnicodeString(&v43, a2);
      v10 = WORD4(v43) >> 5;
      if (SWORD4(v43) < 0)
      {
        v10 = HIDWORD(v43);
      }

      if (!v10)
      {
        goto LABEL_68;
      }

      icu::RuleBasedNumberFormat::stripWhitespace(v9, &v43);
      if (SWORD4(v43) < 0)
      {
        v12 = HIDWORD(v43);
        v11 = HIDWORD(v43) & (SHIDWORD(v43) >> 31);
      }

      else
      {
        v11 = 0;
        v12 = WORD4(v43) >> 5;
      }

      v13 = icu::UnicodeString::indexOf(&v43, "%", 0, -1, v11, v12 - v11);
      if (v13 != -1)
      {
        v14 = v13;
        if (!v13)
        {
          if ((SWORD4(v43) & 0x80000000) == 0)
          {
            v15 = WORD4(v43) >> 5;
            goto LABEL_15;
          }

          v18 = HIDWORD(v43);
          goto LABEL_29;
        }

        v17 = v13 - 1;
        v15 = WORD4(v43) >> 5;
        v18 = HIDWORD(v43);
        if ((SWORD4(v43) & 0x8000u) == 0)
        {
          v19 = WORD4(v43) >> 5;
        }

        else
        {
          v19 = HIDWORD(v43);
        }

        if (v19 > v17)
        {
          v20 = &v43 | 0xA;
          if ((BYTE8(v43) & 2) == 0)
          {
            v20 = *(&v44 + 1);
          }

          if (*(v20 + 2 * v17) == 59)
          {
            if ((v13 & 0x80000000) != 0)
            {
              v21 = 0;
              v16 = 0;
              if ((WORD4(v43) & 0x8000) == 0)
              {
                goto LABEL_33;
              }

              goto LABEL_32;
            }

            if ((WORD4(v43) & 0x8000) == 0)
            {
LABEL_15:
              if (v15 >= v13)
              {
                v16 = v13;
              }

              else
              {
                v16 = v15;
              }

              goto LABEL_33;
            }

LABEL_29:
            if (v18 >= v13)
            {
              v21 = v13;
            }

            else
            {
              v21 = v18;
            }

LABEL_32:
            v16 = v21;
            v15 = v18;
LABEL_33:
            icu::UnicodeString::indexOf(&v43, L";%", 0, 2, v16, v15 - v16);
            v22 = u_strlen("%") + v14;
            for (i = 2 * v22; ; i += 2)
            {
              if ((SWORD4(v43) & 0x8000u) == 0)
              {
                v24 = WORD4(v43) >> 5;
              }

              else
              {
                v24 = HIDWORD(v43);
              }

              if (v24 <= v22)
              {
                v26 = 0xFFFFLL;
              }

              else
              {
                if ((BYTE8(v43) & 2) != 0)
                {
                  v25 = &v43 | 0xA;
                }

                else
                {
                  v25 = *(&v44 + 1);
                }

                v26 = *(v25 + i);
              }

              ++v22;
              if (!icu::PatternProps::isWhiteSpace(v26))
              {
                operator new();
              }
            }
          }
        }
      }

      v27 = SWORD4(v43);
      v28 = (v8 + 376);
      *(v8 + 94) = 0;
      if (v27 < 0)
      {
        v30 = HIDWORD(v43);
        v29 = HIDWORD(v43) & (SHIDWORD(v43) >> 31);
      }

      else
      {
        v29 = 0;
        v30 = v27 >> 5;
      }

      for (j = icu::UnicodeString::indexOf(&v43, L";%", 0, 2, v29, v30 - v29); j != -1; j = icu::UnicodeString::indexOf(&v43, L";%", 0, 2, v32, v33 - v32))
      {
        ++*v28;
        if (j >= -1)
        {
          v34 = j + 1;
          if ((WORD4(v43) & 0x8000) != 0)
          {
            v33 = HIDWORD(v43);
            if (SHIDWORD(v43) >= v34)
            {
              v32 = j + 1;
            }

            else
            {
              v32 = HIDWORD(v43);
            }
          }

          else
          {
            v33 = WORD4(v43) >> 5;
            if (v33 >= v34)
            {
              v32 = j + 1;
            }

            else
            {
              v32 = WORD4(v43) >> 5;
            }
          }
        }

        else
        {
          v32 = 0;
          if ((WORD4(v43) & 0x8000) != 0)
          {
            v33 = HIDWORD(v43);
          }

          else
          {
            v33 = WORD4(v43) >> 5;
          }
        }
      }

      v35 = *(v8 + 94);
      *(v8 + 94) = v35 + 1;
      v36 = malloc_type_malloc(8 * v35 + 16, 0x2004093837F09uLL);
      *(v8 + 45) = v36;
      if (v36)
      {
        v37 = *v28;
        v38 = v37;
        if ((v37 & 0x80000000) != 0)
        {
          goto LABEL_66;
        }

        v39 = 0;
        v40 = 8 * v37 + 8;
        do
        {
          *(*(v8 + 45) + v39) = 0;
          v39 += 8;
        }

        while (v40 != v39);
        if (v38)
        {
LABEL_66:
          operator new[]();
        }

        v41 = 1;
      }

      else
      {
LABEL_68:
        v41 = 7;
      }

      *a5 = v41;
      result = icu::UnicodeString::~UnicodeString(v41, &v43);
    }
  }

  v42 = *MEMORY[0x1E69E9840];
  return result;
}

icu::RuleBasedNumberFormat *icu::RuleBasedNumberFormat::RuleBasedNumberFormat(icu::RuleBasedNumberFormat *this, UChar **a2, const icu::UnicodeString *a3, UParseError *a4, UErrorCode *a5)
{
  icu::NumberFormat::NumberFormat(this);
  *v10 = &unk_1F09414F0;
  *(v10 + 384) = 0;
  *(v10 + 360) = 0u;
  *(v10 + 376) = 0;
  Default = icu::Locale::getDefault(v10);
  icu::Locale::Locale((this + 392), Default);
  *(this + 616) = 0u;
  *(this + 632) = 0u;
  *(this + 162) = 7;
  *(this + 652) = 0;
  *(this + 41) = 0u;
  *(this + 84) = &unk_1F0935D00;
  *(this + 340) = 2;
  *(this + 368) = 0;
  *(this + 738) = 0;
  *(this + 93) = 0;
  v12 = sub_195399FE0(a3, a4, a5);
  icu::RuleBasedNumberFormat::init(this, a2, v12, a4, a5);
  return this;
}

uint64_t icu::RuleBasedNumberFormat::RuleBasedNumberFormat(uint64_t a1, UChar **a2, uint64_t a3, uint64_t a4, uint64_t a5, UErrorCode *a6)
{
  icu::NumberFormat::NumberFormat(a1);
  *v12 = &unk_1F09414F0;
  *(v12 + 384) = 0;
  *(v12 + 360) = 0u;
  *(v12 + 376) = 0;
  icu::Locale::Locale((v12 + 392), a4);
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 7;
  *(a1 + 652) = 0;
  *(a1 + 656) = 0u;
  *(a1 + 672) = &unk_1F0935D00;
  *(a1 + 680) = 2;
  *(a1 + 736) = 0;
  *(a1 + 738) = 0;
  *(a1 + 744) = 0;
  icu::RuleBasedNumberFormat::init(a1, a2, a3, a5, a6);
  return a1;
}

icu::RuleBasedNumberFormat *icu::RuleBasedNumberFormat::RuleBasedNumberFormat(icu::RuleBasedNumberFormat *this, UChar **a2, UParseError *a3, UErrorCode *a4)
{
  icu::NumberFormat::NumberFormat(this);
  *v8 = &unk_1F09414F0;
  *(v8 + 384) = 0;
  *(v8 + 360) = 0u;
  *(v8 + 376) = 0;
  Default = icu::Locale::getDefault(v8);
  icu::Locale::Locale((this + 392), Default);
  *(this + 616) = 0u;
  *(this + 632) = 0u;
  *(this + 162) = 7;
  *(this + 652) = 0;
  *(this + 41) = 0u;
  *(this + 84) = &unk_1F0935D00;
  *(this + 340) = 2;
  *(this + 368) = 0;
  *(this + 738) = 0;
  *(this + 93) = 0;
  icu::RuleBasedNumberFormat::init(this, a2, 0, a3, a4);
  return this;
}

icu::RuleBasedNumberFormat *icu::RuleBasedNumberFormat::RuleBasedNumberFormat(icu::RuleBasedNumberFormat *this, UChar **a2, const icu::Locale *a3, UParseError *a4, UErrorCode *a5)
{
  icu::NumberFormat::NumberFormat(this);
  *v10 = &unk_1F09414F0;
  *(v10 + 384) = 0;
  *(v10 + 360) = 0u;
  *(v10 + 376) = 0;
  icu::Locale::Locale((v10 + 392), a3);
  *(this + 616) = 0u;
  *(this + 632) = 0u;
  *(this + 162) = 7;
  *(this + 652) = 0;
  *(this + 41) = 0u;
  *(this + 84) = &unk_1F0935D00;
  *(this + 340) = 2;
  *(this + 368) = 0;
  *(this + 738) = 0;
  *(this + 93) = 0;
  icu::RuleBasedNumberFormat::init(this, a2, 0, a4, a5);
  return this;
}

uint64_t icu::RuleBasedNumberFormat::RuleBasedNumberFormat(uint64_t a1, unsigned int a2, uint64_t a3, UErrorCode *a4)
{
  v35 = *MEMORY[0x1E69E9840];
  icu::NumberFormat::NumberFormat(a1);
  *v8 = &unk_1F09414F0;
  *(v8 + 384) = 0;
  *(v8 + 360) = 0u;
  *(v8 + 376) = 0;
  icu::Locale::Locale((v8 + 392), a3);
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 7;
  *(a1 + 652) = 0;
  *(a1 + 656) = 0u;
  *(a1 + 672) = &unk_1F0935D00;
  *(a1 + 680) = 2;
  *(a1 + 736) = 0;
  *(a1 + 738) = 0;
  *(a1 + 744) = 0;
  if (*a4 <= 0)
  {
    if (a2 >= 4)
    {
      *a4 = U_ILLEGAL_ARGUMENT_ERROR;
    }

    else
    {
      v9 = off_1E7410030[a2];
      v10 = ures_open("icudt76l-rbnf", *(a1 + 432), a4);
      v11 = v10;
      if (*a4 <= 0)
      {
        LocaleByType = ures_getLocaleByType(v10, 1, a4);
        v13 = ures_getLocaleByType(v11, 0, a4);
        icu::Format::setLocaleIDs(a1, LocaleByType, v13);
        v14 = ures_getByKeyWithFallback(v11, "RBNFRules", 0, a4);
        if (*a4 >= 1)
        {
          ures_close(v11);
        }

        v15 = ures_getByKeyWithFallback(v14, v9, 0, a4);
        if (*a4 < 1)
        {
          v16 = v15;
          v31 = 0u;
          v34 = 0;
          v33 = 0u;
          v32 = 0u;
          v30 = &unk_1F0935D00;
          LOWORD(v31) = 2;
          while (ures_hasNext(v16))
          {
            v29 = 0;
            v28 = 0u;
            v27 = 0u;
            v26 = 0u;
            v25 = &unk_1F0935D00;
            LOWORD(v26) = 2;
            v24 = 0;
            NextString = ures_getNextString(v16, &v24, 0, a4);
            if (*a4 <= 0)
            {
              v23 = NextString;
              icu::UnicodeString::setTo(&v25, 1, &v23, v24);
            }

            else
            {
              icu::UnicodeString::setToBogus(&v25);
            }

            if ((v26 & 0x8000u) == 0)
            {
              v18 = v26 >> 5;
            }

            else
            {
              v18 = DWORD1(v26);
            }

            icu::UnicodeString::doAppend(&v30, &v25, 0, v18);
            icu::UnicodeString::~UnicodeString(v19, &v25);
          }

          icu::RuleBasedNumberFormat::init(a1, &v30, 0, &v25, a4);
          ures_close(v16);
          ures_close(v14);
          icu::UnicodeString::~UnicodeString(v20, &v30);
        }

        else
        {
          ures_close(v14);
        }
      }

      ures_close(v11);
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return a1;
}

uint64_t icu::RuleBasedNumberFormat::RuleBasedNumberFormat(icu::RuleBasedNumberFormat *this, const icu::RuleBasedNumberFormat *a2)
{
  v4 = icu::NumberFormat::NumberFormat(this, a2);
  *v4 = &unk_1F09414F0;
  *(v4 + 384) = 0;
  *(v4 + 360) = 0u;
  *(v4 + 376) = 0;
  icu::Locale::Locale((v4 + 392), a2 + 392);
  *(this + 616) = 0u;
  *(this + 632) = 0u;
  *(this + 162) = 7;
  *(this + 652) = 0;
  *(this + 41) = 0u;
  *(this + 84) = &unk_1F0935D00;
  *(this + 340) = 2;
  *(this + 368) = 0;
  *(this + 738) = 0;
  *(this + 93) = 0;

  return icu::RuleBasedNumberFormat::operator=(this, a2);
}

uint64_t icu::RuleBasedNumberFormat::operator=(uint64_t a1, uint64_t a2)
{
  v12[8] = *MEMORY[0x1E69E9840];
  if (a1 != a2)
  {
    icu::NumberFormat::operator=(a1, a2);
    v11 = 0;
    icu::RuleBasedNumberFormat::dispose(a1);
    icu::Locale::operator=((a1 + 392), a2 + 392);
    *(a1 + 652) = *(a2 + 652);
    (*(*a1 + 408))(a1, *(a2 + 624));
    v4 = *(a2 + 664);
    if (v4)
    {
      ++*(v4 + 8);
    }

    icu::RuleBasedNumberFormat::init(a1, (a2 + 672), v4, v10, &v11);
    (*(*a2 + 392))(v12, a2);
    (*(*a1 + 384))(a1, v12, &v11);
    icu::UnicodeString::~UnicodeString(v5, v12);
    v6 = (*(*a2 + 272))(a2);
    (*(*a1 + 280))(a1, v6);
    *(a1 + 736) = *(a2 + 736);
    *(a1 + 738) = *(a2 + 738);
    v7 = *(a2 + 744);
    if (v7)
    {
      v7 = (*(*v7 + 32))(v7);
    }

    *(a1 + 744) = v7;
  }

  v8 = *MEMORY[0x1E69E9840];
  return a1;
}

_DWORD *icu::RuleBasedNumberFormat::dispose(icu::RuleBasedNumberFormat *this)
{
  v2 = *(this + 45);
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      v4 = v2 + 1;
      do
      {
        v5 = sub_19534B620(v3);
        MEMORY[0x19A8B2600](v5, 0x10B2C408CF50715);
        v6 = *v4++;
        v3 = v6;
      }

      while (v6);
      v2 = *(this + 45);
    }

    free(v2);
    *(this + 45) = 0;
  }

  v7 = *(this + 46);
  if (v7)
  {
    v8 = v7 - 16;
    v9 = *(v7 - 8);
    if (v9)
    {
      v10 = (v7 + (v9 << 6));
      v11 = (v10 - 64);
      v12 = -64 * v9;
      do
      {
        v11 = (icu::UnicodeString::~UnicodeString(v10, v11) - 64);
        v12 += 64;
      }

      while (v12);
    }

    MEMORY[0x19A8B25E0](v8, 0x1093C808E78F3FDLL);
    *(this + 46) = 0;
  }

  v13 = *(this + 77);
  if (v13)
  {
    icu::RuleBasedCollator::~RuleBasedCollator(v13);
    MEMORY[0x19A8B2600]();
  }

  *(this + 77) = 0;
  v14 = *(this + 78);
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  *(this + 78) = 0;
  v15 = *(this + 79);
  if (v15)
  {
    v16 = sub_19534CDC4(v15);
    MEMORY[0x19A8B2600](v16, 0x10F2C40E3085301);
  }

  *(this + 79) = 0;
  v17 = *(this + 80);
  if (v17)
  {
    v18 = sub_19534CDC4(v17);
    MEMORY[0x19A8B2600](v18, 0x10F2C40E3085301);
  }

  *(this + 80) = 0;
  v19 = *(this + 82);
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  *(this + 82) = 0;
  v20 = *(this + 93);
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  *(this + 93) = 0;
  result = *(this + 83);
  if (result)
  {
    v22 = result[2];
    if (v22)
    {
      v23 = v22 - 1;
      result[2] = v23;
      if (!v23)
      {
        result = (*(*result + 8))(result);
      }
    }

    *(this + 83) = 0;
  }

  return result;
}

void icu::RuleBasedNumberFormat::~RuleBasedNumberFormat(icu::RuleBasedNumberFormat *this)
{
  *this = &unk_1F09414F0;
  icu::RuleBasedNumberFormat::dispose(this);
  icu::UnicodeString::~UnicodeString(v2, (this + 672));
  icu::Locale::~Locale((this + 392));

  icu::NumberFormat::~NumberFormat(this);
}

{
  icu::RuleBasedNumberFormat::~RuleBasedNumberFormat(this);

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::RuleBasedNumberFormat::operator==(uint64_t a1, uint64_t a2)
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
  if (!result)
  {
    return result;
  }

  result = icu::Locale::operator==(a1 + 392, a2 + 392);
  if (!result)
  {
    return result;
  }

  if (*(a1 + 652) != *(a2 + 652))
  {
    return 0;
  }

  v5 = *(a1 + 664);
  v6 = *(a2 + 664);
  if (!v5)
  {
    if (!v6)
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (!v6)
  {
    return 0;
  }

  result = (*(*v5 + 16))(v5);
  if (!result)
  {
    return result;
  }

LABEL_12:
  v7 = *(a1 + 360);
  v8 = *(a2 + 360);
  result = (v7 | v8) == 0;
  if (v7 && v8)
  {
    v9 = *v7;
    if (*v7)
    {
      while (*v8)
      {
        if (sub_19534B624(v9, *v8))
        {
          v10 = v7[1];
          ++v7;
          v9 = v10;
          ++v8;
          if (v10)
          {
            continue;
          }
        }

        goto LABEL_18;
      }
    }

    else
    {
LABEL_18:
      if (!*v8)
      {
        return *v7 == 0;
      }
    }

    return 0;
  }

  return result;
}

uint64_t icu::RuleBasedNumberFormat::getRules@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0u;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0u;
  *(a2 + 24) = 0u;
  *a2 = &unk_1F0935D00;
  *(a2 + 8) = 2;
  v3 = *(this + 360);
  if (v3)
  {
    this = *v3;
    if (*v3)
    {
      v4 = v3 + 1;
      do
      {
        sub_19534C2A0(this, a2);
        v5 = *v4++;
        this = v5;
      }

      while (v5);
    }
  }

  return this;
}

icu::UnicodeString *icu::RuleBasedNumberFormat::getRuleSetName@<X0>(icu::RuleBasedNumberFormat *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  result = *(this + 83);
  if (result)
  {
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    v9 = (*(*result + 32))(result);
    return icu::UnicodeString::UnicodeString(a3, 1, &v9);
  }

  v6 = *(this + 45);
  if (!v6)
  {
    goto LABEL_11;
  }

  *(a3 + 8) = 0u;
  *(a3 + 56) = 0;
  *(a3 + 40) = 0u;
  *(a3 + 24) = 0u;
  *a3 = &unk_1F0935D00;
  *(a3 + 8) = 2;
  v7 = *v6;
  if (!*v6)
  {
LABEL_10:
    result = icu::UnicodeString::~UnicodeString(v6, a3);
LABEL_11:
    *(a3 + 8) = 0u;
    *(a3 + 56) = 0;
    *(a3 + 40) = 0u;
    *(a3 + 24) = 0u;
    *a3 = &unk_1F0935D00;
    *(a3 + 8) = 2;
    return result;
  }

  ++v6;
  while (!*(v7 + 161))
  {
LABEL_9:
    v8 = *v6++;
    v7 = v8;
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  if (a2)
  {
    --a2;
    goto LABEL_9;
  }

  return icu::UnicodeString::copyFrom(a3, (v7 + 8), 0);
}

uint64_t icu::RuleBasedNumberFormat::getNumberOfRuleSetNames(icu::RuleBasedNumberFormat *this)
{
  v2 = *(this + 83);
  if (v2)
  {
    return (*(*v2 + 24))();
  }

  v4 = *(this + 45);
  if (!v4)
  {
    return 0;
  }

  v5 = *v4;
  if (!*v4)
  {
    return 0;
  }

  LODWORD(result) = 0;
  v6 = v4 + 1;
  do
  {
    if (*(v5 + 161))
    {
      result = (result + 1);
    }

    else
    {
      result = result;
    }

    v7 = *v6++;
    v5 = v7;
  }

  while (v7);
  return result;
}

uint64_t icu::RuleBasedNumberFormat::getNumberOfRuleSetDisplayNameLocales(icu::RuleBasedNumberFormat *this)
{
  result = *(this + 83);
  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

uint64_t *icu::RuleBasedNumberFormat::getRuleSetDisplayNameLocale@<X0>(icu::RuleBasedNumberFormat *this@<X0>, UErrorCode *a2@<X2>, uint64_t a3@<X1>, icu::Locale *a4@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  if (*a2 >= 1)
  {
    v5 = *MEMORY[0x1E69E9840];

    return icu::Locale::Locale(v26, a4, "", 0, 0, 0);
  }

  if ((a3 & 0x80000000) == 0)
  {
    v10 = *(this + 83);
    if (v10)
    {
      if ((*(*v10 + 40))(v10) > a3)
      {
        memset(v25, 0, sizeof(v25));
        v23 = (*(**(this + 83) + 48))(*(this + 83), a3);
        icu::UnicodeString::UnicodeString(v25, 1, &v23);
        memset(v24, 0, sizeof(v24));
        v11 = WORD4(v25[0]);
        v12 = WORD4(v25[0]) >> 5;
        v13 = HIDWORD(v25[0]);
        if ((SWORD4(v25[0]) & 0x8000u) == 0)
        {
          v14 = WORD4(v25[0]) >> 5;
        }

        else
        {
          v14 = HIDWORD(v25[0]);
        }

        v15 = v14 + 1;
        if (v14 < 64)
        {
          v17 = v24;
        }

        else
        {
          v16 = malloc_type_malloc((v14 + 1), 0x100004077774924uLL);
          if (!v16)
          {
            *a2 = U_MEMORY_ALLOCATION_ERROR;
            icu::Locale::Locale(7, a4, "", 0, 0, 0);
LABEL_24:
            result = icu::UnicodeString::~UnicodeString(v21, v25);
            v22 = *MEMORY[0x1E69E9840];
            return result;
          }

          v17 = v16;
          v11 = WORD4(v25[0]);
          v13 = HIDWORD(v25[0]);
          v12 = WORD4(v25[0]) >> 5;
        }

        if (v11 >= 0)
        {
          v19 = v12;
        }

        else
        {
          v19 = v13;
        }

        icu::UnicodeString::extract(v25, 0, v19, v17, v15);
        *a4 = 0u;
        *(a4 + 1) = 0u;
        *(a4 + 2) = 0u;
        *(a4 + 3) = 0u;
        *(a4 + 4) = 0u;
        *(a4 + 5) = 0u;
        *(a4 + 6) = 0u;
        *(a4 + 7) = 0u;
        *(a4 + 8) = 0u;
        *(a4 + 9) = 0u;
        *(a4 + 10) = 0u;
        *(a4 + 11) = 0u;
        *(a4 + 12) = 0u;
        *(a4 + 13) = 0u;
        icu::Locale::Locale(v20, a4, v17, 0, 0, 0);
        if (v17 != v24)
        {
          free(v17);
        }

        goto LABEL_24;
      }
    }
  }

  *a2 = U_ILLEGAL_ARGUMENT_ERROR;
  *a4 = 0u;
  *(a4 + 1) = 0u;
  *(a4 + 2) = 0u;
  *(a4 + 3) = 0u;
  *(a4 + 4) = 0u;
  *(a4 + 5) = 0u;
  *(a4 + 6) = 0u;
  *(a4 + 7) = 0u;
  *(a4 + 8) = 0u;
  *(a4 + 9) = 0u;
  *(a4 + 10) = 0u;
  *(a4 + 11) = 0u;
  *(a4 + 12) = 0u;
  *(a4 + 13) = 0u;
  v18 = *MEMORY[0x1E69E9840];

  return icu::Locale::Locale(a4);
}

void icu::RuleBasedNumberFormat::getRuleSetDisplayName(icu::RuleBasedNumberFormat *this@<X0>, const icu::Locale *a2@<X2>, uint64_t a3@<X1>, uint64_t a4@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  if ((a3 & 0x80000000) == 0)
  {
    v6 = *(this + 83);
    if (v6)
    {
      if ((*(*v6 + 24))(v6) > a3)
      {
        memset(v25, 0, sizeof(v25));
        BaseName = icu::Locale::getBaseName(a2);
        icu::UnicodeString::UnicodeString(v25, BaseName, 0xFFFFFFFFLL, 0);
        if ((SWORD4(v25[0]) & 0x8000u) == 0)
        {
          v10 = WORD4(v25[0]) >> 5;
        }

        else
        {
          v10 = HIDWORD(v25[0]);
        }

        Buffer = icu::UnicodeString::getBuffer(v25, v10 + 1);
        if ((v10 & 0x80000000) == 0)
        {
          v12 = Buffer;
          v13 = Buffer - 2;
LABEL_9:
          while (2)
          {
            *(v12 + 2 * v10) = 0;
            v14 = (*(**(this + 83) + 64))(*(this + 83), v12);
            if ((v14 & 0x80000000) == 0)
            {
              *(a4 + 32) = 0u;
              *(a4 + 48) = 0u;
              *a4 = 0u;
              *(a4 + 16) = 0u;
              v24 = (*(**(this + 83) + 56))(*(this + 83), v14, a3);
              icu::UnicodeString::UnicodeString(a4, 1, &v24);
              v22 = v24;
              v18 = &v22;
              goto LABEL_31;
            }

            v15 = v10;
            if (v10)
            {
              v10 = 0;
            }

            else
            {
              v10 = -1;
            }

            do
            {
              if (v15 < 2)
              {
LABEL_23:
                if ((v10 & 0x80000000) == 0)
                {
                  goto LABEL_9;
                }

                goto LABEL_26;
              }

              --v15;
            }

            while (*(v12 + 2 * v15) != 95);
            if (v15 + 1 >= 2)
            {
              if (v15 >= 1)
              {
                v16 = 1;
              }

              else
              {
                v16 = v15;
              }

              v10 = v16 - 1;
              while (*(v13 + 2 * v15) == 95)
              {
                v17 = __OFSUB__(v15, 1);
                LODWORD(v15) = v15 - 1;
                if (((v15 & 0x80000000) != 0) ^ v17 | (v15 == 0))
                {
                  goto LABEL_23;
                }
              }
            }

            v10 = v15;
            if ((v15 & 0x80000000) == 0)
            {
              continue;
            }

            break;
          }
        }

LABEL_26:
        *(a4 + 32) = 0u;
        *(a4 + 48) = 0u;
        *a4 = 0u;
        *(a4 + 16) = 0u;
        v23 = (*(**(this + 83) + 32))(*(this + 83), a3);
        icu::UnicodeString::UnicodeString(a4, 1, &v23);
        v21 = v23;
        v18 = &v21;
LABEL_31:
        icu::UnicodeString::~UnicodeString(v18, v25);
        v20 = *MEMORY[0x1E69E9840];
        return;
      }
    }
  }

  *(a4 + 8) = 0u;
  *(a4 + 56) = 0;
  *(a4 + 40) = 0u;
  *(a4 + 24) = 0u;
  *a4 = &unk_1F0935D00;
  *(a4 + 8) = 2;
  v19 = *MEMORY[0x1E69E9840];

  icu::UnicodeString::setToBogus(a4);
}

void icu::RuleBasedNumberFormat::getRuleSetDisplayName(icu::RuleBasedNumberFormat *this@<X0>, UChar **a2@<X1>, const icu::Locale *a3@<X2>, uint64_t a4@<X8>)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(this + 83))
  {
    memset(v12, 0, sizeof(v12));
    icu::UnicodeString::UnicodeString(v12, a2);
    v6 = *(this + 83);
    TerminatedBuffer = icu::UnicodeString::getTerminatedBuffer(v12);
    v8 = (*(*v6 + 72))(v6, TerminatedBuffer);
    (*(*this + 344))(this, v8, a3);
    icu::UnicodeString::~UnicodeString(v9, v12);
    v10 = *MEMORY[0x1E69E9840];
  }

  else
  {
    *(a4 + 8) = 0u;
    *(a4 + 56) = 0;
    *(a4 + 40) = 0u;
    *(a4 + 24) = 0u;
    *a4 = &unk_1F0935D00;
    *(a4 + 8) = 2;
    v11 = *MEMORY[0x1E69E9840];

    icu::UnicodeString::setToBogus(a4);
  }
}

uint64_t icu::RuleBasedNumberFormat::findRuleSet(icu::RuleBasedNumberFormat *this, const icu::UnicodeString *a2, UErrorCode *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  v5 = *(this + 45);
  if (!v5)
  {
    return 0;
  }

  v3 = *v5;
  if (*v5)
  {
    v8 = v5 + 1;
    while (!sub_19539C528(v3, a2))
    {
      v9 = *v8++;
      v3 = v9;
      if (!v9)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v3 = 0;
    *a3 = U_ILLEGAL_ARGUMENT_ERROR;
  }

  return v3;
}

BOOL sub_19539C528(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    return *(a2 + 8) & 1;
  }

  if ((v2 & 0x8000) != 0)
  {
    v3 = *(a1 + 20);
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

    return icu::UnicodeString::doEquals(a1 + 8, v7, v3);
  }

  return v4;
}

icu::UnicodeString *icu::RuleBasedNumberFormat::format(char **this, const icu::number::impl::DecimalQuantity *a2, icu::UnicodeString *a3, icu::FieldPosition *a4, UErrorCode *a5)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*a5 <= 0)
  {
    v16 = 0;
    memset(v15, 0, sizeof(v15));
    icu::number::impl::DecimalQuantity::DecimalQuantity(v15, a2);
    if (icu::number::impl::DecimalQuantity::fitsInLong(v15, 0))
    {
      v10 = icu::number::impl::DecimalQuantity::toLong(a2, 0);
      (*(*this + 15))(this, v10, a3, a4, a5);
    }

    else
    {
      icu::number::impl::DecimalQuantity::roundToMagnitude(v15, 0, 4u, a5);
      if (icu::number::impl::DecimalQuantity::fitsInLong(v15, 0))
      {
        v11 = icu::number::impl::DecimalQuantity::toDouble(a2);
        (*(*this + 9))(this, a3, a4, a5, v11);
      }

      else
      {
        Instance = icu::NumberFormat::createInstance(this + 49, 1u, a5);
        if (Instance || *a5 > 0)
        {
          if (Instance)
          {
            memset(v17, 0, sizeof(v17));
            icu::Formattable::Formattable(v17);
            operator new();
          }
        }

        else
        {
          *a5 = U_MEMORY_ALLOCATION_ERROR;
        }
      }
    }

    icu::number::impl::DecimalQuantity::~DecimalQuantity(v15);
  }

  v13 = *MEMORY[0x1E69E9840];
  return a3;
}

icu::UnicodeString *icu::RuleBasedNumberFormat::format(icu::RuleBasedNumberFormat *this, unint64_t a2, icu::UnicodeString *a3, icu::FieldPosition *a4)
{
  v5 = *(this + 48);
  if (v5)
  {
    v7 = 0;
    icu::RuleBasedNumberFormat::format(this, a2, v5, a3, &v7);
  }

  return a3;
}

uint64_t icu::RuleBasedNumberFormat::format(uint64_t a1, unint64_t a2, _DWORD *a3, uint64_t a4, icu::UnifiedCache *this)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*this <= 0)
  {
    if (a2 == 0x8000000000000000)
    {
      if (icu::NumberFormat::createInstance((a1 + 392), 1u, this))
      {
        memset(v17, 0, sizeof(v17));
        icu::Formattable::Formattable(v17);
        v16 = 0;
        v14 = &unk_1F093AD90;
        v15 = 0xFFFFFFFFLL;
        operator new();
      }
    }

    else
    {
      v8 = *(a4 + 8);
      v9 = v8;
      v10 = v8 >> 5;
      if (v9 >= 0)
      {
        v11 = v10;
      }

      else
      {
        v11 = *(a4 + 12);
      }

      sub_19534B86C(a3, a2, a4, v11, 0, this);
      icu::RuleBasedNumberFormat::adjustForCapitalizationContext(a1, v11, a4, this);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return a4;
}

icu::UnicodeString *icu::RuleBasedNumberFormat::format(icu::RuleBasedNumberFormat *this, double a2, icu::UnicodeString *a3, icu::FieldPosition *a4)
{
  v7 = 0;
  v5 = *(this + 48);
  if (v5)
  {
    icu::RuleBasedNumberFormat::format(this, v5, a3, &v7, a2);
  }

  return a3;
}

icu::UnicodeString *icu::RuleBasedNumberFormat::format(icu::NumberFormat *a1, _DWORD *a2, uint64_t a3, int *a4, double a5)
{
  v10 = *(a3 + 8);
  v11 = *(a3 + 12);
  if ((*(*a1 + 272))(a1) != 7 && !uprv_isNaN(a5) && !uprv_isInfinite(a5))
  {
    v21 = 0;
    memset(v20, 0, sizeof(v20));
    icu::number::impl::DecimalQuantity::DecimalQuantity(v20);
    icu::number::impl::DecimalQuantity::setToDouble(v20, a5);
    v12 = -icu::NumberFormat::getMaximumFractionDigits(a1);
    v13 = (*(*a1 + 272))(a1);
    icu::number::impl::DecimalQuantity::roundToMagnitude(v20, v12, v13, a4);
    a5 = icu::number::impl::DecimalQuantity::toDouble(v20);
    icu::number::impl::DecimalQuantity::~DecimalQuantity(v20);
  }

  if ((v10 & 0x8000u) == 0)
  {
    v14 = v10 >> 5;
  }

  else
  {
    v14 = v11;
  }

  v15 = *(a3 + 8);
  v16 = v15;
  v17 = v15 >> 5;
  if (v16 >= 0)
  {
    v18 = v17;
  }

  else
  {
    v18 = *(a3 + 12);
  }

  sub_19534B9EC(a2, a3, v18, 0, a4, a5);
  return icu::RuleBasedNumberFormat::adjustForCapitalizationContext(a1, v14, a3, a4);
}

icu::UnicodeString *icu::RuleBasedNumberFormat::format(icu::RuleBasedNumberFormat *this, unint64_t a2, const icu::UnicodeString *a3, icu::UnicodeString *a4, icu::FieldPosition *a5, UErrorCode *a6)
{
  if (*a6 <= 0)
  {
    if (*(a3 + 4) < 0)
    {
      v13 = *(a3 + 3);
      v12 = v13 & (v13 >> 31);
    }

    else
    {
      v12 = 0;
      v13 = *(a3 + 4) >> 5;
    }

    if (icu::UnicodeString::indexOf(a3, L"%%", 0, 2, v12, v13 - v12))
    {
      RuleSet = icu::RuleBasedNumberFormat::findRuleSet(this, a3, a6);
      if (RuleSet)
      {
        icu::RuleBasedNumberFormat::format(this, a2, RuleSet, a4, a6);
      }
    }

    else
    {
      *a6 = U_ILLEGAL_ARGUMENT_ERROR;
    }
  }

  return a4;
}

icu::UnicodeString *icu::RuleBasedNumberFormat::format(icu::RuleBasedNumberFormat *this, double a2, const icu::UnicodeString *a3, icu::UnicodeString *a4, icu::FieldPosition *a5, UErrorCode *a6)
{
  if (*a6 <= 0)
  {
    if (*(a3 + 4) < 0)
    {
      v13 = *(a3 + 3);
      v12 = v13 & (v13 >> 31);
    }

    else
    {
      v12 = 0;
      v13 = *(a3 + 4) >> 5;
    }

    if (icu::UnicodeString::indexOf(a3, L"%%", 0, 2, v12, v13 - v12))
    {
      RuleSet = icu::RuleBasedNumberFormat::findRuleSet(this, a3, a6);
      if (RuleSet)
      {
        icu::RuleBasedNumberFormat::format(this, RuleSet, a4, a6, a2);
      }
    }

    else
    {
      *a6 = U_ILLEGAL_ARGUMENT_ERROR;
    }
  }

  return a4;
}

icu::UnicodeString *icu::RuleBasedNumberFormat::adjustForCapitalizationContext(icu::BreakIterator **this, int a2, icu::UnicodeString *a3, UErrorCode *a4)
{
  v8 = (*(*this + 33))(this, 1, a4);
  if (!a2)
  {
    v9 = v8;
    if (v8 != 256)
    {
      v10 = *(a3 + 4);
      v11 = v10;
      LODWORD(v12) = v10 >> 5;
      v12 = v11 >= 0 ? v12 : *(a3 + 3);
      if (v12 >= 1)
      {
        v13 = icu::UnicodeString::char32At(v12, a3, 0);
        if (u_islower(v13))
        {
          if (*a4 <= 0)
          {
            v14 = this[93];
            if (v14)
            {
              if (v9 != 258)
              {
                if (v9 == 260)
                {
                  if (!*(this + 738))
                  {
                    return a3;
                  }
                }

                else if (v9 != 259 || !*(this + 737))
                {
                  return a3;
                }
              }

              icu::UnicodeString::toTitle(a3, v14, (this + 49), 768);
            }
          }
        }
      }
    }
  }

  return a3;
}

char *icu::RuleBasedNumberFormat::parse(char *this, const icu::UnicodeString *a2, icu::Formattable *a3, icu::ParsePosition *a4)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!*(this + 45))
  {
    *(a4 + 3) = 0;
    goto LABEL_27;
  }

  v6 = this;
  memset(v30, 0, sizeof(v30));
  icu::UnicodeString::UnicodeString(v30, a2, *(a4 + 2));
  v27[0] = &unk_1F0932C70;
  v27[1] = 0xFFFFFFFF00000000;
  v25 = &unk_1F0932C70;
  v26 = 0xFFFFFFFF00000000;
  memset(v29, 0, sizeof(v29));
  icu::Formattable::Formattable(v29);
  v7 = *(v6 + 45);
  v8 = *v7;
  if (!*v7)
  {
    goto LABEL_12;
  }

  v9 = v7 + 1;
  while (1)
  {
    if (!*(v8 + 161) || !*(v8 + 162))
    {
      goto LABEL_11;
    }

    v23 = &unk_1F0932C70;
    v24 = 0xFFFFFFFF00000000;
    memset(v28, 0, sizeof(v28));
    icu::Formattable::Formattable(v28);
    sub_19534BDE4(v8, v30, &v23, 0, 0, v28, v6[652], 1.7592186e13);
    v10 = v24;
    if (v24 > v26)
    {
      v26 = v24;
      icu::Formattable::operator=(v29, v28);
      v10 = v26;
      v11 = WORD4(v30[0]) >> 5;
      if (SWORD4(v30[0]) < 0)
      {
        v11 = HIDWORD(v30[0]);
      }

      if (v26 == v11)
      {
        break;
      }
    }

    icu::Formattable::~Formattable(v10, v28);
    icu::ParsePosition::~ParsePosition(&v23);
LABEL_11:
    v12 = *v9++;
    v8 = v12;
    if (!v12)
    {
      goto LABEL_12;
    }
  }

  icu::Formattable::~Formattable(v26, v28);
  icu::ParsePosition::~ParsePosition(&v23);
LABEL_12:
  v13 = *(a4 + 2);
  v14 = v26 + v13;
  v15 = (HIDWORD(v26) & ~(SHIDWORD(v26) >> 31)) + v13;
  if (v26 > 0)
  {
    v15 = -1;
  }

  *(a4 + 2) = v14;
  *(a4 + 3) = v15;
  icu::Formattable::operator=(a3, v29);
  if (icu::Formattable::getType(a3) == 1)
  {
    v17 = *(a3 + 1);
    if (!uprv_isNaN(v17))
    {
      v18 = uprv_trunc(v17);
      v16 = 0xC1E0000000000000;
      if (v17 <= 2147483650.0 && v17 >= -2147483650.0 && v17 == v18)
      {
        icu::Formattable::setLong(a3, v17);
      }
    }
  }

  icu::Formattable::~Formattable(v16, v29);
  icu::ParsePosition::~ParsePosition(&v25);
  icu::ParsePosition::~ParsePosition(v27);
  this = icu::UnicodeString::~UnicodeString(v21, v30);
LABEL_27:
  v22 = *MEMORY[0x1E69E9840];
  return this;
}

uint64_t icu::RuleBasedNumberFormat::setLenient(uint64_t this, int a2)
{
  *(this + 652) = a2;
  if (!a2)
  {
    v2 = this;
    this = *(this + 616);
    if (this)
    {
      icu::RuleBasedCollator::~RuleBasedCollator(this);
      this = MEMORY[0x19A8B2600]();
      *(v2 + 616) = 0;
    }
  }

  return this;
}

uint64_t *icu::RuleBasedNumberFormat::setDefaultRuleSet(uint64_t *this, const icu::UnicodeString *a2, UErrorCode *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*a3 > 0)
  {
    goto LABEL_2;
  }

  v6 = this;
  if (*(a2 + 4) > 0x1Fu)
  {
    v17 = L"%%";
    icu::UnicodeString::UnicodeString(&v19, 1, &v17);
    v7 = WORD4(v19);
    if ((SWORD4(v19) & 0x8000u) == 0)
    {
      v8 = WORD4(v19) >> 5;
    }

    else
    {
      v8 = HIDWORD(v19);
    }

    v9 = *(a2 + 4);
    if (BYTE8(v19))
    {
      v11 = v9 & 1;
    }

    else if (v9)
    {
      v11 = 0;
    }

    else
    {
      if ((BYTE8(v19) & 2) != 0)
      {
        v10 = &v19 + 10;
      }

      else
      {
        v10 = *(&v20 + 1);
      }

      v11 = icu::UnicodeString::doEqualsSubstring(a2, 0, v8, v10, v8 & (v8 >> 31), v8 & ~(v8 >> 31));
    }

    this = icu::UnicodeString::~UnicodeString(v7, &v19);
    v15 = v17;
    if (v11)
    {
      *a3 = U_ILLEGAL_ARGUMENT_ERROR;
    }

    else
    {
      this = icu::RuleBasedNumberFormat::findRuleSet(&v15, v6, a2, a3);
      if (this)
      {
        v6[48] = this;
      }
    }

    goto LABEL_2;
  }

  v12 = this[83];
  if (v12)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = (*(*v12 + 32))(v12, 0);
    icu::UnicodeString::UnicodeString(&v19, 1, &v18);
    v16 = v18;
    v6[48] = icu::RuleBasedNumberFormat::findRuleSet(&v16, v6, &v19, a3);
    this = icu::UnicodeString::~UnicodeString(v13, &v19);
LABEL_2:
    v3 = *MEMORY[0x1E69E9840];
    return this;
  }

  v14 = *MEMORY[0x1E69E9840];

  return icu::RuleBasedNumberFormat::initDefaultRuleSet(v6);
}

void *icu::RuleBasedNumberFormat::initDefaultRuleSet(void *this)
{
  v19 = *MEMORY[0x1E69E9840];
  this[48] = 0;
  if (this[45])
  {
    v1 = this;
    memset(v18, 0, sizeof(v18));
    v15 = "%";
    icu::UnicodeString::UnicodeString(v18, 1, &v15);
    memset(v17, 0, sizeof(v17));
    v14 = "%";
    icu::UnicodeString::UnicodeString(v17, 1, &v14);
    memset(v16, 0, sizeof(v16));
    v13 = "%";
    icu::UnicodeString::UnicodeString(v16, 1, &v13);
    v2 = *(v1 + 45);
    v3 = *v2;
    if (*v2)
    {
      while (!sub_19539C528(v3, v18) && !sub_19539C528(*v2, v17) && !sub_19539C528(*v2, v16))
      {
        v5 = v2[1];
        ++v2;
        v3 = v5;
        if (!v5)
        {
          goto LABEL_7;
        }
      }

      v8 = *v2;
LABEL_13:
      *(v1 + 48) = v8;
    }

    else
    {
LABEL_7:
      v7 = *(v2 - 1);
      v6 = v2 - 1;
      *(v1 + 48) = v7;
      v4 = *(v7 + 161);
      if (!*(v7 + 161))
      {
        v4 = *(v1 + 45);
        while (v6 != v4)
        {
          v9 = *--v6;
          v8 = v9;
          if (*(v9 + 161))
          {
            goto LABEL_13;
          }
        }
      }
    }

    icu::UnicodeString::~UnicodeString(v4, v16);
    icu::UnicodeString::~UnicodeString(v10, v17);
    this = icu::UnicodeString::~UnicodeString(v11, v18);
  }

  v12 = *MEMORY[0x1E69E9840];
  return this;
}

void icu::RuleBasedNumberFormat::getDefaultRuleSetName(icu::RuleBasedNumberFormat *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0u;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0u;
  *(a2 + 24) = 0u;
  *a2 = &unk_1F0935D00;
  *(a2 + 8) = 2;
  v4 = *(this + 48);
  if (v4 && *(v4 + 161))
  {
    icu::UnicodeString::copyFrom(a2, (v4 + 8), 0);
  }

  else
  {
    icu::UnicodeString::setToBogus(a2);
  }
}

uint64_t icu::RuleBasedNumberFormat::initializeDecimalFormatSymbols(icu::RuleBasedNumberFormat *this, UErrorCode *a2)
{
  result = *(this + 78);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t icu::RuleBasedNumberFormat::initializeDefaultInfinityRule(icu::RuleBasedNumberFormat *this, UErrorCode *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*a2 <= 0)
  {
    result = *(this + 79);
    if (!result)
    {
      memset(v11, 0, sizeof(v11));
      v7 = "I";
      icu::UnicodeString::UnicodeString(v11, 1, &v7);
      icu::UnicodeString::UnicodeString(&v8, (*(this + 78) + 904));
      if ((v9 & 0x8000u) == 0)
      {
        v4 = v9 >> 5;
      }

      else
      {
        v4 = v10;
      }

      icu::UnicodeString::doAppend(v11, &v8, 0, v4);
      icu::UnicodeString::~UnicodeString(v5, &v8);
      operator new();
    }
  }

  else
  {
    result = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t icu::RuleBasedNumberFormat::initializeDefaultNaNRule(icu::RuleBasedNumberFormat *this, UErrorCode *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*a2 <= 0)
  {
    result = *(this + 80);
    if (!result)
    {
      memset(v11, 0, sizeof(v11));
      v7 = "N";
      icu::UnicodeString::UnicodeString(v11, 1, &v7);
      icu::UnicodeString::UnicodeString(&v8, (*(this + 78) + 968));
      if ((v9 & 0x8000u) == 0)
      {
        v4 = v9 >> 5;
      }

      else
      {
        v4 = v10;
      }

      icu::UnicodeString::doAppend(v11, &v8, 0, v4);
      icu::UnicodeString::~UnicodeString(v5, &v8);
      operator new();
    }
  }

  else
  {
    result = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void *icu::RuleBasedNumberFormat::stripWhitespace(icu::RuleBasedNumberFormat *this, icu::UnicodeString *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v25 = 0;
  v24 = 0u;
  v21 = &unk_1F0935D00;
  LOWORD(v22) = 2;
  v3 = *(a2 + 4);
  if ((v3 & 0x8000u) == 0)
  {
    v4 = v3 >> 5;
  }

  else
  {
    v4 = *(a2 + 3);
  }

  if (v4 >= 1)
  {
    v5 = 0;
    do
    {
      v6 = v5;
      if ((v3 & 0x8000) == 0)
      {
LABEL_7:
        v7 = v3 >> 5;
        LODWORD(v8) = v3 >> 5;
        if (v6 >= v7)
        {
          goto LABEL_23;
        }

        goto LABEL_10;
      }

      while (1)
      {
        v8 = *(a2 + 3);
        if (v6 >= v8)
        {
          break;
        }

LABEL_10:
        if (v8 <= v5)
        {
          v10 = 0xFFFFLL;
        }

        else
        {
          if ((v3 & 2) != 0)
          {
            v9 = a2 + 10;
          }

          else
          {
            v9 = *(a2 + 3);
          }

          v10 = *&v9[2 * v6];
        }

        isWhiteSpace = icu::PatternProps::isWhiteSpace(v10);
        v3 = *(a2 + 4);
        if (v10 != 59 && !isWhiteSpace)
        {
          break;
        }

        ++v6;
        ++v5;
        if ((v3 & 0x8000) == 0)
        {
          goto LABEL_7;
        }
      }

      if (v6 < 0)
      {
        v12 = 0;
        if ((v3 & 0x8000) != 0)
        {
          LODWORD(v7) = *(a2 + 3);
        }

        else
        {
          LODWORD(v7) = v3 >> 5;
        }

        goto LABEL_32;
      }

      if ((v3 & 0x8000) != 0)
      {
        LODWORD(v7) = *(a2 + 3);
        if (v7 >= v5)
        {
          v12 = v5;
        }

        else
        {
          v12 = *(a2 + 3);
        }

        goto LABEL_32;
      }

      LODWORD(v7) = v3 >> 5;
LABEL_23:
      if (v7 >= v5)
      {
        v12 = v5;
      }

      else
      {
        v12 = v7;
      }

LABEL_32:
      v13 = icu::UnicodeString::doIndexOf(a2, 0x3Bu, v12, v7 - v12);
      v3 = *(a2 + 4);
      v14 = v3 >> 5;
      v15 = *(a2 + 3);
      if ((v3 & 0x8000u) == 0)
      {
        v16 = v3 >> 5;
      }

      else
      {
        v16 = *(a2 + 3);
      }

      if (v13 == -1)
      {
        icu::UnicodeString::doAppend(&v21, a2, v5, (v16 - v5));
        break;
      }

      if (v13 < v16)
      {
        v17 = v13 + 1;
        icu::UnicodeString::doAppend(&v21, a2, v5, (v13 - v5 + 1));
        v3 = *(a2 + 4);
        v15 = *(a2 + 3);
        v14 = v3 >> 5;
        v5 = v17;
      }

      if ((v3 & 0x8000u) == 0)
      {
        v15 = v14;
      }
    }

    while (v5 < v15);
  }

  icu::UnicodeString::copyFrom(a2, &v21, 0);
  result = icu::UnicodeString::~UnicodeString(v18, &v21);
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

void icu::RuleBasedNumberFormat::setContext(uint64_t a1, int a2, int *a3)
{
  icu::NumberFormat::setContext(a1, a2, a3);
  if (*a3 <= 0)
  {
    if ((a2 - 259) <= 1 && !*(a1 + 736))
    {
      icu::RuleBasedNumberFormat::initCapitalizationContextInfo(a1, (a1 + 392));
      *(a1 + 736) = 1;
    }

    if (!*(a1 + 744))
    {
      if (a2 != 258)
      {
        if (a2 == 260)
        {
          if (!*(a1 + 738))
          {
            return;
          }
        }

        else if (a2 != 259 || !*(a1 + 737))
        {
          return;
        }
      }

      *a3 = 0;
      SentenceInstance = icu::BreakIterator::createSentenceInstance((a1 + 392), a3, v6, v7);
      *(a1 + 744) = SentenceInstance;
      if (*a3 >= 1)
      {
        if (SentenceInstance)
        {
          (*(*SentenceInstance + 8))(SentenceInstance);
        }

        *(a1 + 744) = 0;
      }
    }
  }
}

void icu::RuleBasedNumberFormat::initCapitalizationContextInfo(icu::RuleBasedNumberFormat *this, const icu::Locale *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  icu::Locale::Locale(v13, v12, 0, 0, 0, 0);
  BaseName = 0;
  if (!icu::Locale::operator==(a2, v12))
  {
    BaseName = icu::Locale::getBaseName(a2);
  }

  icu::Locale::~Locale(v12);
  v12[0] = 0;
  v5 = ures_open(0, BaseName, v12);
  v6 = ures_getByKeyWithFallback(v5, "contextTransforms", v5, v12);
  v7 = ures_getByKeyWithFallback(v6, "number-spellout", v6, v12);
  v8 = v7;
  if (v12[0] <= 0)
  {
    if (v7)
    {
      v11 = 0;
      IntVector = ures_getIntVector(v7, &v11, v12);
      if (v12[0] <= 0 && IntVector && v11 >= 2)
      {
        *(this + 737) = *IntVector;
        *(this + 738) = IntVector[1];
      }
    }
  }

  ures_close(v8);
  v10 = *MEMORY[0x1E69E9840];
}

uint64_t icu::RuleBasedNumberFormat::getCollator(icu::RuleBasedNumberFormat *this, uint64_t a2, UErrorCode *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!*(this + 45))
  {
    goto LABEL_9;
  }

  result = *(this + 77);
  if (!result)
  {
    if (*(this + 652))
    {
      v18 = U_ZERO_ERROR;
      Instance = icu::Collator::createInstance((this + 392), &v18, a3);
      v6 = Instance;
      if (v18 <= U_ZERO_ERROR)
      {
        if (!Instance)
        {
          goto LABEL_8;
        }

        v7 = *Instance;
        v9 = **Instance;
        if (v10)
        {
          v11 = v10;
          if (*(this + 82))
          {
            memset(v19, 0, sizeof(v19));
            Rules = icu::RuleBasedCollator::getRules(v10);
            icu::UnicodeString::UnicodeString(v19, Rules);
            v13 = *(this + 82);
            v14 = *(v13 + 8);
            v15 = v14;
            v16 = v14 >> 5;
            if (v15 >= 0)
            {
              v17 = v16;
            }

            else
            {
              v17 = *(v13 + 12);
            }

            icu::UnicodeString::doAppend(v19, v13, 0, v17);
            operator new();
          }

          icu::RuleBasedCollator::setAttribute(v10, 4, 0x11u, &v18);
          *(this + 77) = v11;
          goto LABEL_8;
        }
      }

      else
      {
        if (!Instance)
        {
LABEL_8:
          result = *(this + 77);
          goto LABEL_10;
        }

        v7 = *Instance;
      }

      (*(v7 + 1))(v6);
      goto LABEL_8;
    }

LABEL_9:
    result = 0;
  }

LABEL_10:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t icu::RuleBasedNumberFormat::adoptDecimalFormatSymbols(uint64_t this, icu::DecimalFormatSymbols *a2)
{
  if (a2)
  {
    v3 = this;
    v4 = *(this + 624);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    *(v3 + 624) = a2;
    v10 = U_ZERO_ERROR;
    v5 = *(v3 + 632);
    if (v5)
    {
      v6 = sub_19534CDC4(v5);
      MEMORY[0x19A8B2600](v6, 0x10F2C40E3085301);
    }

    *(v3 + 632) = 0;
    icu::RuleBasedNumberFormat::initializeDefaultInfinityRule(v3, &v10);
    v7 = *(v3 + 640);
    if (v7)
    {
      v8 = sub_19534CDC4(v7);
      MEMORY[0x19A8B2600](v8, 0x10F2C40E3085301);
    }

    *(v3 + 640) = 0;
    this = icu::RuleBasedNumberFormat::initializeDefaultNaNRule(v3, &v10);
    if (*(v3 + 360) && *(v3 + 376) >= 1)
    {
      v9 = 0;
      do
      {
        this = sub_19534B770(*(*(v3 + 360) + 8 * v9++));
      }

      while (v9 < *(v3 + 376));
    }
  }

  return this;
}

uint64_t sub_19539E150(uint64_t a1)
{
  if (*(a1 + 16) && *(a1 + 12) >= 1)
  {
    v2 = 0;
    do
    {
      (*(a1 + 16))(*(*a1 + 8 * v2++));
    }

    while (v2 < *(a1 + 12));
  }

  free(*a1);
  return a1;
}

icu::Transliterator *sub_19539E1CC(icu::Transliterator *a1, UChar **a2, uint64_t a3, icu::UnicodeFilter *a4)
{
  v6 = icu::Transliterator::Transliterator(a1, a2, a4);
  *v6 = &unk_1F09416E8;
  *(v6 + 11) = a3;
  *(v6 + 96) = 0;
  v7 = sub_1953A34C8(a3 + 8);
  icu::Transliterator::setMaximumContextLength(a1, v7);
  return a1;
}

icu::Transliterator *sub_19539E238(icu::Transliterator *a1, UChar **a2, uint64_t a3, char a4)
{
  v7 = icu::Transliterator::Transliterator(a1, a2, 0);
  *v7 = &unk_1F09416E8;
  *(v7 + 11) = a3;
  *(v7 + 96) = a4;
  v8 = sub_1953A34C8(a3 + 8);
  icu::Transliterator::setMaximumContextLength(a1, v8);
  return a1;
}

icu::Transliterator *sub_19539E2B0(icu::Transliterator *a1, uint64_t a2)
{
  v4 = icu::Transliterator::Transliterator(a1, a2);
  *v4 = &unk_1F09416E8;
  *(v4 + 11) = *(a2 + 88);
  v5 = *(a2 + 96);
  *(v4 + 96) = v5;
  if (v5)
  {
    operator new();
  }

  return a1;
}

void sub_19539E330(icu::Transliterator *this)
{
  *this = &unk_1F09416E8;
  if (*(this + 96))
  {
    v2 = *(this + 11);
    if (v2)
    {
      v3 = sub_19539E9C4(v2);
      MEMORY[0x19A8B2600](v3, 0x10A0C40CAFF8206);
    }
  }

  icu::Transliterator::~Transliterator(this);
}

void sub_19539E3AC(icu::Transliterator *a1)
{
  sub_19539E330(a1);

  JUMPOUT(0x19A8B2600);
}

void sub_19539E430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 + 8);
  v8 = *(a3 + 12);
  umtx_lock(0);
  v10 = qword_1EAEC9F20;
  umtx_unlock(0);
  if (v10 != a2)
  {
    umtx_lock(&unk_1EAEC9ED0);
    umtx_lock(0);
    qword_1EAEC9F20 = a2;
    umtx_unlock(0);
  }

  if (*(a1 + 88) && *(a3 + 8) < *(a3 + 12))
  {
    v11 = v8 - v9;
    v12 = 16 * (v8 - v9);
    v13 = 1;
    v14 = v11 >> 28;
    do
    {
      if (!sub_1953A3994(*(a1 + 88) + 8, a2, a3, a4))
      {
        break;
      }

      v15 = v14 || v12 >= v13;
      v16 = !v15;
      if (*(a3 + 8) >= *(a3 + 12))
      {
        break;
      }

      ++v13;
    }

    while (!v16);
  }

  if (v10 != a2)
  {
    umtx_lock(0);
    qword_1EAEC9F20 = 0;
    umtx_unlock(0);

    umtx_unlock(&unk_1EAEC9ED0);
  }
}

uint64_t sub_19539E59C(uint64_t a1, int *a2)
{
  sub_1953A31EC(a1 + 8);
  *(a1 + 1064) = 0;
  if (*a2 <= 0 && (uhash_init((a1 + 1072), uhash_hashUnicodeString, uhash_compareUnicodeString, 0, a2), *a2 < 1))
  {
    *(a1 + 1064) = a1 + 1072;
    uhash_setKeyDeleter(a1 + 1072, uprv_deleteUObject);
    v5 = *a2;
    *(a1 + 1152) = 0;
    *(a1 + 1160) = 1;
    if (v5 <= 0)
    {
      uhash_setValueDeleter(*(a1 + 1064), uprv_deleteUObject);
      *(a1 + 1152) = 0;
      *(a1 + 1164) = 0;
    }
  }

  else
  {
    *(a1 + 1152) = 0;
    *(a1 + 1160) = 1;
  }

  return a1;
}

uint64_t sub_19539E68C(uint64_t a1, uint64_t a2)
{
  sub_1953A33B4(a1 + 8, a2 + 8);
  *(a1 + 1064) = 0;
  v13 = 0;
  uhash_init((a1 + 1072), uhash_hashUnicodeString, uhash_compareUnicodeString, 0, &v13);
  if (v13 <= 0)
  {
    *(a1 + 1064) = a1 + 1072;
    uhash_setKeyDeleter(a1 + 1072, uprv_deleteUObject);
  }

  *(a1 + 1160) = 1;
  *(a1 + 1162) = *(a2 + 1162);
  *(a1 + 1164) = *(a2 + 1164);
  v12 = 0;
  uhash_setValueDeleter(*(a1 + 1064), uprv_deleteUObject);
  v11 = -1;
  if (uhash_nextElement(*(a2 + 1064), &v11))
  {
    operator new();
  }

  *(a1 + 1152) = 0;
  if (!*(a2 + 1152))
  {
    v4 = 0;
LABEL_13:
    LODWORD(v5) = 0;
LABEL_14:
    if (v12 < 1)
    {
      sub_1953A3468(a1 + 8, a1);
      return a1;
    }

    goto LABEL_17;
  }

  v4 = malloc_type_malloc(8 * *(a1 + 1164), 0x2004093837F09uLL);
  *(a1 + 1152) = v4;
  if (!v4)
  {
    return a1;
  }

  if (*(a1 + 1164) < 1)
  {
    goto LABEL_13;
  }

  v5 = 0;
  while (1)
  {
    v6 = *(*(a2 + 1152) + 8 * v5);
    *(*(a1 + 1152) + 8 * v5) = (*(*v6 + 24))(v6);
    v4 = *(a1 + 1152);
    if (!v4[v5])
    {
      break;
    }

    if (++v5 >= *(a1 + 1164))
    {
      goto LABEL_14;
    }
  }

  v12 = 7;
LABEL_17:
  if (v5 >= 1)
  {
    v7 = v5 - 1;
    do
    {
      v8 = *(*(a1 + 1152) + 8 * v7);
      if (v8)
      {
        (*(*v8 + 8))(v8);
      }

      v9 = v7-- + 1;
    }

    while (v9 > 1);
    v4 = *(a1 + 1152);
  }

  free(v4);
  *(a1 + 1152) = 0;
  return a1;
}

uint64_t sub_19539E924(uint64_t a1)
{
  if (*(a1 + 1160))
  {
    if (*(a1 + 1152))
    {
      v2 = *(a1 + 1164);
      if (v2 >= 1)
      {
        for (i = 0; i < v2; ++i)
        {
          v4 = *(*(a1 + 1152) + 8 * i);
          if (v4)
          {
            (*(*v4 + 8))(v4);
            v2 = *(a1 + 1164);
          }
        }
      }
    }
  }

  free(*(a1 + 1152));
  v5 = *(a1 + 1064);
  if (v5)
  {
    uhash_close(v5);
  }

  sub_1953A342C(a1 + 8);
  return a1;
}

uint64_t sub_19539E9C8(uint64_t a1, int a2)
{
  v2 = a2 - *(a1 + 1162);
  if (v2 < 0 || v2 >= *(a1 + 1164))
  {
    return 0;
  }

  else
  {
    return *(*(a1 + 1152) + 8 * v2);
  }
}

uint64_t sub_19539E9F4(uint64_t a1, int a2)
{
  v2 = a2 - *(a1 + 1162);
  if (v2 >= 0 && v2 < *(a1 + 1164) && (v3 = *(*(a1 + 1152) + 8 * v2)) != 0)
  {
    return (*(*v3 + 32))();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19539EA44(uint64_t a1, int a2)
{
  v2 = a2 - *(a1 + 1162);
  if (v2 >= 0 && v2 < *(a1 + 1164) && (v3 = *(*(a1 + 1152) + 8 * v2)) != 0)
  {
    return (*(*v3 + 40))();
  }

  else
  {
    return 0;
  }
}

void sub_19539EA98(icu::SymbolTable *a1)
{
  icu::SymbolTable::~SymbolTable(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_19539EADC(uint64_t a1, int a2)
{
  v2 = a2 - *(*(a1 + 8) + 1162);
  if (v2 < 0)
  {
    return 0;
  }

  v3 = *(a1 + 16);
  if (v2 >= *(v3 + 2))
  {
    return 0;
  }

  else
  {
    return icu::UVector::elementAt(v3, v2);
  }
}

void sub_19539EB08(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, uint64_t a4@<X8>)
{
  v6 = 0;
  v7 = *(a2 + 8);
  *(a4 + 8) = 0u;
  *(a4 + 24) = 0u;
  *(a4 + 40) = 0u;
  *(a4 + 56) = 0;
  *a4 = &unk_1F0935D00;
  *(a4 + 8) = 2;
  v8 = a1 + 10;
  if (v7 <= a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = v7;
  }

  v21 = v9;
  v10 = v9 - v7;
  v11 = v7;
  while (1)
  {
    if (v10 == v6)
    {
      v19 = v21;
      goto LABEL_21;
    }

    v12 = v6;
    v13 = v7 + v6;
    v14 = *(a1 + 8);
    v15 = (v14 & 0x8000u) == 0 ? v14 >> 5 : *(a1 + 12);
    if (v15 > v13)
    {
      break;
    }

    v17 = 0xFFFF;
    if (!v12)
    {
      goto LABEL_16;
    }

LABEL_17:
    isIDPart = u_isIDPart(v17);
    ++v11;
    v6 = v12 + 1;
    if (!isIDPart)
    {
      v19 = v7 + v12;
      goto LABEL_21;
    }
  }

  if ((v14 & 2) != 0)
  {
    v16 = v8;
  }

  else
  {
    v16 = *(a1 + 24);
  }

  v17 = *(v16 + 2 * v7 + 2 * v12);
  if (v12)
  {
    goto LABEL_17;
  }

LABEL_16:
  if (u_isIDStart(v17))
  {
    goto LABEL_17;
  }

  v19 = v11;
LABEL_21:
  if (v19 != v7)
  {
    *(a2 + 8) = v19;
    v20 = *(*a1 + 24);

    v20(a1, v7);
  }
}

uint64_t sub_19539ECAC(uint64_t a1, int a2)
{
  v2 = a2 - *(*(a1 + 8) + 1162);
  if (v2 < 0)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (v2 >= *(v3 + 2))
  {
    return 1;
  }

  result = icu::UVector::elementAt(v3, v2);
  if (result)
  {
    return (*(*result + 32))(result) != 0;
  }

  return result;
}

uint64_t sub_19539ED20(uint64_t a1, int a2)
{
  v2 = a2 - *(*(a1 + 8) + 1162);
  if (v2 < 0)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (v2 >= *(v3 + 2))
  {
    return 1;
  }

  result = icu::UVector::elementAt(v3, v2);
  if (result)
  {
    return (*(*result + 40))(result) != 0;
  }

  return result;
}

uint64_t sub_19539ED94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, UErrorCode *a5)
{
  v17 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 16);
  if (v10)
  {
    icu::UnicodeString::unBogus(a1 + 8);
  }

  else
  {
    if ((v10 & 0x8000) == 0)
    {
      if (!(v10 >> 5))
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    if (*(a1 + 20))
    {
LABEL_7:
      *(a1 + 16) &= 0x1Eu;
    }
  }

LABEL_8:
  v15 = &unk_195491B20;
  icu::UnicodeString::UnicodeString(v16, 1, &v15);
  v11 = sub_19539EED8(a1, a2, a3, a4, a1 + 8, v16, 0, a5);
  icu::UnicodeString::~UnicodeString(v12, v16);
  if (*(a1 + 84) >= 1 && *(a1 + 72) != *(a1 + 88))
  {
    sub_1953A128C(*(a1 + 104), 65545, a2, a3, a5);
    v11 = a3;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t sub_19539EED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, UErrorCode *a8)
{
  v130 = *MEMORY[0x1E69E9840];
  v123 = a3;
  v121 = &unk_1F0932C70;
  v122 = 0xFFFFFFFF00000000;
  v126 = 0u;
  v129 = 0;
  v128 = 0u;
  v127 = 0u;
  v125 = &unk_1F0935D00;
  LOWORD(v126) = 2;
  v9 = *(a5 + 8);
  v10 = v9;
  LODWORD(v11) = v9 >> 5;
  if (v10 >= 0)
  {
    v11 = v11;
  }

  else
  {
    v11 = *(a5 + 12);
  }

  if (a3 >= a4)
  {
    goto LABEL_217;
  }

  v114 = v11;
  v18 = a2 + 10;
  v115 = a5 + 10;
  LODWORD(v19) = a3;
  while (1)
  {
    v123 = v19 + 1;
    v20 = *(a2 + 8);
    if ((v20 & 0x8000u) == 0)
    {
      v21 = v20 >> 5;
    }

    else
    {
      v21 = *(a2 + 12);
    }

    if (v21 <= v19)
    {
      v23 = 0xFFFFLL;
    }

    else
    {
      if ((v20 & 2) != 0)
      {
        v22 = v18;
      }

      else
      {
        v22 = *(a2 + 24);
      }

      v23 = *(v22 + 2 * v19);
    }

    if (icu::PatternProps::isWhiteSpace(v23))
    {
      goto LABEL_20;
    }

    if (u_strchr(asc_195491B24, v23))
    {
      break;
    }

    if (*(a1 + 93))
    {
      v26 = *(a1 + 104);
      v111 = 65542;
      goto LABEL_216;
    }

    if (icu::UnicodeSet::resemblesPattern(a2, (v123 - 1)))
    {
      LODWORD(v122) = v123 - 1;
      v24 = *(a1 + 104);
      sub_19539FD6C();
    }

    if (v23 == 39)
    {
      v27 = *(a2 + 8);
      if (v123 < 0)
      {
        v29 = 0;
        if ((v27 & 0x8000) != 0)
        {
          v28 = *(a2 + 12);
        }

        else
        {
          v28 = v27 >> 5;
        }
      }

      else if ((v27 & 0x8000) != 0)
      {
        v28 = *(a2 + 12);
        if (v28 >= v123)
        {
          v29 = v123;
        }

        else
        {
          v29 = *(a2 + 12);
        }
      }

      else
      {
        v28 = v27 >> 5;
        if (v28 >= v123)
        {
          v29 = v123;
        }

        else
        {
          v29 = v28;
        }
      }

      v62 = icu::UnicodeString::doIndexOf(a2, 0x27u, v29, v28 - v29);
      if (v62 == v123)
      {
        strcpy(v124, "'");
        icu::UnicodeString::doAppend(a5, v124, 0, 1);
        v11 = ++v123;
      }

      else
      {
        v63 = v62;
        v64 = *(a5 + 8);
        v65 = v64;
        v66 = v64 >> 5;
        if (v65 < 0)
        {
          v66 = *(a5 + 12);
        }

        v117 = v66;
        if ((v62 & 0x80000000) != 0)
        {
LABEL_203:
          v26 = *(a1 + 104);
          v111 = 65556;
          goto LABEL_216;
        }

        while (1)
        {
          if (v126)
          {
            icu::UnicodeString::unBogus(&v125);
          }

          else
          {
            if ((v126 & 0x8000u) == 0)
            {
              v67 = v126 >> 5;
            }

            else
            {
              v67 = DWORD1(v126);
            }

            if (v67)
            {
              LOBYTE(v126) = v126 & 0x1E;
              LOWORD(v126) = v126;
            }
          }

          (*(*a2 + 24))(a2, v123, v63, &v125);
          v68 = (v126 & 0x8000u) == 0 ? v126 >> 5 : DWORD1(v126);
          icu::UnicodeString::doAppend(a5, &v125, 0, v68);
          v69 = v63 + 1;
          v123 = v63 + 1;
          if (v63 + 1 >= a4)
          {
            break;
          }

          v70 = *(a2 + 8);
          v71 = v70;
          v72 = v70 >> 5;
          v73 = (v70 & 0x8000u) == 0 ? v70 >> 5 : *(a2 + 12);
          if (v73 <= v69)
          {
            break;
          }

          v74 = (v70 & 2) != 0 ? v18 : *(a2 + 24);
          if (*(v74 + 2 * v69) != 39)
          {
            break;
          }

          v75 = v63 + 2;
          if (v72 >= v63 + 2)
          {
            v72 = v63 + 2;
          }

          if (*(a2 + 12) < v75)
          {
            v75 = *(a2 + 12);
          }

          if (v71 >= 0)
          {
            v76 = v72;
          }

          else
          {
            v76 = v75;
          }

          v63 = icu::UnicodeString::doIndexOf(a2, 0x27u, v76, v73 - v76);
          if ((v63 & 0x80000000) != 0)
          {
            goto LABEL_203;
          }
        }

        v11 = *(a5 + 8);
        if ((v11 & 0x8000u) == 0)
        {
          v77 = v11 >> 5;
        }

        else
        {
          v77 = *(a5 + 12);
        }

        v78 = v117;
        if (v117 < v77)
        {
          v26 = *(a1 + 104);
          v79 = *(a5 + 24);
          if ((v11 & 2) != 0)
          {
            v79 = v115;
          }

          v11 = *(*(v26 + 96) + 1162);
          v80 = (v79 + 2 * v117);
          while (1)
          {
            if (v77 > v78)
            {
              v81 = *v80;
              if (v81 >= v11 && v81 < *(v26 + 426))
              {
                break;
              }
            }

            ++v78;
            ++v80;
            if (v77 == v78)
            {
              goto LABEL_20;
            }
          }

LABEL_205:
          v111 = 65566;
          goto LABEL_216;
        }
      }
    }

    else if (v23 == 92)
    {
      if (v123 == a4)
      {
        v26 = *(a1 + 104);
        v111 = 65552;
        goto LABEL_216;
      }

      v25 = icu::UnicodeString::unescapeAt(a2, &v123);
      v26 = *(a1 + 104);
      if (v25 == -1)
      {
        v111 = 65540;
        goto LABEL_216;
      }

      if (v25 >= *(*(v26 + 96) + 1162) && v25 < *(v26 + 426))
      {
        goto LABEL_205;
      }

      icu::UnicodeString::append(a5, v25);
    }

    else
    {
      v26 = *(a1 + 104);
      if (*(*(v26 + 96) + 1162) <= v23 && *(v26 + 426) > v23)
      {
        goto LABEL_205;
      }

      v30 = *(a6 + 8);
      v31 = v30;
      v32 = v30 >> 5;
      if (v31 >= 0)
      {
        v33 = v32;
      }

      else
      {
        v33 = *(a6 + 12);
      }

      if ((icu::UnicodeString::doIndexOf(a6, v23, 0, v33) & 0x80000000) == 0)
      {
        sub_1953A128C(*(a1 + 104), 65567, a2, a3, a8);
      }

      if (v23 <= 62)
      {
        if (v23 > 40)
        {
          v11 = (v23 - 42);
          if (v11 < 2)
          {
            goto LABEL_73;
          }

          if (v23 == 46)
          {
            v40 = sub_1953A0220(*(a1 + 104));
            goto LABEL_64;
          }

          if (v23 == 41)
          {
            goto LABEL_204;
          }

          goto LABEL_173;
        }

        if (v23 != 36)
        {
          if (v23 == 38)
          {
            goto LABEL_82;
          }

          if (v23 == 40)
          {
            v36 = *(a5 + 8);
            v37 = *(a5 + 12);
            ++*(a1 + 96);
            v38 = v123;
            v120 = L"{}|@";
            icu::UnicodeString::UnicodeString(v124, 1, &v120);
            v123 = sub_19539EED8(a1, a2, v38, a4, a5, v124, 1, a8);
            icu::UnicodeString::~UnicodeString(v39, v124);
            operator new();
          }

LABEL_173:
          if ((vmaxv_u16(vcgt_u16(0x1A001A000AFFA2, vadd_s16(vdup_n_s16(v23), 0xFF9FFFBFFFD0FF81))) & 1) == 0)
          {
            v26 = *(a1 + 104);
            v111 = 65555;
            goto LABEL_216;
          }

          LOWORD(v124[0]) = v23;
          goto LABEL_175;
        }

        if (v123 != a4)
        {
          v91 = *(a2 + 8);
          if ((v91 & 0x8000u) == 0)
          {
            v92 = v91 >> 5;
          }

          else
          {
            v92 = *(a2 + 12);
          }

          if (v92 <= v123)
          {
            v94 = 0xFFFF;
          }

          else
          {
            if ((v91 & 2) != 0)
            {
              v93 = v18;
            }

            else
            {
              v93 = *(a2 + 24);
            }

            v94 = *(v93 + 2 * v123);
          }

          if ((u_digit(v94, 10) - 1) > 8)
          {
            LODWORD(v122) = v123;
            memset(v124, 0, sizeof(v124));
            (*(**(*(a1 + 104) + 184) + 32))(v124);
            v99 = WORD4(v124[0]) >> 5;
            if (SWORD4(v124[0]) < 0)
            {
              v99 = HIDWORD(v124[0]);
            }

            if (v99)
            {
              v123 = v122;
              if (*(a5 + 8) < 0)
              {
                v100 = *(a5 + 12);
              }

              sub_1953A0128(*(a1 + 104), v124, a5, a8);
              LODWORD(v102) = *(a5 + 8);
              v101 = v102;
              LODWORD(v102) = v102 >> 5;
              if (v101 >= 0)
              {
                v102 = v102;
              }

              else
              {
                v102 = *(a5 + 12);
              }
            }

            else
            {
              v102 = 1;
              *(a1 + 93) = 1;
            }

            icu::UnicodeString::~UnicodeString(v102, v124);
            goto LABEL_20;
          }

          v98 = icu::ICU_Utility::parseNumber(a2, &v123, 0xA);
          v26 = *(a1 + 104);
          if (v98 < 0)
          {
            v111 = 65553;
            goto LABEL_216;
          }

          v40 = sub_19539FEFC(v26, v98, a8);
LABEL_64:
          LOWORD(v124[0]) = v40;
LABEL_175:
          icu::UnicodeString::doAppend(a5, v124, 0, 1);
          goto LABEL_20;
        }

        v11 = 1;
        *(a1 + 93) = 1;
      }

      else if (v23 <= 122)
      {
        switch(v23)
        {
          case '?':
LABEL_73:
            v44 = *(a5 + 8);
            if (!a7 || ((v44 & 0x8000u) == 0 ? (v45 = v44 >> 5) : (v45 = *(a5 + 12)), v45 != v114))
            {
              if ((v44 & 0x8000) != 0)
              {
                v82 = *(a5 + 12);
              }

              operator new();
            }

            v26 = *(a1 + 104);
            v111 = 65546;
            goto LABEL_216;
          case '@':
            v87 = *(a1 + 84);
            if (v87 < 0)
            {
              v95 = *(a5 + 8);
              v96 = v95;
              v97 = v95 >> 5;
              if (v96 < 0)
              {
                v97 = *(a5 + 12);
              }

              if (v97 >= 1)
              {
LABEL_211:
                v26 = *(a1 + 104);
                v111 = 65545;
                goto LABEL_216;
              }

              v11 = (v87 - 1);
              goto LABEL_171;
            }

            if (v87)
            {
              v88 = *(a5 + 8);
              v89 = v88;
              v90 = v88 >> 5;
              if (v89 < 0)
              {
                v90 = *(a5 + 12);
              }

              if (v90 != *(a1 + 88) || (*(a1 + 72) & 0x80000000) == 0)
              {
                goto LABEL_211;
              }

              v11 = (v87 + 1);
LABEL_171:
              *(a1 + 84) = v11;
              break;
            }

            v103 = *(a1 + 72);
            if (!v103)
            {
              v108 = *(a5 + 8);
              v109 = v108;
              v110 = v108 >> 5;
              if (v109 < 0)
              {
                v110 = *(a5 + 12);
              }

              if (v110)
              {
                goto LABEL_211;
              }

              v11 = 0xFFFFFFFFLL;
              goto LABEL_171;
            }

            if ((v103 & 0x80000000) == 0)
            {
              goto LABEL_211;
            }

            v104 = *(a5 + 8);
            v105 = v104;
            v106 = v104 >> 5;
            if (v105 >= 0)
            {
              v107 = v106;
            }

            else
            {
              v107 = *(a5 + 12);
            }

            v11 = 1;
            *(a1 + 84) = 1;
            *(a1 + 88) = v107;
            break;
          case '^':
            v41 = *(a5 + 8);
            v42 = v41;
            v43 = v41 >> 5;
            if (v42 < 0)
            {
              v43 = *(a5 + 12);
            }

            if (v43 || *(a1 + 92))
            {
              v26 = *(a1 + 104);
              v111 = 65544;
              goto LABEL_216;
            }

            v11 = 1;
            *(a1 + 92) = 1;
            break;
          default:
            goto LABEL_173;
        }
      }

      else if (v23 > 124)
      {
        if (v23 != 125)
        {
          if (v23 == 8710)
          {
LABEL_82:
            v119 = v123;
            v46 = sub_1953E9194(a2, &v119);
            if (v46)
            {
              v47 = v46;
              if (icu::ICU_Utility::parseChar(a2, &v119, 40))
              {
                v50 = sub_1953E803C(v47, v48, v49);
                v51 = sub_1953A20AC(v47);
                MEMORY[0x19A8B2600](v51, 0x1092C40C5D1B5A1);
                if (v50)
                {
                  v52 = *(a5 + 8);
                  v53 = v52;
                  v54 = v52 >> 5;
                  if (v53 >= 0)
                  {
                    v55 = v54;
                  }

                  else
                  {
                    v55 = *(a5 + 12);
                  }

                  v56 = v119;
                  v118 = "^";
                  icu::UnicodeString::UnicodeString(v124, 1, &v118);
                  v123 = sub_19539EED8(a1, a2, v56, a4, a5, v124, 1, a8);
                  icu::UnicodeString::~UnicodeString(v57, v124);
                  memset(v124 + 8, 0, 56);
                  *&v124[0] = &unk_1F0935D00;
                  WORD4(v124[0]) = 2;
                  v58 = *(a5 + 8);
                  v59 = v58;
                  v60 = v58 >> 5;
                  if (v59 >= 0)
                  {
                    v61 = v60;
                  }

                  else
                  {
                    v61 = *(a5 + 12);
                  }

                  (*(*a5 + 24))(a5, v55, v61, v124);
                  operator new();
                }
              }
            }

            v26 = *(a1 + 104);
            v111 = 65570;
            goto LABEL_216;
          }

          goto LABEL_173;
        }

        if ((*(a1 + 80) & 0x80000000) == 0)
        {
          v26 = *(a1 + 104);
          v111 = 65551;
          goto LABEL_216;
        }

        v85 = *(a5 + 8);
        v86 = v85;
        LODWORD(v11) = v85 >> 5;
        if (v86 >= 0)
        {
          v11 = v11;
        }

        else
        {
          v11 = *(a5 + 12);
        }

        *(a1 + 80) = v11;
      }

      else if (v23 == 123)
      {
        if ((*(a1 + 76) & 0x80000000) == 0)
        {
          v26 = *(a1 + 104);
          v111 = 65549;
          goto LABEL_216;
        }

        v83 = *(a5 + 8);
        v84 = v83;
        LODWORD(v11) = v83 >> 5;
        if (v84 >= 0)
        {
          v11 = v11;
        }

        else
        {
          v11 = *(a5 + 12);
        }

        *(a1 + 76) = v11;
      }

      else
      {
        if ((*(a1 + 72) & 0x80000000) == 0)
        {
          v26 = *(a1 + 104);
          v111 = 65550;
          goto LABEL_216;
        }

        v34 = *(a5 + 8);
        v35 = v34;
        LODWORD(v11) = v34 >> 5;
        if (v35 >= 0)
        {
          v11 = v11;
        }

        else
        {
          v11 = *(a5 + 12);
        }

        *(a1 + 72) = v11;
      }
    }

LABEL_20:
    v19 = v123;
    if (v123 >= a4)
    {
      goto LABEL_218;
    }
  }

  if (!a7)
  {
LABEL_204:
    v19 = v123;
    goto LABEL_218;
  }

  v26 = *(a1 + 104);
  v111 = 65563;
LABEL_216:
  sub_1953A128C(v26, v111, a2, a3, a8);
LABEL_217:
  v19 = a3;
LABEL_218:
  icu::UnicodeString::~UnicodeString(v11, &v125);
  icu::ParsePosition::~ParsePosition(&v121);
  v112 = *MEMORY[0x1E69E9840];
  return v19;
}

uint64_t sub_19539FDFC(uint64_t result, int a2, void *a3, UErrorCode *a4)
{
  v7 = result;
  if (*(result + 392) < a2)
  {
    result = icu::UVector::setSize((result + 384), a2, a4);
  }

  if (*a4 <= 0)
  {
    v8 = sub_19539FEFC(v7, a2, a4);
    v9 = *(v7[12] + 1162);
    v10 = a2 - 1;
    result = icu::UVector::elementAt((v7 + 48), v10);
    if (result || (v11 = v8 - v9, (result = icu::UVector::elementAt((v7 + 24), v11)) != 0))
    {
      if (*a4 <= 0)
      {
        *a4 = U_INTERNAL_TRANSLITERATOR_ERROR;
      }
    }

    else
    {
      icu::UVector::setElementAt((v7 + 48), a3, v10);

      return icu::UVector::setElementAt((v7 + 24), a3, v11);
    }
  }

  return result;
}

uint64_t sub_19539FEFC(uint64_t a1, signed int a2, UErrorCode *a3)
{
  v6 = *(*(a1 + 96) + 1162) - 1;
  while (1)
  {
    v7 = *(a1 + 328);
    v8 = *(a1 + 328) < 0 ? *(a1 + 332) : v7 >> 5;
    if (v8 >= a2)
    {
      break;
    }

    v13 = v6;
    icu::UnicodeString::doAppend(a1 + 320, &v13, 0, 1);
  }

  v9 = a2 - 1;
  if (v8 <= v9)
  {
    v11 = 0xFFFFLL;
  }

  else
  {
    if ((v7 & 2) != 0)
    {
      v10 = a1 + 330;
    }

    else
    {
      v10 = *(a1 + 344);
    }

    v11 = *(v10 + 2 * v9);
  }

  if (v11 == v6)
  {
    v11 = *(a1 + 424);
    if (v11 >= *(a1 + 426))
    {
      v11 = 0;
      *a3 = U_VARIABLE_RANGE_EXHAUSTED;
    }

    else
    {
      *(a1 + 424) = v11 + 1;
      icu::UVector::addElement((a1 + 192), 0, a3);
      icu::UnicodeString::setCharAt((a1 + 320), v9, v11);
    }
  }

  return v11;
}

uint64_t sub_1953A0004(uint64_t a1, void *a2, UErrorCode *a3)
{
  if (*(a1 + 200) < 1)
  {
LABEL_5:
    if (*(a1 + 424) >= *(a1 + 426))
    {
      if (a2)
      {
        (*(*a2 + 8))(a2);
      }

      v7 = 0;
      *a3 = U_VARIABLE_RANGE_EXHAUSTED;
    }

    else
    {
      icu::UVector::addElement((a1 + 192), a2, a3);
      if (*a3 < 1)
      {
        v7 = *(a1 + 424);
        *(a1 + 424) = v7 + 1;
      }

      else
      {
        if (a2)
        {
          (*(*a2 + 8))(a2);
        }

        return 0;
      }
    }
  }

  else
  {
    v6 = 0;
    while (icu::UVector::elementAt((a1 + 192), v6) != a2)
    {
      if (++v6 >= *(a1 + 200))
      {
        goto LABEL_5;
      }
    }

    return (*(*(a1 + 96) + 1162) + v6);
  }

  return v7;
}

uint64_t sub_1953A0128(uint64_t a1, UChar **a2, uint64_t a3, _DWORD *a4)
{
  result = uhash_get(*(a1 + 232), a2);
  if (!result)
  {
    if (*(a1 + 440) < 0)
    {
      if (!*(a1 + 444))
      {
        goto LABEL_12;
      }
    }

    else if (!(*(a1 + 440) >> 5))
    {
LABEL_12:
      result = icu::UnicodeString::operator=((a1 + 432), a2);
      v13 = *(a1 + 426);
      if (*(a1 + 424) < v13)
      {
        v14 = v13 - 1;
        *(a1 + 426) = v14;
        v15 = v14;
        return icu::UnicodeString::doAppend(a3, &v15, 0, 1);
      }
    }

    *a4 = 1;
    return result;
  }

  v9 = *(result + 8);
  v10 = v9;
  v11 = v9 >> 5;
  if (v10 >= 0)
  {
    v12 = v11;
  }

  else
  {
    v12 = *(result + 12);
  }

  return icu::UnicodeString::doAppend(a3, result, 0, v12);
}

uint64_t sub_1953A0220(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  result = *(a1 + 496);
  if (result == 0xFFFF)
  {
    operator new();
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

double sub_1953A0304(uint64_t a1)
{
  v2 = *(a1 + 80);
  if ((v2 & 0x80000000) == 0)
  {
    if (v2)
    {
      icu::UnicodeString::doReplace(a1 + 8, v2, 0x7FFFFFFFLL, 0, 0, 0);
    }

    else
    {
      if (*(a1 + 16))
      {
        v3 = 2;
      }

      else
      {
        v3 = *(a1 + 16) & 0x1E;
      }

      *(a1 + 16) = v3;
    }
  }

  v4 = *(a1 + 76);
  if ((v4 & 0x80000000) == 0)
  {
    icu::UnicodeString::doReplace(a1 + 8, 0, v4, 0, 0, 0);
  }

  result = NAN;
  *(a1 + 76) = -1;
  *(a1 + 92) = 0;
  return result;
}

BOOL sub_1953A0390(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  do
  {
    v5 = v4;
    v6 = *(a1 + 16);
    if ((v6 & 0x80000000) != 0)
    {
      v7 = *(a1 + 20);
    }

    else
    {
      v6 = *(a1 + 16);
      v7 = v6 >> 5;
    }

    if (v4 >= v7)
    {
      break;
    }

    v8 = icu::UnicodeString::char32At(v6, (a1 + 8), v4);
    v9 = v8 < 0x10000 ? 1 : 2;
    v4 += v9;
  }

  while (sub_19539ED20(*(a2 + 184), v8));
  return v5 >= v7;
}

BOOL sub_1953A0420(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  do
  {
    v5 = v4;
    v6 = *(a1 + 16);
    if ((v6 & 0x80000000) != 0)
    {
      v7 = *(a1 + 20);
    }

    else
    {
      v6 = *(a1 + 16);
      v7 = v6 >> 5;
    }

    if (v4 >= v7)
    {
      break;
    }

    v8 = icu::UnicodeString::char32At(v6, (a1 + 8), v4);
    v9 = v8 < 0x10000 ? 1 : 2;
    v4 += v9;
  }

  while (sub_19539ECAC(*(a2 + 184), v8));
  return v5 >= v7;
}

uint64_t sub_1953A04B0(uint64_t a1, UErrorCode *a2)
{
  icu::UVector::UVector((a1 + 8), a2);
  icu::UVector::UVector((a1 + 48), a2);
  icu::UVector::UVector((a1 + 192), a2);
  *(a1 + 232) = 0;
  v5 = 0;
  uhash_init((a1 + 240), uhash_hashUnicodeString, uhash_compareUnicodeString, 0, &v5);
  if (v5 <= 0)
  {
    *(a1 + 232) = a1 + 240;
    uhash_setKeyDeleter(a1 + 240, uprv_deleteUObject);
  }

  *(a1 + 320) = &unk_1F0935D00;
  *(a1 + 328) = 2;
  icu::UVector::UVector((a1 + 384), a2);
  *(a1 + 432) = &unk_1F0935D00;
  *(a1 + 440) = 2;
  icu::UVector::setDeleter((a1 + 48), uprv_deleteUObject);
  *(a1 + 184) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  uhash_setValueDeleter(*(a1 + 232), uprv_deleteUObject);
  return a1;
}

uint64_t sub_1953A05F8(uint64_t a1)
{
  for (i = *(a1 + 16); i; i = *(a1 + 16))
  {
    v3 = icu::UVector::orphanElementAt((a1 + 8), 0);
    if (v3)
    {
      v4 = sub_19539E9C4(v3);
      MEMORY[0x19A8B2600](v4, 0x10A0C40CAFF8206);
    }
  }

  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = icu::UnicodeSet::~UnicodeSet(i, v5);
    MEMORY[0x19A8B2600](v6, 0x10B1C403432821BLL);
  }

  v7 = *(a1 + 184);
  if (v7)
  {
LABEL_10:
    (*(*v7 + 8))(v7);
  }

  while (1)
  {
    v8 = *(a1 + 200);
    if (!v8)
    {
      break;
    }

    v7 = icu::UVector::orphanElementAt((a1 + 192), 0);
    if (v7)
    {
      goto LABEL_10;
    }
  }

  icu::UnicodeString::~UnicodeString(v8, (a1 + 432));
  icu::UVector::~UVector((a1 + 384));
  icu::UnicodeString::~UnicodeString(v9, (a1 + 320));
  v10 = *(a1 + 232);
  if (v10)
  {
    uhash_close(v10);
  }

  icu::UVector::~UVector((a1 + 192));
  icu::UVector::~UVector((a1 + 48));
  icu::UVector::~UVector((a1 + 8));
  return a1;
}

__n128 sub_1953A0724(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int *a5)
{
  if (*a5 <= 0)
  {
    sub_1953A0784(a1, a2, a3, a5);
    *a4 = *(a1 + 108);
    result = *(a1 + 124);
    v8 = *(a1 + 140);
    v9 = *(a1 + 156);
    *(a4 + 64) = *(a1 + 172);
    *(a4 + 32) = v8;
    *(a4 + 48) = v9;
    *(a4 + 16) = result;
  }

  return result;
}

uint64_t sub_1953A0784(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v6 = result;
  v12 = *MEMORY[0x1E69E9840];
  *(result + 108) = -1;
  *(result + 164) = 0u;
  *(result + 148) = 0u;
  *(result + 132) = 0u;
  *(result + 116) = 0u;
  v7 = (result + 8);
  while (*(v6 + 16))
  {
    result = icu::UVector::orphanElementAt(v7, 0);
    if (result)
    {
      v8 = sub_19539E9C4();
      result = MEMORY[0x19A8B2600](v8, 0x10A0C40CAFF8206);
    }
  }

  if (*a4 <= 0)
  {
    icu::UVector::removeAllElements(v6 + 48);
    *(v6 + 96) = 0;
    *(v6 + 104) = a3;
    v9 = *(v6 + 88);
    if (v9)
    {
      icu::UnicodeSet::~UnicodeSet(v9);
      MEMORY[0x19A8B2600]();
    }

    *(v6 + 88) = 0;
    while (*(v6 + 200))
    {
      v10 = icu::UVector::orphanElementAt((v6 + 192), 0);
      if (v10)
      {
        (*(*v10 + 8))(v10);
      }
    }

    uhash_removeAll(*(v6 + 232));
    operator new();
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1953A1254(uint64_t a1)
{
  v1 = *(a1 + 88);
  *(a1 + 88) = 0;
  return v1;
}

uint64_t sub_1953A1264(icu::UnicodeString *a1, uint64_t a2, icu::UnicodeString *a3)
{
  v3 = *(a3 + 4);
  v4 = v3;
  v5 = v3 >> 5;
  if (v4 >= 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = *(a3 + 3);
  }

  return icu::UnicodeString::doReplace(a1, a2, 0, a3, 0, v6);
}

uint64_t sub_1953A128C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  *(a1 + 108) = 0;
  *(a1 + 112) = a4;
  v10 = uprv_max((a4 - 15), 0);
  v11 = a4 - v10;
  icu::UnicodeString::doExtract(a3, v10, a4 - v10, a1 + 116, 0);
  *(a1 + 116 + 2 * v11) = 0;
  v12 = *(a3 + 8);
  v13 = v12;
  v14 = v12 >> 5;
  if (v13 >= 0)
  {
    v15 = v14;
  }

  else
  {
    v15 = *(a3 + 12);
  }

  v16 = uprv_min((a4 + 15), v15);
  v17 = v16 - a4;
  v18 = a1 + 148;
  icu::UnicodeString::doExtract(a3, a4, v16 - a4, v18, 0);
  *(v18 + 2 * v17) = 0;
  *a5 = a2;
  return a4;
}

BOOL sub_1953A136C(icu::ICU_Utility *a1, const icu::UnicodeString *a2, int *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = L"use ";
  icu::UnicodeString::UnicodeString(v11, 1, &v10);
  LODWORD(a3) = icu::ICU_Utility::parsePattern(a1, a2, a3, v11, 0, v6);
  icu::UnicodeString::~UnicodeString(v7, v11);
  v8 = *MEMORY[0x1E69E9840];
  return a3 >= 0;
}

uint64_t sub_1953A1428(uint64_t a1, icu::ICU_Utility *a2, int a3, int *a4, _DWORD *a5)
{
  v29[1] = *MEMORY[0x1E69E9840];
  v29[0] = 0;
  v27 = "~";
  icu::UnicodeString::UnicodeString(v28, 1, &v27);
  v11 = icu::ICU_Utility::parsePattern(a2, (a3 + 4), a4, v28, v29, v10);
  icu::UnicodeString::~UnicodeString(v12, v28);
  if ((v11 & 0x80000000) != 0)
  {
    v26 = "~";
    icu::UnicodeString::UnicodeString(v28, 1, &v26);
    v11 = icu::ICU_Utility::parsePattern(a2, (a3 + 4), a4, v28, v29, v15);
    icu::UnicodeString::~UnicodeString(v16, v28);
    if ((v11 & 0x80000000) != 0)
    {
      v25 = "~";
      icu::UnicodeString::UnicodeString(v28, 1, &v25);
      v11 = icu::ICU_Utility::parsePattern(a2, (a3 + 4), a4, v28, 0, v17);
      icu::UnicodeString::~UnicodeString(v18, v28);
      if ((v11 & 0x80000000) != 0)
      {
        v24 = L"~nfc rules~;";
        icu::UnicodeString::UnicodeString(v28, 1, &v24);
        v20 = icu::ICU_Utility::parsePattern(a2, (a3 + 4), a4, v28, 0, v19);
        icu::UnicodeString::~UnicodeString(v21, v28);
        if (v20 < 0)
        {
          v11 = 0xFFFFFFFFLL;
        }

        else
        {
          v11 = v20;
        }
      }
    }
  }

  else
  {
    v13 = WORD2(v29[0]);
    if (SHIDWORD(v29[0]) >= 0x10000 || (v14 = v29[0], (v29[0] & 0x80000000) != 0) || SLODWORD(v29[0]) > SHIDWORD(v29[0]))
    {
      *a5 = 65562;
    }

    else
    {
      *(*(a1 + 96) + 1162) = v29[0];
      if (!*(a1 + 16))
      {
        *(a1 + 424) = v14;
        *(a1 + 426) = v13 + 1;
      }
    }
  }

  v22 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t sub_1953A1644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, UErrorCode *a5)
{
  v78 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 328);
  if (v10)
  {
    icu::UnicodeString::unBogus(a1 + 320);
    goto LABEL_8;
  }

  if ((v10 & 0x8000) != 0)
  {
    if (!*(a1 + 332))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v10 >> 5)
  {
LABEL_7:
    *(a1 + 328) &= 0x1Eu;
  }

LABEL_8:
  icu::UVector::removeAllElements(a1 + 384);
  v66 = 0;
  v68 = 0u;
  v71 = 0;
  v77 = a1;
  v69 = 0u;
  v70 = 0u;
  v67 = &unk_1F0935D00;
  LOWORD(v68) = 2;
  v72 = -1;
  v73 = -1;
  v74 = 0;
  v75 = 0;
  v76 = 1;
  v54 = 0;
  v56 = 0u;
  v59 = 0;
  v65 = a1;
  v57 = 0u;
  v58 = 0u;
  v55 = &unk_1F0935D00;
  LOWORD(v56) = 2;
  v60 = -1;
  v61 = -1;
  v62 = 0;
  v63 = 0;
  v64 = 1;
  if (*(a1 + 440))
  {
    v11 = 2;
  }

  else
  {
    v11 = *(a1 + 440) & 0x1E;
  }

  *(a1 + 440) = v11;
  v12 = sub_19539ED94(&v66, a2, a3, a4, a5);
  v13 = *a5;
  if (v13 > 0)
  {
    goto LABEL_41;
  }

  v14 = v12;
  if (v12 == a4 || ((v15 = v12 - 1, v16 = *(a2 + 8), (v16 & 0x8000u) == 0) ? (v17 = v16 >> 5) : (v17 = *(a2 + 12)), v17 <= v15 ? (v19 = 0xFFFF) : ((v16 & 2) != 0 ? (v18 = a2 + 10) : (v18 = *(a2 + 24)), v19 = *(v18 + 2 * v15)), !u_strchr("=", v19)))
  {
    v24 = 65547;
LABEL_39:
    v25 = a1;
    goto LABEL_40;
  }

  if (v19 == 60 && v14 < a4)
  {
    v20 = *(a2 + 8);
    if ((v20 & 0x8000u) == 0)
    {
      v21 = v20 >> 5;
    }

    else
    {
      v21 = *(a2 + 12);
    }

    v19 = 60;
    if (v21 > v14)
    {
      if ((v20 & 2) != 0)
      {
        v22 = a2 + 10;
      }

      else
      {
        v22 = *(a2 + 24);
      }

      v23 = *(v22 + 2 * v14);
      if (v23 == 62)
      {
        v14 = (v14 + 1);
      }

      else
      {
        v14 = v14;
      }

      if (v23 == 62)
      {
        v19 = 126;
      }

      else
      {
        v19 = 60;
      }
    }
  }

  else
  {
    switch(v19)
    {
      case 8592:
        v19 = 60;
        break;
      case 8596:
        v19 = 126;
        break;
      case 8594:
        v19 = 62;
        break;
    }
  }

  v29 = sub_19539ED94(&v54, a2, v14, a4, a5);
  v13 = *a5;
  if (v13 > 0)
  {
    goto LABEL_41;
  }

  v30 = v29;
  if (v29 < a4)
  {
    v31 = v29 - 1;
    v32 = *(a2 + 8);
    v33 = (v32 & 0x8000u) == 0 ? v32 >> 5 : *(a2 + 12);
    if (v33 <= v31 || ((v32 & 2) != 0 ? (v34 = a2 + 10) : (v34 = *(a2 + 24)), *(v34 + 2 * v31) != 59))
    {
      v24 = 65555;
      goto LABEL_39;
    }
  }

  v35 = *(a1 + 440);
  if (v19 == 61)
  {
    if ((v35 & 0x8000) != 0)
    {
      v36 = *(a1 + 444);
    }

    else
    {
      v36 = v35 >> 5;
    }

    if (!v36)
    {
      v25 = a1;
      v24 = 0x10000;
      goto LABEL_40;
    }

    if (v68 < 0)
    {
      if (DWORD1(v68) != 1)
      {
LABEL_83:
        v25 = a1;
        v24 = 65541;
        goto LABEL_40;
      }
    }

    else if ((v68 & 0x7FE0) != 0x20)
    {
      goto LABEL_83;
    }

    if ((v68 & 2) != 0)
    {
      v39 = &v68 + 1;
    }

    else
    {
      v39 = v69;
    }

    if (*v39 == *(a1 + 426) && !v75 && !v63)
    {
      operator new();
    }

    goto LABEL_83;
  }

  if ((v35 & 0x8000) != 0)
  {
    v37 = *(a1 + 444);
  }

  else
  {
    v37 = v35 >> 5;
  }

  if (v37)
  {
    v24 = 65554;
    goto LABEL_39;
  }

  if (*(a1 + 328) < 0)
  {
    v38 = *(a1 + 332);
  }

  else
  {
    v38 = *(a1 + 328) >> 5;
  }

  if (v38 > *(a1 + 392))
  {
    sub_1953A128C(a1, 65553, a2, a3, a5);
  }

  v40 = 0;
  while ((*(a1 + 328) & 0x80000000) == 0)
  {
    if (v40 >= *(a1 + 328) >> 5)
    {
      goto LABEL_99;
    }

    v41 = *(a1 + 328) >> 5;
LABEL_93:
    if (v41 > v40)
    {
      v42 = a1 + 330;
      if ((*(a1 + 328) & 2) == 0)
      {
        v42 = *(a1 + 344);
      }

      if (!*(v42 + 2 * v40))
      {
        sub_1953A128C(a1, 65568, a2, a3, a5);
      }
    }

    ++v40;
  }

  v41 = *(a1 + 332);
  if (v40 < v41)
  {
    v41 = v41;
    goto LABEL_93;
  }

LABEL_99:
  if (*(a1 + 392) >= 1)
  {
    v43 = 0;
    do
    {
      if (!icu::UVector::elementAt((a1 + 384), v43))
      {
        sub_1953A128C(a1, 65568, a2, a3, a5);
      }

      ++v43;
    }

    while (v43 < *(a1 + 392));
  }

  v13 = *(a1 + 104);
  if (v19 != 126 && (v19 != 62) == (v13 == 0))
  {
    a3 = v30;
    goto LABEL_41;
  }

  v44 = &v54;
  if (v13 == 1)
  {
    v45 = &v55;
  }

  else
  {
    v45 = &v67;
  }

  if (v13 == 1)
  {
    v46 = &v54;
  }

  else
  {
    v46 = &v66;
  }

  if (v13 == 1)
  {
    v44 = &v66;
  }

  if (v19 == 126)
  {
    v47 = v45;
    v48 = v46;
    v49 = v44;
    sub_1953A0304(v44);
    v44 = v49;
    v46 = v48;
    v45 = v47;
    *(v48 + 18) = -1;
    *(v48 + 21) = 0;
  }

  if ((*(v46 + 19) & 0x80000000) != 0)
  {
    *(v46 + 19) = 0;
  }

  if ((v46[10] & 0x80000000) != 0)
  {
    if (v45[1] < 0)
    {
      v50 = *(v45 + 3);
    }

    else
    {
      v50 = *(v45 + 4) >> 5;
    }

    *(v46 + 20) = v50;
  }

  if ((*(v44 + 19) & 0x80000000) == 0 || (v44[10] & 0x80000000) == 0 || (v46[9] & 0x80000000) == 0 || *(v44 + 21) && (v44[9] & 0x80000000) != 0 || *(v44 + 92) || *(v44 + 93) || (v51 = v44, !sub_1953A0420(v46, a1)) || !sub_1953A0390(v51, a1) || *(v46 + 19) > *(v46 + 20))
  {
    v24 = 65537;
    goto LABEL_39;
  }

  v52 = *(a1 + 392);
  if (v52 < 1)
  {
    goto LABEL_137;
  }

  v53 = malloc_type_malloc(8 * v52, 0x2004093837F09uLL);
  if (v53)
  {
    icu::UVector::toArray((a1 + 384), v53);
LABEL_137:
    operator new();
  }

  v25 = a1;
  v24 = 7;
LABEL_40:
  sub_1953A128C(v25, v24, a2, a3, a5);
LABEL_41:
  icu::UnicodeString::~UnicodeString(v13, &v55);
  icu::UnicodeString::~UnicodeString(v26, &v67);
  v27 = *MEMORY[0x1E69E9840];
  return a3;
}

unint64_t utrans_stripRules(unsigned __int16 *a1, int a2, char *a3, _DWORD *a4)
{
  v31 = *MEMORY[0x1E69E9840];
  bzero(a3, 2 * a2);
  v7 = a3;
  if (a2 >= 1)
  {
    v8 = 0;
    v9 = 0uLL;
    v7 = a3;
    v10 = &a1[a2];
    while (2)
    {
      v11 = v8 == 0;
      while (1)
      {
        v12 = *a1;
        if ((v12 & 0xFC00) == 0xD800)
        {
          v12 = a1[1] + (v12 << 10) - 56613888;
          a1 += 2;
        }

        else
        {
          ++a1;
          if (v12 == 39)
          {
            v8 = v11;
            goto LABEL_55;
          }
        }

        if (!v11)
        {
          v8 = 1;
          goto LABEL_37;
        }

        if (v12 != 92)
        {
          break;
        }

        if (a1 >= v10)
        {
          v8 = 0;
          LOWORD(v12) = 92;
          goto LABEL_55;
        }

        v13 = *a1;
        LOWORD(v12) = 92;
        if (v13 <= 0xC)
        {
          if (v13 != 10)
          {
            goto LABEL_52;
          }
        }

        else if (v13 != 13)
        {
          if (v13 == 39)
          {
            v8 = 1;
          }

          else
          {
            if (v13 == 117 && (a1 + 5) < v10)
            {
              v29 = 0;
              v30[2] = v9;
              v30[3] = v9;
              v30[0] = v9;
              v30[1] = v9;
              icu::UnicodeString::UnicodeString(v30, a1, 5);
              v17 = icu::UnicodeString::unescapeAt(v30, &v29);
              if (v17 == -1 || !v29)
              {
                *a4 = 9;
                icu::UnicodeString::~UnicodeString(9, v30);
                result = 0;
                goto LABEL_67;
              }

              v12 = v17;
              if (icu::PatternProps::isWhiteSpace(v17) || u_iscntrl(v12))
              {
                v12 = 92;
              }

              else
              {
                v25 = u_ispunct(v12);
                if (!v25)
                {
                  a1 += 5;
                }

                v18 = 92;
                if (v25)
                {
                  v12 = 92;
                }
              }

              icu::UnicodeString::~UnicodeString(v18, v30);
              v8 = 0;
              v9 = 0uLL;
              goto LABEL_37;
            }

LABEL_52:
            v8 = 0;
          }

          goto LABEL_55;
        }

        ++a1;
        v11 = 1;
        if (a1 >= v10)
        {
          goto LABEL_64;
        }
      }

      if (v12 == 35)
      {
        do
        {
          v14 = v7;
          if (v7 <= a3)
          {
            break;
          }

          v7 -= 2;
        }

        while (*(v14 - 1) == 32);
        while (a1 != v10)
        {
          v15 = *a1++;
          v12 = v15;
          if (v15 == 10 || v12 == 13)
          {
            v8 = 0;
            v7 = v14;
            goto LABEL_37;
          }
        }

        v7 = v14;
        break;
      }

      v8 = 0;
LABEL_37:
      if (v12 != 13 && v12 != 10)
      {
        if (v12 >= 0x10000)
        {
          *v7 = (v12 >> 10) - 10304;
          *(v7 + 1) = v12 & 0x3FF | 0xDC00;
          v24 = 2;
LABEL_56:
          v7 += 2 * v24;
          goto LABEL_57;
        }

LABEL_55:
        *v7 = v12;
        v24 = 1;
        goto LABEL_56;
      }

      while (a1 < v10)
      {
        v20 = *a1;
        v21 = v20 > 0x20;
        v22 = (1 << v20) & 0x100002400;
        if (v21 || v22 == 0)
        {
          break;
        }

        ++a1;
      }

      v8 = 0;
LABEL_57:
      if (a1 < v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_64:
  if (v7 < &a3[2 * a2])
  {
    *v7 = 0;
  }

  result = (v7 - a3) >> 1;
LABEL_67:
  v27 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1953A20AC(uint64_t a1)
{
  icu::UnicodeString::~UnicodeString((a1 + 136));
  icu::UnicodeString::~UnicodeString((a1 + 72));
  icu::UnicodeString::~UnicodeString((a1 + 8));
  return a1;
}

uint64_t sub_1953A20E8(uint64_t result, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, int a9, char a10, char a11, uint64_t a12, int *a13)
{
  v13 = result;
  *result = &unk_1F0941808;
  *(result + 40) = &unk_1F0935D00;
  *(result + 48) = 2;
  *(result + 104) = 0;
  *(result + 128) = a12;
  if (*a13 <= 0)
  {
    if ((a3 & 0x80000000) != 0)
    {
      a3 = 0;
    }

    else
    {
      v14 = *(a2 + 8);
      v15 = v14;
      v16 = v14 >> 5;
      if (v15 < 0)
      {
        v16 = *(a2 + 12);
      }

      if (v16 < a3)
      {
        goto LABEL_21;
      }
    }

    *(result + 116) = a3;
    if ((a4 & 0x80000000) != 0)
    {
      v20 = *(a2 + 8);
      v21 = v20;
      v22 = v20 >> 5;
      if (v21 >= 0)
      {
        a4 = v22;
      }

      else
      {
        a4 = *(a2 + 12);
      }
    }

    else
    {
      if (a3 > a4)
      {
        goto LABEL_21;
      }

      v17 = *(a2 + 8);
      v18 = v17;
      v19 = v17 >> 5;
      if (v18 < 0)
      {
        v19 = *(a2 + 12);
      }

      if (v19 < a4)
      {
        goto LABEL_21;
      }
    }

    *(result + 120) = a4 - a3;
    v23 = *(a5 + 8);
    if (a6 < 0)
    {
      if ((v23 & 0x8000) != 0)
      {
        v26 = *(a5 + 12);
      }
    }

    else
    {
      v24 = v23;
      v25 = v23 >> 5;
      if (v24 < 0)
      {
        v25 = *(a5 + 12);
      }

      if (v25 < a6)
      {
LABEL_21:
        *a13 = 1;
        return result;
      }
    }

    *(result + 104) = a8;
    *(result + 112) = a9;
    icu::UnicodeString::operator=((result + 40), a2);
    v27 = a10 != 0;
    if (a10)
    {
      v28 = 3;
    }

    else
    {
      v28 = 2;
    }

    if (a11)
    {
      v27 = v28;
    }

    *(v13 + 124) = v27;
    *(v13 + 8) = 0;
    if (*(v13 + 116) >= 1)
    {
      operator new();
    }

    *(v13 + 16) = 0;
    if (*(v13 + 120) >= 1)
    {
      operator new();
    }

    if (*(v13 + 48) < 0)
    {
      v29 = *(v13 + 52);
    }

    else
    {
      v29 = *(v13 + 48) >> 5;
    }

    v30 = v29 - (*(v13 + 120) + *(v13 + 116));
    *(v13 + 24) = 0;
    if (v30 >= 1)
    {
      operator new();
    }

    operator new();
  }

  return result;
}

uint64_t sub_1953A23C0(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F0941808;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  icu::UnicodeString::UnicodeString((a1 + 40), (a2 + 40));
  *(a1 + 116) = *(a2 + 116);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v5 = *(a2 + 112);
  if (v5 >= 1)
  {
    v6 = malloc_type_malloc(8 * v5, 0x2004093837F09uLL);
    *(a1 + 104) = v6;
    memcpy(v6, *(a2 + 104), 8 * *(a2 + 112));
  }

  v7 = *(a2 + 8);
  if (v7)
  {
    *v4 = (*(*v7 + 24))(v7);
  }

  v8 = *(a2 + 16);
  if (v8)
  {
    *(a1 + 16) = (*(*v8 + 24))(v8);
  }

  v9 = *(a2 + 24);
  if (v9)
  {
    *(a1 + 24) = (*(*v9 + 24))(v9);
  }

  *(a1 + 32) = (*(**(a2 + 32) + 24))(*(a2 + 32));
  return a1;
}

uint64_t sub_1953A253C(uint64_t a1)
{
  *a1 = &unk_1F0941808;
  free(*(a1 + 104));
  v3 = *(a1 + 8);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  icu::UnicodeString::~UnicodeString(v2, (a1 + 40));
  return a1;
}

void sub_1953A2640(uint64_t a1)
{
  sub_1953A253C(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_1953A268C(uint64_t a1)
{
  v2 = *(a1 + 116);
  if (*(a1 + 48) < 0)
  {
    v3 = *(a1 + 52);
  }

  else
  {
    v3 = (*(a1 + 48) >> 5);
  }

  if (v2 == v3)
  {
    return -1;
  }

  else
  {
    v5 = icu::UnicodeString::char32At(v3, (a1 + 40), v2);
    v6 = v5;
    v7 = sub_19539E9F4(*(a1 + 128), v5);
    v4 = v6;
    if (v7)
    {
      return -1;
    }
  }

  return v4;
}

uint64_t sub_1953A2700(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    return (*(*(v2 + 8) + 32))();
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    return (*(*(v2 + 8) + 32))();
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1953A2740(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v5 = v4 >> 5;
  if (*(a1 + 48) < 0)
  {
    v6 = *(a1 + 52);
  }

  else
  {
    v6 = v4 >> 5;
  }

  v7 = *(a1 + 116);
  v8 = *(a2 + 116);
  v9 = *(a2 + 48);
  v10 = v9;
  v11 = v9 >> 5;
  if (v10 >= 0)
  {
    v12 = v11;
  }

  else
  {
    v12 = *(a2 + 52);
  }

  if (v4)
  {
    v14 = (v10 & 1) == 0;
  }

  else
  {
    if ((v4 & 0x8000u) != 0)
    {
      v5 = *(a1 + 52);
    }

    if ((v4 & 2) != 0)
    {
      v13 = a1 + 50;
    }

    else
    {
      v13 = *(a1 + 64);
    }

    v14 = icu::UnicodeString::doCompare(a2 + 40, v8 - v7, v6, v13, v5 & (v5 >> 31), v5 & ~(v5 >> 31));
  }

  v15 = v6 - v7;
  v16 = v12 - v8;
  if (v8 == v7 && v15 == v16 && *(a1 + 120) <= *(a2 + 120) && !v14)
  {
    v17 = *(a1 + 124);
    v18 = *(a2 + 124);
    v19 = (v18 >> 1) & 1;
    if ((v18 & 1) == 0)
    {
      v19 = 0;
    }

    if ((v17 & 3) != 0)
    {
      v20 = v19;
    }

    else
    {
      v20 = 1;
    }

    if (v17 == v18)
    {
      return 1;
    }

    else
    {
      return v20;
    }
  }

  else
  {
    return v8 >= v7 && (v15 < v16 || v15 == v16 && *(a1 + 120) <= *(a2 + 120)) && v14 == 0;
  }
}

uint64_t sub_1953A288C(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  if (*(a1 + 104) && *(a1 + 112) >= 1)
  {
    v8 = 0;
    do
    {
      sub_1953D8BA4(*(*(a1 + 104) + 8 * v8++));
    }

    while (v8 < *(a1 + 112));
  }

  v9 = *a3;
  v10 = (*a3 - 1);
  if (*a3 >= 1)
  {
    if ((*(*a2 + 80))(a2, (v9 - 1)) >= 0x10000)
    {
      v11 = -2;
    }

    else
    {
      v11 = -1;
    }

    v10 = (v11 + v9);
  }

  v12 = a3[2];
  v13 = (v12 - 1);
  if (v12 >= 1)
  {
    if ((*(*a2 + 80))(a2, (v12 - 1)) >= 0x10000)
    {
      v14 = -2;
    }

    else
    {
      v14 = -1;
    }

    v13 = (v14 + v12);
  }

  v31 = v13;
  v15 = *(a1 + 8);
  if (v15)
  {
    if ((*(*v15 + 56))(v15, a2, &v31, v10, 0) != 2)
    {
      return 0;
    }

    v13 = v31;
  }

  if ((v13 & 0x80000000) != 0 || (*(*a2 + 64))(a2) <= v13)
  {
    v17 = (v13 + 1);
  }

  else
  {
    if ((*(*a2 + 80))(a2, v13) < 0x10000)
    {
      v16 = 1;
    }

    else
    {
      v16 = 2;
    }

    v17 = (v16 + v13);
  }

  if ((*(a1 + 124) & 1) != 0 && v31 != v10)
  {
    return 0;
  }

  v19 = a3[2];
  v31 = a3[2];
  v20 = *(a1 + 16);
  if (v20)
  {
    result = (*(*v20 + 56))(v20, a2, &v31, a3[3], a4);
    if (result != 2)
    {
      return result;
    }

    v19 = v31;
  }

  v21 = *(a1 + 24);
  if (!v21)
  {
    goto LABEL_36;
  }

  if (a4 && v19 == a3[3])
  {
    return 1;
  }

  result = (*(*v21 + 56))(v21, a2, &v31, a3[1], a4);
  if (result == 2)
  {
LABEL_36:
    if ((*(a1 + 124) & 2) == 0)
    {
LABEL_37:
      v30 = 0;
      v22 = (*(**(a1 + 32) + 40))(*(a1 + 32));
      v23 = (*(*v22 + 16))(v22, a2, a3[2], v19, &v30);
      v24 = a3[1];
      v25 = a3[2] - v19 + v23;
      v31 += v25;
      v26 = v31;
      v27 = a3[3] + v25;
      a3[3] = v27;
      a3[1] = v24 + v25;
      v28 = uprv_min(v26, v27);
      v29 = uprv_min(v28, v30);
      a3[2] = uprv_max(v17, v29);
      return 2;
    }

    if (v31 == a3[1])
    {
      if (!a4)
      {
        goto LABEL_37;
      }

      return 1;
    }

    return 0;
  }

  return result;
}

icu::ICU_Utility *sub_1953A2BF0(uint64_t a1, icu::ICU_Utility *this, icu::UnicodeMatcher *a3, uint64_t a4, icu::UnicodeString *a5)
{
  v44 = *MEMORY[0x1E69E9840];
  v40 = 0u;
  v43 = 0;
  v42 = 0u;
  v41 = 0u;
  v39 = &unk_1F0935D00;
  LOWORD(v40) = 2;
  v35 = 0u;
  v36 = 0u;
  v38 = 0;
  v37 = 0u;
  v34 = &unk_1F0935D00;
  LOWORD(v35) = 2;
  v8 = *(a1 + 8);
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = *(a1 + 24) != 0;
  }

  if (*(a1 + 124))
  {
    v33[0] = 94;
    icu::UnicodeString::doAppend(this, v33, 0, 1);
    v8 = *(a1 + 8);
  }

  if (v8)
  {
    v10 = (v8 + 8);
  }

  else
  {
    v10 = 0;
  }

  icu::ICU_Utility::appendToRule(this, v10, a3, &v34, a5);
  if (v9)
  {
    icu::ICU_Utility::appendToRule(this, 0x7B, 1, a3, &v34, v12);
    v14 = *(a1 + 16);
    if (v14)
    {
      v15 = (v14 + 8);
    }

    else
    {
      v15 = 0;
    }

    icu::ICU_Utility::appendToRule(this, v15, a3, &v34, v13);
    icu::ICU_Utility::appendToRule(this, 0x7D, 1, a3, &v34, v16);
  }

  else
  {
    v18 = *(a1 + 16);
    if (v18)
    {
      v19 = (v18 + 8);
    }

    else
    {
      v19 = 0;
    }

    icu::ICU_Utility::appendToRule(this, v19, a3, &v34, v11);
  }

  v20 = *(a1 + 24);
  if (v20)
  {
    v21 = (v20 + 8);
  }

  else
  {
    v21 = 0;
  }

  icu::ICU_Utility::appendToRule(this, v21, a3, &v34, v17);
  if ((*(a1 + 124) & 2) != 0)
  {
    v33[0] = 36;
    icu::UnicodeString::doAppend(this, v33, 0, 1);
  }

  v32 = L" > ";
  icu::UnicodeString::UnicodeString(v33, 1, &v32);
  icu::ICU_Utility::appendToRule(this, v33, 1, a3, &v34, v22);
  icu::UnicodeString::~UnicodeString(v23, v33);
  v24 = (*(**(a1 + 32) + 40))(*(a1 + 32));
  v25 = (*(*v24 + 24))(v24, &v39, a3);
  icu::ICU_Utility::appendToRule(this, v25, 1, a3, &v34, v26);
  icu::ICU_Utility::appendToRule(this, 0x3B, 1, a3, &v34, v27);
  icu::UnicodeString::~UnicodeString(v28, &v34);
  icu::UnicodeString::~UnicodeString(v29, &v39);
  v30 = *MEMORY[0x1E69E9840];
  return this;
}

uint64_t sub_1953A2EC8(uint64_t a1, uint64_t a2)
{
  *(a1 + 128) = a2;
  v4 = *(a1 + 8);
  if (v4)
  {
    (*(*v4 + 48))(v4, a2);
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    (*(*v5 + 48))(v5, a2);
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    (*(*v6 + 48))(v6, a2);
  }

  v7 = *(**(a1 + 32) + 48);

  return v7();
}

icu::UnicodeSet *sub_1953A2FB8(icu::UnicodeSet *result, icu::UnicodeSet *a2)
{
  v2 = *(result + 30);
  if (v2 >= 1)
  {
    v4 = result;
    v5 = *(result + 29);
    v6 = v2 + v5;
    do
    {
      v7 = icu::UnicodeString::char32At(v2, (v4 + 40), v5);
      if (v7 < 0x10000)
      {
        v8 = 1;
      }

      else
      {
        v8 = 2;
      }

      v9 = sub_19539E9F4(*(v4 + 16), v7);
      if (v9)
      {
        result = (*(*v9 + 40))(v9, a2);
      }

      else
      {
        result = icu::UnicodeSet::add(a2, v7);
      }

      v5 += v8;
    }

    while (v5 < v6);
  }

  return result;
}

uint64_t sub_1953A307C(uint64_t a1)
{
  v1 = *(*(*(**(a1 + 32) + 40))(*(a1 + 32)) + 32);

  return v1();
}

void sub_1953A30F8(void *a1)
{
  *a1 = &unk_1F0941858;
  bzero(a1 + 1, 0x418uLL);
  operator new();
}

uint64_t sub_1953A31C0(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1953A31F0(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F0941858;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 1052) = *(a2 + 1052);
  memcpy((a1 + 24), (a2 + 24), 0x404uLL);
  v2 = U_ZERO_ERROR;
  operator new();
}