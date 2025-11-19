float64x2_t sub_277074A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v6 = a1 + 24;
  if (v8 == v7 && (*(a2 + 4) & 1) != 0)
  {
    goto LABEL_52;
  }

  sub_277074738(v6, a2);
  v9 = *a2;
  if (*a2 > 7)
  {
    if (v9 > 2047)
    {
      if (v9 == 2048)
      {
        v10 = *(a1 + 8) | 0x100;
        goto LABEL_51;
      }

      if (v9 == 4096)
      {
        v10 = *(a1 + 8) | 0x200;
        goto LABEL_51;
      }
    }

    else
    {
      if (v9 == 8)
      {
        v10 = *(a1 + 8) | 8;
        goto LABEL_51;
      }

      if (v9 == 16)
      {
        v10 = *(a1 + 8) | 0x10;
LABEL_51:
        *(a1 + 8) = v10;
        goto LABEL_52;
      }
    }

    goto LABEL_18;
  }

  if (!v9)
  {
    goto LABEL_52;
  }

  if (v9 == 1)
  {
    *(a1 + 8) |= 1uLL;
    ++*(a1 + 17);
    goto LABEL_52;
  }

  if (v9 != 2)
  {
LABEL_18:
    if (v9)
    {
      *(a1 + 8) |= 1uLL;
      ++*(a1 + 17);
      if ((v9 & 2) == 0)
      {
LABEL_20:
        if ((v9 & 4) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_56;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_20;
    }

    *(a1 + 8) |= 2uLL;
    if ((v9 & 4) == 0)
    {
LABEL_21:
      if ((v9 & 8) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_57;
    }

LABEL_56:
    *(a1 + 8) |= 4uLL;
    if ((v9 & 8) == 0)
    {
LABEL_22:
      if ((v9 & 0x10) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_58;
    }

LABEL_57:
    *(a1 + 8) |= 8uLL;
    if ((v9 & 0x10) == 0)
    {
LABEL_23:
      if ((v9 & 0x80) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

LABEL_58:
    *(a1 + 8) |= 0x10uLL;
    if ((v9 & 0x80) == 0)
    {
LABEL_25:
      if ((v9 & 0x60) != 0)
      {
        *(a1 + 8) |= 0x20uLL;
      }

      if ((v9 & 0x2000) != 0)
      {
        v14 = *(a1 + 8);
        *(a1 + 8) = v14 | 0x8000;
        ++*(a1 + 18);
        if ((v14 & 0x10000) == 0)
        {
          *(a1 + 8) = v14 | 0x28000;
        }
      }

      if ((v9 & 0x4000) != 0)
      {
        v15 = *(a1 + 8);
        *(a1 + 8) = v15 | 0x10000;
        ++*(a1 + 19);
        if ((v15 & 0x8000) == 0)
        {
          *(a1 + 8) = v15 | 0x50000;
        }
      }

      if ((v9 & 0x600) != 0)
      {
        *(a1 + 8) |= 0x80uLL;
      }

      if ((v9 & 0x800) != 0)
      {
        *(a1 + 8) |= 0x100uLL;
      }

      if ((v9 & 0x1000) != 0)
      {
        *(a1 + 8) |= 0x200uLL;
      }

      if ((v9 & 0xC00000) != 0)
      {
        *(a1 + 8) |= 0x1000uLL;
      }

      if ((v9 & 0x3000000) != 0)
      {
        *(a1 + 8) |= 0x2000uLL;
      }

      if ((v9 & 0xC000000) != 0)
      {
        *(a1 + 8) |= 0x4000uLL;
      }

      if ((v9 & 0x100) != 0)
      {
        *(a1 + 8) |= 0x400uLL;
      }

      if ((v9 & 0x8000) != 0)
      {
        v10 = *(a1 + 8) | 0x800;
        goto LABEL_51;
      }

      goto LABEL_52;
    }

LABEL_24:
    *(a1 + 8) |= 0x40uLL;
    goto LABEL_25;
  }

  v11 = *(a1 + 8);
  *(a1 + 8) = v11 | 2;
  v12 = *(a2 + 8);
  if (v12 <= 0x7FFFFFFF)
  {
    v13 = *(a2 + 16);
    if (v13 <= 0x7FFFFFFF && (v13 - v12 + 1) > *(a3 + 248))
    {
      v10 = v11 | 0x200002;
      goto LABEL_51;
    }
  }

LABEL_52:
  *a2 = 0;
  *(a2 + 24) = 0;
  *&v16.f64[0] = 0x8000000080000000;
  *&v16.f64[1] = 0x8000000080000000;
  result = vnegq_f64(v16);
  *(a2 + 8) = result;
  return result;
}

uint64_t *sub_277074D00@<X0>(TSUNumberOrDateLexer *this@<X1>, uint64_t a2@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = this;
  v12 = 0;
  *a6 = 0;
  *(a6 + 8) = a4;
  *(a6 + 16) = a4;
  *(a6 + 24) = 0;
  v13 = a3 & 0x80000003;
  if ((a3 < 0) ^ v6 | ((a3 & 0x80000003) == 0))
  {
    if (v13 != 0x80000000 && v13 != -2147483646)
    {
      goto LABEL_17;
    }

    if ((*(a2 + 8) & 4) != 0)
    {
      v12 = 3;
      *a6 = 3;
      *(a6 + 24) = this - 65;
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if (v13 == 3)
  {
    goto LABEL_5;
  }

  if (v13 == 2)
  {
LABEL_14:
    v12 = 2;
LABEL_15:
    *a6 = v12;
    goto LABEL_17;
  }

  if (v13 != 1)
  {
    goto LABEL_17;
  }

LABEL_5:
  *a6 = 805306369;
  v14 = TSUNumberOrDateLexer::numberValueForChar(this);
  *(a6 + 24) = v14;
  if (v14)
  {
    v15 = 805306369;
  }

  else
  {
    v15 = 1879048193;
  }

  v12 = v15 | a3 & 2;
  if (!v14 || (a3 & 2) != 0)
  {
    goto LABEL_15;
  }

LABEL_17:
  v16 = a3 & 0xFFFFFFFF7FFFFFFCLL;
  if ((a3 & 0xFFFFFFFF7FFFFFFCLL) > 4095)
  {
    if (v16 >= 0x4000)
    {
      if ((v16 - 0x100000000) <= 0x18 && ((1 << v16) & 0x1010101) != 0 || v16 == 0x8000 || v16 == 0x4000)
      {
        goto LABEL_43;
      }
    }

    else if (v16 > 8223)
    {
      if (v16 == 8224 || v16 == 8320)
      {
        goto LABEL_43;
      }
    }

    else if (v16 == 4096 || v16 == 0x2000)
    {
      goto LABEL_43;
    }
  }

  else
  {
    if (v16 <= 127)
    {
      if ((v16 - 8) > 0x38 || ((1 << (v16 - 8)) & 0x100000001010101) == 0)
      {
        if (!v16)
        {
          goto LABEL_44;
        }

        goto LABEL_52;
      }

LABEL_43:
      v12 |= v16;
      *a6 = v12;
      goto LABEL_44;
    }

    if (v16 <= 511)
    {
      if (v16 == 128 || v16 == 256)
      {
        goto LABEL_43;
      }
    }

    else if (v16 == 512 || v16 == 1024 || v16 == 2048)
    {
      goto LABEL_43;
    }
  }

LABEL_52:
  v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSUToken TSULexedResult::singleCharToken(unichar, TSUTokenClassification, NSUInteger, const TSUNumberOrDateLexer &)"}];
  v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUNumberOrDateLexer.mm"];
  [TSUAssertionHandler handleFailureInFunction:v18 file:v19 lineNumber:526 isFatal:0 description:"Locale: %{public}@: Didn't process all of chClass: %lu", *(a5 + 304), v16];

  +[TSUAssertionHandler logBacktraceThrottled];
LABEL_44:
  result = TSUIndexSet::containsIndex((a5 + 136), v9);
  if (result)
  {
    v12 |= 2uLL;
    *a6 = v12;
  }

  if ((*(a2 + 8) & 4) == 0 && *(a2 + 16) <= 0xAu && (v12 & 2) != 0)
  {
    result = TSUNumberOrDateLexer::classificationForIdentifierAtToken(a5, a6, a2);
    if (result)
    {
      *a6 = result;
    }
  }

  return result;
}

void TSUNumberOrDateLexer::TSUNumberOrDateLexer(TSUNumberOrDateLexer *this, TSULocale *a2)
{
  v116 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [(TSULocale *)v3 decimalSeparator];
  this->_decimalSeparator = TSUNumberOrDateLexer::stripBidiSpecialMarks(v4, v5);

  v89 = this;
  v6 = [(TSULocale *)v3 formattingSymbols];
  v7 = [v6 currencyDecimalSeparator];
  this->_currencyDecimalSeparator = TSUNumberOrDateLexer::stripBidiSpecialMarks(v7, v8);

  v9 = [(TSULocale *)v3 groupingSeparator];
  this->_groupingSeparator = TSUNumberOrDateLexer::stripBidiSpecialMarks(v9, v10);

  v11 = [(TSULocale *)v3 formattingSymbols];
  v12 = [v11 currencyGroupingSeparator];
  this->_currencyGroupingSeparator = TSUNumberOrDateLexer::stripBidiSpecialMarks(v12, v13);

  v14 = [(TSULocale *)v3 percentSymbol];
  this->_percentSymbol = TSUNumberOrDateLexer::stripBidiSpecialMarks(v14, v15);

  *&this->_decSep = 0;
  *&this->_percentSym = 0;
  this->_checkedForAlternateSeparators = 0;
  TSUIndexSet::TSUIndexSet(&this->_dateSeps);
  this->_timeSep = 0;
  TSUIndexSet::TSUIndexSet(&this->_additionalIdentChars);
  TSUIndexSet::TSUIndexSet(&this->_identStartChars);
  this->_identifierToClassificationMap.__table_.__bucket_list_ = 0u;
  *&this->_identifierToClassificationMap.__table_.__first_node_.__next_ = 0u;
  this->_identifierToClassificationMap.__table_.__max_load_factor_ = 1.0;
  this->_identifiersForStartChar.__table_.__bucket_list_ = 0u;
  *&this->_identifiersForStartChar.__table_.__first_node_.__next_ = 0u;
  this->_identifiersForStartChar.__table_.__max_load_factor_ = 1.0;
  *&this->_maxIdentifierLength = 0u;
  *&this->_vulgarFractionMap.__table_.__bucket_list_.__deleter_.__size_ = 0u;
  this->_vulgarFractionMap.__table_.__size_ = 0;
  this->_vulgarFractionMap.__table_.__max_load_factor_ = 1.0;
  this->_loadInDateTimeSymbols = 0;
  this->_localeIdentifier = [(TSULocale *)v3 localeIdentifier];
  if (v3)
  {
    CharFromSingleCharString = TSUNumberOrDateLexer::extractCharFromSingleCharString(this->_decimalSeparator, v16);
    this->_decSep = TSUNumberOrDateLexer::halfWidthForFullWidth(CharFromSingleCharString);
    v19 = TSUNumberOrDateLexer::extractCharFromSingleCharString(this->_currencyDecimalSeparator, v18);
    this->_currDecSep = TSUNumberOrDateLexer::halfWidthForFullWidth(v19);
    v21 = TSUNumberOrDateLexer::extractCharFromSingleCharString(this->_groupingSeparator, v20);
    this->_groupSep = TSUNumberOrDateLexer::halfWidthForFullWidth(v21);
    v23 = TSUNumberOrDateLexer::extractCharFromSingleCharString(this->_currencyGroupingSeparator, v22);
    this->_currGroupSep = TSUNumberOrDateLexer::halfWidthForFullWidth(v23);
    v25 = TSUNumberOrDateLexer::extractCharFromSingleCharString(this->_percentSymbol, v24);
    this->_percentSym = TSUNumberOrDateLexer::halfWidthForFullWidth(v25);
    TSUIndexSet::addIndex(&this->_dateSeps, 47);
    TSUIndexSet::addIndex(&this->_dateSeps, 45);
    this->_timeSep = 58;
    if (this->_loadInDateTimeSymbols)
    {
      v26 = [(TSULocale *)v3 amString];
      v27 = [v26 uppercaseString];
      TSUNumberOrDateLexer::addIdentifierClassification(this, v27, 0x4000002);

      v28 = [(TSULocale *)v3 pmString];
      v29 = [v28 uppercaseString];
      TSUNumberOrDateLexer::addIdentifierClassification(this, v29, 0x8000002);

      v30 = [(TSULocale *)v3 gregorianCalendarLocale];
      v31 = [v30 objectForKey:*MEMORY[0x277CBE690]];

      v32 = [(TSULocale *)v3 gregorianCalendarLocale];
      v33 = [v32 objectForKey:*MEMORY[0x277CBE6C8]];

      if (![v31 caseInsensitiveCompare:@"JP"] && !objc_msgSend(v33, "caseInsensitiveCompare:", @"ja"))
      {
        TSUNumberOrDateLexer::addIdentifierClassification(this, @"AM", 0x4000002);
        TSUNumberOrDateLexer::addIdentifierClassification(this, @"PM", 0x8000002);
      }

      v34 = [(TSULocale *)v3 formattingSymbols];
      v35 = v3;
      v36 = [v34 months];

      v109 = 0u;
      v110 = 0u;
      v107 = 0u;
      v108 = 0u;
      v37 = v36;
      v38 = [v37 countByEnumeratingWithState:&v107 objects:v115 count:16];
      if (v38)
      {
        v39 = *v108;
        do
        {
          for (i = 0; i != v38; ++i)
          {
            if (*v108 != v39)
            {
              objc_enumerationMutation(v37);
            }

            v41 = [*(*(&v107 + 1) + 8 * i) uppercaseString];
            TSUNumberOrDateLexer::addIdentifierClassification(this, v41, 0x400002);
          }

          v38 = [v37 countByEnumeratingWithState:&v107 objects:v115 count:16];
        }

        while (v38);
      }

      v42 = [(TSULocale *)v35 formattingSymbols];
      v43 = [v42 shortMonths];

      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      v44 = v43;
      v45 = [v44 countByEnumeratingWithState:&v103 objects:v114 count:16];
      if (v45)
      {
        v46 = *v104;
        do
        {
          for (j = 0; j != v45; ++j)
          {
            if (*v104 != v46)
            {
              objc_enumerationMutation(v44);
            }

            v48 = [*(*(&v103 + 1) + 8 * j) uppercaseString];
            TSUNumberOrDateLexer::addIdentifierClassification(this, v48, 0x800002);
          }

          v45 = [v44 countByEnumeratingWithState:&v103 objects:v114 count:16];
        }

        while (v45);
      }

      v49 = [(TSULocale *)v35 formattingSymbols];
      v50 = [v49 weekdays];

      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      v51 = v50;
      v52 = [v51 countByEnumeratingWithState:&v99 objects:v113 count:16];
      if (v52)
      {
        v53 = *v100;
        do
        {
          for (k = 0; k != v52; ++k)
          {
            if (*v100 != v53)
            {
              objc_enumerationMutation(v51);
            }

            v55 = [*(*(&v99 + 1) + 8 * k) uppercaseString];
            TSUNumberOrDateLexer::addIdentifierClassification(v89, v55, 0x1000002);
          }

          v52 = [v51 countByEnumeratingWithState:&v99 objects:v113 count:16];
        }

        while (v52);
      }

      v56 = [(TSULocale *)v35 formattingSymbols];
      v57 = [v56 shortWeekdays];

      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      v58 = v57;
      v59 = [v58 countByEnumeratingWithState:&v95 objects:v112 count:16];
      if (v59)
      {
        v60 = *v96;
        do
        {
          for (m = 0; m != v59; ++m)
          {
            if (*v96 != v60)
            {
              objc_enumerationMutation(v58);
            }

            v62 = [*(*(&v95 + 1) + 8 * m) uppercaseString];
            TSUNumberOrDateLexer::addIdentifierClassification(v89, v62, 0x2000002);
          }

          v59 = [v58 countByEnumeratingWithState:&v95 objects:v112 count:16];
        }

        while (v59);
      }

      v3 = v35;
    }

    v84 = +[TSULocale availableCurrencyCodes];
    v85 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v88 = [v85 mutableCopy];
    [v88 removeCharactersInString:@"                　"];
    v86 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"                　"];
    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    obj = v84;
    v63 = [obj countByEnumeratingWithState:&v91 objects:v111 count:16];
    if (v63)
    {
      v64 = *v92;
      do
      {
        v65 = 0;
        do
        {
          if (*v92 != v64)
          {
            objc_enumerationMutation(obj);
          }

          v66 = *(*(&v91 + 1) + 8 * v65);
          v67 = v3;
          v68 = [(TSULocale *)v3 formattingSymbols];
          v69 = [v68 halfwidthCurrencySymbolForCurrencyCode:v66];

          v70 = [v69 stringByReplacingOccurrencesOfString:@"​" withString:&stru_28862C2A0];

          if (![(NSString *)v70 length])
          {
            goto LABEL_46;
          }

          if ([(NSString *)v70 rangeOfCharacterFromSet:v88]!= 0x7FFFFFFFFFFFFFFFLL)
          {
            v76 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TSUNumberOrDateLexer::TSUNumberOrDateLexer(TSULocale *__strong _Nullable)"];
            v77 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUNumberOrDateLexer.mm"];
            [TSUAssertionHandler handleFailureInFunction:v76 file:v77 lineNumber:650 isFatal:0 description:"Locale %{public}@, '%{public}@' has whitespace we can't handle. Falling back to currency code '%{public}@'.", v89->_localeIdentifier, v70, v66];

            +[TSUAssertionHandler logBacktraceThrottled];
LABEL_46:
            v78 = v66;
            v73 = v70;
            v70 = v78;
            goto LABEL_47;
          }

          if ([(NSString *)v70 rangeOfCharacterFromSet:v86]== 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_48;
          }

          v71 = [(NSString *)v70 stringByReplacingOccurrencesOfString:@" " withString:&stru_28862C2A0];
          v72 = [v71 stringByReplacingOccurrencesOfString:@" " withString:&stru_28862C2A0];

          v73 = [v72 stringByReplacingOccurrencesOfString:@" " withString:&stru_28862C2A0];

          TSUNumberOrDateLexer::addIdentifierClassification(v89, v73, 0x802);
          if ([(NSString *)v70 containsString:@" "])
          {
            v74 = [(NSString *)v70 stringByReplacingOccurrencesOfString:@" " withString:@" "];
            TSUNumberOrDateLexer::addIdentifierClassification(v89, v74, 0x802);
            v75 = [(NSString *)v70 stringByReplacingOccurrencesOfString:@" " withString:@" "];

            TSUNumberOrDateLexer::addIdentifierClassification(v89, v75, 0x802);
          }

          else if ([(NSString *)v70 containsString:@" "])
          {
            v79 = [(NSString *)v70 stringByReplacingOccurrencesOfString:@" " withString:@" "];
            TSUNumberOrDateLexer::addIdentifierClassification(v89, v79, 0x802);
            v75 = [(NSString *)v70 stringByReplacingOccurrencesOfString:@" " withString:@" "];

            TSUNumberOrDateLexer::addIdentifierClassification(v89, v75, 0x802);
          }

          else if ([(NSString *)v70 containsString:@" "])
          {
            v80 = [(NSString *)v70 stringByReplacingOccurrencesOfString:@" " withString:@" "];
            TSUNumberOrDateLexer::addIdentifierClassification(v89, v80, 0x802);
            v75 = [(NSString *)v70 stringByReplacingOccurrencesOfString:@" " withString:@" "];

            TSUNumberOrDateLexer::addIdentifierClassification(v89, v75, 0x802);
          }

          else
          {
            v75 = 0;
          }

LABEL_47:
LABEL_48:
          TSUNumberOrDateLexer::addIdentifierClassification(v89, v70, 0x802);

          ++v65;
          v3 = v67;
        }

        while (v63 != v65);
        v81 = [obj countByEnumeratingWithState:&v91 objects:v111 count:16];
        v63 = v81;
      }

      while (v81);
    }

    v82 = v89;
    if (!v89->_percentSym)
    {
      v83 = [(NSString *)v89->_percentSymbol uppercaseString];
      TSUNumberOrDateLexer::addIdentifierClassification(v89, v83, 0x1002);

      v82 = v89;
    }

    v90 = 0x400000001;
    TSUNumberOrDateLexer::addVulgarFractionChar(v82, 188, &v90);
    v90 = 0x200000001;
    TSUNumberOrDateLexer::addVulgarFractionChar(v82, 189, &v90);
    v90 = 0x400000003;
    TSUNumberOrDateLexer::addVulgarFractionChar(v82, 190, &v90);
    v90 = 0x700000001;
    TSUNumberOrDateLexer::addVulgarFractionChar(v82, 8528, &v90);
    v90 = 0x900000001;
    TSUNumberOrDateLexer::addVulgarFractionChar(v82, 8529, &v90);
    v90 = 0xA00000001;
    TSUNumberOrDateLexer::addVulgarFractionChar(v82, 8530, &v90);
    v90 = 0x300000001;
    TSUNumberOrDateLexer::addVulgarFractionChar(v82, 8531, &v90);
    v90 = 0x300000002;
    TSUNumberOrDateLexer::addVulgarFractionChar(v82, 8532, &v90);
    v90 = 0x500000001;
    TSUNumberOrDateLexer::addVulgarFractionChar(v82, 8533, &v90);
    v90 = 0x500000002;
    TSUNumberOrDateLexer::addVulgarFractionChar(v82, 8534, &v90);
    v90 = 0x500000003;
    TSUNumberOrDateLexer::addVulgarFractionChar(v82, 8535, &v90);
    v90 = 0x500000004;
    TSUNumberOrDateLexer::addVulgarFractionChar(v82, 8536, &v90);
    v90 = 0x600000001;
    TSUNumberOrDateLexer::addVulgarFractionChar(v82, 8537, &v90);
    v90 = 0x600000005;
    TSUNumberOrDateLexer::addVulgarFractionChar(v82, 8538, &v90);
    v90 = 0x800000001;
    TSUNumberOrDateLexer::addVulgarFractionChar(v82, 8539, &v90);
    v90 = 0x800000003;
    TSUNumberOrDateLexer::addVulgarFractionChar(v82, 8540, &v90);
    v90 = 0x800000005;
    TSUNumberOrDateLexer::addVulgarFractionChar(v82, 8541, &v90);
    v90 = 0x800000007;
    TSUNumberOrDateLexer::addVulgarFractionChar(v82, 8542, &v90);
    v90 = 0x300000000;
    TSUNumberOrDateLexer::addVulgarFractionChar(v82, 8585, &v90);
    v90 = 0x400000001;
    TSUNumberOrDateLexer::addVulgarFractionChar(v82, 2930, &v90);
    v90 = 0x200000001;
    TSUNumberOrDateLexer::addVulgarFractionChar(v82, 2931, &v90);
    v90 = 0x400000003;
    TSUNumberOrDateLexer::addVulgarFractionChar(v82, 2932, &v90);
    v90 = 0x1000000001;
    TSUNumberOrDateLexer::addVulgarFractionChar(v82, 2933, &v90);
    v90 = 0x800000001;
    TSUNumberOrDateLexer::addVulgarFractionChar(v82, 2934, &v90);
    v90 = 0x1000000003;
    TSUNumberOrDateLexer::addVulgarFractionChar(v82, 2935, &v90);
    v90 = 0xA000000001;
    TSUNumberOrDateLexer::addVulgarFractionChar(v82, 3416, &v90);
    v90 = 0x2800000001;
    TSUNumberOrDateLexer::addVulgarFractionChar(v82, 3417, &v90);
    v90 = 0x800000003;
    TSUNumberOrDateLexer::addVulgarFractionChar(v82, 3418, &v90);
    v90 = 0x1400000001;
    TSUNumberOrDateLexer::addVulgarFractionChar(v82, 3419, &v90);
    v90 = 0xA00000001;
    TSUNumberOrDateLexer::addVulgarFractionChar(v82, 3420, &v90);
    v90 = 0x1400000003;
    TSUNumberOrDateLexer::addVulgarFractionChar(v82, 3421, &v90);
    v90 = 0x500000001;
    TSUNumberOrDateLexer::addVulgarFractionChar(v82, 3422, &v90);
    v90 = 0x400000001;
    TSUNumberOrDateLexer::addVulgarFractionChar(v82, 3443, &v90);
    v90 = 0x200000001;
    TSUNumberOrDateLexer::addVulgarFractionChar(v82, 3444, &v90);
    v90 = 0x400000003;
    TSUNumberOrDateLexer::addVulgarFractionChar(v82, 3445, &v90);
    v90 = 0x1000000001;
    TSUNumberOrDateLexer::addVulgarFractionChar(v82, 3446, &v90);
    v90 = 0x800000001;
    TSUNumberOrDateLexer::addVulgarFractionChar(v82, 3447, &v90);
    v90 = 0x1000000003;
    TSUNumberOrDateLexer::addVulgarFractionChar(v82, 3448, &v90);
    v90 = 0x200000001;
    TSUNumberOrDateLexer::addVulgarFractionChar(v82, 11517, &v90);
    v90 = 0x400000001;
    TSUNumberOrDateLexer::addVulgarFractionChar(v82, 43056, &v90);
    v90 = 0x200000001;
    TSUNumberOrDateLexer::addVulgarFractionChar(v82, 43057, &v90);
    v90 = 0x400000003;
    TSUNumberOrDateLexer::addVulgarFractionChar(v82, 43058, &v90);
    v90 = 0x1000000001;
    TSUNumberOrDateLexer::addVulgarFractionChar(v82, 43059, &v90);
    v90 = 0x800000001;
    TSUNumberOrDateLexer::addVulgarFractionChar(v82, 43060, &v90);
    v90 = 0x1000000003;
    TSUNumberOrDateLexer::addVulgarFractionChar(v82, 43061, &v90);
  }
}

void sub_277075FA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, void *a18, uint64_t a19, void *a20, uint64_t a21)
{
  sub_27703F2E4(a15 + 88);
  sub_27703F330(a14);
  sub_27703F36C(a15);
  TSUIndexSet::~TSUIndexSet((a21 + 136));
  TSUIndexSet::~TSUIndexSet((a21 + 104));
  TSUIndexSet::~TSUIndexSet((a21 + 64));

  _Unwind_Resume(a1);
}

TSUNumberOrDateLexer *TSUNumberOrDateLexer::stripBidiSpecialMarks(TSUNumberOrDateLexer *this, NSString *a2)
{
  v2 = this;
  if ([(TSUNumberOrDateLexer *)v2 rangeOfString:@"\u200F"]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = [(TSUNumberOrDateLexer *)v2 stringByReplacingOccurrencesOfString:@"\u200F" withString:&stru_28862C2A0];

    v2 = v3;
  }

  if ([(TSUNumberOrDateLexer *)v2 rangeOfString:@"\u200E"]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [(TSUNumberOrDateLexer *)v2 stringByReplacingOccurrencesOfString:@"\u200E" withString:&stru_28862C2A0];

    v2 = v4;
  }

  if ([(TSUNumberOrDateLexer *)v2 rangeOfString:@"\u061C"]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [(TSUNumberOrDateLexer *)v2 stringByReplacingOccurrencesOfString:@"\u061C" withString:&stru_28862C2A0];

    v2 = v5;
  }

  return v2;
}

uint64_t TSUNumberOrDateLexer::extractCharFromSingleCharString(TSUNumberOrDateLexer *this, NSString *a2)
{
  v2 = this;
  if ([(TSUNumberOrDateLexer *)v2 length]== 1)
  {
    v3 = [(TSUNumberOrDateLexer *)v2 characterAtIndex:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void TSUNumberOrDateLexer::addIdentifierClassification(TSUNumberOrDateLexer *this, NSString *a2, uint64_t *a3)
{
  v5 = a2;
  v30 = v5;
  if (v5)
  {
    if (!a3)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSUNumberOrDateLexer::addIdentifierClassification(NSString *__strong _Nullable, TSUTokenClassification)"}];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUNumberOrDateLexer.mm"];
      [TSUAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:839 isFatal:0 description:"Expected a valid classification"];

      +[TSUAssertionHandler logBacktraceThrottled];
      v5 = v30;
    }

    v9 = TSUNumberOrDateLexer::stripBidiSpecialMarks(v5, v6);
    v10 = v30;
    v30 = v9;

    v29 = TSUNumberOrDateLexer::fullWidthForHalfWidthString(v9, v11);
    if ([v29 isEqualToString:v9])
    {
      v12 = v29;
      v29 = 0;
    }

    v13 = sub_277078300(&this->_identifierToClassificationMap.__table_.__bucket_list_.__ptr_, &v30);
    v14 = v13;
    if (v13)
    {
      v15 = (v13[3] | a3);
      v13[3] = v15;
      if (v29)
      {
        sub_277078300(&this->_identifierToClassificationMap.__table_.__bucket_list_.__ptr_, &v29);
        v14[3] = v15;
      }
    }

    else
    {
      v28 = TSUNumberOrDateLexer::halfWidthForFullWidth([(TSUNumberOrDateLexer *)v30 characterAtIndex:0]);
      v31 = &v30;
      sub_277078410(&this->_identifierToClassificationMap.__table_.__bucket_list_.__ptr_, &v30)[3] = a3;
      v31 = &v28;
      v16 = sub_277078948(&this->_identifiersForStartChar.__table_.__bucket_list_.__ptr_, &v28);
      sub_277028728(v16 + 3, &v30);
      v17 = [(TSUNumberOrDateLexer *)v30 length];
      maxIdentifierLength = this->_maxIdentifierLength;
      if (maxIdentifierLength <= v17)
      {
        maxIdentifierLength = v17;
      }

      this->_maxIdentifierLength = maxIdentifierLength;
      if (v29)
      {
        v31 = &v29;
        sub_277078410(&this->_identifierToClassificationMap.__table_.__bucket_list_.__ptr_, &v29)[3] = a3;
        v31 = &v28;
        v19 = sub_277078948(&this->_identifiersForStartChar.__table_.__bucket_list_.__ptr_, &v28);
        sub_277028728(v19 + 3, &v29);
        v20 = [v29 length];
        v21 = this->_maxIdentifierLength;
        if (v21 <= v20)
        {
          v21 = v20;
        }

        this->_maxIdentifierLength = v21;
      }
    }

    v22 = [(TSUNumberOrDateLexer *)v30 length];
    if (v22)
    {
      for (i = 0; i != v22; ++i)
      {
        v24 = [(TSUNumberOrDateLexer *)v30 characterAtIndex:i];
        v25 = v24;
        if (v24 != 32 && ((v24 & 0xFFDF) - 91) <= 0xFFE5u)
        {
          if (v24 - 48 > 9)
          {
            TSUIndexSet::addIndex(&this->_additionalIdentChars, v24);
          }

          else
          {
            v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSUNumberOrDateLexer::addIdentifierClassification(NSString *__strong _Nullable, TSUTokenClassification)"}];
            v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUNumberOrDateLexer.mm"];
            [TSUAssertionHandler handleFailureInFunction:v26 file:v27 lineNumber:883 isFatal:0 description:"Locale: %{public}@ has an identifier of %{public}@, which contains a digit.", this->_localeIdentifier, v30];

            +[TSUAssertionHandler logBacktraceThrottled];
          }
        }

        if (!i)
        {
          TSUIndexSet::addIndex(&this->_identStartChars, v25);
        }
      }
    }
  }
}

uint64_t **TSUNumberOrDateLexer::addVulgarFractionChar(uint64_t **result, int a2, uint64_t a3)
{
  v4 = a2;
  if (a2)
  {
    if (*(a3 + 4))
    {
      v5 = &v4;
      result = sub_277078D04(result + 32, &v4);
      *(result + 20) = *a3;
    }
  }

  return result;
}

void TSUNumberOrDateLexer::setupAlternateSeparators(TSUNumberOrDateLexer *this, TSULocale *a2)
{
  v3 = a2;
  if (!this->_checkedForAlternateSeparators)
  {
    this->_checkedForAlternateSeparators = 1;
    v33 = v3;
    v4 = [(TSULocale *)v3 localeIdentifier];
    if (![(TSULocale *)v33 isAutoUpdating])
    {
      goto LABEL_6;
    }

    v5 = [TSULocale alloc];
    v6 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v4];
    v7 = [(TSULocale *)v5 initWithLocale:v6 documentLanguageIdentifier:v4];

    v8 = [(TSULocale *)v7 decimalSeparator];
    v9 = [(TSULocale *)v33 decimalSeparator];
    if (![v8 isEqualToString:v9])
    {
LABEL_19:

      goto LABEL_20;
    }

    v10 = [(TSULocale *)v7 groupingSeparator];
    v11 = [(TSULocale *)v33 groupingSeparator];
    if (![(TSUNumberOrDateLexer *)v10 isEqualToString:v11])
    {
LABEL_18:

      goto LABEL_19;
    }

    v12 = [(TSULocale *)v7 percentSymbol];
    v13 = [(TSULocale *)v33 percentSymbol];
    v14 = [v12 isEqualToString:v13];

    if (v14)
    {
LABEL_6:
      if ([v4 rangeOfString:@"numbers="] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v15 = [TSULocale regionSubtagAwareComponentsFromLocaleIdentifier:v4];
        v7 = [v15 mutableCopy];

        [(TSULocale *)v7 setObject:@"latn" forKeyedSubscript:@"numbers"];
        v8 = [MEMORY[0x277CBEAF8] localeIdentifierFromComponents:v7];
        v16 = [TSULocale alloc];
        v17 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v8];
        v9 = [(TSULocale *)v16 initWithLocale:v17 documentLanguageIdentifier:v4];

        v10 = [(TSULocale *)v9 decimalSeparator];
        v11 = [(TSULocale *)v9 groupingSeparator];
        v32 = [(TSULocale *)v9 percentSymbol];
        v18 = [(TSULocale *)v33 decimalSeparator];
        if ([(TSUNumberOrDateLexer *)v10 isEqualToString:v18])
        {
        }

        else
        {
          v19 = [(TSULocale *)v33 groupingSeparator];
          v20 = [(TSUNumberOrDateLexer *)v10 isEqualToString:v19];

          if ((v20 & 1) == 0)
          {
            CharFromSingleCharString = TSUNumberOrDateLexer::extractCharFromSingleCharString(v10, v21);
            this->_alternateDecSep = TSUNumberOrDateLexer::halfWidthForFullWidth(CharFromSingleCharString);
          }
        }

        v23 = [(TSULocale *)v33 decimalSeparator];
        if ([(TSUNumberOrDateLexer *)v11 isEqualToString:v23])
        {
        }

        else
        {
          v24 = [(TSULocale *)v33 groupingSeparator];
          v25 = [(TSUNumberOrDateLexer *)v11 isEqualToString:v24];

          if ((v25 & 1) == 0)
          {
            v27 = TSUNumberOrDateLexer::extractCharFromSingleCharString(v11, v26);
            this->_alternateGroupSep = TSUNumberOrDateLexer::halfWidthForFullWidth(v27);
          }
        }

        v28 = [(TSULocale *)v33 percentSymbol];
        v29 = [(TSUNumberOrDateLexer *)v32 isEqualToString:v28];

        if ((v29 & 1) == 0)
        {
          v31 = TSUNumberOrDateLexer::extractCharFromSingleCharString(v32, v30);
          this->_alternatePercentSym = TSUNumberOrDateLexer::halfWidthForFullWidth(v31);
        }

        goto LABEL_18;
      }
    }

LABEL_20:

    v3 = v33;
  }
}

id TSUNumberOrDateLexer::fullWidthForHalfWidthString(TSUNumberOrDateLexer *this, NSString *a2)
{
  v2 = this;
  v3 = objc_opt_new();
  v4 = [(TSUNumberOrDateLexer *)v2 length];
  if (v4)
  {
    for (i = 0; v4 != i; ++i)
    {
      v6 = [(TSUNumberOrDateLexer *)v2 characterAtIndex:i];
      if ((v6 - 33) > 0x5D)
      {
        if (v6 <= 162)
        {
          if (!v6)
          {
            continue;
          }

          if (v6 == 32)
          {
            LOWORD(v6) = 12288;
          }
        }

        else
        {
          switch(v6)
          {
            case 163:
              LOWORD(v6) = -31;
              break;
            case 8361:
              LOWORD(v6) = -26;
              break;
            case 165:
              LOWORD(v6) = -27;
              break;
          }
        }
      }

      else
      {
        LOWORD(v6) = v6 - 288;
      }

      [v3 appendFormat:@"%C", v6];
    }
  }

  return v3;
}

BOOL TSUNumberOrDateLexer::fractionValueForVulgarChar(TSUNumberOrDateLexer *this, unsigned __int16 a2, unsigned int *a3, unsigned int *a4)
{
  v8 = a2;
  v6 = sub_277078F40(&this->_vulgarFractionMap.__table_.__bucket_list_.__ptr_, &v8);
  if (v6)
  {
    *a3 = *(v6 + 5);
    *a4 = *(v6 + 6);
  }

  return v6 != 0;
}

BOOL TSUNumberOrDateLexer::isGroupingSeparator(TSUNumberOrDateLexer *this, TSUNumberOrDateLexer *a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = TSUNumberOrDateLexer::halfWidthForFullWidth(a2);
  v4 = 1;
  if (v3 <= 8198)
  {
    if (v3 != 32 && v3 != 160)
    {
      goto LABEL_10;
    }
  }

  else if (v3 != 8199 && v3 != 8239 && v3 != 12288)
  {
LABEL_10:
    v4 = 0;
  }

  groupSep = this->_groupSep;
  v7 = 32;
  if (groupSep <= 0x2006)
  {
    if (groupSep != 32 && groupSep != 160)
    {
      goto LABEL_18;
    }
  }

  else if (groupSep != 8199 && groupSep != 8239 && groupSep != 12288)
  {
LABEL_18:
    v7 = this->_groupSep;
  }

  currGroupSep = this->_currGroupSep;
  v9 = 32;
  if (currGroupSep <= 0x2006)
  {
    if (currGroupSep != 32 && currGroupSep != 160)
    {
      goto LABEL_26;
    }
  }

  else if (currGroupSep != 8199 && currGroupSep != 8239 && currGroupSep != 12288)
  {
LABEL_26:
    v9 = this->_currGroupSep;
  }

  alternateGroupSep = this->_alternateGroupSep;
  v11 = 32;
  if (alternateGroupSep <= 0x2006)
  {
    if (alternateGroupSep != 32 && alternateGroupSep != 160)
    {
      goto LABEL_34;
    }
  }

  else if (alternateGroupSep != 8199 && alternateGroupSep != 8239 && alternateGroupSep != 12288)
  {
LABEL_34:
    v11 = this->_alternateGroupSep;
  }

  if (v4)
  {
    v12 = 32;
  }

  else
  {
    v12 = v3;
  }

  return v12 == v7 || v12 == v9 || v12 == v11 || v3 == 1644;
}

BOOL TSUNumberOrDateLexer::isDecimalSeparator(TSUNumberOrDateLexer *this, TSUNumberOrDateLexer *a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = TSUNumberOrDateLexer::halfWidthForFullWidth(a2);
  v4 = 1;
  if (v3 <= 8198)
  {
    if (v3 != 32 && v3 != 160)
    {
      goto LABEL_10;
    }
  }

  else if (v3 != 8199 && v3 != 8239 && v3 != 12288)
  {
LABEL_10:
    v4 = 0;
  }

  decSep = this->_decSep;
  v7 = 32;
  if (decSep <= 0x2006)
  {
    if (decSep != 32 && decSep != 160)
    {
      goto LABEL_18;
    }
  }

  else if (decSep != 8199 && decSep != 8239 && decSep != 12288)
  {
LABEL_18:
    v7 = this->_decSep;
  }

  currDecSep = this->_currDecSep;
  v9 = 32;
  if (currDecSep <= 0x2006)
  {
    if (currDecSep != 32 && currDecSep != 160)
    {
      goto LABEL_26;
    }
  }

  else if (currDecSep != 8199 && currDecSep != 8239 && currDecSep != 12288)
  {
LABEL_26:
    v9 = this->_currDecSep;
  }

  alternateDecSep = this->_alternateDecSep;
  v11 = 32;
  if (alternateDecSep <= 0x2006)
  {
    if (alternateDecSep != 32 && alternateDecSep != 160)
    {
      goto LABEL_34;
    }
  }

  else if (alternateDecSep != 8199 && alternateDecSep != 8239 && alternateDecSep != 12288)
  {
LABEL_34:
    v11 = this->_alternateDecSep;
  }

  if (v4)
  {
    v12 = 32;
  }

  else
  {
    v12 = v3;
  }

  return v12 == v7 || v12 == v9 || v12 == v11 || v3 == 1643;
}

BOOL TSUNumberOrDateLexer::stringsEqualFoldingSpaces(TSUNumberOrDateLexer *this, NSString *a2, NSString *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(NSString *)v4 length];
  if (v6 == [(NSString *)v5 length])
  {
    if (v6)
    {
      v7 = 0;
      v8 = v6 - 1;
      while (1)
      {
        v9 = [(NSString *)v4 characterAtIndex:v7];
        v10 = [(NSString *)v5 characterAtIndex:v7];
        v11 = 1;
        if (v9 <= 8198)
        {
          if (v9 != 32 && v9 != 160)
          {
LABEL_11:
            v11 = 0;
          }
        }

        else if (v9 != 8199 && v9 != 8239 && v9 != 12288)
        {
          goto LABEL_11;
        }

        v12 = 32;
        if (v10 <= 8198)
        {
          if (v10 != 32 && v10 != 160)
          {
LABEL_19:
            v12 = v10;
          }
        }

        else if (v10 != 8199 && v10 != 8239 && v10 != 12288)
        {
          goto LABEL_19;
        }

        if (v11)
        {
          v13 = 32;
        }

        else
        {
          v13 = v9;
        }

        v14 = v13 == v12;
        if (v13 == v12 && v8 != v7++)
        {
          continue;
        }

        goto LABEL_29;
      }
    }

    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

LABEL_29:

  return v14;
}

uint64_t TSUNumberOrDateLexer::digitValueInBase(TSUNumberOrDateLexer *this, uint64_t a2)
{
  if (!a2)
  {
    goto LABEL_24;
  }

  v3 = TSUNumberOrDateLexer::halfWidthForFullWidth(this);
  if (a2 == 26)
  {
    v4 = v3 - 65;
    v5 = v3 - 97;
    if ((v3 - 97) > 0x19)
    {
      v5 = -1;
    }

    if (v4 > 0x19)
    {
      LOBYTE(v4) = v5;
    }

    return v4;
  }

  if (a2 == 1 || a2 > 0x24)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"static uint8_t TSUNumberOrDateLexer::digitValueInBase(unichar, uint8_t)"}];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUNumberOrDateLexer.mm"];
    [TSUAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:1240 isFatal:0 description:"digitValueInBase called with an illegal base %d", a2];

    +[TSUAssertionHandler logBacktraceThrottled];
LABEL_24:
    LOBYTE(v4) = -1;
    return v4;
  }

  v4 = v3 - 48;
  if ((v3 + 240) <= 9u)
  {
    v6 = v3 - 16;
  }

  else
  {
    v6 = -1;
  }

  if ((v3 - 97) <= 0x19)
  {
    v7 = v3 - 87;
  }

  else
  {
    v7 = v6;
  }

  if ((v3 - 65) <= 0x19)
  {
    v8 = v3 - 55;
  }

  else
  {
    v8 = v7;
  }

  if (v4 > 9)
  {
    LOBYTE(v4) = v8;
  }

  if (a2 <= v4)
  {
    LOBYTE(v4) = -1;
  }

  return v4;
}

uint64_t TSUNumberOrDateLexer::asciiInBaseForDigitValue(TSUNumberOrDateLexer *this, uint64_t a2)
{
  if (a2 == 26)
  {
    return (this + 65);
  }

  else
  {
    if ((a2 - 2) >= 0x23)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"static char TSUNumberOrDateLexer::asciiInBaseForDigitValue(uint8_t, uint8_t)"}];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUNumberOrDateLexer.mm"];
      [TSUAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:1252 isFatal:0 description:"asciiInBaseForDigitValue called with an illegal base %d", a2];

      +[TSUAssertionHandler logBacktraceThrottled];
    }

    if (this >= a2)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"static char TSUNumberOrDateLexer::asciiInBaseForDigitValue(uint8_t, uint8_t)"}];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUNumberOrDateLexer.mm"];
      [TSUAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:1253 isFatal:0 description:"Digit value %d exceeds base %d", this, a2];

      +[TSUAssertionHandler logBacktraceThrottled];
    }

    v3 = this + 55;
    if (this <= 9)
    {
      return (this | 0x30);
    }
  }

  return v3;
}

uint64_t TSUNumberOrDateLexer::fullWidthForHalfWidth(TSUNumberOrDateLexer *this)
{
  if (this == 8361)
  {
    v1 = -26;
  }

  else
  {
    v1 = this;
  }

  if (this == 165)
  {
    v2 = -27;
  }

  else
  {
    v2 = v1;
  }

  if (this == 163)
  {
    v3 = -31;
  }

  else
  {
    v3 = this;
  }

  if (this == 32)
  {
    v4 = 12288;
  }

  else
  {
    v4 = v3;
  }

  if (this <= 164)
  {
    v2 = v4;
  }

  if ((this - 33) <= 0x5D)
  {
    return (this - 288);
  }

  else
  {
    return v2;
  }
}

uint64_t TSUNumberOrDateLexer::appendUSDigitsFromToken(void *a1, uint64_t a2, uint64_t a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v23 = a1;
  if ((*(a3 + 8) & 4) != 0)
  {
    v5 = 16;
  }

  else
  {
    v5 = *(a3 + 16);
  }

  v7 = *(a2 + 8);
  v6 = *(a2 + 16);
  v8 = v6 - v7 + 1;
  v9 = 1;
  v10 = v7 <= 0x7FFFFFFF && v6 <= 0x7FFFFFFF;
  if (!v10 || v6 - v7 == -1)
  {
    goto LABEL_25;
  }

  v11 = 0;
  v12 = 0;
  while (1)
  {
    v13 = *a3;
    v14 = [v13 characterAtIndex:v7 + v11];

    v15 = TSUNumberOrDateLexer::halfWidthForFullWidth(v14);
    v16 = v15;
    if (v5 != 10)
    {
      break;
    }

    v17 = TSUNumberOrDateLexer::numberValueForChar(v15);
    if (v17 < 0)
    {
      goto LABEL_23;
    }

    v18 = v17 + 48;
LABEL_17:
    v24[v12] = v18;
    if (v12 == 62)
    {
      v24[63] = 0;
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:v24];
      [v23 appendString:v20];

      v12 = 0;
    }

    else
    {
      ++v12;
    }

    if (v8 <= ++v11)
    {
      v9 = 1;
      if (!v12)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }
  }

  v19 = TSUNumberOrDateLexer::digitValueInBase(v15, v5);
  if (!v5 || TSUNumberOrDateLexer::digitValueInBase(v16, v5) < v5)
  {
    v18 = TSUNumberOrDateLexer::asciiInBaseForDigitValue(v19, v5);
    goto LABEL_17;
  }

LABEL_23:
  v9 = 0;
  if (!v12)
  {
    goto LABEL_25;
  }

LABEL_24:
  v24[v12] = 0;
  v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:v24];
  [v23 appendString:v21];

LABEL_25:
  return v9;
}

uint64_t TSUNumberOrDateLexer::classifyUnichar(TSUNumberOrDateLexer *this, TSUNumberOrDateLexer *a2, uint64_t a3)
{
  isDecimalSeparator = TSUNumberOrDateLexer::isDecimalSeparator(this, a2);
  isGroupingSeparator = TSUNumberOrDateLexer::isGroupingSeparator(this, a2);
  v8 = isGroupingSeparator;
  if (a2 > 8259)
  {
    if (a2 <= 8721)
    {
      if ((a2 - 8352) <= 0x1F && a2 != 8373)
      {
        goto LABEL_13;
      }

      if (a2 == 8260)
      {
LABEL_84:
        v11 = !TSUIndexSet::containsIndex(&this->_dateSeps, a2);
        v9 = 128;
        v10 = 8320;
LABEL_29:
        if (!v11)
        {
          v9 = v10;
        }

        goto LABEL_110;
      }

      if (a2 != 8287)
      {
        goto LABEL_86;
      }

LABEL_26:
      v9 = 0x100000000;
      if (isDecimalSeparator)
      {
        v9 = 0x100000008;
      }

      v10 = 0x100000010;
      v11 = !isGroupingSeparator;
      goto LABEL_29;
    }

    if (a2 > 65292)
    {
      if ((a2 - 65296) < 0xA)
      {
LABEL_21:
        if (!a3 || a3 > TSUNumberOrDateLexer::digitValueInBase(a2, a3))
        {
LABEL_23:
          v9 = 1;
          goto LABEL_110;
        }

        goto LABEL_109;
      }

      if ((a2 - 65505) <= 5 && ((1 << (a2 + 31)) & 0x31) != 0)
      {
        goto LABEL_13;
      }

      v12 = 65293;
LABEL_63:
      if (a2 != v12)
      {
        goto LABEL_86;
      }

      goto LABEL_64;
    }

    if (a2 <= 65121)
    {
      if (a2 > 43063)
      {
        if (a2 == 43064)
        {
          goto LABEL_13;
        }

        v13 = 65020;
        goto LABEL_75;
      }

      if (a2 != 8722)
      {
        if (a2 != 12288)
        {
          goto LABEL_86;
        }

        goto LABEL_26;
      }

LABEL_64:
      v9 = 32;
      goto LABEL_110;
    }

    if (a2 <= 65128)
    {
      if (a2 != 65122)
      {
        v12 = 65123;
        goto LABEL_63;
      }
    }

    else
    {
      if (a2 == 65129 || a2 == 65284)
      {
        goto LABEL_13;
      }

      if (a2 != 65291)
      {
        goto LABEL_86;
      }
    }

LABEL_65:
    v9 = 64;
    goto LABEL_110;
  }

  if (a2 <= 161)
  {
    if (a2 > 31)
    {
      switch(a2)
      {
        case ' ':
          goto LABEL_26;
        case '!':
        case '""':
        case '#':
        case '%':
        case '&':
        case '\'':
        case '*':
        case ',':
        case '.':
        case ':':
        case ';':
        case '<':
        case '=':
        case '>':
        case '?':
        case '@':
        case 'G':
        case 'H':
        case 'I':
        case 'J':
        case 'K':
        case 'L':
        case 'M':
        case 'N':
        case 'O':
        case 'P':
        case 'Q':
        case 'R':
        case 'S':
        case 'T':
        case 'U':
        case 'V':
        case 'W':
        case 'X':
        case 'Y':
        case 'Z':
        case '[':
        case '\\':
        case ']':
        case '^':
        case '_':
          goto LABEL_86;
        case '$':
          goto LABEL_13;
        case '(':
          v9 = 512;
          goto LABEL_110;
        case ')':
          v9 = 1024;
          goto LABEL_110;
        case '+':
          goto LABEL_65;
        case '-':
          goto LABEL_64;
        case '/':
          goto LABEL_84;
        case '0':
        case '1':
        case '2':
        case '3':
        case '4':
        case '5':
        case '6':
        case '7':
        case '8':
        case '9':
          goto LABEL_21;
        case 'A':
        case 'B':
        case 'C':
        case 'D':
        case 'F':
        case 'a':
        case 'b':
        case 'c':
        case 'd':
        case 'f':
          if (!a3)
          {
            v9 = 2147483650;
            goto LABEL_110;
          }

          if (TSUNumberOrDateLexer::digitValueInBase(a2, a3) < a3)
          {
            goto LABEL_23;
          }

          goto LABEL_109;
        case 'E':
        case 'e':
          if (a3)
          {
            if (TSUNumberOrDateLexer::digitValueInBase(a2, a3) < a3)
            {
              goto LABEL_23;
            }

            v9 = 258;
          }

          else
          {
            v9 = 2147483906;
          }

          break;
        default:
          if (a2 != 160)
          {
            goto LABEL_86;
          }

          goto LABEL_26;
      }

      goto LABEL_110;
    }

    if (!a2)
    {
      v9 = 0;
      goto LABEL_110;
    }

    if (a2 != 9)
    {
      goto LABEL_86;
    }

    goto LABEL_26;
  }

  if (a2 > 5759)
  {
    if ((a2 - 0x2000) <= 0x2F)
    {
      if (((1 << a2) & 0x8000000007FFLL) != 0)
      {
        goto LABEL_26;
      }

      if (((1 << a2) & 0xC000) != 0)
      {
        goto LABEL_80;
      }
    }

    if (a2 == 5760)
    {
      goto LABEL_26;
    }

    v13 = 6107;
LABEL_75:
    if (a2 == v13)
    {
      goto LABEL_13;
    }

    goto LABEL_86;
  }

  if (a2 <= 1643)
  {
    if (a2 <= 1422)
    {
      if ((a2 - 162) < 4)
      {
        goto LABEL_13;
      }

      goto LABEL_86;
    }

    if (a2 <= 1563)
    {
      if (a2 == 1423 || a2 == 1547)
      {
        goto LABEL_13;
      }

      goto LABEL_86;
    }

    if (a2 != 1564)
    {
      if (a2 == 1643)
      {
        v9 = 8;
        goto LABEL_110;
      }

      goto LABEL_86;
    }

LABEL_80:
    v9 = 0x200000000;
    goto LABEL_110;
  }

  if (a2 <= 2800)
  {
    if (((a2 - 2546) > 9 || ((1 << (a2 + 14)) & 0x203) == 0) && (a2 - 2046) >= 2)
    {
      if (a2 == 1644)
      {
        v9 = 16;
        goto LABEL_110;
      }

      goto LABEL_86;
    }

LABEL_13:
    v9 = 2048;
    goto LABEL_110;
  }

  if (a2 == 2801 || a2 == 3065 || a2 == 3647)
  {
    goto LABEL_13;
  }

LABEL_86:
  v14 = TSUNumberOrDateLexer::numberValueForChar(a2);
  v9 = 8;
  if (v14 >= 0)
  {
    v9 = 1;
  }

  if (v14 < 0 && !isDecimalSeparator)
  {
    if (TSUIndexSet::containsIndex(&this->_dateSeps, a2))
    {
      v9 = 0x2000;
      goto LABEL_110;
    }

    v9 = 16;
    if (this->_timeSep == a2)
    {
      v9 = 0x4000;
    }

    if (this->_timeSep != a2 && !v8)
    {
      if (this->_percentSym == a2 || a2 == 1642 || this->_alternatePercentSym == a2)
      {
        v9 = (a2 != 0) << 12;
        goto LABEL_110;
      }

      v23 = a2;
      if (sub_277078F40(&this->_vulgarFractionMap.__table_.__bucket_list_.__ptr_, &v23))
      {
        v9 = 0x8000;
        goto LABEL_110;
      }

      if (a3 >= 0xB && ((a2 & 0xFFDF) - 65) <= 0x19u)
      {
        v15 = TSUNumberOrDateLexer::digitValueInBase(a2, a3);
        v9 = 1;
        if (v15 >= a3)
        {
          v9 = 2;
        }

        goto LABEL_110;
      }

LABEL_109:
      v9 = 2;
    }
  }

LABEL_110:
  if (isDecimalSeparator)
  {
    v16 = v9 | 8;
  }

  else
  {
    v16 = v9;
  }

  v17 = TSUIndexSet::containsIndex(&this->_dateSeps, a2);
  v18 = v16 | 0x2000;
  if (!v17)
  {
    v18 = v16;
  }

  if (this->_timeSep == a2)
  {
    v18 |= 0x4000uLL;
  }

  if (v8)
  {
    v19 = v18 | 0x10;
  }

  else
  {
    v19 = v18;
  }

  if (this->_percentSym == a2)
  {
    if (!a2)
    {
      goto LABEL_132;
    }
  }

  else
  {
    v21 = a2 == 1642 || this->_alternatePercentSym == a2;
    if (!a2 || !v21)
    {
      goto LABEL_132;
    }
  }

  v19 |= 0x1000uLL;
LABEL_132:
  if ((v19 & 2) == 0 && TSUIndexSet::containsIndex(&this->_additionalIdentChars, a2))
  {
    return v19 | 2;
  }

  return v19;
}

void TSUNumberOrDateLexer::lexNumberOrDateString(TSUNumberOrDateLexer *this@<X0>, NSString *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v9 = a2;
  sub_2770745E4(a5, v9);
  v10 = *a5;
  v11 = [v10 length];
  v12 = v11;
  *v24 = xmmword_277133C10;
  *&v24[16] = 0x80000000;
  *&v24[24] = 0;
  if (a3)
  {
    *(a5 + 16) = a3;
  }

  if (v11)
  {
    v13 = 0;
    while (1)
    {
      v14 = TSUNumberOrDateLexer::halfWidthForFullWidth([v10 characterAtIndex:v13]);
      v15 = TSUNumberOrDateLexer::classifyUnichar(this, v14, a3);
      v16 = v15;
      v17 = (v15 & 0x100000000) == 0 || (a4 & 1) == 0;
      if (!v17 || (v15 & 0x200000000) != 0)
      {
        break;
      }

      if ((sub_277073C78(v24, v14, v15, v13, a5, this) & 1) == 0)
      {
        if (*v24)
        {
          sub_277074A38(a5, v24, this);
          if ((a4 & 4) != 0 && (*(a5 + 10) & 0x20) != 0)
          {
LABEL_24:
            if (*v24)
            {
              sub_277074A38(a5, v24, this);
            }

            goto LABEL_26;
          }
        }

        sub_277074D00(v14, a5, v16, v13, this, v23);
        *v24 = v23[0];
        *&v24[12] = *(v23 + 12);
      }

      if (*v24 != 0x100000000 && (v24[0] & 3) == 0)
      {
        goto LABEL_21;
      }

LABEL_23:
      if (v12 == ++v13)
      {
        goto LABEL_24;
      }
    }

    if (!*v24)
    {
      goto LABEL_23;
    }

LABEL_21:
    sub_277074A38(a5, v24, this);
    if ((a4 & 4) != 0 && (*(a5 + 10) & 0x20) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_26:
  v19 = *(a5 + 24);
  v20 = *(a5 + 32);
  if (v20 != v19)
  {
    v21 = v20 - 32;
    do
    {
      if ((*(v21 + 4) & 1) == 0)
      {
        break;
      }

      v21 -= 32;
      v20 -= 32;
      *(a5 + 32) = v20;
    }

    while (v20 != v19);
  }

  if ((*(a5 + 8) & 4) != 0)
  {
    v22 = 16;
  }

  else
  {
    v22 = 10;
  }

  if (a3)
  {
    v22 = a3;
  }

  *(a5 + 16) = v22;
}

void sub_277078270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  sub_277074810(v10);

  _Unwind_Resume(a1);
}

void sub_2770782B8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_277028AC0();
}

uint64_t **sub_277078300(void *a1, id *a2)
{
  if (*a2)
  {
    v4 = [*a2 hash];
  }

  else
  {
    v4 = 0;
  }

  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  v7 = v6.u32[0];
  if (v6.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= *&v5)
    {
      v8 = v4 % *&v5;
    }
  }

  else
  {
    v8 = (*&v5 - 1) & v4;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9)
  {
    return 0;
  }

  for (i = *v9; i; i = *i)
  {
    v11 = i[1];
    if (v11 == v4)
    {
      if ([i[2] isEqualToString:*a2])
      {
        return i;
      }
    }

    else
    {
      if (v7 > 1)
      {
        if (v11 >= *&v5)
        {
          v11 %= *&v5;
        }
      }

      else
      {
        v11 &= *&v5 - 1;
      }

      if (v11 != v8)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t **sub_277078410(void *a1, id *a2)
{
  if (*a2)
  {
    v4 = [*a2 hash];
  }

  else
  {
    v4 = 0;
  }

  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_21;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  v7 = v6.u32[0];
  if (v6.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= *&v5)
    {
      v8 = v4 % *&v5;
    }
  }

  else
  {
    v8 = (*&v5 - 1) & v4;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_21:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v4)
    {
      break;
    }

    if (v7 > 1)
    {
      if (v11 >= *&v5)
      {
        v11 %= *&v5;
      }
    }

    else
    {
      v11 &= *&v5 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_21;
    }

LABEL_20:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_21;
    }
  }

  if (([v10[2] isEqualToString:*a2] & 1) == 0)
  {
    goto LABEL_20;
  }

  return v10;
}

void sub_27707868C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2770786A8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2770786A8(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

void sub_2770786F4(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_2770787E4(a1, prime);
    }
  }
}

void sub_2770787E4(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_277028AC0();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t **sub_277078948(void *a1, unsigned __int16 *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % a1[1];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 8) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_277078BA4(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p + 3;
    sub_277028B48(&v3);
  }

  if (__p)
  {
    operator delete(__p);
  }
}

uint64_t **sub_277078BF4(void *a1, id *a2)
{
  if (*a2)
  {
    v4 = [*a2 hash];
  }

  else
  {
    v4 = 0;
  }

  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  v7 = v6.u32[0];
  if (v6.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= *&v5)
    {
      v8 = v4 % *&v5;
    }
  }

  else
  {
    v8 = (*&v5 - 1) & v4;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9)
  {
    return 0;
  }

  for (i = *v9; i; i = *i)
  {
    v11 = i[1];
    if (v4 == v11)
    {
      if ([i[2] isEqualToString:*a2])
      {
        return i;
      }
    }

    else
    {
      if (v7 > 1)
      {
        if (v11 >= *&v5)
        {
          v11 %= *&v5;
        }
      }

      else
      {
        v11 &= *&v5 - 1;
      }

      if (v11 != v8)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t **sub_277078D04(void *a1, unsigned __int16 *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % a1[1];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 8) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t **sub_277078F40(void *a1, unsigned __int16 *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % a1[1];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 8) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL sub_2770791C8(void *a1, uint64_t a2, void *a3)
{
  [a1 doubleValue];
  v5 = v4;
  [a3 doubleValue];
  return vabdd_f64(v5, v6) < 0.01 || v5 == v6;
}

id sub_27707922C(void *a1)
{
  v2 = [a1 lastObject];
  if (v2)
  {
    [a1 removeLastObject];
  }

  return v2;
}

uint64_t sub_277079270(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = &a9;
  if (a3)
  {
    v9 = result;
    do
    {
      result = [v9 addObject:?];
      v10 = v11++;
    }

    while (*v10);
  }

  return result;
}

void *sub_2770792C0(void *a1, const char *a2, uint64_t a3)
{
  if (a3)
  {
    return [a1 addObject:?];
  }

  return a1;
}

void *sub_2770792CC(void *a1, const char *a2, uint64_t a3)
{
  if (a3)
  {
    return [a1 addObjectsFromArray:?];
  }

  return a1;
}

uint64_t sub_2770792D8(void *a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a1 == a3)
  {

    return [a1 removeAllObjects];
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    result = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (result)
    {
      v6 = result;
      v7 = *v13;
      do
      {
        v8 = 0;
        do
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(a3);
          }

          v9 = *(*(&v12 + 1) + 8 * v8);
          v10 = [a1 indexOfObjectIdenticalTo:v9];
          if (v10 != 0x7FFFFFFFFFFFFFFFLL)
          {
            for (i = v10; i != 0x7FFFFFFFFFFFFFFFLL; i = [a1 indexOfObjectIdenticalTo:v9])
            {
              [a1 removeObjectAtIndex:i];
            }
          }

          ++v8;
        }

        while (v8 != v6);
        result = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
        v6 = result;
      }

      while (result);
    }
  }

  return result;
}

unint64_t sub_277079450(void *a1, uint64_t a2, unint64_t a3)
{
  result = [a1 count];
  if (result > a3)
  {

    return [a1 removeObjectsInRange:{a3, result - a3}];
  }

  return result;
}

uint64_t sub_2770794A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [a1 indexOfObject:a3 inSortedRange:0 options:objc_msgSend(a1 usingComparator:{"count"), 1024, a4}];
  [a1 insertObject:a3 atIndex:v6];
  return v6;
}

void sub_27707955C(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    sub_277079D28(a1, a2 - v2);
  }
}

void sub_277079700(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      sub_2770289D0();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_277065DA4(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

__n128 *sub_2770798E4(void *a1, __n128 *__src, __n128 *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = ((v6 - *a1) >> 4) + 1;
    if (v11 >> 60)
    {
      sub_2770289D0();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 3 > v11)
    {
      v11 = v13 >> 3;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v14 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 4;
    v29 = a1;
    if (v14)
    {
      sub_277065DA4(a1, v14);
    }

    v26 = 0;
    v27 = 16 * v15;
    v28 = (16 * v15);
    sub_277079FA4(&v26, a3);
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
    a1[1] = v6 + 1;
  }

  else
  {
    v8 = __src + 1;
    if (v6 < 0x10)
    {
      v9 = a1[1];
    }

    else
    {
      v9 = v6 + 1;
      *v6 = v6[-1];
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(&__src[1], __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 1;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = a3[v24];
  }

  return v4;
}

void sub_277079A80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_277079D28(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 16 * a2);
      v5 += 16 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      sub_2770289D0();
    }

    v8 = v4 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_277065DA4(a1, v9);
    }

    v10 = (16 * (v6 >> 4));
    bzero(v10, 16 * a2);
    v11 = &v10[16 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void *sub_277079E3C(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_277079F68(v6, v10);
    }

    sub_2770289D0();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 4)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void sub_277079F68(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_277065DA4(a1, a2);
  }

  sub_2770289D0();
}

__n128 sub_277079FA4(__n128 **a1, __n128 *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = v5 - *a1;
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = (v4 - *a1) >> 3;
      }

      sub_277065DA4(a1[4], v11);
    }

    v7 = ((v6 >> 4) + 1) / -2;
    v8 = ((v6 >> 4) + 1) / 2;
    v9 = &v5[-v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = (v9 + v10);
    a1[1] = &v5[v7];
    a1[2] = (v9 + v10);
  }

  result = *a2;
  *v4 = *a2;
  ++a1[2];
  return result;
}

id sub_27707B0A0(void *a1)
{
  v2 = [a1 count];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:v2];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_27707B20C;
    v10[3] = &unk_27A702000;
    v5 = v4;
    v11 = v5;
    [a1 enumerateKeysAndObjectsUsingBlock:v10];
    if (v3 == [v5 count])
    {

      if (v5)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSDictionary(TSUAdditions) tsu_invertedCopy]"];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/NSDictionaryAdditions.m"];
  [TSUAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:41 isFatal:0 description:"Source dictionary is not invertible."];

  +[TSUAssertionHandler logBacktraceThrottled];
  v5 = 0;
LABEL_7:
  v8 = [v5 copy];

  return v8;
}

void sub_27707B20C(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v10 = a2;
  v7 = a3;
  if (([v7 conformsToProtocol:&unk_28864DC88] & 1) == 0)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSDictionary(TSUAdditions) tsu_invertedCopy]_block_invoke"];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/NSDictionaryAdditions.m"];
    [TSUAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:30 isFatal:0 description:"Source is not invertible because of non-copyable object: %@", v7];

    +[TSUAssertionHandler logBacktraceThrottled];
    *a4 = 1;
  }

  [*(a1 + 32) setObject:v10 forKeyedSubscript:v7];
}

uint64_t sub_27707B314(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:?];
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 BOOLValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_27707B368(void *a1)
{
  v1 = MEMORY[0x277CBEB98];
  v2 = [a1 allKeys];
  v3 = [v1 setWithArray:v2];

  return v3;
}

id sub_27707B3C4(void *a1)
{
  v1 = [a1 allKeysForObject:?];
  if ([v1 count] >= 2)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSDictionary(TSUAdditions) tsu_onlyKeyForObject:]"];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/NSDictionaryAdditions.m"];
    [TSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:129 isFatal:0 description:"tsu_onlyKeyForObject assumes that there's only one key for any object in the dictionary."];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v4 = [v1 firstObject];

  return v4;
}

id sub_27707B49C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 objectForKeyedSubscript:v6];
  if (!v8)
  {
    v8 = v7[2](v7);
    [a1 setObject:v8 forKeyedSubscript:v6];
  }

  return v8;
}

id sub_27707B534(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_27707B5B4;
  v6[3] = &unk_27A702020;
  v6[4] = a4;
  v4 = [a1 tsu_objectForKey:a3 withDefaultUsingBlock:v6];

  return v4;
}

id sub_27707B5B4()
{
  v0 = objc_opt_new();

  return v0;
}

void sub_27707B5E0(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = [a4 objectForKeyedSubscript:v6];
  [a1 tsu_setNonNilObject:v7 forKey:v6];
}

void *sub_27707B658(void *a1, const char *a2, uint64_t a3)
{
  if (a3)
  {
    return [a1 setObject:? forKeyedSubscript:?];
  }

  return a1;
}

uint64_t sub_27707B664(void *a1, statfs *a2)
{
  v3 = [a1 tsu_reachableFileURLByDeletingUnreachablePathComponents];
  v4 = [v3 fileSystemRepresentation];
  if (v4)
  {
    v5 = statfs(v4, a2);
  }

  else
  {
    v5 = 0xFFFFFFFFLL;
  }

  return v5;
}

id sub_27707B6B8(void *a1)
{
  v4 = 0;
  v1 = [a1 getResourceValue:&v4 forKey:*MEMORY[0x277CBE7C8] error:0];
  v2 = v4;
  if ((v1 & 1) == 0)
  {

    v2 = 0;
  }

  return v2;
}

uint64_t sub_27707B764(void *a1)
{
  v2 = 0;
  [a1 tsu_fileSize:&v2 error:0];
  return v2;
}

uint64_t sub_27707B794(void *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277CBE838];
  [a1 removeCachedResourceValueForKey:*MEMORY[0x277CBE838]];
  v33 = 0;
  v7 = [a1 getResourceValue:&v33 forKey:v6 error:0];
  v8 = v33;
  v9 = v8;
  v10 = 0;
  if (v7)
  {
    v10 = [v8 unsignedLongLongValue];
  }

  v11 = [MEMORY[0x277CCAA00] defaultManager];
  v12 = [v11 enumeratorAtURL:a1 includingPropertiesForKeys:0 options:0 errorHandler:0];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v14)
  {
    v15 = v14;
    v26 = a4;
    v16 = *v30;
    v17 = 1;
    do
    {
      v18 = 0;
      do
      {
        v19 = v9;
        if (*v30 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v20 = *(*(&v29 + 1) + 8 * v18);
        [v20 removeCachedResourceValueForKey:v6];
        v27 = 0;
        v28 = 0;
        v21 = [v20 getResourceValue:&v28 forKey:v6 error:&v27];
        v9 = v28;

        v22 = v27;
        if (v21)
        {
          v10 += [v9 unsignedLongLongValue];
        }

        else
        {
          if ((v17 & 1) == 0)
          {
            goto LABEL_15;
          }

          if (TSUDefaultCat_init_token != -1)
          {
            sub_277113C5C();
          }

          if (v26)
          {
            v23 = v22;
            v17 = 0;
            *v26 = v22;
          }

          else
          {
LABEL_15:
            v17 = 0;
          }
        }

        ++v18;
      }

      while (v15 != v18);
      v15 = [v13 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v15);
  }

  else
  {
    v17 = 1;
  }

  if (a3)
  {
    *a3 = v10;
  }

  return v17 & 1;
}

uint64_t sub_27707B9E4()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

BOOL sub_27707BA28(void *a1, uint64_t a2, void *a3)
{
  v4 = open([a1 fileSystemRepresentation], 0x200000);
  if (v4 < 0)
  {
    v6 = -1;
    if (!a3)
    {
      return v6 == 0;
    }

    goto LABEL_9;
  }

  v5 = v4;
  memset(&v8, 0, sizeof(v8));
  v6 = fstat(v4, &v8);
  if (!v6)
  {
    if ((v8.st_flags & 0x40) != 0)
    {
      v6 = 0;
    }

    else
    {
      v6 = fchflags(v5, v8.st_flags | 0x40);
    }
  }

  close(v5);
  if (a3)
  {
LABEL_9:
    if (v6)
    {
      *a3 = [MEMORY[0x277CCA9B8] tsu_fileReadPOSIXErrorWithNumber:*__error() userInfo:0];
    }
  }

  return v6 == 0;
}

id sub_27707BB04(void *a1)
{
  v3 = 0;
  [a1 getResourceValue:&v3 forKey:*MEMORY[0x277CBE918] error:0];
  v1 = v3;

  return v1;
}

uint64_t sub_27707BB50(uint64_t a1)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (TSUDefaultCat_init_token != -1)
  {
    sub_277113C84();
  }

  v2 = objc_alloc_init(MEMORY[0x277CCA9E8]);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_27707BCC4;
  v6[3] = &unk_27A702048;
  v6[4] = &v8;
  v7 = 0;
  [v2 coordinateReadingItemAtURL:a1 options:0 error:&v7 byAccessor:v6];
  v3 = v7;
  if (v3 && TSUDefaultCat_init_token != -1)
  {
    sub_277113CAC();
  }

  v4 = v9[3];

  _Block_object_dispose(&v8, 8);
  return v4;
}

void sub_27707BC68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_27707BC80()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

CGImageSourceRef sub_27707BCC4(uint64_t a1, CFURLRef url)
{
  result = CGImageSourceCreateWithURL(url, 0);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_27707BCFC()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_27707BD40(void *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  result = [a1 isFileURL];
  if (result)
  {
    memset(&v4, 0, 512);
    if (sub_27707B664(a1, &v4))
    {
      return 0;
    }

    return (*v4.f_fstypename != 26216 || v4.f_fstypename[2] != 115) && (*v4.f_fstypename ^ 0x73667061 | v4.f_fstypename[4]) != 0;
  }

  return result;
}

uint64_t sub_27707BE34(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = xmmword_277133D10;
  v6 = 0;
  result = [a1 isFileURL];
  if (result)
  {
    memset(&v7, 0, 512);
    v4 = 0;
    memset(v3, 0, sizeof(v3));
    if (sub_27707B664(a1, &v7) || getattrlist(v7.f_mntonname, &v5, v3, 0x24uLL, 0x21u))
    {
      return 0;
    }

    else
    {
      return BYTE10(v3[0]) & 1;
    }
  }

  return result;
}

uint64_t sub_27707BF38(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  result = [a1 isFileURL];
  if (result)
  {
    memset(&v7, 0, 512);
    v5 = xmmword_277133D10;
    v6 = 0;
    v4 = 0;
    memset(v3, 0, sizeof(v3));
    if (sub_27707B664(a1, &v7) || getattrlist(v7.f_mntonname, &v5, v3, 0x24uLL, 0x21u))
    {
      return 0;
    }

    else
    {
      return (BYTE10(v3[0]) >> 4) & 1;
    }
  }

  return result;
}

id sub_27707C040(void *a1)
{
  if ([a1 isFileURL])
  {
    v2 = a1;
    while (1)
    {
      v3 = [v2 path];
      v4 = [v3 length];

      if (v4 < 3)
      {
        break;
      }

      if ([v2 checkResourceIsReachableAndReturnError:0])
      {
        v5 = v2;
        v2 = v5;
        if (v5)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v6 = [v2 URLByDeletingLastPathComponent];

        v2 = v6;
      }
    }

    v5 = 0;
LABEL_10:
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_27707C108(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [a1 tsu_reachableFileURLByDeletingUnreachablePathComponents];
  v6 = [v4 tsu_reachableFileURLByDeletingUnreachablePathComponents];

  if (![v5 isFileURL] || !objc_msgSend(v6, "isFileURL"))
  {
    v14 = 0;
    goto LABEL_20;
  }

  memset(&v17, 0, sizeof(v17));
  memset(&v16, 0, sizeof(v16));
  v7 = [v5 path];
  v8 = [v7 fileSystemRepresentation];

  if (v8)
  {
    v9 = lstat(v8, &v17);
    if (v9 != -1)
    {
      goto LABEL_8;
    }

    if (TSUDefaultCat_init_token != -1)
    {
      sub_277113CD4();
    }
  }

  v9 = -1;
LABEL_8:
  v10 = [v6 path];
  v11 = [v10 fileSystemRepresentation];

  if (!v11)
  {
LABEL_12:
    v12 = -1;
    goto LABEL_13;
  }

  v12 = lstat(v11, &v16);
  if (v12 == -1)
  {
    if (TSUDefaultCat_init_token != -1)
    {
      sub_277113CFC();
    }

    goto LABEL_12;
  }

LABEL_13:
  if (v12 | v9)
  {
    v13 = 0;
  }

  else
  {
    v13 = v17.st_dev == v16.st_dev;
  }

  v14 = v13;
LABEL_20:

  return v14;
}

uint64_t sub_27707C28C()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_27707C2D0()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_27707C314(void *a1)
{
  v8 = 0;
  v1 = *MEMORY[0x277CBEA10];
  v7 = 0;
  v2 = [a1 getPromisedItemResourceValue:&v8 forKey:v1 error:&v7];
  v3 = v8;
  v4 = v7;
  if ((v2 & 1) == 0)
  {
    if (TSUDefaultCat_init_token != -1)
    {
      sub_277113D24();
    }

    v3 = MEMORY[0x277CBEC28];
  }

  v5 = [v3 BOOLValue];

  return v5;
}

uint64_t sub_27707C3C0()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_27707C404(void *a1)
{
  v8 = 0;
  v1 = *MEMORY[0x277CBEA28];
  v7 = 0;
  v2 = [a1 getPromisedItemResourceValue:&v8 forKey:v1 error:&v7];
  v3 = v8;
  v4 = v7;
  if ((v2 & 1) == 0)
  {
    if (TSUDefaultCat_init_token != -1)
    {
      sub_277113D4C();
    }

    v3 = MEMORY[0x277CBEC28];
  }

  v5 = [v3 BOOLValue];

  return v5;
}

uint64_t sub_27707C4B0()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_27707C4F4(void *a1)
{
  v8 = 0;
  v1 = *MEMORY[0x277CBEA20];
  v7 = 0;
  v2 = [a1 getPromisedItemResourceValue:&v8 forKey:v1 error:&v7];
  v3 = v8;
  v4 = v7;
  if ((v2 & 1) == 0)
  {
    if (TSUDefaultCat_init_token != -1)
    {
      sub_277113D74();
    }

    v3 = MEMORY[0x277CBEC38];
  }

  v5 = [v3 BOOLValue];

  return v5;
}

uint64_t sub_27707C5A0()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_27707C5E4(uint64_t a1)
{
  v9 = 2;
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = MEMORY[0x277CBEBC0];
  v4 = NSTemporaryDirectory();
  v5 = [v3 tsu_fileURLWithPath:v4];
  v6 = [v2 getRelationship:&v9 ofDirectoryAtURL:v5 toItemAtURL:a1 error:0];
  if (v9)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

BOOL sub_27707C68C(void *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v20 = 0;
  v21 = 2;
  v3 = [v2 getRelationship:&v21 ofDirectory:102 inDomain:0 toItemAtURL:a1 error:&v20];
  v4 = v20;
  v5 = v4;
  if (v3)
  {
    v6 = v21 == 0;
    goto LABEL_20;
  }

  if (!v4)
  {
LABEL_15:
    v6 = 0;
    goto LABEL_20;
  }

  if (![v4 tsu_isFeatureUnsupportedError])
  {
    if (([v5 tsu_isNoSuchFileError] & 1) == 0)
    {
      if (TSUDefaultCat_init_token == -1)
      {
        v6 = 0;
        goto LABEL_20;
      }

      sub_277113D9C();
    }

    goto LABEL_15;
  }

  v7 = [a1 URLByDeletingLastPathComponent];
  v8 = [v7 pathComponents];
  v9 = [v8 reverseObjectEnumerator];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        if ([*(*(&v16 + 1) + 8 * i) isEqualToString:{@".Trash", v16}])
        {
          v6 = 1;
          goto LABEL_17;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v16 objects:v22 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v6 = 0;
LABEL_17:

LABEL_20:
  return v6;
}

uint64_t sub_27707C87C()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id sub_27707C8C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_27707C90C(void *a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [a1 removeCachedResourceValueForKey:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

id sub_27707C9FC(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277CBE7B0];
  [a1 removeCachedResourceValueForKey:*MEMORY[0x277CBE7B0]];
  v10 = 0;
  v11 = 0;
  v6 = [a1 getPromisedItemResourceValue:&v11 forKey:v5 error:&v10];
  v7 = v11;
  v8 = v10;
  if ((v6 & 1) == 0)
  {

    if (a3)
    {
      if (TSUDefaultCat_init_token == -1)
      {
        v7 = 0;
        goto LABEL_9;
      }

      sub_277113DC4();
    }

    else
    {
      if (TSUDefaultCat_init_token == -1)
      {
        v7 = 0;
        goto LABEL_9;
      }

      sub_277113DEC();
    }

    v7 = 0;
  }

LABEL_9:

  return v7;
}

uint64_t sub_27707CAD4()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_27707CB18()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id sub_27707CB5C(void *a1)
{
  v1 = [a1 path];
  v2 = [v1 tsu_pathExceptPrivate];

  return v2;
}

id sub_27707CBA8(void *a1)
{
  v1 = MEMORY[0x277CBEBC0];
  v2 = [a1 tsu_pathExceptPrivate];
  v3 = [v1 tsu_fileURLWithPath:v2];

  return v3;
}

uint64_t sub_27707CC0C(id a1, uint64_t a2, void *a3, int a4)
{
  v6 = a3;
  v7 = v6;
  v8 = a1 == v6;
  if (v6 && a1 != v6)
  {
    if ([a1 isEqual:v6])
    {
      v8 = 1;
    }

    else
    {
      if ([a1 isFileURL] && objc_msgSend(v7, "isFileURL"))
      {
        v9 = [a1 tsu_pathExceptPrivate];
        v10 = [v7 tsu_pathExceptPrivate];
        v8 = [v9 isEqualToString:v10];
      }

      else
      {
        v8 = 0;
      }

      if ((v8 & 1) == 0 && a4)
      {
        v17 = 0;
        v11 = *MEMORY[0x277CBE808];
        v12 = [a1 getResourceValue:&v17 forKey:*MEMORY[0x277CBE808] error:0];
        v13 = v17;
        v16 = 0;
        v14 = [v7 getResourceValue:&v16 forKey:v11 error:0];
        v8 = 0;
        if (v12 && v14)
        {
          v8 = [v13 isEqual:v16];
        }
      }
    }
  }

  return v8;
}

uint64_t sub_27707CD4C(void *a1)
{
  v2 = [a1 scheme];
  v3 = [v2 lowercaseString];
  v4 = [v3 isEqualToString:@"tel"];

  if (!v4)
  {
    return 1;
  }

  v5 = [a1 resourceSpecifier];
  v6 = [v5 stringByRemovingPercentEncoding];

  v7 = [MEMORY[0x277CCA900] alphanumericCharacterSet];
  v8 = [v7 invertedSet];
  v9 = [v6 tsu_stringByRemovingCharactersInSet:v8];

  v10 = [v9 length] > 2;
  return v10;
}

id sub_27707CE28(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v8 = [v5 stringByTrimmingCharactersInSet:v7];

  v9 = [MEMORY[0x277CCA900] alphanumericCharacterSet];
  v10 = [v5 rangeOfCharacterFromSet:v9];

  if ([v8 length])
  {
    v11 = v10 == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v12 = 0;
    goto LABEL_16;
  }

  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_27707D108;
  v33 = sub_27707D118;
  v34 = 0;
  if ([v8 hasPrefix:@"tel:"])
  {
    v13 = [MEMORY[0x277CBEBC0] URLWithString:v8];
    v14 = v30[5];
    v30[5] = v13;
  }

  else
  {
    if ([v8 containsString:@" "])
    {
      goto LABEL_12;
    }

    v15 = MEMORY[0x277CBEBC0];
    v14 = [@"tel:" stringByAppendingString:v8];
    v16 = [v15 URLWithString:v14];
    v17 = v30[5];
    v30[5] = v16;
  }

LABEL_12:
  v18 = v30[5];
  if (!v18)
  {
    v19 = [v8 tsu_range];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = sub_27707D120;
    v28[3] = &unk_27A702070;
    v28[4] = &v29;
    [v6 enumerateMatchesInString:v8 options:0 range:v19 usingBlock:{v20, v28}];
    v18 = v30[5];
    if (!v18)
    {
      v21 = MEMORY[0x277CBEBC0];
      v22 = [MEMORY[0x277CCA900] URLFragmentAllowedCharacterSet];
      v23 = [v8 stringByAddingPercentEncodingWithAllowedCharacters:v22];
      v24 = [@"tel:" stringByAppendingString:v23];
      v25 = [v21 URLWithString:v24];
      v26 = v30[5];
      v30[5] = v25;

      v18 = v30[5];
    }
  }

  v12 = v18;
  _Block_object_dispose(&v29, 8);

LABEL_16:

  return v12;
}

void sub_27707D0F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_27707D108(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_27707D120(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v18 = a2;
  v6 = [v18 resultType] == 2048;
  v7 = v18;
  if (v6)
  {
    v8 = [v18 phoneNumber];
    if (![v8 length])
    {
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[NSURL(TSUAdditions) tsu_urlFromUserProvidedTelephoneString:withDataDetector:]_block_invoke"];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/NSURL_TSUAdditions.m"];
      [TSUAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:565 isFatal:0 description:"Expected phone number match from NSDataDetector"];

      +[TSUAssertionHandler logBacktraceThrottled];
    }

    if ([v8 length])
    {
      v11 = MEMORY[0x277CBEBC0];
      v12 = [MEMORY[0x277CCA900] alphanumericCharacterSet];
      v13 = [v8 stringByAddingPercentEncodingWithAllowedCharacters:v12];
      v14 = [@"tel:" stringByAppendingString:v13];
      v15 = [v11 URLWithString:v14];
      v16 = *(*(a1 + 32) + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = v15;

      *a4 = *(*(*(a1 + 32) + 8) + 40) != 0;
    }

    v7 = v18;
  }
}

__CFString *sub_27707D2B0(void *a1)
{
  v1 = [a1 resourceSpecifier];
  v2 = [v1 stringByRemovingPercentEncoding];

  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = &stru_28862C2A0;
  }

  v4 = v3;

  return v3;
}

id TSUFormulaOperatorGetString(uint64_t a1)
{
  switch(a1)
  {
    case 1:
      v2 = TSUOperatorStringAddition();
      goto LABEL_25;
    case 2:
      v2 = TSUOperatorStringSubtraction();
      goto LABEL_25;
    case 3:
      v2 = TSUOperatorStringMultiplication();
      goto LABEL_25;
    case 4:
      v2 = TSUOperatorStringDivision();
      goto LABEL_25;
    case 5:
      v2 = TSUOperatorStringPower();
      goto LABEL_25;
    case 6:
      v2 = TSUOperatorStringIntersection();
      goto LABEL_25;
    case 7:
      v2 = TSUOperatorStringSpillRange();
      goto LABEL_25;
    case 8:
      v2 = TSUOperatorStringConcatenation();
      goto LABEL_25;
    case 9:
      v2 = TSUOperatorStringGreaterThan();
      goto LABEL_25;
    case 10:
      v2 = TSUOperatorStringGreaterThanOrEqualTo();
      goto LABEL_25;
    case 11:
      v2 = TSUOperatorStringLessThan();
      goto LABEL_25;
    case 12:
      v2 = TSUOperatorStringLessThanOrEqualTo();
      goto LABEL_25;
    case 13:
      v2 = TSUOperatorStringEqualTo();
      goto LABEL_25;
    case 14:
      v2 = TSUOperatorStringNotEqualTo();
      goto LABEL_25;
    case 15:
      v2 = TSUOperatorStringPercent();
      goto LABEL_25;
    case 16:
      v2 = TSUOperatorStringColon();
      goto LABEL_25;
    case 17:
      v2 = TSUOperatorStringOpenParen();
      goto LABEL_25;
    case 18:
      v2 = TSUOperatorStringCloseParen();
      goto LABEL_25;
    case 19:
      v2 = TSUOperatorStringStickyModifier();
      goto LABEL_25;
    case 20:
      v2 = TSUOperatorStringSpaceAsIntersection();
LABEL_25:

      break;
    default:
      v2 = 0;

      break;
  }

  return v2;
}

uint64_t TSUFormulaOperatorForChar(int a1)
{
  result = 1;
  if (a1 > 8799)
  {
    if (a1 > 65122)
    {
      switch(a1)
      {
        case 65283:
          return 7;
        case 65284:
          return 19;
        case 65285:
          return 15;
        case 65286:
        case 65287:
        case 65292:
        case 65294:
        case 65296:
        case 65297:
        case 65298:
        case 65299:
        case 65300:
        case 65301:
        case 65302:
        case 65303:
        case 65304:
        case 65305:
        case 65307:
        case 65311:
          return 0;
        case 65288:
          return 17;
        case 65289:
          return 18;
        case 65290:
          return 3;
        case 65291:
          return result;
        case 65293:
          return 2;
        case 65295:
          return 4;
        case 65306:
          return 16;
        case 65308:
          return 11;
        case 65309:
          return 13;
        case 65310:
          return 9;
        case 65312:
          return 6;
        default:
          if (a1 == 65342)
          {
            return 5;
          }

          if (a1 == 65123)
          {
            return 2;
          }

          return 0;
      }
    }

    if (a1 <= 8804)
    {
      if (a1 == 8800)
      {
        return 14;
      }

      if (a1 == 8804)
      {
        return 12;
      }

      return 0;
    }

    if (a1 == 8805)
    {
      return 10;
    }

    if (a1 != 12540)
    {
      if (a1 == 65122)
      {
        return result;
      }

      return 0;
    }

    return 2;
  }

  if (a1 > 93)
  {
    if (a1 <= 1641)
    {
      switch(a1)
      {
        case 94:
          return 5;
        case 215:
          return 3;
        case 247:
          return 4;
      }

      return 0;
    }

    if (a1 == 1642)
    {
      return 15;
    }

    if (a1 != 8722)
    {
      if (a1 == 8745)
      {
        return 20;
      }

      return 0;
    }

    return 2;
  }

  switch(a1)
  {
    case '#':
      return 7;
    case '$':
      return 19;
    case '%':
      return 15;
    case '&':
      result = 8;
      break;
    case '(':
      return 17;
    case ')':
      return 18;
    case '*':
      return 3;
    case '+':
      return result;
    case '-':
      return 2;
    case '/':
      return 4;
    case ':':
      return 16;
    case '<':
      return 11;
    case '=':
      return 13;
    case '>':
      return 9;
    case '@':
      return 6;
    default:
      return 0;
  }

  return result;
}

id TSUOperatorStringAddition()
{
  v0 = qword_280A63BD0;
  if (!qword_280A63BD0)
  {
    v1 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%C", 43];
    v2 = qword_280A63BD0;
    qword_280A63BD0 = v1;

    v0 = qword_280A63BD0;
  }

  return v0;
}

id TSUOperatorStringSubtraction()
{
  v0 = qword_280A63BD8;
  if (!qword_280A63BD8)
  {
    v1 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%C", 8722];
    v2 = qword_280A63BD8;
    qword_280A63BD8 = v1;

    v0 = qword_280A63BD8;
  }

  return v0;
}

id TSUOperatorStringMultiplication()
{
  v0 = qword_280A63BE0;
  if (!qword_280A63BE0)
  {
    v1 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%C", 215];
    v2 = qword_280A63BE0;
    qword_280A63BE0 = v1;

    v0 = qword_280A63BE0;
  }

  return v0;
}

id TSUOperatorStringDivision()
{
  v0 = qword_280A63BE8;
  if (!qword_280A63BE8)
  {
    v1 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%C", 247];
    v2 = qword_280A63BE8;
    qword_280A63BE8 = v1;

    v0 = qword_280A63BE8;
  }

  return v0;
}

id TSUOperatorStringPower()
{
  v0 = qword_280A63BF0;
  if (!qword_280A63BF0)
  {
    v1 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%C", 94];
    v2 = qword_280A63BF0;
    qword_280A63BF0 = v1;

    v0 = qword_280A63BF0;
  }

  return v0;
}

id TSUOperatorStringIntersection()
{
  v0 = qword_280A63BF8;
  if (!qword_280A63BF8)
  {
    v1 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%C", 64];
    v2 = qword_280A63BF8;
    qword_280A63BF8 = v1;

    v0 = qword_280A63BF8;
  }

  return v0;
}

id TSUOperatorStringSpillRange()
{
  v0 = qword_280A63C00;
  if (!qword_280A63C00)
  {
    v1 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%C", 35];
    v2 = qword_280A63C00;
    qword_280A63C00 = v1;

    v0 = qword_280A63C00;
  }

  return v0;
}

id TSUOperatorStringConcatenation()
{
  v0 = qword_280A63C08;
  if (!qword_280A63C08)
  {
    v1 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%C", 38];
    v2 = qword_280A63C08;
    qword_280A63C08 = v1;

    v0 = qword_280A63C08;
  }

  return v0;
}

id TSUOperatorStringGreaterThan()
{
  v0 = qword_280A63C10;
  if (!qword_280A63C10)
  {
    v1 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%C", 62];
    v2 = qword_280A63C10;
    qword_280A63C10 = v1;

    v0 = qword_280A63C10;
  }

  return v0;
}

id TSUOperatorStringGreaterThanOrEqualTo()
{
  v0 = qword_280A63C18;
  if (!qword_280A63C18)
  {
    v1 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%C", 8805];
    v2 = qword_280A63C18;
    qword_280A63C18 = v1;

    v0 = qword_280A63C18;
  }

  return v0;
}

id TSUOperatorStringLessThan()
{
  v0 = qword_280A63C20;
  if (!qword_280A63C20)
  {
    v1 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%C", 60];
    v2 = qword_280A63C20;
    qword_280A63C20 = v1;

    v0 = qword_280A63C20;
  }

  return v0;
}

id TSUOperatorStringLessThanOrEqualTo()
{
  v0 = qword_280A63C28;
  if (!qword_280A63C28)
  {
    v1 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%C", 8804];
    v2 = qword_280A63C28;
    qword_280A63C28 = v1;

    v0 = qword_280A63C28;
  }

  return v0;
}

id TSUOperatorStringEqualTo()
{
  v0 = qword_280A63C30;
  if (!qword_280A63C30)
  {
    v1 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%C", 61];
    v2 = qword_280A63C30;
    qword_280A63C30 = v1;

    v0 = qword_280A63C30;
  }

  return v0;
}

id TSUOperatorStringNotEqualTo()
{
  v0 = qword_280A63C38;
  if (!qword_280A63C38)
  {
    v1 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%C", 8800];
    v2 = qword_280A63C38;
    qword_280A63C38 = v1;

    v0 = qword_280A63C38;
  }

  return v0;
}

id TSUOperatorStringPercent()
{
  v0 = qword_280A63C40;
  if (!qword_280A63C40)
  {
    v1 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%C", 37];
    v2 = qword_280A63C40;
    qword_280A63C40 = v1;

    v0 = qword_280A63C40;
  }

  return v0;
}

id TSUOperatorStringColon()
{
  v0 = qword_280A63C48;
  if (!qword_280A63C48)
  {
    v1 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%C", 58];
    v2 = qword_280A63C48;
    qword_280A63C48 = v1;

    v0 = qword_280A63C48;
  }

  return v0;
}

id TSUOperatorStringOpenParen()
{
  v0 = qword_280A63C50;
  if (!qword_280A63C50)
  {
    v1 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%C", 40];
    v2 = qword_280A63C50;
    qword_280A63C50 = v1;

    v0 = qword_280A63C50;
  }

  return v0;
}

id TSUOperatorStringCloseParen()
{
  v0 = qword_280A63C58;
  if (!qword_280A63C58)
  {
    v1 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%C", 41];
    v2 = qword_280A63C58;
    qword_280A63C58 = v1;

    v0 = qword_280A63C58;
  }

  return v0;
}

id TSUOperatorStringStickyModifier()
{
  v0 = qword_280A63C60;
  if (!qword_280A63C60)
  {
    v1 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%C", 36];
    v2 = qword_280A63C60;
    qword_280A63C60 = v1;

    v0 = qword_280A63C60;
  }

  return v0;
}

id TSUOperatorStringSpaceAsIntersection()
{
  v0 = qword_280A63C68;
  if (!qword_280A63C68)
  {
    v1 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%C", 8745];
    v2 = qword_280A63C68;
    qword_280A63C68 = v1;

    v0 = qword_280A63C68;
  }

  return v0;
}

uint64_t SFUImageDataIsEGOEquation(void *a1, int a2)
{
  v3 = sub_27707EC34(a1, a2);
  if (v3 == 1297369173)
  {
    return 1;
  }

  v4 = v3;
  result = 0;
  if (a2 == 1346978644 && v4 == 1129792837)
  {
    return 1;
  }

  return result;
}

uint64_t sub_27707EC34(void *a1, int a2)
{
  v3 = a1;
  v4 = v3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  if (a2 == 1346651680)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_27707F2AC;
    v12[3] = &unk_27A7020A8;
    v12[4] = &v13;
    sub_27707F0F8(v3, "EGO", v12);
  }

  else if (a2 == 1346978644)
  {
    v5 = sub_27707F048(v3);
    v6 = v5;
    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v5 <= 0xE)
      {
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"OSType SFUEGOImageGetCreator(NSData * _Nullable __strong, OSType)"}];
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/sf/SFUEGOUtils.m"];
        [TSUAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:319 isFatal:0 description:"Invalid EGO signature offset"];

        +[TSUAssertionHandler logBacktraceThrottled];
      }

      else
      {
        v7 = [v4 bytes];
        *(v14 + 6) = bswap32(*(v6 + v7 - 14));
      }
    }
  }

  v8 = *(v14 + 6);
  _Block_object_dispose(&v13, 8);

  return v8;
}

void sub_27707EDD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double SFUEGOImageGetDescent(void *a1, int a2)
{
  v3 = a1;
  v4 = v3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  if (v3)
  {
    if (a2 == 1346651680)
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = sub_27707F254;
      v14[3] = &unk_27A7020A8;
      v14[4] = &v15;
      sub_27707F0F8(v3, "DesignScience", v14);
    }

    else if (a2 == 1346978644)
    {
      v5 = sub_27707F048(v3);
      v6 = v5;
      if (v5 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if (v5 <= 0xA)
        {
          v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGFloat SFUEGOImageGetDescent(NSData *__strong _Nonnull, OSType)"}];
          v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/sf/SFUEGOUtils.m"];
          [TSUAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:264 isFatal:0 description:"Invalid EGO signature offset"];

          +[TSUAssertionHandler logBacktraceThrottled];
        }

        else
        {
          v7 = [v4 bytes];
          v16[3] = (bswap32(*(v6 + v7 - 10)) >> 16);
        }
      }
    }
  }

  else
  {
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGFloat SFUEGOImageGetDescent(NSData *__strong _Nonnull, OSType)"}];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/sf/SFUEGOUtils.m"];
    [TSUAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:259 isFatal:0 description:"invalid nil value for '%{public}s'", "imageData"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v10 = v16[3];
  _Block_object_dispose(&v15, 8);

  return v10;
}

void sub_27707F02C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_27707F048(void *a1)
{
  v1 = a1;
  v2 = [v1 bytes];
  if (!v2)
  {
    goto LABEL_12;
  }

  v3 = v2;
  v4 = [v1 length];
  v5 = 1024;
  if (v4 < 0x400)
  {
    v5 = v4;
  }

  if (v4 >= 0xF)
  {
    v6 = v3 + 14;
    v7 = 14;
    v8 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      v9 = 0;
      while (*(v6 + v9) == aGr[v9])
      {
        if (++v9 == 8)
        {
          v8 = v7;
          goto LABEL_13;
        }
      }

      ++v7;
      ++v6;
    }

    while (v7 != v5);
  }

  else
  {
LABEL_12:
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_13:

  return v8;
}

void sub_27707F0F8(void *a1, const char *a2, void *a3)
{
  v15 = a1;
  v5 = a3;
  v6 = v15;
  if (!v15)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void pLookupPDFEGOValue(NSData *__strong, const char *, __strong LookupPDFPageEGOValueCompletionBlock)"}];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/sf/SFUEGOUtils.m"];
    [TSUAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:235 isFatal:0 description:"invalid nil value for '%{public}s'", "inPDFData"];

    +[TSUAssertionHandler logBacktraceThrottled];
    v6 = 0;
  }

  v9 = v6;
  v10 = CGDataProviderCreateWithData(0, [v15 bytes], objc_msgSend(v15, "length"), 0);
  if (v10)
  {
    v11 = v10;
    v12 = CGPDFDocumentCreateWithProvider(v10);
    if (v12)
    {
      v13 = v12;
      if (CGPDFDocumentGetNumberOfPages(v12))
      {
        Page = CGPDFDocumentGetPage(v13, 1uLL);
        if (Page)
        {
          sub_27707F3A0(Page, a2, v5);
        }
      }

      CGPDFDocumentRelease(v13);
    }

    CGDataProviderRelease(v11);
  }
}

CGPDFReal sub_27707F254(uint64_t a1, CGPDFDictionaryRef dict)
{
  value = 0.0;
  if (CGPDFDictionaryGetNumber(dict, "Baseline", &value))
  {
    result = value;
    *(*(*(a1 + 32) + 8) + 24) = value;
  }

  return result;
}

uint64_t sub_27707F2AC(uint64_t a1, CGPDFDictionary *a2)
{
  result = sub_27707F2E0(a2);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_27707F2E0(CGPDFDictionary *a1)
{
  string[1] = *MEMORY[0x277D85DE8];
  string[0] = 0;
  if (!CGPDFDictionaryGetString(a1, "creator", string))
  {
    v2 = 0;
LABEL_7:
    v3 = 0;
    goto LABEL_8;
  }

  v1 = CGPDFStringCopyTextString(string[0]);
  v2 = v1;
  if (!v1)
  {
    goto LABEL_7;
  }

  if ([(__CFString *)v1 length]> 4)
  {
    goto LABEL_7;
  }

  string[0] = 0;
  if (!CFStringGetCString(v2, string, 8, 0))
  {
    goto LABEL_7;
  }

  v3 = bswap32(string[0]);
LABEL_8:

  return v3;
}

void sub_27707F3A0(CGPDFPage *a1, const char *a2, void *a3)
{
  v5 = a3;
  Dictionary = CGPDFPageGetDictionary(a1);
  if (Dictionary)
  {
    value = 0;
    if (CGPDFDictionaryGetDictionary(Dictionary, "PieceInfo", &value))
    {
      dict = 0;
      if (CGPDFDictionaryGetDictionary(value, a2, &dict))
      {
        v7 = 0;
        if (CGPDFDictionaryGetDictionary(dict, "Private", &v7))
        {
          v5[2](v5, v7);
        }
      }
    }
  }
}

void sub_27707F750()
{
  size = 0;
  sysctlbyname("kern.osversion", 0, &size, 0, 0);
  v0 = malloc_type_malloc(size, 0xC1F31C73uLL);
  sysctlbyname("kern.osversion", v0, &size, 0, 0);
  qword_280A63C70 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v0];
  free(v0);
}

void sub_27707F820()
{
  size = 0;
  sysctlbyname("hw.model", 0, &size, 0, 0);
  v0 = malloc_type_malloc(size, 0x64E4B4A7uLL);
  sysctlbyname("hw.model", v0, &size, 0, 0);
  qword_280A63C80 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v0];
  free(v0);
}

uint64_t TSUSystemVersionNumber()
{
  v0 = [objc_msgSend(MEMORY[0x277D75418] "currentDevice")];

  return TSUVersionNumberFromString(v0);
}

uint64_t TSUVersionNumberFromString(void *a1)
{
  v1 = [a1 componentsSeparatedByString:@"."];
  v2 = [v1 count];
  if (v2 < 1)
  {
    return 0;
  }

  v3 = v2;
  v4 = 1000000 * [objc_msgSend(v1 objectAtIndexedSubscript:{0), "integerValue"}];
  if (v3 != 1)
  {
    v4 += 1000 * [objc_msgSend(v1 objectAtIndexedSubscript:{1), "integerValue"}];
    if (v3 >= 3)
    {
      v4 += [objc_msgSend(v1 objectAtIndexedSubscript:{2), "integerValue"}];
    }
  }

  return v4;
}

id sub_27707F9D4(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10)
  {
    v14 = [MEMORY[0x277CCABD8] mainQueue];

    if (v14 == v12)
    {
      sub_277113E3C(v15, v16, v17, v18, v19, v20, v21, v22);
    }
  }

  v23 = [a1 addObserverForName:v10 object:v11 queue:v12 usingBlock:v13];

  return v23;
}

uint64_t TSUStandardDeviationAndMean(unint64_t a1, double *a2, double *a3, double *a4)
{
  v7 = 0.0;
  if (a1)
  {
    v9 = a1;
    do
    {
      v10 = *a2++;
      v7 = v7 + v10;
      --v9;
    }

    while (v9);
  }

  v11 = v7 / a1;
  result = cblas_ddot_NEWLAPACK();
  if (a4)
  {
    *a4 = v11;
  }

  if (a3)
  {
    *a3 = sqrt((v13 - v7 * v11) / (a1 - 1));
  }

  return result;
}

double TSUStandardError(unint64_t a1, double *a2)
{
  v4 = 0.0;
  TSUStandardDeviationAndMean(a1, a2, &v4, 0);
  return v4 / sqrt(a1);
}

id sub_277080840()
{
  v0 = [MEMORY[0x277CCA8E8] stringFromByteCount:? countStyle:?];
  v1 = [v0 stringByReplacingOccurrencesOfString:@" " withString:@" "];

  return v1;
}

id sub_2770816B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = [objc_alloc(MEMORY[0x277CCAA78]) tsu_initWithIndices:a3 count:a4];

  return v4;
}

uint64_t sub_277081700(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  for (i = [MEMORY[0x277CCAB58] indexSet];
  {
    v8 = *a3++;
    [i addIndex:v8];
  }

  v9 = a1;
  v10 = [v9 initWithIndexSet:i];

  return v10;
}

id sub_27708179C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = [a1 mutableCopy];
  [v4 addIndex:a3];
  v5 = [v4 copy];

  return v5;
}

id sub_277081800(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [a1 mutableCopy];
  [v5 addIndexes:v4];
  v6 = [v5 copy];

  return v6;
}

uint64_t sub_277081888(void *a1)
{
  result = [a1 count];
  if (result)
  {
    v3 = [a1 lastIndex];
    v4 = v3 - [a1 firstIndex] + 1;
    return v4 == [a1 count];
  }

  return result;
}

uint64_t sub_2770818DC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  if ([a1 count] && objc_msgSend(v4, "count"))
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = sub_2770819E8;
    v7[3] = &unk_27A7020D0;
    v8 = v4;
    v9 = &v10;
    [a1 enumerateRangesUsingBlock:v7];
  }

  v5 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);

  return v5;
}

void sub_2770819BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2770819E8(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) intersectsIndexesInRange:{a2, a3}];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

id sub_277081A34(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = a3;
  if (v8 && a5)
  {
    v9 = [a1 mutableCopy];
    [v9 shiftIndexesStartingAtIndex:a4 by:a5];
    v10 = [v8 mutableCopy];
    [v10 shiftIndexesStartingAtIndex:0 by:a4];
    [v9 addIndexes:v10];
  }

  else
  {
    v9 = [a1 copy];
  }

  return v9;
}

id sub_277081B0C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_277081C58;
  v15 = sub_277081C68;
  v16 = [MEMORY[0x277CCAB58] indexSet];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_277081C70;
  v10[3] = &unk_27A7020F8;
  v10[4] = &v11;
  [a1 enumerateRangesInRange:a3 options:a4 usingBlock:{0, v10}];
  v7 = objc_alloc(MEMORY[0x277CCAA78]);
  v8 = [v7 initWithIndexSet:v12[5]];
  _Block_object_dispose(&v11, 8);

  return v8;
}

void sub_277081C38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_277081C58(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_277081C88(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_277081C58;
  v21 = sub_277081C68;
  v22 = [MEMORY[0x277CCAB58] indexSet];
  v5 = [a1 count];
  if (v5 >= [v4 count])
  {
    v8 = [a1 firstIndex];
    v9 = [a1 lastIndex];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_277081F54;
    v13[3] = &unk_27A7020D0;
    v13[4] = a1;
    v13[5] = &v17;
    [v4 enumerateRangesInRange:v8 options:v9 - v8 + 1 usingBlock:{0, v13}];
  }

  else
  {
    v6 = [v4 firstIndex];
    v7 = [v4 lastIndex] - v6;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_277081EBC;
    v14[3] = &unk_27A7020D0;
    v15 = v4;
    v16 = &v17;
    [a1 enumerateRangesInRange:v6 options:v7 + 1 usingBlock:{0, v14}];
  }

  v10 = objc_alloc(MEMORY[0x277CCAA78]);
  v11 = [v10 initWithIndexSet:v18[5]];
  _Block_object_dispose(&v17, 8);

  return v11;
}

void sub_277081E7C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 80), 8);

  _Unwind_Resume(a1);
}

uint64_t sub_277081EBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_277081F3C;
  v5[3] = &unk_27A7020F8;
  v3 = *(a1 + 32);
  v5[4] = *(a1 + 40);
  return [v3 enumerateRangesInRange:a2 options:a3 usingBlock:{0, v5}];
}

uint64_t sub_277081F54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_277081FD4;
  v5[3] = &unk_27A7020F8;
  v3 = *(a1 + 32);
  v5[4] = *(a1 + 40);
  return [v3 enumerateRangesInRange:a2 options:a3 usingBlock:{0, v5}];
}

id sub_277081FEC(void *a1)
{
  v2 = [MEMORY[0x277CCAA78] indexSetWithIndex:?];
  v3 = [a1 tsu_indexSetByExcludingIndexes:v2];

  return v3;
}

id sub_27708205C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [a1 mutableCopy];
  [v5 removeIndexes:v4];
  v6 = [v5 copy];

  return v6;
}

uint64_t sub_2770820E4(void *a1, uint64_t a2, unint64_t a3)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0x7FFFFFFFFFFFFFFFLL;
  if ([a1 count] > a3)
  {
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x2020000000;
    v8[3] = 0;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = sub_2770821FC;
    v7[3] = &unk_27A702120;
    v7[4] = v8;
    v7[5] = &v9;
    v7[6] = a3;
    [a1 enumerateIndexesUsingBlock:v7];
    _Block_object_dispose(v8, 8);
  }

  v5 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v5;
}

void sub_2770821D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void *sub_2770821FC(void *result, uint64_t a2, _BYTE *a3)
{
  v3 = *(result[4] + 8);
  v4 = *(v3 + 24);
  *(v3 + 24) = v4 + 1;
  if (v4 == result[6])
  {
    *(*(result[5] + 8) + 24) = a2;
    *a3 = 1;
  }

  return result;
}

uint64_t sub_277082234(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 count];
  if (!v5)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = v5;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_277082324;
  v9[3] = &unk_27A702148;
  v9[4] = &v10;
  v9[5] = a3;
  [a1 enumerateIndexesUsingBlock:v9];
  if (v11[3] >= v6)
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  return v7;
}

void sub_27708230C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_277082324(uint64_t result, uint64_t a2, _BYTE *a3)
{
  if (*(result + 40) == a2)
  {
    *a3 = 1;
  }

  else
  {
    ++*(*(*(result + 32) + 8) + 24);
  }

  return result;
}

void sub_277082354(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v9[3] = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_277082430;
  v6[3] = &unk_27A702170;
  v7 = v4;
  v8 = v9;
  v5 = v4;
  [a1 enumerateIndexesUsingBlock:v6];

  _Block_object_dispose(v9, 8);
}

void sub_27708240C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_277082430(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  ++*(*(*(a1 + 40) + 8) + 24);
  return result;
}

uint64_t sub_277082484(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x4012000000;
  v11 = sub_277082590;
  v12 = nullsub_2;
  v13 = &unk_27715A77D;
  v14 = a3;
  v15 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2770825A0;
  v7[3] = &unk_27A7020F8;
  v7[4] = &v8;
  [a1 enumerateRangesInRange:a3 options:a4 usingBlock:{0, v7}];
  if (v9[7])
  {
    v4 = (v9 + 6);
  }

  else
  {
    v4 = &TSUInvalidRange;
  }

  v5 = *v4;
  _Block_object_dispose(&v8, 8);
  return v5;
}

void sub_277082578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_277082590(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

NSUInteger sub_2770825A0(uint64_t a1, NSRange range2, _BYTE *a3)
{
  length = range2.length;
  v4.location = range2.location;
  v6 = *(*(*(a1 + 32) + 8) + 48);
  if (v6.length + v6.location == v4.location || v4.location + length == v6.location)
  {
    v4.length = length;
    v6 = NSUnionRange(v6, v4);
    *(*(*(a1 + 32) + 8) + 48) = v6;
  }

  else
  {
    *a3 = 1;
  }

  return v6.location;
}

uint64_t sub_277082608(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x4012000000;
  v10 = sub_277082590;
  v11 = nullsub_2;
  v12 = &unk_27715A77D;
  v13 = a3 + a4;
  v14 = 0;
  [a1 enumerateRangesInRange:? options:? usingBlock:?];
  if (v8[7])
  {
    v4 = (v8 + 6);
  }

  else
  {
    v4 = &TSUInvalidRange;
  }

  v5 = *v4;
  _Block_object_dispose(&v7, 8);
  return v5;
}

void sub_277082700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

NSUInteger sub_277082718(uint64_t a1, NSRange range2, _BYTE *a3)
{
  length = range2.length;
  v4.location = range2.location;
  v6 = *(*(*(a1 + 32) + 8) + 48);
  if (v6.length + v6.location == v4.location || v4.location + length == v6.location)
  {
    v4.length = length;
    v6 = NSUnionRange(v6, v4);
    *(*(*(a1 + 32) + 8) + 48) = v6;
  }

  else
  {
    *a3 = 1;
  }

  return v6.location;
}

uint64_t sub_277082780(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0x7FFFFFFFFFFFFFFFLL;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_27708286C;
  v8[3] = &unk_27A7020D0;
  v9 = v4;
  v10 = &v11;
  v5 = v4;
  [a1 enumerateRangesUsingBlock:v8];
  v6 = v12[3];

  _Block_object_dispose(&v11, 8);
  return v6;
}

void sub_277082848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_27708286C(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_27708291C;
  v8[3] = &unk_27A702198;
  v8[4] = *(a1 + 40);
  result = [v6 enumerateIndexesInRange:a2 options:a3 usingBlock:{0, v8}];
  if (*(*(*(a1 + 40) + 8) + 24) != 0x7FFFFFFFFFFFFFFFLL)
  {
    *a4 = 1;
  }

  return result;
}

uint64_t sub_27708291C(uint64_t result, uint64_t a2, _BYTE *a3)
{
  *(*(*(result + 32) + 8) + 24) = a2;
  *a3 = 1;
  return result;
}

id sub_277082934(void *a1)
{
  v2 = objc_opt_new();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_277082A10;
  v6[3] = &unk_27A7021C0;
  v3 = v2;
  v7 = v3;
  [a1 enumerateRangesUsingBlock:v6];
  v4 = [v3 tsu_localizedList];

  return v4;
}

void sub_277082A10(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < 3)
  {
    v10 = *(a1 + 32);
    v11 = [MEMORY[0x277CCACA8] localizedStringWithFormat:@"%lu", a2 + 1];
    [v10 addObject:v11];
    if (a3 == 2)
    {

      v12 = *(a1 + 32);
      v11 = [MEMORY[0x277CCACA8] localizedStringWithFormat:@"%lu", a2 + 2];
      [v12 addObject:v11];
    }

    v9 = v11;
  }

  else
  {
    v6 = SFUMainBundle();
    v13 = [v6 localizedStringForKey:@"TSU_UNSIGNED_INTEGER_RANGE" value:@"%1$lu to %2$lu" table:@"TSUtility"];

    v7 = *(a1 + 32);
    v8 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v13, a2 + 1, a2 + a3];
    [v7 addObject:v8];

    v9 = v13;
  }
}

uint64_t sub_277082B94(void *a1)
{
  if (![a1 count])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v2 = [a1 firstIndex];
  [a1 lastIndex];
  [a1 firstIndex];
  return v2;
}

void sub_277082C00(void *a1, uint64_t a2, int a3, void *a4)
{
  v6 = a4;
  v7 = [a1 count];
  v8 = v7;
  if (v7 >= 0x40)
  {
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSIndexSet(TSUAdditions) tsu_enumeratePowerSetIncludingEmptySet:usingBlock:]"];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/NSIndexSet_TSUAdditions.mm"];
    [TSUAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:245 isFatal:0 description:"too many indexes!"];
LABEL_15:

    +[TSUAssertionHandler logBacktraceThrottled];
    goto LABEL_16;
  }

  if (!v6)
  {
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSIndexSet(TSUAdditions) tsu_enumeratePowerSetIncludingEmptySet:usingBlock:]"];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/NSIndexSet_TSUAdditions.mm"];
    [TSUAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:249 isFatal:0 description:"invalid nil value for '%{public}s'", "block"];
    goto LABEL_15;
  }

  v9 = ~(-1 << v7);
  v10 = a3 ^ 1u;
  if (v10 <= v9)
  {
    do
    {
      v11 = objc_alloc_init(MEMORY[0x277CCAB58]);
      if (v8)
      {
        for (i = 0; i != v8; ++i)
        {
          if ((v10 & (1 << i)) != 0)
          {
            [v11 addIndex:{objc_msgSend(a1, "tsu_indexAtPosition:", i)}];
          }
        }
      }

      v17 = 0;
      v6[2](v6, v11, &v17);
      v13 = v17;

      if (v13)
      {
        break;
      }
    }

    while (v10++ != v9);
  }

LABEL_16:
}

uint64_t sub_277082E30(void *a1)
{
  [a1 firstIndex];
  [a1 lastIndex];

  return MEMORY[0x2821F9670](a1, sel_tsu_indexSetByIntersectingWithRange_);
}

uint64_t sub_277082EB4()
{
  if (qword_280A63C98 != -1)
  {
    sub_277113EE0();
  }

  return qword_280A63C90;
}

void sub_277082EEC()
{
  v0 = [MEMORY[0x277CCAC38] processInfo];
  v1 = 2 * [v0 processorCount];

  v2 = 16;
  if (v1 > 0x10)
  {
    v2 = v1;
  }

  qword_280A63C90 = v2;
}

void sub_277082F4C(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [a1 firstIndex];
  v12 = [a1 lastIndex];
  v13 = [a1 tsu_nsIndexSetConcurrencyFactor];
  v30 = 0;
  v31 = &v30;
  v32 = 0x4812000000;
  v33 = sub_2770831E4;
  v34 = sub_277083208;
  v35 = &unk_27715A77D;
  memset(v36, 0, sizeof(v36));
  sub_277083234(v36, v13);
  v14 = v12 - v11 + 1;
  v15 = v14 % v13;
  v16 = v13 + v14 - v14 % v13;
  if (v15)
  {
    v17 = v16;
  }

  else
  {
    v17 = v12 - v11 + 1;
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_2770832BC;
  aBlock[3] = &unk_27A702210;
  if (v13 > v17)
  {
    v18 = 1;
  }

  else
  {
    v18 = v17 / v13;
  }

  v28 = v11;
  v29 = v18;
  aBlock[4] = a1;
  v19 = v8;
  v25 = v19;
  v20 = v9;
  v26 = v20;
  v27 = &v30;
  v21 = _Block_copy(aBlock);
  dispatch_apply(v13, 0, v21);
  v22 = [MEMORY[0x277CBEB18] arrayWithCapacity:v13];
  v23 = 0;
  if (v13 <= 1)
  {
    v13 = 1;
  }

  do
  {
    if (*(v31[6] + 8 * v23))
    {
      [v22 addObject:?];
    }

    ++v23;
  }

  while (v13 != v23);
  v10[2](v10, v22);

  _Block_object_dispose(&v30, 8);
  v37 = v36;
  sub_277028B48(&v37);
}

void sub_277083178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  _Block_object_dispose(va, 8);
  *(v18 - 96) = v15;
  sub_277028B48((v18 - 96));

  _Unwind_Resume(a1);
}

__n128 sub_2770831E4(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_277083234(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (v3 - *a1) >> 3;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 8 * a2;
      while (v3 != v6)
      {
        v7 = *(v3 - 8);
        v3 -= 8;
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    sub_277083A28(a1, v5);
  }
}

void sub_2770832BC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 72);
  v5 = *(a1 + 64) + v4 * a2;
  if ([*(a1 + 32) intersectsIndexesInRange:{v5, v4}])
  {
    v6 = (*(*(a1 + 40) + 16))();
    v7 = *(a1 + 32);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_2770833F4;
    v11[3] = &unk_27A7021E8;
    v13 = *(a1 + 48);
    v8 = v6;
    v12 = v8;
    [v7 enumerateRangesInRange:v5 options:v4 usingBlock:{0, v11}];
  }

  else
  {
    v8 = 0;
  }

  v9 = *(*(*(a1 + 56) + 8) + 48);
  v10 = *(v9 + 8 * a2);
  *(v9 + 8 * a2) = v8;
}

void sub_277083408(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2770834C4;
  v8[3] = &unk_27A702238;
  v8[4] = a1;
  v9 = v6;
  v7 = v6;
  [a1 enumerateRangesWithOptions:a3 usingBlock:v8];
}

uint64_t sub_2770834C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [*(a1 + 32) indexGreaterThanIndex:a2 + a3];
  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = *(*(a1 + 40) + 16);

    return v5();
  }

  return result;
}

void sub_277083544(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_277083600;
  v8[3] = &unk_27A702238;
  v8[4] = a1;
  v9 = v6;
  v7 = v6;
  [a1 enumerateRangesWithOptions:a3 usingBlock:v8];
}

unint64_t sub_277083600(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2 + a3;
  result = [*(a1 + 32) indexGreaterThanIndex:a2 + a3];
  if (result != 0x7FFFFFFFFFFFFFFFLL && v6 < result)
  {
    v9 = result;
    do
    {
      result = (*(*(a1 + 40) + 16))();
      if (a4 && (*a4 & 1) != 0)
      {
        break;
      }

      ++v6;
    }

    while (v6 < v9);
  }

  return result;
}

id sub_277083680(void *a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_277081C58;
  v12 = sub_277081C68;
  v13 = [MEMORY[0x277CCAB58] indexSet];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2770837B0;
  v7[3] = &unk_27A702260;
  v7[4] = &v8;
  v7[5] = a3;
  [a1 enumerateRangesUsingBlock:v7];
  v5 = [v9[5] copy];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void sub_277083790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_2770837E4(void *a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  if (a5 < a3 || a5 - a3 >= a4)
  {
    v9 = a3 + a4;
    if (a3 + a4 != a5 && [a1 firstIndex] != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v9 >= a5)
      {
        v10 = 0;
      }

      else
      {
        v10 = a4;
      }

      v11 = a5 - v10;
      v12 = objc_alloc_init(MEMORY[0x277CCAB58]);
      v14 = MEMORY[0x277D85DD0];
      v15 = 3221225472;
      v16 = sub_277083930;
      v17 = &unk_27A702288;
      v13 = v12;
      v18 = v13;
      v19 = a3;
      v20 = a4;
      v21 = v11;
      [a1 enumerateRangesInRange:a3 options:a4 usingBlock:{0, &v14}];
      [a1 shiftIndexesStartingAtIndex:a3 + a4 by:{-a4, v14, v15, v16, v17}];
      [a1 shiftIndexesStartingAtIndex:v11 by:a4];
      [a1 addIndexes:v13];
    }
  }
}

void sub_27708394C(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if ([a1 count])
  {
    v4 = [objc_alloc(MEMORY[0x277CCAB58]) initWithIndexesInRange:{objc_msgSend(a1, "firstIndex"), objc_msgSend(a1, "lastIndex") - objc_msgSend(a1, "firstIndex") + 1}];
    [v4 removeIndexes:v5];
    [a1 removeIndexes:v4];
  }
}

void sub_277083A28(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      sub_2770289D0();
    }

    v8 = v6 >> 3;
    v9 = v4 - *a1;
    if (v9 >> 2 > v7)
    {
      v7 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v11[4] = a1;
    if (v10)
    {
      sub_277028A78(a1, v10);
    }

    v11[0] = 0;
    v11[1] = 8 * v8;
    v11[3] = 0;
    bzero((8 * v8), 8 * a2);
    v11[2] = 8 * v8 + 8 * a2;
    sub_277028920(a1, v11);
    sub_277028AF4(v11);
  }
}

void sub_277083B14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_277028AF4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_277083B28(CGImageSource *a1)
{
  v1 = CGImageSourceCopyPropertiesAtIndex(a1, 0, 0);
  v2 = [-[__CFDictionary objectForKey:](v1 objectForKey:{*MEMORY[0x277CD3410]), "intValue"}];

  result = 0;
  if ((v2 - 1) <= 7)
  {
    return qword_277133D68[v2 - 1];
  }

  return result;
}

uint64_t CGImagePropertyOrientationValueForTSUImageOrientation(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return 1;
  }

  else
  {
    return dword_277133DC8[a1 - 1];
  }
}

CGAffineTransform *TSUImageOrientationTransform@<X0>(CGAffineTransform *result@<X0>, int a2@<W1>, uint64_t a3@<X8>, CGFloat a4@<D0>, CGFloat a5@<D1>, CGFloat a6@<D2>, CGFloat a7@<D3>)
{
  if (!result)
  {
    v21 = MEMORY[0x277CBF2C0];
    v22 = *(MEMORY[0x277CBF2C0] + 16);
    *a3 = *MEMORY[0x277CBF2C0];
    *(a3 + 16) = v22;
    v23 = *(v21 + 32);
    goto LABEL_28;
  }

  v13 = dword_277133DA8[result];
  v14 = MEMORY[0x277CBF2C0];
  v15 = *MEMORY[0x277CBF2C0];
  v16 = *(MEMORY[0x277CBF2C0] + 16);
  *a3 = *MEMORY[0x277CBF2C0];
  *(a3 + 16) = v16;
  v17 = *(v14 + 32);
  *(a3 + 32) = v17;
  v18 = 0xCCuLL >> result;
  if ((0xCCuLL >> result))
  {
    *&v42.a = v15;
    *&v42.c = v16;
    *&v42.tx = v17;
    result = CGAffineTransformScale(a3, &v42, a6 / a7, a7 / a6);
  }

  if (v13 <= 4)
  {
    if (v13 == 2)
    {
LABEL_17:
      v27 = *(a3 + 16);
      *&v41.a = *a3;
      *&v41.c = v27;
      *&v41.tx = *(a3 + 32);
      v28 = -1.0;
      v29 = 1.0;
LABEL_20:
      result = CGAffineTransformScale(&v42, &v41, v28, v29);
LABEL_23:
      v34 = *&v42.c;
      *a3 = *&v42.a;
      *(a3 + 16) = v34;
      *(a3 + 32) = *&v42.tx;
      goto LABEL_24;
    }

    if (v13 == 3)
    {
      v33 = *(a3 + 16);
      *&v41.a = *a3;
      *&v41.c = v33;
      *&v41.tx = *(a3 + 32);
      v20 = 3.14159265;
      goto LABEL_22;
    }

    if (v13 != 4)
    {
      goto LABEL_24;
    }

LABEL_19:
    v32 = *(a3 + 16);
    *&v41.a = *a3;
    *&v41.c = v32;
    *&v41.tx = *(a3 + 32);
    v28 = 1.0;
    v29 = -1.0;
    goto LABEL_20;
  }

  if (v13 <= 6)
  {
    if (v13 != 5)
    {
      v19 = *(a3 + 16);
      *&v41.a = *a3;
      *&v41.c = v19;
      *&v41.tx = *(a3 + 32);
      v20 = 1.57079633;
LABEL_22:
      result = CGAffineTransformRotate(&v42, &v41, v20);
      goto LABEL_23;
    }

    v25 = *(a3 + 16);
    *&v41.a = *a3;
    *&v41.c = v25;
    *&v41.tx = *(a3 + 32);
    CGAffineTransformRotate(&v42, &v41, -1.57079633);
    v26 = *&v42.c;
    *a3 = *&v42.a;
    *(a3 + 16) = v26;
    *(a3 + 32) = *&v42.tx;
    goto LABEL_17;
  }

  if (v13 == 7)
  {
    v30 = *(a3 + 16);
    *&v41.a = *a3;
    *&v41.c = v30;
    *&v41.tx = *(a3 + 32);
    CGAffineTransformRotate(&v42, &v41, -1.57079633);
    v31 = *&v42.c;
    *a3 = *&v42.a;
    *(a3 + 16) = v31;
    *(a3 + 32) = *&v42.tx;
    goto LABEL_19;
  }

  if (v13 == 8)
  {
    v24 = *(a3 + 16);
    *&v41.a = *a3;
    *&v41.c = v24;
    *&v41.tx = *(a3 + 32);
    v20 = -1.57079633;
    goto LABEL_22;
  }

LABEL_24:
  if (!a2)
  {
    return result;
  }

  v43.origin.x = a4;
  v43.origin.y = a5;
  v43.size.width = a6;
  v43.size.height = a7;
  MidX = CGRectGetMidX(v43);
  v44.origin.x = a4;
  v44.origin.y = a5;
  v44.size.width = a6;
  v44.size.height = a7;
  MidY = CGRectGetMidY(v44);
  memset(&v42, 0, sizeof(v42));
  CGAffineTransformMakeTranslation(&v42, MidX, MidY);
  if (v18)
  {
    t1 = v42;
    CGAffineTransformRotate(&v41, &t1, 3.14159265);
    v42 = v41;
  }

  v37 = *(a3 + 16);
  *&t1.a = *a3;
  *&t1.c = v37;
  *&t1.tx = *(a3 + 32);
  v39 = v42;
  CGAffineTransformConcat(&v41, &t1, &v39);
  v42 = v41;
  t1 = v41;
  result = CGAffineTransformTranslate(&v41, &t1, -MidX, -MidY);
  v38 = *&v41.c;
  v23 = *&v41.tx;
  v42 = v41;
  *a3 = *&v41.a;
  *(a3 + 16) = v38;
LABEL_28:
  *(a3 + 32) = v23;
  return result;
}

dispatch_semaphore_t sub_27708449C()
{
  result = dispatch_semaphore_create(1);
  qword_280A63CA8 = result;
  return result;
}

void sub_277084604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_277084638(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  *(*(*(a1 + 40) + 8) + 40) = [MEMORY[0x277D755B8] imageNamed:*(a1 + 32)];

  objc_autoreleasePoolPop(v2);
}

BOOL sub_277085754(CGImage *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 1;
  }

  memset(data, 0, sizeof(data));
  v2 = CGBitmapContextCreateWithData(data, 1uLL, 1uLL, 8uLL, 1uLL, 0, 7u, 0, 0);
  v6.origin.x = 0.0;
  v6.origin.y = 0.0;
  v6.size.width = 1.0;
  v6.size.height = 1.0;
  CGContextDrawImage(v2, v6, a1);
  CFRelease(v2);
  return LOBYTE(data[0]) == 0;
}

CGImageRef sub_277085994(uint64_t a1, CGImageRef image, double a3)
{
  v42[34] = *MEMORY[0x277D85DE8];
  Width = CGImageGetWidth(image);
  Height = CGImageGetHeight(image);
  v8 = fabs(*(a1 + 40));
  [*(a1 + 32) scale];
  v10 = ceil(v8 * v9 * a3);
  v11 = fabs(*(a1 + 48));
  [*(a1 + 32) scale];
  v13 = ceil(v11 * v12 * a3);
  v14 = *(a1 + 64);
  if (*(a1 + 56) * a3 >= Height)
  {
    v15 = Height;
  }

  else
  {
    v15 = *(a1 + 56) * a3;
  }

  if (v14 * a3 >= Height - v15)
  {
    v16 = Height - v15;
  }

  else
  {
    v16 = v14 * a3;
  }

  v17 = *(a1 + 80);
  if (*(a1 + 72) * a3 >= Width)
  {
    v18 = Width;
  }

  else
  {
    v18 = *(a1 + 72) * a3;
  }

  if (v17 * a3 >= Width - v18)
  {
    v19 = Width - v18;
  }

  else
  {
    v19 = v17 * a3;
  }

  sub_277085C90(v41, 0.0, 0.0, Width, Height, v18, v19, v15, v16);
  sub_277085C90(v39, 0.0, 0.0, v10, v13, v18, v19, v15, v16);
  v20 = TSUCreateRGBABitmapContext(1, v10, v13, 1.0);
  if (!v20)
  {
    return 0;
  }

  v21 = v20;
  v22 = v42;
  v23 = &v40;
  v24 = 9;
  do
  {
    v25 = *(v22 - 2);
    v26 = *(v22 - 1);
    v27 = *v22;
    v28 = v22[1];
    v29 = *(v23 - 2);
    v30 = *(v23 - 1);
    v31 = *v23;
    v32 = v23[1];
    v43.origin.x = v25;
    v43.origin.y = v26;
    v43.size.width = *v22;
    v43.size.height = v28;
    if (!CGRectIsEmpty(v43))
    {
      v44.origin.x = v25;
      v44.origin.y = v26;
      v44.size.width = v27;
      v44.size.height = v28;
      if (!CGRectIsNull(v44))
      {
        v45.origin.x = v29;
        v45.origin.y = v30;
        v45.size.width = v31;
        v45.size.height = v32;
        if (!CGRectIsEmpty(v45))
        {
          v46.origin.x = v29;
          v46.origin.y = v30;
          v46.size.width = v31;
          v46.size.height = v32;
          if (!CGRectIsNull(v46))
          {
            v47.origin.x = v25;
            v47.origin.y = v26;
            v47.size.width = v27;
            v47.size.height = v28;
            v33 = CGImageCreateWithImageInRect(image, v47);
            if (v33)
            {
              v34 = v33;
              CGContextSaveGState(v21);
              v48.origin.x = v29;
              v48.origin.y = v30;
              v48.size.width = v31;
              v48.size.height = v32;
              MaxY = CGRectGetMaxY(v48);
              v49.origin.x = v29;
              v49.origin.y = v30;
              v49.size.width = v31;
              v49.size.height = v32;
              MinY = CGRectGetMinY(v49);
              CGContextTranslateCTM(v21, 0.0, MaxY + MinY);
              CGContextScaleCTM(v21, 1.0, -1.0);
              v50.origin.x = v29;
              v50.origin.y = v30;
              v50.size.width = v31;
              v50.size.height = v32;
              CGContextDrawImage(v21, v50, v34);
              CGImageRelease(v34);
              CGContextRestoreGState(v21);
            }
          }
        }
      }
    }

    v22 += 4;
    v23 += 4;
    --v24;
  }

  while (v24);
  v37 = CGBitmapContextCreateImage(v21);
  CGContextRelease(v21);
  return v37;
}

void sub_277085C90(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v30 = *MEMORY[0x277D85DE8];
  v21 = *(MEMORY[0x277CBF398] + 16);
  v22 = *MEMORY[0x277CBF398];
  remainder.origin = v22;
  remainder.size = v21;
  slice.origin = v22;
  slice.size = v21;
  v28.origin = v22;
  v28.size = v21;
  v29.origin = v22;
  v29.size = v21;
  v24.origin = v22;
  v24.size = v21;
  v25.origin = v22;
  v25.size = v21;
  v26.origin = v22;
  v26.size = v21;
  CGRectDivide(*&a2, &slice, &remainder, a8, CGRectMinYEdge);
  CGRectDivide(remainder, &v29, &v28, a9, CGRectMaxYEdge);
  remainder.origin = v22;
  remainder.size = v21;
  v31.origin.x = a2;
  v31.origin.y = a3;
  v31.size.width = a4;
  v31.size.height = a5;
  CGRectDivide(v31, &v24, &remainder, a6, CGRectMinXEdge);
  CGRectDivide(remainder, &v26, &v25, a7, CGRectMaxXEdge);
  v17 = 0;
  v18 = a1 + 16;
  do
  {
    v19 = 0;
    v20 = v18;
    do
    {
      *(v20 - 16) = CGRectIntersection(*(&slice + v19), *(&v24 + v17));
      v20 += 96;
      v19 += 32;
    }

    while (v19 != 96);
    ++v17;
    v18 += 32;
  }

  while (v17 != 3);
}

uint64_t sub_277085FFC(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277D755B8]);
  v3 = [*(a1 + 32) CGImage];
  [*(a1 + 32) scale];
  result = [v2 initWithCGImage:v3 scale:objc_msgSend(*(a1 + 32) orientation:{"imageOrientation"), v4}];
  *(*(a1 + 32) + 32) = result;
  return result;
}

uint64_t sub_277086078(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return 1;
  }

  else
  {
    return dword_277133DE4[a1 - 1];
  }
}

__CFData *CGImagePNGRepresentationWithProperties(CGImage *a1, const __CFDictionary *a2)
{
  v4 = [MEMORY[0x277CBEB28] data];
  v5 = CGImageDestinationCreateWithData(v4, [*MEMORY[0x277CE1E10] identifier], 1uLL, 0);
  CGImageDestinationAddImage(v5, a1, a2);
  if (CGImageDestinationFinalize(v5))
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  CFRelease(v5);
  return v6;
}

__CFData *CGImagePNGRepresentationWithOrientation(CGImage *a1, uint64_t a2)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CD3410];
  v5[0] = [MEMORY[0x277CCABB0] numberWithInt:sub_277086078(a2)];
  return CGImagePNGRepresentationWithProperties(a1, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1]);
}

__CFData *CGImageJPEGRepresentationWithProperties(CGImage *a1, const __CFDictionary *a2)
{
  v4 = [MEMORY[0x277CBEB28] data];
  v5 = CGImageDestinationCreateWithData(v4, [*MEMORY[0x277CE1DC0] identifier], 1uLL, 0);
  CGImageDestinationAddImage(v5, a1, a2);
  if (CGImageDestinationFinalize(v5))
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  CFRelease(v5);
  return v6;
}

UIImage *CGImageJPEGRepresentation(uint64_t a1, CGFloat a2)
{
  result = [objc_alloc(MEMORY[0x277D755B8]) initWithCGImage:a1];
  if (result)
  {
    v4 = result;
    v5 = UIImageJPEGRepresentation(result, a2);

    return v5;
  }

  return result;
}

__CFData *CGImageJPEGRepresentationWithOrientation(CGImage *a1, uint64_t a2)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v5[0] = *MEMORY[0x277CD2D48];
  v6[0] = [MEMORY[0x277CCABB0] numberWithDouble:?];
  v5[1] = *MEMORY[0x277CD3410];
  v6[1] = [MEMORY[0x277CCABB0] numberWithInt:sub_277086078(a2)];
  return CGImageJPEGRepresentationWithProperties(a1, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2]);
}

__CFData *CGImageHEICRepresentationWithOrientation(CGImage *a1, uint64_t a2)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v5[0] = *MEMORY[0x277CD2D48];
  v6[0] = [MEMORY[0x277CCABB0] numberWithDouble:?];
  v5[1] = *MEMORY[0x277CD3410];
  v6[1] = [MEMORY[0x277CCABB0] numberWithInt:sub_277086078(a2)];
  return CGImageHEICRepresentationWithProperties(a1, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2]);
}

__CFData *CGImageHEICRepresentationWithProperties(CGImage *a1, const __CFDictionary *a2)
{
  v4 = [MEMORY[0x277CBEB28] data];
  v5 = CGImageDestinationCreateWithData(v4, [*MEMORY[0x277CE1D90] identifier], 1uLL, 0);
  CGImageDestinationAddImage(v5, a1, a2);
  v6 = CGImageDestinationFinalize(v5);
  if (v5)
  {
    CFRelease(v5);
  }

  if (v6)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

__CFData *CGImageTIFFRepresentation(CGImage *a1)
{
  v2 = [MEMORY[0x277CBEB28] data];
  v3 = CGImageDestinationCreateWithData(v2, [*MEMORY[0x277CE1E80] identifier], 1uLL, 0);
  CGImageDestinationAddImage(v3, a1, 0);
  v4 = CGImageDestinationFinalize(v3);
  if (v3)
  {
    CFRelease(v3);
  }

  if (v4)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

double TSUSizeOfCGImage(CGImage *a1)
{
  Width = CGImageGetWidth(a1);
  CGImageGetHeight(a1);
  return Width;
}

CGImageSource *TSUCGImageSourceHasHDRGainmap(CGImageSource *result)
{
  if (result)
  {
    v1 = result;
    if (CGImageSourceCopyAuxiliaryDataInfoAtIndex(result, 0, *MEMORY[0x277CD2C98]))
    {
      return 1;
    }

    else
    {
      return (CGImageSourceCopyAuxiliaryDataInfoAtIndex(v1, 0, *MEMORY[0x277CD2CA0]) != 0);
    }
  }

  return result;
}

CGImage *TSUCGImageWantsHDRRendering(CGImage *result)
{
  if (result)
  {
    ColorSpace = CGImageGetColorSpace(result);

    return TSUColorSpaceSupportsHDR(ColorSpace);
  }

  return result;
}

double TSURectWithPoints(double a1, double a2, double a3)
{
  if (a1 >= a3)
  {
    return a3;
  }

  else
  {
    return a1;
  }
}

double TSURectWithSizeAlignedToRect(int a1, int a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v17.size.height = a4;
  v17.size.width = a3;
  v17.origin.x = 0.0;
  v17.origin.y = 0.0;
  v18 = CGRectStandardize(v17);
  x = v18.origin.x;
  width = v18.size.width;
  v18.origin.x = a5;
  v18.origin.y = a6;
  v18.size.width = a7;
  v18.size.height = a8;
  if (!CGRectIsNull(v18))
  {
    switch(a1)
    {
      case 3:
        v21.origin.x = a5;
        v21.origin.y = a6;
        v21.size.width = a7;
        v21.size.height = a8;
        x = CGRectGetMaxX(v21) - width;
        break;
      case 2:
        v20.origin.x = a5;
        v20.origin.y = a6;
        v20.size.width = a7;
        v20.size.height = a8;
        x = CGRectGetMidX(v20) + width * -0.5;
        break;
      case 1:
        v19.origin.x = a5;
        v19.origin.y = a6;
        v19.size.width = a7;
        v19.size.height = a8;
        x = CGRectGetMinX(v19);
        break;
    }

    switch(a2)
    {
      case 3:
        v24.origin.x = a5;
        v24.origin.y = a6;
        v24.size.width = a7;
        v24.size.height = a8;
        CGRectGetMaxY(v24);
        break;
      case 2:
        v23.origin.x = a5;
        v23.origin.y = a6;
        v23.size.width = a7;
        v23.size.height = a8;
        CGRectGetMidY(v23);
        break;
      case 1:
        v22.origin.x = a5;
        v22.origin.y = a6;
        v22.size.width = a7;
        v22.size.height = a8;
        CGRectGetMinY(v22);
        break;
    }
  }

  return x;
}

BOOL TSUNearlyEqualPoints(double a1, double a2, double a3, double a4)
{
  if (a1 != a3 && vabdd_f64(a1, a3) >= 0.01)
  {
    return 0;
  }

  if (vabdd_f64(a2, a4) < 0.01)
  {
    return 1;
  }

  return a2 == a4;
}

BOOL TSUEqualPointsWithThreshold(double a1, double a2, double a3, double a4, double a5)
{
  v5 = vabdd_f64(a1, a3);
  if (a1 != a3 && v5 >= a5)
  {
    return 0;
  }

  if (vabdd_f64(a2, a4) < a5)
  {
    return 1;
  }

  return a2 == a4;
}

BOOL TSUPointsAlmostEqual(double a1, double a2, double a3, double a4)
{
  if (a1 != a3 && vabdd_f64(a1, a3) >= 0.1)
  {
    return 0;
  }

  if (vabdd_f64(a2, a4) < 0.1)
  {
    return 1;
  }

  return a2 == a4;
}

BOOL TSUNearlyEqualSizes(double a1, double a2, double a3, double a4)
{
  if (a1 != a3 && vabdd_f64(a1, a3) >= 0.01)
  {
    return 0;
  }

  if (vabdd_f64(a2, a4) < 0.01)
  {
    return 1;
  }

  return a2 == a4;
}

BOOL TSUEqualSizesWithThreshold(double a1, double a2, double a3, double a4, double a5)
{
  v5 = vabdd_f64(a1, a3);
  if (a1 != a3 && v5 >= a5)
  {
    return 0;
  }

  if (vabdd_f64(a2, a4) < a5)
  {
    return 1;
  }

  return a2 == a4;
}

BOOL TSUNearlyEqualTransforms(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v6[0] = *a1;
  v6[1] = v2;
  v6[2] = a1[2];
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  v5[2] = a2[2];
  return sub_2770869A4(v6, v5, 0.000000001);
}

BOOL TSUNearlyEqualRects(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  if (a1 != a5 && vabdd_f64(a1, a5) >= 0.01 || a2 != a6 && vabdd_f64(a2, a6) >= 0.01 || a3 != a7 && vabdd_f64(a3, a7) >= 0.01)
  {
    return 0;
  }

  if (vabdd_f64(a4, a8) < 0.01)
  {
    return 1;
  }

  return a4 == a8;
}

BOOL TSUEqualRectsWithThreshold(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v17 = vabdd_f64(a1, a5);
  if (a1 != a5 && v17 >= a9)
  {
    return 0;
  }

  v19 = vabdd_f64(a2, a6);
  v20 = a2 == a6 || v19 < a9;
  if (!v20 || a3 != a7 && vabdd_f64(a3, a7) >= a9)
  {
    return 0;
  }

  if (vabdd_f64(a4, a8) < a9)
  {
    return 1;
  }

  return a4 == a8;
}

BOOL TSUNearlyContainsRect(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v18 = CGRectInset(*&a1, -0.01, -0.01);
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = a8;

  return CGRectContainsRect(v18, *&v12);
}

BOOL TSUNearlyCollinearPoints(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v6 = a3 - a1;
  v7 = a6 - a2;
  v8 = a4 - a2;
  v9 = a5 - a1;
  v10 = v6 * v7 - v8 * v9;
  return v10 == 0.0 || v10 * v10 < (v8 * v8 + v6 * v6) * 0.0001 * (v7 * v7 + v9 * v9);
}

double TSUPointOnCurve(float64x2_t *a1, double a2)
{
  __asm { FMOV            V5.2D, #3.0 }

  *&result = *&vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(vmulq_n_f64(vmulq_n_f64(vmulq_f64(a1[1], _Q5), a2), 1.0 - a2), 1.0 - a2), vmulq_n_f64(vmulq_n_f64(*a1, 1.0 - a2), 1.0 - a2), 1.0 - a2), vmulq_n_f64(vmulq_n_f64(vmulq_f64(a1[2], _Q5), a2), a2), 1.0 - a2), vmulq_n_f64(vmulq_n_f64(a1[3], a2), a2), a2);
  return result;
}

double sub_277086C98(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v34.origin.x = a5;
  v34.origin.y = a6;
  v34.size.width = a7;
  v34.size.height = a8;
  MinX = CGRectGetMinX(v34);
  v35.origin.x = a5;
  v35.origin.y = a6;
  v35.size.width = a7;
  v35.size.height = a8;
  MaxX = CGRectGetMaxX(v35);
  v36.origin.x = a5;
  v36.origin.y = a6;
  v36.size.width = a7;
  v36.size.height = a8;
  MinY = CGRectGetMinY(v36);
  v37.origin.x = a5;
  v37.origin.y = a6;
  v37.size.width = a7;
  v37.size.height = a8;
  MaxY = CGRectGetMaxY(v37);
  v16 = sub_277086F18(a1, a2, a5, a6, a7, a8);
  v32 = a7;
  v33 = a8;
  v17 = sub_277086F18(a3, a4, a5, a6, a7, a8);
  if (!(v17 | v16))
  {
    return a1;
  }

  v18 = v17;
  if ((v17 & v16) == 0)
  {
    while (1)
    {
      v20 = v16 ? v16 : v18;
      if (v20)
      {
        break;
      }

      if ((v20 & 2) != 0)
      {
        v23 = a3 - a1;
        v22 = MinY;
        goto LABEL_14;
      }

      if ((v20 & 4) != 0)
      {
        v26 = a4 - a2;
        v19 = MaxX;
      }

      else
      {
        if ((v20 & 8) == 0)
        {
          v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGPoint p_TSUIntersectionPointOfLineWithRect(CGPoint, CGPoint, CGRect)"}];
          +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v21, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUGeometry.m"], 474, 0, "Unhandled intersection scenario");
          +[TSUAssertionHandler logBacktraceThrottled];
          v19 = MinX;
          v22 = MinY;
          goto LABEL_15;
        }

        v26 = a4 - a2;
        v19 = MinX;
      }

      v22 = a2 + (v19 - a1) * v26 / (a3 - a1);
LABEL_15:
      v24 = sub_277086F18(v19, v22, a5, a6, v32, v33);
      if (v20 == v16)
      {
        a1 = v19;
        a2 = v22;
        v25 = v24;
      }

      else
      {
        v25 = v16;
      }

      if (v20 != v16)
      {
        v18 = v24;
      }

      if (!(v18 | v25))
      {
        return a1;
      }

      if (v20 != v16)
      {
        a3 = v19;
        a4 = v22;
      }

      v16 = v25;
      if ((v18 & v25) != 0)
      {
        return v19;
      }
    }

    v23 = a3 - a1;
    v22 = MaxY;
LABEL_14:
    v19 = a1 + v23 * (v22 - a2) / (a4 - a2);
    goto LABEL_15;
  }

  return INFINITY;
}

uint64_t sub_277086F18(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v14.origin.x = a3;
  v14.origin.y = a4;
  v14.size.width = a5;
  v14.size.height = a6;
  if (a2 <= CGRectGetMaxY(v14))
  {
    v15.origin.x = a3;
    v15.origin.y = a4;
    v15.size.width = a5;
    v15.size.height = a6;
    if (a2 < CGRectGetMinY(v15))
    {
      v12 = 2;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 1;
  }

  v16.origin.x = a3;
  v16.origin.y = a4;
  v16.size.width = a5;
  v16.size.height = a6;
  if (a1 > CGRectGetMaxX(v16))
  {
    return v12 | 4;
  }

  v17.origin.x = a3;
  v17.origin.y = a4;
  v17.size.width = a5;
  v17.size.height = a6;
  if (a1 < CGRectGetMinX(v17))
  {
    return v12 | 8;
  }

  else
  {
    return v12;
  }
}

uint64_t sub_277086FEC(unint64_t a1, CGFloat a2, CGFloat a3, double a4, double a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v14 = a5;
  v15 = a4;
  while (1)
  {
    v18 = sub_277086F18(a2, a3, a6, a7, a8, a9);
    v19 = sub_277086F18(v15, v14, a6, a7, a8, a9);
    result = 1;
    if (!v18 || !v19)
    {
      break;
    }

    if ((v19 & v18) != 0)
    {
      return 0;
    }

    if (a1 >= 0xFB && (a2 == v15 || vabdd_f64(a2, v15) < 0.00000001))
    {
      result = 0;
      if (a3 == v14 || vabdd_f64(a3, v14) < 0.00000001)
      {
        return result;
      }
    }

    v21 = (v15 + a2) * 0.5;
    v22 = (v14 + a3) * 0.5;
    v23 = sub_277086FEC(++a1, a2, a3, v21, v22, a6, a7, a8, a9);
    a2 = v21;
    a3 = v22;
    v15 = a4;
    v14 = a5;
    if (v23)
    {
      return 1;
    }
  }

  return result;
}

double TSUSizeMax(double result, double a2, double a3)
{
  if (result < a3)
  {
    return a3;
  }

  return result;
}

double TSUSizeMin(double result, double a2, double a3)
{
  if (result >= a3)
  {
    return a3;
  }

  return result;
}

double TSUUnionRect(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = a7 <= 0.0;
  if (a8 > 0.0)
  {
    v8 = 0;
  }

  if (a3 > 0.0 || a4 > 0.0)
  {
    if (v8)
    {
      return a1;
    }

    else if (a1 < a5)
    {
      return a1;
    }
  }

  else if (v8)
  {
    return *MEMORY[0x277CBF3A0];
  }

  return a5;
}

BOOL TSUIntersectsRect(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  if (a1 < a5)
  {
    result = a1 + a3 > a5;
  }

  else
  {
    result = a5 + a7 > a1;
  }

  if (a2 >= a6)
  {
    if (a6 + a8 > a2)
    {
      return result;
    }

    return 0;
  }

  if (a2 + a4 <= a6)
  {
    return 0;
  }

  return result;
}

double TSUMultiplyRectScalar(double a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  v9 = a1;
  if (!CGRectIsInfinite(*&a1))
  {
    v11.origin.x = v9;
    v11.origin.y = a2;
    v11.size.width = a3;
    v11.size.height = a4;
    if (!CGRectIsNull(v11))
    {
      return v9 * a5;
    }
  }

  return v9;
}

double TSUNonNegativeSize(double result)
{
  if (result <= 0.0)
  {
    return 0.0;
  }

  return result;
}

void TSUDistanceToRectSquared(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v16.origin.x = a3;
  v16.origin.y = a4;
  v16.size.width = a5;
  v16.size.height = a6;
  if (a1 < CGRectGetMinX(v16))
  {
    v17.origin.x = a3;
    v17.origin.y = a4;
    v17.size.width = a5;
    v17.size.height = a6;
    if (a2 < CGRectGetMinY(v17))
    {
      v18.origin.x = a3;
      v18.origin.y = a4;
      v18.size.width = a5;
      v18.size.height = a6;
      CGRectGetMinX(v18);
LABEL_7:
      v22.origin.x = a3;
      v22.origin.y = a4;
      v22.size.width = a5;
      v22.size.height = a6;
      CGRectGetMinY(v22);
      return;
    }

    v23.origin.x = a3;
    v23.origin.y = a4;
    v23.size.width = a5;
    v23.size.height = a6;
    MaxY = CGRectGetMaxY(v23);
    v24.origin.x = a3;
    v24.origin.y = a4;
    v24.size.width = a5;
    v24.size.height = a6;
    CGRectGetMinX(v24);
    if (a2 <= MaxY)
    {
      return;
    }

LABEL_13:
    v28.origin.x = a3;
    v28.origin.y = a4;
    v28.size.width = a5;
    v28.size.height = a6;
    CGRectGetMaxY(v28);
    return;
  }

  v19.origin.x = a3;
  v19.origin.y = a4;
  v19.size.width = a5;
  v19.size.height = a6;
  MaxX = CGRectGetMaxX(v19);
  v20.origin.x = a3;
  v20.origin.y = a4;
  v20.size.width = a5;
  v20.size.height = a6;
  MinY = CGRectGetMinY(v20);
  if (a1 <= MaxX)
  {
    if (a2 >= MinY)
    {
      v29.origin.x = a3;
      v29.origin.y = a4;
      v29.size.width = a5;
      v29.size.height = a6;
      if (a2 > CGRectGetMaxY(v29))
      {
        v30.origin.x = a3;
        v30.origin.y = a4;
        v30.size.width = a5;
        v30.size.height = a6;
        CGRectGetMaxY(v30);
      }
    }

    else
    {
      v25.origin.x = a3;
      v25.origin.y = a4;
      v25.size.width = a5;
      v25.size.height = a6;
      CGRectGetMinY(v25);
    }

    return;
  }

  if (a2 < MinY)
  {
    v21.origin.x = a3;
    v21.origin.y = a4;
    v21.size.width = a5;
    v21.size.height = a6;
    CGRectGetMaxX(v21);
    goto LABEL_7;
  }

  v26.origin.x = a3;
  v26.origin.y = a4;
  v26.size.width = a5;
  v26.size.height = a6;
  v15 = CGRectGetMaxY(v26);
  v27.origin.x = a3;
  v27.origin.y = a4;
  v27.size.width = a5;
  v27.size.height = a6;
  CGRectGetMaxX(v27);
  if (a2 > v15)
  {
    goto LABEL_13;
  }
}

double TSUClampPointInRect(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v9 = TSUClamp(a1, a3, a3 + a5);
  TSUClamp(a2, a4, a4 + a6);
  return v9;
}

double TSUCenterOfRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  MidX = CGRectGetMidX(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMidY(v10);
  return MidX;
}

double TSURectGetMaxPoint(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  MaxX = CGRectGetMaxX(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMaxY(v10);
  return MaxX;
}

double TSURectGetMinPoint(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  MinX = CGRectGetMinX(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMinY(v10);
  return MinX;
}

double TSUGetUpperLeft(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  MinX = CGRectGetMinX(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMinY(v10);
  return MinX;
}

double TSUGetUpperRight(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  MaxX = CGRectGetMaxX(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMinY(v10);
  return MaxX;
}

double TSUGetLowerLeft(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  MinX = CGRectGetMinX(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMaxY(v10);
  return MinX;
}

double TSUGetLowerRight(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  MaxX = CGRectGetMaxX(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMaxY(v10);
  return MaxX;
}

double TSUClampPointOnLineToRect(double result, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v12 = a3 + a5;
  v13 = a4 + a6;
  if (result < a3 || result > v12 || a2 < a4 || a2 > v13)
  {
    return sub_277086C98(result, a2, a7, a8, a3, a4, a5, a6);
  }

  return result;
}

double TSUGrowRectToPoint(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  if (!CGRectIsNull(*&a1))
  {
    v13.origin.x = a1;
    v13.origin.y = a2;
    v13.size.width = a3;
    v13.size.height = a4;
    MinX = CGRectGetMinX(v13);
    if (MinX >= a5)
    {
      v11 = a5;
    }

    else
    {
      v11 = MinX;
    }

    v14.origin.x = a1;
    v14.origin.y = a2;
    v14.size.width = a3;
    v14.size.height = a4;
    CGRectGetMaxX(v14);
    v15.origin.x = a1;
    v15.origin.y = a2;
    v15.size.width = a3;
    v15.size.height = a4;
    CGRectGetMinY(v15);
    v16.origin.x = a1;
    v16.origin.y = a2;
    v16.size.width = a3;
    v16.size.height = a4;
    CGRectGetMaxY(v16);
    return v11;
  }

  return a5;
}

double TSUCenterRectOverRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v26.origin.x = a5;
  v26.origin.y = a6;
  v26.size.width = a7;
  v26.size.height = a8;
  MidX = CGRectGetMidX(v26);
  v27.origin.x = a5;
  v27.origin.y = a6;
  v27.size.width = a7;
  v27.size.height = a8;
  MidY = CGRectGetMidY(v27);
  v28.origin.x = a1;
  v28.origin.y = a2;
  v28.size.width = a3;
  v28.size.height = a4;
  v17 = CGRectGetMidX(v28);
  v29.origin.x = a1;
  v29.origin.y = a2;
  v29.size.width = a3;
  v29.size.height = a4;
  v18 = MidY - CGRectGetMidY(v29);
  v19 = a1;
  v20 = a2;
  v21 = a3;
  v22 = a4;

  *&result = CGRectOffset(*&v19, MidX - v17, v18);
  return result;
}

BOOL TSURectIsFinite(double a1, double a2, double a3, double a4)
{
  v4 = (*&a3 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&a4 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  return (*&a1 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && v4;
}

uint64_t TSUMixBOOLs(uint64_t result, unsigned int a2, double a3)
{
  if (a3 > 0.5)
  {
    return a2;
  }

  else
  {
    return result;
  }
}

void TSUMixAnglesInDegrees(double a1, double a2, double a3)
{
  v5 = fmod(a1 + 360.0, 360.0);
  if (v5 < 0.0)
  {
    v5 = v5 + 360.0;
  }

  if (v5 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v5;
  }

  v7 = fmod(a2 + 360.0, 360.0);
  if (v7 < 0.0)
  {
    v7 = v7 + 360.0;
  }

  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  if (vabdd_f64(v7, v6) > 180.0)
  {
    if (v6 <= v7)
    {
      v7 = v7 + -360.0;
    }

    else
    {
      v7 = v7 + 360.0;
    }
  }

  fmod(v7 * a3 + v6 * (1.0 - a3) + 360.0, 360.0);
}

double TSUTranslatedRectMaximizingOverlapWithRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v36.origin.x = a5;
  v36.origin.y = a6;
  v36.size.width = a7;
  v36.size.height = a8;
  MaxX = CGRectGetMaxX(v36);
  v34 = a1;
  v37.origin.x = a1;
  v37.origin.y = a2;
  v37.size.width = a3;
  v37.size.height = a4;
  if (MaxX > CGRectGetMaxX(v37))
  {
    v38.origin.x = a5;
    v38.origin.y = a6;
    v38.size.width = a7;
    v38.size.height = a8;
    MinX = CGRectGetMinX(v38);
    v39.origin.x = a1;
    v39.origin.y = a2;
    v39.size.width = a3;
    v39.size.height = a4;
    if (MinX > CGRectGetMinX(v39))
    {
      v40.origin.x = a5;
      v40.origin.y = a6;
      v40.size.width = a7;
      v40.size.height = a8;
      v29 = CGRectGetMaxX(v40);
      v41.origin.x = a1;
      v41.origin.y = a2;
      v41.size.width = a3;
      v41.size.height = a4;
      v30 = v29 - CGRectGetMaxX(v41);
      v42.origin.x = a5;
      v42.origin.y = a6;
      v42.size.width = a7;
      v42.size.height = a8;
      v28 = CGRectGetMinX(v42);
      v43.origin.x = a1;
      v43.origin.y = a2;
      v43.size.width = a3;
      v43.size.height = a4;
      v17 = v28 - CGRectGetMinX(v43);
      if (v30 < v17)
      {
        v17 = v30;
      }

      v18 = a1 + v17;
LABEL_11:
      v34 = v18;
      goto LABEL_12;
    }
  }

  v44.origin.x = a5;
  v44.origin.y = a6;
  v44.size.width = a7;
  v44.size.height = a8;
  v19 = CGRectGetMinX(v44);
  v45.origin.x = a1;
  v45.origin.y = a2;
  v45.size.width = a3;
  v45.size.height = a4;
  if (v19 < CGRectGetMinX(v45))
  {
    v46.origin.x = a5;
    v46.origin.y = a6;
    v46.size.width = a7;
    v46.size.height = a8;
    v20 = CGRectGetMaxX(v46);
    v47.origin.x = a1;
    v47.origin.y = a2;
    v47.size.width = a3;
    v47.size.height = a4;
    if (v20 < CGRectGetMaxX(v47))
    {
      v48.origin.x = a1;
      v48.origin.y = a2;
      v48.size.width = a3;
      v48.size.height = a4;
      v31 = CGRectGetMinX(v48);
      v49.origin.x = a5;
      v49.origin.y = a6;
      v49.size.width = a7;
      v49.size.height = a8;
      v32 = v31 - CGRectGetMinX(v49);
      v50.origin.x = a1;
      v50.origin.y = a2;
      v50.size.width = a3;
      v50.size.height = a4;
      v21 = CGRectGetMaxX(v50);
      v51.origin.x = a5;
      v51.origin.y = a6;
      v51.size.width = a7;
      v51.size.height = a8;
      v22 = v21 - CGRectGetMaxX(v51);
      if (v32 < v22)
      {
        v22 = v32;
      }

      v18 = a1 - v22;
      goto LABEL_11;
    }
  }

LABEL_12:
  v52.origin.x = a5;
  v52.origin.y = a6;
  v52.size.width = a7;
  v52.size.height = a8;
  MaxY = CGRectGetMaxY(v52);
  v53.origin.x = a1;
  v53.origin.y = a2;
  v53.size.width = a3;
  v53.size.height = a4;
  if (MaxY <= CGRectGetMaxY(v53) || (v54.origin.x = a5, v54.origin.y = a6, v54.size.width = a7, v54.size.height = a8, v24 = CGRectGetMinY(v54), v55.origin.x = a1, v55.origin.y = a2, v55.size.width = a3, v55.size.height = a4, v24 <= CGRectGetMinY(v55)))
  {
    v60.origin.x = a5;
    v60.origin.y = a6;
    v60.size.width = a7;
    v60.size.height = a8;
    MinY = CGRectGetMinY(v60);
    v61.origin.x = a1;
    v61.origin.y = a2;
    v61.size.width = a3;
    v61.size.height = a4;
    if (MinY < CGRectGetMinY(v61))
    {
      v62.origin.x = a5;
      v62.origin.y = a6;
      v62.size.width = a7;
      v62.size.height = a8;
      v26 = CGRectGetMaxY(v62);
      v63.origin.x = a1;
      v63.origin.y = a2;
      v63.size.width = a3;
      v63.size.height = a4;
      if (v26 < CGRectGetMaxY(v63))
      {
        v64.origin.x = a1;
        v64.origin.y = a2;
        v64.size.width = a3;
        v64.size.height = a4;
        CGRectGetMinY(v64);
        v65.origin.x = a5;
        v65.origin.y = a6;
        v65.size.width = a7;
        v65.size.height = a8;
        CGRectGetMinY(v65);
        v66.origin.x = a1;
        v66.origin.y = a2;
        v66.size.width = a3;
        v66.size.height = a4;
        CGRectGetMaxY(v66);
        v67.origin.x = a5;
        v67.origin.y = a6;
        v67.size.width = a7;
        v67.size.height = a8;
        CGRectGetMaxY(v67);
      }
    }
  }

  else
  {
    v56.origin.x = a5;
    v56.origin.y = a6;
    v56.size.width = a7;
    v56.size.height = a8;
    CGRectGetMaxY(v56);
    v57.origin.x = a1;
    v57.origin.y = a2;
    v57.size.width = a3;
    v57.size.height = a4;
    CGRectGetMaxY(v57);
    v58.origin.x = a5;
    v58.origin.y = a6;
    v58.size.width = a7;
    v58.size.height = a8;
    CGRectGetMinY(v58);
    v59.origin.x = a1;
    v59.origin.y = a2;
    v59.size.width = a3;
    v59.size.height = a4;
    CGRectGetMinY(v59);
  }

  return v34;
}

double TSUOriginRotate(double *a1, double a2, double a3)
{
  v5 = __sincos_stret(a3);
  result = v5.__sinval * a2;
  *a1 = v5.__cosval * a2;
  a1[1] = v5.__sinval * a2;
  return result;
}

double TSUDeltaFromAngle(double a1)
{
  if (a1 == 0.0)
  {
    return 1.0;
  }

  return __sincos_stret(a1).__cosval;
}

double TSURotatePoint90Degrees(int a1, double a2, double a3)
{
  if (a1)
  {
    return -a3;
  }

  else
  {
    return a3;
  }
}

double TSURotatePoint(int a1, double a2, double a3, double a4)
{
  v4 = -a4;
  memset(&v8.c, 0, 32);
  if (a1)
  {
    v4 = a4;
  }

  *&v8.a = 0uLL;
  CGAffineTransformMakeRotation(&v8, v4);
  *&result = *&vaddq_f64(*&v8.tx, vmlaq_n_f64(vmulq_n_f64(*&v8.c, a3), *&v8.a, a2));
  return result;
}

__n128 TSUNormalize3DRotationInRadians(__n128 a1)
{
  v13 = a1.n128_f32[2];
  v1 = vcltz_f32(a1.n128_u64[0]);
  v2.i64[0] = v1.i32[0];
  v2.i64[1] = v1.i32[1];
  v11 = vdupq_n_s64(0x401921FB54442D18uLL);
  __x = vaddq_f64(vcvtq_f64_f32(vabs_f32(a1.n128_u64[0])), v11);
  v9 = fmod(__x.f64[1], 6.28318531);
  v3.f64[0] = fmod(__x.f64[0], 6.28318531);
  v3.f64[1] = v9;
  v4 = vbslq_s8(v2, vnegq_f64(v3), v3);
  v5 = vdupq_n_s64(0xC01921FB54442D18);
  v6 = vbslq_s8(vcgtq_f64(v5, v4), vaddq_f64(v4, v11), v4);
  v7 = vbslq_s8(vceqq_f64(v6, v11), v5, v6);
  *&v7.f64[0] = vcvt_f32_f64(v7);
  v12 = v7;
  fmod(fabsf(v13) + 6.28318531, 6.28318531);
  return v12;
}

double TSUNormalizeAngleAboutZeroInRadians(double a1)
{
  v1 = fmod(a1 + 3.14159265 + 6.28318531, 6.28318531);
  if (v1 < 0.0)
  {
    v1 = v1 + 6.28318531;
  }

  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  return v1 + -3.14159265;
}

void TSURectFromNormalizedSubrect(double a1, double a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v12.origin.x = a5;
  v12.origin.y = a6;
  v12.size.width = a7;
  v12.size.height = a8;
  CGRectGetMaxX(v12);
  v13.origin.x = a5;
  v13.origin.y = a6;
  v13.size.width = a7;
  v13.size.height = a8;
  CGRectGetMaxY(v13);
}

void TSUNormalizedSubrectInRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  CGRectGetMaxX(*&a1);
  v8.origin.x = a1;
  v8.origin.y = a2;
  v8.size.width = a3;
  v8.size.height = a4;
  CGRectGetMaxY(v8);
}

void TSUAxisAnglesToEulerAngles(float32x4_t a1)
{
  v1 = vmulq_f32(a1, a1);
  v2 = v1.f32[2] + vaddv_f32(*v1.f32);
  v3 = sqrtf(v2);
  if (a1.f32[0] != 0.0 || (v4 = vceqz_f32(vext_s8(*a1.f32, *&vextq_s8(a1, a1, 8uLL), 4uLL)), (v4.i8[0] & 1) == 0) || (v4.i8[4] & 1) == 0)
  {
    v5 = v2;
    v6 = vrsqrte_f32(LODWORD(v2));
    v7 = vmul_f32(v6, vrsqrts_f32(LODWORD(v5), vmul_f32(v6, v6)));
    a1 = vmulq_n_f32(a1, vmul_f32(v7, vrsqrts_f32(LODWORD(v5), vmul_f32(v7, v7))).f32[0]);
  }

  v20 = a1;
  v8 = __sincosf_stret(v3 * 0.5);
  v9 = vmulq_n_f32(v20, v8.__sinval);
  v10 = v9;
  v10.i32[3] = LODWORD(v8.__cosval);
  v11 = vmulq_f32(v10, v10);
  v12 = vaddv_f32(vadd_f32(*v11.i8, *&vextq_s8(v11, v11, 8uLL)));
  if (v12 != 0.0)
  {
    v13 = v9.f32[2];
    v14 = v9.f32[1];
    v15 = ((v9.f32[0] * v9.f32[2]) - (v9.f32[1] * v8.__cosval)) / v12;
    if (fabsf(v15) <= 0.49999)
    {
      v16 = *&v11.i32[1];
      v17 = v11.i64[1];
      v18 = v9.f32[0];
      v19 = *v11.i32;
      atan2(((v8.__cosval * v9.f32[2]) + (v9.f32[0] * v9.f32[1])) + ((v8.__cosval * v9.f32[2]) + (v9.f32[0] * v9.f32[1])), (*&v11.i32[3] + ((*v11.i32 - *&v11.i32[1]) - *&v11.i32[2])));
      atan2(((v8.__cosval * v18) + (v14 * v13)) + ((v8.__cosval * v18) + (v14 * v13)), (*(&v17 + 1) + (*&v17 + (-v19 - v16))));
      asin(v15 * -2.0);
    }

    else
    {
      atan2f(v9.f32[0], v8.__cosval);
    }
  }
}

void TSUEulerAnglesToAxisAngles(__n128 a1)
{
  v1 = a1.n128_f32[1];
  v2 = a1.n128_f32[2];
  if (a1.n128_f32[0] != 0.0 || a1.n128_f32[1] != 0.0 || a1.n128_f32[2] != 0.0)
  {
    v3 = __sincosf_stret(a1.n128_f32[0] * 0.5);
    v4 = __sincosf_stret(v1 * 0.5);
    v5 = __sincosf_stret(v2 * 0.5);
    v6.f32[0] = (v3.__sinval * (v4.__cosval * v5.__cosval)) - (v3.__cosval * (v4.__sinval * v5.__sinval));
    v6.f32[1] = (v5.__sinval * (v3.__sinval * v4.__cosval)) + ((v3.__cosval * v4.__sinval) * v5.__cosval);
    v6.f32[2] = (v5.__cosval * -(v3.__sinval * v4.__sinval)) + ((v3.__cosval * v4.__cosval) * v5.__sinval);
    v7 = vmulq_f32(v6, v6);
    atan2f(sqrtf(v7.f32[2] + vaddv_f32(*v7.f32)), (v3.__sinval * (v4.__sinval * v5.__sinval)) + (v3.__cosval * (v4.__cosval * v5.__cosval)));
  }
}

double TSUScaleSizeWithinSize(double a1, double a2, double a3, double a4)
{
  if (a1 / a2 < a3 / a4)
  {
    return a1 * (a4 / a2);
  }

  return a3;
}

double TSUShrinkSizeToFitInSize(double result, double a2, double a3, double a4)
{
  if (result <= a3)
  {
    v4 = a2 == a4;
    v5 = a2 < a4;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  if (!v5 && !v4)
  {
    if (result / a2 <= a3 / a4)
    {
      if (result / a2 < a3 / a4)
      {
        return result * (a4 / a2);
      }

      else
      {
        return a3;
      }
    }

    else
    {
      return a3;
    }
  }

  return result;
}

double TSUShrinkSizeToFitInArea(double result, double a2, double a3)
{
  if (result * a2 > a3)
  {
    return sqrt(result / a2 * a3);
  }

  return result;
}

double TSUFitOrFillSizeInSize(int a1, double a2, double a3, double a4, double a5)
{
  v5 = a4 / a2;
  if (a2 == 0.0)
  {
    v5 = 0.0;
  }

  v6 = a5 / a3;
  if (a3 == 0.0)
  {
    v6 = 0.0;
  }

  if (v5 < v6 == a1)
  {
    v5 = v6;
  }

  return a2 * v5;
}

double TSUFitOrFillSizeInRect(int a1, double a2, double a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v11 = a6 / a2;
  v12 = 0.0;
  if (a2 == 0.0)
  {
    v11 = 0.0;
  }

  if (a3 != 0.0)
  {
    v12 = a7 / a3;
  }

  if (v11 < v12 != a1)
  {
    v12 = v11;
  }

  return TSUCenterRectOverRect(0.0, 0.0, a2 * v12, a3 * v12, a4, a5, a6, a7);
}

double TSUFitSizeOfLineInSize(double a1, double a2, double a3, double a4)
{
  v4 = a3 / a1;
  if (a1 == 0.0)
  {
    v4 = 0.0;
  }

  v5 = a4 / a2;
  if (a2 == 0.0)
  {
    v5 = 0.0;
  }

  v6 = v5 != 0.0;
  if (v4 == 0.0)
  {
    v6 = 0;
  }

  if (v4 < v5 != v6)
  {
    v4 = v5;
  }

  return a1 * v4;
}

void TSUScaleRectAroundPoint(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, CGFloat a7)
{
  memset(&v17, 0, sizeof(v17));
  CGAffineTransformMakeTranslation(&v17, -a5, -a6);
  memset(&v16, 0, sizeof(v16));
  CGAffineTransformMakeScale(&v16, a7, a7);
  memset(&v15, 0, sizeof(v15));
  t1 = v17;
  v12 = v16;
  CGAffineTransformConcat(&v14, &t1, &v12);
  v12 = v17;
  CGAffineTransformInvert(&t1, &v12);
  CGAffineTransformConcat(&v15, &v14, &t1);
  v14 = v15;
  v18.origin.x = a1;
  v18.origin.y = a2;
  v18.size.width = a3;
  v18.size.height = a4;
  CGRectApplyAffineTransform(v18, &v14);
}

double TSURectByExpandingBoundingRectToContentRect(double a1, double a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, double a9, double a10, double a11, double a12)
{
  v25 = a1 + a5 * a3;
  v36.origin.x = a5;
  v36.origin.y = a6;
  v36.size.width = a7;
  v36.size.height = a8;
  MaxX = CGRectGetMaxX(v36);
  v37.origin.x = a5;
  v37.origin.y = a6;
  v37.size.width = a7;
  v37.size.height = a8;
  CGRectGetMaxY(v37);
  v26 = a1 + MaxX * a3;
  if (v25 >= v26)
  {
    v27 = a1 + MaxX * a3;
  }

  else
  {
    v27 = v25;
  }

  if (v25 >= v26)
  {
    v26 = v25;
  }

  v35 = v27;
  v28 = v26 - v27;
  v29 = -a9 / a11 * (v26 - v27);
  v38.origin.x = -a9 / a11;
  v38.origin.y = -a10 / a12;
  v38.size.width = 1.0 / a11;
  v38.size.height = 1.0 / a12;
  v30 = CGRectGetMaxX(v38);
  v39.origin.x = -a9 / a11;
  v39.origin.y = -a10 / a12;
  v39.size.width = 1.0 / a11;
  v39.size.height = 1.0 / a12;
  CGRectGetMaxY(v39);
  if (v29 >= v30 * v28)
  {
    v31 = v30 * v28;
  }

  else
  {
    v31 = v29;
  }

  return v35 + v31;
}

double TSUAliasRound(double a1)
{
  v1 = floor(a1);
  v2 = a1 - v1;
  result = ceil(a1);
  if (v2 < 0.49)
  {
    return v1;
  }

  return result;
}

double TSUAliasRoundedPoint(double a1)
{
  v1 = floor(a1);
  v2 = a1 - v1;
  result = ceil(a1);
  if (v2 < 0.49)
  {
    return v1;
  }

  return result;
}

double TSURoundedPoint(double a1, double a2)
{
  v3 = TSURound(a1);
  TSURound(a2);
  return v3;
}

double TSURoundedPointForScale(double a1, double a2, double a3)
{
  v4 = a2 * a3;
  v5 = TSURound(a1 * a3);
  TSURound(v4);
  return 1.0 / a3 * v5;
}

double TSURoundedSize(double a1, double a2)
{
  v3 = TSURound(a1);
  TSURound(a2);
  return v3;
}

double TSURoundedRectForScale(double a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  v8 = a1;
  if (a5 == 0.0)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGRect TSURoundedRectForScale(CGRect, CGFloat)"}];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v9, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUGeometry.m"], 1616, 0, "cannot give scale = 0 for TSURoundedRectForScale!");
    +[TSUAssertionHandler logFullBacktrace];
  }

  else if (!CGRectIsNull(*&a1))
  {
    v24.origin.x = TSUMultiplyRectScalar(v8, a2, a3, a4, a5);
    x = v24.origin.x;
    y = v24.origin.y;
    width = v24.size.width;
    height = v24.size.height;
    MinX = CGRectGetMinX(v24);
    v16 = TSURound(MinX);
    v25.origin.x = x;
    v25.origin.y = y;
    v25.size.width = width;
    v25.size.height = height;
    MinY = CGRectGetMinY(v25);
    v18 = TSURound(MinY);
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    MaxX = CGRectGetMaxX(v26);
    v20 = TSURound(MaxX) - v16;
    v27.origin.x = x;
    v27.origin.y = y;
    v27.size.width = width;
    v27.size.height = height;
    MaxY = CGRectGetMaxY(v27);
    v22 = TSURound(MaxY);
    return TSUMultiplyRectScalar(v16, v18, v20, v22 - v18, 1.0 / a5);
  }

  return v8;
}

double TSUIntegralRectForScale(double a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  v8.origin.x = TSUMultiplyRectScalar(a1, a2, a3, a4, a5);
  v9 = CGRectIntegral(v8);

  return TSUMultiplyRectScalar(v9.origin.x, v9.origin.y, v9.size.width, v9.size.height, 1.0 / a5);
}

double TSURoundedMaxY(double a1, double a2, double a3, double a4)
{
  MaxY = CGRectGetMaxY(*&a1);

  return TSURound(MaxY);
}

double sub_277089310(void *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CBF3A0];
  width = *(MEMORY[0x277CBF3A0] + 16);
  height = *(MEMORY[0x277CBF3A0] + 24);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [a1 tsu_tracksWithMediaType:*MEMORY[0x277CE5EA8]];
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    x = *v1;
    y = v1[1];
    v9 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        if ([v11 isEnabled])
        {
          [v11 naturalSize];
          v13 = v12;
          v15 = v14;
          if (v11)
          {
            [v11 preferredTransform];
          }

          else
          {
            memset(&v17, 0, sizeof(v17));
          }

          v24.origin.x = 0.0;
          v24.origin.y = 0.0;
          v24.size.width = v13;
          v24.size.height = v15;
          v27 = CGRectApplyAffineTransform(v24, &v17);
          v25.origin.x = x;
          v25.origin.y = y;
          v25.size.width = width;
          v25.size.height = height;
          v26 = CGRectUnion(v25, v27);
          x = v26.origin.x;
          y = v26.origin.y;
          width = v26.size.width;
          height = v26.size.height;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  return width;
}

uint64_t sub_2770894E8(void *a1)
{
  v2 = *MEMORY[0x277CE5EA8];
  v3 = [MEMORY[0x277CE63D8] tsu_codecTypesForProRes];
  if ([a1 tsu_containsTrackWithMediaType:v2 matchingCodecTypes:v3])
  {
    v4 = [a1 tsu_containsVideoTrackWithDimensionsGreaterThan:0x100000001000];

    if (v4)
    {
      return 0;
    }
  }

  else
  {
  }

  return MEMORY[0x2821F9670](a1, sel_isPlayable);
}

id sub_277089588(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = dispatch_semaphore_create(0);
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_2770896D4;
  v16 = sub_2770896E4;
  v17 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2770896EC;
  v9[3] = &unk_27A702300;
  v11 = &v12;
  v6 = v5;
  v10 = v6;
  [a1 loadTracksWithMediaType:v4 completionHandler:v9];
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void sub_2770896BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2770896D4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2770896EC(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

id sub_27708974C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = dispatch_semaphore_create(0);
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_2770896D4;
  v16 = sub_2770896E4;
  v17 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_277089890;
  v9[3] = &unk_27A702328;
  v11 = &v12;
  v6 = v5;
  v10 = v6;
  [a1 loadTrackWithTrackID:a3 completionHandler:v9];
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void sub_277089878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_277089890(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t sub_2770898F0(void *a1, uint64_t a2, uint64_t a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v4 = [a1 tracks];
  v5 = [v4 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v5)
  {
    v6 = v5;
    v20 = 0;
    v7 = *v28;
    v8 = *MEMORY[0x277CE5EA8];
    v21 = *MEMORY[0x277CE5EA8];
    v22 = v4;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        if ([v10 isEnabled])
        {
          v11 = [v10 mediaType];
          if ([v11 isEqualToString:v8])
          {
            v25 = 0u;
            v26 = 0u;
            v23 = 0u;
            v24 = 0u;
            v12 = [v10 formatDescriptions];
            v13 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
            if (v13)
            {
              v14 = v13;
              v15 = *v24;
              do
              {
                for (j = 0; j != v14; ++j)
                {
                  if (*v24 != v15)
                  {
                    objc_enumerationMutation(v12);
                  }

                  Dimensions = CMVideoFormatDescriptionGetDimensions(*(*(&v23 + 1) + 8 * j));
                  if (Dimensions.width > a3 || Dimensions.height > SHIDWORD(a3))
                  {
                    v20 = 1;
                    goto LABEL_20;
                  }
                }

                v14 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
              }

              while (v14);
LABEL_20:
              v8 = v21;
              v4 = v22;
            }
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v6);
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

uint64_t sub_277089AF0(void *a1, uint64_t a2, void *a3, void *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = [a1 tracks];
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        if ([v13 isEnabled])
        {
          v14 = [v13 mediaType];
          if ([v14 isEqualToString:v6])
          {
            v15 = [a1 tsu_doesTrack:v13 matchCodecTypes:v7];

            if (v15)
            {
              v16 = 1;
              goto LABEL_14;
            }
          }

          else
          {
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v16 = 0;
LABEL_14:

  return v16;
}

id sub_277089C68(void *a1)
{
  v1 = MEMORY[0x277CBEB98];
  v2 = [a1 tsu_playableKeysWithKeys:MEMORY[0x277CBEBF8]];
  v3 = [v1 setWithArray:v2];

  return v3;
}

uint64_t sub_277089CCC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [a3 formatDescriptions];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:CMFormatDescriptionGetMediaSubType(*(*(&v13 + 1) + 8 * i))];
        v11 = [v5 containsObject:v10];

        if (v11)
        {
          v7 = 1;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

void sub_277089E18(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v8 = a4;
  v9 = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_277089EE0;
  v12[3] = &unk_27A702378;
  v13 = v8;
  v14 = v9;
  v10 = v8;
  v11 = v9;
  [a1 loadValuesAsynchronouslyForKeys:a3 completionHandler:v12];
}

void sub_277089EE0(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_277089FA0;
      block[3] = &unk_27A702350;
      v6 = v2;
      dispatch_async(v3, block);
    }

    else
    {
      v4 = v2[2];

      v4();
    }
  }
}

BOOL sub_277089FB0(void *a1)
{
  v1 = [a1 tracksWithMediaCharacteristic:*MEMORY[0x277CE5DF0]];
  v2 = [v1 count] != 0;

  return v2;
}

id sub_27708A004(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = dispatch_semaphore_create(0);
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_2770896D4;
  v16 = sub_2770896E4;
  v17 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_27708A150;
  v9[3] = &unk_27A702328;
  v11 = &v12;
  v6 = v5;
  v10 = v6;
  [a1 findCompatibleTrackForCompositionTrack:v4 completionHandler:v9];
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void sub_27708A138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_27708A150(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void *TSUCustomFormatTokensFromCustomFormatDataAndType(void *a1, int a2, _DWORD *a3)
{
  v5 = a1;
  if (!a1)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSArray *TSUCustomFormatTokensFromCustomFormatDataAndType(TSUCustomFormatData *, TSUFormatType, TSUFormatType *)"}];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v6, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUCustomFormatTokenizer.m"], 40, 0, "invalid nil value for '%{public}s'", "customFormatData");
    +[TSUAssertionHandler logBacktraceThrottled];
  }

  if (a3)
  {
    *a3 = 0;
  }

  v7 = 0x277CCA000uLL;
  if (a2 == 271)
  {
    v8 = [MEMORY[0x277CBEB18] array];
    v9 = [MEMORY[0x277CCAB68] string];
    v10 = v5;
    v11 = v9;
    v12 = [v10 formatString];
    v13 = [v12 length];
    if (v13)
    {
      v14 = v13;
      for (i = 0; i != v14; ++i)
      {
        v16 = [v12 characterAtIndex:i];
        if (v16 == 58401)
        {
          if ([v11 length])
          {
            [v8 addObject:v11];
          }

          [v8 addObject:{objc_msgSend(MEMORY[0x277CCAB68], "tsu_customNumberFormatTokenStringOfType:content:", 5, objc_msgSend(SFUMainBundle(), "localizedStringForKey:value:table:", @"text", &stru_28862C2A0, @"TSUtility"}];
          v11 = [MEMORY[0x277CCAB68] string];
        }

        else
        {
          [v11 appendFormat:@"%C", v16];
        }
      }
    }

    if ([v11 length])
    {
      v17 = v8;
      v18 = v11;
LABEL_195:
      [v17 addObject:v18];
      return v8;
    }

    return v8;
  }

  v19 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:{@"+-, #@0123456789"}];
  v20 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"#@0123456789"];
  v99 = [MEMORY[0x277CBEB18] array];
  v101 = [v5 formatString];
  v21 = [v101 length];
  if (!v21)
  {
    v97 = 0;
    goto LABEL_178;
  }

  v22 = v21;
  v94 = v20;
  v95 = v19;
  v97 = 0;
  v23 = 0;
  v24 = 0;
  v25 = v101;
  v102 = v21;
  do
  {
    v26 = [v25 characterAtIndex:v24];
    v27 = v24 + 1;
    v28 = v24 + 1 < v22 && [v25 characterAtIndex:v24 + 1] == 39;
    if (v26 <= 45)
    {
      if (v26 > 36)
      {
        if (v26 == 37)
        {
LABEL_25:
          [v99 addObject:{objc_msgSend(*(v7 + 2920), "tsu_customNumberFormatTokenStringOfType:content:", 0, objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%C%C", v26, v26))}];
          if (a3)
          {
            v25 = v101;
            v22 = v102;
            if (v26 == 37)
            {
              *a3 = 258;
            }

LABEL_28:
            v97 = 1;
            goto LABEL_175;
          }

          v97 = 1;
          goto LABEL_173;
        }

        if (v26 == 39)
        {
          v30 = [*(v7 + 2920) string];
          v31 = v30;
          if (v28)
          {
            [v30 appendString:@"'"];
            v32 = v24 + 2;
            v25 = v101;
LABEL_78:
            if ([v31 length])
            {
              [v99 addObject:v31];
            }

            v27 = v32;
            v19 = v95;
            goto LABEL_174;
          }

          v32 = v24 + 1;
          v42 = v102;
          v25 = v101;
          if (v27 >= v102)
          {
            goto LABEL_78;
          }

          while (2)
          {
            v43 = [v101 characterAtIndex:v27];
            v44 = v43;
            v32 = v27 + 1;
            if (v27 + 1 >= v42)
            {
              if (v43 == 39)
              {
                goto LABEL_78;
              }
            }

            else
            {
              v45 = [v101 characterAtIndex:v27 + 1];
              if (v44 == 39)
              {
                if (v45 != 39)
                {
                  goto LABEL_78;
                }

                [v31 appendString:@"'"];
                v32 = v27 + 2;
LABEL_77:
                v27 = v32;
                v42 = v102;
                if (v32 >= v102)
                {
                  goto LABEL_78;
                }

                continue;
              }
            }

            break;
          }

          [v31 appendFormat:@"%C", v44];
          goto LABEL_77;
        }
      }

      else if (v26 == 9 || v26 == 32)
      {
LABEL_53:
        v33 = *(v7 + 2920);
        v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"%C", v26];
        v35 = v33;
        v22 = v102;
        v36 = [v35 tsu_customNumberFormatTokenStringOfType:4 content:v34];
        goto LABEL_54;
      }

LABEL_58:
      if ([v19 characterIsMember:v26])
      {
        if (v23)
        {
          if (v24 >= v22)
          {
            v38 = 0;
            v37 = 0;
          }

          else
          {
            v37 = 0;
            v38 = 0;
            while (1)
            {
              v39 = [v101 characterAtIndex:v24];
              if (![v19 characterIsMember:v39])
              {
                break;
              }

              v40 = [v94 characterIsMember:v39];
              v38 += v40;
              if (v39 == 48)
              {
                v41 = v40;
              }

              else
              {
                v41 = 0;
              }

              v37 += v41;
              if (v102 == ++v24)
              {
                v24 = v102;
                break;
              }
            }
          }

          v52 = [v5 numberOfNonSpaceDecimalPlaceholderDigits];
          if ([v5 decimalWidth])
          {
            v53 = v37 - v52;
          }

          else
          {
            v37 = v52;
            v53 = 0;
          }

          if (v52)
          {
            [v99 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "tsu_customNumberFormatDecimalTokenRepresentedStringWithDigits:digitString:", v52, @"0"}];
          }

          if (v53 >= 1)
          {
            [v99 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "tsu_customNumberFormatDecimalTokenRepresentedStringWithDigits:digitString:", v53, @"?"}];
          }

          v19 = v95;
          if (v38 - v37 >= 1)
          {
            [v99 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "tsu_customNumberFormatDecimalTokenRepresentedStringWithDigits:digitString:")}];
          }

          v23 = 1;
          v27 = v24;
          goto LABEL_173;
        }

        v49 = 0;
        if (v24 >= v22)
        {
          v27 = v24;
          v50 = 0x277CBE000;
        }

        else
        {
          v50 = 0x277CBE000uLL;
          while (1)
          {
            v51 = [v101 characterAtIndex:v24];
            if (![v19 characterIsMember:v51])
            {
              break;
            }

            v49 += [v94 characterIsMember:v51];
            ++v24;
            v27 = v102;
            if (v102 == v24)
            {
              goto LABEL_102;
            }
          }

          v27 = v24;
        }

LABEL_102:
        v92 = v49;
        v100 = [*(v50 + 2840) array];
        v54 = [v5 numberOfNonSpaceIntegerPlaceholderDigits];
        v93 = a3;
        if ([v5 minimumIntegerWidth])
        {
          v55 = [v5 minimumIntegerWidth];
          v56 = v55 - [v5 numberOfNonSpaceIntegerPlaceholderDigits];
          v57 = v56 + v54;
        }

        else
        {
          v56 = 0;
          v57 = [v5 numberOfNonSpaceIntegerPlaceholderDigits];
        }

        v91 = v57;
        v98 = [v5 interstitialStringInsertionIndexes];
        v58 = v5;
        v59 = [objc_msgSend(v5 "interstitialStringInsertionIndexes")];
        v60 = v59;
        if (v54)
        {
          v96 = 0;
          v61 = 0;
          v62 = v59;
          do
          {
            if (v98)
            {
              v63 = v62 == 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v63 = 1;
            }

            v64 = !v63;
            v65 = v62 - v61;
            if (v54 < v62 - v61)
            {
              v65 = v54;
            }

            v66 = v64 != 1 || v54 >= v62 - v61;
            if (v64 == 1)
            {
              v67 = v65;
            }

            else
            {
              v67 = v54;
            }

            [v100 insertObject:objc_msgSend(MEMORY[0x277CCACA8] atIndex:{"tsu_customNumberFormatIntegerTokenRepresentedStringWithDigits:separator:digitString:", v67, objc_msgSend(v58, "showThousandsSeparator"), @"0", 0}];
            if (v64)
            {
              if (v66)
              {
                [v100 insertObject:objc_msgSend(objc_msgSend(v58 atIndex:{"interstitialStrings"), "objectAtIndex:", v96++), 0}];
                v60 = [objc_msgSend(v58 "interstitialStringInsertionIndexes")];
              }

              else
              {
                v60 = v62;
                v62 = v67 + v61;
              }
            }

            else
            {
              v60 = v62;
              v62 = v61;
            }

            v54 -= v67;
            v68 = v62;
            v61 = v62;
            v62 = v60;
          }

          while (v54 > 0);
        }

        else
        {
          v68 = 0;
          v96 = 0;
        }

        v7 = 0x277CCA000;
        if (v56 >= 1)
        {
          do
          {
            if (v98)
            {
              v69 = v60 == 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v69 = 1;
            }

            v70 = !v69;
            v71 = v60 - v68;
            if (v56 < v60 - v68)
            {
              v71 = v56;
            }

            v72 = v70 != 1 || v56 >= v60 - v68;
            if (v70 == 1)
            {
              v73 = v71;
            }

            else
            {
              v73 = v56;
            }

            [v100 insertObject:objc_msgSend(MEMORY[0x277CCACA8] atIndex:{"tsu_customNumberFormatIntegerTokenRepresentedStringWithDigits:separator:digitString:", v73, objc_msgSend(v58, "showThousandsSeparator"), @"?", 0}];
            if (v70)
            {
              if (v72)
              {
                [v100 insertObject:objc_msgSend(objc_msgSend(v58 atIndex:{"interstitialStrings"), "objectAtIndex:", v96++), 0}];
                v74 = [objc_msgSend(v58 "interstitialStringInsertionIndexes")];
              }

              else
              {
                v74 = v60;
                v60 = v73 + v68;
              }
            }

            else
            {
              v74 = v60;
              v60 = v68;
            }

            v68 = v60;
            v56 -= v73;
            v60 = v74;
          }

          while (v56 > 0);
        }

        v75 = v92 - v91;
        if (v92 - v91 >= 1)
        {
          do
          {
            if (v98)
            {
              v76 = v60 == 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v76 = 1;
            }

            v77 = !v76;
            v78 = v60 - v68;
            if (v75 < v60 - v68)
            {
              v78 = v75;
            }

            v79 = v77 != 1 || v75 >= v60 - v68;
            if (v77 == 1)
            {
              v80 = v78;
            }

            else
            {
              v80 = v75;
            }

            [v100 insertObject:objc_msgSend(MEMORY[0x277CCACA8] atIndex:{"tsu_customNumberFormatIntegerTokenRepresentedStringWithDigits:separator:digitString:", v80, objc_msgSend(v58, "showThousandsSeparator"), @"#", 0}];
            if (v77)
            {
              if (v79)
              {
                [v100 insertObject:objc_msgSend(objc_msgSend(v58 atIndex:{"interstitialStrings"), "objectAtIndex:", v96++), 0}];
                v81 = [objc_msgSend(v58 "interstitialStringInsertionIndexes")];
              }

              else
              {
                v81 = v60;
                v60 = v80 + v68;
              }
            }

            else
            {
              v81 = v60;
              v60 = v68;
            }

            v75 -= v80;
            v68 = v60;
            v60 = v81;
          }

          while (v75 > 0);
        }

        [v99 addObjectsFromArray:v100];
        v23 = 0;
        v5 = v58;
        a3 = v93;
        goto LABEL_172;
      }

      if (![+[TSUDateFormatter dateFormatStringSpecialSymbols](TSUDateFormatter "dateFormatStringSpecialSymbols")])
      {
        v46 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSArray *TSUCustomFormatTokensFromCustomFormatDataAndType(TSUCustomFormatData *, TSUFormatType, TSUFormatType *)"}];
        v47 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUCustomFormatTokenizer.m"];
        v22 = v102;
        v48 = v46;
        v19 = v95;
        [TSUAssertionHandler handleFailureInFunction:v48 file:v47 lineNumber:306 isFatal:0 description:"Unexpected character encountered in format pattern while generating custom format tokens!"];
        +[TSUAssertionHandler logBacktraceThrottled];
      }

      v36 = [*(v7 + 2920) stringWithFormat:@"%C", v26];
LABEL_54:
      [v99 addObject:v36];
LABEL_55:
      v25 = v101;
      goto LABEL_175;
    }

    if (v26 <= 163)
    {
      v29 = (v26 - 46);
      if (v29 <= 0x26)
      {
        if (((1 << (v26 - 46)) & 0x40A0300000) != 0)
        {
          goto LABEL_25;
        }

        if (v26 == 46)
        {
          v23 = 1;
          goto LABEL_55;
        }

        if (v29 == 23)
        {
          [v99 addObject:{objc_msgSend(*(v7 + 2920), "tsu_customNumberFormatTokenStringOfType:content:", 0, objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%C", 69))}];
          if (a3)
          {
            *a3 = 259;
          }

          v22 = v102;
          v25 = v101;
          if (v27 < v102)
          {
            while ([v19 characterIsMember:{objc_msgSend(v101, "characterAtIndex:", v27)}])
            {
              if (v102 == ++v27)
              {
                [v5 scaleFactor];
                return v99;
              }
            }
          }

          goto LABEL_28;
        }
      }

      goto LABEL_58;
    }

    if (v26 <= 8197)
    {
      if (v26 == 164)
      {
        [v99 addObject:{objc_msgSend(*(v7 + 2920), "tsu_customNumberFormatTokenStringOfType:content:", 3, TSUCurrencyCodeForIndex(objc_msgSend(v5, "currencyCodeIndex")))}];
        if (a3)
        {
          *a3 = 257;
        }

        goto LABEL_173;
      }

      if (v26 == 8195)
      {
        goto LABEL_53;
      }

      goto LABEL_58;
    }

    if (v26 == 8198)
    {
      goto LABEL_53;
    }

    if (v26 != 58400)
    {
      goto LABEL_58;
    }

    [v99 addObject:{objc_msgSend(*(v7 + 2920), "tsu_customNumberFormatTokenStringOfType:content:", 6, objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%d", objc_msgSend(v5, "fractionAccuracy")))}];
    if (a3)
    {
      *a3 = 262;
    }

LABEL_172:
    v19 = v95;
LABEL_173:
    v25 = v101;
LABEL_174:
    v22 = v102;
LABEL_175:
    v24 = v27;
  }

  while (v27 < v22);
LABEL_178:
  [v5 scaleFactor];
  if (v82 == 1.0)
  {
    return v99;
  }

  v8 = v99;
  if ((v97 & 1) == 0)
  {
    [v5 scaleFactor];
    if (v83 == 100.0)
    {
      v84 = 37;
    }

    else
    {
      [v5 scaleFactor];
      if (v85 == 0.01)
      {
        v84 = 67;
      }

      else
      {
        [v5 scaleFactor];
        if (v86 == 0.001)
        {
          v84 = 75;
        }

        else
        {
          [v5 scaleFactor];
          if (v87 == 0.000001)
          {
            v84 = 77;
          }

          else
          {
            [v5 scaleFactor];
            if (v88 == 0.000000001)
            {
              v84 = 66;
            }

            else
            {
              [v5 scaleFactor];
              if (v89 == 1.0e-12)
              {
                v84 = 84;
              }

              else
              {
                v84 = 0;
              }
            }
          }
        }
      }
    }

    v18 = [*(v7 + 2920) tsu_customNumberFormatTokenStringOfType:0 content:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%C", v84)}];
    v17 = v99;
    goto LABEL_195;
  }

  return v8;
}