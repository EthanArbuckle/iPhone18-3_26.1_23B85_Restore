@interface NSLocale(isEqualToLocaleForWeather)
- (uint64_t)isEqualToLocaleForWeather:()isEqualToLocaleForWeather;
@end

@implementation NSLocale(isEqualToLocaleForWeather)

- (uint64_t)isEqualToLocaleForWeather:()isEqualToLocaleForWeather
{
  v7 = a3;
  localeIdentifier = [self localeIdentifier];
  localeIdentifier2 = [v7 localeIdentifier];
  v101 = localeIdentifier;
  if (localeIdentifier == localeIdentifier2)
  {
    v93 = 0;
    v98 = 0;
    v99 = 0;
    memset(v95, 0, sizeof(v95));
    memset(v92, 0, sizeof(v92));
    v96 = 0;
    v97 = 0;
    v90 = 0uLL;
    v94 = 0;
    v14 = 0;
    memset(v102, 0, 28);
    v91 = 0;
    v15 = 0;
    v16 = 0;
    goto LABEL_8;
  }

  localeIdentifier3 = [self localeIdentifier];
  decimalSeparator4 = localeIdentifier3 != 0;
  v89 = localeIdentifier3;
  if (localeIdentifier3)
  {
    localeIdentifier4 = [v7 localeIdentifier];
    if (localeIdentifier4)
    {
      v81 = localeIdentifier4;
      localeIdentifier5 = [self localeIdentifier];
      localeIdentifier6 = [v7 localeIdentifier];
      v74 = localeIdentifier5;
      if ([localeIdentifier5 isEqualToString:?])
      {
        languageCode = [self languageCode];
        languageCode2 = [v7 languageCode];
        v57 = languageCode;
        if (languageCode == languageCode2)
        {
          v93 = 1;
          memset(v95, 0, sizeof(v95));
          v97 = 0;
          v98 = 0;
          memset(v92, 0, sizeof(v92));
          v96 = 0;
          v90 = 0uLL;
          v94 = 0;
          v14 = 0;
          memset(v102, 0, 28);
          v91 = 0;
          v15 = 0;
          v16 = 0;
          v99 = 0x100000001;
          goto LABEL_8;
        }

        quotationEndDelimiter4 = 1;
        languageCode5 = 1;
      }

      else
      {
        languageCode5 = 0;
        quotationEndDelimiter4 = 1;
      }
    }

    else
    {
      v81 = 0;
      quotationEndDelimiter4 = 0;
      languageCode5 = 0;
    }
  }

  else
  {
    quotationEndDelimiter4 = 0;
    languageCode5 = 0;
  }

  languageCode3 = [self languageCode];
  quotationBeginDelimiter2 = languageCode3 != 0;
  v87 = languageCode3;
  v99 = __PAIR64__(quotationEndDelimiter4, languageCode5);
  LODWORD(v102[3]) = languageCode3 != 0;
  if (languageCode3)
  {
    languageCode4 = [v7 languageCode];
    if (languageCode4)
    {
      v80 = languageCode4;
      languageCode5 = [self languageCode];
      languageCode6 = [v7 languageCode];
      v71 = languageCode5;
      if ([languageCode5 isEqualToString:?])
      {
        languageCode5 = [self countryCode];
        countryCode = [v7 countryCode];
        v55 = languageCode5;
        if (languageCode5 == countryCode)
        {
          *v95 = 1;
          memset(v92, 0, sizeof(v92));
          v96 = 0;
          v97 = 0;
          *&v95[4] = 0;
          v90 = 0uLL;
          v94 = 0;
          memset(v102, 0, 24);
          v93 = decimalSeparator4;
          v14 = 0;
          v91 = 0;
          v15 = 0;
          v16 = 0;
          LODWORD(v102[3]) = 1;
          v98 = 0x100000001;
          goto LABEL_8;
        }

        quotationBeginDelimiter2 = 1;
        v21 = 1;
      }

      else
      {
        v21 = 0;
        quotationBeginDelimiter2 = 1;
      }
    }

    else
    {
      v80 = 0;
      quotationBeginDelimiter2 = 0;
      v21 = 0;
    }
  }

  else
  {
    quotationBeginDelimiter2 = 0;
    v21 = 0;
  }

  countryCode2 = [self countryCode];
  HIDWORD(v102[2]) = countryCode2 != 0;
  v86 = countryCode2;
  v98 = __PAIR64__(quotationBeginDelimiter2, v21);
  if (countryCode2)
  {
    countryCode3 = [v7 countryCode];
    if (countryCode3)
    {
      v79 = countryCode3;
      countryCode4 = [self countryCode];
      countryCode5 = [v7 countryCode];
      v69 = countryCode4;
      if ([countryCode4 isEqualToString:?])
      {
        scriptCode = [self scriptCode];
        scriptCode2 = [v7 scriptCode];
        v53 = scriptCode;
        if (scriptCode == scriptCode2)
        {
          *v95 = 1;
          *&v95[4] = 0;
          v96 = 0;
          v90 = 0uLL;
          v94 = 0;
          *&v92[4] = 0;
          v14 = 0;
          memset(v102, 0, 20);
          v91 = 0;
          v15 = 0;
          v16 = 0;
          v93 = decimalSeparator4;
          *v92 = 1;
          HIDWORD(v102[2]) = 1;
          v97 = 0x100000001;
          goto LABEL_8;
        }

        v97 = 0x100000001;
      }

      else
      {
        v97 = 0x100000000;
      }
    }

    else
    {
      v79 = 0;
      v97 = 0;
    }
  }

  else
  {
    v97 = 0;
  }

  scriptCode3 = [self scriptCode];
  LODWORD(v102[2]) = scriptCode3 != 0;
  v85 = scriptCode3;
  if (scriptCode3)
  {
    scriptCode4 = [v7 scriptCode];
    if (scriptCode4)
    {
      v78 = scriptCode4;
      scriptCode5 = [self scriptCode];
      scriptCode6 = [v7 scriptCode];
      v67 = scriptCode5;
      if ([scriptCode5 isEqualToString:?])
      {
        calendarIdentifier = [self calendarIdentifier];
        calendarIdentifier2 = [v7 calendarIdentifier];
        v51 = calendarIdentifier;
        if (calendarIdentifier == calendarIdentifier2)
        {
          *v95 = 1;
          *(&v90 + 4) = 0;
          v102[1] = 0;
          *&v95[4] = 0;
          v94 = 0;
          LODWORD(v90) = 0;
          v102[0] = 0;
          *&v92[4] = 0;
          v14 = 0;
          v91 = 0;
          v15 = 0;
          v16 = 0;
          v93 = decimalSeparator4;
          *v92 = 1;
          HIDWORD(v90) = 1;
          LODWORD(v102[2]) = 1;
          v96 = 0x100000001;
          goto LABEL_8;
        }

        v96 = 0x100000001;
      }

      else
      {
        v96 = 0x100000000;
      }
    }

    else
    {
      v78 = 0;
      v96 = 0;
    }
  }

  else
  {
    v96 = 0;
  }

  calendarIdentifier3 = [self calendarIdentifier];
  HIDWORD(v102[1]) = calendarIdentifier3 != 0;
  v84 = calendarIdentifier3;
  if (calendarIdentifier3)
  {
    calendarIdentifier4 = [v7 calendarIdentifier];
    if (calendarIdentifier4)
    {
      v77 = calendarIdentifier4;
      calendarIdentifier5 = [self calendarIdentifier];
      calendarIdentifier6 = [v7 calendarIdentifier];
      v65 = calendarIdentifier5;
      if ([calendarIdentifier5 isEqualToString:?])
      {
        decimalSeparator = [self decimalSeparator];
        [v7 decimalSeparator];
        v88 = v49 = decimalSeparator;
        if (decimalSeparator == v88)
        {
          *&v90 = 0;
          *(v102 + 4) = 0;
          v94 = 0;
          *&v92[4] = 0;
          v14 = 0;
          LODWORD(v102[0]) = 0;
          v91 = 0;
          v15 = 0;
          v16 = 0;
          v93 = decimalSeparator4;
          *v92 = 1;
          *(&v90 + 1) = 0x100000001;
          HIDWORD(v102[1]) = 1;
          *&v95[8] = 1;
          *v95 = 0x100000001;
          goto LABEL_8;
        }

        quotationEndDelimiter3 = 1;
        *&v95[4] = 1;
      }

      else
      {
        *&v95[4] = 0;
        quotationEndDelimiter3 = 1;
      }
    }

    else
    {
      v77 = 0;
      quotationEndDelimiter3 = 0;
      *&v95[4] = 0;
    }
  }

  else
  {
    quotationEndDelimiter3 = 0;
    *&v95[4] = 0;
  }

  decimalSeparator2 = [self decimalSeparator];
  LODWORD(v102[1]) = decimalSeparator2 != 0;
  v83 = decimalSeparator2;
  *&v95[8] = quotationEndDelimiter3;
  v93 = decimalSeparator4;
  if (decimalSeparator2)
  {
    decimalSeparator3 = [v7 decimalSeparator];
    if (decimalSeparator3)
    {
      v76 = decimalSeparator3;
      decimalSeparator4 = [self decimalSeparator];
      decimalSeparator5 = [v7 decimalSeparator];
      v63 = decimalSeparator4;
      if ([decimalSeparator4 isEqualToString:?])
      {
        decimalSeparator4 = [self groupingSeparator];
        groupingSeparator = [v7 groupingSeparator];
        v48 = decimalSeparator4;
        if (decimalSeparator4 == groupingSeparator)
        {
          *v95 = 1;
          v102[0] = 0;
          *&v92[4] = 0;
          v14 = 0;
          v91 = 0;
          v15 = 0;
          v16 = 0;
          *v92 = 1;
          *(&v90 + 1) = 0x100000001;
          *&v90 = 0x100000000;
          LODWORD(v102[1]) = 1;
          v94 = 0x100000001;
          goto LABEL_8;
        }

        v94 = 0x100000001;
      }

      else
      {
        v94 = 0x100000000;
      }
    }

    else
    {
      v76 = 0;
      v94 = 0;
    }
  }

  else
  {
    v94 = 0;
  }

  groupingSeparator2 = [self groupingSeparator];
  HIDWORD(v102[0]) = groupingSeparator2 != 0;
  v82 = groupingSeparator2;
  if (groupingSeparator2)
  {
    groupingSeparator3 = [v7 groupingSeparator];
    if (groupingSeparator3)
    {
      v75 = groupingSeparator3;
      languageCode5 = [self groupingSeparator];
      groupingSeparator4 = [v7 groupingSeparator];
      v61 = languageCode5;
      if ([languageCode5 isEqualToString:?])
      {
        languageCode5 = [self quotationBeginDelimiter];
        quotationBeginDelimiter = [v7 quotationBeginDelimiter];
        v46 = languageCode5;
        if (languageCode5 != quotationBeginDelimiter)
        {
          *&v92[4] = 1;
          *&v92[8] = 1;
          goto LABEL_131;
        }

        *v95 = 1;
        v14 = 0;
        v91 = 0;
        v15 = 0;
        v16 = 0;
        *v92 = 0x100000001;
        *(&v90 + 1) = 0x100000001;
        *&v90 = 0x100000001;
        v102[0] = 0x100000000;
        *&v92[8] = 1;
LABEL_8:
        v17 = 1;
        goto LABEL_9;
      }

      *&v92[4] = 0;
      *&v92[8] = 1;
    }

    else
    {
      v75 = 0;
      *&v92[4] = 0;
    }
  }

  else
  {
    *&v92[4] = 0;
  }

LABEL_131:
  quotationBeginDelimiter2 = [self quotationBeginDelimiter];
  LODWORD(v102[0]) = quotationBeginDelimiter2 != 0;
  if (quotationBeginDelimiter2)
  {
    quotationBeginDelimiter3 = [v7 quotationBeginDelimiter];
    if (quotationBeginDelimiter3)
    {
      v72 = quotationBeginDelimiter3;
      quotationBeginDelimiter4 = [self quotationBeginDelimiter];
      quotationBeginDelimiter5 = [v7 quotationBeginDelimiter];
      v59 = quotationBeginDelimiter4;
      if ([quotationBeginDelimiter4 isEqualToString:?])
      {
        quotationEndDelimiter = [self quotationEndDelimiter];
        quotationEndDelimiter2 = [v7 quotationEndDelimiter];
        v44 = quotationEndDelimiter;
        if (quotationEndDelimiter == quotationEndDelimiter2)
        {
          *v95 = 1;
          v15 = 0;
          v16 = 0;
          *v92 = 1;
          *(&v90 + 1) = 0x100000001;
          *&v90 = 0x100000001;
          v14 = 1;
          LODWORD(v102[0]) = 1;
          v91 = 0x100000001;
          v17 = 1;
          goto LABEL_9;
        }

        v91 = 0x100000001;
      }

      else
      {
        v91 = 0x100000000;
      }
    }

    else
    {
      v72 = 0;
      v91 = 0;
    }
  }

  else
  {
    v91 = 0;
  }

  decimalSeparator4 = [self quotationEndDelimiter];
  if (decimalSeparator4)
  {
    languageCode5 = [v7 quotationEndDelimiter];
    if (languageCode5)
    {
      quotationEndDelimiter3 = [self quotationEndDelimiter];
      quotationEndDelimiter4 = [v7 quotationEndDelimiter];
      v17 = [quotationEndDelimiter3 isEqualToString:quotationEndDelimiter4];
      v42 = 1;
    }

    else
    {
      v42 = 0;
      v17 = 0;
    }

    *v95 = 1;
    *v92 = 1;
    *(&v90 + 1) = 0x100000001;
    *&v90 = 0x100000001;
    v14 = 1;
    v15 = 1;
    v16 = 1;
    if (v42)
    {
    }
  }

  else
  {
    v16 = 0;
    v17 = 0;
    *v95 = 1;
    *v92 = 1;
    *(&v90 + 1) = 0x100000001;
    *&v90 = 0x100000001;
    v14 = 1;
    v15 = 1;
  }

LABEL_9:
  if (v16)
  {
  }

  if (v15)
  {
  }

  if (v91)
  {
  }

  if (HIDWORD(v91))
  {
  }

  if (LODWORD(v102[0]))
  {
  }

  if (v14)
  {
  }

  if (*&v92[4])
  {
  }

  if (*&v92[8])
  {
  }

  if (HIDWORD(v102[0]))
  {
  }

  if (v90)
  {
  }

  if (v94)
  {
  }

  if (HIDWORD(v94))
  {
  }

  if (LODWORD(v102[1]))
  {
  }

  if (DWORD1(v90))
  {
  }

  if (*&v95[4])
  {
  }

  if (*&v95[8])
  {
  }

  if (HIDWORD(v102[1]))
  {
  }

  if (DWORD2(v90))
  {
  }

  if (v96)
  {
  }

  if (HIDWORD(v96))
  {
  }

  if (LODWORD(v102[2]))
  {
  }

  if (HIDWORD(v90))
  {
  }

  if (v97)
  {
  }

  if (HIDWORD(v97))
  {
  }

  if (HIDWORD(v102[2]))
  {
  }

  if (*v92)
  {

    if (!v98)
    {
      goto LABEL_61;
    }
  }

  else if (!v98)
  {
LABEL_61:
    if (HIDWORD(v98))
    {
      goto LABEL_62;
    }

LABEL_66:
    if (!LODWORD(v102[3]))
    {
      goto LABEL_68;
    }

    goto LABEL_67;
  }

  if (!HIDWORD(v98))
  {
    goto LABEL_66;
  }

LABEL_62:

  if (LODWORD(v102[3]))
  {
LABEL_67:
  }

LABEL_68:
  if (*v95)
  {

    if (!v99)
    {
      goto LABEL_70;
    }
  }

  else if (!v99)
  {
LABEL_70:
    if (!HIDWORD(v99))
    {
      goto LABEL_72;
    }

    goto LABEL_71;
  }

  if (HIDWORD(v99))
  {
LABEL_71:
  }

LABEL_72:
  if (v93)
  {
  }

  if (v101 != localeIdentifier2)
  {
  }

  return v17;
}

@end