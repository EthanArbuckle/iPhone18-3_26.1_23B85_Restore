uint64_t icu::number::impl::PatternStringUtils::ignoreRoundingIncrement(icu::number::impl::PatternStringUtils *this, double *a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    return 0;
  }

  v2 = *this + *this;
  v3 = 20.0;
  if (v2 > 1.0)
  {
    goto LABEL_7;
  }

  v4 = 0;
  do
  {
    v5 = v4;
    v2 = v2 * 10.0;
    v3 = v3 * 10.0;
    if (v4 >= a2)
    {
      break;
    }

    ++v4;
  }

  while (v2 <= 1.0);
  if (v5 >= a2)
  {
    return 1;
  }

LABEL_7:
  v6 = 0;
  *this = (v2 * 10.0) / v3;
  return v6;
}

void *icu::number::impl::PatternStringUtils::propertiesToPatternString@<X0>(icu::number::impl::PatternStringUtils *this@<X0>, const icu::number::impl::DecimalFormatProperties *a2@<X1>, uint64_t a3@<X8>)
{
  v138 = *MEMORY[0x1E69E9840];
  *(a3 + 8) = 0u;
  *(a3 + 56) = 0;
  *(a3 + 40) = 0u;
  *(a3 + 24) = 0u;
  *a3 = &unk_1F0935D00;
  *(a3 + 8) = 2;
  v6 = uprv_min(*(this + 19), 100);
  v104 = uprv_max(0, v6);
  v7 = uprv_min(*(this + 188), 100);
  v106 = uprv_max(0, v7);
  v107 = *(this + 80);
  v100 = uprv_min(*(this + 18), 100);
  v97 = *(this + 48);
  memset(v137, 0, sizeof(v137));
  icu::UnicodeString::UnicodeString(v137, this + 49);
  v8 = uprv_min(*(this + 28), 100);
  v9 = uprv_max(0, v8);
  v99 = uprv_min(*(this + 23), 100);
  v10 = uprv_min(*(this + 26), 100);
  v11 = uprv_max(0, v10);
  v103 = uprv_min(*(this + 22), 100);
  v12 = uprv_min(*(this + 29), 100);
  v13 = uprv_min(*(this + 24), 100);
  v95 = *(this + 65);
  v14 = uprv_min(*(this + 25), 100);
  v96 = *(this + 66);
  bzero(v127, 0x990uLL);
  v126[0] = &unk_1F093F170;
  v126[1] = &unk_1F0935D00;
  v127[0] = 2;
  v128 = &unk_1F0935D00;
  v129 = 2;
  v130 = &unk_1F0935D00;
  v131 = 2;
  v132 = &unk_1F0935D00;
  v133 = 2;
  v134 = 1;
  v15 = v135;
  sub_1952FDB18(v135);
  v16 = *(this + 6);
  if (v16)
  {
    v134 = 1;
    sub_19536ADEC(v135, v16, this, a2);
    if (v136)
    {
      v15 = v126;
    }
  }

  else
  {
    v15 = v126;
    sub_19536A6B4(v126, this, a2);
    v136 = 1;
  }

  (*(*v15 + 32))(&v116, v15, 256);
  if ((SWORD4(v116) & 0x8000u) == 0)
  {
    v17 = WORD4(v116) >> 5;
  }

  else
  {
    v17 = HIDWORD(v116);
  }

  icu::UnicodeString::doAppend(a3, &v116, 0, v17);
  icu::UnicodeString::~UnicodeString(v18, &v116);
  v19 = *(a3 + 8);
  v20 = v19;
  v21 = v19 >> 5;
  if (v20 >= 0)
  {
    v22 = v21;
  }

  else
  {
    v22 = *(a3 + 12);
  }

  v23 = v104;
  if (v104 == v106)
  {
    v23 = 0;
  }

  v105 = v23;
  if (v107)
  {
    v24 = v106 + v23 + 1;
  }

  else
  {
    v24 = 1;
  }

  v98 = v24;
  v25 = *(this + 92);
  v122 = 0u;
  v125 = 0;
  v124 = 0u;
  v123 = 0u;
  v121 = &unk_1F0935D00;
  LOWORD(v122) = 2;
  if (v13 != uprv_min(100, -1))
  {
    v34 = v122 >> 5;
    if ((v122 & 0x8000u) != 0)
    {
      v34 = DWORD1(v122);
    }

    while (v34 < v12)
    {
      LOWORD(v116) = 64;
      icu::UnicodeString::doAppend(&v121, &v116, 0, 1);
      v34 = v122 >> 5;
      if ((v122 & 0x8000u) != 0)
      {
        v34 = DWORD1(v122);
      }
    }

    if (v34 < v13)
    {
      do
      {
        LOWORD(v116) = 35;
        icu::UnicodeString::doAppend(&v121, &v116, 0, 1);
        v35 = v122 >> 5;
        if ((v122 & 0x8000u) != 0)
        {
          v35 = DWORD1(v122);
        }
      }

      while (v35 < v13);
    }

    goto LABEL_45;
  }

  if (v25 == 0.0)
  {
LABEL_45:
    LowerDisplayMagnitude = 0;
    goto LABEL_48;
  }

  if ((v103 & 0x80000000) == 0)
  {
    v26 = v25 + v25;
    v27 = 20.0;
    if (v25 + v25 > 1.0)
    {
      goto LABEL_25;
    }

    v28 = 0;
    do
    {
      v29 = v28;
      v26 = v26 * 10.0;
      v27 = v27 * 10.0;
      if (v28 >= v103)
      {
        break;
      }

      ++v28;
    }

    while (v26 <= 1.0);
    if (v29 < v103)
    {
LABEL_25:
      v25 = (v26 * 10.0) / v27;
      goto LABEL_26;
    }

    goto LABEL_45;
  }

LABEL_26:
  v120 = 0;
  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  icu::number::impl::DecimalQuantity::DecimalQuantity(&v116);
  icu::number::impl::DecimalQuantity::setToDouble(&v116, v25);
  icu::number::impl::DecimalQuantity::roundToInfinity(&v116);
  LowerDisplayMagnitude = icu::number::impl::DecimalQuantity::getLowerDisplayMagnitude(&v116);
  icu::number::impl::DecimalQuantity::adjustMagnitude(&v116, -LowerDisplayMagnitude);
  icu::number::impl::DecimalQuantity::increaseMinIntegerTo(&v116, v9 - LowerDisplayMagnitude);
  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  icu::number::impl::DecimalQuantity::toPlainString(&v116, &v112);
  if ((SWORD4(v112) & 0x8000u) == 0)
  {
    v31 = WORD4(v112) >> 5;
  }

  else
  {
    v31 = HIDWORD(v112);
  }

  if (v31 && ((BYTE8(v112) & 2) != 0 ? (v32 = (&v112 | 0xA)) : (v32 = *(&v113 + 1)), *v32 == 45))
  {
    v31 = (v31 - 1);
    v33 = 1;
  }

  else
  {
    v33 = 0;
  }

  icu::UnicodeString::doAppend(&v121, &v112, v33, v31);
  icu::UnicodeString::~UnicodeString(v36, &v112);
  icu::number::impl::DecimalQuantity::~DecimalQuantity(&v116);
LABEL_48:
  v37 = v122;
  v38 = v122 >> 5;
  v39 = DWORD1(v122);
  if ((v122 & 0x8000u) != 0)
  {
    v38 = DWORD1(v122);
  }

  v101 = v22;
  if (v38 + LowerDisplayMagnitude < v9)
  {
    do
    {
      LOWORD(v116) = 48;
      icu::UnicodeString::doReplace(&v121, 0, 0, &v116, 0, 1);
      v37 = v122;
      v40 = v122 >> 5;
      v39 = DWORD1(v122);
      if ((v122 & 0x8000u) != 0)
      {
        v40 = DWORD1(v122);
      }
    }

    while (v40 + LowerDisplayMagnitude < v9);
  }

  v41 = LowerDisplayMagnitude;
  if (v11 > -LowerDisplayMagnitude)
  {
    v42 = -LowerDisplayMagnitude;
    do
    {
      LOWORD(v116) = 48;
      icu::UnicodeString::doAppend(&v121, &v116, 0, 1);
      ++v42;
    }

    while (v11 > v42);
    v41 = -v11;
    v37 = v122;
    v39 = DWORD1(v122);
  }

  v43 = v37;
  v44 = v37 >> 5;
  if (v43 < 0)
  {
    v44 = v39;
  }

  v45 = uprv_max(v98, v44 + v41);
  if (v99 != 100)
  {
    v45 = uprv_max(v99, v45);
  }

  v46 = v41;
  if (v103 != 100)
  {
    v46 = uprv_min(-v103, v41);
  }

  if (v45 > v46)
  {
    if (v46 < 0)
    {
      v47 = 1;
    }

    else
    {
      v47 = v95;
    }

    if (v11 >= -LowerDisplayMagnitude)
    {
      v48 = -LowerDisplayMagnitude;
    }

    else
    {
      v48 = v11;
    }

    v49 = LowerDisplayMagnitude + v48 - v11 - v45;
    v50 = v45 - 1;
    do
    {
      if (v122 < 0)
      {
        v52 = DWORD1(v122);
        v53 = v49 + DWORD1(v122);
        if (v49 + DWORD1(v122) >= 0 && v53 < SDWORD1(v122))
        {
          goto LABEL_81;
        }
      }

      else
      {
        v51 = __CFADD__(v49, v122 >> 5);
        if (((v49 + (v122 >> 5)) & 0x80000000) == 0 && v51)
        {
          v52 = v122 >> 5;
          v53 = v41 - v45 + v52;
LABEL_81:
          if (v52 <= v53)
          {
            v55 = -1;
          }

          else
          {
            v54 = &v122 + 2;
            if ((v122 & 2) == 0)
            {
              v54 = v123;
            }

            v55 = *&v54[2 * v53];
          }

          goto LABEL_87;
        }
      }

      v55 = 35;
LABEL_87:
      LOWORD(v116) = v55;
      icu::UnicodeString::doAppend(a3, &v116, 0, 1);
      if (((v50 == 0) & v47) == 1)
      {
        if (*(this + 67) == 1)
        {
          v56 = 164;
        }

        else
        {
          v56 = 46;
        }

        LOWORD(v116) = v56;
        icu::UnicodeString::doAppend(a3, &v116, 0, 1);
      }

      if (v107)
      {
        if (v50 + 1 >= 2 && v50 == v105)
        {
          LOWORD(v116) = 44;
          icu::UnicodeString::doAppend(a3, &v116, 0, 1);
        }

        if (v50 > v105 && v106 >= 1 && !((v50 - v105) % v106))
        {
          LOWORD(v116) = 44;
          icu::UnicodeString::doAppend(a3, &v116, 0, 1);
        }
      }

      ++v49;
      --v45;
    }

    while (v50-- > v46);
  }

  v58 = v101;
  if (v14 != uprv_min(100, -1))
  {
    LOWORD(v116) = 69;
    icu::UnicodeString::doAppend(a3, &v116, 0, 1);
    if (v96)
    {
      LOWORD(v116) = 43;
      icu::UnicodeString::doAppend(a3, &v116, 0, 1);
    }

    if (v14 >= 1)
    {
      do
      {
        LOWORD(v116) = 48;
        icu::UnicodeString::doAppend(a3, &v116, 0, 1);
        --v14;
      }

      while (v14);
    }
  }

  v59 = *(a3 + 8);
  v60 = v59;
  v61 = v59 >> 5;
  if (v60 >= 0)
  {
    v62 = v61;
  }

  else
  {
    v62 = *(a3 + 12);
  }

  v63 = 34;
  if (v136)
  {
    v63 = 0;
  }

  (*(v126[v63] + 32))(&v116);
  if ((SWORD4(v116) & 0x8000u) == 0)
  {
    v64 = WORD4(v116) >> 5;
  }

  else
  {
    v64 = HIDWORD(v116);
  }

  icu::UnicodeString::doAppend(a3, &v116, 0, v64);
  icu::UnicodeString::~UnicodeString(v65, &v116);
  if (v100 >= 1 && (v97 & 1) == 0)
  {
    v66 = *(a3 + 8);
    v67 = v66;
    v68 = v66 >> 5;
    if (v67 < 0)
    {
      v68 = *(a3 + 12);
    }

    if (v100 > v68)
    {
      do
      {
        LOWORD(v116) = 35;
        icu::UnicodeString::doReplace(a3, v101, 0, &v116, 0, 1);
        v62 = (v62 + 1);
        v69 = *(a3 + 8);
        v70 = v69;
        v71 = v69 >> 5;
        if (v70 < 0)
        {
          v71 = *(a3 + 12);
        }
      }

      while (v100 > v71);
    }

    if (SHIDWORD(v97) > 1)
    {
      if (HIDWORD(v97) == 2)
      {
        icu::UnicodeString::UnicodeString(v109, v137);
        icu::number::impl::PatternStringUtils::escapePaddingString(v109, a3, v62);
        icu::UnicodeString::~UnicodeString(v82, v109);
        LOWORD(v116) = 42;
        icu::UnicodeString::doReplace(a3, v62, 0, &v116, 0, 1);
      }

      else if (HIDWORD(v97) == 3)
      {
        LOWORD(v116) = 42;
        icu::UnicodeString::doAppend(a3, &v116, 0, 1);
        icu::UnicodeString::UnicodeString(v108, v137);
        v76 = *(a3 + 8);
        v77 = v76;
        v78 = v76 >> 5;
        if (v77 >= 0)
        {
          v79 = v78;
        }

        else
        {
          v79 = *(a3 + 12);
        }

        icu::number::impl::PatternStringUtils::escapePaddingString(v108, a3, v79);
        icu::UnicodeString::~UnicodeString(v80, v108);
      }
    }

    else
    {
      if (HIDWORD(v97))
      {
        if (HIDWORD(v97) != 1)
        {
          goto LABEL_136;
        }

        icu::UnicodeString::UnicodeString(v110, v137);
        v72 = icu::number::impl::PatternStringUtils::escapePaddingString(v110, a3, v101);
        icu::UnicodeString::~UnicodeString(v73, v110);
        LOWORD(v116) = 42;
        v74 = a3;
        v75 = v101;
      }

      else
      {
        icu::UnicodeString::UnicodeString(v111, v137);
        v72 = icu::number::impl::PatternStringUtils::escapePaddingString(v111, a3, 0);
        icu::UnicodeString::~UnicodeString(v81, v111);
        LOWORD(v116) = 42;
        v74 = a3;
        v75 = 0;
      }

      icu::UnicodeString::doReplace(v74, v75, 0, &v116, 0, 1);
      v58 = v72 + 1 + v101;
      LODWORD(v62) = v72 + 1 + v62;
    }

LABEL_136:
    v83 = *a2;
    if (v83 > 0)
    {
      goto LABEL_153;
    }
  }

  v84 = 34;
  if (v136)
  {
    v84 = 0;
  }

  if ((*(v126[v84] + 56))())
  {
    LOWORD(v116) = 59;
    icu::UnicodeString::doAppend(a3, &v116, 0, 1);
    if (v136)
    {
      v85 = 0;
    }

    else
    {
      v85 = 34;
    }

    (*(v126[v85] + 32))(&v116);
    if ((SWORD4(v116) & 0x8000u) == 0)
    {
      v86 = WORD4(v116) >> 5;
    }

    else
    {
      v86 = HIDWORD(v116);
    }

    icu::UnicodeString::doAppend(a3, &v116, 0, v86);
    icu::UnicodeString::~UnicodeString(v87, &v116);
    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    icu::UnicodeString::UnicodeString(&v116, a3);
    icu::UnicodeString::doAppend(a3, &v116, v58, (v62 - v58));
    if (v136)
    {
      v88 = 0;
    }

    else
    {
      v88 = 34;
    }

    (*(v126[v88] + 32))(&v112);
    if ((SWORD4(v112) & 0x8000u) == 0)
    {
      v89 = WORD4(v112) >> 5;
    }

    else
    {
      v89 = HIDWORD(v112);
    }

    icu::UnicodeString::doAppend(a3, &v112, 0, v89);
    icu::UnicodeString::~UnicodeString(v90, &v112);
    icu::UnicodeString::~UnicodeString(v91, &v116);
  }

LABEL_153:
  icu::UnicodeString::~UnicodeString(v83, &v121);
  sub_1952FDC0C(v126);
  result = icu::UnicodeString::~UnicodeString(v92, v137);
  v94 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t icu::number::impl::PatternStringUtils::escapePaddingString(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  if (*(a1 + 8) < 0)
  {
    if (*(a1 + 12))
    {
      goto LABEL_9;
    }
  }

  else if (v6 >> 5)
  {
    goto LABEL_9;
  }

  icu::UnicodeString::unBogus(a1);
  if (*(a1 + 8) < 0)
  {
    v7 = *(a1 + 12);
  }

  else
  {
    v7 = *(a1 + 8) >> 5;
  }

  icu::UnicodeString::doReplace(a1, 0, v7, " ", 0, 0xFFFFFFFFLL);
  LOWORD(v6) = *(a1 + 8);
LABEL_9:
  v8 = *(a2 + 8);
  v9 = *(a2 + 12);
  if ((v6 & 0x8000) == 0)
  {
    if ((v6 & 0x7FE0) == 0x20)
    {
      goto LABEL_11;
    }

    goto LABEL_17;
  }

  if (*(a1 + 12) != 1)
  {
LABEL_17:
    v25 = *(a2 + 12);
    v26 = 39;
    v14 = 1;
    icu::UnicodeString::doReplace(a2, a3, 0, &v26, 0, 1);
    for (i = 0; ; ++i)
    {
      if (*(a1 + 8) < 0)
      {
        v16 = *(a1 + 12);
        if (i >= v16)
        {
LABEL_31:
          v26 = 39;
          icu::UnicodeString::doReplace(a2, (v14 + a3), 0, &v26, 0, 1);
          v9 = v25;
          goto LABEL_33;
        }

        v16 = v16;
      }

      else
      {
        if (i >= *(a1 + 8) >> 5)
        {
          goto LABEL_31;
        }

        v16 = *(a1 + 8) >> 5;
      }

      if (v16 <= i)
      {
        LOWORD(v18) = -1;
      }

      else
      {
        v17 = a1 + 10;
        if ((*(a1 + 8) & 2) == 0)
        {
          v17 = *(a1 + 24);
        }

        v18 = *(v17 + 2 * i);
        if (v18 == 39)
        {
          icu::UnicodeString::doReplace(a2, (v14 + a3), 0, L"''", 0, 0xFFFFFFFFLL);
          v19 = 2;
          goto LABEL_30;
        }
      }

      v26 = v18;
      v19 = 1;
      icu::UnicodeString::doReplace(a2, (v14 + a3), 0, &v26, 0, 1);
LABEL_30:
      v14 += v19;
    }
  }

LABEL_11:
  if (icu::UnicodeString::doCompare(a1, 0, 1, "'", 0, -1))
  {
    v10 = *(a1 + 8);
    v11 = v10;
    v12 = v10 >> 5;
    if (v11 >= 0)
    {
      v13 = v12;
    }

    else
    {
      v13 = *(a1 + 12);
    }

    icu::UnicodeString::doReplace(a2, a3, 0, a1, 0, v13);
  }

  else
  {
    icu::UnicodeString::doReplace(a2, a3, 0, L"''", 0, 0xFFFFFFFFLL);
  }

LABEL_33:
  if ((v8 & 0x8000u) == 0)
  {
    v20 = v8 >> 5;
  }

  else
  {
    v20 = v9;
  }

  v21 = *(a2 + 8);
  v22 = v21;
  v23 = v21 >> 5;
  if (v22 < 0)
  {
    v23 = *(a2 + 12);
  }

  return v23 - v20;
}

void *icu::number::impl::PatternStringUtils::convertLocalized@<X0>(icu::number::impl::PatternStringUtils *this@<X0>, UChar **a2@<X1>, const icu::DecimalFormatSymbols *a3@<X2>, _DWORD *a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a3;
  v91[327] = *MEMORY[0x1E69E9840];
  bzero(v90, 0xA80uLL);
  for (i = 0; i != 2688; i += 64)
  {
    v11 = &v90[i];
    *v11 = &unk_1F0935D00;
    *(v11 + 4) = 2;
  }

  v12 = v6 ^ 1;
  v13 = &v90[64 * v12];
  icu::UnicodeString::unBogus(v13);
  if (*(v13 + 4) < 0)
  {
    v14 = *(v13 + 3);
  }

  else
  {
    v14 = *(v13 + 4) >> 5;
  }

  icu::UnicodeString::doReplace(&v90[64 * v12], 0, v14, "%", 1uLL);
  v15 = v6;
  icu::UnicodeString::operator=(&v90[64 * v6], a2 + 25);
  v16 = &v91[8 * v12 + 7];
  icu::UnicodeString::unBogus(v16);
  if (v16[1] < 0)
  {
    v17 = *(v16 + 3);
  }

  else
  {
    v17 = *(v16 + 4) >> 5;
  }

  icu::UnicodeString::doReplace(&v91[8 * v12 + 7], 0, v17, "0 ", 1uLL);
  icu::UnicodeString::operator=(&v91[8 * v15 + 7], a2 + 97);
  v18 = &v91[8 * v12 + 23];
  icu::UnicodeString::unBogus(v18);
  if (v18[1] < 0)
  {
    v19 = *(v18 + 3);
  }

  else
  {
    v19 = *(v18 + 4) >> 5;
  }

  icu::UnicodeString::doReplace(&v91[8 * v12 + 23], 0, v19, ".", 1uLL);
  icu::UnicodeString::operator=(&v91[8 * v15 + 23], a2 + 1);
  v20 = &v91[8 * v12 + 39];
  icu::UnicodeString::unBogus(v20);
  if (v20[1] < 0)
  {
    v21 = *(v20 + 3);
  }

  else
  {
    v21 = *(v20 + 4) >> 5;
  }

  icu::UnicodeString::doReplace(&v91[8 * v12 + 39], 0, v21, ",", 1uLL);
  icu::UnicodeString::operator=(&v91[8 * v15 + 39], a2 + 9);
  v22 = &v91[8 * v12 + 55];
  icu::UnicodeString::unBogus(v22);
  if (v22[1] < 0)
  {
    v23 = *(v22 + 3);
  }

  else
  {
    v23 = *(v22 + 4) >> 5;
  }

  icu::UnicodeString::doReplace(&v91[8 * v12 + 55], 0, v23, "-", 1uLL);
  icu::UnicodeString::operator=(&v91[8 * v15 + 55], a2 + 49);
  v24 = &v91[8 * v12 + 71];
  icu::UnicodeString::unBogus(v24);
  if (v24[1] < 0)
  {
    v25 = *(v24 + 3);
  }

  else
  {
    v25 = *(v24 + 4) >> 5;
  }

  icu::UnicodeString::doReplace(&v91[8 * v12 + 71], 0, v25, "+", 1uLL);
  icu::UnicodeString::operator=(&v91[8 * v15 + 71], a2 + 57);
  v26 = &v91[8 * v12 + 87];
  icu::UnicodeString::unBogus(v26);
  if (v26[1] < 0)
  {
    v27 = *(v26 + 3);
  }

  else
  {
    v27 = *(v26 + 4) >> 5;
  }

  icu::UnicodeString::doReplace(&v91[8 * v12 + 87], 0, v27, ";", 1uLL);
  icu::UnicodeString::operator=(&v91[8 * v15 + 87], a2 + 17);
  v28 = &v91[8 * v12 + 103];
  icu::UnicodeString::unBogus(v28);
  if (v28[1] < 0)
  {
    v29 = *(v28 + 3);
  }

  else
  {
    v29 = *(v28 + 4) >> 5;
  }

  icu::UnicodeString::doReplace(&v91[8 * v12 + 103], 0, v29, "@", 1uLL);
  icu::UnicodeString::operator=(&v91[8 * v15 + 103], a2 + 129);
  v30 = &v91[8 * v12 + 119];
  icu::UnicodeString::unBogus(v30);
  if (v30[1] < 0)
  {
    v31 = *(v30 + 3);
  }

  else
  {
    v31 = *(v30 + 4) >> 5;
  }

  icu::UnicodeString::doReplace(&v91[8 * v12 + 119], 0, v31, "E", 1uLL);
  icu::UnicodeString::operator=(&v91[8 * v15 + 119], a2 + 89);
  v32 = &v91[8 * v12 + 135];
  icu::UnicodeString::unBogus(v32);
  if (v32[1] < 0)
  {
    v33 = *(v32 + 3);
  }

  else
  {
    v33 = *(v32 + 4) >> 5;
  }

  icu::UnicodeString::doReplace(&v91[8 * v12 + 135], 0, v33, "*", 1uLL);
  icu::UnicodeString::operator=(&v91[8 * v15 + 135], a2 + 105);
  v34 = &v91[8 * v12 + 151];
  icu::UnicodeString::unBogus(v34);
  if (v34[1] < 0)
  {
    v35 = *(v34 + 3);
  }

  else
  {
    v35 = *(v34 + 4) >> 5;
  }

  icu::UnicodeString::doReplace(&v91[8 * v12 + 151], 0, v35, "#", 1uLL);
  icu::UnicodeString::operator=(&v91[8 * v15 + 151], a2 + 41);
  v36 = 0;
  v37 = a2 + 33;
  v38 = &v90[64 * v12];
  v39 = a2 + 137;
  v40 = -1280;
  do
  {
    v41 = &v38[v40];
    if (*&v38[v40 + 2696] < 0)
    {
      v42 = *(v41 + 675);
    }

    else
    {
      v42 = *&v38[v40 + 2696] >> 5;
    }

    icu::UnicodeString::replace((v41 + 2688), 0, v42, v36 | 0x30);
    if (v40 == -1280)
    {
      v43 = v37;
    }

    else
    {
      v43 = v39;
    }

    icu::UnicodeString::operator=(&v90[64 * v15 + 2688 + v40], v43);
    ++v36;
    v39 += 8;
    v40 += 128;
  }

  while (v40);
  v44 = &v90[64 * v15];
  v45 = 21;
  do
  {
    icu::UnicodeString::UnicodeString(&v86, 39);
    icu::UnicodeString::UnicodeString(&v83, 8217);
    if (*(v44 + 4) < 0)
    {
      v46 = *(v44 + 3);
    }

    else
    {
      v46 = *(v44 + 4) >> 5;
    }

    if ((SWORD4(v86) & 0x8000u) == 0)
    {
      v47 = WORD4(v86) >> 5;
    }

    else
    {
      v47 = HIDWORD(v86);
    }

    v48 = v84 >> 5;
    if ((v84 & 0x8000u) != 0)
    {
      v48 = v85;
    }

    icu::UnicodeString::findAndReplace(v44, 0, v46, &v86, 0, v47, &v83, 0, v48);
    icu::UnicodeString::~UnicodeString(v49, &v83);
    icu::UnicodeString::~UnicodeString(v50, &v86);
    v44 += 128;
    --v45;
  }

  while (v45);
  v51 = 0;
  *(a5 + 8) = 0u;
  *(a5 + 56) = 0;
  *(a5 + 40) = 0u;
  *(a5 + 24) = 0u;
  *a5 = &unk_1F0935D00;
  *(a5 + 8) = 2;
  while (1)
  {
    v52 = *(this + 4);
    if (*(this + 4) < 0)
    {
      break;
    }

    if (v51 >= (v52 >> 5))
    {
      goto LABEL_137;
    }

    v53 = v52 >> 5;
LABEL_59:
    if (v53 <= v51)
    {
      LOWORD(v55) = -1;
LABEL_70:
      if (v45 > 4 || ((1 << v45) & 0x19) == 0)
      {
        LOWORD(v86) = v55;
        icu::UnicodeString::doAppend(a5, &v86, 0, 1);
        LODWORD(v45) = 2;
        goto LABEL_134;
      }

      v56 = 0x1FFFFFFFFFFFFEB0;
      do
      {
        v88 = 0u;
        v89 = 0u;
        v86 = 0u;
        v87 = 0u;
        v57 = &v90[v56 * 8];
        v58 = LOWORD(v91[v56 + 328]);
        if ((v58 & 0x8000) != 0)
        {
          v59 = *(v57 + 675);
        }

        else
        {
          v59 = v58 >> 5;
        }

        icu::UnicodeString::tempSubString(this, v51, v59, &v86);
        if (BYTE8(v86))
        {
          v61 = *(v57 + 1348);
          if (v61)
          {
            goto LABEL_120;
          }
        }

        else
        {
          if ((SWORD4(v86) & 0x8000u) == 0)
          {
            v60 = WORD4(v86) >> 5;
          }

          else
          {
            v60 = HIDWORD(v86);
          }

          v61 = *(v57 + 1348);
          if (v61 >= 0)
          {
            v62 = v61 >> 5;
          }

          else
          {
            v62 = HIDWORD(v91[v56 + 328]);
          }

          if ((v61 & 1) == 0 && v60 == v62)
          {
            v63 = (v61 & 2) != 0 ? (&v91[v56 + 328] + 2) : v91[v56 + 330];
            if (icu::UnicodeString::doEquals(&v86, v63, v60))
            {
              LODWORD(v61) = LOWORD(v91[v56 + 328]);
LABEL_120:
              if ((v61 & 0x8000) != 0)
              {
                v73 = HIDWORD(v91[v56 + 328]);
              }

              else
              {
                v73 = v61 >> 5;
              }

              if ((v45 - 3) <= 1)
              {
                v83 = 39;
                icu::UnicodeString::doAppend(a5, &v83, 0, 1);
                LODWORD(v45) = 0;
              }

              v51 = v51 + v73 - 1;
              v74 = LOWORD(v91[v56 + 336]);
              v75 = v74;
              v76 = v74 >> 5;
              if (v75 >= 0)
              {
                v77 = v76;
              }

              else
              {
                v77 = HIDWORD(v91[v56 + 336]);
              }

              icu::UnicodeString::doAppend(a5, &v91[v56 + 335], 0, v77);
LABEL_129:
              icu::UnicodeString::~UnicodeString(v72, &v86);
              goto LABEL_134;
            }
          }
        }

        icu::UnicodeString::~UnicodeString(v61, &v86);
        v56 += 16;
      }

      while (v56 * 8);
      v64 = v91;
      v65 = 2688;
      do
      {
        v88 = 0u;
        v89 = 0u;
        v86 = 0u;
        v87 = 0u;
        v66 = *v64;
        if ((v66 & 0x8000) != 0)
        {
          v67 = *(v64 + 1);
        }

        else
        {
          v67 = v66 >> 5;
        }

        icu::UnicodeString::tempSubString(this, v51, v67, &v86);
        if (BYTE8(v86))
        {
          v69 = *v64;
          if (v69)
          {
            goto LABEL_115;
          }
        }

        else
        {
          if ((SWORD4(v86) & 0x8000u) == 0)
          {
            v68 = WORD4(v86) >> 5;
          }

          else
          {
            v68 = HIDWORD(v86);
          }

          v69 = *v64;
          if (v69 >= 0)
          {
            v70 = v69 >> 5;
          }

          else
          {
            v70 = *(v64 + 1);
          }

          if ((v69 & 1) == 0 && v68 == v70)
          {
            v71 = (v69 & 2) != 0 ? v64 + 1 : *(v64 + 2);
            if (icu::UnicodeString::doEquals(&v86, v71, v68))
            {
LABEL_115:
              if (!v45)
              {
                v83 = 39;
                icu::UnicodeString::doAppend(a5, &v83, 0, 1);
                LODWORD(v45) = 4;
              }

              v83 = v55;
              icu::UnicodeString::doAppend(a5, &v83, 0, 1);
              goto LABEL_129;
            }
          }
        }

        icu::UnicodeString::~UnicodeString(v69, &v86);
        v64 += 64;
        v65 -= 128;
      }

      while (v65);
      if ((v45 - 3) <= 1)
      {
        LOWORD(v86) = 39;
        icu::UnicodeString::doAppend(a5, &v86, 0, 1);
        LODWORD(v45) = 0;
      }

      goto LABEL_132;
    }

    if ((v52 & 2) != 0)
    {
      v54 = this + 10;
    }

    else
    {
      v54 = *(this + 3);
    }

    v55 = *&v54[2 * v51];
    if (v55 != 39)
    {
      goto LABEL_70;
    }

    if (v45 <= 1)
    {
      if (v45)
      {
        LOWORD(v86) = 39;
        icu::UnicodeString::doAppend(a5, &v86, 0, 1);
        LODWORD(v45) = 0;
        goto LABEL_134;
      }

      LOWORD(v86) = 39;
      LODWORD(v45) = 1;
      goto LABEL_133;
    }

    switch(v45)
    {
      case 2:
        LODWORD(v45) = 3;
        break;
      case 3:
        LOWORD(v55) = 39;
        LOWORD(v86) = 39;
        LODWORD(v45) = 1;
        icu::UnicodeString::doAppend(a5, &v86, 0, 1);
LABEL_132:
        LOWORD(v86) = v55;
LABEL_133:
        icu::UnicodeString::doAppend(a5, &v86, 0, 1);
        break;
      case 4:
        LODWORD(v45) = 5;
        break;
      default:
        LOWORD(v86) = 39;
        icu::UnicodeString::doAppend(a5, &v86, 0, 1);
        LOWORD(v86) = 39;
        icu::UnicodeString::doAppend(a5, &v86, 0, 1);
        LODWORD(v45) = 4;
        break;
    }

LABEL_134:
    ++v51;
  }

  v53 = *(this + 3);
  if (v51 < v53)
  {
    goto LABEL_59;
  }

LABEL_137:
  v78 = (v45 - 3);
  if (v78 >= 2)
  {
    if (v45)
    {
      v78 = 65799;
      *a4 = 65799;
    }
  }

  else
  {
    LOWORD(v86) = 39;
    icu::UnicodeString::doAppend(a5, &v86, 0, 1);
  }

  for (j = 2624; j != -64; j -= 64)
  {
    result = icu::UnicodeString::~UnicodeString(v78, &v90[j]);
  }

  v81 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t icu::number::impl::PatternStringUtils::patternInfoToStringBuilder(uint64_t a1, int a2, int a3, int a4, unsigned int a5, unsigned __int8 a6, int a7, uint64_t a8)
{
  if (a3 == 1)
  {
    v15 = (*(*a1 + 48))(a1) ^ 1;
  }

  else
  {
    v15 = 0;
  }

  if ((*(*a1 + 56))(a1) && (a3 == 2 || ((*(*a1 + 64))(a1) & (v15 | a4)) == 1))
  {
    v16 = 0;
    if (a2)
    {
      v17 = 768;
    }

    else
    {
      v17 = 512;
    }

    if (a5 == 8)
    {
      v18 = 0;
    }

    else
    {
      v18 = a5;
    }

    v19 = v17 | v18;
  }

  else
  {
    if (a2)
    {
      v20 = 256;
    }

    else
    {
      v20 = 0;
    }

    if (a5 == 8)
    {
      v21 = 0;
    }

    else
    {
      v21 = a5;
    }

    v19 = v20 | v21;
    if (a2)
    {
      v16 = (a3 == 2) | v15 | a4;
    }

    else
    {
      v16 = 0;
    }
  }

  v22 = "-";
  if (v15)
  {
    v22 = "+";
  }

  v23 = "~";
  v24 = "~";
  if (a3 == 2)
  {
    v24 = L"~-";
  }

  if ((v15 & 1) == 0)
  {
    v23 = v24;
  }

  if (a4)
  {
    v25 = v23;
  }

  else
  {
    v25 = v22;
  }

  v26 = v19;
  result = (*(*a1 + 24))(a1);
  v28 = result + (v16 & 1);
  if (*(a8 + 8))
  {
    v29 = 2;
  }

  else
  {
    v29 = *(a8 + 8) & 0x1E;
  }

  *(a8 + 8) = v29;
  if (v28 >= 1)
  {
    v30 = 0;
    v31 = (v16 << 31 >> 31);
    do
    {
      if ((v16 & (v30 == 0)) != 0 || (result = (*(*a1 + 16))(a1, v26, v31), result == 45))
      {
        v32 = u_strlen(v25);
        result = *v25;
        if (v32 != 1)
        {
          v35 = *v25;
          icu::UnicodeString::doAppend(a8, &v35, 0, 1);
          result = *(v25 + 1);
        }
      }

      if ((a6 & (result == 37)) != 0)
      {
        v33 = 8240;
      }

      else
      {
        v33 = result;
      }

      if (!a7 || v33 != 164)
      {
        v36 = v33;
        result = icu::UnicodeString::doAppend(a8, &v36, 0, 1);
      }

      ++v30;
      v31 = (v31 + 1);
    }

    while (v28 != v30);
  }

  return result;
}

uint64_t icu::number::impl::PatternStringUtils::resolveSignDisplay(int a1, unsigned int a2)
{
  if (a1 > 3)
  {
    if ((a1 - 5) < 2)
    {
      if (a2 < 4)
      {
        v2 = &unk_195490EA0;
        return v2[a2];
      }

      goto LABEL_20;
    }

    if ((a1 - 7) < 2)
    {
      if (a2 < 4)
      {
        v2 = &unk_195490EB0;
        return v2[a2];
      }

      goto LABEL_20;
    }

    if (a1 != 4)
    {
      goto LABEL_20;
    }

LABEL_16:
    if (a2 < 4)
    {
      v2 = &unk_195490E90;
      return v2[a2];
    }

    goto LABEL_20;
  }

  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_20;
      }

      goto LABEL_16;
    }

LABEL_11:
    if (a2 < 4)
    {
      v2 = &unk_195490E80;
      return v2[a2];
    }

LABEL_20:
    abort();
  }

  if (a1 != 2)
  {
    goto LABEL_11;
  }

  return 0;
}

void sub_1953733E0(void **a1)
{
  sub_195356ED0(a1);

  JUMPOUT(0x19A8B2600);
}

void sub_195373418(icu::StringSegment *a1, uint64_t a2, UErrorCode *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  memset(&v28[1], 0, 48);
  v29 = 0;
  v28[0] = &v28[1] + 5;
  LODWORD(v28[1]) = 40;
  v22 = U_ZERO_ERROR;
  icu::StringSegment::toTempUnicodeString(a1, &v25);
  v6 = 0;
  if ((v26 & 0x11) == 0)
  {
    if ((v26 & 2) != 0)
    {
      v6 = v27;
    }

    else
    {
      v6 = *&v27[14];
    }
  }

  v21 = v6;
  icu::StringSegment::length(a1);
  icu::UnicodeString::UnicodeString(v23, 0, &v21);
  icu::CharString::appendInvariantChars(v28, v23, &v22);
  icu::UnicodeString::~UnicodeString(v7, v23);
  v20 = v21;
  icu::UnicodeString::~UnicodeString(&v20, &v25);
  v8 = v22;
  if (v22 == U_INVARIANT_CONVERSION_ERROR)
  {
    v8 = U_NUMBER_SKELETON_SYNTAX_ERROR;
LABEL_8:
    *a3 = v8;
    goto LABEL_9;
  }

  if (v22 > U_ZERO_ERROR)
  {
    goto LABEL_8;
  }

  v24 = 0;
  memset(v23, 0, sizeof(v23));
  icu::number::impl::DecimalQuantity::DecimalQuantity(v23);
  v25 = 0;
  icu::number::impl::DecimalQuantity::setToDecNumber(v23, v28[0], v29, &v25);
  if (v25 > 0 || (icu::number::impl::DecimalQuantity::isNaN(v23) & 1) != 0 || icu::number::impl::DecimalQuantity::isInfinite(v23))
  {
    *a3 = U_NUMBER_SKELETON_SYNTAX_ERROR;
  }

  else
  {
    v10 = icu::number::impl::DecimalQuantity::adjustToZeroScale(v23);
    v11 = v29;
    if (v29 < 1)
    {
LABEL_21:
      v13 = v10;
    }

    else
    {
      v12 = v28[0];
      v13 = 1 - v29;
      while (1)
      {
        v14 = *v12++;
        if (v14 == 46)
        {
          break;
        }

        ++v13;
        if (!--v11)
        {
          goto LABEL_21;
        }
      }

      icu::number::impl::DecimalQuantity::adjustMagnitude(v23, v10 - v13);
    }

    v15 = icu::number::impl::DecimalQuantity::toLong(v23, 0);
    if (v15 == 5)
    {
      v16 = 7;
    }

    else
    {
      v16 = 5;
    }

    if (v15 == 1)
    {
      v16 = 6;
    }

    if (v13 <= 0)
    {
      v17 = -v13;
    }

    else
    {
      LOWORD(v17) = 0;
    }

    if (v15)
    {
      v18 = v16;
    }

    else
    {
      v18 = 10;
    }

    *a2 = v18;
    v19 = 65810;
    if (v15)
    {
      v19 = v15;
    }

    *(a2 + 8) = v19;
    *(a2 + 16) = v13;
    if (v15)
    {
      LOWORD(v19) = v17;
    }

    *(a2 + 18) = v19;
    *(a2 + 20) = 0;
    *(a2 + 24) = 0;
  }

  icu::number::impl::DecimalQuantity::~DecimalQuantity(v23);
LABEL_9:
  if (BYTE4(v28[1]))
  {
    free(v28[0]);
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t icu::number::Precision::incrementExact@<X0>(uint64_t this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (this)
  {
    if (this == 5)
    {
      v3 = 7;
    }

    else
    {
      v3 = 5;
    }

    if (this == 1)
    {
      v3 = 6;
    }

    *(a3 + 8) = this;
    *(a3 + 16) = a2;
    if (a2 <= 0)
    {
      v4 = -a2;
    }

    else
    {
      LOWORD(v4) = 0;
    }

    *(a3 + 18) = v4;
    *(a3 + 20) = 0;
  }

  else
  {
    *(a3 + 8) = 65810;
    v3 = 10;
  }

  *a3 = v3;
  *(a3 + 24) = 0;
  return this;
}

void icu::number::Precision::unlimited(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 8) = 0;
  *(a1 + 13) = 0;
  *(a1 + 24) = 0;
}

double icu::number::Precision::integer@<D0>(uint64_t a1@<X8>)
{
  *a1 = 2;
  result = NAN;
  *(a1 + 8) = 0xFFFFFFFF00000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return result;
}

uint64_t icu::number::Precision::constructFraction@<X0>(uint64_t this@<X0>, __int16 a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = 2;
  *(a3 + 8) = this;
  *(a3 + 10) = a2;
  *(a3 + 12) = -1;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  return this;
}

uint64_t icu::number::Precision::fixedFraction@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  if (this > 0x3E7)
  {
    *(a2 + 8) = 65810;
    v2 = 10;
  }

  else
  {
    *(a2 + 8) = this;
    *(a2 + 10) = this;
    *(a2 + 12) = -1;
    *(a2 + 16) = 0;
    v2 = 2;
  }

  *a2 = v2;
  *(a2 + 24) = 0;
  return this;
}

uint64_t icu::number::Precision::minFraction@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  if (this > 0x3E7)
  {
    *(a2 + 8) = 65810;
    v2 = 10;
  }

  else
  {
    *(a2 + 8) = this;
    *(a2 + 10) = -1;
    *(a2 + 14) = -1;
    *(a2 + 16) = 0;
    v2 = 2;
  }

  *a2 = v2;
  *(a2 + 24) = 0;
  return this;
}

uint64_t icu::number::Precision::maxFraction@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  if (this > 0x3E7)
  {
    *(a2 + 8) = 65810;
    v2 = 10;
  }

  else
  {
    *(a2 + 8) = 0;
    *(a2 + 10) = this;
    *(a2 + 12) = -1;
    *(a2 + 16) = 0;
    v2 = 2;
  }

  *a2 = v2;
  *(a2 + 24) = 0;
  return this;
}

uint64_t icu::number::Precision::minMaxFraction@<X0>(uint64_t this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (this > a2 || (this & 0x80000000) != 0 || a2 > 999)
  {
    *(a3 + 8) = 65810;
    v3 = 10;
  }

  else
  {
    *(a3 + 8) = this;
    *(a3 + 10) = a2;
    *(a3 + 12) = -1;
    *(a3 + 16) = 0;
    v3 = 2;
  }

  *a3 = v3;
  *(a3 + 24) = 0;
  return this;
}

uint64_t icu::number::Precision::fixedSignificantDigits@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  if ((this - 1) > 0x3E6)
  {
    *(a2 + 8) = 65810;
    v2 = 10;
  }

  else
  {
    *(a2 + 8) = -1;
    *(a2 + 12) = this;
    *(a2 + 14) = this;
    *(a2 + 16) = 0;
    v2 = 3;
  }

  *a2 = v2;
  *(a2 + 24) = 0;
  return this;
}

uint64_t icu::number::Precision::constructSignificant@<X0>(uint64_t this@<X0>, __int16 a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = 3;
  *(a3 + 8) = -1;
  *(a3 + 12) = this;
  *(a3 + 14) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  return this;
}

uint64_t icu::number::Precision::minSignificantDigits@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  if ((this - 1) > 0x3E6)
  {
    *(a2 + 8) = 65810;
    v2 = 10;
  }

  else
  {
    *(a2 + 8) = -1;
    *(a2 + 12) = this;
    *(a2 + 14) = -1;
    *(a2 + 16) = 0;
    v2 = 3;
  }

  *a2 = v2;
  *(a2 + 24) = 0;
  return this;
}

uint64_t icu::number::Precision::maxSignificantDigits@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  if ((this - 1) > 0x3E6)
  {
    *(a2 + 8) = 65810;
    v2 = 10;
  }

  else
  {
    *(a2 + 8) = -1;
    *(a2 + 12) = 1;
    *(a2 + 14) = this;
    *(a2 + 16) = 0;
    v2 = 3;
  }

  *a2 = v2;
  *(a2 + 24) = 0;
  return this;
}

uint64_t icu::number::Precision::minMaxSignificantDigits@<X0>(uint64_t this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (this > a2 || this < 1 || a2 > 999)
  {
    *(a3 + 8) = 65810;
    v3 = 10;
  }

  else
  {
    *(a3 + 8) = -1;
    *(a3 + 12) = this;
    *(a3 + 14) = a2;
    *(a3 + 16) = 0;
    v3 = 3;
  }

  *a3 = v3;
  *(a3 + 24) = 0;
  return this;
}

__n128 icu::number::Precision::trailingZeroDisplay@<Q0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  result = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = result;
  *(a3 + 24) = a2;
  return result;
}

void icu::number::Precision::increment(double a1@<D0>, uint64_t a2@<X8>)
{
  if (a1 <= 0.0)
  {
    *(a2 + 8) = 65810;
    v8 = 10;
  }

  else
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    icu::number::impl::DecimalQuantity::DecimalQuantity(v10);
    icu::number::impl::DecimalQuantity::setToDouble(v10, a1);
    icu::number::impl::DecimalQuantity::roundToInfinity(v10);
    v5 = icu::number::impl::DecimalQuantity::adjustToZeroScale(v10);
    v6 = icu::number::impl::DecimalQuantity::toLong(v10, 0);
    if (v6 == 5)
    {
      v7 = 7;
    }

    else
    {
      v7 = 5;
    }

    if (v6 == 1)
    {
      v8 = 6;
    }

    else
    {
      v8 = v7;
    }

    *(a2 + 8) = v6;
    *(a2 + 16) = v5;
    if (v5 <= 0)
    {
      v9 = -v5;
    }

    else
    {
      LOWORD(v9) = 0;
    }

    *(a2 + 18) = v9;
    *(a2 + 20) = 0;
    icu::number::impl::DecimalQuantity::~DecimalQuantity(v10);
  }

  *a2 = v8;
  *(a2 + 24) = 0;
}

uint64_t icu::number::Precision::constructIncrement@<X0>(uint64_t this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (this == 5)
  {
    v3 = 7;
  }

  else
  {
    v3 = 5;
  }

  if (this == 1)
  {
    v3 = 6;
  }

  *a3 = v3;
  *(a3 + 8) = this;
  *(a3 + 16) = a2;
  if (a2 <= 0)
  {
    v4 = -a2;
  }

  else
  {
    LOWORD(v4) = 0;
  }

  *(a3 + 18) = v4;
  *(a3 + 20) = 0;
  *(a3 + 24) = 0;
  return this;
}

uint64_t icu::number::Precision::currency@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 20) = 0;
  *(a2 + 12) = 0;
  *a2 = 8;
  *(a2 + 8) = result;
  return result;
}

uint64_t icu::number::Precision::constructCurrency@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 20) = 0;
  *(a2 + 12) = 0;
  *a2 = 8;
  *(a2 + 8) = result;
  return result;
}

uint64_t icu::number::FractionPrecision::withSignificantDigits@<X0>(uint64_t result@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  if (*result == 10)
  {
    v5 = *(result + 16);
    *a5 = *result;
    *(a5 + 16) = v5;
  }

  else if (a2 < 1 || a3 < a2 || a3 > 999)
  {
    *a5 = 10;
    *(a5 + 24) = 0;
    *(a5 + 8) = 65810;
  }

  else
  {
    v6 = *(result + 8);
    *(a5 + 21) = *(result + 21);
    *(a5 + 23) = *(result + 23);
    *a5 = 4;
    *(a5 + 8) = v6;
    *(a5 + 12) = a2;
    *(a5 + 14) = a3;
    *(a5 + 16) = a4;
    *(a5 + 20) = 0;
    *(a5 + 24) = 0;
  }

  return result;
}

uint64_t icu::number::Precision::constructFractionSignificant@<X0>(uint64_t result@<X0>, __int16 a2@<W1>, __int16 a3@<W2>, int a4@<W3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v6 = *(result + 8);
  *(a6 + 21) = *(result + 21);
  *(a6 + 23) = *(result + 23);
  *a6 = 4;
  *(a6 + 8) = v6;
  *(a6 + 12) = a2;
  *(a6 + 14) = a3;
  *(a6 + 16) = a4;
  *(a6 + 20) = a5;
  *(a6 + 24) = 0;
  return result;
}

uint64_t icu::number::FractionPrecision::withMinDigits@<X0>(uint64_t this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (*this == 10)
  {
    v3 = *(this + 16);
    *a3 = *this;
    *(a3 + 16) = v3;
  }

  else if ((a2 - 1) > 0x3E6)
  {
    *a3 = 10;
    *(a3 + 24) = 0;
    *(a3 + 8) = 65810;
  }

  else
  {
    v4 = *(this + 8);
    *(a3 + 21) = *(this + 21);
    *(a3 + 23) = *(this + 23);
    *a3 = 4;
    *(a3 + 8) = v4;
    *(a3 + 12) = 1;
    *(a3 + 14) = a2;
    *(a3 + 16) = 0;
    *(a3 + 20) = 1;
    *(a3 + 24) = 0;
  }

  return this;
}

uint64_t icu::number::FractionPrecision::withMaxDigits@<X0>(uint64_t this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (*this == 10)
  {
    v3 = *(this + 16);
    *a3 = *this;
    *(a3 + 16) = v3;
  }

  else if ((a2 - 1) > 0x3E6)
  {
    *a3 = 10;
    *(a3 + 24) = 0;
    *(a3 + 8) = 65810;
  }

  else
  {
    v4 = *(this + 8);
    *(a3 + 21) = *(this + 21);
    *(a3 + 23) = *(this + 23);
    *a3 = 4;
    *(a3 + 8) = v4;
    *(a3 + 12) = 1;
    *(a3 + 14) = a2;
    *(a3 + 16) = 1;
    *(a3 + 20) = 1;
    *(a3 + 24) = 0;
  }

  return this;
}

void icu::number::Precision::withCurrency(icu::number::Precision *this@<X0>, const UChar *a2@<X1>, UErrorCode *a3@<X2>, uint64_t a4@<X8>)
{
  if (*this == 10)
  {
    v6 = *(this + 1);
    *a4 = *this;
    *(a4 + 16) = v6;
  }

  else
  {
    ucurr_getRoundingIncrementForUsage(a2 + 10, *(this + 2), a3);
    v10 = v9;
    DefaultFractionDigitsForUsage = ucurr_getDefaultFractionDigitsForUsage(a2 + 10, *(this + 2), a3);
    *a4 = 0u;
    *(a4 + 16) = 0u;
    if (v10 == 0.0)
    {
      v12 = DefaultFractionDigitsForUsage >= 0x3E8;
      if (DefaultFractionDigitsForUsage >= 0x3E8)
      {
        v13 = 10;
      }

      else
      {
        v13 = 2;
      }

      *a4 = v13;
      v14 = DefaultFractionDigitsForUsage | (DefaultFractionDigitsForUsage << 16);
      if (v12)
      {
        v15 = 65810;
      }

      else
      {
        v15 = v14;
      }

      *(a4 + 8) = v15;
      *(a4 + 12) = -1;
      *(a4 + 16) = 0;
    }

    else
    {
      icu::number::Precision::increment(v10, a4);
    }

    *(a4 + 24) = *(this + 6);
  }
}

double icu::number::CurrencyPrecision::withCurrency@<D0>(icu::number::CurrencyPrecision *this@<X0>, const UChar *a2@<X1>, uint64_t a3@<X8>)
{
  v9 = U_ZERO_ERROR;
  v7 = 0u;
  v8 = 0u;
  icu::number::Precision::withCurrency(this, a2, &v9, &v7);
  v5 = v9;
  if (v9 < U_ILLEGAL_ARGUMENT_ERROR)
  {
    result = *&v7;
    v6 = v8;
    *a3 = v7;
    *(a3 + 16) = v6;
  }

  else
  {
    *a3 = 10;
    *(a3 + 24) = 0;
    *(a3 + 8) = v5;
  }

  return result;
}

uint64_t icu::number::IncrementPrecision::withMinFraction@<X0>(uint64_t this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  if (*this == 10)
  {
    v3 = *(this + 16);
    *a3 = *this;
    *(a3 + 16) = v3;
  }

  else if (a2 > 0x3E7)
  {
    *a3 = 10;
    *(a3 + 24) = 0;
    *(a3 + 8) = 65810;
  }

  else
  {
    *a3 = *this;
    *(a3 + 16) = *(this + 16);
    *(a3 + 20) = *(this + 20);
    *(a3 + 28) = *(this + 28);
    *(a3 + 18) = a2;
  }

  return this;
}

uint64_t icu::number::Precision::constructIncrementSignificant@<X0>(uint64_t this@<X0>, double a2@<D0>, __int16 a3@<W1>, uint64_t a4@<X8>)
{
  *a4 = 9;
  *(a4 + 8) = a2;
  *(a4 + 16) = this;
  *(a4 + 18) = a3;
  *(a4 + 20) = 0;
  *(a4 + 24) = 0;
  return this;
}

uint64_t sub_195373E54(uint64_t a1, icu::number::Precision *this, int a3, const UChar *a4, UErrorCode *a5)
{
  v6 = *(this + 1);
  *a1 = *this;
  *(a1 + 16) = v6;
  *(a1 + 32) = a3;
  *(a1 + 36) = 0;
  if (*this == 8)
  {
    icu::number::Precision::withCurrency(this, a4, a5, v8);
    *a1 = v8[0];
    *(a1 + 12) = *(v8 + 12);
  }

  return a1;
}

double sub_195373EC0@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 36) = 1;
  return result;
}

uint64_t sub_195373EE8(uint64_t a1, icu::number::impl::DecimalQuantity *this, uint64_t a3, int *a4)
{
  Magnitude = icu::number::impl::DecimalQuantity::getMagnitude(this);
  v9 = (*(*a3 + 16))(a3, Magnitude);
  icu::number::impl::DecimalQuantity::adjustMagnitude(this, v9);
  sub_195374000(a1, this, a4);
  if (!icu::number::impl::DecimalQuantity::isZeroish(this) && *a4 <= 0 && icu::number::impl::DecimalQuantity::getMagnitude(this) != v9 + Magnitude)
  {
    v10 = (*(*a3 + 16))(a3, (Magnitude + 1));
    if (v10 != v9)
    {
      v11 = v10;
      icu::number::impl::DecimalQuantity::adjustMagnitude(this, v10 - v9);
      sub_195374000(a1, this, a4);
      return v11;
    }
  }

  return v9;
}

void sub_195374000(uint64_t a1, icu::number::impl::DecimalQuantity *this, int *a3)
{
  if (*a3 > 0 || (*(a1 + 36) & 1) != 0)
  {
    return;
  }

  v6 = *a1;
  if (*a1 <= 4)
  {
    if (v6 > 1)
    {
      switch(v6)
      {
        case 2:
          v12 = *(a1 + 10);
          if (v12 == -1)
          {
            v13 = 0x80000000;
          }

          else
          {
            v13 = -v12;
          }

          icu::number::impl::DecimalQuantity::roundToMagnitude(this, v13, *(a1 + 32), a3);
          if (*(a1 + 8))
          {
            v14 = *(a1 + 8);
          }

          else
          {
            v14 = -2147483647;
          }

          break;
        case 3:
          v20 = sub_1953743E0(this, *(a1 + 14));
          icu::number::impl::DecimalQuantity::roundToMagnitude(this, v20, *(a1 + 32), a3);
          v21 = sub_195374438(this, *(a1 + 12));
          v11 = uprv_max(0, -v21);
          if (icu::number::impl::DecimalQuantity::isZeroish(this) && *(a1 + 12) >= 1)
          {
            icu::number::impl::DecimalQuantity::increaseMinIntegerTo(this, 1);
          }

          goto LABEL_65;
        case 4:
          v7 = *(a1 + 10);
          if (v7 == -1)
          {
            v8 = 0x80000000;
          }

          else
          {
            v8 = -v7;
          }

          v9 = sub_1953743E0(this, *(a1 + 14));
          if (*(a1 + 16))
          {
            v10 = uprv_max(v8, v9);
          }

          else
          {
            v10 = uprv_min(v8, v9);
          }

          v22 = v10;
          if (!icu::number::impl::DecimalQuantity::isZeroish(this))
          {
            Magnitude = icu::number::impl::DecimalQuantity::getMagnitude(this);
            icu::number::impl::DecimalQuantity::roundToMagnitude(this, v22, *(a1 + 32), a3);
            if (!icu::number::impl::DecimalQuantity::isZeroish(this) && icu::number::impl::DecimalQuantity::getMagnitude(this) != Magnitude && v8 == v9)
            {
              ++v9;
            }
          }

          if (*(a1 + 8))
          {
            v25 = -*(a1 + 8);
          }

          else
          {
            v25 = 0x7FFFFFFFLL;
          }

          v26 = sub_195374438(this, *(a1 + 12));
          if (*(a1 + 20) == 1)
          {
            v27 = uprv_min(v25, v26);
          }

          else
          {
            if (v9 <= v8)
            {
              v28 = v25;
            }

            else
            {
              v28 = v26;
            }

            if (v9 <= v8)
            {
              v29 = v26;
            }

            else
            {
              v29 = v25;
            }

            if (*(a1 + 16))
            {
              v27 = v28;
            }

            else
            {
              v27 = v29;
            }
          }

          v14 = -v27;
          break;
        default:
          goto LABEL_20;
      }

      v11 = uprv_max(0, v14);
      goto LABEL_65;
    }

    if (!v6)
    {
      goto LABEL_24;
    }

    if (v6 != 1)
    {
      goto LABEL_20;
    }

    icu::number::impl::DecimalQuantity::roundToInfinity(this);
LABEL_34:
    v11 = 0;
    goto LABEL_65;
  }

  if (v6 <= 7)
  {
    switch(v6)
    {
      case 5:
        icu::number::impl::DecimalQuantity::roundToIncrement(this, *(a1 + 8), *(a1 + 16), *(a1 + 32), a3);
        goto LABEL_40;
      case 6:
        icu::number::impl::DecimalQuantity::roundToMagnitude(this, *(a1 + 16), *(a1 + 32), a3);
        goto LABEL_40;
      case 7:
        icu::number::impl::DecimalQuantity::roundToNickel(this, *(a1 + 16), *(a1 + 32), a3);
LABEL_40:
        v11 = *(a1 + 18);
        goto LABEL_65;
    }

LABEL_20:
    abort();
  }

  if (v6 == 9)
  {
    v31 = 0;
    memset(v30, 0, sizeof(v30));
    icu::number::impl::DecimalQuantity::DecimalQuantity(v30);
    icu::number::impl::DecimalQuantity::setToDouble(v30, *(a1 + 8));
    icu::number::impl::DecimalQuantity::roundToInfinity(v30);
    v15 = icu::number::impl::DecimalQuantity::adjustToZeroScale(v30);
    v16 = icu::number::impl::DecimalQuantity::toLong(v30, 0);
    icu::number::impl::DecimalQuantity::roundToIncrement(this, v16, v15, *(a1 + 32), a3);
    icu::number::impl::DecimalQuantity::~DecimalQuantity(v30);
    v17 = sub_1953743E0(this, *(a1 + 18));
    icu::number::impl::DecimalQuantity::roundToMagnitude(this, v17, *(a1 + 32), a3);
    v18 = sub_195374438(this, *(a1 + 16));
    v19 = uprv_max(0, -v18);
    icu::number::impl::DecimalQuantity::setMinFraction(this, v19);
    if (icu::number::impl::DecimalQuantity::isZeroish(this) && *(a1 + 16) >= 1)
    {
      icu::number::impl::DecimalQuantity::increaseMinIntegerTo(this, 1);
    }

    goto LABEL_34;
  }

  if (v6 != 10)
  {
    goto LABEL_20;
  }

LABEL_24:
  v11 = 0;
  *a3 = 5;
LABEL_65:
  if (!*(a1 + 24) || (*(*this + 16))(this, 3) != 0.0)
  {
    icu::number::impl::DecimalQuantity::setMinFraction(this, v11);
  }
}

uint64_t sub_1953743E0(icu::number::impl::DecimalQuantity *a1, int a2)
{
  if (a2 == -1)
  {
    return 0x80000000;
  }

  if (icu::number::impl::DecimalQuantity::isZeroish(a1))
  {
    Magnitude = 0;
  }

  else
  {
    Magnitude = icu::number::impl::DecimalQuantity::getMagnitude(a1);
  }

  return (Magnitude - a2 + 1);
}

uint64_t sub_195374438(icu::number::impl::DecimalQuantity *a1, int a2)
{
  if (icu::number::impl::DecimalQuantity::isZeroish(a1))
  {
    Magnitude = 0;
  }

  else
  {
    Magnitude = icu::number::impl::DecimalQuantity::getMagnitude(a1);
  }

  return (Magnitude - a2 + 1);
}

uint64_t icu::number::impl::ScientificModifier::ScientificModifier(uint64_t this)
{
  *this = &unk_1F093FB18;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

{
  *this = &unk_1F093FB18;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

uint64_t icu::number::impl::ScientificModifier::set(uint64_t result, int a2, uint64_t a3)
{
  *(result + 8) = a2;
  *(result + 16) = a3;
  return result;
}

uint64_t icu::number::impl::ScientificModifier::apply(icu::number::impl::ScientificModifier *this, icu::FormattedStringBuilder *a2, int a3, int a4, UErrorCode *a5)
{
  v32 = *MEMORY[0x1E69E9840];
  icu::UnicodeString::UnicodeString(v31, (*(*(this + 2) + 24) + 712));
  v9 = icu::FormattedStringBuilder::insert(a2, a4, v31, 35, 0, a5) + a4;
  icu::UnicodeString::~UnicodeString(v10, v31);
  v11 = *(this + 2);
  v12 = *(v11 + 20);
  if ((*(this + 2) & 0x80000000) != 0)
  {
    if (v12 == 2)
    {
      goto LABEL_7;
    }

    v13 = (*(v11 + 24) + 392);
  }

  else
  {
    if (v12 != 1)
    {
      goto LABEL_7;
    }

    v13 = (*(v11 + 24) + 456);
  }

  icu::UnicodeString::UnicodeString(v31, v13);
  v9 += icu::FormattedStringBuilder::insert(a2, v9, v31, 36, 0, a5);
  icu::UnicodeString::~UnicodeString(v14, v31);
LABEL_7:
  v15 = *(this + 2);
  v16 = *(this + 2);
  if (*(v16 + 18) > 0 || v15 != 0)
  {
    v18 = 0;
    if (v15 >= 0)
    {
      v19 = *(this + 2);
    }

    else
    {
      v19 = -v15;
    }

    v20 = 1;
    do
    {
      v21 = v19 % 0xA;
      v22 = *(v16 + 24);
      v23 = *(v22 + 1928);
      if (v23 == -1)
      {
        v25 = v22 + 264;
        v26 = v22 + ((v21 + 17) << 6) + 8;
        if (v21)
        {
          v27 = v26;
        }

        else
        {
          v27 = v25;
        }

        inserted = icu::FormattedStringBuilder::insert(a2, v9 + v18, v27, 37, 0, a5);
      }

      else
      {
        inserted = icu::FormattedStringBuilder::insertCodePoint(a2, v9 + v18, v23 + v21, 37, a5);
      }

      v9 += inserted;
      v16 = *(this + 2);
      --v18;
      v28 = v20++ < *(v16 + 18);
      v28 = v28 || v19 > 9;
      v19 /= 0xAu;
    }

    while (v28);
  }

  v29 = *MEMORY[0x1E69E9840];
  return (v9 - a4);
}

_DWORD *icu::number::impl::ScientificModifier::strictEquals(icu::number::impl::ScientificModifier *this, char **lpsrc)
{
  v3 = **lpsrc;
  if (result)
  {
    return (*(this + 2) == result[2]);
  }

  return result;
}

void *sub_195374788(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = &unk_1F093FBA8;
  result[1] = &unk_1F093FBD8;
  result[2] = *(a2 + 4);
  result[3] = a3;
  result[4] = a4;
  return result;
}

double sub_1953747D4(uint64_t a1, icu::number::impl::DecimalQuantity *a2, uint64_t a3, int *a4)
{
  (*(**(a1 + 32) + 16))(*(a1 + 32));
  if (*a4 <= 0)
  {
    if (((*(*a2 + 32))(a2) & 1) != 0 || (*(*a2 + 24))(a2))
    {
      *(a3 + 208) = a3 + 256;
    }

    else
    {
      if (icu::number::impl::DecimalQuantity::isZeroish(a2))
      {
        if (*(a1 + 17) == 1 && sub_195373ED8((a3 + 104)))
        {
          v9 = *a4;
          sub_19537447C(a3 + 104, a2, *(a1 + 16));
        }

        else
        {
          sub_195374000(a3 + 104, a2, a4);
        }

        v10 = 0;
      }

      else
      {
        v10 = -sub_195373EE8(a3 + 104, a2, a1 + 8, a4);
      }

      *(a3 + 224) = v10;
      *(a3 + 232) = a1;
      *(a3 + 208) = a3 + 216;
      icu::number::impl::DecimalQuantity::adjustExponent(a2, v10);
      sub_195373EC0(&v12);
      result = *&v12;
      v11 = *v13;
      *(a3 + 104) = v12;
      *(a3 + 120) = v11;
      *(a3 + 133) = *&v13[13];
    }
  }

  return result;
}

uint64_t sub_19537494C(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  if ((*(a1 + 17) & 1) == 0)
  {
    if (v2 >= 2)
    {
      v2 = (a2 % v2 + v2) % v2 + 1;
    }

    else
    {
      v2 = 1;
    }
  }

  return (v2 + ~a2);
}

uint64_t sub_195374990(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if ((*(a1 + 9) & 1) == 0)
  {
    if (v2 >= 2)
    {
      v2 = (a2 % v2 + v2) % v2 + 1;
    }

    else
    {
      v2 = 1;
    }
  }

  return (v2 + ~a2);
}

void sub_1953749D8(icu::number::impl::Modifier *a1)
{
  icu::number::impl::Modifier::~Modifier(a1);

  JUMPOUT(0x19A8B2600);
}

void sub_195374A3C(uint64_t a1)
{
  nullsub_17(a1 + 8);

  JUMPOUT(0x19A8B2600);
}

void sub_195374A8C(uint64_t a1)
{
  nullsub_17(a1);

  JUMPOUT(0x19A8B2600);
}

void icu::number::SimpleNumber::forInt64(int *a1@<X1>, void *a2@<X8>)
{
  if (*a1 < 1)
  {
    operator new();
  }

  *a2 = 0;
  a2[1] = 0;
  *(a2 + 2) = 1;
}

uint64_t icu::number::SimpleNumber::SimpleNumber(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = a2;
  *(a1 + 8) = 1;
  if (*a3 <= 0)
  {
    if (a2)
    {
      if (icu::number::impl::DecimalQuantity::isNegative((a2 + 304)))
      {
        v4 = 2;
      }

      else
      {
        v4 = 1;
      }

      *(a1 + 8) = v4;
    }

    else
    {
      *a3 = 1;
    }
  }

  return a1;
}

{
  *a1 = a2;
  *(a1 + 8) = 1;
  if (*a3 <= 0)
  {
    if (a2)
    {
      if (icu::number::impl::DecimalQuantity::isNegative((a2 + 304)))
      {
        v4 = 2;
      }

      else
      {
        v4 = 1;
      }

      *(a1 + 8) = v4;
    }

    else
    {
      *a3 = 1;
    }
  }

  return a1;
}

uint64_t icu::number::SimpleNumber::cleanup(icu::number::SimpleNumber *this)
{
  result = *this;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *this = 0;
  return result;
}

BOOL icu::number::SimpleNumber::multiplyByPowerOfTen(_BOOL8 this, int a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    if (*this)
    {
      return icu::number::impl::DecimalQuantity::adjustMagnitude((*this + 304), a2);
    }

    else
    {
      *a3 = U_INVALID_STATE_ERROR;
    }
  }

  return this;
}

void icu::number::SimpleNumber::roundTo(void *a1, int a2, unsigned int a3, int *a4)
{
  if (*a4 <= 0)
  {
    if (*a1)
    {
      icu::number::impl::DecimalQuantity::roundToMagnitude(*a1 + 304, a2, a3, a4);
    }

    else
    {
      *a4 = 27;
    }
  }
}

void *icu::number::SimpleNumber::setMinimumIntegerDigits(void *this, int a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    v3 = this;
    if (*this)
    {
      icu::number::impl::DecimalQuantity::decreaseMinIntegerTo(*this + 304, a2);
      v5 = *v3 + 304;

      return icu::number::impl::DecimalQuantity::increaseMinIntegerTo(v5, a2);
    }

    else
    {
      *a3 = U_INVALID_STATE_ERROR;
    }
  }

  return this;
}

void *icu::number::SimpleNumber::setMinimumFractionDigits(void *this, int a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    if (*this)
    {
      return icu::number::impl::DecimalQuantity::setMinFraction(*this + 304, a2);
    }

    else
    {
      *a3 = U_INVALID_STATE_ERROR;
    }
  }

  return this;
}

void icu::number::SimpleNumber::setMaximumIntegerDigits(icu::number::SimpleNumber *this, int a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    if (*this)
    {
      icu::number::impl::DecimalQuantity::decreaseMinIntegerTo(*this + 304, a2);
      v5 = (*this + 304);

      icu::number::impl::DecimalQuantity::applyMaxInteger(v5, a2);
    }

    else
    {
      *a3 = U_INVALID_STATE_ERROR;
    }
  }
}

uint64_t icu::number::SimpleNumber::setSign(uint64_t result, int a2, int *a3)
{
  if (*a3 <= 0)
  {
    if (*result)
    {
      *(result + 8) = a2;
    }

    else
    {
      *a3 = 27;
    }
  }

  return result;
}

uint64_t icu::number::SimpleNumberFormatter::cleanup(icu::number::SimpleNumberFormatter *this)
{
  v3 = (this + 8);
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v4 = *(this + 2);
  if (v4)
  {
    icu::UnicodeString::~UnicodeString((v4 + 24));
    MEMORY[0x19A8B2600](v4, 0x10F2C4003C381A7);
  }

  result = *(this + 3);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  return result;
}

void icu::number::SimpleNumberFormatter::forLocaleAndGroupingStrategy(void *a1@<X8>)
{
  *a1 = 0;
  *a1 = 2;
  a1[2] = 0;
  a1[3] = 0;
  operator new();
}

void icu::number::SimpleNumberFormatter::initialize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  v6 = *MEMORY[0x1E69E9840];
  if (*a5 <= 0)
  {
    operator new();
  }

  v5 = *MEMORY[0x1E69E9840];
}

void icu::number::SimpleNumberFormatter::forLocaleAndSymbolsAndGroupingStrategy(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int *a4@<X3>, void *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  *a5 = 2;
  a5[2] = 0;
  a5[3] = 0;
  icu::number::SimpleNumberFormatter::initialize(a5, a1, a2, a3, a4);
}

uint64_t icu::number::SimpleNumberFormatter::format@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, UErrorCode *a3@<X2>, uint64_t a4@<X8>)
{
  result = icu::number::SimpleNumberFormatter::formatImpl(a1, *a2, *(a2 + 8), a3);
  v8 = *a3;
  if (*a3 <= 0)
  {
    v8 = U_ZERO_ERROR;
    v9 = *a2;
    *a2 = 0;
  }

  else
  {
    v9 = 0;
  }

  *a4 = &unk_1F093F640;
  *(a4 + 8) = v9;
  *(a4 + 16) = v8;
  return result;
}

uint64_t icu::number::SimpleNumberFormatter::formatImpl(uint64_t result, uint64_t a2, int a3, UErrorCode *a4)
{
  if (*a4 > 0)
  {
    return result;
  }

  if (!a2)
  {
    v10 = 1;
    goto LABEL_14;
  }

  v6 = *(result + 24);
  if (!v6 || (result = *(result + 16)) == 0)
  {
    v10 = 27;
LABEL_14:
    *a4 = v10;
    return result;
  }

  v7 = 2;
  if (!a3)
  {
    v7 = 3;
  }

  if (a3 == 2)
  {
    v7 = 0;
  }

  v8 = *(v6 + 8 * v7 + 8);
  v9 = sub_1953616DC(result, (a2 + 304), (a2 + 8), 0, a4);
  (*(*v8 + 16))(v8, a2 + 8, 0, v9, a4);

  return icu::FormattedStringBuilder::writeTerminator((a2 + 8), a4);
}

uint64_t sub_1953753F4(icu::number::Notation *a1)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_13;
      }

      return icu::number::Notation::compactLong(a1);
    }

    else
    {
      return icu::number::Notation::compactShort(a1);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        return icu::number::Notation::scientific(a1);
      case 3:
        return icu::number::Notation::engineering(a1);
      case 4:
        return icu::number::Notation::simple(a1);
      default:
LABEL_13:
        abort();
    }
  }
}

void sub_195375460(int a1@<W0>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 7:

      icu::MeasureUnit::getPermille(a2);
      break;
    case 6:

      icu::MeasureUnit::getPercent(a2);
      break;
    case 5:

      icu::MeasureUnit::MeasureUnit(a2);
      break;
    default:
      abort();
  }
}

double sub_1953754BC@<D0>(int a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 > 10)
  {
    if (a1 == 11)
    {
      v4 = 0;
    }

    else
    {
      if (a1 != 12)
      {
        goto LABEL_18;
      }

      v4 = 1;
    }

    icu::number::Precision::currency(v4, a2);
    return result;
  }

  if (a1 != 9)
  {
    if (a1 == 10)
    {

      icu::number::Precision::unlimited(a2);
      return result;
    }

LABEL_18:
    abort();
  }

  return icu::number::Precision::integer(a2);
}

uint64_t sub_19537553C(int a1)
{
  if ((a1 - 13) >= 0xB)
  {
    abort();
  }

  return dword_195490F34[a1 - 13];
}

uint64_t sub_195375568(int a1)
{
  if ((a1 - 31) >= 7)
  {
    return 7;
  }

  else
  {
    return (a1 - 31);
  }
}

uint64_t sub_19537557C(int a1)
{
  if ((a1 - 38) >= 9)
  {
    return 9;
  }

  else
  {
    return (a1 - 38);
  }
}

uint64_t sub_195375590(int a1, uint64_t a2)
{
  if (a1 > 4)
  {
    if (a1 <= 7)
    {
      if (a1 == 5)
      {
        return icu::UnicodeString::doAppend(a2, L"rounding-mode-half-down", 0, 0xFFFFFFFFLL);
      }

      if (a1 == 6)
      {
        return icu::UnicodeString::doAppend(a2, L"rounding-mode-half-up", 0, 0xFFFFFFFFLL);
      }

      return icu::UnicodeString::doAppend(a2, L"rounding-mode-unnecessary", 0, 0xFFFFFFFFLL);
    }

    switch(a1)
    {
      case 8:
        return icu::UnicodeString::doAppend(a2, "r", 0, 0xFFFFFFFFLL);
      case 9:
        return icu::UnicodeString::doAppend(a2, L"rounding-mode-half-ceiling", 0, 0xFFFFFFFFLL);
      case 10:
        return icu::UnicodeString::doAppend(a2, "r", 0, 0xFFFFFFFFLL);
    }

LABEL_24:
    abort();
  }

  if (a1 <= 1)
  {
    if (!a1)
    {
      return icu::UnicodeString::doAppend(a2, "r", 0, 0xFFFFFFFFLL);
    }

    if (a1 == 1)
    {
      return icu::UnicodeString::doAppend(a2, "r", 0, 0xFFFFFFFFLL);
    }

    goto LABEL_24;
  }

  if (a1 == 2)
  {
    return icu::UnicodeString::doAppend(a2, "r", 0, 0xFFFFFFFFLL);
  }

  if (a1 == 3)
  {
    return icu::UnicodeString::doAppend(a2, L"rounding-mode-up", 0, 0xFFFFFFFFLL);
  }

  return icu::UnicodeString::doAppend(a2, "r", 0, 0xFFFFFFFFLL);
}

uint64_t sub_1953757D8(int a1, uint64_t a2)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_13;
      }

      return icu::UnicodeString::doAppend(a2, L"group-min2", 0, 0xFFFFFFFFLL);
    }

    else
    {
      return icu::UnicodeString::doAppend(a2, L"group-off", 0, 0xFFFFFFFFLL);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        return icu::UnicodeString::doAppend(a2, "g", 0, 0xFFFFFFFFLL);
      case 3:
        return icu::UnicodeString::doAppend(a2, L"group-on-aligned", 0, 0xFFFFFFFFLL);
      case 4:
        return icu::UnicodeString::doAppend(a2, "g", 0, 0xFFFFFFFFLL);
      default:
LABEL_13:
        abort();
    }
  }
}

uint64_t sub_1953758F0(int a1, uint64_t a2)
{
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        return icu::UnicodeString::doAppend(a2, "u", 0, 0xFFFFFFFFLL);
      case 1:
        return icu::UnicodeString::doAppend(a2, "u", 0, 0xFFFFFFFFLL);
      case 2:
        return icu::UnicodeString::doAppend(a2, L"unit-width-full-name", 0, 0xFFFFFFFFLL);
    }

    goto LABEL_16;
  }

  if (a1 > 4)
  {
    if (a1 == 5)
    {
      return icu::UnicodeString::doAppend(a2, "u", 0, 0xFFFFFFFFLL);
    }

    if (a1 == 6)
    {
      return icu::UnicodeString::doAppend(a2, L"unit-width-hidden", 0, 0xFFFFFFFFLL);
    }

LABEL_16:
    abort();
  }

  if (a1 == 3)
  {
    return icu::UnicodeString::doAppend(a2, "u", 0, 0xFFFFFFFFLL);
  }

  else
  {
    return icu::UnicodeString::doAppend(a2, "u", 0, 0xFFFFFFFFLL);
  }
}

uint64_t sub_195375A70(int a1, uint64_t a2)
{
  if (a1 <= 3)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        return icu::UnicodeString::doAppend(a2, L"sign-never", 0, 0xFFFFFFFFLL);
      }

      else
      {
        return icu::UnicodeString::doAppend(a2, "s", 0, 0xFFFFFFFFLL);
      }
    }

    else if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_20;
      }

      return icu::UnicodeString::doAppend(a2, L"sign-always", 0, 0xFFFFFFFFLL);
    }

    else
    {
      return icu::UnicodeString::doAppend(a2, L"sign-auto", 0, 0xFFFFFFFFLL);
    }
  }

  else if (a1 <= 5)
  {
    if (a1 == 4)
    {
      return icu::UnicodeString::doAppend(a2, "s", 0, 0xFFFFFFFFLL);
    }

    else
    {
      return icu::UnicodeString::doAppend(a2, L"sign-except-zero", 0, 0xFFFFFFFFLL);
    }
  }

  else
  {
    switch(a1)
    {
      case 6:
        return icu::UnicodeString::doAppend(a2, "s", 0, 0xFFFFFFFFLL);
      case 7:
        return icu::UnicodeString::doAppend(a2, "s", 0, 0xFFFFFFFFLL);
      case 8:
        return icu::UnicodeString::doAppend(a2, "s", 0, 0xFFFFFFFFLL);
      default:
LABEL_20:
        abort();
    }
  }
}

uint64_t sub_195375C58(int a1, uint64_t a2)
{
  if (a1 == 1)
  {
    return icu::UnicodeString::doAppend(a2, "d", 0, 0xFFFFFFFFLL);
  }

  if (a1)
  {
    abort();
  }

  return icu::UnicodeString::doAppend(a2, L"decimal-auto", 0, 0xFFFFFFFFLL);
}

void icu::number::NumberFormatter::forSkeleton(UChar **this@<X0>, const icu::UnicodeString *a2@<X1>, UErrorCode *a3@<X2>, _OWORD *a4@<X8>)
{
  v24[33] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    *a2 = 0xFFFFFFFF00000000;
    *(a2 + 4) = 0;
    *(a2 + 20) = 0;
  }

  if (*a3 > 0)
  {
    goto LABEL_10;
  }

  if (atomic_load_explicit(&dword_1ED442FA0, memory_order_acquire) == 2 || !icu::umtx_initImplPreInit(&dword_1ED442FA0))
  {
    if (dword_1ED442FA4 >= 1)
    {
      *a3 = dword_1ED442FA4;
LABEL_10:
      a4[28] = 0u;
      a4[29] = 0u;
      a4[26] = 0u;
      a4[27] = 0u;
      a4[24] = 0u;
      a4[25] = 0u;
      a4[22] = 0u;
      a4[23] = 0u;
      a4[20] = 0u;
      a4[21] = 0u;
      a4[18] = 0u;
      a4[19] = 0u;
      a4[16] = 0u;
      a4[17] = 0u;
      a4[14] = 0u;
      a4[15] = 0u;
      a4[12] = 0u;
      a4[13] = 0u;
      a4[10] = 0u;
      a4[11] = 0u;
      a4[8] = 0u;
      a4[9] = 0u;
      a4[6] = 0u;
      a4[7] = 0u;
      a4[4] = 0u;
      a4[5] = 0u;
      a4[2] = 0u;
      a4[3] = 0u;
      *a4 = 0u;
      a4[1] = 0u;
      v9 = *MEMORY[0x1E69E9840];

      sub_19535F640(a4);
      return;
    }
  }

  else
  {
    sub_195376090(a3);
    dword_1ED442FA4 = *a3;
    icu::umtx_initImplPostInit(&dword_1ED442FA0);
  }

  if (*a3 >= 1)
  {
    goto LABEL_10;
  }

  v19 = 0;
  memset(v24, 0, 264);
  v23 = 0u;
  memset(v22, 0, sizeof(v22));
  v21 = 0u;
  sub_195376E88(this, &v19, a3, &v21);
  if (*a3 <= 0)
  {
    icu::number::NumberFormatter::with(v20);
    icu::number::NumberFormatterSettings<icu::number::UnlocalizedNumberFormatter>::macros();
  }

  if (a2)
  {
    v10 = v19;
    *(a2 + 1) = v19;
    v11 = uprv_max(0, v10 - 15);
    v12 = *(this + 4);
    v13 = v12;
    v14 = v12 >> 5;
    if (v13 >= 0)
    {
      v15 = v14;
    }

    else
    {
      v15 = *(this + 3);
    }

    v16 = uprv_min(v15, v10 + 15);
    icu::UnicodeString::doExtract(this, v11, v10 - v11, a2 + 8, 0);
    *(a2 + v10 - v11 + 4) = 0;
    v17 = a2 + 40;
    icu::UnicodeString::doExtract(this, v10, v16 - v10, v17, 0);
    *&v17[2 * (v16 - v10)] = 0;
    *a4 = 0u;
    a4[1] = 0u;
    a4[2] = 0u;
    a4[3] = 0u;
    a4[4] = 0u;
    a4[5] = 0u;
    a4[6] = 0u;
    a4[7] = 0u;
    a4[8] = 0u;
    a4[9] = 0u;
    a4[10] = 0u;
    a4[11] = 0u;
    a4[12] = 0u;
    a4[13] = 0u;
    a4[14] = 0u;
    a4[15] = 0u;
    a4[16] = 0u;
    a4[17] = 0u;
    a4[18] = 0u;
    a4[19] = 0u;
    a4[20] = 0u;
    a4[21] = 0u;
    a4[22] = 0u;
    a4[23] = 0u;
    a4[24] = 0u;
    a4[25] = 0u;
    a4[26] = 0u;
    a4[27] = 0u;
    a4[28] = 0u;
    a4[29] = 0u;
  }

  else
  {
    a4[28] = 0u;
    a4[29] = 0u;
    a4[26] = 0u;
    a4[27] = 0u;
    a4[24] = 0u;
    a4[25] = 0u;
    a4[22] = 0u;
    a4[23] = 0u;
    a4[20] = 0u;
    a4[21] = 0u;
    a4[18] = 0u;
    a4[19] = 0u;
    a4[16] = 0u;
    a4[17] = 0u;
    a4[14] = 0u;
    a4[15] = 0u;
    a4[12] = 0u;
    a4[13] = 0u;
    a4[10] = 0u;
    a4[11] = 0u;
    a4[8] = 0u;
    a4[9] = 0u;
    a4[6] = 0u;
    a4[7] = 0u;
    a4[4] = 0u;
    a4[5] = 0u;
    a4[2] = 0u;
    a4[3] = 0u;
    *a4 = 0u;
    a4[1] = 0u;
  }

  sub_19535F640(a4);
  icu::Locale::~Locale(&v24[5]);
  icu::number::impl::StringProp::~StringProp(v24);
  icu::number::impl::StringProp::~StringProp(&v23);
  icu::number::Scale::~Scale((&v22[9] + 8));
  icu::number::impl::SymbolsWrapper::~SymbolsWrapper((&v22[7] + 8));
  icu::MeasureUnit::~MeasureUnit((&v22[1] + 8));
  icu::MeasureUnit::~MeasureUnit(v22);
  v18 = *MEMORY[0x1E69E9840];
}

void sub_195376090(UErrorCode *a1)
{
  v86 = *MEMORY[0x1E69E9840];
  sub_195400588(1u, sub_19537A6A4);
  memset(v85, 0, sizeof(v85));
  icu::UCharsTrieBuilder::UCharsTrieBuilder(v85, a1);
  if (*a1 <= 0)
  {
    sub_1951D6EE0(&v80, "c");
    icu::UCharsTrieBuilder::add(v85, &v80, 0, a1);
    icu::UnicodeString::~UnicodeString(v2, &v80);
    sub_1951D6EE0(&v80, L"compact-long");
    icu::UCharsTrieBuilder::add(v85, &v80, 1u, a1);
    icu::UnicodeString::~UnicodeString(v3, &v80);
    sub_1951D6EE0(&v80, "s");
    icu::UCharsTrieBuilder::add(v85, &v80, 2u, a1);
    icu::UnicodeString::~UnicodeString(v4, &v80);
    sub_1951D6EE0(&v80, "e");
    icu::UCharsTrieBuilder::add(v85, &v80, 3u, a1);
    icu::UnicodeString::~UnicodeString(v5, &v80);
    sub_1951D6EE0(&v80, L"notation-simple");
    icu::UCharsTrieBuilder::add(v85, &v80, 4u, a1);
    icu::UnicodeString::~UnicodeString(v6, &v80);
    sub_1951D6EE0(&v80, L"base-unit");
    icu::UCharsTrieBuilder::add(v85, &v80, 5u, a1);
    icu::UnicodeString::~UnicodeString(v7, &v80);
    sub_1951D6EE0(&v80, L"percent");
    icu::UCharsTrieBuilder::add(v85, &v80, 6u, a1);
    icu::UnicodeString::~UnicodeString(v8, &v80);
    sub_1951D6EE0(&v80, L"permille");
    icu::UCharsTrieBuilder::add(v85, &v80, 7u, a1);
    icu::UnicodeString::~UnicodeString(v9, &v80);
    sub_1951D6EE0(&v80, L"precision-integer");
    icu::UCharsTrieBuilder::add(v85, &v80, 9u, a1);
    icu::UnicodeString::~UnicodeString(v10, &v80);
    sub_1951D6EE0(&v80, L"precision-unlimited");
    icu::UCharsTrieBuilder::add(v85, &v80, 0xAu, a1);
    icu::UnicodeString::~UnicodeString(v11, &v80);
    sub_1951D6EE0(&v80, "p");
    icu::UCharsTrieBuilder::add(v85, &v80, 0xBu, a1);
    icu::UnicodeString::~UnicodeString(v12, &v80);
    sub_1951D6EE0(&v80, "p");
    icu::UCharsTrieBuilder::add(v85, &v80, 0xCu, a1);
    icu::UnicodeString::~UnicodeString(v13, &v80);
    sub_1951D6EE0(&v80, "r");
    icu::UCharsTrieBuilder::add(v85, &v80, 0xDu, a1);
    icu::UnicodeString::~UnicodeString(v14, &v80);
    sub_1951D6EE0(&v80, "r");
    icu::UCharsTrieBuilder::add(v85, &v80, 0xEu, a1);
    icu::UnicodeString::~UnicodeString(v15, &v80);
    sub_1951D6EE0(&v80, "r");
    icu::UCharsTrieBuilder::add(v85, &v80, 0xFu, a1);
    icu::UnicodeString::~UnicodeString(v16, &v80);
    sub_1951D6EE0(&v80, L"rounding-mode-up");
    icu::UCharsTrieBuilder::add(v85, &v80, 0x10u, a1);
    icu::UnicodeString::~UnicodeString(v17, &v80);
    sub_1951D6EE0(&v80, "r");
    icu::UCharsTrieBuilder::add(v85, &v80, 0x11u, a1);
    icu::UnicodeString::~UnicodeString(v18, &v80);
    sub_1951D6EE0(&v80, "r");
    icu::UCharsTrieBuilder::add(v85, &v80, 0x12u, a1);
    icu::UnicodeString::~UnicodeString(v19, &v80);
    sub_1951D6EE0(&v80, L"rounding-mode-half-ceiling");
    icu::UCharsTrieBuilder::add(v85, &v80, 0x13u, a1);
    icu::UnicodeString::~UnicodeString(v20, &v80);
    sub_1951D6EE0(&v80, "r");
    icu::UCharsTrieBuilder::add(v85, &v80, 0x14u, a1);
    icu::UnicodeString::~UnicodeString(v21, &v80);
    sub_1951D6EE0(&v80, L"rounding-mode-half-down");
    icu::UCharsTrieBuilder::add(v85, &v80, 0x15u, a1);
    icu::UnicodeString::~UnicodeString(v22, &v80);
    sub_1951D6EE0(&v80, L"rounding-mode-half-up");
    icu::UCharsTrieBuilder::add(v85, &v80, 0x16u, a1);
    icu::UnicodeString::~UnicodeString(v23, &v80);
    sub_1951D6EE0(&v80, L"rounding-mode-unnecessary");
    icu::UCharsTrieBuilder::add(v85, &v80, 0x17u, a1);
    icu::UnicodeString::~UnicodeString(v24, &v80);
    sub_1951D6EE0(&v80, L"integer-width-trunc");
    icu::UCharsTrieBuilder::add(v85, &v80, 0x18u, a1);
    icu::UnicodeString::~UnicodeString(v25, &v80);
    sub_1951D6EE0(&v80, L"group-off");
    icu::UCharsTrieBuilder::add(v85, &v80, 0x19u, a1);
    icu::UnicodeString::~UnicodeString(v26, &v80);
    sub_1951D6EE0(&v80, L"group-min2");
    icu::UCharsTrieBuilder::add(v85, &v80, 0x1Au, a1);
    icu::UnicodeString::~UnicodeString(v27, &v80);
    sub_1951D6EE0(&v80, "g");
    icu::UCharsTrieBuilder::add(v85, &v80, 0x1Bu, a1);
    icu::UnicodeString::~UnicodeString(v28, &v80);
    sub_1951D6EE0(&v80, L"group-on-aligned");
    icu::UCharsTrieBuilder::add(v85, &v80, 0x1Cu, a1);
    icu::UnicodeString::~UnicodeString(v29, &v80);
    sub_1951D6EE0(&v80, "g");
    icu::UCharsTrieBuilder::add(v85, &v80, 0x1Du, a1);
    icu::UnicodeString::~UnicodeString(v30, &v80);
    sub_1951D6EE0(&v80, "l");
    icu::UCharsTrieBuilder::add(v85, &v80, 0x1Eu, a1);
    icu::UnicodeString::~UnicodeString(v31, &v80);
    sub_1951D6EE0(&v80, "u");
    icu::UCharsTrieBuilder::add(v85, &v80, 0x1Fu, a1);
    icu::UnicodeString::~UnicodeString(v32, &v80);
    sub_1951D6EE0(&v80, "u");
    icu::UCharsTrieBuilder::add(v85, &v80, 0x20u, a1);
    icu::UnicodeString::~UnicodeString(v33, &v80);
    sub_1951D6EE0(&v80, L"unit-width-full-name");
    icu::UCharsTrieBuilder::add(v85, &v80, 0x21u, a1);
    icu::UnicodeString::~UnicodeString(v34, &v80);
    sub_1951D6EE0(&v80, "u");
    icu::UCharsTrieBuilder::add(v85, &v80, 0x22u, a1);
    icu::UnicodeString::~UnicodeString(v35, &v80);
    sub_1951D6EE0(&v80, "u");
    icu::UCharsTrieBuilder::add(v85, &v80, 0x23u, a1);
    icu::UnicodeString::~UnicodeString(v36, &v80);
    sub_1951D6EE0(&v80, "u");
    icu::UCharsTrieBuilder::add(v85, &v80, 0x24u, a1);
    icu::UnicodeString::~UnicodeString(v37, &v80);
    sub_1951D6EE0(&v80, L"unit-width-hidden");
    icu::UCharsTrieBuilder::add(v85, &v80, 0x25u, a1);
    icu::UnicodeString::~UnicodeString(v38, &v80);
    sub_1951D6EE0(&v80, L"sign-auto");
    icu::UCharsTrieBuilder::add(v85, &v80, 0x26u, a1);
    icu::UnicodeString::~UnicodeString(v39, &v80);
    sub_1951D6EE0(&v80, L"sign-always");
    icu::UCharsTrieBuilder::add(v85, &v80, 0x27u, a1);
    icu::UnicodeString::~UnicodeString(v40, &v80);
    sub_1951D6EE0(&v80, L"sign-never");
    icu::UCharsTrieBuilder::add(v85, &v80, 0x28u, a1);
    icu::UnicodeString::~UnicodeString(v41, &v80);
    sub_1951D6EE0(&v80, "s");
    icu::UCharsTrieBuilder::add(v85, &v80, 0x29u, a1);
    icu::UnicodeString::~UnicodeString(v42, &v80);
    sub_1951D6EE0(&v80, "s");
    icu::UCharsTrieBuilder::add(v85, &v80, 0x2Au, a1);
    icu::UnicodeString::~UnicodeString(v43, &v80);
    sub_1951D6EE0(&v80, L"sign-except-zero");
    icu::UCharsTrieBuilder::add(v85, &v80, 0x2Bu, a1);
    icu::UnicodeString::~UnicodeString(v44, &v80);
    sub_1951D6EE0(&v80, "s");
    icu::UCharsTrieBuilder::add(v85, &v80, 0x2Cu, a1);
    icu::UnicodeString::~UnicodeString(v45, &v80);
    sub_1951D6EE0(&v80, "s");
    icu::UCharsTrieBuilder::add(v85, &v80, 0x2Du, a1);
    icu::UnicodeString::~UnicodeString(v46, &v80);
    sub_1951D6EE0(&v80, "s");
    icu::UCharsTrieBuilder::add(v85, &v80, 0x2Eu, a1);
    icu::UnicodeString::~UnicodeString(v47, &v80);
    sub_1951D6EE0(&v80, L"decimal-auto");
    icu::UCharsTrieBuilder::add(v85, &v80, 0x2Fu, a1);
    icu::UnicodeString::~UnicodeString(v48, &v80);
    sub_1951D6EE0(&v80, "d");
    icu::UCharsTrieBuilder::add(v85, &v80, 0x30u, a1);
    icu::UnicodeString::~UnicodeString(v49, &v80);
    if (*a1 <= 0)
    {
      sub_1951D6EE0(&v80, L"precision-increment");
      icu::UCharsTrieBuilder::add(v85, &v80, 0x31u, a1);
      icu::UnicodeString::~UnicodeString(v50, &v80);
      sub_1951D6EE0(&v80, L"measure-unit");
      icu::UCharsTrieBuilder::add(v85, &v80, 0x32u, a1);
      icu::UnicodeString::~UnicodeString(v51, &v80);
      sub_1951D6EE0(&v80, "p");
      icu::UCharsTrieBuilder::add(v85, &v80, 0x33u, a1);
      icu::UnicodeString::~UnicodeString(v52, &v80);
      sub_1951D6EE0(&v80, L"unit");
      icu::UCharsTrieBuilder::add(v85, &v80, 0x34u, a1);
      icu::UnicodeString::~UnicodeString(v53, &v80);
      sub_1951D6EE0(&v80, "u");
      icu::UCharsTrieBuilder::add(v85, &v80, 0x35u, a1);
      icu::UnicodeString::~UnicodeString(v54, &v80);
      sub_1951D6EE0(&v80, L"currency");
      icu::UCharsTrieBuilder::add(v85, &v80, 0x36u, a1);
      icu::UnicodeString::~UnicodeString(v55, &v80);
      sub_1951D6EE0(&v80, "i");
      icu::UCharsTrieBuilder::add(v85, &v80, 0x37u, a1);
      icu::UnicodeString::~UnicodeString(v56, &v80);
      sub_1951D6EE0(&v80, "n");
      icu::UCharsTrieBuilder::add(v85, &v80, 0x38u, a1);
      icu::UnicodeString::~UnicodeString(v57, &v80);
      sub_1951D6EE0(&v80, L"scale");
      icu::UCharsTrieBuilder::add(v85, &v80, 0x39u, a1);
      icu::UnicodeString::~UnicodeString(v58, &v80);
      if (*a1 <= 0)
      {
        sub_1951D6EE0(&v80, L"K");
        icu::UCharsTrieBuilder::add(v85, &v80, 0, a1);
        icu::UnicodeString::~UnicodeString(v59, &v80);
        sub_1951D6EE0(&v80, L"KK");
        icu::UCharsTrieBuilder::add(v85, &v80, 1u, a1);
        icu::UnicodeString::~UnicodeString(v60, &v80);
        sub_1951D6EE0(&v80, "%");
        icu::UCharsTrieBuilder::add(v85, &v80, 6u, a1);
        icu::UnicodeString::~UnicodeString(v61, &v80);
        sub_1951D6EE0(&v80, "%");
        icu::UCharsTrieBuilder::add(v85, &v80, 8u, a1);
        icu::UnicodeString::~UnicodeString(v62, &v80);
        sub_1951D6EE0(&v80, ",");
        icu::UCharsTrieBuilder::add(v85, &v80, 0x19u, a1);
        icu::UnicodeString::~UnicodeString(v63, &v80);
        sub_1951D6EE0(&v80, L",?");
        icu::UCharsTrieBuilder::add(v85, &v80, 0x1Au, a1);
        icu::UnicodeString::~UnicodeString(v64, &v80);
        sub_1951D6EE0(&v80, ",");
        icu::UCharsTrieBuilder::add(v85, &v80, 0x1Cu, a1);
        icu::UnicodeString::~UnicodeString(v65, &v80);
        sub_1951D6EE0(&v80, L"+!");
        icu::UCharsTrieBuilder::add(v85, &v80, 0x27u, a1);
        icu::UnicodeString::~UnicodeString(v66, &v80);
        sub_1951D6EE0(&v80, "+");
        icu::UCharsTrieBuilder::add(v85, &v80, 0x28u, a1);
        icu::UnicodeString::~UnicodeString(v67, &v80);
        sub_1951D6EE0(&v80, L"()");
        icu::UCharsTrieBuilder::add(v85, &v80, 0x29u, a1);
        icu::UnicodeString::~UnicodeString(v68, &v80);
        sub_1951D6EE0(&v80, "(");
        icu::UCharsTrieBuilder::add(v85, &v80, 0x2Au, a1);
        icu::UnicodeString::~UnicodeString(v69, &v80);
        sub_1951D6EE0(&v80, "+");
        icu::UCharsTrieBuilder::add(v85, &v80, 0x2Bu, a1);
        icu::UnicodeString::~UnicodeString(v70, &v80);
        sub_1951D6EE0(&v80, L"()?");
        icu::UCharsTrieBuilder::add(v85, &v80, 0x2Cu, a1);
        icu::UnicodeString::~UnicodeString(v71, &v80);
        sub_1951D6EE0(&v80, L"+-");
        icu::UCharsTrieBuilder::add(v85, &v80, 0x2Du, a1);
        icu::UnicodeString::~UnicodeString(v72, &v80);
        sub_1951D6EE0(&v80, "(");
        icu::UCharsTrieBuilder::add(v85, &v80, 0x2Eu, a1);
        icu::UnicodeString::~UnicodeString(v73, &v80);
        if (*a1 <= 0)
        {
          v81 = 0u;
          v84 = 0;
          v83 = 0u;
          v82 = 0u;
          v80 = &unk_1F0935D00;
          LOWORD(v81) = 2;
          icu::UCharsTrieBuilder::buildUnicodeString(v85, 0, &v80, a1);
          v74 = *a1;
          if (v74 <= 0)
          {
            v75 = v81 >> 5;
            if ((v81 & 0x8000u) != 0)
            {
              v75 = DWORD1(v81);
            }

            v76 = 2 * v75;
            v77 = malloc_type_malloc(v76, 0x1000040BDFB0063uLL);
            qword_1ED442F98 = v77;
            if ((v81 & 0x11) != 0)
            {
              v78 = 0;
            }

            else if ((v81 & 2) != 0)
            {
              v78 = &v81 + 2;
            }

            else
            {
              v78 = v82;
            }

            memcpy(v77, v78, v76);
          }

          icu::UnicodeString::~UnicodeString(v74, &v80);
        }
      }
    }
  }

  icu::UCharsTrieBuilder::~UCharsTrieBuilder(v85);
  v79 = *MEMORY[0x1E69E9840];
}

void *sub_195376E88@<X0>(UChar **a1@<X0>, _DWORD *a2@<X1>, UErrorCode *a3@<X2>, uint64_t a4@<X8>)
{
  v27 = *MEMORY[0x1E69E9840];
  memset(v26, 0, sizeof(v26));
  icu::UnicodeString::UnicodeString(v26, a1);
  LOWORD(v20) = 32;
  icu::UnicodeString::doAppend(v26, &v20, 0, 1);
  *(v25 + 6) = 0;
  v25[0] = 0;
  *a4 = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 128) = 0u;
  *(a4 + 144) = 0u;
  *(a4 + 160) = 0u;
  *(a4 + 176) = 0u;
  *(a4 + 192) = 0u;
  *(a4 + 208) = 0u;
  *(a4 + 224) = 0u;
  *(a4 + 240) = 0u;
  *(a4 + 256) = 0u;
  *(a4 + 272) = 0u;
  *(a4 + 288) = 0u;
  *(a4 + 304) = 0u;
  *(a4 + 320) = 0u;
  *(a4 + 336) = 0u;
  *(a4 + 352) = 0u;
  *(a4 + 368) = 0u;
  *(a4 + 384) = 0u;
  *(a4 + 400) = 0u;
  *(a4 + 416) = 0u;
  *(a4 + 432) = 0u;
  *(a4 + 448) = 0u;
  *(a4 + 464) = 0;
  *(a4 + 16) = 0u;
  *(a4 + 4) = 2;
  icu::MeasureUnit::MeasureUnit(a4 + 16);
  icu::MeasureUnit::MeasureUnit(a4 + 40);
  *(a4 + 64) = 0;
  *(a4 + 88) = 0;
  *(a4 + 96) = 4;
  *(a4 + 100) = -3;
  *(a4 + 112) = -2;
  *(a4 + 132) = 0;
  *(a4 + 124) = -1;
  *(a4 + 136) = 0;
  *(a4 + 144) = 0;
  *(a4 + 152) = 0x900000007;
  *(a4 + 160) = 0;
  *(a4 + 164) = 2;
  *(a4 + 176) = 0;
  *(a4 + 184) = 0;
  *(a4 + 192) = 0;
  *(a4 + 200) = 0;
  *(a4 + 204) = 0;
  *(a4 + 208) = 0;
  *(a4 + 216) = 0;
  *(a4 + 228) = 0;
  *(a4 + 220) = 0;
  *(a4 + 236) = 0x300000000;
  *(a4 + 244) = 0;
  icu::Locale::Locale((a4 + 248));
  memset(v24, 0, sizeof(v24));
  icu::StringSegment::StringSegment(v24, v26, 0);
  v20 = 0;
  v21 = qword_1ED442F98;
  v22 = qword_1ED442F98;
  v23 = 0xFFFFFFFFLL;
  v19 = qword_1ED442F98;
  if (icu::StringSegment::length(&v19, v24) < 1)
  {
    goto LABEL_34;
  }

  v7 = 0;
  v8 = 0;
  while (1)
  {
    v9 = icu::StringSegment::codePointAt(v24, v8);
    v10 = v9;
    isWhiteSpace = icu::PatternProps::isWhiteSpace(v9);
    if (v10 != 47 && !isWhiteSpace)
    {
      if (v10 < 0x10000)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      v8 += v14;
      if (!v7)
      {
        icu::UCharsTrie::nextForCodePoint(&v20, v10);
      }

      goto LABEL_30;
    }

    v13 = isWhiteSpace;
    if (v8)
    {
      icu::StringSegment::setLength(v24, v8);
      if (v7)
      {
        v7 = sub_195377C88(v7, v24, a4, a3);
      }

      else
      {
        v7 = sub_195377628(v24, &v20, v25, a4, a3);
        v22 = v21;
        LODWORD(v23) = -1;
      }

      icu::StringSegment::resetLength(v24);
      if (*a3 > 0)
      {
        goto LABEL_33;
      }

      icu::StringSegment::adjustOffset(v24, v8);
    }

    else if (v7)
    {
      break;
    }

    if (v10 == 47 && !v7)
    {
      break;
    }

    if (v13 && v7)
    {
      if ((v7 - 4) < 9)
      {
        break;
      }

      v7 = 0;
    }

    if (v10 < 0x10000)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }

    icu::StringSegment::adjustOffset(v24, v15);
    v8 = 0;
LABEL_30:
    if (v8 >= icu::StringSegment::length(v14, v24))
    {
      goto LABEL_34;
    }
  }

  *a3 = U_NUMBER_SKELETON_SYNTAX_ERROR;
LABEL_33:
  *a2 = icu::StringSegment::getOffset(v24);
LABEL_34:
  icu::UCharsTrie::~UCharsTrie(&v20);
  result = icu::UnicodeString::~UnicodeString(v16, v26);
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1953771B4@<X0>(uint64_t a1@<X0>, UErrorCode *a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2 <= 0)
  {
    if (atomic_load_explicit(&dword_1ED442FA0, memory_order_acquire) == 2 || !icu::umtx_initImplPreInit(&dword_1ED442FA0))
    {
      if (dword_1ED442FA4 >= 1)
      {
        *a2 = dword_1ED442FA4;
      }
    }

    else
    {
      sub_195376090(a2);
      dword_1ED442FA4 = *a2;
      icu::umtx_initImplPostInit(&dword_1ED442FA0);
    }
  }

  *(a3 + 8) = 0u;
  *(a3 + 56) = 0;
  *(a3 + 40) = 0u;
  *(a3 + 24) = 0u;
  *a3 = &unk_1F0935D00;
  *(a3 + 8) = 2;

  return sub_19537729C(a1, a3, a2);
}

uint64_t sub_19537729C(uint64_t result, uint64_t a2, int *a3)
{
  if (*a3 <= 0)
  {
    v15 = v3;
    v16 = v4;
    v7 = result;
    result = sub_1953795D0(result, a2, a3);
    if (result)
    {
      v14 = 32;
      result = icu::UnicodeString::doAppend(a2, &v14, 0, 1);
    }

    if (*a3 <= 0)
    {
      result = sub_195379764(v7, a2, a3);
      if (result)
      {
        v14 = 32;
        result = icu::UnicodeString::doAppend(a2, &v14, 0, 1);
      }

      if (*a3 <= 0)
      {
        result = sub_195379A40(v7, a2);
        if (result)
        {
          v14 = 32;
          result = icu::UnicodeString::doAppend(a2, &v14, 0, 1);
        }

        if (*a3 <= 0)
        {
          result = sub_195379B1C(v7, a2);
          if (result)
          {
            v14 = 32;
            result = icu::UnicodeString::doAppend(a2, &v14, 0, 1);
          }

          if (*a3 <= 0)
          {
            v8 = *(v7 + 96);
            if (v8 == 4 || (sub_195375590(v8, a2), v14 = 32, result = icu::UnicodeString::doAppend(a2, &v14, 0, 1), *a3 <= 0))
            {
              result = sub_195379D58(v7, a2, a3);
              if (result)
              {
                v14 = 32;
                result = icu::UnicodeString::doAppend(a2, &v14, 0, 1);
              }

              if (*a3 <= 0)
              {
                result = sub_195379DB0(v7, a2);
                if (result)
                {
                  v14 = 32;
                  result = icu::UnicodeString::doAppend(a2, &v14, 0, 1);
                }

                if (*a3 <= 0)
                {
                  result = sub_195379E9C(v7, a2, a3);
                  if (result)
                  {
                    v14 = 32;
                    result = icu::UnicodeString::doAppend(a2, &v14, 0, 1);
                  }

                  if (*a3 <= 0)
                  {
                    v9 = *(v7 + 152);
                    if (v9 == 1 || v9 == 7 || (sub_1953758F0(v9, a2), v14 = 32, result = icu::UnicodeString::doAppend(a2, &v14, 0, 1), *a3 <= 0))
                    {
                      v10 = *(v7 + 156);
                      if (!v10 || v10 == 9 || (sub_195375A70(v10, a2), v14 = 32, result = icu::UnicodeString::doAppend(a2, &v14, 0, 1), *a3 <= 0))
                      {
                        v11 = *(v7 + 164);
                        if ((v11 | 2) == 2 || (sub_195375C58(v11, a2), v14 = 32, result = icu::UnicodeString::doAppend(a2, &v14, 0, 1), *a3 <= 0))
                        {
                          result = sub_195379F78(v7, a2, a3);
                          if (result)
                          {
                            v14 = 32;
                            result = icu::UnicodeString::doAppend(a2, &v14, 0, 1);
                          }

                          if (*a3 <= 0)
                          {
                            if (*(v7 + 112) != -2 || *(v7 + 216) >= 1 || *(v7 + 224) || *(v7 + 232))
                            {
                              *a3 = 16;
                              return result;
                            }

                            if (*(a2 + 8) < 0)
                            {
                              v13 = *(a2 + 12);
                              if (v13 > 0)
                              {
                                return sub_19527D3AC(a2, v13 - 1);
                              }
                            }

                            else
                            {
                              v12 = *(a2 + 8);
                              if (v12 >= 0x20)
                              {
                                v13 = v12 >> 5;
                                return sub_19527D3AC(a2, v13 - 1);
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_195377628(icu::StringSegment *a1, icu::UCharsTrie *a2, _BYTE *a3, uint64_t a4, UErrorCode *a5)
{
  v10 = icu::StringSegment::charAt(a1, 0);
  if (v10 <= 63)
  {
    if (v10 == 46)
    {
      if (a3[4] != 1)
      {
        a3[4] = 1;
        sub_195377E8C(a1, a4, a5);
        return 2;
      }

      goto LABEL_18;
    }

    if (v10 == 48)
    {
      if (a3[8] != 1)
      {
        a3[8] = 1;
        sub_1953782F8(a1, a4, a5);
        return 0;
      }

      goto LABEL_18;
    }

    goto LABEL_11;
  }

  if (v10 != 64)
  {
    if (v10 == 69)
    {
      if (*a3 != 1)
      {
        *a3 = 1;
        sub_195378160(a1, a4, a5);
        return 0;
      }

      goto LABEL_18;
    }

LABEL_11:
    if (icu::UCharsTrie::current(a2) - 4 > 0xFFFFFFFD)
    {
      v13 = *(a2 + 2);
      v14 = v13 + 1;
      v15 = *v13;
      if (*v13 < 0)
      {
        v17 = (v15 & 0x7FFF);
        if (v17 >= 0x4000)
        {
          if (v17 == 0x7FFF)
          {
            v18 = v13[1] << 16;
            v14 = v13 + 2;
          }

          else
          {
            v18 = (v17 << 16) - 0x40000000;
          }

          v17 = (v18 | *v14);
        }
      }

      else
      {
        v16 = v15 >> 6;
        if (v16 > 0x100)
        {
          if (v16 > 0x1FE)
          {
            v17 = (v13[2] | (v13[1] << 16));
          }

          else
          {
            v17 = ((*v14 | ((v16 & 0x1FF) << 16)) - 16842752);
          }
        }

        else
        {
          v17 = (v16 - 1);
        }
      }

      switch(v17)
      {
        case 0:
        case 1:
        case 2:
        case 3:
        case 4:
          if (*a3 == 1)
          {
            goto LABEL_18;
          }

          *a3 = 1;
          *(a4 + 4) = sub_1953753F4(v17);
          *(a4 + 12) = v24;
          return (v17 & 0xFFFFFFFE) == 2;
        case 5:
        case 6:
        case 7:
          if (a3[1] == 1)
          {
            goto LABEL_18;
          }

          a3[1] = 1;
          sub_195375460(v17, v30);
          goto LABEL_46;
        case 8:
          if (a3[13] == 1)
          {
            goto LABEL_18;
          }

          a3[13] = 1;
          if (a3[1] == 1)
          {
            goto LABEL_18;
          }

          a3[1] = 1;
          icu::number::Scale::powerOfTen(2, v30);
          icu::number::Scale::operator=(a4 + 168, v30);
          icu::number::Scale::~Scale(v30);
          icu::MeasureUnit::getPercent(v30);
LABEL_46:
          icu::MeasureUnit::operator=(a4 + 16, v30);
          icu::MeasureUnit::~MeasureUnit(v30);
          return 0;
        case 9:
        case 10:
        case 11:
        case 12:
          if (a3[4] == 1)
          {
            goto LABEL_18;
          }

          a3[4] = 1;
          sub_1953754BC(v17, v30);
          *(a4 + 64) = *v30;
          *(a4 + 76) = *&v30[12];
          if (v17 == 9)
          {
            return 2;
          }

          else
          {
            return 3;
          }

        case 13:
        case 14:
        case 15:
        case 16:
        case 17:
        case 18:
        case 19:
        case 20:
        case 21:
        case 22:
        case 23:
          if (a3[5] == 1)
          {
            goto LABEL_18;
          }

          a3[5] = 1;
          v19 = sub_19537553C(v17);
          result = 0;
          *(a4 + 96) = v19;
          return result;
        case 24:
          if (a3[8] == 1)
          {
            goto LABEL_18;
          }

          a3[8] = 1;
          *v30 = icu::number::IntegerWidth::zeroFillTo(0);
          v30[8] = v26;
          v27 = icu::number::IntegerWidth::truncateAt(v30, 0);
          result = 0;
          *(a4 + 124) = v27;
          *(a4 + 132) = v28;
          return result;
        case 25:
        case 26:
        case 27:
        case 28:
        case 29:
          if (a3[6] == 1)
          {
            goto LABEL_18;
          }

          a3[6] = 1;
          v22 = icu::number::impl::Grouper::forStrategy(v17 - 25);
          result = 0;
          *(a4 + 100) = v22;
          *(a4 + 108) = v23;
          return result;
        case 30:
          if (a3[9] == 1)
          {
            goto LABEL_18;
          }

          a3[9] = 1;
          InstanceByName = icu::NumberingSystem::createInstanceByName("latn", a5, v12);
          icu::number::impl::SymbolsWrapper::setTo((a4 + 136), InstanceByName);
          return 0;
        case 31:
        case 32:
        case 33:
        case 34:
        case 35:
        case 36:
        case 37:
          if (a3[10] == 1)
          {
            goto LABEL_18;
          }

          a3[10] = 1;
          v21 = sub_195375568(v17);
          result = 0;
          *(a4 + 152) = v21;
          return result;
        case 38:
        case 39:
        case 40:
        case 41:
        case 42:
        case 43:
        case 44:
        case 45:
        case 46:
          if (a3[11] == 1)
          {
            goto LABEL_18;
          }

          a3[11] = 1;
          v20 = sub_19537557C(v17);
          result = 0;
          *(a4 + 156) = v20;
          return result;
        case 47:
        case 48:
          if (a3[12] == 1)
          {
            goto LABEL_18;
          }

          result = 0;
          a3[12] = 1;
          if (v17 == 48)
          {
            v25 = 1;
          }

          else
          {
            v25 = 2;
          }

          if (v17 == 47)
          {
            v25 = 0;
          }

          *(a4 + 164) = v25;
          return result;
        case 49:
          if (a3[4] == 1)
          {
            goto LABEL_18;
          }

          a3[4] = 1;
          return 4;
        case 50:
          if (a3[1] == 1)
          {
            goto LABEL_18;
          }

          a3[1] = 1;
          return 5;
        case 51:
          if (a3[2] == 1)
          {
            goto LABEL_18;
          }

          a3[2] = 1;
          return 6;
        case 52:
          if (a3[1] == 1)
          {
            goto LABEL_18;
          }

          a3[1] = 1;
          if (a3[2] == 1)
          {
            goto LABEL_18;
          }

          a3[2] = 1;
          return 7;
        case 53:
          if (a3[3] == 1)
          {
            goto LABEL_18;
          }

          a3[3] = 1;
          return 8;
        case 54:
          if (a3[1] == 1)
          {
            goto LABEL_18;
          }

          a3[1] = 1;
          if (a3[2] == 1)
          {
            goto LABEL_18;
          }

          a3[2] = 1;
          return 9;
        case 55:
          if (a3[8] == 1)
          {
            goto LABEL_18;
          }

          a3[8] = 1;
          return 10;
        case 56:
          if (a3[9] == 1)
          {
            goto LABEL_18;
          }

          a3[9] = 1;
          return 11;
        case 57:
          if (a3[13] == 1)
          {
            goto LABEL_18;
          }

          a3[13] = 1;
          return 12;
        default:
          abort();
      }
    }

    goto LABEL_18;
  }

  if (a3[4] != 1)
  {
    a3[4] = 1;
    sub_195378010(a1, a4, a5);
    return 3;
  }

LABEL_18:
  result = 0;
  *a5 = U_NUMBER_SKELETON_SYNTAX_ERROR;
  return result;
}

uint64_t sub_195377C88(int a1, icu::StringSegment *a2, uint64_t a3, UErrorCode *a4)
{
  if (a1 > 6)
  {
    if (a1 > 9)
    {
      switch(a1)
      {
        case 10:
          sub_195378BD0(a2, a3, a4);
          break;
        case 11:
          sub_195378D58(a2, a3, a4);
          break;
        case 12:
          sub_195378EE0(a2, a3, a4);
          break;
        default:
          goto LABEL_33;
      }
    }

    else if (a1 == 7)
    {
      sub_1953788C0(a2, a3, a4);
    }

    else if (a1 == 8)
    {
      sub_195378A78(a2, a3, a4);
    }

    else
    {
      sub_1953783AC(a2, a3, a4);
    }

    return 0;
  }

  if (a1 > 3)
  {
    if (a1 == 4)
    {
      sub_195373418(a2, a3 + 64, a4);
      return 3;
    }

    if (a1 == 5)
    {
      sub_1953784C8(a2, a3, a4);
    }

    else
    {
      sub_195378838(a2, a3, a4);
    }

    return 0;
  }

  if (a1 == 1)
  {
    if (sub_1953790CC(a2, a3))
    {
      return 1;
    }

    if (*a4 > 0)
    {
      return 0;
    }

    if (sub_195379188(a2, a3))
    {
      return 1;
    }

    if (*a4 < 1)
    {
      goto LABEL_33;
    }

    return 0;
  }

  if (a1 == 2)
  {
    if (sub_195379334(a2, a3, a4))
    {
      return 3;
    }

    if (*a4 <= 0)
    {
      goto LABEL_6;
    }

    return 0;
  }

  if (a1 != 3)
  {
LABEL_33:
    result = 0;
    *a4 = U_NUMBER_SKELETON_SYNTAX_ERROR;
    return result;
  }

LABEL_6:
  v7 = sub_195379528(a2, a3);
  result = 0;
  if (!v7 && *a4 <= 0)
  {
    goto LABEL_33;
  }

  return result;
}

double sub_195377E8C(icu::StringSegment *a1, uint64_t a2, _DWORD *a3)
{
  if (icu::StringSegment::length(a1) < 2)
  {
    v7 = 0;
    v10 = 1;
  }

  else
  {
    v6 = 0;
    while (1)
    {
      v7 = (v6 + 1);
      if (icu::StringSegment::charAt(a1, v6 + 1) != 48)
      {
        break;
      }

      v8 = icu::StringSegment::length(a1);
      v9 = v6 + 2;
      v6 = (v6 + 1);
      if (v9 >= v8)
      {
        v10 = v7 + 1;
        goto LABEL_8;
      }
    }

    v10 = v6 + 1;
    v7 = v6;
  }

LABEL_8:
  if (v10 >= icu::StringSegment::length(a1))
  {
    goto LABEL_18;
  }

  if ((icu::StringSegment::charAt(a1, v10) & 0xFFFE) == 0x2A)
  {
    if (v10 + 1 >= icu::StringSegment::length(a1))
    {
      if (v7)
      {
        icu::number::Precision::minFraction(v7, v13);
      }

      else
      {
        icu::number::Precision::unlimited(v13);
      }

      *(a2 + 64) = *v13;
      goto LABEL_24;
    }

LABEL_20:
    *a3 = 65811;
    return result;
  }

  if (v10 >= icu::StringSegment::length(a1))
  {
LABEL_18:
    v12 = v7;
  }

  else
  {
    v12 = v7;
    do
    {
      if (icu::StringSegment::charAt(a1, v10) != 35)
      {
        break;
      }

      ++v12;
      ++v10;
    }

    while (v10 < icu::StringSegment::length(a1));
  }

  if (v10 < icu::StringSegment::length(a1))
  {
    goto LABEL_20;
  }

  icu::number::Precision::minMaxFraction(v7, v12, v13);
  *(a2 + 64) = *v13;
LABEL_24:
  result = *&v13[12];
  *(a2 + 76) = *&v13[12];
  return result;
}

double sub_195378010(icu::StringSegment *a1, uint64_t a2, _DWORD *a3)
{
  if (icu::StringSegment::length(a1) < 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      if (icu::StringSegment::charAt(a1, v6) != 64)
      {
        break;
      }

      v6 = (v6 + 1);
    }

    while (v6 < icu::StringSegment::length(a1));
  }

  v7 = v6;
  if (v6 >= icu::StringSegment::length(a1))
  {
LABEL_15:
    if (v7 >= icu::StringSegment::length(a1))
    {
      icu::number::Precision::minMaxSignificantDigits(v6, v7, v9);
      goto LABEL_18;
    }

LABEL_16:
    *a3 = 65811;
    return result;
  }

  if ((icu::StringSegment::charAt(a1, v6) & 0xFFFE) != 0x2A)
  {
    v7 = v6;
    if (v6 < icu::StringSegment::length(a1))
    {
      v7 = v6;
      do
      {
        if (icu::StringSegment::charAt(a1, v7) != 35)
        {
          break;
        }

        ++v7;
      }

      while (v7 < icu::StringSegment::length(a1));
    }

    goto LABEL_15;
  }

  if (v6 + 1 < icu::StringSegment::length(a1))
  {
    goto LABEL_16;
  }

  icu::number::Precision::minSignificantDigits(v6, v9);
LABEL_18:
  *(a2 + 64) = *v9;
  result = *&v9[12];
  *(a2 + 76) = *&v9[12];
  return result;
}

uint64_t sub_195378160(icu::StringSegment *a1, uint64_t a2, _DWORD *a3)
{
  result = icu::StringSegment::length(a1);
  if (result == 1)
  {
    goto LABEL_2;
  }

  v7 = 1;
  v8 = icu::StringSegment::charAt(a1, 1);
  if (v8 == 69)
  {
    result = icu::StringSegment::length(a1);
    if (result == 2)
    {
LABEL_2:
      *a3 = 65811;
      return result;
    }

    v7 = 2;
  }

  if (icu::StringSegment::charAt(a1, v7) == 43)
  {
    result = icu::StringSegment::length(a1);
    if (result == v7 + 1)
    {
      goto LABEL_2;
    }

    if (icu::StringSegment::charAt(a1, v7 + 1) != 33)
    {
      result = icu::StringSegment::charAt(a1, v7 + 1);
      if (result != 63)
      {
        goto LABEL_2;
      }
    }

    v7 += 2;
    result = icu::StringSegment::length(a1);
    if (result == v7)
    {
      goto LABEL_2;
    }
  }

  v9 = icu::StringSegment::length(a1);
  if (v7 < v9)
  {
    v10 = 0;
    while (1)
    {
      result = icu::StringSegment::charAt(a1, v7);
      if (result != 48)
      {
        goto LABEL_2;
      }

      ++v10;
      ++v7;
      v9 = icu::StringSegment::length(a1);
      if (v7 >= v9)
      {
        goto LABEL_16;
      }
    }
  }

  v10 = 0;
LABEL_16:
  if (v8 == 69)
  {
    v11 = icu::number::Notation::engineering(v9);
  }

  else
  {
    v11 = icu::number::Notation::scientific(v9);
  }

  v15 = v11;
  v16 = v12;
  v17 = icu::number::ScientificNotation::withExponentSignDisplay(&v15);
  v18 = v13;
  result = icu::number::ScientificNotation::withMinExponentDigits(&v17, v10);
  *(a2 + 4) = result;
  *(a2 + 12) = v14;
  return result;
}

uint64_t sub_1953782F8(icu::StringSegment *a1, uint64_t a2, _DWORD *a3)
{
  if (icu::StringSegment::length(a1) < 2)
  {
    v6 = 1;
  }

  else
  {
    v6 = 0;
    while (1)
    {
      v7 = v6 + 1;
      if (icu::StringSegment::charAt(a1, v6 + 1) != 48)
      {
        break;
      }

      v8 = icu::StringSegment::length(a1);
      v9 = v6 + 2;
      v6 = (v6 + 1);
      if (v9 >= v8)
      {
        v6 = (v7 + 1);
        break;
      }
    }
  }

  result = icu::StringSegment::length(a1);
  if (v6 >= result)
  {
    result = icu::number::IntegerWidth::zeroFillTo(v6);
    *(a2 + 124) = result;
    *(a2 + 132) = v11;
  }

  else
  {
    *a3 = 65811;
  }

  return result;
}

void sub_1953783AC(icu::StringSegment *a1, uint64_t a2, _DWORD *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if (icu::StringSegment::length(a1) == 3)
  {
    icu::StringSegment::toTempUnicodeString(a1, &v11);
    v6 = WORD4(v11);
    if ((BYTE8(v11) & 0x11) != 0)
    {
      v7 = 0;
    }

    else if ((BYTE8(v11) & 2) != 0)
    {
      v6 = &v11;
      v7 = &v11 + 10;
    }

    else
    {
      v7 = *(&v12 + 1);
    }

    icu::UnicodeString::~UnicodeString(v6, &v11);
    v10 = 0;
    v11 = 0u;
    v12 = 0u;
    v9 = v7;
    icu::CurrencyUnit::CurrencyUnit(&v11, &v9, &v10);
    if (v10 < 1)
    {
      icu::MeasureUnit::operator=(a2 + 16, &v11);
    }

    else
    {
      *a3 = 65811;
    }

    icu::CurrencyUnit::~CurrencyUnit(&v11);
  }

  else
  {
    *a3 = 65811;
  }

  v8 = *MEMORY[0x1E69E9840];
}

void *sub_1953784C8(icu::StringSegment *a1, uint64_t a2, UErrorCode *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  icu::StringSegment::toTempUnicodeString(a1, &v35);
  v5 = 0;
  v6 = WORD4(v35);
  v7 = WORD4(v35) >> 5;
  v8 = *(&v36 + 1);
  if ((BYTE8(v35) & 2) != 0)
  {
    v9 = &v35 | 0xA;
  }

  else
  {
    v9 = *(&v36 + 1);
  }

  if ((WORD4(v35) & 0x8000) != 0)
  {
    goto LABEL_7;
  }

LABEL_5:
  v10 = WORD4(v35) >> 5;
  if (v5 < v7)
  {
    while (v10 <= v5 || *(v9 + 2 * v5) != 45)
    {
      ++v5;
      if ((WORD4(v35) & 0x8000) == 0)
      {
        goto LABEL_5;
      }

LABEL_7:
      v10 = HIDWORD(v35);
      if (v5 >= SHIDWORD(v35))
      {
        goto LABEL_13;
      }
    }

    if ((WORD4(v35) & 0x8000) == 0)
    {
      goto LABEL_14;
    }

LABEL_13:
    LODWORD(v7) = HIDWORD(v35);
  }

LABEL_14:
  if (v7 == v5)
  {
    *a3 = U_NUMBER_SKELETON_SYNTAX_ERROR;
    goto LABEL_27;
  }

  memset(&v34[1], 0, 56);
  v34[0] = &v34[1] + 5;
  LODWORD(v34[1]) = 40;
  v31[0] = U_ZERO_ERROR;
  if ((BYTE8(v35) & 2) != 0)
  {
    v8 = &v35 | 0xA;
  }

  if ((BYTE8(v35) & 0x11) != 0)
  {
    v11 = 0;
  }

  else
  {
    v11 = v8;
  }

  v29 = v11;
  icu::UnicodeString::UnicodeString(v30, 0, &v29);
  icu::CharString::appendInvariantChars(v34, v30, v31);
  icu::UnicodeString::~UnicodeString(v12, v30);
  v13 = v31[0];
  if (v31[0] != U_INVARIANT_CONVERSION_ERROR)
  {
    if (v31[0] > U_ZERO_ERROR)
    {
      goto LABEL_24;
    }

    memset(v32, 0, sizeof(v32));
    *v31 = &v32[1] + 1;
    v32[0] = 40;
    v33 = 0;
    v28 = U_ZERO_ERROR;
    v16 = *(&v36 + 1);
    if ((BYTE8(v35) & 2) != 0)
    {
      v16 = &v35 | 0xA;
    }

    if ((BYTE8(v35) & 0x11) != 0)
    {
      v16 = 0;
    }

    v27 = v16 + 2 * (v5 + 1);
    icu::UnicodeString::UnicodeString(v30, 0, &v27);
    icu::CharString::appendInvariantChars(v31, v30, &v28);
    icu::UnicodeString::~UnicodeString(v17, v30);
    v18 = v28;
    if (v28 == U_INVARIANT_CONVERSION_ERROR)
    {
      v18 = U_NUMBER_SKELETON_SYNTAX_ERROR;
    }

    else if (v28 <= U_ZERO_ERROR)
    {
      bzero(v30, 0x3C0uLL);
      for (i = 0; i != 960; i += 24)
      {
        icu::MeasureUnit::MeasureUnit(&v30[i]);
      }

      v28 = U_ZERO_ERROR;
      Available = icu::MeasureUnit::getAvailable(v34[0], v30, 0x28, &v28, v20);
      if (v28 <= U_ZERO_ERROR)
      {
        if (Available < 1)
        {
LABEL_46:
          *a3 = U_NUMBER_SKELETON_SYNTAX_ERROR;
        }

        else
        {
          v22 = Available;
          v23 = v30;
          while (1)
          {
            v24 = *v31;
            Subtype = icu::MeasureUnit::getSubtype(v23);
            if (!strcmp(v24, Subtype))
            {
              break;
            }

            v23 += 24;
            if (!--v22)
            {
              goto LABEL_46;
            }
          }

          icu::MeasureUnit::operator=(a2 + 16, v23);
        }
      }

      else
      {
        *a3 = U_INTERNAL_PROGRAM_ERROR;
      }

      for (j = 936; j != -24; j -= 24)
      {
        icu::MeasureUnit::~MeasureUnit(&v30[j]);
      }

      goto LABEL_36;
    }

    *a3 = v18;
LABEL_36:
    if (LOBYTE(v32[1]))
    {
      free(*v31);
    }

    goto LABEL_25;
  }

  v13 = U_NUMBER_SKELETON_SYNTAX_ERROR;
LABEL_24:
  *a3 = v13;
LABEL_25:
  v6 = BYTE4(v34[1]);
  if (BYTE4(v34[1]))
  {
    free(v34[0]);
  }

LABEL_27:
  result = icu::UnicodeString::~UnicodeString(v6, &v35);
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_195378838(icu::StringSegment *a1, uint64_t a2, UErrorCode *a3)
{
  memset(v6, 0, sizeof(v6));
  icu::MeasureUnit::MeasureUnit(v6, a2 + 16);
  sub_1953784C8(a1, a2, a3);
  if (*a3 <= 0)
  {
    icu::MeasureUnit::operator=(a2 + 40, a2 + 16);
    icu::MeasureUnit::operator=(a2 + 16, v6);
  }

  icu::MeasureUnit::~MeasureUnit(v6);
}

void sub_1953788C0(icu::StringSegment *a1, uint64_t a2, UErrorCode *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  memset(&v16[1], 0, 48);
  v17 = 0;
  v16[0] = &v16[1] + 5;
  LODWORD(v16[1]) = 40;
  v12 = U_ZERO_ERROR;
  icu::StringSegment::toTempUnicodeString(a1, &v13);
  v6 = 0;
  if ((v14[0] & 0x11) == 0)
  {
    if ((v14[0] & 2) != 0)
    {
      v6 = v14 + 2;
    }

    else
    {
      v6 = v14[2];
    }
  }

  v11 = v6;
  icu::StringSegment::length(a1);
  icu::UnicodeString::UnicodeString(v15, 0, &v11);
  icu::CharString::appendInvariantChars(v16, v15, &v12);
  icu::UnicodeString::~UnicodeString(v7, v15);
  v10 = v11;
  icu::UnicodeString::~UnicodeString(&v10, &v13);
  v8 = v12;
  if (v12 == U_INVARIANT_CONVERSION_ERROR)
  {
    v8 = U_NUMBER_SKELETON_SYNTAX_ERROR;
LABEL_8:
    *a3 = v8;
    goto LABEL_9;
  }

  if (v12 > U_ZERO_ERROR)
  {
    goto LABEL_8;
  }

  v13 = &unk_1F0931CC0;
  v14[0] = 0;
  icu::MeasureUnit::forIdentifier(v16[0], v17, v14, v15);
  icu::MeasureUnit::operator=(a2 + 16, v15);
  icu::MeasureUnit::~MeasureUnit(v15);
  if (SLODWORD(v14[0]) >= 1)
  {
    *a3 = U_NUMBER_SKELETON_SYNTAX_ERROR;
  }

  icu::ErrorCode::~ErrorCode(&v13);
LABEL_9:
  if (BYTE4(v16[1]))
  {
    free(v16[0]);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void sub_195378A78(icu::StringSegment *a1, uint64_t a2, UErrorCode *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  memset(&v17[1], 0, 48);
  v18 = 0;
  v17[0] = &v17[1] + 5;
  LODWORD(v17[1]) = 40;
  v12 = U_ZERO_ERROR;
  icu::StringSegment::toTempUnicodeString(a1, v13);
  v6 = 0;
  if ((v14 & 0x11) == 0)
  {
    if ((v14 & 2) != 0)
    {
      v6 = v15;
    }

    else
    {
      v6 = *&v15[14];
    }
  }

  v11 = v6;
  icu::StringSegment::length(a1);
  icu::UnicodeString::UnicodeString(v16, 0, &v11);
  icu::CharString::appendInvariantChars(v17, v16, &v12);
  icu::UnicodeString::~UnicodeString(v7, v16);
  v10 = v11;
  icu::UnicodeString::~UnicodeString(&v10, v13);
  v8 = v12;
  if (v12 == U_INVARIANT_CONVERSION_ERROR)
  {
    v8 = U_NUMBER_SKELETON_SYNTAX_ERROR;
LABEL_8:
    *a3 = v8;
    goto LABEL_9;
  }

  if (v12 > U_ZERO_ERROR)
  {
    goto LABEL_8;
  }

  icu::number::impl::StringProp::set(a2 + 192, v17[0], v18);
LABEL_9:
  if (BYTE4(v17[1]))
  {
    free(v17[0]);
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t sub_195378BD0(icu::StringSegment *a1, uint64_t a2, _DWORD *a3)
{
  v6 = icu::StringSegment::charAt(a1, 0) & 0xFFFE;
  v7 = v6 != 42;
  v8 = v6 == 42;
  if (v6 == 42)
  {
    v9 = -1;
  }

  else
  {
    v9 = 0;
  }

  if (icu::StringSegment::length(a1) > v8 && v6 != 42 && icu::StringSegment::charAt(a1, v8) == 35)
  {
    v10 = v9 + 1;
    v11 = v8 + 1;
    do
    {
      v9 = v10;
      v8 = v11;
      if (v11 >= icu::StringSegment::length(a1))
      {
        break;
      }

      v12 = icu::StringSegment::charAt(a1, v8);
      v10 = v9 + 1;
      v11 = v8 + 1;
    }

    while (v12 == 35);
    v7 = 1;
  }

  if (v8 >= icu::StringSegment::length(a1) || v8 >= icu::StringSegment::length(a1))
  {
    v13 = 0;
  }

  else
  {
    v13 = 0;
    do
    {
      if (icu::StringSegment::charAt(a1, v8) != 48)
      {
        break;
      }

      v13 = (v13 + 1);
      ++v8;
    }

    while (v8 < icu::StringSegment::length(a1));
  }

  if (v7)
  {
    v14 = (v13 + v9);
  }

  else
  {
    v14 = 0xFFFFFFFFLL;
  }

  result = icu::StringSegment::length(a1);
  if (v8 >= result)
  {
    if (v14 == -1)
    {
      result = icu::number::IntegerWidth::zeroFillTo(v13);
    }

    else
    {
      v18 = icu::number::IntegerWidth::zeroFillTo(v13);
      v19 = v16;
      result = icu::number::IntegerWidth::truncateAt(&v18, v14);
    }

    *(a2 + 124) = result;
    *(a2 + 132) = v17;
  }

  else
  {
    *a3 = 65811;
  }

  return result;
}

void sub_195378D58(icu::StringSegment *a1, uint64_t a2, UErrorCode *a3)
{
  v19[8] = *MEMORY[0x1E69E9840];
  memset(&v19[1], 0, 56);
  v19[0] = &v19[1] + 5;
  LODWORD(v19[1]) = 40;
  v14 = U_ZERO_ERROR;
  icu::StringSegment::toTempUnicodeString(a1, v15);
  v6 = 0;
  if ((v16 & 0x11) == 0)
  {
    if ((v16 & 2) != 0)
    {
      v6 = v17;
    }

    else
    {
      v6 = *&v17[14];
    }
  }

  v13 = v6;
  icu::StringSegment::length(a1);
  icu::UnicodeString::UnicodeString(v18, 0, &v13);
  icu::CharString::appendInvariantChars(v19, v18, &v14);
  icu::UnicodeString::~UnicodeString(v7, v18);
  v12 = v13;
  icu::UnicodeString::~UnicodeString(&v12, v15);
  v9 = v14;
  if (v14 == U_INVARIANT_CONVERSION_ERROR)
  {
    v9 = U_NUMBER_SKELETON_SYNTAX_ERROR;
  }

  else if (v14 <= U_ZERO_ERROR)
  {
    InstanceByName = icu::NumberingSystem::createInstanceByName(v19[0], a3, v8);
    if (InstanceByName && *a3 < 1)
    {
      icu::number::impl::SymbolsWrapper::setTo((a2 + 136), InstanceByName);
    }

    else
    {
      *a3 = U_NUMBER_SKELETON_SYNTAX_ERROR;
    }

    goto LABEL_9;
  }

  *a3 = v9;
LABEL_9:
  if (BYTE4(v19[1]))
  {
    free(v19[0]);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void sub_195378EE0(icu::StringSegment *a1, uint64_t a2, UErrorCode *a3)
{
  v16[8] = *MEMORY[0x1E69E9840];
  memset(&v16[1], 0, 56);
  v16[0] = &v16[1] + 5;
  LODWORD(v16[1]) = 40;
  v11 = U_ZERO_ERROR;
  icu::StringSegment::toTempUnicodeString(a1, &v12);
  v5 = 0;
  if ((v13 & 0x11) == 0)
  {
    if ((v13 & 2) != 0)
    {
      v5 = v14;
    }

    else
    {
      v5 = *&v14[14];
    }
  }

  v10 = v5;
  icu::StringSegment::length(a1);
  icu::UnicodeString::UnicodeString(v15, 0, &v10);
  icu::CharString::appendInvariantChars(v16, v15, &v11);
  icu::UnicodeString::~UnicodeString(v6, v15);
  v9 = v10;
  icu::UnicodeString::~UnicodeString(&v9, &v12);
  v7 = v11;
  if (v11 == U_INVARIANT_CONVERSION_ERROR)
  {
    v7 = U_NUMBER_SKELETON_SYNTAX_ERROR;
  }

  else if (v11 <= U_ZERO_ERROR)
  {
    operator new();
  }

  *a3 = v7;
  if (BYTE4(v16[1]))
  {
    free(v16[0]);
  }

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1953790CC(icu::StringSegment *a1, uint64_t a2)
{
  if ((icu::StringSegment::charAt(a1, 0) & 0xFFFE) != 0x2A)
  {
    return 0;
  }

  if (icu::StringSegment::length(a1) < 2)
  {
    v5 = 0;
    v4 = 1;
  }

  else
  {
    v4 = 1;
    do
    {
      if (icu::StringSegment::charAt(a1, v4) != 101)
      {
        break;
      }

      ++v4;
    }

    while (v4 < icu::StringSegment::length(a1));
    v5 = v4 - 1;
  }

  if (v4 < icu::StringSegment::length(a1))
  {
    return 0;
  }

  *(a2 + 4) = icu::number::ScientificNotation::withMinExponentDigits((a2 + 4), v5);
  *(a2 + 12) = v7;
  return 1;
}

uint64_t sub_195379188(icu::StringSegment *a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v18[0] = 0;
  v18[1] = qword_1ED442F98;
  v19 = qword_1ED442F98;
  v20 = 0xFFFFFFFFLL;
  v16[1] = qword_1ED442F98;
  icu::StringSegment::toTempUnicodeString(a1, v21);
  v4 = 0;
  if ((v22 & 0x11) == 0)
  {
    if ((v22 & 2) != 0)
    {
      v4 = v23;
    }

    else
    {
      v4 = *&v23[14];
    }
  }

  v17 = v4;
  v5 = icu::StringSegment::length(a1);
  v6 = icu::UCharsTrie::next(v18, &v17, v5);
  v16[0] = v17;
  icu::UnicodeString::~UnicodeString(v16, v21);
  if ((v6 - 4) < 0xFFFFFFFE)
  {
    goto LABEL_18;
  }

  v7 = v19 + 1;
  v8 = *v19;
  if (*v19 < 0)
  {
    v10 = v8 & 0x7FFF;
    if (v10 >= 0x4000)
    {
      if (v10 == 0x7FFF)
      {
        v11 = v19[1] << 16;
        v7 = v19 + 2;
      }

      else
      {
        v11 = (v10 << 16) - 0x40000000;
      }

      v10 = v11 | *v7;
    }
  }

  else
  {
    v9 = v8 >> 6;
    if (v9 > 0x100)
    {
      v10 = v9 > 0x1FE ? v19[2] | (v19[1] << 16) : (*v7 | ((v9 & 0x1FF) << 16)) - 16842752;
    }

    else
    {
      v10 = v9 - 1;
    }
  }

  if (sub_19537557C(v10) == 9)
  {
LABEL_18:
    v12 = 0;
  }

  else
  {
    *(a2 + 4) = icu::number::ScientificNotation::withExponentSignDisplay(a2 + 4);
    *(a2 + 12) = v13;
    v12 = 1;
  }

  icu::UCharsTrie::~UCharsTrie(v18);
  v14 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t sub_195379334(icu::StringSegment *a1, uint64_t a2, _DWORD *a3)
{
  v6 = icu::StringSegment::charAt(a1, 0);
  result = 0;
  if (v6 == 64)
  {
    if (icu::StringSegment::length(a1) < 1)
    {
      v8 = 0;
    }

    else
    {
      v8 = 0;
      do
      {
        if (icu::StringSegment::charAt(a1, v8) != 64)
        {
          break;
        }

        ++v8;
      }

      while (v8 < icu::StringSegment::length(a1));
    }

    v9 = v8;
    if (v8 < icu::StringSegment::length(a1))
    {
      if ((icu::StringSegment::charAt(a1, v8) & 0xFFFE) == 0x2A)
      {
        if (v8 + 1 >= icu::StringSegment::length(a1))
        {
          icu::number::FractionPrecision::withMinDigits(a2 + 64, v8, v11);
          *(a2 + 64) = *v11;
LABEL_27:
          *(a2 + 76) = *&v11[12];
          return 1;
        }

LABEL_24:
        result = 0;
        *a3 = 65811;
        return result;
      }

      v9 = v8;
      if (v8 < icu::StringSegment::length(a1))
      {
        v9 = v8;
        do
        {
          if (icu::StringSegment::charAt(a1, v9) != 35)
          {
            break;
          }

          ++v9;
        }

        while (v9 < icu::StringSegment::length(a1));
      }
    }

    if (v9 >= icu::StringSegment::length(a1))
    {
      if (v8 != 1)
      {
        goto LABEL_24;
      }

      icu::number::FractionPrecision::withMaxDigits(a2 + 64, v9, v11);
    }

    else
    {
      if (icu::StringSegment::codePointAt(a1, v9) == 114)
      {
        v10 = 0;
      }

      else
      {
        if (icu::StringSegment::codePointAt(a1, v9) != 115)
        {
          goto LABEL_24;
        }

        v10 = 1;
      }

      if (v9 + 1 < icu::StringSegment::length(a1))
      {
        goto LABEL_24;
      }

      icu::number::FractionPrecision::withSignificantDigits(a2 + 64, v8, v9, v10, v11);
    }

    *(a2 + 64) = *v11;
    goto LABEL_27;
  }

  return result;
}

BOOL sub_195379528(icu::StringSegment *a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1951D6EE0(v8, L"w");
  v4 = icu::StringSegment::operator==(a1, v8);
  icu::UnicodeString::~UnicodeString(v5, v8);
  if (v4)
  {
    icu::number::Precision::trailingZeroDisplay(a2 + 64, 1, v8);
    *(a2 + 64) = *v8;
    *(a2 + 76) = *&v8[12];
  }

  v6 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t sub_1953795D0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a1 + 4);
  if (v6)
  {
    if (v6 == 1)
    {
      v7 = *(a1 + 8);
      if (v7)
      {
        if (v7 != 1)
        {
          v8 = 0;
          *a3 = 16;
          return v8;
        }

        icu::UnicodeString::doAppend(a2, L"compact-long", 0, 0xFFFFFFFFLL);
      }

      else
      {
        icu::UnicodeString::doAppend(a2, "c", 0, 0xFFFFFFFFLL);
      }

      return 1;
    }

    return 0;
  }

  if (*(a1 + 8) == 3)
  {
    icu::UnicodeString::doAppend(a2, "e", 0, 0xFFFFFFFFLL);
  }

  else
  {
    icu::UnicodeString::doAppend(a2, "s", 0, 0xFFFFFFFFLL);
  }

  if (*(a1 + 10) >= 2)
  {
    v10 = 47;
    icu::UnicodeString::doAppend(a2, &v10, 0, 1);
    sub_19537A00C(*(a1 + 10), a2);
    if (*a3 > 0)
    {
      return 0;
    }
  }

  if (!*(a1 + 12))
  {
    return 1;
  }

  v10 = 47;
  v8 = 1;
  icu::UnicodeString::doAppend(a2, &v10, 0, 1);
  sub_195375A70(*(a1 + 12), a2);
  return v8;
}

BOOL sub_195379764(uint64_t a1, uint64_t a2, UErrorCode *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  memset(v21, 0, sizeof(v21));
  icu::MeasureUnit::MeasureUnit(v21, a1 + 16);
  Type = icu::MeasureUnit::getType((a1 + 40));
  if (strcmp("none", Type))
  {
    v7 = icu::MeasureUnit::getType((a1 + 16));
    if (!strcmp("currency", v7) || (v8 = icu::MeasureUnit::getType((a1 + 40)), !strcmp("currency", v8)))
    {
      v16 = 0;
      *a3 = U_UNSUPPORTED_ERROR;
      goto LABEL_21;
    }

    icu::MeasureUnit::reciprocal((a1 + 40), a3, v20);
    icu::MeasureUnit::product(v21, v20, a3, &v22);
    icu::MeasureUnit::operator=(v21, &v22);
    icu::MeasureUnit::~MeasureUnit(&v22);
    icu::MeasureUnit::~MeasureUnit(v20);
  }

  v9 = icu::MeasureUnit::getType(v21);
  if (!strcmp("currency", v9))
  {
    icu::UnicodeString::doAppend(a2, L"currency/", 0, 0xFFFFFFFFLL);
    v19[0] = L"currency/";
    v22 = 0u;
    v23 = 0u;
    icu::CurrencyUnit::CurrencyUnit(v19, &v22, v21, a3);
    v16 = *a3 < U_ILLEGAL_ARGUMENT_ERROR;
    if (*a3 <= 0)
    {
      icu::UnicodeString::doAppend(a2, &v23 + 4, 0, 0xFFFFFFFFLL);
    }

    icu::CurrencyUnit::~CurrencyUnit(&v22);
  }

  else
  {
    v10 = icu::MeasureUnit::getType(v21);
    if (!strcmp("none", v10))
    {
      v16 = 0;
    }

    else
    {
      Subtype = icu::MeasureUnit::getSubtype(v21);
      if (!strcmp("percent", Subtype))
      {
        icu::UnicodeString::doAppend(a2, L"percent", 0, 0xFFFFFFFFLL);
        v19[1] = L"percent";
      }

      else
      {
        v12 = icu::MeasureUnit::getSubtype(v21);
        if (!strcmp("permille", v12))
        {
          icu::UnicodeString::doAppend(a2, L"permille", 0, 0xFFFFFFFFLL);
          v19[2] = L"permille";
        }

        else
        {
          icu::UnicodeString::doAppend(a2, "u", 0, 0xFFFFFFFFLL);
          v19[3] = "u";
          Identifier = icu::MeasureUnit::getIdentifier(v21);
          icu::UnicodeString::UnicodeString(&v22, Identifier);
          if ((SWORD4(v22) & 0x8000u) == 0)
          {
            v14 = WORD4(v22) >> 5;
          }

          else
          {
            v14 = HIDWORD(v22);
          }

          icu::UnicodeString::doAppend(a2, &v22, 0, v14);
          icu::UnicodeString::~UnicodeString(v15, &v22);
        }
      }

      v16 = 1;
    }
  }

LABEL_21:
  icu::MeasureUnit::~MeasureUnit(v21);
  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

BOOL sub_195379A40(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 200);
  if (v2 >= 1)
  {
    icu::UnicodeString::doAppend(a2, "u", 0, 0xFFFFFFFFLL);
    icu::UnicodeString::UnicodeString(v9, *(a1 + 192), 0xFFFFFFFFLL, 0);
    if ((v10 & 0x8000u) == 0)
    {
      v5 = v10 >> 5;
    }

    else
    {
      v5 = v11;
    }

    icu::UnicodeString::doAppend(a2, v9, 0, v5);
    icu::UnicodeString::~UnicodeString(v6, v9);
  }

  result = v2 > 0;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_195379B1C(uint64_t a1, icu::UnicodeString *this)
{
  result = 0;
  v5 = *(a1 + 64);
  if (v5 <= 4)
  {
    if (v5 <= 2)
    {
      if (v5 == 1)
      {
        icu::UnicodeString::doAppend(this, L"precision-unlimited", 0, 0xFFFFFFFFLL);
      }

      else
      {
        if (v5 != 2)
        {
          return result;
        }

        sub_19537A070(*(a1 + 72), *(a1 + 74), this);
      }

      goto LABEL_18;
    }

    if (v5 == 3)
    {
      v6 = *(a1 + 76);
      v7 = *(a1 + 78);
    }

    else
    {
      sub_19537A070(*(a1 + 72), *(a1 + 74), this);
      v9 = 47;
      icu::UnicodeString::doAppend(this, &v9, 0, 1);
      v7 = *(a1 + 78);
      if (*(a1 + 84) != 1)
      {
        sub_19537A15C(*(a1 + 76), v7, this);
        if (*(a1 + 80))
        {
          v8 = 115;
        }

        else
        {
          v8 = 114;
        }

        v9 = v8;
        icu::UnicodeString::doAppend(this, &v9, 0, 1);
        goto LABEL_18;
      }

      if (*(a1 + 80))
      {
        v6 = 1;
      }

      else
      {
        v6 = *(a1 + 78);
        v7 = -1;
      }
    }

    goto LABEL_17;
  }

  if ((v5 - 5) < 3)
  {
    icu::UnicodeString::doAppend(this, L"precision-increment/", 0, 0xFFFFFFFFLL);
    sub_19537A1FC(*(a1 + 72), *(a1 + 80), *(a1 + 82), this);
    goto LABEL_18;
  }

  if (v5 != 8)
  {
    if (v5 != 9)
    {
      return result;
    }

    v6 = *(a1 + 80);
    v7 = *(a1 + 82);
LABEL_17:
    sub_19537A15C(v6, v7, this);
    goto LABEL_18;
  }

  if (*(a1 + 72))
  {
    icu::UnicodeString::doAppend(this, "p", 0, 0xFFFFFFFFLL);
  }

  else
  {
    icu::UnicodeString::doAppend(this, "p", 0, 0xFFFFFFFFLL);
  }

LABEL_18:
  if (*(a1 + 88) == 1)
  {
    icu::UnicodeString::doAppend(this, "/", 0, 0xFFFFFFFFLL);
  }

  return 1;
}

uint64_t sub_195379D58(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (*(a1 + 100) == -3)
  {
    return 0;
  }

  v3 = *(a1 + 108);
  if (v3 == 2)
  {
    return 0;
  }

  if (v3 == 5)
  {
    result = 0;
    *a3 = 16;
  }

  else
  {
    sub_1953757D8(v3, a2);
    return 1;
  }

  return result;
}

uint64_t sub_195379DB0(uint64_t a1, icu::UnicodeString *a2)
{
  if (*(a1 + 132))
  {
    return 0;
  }

  v3 = (a1 + 124);
  if (*(a1 + 124) == 0xFFFF)
  {
    return 0;
  }

  v7 = icu::number::IntegerWidth::zeroFillTo(1);
  v8 = v5;
  if (icu::number::IntegerWidth::operator==(v3, &v7))
  {
    return 0;
  }

  if (*(a1 + 124) | *(a1 + 126))
  {
    icu::UnicodeString::doAppend(a2, L"integer-width/", 0, 0xFFFFFFFFLL);
    sub_19537A2E4(*(a1 + 124), *(a1 + 126), a2);
  }

  else
  {
    icu::UnicodeString::doAppend(a2, L"integer-width-trunc", 0, 0xFFFFFFFFLL);
  }

  return 1;
}

BOOL sub_195379E9C(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  isNumberingSystem = icu::number::impl::SymbolsWrapper::isNumberingSystem((a1 + 136));
  if (isNumberingSystem)
  {
    NumberingSystem = icu::number::impl::SymbolsWrapper::getNumberingSystem((a1 + 136));
    Name = icu::NumberingSystem::getName(NumberingSystem);
    if (!strcmp(Name, "latn"))
    {
      icu::UnicodeString::doAppend(a2, "l", 0, 0xFFFFFFFFLL);
    }

    else
    {
      icu::UnicodeString::doAppend(a2, "n", 0, 0xFFFFFFFFLL);
      sub_19537A37C(NumberingSystem, a2);
    }
  }

  else if (icu::number::impl::SymbolsWrapper::isDecimalFormatSymbols((a1 + 136)))
  {
    *a3 = 16;
  }

  return isNumberingSystem;
}

uint64_t sub_195379F78(uint64_t a1, uint64_t a2, UErrorCode *a3)
{
  if (*(a1 + 168))
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a1 + 176) == 0;
  }

  v4 = !v3;
  if (!v3)
  {
    icu::UnicodeString::doAppend(a2, "s", 0, 0xFFFFFFFFLL);
    sub_19537A418(*(a1 + 168), *(a1 + 176), a2, a3);
  }

  return v4;
}

uint64_t sub_19537A00C(int a1, uint64_t a2)
{
  v5 = 42;
  result = icu::UnicodeString::doAppend(a2, &v5, 0, 1);
  if (a1 >= 1)
  {
    do
    {
      result = icu::UnicodeString::append(a2, 0x65u);
      --a1;
    }

    while (a1);
  }

  return result;
}

uint64_t sub_19537A070(int a1, int a2, uint64_t a3)
{
  if (!(a2 | a1))
  {
    return icu::UnicodeString::doAppend(a3, L"precision-integer", 0, 0xFFFFFFFFLL);
  }

  v9 = 46;
  result = icu::UnicodeString::doAppend(a3, &v9, 0, 1);
  if (a1 >= 1)
  {
    v7 = a1;
    do
    {
      result = icu::UnicodeString::append(a3, 0x30u);
      --v7;
    }

    while (v7);
  }

  if (a2 == -1)
  {
    v10 = 42;
    return icu::UnicodeString::doAppend(a3, &v10, 0, 1);
  }

  else
  {
    v8 = a2 - a1;
    if (v8 >= 1)
    {
      do
      {
        result = icu::UnicodeString::append(a3, 0x23u);
        --v8;
      }

      while (v8);
    }
  }

  return result;
}

uint64_t sub_19537A15C(uint64_t result, int a2, icu::UnicodeString *this)
{
  v5 = result;
  if (result >= 1)
  {
    v6 = result;
    do
    {
      result = icu::UnicodeString::append(this, 0x40u);
      --v6;
    }

    while (v6);
  }

  if (a2 == -1)
  {
    v8 = 42;
    return icu::UnicodeString::doAppend(this, &v8, 0, 1);
  }

  else
  {
    v7 = a2 - v5;
    if (v7 >= 1)
    {
      do
      {
        result = icu::UnicodeString::append(this, 0x23u);
        --v7;
      }

      while (v7);
    }
  }

  return result;
}

void sub_19537A1FC(unsigned int a1, int a2, int a3, uint64_t a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  icu::number::impl::DecimalQuantity::DecimalQuantity(v11);
  icu::number::impl::DecimalQuantity::setToLong(v11, a1);
  icu::number::impl::DecimalQuantity::adjustMagnitude(v11, a2);
  icu::number::impl::DecimalQuantity::setMinFraction(v11, a3);
  icu::number::impl::DecimalQuantity::toPlainString(v11, v13);
  if ((v14 & 0x8000u) == 0)
  {
    v8 = v14 >> 5;
  }

  else
  {
    v8 = v15;
  }

  icu::UnicodeString::doAppend(a4, v13, 0, v8);
  icu::UnicodeString::~UnicodeString(v9, v13);
  icu::number::impl::DecimalQuantity::~DecimalQuantity(v11);
  v10 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19537A2E4(uint64_t result, int a2, icu::UnicodeString *this)
{
  v4 = result;
  if (a2 == -1)
  {
    v6 = 42;
    result = icu::UnicodeString::doAppend(this, &v6, 0, 1);
  }

  else
  {
    v5 = a2 - result;
    if (a2 - result >= 1)
    {
      do
      {
        result = icu::UnicodeString::append(this, 0x23u);
        --v5;
      }

      while (v5);
    }
  }

  if (v4 >= 1)
  {
    do
    {
      result = icu::UnicodeString::append(this, 0x30u);
      --v4;
    }

    while (v4);
  }

  return result;
}

void *sub_19537A37C(icu::NumberingSystem *a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  Name = icu::NumberingSystem::getName(a1);
  icu::UnicodeString::UnicodeString(v8, Name, 0xFFFFFFFFLL, 0);
  if ((v9 & 0x8000u) == 0)
  {
    v4 = v9 >> 5;
  }

  else
  {
    v4 = v10;
  }

  icu::UnicodeString::doAppend(a2, v8, 0, v4);
  result = icu::UnicodeString::~UnicodeString(v5, v8);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19537A418(int a1, const icu::number::impl::DecNum *a2, uint64_t a3, UErrorCode *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  icu::number::impl::DecimalQuantity::DecimalQuantity(v11);
  if (a2)
  {
    icu::number::impl::DecimalQuantity::setToDecNum(v11, a2, a4);
    if (*a4 >= 1)
    {
      goto LABEL_9;
    }
  }

  else
  {
    icu::number::impl::DecimalQuantity::setToInt(v11, 1);
  }

  icu::number::impl::DecimalQuantity::adjustMagnitude(v11, a1);
  icu::number::impl::DecimalQuantity::roundToInfinity(v11);
  icu::number::impl::DecimalQuantity::toPlainString(v11, v13);
  if ((v14 & 0x8000u) == 0)
  {
    v8 = v14 >> 5;
  }

  else
  {
    v8 = v15;
  }

  icu::UnicodeString::doAppend(a3, v13, 0, v8);
  icu::UnicodeString::~UnicodeString(v9, v13);
LABEL_9:
  icu::number::impl::DecimalQuantity::~DecimalQuantity(v11);
  v10 = *MEMORY[0x1E69E9840];
}

void icu::number::NumberFormatterSettings<icu::number::UnlocalizedNumberFormatter>::toSkeleton(uint64_t a1@<X0>, UErrorCode *a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2 >= 1 || sub_19535D604(a1, a2))
  {
    *(a3 + 8) = 0u;
    *(a3 + 56) = 0;
    *(a3 + 40) = 0u;
    *(a3 + 24) = 0u;
    *a3 = &unk_1F0935D00;
    *(a3 + 8) = 2;

    icu::UnicodeString::setToBogus(a3);
  }

  else
  {

    sub_1953771B4(a1, a2, a3);
  }
}

void icu::number::NumberFormatterSettings<icu::number::LocalizedNumberFormatter>::toSkeleton(uint64_t a1@<X0>, UErrorCode *a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2 >= 1 || sub_19535D604(a1, a2))
  {
    *(a3 + 8) = 0u;
    *(a3 + 56) = 0;
    *(a3 + 40) = 0u;
    *(a3 + 24) = 0u;
    *a3 = &unk_1F0935D00;
    *(a3 + 8) = 2;

    icu::UnicodeString::setToBogus(a3);
  }

  else
  {

    sub_1953771B4(a1, a2, a3);
  }
}

uint64_t sub_19537A6A4()
{
  free(qword_1ED442F98);
  qword_1ED442F98 = 0;
  atomic_store(0, &dword_1ED442FA0);
  return 1;
}

icu::number::impl::SymbolsWrapper *icu::number::impl::SymbolsWrapper::SymbolsWrapper(icu::number::impl::SymbolsWrapper *this, const icu::number::impl::SymbolsWrapper *a2)
{
  icu::number::impl::SymbolsWrapper::doCopyFrom(this, a2);
  return this;
}

{
  icu::number::impl::SymbolsWrapper::doCopyFrom(this, a2);
  return this;
}

_DWORD *icu::number::impl::SymbolsWrapper::doCopyFrom(_DWORD *this, const icu::number::impl::SymbolsWrapper *a2)
{
  v2 = this;
  v3 = *a2;
  *this = *a2;
  if (v3 == 2)
  {
    if (*(a2 + 1))
    {
      operator new();
    }
  }

  else
  {
    if (v3 != 1)
    {
      return this;
    }

    if (*(a2 + 1))
    {
      operator new();
    }
  }

  this = 0;
  *(v2 + 1) = 0;
  return this;
}

uint64_t icu::number::impl::SymbolsWrapper::SymbolsWrapper(uint64_t result, int *a2)
{
  v2 = *a2;
  *result = *a2;
  if ((v2 - 1) <= 1)
  {
    *(result + 8) = *(a2 + 1);
    *(a2 + 1) = 0;
  }

  return result;
}

{
  v2 = *a2;
  *result = *a2;
  if ((v2 - 1) <= 1)
  {
    *(result + 8) = *(a2 + 1);
    *(a2 + 1) = 0;
  }

  return result;
}

uint64_t icu::number::impl::SymbolsWrapper::doMoveFrom(uint64_t result, int *a2)
{
  v2 = *a2;
  *result = *a2;
  if ((v2 - 1) <= 1)
  {
    *(result + 8) = *(a2 + 1);
    *(a2 + 1) = 0;
  }

  return result;
}

icu::number::impl::SymbolsWrapper *icu::number::impl::SymbolsWrapper::operator=(icu::number::impl::SymbolsWrapper *this, const icu::number::impl::SymbolsWrapper *a2)
{
  if (this != a2)
  {
    icu::number::impl::SymbolsWrapper::doCleanup(this);
    icu::number::impl::SymbolsWrapper::doCopyFrom(this, a2);
  }

  return this;
}

void *icu::number::impl::SymbolsWrapper::doCleanup(void *this)
{
  if (*this == 2 || *this == 1)
  {
    this = this[1];
    if (this)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

icu::number::impl::SymbolsWrapper *icu::number::impl::SymbolsWrapper::operator=(icu::number::impl::SymbolsWrapper *this, icu::number::impl::SymbolsWrapper *a2)
{
  if (this != a2)
  {
    icu::number::impl::SymbolsWrapper::doCleanup(this);
    v4 = *a2;
    *this = *a2;
    if ((v4 - 1) <= 1)
    {
      *(this + 1) = *(a2 + 1);
      *(a2 + 1) = 0;
    }
  }

  return this;
}

void icu::number::impl::SymbolsWrapper::~SymbolsWrapper(icu::number::impl::SymbolsWrapper *this)
{
  icu::number::impl::SymbolsWrapper::doCleanup(this);
}

{
  icu::number::impl::SymbolsWrapper::doCleanup(this);
}

void icu::number::impl::SymbolsWrapper::setTo(icu::number::impl::SymbolsWrapper *this, const icu::DecimalFormatSymbols *a2)
{
  icu::number::impl::SymbolsWrapper::doCleanup(this);
  *this = 1;
  operator new();
}

void *icu::number::impl::SymbolsWrapper::setTo(void *a1, uint64_t a2)
{
  result = icu::number::impl::SymbolsWrapper::doCleanup(a1);
  *a1 = 2;
  a1[1] = a2;
  return result;
}

uint64_t icu::number::impl::StringProp::StringProp(uint64_t this, uint64_t a2)
{
  *this = 0;
  *(this + 8) = 0;
  *(this + 12) = 0;
  return icu::number::impl::StringProp::operator=(this, a2);
}

uint64_t icu::number::impl::StringProp::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *(a1 + 8) = 0;
    v4 = *(a2 + 12);
    *(a1 + 12) = v4;
    v5 = *a1;
    if (*a1)
    {
      free(v5);
      *a1 = 0;
      v4 = *(a2 + 12);
    }

    if (*a2)
    {
      v6 = v4 <= 0;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      v7 = malloc_type_malloc(*(a2 + 8) + 1, 0x100004077774924uLL);
      *a1 = v7;
      if (v7)
      {
        v8 = *(a2 + 8);
        *(a1 + 8) = v8;
        strncpy(v7, *a2, v8 + 1);
      }

      else
      {
        *(a1 + 12) = 7;
      }
    }
  }

  return a1;
}

{
  if (a1 != a2)
  {
    v4 = *a1;
    if (*a1)
    {
      free(v4);
    }

    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 12) = *(a2 + 12);
    *a2 = 0;
  }

  return a1;
}

uint64_t icu::number::impl::StringProp::StringProp(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 12) = 0;
  return icu::number::impl::StringProp::operator=(a1, a2);
}

uint64_t icu::number::impl::StringProp::StringProp(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 8) = *(a2 + 8);
  *(result + 12) = *(a2 + 12);
  *a2 = 0;
  return result;
}

{
  *result = *a2;
  *(result + 8) = *(a2 + 8);
  *(result + 12) = *(a2 + 12);
  *a2 = 0;
  return result;
}

void icu::number::impl::StringProp::~StringProp(void **this)
{
  v2 = *this;
  if (v2)
  {
    free(v2);
    *this = 0;
  }
}

{
  v2 = *this;
  if (v2)
  {
    free(v2);
    *this = 0;
  }
}

char *icu::number::impl::StringProp::set(uint64_t a1, const char *a2, __int16 a3)
{
  v6 = *a1;
  if (v6)
  {
    free(v6);
    *a1 = 0;
  }

  *(a1 + 8) = a3;
  result = malloc_type_malloc(a3 + 1, 0x100004077774924uLL);
  *a1 = result;
  if (result)
  {
    v8 = *(a1 + 8);
    if (v8 >= 1)
    {
      strncpy(result, a2, v8);
      result = *a1;
      LOWORD(v8) = *(a1 + 8);
    }

    result[v8] = 0;
  }

  else
  {
    *(a1 + 8) = 0;
    *(a1 + 12) = 7;
  }

  return result;
}

void sub_19537AC88(unsigned int *a1, void **a2, uint64_t a3, int a4)
{
  v8 = *a1;
  *(a3 + 484) = v8;
  if (*(a3 + 448) < v8)
  {
    if (v8 < 1)
    {
      return;
    }

    v9 = malloc_type_malloc(8 * v8, 0x100004000313F17uLL);
    if (!v9)
    {
      return;
    }

    v10 = v9;
    if (*(a3 + 452))
    {
      free(*(a3 + 440));
    }

    *(a3 + 440) = v10;
    *(a3 + 448) = v8;
    *(a3 + 452) = 1;
    LODWORD(v8) = *(a3 + 484);
  }

  if (v8 >= 1)
  {
    v11 = 0;
    do
    {
      Type = icu::Formattable::getType((*(*(a1 + 1) + 8 * v11) + 8));
      if (Type == 1)
      {
        icu::number::impl::DecimalQuantity::setToDouble(a2, *(*(*(a1 + 1) + 8 * v11) + 16));
        *(a3 + 480) = v11;
      }

      else
      {
        if (Type != 5)
        {
          abort();
        }

        *(*(a3 + 440) + 8 * v11) = *(*(*(a1 + 1) + 8 * v11) + 16);
      }

      if (a4 >= 1)
      {
        break;
      }

      ++v11;
    }

    while (v11 < *(a3 + 484));
  }
}

void *icu::number::impl::UsagePrefsHandler::UsagePrefsHandler(void *a1, uint64_t a2, icu::MeasureUnitImpl *a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6, UErrorCode *a7)
{
  *a1 = &unk_1F093FC48;
  icu::units::UnitsRouter::UnitsRouter((a1 + 1), a3, a2, a4, a5, a7);
  a1[23] = a6;
  return a1;
}

{
  *a1 = &unk_1F093FC48;
  icu::units::UnitsRouter::UnitsRouter((a1 + 1), a3, a2, a4, a5, a7);
  a1[23] = a6;
  return a1;
}

uint64_t icu::number::impl::UsagePrefsHandler::processQuantity(uint64_t a1, icu::number::impl::DecimalQuantity *a2, uint64_t a3, UErrorCode *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  result = (*(**(a1 + 184) + 16))(*(a1 + 184));
  if (*a4 <= 0)
  {
    icu::number::impl::DecimalQuantity::roundToInfinity(a2);
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    memset(v17, 0, sizeof(v17));
    memset(v16, 0, sizeof(v16));
    v9 = icu::number::impl::DecimalQuantity::toDouble(a2);
    icu::units::UnitsRouter::route(a1 + 8, (a3 + 104), a4, v16, v9);
    if (*a4 <= 0)
    {
      icu::MeasureUnitImpl::copy(v17, a4, v12);
      icu::MeasureUnitImpl::build(v12, a4, v11);
      icu::MeasureUnit::operator=(a3 + 416, v11);
      icu::MeasureUnit::~MeasureUnit(v11);
      if (v15)
      {
        free(v14);
      }

      sub_195342340(&v13);
      if (*a4 <= 0)
      {
        sub_19537AC88(&v16[2], a2, a3, *a4);
      }
    }

    if (BYTE12(v18))
    {
      free(v18);
    }

    sub_195342340(&v17[8]);
    result = sub_1951ED7C0(&v16[2]);
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void *icu::number::impl::UnitConversionHandler::UnitConversionHandler(void *a1, icu::MeasureUnitImpl *a2, uint64_t a3, UErrorCode *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F093FC70;
  icu::MeasureUnit::MeasureUnit((a1 + 1), a2);
  a1[4] = 0;
  a1[5] = a3;
  v23 = 0u;
  memset(&v22[4], 0, 48);
  memset(v22, 0, 64);
  v20 = 0u;
  v21 = 0u;
  *&v21 = v22;
  DWORD2(v21) = 8;
  *&v22[4] = &v22[4] + 13;
  DWORD2(v22[4]) = 40;
  DWORD2(v23) = 0;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  memset(v15, 0, sizeof(v15));
  v12 = 0u;
  v13 = v15;
  v14 = 8;
  v16[0] = &v16[1] + 5;
  v16[1] = 40;
  DWORD2(v19) = 0;
  v11[0] = 0;
  memset(&v11[2], 0, 72);
  v11[1] = &v11[3];
  LODWORD(v11[2]) = 8;
  icu::units::getAllConversionRates(v11, a4);
  if (*a4 <= 0)
  {
    icu::MeasureUnitImpl::forMeasureUnit(a2, &v12, a4, v8);
    operator new();
  }

  sub_19537B4F0(v11);
  if (BYTE4(v16[1]))
  {
    free(v16[0]);
  }

  sub_195342340(&v12 + 8);
  if (BYTE12(v22[4]))
  {
    free(*&v22[4]);
  }

  sub_195342340(&v20 + 8);
  v9 = *MEMORY[0x1E69E9840];
  return a1;
}

void *sub_19537B1C4(void *result, uint64_t a2, int *a3)
{
  if (*a3 <= 0)
  {
    v5 = result;
    v6 = *result;
    if (*result)
    {
      sub_19537B688(v6 + 96);
      sub_19537B724(v6 + 8);
      result = MEMORY[0x19A8B2600](v6, 0x10A0C405F6E5E1DLL);
    }

    *v5 = a2;
    if (!a2)
    {
      *a3 = 7;
    }
  }

  else if (a2)
  {
    sub_19537B688(a2 + 96);
    sub_19537B724(a2 + 8);

    JUMPOUT(0x19A8B2600);
  }

  return result;
}

uint64_t icu::number::impl::UnitConversionHandler::processQuantity(uint64_t a1, icu::number::impl::DecimalQuantity *a2, uint64_t a3, int *a4)
{
  result = (*(**(a1 + 40) + 16))(*(a1 + 40));
  if (*a4 <= 0)
  {
    icu::number::impl::DecimalQuantity::roundToInfinity(a2);
    v12 = 0;
    memset(v11, 0, sizeof(v11));
    v9 = *(a1 + 32);
    v10 = icu::number::impl::DecimalQuantity::toDouble(a2);
    icu::units::ComplexUnitsConverter::convert(v9, a3 + 104, a4, v11, v10);
    icu::MeasureUnit::operator=(a3 + 416, a1 + 8);
    if (*a4 <= 0)
    {
      sub_19537AC88(v11, a2, a3, *a4);
    }

    return sub_1951ED7C0(v11);
  }

  return result;
}

void *sub_19537B370(void *a1)
{
  *a1 = &unk_1F093FC48;
  sub_19537B5D4((a1 + 12));
  sub_1951ED7C0((a1 + 1));
  return a1;
}

void sub_19537B3BC(void *a1)
{
  *a1 = &unk_1F093FC48;
  sub_19537B5D4((a1 + 12));
  sub_1951ED7C0((a1 + 1));

  JUMPOUT(0x19A8B2600);
}

void *sub_19537B428(void *a1)
{
  *a1 = &unk_1F093FC70;
  v2 = (a1 + 1);
  sub_19537B7F8(a1 + 4);
  icu::MeasureUnit::~MeasureUnit(v2);
  return a1;
}

void sub_19537B47C(void *a1)
{
  *a1 = &unk_1F093FC70;
  v1 = (a1 + 1);
  sub_19537B7F8(a1 + 4);
  icu::MeasureUnit::~MeasureUnit(v1);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_19537B4F0(uint64_t a1)
{
  v2 = *a1;
  if (*a1 >= 1)
  {
    v3 = 0;
    do
    {
      v4 = *(*(a1 + 8) + 8 * v3);
      if (v4)
      {
        if (*(v4 + 340))
        {
          free(*(v4 + 328));
        }

        if (*(v4 + 276))
        {
          free(*(v4 + 264));
        }

        if (*(v4 + 212))
        {
          free(*(v4 + 200));
        }

        if (*(v4 + 148))
        {
          free(*(v4 + 136));
        }

        if (*(v4 + 84))
        {
          free(*(v4 + 72));
        }

        if (*(v4 + 20))
        {
          free(*(v4 + 8));
        }

        MEMORY[0x19A8B2600](v4, 0x1010C4030B1681DLL);
        v2 = *a1;
      }

      ++v3;
    }

    while (v3 < v2);
  }

  if (*(a1 + 20))
  {
    free(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_19537B5D4(uint64_t a1)
{
  v2 = *a1;
  if (*a1 >= 1)
  {
    v3 = 0;
    do
    {
      v4 = *(*(a1 + 8) + 8 * v3);
      if (v4)
      {
        if (*(v4 + 372))
        {
          free(*(v4 + 360));
        }

        sub_195342340(v4 + 272);
        icu::UnicodeString::~UnicodeString(v5, (v4 + 200));
        sub_19537B688(v4 + 104);
        sub_19537B724(v4 + 16);
        MEMORY[0x19A8B2600](v4, 0x10B2C4069A43316);
        v2 = *a1;
      }

      ++v3;
    }

    while (v3 < v2);
  }

  if (*(a1 + 20))
  {
    free(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_19537B688(uint64_t a1)
{
  v2 = *a1;
  if (*a1 >= 1)
  {
    v3 = 0;
    do
    {
      v4 = *(*(a1 + 8) + 8 * v3);
      if (v4)
      {
        if (*(v4 + 116))
        {
          free(*(v4 + 104));
        }

        sub_195342340(v4 + 16);
        MEMORY[0x19A8B2600](v4, 0x10B0C40FBBAE53CLL);
        v2 = *a1;
      }

      ++v3;
    }

    while (v3 < v2);
  }

  if (*(a1 + 20))
  {
    free(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_19537B724(uint64_t a1)
{
  v2 = *a1;
  if (*a1 >= 1)
  {
    v3 = 0;
    do
    {
      v4 = *(*(a1 + 8) + 8 * v3);
      if (v4)
      {
        if (*(v4 + 412))
        {
          free(*(v4 + 400));
        }

        if (*(v4 + 348))
        {
          free(*(v4 + 336));
        }

        if (*(v4 + 284))
        {
          free(*(v4 + 272));
        }

        sub_195342340(v4 + 184);
        if (*(v4 + 124))
        {
          free(*(v4 + 112));
        }

        sub_195342340(v4 + 24);
        MEMORY[0x19A8B2600](v4, 0x10B0C4071E12112);
        v2 = *a1;
      }

      ++v3;
    }

    while (v3 < v2);
  }

  if (*(a1 + 20))
  {
    free(*(a1 + 8));
  }

  return a1;
}

uint64_t *sub_19537B7F8(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    sub_19537B688(v2 + 96);
    sub_19537B724(v2 + 8);
    MEMORY[0x19A8B2600](v2, 0x10A0C405F6E5E1DLL);
  }

  return a1;
}

const UChar *sub_19537B84C(uint64_t a1, const char *a2, int a3, UErrorCode *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_27;
      }

      v7 = "currencyFormat";
      goto LABEL_11;
    }

    v7 = "decimalFormat";
LABEL_16:
    v9 = ures_openWithCountryFallback(0, *(a1 + 40), 0, a4);
    goto LABEL_17;
  }

  if (a3 == 4)
  {
    v7 = "scientificFormat";
    goto LABEL_16;
  }

  if (a3 != 3)
  {
    if (a3 == 2)
    {
      v7 = "accountingFormat";
      goto LABEL_11;
    }

LABEL_27:
    abort();
  }

  v7 = "percentFormat";
LABEL_11:
  memset(v24, 0, sizeof(v24));
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  *__dst = 0u;
  v17 = 0u;
  if (!ulocimp_setRegionToSupplementalRegion(*(a1 + 40)))
  {
    strcpy(__dst, *(a1 + 40));
  }

  v9 = ures_open(0, __dst, a4);
LABEL_17:
  v10 = v9;
  if (*a4 > 0)
  {
    goto LABEL_19;
  }

  *__dst = 0;
  v11 = sub_19537BA40(v9, a2, v7, a4, __dst);
  if (*a4 > 0)
  {
    goto LABEL_19;
  }

  v12 = v11;
  if (*__dst >= 1 && strcmp("latn", a2))
  {
    *__dst = 0;
    v15 = sub_19537BA40(v10, "latn", v7, a4, __dst);
    if (*a4 > 0)
    {
LABEL_19:
      v12 = &word_19549D930;
      goto LABEL_20;
    }

    v12 = v15;
  }

LABEL_20:
  if (v10)
  {
    ures_close(v10);
  }

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

const UChar *sub_19537BA40(uint64_t a1, const char *a2, const char *a3, UErrorCode *a4, UErrorCode *a5)
{
  v15[8] = *MEMORY[0x1E69E9840];
  memset(&v15[1], 0, 56);
  v15[0] = &v15[1] + 5;
  LODWORD(v15[1]) = 40;
  icu::StringPiece::StringPiece(&v13, "NumberElements/");
  icu::CharString::append(v15, v13, v14, a4);
  icu::StringPiece::StringPiece(&v13, a2);
  icu::CharString::append(v15, v13, v14, a4);
  icu::StringPiece::StringPiece(&v13, "/patterns/");
  icu::CharString::append(v15, v13, v14, a4);
  icu::StringPiece::StringPiece(&v13, a3);
  icu::CharString::append(v15, v13, v14, a4);
  if (*a4 <= 0)
  {
    StringByKeyWithFallback = ures_getStringByKeyWithFallback(a1, v15[0], 0, a5);
  }

  else
  {
    StringByKeyWithFallback = &word_19549D930;
  }

  if (BYTE4(v15[1]))
  {
    free(v15[0]);
  }

  v11 = *MEMORY[0x1E69E9840];
  return StringByKeyWithFallback;
}

uint64_t sub_19537BBA8(uint64_t a1)
{
  v7 = 0;
  v1 = ures_open(0, *(a1 + 40), &v7);
  v6 = 0;
  StringByKeyWithFallback = ures_getStringByKeyWithFallback(v1, "NumberElements/minimumGroupingDigits", &v6, &v7);
  if (v7 > 0 || v6 != 1)
  {
    v4 = 1;
    if (!v1)
    {
      return v4;
    }

    goto LABEL_8;
  }

  v4 = *StringByKeyWithFallback - 48;
  if (v1)
  {
LABEL_8:
    ures_close(v1);
  }

  return v4;
}

icu::number::impl::DecNum *icu::number::impl::DecNum::DecNum(icu::number::impl::DecNum *this)
{
  *this = this + 16;
  *(this + 2) = 34;
  *(this + 12) = 0;
  uprv_decContextDefault(this + 64, 0);
  uprv_decContextSetRounding(this + 64, 3);
  *(this + 20) = 0;
  return this;
}

{
  *this = this + 16;
  *(this + 2) = 34;
  *(this + 12) = 0;
  uprv_decContextDefault(this + 64, 0);
  uprv_decContextSetRounding(this + 64, 3);
  *(this + 20) = 0;
  return this;
}

icu::number::impl::DecNum *icu::number::impl::DecNum::DecNum(uint64_t **this, uint64_t **a2, UErrorCode *a3)
{
  v5 = (this + 2);
  *this = (this + 2);
  *(this + 2) = 34;
  *(this + 12) = 0;
  v6 = *(a2 + 76);
  *(this + 4) = *(a2 + 4);
  *(this + 76) = v6;
  v7 = *(this + 16);
  if (v7 >= 35)
  {
    v9 = malloc_type_malloc(v7 + 12, 0x1000040CBA68D63uLL);
    if (!v9)
    {
      *a3 = U_MEMORY_ALLOCATION_ERROR;
      return this;
    }

    v5 = v9;
    v10 = **this;
    *(v9 + 2) = *(*this + 2);
    *v9 = v10;
    if (*(this + 12))
    {
      free(*this);
    }

    *this = v5;
    *(this + 2) = v7;
    *(this + 12) = 1;
  }

  v11 = **a2;
  *(v5 + 2) = *(*a2 + 2);
  *v5 = v11;
  memcpy(*this + 12, *a2 + 12, *(a2 + 2));
  return this;
}

void icu::number::impl::DecNum::setTo(void **a1, const char *a2, int a3, UErrorCode *a4)
{
  v8[8] = *MEMORY[0x1E69E9840];
  memset(&v8[1], 0, 56);
  v8[0] = &v8[1] + 5;
  LODWORD(v8[1]) = 40;
  icu::CharString::append(v8, a2, a3, a4);
  if (*a4 <= 0)
  {
    icu::number::impl::DecNum::_setTo(a1, v8[0], a3, a4);
  }

  if (BYTE4(v8[1]))
  {
    free(v8[0]);
  }

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t icu::number::impl::DecNum::_setTo(void **this, char *a2, int a3, UErrorCode *a4)
{
  if (a3 < 35)
  {
    v7 = 34;
  }

  else
  {
    v7 = a3;
    v8 = malloc_type_malloc((a3 + 12), 0x1000040CBA68D63uLL);
    if (v8)
    {
      v9 = v8;
      v10 = **this;
      v8[2] = *(*this + 2);
      *v8 = v10;
      if (*(this + 12))
      {
        free(*this);
      }

      *this = v9;
      *(this + 2) = v7;
      *(this + 12) = 1;
    }
  }

  *(this + 16) = v7;
  result = uprv_decNumberFromString(*this, a2, (this + 8));
  v12 = *(this + 21);
  if (v12)
  {
    v13 = U_DECIMAL_NUMBER_SYNTAX_ERROR;
  }

  else
  {
    if (!v12)
    {
      return result;
    }

    v13 = U_UNSUPPORTED_ERROR;
  }

  *a4 = v13;
  return result;
}

uint64_t icu::number::impl::DecNum::setTo(void **this, char *__s, UErrorCode *a3)
{
  v6 = strlen(__s);

  return icu::number::impl::DecNum::_setTo(this, __s, v6, a3);
}

void **icu::number::impl::DecNum::setTo(void **this, double a2, UErrorCode *a3)
{
  v4 = HIBYTE(a2);
  v12[2] = *MEMORY[0x1E69E9840];
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v5 = this;
    *v11 = 0;
    v12[0] = 0;
    *(v12 + 7) = 0;
    v10 = 0;
    v8 = 0;
    v9 = 0;
    icu::double_conversion::DoubleToStringConverter::DoubleToAscii(0, 0, v11, 0x17u, &v10, &v9, &v8, a2);
    this = icu::number::impl::DecNum::_setTo(v5, v11, v9, a3);
    v6 = *v5;
    v6[1] = v8 - v9 + *(*v5 + 1);
    *(v6 + 8) |= v4 & 0x80;
  }

  else
  {
    *a3 = U_UNSUPPORTED_ERROR;
  }

  v7 = *MEMORY[0x1E69E9840];
  return this;
}

void icu::number::impl::DecNum::setTo(void **this, char *a2, signed int a3, int a4, int a5, UErrorCode *a6)
{
  if (a3 < 35)
  {
    v13 = 34;
  }

  else
  {
    v12 = malloc_type_malloc((a3 + 12), 0x1000040CBA68D63uLL);
    v13 = a3;
    if (v12)
    {
      v14 = v12;
      v15 = **this;
      v12[2] = *(*this + 2);
      *v12 = v15;
      if (*(this + 12))
      {
        free(*this);
      }

      *this = v14;
      *(this + 2) = a3;
      *(this + 12) = 1;
      v13 = a3;
    }
  }

  *(this + 16) = v13;
  if ((a3 - 1000000000) < 0xC4653601)
  {
    v16 = U_UNSUPPORTED_ERROR;
LABEL_16:
    *a6 = v16;
    return;
  }

  v16 = U_UNSUPPORTED_ERROR;
  if (1000000000 - a3 < a4 || -999999998 - a3 > a4)
  {
    goto LABEL_16;
  }

  v17 = *this;
  *v17 = a3;
  v17[1] = a4;
  if (a5)
  {
    v18 = 0x80;
  }

  else
  {
    v18 = 0;
  }

  *(v17 + 8) = v18;
  uprv_decNumberSetBCD(v17, a2, a3);
  if (*(this + 21))
  {
    v16 = U_INTERNAL_PROGRAM_ERROR;
    goto LABEL_16;
  }
}

uint64_t icu::number::impl::DecNum::multiplyBy(icu::number::impl::DecNum *this, const icu::number::impl::DecNum *a2, UErrorCode *a3)
{
  result = uprv_decNumberMultiply(*this, *this, *a2, this + 16);
  if (*(this + 21))
  {
    *a3 = U_INTERNAL_PROGRAM_ERROR;
  }

  return result;
}

uint64_t icu::number::impl::DecNum::divideBy(icu::number::impl::DecNum *this, const icu::number::impl::DecNum *a2, UErrorCode *a3)
{
  result = uprv_decNumberDivide(*this, *this, *a2, this + 16);
  if (*(this + 21))
  {
    v6 = (*(this + 21) & 0x20) == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    *a3 = U_INTERNAL_PROGRAM_ERROR;
  }

  return result;
}

void icu::number::impl::DecNum::toString(icu::number::impl::DecNum *this, icu::ByteSink *a2, UErrorCode *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = *a3;
  if (v4 <= 0)
  {
    v7 = **this;
    v11 = 0u;
    v12 = 0u;
    *__s = 0u;
    sub_19537C410(__s, (v7 + 14), v4);
    if (*a3 <= 0)
    {
      uprv_decNumberToString(*this, __s[0]);
      v8 = strlen(__s[0]);
      (*(*a2 + 16))(a2, __s[0], v8);
    }

    if (BYTE4(__s[1]))
    {
      free(__s[0]);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19537C410(uint64_t a1, size_t size, int a3)
{
  *a1 = a1 + 13;
  *(a1 + 8) = 30;
  *(a1 + 12) = 0;
  if (size >= 31 && a3 <= 0)
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

double icu::NumberFormat::NumberFormat(icu::NumberFormat *this)
{
  v1 = icu::Format::Format(this);
  *v1 = &unk_1F093FD08;
  *(v1 + 322) = 1;
  *&result = 0x177359400;
  *(v1 + 324) = xmmword_195490FB0;
  *(v1 + 340) = 0;
  *(v1 + 352) = 256;
  return result;
}

void icu::SharedNumberFormat::~SharedNumberFormat(icu::SharedNumberFormat *this)
{
  *this = &unk_1F093FE48;
  v2 = *(this + 3);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  icu::SharedObject::~SharedObject(this);
}

{
  icu::SharedNumberFormat::~SharedNumberFormat(this);

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::NumberFormat::NumberFormat(icu::NumberFormat *this, const icu::NumberFormat *a2)
{
  v3 = icu::Format::Format(this, a2);
  *v3 = &unk_1F093FD08;

  return icu::NumberFormat::operator=(v3, a2);
}

uint64_t icu::NumberFormat::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    icu::Format::operator=(a1, a2);
    *(a1 + 322) = *(a2 + 322);
    *(a1 + 324) = *(a2 + 324);
    *(a1 + 340) = *(a2 + 340);
    u_strncpy((a1 + 342), (a2 + 342), 3);
    *(a1 + 348) = 0;
    *(a1 + 341) = *(a2 + 341);
    *(a1 + 352) = *(a2 + 352);
  }

  return a1;
}

BOOL icu::NumberFormat::operator==(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = icu::Format::operator==(a1, a2);
  if (result)
  {
    return *(a1 + 324) == *(a2 + 324) && *(a1 + 328) == *(a2 + 328) && *(a1 + 332) == *(a2 + 332) && *(a1 + 336) == *(a2 + 336) && *(a1 + 322) == *(a2 + 322) && *(a1 + 340) == *(a2 + 340) && !u_strcmp((a1 + 342), (a2 + 342)) && *(a1 + 341) == *(a2 + 341) && *(a1 + 352) == *(a2 + 352);
  }

  return result;
}

icu::UnicodeString *icu::NumberFormat::format(icu::NumberFormat *this, double a2, icu::UnicodeString *a3, icu::FieldPositionIterator *a4, UErrorCode *a5)
{
  result = a3;
  if (*a5 <= 0)
  {
    *a5 = U_UNSUPPORTED_ERROR;
  }

  return result;
}

icu::UnicodeString *icu::NumberFormat::format(icu::NumberFormat *this, int a2, icu::UnicodeString *a3, icu::FieldPositionIterator *a4, UErrorCode *a5)
{
  result = a3;
  if (*a5 <= 0)
  {
    *a5 = U_UNSUPPORTED_ERROR;
  }

  return result;
}

icu::UnicodeString *icu::NumberFormat::format(icu::NumberFormat *this, uint64_t a2, icu::UnicodeString *a3, icu::FieldPositionIterator *a4, UErrorCode *a5)
{
  result = a3;
  if (*a5 <= 0)
  {
    *a5 = U_UNSUPPORTED_ERROR;
  }

  return result;
}

icu::UnicodeString *icu::NumberFormat::format(icu::NumberFormat *this, double a2, icu::UnicodeString *a3, icu::FieldPosition *a4, UErrorCode *a5)
{
  if (*a5 <= 0)
  {
    return (*(*this + 64))(this, a3, a4, a2);
  }

  else
  {
    return a3;
  }
}

icu::UnicodeString *icu::NumberFormat::format(icu::NumberFormat *this, uint64_t a2, icu::UnicodeString *a3, icu::FieldPosition *a4, UErrorCode *a5)
{
  if (*a5 <= 0)
  {
    return (*(*this + 88))(this, a2, a3, a4);
  }

  else
  {
    return a3;
  }
}

{
  if (*a5 <= 0)
  {
    return (*(*this + 112))(this, a2, a3, a4);
  }

  else
  {
    return a3;
  }
}

uint64_t icu::NumberFormat::format(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  v16 = *MEMORY[0x1E69E9840];
  memset(v15, 0, sizeof(v15));
  icu::Formattable::Formattable(v15);
  icu::Formattable::setDecimalNumber(v15, a2, a3, a6);
  (*(*a1 + 48))(a1, v15, a4, a5, a6);
  icu::Formattable::~Formattable(v12, v15);
  v13 = *MEMORY[0x1E69E9840];
  return a4;
}

uint64_t sub_19537C968(uint64_t a1, int a2, icu::Formattable *this)
{
  *a1 = this;
  *(a1 + 16) = 0;
  Object = icu::Formattable::getObject(this);
  {
    v7 = v6;
    Currency = icu::CurrencyAmount::getCurrency(v6);
    u_strcpy((a1 + 8), (Currency + 20));
    *a1 = v7 + 8;
    *(a1 + 16) = 1;
  }

  else
  {
    *(a1 + 8) = 0;
  }

  return a1;
}

icu::UnicodeString *icu::NumberFormat::format(icu::NumberFormat *this, const icu::number::impl::DecimalQuantity *a2, icu::UnicodeString *a3, icu::FieldPositionIterator *a4, UErrorCode *a5)
{
  if (*a5 <= 0)
  {
    v9 = icu::number::impl::DecimalQuantity::toDouble(a2);
    (*(*this + 80))(this, a3, a4, a5, v9);
  }

  return a3;
}

icu::UnicodeString *icu::NumberFormat::format(icu::NumberFormat *this, const icu::number::impl::DecimalQuantity *a2, icu::UnicodeString *a3, icu::FieldPosition *a4, UErrorCode *a5)
{
  if (*a5 <= 0)
  {
    v9 = icu::number::impl::DecimalQuantity::toDouble(a2);
    (*(*this + 72))(this, a3, a4, a5, v9);
  }

  return a3;
}

icu::UnicodeString *icu::NumberFormat::format(const UChar *this, const icu::Formattable *a2, icu::UnicodeString *a3, icu::FieldPosition *a4, UErrorCode *a5)
{
  if (*a5 <= 0)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    sub_19537C968(&v14, a2, a2);
    v10 = v14;
    if (v16 && u_strcmp(&v15, this + 171))
    {
      v11 = (*(*this + 32))(this);
      (*(*v11 + 248))(v11, &v15, a5);
      a3 = (*(*v11 + 40))(v11, v10, a3, a4, a5);
      (*(*v11 + 8))(v11);
    }

    else if (icu::Formattable::isNumeric(v10) && (v12 = *(v10 + 4)) != 0)
    {
      (*(*this + 152))(this, v12, a3, a4, a5);
    }

    else
    {
      Type = icu::Formattable::getType(v10);
      switch(Type)
      {
        case 5:
          (*(*this + 120))(this, *(v10 + 1), a3, a4, a5);
          break;
        case 2:
          (*(*this + 96))(this, *(v10 + 2), a3, a4, a5);
          break;
        case 1:
          (*(*this + 72))(this, a3, a4, a5, *(v10 + 1));
          break;
        default:
          *a5 = U_INVALID_FORMAT_ERROR;
          break;
      }
    }
  }

  return a3;
}

icu::UnicodeString *icu::NumberFormat::format(const UChar *this, const icu::Formattable *a2, icu::UnicodeString *a3, icu::FieldPositionIterator *a4, UErrorCode *a5)
{
  if (*a5 <= 0)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    sub_19537C968(&v14, a2, a2);
    v10 = v14;
    if (v16 && u_strcmp(&v15, this + 171))
    {
      v11 = (*(*this + 32))(this);
      (*(*v11 + 248))(v11, &v15, a5);
      a3 = (*(*v11 + 48))(v11, v10, a3, a4, a5);
      (*(*v11 + 8))(v11);
    }

    else if (icu::Formattable::isNumeric(v10) && (v12 = *(v10 + 4)) != 0)
    {
      (*(*this + 144))(this, v12, a3, a4, a5);
    }

    else
    {
      Type = icu::Formattable::getType(v10);
      switch(Type)
      {
        case 5:
          (*(*this + 128))(this, *(v10 + 1), a3, a4, a5);
          break;
        case 2:
          (*(*this + 104))(this, *(v10 + 2), a3, a4, a5);
          break;
        case 1:
          (*(*this + 80))(this, a3, a4, a5, *(v10 + 1));
          break;
        default:
          *a5 = U_INVALID_FORMAT_ERROR;
          break;
      }
    }
  }

  return a3;
}

uint64_t icu::NumberFormat::format(icu::NumberFormat *this, double a2, icu::UnicodeString *a3)
{
  v5[2] = 0;
  v5[0] = &unk_1F093AD90;
  v5[1] = 0xFFFFFFFFLL;
  v3 = (*(*this + 64))(this, a3, v5, a2);
  icu::FieldPosition::~FieldPosition(v5);
  return v3;
}

uint64_t icu::NumberFormat::format(icu::NumberFormat *this, uint64_t a2, icu::UnicodeString *a3)
{
  v5[2] = 0;
  v5[0] = &unk_1F093AD90;
  v5[1] = 0xFFFFFFFFLL;
  v3 = (*(*this + 88))(this, a2, a3, v5);
  icu::FieldPosition::~FieldPosition(v5);
  return v3;
}

{
  v5[2] = 0;
  v5[0] = &unk_1F093AD90;
  v5[1] = 0xFFFFFFFFLL;
  v3 = (*(*this + 112))(this, a2, a3, v5);
  icu::FieldPosition::~FieldPosition(v5);
  return v3;
}

void icu::NumberFormat::parse(icu::NumberFormat *this, const icu::UnicodeString *a2, icu::Formattable *a3, UErrorCode *a4)
{
  if (*a4 <= 0)
  {
    v9 = v4;
    v10 = v5;
    v7 = &unk_1F0932C70;
    v8 = 0xFFFFFFFF00000000;
    (*(*this + 160))(this, a2, a3, &v7);
    if (!v8)
    {
      *a4 = U_INVALID_FORMAT_ERROR;
    }

    icu::ParsePosition::~ParsePosition(&v7);
  }
}

uint64_t icu::NumberFormat::parseCurrency(icu::NumberFormat *this, const icu::UnicodeString *a2, icu::ParsePosition *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  memset(v12, 0, sizeof(v12));
  icu::Formattable::Formattable(v12);
  v6 = *(a3 + 2);
  (*(*this + 160))(this, a2, v12, a3);
  v7 = *(a3 + 2);
  if (v7 != v6)
  {
    v11 = 0;
    v10 = 0;
    (*(*this + 296))(this, &v11, &v10);
    v7 = v10;
    if (v10 <= 0)
    {
      operator new();
    }
  }

  icu::Formattable::~Formattable(v7, v12);
  v8 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t icu::NumberFormat::createInstance(icu::NumberFormat *this, UErrorCode *a2)
{
  Default = icu::Locale::getDefault(this);

  return icu::NumberFormat::createInstance(Default, 1u, this);
}

uint64_t icu::NumberFormat::createInstance(char **a1, unsigned int a2, icu::UnifiedCache *this)
{
  if (a2 == 1)
  {
    if (*this > 0)
    {
      return 0;
    }

    v7 = 0;
    sub_19537DB10(a1, &v7, this);
    if (*this > 0)
    {
      return 0;
    }

    v6 = v7;
    v4 = (*(**(v7 + 24) + 32))(*(v7 + 24));
    icu::SharedObject::removeRef(v6);
    if (!v4)
    {
      *this = 7;
    }

    return v4;
  }

  else
  {

    return icu::NumberFormat::internalCreateInstance(a1, a2, this);
  }
}

uint64_t icu::NumberFormat::createCurrencyInstance(icu::NumberFormat *this, UErrorCode *a2)
{
  Default = icu::Locale::getDefault(this);

  return icu::NumberFormat::internalCreateInstance(Default, 2u, this);
}

uint64_t icu::NumberFormat::createPercentInstance(icu::NumberFormat *this, UErrorCode *a2)
{
  Default = icu::Locale::getDefault(this);

  return icu::NumberFormat::makeInstance(Default, 3u, 0, this);
}

uint64_t icu::NumberFormat::createScientificInstance(icu::NumberFormat *this, UErrorCode *a2)
{
  Default = icu::Locale::getDefault(this);

  return icu::NumberFormat::makeInstance(Default, 4u, 0, this);
}

uint64_t icu::NumberFormat::internalCreateInstance(char **this, unsigned int a2, UErrorCode *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a2 == 2)
  {
    *v10 = 0u;
    v11 = 0u;
    v9 = U_ZERO_ERROR;
    KeywordValue = icu::Locale::getKeywordValue(this, "cf", v10, 32, &v9);
    a2 = 2;
    if (v9 <= U_ZERO_ERROR && KeywordValue >= 1)
    {
      if (*v10 == 0x746E756F636361)
      {
        a2 = 12;
      }

      else
      {
        a2 = 2;
      }
    }
  }

  result = icu::NumberFormat::makeInstance(this, a2, 0, a3);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t icu::NumberFormat::createSharedInstance(uint64_t a1, int a2, icu::UnifiedCache *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  if (a2 == 1)
  {
    v6[1] = v3;
    v6[2] = v4;
    v6[0] = 0;
    sub_19537DB10(a1, v6, a3);
    return v6[0];
  }

  else
  {
    result = 0;
    *a3 = 16;
  }

  return result;
}

uint64_t icu::NumberFormat::setMaximumIntegerDigits(icu::NumberFormat *this, uint64_t a2)
{
  v3 = uprv_min(a2, 2000000000);
  result = uprv_max(0, v3);
  *(this + 81) = result;
  if (*(this + 82) > result)
  {
    *(this + 82) = result;
  }

  return result;
}

uint64_t icu::NumberFormat::setMinimumIntegerDigits(icu::NumberFormat *this, uint64_t a2)
{
  v3 = uprv_min(a2, 127);
  result = uprv_max(0, v3);
  *(this + 82) = result;
  if (result > *(this + 81))
  {
    *(this + 81) = result;
  }

  return result;
}

uint64_t icu::NumberFormat::setMaximumFractionDigits(icu::NumberFormat *this, uint64_t a2)
{
  v3 = uprv_min(a2, 2000000000);
  result = uprv_max(0, v3);
  *(this + 83) = result;
  if (result < *(this + 84))
  {
    *(this + 84) = result;
  }

  return result;
}

uint64_t icu::NumberFormat::setMinimumFractionDigits(icu::NumberFormat *this, uint64_t a2)
{
  v3 = uprv_min(a2, 127);
  result = uprv_max(0, v3);
  *(this + 84) = result;
  if (*(this + 83) < result)
  {
    *(this + 83) = result;
  }

  return result;
}

uint64_t icu::NumberFormat::setDateSettings(uint64_t this)
{
  *(this + 322) = 0;
  *(this + 340) = 1;
  *(this + 336) = 0;
  if ((*(this + 332) & 0x80000000) != 0)
  {
    *(this + 332) = 0;
  }

  return this;
}

UChar *icu::NumberFormat::setCurrency(UChar *result, const UChar *a2, int *a3)
{
  if (*a3 <= 0)
  {
    v3 = result;
    result += 171;
    if (a2)
    {
      u_strncpy(result, a2, 3);
      result = v3 + 174;
    }

    *result = 0;
  }

  return result;
}

UChar *icu::NumberFormat::getEffectiveCurrency(uint64_t a1, UChar *dst, int *a3)
{
  if (*(a1 + 342))
  {
    result = u_strncpy(dst, (a1 + 342), 3);
    dst[3] = 0;
  }

  else
  {
    LocaleID = icu::Format::getLocaleID(a1, 1, a3);
    if (!LocaleID)
    {
      LocaleID = uloc_getDefault(0);
    }

    return ucurr_forLocale(LocaleID, dst, 4, a3);
  }

  return result;
}

uint64_t icu::NumberFormat::setContext(uint64_t result, int a2, int *a3)
{
  if (*a3 <= 0)
  {
    if ((a2 & 0xFFFFFF00) == 0x100)
    {
      *(result + 352) = a2;
    }

    else
    {
      *a3 = 1;
    }
  }

  return result;
}

uint64_t icu::NumberFormat::getContext(uint64_t a1, int a2, int *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  if (a2 == 1)
  {
    return *(a1 + 352);
  }

  result = 0;
  *a3 = 1;
  return result;
}

uint64_t icu::LocaleCacheKey<icu::SharedNumberFormat>::createObject(uint64_t a1, uint64_t a2, UErrorCode *a3)
{
  v7 = *MEMORY[0x1E69E9840];
  icu::Locale::Locale(v7, v6, *(a1 + 56), 0, 0, 0);
  icu::NumberFormat::makeInstance(v6, 1u, 0, a3);
  icu::Locale::~Locale(v6);
  if (*a3 <= 0)
  {
    operator new();
  }

  v4 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_19537DB10(uint64_t a1, UErrorCode *a2, icu::UnifiedCache *this)
{
  v12[28] = *MEMORY[0x1E69E9840];
  Instance = icu::UnifiedCache::getInstance(this, a2);
  if (*this <= 0)
  {
    v7 = Instance;
    v10 = 0;
    v11 = 0;
    v9 = &unk_1F093FEA0;
    icu::Locale::Locale(v12, a1);
    sub_1952C1AD0(v7, &v9, 0, a2, this);
    v9 = &unk_1F093FEA0;
    icu::Locale::~Locale(v12);
    icu::CacheKeyBase::~CacheKeyBase(&v9);
  }

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t icu::NumberFormat::makeInstance(char **this, unsigned int a2, UErrorCode *a3, UErrorCode *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*a4 <= 0)
  {
    if (a2 >= 0x11)
    {
      v5 = 1;
LABEL_9:
      *a4 = v5;
      goto LABEL_10;
    }

    if (a2 == 8)
    {
      v6 = 1;
    }

    else
    {
      v6 = a2;
    }

    if (((0x13D1EuLL >> v6) & 1) == 0)
    {
      v5 = 16;
      goto LABEL_9;
    }

    v9 = a3;
    if (atomic_load_explicit(dword_1ED443000, memory_order_acquire) != 2 && icu::umtx_initImplPreInit(dword_1ED443000))
    {
      sub_19537E434();
      icu::umtx_initImplPostInit(dword_1ED443000);
    }

    if (qword_1ED442FA8)
    {
      v11 = icu::Locale::hashCode(this);
      umtx_lock(&unk_1ED442FB0);
      Instance = uhash_iget(qword_1ED442FA8, v11);
      if (!Instance)
      {
        Instance = icu::NumberingSystem::createInstance(this, a4, v12);
        uhash_iput(qword_1ED442FA8, v11, Instance, a4);
      }

      umtx_unlock(&unk_1ED442FB0);
      v14 = 0;
    }

    else
    {
      v14 = icu::NumberingSystem::createInstance(this, a4, a3);
      Instance = v14;
    }

    if (*a4 <= 0)
    {
      if (v9 && icu::NumberingSystem::isAlgorithmic(Instance))
      {
        *a4 = U_UNSUPPORTED_ERROR;
      }

      else
      {
        v18 = 0u;
        v21 = 0;
        v20 = 0u;
        v19 = 0u;
        v17 = &unk_1F0935D00;
        LOWORD(v18) = 2;
        v15 = ures_open(0, this[5], a4);
        v16 = *a4;
        if (v16 <= 0)
        {
          operator new();
        }

        if (v15)
        {
          ures_close(v15);
        }

        icu::UnicodeString::~UnicodeString(v16, &v17);
      }
    }

    if (v14)
    {
      (*(*v14 + 8))(v14);
    }
  }

LABEL_10:
  v7 = *MEMORY[0x1E69E9840];
  return 0;
}

int32x2_t *sub_19537E434()
{
  sub_195400588(0x18u, sub_19537E664);
  v1 = 0;
  result = uhash_open(uhash_hashLong, uhash_compareLong, 0, &v1);
  qword_1ED442FA8 = result;
  if (v1 < 1)
  {
    return uhash_setValueDeleter(result, sub_19537E6A4);
  }

  qword_1ED442FA8 = 0;
  return result;
}

uint64_t sub_19537E4C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  icu::UnicodeString::unBogus(a1);
  if (*(a1 + 8) < 0)
  {
    v6 = *(a1 + 12);
  }

  else
  {
    v6 = *(a1 + 8) >> 5;
  }

  return icu::UnicodeString::doReplace(a1, 0, v6, a2, 0, a3);
}

uint64_t sub_19537E538(uint64_t a1, uint64_t a2, int a3)
{
  icu::UnicodeString::unBogus(a1);
  if (a3 < 0)
  {
    v6 = 0;
    goto LABEL_7;
  }

  if (*(a2 + 8) < 0)
  {
    v6 = *(a2 + 12);
    if (v6 >= a3)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v6 = *(a2 + 8) >> 5;
  if (v6 < a3)
  {
LABEL_7:
    a3 = v6;
  }

LABEL_8:
  if (*(a1 + 8) < 0)
  {
    v7 = *(a1 + 12);
  }

  else
  {
    v7 = *(a1 + 8) >> 5;
  }

  v8 = *(a2 + 8);
  v9 = v8;
  v10 = v8 >> 5;
  if (v9 < 0)
  {
    v10 = *(a2 + 12);
  }

  return icu::UnicodeString::doReplace(a1, 0, v7, a2, a3, v10 - a3);
}

uint64_t sub_19537E5F8(uint64_t a1, uint64_t a2)
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

uint64_t sub_19537E664()
{
  atomic_store(0, &unk_1ED443000);
  if (qword_1ED442FA8)
  {
    uhash_close(qword_1ED442FA8);
    qword_1ED442FA8 = 0;
  }

  return 1;
}

uint64_t sub_19537E6A4(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_19537E6D0(uint64_t a1)
{
  *a1 = &unk_1F093FEA0;
  icu::Locale::~Locale((a1 + 16));

  icu::CacheKeyBase::~CacheKeyBase(a1);
}

void sub_19537E724(uint64_t a1)
{
  *a1 = &unk_1F093FEA0;
  icu::Locale::~Locale((a1 + 16));
  icu::CacheKeyBase::~CacheKeyBase(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_19537E78C(uint64_t a1)
{
  v2 = strlen(("N3icu18SharedNumberFormatE" & 0x7FFFFFFFFFFFFFFFLL));
  v3 = ustr_hashCharsN(("N3icu18SharedNumberFormatE" & 0x7FFFFFFFFFFFFFFFLL), v2);
  return icu::Locale::hashCode((a1 + 16)) + 37 * v3;
}

char *sub_19537E854(uint64_t a1, char *__dst, int a3)
{
  result = strncpy(__dst, *(a1 + 56), a3);
  __dst[a3 - 1] = 0;
  return result;
}

BOOL sub_19537E890(void *a1, void *a2)
{
  result = sub_1952C1D2C(a1, a2);
  if (result)
  {

    return icu::Locale::operator==((a1 + 2), (a2 + 2));
  }

  return result;
}

icu::numparse::impl::SymbolMatcher *sub_19537E8E0(uint64_t a1, int a2, int a3, UErrorCode *a4)
{
  v8 = *(a1 + 80);
  if (v8 && *(a1 + 56) >= 1)
  {
    if ((*(a1 + 60) & 0x80000000) == 0)
    {
      Set = icu::numparse::impl::SymbolMatcher::getSet(*(a1 + 80));
      if (icu::UnicodeSet::contains(Set, *(a1 + 60)))
      {
        goto LABEL_7;
      }

      v8 = *(a1 + 80);
    }

    (*(*a1 + 24))(a1, v8);
  }

LABEL_7:
  if (a2 <= -6)
  {
    if ((a2 + 10) < 5)
    {
      v10 = icu::numparse::impl::AffixTokenMatcherWarehouse::currency(*(a1 + 72), a4);
LABEL_10:
      result = (*(*a1 + 24))(a1, v10);
LABEL_11:
      *(a1 + 60) = a2;
      return result;
    }

    goto LABEL_30;
  }

  if (a2 <= -3)
  {
    if (a2 == -5)
    {
      v10 = icu::numparse::impl::AffixTokenMatcherWarehouse::permille(*(a1 + 72));
      goto LABEL_10;
    }

    if (a2 == -4)
    {
      v10 = icu::numparse::impl::AffixTokenMatcherWarehouse::percent(*(a1 + 72));
      goto LABEL_10;
    }

    goto LABEL_30;
  }

  if (a2 == -2)
  {
    v10 = icu::numparse::impl::AffixTokenMatcherWarehouse::plusSign(*(a1 + 72));
    goto LABEL_10;
  }

  if (a2)
  {
    if (a2 == -1)
    {
      v10 = icu::numparse::impl::AffixTokenMatcherWarehouse::minusSign(*(a1 + 72));
      goto LABEL_10;
    }

LABEL_30:
    abort();
  }

  result = *(a1 + 80);
  if (result)
  {
    v12 = icu::numparse::impl::SymbolMatcher::getSet(result);
    result = icu::UnicodeSet::contains(v12, a3);
    if (result)
    {
LABEL_27:
      a2 = a3;
      goto LABEL_11;
    }
  }

  if (*a4 <= 0)
  {
    result = sub_19537F1B8(*(a1 + 72) + 1200);
    if (!result)
    {
      *a4 = U_MEMORY_ALLOCATION_ERROR;
      return result;
    }

    result = (*(*a1 + 24))(a1, result);
    goto LABEL_27;
  }

  return result;
}

uint64_t icu::numparse::impl::AffixTokenMatcherWarehouse::minusSign(icu::numparse::impl::AffixTokenMatcherWarehouse *this)
{
  v8 = *MEMORY[0x1E69E9840];
  icu::numparse::impl::MinusSignMatcher::MinusSignMatcher(&v5, *(*this + 8), 1);
  icu::UnicodeString::operator=((this + 16), v6);
  *(this + 10) = v6[8];
  v2 = v7;
  *(this + 88) = v7;
  v5 = &unk_1F0940478;
  icu::UnicodeString::~UnicodeString(v2, v6);
  icu::numparse::impl::NumberParseMatcher::~NumberParseMatcher(&v5);
  v3 = *MEMORY[0x1E69E9840];
  return this + 8;
}

uint64_t icu::numparse::impl::AffixTokenMatcherWarehouse::plusSign(icu::numparse::impl::AffixTokenMatcherWarehouse *this)
{
  v8 = *MEMORY[0x1E69E9840];
  icu::numparse::impl::PlusSignMatcher::PlusSignMatcher(&v5, *(*this + 8), 1);
  icu::UnicodeString::operator=((this + 104), v6);
  *(this + 21) = v6[8];
  v2 = v7;
  *(this + 176) = v7;
  v5 = &unk_1F0940478;
  icu::UnicodeString::~UnicodeString(v2, v6);
  icu::numparse::impl::NumberParseMatcher::~NumberParseMatcher(&v5);
  v3 = *MEMORY[0x1E69E9840];
  return this + 96;
}

uint64_t icu::numparse::impl::AffixTokenMatcherWarehouse::percent(icu::numparse::impl::AffixTokenMatcherWarehouse *this)
{
  v8 = *MEMORY[0x1E69E9840];
  icu::numparse::impl::PercentMatcher::PercentMatcher(&v5, *(*this + 8));
  icu::UnicodeString::operator=((this + 192), v6);
  v2 = v7;
  *(this + 32) = v7;
  v5 = &unk_1F0940478;
  icu::UnicodeString::~UnicodeString(v2, v6);
  icu::numparse::impl::NumberParseMatcher::~NumberParseMatcher(&v5);
  v3 = *MEMORY[0x1E69E9840];
  return this + 184;
}

uint64_t icu::numparse::impl::AffixTokenMatcherWarehouse::permille(icu::numparse::impl::AffixTokenMatcherWarehouse *this)
{
  v8 = *MEMORY[0x1E69E9840];
  icu::numparse::impl::PermilleMatcher::PermilleMatcher(&v5, *(*this + 8));
  icu::UnicodeString::operator=((this + 272), v6);
  v2 = v7;
  *(this + 42) = v7;
  v5 = &unk_1F0940478;
  icu::UnicodeString::~UnicodeString(v2, v6);
  icu::numparse::impl::NumberParseMatcher::~NumberParseMatcher(&v5);
  v3 = *MEMORY[0x1E69E9840];
  return this + 264;
}

const icu::number::impl::CurrencySymbols ***icu::numparse::impl::AffixTokenMatcherWarehouse::currency(const icu::number::impl::CurrencySymbols ***this, UErrorCode *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  icu::numparse::impl::CombinedCurrencyMatcher::CombinedCurrencyMatcher(v11, **this, (*this)[1], *(*this + 8), a2);
  this[44] = v11[1];
  icu::UnicodeString::operator=((this + 45), v12);
  icu::UnicodeString::operator=((this + 53), v13);
  v3 = 0;
  *(this + 488) = v13[64];
  do
  {
    icu::UnicodeString::operator=(&this[v3 + 62], &v13[v3 * 8 + 72]);
    v3 += 8;
  }

  while (v3 != 64);
  icu::UnicodeString::operator=((this + 126), v14);
  icu::UnicodeString::operator=((this + 134), v15);
  icu::CharString::operator=((this + 142), &v16);
  v11[0] = &unk_1F0940240;
  v4 = v17;
  if (v17)
  {
    free(v16);
  }

  icu::UnicodeString::~UnicodeString(v4, v15);
  icu::UnicodeString::~UnicodeString(v5, v14);
  for (i = 75; i != 11; i -= 8)
  {
    icu::UnicodeString::~UnicodeString(v6, &v11[i]);
  }

  icu::UnicodeString::~UnicodeString(v6, v13);
  icu::UnicodeString::~UnicodeString(v8, v12);
  icu::numparse::impl::NumberParseMatcher::~NumberParseMatcher(v11);
  v9 = *MEMORY[0x1E69E9840];
  return this + 43;
}

void *icu::numparse::impl::AffixTokenMatcherWarehouse::nextCodePointMatcher(icu::numparse::impl::AffixTokenMatcherWarehouse *this, int a2, UErrorCode *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  result = sub_19537F1B8(this + 1200);
  if (!result)
  {
    *a3 = U_MEMORY_ALLOCATION_ERROR;
  }

  return result;
}

void sub_19537EF28(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  if (v4 >= *(a1 + 24) && v4 >= 1)
  {
    v6 = 2 * v4;
    v7 = malloc_type_malloc(8 * (2 * v4), 0x6004044C4A2DFuLL);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 24);
      if (v9 >= v4)
      {
        v9 = v4;
      }

      if (v9 >= v6)
      {
        v9 = 2 * v4;
      }

      memcpy(v7, *(a1 + 16), 8 * v9);
      if (*(a1 + 28))
      {
        free(*(a1 + 16));
      }

      *(a1 + 16) = v8;
      *(a1 + 24) = v6;
      *(a1 + 28) = 1;
    }
  }

  v10 = *(a1 + 56);
  *(a1 + 56) = v10 + 1;
  *(*(a1 + 16) + 8 * v10) = a2;
}

uint64_t icu::numparse::impl::AffixPatternMatcher::AffixPatternMatcher(uint64_t a1, uint64_t **a2, int a3, uint64_t a4, int *a5)
{
  v8 = icu::numparse::impl::ArraySeriesMatcher::ArraySeriesMatcher(a1, a2, a3);
  *v8 = &unk_1F093FFC0;
  sub_195380F48((v8 + 56), a4, a5);
  return a1;
}

{
  v8 = icu::numparse::impl::ArraySeriesMatcher::ArraySeriesMatcher(a1, a2, a3);
  *v8 = &unk_1F093FFC0;
  sub_195380F48((v8 + 56), a4, a5);
  return a1;
}

uint64_t icu::numparse::impl::AffixTokenMatcherWarehouse::AffixTokenMatcherWarehouse(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = &unk_1F0935D00;
  *(a1 + 24) = 2;
  *a1 = a2;
  *(a1 + 8) = &unk_1F0940580;
  *(a1 + 104) = &unk_1F0935D00;
  *(a1 + 112) = 2;
  *(a1 + 96) = &unk_1F0940738;
  *(a1 + 192) = &unk_1F0935D00;
  *(a1 + 200) = 2;
  *(a1 + 184) = &unk_1F0940688;
  *(a1 + 272) = &unk_1F0935D00;
  *(a1 + 280) = 2;
  *(a1 + 264) = &unk_1F09406E0;
  sub_195380E3C(a1 + 344);
  *(a1 + 1200) = 0;
  *(a1 + 1208) = a1 + 1224;
  *(a1 + 1216) = 8;
  *(a1 + 1220) = 0;
  return a1;
}

void *sub_19537F1B8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (*a1 != v2)
  {
    goto LABEL_16;
  }

  if (v2 == 8)
  {
    v3 = 32;
  }

  else
  {
    v3 = 2 * v2;
  }

  if (v3 < 1)
  {
    return 0;
  }

  result = malloc_type_malloc(8 * v3, 0x2004093837F09uLL);
  if (result)
  {
    v5 = result;
    if (v2 >= 1)
    {
      v6 = *(a1 + 16);
      if (v6 >= v2)
      {
        v6 = v2;
      }

      if (v6 >= v3)
      {
        v6 = v3;
      }

      memcpy(result, *(a1 + 8), 8 * v6);
    }

    if (*(a1 + 20))
    {
      free(*(a1 + 8));
    }

    *(a1 + 8) = v5;
    *(a1 + 16) = v3;
    *(a1 + 20) = 1;
LABEL_16:
    operator new();
  }

  return result;
}

uint64_t icu::numparse::impl::CodePointMatcher::CodePointMatcher(uint64_t this, int a2)
{
  *this = &unk_1F093FF78;
  *(this + 8) = a2;
  return this;
}

{
  *this = &unk_1F093FF78;
  *(this + 8) = a2;
  return this;
}

uint64_t icu::numparse::impl::CodePointMatcher::match(icu::numparse::impl::CodePointMatcher *this, icu::StringSegment *a2, icu::numparse::impl::ParsedNumber *a3, UErrorCode *a4)
{
  if (icu::StringSegment::startsWith(a2, *(this + 2)))
  {
    icu::StringSegment::adjustOffsetByCodePoint(a2);
    icu::numparse::impl::ParsedNumber::setCharsConsumed(a3, a2);
  }

  return 0;
}

uint64_t icu::numparse::impl::AffixPatternMatcher::fromAffixPattern@<X0>(icu::numparse::impl::AffixPatternMatcher *this@<X0>, const icu::UnicodeString *a2@<X1>, icu::numparse::impl::AffixTokenMatcherWarehouse *a3@<X2>, BOOL *a4@<X4>, _BYTE *a5@<X3>, uint64_t a6@<X8>)
{
  if (*(this + 4) <= 0x1Fu)
  {
    *a5 = 0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
    *(a6 + 32) = 0u;
    *(a6 + 48) = 0u;
    *(a6 + 64) = 0u;
    result = icu::numparse::impl::ArraySeriesMatcher::ArraySeriesMatcher(a6);
    *a6 = &unk_1F093FFC0;
    *(a6 + 70) = 0;
    *(a6 + 56) = a6 + 70;
    *(a6 + 64) = 4;
    *(a6 + 68) = 0;
  }

  else
  {
    *a5 = 1;
    if ((a3 & 0x200) != 0)
    {
      v9 = 0;
    }

    else
    {
      v9 = *(*a2 + 16);
    }

    memset(&v14[1], 0, 32);
    v12 = &unk_1F093FF20;
    v13 = &unk_1F093FF50;
    v14[0] = &v14[2];
    v15 = 0;
    v16 = this;
    LODWORD(v14[1]) = 3;
    v17 = a2;
    v18 = v9;
    icu::number::impl::AffixUtils::iterateWithConsumer(this, &v12, a4);
    v11 = v16;
    icu::numparse::impl::ArraySeriesMatcher::ArraySeriesMatcher(a6, v14, v15);
    *a6 = &unk_1F093FFC0;
    sub_195380F48((a6 + 56), v11, a4);
    v12 = &unk_1F093FF20;
    v13 = &unk_1F093FF50;
    if (BYTE4(v14[1]))
    {
      free(v14[0]);
    }

    return nullsub_17(&v12);
  }

  return result;
}

uint64_t sub_19537F51C(uint64_t a1)
{
  *a1 = &unk_1F093FF20;
  *(a1 + 8) = &unk_1F093FF50;
  if (*(a1 + 28))
  {
    free(*(a1 + 16));
  }

  return nullsub_17(a1);
}

uint64_t sub_19537F64C(uint64_t *a1, uint64_t *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v12 = *a1;
  icu::UnicodeString::UnicodeString(v16, 1, &v12);
  v11 = *a2;
  icu::UnicodeString::UnicodeString(&v12, 1, &v11);
  if (v17)
  {
    v5 = v13;
    v3 = v13 & 1;
  }

  else
  {
    v3 = 0;
    if ((v17 & 0x8000u) == 0)
    {
      v4 = v17 >> 5;
    }

    else
    {
      v4 = v18;
    }

    v5 = v13;
    if ((v13 & 0x8000u) == 0)
    {
      v6 = v13 >> 5;
    }

    else
    {
      v6 = *&v14[2];
    }

    if ((v13 & 1) == 0 && v4 == v6)
    {
      if ((v13 & 2) != 0)
      {
        v7 = v14;
      }

      else
      {
        v7 = v15;
      }

      v3 = icu::UnicodeString::doEquals(v16, v7, v4);
    }
  }

  icu::UnicodeString::~UnicodeString(v5, &v12);
  icu::UnicodeString::~UnicodeString(v8, v16);
  v9 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t sub_19537F778(uint64_t a1, uint64_t a2)
{
  for (i = 0; i != 576; i += 32)
  {
    *(a1 + i) = &unk_1F0940020;
  }

  v5 = -960;
  do
  {
    v6 = a1 + v5;
    icu::numparse::impl::ArraySeriesMatcher::ArraySeriesMatcher(a1 + v5 + 1536);
    *(v6 + 1536) = &unk_1F093FFC0;
    *(v6 + 1592) = v6 + 1606;
    *(v6 + 1600) = 4;
    *(v6 + 1604) = 0;
    *(v6 + 1606) = 0;
    v5 += 80;
  }

  while (v5);
  *(a1 + 1536) = a2;
  return a1;
}

BOOL sub_19537F834(uint64_t a1, icu::numparse::impl::SymbolMatcher *a2, __int16 a3, int *a4)
{
  v38 = *MEMORY[0x1E69E9840];
  memset(v37, 0, sizeof(v37));
  (*(*a1 + 32))(v37);
  memset(v36, 0, sizeof(v36));
  (*(*a1 + 32))(v36, a1, 0);
  v32 = 0u;
  v35 = 0;
  v34 = 0u;
  v33 = 0u;
  v30 = 0;
  v31 = &unk_1F0935D00;
  LOWORD(v32) = 2;
  v27 = 0u;
  v29 = 0u;
  v28 = 0u;
  v26 = &unk_1F0935D00;
  LOWORD(v27) = 2;
  if ((*(*a1 + 56))(a1))
  {
    (*(*a1 + 32))(v25, a1, 768);
    icu::UnicodeString::operator=(&v31, v25);
    icu::UnicodeString::~UnicodeString(v9, v25);
    (*(*a1 + 32))(v25, a1, 512);
    icu::UnicodeString::operator=(&v26, v25);
    icu::UnicodeString::~UnicodeString(v10, v25);
  }

  v19 = 1;
  if ((a3 & 0x100) == 0)
  {
    Set = icu::numparse::impl::SymbolMatcher::getSet(a2);
    if (icu::number::impl::AffixUtils::containsOnlySymbolsAndIgnorables(v37, Set, a4, v12))
    {
      v13 = icu::numparse::impl::SymbolMatcher::getSet(a2);
      if (icu::number::impl::AffixUtils::containsOnlySymbolsAndIgnorables(v36, v13, a4, v14))
      {
        v15 = icu::numparse::impl::SymbolMatcher::getSet(a2);
        if (icu::number::impl::AffixUtils::containsOnlySymbolsAndIgnorables(&v31, v15, a4, v16))
        {
          v17 = icu::numparse::impl::SymbolMatcher::getSet(a2);
          if (icu::number::impl::AffixUtils::containsOnlySymbolsAndIgnorables(&v26, v17, a4, v18))
          {
            if ((icu::number::impl::AffixUtils::containsType(v36, -2, a4) & 1) == 0 && (icu::number::impl::AffixUtils::containsType(v36, -1, a4) & 1) == 0 && (icu::number::impl::AffixUtils::containsType(&v26, -2, a4) & 1) == 0 && !icu::number::impl::AffixUtils::containsType(&v26, -1, a4))
            {
              v19 = 0;
            }
          }
        }
      }
    }
  }

  icu::UnicodeString::~UnicodeString(v8, &v26);
  icu::UnicodeString::~UnicodeString(v20, &v31);
  icu::UnicodeString::~UnicodeString(v21, v36);
  icu::UnicodeString::~UnicodeString(v22, v37);
  v23 = *MEMORY[0x1E69E9840];
  return v19;
}

void *sub_19537FB2C(uint64_t a1, uint64_t a2, uint64_t a3, icu::numparse::impl::SymbolMatcher *a4, icu::numparse::impl::AffixTokenMatcherWarehouse *a5, int *a6)
{
  v6 = a6;
  v7 = a5;
  v81 = *MEMORY[0x1E69E9840];
  result = sub_19537F834(a2, a4, a5, a6);
  if (!result)
  {
    goto LABEL_89;
  }

  v55 = a3;
  v12 = 0;
  v63 = 0;
  v65 = 0;
  v13 = 0;
  v14 = 0;
  v77 = 0u;
  v80 = 0;
  v79 = 0u;
  v78 = 0u;
  v61 = a1 + 576;
  v76 = &unk_1F0935D00;
  LOWORD(v77) = 2;
  v62 = v6;
  v60 = v7;
  do
  {
    if (((v12 & 1) == 0 || (*(*a2 + 40))(a2) && icu::number::impl::CurrencySymbols::hasEmptyCurrencySymbol(***(a1 + 1536))) && ((v7 & 0x400) == 0 || v12 >= 2) && ((v7 & 0x400) != 0 || (v12 & 6) != 2))
    {
      v56 = v12 & 6;
      v57 = v14;
      v75 = 0;
      icu::number::impl::PatternStringUtils::patternInfoToStringBuilder(a2, 1, v12 >> 1, 0, 5u, 0, v12 & 1, &v76);
      icu::numparse::impl::AffixPatternMatcher::fromAffixPattern(&v76, *(a1 + 1536), v7, v6, &v75, &v67);
      v15 = v61 + 80 * v13;
      if (*(v15 + 20))
      {
        free(*(v15 + 8));
      }

      v16 = SDWORD2(v68);
      *(v15 + 16) = DWORD2(v68);
      *(v15 + 20) = BYTE12(v68);
      v17 = v68;
      if (v68 == v69)
      {
        v17 = v15 + 24;
        memcpy((v15 + 24), v69, 8 * v16);
      }

      else
      {
        *&v68 = v69;
        DWORD2(v68) = 3;
        BYTE12(v68) = 0;
      }

      *(v15 + 8) = v17;
      *(v15 + 48) = v70;
      if (*(v15 + 68))
      {
        free(*(v15 + 56));
      }

      v18 = v72;
      *(v15 + 64) = v72;
      v19 = v73;
      *(v15 + 68) = v73;
      v20 = v71;
      if (v71 == v74)
      {
        *(v15 + 56) = v15 + 70;
        memcpy((v15 + 70), v74, 2 * v18);
        v67 = &unk_1F093FFC0;
        if (v19)
        {
          free(v20);
        }
      }

      else
      {
        *(v15 + 56) = v71;
        v71 = v74;
        v72 = 4;
        v73 = 0;
      }

      v67 = &unk_1F0940138;
      v7 = v60;
      if (BYTE12(v68))
      {
        free(v68);
      }

      icu::numparse::impl::NumberParseMatcher::~NumberParseMatcher(&v67);
      v21 = v75;
      v22 = v13 + v75;
      if (v75)
      {
        v23 = v61 + 80 * v13;
      }

      else
      {
        v23 = 0;
      }

      v66 = 0;
      icu::number::impl::PatternStringUtils::patternInfoToStringBuilder(a2, 0, v12 >> 1, 0, 5u, 0, v12 & 1, &v76);
      icu::numparse::impl::AffixPatternMatcher::fromAffixPattern(&v76, *(a1 + 1536), v60, v62, &v66, &v67);
      v59 = v22;
      v24 = v61 + 80 * v22;
      if (*(v24 + 20))
      {
        free(*(v24 + 8));
      }

      v25 = SDWORD2(v68);
      *(v24 + 16) = DWORD2(v68);
      *(v24 + 20) = BYTE12(v68);
      v26 = v68;
      if (v68 == v69)
      {
        v26 = v24 + 24;
        memcpy((v24 + 24), v69, 8 * v25);
      }

      else
      {
        *&v68 = v69;
        DWORD2(v68) = 3;
        BYTE12(v68) = 0;
      }

      *(v24 + 8) = v26;
      *(v24 + 48) = v70;
      if (*(v24 + 68))
      {
        free(*(v24 + 56));
      }

      v27 = v72;
      *(v24 + 64) = v72;
      v28 = v73;
      *(v24 + 68) = v73;
      v29 = v71;
      if (v71 == v74)
      {
        *(v24 + 56) = v24 + 70;
        memcpy((v24 + 70), v74, 2 * v27);
        v67 = &unk_1F093FFC0;
        if (v28)
        {
          free(v29);
        }
      }

      else
      {
        *(v24 + 56) = v71;
        v71 = v74;
        v72 = 4;
        v73 = 0;
      }

      v67 = &unk_1F0940138;
      if (BYTE12(v68))
      {
        free(v68);
      }

      icu::numparse::impl::NumberParseMatcher::~NumberParseMatcher(&v67);
      v30 = v66;
      if (v66)
      {
        v31 = v24;
      }

      else
      {
        v31 = 0;
      }

      v32 = v31;
      v33 = v23;
      if (v12 >= 2)
      {
        v34 = v23;
        v35 = v21 ^ 1;
        v23 = v57;
        v32 = v63;
        if (v57 || ((v21 ^ 1) & 1) == 0)
        {
          if (!v57)
          {
            v35 = 1;
          }

          if ((v35 & 1) != 0 || !sub_19537F64C((v33 + 56), (v57 + 56)))
          {
            goto LABEL_56;
          }
        }

        v36 = v30 ^ 1;
        if (!v63 && ((v30 ^ 1) & 1) != 0)
        {
          v37 = 0;
LABEL_70:
          v13 = v59 + v30;
          v63 = v37;
          v14 = v23;
          v6 = v62;
          goto LABEL_71;
        }

        if (!v63)
        {
          v36 = 1;
        }

        if (v36)
        {
LABEL_56:
          v33 = v34;
        }

        else
        {
          v44 = sub_19537F64C((v31 + 56), (v63 + 56));
          v33 = v34;
          if (v44)
          {
            v37 = v63;
            v23 = v57;
            goto LABEL_70;
          }
        }
      }

      v58 = v32;
      v64 = v30;
      v67 = &unk_1F0940020;
      *&v68 = v33;
      v38 = v33;
      *(&v68 + 1) = v31;
      LODWORD(v69[0]) = v56 == 4;
      v39 = v65 + 1;
      v40 = a1 + 32 * v65;
      *(v40 + 8) = v68;
      *(v40 + 24) = v69[0];
      icu::numparse::impl::NumberParseMatcher::~NumberParseMatcher(&v67);
      if ((v60 & 0x80) == 0 || !v21 || !v64)
      {
        goto LABEL_66;
      }

      if (v12 >= 2 && v23 && (sub_19537F64C((v38 + 56), (v23 + 56)) & 1) != 0)
      {
        goto LABEL_64;
      }

      v67 = &unk_1F0940020;
      v68 = v38;
      LODWORD(v69[0]) = v56 == 4;
      v41 = v65 + 2;
      v42 = a1 + 32 * v39;
      *(v42 + 8) = v38;
      *(v42 + 24) = v69[0];
      icu::numparse::impl::NumberParseMatcher::~NumberParseMatcher(&v67);
      v39 = (v65 + 2);
      if (v12 >= 2)
      {
LABEL_64:
        if (v58)
        {
          v41 = v39;
          if (sub_19537F64C((v31 + 56), (v58 + 56)))
          {
LABEL_66:
            v65 = v39;
LABEL_69:
            v7 = v60;
            v30 = v64;
            v37 = v58;
            goto LABEL_70;
          }
        }

        else
        {
          v41 = v39;
        }
      }

      v67 = &unk_1F0940020;
      *&v68 = 0;
      *(&v68 + 1) = v31;
      LODWORD(v69[0]) = v56 == 4;
      v65 = (v41 + 1);
      v43 = a1 + 32 * v41;
      *(v43 + 8) = v68;
      *(v43 + 24) = v69[0];
      icu::numparse::impl::NumberParseMatcher::~NumberParseMatcher(&v67);
      goto LABEL_69;
    }

LABEL_71:
    ++v12;
  }

  while (v12 != 6);
  if (v65 > 1)
  {
    v45 = 0;
    v46 = 1;
    do
    {
      while (1)
      {
        v47 = a1 + 32 * v46;
        if (sub_195380368(a1 + 32 * v46 - 32, v47) <= 0)
        {
          break;
        }

        v69[0] = 0;
        v67 = &unk_1F0940020;
        v68 = *(a1 + 32 * v46 - 24);
        v48 = v68;
        LODWORD(v69[0]) = *(a1 + 32 * v46 - 8);
        v49 = v69[0];
        *(a1 + 32 * v46 - 24) = *(v47 + 8);
        *(a1 + 32 * v46 - 8) = *(v47 + 24);
        *(v47 + 8) = v48;
        *(v47 + 24) = v49;
        icu::numparse::impl::NumberParseMatcher::~NumberParseMatcher(&v67);
        v45 = v46 + 1 < v65;
        if (v46 + 1 < v65)
        {
          ++v46;
        }

        else
        {
          v46 = 1;
        }
      }

      v50 = v46 + 1 < v65;
      v51 = v50 | v45;
      if (v46 + 1 < v65)
      {
        ++v46;
      }

      else
      {
        v46 = 1;
      }

      v45 &= v50;
    }

    while ((v51 & 1) != 0);
  }

  v52 = v65;
  if (v65 >= 1)
  {
    v53 = v65;
    do
    {
      (*(*v55 + 16))(v55, a1);
      a1 += 32;
      --v53;
    }

    while (v53);
  }

  result = icu::UnicodeString::~UnicodeString(v52, &v76);
LABEL_89:
  v54 = *MEMORY[0x1E69E9840];
  return result;
}