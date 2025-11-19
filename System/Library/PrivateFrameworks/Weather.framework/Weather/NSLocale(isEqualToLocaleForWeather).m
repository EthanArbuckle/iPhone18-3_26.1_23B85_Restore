@interface NSLocale(isEqualToLocaleForWeather)
- (uint64_t)isEqualToLocaleForWeather:()isEqualToLocaleForWeather;
@end

@implementation NSLocale(isEqualToLocaleForWeather)

- (uint64_t)isEqualToLocaleForWeather:()isEqualToLocaleForWeather
{
  v7 = a3;
  v8 = [a1 localeIdentifier];
  v100 = [v7 localeIdentifier];
  v101 = v8;
  if (v8 == v100)
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

  v9 = [a1 localeIdentifier];
  v3 = v9 != 0;
  v89 = v9;
  if (v9)
  {
    v10 = [v7 localeIdentifier];
    if (v10)
    {
      v81 = v10;
      v11 = [a1 localeIdentifier];
      v73 = [v7 localeIdentifier];
      v74 = v11;
      if ([v11 isEqualToString:?])
      {
        v12 = [a1 languageCode];
        v56 = [v7 languageCode];
        v57 = v12;
        if (v12 == v56)
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

        v13 = 1;
        v5 = 1;
      }

      else
      {
        v5 = 0;
        v13 = 1;
      }
    }

    else
    {
      v81 = 0;
      v13 = 0;
      v5 = 0;
    }
  }

  else
  {
    v13 = 0;
    v5 = 0;
  }

  v19 = [a1 languageCode];
  v4 = v19 != 0;
  v87 = v19;
  v99 = __PAIR64__(v13, v5);
  LODWORD(v102[3]) = v19 != 0;
  if (v19)
  {
    v20 = [v7 languageCode];
    if (v20)
    {
      v80 = v20;
      v5 = [a1 languageCode];
      v70 = [v7 languageCode];
      v71 = v5;
      if ([v5 isEqualToString:?])
      {
        v5 = [a1 countryCode];
        v54 = [v7 countryCode];
        v55 = v5;
        if (v5 == v54)
        {
          *v95 = 1;
          memset(v92, 0, sizeof(v92));
          v96 = 0;
          v97 = 0;
          *&v95[4] = 0;
          v90 = 0uLL;
          v94 = 0;
          memset(v102, 0, 24);
          v93 = v3;
          v14 = 0;
          v91 = 0;
          v15 = 0;
          v16 = 0;
          LODWORD(v102[3]) = 1;
          v98 = 0x100000001;
          goto LABEL_8;
        }

        v4 = 1;
        v21 = 1;
      }

      else
      {
        v21 = 0;
        v4 = 1;
      }
    }

    else
    {
      v80 = 0;
      v4 = 0;
      v21 = 0;
    }
  }

  else
  {
    v4 = 0;
    v21 = 0;
  }

  v22 = [a1 countryCode];
  HIDWORD(v102[2]) = v22 != 0;
  v86 = v22;
  v98 = __PAIR64__(v4, v21);
  if (v22)
  {
    v23 = [v7 countryCode];
    if (v23)
    {
      v79 = v23;
      v24 = [a1 countryCode];
      v68 = [v7 countryCode];
      v69 = v24;
      if ([v24 isEqualToString:?])
      {
        v25 = [a1 scriptCode];
        v52 = [v7 scriptCode];
        v53 = v25;
        if (v25 == v52)
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
          v93 = v3;
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

  v26 = [a1 scriptCode];
  LODWORD(v102[2]) = v26 != 0;
  v85 = v26;
  if (v26)
  {
    v27 = [v7 scriptCode];
    if (v27)
    {
      v78 = v27;
      v28 = [a1 scriptCode];
      v66 = [v7 scriptCode];
      v67 = v28;
      if ([v28 isEqualToString:?])
      {
        v29 = [a1 calendarIdentifier];
        v50 = [v7 calendarIdentifier];
        v51 = v29;
        if (v29 == v50)
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
          v93 = v3;
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

  v30 = [a1 calendarIdentifier];
  HIDWORD(v102[1]) = v30 != 0;
  v84 = v30;
  if (v30)
  {
    v31 = [v7 calendarIdentifier];
    if (v31)
    {
      v77 = v31;
      v32 = [a1 calendarIdentifier];
      v64 = [v7 calendarIdentifier];
      v65 = v32;
      if ([v32 isEqualToString:?])
      {
        v33 = [a1 decimalSeparator];
        [v7 decimalSeparator];
        v88 = v49 = v33;
        if (v33 == v88)
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
          v93 = v3;
          *v92 = 1;
          *(&v90 + 1) = 0x100000001;
          HIDWORD(v102[1]) = 1;
          *&v95[8] = 1;
          *v95 = 0x100000001;
          goto LABEL_8;
        }

        v34 = 1;
        *&v95[4] = 1;
      }

      else
      {
        *&v95[4] = 0;
        v34 = 1;
      }
    }

    else
    {
      v77 = 0;
      v34 = 0;
      *&v95[4] = 0;
    }
  }

  else
  {
    v34 = 0;
    *&v95[4] = 0;
  }

  v35 = [a1 decimalSeparator];
  LODWORD(v102[1]) = v35 != 0;
  v83 = v35;
  *&v95[8] = v34;
  v93 = v3;
  if (v35)
  {
    v36 = [v7 decimalSeparator];
    if (v36)
    {
      v76 = v36;
      v3 = [a1 decimalSeparator];
      v62 = [v7 decimalSeparator];
      v63 = v3;
      if ([v3 isEqualToString:?])
      {
        v3 = [a1 groupingSeparator];
        v47 = [v7 groupingSeparator];
        v48 = v3;
        if (v3 == v47)
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

  v37 = [a1 groupingSeparator];
  HIDWORD(v102[0]) = v37 != 0;
  v82 = v37;
  if (v37)
  {
    v38 = [v7 groupingSeparator];
    if (v38)
    {
      v75 = v38;
      v5 = [a1 groupingSeparator];
      v60 = [v7 groupingSeparator];
      v61 = v5;
      if ([v5 isEqualToString:?])
      {
        v5 = [a1 quotationBeginDelimiter];
        v45 = [v7 quotationBeginDelimiter];
        v46 = v5;
        if (v5 != v45)
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
  v4 = [a1 quotationBeginDelimiter];
  LODWORD(v102[0]) = v4 != 0;
  if (v4)
  {
    v39 = [v7 quotationBeginDelimiter];
    if (v39)
    {
      v72 = v39;
      v40 = [a1 quotationBeginDelimiter];
      v58 = [v7 quotationBeginDelimiter];
      v59 = v40;
      if ([v40 isEqualToString:?])
      {
        v41 = [a1 quotationEndDelimiter];
        v43 = [v7 quotationEndDelimiter];
        v44 = v41;
        if (v41 == v43)
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

  v3 = [a1 quotationEndDelimiter];
  if (v3)
  {
    v5 = [v7 quotationEndDelimiter];
    if (v5)
    {
      v34 = [a1 quotationEndDelimiter];
      v13 = [v7 quotationEndDelimiter];
      v17 = [v34 isEqualToString:v13];
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

  if (v101 != v100)
  {
  }

  return v17;
}

@end