void sub_18E75F9C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va2, 8);
  _Unwind_Resume(a1);
}

void __NSATSGlyphStorageInitBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = [a1 zone];
  v13 = v12;
  *(a1 + *MEMORY[0x1E6965608]) = a6;
  *(a1 + 112) = a2;
  *(a1 + 120) = a3;
  *(a1 + 128) = a4;
  *(a1 + 136) = a5;
  if (a6 <= 0)
  {
    v14 = -(-a6 & 0x7F);
  }

  else
  {
    v14 = a6 & 0x7F;
  }

  *(a1 + 224) = 0;
  v15 = a6 - v14 + 128;
  if (*(a1 + 144) < v15)
  {
    v16 = MEMORY[0x1E6965600];
    v17 = *(a1 + *MEMORY[0x1E6965600]);
    if (v17)
    {
      NSZoneFree(v12, v17);
    }

    *(a1 + *v16) = NSZoneCalloc(v13, v15, 0x1EuLL);
    v18 = *(a1 + *v16);
    if (!v18)
    {
      *(a1 + 144) = 0;
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Failed to allocate buffer for text layout processing."];
      v18 = *(a1 + *v16);
    }

    v19 = MEMORY[0x1E6965620];
    *(a1 + *MEMORY[0x1E6965620]) = v18 + 16 * v15;
    v20 = *(a1 + *v19) + 8 * v15;
    v21 = MEMORY[0x1E6965618];
    *(a1 + *MEMORY[0x1E6965618]) = v20;
    *(a1 + *MEMORY[0x1E6965610]) = *(a1 + *v21) + 4 * v15;
    *(a1 + 144) = v15;
  }

  v22 = MEMORY[0x1E69655F8];
  v23 = *(a1 + *MEMORY[0x1E69655F8]);
  if (v23)
  {
    NSZoneFree(v13, v23);
    *(a1 + *v22) = 0;
  }

  v24 = *(a1 + 192);
  if (v24)
  {
    NSZoneFree(v13, v24);
    *(a1 + 192) = 0;
  }

  *(a1 + 96) = 0;
  if (a3 != a5)
  {
    *(a1 + 224) |= 0x10u;
  }

  v25 = *(a1 + 160);
  if (v25)
  {
    CFSetRemoveAllValues(v25);
  }

  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
}

uint64_t OUTLINED_FUNCTION_8_1()
{
  v7 = v0[7];
  v8 = v0[8];
  v9 = *(v0 + 9);
  v10 = *(v0 + 10);
  v11 = v0[6];

  return [v1 isPoint:v9 withinHorizontalDistance:v10 onRect:v11 leftDistance:v7 rightDistance:{v8, v4, v5, v6, v3}];
}

uint64_t OUTLINED_FUNCTION_39_0()
{

  return [v1 objectForKey:v0];
}

const void *getColor(uint64_t a1, uint64_t a2)
{
  v43[5] = *MEMORY[0x1E69E9840];
  if (*(a1 + 2816) > 0)
  {
    return 0;
  }

  v5 = _NSRTFGetColor(a1 + 536, a2);
  v6 = _NSTextScalingTypeForCurrentEnvironment();
  if (!v5)
  {
    return 0;
  }

  v2 = *(v5 + 24);
  if (!v2)
  {
    v7 = v6;
    v8 = *(v5 + 32);
    if (v8)
    {
      if (strlen(v8) <= 0x63)
      {
        v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:*(v5 + 32)];
        if (v9)
        {
          v10 = v9;
          v11 = NSSelectorFromString(v9);
          if (v11 && (v12 = v11, -[NSString hasSuffix:](NSStringFromSelector(v11), "hasSuffix:", @"Color")) && (ColorClass = __NSTextGraphicsContextProviderGetColorClass(v7), v14 = -[objc_class methodSignatureForSelector:](ColorClass, "methodSignatureForSelector:", v12), v15 = [v14 methodReturnType], objc_msgSend(v14, "numberOfArguments") == 2) && v15 && *v15 == 64 && !v15[1])
          {
            v2 = [(objc_class *)ColorClass performSelector:v12];

            if (v2)
            {
              goto LABEL_76;
            }
          }

          else
          {
          }
        }
      }
    }

    v16 = *(v5 + 40);
    if (v16 > 5)
    {
      goto LABEL_62;
    }

    v17 = **(&unk_1E72687E8 + v16);
    if (!v17)
    {
      goto LABEL_62;
    }

    v18 = CGColorSpaceCreateWithName(v17);
    if (!v18)
    {
      goto LABEL_62;
    }

    v19 = v18;
    NumberOfComponents = CGColorSpaceGetNumberOfComponents(v18);
    if (!NumberOfComponents || ((v21 = *(v5 + 44), NumberOfComponents != v21) ? (v22 = NumberOfComponents + 1 == v21) : (v22 = 1), !v22))
    {
LABEL_61:
      CFRelease(v19);
      goto LABEL_62;
    }

    if (v21 >= 1)
    {
      v23 = 0;
      v24 = (v5 + 48);
      v25 = v43;
      v26 = *(v5 + 44);
      while (1)
      {
        v28 = *v24++;
        v27 = v28;
        if (v28 > 0x186A0)
        {
          if (v23)
          {
            if (v27 >= 0)
            {
              v29 = 100000;
            }

            else
            {
              v29 = 0;
            }

            if (v23 != 2)
            {
              goto LABEL_40;
            }

            v27 = v29;
          }

          else
          {
            v30 = *(v5 + 40);
            v31 = v30 > 4;
            v32 = (1 << v30) & 0x13;
            if (!v31 && v32 != 0)
            {
              v23 = 1;
              goto LABEL_40;
            }

            if (v27 >= 0)
            {
              v27 = 100000;
            }

            else
            {
              v27 = 0;
            }
          }

          v23 = 2;
        }

LABEL_40:
        *v25++ = v27 / 100000.0;
        if (!--v26)
        {
          v34 = v23 == 1;
          goto LABEL_46;
        }
      }
    }

    v34 = 0;
LABEL_46:
    if (NumberOfComponents == v21)
    {
      v43[NumberOfComponents] = 1.0;
    }

    if (!v34)
    {
      goto LABEL_57;
    }

    v35 = *(v5 + 40);
    if (v35)
    {
      if (v35 != 4)
      {
        if (v35 == 1)
        {
          v36 = MEMORY[0x1E695F108];
          goto LABEL_55;
        }

LABEL_57:
        if (!v19)
        {
          goto LABEL_62;
        }

        v38 = CGColorCreate(v19, v43);
        if (!v38)
        {
          goto LABEL_61;
        }

        v39 = v38;
        v2 = [(objc_class *)getNSColorClass_3() colorWithCGColor:v38];
        CFRelease(v39);
        CFRelease(v19);
        if (v2)
        {
          goto LABEL_76;
        }

LABEL_62:
        v40 = *(v5 + 4);
        v41 = *(v5 + 8);
        if (v40 == v41)
        {
          if (v40 == *(v5 + 12))
          {
            if (v40 <= 0)
            {
              if (onceToken != -1)
              {
                getColor_cold_2();
              }

              v42 = &_black;
LABEL_73:
              v2 = *v42;
              if (!*v42)
              {
                v40 = *(v5 + 4);
                v41 = *(v5 + 8);
                goto LABEL_75;
              }

LABEL_76:
              *(v5 + 24) = CFRetain(v2);
              return v2;
            }

            v41 = *(v5 + 4);
            if (v40 == 255)
            {
              if (onceToken != -1)
              {
                getColor_cold_1();
              }

              v42 = &_white;
              goto LABEL_73;
            }
          }

          else
          {
            v41 = *(v5 + 4);
          }
        }

LABEL_75:
        v2 = colorFromRTFRGB(a1, v40, v41, *(v5 + 12));
        goto LABEL_76;
      }

      v36 = MEMORY[0x1E695F0E0];
    }

    else
    {
      v36 = MEMORY[0x1E695F110];
    }

LABEL_55:
    v37 = *v36;
    if (*v36)
    {
      CFRelease(v19);
      v19 = CGColorSpaceCreateWithName(v37);
    }

    goto LABEL_57;
  }

  return v2;
}

Class initNSColor()
{
  __NSGetFrameworkReference(0, 0);
  result = objc_getClass("NSColor");
  classNSColor = result;
  if (!result)
  {
    initNSColor_cold_1();
  }

  getNSColorClass[0] = NSColorFunction;
  return result;
}

Class initNSColor_0()
{
  __NSGetFrameworkReference(0, 0);
  result = objc_getClass("NSColor");
  classNSColor_0 = result;
  if (!result)
  {
    initNSColor_cold_1_0();
  }

  getNSColorClass_0[0] = NSColorFunction_0;
  return result;
}

Class initNSColor_1()
{
  __NSGetFrameworkReference(0, 0);
  result = objc_getClass("NSColor");
  classNSColor_1 = result;
  if (!result)
  {
    initNSColor_cold_1_1();
  }

  getNSColorClass_1 = NSColorFunction_1;
  return result;
}

Class initNSColor_2()
{
  __NSGetFrameworkReference(0, 0);
  result = objc_getClass("NSColor");
  classNSColor_2 = result;
  if (!result)
  {
    initNSColor_cold_1_2();
  }

  getNSColorClass_2[0] = NSColorFunction_2;
  return result;
}

Class initNSColor_3()
{
  __NSGetFrameworkReference(0, 0);
  result = objc_getClass("NSColor");
  classNSColor_3 = result;
  if (!result)
  {
    initNSColor_cold_1_3();
  }

  getNSColorClass_3 = NSColorFunction_3;
  return result;
}

Class initNSColor_4()
{
  __NSGetFrameworkReference(0, 0);
  result = objc_getClass("NSColor");
  classNSColor_4 = result;
  if (!result)
  {
    initNSColor_cold_1_4();
  }

  getNSColorClass_4 = NSColorFunction_4;
  return result;
}

Class initNSColor_5()
{
  __NSGetFrameworkReference(0, 0);
  result = objc_getClass("NSColor");
  classNSColor_5 = result;
  if (!result)
  {
    initNSColor_cold_1_5();
  }

  off_1ED4DF030 = NSColorFunction_5;
  return result;
}

id initRTFColors()
{
  getNSColorClass_3();
  _white = [v0 colorWithCalibratedWhite:1.0 alpha:1.0];
  getNSColorClass_3();
  result = [v1 colorWithCalibratedWhite:0.0 alpha:1.0];
  _black = result;
  return result;
}

uint64_t processColor(_DWORD *a1, uint64_t a2, uint64_t a3, void *a4)
{
  Color = getColor(a1, a2);
  v9 = Color;
  if (a3 <= 3)
  {
    if (a3 > 1)
    {
      v11 = [a1 mutableAttributes];
      if (a3 == 2)
      {
        v14 = &NSStrokeColorAttributeName;
      }

      else
      {
        v14 = &NSUnderlineColorAttributeName;
      }

      goto LABEL_33;
    }

    if (!a3)
    {
      if (!Color)
      {
        goto LABEL_12;
      }

      if (onceToken != -1)
      {
        _rtfBlackColor_cold_1();
      }

      if ([v9 isEqual:_black])
      {
LABEL_12:
        v11 = [a1 mutableAttributes];
        v13 = &NSForegroundColorAttributeName;
LABEL_45:
        v20 = *v13;
        goto LABEL_46;
      }

      v11 = [a1 mutableAttributes];
      v24 = &NSForegroundColorAttributeName;
LABEL_55:
      v12 = *v24;
      goto LABEL_56;
    }

    if (a1 && a2 == 1)
    {
      v16 = a1[85];
      if (v16 == -1)
      {
        v16 = 80;
      }

      v17 = a1[86] / 1000.0 + v16;
      if (v17 <= 1504.69 && v17 >= 1504.0 || Color == 0)
      {
        goto LABEL_44;
      }
    }

    else if (!Color)
    {
      goto LABEL_44;
    }

    if (onceToken != -1)
    {
      _rtfWhiteColor_cold_1();
    }

    if (([v9 isEqual:_white] & 1) == 0)
    {
      v11 = [a1 mutableAttributes];
      v24 = &NSBackgroundColorAttributeName;
      goto LABEL_55;
    }

LABEL_44:
    v11 = [a1 mutableAttributes];
    v13 = &NSBackgroundColorAttributeName;
    goto LABEL_45;
  }

  if (a3 > 5)
  {
    if (a3 == 6)
    {
      if ([a1 _currentBorderIsTable])
      {
        v15 = [a1 _currentTable];
      }

      else
      {
        v15 = [a1 _currentTableCell];
      }

      v22 = v15;
      v23 = [a1 _currentBorderEdge];

      return [v22 setBorderColor:v9 forEdge:v23];
    }

    else
    {
      if (a3 == 7)
      {
        v10 = [a1 _currentTableCell];
      }

      else
      {
        v10 = [a1 _currentTable];
      }

      return [v10 setBackgroundColor:v9];
    }
  }

  if (a3 != 4)
  {
    v27 = 0.0;
    v28 = 0.0;
    v25 = 0.333333333;
    v26 = 0.0;
    [objc_msgSend(a4 "shadowColor")];
    [v9 getRed:&v28 green:&v27 blue:&v26 alpha:0];
    return [a4 setShadowColor:{-[objc_class colorWithCalibratedRed:green:blue:alpha:](getNSColorClass_3(), "colorWithCalibratedRed:green:blue:alpha:", v28, v27, v26, v25)}];
  }

  v11 = [a1 mutableAttributes];
  v14 = &NSStrikethroughColorAttributeName;
LABEL_33:
  v12 = *v14;
  if (!v9)
  {
    v20 = *v14;
LABEL_46:

    return [v11 removeObjectForKey:{v20, v12}];
  }

LABEL_56:

  return [v11 setObject:v9 forKey:v12];
}

uint64_t OUTLINED_FUNCTION_13_0()
{

  return [v0 glyphRangeForCharacterRange:v1 actualCharacterRange:{1, 0}];
}

uint64_t OUTLINED_FUNCTION_7_2(uint64_t a1, uint64_t a2)
{

  return [v2 glyphRangeForCharacterRange:a1 actualCharacterRange:{a2, 0}];
}

uint64_t OUTLINED_FUNCTION_6_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52)
{

  return [v52 appendBytes:&a52 length:a1];
}

CTLineRef OUTLINED_FUNCTION_15(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, CTTypesetterRef typesetter)
{
  v14[3] = a1;
  v14[4] = a2;
  v16.length = v14[6];
  v16.location = 0;

  return CTTypesetterCreateLine(typesetter, v16);
}

uint64_t OUTLINED_FUNCTION_29_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12)
{

  return [v12 appendBytes:&a12 length:a1];
}

void flushCharacters(uint64_t a1, char a2)
{
  v2 = *(a1 + 328);
  if (v2)
  {
    *(a1 + 328) = 0;
    v4 = (a1 + 72);
    if (*(a1 + 2808) == 1)
    {
      v5 = CFStringCreateWithCharactersNoCopy(0, v4, v2, *MEMORY[0x1E695E498]);
    }

    else
    {
      v7 = CFStringCreateWithBytes(0, v4, v2, *(a1 + 368), 0);
      v5 = v7;
      if (v2 >= 2 && (*(a1 + 410) & 0x40) != 0 && !v7)
      {
        v8 = v2 - 1;
        v9 = CFStringCreateWithBytes(0, v4, v8, *(a1 + 368), 0);
        v5 = v9;
        if ((a2 & 1) == 0)
        {
          if (v9)
          {
            *(a1 + 72) = *(v4 + v8);
            *(a1 + 328) = 1;
            goto LABEL_11;
          }
        }
      }
    }

    if (!v5)
    {
LABEL_12:
      *(a1 + 2808) = 0;
      return;
    }

LABEL_11:
    [a1 processString:v5];
    CFRelease(v5);
    goto LABEL_12;
  }
}

uint64_t _NSRTFGetToken(_DWORD *a1)
{
  _RTFGetToken(a1);
  v2 = a1[557];
  if (v2 == 2)
  {
    while (1)
    {
      v3 = a1[558];
      v4 = v3 > 0xD;
      v5 = (1 << v3) & 0x2401;
      if (v4 || v5 == 0)
      {
        break;
      }

      _RTFGetToken(a1);
      v2 = a1[557];
      if (v2 != 2)
      {
        goto LABEL_9;
      }
    }

    v2 = 2;
  }

LABEL_9:
  v7 = a1[566];
  if (v7 == 2)
  {
    if (!v2)
    {
      return v2;
    }

    goto LABEL_23;
  }

  if (v7 != 1)
  {
    if (!v7 && v2 == 1 && !a1[558])
    {
      v8 = 1;
LABEL_24:
      a1[566] = v8;
      return v2;
    }

    return v2;
  }

  if (a1[559] == 52 && v2 == 3 && a1[558] == 6)
  {
    v8 = 2;
    goto LABEL_24;
  }

  if (v2 != 1 || a1[558])
  {
LABEL_23:
    v8 = 0;
    goto LABEL_24;
  }

  return v2;
}

uint64_t __NSTextLayoutManagerGetLayoutFragmentForPosition(void *a1, id *a2, char a3, double a4, double a5)
{
  [*a2 size];
  v11 = v10;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3052000000;
  v25 = __Block_byref_object_copy__2;
  v26 = __Block_byref_object_dispose__2;
  v27 = 0;
  v12 = [a2[2] endLocation];
  v13 = v11 < 10000000.0 && v11 > 0.0;
  v14 = 1.79769313e308;
  if (v13)
  {
    v14 = v11;
  }

  __NSTextLayoutManagerFillSoftInvalidationToLocation(a1, v12, v14);
  if ([a2[2] isNotEmpty])
  {
    v15 = a2[2];
    LOBYTE(v21) = a3;
    v16 = [objc_msgSend(v15 "endLocation")];
    v17 = a1[11];
    if (v16)
    {
      [v17 enumerateTextLayoutFragmentFromLocation:objc_msgSend(v15 options:"location") usingBlock:{2, &v20}];
    }

    else
    {
      [v17 enumerateTextLayoutFragmentInTextRange:v15 options:2 usingBlock:&v20];
    }
  }

  v18 = v23[5];
  _Block_object_dispose(&v22, 8);
  return v18;
}

void sub_18E7631C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _NSRTFSetClassCallback(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a2 <= 4)
  {
    *(result + 8 * a2 + 1136) = a3;
  }

  return result;
}

void groupClass(_DWORD *a1)
{
  flushCharacters(a1, 1);
  v2 = a1[692];
  if (v2 == 1)
  {

    [a1 _popState];
  }

  else if (!v2)
  {

    [a1 _pushState];
  }
}

uint64_t _NSRTFRouteToken(uint64_t result)
{
  v1 = result;
  v2 = *(result + 2228);
  if (v2 >= 5)
  {
    result = _NSRTFPanic(result, "Unknown class %ld: %s (reader malfunction)", *(result + 2228), (result + 1200));
    v2 = *(v1 + 2228);
  }

  v3 = v2;
  if (v2 == 3)
  {
    if (*(v1 + 2232) == 3)
    {
      v4 = *(v1 + 2236);
      v5 = ReadFontTbl;
      if (v4 > 43)
      {
        switch(v4)
        {
          case ',':
            v5 = ReadPictGroup;
            goto LABEL_21;
          case '-':
            v5 = ReadObjGroup;
            goto LABEL_21;
          case '[':
            v5 = ReadExpandedColorTbl;
            goto LABEL_21;
        }
      }

      else
      {
        switch(v4)
        {
          case 0:
LABEL_21:
            v6 = v5;
            v7 = v1;
            goto LABEL_22;
          case 6:
            v5 = ReadColorTbl;
            goto LABEL_21;
          case 7:
            v5 = ReadStyleSheet;
            goto LABEL_21;
        }
      }
    }
  }

  else if (v2 > 4)
  {
    return result;
  }

  v6 = *(v1 + 8 * v3 + 1136);
  if (!v6)
  {
    return result;
  }

  v7 = *v1;
LABEL_22:

  return v6(v7);
}

void *_NSRTFSetInput(void *result, uint64_t a2, uint64_t a3)
{
  result[1] = a2;
  result[2] = a3;
  result[3] = 0;
  result[4] = 0;
  return result;
}

uint64_t ReadFontTbl(uint64_t a1)
{
  v2 = 0;
  v3 = (a1 + 1200);
  v4 = -1;
  *&v22[1] = *MEMORY[0x1E69E9840];
  do
  {
    _NSRTFGetToken(a1);
    v5 = *(a1 + 2228);
    if (v4 != -1)
    {
      goto LABEL_3;
    }

    if (v5 != 2)
    {
      goto LABEL_11;
    }

    v6 = *(a1 + 2232);
    if (v6 == 59)
    {
      _NSRTFGetToken(a1);
      v5 = *(a1 + 2228);
LABEL_3:
      if (v5 != 2)
      {
        goto LABEL_11;
      }

      v6 = *(a1 + 2232);
    }

    v7 = 0;
    v5 = 2;
    if (v6 > 0x20 || ((1 << v6) & 0x100002600) == 0)
    {
      goto LABEL_14;
    }

    _NSRTFGetToken(a1);
    v5 = *(a1 + 2228);
LABEL_11:
    if (v5 == 1)
    {
      if (*(a1 + 2232) == 1)
      {
        break;
      }

      v5 = 1;
      v7 = 1;
LABEL_14:
      if ((v4 & 0x8000000000000000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    v7 = 0;
    if ((v4 & 0x8000000000000000) == 0)
    {
LABEL_15:
      if (!v4)
      {
        goto LABEL_25;
      }

      v8 = 0;
      goto LABEL_33;
    }

LABEL_18:
    if (v5 != 3)
    {
      if (!v7 || *(a1 + 2232))
      {
LABEL_24:
        _NSRTFPanic(a1, "%s: Cannot determine format", "ReadFontTbl");
        v8 = 0;
        v4 = -1;
        goto LABEL_33;
      }

LABEL_25:
      if (v5 == 2)
      {
        v9 = *(a1 + 2232);
        if (v9 > 0x20 || ((1 << v9) & 0x100002600) == 0)
        {
LABEL_31:
          _NSRTFPanic(a1, "%s: missing {", "ReadFontTbl");
LABEL_32:
          _NSRTFGetToken(a1);
          v4 = 0;
          v8 = 1;
          goto LABEL_33;
        }

        _NSRTFGetToken(a1);
        v5 = *(a1 + 2228);
      }

      if (v5 == 1 && !*(a1 + 2232))
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }

    if (*(a1 + 2232) != 12 || *(a1 + 2236) != 10)
    {
      goto LABEL_24;
    }

    v8 = 0;
    v4 = 1;
LABEL_33:
    v2 = NSZoneMalloc(0, 0x48uLL);
    if (!v2)
    {
      _NSRTFPanic(a1, "%s: cannot allocate font entry", "ReadFontTbl");
    }

    v10 = *(a1 + 1096);
    *(a1 + 1096) = v2;
    *v2 = 0;
    v2[1] = 0;
    *&v11 = 0xFFFFFFFFLL;
    *(&v11 + 1) = 0xFFFFFFFFLL;
    *(v2 + 1) = v11;
    v2[4] = 0xFFFFFFFF00000000;
    v2[5] = v10;
    v2[6] = 0;
    *(v2 + 16) = -1;
    while (1)
    {
      while (1)
      {
        v12 = *(a1 + 2228);
        if (v12 > 2)
        {
          break;
        }

        if (v12 == 1)
        {
          v12 = *(a1 + 2232);
          if (v12)
          {
            if (v12 == 1)
            {
              goto LABEL_82;
            }

            goto LABEL_63;
          }

          _NSRTFSkipGroup(a1);
          goto LABEL_73;
        }

        if (v12 != 2)
        {
          goto LABEL_63;
        }

        if (*(a1 + 2232) == 59)
        {
          goto LABEL_78;
        }

        v13 = 0;
        v14 = 2;
        while (1)
        {
          switch(v14)
          {
            case 1:
              v15 = *(a1 + 2232);
              if (v15 < 2)
              {
LABEL_64:
                v18 = &v21[v13];
                goto LABEL_67;
              }

              break;
            case 2:
              v15 = *(a1 + 2232);
              if (v15 == 59)
              {
                goto LABEL_64;
              }

              break;
            case 4:
              goto LABEL_64;
            default:
              v15 = *(a1 + 2232);
              break;
          }

          v21[v13] = v15;
          _NSRTFGetToken(a1);
          if (v13 == 1022)
          {
            break;
          }

          v14 = *(a1 + 2228);
          ++v13;
        }

        v18 = v22;
LABEL_67:
        *v18 = 0;
        v19 = _NSRTFStrSave(v21);
        *v2 = v19;
        if (!v19)
        {
          _NSRTFPanic(a1, "%s: cannot allocate font name", "ReadFontTbl");
        }
      }

      if (v12 != 3)
      {
        break;
      }

      v16 = *(a1 + 2232);
      switch(v16)
      {
        case 4:
          goto LABEL_72;
        case 12:
          if (*(a1 + 2236) == 10)
          {
            *(v2 + 4) = *(a1 + 2240);
          }

          break;
        case 23:
          v17 = *(a1 + 2236);
          if (v17 > 2)
          {
            if ((v17 - 3) < 2)
            {
              *(v2 + 8) = *(a1 + 2240);
            }
          }

          else if (v17)
          {
            if (v17 == 1)
            {
              *(v2 + 7) = *(a1 + 2240);
            }

            else if (v17 == 2)
            {
              *(v2 + 9) = *(a1 + 2240);
            }
          }

          else
          {
            *(v2 + 6) = *(a1 + 2240);
          }

          break;
        default:
          _NSRTFMsg(a1, "%s: unknown token %s\n", "ReadFontTbl", v3);
LABEL_72:
          *(v2 + 5) = *(a1 + 2236);
          break;
      }

LABEL_73:
      _NSRTFGetToken(a1);
    }

    if (v12 != 4)
    {
LABEL_63:
      _NSRTFMsg(a1, "%s: unknown token %s\n", "ReadFontTbl", v3);
      goto LABEL_73;
    }

LABEL_78:
    if (v8)
    {
      _NSRTFGetToken(a1);
      if (*(a1 + 2228) != 1 || (v12 = *(a1 + 2232), v12 != 1))
      {
        _NSRTFPanic(a1, "%s: missing }", "ReadFontTbl");
        v12 = *(a1 + 2228);
      }
    }

LABEL_82:
    ;
  }

  while (v12 != 4);
  if (v2 && *(v2 + 4) == -1)
  {
    _NSRTFPanic(a1, "%s: missing font number", "ReadFontTbl");
  }

  *(a1 + 32) = *(a1 + 24);
  return _NSRTFRouteToken(a1);
}

char *_NSRTFStrSave(const char *a1)
{
  v2 = strlen(a1);
  v3 = NSZoneMalloc(0, v2 + 1);
  v4 = v3;
  if (v3)
  {
    strlcpy(v3, a1, v2 + 1);
  }

  return v4;
}

void sub_18E763AA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ReadColorTbl(uint64_t a1)
{
  v2 = 0;
  v3 = *(a1 + 1104);
  while (1)
  {
    _NSRTFGetToken(a1);
    v4 = *(a1 + 2228);
    if (v4 != 2)
    {
      break;
    }

    v5 = *(a1 + 2232);
    v6 = v5 > 0x20;
    v7 = (1 << v5) & 0x100002600;
    if (!v6 && v7 != 0)
    {
      _NSRTFGetToken(a1);
      v4 = *(a1 + 2228);
      break;
    }

LABEL_10:
    if (v3 && (v9 = *(a1 + 1104)) != 0)
    {
      while (v2 != *v9)
      {
        v9 = v9[2];
        if (!v9)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
LABEL_14:
      v9 = NSZoneMalloc(0, 0x48uLL);
      if (!v9)
      {
        _NSRTFPanic(a1, "%s: cannot allocate color entry", "ReadColorTbl");
      }

      *v9 = v2;
      v10 = *(a1 + 1104);
      *(v9 + 3) = -1;
      *(v9 + 4) = -1;
      *(v9 + 10) = -1;
      v9[2] = v10;
      v9[3] = 0;
      v9[4] = 0;
      *(a1 + 1104) = v9;
    }

    ++v2;
    while (1)
    {
      v11 = *(a1 + 2228);
      if (v11 != 3)
      {
        break;
      }

      if (*(a1 + 2232) != 5)
      {
        goto LABEL_29;
      }

      v12 = *(a1 + 2236);
      switch(v12)
      {
        case 2:
          *(v9 + 3) = *(a1 + 2240);
          break;
        case 1:
          *(v9 + 2) = *(a1 + 2240);
          break;
        case 0:
          *(v9 + 1) = *(a1 + 2240);
          break;
      }

      _NSRTFGetToken(a1);
    }

    if (v11 != 2 || *(a1 + 2232) != 59)
    {
LABEL_29:
      _NSRTFPanic(a1, "%s: malformed entry", "ReadColorTbl");
      continue;
    }
  }

  if (v4 != 1 || *(a1 + 2232) != 1)
  {
    goto LABEL_10;
  }

  *(a1 + 32) = *(a1 + 24);

  return _NSRTFRouteToken(a1);
}

void sub_18E763EA8(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 96), 8);
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

uint64_t ReadExpandedColorTbl(uint64_t a1)
{
  v2 = 0;
  *&v21[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 1104);
LABEL_2:
  _NSRTFGetToken(a1);
  v4 = *(a1 + 2228);
  if (v4 == 2)
  {
    v5 = *(a1 + 2232);
    v6 = v5 > 0x20;
    v7 = (1 << v5) & 0x100002600;
    if (v6 || v7 == 0)
    {
      goto LABEL_10;
    }

    _NSRTFGetToken(a1);
    v4 = *(a1 + 2228);
  }

  if (v4 != 1 || *(a1 + 2232) != 1)
  {
LABEL_10:
    if (v3)
    {
      for (i = *(a1 + 1104); i; i = i[2])
      {
        if (v2 == *i)
        {
          goto LABEL_17;
        }
      }
    }

    i = NSZoneMalloc(0, 0x48uLL);
    if (!i)
    {
      _NSRTFPanic(a1, "%s: cannot allocate color entry", "ReadColorTbl");
    }

    *i = v2;
    v10 = *(a1 + 1104);
    *(i + 3) = -1;
    *(i + 4) = -1;
    *(i + 10) = -1;
    i[2] = v10;
    i[3] = 0;
    i[4] = 0;
    *(a1 + 1104) = i;
    while (1)
    {
      while (1)
      {
LABEL_17:
        while (1)
        {
          v11 = *(a1 + 2228);
          if (v11 != 1)
          {
            break;
          }

          if (*(a1 + 2232))
          {
            goto LABEL_47;
          }

          _NSRTFSkipGroup(a1);
        }

        if (v11 != 2)
        {
          break;
        }

        if (*(a1 + 2232) == 59)
        {
          ++v2;
          goto LABEL_2;
        }

LABEL_47:
        _NSRTFGetToken(a1);
      }

      if (v11 != 3)
      {
        goto LABEL_47;
      }

      v12 = *(a1 + 2232);
      if (v12 == 5)
      {
        if (*(a1 + 2236) != 22)
        {
          goto LABEL_47;
        }

        _NSRTFGetToken(a1);
        if (!i[4])
        {
          v14 = *(a1 + 2228);
          if (v14 == 2)
          {
            for (j = 0; ; ++j)
            {
              switch(v14)
              {
                case 1:
                  v16 = *(a1 + 2232);
                  if (v16 < 2)
                  {
LABEL_50:
                    v17 = &v20[j];
                    goto LABEL_52;
                  }

                  break;
                case 2:
                  v16 = *(a1 + 2232);
                  if (v16 == 59)
                  {
                    goto LABEL_50;
                  }

                  break;
                case 4:
                  goto LABEL_50;
                default:
                  v16 = *(a1 + 2232);
                  break;
              }

              v20[j] = v16;
              _NSRTFGetToken(a1);
              if (j == 99)
              {
                break;
              }

              v14 = *(a1 + 2228);
            }

            v17 = v21;
LABEL_52:
            *v17 = 0;
            v18 = _NSRTFStrSave(v20);
            i[4] = v18;
            if (!v18)
            {
              _NSRTFPanic(a1, "%s: cannot allocate color name", "ReadColorTbl");
            }
          }
        }
      }

      else
      {
        if (v12 != 29)
        {
          goto LABEL_47;
        }

        *(i + 10) = *(a1 + 2236);
        _NSRTFGetToken(a1);
        if (*(a1 + 2228) == 3)
        {
          v13 = 0;
          do
          {
            if (*(a1 + 2232) != 5 || *(a1 + 2236) != 21)
            {
              break;
            }

            if (v13 <= 4)
            {
              *(i + v13++ + 12) = *(a1 + 2240);
            }

            _NSRTFGetToken(a1);
          }

          while (*(a1 + 2228) == 3);
        }

        else
        {
          LODWORD(v13) = 0;
        }

        *(i + 11) = v13;
      }
    }
  }

  *(a1 + 32) = *(a1 + 24);
  return _NSRTFRouteToken(a1);
}

void sub_18E764440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double __NSTextLayoutManagerClearTextContainerEntry(uint64_t a1)
{
  [*a1 setTextLayoutManager:0];

  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t processFont(uint64_t a1, uint64_t a2)
{
  result = _NSRTFGetFont(a1 + 536, a2);
  v24 = -1;
  if (!result)
  {
    result = NSDefaultFont();
    v5 = result;
    SystemEncoding = *(a1 + 360);
    goto LABEL_63;
  }

  v4 = result;
  v5 = *(result + 48);
  if (v5)
  {
    SystemEncoding = *(result + 64);
    goto LABEL_63;
  }

  v7 = *(result + 24);
  if (v7 < 0)
  {
    goto LABEL_44;
  }

  if (v7 > 161)
  {
    if (v7 > 185)
    {
      if (v7 > 221)
      {
        if (v7 == 222)
        {
          SystemEncoding = 1053;
          goto LABEL_54;
        }

        if (v7 == 238)
        {
          SystemEncoding = 1281;
          goto LABEL_54;
        }
      }

      else
      {
        if (v7 == 186)
        {
          SystemEncoding = 1287;
          goto LABEL_54;
        }

        if (v7 == 204)
        {
          SystemEncoding = 1282;
          goto LABEL_54;
        }
      }
    }

    else if (v7 > 176)
    {
      if (v7 == 177)
      {
        SystemEncoding = 1285;
        goto LABEL_54;
      }

      if (v7 == 178)
      {
        SystemEncoding = 1286;
        goto LABEL_54;
      }
    }

    else
    {
      if (v7 == 162)
      {
        SystemEncoding = 1284;
        goto LABEL_54;
      }

      if (v7 == 163)
      {
        SystemEncoding = 1288;
        goto LABEL_54;
      }
    }

    goto LABEL_43;
  }

  if (v7 > 129)
  {
    if (v7 > 135)
    {
      if (v7 == 136)
      {
        SystemEncoding = 1059;
        goto LABEL_54;
      }

      if (v7 == 161)
      {
        SystemEncoding = 1283;
        goto LABEL_54;
      }
    }

    else
    {
      if (v7 == 130)
      {
        SystemEncoding = 1296;
        goto LABEL_54;
      }

      if (v7 == 134)
      {
        SystemEncoding = 1057;
        goto LABEL_54;
      }
    }

LABEL_43:
    SystemEncoding = v7 - 77;
    if ((v7 - 77) <= 0x32)
    {
      goto LABEL_54;
    }

LABEL_44:
    if (*(a1 + 360) >= 0x100u && *(a1 + 336) && *(result + 36) == -1)
    {
      goto LABEL_49;
    }

    v8 = *(result + 36);
    if (v8 != -1)
    {
      if (v8 == 437)
      {
LABEL_49:
        SystemEncoding = 1280;
        goto LABEL_54;
      }

      SystemEncoding = CFStringConvertWindowsCodepageToEncoding(v8);
      v24 = SystemEncoding;
      if (SystemEncoding != -1)
      {
        goto LABEL_55;
      }
    }

    if ((*(a1 + 2809) & 1) == 0 && (v23 = *v4) != 0 && (!strcmp("GothicBBB", *v4) || !strcmp("Ryumin", v23)))
    {
      SystemEncoding = 2336;
    }

    else
    {
      if (*(a1 + 360) != 2817)
      {
        goto LABEL_78;
      }

      SystemEncoding = 2817;
    }

    goto LABEL_54;
  }

  if (v7 > 127)
  {
    if (v7 == 128)
    {
      SystemEncoding = 1056;
    }

    else
    {
      SystemEncoding = 1058;
    }

    goto LABEL_54;
  }

  if (!v7)
  {
    goto LABEL_49;
  }

  if (v7 != 2)
  {
    goto LABEL_43;
  }

  SystemEncoding = 33;
LABEL_54:
  v24 = SystemEncoding;
LABEL_55:
  if (*(a1 + 2816) > 0)
  {
    v5 = 0;
    goto LABEL_57;
  }

LABEL_78:
  v16 = *(a1 + 384);
  if (v16 >= 0.0)
  {
    [NSDefaultFont() pointSize];
  }

  v17 = [(NSRTFReader *)a1 _updateFontSizeForTextScalingIfNeeded:v16];
  v18 = v17;
  if (*v4 && (v19 = processFontName(*v4, *(a1 + 360), &v24, v17)) != 0 || (v20 = *(v4 + 8)) != 0 && (v19 = processFontName(v20, *(a1 + 360), &v24, v18)) != 0 || ((v21 = *(v4 + 20) - 1, v21 > 5) ? (v22 = @"Helvetica") : (v22 = off_1E7268818[v21]), (v19 = [NSFont fontWithName:v22 size:v18]) != 0 || *(v4 + 20) == 3 && (v19 = [UIFont fontWithName:@"Courier New" size:v18]) != 0 || (v19 = [(UIFont *)NSFont systemFontOfSize:v18]) != 0))
  {
    v5 = v19;
  }

  else
  {
    v5 = NSDefaultFont();
    if (!v5)
    {
      raiseRTFException("Cannot find any font to use");
    }
  }

  SystemEncoding = v24;
  if (v24 != -1)
  {
LABEL_57:
    if (CFStringIsEncodingAvailable(SystemEncoding))
    {
      goto LABEL_60;
    }

    SystemEncoding = CFStringGetSystemEncoding();
    if (SystemEncoding != -1)
    {
      goto LABEL_60;
    }
  }

  SystemEncoding = *(a1 + 360);
LABEL_60:
  v9 = v5;
  if (!v5)
  {
    v9 = NSDefaultFont();
  }

  result = CFRetain(v9);
  *(v4 + 48) = result;
  *(v4 + 64) = SystemEncoding;
LABEL_63:
  v10 = SystemEncoding - 1056;
  v11 = (SystemEncoding == 1057) << 6;
  if (SystemEncoding == 2336)
  {
    v11 = 64;
  }

  if (v10 > 3 || v10 == 1)
  {
    v13 = v11;
  }

  else
  {
    v13 = 64;
  }

  if (SystemEncoding > 0x19 || ((1 << SystemEncoding) & 0x200000E) == 0)
  {
    v15 = v13;
  }

  else
  {
    v15 = 64;
  }

  *(a1 + 410) = *(a1 + 410) & 0xFFFFFFBF | v15;
  *(a1 + 368) = SystemEncoding;
  *(a1 + 376) = v5;
  return result;
}

uint64_t _NSRTFGetFont(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 1096);
  if (a2 != -1 && result)
  {
    do
    {
      if (*(result + 16) == a2)
      {
        break;
      }

      result = *(result + 40);
    }

    while (result);
  }

  return result;
}

id processFontName(char *cStr, CFStringEncoding a2, CFStringEncoding *a3, double a4)
{
  v8 = *a3;
  if (*a3 == -1 || (v9 = CFStringCreateWithCString(0, cStr, *a3)) == 0)
  {
    v11 = 0;
  }

  else
  {
    v10 = v9;
    v11 = [(UIFont *)NSFont _fontWithName:v9 size:a4];
    CFRelease(v10);
  }

  if (a2 != -1 && !v11)
  {
    if (v8 == a2 || (v12 = CFStringCreateWithCString(0, cStr, a2)) == 0)
    {
      v11 = 0;
    }

    else
    {
      v13 = v12;
      v11 = [(UIFont *)NSFont _fontWithName:v12 size:a4];
      CFRelease(v13);
    }
  }

  *a3 = v8;
  return v11;
}

uint64_t _NSRTFGetColor(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 1104);
  if (a2 != -1 && result)
  {
    do
    {
      if (*result == a2)
      {
        break;
      }

      result = *(result + 16);
    }

    while (result);
  }

  return result;
}

void textClass(uint64_t a1)
{
  if (*(a1 + 2808) == 1)
  {
    flushCharacters(a1, 1);
  }

  v2 = *(a1 + 2768);
  v3 = *(a1 + 328);
  *(a1 + 328) = v3 + 1;
  *(a1 + v3 + 72) = v2;
  if (*(a1 + 328) >= 0x80uLL)
  {

    flushCharacters(a1, 0);
  }
}

void OUTLINED_FUNCTION_3_1()
{

  [(_NSTextHighlightRunSegment *)v0 cornerRadius];
}

void sub_18E765070(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 112), 8);
  _Block_object_dispose((v1 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t _NSStringHasRightToLeftCharactersInRange(const __CFString *a1, uint64_t a2, unint64_t a3)
{
  SystemEncoding = CFStringGetSystemEncoding();
  if (CFStringGetCStringPtr(a1, SystemEncoding) || CFStringGetCStringPtr(a1, 0x600u))
  {
    return 0;
  }

  theString = a1;
  v26 = a2;
  v27 = a3;
  CharactersPtr = CFStringGetCharactersPtr(a1);
  if (CharactersPtr)
  {
    CStringPtr = 0;
  }

  else
  {
    CStringPtr = CFStringGetCStringPtr(a1, 0x600u);
  }

  v28 = 0;
  v29 = 0;
  v25 = CStringPtr;
  if (_NSStringHasRightToLeftCharactersInRange_bidiPropertyBMP)
  {
    if (!a3)
    {
      return 0;
    }
  }

  else
  {
    _NSStringHasRightToLeftCharactersInRange_bidiPropertyBMP = CFUniCharGetUnicodePropertyDataForPlane();
    if (!a3)
    {
      return 0;
    }
  }

  v8 = 0;
  memset(v22, 0, sizeof(v22));
  while (1)
  {
    if (v8 < 0 || (v9 = v27, v27 <= v8))
    {
      v10 = 0;
    }

    else if (CharactersPtr)
    {
      v10 = CharactersPtr[v26 + v8];
    }

    else if (v25)
    {
      v10 = v25[v26 + v8];
    }

    else
    {
      if (v29 <= v8 || (v15 = v28, v28 > v8))
      {
        v16 = v8 - 4;
        if (v8 < 4)
        {
          v16 = 0;
        }

        if (v16 + 64 < v27)
        {
          v9 = v16 + 64;
        }

        v28 = v16;
        v29 = v9;
        v30.length = v9 - v16;
        v30.location = v26 + v16;
        CFStringGetCharacters(theString, v30, v22);
        v15 = v28;
      }

      v10 = *(v22 + v8 - v15);
    }

    v11 = v8 + 1;
    UnicodePropertyDataForPlane = _NSStringHasRightToLeftCharactersInRange_bidiPropertyBMP;
    if (v8 < -1)
    {
      break;
    }

    if (v11 >= a3)
    {
      break;
    }

    if ((v10 & 0xFC00) != 0xD800)
    {
      break;
    }

    v13 = v27;
    if (v27 <= v11)
    {
      break;
    }

    if (CharactersPtr)
    {
      v14 = CharactersPtr[v26 + v11];
    }

    else if (v25)
    {
      v14 = v25[v26 + v11];
    }

    else
    {
      if (v29 <= v11 || (v17 = v28, v28 > v11))
      {
        v18 = v8 - 3;
        if (v8 < 3)
        {
          v18 = 0;
        }

        if (v18 + 64 < v27)
        {
          v13 = v18 + 64;
        }

        v28 = v18;
        v29 = v13;
        v31.length = v13 - v18;
        v31.location = v26 + v18;
        CFStringGetCharacters(theString, v31, v22);
        v17 = v28;
      }

      v14 = *(v22 + v11 - v17);
    }

    if (v14 >> 10 != 55)
    {
      break;
    }

    v10 = (v10 << 10) + v14 + 9216;
    v8 += 2;
    UnicodePropertyDataForPlane = CFUniCharGetUnicodePropertyDataForPlane();
    if (UnicodePropertyDataForPlane)
    {
      goto LABEL_46;
    }

LABEL_50:
    if (v8 >= a3)
    {
      return 0;
    }
  }

  ++v8;
  if (!UnicodePropertyDataForPlane)
  {
    goto LABEL_50;
  }

LABEL_46:
  v19 = *(UnicodePropertyDataForPlane + HIBYTE(v10));
  if (v19 >= 0x13)
  {
    LODWORD(v19) = *(UnicodePropertyDataForPlane + ((v19 << 8) - 4864) + v10 + 256);
  }

  v20 = v19 - 2;
  if (v20 >= 0xE || ((0x3009u >> v20) & 1) == 0)
  {
    goto LABEL_50;
  }

  return 1;
}

void sub_18E766F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __NSTextLayoutFragmentConfigureForTextAnimationContext(uint64_t a1, void *a2)
{
  *(a1 + 112) = a2;
  if (a2)
  {
    *(a1 + 120) = [a2 _effectiveComponents];
    *(a1 + 128) = [a2 _effectiveExclusiveComponents];
    *(a1 + 216) = 0;
    v4 = [a2 textRanges];
    v5 = [a1 rangeInElement];
    if (v4)
    {
      v6 = v5;
      if ([objc_msgSend(a2 "_unionTextRange")])
      {
        v7 = [v4 count];
        v12 = 0;
        v13 = &v12;
        v14 = 0x2020000000;
        v15 = 0;
        v8 = [a1 textParagraph];
        v9 = [objc_msgSend(a1 "textLayoutManager")];
        if (v7 < 5)
        {
          v13[3] = a1 + 136;
          *(a1 + 216) = 1;
        }

        else
        {
          v10 = NSZoneCalloc(0, v7 + 1, 0x10uLL);
          *(a1 + 136) = v10;
          v13[3] = v10;
        }

        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = ____NSTextLayoutFragmentConfigureForTextAnimationContext_block_invoke;
        v11[3] = &unk_1E72658F8;
        v11[4] = v6;
        v11[5] = a1;
        v11[6] = v9;
        v11[7] = v8;
        v11[8] = &v12;
        v11[9] = v7;
        [v4 enumerateObjectsUsingBlock:v11];
        *v13[3] = xmmword_18E856180;
        _Block_object_dispose(&v12, 8);
      }
    }
  }

  else if ((*(a1 + 216) & 1) == 0 && !*(a1 + 136))
  {
    NSZoneFree(0, 0);
    *(a1 + 136) = 0;
  }
}

void sub_18E76716C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18E767314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t setCurrentCGContextDuringBlock_iOS(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (softLinkUIGraphicsGetCurrentContext_0() == a1)
  {
    v7 = *(a3 + 16);

    return v7(a3);
  }

  else
  {
    (softLinkUIGraphicsPushContext[0])(a1);
    (*(a3 + 16))(a3);
    v5 = softLinkUIGraphicsPopContext[0];

    return v5();
  }
}

uint64_t __NSTextContentStorageGetElementIndexRangeForRange(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2;
  v5 = a2 + a3;
  v6 = [*(a1 + 88) count];
  if (v5 >= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  if (v3 >= v7)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v13 = 0uLL;
  do
  {
    v8 = *(a1 + 88);
    _NSBlockNumberForIndex(v8, v3, &v13);
    if (v8[11] <= v9)
    {
      v10 = v8[4] - v8[3];
    }

    else
    {
      v10 = 0;
    }

    v11 = *(v8[7] + (v8[2] + 8) * (v10 + v9) + 8);
    v3 = v13.n128_u64[1] + v13.n128_u64[0];
  }

  while (v13.n128_u64[1] + v13.n128_u64[0] < v7 && v11 == 0x7FFFFFFFFFFFFFFFLL);
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v3 < v7)
  {
    do
    {
      _NSBlockNumberForIndex(*(a1 + 88), v3, &v13);
      v3 = v13.n128_u64[1] + v13.n128_u64[0];
    }

    while (v13.n128_u64[1] + v13.n128_u64[0] < v7);
  }

  return v11;
}

NSUInteger __NSTextContentStorageReleaseElementsInRange(NSUInteger a1, NSUInteger a2, NSUInteger a3)
{
  if (a2 == 0x7FFFFFFFFFFFFFFFLL && a3 == 0)
  {
    a3 = [*(a1 + 96) count];
    a2 = 0;
  }

  return __NSTextContentStorageEnumerateCachedElementsInElementIndexRange(a1, a2, a3, &__block_literal_global_330);
}

unint64_t _NSLayoutNodeSuggestedFragmentCapacity(unint64_t a1)
{
  if (a1 <= 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = a1;
  }

  v2 = 16;
  if (v1 > *MEMORY[0x1E69E9AC8] >> 4)
  {
    v2 = *MEMORY[0x1E69E9AC8] >> 3;
  }

  v3 = (v1 + v2 - 1) / v2 * v2;
  if (v3 >= 0x2000)
  {
    v3 = 0x2000;
  }

  if (v3 <= v1)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

unint64_t _NSLayoutNodeSuggestedLocationCapacity(unint64_t a1)
{
  if (a1 <= 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = a1;
  }

  v2 = 16;
  if (v1 > *MEMORY[0x1E69E9AC8] >> 4)
  {
    v2 = *MEMORY[0x1E69E9AC8] >> 3;
  }

  v3 = (v1 + v2 - 1) / v2 * v2;
  if (v3 >= 0x2000)
  {
    v3 = 0x2000;
  }

  if (v3 <= v1)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

unint64_t _NSLayoutNodeSuggestedAttachmentSizeCapacity(unint64_t a1)
{
  if (a1 <= 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = a1;
  }

  v2 = 16;
  if (v1 > *MEMORY[0x1E69E9AC8] >> 4)
  {
    v2 = *MEMORY[0x1E69E9AC8] >> 3;
  }

  v3 = (v1 + v2 - 1) / v2 * v2;
  if (v3 >= 0x2000)
  {
    v3 = 0x2000;
  }

  if (v3 <= v1)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

__n128 _NSLayoutTreeCreate(uint64_t a1)
{
  v2 = *(*(*(a1 + 240) + 208) + 8);
  v3 = malloc_type_calloc(1uLL, 0x40uLL, 0x10A2040487CA78AuLL);
  *(v3 + 59) = 1;
  v4 = v2 - 1;
  if (!v2)
  {
    v4 = 0;
  }

  *v3 = v2;
  v3[1] = ((v4 >> 6) + 1) * 14.0;
  *(v3 + 56) = v2 != 0;
  *(*(a1 + 240) + 240) = v3;
  *(*(a1 + 240) + 264) = 0;
  v5 = *(a1 + 240) + 240;
  result = *MEMORY[0x1E696AA80];
  v7 = *(MEMORY[0x1E696AA80] + 16);
  *(v5 + 32) = *MEMORY[0x1E696AA80];
  *(v5 + 48) = v7;
  v8 = *(a1 + 240) + 240;
  *(v8 + 64) = result;
  *(v8 + 80) = v7;
  *(*(a1 + 240) + 336) = 64;
  *(*(a1 + 240) + 344) = 0x402C000000000000;
  *(*(a1 + 240) + 248) = *(*(a1 + 240) + 240);
  *(*(a1 + 240) + 256) = 0;
  *(*(a1 + 240) + 264) = 0;
  return result;
}

double *_NSLayoutNodeCreateLeaf(uint64_t a1, unint64_t a2, double a3)
{
  result = malloc_type_calloc(1uLL, 0x40uLL, 0x10A2040487CA78AuLL);
  *(result + 59) = 1;
  *result = a1;
  v7 = a1 - 1;
  if (!a1)
  {
    v7 = 0;
  }

  result[1] = (v7 / a2 + 1) * a3;
  *(result + 56) = a1 != 0;
  return result;
}

void _NSLayoutTreeFree(uint64_t a1)
{
  _NSLayoutNodeFree(*(*(a1 + 240) + 240));
  *(*(a1 + 240) + 248) = 0;
  *(*(a1 + 240) + 240) = 0;
}

void _NSLayoutNodeFree(uint64_t a1)
{
  if (a1)
  {
    v2 = (a1 + 24);
    if (*(a1 + 59))
    {
      if (*v2)
      {
        free(*v2);
        *v2 = 0;
      }

      v3 = *(a1 + 32);
      if (v3)
      {
        free(v3);
        *(a1 + 32) = 0;
        *(a1 + 58) = 0;
      }

      v4 = *(a1 + 40);
      if (v4)
      {
        free(v4);
      }
    }

    else
    {
      for (i = 0; i != 3; ++i)
      {
        if (v2[i])
        {
          _NSLayoutNodeFree();
        }
      }
    }

    free(a1);
  }
}

uint64_t _NSLayoutTreeSummaryDescription(uint64_t a1)
{
  v11 = 0;
  v12 = 0;
  v9 = 0;
  v10 = 0;
  v2 = [*(a1 + 8) length];
  _NSLayoutTreeCalculateMemoryUsage(a1, &v12, &v11, &v10, &v9);
  v3 = 0.0;
  v4 = 0.0;
  if (v2)
  {
    v4 = v11 / v2;
  }

  v5 = **(*(a1 + 240) + 240);
  if (v5)
  {
    v3 = v11 / v5;
  }

  if (v9)
  {
    v6 = v10 / v9;
    v7 = v11 / v9;
  }

  else
  {
    v6 = 0.0;
    v7 = 0.0;
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"Layout tree contents:  %lu characters, %lu glyphs, %lu laid glyphs, %lu laid line fragments, %lu nodes, %lu node bytes, %lu storage bytes, %lu total bytes, %.2f bytes per character, %.2f bytes per glyph, %.2f laid glyphs per laid line fragment, %.2f bytes per laid line fragment", v2, v5, v10, v9, v12, v12 << 6, v11 - (v12 << 6), v11, *&v4, *&v3, *&v6, *&v7];
}

uint64_t _NSLayoutTreeCalculateMemoryUsage(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v13 = 0;
  v14 = 0;
  v12 = 0;
  v9 = *(a1 + 240);
  v11 = 0;
  result = _NSLayoutNodeCalculateMemoryUsage(*(v9 + 240), &v14, &v13, &v12, &v11);
  if (a2)
  {
    *a2 = v14;
  }

  if (a3)
  {
    *a3 = v13;
  }

  if (a4)
  {
    *a4 = v12;
  }

  if (a5)
  {
    *a5 = v11;
  }

  return result;
}

void *_NSLayoutTreeDescription(uint64_t a1)
{
  v2 = MEMORY[0x1E696AD60];
  v3 = objc_opt_class();
  v4 = [v2 stringWithFormat:@"<%@: %p>\n%@\n", v3, a1, _NSLayoutTreeSummaryDescription(a1)];
  v5 = *(*(a1 + 240) + 248);
  v7.location = *(*(a1 + 240) + 256);
  v7.length = *v5;
  [v4 appendFormat:@"Current node %p glyph range %@\nRoot ", v5, NSStringFromRange(v7)];
  _NSLayoutNodeDescribe(*(*(a1 + 240) + 240), v4, 0);
  return v4;
}

uint64_t _NSLayoutNodeDescribe(uint64_t result, void *a2, uint64_t a3)
{
  if (!result)
  {
    return result;
  }

  v3 = a3;
  v5 = result;
  if (a3)
  {
    v6 = a3;
    do
    {
      [a2 appendString:@"  "];
      --v6;
    }

    while (v6);
  }

  v7 = (v5 + 3);
  if (!*(v5 + 59))
  {
    for (i = 0; i != 3; ++i)
    {
      if (!v5[i + 3])
      {
        break;
      }
    }

    [a2 appendFormat:@"Internal node %p with %lu glyphs, %lu children, offset %g, flags 0x%x\n", v5, *v5, i, v5[1], *(v5 + 56)];
    for (j = 0; j != 3; ++j)
    {
      result = _NSLayoutNodeDescribe(v7[j], a2, v3 + 1);
    }

    return result;
  }

  if (!*v7)
  {
    return [a2 appendFormat:@"Leaf node %p with %lu glyphs (not laid), offset %g, flags 0x%x\n", v5, *v5, v5[1], *(v5 + 56)];
  }

  v8 = MEMORY[0x1E696AA78];
  v9 = *v5;
  [a2 appendFormat:@"Leaf node %p with %lu glyphs (laid), offset %g, flags 0x%x\n", v5, *v5, v5[1], *(v5 + 56)];
  if (v3)
  {
    v10 = v3;
    do
    {
      [a2 appendString:@"  "];
      --v10;
    }

    while (v10);
  }

  v11 = *v8;
  v12 = v8[1];
  [a2 appendFormat:@"  %lu fragments out of %lu", **v7, (*v7)[1]];
  v13 = 0;
  v14 = (*v7 + 4);
  v15 = **v7;
  v16 = v15 - 1;
  while (1)
  {
    v17 = (v16 + v13) >> 1;
    v18 = *(v14 + 80 * v17) & 0x8FFFFFFFFFFFFFFFLL;
    if (!v18)
    {
      break;
    }

    v16 = v17 - 1;
LABEL_15:
    if (v16 < v13)
    {
      v19 = *(v14 + 80 * v17 + 80) & 0x8FFFFFFFFFFFFFFFLL;
      goto LABEL_25;
    }
  }

  v13 = v17 + 1;
  if (v17 + 1 < v15)
  {
    v19 = *(v14 + 80 * v13) & 0x8FFFFFFFFFFFFFFFLL;
    if (v19)
    {
      goto LABEL_25;
    }

    goto LABEL_15;
  }

  v19 = v9;
LABEL_25:
  v22 = (v14 + 80 * v17);
  v101.origin.x = v22[6];
  v101.size.width = v22[8];
  v101.size.height = v22[9];
  v101.origin.y = v22[7] + 0.0;
  v23 = v22[2];
  v24 = v22[4];
  v25 = v22[5];
  v26 = v22[3] + 0.0;
  v27 = NSStringFromRect(v101);
  v102.origin.x = v23;
  v102.origin.y = v26;
  v102.size.width = v24;
  v102.size.height = v25;
  [a2 appendFormat:@" (8-float) <%lu:%@/%@", v18, v27, NSStringFromRect(v102)];
  v28 = *v7;
  v29 = **v7;
  if (v29 < 2)
  {
    goto LABEL_39;
  }

  v30 = v19 - v18;
  v31 = 1;
  while (2)
  {
    v32 = 0;
    v33 = v30 + v18;
    v34 = v28 + 4;
    v35 = v29 - 1;
    while (2)
    {
      v36 = (v35 + v32) >> 1;
      v18 = v34[10 * v36] & 0x8FFFFFFFFFFFFFFFLL;
      if (v18 > v33)
      {
        v35 = v36 - 1;
        goto LABEL_32;
      }

      v32 = v36 + 1;
      if (v36 + 1 < v29)
      {
        v37 = v34[10 * v32] & 0x8FFFFFFFFFFFFFFFLL;
        if (v37 > v33)
        {
          goto LABEL_35;
        }

LABEL_32:
        if (v35 < v32)
        {
          v37 = v34[10 * v36 + 10] & 0x8FFFFFFFFFFFFFFFLL;
          goto LABEL_35;
        }

        continue;
      }

      break;
    }

    v37 = v9;
LABEL_35:
    v38 = &v34[10 * v36];
    v103.origin.x = v38[6];
    v103.size.width = v38[8];
    v103.size.height = v38[9];
    v103.origin.y = v38[7] + 0.0;
    v39 = v38[2];
    v40 = v38[4];
    v41 = v38[5];
    v42 = v38[3] + 0.0;
    v43 = NSStringFromRect(v103);
    v104.origin.x = v39;
    v104.origin.y = v42;
    v104.size.width = v40;
    v104.size.height = v41;
    [a2 appendFormat:@" %lu:%@/%@", v18, v43, NSStringFromRect(v104)];
    v28 = *v7;
    v29 = **v7;
    if (v31 <= 0x3E)
    {
      v30 = v37 - v18;
      if (++v31 < v29)
      {
        continue;
      }
    }

    break;
  }

  if (v29 > 0x40)
  {
    v44 = @"...>\n";
    goto LABEL_40;
  }

LABEL_39:
  v44 = @">\n";
LABEL_40:
  result = [a2 appendString:v44];
  v45 = v5[4];
  if (!v45)
  {
    goto LABEL_89;
  }

  if (v3)
  {
    v46 = v3;
    do
    {
      [a2 appendString:@"  "];
      --v46;
    }

    while (v46);
    v45 = v5[4];
  }

  [a2 appendFormat:@"  %lu locations out of %lu", *v45, v45[1]];
  v47 = 0;
  v48 = v5[4];
  v49 = *(v5 + 58);
  v50 = 24;
  if (v49 != 1)
  {
    v50 = 0;
  }

  v51 = 16;
  if (*(v5 + 58))
  {
    v51 = v50;
  }

  v54 = *v48;
  v52 = v48 + 2;
  v53 = v54;
  v55 = v54 - 1;
  while (2)
  {
    v56 = (v55 + v47) >> 1;
    v57 = *(v52 + v56 * v51) & 0x8FFFFFFFFFFFFFFFLL;
    if (v57)
    {
      v55 = v56 - 1;
      goto LABEL_54;
    }

    v47 = v56 + 1;
    if (v56 + 1 < v53)
    {
      v58 = v47 * v51;
      if ((*(v52 + v47 * v51) & 0x8FFFFFFFFFFFFFFFLL) != 0)
      {
        goto LABEL_56;
      }

LABEL_54:
      if (v55 < v47)
      {
        v58 = v51 + v51 * v56;
LABEL_56:
        v59 = *(v52 + v58) & 0x8FFFFFFFFFFFFFFFLL;
        goto LABEL_58;
      }

      continue;
    }

    break;
  }

  v59 = v9;
LABEL_58:
  if (v49 == 1)
  {
    v60 = &v52[3 * v56];
    v11 = v60[1];
    v12 = v60[2];
  }

  else if (!*(v5 + 58))
  {
    v11 = *&v52[2 * v56 + 1];
    v12 = 0.0;
  }

  v99.x = v11;
  v99.y = v12;
  [a2 appendFormat:@" (2-float) <%lu:%@", v57, NSStringFromPoint(v99)];
  v61 = v5[4];
  v62 = *v61;
  if (*v61 < 2)
  {
    goto LABEL_87;
  }

  v63 = v59 - v57;
  v64 = 1;
  while (2)
  {
    v65 = 0;
    v66 = *(v5 + 58);
    v67 = v63 + v57;
    if (v66 == 1)
    {
      v68 = 24;
    }

    else
    {
      v68 = 0;
    }

    if (*(v5 + 58))
    {
      v69 = v68;
    }

    else
    {
      v69 = 16;
    }

    v70 = v61 + 2;
    v71 = v62 - 1;
    while (2)
    {
      v72 = (v71 + v65) >> 1;
      v57 = *(v70 + v72 * v69) & 0x8FFFFFFFFFFFFFFFLL;
      if (v57 > v67)
      {
        v71 = v72 - 1;
        goto LABEL_75;
      }

      v65 = v72 + 1;
      if (v72 + 1 < v62)
      {
        v73 = v65 * v69;
        if ((*(v70 + v65 * v69) & 0x8FFFFFFFFFFFFFFFLL) > v67)
        {
          goto LABEL_77;
        }

LABEL_75:
        if (v71 < v65)
        {
          v73 = v69 + v69 * v72;
LABEL_77:
          v74 = *(v70 + v73) & 0x8FFFFFFFFFFFFFFFLL;
          goto LABEL_79;
        }

        continue;
      }

      break;
    }

    v74 = v9;
LABEL_79:
    if (v66 == 1)
    {
      v75 = &v70[3 * v72];
      v11 = v75[1];
      v12 = v75[2];
    }

    else if (!*(v5 + 58))
    {
      v11 = *&v70[2 * v72 + 1];
      v12 = 0.0;
    }

    v100.x = v11;
    v100.y = v12;
    [a2 appendFormat:@" %lu:%@", v57, NSStringFromPoint(v100)];
    v61 = v5[4];
    v62 = *v61;
    if (v64 <= 0x3E)
    {
      v63 = v74 - v57;
      if (++v64 < v62)
      {
        continue;
      }
    }

    break;
  }

  if (v62 > 0x40)
  {
    v76 = @"...>\n";
    goto LABEL_88;
  }

LABEL_87:
  v76 = @">\n";
LABEL_88:
  result = [a2 appendString:v76];
LABEL_89:
  v77 = v5[5];
  if (!v77)
  {
    return result;
  }

  if (v3)
  {
    do
    {
      [a2 appendString:@"  "];
      --v3;
    }

    while (v3);
    v77 = v5[5];
  }

  objc_msgSend(a2, "appendFormat:", @"  %lu attachment sizes out of %lu ("), *v77, v77[1];
  v78 = 0;
  v79 = v5[5];
  v82 = *v79;
  v80 = v79 + 2;
  v81 = v82;
  v83 = v82 - 1;
  while (2)
  {
    v84 = (v83 + v78) >> 1;
    v85 = v80[3 * v84] & 0x8FFFFFFFFFFFFFFFLL;
    if (v85)
    {
      v83 = v84 - 1;
      goto LABEL_98;
    }

    v78 = v84 + 1;
    if (v84 + 1 < v81)
    {
      v86 = v80[3 * v78] & 0x8FFFFFFFFFFFFFFFLL;
      if (v86)
      {
        goto LABEL_102;
      }

LABEL_98:
      if (v83 < v78)
      {
        v86 = v80[3 * v84 + 3] & 0x8FFFFFFFFFFFFFFFLL;
        goto LABEL_102;
      }

      continue;
    }

    break;
  }

  v86 = v9;
LABEL_102:
  [a2 appendFormat:@"%lu:%@", v85, NSStringFromSize(*&v80[3 * v84 + 1])];
  v87 = v5[5];
  v88 = *v87;
  if (*v87 < 2)
  {
    goto LABEL_116;
  }

  v89 = v86 - v85;
  v90 = 1;
  while (2)
  {
    v91 = 0;
    v92 = v89 + v85;
    v93 = v87 + 2;
    v94 = v88 - 1;
    while (2)
    {
      v95 = (v94 + v91) >> 1;
      v85 = v93[3 * v95] & 0x8FFFFFFFFFFFFFFFLL;
      if (v85 > v92)
      {
        v94 = v95 - 1;
        goto LABEL_109;
      }

      v91 = v95 + 1;
      if (v95 + 1 < v88)
      {
        v96 = v93[3 * v91] & 0x8FFFFFFFFFFFFFFFLL;
        if (v96 > v92)
        {
          goto LABEL_112;
        }

LABEL_109:
        if (v94 < v91)
        {
          v96 = v93[3 * v95 + 3] & 0x8FFFFFFFFFFFFFFFLL;
          goto LABEL_112;
        }

        continue;
      }

      break;
    }

    v96 = v9;
LABEL_112:
    [a2 appendFormat:@" %lu:%@", v85, NSStringFromSize(*&v93[3 * v95 + 1])];
    v87 = v5[5];
    v88 = *v87;
    if (v90 <= 0x3E)
    {
      v89 = v96 - v85;
      if (++v90 < v88)
      {
        continue;
      }
    }

    break;
  }

  if (v88 >= 0x41)
  {
    v97 = @"...\n");
    goto LABEL_117;
  }

LABEL_116:
  v97 = @"\n");
LABEL_117:

  return [a2 appendString:v97];
}

void _NSLayoutTreeLogDebug(NSString *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (_NSLayoutTreeLogDebug_logCount <= 0xF)
  {
    ++_NSLayoutTreeLogDebug_logCount;
    NSLogv(a1, &a9);
    if (_NSLayoutTreeLogDebug_logCount >= 0x10)
    {
      NSLog(@"!!! Suppressing further NSLayoutTree logs");
    }
  }
}

uint64_t _NSLayoutNodeCalculateMemoryUsage(uint64_t result, void *a2, uint64_t *a3, void *a4, void *a5)
{
  if (result)
  {
    ++*a2;
    v9 = *a3;
    *a3 += 64;
    v10 = result + 24;
    if (*(result + 59))
    {
      if (*v10)
      {
        *a3 = v9 + 80 * *(*v10 + 8) + 96;
        *a4 += *result;
        *a5 += **(result + 24);
      }

      v11 = *(result + 32);
      if (v11)
      {
        v12 = *(result + 58);
        v13 = 24;
        if (v12 != 1)
        {
          v13 = 0;
        }

        v14 = v12 == 0;
        v15 = 16;
        if (!v14)
        {
          v15 = v13;
        }

        v16 = *a3 + v15 * *(v11 + 8) + 16;
        *a3 = v16;
        if (*(result + 40))
        {
          *a3 = v16 + 24 * *(*(result + 32) + 8) + 16;
        }
      }
    }

    else
    {
      for (i = 0; i != 24; i += 8)
      {
        result = _NSLayoutNodeCalculateMemoryUsage(*(v10 + i), a2, a3, a4, a5);
      }
    }
  }

  return result;
}

uint64_t _NSLayoutTreeSetGlyphsPerLineEstimate(uint64_t result, uint64_t a2)
{
  v2 = 64;
  if (a2)
  {
    v2 = a2;
  }

  *(*(result + 240) + 336) = v2;
  return result;
}

uint64_t _NSLayoutTreeSetOffsetPerLineEstimate(uint64_t result, double a2)
{
  if (a2 <= 0.0)
  {
    a2 = 14.0;
  }

  *(*(result + 240) + 344) = a2;
  return result;
}

uint64_t _NSLayoutTreeGetFirstHoleAfterGlyphIndex(uint64_t result, unint64_t a2, unint64_t *a3)
{
  v3 = *(result + 240) + 240;
  v4 = *v3;
  v5 = a2;
  if ((*(*v3 + 56) & 2) != 0)
  {
    v5 = *v4;
    if (*(*v3 + 56))
    {
      *(*(result + 240) + 248) = v4;
      *(*(result + 240) + 256) = 0;
      *(*(result + 240) + 264) = 0;
      if (v5 > a2)
      {
        v6 = a2;
        while (1)
        {
          v7 = (*(result + 240) + 240);
          v8 = *(*(result + 240) + 248);
          if (v8)
          {
            break;
          }

          v6 = v5;
LABEL_17:
          v7[1] = *v7;
          *(*(result + 240) + 256) = 0;
          *(*(result + 240) + 264) = 0;
          if (v6 >= v5)
          {
            goto LABEL_20;
          }
        }

        while (1)
        {
          v9 = v7[2];
          if (*(v8 + 59))
          {
            break;
          }

          v10 = *v8;
          v11 = 24;
          while (1)
          {
            v12 = *(result + 240);
            v13 = *(*(v12 + 248) + v11);
            if (!v13)
            {
              break;
            }

            v14 = *v13;
            v15 = *(v12 + 256);
            if (v13[7])
            {
              v16 = *&v14 + v15;
              if (v6 < v16)
              {
                break;
              }
            }

            else
            {
              v16 = v15 + *&v14;
            }

            *(v12 + 256) = v16;
            *(*(result + 240) + 264) = v13[1] + *(*(result + 240) + 264);
            v11 += 8;
            if (v11 == 48)
            {
              v13 = 0;
              v12 = *(result + 240);
              break;
            }
          }

          *(v12 + 248) = v13;
          v7 = (*(result + 240) + 240);
          v8 = *(*(result + 240) + 248);
          if (!v8)
          {
            v6 = v10 + v9;
            goto LABEL_17;
          }
        }

        v5 = v7[2];
      }
    }
  }

LABEL_20:
  if (a3)
  {
    if (v5 <= a2)
    {
      v5 = a2;
    }

    *a3 = v5;
  }

  return result;
}

uint64_t _NSLayoutTreeGetFirstHoleAfterGlyphIndexWithLength(uint64_t result, unint64_t a2, unint64_t a3, unint64_t *a4, unint64_t *a5)
{
  v7 = (*(result + 240) + 240);
  v8 = **v7;
  if (((*v7)[7] & 2) == 0)
  {
    v9 = 0;
    goto LABEL_22;
  }

  if (((*v7)[7] & 1) == 0 || (v10 = result, *(*(result + 240) + 248) = *v7, *(*(result + 240) + 256) = 0, *(*(result + 240) + 264) = 0, v8 <= a2))
  {
LABEL_20:
    v9 = v8;
    goto LABEL_21;
  }

  while (1)
  {
    v12 = (*(result + 240) + 240);
    v13 = *(*(result + 240) + 248);
    if (v13)
    {
      break;
    }

    a2 = v8;
LABEL_19:
    v12[1] = *v12;
    *(*(result + 240) + 256) = 0;
    *(*(result + 240) + 264) = 0;
    if (a2 >= v8)
    {
      goto LABEL_20;
    }
  }

  if (!*(v13 + 59))
  {
    while (1)
    {
      v14 = v12[2];
      v15 = *v13;
      v16 = 24;
      while (1)
      {
        v17 = *(result + 240);
        v18 = *(*(v17 + 248) + v16);
        if (!v18)
        {
          break;
        }

        v19 = *v18;
        v20 = *(v17 + 256);
        if (v18[7])
        {
          v21 = *&v19 + v20;
          if (a2 < v21)
          {
            break;
          }
        }

        else
        {
          v21 = v20 + *&v19;
        }

        *(v17 + 256) = v21;
        *(*(result + 240) + 264) = v18[1] + *(*(result + 240) + 264);
        v16 += 8;
        if (v16 == 48)
        {
          v18 = 0;
          v17 = *(result + 240);
          break;
        }
      }

      *(v17 + 248) = v18;
      v12 = (*(result + 240) + 240);
      v13 = *(*(result + 240) + 248);
      if (!v13)
      {
        break;
      }

      if (*(v13 + 59))
      {
        goto LABEL_27;
      }
    }

    a2 = v15 + v14;
    goto LABEL_19;
  }

LABEL_27:
  v9 = v12[2];
  if (!a5)
  {
LABEL_21:
    v8 = 0;
    goto LABEL_22;
  }

  v8 = 0;
  do
  {
    if (v8 >= a3)
    {
      break;
    }

    v22 = **(*(v10 + 240) + 248);
    v8 += v22;
    result = _NSLayoutTreeMoveToGlyphIndex(v10, *(*(v10 + 240) + 256) + v22);
    if (!result)
    {
      break;
    }
  }

  while (!*(*(*(v10 + 240) + 248) + 24));
LABEL_22:
  if (a4)
  {
    *a4 = v9;
  }

  if (a5)
  {
    *a5 = v8;
  }

  return result;
}

BOOL _NSLayoutTreeMoveToGlyphIndex(uint64_t a1, unint64_t a2)
{
  for (i = (*(a1 + 240) + 240); ; i = (*(a1 + 240) + 240))
  {
    v3 = i[1];
    if (!v3 || !v3[2])
    {
      break;
    }

    v4 = i[2];
    if (v4 <= a2 && *v3 + v4 > a2)
    {
      goto LABEL_14;
    }

    v5 = 24;
    while (1)
    {
      v6 = *(a1 + 240);
      v7 = *(v6 + 248);
      v8 = *(v7 + 16);
      v9 = *(v8 + v5);
      if (!v9)
      {
        break;
      }

      if (v7 == v9)
      {
        goto LABEL_12;
      }

      *(v6 + 256) -= *v9;
      *(*(a1 + 240) + 264) = *(*(a1 + 240) + 264) - *(v9 + 8);
      v5 += 8;
      if (v5 == 48)
      {
        v8 = 0;
        v6 = *(a1 + 240);
        goto LABEL_12;
      }
    }

    v8 = 0;
LABEL_12:
    *(v6 + 248) = v8;
  }

  i[1] = *i;
  *(*(a1 + 240) + 256) = 0;
  *(*(a1 + 240) + 264) = 0;
LABEL_14:
  v10 = (*(a1 + 240) + 240);
  v11 = *(*(a1 + 240) + 256);
  if (v11 > a2)
  {
    return 0;
  }

  v12 = *(*(a1 + 240) + 248);
  if (*v12 + v11 <= a2)
  {
    return 0;
  }

  for (j = *(v12 + 59) != 0; !*(v12 + 59); j = *(v12 + 59) != 0)
  {
    v14 = 24;
    while (1)
    {
      v15 = *(a1 + 240);
      v16 = *(*(v15 + 248) + v14);
      if (!v16)
      {
        break;
      }

      v17 = *(v15 + 256);
      v18 = *v16 + v17;
      if (v17 <= a2 && v18 > a2)
      {
        break;
      }

      *(v15 + 256) = v18;
      *(*(a1 + 240) + 264) = *(v16 + 8) + *(*(a1 + 240) + 264);
      v14 += 8;
      if (v14 == 48)
      {
        v16 = 0;
        v15 = *(a1 + 240);
        break;
      }
    }

    *(v15 + 248) = v16;
    v10 = (*(a1 + 240) + 240);
    v12 = *(*(a1 + 240) + 248);
    if (!v12)
    {
      goto LABEL_29;
    }
  }

  if (!*(v12 + 16))
  {
LABEL_29:
    v10[1] = *v10;
    *(*(a1 + 240) + 256) = 0;
    *(*(a1 + 240) + 264) = 0;
    return j;
  }

  return 1;
}

double _NSLayoutTreeLineFragmentRectForGlyphAtIndex(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  if (!_NSLayoutTreeMoveToGlyphIndex(a1, a2))
  {
    v25 = *MEMORY[0x1E696AA80];
    _NSLayoutTreeLogDebug(@"!!! _NSLayoutTreeLineFragmentRectForGlyphAtIndex invalid glyph index %lu", v6, v7, v8, v9, v10, v11, v12, a2);
    v26 = 0;
    v27 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_16;
  }

  v14 = *(*(a1 + 240) + 248);
  v13 = *(*(a1 + 240) + 256);
  v15 = v14[3];
  v16 = *v14;
  if (!v15)
  {
    v28 = *(*(a1 + 240) + 336);
    v29 = (a2 - v13) / v28 * v28;
    v27 = v29 + v13;
    v30 = v16 + v13;
    v26 = v16 - v29;
    if (v27 + v28 <= v30)
    {
      v26 = *(*(a1 + 240) + 336);
    }

    v25 = 0.0;
    goto LABEL_16;
  }

  v17 = 0;
  v18 = a2 - v13;
  v21 = *v15;
  v19 = v15 + 4;
  v20 = v21;
  v22 = v21 - 1;
  while (1)
  {
    v23 = (v22 + v17) >> 1;
    v24 = v19[10 * v23] & 0x8FFFFFFFFFFFFFFFLL;
    if (v24 <= v18)
    {
      break;
    }

    v22 = v23 - 1;
LABEL_8:
    if (v22 < v17)
    {
      v16 = v19[10 * v23 + 10] & 0x8FFFFFFFFFFFFFFFLL;
      goto LABEL_15;
    }
  }

  v17 = v23 + 1;
  if (v23 + 1 >= v20)
  {
    goto LABEL_15;
  }

  if ((v19[10 * v17] & 0x8FFFFFFFFFFFFFFFLL) <= v18)
  {
    goto LABEL_8;
  }

  v16 = v19[10 * v17] & 0x8FFFFFFFFFFFFFFFLL;
LABEL_15:
  v26 = v16 - v24;
  v27 = v24 + v13;
  v25 = *&v19[10 * v23 + 6];
LABEL_16:
  if (a3)
  {
    *a3 = v27;
    a3[1] = v26;
  }

  return v25;
}

double _NSLayoutTreeLineFragmentUsedRectForGlyphAtIndex(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  if (!_NSLayoutTreeMoveToGlyphIndex(a1, a2))
  {
    v25 = *MEMORY[0x1E696AA80];
    _NSLayoutTreeLogDebug(@"!!! _NSLayoutTreeLineFragmentUsedRectForGlyphAtIndex invalid glyph index %lu", v6, v7, v8, v9, v10, v11, v12, a2);
    v26 = 0;
    v27 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_16;
  }

  v14 = *(*(a1 + 240) + 248);
  v13 = *(*(a1 + 240) + 256);
  v15 = v14[3];
  v16 = *v14;
  if (!v15)
  {
    v28 = *(*(a1 + 240) + 336);
    v29 = (a2 - v13) / v28 * v28;
    v27 = v29 + v13;
    v30 = v16 + v13;
    v26 = v16 - v29;
    if (v27 + v28 <= v30)
    {
      v26 = *(*(a1 + 240) + 336);
    }

    v25 = 0.0;
    goto LABEL_16;
  }

  v17 = 0;
  v18 = a2 - v13;
  v21 = *v15;
  v19 = v15 + 4;
  v20 = v21;
  v22 = v21 - 1;
  while (1)
  {
    v23 = (v22 + v17) >> 1;
    v24 = v19[10 * v23] & 0x8FFFFFFFFFFFFFFFLL;
    if (v24 <= v18)
    {
      break;
    }

    v22 = v23 - 1;
LABEL_8:
    if (v22 < v17)
    {
      v16 = v19[10 * v23 + 10] & 0x8FFFFFFFFFFFFFFFLL;
      goto LABEL_15;
    }
  }

  v17 = v23 + 1;
  if (v23 + 1 >= v20)
  {
    goto LABEL_15;
  }

  if ((v19[10 * v17] & 0x8FFFFFFFFFFFFFFFLL) <= v18)
  {
    goto LABEL_8;
  }

  v16 = v19[10 * v17] & 0x8FFFFFFFFFFFFFFFLL;
LABEL_15:
  v26 = v16 - v24;
  v27 = v24 + v13;
  v25 = *&v19[10 * v23 + 2];
LABEL_16:
  if (a3)
  {
    *a3 = v27;
    a3[1] = v26;
  }

  return v25;
}

void _NSLayoutTreeGetBaselineOffsetForGlyphAtIndex(uint64_t a1, unint64_t a2, void *a3)
{
  if (_NSLayoutTreeMoveToGlyphIndex(a1, a2))
  {
    if (a3)
    {
      v13 = *(*(*(a1 + 240) + 248) + 24);
      if (v13)
      {
        v14 = 0;
        v15 = a2 - *(*(a1 + 240) + 256);
        v18 = *v13;
        v16 = v13 + 4;
        v17 = v18;
        v19 = v18 - 1;
        while (1)
        {
          v20 = (v19 + v14) >> 1;
          if ((v16[10 * v20] & 0x8FFFFFFFFFFFFFFFLL) <= v15)
          {
            v14 = v20 + 1;
            if (v20 + 1 >= v17 || (v16[10 * v14] & 0x8FFFFFFFFFFFFFFFLL) > v15)
            {
LABEL_10:
              *a3 = v16[10 * v20 + 1];
              return;
            }
          }

          else
          {
            v19 = v20 - 1;
          }

          if (v19 < v14)
          {
            goto LABEL_10;
          }
        }
      }

      *a3 = 0;
    }
  }

  else
  {
    _NSLayoutTreeLogDebug(@"!!! _NSLayoutTreeGetBaselineOffsetForGlyphAtIndex invalid glyph index %lu", v6, v7, v8, v9, v10, v11, v12, a2);
  }
}

BOOL _NSLayoutTreeHasFragmentsForGlyphAtIndex(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  result = _NSLayoutTreeMoveToGlyphIndex(a1, a2);
  if (!result)
  {
    v8 = 0;
    v6 = 0x7FFFFFFFFFFFFFFFLL;
    if (!a3)
    {
      return result;
    }

    goto LABEL_5;
  }

  v7 = *(*(a1 + 240) + 248);
  v6 = *(*(a1 + 240) + 256);
  v8 = *v7;
  result = v7[3] != 0;
  if (a3)
  {
LABEL_5:
    *a3 = v6;
    a3[1] = v8;
  }

  return result;
}

double _NSLayoutTreeRunLocationForGlyphAtIndex(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = *MEMORY[0x1E696AA78];
  if (!_NSLayoutTreeMoveToGlyphIndex(a1, a2))
  {
    _NSLayoutTreeLogDebug(@"!!! _NSLayoutTreeRunLocationForGlyphAtIndex invalid glyph index %lu", v7, v8, v9, v10, v11, v12, v13, a2);
    return v6;
  }

  v14 = *(*(a1 + 240) + 248);
  v15 = *(v14 + 32);
  if (!v15)
  {
    v30 = *(v14 + 24);
    if (!v30)
    {
      if (a3)
      {
        v41 = *(*(a1 + 240) + 256);
        v42 = *(*(a1 + 240) + 336);
        v43 = *v14;
        v44 = (a2 - v41) / v42 * v42;
        v45 = v44 + v41;
        v46 = v44 + v41 + v42;
        v47 = v43 - v44;
        if (v46 <= v43 + v41)
        {
          v48 = *(*(a1 + 240) + 336);
        }

        else
        {
          v48 = v47;
        }

        *a3 = v45;
        a3[1] = v48;
      }

      return v6;
    }

    if (!a3)
    {
      return v6;
    }

    v31 = 0;
    v32 = *(*(a1 + 240) + 256);
    v33 = *v14;
    v34 = a2 - v32;
    v37 = *v30;
    v35 = v30 + 4;
    v36 = v37;
    v38 = v37 - 1;
    while (1)
    {
      v39 = (v38 + v31) >> 1;
      v40 = v35[10 * v39] & 0x8FFFFFFFFFFFFFFFLL;
      if (v40 <= v34)
      {
        v31 = v39 + 1;
        if (v39 + 1 >= v36)
        {
          goto LABEL_38;
        }

        if ((v35[10 * v31] & 0x8FFFFFFFFFFFFFFFLL) > v34)
        {
          v33 = v35[10 * v31] & 0x8FFFFFFFFFFFFFFFLL;
          goto LABEL_38;
        }
      }

      else
      {
        v38 = v39 - 1;
      }

      if (v38 < v31)
      {
        v33 = v35[10 * v39 + 10] & 0x8FFFFFFFFFFFFFFFLL;
LABEL_38:
        *a3 = v40 + v32;
        a3[1] = v33 - v40;
        return v6;
      }
    }
  }

  v16 = 0;
  v17 = *(v14 + 58);
  v18 = *(*(a1 + 240) + 256);
  v19 = *v14;
  v20 = a2 - v18;
  v21 = 24;
  if (v17 != 1)
  {
    v21 = 0;
  }

  v22 = 16;
  if (v17)
  {
    v22 = v21;
  }

  v25 = *v15;
  v23 = v15 + 2;
  v24 = v25;
  v26 = v25 - 1;
  while (1)
  {
    v27 = (v26 + v16) >> 1;
    v28 = *(v23 + v27 * v22) & 0x8FFFFFFFFFFFFFFFLL;
    if (v28 <= v20)
    {
      break;
    }

    v26 = v27 - 1;
LABEL_12:
    if (v26 < v16)
    {
LABEL_13:
      if (!a3)
      {
        goto LABEL_28;
      }

      v19 = *(v23 + v22 + v22 * v27) & 0x8FFFFFFFFFFFFFFFLL;
      goto LABEL_27;
    }
  }

  v16 = v27 + 1;
  if (v27 + 1 < v24)
  {
    if ((*(v23 + v16 * v22) & 0x8FFFFFFFFFFFFFFFLL) > v20)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (!a3)
  {
    goto LABEL_28;
  }

LABEL_27:
  *a3 = v28 + v18;
  a3[1] = v19 - v28;
LABEL_28:
  if (v17 == 1)
  {
    return *&v23[3 * v27 + 1];
  }

  if (!v17)
  {
    return *&v23[2 * v27 + 1];
  }

  return v6;
}

double _NSLayoutTreeAttachmentSizeForGlyphAtIndex(uint64_t a1, unint64_t a2)
{
  v2 = -1.0;
  if ((*(*(*(a1 + 240) + 240) + 56) & 8) != 0 && _NSLayoutTreeMoveToGlyphIndex(a1, a2))
  {
    v5 = *(*(*(a1 + 240) + 248) + 40);
    if (v5)
    {
      v6 = 0;
      v7 = a2 - *(*(a1 + 240) + 256);
      v10 = *v5;
      v8 = v5 + 2;
      v9 = v10;
      v11 = v10 - 1;
      while (1)
      {
        v12 = (v11 + v6) >> 1;
        if ((v8[3 * v12] & 0x8FFFFFFFFFFFFFFFLL) <= v7)
        {
          v6 = v12 + 1;
          if (v12 + 1 >= v9 || (v8[3 * v6] & 0x8FFFFFFFFFFFFFFFLL) > v7)
          {
            return *&v8[3 * v12 + 1];
          }
        }

        else
        {
          v11 = v12 - 1;
        }

        if (v11 < v6)
        {
          return *&v8[3 * v12 + 1];
        }
      }
    }
  }

  return v2;
}

BOOL _NSLayoutTreeLineFragmentDrawsOutsideLineForGlyphAtIndex(uint64_t a1, unint64_t a2)
{
  if ((*(*(*(a1 + 240) + 240) + 56) & 0x10) == 0)
  {
    return 0;
  }

  result = _NSLayoutTreeMoveToGlyphIndex(a1, a2);
  if (!result)
  {
    return result;
  }

  v5 = *(*(*(a1 + 240) + 248) + 24);
  if (!v5)
  {
    return 0;
  }

  v6 = 0;
  v7 = a2 - *(*(a1 + 240) + 256);
  v10 = *v5;
  v8 = v5 + 4;
  v9 = v10;
  v11 = v10 - 1;
  while (1)
  {
    v12 = (v11 + v6) >> 1;
    v13 = v8[10 * v12];
    if ((v13 & 0x8FFFFFFFFFFFFFFFLL) <= v7)
    {
      break;
    }

    v11 = v12 - 1;
LABEL_10:
    if (v11 < v6)
    {
      return (v13 >> 60) & 1;
    }
  }

  v6 = v12 + 1;
  if (v12 + 1 < v9 && (v8[10 * v6] & 0x8FFFFFFFFFFFFFFFLL) <= v7)
  {
    goto LABEL_10;
  }

  return (v13 >> 60) & 1;
}

BOOL _NSLayoutTreeOutsideDrawsUponLineFragmentForGlyphAtIndex(uint64_t a1, unint64_t a2)
{
  if ((*(*(*(a1 + 240) + 240) + 56) & 0x20) == 0)
  {
    return 0;
  }

  result = _NSLayoutTreeMoveToGlyphIndex(a1, a2);
  if (!result)
  {
    return result;
  }

  v5 = *(*(*(a1 + 240) + 248) + 24);
  if (!v5)
  {
    return 0;
  }

  v6 = 0;
  v7 = a2 - *(*(a1 + 240) + 256);
  v10 = *v5;
  v8 = v5 + 4;
  v9 = v10;
  v11 = v10 - 1;
  while (1)
  {
    v12 = (v11 + v6) >> 1;
    v13 = v8[10 * v12];
    if ((v13 & 0x8FFFFFFFFFFFFFFFLL) <= v7)
    {
      break;
    }

    v11 = v12 - 1;
LABEL_10:
    if (v11 < v6)
    {
      return (v13 >> 61) & 1;
    }
  }

  v6 = v12 + 1;
  if (v12 + 1 < v9 && (v8[10 * v6] & 0x8FFFFFFFFFFFFFFFLL) <= v7)
  {
    goto LABEL_10;
  }

  return (v13 >> 61) & 1;
}

uint64_t _NSLayoutTreeGetExtraLineFragmentRect(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(*(result + 240) + 272);
  v6 = *(*(result + 240) + 280);
  v7 = *(*(result + 240) + 304);
  v8 = *(*(result + 240) + 312);
  v26 = *(*(result + 240) + 320);
  v27 = *(*(result + 240) + 288);
  v9 = **(*(result + 240) + 240);
  v10 = 0.0;
  if (v9)
  {
    v11 = result;
    v12 = v9 - 1;
    result = _NSLayoutTreeMoveToGlyphIndex(result, v9 - 1);
    if (result)
    {
      v13 = *(*(v11 + 240) + 256);
      v14 = *(*(*(v11 + 240) + 248) + 24);
      v15 = *(*(v11 + 240) + 264);
      if (v14)
      {
        v16 = 0;
        v17 = v12 - v13;
        v20 = *v14;
        v18 = v14 + 4;
        v19 = v20;
        v21 = v20 - 1;
        while (1)
        {
          v22 = (v21 + v16) >> 1;
          if ((v18[10 * v22] & 0x8FFFFFFFFFFFFFFFLL) <= v17)
          {
            v16 = v22 + 1;
            if (v22 + 1 >= v19 || (v18[10 * v16] & 0x8FFFFFFFFFFFFFFFLL) > v17)
            {
LABEL_10:
              v23 = &v18[10 * v22];
              v24 = v23[9];
              v25 = v15 + v23[7];
              goto LABEL_12;
            }
          }

          else
          {
            v21 = v22 - 1;
          }

          if (v21 < v16)
          {
            goto LABEL_10;
          }
        }
      }

      v24 = *(*(v11 + 240) + 344);
      v25 = v15 + ((v12 - v13) / *(*(v11 + 240) + 336)) * v24;
LABEL_12:
      v10 = v25 + v24;
    }
  }

  if (a2)
  {
    *a2 = v5;
    *(a2 + 8) = v6 + v10;
    *(a2 + 16) = v27;
  }

  if (a3)
  {
    *a3 = v7;
    *(a3 + 8) = v8 + v10;
    *(a3 + 16) = v26;
  }

  return result;
}

void _NSLayoutTreeInvalidateLayoutForCharacterRange(uint64_t a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v13 = _NSGlyphTreeGlyphIndexForCharacterAtIndex(a1, a2);
  v14 = _NSGlyphTreeGlyphIndexForCharacterAtIndex(a1, a2 + a3);
  v19 = **(*(a1 + 240) + 240);
  if (v14 < v19)
  {
    v19 = v14;
  }

  if (v19 > v13 && (a4 & 1) == 0)
  {

    _NSLayoutTreeInvalidateLayoutForGlyphRange(a1, v13, v19 - v13, 0, v15, v16, v17, v18, a9);
  }
}

void _NSLayoutTreeInvalidateLayoutForGlyphRange(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (!(a3 | a4))
  {
    return;
  }

  v9 = a2;
  v10 = a1;
  v11 = &OBJC_IVAR___NSLayoutManager__extraData;
  v145 = **(*(a1 + 240) + 240);
  v12 = a2 + a3;
  if (a2 < a2 + a3)
  {
    v13 = a3 + a4;
    v14 = a4;
    while (1)
    {
      v15 = v13 - (v12 - v9);
      if (!_NSLayoutTreeMoveToGlyphIndex(v10, v9))
      {
        break;
      }

      v16 = v11;
      v17 = *(v10 + *v11);
      v19 = *(v17 + 248);
      v18 = *(v17 + 256);
      v20 = *v19;
      v21 = *v19 + v18;
      v22 = v21 - v9;
      if (v12 <= v21)
      {
        v22 = v12 - v9;
      }

      else
      {
        v15 = v13 - (v21 - v9);
      }

      v24 = (v19 + 24);
      v23 = *(v19 + 24);
      if (v23)
      {
        if (v9 <= v18)
        {
          if (v9)
          {
            v36 = v21 - (v22 + v9);
            if (v21 <= v22 + v9)
            {
              v10 = a1;
              _NSLayoutTreeDeleteCurrentNode(a1, a2, v36, a4, a5, a6, a7, a8);
              v11 = v16;
              if (!v13)
              {
                goto LABEL_62;
              }
            }

            else
            {
              _NSLayoutNodeTruncate(*(v17 + 248), v22 + v9 - v18, v36, *(v17 + 336), *(v17 + 344));
              v11 = v16;
              v10 = a1;
              if (!v13)
              {
                goto LABEL_62;
              }
            }

            if (_NSLayoutTreeMoveToGlyphIndex(v10, v9 - 1))
            {
              v58 = *(v10 + *v11) + 240;
              v59 = *(*(v10 + *v11) + 248);
              v60 = v10;
              v61 = (v59 + 24);
              if (*(v59 + 24))
              {
                v62 = *(v58 + 96);
                v63 = *(v58 + 104);
                v64 = malloc_type_calloc(1uLL, 0x40uLL, 0x10A2040487CA78AuLL);
                *(v64 + 59) = 1;
                *v64 = v13;
                v64[1] = v63 * ((v13 - 1) / v62 + 1);
                *(v64 + 56) = 1;
                _NSLayoutTreeInsertNodeAfterCurrentNode(v60, v64, v65, v66, v67, v68, v69, v70);
                v10 = v60;
              }

              else
              {
                v81 = *v59;
                v144 = *(v58 + 96);
                v82 = *(v58 + 104);
                if (*(v59 + 59))
                {
                  v83 = 0;
                }

                else
                {
                  for (i = 0; i != 3; ++i)
                  {
                    v85 = v61[i];
                    if (v85)
                    {
                      _NSLayoutNodeFree(v85);
                      v61[i] = 0;
                    }
                  }

                  v83 = *v61;
                  v11 = v16;
                }

                v86 = v81 + v13;
                *(v59 + 59) = 1;
                v87 = v81 + v13 - 1;
                if (!(v81 + v13))
                {
                  v87 = 0;
                }

                *v59 = v86;
                *(v59 + 8) = v82 * (v87 / v144 + 1);
                *(v59 + 56) = v86 != 0;
                if (v83)
                {
                  free(v83);
                  *v61 = 0;
                }

                v88 = *(v59 + 32);
                if (v88)
                {
                  free(v88);
                  *(v59 + 32) = 0;
                  *(v59 + 58) = 0;
                }

                v89 = *(v59 + 40);
                v10 = a1;
                if (v89)
                {
                  free(v89);
                  *(v59 + 40) = 0;
                }

                _NSLayoutNodeSetInvariants(v59);
              }

              goto LABEL_62;
            }

            v33 = @"!!! _NSLayoutTreeInvalidateLayoutForGlyphRange found invalid glyph index";
            goto LABEL_13;
          }

          v47 = v21 - v22;
          v11 = v16;
          if (v21 <= v22)
          {
            if (!v13)
            {
              v10 = a1;
              _NSLayoutTreeDeleteCurrentNode(a1, a2, v47, a4, a5, a6, a7, a8);
              goto LABEL_62;
            }

            v71 = *(v17 + 336);
            v72 = *(v17 + 344);
            if (!*(v19 + 59))
            {
              for (j = 0; j != 3; ++j)
              {
                v74 = v24[j];
                if (v74)
                {
                  _NSLayoutNodeFree(v74);
                  v24[j] = 0;
                }
              }

              v23 = *v24;
            }

            *(v19 + 59) = 1;
            *v19 = v13;
            *(v19 + 8) = v72 * ((v13 - 1) / v71 + 1);
            *(v19 + 56) = 1;
            if (v23)
            {
LABEL_55:
              free(v23);
              *v24 = 0;
            }

LABEL_56:
            v79 = *(v19 + 32);
            v11 = v16;
            if (v79)
            {
              free(v79);
              *(v19 + 32) = 0;
              *(v19 + 58) = 0;
            }

            v80 = *(v19 + 40);
            if (v80)
            {
              free(v80);
              *(v19 + 40) = 0;
            }

            _NSLayoutNodeSetInvariants(v19);
LABEL_61:
            v10 = a1;
            goto LABEL_62;
          }

          _NSLayoutNodeTruncate(*(v17 + 248), v22 - v18, v47, *(v17 + 336), *(v17 + 344));
          if (!v13)
          {
            goto LABEL_61;
          }

          v48 = *(*(a1 + *v16) + 336);
          v49 = *(*(a1 + *v16) + 344);
          v50 = malloc_type_calloc(1uLL, 0x40uLL, 0x10A2040487CA78AuLL);
          *(v50 + 59) = 1;
          *v50 = v13;
          v51 = (v13 - 1) / v48;
          v10 = a1;
          v50[1] = v49 * (v51 + 1);
          *(v50 + 56) = 1;
          _NSLayoutTreeInsertNodeBeforeCurrentNode(a1, v50, v52, v53, v54, v55, v56, v57);
        }

        else
        {
          v25 = v22 + v9;
          if (v21 <= v25)
          {
            v11 = v16;
          }

          else
          {
            SubNode = _NSLayoutNodeCreateSubNode(*(v17 + 248), v25 - v18, v21 - v25, *(v17 + 336), *(v17 + 344));
            _NSLayoutTreeInsertNodeAfterCurrentNode(a1, SubNode, v27, v28, v29, v30, v31, v32);
            v11 = v16;
            v17 = *(a1 + *v16);
            v19 = *(v17 + 248);
            v18 = *(v17 + 256);
          }

          _NSLayoutNodeTruncate(v19, 0, v9 - v18, *(v17 + 336), *(v17 + 344));
          if (!v13)
          {
            goto LABEL_61;
          }

          v37 = *(*(a1 + *v11) + 336);
          v38 = *(*(a1 + *v11) + 344);
          v39 = malloc_type_calloc(1uLL, 0x40uLL, 0x10A2040487CA78AuLL);
          *(v39 + 59) = 1;
          *v39 = v13;
          v40 = (v13 - 1) / v37;
          v10 = a1;
          v39[1] = v38 * (v40 + 1);
          *(v39 + 56) = 1;
          _NSLayoutTreeInsertNodeAfterCurrentNode(a1, v39, v41, v42, v43, v44, v45, v46);
        }
      }

      else
      {
        if (!v15)
        {
          v11 = v16;
          goto LABEL_61;
        }

        if (v15 > 0 || v20 > -v15)
        {
          v144 = *(v17 + 336);
          v35 = *(v17 + 344);
          if (*(v19 + 59))
          {
            v23 = 0;
          }

          else
          {
            for (k = 0; k != 3; ++k)
            {
              v76 = v24[k];
              if (v76)
              {
                _NSLayoutNodeFree(v76);
                v24[k] = 0;
              }
            }

            v23 = *v24;
          }

          v77 = v15 + v20;
          *(v19 + 59) = 1;
          v78 = v15 + v20 - 1;
          if (!(v15 + v20))
          {
            v78 = 0;
          }

          *v19 = v77;
          *(v19 + 8) = v35 * (v78 / v144 + 1);
          *(v19 + 56) = v77 != 0;
          if (v23)
          {
            goto LABEL_55;
          }

          goto LABEL_56;
        }

        v10 = a1;
        _NSLayoutTreeDeleteCurrentNode(a1, a2, a3, a4, a5, a6, a7, a8);
        v11 = v16;
      }

LABEL_62:
      v9 += v13;
      v12 += v15;
      v14 -= v15;
      v13 = 0;
      if (v9 >= v12)
      {
        goto LABEL_82;
      }
    }

    v33 = @"!!! _NSLayoutTreeInvalidateLayoutForGlyphRange invalid range 1";
LABEL_13:
    _NSLayoutTreeLogDebug(v33, a2, a3, a4, a5, a6, a7, a8, v144);
    goto LABEL_62;
  }

  v14 = a4;
LABEL_82:
  v90 = v14 - 1;
  if (v14 < 1)
  {
    if ((v14 & 0x8000000000000000) == 0)
    {
      goto LABEL_129;
    }

    v103 = @"!!! _NSLayoutTreeInvalidateLayoutForGlyphRange invalid change in length";
    goto LABEL_110;
  }

  if (!v9)
  {
    v104 = (*(v10 + *v11) + 240);
    if (!**v104)
    {
      v104[1] = *v104;
      *(*(v10 + *v11) + 256) = 0;
      *(*(v10 + *v11) + 264) = 0;
      v115 = *(*(v10 + *v11) + 248);
      v116 = *(*(v10 + *v11) + 336);
      v117 = *(*(v10 + *v11) + 344);
      if (!*(v115 + 59))
      {
        v118 = 0;
        v119 = v115 + 24;
        do
        {
          v120 = *(v119 + v118);
          if (v120)
          {
            _NSLayoutNodeFree(v120);
            *(v119 + v118) = 0;
          }

          v118 += 8;
        }

        while (v118 != 24);
      }

      *(v115 + 59) = 1;
      *v115 = v14;
      *(v115 + 8) = v117 * ((v14 - 1) / v116 + 1);
      *(v115 + 56) = 1;
      v121 = *(v115 + 24);
      if (v121)
      {
        free(v121);
        *(v115 + 24) = 0;
      }

      v122 = *(v115 + 32);
      if (v122)
      {
        free(v122);
        *(v115 + 32) = 0;
        *(v115 + 58) = 0;
      }

      v123 = *(v115 + 40);
      v10 = a1;
      if (v123)
      {
        free(v123);
        *(v115 + 40) = 0;
      }

      v124 = v115;
      goto LABEL_128;
    }

    if (_NSLayoutTreeMoveToGlyphIndex(v10, 0))
    {
      v105 = *(*(v10 + *v11) + 248);
      if (v105[3])
      {
        v106 = *(*(v10 + *v11) + 336);
        v107 = *(*(v10 + *v11) + 344);
        v108 = malloc_type_calloc(1uLL, 0x40uLL, 0x10A2040487CA78AuLL);
        *(v108 + 59) = 1;
        *v108 = v14;
        v108[1] = v107 * (v90 / v106 + 1);
        *(v108 + 56) = 1;
        _NSLayoutTreeInsertNodeBeforeCurrentNode(v10, v108, v109, v110, v111, v112, v113, v114);
      }

      else
      {
        _NSLayoutNodeInvalidate(v105, *v105 + v14, *(*(v10 + *v11) + 336), *(*(v10 + *v11) + 344));
      }

      goto LABEL_129;
    }

    v103 = @"!!! _NSLayoutTreeInvalidateLayoutForGlyphRange invalid range 3";
LABEL_110:
    _NSLayoutTreeLogDebug(v103, a2, a3, a4, a5, a6, a7, a8, v144);
    goto LABEL_129;
  }

  if (!_NSLayoutTreeMoveToGlyphIndex(v10, v9 - 1))
  {
    v103 = @"!!! _NSLayoutTreeInvalidateLayoutForGlyphRange invalid range 2";
    goto LABEL_110;
  }

  v91 = *(v10 + *v11);
  v92 = *(v91 + 248);
  v93 = (v92 + 24);
  if (!*(v92 + 24))
  {
    v125 = *v92 + v14;
    v126 = *(v91 + 336);
    v127 = *(v91 + 344);
    if (*(v92 + 59))
    {
      v128 = 0;
    }

    else
    {
      for (m = 0; m != 3; ++m)
      {
        v140 = v93[m];
        if (v140)
        {
          _NSLayoutNodeFree(v140);
          v93[m] = 0;
        }
      }

      v128 = *v93;
    }

    *(v92 + 59) = 1;
    v141 = v125 - 1;
    if (!v125)
    {
      v141 = 0;
    }

    *v92 = v125;
    *(v92 + 8) = v127 * (v141 / v126 + 1);
    *(v92 + 56) = v125 != 0;
    if (v128)
    {
      free(v128);
      *v93 = 0;
    }

    v142 = *(v92 + 32);
    if (v142)
    {
      free(v142);
      *(v92 + 32) = 0;
      *(v92 + 58) = 0;
    }

    v143 = *(v92 + 40);
    v10 = a1;
    if (v143)
    {
      free(v143);
      *(v92 + 40) = 0;
    }

    v124 = v92;
LABEL_128:
    _NSLayoutNodeSetInvariants(v124);
    goto LABEL_129;
  }

  v94 = *(v91 + 256);
  v95 = *v92 + v94;
  if (v95 <= v9)
  {
    v10 = a1;
  }

  else
  {
    v96 = _NSLayoutNodeCreateSubNode(*(v91 + 248), v9 - v94, v95 - v9, *(v91 + 336), *(v91 + 344));
    v10 = a1;
    _NSLayoutTreeInsertNodeAfterCurrentNode(a1, v96, v97, v98, v99, v100, v101, v102);
    _NSLayoutNodeTruncate(*(*(v10 + *v11) + 248), 0, v9 - *(*(v10 + *v11) + 256), *(*(v10 + *v11) + 336), *(*(v10 + *v11) + 344));
    v91 = *(a1 + *v11);
  }

  v129 = v91 + 240;
  v130 = *(v129 + 96);
  v131 = *(v129 + 104);
  v132 = malloc_type_calloc(1uLL, 0x40uLL, 0x10A2040487CA78AuLL);
  *(v132 + 59) = 1;
  *v132 = v14;
  v132[1] = v131 * (v90 / v130 + 1);
  *(v132 + 56) = 1;
  _NSLayoutTreeInsertNodeAfterCurrentNode(v10, v132, v133, v134, v135, v136, v137, v138);
LABEL_129:
  if (v145 + a4 != **(*(v10 + *v11) + 240))
  {

    _NSLayoutTreeLogDebug(@"!!! _NSLayoutTreeInvalidateLayoutForGlyphRange glyph count mismatch", a2, a3, a4, a5, a6, a7, a8, a9);
  }
}

void _NSLayoutTreeInsertNodeAfterCurrentNode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = *(*(a1 + 240) + 248);
  if (v8)
  {
    v9 = a2 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    return;
  }

  v10 = a2;
  v25 = 0u;
  v26 = 0u;
  while (1)
  {
    v12 = v8[2];
    if (!v12)
    {
      v24 = malloc_type_calloc(1uLL, 0x40uLL, 0x10A2040487CA78AuLL);
      v24[1] = 0;
      v24[3] = v8;
      v24[4] = v10;
      v8[2] = v24;
      v10[2] = v24;
      _NSLayoutNodeSetInvariants(v24);
      *(*(a1 + 240) + 240) = v24;
      return;
    }

    v13 = 0;
    while (1)
    {
      v14 = v12[v13 + 3];
      if (!v14)
      {
        break;
      }

      if (v8 == v14)
      {
        v14 = v8;
        break;
      }

      if (++v13 == 3)
      {
        v14 = 0;
        break;
      }
    }

    if (v8 != v14)
    {
      _NSLayoutTreeLogDebug(@"!!! _NSLayoutTreeInsertNodeAfterCurrentNode found broken link", a2, a3, a4, a5, a6, a7, a8, v25);
      v12 = v8;
      v15 = v10;
      if (!v8)
      {
        return;
      }

      goto LABEL_23;
    }

    if (!v12[5])
    {
      break;
    }

    v15 = malloc_type_calloc(1uLL, 0x40uLL, 0x10A2040487CA78AuLL);
    v16 = 0;
    v15[1] = 0;
    do
    {
      *(&v25 + v16 * 8) = v12[v16 + 3];
      v12[v16 + 3] = 0;
      ++v16;
    }

    while (v16 != 3);
    v17 = v13 + 1;
    if (v13 <= 1)
    {
      v18 = &v26 + 1;
      v19 = 3;
      v20 = &v26 + 8;
      do
      {
        --v19;
        v21 = *(v20 - 1);
        v20 -= 8;
        *v18 = v21;
        v18 = v20;
      }

      while (v19 > v17);
    }

    *(&v25 + v17) = v10;
    v22 = v25;
    v12[3] = v25;
    *(v22 + 16) = v12;
    v12[4] = *(&v22 + 1);
    *(*(&v22 + 1) + 16) = v12;
    _NSLayoutNodeSetInvariants(v12);
    v23 = v26;
    v15[3] = v26;
    *(v23 + 16) = v15;
    v15[4] = *(&v23 + 1);
    *(*(&v23 + 1) + 16) = v15;
    _NSLayoutNodeSetInvariants(v15);
LABEL_23:
    v10 = v15;
    v8 = v12;
    if (!v15)
    {
      return;
    }
  }

  if (!v13)
  {
    v12[5] = v12[4];
  }

  v12[v13 + 4] = v10;
  v10[2] = v12;

  _NSLayoutNodeSetInvariants(v12);
}

double *_NSLayoutNodeCreateSubNode(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, double a5)
{
  v10 = *a1;
  v11 = malloc_type_calloc(1uLL, 0x40uLL, 0x10A2040487CA78AuLL);
  v12 = v11;
  *(v11 + 59) = 1;
  *v11 = a3;
  v13 = a3 - 1;
  if (!a3)
  {
    v13 = 0;
  }

  v11[1] = (v13 / a4 + 1) * a5;
  *(v11 + 56) = a3 != 0;
  *(v11 + 56) = *(a1 + 56);
  v14 = *(a1 + 24);
  if (v14)
  {
    v15 = 0;
    v16 = v14 + 4;
    v17 = *v14 - 1;
    while (1)
    {
      v18 = v17 + v15;
      v19 = (v17 + v15) >> 1;
      if ((v16[10 * v19] & 0x8FFFFFFFFFFFFFFFLL) <= a2)
      {
        v15 = v19 + 1;
        if (v19 + 1 >= *v14 || (v16[10 * v15] & 0x8FFFFFFFFFFFFFFFLL) > a2)
        {
LABEL_10:
          if (v18 > 1)
          {
            v23 = *&v14[10 * v19 + 1] + *&v14[10 * v19 + 3];
            SubRange = _NSGlyphRangeListCreateSubRange(v14, _NSLayoutNodeSuggestedFragmentCapacity, v10, 32, 80, a2, a3);
            v21 = SubRange + 4;
            v22 = *SubRange;
            if (v23 != 0.0 && v22 != 0)
            {
              v25 = (SubRange + 11);
              v26 = *SubRange;
              do
              {
                *v25 = *v25 - v23;
                *(v25 - 4) = *(v25 - 4) - v23;
                v25 += 10;
                --v26;
              }

              while (v26);
            }
          }

          else
          {
            SubRange = _NSGlyphRangeListCreateSubRange(v14, _NSLayoutNodeSuggestedFragmentCapacity, v10, 32, 80, a2, a3);
            v21 = SubRange + 4;
            v22 = *SubRange;
          }

          v12[1] = *&v21[10 * v22 - 3] + *&v21[10 * v22 - 1];
          *(v12 + 3) = SubRange;
          break;
        }
      }

      else
      {
        v17 = v19 - 1;
      }

      if (v17 < v15)
      {
        goto LABEL_10;
      }
    }
  }

  if (*(a1 + 32))
  {
    v27 = *(a1 + 58);
    *(v12 + 58) = v27;
    v28 = 24;
    if (v27 != 1)
    {
      v28 = 0;
    }

    if (v27)
    {
      v29 = v28;
    }

    else
    {
      v29 = 16;
    }

    *(v12 + 4) = _NSGlyphRangeListCreateSubRange(*(a1 + 32), _NSLayoutNodeSuggestedLocationCapacity, v10, 16, v29, a2, a3);
  }

  v30 = *(a1 + 40);
  if (v30)
  {
    *(v12 + 5) = _NSGlyphRangeListCreateSubRange(v30, _NSLayoutNodeSuggestedAttachmentSizeCapacity, v10, 16, 24, a2, a3);
  }

  return v12;
}

uint64_t _NSLayoutNodeTruncate(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, double a5)
{
  v8 = *a1;
  v9 = *(a1 + 24);
  if (v9)
  {
    v10 = 0;
    v11 = v9 + 4;
    v12 = *v9 - 1;
    while (1)
    {
      v13 = v12 + v10;
      v14 = (v12 + v10) >> 1;
      if ((v11[10 * v14] & 0x8FFFFFFFFFFFFFFFLL) <= a2)
      {
        v10 = v14 + 1;
        if (v14 + 1 >= *v9 || (v11[10 * v10] & 0x8FFFFFFFFFFFFFFFLL) > a2)
        {
LABEL_8:
          if (v13 > 1)
          {
            v19 = *&v9[10 * v14 + 1] + *&v9[10 * v14 + 3];
            v15 = _NSGlyphRangeListTruncate(v9, _NSLayoutNodeSuggestedFragmentCapacity, v8, 32, 80, a2, a3);
            v16 = v15 + 4;
            v17 = *v15;
            if (v19 != 0.0 && v17 != 0)
            {
              v21 = (v15 + 11);
              v22 = *v15;
              do
              {
                *v21 = *v21 - v19;
                *(v21 - 4) = *(v21 - 4) - v19;
                v21 += 10;
                --v22;
              }

              while (v22);
            }
          }

          else
          {
            v15 = _NSGlyphRangeListTruncate(v9, _NSLayoutNodeSuggestedFragmentCapacity, v8, 32, 80, a2, a3);
            v16 = v15 + 4;
            v17 = *v15;
          }

          *(a1 + 8) = *&v16[10 * v17 - 3] + *&v16[10 * v17 - 1];
          *(a1 + 24) = v15;
          goto LABEL_20;
        }
      }

      else
      {
        v12 = v14 - 1;
      }

      if (v12 < v10)
      {
        goto LABEL_8;
      }
    }
  }

  v18 = a3 - 1;
  if (!a3)
  {
    v18 = 0;
  }

  *(a1 + 8) = (v18 / a4 + 1) * a5;
LABEL_20:
  v23 = *(a1 + 32);
  if (v23)
  {
    v24 = 24;
    if (*(a1 + 58) != 1)
    {
      v24 = 0;
    }

    if (*(a1 + 58))
    {
      v25 = v24;
    }

    else
    {
      v25 = 16;
    }

    *(a1 + 32) = _NSGlyphRangeListTruncate(v23, _NSLayoutNodeSuggestedLocationCapacity, v8, 16, v25, a2, a3);
  }

  v26 = *(a1 + 40);
  if (v26)
  {
    *(a1 + 40) = _NSGlyphRangeListTruncate(v26, _NSLayoutNodeSuggestedAttachmentSizeCapacity, v8, 16, 24, a2, a3);
  }

  *a1 = a3;

  return _NSLayoutNodeSetInvariants(a1);
}

uint64_t _NSLayoutTreeDeleteCurrentNode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  while (2)
  {
    v9 = *(*(a1 + 240) + 248);
    if (*(v9 + 16))
    {
      for (i = 0; i != 3; ++i)
      {
        v11 = *(*(a1 + 240) + 248);
        v12 = *(v11 + 16);
        v13 = *(v12 + 8 * i + 24);
        if (!v13)
        {
          goto LABEL_12;
        }

        if (v11 == v13)
        {
          *(*(a1 + 240) + 248) = v12;
          if (i <= 1)
          {
            do
            {
              v14 = i;
              v15 = *(*(a1 + 240) + 248) + 8 * i;
              *(v15 + 24) = *(v15 + 32);
              i = 1;
            }

            while (!v14);
          }

          goto LABEL_10;
        }

        *(*(a1 + 240) + 256) -= *v13;
        *(*(a1 + 240) + 264) = *(*(a1 + 240) + 264) - *(v13 + 8);
      }

      if (*(*(a1 + 240) + 248))
      {
LABEL_12:
        _NSLayoutTreeLogDebug(@"!!! _NSLayoutTreeDeleteCurrentNode found broken link", a2, a3, a4, a5, a6, a7, a8, v26);
        break;
      }

      v13 = 0;
      *(*(a1 + 240) + 248) = MEMORY[0x10];
LABEL_10:
      *(*(*(a1 + 240) + 248) + 40) = 0;
      _NSLayoutNodeFree(v13);
      v16 = *(*(a1 + 240) + 248);
      if (!*(v16 + 24))
      {
        continue;
      }

      _NSLayoutNodeSetInvariants(v16);
    }

    else
    {
      v23 = *(*(a1 + 240) + 240);
      if (v9 == v23)
      {
        _NSLayoutNodeFree(v23);
        v24 = *(*(a1 + 240) + 344);
        v25 = malloc_type_calloc(1uLL, 0x40uLL, 0x10A2040487CA78AuLL);
        v25[59] = 1;
        *v25 = 0;
        *(v25 + 1) = v24;
        v25[56] = 0;
        *(*(a1 + 240) + 240) = v25;
      }

      else
      {
        _NSLayoutNodeFree(v9);
      }

      *(*(a1 + 240) + 248) = *(*(a1 + 240) + 240);
      *(*(a1 + 240) + 256) = 0;
      *(*(a1 + 240) + 264) = 0;
    }

    break;
  }

  v17 = (a1 + 240);
  for (result = *(*(a1 + 240) + 240); !*(result + 59); result = *(*(a1 + 240) + 240))
  {
    if (*(result + 32))
    {
      break;
    }

    v19 = *(result + 24);
    if (v19)
    {
      *(result + 24) = 0;
      *(v19 + 16) = 0;
      v20 = (*v17 + 240);
      if (v20[1] == *v20)
      {
        v20[1] = v19;
      }

      _NSLayoutNodeFree(*(*(a1 + 240) + 240));
      *(*(a1 + 240) + 240) = v19;
    }

    else
    {
      _NSLayoutNodeFree(result);
      v21 = *(*(a1 + 240) + 344);
      v22 = malloc_type_calloc(1uLL, 0x40uLL, 0x10A2040487CA78AuLL);
      v22[59] = 1;
      *v22 = 0;
      *(v22 + 1) = v21;
      v22[56] = 0;
      *(*(a1 + 240) + 240) = v22;
      *(*(a1 + 240) + 248) = *(*(a1 + 240) + 240);
      *(*(a1 + 240) + 256) = 0;
      *(*(a1 + 240) + 264) = 0;
    }

    v17 = (a1 + 240);
  }

  return result;
}

uint64_t _NSLayoutNodeInvalidate(uint64_t a1, uint64_t a2, unint64_t a3, double a4)
{
  if (!*(a1 + 59))
  {
    v8 = 0;
    v9 = a1 + 24;
    do
    {
      v10 = *(v9 + v8);
      if (v10)
      {
        _NSLayoutNodeFree(v10);
        *(v9 + v8) = 0;
      }

      v8 += 8;
    }

    while (v8 != 24);
  }

  *(a1 + 59) = 1;
  *a1 = a2;
  v11 = a2 - 1;
  if (!a2)
  {
    v11 = 0;
  }

  *(a1 + 8) = (v11 / a3 + 1) * a4;
  *(a1 + 56) = a2 != 0;
  v12 = *(a1 + 24);
  if (v12)
  {
    free(v12);
    *(a1 + 24) = 0;
  }

  v13 = *(a1 + 32);
  if (v13)
  {
    free(v13);
    *(a1 + 32) = 0;
    *(a1 + 58) = 0;
  }

  v14 = *(a1 + 40);
  if (v14)
  {
    free(v14);
    *(a1 + 40) = 0;
  }

  return _NSLayoutNodeSetInvariants(a1);
}

double _NSLayoutTreeInsertNodeBeforeCurrentNode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 240);
  if (!a2)
  {
    goto LABEL_27;
  }

  v11 = *(v10 + 248);
  if (!v11)
  {
    goto LABEL_27;
  }

  v31 = 0u;
  v32 = 0u;
  v12 = a2;
  while (1)
  {
    v13 = v11[2];
    if (!v13)
    {
      v25 = malloc_type_calloc(1uLL, 0x40uLL, 0x10A2040487CA78AuLL);
      v25[1] = 0;
      v25[3] = v12;
      v25[4] = v11;
      *(v12 + 16) = v25;
      v11[2] = v25;
      _NSLayoutNodeSetInvariants(v25);
      *(*(a1 + 240) + 240) = v25;
      goto LABEL_26;
    }

    v14 = 0;
    while (1)
    {
      v15 = v13[v14 + 3];
      if (!v15)
      {
        break;
      }

      if (v11 == v15)
      {
        v15 = v11;
        break;
      }

      if (++v14 == 3)
      {
        v15 = 0;
        break;
      }
    }

    if (v11 != v15)
    {
      _NSLayoutTreeLogDebug(@"!!! _NSLayoutTreeInsertNodeBeforeCurrentNode found broken link", a2, a3, a4, a5, a6, a7, a8, v31);
      v13 = v11;
      v16 = v12;
      goto LABEL_20;
    }

    if (!v13[5])
    {
      break;
    }

    v17 = malloc_type_calloc(1uLL, 0x40uLL, 0x10A2040487CA78AuLL);
    v16 = v17;
    v18 = 0;
    v17[1] = 0;
    do
    {
      *(&v31 + v18 * 8) = v13[v18 + 3];
      v13[v18 + 3] = 0;
      ++v18;
    }

    while (v18 != 3);
    if (v14 <= 2)
    {
      v19 = &v32 + 1;
      v20 = 3;
      v21 = &v32 + 8;
      do
      {
        --v20;
        v22 = *(v21 - 1);
        v21 -= 8;
        *v19 = v22;
        v19 = v21;
      }

      while (v20 > v14);
    }

    *(&v31 + v14) = v12;
    v23 = v31;
    v17[3] = v31;
    *(v23 + 16) = v17;
    v17[4] = *(&v23 + 1);
    *(*(&v23 + 1) + 16) = v17;
    _NSLayoutNodeSetInvariants(v17);
    v24 = v32;
    v13[3] = v32;
    *(v24 + 16) = v13;
    v13[4] = *(&v24 + 1);
    *(*(&v24 + 1) + 16) = v13;
    _NSLayoutNodeSetInvariants(v13);
    if (!v16)
    {
      goto LABEL_26;
    }

LABEL_20:
    v12 = v16;
    v11 = v13;
  }

  if (v14 <= 1)
  {
    v26 = v13 + 5;
    v27 = 2;
    v28 = v13 + 5;
    do
    {
      --v27;
      v29 = *--v28;
      *v26 = v29;
      v26 = v28;
    }

    while (v27 > v14);
  }

  v13[v14 + 3] = v12;
  *(v12 + 16) = v13;
  _NSLayoutNodeSetInvariants(v13);
LABEL_26:
  v10 = *(a1 + 240);
LABEL_27:
  *(v10 + 256) += *a2;
  result = *(a2 + 8) + *(*(a1 + 240) + 264);
  *(*(a1 + 240) + 264) = result;
  return result;
}

void _NSLayoutTreeSetLineFragmentRectForGlyphRange(uint64_t a1, unint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (!a3)
  {
    return;
  }

  if (!_NSLayoutTreeMoveToGlyphIndex(a1, a2) || (v35 = a2 + a3, v36 = *(a1 + 240), v37 = *(v36 + 248), v38 = *(v36 + 256), v29 = *v37, v39 = *v37 + v38, v39 < a2 + a3))
  {
    v40 = @"!!! _NSLayoutTreeSetLineFragmentRectForGlyphRange invalid glyph range";
    goto LABEL_5;
  }

  v41 = *(v37 + 24);
  if (v41)
  {
    v42 = 0;
    v43 = *(v36 + 264);
    v32 = a2 - v38;
    v44 = v41 + 4;
    v45 = *v41 - 1;
    while (1)
    {
      v46 = (v45 + v42) >> 1;
      v47 = v44[10 * v46] & 0x8FFFFFFFFFFFFFFFLL;
      if (v47 <= v32)
      {
        v42 = v46 + 1;
        if (v46 + 1 >= *v41)
        {
          v48 = *v37;
LABEL_40:
          if (a2 != v47 + v38 || a3 != v48 - v47)
          {
            v40 = @"!!! _NSLayoutTreeSetLineFragmentRectForGlyphRange does not match existing range";
            goto LABEL_5;
          }

          v82 = &v44[10 * v46];
          v115 = v82[9];
          v118 = v43 + v82[7];
          __src = a2 - v38;
          v120 = 0;
          *&v126 = a6;
          *(&v126 + 1) = a7;
          v124 = a4;
          v125 = a5 - v43;
          *&v123 = a10;
          *(&v123 + 1) = a11;
          v121 = a8;
          v122 = a9 - v43;
          *(*(*(a1 + 240) + 248) + 24) = _NSGlyphRangeListSet(v41, _NSLayoutNodeSuggestedFragmentCapacity, v29, 32, 0x50uLL, v32, a3, &__src);
          v83 = *(a1 + 240) + 240;
          v84 = a5 + a7;
          v85 = v118 + v115 - (a5 + a7);
          v86 = *(*(a1 + 240) + 248);
          v87 = *(*(a1 + 240) + 256);
          v88 = *v86;
          if (v35 >= *v86 + v87 || v84 == v118 + v115)
          {
            goto LABEL_58;
          }

LABEL_49:
          v90 = 0;
          v91 = *(v86 + 24);
          v92 = *(v83 + 24);
          v93 = v35 - v87;
          v94 = v91 + 4;
          v95 = *v91 - 1;
          while (1)
          {
            v96 = (v95 + v90) >> 1;
            v97 = v94[10 * v96] & 0x8FFFFFFFFFFFFFFFLL;
            if (v97 <= v93)
            {
              v90 = v96 + 1;
              if (v96 + 1 >= *v91)
              {
                v98 = v88;
LABEL_57:
                v99 = &v94[10 * v96];
                v100 = v99[6];
                v101 = v99[2];
                v102 = v92 + v99[3] - v85;
                v103 = v92 + v99[7] - v85 - v92;
                v104 = *(v99 + 2);
                v105 = *(v99 + 4);
                __src = v97;
                v120 = 0;
                v126 = v105;
                v124 = v100;
                v125 = v103;
                v123 = v104;
                v121 = v101;
                v122 = v102 - v92;
                *(*(*(a1 + 240) + 248) + 24) = _NSGlyphRangeListSet(v91, _NSLayoutNodeSuggestedFragmentCapacity, v88, 32, 0x50uLL, v97, v98 - v97, &__src);
                v35 = v98 + v87;
                v83 = *(a1 + 240) + 240;
                v86 = *(*(a1 + 240) + 248);
                v87 = *(*(a1 + 240) + 256);
                v88 = *v86;
                if (v35 >= *v86 + v87)
                {
LABEL_58:
                  *(v86 + 8) = *(v86 + 8) - v85;
                  _NSLayoutNodeSetInvariants(*(*(a1 + 240) + 248));
                  return;
                }

                goto LABEL_49;
              }

              v98 = v94[10 * v90] & 0x8FFFFFFFFFFFFFFFLL;
              if (v98 > v93)
              {
                goto LABEL_57;
              }
            }

            else
            {
              v95 = v96 - 1;
            }

            if (v95 < v90)
            {
              v98 = v94[10 * v96 + 10] & 0x8FFFFFFFFFFFFFFFLL;
              goto LABEL_57;
            }
          }
        }

        v48 = v44[10 * v42] & 0x8FFFFFFFFFFFFFFFLL;
        if (v48 > v32)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v45 = v46 - 1;
      }

      if (v45 < v42)
      {
        v48 = v44[10 * v46 + 10] & 0x8FFFFFFFFFFFFFFFLL;
        goto LABEL_40;
      }
    }
  }

  if (a2 > v38)
  {
    if (v39 > v35)
    {
      Leaf = _NSLayoutNodeCreateLeaf(v39 - v35, *(v36 + 336), *(v36 + 344));
      _NSLayoutTreeInsertNodeAfterCurrentNode(a1, Leaf, v50, v51, v52, v53, v54, v55);
      v36 = *(a1 + 240);
      v37 = *(v36 + 248);
      v38 = *(v36 + 256);
    }

    v56 = v36 + 240;
    v57 = a2 - v38;
    v114 = *(v56 + 96);
    v116 = *(v56 + 104);
    if (!*(v37 + 59))
    {
      v58 = 0;
      v59 = v37 + 24;
      do
      {
        v60 = *(v59 + v58);
        if (v60)
        {
          _NSLayoutNodeFree(v60);
          *(v59 + v58) = 0;
        }

        v58 += 8;
      }

      while (v58 != 24);
    }

    *(v37 + 59) = 1;
    *v37 = v57;
    v61 = v57 - 1;
    if (!v57)
    {
      v61 = 0;
    }

    *(v37 + 8) = v116 * (v61 / v114 + 1);
    *(v37 + 56) = a2 != v38;
    v62 = *(v37 + 24);
    if (v62)
    {
      free(v62);
      *(v37 + 24) = 0;
    }

    v63 = *(v37 + 32);
    if (v63)
    {
      free(v63);
      *(v37 + 32) = 0;
      *(v37 + 58) = 0;
    }

    v64 = *(v37 + 40);
    if (v64)
    {
      free(v64);
      *(v37 + 40) = 0;
    }

    _NSLayoutNodeSetInvariants(v37);
    v65 = *(*(a1 + 240) + 336);
    v117 = *(*(a1 + 240) + 344);
    v66 = malloc_type_calloc(1uLL, 0x40uLL, 0x10A2040487CA78AuLL);
    v73 = v66;
    *(v66 + 59) = 1;
    *v66 = a3;
    v66[1] = v117 * ((a3 - 1) / v65 + 1);
    *(v66 + 56) = 1;
LABEL_33:
    _NSLayoutNodeSetLineFragment(v66, a3, *(*(a1 + 240) + 264) + *(*(*(a1 + 240) + 248) + 8), a4, a5, a6, a7, v67, v68, v69, v70, v71, v72, *&a8, *&a9, *&a10, *&a11);

    _NSLayoutTreeInsertNodeAfterCurrentNode(a1, v73, v74, v75, v76, v77, v78, v79);
    return;
  }

  if (a2)
  {
    v80 = v39 - v35;
    if (v39 <= v35)
    {
      _NSLayoutTreeDeleteCurrentNode(a1, v80, v29, v30, v31, v32, v33, v34);
    }

    else
    {
      _NSLayoutNodeInvalidate(*(v36 + 248), v80, *(v36 + 336), *(v36 + 344));
    }

    if (_NSLayoutTreeMoveToGlyphIndex(a1, a2 - 1))
    {
      v113 = *(*(a1 + 240) + 248);
      if (v113[3] && (*v113 + a3) <= 0x2000)
      {
        _NSLayoutNodeAppendLineFragment(v113, a3, v29, v30, v31, v32, v33, v34, *(*(a1 + 240) + 264), a4, a5, a6, a7, *&a8, *&a9, *&a10, *&a11);
        return;
      }

      v66 = _NSLayoutNodeCreateLeaf(a3, *(*(a1 + 240) + 336), *(*(a1 + 240) + 344));
      v73 = v66;
      goto LABEL_33;
    }

    v40 = @"!!! _NSLayoutTreeSetLineFragmentRectForGlyphRange found invalid glyph index";
LABEL_5:

    _NSLayoutTreeLogDebug(v40, v28, v29, v30, v31, v32, v33, v34, a17);
  }

  else
  {
    if (v39 > v35)
    {
      v106 = _NSLayoutNodeCreateLeaf(v39 - v35, *(v36 + 336), *(v36 + 344));
      _NSLayoutTreeInsertNodeAfterCurrentNode(a1, v106, v107, v108, v109, v110, v111, v112);
      v36 = *(a1 + 240);
      v37 = *(v36 + 248);
    }

    _NSLayoutNodeSetLineFragment(v37, a3, *(v36 + 264), a4, a5, a6, a7, v29, v30, v31, v32, v33, v34, *&a8, *&a9, *&a10, *&a11);
  }
}

uint64_t _NSLayoutNodeSetInvariants(uint64_t result)
{
  for (; result; result = *(result + 16))
  {
    if (!*(result + 59))
    {
      v1 = 0;
      v2 = 0;
      v3 = 0.0;
      for (i = 24; i != 48; i += 8)
      {
        v5 = *(result + i);
        if (v5)
        {
          v2 += *v5;
          v3 = v3 + *(v5 + 8);
          v1 |= *(v5 + 56);
        }
      }

      *result = v2;
      *(result + 8) = v3;
      *(result + 56) = v1;
    }
  }

  return result;
}

uint64_t _NSLayoutNodeSetLineFragment(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v24 = *(a1 + 24);
  if (v24)
  {
    free(v24);
    *(a1 + 24) = 0;
  }

  v25 = *(a1 + 32);
  if (v25)
  {
    free(v25);
    *(a1 + 32) = 0;
    *(a1 + 58) = 0;
  }

  v26 = *(a1 + 40);
  if (v26)
  {
    free(v26);
    *(a1 + 40) = 0;
  }

  *a1 = a2;
  *(a1 + 56) = 2;
  if (*MEMORY[0x1E69E9AC8] < 0x10uLL)
  {
    v27 = 1;
  }

  else
  {
    v27 = 16;
  }

  if (*MEMORY[0x1E69E9AC8] >= 0x10uLL)
  {
    v28 = 1312;
  }

  else
  {
    v28 = 112;
  }

  v29 = *(a1 + 24);
  if (v29)
  {
    v30 = *v29;
    v31 = malloc_type_realloc(v29, v28, 0x6D4054D6uLL);
    *(a1 + 24) = v31;
    if (v27 > v30)
    {
      bzero(&v31[80 * v30 + 32], 80 * (v27 - v30));
    }
  }

  else
  {
    v32 = malloc_type_calloc(1uLL, v28, 0x3E8E56EFuLL);
    *(a1 + 24) = v32;
    v32[1] = *MEMORY[0x1E696AA88];
  }

  *(*(a1 + 24) + 8) = v27;
  **(a1 + 24) = 1;
  *(*(a1 + 24) + 32) = 0;
  *(*(a1 + 24) + 40) = 0;
  v33 = *(a1 + 24);
  v33[10] = a4;
  v33[11] = a5;
  v33[12] = a6;
  v33[13] = a7;
  v34 = *(a1 + 24);
  v34[6] = a14;
  v34[7] = a15;
  v34[8] = a16;
  v34[9] = a17;
  *(*(a1 + 24) + 88) = *(*(a1 + 24) + 88) - a3;
  *(*(a1 + 24) + 56) = *(*(a1 + 24) + 56) - a3;
  *(a1 + 8) = a5 + a7 - a3;

  return _NSLayoutNodeSetInvariants(a1);
}

uint64_t _NSLayoutNodeAppendLineFragment(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, double a9, double a10, double a11, double a12, double a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v22 = *a1;
  v23 = *a1 + a2;
  *a1 = v23;
  v24 = *(a1 + 24);
  v38 = v22;
  *&v39 = 0;
  v45 = a12;
  v46 = a13;
  v43 = a10;
  v44 = a11 - a9;
  v41 = a16;
  v42 = a17;
  *(&v39 + 1) = a14;
  v40 = *&a15 - a9;
  *(a1 + 24) = _NSGlyphRangeListSet(v24, _NSLayoutNodeSuggestedFragmentCapacity, v23, 32, 0x50uLL, v22, a2, &v38);
  v25 = *(a1 + 32);
  if (v25)
  {
    v26 = *(a1 + 58);
    v27 = *MEMORY[0x1E696AA78];
    v47 = 0;
    v48 = 0;
    v38 = 0;
    v39 = 0uLL;
    if (v26 == 1)
    {
      v38 = v22;
      v39 = v27;
      v28 = &v38;
    }

    else
    {
      v28 = 0;
      if (!v26)
      {
        v47 = v22;
        v48 = v27;
        v28 = &v47;
      }
    }

    v29 = 24;
    if (v26 != 1)
    {
      v29 = 0;
    }

    if (v26)
    {
      v30 = v29;
    }

    else
    {
      v30 = 16;
    }

    *(a1 + 32) = _NSGlyphRangeListSet(v25, _NSLayoutNodeSuggestedLocationCapacity, v23, 16, v30, v22, a2, v28);
  }

  v31 = *(a1 + 40);
  if (v31)
  {
    v38 = v22;
    __asm { FMOV            V0.2D, #-1.0 }

    v39 = _Q0;
    *(a1 + 40) = _NSGlyphRangeListSet(v31, _NSLayoutNodeSuggestedAttachmentSizeCapacity, v23, 16, 0x18uLL, v22, a2, &v38);
  }

  *(a1 + 8) = a11 + a13 - a9;
  return _NSLayoutNodeSetInvariants(a1);
}

void _NSLayoutTreeSetLocationForGlyphRange(uint64_t a1, unint64_t a2, uint64_t a3, double a4, double a5)
{
  if (a3)
  {
    if (_NSLayoutTreeMoveToGlyphIndex(a1, a2) && (v17 = *(*(a1 + 240) + 248), v18 = *(*(a1 + 240) + 256), v11 = *v17, a2 + a3 <= *v17 + v18))
    {
      v19 = *(v17 + 32);
      if (!v19)
      {
        *(v17 + 56) |= 4u;
        *(*(*(a1 + 240) + 248) + 58) = 1;
        v20 = *(*(a1 + 240) + 248);
        if (*MEMORY[0x1E69E9AC8] < 0x10uLL)
        {
          v21 = 1;
        }

        else
        {
          v21 = 16;
        }

        v22 = 24;
        if (*(v20 + 58) != 1)
        {
          v22 = 0;
        }

        if (*(v20 + 58))
        {
          v23 = v22;
        }

        else
        {
          v23 = 16;
        }

        v24 = v23 << (4 * (*MEMORY[0x1E69E9AC8] > 0xFuLL));
        v25 = *(v20 + 32);
        if (v25)
        {
          v26 = *v25;
          v27 = malloc_type_realloc(v25, v24 + 16, 0x258D3743uLL);
          *(v20 + 32) = v27;
          if (v21 > v26)
          {
            bzero(v27 + v26 * v23 + 16, (v21 - v26) * v23);
            v27 = *(v20 + 32);
          }
        }

        else
        {
          v27 = malloc_type_calloc(1uLL, v24 + 16, 0x1B4BEB68uLL);
          *(v20 + 32) = v27;
        }

        v27[1] = v21;
        **(*(*(a1 + 240) + 248) + 32) = 1;
        *(*(*(*(a1 + 240) + 248) + 32) + 16) = 0;
        *(*(*(*(a1 + 240) + 248) + 32) + 24) = *MEMORY[0x1E696AA78];
        _NSLayoutNodeSetInvariants(*(*(a1 + 240) + 248));
        v17 = *(*(a1 + 240) + 248);
        v18 = *(*(a1 + 240) + 256);
        v19 = *(v17 + 32);
        v11 = *v17;
      }

      v28 = *(v17 + 58);
      v29 = a2 - v18;
      v36 = 0;
      v37 = 0.0;
      __src = 0;
      v34 = 0.0;
      v35 = 0.0;
      if (v28 == 1)
      {
        __src = a2 - v18;
        p_src = &__src;
        v34 = a4;
        v35 = a5;
      }

      else
      {
        p_src = 0;
        if (!v28)
        {
          v36 = a2 - v18;
          v37 = a4;
          p_src = &v36;
        }
      }

      v31 = 24;
      if (v28 != 1)
      {
        v31 = 0;
      }

      if (v28)
      {
        v32 = v31;
      }

      else
      {
        v32 = 16;
      }

      *(*(*(a1 + 240) + 248) + 32) = _NSGlyphRangeListSet(v19, _NSLayoutNodeSuggestedLocationCapacity, v11, 16, v32, v29, a3, p_src);
    }

    else
    {
      _NSLayoutTreeLogDebug(@"!!! _NSLayoutTreeSetLocationForGlyphRange invalid glyph range {%lu, %lu}", v10, v11, v12, v13, v14, v15, v16, a2);
    }
  }
}

void _NSLayoutTreeSetAttachmentSizeForGlyphRange(uint64_t a1, unint64_t a2, uint64_t a3, double a4, double a5)
{
  if (a3)
  {
    if (_NSLayoutTreeMoveToGlyphIndex(a1, a2) && (v18 = *(*(a1 + 240) + 248), v17 = *(*(a1 + 240) + 256), v11 = *v18, a2 + a3 <= *v18 + v17))
    {
      v19 = v18[5];
      if (!v19)
      {
        if (*MEMORY[0x1E69E9AC8] < 0x10uLL)
        {
          v20 = 1;
        }

        else
        {
          v20 = 16;
        }

        if (*MEMORY[0x1E69E9AC8] >= 0x10uLL)
        {
          v21 = 400;
        }

        else
        {
          v21 = 40;
        }

        v22 = malloc_type_calloc(1uLL, v21, 0x3C0A90FuLL);
        v18[5] = v22;
        v22[1] = v20;
        **(*(*(a1 + 240) + 248) + 40) = 1;
        *(*(*(*(a1 + 240) + 248) + 40) + 16) = 0;
        __asm { FMOV            V0.2D, #-1.0 }

        *(*(*(*(a1 + 240) + 248) + 40) + 24) = _Q0;
        *(*(*(a1 + 240) + 248) + 56) |= 8u;
        _NSLayoutNodeSetInvariants(*(*(a1 + 240) + 248));
        v28 = *(*(a1 + 240) + 248);
        v17 = *(*(a1 + 240) + 256);
        v19 = v28[5];
        v11 = *v28;
      }

      __src[0] = a2 - v17;
      *&__src[1] = a4;
      *&__src[2] = a5;
      *(*(*(a1 + 240) + 248) + 40) = _NSGlyphRangeListSet(v19, _NSLayoutNodeSuggestedAttachmentSizeCapacity, v11, 16, 0x18uLL, a2 - v17, a3, __src);
    }

    else
    {
      _NSLayoutTreeLogDebug(@"!!! _NSLayoutTreeSetAttachmentSizeForGlyphRange invalid glyph range {%lu, %lu}", v10, v11, v12, v13, v14, v15, v16, a2);
    }
  }
}

void _NSLayoutTreeSetLineFragmentDrawsOutsideLineAtGlyphIndex(uint64_t a1, unint64_t a2)
{
  if (!_NSLayoutTreeMoveToGlyphIndex(a1, a2) || (v11 = *(*(*(a1 + 240) + 248) + 24)) == 0)
  {
    _NSLayoutTreeLogDebug(@"!!! _NSLayoutTreeSetLineFragmentDrawsOutsideLineAtGlyphIndex invalid glyph index %lu", v4, v5, v6, v7, v8, v9, v10, a2);
    return;
  }

  v12 = 0;
  v13 = a2 - *(*(a1 + 240) + 256);
  v16 = *v11;
  v14 = v11 + 4;
  v15 = v16;
  v17 = v16 - 1;
  v18 = v16 - 1;
  while (1)
  {
    v19 = (v18 + v12) >> 1;
    v20 = v14[10 * v19];
    if ((v20 & 0x8FFFFFFFFFFFFFFFLL) <= v13)
    {
      break;
    }

    v18 = v19 - 1;
LABEL_8:
    if (v18 < v12)
    {
      goto LABEL_9;
    }
  }

  v12 = v19 + 1;
  if (v19 + 1 < v15 && (v14[10 * v12] & 0x8FFFFFFFFFFFFFFFLL) <= v13)
  {
    goto LABEL_8;
  }

LABEL_9:
  if ((v20 & 0x1000000000000000) != 0)
  {
    return;
  }

  v21 = 0;
  while (2)
  {
    v22 = (v17 + v21) >> 1;
    v23 = v14[10 * v22] & 0x8FFFFFFFFFFFFFFFLL;
    if (v23 > v13)
    {
      v17 = v22 - 1;
      goto LABEL_15;
    }

    v21 = v22 + 1;
    if (v22 + 1 < v15 && (v14[10 * v21] & 0x8FFFFFFFFFFFFFFFLL) <= v13)
    {
LABEL_15:
      if (v17 < v21)
      {
        break;
      }

      continue;
    }

    break;
  }

  v14[10 * v22] = v20 & 0xE000000000000000 | v23 | 0x1000000000000000;
  v24 = *(*(a1 + 240) + 248);
  if ((*(v24 + 56) & 0x10) == 0)
  {
    *(v24 + 56) |= 0x10u;
    v25 = *(*(a1 + 240) + 248);

    _NSLayoutNodeSetInvariants(v25);
  }
}

void _NSLayoutTreeSetOutsideDrawsUponLineFragmentAtGlyphIndex(uint64_t a1, unint64_t a2)
{
  if (!_NSLayoutTreeMoveToGlyphIndex(a1, a2) || (v11 = *(*(*(a1 + 240) + 248) + 24)) == 0)
  {
    _NSLayoutTreeLogDebug(@"!!! _NSLayoutTreeSetOutsideDrawsUponLineFragmentAtGlyphIndex invalid glyph index %lu", v4, v5, v6, v7, v8, v9, v10, a2);
    return;
  }

  v12 = 0;
  v13 = a2 - *(*(a1 + 240) + 256);
  v16 = *v11;
  v14 = v11 + 4;
  v15 = v16;
  v17 = v16 - 1;
  v18 = v16 - 1;
  while (1)
  {
    v19 = (v18 + v12) >> 1;
    v20 = v14[10 * v19];
    if ((v20 & 0x8FFFFFFFFFFFFFFFLL) <= v13)
    {
      break;
    }

    v18 = v19 - 1;
LABEL_8:
    if (v18 < v12)
    {
      goto LABEL_9;
    }
  }

  v12 = v19 + 1;
  if (v19 + 1 < v15 && (v14[10 * v12] & 0x8FFFFFFFFFFFFFFFLL) <= v13)
  {
    goto LABEL_8;
  }

LABEL_9:
  if ((v20 & 0x2000000000000000) != 0)
  {
    return;
  }

  v21 = 0;
  while (2)
  {
    v22 = (v17 + v21) >> 1;
    v23 = v14[10 * v22] & 0x8FFFFFFFFFFFFFFFLL;
    if (v23 > v13)
    {
      v17 = v22 - 1;
      goto LABEL_15;
    }

    v21 = v22 + 1;
    if (v22 + 1 < v15 && (v14[10 * v21] & 0x8FFFFFFFFFFFFFFFLL) <= v13)
    {
LABEL_15:
      if (v17 < v21)
      {
        break;
      }

      continue;
    }

    break;
  }

  v14[10 * v22] = v20 & 0xD000000000000000 | v23 | 0x2000000000000000;
  v24 = *(*(a1 + 240) + 248);
  if ((*(v24 + 56) & 0x20) == 0)
  {
    *(v24 + 56) |= 0x20u;
    v25 = *(*(a1 + 240) + 248);

    _NSLayoutNodeSetInvariants(v25);
  }
}

unint64_t _NSLayoutTreeSetBlocksDependUponLineFragmentAtGlyphIndex(uint64_t a1, unint64_t a2)
{
  result = _NSLayoutTreeMoveToGlyphIndex(a1, a2);
  if (!result)
  {
    return result;
  }

  v5 = *(*(*(a1 + 240) + 248) + 24);
  if (!v5)
  {
    return result;
  }

  v6 = 0;
  v7 = a2 - *(*(a1 + 240) + 256);
  v10 = *v5;
  v8 = v5 + 4;
  v9 = v10;
  v11 = v10 - 1;
  v12 = v10 - 1;
  while (1)
  {
    result = (v12 + v6) >> 1;
    v13 = v8[10 * result];
    if ((v13 & 0x8FFFFFFFFFFFFFFFLL) <= v7)
    {
      break;
    }

    v12 = result - 1;
LABEL_8:
    if (v12 < v6)
    {
      goto LABEL_9;
    }
  }

  v6 = result + 1;
  if (result + 1 < v9)
  {
    result = v8[10 * v6] & 0x8FFFFFFFFFFFFFFFLL;
    if (result <= v7)
    {
      goto LABEL_8;
    }
  }

LABEL_9:
  if ((v13 & 0x4000000000000000) != 0)
  {
    return result;
  }

  v14 = 0;
  while (2)
  {
    v15 = (v11 + v14) >> 1;
    result = v8[10 * v15] & 0x8FFFFFFFFFFFFFFFLL;
    if (result > v7)
    {
      v11 = v15 - 1;
      goto LABEL_15;
    }

    v14 = v15 + 1;
    if (v15 + 1 < v9 && (v8[10 * v14] & 0x8FFFFFFFFFFFFFFFLL) <= v7)
    {
LABEL_15:
      if (v11 < v14)
      {
        break;
      }

      continue;
    }

    break;
  }

  v8[10 * v15] = v13 & 0xB000000000000000 | result | 0x4000000000000000;
  v16 = *(*(a1 + 240) + 248);
  if ((*(v16 + 56) & 0x40) == 0)
  {
    *(v16 + 56) |= 0x40u;
    v17 = *(*(a1 + 240) + 248);

    return _NSLayoutNodeSetInvariants(v17);
  }

  return result;
}

double _NSLayoutTreeSetExtraLineFragmentRect(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v17 = *(a1 + 240);
  v18 = **(v17 + 240);
  v19 = 0.0;
  if (v18)
  {
    v38 = a4;
    v20 = v18 - 1;
    v21 = _NSLayoutTreeMoveToGlyphIndex(a1, v18 - 1);
    v17 = *(a1 + 240);
    if (v21)
    {
      v22 = *(v17 + 256);
      v23 = *(*(v17 + 248) + 24);
      v24 = *(v17 + 264);
      if (v23)
      {
        v25 = 0;
        v26 = v20 - v22;
        v29 = *v23;
        v27 = v23 + 4;
        v28 = v29;
        v30 = v29 - 1;
        while (1)
        {
          v31 = (v30 + v25) >> 1;
          if ((v27[10 * v31] & 0x8FFFFFFFFFFFFFFFLL) <= v26)
          {
            v25 = v31 + 1;
            if (v31 + 1 >= v28 || (v27[10 * v25] & 0x8FFFFFFFFFFFFFFFLL) > v26)
            {
LABEL_10:
              v32 = &v27[10 * v31];
              v33 = v32[9];
              v34 = v24 + v32[7];
              goto LABEL_12;
            }
          }

          else
          {
            v30 = v31 - 1;
          }

          if (v30 < v25)
          {
            goto LABEL_10;
          }
        }
      }

      v33 = *(v17 + 344);
      v34 = v24 + ((v20 - v22) / *(v17 + 336)) * v33;
LABEL_12:
      v19 = v34 + v33;
    }

    a4 = v38;
  }

  v35 = (v17 + 240);
  v35[4] = a2;
  v35[5] = a3;
  v35[6] = a4;
  v35[7] = a5;
  v36 = (*(a1 + 240) + 240);
  v36[8] = a6;
  v36[9] = a7;
  v36[10] = a8;
  v36[11] = a9;
  *(*(a1 + 240) + 280) = *(*(a1 + 240) + 280) - v19;
  result = *(*(a1 + 240) + 312) - v19;
  *(*(a1 + 240) + 312) = result;
  return result;
}

void _NSLayoutTreeSetBaselineOffsetForGlyphAtIndex(uint64_t a1, unint64_t a2, double a3)
{
  if (_NSLayoutTreeMoveToGlyphIndex(a1, a2))
  {
    if (a3 != 0.0)
    {
      v13 = *(*(*(a1 + 240) + 248) + 24);
      if (v13)
      {
        v14 = 0;
        v15 = a2 - *(*(a1 + 240) + 256);
        v18 = *v13;
        v16 = v13 + 4;
        v17 = v18;
        v19 = v18 - 1;
        while (1)
        {
          v20 = (v19 + v14) >> 1;
          if ((v16[10 * v20] & 0x8FFFFFFFFFFFFFFFLL) <= v15)
          {
            v14 = v20 + 1;
            if (v20 + 1 >= v17 || (v16[10 * v14] & 0x8FFFFFFFFFFFFFFFLL) > v15)
            {
LABEL_10:
              *&v16[10 * v20 + 1] = a3;
              return;
            }
          }

          else
          {
            v19 = v20 - 1;
          }

          if (v19 < v14)
          {
            goto LABEL_10;
          }
        }
      }
    }
  }

  else
  {
    _NSLayoutTreeLogDebug(@"!!! _NSLayoutTreeGetBaselineOffsetForGlyphAtIndex invalid glyph index %lu", v6, v7, v8, v9, v10, v11, v12, a2);
  }
}

void *_NSGlyphRangeListCreateSubRange(unint64_t *a1, uint64_t (*a2)(unint64_t), unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v10 = 0;
  v11 = *a1;
  v12 = a1 + a4;
  v13 = *a1 - 1;
  v14 = v13;
  while (1)
  {
    v15 = (v14 + v10) >> 1;
    v16 = v15 * a5;
    if ((*&v12[v15 * a5] & 0x8FFFFFFFFFFFFFFFLL) <= a6)
    {
      break;
    }

    v14 = v15 - 1;
LABEL_6:
    if (v14 < v10)
    {
      v18 = &v12[v16];
      v17 = a5 + a5 * v15;
      goto LABEL_10;
    }
  }

  v10 = v15 + 1;
  if (v15 + 1 >= v11)
  {
    v18 = &v12[v16];
    goto LABEL_11;
  }

  v17 = v10 * a5;
  if ((*&v12[v10 * a5] & 0x8FFFFFFFFFFFFFFFLL) <= a6)
  {
    goto LABEL_6;
  }

  v18 = &v12[v16];
LABEL_10:
  a3 = *&v12[v17] & 0x8FFFFFFFFFFFFFFFLL;
LABEL_11:
  v19 = v15;
  if (a6 + a7 > a3)
  {
    v20 = 0;
    v21 = a6 + a7 - 1;
    do
    {
      v19 = (v13 + v20) >> 1;
      if ((*&v12[v19 * a5] & 0x8FFFFFFFFFFFFFFFLL) <= v21)
      {
        v20 = v19 + 1;
        if (v19 + 1 >= v11 || (*&v12[v20 * a5] & 0x8FFFFFFFFFFFFFFFLL) > v21)
        {
          break;
        }
      }

      else
      {
        v13 = v19 - 1;
      }
    }

    while (v13 >= v20);
  }

  v22 = v19 - v15;
  v23 = v19 - v15 + 1;
  v24 = a2(v23);
  v25 = malloc_type_calloc(1uLL, a4 + v24 * a5, 0x1E45C19CuLL);
  *v25 = v23;
  v25[1] = v24;
  memmove(v25 + a4, v18, v23 * a5);
  if (a6)
  {
    *(v25 + a4) &= 0x7000000000000000uLL;
    if (v23 >= 2)
    {
      v26 = (v25 + a5 + a4);
      do
      {
        *v26 = ((*v26 & 0x8FFFFFFFFFFFFFFFLL) - a6) & 0x8FFFFFFFFFFFFFFFLL | (((*v26 >> 60) & 7) << 60);
        v26 = (v26 + a5);
        --v22;
      }

      while (v22);
    }
  }

  return v25;
}

void *_NSGlyphRangeListTruncate(void *a1, uint64_t (*a2)(unint64_t), unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v11 = a1;
  v12 = 0;
  v13 = *a1;
  v14 = a1[1];
  v15 = (a1 + a4);
  v16 = *a1 - 1;
  v17 = v16;
  while (1)
  {
    v18 = v17 + v12;
    v19 = (v17 + v12) >> 1;
    v20 = v19 * a5;
    if ((*(v15 + v19 * a5) & 0x8FFFFFFFFFFFFFFFLL) <= a6)
    {
      break;
    }

    v17 = v19 - 1;
LABEL_6:
    if (v17 < v12)
    {
      v22 = v15 + v20;
      v21 = a5 + a5 * v19;
      goto LABEL_10;
    }
  }

  v12 = v19 + 1;
  if (v19 + 1 >= v13)
  {
    v22 = v15 + v20;
    goto LABEL_11;
  }

  v21 = v12 * a5;
  if ((*(v15 + v12 * a5) & 0x8FFFFFFFFFFFFFFFLL) <= a6)
  {
    goto LABEL_6;
  }

  v22 = v15 + v20;
LABEL_10:
  a3 = *(v15 + v21) & 0x8FFFFFFFFFFFFFFFLL;
LABEL_11:
  v23 = v19;
  if (a6 + a7 > a3)
  {
    v24 = 0;
    v25 = a6 + a7 - 1;
    do
    {
      v23 = (v16 + v24) >> 1;
      if ((*(v15 + v23 * a5) & 0x8FFFFFFFFFFFFFFFLL) <= v25)
      {
        v24 = v23 + 1;
        if (v23 + 1 >= v13 || (*(v15 + v24 * a5) & 0x8FFFFFFFFFFFFFFFLL) > v25)
        {
          break;
        }
      }

      else
      {
        v16 = v23 - 1;
      }
    }

    while (v16 >= v24);
  }

  v26 = v23 - v19;
  v27 = v23 - v19 + 1;
  if (v27 < v13)
  {
    if (v18 >= 2)
    {
      memmove(a1 + a4, v22, v27 * a5);
    }

    *v11 = v27;
    v28 = a2(v27);
    v29 = v28;
    if (v28 != v14)
    {
      v11[1] = v28;
      v11 = malloc_type_realloc(v11, a4 + v28 * a5, 0x590505A9uLL);
      v15 = (v11 + a4);
    }

    if (v29 > v27)
    {
      bzero(v15 + v27 * a5, (v29 - v27) * a5);
    }
  }

  if (a6)
  {
    *v15 &= 0x7000000000000000uLL;
    if (v27 >= 2)
    {
      v30 = (v15 + a5);
      do
      {
        *v30 = ((*v30 & 0x8FFFFFFFFFFFFFFFLL) - a6) & 0x8FFFFFFFFFFFFFFFLL | (((*v30 >> 60) & 7) << 60);
        v30 = (v30 + a5);
        --v26;
      }

      while (v26);
    }
  }

  return v11;
}

void *_NSGlyphRangeListSet(void *a1, uint64_t (*a2)(unint64_t), unint64_t a3, uint64_t a4, size_t __len, unint64_t a6, uint64_t a7, void *__src)
{
  v8 = a1;
  if (!a7)
  {
    return v8;
  }

  v11 = 0;
  v13 = *a1;
  v12 = a1[1];
  v14 = a1 + a4;
  v15 = *a1 - 1;
  v16 = v15;
  while (1)
  {
    v17 = (v16 + v11) >> 1;
    v18 = *&v14[v17 * __len] & 0x8FFFFFFFFFFFFFFFLL;
    if (v18 <= a6)
    {
      break;
    }

    v16 = v17 - 1;
LABEL_7:
    if (v16 < v11)
    {
      v19 = __len + __len * v17;
LABEL_9:
      v20 = 0;
      v21 = *&v14[v19] & 0x8FFFFFFFFFFFFFFFLL;
      goto LABEL_11;
    }
  }

  v11 = v17 + 1;
  if (v17 + 1 < v13)
  {
    v19 = v11 * __len;
    if ((*&v14[v11 * __len] & 0x8FFFFFFFFFFFFFFFLL) > a6)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v20 = 1;
  v21 = a3;
LABEL_11:
  v22 = a6 + a7;
  v23 = v17;
  if (a6 + a7 > v21)
  {
    v24 = 0;
    v25 = v22 - 1;
    do
    {
      v23 = (v15 + v24) >> 1;
      if ((*&v14[v23 * __len] & 0x8FFFFFFFFFFFFFFFLL) <= v25)
      {
        v24 = v23 + 1;
        if (v23 + 1 >= v13)
        {
          goto LABEL_20;
        }

        if ((*&v14[v24 * __len] & 0x8FFFFFFFFFFFFFFFLL) > v25)
        {
          break;
        }
      }

      else
      {
        v15 = v23 - 1;
      }
    }

    while (v15 >= v24);
  }

  if ((v20 & 1) == 0)
  {
    a3 = *&v14[__len + __len * v23] & 0x8FFFFFFFFFFFFFFFLL;
  }

LABEL_20:
  if (a6 <= v18)
  {
    v26 = v17;
  }

  else
  {
    v26 = v17 + 1;
  }

  if (v22 < a3)
  {
    v27 = v23;
  }

  else
  {
    v27 = v23 + 1;
  }

  if (v22 >= a3)
  {
    v28 = v26 - v23;
  }

  else
  {
    v28 = v26 - v23 + 1;
  }

  if (v28)
  {
    v29 = v28 + v13;
    *a1 = v28 + v13;
    v34 = __src;
    if (v28 + v13 <= v12)
    {
      v33 = v12;
    }

    else
    {
      v31 = a2(v28 + v13);
      v8[1] = v31;
      v33 = v31;
      v8 = malloc_type_realloc(v8, a4 + v31 * __len, 0xB4A1E50uLL);
      v14 = v8 + a4;
    }

    if (v13 > v27)
    {
      memmove(&v14[(v27 + v28) * __len], &v14[v27 * __len], (v13 - v27) * __len);
    }

    if (v33 > v29)
    {
      bzero(&v14[v29 * __len], (v33 - v29) * __len);
    }

    __src = v34;
  }

  else
  {
    v29 = *a1;
  }

  memmove(&v14[v26 * __len], __src, __len);
  *&v14[v26 * __len] = a6 & 0x8FFFFFFFFFFFFFFFLL | (((*&v14[v26 * __len] >> 60) & 7) << 60);
  if (v26 + 1 < v29)
  {
    *&v14[(v26 + 1) * __len] = v22 & 0x8FFFFFFFFFFFFFFFLL | (((*&v14[(v26 + 1) * __len] >> 60) & 7) << 60);
  }

  return v8;
}

void sub_18E76DD88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a38, 8);
  _Unwind_Resume(a1);
}

void sub_18E76EBB0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(exception_object);
}

void sub_18E76EBE0(void *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x18E76EB34);
  }

  JUMPOUT(0x18E76EBD4);
}

void sub_18E770AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18E770C5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18E7711F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t __NSGetCircledImage(uint64_t a1, double a2, double a3)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ____NSGetCircledImage_block_invoke;
  v5[3] = &unk_1E7265960;
  v5[4] = a1;
  *&v5[5] = a2;
  *&v5[6] = a3;
  (softLinkUIGraphicsBeginImageContextWithOptions[0])(0, a2 + 1.0, a3, 2.0);
  ____NSGetCircledImage_block_invoke(v5, [-[objc_class graphicsContextForApplicationFrameworkContext:](+[NSTextGraphicsContextProvider textGraphicsContextProviderClass](NSTextGraphicsContextProvider "textGraphicsContextProviderClass")]);
  v3 = softLinkUIGraphicsGetImageFromCurrentImageContext[0]();
  softLinkUIGraphicsEndImageContext[0]();
  return v3;
}

uint64_t __NSGetColorForSpellingState(char a1)
{
  if (a1)
  {
    v1 = &selRef_systemRedColor;
    goto LABEL_6;
  }

  if ((a1 & 2) == 0)
  {
    if ((a1 & 0x80) == 0)
    {
      return 0;
    }

    v1 = &selRef_systemBlueColor;
LABEL_6:
    v2 = *v1;
    if (*v1)
    {
      goto LABEL_7;
    }

    return 0;
  }

  v2 = sel_textGrammarIndicatorColor;
  if (!sel_textGrammarIndicatorColor)
  {
    return 0;
  }

  getNSColorClass[0]();
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v1 = &selRef_systemGreenColor;
    goto LABEL_6;
  }

LABEL_7:
  getNSColorClass[0]();
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v3 = getNSColorClass[0]();

  return [(objc_class *)v3 performSelector:v2];
}

uint64_t _maxApplierFunction(uint64_t result, unint64_t a2, void *a3)
{
  v3 = a3[1];
  if (v3 < a2 || v3 == a2 && *a3 > result)
  {
    *a3 = result;
    a3[1] = a2;
  }

  return result;
}

uint64_t initUIGraphicsBeginImageContextWithOptions(uint64_t a1, double a2, double a3, double a4)
{
  v8 = __NSGetFrameworkReference(0, 0);
  v9 = dlsym(v8, "UIGraphicsBeginImageContextWithOptions");
  softLinkUIGraphicsBeginImageContextWithOptions[0] = v9;
  if (!v9)
  {
    initUIGraphicsBeginImageContextWithOptions_cold_1();
  }

  v10.n128_f64[0] = a2;
  v11.n128_f64[0] = a3;
  v12.n128_f64[0] = a4;

  return (v9)(a1, v10, v11, v12);
}

uint64_t initUIGraphicsGetImageFromCurrentImageContext()
{
  v0 = __NSGetFrameworkReference(0, 0);
  v1 = dlsym(v0, "UIGraphicsGetImageFromCurrentImageContext");
  softLinkUIGraphicsGetImageFromCurrentImageContext[0] = v1;
  if (!v1)
  {
    initUIGraphicsGetImageFromCurrentImageContext_cold_1();
  }

  return v1();
}

uint64_t initUIGraphicsEndImageContext()
{
  v0 = __NSGetFrameworkReference(0, 0);
  v1 = dlsym(v0, "UIGraphicsEndImageContext");
  softLinkUIGraphicsEndImageContext[0] = v1;
  if (!v1)
  {
    initUIGraphicsEndImageContext_cold_1();
  }

  return v1();
}

float64x2_t *lmProcessPathElement(float64x2_t *result, uint64_t a2)
{
  v2 = MEMORY[0x1E695EFF8];
  v3 = (MEMORY[0x1E695EFF8] + 8);
  v4 = *a2;
  if (*a2 <= 1)
  {
    if (v4)
    {
      if (v4 == 1)
      {
        v2 = *(a2 + 8);
        v3 = v2 + 1;
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      *result = **(a2 + 8);
      v3 = &result->f64[1];
      v2 = result;
    }

    goto LABEL_15;
  }

  switch(v4)
  {
    case 2:
      v5 = *(a2 + 8);
      v2 = (v5 + 16);
      v3 = (v5 + 24);
LABEL_12:
      v4 = 1;
      goto LABEL_15;
    case 3:
      v6 = *(a2 + 8);
      v2 = (v6 + 32);
      v3 = (v6 + 40);
      goto LABEL_12;
    case 4:
      v3 = &result->f64[1];
      v2 = result;
      break;
  }

  v4 = v4 == 4;
LABEL_15:
  v7 = *v2;
  v8 = *v3;
  v10 = result[2].f64[0];
  v9 = result[2].f64[1];
  v11 = v10 < *v3 && v8 < v9;
  if (v11 || (v8 < v10 ? (v12 = v9 < v8) : (v12 = 0), v12))
  {
    if (v7 < result[3].f64[0])
    {
      result[3].f64[0] = v7;
    }

    if (v7 > result[3].f64[1])
    {
      result[3].f64[1] = v7;
    }
  }

  if (v4)
  {
    v13 = result[1].f64[0];
    v14 = result[1].f64[1];
    v15 = v10 < v8 && v14 < v10;
    if (v15 || (v8 < v10 ? (v16 = v14 <= v10) : (v16 = 1), !v16))
    {
      *&v17 = v13 + (v7 - v13) * (v10 - v14) / (v8 - v14);
      v18 = result[3];
      v19 = vcgtq_f64(vdupq_lane_s64(v17, 0), v18);
      v20.i64[0] = *&result[3].f64[0];
      v20.i64[1] = v17;
      *&v18.f64[0] = v17;
      result[3] = vbslq_s8(v19, v20, v18);
    }

    v21 = v14 > v9;
    if (v8 >= v9)
    {
      v21 = 0;
    }

    if (v8 > v9 && v14 < v9 || v21)
    {
      *&v24 = v13 + (v7 - v13) * (v9 - v14) / (v8 - v14);
      v25 = result[3];
      v26 = vcgtq_f64(vdupq_lane_s64(v24, 0), v25);
      v27.i64[0] = *&result[3].f64[0];
      v27.i64[1] = v24;
      *&v25.f64[0] = v24;
      result[3] = vbslq_s8(v26, v27, v25);
    }
  }

  result[1].f64[0] = v7;
  result[1].f64[1] = v8;
  return result;
}

_BYTE *_NSGlyphTreeCreate(uint64_t a1)
{
  v2 = [*(a1 + 8) length];
  result = malloc_type_calloc(1uLL, 0x40uLL, 0x1032040CA0E71A0uLL);
  result[59] = 1;
  *result = v2;
  *(result + 1) = v2;
  result[56] = v2 != 0;
  *(*(a1 + 240) + 208) = result;
  *(*(a1 + 240) + 216) = result;
  *(*(a1 + 240) + 232) = 0;
  *(*(a1 + 240) + 224) = 0;
  return result;
}

void _NSGlyphTreeFree(uint64_t a1)
{
  _NSGlyphNodeFree(*(*(a1 + 240) + 208));
  *(*(a1 + 240) + 216) = 0;
  *(*(a1 + 240) + 208) = 0;
}

void _NSGlyphNodeFree(_BYTE *a1)
{
  if (a1)
  {
    if (a1[59])
    {
      _NSGlyphNodeSetCapacity(a1, 0);
    }

    else
    {
      for (i = 0; i != 24; i += 8)
      {
        if (*&a1[i + 24])
        {
          _NSGlyphNodeFree();
        }
      }
    }

    free(a1);
  }
}

uint64_t _NSGlyphTreeSummaryDescription(uint64_t a1)
{
  v10 = 0;
  v2 = *(a1 + 240);
  v9 = 0;
  _NSGlyphNodeCalculateMemoryUsage(*(v2 + 208), &v10, &v9);
  v3 = *(*(a1 + 240) + 208);
  v4 = *v3;
  v5 = 0.0;
  v6 = 0.0;
  if (*v3)
  {
    v6 = v9 / v4;
  }

  v7 = v3[1];
  if (v7)
  {
    v5 = v9 / v7;
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"Glyph tree contents:  %lu characters, %lu glyphs, %lu nodes, %lu node bytes, %lu storage bytes, %lu total bytes, %.2f bytes per character, %.2f bytes per glyph", v4, v7, v10, v10 << 6, v9 - (v10 << 6), v9, *&v6, *&v5];
}

void *_NSGlyphTreeDescription(uint64_t a1)
{
  v2 = MEMORY[0x1E696AD60];
  v3 = objc_opt_class();
  v4 = [v2 stringWithFormat:@"<%@: %p>\n%@\n", v3, a1, _NSGlyphTreeSummaryDescription(a1)];
  v5 = *(*(a1 + 240) + 216);
  v8.location = *(*(a1 + 240) + 224);
  v8.length = *v5;
  v6 = NSStringFromRange(v8);
  v9.location = *(*(a1 + 240) + 232);
  v9.length = *(*(*(a1 + 240) + 216) + 8);
  [v4 appendFormat:@"Current node %p char range %@ glyph range %@\nRoot ", v5, v6, NSStringFromRange(v9)];
  _NSGlyphNodeDescribe(*(*(a1 + 240) + 208), v4, 0);
  return v4;
}

uint64_t _NSGlyphNodeDescribe(uint64_t result, void *a2, uint64_t a3)
{
  if (!result)
  {
    return result;
  }

  v3 = a3;
  v5 = result;
  if (a3)
  {
    v6 = a3;
    do
    {
      [a2 appendString:@"  "];
      --v6;
    }

    while (v6);
  }

  v7 = (v5 + 24);
  if (!*(v5 + 59))
  {
    for (i = 0; i != 3; ++i)
    {
      if (!*(v5 + 8 * i + 24))
      {
        break;
      }
    }

    [a2 appendFormat:@"Internal node %p with %lu chars, %lu glyphs, %lu children, flags 0x%x\n", v5, *v5, *(v5 + 8), i, *(v5 + 56)];
    for (j = 0; j != 3; ++j)
    {
      result = _NSGlyphNodeDescribe(v7[j], a2, v3 + 1);
    }

    return result;
  }

  v8 = *v5;
  if (!*(v5 + 24))
  {
    return [a2 appendFormat:@"Leaf node %p with %lu chars, %lu glyphs (not generated), flags 0x%x\n", v5, v8, *(v5 + 8), *(v5 + 56)];
  }

  [a2 appendFormat:@"Leaf node %p with %lu chars, %lu glyphs, capacity %lu, flags 0x%x\n", v5, v8, *(v5 + 8), *(v5 + 48), *(v5 + 56)];
  if (v3)
  {
    v9 = v3;
    do
    {
      [a2 appendString:@"  "];
      --v9;
    }

    while (v9);
  }

  v10 = *(v5 + 57);
  if (v10 > 3)
  {
    v11 = 0;
  }

  else
  {
    v11 = qword_18E8561F0[*(v5 + 57)];
  }

  v14 = *v7;
  if (*v7)
  {
    v15 = 0;
    if (*(v5 + 57) > 1u)
    {
      if (v10 != 2 && v10 != 3)
      {
        goto LABEL_39;
      }

      v16 = *v14;
    }

    else
    {
      if (!*(v5 + 57))
      {
        v20 = *v14;
        v17 = v20 & 3;
        if (v20 >= 4)
        {
          v18 = *v14;
        }

        else
        {
          v18 = 0xFFFFFF;
        }

        v19 = v20 > 0xEF;
        goto LABEL_36;
      }

      v16 = *v14;
    }

    v17 = v16 >> 8;
    if (v16 >= 0x80)
    {
      v18 = 0xFFFFFF;
    }

    else
    {
      v18 = 0;
    }

    v19 = v16 > 0xFF;
LABEL_36:
    if (v19)
    {
      v15 = v17;
    }

    else
    {
      v15 = v18;
    }

    goto LABEL_39;
  }

  v15 = 0;
LABEL_39:
  [a2 appendFormat:@"  glyphs (%lu-byte) <%d", v11, v15];
  if (*(v5 + 8) < 2uLL)
  {
    goto LABEL_66;
  }

  v21 = 1;
  v22 = 24;
  do
  {
    v23 = *v7;
    if (!*v7)
    {
      v24 = 0;
      goto LABEL_62;
    }

    v24 = 0;
    v25 = *(v5 + 57);
    if (v25 > 1)
    {
      if (v25 == 2)
      {
        v26 = *&v23[4 * v21];
      }

      else
      {
        if (v25 != 3)
        {
          goto LABEL_62;
        }

        v26 = *&v23[v22];
      }
    }

    else
    {
      if (!*(v5 + 57))
      {
        v27 = v23[v21];
        v28 = v27 & 3;
        if (v27 >= 4)
        {
          v29 = v27;
        }

        else
        {
          v29 = 0xFFFFFF;
        }

        v30 = v27 > 0xEF;
        goto LABEL_59;
      }

      if (v25 != 1)
      {
        goto LABEL_62;
      }

      v26 = *&v23[2 * v21];
    }

    v28 = v26 >> 8;
    if (v26 >= 0x80)
    {
      v29 = 0xFFFFFF;
    }

    else
    {
      v29 = 0;
    }

    v30 = v26 > 0xFF;
LABEL_59:
    if (v30)
    {
      v24 = v28;
    }

    else
    {
      v24 = v29;
    }

LABEL_62:
    [a2 appendFormat:@" %d", v24];
    v31 = *(v5 + 8);
    if (v21 > 0xFE)
    {
      break;
    }

    ++v21;
    v22 += 24;
  }

  while (v21 < v31);
  if (v31 > 0x100)
  {
    v32 = @"...>\n";
    goto LABEL_67;
  }

LABEL_66:
  v32 = @">\n";
LABEL_67:
  result = [a2 appendString:v32];
  if (*(v5 + 32))
  {
    for (; v3; --v3)
    {
      [a2 appendString:@"  "];
    }

    v33 = *(v5 + 58);
    if (v33 > 2)
    {
      v34 = 0;
    }

    else
    {
      v34 = qword_18E856210[*(v5 + 58)];
    }

    v35 = *(v5 + 32);
    if (!v35)
    {
      goto LABEL_79;
    }

    if (v33 == 2)
    {
      v36 = *v35;
      goto LABEL_82;
    }

    if (v33 == 1)
    {
      v36 = *v35;
      goto LABEL_82;
    }

    if (*(v5 + 58))
    {
LABEL_79:
      v36 = 0;
    }

    else
    {
      v36 = *v35;
    }

LABEL_82:
    [a2 appendFormat:@"  deltas (%lu-byte) <%ld", v34, v36];
    if (*(v5 + 8) < 2uLL)
    {
      goto LABEL_96;
    }

    v37 = 1;
    do
    {
      v38 = *(v5 + 32);
      if (v38)
      {
        v39 = *(v5 + 58);
        if (v39 == 2)
        {
          v38 = *(v38 + 4 * v37);
        }

        else if (v39 == 1)
        {
          v38 = *(v38 + 2 * v37);
        }

        else if (*(v5 + 58))
        {
          v38 = 0;
        }

        else
        {
          v38 = *(v38 + v37);
        }
      }

      [a2 appendFormat:@" %ld", v38];
      v40 = *(v5 + 8);
      if (v37 > 0xFE)
      {
        break;
      }

      ++v37;
    }

    while (v37 < v40);
    if (v40 < 0x101)
    {
LABEL_96:
      v41 = @">\n";
    }

    else
    {
      v41 = @"...>\n";
    }

    return [a2 appendString:v41];
  }

  return result;
}

void _NSGlyphTreeLogDebug(NSString *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (_NSGlyphTreeLogDebug_logCount <= 0xF)
  {
    ++_NSGlyphTreeLogDebug_logCount;
    NSLogv(a1, &a9);
    if (_NSGlyphTreeLogDebug_logCount >= 0x10)
    {
      NSLog(@"!!! Suppressing further NSGlyphTree logs");
    }
  }
}

uint64_t _NSGlyphNodeCalculateMemoryUsage(uint64_t result, void *a2, uint64_t *a3)
{
  if (result)
  {
    ++*a2;
    v5 = *a3 + 64;
    *a3 = v5;
    if (*(result + 59))
    {
      v6 = *(result + 57);
      if (v6 > 3)
      {
        v7 = 0;
      }

      else
      {
        v7 = qword_18E8561F0[v6];
      }

      v10 = *(result + 58);
      if (v10 > 2)
      {
        v11 = 0;
      }

      else
      {
        v11 = qword_18E856210[v10];
      }

      v12 = *(result + 48);
      if (*(result + 24))
      {
        v5 += v12 * v7;
        *a3 = v5;
      }

      if (*(result + 32))
      {
        v5 += v12 * v11;
        *a3 = v5;
      }

      if (*(result + 40))
      {
        *a3 = v5 + v12;
      }
    }

    else
    {
      v8 = 0;
      v9 = result + 24;
      do
      {
        result = _NSGlyphNodeCalculateMemoryUsage(*(v9 + v8), a2, a3);
        v8 += 8;
      }

      while (v8 != 24);
    }
  }

  return result;
}

uint64_t _NSGlyphTreeGetFirstHoleAfterCharacterIndex(uint64_t result, unint64_t a2, unint64_t a3, unint64_t *a4, unint64_t *a5, uint64_t *a6)
{
  v9 = a2;
  v10 = result;
  v11 = (*(result + 240) + 208);
  v12 = *v11;
  v13 = **v11;
  if (((*v11)[7] & 2) == 0)
  {
    v14 = v13 - a2;
    result = _NSGlyphTreeGlyphIndexForCharacterAtIndex(result, a2);
    v15 = result;
    goto LABEL_21;
  }

  v15 = v12[1];
  if (((*v11)[7] & 1) == 0 || (*(*(result + 240) + 216) = v12, *(*(result + 240) + 232) = 0, *(*(result + 240) + 224) = 0, v13 <= a2))
  {
LABEL_20:
    v14 = 0;
    v9 = v13;
    goto LABEL_21;
  }

  while (1)
  {
    v17 = *(v10 + 240);
    v18 = v17 + 26;
    v19 = v17[27];
    if (v19)
    {
      break;
    }

    v9 = v13;
LABEL_19:
    v18[1] = *v18;
    *(*(v10 + 240) + 232) = 0;
    *(*(v10 + 240) + 224) = 0;
    if (v9 >= v13)
    {
      goto LABEL_20;
    }
  }

  if (!*(v19 + 59))
  {
    while (1)
    {
      v20 = v18[2];
      v21 = *v19;
      v22 = 24;
      while (1)
      {
        v23 = *(v10 + 240);
        v24 = *(*(v23 + 216) + v22);
        if (!v24)
        {
          break;
        }

        result = *(v24 + 56);
        v25 = *v24;
        v26 = *(v23 + 224);
        if (result)
        {
          v27 = v25 + v26;
          if (v9 < v27)
          {
            break;
          }
        }

        else
        {
          v27 = v26 + v25;
        }

        *(v23 + 224) = v27;
        *(*(v10 + 240) + 232) += v24[1];
        v22 += 8;
        if (v22 == 48)
        {
          v24 = 0;
          v23 = *(v10 + 240);
          break;
        }
      }

      *(v23 + 216) = v24;
      v17 = *(v10 + 240);
      v18 = v17 + 26;
      v19 = v17[27];
      if (!v19)
      {
        break;
      }

      if (*(v19 + 59))
      {
        goto LABEL_28;
      }
    }

    v9 = v21 + v20;
    goto LABEL_19;
  }

LABEL_28:
  v14 = 0;
  v9 = v18[2];
  v15 = v18[3];
  if (a5)
  {
    if (a3)
    {
      v14 = *v19;
      result = _NSGlyphTreeMoveToCharacterIndex(v10, v17[28] + *v19);
      if (result)
      {
        do
        {
          v28 = *(v10 + 240);
          v29 = *(v28 + 216);
          if (*(v29 + 59))
          {
            if (*(v29 + 24))
            {
              v30 = 1;
            }

            else
            {
              v30 = v14 >= a3;
            }

            if (v30)
            {
              break;
            }
          }

          else if (v14 >= a3)
          {
            break;
          }

          v14 += *v29;
          result = _NSGlyphTreeMoveToCharacterIndex(v10, *(v28 + 224) + *v29);
        }

        while ((result & 1) != 0);
      }
    }
  }

LABEL_21:
  if (a4)
  {
    *a4 = v9;
  }

  if (a5)
  {
    *a5 = v14;
  }

  if (a6)
  {
    *a6 = v15;
  }

  return result;
}

uint64_t _NSGlyphTreeGlyphIndexForCharacterAtIndex(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  if ((*(*(*(a1 + 240) + 208) + 56) & 4) == 0)
  {
    return v2;
  }

  v4 = _NSGlyphTreeMoveToCharacterIndex(a1, a2);
  v5 = *(a1 + 240) + 208;
  if (!v4)
  {
    v14 = *v5;
    v15 = v14 + 1;
    return *v15 + v2 - *v14;
  }

  v6 = *(*(a1 + 240) + 216);
  if (!*(v6 + 59) || (v7 = *(v6 + 32)) == 0)
  {
    v15 = (v5 + 24);
    v14 = (v5 + 16);
    return *v15 + v2 - *v14;
  }

  v9 = *(v5 + 16);
  v8 = *(v5 + 24);
  v10 = _NSGlyphNodePrimitiveRelativeGlyphIndexForRelativeCharacterIndex(*(v5 + 8), v2 - v9);
  v11 = v10 + v8;
  if (v8 < v10 + v8)
  {
    v11 = v8;
  }

  while (v8 + v10 > v8)
  {
    v12 = *(v6 + 58);
    if (v12 == 2)
    {
      v13 = *(v7 + 4 * v10 - 4);
    }

    else if (v12 == 1)
    {
      v13 = *(v7 - 2 + 2 * v10);
    }

    else if (*(v6 + 58))
    {
      v13 = 0;
    }

    else
    {
      v13 = *(v7 + v10 - 1);
    }

    --v10;
    if (v9 - v13 + v10 < v2)
    {
      return v8 + v10 + 1;
    }
  }

  return v11;
}

BOOL _NSGlyphTreeMoveToCharacterIndex(uint64_t a1, unint64_t a2)
{
  for (i = (*(a1 + 240) + 208); ; i = (*(a1 + 240) + 208))
  {
    v3 = i[1];
    if (!v3 || !v3[2])
    {
      break;
    }

    v4 = i[2];
    if (v4 <= a2 && *v3 + v4 > a2)
    {
      goto LABEL_14;
    }

    v5 = 24;
    while (1)
    {
      v6 = *(a1 + 240);
      v7 = *(v6 + 216);
      v8 = v7[2];
      v9 = *(v8 + v5);
      if (!v9)
      {
        break;
      }

      if (v7 == v9)
      {
        goto LABEL_12;
      }

      v10 = v9[1];
      *(v6 + 224) -= *v9;
      *(*(a1 + 240) + 232) -= v10;
      v5 += 8;
      if (v5 == 48)
      {
        v8 = 0;
        v6 = *(a1 + 240);
        goto LABEL_12;
      }
    }

    v8 = 0;
LABEL_12:
    *(v6 + 216) = v8;
  }

  i[1] = *i;
  *(*(a1 + 240) + 232) = 0;
  *(*(a1 + 240) + 224) = 0;
LABEL_14:
  v11 = (*(a1 + 240) + 208);
  v12 = *(*(a1 + 240) + 224);
  if (v12 > a2)
  {
    return 0;
  }

  v13 = *(*(a1 + 240) + 216);
  if (*v13 + v12 <= a2)
  {
    return 0;
  }

  for (j = *(v13 + 59) != 0; !*(v13 + 59); j = *(v13 + 59) != 0)
  {
    v15 = 24;
    while (1)
    {
      v16 = *(a1 + 240);
      v17 = *(*(v16 + 216) + v15);
      if (!v17)
      {
        break;
      }

      v18 = *(v16 + 224);
      v19 = *v17 + v18;
      if (v18 <= a2 && v19 > a2)
      {
        break;
      }

      *(v16 + 224) = v19;
      *(*(a1 + 240) + 232) += v17[1];
      v15 += 8;
      if (v15 == 48)
      {
        v17 = 0;
        v16 = *(a1 + 240);
        break;
      }
    }

    *(v16 + 216) = v17;
    v11 = (*(a1 + 240) + 208);
    v13 = *(*(a1 + 240) + 216);
    if (!v13)
    {
      goto LABEL_29;
    }
  }

  if (!*(v13 + 16))
  {
LABEL_29:
    v11[1] = *v11;
    *(*(a1 + 240) + 232) = 0;
    *(*(a1 + 240) + 224) = 0;
    return j;
  }

  return 1;
}

uint64_t _NSGlyphTreeGetFirstHoleAfterGlyphIndex(uint64_t result, unint64_t a2, unint64_t a3, uint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  v9 = a2;
  v10 = result;
  v11 = *(result + 240) + 208;
  v12 = *v11;
  if ((*(*v11 + 56) & 2) == 0)
  {
    result = _NSGlyphTreeCharacterIndexForGlyphAtIndex(result, a2);
    v13 = result;
    v14 = **(*(v10 + 240) + 208) - result;
    goto LABEL_21;
  }

  v13 = *v12;
  v15 = v12[1];
  if ((*(*v11 + 56) & 1) == 0 || (*(*(result + 240) + 216) = v12, *(*(result + 240) + 232) = 0, *(*(result + 240) + 224) = 0, v15 <= a2))
  {
LABEL_20:
    v14 = 0;
    v9 = v15;
    goto LABEL_21;
  }

  while (1)
  {
    v17 = *(result + 240);
    v18 = v17 + 26;
    v19 = v17[27];
    if (v19)
    {
      break;
    }

    v9 = v15;
LABEL_19:
    v18[1] = *v18;
    *(*(result + 240) + 232) = 0;
    *(*(result + 240) + 224) = 0;
    if (v9 >= v15)
    {
      goto LABEL_20;
    }
  }

  if (!*(v19 + 59))
  {
    while (1)
    {
      v20 = v18[3];
      v21 = *(v19 + 8);
      v22 = 24;
      while (1)
      {
        v23 = *(result + 240);
        v24 = *(v23[27] + v22);
        if (!v24)
        {
          break;
        }

        if (*(v24 + 56))
        {
          v25 = *(v24 + 8);
          if (v9 < v25 + v23[29])
          {
            break;
          }
        }

        else
        {
          v25 = *(v24 + 8);
        }

        v23[28] += *v24;
        *(*(result + 240) + 232) += v25;
        v22 += 8;
        if (v22 == 48)
        {
          v24 = 0;
          v23 = *(result + 240);
          break;
        }
      }

      v23[27] = v24;
      v17 = *(result + 240);
      v18 = v17 + 26;
      v19 = v17[27];
      if (!v19)
      {
        break;
      }

      if (*(v19 + 59))
      {
        goto LABEL_28;
      }
    }

    v9 = v21 + v20;
    goto LABEL_19;
  }

LABEL_28:
  v14 = 0;
  v13 = v18[2];
  v9 = v18[3];
  if (a5)
  {
    if (a3)
    {
      v14 = *v19;
      result = _NSGlyphTreeMoveToCharacterIndex(result, v17[28] + *v19);
      if (result)
      {
        do
        {
          v26 = *(v10 + 240);
          v27 = *(v26 + 216);
          if (*(v27 + 59))
          {
            if (*(v27 + 24))
            {
              v28 = 1;
            }

            else
            {
              v28 = v14 >= a3;
            }

            if (v28)
            {
              break;
            }
          }

          else if (v14 >= a3)
          {
            break;
          }

          v14 += *v27;
          result = _NSGlyphTreeMoveToCharacterIndex(v10, *(v26 + 224) + *v27);
        }

        while ((result & 1) != 0);
      }
    }
  }

LABEL_21:
  if (a4)
  {
    *a4 = v13;
  }

  if (a5)
  {
    *a5 = v14;
  }

  if (a6)
  {
    *a6 = v9;
  }

  return result;
}

unint64_t _NSGlyphTreeCharacterIndexForGlyphAtIndex(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  if ((*(*(*(a1 + 240) + 208) + 56) & 4) != 0)
  {
    if (_NSGlyphTreeMoveToGlyphIndex(a1, a2))
    {
      v4 = *(*(a1 + 240) + 216);
      if (*(v4 + 59) && (v5 = *(v4 + 32)) != 0)
      {
        v6 = *(*(a1 + 240) + 232);
        v7 = *(v4 + 58);
        v8 = v2 - v6;
        if (v7 == 2)
        {
          v9 = *(v5 + 4 * v8);
        }

        else if (v7 == 1)
        {
          v9 = *(v5 + 2 * v8);
        }

        else if (v7)
        {
          v9 = 0;
        }

        else
        {
          v9 = *(v5 + v8);
        }

        return *(*(a1 + 240) + 224) + v2 - v6 - v9;
      }

      else
      {
        return *(*(a1 + 240) + 224) + v2 - *(*(a1 + 240) + 232);
      }
    }

    else
    {
      return **(*(a1 + 240) + 208) + v2 - *(*(*(a1 + 240) + 208) + 8);
    }
  }

  return v2;
}

BOOL _NSGlyphTreeMoveToGlyphIndex(uint64_t a1, unint64_t a2)
{
  for (i = (*(a1 + 240) + 208); ; i = (*(a1 + 240) + 208))
  {
    v3 = i[1];
    if (!v3 || !*(v3 + 16))
    {
      break;
    }

    v4 = i[3];
    if (v4 <= a2 && *(v3 + 8) + v4 > a2)
    {
      goto LABEL_14;
    }

    v5 = 24;
    while (1)
    {
      v6 = *(a1 + 240);
      v7 = *(v6 + 216);
      v8 = v7[2];
      v9 = *(v8 + v5);
      if (!v9)
      {
        break;
      }

      if (v7 == v9)
      {
        goto LABEL_12;
      }

      v10 = v9[1];
      *(v6 + 224) -= *v9;
      *(*(a1 + 240) + 232) -= v10;
      v5 += 8;
      if (v5 == 48)
      {
        v8 = 0;
        v6 = *(a1 + 240);
        goto LABEL_12;
      }
    }

    v8 = 0;
LABEL_12:
    *(v6 + 216) = v8;
  }

  i[1] = *i;
  *(*(a1 + 240) + 232) = 0;
  *(*(a1 + 240) + 224) = 0;
LABEL_14:
  v11 = (*(a1 + 240) + 208);
  v12 = *(*(a1 + 240) + 232);
  if (v12 > a2)
  {
    return 0;
  }

  v13 = *(*(a1 + 240) + 216);
  if (*(v13 + 8) + v12 <= a2)
  {
    return 0;
  }

  for (j = *(v13 + 59) != 0; !*(v13 + 59); j = *(v13 + 59) != 0)
  {
    v15 = 24;
    while (1)
    {
      v16 = *(a1 + 240);
      v17 = *(v16[27] + v15);
      if (!v17)
      {
        break;
      }

      v18 = v16[29];
      v19 = v17[1];
      if (v18 <= a2 && v19 + v18 > a2)
      {
        break;
      }

      v16[28] += *v17;
      *(*(a1 + 240) + 232) += v19;
      v15 += 8;
      if (v15 == 48)
      {
        v17 = 0;
        v16 = *(a1 + 240);
        break;
      }
    }

    v16[27] = v17;
    v11 = (*(a1 + 240) + 208);
    v13 = *(*(a1 + 240) + 216);
    if (!v13)
    {
      goto LABEL_29;
    }
  }

  if (!*(v13 + 16))
  {
LABEL_29:
    v11[1] = *v11;
    *(*(a1 + 240) + 232) = 0;
    *(*(a1 + 240) + 224) = 0;
    return j;
  }

  return 1;
}

unint64_t _NSGlyphNodePrimitiveRelativeGlyphIndexForRelativeCharacterIndex(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = v2 - 1;
  if (v2 != 1)
  {
    v4 = 0;
    v5 = *(a1 + 32);
    while (1)
    {
      v6 = (v3 + v4) >> 1;
      if (!v5)
      {
        goto LABEL_8;
      }

      v7 = *(a1 + 58);
      if (v7 == 2)
      {
        v8 = *(v5 + 4 * v6);
        goto LABEL_11;
      }

      if (v7 == 1)
      {
        v8 = *(v5 + 2 * v6);
        goto LABEL_11;
      }

      if (*(a1 + 58))
      {
LABEL_8:
        v8 = 0;
      }

      else
      {
        v8 = *(v5 + v6);
      }

LABEL_11:
      v9 = v6 - v8;
      if (v9 >= a2)
      {
        if (v9 <= a2)
        {
          return v6;
        }

        if (v6 <= v4)
        {
          v6 = v4;
        }

        else
        {
          --v6;
        }

        v3 = v6;
      }

      else
      {
        if (v6 < v3)
        {
          ++v6;
        }

        else
        {
          v6 = v3;
        }

        v4 = v6;
      }

      if (v4 >= v3)
      {
        return v6;
      }
    }
  }

  return 0;
}

uint64_t _NSGlyphTreeCharacterRangeForGlyphRange(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, unint64_t *a6)
{
  result = 0;
  v10 = 0;
  if (!a2 || !a3)
  {
    goto LABEL_73;
  }

  v12 = a2;
  if (_NSGlyphTreeMoveToGlyphIndex(a1, a2))
  {
    v10 = v12;
    v87 = v12;
LABEL_5:
    v19 = *(a1 + 240);
    v20 = v19 + 26;
    v21 = v19[27];
    if (*(v21 + 59) && (v22 = *(v21 + 32)) != 0)
    {
      v23 = v19[29];
      v24 = *(v21 + 58);
      v25 = v10 - v23;
      if (v24 == 2)
      {
        v26 = *(v22 + 4 * v25);
      }

      else if (v24 == 1)
      {
        v26 = *(v22 + 2 * v25);
      }

      else if (*(v21 + 58))
      {
        v26 = 0;
      }

      else
      {
        v26 = *(v22 + v25);
      }

      v27 = 0;
      v89 = v19[28] + v10 - v23 - v26;
      if (v10 >= v23)
      {
        v28 = v19[29];
      }

      else
      {
        v28 = v10;
      }

      v29 = -v26;
      a2 = v22 + v10 - v23 - 1;
      v13 = v22 - 2 * v23 + 2 * v10 - 2;
      v30 = v22 - 4 * v23 + 4 * v10 - 4;
      while (1)
      {
        v14 = v10 + v27;
        if (v10 + v27 <= v23)
        {
          break;
        }

        if (v24 == 2)
        {
          v31 = *(v30 + 4 * v27);
        }

        else if (v24 == 1)
        {
          v31 = *(v13 + 2 * v27);
        }

        else if (*(v21 + 58))
        {
          v31 = 0;
        }

        else
        {
          v31 = *(a2 + v27);
        }

        --v27;
        v14 = v29 + v31;
        if (v14 != v27)
        {
          v32 = v10 + v27 + 1;
          goto LABEL_32;
        }
      }

      v10 = v28;
      if (v28)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v89 = v19[28] + v10 - v19[29];
      if (v10)
      {
LABEL_31:
        v32 = v10;
LABEL_32:
        if (*(v21 + 59))
        {
          v33 = 24 * v32;
          v10 = v32;
          do
          {
            v34 = *(v21 + 24);
            if (!v34)
            {
              break;
            }

            v35 = 0;
            v36 = *(v21 + 57);
            v37 = v20[3];
            if (v36 > 1)
            {
              if (v36 == 2)
              {
                v41 = *(v34 - 4 * v37 + 4 * v10);
              }

              else
              {
                if (v36 != 3)
                {
                  goto LABEL_57;
                }

                v41 = *(v34 - 24 * v37 + v33);
              }

              if (v41 > 0xFF)
              {
                v35 = v41 >> 8;
              }

              else if (v41 >= 0x80)
              {
                v35 = 0xFFFFFF;
              }

              else
              {
                v35 = 0;
              }
            }

            else
            {
              if (v36)
              {
                v38 = *(v34 - 2 * v37 + 2 * v10);
                v39 = v38 >> 8;
                if (v38 >= 0x80)
                {
                  v35 = 0xFFFFFF;
                }

                else
                {
                  v35 = 0;
                }

                v40 = v38 > 0xFF;
              }

              else
              {
                v42 = *(v34 - v37 + v10);
                v39 = v42 & 3;
                if (v42 >= 4)
                {
                  v35 = v42;
                }

                else
                {
                  v35 = 0xFFFFFF;
                }

                v40 = v42 > 0xEF;
              }

              if (v40)
              {
                v35 = v39;
              }
            }

LABEL_57:
            if (!v10 || v35)
            {
              if (v35 == 0xFFFFFF || !v35)
              {
                goto LABEL_71;
              }

              a2 = v87;
              result = v89;
              if (v10 < v32)
              {
                goto LABEL_5;
              }

              goto LABEL_73;
            }

            if (--v10 < v19[29])
            {
              if (!_NSGlyphTreeMoveToGlyphIndex(a1, v10))
              {
                goto LABEL_71;
              }

              v19 = *(a1 + 240);
            }

            v20 = v19 + 26;
            v21 = v19[27];
            v33 -= 24;
          }

          while (*(v21 + 59));
        }

        if (a4)
        {
          _NSGlyphTreeLogDebug(@"!!! _NSGlyphTreeCharacterRangeForGlyphRange missing glyphs 1", a2, v13, v14, v15, v16, v17, v18, v84);
        }

LABEL_71:
        v10 = v32;
      }
    }

    a2 = v87;
    result = v89;
    goto LABEL_73;
  }

  v43 = *(*(a1 + 240) + 208);
  result = *v43;
  v10 = v43[1];
  a2 = v12;
LABEL_73:
  v44 = a2 + a3;
  if (!(a2 + a3))
  {
    goto LABEL_141;
  }

  v45 = *(*(a1 + 240) + 208);
  v46 = *v45;
  if (!*v45)
  {
    if (a6)
    {
      goto LABEL_156;
    }

    return result;
  }

  v47 = v45[1];
  if (!v47)
  {
LABEL_141:
    v46 = 0;
    if (a6)
    {
      goto LABEL_156;
    }

    return result;
  }

  v88 = a2;
  v90 = result;
  v85 = a6;
  if (v44 >= v47)
  {
LABEL_146:
    v92 = v46 - 1;
    v74 = v47 - 1;
    goto LABEL_147;
  }

  v48 = v44 - 1;
  if (!_NSGlyphTreeMoveToGlyphIndex(a1, v44 - 1))
  {
    v83 = *(*(a1 + 240) + 208);
    v46 = *v83;
    v47 = v83[1];
    goto LABEL_146;
  }

  v49 = a5;
  if (a3)
  {
    v49 = 0;
  }

  v86 = v49;
  while (1)
  {
    v50 = *(a1 + 240);
    v51 = v50[27];
    if (*(v51 + 59) && (v52 = *(v51 + 32)) != 0)
    {
      v53 = v50[29];
      v54 = *(v51 + 58);
      v55 = v48 - v53;
      if (v54 == 2)
      {
        v56 = *(v52 + 4 * v55);
      }

      else if (v54 == 1)
      {
        v56 = *(v52 + 2 * v55);
      }

      else
      {
        v56 = *(v51 + 58) ? 0 : *(v52 + v55);
      }

      v58 = 0;
      v59 = v50[28];
      v60 = v59 + v48 - v53 - v56;
      v61 = *(v51 + 8) + v53;
      v62 = v61 <= v48 + 1 ? v48 + 1 : *(v51 + 8) + v53;
      v63 = v62 - 1;
      v64 = v52 + v55 + 1;
      v65 = v52 - 2 * v53 + 2 * v48 + 2;
      v66 = v52 - 4 * v53 + 4 * v48 + 4;
      do
      {
        if (v48 + v58 + 1 >= v61)
        {
          v92 = v59 + *v51 - 1;
          v48 = v63;
          goto LABEL_107;
        }

        if (v54 == 2)
        {
          v67 = *(v66 + 4 * v58);
        }

        else if (v54 == 1)
        {
          v67 = *(v65 + 2 * v58);
        }

        else if (*(v51 + 58))
        {
          v67 = 0;
        }

        else
        {
          v67 = *(v64 + v58);
        }

        ++v58;
        v68 = v56 - v67 + v58;
      }

      while (v68 < 1);
      v69 = v48 + v59;
      v48 = v48 + v58 - 1;
      v57 = ~v53 + v69 - v67 + v58;
      if (v68 == 1)
      {
        v57 = v60;
      }
    }

    else
    {
      v53 = v50[29];
      v57 = v50[28] + v48 - v53;
    }

    v92 = v57;
LABEL_107:
    v70 = v48 + 1;
    if ((v48 + 1 >= *(v50[26] + 8)) | v86 & 1)
    {
      break;
    }

    v71 = 0;
    v72 = 24 * v48 + 24;
    do
    {
      v73 = v71;
      v74 = v48;
      v75 = v70;
      if (v70 >= *(v51 + 8) + v53)
      {
        if (!_NSGlyphTreeMoveToGlyphIndex(a1, v70))
        {
          break;
        }

        v50 = *(a1 + 240);
        v51 = v50[27];
      }

      if (!*(v51 + 59))
      {
        break;
      }

      v76 = *(v51 + 24);
      if (!v76)
      {
        break;
      }

      v77 = 0;
      v78 = *(v51 + 57);
      v53 = v50[29];
      if (v78 > 1)
      {
        if (v78 == 2)
        {
          v79 = *(v76 - 4 * v53 + 4 * v75);
LABEL_130:
          if (v79 > 0xFF)
          {
LABEL_133:
            v77 = v79 >> 8;
            goto LABEL_134;
          }

          if (v79 >= 0x80)
          {
            break;
          }

LABEL_132:
          v77 = 0;
          goto LABEL_134;
        }

        if (v78 == 3)
        {
          v79 = *(v76 - 24 * v53 + v72);
          if (v79 > 0xFF)
          {
            goto LABEL_133;
          }

          if (v79 > 0x7F)
          {
            break;
          }

          goto LABEL_132;
        }
      }

      else
      {
        if (!*(v51 + 57))
        {
          v80 = *(v76 - v53 + v75);
          if (v80 >= 4)
          {
            v81 = *(v76 - v53 + v75);
          }

          else
          {
            v81 = 0xFFFFFF;
          }

          if (v80 <= 0xEF)
          {
            v77 = v81;
          }

          else
          {
            v77 = v80 & 3;
          }

          goto LABEL_134;
        }

        if (v78 == 1)
        {
          v79 = *(v76 - 2 * v53 + 2 * v75);
          goto LABEL_130;
        }
      }

LABEL_134:
      v70 = v75 + 1;
      v72 += 24;
      ++v48;
      v71 = 1;
    }

    while (!v77);
    v48 = v75 - 1;
    if ((v73 & 1) == 0)
    {
      break;
    }

    v82 = *(*(a1 + 240) + 232);
    if ((v48 < v82 || v48 >= *(*(*(a1 + 240) + 216) + 8) + v82) && !_NSGlyphTreeMoveToGlyphIndex(a1, v75 - 1))
    {
LABEL_147:
      if (a3)
      {
        goto LABEL_148;
      }

LABEL_150:
      result = v92 + 1;
      if (a5)
      {
        v46 = 0;
        if (v88 >= *(*(*(a1 + 240) + 208) + 8))
        {
          v10 = *(*(*(a1 + 240) + 208) + 8);
        }

        else
        {
          v10 = v88;
        }
      }

      else
      {
        v46 = 0;
        v10 = v74 + 1;
      }

      goto LABEL_155;
    }
  }

  v74 = v48;
  if (!a3)
  {
    goto LABEL_150;
  }

LABEL_148:
  result = v90;
  v46 = v74 - v10 + 1;
LABEL_155:
  a6 = v85;
  if (v85)
  {
LABEL_156:
    *a6 = v10;
    a6[1] = v46;
  }

  return result;
}

unint64_t _NSGlyphTreeGlyphRangeForCharacterRange(uint64_t a1, unint64_t a2, uint64_t a3, int a4, int a5, int a6, uint64_t *a7)
{
  v8 = a3;
  v11 = 0;
  if (a2)
  {
    v12 = 0;
    if (a3)
    {
      if (_NSGlyphTreeMoveToCharacterIndex(a1, a2))
      {
        v20 = *(*(a1 + 240) + 216);
        if (*(v20 + 59) && *(v20 + 32))
        {
          v21 = v8;
          v22 = *(*(a1 + 240) + 232);
          v11 = _NSGlyphNodePrimitiveRelativeGlyphIndexForRelativeCharacterIndex(v20, a2 - *(*(a1 + 240) + 224)) + v22;
          v8 = v21;
        }

        else
        {
          v11 = *(*(a1 + 240) + 232) + a2 - *(*(a1 + 240) + 224);
        }

        v24 = 0xFFFFFF;
        v106 = v8;
        while (1)
        {
          v25 = *(*(a1 + 240) + 216);
          if (*(v25 + 59) && (v26 = *(v25 + 32)) != 0)
          {
            v27 = *(*(a1 + 240) + 232);
            v28 = *(v25 + 58);
            v29 = v11 - v27;
            if (v28 == 2)
            {
              v30 = *(v26 + 4 * v29);
            }

            else if (v28 == 1)
            {
              v30 = *(v26 + 2 * v29);
            }

            else if (v28)
            {
              v30 = 0;
            }

            else
            {
              v30 = *(v26 + v29);
            }

            v31 = 0;
            v32 = *(*(a1 + 240) + 224) + v11 - v27 - v30;
            if (v11 >= v27)
            {
              v33 = *(*(a1 + 240) + 232);
            }

            else
            {
              v33 = v11;
            }

            v34 = -v30;
            v35 = v26 + v11 - v27 - 1;
            v36 = v26 - 2 * v27 + 2 * v11 - 2;
            v37 = v26 - 4 * v27 + 4 * v11 - 4;
            while (v11 + v31 > v27)
            {
              if (v28 == 2)
              {
                v38 = *(v37 + 4 * v31);
              }

              else if (v28 == 1)
              {
                v38 = *(v36 + 2 * v31);
              }

              else if (v28)
              {
                v38 = 0;
              }

              else
              {
                v38 = *(v35 + v31);
              }

              if (v34 + v38 != --v31)
              {
                v39 = v11 + v31 + 1;
                v12 = v32;
                goto LABEL_38;
              }
            }

            v11 = v33;
            v12 = v32;
            if (!v33)
            {
              goto LABEL_79;
            }
          }

          else
          {
            v12 = *(*(a1 + 240) + 224) + v11 - *(*(a1 + 240) + 232);
            if (!v11)
            {
              goto LABEL_79;
            }
          }

          v39 = v11;
LABEL_38:
          if (a6)
          {
            break;
          }

          v11 = v39;
LABEL_72:
          if (v24 == 0xFFFFFF)
          {
LABEL_171:
            v11 = v39;
            v8 = v106;
            goto LABEL_79;
          }

          v52 = v11 >= v39;
          v8 = v106;
          if (v52)
          {
            goto LABEL_79;
          }
        }

        v103 = v12;
        v40 = *(a1 + 240) + 208;
        v41 = *(*(a1 + 240) + 216);
        if (*(v41 + 59))
        {
          v42 = 24 * v39;
          v11 = v39;
          do
          {
            v43 = *(v41 + 24);
            if (!v43)
            {
              break;
            }

            v24 = 0;
            v44 = *(v41 + 57);
            v45 = *(v40 + 24);
            if (v44 > 1)
            {
              if (v44 == 2)
              {
                v50 = *(v43 - 4 * v45 + 4 * v11);
              }

              else
              {
                if (v44 != 3)
                {
                  goto LABEL_64;
                }

                v50 = *(v43 - 24 * v45 + v42);
              }

              if (v50 > 0xFF)
              {
                v24 = v50 >> 8;
              }

              else if (v50 >= 0x80)
              {
                v24 = 0xFFFFFF;
              }

              else
              {
                v24 = 0;
              }
            }

            else
            {
              if (v44)
              {
                v46 = *(v43 - 2 * v45 + 2 * v11);
                v47 = v46 >> 8;
                if (v46 >= 0x80)
                {
                  v48 = 0xFFFFFF;
                }

                else
                {
                  v48 = 0;
                }

                v49 = v46 > 0xFF;
              }

              else
              {
                v51 = *(v43 - v45 + v11);
                v47 = v51 & 3;
                if (v51 >= 4)
                {
                  v48 = *(v43 - v45 + v11);
                }

                else
                {
                  v48 = 0xFFFFFF;
                }

                v49 = v51 > 0xEF;
              }

              if (v49)
              {
                v24 = v47;
              }

              else
              {
                v24 = v48;
              }
            }

LABEL_64:
            if (!v11 || v24)
            {
              v12 = v103;
              if (!v24)
              {
                goto LABEL_171;
              }

              goto LABEL_72;
            }

            if (--v11 < v45 && !_NSGlyphTreeMoveToGlyphIndex(a1, v11))
            {
              goto LABEL_78;
            }

            v40 = *(a1 + 240) + 208;
            v41 = *(*(a1 + 240) + 216);
            v42 -= 24;
          }

          while (*(v41 + 59));
        }

        if (a4)
        {
          _NSGlyphTreeLogDebug(@"!!! _NSGlyphTreeGlyphRangeForCharacterRange missing glyphs 1", v13, v14, v15, v16, v17, v18, v19, v99);
        }

LABEL_78:
        v11 = v39;
        v8 = v106;
        v12 = v103;
      }

      else
      {
        v23 = *(*(a1 + 240) + 208);
        v12 = *v23;
        v11 = v23[1];
      }
    }
  }

  else
  {
    v12 = 0;
  }

LABEL_79:
  v53 = a2 + v8;
  if (!(a2 + v8))
  {
    goto LABEL_100;
  }

  v54 = *(*(a1 + 240) + 208);
  v55 = *v54;
  if (!*v54)
  {
    if (!a7)
    {
      return v11;
    }

    goto LABEL_101;
  }

  v56 = v54[1];
  if (!v56)
  {
    goto LABEL_100;
  }

  v104 = v12;
  v107 = v8;
  v100 = a2;
  v101 = a7;
  if (v53 >= v55)
  {
LABEL_90:
    v64 = v56 - 1;
    v65 = v55 - 1;
    goto LABEL_91;
  }

  v57 = v53 - 1;
  v58 = _NSGlyphTreeMoveToCharacterIndex(a1, v53 - 1);
  v59 = (*(a1 + 240) + 208);
  if (!v58)
  {
    v63 = *v59;
    v55 = **v59;
    v56 = v63[1];
    goto LABEL_90;
  }

  v60 = *(*(a1 + 240) + 216);
  if (*(v60 + 59) && *(v60 + 32))
  {
    v61 = *(*(a1 + 240) + 232);
    v62 = _NSGlyphNodePrimitiveRelativeGlyphIndexForRelativeCharacterIndex(v60, v57 - *(*(a1 + 240) + 224)) + v61;
  }

  else
  {
    v62 = *(*(a1 + 240) + 232) + v57 - *(*(a1 + 240) + 224);
  }

  do
  {
    v67 = *(a1 + 240);
    v68 = v67[27];
    if (*(v68 + 59) && (v69 = *(v68 + 32)) != 0)
    {
      v70 = v67[29];
      v71 = *(v68 + 58);
      v72 = v62 - v70;
      if (v71 == 2)
      {
        v73 = *(v69 + 4 * v72);
      }

      else if (v71 == 1)
      {
        v73 = *(v69 + 2 * v72);
      }

      else if (*(v68 + 58))
      {
        v73 = 0;
      }

      else
      {
        v73 = *(v69 + v72);
      }

      v74 = 0;
      v75 = v67[28];
      v76 = v75 + v62 - v70 - v73;
      v77 = *(v68 + 8) + v70;
      if (v77 <= v62 + 1)
      {
        v78 = v62 + 1;
      }

      else
      {
        v78 = *(v68 + 8) + v70;
      }

      v79 = v78 - 1;
      v80 = v69 + v72 + 1;
      v81 = v69 - 2 * v70 + 2 * v62 + 2;
      v82 = v69 - 4 * v70 + 4 * v62 + 4;
      do
      {
        if (v62 + v74 + 1 >= v77)
        {
          v65 = v75 + *v68 - 1;
          v62 = v79;
          goto LABEL_134;
        }

        if (v71 == 2)
        {
          v83 = *(v82 + 4 * v74);
        }

        else if (v71 == 1)
        {
          v83 = *(v81 + 2 * v74);
        }

        else if (*(v68 + 58))
        {
          v83 = 0;
        }

        else
        {
          v83 = *(v80 + v74);
        }

        ++v74;
        v84 = v73 - v83 + v74;
      }

      while (v84 < 1);
      v85 = v62 + v75;
      v62 = v62 + v74 - 1;
      if (v84 == 1)
      {
        v65 = v76;
      }

      else
      {
        v65 = ~v70 + v85 - v83 + v74;
      }
    }

    else
    {
      v70 = v67[29];
      v65 = v67[28] + v62 - v70;
    }

LABEL_134:
    v86 = v62 + 1;
    if (v62 + 1 >= *(v67[26] + 8) || a6 == 0)
    {
LABEL_170:
      v64 = v62;
      break;
    }

    v88 = 0;
    v89 = 24 * v62 + 24;
    do
    {
      v64 = v62;
      v90 = v88;
      v91 = v86;
      if (v86 >= *(v68 + 8) + v70)
      {
        if (!_NSGlyphTreeMoveToGlyphIndex(a1, v86))
        {
          break;
        }

        v67 = *(a1 + 240);
        v68 = v67[27];
      }

      if (!*(v68 + 59))
      {
        break;
      }

      v92 = *(v68 + 24);
      if (!v92)
      {
        break;
      }

      v93 = 0;
      v94 = *(v68 + 57);
      v70 = v67[29];
      if (v94 > 1)
      {
        if (v94 == 2)
        {
          v95 = *(v92 - 4 * v70 + 4 * v91);
LABEL_160:
          if (v95 > 0xFF)
          {
LABEL_163:
            v93 = v95 >> 8;
            goto LABEL_164;
          }

          if (v95 >= 0x80)
          {
            break;
          }

LABEL_162:
          v93 = 0;
          goto LABEL_164;
        }

        if (v94 == 3)
        {
          v95 = *(v92 - 24 * v70 + v89);
          if (v95 > 0xFF)
          {
            goto LABEL_163;
          }

          if (v95 > 0x7F)
          {
            break;
          }

          goto LABEL_162;
        }
      }

      else
      {
        if (!*(v68 + 57))
        {
          v96 = *(v92 - v70 + v91);
          if (v96 >= 4)
          {
            v97 = *(v92 - v70 + v91);
          }

          else
          {
            v97 = 0xFFFFFF;
          }

          if (v96 <= 0xEF)
          {
            v93 = v97;
          }

          else
          {
            v93 = v96 & 3;
          }

          goto LABEL_164;
        }

        if (v94 == 1)
        {
          v95 = *(v92 - 2 * v70 + 2 * v91);
          goto LABEL_160;
        }
      }

LABEL_164:
      v86 = v91 + 1;
      v89 += 24;
      ++v62;
      v88 = 1;
    }

    while (!v93);
    v62 = v91 - 1;
    if ((v90 & 1) == 0)
    {
      goto LABEL_170;
    }

    v98 = *(*(a1 + 240) + 232);
  }

  while (v62 >= v98 && v62 < *(*(*(a1 + 240) + 216) + 8) + v98 || _NSGlyphTreeMoveToGlyphIndex(a1, v91 - 1));
LABEL_91:
  if (v107)
  {
    v12 = v104;
    v55 = v65 - v104 + 1;
    goto LABEL_104;
  }

  v11 = v64 + 1;
  v12 = v65 + 1;
  if (a5)
  {
    a7 = v101;
    if ((~*(a1 + 64) & 0xC000) == 0)
    {
      v55 = 0;
      if (v100 >= **(*(a1 + 240) + 208))
      {
        v12 = **(*(a1 + 240) + 208);
      }

      else
      {
        v12 = v100;
      }

      if (!v101)
      {
        return v11;
      }

LABEL_101:
      *a7 = v12;
      a7[1] = v55;
      return v11;
    }

LABEL_100:
    v55 = 0;
    if (!a7)
    {
      return v11;
    }

    goto LABEL_101;
  }

  v55 = 0;
LABEL_104:
  a7 = v101;
  if (v101)
  {
    goto LABEL_101;
  }

  return v11;
}