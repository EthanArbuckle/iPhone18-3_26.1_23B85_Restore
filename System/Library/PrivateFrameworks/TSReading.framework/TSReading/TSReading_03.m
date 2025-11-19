void sub_26C730978(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double EQKit::Font::STIXCollection::lengthMetricWithScriptAndRule(uint64_t a1, unsigned int a2, EQKit::Script::Info *a3, double a4)
{
  v4 = *(a1 + 336);
  if (v4)
  {
    return EQKit::Font::Metric::LengthEntry::resolveWithScriptAndRule((v4 + 384 * a2), a3, a4);
  }

  else
  {
    return 0.0;
  }
}

double virtual thunk toEQKit::Font::STIXCollection::lengthMetricWithScriptAndRule(void *a1, unsigned int a2, EQKit::Script::Info *a3, double a4)
{
  v4 = *(a1 + *(*a1 - 56) + 336);
  if (v4)
  {
    return EQKit::Font::Metric::LengthEntry::resolveWithScriptAndRule((v4 + 384 * a2), a3, a4);
  }

  else
  {
    return 0.0;
  }
}

double EQKit::Font::STIXCollection::floatMetric(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 336);
  if (v2)
  {
    return *(v2 + 8 * a2 + 12672);
  }

  else
  {
    return 0.0;
  }
}

double virtual thunk toEQKit::Font::STIXCollection::floatMetric(void *a1, unsigned int a2)
{
  v2 = *(a1 + *(*a1 - 64) + 336);
  if (v2)
  {
    return *(v2 + 8 * a2 + 12672);
  }

  else
  {
    return 0.0;
  }
}

CTFontRef EQKit::Font::STIXCollection::newFontWithScript(EQKit::Font::STIXCollection *this, const EQKit::Script::Info *a2)
{
  v2 = *(a2 + 3) - 2;
  if (v2 > 2)
  {
    v3 = 8;
  }

  else
  {
    v3 = qword_26CA63A98[v2];
  }

  v4 = *(this + v3);
  if (v4 && *v4)
  {
    return CTFontCreateCopyWithAttributes(*v4, *(a2 + 2), 0, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t EQKit::Font::STIXCollection::fontInfoGenericWithScript(EQKit::Font::STIXCollection *this, const EQKit::Script::Info *a2)
{
  v2 = *(a2 + 3) - 2;
  if (v2 > 2)
  {
    v3 = 8;
  }

  else
  {
    v3 = qword_26CA63A98[v2];
  }

  return *(this + v3);
}

uint64_t EQKit::Font::STIXCollection::fontInfoGenericForCharacterWithScript(EQKit::Font::STIXCollection *this, UTF32Char theChar, const EQKit::Script::Info *a3)
{
  v5 = *(a3 + 3) - 2;
  if (v5 > 2)
  {
    v6 = 0;
    v7 = 8;
  }

  else
  {
    v6 = dword_26CA63A48[v5];
    v7 = qword_26CA63A98[v5];
  }

  v8 = *(this + v7);
  if (!v8 || (v9 = *(v8 + 8)) == 0 || !CFCharacterSetIsLongCharacterMember(v9, theChar))
  {
    if ((v6 - 1) < 2)
    {
      v10 = &_downgradeTraitsArray(unsigned int,unsigned long &)::traits;
      v11 = 1;
LABEL_12:
      v12 = this + 8;
      v13 = 1;
      while (1)
      {
        v14 = *v10++;
        v8 = *&v12[8 * (v14 & 3)];
        if (!v8)
        {
          goto LABEL_17;
        }

        v15 = *(v8 + 8);
        if (v15)
        {
          break;
        }

        v8 = 0;
LABEL_18:
        if (v13++ >= v11)
        {
          return v8;
        }
      }

      if (!CFCharacterSetIsLongCharacterMember(v15, theChar))
      {
        v8 = 0;
      }

LABEL_17:
      if (v8)
      {
        return v8;
      }

      goto LABEL_18;
    }

    if (v6)
    {
      v10 = &_downgradeTraitsArray(unsigned int,unsigned long &)::traits;
      v11 = 3;
      goto LABEL_12;
    }

    return 0;
  }

  return v8;
}

uint64_t EQKit::Font::STIXCollection::fontInfoNonUnicodeForCharacterWithScript(EQKit::Font::STIXCollection *this, UTF32Char theChar, const EQKit::Script::Info *a3)
{
  v5 = *(a3 + 3) - 2;
  if (v5 > 2)
  {
    v6 = 0;
    v7 = 56;
  }

  else
  {
    v6 = dword_26CA63A48[v5];
    v7 = qword_26CA63A58[v5];
  }

  v8 = *(this + v7);
  if (!v8 || (v9 = *(v8 + 8)) == 0 || !CFCharacterSetIsLongCharacterMember(v9, theChar))
  {
    if ((v6 - 1) < 2)
    {
      v10 = &_downgradeTraitsArray(unsigned int,unsigned long &)::traits;
      v11 = 1;
LABEL_12:
      v12 = this + 56;
      v13 = 1;
      while (1)
      {
        v14 = *v10++;
        v8 = *&v12[8 * (v14 & 3)];
        if (!v8)
        {
          goto LABEL_17;
        }

        v15 = *(v8 + 8);
        if (v15)
        {
          break;
        }

        v8 = 0;
LABEL_18:
        if (v13++ >= v11)
        {
          return v8;
        }
      }

      if (!CFCharacterSetIsLongCharacterMember(v15, theChar))
      {
        v8 = 0;
      }

LABEL_17:
      if (v8)
      {
        return v8;
      }

      goto LABEL_18;
    }

    if (v6)
    {
      v10 = &_downgradeTraitsArray(unsigned int,unsigned long &)::traits;
      v11 = 3;
      goto LABEL_12;
    }

    return 0;
  }

  return v8;
}

const __CFCharacterSet *EQKit::Font::STIXCollection::fontInfoIntegralForCharacterWithScript(EQKit::Font::STIXCollection *this, UTF32Char a2, const EQKit::Script::Info *a3)
{
  v4 = this + 136;
  v3 = *(this + 17);
  if (!v3)
  {
    return 0;
  }

  result = *(v3 + 8);
  if (!result)
  {
    return result;
  }

  if (!CFCharacterSetIsLongCharacterMember(result, a2))
  {
    return 0;
  }

  v9 = *(a3 + 3);
  v10 = v9 > 4;
  v11 = 7u >> v9;
  v12 = v10 | (0xBu >> v9);
  v13 = v10 | v11;
  if (*a3)
  {
    v14 = this + 152;
    if (v12)
    {
      v15 = this + 104;
    }

    else
    {
      v14 = this + 160;
      v15 = this + 112;
    }

    if (v13)
    {
      v15 = v14;
    }

    goto LABEL_23;
  }

  if (*(a3 + 8) != 1 || *(a3 + 10) != 1)
  {
    if (v13)
    {
      if (v12)
      {
        v15 = v4;
      }

      else
      {
        v15 = this + 144;
      }

      goto LABEL_23;
    }

    v16 = this + 8;
    v17 = this + 24;
LABEL_20:
    if (v12)
    {
      v15 = v16;
    }

    else
    {
      v15 = v17;
    }

    goto LABEL_23;
  }

  if (v13)
  {
    v16 = this + 120;
    v17 = this + 128;
    goto LABEL_20;
  }

  v19 = (v12 & 1) == 0;
  v20 = 96;
  if (!v19)
  {
    v20 = 88;
  }

  v15 = this + v20;
LABEL_23:
  v18 = *v15;
  if (!*v15)
  {
    return 0;
  }

  result = *(v18 + 8);
  if (result)
  {
    if (CFCharacterSetIsLongCharacterMember(result, a2))
    {
      return v18;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const __CFCharacterSet *EQKit::Font::STIXCollection::fontInfoForSpecialVariantWithScript(EQKit::Font::STIXCollection *this, UTF32Char theChar, uint64_t a3, const EQKit::Script::Info *a4)
{
  if (a3 != 1)
  {
    if (*(a4 + 6))
    {
      return 0;
    }

    v11 = *(this + 45);
    if (!v11)
    {
      return 0;
    }

    v12 = *v11;
    v13 = *(v11 + 8);
    if (v13 == v12)
    {
      return 0;
    }

    v14 = v13 - v12;
    do
    {
      v15 = v14 >> 1;
      v16 = &v12[v14 >> 1];
      v18 = *v16;
      v17 = v16 + 1;
      v14 += ~(v14 >> 1);
      if (v18 < theChar)
      {
        v12 = v17;
      }

      else
      {
        v14 = v15;
      }
    }

    while (v14);
    if (v12 == v13 || *v12 != theChar)
    {
      return 0;
    }
  }

  v6 = *(a4 + 3);
  if (v6 == 4 || v6 == 2)
  {
    v8 = *(this + 6);
    if (v8)
    {
      v9 = *(v8 + 8);
      if (v9)
      {
        if (CFCharacterSetIsLongCharacterMember(v9, theChar))
        {
          return *(this + 6);
        }
      }
    }
  }

  v19 = *(this + 5);
  if (!v19)
  {
    return 0;
  }

  result = *(v19 + 8);
  if (!result)
  {
    return result;
  }

  if (CFCharacterSetIsLongCharacterMember(result, theChar))
  {
    return *(this + 5);
  }

  else
  {
    return 0;
  }
}

const __CFCharacterSet *EQKit::Font::STIXCollection::fontInfoForLargeOpWithScript(EQKit::Font::STIXCollection *this, UTF32Char theChar, const EQKit::Script::Info *a3)
{
  if (*(a3 + 10) != 1 || *(a3 + 8) != 1)
  {
    return 0;
  }

  v5 = (*(a3 + 3) - 2) & 0xFFFFFFFD;
  v6 = 224;
  if (v5)
  {
    v6 = 168;
  }

  v7 = *(this + v6 + 8);
  if (!v7 || (v8 = *(v7 + 1)) == 0)
  {
    if (v5)
    {
      return 0;
    }

    goto LABEL_15;
  }

  IsLongCharacterMember = CFCharacterSetIsLongCharacterMember(v8, theChar);
  if (IsLongCharacterMember)
  {
    result = v7;
  }

  else
  {
    result = 0;
  }

  if (!v5 && !IsLongCharacterMember)
  {
LABEL_15:
    v11 = *(this + 22);
    if (v11)
    {
      result = *(v11 + 8);
      if (result)
      {
        if (CFCharacterSetIsLongCharacterMember(result, theChar))
        {
          return v11;
        }

        else
        {
          return 0;
        }
      }

      return result;
    }

    return 0;
  }

  return result;
}

uint64_t EQKit::Font::STIXCollection::setupSizeVariantForScript(uint64_t result, void *a2, void *a3, uint64_t a4)
{
  v4 = *(a4 + 12) - 2;
  v5 = (v4 & 0xFFFFFFFD) == 0;
  if ((v4 & 0xFFFFFFFD) != 0)
  {
    v6 = result + 168;
  }

  else
  {
    v6 = result + 224;
  }

  *a2 = v6;
  if (v5)
  {
    v7 = result + 168;
  }

  else
  {
    v7 = 0;
  }

  *a3 = v7;
  return result;
}

uint64_t EQKit::Font::STIXCollection::fixOutOfSequenceUnicodeChar(EQKit::Font::STIXCollection *this, uint64_t a2)
{
  result = a2;
  if (a2 > 120075)
  {
    if (a2 > 120132)
    {
      if (a2 <= 120135)
      {
        if (a2 == 120133)
        {
          return 8469;
        }

        else if (a2 == 120135)
        {
          return 8473;
        }
      }

      else
      {
        switch(a2)
        {
          case 0x1D548:
            return 8474;
          case 0x1D549:
            return 8477;
          case 0x1D551:
            return 8484;
        }
      }
    }

    else if (a2 <= 120092)
    {
      if (a2 == 120076)
      {
        return 8465;
      }

      else if (a2 == 120085)
      {
        return 8476;
      }
    }

    else
    {
      switch(a2)
      {
        case 0x1D51D:
          return 8488;
        case 0x1D53A:
          return 8450;
        case 0x1D53F:
          return 8461;
      }
    }
  }

  else if (a2 > 119974)
  {
    if (a2 <= 119980)
    {
      if (a2 == 119975)
      {
        return 8466;
      }

      else if (a2 == 119976)
      {
        return 8499;
      }
    }

    else
    {
      switch(a2)
      {
        case 0x1D4AD:
          return 8475;
        case 0x1D506:
          return 8493;
        case 0x1D50B:
          return 8460;
      }
    }
  }

  else if (a2 <= 119968)
  {
    if (a2 == 119965)
    {
      return 8492;
    }

    else if (a2 == 119968)
    {
      return 8496;
    }
  }

  else
  {
    switch(a2)
    {
      case 0x1D4A1:
        return 8497;
      case 0x1D4A3:
        return 8459;
      case 0x1D4A4:
        return 8464;
    }
  }

  return result;
}

uint64_t EQKit::Font::STIXCollection::lookupChar(EQKit::Font::STIXCollection *this, uint64_t a2, const EQKit::Script::Info *a3, int a4)
{
  if (a2 == 39)
  {
    if (!*(a3 + 6))
    {
      return 8242;
    }
  }

  else if (a2 == 45)
  {
    if (*(a3 + 6) == 1)
    {
      return 8208;
    }

    else
    {
      return 8722;
    }
  }

  if ((a2 - 65) >= 0x1A && (a2 - 97) > 0x19)
  {
    if ((a2 - 48) <= 9)
    {
      v5 = *(a3 + 3) - 5;
      if (v5 <= 9)
      {
        v4 = a2;
        if ((0x3E1u >> v5))
        {
          return (dword_26CA63A70[v5] + a2 - 48);
        }

        return v4;
      }

      return a2;
    }

    v9 = *(this + 43);
    if (v9)
    {
      v12 = *(v9 + 8);
      v10 = v9 + 8;
      v11 = v12;
      v4 = a2;
      if (v12)
      {
        v13 = v10;
        do
        {
          v14 = *(v11 + 28);
          v15 = v14 >= a2;
          v16 = v14 < a2;
          if (v15)
          {
            v13 = v11;
          }

          v11 = *(v11 + 8 * v16);
        }

        while (v11);
        v4 = a2;
        if (v13 != v10)
        {
          v4 = a2;
          if (*(v13 + 28) <= a2)
          {
            v4 = *(v13 + 32);
          }
        }
      }

      goto LABEL_40;
    }

    v4 = a2;
    if (*(this + 44))
    {
LABEL_40:
      if (!a4)
      {
        return v4;
      }

      v17 = *(this + 44);
      if (!v17 || v4 != a2)
      {
        return v4;
      }

      v20 = *(v17 + 8);
      v19 = v17 + 8;
      v18 = v20;
      if (v20)
      {
        v21 = v19;
        do
        {
          v22 = *(v18 + 28);
          v15 = v22 >= a2;
          v23 = v22 < a2;
          if (v15)
          {
            v21 = v18;
          }

          v18 = *(v18 + 8 * v23);
        }

        while (v18);
        if (v21 != v19)
        {
          v4 = a2;
          if (*(v21 + 28) <= a2)
          {
            return *(v21 + 32);
          }

          return v4;
        }
      }
    }

    return a2;
  }

  v6 = *(a3 + 3);
  if (v6 > 9)
  {
    if (v6 <= 11)
    {
      if (v6 == 10)
      {
        v8 = 120250;
        v7 = 120224;
      }

      else
      {
        v8 = 120250;
        v7 = 120276;
      }
    }

    else
    {
      switch(v6)
      {
        case 12:
          v7 = 120328;
          v8 = 120354;
          break;
        case 13:
          v7 = 120380;
          v8 = 120406;
          break;
        case 14:
          v7 = 120432;
          v8 = 120458;
          break;
        default:
          return a2;
      }
    }
  }

  else if (v6 <= 6)
  {
    if (v6 == 5)
    {
      v7 = 120120;
      v8 = 120146;
    }

    else
    {
      if (v6 != 6)
      {
        return a2;
      }

      v7 = 120172;
      v8 = 120198;
    }
  }

  else if (v6 == 7)
  {
    v7 = 119964;
    v8 = 119990;
  }

  else if (v6 == 8)
  {
    v7 = 120016;
    v8 = 120042;
  }

  else
  {
    v7 = 120068;
    v8 = 120094;
  }

  if ((a2 - 65) >= 0x1A)
  {
    v25 = -97;
  }

  else
  {
    v8 = v7;
    v25 = -65;
  }

  return EQKit::Font::STIXCollection::fixOutOfSequenceUnicodeChar(this, (v25 + a2 + v8));
}

const __CFCharacterSet *EQKit::Font::STIXCollection::lookupFontForCh(const __CFCharacterSet **this, UTF32Char a2, uint64_t a3, const EQKit::Script::Info *a4, const FontInfo *a5)
{
  result = EQKit::Font::STIXCollection::fontInfoIntegralForCharacterWithScript(this, a2, a4);
  if (result)
  {
    return result;
  }

  result = EQKit::Font::STIXCollection::fontInfoForLargeOpWithScript(this, a2, a4);
  if (result)
  {
    return result;
  }

  result = EQKit::Font::STIXCollection::fontInfoForSpecialVariantWithScript(this, a2, a3, a4);
  if (!a5 || result)
  {
    if (result)
    {
      return result;
    }
  }

  else
  {
    v11 = a5[1];
    if (v11)
    {
      IsLongCharacterMember = CFCharacterSetIsLongCharacterMember(v11, a2);
      result = a5;
      if (IsLongCharacterMember)
      {
        return result;
      }
    }
  }

  result = EQKit::Font::STIXCollection::fontInfoGenericForCharacterWithScript(this, a2, a4);
  if (result)
  {
    return result;
  }

  v13 = this[22];
  if (!v13)
  {
    goto LABEL_15;
  }

  result = *(v13 + 1);
  if (result)
  {
    if (CFCharacterSetIsLongCharacterMember(result, a2))
    {
      result = this[22];
      goto LABEL_16;
    }

LABEL_15:
    result = 0;
  }

LABEL_16:
  if ((a2 - 57344) >> 11 <= 2 && !result)
  {

    return EQKit::Font::STIXCollection::fontInfoNonUnicodeForCharacterWithScript(this, a2, a4);
  }

  return result;
}

const __CFCharacterSet *EQKit::Font::STIXCollection::fontNameForCharacterWithScript(EQKit::Font::STIXCollection *this, uint64_t a2, const EQKit::Script::Info *a3)
{
  v4 = a2;
  v6 = EQKit::Font::STIXCollection::lookupChar(this, a2, a3, 0);
  result = EQKit::Font::STIXCollection::lookupFontForCh(this, v6, 0, a3, 0);
  if (result)
  {
    return (result + 16);
  }

  if (v6 == v4)
  {
    return 0;
  }

  result = EQKit::Font::STIXCollection::lookupFontForCh(this, v4, 0, a3, 0);
  if (result)
  {
    return (result + 16);
  }

  return result;
}

BOOL EQKit::Font::STIXCollection::characterNeedsSpecialSpacing(EQKit::Font::STIXCollection *this, int a2, const EQKit::Script::Info *a3, const FontInfo *a4, double *a5, double *a6)
{
  if (a2 == 8242)
  {
    *a5 = *(a3 + 2) * 0.0;
    *a6 = *(a3 + 2) * -0.111111111;
  }

  return a2 == 8242;
}

uint64_t EQKit::Font::STIXCollection::newAttributedStringWithScript(EQKit::Font::STIXCollection *this, NSString *a2, const EQKit::Script::Info *a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = [(NSString *)a2 length];
  v5 = v4;
  v6 = 4 * v4;
  if (v4 >= 0x40)
  {
    v7 = malloc_type_malloc(4 * v4, 0x100004052888210uLL);
    if (!v7)
    {
      return 0;
    }
  }

  else
  {
    v7 = v39;
  }

  v38 = 0;
  if ([(NSString *)a2 getBytes:v7 maxLength:v6 usedLength:&v38 encoding:2617245952 options:0 range:0 remainingRange:v5, 0])
  {
    v37 = 0;
    v8 = *(a3 + 3) - 2;
    if (v8 > 2)
    {
      v9 = 8;
    }

    else
    {
      v9 = qword_26CA63A98[v8];
    }

    v11 = v38 >> 2;
    v31 = v38;
    if (v38 < 4)
    {
      v12 = 0;
      v33 = 0;
      v13 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_11:
      if (v13 || v31 < 4 || !v12 || (v33 & 1) != 0)
      {
        v10 = 0;
        if (v13 == 0x7FFFFFFFFFFFFFFFLL || v11 <= v13 || !v12)
        {
          goto LABEL_91;
        }

        v45.location = v13;
        v45.length = v11 - v13;
        _updateAttributedString(&v37, v7, v45, v12, *(a3 + 2));
      }

      else if (*v12)
      {
        CopyWithAttributes = CTFontCreateCopyWithAttributes(*v12, *(a3 + 2), 0, 0);
        if (CopyWithAttributes)
        {
          v15 = objc_alloc(MEMORY[0x277CBEAC0]);
          v16 = [v15 initWithObjectsAndKeys:{CopyWithAttributes, *MEMORY[0x277CC4838], *MEMORY[0x277CBED28], *MEMORY[0x277CC49C8], 0}];
          v10 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:a2 attributes:v16];
          CFRelease(CopyWithAttributes);

          goto LABEL_91;
        }
      }

      v10 = 0;
LABEL_91:
      v29 = v37;
      if (!v10 && v37)
      {
        v10 = [(NSMutableAttributedString *)v37 copy];
      }

      goto LABEL_95;
    }

    v33 = 0;
    v17 = 0;
    v18 = 0;
    v35 = *(this + v9);
    v19 = 0x7FFFFFFFFFFFFFFFLL;
    v34 = v38 >> 2;
    while (1)
    {
      v20 = v7[v18];
      v21 = v18 + 1;
      v22 = v18 + 1 >= v11 ? 0 : EQKit::Unicode::variationSelector(v7[v21]);
      v23 = EQKit::Font::STIXCollection::lookupChar(this, v20, a3, 0);
      v24 = EQKit::Font::STIXCollection::lookupFontForCh(this, v23, v22, a3, v35);
      v12 = v24;
      if (!v24 || v20 == v23)
      {
        if (!v24)
        {
          v12 = EQKit::Font::STIXCollection::lookupFontForCh(this, v20, 0, a3, v35);
          if (!v12)
          {
            if (v20 > 8197)
            {
              if (v20 <= 8201)
              {
                if (v20 != 8198 && v20 != 8201)
                {
                  goto LABEL_80;
                }

                v26 = 0.166666657;
                goto LABEL_75;
              }

              if (v20 == 8202)
              {
                v26 = 0.0833333284;
                goto LABEL_75;
              }

              if (v20 == 8287)
              {
                v26 = 0.222222224;
                goto LABEL_75;
              }

LABEL_80:
              if (*(a3 + 4))
              {
                operator new();
              }

              if (!v18)
              {
                goto LABEL_83;
              }
            }

            else
            {
              if (v20 > 8195)
              {
                if (v20 == 8196)
                {
                  v26 = 0.333333343;
                }

                else
                {
                  v26 = 0.25;
                }
              }

              else
              {
                v26 = 1.0;
                if (v20 != 0x2000 && v20 != 8194)
                {
                  goto LABEL_80;
                }
              }

LABEL_75:
              if (!v37)
              {
                v37 = objc_alloc_init(MEMORY[0x277CCAB48]);
              }

              [EQKitAdjustableSpace appendSpaceToAttributedString:0.0 ascent:0.0 descent:v26 * *(a3 + 2) width:?];
              if (!v18)
              {
LABEL_83:
                v12 = 0;
                if (!v22)
                {
                  v21 = v18;
                }

                goto LABEL_59;
              }
            }

            if (v19 == 0x7FFFFFFFFFFFFFFFLL)
            {
              goto LABEL_83;
            }

            v12 = 0;
            v28 = v18 - v19;
LABEL_50:
            v13 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_53:
            if (v19 != 0x7FFFFFFFFFFFFFFFLL && v17)
            {
              v43.location = v19;
              v43.length = v28;
              _updateAttributedString(&v37, v7, v43, v17, *(a3 + 2));
            }

            if (!v22)
            {
LABEL_61:
              v21 = v18;
              goto LABEL_62;
            }

            goto LABEL_57;
          }
        }
      }

      else
      {
        v7[v18] = v23;
        v33 = 1;
      }

      if (v23 == 8242)
      {
        break;
      }

      if (v19 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v13 = v18;
        if (!v22)
        {
          goto LABEL_61;
        }
      }

      else
      {
        if (v17 != v12)
        {
          v28 = v18 - v19;
          v13 = v18;
          goto LABEL_53;
        }

        v13 = v19;
        v12 = v17;
        if (!v22)
        {
          goto LABEL_61;
        }
      }

LABEL_57:
      if (v13 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v44.length = v21 - v13;
        v44.location = v13;
        _updateAttributedString(&v37, v7, v44, v12, *(a3 + 2));
        v12 = 0;
      }

LABEL_59:
      v13 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_62:
      v18 = v21 + 1;
      v19 = v13;
      v17 = v12;
      v11 = v34;
      if (v21 + 1 >= v34)
      {
        goto LABEL_11;
      }
    }

    v27 = *(a3 + 2);
    if (v19 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = 0;
    }

    else
    {
      v28 = v18 - v19;
      if (!v17)
      {
LABEL_43:
        if (!v37)
        {
          v37 = objc_alloc_init(MEMORY[0x277CCAB48]);
        }

        if (v27 * 0.0 != 0.0)
        {
          [EQKitAdjustableSpace appendSpaceToAttributedString:0.0 ascent:0.0 descent:v27 * 0.0 width:?];
        }

        v42.location = v18;
        v42.length = 1;
        _updateAttributedString(&v37, v7, v42, v12, *(a3 + 2));
        if (v27 * -0.111111111 != 0.0)
        {
          [EQKitAdjustableSpace appendSpaceToAttributedString:v37 ascent:0.0 descent:0.0 width:v27 * -0.111111111];
        }

        v12 = 0;
        goto LABEL_50;
      }

      v41.location = v19;
      v41.length = v18 - v19;
      _updateAttributedString(&v37, v7, v41, v17, *(a3 + 2));
    }

    v28 = 0;
    v19 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_43;
  }

  v10 = 0;
LABEL_95:
  if (v7 != v39)
  {
    free(v7);
  }

  return v10;
}

void _updateAttributedString(id *a1, const unsigned int *a2, _NSRange a3, CTFontRef *a4, CGFloat a5)
{
  if (a3.length)
  {
    length = a3.length;
    location = a3.location;
    if (!*a1)
    {
      *a1 = objc_alloc_init(MEMORY[0x277CCAB48]);
    }

    if (*a4)
    {
      CopyWithAttributes = CTFontCreateCopyWithAttributes(*a4, a5, 0, 0);
      if (CopyWithAttributes)
      {
        v12 = CopyWithAttributes;
        v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:&a2[location] length:4 * length encoding:2617245952];
        v14 = objc_alloc(MEMORY[0x277CBEAC0]);
        v15 = [v14 initWithObjectsAndKeys:{v12, *MEMORY[0x277CC4838], *MEMORY[0x277CBED28], *MEMORY[0x277CC49C8], 0}];
        v16 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v13 attributes:v15];
        [*a1 appendAttributedString:v16];

        CFRelease(v12);
      }
    }
  }
}

CTFontRef EQKit::Font::STIXCollection::newFontForStretchedCharacterWithScript(EQKit::Font::STIXCollection *a1, unsigned int *a2, int a3, EQKit::Script::Info *a4, double a5)
{
  v10 = (*(a4 + 3) - 2) & 0xFFFFFFFD;
  v11 = a1 + 168;
  if (v10)
  {
    v12 = a1 + 168;
  }

  else
  {
    v12 = a1 + 224;
  }

  v13 = EQKit::Font::STIXCollection::lookupChar(a1, *a2, a4, 1);
  v14 = v13;
  *a2 = v13;
  if (a3 == 1)
  {
    v21 = *(a1 + 39);
    if (!v21)
    {
LABEL_21:
      v24 = *(a1 + 48);
      EQKit::Font::STIXCollection::stemStretchKey(a1, v13, a4, a3, v27);
      v25 = EQKitCache<EQKit::StemStretch::Key,EQKitTypes::Axis::Enum,EQKitTypes::Axis::Enum>::lookup(v24, v27) != a3;
      EQKit::StemStretch::Key::~Key(v27);
      v14 = *a2;
      goto LABEL_22;
    }

    v16 = (a1 + 312);
    v17 = (a1 + 312);
    do
    {
      v22 = *(v21 + 32);
      v19 = v22 >= v13;
      v23 = v22 < v13;
      if (v19)
      {
        v17 = v21;
      }

      v21 = *(v21 + 8 * v23);
    }

    while (v21);
  }

  else
  {
    if (a3 != 2)
    {
      goto LABEL_21;
    }

    v15 = *(a1 + 36);
    if (!v15)
    {
      goto LABEL_21;
    }

    v16 = (a1 + 288);
    v17 = (a1 + 288);
    do
    {
      v18 = *(v15 + 32);
      v19 = v18 >= v13;
      v20 = v18 < v13;
      if (v19)
      {
        v17 = v15;
      }

      v15 = *(v15 + 8 * v20);
    }

    while (v15);
  }

  if (v17 == v16 || v13 < *(v17 + 8))
  {
    goto LABEL_21;
  }

  v25 = 0;
LABEL_22:
  result = EQKit::Font::STIXCollection::SizeVariant::newFontForCharacterWithScript(v12, v14, a3, a4, v25, a5);
  if (!result && !v10)
  {
    return EQKit::Font::STIXCollection::SizeVariant::newFontForCharacterWithScript(v11, *a2, a3, a4, v25, a5);
  }

  return result;
}

uint64_t EQKitCache<EQKit::StemStretch::Key,EQKitTypes::Axis::Enum,EQKitTypes::Axis::Enum>::lookup(uint64_t **a1, uint64_t a2)
{
  pthread_rwlock_rdlock((a1 + 9));
  v4 = std::__hash_table<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::__unordered_map_hasher<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::hash<EQKit::StemStretch::Key>,std::equal_to<EQKit::StemStretch::Key>,true>,std::__unordered_map_equal<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::equal_to<EQKit::StemStretch::Key>,std::hash<EQKit::StemStretch::Key>,true>,std::allocator<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>>>::find<EQKit::StemStretch::Key>(a1 + 1, a2);
  if (v4)
  {
    goto LABEL_2;
  }

  pthread_rwlock_unlock((a1 + 9));
  v8 = 0;
  v9 = 0;
  v5 = 0;
  if (!(a1[34][2])())
  {
    return v5;
  }

  pthread_rwlock_wrlock((a1 + 9));
  v4 = std::__hash_table<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::__unordered_map_hasher<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::hash<EQKit::StemStretch::Key>,std::equal_to<EQKit::StemStretch::Key>,true>,std::__unordered_map_equal<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::equal_to<EQKit::StemStretch::Key>,std::hash<EQKit::StemStretch::Key>,true>,std::allocator<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>>>::find<EQKit::StemStretch::Key>(a1 + 1, a2);
  if (v4)
  {
LABEL_2:
    v4[7] = **a1;
    v5 = *(v4 + 12);
  }

  else
  {
    v9 = **a1;
    v10 = a2;
    v7 = std::__hash_table<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>,std::__unordered_map_hasher<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>,std::hash<EQKit::StemStretch::Key>,std::equal_to<EQKit::StemStretch::Key>,true>,std::__unordered_map_equal<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>,std::equal_to<EQKit::StemStretch::Key>,std::hash<EQKit::StemStretch::Key>,true>,std::allocator<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>>>::__emplace_unique_key_args<EQKit::StemStretch::Key,std::piecewise_construct_t const&,std::tuple<EQKit::StemStretch::Key const&>,std::tuple<>>(a1 + 1, a2);
    v5 = v8;
    *(v7 + 12) = v8;
    v7[7] = v9;
    if (a1[4] > a1[7])
    {
      *(a1 + 48) = 1;
    }
  }

  pthread_rwlock_unlock((a1 + 9));
  return v5;
}

void EQKit::Font::STIXCollection::stemStretchKey(const __CFCharacterSet **a1@<X0>, const __CTFont *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v10 = (a1 + 21);
  v11 = (*(a3 + 12) - 2) & 0xFFFFFFFD;
  if (v11)
  {
    v12 = (a1 + 21);
  }

  else
  {
    v12 = (a1 + 28);
  }

  v13 = EQKit::Font::STIXCollection::SizeVariant::fontInfoForCharacterWithScript(v12, a2, a4, a3, 1, 1.79769313e308);
  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v11 == 0;
  }

  if (v14)
  {
    v13 = EQKit::Font::STIXCollection::SizeVariant::fontInfoForCharacterWithScript(v10, a2, a4, a3, 1, 1.79769313e308);
  }

  if (v13)
  {
    EQKit::StemStretch::Key::Key(a5);
  }

  else
  {
    v13 = EQKit::Font::STIXCollection::lookupFontForCh(a1, a2, 0, a3, 0);
    EQKit::StemStretch::Key::Key(a5);
    if (!v13)
    {
      return;
    }
  }

  if (*v13)
  {
    CopyWithAttributes = CTFontCreateCopyWithAttributes(*v13, *(a3 + 16), 0, 0);
    if (CopyWithAttributes)
    {
      v16 = EQKit::Font::STIXCollection::ruleThicknessWithScript(a1, a3);
      EQKit::StemStretch::Key::keyForFontAndCharacter(CopyWithAttributes, a2, v16, v17);
      EQKit::StemStretch::Key::operator=(a5, v17);
      EQKit::StemStretch::Key::~Key(v17);
      CFRelease(CopyWithAttributes);
    }
  }
}

void sub_26C732320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  EQKit::StemStretch::Key::~Key(&a9);
  EQKit::StemStretch::Key::~Key(v9);
  _Unwind_Resume(a1);
}

CTFontRef EQKit::Font::STIXCollection::SizeVariant::newFontForCharacterWithScript(uint64_t a1, unsigned int a2, int a3, uint64_t a4, int a5, double a6)
{
  v7 = EQKit::Font::STIXCollection::SizeVariant::fontInfoForCharacterWithScript(a1, a2, a3, a4, a5, a6);
  if (!v7)
  {
    return 0;
  }

  v8 = *v7;
  if (!v8)
  {
    return 0;
  }

  v9 = *(a4 + 16);

  return CTFontCreateCopyWithAttributes(v8, v9, 0, 0);
}

uint64_t EQKit::Font::STIXCollection::compositeStretchForCharacter(uint64_t a1, unsigned int a2, int a3)
{
  if (a3 == 1)
  {
    v9 = *(a1 + 312);
    if (!v9)
    {
      return 0;
    }

    v4 = a1 + 312;
    v5 = a1 + 312;
    do
    {
      v10 = *(v9 + 32);
      v7 = v10 >= a2;
      v11 = v10 < a2;
      if (v7)
      {
        v5 = v9;
      }

      v9 = *(v9 + 8 * v11);
    }

    while (v9);
  }

  else
  {
    if (a3 != 2)
    {
      return 0;
    }

    v3 = *(a1 + 288);
    if (!v3)
    {
      return 0;
    }

    v4 = a1 + 288;
    v5 = a1 + 288;
    do
    {
      v6 = *(v3 + 32);
      v7 = v6 >= a2;
      v8 = v6 < a2;
      if (v7)
      {
        v5 = v3;
      }

      v3 = *(v3 + 8 * v8);
    }

    while (v3);
  }

  if (v5 == v4)
  {
    return 0;
  }

  v12 = *(v5 + 32);
  v13 = v5 + 40;
  if (v12 <= a2)
  {
    return v13;
  }

  else
  {
    return 0;
  }
}

double EQKit::Font::STIXCollection::accentUnderHAdjustment(EQKit::Font::STIXCollection *this, uint64_t a2, const EQKit::Script::Info *a3)
{
  v6 = 0.0;
  v3 = EQKit::Font::STIXCollection::accentHAdjustment(this, a2, a3, &v6, &v5);
  result = v6;
  if (!v3)
  {
    return 0.0;
  }

  return result;
}

uint64_t EQKit::Font::STIXCollection::accentHAdjustment(EQKit::Font::STIXCollection *this, uint64_t a2, const EQKit::Script::Info *a3, double *a4, double *a5)
{
  v10 = *(a3 + 4);
  v11 = *(a3 + 10);
  v12 = *(a3 + 3);
  v13 = *(a3 + 6);
  v14 = *(a3 + 4);
  v36 = *a3;
  v37 = v10;
  v38 = v11;
  v39 = v12;
  v40 = 0x4028000000000000;
  v41 = v13;
  v42 = v14;
  if (v14)
  {
    CFRetain(v14);
  }

  v15 = EQKit::Font::STIXCollection::lookupFontForCh(this, a2, 0, &v36, 0);
  if (!v15 || (v16 = *v15) == 0 || (CopyWithAttributes = CTFontCreateCopyWithAttributes(v16, 12.0, 0, 0)) == 0)
  {
    v22 = 0;
    if (!v14)
    {
      return v22;
    }

LABEL_9:
    CFRelease(v14);
    return v22;
  }

  EQKit::Font::SlantKey::SlantKey(cf, CopyWithAttributes, a2);
  v18 = EQKitCache<EQKit::Font::SlantKey,EQKit::Font::SlantInfo,EQKit::Font::SlantInfo>::lookup(*(this + 50), cf);
  v20 = v19;
  if (cf[0])
  {
    v21 = [cf[0] UTF8String];
  }

  else
  {
    v21 = "";
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v21);
  v24 = (*(*this + 24))(this, 2, __p, a2);
  v25 = v24;
  if (v34 < 0)
  {
    operator delete(__p[0]);
    if (!v25)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v24)
  {
LABEL_16:
    Size = CTFontGetSize(CopyWithAttributes);
    v18 = EQKitLength::resolveToAbsoluteWithSize(v25, Size);
  }

LABEL_17:
  *a4 = v18;
  *a4 = v18 * (*(a3 + 2) / 12.0);
  if (cf[0])
  {
    v27 = [cf[0] UTF8String];
  }

  else
  {
    v27 = "";
  }

  std::string::basic_string[abi:nn200100]<0>(v31, v27);
  v28 = (*(*this + 24))(this, 1, v31, a2);
  v29 = v28;
  if (v32 < 0)
  {
    operator delete(v31[0]);
    if (!v29)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (v28)
  {
LABEL_24:
    v30 = CTFontGetSize(CopyWithAttributes);
    v20 = EQKitLength::resolveToAbsoluteWithSize(v29, v30);
  }

LABEL_25:
  *a5 = v20;
  *a5 = v20 * (*(a3 + 2) / 12.0);
  CFRelease(CopyWithAttributes);
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  v22 = 1;
  if (v14)
  {
    goto LABEL_9;
  }

  return v22;
}

void sub_26C732718(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, CFTypeRef cf)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  _Unwind_Resume(exception_object);
}

double virtual thunk toEQKit::Font::STIXCollection::accentUnderHAdjustment(EQKit::Font::STIXCollection *this, uint64_t a2, const EQKit::Script::Info *a3)
{
  v3 = *(*this - 200);
  v7 = 0.0;
  v4 = EQKit::Font::STIXCollection::accentHAdjustment((this + v3), a2, a3, &v7, &v6);
  result = v7;
  if (!v4)
  {
    return 0.0;
  }

  return result;
}

double EQKit::Font::STIXCollection::accentOverHAdjustment(EQKit::Font::STIXCollection *this, uint64_t a2, const EQKit::Script::Info *a3)
{
  v5 = 0.0;
  v3 = EQKit::Font::STIXCollection::accentHAdjustment(this, a2, a3, &v6, &v5);
  result = v5;
  if (!v3)
  {
    return 0.0;
  }

  return result;
}

double virtual thunk toEQKit::Font::STIXCollection::accentOverHAdjustment(EQKit::Font::STIXCollection *this, uint64_t a2, const EQKit::Script::Info *a3)
{
  v3 = *(*this - 192);
  v6 = 0.0;
  v4 = EQKit::Font::STIXCollection::accentHAdjustment((this + v3), a2, a3, &v7, &v6);
  result = v6;
  if (!v4)
  {
    return 0.0;
  }

  return result;
}

double EQKitCache<EQKit::Font::SlantKey,EQKit::Font::SlantInfo,EQKit::Font::SlantInfo>::lookup(uint64_t **a1, uint64_t a2)
{
  pthread_rwlock_rdlock((a1 + 9));
  v4 = std::__hash_table<std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>,std::__unordered_map_hasher<EQKit::Font::SlantKey,std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>,std::hash<EQKit::Font::SlantKey>,std::equal_to<EQKit::Font::SlantKey>,true>,std::__unordered_map_equal<EQKit::Font::SlantKey,std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>,std::equal_to<EQKit::Font::SlantKey>,std::hash<EQKit::Font::SlantKey>,true>,std::allocator<std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>>>::find<EQKit::Font::SlantKey>(a1 + 1, a2);
  if (v4)
  {
    *(v4 + 7) = **a1;
    v5 = v4[5];
LABEL_10:
    pthread_rwlock_unlock((a1 + 9));
    return v5;
  }

  pthread_rwlock_unlock((a1 + 9));
  v11 = 0;
  v10 = 0uLL;
  v5 = 0.0;
  if ((a1[34][2])())
  {
    pthread_rwlock_wrlock((a1 + 9));
    v6 = std::__hash_table<std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>,std::__unordered_map_hasher<EQKit::Font::SlantKey,std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>,std::hash<EQKit::Font::SlantKey>,std::equal_to<EQKit::Font::SlantKey>,true>,std::__unordered_map_equal<EQKit::Font::SlantKey,std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>,std::equal_to<EQKit::Font::SlantKey>,std::hash<EQKit::Font::SlantKey>,true>,std::allocator<std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>>>::find<EQKit::Font::SlantKey>(a1 + 1, a2);
    if (v6)
    {
      v6[7] = **a1;
      v7 = (v6 + 5);
    }

    else
    {
      v11 = **a1;
      v12 = a2;
      v8 = std::__hash_table<std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>,std::__unordered_map_hasher<EQKit::Font::SlantKey,std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>,std::hash<EQKit::Font::SlantKey>,std::equal_to<EQKit::Font::SlantKey>,true>,std::__unordered_map_equal<EQKit::Font::SlantKey,std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>,std::equal_to<EQKit::Font::SlantKey>,std::hash<EQKit::Font::SlantKey>,true>,std::allocator<std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>>>::__emplace_unique_key_args<EQKit::Font::SlantKey,std::piecewise_construct_t const&,std::tuple<EQKit::Font::SlantKey const&>,std::tuple<>>(a1 + 1, a2);
      *(v8 + 5) = v10;
      v8[7] = v11;
      if (a1[4] > a1[7])
      {
        *(a1 + 48) = 1;
      }

      v7 = &v10;
    }

    v5 = *v7;
    goto LABEL_10;
  }

  return v5;
}

double _resolveLength(const EQKitLength *a1, CTFontRef font, double a3)
{
  if (!a1 || !font)
  {
    return 0.0;
  }

  Size = CTFontGetSize(font);

  return EQKitLength::resolveToAbsoluteWithSize(a1, Size);
}

void EQKit::Font::SlantKey::~SlantKey(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t EQKit::Font::STIXCollection::isCharacterStretchableInAxis(uint64_t ***this, uint64_t a2, int a3, uint64_t *a4)
{
  v7 = *(a4 + 4);
  v8 = *(a4 + 10);
  v9 = *(a4 + 3);
  v10 = *(a4 + 6);
  v11 = a4[4];
  v32 = *a4;
  v33 = v7;
  v34 = v8;
  v35 = v9;
  v36 = 0x4028000000000000;
  v37 = v10;
  v38 = v11;
  if (v11)
  {
    CFRetain(v11);
  }

  v12 = EQKit::Font::STIXCollection::lookupChar(this, a2, &v32, 1);
  v13 = v12;
  if (a3 == 1)
  {
    v20 = this[39];
    if (v20)
    {
      v15 = (this + 39);
      v16 = (this + 39);
      do
      {
        v21 = *(v20 + 8);
        v18 = v21 >= v12;
        v22 = v21 < v12;
        if (v18)
        {
          v16 = v20;
        }

        v20 = v20[v22];
      }

      while (v20);
LABEL_18:
      if (v16 != v15 && v12 >= *(v16 + 8))
      {
        goto LABEL_21;
      }
    }
  }

  else if (a3 == 2)
  {
    v14 = this[36];
    if (v14)
    {
      v15 = (this + 36);
      v16 = (this + 36);
      do
      {
        v17 = *(v14 + 8);
        v18 = v17 >= v12;
        v19 = v17 < v12;
        if (v18)
        {
          v16 = v14;
        }

        v14 = v14[v19];
      }

      while (v14);
      goto LABEL_18;
    }
  }

  v23 = this[48];
  EQKit::Font::STIXCollection::stemStretchKey(this, v12, &v32, a3, v29);
  LODWORD(v23) = EQKitCache<EQKit::StemStretch::Key,EQKitTypes::Axis::Enum,EQKitTypes::Axis::Enum>::lookup(v23, v29);
  EQKit::StemStretch::Key::~Key(v29);
  if (v23 != a3)
  {
    v27[0] = v13;
    EQKitCache<unsigned int,EQKit::Font::STIXCollection::StretchInfo,EQKit::Font::STIXCollection::StretchInfo>::lookup(this[27], v27, v29);
    if (v31 - 1 > 0xFD)
    {
      v39 = v13;
      EQKitCache<unsigned int,EQKit::Font::STIXCollection::StretchInfo,EQKit::Font::STIXCollection::StretchInfo>::lookup(this[34], &v39, v27);
      v26 = v28 - 1 < 0xFE && v27[12] == a3;
    }

    else
    {
      v26 = v30 == a3;
    }

    v24 = v26;
    if (v11)
    {
      goto LABEL_22;
    }

    return v24;
  }

LABEL_21:
  v24 = 1;
  if (v11)
  {
LABEL_22:
    CFRelease(v11);
  }

  return v24;
}

void sub_26C732BE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (v16)
  {
    CFRelease(v16);
  }

  _Unwind_Resume(exception_object);
}

BOOL EQKit::Font::STIXCollection::isCharacterNaturalSizeWithScript(EQKit::Font::STIXCollection *this, uint64_t a2, const EQKit::Script::Info *a3)
{
  v6 = EQKit::Font::STIXCollection::fontInfoGenericForCharacterWithScript(this, a2, a3);
  v7 = EQKit::Font::STIXCollection::lookupChar(this, a2, a3, 0);
  v8 = EQKit::Font::STIXCollection::lookupFontForCh(this, v7, 0, a3, v6);
  if (!v8)
  {
    if (v7 == a2)
    {
      v8 = 0;
    }

    else
    {
      v8 = EQKit::Font::STIXCollection::lookupFontForCh(this, a2, 0, a3, 0);
    }
  }

  if (v8 == *(this + 14) || v8 == *(this + 13) || v8 == *(this + 18) || v8 == *(this + 17) || v8 == *(this + 20) || v8 == *(this + 19))
  {
    v6 = v8;
  }

  return v6 == v8;
}

BOOL EQKit::Font::STIXCollection::isCharacterScriptingOffsetsNaturalWithScript(EQKit::Font::STIXCollection *this, uint64_t a2, const EQKit::Script::Info *a3)
{
  v6 = EQKit::Font::STIXCollection::fontInfoGenericForCharacterWithScript(this, a2, a3);
  v7 = EQKit::Font::STIXCollection::lookupChar(this, a2, a3, 0);
  v8 = EQKit::Font::STIXCollection::lookupFontForCh(this, v7, 0, a3, v6);
  if (!v8)
  {
    if (v7 == a2)
    {
      v8 = 0;
    }

    else
    {
      v8 = EQKit::Font::STIXCollection::lookupFontForCh(this, a2, 0, a3, 0);
    }
  }

  if (v6 != v8)
  {
    return 0;
  }

  v10 = *(this + 46);
  if (!v10)
  {
    return 1;
  }

  v11 = *v10;
  v12 = *(v10 + 8);
  if (v12 == v11)
  {
    return 1;
  }

  v13 = v12 - v11;
  do
  {
    v14 = v13 >> 1;
    v15 = &v11[v13 >> 1];
    v17 = *v15;
    v16 = v15 + 1;
    v13 += ~(v13 >> 1);
    if (v17 < a2)
    {
      v11 = v16;
    }

    else
    {
      v13 = v14;
    }
  }

  while (v13);
  return v11 == v12 || *v11 != a2;
}

BOOL EQKit::Font::STIXCollection::isCharacterSymmetricWithScript(EQKit::Font::STIXCollection *this, uint64_t a2, const EQKit::Script::Info *a3)
{
  v6 = EQKit::Font::STIXCollection::fontInfoGenericForCharacterWithScript(this, a2, a3);
  v7 = EQKit::Font::STIXCollection::lookupChar(this, a2, a3, 0);
  v8 = EQKit::Font::STIXCollection::lookupFontForCh(this, v7, 0, a3, v6);
  if (!v8)
  {
    if (v7 == a2)
    {
      v8 = 0;
    }

    else
    {
      v8 = EQKit::Font::STIXCollection::lookupFontForCh(this, a2, 0, a3, 0);
    }
  }

  if (v6 != v8)
  {
    return 0;
  }

  v10 = *(this + 46);
  if (!v10)
  {
    return 1;
  }

  v11 = *v10;
  v12 = *(v10 + 8);
  if (v12 == v11)
  {
    return 1;
  }

  v13 = v12 - v11;
  do
  {
    v14 = v13 >> 1;
    v15 = &v11[v13 >> 1];
    v17 = *v15;
    v16 = v15 + 1;
    v13 += ~(v13 >> 1);
    if (v17 < a2)
    {
      v11 = v16;
    }

    else
    {
      v13 = v14;
    }
  }

  while (v13);
  return v11 == v12 || *v11 != a2;
}

CGFloat EQKit::Font::STIXCollection::naturalBoundsOfCharacterWithScript(EQKit::Font::STIXCollection *this, uint64_t a2, CGFloat *a3)
{
  v4 = a2;
  v6 = EQKit::Font::STIXCollection::lookupChar(this, a2, a3, 0);
  v7 = EQKit::Font::STIXCollection::lookupFontForCh(this, v6, 0, a3, 0);
  v8 = *(MEMORY[0x277CBF3A0] + 16);
  boundingRects.origin = *MEMORY[0x277CBF3A0];
  boundingRects.size = v8;
  if (v7)
  {
    v9 = *v7;
    if (v9)
    {
      CopyWithAttributes = CTFontCreateCopyWithAttributes(v9, a3[2], 0, 0);
      v17 = -1;
      if (CopyWithAttributes)
      {
        v11 = CopyWithAttributes;
        if ((v4 - 0x10000) >> 20)
        {
          v13 = 1;
          LOWORD(v12) = v4;
        }

        else
        {
          v12 = ((v4 - 0x10000) >> 10) | 0xFFFFD800;
          characters[1] = v4 & 0x3FF | 0xDC00;
          v13 = 2;
        }

        characters[0] = v12;
        if (CTFontGetGlyphsForCharacters(CopyWithAttributes, characters, glyphs, v13))
        {
          v17 = glyphs[0];
          if (glyphs[0] != 0xFFFF)
          {
            CTFontGetBoundingRectsForGlyphs(v11, kCTFontOrientationHorizontal, &v17, &boundingRects, 1);
            boundingRects.origin.y = -CGRectGetMaxY(boundingRects);
          }
        }

        CFRelease(v11);
      }
    }
  }

  return boundingRects.origin.x;
}

double EQKit::Font::STIXCollection::ruleThicknessWithScript(const __CFCharacterSet **this, CGFloat *a2)
{
  v3 = EQKit::Font::STIXCollection::lookupFontForCh(this, 0x2212u, 0, a2, 0);
  v4 = 0.0;
  if (v3)
  {
    v5 = *v3;
    if (v5)
    {
      CopyWithAttributes = CTFontCreateCopyWithAttributes(v5, a2[2], 0, 0);
      if (CopyWithAttributes)
      {
        v8 = CopyWithAttributes;
        v9 = EQKitPath::newPathFromCharacterWithFont(0x2212, CopyWithAttributes, v7);
        if (v9)
        {
          v10 = v9;
          if (*(v9 + 120) == 1)
          {
            v11 = (v9 + 88);
          }

          else
          {
            v11 = EQKitPath::computePathBounds(v9);
          }

          v4 = v11[3];
          EQKitPath::~EQKitPath(v10);
          MEMORY[0x26D6A9A30]();
        }

        CFRelease(v8);
      }
    }
  }

  return v4;
}

uint64_t EQKit::Font::STIXCollection::SizeVariant::fontInfoForCharacterWithScript(uint64_t a1, unsigned int a2, int a3, uint64_t a4, int a5, double a6)
{
  v16 = a2;
  EQKitCache<unsigned int,EQKit::Font::STIXCollection::StretchInfo,EQKit::Font::STIXCollection::StretchInfo>::lookup(*(a1 + 48), &v16, v15);
  if (v15[12] != a3)
  {
    return 0;
  }

  v11 = *(a4 + 16);
  if (v11 == 0.0)
  {
    return 0;
  }

  v12 = EQKit::Font::STIXCollection::StretchInfo::sizeIndexMatchingLength(v15, a6 * 12.0 / v11, 0.0, a5);
  if (v12 > 5)
  {
    return 0;
  }

  v13 = *(a1 + 8 * v12);
  if (!v13)
  {
    return 0;
  }

  if (*v13)
  {
    return *(a1 + 8 * v12);
  }

  return 0;
}

uint64_t EQKit::Font::STIXCollection::lookupStemStretchConfig(EQKit::Font::STIXCollection *this, int a2, CTFontRef font)
{
  v3 = 0;
  if (font && *(this + 41))
  {
    v6 = CTFontCopyPostScriptName(font);
    if (v6)
    {
      v7 = v6;
      std::string::basic_string[abi:nn200100]<0>(&v13, -[__CFString UTF8String](v6, "UTF8String"));
      v8 = *(this + 41);
      v11[0] = a2;
      v11[1] = 13;
      if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v13.__r_.__value_.__l.__data_, v13.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = v13;
      }

      v9 = std::__tree<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>,std::__map_value_compare<EQKit::Font::CharacterProperty::Map::Key,std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>,std::less<EQKit::Font::CharacterProperty::Map::Key>,true>,std::allocator<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>>>::find<EQKit::Font::CharacterProperty::Map::Key>(v8 + 48, v11);
      if (v8 + 56 == v9)
      {
        v3 = 0;
      }

      else
      {
        v3 = v9 + 64;
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      CFRelease(v7);
      if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v13.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

void sub_26C733354(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CGPath *EQKit::Font::STIXCollection::newCGPathForStretchedCharacterWithScript(EQKit::Font::STIXCollection *this, uint64_t a2, uint64_t a3, EQKit::Script::Info *a4, CGSize *a5, double a6)
{
  v12 = (*(a4 + 3) - 2) & 0xFFFFFFFD;
  v13 = this + 168;
  if (v12)
  {
    v14 = this + 168;
  }

  else
  {
    v14 = this + 224;
  }

  v36 = *MEMORY[0x277CBF3A8];
  if (a3 == 2)
  {
    v15 = *(this + 42);
    if (v15)
    {
      v16 = EQKit::Font::Metric::LengthEntry::resolveWithScriptAndRule((v15 + 10752), a4, 0.0);
    }

    else
    {
      v16 = 0.0;
    }

    a6 = v16 + a6;
  }

  v17 = EQKit::Font::STIXCollection::lookupChar(this, a2, a4, 1);
  v18 = EQKit::Font::STIXCollection::SizeVariant::fontInfoForCharacterWithScript(v14, v17, a3, a4, 1, a6);
  if (v18)
  {
    v19 = 0;
  }

  else
  {
    v19 = v12 == 0;
  }

  if (v19)
  {
    v18 = EQKit::Font::STIXCollection::SizeVariant::fontInfoForCharacterWithScript(v13, v17, a3, a4, 1, a6);
  }

  if (!v18)
  {
    v18 = EQKit::Font::STIXCollection::lookupFontForCh(this, v17, 0, a4, 0);
  }

  v20 = (*(*this + 96))(this, v17, a3);
  width_low = -1;
  v21 = 0.0;
  if (!v18)
  {
    goto LABEL_22;
  }

  if (!*v18)
  {
    LODWORD(v18) = 0;
LABEL_22:
    v23 = 0;
    goto LABEL_36;
  }

  CopyWithAttributes = CTFontCreateCopyWithAttributes(*v18, *(a4 + 2), 0, 0);
  v23 = CopyWithAttributes;
  v24 = (v17 - 0x10000) >> 20;
  if (v24)
  {
    LOWORD(v25) = v17;
  }

  else
  {
    v25 = ((v17 - 0x10000) >> 10) | 0xFFFFD800;
    WORD1(characters[0].origin.x) = v17 & 0x3FF | 0xDC00;
  }

  LOWORD(characters[0].origin.x) = v25;
  if (!CopyWithAttributes)
  {
    LODWORD(v18) = 0;
LABEL_36:
    v27 = 0.0;
    MinX = 0.0;
    if (!v20)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  if (v24)
  {
    v26 = 1;
  }

  else
  {
    v26 = 2;
  }

  if (!CTFontGetGlyphsForCharacters(CopyWithAttributes, characters, &glyphs, v26) || (width_low = LOWORD(glyphs.width), LOWORD(glyphs.width) == 0xFFFF))
  {
    LODWORD(v18) = 1;
    goto LABEL_36;
  }

  CTFontGetBoundingRectsForGlyphs(v23, kCTFontOrientationHorizontal, &width_low, characters, 1);
  CTFontGetAdvancesForGlyphs(v23, kCTFontOrientationHorizontal, &width_low, &glyphs, 1);
  v27 = 0.0;
  MinX = 0.0;
  if (a3 == 2)
  {
    MinX = CGRectGetMinX(characters[0]);
    width = glyphs.width;
    v27 = width - CGRectGetWidth(characters[0]) - MinX;
    v21 = -CGRectGetMinY(characters[0]);
  }

  LODWORD(v18) = 1;
  if (v20)
  {
LABEL_37:
    EQKitCompositeGlyph::EQKitCompositeGlyph(characters, a4, a3, v20);
    v20 = EQKitCompositeGlyph::createPathWithLength(characters, a6, &v36);
    EQKitCompositeGlyph::~EQKitCompositeGlyph(characters);
  }

LABEL_38:
  v30 = v18 ^ 1;
  if (v20)
  {
    v30 = 1;
  }

  if ((v30 & 1) == 0)
  {
    v31 = *(this + 49);
    EQKit::Font::STIXCollection::stemStretchKey(this, v17, a4, a3, characters);
    EQKitCache<EQKit::StemStretch::Key,std::shared_ptr<EQKit::StemStretch::Glyph>,std::shared_ptr<EQKit::StemStretch::Glyph const>>::lookup(v31, characters, &glyphs);
    EQKit::StemStretch::Key::~Key(characters);
    if (*&glyphs.width && **&glyphs.width == a3)
    {
      v20 = EQKit::StemStretch::Glyph::newPathWithLength(*&glyphs.width, a6, &v36);
    }

    else
    {
      v20 = 0;
    }

    if (*&glyphs.height)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*&glyphs.height);
    }
  }

  if (v20)
  {
    *a5 = v36;
    a5[1].width = MinX;
    a5[1].height = v27;
    a5[2].width = v21;
  }

  if (v18)
  {
    CFRelease(v23);
  }

  return v20;
}

void sub_26C733714(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25)
{
  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a25);
  }

  _Unwind_Resume(exception_object);
}

uint64_t EQKit::Font::STIXCollection::StretchInfo::setupForCharacterWithVariant(uint64_t result, UTF32Char theChar, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v31[11] = *MEMORY[0x277D85DE8];
  v9 = &v30;
  v10 = MEMORY[0x277CBF3A8];
  do
  {
    *v9 = *v10;
    v11 = *(a3 + 8 * v8);
    if (v11)
    {
      result = *(v11 + 8);
      if (result)
      {
        result = CFCharacterSetIsLongCharacterMember(result, theChar);
        if (result)
        {
          if (*v11)
          {
            result = EQKitPath::newPathFromCharacterWithFont(theChar, *v11, v12);
            if (result)
            {
              v13 = result;
              if (*(result + 120) == 1)
              {
                v14 = (result + 88);
              }

              else
              {
                v14 = EQKitPath::computePathBounds(result);
              }

              *v9 = *(v14 + 1);
              v7 |= 1 << v8;
              ++v6;
              EQKitPath::~EQKitPath(v13);
              result = MEMORY[0x26D6A9A30]();
            }
          }
        }
      }
    }

    ++v8;
    v9 += 16;
  }

  while (v8 != 6);
  *(v5 + 52) = 0;
  *(v5 + 48) = 0;
  if (v6 > 1)
  {
    v15 = 0;
    v16 = *v10;
    v17 = v10[1];
    v18 = v31;
    v19 = 1;
    v20 = *v10;
    v21 = v17;
    do
    {
      if ((v7 >> v15))
      {
        v16 = *(v18 - 1);
        v17 = *v18;
        if (v19)
        {
          v21 = *v18;
          v20 = *(v18 - 1);
        }

        v19 = 0;
      }

      ++v15;
      v18 += 2;
    }

    while (v15 != 6);
    v22 = v16 - v20;
    v23 = v17 - v21;
    v24 = v22 > 0.0;
    if (v22 <= 0.0 || v23 <= 0.0)
    {
      if (v23 > 0.0 && v22 <= 0.0)
      {
        v25 = 2;
      }

      else
      {
        v25 = v22 > 0.0;
      }

      if (v22 <= 0.0 && v23 <= 0.0)
      {
        return result;
      }
    }

    else
    {
      v24 = v22 > v23;
      if (v22 > v23)
      {
        v25 = 1;
      }

      else
      {
        v25 = 2;
      }
    }

    v26 = 0;
    *(v5 + 48) = v25;
    *(v5 + 52) = v7;
    v27 = &v30;
    do
    {
      v28 = v27 + 8;
      if (v24)
      {
        v28 = v27;
      }

      *(v5 + v26) = *v28;
      v26 += 8;
      v27 += 16;
    }

    while (v26 != 48);
  }

  return result;
}

uint64_t EQKitCache<unsigned int,EQKit::Font::STIXCollection::StretchInfo,EQKit::Font::STIXCollection::StretchInfo>::setThreshold(uint64_t a1, unint64_t a2, unint64_t a3)
{
  pthread_rwlock_wrlock((a1 + 72));
  if (a2 >= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = a2;
  }

  *(a1 + 56) = a2;
  *(a1 + 64) = v6;
  if (*(a1 + 32) > a2)
  {
    *(a1 + 48) = 1;
  }

  pthread_rwlock_unlock((a1 + 72));

  return EQKitCache<unsigned int,EQKit::Font::STIXCollection::StretchInfo,EQKit::Font::STIXCollection::StretchInfo>::prune(a1);
}

void EQKit::Font::STIXCollection::SizeVariant::~SizeVariant(EQKit::Font::STIXCollection::SizeVariant *this)
{
  for (i = 0; i != 48; i += 8)
  {
    v3 = *(this + i);
    if (v3)
    {
      EQKit::Font::STIXCollection::FontInfo::~FontInfo(v3);
      MEMORY[0x26D6A9A30]();
      *(this + i) = 0;
    }
  }
}

uint64_t EQKitCache<unsigned int,EQKit::Font::STIXCollection::StretchInfo,EQKit::Font::STIXCollection::StretchInfo>::prune(uint64_t **a1)
{
  pthread_rwlock_rdlock((a1 + 9));
  v2 = *(a1 + 48);
  result = pthread_rwlock_unlock((a1 + 9));
  if (v2 == 1)
  {
    pthread_rwlock_wrlock((a1 + 9));
    if (*(a1 + 48) == 1)
    {
      v4 = **a1;
      __src = 0;
      v28 = 0;
      v29 = 0;
      v5 = a1[3];
      if (v5)
      {
        v6 = 0;
        do
        {
          v7 = v4 - v5[10];
          v8 = *(v5 + 4);
          if (v6 >= v29)
          {
            v9 = __src;
            v10 = v6 - __src;
            v11 = (v6 - __src) >> 4;
            v12 = v11 + 1;
            if ((v11 + 1) >> 60)
            {
              std::string::__throw_length_error[abi:nn200100]();
            }

            v13 = v29 - __src;
            if ((v29 - __src) >> 3 > v12)
            {
              v12 = v13 >> 3;
            }

            if (v13 >= 0x7FFFFFFFFFFFFFF0)
            {
              v14 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v14 = v12;
            }

            if (v14)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<EQKitLength>>(&__src, v14);
            }

            v15 = v11;
            v16 = 16 * v11;
            *v16 = v8;
            *(v16 + 8) = v7;
            v6 = 16 * v11 + 16;
            v17 = (v16 - 16 * v15);
            memcpy(v17, v9, v10);
            v18 = __src;
            __src = v17;
            v28 = v6;
            v29 = 0;
            if (v18)
            {
              operator delete(v18);
            }
          }

          else
          {
            *v6 = v8;
            *(v6 + 8) = v7;
            v6 += 16;
          }

          v28 = v6;
          v5 = *v5;
        }

        while (v5);
        v19 = __src;
      }

      else
      {
        v6 = 0;
        v19 = 0;
      }

      v20 = 126 - 2 * __clz((v6 - v19) >> 4);
      v30 = EQKitCache<unsigned int,EQKit::Font::STIXCollection::StretchInfo,EQKit::Font::STIXCollection::StretchInfo>::compareKeyLRU;
      if (v6 == v19)
      {
        v21 = 0;
      }

      else
      {
        v21 = v20;
      }

      std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned long> const&,std::pair<unsigned int,unsigned long> const&),std::pair<unsigned int,unsigned long>*,false>(v19, v6, &v30, v21, 1);
      v22 = __src;
      v23 = (v28 - __src) >> 4;
      v24 = a1[8];
      v25 = v23 - v24;
      if (v23 > v24)
      {
        v26 = 16 * v24;
        do
        {
          if (std::__hash_table<std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>>>::find<unsigned int>(a1 + 1, (__src + v26)))
          {
            std::__hash_table<std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>>>::__erase_unique<unsigned int>(a1 + 1, (__src + v26));
          }

          v26 += 16;
          --v25;
        }

        while (v25);
        v22 = __src;
      }

      *(a1 + 48) = 0;
      if (v22)
      {
        v28 = v22;
        operator delete(v22);
      }
    }

    return pthread_rwlock_unlock((a1 + 9));
  }

  return result;
}

void sub_26C733D88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t EQKit::Font::STIXCollection::StretchInfo::sizeIndexMatchingLength(EQKit::Font::STIXCollection::StretchInfo *this, double a2, double a3, int a4)
{
  v4 = 0;
  v5 = 0.0;
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  v7 = 0x7FFFFFFFFFFFFFFFLL;
  while (1)
  {
    if (((*(this + 52) >> v4) & 1) == 0)
    {
      goto LABEL_7;
    }

    v8 = *(this + v4);
    if (v8 + a3 <= a2)
    {
      v7 = v4;
LABEL_7:
      v8 = v5;
      v9 = v6;
      goto LABEL_8;
    }

    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    v7 = v4;
    v9 = v4;
LABEL_8:
    ++v4;
    v6 = v9;
    v5 = v8;
    if (v4 == 6)
    {
      goto LABEL_12;
    }
  }

  v7 = v4;
  v9 = v4;
  if (vabdd_f64(v5, a2) >= vabdd_f64(v8, a2))
  {
    goto LABEL_8;
  }

  v9 = v6;
  v7 = v4;
LABEL_12:
  if (a4)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return v10;
  }

  else
  {
    return v9;
  }
}

uint64_t EQKitCache<unsigned int,EQKit::Font::STIXCollection::StretchInfo,EQKit::Font::STIXCollection::StretchInfo>::lookup@<X0>(uint64_t **a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 48) = 0;
  *(a3 + 52) = -1;
  pthread_rwlock_rdlock((a1 + 9));
  v6 = std::__hash_table<std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>>>::find<unsigned int>(a1 + 1, a2);
  if (!v6)
  {
    pthread_rwlock_unlock((a1 + 9));
    v19 = 0;
    v20 = -1;
    v21 = 0;
    result = (a1[34][2])();
    if (!result)
    {
      return result;
    }

    pthread_rwlock_wrlock((a1 + 9));
    v10 = std::__hash_table<std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>>>::find<unsigned int>(a1 + 1, a2);
    if (v10)
    {
      v10[10] = **a1;
      v11 = (v10 + 3);
      if (v10 + 3 == a3)
      {
        return pthread_rwlock_unlock((a1 + 9));
      }

      *(a3 + 48) = *(v10 + 18);
      v12 = v10 + 76;
    }

    else
    {
      v21 = **a1;
      v22 = a2;
      v13 = std::__hash_table<std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a1 + 1, a2);
      if (v13 + 3 != v18)
      {
        *(v13 + 18) = v19;
        *(v13 + 76) = v20;
        v15 = v18[1];
        v14 = v18[2];
        *(v13 + 3) = v18[0];
        *(v13 + 5) = v15;
        *(v13 + 7) = v14;
      }

      v13[10] = v21;
      if (a1[4] > a1[7])
      {
        *(a1 + 48) = 1;
      }

      if (v18 == a3)
      {
        return pthread_rwlock_unlock((a1 + 9));
      }

      v12 = &v20;
      *(a3 + 48) = v19;
      v11 = v18;
    }

    *(a3 + 52) = *v12;
    v16 = *v11;
    v17 = v11[2];
    *(a3 + 16) = v11[1];
    *(a3 + 32) = v17;
    *a3 = v16;
    return pthread_rwlock_unlock((a1 + 9));
  }

  v6[10] = **a1;
  if (v6 + 3 != a3)
  {
    *(a3 + 48) = *(v6 + 18);
    *(a3 + 52) = *(v6 + 76);
    v7 = *(v6 + 3);
    v8 = *(v6 + 7);
    *(a3 + 16) = *(v6 + 5);
    *(a3 + 32) = v8;
    *a3 = v7;
  }

  return pthread_rwlock_unlock((a1 + 9));
}

uint64_t EQKit::Font::STIXCollection::StretchInfo::StretchInfo(uint64_t this)
{
  *(this + 48) = 0;
  *(this + 52) = -1;
  return this;
}

{
  *(this + 48) = 0;
  *(this + 52) = -1;
  return this;
}

__n128 EQKit::Font::STIXCollection::StretchInfo::StretchInfo(EQKit::Font::STIXCollection::StretchInfo *this, const EQKit::Font::STIXCollection::StretchInfo *a2)
{
  *(this + 12) = *(a2 + 12);
  *(this + 52) = *(a2 + 52);
  result = *a2;
  v3 = *(a2 + 2);
  *(this + 1) = *(a2 + 1);
  *(this + 2) = v3;
  *this = result;
  return result;
}

{
  *(this + 12) = *(a2 + 12);
  *(this + 52) = *(a2 + 52);
  result = *a2;
  v3 = *(a2 + 2);
  *(this + 1) = *(a2 + 1);
  *(this + 2) = v3;
  *this = result;
  return result;
}

__n128 EQKit::Font::STIXCollection::StretchInfo::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 52) = *(a2 + 52);
    result = *a2;
    v3 = *(a2 + 32);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 32) = v3;
    *a1 = result;
  }

  return result;
}

CGPath *EQKit::Font::STIXCollection::newCGPathForRadicalWithOverbar(uint64_t a1, uint64_t a2, double *a3, uint64_t a4, double a5, double a6, double a7)
{
  v62 = 8730;
  EQKitPath::EQKitPath(&v58, 0);
  memset(&__p, 0, sizeof(__p));
  v14 = (*(*a1 + 80))(a1, &v62, 2, a2, a5);
  if (v14)
  {
    EQKitPath::EQKitPath(v54, v14, v62);
    EQKitPath::operator=(&v58, v54);
    EQKitPath::~EQKitPath(v54);
    if (v58)
    {
      v15 = CTFontCopyPostScriptName(v14);
      MEMORY[0x26D6A9880](&__p, [(__CFString *)v15 UTF8String]);
      CFRelease(v15);
      v16 = v61 == 1 ? v60 : EQKitPath::computePathBounds(&v58);
      v63.origin.x = *v16;
      v63.origin.y = v16[1];
      v17 = v16[2];
      v18 = v16[3];
      v63.size.width = v17;
      v63.size.height = v18;
      MaxY = CGRectGetMaxY(v63);
      *a4 = v17;
      *(a4 + 8) = v18;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 32) = MaxY;
      if (v58)
      {
        goto LABEL_12;
      }
    }

    CFRelease(v14);
  }

  else if (v58)
  {
    v14 = 0;
    goto LABEL_12;
  }

  v14 = (*(*a1 + 88))(a1, v62, 2, a2, a4, a5);
  if (v14)
  {
    EQKitPath::EQKitPath(v54, v14);
    EQKitPath::operator=(&v58, v54);
    EQKitPath::~EQKitPath(v54);
    CFRelease(v14);
    MEMORY[0x26D6A9880](&__p, "STIXSizeOneSym-Regular");
    v62 = 9143;
    v20 = CTFontDescriptorCreateWithNameAndSize(@"STIXSizeOneSym-Regular", *(a2 + 16));
    v14 = CTFontCreateWithFontDescriptor(v20, *(a2 + 16), 0);
    CFRelease(v20);
  }

LABEL_12:
  if (v61 == 1)
  {
    v21 = v60;
  }

  else
  {
    v21 = EQKitPath::computePathBounds(&v58);
  }

  v22 = *v21;
  v23 = v21[1];
  v24 = v21[2];
  v25 = v21[3];
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v53, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v53 = __p;
  }

  v26 = (*(*a1 + 24))(a1, 4, &v53, v62);
  *a3 = _resolveLength(v26, v14, v27);
  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v52, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v52 = __p;
  }

  v28 = (*(*a1 + 24))(a1, 5, &v52, v62);
  a3[1] = _resolveLength(v28, v14, v29);
  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v51, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v51 = __p;
  }

  v30 = (*(*a1 + 24))(a1, 6, &v51, v62);
  a3[2] = _resolveLength(v30, v14, v31);
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v50, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v50 = __p;
  }

  v32 = (*(*a1 + 24))(a1, 7, &v50, v62);
  a3[3] = _resolveLength(v32, v14, v33);
  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v49, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v49 = __p;
  }

  v34 = (*(*a1 + 24))(a1, 8, &v49, v62);
  a3[4] = _resolveLength(v34, v14, v35);
  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  *a3 = *(a4 + 32) + *a3;
  v64.origin.x = v22;
  v64.origin.y = v23;
  v64.size.width = v24;
  v64.size.height = v25;
  a3[1] = a3[1] - CGRectGetMinX(v64);
  v65.origin.x = v22;
  v65.origin.y = v23;
  v65.size.width = v24;
  v65.size.height = v25;
  a3[2] = a3[2] - CGRectGetMinX(v65);
  if (v14)
  {
    CFRelease(v14);
  }

  v36 = a3[3];
  v37 = a3[4];
  EQKitPath::findStemForEdge(&v58, 1u, v54);
  if (v54[0] == 1)
  {
    EQKitPath::extractPath(&v58);
    v38 = v59 + 16 * v55;
    v40 = *v38;
    v39 = *(v38 + 8);
    EQKitPath::extractPath(&v58);
    v41 = *(v59 + 16 * v56);
    if (v40 >= v41)
    {
      v42 = *(v59 + 16 * v56);
    }

    else
    {
      v42 = v40;
    }

    if (v40 > v41)
    {
      v41 = v40;
    }

    v43 = v36 + v37 + a6 + v41 - v42;
    v44 = v39;
    v45 = a7;
    EQKitPath::appendSubpathRect(&v58, *&v42);
  }

  Mutable = CGPathCreateMutable();
  memset(&v48, 0, sizeof(v48));
  CGAffineTransformMakeTranslation(&v48, -v22, -v23);
  EQKitPath::appendToCGPath(&v58, Mutable, &v48, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  EQKitPath::~EQKitPath(&v58);
  return Mutable;
}

void sub_26C7346B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, int a57, __int16 a58, char a59, char a60, char a61)
{
  if (a60 < 0)
  {
    operator delete(__p);
  }

  EQKitPath::~EQKitPath(&a61);
  _Unwind_Resume(a1);
}

CGPath *EQKit::Font::STIXCollection::newCGPathForLongDivisionWithOverbar(EQKit::Font::STIXCollection *this, const EQKit::Script::Info *a2, double a3, double a4, double *a5)
{
  v19.origin.x = (*(*this + 136))(this, 10188, a2);
  MaxY = CGRectGetMaxY(v19);
  v16 = *MEMORY[0x277CBF3A8];
  v17 = 0;
  v18 = 0;
  v10 = (*(*this + 88))(this, 10188, 2, a2, &v16, a3 - MaxY);
  EQKitPath::EQKitPath(v15, v10);
  CGPathRelease(v10);
  EQKitPath::findStemForEdge(v15, 2u, v14);
  if (v14[0] == 1)
  {
    Mutable = CGPathCreateMutable();
    v13 = *MEMORY[0x277CBF348];
    EQKitPath::appendToCGPathWithModifiedStem(v15, Mutable, &v13, 0, v14, a4);
  }

  else
  {
    Mutable = 0;
  }

  EQKitPath::~EQKitPath(v15);
  return Mutable;
}

void sub_26C7348E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  EQKitPath::~EQKitPath(va);
  _Unwind_Resume(a1);
}

EQKit::Font::SlantKey *EQKit::Font::SlantKey::SlantKey(EQKit::Font::SlantKey *this, CTFontRef font, int a3)
{
  *(this + 1) = 0;
  *(this + 8) = -1;
  *(this + 5) = a3;
  if (font)
  {
    if ((a3 - 0x10000) >> 20)
    {
      v6 = 1;
      LOWORD(v5) = a3;
    }

    else
    {
      v5 = ((a3 - 0x10000) >> 10) | 0xFFFFD800;
      characters[1] = a3 & 0x3FF | 0xDC00;
      v6 = 2;
    }

    characters[0] = v5;
    if (CTFontGetGlyphsForCharacters(font, characters, glyphs, v6))
    {
      *(this + 8) = glyphs[0];
    }

    *this = CTFontCopyPostScriptName(font);
    *(this + 1) = CTFontGetSize(font);
  }

  return this;
}

EQKit::Font::SlantKey *EQKit::Font::SlantKey::SlantKey(EQKit::Font::SlantKey *this, const EQKit::Font::SlantKey *a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + 1) = *(a2 + 1);
  *(this + 8) = *(a2 + 8);
  *(this + 5) = *(a2 + 5);
  if (v3)
  {
    CFRetain(v3);
  }

  return this;
}

{
  v3 = *a2;
  *this = *a2;
  *(this + 1) = *(a2 + 1);
  *(this + 8) = *(a2 + 8);
  *(this + 5) = *(a2 + 5);
  if (v3)
  {
    CFRetain(v3);
  }

  return this;
}

uint64_t EQKit::Font::SlantKey::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *a1;
    if (*a1)
    {
      CFRelease(v4);
    }

    v5 = *a2;
    *a1 = *a2;
    if (v5)
    {
      CFRetain(v5);
    }

    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 20) = *(a2 + 20);
  }

  return a1;
}

BOOL EQKit::Font::SlantKey::operator==(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16) || *(a1 + 20) != *(a2 + 20) || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v2 = *a1;
  v3 = *a2;
  if (*a1 == v3)
  {
    return 1;
  }

  result = 0;
  if (v2 && v3)
  {
    return CFStringCompare(v2, v3, 0) == kCFCompareEqualTo;
  }

  return result;
}

BOOL EQKit::Font::SlantKey::operator<(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (v2 < v3)
  {
    return 1;
  }

  if (v2 != v3)
  {
    return 0;
  }

  v5 = *(a1 + 20);
  v6 = *(a2 + 20);
  if (v5 < v6)
  {
    return 1;
  }

  if (v5 != v6)
  {
    return 0;
  }

  v7 = *(a1 + 8);
  v8 = *(a2 + 8);
  if (v7 < v8)
  {
    return 1;
  }

  if (v7 != v8)
  {
    return 0;
  }

  v9 = *a1;
  v10 = *a2;
  if (v9 && v10)
  {
    return CFStringCompare(v9, v10, 0) == kCFCompareLessThan;
  }

  if (v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10 == 0;
  }

  return !v11;
}

uint64_t std::__tree<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>,std::__map_value_compare<EQKit::Font::CharacterProperty::Map::Key,std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>,std::less<EQKit::Font::CharacterProperty::Map::Key>,true>,std::allocator<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>>>::find<EQKit::Font::CharacterProperty::Map::Key>(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = EQKit::Font::CharacterProperty::Map::Key::operator<(v3 + 32, a2);
    if (v6)
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    if (!v6)
    {
      v5 = v3;
    }

    v3 = *(v3 + v7);
  }

  while (v3);
  if (v5 == v2 || EQKit::Font::CharacterProperty::Map::Key::operator<(a2, v5 + 32))
  {
    return v2;
  }

  return v5;
}

BOOL EQKit::Font::CharacterProperty::Map::Key::operator<(uint64_t a1, uint64_t a2)
{
  if (*a1 < *a2)
  {
    return 1;
  }

  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 4);
  v4 = *(a2 + 4);
  if (v3 < v4)
  {
    return 1;
  }

  if (v3 != v4)
  {
    return 0;
  }

  v7 = *(a2 + 8);
  v5 = a2 + 8;
  v6 = v7;
  v8 = *(v5 + 23);
  v11 = *(a1 + 8);
  v9 = a1 + 8;
  v10 = v11;
  v12 = *(v9 + 23);
  if (v12 >= 0)
  {
    v13 = *(v9 + 23);
  }

  else
  {
    v13 = *(v9 + 8);
  }

  if (v12 < 0)
  {
    v9 = v10;
  }

  if (v8 >= 0)
  {
    v14 = *(v5 + 23);
  }

  else
  {
    v14 = *(v5 + 8);
  }

  if (v8 < 0)
  {
    v5 = v6;
  }

  if (v14 >= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = memcmp(v9, v5, v15);
  if (v16)
  {
    return v16 < 0;
  }

  else
  {
    return v13 < v14;
  }
}

void EQKit::Font::CharacterProperty::Map::~Map(char **this)
{
  std::__tree<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>,std::__map_value_compare<EQKit::Font::CharacterProperty::Map::Key,std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>,std::less<EQKit::Font::CharacterProperty::Map::Key>,true>,std::allocator<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>>>::destroy((this + 6), this[7]);
  std::__tree<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>,std::__map_value_compare<EQKit::Font::CharacterProperty::Map::Key,std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>,std::less<EQKit::Font::CharacterProperty::Map::Key>,true>,std::allocator<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>>>::destroy((this + 3), this[4]);
  std::__tree<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>,std::__map_value_compare<EQKit::Font::CharacterProperty::Map::Key,std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>,std::less<EQKit::Font::CharacterProperty::Map::Key>,true>,std::allocator<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>>>::destroy(this, this[1]);
}

void std::__tree<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>,std::__map_value_compare<EQKit::Font::CharacterProperty::Map::Key,std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>,std::less<EQKit::Font::CharacterProperty::Map::Key>,true>,std::allocator<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>,std::__map_value_compare<EQKit::Font::CharacterProperty::Map::Key,std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>,std::less<EQKit::Font::CharacterProperty::Map::Key>,true>,std::allocator<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>,std::__map_value_compare<EQKit::Font::CharacterProperty::Map::Key,std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>,std::less<EQKit::Font::CharacterProperty::Map::Key>,true>,std::allocator<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>>>::destroy(a1, *(a2 + 1));
    if (a2[63] < 0)
    {
      operator delete(*(a2 + 5));
    }

    operator delete(a2);
  }
}

uint64_t ___ZL22_ensureFontsDownloadedP7NSArrayIP8NSStringE_block_invoke(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v7 = 138543618;
    v8 = v4;
    v9 = 2114;
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2];
    _os_log_impl(&dword_26C6F3000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "#STIX fontFamily: %{public}@ fontUpdate: %{public}@", &v7, 0x16u);
  }

  if ((a2 - 6) >= 2 && a2 != 1)
  {
    if (a2 != 8)
    {
      return 1;
    }

    os_unfair_lock_lock(&_downloadFailuresLock);
    [*(a1 + 40) addObject:*(a1 + 32)];
    os_unfair_lock_unlock(&_downloadFailuresLock);
  }

  v5 = *(*(a1 + 56) + 8);
  if ((*(v5 + 24) & 1) == 0)
  {
    *(v5 + 24) = 1;
    dispatch_group_leave(*(a1 + 48));
  }

  return 0;
}

EQKit::Font::STIXCollection::FontInfo *EQKit::Font::STIXCollection::FontInfo::FontInfo(EQKit::Font::STIXCollection::FontInfo *this, CFStringRef name)
{
  v11 = *MEMORY[0x277D85DE8];
  *(this + 8) = 0u;
  v3 = (this + 8);
  *(this + 24) = 0u;
  v4 = CTFontDescriptorCreateWithNameAndSize(name, 12.0);
  *this = CTFontCreateWithFontDescriptor(v4, 12.0, 0);
  CFRelease(v4);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = *this;
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&dword_26C6F3000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "#STIX Created font: %@", &v9, 0xCu);
  }

  if (*this)
  {
    v6 = CTFontCopyPostScriptName(*this);
    v7 = v6;
    if (v6)
    {
      MEMORY[0x26D6A9880](v3 + 1, [(__CFString *)v6 UTF8String]);
      CFRelease(v7);
    }

    *v3 = CTFontCopyCharacterSet(*this);
  }

  return this;
}

void sub_26C735078(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v2 + 8));
  }

  _Unwind_Resume(exception_object);
}

void EQKit::Font::STIXCollection::FontInfo::~FontInfo(EQKit::Font::STIXCollection::FontInfo *this)
{
  v2 = *this;
  if (v2)
  {
    CFRelease(v2);
    *this = 0;
  }

  v3 = *(this + 1);
  if (v3)
  {
    CFRelease(v3);
    *(this + 1) = 0;
  }

  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

void sub_26C7350EC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

void std::__tree<std::__value_type<unsigned int,EQKit::Font::CompositeStretch>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,EQKit::Font::CompositeStretch>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,EQKit::Font::CompositeStretch>>>::destroy(uint64_t a1, const void **a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned int,EQKit::Font::CompositeStretch>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,EQKit::Font::CompositeStretch>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,EQKit::Font::CompositeStretch>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned int,EQKit::Font::CompositeStretch>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,EQKit::Font::CompositeStretch>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,EQKit::Font::CompositeStretch>>>::destroy(a1, a2[1]);
    EQKit::Font::CompositeStretch::~CompositeStretch(a2 + 5);

    operator delete(a2);
  }
}

void std::shared_ptr<EQKit::StemStretch::Glyph>::shared_ptr[abi:nn200100]<EQKit::StemStretch::Glyph,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_26C7351E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<EQKit::StemStretch::Glyph>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

EQKit::StemStretch::Glyph **std::unique_ptr<EQKit::StemStretch::Glyph>::~unique_ptr[abi:nn200100](EQKit::StemStretch::Glyph **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    EQKit::StemStretch::Glyph::~Glyph(v2);
    MEMORY[0x26D6A9A30]();
  }

  return a1;
}

void std::__shared_ptr_pointer<EQKit::StemStretch::Glyph *,std::shared_ptr<EQKit::StemStretch::Glyph>::__shared_ptr_default_delete<EQKit::StemStretch::Glyph,EQKit::StemStretch::Glyph>,std::allocator<EQKit::StemStretch::Glyph>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x26D6A9A30);
}

EQKit::StemStretch::Glyph *std::__shared_ptr_pointer<EQKit::StemStretch::Glyph *,std::shared_ptr<EQKit::StemStretch::Glyph>::__shared_ptr_default_delete<EQKit::StemStretch::Glyph,EQKit::StemStretch::Glyph>,std::allocator<EQKit::StemStretch::Glyph>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    EQKit::StemStretch::Glyph::~Glyph(result);

    JUMPOUT(0x26D6A9A30);
  }

  return result;
}

void std::__shared_weak_count::__release_shared[abi:nn200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t EQKitCache<EQKit::StemStretch::Key,std::shared_ptr<EQKit::StemStretch::Glyph>,std::shared_ptr<EQKit::StemStretch::Glyph const>>::EQKitCache(uint64_t a1, uint64_t a2, const void *a3)
{
  *a1 = a2;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 1065353216;
  *(a1 + 48) = 0;
  *(a1 + 56) = xmmword_26CA63A20;
  pthread_rwlock_init((a1 + 72), 0);
  *(a1 + 272) = _Block_copy(a3);
  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::__unordered_map_hasher<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::hash<EQKit::StemStretch::Key>,std::equal_to<EQKit::StemStretch::Key>,true>,std::__unordered_map_equal<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::equal_to<EQKit::StemStretch::Key>,std::hash<EQKit::StemStretch::Key>,true>,std::allocator<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::__unordered_map_hasher<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::hash<EQKit::StemStretch::Key>,std::equal_to<EQKit::StemStretch::Key>,true>,std::__unordered_map_equal<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::equal_to<EQKit::StemStretch::Key>,std::hash<EQKit::StemStretch::Key>,true>,std::allocator<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::__unordered_map_hasher<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::hash<EQKit::StemStretch::Key>,std::equal_to<EQKit::StemStretch::Key>,true>,std::__unordered_map_equal<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::equal_to<EQKit::StemStretch::Key>,std::hash<EQKit::StemStretch::Key>,true>,std::allocator<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:nn200100]<std::pair<EQKit::StemStretch::Key const,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__destroy_at[abi:nn200100]<std::pair<EQKit::StemStretch::Key const,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,0>(EQKit::StemStretch::Key *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  EQKit::StemStretch::Key::~Key(this);
}

void *std::__hash_table<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::__unordered_map_hasher<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::hash<EQKit::StemStretch::Key>,std::equal_to<EQKit::StemStretch::Key>,true>,std::__unordered_map_equal<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::equal_to<EQKit::StemStretch::Key>,std::hash<EQKit::StemStretch::Key>,true>,std::allocator<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>>>::find<EQKit::StemStretch::Key>(void *a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2)
  {
    v4 = CFHash(v4);
  }

  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4 ^ *(a2 + 16);
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4 ^ *(a2 + 16);
    if (v6 >= *&v5)
    {
      v9 = v6 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v6;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        if (EQKit::StemStretch::Key::operator==((v11 + 2), a2))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v12 >= *&v5)
          {
            v12 %= *&v5;
          }
        }

        else
        {
          v12 &= *&v5 - 1;
        }

        if (v12 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

void *std::__hash_table<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::__unordered_map_hasher<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::hash<EQKit::StemStretch::Key>,std::equal_to<EQKit::StemStretch::Key>,true>,std::__unordered_map_equal<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::equal_to<EQKit::StemStretch::Key>,std::hash<EQKit::StemStretch::Key>,true>,std::allocator<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>>>::__emplace_unique_key_args<EQKit::StemStretch::Key,std::piecewise_construct_t const&,std::tuple<EQKit::StemStretch::Key const&>,std::tuple<>>(void *a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2)
  {
    v4 = CFHash(v4);
  }

  v5 = *(a2 + 16);
  v6 = v4 ^ v5;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_20;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v4 ^ v5;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_20:
    std::__hash_table<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::__unordered_map_hasher<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::hash<EQKit::StemStretch::Key>,std::equal_to<EQKit::StemStretch::Key>,true>,std::__unordered_map_equal<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::equal_to<EQKit::StemStretch::Key>,std::hash<EQKit::StemStretch::Key>,true>,std::allocator<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<EQKit::StemStretch::Key const&>,std::tuple<>>();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_20;
    }

LABEL_19:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_20;
    }
  }

  if (!EQKit::StemStretch::Key::operator==((v12 + 2), a2))
  {
    goto LABEL_19;
  }

  return v12;
}

void sub_26C7357E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<std::__hash_node<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:nn200100]<std::pair<EQKit::StemStretch::Key const,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,0>((v2 + 16));
    }

    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::__unordered_map_hasher<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::hash<EQKit::StemStretch::Key>,std::equal_to<EQKit::StemStretch::Key>,true>,std::__unordered_map_equal<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::equal_to<EQKit::StemStretch::Key>,std::hash<EQKit::StemStretch::Key>,true>,std::allocator<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>>>::__rehash<true>(uint64_t a1, size_t __n)
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

      std::__hash_table<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::__unordered_map_hasher<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::hash<EQKit::StemStretch::Key>,std::equal_to<EQKit::StemStretch::Key>,true>,std::__unordered_map_equal<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::equal_to<EQKit::StemStretch::Key>,std::hash<EQKit::StemStretch::Key>,true>,std::allocator<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::__unordered_map_hasher<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::hash<EQKit::StemStretch::Key>,std::equal_to<EQKit::StemStretch::Key>,true>,std::__unordered_map_equal<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::equal_to<EQKit::StemStretch::Key>,std::hash<EQKit::StemStretch::Key>,true>,std::allocator<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t EQKitCache<EQKit::StemStretch::Key,EQKitTypes::Axis::Enum,EQKitTypes::Axis::Enum>::EQKitCache(uint64_t a1, uint64_t a2, const void *a3)
{
  *a1 = a2;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 1065353216;
  *(a1 + 48) = 0;
  *(a1 + 56) = xmmword_26CA63A20;
  pthread_rwlock_init((a1 + 72), 0);
  *(a1 + 272) = _Block_copy(a3);
  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>,std::__unordered_map_hasher<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>,std::hash<EQKit::StemStretch::Key>,std::equal_to<EQKit::StemStretch::Key>,true>,std::__unordered_map_equal<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>,std::equal_to<EQKit::StemStretch::Key>,std::hash<EQKit::StemStretch::Key>,true>,std::allocator<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>,std::__unordered_map_hasher<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>,std::hash<EQKit::StemStretch::Key>,std::equal_to<EQKit::StemStretch::Key>,true>,std::__unordered_map_equal<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>,std::equal_to<EQKit::StemStretch::Key>,std::hash<EQKit::StemStretch::Key>,true>,std::allocator<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>,std::__unordered_map_hasher<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>,std::hash<EQKit::StemStretch::Key>,std::equal_to<EQKit::StemStretch::Key>,true>,std::__unordered_map_equal<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>,std::equal_to<EQKit::StemStretch::Key>,std::hash<EQKit::StemStretch::Key>,true>,std::allocator<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>>>::__deallocate_node(uint64_t a1, const void **a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      EQKit::StemStretch::Key::~Key(v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t EQKitCache<EQKit::Font::SlantKey,EQKit::Font::SlantInfo,EQKit::Font::SlantInfo>::EQKitCache(uint64_t a1, uint64_t a2, const void *a3)
{
  *a1 = a2;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 1065353216;
  *(a1 + 48) = 0;
  *(a1 + 56) = xmmword_26CA63A20;
  pthread_rwlock_init((a1 + 72), 0);
  *(a1 + 272) = _Block_copy(a3);
  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>,std::__unordered_map_hasher<EQKit::Font::SlantKey,std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>,std::hash<EQKit::Font::SlantKey>,std::equal_to<EQKit::Font::SlantKey>,true>,std::__unordered_map_equal<EQKit::Font::SlantKey,std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>,std::equal_to<EQKit::Font::SlantKey>,std::hash<EQKit::Font::SlantKey>,true>,std::allocator<std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>,std::__unordered_map_hasher<EQKit::Font::SlantKey,std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>,std::hash<EQKit::Font::SlantKey>,std::equal_to<EQKit::Font::SlantKey>,true>,std::__unordered_map_equal<EQKit::Font::SlantKey,std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>,std::equal_to<EQKit::Font::SlantKey>,std::hash<EQKit::Font::SlantKey>,true>,std::allocator<std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>,std::__unordered_map_hasher<EQKit::Font::SlantKey,std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>,std::hash<EQKit::Font::SlantKey>,std::equal_to<EQKit::Font::SlantKey>,true>,std::__unordered_map_equal<EQKit::Font::SlantKey,std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>,std::equal_to<EQKit::Font::SlantKey>,std::hash<EQKit::Font::SlantKey>,true>,std::allocator<std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[2];
      if (v4)
      {
        CFRelease(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t *std::__tree<std::__value_type<unsigned int,EQKit::Font::CompositeStretch>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,EQKit::Font::CompositeStretch>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,EQKit::Font::CompositeStretch>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    std::__tree<std::__value_type<unsigned int,EQKit::Font::CompositeStretch>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,EQKit::Font::CompositeStretch>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,EQKit::Font::CompositeStretch>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<unsigned int,EQKit::Font::CompositeStretch>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned int,EQKit::Font::CompositeStretch>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      EQKit::Font::CompositeStretch::~CompositeStretch(v2 + 5);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t EQKitCache<EQKit::StemStretch::Key,std::shared_ptr<EQKit::StemStretch::Glyph>,std::shared_ptr<EQKit::StemStretch::Glyph const>>::~EQKitCache(uint64_t a1)
{
  pthread_rwlock_destroy((a1 + 72));
  _Block_release(*(a1 + 272));
  std::__hash_table<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::__unordered_map_hasher<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::hash<EQKit::StemStretch::Key>,std::equal_to<EQKit::StemStretch::Key>,true>,std::__unordered_map_equal<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::equal_to<EQKit::StemStretch::Key>,std::hash<EQKit::StemStretch::Key>,true>,std::allocator<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>>>::~__hash_table(a1 + 8);
  return a1;
}

uint64_t EQKitCache<EQKit::StemStretch::Key,EQKitTypes::Axis::Enum,EQKitTypes::Axis::Enum>::~EQKitCache(uint64_t a1)
{
  pthread_rwlock_destroy((a1 + 72));
  _Block_release(*(a1 + 272));
  std::__hash_table<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>,std::__unordered_map_hasher<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>,std::hash<EQKit::StemStretch::Key>,std::equal_to<EQKit::StemStretch::Key>,true>,std::__unordered_map_equal<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>,std::equal_to<EQKit::StemStretch::Key>,std::hash<EQKit::StemStretch::Key>,true>,std::allocator<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>>>::~__hash_table(a1 + 8);
  return a1;
}

uint64_t EQKitCache<EQKit::Font::SlantKey,EQKit::Font::SlantInfo,EQKit::Font::SlantInfo>::~EQKitCache(uint64_t a1)
{
  pthread_rwlock_destroy((a1 + 72));
  _Block_release(*(a1 + 272));
  std::__hash_table<std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>,std::__unordered_map_hasher<EQKit::Font::SlantKey,std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>,std::hash<EQKit::Font::SlantKey>,std::equal_to<EQKit::Font::SlantKey>,true>,std::__unordered_map_equal<EQKit::Font::SlantKey,std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>,std::equal_to<EQKit::Font::SlantKey>,std::hash<EQKit::Font::SlantKey>,true>,std::allocator<std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>>>::~__hash_table(a1 + 8);
  return a1;
}

uint64_t std::vector<std::pair<EQKit::StemStretch::Key,unsigned long>>::push_back[abi:nn200100](uint64_t a1, EQKit::StemStretch::Key *a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 16))
  {
    result = std::vector<std::pair<EQKit::StemStretch::Key,unsigned long>>::__emplace_back_slow_path<std::pair<EQKit::StemStretch::Key,unsigned long>>(a1, a2);
  }

  else
  {
    EQKit::StemStretch::Key::Key(*(a1 + 8), a2);
    *(v4 + 32) = *(a2 + 4);
    result = v4 + 40;
    *(a1 + 8) = v4 + 40;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t std::vector<std::pair<EQKit::StemStretch::Key,unsigned long>>::__emplace_back_slow_path<std::pair<EQKit::StemStretch::Key,unsigned long>>(uint64_t a1, const EQKit::StemStretch::Key *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<EQKit::StemStretch::Key,unsigned long>>>(a1, v6);
  }

  v13 = 0;
  v14 = 40 * v2;
  v15 = 40 * v2;
  *(EQKit::StemStretch::Key::Key((40 * v2), a2) + 32) = *(a2 + 4);
  *&v15 = v15 + 40;
  v7 = *(a1 + 8);
  v8 = (v14 + *a1 - v7);
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<std::pair<EQKit::StemStretch::Key,unsigned long>>,std::pair<EQKit::StemStretch::Key,unsigned long>*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<std::pair<EQKit::StemStretch::Key,unsigned long>>::~__split_buffer(&v13);
  return v12;
}

void sub_26C736168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::pair<EQKit::StemStretch::Key,unsigned long>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<EQKit::StemStretch::Key,unsigned long>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<std::pair<EQKit::StemStretch::Key,unsigned long>>,std::pair<EQKit::StemStretch::Key,unsigned long>*>(int a1, const void **a2, EQKit::StemStretch::Key *a3, EQKit::StemStretch::Key *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = EQKit::StemStretch::Key::Key(this, v7);
      *(v8 + 32) = *(v7 + 4);
      v7 = (v7 + 40);
      this = (v8 + 40);
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      EQKit::StemStretch::Key::~Key(v6);
      v6 += 5;
    }
  }
}

uint64_t std::__split_buffer<std::pair<EQKit::StemStretch::Key,unsigned long>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    EQKit::StemStretch::Key::~Key((i - 40));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<EQKit::StemStretch::Key,unsigned long> const&,std::pair<EQKit::StemStretch::Key,unsigned long> const&),std::pair<EQKit::StemStretch::Key,unsigned long>*,false>(EQKit::StemStretch::Key *a1, unint64_t a2, uint64_t (**a3)(const EQKit::StemStretch::Key *, const EQKit::StemStretch::Key *), uint64_t a4, char a5)
{
  v7 = a2;
  v8 = a1;
  v48 = a2;
  v49 = a1;
LABEL_2:
  for (i = 1 - a4; ; ++i)
  {
    v10 = v7 - v8;
    v11 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - v8) >> 3);
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return;
      }

      if (v11 == 2)
      {
        v45 = *a3;
        v48 = (v7 - 40);
        if ((v45)(v7 - 40))
        {
          v44 = &v49;
          v47 = &v48;
          goto LABEL_98;
        }

        return;
      }

      goto LABEL_10;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {
      v48 = (v7 - 40);
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<EQKit::StemStretch::Key,unsigned long> const&,std::pair<EQKit::StemStretch::Key,unsigned long> const&),std::pair<EQKit::StemStretch::Key,unsigned long>*,0>(v8, (v8 + 40), (v8 + 80), v7 - 40, a3);
      return;
    }

    if (v11 == 5)
    {
      v48 = (v7 - 40);
      v53 = (v8 + 40);
      v54[0] = v8;
      v51 = (v8 + 120);
      v52 = (v8 + 80);
      v50 = v7 - 40;
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<EQKit::StemStretch::Key,unsigned long> const&,std::pair<EQKit::StemStretch::Key,unsigned long> const&),std::pair<EQKit::StemStretch::Key,unsigned long>*,0>(v8, (v8 + 40), (v8 + 80), v8 + 120, a3);
      if ((*a3)((v7 - 40), (v8 + 120)))
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(&v51, &v50);
        if ((*a3)(v51, (v8 + 80)))
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(&v52, &v51);
          if ((*a3)(v52, (v8 + 40)))
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(&v53, &v52);
            v40 = (*a3)(v53, v8);
            goto LABEL_92;
          }
        }
      }

      return;
    }

LABEL_10:
    if (v10 <= 959)
    {
      if (a5)
      {
        std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<EQKit::StemStretch::Key,unsigned long> const&,std::pair<EQKit::StemStretch::Key,unsigned long> const&),std::pair<EQKit::StemStretch::Key,unsigned long>*>(v8, v7, a3);
      }

      else
      {
        std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<EQKit::StemStretch::Key,unsigned long> const&,std::pair<EQKit::StemStretch::Key,unsigned long> const&),std::pair<EQKit::StemStretch::Key,unsigned long>*>(v8, v7, a3);
      }

      return;
    }

    if (i == 1)
    {
      if (v8 != v7)
      {
        std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<EQKit::StemStretch::Key,unsigned long> const&,std::pair<EQKit::StemStretch::Key,unsigned long> const&),std::pair<EQKit::StemStretch::Key,unsigned long>*,std::pair<EQKit::StemStretch::Key,unsigned long>*>(v8, v7, v7, a3);
      }

      return;
    }

    v12 = v11 >> 1;
    v13 = (v8 + 40 * (v11 >> 1));
    v14 = (v7 - 40);
    if (v10 < 0x1401)
    {
      v53 = v8;
      v54[0] = v8 + 40 * (v11 >> 1);
      v52 = v14;
      v18 = (*a3)(v8, v13);
      v19 = (*a3)(v14, v8);
      if (v18)
      {
        if (v19)
        {
          v20 = v54;
          goto LABEL_37;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(v54, &v53);
        if ((*a3)(v52, v53))
        {
          v20 = &v53;
LABEL_37:
          v22 = &v52;
LABEL_38:
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(v20, v22);
        }
      }

      else if (v19)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(&v53, &v52);
        if ((*a3)(v53, v54[0]))
        {
          v20 = v54;
          v22 = &v53;
          goto LABEL_38;
        }
      }

      v8 = v49;
      if (a5)
      {
        goto LABEL_40;
      }

      goto LABEL_65;
    }

    v53 = (v8 + 40 * (v11 >> 1));
    v54[0] = v8;
    v52 = v14;
    v15 = (*a3)(v13, v8);
    v16 = (*a3)(v14, v13);
    if (v15)
    {
      if (v16)
      {
        v17 = v54;
      }

      else
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(v54, &v53);
        if (!(*a3)(v52, v53))
        {
          goto LABEL_29;
        }

        v17 = &v53;
      }

      v21 = &v52;
      goto LABEL_28;
    }

    if (v16)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(&v53, &v52);
      if ((*a3)(v53, v54[0]))
      {
        v17 = v54;
        v21 = &v53;
LABEL_28:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(v17, v21);
      }
    }

LABEL_29:
    v8 = v49;
    v23 = v49 + 40 * v12;
    v53 = (v23 - 40);
    v54[0] = v49 + 40;
    v52 = (v48 - 80);
    v24 = (*a3)(v23 - 40);
    v25 = (*a3)((v48 - 80), (v23 - 40));
    if (v24)
    {
      if (v25)
      {
        v26 = v54;
      }

      else
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(v54, &v53);
        if (!(*a3)(v52, v53))
        {
          goto LABEL_45;
        }

        v26 = &v53;
      }

      v27 = &v52;
      goto LABEL_44;
    }

    if (v25)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(&v53, &v52);
      if ((*a3)(v53, v54[0]))
      {
        v26 = v54;
        v27 = &v53;
LABEL_44:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(v26, v27);
      }
    }

LABEL_45:
    v53 = (v23 + 40);
    v54[0] = v49 + 80;
    v52 = (v48 - 120);
    v28 = (*a3)(v23 + 40);
    v29 = (*a3)((v48 - 120), (v23 + 40));
    if (v28)
    {
      if (v29)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(v54, &v52);
        goto LABEL_54;
      }

      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(v54, &v53);
      if ((*a3)(v52, v53))
      {
        v30 = &v53;
        v31 = &v52;
        goto LABEL_53;
      }
    }

    else if (v29)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(&v53, &v52);
      if ((*a3)(v53, v54[0]))
      {
        v30 = v54;
        v31 = &v53;
LABEL_53:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(v30, v31);
      }
    }

LABEL_54:
    v53 = (v49 + 40 * v12);
    v54[0] = v23 - 40;
    v52 = (v23 + 40);
    v32 = (*a3)(v23, (v23 - 40));
    v33 = (*a3)((v23 + 40), v23);
    if (v32)
    {
      if (v33)
      {
        v34 = v54;
      }

      else
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(v54, &v53);
        if (!(*a3)(v52, v53))
        {
          goto LABEL_64;
        }

        v34 = &v53;
      }

      v35 = &v52;
      goto LABEL_63;
    }

    if (v33)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(&v53, &v52);
      if ((*a3)(v53, v54[0]))
      {
        v34 = v54;
        v35 = &v53;
LABEL_63:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(v34, v35);
      }
    }

LABEL_64:
    EQKit::StemStretch::Key::Key(v54, v49);
    EQKit::StemStretch::Key::operator=(v49, v23);
    EQKit::StemStretch::Key::operator=(v23, v54);
    EQKit::StemStretch::Key::~Key(v54);
    v36 = *(v49 + 4);
    *(v49 + 4) = *(v23 + 4);
    *(v23 + 4) = v36;
    if (a5)
    {
LABEL_40:
      v7 = v48;
      goto LABEL_66;
    }

LABEL_65:
    v7 = v48;
    if (((*a3)((v8 - 40), v8) & 1) == 0)
    {
      v8 = std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,std::pair<EQKit::StemStretch::Key,unsigned long> *,BOOL (*&)(std::pair<EQKit::StemStretch::Key,unsigned long> const&,std::pair<EQKit::StemStretch::Key,unsigned long> const&)>(v8, v48, a3);
      goto LABEL_75;
    }

LABEL_66:
    v37 = std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,std::pair<EQKit::StemStretch::Key,unsigned long> *,BOOL (*&)(std::pair<EQKit::StemStretch::Key,unsigned long> const&,std::pair<EQKit::StemStretch::Key,unsigned long> const&)>(v8, v7, a3);
    if ((v38 & 1) == 0)
    {
      goto LABEL_73;
    }

    v39 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<EQKit::StemStretch::Key,unsigned long> const&,std::pair<EQKit::StemStretch::Key,unsigned long> const&),std::pair<EQKit::StemStretch::Key,unsigned long>*>(v8, v37, a3);
    if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<EQKit::StemStretch::Key,unsigned long> const&,std::pair<EQKit::StemStretch::Key,unsigned long> const&),std::pair<EQKit::StemStretch::Key,unsigned long>*>((v37 + 40), v7, a3))
    {
      if (v39)
      {
        return;
      }

      v48 = v37;
      v7 = v37;
    }

    else
    {
      if (!v39)
      {
LABEL_73:
        std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<EQKit::StemStretch::Key,unsigned long> const&,std::pair<EQKit::StemStretch::Key,unsigned long> const&),std::pair<EQKit::StemStretch::Key,unsigned long>*,false>(v8, v37, a3, -i, a5 & 1);
        v8 = (v37 + 40);
LABEL_75:
        a5 = 0;
        v49 = v8;
        a4 = -i;
        goto LABEL_2;
      }

      v49 = (v37 + 40);
      v8 = (v37 + 40);
    }
  }

  v41 = (v8 + 40);
  v48 = (v7 - 40);
  v53 = (v8 + 40);
  v54[0] = v8;
  v52 = (v7 - 40);
  v42 = (*a3)((v8 + 40), v8);
  v43 = (*a3)((v7 - 40), v41);
  if (v42)
  {
    if (v43)
    {
      v44 = v54;
    }

    else
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(v54, &v53);
      if (!(*a3)(v52, v53))
      {
        return;
      }

      v44 = &v53;
    }

    v47 = &v52;
    goto LABEL_98;
  }

  if (v43)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(&v53, &v52);
    v40 = (*a3)(v53, v54[0]);
LABEL_92:
    if (v40)
    {
      v44 = v54;
      v47 = &v53;
LABEL_98:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(v44, v47);
    }
  }
}

void sub_26C736954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  EQKit::StemStretch::Key::~Key(va);
  _Unwind_Resume(a1);
}

void std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(const EQKit::StemStretch::Key **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  EQKit::StemStretch::Key::Key(v5, *a1);
  EQKit::StemStretch::Key::operator=(v2, v3);
  EQKit::StemStretch::Key::operator=(v3, v5);
  EQKit::StemStretch::Key::~Key(v5);
  v4 = *(v2 + 4);
  *(v2 + 4) = *(v3 + 32);
  *(v3 + 32) = v4;
}

void std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<EQKit::StemStretch::Key,unsigned long> const&,std::pair<EQKit::StemStretch::Key,unsigned long> const&),std::pair<EQKit::StemStretch::Key,unsigned long>*,0>(const EQKit::StemStretch::Key *a1, const EQKit::StemStretch::Key *a2, const EQKit::StemStretch::Key *a3, uint64_t a4, uint64_t (**a5)(const EQKit::StemStretch::Key *, const EQKit::StemStretch::Key *))
{
  v16 = a2;
  v17 = a1;
  v14 = a4;
  v15 = a3;
  v19 = a2;
  v20 = a1;
  v18 = a3;
  v10 = (*a5)(a2, a1);
  v11 = (*a5)(a3, a2);
  if (v10)
  {
    if (v11)
    {
      v12 = &v20;
LABEL_9:
      v13 = &v18;
      goto LABEL_10;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(&v20, &v19);
    if ((*a5)(v18, v19))
    {
      v12 = &v19;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(&v19, &v18);
    if ((*a5)(v19, v20))
    {
      v12 = &v20;
      v13 = &v19;
LABEL_10:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(v12, v13);
    }
  }

  if ((*a5)(a4, a3))
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(&v15, &v14);
    if ((*a5)(v15, a2))
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(&v16, &v15);
      if ((*a5)(v16, a1))
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(&v17, &v16);
      }
    }
  }
}

void std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<EQKit::StemStretch::Key,unsigned long> const&,std::pair<EQKit::StemStretch::Key,unsigned long> const&),std::pair<EQKit::StemStretch::Key,unsigned long>*>(uint64_t a1, const EQKit::StemStretch::Key *a2, uint64_t (**a3)(const void **, uint64_t))
{
  if (a1 != a2)
  {
    v5 = (a1 + 40);
    if ((a1 + 40) != a2)
    {
      v7 = 0;
      v8 = a1;
      do
      {
        v9 = v5;
        if ((*a3)(v5, v8))
        {
          EQKit::StemStretch::Key::Key(v13, v9);
          v14 = *(v8 + 9);
          v10 = v7;
          while (1)
          {
            EQKit::StemStretch::Key::operator=(a1 + v10 + 40, a1 + v10);
            *(a1 + v10 + 72) = *(a1 + v10 + 32);
            if (!v10)
            {
              break;
            }

            v11 = (*a3)(v13, a1 + v10 - 40);
            v10 -= 40;
            if ((v11 & 1) == 0)
            {
              v12 = a1 + v10 + 40;
              goto LABEL_10;
            }
          }

          v12 = a1;
LABEL_10:
          EQKit::StemStretch::Key::operator=(v12, v13);
          *(v12 + 32) = v14;
          EQKit::StemStretch::Key::~Key(v13);
        }

        v5 = (v9 + 40);
        v7 += 40;
        v8 = v9;
      }

      while ((v9 + 40) != a2);
    }
  }
}

void sub_26C736C30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  EQKit::StemStretch::Key::~Key(va);
  _Unwind_Resume(a1);
}

void std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<EQKit::StemStretch::Key,unsigned long> const&,std::pair<EQKit::StemStretch::Key,unsigned long> const&),std::pair<EQKit::StemStretch::Key,unsigned long>*>(uint64_t a1, const EQKit::StemStretch::Key *a2, uint64_t (**a3)(const void **, uint64_t))
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = (a1 + 40);
    if ((a1 + 40) != a2)
    {
      do
      {
        v7 = v5;
        if ((*a3)(v5, v4))
        {
          EQKit::StemStretch::Key::Key(v8, v7);
          v9 = *(v4 + 72);
          do
          {
            EQKit::StemStretch::Key::operator=(v4 + 40, v4);
            *(v4 + 72) = *(v4 + 32);
            v4 -= 40;
          }

          while (((*a3)(v8, v4) & 1) != 0);
          EQKit::StemStretch::Key::operator=(v4 + 40, v8);
          *(v4 + 72) = v9;
          EQKit::StemStretch::Key::~Key(v8);
        }

        v5 = (v7 + 40);
        v4 = v7;
      }

      while ((v7 + 40) != a2);
    }
  }
}

void sub_26C736D18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  EQKit::StemStretch::Key::~Key(va);
  _Unwind_Resume(a1);
}

const EQKit::StemStretch::Key *std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,std::pair<EQKit::StemStretch::Key,unsigned long> *,BOOL (*&)(std::pair<EQKit::StemStretch::Key,unsigned long> const&,std::pair<EQKit::StemStretch::Key,unsigned long> const&)>(EQKit::StemStretch::Key *a1, unint64_t a2, unsigned int (**a3)(const void **))
{
  v15 = a1;
  v14 = a2;
  EQKit::StemStretch::Key::Key(v12, a1);
  v13 = *(a1 + 4);
  if ((*a3)(v12, a2 - 40))
  {
    v6 = a1;
    do
    {
      v6 = (v6 + 40);
      v15 = v6;
    }

    while (((*a3)(v12, v6) & 1) == 0);
  }

  else
  {
    v7 = (a1 + 40);
    do
    {
      v6 = v7;
      v15 = v7;
      if (v7 >= v14)
      {
        break;
      }

      v8 = (*a3)(v12, v7);
      v7 = (v6 + 40);
    }

    while (!v8);
  }

  v9 = v14;
  if (v6 < v14)
  {
    do
    {
      v9 -= 40;
      v14 = v9;
    }

    while (((*a3)(v12, v9) & 1) != 0);
    v6 = v15;
  }

  if (v6 < v9)
  {
    do
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(&v15, &v14);
      do
      {
        v15 = (v15 + 40);
      }

      while (!(*a3)(v12));
      do
      {
        v14 -= 40;
      }

      while (((*a3)(v12) & 1) != 0);
      v6 = v15;
    }

    while (v15 < v14);
  }

  if ((v6 - 40) != a1)
  {
    EQKit::StemStretch::Key::operator=(a1, v6 - 40);
    *(a1 + 4) = *(v6 - 1);
  }

  EQKit::StemStretch::Key::operator=(v6 - 40, v12);
  *(v6 - 1) = v13;
  v10 = v15;
  EQKit::StemStretch::Key::~Key(v12);
  return v10;
}

void sub_26C736EB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  EQKit::StemStretch::Key::~Key(va);
  _Unwind_Resume(a1);
}

uint64_t std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,std::pair<EQKit::StemStretch::Key,unsigned long> *,BOOL (*&)(std::pair<EQKit::StemStretch::Key,unsigned long> const&,std::pair<EQKit::StemStretch::Key,unsigned long> const&)>(EQKit::StemStretch::Key *a1, unint64_t a2, uint64_t (**a3)(void))
{
  v15 = a2;
  EQKit::StemStretch::Key::Key(v13, a1);
  v5 = 0;
  v14 = *(a1 + 4);
  do
  {
    v16 = (a1 + v5 + 40);
    v5 += 40;
  }

  while (((*a3)() & 1) != 0);
  v6 = v15;
  if (v5 == 40)
  {
    v9 = (a1 + 40);
    do
    {
      if (v9 >= v6)
      {
        break;
      }

      v10 = *a3;
      v6 -= 40;
      v15 = v6;
    }

    while (((v10)(v6, v13) & 1) == 0);
  }

  else
  {
    v7 = v15 - 40;
    do
    {
      v15 = v7;
      v8 = (*a3)(v7, v13);
      v7 -= 40;
    }

    while (!v8);
    v9 = v16;
  }

  v11 = v9;
  if (v9 < v15)
  {
    do
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(&v16, &v15);
      do
      {
        v16 = (v16 + 40);
      }

      while (((*a3)() & 1) != 0);
      do
      {
        v15 -= 40;
      }

      while (!(*a3)());
      v11 = v16;
    }

    while (v16 < v15);
  }

  if ((v11 - 40) != a1)
  {
    EQKit::StemStretch::Key::operator=(a1, v11 - 40);
    *(a1 + 4) = *(v11 - 1);
  }

  EQKit::StemStretch::Key::operator=(v11 - 40, v13);
  *(v11 - 1) = v14;
  EQKit::StemStretch::Key::~Key(v13);
  return v11 - 40;
}

void sub_26C737068(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  EQKit::StemStretch::Key::~Key(va);
  _Unwind_Resume(a1);
}

uint64_t std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<EQKit::StemStretch::Key,unsigned long> const&,std::pair<EQKit::StemStretch::Key,unsigned long> const&),std::pair<EQKit::StemStretch::Key,unsigned long>*>(void *a1, const EQKit::StemStretch::Key *a2, uint64_t (**a3)(const EQKit::StemStretch::Key *, const EQKit::StemStretch::Key *))
{
  v28 = a2;
  v29 = a1;
  v6 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
  if (v6 <= 2)
  {
    if (v6 < 2)
    {
      return 1;
    }

    if (v6 == 2)
    {
      v7 = *a3;
      v28 = (a2 - 40);
      if ((v7)())
      {
        v8 = &v29;
        v9 = &v28;
LABEL_30:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(v8, v9);
        return 1;
      }

      return 1;
    }

LABEL_16:
    v16 = (a1 + 10);
    v26[0] = a1;
    v32 = (a1 + 10);
    v33 = (a1 + 5);
    v17 = (*a3)((a1 + 5), a1);
    v18 = (*a3)((a1 + 10), (a1 + 5));
    if (v17)
    {
      if (v18)
      {
        v19 = v26;
      }

      else
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(v26, &v33);
        if (!(*a3)(v32, v33))
        {
          goto LABEL_35;
        }

        v19 = &v33;
      }

      v20 = &v32;
    }

    else
    {
      if (!v18 || (std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(&v33, &v32), !(*a3)(v33, v26[0])))
      {
LABEL_35:
        v21 = (a1 + 15);
        if (v21 != a2)
        {
          v22 = 0;
          while (1)
          {
            if ((*a3)(v21, v16))
            {
              EQKit::StemStretch::Key::Key(v26, v21);
              v27 = *(v21 + 4);
              do
              {
                v23 = v16;
                EQKit::StemStretch::Key::operator=(v16 + 40, v16);
                *(v16 + 72) = *(v16 + 32);
                if (v16 == v29)
                {
                  break;
                }

                v16 -= 40;
              }

              while (((*a3)(v26, (v23 - 40)) & 1) != 0);
              EQKit::StemStretch::Key::operator=(v23, v26);
              *(v23 + 32) = v27;
              if (++v22 == 8)
              {
                v24 = (v21 + 40) == v28;
                EQKit::StemStretch::Key::~Key(v26);
                return v24;
              }

              EQKit::StemStretch::Key::~Key(v26);
            }

            v16 = v21;
            v21 = (v21 + 40);
            if (v21 == v28)
            {
              return 1;
            }
          }
        }

        return 1;
      }

      v19 = v26;
      v20 = &v33;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(v19, v20);
    goto LABEL_35;
  }

  if (v6 != 3)
  {
    if (v6 == 4)
    {
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<EQKit::StemStretch::Key,unsigned long> const&,std::pair<EQKit::StemStretch::Key,unsigned long> const&),std::pair<EQKit::StemStretch::Key,unsigned long>*,0>(a1, (a1 + 5), (a1 + 10), a2 - 40, a3);
      return 1;
    }

    if (v6 != 5)
    {
      goto LABEL_16;
    }

    v26[0] = a1;
    v32 = (a1 + 10);
    v33 = (a1 + 5);
    v10 = (a2 - 40);
    v30 = (a2 - 40);
    v31 = (a1 + 15);
    std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<EQKit::StemStretch::Key,unsigned long> const&,std::pair<EQKit::StemStretch::Key,unsigned long> const&),std::pair<EQKit::StemStretch::Key,unsigned long>*,0>(a1, (a1 + 5), (a1 + 10), (a1 + 15), a3);
    if (!(*a3)(v10, (a1 + 15)))
    {
      return 1;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(&v31, &v30);
    if (!(*a3)(v31, (a1 + 10)))
    {
      return 1;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(&v32, &v31);
    if (!(*a3)(v32, (a1 + 5)))
    {
      return 1;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(&v33, &v32);
    v11 = (*a3)(v33, a1);
    goto LABEL_22;
  }

  v12 = (a1 + 5);
  v13 = (a2 - 40);
  v26[0] = a1;
  v32 = (a2 - 40);
  v33 = (a1 + 5);
  v14 = (*a3)((a1 + 5), a1);
  v15 = (*a3)(v13, v12);
  if (v14)
  {
    if (v15)
    {
      v8 = v26;
    }

    else
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(v26, &v33);
      if (!(*a3)(v32, v33))
      {
        return 1;
      }

      v8 = &v33;
    }

    v9 = &v32;
    goto LABEL_30;
  }

  if (v15)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(&v33, &v32);
    v11 = (*a3)(v33, v26[0]);
LABEL_22:
    if (v11)
    {
      v8 = v26;
      v9 = &v33;
      goto LABEL_30;
    }
  }

  return 1;
}

void sub_26C737410(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  EQKit::StemStretch::Key::~Key(va);
  _Unwind_Resume(a1);
}

const EQKit::StemStretch::Key *std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<EQKit::StemStretch::Key,unsigned long> const&,std::pair<EQKit::StemStretch::Key,unsigned long> const&),std::pair<EQKit::StemStretch::Key,unsigned long>*,std::pair<EQKit::StemStretch::Key,unsigned long>*>(EQKit::StemStretch::Key *a1, EQKit::StemStretch::Key *a2, const EQKit::StemStretch::Key *a3, uint64_t (**a4)(uint64_t, uint64_t))
{
  v18 = a1;
  if (a1 != a2)
  {
    v6 = a2;
    v7 = a1;
    v8 = a2 - a1;
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
    if (a2 - a1 >= 41)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = (a1 + 40 * v10);
      do
      {
        std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<EQKit::StemStretch::Key,unsigned long> const&,std::pair<EQKit::StemStretch::Key,unsigned long> const&),std::pair<EQKit::StemStretch::Key,unsigned long>*>(v7, a4, v9, v12);
        v12 = (v12 - 40);
        --v11;
      }

      while (v11);
    }

    v17 = v6;
    v13 = v6;
    if (v6 != a3)
    {
      do
      {
        if ((*a4)(v13, v18))
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(&v17, &v18);
          std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<EQKit::StemStretch::Key,unsigned long> const&,std::pair<EQKit::StemStretch::Key,unsigned long> const&),std::pair<EQKit::StemStretch::Key,unsigned long>*>(v18, a4, v9, v18);
        }

        v13 = (v17 + 40);
        v17 = v13;
      }

      while (v13 != a3);
      v7 = v18;
      v8 = v6 - v18;
    }

    if (v8 >= 41)
    {
      v14 = 0xCCCCCCCCCCCCCCCDLL * (v8 >> 3);
      do
      {
        std::__pop_heap[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*)(std::pair<EQKit::StemStretch::Key,unsigned long> const&,std::pair<EQKit::StemStretch::Key,unsigned long> const&),std::pair<EQKit::StemStretch::Key,unsigned long>*>(v7, v6, a4, v14);
        v6 = (v6 - 40);
      }

      while (v14-- > 2);
      return v17;
    }

    return v13;
  }

  return a3;
}

void std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<EQKit::StemStretch::Key,unsigned long> const&,std::pair<EQKit::StemStretch::Key,unsigned long> const&),std::pair<EQKit::StemStretch::Key,unsigned long>*>(uint64_t a1, uint64_t (**a2)(uint64_t, uint64_t), uint64_t a3, const EQKit::StemStretch::Key *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (0xCCCCCCCCCCCCCCCDLL * ((a4 - a1) >> 3)))
    {
      v10 = (0x999999999999999ALL * ((a4 - a1) >> 3)) | 1;
      v11 = a1 + 40 * v10;
      v12 = 0x999999999999999ALL * ((a4 - a1) >> 3) + 2;
      if (v12 < a3 && (*a2)(a1 + 40 * v10, v11 + 40))
      {
        v11 += 40;
        v10 = v12;
      }

      if (((*a2)(v11, v5) & 1) == 0)
      {
        EQKit::StemStretch::Key::Key(v15, v5);
        v16 = *(v5 + 4);
        do
        {
          v13 = v11;
          EQKit::StemStretch::Key::operator=(v5, v11);
          *(v5 + 4) = *(v11 + 32);
          if (v7 < v10)
          {
            break;
          }

          v14 = (2 * v10) | 1;
          v11 = a1 + 40 * v14;
          v10 = 2 * v10 + 2;
          if (v10 >= a3)
          {
            v10 = v14;
          }

          else if ((*a2)(a1 + 40 * v14, v11 + 40))
          {
            v11 += 40;
          }

          else
          {
            v10 = v14;
          }

          v5 = v13;
        }

        while (!(*a2)(v11, v15));
        EQKit::StemStretch::Key::operator=(v13, v15);
        *(v13 + 32) = v16;
        EQKit::StemStretch::Key::~Key(v15);
      }
    }
  }
}

void sub_26C7376F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  EQKit::StemStretch::Key::~Key(va);
  _Unwind_Resume(a1);
}

void std::__pop_heap[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*)(std::pair<EQKit::StemStretch::Key,unsigned long> const&,std::pair<EQKit::StemStretch::Key,unsigned long> const&),std::pair<EQKit::StemStretch::Key,unsigned long>*>(EQKit::StemStretch::Key *a1, uint64_t a2, unsigned int (**a3)(uint64_t, uint64_t), uint64_t a4)
{
  if (a4 >= 2)
  {
    EQKit::StemStretch::Key::Key(v10, a1);
    v11 = *(a1 + 4);
    v8 = std::__floyd_sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<EQKit::StemStretch::Key,unsigned long> const&,std::pair<EQKit::StemStretch::Key,unsigned long> const&),std::pair<EQKit::StemStretch::Key,unsigned long>*>(a1, a3, a4);
    v9 = v8;
    if (v8 == a2 - 40)
    {
      EQKit::StemStretch::Key::operator=(v8, v10);
      *(v9 + 32) = v11;
    }

    else
    {
      EQKit::StemStretch::Key::operator=(v8, a2 - 40);
      *(v9 + 32) = *(a2 - 8);
      EQKit::StemStretch::Key::operator=(a2 - 40, v10);
      *(a2 - 8) = v11;
      std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<EQKit::StemStretch::Key,unsigned long> const&,std::pair<EQKit::StemStretch::Key,unsigned long> const&),std::pair<EQKit::StemStretch::Key,unsigned long>*>(a1, v9 + 40, a3, 0xCCCCCCCCCCCCCCCDLL * ((v9 + 40 - a1) >> 3));
    }

    EQKit::StemStretch::Key::~Key(v10);
  }
}

void sub_26C7377FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  EQKit::StemStretch::Key::~Key(va);
  _Unwind_Resume(a1);
}

uint64_t std::__floyd_sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<EQKit::StemStretch::Key,unsigned long> const&,std::pair<EQKit::StemStretch::Key,unsigned long> const&),std::pair<EQKit::StemStretch::Key,unsigned long>*>(uint64_t a1, unsigned int (**a2)(uint64_t, uint64_t), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = a1 + 40 * v6;
    v9 = v8 + 40;
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 < a3)
    {
      v12 = v8 + 80;
      if ((*a2)(v8 + 40, v8 + 80))
      {
        v9 = v12;
        v10 = v11;
      }
    }

    EQKit::StemStretch::Key::operator=(a1, v9);
    *(a1 + 32) = *(v9 + 32);
    a1 = v9;
    v6 = v10;
  }

  while (v10 <= v7);
  return v9;
}

void std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<EQKit::StemStretch::Key,unsigned long> const&,std::pair<EQKit::StemStretch::Key,unsigned long> const&),std::pair<EQKit::StemStretch::Key,unsigned long>*>(uint64_t a1, uint64_t a2, uint64_t (**a3)(uint64_t, const void **), uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v8 = v4 >> 1;
    v9 = a1 + 40 * (v4 >> 1);
    v10 = (a2 - 40);
    if ((*a3)(v9, (a2 - 40)))
    {
      EQKit::StemStretch::Key::Key(v12, v10);
      v13 = *(a2 - 8);
      do
      {
        v11 = v9;
        EQKit::StemStretch::Key::operator=(v10, v9);
        *(v10 + 4) = *(v9 + 32);
        if (!v8)
        {
          break;
        }

        v8 = (v8 - 1) >> 1;
        v9 = a1 + 40 * v8;
        v10 = v11;
      }

      while (((*a3)(v9, v12) & 1) != 0);
      EQKit::StemStretch::Key::operator=(v11, v12);
      *(v11 + 32) = v13;
      EQKit::StemStretch::Key::~Key(v12);
    }
  }
}

void sub_26C7379BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  EQKit::StemStretch::Key::~Key(va);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::__unordered_map_hasher<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::hash<EQKit::StemStretch::Key>,std::equal_to<EQKit::StemStretch::Key>,true>,std::__unordered_map_equal<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::equal_to<EQKit::StemStretch::Key>,std::hash<EQKit::StemStretch::Key>,true>,std::allocator<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>>>::__erase_unique<EQKit::StemStretch::Key>(void *a1, uint64_t a2)
{
  result = std::__hash_table<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::__unordered_map_hasher<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::hash<EQKit::StemStretch::Key>,std::equal_to<EQKit::StemStretch::Key>,true>,std::__unordered_map_equal<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::equal_to<EQKit::StemStretch::Key>,std::hash<EQKit::StemStretch::Key>,true>,std::allocator<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>>>::find<EQKit::StemStretch::Key>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::__unordered_map_hasher<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::hash<EQKit::StemStretch::Key>,std::equal_to<EQKit::StemStretch::Key>,true>,std::__unordered_map_equal<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::equal_to<EQKit::StemStretch::Key>,std::hash<EQKit::StemStretch::Key>,true>,std::allocator<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>>>::remove(a1, result, v4);
    std::unique_ptr<std::__hash_node<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,void *>>>>::~unique_ptr[abi:nn200100](v4);
    return 1;
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::__unordered_map_hasher<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::hash<EQKit::StemStretch::Key>,std::equal_to<EQKit::StemStretch::Key>,true>,std::__unordered_map_equal<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::equal_to<EQKit::StemStretch::Key>,std::hash<EQKit::StemStretch::Key>,true>,std::allocator<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
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

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

void std::vector<std::pair<EQKit::StemStretch::Key,unsigned long>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        EQKit::StemStretch::Key::~Key(v4 - 5);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>,std::__unordered_map_hasher<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>,std::hash<EQKit::StemStretch::Key>,std::equal_to<EQKit::StemStretch::Key>,true>,std::__unordered_map_equal<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>,std::equal_to<EQKit::StemStretch::Key>,std::hash<EQKit::StemStretch::Key>,true>,std::allocator<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>>>::__erase_unique<EQKit::StemStretch::Key>(void *a1, uint64_t a2)
{
  result = std::__hash_table<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::__unordered_map_hasher<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::hash<EQKit::StemStretch::Key>,std::equal_to<EQKit::StemStretch::Key>,true>,std::__unordered_map_equal<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::equal_to<EQKit::StemStretch::Key>,std::hash<EQKit::StemStretch::Key>,true>,std::allocator<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>>>::find<EQKit::StemStretch::Key>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::__unordered_map_hasher<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::hash<EQKit::StemStretch::Key>,std::equal_to<EQKit::StemStretch::Key>,true>,std::__unordered_map_equal<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::equal_to<EQKit::StemStretch::Key>,std::hash<EQKit::StemStretch::Key>,true>,std::allocator<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>>>::remove(a1, result, v4);
    std::unique_ptr<std::__hash_node<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>,void *>>>>::~unique_ptr[abi:nn200100](v4);
    return 1;
  }

  return result;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      EQKit::StemStretch::Key::~Key(v2 + 2);
    }

    operator delete(v2);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>,std::__unordered_map_hasher<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>,std::hash<EQKit::StemStretch::Key>,std::equal_to<EQKit::StemStretch::Key>,true>,std::__unordered_map_equal<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>,std::equal_to<EQKit::StemStretch::Key>,std::hash<EQKit::StemStretch::Key>,true>,std::allocator<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>>>::__emplace_unique_key_args<EQKit::StemStretch::Key,std::piecewise_construct_t const&,std::tuple<EQKit::StemStretch::Key const&>,std::tuple<>>(void *a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2)
  {
    v4 = CFHash(v4);
  }

  v5 = *(a2 + 16);
  v6 = v4 ^ v5;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_20;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v4 ^ v5;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_20:
    std::__hash_table<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>,std::__unordered_map_hasher<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>,std::hash<EQKit::StemStretch::Key>,std::equal_to<EQKit::StemStretch::Key>,true>,std::__unordered_map_equal<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>,std::equal_to<EQKit::StemStretch::Key>,std::hash<EQKit::StemStretch::Key>,true>,std::allocator<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<EQKit::StemStretch::Key const&>,std::tuple<>>();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_20;
    }

LABEL_19:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_20;
    }
  }

  if (!EQKit::StemStretch::Key::operator==((v12 + 2), a2))
  {
    goto LABEL_19;
  }

  return v12;
}

void sub_26C737EF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>,std::__unordered_map_hasher<EQKit::Font::SlantKey,std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>,std::hash<EQKit::Font::SlantKey>,std::equal_to<EQKit::Font::SlantKey>,true>,std::__unordered_map_equal<EQKit::Font::SlantKey,std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>,std::equal_to<EQKit::Font::SlantKey>,std::hash<EQKit::Font::SlantKey>,true>,std::allocator<std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>>>::find<EQKit::Font::SlantKey>(void *a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2)
  {
    v4 = CFHash(v4);
  }

  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4 ^ *(a2 + 16);
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4 ^ *(a2 + 16);
    if (v6 >= *&v5)
    {
      v9 = v6 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v6;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        if (EQKit::Font::SlantKey::operator==((v11 + 2), a2))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v12 >= *&v5)
          {
            v12 %= *&v5;
          }
        }

        else
        {
          v12 &= *&v5 - 1;
        }

        if (v12 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

void *std::__hash_table<std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>,std::__unordered_map_hasher<EQKit::Font::SlantKey,std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>,std::hash<EQKit::Font::SlantKey>,std::equal_to<EQKit::Font::SlantKey>,true>,std::__unordered_map_equal<EQKit::Font::SlantKey,std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>,std::equal_to<EQKit::Font::SlantKey>,std::hash<EQKit::Font::SlantKey>,true>,std::allocator<std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>>>::__emplace_unique_key_args<EQKit::Font::SlantKey,std::piecewise_construct_t const&,std::tuple<EQKit::Font::SlantKey const&>,std::tuple<>>(void *a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2)
  {
    v4 = CFHash(v4);
  }

  v5 = *(a2 + 16);
  v6 = v4 ^ v5;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_20;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v4 ^ v5;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_20:
    std::__hash_table<std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>,std::__unordered_map_hasher<EQKit::Font::SlantKey,std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>,std::hash<EQKit::Font::SlantKey>,std::equal_to<EQKit::Font::SlantKey>,true>,std::__unordered_map_equal<EQKit::Font::SlantKey,std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>,std::equal_to<EQKit::Font::SlantKey>,std::hash<EQKit::Font::SlantKey>,true>,std::allocator<std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<EQKit::Font::SlantKey const&>,std::tuple<>>();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_20;
    }

LABEL_19:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_20;
    }
  }

  if (!EQKit::Font::SlantKey::operator==((v12 + 2), a2))
  {
    goto LABEL_19;
  }

  return v12;
}

void sub_26C7382F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>,void *>>>::operator()[abi:nn200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_26C738398(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>,void *>>>::operator()[abi:nn200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::pair<EQKit::Font::SlantKey const,std::pair<EQKit::Font::SlantInfo,unsigned long>>::pair[abi:nn200100]<EQKit::Font::SlantKey const&>(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  if (v3)
  {
    CFRetain(v3);
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  return a1;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>,void *>>>::operator()[abi:nn200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[2];
    if (v3)
    {
      CFRelease(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t EQKitCache<unsigned int,EQKit::Font::STIXCollection::StretchInfo,EQKit::Font::STIXCollection::StretchInfo>::EQKitCache(uint64_t a1, uint64_t a2, const void *a3)
{
  *a1 = a2;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 1065353216;
  *(a1 + 48) = 0;
  *(a1 + 56) = xmmword_26CA63A20;
  pthread_rwlock_init((a1 + 72), 0);
  *(a1 + 272) = _Block_copy(a3);
  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned long> const&,std::pair<unsigned int,unsigned long> const&),std::pair<unsigned int,unsigned long>*,false>(uint64_t result, int *a2, uint64_t (**a3)(int *, int *), uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = a2 - 4;
  v96 = a2 - 2;
  v97 = a2 - 12;
  v98 = a2 - 8;
  v10 = v8;
LABEL_3:
  v11 = 1 - a4;
  while (1)
  {
    v8 = v10;
    v12 = v11;
    v13 = (a2 - v10) >> 4;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        result = (*a3)(a2 - 4, v10);
        if (result)
        {
          v89 = *v10;
          *v10 = *(a2 - 4);
          *(a2 - 4) = v89;
          v90 = *(v10 + 8);
          *(v10 + 8) = *(a2 - 1);
          *(a2 - 1) = v90;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v13 == 3)
    {
      v78 = (*a3)((v10 + 16), v10);
      result = (*a3)(a2 - 4, (v10 + 16));
      if (v78)
      {
        v80 = (v10 + 8);
        v79 = *v10;
        if (result)
        {
          *v10 = *(a2 - 4);
        }

        else
        {
          *v10 = *(v10 + 16);
          *(v10 + 16) = v79;
          v80 = (v10 + 24);
          v94 = *(v10 + 8);
          *(v10 + 8) = *(v10 + 24);
          *(v10 + 24) = v94;
          result = (*a3)(a2 - 4, (v10 + 16));
          if (!result)
          {
            return result;
          }

          v79 = *(v10 + 16);
          *(v10 + 16) = *(a2 - 4);
        }

        *(a2 - 4) = v79;
      }

      else
      {
        if (!result)
        {
          return result;
        }

        v91 = *(v10 + 16);
        *(v10 + 16) = *(a2 - 4);
        *(a2 - 4) = v91;
        v92 = *(v10 + 24);
        v96 = (v10 + 24);
        *(v10 + 24) = *(a2 - 1);
        *(a2 - 1) = v92;
        result = (*a3)((v10 + 16), v10);
        if (!result)
        {
          return result;
        }

        v93 = *v10;
        *v10 = *(v10 + 16);
        *(v10 + 16) = v93;
        v80 = (v10 + 8);
      }

      v95 = *v80;
      *v80 = *v96;
      *v96 = v95;
      return result;
    }

    if (v13 == 4)
    {
      break;
    }

    if (v13 == 5)
    {
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned long> const&,std::pair<unsigned int,unsigned long> const&),std::pair<unsigned int,unsigned long>*,0>(v10, (v10 + 16), (v10 + 32), (v10 + 48), a3);
      result = (*a3)(a2 - 4, (v10 + 48));
      if (result)
      {
        v81 = *(v10 + 48);
        *(v10 + 48) = *(a2 - 4);
        *(a2 - 4) = v81;
        v82 = *(v10 + 56);
        *(v10 + 56) = *(a2 - 1);
        *(a2 - 1) = v82;
        result = (*a3)((v10 + 48), (v10 + 32));
        if (result)
        {
          v83 = *(v10 + 32);
          *(v10 + 32) = *(v10 + 48);
          *(v10 + 48) = v83;
          v84 = *(v10 + 40);
          *(v10 + 40) = *(v10 + 56);
          *(v10 + 56) = v84;
          result = (*a3)((v10 + 32), (v10 + 16));
          if (result)
          {
            v85 = *(v10 + 16);
            *(v10 + 16) = *(v10 + 32);
            *(v10 + 32) = v85;
            v86 = *(v10 + 24);
            *(v10 + 24) = *(v10 + 40);
            *(v10 + 40) = v86;
            result = (*a3)((v10 + 16), v10);
            if (result)
            {
              v87 = *v10;
              *v10 = *(v10 + 16);
              *(v10 + 16) = v87;
              v88 = *(v10 + 8);
              *(v10 + 8) = *(v10 + 24);
              *(v10 + 24) = v88;
            }
          }
        }
      }

      return result;
    }

LABEL_11:
    if (v13 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned long> const&,std::pair<unsigned int,unsigned long> const&),std::pair<unsigned int,unsigned long>*>(v10, a2, a3);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned long> const&,std::pair<unsigned int,unsigned long> const&),std::pair<unsigned int,unsigned long>*>(v10, a2, a3);
      }
    }

    if (v12 == 1)
    {
      if (v10 != a2)
      {

        return std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned long> const&,std::pair<unsigned int,unsigned long> const&),std::pair<unsigned int,unsigned long>*,std::pair<unsigned int,unsigned long>*>(v10, a2, a2, a3);
      }

      return result;
    }

    v14 = v10 + 16 * (v13 >> 1);
    v15 = *a3;
    if (v13 >= 0x81)
    {
      v16 = v15((v10 + 16 * (v13 >> 1)), v10);
      v17 = (*a3)(a2 - 4, v14);
      if (v16)
      {
        v19 = (v8 + 8);
        v18 = *v8;
        if (v17)
        {
          *v8 = *v9;
          goto LABEL_28;
        }

        *v8 = *v14;
        *v14 = v18;
        v19 = (v14 + 8);
        v32 = *(v8 + 8);
        *(v8 + 8) = *(v14 + 8);
        *(v14 + 8) = v32;
        if ((*a3)(a2 - 4, v14))
        {
          v18 = *v14;
          *v14 = *v9;
LABEL_28:
          *v9 = v18;
          v26 = a2 - 2;
LABEL_29:
          v33 = *v19;
          *v19 = *v26;
          *v26 = v33;
        }
      }

      else if (v17)
      {
        v24 = *v14;
        *v14 = *(a2 - 4);
        *(a2 - 4) = v24;
        v26 = (v14 + 8);
        v25 = *(v14 + 8);
        *(v14 + 8) = *(a2 - 1);
        *(a2 - 1) = v25;
        if ((*a3)(v14, v8))
        {
          v27 = *v8;
          *v8 = *v14;
          v19 = (v8 + 8);
          *v14 = v27;
          goto LABEL_29;
        }
      }

      v34 = (v14 - 16);
      v35 = (*a3)((v14 - 16), (v8 + 16));
      v36 = (*a3)(v98, (v14 - 16));
      if (v35)
      {
        v37 = *(v8 + 16);
        v38 = (v8 + 24);
        if (v36)
        {
          *(v8 + 16) = *v98;
          *v98 = v37;
          goto LABEL_41;
        }

        *(v8 + 16) = *v34;
        *v34 = v37;
        v44 = *v38;
        *v38 = *(v14 - 8);
        *(v14 - 8) = v44;
        if ((*a3)(v98, (v14 - 16)))
        {
          v45 = *v34;
          *v34 = *v98;
          *v98 = v45;
          v38 = (v14 - 8);
LABEL_41:
          v41 = a2 - 6;
LABEL_42:
          v46 = *v38;
          *v38 = *v41;
          *v41 = v46;
        }
      }

      else if (v36)
      {
        v39 = *v34;
        *v34 = *(a2 - 8);
        *(a2 - 8) = v39;
        v41 = (v14 - 8);
        v40 = *(v14 - 8);
        *(v14 - 8) = *(a2 - 3);
        *(a2 - 3) = v40;
        if ((*a3)((v14 - 16), (v8 + 16)))
        {
          v42 = *(v8 + 16);
          *(v8 + 16) = *v34;
          *v34 = v42;
          v38 = (v8 + 24);
          goto LABEL_42;
        }
      }

      v47 = (v14 + 16);
      v48 = (*a3)((v14 + 16), (v8 + 32));
      v49 = (*a3)(v97, (v14 + 16));
      if (v48)
      {
        v50 = *(v8 + 32);
        v51 = (v8 + 40);
        if (v49)
        {
          *(v8 + 32) = *v97;
          *v97 = v50;
          goto LABEL_51;
        }

        *(v8 + 32) = *v47;
        *v47 = v50;
        v56 = *v51;
        *v51 = *(v14 + 24);
        *(v14 + 24) = v56;
        if ((*a3)(v97, (v14 + 16)))
        {
          v57 = *v47;
          *v47 = *v97;
          *v97 = v57;
          v51 = (v14 + 24);
LABEL_51:
          v54 = a2 - 10;
LABEL_52:
          v58 = *v51;
          *v51 = *v54;
          *v54 = v58;
        }
      }

      else if (v49)
      {
        v52 = *v47;
        *v47 = *(a2 - 12);
        *(a2 - 12) = v52;
        v54 = (v14 + 24);
        v53 = *(v14 + 24);
        *(v14 + 24) = *(a2 - 5);
        *(a2 - 5) = v53;
        if ((*a3)((v14 + 16), (v8 + 32)))
        {
          v55 = *(v8 + 32);
          *(v8 + 32) = *v47;
          *v47 = v55;
          v51 = (v8 + 40);
          goto LABEL_52;
        }
      }

      v59 = (*a3)(v14, (v14 - 16));
      v60 = (*a3)((v14 + 16), v14);
      if (v59)
      {
        v61 = *v34;
        if (v60)
        {
          *v34 = *v47;
          *v47 = v61;
          v62 = (v14 + 24);
          v63 = *v14;
          v64 = (v14 - 8);
          goto LABEL_61;
        }

        *v34 = *v14;
        *v14 = v61;
        v69 = *(v14 - 8);
        *(v14 - 8) = *(v14 + 8);
        *(v14 + 8) = v69;
        v70 = (*a3)((v14 + 16), v14);
        v63 = *v14;
        if (v70)
        {
          v71 = *v47;
          *v14 = *v47;
          *v47 = v63;
          v62 = (v14 + 24);
          v63 = v71;
          v64 = (v14 + 8);
LABEL_61:
          v66 = v62;
LABEL_62:
          v72 = *v64;
          *v64 = *v66;
          *v66 = v72;
        }
      }

      else
      {
        v63 = *v14;
        if (v60)
        {
          *v14 = *v47;
          *v47 = v63;
          v66 = (v14 + 8);
          v65 = *(v14 + 8);
          *(v14 + 8) = *(v14 + 24);
          *(v14 + 24) = v65;
          v67 = (*a3)(v14, (v14 - 16));
          v63 = *v14;
          if (v67)
          {
            v68 = *v34;
            *v34 = v63;
            v64 = (v14 - 8);
            *v14 = v68;
            v63 = v68;
            goto LABEL_62;
          }
        }
      }

      v73 = *v8;
      *v8 = v63;
      v23 = (v8 + 8);
      *v14 = v73;
      v31 = (v14 + 8);
LABEL_64:
      v74 = *v23;
      *v23 = *v31;
      *v31 = v74;
      goto LABEL_65;
    }

    v20 = v15(v10, (v10 + 16 * (v13 >> 1)));
    v21 = (*a3)(a2 - 4, v10);
    if (v20)
    {
      v23 = (v14 + 8);
      v22 = *v14;
      if (v21)
      {
        *v14 = *v9;
LABEL_38:
        *v9 = v22;
        v31 = a2 - 2;
        goto LABEL_64;
      }

      *v14 = *v10;
      *v10 = v22;
      v23 = (v10 + 8);
      v43 = *(v14 + 8);
      *(v14 + 8) = *(v10 + 8);
      *(v10 + 8) = v43;
      if ((*a3)(a2 - 4, v10))
      {
        v22 = *v10;
        *v10 = *v9;
        goto LABEL_38;
      }
    }

    else if (v21)
    {
      v28 = *v10;
      *v10 = *(a2 - 4);
      *(a2 - 4) = v28;
      v29 = *(v10 + 8);
      *(v10 + 8) = *(a2 - 1);
      *(a2 - 1) = v29;
      if ((*a3)(v10, v14))
      {
        v30 = *v14;
        *v14 = *v10;
        *v10 = v30;
        v23 = (v14 + 8);
        v31 = (v10 + 8);
        goto LABEL_64;
      }
    }

LABEL_65:
    if ((a5 & 1) == 0 && ((*a3)((v8 - 16), v8) & 1) == 0)
    {
      result = std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,std::pair<unsigned int,unsigned long> *,BOOL (*&)(std::pair<unsigned int,unsigned long> const&,std::pair<unsigned int,unsigned long> const&)>(v8, a2, a3);
      v10 = result;
      goto LABEL_72;
    }

    v75 = std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,std::pair<unsigned int,unsigned long> *,BOOL (*&)(std::pair<unsigned int,unsigned long> const&,std::pair<unsigned int,unsigned long> const&)>(v8, a2, a3);
    if ((v76 & 1) == 0)
    {
      goto LABEL_70;
    }

    v77 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned long> const&,std::pair<unsigned int,unsigned long> const&),std::pair<unsigned int,unsigned long>*>(v8, v75, a3);
    v10 = (v75 + 4);
    result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned long> const&,std::pair<unsigned int,unsigned long> const&),std::pair<unsigned int,unsigned long>*>((v75 + 4), a2, a3);
    if (result)
    {
      a4 = -v12;
      a2 = v75;
      if (v77)
      {
        return result;
      }

      goto LABEL_2;
    }

    v11 = v12 + 1;
    if (!v77)
    {
LABEL_70:
      result = std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned long> const&,std::pair<unsigned int,unsigned long> const&),std::pair<unsigned int,unsigned long>*,false>(v8, v75, a3, -v12, a5 & 1);
      v10 = (v75 + 4);
LABEL_72:
      a5 = 0;
      a4 = -v12;
      goto LABEL_3;
    }
  }

  return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned long> const&,std::pair<unsigned int,unsigned long> const&),std::pair<unsigned int,unsigned long>*,0>(v10, (v10 + 16), (v10 + 32), a2 - 4, a3);
}

uint64_t std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned long> const&,std::pair<unsigned int,unsigned long> const&),std::pair<unsigned int,unsigned long>*,0>(int *a1, int *a2, int *a3, int *a4, uint64_t (**a5)(int *, int *))
{
  v10 = (*a5)(a2, a1);
  v11 = (*a5)(a3, a2);
  if (v10)
  {
    v13 = (a1 + 2);
    v12 = *a1;
    if (v11)
    {
      *a1 = *a3;
LABEL_9:
      *a3 = v12;
      v16 = (a3 + 2);
      goto LABEL_10;
    }

    *a1 = *a2;
    *a2 = v12;
    v13 = (a2 + 2);
    v18 = *(a1 + 1);
    *(a1 + 1) = *(a2 + 1);
    *(a2 + 1) = v18;
    if ((*a5)(a3, a2))
    {
      v12 = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    v14 = *a2;
    *a2 = *a3;
    *a3 = v14;
    v16 = (a2 + 2);
    v15 = *(a2 + 1);
    *(a2 + 1) = *(a3 + 1);
    *(a3 + 1) = v15;
    if ((*a5)(a2, a1))
    {
      v17 = *a1;
      *a1 = *a2;
      v13 = (a1 + 2);
      *a2 = v17;
LABEL_10:
      v19 = *v13;
      *v13 = *v16;
      *v16 = v19;
    }
  }

  result = (*a5)(a4, a3);
  if (result)
  {
    v21 = *a3;
    *a3 = *a4;
    *a4 = v21;
    v22 = *(a3 + 1);
    *(a3 + 1) = *(a4 + 1);
    *(a4 + 1) = v22;
    result = (*a5)(a3, a2);
    if (result)
    {
      v23 = *a2;
      *a2 = *a3;
      *a3 = v23;
      v24 = *(a2 + 1);
      *(a2 + 1) = *(a3 + 1);
      *(a3 + 1) = v24;
      result = (*a5)(a2, a1);
      if (result)
      {
        v25 = *a1;
        *a1 = *a2;
        *a2 = v25;
        v26 = *(a1 + 1);
        *(a1 + 1) = *(a2 + 1);
        *(a2 + 1) = v26;
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned long> const&,std::pair<unsigned int,unsigned long> const&),std::pair<unsigned int,unsigned long>*>(uint64_t result, _OWORD *a2, uint64_t (**a3)(_OWORD *, void))
{
  if (result != a2)
  {
    v16 = v3;
    v17 = v4;
    v6 = result;
    v7 = (result + 16);
    if ((result + 16) != a2)
    {
      v9 = 0;
      v10 = result;
      do
      {
        v11 = v10;
        v10 = v7;
        result = (*a3)(v7, v11);
        if (result)
        {
          v15 = *v10;
          v12 = v9;
          while (1)
          {
            v13 = v6 + v12;
            *(v13 + 16) = *(v6 + v12);
            *(v13 + 24) = *(v6 + v12 + 8);
            if (!v12)
            {
              break;
            }

            v12 -= 16;
            result = (*a3)(&v15, v12 + v6);
            if ((result & 1) == 0)
            {
              v14 = v6 + v12 + 16;
              goto LABEL_10;
            }
          }

          v14 = v6;
LABEL_10:
          *v14 = v15;
          *(v14 + 8) = *(&v15 + 1);
        }

        v7 = v10 + 1;
        v9 += 16;
      }

      while (v10 + 1 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned long> const&,std::pair<unsigned int,unsigned long> const&),std::pair<unsigned int,unsigned long>*>(uint64_t result, _OWORD *a2, uint64_t (**a3)(_OWORD *, void))
{
  if (result != a2)
  {
    v13 = v3;
    v14 = v4;
    v6 = result;
    v7 = (result + 16);
    if ((result + 16) != a2)
    {
      v9 = result - 16;
      do
      {
        v10 = v6;
        v6 = v7;
        result = (*a3)(v7, v10);
        if (result)
        {
          v12 = *v6;
          v11 = v9;
          do
          {
            *(v11 + 32) = *(v11 + 16);
            *(v11 + 40) = *(v11 + 24);
            result = (*a3)(&v12, v11);
            v11 -= 16;
          }

          while ((result & 1) != 0);
          *(v11 + 32) = v12;
          *(v11 + 40) = *(&v12 + 1);
        }

        v7 = v6 + 1;
        v9 += 16;
      }

      while (v6 + 1 != a2);
    }
  }

  return result;
}

int *std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,std::pair<unsigned int,unsigned long> *,BOOL (*&)(std::pair<unsigned int,unsigned long> const&,std::pair<unsigned int,unsigned long> const&)>(int *a1, unint64_t a2, uint64_t (**a3)(__int128 *, int *))
{
  v4 = a2;
  v12 = *a1;
  if ((*a3)(&v12, (a2 - 16)))
  {
    v6 = a1;
    do
    {
      v6 += 4;
    }

    while (((*a3)(&v12, v6) & 1) == 0);
  }

  else
  {
    v7 = a1 + 4;
    do
    {
      v6 = v7;
      if (v7 >= v4)
      {
        break;
      }

      v8 = (*a3)(&v12, v7);
      v7 = v6 + 4;
    }

    while (!v8);
  }

  if (v6 < v4)
  {
    do
    {
      v4 -= 16;
    }

    while (((*a3)(&v12, v4) & 1) != 0);
  }

  while (v6 < v4)
  {
    v9 = *v6;
    *v6 = *v4;
    *v4 = v9;
    v10 = *(v6 + 1);
    *(v6 + 1) = *(v4 + 8);
    *(v4 + 8) = v10;
    do
    {
      v6 += 4;
    }

    while (!(*a3)(&v12, v6));
    do
    {
      v4 -= 16;
    }

    while (((*a3)(&v12, v4) & 1) != 0);
  }

  if (v6 - 4 != a1)
  {
    *a1 = *(v6 - 4);
    *(a1 + 1) = *(v6 - 1);
  }

  *(v6 - 4) = v12;
  *(v6 - 1) = *(&v12 + 1);
  return v6;
}

int *std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,std::pair<unsigned int,unsigned long> *,BOOL (*&)(std::pair<unsigned int,unsigned long> const&,std::pair<unsigned int,unsigned long> const&)>(int *a1, unint64_t a2, uint64_t (**a3)(int *, __int128 *))
{
  v6 = 0;
  v13 = *a1;
  do
  {
    v6 += 4;
  }

  while (((*a3)(&a1[v6], &v13) & 1) != 0);
  v7 = &a1[v6];
  if (v6 == 4)
  {
    do
    {
      if (v7 >= a2)
      {
        break;
      }

      a2 -= 16;
    }

    while (((*a3)(a2, &v13) & 1) == 0);
  }

  else
  {
    do
    {
      a2 -= 16;
    }

    while (!(*a3)(a2, &v13));
  }

  v8 = &a1[v6];
  if (v7 < a2)
  {
    v9 = a2;
    do
    {
      v10 = *v8;
      *v8 = *v9;
      *v9 = v10;
      v11 = *(v8 + 1);
      *(v8 + 1) = *(v9 + 8);
      *(v9 + 8) = v11;
      do
      {
        ++v8;
      }

      while (((*a3)(v8, &v13) & 1) != 0);
      do
      {
        v9 -= 16;
      }

      while (!(*a3)(v9, &v13));
    }

    while (v8 < v9);
  }

  result = (v8 - 1);
  if (v8 - 1 != a1)
  {
    *a1 = *(v8 - 4);
    *(a1 + 1) = *(v8 - 1);
  }

  *(v8 - 4) = v13;
  *(v8 - 1) = *(&v13 + 1);
  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned long> const&,std::pair<unsigned int,unsigned long> const&),std::pair<unsigned int,unsigned long>*>(uint64_t a1, int *a2, uint64_t (**a3)(int *, int *))
{
  v6 = (a2 - a1) >> 4;
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v17 = (*a3)((a1 + 16), a1);
      v18 = (*a3)(a2 - 4, (a1 + 16));
      if (v17)
      {
        v20 = (a1 + 8);
        v19 = *a1;
        if (v18)
        {
          *a1 = *(a2 - 4);
        }

        else
        {
          *a1 = *(a1 + 16);
          *(a1 + 16) = v19;
          v20 = (a1 + 24);
          v34 = *(a1 + 8);
          *(a1 + 8) = *(a1 + 24);
          *(a1 + 24) = v34;
          if (!(*a3)(a2 - 4, (a1 + 16)))
          {
            return 1;
          }

          v19 = *(a1 + 16);
          *(a1 + 16) = *(a2 - 4);
        }

        *(a2 - 4) = v19;
        v28 = a2 - 2;
      }

      else
      {
        if (!v18)
        {
          return 1;
        }

        v26 = *(a1 + 16);
        *(a1 + 16) = *(a2 - 4);
        *(a2 - 4) = v26;
        v28 = (a1 + 24);
        v27 = *(a1 + 24);
        *(a1 + 24) = *(a2 - 1);
        *(a2 - 1) = v27;
        if (!(*a3)((a1 + 16), a1))
        {
          return 1;
        }

        v29 = *a1;
        *a1 = *(a1 + 16);
        *(a1 + 16) = v29;
        v20 = (a1 + 8);
      }

      v35 = *v20;
      *v20 = *v28;
      *v28 = v35;
      return 1;
    }

    if (v6 != 4)
    {
      if (v6 == 5)
      {
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned long> const&,std::pair<unsigned int,unsigned long> const&),std::pair<unsigned int,unsigned long>*,0>(a1, (a1 + 16), (a1 + 32), (a1 + 48), a3);
        if ((*a3)(a2 - 4, (a1 + 48)))
        {
          v9 = *(a1 + 48);
          *(a1 + 48) = *(a2 - 4);
          *(a2 - 4) = v9;
          v10 = *(a1 + 56);
          *(a1 + 56) = *(a2 - 1);
          *(a2 - 1) = v10;
          if ((*a3)((a1 + 48), (a1 + 32)))
          {
            v11 = *(a1 + 32);
            *(a1 + 32) = *(a1 + 48);
            *(a1 + 48) = v11;
            v12 = *(a1 + 40);
            *(a1 + 40) = *(a1 + 56);
            *(a1 + 56) = v12;
            if ((*a3)((a1 + 32), (a1 + 16)))
            {
              v13 = *(a1 + 16);
              *(a1 + 16) = *(a1 + 32);
              *(a1 + 32) = v13;
              v14 = *(a1 + 24);
              *(a1 + 24) = *(a1 + 40);
              *(a1 + 40) = v14;
              if ((*a3)((a1 + 16), a1))
              {
                v15 = *a1;
                *a1 = *(a1 + 16);
                *(a1 + 16) = v15;
                v16 = *(a1 + 8);
                *(a1 + 8) = *(a1 + 24);
                *(a1 + 24) = v16;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_17;
    }

    std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned long> const&,std::pair<unsigned int,unsigned long> const&),std::pair<unsigned int,unsigned long>*,0>(a1, (a1 + 16), (a1 + 32), a2 - 4, a3);
    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if ((*a3)(a2 - 4, a1))
    {
      v7 = *a1;
      *a1 = *(a2 - 4);
      *(a2 - 4) = v7;
      v8 = *(a1 + 8);
      *(a1 + 8) = *(a2 - 1);
      *(a2 - 1) = v8;
    }

    return 1;
  }

LABEL_17:
  v21 = (a1 + 32);
  v22 = (*a3)((a1 + 16), a1);
  v23 = (*a3)((a1 + 32), (a1 + 16));
  if (v22)
  {
    v25 = (a1 + 8);
    v24 = *a1;
    if (v23)
    {
      *a1 = *(a1 + 32);
    }

    else
    {
      *a1 = *(a1 + 16);
      *(a1 + 16) = v24;
      v25 = (a1 + 24);
      v36 = *(a1 + 8);
      *(a1 + 8) = *(a1 + 24);
      *(a1 + 24) = v36;
      if (!(*a3)((a1 + 32), (a1 + 16)))
      {
        goto LABEL_35;
      }

      v24 = *(a1 + 16);
      *(a1 + 16) = *(a1 + 32);
    }

    *(a1 + 32) = v24;
    v32 = (a1 + 40);
    goto LABEL_34;
  }

  if (v23)
  {
    v30 = *(a1 + 16);
    *(a1 + 16) = *(a1 + 32);
    *(a1 + 32) = v30;
    v32 = (a1 + 24);
    v31 = *(a1 + 24);
    *(a1 + 24) = *(a1 + 40);
    *(a1 + 40) = v31;
    if ((*a3)((a1 + 16), a1))
    {
      v33 = *a1;
      *a1 = *(a1 + 16);
      *(a1 + 16) = v33;
      v25 = (a1 + 8);
LABEL_34:
      v37 = *v25;
      *v25 = *v32;
      *v32 = v37;
    }
  }

LABEL_35:
  v38 = (a1 + 48);
  if ((a1 + 48) == a2)
  {
    return 1;
  }

  v39 = 0;
  v40 = 0;
  while (1)
  {
    if ((*a3)(v38, v21))
    {
      v45 = *v38;
      v41 = v39;
      while (1)
      {
        v42 = a1 + v41;
        *(v42 + 48) = *(a1 + v41 + 32);
        *(v42 + 56) = *(a1 + v41 + 40);
        if (v41 == -32)
        {
          break;
        }

        v41 -= 16;
        if (((*a3)(&v45, (v42 + 16)) & 1) == 0)
        {
          v43 = a1 + v41 + 48;
          goto LABEL_43;
        }
      }

      v43 = a1;
LABEL_43:
      *v43 = v45;
      *(v43 + 8) = *(&v45 + 1);
      if (++v40 == 8)
      {
        return v38 + 4 == a2;
      }
    }

    v21 = v38;
    v39 += 16;
    v38 += 4;
    if (v38 == a2)
    {
      return 1;
    }
  }
}

uint64_t std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned long> const&,std::pair<unsigned int,unsigned long> const&),std::pair<unsigned int,unsigned long>*,std::pair<unsigned int,unsigned long>*>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int (**a4)(uint64_t, uint64_t))
{
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = (a1 + 16 * v9);
      do
      {
        std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned long> const&,std::pair<unsigned int,unsigned long> const&),std::pair<unsigned int,unsigned long>*>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        if ((*a4)(v12, a1))
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          v14 = *(v12 + 8);
          *(v12 + 8) = *(a1 + 8);
          *(a1 + 8) = v14;
          std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned long> const&,std::pair<unsigned int,unsigned long> const&),std::pair<unsigned int,unsigned long>*>(a1, a4, v8, a1);
        }

        v12 += 16;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v15 = a2 - 16;
      do
      {
        v16 = *a1;
        v17 = *(a1 + 8);
        v18 = std::__floyd_sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned long> const&,std::pair<unsigned int,unsigned long> const&),std::pair<unsigned int,unsigned long>*>(a1, a4, v8);
        if (v15 == v18)
        {
          *v18 = v16;
          *(v18 + 8) = v17;
        }

        else
        {
          *v18 = *v15;
          *(v18 + 8) = *(v15 + 8);
          *v15 = v16;
          *(v15 + 8) = v17;
          std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned long> const&,std::pair<unsigned int,unsigned long> const&),std::pair<unsigned int,unsigned long>*>(a1, v18 + 16, a4, (v18 + 16 - a1) >> 4);
        }

        v15 -= 16;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned long> const&,std::pair<unsigned int,unsigned long> const&),std::pair<unsigned int,unsigned long>*>(uint64_t result, unsigned int (**a2)(uint64_t, uint64_t), uint64_t a3, __int128 *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v20 = v4;
    v21 = v5;
    v7 = a4;
    v8 = result;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (a4 - result) >> 4)
    {
      v12 = (a4 - result) >> 3;
      v13 = v12 + 1;
      v14 = result + 16 * (v12 + 1);
      v15 = v12 + 2;
      if (v12 + 2 < a3 && (*a2)(v14, v14 + 16))
      {
        v14 += 16;
        v13 = v15;
      }

      result = (*a2)(v14, v7);
      if ((result & 1) == 0)
      {
        v19 = *v7;
        do
        {
          v16 = v14;
          *v7 = *v14;
          *(v7 + 1) = *(v14 + 8);
          if (v9 < v13)
          {
            break;
          }

          v17 = (2 * v13) | 1;
          v14 = v8 + 16 * v17;
          v18 = 2 * v13 + 2;
          if (v18 < a3)
          {
            if ((*a2)(v8 + 16 * v17, v14 + 16))
            {
              v14 += 16;
              v17 = v18;
            }
          }

          result = (*a2)(v14, &v19);
          v7 = v16;
          v13 = v17;
        }

        while (!result);
        *v16 = v19;
        *(v16 + 8) = *(&v19 + 1);
      }
    }
  }

  return result;
}

uint64_t std::__floyd_sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned long> const&,std::pair<unsigned int,unsigned long> const&),std::pair<unsigned int,unsigned long>*>(uint64_t a1, unsigned int (**a2)(uint64_t, uint64_t), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = a1 + 16 * v6;
    v9 = v8 + 16;
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 < a3)
    {
      v12 = v8 + 32;
      if ((*a2)(v8 + 16, v8 + 32))
      {
        v9 = v12;
        v10 = v11;
      }
    }

    *a1 = *v9;
    *(a1 + 8) = *(v9 + 8);
    a1 = v9;
    v6 = v10;
  }

  while (v10 <= v7);
  return v9;
}

uint64_t std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned long> const&,std::pair<unsigned int,unsigned long> const&),std::pair<unsigned int,unsigned long>*>(uint64_t result, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t), uint64_t a4)
{
  v6 = a4 - 2;
  if (a4 >= 2)
  {
    v14 = v4;
    v15 = v5;
    v8 = result;
    v9 = v6 >> 1;
    v10 = result + 16 * (v6 >> 1);
    v11 = (a2 - 16);
    result = (*a3)(v10, a2 - 16);
    if (result)
    {
      v13 = *v11;
      do
      {
        v12 = v10;
        *v11 = *v10;
        *(v11 + 1) = *(v10 + 8);
        if (!v9)
        {
          break;
        }

        v9 = (v9 - 1) >> 1;
        v10 = v8 + 16 * v9;
        result = (*a3)(v10, &v13);
        v11 = v12;
      }

      while ((result & 1) != 0);
      *v12 = v13;
      *(v12 + 8) = *(&v13 + 1);
    }
  }

  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>>>::find<unsigned int>(void *a1, unsigned int *a2)
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
      v5 = v3 % v2.i32[0];
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
      if (*(result + 4) == v3)
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

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>>>::__erase_unique<unsigned int>(void *a1, unsigned int *a2)
{
  result = std::__hash_table<std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>>>::find<unsigned int>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>>>::erase(a1, result);
    return 1;
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::__unordered_map_hasher<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::hash<EQKit::StemStretch::Key>,std::equal_to<EQKit::StemStretch::Key>,true>,std::__unordered_map_equal<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::equal_to<EQKit::StemStretch::Key>,std::hash<EQKit::StemStretch::Key>,true>,std::allocator<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int *a2)
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
      v5 = v2 % v3.i32[0];
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

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void EQKit::Font::STIXCollection::setupRequiredFontInfos(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 138543362;
  v2 = a1;
  _os_log_error_impl(&dword_26C6F3000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "#STIX failed to download fonts: %{public}@", &v1, 0xCu);
}

BOOL EQKit::Unicode::isPseudoScript(EQKit::Unicode *this)
{
  v1 = this;
  if (EQKit::Unicode::pseudoScriptSet(void)::onceToken != -1)
  {
    EQKit::Unicode::isPseudoScript();
  }

  v2 = *(EQKit::Unicode::pseudoScriptSet(void)::set + 8);
  if (!v2)
  {
    goto LABEL_11;
  }

  v3 = EQKit::Unicode::pseudoScriptSet(void)::set + 8;
  do
  {
    v4 = *(v2 + 28);
    v5 = v4 >= v1;
    v6 = v4 < v1;
    if (v5)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * v6);
  }

  while (v2);
  if (v3 == EQKit::Unicode::pseudoScriptSet(void)::set + 8 || *(v3 + 28) > v1)
  {
LABEL_11:
    v3 = EQKit::Unicode::pseudoScriptSet(void)::set + 8;
  }

  return v3 != EQKit::Unicode::pseudoScriptSet(void)::set + 8;
}

uint64_t EQKit::Unicode::variationSelector(EQKit::Unicode *this)
{
  if ((this - 917760) >= 0xF0)
  {
    v1 = 0;
  }

  else
  {
    v1 = this - 917743;
  }

  if (this >> 4 == 4064)
  {
    return (this - 65023);
  }

  else
  {
    return v1;
  }
}

void *std::set<unsigned int>::set[abi:nn200100]<unsigned int const*>(void *a1, unsigned int *a2, unsigned int *a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      std::__tree<unsigned int>::__emplace_hint_unique_key_args<unsigned int,unsigned int const&>(a1, v4, v6++);
    }

    while (v6 != a3);
  }

  return a1;
}

uint64_t std::__tree<unsigned int>::__emplace_hint_unique_key_args<unsigned int,unsigned int const&>(void *a1, uint64_t *a2, unsigned int *a3)
{
  v3 = *std::__tree<unsigned int>::__find_equal<unsigned int>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *std::__tree<unsigned int>::__find_equal<unsigned int>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 7), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 7) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 28);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 7))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 28);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t EQKitPseudoUnitLength::EQKitPseudoUnitLength(uint64_t a1, uint64_t *a2)
{
  *a1 = 1;
  *(a1 + 8) = 0;
  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:v3];
  v5 = [v4 stringByTrimmingCharactersInSet:{objc_msgSend(MEMORY[0x277CCA900], "whitespaceCharacterSet")}];
  v6 = [objc_alloc(MEMORY[0x277CCAC80]) initWithString:v5];
  if ([v6 scanString:@"+" intoString:0])
  {
    v7 = 2;
  }

  else if ([v6 scanString:@"-" intoString:0])
  {
    v7 = 3;
  }

  else
  {
    if ([v6 isAtEnd])
    {
      *(a1 + 16) = 0;
      goto LABEL_12;
    }

    v7 = 1;
  }

  *(a1 + 16) = v7;
LABEL_12:
  v8 = [objc_msgSend(v6 "string")];
  std::string::basic_string[abi:nn200100]<0>(&v42, [objc_msgSend(v8 stringByTrimmingCharactersInSet:{objc_msgSend(MEMORY[0x277CCA900], "whitespaceCharacterSet")), "UTF8String"}]);

  std::string::basic_string[abi:nn200100]<0>(v40, "height");
  std::string::basic_string[abi:nn200100]<0>(v38, "depth");
  std::string::basic_string[abi:nn200100]<0>(__p, "width");
  if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v42;
  }

  else
  {
    v9 = v42.__r_.__value_.__r.__words[0];
  }

  if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v42.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v42.__r_.__value_.__l.__size_;
  }

  if ((v41 & 0x80u) == 0)
  {
    v11 = v40;
  }

  else
  {
    v11 = v40[0];
  }

  if ((v41 & 0x80u) == 0)
  {
    v12 = v41;
  }

  else
  {
    v12 = v40[1];
  }

  if (!v12)
  {
    v16 = 0;
LABEL_44:
    v17 = 1;
    goto LABEL_61;
  }

  v13 = v9 + size;
  if (size >= v12)
  {
    v18 = *v11;
    v19 = size;
    v20 = v9;
    do
    {
      v21 = v19 - v12;
      if (v21 == -1)
      {
        break;
      }

      v22 = memchr(v20, v18, v21 + 1);
      if (!v22)
      {
        break;
      }

      v23 = v22;
      if (!memcmp(v22, v11, v12))
      {
        if (v23 != v13)
        {
          v16 = v23 - v9;
          if (v23 - v9 != -1)
          {
            goto LABEL_44;
          }
        }

        break;
      }

      v20 = (v23 + 1);
      v19 = v13 - (v23 + 1);
    }

    while (v19 >= v12);
  }

  if ((v39 & 0x80u) == 0)
  {
    v14 = v38;
  }

  else
  {
    v14 = v38[0];
  }

  if ((v39 & 0x80u) == 0)
  {
    v12 = v39;
  }

  else
  {
    v12 = v38[1];
  }

  if (!v12)
  {
    v16 = 0;
LABEL_52:
    v17 = 2;
    goto LABEL_61;
  }

  if (size >= v12)
  {
    v24 = *v14;
    v25 = size;
    v26 = v9;
    do
    {
      v27 = v25 - v12;
      if (v27 == -1)
      {
        break;
      }

      v28 = memchr(v26, v24, v27 + 1);
      if (!v28)
      {
        break;
      }

      v29 = v28;
      if (!memcmp(v28, v14, v12))
      {
        if (v29 != v13)
        {
          v16 = v29 - v9;
          if (v29 - v9 != -1)
          {
            goto LABEL_52;
          }
        }

        break;
      }

      v26 = (v29 + 1);
      v25 = v13 - (v29 + 1);
    }

    while (v25 >= v12);
  }

  if ((v37 & 0x80u) == 0)
  {
    v15 = __p;
  }

  else
  {
    v15 = __p[0];
  }

  if ((v37 & 0x80u) == 0)
  {
    v12 = v37;
  }

  else
  {
    v12 = __p[1];
  }

  if (!v12)
  {
    v16 = 0;
LABEL_60:
    v17 = 3;
LABEL_61:
    *(a1 + 20) = v17;
    std::string::erase(&v42, v16, v12);
    goto LABEL_62;
  }

  if (size >= v12)
  {
    v31 = *v15;
    v32 = v9;
    do
    {
      if (size - v12 == -1)
      {
        break;
      }

      v33 = memchr(v32, v31, size - v12 + 1);
      if (!v33)
      {
        break;
      }

      v34 = v33;
      if (!memcmp(v33, v15, v12))
      {
        if (v34 != v13)
        {
          v16 = v34 - v9;
          if (v34 - v9 != -1)
          {
            goto LABEL_60;
          }
        }

        break;
      }

      v32 = (v34 + 1);
      size = v13 - (v34 + 1);
    }

    while (size >= v12);
  }

  *(a1 + 20) = 0;
LABEL_62:
  EQKitLength::EQKitLength(&v35, &v42, 1);
  *a1 = v35;
  if (*(a1 + 20) && (*a1 | 2) != 6)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  if (v37 < 0)
  {
    operator delete(__p[0]);
  }

  if (v39 < 0)
  {
    operator delete(v38[0]);
  }

  if (v41 < 0)
  {
    operator delete(v40[0]);
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_26C73AF54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  _Unwind_Resume(exception_object);
}

double EQKitPseudoUnitLength::adjustedLength(EQKitPseudoUnitLength *this, double a2, double a3)
{
  v3 = *(this + 4);
  if (v3 != 1)
  {
    if (v3 == 3)
    {
      return a2 - a3;
    }

    else if (v3 == 2)
    {
      return a2 + a3;
    }

    else
    {
      return a2;
    }
  }

  return a3;
}

double EQKitPseudoUnitLength::calculatePseudoAdjustment(EQKitPseudoUnitLength *this, double a2)
{
  result = *(this + 1) * a2;
  if (*this == 4)
  {
    return result / 100.0;
  }

  return result;
}

double EQKitPseudoUnitLength::adjustedPseudoLength(EQKitPseudoUnitLength *this, double a2, double a3, double a4, double a5)
{
  v5 = *(this + 5);
  switch(v5)
  {
    case 3:
      v6 = *(this + 1) * a5;
      break;
    case 2:
      v6 = *(this + 1) * a4;
      break;
    case 1:
      v6 = *(this + 1) * a3;
      break;
    default:
      return a2;
  }

  if (*this == 4)
  {
    v6 = v6 / 100.0;
  }

  v7 = *(this + 4);
  if (v7 != 1)
  {
    if (v7 == 3)
    {
      return a2 - v6;
    }

    if (v7 == 2)
    {
      return v6 + a2;
    }

    return a2;
  }

  return v6;
}

double EQKitPseudoUnitLength::resolveToAbsoluteLength(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v9 = a3;
  v11 = EQKitLength::resolveToAbsoluteWithUnitProviderAndDefault(a1, a2, a3);
  if (*(a1 + 20))
  {

    return EQKitPseudoUnitLength::adjustedPseudoLength(a1, v9, a4, a5, a6);
  }

  else
  {
    v13 = *(a1 + 16);
    switch(v13)
    {
      case 1:
        return v11;
      case 3:
        return v9 - v11;
      case 2:
        return v11 + v9;
    }

    return v9;
  }
}

BOOL EQKit::ScriptLevel::fromString(const std::string *a1, uint64_t a2)
{
  std::istringstream::basic_istringstream[abi:nn200100](v9, a1, 8);
  v3 = std::istream::peek() << 24;
  v5 = v3 == 721420288 || v3 == 754974720;
  v8 = 0x7FFFFFFFFFFFFFFFLL;
  MEMORY[0x26D6A9910](v9, &v8);
  v6 = *(&v11[1].__locale_ + *(v9[0] - 24)) & 7;
  if (v6 == 2)
  {
    *a2 = v8;
    *(a2 + 8) = v5;
  }

  v9[0] = *MEMORY[0x277D82820];
  *(v9 + *(v9[0] - 24)) = *(MEMORY[0x277D82820] + 24);
  v10 = MEMORY[0x277D82878] + 16;
  if (v12 < 0)
  {
    operator delete(v11[7].__locale_);
  }

  v10 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v11);
  std::istream::~istream();
  MEMORY[0x26D6A99E0](&v13);
  return v6 == 2;
}

void sub_26C73BB50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  std::istringstream::~istringstream(&a11, MEMORY[0x277D82820]);
  MEMORY[0x26D6A99E0](&a26);
  _Unwind_Resume(a1);
}

uint64_t EQKit::ScriptLevel::resolveWithBase(EQKit::ScriptLevel *this, uint64_t a2)
{
  if (!*(this + 8))
  {
    a2 = 0;
  }

  return a2 + *this;
}

uint64_t std::istringstream::~istringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 16) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 16) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 24));

  return std::istream::~istream();
}

void sub_26C73BCE8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void EQKitGroupAlignmentContext::addRow(uint64_t *a1, uint64_t *a2)
{
  v5 = a1[1];
  v4 = a1 + 1;
  v6 = v5 - *a1;
  if (v6 != a1[4] - a1[3])
  {
    EQKitGroupAlignmentContext::addRow(v4, a1, &v17);
    v6 = v17;
  }

  v8 = *a2;
  v7 = a2[1];
  v9 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a2) >> 3);
  if (v9 > v6 >> 3)
  {
    v17 = 0;
    std::vector<double>::resize(a1, v9, &v17);
    v17 = 0;
    std::vector<double>::resize(a1 + 3, v9, &v17);
  }

  if (v7 != v8)
  {
    v10 = 0;
    v11 = 0;
    if (v9 <= 1)
    {
      v9 = 1;
    }

    do
    {
      v12 = *a2;
      v13 = *a1;
      v14 = EQKitAlignmentGroup::leftWidth((*a2 + v10));
      if (*(v13 + 8 * v11) >= v14)
      {
        v14 = *(v13 + 8 * v11);
      }

      *(*a1 + 8 * v11) = v14;
      v15 = a1[3];
      v16 = EQKitAlignmentGroup::rightWidth((v12 + v10));
      if (*(v15 + 8 * v11) >= v16)
      {
        v16 = *(v15 + 8 * v11);
      }

      *(a1[3] + 8 * v11++) = v16;
      v10 += 24;
    }

    while (v9 != v11);
  }
}

void EQKitGroupAlignmentContext::leftSpaceRequiredForGroup(EQKitGroupAlignmentContext *this, const EQKitAlignmentGroup *a2, unint64_t a3)
{
  v5 = (*(this + 1) - *this) >> 3;
  if (v5 <= a3)
  {
    EQKitGroupAlignmentContext::leftSpaceRequiredForGroup();
    v5 = v6;
  }

  if (v5 > a3)
  {
    EQKitAlignmentGroup::leftWidth(a2);
  }
}

void EQKitGroupAlignmentContext::rightSpaceRequiredForGroup(EQKitGroupAlignmentContext *this, const EQKitAlignmentGroup *a2, unint64_t a3)
{
  v5 = (*(this + 4) - *(this + 3)) >> 3;
  if (v5 <= a3)
  {
    EQKitGroupAlignmentContext::rightSpaceRequiredForGroup();
    v5 = v6;
  }

  if (v5 > a3)
  {
    EQKitAlignmentGroup::rightWidth(a2);
  }
}

double EQKitGroupAlignmentContext::widthOfGroupsAfterIndex(EQKitGroupAlignmentContext *this, uint64_t a2)
{
  v5 = *this;
  v4 = *(this + 1);
  v6 = v4 - *this;
  if (v6 != *(this + 4) - *(this + 3))
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CGFloat EQKitGroupAlignmentContext::widthOfGroupsAfterIndex(NSUInteger) const") description:{@"EQKitGroupAlignmentContext.mm", 54, @"should have the same number of left widths as right widths"}];
    v5 = *this;
    v4 = *(this + 1);
    v6 = v4 - *this;
  }

  v7 = a2 + 1;
  result = 0.0;
  if (a2 + 1 < (v6 >> 3))
  {
    v9 = (v5 + 8 * v7);
    v10 = 0.0;
    if (v9 != v4)
    {
      v11 = 0.0;
      do
      {
        v12 = *v9++;
        v11 = v12 + v11;
      }

      while (v9 != v4);
      v10 = v11 + 0.0;
    }

    v13 = *(this + 4);
    v14 = (8 * v7 + *(this + 3));
    if (v14 != v13)
    {
      v15 = 0.0;
      do
      {
        v16 = *v14++;
        v15 = v16 + v15;
      }

      while (v14 != v13);
      result = v15;
    }

    return v10 + result;
  }

  return result;
}

void OUTLINED_FUNCTION_0_1()
{
  v4 = *v3;
  v5 = *v2;
  *v1 = *v2;
  *v0 = (v4 - v5) >> 3;
}

uint64_t EQKitGroupAlignmentContext::addRow(void *a1, void *a2, void *a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  result = [v6 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void EQKitGroupAlignmentContext::addRow(const std::vector<EQKitAlignmentGroup> &)") description:{@"EQKitGroupAlignmentContext.mm", 21, @"should have the same number of left widths as right widths"}];
  *a3 = *a1 - *a2;
  return result;
}

void EQKitGroupAlignmentContext::leftSpaceRequiredForGroup()
{
  OUTLINED_FUNCTION_1_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CGFloat EQKitGroupAlignmentContext::leftSpaceRequiredForGroup(const EQKitAlignmentGroup & description:{NSUInteger) const"), @"EQKitGroupAlignmentContext.mm", 42, @"invalid group index"}];
  OUTLINED_FUNCTION_0_1();
}

void EQKitGroupAlignmentContext::rightSpaceRequiredForGroup()
{
  OUTLINED_FUNCTION_1_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CGFloat EQKitGroupAlignmentContext::rightSpaceRequiredForGroup(const EQKitAlignmentGroup & description:{NSUInteger) const"), @"EQKitGroupAlignmentContext.mm", 48, @"invalid group index"}];
  OUTLINED_FUNCTION_0_1();
}

uint64_t EQKitAlignmentGroup::EQKitAlignmentGroup(uint64_t result, int a2)
{
  *result = 0;
  *(result + 8) = a2;
  *(result + 16) = 0x7FEFFFFFFFFFFFFFLL;
  return result;
}

{
  *result = 0;
  *(result + 8) = a2;
  *(result + 16) = 0x7FEFFFFFFFFFFFFFLL;
  return result;
}

double EQKitAlignmentGroup::EQKitAlignmentGroup(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

double EQKitAlignmentGroup::increaseWidth(EQKitAlignmentGroup *this, double a2)
{
  result = *this + a2;
  *this = result;
  return result;
}

double EQKitAlignmentGroup::saveAlignmentPoint(EQKitAlignmentGroup *this, double a2)
{
  result = *this + a2;
  *(this + 2) = result;
  return result;
}

double EQKitAlignmentGroup::leftWidth(EQKitAlignmentGroup *this)
{
  result = *(this + 2);
  if (result == 1.79769313e308)
  {
    v2 = *(this + 2);
    if ((v2 - 3) >= 2)
    {
      result = 0.0;
      if (v2 == 2)
      {
        return *this * 0.5;
      }
    }

    else
    {
      return *this;
    }
  }

  return result;
}

double EQKitAlignmentGroup::rightWidth(EQKitAlignmentGroup *this)
{
  v1 = *this;
  v2 = *(this + 2);
  if (v2 == 1.79769313e308)
  {
    v3 = *(this + 2);
    v2 = *this;
    if ((v3 - 3) >= 2)
    {
      v2 = 0.0;
      if (v3 == 2)
      {
        v2 = v1 * 0.5;
      }
    }
  }

  return v1 - v2;
}

uint64_t EQKitUtilGetDeviceColorSpace()
{
  if (EQKitUtilGetDeviceColorSpace::onceToken != -1)
  {
    EQKitUtilGetDeviceColorSpace_cold_1();
  }

  return EQKitUtilGetDeviceColorSpace::sDeviceColor;
}

CGColorSpaceRef __EQKitUtilGetDeviceColorSpace_block_invoke()
{
  result = CGColorSpaceCreateDeviceRGB();
  EQKitUtilGetDeviceColorSpace::sDeviceColor = result;
  return result;
}

uint64_t EQKitUtilGetFakeContext()
{
  if (EQKitUtilGetFakeContext::onceToken != -1)
  {
    EQKitUtilGetFakeContext_cold_1();
  }

  return EQKitUtilGetFakeContext::sFakeContext;
}

CGContextRef __EQKitUtilGetFakeContext_block_invoke()
{
  if (EQKitUtilGetDeviceColorSpace::onceToken != -1)
  {
    EQKitUtilGetDeviceColorSpace_cold_1();
  }

  result = CGBitmapContextCreate(0, 1uLL, 1uLL, 8uLL, 4uLL, EQKitUtilGetDeviceColorSpace::sDeviceColor, 5u);
  EQKitUtilGetFakeContext::sFakeContext = result;
  return result;
}

uint64_t EQKitUtilDynamicCast(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (objc_opt_isKindOfClass())
  {
    return a2;
  }

  return 0;
}

void *EQKitUtilProtocolCast(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  if ([a2 conformsToProtocol:a1])
  {
    return a2;
  }

  return 0;
}

CFTypeRef EQKitUtilCFTypeCast(uint64_t a1, CFTypeRef cf)
{
  if (!cf)
  {
    return 0;
  }

  if (CFGetTypeID(cf) == a1)
  {
    return cf;
  }

  return 0;
}

uint64_t EQKitUtilUTF32CharFromString(void *a1)
{
  v2 = [a1 length];
  if ((v2 - 1) > 1)
  {
    return 0;
  }

  v3 = v2;
  [a1 getCharacters:&v5 range:{0, v2}];
  result = v5;
  if (v3 == 1)
  {
    return result;
  }

  if ((v5 & 0xFC00) != 0xD800)
  {
    return 0;
  }

  if ((v6 & 0xFC00) == 0xDC00)
  {
    return v6 + (v5 << 10) - 56613888;
  }

  return 0;
}

uint64_t EQKitUtilNewStringFromUTF32Char(int a1)
{
  if ((a1 - 0x10000) >> 20)
  {
    v2 = 1;
    LOWORD(v1) = a1;
  }

  else
  {
    v1 = ((a1 - 0x10000) >> 10) | 0xFFFFD800;
    v4[1] = a1 & 0x3FF | 0xDC00;
    v2 = 2;
  }

  v4[0] = v1;
  return [objc_alloc(MEMORY[0x277CCACA8]) initWithCharacters:v4 length:v2];
}

void sub_26C73CE38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *__p, uint64_t a53, int a54, __int16 a55, char a56, char a57)
{
  if (a57 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZL3mapv_block_invoke()
{
  v26 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:nn200100]<0>(v0, "baselineAdjust");
  v1 = 3;
  std::string::basic_string[abi:nn200100]<0>(v2, "radicalBaselineOffset");
  v3 = 4;
  std::string::basic_string[abi:nn200100]<0>(v4, "radicalCenterXOffset");
  v5 = 5;
  std::string::basic_string[abi:nn200100]<0>(v6, "radicalMaxXOffset");
  v7 = 6;
  std::string::basic_string[abi:nn200100]<0>(v8, "radicalAdditionalLeftPadding");
  v9 = 7;
  std::string::basic_string[abi:nn200100]<0>(v10, "radicalAdditionalRightPadding");
  v11 = 8;
  std::string::basic_string[abi:nn200100]<0>(v12, "scriptSuperHAdjust");
  v13 = 9;
  std::string::basic_string[abi:nn200100]<0>(v14, "scriptSubHAdjust");
  v15 = 10;
  std::string::basic_string[abi:nn200100]<0>(v16, "scriptOverHAdjust");
  v17 = 11;
  std::string::basic_string[abi:nn200100]<0>(v18, "scriptUnderHAdjust");
  v19 = 12;
  std::string::basic_string[abi:nn200100]<0>(v20, "stemStretch");
  v21 = 13;
  std::string::basic_string[abi:nn200100]<0>(v22, "accentOverHAdjust");
  v23 = 1;
  std::string::basic_string[abi:nn200100]<0>(v24, "accentUnderHAdjust");
  v25 = 2;
  operator new();
}

void sub_26C73D118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  MEMORY[0x26D6A9A30](v63, 0x1020C4062D53EE8);
  v65 = &a63;
  v66 = -416;
  v67 = &a63;
  while (1)
  {
    v68 = *v67;
    v67 -= 32;
    if (v68 < 0)
    {
      operator delete(*(v65 - 23));
    }

    v65 = v67;
    v66 += 32;
    if (!v66)
    {
      _Unwind_Resume(a1);
    }
  }
}

void *std::map<std::string const,EQKit::Font::CharacterProperty::Enum>::map[abi:nn200100]<std::pair<std::string const,EQKit::Font::CharacterProperty::Enum> const*>(void *a1, const void **a2, const void **a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      std::__tree<std::__value_type<std::string const,EQKitMathMLElement::Enum>,std::__map_value_compare<std::string const,std::__value_type<std::string const,EQKitMathMLElement::Enum>,std::less<std::string const>,true>,std::allocator<std::__value_type<std::string const,EQKitMathMLElement::Enum>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,EQKitMathMLElement::Enum> const&>(a1, v4, v6);
      v6 += 4;
    }

    while (v6 != a3);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKitLength>,std::__map_value_compare<EQKit::Font::CharacterProperty::Map::Key,std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKitLength>,std::less<EQKit::Font::CharacterProperty::Map::Key>,true>,std::allocator<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKitLength>>>::__emplace_unique_key_args<EQKit::Font::CharacterProperty::Map::Key,std::piecewise_construct_t const&,std::tuple<EQKit::Font::CharacterProperty::Map::Key const&>,std::tuple<>>(uint64_t a1, uint64_t a2)
{
  result = *std::__tree<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKitLength>,std::__map_value_compare<EQKit::Font::CharacterProperty::Map::Key,std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKitLength>,std::less<EQKit::Font::CharacterProperty::Map::Key>,true>,std::allocator<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKitLength>>>::__find_equal<EQKit::Font::CharacterProperty::Map::Key>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKitLength>,std::__map_value_compare<EQKit::Font::CharacterProperty::Map::Key,std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKitLength>,std::less<EQKit::Font::CharacterProperty::Map::Key>,true>,std::allocator<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKitLength>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<EQKit::Font::CharacterProperty::Map::Key const&>,std::tuple<>>();
  }

  return result;
}

void *std::__tree<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKitLength>,std::__map_value_compare<EQKit::Font::CharacterProperty::Map::Key,std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKitLength>,std::less<EQKit::Font::CharacterProperty::Map::Key>,true>,std::allocator<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKitLength>>>::__find_equal<EQKit::Font::CharacterProperty::Map::Key>(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!EQKit::Font::CharacterProperty::Map::Key::operator<(a3, (v4 + 4)))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!EQKit::Font::CharacterProperty::Map::Key::operator<((v7 + 4), a3))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

void sub_26C73D3F0(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKitLength>,void *>>>::operator()[abi:nn200100](v3, v2);
  _Unwind_Resume(a1);
}

void *EQKit::Font::CharacterProperty::Map::Key::Key(void *a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = (a1 + 1);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v3, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    v3->__r_.__value_.__r.__words[2] = *(a2 + 24);
    *&v3->__r_.__value_.__l.__data_ = v4;
  }

  return a1;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKitLength>,void *>>>::operator()[abi:nn200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 63) < 0)
    {
      operator delete(__p[5]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::__tree<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>,std::__map_value_compare<EQKit::Font::CharacterProperty::Map::Key,std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>,std::less<EQKit::Font::CharacterProperty::Map::Key>,true>,std::allocator<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>>>::__emplace_unique_key_args<EQKit::Font::CharacterProperty::Map::Key,std::piecewise_construct_t const&,std::tuple<EQKit::Font::CharacterProperty::Map::Key const&>,std::tuple<>>(uint64_t a1, uint64_t a2)
{
  result = *std::__tree<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKitLength>,std::__map_value_compare<EQKit::Font::CharacterProperty::Map::Key,std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKitLength>,std::less<EQKit::Font::CharacterProperty::Map::Key>,true>,std::allocator<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKitLength>>>::__find_equal<EQKit::Font::CharacterProperty::Map::Key>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>,std::__map_value_compare<EQKit::Font::CharacterProperty::Map::Key,std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>,std::less<EQKit::Font::CharacterProperty::Map::Key>,true>,std::allocator<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<EQKit::Font::CharacterProperty::Map::Key const&>,std::tuple<>>();
  }

  return result;
}

void sub_26C73D5E8(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKitLength>,void *>>>::operator()[abi:nn200100](v3, v2);
  _Unwind_Resume(a1);
}

void *_ZNSt3__14pairIKN5EQKit4Font17CharacterProperty3Map3KeyENS1_11StemStretch6Config5EntryEEC2B8nn200100IJRS6_EJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNSE_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSN_IJXspT2_EEEE(void *a1, uint64_t *a2)
{
  v3 = EQKit::Font::CharacterProperty::Map::Key::Key(a1, *a2);
  EQKit::StemStretch::Config::Entry::Entry((v3 + 4));
  return a1;
}

void sub_26C73D638(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t EQKit::StemStretch::Config::Entry::Entry(uint64_t this)
{
  *this = 0;
  *(this + 8) = 0;
  *(this + 16) = *(this + 16) & 0xF0 | 1;
  return this;
}

{
  *this = 0;
  *(this + 8) = 0;
  *(this + 16) = *(this + 16) & 0xF0 | 1;
  return this;
}

uint64_t EQKit::StemStretch::Config::Entry::fromDictionary(EQKit::StemStretch::Config::Entry *this, NSDictionary *a2, EQKit::StemStretch::Config::Entry *a3)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    __p = 0uLL;
    v22 = 0;
    v5 = _stringForKey(this, @"analyzeMethod", &__p);
    if (!v5)
    {
      goto LABEL_27;
    }

    if (SHIBYTE(v22) < 0)
    {
      if (*(&__p + 1) != 11 || (*__p == 0x7543726F7272694DLL ? (v7 = *(__p + 3) == 0x6576727543726F72) : (v7 = 0), !v7))
      {
        if (*(&__p + 1) != 13)
        {
          goto LABEL_25;
        }

        p_p = __p;
        goto LABEL_15;
      }
    }

    else
    {
      if (HIBYTE(v22) != 11)
      {
        if (HIBYTE(v22) != 13)
        {
          goto LABEL_25;
        }

        p_p = &__p;
LABEL_15:
        v8 = *p_p;
        v9 = *(p_p + 5);
        if (v8 == 0x6C656C6C61726150 && v9 == 0x736D6574536C656CLL)
        {
          v11 = a2[2].super.isa & 0xFC | 1;
LABEL_26:
          LOBYTE(a2[2].super.isa) = v11;
LABEL_27:
          if (_stringForKey(this, @"minStemLength", &__p))
          {
            EQKitLength::EQKitLength(&v20, &__p, 0);
            *&a2->super.isa = v20;
            v5 = 1;
          }

          v13 = _stringForKey(this, @"axis", &__p);
          v14 = HIBYTE(v22);
          if (!v13)
          {
LABEL_59:
            if ((v14 & 0x80) == 0)
            {
              return v5;
            }

LABEL_60:
            operator delete(__p);
            return v5;
          }

          if (v22 < 0)
          {
            if (*(&__p + 1) == 10 && *__p == 0x746E6F7A69726F68 && *(__p + 8) == 27745)
            {
LABEL_56:
              v18 = a2[2].super.isa & 0xF3 | 4;
              goto LABEL_57;
            }

            if (*(&__p + 1) == 8 && *__p == 0x6C61636974726576)
            {
              goto LABEL_50;
            }

            if (*(&__p + 1) != 4)
            {
              v5 = 1;
              goto LABEL_60;
            }

            v17 = __p;
          }

          else
          {
            if (HIBYTE(v22) != 4)
            {
              if (HIBYTE(v22) != 8)
              {
                if (HIBYTE(v22) != 10)
                {
                  return 1;
                }

                if (__p != 0x746E6F7A69726F68 || WORD4(__p) != 27745)
                {
                  return 1;
                }

                goto LABEL_56;
              }

              if (__p != 0x6C61636974726576)
              {
                return 1;
              }

LABEL_50:
              v18 = a2[2].super.isa & 0xF3 | 8;
              goto LABEL_57;
            }

            v17 = &__p;
          }

          if (*v17 != 1701736302)
          {
LABEL_58:
            v5 = 1;
            goto LABEL_59;
          }

          v18 = LOBYTE(a2[2].super.isa) | 0xC;
LABEL_57:
          LOBYTE(a2[2].super.isa) = v18;
          goto LABEL_58;
        }

LABEL_25:
        v11 = a2[2].super.isa & 0xFC;
        goto LABEL_26;
      }

      if (__p != 0x7543726F7272694DLL || *(&__p + 3) != 0x6576727543726F72)
      {
        goto LABEL_25;
      }
    }

    v11 = a2[2].super.isa & 0xFC | 2;
    goto LABEL_26;
  }

  return 0;
}

void sub_26C73D9D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _stringForKey(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = [a1 objectForKey:a2];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v6 = [v4 UTF8String];
    v7 = strlen(v6);
    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = v7;
    if (v7 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v11) = v7;
    if (v7)
    {
      memmove(&__dst, v6, v7);
    }

    *(&__dst + v8) = 0;
    if (*(a3 + 23) < 0)
    {
      operator delete(*a3);
    }

    *a3 = __dst;
    *(a3 + 16) = v11;
  }

  else
  {
    MEMORY[0x26D6A9880](a3, "");
  }

  return isKindOfClass & 1;
}

uint64_t EQKit::StemStretch::Key::Key(uint64_t this)
{
  *this = 0;
  *(this + 8) = 0;
  *(this + 16) = -1;
  *(this + 20) = 0;
  *(this + 24) = 0;
  return this;
}

{
  *this = 0;
  *(this + 8) = 0;
  *(this + 16) = -1;
  *(this + 20) = 0;
  *(this + 24) = 0;
  return this;
}

EQKit::StemStretch::Key *EQKit::StemStretch::Key::Key(EQKit::StemStretch::Key *this, CTFontRef font, __int16 a3, int a4, double a5)
{
  *(this + 1) = 0;
  *(this + 8) = a3;
  *(this + 5) = a4;
  *(this + 3) = a5;
  if (font)
  {
    *this = CTFontCopyPostScriptName(font);
    *(this + 1) = CTFontGetSize(font);
  }

  return this;
}

EQKit::StemStretch::Key *EQKit::StemStretch::Key::Key(EQKit::StemStretch::Key *this, const EQKit::StemStretch::Key *a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + 1) = *(a2 + 1);
  *(this + 8) = *(a2 + 8);
  *(this + 5) = *(a2 + 5);
  *(this + 3) = *(a2 + 3);
  if (v3)
  {
    CFRetain(v3);
  }

  return this;
}

uint64_t EQKit::StemStretch::Key::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *a1;
    if (*a1)
    {
      CFRelease(v4);
    }

    v5 = *a2;
    *a1 = *a2;
    if (v5)
    {
      CFRetain(v5);
    }

    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 20) = *(a2 + 20);
    *(a1 + 24) = *(a2 + 24);
  }

  return a1;
}

void EQKit::StemStretch::Key::~Key(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

BOOL EQKit::StemStretch::Key::operator==(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16) || *(a1 + 20) != *(a2 + 20) || *(a1 + 24) != *(a2 + 24) || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v2 = *a1;
  v3 = *a2;
  if (*a1 == v3)
  {
    return 1;
  }

  result = 0;
  if (v2 && v3)
  {
    return CFStringCompare(v2, v3, 0) == kCFCompareEqualTo;
  }

  return result;
}

BOOL EQKit::StemStretch::Key::operator<(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (v2 < v3)
  {
    return 1;
  }

  if (v2 != v3)
  {
    return 0;
  }

  v5 = *(a1 + 20);
  v6 = *(a2 + 20);
  if (v5 < v6)
  {
    return 1;
  }

  if (v5 != v6)
  {
    return 0;
  }

  v7 = *(a1 + 24);
  v8 = *(a2 + 24);
  if (v7 < v8)
  {
    return 1;
  }

  if (v7 != v8)
  {
    return 0;
  }

  v9 = *(a1 + 8);
  v10 = *(a2 + 8);
  if (v9 < v10)
  {
    return 1;
  }

  if (v9 != v10)
  {
    return 0;
  }

  v11 = *a1;
  v12 = *a2;
  if (v11 && v12)
  {
    return CFStringCompare(v11, v12, 0) == kCFCompareLessThan;
  }

  if (v11)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12 == 0;
  }

  return !v13;
}

const __CFString *EQKit::StemStretch::Key::newFont(CGFloat *this)
{
  result = *this;
  if (result)
  {
    v3 = CTFontDescriptorCreateWithNameAndSize(result, this[1]);
    v4 = CTFontCreateWithFontDescriptor(v3, this[1], 0);
    CFRelease(v3);
    return v4;
  }

  return result;
}

EQKit::StemStretch::Key *EQKit::StemStretch::Key::keyForFontAndCharacter@<X0>(EQKit::StemStretch::Key *this@<X0>, const __CTFont *a2@<X1>, double a3@<D0>, uint64_t a4@<X8>)
{
  characters = a2;
  glyphs = -1;
  if (this)
  {
    v6 = a2;
    v7 = this;
    this = CTFontGetGlyphsForCharacters(this, &characters, &glyphs, 1);
    if (this)
    {
      return EQKit::StemStretch::Key::Key(a4, v7, glyphs, v6, a3);
    }
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = -1;
  *(a4 + 20) = 0;
  *(a4 + 24) = 0;
  return this;
}

EQKit::StemStretch::Glyph *EQKit::StemStretch::Glyph::Glyph(EQKit::StemStretch::Glyph *this, const EQKit::StemStretch::Key *a2, const EQKit::StemStretch::Config::Entry *a3)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = *(a2 + 3);
  *(this + 24) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  v6 = EQKit::StemStretch::Key::newFont(a2);
  *(this + 1) = EQKitPath::newPathFromGlyphWithFont(*(a2 + 8), v6, v7);
  if (!a3)
  {
    goto LABEL_6;
  }

  if (*a3)
  {
    Size = CTFontGetSize(v6);
    *(this + 2) = EQKitLength::resolveToAbsoluteWithSizeAndRule(a3, Size, *(a2 + 3));
  }

  v9 = *(a3 + 16) & 3;
  if (v9 == 2)
  {
    v10 = EQKit::StemStretch::Glyph::analyzeMirrorCurve(this, a3);
LABEL_8:
    if (v10)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (v9 == 1)
  {
LABEL_6:
    v10 = EQKit::StemStretch::Glyph::analyzeParallelStems(this, a3);
    goto LABEL_8;
  }

LABEL_9:
  *this = 0;
  v11 = *(this + 1);
  if (v11)
  {
    EQKitPath::~EQKitPath(v11);
    MEMORY[0x26D6A9A30]();
  }

  *(this + 1) = 0;
LABEL_12:
  if (v6)
  {
    CFRelease(v6);
  }

  return this;
}

void sub_26C73DFF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = *(v2 + 48);
  if (v4)
  {
    *(v2 + 56) = v4;
    operator delete(v4);
  }

  std::vector<EQKit::StemStretch::FeatureCluster>::__destroy_vector::operator()[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t EQKit::StemStretch::Glyph::analyzeParallelStems(EQKit::StemStretch::Glyph *this, const EQKit::StemStretch::Config::Entry *a2)
{
  v2 = *(this + 1);
  if (v2)
  {
    EQKit::StemStretch::FeatureRange::FeatureRange(v4, v2, 1);
  }

  return 0;
}

void sub_26C73E300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  EQKit::StemStretch::FeatureRange::~FeatureRange(va);
  _Unwind_Resume(a1);
}

BOOL EQKit::StemStretch::Glyph::analyzeMirrorCurve(EQKit::StemStretch::Glyph *this, const EQKit::StemStretch::Config::Entry *a2)
{
  if (a2)
  {
    v3 = (*(a2 + 16) >> 2) & 3;
  }

  else
  {
    v3 = 0;
  }

  if (v3 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  v5 = *(this + 1);
  if (!v5)
  {
    return 0;
  }

  v32 = 0.0;
  CurveMirrorParallelWithAxis = EQKitPath::findCurveMirrorParallelWithAxis(v5, v4, &v32);
  v7 = CurveMirrorParallelWithAxis != 0x7FFFFFFFFFFFFFFFLL;
  if (CurveMirrorParallelWithAxis != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = CurveMirrorParallelWithAxis;
    v9 = EQKitPath::endPointIndexForElement(*(this + 1), CurveMirrorParallelWithAxis);
    v10 = EQKitPath::addLineToAfterElement(*(this + 1), v8);
    v11 = *(this + 1);
    EQKitPath::extractPath(v11);
    v12 = (*(v11 + 1) + 16 * v9);
    v13 = *v12;
    v14 = v12[1];
    v30 = 0;
    v31 = 0;
    v29 = &v30;
    std::vector<EQKit::StemStretch::FeatureCluster>::push_back[abi:nn200100](this + 3, &v29);
    std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::destroy(&v29, v30);
    v30 = 0;
    v31 = 0;
    v29 = &v30;
    std::vector<EQKit::StemStretch::FeatureCluster>::push_back[abi:nn200100](this + 3, &v29);
    std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::destroy(&v29, v30);
    v15 = *(this + 3);
    v16 = *(this + 4);
    v29 = 0;
    v17 = *(this + 7);
    if (v17 >= *(this + 8))
    {
      v18 = std::vector<EQKit::StemStretch::Stem>::__emplace_back_slow_path<EQKit::StemStretch::Stem>(this + 48, &v29);
    }

    else
    {
      *v17 = 0;
      v18 = (v17 + 1);
    }

    *(this + 7) = v18;
    v19 = *(this + 1);
    EQKitPath::extractPath(v19);
    *this = v4;
    v20 = *(v19 + 2) - *(v19 + 1);
    if (v20)
    {
      v21 = 0;
      v22 = 0;
      v23 = v16 - 24;
      v24 = v20 >> 4;
      if (v24 <= 1)
      {
        v25 = 1;
      }

      else
      {
        v25 = v24;
      }

      do
      {
        if (v9 == v22)
        {
          if (v32 <= 0.0)
          {
            v29 = v9;
            goto LABEL_31;
          }

          v29 = v9;
        }

        else if (v10 == v22)
        {
          if (v32 > 0.0)
          {
            v29 = v10;
LABEL_31:
            v27 = v23;
            goto LABEL_32;
          }

          v29 = v10;
        }

        else
        {
          v26 = *(v19 + 1);
          if (v3 > 1)
          {
            if (*(v26 + v21 + 8) > v14)
            {
LABEL_30:
              v29 = v22;
              goto LABEL_31;
            }
          }

          else if (*(v26 + v21) > v13)
          {
            goto LABEL_30;
          }

          v29 = v22;
        }

        v27 = v15;
LABEL_32:
        std::__tree<unsigned long>::__emplace_unique_key_args<unsigned long,unsigned long const&>(v27, &v29);
        ++v22;
        v21 += 16;
      }

      while (v25 != v22);
    }
  }

  return v7;
}