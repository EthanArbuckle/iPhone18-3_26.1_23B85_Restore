@interface GQDTNumberFormat
- (__CFString)createStringFromDouble:(double)double;
- (id)baseStringFromDouble:(double)double;
- (id)customNumberFormatTokens;
- (id)fractionStringFromDouble:(double)double;
- (id)stringFromDouble:(double)double;
- (int)readAttributesFromReader:(_xmlTextReader *)reader;
- (void)dealloc;
@end

@implementation GQDTNumberFormat

- (void)dealloc
{
  mUid = self->mUid;
  if (mUid)
  {
    free(mUid);
  }

  mFormatString = self->mFormatString;
  if (mFormatString)
  {
    CFRelease(mFormatString);
  }

  mCurrencyCode = self->mCurrencyCode;
  if (mCurrencyCode)
  {
    CFRelease(mCurrencyCode);
  }

  mSuffixString = self->mSuffixString;
  if (mSuffixString)
  {
    CFRelease(mSuffixString);
  }

  v7.receiver = self;
  v7.super_class = GQDTNumberFormat;
  [(GQDTNumberFormat *)&v7 dealloc];
}

- (id)stringFromDouble:(double)double
{
  mDecimalPlaces = self->mDecimalPlaces;
  if (double == 0.0)
  {
    doubleCopy = 0.0;
  }

  else
  {
    doubleCopy = double;
  }

  if (![(GQDTNumberFormat *)self hasValidDecimalPlaces])
  {
    mDecimalPlaces = sub_5209C(doubleCopy);
  }

  v6 = doubleCopy * self->mScaleFactor;
  if (self->mIsTextFormat)
  {
    v7 = @"#,##0";
    v8 = v6;
    v9 = 0;
    v10 = 1;
    v11 = 2;
    v12 = 2;
    v13 = 1;
    goto LABEL_8;
  }

  mFormatStringRequiresSuppressionOfMinusSign = self->mFormatStringRequiresSuppressionOfMinusSign;
  mIsCustom = self->mIsCustom;
  if (mIsCustom && !self->mFormatContainsSpecialTokens)
  {
    formatString = [(GQDTNumberFormat *)self formatString];

    return sub_53354(formatString);
  }

  else
  {
    if (self->mInterstitialStrings || self->mMinimumIntegerWidth || self->mDecimalWidth)
    {
      goto LABEL_17;
    }

    if (self->mRequiresFractionReplacement)
    {
      if (!self->mFormatContainsIntegerToken)
      {
        v35 = [(NSMutableString *)sub_53354([(GQDTNumberFormat *)self formatString]) mutableCopy];
        [(__CFString *)v35 replaceOccurrencesOfString:[NSString stringWithFormat:?], [GQNumberFormatter currencySymbolForCurrencyCode:self->mCurrencyCode], 0, 0, [(__CFString *)v35 length]];
        v57 = [(GQDTNumberFormat *)self fractionStringFromDouble:v6];
        word_9CC18 = [NSString stringWithFormat:@"%C", word_9CC18];
LABEL_83:
        [(__CFString *)v35 replaceOccurrencesOfString:word_9CC18 withString:v57 options:0 range:0, [(__CFString *)v35 length]];
        return v35;
      }

LABEL_17:
      v19 = v6;
      if (self->mRequiresFractionReplacement)
      {
        v20 = trunc(v6);
        if (self->mFormatContainsIntegerToken)
        {
          v19 = v20;
        }

        else
        {
          v19 = v6;
        }
      }

      v71 = sub_52338([(GQDTNumberFormat *)self valueType], [(GQDTNumberFormat *)self formatString], !self->mIsCustom, mDecimalPlaces, mDecimalPlaces, [(GQDTNumberFormat *)self showThousandsSeparator], [(GQDTNumberFormat *)self currencyCode], v19, mFormatStringRequiresSuppressionOfMinusSign);
      mMinimumIntegerWidth = self->mMinimumIntegerWidth;
      if (self->mMinimumIntegerWidth || self->mDecimalWidth)
      {
        v22 = fabs(v19);
        if (v22 >= 1.0)
        {
          v23 = (trunc(log10(v22)) + 1.0);
        }

        else
        {
          v23 = 0;
        }

        if (v23 <= self->mNumberOfNonSpaceIntegerPlaceholderDigits)
        {
          mNumberOfNonSpaceIntegerPlaceholderDigits = self->mNumberOfNonSpaceIntegerPlaceholderDigits;
        }

        else
        {
          mNumberOfNonSpaceIntegerPlaceholderDigits = v23;
        }

        v25 = mMinimumIntegerWidth - mNumberOfNonSpaceIntegerPlaceholderDigits;
        if (v25 >= 1)
        {
          v26 = [(__CFString *)v71 mutableCopy];
          v27 = [(__CFString *)v71 length];
          v28 = self->mNumberOfNonSpaceIntegerPlaceholderDigits;
          if (v23 > v28)
          {
            v28 = v23;
          }

          v29 = v27 + ~(v28 + self->mIndexFromRightOfLastDigitPlaceholder);
          if (self->mShowThousandsSeparator)
          {
            v30 = ceil(v28 / sub_5220C(0)) + -1.0;
            v31 = v30 & ~(v30 >> 31);
          }

          else
          {
            v31 = 0;
          }

          v37 = v29 - v31;
          if (v37 >= 0)
          {
            v38 = 0;
            do
            {
              if (v37 >= [v26 length])
              {
                break;
              }

              if ([v26 characterAtIndex:v37] == 48)
              {
                ++v38;
              }

              [v26 replaceCharactersInRange:v37 withString:{1, @" "}];
              if (v38 >= v25)
              {
                break;
              }
            }

            while (v37-- > 0);
          }

          mDecimalWidth = self->mDecimalWidth;
          mNumberOfNonSpaceDecimalPlaceholderDigits = self->mNumberOfNonSpaceDecimalPlaceholderDigits;
          v36 = mDecimalWidth - mNumberOfNonSpaceDecimalPlaceholderDigits;
          if (mDecimalWidth <= mNumberOfNonSpaceDecimalPlaceholderDigits)
          {
            goto LABEL_54;
          }

          if (v26)
          {
LABEL_51:
            v42 = [(__CFString *)v71 length]+ self->mNumberOfNonSpaceDecimalPlaceholderDigits - self->mIndexFromRightOfLastDigitPlaceholder + 1;
            v43 = v36 + v42;
            v44 = v42;
            do
            {
              if ([v26 characterAtIndex:--v43] != 48)
              {
                break;
              }

              [v26 replaceCharactersInRange:v43 withString:{1, @" "}];
            }

            while (v43 > v44);
LABEL_54:
            v35 = v71;
            if (v26)
            {
              v35 = v26;
            }

            goto LABEL_57;
          }

LABEL_50:
          v26 = [(__CFString *)v71 mutableCopy];
          goto LABEL_51;
        }

        v33 = self->mDecimalWidth;
        v34 = self->mNumberOfNonSpaceDecimalPlaceholderDigits;
        v35 = v71;
        v36 = v33 - v34;
        if (v33 > v34)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v35 = 0;
      }

LABEL_57:
      if (self->mInterstitialStrings)
      {
        if (v35)
        {
          v45 = v35;
        }

        else
        {
          v45 = v71;
        }

        v35 = +[NSMutableString string];
        v70 = +[NSCharacterSet decimalDigitCharacterSet];
        v46 = [(__CFString *)v45 length];
        firstIndex = [(NSIndexSet *)self->mInterstitialStringInsertionIndexes firstIndex];
        if (v46 < 1)
        {
          v51 = 0;
        }

        else
        {
          v48 = firstIndex;
          v49 = 0;
          v50 = 0;
          v51 = 0;
          do
          {
            if (v48 != 0x7FFFFFFFFFFFFFFFLL && v50 == v48)
            {
              [(__CFString *)v35 insertString:[(NSArray *)self->mInterstitialStrings objectAtIndex:v51] atIndex:0];
              v48 = [(NSIndexSet *)self->mInterstitialStringInsertionIndexes indexGreaterThanIndex:v50];
              ++v51;
            }

            v53 = [(__CFString *)v45 characterAtIndex:--v46];
            v54 = [(__CFString *)v71 characterAtIndex:v46];
            [(__CFString *)v35 insertString:[NSString atIndex:"stringWithFormat:" stringWithFormat:v53], 0];
            if (v49 >= self->mIndexFromRightOfLastDigitPlaceholder)
            {
              v50 += [(NSCharacterSet *)v70 characterIsMember:v54];
            }

            ++v49;
          }

          while (v46 > 0);
        }

        if (v51 < [(NSArray *)self->mInterstitialStrings count])
        {
          while (v51 < [(NSArray *)self->mInterstitialStrings count])
          {
            [(__CFString *)v35 insertString:[(NSArray *)self->mInterstitialStrings objectAtIndex:v51++] atIndex:0];
          }
        }
      }

      if (!self->mRequiresFractionReplacement || !self->mFormatContainsIntegerToken)
      {
        return v35;
      }

      if (v35)
      {
        v55 = v35;
      }

      else
      {
        v55 = v71;
      }

      v35 = [(__CFString *)v55 mutableCopy];
      v56 = fabs(v6);
      v57 = [(GQDTNumberFormat *)self fractionStringFromDouble:v56 - floor(v56)];
      word_9CC18 = [NSString stringWithFormat:@"%C", word_9CC18];
      goto LABEL_83;
    }

    mValueType = self->mValueType;
    if (mValueType == 1)
    {
      if (self->mUseAccountingStyle)
      {
        return +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@\t%@", +[GQNumberFormatter currencySymbolForCurrencyCode:](GQNumberFormatter, "currencySymbolForCurrencyCode:", self->mCurrencyCode), [objc_msgSend(-[GQDTNumberFormat numberFormatBySettingValueType:](self numberFormatBySettingValueType:{0), "numberFormatBySettingNegativeStyle:", 2), "stringFromDouble:", v6}]);
      }

      goto LABEL_100;
    }

    if (mValueType != 5)
    {
      if (mValueType == 4)
      {

        return [(GQDTNumberFormat *)self fractionStringFromDouble:v6];
      }

LABEL_100:
      if (mIsCustom || !self->mUseScientificFormattingAutomatically || [(GQDTNumberFormat *)self valueType]|| (v68 = fabs(v6), v68 <= 1.0e12) && (v68 >= 0.0000001 || v6 == 0.0))
      {
        if (self->mIgnoreDecimalPlacesForZeroValue && !self->mIsCustom && v6 == 0.0)
        {
          valueType = [(GQDTNumberFormat *)self valueType];
          formatString2 = [(GQDTNumberFormat *)self formatString];
          showThousandsSeparator = [(GQDTNumberFormat *)self showThousandsSeparator];
          currencyCode = [(GQDTNumberFormat *)self currencyCode];
          v8 = v6;
          v9 = valueType;
          v7 = formatString2;
          v10 = 1;
          v11 = 0;
          v12 = 0;
          v13 = showThousandsSeparator;
        }

        else
        {
          valueType2 = [(GQDTNumberFormat *)self valueType];
          formatString3 = [(GQDTNumberFormat *)self formatString];
          v66 = self->mIsCustom;
          showThousandsSeparator2 = [(GQDTNumberFormat *)self showThousandsSeparator];
          currencyCode = [(GQDTNumberFormat *)self currencyCode];
          v10 = !v66;
          v11 = mDecimalPlaces;
          v12 = mDecimalPlaces;
          v8 = v6;
          v9 = valueType2;
          v7 = formatString3;
          v13 = showThousandsSeparator2;
        }

        v15 = mFormatStringRequiresSuppressionOfMinusSign;
        goto LABEL_9;
      }

      v7 = @"0E0";
      v8 = v6;
      v9 = 3;
      v10 = 1;
      v11 = 0;
      v12 = 5;
      v13 = 0;
LABEL_8:
      currencyCode = 0;
      v15 = 0;
LABEL_9:

      return sub_52338(v9, v7, v10, v11, v12, v13, currencyCode, v8, v15);
    }

    v35 = [(GQDTNumberFormat *)self baseStringFromDouble:v6];
    if (v35)
    {
      return v35;
    }

    HIDWORD(v69) = -3;
    LOBYTE(v69) = 1;
    v60 = [GQDTNumberFormat numberFormatWithValueType:0 formatString:0 decimalPlaces:0 currencyCode:0 useAccountingStyle:0 negativeStyle:0 showThousandsSeparator:v69 fractionAccuracy:0 suffixString:?];
    [(GQDTNumberFormat *)v60 setUseScientificFormattingAutomatically:1];

    return [(GQDTNumberFormat *)v60 stringFromDouble:v6];
  }
}

- (__CFString)createStringFromDouble:(double)double
{
  v5 = objc_opt_new();
  v6 = [(GQDTNumberFormat *)self stringFromDouble:double];
  if (self->mSuffixString && self->mValueType <= 1u)
  {
    Mutable = CFStringCreateMutable(0, 0);
    CFStringAppend(Mutable, v6);
    CFStringAppend(Mutable, self->mSuffixString);
    CFRelease(v6);
    v6 = Mutable;
  }

  [v5 drain];
  return v6;
}

- (int)readAttributesFromReader:(_xmlTextReader *)reader
{
  self->mCurrencyCode = sub_4294C(reader, qword_A35E8, "format-currency-code");
  v5 = sub_4294C(reader, qword_A35E8, "format-string");
  self->mFormatString = v5;
  if (!v5 || !sub_42384(reader, qword_A35E8, "format-decimal-places", &self->mDecimalPlaces) || !sub_421B4(reader, qword_A35E8, "format-use-accounting-style", &self->mUseAccountingStyle))
  {
    v13 = 0;
LABEL_10:
    v6 = 3;
    goto LABEL_11;
  }

  v13 = 0;
  if (!sub_421B4(reader, qword_A35E8, "format-show-thousands-separator", &self->mShowThousandsSeparator))
  {
    goto LABEL_10;
  }

  if (!sub_42384(reader, qword_A35E8, "format-type", &v13))
  {
    goto LABEL_10;
  }

  self->mValueType = v13;
  if ((sub_42384(reader, qword_A35E8, "format-negative-style", &v13) & 1) == 0)
  {
    goto LABEL_10;
  }

  self->mNegativeStyle = v13;
  if (!sub_42384(reader, qword_A35E8, "format-fraction-accuracy", &v13))
  {
    goto LABEL_10;
  }

  self->mFractionAccuracy = v13;
  v6 = 1;
LABEL_11:
  self->mIsCustom = sub_42340(reader, qword_A35E8, "custom", 0);
  sub_4290C(reader, qword_A35E8, "scale");
  self->mScaleFactor = v7;
  self->mNumberOfNonSpaceIntegerPlaceholderDigits = sub_42468(reader, qword_A35E8, "non-space-integer-placeholders", 0);
  self->mNumberOfNonSpaceDecimalPlaceholderDigits = sub_42468(reader, qword_A35E8, "non-space-decimal-placeholders", 0);
  self->mIndexFromRightOfLastDigitPlaceholder = sub_42468(reader, qword_A35E8, "last-digit-index", 0);
  if (self->mIsCustom)
  {
    mFormatString = self->mFormatString;
    if (mFormatString)
    {
      Length = CFStringGetLength(mFormatString);
      if (Length >= 1)
      {
        v10 = 0;
        v11 = Length & 0x7FFFFFFF;
        while (CFStringGetCharacterAtIndex(self->mFormatString, v10) != word_9CC18)
        {
          if (v11 == ++v10)
          {
            goto LABEL_19;
          }
        }

        self->mRequiresFractionReplacement = 1;
      }
    }
  }

LABEL_19:
  self->mBase = sub_42468(reader, qword_A35E8, "format-base", 10);
  self->mBasePlaces = sub_42468(reader, qword_A35E8, "format-base-places", 0);
  self->mBaseUsesMinusSign = sub_42340(reader, qword_A35E8, "format-base-uses-minus-sign", 1);
  self->mIsTextFormat = sub_42340(reader, qword_A35E8, "is-text", 0);
  self->mMinimumIntegerWidth = sub_42468(reader, qword_A35E8, "min-integer-width", 0);
  self->mDecimalWidth = sub_42468(reader, qword_A35E8, "decimal-width", 0);
  self->mSuffixString = sub_4294C(reader, qword_A35E8, "format-suffix");
  return v6;
}

- (id)fractionStringFromDouble:(double)double
{
  v4 = fabs(double);
  if (double >= 0.0)
  {
    doubleCopy = double;
  }

  else
  {
    doubleCopy = v4;
  }

  mFractionAccuracy = self->mFractionAccuracy;
  v7 = mFractionAccuracy;
  v8 = mFractionAccuracy;
  if (mFractionAccuracy >= 0xFFFFFFFD)
  {
    v8 = *(&unk_5EA50 + mFractionAccuracy + 3);
    v7 = 2;
  }

  LODWORD(v9) = 0;
  LODWORD(v10) = 0;
  v11 = floor(doubleCopy);
  v12 = doubleCopy - v11;
  v13 = v8 + 1;
  v14 = 1.79769313e308;
  do
  {
    v15 = v12 * v7;
    v16 = vabdd_f64(v12, round(v15) / v7);
    v17 = llround(v15);
    if (v16 >= v14)
    {
      v9 = v9;
    }

    else
    {
      LODWORD(v10) = v17;
      v9 = v7;
    }

    if (v16 < v14)
    {
      v14 = v16;
    }

    ++v7;
  }

  while (v13 != v7);
  if (mFractionAccuracy >= 0xFFFFFFFD)
  {
    v18 = v9;
    if (v10)
    {
      v19 = v10;
      v20 = v9;
      do
      {
        v18 = v19;
        v19 = v20 % v19;
        v20 = v18;
      }

      while (v19);
    }

    if (v18 >= 2)
    {
      LODWORD(v10) = v10 / v18;
      v9 = (v9 / v18);
    }
  }

  v21 = v10 == v9;
  if (v10 == v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = v10;
  }

  if (v21)
  {
    v11 = v11 + 1.0;
  }

  if (v11 == 0.0)
  {
    if (double >= 0.0)
    {
      v10 = v10;
    }

    else
    {
      v10 = -v10;
    }

    if (v10)
    {
      v23 = CFStringCreateWithFormat(0, 0, @"%d/%d", v10, v9);
    }

    else
    {
      v23 = CFStringCreateWithFormat(0, 0, @"0");
    }
  }

  else
  {
    if (double >= 0.0)
    {
      v22 = v11;
    }

    else
    {
      v22 = -v11;
    }

    if (v10)
    {
      v23 = CFStringCreateWithFormat(0, 0, @"%.0f %d/%d", *&v22, v10, v9);
    }

    else
    {
      v23 = CFStringCreateWithFormat(0, 0, @"%.0f", *&v22);
    }
  }

  return v23;
}

- (id)baseStringFromDouble:(double)double
{
  doubleCopy = double;
  if (double >= 0)
  {
    doubleCopy2 = double;
  }

  else
  {
    doubleCopy2 = -doubleCopy;
  }

  mBasePlaces = self->mBasePlaces;
  if (self->mBaseUsesMinusSign)
  {
    v7 = doubleCopy >> 63;
  }

  else
  {
    v8 = doubleCopy2;
    LOBYTE(double) = self->mBase;
    v9 = log2(*&double);
    do
    {
      v10 = exp2(v9 * mBasePlaces + -1.0);
      if (doubleCopy >= 0)
      {
        v10 = v10 + -1.0;
      }

      ++mBasePlaces;
    }

    while (v10 < v8);
    LODWORD(v7) = 0;
    v11 = -(v8 - v10 * 2.0);
    if (doubleCopy < 0)
    {
      doubleCopy2 = v11;
    }

    --mBasePlaces;
  }

  v12 = objc_alloc_init(NSMutableString);
  v13 = 1;
  mBase = self->mBase;
  do
  {
    if (mBase == 1)
    {
      LOWORD(v15) = 49;
    }

    else if (mBase == 26)
    {
      LODWORD(v15) = (doubleCopy2 / v13) % 26 + 65;
    }

    else
    {
      v15 = doubleCopy2 / v13 % mBase;
      if (v15 <= 9)
      {
        v16 = 48;
      }

      else
      {
        v16 = 55;
      }

      LOWORD(v15) = v16 + v15;
    }

    [v12 gqd_insertCharacter:v15 atIndex:0];
    mBase = self->mBase;
    if (mBase == 1)
    {
      ++v13;
    }

    else
    {
      v13 *= mBase;
    }
  }

  while (v13 && doubleCopy2 / v13 > 0);
  if (mBasePlaces)
  {
    v17 = (mBasePlaces - [v12 length]);
    if (v17 >= 1)
    {
      if (self->mBase == 26)
      {
        v18 = 65;
      }

      else
      {
        v18 = 48;
      }

      do
      {
        [v12 gqd_insertCharacter:v18 atIndex:0];
        --v17;
      }

      while (v17);
    }
  }

  if (v7)
  {
    [v12 gqd_insertCharacter:45 atIndex:0];
  }

  return v12;
}

- (id)customNumberFormatTokens
{
  if (![(GQDTNumberFormat *)self isCustom])
  {
    return 0;
  }

  if ([(GQDTNumberFormat *)self isTextFormat])
  {
    v3 = +[NSMutableArray array];
    v4 = +[NSMutableString string];
    formatString = [(GQDTNumberFormat *)self formatString];
    v6 = [formatString length];
    if (v6 >= 1)
    {
      v7 = 0;
      v8 = v6 & 0x7FFFFFFF;
      do
      {
        v9 = [formatString characterAtIndex:v7];
        if (v9 == word_9CC38)
        {
          if ([v4 length])
          {
            [v3 addObject:v4];
          }

          [v3 addObject:{+[NSMutableString customNumberFormatTokenStringOfType:content:](NSMutableString, "customNumberFormatTokenStringOfType:content:", 5, @"@"}];
          v4 = +[NSMutableString string];
        }

        else
        {
          [v4 appendFormat:@"%C", v9];
        }

        ++v7;
      }

      while (v8 != v7);
    }

    if ([v4 length])
    {
      v10 = v3;
      v11 = v4;
LABEL_181:
      [v10 addObject:v11];
      return v3;
    }

    return v3;
  }

  v12 = [NSCharacterSet characterSetWithCharactersInString:@"+-, #@0123456789"];
  v13 = [NSCharacterSet characterSetWithCharactersInString:@"#@0123456789"];
  v3 = +[NSMutableArray array];
  selfCopy = self;
  formatString2 = [(GQDTNumberFormat *)self formatString];
  v15 = [formatString2 length];
  v16 = v15;
  v17 = off_80000;
  if (v15 >= 1)
  {
    v85 = v13;
    v87 = v12;
    v93 = 0;
    v95 = 0;
    v18 = 0;
    v86 = v15 & 0x7FFFFFFF;
    while (1)
    {
      v19 = v18;
      v20 = [formatString2 characterAtIndex:v18];
      v21 = (v18 + 1);
      v22 = v21 < v16 && [formatString2 characterAtIndex:v21] == 39;
      if (v20 != 46)
      {
        break;
      }

      v95 = 1;
LABEL_51:
      v18 = v21;
      if (v21 >= v16)
      {
        goto LABEL_165;
      }
    }

    if (v20 == 39)
    {
      v23 = v17;
      string = [(__objc2_class *)v17[135] string];
      v25 = string;
      if (v22)
      {
        [string appendString:@"'"];
        v26 = (v18 + 2);
LABEL_44:
        if ([v25 length])
        {
          [v3 addObject:v25];
        }

        v21 = v26;
        v17 = v23;
        goto LABEL_51;
      }

      v26 = (v18 + 1);
      if (v21 >= v16)
      {
        goto LABEL_44;
      }

      while (2)
      {
        v34 = [formatString2 characterAtIndex:v21];
        v35 = v34;
        v26 = (v21 + 1);
        if (v26 >= v16)
        {
          if (v34 == 39)
          {
            goto LABEL_44;
          }
        }

        else
        {
          v36 = [formatString2 characterAtIndex:v26];
          if (v35 == 39)
          {
            if (v36 != 39)
            {
              goto LABEL_44;
            }

            [v25 appendString:@"'"];
            v26 = (v21 + 2);
LABEL_43:
            LODWORD(v21) = v26;
            if (v26 >= v16)
            {
              goto LABEL_44;
            }

            continue;
          }
        }

        break;
      }

      [v25 appendFormat:@"%C", v35];
      goto LABEL_43;
    }

    if (v20 == word_9CC2A || v20 == word_9CC2C || v20 == word_9CC2E || v20 == word_9CC30)
    {
      v30 = v17[135];
      currencyCode = [NSString stringWithFormat:@"%C", v20];
      v32 = v30;
      v33 = 4;
    }

    else if (v20 == word_9CC18)
    {
      v37 = v17[135];
      currencyCode = [NSString stringWithFormat:@"%d", [(GQDTNumberFormat *)selfCopy fractionAccuracy]];
      v32 = v37;
      v33 = 6;
    }

    else
    {
      v39 = (v20 - 37);
      if (v39 <= 0x2F)
      {
        if (((1 << (v20 - 37)) & 0x814060000001) != 0)
        {
          [v3 addObject:{-[__objc2_class customNumberFormatTokenStringOfType:content:](v17[135], "customNumberFormatTokenStringOfType:content:", 0, +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%C%C", v20, v20))}];
LABEL_56:
          v93 = 1;
          goto LABEL_51;
        }

        if (v39 == 32)
        {
          [v3 addObject:{-[__objc2_class customNumberFormatTokenStringOfType:content:](v17[135], "customNumberFormatTokenStringOfType:content:", 0, +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%C", 69))}];
          if (v21 < v16)
          {
            v40 = v21;
            while (-[NSCharacterSet characterIsMember:](v87, "characterIsMember:", [formatString2 characterAtIndex:v40]))
            {
              if (v86 == ++v40)
              {
                return v3;
              }
            }

            v93 = 1;
            v21 = v40;
            goto LABEL_51;
          }

          goto LABEL_56;
        }
      }

      if (v20 != 164)
      {
        if ([(NSCharacterSet *)v87 characterIsMember:v20])
        {
          if (v95)
          {
            if (v18 >= v16)
            {
              v42 = 0;
            }

            else
            {
              v42 = 0;
              while (1)
              {
                v43 = [formatString2 characterAtIndex:v19];
                if (![(NSCharacterSet *)v87 characterIsMember:v43])
                {
                  break;
                }

                v42 += [(NSCharacterSet *)v85 characterIsMember:v43];
                if (v86 == ++v19)
                {
                  v18 = v16;
                  goto LABEL_82;
                }
              }

              v18 = v19;
            }

LABEL_82:
            mNumberOfNonSpaceDecimalPlaceholderDigits = selfCopy->mNumberOfNonSpaceDecimalPlaceholderDigits;
            v49 = v42 - mNumberOfNonSpaceDecimalPlaceholderDigits;
            if (selfCopy->mDecimalWidth)
            {
              v50 = 0;
            }

            else
            {
              v50 = v49;
            }

            if (selfCopy->mDecimalWidth)
            {
              v51 = v49;
            }

            else
            {
              v51 = 0;
            }

            if (selfCopy->mNumberOfNonSpaceDecimalPlaceholderDigits)
            {
              [v3 addObject:{+[NSString customNumberFormatDecimalTokenRepresentedStringWithDigits:digitString:](NSString, "customNumberFormatDecimalTokenRepresentedStringWithDigits:digitString:", mNumberOfNonSpaceDecimalPlaceholderDigits, @"0"}];
            }

            if (v51 >= 1)
            {
              [v3 addObject:{+[NSString customNumberFormatDecimalTokenRepresentedStringWithDigits:digitString:](NSString, "customNumberFormatDecimalTokenRepresentedStringWithDigits:digitString:", v51, @"?"}];
            }

            if (v50 >= 1)
            {
              [v3 addObject:{+[NSString customNumberFormatDecimalTokenRepresentedStringWithDigits:digitString:](NSString, "customNumberFormatDecimalTokenRepresentedStringWithDigits:digitString:", v50, @"#"}];
            }

            v95 = 1;
            v21 = v18;
          }

          else
          {
            if (v18 >= v16)
            {
              v82 = 0;
              v21 = v18;
              v47 = selfCopy;
              v45 = off_80000;
            }

            else
            {
              v44 = 0;
              v45 = off_80000;
              while (1)
              {
                v46 = [formatString2 characterAtIndex:v19];
                if (![(NSCharacterSet *)v87 characterIsMember:v46])
                {
                  break;
                }

                v44 += [(NSCharacterSet *)v85 characterIsMember:v46];
                if (v86 == ++v19)
                {
                  v82 = v44;
                  v21 = v16;
                  goto LABEL_96;
                }
              }

              v82 = v44;
              v21 = v19;
LABEL_96:
              v47 = selfCopy;
            }

            array = [(__objc2_class *)v45[88] array];
            mNumberOfNonSpaceIntegerPlaceholderDigits = v47->mNumberOfNonSpaceIntegerPlaceholderDigits;
            mMinimumIntegerWidth = v47->mMinimumIntegerWidth;
            v83 = mMinimumIntegerWidth;
            if (!v47->mMinimumIntegerWidth)
            {
              mMinimumIntegerWidth = v47->mNumberOfNonSpaceIntegerPlaceholderDigits;
            }

            v84 = mMinimumIntegerWidth;
            mInterstitialStringInsertionIndexes = v47->mInterstitialStringInsertionIndexes;
            firstIndex = [(NSIndexSet *)mInterstitialStringInsertionIndexes firstIndex];
            v55 = firstIndex;
            v81 = mNumberOfNonSpaceIntegerPlaceholderDigits;
            if (mNumberOfNonSpaceIntegerPlaceholderDigits)
            {
              v88 = 0;
              v56 = 0;
              v57 = firstIndex;
              do
              {
                if (mInterstitialStringInsertionIndexes)
                {
                  v58 = v57 == 0x7FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v58 = 1;
                }

                v59 = !v58;
                v60 = (v57 - v56);
                v61 = v57 - v56 <= mNumberOfNonSpaceIntegerPlaceholderDigits;
                if (v57 - v56 >= mNumberOfNonSpaceIntegerPlaceholderDigits)
                {
                  v60 = mNumberOfNonSpaceIntegerPlaceholderDigits;
                }

                if (v59 != 1)
                {
                  v61 = 1;
                }

                v89 = v61;
                if (v59 == 1)
                {
                  v62 = v60;
                }

                else
                {
                  v62 = mNumberOfNonSpaceIntegerPlaceholderDigits;
                }

                [array insertObject:+[NSString customNumberFormatIntegerTokenRepresentedStringWithDigits:separator:digitString:](NSString atIndex:{"customNumberFormatIntegerTokenRepresentedStringWithDigits:separator:digitString:", v62, -[GQDTNumberFormat showThousandsSeparator](selfCopy, "showThousandsSeparator"), @"0", 0}];
                if (v59)
                {
                  if (v89)
                  {
                    [array insertObject:-[NSArray objectAtIndex:](selfCopy->mInterstitialStrings atIndex:{"objectAtIndex:", v88++), 0}];
                    v55 = [(NSIndexSet *)selfCopy->mInterstitialStringInsertionIndexes indexGreaterThanIndex:v57];
                  }

                  else
                  {
                    v55 = v57;
                    v57 = &v56[v62];
                  }
                }

                else
                {
                  v55 = v57;
                  v57 = v56;
                }

                mNumberOfNonSpaceIntegerPlaceholderDigits -= v62;
                v63 = v57;
                v56 = v57;
                v57 = v55;
              }

              while (mNumberOfNonSpaceIntegerPlaceholderDigits > 0);
            }

            else
            {
              v63 = 0;
              v88 = 0;
            }

            if (v83)
            {
              v64 = v83 - v81;
              v65 = v55;
              if ((v83 - v81) >= 1)
              {
                do
                {
                  if (mInterstitialStringInsertionIndexes)
                  {
                    v66 = v65 == 0x7FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v66 = 1;
                  }

                  v67 = !v66;
                  v68 = v65 - v63;
                  v69 = v65 - v63 <= v64;
                  if (v65 - v63 >= v64)
                  {
                    v68 = v64;
                  }

                  if (v67 != 1)
                  {
                    v69 = 1;
                  }

                  v90 = v69;
                  if (v67 == 1)
                  {
                    v70 = v68;
                  }

                  else
                  {
                    v70 = v64;
                  }

                  [array insertObject:+[NSString customNumberFormatIntegerTokenRepresentedStringWithDigits:separator:digitString:](NSString atIndex:{"customNumberFormatIntegerTokenRepresentedStringWithDigits:separator:digitString:", v70, -[GQDTNumberFormat showThousandsSeparator](selfCopy, "showThousandsSeparator"), @"?", 0}];
                  if (v67)
                  {
                    if (v90)
                    {
                      [array insertObject:-[NSArray objectAtIndex:](selfCopy->mInterstitialStrings atIndex:{"objectAtIndex:", v88++), 0}];
                      v55 = [(NSIndexSet *)selfCopy->mInterstitialStringInsertionIndexes indexGreaterThanIndex:v65];
                    }

                    else
                    {
                      v55 = v65;
                      v65 = &v63[v70];
                    }
                  }

                  else
                  {
                    v55 = v65;
                    v65 = v63;
                  }

                  v64 -= v70;
                  v63 = v65;
                  v65 = v55;
                }

                while (v64 > 0);
              }
            }

            v71 = v82 - v84;
            if (v82 - v84 >= 1)
            {
              do
              {
                if (mInterstitialStringInsertionIndexes)
                {
                  v72 = v55 == 0x7FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v72 = 1;
                }

                v73 = !v72;
                v74 = (v55 - v63);
                v75 = v55 - v63 <= v71;
                if (v55 - v63 >= v71)
                {
                  v74 = v71;
                }

                if (v73 != 1)
                {
                  v75 = 1;
                }

                v91 = v75;
                if (v73 == 1)
                {
                  v76 = v74;
                }

                else
                {
                  v76 = v71;
                }

                [array insertObject:+[NSString customNumberFormatIntegerTokenRepresentedStringWithDigits:separator:digitString:](NSString atIndex:{"customNumberFormatIntegerTokenRepresentedStringWithDigits:separator:digitString:", v76, -[GQDTNumberFormat showThousandsSeparator](selfCopy, "showThousandsSeparator"), @"#", 0}];
                if (v73)
                {
                  if (v91)
                  {
                    [array insertObject:-[NSArray objectAtIndex:](selfCopy->mInterstitialStrings atIndex:{"objectAtIndex:", v88++), 0}];
                    v77 = [(NSIndexSet *)selfCopy->mInterstitialStringInsertionIndexes indexGreaterThanIndex:v55];
                  }

                  else
                  {
                    v77 = v55;
                    v55 = &v63[v76];
                  }
                }

                else
                {
                  v77 = v55;
                  v55 = v63;
                }

                v71 -= v76;
                v63 = v55;
                v55 = v77;
              }

              while (v71 > 0);
            }

            [v3 addObjectsFromArray:array];
            v95 = 0;
            v17 = off_80000;
          }

          goto LABEL_51;
        }

        v38 = [(__objc2_class *)v17[135] stringWithFormat:@"%C", v20];
        goto LABEL_50;
      }

      v41 = v17[135];
      currencyCode = [(GQDTNumberFormat *)selfCopy currencyCode];
      v32 = v41;
      v33 = 3;
    }

    v38 = [(__objc2_class *)v32 customNumberFormatTokenStringOfType:v33 content:currencyCode];
LABEL_50:
    [v3 addObject:v38];
    goto LABEL_51;
  }

  v93 = 0;
LABEL_165:
  mScaleFactor = selfCopy->mScaleFactor;
  if (mScaleFactor != 1.0 && (v93 & 1) == 0)
  {
    if (mScaleFactor == 100.0)
    {
      v79 = 37;
    }

    else if (mScaleFactor == 0.01)
    {
      v79 = 67;
    }

    else if (mScaleFactor == 0.001)
    {
      v79 = 75;
    }

    else if (mScaleFactor == 0.000001)
    {
      v79 = 77;
    }

    else if (mScaleFactor == 0.000000001)
    {
      v79 = 66;
    }

    else if (mScaleFactor == 1.0e-12)
    {
      v79 = 84;
    }

    else
    {
      v79 = 0;
    }

    v11 = [(__objc2_class *)v17[135] customNumberFormatTokenStringOfType:0 content:[NSString stringWithFormat:@"%C", v79]];
    v10 = v3;
    goto LABEL_181;
  }

  return v3;
}

@end