@interface TSCEUnitRegistry
+ (BOOL)unitIsMetric:(unsigned __int16)metric;
+ (TSCEPrefixedBaseUnit)prefixedUnitForString:(id)string;
+ (double)multiplierForUnit:(TSCEPrefixedBaseUnit)unit;
+ (id)baseUnitStringsForDimension:(unsigned __int8)dimension;
+ (id)convertInNumber:(const TSUDecimal *)number outNumber:(TSUDecimal *)outNumber fromUnit:(TSCEPrefixedBaseUnit)unit toUnit:(TSCEPrefixedBaseUnit)toUnit;
+ (id)currencyCodeForUnit:(unsigned __int16)unit;
+ (id)siBinaryPrefixStrings;
+ (id)siPrefixStrings;
+ (unsigned)binaryUnitPrefixForChars:(unsigned __int16)chars :(unsigned __int16)a4;
+ (unsigned)canonicalUnitForDimension:(unsigned __int8)dimension;
+ (unsigned)dimensionForUnit:(unsigned __int16)unit;
+ (unsigned)unitForCurrencyCode:(id)code;
+ (unsigned)unitForString:(id)string;
+ (unsigned)unitPrefixForCharacter:(unsigned __int16)character;
+ (void)initialize;
@end

@implementation TSCEUnitRegistry

+ (void)initialize
{
  if (qword_27CFB5430 != -1)
  {
    sub_2216F7700();
  }
}

+ (unsigned)unitForCurrencyCode:(id)code
{
  codeCopy = code;
  if (codeCopy)
  {
    v7 = objc_msgSend_objectForKeyedSubscript_(qword_27CFB5418, v3, codeCopy, v4, v5);
    v12 = objc_msgSend_integerValue(v7, v8, v9, v10, v11);
  }

  else
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "+[TSCEUnitRegistry unitForCurrencyCode:]", v4, v5);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEUnitRegistry.mm", v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v19, v14, v18, 537, 0, "can't look up unit for a nil currency code");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
    v12 = 0;
  }

  return v12;
}

+ (id)currencyCodeForUnit:(unsigned __int16)unit
{
  unitCopy = unit;
  v4 = objc_alloc(MEMORY[0x277CCABB0]);
  v8 = objc_msgSend_initWithInt_(v4, v5, unitCopy, v6, v7);
  v12 = objc_msgSend_objectForKey_(qword_27CFB5420, v9, v8, v10, v11);

  return v12;
}

+ (unsigned)canonicalUnitForDimension:(unsigned __int8)dimension
{
  if (dimension < 0xEu && ((0x3FEFu >> dimension) & 1) != 0)
  {
    return word_2217E12C2[dimension];
  }

  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "+[TSCEUnitRegistry canonicalUnitForDimension:]", v3, v4);
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEUnitRegistry.mm", v9, v10);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v11, 584, 0, "Unknown dimension found in canonicalUnitForDimension");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
  return 6;
}

+ (id)baseUnitStringsForDimension:(unsigned __int8)dimension
{
  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "+[TSCEUnitRegistry baseUnitStringsForDimension:]", v3, v4);
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEUnitRegistry.mm", v8, v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v11, v6, v10, 607, 0, "baseUnitStringsForDimension: only intended for unit tests, atm.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14, v15);
  return 0;
}

+ (id)siPrefixStrings
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "+[TSCEUnitRegistry siPrefixStrings]", v2, v3);
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEUnitRegistry.mm", v7, v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v10, v5, v9, 622, 0, "siPrefixStrings: only intended for unit tests, atm.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13, v14);
  return 0;
}

+ (id)siBinaryPrefixStrings
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "+[TSCEUnitRegistry siBinaryPrefixStrings]", v2, v3);
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEUnitRegistry.mm", v7, v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v10, v5, v9, 632, 0, "siBinaryPrefixStrings: only intended for unit tests, atm.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13, v14);
  return 0;
}

+ (unsigned)unitForString:(id)string
{
  v5 = objc_msgSend_objectForKey_(qword_27CFB5428, a2, string, v3, v4);
  v10 = v5;
  if (v5)
  {
    v11 = objc_msgSend_intValue(v5, v6, v7, v8, v9);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (double)multiplierForUnit:(TSCEPrefixedBaseUnit)unit
{
  var1 = unit.var1;
  v6 = 1.0e18;
  switch(unit.var0)
  {
    case 0u:
      v7 = MEMORY[0x277D81150];
      v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "+[TSCEUnitRegistry multiplierForUnit:]", v3, v4);
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEUnitRegistry.mm", v10, v11);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 652, 0, "Shouldn't try to get the multiplier of an invalid unit prefix");
      goto LABEL_25;
    case 1u:
      break;
    case 2u:
      v6 = 1.0e15;
      break;
    case 3u:
      v6 = 1.0e12;
      break;
    case 4u:
      v6 = 1000000000.0;
      break;
    case 5u:
      v6 = 1000000.0;
      break;
    case 6u:
      v6 = 1000.0;
      break;
    case 7u:
      v14 = 0x4059000000000000;
      goto LABEL_33;
    case 8u:
      v6 = 10.0;
      break;
    case 9u:
      goto LABEL_26;
    case 0xAu:
      v6 = 0.1;
      break;
    case 0xBu:
      v6 = 0.01;
      break;
    case 0xCu:
      v6 = 0.001;
      break;
    case 0xDu:
      v6 = 0.000001;
      break;
    case 0xEu:
      v6 = 0.000000001;
      break;
    case 0xFu:
      v6 = 1.0e-12;
      break;
    case 0x10u:
      v6 = 1.0e-15;
      break;
    case 0x11u:
      v6 = 1.0e-18;
      break;
    case 0x12u:
      v6 = 1.0e24;
      break;
    case 0x13u:
      v6 = 1.0e21;
      break;
    case 0x14u:
      v6 = 1.0e-21;
      break;
    case 0x15u:
      v6 = 1.0e-24;
      break;
    case 0x16u:
      v14 = 0x44F0000000000000;
      goto LABEL_33;
    case 0x17u:
      v14 = 0x4450000000000000;
      goto LABEL_33;
    case 0x18u:
      v14 = 0x43B0000000000000;
      goto LABEL_33;
    case 0x19u:
      v14 = 0x4310000000000000;
      goto LABEL_33;
    case 0x1Au:
      v14 = 0x4270000000000000;
      goto LABEL_33;
    case 0x1Bu:
      v14 = 0x41D0000000000000;
      goto LABEL_33;
    case 0x1Cu:
      v14 = 0x4130000000000000;
      goto LABEL_33;
    case 0x1Du:
      v14 = 0x4090000000000000;
LABEL_33:
      v6 = *&v14;
      break;
    default:
      v15 = MEMORY[0x277D81150];
      v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "+[TSCEUnitRegistry multiplierForUnit:]", v3, v4);
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEUnitRegistry.mm", v17, v18);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v19, v8, v12, 747, 0, "Shouldn't try to get the multiplier of an unknown unit prefix");
LABEL_25:

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
LABEL_26:
      v6 = 1.0;
      break;
  }

  v27 = var1;
  v28 = &v27;
  v24 = *(sub_221309CBC(qword_27CFB5438, &v27) + 18);
  if (v24 == 10)
  {
    v25 = v27 - 43;
    if (v25 > 0x25 || ((1 << v25) & 0x2E000001FFLL) == 0)
    {
      return v6 * (v6 * v6);
    }
  }

  else if (v24 == 12)
  {
    return v6 * v6;
  }

  return v6;
}

+ (unsigned)unitPrefixForCharacter:(unsigned __int16)character
{
  if (character > 116)
  {
    if (character <= 121)
    {
      if (character != 117)
      {
        if (character == 121)
        {
          return 21;
        }

        return 0;
      }
    }

    else
    {
      if (character == 122)
      {
        return 20;
      }

      if (character != 181 && character != 956)
      {
        return 0;
      }
    }

    return 13;
  }

  switch(character)
  {
    case 'M':
      return 5;
    case 'N':
    case 'O':
    case 'Q':
    case 'R':
    case 'S':
    case 'U':
    case 'V':
    case 'W':
    case 'X':
    case '[':
    case '\\':
    case ']':
    case '^':
    case '_':
    case 'b':
    case 'g':
    case 'i':
    case 'j':
    case 'l':
    case 'o':
      return 0;
    case 'P':
      return 2;
    case 'T':
      return 3;
    case 'Y':
      return 18;
    case 'Z':
      return 19;
    case 'a':
      return 17;
    case 'c':
      return 11;
    case 'd':
      return 10;
    case 'e':
      return 8;
    case 'f':
      return 16;
    case 'h':
      return 7;
    case 'k':
      return 6;
    case 'm':
      return 12;
    case 'n':
      return 14;
    case 'p':
      return 15;
    default:
      if (character == 69)
      {
        result = 1;
      }

      else
      {
        if (character != 71)
        {
          return 0;
        }

        result = 4;
      }

      break;
  }

  return result;
}

+ (unsigned)binaryUnitPrefixForChars:(unsigned __int16)chars :(unsigned __int16)a4
{
  if (a4 != 105)
  {
    return 0;
  }

  if (chars > 83)
  {
    if (chars > 89)
    {
      if (chars != 107)
      {
        if (chars == 90)
        {
          return 23;
        }

        return 0;
      }

      return 29;
    }

    else
    {
      if (chars != 84)
      {
        if (chars == 89)
        {
          return 22;
        }

        return 0;
      }

      return 26;
    }
  }

  else if (chars > 76)
  {
    if (chars != 77)
    {
      if (chars == 80)
      {
        return 25;
      }

      return 0;
    }

    return 28;
  }

  else
  {
    if (chars != 69)
    {
      if (chars == 71)
      {
        return 27;
      }

      return 0;
    }

    return 24;
  }
}

+ (TSCEPrefixedBaseUnit)prefixedUnitForString:(id)string
{
  stringCopy = string;
  v7 = objc_msgSend_unitForString_(TSCEUnitRegistry, v4, stringCopy, v5, v6);
  if (v7)
  {
    v46.var1 = v7;
    v46.var0 = 9;
  }

  else if (objc_msgSend_length(stringCopy, v8, v9, v10, v11))
  {
    v16 = objc_msgSend_characterAtIndex_(stringCopy, v13, 0, v14, v15);
    v46.var0 = objc_msgSend_unitPrefixForCharacter_(TSCEUnitRegistry, v17, v16, v18, v19);
    v23 = objc_msgSend_substringFromIndex_(stringCopy, v20, 1, v21, v22);
    v27 = objc_msgSend_unitForString_(TSCEUnitRegistry, v24, v23, v25, v26);
    v46.var1 = v27;

    if (!v27 && objc_msgSend_length(stringCopy, v28, v29, v30, v31) >= 2)
    {
      v35 = objc_msgSend_characterAtIndex_(stringCopy, v32, 1, v33, v34);
      v46.var0 = objc_msgSend_binaryUnitPrefixForChars::(TSCEUnitRegistry, v36, v16, v35, v37);
      v41 = objc_msgSend_substringFromIndex_(stringCopy, v38, 2, v39, v40);
      v45 = objc_msgSend_unitForString_(TSCEUnitRegistry, v42, v41, v43, v44);
      v46.var1 = v45;

      if (v45)
      {
        p_var1 = &v46.var1;
        if (*(sub_221309CBC(qword_27CFB5438, &v46.var1) + 18) != 13)
        {
          v46.var0 = 9;
          v46.var1 = 0;
        }
      }
    }
  }

  else
  {
    v46.var1 = 0;
    v46.var0 = 0;
  }

  return v46;
}

+ (BOOL)unitIsMetric:(unsigned __int16)metric
{
  result = 1;
  if ((metric > 0x38u || ((1 << metric) & 0x1C804E2FBE82940) == 0) && ((metric - 79) > 0x1D || ((1 << (metric - 79)) & 0x304B0041) == 0))
  {
    return 0;
  }

  return result;
}

+ (id)convertInNumber:(const TSUDecimal *)number outNumber:(TSUDecimal *)outNumber fromUnit:(TSCEPrefixedBaseUnit)unit toUnit:(TSCEPrefixedBaseUnit)toUnit
{
  toUnitCopy = toUnit;
  unitCopy = unit;
  v40 = *number;
  if (qword_27CFB5448 <= unit.var1 && qword_27CFB5448 <= toUnit.var1)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "+[TSCEUnitRegistry convertInNumber:outNumber:fromUnit:toUnit:]", outNumber, *&unit.var0);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEUnitRegistry.mm", v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v19, v14, v18, 951, 0, "Invalid unit found in convert:");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
    TSUDecimal::operator=();
    objc_msgSend_errorForErrorType_(TSCEError, v24, 80, v25, v26);
    goto LABEL_18;
  }

  v43._decimal.w[0] = &unitCopy.var1;
  v8 = *(sub_221309CBC(qword_27CFB5438, &unitCopy.var1) + 18);
  v43._decimal.w[0] = &toUnitCopy.var1;
  v9 = *(sub_221309CBC(qword_27CFB5438, &toUnitCopy.var1) + 18);
  if (v8 != v9)
  {
    var1 = unitCopy.var1;
    if (v9 != 2 || unitCopy.var1 != 29 || unitCopy.var0 != 15)
    {
      if (toUnitCopy.var1 == 29 && toUnitCopy.var0 == 15 && v8 == 2)
      {
        toUnitCopy.var0 = 9;
        toUnitCopy.var1 = 68;
        goto LABEL_21;
      }

      TSUDecimal::operator=();
      objc_msgSend_errorForErrorType_(TSCEError, v36, 81, v37, v38);
      v27 = LABEL_18:;
      goto LABEL_40;
    }

    unitCopy.var0 = 9;
    unitCopy.var1 = 68;
  }

  var1 = unitCopy.var1;
LABEL_21:
  if (var1 == 41)
  {
    if (toUnitCopy.var1 == 41)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  if (var1 == 74)
  {
    if (toUnitCopy.var1 == 74)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  if (var1 == 42 && toUnitCopy.var1 != 42)
  {
LABEL_29:
    TSUDecimal::operator=();
    TSUDecimal::operator-=();
  }

LABEL_30:
  v43._decimal.w[0] = &unitCopy.var1;
  sub_221309EF8(qword_27CFB5440, &unitCopy.var1);
  v43 = v40;
  TSUDecimal::operator*=();
  v28 = v43;
  v43._decimal.w[0] = &toUnitCopy.var1;
  sub_221309EF8(qword_27CFB5440, &toUnitCopy.var1);
  v43 = v28;
  TSUDecimal::operator/=();
  v39 = v43;
  if (toUnitCopy.var1 == 41)
  {
    if (unitCopy.var1 != 41)
    {
      goto LABEL_38;
    }
  }

  else
  {
    if (toUnitCopy.var1 != 74)
    {
      if (toUnitCopy.var1 != 42 || unitCopy.var1 == 42)
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }

    if (unitCopy.var1 != 74)
    {
LABEL_38:
      TSUDecimal::operator=();
      TSUDecimal::operator+=();
    }
  }

LABEL_39:
  objc_msgSend_multiplierForUnit_(TSCEUnitRegistry, v29, *&unitCopy, v30, v31);
  objc_msgSend_multiplierForUnit_(TSCEUnitRegistry, v32, *&toUnitCopy, v33, v34);
  TSUDecimal::operator=();
  v43 = v39;
  TSUDecimal::operator*=();
  v27 = 0;
  *outNumber = v43;
LABEL_40:

  return v27;
}

+ (unsigned)dimensionForUnit:(unsigned __int16)unit
{
  unitCopy = unit;
  if (qword_27CFB5448 <= unit)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "+[TSCEUnitRegistry dimensionForUnit:]", v3, v4);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEUnitRegistry.mm", v8, v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v11, v6, v10, 1055, 0, "unit out of bounds in dimensionForUnit:.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14, v15);
  }

  v18 = &unitCopy;
  return *(sub_221309CBC(qword_27CFB5438, &unitCopy) + 18);
}

@end