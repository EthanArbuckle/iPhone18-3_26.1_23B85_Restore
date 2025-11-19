uint64_t sub_1953237A8(uint64_t result, uint64_t a2, int *a3)
{
  if (*a3 <= 0)
  {
    v4 = result;
    v5 = *(a2 + 8);
    v6 = v5;
    v7 = v5 >> 5;
    if (v6 >= 0)
    {
      v8 = v7;
    }

    else
    {
      v8 = *(a2 + 12);
    }

    icu::UnicodeString::doAppend(result + 8, a2, 0, v8);
    result = icu::UnicodeString::getTerminatedBuffer((v4 + 8));
    if (!result)
    {
      *a3 = 7;
    }
  }

  return result;
}

uint64_t sub_195323818(uint64_t result, int a2, int a3, UErrorCode *a4)
{
  v4 = *(result + 80);
  if (v4 >= 4)
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    result = 0;
    v8 = v4 >> 2;
    v9 = (v4 >> 2) - 1;
    v10 = 0x7FFFFFFFLL;
    v11 = 5;
    v30 = 0x7FFFFFFF;
    do
    {
      v12 = (4 * v6) | 1;
      v13 = *(v5 + 80);
      if (v12 >= v13)
      {
        v14 = 0;
      }

      else
      {
        v14 = *(*(v5 + 96) + 4 * v12);
      }

      v15 = v6 + 1;
      if (v6 + 1 < v8)
      {
        v16 = 4 * v6;
        v17 = v9;
        v18 = v11;
        while (1)
        {
          v19 = v18 >= v13 ? 0 : *(*(v5 + 96) + 4 * v18);
          if (v14 == v19)
          {
            break;
          }

          v18 += 4;
          if (!--v17)
          {
            goto LABEL_27;
          }
        }

        v20 = result;
        if ((v16 | 2) >= v13)
        {
          v21 = 0;
        }

        else
        {
          v21 = *(*(v5 + 96) + 4 * (v16 | 2));
        }

        v10 = uprv_min(v10, v21);
        if ((v16 | 3) >= *(v5 + 80))
        {
          v22 = 0;
        }

        else
        {
          v22 = *(*(v5 + 96) + 4 * (v16 | 3));
        }

        v7 = uprv_max(v7, v22);
        if (*(v5 + 80) <= v18 + 1)
        {
          v23 = 0;
        }

        else
        {
          v23 = *(*(v5 + 96) + 4 * (v18 + 1));
        }

        v30 = uprv_min(v30, v23);
        if (*(v5 + 80) <= v18 + 2)
        {
          v24 = 0;
        }

        else
        {
          v24 = *(*(v5 + 96) + 4 * (v18 + 2));
        }

        result = uprv_max(v20, v24);
      }

LABEL_27:
      v11 += 4;
      --v9;
      v6 = v15;
    }

    while (v15 != v8);
    if (v10 != 0x7FFFFFFF)
    {
      v25 = result;
      v26 = *(v5 + 80);
      if (v26 >= -1 && *(v5 + 84) > v26 || (result = icu::UVector32::expandCapacity((v5 + 72), v26 + 1, a4), v26 = *(v5 + 80), result))
      {
        *(*(v5 + 96) + 4 * v26) = a2;
        v26 = *(v5 + 80) + 1;
        *(v5 + 80) = v26;
      }

      if (v26 >= -1 && *(v5 + 84) > v26 || (result = icu::UVector32::expandCapacity((v5 + 72), v26 + 1, a4), v26 = *(v5 + 80), result))
      {
        *(*(v5 + 96) + 4 * v26) = a3;
        v26 = *(v5 + 80) + 1;
        *(v5 + 80) = v26;
      }

      if (v26 >= -1 && *(v5 + 84) > v26 || (result = icu::UVector32::expandCapacity((v5 + 72), v26 + 1, a4), v26 = *(v5 + 80), result))
      {
        *(*(v5 + 96) + 4 * v26) = v10;
        v26 = *(v5 + 80) + 1;
        *(v5 + 80) = v26;
      }

      if (v26 >= -1 && *(v5 + 84) > v26 || (result = icu::UVector32::expandCapacity((v5 + 72), v26 + 1, a4), v26 = *(v5 + 80), result))
      {
        *(*(v5 + 96) + 4 * v26) = v7;
        v26 = *(v5 + 80) + 1;
        *(v5 + 80) = v26;
      }

      if (v26 >= -1 && *(v5 + 84) > v26 || (result = icu::UVector32::expandCapacity((v5 + 72), v26 + 1, a4), v26 = *(v5 + 80), result))
      {
        *(*(v5 + 96) + 4 * v26) = a2;
        v26 = *(v5 + 80) + 1;
        *(v5 + 80) = v26;
      }

      if (v26 >= -1 && *(v5 + 84) > v26 || (result = icu::UVector32::expandCapacity((v5 + 72), v26 + 1, a4), v26 = *(v5 + 80), result))
      {
        *(*(v5 + 96) + 4 * v26) = 1 - a3;
        v26 = *(v5 + 80) + 1;
        *(v5 + 80) = v26;
      }

      if (v26 >= -1 && *(v5 + 84) > v26 || (result = icu::UVector32::expandCapacity((v5 + 72), v26 + 1, a4), v26 = *(v5 + 80), result))
      {
        *(*(v5 + 96) + 4 * v26) = v30;
        v26 = *(v5 + 80) + 1;
        *(v5 + 80) = v26;
      }

      if (v26 < -1 || *(v5 + 84) <= v26)
      {
        result = icu::UVector32::expandCapacity((v5 + 72), v26 + 1, a4);
        if (!result)
        {
          return result;
        }

        v26 = *(v5 + 80);
      }

      *(*(v5 + 96) + 4 * v26) = v25;
      ++*(v5 + 80);
    }
  }

  return result;
}

uint64_t sub_195323BF0(uint64_t result)
{
  v1 = *(result + 80);
  v2 = v1 + 3;
  if (v1 >= 0)
  {
    v2 = *(result + 80);
  }

  if (v1 >= 8)
  {
    v3 = result;
    v4 = 0;
    v5 = (v2 >> 2) - 1;
    v6 = 1;
    v23 = v5;
    while (1)
    {
      v7 = 4 * v4;
      if (v1 <= 4 * v4)
      {
        v8 = 0;
      }

      else
      {
        v8 = *(*(v3 + 96) + 4 * v7);
      }

      v9 = v7 | 1;
      if (v1 <= (v7 | 1))
      {
        v10 = 0;
      }

      else
      {
        v10 = *(*(v3 + 96) + 4 * v9);
      }

      v11 = v7 | 2;
      if (v1 <= (v7 | 2))
      {
        v12 = 0;
      }

      else
      {
        v12 = *(*(v3 + 96) + 4 * v11);
      }

      if (v1 <= (v7 | 3))
      {
        v13 = 0;
      }

      else
      {
        v13 = *(*(v3 + 96) + 4 * (v7 | 3));
      }

      if (v1 <= (v7 + 4))
      {
        v14 = 0;
      }

      else
      {
        v14 = *(*(v3 + 96) + 4 * (v7 + 4));
      }

      v15 = v7 + 5;
      if (v1 <= (v7 + 5))
      {
        v16 = 0;
      }

      else
      {
        v16 = *(*(v3 + 96) + 4 * v15);
      }

      v17 = v7 + 6;
      if (v1 <= (v7 + 6))
      {
        v18 = 0;
      }

      else
      {
        v18 = *(*(v3 + 96) + 4 * v17);
      }

      v19 = v7 + 7;
      if (v1 <= (v7 + 7))
      {
        v20 = 0;
      }

      else
      {
        v20 = *(*(v3 + 96) + 4 * v19);
      }

      v21 = v18 - v12;
      if (v18 == v12 && (v21 = v13 - v20, v13 == v20) && (v21 = v8 - v14, v8 == v14) && (v21 = v16 - v10, v16 == v10) || (v21 & 0x80000000) == 0)
      {
        v22 = v4 + 1 >= v5;
        if (v4 + 1 < v5)
        {
          ++v4;
        }

        else
        {
          v4 = 0;
        }

        if (v22 & v6)
        {
          return result;
        }

        v6 |= v22;
      }

      else
      {
        v26 = v8;
        v27 = v10;
        v28 = v12;
        v29 = v13;
        v24 = v7 | 3;
        v25 = v7 + 4;
        icu::UVector32::setElementAt(v3 + 72, v14, v7);
        icu::UVector32::setElementAt(v3 + 72, v16, v9);
        icu::UVector32::setElementAt(v3 + 72, v18, v11);
        icu::UVector32::setElementAt(v3 + 72, v20, v24);
        icu::UVector32::setElementAt(v3 + 72, v26, v25);
        icu::UVector32::setElementAt(v3 + 72, v27, v15);
        icu::UVector32::setElementAt(v3 + 72, v28, v17);
        result = icu::UVector32::setElementAt(v3 + 72, v29, v19);
        v5 = v23;
        v6 = v4 + 1 >= v23;
        if (v4 + 1 < v23)
        {
          ++v4;
        }

        else
        {
          v4 = 0;
        }
      }

      v1 = *(v3 + 80);
    }
  }

  return result;
}

uint64_t icu::FormattedValueStringBuilderImpl::FormattedValueStringBuilderImpl(uint64_t a1, char a2)
{
  *a1 = &unk_1F093AE60;
  icu::FormattedStringBuilder::FormattedStringBuilder((a1 + 8));
  *(a1 + 144) = a2;
  *(a1 + 152) = a1 + 168;
  *(a1 + 160) = 8;
  *(a1 + 164) = 0;
  *(a1 + 296) = 0;
  return a1;
}

{
  *a1 = &unk_1F093AE60;
  icu::FormattedStringBuilder::FormattedStringBuilder((a1 + 8));
  *(a1 + 144) = a2;
  *(a1 + 152) = a1 + 168;
  *(a1 + 160) = 8;
  *(a1 + 164) = 0;
  *(a1 + 296) = 0;
  return a1;
}

void icu::FormattedValueStringBuilderImpl::~FormattedValueStringBuilderImpl(void **this)
{
  *this = &unk_1F093AE60;
  if (*(this + 164))
  {
    free(this[19]);
  }

  icu::FormattedStringBuilder::~FormattedStringBuilder((this + 1));

  icu::FormattedValue::~FormattedValue(this);
}

{
  icu::FormattedValueStringBuilderImpl::~FormattedValueStringBuilderImpl(this);

  JUMPOUT(0x19A8B2600);
}

icu::Appendable *icu::FormattedValueStringBuilderImpl::appendTo(icu::FormattedValueStringBuilderImpl *this, icu::Appendable *a2, UErrorCode *a3)
{
  v5 = icu::FormattedStringBuilder::chars((this + 8));
  v6 = icu::FormattedStringBuilder::length((this + 8));
  (*(*a2 + 40))(a2, v5, v6);
  return a2;
}

uint64_t icu::FormattedValueStringBuilderImpl::nextPositionImpl(uint64_t a1, icu::ConstrainedFieldPosition *this, unsigned __int8 a3)
{
  v5 = a3;
  v6 = *(a1 + 296);
  if (v6 < 1)
  {
    v8 = 0;
    v61 = -1;
    goto LABEL_10;
  }

  v7 = *(a1 + 152) + 16 * *this;
  if (*this >= v6)
  {
    v61 = -1;
  }

  else
  {
    v61 = *(v7 + 8);
    if (*this < 1)
    {
      goto LABEL_9;
    }
  }

  if (*(this + 5) == *(v7 - 16))
  {
    v8 = *(this + 2) == *(v7 - 12);
    goto LABEL_10;
  }

LABEL_9:
  v8 = 0;
LABEL_10:
  v9 = *(this + 5);
  v64 = a3 && v9 == a3 >> 4 && *(this + 2) == (a3 & 0xF);
  v10 = *(this + 4);
  v11 = *(a1 + 140);
  if (v10 > v11)
  {
LABEL_84:
    icu::ConstrainedFieldPosition::setState(this, v9, *(this + 2), v11, v11);
    return 0;
  }

  v12 = 0;
  v13 = *(a1 + 136);
  v14 = v11 + v13;
  v15 = v10 + v13;
  v17 = v9 == 2 && *(this + 2) == 0;
  v18 = (a1 + 96);
  v19 = a3 >> 4;
  v62 = v17;
  v63 = -1;
  v60 = v19;
  while (1)
  {
    v20 = &byte_19548D86E;
    if (v15 < v14)
    {
      v21 = a1 + 96;
      if (*(a1 + 8) == 1)
      {
        v21 = *v18;
      }

      v20 = (v21 + v15);
    }

    v22 = *v20;
    if (v12)
    {
      break;
    }

    if (v15 > v13 && v8)
    {
      v25 = a1 + 96;
      if (*(a1 + 8) == 1)
      {
        v25 = *v18;
      }

      v26 = *this - 1;
      v27 = *(v25 + v15 - *(*(a1 + 152) + 16 * v26 + 12));
      if (v27 == 49)
      {
        if (icu::ConstrainedFieldPosition::matchesField(this, 3, 1))
        {
          v49 = v15 - *(a1 + 136);
          v50 = v49 - *(*(a1 + 152) + 16 * v26 + 12);
          v47 = 1;
          v51 = v49;
LABEL_89:
          icu::ConstrainedFieldPosition::setState(this, 3, 1, v50, v51);
          return v47;
        }

        v8 = 0;
      }

      else
      {
        v8 = 1;
        LOBYTE(v22) = v27;
        v15 -= *(*(a1 + 152) + 16 * v26 + 12);
      }
    }

    if (icu::ConstrainedFieldPosition::matchesField(this, 2, 0))
    {
      v28 = *(a1 + 136);
      if (v15 > v28 && !v62 && !v64)
      {
        v29 = a1 + 96;
        if (*(a1 + 8) == 1)
        {
          v29 = *v18;
        }

        v30 = *(v29 + v15 - 1);
        if ((v30 == 38 || v30 == 32) && v22 != 32 && v22 != 38)
        {
          v52 = v15;
          v53 = v15 - 1;
          while (1)
          {
            v54 = a1 + 96;
            if (*(a1 + 8))
            {
              v54 = *v18;
            }

            v55 = *(v54 + v52 - 1);
            if (v55 != 38 && v55 != 32)
            {
              break;
            }

            --v52;
            --v53;
            if (v52 <= v28)
            {
              v53 = v28 - 1;
              break;
            }
          }

          v46 = v15 - v28;
          v42 = v53 - v28 + 1;
          v45 = this;
          v43 = 2;
          v44 = 0;
          goto LABEL_106;
        }
      }
    }

    if (v5)
    {
      if (icu::ConstrainedFieldPosition::matchesField(this, v19, v5 & 0xF))
      {
        v31 = *(a1 + 136);
        if (v15 > v31 && !v64)
        {
          v32 = a1 + 96;
          if (*(a1 + 8) == 1)
          {
            v32 = *v18;
          }

          v33 = *(v32 + v15 - 1);
          if ((v33 == 1 || (v33 & 0xF0) == 0x20) && v22 != 1 && (v22 & 0xF0) != 0x20)
          {
            v56 = v15;
            v57 = v15 - 1;
            while (1)
            {
              v58 = a1 + 96;
              if (*(a1 + 8))
              {
                v58 = *v18;
              }

              v59 = *(v58 + v56 - 1);
              if (v59 != 1 && (v59 & 0xF0) != 0x20)
              {
                break;
              }

              --v56;
              --v57;
              if (v56 <= v31)
              {
                v57 = v31 - 1;
                break;
              }
            }

            v46 = v15 - v31;
            v44 = v5 & 0xF;
            v42 = v57 - v31 + 1;
            v45 = this;
            v43 = v19;
            goto LABEL_106;
          }
        }
      }
    }

    if (!v8 && (v22 == 49 || v15 - *(a1 + 136) == v61))
    {
      v34 = *this;
      if (*this >= *(a1 + 296))
      {
        v11 = *(a1 + 140);
LABEL_83:
        v9 = *(this + 5);
        goto LABEL_84;
      }

      v35 = v5;
      v36 = (*(a1 + 152) + 16 * v34);
      v37 = *v36;
      v38 = v36[1];
      v39 = v36[3];
      v40 = v34 + 1;
      icu::ConstrainedFieldPosition::setInt64IterationContext(this, v34 + 1);
      if (v40 < *(a1 + 296))
      {
        v61 = *(*(a1 + 152) + 16 * v40 + 8);
      }

      if (v39)
      {
        if (icu::ConstrainedFieldPosition::matchesField(this, v37, v38))
        {
          v42 = v15 - *(a1 + 136);
          v46 = v42 + v39;
          v45 = this;
          v43 = v37;
          v44 = v38;
          goto LABEL_106;
        }

        if (v22 == 49)
        {
          if (icu::ConstrainedFieldPosition::matchesField(this, 3, 1))
          {
            v50 = v15 - *(a1 + 136);
            v47 = 1;
            v51 = v50 + v39;
            goto LABEL_89;
          }

          v8 = 0;
          v64 = 0;
          v62 = 0;
          v12 = 0;
          v15 = v15 + v39 - 1;
        }

        else
        {
          v8 = 0;
          v64 = 0;
          v62 = 0;
          v12 = 0;
        }
      }

      else
      {
        v8 = 0;
        v12 = 0;
        --v15;
      }

      v5 = v35;
      v19 = v60;
    }

    else
    {
      if (v22 >= 0x10u)
      {
        v8 = 0;
        if (v22 == 32 || v22 == 255)
        {
          v64 = 0;
          v62 = 0;
          v12 = 0;
          goto LABEL_77;
        }

        if (icu::ConstrainedFieldPosition::matchesField(this, v22 >> 4, v22 & 0xF))
        {
          v8 = 0;
          v62 = 0;
          v63 = v15 - *(a1 + 136);
          v64 = 0;
          v12 = v22;
          goto LABEL_77;
        }
      }

      v8 = 0;
      v64 = 0;
      v62 = 0;
      v12 = 0;
    }

LABEL_77:
    v13 = *(a1 + 136);
    v11 = *(a1 + 140);
    v14 = v11 + v13;
    if (v15++ >= v11 + v13)
    {
      goto LABEL_83;
    }
  }

  if (v22 == v12)
  {
    goto LABEL_77;
  }

  v23 = (v15 - v13);
  if (v12 == 38 || (v12 & 0xF0) == 0x30)
  {
    v42 = v63;
    if (v23 > v63)
    {
      goto LABEL_81;
    }

    goto LABEL_39;
  }

  v24 = icu::FormattedValueStringBuilderImpl::trimBack(a1, v23);
  if (v24 <= v63)
  {
LABEL_39:
    v12 = 0;
    --v15;
    v63 = -1;
    goto LABEL_77;
  }

  LODWORD(v23) = v24;
  v42 = icu::FormattedValueStringBuilderImpl::trimFront(a1, v63);
LABEL_81:
  v43 = v12 >> 4;
  v44 = v12 & 0xF;
  v45 = this;
  v46 = v23;
LABEL_106:
  icu::ConstrainedFieldPosition::setState(v45, v43, v44, v42, v46);
  return 1;
}

uint64_t icu::FormattedValueStringBuilderImpl::nextFieldPosition(icu::FormattedValueStringBuilderImpl *this, icu::FieldPosition *a2, UErrorCode *a3)
{
  v3 = *(a2 + 2);
  if (v3 == -1)
  {
    return 0;
  }

  if (v3 < 0xE)
  {
    v18 = 0u;
    v19 = 0u;
    icu::ConstrainedFieldPosition::ConstrainedFieldPosition(&v18);
    icu::ConstrainedFieldPosition::constrainField(&v18, 2, v3);
    icu::ConstrainedFieldPosition::setState(&v18, 2, v3, *(a2 + 3), *(a2 + 4));
    if (icu::FormattedValueStringBuilderImpl::nextPositionImpl(this, &v18, 0))
    {
      v7 = v19;
      *(a2 + 3) = HIDWORD(v18);
      v4 = 1;
    }

    else
    {
      v4 = 0;
      if (v3 != 1 || *(a2 + 4))
      {
        goto LABEL_26;
      }

      v8 = *(this + 34);
      v9 = *(this + 35);
      if (v9 < 1)
      {
        v14 = *(this + 34);
      }

      else
      {
        v10 = 0;
        v11 = v8;
        v12 = (this + 96);
        if (v9 + v8 <= v8 + 1)
        {
          v13 = v8 + 1;
        }

        else
        {
          v13 = v9 + v8;
        }

        v14 = *(this + 34);
        while (1)
        {
          v15 = *(this + 8) ? *(*v12 + v11) : *(v12 + v11);
          v16 = 1;
          if (v15 != 32 && v15 != 38)
          {
            v16 = (v15 == 34) | v10;
            if (v15 != 34 && ((v10 ^ 1) & 1) == 0)
            {
              break;
            }
          }

          ++v11;
          ++v14;
          v10 = v16;
          if (v11 >= v9 + v8)
          {
            v14 = v13;
            break;
          }
        }
      }

      v4 = 0;
      v7 = v14 - v8;
      *(a2 + 3) = v7;
    }

    *(a2 + 4) = v7;
LABEL_26:
    icu::ConstrainedFieldPosition::~ConstrainedFieldPosition(&v18);
    return v4;
  }

  v4 = 0;
  *a3 = U_ILLEGAL_ARGUMENT_ERROR;
  return v4;
}

void icu::FormattedValueStringBuilderImpl::getAllFieldPositions(icu::FormattedValueStringBuilderImpl *this, icu::FieldPositionIteratorHandler *a2, UErrorCode *a3)
{
  v5 = 0u;
  v6 = 0u;
  icu::ConstrainedFieldPosition::ConstrainedFieldPosition(&v5);
  if (icu::FormattedValueStringBuilderImpl::nextPositionImpl(this, &v5, 0))
  {
    do
    {
      (*(*a2 + 16))(a2, DWORD2(v5), HIDWORD(v5), v6);
    }

    while ((icu::FormattedValueStringBuilderImpl::nextPositionImpl(this, &v5, 0) & 1) != 0);
  }

  icu::ConstrainedFieldPosition::~ConstrainedFieldPosition(&v5);
}

uint64_t icu::FormattedValueStringBuilderImpl::resetString(icu::FormattedValueStringBuilderImpl *this)
{
  result = icu::FormattedStringBuilder::clear(this + 8);
  *(this + 74) = 0;
  return result;
}

unint64_t icu::FormattedValueStringBuilderImpl::trimBack(icu::FormattedValueStringBuilderImpl *this, unint64_t a2)
{
  v4 = icu::unisets::get(1);
  v5 = (this + 16);
  if (*(this + 8) == 1)
  {
    v5 = *v5;
  }

  v6 = v5 + *(this + 34);

  return icu::UnicodeSet::spanBack(v4, v6, a2, 1);
}

uint64_t icu::FormattedValueStringBuilderImpl::trimFront(icu::FormattedValueStringBuilderImpl *this, int a2)
{
  v4 = icu::unisets::get(1);
  v5 = (this + 16);
  if (*(this + 8) == 1)
  {
    v5 = *v5;
  }

  return icu::UnicodeSet::span(v4, &v5[*(this + 34) + a2], (*(this + 35) - a2), 1) + a2;
}

void icu::FormattedValueStringBuilderImpl::appendSpanInfo(uint64_t a1, int a2, int a3, int a4, int a5, int *a6)
{
  if (*a6 <= 0)
  {
    v11 = *(a1 + 160);
    v12 = *(a1 + 296);
    if (v11 != v12)
    {
      v16 = *(a1 + 152);
LABEL_13:
      v18 = &v16[16 * v12];
      *v18 = a2;
      *(v18 + 1) = a3;
      *(v18 + 2) = a4;
      *(v18 + 3) = a5;
      ++*(a1 + 296);
      return;
    }

    if (v11 >= 1)
    {
      v14 = 2 * v11;
      v15 = malloc_type_malloc(16 * (2 * v11), 0x1000040451B5BE8uLL);
      if (v15)
      {
        v16 = v15;
        v17 = *(a1 + 160);
        if (v17 >= v11)
        {
          v17 = v11;
        }

        if (v17 >= v14)
        {
          v17 = 2 * v11;
        }

        memcpy(v15, *(a1 + 152), 16 * v17);
        if (*(a1 + 164))
        {
          free(*(a1 + 152));
        }

        *(a1 + 152) = v16;
        *(a1 + 160) = v14;
        *(a1 + 164) = 1;
        v12 = *(a1 + 296);
        goto LABEL_13;
      }
    }

    *a6 = 7;
  }
}

void icu::FormattedValueStringBuilderImpl::prependSpanInfo(uint64_t a1, int a2, int a3, int a4, int a5, int *a6)
{
  if (*a6 <= 0)
  {
    v11 = *(a1 + 160);
    v12 = *(a1 + 296);
    if (v11 == v12)
    {
      if (v11 < 1 || (v14 = 2 * v11, (v15 = malloc_type_malloc(16 * (2 * v11), 0x1000040451B5BE8uLL)) == 0))
      {
        *a6 = 7;
        return;
      }

      v16 = v15;
      v17 = *(a1 + 160);
      if (v17 >= v11)
      {
        v17 = v11;
      }

      if (v17 >= v14)
      {
        v17 = 2 * v11;
      }

      memcpy(v15, *(a1 + 152), 16 * v17);
      if (*(a1 + 164))
      {
        free(*(a1 + 152));
      }

      *(a1 + 152) = v16;
      *(a1 + 160) = v14;
      *(a1 + 164) = 1;
      v12 = *(a1 + 296);
    }

    if (v12 >= 1)
    {
      v18 = v12 + 1;
      v19 = 16 * v12;
      do
      {
        *(*(a1 + 152) + v19) = *(*(a1 + 152) + v19 - 16);
        --v18;
        v19 -= 16;
      }

      while (v18 > 1);
    }

    v20 = *(a1 + 152);
    *v20 = a2;
    v20[1] = a3;
    v20[2] = a4;
    v20[3] = a5;
    ++*(a1 + 296);
  }
}

uint64_t icu::ConstrainedFieldPosition::ConstrainedFieldPosition(uint64_t this)
{
  *this = 0;
  *(this + 8) = 0;
  *(this + 24) = 0;
  *(this + 16) = 0;
  return this;
}

{
  *this = 0;
  *(this + 8) = 0;
  *(this + 24) = 0;
  *(this + 16) = 0;
  return this;
}

uint64_t icu::ConstrainedFieldPosition::reset(uint64_t this)
{
  *this = 0;
  *(this + 8) = 0;
  *(this + 24) = 0;
  *(this + 16) = 0;
  return this;
}

uint64_t icu::ConstrainedFieldPosition::constrainCategory(uint64_t this, int a2)
{
  *(this + 24) = 1;
  *(this + 20) = a2;
  return this;
}

uint64_t icu::ConstrainedFieldPosition::constrainField(uint64_t this, int a2, int a3)
{
  *(this + 24) = 2;
  *(this + 20) = a2;
  *(this + 8) = a3;
  return this;
}

BOOL icu::ConstrainedFieldPosition::matchesField(icu::ConstrainedFieldPosition *this, int a2, int a3)
{
  v3 = *(this + 24);
  if (!*(this + 24))
  {
    return 1;
  }

  if (v3 == 2)
  {
    if (*(this + 5) != a2)
    {
      return 0;
    }

    return *(this + 2) == a3;
  }

  else
  {
    if (v3 != 1)
    {
      abort();
    }

    return *(this + 5) == a2;
  }
}

_DWORD *icu::ConstrainedFieldPosition::setState(_DWORD *this, int a2, int a3, int a4, int a5)
{
  this[2] = a3;
  this[3] = a4;
  this[4] = a5;
  this[5] = a2;
  return this;
}

uint64_t ucfpos_reset(uint64_t result, int *a2)
{
  if (*a2 <= 0)
  {
    if (result)
    {
      if (*result == 1430472192)
      {
        *(result + 8) = 0;
        *(result + 16) = 0;
        *(result + 32) = 0;
        *(result + 24) = 0;
        return result;
      }

      v2 = 3;
    }

    else
    {
      v2 = 1;
    }

    *a2 = v2;
  }

  return result;
}

uint64_t ucfpos_constrainCategory(uint64_t result, int a2, int *a3)
{
  if (*a3 <= 0)
  {
    if (result)
    {
      if (*result == 1430472192)
      {
        *(result + 32) = 1;
        *(result + 28) = a2;
        return result;
      }

      v3 = 3;
    }

    else
    {
      v3 = 1;
    }

    *a3 = v3;
  }

  return result;
}

uint64_t ucfpos_constrainField(uint64_t result, int a2, int a3, int *a4)
{
  if (*a4 <= 0)
  {
    if (result)
    {
      if (*result == 1430472192)
      {
        *(result + 32) = 2;
        *(result + 28) = a2;
        *(result + 16) = a3;
        return result;
      }

      v4 = 3;
    }

    else
    {
      v4 = 1;
    }

    *a4 = v4;
  }

  return result;
}

uint64_t ucfpos_getCategory(_DWORD *a1, int *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  if (a1)
  {
    if (*a1 == 1430472192)
    {
      return a1[7];
    }

    v3 = 3;
  }

  else
  {
    v3 = 1;
  }

  result = 0;
  *a2 = v3;
  return result;
}

uint64_t ucfpos_getField(_DWORD *a1, int *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  if (a1)
  {
    if (*a1 == 1430472192)
    {
      return a1[4];
    }

    v3 = 3;
  }

  else
  {
    v3 = 1;
  }

  result = 0;
  *a2 = v3;
  return result;
}

_DWORD *ucfpos_getIndexes(_DWORD *result, _DWORD *a2, _DWORD *a3, int *a4)
{
  if (*a4 <= 0)
  {
    if (result)
    {
      if (*result == 1430472192)
      {
        *a2 = result[5];
        *a3 = result[6];
        return result;
      }

      v4 = 3;
    }

    else
    {
      v4 = 1;
    }

    *a4 = v4;
  }

  return result;
}

uint64_t ucfpos_getInt64IterationContext(uint64_t a1, int *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  if (a1)
  {
    if (*a1 == 1430472192)
    {
      return *(a1 + 8);
    }

    v3 = 3;
  }

  else
  {
    v3 = 1;
  }

  result = 0;
  *a2 = v3;
  return result;
}

uint64_t ucfpos_setInt64IterationContext(uint64_t result, uint64_t a2, int *a3)
{
  if (*a3 <= 0)
  {
    if (result)
    {
      if (*result == 1430472192)
      {
        *(result + 8) = a2;
        return result;
      }

      v3 = 3;
    }

    else
    {
      v3 = 1;
    }

    *a3 = v3;
  }

  return result;
}

BOOL ucfpos_matchesField(_DWORD *a1, int a2, int a3, int *a4)
{
  if (*a4 <= 0)
  {
    if (a1)
    {
      if (*a1 == 1430472192)
      {
        return icu::ConstrainedFieldPosition::matchesField((a1 + 2), a2, a3);
      }

      v5 = 3;
    }

    else
    {
      v5 = 1;
    }

    *a4 = v5;
  }

  return 0;
}

_DWORD *ucfpos_setState(_DWORD *result, int a2, int a3, int a4, int a5, int *a6)
{
  if (*a6 <= 0)
  {
    if (result)
    {
      if (*result == 1430472192)
      {
        result[4] = a3;
        result[5] = a4;
        result[6] = a5;
        result[7] = a2;
        return result;
      }

      v6 = 3;
    }

    else
    {
      v6 = 1;
    }

    *a6 = v6;
  }

  return result;
}

_DWORD *ucfpos_close(_DWORD *result)
{
  if (result && *result == 1430472192)
  {
    *result = 0;
    JUMPOUT(0x19A8B2600);
  }

  return result;
}

unint64_t ufmtval_getString(uint64_t a1, int *a2, int *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*a3 > 0)
  {
    v3 = 0;
    goto LABEL_17;
  }

  if (!a1)
  {
    v8 = 1;
LABEL_16:
    v3 = 0;
    *a3 = v8;
    goto LABEL_17;
  }

  if (*a1 != 1430672896)
  {
    v8 = 3;
    goto LABEL_16;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  (*(**(a1 + 8) + 24))(&v11);
  if (*a3 > 0)
  {
    goto LABEL_12;
  }

  v6 = BYTE8(v11);
  if (a2)
  {
    if ((SWORD4(v11) & 0x8000u) == 0)
    {
      v7 = WORD4(v11) >> 5;
    }

    else
    {
      v7 = HIDWORD(v11);
    }

    *a2 = v7;
  }

  if ((v6 & 0x11) != 0)
  {
LABEL_12:
    v3 = 0;
  }

  else if ((v6 & 2) != 0)
  {
    v3 = &v11 | 0xA;
  }

  else
  {
    v3 = *(&v12 + 1);
  }

  icu::UnicodeString::~UnicodeString(&v11);
LABEL_17:
  v9 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t ufmtval_nextPosition(uint64_t a1, _DWORD *a2, int *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  if (a1)
  {
    if (*a1 != 1430672896)
    {
LABEL_8:
      v4 = 3;
      goto LABEL_9;
    }

    if (a2)
    {
      if (*a2 == 1430472192)
      {
        return (*(**(a1 + 8) + 40))(*(a1 + 8), a2 + 2);
      }

      goto LABEL_8;
    }
  }

  v4 = 1;
LABEL_9:
  *a3 = v4;
  return 0;
}

uint64_t sub_195325204(uint64_t result, uint64_t a2)
{
  *(result + 8) = 0;
  *result = &unk_1F093AF28;
  *(result + 16) = a2;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_195325248(uint64_t result, int a2, int a3, int a4)
{
  v4 = *(result + 16);
  if (v4[2] == a2 && (!*(result + 24) || !*(result + 25)))
  {
    *(result + 25) = 1;
    v5 = *(result + 8);
    v4[3] = v5 + a3;
    v4[4] = v5 + a4;
  }

  return result;
}

uint64_t sub_195325288(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = *(result + 16);
    if (v2[2] != -1)
    {
      v3 = v2[3];
      if (v3 != -1)
      {
        v4 = v2[4] + a2;
        v2[3] = v3 + a2;
        v2[4] = v4;
      }
    }
  }

  return result;
}

uint64_t icu::FieldPositionIteratorHandler::FieldPositionIteratorHandler(uint64_t this, icu::FieldPositionIterator *a2, UErrorCode *a3)
{
  *(this + 8) = 0;
  *this = &unk_1F093AF60;
  *(this + 16) = a2;
  *(this + 24) = 0;
  v3 = *a3;
  *(this + 32) = *a3;
  *(this + 36) = 0;
  if (a2)
  {
    if (v3 <= U_ZERO_ERROR)
    {
      operator new();
    }
  }

  return this;
}

uint64_t icu::FieldPositionIteratorHandler::FieldPositionIteratorHandler(uint64_t this, icu::UVector32 *a2, UErrorCode *a3)
{
  *(this + 8) = 0;
  *this = &unk_1F093AF60;
  *(this + 16) = 0;
  *(this + 24) = a2;
  *(this + 32) = *a3;
  return this;
}

{
  *(this + 8) = 0;
  *this = &unk_1F093AF60;
  *(this + 16) = 0;
  *(this + 24) = a2;
  *(this + 32) = *a3;
  return this;
}

void icu::FieldPositionIteratorHandler::~FieldPositionIteratorHandler(icu::FieldPositionIteratorHandler *this)
{
  *this = &unk_1F093AF60;
  v2 = *(this + 2);
  if (v2)
  {
    icu::FieldPositionIterator::setData(v2, *(this + 3), this + 8);
  }

  *(this + 3) = 0;
}

{
  icu::FieldPositionIteratorHandler::~FieldPositionIteratorHandler(this);

  JUMPOUT(0x19A8B2600);
}

void icu::FieldPositionIteratorHandler::addAttribute(UErrorCode *this, int a2, int a3, int a4)
{
  v4 = *(this + 3);
  if (!v4)
  {
    return;
  }

  if (a3 >= a4)
  {
    return;
  }

  v8 = this + 8;
  if (*(this + 8) > 0)
  {
    return;
  }

  v10 = *(v4 + 8);
  v11 = *(this + 9);
  if (v10 >= -1)
  {
    v12 = *(v4 + 8);
    if (*(v4 + 12) > v10)
    {
      goto LABEL_8;
    }
  }

  if (icu::UVector32::expandCapacity(*(this + 3), v10 + 1, v8))
  {
    v12 = *(v4 + 8);
LABEL_8:
    *(*(v4 + 24) + 4 * v12) = v11;
    ++*(v4 + 8);
  }

  v13 = *(this + 3);
  v14 = *(v13 + 8);
  if (v14 >= -1 && *(v13 + 12) > v14)
  {
    goto LABEL_13;
  }

  if (icu::UVector32::expandCapacity(*(this + 3), v14 + 1, v8))
  {
    v14 = *(v13 + 8);
LABEL_13:
    *(*(v13 + 24) + 4 * v14) = a2;
    ++*(v13 + 8);
  }

  v15 = *(this + 3);
  v16 = *(this + 2);
  v17 = *(v15 + 8);
  if (v17 >= -1 && *(v15 + 12) > v17)
  {
    goto LABEL_18;
  }

  if (icu::UVector32::expandCapacity(*(this + 3), v17 + 1, v8))
  {
    v17 = *(v15 + 8);
LABEL_18:
    *(*(v15 + 24) + 4 * v17) = v16 + a3;
    ++*(v15 + 8);
  }

  v18 = *(this + 3);
  v19 = *(this + 2);
  v20 = *(v18 + 8);
  if (v20 < -1 || *(v18 + 12) <= v20)
  {
    if (!icu::UVector32::expandCapacity(*(this + 3), v20 + 1, v8))
    {
      goto LABEL_24;
    }

    v20 = *(v18 + 8);
  }

  *(*(v18 + 24) + 4 * v20) = v19 + a4;
  ++*(v18 + 8);
LABEL_24:
  if (*v8 >= 1)
  {
    v21 = *(this + 3);

    icu::UVector32::setSize(v21, v10);
  }
}

uint64_t icu::FieldPositionIteratorHandler::shiftLast(uint64_t this, int a2)
{
  if (a2)
  {
    v2 = this;
    if (*(this + 32) <= 0)
    {
      this = *(this + 24);
      v3 = *(this + 8);
      if (v3 >= 1)
      {
        icu::UVector32::setElementAt(this, *(*(this + 24) + 4 * (v3 - 1)) + a2, v3 - 1);
        v5 = v3 - 2;
        v6 = *(v2 + 24);
        if (v3 == 1 || *(v6 + 8) <= v5)
        {
          v7 = 0;
        }

        else
        {
          v7 = *(*(v6 + 24) + 4 * v5);
        }

        return icu::UVector32::setElementAt(v6, v7 + a2, v5);
      }
    }
  }

  return this;
}

void icu::FieldPositionIterator::~FieldPositionIterator(icu::FieldPositionIterator *this)
{
  *this = &unk_1F093B018;
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 1) = 0;
  *(this + 4) = -1;

  icu::UObject::~UObject(this);
}

{
  icu::FieldPositionIterator::~FieldPositionIterator(this);

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::FieldPositionIterator::FieldPositionIterator(uint64_t this)
{
  *this = &unk_1F093B018;
  *(this + 8) = 0;
  *(this + 16) = -1;
  return this;
}

{
  *this = &unk_1F093B018;
  *(this + 8) = 0;
  *(this + 16) = -1;
  return this;
}

uint64_t icu::FieldPositionIterator::FieldPositionIterator(uint64_t this, const icu::FieldPositionIterator *a2)
{
  *this = &unk_1F093B018;
  *(this + 8) = 0;
  *(this + 16) = *(a2 + 4);
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

uint64_t icu::FieldPositionIterator::operator==(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  result = (v2 | v3) == 0;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    return icu::UVector32::operator==(v2, v3);
  }

  return result;
}

uint64_t icu::FieldPositionIterator::setData(uint64_t this, icu::UVector32 *a2, UErrorCode *a3)
{
  v3 = a2;
  v4 = this;
  v5 = *a3;
  if (a2 && v5 <= 0)
  {
    v7 = *(a2 + 2);
    if (v7)
    {
      if ((v7 & 3) != 0)
      {
        *a3 = U_ILLEGAL_ARGUMENT_ERROR;
LABEL_17:
        v11 = *(*a2 + 8);
        v12 = *v3 + 8;

        return v11(v3);
      }

      if (v7 >= 3)
      {
        v8 = (*(a2 + 3) + 12);
        v9 = 2;
        while (1)
        {
          v10 = v9 + 1 >= v7 ? 0 : *v8;
          if (*(v8 - 1) >= v10)
          {
            break;
          }

          v9 += 4;
          v8 += 4;
          if (v7 <= v9)
          {
            goto LABEL_15;
          }
        }

        *a3 = U_ILLEGAL_ARGUMENT_ERROR;
LABEL_16:
        if (!a2)
        {
          return this;
        }

        goto LABEL_17;
      }
    }

    else
    {
      this = (*(*a2 + 8))(a2);
      if (*a3 > 0)
      {
        return this;
      }

      v3 = 0;
    }
  }

  else
  {
LABEL_15:
    if (v5 > 0)
    {
      goto LABEL_16;
    }
  }

  this = *(v4 + 8);
  if (this)
  {
    this = (*(*this + 8))(this);
  }

  *(v4 + 8) = v3;
  if (v3)
  {
    v13 = 0;
  }

  else
  {
    v13 = -1;
  }

  *(v4 + 16) = v13;
  return this;
}

uint64_t icu::FieldPositionIterator::next(icu::FieldPositionIterator *this, icu::FieldPosition *a2)
{
  v2 = *(this + 4);
  if (v2 == -1)
  {
    return 0;
  }

  v3 = *(this + 1);
  v4 = v2 + 2;
  *(this + 4) = v2 + 2;
  if (v2 >= -1)
  {
    if (*(v3 + 8) <= v2 + 1)
    {
      v5 = 0;
    }

    else
    {
      v5 = *(*(v3 + 24) + 4 * (v2 + 1));
    }

    *(a2 + 2) = v5;
    v7 = v2 + 3;
    *(this + 4) = v2 + 3;
    goto LABEL_10;
  }

  *(a2 + 2) = 0;
  *(this + 4) = v2 + 3;
  if (v2 == -2)
  {
    v7 = 1;
LABEL_10:
    v8 = *(v3 + 8);
    if (v8 <= v4)
    {
      v9 = 0;
    }

    else
    {
      v9 = *(*(v3 + 24) + 4 * v4);
    }

    *(a2 + 3) = v9;
    v10 = v2 + 4;
    *(this + 4) = v2 + 4;
    goto LABEL_14;
  }

  v7 = 0;
  *(a2 + 3) = 0;
  v10 = v2 + 4;
  *(this + 4) = v2 + 4;
  v8 = *(v3 + 8);
  if (v2 != -3)
  {
    goto LABEL_19;
  }

  v10 = 1;
LABEL_14:
  if (v8 <= v7)
  {
    v7 = 0;
  }

  else
  {
    v7 = *(*(v3 + 24) + 4 * v7);
  }

LABEL_19:
  *(a2 + 4) = v7;
  if (v10 == v8)
  {
    *(this + 4) = -1;
  }

  return 1;
}

void *sub_195325B9C(void *result, uint64_t a2, uint64_t a3)
{
  *result = &unk_1F093B058;
  result[1] = &unk_1F093B0B8;
  result[2] = a2;
  result[3] = a3;
  return result;
}

void *sub_195325BE0(void *a1, uint64_t a2)
{
  *a1 = &unk_1F093B058;
  a1[1] = &unk_1F093B0B8;
  a1[2] = (*(**(a2 + 16) + 24))(*(a2 + 16));
  a1[3] = (*(**(a2 + 24) + 24))(*(a2 + 24));
  return a1;
}

void sub_195325C9C(void *a1)
{
  *a1 = &unk_1F093B058;
  v2 = (a1 + 1);
  a1[1] = &unk_1F093B0B8;
  v3 = a1[2];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  icu::UnicodeReplacer::~UnicodeReplacer(v2);

  icu::UnicodeFunctor::~UnicodeFunctor(a1);
}

void sub_195325D78(void *a1)
{
  sub_195325C9C(a1);

  JUMPOUT(0x19A8B2600);
}

void sub_195325DB0(uint64_t a1)
{
  sub_195325C9C((a1 - 8));

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_195325E38(uint64_t a1)
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

uint64_t sub_195325E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = (*(**(a1 + 24) + 40))(*(a1 + 24));
  v11 = (*(*v10 + 16))(v10, a2, a3, a4, a5);
  return (*(**(a1 + 16) + 32))(*(a1 + 16), a2, a3, (v11 + a3)) - a3;
}

icu::UnicodeString *sub_195325F28(uint64_t a1, icu::UnicodeString *this, uint64_t a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  v25 = 0u;
  v27 = 0;
  v26 = 0u;
  v23 = &unk_1F0935D00;
  LOWORD(v24) = 2;
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

  v22 = 38;
  icu::UnicodeString::doAppend(this, &v22, 0, 1);
  v8 = (*(**(a1 + 16) + 104))(*(a1 + 16));
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

  icu::UnicodeString::doAppend(this, v8, 0, v12);
  icu::UnicodeString::doAppend(this, L"( ", 0, 2);
  v21[1] = L"( ";
  v13 = (*(**(a1 + 24) + 40))(*(a1 + 24));
  v14 = (*(*v13 + 24))(v13, &v23, a3);
  v15 = *(v14 + 8);
  v16 = v15;
  v17 = v15 >> 5;
  if (v16 >= 0)
  {
    v18 = v17;
  }

  else
  {
    v18 = *(v14 + 12);
  }

  icu::UnicodeString::doAppend(this, v14, 0, v18);
  icu::UnicodeString::doAppend(this, " ", 0, 2);
  v21[0] = " ";
  icu::UnicodeString::~UnicodeString(v21, &v23);
  v19 = *MEMORY[0x1E69E9840];
  return this;
}

void *sub_19532613C(uint64_t a1, icu::UVector **a2)
{
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  v4 = icu::UnicodeSet::UnicodeSet(v8);
  v5 = (*(**(a1 + 16) + 128))(*(a1 + 16), v8, v4);
  icu::UnicodeSet::addAll(a2, v5);
  return icu::UnicodeSet::~UnicodeSet(v6, v8);
}

void sub_195326200(int *a1)
{
  sub_195400588(0x21u, sub_195326390);
  if (*a1 <= 0)
  {
    operator new[]();
  }
}

uint64_t sub_195326390()
{
  if (qword_1EAEC9D68)
  {
    uhash_close(qword_1EAEC9D68);
    qword_1EAEC9D68 = 0;
    if (qword_1EAEC9D60)
    {
      v0 = qword_1EAEC9D60 - 16;
      v1 = *(qword_1EAEC9D60 - 8);
      if (v1)
      {
        v2 = (qword_1EAEC9D60 + 16 * v1 - 16);
        v3 = -16 * v1;
        do
        {
          icu::UObject::~UObject(v2);
          v2 = (v4 - 16);
          v3 += 16;
        }

        while (v3);
      }

      MEMORY[0x19A8B25E0](v0, 0x1081C809227ACB4);
    }
  }

  atomic_store(0, &dword_1EAEC9DC0);
  return 1;
}

void *icu::GenderInfo::GenderInfo(void *this)
{
  *this = &unk_1F093B128;
  return this;
}

{
  *this = &unk_1F093B128;
  return this;
}

void icu::GenderInfo::~GenderInfo(icu::GenderInfo *this)
{
  icu::UObject::~UObject(this);

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::GenderInfo::getInstance(icu::GenderInfo *this, const icu::Locale *a2, UErrorCode *a3)
{
  if (*a2 <= 0)
  {
    if (atomic_load_explicit(&dword_1EAEC9DC0, memory_order_acquire) == 2 || !icu::umtx_initImplPreInit(&dword_1EAEC9DC0))
    {
      if (dword_1EAEC9DC4 >= 1)
      {
        v3 = 0;
        *a2 = dword_1EAEC9DC4;
        return v3;
      }
    }

    else
    {
      sub_195326200(a2);
      dword_1EAEC9DC4 = *a2;
      icu::umtx_initImplPostInit(&dword_1EAEC9DC0);
    }

    if (*a2 <= 0)
    {
      v7 = *(this + 5);
      umtx_lock(&unk_1EAEC9D70);
      v3 = uhash_get(qword_1EAEC9D68, v7);
      umtx_unlock(&unk_1EAEC9D70);
      if (v3)
      {
        return v3;
      }

      Instance = icu::GenderInfo::loadInstance(this, a2, v8);
      if (*a2 <= 0)
      {
        v10 = Instance;
        umtx_lock(&unk_1EAEC9D70);
        v3 = uhash_get(qword_1EAEC9D68, v7);
        if (v3 || (v11 = qword_1EAEC9D68, v12 = uprv_strdup(v7), uhash_put(v11, v12, v10, a2), v3 = v10, *a2 < 1))
        {
          umtx_unlock(&unk_1EAEC9D70);
          return v3;
        }

        umtx_unlock(&unk_1EAEC9D70);
      }
    }
  }

  return 0;
}

uint64_t icu::GenderInfo::loadInstance(icu::GenderInfo *this, UErrorCode *a2, UErrorCode *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = ures_openDirect(0, "genderList", a2);
  v6 = v5;
  v7 = 0;
  if (*a2 > 0)
  {
    goto LABEL_32;
  }

  v8 = ures_getByKey(v5, "genderList", 0, a2);
  v9 = v8;
  v7 = 0;
  if (*a2 > 0)
  {
LABEL_30:
    if (!v9)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  *v19 = 0;
  v10 = *(this + 5);
  StringByKey = ures_getStringByKey(v8, v10, &v19[1], v19);
  if (!StringByKey)
  {
    v19[0] = U_ZERO_ERROR;
    memset(&v20[1], 0, 56);
    icu::StringPiece::StringPiece(v33, v10);
    v20[0] = &v20[1] + 5;
    LODWORD(v20[1]) = 40;
    WORD2(v20[1]) = 0;
    LODWORD(v20[7]) = 0;
    icu::CharString::append(v20, v33[0], v33[1], v19);
    while (1)
    {
      v34 = 0u;
      memset(v33, 0, sizeof(v33));
      ulocimp_getParent(v20[0], a2, v33);
      v12 = DWORD2(v34);
      if (DWORD2(v34))
      {
        icu::CharString::operator=(v20, v33);
      }

      if (BYTE4(v33[1]))
      {
        free(v33[0]);
      }

      if (!v12)
      {
        break;
      }

      *v19 = 0;
      v13 = ures_getStringByKey(v9, v20[0], &v19[1], v19);
      v19[0] = U_ZERO_ERROR;
      if (v13)
      {
        StringByKey = v13;
        goto LABEL_13;
      }
    }

    StringByKey = 0;
LABEL_13:
    if (BYTE4(v20[1]))
    {
      free(v20[0]);
    }

    if (!StringByKey)
    {
      goto LABEL_29;
    }
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  memset(v20, 0, sizeof(v20));
  u_UCharsToChars(StringByKey, v20, v19[1] + 1);
  if (v20[0] == 0x6C61727475656ELL)
  {
LABEL_29:
    v7 = qword_1EAEC9D60;
    goto LABEL_30;
  }

  if (v20[0] != 0x75654E646578696DLL || *(v20 + 5) != 0x6C61727475654ELL)
  {
    v16 = v20[0] == 0x6E696154656C616DLL && *(v20 + 3) == 0x73746E69615465;
    v7 = qword_1EAEC9D60 + 32 * v16;
    if (!v9)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  v7 = qword_1EAEC9D60 + 16;
  if (v9)
  {
LABEL_31:
    ures_close(v9);
  }

LABEL_32:
  if (v6)
  {
    ures_close(v6);
  }

  v17 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t icu::GenderInfo::getListGender(uint64_t a1, unsigned int *a2, int a3, int *a4)
{
  if (*a4 > 0 || !a3)
  {
    return 2;
  }

  if (a3 == 1)
  {
    return *a2;
  }

  v5 = *(a1 + 8);
  if (v5 == 2)
  {
    if (a3 >= 1)
    {
      if (*a2 != 1)
      {
        return 0;
      }

      v10 = 1;
      do
      {
        v11 = v10;
        if (a3 == v10)
        {
          break;
        }

        v12 = a2[v10++];
      }

      while (v12 == 1);
      return v11 >= a3;
    }

    return 1;
  }

  if (v5 != 1)
  {
    return 2;
  }

  if (a3 < 1)
  {
    return 1;
  }

  v6 = 0;
  v7 = 0;
  v8 = a3;
  do
  {
    v9 = *a2++;
    result = v9;
    if (v9)
    {
      if (result == 1)
      {
        if (v6)
        {
          return 2;
        }

        v7 = 1;
      }

      else if (result == 2)
      {
        return result;
      }
    }

    else
    {
      if (v7)
      {
        return 2;
      }

      v6 = 1;
    }

    --v8;
  }

  while (v8);
  return v6 == 0;
}

uint64_t ugender_getInstance(char *a1, const icu::Locale *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  icu::Locale::Locale(v7, a1, 0, 0, 0);
  Instance = icu::GenderInfo::getInstance(v7, a2, v3);
  icu::Locale::~Locale(v7);
  v5 = *MEMORY[0x1E69E9840];
  return Instance;
}

icu::GregorianCalendar *icu::GregorianCalendar::GregorianCalendar(icu::GregorianCalendar *this, UErrorCode *a2)
{
  v4 = icu::Calendar::Calendar(this, a2);
  *v4 = &unk_1F093B168;
  *(v4 + 80) = 0xC2A63A0D36A80000;
  *(v4 + 162) = 2299161;
  *(v4 + 82) = 0xC2A63A0D36A80000;
  *(v4 + 166) = 1582;
  *(v4 + 334) = 1;
  icu::Calendar::getNow(v4);
  icu::Calendar::setTimeInMillis(this, v5, a2);
  return this;
}

icu::GregorianCalendar *icu::GregorianCalendar::GregorianCalendar(icu::GregorianCalendar *this, icu::TimeZone *a2, UErrorCode *a3)
{
  Default = icu::Locale::getDefault(this);
  v7 = icu::Calendar::Calendar(this, a2, Default, a3);
  *this = &unk_1F093B168;
  *(this + 80) = 0xC2A63A0D36A80000;
  *(this + 162) = 2299161;
  *(this + 82) = 0xC2A63A0D36A80000;
  *(this + 166) = 1582;
  *(this + 334) = 1;
  icu::Calendar::getNow(v7);
  icu::Calendar::setTimeInMillis(this, v8, a3);
  return this;
}

icu::GregorianCalendar *icu::GregorianCalendar::GregorianCalendar(icu::GregorianCalendar *this, const icu::TimeZone *a2, UErrorCode *a3)
{
  Default = icu::Locale::getDefault(this);
  v7 = icu::Calendar::Calendar(this, a2, Default, a3);
  *this = &unk_1F093B168;
  *(this + 80) = 0xC2A63A0D36A80000;
  *(this + 162) = 2299161;
  *(this + 82) = 0xC2A63A0D36A80000;
  *(this + 166) = 1582;
  *(this + 334) = 1;
  icu::Calendar::getNow(v7);
  icu::Calendar::setTimeInMillis(this, v8, a3);
  return this;
}

icu::GregorianCalendar *icu::GregorianCalendar::GregorianCalendar(icu::GregorianCalendar *this, char **a2, UErrorCode *a3)
{
  v6 = icu::TimeZone::forLocaleOrDefault(a2, a2);
  v7 = icu::Calendar::Calendar(this, v6, a2, a3);
  *this = &unk_1F093B168;
  *(this + 80) = 0xC2A63A0D36A80000;
  *(this + 162) = 2299161;
  *(this + 82) = 0xC2A63A0D36A80000;
  *(this + 166) = 1582;
  *(this + 334) = 1;
  icu::Calendar::getNow(v7);
  icu::Calendar::setTimeInMillis(this, v8, a3);
  return this;
}

icu::GregorianCalendar *icu::GregorianCalendar::GregorianCalendar(icu::GregorianCalendar *this, icu::TimeZone *a2, const icu::Locale *a3, UErrorCode *a4)
{
  v6 = icu::Calendar::Calendar(this, a2, a3, a4);
  *v6 = &unk_1F093B168;
  *(v6 + 80) = 0xC2A63A0D36A80000;
  *(v6 + 162) = 2299161;
  *(v6 + 82) = 0xC2A63A0D36A80000;
  *(v6 + 166) = 1582;
  *(v6 + 334) = 1;
  icu::Calendar::getNow(v6);
  icu::Calendar::setTimeInMillis(this, v7, a4);
  return this;
}

icu::GregorianCalendar *icu::GregorianCalendar::GregorianCalendar(icu::GregorianCalendar *this, const icu::TimeZone *a2, const icu::Locale *a3, UErrorCode *a4)
{
  v6 = icu::Calendar::Calendar(this, a2, a3, a4);
  *v6 = &unk_1F093B168;
  *(v6 + 80) = 0xC2A63A0D36A80000;
  *(v6 + 162) = 2299161;
  *(v6 + 82) = 0xC2A63A0D36A80000;
  *(v6 + 166) = 1582;
  *(v6 + 334) = 1;
  icu::Calendar::getNow(v6);
  icu::Calendar::setTimeInMillis(this, v7, a4);
  return this;
}

icu::GregorianCalendar *icu::GregorianCalendar::GregorianCalendar(icu::GregorianCalendar *this, int a2, int a3, int a4, UErrorCode *a5)
{
  Default = icu::TimeZone::createDefault(this);
  v11 = icu::Locale::getDefault(Default);
  v12 = icu::Calendar::Calendar(this, Default, v11, a5);
  *this = &unk_1F093B168;
  *(this + 80) = 0xC2A63A0D36A80000;
  *(this + 162) = 2299161;
  *(this + 82) = 0xC2A63A0D36A80000;
  *(this + 166) = 1582;
  *(this + 334) = 1;
  icu::Calendar::set(v12, 0, 1);
  icu::Calendar::set(this, 1u, a2);
  icu::Calendar::set(this, 2u, a3);
  icu::Calendar::set(this, 5u, a4);
  return this;
}

icu::GregorianCalendar *icu::GregorianCalendar::GregorianCalendar(icu::GregorianCalendar *this, int a2, int a3, int a4, int a5, int a6, UErrorCode *a7)
{
  Default = icu::TimeZone::createDefault(this);
  v15 = icu::Locale::getDefault(Default);
  v16 = icu::Calendar::Calendar(this, Default, v15, a7);
  *this = &unk_1F093B168;
  *(this + 80) = 0xC2A63A0D36A80000;
  *(this + 162) = 2299161;
  *(this + 82) = 0xC2A63A0D36A80000;
  *(this + 166) = 1582;
  *(this + 334) = 1;
  icu::Calendar::set(v16, 0, 1);
  icu::Calendar::set(this, 1u, a2);
  icu::Calendar::set(this, 2u, a3);
  icu::Calendar::set(this, 5u, a4);
  icu::Calendar::set(this, 0xBu, a5);
  icu::Calendar::set(this, 0xCu, a6);
  return this;
}

icu::GregorianCalendar *icu::GregorianCalendar::GregorianCalendar(icu::GregorianCalendar *this, int a2, int a3, int a4, int a5, int a6, int a7, UErrorCode *a8)
{
  Default = icu::TimeZone::createDefault(this);
  v17 = icu::Locale::getDefault(Default);
  v18 = icu::Calendar::Calendar(this, Default, v17, a8);
  *this = &unk_1F093B168;
  *(this + 80) = 0xC2A63A0D36A80000;
  *(this + 162) = 2299161;
  *(this + 82) = 0xC2A63A0D36A80000;
  *(this + 166) = 1582;
  *(this + 334) = 1;
  icu::Calendar::set(v18, 0, 1);
  icu::Calendar::set(this, 1u, a2);
  icu::Calendar::set(this, 2u, a3);
  icu::Calendar::set(this, 5u, a4);
  icu::Calendar::set(this, 0xBu, a5);
  icu::Calendar::set(this, 0xCu, a6);
  icu::Calendar::set(this, 0xDu, a7);
  return this;
}

void icu::GregorianCalendar::~GregorianCalendar(icu::GregorianCalendar *this)
{
  icu::Calendar::~Calendar(this);

  JUMPOUT(0x19A8B2600);
}

double icu::GregorianCalendar::GregorianCalendar(icu::GregorianCalendar *this, const icu::GregorianCalendar *a2)
{
  v3 = icu::Calendar::Calendar(this, a2);
  *v3 = &unk_1F093B168;
  *(v3 + 640) = *(a2 + 80);
  *(v3 + 648) = *(a2 + 162);
  result = *(a2 + 82);
  *(v3 + 656) = result;
  *(v3 + 664) = *(a2 + 166);
  *(v3 + 668) = *(a2 + 334);
  return result;
}

uint64_t icu::GregorianCalendar::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    icu::Calendar::operator=(a1, a2);
    *(a1 + 640) = *(a2 + 640);
    *(a1 + 656) = *(a2 + 656);
    *(a1 + 664) = *(a2 + 664);
    *(a1 + 648) = *(a2 + 648);
  }

  return a1;
}

uint64_t icu::GregorianCalendar::isEquivalentTo(icu::GregorianCalendar *this, const icu::Calendar *a2)
{
  result = icu::Calendar::isEquivalentTo(this, a2);
  if (result)
  {
    return *(this + 80) == *(a2 + 80);
  }

  return result;
}

uint64_t icu::GregorianCalendar::setGregorianChange(uint64_t this, double a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    v4 = this;
    if (*(this + 640) != a2)
    {
      v5 = uprv_floor(a2 / 86400000.0);
      if (v5 <= -2147483650.0)
      {
        *(v4 + 656) = 0xC384997000000000;
        *(v4 + 640) = 0xC384997000000000;
      }

      else if (v5 >= 2147483650.0)
      {
        *(v4 + 656) = 0x4384996FFFD6CD20;
        *(v4 + 640) = 0x4384996FFFD6CD20;
      }

      else
      {
        *(v4 + 656) = v5 * 86400000.0;
        *(v4 + 640) = a2;
      }

      operator new();
    }
  }

  return this;
}

_DWORD *icu::GregorianCalendar::handleComputeFields(_DWORD *this, int a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    v21 = v3;
    v22 = v4;
    v6 = this;
    v20 = 0;
    if (this[162] <= a2)
    {
      v15 = this[77];
      v16 = this[79];
      v17 = this[78];
      v8 = this[76];
    }

    else
    {
      v7 = a2 - 1721424;
      v8 = sub_195328C88(1461, &v20, (a2 - 1721424) * 4.0 + 1464.0);
      this = sub_195328C20(v8 - 1, 4);
      v9 = v7 - this - 365 * (v8 - 1);
      if ((v8 & 3) != 0)
      {
        v10 = 59;
      }

      else
      {
        v10 = 60;
      }

      v11 = &unk_19548D9B8;
      if ((v8 & 3) != 0)
      {
        v12 = 2;
      }

      else
      {
        v12 = 1;
      }

      if ((v8 & 3) == 0)
      {
        v11 = &unk_19548D9A0;
      }

      if (v9 >= v10)
      {
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }

      v14 = 1497972245 * (12 * (v13 + v9) + 6);
      v15 = (v14 >> 39) + (v14 >> 63);
      v16 = v9 - v11[v15] + 1;
      v17 = v9 + 1;
    }

    if (v8 == *(v6 + 664) && *(v6 + 648) <= a2)
    {
      v18 = sub_195328C3C(v8 - 1, 400);
      this = sub_195328C3C(v8 - 1, 100);
      v17 += v18 - this + 2;
    }

    *(v6 + 20) = v15;
    *(v6 + 148) = 1;
    *(v6 + 114) = 1;
    *(v6 + 104) = v15;
    *(v6 + 232) = 1;
    *(v6 + 135) = 1;
    *(v6 + 160) = 0x100000001;
    *(v6 + 117) = 257;
    *(v6 + 32) = v16;
    *(v6 + 36) = v17;
    *(v6 + 88) = v8;
    *(v6 + 216) = 1;
    *(v6 + 131) = 1;
    v19 = 1 - v8;
    if (v8 > 0)
    {
      v19 = v8;
    }

    *(v6 + 140) = 0x100000001;
    *(v6 + 112) = 257;
    *(v6 + 12) = v8 > 0;
    *(v6 + 16) = v19;
  }

  return this;
}

uint64_t icu::GregorianCalendar::isLeapYear(icu::GregorianCalendar *this, int a2)
{
  v2 = *(this + 166);
  v3 = v2 > a2;
  if ((a2 & 3) != 0)
  {
    v3 = 0;
  }

  HIDWORD(v5) = -1030792151 * a2 + 85899344;
  LODWORD(v5) = HIDWORD(v5);
  v4 = v5 >> 2;
  LODWORD(v5) = HIDWORD(v5);
  v6 = (v5 >> 4) < 0xA3D70B;
  v7 = v4 > 0x28F5C28 || v6;
  if (v2 <= a2 && (a2 & 3) == 0)
  {
    return v7;
  }

  else
  {
    return v3;
  }
}

uint64_t icu::GregorianCalendar::handleComputeJulianDay(uint64_t a1, unsigned int a2, UErrorCode *a3)
{
  *(a1 + 669) = 0;
  v6 = icu::Calendar::handleComputeJulianDay(a1, a2, a3);
  if (*a3 > 0)
  {
    return 0;
  }

  v7 = v6;
  if (a2 != 3 || *(a1 + 88) != *(a1 + 664) || v6 < *(a1 + 648))
  {
    if (*(a1 + 668) == v6 >= *(a1 + 648))
    {
      if (!*(a1 + 668))
      {
        return v7;
      }
    }

    else
    {
      *(a1 + 669) = 1;
      v9 = icu::Calendar::handleComputeJulianDay(a1, a2, a3);
      if (*a3 > 0)
      {
        return 0;
      }

      v7 = v9;
      if (!*(a1 + 668))
      {
        return v7;
      }
    }

    v10 = *(a1 + 88);
    if (v10 == *(a1 + 664))
    {
      v11 = v10 - 1;
      v12 = sub_195328C3C(v10 - 1, 400);
      v13 = sub_195328C3C(v11, 100);
      if (a2 == 4)
      {
        return (v7 + 14);
      }

      else if (a2 == 6)
      {
        return (v7 + v13 - v12 - 2);
      }
    }

    return v7;
  }

  *(a1 + 669) = 1;

  return icu::Calendar::handleComputeJulianDay(a1, 3u, a3);
}

uint64_t icu::GregorianCalendar::handleComputeMonthStart(icu::GregorianCalendar *this, int a2, unsigned int a3, signed __int8 a4, UErrorCode *a5)
{
  v25 = a3;
  v26 = a2;
  if (*a5 > 0)
  {
    return 0;
  }

  v6 = a2;
  if (a3 >= 0xC)
  {
    v9 = sub_195328C58(a3, 12, &v25);
    if (uprv_add32_overflow(v9, v6, &v26))
    {
      v5 = 0;
      *a5 = U_ILLEGAL_ARGUMENT_ERROR;
      return v5;
    }

    v6 = v26;
  }

  v10 = v6 & 3;
  v11 = v10 == 0;
  v12 = v6 - 1;
  v13 = sub_195328C3C(v12, 4);
  v14 = v26;
  v15 = *(this + 166);
  v16 = v26 >= v15;
  *(this + 668) = v16;
  if (*(this + 669))
  {
    v16 = v14 < v15;
    *(this + 668) = v16;
  }

  v5 = v13 + 365 * v12 + 1721423;
  if (v16)
  {
    HIDWORD(v18) = -1030792151 * v14 + 85899344;
    LODWORD(v18) = HIDWORD(v18);
    v17 = v18 >> 2;
    LODWORD(v18) = HIDWORD(v18);
    v19 = (v18 >> 4) < 0xA3D70B;
    v20 = v17 > 0x28F5C28 || v19;
    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = v20;
    }

    v21 = v14 - 1;
    v22 = sub_195328C3C(v14 - 1, 400);
    v5 += (v22 - sub_195328C3C(v21, 100) + 2);
  }

  if (v25)
  {
    v23 = &unk_19548D9B8;
    if (v11)
    {
      v23 = &unk_19548D9A0;
    }

    v5 += v23[v25];
  }

  return v5;
}

uint64_t icu::GregorianCalendar::handleGetMonthLength(icu::GregorianCalendar *this, int a2, unsigned int a3, UErrorCode *a4)
{
  v4 = a2;
  v15 = a3;
  if (a3 >= 0xC)
  {
    v4 = sub_195328C58(a3, 12, &v15) + a2;
  }

  v6 = *(this + 166);
  v7 = v4 & 3;
  if (v6 <= v4 && v7 == 0)
  {
    HIDWORD(v11) = -1030792151 * v4 + 85899344;
    LODWORD(v11) = HIDWORD(v11);
    if ((v11 >> 2) < 0x28F5C29)
    {
      v9 = v15;
      HIDWORD(v13) = -1030792151 * v4 + 85899344;
      LODWORD(v13) = HIDWORD(v13);
      if ((v13 >> 4) >= 0xA3D70B)
      {
LABEL_16:
        v12 = &unk_19548D9DC;
        return v12[v9];
      }
    }

    else
    {
      v9 = v15;
    }
  }

  else
  {
    v9 = v15;
    if (v6 <= v4 || v7 != 0)
    {
      goto LABEL_16;
    }
  }

  v12 = &unk_19548D9D0;
  return v12[v9];
}

uint64_t icu::GregorianCalendar::handleGetYearLength(icu::GregorianCalendar *this, int a2)
{
  v2 = *(this + 166);
  if (v2 <= a2 && (a2 & 3) == 0)
  {
    HIDWORD(v5) = -1030792151 * a2 + 85899344;
    LODWORD(v5) = HIDWORD(v5);
    if ((v5 >> 2) <= 0x28F5C28 && a2 % 400 != 0)
    {
      return 365;
    }

    return 366;
  }

  result = 365;
  if ((a2 & 3) == 0 && v2 > a2)
  {
    return 366;
  }

  return result;
}

uint64_t icu::GregorianCalendar::monthLength(icu::GregorianCalendar *this, int a2, int a3)
{
  v3 = *(this + 166);
  if (v3 <= a3 && (a3 & 3) == 0)
  {
    HIDWORD(v6) = -1030792151 * a3 + 85899344;
    LODWORD(v6) = HIDWORD(v6);
    if ((v6 >> 2) < 0x28F5C29)
    {
      HIDWORD(v9) = -1030792151 * a3 + 85899344;
      LODWORD(v9) = HIDWORD(v9);
      if ((v9 >> 4) >= 0xA3D70B)
      {
        v7 = &unk_19548D9DC;
        goto LABEL_10;
      }
    }

LABEL_9:
    v7 = &unk_19548D9D0;
LABEL_10:
    v5 = &v7[a2];
    return *v5;
  }

  v5 = &unk_19548D9DC + a2;
  if ((a3 & 3) == 0 && v3 > a3)
  {
    goto LABEL_9;
  }

  return *v5;
}

uint64_t icu::GregorianCalendar::yearLength(icu::GregorianCalendar *this)
{
  v1 = *(this + 4);
  v2 = *(this + 166);
  v3 = v1 & 3;
  if (v2 <= v1 && v3 == 0)
  {
    HIDWORD(v7) = -1030792151 * v1 + 85899344;
    LODWORD(v7) = HIDWORD(v7);
    if ((v7 >> 2) <= 0x28F5C28 && v1 % 400 != 0)
    {
      return 365;
    }

    return 366;
  }

  if (v2 > v1 && v3 == 0)
  {
    return 366;
  }

  return 365;
}

BOOL icu::GregorianCalendar::validateFields(icu::GregorianCalendar *this)
{
  v2 = 0;
  v3 = 12;
  while (1)
  {
    if ((v2 - 7) <= 0xFFFFFFFD && icu::Calendar::isSet(this, v2))
    {
      result = icu::GregorianCalendar::boundsCheck(this, *(this + v3), v2);
      if (!result)
      {
        return result;
      }
    }

    v2 = (v2 + 1);
    v3 += 4;
    if (v3 == 112)
    {
      if (icu::Calendar::isSet(this, 5u))
      {
        v5 = *(this + 8);
        v14 = 0;
        if (v5 < (*(*this + 112))(this, 5))
        {
          return 0;
        }

        v6 = (*(*this + 272))(this, &v14);
        if (v5 > (*(*this + 464))(this, v6, &v14) || v14 >= 1)
        {
          return 0;
        }
      }

      if (!icu::Calendar::isSet(this, 6u))
      {
        goto LABEL_32;
      }

      v8 = *(this + 9);
      if (v8 >= 1)
      {
        v9 = *(this + 4);
        v10 = *(this + 166);
        if (v10 > v9 || (v9 & 3) != 0)
        {
          v13 = 365;
          if (v10 > v9 && (v9 & 3) == 0)
          {
            goto LABEL_24;
          }
        }

        else
        {
          HIDWORD(v11) = -1030792151 * v9 + 85899344;
          LODWORD(v11) = HIDWORD(v11);
          if ((v11 >> 2) <= 0x28F5C28 && v9 % 400 != 0)
          {
            v13 = 365;
            goto LABEL_25;
          }

LABEL_24:
          v13 = 366;
        }

LABEL_25:
        if (v8 <= v13)
        {
LABEL_32:
          if (!icu::Calendar::isSet(this, 8u) || *(this + 11))
          {
            return 1;
          }
        }
      }

      return 0;
    }
  }
}

double icu::GregorianCalendar::getEpochDay(icu::GregorianCalendar *this, UErrorCode *a2)
{
  icu::Calendar::complete(this, a2);
  v3 = 274877907 * (*(this + 19) + *(this + 18));
  v4 = (*(this + 31) / 1000.0 + ((v3 >> 38) + (v3 >> 63))) / 86400.0;

  return uprv_floor(v4);
}

double icu::GregorianCalendar::computeJulianDayOfYear(icu::GregorianCalendar *this, int a2, BOOL *a3, signed __int8 *a4)
{
  v6 = this;
  *a3 = (a2 & 3) == 0;
  v7 = sub_195328C20(a2 - 1, 4) + (a2 - 1) * 365.0 + 1721423.0;
  if (v6)
  {
    HIDWORD(v9) = -1030792151 * a2 + 85899344;
    LODWORD(v9) = HIDWORD(v9);
    v8 = v9 >> 2;
    LODWORD(v9) = HIDWORD(v9);
    v10 = (v9 >> 4) < 0xA3D70B;
    v11 = v8 > 0x28F5C28 || v10;
    if (*a3)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    *a3 = v12;
    v13 = a2 - 1;
    v14 = sub_195328C3C(v13, 400);
    return v7 + (v14 - sub_195328C3C(v13, 100) + 2);
  }

  return v7;
}

uint64_t icu::GregorianCalendar::aggregateStamp(icu::GregorianCalendar *this, uint64_t a2, int a3)
{
  if (a2 && a3)
  {
    return uprv_max(a2, a3);
  }

  else
  {
    return 0;
  }
}

uint64_t icu::GregorianCalendar::roll(uint64_t result, uint64_t a2, int a3, UErrorCode *a4)
{
  if (!a3 || *a4 > 0)
  {
    return result;
  }

  v7 = result;
  v8 = icu::Calendar::get(result, 0x13u, a4);
  v9 = 0;
  v10 = 1;
  v11 = 0.0;
  if ((a2 & 0xFFFFFFFE) == 4)
  {
    v12 = 0;
    if (v8 != *(v7 + 166))
    {
      goto LABEL_15;
    }

    v13 = (*(*v7 + 272))(v7, a4);
    result = (*(*v7 + 464))(v7, v13, a4);
    if (*a4 > 0)
    {
      return result;
    }

    v14 = v7[31];
    v15 = *(v7 + 8);
    v16 = v7[80];
    if (v14 < v16)
    {
      v17 = 0;
    }

    else
    {
      v17 = -10;
    }

    v9 = v17 + v15;
    v11 = v14 + (v17 + v15 - 1) * -86400000.0;
    if (v11 >= v16)
    {
      v12 = 0;
    }

    else
    {
      v12 = result - 10;
      if (v11 + (result - 10) * 86400000.0 >= v16)
      {
        v10 = 0;
        goto LABEL_15;
      }
    }

    v10 = 1;
  }

  else
  {
    v12 = 0;
  }

LABEL_15:
  switch(a2)
  {
    case 5:
      if (v10)
      {
        v21 = v7;
        v22 = 5;
        goto LABEL_27;
      }

      v33 = uprv_fmod(v7[31] - v11 + a3 * 86400000.0, v12 * 86400000.0);
      if (v33 < 0.0)
      {
        v33 = v12 * 86400000.0 + v33;
      }

      v32 = v11 + v33;
      break;
    case 4:
      if (v10)
      {
        v21 = v7;
        v22 = 4;
LABEL_27:

        return icu::Calendar::roll(v21, v22, a3, a4);
      }

      v23 = *(v7 + 10);
      FirstDayOfWeek = icu::Calendar::getFirstDayOfWeek(v7);
      if (v23 >= FirstDayOfWeek)
      {
        v25 = v23 - FirstDayOfWeek;
      }

      else
      {
        v25 = v23 - FirstDayOfWeek + 7;
      }

      v26 = (v25 - v9 + 1) % 7;
      if (v26 >= 0)
      {
        v27 = (v25 - v9 + 1) % 7;
      }

      else
      {
        v27 = v26 + 7;
      }

      if (7 - v27 >= icu::Calendar::getMinimalDaysInFirstWeek(v7))
      {
        v28 = 1;
      }

      else
      {
        v28 = 8;
      }

      v29 = v28 - v27;
      v30 = 7 * ((v12 - v9 + v25) / 7) - (v25 - v9) - v29 + 7;
      v31 = v9 - a3 + 8 * a3 - (v9 - a3 + 8 * a3 - v29) / v30 * v30 + (v30 & (((v9 - a3 + 8 * a3 - v29) % v30) >> 31));
      if (v31 <= 1)
      {
        v31 = 1;
      }

      if (v31 >= v12)
      {
        v31 = v12;
      }

      v32 = v11 + (v31 - 1) * 86400000.0;
      break;
    case 3:
      v18 = icu::Calendar::get(v7, 3u, a4);
      v41 = v18;
      v19 = icu::Calendar::get(v7, 0x11u, a4);
      v20 = *(v7 + 9);
      result = (*(*v7 + 272))(v7, a4);
      if (*a4 <= 0)
      {
        if (result)
        {
          if (v18 == 1)
          {
            v20 -= (*(*v7 + 328))(v7, (v19 - 1));
          }
        }

        else if (v18 >= 52)
        {
          v20 += (*(*v7 + 328))(v7, v19);
        }

        result = uprv_add32_overflow(v18, a3, &v41);
        if (result)
        {
          *a4 = U_ILLEGAL_ARGUMENT_ERROR;
        }

        else
        {
          v34 = v41;
          if ((v41 - 53) <= 0xFFFFFFCB)
          {
            v35 = (*(*v7 + 328))(v7, v19);
            v36 = *(v7 + 10);
            v37 = (v35 + v36 - (v20 + icu::Calendar::getFirstDayOfWeek(v7))) % 7;
            if (v37 >= 0)
            {
              v38 = v37;
            }

            else
            {
              v38 = v37 + 7;
            }

            if (6 - v38 >= icu::Calendar::getMinimalDaysInFirstWeek(v7))
            {
              v39 = v35 - 7;
            }

            else
            {
              v39 = v35;
            }

            v40 = icu::Calendar::weekNumber(v7, v39, v39, v38 + 1);
            v34 = (v40 + v41 - 1) % v40 + 1;
            v41 = v34;
          }

          icu::Calendar::set(v7, 3u, v34);
          return icu::Calendar::set(v7, 0x11u, v19);
        }
      }

      return result;
    default:
      v21 = v7;
      v22 = a2;
      goto LABEL_27;
  }

  return icu::Calendar::setTimeInMillis(v7, v32, a4);
}

uint64_t icu::GregorianCalendar::getActualMinimum(uint64_t a1)
{
  return (*(*a1 + 112))();
}

{
  return (*(*a1 + 112))();
}

{
  return (*(*a1 + 112))();
}

uint64_t icu::GregorianCalendar::getActualMaximum(uint64_t a1, uint64_t a2, UErrorCode *a3)
{
  if (a2 == 1)
  {
    if (*a3 > 0)
    {
      return 0;
    }

    v6 = (*(*a1 + 24))(a1);
    if (v6)
    {
      v7 = v6;
      v4 = 1;
      icu::Calendar::setLenient(v6, 1);
      v8 = icu::Calendar::get(v7, 0, a3);
      TimeInMillis = icu::Calendar::getTimeInMillis(v7, a3);
      v10 = 140743;
      do
      {
        v11 = (v10 + v4) / 2;
        icu::Calendar::set(v7, 1u, v11);
        if (icu::Calendar::get(v7, 1u, a3) == v11 && icu::Calendar::get(v7, 0, a3) == v8)
        {
          v4 = ((v10 + v4) / 2);
          v11 = v10;
        }

        else
        {
          icu::Calendar::setTimeInMillis(v7, TimeInMillis, a3);
          v10 = (v10 + v4) / 2;
        }
      }

      while (v4 + 1 < v11);
      (*(*v7 + 8))(v7);
    }

    else
    {
      v4 = 0;
      *a3 = U_MEMORY_ALLOCATION_ERROR;
    }

    return v4;
  }

  else
  {

    return icu::Calendar::getActualMaximum(a1, a2, a3);
  }
}

uint64_t icu::GregorianCalendar::handleGetExtendedYear(icu::GregorianCalendar *this, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  v4 = (this + 140);
  v5 = *(this + 54);
  v6 = *(this + 36);
  if (v5 < v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = 19;
  }

  v8 = v4[v7];
  v9 = (v7 - 1) >> 1;
  if (v8 < *(this + 52))
  {
    v9 = 8;
  }

  if (v9 <= 7)
  {
    if (!v9)
    {
      if (*v4 >= 1)
      {
        v10 = *(this + 3);
        if (v10 != 1)
        {
          if (!v10)
          {
            if (v6 >= 1)
            {
              return (1 - *(this + 4));
            }

            return 0;
          }

          result = 0;
          *a2 = U_ILLEGAL_ARGUMENT_ERROR;
          return result;
        }
      }

      if (v6 >= 1)
      {
        return *(this + 4);
      }
    }

    return 1970;
  }

  if (v9 != 8)
  {
    if (v5 >= 1)
    {
      return *(this + 22);
    }

    return 1970;
  }

  result = (*(*this + 360))(this, *(this + 20), *(this + 6), a2);
  if (*a2 >= 1)
  {
    return 0;
  }

  return result;
}

uint64_t icu::GregorianCalendar::handleGetExtendedYearFromWeekFields(icu::GregorianCalendar *this, uint64_t a2, int a3, UErrorCode *a4)
{
  if (*a4 > 0)
  {
    return 0;
  }

  if (*(this + 35) >= 1)
  {
    if (*(this + 3))
    {
      a2 = a2;
    }

    else
    {
      a2 = (1 - a2);
    }
  }

  return icu::Calendar::handleGetExtendedYearFromWeekFields(this, a2, a3, a4);
}

uint64_t icu::GregorianCalendar::internalGetEra(icu::GregorianCalendar *this)
{
  if (icu::Calendar::isSet(this, 0))
  {
    return *(this + 3);
  }

  else
  {
    return 1;
  }
}

double icu::GregorianCalendar::defaultCenturyStart(icu::GregorianCalendar *this)
{
  if (atomic_load_explicit(dword_1ED442C08, memory_order_acquire) != 2 && icu::umtx_initImplPreInit(dword_1ED442C08))
  {
    sub_195328AC4();
    icu::umtx_initImplPostInit(dword_1ED442C08);
  }

  return *&qword_1ED441AE8;
}

void sub_195328AC4()
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = U_ZERO_ERROR;
  bzero(v5, 0x2A0uLL);
  icu::Locale::Locale(v4, "@calendar=gregory", 0, 0, 0);
  icu::GregorianCalendar::GregorianCalendar(v5, v4, &v3);
  icu::Locale::~Locale(v4);
  if (v3 <= U_ZERO_ERROR)
  {
    icu::Calendar::getNow(v0);
    icu::Calendar::setTimeInMillis(v5, v1, &v3);
    icu::Calendar::add(v5, 1u, -80, &v3);
    qword_1ED441AE8 = icu::Calendar::getTimeInMillis(v5, &v3);
    dword_1ED441AF0 = icu::Calendar::get(v5, 1u, &v3);
  }

  icu::Calendar::~Calendar(v5);
  v2 = *MEMORY[0x1E69E9840];
}

uint64_t icu::GregorianCalendar::defaultCenturyStartYear(icu::GregorianCalendar *this)
{
  if (atomic_load_explicit(dword_1ED442C08, memory_order_acquire) != 2 && icu::umtx_initImplPreInit(dword_1ED442C08))
  {
    sub_195328AC4();
    icu::umtx_initImplPostInit(dword_1ED442C08);
  }

  return dword_1ED441AF0;
}

uint64_t sub_195328C20(int a1, int a2)
{
  if (a1 < 0)
  {
    return ((a1 + 1) / a2 - 1);
  }

  else
  {
    return (a1 / a2);
  }
}

uint64_t sub_195328C3C(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    return (a1 + 1) / a2 - 1;
  }

  else
  {
    return a1 / a2;
  }
}

uint64_t sub_195328C58(int a1, int a2, _DWORD *a3)
{
  if (a1 < 0)
  {
    v3 = ((a1 + 1) / a2 - 1);
    if (!a3)
    {
      return v3;
    }

    goto LABEL_3;
  }

  v3 = (a1 / a2);
  if (a3)
  {
LABEL_3:
    *a3 = a1 - v3 * a2;
  }

  return v3;
}

double sub_195328C88(int a1, _DWORD *a2, double a3)
{
  v5 = a1;
  v6 = uprv_floor(a3 / a1);
  if (a2)
  {
    *a2 = (uprv_floor(a3) - v6 * v5);
  }

  return v6;
}

void sub_195328CE8(double *a1, double a2, double a3)
{
  v6 = uprv_floor(a2 / a3);
  v7 = a2 - v6 * a3;
  v8 = -1.0;
  if (v7 < 0.0 || (v8 = 1.0, v7 >= a3))
  {
    v9 = v6 + v8;
    v7 = a2 - v9 * a3;
    if (v6 == v9)
    {
      v7 = 0.0;
    }
  }

  if (a1)
  {
    *a1 = v7;
  }
}

uint64_t sub_195328D5C(int a1, int a2, int a3)
{
  v3 = a1 - 1;
  v4 = 365 * (a1 - 1);
  if (a1 < 1)
  {
    v5 = (1721422 - (-a1 >> 2)) + ~(-a1 / 0x190u) + v4;
    v6 = ~(-a1 / 0x64u);
  }

  else
  {
    v5 = v4 + (v3 >> 2) + 1721423 + v3 / 0x190uLL;
    v6 = v3 / 0x64uLL;
  }

  HIDWORD(v8) = -1030792151 * a1 + 85899344;
  LODWORD(v8) = HIDWORD(v8);
  v7 = v8 >> 2;
  LODWORD(v8) = HIDWORD(v8);
  if ((v8 >> 4) >= 0xA3D70B)
  {
    v9 = 0;
  }

  else
  {
    v9 = 12;
  }

  if (v7 <= 0x28F5C28)
  {
    v10 = v9;
  }

  else
  {
    v10 = 12;
  }

  if ((a1 & 3) != 0)
  {
    v10 = 0;
  }

  return v5 + a3 - v6 + word_19548DB92[v10 + a2] - 2440586;
}

BOOL sub_195328E3C(_BOOL8 result, unsigned int *a2, _DWORD *a3, _DWORD *a4, int *a5, int *a6, int *a7)
{
  v39 = result;
  if (*a7 > 0)
  {
    return result;
  }

  result = uprv_add32_overflow(result, 719162, &v39);
  if (result)
  {
    *a7 = 1;
    return result;
  }

  v13 = v39;
  v14 = v39 / 0x23AB1u;
  if (v39 < 0)
  {
    v14 = ~(~v39 / 0x23AB1u);
  }

  v15 = v39 - 146097 * v14;
  if (v15 < 0)
  {
    v16 = ~(~v15 / 0x8EACu);
  }

  else
  {
    v16 = v15 / 0x8EACu;
  }

  v17 = v15 - 36524 * v16;
  if (v17 < 0)
  {
    v18 = ~(~v17 / 0x5B5u);
  }

  else
  {
    v18 = v17 / 0x5B5u;
  }

  v19 = v17 - 1461 * v18;
  v20 = ~(~v19 / 0x16Du);
  if (v19 >= 0)
  {
    v20 = v19 / 0x16Du;
  }

  *a6 = v19 - 365 * v20;
  v21 = 400 * v14 + 100 * v16 + 4 * v18 + v20;
  *a2 = v21;
  if (v16 == 4 || v20 == 4)
  {
    *a6 = 365;
    v22 = *a2;
  }

  else
  {
    v22 = v21 + 1;
    *a2 = v21 + 1;
  }

  if ((v22 & 3) == 0)
  {
    v29 = -1030792151 * v22 + 85899344;
    HIDWORD(v30) = v29;
    LODWORD(v30) = v29;
    v31 = v13 + 1;
    if ((v30 >> 2) < 0x28F5C29)
    {
      v36 = v31 % 7;
      if (v36 >= 0)
      {
        v37 = v36 + 1;
      }

      else
      {
        v37 = v36 + 8;
      }

      *a5 = v37;
      v25 = *a6;
      HIDWORD(v38) = v29;
      LODWORD(v38) = v29;
      if ((v38 >> 4) > 0xA3D70A)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v32 = v31 % 7;
      if (v32 >= 0)
      {
        v33 = v32 + 1;
      }

      else
      {
        v33 = v32 + 8;
      }

      *a5 = v33;
      v25 = *a6;
    }

    v27 = v25 < 60;
    v28 = 1;
    v26 = 12;
    goto LABEL_30;
  }

  v23 = (v13 + 1) % 7;
  if (v23 >= 0)
  {
    v24 = v23 + 1;
  }

  else
  {
    v24 = v23 + 8;
  }

  *a5 = v24;
  v25 = *a6;
LABEL_23:
  v26 = 0;
  v27 = v25 < 59;
  v28 = 2;
LABEL_30:
  if (v27)
  {
    v34 = 0;
  }

  else
  {
    v34 = v28;
  }

  v35 = 1497972245 * (12 * (v34 + v25) + 6);
  LODWORD(v35) = (v35 >> 39) + (v35 >> 63);
  *a3 = v35;
  *a4 = *a6 - word_19548DB92[v35 + v26] + 1;
  ++*a6;
  return result;
}

BOOL sub_195329158(_BOOL8 result, _DWORD *a2, _DWORD *a3, int *a4, int *a5, _DWORD *a6, int *a7, double a8)
{
  if (*a7 <= 0)
  {
    v18[9] = v8;
    v18[10] = v9;
    v16 = result;
    v18[0] = 0.0;
    sub_195328CE8(v18, a8, 86400000.0);
    *a6 = v18[0];
    return sub_195328E3C(v17, v16, a2, a3, a4, a5, a7);
  }

  return result;
}

uint64_t sub_195329204(int a1)
{
  v1 = ~((-6 - a1) / 7u);
  if (a1 >= -5)
  {
    v1 = (a1 + 5) / 7u;
  }

  v2 = -7 * v1 + a1 + 5;
  if (v2)
  {
    return v2;
  }

  else
  {
    return 7;
  }
}

uint64_t sub_195329260(int a1, int a2, int a3)
{
  if ((a3 - 22) > 6)
  {
    if ((a3 - 29) < 7)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return ((a3 + 6) / 7);
    }
  }

  else
  {
    if ((a1 & 3) != 0)
    {
      v3 = 0;
    }

    else
    {
      v3 = 12;
      HIDWORD(v5) = -1030792151 * a1 + 85899344;
      LODWORD(v5) = HIDWORD(v5);
      if ((v5 >> 2) <= 0x28F5C28)
      {
        HIDWORD(v6) = -1030792151 * a1 + 85899344;
        LODWORD(v6) = HIDWORD(v6);
        if ((v6 >> 4) >= 0xA3D70B)
        {
          v3 = 0;
        }

        else
        {
          v3 = 12;
        }
      }
    }

    if (a3 + 7 > byte_19548DBC2[v3 + a2])
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 4;
    }
  }
}

icu::HebrewCalendar *icu::HebrewCalendar::HebrewCalendar(icu::HebrewCalendar *this, char **a2, UErrorCode *a3)
{
  v6 = icu::TimeZone::forLocaleOrDefault(a2, a2);
  v7 = icu::Calendar::Calendar(this, v6, a2, a3);
  *this = &unk_1F093B378;
  icu::Calendar::getNow(v7);
  icu::Calendar::setTimeInMillis(this, v8, a3);
  return this;
}

void icu::HebrewCalendar::~HebrewCalendar(icu::HebrewCalendar *this)
{
  icu::Calendar::~Calendar(this);

  JUMPOUT(0x19A8B2600);
}

void *icu::HebrewCalendar::HebrewCalendar(icu::HebrewCalendar *this, const icu::HebrewCalendar *a2)
{
  result = icu::Calendar::Calendar(this, a2);
  *result = &unk_1F093B378;
  return result;
}

{
  result = icu::Calendar::Calendar(this, a2);
  *result = &unk_1F093B378;
  return result;
}

uint64_t icu::HebrewCalendar::add(uint64_t this, unsigned int a2, int a3, UErrorCode *a4)
{
  if (*a4 <= 0)
  {
    v6 = this;
    if (a2 == 23 || a2 == 2)
    {
      v7 = icu::Calendar::get(this, 2u, a4);
      v8 = icu::Calendar::get(v6, 1u, a4);
      v17 = v8;
      if (a3 >= 1)
      {
        v9 = v7 + a3;
        if (v9 < 235)
        {
LABEL_8:
          v10 = 12 * v8 + 17;
          v11 = v8 + 1;
          if (v7 >= 5)
          {
            goto LABEL_15;
          }

          while (1)
          {
            if (v9 >= 5)
            {
              if (v10 % 19 >= 0)
              {
                v12 = 12;
              }

              else
              {
                v12 = -7;
              }

              if (v10 % 19 < v12)
              {
                ++v9;
              }
            }

LABEL_15:
            if (v9 < 13)
            {
              break;
            }

            v17 = v11;
            v10 += 12;
            ++v11;
            v9 -= 13;
          }

LABEL_32:
          icu::Calendar::set(v6, 2u, v9);
          icu::Calendar::set(v6, 1u, v17);
          return (*(*v6 + 408))(v6, 5, a4);
        }

        this = uprv_add32_overflow(v8, 19 * (v9 / 0xEB), &v17);
        if (!this)
        {
          v9 = v9 % 0xEB;
          v8 = v17;
          goto LABEL_8;
        }

LABEL_22:
        *a4 = U_ILLEGAL_ARGUMENT_ERROR;
        return this;
      }

      v9 = v7 + a3;
      if (v9 <= -235)
      {
        v13 = -v9;
        this = uprv_add32_overflow(v8, -19 * (v13 / 0xEB), &v17);
        if (this)
        {
          goto LABEL_22;
        }

        v9 = 235 * (v13 / 0xEB) - v13;
        v8 = v17;
      }

      v14 = 12 * v8 + 17;
      v15 = v8 - 1;
      if (v7 <= 5)
      {
        goto LABEL_30;
      }

      while (1)
      {
        if (v9 <= 5)
        {
          if (v14 % 19 >= 0)
          {
            v16 = 12;
          }

          else
          {
            v16 = -7;
          }

          v9 -= v14 % 19 < v16;
        }

LABEL_30:
        if ((v9 & 0x8000000000000000) == 0)
        {
          break;
        }

        v9 += 13;
        v17 = v15;
        v14 -= 12;
        --v15;
      }

      goto LABEL_32;
    }

    return icu::Calendar::add(this, a2, a3, a4);
  }

  return this;
}

BOOL icu::HebrewCalendar::isLeapYear(icu::HebrewCalendar *this)
{
  v1 = 12;
  v2 = (12 * this + 17) % 19;
  if (v2 < 0)
  {
    v1 = -7;
  }

  return v2 >= v1;
}

_BYTE *icu::HebrewCalendar::roll(_BYTE *result, uint64_t a2, int a3, UErrorCode *a4)
{
  if (*a4 <= 0)
  {
    v6 = result;
    if (a2 == 23 || a2 == 2)
    {
      v7 = icu::Calendar::get(result, 2u, a4);
      v8 = (12 * icu::Calendar::get(v6, 1u, a4) + 17) % 19;
      v9 = -7;
      if (v8 >= 0)
      {
        v9 = 12;
      }

      if (v8 < v9)
      {
        v10 = 12;
      }

      else
      {
        v10 = 13;
      }

      v11 = a3 % v10 + v7;
      if (v8 < v9)
      {
        if (a3 < 1 || v7 > 4 || v11 < 5)
        {
          v14 = a3 < 0 && v11 < 6 && v7 > 5;
          v11 -= v14;
        }

        else
        {
          ++v11;
        }
      }

      icu::Calendar::set(v6, 2u, (v11 + 13) % 13);
      v15 = *(*v6 + 408);

      return v15(v6, 5, a4);
    }

    else
    {

      return icu::Calendar::roll(result, a2, a3, a4);
    }
  }

  return result;
}

uint64_t icu::HebrewCalendar::handleGetMonthLength(icu::HebrewCalendar *this, signed int a2, unsigned int a3, UErrorCode *a4)
{
  if (*a4 > 0)
  {
    return 0;
  }

  v6 = a3;
  if ((a3 & 0x80000000) != 0)
  {
    v10 = 12 * a2 + 5;
    do
    {
      if (v10 % 19 >= 0)
      {
        v11 = 12;
      }

      else
      {
        v11 = -7;
      }

      if (v10 % 19 < v11)
      {
        v12 = 12;
      }

      else
      {
        v12 = 13;
      }

      v6 += v12;
      --a2;
      v10 -= 12;
    }

    while ((v6 & 0x80000000) != 0);
  }

  else if (a3 >= 0xD)
  {
    v7 = 12 * a2 + 17;
    do
    {
      if (v7 % 19 >= 0)
      {
        v8 = 12;
      }

      else
      {
        v8 = -7;
      }

      if (v7 % 19 >= v8)
      {
        v9 = -13;
      }

      else
      {
        v9 = -12;
      }

      v6 += v9;
      v7 += 12;
      ++a2;
    }

    while (v6 > 0xC);
  }

  if (v6 - 1 > 1)
  {
    v14 = &unk_19548DD90 + 3 * v6;
  }

  else
  {
    v13 = sub_195329B10(a2, a4);
    if (*a4 > 0)
    {
      return 0;
    }

    v14 = &unk_19548DD90 + 3 * v6 + v13;
  }

  return *v14;
}

uint64_t sub_195329B10(signed int a1, int *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  v4 = sub_195329BAC(a1, a2);
  v5 = v4 - 30;
  if (v4 <= 380)
  {
    v5 = v4;
  }

  v6 = v5 - 353;
  if (v6 >= 3)
  {
    v6 = 1;
  }

  if (*a2 <= 0)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t icu::HebrewCalendar::handleGetYearLength(icu::HebrewCalendar *this, signed int a2)
{
  v3 = 0;
  LODWORD(result) = sub_195329BAC(a2, &v3);
  if (v3 >= 1)
  {
    return 12;
  }

  else
  {
    return result;
  }
}

uint64_t sub_195329BAC(signed int a1, int *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  v5 = sub_19532A010(a1 + 1, a2);
  return v5 - sub_19532A010(a1, a2);
}

_DWORD *icu::HebrewCalendar::validateField(_DWORD *a1, uint64_t a2, int *a3)
{
  if (a2 != 23 && a2 != 2)
  {
    goto LABEL_10;
  }

  v6 = (*(*a1 + 336))(a1, a3);
  v7 = 12;
  v8 = (12 * v6 + 17) % 19;
  if (v8 < 0)
  {
    v7 = -7;
  }

  if (v8 < v7 && (result = (*(*a1 + 272))(a1, a3), result == 5))
  {
    if (*a3 <= 0)
    {
      *a3 = 1;
    }
  }

  else
  {
LABEL_10:

    return icu::Calendar::validateField(a1, a2, a3);
  }

  return result;
}

uint64_t icu::HebrewCalendar::handleComputeFields(uint64_t this, int a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    v4 = this;
    v5 = a2 - 347997;
    v6 = uprv_floor((a2 - 347997) * 25920.0 / 765433.0);
    v7 = (uprv_floor((v6 * 19.0 + 234.0) / 235.0) + 1.0);
    this = sub_19532A010(v7, a3);
    if (*a3 <= 0)
    {
      for (i = 12 * v7 + 17; ; i -= 12)
      {
        v9 = v5 - this;
        if (v5 > this)
        {
          break;
        }

        this = sub_19532A010(--v7, a3);
        if (*a3 >= 1)
        {
          return this;
        }
      }

      this = sub_195329B10(v7, a3);
      if (*a3 <= 0)
      {
        v10 = 0;
        v11 = i % 19;
        if (v11 >= 0)
        {
          v12 = 12;
        }

        else
        {
          v12 = -7;
        }

        v13 = &unk_19548DDB8 + 2 * this;
        v14 = &unk_19548DE0C + 2 * this;
        while (1)
        {
          v15 = v11 >= v12 ? v13 : v14;
          if (v9 <= *v15)
          {
            break;
          }

          ++v10;
          v13 += 6;
          v14 += 6;
          if (v10 == 14)
          {
            goto LABEL_31;
          }
        }

        if (!v10)
        {
          goto LABEL_31;
        }

        v16 = &unk_19548DE0C + 6 * (v10 - 1) + 2 * this;
        if (v11 >= v12)
        {
          v16 = &unk_19548DDB8 + 6 * (v10 - 1) + 2 * this;
        }

        v17 = *v16;
        *(v4 + 12) = 0;
        *(v4 + 140) = 1;
        *(v4 + 112) = 1;
        v18 = (*(*v4 + 296))(v4, 19, 0);
        if (v7 < v18)
        {
          v19 = v18;
          this = icu::Calendar::isLenient(v4);
          v7 = v19;
          if (!this)
          {
            goto LABEL_31;
          }
        }

        this = (*(*v4 + 296))(v4, 19, 3);
        if (this < v7)
        {
          v20 = this;
          this = icu::Calendar::isLenient(v4);
          v7 = v20;
          if (!this)
          {
LABEL_31:
            *a3 = U_ILLEGAL_ARGUMENT_ERROR;
            return this;
          }
        }

        *(v4 + 144) = 0x100000001;
        v21 = v10 > 6 && v11 < v12;
        *(v4 + 113) = 257;
        *(v4 + 88) = v7;
        v22 = v10 - 2;
        *(v4 + 216) = 1;
        *(v4 + 131) = 1;
        if (!v21)
        {
          v22 = v10 - 1;
        }

        *(v4 + 104) = v22;
        *(v4 + 232) = 1;
        *(v4 + 135) = 1;
        *(v4 + 16) = v7;
        *(v4 + 20) = v10 - 1;
        *(v4 + 160) = 0x100000001;
        *(v4 + 117) = 257;
        *(v4 + 32) = v9 - v17;
        *(v4 + 36) = v9;
      }
    }
  }

  return this;
}

uint64_t sub_19532A010(signed int a1, int *a2)
{
  sub_195400588(0xAu, sub_19532A980);
  v4 = sub_1952B7F0C(&qword_1ED442C10, a1, a2);
  if (*a2 > 0)
  {
    return 0;
  }

  v5 = v4;
  if (!v4)
  {
    v6 = sub_195328C3C(235 * a1 - 234, 19);
    v7 = 13753 * v6 + 12084;
    v8 = v7 / 25920 + 29 * v6;
    v9 = v7 % 25920;
    v10 = (v8 % 7) > 6 || ((1 << (v8 % 7)) & 0x54) == 0;
    if (v10)
    {
      v5 = v8;
    }

    else
    {
      v5 = v8 + 1;
    }

    if (v10)
    {
      v11 = v8 % 7;
    }

    else
    {
      v11 = (v8 + 1) % 7;
    }

    if (v9 >= 16405 && v11 == 1)
    {
      v16 = 12;
      v17 = (12 * a1 + 17) % 19;
      if (v17 < 0)
      {
        v16 = -7;
      }

      if (v17 < v16)
      {
        v5 += 2;
      }
    }

    else if (v9 >= 23270 && v11 == 0)
    {
      v14 = 12;
      v15 = (12 * (a1 - 1) + 17) % 19;
      if (v15 < 0)
      {
        v14 = -7;
      }

      if (v15 >= v14)
      {
        ++v5;
      }
    }

    if (v5 == v5)
    {
      sub_1952B7FAC(&qword_1ED442C10, a1, v5, a2);
    }

    else
    {
      v5 = 0;
      *a2 = 1;
    }
  }

  return v5;
}

uint64_t icu::HebrewCalendar::handleGetExtendedYear(icu::HebrewCalendar *this, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  if (icu::Calendar::newerField(this, 0x13u, 1u) == 19)
  {
    if (*(this + 54) > 0)
    {
      v4 = 88;
      return *(this + v4);
    }
  }

  else if (*(this + 36) >= 1)
  {
    v4 = 16;
    return *(this + v4);
  }

  return 1;
}

uint64_t icu::HebrewCalendar::handleComputeMonthStart(icu::HebrewCalendar *this, int a2, signed int a3, signed __int8 a4, UErrorCode *a5)
{
  v22 = a3;
  v23 = a2;
  if (*a5 > 0)
  {
    return 0;
  }

  if ((a3 - 235) > 0xFFFFFE2A)
  {
    goto LABEL_6;
  }

  v8 = a3 / 235;
  if (uprv_add32_overflow(a2, 19 * (a3 / 235), &v23))
  {
    goto LABEL_15;
  }

  v22 = a3 - 235 * v8;
LABEL_6:
  while (1)
  {
    v9 = v22;
    if ((v22 & 0x80000000) == 0)
    {
      break;
    }

    if (!uprv_add32_overflow(v23, -1, &v23))
    {
      v10 = (12 * v23 + 17) % 19;
      v11 = v10 >= 0 ? 12 : -7;
      v12 = v10 < v11 ? 12 : 13;
      if (!uprv_add32_overflow(v22, v12, &v22))
      {
        continue;
      }
    }

    goto LABEL_15;
  }

  if (v22 < 0xD)
  {
LABEL_27:
    v16 = sub_19532A010(v23, a5);
    if (*a5 <= 0)
    {
      v17 = v16;
      if (!v22)
      {
        return v17 + 347997;
      }

      v18 = sub_195329B10(v23, a5);
      if (*a5 <= 0)
      {
        v19 = 12;
        v20 = (12 * v23 + 17) % 19;
        if (v20 < 0)
        {
          v19 = -7;
        }

        if (v20 >= v19)
        {
          v21 = &unk_19548DDB8 + 6 * v22 + 2 * v18;
        }

        else
        {
          v21 = &unk_19548DE0C + 6 * v22 + 2 * v18;
        }

        v17 += *v21;
        return v17 + 347997;
      }
    }

    return 0;
  }

  while (1)
  {
    v13 = (12 * v23 + 17) % 19;
    v14 = v13 >= 0 ? 12 : -7;
    v15 = v13 >= v14 ? -13 : -12;
    if (uprv_add32_overflow(v9, v15, &v22) || uprv_add32_overflow(v23, 1, &v23))
    {
      break;
    }

    v9 = v22;
    if (v22 < 13)
    {
      goto LABEL_27;
    }
  }

LABEL_15:
  result = 0;
  *a5 = U_ILLEGAL_ARGUMENT_ERROR;
  return result;
}

uint64_t icu::HebrewCalendar::getRelatedYear(icu::HebrewCalendar *this, UErrorCode *a2)
{
  v3 = icu::Calendar::get(this, 0x13u, a2) - 3760;
  if (*a2 <= 0)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

double icu::HebrewCalendar::defaultCenturyStart(icu::HebrewCalendar *this)
{
  if (atomic_load_explicit(dword_1ED442C18, memory_order_acquire) != 2 && icu::umtx_initImplPreInit(dword_1ED442C18))
  {
    sub_19532A55C();
    icu::umtx_initImplPostInit(dword_1ED442C18);
  }

  return *&qword_1ED441AF8;
}

void sub_19532A55C()
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = U_ZERO_ERROR;
  bzero(v5, 0x280uLL);
  icu::Locale::Locale(v4, "@calendar=hebrew", 0, 0, 0);
  icu::HebrewCalendar::HebrewCalendar(v5, v4, &v3);
  icu::Locale::~Locale(v4);
  if (v3 <= U_ZERO_ERROR)
  {
    icu::Calendar::getNow(v0);
    icu::Calendar::setTimeInMillis(v5, v1, &v3);
    if (v3 <= U_ZERO_ERROR)
    {
      icu::Calendar::add(v5, 1u, -80, &v3);
    }

    qword_1ED441AF8 = icu::Calendar::getTimeInMillis(v5, &v3);
    dword_1ED441B00 = icu::Calendar::get(v5, 1u, &v3);
  }

  icu::Calendar::~Calendar(v5);
  v2 = *MEMORY[0x1E69E9840];
}

uint64_t icu::HebrewCalendar::defaultCenturyStartYear(icu::HebrewCalendar *this)
{
  if (atomic_load_explicit(dword_1ED442C18, memory_order_acquire) != 2 && icu::umtx_initImplPreInit(dword_1ED442C18))
  {
    sub_19532A55C();
    icu::umtx_initImplPostInit(dword_1ED442C18);
  }

  return dword_1ED441B00;
}

BOOL icu::HebrewCalendar::inTemporalLeapYear(icu::HebrewCalendar *this, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  v3 = icu::Calendar::get(this, 0x13u, a2);
  if (*a2 > 0)
  {
    return 0;
  }

  v5 = 12;
  v6 = (12 * v3 + 17) % 19;
  if (v6 < 0)
  {
    v5 = -7;
  }

  return v6 >= v5;
}

char *icu::HebrewCalendar::getTemporalMonthCode(icu::HebrewCalendar *this, UErrorCode *a2)
{
  v3 = icu::Calendar::get(this, 2u, a2);
  if (*a2 <= 0)
  {
    return off_1E740D540[v3];
  }

  else
  {
    return 0;
  }
}

uint64_t icu::HebrewCalendar::setTemporalMonthCode(uint64_t this, const char *__s, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    v5 = this;
    this = strlen(__s);
    if ((this - 3) > 1)
    {
LABEL_6:
      *a3 = U_ILLEGAL_ARGUMENT_ERROR;
    }

    else
    {
      v6 = 0;
      while (1)
      {
        this = strcmp(__s, off_1E740D540[v6]);
        if (!this)
        {
          break;
        }

        if (++v6 == 13)
        {
          goto LABEL_6;
        }
      }

      return icu::Calendar::set(v5, 2u, v6);
    }
  }

  return this;
}

uint64_t icu::HebrewCalendar::internalGetMonth(icu::HebrewCalendar *this, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  if (icu::Calendar::resolveFields(this, icu::Calendar::kMonthPrecedence) != 23)
  {
    return icu::Calendar::internalGetMonth(this, a2);
  }

  v2 = *(this + 26);
  v10 = *(this + 26);
  v5 = (*(*this + 336))(this, a2);
  if (*a2 > 0)
  {
    return 0;
  }

  v6 = 12;
  v7 = (12 * v5 + 17) % 19;
  if (v7 < 0)
  {
    v6 = -7;
  }

  if (v7 < v6 && v2 > 5)
  {
    if (!uprv_add32_overflow(v2, 1, &v10))
    {
      return v10;
    }

    return icu::Calendar::internalGetMonth(this, a2);
  }

  return v2;
}

uint64_t sub_19532A980()
{
  if (qword_1ED442C10)
  {
    (*(*qword_1ED442C10 + 8))(qword_1ED442C10);
  }

  qword_1ED442C10 = 0;
  return 1;
}

__n128 icu::HinduLunarCalendar::HinduLunarCalendar(icu::HinduLunarCalendar *this, __n128 *a2)
{
  v3 = icu::Calendar::Calendar(this, a2);
  *v3 = &unk_1F093B568;
  *(v3 + 634) = a2[39].n128_u8[10];
  *(v3 + 680) = a2[42].n128_u32[2];
  *(v3 + 688) = a2[43].n128_u64[0];
  result = a2[40];
  v5 = a2[41];
  *(v3 + 672) = a2[42].n128_u64[0];
  *(v3 + 640) = result;
  *(v3 + 656) = v5;
  return result;
}

{
  v3 = icu::Calendar::Calendar(this, a2);
  *v3 = &unk_1F093B568;
  *(v3 + 634) = a2[39].n128_u8[10];
  *(v3 + 680) = a2[42].n128_u32[2];
  *(v3 + 688) = a2[43].n128_u64[0];
  result = a2[40];
  v5 = a2[41];
  *(v3 + 672) = a2[42].n128_u64[0];
  *(v3 + 640) = result;
  *(v3 + 656) = v5;
  return result;
}

icu::HinduLunarCalendar *icu::HinduLunarCalendar::HinduLunarCalendar(icu::HinduLunarCalendar *this, char **a2, UErrorCode *a3)
{
  v6 = icu::TimeZone::forLocaleOrDefault(a2, a2);
  v7 = icu::Calendar::Calendar(this, v6, a2, a3);
  *this = &unk_1F093B568;
  *(this + 634) = 0;
  *(this + 40) = xmmword_19548DEC8;
  *(this + 41) = unk_19548DED8;
  *(this + 84) = 0x3FCAF09A2186C9EBLL;
  *(this + 170) = -1132959;
  HinduCalZoneAstroCalc = icu::HinduLunarCalendar::getHinduCalZoneAstroCalc(v7);
  *(this + 86) = HinduCalZoneAstroCalc;
  icu::Calendar::getNow(HinduCalZoneAstroCalc);
  icu::Calendar::setTimeInMillis(this, v9, a3);
  return this;
}

uint64_t icu::HinduLunarCalendar::getHinduCalZoneAstroCalc(icu::HinduLunarCalendar *this)
{
  if (atomic_load_explicit(dword_1EAEC9DEC, memory_order_acquire) != 2 && icu::umtx_initImplPreInit(dword_1EAEC9DEC))
  {
    sub_19532AD2C();
  }

  return qword_1EAEC9DD8;
}

icu::HinduLunarCalendar *icu::HinduLunarCalendar::HinduLunarCalendar(icu::HinduLunarCalendar *this, char **a2, int a3, const icu::TimeZone *a4, UErrorCode *a5)
{
  v10 = icu::TimeZone::forLocaleOrDefault(a2, a2);
  v11 = icu::Calendar::Calendar(this, v10, a2, a5);
  *this = &unk_1F093B568;
  *(this + 634) = 0;
  *(this + 40) = xmmword_19548DEC8;
  *(this + 41) = unk_19548DED8;
  *(this + 84) = 0x3FCAF09A2186C9EBLL;
  *(this + 170) = a3;
  *(this + 86) = a4;
  icu::Calendar::getNow(v11);
  icu::Calendar::setTimeInMillis(this, v12, a5);
  return this;
}

void icu::HinduLunarCalendar::~HinduLunarCalendar(icu::HinduLunarCalendar *this)
{
  icu::Calendar::~Calendar(this);

  JUMPOUT(0x19A8B2600);
}

void icu::HinduLunarCalendar::hinduDate(int a1@<W1>, int a2@<W2>, char a3@<W3>, int a4@<W4>, char a5@<W5>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 4) = a2;
  *(a6 + 8) = a3;
  *(a6 + 12) = a4;
  *(a6 + 16) = a5;
}

uint64_t icu::HinduLunarCalendar::hinduLunarFromFixed@<X0>(icu::HinduLunarCalendar *this@<X0>, int a2@<W1>, uint64_t a3@<X8>, int8x16_t a4@<Q0>, int8x16_t a5@<Q1>)
{
  v7 = (a2 - 1721426);
  *a4.i64 = (75 - *(this + 163));
  a5.i64[0] = 23.0;
  *v8.i64 = icu::CalendarAstronomer::hinduSunrise((a2 - 1721425), a4, a5);
  v9 = v8.i64[0];
  v15 = icu::CalendarAstronomer::hinduLunarDayFromMoment(v10, v8, v11, v12, v13, v14);
  *v16.i64 = (75 - *(this + 163));
  v17.i64[0] = 23.0;
  *v18.i64 = icu::CalendarAstronomer::hinduSunrise(v7, v16, v17);
  v24 = icu::CalendarAstronomer::hinduLunarDayFromMoment(v19, v18, v20, v21, v22, v23);
  v79 = v24;
  v25.i64[0] = v9;
  v30 = icu::CalendarAstronomer::hinduNewMoonBefore(v24, v25, v26, v27, v28, v29);
  v31.i64[0] = 0x4041800000000000;
  *v32.i64 = floor(v30) + 35.0;
  v37 = icu::CalendarAstronomer::hinduNewMoonBefore(v33, v32, v31, v34, v35, v36);
  *v38.i64 = v30;
  v44 = icu::CalendarAstronomer::hinduZodiac(v39, v38, v40, v41, v42, v43);
  v45 = v44;
  *v46.i64 = v37;
  v51 = icu::CalendarAstronomer::hinduZodiac(v44, v46, v47, v48, v49, v50);
  v57 = v51;
  v58 = (v45 + 1) % 12;
  v59 = v7 + 181;
  if (v58 >= 3)
  {
    v59 = v7 + 1;
  }

  *v52.i64 = v59;
  v60 = icu::CalendarAstronomer::hinduCalendarYear(v51, v52, v53, v54, v55, v56);
  v61 = v60 - 3044;
  v62 = (*(*this + 456))(this);
  v63 = v15 - 15;
  v64 = v60 - 3043;
  if (v58 == 11)
  {
    v65 = 0;
  }

  else
  {
    v65 = v58 + 1;
  }

  if (v58 != 11)
  {
    v64 = v60 - 3044;
  }

  if (v15 <= 15)
  {
    v63 = v15 + 15;
    v65 = (v45 + 1) % 12;
    v64 = v60 - 3044;
  }

  if (v45 == v57)
  {
    v63 = v15;
    v65 = (v45 + 1) % 12;
    v64 = v60 - 3044;
  }

  if (v62 == 1)
  {
    v66 = v63;
  }

  else
  {
    v66 = v15;
  }

  if (v62 == 1)
  {
    v67 = v65;
  }

  else
  {
    v67 = (v45 + 1) % 12;
  }

  if (v62 == 1)
  {
    v68 = v64;
  }

  else
  {
    v68 = v61;
  }

  v69 = (*(*this + 464))(this) + v68;
  v70 = v69 - 57;
  if (icu::CalendarAstronomer::hinduVikramOffset((v7 + 1)))
  {
    v71 = icu::CalendarAstronomer::hinduVikramOffset((v7 + 1)) + v66;
    if (v71)
    {
      v72 = v69 - 56;
      if (v67 == 11)
      {
        v73 = 0;
      }

      else
      {
        v73 = v67 + 1;
      }

      if (v67 != 11)
      {
        v72 = v69 - 57;
      }

      if (v71 == 31)
      {
        v66 = 1;
      }

      else
      {
        v66 = v71;
      }

      if (v71 == 31)
      {
        v67 = v73;
        v70 = v72;
      }
    }

    else
    {
      v74 = v67 == 0;
      if (v67)
      {
        --v67;
      }

      else
      {
        v67 = 11;
      }

      if (v74)
      {
        v70 = v69 - 58;
      }

      v66 = 30;
    }
  }

  updated = icu::CalendarAstronomer::updateRepeatedDay((v7 + 1));
  result = (*(*this + 472))(this);
  v77 = result + v67;
  if (result + v67 < 0)
  {
    v77 += 12;
    v78 = v70 - 1;
  }

  else if (v77 < 0xC)
  {
    v78 = v70;
  }

  else
  {
    v77 -= 12;
    v78 = v70 + 1;
  }

  *a3 = v78;
  *(a3 + 4) = v77;
  *(a3 + 8) = v45 == v57;
  *(a3 + 12) = v66;
  *(a3 + 16) = (v15 == v79) ^ (updated == 1);
  return result;
}

uint64_t icu::HinduLunarCalendar::hinduFullmoonFromFixed@<X0>(icu::HinduLunarCalendar *this@<X0>, int a2@<W1>, uint64_t a3@<X8>, int8x16_t a4@<Q0>, int8x16_t a5@<Q1>)
{
  v18 = 0;
  v19 = 0;
  v20 = 0;
  result = icu::HinduLunarCalendar::hinduLunarFromFixed(this, a2, &v18, a4, a5);
  v11 = v18;
  v12 = v19;
  v13 = HIDWORD(v19);
  v14 = v20;
  if (SHIDWORD(v19) < 16)
  {
    v15 = HIDWORD(v18);
  }

  else
  {
    result = icu::HinduLunarCalendar::hinduLunarFromFixed(this, a2 + 20, v16, v9, v10);
    v15 = v17;
  }

  *a3 = v11;
  *(a3 + 4) = v15;
  *(a3 + 8) = v12;
  *(a3 + 12) = v13;
  *(a3 + 16) = v14;
  return result;
}

uint64_t icu::HinduLunarCalendar::setLocation(uint64_t result, uint64_t a2, uint64_t a3, int a4, double a5)
{
  *v5 = *a2;
  *&v5[8] = *(a2 + 8);
  *&v5[12] = *a3;
  *&v5[20] = *(a3 + 8);
  *(result + 640) = *v5;
  *(result + 656) = *&v5[16];
  *(result + 664) = a4;
  *(result + 672) = a5;
  return result;
}

uint64_t icu::HinduLunarCalendar::fixedFromHinduLunar(icu::HinduLunarCalendar *a1, int *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *(a2 + 8);
  v6 = a2[3];
  v7 = *(a2 + 16);
  v8 = (*(*a1 + 472))(a1);
  v14 = v4 - v8;
  if (v4 - v8 < 0)
  {
    v15 = v14 + 12;
    v16 = v3 - 1;
  }

  else
  {
    if (v14 >= 0xC)
    {
      v15 = v14 - 12;
    }

    else
    {
      v15 = v4 - v8;
    }

    if (v14 < 0xC)
    {
      v16 = v3;
    }

    else
    {
      v16 = v3 + 1;
    }
  }

  v10.i64[0] = 0x4076D423DDD61975;
  v17 = (v16 + (v15 - 1) / 12 + 3044) * 365.258756;
  *v9.i64 = v17;
  *v19.i64 = icu::CalendarAstronomer::hinduSolarLongitude(v8, v9, v10, v11, v12, v13) / 360.0 + (v15 - 1) / -12.0 + 0.5;
  *v20.i64 = *v19.i64 - trunc(*v19.i64);
  v21.f64[0] = NAN;
  v21.f64[1] = NAN;
  v22 = vnegq_f64(v21);
  v23 = vbslq_s8(v22, v20, v19);
  if (*v23.i64 <= 0.0)
  {
    *v19.i64 = *v19.i64 + 1.0;
    *v23.i64 = *v19.i64 - trunc(*v19.i64);
    v23.i64[0] = vbslq_s8(v22, v23, v19).u64[0];
  }

  v24 = vcvtmd_s64_f64(v17 + (*v23.i64 + -0.5) * -365.258756);
  *v25.i64 = icu::CalendarAstronomer::hr(v18, 6.0) + v24;
  v31 = icu::CalendarAstronomer::hinduLunarDayFromMoment(v26, v25, v27, v28, v29, v30);
  v34 = v31;
  v35 = (v24 - v6);
  if ((v31 - 27) > 0xFFFFFFE7)
  {
    v37 = v24 - 15;
    icu::HinduLunarCalendar::hinduLunarFromFixed(a1, v37, v72, v32, v33);
    if (v73 == v15 && (!v5 || (icu::HinduLunarCalendar::hinduLunarFromFixed(a1, v37, v70, v38, v39), v71)))
    {
      v40 = fmod(v34 + -15.0, 30.0);
      if (v40 <= 0.0)
      {
        v40 = fmod(v34 + -15.0 + 30.0, 30.0);
      }

      v41 = 15.0;
    }

    else
    {
      v40 = fmod((v34 + 15), 30.0);
      if (v40 <= 0.0)
      {
        v40 = fmod((v34 + 45), 30.0);
      }

      v41 = -15.0;
    }

    v36 = v40 + v41;
  }

  else
  {
    v36 = v31;
  }

  v42 = (v36 + v35);
  *v43.i64 = icu::CalendarAstronomer::hr(v31, 6.0) + v42;
  v49 = (icu::CalendarAstronomer::hinduLunarDayFromMoment(v44, v43, v45, v46, v47, v48) - v6) + 15.0;
  *v50.i64 = fmod(v49, 30.0);
  if (*v50.i64 <= 0.0)
  {
    *v50.i64 = fmod(v49 + 30.0, 30.0);
  }

  v52 = (v42 - (*v50.i64 + -15.0));
  if (v52 > 31)
  {
    v56 = v6;
  }

  else
  {
    v53 = (v6 + 1) % 30;
    if (v53 <= 0xFFFFFFE1)
    {
      v54 = (v6 + 1) % 30;
    }

    else
    {
      v54 = v53 + 30;
    }

    v55 = v52 - 2;
    v56 = v6;
    do
    {
      *v50.i64 = (75 - *(a1 + 163));
      v51.i64[0] = 23.0;
      *v57.i64 = icu::CalendarAstronomer::hinduSunrise((v55 + 1), v50, v51);
      if (icu::CalendarAstronomer::hinduLunarDayFromMoment(v58, v57, v59, v60, v61, v62) == v6 || (*v50.i64 = (75 - *(a1 + 163)), v51.i64[0] = 23.0, *v63.i64 = icu::CalendarAstronomer::hinduSunrise((v55 + 1), v50, v51), icu::CalendarAstronomer::hinduLunarDayFromMoment(v64, v63, v65, v66, v67, v68) == v54))
      {
        v56 = v55 + 1;
      }

      ++v55;
    }

    while (v55 < 30);
  }

  return (v56 + v7);
}

double icu::HinduLunarCalendar::mod3(icu::HinduLunarCalendar *this, double result, double a3, double a4)
{
  if (a3 != a4)
  {
    v5 = result - a3;
    v6 = a4 - a3;
    v7 = fmod(result - a3, a4 - a3);
    if (v7 <= 0.0)
    {
      v7 = fmod(v5 + v6, v6);
    }

    return v7 + a3;
  }

  return result;
}

uint64_t icu::HinduLunarCalendar::hinduLunarNewYear(icu::HinduLunarCalendar *this, int a2)
{
  v4 = icu::HinduLunarCalendar::gregorianNewYear(this, a2);
  *v5.i64 = v4;
  v6.i64[0] = 0x4074A00000000000;
  v10.i64[0] = icu::CalendarAstronomer::hinduSolarLongitudeAtOrAfter(v4, v6, v5, v7, v8, v9);
  v11.i64[0] = 1.0;
  v16 = icu::CalendarAstronomer::hinduLunarDayAtOrAfter(v12, v11, v10, v13, v14, v15);
  LODWORD(v2) = vcvtmd_s64_f64(v16);
  *v17.i64 = (75 - *(this + 163));
  v18.i64[0] = 23.0;
  if (v16 >= icu::CalendarAstronomer::hinduSunrise(v2, v17, v18))
  {
    *v19.i64 = (75 - *(this + 163));
    v20.i64[0] = 23.0;
    *v22.i64 = icu::CalendarAstronomer::hinduSunrise((v2 + 1), v19, v20);
    v21 = icu::CalendarAstronomer::hinduLunarDayFromMoment(v23, v22, v24, v25, v26, v27) != 2;
  }

  else
  {
    v21 = 0;
  }

  return (v21 + v2);
}

uint64_t icu::HinduLunarCalendar::gregorianNewYear(icu::HinduLunarCalendar *this, int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v6 = U_ZERO_ERROR;
  bzero(v7, 0x2A0uLL);
  icu::GregorianCalendar::GregorianCalendar(v7, a2, 0, 1, 0, 0, &v6);
  v3 = icu::Calendar::get(v7, 0x14u, &v6);
  icu::GregorianCalendar::~GregorianCalendar(v7);
  v4 = *MEMORY[0x1E69E9840];
  return (v3 - 1721424);
}

void icu::HinduLunarCalendar::modLisp(icu::HinduLunarCalendar *this, long double a2, long double a3)
{
  if (fmod(a2, a3) <= 0.0)
  {
    fmod(a2 + a3, a3);
  }
}

void icu::HinduLunarCalendar::listRange(uint64_t a1@<X0>, char **a2@<X1>, _DWORD *a3@<X2>, char **a4@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  a4[2] = 0;
  *a4 = 0;
  a4[1] = 0;
  if (v6 != v7)
  {
    sub_19532E5A4(__p, v6 + 4, v7);
    icu::HinduLunarCalendar::listRange(a1, __p, a3);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v10 = **a2;
    if (*a3 <= v10 && a3[1] > v10)
    {
      sub_19532B868(a4, *a4, *a2);
    }
  }
}

char *sub_19532B868(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 2) + 1;
    if (v11 >> 62)
    {
      sub_195223E74();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 1 > v11)
    {
      v11 = v13 >> 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v14 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 2;
    v29 = a1;
    if (v14)
    {
      sub_19532E648(a1, v14);
    }

    v26 = 0;
    v27 = 4 * v15;
    v28 = (4 * v15);
    sub_19532E690(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 4;
  }

  else
  {
    v8 = __src + 4;
    if (v6 < 4)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 4;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 4, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 4;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = *&a3[v24];
  }

  return v4;
}

uint64_t icu::HinduLunarCalendar::handleGetLimit(uint64_t a1, int a2, int a3)
{
  if ((a2 == 24 || a2 == 22) && (*(*a1 + 456))(a1) == 2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return dword_19548DEF0[4 * a2 + a3];
  }
}

uint64_t icu::HinduLunarCalendar::handleGetExtendedYear(icu::HinduLunarCalendar *this, UErrorCode *a2)
{
  if (*(this + 36) < 1)
  {
    v2 = -1132958;
  }

  else
  {
    v2 = *(this + 4) - 1132959;
  }

  return (v2 - *(this + 170));
}

uint64_t icu::HinduLunarCalendar::handleGetMonthLength(icu::HinduLunarCalendar *this, uint64_t a2, uint64_t a3, UErrorCode *a4)
{
  v5 = a3;
  v8 = (*(*this + 312))(this, a2, a3, 1, a4);
  v9 = *this + 312;
  if (v5 == 11)
  {
    v10 = (a2 + 1);
    v11 = this;
    v12 = 0;
  }

  else
  {
    v12 = (v5 + 1);
    v11 = this;
    v10 = a2;
  }

  v13 = (*(*this + 312))(v11, v10, v12, 1, a4);
  v14 = v13 - v8;
  if (v13 == v8)
  {
    v14 = (*(*this + 312))(this, a2, (v5 + 2), 1, a4) - v8;
  }

  v15 = v14 - 30;
  if (v14 == 58)
  {
    v15 = 29;
  }

  if (v14 - 58 >= 3)
  {
    return v14;
  }

  else
  {
    return v15;
  }
}

uint64_t icu::HinduLunarCalendar::handleComputeFields(icu::HinduLunarCalendar *this, int a2, UErrorCode *a3, int8x16_t a4, int8x16_t a5)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  icu::HinduLunarCalendar::hinduLunarFromFixed(this, a2, &v11, a4, a5);
  *(this + 18) = 0x100000001;
  *(this + 113) = 257;
  v10 = v11;
  *(this + 2) = v11;
  *(this + 25) = v12;
  *(this + 57) = 1;
  *(this + 134) = 1;
  *(this + 8) = HIDWORD(v12);
  *(this + 40) = 1;
  *(this + 117) = 1;
  *(this + 27) = v13;
  *(this + 59) = 1;
  *(this + 136) = 1;
  v8 = -(*(*this + 472))(this);
  result = (*(*this + 312))(this, v10, v8, 0, a3);
  *(this + 9) = a2 - result;
  *(this + 41) = 1;
  *(this + 118) = 1;
  return result;
}

uint64_t icu::HinduLunarCalendar::handleComputeMonthStart(icu::HinduLunarCalendar *this, uint64_t a2, uint64_t a3, uint64_t a4, UErrorCode *a5)
{
  v5 = a4;
  v6 = a2;
  v8 = a3 - (*(*this + 472))(this, a2, a3, a4, a5);
  if (v8 >= 0xC)
  {
    v30 = v8;
    sub_195328CE8(&v30, v8, 12.0);
    v6 += v9;
    v8 = v30;
  }

  v10 = (*(*this + 464))(this);
  v11 = icu::HinduLunarCalendar::hinduLunarNewYear(this, v6 - v10);
  if (v5)
  {
    v14 = (v11 + 15);
    do
    {
      *v12.i64 = (75 - *(this + 163));
      v13.i64[0] = 23.0;
      *v15.i64 = icu::CalendarAstronomer::hinduSunrise(v14, v12, v13);
      *v21.i64 = icu::CalendarAstronomer::hinduNewMoonBefore(v16, v15, v17, v18, v19, v20);
      v22 = *v21.i64;
      v28 = (icu::CalendarAstronomer::hinduZodiac(v23, v21, v24, v25, v26, v27) + 1) % 12;
      v14 = (v22 + 45.0);
    }

    while (v28 < v8);
  }

  else
  {
    v22 = v11;
  }

  return (v22 + 1721424.0);
}

uint64_t icu::HinduLunarCalendar::handleComputeOrdinalDay(icu::HinduLunarCalendar *this, int a2, int8x16_t a3, int8x16_t a4)
{
  v6 = *(this + 40);
  if (v6 < 1 || (v7 = *(this + 8), v7 <= 0x1E))
  {
    v8 = *(this + 37);
    if (v8 >= 1 && *(this + 5) >= 0xCu)
    {
      if (v6 < 1)
      {
        return 0;
      }

      else
      {
        return *(this + 8);
      }
    }

    v7 = v6 < 1 ? 0 : *(this + 8);
    v9 = v8 < 1 ? 0 : *(this + 5);
    v10 = *(this + 57) < 1 ? 0 : *(this + 25);
    v11 = *(this + 36) < 1 ? 0 : *(this + 4);
    v12 = *(this + 59) < 1 ? 0 : *(this + 27);
    v13 = v7 + a2;
    v27 = 0uLL;
    v28 = 0;
    icu::HinduLunarCalendar::hinduLunarFromFixed(this, v7 + a2, &v27, a3, a4);
    if ((v7 & 0x80000000) == 0 && (v9 & 0x80000000) == 0 && (v11 & 0x80000000) == 0)
    {
      if (v10 == v27.u8[8])
      {
        v16 = 0;
      }

      else
      {
        v16 = 0;
        do
        {
          icu::HinduLunarCalendar::hinduLunarFromFixed(this, ++v16 + v13, &v25, v14, v15);
          v14 = v25;
          v27 = v25;
          LOBYTE(v28) = v26;
        }

        while (v10 != v25.u8[8]);
        v13 += v16;
      }

      v17 = v27.i32[1];
      if (v11 != v27.i32[0] || v9 != v27.i32[1] || v7 != v27.i32[3])
      {
        if (v27.i32[3] <= v7)
        {
          if (v27.i32[3] < v7)
          {
            if (v27.i32[0] > v11)
            {
              do
              {
                icu::HinduLunarCalendar::hinduLunarFromFixed(this, --v13, &v25, v14, v15);
                v14 = v25;
                v27 = v25;
                LOBYTE(v28) = v26;
              }

              while (v25.i32[0] > v11);
              v17 = v27.i32[1];
            }

            if (v17 == v9)
            {
              while (v27.i32[3] < v7)
              {
                icu::HinduLunarCalendar::hinduLunarFromFixed(this, ++v13, &v25, v14, v15);
                v14 = v25;
                v27 = v25;
                LOBYTE(v28) = v26;
              }

              if (v12 == 1 && (v28 & 1) == 0)
              {
                icu::HinduLunarCalendar::hinduLunarFromFixed(this, v13 + 1, &v25, v14, v15);
                v23 = v26;
                LOBYTE(v28) = v26;
                v27 = v25;
                if (v7 != v25.i32[3])
                {
                  v23 = 0;
                }

                return (v13 - a2 + v23);
              }
            }

            else if (v17 <= v9)
            {
              while (v27.i32[3] < v7)
              {
                icu::HinduLunarCalendar::hinduLunarFromFixed(this, ++v13, &v25, v14, v15);
                v14 = v25;
                v27 = v25;
                LOBYTE(v28) = v26;
              }

              if (v27.i32[3] > v7)
              {
                do
                {
                  icu::HinduLunarCalendar::hinduLunarFromFixed(this, --v13, &v25, v14, v15);
                  v23 = 0;
                  v14 = v25;
                  v27 = v25;
                  LOBYTE(v28) = v26;
                }

                while (v25.i32[3] > v7);
                return (v13 - a2 + v23);
              }
            }

            else
            {
              do
              {
                icu::HinduLunarCalendar::hinduLunarFromFixed(this, --v13, &v25, v14, v15);
                v14 = v25;
                v27 = v25;
                LOBYTE(v28) = v26;
              }

              while (v25.i32[1] > v9);
              if (v27.i32[3] > v7)
              {
                do
                {
                  icu::HinduLunarCalendar::hinduLunarFromFixed(this, --v13, &v25, v14, v15);
                  v23 = 0;
                  v14 = v25;
                  v27 = v25;
                  LOBYTE(v28) = v26;
                }

                while (v25.i32[3] > v7);
                return (v13 - a2 + v23);
              }
            }
          }
        }

        else
        {
          if (v27.i32[0] < v11)
          {
            do
            {
              icu::HinduLunarCalendar::hinduLunarFromFixed(this, ++v13, &v25, v14, v15);
              v14 = v25;
              v27 = v25;
              LOBYTE(v28) = v26;
            }

            while (v25.i32[0] < v11);
            v17 = v27.i32[1];
          }

          if (v17 == v9)
          {
            while (v27.i32[3] > v7)
            {
              icu::HinduLunarCalendar::hinduLunarFromFixed(this, --v13, &v25, v14, v15);
              v14 = v25;
              v27 = v25;
              LOBYTE(v28) = v26;
            }
          }

          else if (v17 >= v9)
          {
            while (1)
            {
              v22 = v27.i32[3];
              if (v27.i32[3] >= v7)
              {
                break;
              }

              icu::HinduLunarCalendar::hinduLunarFromFixed(this, ++v13, &v25, v14, v15);
              v14 = v25;
              v27 = v25;
              LOBYTE(v28) = v26;
            }

            while (v22 > v7)
            {
              icu::HinduLunarCalendar::hinduLunarFromFixed(this, --v13, &v25, v14, v15);
              v14 = v25;
              v27 = v25;
              LOBYTE(v28) = v26;
              v22 = v25.i32[3];
            }
          }

          else
          {
            do
            {
              icu::HinduLunarCalendar::hinduLunarFromFixed(this, ++v13, &v25, v14, v15);
              v14 = v25;
              v27 = v25;
              LOBYTE(v28) = v26;
            }

            while (v25.i32[1] < v9);
            while (v10 != v27.u8[8])
            {
              icu::HinduLunarCalendar::hinduLunarFromFixed(this, ++v13, &v25, v14, v15);
              v14 = v25;
              v27 = v25;
              LOBYTE(v28) = v26;
            }

            while (v27.i32[3] < v7)
            {
              icu::HinduLunarCalendar::hinduLunarFromFixed(this, ++v13, &v25, v14, v15);
              v14 = v25;
              v27 = v25;
              LOBYTE(v28) = v26;
            }
          }
        }

        v23 = 0;
        return (v13 - a2 + v23);
      }

      if (v12 == v28)
      {
        return (v16 + v7);
      }

      else if (v12 != 1 || (v28 & 1) != 0)
      {
        icu::HinduLunarCalendar::hinduLunarFromFixed(this, v13 - 1, &v25, v14, v15);
        LOBYTE(v28) = v26;
        v27 = v25;
        if (v26)
        {
          v20 = 0;
        }

        else
        {
          v20 = v7 == v25.i32[3];
        }

        v21 = v20;
        return (v7 - v21);
      }

      else
      {
        icu::HinduLunarCalendar::hinduLunarFromFixed(this, v13 + 1, &v25, v14, v15);
        v27 = v25;
        LOBYTE(v28) = v26;
        if (v7 == v25.i32[3])
        {
          return v7 + v28;
        }
      }
    }
  }

  return v7;
}

_BYTE *icu::HinduLunarCalendar::add(_BYTE *this, unsigned int a2, int a3, UErrorCode *a4)
{
  v6 = this;
  if (a2 == 23 || a2 == 2)
  {
    if (!a3)
    {
      return this;
    }

    if ((*(*this + 456))(this) && icu::Calendar::get(v6, 1u, a4) >= 1956 && (v7 = icu::Calendar::get(v6, 1u, a4), (icu::Calendar::get(v6, 2u, a4) + a3) / 12 + v7 < 2157))
    {
      v11 = icu::Calendar::get(v6, 5u, a4);
      v12 = icu::Calendar::get(v6, 1u, a4);
      v13 = icu::Calendar::get(v6, 2u, a4);
      HinduMonthStart = icu::CalendarAstronomer::getHinduMonthStart(v12, v13 + a3);
      v15 = icu::Calendar::get(v6, 1u, a4);
      v16 = icu::Calendar::get(v6, 2u, a4);
      v17 = icu::CalendarAstronomer::getHinduMonthStart(v15, a3 + v16 + 1) - HinduMonthStart;
      if (v11 < v17)
      {
        v17 = v11;
      }

      v10 = v17 + HinduMonthStart;
      v9 = v6;
    }

    else
    {
      this = icu::Calendar::get(v6, 0x14u, a4);
      if (*a4 > 0)
      {
        return this;
      }

      v8 = (this + a3 * 29.5305879);
      (*(*v6 + 384))(v6, v8, a4);
      v9 = v6;
      v10 = v8;
    }

    icu::Calendar::set(v9, 0x14u, v10);

    return icu::Calendar::complete(v6, a4);
  }

  else
  {

    return icu::Calendar::add(this, a2, a3, a4);
  }
}

void icu::HinduLunarCalendar::roll(_BYTE *a1, uint64_t a2, int a3, UErrorCode *a4)
{
  if (a2 == 23 || a2 == 2)
  {
    if (!a3)
    {
      return;
    }

    v7 = icu::Calendar::get(a1, 5u, a4);
    if (*a4 > 0)
    {
      return;
    }

    v8 = v7;
    v9 = icu::Calendar::get(a1, 0x14u, a4);
    if (*a4 > 0)
    {
      return;
    }

    v10 = v9;
    v11 = icu::Calendar::get(a1, 2u, a4);
    if (*a4 > 0)
    {
      return;
    }

    v12 = v11;
    if (!a1[634])
    {
      v18 = 12;
      goto LABEL_19;
    }

    v13 = icu::Calendar::get(a1, 0x16u, a4);
    if (v13 == 1)
    {
      ++v12;
    }

    else
    {
      v20 = v10 - v8 + 1;
      *v15.i64 = v12 + -0.5;
      *v14.i64 = (v20 - (*v15.i64 * 29.5305889));
      v22 = icu::CalendarAstronomer::hinduNewMoonBefore(v13, v14, v15, -0.5, v16, v17);
      while (v20 >= v22)
      {
        *v23.i64 = (v20 - 31);
        v20 = icu::CalendarAstronomer::hinduNewMoonBefore(v21, v23, v24, v25, v26, v27);
      }
    }

    if (*a4 <= 0)
    {
      if (a1[634])
      {
        v18 = 13;
      }

      else
      {
        v18 = 12;
      }

LABEL_19:
      v19 = *(*a1 + 384);

      v19(a1, (v10 + ((v12 + a3) % v18 - v12 + (v18 & (((v12 + a3) % v18) >> 31))) * 29.5305879), a4);
    }
  }

  else
  {

    icu::Calendar::roll(a1, a2, a3, a4);
  }
}

uint64_t icu::HinduLunarCalendar::isLeapMonthBetween(icu::HinduLunarCalendar *this, int a2, int a3, int8x16_t a4, int8x16_t a5, double a6, double a7, int8x16_t a8)
{
  for (; a3 >= a2; a3 = icu::CalendarAstronomer::hinduNewMoonBefore(this, a4, a5, a6, a7, a8))
  {
    *a4.i64 = (a3 - 31);
  }

  return 0;
}

uint64_t icu::HinduLunarCalendar::inDaylightTime(icu::HinduLunarCalendar *this, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  TimeZone = icu::Calendar::getTimeZone(this);
  result = (*(*TimeZone + 72))(TimeZone);
  if (result)
  {
    icu::Calendar::complete(this, a2);
    return *a2 <= 0 && *(this + 19) != 0;
  }

  return result;
}

double icu::HinduLunarCalendar::internalGetDefaultCenturyStart(icu::HinduLunarCalendar *this)
{
  if (atomic_load_explicit(dword_1EAEC9DF4, memory_order_acquire) != 2 && icu::umtx_initImplPreInit(dword_1EAEC9DF4))
  {
    sub_19532CA48();
    icu::umtx_initImplPostInit(dword_1EAEC9DF4);
  }

  return *&qword_1ED441B08;
}

uint64_t icu::HinduLunarCalendar::internalGetDefaultCenturyStartYear(icu::HinduLunarCalendar *this)
{
  if (atomic_load_explicit(dword_1EAEC9DF4, memory_order_acquire) != 2 && icu::umtx_initImplPreInit(dword_1EAEC9DF4))
  {
    sub_19532CA48();
    icu::umtx_initImplPostInit(dword_1EAEC9DF4);
  }

  return dword_1ED441B10;
}

void sub_19532CA48()
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = U_ZERO_ERROR;
  bzero(v5, 0x2B8uLL);
  icu::Locale::Locale(v4, "@calendar=hindu", 0, 0, 0);
  icu::HinduLunarCalendar::HinduLunarCalendar(v5, v4, &v3);
  icu::Locale::~Locale(v4);
  if (v3 <= U_ZERO_ERROR)
  {
    icu::Calendar::getNow(v0);
    icu::Calendar::setTimeInMillis(v5, v1, &v3);
    icu::Calendar::add(v5, 1u, -80, &v3);
    qword_1ED441B08 = icu::Calendar::getTimeInMillis(v5, &v3);
    dword_1ED441B10 = icu::Calendar::get(v5, 1u, &v3);
  }

  icu::Calendar::~Calendar(v5);
  v2 = *MEMORY[0x1E69E9840];
}

icu::HinduLunarCalendar *icu::HinduSolarCalendar::HinduSolarCalendar(icu::HinduSolarCalendar *this, char **a2, UErrorCode *a3)
{
  result = icu::HinduLunarCalendar::HinduLunarCalendar(this, a2, a3);
  *result = &unk_1F093B758;
  return result;
}

{
  result = icu::HinduLunarCalendar::HinduLunarCalendar(this, a2, a3);
  *result = &unk_1F093B758;
  return result;
}

void icu::HinduSolarCalendar::~HinduSolarCalendar(icu::HinduSolarCalendar *this)
{
  icu::Calendar::~Calendar(this);

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::HinduSolarCalendar::handleComputeFields(icu::HinduSolarCalendar *this, uint64_t a2, UErrorCode *a3)
{
  v11 = 0uLL;
  v12 = 0;
  (*(*this + 480))(&v11);
  v5 = DWORD1(v11);
  if ((DWORD1(v11) & 0x80000000) != 0)
  {
    (*(*this + 488))(&v9, this, a2);
    v11 = v9;
    LOBYTE(v12) = v10;
    v5 = DWORD1(v9);
  }

  *(this + 18) = 0x100000001;
  *(this + 113) = 257;
  v6 = v11;
  v7 = HIDWORD(v11);
  *(this + 22) = v11;
  *(this + 4) = v6;
  *(this + 5) = v5;
  *(this + 26) = v5;
  *(this + 54) = 1;
  *(this + 131) = 1;
  *(this + 58) = 1;
  *(this + 135) = 1;
  *(this + 8) = v7;
  *(this + 40) = 1;
  *(this + 117) = 1;
  result = (*(*this + 312))(this);
  *(this + 9) = a2 - result;
  *(this + 41) = 1;
  *(this + 118) = 1;
  return result;
}

uint64_t icu::HinduSolarCalendar::handleGetLimit(uint64_t a1, int a2, int a3)
{
  if (a2 > 21)
  {
    if ((a2 == 22 || a2 == 24) && (*(*a1 + 456))(a1) == 2)
    {
      return 0xFFFFFFFFLL;
    }

    return dword_19548DEF0[4 * a2 + a3];
  }

  if (a2 != 5)
  {
    if (a2 == 6)
    {
      if (a3 == 2)
      {
        return 365;
      }

      if (a3 == 3)
      {
        return 366;
      }

      return dword_19548DEF0[a3 + 24];
    }

    return dword_19548DEF0[4 * a2 + a3];
  }

  if (a3 == 2)
  {
    return 29;
  }

  if (a3 == 3)
  {
    return 32;
  }

  return dword_19548DEF0[a3 + 20];
}

uint64_t icu::HinduSolarCalendar::handleComputeMonthStart(icu::HinduSolarCalendar *this, uint64_t a2, unsigned int a3, int a4, UErrorCode *a5)
{
  if (a4)
  {
    v8 = a3;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 0xC)
  {
    v15 = v8;
    sub_195328CE8(&v15, v8, 12.0);
    a2 = (v9 + a2);
    v8 = v15;
  }

  v10 = (*(*this + 552))(this);
  v11 = (*(*this + 560))(this);
  if (v11)
  {
    v12 = a2 < v10;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    return (*(*this + 496))(this, a2, v8, a5);
  }

  v13 = v11;
  if (a2 >= (*(*this + 568))(this) / 12 + v10)
  {
    return (*(*this + 496))(this, a2, v8, a5);
  }

  else
  {
    return *(v13 + 4 * (v8 + 12 * (a2 - v10))) + 1721424;
  }
}

char *icu::HinduSolarCalendar::hinduSolarFromFixedWithLookup@<X0>(icu::HinduSolarCalendar *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  result = (*(*this + 560))(this);
  if (result && (v7 = result, v8 = a2 - 1721425, a2 - 1721425 >= *result) && (result = (*(*this + 568))(this), v8 < *&v7[4 * result - 4]))
  {
    v9 = (*(*this + 568))(this);
    v10 = v7;
    if (v9)
    {
      v11 = v9;
      v10 = v7;
      do
      {
        v12 = v11 >> 1;
        v13 = &v10[4 * (v11 >> 1)];
        v15 = *v13;
        v14 = v13 + 4;
        v11 += ~(v11 >> 1);
        if (v15 < v8)
        {
          v10 = v14;
        }

        else
        {
          v11 = v12;
        }
      }

      while (v11);
    }

    v16 = ((v10 - v7) >> 2) - (*v10 != v8);
    result = (*(*this + 552))(this);
    v17 = result + v16 / 12;
    v18 = v16 % 12;
    v19 = a2 - 1721425 - *&v7[4 * v16] + 1;
  }

  else
  {
    v17 = 0;
    v19 = 0;
    v18 = -999;
  }

  *a3 = v17;
  *(a3 + 4) = v18;
  *(a3 + 8) = 0;
  *(a3 + 12) = v19;
  *(a3 + 16) = 0;
  return result;
}

uint64_t icu::HinduSolarCalendar::hinduSolarFromFixed@<X0>(icu::HinduSolarCalendar *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = a2 - 1721425;
  v7 = (*(*this + 512))(this, (a2 - 1721425));
  v8 = (*(*this + 520))(this);
  v9 = (*(*this + 528))(this, v7);
  v10 = (*(*this + 536))(this, v7);
  v11 = (v6 + -3.0 - fmod(floor(v10), 30.0));
  v12 = (*(*this + 504))(this, v11, v7);
  v13 = v9 - (*(*this + 464))(this) - 3179;
  result = (*(*this + 472))(this);
  v15 = result + v8;
  if (result + v8 < 0)
  {
    v15 += 12;
    v16 = v13 - 1;
  }

  else
  {
    if (v15 < 0xC)
    {
      v16 = v13;
    }

    else
    {
      v16 = v13 + 1;
    }

    if (v15 >= 0xC)
    {
      v15 -= 12;
    }
  }

  *a3 = v16;
  *(a3 + 4) = v15;
  *(a3 + 8) = 0;
  *(a3 + 12) = a2 - 1721425 - v12 + 1;
  *(a3 + 16) = 0;
  return result;
}

uint64_t icu::HinduSolarCalendar::nextMonthStart(icu::HinduSolarCalendar *this, double a2, uint64_t a3)
{
  v5 = (*(*this + 520))(this, a2);
  do
  {
    (*(*this + 512))(this, a3);
    a3 = (a3 + 1);
  }

  while ((*(*this + 520))(this) != v5);
  return (a3 - 1);
}

uint64_t icu::HinduSolarCalendar::doHandleComputeMonthStart(icu::HinduSolarCalendar *this, uint64_t a2, uint64_t a3, UErrorCode *a4)
{
  v4 = a2;
  v6 = a3 - (*(*this + 472))(this, a2, a3, a4);
  if (v6 < 0)
  {
    v7 = v6 + 12;
    --v4;
  }

  else
  {
    if (v6 >= 0xC)
    {
      v7 = v6 - 12;
    }

    else
    {
      v7 = v6;
    }

    if (v6 >= 0xC)
    {
      ++v4;
    }
  }

  v8 = v7 / 12.0 + (v4 + (*(*this + 464))(this) + 3179);
  v9 = floor(v8 * (*(*this + 544))(this)) + -1132959.0;
  v10 = (v9 - 3);
  v11 = v9 + 1721420;
  do
  {
    (*(*this + 512))(this, v10);
    v10 = (v10 + 1);
    ++v11;
  }

  while ((*(*this + 520))(this) != v7);
  return v11;
}

icu::HinduLunarCalendar *icu::HinduLunisolarVikramCalendar::HinduLunisolarVikramCalendar(icu::HinduLunisolarVikramCalendar *this, char **a2, UErrorCode *a3)
{
  result = icu::HinduLunarCalendar::HinduLunarCalendar(this, a2, a3);
  *result = &unk_1F093B9A8;
  return result;
}

{
  result = icu::HinduLunarCalendar::HinduLunarCalendar(this, a2, a3);
  *result = &unk_1F093B9A8;
  return result;
}

void icu::HinduLunisolarVikramCalendar::~HinduLunisolarVikramCalendar(icu::HinduLunisolarVikramCalendar *this)
{
  icu::Calendar::~Calendar(this);

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::HinduLunisolarVikramCalendar::handleComputeMonthStart(icu::HinduLunisolarVikramCalendar *this, icu::CalendarAstronomer *a2, uint64_t a3, uint64_t a4, UErrorCode *a5)
{
  if ((a2 - 1958) > 0xC6)
  {
    return icu::HinduLunarCalendar::handleComputeMonthStart(this, a2, a3, a4, a5) - 15;
  }

  else
  {
    return icu::CalendarAstronomer::getHinduMonthStart(a2, a3);
  }
}

icu::HinduLunarCalendar *icu::HinduLunisolarMarathiCalendar::HinduLunisolarMarathiCalendar(icu::HinduLunisolarMarathiCalendar *this, char **a2, UErrorCode *a3)
{
  result = icu::HinduLunarCalendar::HinduLunarCalendar(this, a2, a3);
  *result = &unk_1F093BB98;
  return result;
}

{
  result = icu::HinduLunarCalendar::HinduLunarCalendar(this, a2, a3);
  *result = &unk_1F093BB98;
  return result;
}

void icu::HinduLunisolarMarathiCalendar::~HinduLunisolarMarathiCalendar(icu::HinduLunisolarMarathiCalendar *this)
{
  icu::Calendar::~Calendar(this);

  JUMPOUT(0x19A8B2600);
}

icu::HinduLunarCalendar *icu::HinduLunisolarTeluguCalendar::HinduLunisolarTeluguCalendar(icu::HinduLunisolarTeluguCalendar *this, char **a2, UErrorCode *a3)
{
  result = icu::HinduLunarCalendar::HinduLunarCalendar(this, a2, a3);
  *result = &unk_1F093BD88;
  return result;
}

{
  result = icu::HinduLunarCalendar::HinduLunarCalendar(this, a2, a3);
  *result = &unk_1F093BD88;
  return result;
}

void icu::HinduLunisolarTeluguCalendar::~HinduLunisolarTeluguCalendar(icu::HinduLunisolarTeluguCalendar *this)
{
  icu::Calendar::~Calendar(this);

  JUMPOUT(0x19A8B2600);
}

icu::HinduLunarCalendar *icu::HinduLunisolarGujaratiCalendar::HinduLunisolarGujaratiCalendar(icu::HinduLunisolarGujaratiCalendar *this, char **a2, UErrorCode *a3)
{
  result = icu::HinduLunarCalendar::HinduLunarCalendar(this, a2, a3);
  *result = &unk_1F093BF78;
  return result;
}

{
  result = icu::HinduLunarCalendar::HinduLunarCalendar(this, a2, a3);
  *result = &unk_1F093BF78;
  return result;
}

void icu::HinduLunisolarGujaratiCalendar::~HinduLunisolarGujaratiCalendar(icu::HinduLunisolarGujaratiCalendar *this)
{
  icu::Calendar::~Calendar(this);

  JUMPOUT(0x19A8B2600);
}

icu::HinduLunarCalendar *icu::HinduLunisolarKannadaCalendar::HinduLunisolarKannadaCalendar(icu::HinduLunisolarKannadaCalendar *this, char **a2, UErrorCode *a3)
{
  result = icu::HinduLunarCalendar::HinduLunarCalendar(this, a2, a3);
  *result = &unk_1F093C168;
  return result;
}

{
  result = icu::HinduLunarCalendar::HinduLunarCalendar(this, a2, a3);
  *result = &unk_1F093C168;
  return result;
}

void icu::HinduLunisolarKannadaCalendar::~HinduLunisolarKannadaCalendar(icu::HinduLunisolarKannadaCalendar *this)
{
  icu::Calendar::~Calendar(this);

  JUMPOUT(0x19A8B2600);
}

icu::HinduLunarCalendar *icu::HinduSolarBanglaCalendar::HinduSolarBanglaCalendar(icu::HinduSolarBanglaCalendar *this, char **a2, UErrorCode *a3)
{
  result = icu::HinduLunarCalendar::HinduLunarCalendar(this, a2, a3);
  *result = &unk_1F093C358;
  return result;
}

{
  result = icu::HinduLunarCalendar::HinduLunarCalendar(this, a2, a3);
  *result = &unk_1F093C358;
  return result;
}

void icu::HinduSolarBanglaCalendar::~HinduSolarBanglaCalendar(icu::HinduSolarBanglaCalendar *this)
{
  icu::Calendar::~Calendar(this);

  JUMPOUT(0x19A8B2600);
}

icu::HinduLunarCalendar *icu::HinduSolarMalayalamCalendar::HinduSolarMalayalamCalendar(icu::HinduSolarMalayalamCalendar *this, char **a2, UErrorCode *a3)
{
  result = icu::HinduLunarCalendar::HinduLunarCalendar(this, a2, a3);
  *result = &unk_1F093C5A8;
  return result;
}

{
  result = icu::HinduLunarCalendar::HinduLunarCalendar(this, a2, a3);
  *result = &unk_1F093C5A8;
  return result;
}

void icu::HinduSolarMalayalamCalendar::~HinduSolarMalayalamCalendar(icu::HinduSolarMalayalamCalendar *this)
{
  icu::Calendar::~Calendar(this);

  JUMPOUT(0x19A8B2600);
}

double icu::HinduSolarMalayalamCalendar::getDayTransition(icu::HinduSolarMalayalamCalendar *this, int a2, int8x16_t a3, int8x16_t a4)
{
  *a3.i64 = a2 + 0.55;
  *a4.i64 = (75 - *(this + 163));
  return icu::CalendarAstronomer::hinduStandardFromSundial(this, a3, a4, 23.0);
}

icu::HinduLunarCalendar *icu::HinduSolarOdiaCalendar::HinduSolarOdiaCalendar(icu::HinduSolarOdiaCalendar *this, char **a2, UErrorCode *a3)
{
  result = icu::HinduLunarCalendar::HinduLunarCalendar(this, a2, a3);
  *result = &unk_1F093C7F8;
  return result;
}

{
  result = icu::HinduLunarCalendar::HinduLunarCalendar(this, a2, a3);
  *result = &unk_1F093C7F8;
  return result;
}

void icu::HinduSolarOdiaCalendar::~HinduSolarOdiaCalendar(icu::HinduSolarOdiaCalendar *this)
{
  icu::Calendar::~Calendar(this);

  JUMPOUT(0x19A8B2600);
}

double icu::HinduSolarOdiaCalendar::getDayTransition(icu::HinduSolarOdiaCalendar *this, int a2, int8x16_t a3, int8x16_t a4)
{
  *a3.i64 = (75 - *(this + 163));
  a4.i64[0] = 0x4037266666666666;
  return icu::CalendarAstronomer::hinduSunrise((a2 + 1), a3, a4);
}

icu::HinduLunarCalendar *icu::HinduSolarTamilCalendar::HinduSolarTamilCalendar(icu::HinduSolarTamilCalendar *this, char **a2, UErrorCode *a3)
{
  result = icu::HinduLunarCalendar::HinduLunarCalendar(this, a2, a3);
  *result = &unk_1F093CA48;
  return result;
}

{
  result = icu::HinduLunarCalendar::HinduLunarCalendar(this, a2, a3);
  *result = &unk_1F093CA48;
  return result;
}

void icu::HinduSolarTamilCalendar::~HinduSolarTamilCalendar(icu::HinduSolarTamilCalendar *this)
{
  icu::Calendar::~Calendar(this);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_19532E544()
{
  if (qword_1EAEC9DD8)
  {
    (*(*qword_1EAEC9DD8 + 8))(qword_1EAEC9DD8);
    qword_1EAEC9DD8 = 0;
  }

  atomic_store(0, &unk_1EAEC9DEC);
  return 1;
}

void *sub_19532E5A4(void *result, uint64_t a2, uint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3 != a2)
  {
    sub_19532E60C(result, (a3 - a2) >> 2);
  }

  return result;
}

void sub_19532E60C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    sub_19532E648(a1, a2);
  }

  sub_195223E74();
}

void sub_19532E648(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_195223E74();
}

void *sub_19532E690(void *result, _DWORD *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 1;
      }

      sub_19532E648(result[4], v11);
    }

    v7 = ((v6 >> 2) + 1) / -2;
    v8 = ((v6 >> 2) + 1) / 2;
    v9 = &v5[-4 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-4 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[4 * v7];
  }

  *v4 = *a2;
  v3[2] = v4 + 4;
  return result;
}

void *icu::IndianCalendar::IndianCalendar(icu::IndianCalendar *this, const icu::IndianCalendar *a2)
{
  result = icu::Calendar::Calendar(this, a2);
  *result = &unk_1F093CDA0;
  return result;
}

{
  result = icu::Calendar::Calendar(this, a2);
  *result = &unk_1F093CDA0;
  return result;
}

icu::IndianCalendar *icu::IndianCalendar::IndianCalendar(icu::IndianCalendar *this, char **a2, UErrorCode *a3)
{
  v6 = icu::TimeZone::forLocaleOrDefault(a2, a2);
  v7 = icu::Calendar::Calendar(this, v6, a2, a3);
  *this = &unk_1F093CDA0;
  icu::Calendar::getNow(v7);
  icu::Calendar::setTimeInMillis(this, v8, a3);
  return this;
}

void icu::IndianCalendar::~IndianCalendar(icu::IndianCalendar *this)
{
  icu::Calendar::~Calendar(this);

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::IndianCalendar::handleGetMonthLength(icu::IndianCalendar *this, int a2, unsigned int a3, UErrorCode *a4)
{
  v4 = a2;
  v11 = a3;
  if (a3 >= 0xC)
  {
    v4 = sub_195328C58(a3, 12, &v11) + a2;
  }

  HIDWORD(v6) = -1030792151 * (v4 + 78) + 85899344;
  LODWORD(v6) = HIDWORD(v6);
  v5 = v6 >> 2;
  LODWORD(v6) = HIDWORD(v6);
  v7 = (v6 >> 4) < 0xA3D70B;
  v8 = v5 > 0x28F5C28 || v7;
  if (((v4 + 78) & 3) != 0)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  if (v11)
  {
    v9 = 0;
  }

  if (v11 - 1 < 5)
  {
    v9 = 1;
  }

  if (v9)
  {
    return 31;
  }

  else
  {
    return 30;
  }
}

uint64_t icu::IndianCalendar::handleGetYearLength(icu::IndianCalendar *this, int a2)
{
  if (((a2 + 78) & 3) != 0)
  {
    return 365;
  }

  HIDWORD(v3) = -1030792151 * (a2 + 78) + 85899344;
  LODWORD(v3) = HIDWORD(v3);
  if ((v3 >> 2) > 0x28F5C28)
  {
    return 366;
  }

  HIDWORD(v4) = -1030792151 * (a2 + 78) + 85899344;
  LODWORD(v4) = HIDWORD(v4);
  if ((v4 >> 4) >= 0xA3D70B)
  {
    return 365;
  }

  else
  {
    return 366;
  }
}

uint64_t icu::IndianCalendar::handleComputeMonthStart(icu::IndianCalendar *this, int a2, unsigned int a3, signed __int8 a4, UErrorCode *a5)
{
  v20 = a3;
  v21 = a2;
  if (*a5 > 0)
  {
    return 0;
  }

  v6 = a3;
  v7 = a2;
  if (a3 >= 0xC)
  {
    v9 = sub_195328C58(a3, 12, &v20);
    if (uprv_add32_overflow(v7, v9, &v21))
    {
      result = 0;
      *a5 = U_ILLEGAL_ARGUMENT_ERROR;
      return result;
    }

    v6 = v20;
    v7 = v21;
  }

  if (v6 == 12)
  {
    v10 = 1;
  }

  else
  {
    v10 = v6 + 1;
  }

  v11 = v7 + 78;
  if (((v7 + 78) & 3) == 0 && ((HIDWORD(v12) = -1030792151 * v11 + 85899344, LODWORD(v12) = HIDWORD(v12), (v12 >> 2) <= 0x28F5C28) ? (v13 = v11 % 400 == 0) : (v13 = 1), v13))
  {
    v14 = 31.0;
    v15 = 21;
  }

  else
  {
    v14 = 30.0;
    v15 = 22;
  }

  v16 = (sub_195328D5C(v11, 2, v15) + 2440588) + -0.5;
  if (v10 != 1)
  {
    v17 = v14 + v16;
    if (v10 >= 7)
    {
      v18 = 7;
    }

    else
    {
      v18 = v10;
    }

    v19 = (30 * v10 - 210);
    if (v10 <= 7)
    {
      v19 = -0.0;
    }

    return (v19 + v17 + (31 * v18 - 62));
  }

  return v16;
}

uint64_t icu::IndianCalendar::handleGetExtendedYear(icu::IndianCalendar *this, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  if (icu::Calendar::newerField(this, 0x13u, 1u) == 19)
  {
    if (*(this + 54) > 0)
    {
      v4 = 88;
      return *(this + v4);
    }
  }

  else if (*(this + 36) >= 1)
  {
    v4 = 16;
    return *(this + v4);
  }

  return 1;
}

void icu::IndianCalendar::handleComputeFields(icu::IndianCalendar *this, int a2, UErrorCode *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v27 = 0;
  v25 = 0;
  v26 = 0;
  v5 = a2;
  sub_195328E3C((a2 + -2440588.0), &v26, &v26 + 1, &v27, &v25, &v25 + 1, a3);
  if (*a3 <= 0)
  {
    v6 = v26;
    v7 = (v5 - ((sub_195328D5C(v26, 0, 1) + 2440588) + -0.5));
    HIDWORD(v9) = -1030792151 * v6 + 85899344;
    LODWORD(v9) = HIDWORD(v9);
    v8 = v9 >> 2;
    LODWORD(v9) = HIDWORD(v9);
    if ((v9 >> 4) >= 0xA3D70B)
    {
      v10 = 30;
    }

    else
    {
      v10 = 31;
    }

    if (v8 > 0x28F5C28)
    {
      v10 = 31;
    }

    if ((v6 & 3) != 0)
    {
      v10 = 30;
    }

    v11 = v7 - 80;
    HIDWORD(v13) = 85899344 - 1030792151 * (v6 - 1);
    LODWORD(v13) = HIDWORD(v13);
    v12 = v13 >> 2;
    LODWORD(v13) = HIDWORD(v13);
    if ((v13 >> 4) >= 0xA3D70B)
    {
      v14 = 30;
    }

    else
    {
      v14 = 31;
    }

    if (v12 > 0x28F5C28)
    {
      v14 = 31;
    }

    if (((v6 - 1) & 3) != 0)
    {
      v14 = 30;
    }

    v15 = v7 + v14 + 255;
    v16 = v7 <= 79;
    if (v7 <= 79)
    {
      v17 = v14;
    }

    else
    {
      v17 = v10;
    }

    if (v16)
    {
      v18 = v6 - 79;
    }

    else
    {
      v18 = v6 - 78;
    }

    if (v16)
    {
      v19 = v15;
    }

    else
    {
      v19 = v11;
    }

    v20 = v19 - v17;
    if (v19 >= v17)
    {
      if (v20 > 154)
      {
        v23 = v20 - 155;
        v21 = uprv_floor((v23 / 0x1E)) + 6;
        v22 = v23 % 0x1E;
      }

      else
      {
        v21 = uprv_floor((v20 / 31)) + 1;
        v22 = v20 % 31;
      }
    }

    else
    {
      v21 = 0;
      v22 = v19;
    }

    *(this + 35) = 1;
    *(this + 112) = 1;
    *(this + 22) = v18;
    *(this + 54) = 1;
    *(this + 131) = 1;
    *(this + 3) = 0;
    *(this + 4) = v18;
    *(this + 18) = 0x100000001;
    *(this + 113) = 257;
    *(this + 5) = v21;
    *(this + 26) = v21;
    *(this + 58) = 1;
    *(this + 135) = 1;
    *(this + 20) = 0x100000001;
    *(this + 117) = 257;
    *(this + 8) = v22 + 1;
    *(this + 9) = v19 + 1;
  }

  v24 = *MEMORY[0x1E69E9840];
}

uint64_t icu::IndianCalendar::getRelatedYear(icu::IndianCalendar *this, UErrorCode *a2)
{
  v3 = icu::Calendar::get(this, 0x13u, a2);
  v5 = v3;
  if (*a2 > 0)
  {
    return 0;
  }

  if (!uprv_add32_overflow(v3, 79, &v5))
  {
    return v5;
  }

  result = 0;
  *a2 = U_ILLEGAL_ARGUMENT_ERROR;
  return result;
}

double icu::IndianCalendar::defaultCenturyStart(icu::IndianCalendar *this)
{
  if (atomic_load_explicit(dword_1ED442C20, memory_order_acquire) != 2 && icu::umtx_initImplPreInit(dword_1ED442C20))
  {
    sub_19532EF64();
    icu::umtx_initImplPostInit(dword_1ED442C20);
  }

  return *&qword_1ED441B18;
}

void sub_19532EF64()
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = U_ZERO_ERROR;
  bzero(v5, 0x280uLL);
  icu::Locale::Locale(v4, "@calendar=indian", 0, 0, 0);
  icu::IndianCalendar::IndianCalendar(v5, v4, &v3);
  icu::Locale::~Locale(v4);
  if (v3 <= U_ZERO_ERROR)
  {
    icu::Calendar::getNow(v0);
    icu::Calendar::setTimeInMillis(v5, v1, &v3);
    icu::Calendar::add(v5, 1u, -80, &v3);
    qword_1ED441B18 = icu::Calendar::getTimeInMillis(v5, &v3);
    dword_1ED441B20 = icu::Calendar::get(v5, 1u, &v3);
  }

  icu::Calendar::~Calendar(v5);
  v2 = *MEMORY[0x1E69E9840];
}

uint64_t icu::IndianCalendar::defaultCenturyStartYear(icu::IndianCalendar *this)
{
  if (atomic_load_explicit(dword_1ED442C20, memory_order_acquire) != 2 && icu::umtx_initImplPreInit(dword_1ED442C20))
  {
    sub_19532EF64();
    icu::umtx_initImplPostInit(dword_1ED442C20);
  }

  return dword_1ED441B20;
}

uint64_t sub_19532F0D0(uint64_t a1, _DWORD *a2)
{
  *a1 = malloc_type_malloc(0x2000uLL, 0x100004077774924uLL);
  v4 = malloc_type_malloc(0x200uLL, 0x1000040BDFB0063uLL);
  *(a1 + 16) = v4;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  if (!v4 || !*a1)
  {
    *a2 = 7;
  }

  return a1;
}

void **sub_19532F150(void **a1)
{
  free(a1[4]);
  free(a1[2]);
  free(*a1);
  return a1;
}

size_t sub_19532F190(size_t result, char *__s, int a3)
{
  v3 = result;
  *(result + 8) = 0;
  *(result + 24) = 0;
  *(result + 40) = __s;
  if (a3 == -1)
  {
    result = strlen(__s);
    a3 = result;
  }

  *(v3 + 48) = a3;
  return result;
}

char *sub_19532F1D4(char *result, char *__s, int a3)
{
  if (__s)
  {
    v4 = result;
    if (a3 == -1)
    {
      a3 = strlen(__s);
    }

    v5 = a3 + 1;
    free(*(v4 + 32));
    v6 = malloc_type_malloc(v5, 0x100004077774924uLL);
    *(v4 + 32) = v6;

    return strncpy(v6, __s, v5);
  }

  return result;
}

unsigned __int8 **sub_19532F270(unsigned __int8 **result, int a2)
{
  v2 = *(result + 12);
  if (!a2)
  {
    goto LABEL_20;
  }

  if (v2 < 1)
  {
    goto LABEL_27;
  }

  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  do
  {
    v9 = result[5][v3];
    if (v9 != 60 || (v6 & 1) != 0)
    {
      if ((v9 != 123) | v7 & 1)
      {
        if (((v7 | v6) & 1) == 0)
        {
          v6 = 0;
          v7 = 0;
          (*result)[v8++] = v9;
          v2 = *(result + 12);
        }
      }

      else
      {
        v7 = 0;
        v4 += v6 & 1;
        ++v5;
        v6 = 1;
      }
    }

    else
    {
      v6 = 0;
      v4 += v7 & 1;
      ++v5;
      v7 = 1;
    }

    v10 = v9 != 62;
    v11 = v9 != 125;
    if (++v3 >= v2)
    {
      break;
    }

    v7 &= v10;
    v6 &= v11;
  }

  while (v8 < 0x2000);
  *(result + 2) = v8;
  if (v5 < 5 || (v5 / 5u) < v4)
  {
LABEL_20:
    if (v2 >= 0x2000)
    {
      v12 = 0x2000;
    }

    else
    {
      v12 = v2;
    }

    if (v2 >= 1)
    {
      goto LABEL_24;
    }

LABEL_27:
    v12 = 0;
LABEL_28:
    *(result + 2) = v12;
    goto LABEL_29;
  }

  if (v8 <= 99 && v2 >= 601)
  {
    if (v2 >= 0x2000)
    {
      v12 = 0x2000;
    }

    else
    {
      v12 = v2;
    }

LABEL_24:
    v13 = 0;
    do
    {
      (*result)[v13] = result[5][v13];
      ++v13;
    }

    while (v12 != v13);
    goto LABEL_28;
  }

LABEL_29:
  v14 = result[2];
  *(v14 + 30) = 0u;
  *(v14 + 31) = 0u;
  *(v14 + 28) = 0u;
  *(v14 + 29) = 0u;
  *(v14 + 26) = 0u;
  *(v14 + 27) = 0u;
  *(v14 + 24) = 0u;
  *(v14 + 25) = 0u;
  *(v14 + 22) = 0u;
  *(v14 + 23) = 0u;
  *(v14 + 20) = 0u;
  *(v14 + 21) = 0u;
  *(v14 + 18) = 0u;
  *(v14 + 19) = 0u;
  *(v14 + 16) = 0u;
  *(v14 + 17) = 0u;
  *(v14 + 14) = 0u;
  *(v14 + 15) = 0u;
  *(v14 + 12) = 0u;
  *(v14 + 13) = 0u;
  *(v14 + 10) = 0u;
  *(v14 + 11) = 0u;
  *(v14 + 8) = 0u;
  *(v14 + 9) = 0u;
  *(v14 + 6) = 0u;
  *(v14 + 7) = 0u;
  *(v14 + 4) = 0u;
  *(v14 + 5) = 0u;
  *(v14 + 2) = 0u;
  *(v14 + 3) = 0u;
  *v14 = 0u;
  *(v14 + 1) = 0u;
  v15 = *(result + 2);
  v16 = result[2];
  if (v15 >= 1)
  {
    v17 = *result;
    do
    {
      v18 = *v17++;
      ++*&v16[2 * v18];
      --v15;
    }

    while (v15);
  }

  *(result + 25) = 1;
  for (i = 1; i != 256; ++i)
  {
    if (*&v16[2 * i])
    {
      v20 = i >= 0x20 || (i - 11) >= 0xFFFFFFFE;
      v21 = v20 || i == 13;
      v22 = !v21;
      if (i > 0x7E || v22)
      {
        *(result + 25) = 0;
        if ((i & 0xE0) == 0x80)
        {
          *(result + 24) = 1;
        }
      }
    }
  }

  if (*v16 > 1)
  {
    *(result + 25) = 0;
  }

  return result;
}

icu::IslamicCalendar *icu::IslamicCalendar::IslamicCalendar(icu::IslamicCalendar *this, const icu::Locale *a2, UErrorCode *a3)
{
  v6 = icu::TimeZone::forLocaleOrDefault(a2, a2);
  v7 = icu::Calendar::Calendar(this, v6, a2, a3);
  *this = &unk_1F093CF90;
  *(this + 40) = 0u;
  v8 = icu::IslamicCalendar::setLocation(v7, a2 + 26);
  icu::Calendar::getNow(v8);
  icu::Calendar::setTimeInMillis(this, v9, a3);
  return this;
}

uint64_t icu::IslamicCalendar::setLocation(uint64_t this, const char *__s1)
{
  v2 = this;
  if (!__s1)
  {
    goto LABEL_11;
  }

  v4 = 0;
  v5 = 244;
  while (1)
  {
    v6 = v5 - v4;
    v7 = v4 + (v5 - v4) / 2;
    v8 = &(&off_1E740D5B0)[3 * v7];
    this = strcmp(__s1, *v8);
    if (!this)
    {
      break;
    }

    if (this > 0)
    {
      v4 = v7 + 1;
      if (v7 >= v5)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v5 = v7 - 1;
      if (v6 < 2)
      {
        goto LABEL_11;
      }
    }
  }

  if (v7 == -1)
  {
LABEL_11:
    v9 = 0uLL;
  }

  else
  {
    v9 = *(v8 + 1);
  }

  *(v2 + 640) = v9;
  return this;
}

void icu::IslamicCalendar::~IslamicCalendar(icu::IslamicCalendar *this)
{
  icu::Calendar::~Calendar(this);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_19532F6E4(signed int a1, int *a2, double a3, double a4)
{
  if (*a2 > 0)
  {
    return 0;
  }

  sub_195400588(8u, sub_1953311A8);
  v9 = sub_1952B7F0C(&qword_1EAEC9E08, a1, a2);
  v10 = *a2;
  if (*a2 <= 0 && v9 == 0)
  {
    v13 = uprv_floor(29.5305889 * a1) * 86400000.0 + -4.25215872e13;
    sub_19532FE64(v13, a3, a4);
    if (v14 >= 0.0)
    {
      do
      {
        v13 = v13 + -86400000.0;
        sub_19532FE64(v13, a3, a4);
      }

      while (v16 >= 0.0);
    }

    else
    {
      do
      {
        v13 = v13 + 86400000.0;
        sub_19532FE64(v13, a3, a4);
      }

      while (v15 < 0.0);
    }

    v12 = sub_195328C3C((v13 + 4.25215872e13), 86400000) + 1;
    sub_1952B7FAC(&qword_1EAEC9E08, a1, v12, a2);
    v10 = *a2;
  }

  else
  {
    v12 = v9;
  }

  if (v10 <= 0)
  {
    return v12;
  }

  else
  {
    return 0;
  }
}

uint64_t icu::IslamicCalendar::monthStart(icu::IslamicCalendar *this, int a2, int a3, UErrorCode *a4)
{
  v9 = a3;
  if (*a4 > 0)
  {
    return 0;
  }

  v8 = 0;
  if (!uprv_add32_overflow(a2, -1, &v8) && !uprv_mul32_overflow(v8, 12, &v8) && !uprv_add32_overflow(v8, a3, &v9))
  {
    return sub_19532F6E4(v9, a4, *(this + 81), *(this + 80));
  }

  result = 0;
  *a4 = U_ILLEGAL_ARGUMENT_ERROR;
  return result;
}

uint64_t icu::IslamicCalendar::setLocation(uint64_t this, double a2, double a3)
{
  *(this + 640) = a2;
  *(this + 648) = a3;
  return this;
}

uint64_t icu::IslamicCalendar::handleGetMonthLength(icu::IslamicCalendar *this, int a2, int a3, UErrorCode *a4)
{
  v6 = a3 + 12 * a2;
  v7 = v6 - 12;
  v8 = sub_19532F6E4(v6 - 11, a4, *(this + 81), *(this + 80));
  v9 = v8 - sub_19532F6E4(v7, a4, *(this + 81), *(this + 80));
  if (*a4 <= 0)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t icu::IslamicCalendar::handleGetYearLength(icu::IslamicCalendar *this, int a2)
{
  v8 = 0;
  v2 = *(this + 81);
  v3 = *(this + 80);
  v4 = 12 * a2 - 12;
  v5 = sub_19532F6E4(12 * a2, &v8, v2, v3);
  v6 = v5 - sub_19532F6E4(v4, &v8, v2, v3);
  if (v8 >= 1)
  {
    return 355;
  }

  else
  {
    return v6;
  }
}

uint64_t icu::IslamicCalendar::handleComputeMonthStart(icu::IslamicCalendar *this, int a2, uint64_t a3, signed __int8 a4, UErrorCode *a5)
{
  v13 = a2;
  if (*a5 > 0)
  {
    return 0;
  }

  v7 = a3;
  if (a3 < 12)
  {
    if ((a3 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    v11 = ~a3;
    v12 = ~a3 / 0xCu;
    if (!uprv_add32_overflow(a2, ~v12, &v13))
    {
      v7 = 12 * v12 - v11 + 11;
      goto LABEL_7;
    }
  }

  else
  {
    v9 = a3 / 0xC;
    if (!uprv_add32_overflow(a2, a3 / 0xC, &v13))
    {
      v7 = v7 - 12 * v9;
LABEL_7:
      v10 = (*(*this + 464))(this, v13, v7, a5);
      return v10 + (*(*this + 472))(this) - 1;
    }
  }

  result = 0;
  *a5 = U_ILLEGAL_ARGUMENT_ERROR;
  return result;
}

uint64_t icu::IslamicCalendar::handleGetExtendedYear(icu::IslamicCalendar *this, UErrorCode *a2)
{
  if (icu::Calendar::newerField(this, 0x13u, 1u) == 19)
  {
    if (*(this + 54) > 0)
    {
      v3 = 88;
      return *(this + v3);
    }
  }

  else if (*(this + 36) >= 1)
  {
    v3 = 16;
    return *(this + v3);
  }

  return 1;
}

uint64_t icu::IslamicCalendar::handleComputeFields(uint64_t this, int a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    v4 = this;
    v5 = a2 - (*(*this + 472))(this);
    v6 = uprv_floor(v5 / 29.5305889);
    v7 = uprv_floor(29.5305889 * v6);
    sub_19532FE64(*(v4 + 248), *(v4 + 648), *(v4 + 640));
    v9 = v8 <= 0.0 || v5 - v7 <= 24;
    for (i = v9 ? v6 : v6 + 1; ; --i)
    {
      this = sub_19532F6E4(i, a3, *(v4 + 648), *(v4 + 640));
      if (this <= v5)
      {
        break;
      }

      if (*a3 > 0)
      {
        return this;
      }
    }

    if (*a3 <= 0)
    {
      v11 = i < 0 ? -(~i / 0xCu) : i / 0xCu + 1;
      v12 = (i % 12) <= 0xFFFFFFF3 ? (i % 12) : (i % 12 + 12);
      this = (*(*v4 + 464))(v4, v11, v12, a3);
      if (*a3 <= 0)
      {
        v13 = v5;
        v14 = v5 - this;
        if ((v14 - 0x7FFFFFFF) <= 0xFFFFFFFEFFFFFFFFLL)
        {
LABEL_20:
          *a3 = U_ILLEGAL_ARGUMENT_ERROR;
          return this;
        }

        this = (*(*v4 + 464))(v4, v11, 0, a3);
        if (*a3 <= 0)
        {
          if ((v13 - this - 0x7FFFFFFF) <= 0xFFFFFFFEFFFFFFFFLL)
          {
            goto LABEL_20;
          }

          *(v4 + 140) = 1;
          *(v4 + 112) = 1;
          *(v4 + 12) = 0;
          *(v4 + 16) = v11;
          *(v4 + 144) = 0x100000001;
          *(v4 + 113) = 257;
          *(v4 + 88) = v11;
          *(v4 + 216) = 1;
          *(v4 + 131) = 1;
          *(v4 + 20) = v12;
          *(v4 + 104) = v12;
          *(v4 + 232) = 1;
          *(v4 + 135) = 1;
          *(v4 + 160) = 0x100000001;
          *(v4 + 117) = 257;
          *(v4 + 32) = v14 + 1;
          *(v4 + 36) = v13 - this + 1;
        }
      }
    }
  }

  return this;
}

void sub_19532FE64(double a1, double a2, double a3)
{
  icu::CalendarAstronomer::CalendarAstronomer(v3, a1, a2, a3);
  icu::CalendarAstronomer::getMoonAge(v3);
  icu::CalendarAstronomer::~CalendarAstronomer(v3);
}

uint64_t icu::IslamicCalendar::getRelatedYear(icu::IslamicCalendar *this, UErrorCode *a2)
{
  v3 = icu::Calendar::get(this, 0x13u, a2);
  if (*a2 > 0)
  {
    return 0;
  }

  v5 = ((__PAIR64__(2 * ((1396 - v3) / 0x43u), (1396 - v3) % 0x43u) - 34) >> 32) + 2;
  if ((v3 - 1397) % 0x43u <= 0x20)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  if (v3 >= 1397)
  {
    v5 = v6 - 2 * ((v3 - 1397) / 0x43u);
  }

  return v3 + v5 + 579;
}

_BYTE *icu::IslamicCalendar::setRelatedYear(icu::IslamicCalendar *this, int a2)
{
  v2 = ((1976 - a2) % 0x41u < 0x21) - 2 * ((1976 - a2) / 0x41u) - 2;
  if (a2 >= 1977)
  {
    v2 = ((a2 - 1977) % 0x41u > 0x1F) | (2 * ((a2 - 1977) / 0x41u));
  }

  return icu::Calendar::set(this, 0x13u, a2 + v2 - 579);
}

double icu::IslamicCalendar::defaultCenturyStart(icu::IslamicCalendar *this)
{
  if (atomic_load_explicit(dword_1ED442C28, memory_order_acquire) != 2 && icu::umtx_initImplPreInit(dword_1ED442C28))
  {
    sub_195330038();
    icu::umtx_initImplPostInit(dword_1ED442C28);
  }

  return *&qword_1ED441B28;
}

void sub_195330038()
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = U_ZERO_ERROR;
  bzero(v5, 0x290uLL);
  icu::Locale::Locale(v4, "@calendar=islamic-civil", 0, 0, 0);
  icu::IslamicCalendar::IslamicCalendar(v5, v4, &v3);
  icu::Locale::~Locale(v4);
  if (v3 <= U_ZERO_ERROR)
  {
    icu::Calendar::getNow(v0);
    icu::Calendar::setTimeInMillis(v5, v1, &v3);
    icu::Calendar::add(v5, 1u, -80, &v3);
    qword_1ED441B28 = icu::Calendar::getTimeInMillis(v5, &v3);
    dword_1ED441B30 = icu::Calendar::get(v5, 1u, &v3);
  }

  icu::Calendar::~Calendar(v5);
  v2 = *MEMORY[0x1E69E9840];
}

uint64_t icu::IslamicCalendar::defaultCenturyStartYear(icu::IslamicCalendar *this)
{
  if (atomic_load_explicit(dword_1ED442C28, memory_order_acquire) != 2 && icu::umtx_initImplPreInit(dword_1ED442C28))
  {
    sub_195330038();
    icu::umtx_initImplPostInit(dword_1ED442C28);
  }

  return dword_1ED441B30;
}

icu::IslamicCalendar *icu::IslamicCivilCalendar::IslamicCivilCalendar(icu::IslamicCivilCalendar *this, const icu::Locale *a2, UErrorCode *a3)
{
  result = icu::IslamicCalendar::IslamicCalendar(this, a2, a3);
  *result = &unk_1F093D180;
  return result;
}

{
  result = icu::IslamicCalendar::IslamicCalendar(this, a2, a3);
  *result = &unk_1F093D180;
  return result;
}

void icu::IslamicCivilCalendar::~IslamicCivilCalendar(icu::IslamicCivilCalendar *this)
{
  icu::Calendar::~Calendar(this);

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::IslamicCivilCalendar::handleGetMonthLength(icu::IslamicCivilCalendar *this, int a2, int a3, UErrorCode *a4)
{
  v4 = (a3 + 1) & 1;
  if (a3 < -1)
  {
    v4 = -v4;
  }

  result = (v4 + 29);
  if (a3 == 11)
  {
    if ((11 * a2 + 14) % 30 >= 11)
    {
      return result;
    }

    else
    {
      return 30;
    }
  }

  return result;
}

uint64_t icu::IslamicCivilCalendar::handleGetYearLength(icu::IslamicCivilCalendar *this, int a2)
{
  if ((11 * a2 + 14) % 30 >= 11)
  {
    return 354;
  }

  else
  {
    return 355;
  }
}

void icu::IslamicCivilCalendar::handleComputeFields(icu::IslamicCivilCalendar *this, int a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    v5 = a2 - (*(*this + 472))(this);
    v6 = sub_195328C3C(30 * v5 + 10646, 10631);
    v7 = (*(*this + 456))(this, v6, a3);
    v8 = uprv_ceil((v5 - 29 - v7) / 29.5);
    if (*a3 <= 0)
    {
      v9 = v8 >= 11 ? 11 : v8;
      v10 = (*(*this + 464))(this, v6, v9, a3);
      if (*a3 <= 0)
      {
        v11 = v5;
        v12 = v5 - v10;
        if ((v12 - 0x7FFFFFFF) <= 0xFFFFFFFEFFFFFFFFLL)
        {
LABEL_8:
          *a3 = U_ILLEGAL_ARGUMENT_ERROR;
          return;
        }

        v13 = (*(*this + 464))(this, v6, 0, a3);
        if (*a3 <= 0)
        {
          if ((v11 - v13 - 0x7FFFFFFF) <= 0xFFFFFFFEFFFFFFFFLL)
          {
            goto LABEL_8;
          }

          *(this + 35) = 1;
          *(this + 112) = 1;
          *(this + 3) = 0;
          *(this + 4) = v6;
          *(this + 18) = 0x100000001;
          *(this + 113) = 257;
          *(this + 22) = v6;
          *(this + 54) = 1;
          *(this + 131) = 1;
          *(this + 5) = v9;
          *(this + 26) = v9;
          *(this + 58) = 1;
          *(this + 135) = 1;
          *(this + 20) = 0x100000001;
          *(this + 117) = 257;
          *(this + 8) = v12 + 1;
          *(this + 9) = v11 - v13 + 1;
        }
      }
    }
  }
}

icu::IslamicCalendar *icu::IslamicTBLACalendar::IslamicTBLACalendar(icu::IslamicTBLACalendar *this, const icu::Locale *a2, UErrorCode *a3)
{
  result = icu::IslamicCalendar::IslamicCalendar(this, a2, a3);
  *result = &unk_1F093D370;
  return result;
}

{
  result = icu::IslamicCalendar::IslamicCalendar(this, a2, a3);
  *result = &unk_1F093D370;
  return result;
}

void icu::IslamicTBLACalendar::~IslamicTBLACalendar(icu::IslamicTBLACalendar *this)
{
  icu::Calendar::~Calendar(this);

  JUMPOUT(0x19A8B2600);
}

icu::IslamicCalendar *icu::IslamicUmalquraCalendar::IslamicUmalquraCalendar(icu::IslamicUmalquraCalendar *this, const icu::Locale *a2, UErrorCode *a3)
{
  result = icu::IslamicCalendar::IslamicCalendar(this, a2, a3);
  *result = &unk_1F093D560;
  return result;
}

{
  result = icu::IslamicCalendar::IslamicCalendar(this, a2, a3);
  *result = &unk_1F093D560;
  return result;
}

void icu::IslamicUmalquraCalendar::~IslamicUmalquraCalendar(icu::IslamicUmalquraCalendar *this)
{
  icu::Calendar::~Calendar(this);

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::IslamicUmalquraCalendar::yearStart(icu::IslamicUmalquraCalendar *this, int a2, UErrorCode *a3)
{
  if ((a2 - 1601) > 0xFFFFFED2)
  {
    return byte_19548F748[a2 - 1300] + ((a2 - 1300) * 354.3672 + 460322.05 + 0.5);
  }

  else
  {
    return sub_195328C3C(11 * a2 + 3, 30) + 354 * a2 - 354;
  }
}

uint64_t icu::IslamicUmalquraCalendar::monthStart(icu::IslamicUmalquraCalendar *this, uint64_t a2, int a3, UErrorCode *a4)
{
  v8 = (*(*this + 456))(this, a2, a4);
  if (*a4 <= 0)
  {
    v9 = v8;
    if (a3 < 1)
    {
      return v9;
    }

    v11 = 0;
    while (1)
    {
      v12 = (*(*this + 320))(this, a2, v11, a4);
      if (*a4 > 0)
      {
        break;
      }

      v9 += v12;
      v11 = (v11 + 1);
      if (a3 == v11)
      {
        return v9;
      }
    }
  }

  return 0;
}

uint64_t icu::IslamicUmalquraCalendar::handleGetMonthLength(icu::IslamicUmalquraCalendar *this, int a2, int a3, UErrorCode *a4)
{
  if ((a2 - 1601) > 0xFFFFFED2)
  {
    if ((dword_19548F878[a2 - 1300] >> (11 - a3)))
    {
      return 30;
    }

    else
    {
      return 29;
    }
  }

  else
  {
    v4 = (a3 + 1) & 1;
    if (a3 < -1)
    {
      v4 = -v4;
    }

    result = (v4 + 29);
    if (a3 == 11)
    {
      if ((11 * a2 + 14) % 30 >= 11)
      {
        return result;
      }

      else
      {
        return 30;
      }
    }
  }

  return result;
}

uint64_t icu::IslamicUmalquraCalendar::yearLength(icu::IslamicUmalquraCalendar *this, uint64_t a2, UErrorCode *a3)
{
  if ((a2 - 1601) >= 0xFFFFFED3)
  {
    v7 = 0;
    LODWORD(v4) = 0;
    while (1)
    {
      v8 = (*(*this + 320))(this, a2, v7, a3);
      if (*a3 > 0)
      {
        break;
      }

      v4 = (v8 + v4);
      v7 = (v7 + 1);
      if (v7 == 12)
      {
        return v4;
      }
    }

    return 0;
  }

  else if ((11 * a2 + 14) % 30 >= 11)
  {
    return 354;
  }

  else
  {
    return 355;
  }
}

uint64_t icu::IslamicUmalquraCalendar::handleGetYearLength(icu::IslamicUmalquraCalendar *this, uint64_t a2)
{
  v3 = 0;
  LODWORD(result) = (*(*this + 480))(this, a2, &v3);
  if (v3 >= 1)
  {
    return 355;
  }

  else
  {
    return result;
  }
}

void icu::IslamicUmalquraCalendar::handleComputeFields(uint64_t this, int a2, UErrorCode *a3)
{
  if (*a3 > 0)
  {
    return;
  }

  v6 = (*(*this + 472))(this);
  if ((atomic_load_explicit(&qword_1ED442C38, memory_order_acquire) & 1) == 0)
  {
    sub_19542FE64(this, this & 0xFFFFFFFFFFFFLL | 0x9ACA000000000000, a3);
  }

  if (*a3 > 0)
  {
    return;
  }

  v7 = a2 - v6;
  if (qword_1ED442C30 > v7)
  {

    icu::IslamicCivilCalendar::handleComputeFields(this, a2, a3);
    return;
  }

  v8 = ((v7 + -460322.55) / 354.3672 + 1300.0 + -1.0);
  v9 = 1;
  do
  {
    if (v9 < 1)
    {
      goto LABEL_20;
    }

    v10 = (*(*this + 456))(this, (v8 + 1), a3);
    v11 = (*(*this + 480))(this, (v8 + 1), a3);
    if (*a3 > 0)
    {
      return;
    }

    v9 = v7 - v10 + 1;
    v8 = (v8 + 1);
    if (v9 == v11)
    {
      v13 = 11;
LABEL_22:
      v14 = (*(*this + 464))(this, v8, v13, a3);
      v19 = v14;
      v15 = (*(*this + 464))(this, v8, 0, a3);
      v18 = v15;
      if (*a3 <= 0)
      {
        if (uprv_mul32_overflow(v14, -1, &v19) || uprv_add32_overflow(v19, v7, &v19) || uprv_add32_overflow(v19, 1, &v19) || uprv_mul32_overflow(v15, -1, &v18) || uprv_add32_overflow(v18, v7, &v18) || uprv_add32_overflow(v18, 1, &v18))
        {
          *a3 = U_ILLEGAL_ARGUMENT_ERROR;
        }

        else
        {
          *(this + 140) = 1;
          *(this + 112) = 1;
          *(this + 12) = 0;
          *(this + 16) = v8;
          *(this + 144) = 0x100000001;
          *(this + 113) = 257;
          *(this + 88) = v8;
          *(this + 216) = 1;
          *(this + 131) = 1;
          *(this + 20) = v13;
          *(this + 104) = v13;
          *(this + 232) = 1;
          *(this + 135) = 1;
          v17 = v18;
          v16 = v19;
          *(this + 117) = 1;
          *(this + 32) = v16;
          *(this + 36) = v17;
          *(this + 160) = 1;
          *(this + 164) = 1;
          *(this + 118) = 1;
        }
      }

      return;
    }
  }

  while (v9 >= v11);
  v12 = (*(*this + 320))(this, v8, 0, a3);
  if (v9 <= v12)
  {
LABEL_20:
    v13 = 0;
    goto LABEL_22;
  }

  LODWORD(v13) = 0;
  while (*a3 <= 0)
  {
    v9 -= v12;
    v13 = (v13 + 1);
    v12 = (*(*this + 320))(this, v8, v13, a3);
    if (v9 <= v12)
    {
      goto LABEL_22;
    }
  }
}

icu::IslamicCalendar *icu::IslamicRGSACalendar::IslamicRGSACalendar(icu::IslamicRGSACalendar *this, const icu::Locale *a2, UErrorCode *a3)
{
  result = icu::IslamicCalendar::IslamicCalendar(this, a2, a3);
  *result = &unk_1F093D758;
  return result;
}

{
  result = icu::IslamicCalendar::IslamicCalendar(this, a2, a3);
  *result = &unk_1F093D758;
  return result;
}

void icu::IslamicRGSACalendar::~IslamicRGSACalendar(icu::IslamicRGSACalendar *this)
{
  icu::Calendar::~Calendar(this);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_1953311A8()
{
  if (qword_1EAEC9E08)
  {
    (*(*qword_1EAEC9E08 + 8))(qword_1EAEC9E08);
    qword_1EAEC9E08 = 0;
  }

  return 1;
}

icu::GregorianCalendar *sub_195331214(icu::GregorianCalendar *a1, char **a2, UErrorCode *a3)
{
  *icu::GregorianCalendar::GregorianCalendar(a1, a2, a3) = &unk_1F093D9C0;
  v9 = U_ZERO_ERROR;
  KeywordValue = icu::Locale::getKeywordValue(a2, "fw", 0, 0, &v9);
  v6 = -icu::Locale::getKeywordValue(a2, "rg", 0, 0, &v9);
  if (v9 <= U_ZERO_ERROR && KeywordValue == v6)
  {
    icu::Calendar::setFirstDayOfWeek(a1, 2);
  }

  icu::Calendar::setMinimalDaysInFirstWeek(a1, 4u);
  return a1;
}

void sub_1953312E0(icu::GregorianCalendar *a1)
{
  icu::GregorianCalendar::~GregorianCalendar(a1);

  JUMPOUT(0x19A8B2600);
}

char *icu::JapaneseCalendar::enableTentativeEra(icu::JapaneseCalendar *this)
{
  result = getenv("ICU_ENABLE_TENTATIVE_ERA");
  if (result)
  {
    return (uprv_stricmp(result, "true") == 0);
  }

  return result;
}

icu::GregorianCalendar *sub_1953313E4(icu::GregorianCalendar *a1, char **a2, UErrorCode *a3)
{
  *icu::GregorianCalendar::GregorianCalendar(a1, a2, a3) = &unk_1F093DBD0;
  if (*a3 <= 0)
  {
    if (atomic_load_explicit(&dword_1EAEC9E28, memory_order_acquire) == 2 || !icu::umtx_initImplPreInit(&dword_1EAEC9E28))
    {
      if (dword_1EAEC9E2C >= 1)
      {
        *a3 = dword_1EAEC9E2C;
      }
    }

    else
    {
      sub_195331D30(a3);
      dword_1EAEC9E2C = *a3;
      icu::umtx_initImplPostInit(&dword_1EAEC9E28);
    }
  }

  sub_195400588(7u, sub_195331D88);
  icu::Calendar::getNow(v5);
  icu::Calendar::setTimeInMillis(a1, v6, a3);
  return a1;
}

void sub_1953314C8(icu::GregorianCalendar *a1)
{
  icu::GregorianCalendar::~GregorianCalendar(a1);

  JUMPOUT(0x19A8B2600);
}

icu::GregorianCalendar *sub_195331500(icu::GregorianCalendar *a1, const icu::GregorianCalendar *a2)
{
  icu::GregorianCalendar::GregorianCalendar(a1, a2);
  *v3 = &unk_1F093DBD0;
  v5 = 0;
  if (atomic_load_explicit(&dword_1EAEC9E28, memory_order_acquire) == 2 || !icu::umtx_initImplPreInit(&dword_1EAEC9E28))
  {
    if (dword_1EAEC9E2C >= 1)
    {
      v5 = dword_1EAEC9E2C;
    }
  }

  else
  {
    sub_195331D30(&v5);
    dword_1EAEC9E2C = v5;
    icu::umtx_initImplPostInit(&dword_1EAEC9E28);
  }

  sub_195400588(7u, sub_195331D88);
  return a1;
}

uint64_t sub_195331618(uint64_t a1, int a2, UErrorCode *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*a3 <= 0)
  {
    v6 = (*(*a1 + 456))(a1);
    memset(v10, 0, sizeof(v10));
    icu::EraRules::getStartDate(qword_1EAEC9E20, v6, v10, a3);
    v7 = *a3;
    if (*a3 == U_ILLEGAL_ARGUMENT_ERROR)
    {
      if (v6 == *(qword_1EAEC9E20 + 8))
      {
        v7 = U_ZERO_ERROR;
        *a3 = U_ZERO_ERROR;
      }

      else
      {
        v7 = U_ILLEGAL_ARGUMENT_ERROR;
      }
    }

    if (v10[0] == a2 && v7 < U_ILLEGAL_ARGUMENT_ERROR)
    {
      result = (v10[1] - 1);
    }

    else
    {
      result = 0;
    }
  }

  else
  {
    result = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19533171C(uint64_t a1, int a2, int a3, UErrorCode *a4)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*a4 > 0)
  {
    goto LABEL_2;
  }

  v9 = (*(*a1 + 456))(a1);
  memset(v10, 0, sizeof(v10));
  icu::EraRules::getStartDate(qword_1EAEC9E20, v9, v10, a4);
  if (*a4 != U_ILLEGAL_ARGUMENT_ERROR)
  {
    if (*a4 <= 0)
    {
      goto LABEL_8;
    }

LABEL_2:
    result = 0;
    goto LABEL_3;
  }

  if (v9 != *(qword_1EAEC9E20 + 8))
  {
    goto LABEL_2;
  }

  *a4 = U_ZERO_ERROR;
LABEL_8:
  if (v10[0] == a2 && v10[1] - 1 == a3)
  {
    result = v10[2];
  }

  else
  {
    result = 1;
  }

LABEL_3:
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_195331840(uint64_t a1)
{
  if (*(a1 + 140) <= 0)
  {
    v1 = &dword_1EAEC9E1C;
  }

  else
  {
    v1 = (a1 + 12);
  }

  return *v1;
}

uint64_t sub_195331860(_DWORD *a1, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  v12 = v2;
  v13 = v3;
  if (icu::Calendar::newerField(a1, 0x13u, 1u) == 19 && icu::Calendar::newerField(a1, 0x13u, 0) == 19)
  {
    if (a1[54] < 1)
    {
      return 1970;
    }

    else
    {
      return a1[22];
    }
  }

  if (a1[35] <= 0)
  {
    v7 = &dword_1EAEC9E1C;
  }

  else
  {
    v7 = a1 + 3;
  }

  StartYear = icu::EraRules::getStartYear(qword_1EAEC9E20, *v7, a2);
  if (*a2 != U_ILLEGAL_ARGUMENT_ERROR)
  {
    if (*a2 <= 0)
    {
      goto LABEL_18;
    }

    return 0;
  }

  if (a1[35] <= 0)
  {
    v9 = &dword_1EAEC9E1C;
  }

  else
  {
    v9 = a1 + 3;
  }

  if (*v9 != *(qword_1EAEC9E20 + 8))
  {
    return 0;
  }

  *a2 = U_ZERO_ERROR;
LABEL_18:
  if (a1[36] < 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = a1[4];
  }

  v11 = v10;
  if (!uprv_add32_overflow(v10, StartYear - 1, &v11))
  {
    return v11;
  }

  result = 0;
  *a2 = U_ILLEGAL_ARGUMENT_ERROR;
  return result;
}

uint64_t sub_1953319B0(uint64_t a1, int a2, UErrorCode *a3)
{
  icu::GregorianCalendar::handleComputeFields(a1, a2, a3);
  v10 = *(a1 + 88);
  v5 = qword_1EAEC9E20;
  v6 = (*(*a1 + 272))(a1, a3);
  EraIndex = icu::EraRules::getEraIndex(v5, v10, v6 + 1, *(a1 + 32), a3);
  result = icu::EraRules::getStartYear(qword_1EAEC9E20, EraIndex, a3);
  if (*a3 <= 0)
  {
    result = uprv_add32_overflow(v10, 1 - result, &v10);
    if (result)
    {
      *a3 = U_ILLEGAL_ARGUMENT_ERROR;
    }

    else
    {
      *(a1 + 140) = 0x100000001;
      *(a1 + 112) = 257;
      v9 = v10;
      *(a1 + 12) = EraIndex;
      *(a1 + 16) = v9;
    }
  }

  return result;
}

uint64_t sub_195331ABC(uint64_t a1, int a2, unsigned int a3)
{
  if (a2 == 1)
  {
    if (a3 - 3 > 1)
    {
      return 1;
    }

    else
    {
      v6 = U_ZERO_ERROR;
      StartYear = icu::EraRules::getStartYear(qword_1EAEC9E20, dword_1EAEC9E1C, &v6);
      return icu::GregorianCalendar::handleGetLimit(a1, 1, 3) - StartYear;
    }
  }

  else if (a2)
  {

    return icu::GregorianCalendar::handleGetLimit(a1, a2, a3);
  }

  else if (a3 >= 2)
  {
    return (*(qword_1EAEC9E20 + 8) - 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_195331B80(_BYTE *a1, uint64_t a2, UErrorCode *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a2 == 1)
  {
    v5 = icu::Calendar::get(a1, 0, a3);
    result = 0;
    if (*a3 <= 0)
    {
      if (v5 == *(qword_1EAEC9E20 + 8) - 1)
      {
        v7 = *(*a1 + 296);
        v8 = *MEMORY[0x1E69E9840];

        return v7(a1, 1, 3);
      }

      memset(v16, 0, sizeof(v16));
      icu::EraRules::getStartDate(qword_1EAEC9E20, v5 + 1, v16, a3);
      v10 = v16[0];
      v11 = v16[1];
      v12 = v16[2];
      v13 = v10 - icu::EraRules::getStartYear(qword_1EAEC9E20, v5, a3);
      if (v11 == 1 && v12 == 1)
      {
        result = v13;
      }

      else
      {
        result = v13 + 1;
      }
    }

    v15 = *MEMORY[0x1E69E9840];
    return result;
  }

  v9 = *MEMORY[0x1E69E9840];

  return icu::GregorianCalendar::getActualMaximum(a1, a2, a3);
}

uint64_t sub_195331D30(icu::JapaneseCalendar *a1)
{
  v2 = icu::JapaneseCalendar::enableTentativeEra(a1);
  result = icu::EraRules::createInstance("japanese", v2, a1, v3);
  qword_1EAEC9E20 = result;
  if (*a1 <= 0)
  {
    dword_1EAEC9E1C = *(result + 12);
  }

  return result;
}

uint64_t sub_195331D88()
{
  if (qword_1EAEC9E20)
  {
    icu::EraRules::~EraRules(qword_1EAEC9E20);
    MEMORY[0x19A8B2600]();
    qword_1EAEC9E20 = 0;
  }

  dword_1EAEC9E1C = 0;
  atomic_store(0, &dword_1EAEC9E28);
  return 1;
}

void sub_195331DE8(void **a1)
{
  icu::FormattedValueStringBuilderImpl::~FormattedValueStringBuilderImpl(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::FormattedList::FormattedList(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  *result = &unk_1F093DDE0;
  *(result + 8) = v2;
  *(result + 16) = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 27;
  return result;
}

{
  v2 = *(a2 + 8);
  *result = &unk_1F093DDE0;
  *(result + 8) = v2;
  *(result + 16) = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 27;
  return result;
}

void icu::FormattedList::~FormattedList(icu::FormattedList *this)
{
  *this = &unk_1F093DDE0;
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 1) = 0;

  icu::FormattedValue::~FormattedValue(this);
}

{
  icu::FormattedList::~FormattedList(this);

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::FormattedList::operator=(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = 27;
  return a1;
}

void icu::FormattedList::toString(icu::FormattedList *this@<X0>, UErrorCode *a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2 >= 1)
  {
    *(a3 + 8) = 0u;
    *(a3 + 56) = 0;
    *(a3 + 40) = 0u;
    *(a3 + 24) = 0u;
LABEL_3:
    *a3 = &unk_1F0935D00;
    *(a3 + 8) = 2;
    icu::UnicodeString::setToBogus(a3);
    return;
  }

  v3 = *(this + 1);
  if (!v3)
  {
    *a2 = *(this + 4);
    *(a3 + 8) = 0u;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0;
    goto LABEL_3;
  }

  (*(*v3 + 16))(*(this + 1));
}

void icu::FormattedList::toTempString(icu::FormattedList *this@<X0>, UErrorCode *a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2 >= 1)
  {
    *(a3 + 8) = 0u;
    *(a3 + 56) = 0;
    *(a3 + 40) = 0u;
    *(a3 + 24) = 0u;
LABEL_3:
    *a3 = &unk_1F0935D00;
    *(a3 + 8) = 2;
    icu::UnicodeString::setToBogus(a3);
    return;
  }

  v3 = *(this + 1);
  if (!v3)
  {
    *a2 = *(this + 4);
    *(a3 + 8) = 0u;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0;
    goto LABEL_3;
  }

  (*(*v3 + 24))(*(this + 1));
}

icu::Appendable *icu::FormattedList::appendTo(icu::FormattedList *this, icu::Appendable *a2, UErrorCode *a3)
{
  if (*a3 > 0)
  {
    return a2;
  }

  v4 = *(this + 1);
  if (!v4)
  {
    *a3 = *(this + 4);
    return a2;
  }

  return (*(*v4 + 32))(*(this + 1), a2);
}

uint64_t icu::FormattedList::nextPosition(icu::FormattedList *this, icu::ConstrainedFieldPosition *a2, UErrorCode *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  v4 = *(this + 1);
  if (!v4)
  {
    *a3 = *(this + 4);
    return 0;
  }

  return (*(*v4 + 40))(*(this + 1), a2);
}

uint64_t icu::ListFormatter::ListFormatter(uint64_t this, const icu::ListFormatter *a2)
{
  *this = &unk_1F093DE20;
  v2 = *(a2 + 8);
  *(this + 8) = v2;
  if (v2)
  {
    operator new();
  }

  return this;
}

uint64_t icu::ListFormatter::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      v5 = v4[19];
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }

      icu::SimpleFormatter::~SimpleFormatter((v4 + 10));
      icu::SimpleFormatter::~SimpleFormatter((v4 + 1));
      MEMORY[0x19A8B2600](v4, 0x10B2C407CA61DA8);
    }

    if (*(a2 + 8))
    {
      operator new();
    }

    *(a1 + 8) = 0;
    *(a1 + 16) = *(a2 + 16);
  }

  return a1;
}

void *sub_1953322D8(void *a1)
{
  v2 = a1[19];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  icu::SimpleFormatter::~SimpleFormatter((a1 + 10));
  icu::SimpleFormatter::~SimpleFormatter((a1 + 1));
  return a1;
}

int *icu::ListFormatter::initializeHash(int *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    v6 = v3;
    v7 = v2;
    v8 = v4;
    v9 = v5;
    operator new();
  }

  return this;
}

uint64_t sub_195332428(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 152);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    icu::SimpleFormatter::~SimpleFormatter((v1 + 80));
    icu::SimpleFormatter::~SimpleFormatter((v1 + 8));

    JUMPOUT(0x19A8B2600);
  }

  return result;
}

uint64_t sub_1953324B0()
{
  v0 = qword_1ED442C40;
  if (qword_1ED442C40)
  {
    if (*qword_1ED442C40)
    {
      uhash_close(*qword_1ED442C40);
    }

    MEMORY[0x19A8B2600](v0, 0x10A0C40DD2A5DBALL);
  }

  qword_1ED442C40 = 0;
  return 1;
}

uint64_t icu::ListFormatter::getListFormatInternal(const char **this, const icu::Locale *a2, UErrorCode *a3, UErrorCode *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  if (*a3 > 0)
  {
    v4 = 0;
    goto LABEL_17;
  }

  v25 = 0;
  memset(&v24[1], 0, 48);
  icu::StringPiece::StringPiece(v20, this[5]);
  v24[0] = &v24[1] + 5;
  LODWORD(v24[1]) = 40;
  WORD2(v24[1]) = 0;
  LODWORD(v25) = 0;
  icu::CharString::append(v24, v20[0], v20[1], a3);
  v8 = icu::CharString::append(v24, 58, a3);
  icu::StringPiece::StringPiece(v20, a2);
  icu::CharString::append(v8, v20[0], v20[1], a3);
  v22 = 0u;
  v23 = 0u;
  *v20 = 0u;
  v21 = 0u;
  icu::UnicodeString::UnicodeString(v20, v24[0], 0xFFFFFFFFLL, 0);
  umtx_lock(&unk_1ED442C48);
  v10 = qword_1ED442C40;
  if (!qword_1ED442C40)
  {
    icu::ListFormatter::initializeHash(a3, v9);
    if (*a3 > 0)
    {
      v4 = 0;
      goto LABEL_14;
    }

    v10 = qword_1ED442C40;
  }

  v4 = uhash_get(*v10, v20);
  umtx_unlock(&unk_1ED442C48);
  if (v4)
  {
    goto LABEL_15;
  }

  ListFormatInternal = icu::ListFormatter::loadListFormatInternal(this, a2, a3, v11);
  v12 = *a3;
  if (v12 > 0)
  {
    v4 = 0;
    goto LABEL_15;
  }

  v14 = ListFormatInternal;
  umtx_lock(&unk_1ED442C48);
  v15 = uhash_get(*qword_1ED442C40, v20);
  if (!v15)
  {
    sub_1951D065C(qword_1ED442C40);
  }

  v16 = v15;
  if (v14)
  {
    v17 = sub_1953322D8(v14);
    MEMORY[0x19A8B2600](v17, 0x10B2C407CA61DA8);
  }

  v4 = v16;
LABEL_14:
  umtx_unlock(&unk_1ED442C48);
LABEL_15:
  icu::UnicodeString::~UnicodeString(v12, v20);
  if (BYTE4(v24[1]))
  {
    free(v24[0]);
  }

LABEL_17:
  v18 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t icu::ListFormatter::loadListFormatInternal(char **this, const icu::Locale *a2, UErrorCode *a3, UErrorCode *a4)
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = ures_open(0, this[5], a3);
  v7 = ures_getByKeyWithFallback(v6, "listPattern", v6, a3);
  v8 = v7;
  if (*a3 < 1)
  {
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    v27 = 0;
    v29 = 0u;
    v25 = 0u;
    v26 = 0u;
    v22 = 0;
    v24 = 0u;
    v21 = 0u;
    v19 = 0u;
    v20 = 0u;
    v16 = 0u;
    v17 = 0;
    v14 = 0u;
    v15 = 0u;
    v13[0] = &unk_1F093DE48;
    v13[1] = &unk_1F0935D00;
    LOWORD(v14) = 2;
    v18 = &unk_1F0935D00;
    LOWORD(v19) = 2;
    v23 = &unk_1F0935D00;
    LOWORD(v24) = 2;
    v28 = &unk_1F0935D00;
    LOWORD(v29) = 2;
    memset(v33, 0, sizeof(v33));
    strncpy(__dst, a2, 0x18uLL);
    __dst[24] = 0;
    ures_getAllItemsWithFallback(v8, __dst, v13, a3);
    if (*a3 <= 0 && v33[0])
    {
      do
      {
        if (!strcmp(__dst, v33))
        {
          break;
        }

        strcpy(__dst, v33);
        ures_getAllItemsWithFallback(v8, __dst, v13, a3);
      }

      while (*a3 <= 0 && v33[0] != 0);
    }

    ures_close(v8);
    if (*a3 <= 0)
    {
      if (v14 >= 0x20u && v19 >= 0x20u && v24 >= 0x20u && v29 > 0x1Fu)
      {
        operator new();
      }

      *a3 = U_MISSING_RESOURCE_ERROR;
    }

    sub_195332A24(v13);
  }

  else
  {
    ures_close(v7);
  }

  v10 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_195332A24(uint64_t a1)
{
  *a1 = &unk_1F093DE48;
  v2 = (a1 + 8);
  icu::UnicodeString::~UnicodeString((a1 + 200));
  icu::UnicodeString::~UnicodeString((a1 + 136));
  icu::UnicodeString::~UnicodeString((a1 + 72));
  icu::UnicodeString::~UnicodeString(v2);

  icu::ResourceSink::~ResourceSink(a1);
}

void sub_195332A9C(uint64_t a1)
{
  sub_195332A24(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::ListFormatter::createInstance(UErrorCode *this, UErrorCode *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  memset(v7, 0, sizeof(v7));
  icu::Locale::Locale(v7);
  Instance = icu::ListFormatter::createInstance(v7, "standard", this, v3);
  icu::Locale::~Locale(v7);
  v5 = *MEMORY[0x1E69E9840];
  return Instance;
}

uint64_t icu::ListFormatter::createInstance(const char **a1, int a2, unsigned int a3, UErrorCode *a4)
{
  if (a2 == 2)
  {
    if (a3 < 3)
    {
      v4 = off_1E740ECC0;
      return icu::ListFormatter::createInstance(a1, v4[a3], a4, a4);
    }
  }

  else if (a2 == 1)
  {
    if (a3 < 3)
    {
      v4 = off_1E740ECA8;
      return icu::ListFormatter::createInstance(a1, v4[a3], a4, a4);
    }
  }

  else if (!a2 && a3 < 3)
  {
    v4 = off_1E740EC90;
    return icu::ListFormatter::createInstance(a1, v4[a3], a4, a4);
  }

  *a4 = U_ILLEGAL_ARGUMENT_ERROR;
  return 0;
}

uint64_t icu::ListFormatter::createInstance(const char **this, const icu::Locale *a2, UErrorCode *a3, UErrorCode *a4)
{
  icu::ListFormatter::getListFormatInternal(this, a2, a3, a4);
  if (*a3 <= 0)
  {
    operator new();
  }

  return 0;
}

void *icu::ListFormatter::ListFormatter(void *result, uint64_t a2)
{
  *result = &unk_1F093DE20;
  result[1] = 0;
  result[2] = a2;
  return result;
}

{
  *result = &unk_1F093DE20;
  result[1] = 0;
  result[2] = a2;
  return result;
}

void icu::ListFormatter::ListFormatter(void *a1)
{
  *a1 = &unk_1F093DE20;
  operator new();
}

{
  *a1 = &unk_1F093DE20;
  operator new();
}

void icu::ListFormatter::~ListFormatter(icu::ListFormatter *this)
{
  *this = &unk_1F093DE20;
  v2 = *(this + 1);
  if (v2)
  {
    v3 = v2[19];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    icu::SimpleFormatter::~SimpleFormatter((v2 + 10));
    icu::SimpleFormatter::~SimpleFormatter((v2 + 1));
    MEMORY[0x19A8B2600](v2, 0x10B2C407CA61DA8);
  }

  icu::UObject::~UObject(this);
}

{
  icu::ListFormatter::~ListFormatter(this);

  JUMPOUT(0x19A8B2600);
}

void icu::ListFormatter::format(icu::ListFormatter *this, const icu::UnicodeString *a2, int a3, icu::UnicodeString *a4, int a5, int *a6, UErrorCode *a7)
{
  v7 = *(a4 + 4);
  v8 = *(a4 + 3);
  v9 = 0;
  v10 = 0;
  v11 = 0;
  icu::ListFormatter::formatStringsToValue(this, a2, a3, a7);
}

void icu::ListFormatter::formatStringsToValue(icu::ListFormatter *this, const icu::UnicodeString *a2, int a3, UErrorCode *a4)
{
  if (a3 != 2)
  {
    if (a3 != 1)
    {
      if (!a3)
      {
        operator new();
      }

      v4 = 0;
      icu::ListFormatter::needsBidiIsolates(this, a2);
      sub_1953334F4();
    }

    v4 = 0;
    icu::ListFormatter::needsBidiIsolates(this, a2);
    sub_1953334F4();
  }

  v4 = 0;
  icu::ListFormatter::needsBidiIsolates(this, a2);
  sub_1953334F4();
}

uint64_t icu::ListFormatter::needsBidiIsolates(icu::ListFormatter *this, const icu::UnicodeString *a2)
{
  v2 = *(a2 + 4);
  v3 = v2;
  v4 = v2 >> 5;
  if (v3 < 0)
  {
    v4 = *(a2 + 3);
  }

  if (v4 < 1)
  {
    return 0;
  }

  v6 = 0;
  v7 = *(this + 2);
  v8 = *(v7 + 160);
  while (1)
  {
    v9 = icu::UnicodeString::char32At(v7, a2, v6);
    Class = ubidi_getClass(v9);
    if (Class > 0xF)
    {
      goto LABEL_11;
    }

    if (((1 << Class) & 0xE022) == 0)
    {
      break;
    }

    if (!v8)
    {
      return 1;
    }

LABEL_11:
    ++v6;
    v11 = *(a2 + 4);
    v12 = v11;
    LODWORD(v7) = v11 >> 5;
    if (v12 >= 0)
    {
      v7 = v7;
    }

    else
    {
      v7 = *(a2 + 3);
    }

    if (v6 >= v7)
    {
      return 0;
    }
  }

  if (((1 << Class) & 0x1801) == 0 || (v8 & 1) == 0)
  {
    goto LABEL_11;
  }

  return 1;
}

uint64_t *sub_1953335D4(uint64_t *result, uint64_t a2, uint64_t a3, int a4, int a5, UErrorCode *a6)
{
  __b[1] = *MEMORY[0x1E69E9840];
  if (*a6 <= 0)
  {
    v10 = result;
    v11 = *(a2 + 16);
    if ((v11 & 0x11) != 0)
    {
      v12 = 0;
    }

    else if ((v11 & 2) != 0)
    {
      v12 = (a2 + 18);
    }

    else
    {
      v12 = *(a2 + 32);
    }

    v13 = v11;
    v14 = v11 >> 5;
    if (v13 < 0)
    {
      v14 = *(a2 + 20);
    }

    if (v14 && *v12 == 2)
    {
      __b[0] = 0;
      memset(v36, 0, sizeof(v36));
      sub_195311838(__b, a2, 2, v36);
      v15 = *v10;
      if (SLODWORD(__b[0]) <= SHIDWORD(__b[0]))
      {
        icu::UnicodeString::tempSubString(v36, 0, __b[0], v35);
        icu::FormattedStringBuilder::insert((v15 + 8), 0, v35, 48, 0, a6);
        icu::UnicodeString::~UnicodeString(v25, v35);
        v26 = *v10;
        icu::UnicodeString::tempSubString(v36, __b[0], HIDWORD(__b[0]) - LODWORD(__b[0]), v35);
        icu::FormattedStringBuilder::insert((v26 + 8), *(v26 + 140), v35, 48, 0, a6);
        icu::UnicodeString::~UnicodeString(v27, v35);
        icu::FormattedStringBuilder::insert((*v10 + 8), *(*v10 + 140), a3, 49, a5, a6);
        v28 = *(a3 + 8);
        v29 = v28;
        v30 = v28 >> 5;
        if (v29 < 0)
        {
          v30 = *(a3 + 12);
        }

        if (a5)
        {
          v31 = 2;
        }

        else
        {
          v31 = 0;
        }

        icu::FormattedValueStringBuilderImpl::appendSpanInfo(*v10, 4099, a4, -1, v30 + v31, a6);
        v23 = *v10;
        v24 = HIDWORD(__b[0]);
      }

      else
      {
        icu::UnicodeString::tempSubString(v36, SHIDWORD(__b[0]), LODWORD(__b[0]) - HIDWORD(__b[0]), v35);
        icu::FormattedStringBuilder::insert((v15 + 8), 0, v35, 48, 0, a6);
        icu::UnicodeString::~UnicodeString(v16, v35);
        icu::FormattedStringBuilder::insert((*v10 + 8), 0, a3, 49, a5, a6);
        v17 = *(a3 + 8);
        v18 = v17;
        v19 = v17 >> 5;
        if (v18 < 0)
        {
          v19 = *(a3 + 12);
        }

        if (a5)
        {
          v20 = 2;
        }

        else
        {
          v20 = 0;
        }

        icu::FormattedValueStringBuilderImpl::prependSpanInfo(*v10, 4099, a4, -1, v19 + v20, a6);
        v21 = *v10;
        icu::UnicodeString::tempSubString(v36, 0, SHIDWORD(__b[0]), v35);
        icu::FormattedStringBuilder::insert((v21 + 8), 0, v35, 48, 0, a6);
        icu::UnicodeString::~UnicodeString(v22, v35);
        v23 = *v10;
        v24 = __b[0];
      }

      icu::UnicodeString::tempSubString(v36, v24, 0x7FFFFFFF, v35);
      icu::FormattedStringBuilder::insert((v23 + 8), *(v23 + 140), v35, 48, 0, a6);
      icu::UnicodeString::~UnicodeString(v32, v35);
      result = icu::UnicodeString::~UnicodeString(v33, v36);
    }

    else
    {
      *a6 = U_INTERNAL_PROGRAM_ERROR;
    }
  }

  v34 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1953338D0(unsigned __int16 *a1, char *a2, icu::ResourceValue *a3, uint64_t a4, int *a5)
{
  v21 = *MEMORY[0x1E69E9840];
  __s1 = a2;
  *(a1 + 264) = 0;
  if ((*(*a3 + 24))(a3) == 3)
  {
    v19 = 0;
    *&v16[0] = (*(*a3 + 40))(a3, &v19, a5);
    icu::UnicodeString::UnicodeString(v20, 1, v16);
    sub_195335520(a1, v20);
    result = icu::UnicodeString::~UnicodeString(v8, v20);
  }

  else
  {
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    result = (*(*a3 + 88))(v16, a3, a5);
    if (*a5 <= 0)
    {
      v10 = 0;
      do
      {
        result = icu::ResourceTable::getKeyAndValue(v16, v10, &__s1, a3);
        if (!result)
        {
          break;
        }

        v11 = __s1;
        if (*__s1 != 50 || (v12 = a1 + 4, __s1[1]))
        {
          v13 = strcmp(__s1, "end");
          v12 = a1 + 100;
          if (v13)
          {
            v14 = strcmp(v11, "middle");
            v12 = a1 + 68;
            if (v14)
            {
              result = strcmp(v11, "start");
              v12 = a1 + 36;
              if (result)
              {
                continue;
              }
            }
          }
        }

        result = sub_195335604(a1, a3, v12, a5);
        ++v10;
      }

      while (*a5 <= 0);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_195333AF0(uint64_t a1, uint64_t a2)
{
  icu::UnicodeString::UnicodeString((a1 + 16), (a2 + 16));
  icu::UnicodeString::UnicodeString((a1 + 88), (a2 + 88));
  *(a1 + 152) = (*(**(a2 + 152) + 24))(*(a2 + 152));
  *(a1 + 160) = *(a2 + 160);
  return a1;
}

uint64_t sub_195333B64(uint64_t a1, uint64_t a2, icu::UnicodeString *a3, const icu::UnicodeString *a4, uint64_t a5, uint64_t a6, UErrorCode *a7)
{
  *(a1 + 16) = &unk_1F0935D00;
  *(a1 + 24) = 2;
  icu::SimpleFormatter::applyPatternMinMaxArguments((a1 + 8), a3, 2, 2, 0, a7);
  *(a1 + 88) = &unk_1F0935D00;
  *(a1 + 96) = 2;
  icu::SimpleFormatter::applyPatternMinMaxArguments((a1 + 80), a4, 2, 2, 0, a7);
  sub_195333C80((a6 + 8), a2, a5);
  *(a1 + 152) = v13;
  if (!v13 && *a7 <= 0)
  {
    *a7 = U_MEMORY_ALLOCATION_ERROR;
  }

  *(a1 + 160) = uloc_getCharacterOrientation(*(a6 + 40), a7) == 1;
  return a1;
}

void sub_195333C80(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v65 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  if (v5 > 0x68)
  {
    if (v5 == 105)
    {
      if (a1[1] != 119)
      {
        goto LABEL_59;
      }

LABEL_27:
      if (!a1[2])
      {
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v51 = "{";
        icu::UnicodeString::UnicodeString(&v61, 1, &v51);
        v13 = *(a2 + 8);
        if (v13)
        {
          v14 = BYTE8(v61) & 1;
        }

        else
        {
          v14 = 0;
          v15 = v13;
          v16 = v13 >> 5;
          if (v15 >= 0)
          {
            v17 = v16;
          }

          else
          {
            v17 = *(a2 + 12);
          }

          if ((SWORD4(v61) & 0x8000u) == 0)
          {
            v18 = WORD4(v61) >> 5;
          }

          else
          {
            v18 = HIDWORD(v61);
          }

          if ((BYTE8(v61) & 1) == 0 && v17 == v18)
          {
            if ((BYTE8(v61) & 2) != 0)
            {
              v19 = (&v61 | 0xA);
            }

            else
            {
              v19 = *(&v62 + 1);
            }

            v14 = icu::UnicodeString::doEquals(a2, v19, v17);
          }
        }

        v20 = *(a3 + 8);
        if (v20)
        {
          v21 = BYTE8(v61) & 1;
        }

        else
        {
          v21 = 0;
          v22 = v20;
          v23 = v20 >> 5;
          if (v22 >= 0)
          {
            v24 = v23;
          }

          else
          {
            v24 = *(a3 + 12);
          }

          if ((SWORD4(v61) & 0x8000u) == 0)
          {
            v25 = WORD4(v61) >> 5;
          }

          else
          {
            v25 = HIDWORD(v61);
          }

          if ((BYTE8(v61) & 1) == 0 && v24 == v25)
          {
            if ((BYTE8(v61) & 2) != 0)
            {
              v26 = (&v61 | 0xA);
            }

            else
            {
              v26 = *(&v62 + 1);
            }

            v21 = icu::UnicodeString::doEquals(a3, v26, v24);
          }
        }

        if ((v14 | v21))
        {
          v59 = 0u;
          v60 = 0u;
          v57 = 0u;
          v58 = 0u;
          v50 = a0_2;
          icu::UnicodeString::UnicodeString(&v57, 1, &v50);
          operator new();
        }

        icu::UnicodeString::~UnicodeString((v14 | v21), &v61);
      }

      goto LABEL_59;
    }

    if (v5 == 116 && a1[1] == 104 && !a1[2])
    {
      operator new();
    }
  }

  else
  {
    if (v5 != 101)
    {
      if (v5 != 104 || a1[1] != 101)
      {
        goto LABEL_59;
      }

      goto LABEL_27;
    }

    if (a1[1] == 115 && !a1[2])
    {
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v55 = "{";
      icu::UnicodeString::UnicodeString(&v61, 1, &v55);
      v6 = *(a2 + 8);
      if (v6)
      {
        v7 = BYTE8(v61) & 1;
      }

      else
      {
        v7 = 0;
        v8 = v6;
        v9 = v6 >> 5;
        if (v8 >= 0)
        {
          v10 = v9;
        }

        else
        {
          v10 = *(a2 + 12);
        }

        if ((SWORD4(v61) & 0x8000u) == 0)
        {
          v11 = WORD4(v61) >> 5;
        }

        else
        {
          v11 = HIDWORD(v61);
        }

        if ((BYTE8(v61) & 1) == 0 && v10 == v11)
        {
          if ((BYTE8(v61) & 2) != 0)
          {
            v12 = (&v61 | 0xA);
          }

          else
          {
            v12 = *(&v62 + 1);
          }

          v7 = icu::UnicodeString::doEquals(a2, v12, v10);
        }
      }

      v27 = *(a3 + 8);
      if (v27)
      {
        v28 = BYTE8(v61) & 1;
      }

      else
      {
        v28 = 0;
        v29 = v27;
        v30 = v27 >> 5;
        if (v29 >= 0)
        {
          v31 = v30;
        }

        else
        {
          v31 = *(a3 + 12);
        }

        if ((SWORD4(v61) & 0x8000u) == 0)
        {
          v32 = WORD4(v61) >> 5;
        }

        else
        {
          v32 = HIDWORD(v61);
        }

        if ((BYTE8(v61) & 1) == 0 && v31 == v32)
        {
          if ((BYTE8(v61) & 2) != 0)
          {
            v33 = (&v61 | 0xA);
          }

          else
          {
            v33 = *(&v62 + 1);
          }

          v28 = icu::UnicodeString::doEquals(a3, v33, v31);
        }
      }

      if ((v7 | v28))
      {
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v54 = "{";
        icu::UnicodeString::UnicodeString(&v57, 1, &v54);
        operator new();
      }

      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v53 = "{";
      icu::UnicodeString::UnicodeString(&v57, 1, &v53);
      v34 = *(a2 + 8);
      if (v34)
      {
        v35 = BYTE8(v57) & 1;
      }

      else
      {
        v35 = 0;
        v36 = v34;
        v37 = v34 >> 5;
        if (v36 >= 0)
        {
          v38 = v37;
        }

        else
        {
          v38 = *(a2 + 12);
        }

        if ((SWORD4(v57) & 0x8000u) == 0)
        {
          v39 = WORD4(v57) >> 5;
        }

        else
        {
          v39 = HIDWORD(v57);
        }

        if ((BYTE8(v57) & 1) == 0 && v38 == v39)
        {
          if ((BYTE8(v57) & 2) != 0)
          {
            v40 = (&v57 | 0xA);
          }

          else
          {
            v40 = *(&v58 + 1);
          }

          v35 = icu::UnicodeString::doEquals(a2, v40, v38);
        }
      }

      v41 = *(a3 + 8);
      if (v41)
      {
        v46 = WORD4(v57);
        v42 = BYTE8(v57) & 1;
      }

      else
      {
        v42 = 0;
        v43 = v41;
        v44 = v41 >> 5;
        if (v43 >= 0)
        {
          v45 = v44;
        }

        else
        {
          v45 = *(a3 + 12);
        }

        v46 = WORD4(v57);
        if ((SWORD4(v57) & 0x8000u) == 0)
        {
          v47 = WORD4(v57) >> 5;
        }

        else
        {
          v47 = HIDWORD(v57);
        }

        if ((BYTE8(v57) & 1) == 0 && v45 == v47)
        {
          if ((BYTE8(v57) & 2) != 0)
          {
            v48 = (&v57 | 0xA);
          }

          else
          {
            v48 = *(&v58 + 1);
          }

          v42 = icu::UnicodeString::doEquals(a3, v48, v45);
        }
      }

      if ((v35 | v42))
      {
        memset(v56, 0, sizeof(v56));
        v52 = "{";
        icu::UnicodeString::UnicodeString(v56, 1, &v52);
        operator new();
      }

      icu::UnicodeString::~UnicodeString(v46, &v57);
      icu::UnicodeString::~UnicodeString(v49, &v61);
    }
  }

LABEL_59:
  operator new();
}