@interface QPDataDetectorsParser
- (QPDataDetectorsParser)init;
- (void)_addressFromResult:(id)result attributes:(id)attributes;
- (void)_currencyFromResult:(id)result attributes:(id)attributes;
- (void)_emailAddressFromResult:(id)result attributes:(id)attributes;
- (void)_flightFromResult:(id)result attributes:(id)attributes;
- (void)_linkFromResult:(id)result attributes:(id)attributes;
- (void)_phoneNumberDigitsFromResult:(id)result attributes:(id)attributes;
- (void)_trackingNumberFromResult:(id)result attributes:(id)attributes;
- (void)enumerateDatesInString:(id)string options:(id)options withBlock:(id)block;
- (void)enumerateEntitiesInString:(id)string options:(id)options withBlock:(id)block;
@end

@implementation QPDataDetectorsParser

- (QPDataDetectorsParser)init
{
  v8.receiver = self;
  v8.super_class = QPDataDetectorsParser;
  v2 = [(QPDataDetectorsParser *)&v8 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E6999A90]) initWithScannerType:0 passiveIntent:1];
    config = v2->_config;
    v2->_config = v3;

    v5 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"-()[]"];
    punctuation = v2->_punctuation;
    v2->_punctuation = v5;
  }

  return v2;
}

- (void)_addressFromResult:(id)result attributes:(id)attributes
{
  v23 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [result subResults];
  v7 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        type = [v10 type];
        v12 = [type isEqualToString:@"Street"];

        if (v12)
        {
          value = [v10 value];
          [attributesCopy setObject:value forKey:@"Value"];
        }

        else
        {
          type2 = [v10 type];
          v15 = [type2 isEqualToString:@"ZipCode"];

          if (!v15)
          {
            goto LABEL_11;
          }

          value = [v10 value];
          [attributesCopy setObject:value forKey:@"ZipCode"];
        }

LABEL_11:
        [(QPDataDetectorsParser *)self _addressFromResult:v10 attributes:attributesCopy];
      }

      v7 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_emailAddressFromResult:(id)result attributes:(id)attributes
{
  resultCopy = result;
  attributesCopy = attributes;
  v12 = 0;
  v13 = 0;
  v7 = [resultCopy getMailValue:&v13 label:&v12];
  v8 = v13;
  v9 = v12;
  if (v7)
  {
    [attributesCopy setObject:v8 forKey:@"Value"];
    v10 = [v8 componentsSeparatedByString:@"@"];
    lastObject = [v10 lastObject];

    if (lastObject)
    {
      [attributesCopy setObject:lastObject forKey:@"Domain"];
    }
  }
}

- (void)_phoneNumberDigitsFromResult:(id)result attributes:(id)attributes
{
  attributesCopy = attributes;
  v23 = 0;
  v24 = 0;
  v7 = [result getPhoneValue:&v24 label:&v23];
  v8 = v24;
  v9 = v23;
  if (v7)
  {
    v10 = [MEMORY[0x1E695CF50] phoneNumberWithStringValue:v8];
    v11 = v10;
    if (v10)
    {
      countryCode = [v10 countryCode];
      if (countryCode)
      {
        v13 = MEMORY[0x1E695CF50];
        countryCode2 = [v11 countryCode];
        v15 = [v13 dialingCodeForISOCountryCode:countryCode2];
      }

      else
      {
        v15 = 0;
      }

      unformattedInternationalStringValue = [v11 unformattedInternationalStringValue];
      v17 = [unformattedInternationalStringValue stringByRemovingCharactersFromSet:self->_punctuation];

      stringByRemovingWhitespace = [v17 stringByRemovingWhitespace];

      v19 = 0;
      v20 = 0x7FFFFFFFFFFFFFFFLL;
      if (v15 && stringByRemovingWhitespace)
      {
        v20 = [stringByRemovingWhitespace rangeOfString:v15];
      }

      if (v20 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v21 = stringByRemovingWhitespace;
      }

      else
      {
        v21 = [stringByRemovingWhitespace stringByReplacingOccurrencesOfString:v15 withString:&stru_1F45E9EA0 options:8 range:{v20, v19}];
      }

      v22 = v21;
      if (stringByRemovingWhitespace)
      {
        [attributesCopy setObject:stringByRemovingWhitespace forKey:@"Value"];
      }

      if (v22)
      {
        [attributesCopy setObject:v22 forKey:@"PhoneNumber"];
      }
    }
  }
}

- (void)_flightFromResult:(id)result attributes:(id)attributes
{
  resultCopy = result;
  attributesCopy = attributes;
  v12 = 0;
  v13 = 0;
  v7 = [resultCopy getFlightNumber:&v13 airline:&v12];
  v8 = v13;
  v9 = v12;
  if (v7)
  {
    value = [resultCopy value];
    [attributesCopy setObject:value forKey:@"Value"];

    if (v8)
    {
      if (v9)
      {
        v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v9, v8];
        [attributesCopy setObject:v11 forKey:@"FlightNumber"];
      }
    }
  }
}

- (void)_linkFromResult:(id)result attributes:(id)attributes
{
  resultCopy = result;
  attributesCopy = attributes;
  type = [resultCopy type];
  v7 = [&unk_1F45F8C18 containsObject:type];

  if (v7)
  {
    v8 = MEMORY[0x1E695DFF8];
    value = [resultCopy value];
    v10 = [v8 URLWithString:value];

    host = [v10 host];
    if (host)
    {
      host2 = [v10 host];
      v13 = [host2 containsString:@"."];

      if (v13)
      {
        value2 = [resultCopy value];

        if (value2)
        {
          value3 = [resultCopy value];
          [attributesCopy setObject:value3 forKey:@"Value"];
        }

        host3 = [v10 host];

        if (host3)
        {
          host4 = [v10 host];
          [attributesCopy setObject:host4 forKey:@"Domain"];
        }
      }
    }
  }
}

- (void)_trackingNumberFromResult:(id)result attributes:(id)attributes
{
  resultCopy = result;
  attributesCopy = attributes;
  v11 = 0;
  v12 = 0;
  v7 = [resultCopy getTrackingNumber:&v12 carrier:&v11];
  v8 = v12;
  v9 = v11;
  v10 = v9;
  if (v7 && v8 && v9)
  {
    [attributesCopy setObject:v8 forKey:@"Value"];
    [attributesCopy setObject:v10 forKey:@"Carrier"];
  }
}

- (void)_currencyFromResult:(id)result attributes:(id)attributes
{
  attributesCopy = attributes;
  v14 = 0;
  v15 = 0.0;
  v6 = [result getMoneyAmount:&v15 currency:&v14];
  v7 = v14;
  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  if (v8 == 1)
  {
    CurrencyCode = SICurrenciesGetCurrencyCode();
    if (CurrencyCode)
    {
      v10 = [MEMORY[0x1E696AD98] numberWithDouble:v15];
      stringValue = [v10 stringValue];
      [attributesCopy setObject:stringValue forKey:@"DECIMAL"];

      v12 = [MEMORY[0x1E696AD98] numberWithLong:CurrencyCode];
      stringValue2 = [v12 stringValue];
      [attributesCopy setObject:stringValue2 forKey:@"CurrencyUnit"];
    }
  }
}

- (void)enumerateEntitiesInString:(id)string options:(id)options withBlock:(id)block
{
  v35 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  blockCopy = block;
  context = objc_autoreleasePoolPush();
  v24 = stringCopy;
  [MEMORY[0x1E6999A88] scanString:stringCopy range:0 configuration:{objc_msgSend(stringCopy, "length"), self->_config}];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  obj = v31 = 0u;
  v8 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v8)
  {
    v9 = *v31;
    v25 = *MEMORY[0x1E69999D0];
    v26 = *MEMORY[0x1E69999C8];
    do
    {
      v10 = 0;
      do
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v30 + 1) + 8 * v10);
        range = [v11 range];
        v14 = v13;
        if ([v11 category] == 1)
        {
          v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
          type = [v11 type];
          v17 = [type containsString:@"Email"];

          if (v17)
          {
            v18 = v15;
            [(QPDataDetectorsParser *)self _emailAddressFromResult:v11 attributes:v15];
          }

          else
          {
            v18 = v15;
            [(QPDataDetectorsParser *)self _linkFromResult:v11 attributes:v15];
          }
        }

        else if ([v11 category] == 3)
        {
          v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
          [(QPDataDetectorsParser *)self _addressFromResult:v11 attributes:v18];
        }

        else if ([v11 category] == 2)
        {
          v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
          [(QPDataDetectorsParser *)self _phoneNumberDigitsFromResult:v11 attributes:v18];
        }

        else
        {
          [v11 coreResult];
          if ((DDResultHasType() & 1) != 0 || ([v11 coreResult], DDResultHasType()))
          {
            v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
            [(QPDataDetectorsParser *)self _flightFromResult:v11 attributes:v18];
          }

          else if ([v11 category] == 6)
          {
            v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
            [(QPDataDetectorsParser *)self _currencyFromResult:v11 attributes:v18];
          }

          else if ([v11 category] == 5)
          {
            v14 = [v24 length];
            v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
            [(QPDataDetectorsParser *)self _trackingNumberFromResult:v11 attributes:v20];
            range = 0;
            v18 = v20;
          }

          else
          {
            v18 = 0;
          }
        }

        if ([v18 count])
        {
          v29 = 0;
          type2 = [v11 type];
          blockCopy[2](blockCopy, type2, range, v14, v18, &v29);

          if (v29)
          {

            goto LABEL_29;
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v21 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      v8 = v21;
    }

    while (v21);
  }

LABEL_29:

  objc_autoreleasePoolPop(context);
  v22 = *MEMORY[0x1E69E9840];
}

- (void)enumerateDatesInString:(id)string options:(id)options withBlock:(id)block
{
  v126 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  optionsCopy = options;
  blockCopy = block;
  v79 = optionsCopy;
  v8 = [optionsCopy objectForKeyedSubscript:kQPQueryParserOptionReferenceCalendarKey];
  v9 = v8;
  if (v8)
  {
    currentCalendar = v8;
  }

  else
  {
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  }

  v11 = currentCalendar;

  v12 = [optionsCopy objectForKeyedSubscript:kQPQueryParserOptionLocaleKey];
  v13 = v12;
  if (v12)
  {
    currentLocale = v12;
  }

  else
  {
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  }

  v14 = [optionsCopy objectForKeyedSubscript:kQPQueryParserOptionReferenceDateKey];
  v15 = v14;
  if (v14)
  {
    v91 = v14;
  }

  else
  {
    v91 = [MEMORY[0x1E695DF00] now];
  }

  v16 = [optionsCopy objectForKeyedSubscript:kQPQueryParserOptionIgnoreFutureDatesKey];
  v17 = v16;
  v18 = MEMORY[0x1E695E110];
  if (v16)
  {
    v19 = v16;
  }

  else
  {
    v19 = MEMORY[0x1E695E110];
  }

  v85 = v19;

  v20 = [v79 objectForKeyedSubscript:kQPQueryParserOptionIgnorePastDatesKey];
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = v18;
  }

  v75 = v22;

  v23 = [v79 objectForKeyedSubscript:kQPQueryParserOptionResolveDatesInFutureKey];
  v24 = v23;
  if (v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = v18;
  }

  v81 = v25;

  v26 = [v79 objectForKeyedSubscript:kQPQueryParserOptionResolveDatesInPastKey];
  v27 = v26;
  if (v26)
  {
    v28 = v26;
  }

  else
  {
    v28 = v18;
  }

  v82 = v28;

  v29 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v29 setCalendar:v11];
  [v29 setLocale:currentLocale];
  v117 = -1;
  v116 = -1;
  v115 = -1;
  v114 = -1;
  v113 = -1;
  v30 = MEMORY[0x1C695AB50](v91);
  CFCalendarDecomposeAbsoluteTime(v11, v30, "dMyEw", &v117, &v116, &v115, &v114, &v113);
  v112 = 0;
  v84 = v29;
  v76 = [MEMORY[0x1E6999A88] scanString:stringCopy];
  if ([v76 count])
  {
    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    obj = v76;
    v31 = [obj countByEnumeratingWithState:&v108 objects:v125 count:16];
    if (!v31)
    {
      goto LABEL_99;
    }

    v90 = v31;
    v88 = *MEMORY[0x1E69999B0];
    v89 = *v109;
    v87 = *MEMORY[0x1E6999A48];
    v83 = *MEMORY[0x1E69999B8];
    while (1)
    {
      for (i = 0; i != v90; ++i)
      {
        if (*v109 != v89)
        {
          objc_enumerationMutation(obj);
        }

        v32 = *(*(&v108 + 1) + 8 * i);
        v107 = 0;
        localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
        v106 = 0;
        v94 = v32;
        v95 = [v32 dateFromReferenceDate:v91 referenceTimezone:localTimeZone timezoneRef:&v106 allDayRef:&v107];
        v92 = v106;

        if (v95)
        {
          [v32 coreResult];
          HasType = DDResultHasType();
          [v32 coreResult];
          if ((DDResultHasType() & 1) == 0)
          {
            [v32 coreResult];
            if (((HasType | DDResultHasType()) & 1) == 0)
            {
              goto LABEL_48;
            }
          }

          v105 = -1;
          v104 = -1;
          v103 = -1;
          v102 = -1;
          v101 = -1;
          at = MEMORY[0x1C695AB50](v95);
          v96 = 0u;
          v97 = 0u;
          v98 = 0u;
          v99 = 0u;
          subResults = [v32 subResults];
          v36 = [subResults countByEnumeratingWithState:&v96 objects:v124 count:16];
          if (!v36)
          {
            goto LABEL_44;
          }

          v37 = *v97;
          while (1)
          {
            for (j = 0; j != v36; ++j)
            {
              if (*v97 != v37)
              {
                objc_enumerationMutation(subResults);
              }

              v39 = *(*(&v96 + 1) + 8 * j);
              type = [v39 type];
              v41 = [type isEqualToString:@"RelativeDayOfWeek"];

              if (v41)
              {
                CFCalendarDecomposeAbsoluteTime(v11, at, "E", &v102);
                continue;
              }

              type2 = [v39 type];
              if ([type2 isEqualToString:@"RelativeDay"])
              {
              }

              else
              {
                type3 = [v39 type];
                v44 = [type3 isEqualToString:@"AbsoluteDate"];

                if (!v44)
                {
                  continue;
                }
              }

              CFCalendarDecomposeAbsoluteTime(v11, at, "dMy", &v105, &v104, &v103);
            }

            v36 = [subResults countByEnumeratingWithState:&v96 objects:v124 count:16];
            if (!v36)
            {
LABEL_44:

              bOOLValue = [v85 BOOLValue];
              if (at > v30)
              {
                v46 = bOOLValue;
              }

              else
              {
                v46 = 0;
              }

              if (v46 == 1)
              {
LABEL_48:
                v47 = v95;
                goto LABEL_85;
              }

              if ([v82 BOOLValue] && (v48 = at, at > v30))
              {
                if (v102 != -1)
                {
                  if (v101 != -1)
                  {
                    v49 = 0xFFFFFFFFLL;
                    goto LABEL_60;
                  }

                  CFCalendarDecomposeAbsoluteTime(v11, at, "wY", &v101, &v103);
                  CFCalendarComposeAbsoluteTime(v11, &at, "wY", v101 - 1, v103);
LABEL_65:
                  CFCalendarAddComponents(v11, &at, 0, "E", v50, v102 - 1);
                  goto LABEL_66;
                }

                if (v103 != -1)
                {
                  CFCalendarAddComponents(v11, &at, 0, "y", at, 0xFFFFFFFFLL);
                  CFCalendarDecomposeAbsoluteTime(v11, at, "Y", &v103);
                }
              }

              else if ([v81 BOOLValue])
              {
                v48 = at;
                if (at < v30 && v102 != -1)
                {
                  if (v101 == -1)
                  {
                    CFCalendarDecomposeAbsoluteTime(v11, at, "wY", &v101, &v103);
                    CFCalendarComposeAbsoluteTime(v11, &at, "wY", v101 + 1, v103);
                    goto LABEL_65;
                  }

                  v49 = 1;
LABEL_60:
                  CFCalendarAddComponents(v11, &at, 0, "d", v48, v49);
LABEL_66:
                  CFCalendarDecomposeAbsoluteTime(v11, at, "wEY", &v101, &v102, &v103);
                }
              }

              v51 = objc_alloc_init(MEMORY[0x1E695DF10]);
              v52 = objc_alloc_init(MEMORY[0x1E695DF90]);
              if (v101 == -1)
              {
                if (v105 != -1)
                {
                  [v51 setDay:?];
                  v56 = [MEMORY[0x1E696AD98] numberWithInt:v105];
                  [v52 setObject:v56 forKey:@"d"];
                }

                if (v104 != -1)
                {
                  [v51 setMonth:?];
                  v57 = [MEMORY[0x1E696AD98] numberWithInt:v104];
                  [v52 setObject:v57 forKey:@"M"];
                }

                if (v103 != -1)
                {
                  [v51 setYear:?];
                  v55 = [MEMORY[0x1E696AD98] numberWithInt:v103];
                  [v52 setObject:v55 forKey:@"y"];
LABEL_76:
                }
              }

              else
              {
                [v51 setWeekOfYear:?];
                v53 = [MEMORY[0x1E696AD98] numberWithInt:v101];
                [v52 setObject:v53 forKey:@"w"];

                [v51 setYearForWeekOfYear:v103];
                v54 = [MEMORY[0x1E696AD98] numberWithInt:v103];
                [v52 setObject:v54 forKey:@"Y"];

                if (v102 != -1)
                {
                  [v51 setWeekday:?];
                  v55 = [MEMORY[0x1E696AD98] numberWithInt:v102];
                  [v52 setObject:v55 forKey:@"E"];
                  goto LABEL_76;
                }
              }

              if (![v52 count])
              {
                v47 = v95;
LABEL_84:

                goto LABEL_85;
              }

              v47 = [(__CFCalendar *)v11 dateFromComponents:v51];

              [v84 setDateStyle:4];
              [v84 setTimeStyle:0];
              v58 = [v84 stringFromDate:v47];
              v59 = v58;
              if (!v58)
              {
                goto LABEL_82;
              }

              v122[0] = kQPParseAttributeValueDateDisplayKey;
              v122[1] = kQPParseAttributeValueDateComponentsKey;
              v123[0] = v58;
              v123[1] = v52;
              v122[2] = kQPParseAttributeValueDateTypeKey;
              v122[3] = kQPParseAttributeValueDateTemporalModifierKey;
              v123[2] = &unk_1F45F8EA0;
              v123[3] = &unk_1F45F8EB8;
              v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v123 forKeys:v122 count:4];
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
              {
                -[QPDataDetectorsParser enumerateDatesInString:options:withBlock:].cold.1(buf, [obj count], &v121);
              }

              range = [v94 range];
              blockCopy[2](blockCopy, v60, range, v62, &v112);
              v63 = v112;

              if ((v63 & 1) == 0)
              {
LABEL_82:

                goto LABEL_84;
              }

LABEL_99:
              goto LABEL_100;
            }
          }
        }

        v47 = 0;
LABEL_85:
      }

      v90 = [obj countByEnumeratingWithState:&v108 objects:v125 count:16];
      if (!v90)
      {
        goto LABEL_99;
      }
    }
  }

  if ([stringCopy length] == 4)
  {
    decimalDigitCharacterSet = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
    v65 = [stringCopy stringByTrimmingCharactersInSet:decimalDigitCharacterSet];
    v66 = [v65 length] == 0;

    if (v66)
    {
      integerValue = [stringCopy integerValue];
      if (integerValue >= 1971)
      {
        obj = objc_alloc_init(MEMORY[0x1E695DF10]);
        [obj setYear:integerValue];
        v68 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v69 = [MEMORY[0x1E696AD98] numberWithInteger:integerValue];
        [v68 setObject:v69 forKey:@"y"];

        if ([v68 count])
        {
          v70 = [(__CFCalendar *)v11 dateFromComponents:obj];
          [v84 setDateStyle:4];
          [v84 setTimeStyle:0];
          v71 = [v84 stringFromDate:v70];
          v72 = v71;
          if (v71)
          {
            v118[0] = kQPParseAttributeValueDateDisplayKey;
            v118[1] = kQPParseAttributeValueDateComponentsKey;
            v119[0] = v71;
            v119[1] = v68;
            v118[2] = kQPParseAttributeValueDateTypeKey;
            v118[3] = kQPParseAttributeValueDateTemporalModifierKey;
            v119[2] = &unk_1F45F8EA0;
            v119[3] = &unk_1F45F8EB8;
            v73 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v119 forKeys:v118 count:4];
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
            {
              -[QPDataDetectorsParser enumerateDatesInString:options:withBlock:].cold.2(buf, [v76 count]);
            }

            blockCopy[2](blockCopy, v73, 0, [stringCopy length], &v112);
          }
        }

        goto LABEL_99;
      }
    }
  }

LABEL_100:

  v74 = *MEMORY[0x1E69E9840];
}

- (void)enumerateDatesInString:(uint8_t *)buf options:(uint64_t)a2 withBlock:(void *)a3 .cold.1(uint8_t *buf, uint64_t a2, void *a3)
{
  *buf = 134217984;
  *a3 = a2;
  _os_log_debug_impl(&dword_1C6584000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "QueryParserManager: fallback date found: %lu", buf, 0xCu);
}

- (void)enumerateDatesInString:(uint8_t *)buf options:(uint64_t)a2 withBlock:.cold.2(uint8_t *buf, uint64_t a2)
{
  *buf = 134217984;
  *(buf + 4) = a2;
  _os_log_debug_impl(&dword_1C6584000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "QueryParserManager: fallback date found: %lu", buf, 0xCu);
}

@end