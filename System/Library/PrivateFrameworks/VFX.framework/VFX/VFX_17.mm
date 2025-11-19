void sub_1AF1DCEB4(CFTypeRef cf, const __CFString *a2, void *a3, uint64_t a4, int a5)
{
  if (cf)
  {
    sub_1AF1DE260(a4, cf);
    if (CFStringCompare(a2, @"weights", 0))
    {
      if (!a5)
      {
        return;
      }

LABEL_4:
      v10 = sub_1AF0D5194();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDE1310();
      }

      return;
    }

    v11 = sub_1AF1B4C94(cf);
    sub_1AF1DE260(a4, v11);
    v12 = sub_1AF1B5A20(cf, a3);
    if (v12 != -1)
    {
      v13 = v12;
      v14 = sub_1AF17032C(v11);
      *(a4 + 24) = sub_1AF1CAFE0(v14, v13, v15, v16);
      *(a4 + 32) = sub_1AF1CAED8(v14);
      return;
    }

    if (a5)
    {
      goto LABEL_4;
    }
  }
}

void sub_1AF1DCFAC(void *a1, const void *a2)
{
  os_unfair_lock_lock(&unk_1ED731628);
  v4 = sub_1AF1DB864(a1);
  qword_1ED734610 = v4;
  if (a2)
  {

    CFDictionaryAddValue(v4, @"superClass", a2);
  }
}

void sub_1AF1DD02C(const void *a1, unsigned int a2, __int16 a3, char a4)
{
  if (!qword_1ED734610)
  {
    v8 = sub_1AF0D5194();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE1384(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  v16 = malloc_type_malloc(0x10uLL, 0x10000401E18E2A0uLL);
  v16[4] = a3;
  *v16 = a2;
  *(v16 + 10) = a4;
  if (CFDictionaryGetCountOfKey(qword_1ED734610, a1))
  {
    v17 = sub_1AF0D5194();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE13FC(a1, v17);
    }
  }

  CFDictionarySetValue(qword_1ED734610, a1, v16);
}

void sub_1AF1DD104()
{
  qword_1ED737BE8 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 110, MEMORY[0x1E695E9D8], 0);
  CFDictionaryAddValue(qword_1ED737BE8, @"transform", 1);
  CFDictionaryAddValue(qword_1ED737BE8, @"opacity", 2);
  CFDictionaryAddValue(qword_1ED737BE8, @"hidden", 3);
  CFDictionaryAddValue(qword_1ED737BE8, @"attributes", 4);
  CFDictionaryAddValue(qword_1ED737BE8, @"matrix", 5);
  CFDictionaryAddValue(qword_1ED737BE8, @"translation", 6);
  CFDictionaryAddValue(qword_1ED737BE8, @"position", 6);
  CFDictionaryAddValue(qword_1ED737BE8, @"rotation", 7);
  CFDictionaryAddValue(qword_1ED737BE8, @"orientation", 0xC);
  CFDictionaryAddValue(qword_1ED737BE8, @"scale", 8);
  CFDictionaryAddValue(qword_1ED737BE8, @"eulerAngles", 0xB);
  CFDictionaryAddValue(qword_1ED737BE8, @"quaternion", 0xC);
  CFDictionaryAddValue(qword_1ED737BE8, @"pivot", 9);
  CFDictionaryAddValue(qword_1ED737BE8, @"nodes", 0xA);
  CFDictionaryAddValue(qword_1ED737BE8, @"childNodes", 0xA);
  CFDictionaryAddValue(qword_1ED737BE8, @"x", 0xD);
  CFDictionaryAddValue(qword_1ED737BE8, @"y", 0xE);
  CFDictionaryAddValue(qword_1ED737BE8, @"z", 0xF);
  CFDictionaryAddValue(qword_1ED737BE8, @"w", 0x10);
  CFDictionaryAddValue(qword_1ED737BE8, @"(0)", 0xD);
  CFDictionaryAddValue(qword_1ED737BE8, @"(1)", 0xE);
  CFDictionaryAddValue(qword_1ED737BE8, @"(2)", 0xF);
  CFDictionaryAddValue(qword_1ED737BE8, @"(3)", 0x10);
  CFDictionaryAddValue(qword_1ED737BE8, @"r", 0x11);
  CFDictionaryAddValue(qword_1ED737BE8, @"g", 0x12);
  CFDictionaryAddValue(qword_1ED737BE8, @"b", 0x13);
  CFDictionaryAddValue(qword_1ED737BE8, @"a", 0x14);
  CFDictionaryAddValue(qword_1ED737BE8, @"m11", 0x15);
  CFDictionaryAddValue(qword_1ED737BE8, @"m12", 0x19);
  CFDictionaryAddValue(qword_1ED737BE8, @"m13", 0x1D);
  CFDictionaryAddValue(qword_1ED737BE8, @"m14", 0x21);
  CFDictionaryAddValue(qword_1ED737BE8, @"m21", 0x16);
  CFDictionaryAddValue(qword_1ED737BE8, @"m22", 0x1A);
  CFDictionaryAddValue(qword_1ED737BE8, @"m23", 0x1E);
  CFDictionaryAddValue(qword_1ED737BE8, @"m24", 0x22);
  CFDictionaryAddValue(qword_1ED737BE8, @"m31", 0x17);
  CFDictionaryAddValue(qword_1ED737BE8, @"m32", 0x1B);
  CFDictionaryAddValue(qword_1ED737BE8, @"m33", 0x1F);
  CFDictionaryAddValue(qword_1ED737BE8, @"m34", 0x23);
  CFDictionaryAddValue(qword_1ED737BE8, @"m41", 0x18);
  CFDictionaryAddValue(qword_1ED737BE8, @"m42", 0x1C);
  CFDictionaryAddValue(qword_1ED737BE8, @"m43", 0x20);
  CFDictionaryAddValue(qword_1ED737BE8, @"m44", 0x24);
  CFDictionaryAddValue(qword_1ED737BE8, @"camera", 0x25);
  CFDictionaryAddValue(qword_1ED737BE8, @"forceField", 0x26);
  CFDictionaryAddValue(qword_1ED737BE8, @"model", 0x27);
  CFDictionaryAddValue(qword_1ED737BE8, @"firstMaterial", 0x28);
  CFDictionaryAddValue(qword_1ED737BE8, @"materials", 0x29);
  CFDictionaryAddValue(qword_1ED737BE8, @"commonProfile", 0x2A);
  CFDictionaryAddValue(qword_1ED737BE8, @"diffuse", 0x2B);
  CFDictionaryAddValue(qword_1ED737BE8, @"specular", 0x2C);
  CFDictionaryAddValue(qword_1ED737BE8, @"emission", 0x2D);
  CFDictionaryAddValue(qword_1ED737BE8, @"reflective", 0x2E);
  CFDictionaryAddValue(qword_1ED737BE8, @"normal", 0x2F);
  CFDictionaryAddValue(qword_1ED737BE8, @"ambientOcclusion", 0x30);
  CFDictionaryAddValue(qword_1ED737BE8, @"selfIllumination", 0x31);
  CFDictionaryAddValue(qword_1ED737BE8, @"metalness", 0x32);
  CFDictionaryAddValue(qword_1ED737BE8, @"roughness", 0x33);
  CFDictionaryAddValue(qword_1ED737BE8, @"selfIlluminationOcclusion", 0x3C);
  CFDictionaryAddValue(qword_1ED737BE8, @"clearCoat", 0x34);
  CFDictionaryAddValue(qword_1ED737BE8, @"clearCoatRoughness", 0x35);
  CFDictionaryAddValue(qword_1ED737BE8, @"clearCoatNormal", 0x36);
  CFDictionaryAddValue(qword_1ED737BE8, @"subsurface", 0x37);
  CFDictionaryAddValue(qword_1ED737BE8, @"subsurfaceRadius", 0x38);
  CFDictionaryAddValue(qword_1ED737BE8, @"transmission", 0x39);
  CFDictionaryAddValue(qword_1ED737BE8, @"transmissionColor", 0x3A);
  CFDictionaryAddValue(qword_1ED737BE8, @"displacement", 0x3B);
  CFDictionaryAddValue(qword_1ED737BE8, @"transparent", 0x3D);
  CFDictionaryAddValue(qword_1ED737BE8, @"multiply", 0x3E);
  CFDictionaryAddValue(qword_1ED737BE8, @"shininess", 0x3F);
  CFDictionaryAddValue(qword_1ED737BE8, @"indexOfRefraction", 0x40);
  CFDictionaryAddValue(qword_1ED737BE8, @"fresnelExponent", 0x41);
  CFDictionaryAddValue(qword_1ED737BE8, @"shaderModifiers", 0x45);
  CFDictionaryAddValue(qword_1ED737BE8, @"doubleSided", 0x42);
  CFDictionaryAddValue(qword_1ED737BE8, @"litPerPixel", 0x43);
  CFDictionaryAddValue(qword_1ED737BE8, @"cullMode", 0x44);
  CFDictionaryAddValue(qword_1ED737BE8, @"contents", 0x46);
  CFDictionaryAddValue(qword_1ED737BE8, @"texture", 0x47);
  CFDictionaryAddValue(qword_1ED737BE8, @"image", 0x48);
  CFDictionaryAddValue(qword_1ED737BE8, @"contentsTransform", 0x49);
  CFDictionaryAddValue(qword_1ED737BE8, @"intensity", 0x4A);
  CFDictionaryAddValue(qword_1ED737BE8, @"light", 0x4B);
  CFDictionaryAddValue(qword_1ED737BE8, @"shadowIntensity", 0x4C);
  CFDictionaryAddValue(qword_1ED737BE8, @"shadowRadius", 0x4D);
  CFDictionaryAddValue(qword_1ED737BE8, @"attenuation", 0x51);
  CFDictionaryAddValue(qword_1ED737BE8, @"spotInnerAngle", 0x52);
  CFDictionaryAddValue(qword_1ED737BE8, @"spotOuterAngle", 0x53);
  CFDictionaryAddValue(qword_1ED737BE8, @"spotFalloffExponent", 0x54);
  CFDictionaryAddValue(qword_1ED737BE8, @"weights", 0x55);
  CFDictionaryAddValue(qword_1ED737BE8, @"morpher", 0x56);
  CFDictionaryAddValue(qword_1ED737BE8, @"particleEmitter", 0x57);
  CFDictionaryAddValue(qword_1ED737BE8, @"particleCollider", 0x58);
  CFDictionaryAddValue(qword_1ED737BE8, @"behaviorGraph", 0x59);
  CFDictionaryAddValue(qword_1ED737BE8, @"background", 0x5C);
  CFDictionaryAddValue(qword_1ED737BE8, @"environment", 0x5D);
  CFDictionaryAddValue(qword_1ED737BE8, @"gobo", 0x4E);
  CFDictionaryAddValue(qword_1ED737BE8, @"probeEnvironment", 0x4F);
  CFDictionaryAddValue(qword_1ED737BE8, @"ies", 0x50);
  CFDictionaryAddValue(qword_1ED737BE8, @"customProperty", 0x5A);
  CFDictionaryAddValue(qword_1ED737BE8, @"animations", 0x5B);
  CFDictionaryAddValue(qword_1ED737BE8, @"euler", 0xB);
  v0 = qword_1ED737BE8;

  CFDictionaryAddValue(v0, @"axisAngle", 7);
}

void sub_1AF1DDA5C(const __CFArray *a1, int a2, int a3, uint64_t a4)
{
  *(a4 + 34) = 4;
  if (a2 >= a3)
  {
    *(a4 + 24) = 0;
    *(a4 + 32) = 9;
    return;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(a1, a2);
  v9 = sub_1AF1DB1EC(ValueAtIndex);
  if (v9 <= 12)
  {
    switch(v9)
    {
      case 7:
        *(a4 + 32) = 9;
        *(a4 + 35) = sub_1AF1DDBE0(a1, a2 + 1, a3, a4);
LABEL_18:
        v11 = 4;
        goto LABEL_22;
      case 11:
        *(a4 + 32) = 8;
        *(a4 + 35) = sub_1AF1DDBE0(a1, a2 + 1, a3, a4);
        v11 = 5;
        goto LABEL_22;
      case 12:
        *(a4 + 32) = 9;
        *(a4 + 35) = sub_1AF1DDBE0(a1, a2 + 1, a3, a4);
        v11 = 3;
LABEL_22:
        *(a4 + 34) = v11;
        return;
    }
  }

  else
  {
    if (v9 <= 14)
    {
      if (v9 != 13)
      {
        v10 = 17039361;
LABEL_20:
        *(a4 + 32) = v10;
        return;
      }

      *(a4 + 32) = 1;
      goto LABEL_18;
    }

    if (v9 == 15)
    {
      v10 = 33816577;
      goto LABEL_20;
    }

    if (v9 == 16)
    {
      v10 = 50593793;
      goto LABEL_20;
    }
  }

  v12 = sub_1AF0D5194();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDE1488();
  }
}

uint64_t sub_1AF1DDBE0(const __CFArray *a1, int a2, int a3, uint64_t a4)
{
  if (a2 >= a3)
  {
    return 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(a1, a2);
  v6 = sub_1AF1DB1EC(ValueAtIndex);
  *(a4 + 32) = 1;
  if (v6 - 14 >= 3)
  {
    return 0;
  }

  else
  {
    return v6 - 13;
  }
}

CFTypeRef sub_1AF1DDC38(char *cf, const __CFArray *a2, int a3, int a4, uint64_t a5, int a6)
{
  result = sub_1AF1DE260(a5, cf);
  *(a5 + 34) = 8;
  *(a5 + 37) = 1;
  if (a3 >= a4)
  {
    *(a5 + 24) = cf + 96;
    *(a5 + 32) = 10;
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a2, a3);
    sub_1AF1DB1EC(ValueAtIndex);

    return sub_1AF1DB2F8((cf + 96), a2, a3, a4, a5, a6);
  }

  return result;
}

uint64_t sub_1AF1DDCFC(const __CFArray *a1, int a2, int a3, SInt32 *a4, CFStringRef *a5)
{
  if (a2 >= a3)
  {
    return 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(a1, a2);
  v8 = CFStringFind(ValueAtIndex, @"[", 0);
  if (v8.length < 1)
  {
    goto LABEL_14;
  }

  v9 = CFStringFind(ValueAtIndex, @"]", 0);
  if (v9.length < 1 || v9.location <= v8.location)
  {
    goto LABEL_14;
  }

  v32.location = 0;
  v32.length = v8.location;
  v10 = CFStringCreateWithSubstring(0, ValueAtIndex, v32);
  v33.location = v8.location + 1;
  v33.length = v9.location - (v8.location + 1);
  v11 = CFStringCreateWithSubstring(0, ValueAtIndex, v33);
  if (v10 || (v12 = sub_1AF0D5194(), !os_log_type_enabled(v12, OS_LOG_TYPE_FAULT)))
  {
    if (!v11)
    {
      goto LABEL_8;
    }

LABEL_18:
    if (CFStringGetLength(v11) && CFStringGetCharacterAtIndex(v11, 0) - 48 < 0xA)
    {
      *a4 = CFStringGetIntValue(v11);
      if (a5)
      {
        *a5 = v10;
      }

      else if (v10)
      {
        CFRelease(v10);
      }

      v28 = 1;
      v10 = v11;
      goto LABEL_29;
    }

    CFRelease(v11);
LABEL_24:
    v28 = 0;
    if (!v10)
    {
      return v28;
    }

    goto LABEL_29;
  }

  sub_1AFDE14F0(v12, v13, v14, v15, v16, v17, v18, v19);
  if (v11)
  {
    goto LABEL_18;
  }

LABEL_8:
  v20 = sub_1AF0D5194();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDE1568(v20, v21, v22, v23, v24, v25, v26, v27);
    if (v10)
    {
      goto LABEL_10;
    }
  }

  else if (v10)
  {
LABEL_10:
    v28 = 0;
LABEL_29:
    CFRelease(v10);
    return v28;
  }

LABEL_14:
  v29 = CFStringFind(ValueAtIndex, @"("), 0;
  if (v29.length < 1)
  {
    return 0;
  }

  v30 = CFStringFind(ValueAtIndex, @""), 0);
  v28 = 0;
  if (v30.length >= 1 && v30.location > v29.location)
  {
    v34.location = 0;
    v34.length = v29.location;
    v10 = CFStringCreateWithSubstring(0, ValueAtIndex, v34);
    v35.location = v29.location + 1;
    v35.length = v30.location - (v29.location + 1);
    v11 = CFStringCreateWithSubstring(0, ValueAtIndex, v35);
    if (!v11)
    {
      goto LABEL_24;
    }

    goto LABEL_18;
  }

  return v28;
}

uint64_t sub_1AF1DDF10(char *cf, const __CFArray *a2, int a3, int a4, uint64_t a5, int a6)
{
  sub_1AF1DE260(a5, cf);
  if (a3 >= a4)
  {
    *(a5 + 24) = 0;
    *(a5 + 32) = 0;
    return 1;
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a2, a3);
    v13 = 0;
    switch(sub_1AF1DB1EC(ValueAtIndex))
    {
      case '+':
        v13 = 1;
        v14 = cf;
        v15 = 1;
        goto LABEL_28;
      case ',':
        v13 = 1;
        v14 = cf;
        v15 = 2;
        goto LABEL_28;
      case '-':
        v13 = 1;
        v14 = cf;
        v15 = 0;
        goto LABEL_28;
      case '.':
        v13 = 1;
        v14 = cf;
        v15 = 3;
        goto LABEL_28;
      case '/':
        v13 = 1;
        v14 = cf;
        v15 = 6;
        goto LABEL_28;
      case '0':
        v13 = 1;
        v14 = cf;
        v15 = 7;
        goto LABEL_28;
      case '1':
        v13 = 1;
        v14 = cf;
        v15 = 8;
        goto LABEL_28;
      case '2':
        v13 = 1;
        v14 = cf;
        v15 = 9;
        goto LABEL_28;
      case '3':
        v13 = 1;
        v14 = cf;
        v15 = 10;
        goto LABEL_28;
      case '4':
        v13 = 1;
        v14 = cf;
        v15 = 11;
        goto LABEL_28;
      case '5':
        v13 = 1;
        v14 = cf;
        v15 = 12;
        goto LABEL_28;
      case '6':
        v13 = 1;
        v14 = cf;
        v15 = 13;
        goto LABEL_28;
      case '7':
        v13 = 1;
        v14 = cf;
        v15 = 14;
        goto LABEL_28;
      case '8':
        v13 = 1;
        v14 = cf;
        v15 = 15;
        goto LABEL_28;
      case '9':
        v13 = 1;
        v14 = cf;
        v15 = 16;
        goto LABEL_28;
      case ':':
        v13 = 1;
        v14 = cf;
        v15 = 17;
        goto LABEL_28;
      case ';':
        v13 = 1;
        v14 = cf;
        v15 = 18;
        goto LABEL_28;
      case '<':
        v13 = 1;
        *(a5 + 32) = 1;
        v16 = cf + 196;
        goto LABEL_31;
      case '=':
        v13 = 1;
        v14 = cf;
        v15 = 4;
        goto LABEL_28;
      case '>':
        v13 = 1;
        v14 = cf;
        v15 = 5;
LABEL_28:
        v17 = sub_1AF1656E4(v14, v15, 1);
        sub_1AF1DB074(v17, a2, a3 + 1, a4, a5, a6);
        return v13;
      case '?':
        v13 = 1;
        *(a5 + 32) = 1;
        v16 = cf + 184;
        goto LABEL_31;
      case '@':
        v13 = 1;
        *(a5 + 32) = 1;
        v16 = cf + 188;
        goto LABEL_31;
      case 'A':
        v13 = 1;
        *(a5 + 32) = 1;
        v16 = cf + 192;
LABEL_31:
        *(a5 + 24) = v16;
        break;
      case 'C':
        *(a5 + 32) = 3;
        *(a5 + 24) = cf + 208;
        return 1;
      default:
        return v13;
    }
  }

  return v13;
}

void sub_1AF1DE16C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }
}

uint64_t sub_1AF1DE1A4()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED7346B0 = result;
  return result;
}

uint64_t sub_1AF1DE1CC(const void *a1, uint64_t a2, int a3, char a4)
{
  if (qword_1ED7346B8 != -1)
  {
    sub_1AFDE15E0();
  }

  v8 = sub_1AF0D160C(qword_1ED7346B0, 0x18uLL);
  v9 = v8;
  if (a1)
  {
    sub_1AF1DE260(v8, a1);
  }

  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 34) = a4;
  *(v9 + 36) = sub_1AF288070(a3);
  return v9;
}

CFTypeRef sub_1AF1DE260(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD1E0C(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 16);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 16) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_1AF1DE2E0(uint64_t a1)
{
  if (qword_1ED7346B8 != -1)
  {
    sub_1AFDE15E0();
  }

  v2 = sub_1AF0D160C(qword_1ED7346B0, 0x18uLL);
  sub_1AF1DE260(v2, *(a1 + 16));
  *(v2 + 24) = *(a1 + 24);
  *(v2 + 37) = *(a1 + 37);
  *(v2 + 32) = *(a1 + 32);
  *(v2 + 34) = *(a1 + 34);
  *(v2 + 35) = *(a1 + 35);
  return v2;
}

uint64_t sub_1AF1DE360(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD1E0C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 16);
}

uint64_t sub_1AF1DE3A8(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDCFFDC(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 24);
}

void *sub_1AF1DE3F0(uint64_t a1, void *a2)
{
  if (!a1 && (v4 = sub_1AF0D5194(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD119C(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v12 = sub_1AF0D5194();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDDFC00(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  v20 = *(a1 + 16);
  v21 = *(a1 + 24);
  v22 = *(a1 + 36);
  v23 = sub_1AF1DE4A8(a1);
  v24 = sub_1AF1DE4F0(a1);
  return sub_1AF1C34F8(v20, v21, a2, v22, v23, v24);
}

uint64_t sub_1AF1DE4A8(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDCFFDC(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 34);
}

uint64_t sub_1AF1DE4F0(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDCFFDC(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 35);
}

uint64_t sub_1AF1DE538(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDCFFDC(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 32);
}

void sub_1AF1DE584(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 24) = 0;
  }
}

uint64_t sub_1AF1DE5BC()
{
  result = _CFRuntimeRegisterClass();
  qword_1EB654D18 = result;
  return result;
}

uint64_t sub_1AF1DE5E4(const void *a1)
{
  if (qword_1EB654D20 != -1)
  {
    sub_1AFDE15F4();
  }

  v2 = sub_1AF0D160C(qword_1EB654D18, 0x90uLL);
  if (v2)
  {
    *(v2 + 24) = CFRetain(a1);
    *(v2 + 16) = 1;
    v3 = sub_1AF1DE538(a1);
    *(v2 + 128) = v3;
    *(v2 + 130) = sub_1AF288070(v3);
  }

  return v2;
}

uint64_t sub_1AF1DE660(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE1608(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *(a1 + 16) - 1;
  *(a1 + 16) = v10;
  return v10;
}

void sub_1AF1DE6B8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }
}

uint64_t sub_1AF1DE6F0()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED7346A0 = result;
  return result;
}

uint64_t sub_1AF1DE718()
{
  if (qword_1ED7346A8 != -1)
  {
    sub_1AFDE1680();
  }

  v0 = sub_1AF0D160C(qword_1ED7346A0, 0x20uLL);
  if (v0)
  {
    *(v0 + 16) = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
  }

  return v0;
}

uint64_t sub_1AF1DE784(uint64_t a1, const void *a2)
{
  if (!a1 && (v4 = sub_1AF0D5194(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDE1694(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v12 = sub_1AF0D5194();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDD119C(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  v20 = sub_1AF1DE3A8(a2);
  v21 = v20;
  if (*(a1 + 24) == v20)
  {
    Value = *(a1 + 32);
    if (Value)
    {
      goto LABEL_8;
    }

LABEL_10:
    Value = sub_1AF1DE5E4(a2);
    v23 = sub_1AF1DE360(a2);
    CFDictionaryAddValue(*(a1 + 16), v21, Value);
    *(Value + 136) = sub_1AF1C3688(v23);
    v24 = sub_1AF1C36DC(v23);
    *(Value + 144) = v24;
    if (*(Value + 136))
    {
      if (v24)
      {
LABEL_18:
        sub_1AF1DE904(a1, Value);
        CFRelease(Value);
        *(a1 + 24) = v21;
        *(a1 + 32) = Value;
        return Value;
      }
    }

    else
    {
      v25 = sub_1AF0D5194();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDE170C(v25, v26, v27, v28, v29, v30, v31, v32);
      }

      if (*(Value + 144))
      {
        goto LABEL_18;
      }
    }

    v33 = sub_1AF0D5194();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE1784(v33, v34, v35, v36, v37, v38, v39, v40);
    }

    goto LABEL_18;
  }

  *(a1 + 24) = v20;
  Value = CFDictionaryGetValue(*(a1 + 16), v20);
  *(a1 + 32) = Value;
  if (!Value)
  {
    goto LABEL_10;
  }

LABEL_8:
  ++*(Value + 16);
  return Value;
}

void sub_1AF1DE904(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE1694(v3, v4, v5, v6, v7, v8, v9, v10);
      if (a2)
      {
        goto LABEL_4;
      }

LABEL_14:
      v22 = sub_1AF0D5194();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDE1608(v22, v23, v24, v25, v26, v27, v28, v29);
      }

      return;
    }
  }

  if (!a2)
  {
    goto LABEL_14;
  }

LABEL_4:
  v11 = *(a2 + 24);
  if (*(v11 + 37) != 1)
  {
    v14 = *(a2 + 136);
    v15 = sub_1AF1DE360(*(a2 + 24));
    v16 = sub_1AF1DE3A8(v11);
    v14(v15, v16, a2 + 32, *(a2 + 130), *(v11 + 34), *(v11 + 35));
    return;
  }

  v12 = CFGetTypeID(*(v11 + 16));
  if (v12 == sub_1AF1B846C())
  {
    v13 = sub_1AF1BA1FC(*(v11 + 16));
LABEL_10:
    v17 = v13[1];
    *(a2 + 32) = *v13;
    *(a2 + 48) = v17;
    v18 = v13[5];
    v20 = v13[2];
    v19 = v13[3];
    *(a2 + 96) = v13[4];
    *(a2 + 112) = v18;
    *(a2 + 64) = v20;
    *(a2 + 80) = v19;
    return;
  }

  if (v12 == sub_1AF167C2C())
  {
    v13 = sub_1AF167270(*(v11 + 16));
    goto LABEL_10;
  }

  v21 = sub_1AF0D5194();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDE17FC(v21);
  }
}

void sub_1AF1DEA30(uint64_t a1, uint64_t a2)
{
  if (!a1 && (v4 = sub_1AF0D5194(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDE1694(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v12 = sub_1AF0D5194();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDE1608(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  if (*(a2 + 16) == 1)
  {
    sub_1AF1DEACC(a1, a2);
  }

  sub_1AF1DEBA4(a1, a2);
}

uint64_t sub_1AF1DEACC(uint64_t a1, uint64_t a2)
{
  if (!a1 && (v4 = sub_1AF0D5194(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDE1694(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v12 = sub_1AF0D5194();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDE1608(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  v20 = sub_1AF1DE3A8(*(a2 + 24));
  *(a2 + 152) = *(a1 + 40);
  v21 = *(a2 + 24);
  v22 = *(v21 + 37);
  v23 = *(a2 + 144);
  v24 = sub_1AF1DE360(v21);
  if (v22 == 1)
  {
    v25 = a2 + 32;
    v26 = v20;
    v27 = 96;
    v28 = 8;
    v29 = 0;
  }

  else
  {
    v27 = *(a2 + 130);
    v30 = *(a2 + 24);
    v28 = *(v30 + 34);
    v29 = *(v30 + 35);
    v25 = a2 + 32;
    v26 = v20;
  }

  return v23(v24, v26, v25, v27, v28, v29);
}

void sub_1AF1DEBA4(uint64_t a1, uint64_t a2)
{
  if (!a1 && (v4 = sub_1AF0D5194(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDE1694(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v12 = sub_1AF0D5194();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDE1608(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  v20 = sub_1AF1DE3A8(*(a2 + 24));
  if (!sub_1AF1DE660(a2))
  {
    CFDictionaryRemoveValue(*(a1 + 16), v20);
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }
}

const void *sub_1AF1DEC44(uint64_t a1, uint64_t a2)
{
  if (!a1 && (v4 = sub_1AF0D5194(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDE1694(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v12 = sub_1AF0D5194();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDD119C(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  v20 = sub_1AF1DE3A8(a2);
  if (*(a1 + 24) == v20)
  {
    return *(a1 + 32);
  }

  *(a1 + 24) = v20;
  result = CFDictionaryGetValue(*(a1 + 16), v20);
  *(a1 + 32) = result;
  return result;
}

void sub_1AF1DECEC(__n128 *a1, uint64_t a2, uint64_t a3)
{
  if (!a1 && (v6 = sub_1AF0D5194(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDE1608(v6, v7, v8, v9, v10, v11, v12, v13);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v14 = sub_1AF0D5194();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDD119C(v14, v15, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  if (!a3)
  {
    v22 = sub_1AF0D5194();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE1840(v22, v23, v24, v25, v26, v27, v28, v29);
    }
  }

  v30 = *(a1[1].n128_u64[1] + 37);
  v31 = sub_1AF1CDA60(a3);
  if (v30 == 1)
  {
    v32 = sub_1AF288070(*(a2 + 32));
    sub_1AF1CD69C(a1 + 2, v31, v32, *(a2 + 34), *(a2 + 35), v33, v34, v35, v36, v37, v38, v39);
  }

  else
  {
    memcpy(&a1[2], v31, a1[8].n128_i16[1]);
  }
}

void *sub_1AF1DEDE8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AF1BA1FC(a2);
  if (*(a1 + 24) == v3)
  {
    result = *(a1 + 32);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    *(a1 + 24) = v3;
    result = CFDictionaryGetValue(*(a1 + 16), v3);
    *(a1 + 32) = result;
    if (!result)
    {
      return result;
    }
  }

  result[19] = *(a1 + 40);
  return result;
}

void sub_1AF1DEE48(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AF1BA1FC(a2);
  if (*(a1 + 24) == v3)
  {
    Value = *(a1 + 32);
    if (!Value)
    {
      return;
    }
  }

  else
  {
    *(a1 + 24) = v3;
    Value = CFDictionaryGetValue(*(a1 + 16), v3);
    *(a1 + 32) = Value;
    if (!Value)
    {
      return;
    }
  }

  sub_1AF1DEEC0(a1, Value);
}

void sub_1AF1DEEC0(uint64_t a1, uint64_t a2)
{
  if (!a1 && (v4 = sub_1AF0D5194(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDE1694(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v12 = sub_1AF0D5194();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDE1608(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  v20 = *(a1 + 40);
  if (*(a2 + 152) != v20)
  {
    *(a2 + 152) = v20;
    v21 = sub_1AF1DE3A8(*(a2 + 24));
    v22 = *(a2 + 24);
    if (*(v22 + 37) == 1)
    {
      v30[0] = sub_1AF1CBF20((a2 + 32));
      v30[1] = v23;
      v30[2] = v24;
      v30[3] = v25;
      v26 = *(a2 + 144);
      v27 = sub_1AF1DE360(*(a2 + 24));
      v26(v27, v21, v30, 64, 8, 0);
    }

    else
    {
      v28 = *(a2 + 144);
      v29 = sub_1AF1DE360(v22);
      v28(v29, v21, a2 + 32, *(a2 + 130), *(*(a2 + 24) + 34), *(*(a2 + 24) + 35));
    }
  }
}

uint64_t sub_1AF1DEFC8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1AF1DE3A8(a2[3]);
  a2[19] = *(a1 + 40);
  v15 = a2[18];
  v13 = sub_1AF1DE360(a2[3]);

  return v15(v13, v12, a5, a6, a3, a4);
}

uint64_t sub_1AF1DF068(uint64_t a1, uint64_t *a2, __n128 *a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10, float32x4_t a11)
{
  result = a2[3];
  v15 = *(result + 24);
  a2[19] = *(a1 + 40);
  if (a4 == 7)
  {
    v38 = a2[18];
    v16 = sub_1AF1DE360(result);

    return v38(v16, v15, a3, 96, 8, 0);
  }

  v17 = a4;
  if (a4)
  {
    v39 = sub_1AF1CCB30(a3);
    v18 = a2[18];
    v19 = sub_1AF1DE360(a2[3]);
    result = v18(v19, v15, &v39, 16, 6, 0);
    if ((v17 & 4) == 0)
    {
LABEL_7:
      if ((v17 & 2) == 0)
      {
        return result;
      }

      goto LABEL_11;
    }
  }

  else if ((a4 & 4) == 0)
  {
    goto LABEL_7;
  }

  v39 = sub_1AF1CCB48(a3, a5, a6, a7, a8, a9, a10, a11);
  v20 = a2[18];
  v21 = sub_1AF1DE360(a2[3]);
  result = v20(v21, v15, &v39, 16, 7, 0);
  if ((v17 & 2) == 0)
  {
    return result;
  }

LABEL_11:
  result = sub_1AF1CBEF8(a3);
  switch(result)
  {
    case 2:
      sub_1AF1CC9D8(a3, v22, v23, v24, v25, v26, v27, v28);
      v39 = v35;
      v36 = a2[18];
      v37 = sub_1AF1DE360(a2[3]);
      return v36(v37, v15, &v39, 16, 4, 0);
    case 1:
      v32.n128_f64[0] = sub_1AF1CC7E0(a3, v22, v23, v24, v25, v26, v27, v28);
      v39 = v32;
      v33 = a2[18];
      v34 = sub_1AF1DE360(a2[3]);
      return v33(v34, v15, &v39, 16, 5, 0);
    case 0:
      v29.n128_f64[0] = sub_1AF1CC1F0(a3, v22, v23, v24, v25, v26, v27, v28);
      v39 = v29;
      v30 = a2[18];
      v31 = sub_1AF1DE360(a2[3]);
      return v30(v31, v15, &v39, 16, 3, 0);
  }

  return result;
}

void sub_1AF1DF22C(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE1694(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  ++*(a1 + 40);
}

uint64_t sub_1AF1DF56C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v6 = objc_msgSend_nodeRef(*(a1 + 40), a2, a3, a4);
  v10 = objc_msgSend_nodeRef(*(a1 + 48), v7, v8, v9);

  return MEMORY[0x1EEE66B58](v5, sel_initParametersIfNeededWithDrivingNodeRef_deformedNodeRef_, v6, v10);
}

uint64_t sub_1AF1DF6C8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v6 = objc_msgSend_nodeRef(*(a1 + 40), a2, a3, a4);
  v10 = objc_msgSend_nodeRef(*(a1 + 48), v7, v8, v9);
  objc_msgSend_nodeRef(*(a1 + 56), v11, v12, v13);

  return MEMORY[0x1EEE66B58](v5, sel_initParametersIfNeededWithInnerLayerNodeRef_outerLayerNodeRef_deformedNodeRef_, v6, v10);
}

uint64_t sub_1AF1E0D94(uint64_t a1, const char *a2, void *a3)
{
  objc_msgSend_configureStageInputOutputDescriptor_withDeformerFunction_(*(a1 + 32), a2, a3, a2);
  v8 = objc_msgSend_attributes(a3, v5, v6, v7);
  v11 = objc_msgSend_objectAtIndexedSubscript_(v8, v9, 6, v10);
  objc_msgSend_setFormat_(v11, v12, *(*(a1 + 40) + 40), v13);
  objc_msgSend_setOffset_(v11, v14, 0, v15);
  objc_msgSend_setBufferIndex_(v11, v16, 3, v17);
  v21 = objc_msgSend_layouts(a3, v18, v19, v20);
  v24 = objc_msgSend_objectAtIndexedSubscript_(v21, v22, 3, v23);
  objc_msgSend_setStepFunction_(v24, v25, 5, v26);
  objc_msgSend_setStride_(v24, v27, *(a1 + 56), v28);
  v32 = objc_msgSend_attributes(a3, v29, v30, v31);
  v35 = objc_msgSend_objectAtIndexedSubscript_(v32, v33, 7, v34);
  objc_msgSend_setFormat_(v35, v36, *(*(a1 + 40) + 64), v37);
  objc_msgSend_setOffset_(v35, v38, 0, v39);
  objc_msgSend_setBufferIndex_(v35, v40, 4, v41);
  v45 = objc_msgSend_layouts(a3, v42, v43, v44);
  v48 = objc_msgSend_objectAtIndexedSubscript_(v45, v46, 4, v47);
  objc_msgSend_setStepFunction_(v48, v49, 5, v50);
  objc_msgSend_setStride_(v48, v51, *(a1 + 64), v52);
  v53 = *(*(a1 + 48) + 8);
  v57 = objc_msgSend_attributes(a3, v54, v55, v56);
  if (v53)
  {
    v60 = objc_msgSend_objectAtIndexedSubscript_(v57, v58, 11, v59);
    objc_msgSend_setFormat_(v60, v61, 31, v62);
    objc_msgSend_setOffset_(v60, v63, 0, v64);
    objc_msgSend_setBufferIndex_(v60, v65, 6, v66);
    v70 = objc_msgSend_attributes(a3, v67, v68, v69);
    v73 = objc_msgSend_objectAtIndexedSubscript_(v70, v71, 12, v72);
    objc_msgSend_setFormat_(v73, v74, 31, v75);
    objc_msgSend_setOffset_(v73, v76, 16, v77);
    objc_msgSend_setBufferIndex_(v73, v78, 6, v79);
    v83 = objc_msgSend_attributes(a3, v80, v81, v82);
    v86 = objc_msgSend_objectAtIndexedSubscript_(v83, v84, 13, v85);
    objc_msgSend_setFormat_(v86, v87, 31, v88);
    objc_msgSend_setOffset_(v86, v89, 32, v90);
    v93 = 80;
  }

  else
  {
    v86 = objc_msgSend_objectAtIndexedSubscript_(v57, v58, 9, v59);
    objc_msgSend_setFormat_(v86, v94, 30, v95);
    objc_msgSend_setOffset_(v86, v96, 0, v97);
    v93 = 72;
  }

  objc_msgSend_setBufferIndex_(v86, v91, 6, v92);
  v101 = objc_msgSend_layouts(a3, v98, v99, v100);
  v104 = objc_msgSend_objectAtIndexedSubscript_(v101, v102, 6, v103);
  objc_msgSend_setStepFunction_(v104, v105, 5, v106);
  v109 = *(a1 + v93);

  return objc_msgSend_setStride_(v104, v107, v109, v108);
}

uint64_t sub_1AF1E0F94(uint64_t a1, const char *a2, void *a3)
{
  objc_msgSend_configureStageInputOutputDescriptor_withDeformerFunction_(*(a1 + 32), a2, a3, a2);
  v8 = objc_msgSend_attributes(a3, v5, v6, v7);
  v11 = objc_msgSend_objectAtIndexedSubscript_(v8, v9, 6, v10);
  objc_msgSend_setFormat_(v11, v12, *(*(a1 + 40) + 40), v13);
  objc_msgSend_setOffset_(v11, v14, 0, v15);
  objc_msgSend_setBufferIndex_(v11, v16, 3, v17);
  v21 = objc_msgSend_layouts(a3, v18, v19, v20);
  v24 = objc_msgSend_objectAtIndexedSubscript_(v21, v22, 3, v23);
  objc_msgSend_setStepFunction_(v24, v25, 5, v26);
  objc_msgSend_setStride_(v24, v27, *(a1 + 56), v28);
  v32 = objc_msgSend_attributes(a3, v29, v30, v31);
  v35 = objc_msgSend_objectAtIndexedSubscript_(v32, v33, 7, v34);
  objc_msgSend_setFormat_(v35, v36, *(*(a1 + 40) + 64), v37);
  objc_msgSend_setOffset_(v35, v38, 0, v39);
  objc_msgSend_setBufferIndex_(v35, v40, 4, v41);
  v45 = objc_msgSend_layouts(a3, v42, v43, v44);
  v48 = objc_msgSend_objectAtIndexedSubscript_(v45, v46, 4, v47);
  objc_msgSend_setStepFunction_(v48, v49, 5, v50);
  objc_msgSend_setStride_(v48, v51, *(a1 + 64), v52);
  v56 = objc_msgSend_attributes(a3, v53, v54, v55);
  v59 = objc_msgSend_objectAtIndexedSubscript_(v56, v57, 8, v58);
  objc_msgSend_setFormat_(v59, v60, 28, v61);
  objc_msgSend_setOffset_(v59, v62, 0, v63);
  objc_msgSend_setBufferIndex_(v59, v64, 5, v65);
  v69 = objc_msgSend_layouts(a3, v66, v67, v68);
  v72 = objc_msgSend_objectAtIndexedSubscript_(v69, v70, 5, v71);
  objc_msgSend_setStepFunction_(v72, v73, 5, v74);
  result = objc_msgSend_setStride_(v72, v75, *(a1 + 72), v76);
  if (*(*(a1 + 48) + 8) == 1)
  {
    v81 = objc_msgSend_attributes(a3, v78, v79, v80);
    v84 = objc_msgSend_objectAtIndexedSubscript_(v81, v82, 9, v83);
    objc_msgSend_setFormat_(v84, v85, 30, v86);
    objc_msgSend_setOffset_(v84, v87, 0, v88);
    objc_msgSend_setBufferIndex_(v84, v89, 6, v90);
    v94 = objc_msgSend_layouts(a3, v91, v92, v93);
    v97 = objc_msgSend_objectAtIndexedSubscript_(v94, v95, 6, v96);
    objc_msgSend_setStepFunction_(v97, v98, 5, v99);
    objc_msgSend_setStride_(v97, v100, *(a1 + 80), v101);
    v105 = objc_msgSend_attributes(a3, v102, v103, v104);
    v108 = objc_msgSend_objectAtIndexedSubscript_(v105, v106, 10, v107);
    objc_msgSend_setFormat_(v108, v109, 30, v110);
    objc_msgSend_setOffset_(v108, v111, 0, v112);
    objc_msgSend_setBufferIndex_(v108, v113, 7, v114);
    v118 = objc_msgSend_layouts(a3, v115, v116, v117);
    v121 = objc_msgSend_objectAtIndexedSubscript_(v118, v119, 7, v120);
    objc_msgSend_setStepFunction_(v121, v122, 5, v123);
    objc_msgSend_setStride_(v121, v124, *(a1 + 80), v125);
    v129 = objc_msgSend_attributes(a3, v126, v127, v128);
    v132 = objc_msgSend_objectAtIndexedSubscript_(v129, v130, 11, v131);
    objc_msgSend_setFormat_(v132, v133, 30, v134);
    objc_msgSend_setOffset_(v132, v135, 0, v136);
    objc_msgSend_setBufferIndex_(v132, v137, 8, v138);
    v142 = objc_msgSend_attributes(a3, v139, v140, v141);
    v145 = objc_msgSend_objectAtIndexedSubscript_(v142, v143, 12, v144);
    objc_msgSend_setFormat_(v145, v146, 30, v147);
    objc_msgSend_setOffset_(v145, v148, 12, v149);
    objc_msgSend_setBufferIndex_(v145, v150, 8, v151);
    v155 = objc_msgSend_attributes(a3, v152, v153, v154);
    v158 = objc_msgSend_objectAtIndexedSubscript_(v155, v156, 13, v157);
    objc_msgSend_setFormat_(v158, v159, 30, v160);
    objc_msgSend_setOffset_(v158, v161, 24, v162);
    objc_msgSend_setBufferIndex_(v158, v163, 8, v164);
    v168 = objc_msgSend_layouts(a3, v165, v166, v167);
    v171 = objc_msgSend_objectAtIndexedSubscript_(v168, v169, 8, v170);
    objc_msgSend_setStepFunction_(v171, v172, 5, v173);
    objc_msgSend_setStride_(v171, v174, *(a1 + 88), v175);
    v179 = objc_msgSend_attributes(a3, v176, v177, v178);
    v182 = objc_msgSend_objectAtIndexedSubscript_(v179, v180, 14, v181);
    objc_msgSend_setFormat_(v182, v183, 30, v184);
    objc_msgSend_setOffset_(v182, v185, 0, v186);
    objc_msgSend_setBufferIndex_(v182, v187, 9, v188);
    v192 = objc_msgSend_attributes(a3, v189, v190, v191);
    v195 = objc_msgSend_objectAtIndexedSubscript_(v192, v193, 15, v194);
    objc_msgSend_setFormat_(v195, v196, 30, v197);
    objc_msgSend_setOffset_(v195, v198, 12, v199);
    objc_msgSend_setBufferIndex_(v195, v200, 9, v201);
    v205 = objc_msgSend_attributes(a3, v202, v203, v204);
    v208 = objc_msgSend_objectAtIndexedSubscript_(v205, v206, 16, v207);
    objc_msgSend_setFormat_(v208, v209, 30, v210);
    objc_msgSend_setOffset_(v208, v211, 24, v212);
    objc_msgSend_setBufferIndex_(v208, v213, 9, v214);
    v218 = objc_msgSend_layouts(a3, v215, v216, v217);
    v221 = objc_msgSend_objectAtIndexedSubscript_(v218, v219, 9, v220);
    objc_msgSend_setStepFunction_(v221, v222, 5, v223);
    v226 = *(a1 + 88);

    return objc_msgSend_setStride_(v221, v224, v226, v225);
  }

  return result;
}

uint64_t sub_1AF1E1834(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return objc_msgSend_computePipelineStateForKernel_withStageDescriptor_stageDescriptorUpdateBlock_constants_constantsHash_(a1, a2, v5, v6, a5, 0, 0);
}

float32x4_t sub_1AF1E1854(uint64_t a1, uint64_t a2, uint64_t a3, simd_float4x4 a4, float32x4_t a5, float32x4_t a6, float32x4_t a7, float32x4_t a8)
{
  v23 = __invert_f4(a4);
  v11 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v23.columns[3], v23.columns[2], a6, 2), v23.columns[1], *a6.f32, 1), v23.columns[0], a6.f32[0]);
  v12 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v23.columns[3], v23.columns[2], a8, 2), v23.columns[1], *a8.f32, 1), v23.columns[0], a8.f32[0]);
  v21 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v23.columns[3], v23.columns[2], a5, 2), v23.columns[1], *a5.f32, 1), v23.columns[0], a5.f32[0]);
  v23.columns[0] = vsubq_f32(vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v23.columns[3], v23.columns[2], a7, 2), v23.columns[1], *a7.f32, 1), v23.columns[0], a7.f32[0]), v11);
  v23.columns[2] = vsubq_f32(v12, v11);
  v23.columns[3] = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v23.columns[0], v23.columns[0]), v23.columns[0], 0xCuLL), vnegq_f32(v23.columns[2])), v23.columns[0], vextq_s8(vuzp1q_s32(v23.columns[2], v23.columns[2]), v23.columns[2], 0xCuLL));
  v23.columns[1] = vextq_s8(vuzp1q_s32(v23.columns[3], v23.columns[3]), v23.columns[3], 0xCuLL);
  v13 = vmulq_f32(v23.columns[0], v23.columns[0]);
  v12.f32[0] = vaddv_f32(*v13.f32);
  *v13.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v13.f32[2] + v12.f32[0]));
  *v13.f32 = vmul_f32(*v13.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v13.f32[2] + v12.f32[0]), vmul_f32(*v13.f32, *v13.f32)));
  v13.i32[0] = vmul_f32(*v13.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v13.f32[2] + v12.f32[0]), vmul_f32(*v13.f32, *v13.f32))).u32[0];
  v23.columns[0] = vmulq_n_f32(v23.columns[0], v13.f32[0]);
  v23.columns[3] = vmulq_f32(v23.columns[3], v23.columns[3]);
  v13.i64[0] = v13.u32[0];
  v13.f32[0] = v23.columns[3].f32[1] + (v23.columns[3].f32[2] + v23.columns[3].f32[0]);
  *v23.columns[3].f32 = vrsqrte_f32(*v13.f32);
  *v23.columns[3].f32 = vmul_f32(*v23.columns[3].f32, vrsqrts_f32(*v13.f32, vmul_f32(*v23.columns[3].f32, *v23.columns[3].f32)));
  v23.columns[1] = vmulq_n_f32(v23.columns[1], vmul_f32(*v23.columns[3].f32, vrsqrts_f32(*v13.f32, vmul_f32(*v23.columns[3].f32, *v23.columns[3].f32))).f32[0]);
  v23.columns[3] = vmulq_f32(v23.columns[2], v23.columns[2]);
  v12.f32[0] = v23.columns[3].f32[2] + vaddv_f32(*v23.columns[3].f32);
  *v23.columns[3].f32 = vrsqrte_f32(v12.u32[0]);
  *v23.columns[3].f32 = vmul_f32(*v23.columns[3].f32, vrsqrts_f32(v12.u32[0], vmul_f32(*v23.columns[3].f32, *v23.columns[3].f32)));
  v23.columns[2] = vmulq_n_f32(v23.columns[2], vmul_f32(*v23.columns[3].f32, vrsqrts_f32(v12.u32[0], vmul_f32(*v23.columns[3].f32, *v23.columns[3].f32))).f32[0]);
  v14 = a2 + 36 * a1;
  v23.columns[3] = v23.columns[0];
  v23.columns[3].i32[3] = v23.columns[1].i32[0];
  *v14 = v23.columns[3];
  *(v14 + 16) = vextq_s8(vextq_s8(v23.columns[1], v23.columns[1], 0xCuLL), v23.columns[2], 8uLL);
  *(v14 + 32) = v23.columns[2].i32[2];
  v22 = __invert_f3(*v23.columns[0].f32);
  result = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22.columns[0], v21.f32[0]), v22.columns[1], *v21.f32, 1), v22.columns[2], v21, 2);
  v16 = a3 + 12 * a1;
  *v16 = result.i64[0];
  *(v16 + 8) = result.i32[2];
  return result;
}

void sub_1AF1E1A04(uint64_t a1, size_t count, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float32x4_t a9, float32x4_t a10, float32x4_t a11, float32x4_t a12, unint64_t a13, unint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, size_t *a24)
{
  v28 = count;
  v117[9] = *MEMORY[0x1E69E9840];
  v81 = count;
  if (a13 == a14)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1AF1E2088;
    block[3] = &unk_1E7A7C138;
    block[4] = a7;
    block[5] = a4;
    block[6] = a6;
    block[7] = a8;
    block[8] = a15;
    block[9] = a16;
    block[10] = a17;
    block[11] = a22;
    block[12] = a21;
    block[13] = a18;
    block[14] = a19;
    block[15] = a20;
    dispatch_apply(count, 0, block);
  }

  else
  {
    v112.i64[0] = 0;
    v112.i64[1] = &v112;
    v113.i64[0] = 0x2020000000;
    v113.i32[2] = 0;
    v83 = malloc_type_calloc(count, 4uLL, 0x100004052888210uLL);
    v76 = a7;
    v29 = sub_1AF1A3CCC(a3);
    v30 = v29 - 1;
    if (v29 >= 1)
    {
      v31 = 0;
      do
      {
        v32 = sub_1AF1A3D1C(a3, v31, 0);
        sub_1AF1A767C(v32, a13, v116);
        sub_1AF1A767C(v32, a14, v117);
        v93.n128_u64[0] = MEMORY[0x1E69E9820];
        v93.n128_u64[1] = 3221225472;
        v94 = sub_1AF1E24A8;
        v95 = &unk_1E7A7C160;
        v98 = v76;
        v99 = a4;
        v100 = a6;
        v101 = a8;
        v102 = a15;
        v103 = a16;
        v104 = a17;
        v105 = a22;
        v106 = a21;
        v107 = a18;
        v108 = a19;
        v109 = a20;
        v96 = &v112;
        v97 = v83;
        v110 = v28;
        sub_1AF1A8154(v116, 2, &v93, v33);
        if (*(v112.i64[1] + 24) == v28)
        {
          break;
        }
      }

      while (v30 != v31++);
    }

    free(v83);
    _Block_object_dispose(&v112, 8);
  }

  if (a1 == 1)
  {
    v35 = 16 * (3 * v28);
  }

  else if (a1)
  {
    v35 = 0;
  }

  else
  {
    v35 = 4 * (3 * v28);
  }

  v38 = malloc_type_malloc(v35, 0x100004052888210uLL);
  if (v28)
  {
    v39 = 0;
    while (1)
    {
      if (a18)
      {
        v40 = *(a18 + (3 * v39));
        v41 = *(a18 + (3 * v39 + 1));
        v42 = *(a18 + (3 * v39 + 2));
      }

      else if (a19)
      {
        v40 = *(a19 + 2 * (3 * v39));
        v41 = *(a19 + 2 * (3 * v39 + 1));
        v42 = *(a19 + 2 * (3 * v39 + 2));
      }

      else if (a20)
      {
        v40 = *(a20 + 4 * (3 * v39));
        v41 = *(a20 + 4 * (3 * v39 + 1));
        v42 = *(a20 + 4 * (3 * v39 + 2));
      }

      else
      {
        v42 = 0;
        v41 = 0;
        v40 = 0;
      }

      if (a22)
      {
        v43 = (a22 + 4 * (v39 & 0x7FFFFFFF));
        v44.i32[0] = *v43;
        v44.i32[1] = v43[1];
        v45 = vdiv_f32(vcvt_f32_u32(v44), vdup_n_s32(0x477FFF00u));
      }

      else
      {
        v45 = *(a21 + 8 * (v39 & 0x7FFFFFFF));
      }

      *v90.f32 = v45;
      *v46.i64 = sub_1AF1AF084(a6, v40, v36, v37);
      v87 = v46;
      *v49.i64 = sub_1AF1AF084(a6, v41, v47, v48);
      v85 = v49;
      *v52.i64 = sub_1AF1AF084(a6, v42, v50, v51);
      v91 = vmlaq_n_f32(vmlaq_n_f32(vmulq_lane_f32(v85, *v90.f32, 1), v87, v90.f32[0]), v52, (1.0 - v90.f32[0]) - v90.f32[1]);
      v53 = vsubq_f32(v85, v87);
      v54 = vsubq_f32(v52, v87);
      v55 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v53, v53), v53, 0xCuLL), vnegq_f32(v54)), v53, vextq_s8(vuzp1q_s32(v54, v54), v54, 0xCuLL));
      v56 = vextq_s8(vuzp1q_s32(v55, v55), v55, 0xCuLL);
      v57 = vmulq_f32(v53, v53);
      *&v58 = v57.f32[2] + vaddv_f32(*v57.f32);
      *v57.f32 = vrsqrte_f32(v58);
      *v57.f32 = vmul_f32(*v57.f32, vrsqrts_f32(v58, vmul_f32(*v57.f32, *v57.f32)));
      v59 = vmulq_n_f32(v53, vmul_f32(*v57.f32, vrsqrts_f32(v58, vmul_f32(*v57.f32, *v57.f32))).f32[0]);
      v60 = vmulq_f32(v55, v55);
      v55.f32[0] = v60.f32[1] + (v60.f32[2] + v60.f32[0]);
      *v60.f32 = vrsqrte_f32(v55.u32[0]);
      *v60.f32 = vmul_f32(*v60.f32, vrsqrts_f32(v55.u32[0], vmul_f32(*v60.f32, *v60.f32)));
      v86 = vmulq_n_f32(v56, vmul_f32(*v60.f32, vrsqrts_f32(v55.u32[0], vmul_f32(*v60.f32, *v60.f32))).f32[0]);
      v88 = v59;
      v61 = vmulq_f32(v54, v54);
      v56.f32[0] = v61.f32[2] + vaddv_f32(*v61.f32);
      *v61.f32 = vrsqrte_f32(v56.u32[0]);
      *v61.f32 = vmul_f32(*v61.f32, vrsqrts_f32(v56.u32[0], vmul_f32(*v61.f32, *v61.f32)));
      v84 = vmulq_n_f32(v54, vmul_f32(*v61.f32, vrsqrts_f32(v56.u32[0], vmul_f32(*v61.f32, *v61.f32))).f32[0]);
      if (a1 == 1)
      {
        break;
      }

      if (!a1)
      {
        *v62.i64 = sub_1AF1AF084(a5, v39, v36, v37);
        v92 = vsubq_f32(vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(a12, a11, v62, 2), a10, *v62.f32, 1), a9, v62.f32[0]), v91);
        v118.columns[1] = v86;
        v118.columns[0] = v88;
        v118.columns[2] = v84;
        v119 = __invert_f3(v118);
        v119.columns[0] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v119.columns[0], v92.f32[0]), v119.columns[1], *v92.f32, 1), v119.columns[2], v92, 2);
        v38[3 * v39] = v119.columns[0].i32[0];
        v38[3 * v39 + 1] = v119.columns[0].i32[1];
        v63 = v119.columns[0].i32[2];
        v64 = 3 * v39 + 2;
LABEL_32:
        v38[v64] = v63;
      }

      if (++v39 == v81)
      {
        goto LABEL_34;
      }
    }

    v120.columns[1] = v86;
    v120.columns[0] = v59;
    v120.columns[0].i32[3] = 0;
    v120.columns[1].i32[3] = 0;
    v120.columns[2] = v84;
    v120.columns[2].i32[3] = 0;
    __asm { FMOV            V3.4S, #1.0 }

    v120.columns[3].i64[0] = v91.i64[0];
    v120.columns[3].i32[2] = v91.i32[2];
    v121 = __invert_f4(v120);
    v68 = 0;
    v112 = a9;
    v113 = a10;
    v114 = a11;
    v115 = a12;
    do
    {
      v116[v68 / 4] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v121.columns[0], COERCE_FLOAT(*(&v112 + v68 * 4))), v121.columns[1], *&v112.f32[v68], 1), v121.columns[2], *(&v112 + v68 * 4), 2), v121.columns[3], *(&v112 + v68 * 4), 3);
      v68 += 4;
    }

    while (v68 != 16);
    v69 = v116[0];
    v70 = v116[1];
    v71 = v116[2];
    v72 = v116[3];
    v73 = 12 * v39;
    v38[v73] = v116[0].i32[0];
    v38[(12 * v39) | 1] = v70.i32[0];
    v38[(12 * v39) | 2] = v71.i32[0];
    v38[(12 * v39) | 3] = v72.i32[0];
    *&v74 = vtrn2q_s32(v69, v70).u64[0];
    *(&v74 + 1) = __PAIR64__(v72.u32[1], v71.u32[1]);
    *&v38[v73 + 4] = v74;
    *&v38[v73 + 8] = vzip1_s32(*&vextq_s8(v69, v69, 8uLL), *&vextq_s8(v70, v70, 8uLL));
    v38[v73 + 10] = v71.i32[2];
    v63 = v72.i32[2];
    v64 = 12 * v39 + 11;
    goto LABEL_32;
  }

LABEL_34:
  *a23 = v38;
  *a24 = v35;
}

void sub_1AF1E2088(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  DWORD2(v18) = 0;
  *&v18 = 0;
  DWORD2(v17) = 0;
  *&v17 = 0;
  DWORD2(v16) = 0;
  *&v16 = 0;
  v6 = sub_1AF1AF104(a1[4], a2, a3, a4);
  sub_1AF1E21E0(a1[5], a1[7], a1[8], a1[9], &v17, &v16, &v18, v6);
  v7 = a1[11];
  if (a1[10])
  {
    v8 = &v17;
  }

  else
  {
    v8 = &v16;
  }

  v9 = *v8;
  if (v7)
  {
    v10 = (v7 + 4 * a2);
    *v10 = (65535.0 * *&v9);
    v10[1] = vmuls_lane_f32(65535.0, *&v9, 1);
  }

  else
  {
    *(a1[12] + 8 * a2) = v9;
  }

  v11 = a1[13];
  if (v11)
  {
    *(v11 + 3 * a2) = v18;
    *(a1[13] + 3 * a2 + 1) = BYTE4(v18);
    *(a1[13] + 3 * a2 + 2) = BYTE8(v18);
  }

  else
  {
    v12 = a1[14];
    if (v12)
    {
      v13 = (v12 + 6 * a2);
      *v13 = v18;
      v13[1] = WORD2(v18);
      v13[2] = WORD4(v18);
    }

    else
    {
      v14 = a1[15];
      if (v14)
      {
        v15 = v14 + 12 * a2;
        *v15 = v18;
        *(v15 + 8) = DWORD2(v18);
      }
    }
  }
}

void sub_1AF1E21E0(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, _OWORD *a5, _OWORD *a6, _OWORD *a7, double a8)
{
  v57 = *MEMORY[0x1E69E9840];
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x2020000000;
  v35 = 2139095039;
  v52 = 0;
  v53 = &v52;
  v56 = 0;
  v54 = 0x3020000000;
  v55 = 0;
  v47 = 0;
  v48 = &v47;
  v51 = 0;
  v49 = 0x3020000000;
  v50 = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3020000000;
  v46 = 0;
  v45 = 0;
  v15 = sub_1AF1A3CCC(a1);
  if (v15 >= 1)
  {
    v16 = 0;
    do
    {
      if (*(v37 + 24) == 1)
      {
        break;
      }

      v17 = sub_1AF1A3D1C(a1, v16, 0);
      sub_1AF1A767C(v17, a3, v40);
      sub_1AF1A767C(v17, a4, &v41);
      v21.n128_u64[0] = MEMORY[0x1E69E9820];
      v21.n128_u64[1] = 3221225472;
      v22 = sub_1AF1E3350;
      v23 = &unk_1E7A7C1D0;
      v30 = a8;
      v31 = a5;
      v32 = a6;
      v33 = a7;
      v24 = &v36;
      v25 = v34;
      v26 = &v47;
      v27 = &v52;
      v28 = &v42;
      v29 = a2;
      sub_1AF1A8154(v40, 2, &v21, v18);
      ++v16;
    }

    while (v15 != v16);
  }

  v19 = v37;
  if (!*(v37 + 24))
  {
    *a5 = *(v48 + 2);
    *a6 = *(v53 + 2);
    *a7 = *(v43 + 2);
    *(v19 + 24) = 1;
  }

  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(v34, 8);
  _Block_object_dispose(&v36, 8);
}

void sub_1AF1E2458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose((v29 - 256), 8);
  _Block_object_dispose((v29 - 208), 8);
  _Block_object_dispose((v29 - 160), 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_1AF1E24A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (a4)
  {
    v8 = 0;
    v9 = 2 * a4;
    while (1)
    {
      v10 = *(a3 + 4 * v8);
      v11 = *(a1 + 40);
      if (!*(v11 + 4 * v10))
      {
        v12 = *(a3 + 4 * (v8 + 1));
        *(v11 + 4 * v10) = 1;
        DWORD2(v23) = 0;
        *&v23 = 0;
        DWORD2(v22) = 0;
        *&v22 = 0;
        DWORD2(v21) = 0;
        *&v21 = 0;
        v13 = sub_1AF1AF104(*(a1 + 48), v12, a3, a4);
        sub_1AF1E21E0(*(a1 + 56), *(a1 + 72), *(a1 + 80), *(a1 + 88), &v22, &v21, &v23, v13);
        v14 = *(a1 + 104);
        v15 = *(a1 + 96) ? &v22 : &v21;
        v16 = *v15;
        if (v14)
        {
          *(v14 + 2 * (2 * v10)) = (65535.0 * *&v16);
          *(v14 + 2 * ((2 * v10) | 1u)) = vmuls_lane_f32(65535.0, *&v16, 1);
        }

        else
        {
          *(*(a1 + 112) + 4 * (2 * v10)) = v16;
        }

        v17 = *(a1 + 120);
        if (v17)
        {
          v18 = (3 * v10);
          *(v17 + v18) = v23;
          *(*(a1 + 120) + (v18 + 1)) = BYTE4(v23);
          *(*(a1 + 120) + (v18 + 2)) = BYTE8(v23);
        }

        else
        {
          v19 = *(a1 + 128);
          if (v19)
          {
            *(v19 + 2 * (3 * v10)) = v23;
            *(v19 + 2 * (3 * v10 + 1)) = WORD2(v23);
            *(v19 + 2 * (3 * v10 + 2)) = WORD4(v23);
          }

          else
          {
            v20 = *(a1 + 136);
            if (v20)
            {
              *(v20 + 4 * (3 * v10)) = v23;
              *(v20 + 4 * (3 * v10 + 1)) = DWORD1(v23);
              *(v20 + 4 * (3 * v10 + 2)) = DWORD2(v23);
            }
          }
        }

        if (++*(*(*(a1 + 32) + 8) + 24) == *(a1 + 144))
        {
          break;
        }
      }

      v8 += 2;
      if (v9 == v8)
      {
        return;
      }
    }

    *a5 = 1;
  }
}

void sub_1AF1E26A8(uint64_t a1, size_t iterations, int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10, __n128 a11, __n128 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void **a22, void **a23, size_t *a24, void **a25, void *a26, size_t *a27)
{
  v27 = iterations;
  v30 = a20;
  v29 = a21;
  v31 = a18;
  v32 = a19;
  v34 = a16;
  v33 = a17;
  if (a1 == 1)
  {
    v36 = 4 * (9 * iterations);
    *a24 = v36;
    v44 = a7;
    v45 = a8;
    v42 = a6;
    v43 = a4;
    v40 = a11;
    v41 = a12;
    v38 = a9;
    v39 = a10;
    *a22 = malloc_type_malloc(v36, 0x100004052888210uLL);
    *a23 = malloc_type_malloc(*a24, 0x100004052888210uLL);
    v37 = 12 * v27;
    *a27 = v37;
    *a25 = malloc_type_malloc(v37, 0x100004052888210uLL);
    v35 = malloc_type_malloc(*a27, 0x100004052888210uLL);
    v34 = a16;
    v33 = a17;
    v32 = a19;
    v30 = a20;
    v29 = a21;
    v31 = a18;
    a9 = v38;
    a10 = v39;
    a11 = v40;
    a12 = v41;
    a6 = v42;
    a4 = v43;
    a7 = v44;
    a8 = v45;
    goto LABEL_5;
  }

  if (!a1)
  {
    v35 = 0;
    *a24 = 0;
    *a22 = 0;
    *a23 = 0;
    *a27 = 0;
    *a25 = 0;
LABEL_5:
    *a26 = v35;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1AF1E2860;
  block[3] = &unk_1E7A7C1A8;
  v47 = a9;
  v48 = a10;
  v49 = a11;
  v50 = a12;
  v51 = a6;
  v52 = a4;
  v53 = a13;
  v54 = a7;
  v55 = a8;
  v56 = a15;
  v57 = v29;
  v58 = v30;
  v59 = v32;
  v60 = v34;
  v61 = v33;
  v62 = v31;
  v63 = a1;
  v64 = a22;
  v65 = a25;
  v66 = a23;
  v67 = a26;
  dispatch_apply(v27, 0, block);
}

void sub_1AF1E2860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v109 = *MEMORY[0x1E69E9840];
  *v5.i64 = sub_1AF1AF084(*(a1 + 96), a2, a3, a4);
  v57 = v5;
  v53 = *(a1 + 48);
  v55 = *(a1 + 32);
  v51 = *(a1 + 64);
  v59 = *(a1 + 80);
  v79 = 0;
  v80 = &v79;
  v81 = 0x2020000000;
  v82 = 0;
  v104 = 0;
  v105 = &v104;
  v106 = 0x3020000000;
  v108 = 0;
  v107 = 0;
  v101 = 0;
  v102[0] = &v101;
  v103 = 0;
  v102[1] = 0x3020000000;
  v102[3] = 0;
  v98 = 0;
  v99[0] = &v98;
  v100 = 0;
  v99[1] = 0x3020000000;
  v99[3] = 0;
  v77[0] = 0;
  v77[1] = v77;
  v77[2] = 0x2020000000;
  v78 = 2139095039;
  v93 = 0;
  v94 = &v93;
  v97 = 0;
  v95 = 0x3020000000;
  v96 = 0;
  v88 = 0;
  v89 = &v88;
  v92 = 0;
  v90 = 0x3020000000;
  v91 = 0;
  v83 = 0;
  v84 = &v83;
  v85 = 0x3020000000;
  v87 = 0;
  v86 = 0;
  v8 = sub_1AF1A3CCC(*(a1 + 104));
  v60 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v59, v51, v57, 2), v53, *v57.f32, 1), v55, v57.f32[0]);
  if (v8 >= 1)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*(v80 + 24) == 1)
      {
        break;
      }

      v10 = sub_1AF1A3D1C(*(a1 + 104), i, 0);
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      sub_1AF1A767C(v10, *(a1 + 112), &v73);
      v72[0] = v73;
      v72[1] = v74;
      v72[2] = v75;
      v72[3] = v76;
      v61[0] = MEMORY[0x1E69E9820];
      v61[1] = 3221225472;
      v61[2] = sub_1AF1E2EEC;
      v61[3] = &unk_1E7A7C188;
      v71 = *(a1 + 120);
      v62 = v60;
      v63 = &v79;
      v64 = &v101;
      v65 = &v98;
      v66 = &v104;
      v67 = v77;
      v68 = &v93;
      v69 = &v88;
      v70 = &v83;
      sub_1AF1A80E4(v72, v61, v60);
    }
  }

  v11 = v80;
  if (!*(v80 + 24))
  {
    *(v102[0] + 32) = *(v89 + 2);
    *(v99[0] + 32) = *(v94 + 2);
    *(v105 + 2) = *(v84 + 2);
    *(v11 + 24) = 1;
  }

  if (*(a1 + 136))
  {
    v12 = v102;
  }

  else
  {
    v12 = v99;
  }

  v58 = *(*v12 + 32);
  v13.n128_f64[0] = sub_1AF1AF084(*(a1 + 120), *(v105 + 8), v6, v7);
  v56 = v13;
  v16.n128_f64[0] = sub_1AF1AF084(*(a1 + 120), *(v105 + 9), v14, v15);
  v54 = v16;
  v19.n128_f64[0] = sub_1AF1AF084(*(a1 + 120), *(v105 + 10), v17, v18);
  v52 = v19;
  v22.n128_f64[0] = sub_1AF1AF084(*(a1 + 128), *(v105 + 8), v20, v21);
  v50 = v22;
  v25.n128_f64[0] = sub_1AF1AF084(*(a1 + 128), *(v105 + 9), v23, v24);
  v49 = v25;
  *v28.i64 = sub_1AF1AF084(*(a1 + 128), *(v105 + 10), v26, v27);
  v29 = (1.0 - *&v58) - *(&v58 + 1);
  v47 = v28;
  v30 = v60;
  v31 = vsubq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_lane_f32(v54, *&v58, 1), v56, *&v58), v52, v29), v60);
  v32 = vsubq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_lane_f32(v49, *&v58, 1), v50, *&v58), v28, v29), v60);
  v33 = vmulq_f32(v31, v31);
  v34 = sqrtf(v33.f32[2] + vaddv_f32(*v33.f32));
  v35 = vmulq_f32(v32, v32);
  v36 = sqrtf(v35.f32[2] + vaddv_f32(*v35.f32));
  v37 = vmulq_f32(v31, v32);
  if ((v37.f32[2] + vaddv_f32(*v37.f32)) >= 0.0)
  {
    if (v34 >= v36)
    {
      v38 = v36 / (v36 + sub_1AF1E329C(v60, v56, v54, v52, v32));
    }

    else
    {
      v39 = sub_1AF1E329C(v60, v50, v49, v47, v31);
      v38 = v39 / (v34 + v39);
    }

    v30 = v60;
  }

  else
  {
    v38 = v36 / (v34 + v36);
  }

  v40 = *(a1 + 152);
  *(*(a1 + 144) + 4 * a2) = v38;
  if (v40)
  {
    v41 = (v40 + 4 * a2);
    *v41 = (*&v58 * 65535.0);
    v41[1] = (*(&v58 + 1) * 65535.0);
  }

  else
  {
    *(*(a1 + 160) + 8 * a2) = v58;
  }

  v42 = *(a1 + 168);
  if (v42)
  {
    *(v42 + 3 * a2) = *(v105 + 2);
    *(*(a1 + 168) + 3 * a2 + 1) = *(v105 + 36);
    *(*(a1 + 168) + 3 * a2 + 2) = *(v105 + 40);
  }

  else
  {
    v43 = *(a1 + 176);
    if (v43)
    {
      v44 = (v43 + 6 * a2);
      *v44 = *(v105 + 2);
      v44[1] = *(v105 + 18);
      v44[2] = *(v105 + 20);
    }

    else
    {
      v45 = *(a1 + 184);
      if (v45)
      {
        v46 = (v45 + 12 * a2);
        *v46 = *(v105 + 8);
        v46[1] = *(v105 + 9);
        v46[2] = *(v105 + 10);
      }
    }
  }

  if (*(a1 + 192) == 1)
  {
    sub_1AF1E1854(a2, **(a1 + 200), **(a1 + 208), *(a1 + 32), v30, v56, v54, v52);
    sub_1AF1E1854(a2, **(a1 + 216), **(a1 + 224), *(a1 + 32), v60, v50, v49, v47);
  }

  _Block_object_dispose(&v83, 8);
  _Block_object_dispose(&v88, 8);
  _Block_object_dispose(&v93, 8);
  _Block_object_dispose(v77, 8);
  _Block_object_dispose(&v98, 8);
  _Block_object_dispose(&v101, 8);
  _Block_object_dispose(&v104, 8);
  _Block_object_dispose(&v79, 8);
}

void sub_1AF1E2E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a69, 8);
  _Block_object_dispose(&STACK[0x210], 8);
  _Block_object_dispose(&STACK[0x240], 8);
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose(&STACK[0x270], 8);
  _Block_object_dispose((v69 - 224), 8);
  _Block_object_dispose((v69 - 176), 8);
  _Block_object_dispose(&a65, 8);
  _Unwind_Resume(a1);
}

BOOL sub_1AF1E2EEC(float32x4_t *a1, uint64_t a2, unsigned int *a3, uint64_t a4, _BYTE *a5)
{
  v6 = *a3;
  v7 = a3[1];
  v8 = a3[2];
  v9 = a3[3];
  *v10.i64 = sub_1AF1AF084(a1[7].i64[0], v6, a3, a4);
  v72 = v10;
  *v13.i64 = sub_1AF1AF084(a1[7].i64[0], v7, v11, v12);
  v71 = v13;
  *v16.i64 = sub_1AF1AF084(a1[7].i64[0], v8, v14, v15);
  v70 = v16;
  *v19.i64 = sub_1AF1AF084(a1[7].i64[0], v9, v17, v18);
  v63 = v19;
  *v22.i64 = sub_1AF1AF084(a1[7].i64[1], v6, v20, v21);
  v80 = v22;
  *v25.i64 = sub_1AF1AF084(a1[7].i64[1], v7, v23, v24);
  v78 = v25;
  *v28.i64 = sub_1AF1AF084(a1[7].i64[1], v8, v26, v27);
  v76 = v28;
  *v31.i64 = sub_1AF1AF084(a1[7].i64[1], v9, v29, v30);
  v32 = 0;
  v69 = vsubq_f32(v80, v72);
  v33 = vsubq_f32(v78, v71);
  v68 = v33;
  v65 = v7;
  v66 = v6;
  v33.i32[0] = v6;
  v34 = v33;
  v34.i32[1] = v7;
  v67 = vsubq_f32(v76, v70);
  v35 = v34;
  v35.i32[2] = v8;
  v34.i32[2] = v9;
  v59 = v34;
  v60 = v35;
  v62 = vsubq_f32(v31, v63);
  v64 = v8;
  v33.i32[1] = v8;
  v61 = v9;
  v33.i32[2] = v9;
  v58 = v33;
  while (1)
  {
    v36 = v32 * 0.025;
    v37 = a1[2];
    v74 = v36;
    v38 = (*(a1[3].i64[1] + 8) + 32);
    v39 = (*(a1[4].i64[0] + 8) + 32);
    v40 = (*(a1[4].i64[1] + 8) + 32);
    v41 = *(a1[5].i64[0] + 8);
    v42 = *(a1[5].i64[1] + 8);
    v43 = *(a1[6].i64[0] + 8);
    v44 = *(a1[6].i64[1] + 8);
    v84[0] = 0.0;
    v83.i32[2] = 0;
    v83.i64[0] = 0;
    v82.i32[2] = 0;
    v82.i64[0] = 0;
    v77 = vmlaq_n_f32(v71, v68, v36);
    v79 = vmlaq_n_f32(v72, v69, v36);
    v73 = vmlaq_n_f32(v70, v67, v36);
    v81 = v37;
    if (sub_1AF1E38C4(v84, &v82, &v83, v79, v77, v73, v37))
    {
      v45 = 1;
      result = v66;
      v48 = v64;
      v47 = v65;
      goto LABEL_18;
    }

    v49 = v42 + 2;
    v50 = v43 + 2;
    v51 = v44 + 2;
    if (v84[0] < *(v41 + 24))
    {
      *(v41 + 24) = v84[0];
      v52 = v83;
      *v50 = v82;
      *v49 = v52;
      *v51 = v60;
    }

    v75 = vmlaq_n_f32(v63, v62, v74);
    if (sub_1AF1E38C4(v84, &v82, &v83, v79, v77, v75, v81))
    {
      v45 = 1;
      result = v66;
      v47 = v65;
      goto LABEL_17;
    }

    if (v84[0] < *(v41 + 24))
    {
      *(v41 + 24) = v84[0];
      v53 = v83;
      *v50 = v82;
      *v49 = v53;
      *v51 = v59;
    }

    if (sub_1AF1E38C4(v84, &v82, &v83, v79, v73, v75, v81))
    {
      v45 = 1;
      v54 = v66;
LABEL_16:
      result = v54;
      v47 = v64;
LABEL_17:
      v48 = v61;
LABEL_18:
      v56 = v83;
      *v38 = v82;
      *v39 = v56;
      v56.i64[0] = __PAIR64__(v47, result);
      v56.i32[2] = v48;
      *v40 = v56;
      goto LABEL_19;
    }

    if (v84[0] < *(v41 + 24))
    {
      *(v41 + 24) = v84[0];
      v55 = v83;
      *v50 = v82;
      *v49 = v55;
      *v51 = v58;
    }

    result = sub_1AF1E38C4(v84, &v82, &v83, v77, v73, v75, v81);
    if (result)
    {
      v45 = 1;
      v54 = v65;
      goto LABEL_16;
    }

    v45 = 0;
    if (v84[0] < *(v41 + 24))
    {
      v38 = v50;
      *(v41 + 24) = v84[0];
      v39 = v49;
      result = v65;
      v47 = v64;
      v48 = v61;
      v40 = v44 + 2;
      goto LABEL_18;
    }

LABEL_19:
    *(*(a1[3].i64[0] + 8) + 24) = v45;
    if (*(*(a1[3].i64[0] + 8) + 24) == 1)
    {
      break;
    }

    if (++v32 == 41)
    {
      return result;
    }
  }

  *a5 = 1;
  return result;
}

float sub_1AF1E329C(float32x4_t a1, __n128 a2, __n128 a3, __n128 a4, float32x4_t a5)
{
  v16[0] = a2;
  v16[1] = a3;
  v16[2] = a4;
  sub_1AF1DA13C(v15, v16);
  v5 = vmulq_f32(a5, a5);
  *&v6 = v5.f32[2] + vaddv_f32(*v5.f32);
  *v5.f32 = vrsqrte_f32(v6);
  *v5.f32 = vmul_f32(*v5.f32, vrsqrts_f32(v6, vmul_f32(*v5.f32, *v5.f32)));
  v14[0] = a1;
  v14[1] = vmulq_n_f32(a5, vmul_f32(*v5.f32, vrsqrts_f32(v6, vmul_f32(*v5.f32, *v5.f32))).f32[0]);
  v13.i32[2] = 0;
  v13.i64[0] = 0;
  v7 = sub_1AF286F84(v14, v15, &v13);
  result = 0.0;
  if (v7)
  {
    v9 = vsubq_f32(v13, a1);
    v10 = vmulq_f32(v9, v9);
    return sqrtf(v10.f32[2] + vaddv_f32(*v10.f32));
  }

  return result;
}

uint64_t sub_1AF1E3350(void *a1, uint64_t a2, __int32 *a3, uint64_t a4, _BYTE *a5)
{
  v7 = *a3;
  v9 = a3[2];
  v8 = a3[3];
  v11 = a3[4];
  v10 = a3[5];
  v13 = a3[6];
  v12 = a3[7];
  v14 = sub_1AF1AF104(a1[9], a3[1], a3, a4);
  v17 = sub_1AF1AF104(a1[9], v8, v15, v16);
  v20 = sub_1AF1AF104(a1[9], v10, v18, v19);
  v23 = sub_1AF1AF104(a1[9], v12, v21, v22);
  v45.i32[2] = 0;
  v45.i64[0] = 0;
  v44.i32[2] = 0;
  v44.i64[0] = 0;
  v24 = a1[10];
  result = sub_1AF1E36E4(&v44, &v45, *&v14, *&v17, *&v20, v24);
  if (result)
  {
    v26 = v45;
    *a1[11] = v44;
    *a1[12] = v26;
    v26.i64[0] = __PAIR64__(v9, v7);
    v26.i32[2] = v11;
LABEL_17:
    *a1[13] = v26;
    *a5 = 1;
    *(*(a1[4] + 8) + 24) = 1;
    return result;
  }

  v27 = v45;
  v28 = vsub_f32(vmla_laneq_f32(vmla_n_f32(vmul_lane_f32(*&v17, *v45.f32, 1), *&v14, v45.f32[0]), *&v20, v45, 2), v24);
  v29 = vaddv_f32(vmul_f32(v28, v28));
  v30 = *(a1[5] + 8);
  if (v29 < *(v30 + 24))
  {
    *(v30 + 24) = v29;
    *(*(a1[6] + 8) + 32) = v44;
    *(*(a1[7] + 8) + 32) = v27;
    v27.i64[0] = __PAIR64__(v9, v7);
    v27.i32[2] = v11;
    *(*(a1[8] + 8) + 32) = v27;
    v24 = a1[10];
  }

  result = sub_1AF1E36E4(&v44, &v45, *&v14, *&v17, *&v23, v24);
  if (result)
  {
    v26 = v45;
    *a1[11] = v44;
    *a1[12] = v26;
    v26.i64[0] = __PAIR64__(v9, v7);
LABEL_16:
    v26.i32[2] = v13;
    goto LABEL_17;
  }

  v31 = v45;
  v32 = vsub_f32(vmla_laneq_f32(vmla_n_f32(vmul_lane_f32(*&v17, *v45.f32, 1), *&v14, v45.f32[0]), *&v23, v45, 2), v24);
  v33 = vaddv_f32(vmul_f32(v32, v32));
  v34 = *(a1[5] + 8);
  if (v33 < *(v34 + 24))
  {
    *(v34 + 24) = v33;
    *(*(a1[6] + 8) + 32) = v44;
    *(*(a1[7] + 8) + 32) = v31;
    v31.i64[0] = __PAIR64__(v9, v7);
    v31.i32[2] = v13;
    *(*(a1[8] + 8) + 32) = v31;
    v24 = a1[10];
  }

  result = sub_1AF1E36E4(&v44, &v45, *&v14, *&v20, *&v23, v24);
  if (result)
  {
    v26 = v45;
    *a1[11] = v44;
    *a1[12] = v26;
    v26.i32[0] = v7;
LABEL_15:
    v26.i32[1] = v11;
    goto LABEL_16;
  }

  v35 = v45;
  v36 = vsub_f32(vmla_laneq_f32(vmla_n_f32(vmul_lane_f32(*&v20, *v45.f32, 1), *&v14, v45.f32[0]), *&v23, v45, 2), v24);
  v37 = vaddv_f32(vmul_f32(v36, v36));
  v38 = *(a1[5] + 8);
  if (v37 < *(v38 + 24))
  {
    *(v38 + 24) = v37;
    *(*(a1[6] + 8) + 32) = v44;
    *(*(a1[7] + 8) + 32) = v35;
    v35.i64[0] = __PAIR64__(v11, v7);
    v35.i32[2] = v13;
    *(*(a1[8] + 8) + 32) = v35;
    v24 = a1[10];
  }

  result = sub_1AF1E36E4(&v44, &v45, *&v17, *&v20, *&v23, v24);
  if (result)
  {
    v26 = v45;
    *a1[11] = v44;
    *a1[12] = v26;
    v26.i32[0] = v9;
    goto LABEL_15;
  }

  v39 = v45;
  v40 = vsub_f32(vmla_laneq_f32(vmla_n_f32(vmul_lane_f32(*&v20, *v45.f32, 1), *&v17, v45.f32[0]), *&v23, v45, 2), v24);
  v41 = vaddv_f32(vmul_f32(v40, v40));
  v42 = *(a1[5] + 8);
  if (v41 < *(v42 + 24))
  {
    *(v42 + 24) = v41;
    HIDWORD(v43) = v44.i32[3];
    *(*(a1[6] + 8) + 32) = v44;
    *&v43 = __PAIR64__(v11, v9);
    *(*(a1[7] + 8) + 32) = v39;
    DWORD2(v43) = v13;
    *(*(a1[8] + 8) + 32) = v43;
  }

  return result;
}

uint64_t sub_1AF1E36E4(float32x4_t *a1, float32x4_t *a2, float32x2_t a3, float32x2_t a4, float32x2_t a5, float32x2_t a6)
{
  v8 = vsub_f32(a4, a3);
  v9 = vsub_f32(a5, a3);
  v10 = vsub_f32(a6, a3);
  v11 = vmul_f32(v8, v8);
  v12 = vadd_f32(v11, vdup_lane_s32(v11, 1));
  v13 = vmul_f32(v8, v9);
  *v6.i8 = vmul_f32(v9, v9);
  v14 = vmul_f32(v8, v10);
  v15 = vmul_f32(v9, v10);
  v16 = vadd_f32(vzip1_s32(v14, v13), vzip2_s32(v14, v13));
  v17 = vadd_f32(vzip1_s32(v15, *v6.i8), vzip2_s32(v15, *v6.i8));
  v18 = vmla_n_f32(vmul_n_f32(v16, -v16.f32[1]), v17, v12.f32[0]);
  v19 = vdup_lane_s32(v18, 0);
  v19.f32[0] = (-v16.f32[1] * v17.f32[0]) + (v17.f32[1] * v16.f32[0]);
  *v6.i8 = vdiv_f32(v19, vdup_lane_s32(v18, 1));
  *v7.i32 = (1.0 - *v6.i32) - *&v6.i32[1];
  v20 = vextq_s8(vextq_s8(v7, v7, 4uLL), v6, 0xCuLL);
  v21 = v20;
  v21.i32[3] = v20.i32[2];
  __asm { FMOV            V21.4S, #1.0 }

  v27 = vceqq_f32(vminq_f32(vmaxq_f32(v21, 0), _Q21), v20);
  v27.i32[3] = v27.i32[2];
  v28 = vminvq_u32(v27);
  if ((v28 & 0x80000000) != 0)
  {
    *a1 = v21;
    goto LABEL_29;
  }

  if (*v7.i32 < 0.0)
  {
    if (*v6.i32 < 0.0)
    {
      *a1 = v21;
      v21 = xmmword_1AFE20180;
LABEL_29:
      *a2 = v21;
      return v28 >> 31;
    }

    if (*&v6.i32[1] < 0.0)
    {
      *a1 = v21;
      v21 = xmmword_1AFE20160;
      goto LABEL_29;
    }

    v31 = vsub_f32(a5, a4);
    v32 = vmul_f32(v31, vsub_f32(a6, a4));
    v33 = vmul_f32(v31, v31);
    v34 = vadd_f32(vzip1_s32(v32, v33), vzip2_s32(v32, v33));
    v30 = vdiv_f32(v34, vdup_lane_s32(v34, 1)).f32[0];
    if (v30 >= 1.0)
    {
      v30 = 1.0;
    }

    if (v30 <= 0.0)
    {
      v30 = 0.0;
    }

    *a1 = v21;
    v21.i32[0] = 0;
    v21.i32[3] = 0;
    v21.f32[1] = 1.0 - v30;
LABEL_28:
    v21.f32[2] = v30;
    goto LABEL_29;
  }

  if (*v6.i32 < 0.0 && *&v6.i32[1] < 0.0)
  {
    *a1 = v21;
    v21 = xmmword_1AFE20150;
    goto LABEL_29;
  }

  if (*&v6.i32[1] < 0.0)
  {
    v29 = vdiv_f32(v16, v12).f32[0];
    if (v29 >= 1.0)
    {
      v29 = 1.0;
    }

    if (v29 <= 0.0)
    {
      v29 = 0.0;
    }

    *a1 = v21;
    v21.i64[1] = 0;
    v21.f32[0] = 1.0 - v29;
    v21.f32[1] = v29;
    goto LABEL_29;
  }

  if (*v6.i32 < 0.0)
  {
    v30 = v17.f32[0] / v17.f32[1];
    if ((v17.f32[0] / v17.f32[1]) >= 1.0)
    {
      v30 = 1.0;
    }

    if (v30 <= 0.0)
    {
      v30 = 0.0;
    }

    *a1 = v21;
    v21.i32[1] = 0;
    v21.i32[3] = 0;
    v21.f32[0] = 1.0 - v30;
    goto LABEL_28;
  }

  return v28 >> 31;
}

BOOL sub_1AF1E38C4(float *a1, float32x4_t *a2, float32x4_t *a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, float32x4_t a7)
{
  v10 = vsubq_f32(a5, a4);
  v11 = vsubq_f32(a6, a4);
  v13 = vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL);
  v14 = vmlaq_f32(vmulq_f32(v13, vnegq_f32(v11)), v10, vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL));
  v15 = vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL);
  v16 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v15, v15), v15, 0xCuLL), vnegq_f32(v10)), v15, v13);
  v17 = vextq_s8(vuzp1q_s32(v16, v16), v16, 0xCuLL);
  v18 = vmulq_f32(v10, v10);
  v19 = vaddv_f32(*v18.f32);
  v20 = vrsqrte_f32(COERCE_UNSIGNED_INT(v18.f32[2] + v19));
  v21 = vmul_f32(v20, vrsqrts_f32(COERCE_UNSIGNED_INT(v18.f32[2] + v19), vmul_f32(v20, v20)));
  v22 = vmulq_n_f32(v10, vmul_f32(v21, vrsqrts_f32(COERCE_UNSIGNED_INT(v18.f32[2] + v19), vmul_f32(v21, v21))).f32[0]);
  v23 = vmulq_f32(v16, v16);
  *&v24 = v23.f32[1] + (v23.f32[2] + v23.f32[0]);
  *v23.f32 = vrsqrte_f32(v24);
  *v23.f32 = vmul_f32(*v23.f32, vrsqrts_f32(v24, vmul_f32(*v23.f32, *v23.f32)));
  v25 = vmulq_n_f32(v17, vmul_f32(*v23.f32, vrsqrts_f32(v24, vmul_f32(*v23.f32, *v23.f32))).f32[0]);
  v26 = vmulq_f32(a7, v22);
  v27 = vmulq_f32(a7, v25);
  v28 = vmlaq_n_f32(vmulq_n_f32(v25, v27.f32[2] + vaddv_f32(*v27.f32)), v22, v26.f32[2] + vaddv_f32(*v26.f32));
  v29 = vmulq_f32(v10, v22);
  v30 = vmulq_f32(v10, v25);
  *v30.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v29, v29, 8uLL), *&vextq_s8(v30, v30, 8uLL)), vadd_f32(vzip1_s32(*v29.i8, *v30.i8), vzip2_s32(*v29.i8, *v30.i8)));
  v31 = vmulq_f32(v11, v22);
  v32 = vmulq_f32(v11, v25);
  *v31.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v31, v31, 8uLL), *&vextq_s8(v32, v32, 8uLL)), vadd_f32(vzip1_s32(*v31.i8, *v32.i8), vzip2_s32(*v31.i8, *v32.i8)));
  v33 = vsubq_f32(v28, a4);
  v34 = vmulq_f32(v22, v33);
  v35 = vmulq_f32(v25, v33);
  v46.i32[2] = 0;
  v46.i64[0] = 0;
  v45.i32[2] = 0;
  v45.i64[0] = 0;
  sub_1AF1E36E4(&v46, &v45, 0, *v30.i8, *v31.i8, vadd_f32(vzip1_s32(*&vextq_s8(v34, v34, 8uLL), *&vextq_s8(v35, v35, 8uLL)), vadd_f32(vzip1_s32(*v34.i8, *v35.i8), vzip2_s32(*v34.i8, *v35.i8))));
  v36 = v45;
  v37 = vsubq_f32(a7, vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(a5, *v45.f32, 1), a4, v45.f32[0]), a6, v45, 2));
  v38 = vmulq_f32(v37, v37);
  v39 = vaddv_f32(*v38.f32);
  *a1 = v38.f32[2] + v39;
  *a2 = v46;
  *a3 = v36;
  return (v38.f32[2] + v39) == 0.0;
}

void sub_1AF1E4F74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AF1E5014(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 != 7 && (a3 == 3 || a4 <= 0) && (a3 != 3 || a4 <= 7))
  {
    if (sub_1AF1B72DC(a2))
    {
      v7 = sub_1AF0D5194();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDE2A60();
      }
    }

    else if (a3 != 4 && a3 != 1)
    {
      if (a3)
      {
        if ((*(a1 + 64) & 1) == 0)
        {
          v17 = sub_1AFDE7DF0(*(*(a1 + 32) + 8));
          if (v17)
          {
            v20 = v17;
            if (objc_msgSend_indexOfObject_(*(a1 + 40), v18, v17, v19) == 0x7FFFFFFFFFFFFFFFLL)
            {
              objc_msgSend_count(*(a1 + 40), v21, v22, v23);
              objc_msgSend_addObject_(*(a1 + 40), v24, v20, v25);
            }

            v26 = *(a1 + 48);

            MEMORY[0x1EEE66B58](VFXMTLResourceManager, sel__fillVertexDescriptor_withMeshSource_semantic_inputSet_bufferIndex_, v26, a2);
          }
        }
      }

      else
      {
        v8 = sub_1AF1F1A7C(30);
        v9 = sub_1AF1AE6EC(a2);
        *(*(*(a1 + 56) + 8) + 24) = v9;
        sub_1AFDE851C(*(*(a1 + 32) + 8), v9 * v8, 32);
        *(*(a1 + 32) + 120) = v10;
        v11 = *(a1 + 32);
        v12 = *(v11 + 49);
        if (v12 == *(v11 + 48))
        {
          v13 = *(v11 + 120);
        }

        else
        {
          v27 = sub_1AF1A4604(*(v11 + 40), 0, 0, v12);
          v28 = sub_1AF1AE6EC(v27);
          sub_1AFDE851C(*(*(a1 + 32) + 8), v28 * v8, 32);
        }

        *(*(a1 + 32) + 88) = v13;
        v29 = objc_msgSend_count(*(a1 + 40), v14, v15, v16);
        objc_msgSend_addObject_(*(a1 + 40), v30, *(*(a1 + 32) + 120), v31);
        v35 = objc_msgSend_attributes(*(a1 + 48), v32, v33, v34);
        v38 = objc_msgSend_objectAtIndexedSubscript_(v35, v36, 0, v37);
        objc_msgSend_setFormat_(v38, v39, 30, v40);
        objc_msgSend_setOffset_(v38, v41, 0, v42);
        objc_msgSend_setBufferIndex_(v38, v43, v29 + 18, v44);
        v48 = objc_msgSend_layouts(*(a1 + 48), v45, v46, v47);
        v52 = objc_msgSend_bufferIndex(v38, v49, v50, v51);
        v55 = objc_msgSend_objectAtIndexedSubscript_(v48, v53, v52, v54);
        objc_msgSend_setStride_(v55, v56, v8, v57);
        objc_msgSend_setStepFunction_(v55, v58, 1, v59);
        v63 = objc_msgSend_offset(v38, v60, v61, v62);
        v67 = objc_msgSend_stride(v55, v64, v65, v66);
        v68 = *(a1 + 32);
        *(v68 + 240) = 1;
        *(v68 + 248) = 30;
        *(v68 + 256) = v63;
        *(v68 + 264) = v67;
      }
    }
  }
}

CFTypeRef sub_1AF1E69BC(uint64_t a1, int a2)
{
  if (*(a1 + 48) == 1)
  {
    v3 = sub_1AF170784(*(a1 + 40));

    return CFAutorelease(v3);
  }

  else
  {
    v5 = *(*(a1 + 32) + 40);

    return sub_1AF1A4604(v5, 0, 0, a2);
  }
}

const void *sub_1AF1E6A18(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v1 = sub_1AF0D5194();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDE2CC0();
    }

    return 0;
  }

  else
  {
    v2 = sub_1AF1A4604(*(*(a1 + 32) + 40), 1, 0, *(*(a1 + 32) + 49));
    if (!v2)
    {
      v2 = sub_1AF27D340(*(*(a1 + 32) + 40), *(*(a1 + 32) + 49), 0);
      if (!v2)
      {
        v4 = sub_1AF0D5194();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDE2928(v4, v5, v6, v7, v8, v9, v10, v11);
        }
      }

      CFAutorelease(v2);
    }
  }

  return v2;
}

const void *sub_1AF1E6AD4(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v1 = sub_1AF0D5194();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDE2D28();
    }

    return 0;
  }

  result = sub_1AF1A4604(*(*(a1 + 32) + 40), 4, 0, *(*(a1 + 32) + 49));
  if (!result)
  {
    if ((sub_1AF27DDF0(*(*(a1 + 32) + 40), *(*(a1 + 32) + 49)) & 1) == 0 && (byte_1EB65865A & 1) == 0)
    {
      byte_1EB65865A = 1;
      v4 = sub_1AF0D5194();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDE2CF4();
      }
    }

    result = sub_1AF1A4604(*(*(a1 + 32) + 40), 4, 0, *(*(a1 + 32) + 49));
    if (!result)
    {
      v5 = sub_1AF0D5194();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDE29A0(v5, v6, v7, v8, v9, v10, v11, v12);
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_1AF1E6DD8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = sub_1AF16B74C(a2);
  if (result)
  {
    v10 = objc_msgSend_renderResourceForDeformerStack_node_dataKind_(*(*(a1 + 32) + 8), v9, a2, a3, a4);
    v11 = v10;
    if (v10)
    {
      if (*(v10 + 51) == 1)
      {
        v12 = sub_1AF0D5194();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDE2D5C(v12, v13, v14, v15, v16, v17, v18, v19);
        }
      }

      if (*(v11 + 52) == 1)
      {
        v20 = sub_1AF0D5194();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDE2DD4(v20, v21, v22, v23, v24, v25, v26, v27);
        }
      }
    }

    return sub_1AFDE22F0(v11, *(a1 + 40), *(a1 + 48), &v28, v30, v29);
  }

  return result;
}

void sub_1AF1E701C(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  v4 = a4;
  v7 = objc_msgSend_nodeRef(a3, a2, a3, a4);
  v8 = sub_1AF1B7558(v7);
  if (!v8)
  {
    v37 = sub_1AF1B75A0(v7);
    v38 = sub_1AF1B2C1C(v37);
    v40 = sub_1AF20E1F8(*(*(a1 + 32) + 8), v38, *(*(a1 + 32) + 49));
    if (a2 != 1)
    {
      if (a2)
      {
        return;
      }

      if ((v4 & 8) != 0 && (v41 = objc_msgSend_dependencyBufferForInput_dependencyMesh_(*(a1 + 32), v39, 3, v40), (*(*(a1 + 40) + 48) = v41) == 0) && (v42 = sub_1AF0D5194(), os_log_type_enabled(v42, OS_LOG_TYPE_FAULT)))
      {
        sub_1AFDE301C(v42, v39, v43, v44, v45, v46, v47, v48);
        if ((v4 & 0x10) == 0)
        {
          goto LABEL_24;
        }
      }

      else if ((v4 & 0x10) == 0)
      {
        goto LABEL_24;
      }

      v49 = objc_msgSend_dependencyBufferForInput_dependencyMesh_(*(a1 + 32), v39, 4, v40);
      *(*(a1 + 40) + 56) = v49;
      if (!v49)
      {
        v50 = sub_1AF0D5194();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDE3094(v50, v39, v51, v52, v53, v54, v55, v56);
        }
      }

LABEL_24:
      if ((v4 & 0x20) != 0)
      {
        v57 = objc_msgSend_dependencyBufferForInput_dependencyMesh_(*(a1 + 32), v39, 5, v40);
        *(*(a1 + 40) + 64) = v57;
        if (!v57)
        {
          v29 = sub_1AF0D5194();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_14;
          }
        }
      }

      return;
    }

    if ((v4 & 0x40) != 0 && (v83 = objc_msgSend_dependencyBufferForInput_dependencyMesh_(*(a1 + 32), v39, 6, v40), (*(*(a1 + 40) + 72) = v83) == 0) && (v84 = sub_1AF0D5194(), os_log_type_enabled(v84, OS_LOG_TYPE_FAULT)))
    {
      sub_1AFDE2EB4(v84, v39, v85, v86, v87, v88, v89, v90);
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_46;
      }
    }

    else if ((v4 & 0x80) == 0)
    {
      goto LABEL_46;
    }

    v91 = objc_msgSend_dependencyBufferForInput_dependencyMesh_(*(a1 + 32), v39, 7, v40);
    *(*(a1 + 40) + 80) = v91;
    if (!v91)
    {
      v92 = sub_1AF0D5194();
      if (os_log_type_enabled(v92, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDE2F2C(v92, v39, v93, v94, v95, v96, v97, v98);
      }
    }

LABEL_46:
    if ((v4 & 0x100) == 0)
    {
      return;
    }

    v99 = objc_msgSend_dependencyBufferForInput_dependencyMesh_(*(a1 + 32), v39, 8, v40);
    *(*(a1 + 40) + 88) = v99;
    if (v99)
    {
      return;
    }

    v75 = sub_1AF0D5194();
    if (!os_log_type_enabled(v75, OS_LOG_TYPE_FAULT))
    {
      return;
    }

LABEL_49:
    sub_1AFDE2FA4(v75, v76, v77, v78, v79, v80, v81, v82);
    return;
  }

  v11 = objc_msgSend_renderResourceForDeformerStack_node_dataKind_(*(*(a1 + 32) + 8), v9, v8, v7, *(*(a1 + 32) + 49));
  if (a2 == 1)
  {
    if ((v4 & 0x40) != 0 && (v58 = objc_msgSend_dependencyBufferForInput_dependencyStack_(*(a1 + 32), v10, 6, v11), (*(*(a1 + 40) + 72) = v58) == 0) && (v59 = sub_1AF0D5194(), os_log_type_enabled(v59, OS_LOG_TYPE_FAULT)))
    {
      sub_1AFDE2EB4(v59, v10, v60, v61, v62, v63, v64, v65);
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_35;
      }
    }

    else if ((v4 & 0x80) == 0)
    {
      goto LABEL_35;
    }

    v66 = objc_msgSend_dependencyBufferForInput_dependencyStack_(*(a1 + 32), v10, 7, v11);
    *(*(a1 + 40) + 80) = v66;
    if (!v66)
    {
      v67 = sub_1AF0D5194();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDE2F2C(v67, v10, v68, v69, v70, v71, v72, v73);
      }
    }

LABEL_35:
    if ((v4 & 0x100) == 0)
    {
      return;
    }

    v74 = objc_msgSend_dependencyBufferForInput_dependencyStack_(*(a1 + 32), v10, 8, v11);
    *(*(a1 + 40) + 88) = v74;
    if (v74)
    {
      return;
    }

    v75 = sub_1AF0D5194();
    if (!os_log_type_enabled(v75, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    goto LABEL_49;
  }

  if (a2)
  {
    return;
  }

  if ((v4 & 8) != 0 && (v12 = objc_msgSend_dependencyBufferForInput_dependencyStack_(*(a1 + 32), v10, 3, v11), (*(*(a1 + 40) + 48) = v12) == 0) && (v13 = sub_1AF0D5194(), os_log_type_enabled(v13, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDE301C(v13, v10, v14, v15, v16, v17, v18, v19);
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v4 & 0x10) == 0)
  {
    goto LABEL_11;
  }

  v20 = objc_msgSend_dependencyBufferForInput_dependencyStack_(*(a1 + 32), v10, 4, v11);
  *(*(a1 + 40) + 56) = v20;
  if (!v20)
  {
    v21 = sub_1AF0D5194();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE3094(v21, v10, v22, v23, v24, v25, v26, v27);
    }
  }

LABEL_11:
  if ((v4 & 0x20) != 0)
  {
    v28 = objc_msgSend_dependencyBufferForInput_dependencyStack_(*(a1 + 32), v10, 5, v11);
    *(*(a1 + 40) + 64) = v28;
    if (!v28)
    {
      v29 = sub_1AF0D5194();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
      {
LABEL_14:
        sub_1AFDE310C(v29, v30, v31, v32, v33, v34, v35, v36);
      }
    }
  }
}

uint64_t sub_1AF1E73C8(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v6 = *(a1 + 232);
    v7 = *(*(a1 + 224) + 24);
    v8 = *(a1 + 176);
    v15[8] = *(a1 + 160);
    v15[9] = v8;
    v9 = *(a1 + 208);
    v15[10] = *(a1 + 192);
    v15[11] = v9;
    v10 = *(a1 + 112);
    v15[4] = *(a1 + 96);
    v15[5] = v10;
    v11 = *(a1 + 144);
    v15[6] = *(a1 + 128);
    v15[7] = v11;
    v12 = *(a1 + 48);
    v15[0] = *(a1 + 32);
    v15[1] = v12;
    v13 = *(a1 + 80);
    v14 = *(a1 + 240);
    v15[2] = *(a1 + 64);
    v15[3] = v13;
    return objc_msgSend_updateDataForAuthoringEnvironment_node_transforms_context_(a2, v5, v14, v7, v15, v6);
  }

  return result;
}

uint64_t sub_1AF1E7450(uint64_t a1, uint64_t a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v5 = *(a1 + 48);
    v6 = *(*(a1 + 32) + 24);

    return MEMORY[0x1EEE66B58](a2, sel_drawAuthoringEnvironment_node_context_, v5, v6);
  }

  return result;
}

uint64_t sub_1AF1E7700(void *a1, const char *a2, uint64_t *a3, uint64_t a4)
{
  v7 = objc_msgSend_attributes(a1, a2, a3, a4);
  v10 = objc_msgSend_objectAtIndexedSubscript_(v7, v8, a2, v9);
  objc_msgSend_setFormat_(v10, v11, a3[1], v12);
  objc_msgSend_setOffset_(v10, v13, a3[2], v14);
  objc_msgSend_setBufferIndex_(v10, v15, (a2 + 10), v16);
  v20 = objc_msgSend_layouts(a1, v17, v18, v19);
  v24 = objc_msgSend_bufferIndex(v10, v21, v22, v23);
  v27 = objc_msgSend_objectAtIndexedSubscript_(v20, v25, v24, v26);
  objc_msgSend_setStepFunction_(v27, v28, 5, v29);
  v32 = a3[3];

  return objc_msgSend_setStride_(v27, v30, v32, v31);
}

void sub_1AF1E7B7C()
{
  v0[92] = v0[93];
  v0[94] = v0[95];
  v0[96] = v0[97];
}

void sub_1AF1E7BB8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, a5, 0xCu);
}

uint64_t sub_1AF1E7BDC(uint64_t a1)
{

  return MEMORY[0x1EEE66B58](a1, sel_updateWithComputeContext_buffers_, v1, v1 + 736);
}

uint64_t sub_1AF1E7C04(uint64_t a1, uint64_t a2)
{
  objc_opt_self();
  v3 = sub_1AF15B294(a2);
  if (!sub_1AF1B5264(v3))
  {
    return 1;
  }

  if (sub_1AF0D5C40(7))
  {
    return 1;
  }

  return 3;
}

void sub_1AF1E8B4C(uint64_t a1, int a2, uint64_t a3)
{
  v66 = *MEMORY[0x1E69E9840];
  if (sub_1AF170774(a3))
  {
    v6 = sub_1AF170784(a3);
    CFAutorelease(v6);
    v7 = 0;
    goto LABEL_20;
  }

  v8 = sub_1AF1A4604(a3, 0, 0, 0);
  v6 = v8;
  v9 = *(a1 + 92) == 1 && v8 == 0;
  if (!v9 || sub_1AF1A3CCC(a3))
  {
    if (*(*(a1 + 32) + 32) == 1)
    {
      v7 = sub_1AF1A4604(a3, 1, 0, 0);
      if (!v7)
      {
        v7 = sub_1AF27D874(a3, *(a1 + 40), 0);
        if (!v7)
        {
          v10 = sub_1AF0D5194();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDE3590(v10, v11, v12, v13, v14, v15, v16, v17);
          }
        }

        CFAutorelease(v7);
      }
    }

    else
    {
      v7 = 0;
    }

    if (*(a1 + 92) == 1 && *(*(a1 + 32) + 40) != 1)
    {
      v18 = sub_1AF1A3D1C(a3, 0, 0);
      v19 = sub_1AF1AE6EC(*(a1 + 48));
      v20 = sub_1AF1A4C6C(*(a1 + 40), 0, 0);
      v6 = sub_1AF1AEC88(v6, v18, v19, v20);
      CFAutorelease(v6);
      if (*(*(a1 + 32) + 32) == 1)
      {
        v21 = sub_1AF1AE6EC(*(a1 + 56));
        v22 = sub_1AF1A4C6C(*(a1 + 40), 1, 0);
        v7 = sub_1AF1AEC88(v7, v18, v21, v22);
        CFAutorelease(v7);
      }
    }

LABEL_20:
    if (*(*(a1 + 32) + 17) == 1 && (v23 = *(a1 + 64)) != 0)
    {
      v24 = sub_1AF1E911C(v6, *(a1 + 88), v23);
      if (*(*(a1 + 32) + 32) == 1)
      {
        v25 = sub_1AF1E911C(v7, *(a1 + 88), *(a1 + 64));
LABEL_26:
        v26 = v25;
        goto LABEL_28;
      }
    }

    else
    {
      v24 = CFRetain(v6);
      if (*(*(a1 + 32) + 32) == 1)
      {
        v25 = CFRetain(v7);
        goto LABEL_26;
      }
    }

    v26 = 0;
LABEL_28:
    if (*(a1 + 93) == 1)
    {
      v27 = sub_1AF1ADEA8(*(a1 + 48), v24);
      if (!v27)
      {
        return;
      }

      v28 = v27;
      CFRelease(v24);
      if (*(*(a1 + 32) + 32) == 1)
      {
        v29 = sub_1AF1ADEA8(*(a1 + 56), v26);
        if (!v29)
        {
          return;
        }

        v30 = v29;
        CFRelease(v26);
        v26 = v30;
      }
    }

    else
    {
      v28 = v24;
    }

    if (*(*(a1 + 32) + 40) != 1)
    {
      v40 = sub_1AF1AE6EC(v28);
      if (*(*(a1 + 32) + 64) != v40)
      {
        v41 = sub_1AF0D5194();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDE3608(v41, v42, v43, v44, v45, v46, v47, v48);
        }
      }

      v49 = v40;
      goto LABEL_56;
    }

    memset(buf, 0, 32);
    sub_1AF1AE1A8(v28, buf);
    v33 = 0uLL;
    v63 = 0u;
    v64 = 0u;
    if (v26)
    {
      sub_1AF1AE1A8(v26, &v63);
    }

    if (!*buf || v26 && !v63)
    {
      v34 = *(a1 + 40);
      if (!v34 || (v35 = sub_1AF16CBEC(v34)) == 0)
      {
        v35 = sub_1AF16CBEC(*(a1 + 72));
      }

      v36 = sub_1AF16CBEC(a3);
      v37 = sub_1AF0D5194();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *&buf[4] = "[VFXMTLMorphDeformer setupMorphTargetsWithComputeContext:]_block_invoke";
        *&buf[12] = 2112;
        *&buf[14] = v28;
        _os_log_impl(&dword_1AF0CE000, v37, OS_LOG_TYPE_INFO, "Info: [Deformers] %s | Position source: %@", buf, 0x16u);
      }

      if (v26)
      {
        v38 = sub_1AF0D5194();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          *&buf[4] = "[VFXMTLMorphDeformer setupMorphTargetsWithComputeContext:]_block_invoke";
          *&buf[12] = 2112;
          *&buf[14] = v26;
          _os_log_impl(&dword_1AF0CE000, v38, OS_LOG_TYPE_INFO, "Info: [Deformers] %s | Normal source: %@", buf, 0x16u);
        }
      }

      v39 = sub_1AF0D5194();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412802;
        *&buf[4] = v36;
        *&buf[12] = 1024;
        *&buf[14] = a2;
        *&buf[18] = 2112;
        *&buf[20] = v35;
      }

      goto LABEL_50;
    }

    v54 = *&buf[16];
    if (v26)
    {
      if (!*&buf[16])
      {
        goto LABEL_50;
      }

      v55 = 0;
      v56 = 0;
      do
      {
        *v57.i64 = sub_1AF279750(buf[20], (*buf + v56 * buf[22]), v33, v31.f32[0], v32.f32[0]);
        v62 = v57;
        *v33.i64 = sub_1AF279750(BYTE4(v64), (v63 + v56 * BYTE6(v64)), v57, v58, v59);
        v32.i64[0] = 0x3400000034000000;
        v32.i64[1] = 0x3400000034000000;
        v31.i32[0] = vminvq_u32(vcgeq_f32(v32, vabsq_f32(v62)));
        if ((v31.i32[0] & 0x80000000) == 0 || (v31.i64[0] = 0x3400000034000000, v31.i64[1] = 0x3400000034000000, v33 = vcgeq_f32(v31, vabsq_f32(v33)), v33.i32[0] = vminvq_u32(v33), (v33.i32[0] & 0x80000000) == 0))
        {
          ++v55;
        }

        ++v56;
      }

      while (v54 != v56);
    }

    else
    {
      if (!*&buf[16])
      {
        goto LABEL_50;
      }

      v60 = 0;
      v55 = 0;
      do
      {
        *v61.i64 = sub_1AF279750(buf[20], (*buf + v60 * buf[22]), v33, v31.f32[0], v32.f32[0]);
        v31.i64[0] = 0x3400000034000000;
        v31.i64[1] = 0x3400000034000000;
        v33 = vcgeq_f32(v31, vabsq_f32(v61));
        v33.i32[0] = vminvq_u32(v33);
        v55 += v33.i32[0] >= 0;
        ++v60;
      }

      while (v54 != v60);
    }

    if (v55)
    {
      v49 = v55;
LABEL_56:
      v50 = *(a1 + 80);
      v51 = *(a1 + 32);
      v52 = *(v51 + 68);
      *(v51 + 68) = v52 + 1;
      v53 = v50 + 40 * v52;
      *v53 = a2;
      *(v53 + 4) = 0;
      *(v53 + 8) = a3;
      *(v53 + 16) = v28;
      *(v53 + 24) = v26;
      *(v53 + 32) = v49;
      return;
    }

LABEL_50:
    CFRelease(v28);
    if (v26)
    {
      CFRelease(v26);
    }
  }
}

uint64_t sub_1AF1E911C(uint64_t a1, unsigned int a2, unsigned int *a3)
{
  v18 = 0u;
  v19 = 0u;
  sub_1AF1AE1A8(a1, &v18);
  v6 = BYTE6(v19);
  v7 = a2;
  v8 = BYTE6(v19) * a2;
  v9 = malloc_type_malloc(v8, 0x100004077774924uLL);
  v10 = v9;
  if (a2)
  {
    v11 = a2;
    v12 = v9;
    do
    {
      v13 = *a3++;
      memcpy(v12, (v18 + v13 * v6), v6);
      v12 += v6;
      --v11;
    }

    while (v11);
  }

  v14 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v10, v8, *MEMORY[0x1E695E488]);
  v15 = sub_1AF1AE3D8(a1);
  v16 = sub_1AF1ADC58(v15, v14, BYTE7(v19), BYTE8(v19), v7, v6, 0);
  CFRelease(v14);
  return v16;
}

void sub_1AF1E9228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!sub_1AF170774(a3))
  {

    sub_1AF1A49AC(a3);
  }
}

uint64_t sub_1AF1EA6A4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_currentBlitEncoder(*(a1 + 32), a2, a3, a4);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(v5 + 16);

  return MEMORY[0x1EEE66B58](v5, sel_makeReadOnlyBuffersWithBaseGeometry_baseMesh_blitEncoder_, v7, v6);
}

BOOL sub_1AF1EB234(uint64_t a1, void *a2, void *a3)
{
  objc_opt_self();
  v5 = sub_1AF1C7940(a3);
  if (v5 != sub_1AF1C7940(a2))
  {
    return 0;
  }

  v6 = sub_1AF15B294(a3);
  if (v6 != sub_1AF15B294(a2))
  {
    return 0;
  }

  v7 = sub_1AF1C78EC(a3);
  if (v7 != sub_1AF1C78EC(a2))
  {
    return 0;
  }

  v8 = sub_1AF1C78EC(a3);
  v9 = sub_1AF15B294(a3);
  v15 = 0;
  v16 = 0;
  v13 = 0;
  v14 = 0;
  v11 = 0;
  v12 = 0;
  sub_1AF1C78C4(a3, &v16, &v14, &v12);
  sub_1AF1C78C4(a2, &v15, &v13, &v11);
  if (v16 && v15)
  {
    if (memcmp(v16, v15, 4 * v9 + 4))
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (!v16 || !v15)
    {
      return result;
    }
  }

  if (!v14 || !v13)
  {
    result = 0;
    if (!v14 || !v13)
    {
      return result;
    }

    goto LABEL_16;
  }

  if (memcmp(v14, v13, 2 * v8))
  {
    return 0;
  }

LABEL_16:
  if (v12 && v11)
  {
    return !memcmp(v12, v11, 4 * v8);
  }

  result = 0;
  if (v12 && v11)
  {
    return 1;
  }

  return result;
}

void sub_1AF1EB3C8(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int a4)
{
  *&v14[5] = *MEMORY[0x1E69E9840];
  if (a4 <= 2)
  {
    v7 = sub_1AF0D5194();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE43F8(v7);
      if (!a4)
      {
        return;
      }
    }

    else if (!a4)
    {
      return;
    }
  }

  v8 = a4;
  do
  {
    v9 = *(a1 + 32);
    v10 = a3;
    if (v9)
    {
      v10 = (v9 + 4 * *a3);
    }

    v11 = *v10;
    if (v11 >= *(a1 + 48))
    {
      v12 = sub_1AF0D5194();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDE447C(v13, v14, v12);
      }
    }

    ++*(*(a1 + 40) + 4 * v11);
    ++a3;
    --v8;
  }

  while (v8);
}

void sub_1AF1EB4D4(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int a4)
{
  if (a4 <= 2)
  {
    v7 = sub_1AF0D5194();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE44CC(v7);
      if (!a4)
      {
        return;
      }
    }

    else if (!a4)
    {
      return;
    }
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = a4;
  v11 = a3;
  do
  {
    v12 = v11;
    if (v8)
    {
      v12 = (v8 + 4 * *v11);
    }

    v13 = *v12;
    v14 = *(v9 + 4 * v13);
    if (!v14)
    {
      break;
    }

    v15 = *(*(a1 + 48) + 4 * v13);
    v16 = v14 - 1;
    *(v9 + 4 * v13) = v16;
    v17 = v15 + v16;
    if ((v15 + v16) >= *(a1 + 72))
    {
      break;
    }

    v18 = *a3;
    v19 = 3 * v17;
    if (*(a1 + 76) == 1)
    {
      v20 = *(a1 + 56);
      *(v20 + 2 * v19) = v18;
      v21 = a3[2];
      *(v20 + 2 * (v19 + 1)) = a3[1];
      *(v20 + 2 * (v19 + 2)) = v21;
    }

    else
    {
      v22 = *(a1 + 64);
      *(v22 + 4 * v19) = v18;
      *(v22 + 4 * (v19 + 1)) = a3[1];
      *(v22 + 4 * (v19 + 2)) = a3[2];
    }

    ++v11;
    --v10;
  }

  while (v10);
}

uint64_t sub_1AF1EB71C(uint64_t a1)
{
  v2[8] = 0u;
  v2[9] = 0u;
  v2[6] = 0u;
  v2[7] = 0u;

  return sub_1AF1A767C(a1, v1, v3 - 192);
}

__n128 sub_1AF1EB740()
{
  v1 = *(v0 + 112);
  *v0 = *(v0 + 96);
  *(v0 + 16) = v1;
  result = *(v0 + 128);
  v3 = *(v0 + 144);
  *(v0 + 32) = result;
  *(v0 + 48) = v3;
  return result;
}

void *sub_1AF1EB754(size_t a1)
{

  return malloc_type_malloc(a1, 0x100004052888210uLL);
}

uint64_t sub_1AF1EB930(int a1, void *a2, CFTypeRef cf1, uint64_t a4)
{
  if (!CFEqual(cf1, @"kCFXNotificationProfileWillDie"))
  {
    v8 = sub_1AF0D5194();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE4550(v8, v6, v9, v7, v10, v11, v12, v13);
    }
  }

  return objc_msgSend_releaseProgramForResource_(a2, v6, a4, v7);
}

uint64_t sub_1AF1EBAC0()
{
  v0 = [VFXCommonProfileProgramGeneratorMetal alloc];
  result = objc_msgSend_initAllowingHotReload_(v0, v1, 1, v2);
  qword_1EB658660 = result;
  return result;
}

uint64_t sub_1AF1EBAF0()
{
  v0 = [VFXCommonProfileProgramGeneratorMetal alloc];
  result = objc_msgSend_initAllowingHotReload_(v0, v1, 0, v2);
  qword_1EB658670 = result;
  return result;
}

void sub_1AF1EBF70(void *a1, uint64_t *a2, uint64_t a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      v6 = sub_1AF14896C(*a2);
      if (v6)
      {
        CFDictionaryApplyFunction(v6, sub_1AF1EBFDC, a1);
      }

      ++a2;
      --v3;
    }

    while (v3);
  }
}

uint64_t sub_1AF1EBFF0(uint64_t *a1, uint64_t a2)
{
  if (a2 < 1)
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v2 = a2;
    v4 = 0;
    do
    {
      v5 = *a1++;
      v4 |= sub_1AF148C40(v5);
      --v2;
    }

    while (v2);
  }

  return v4;
}

__CFString *sub_1AF1EC048(unsigned int a1)
{
  if (a1 < 0x13)
  {
    return off_1E7A7C3F0[a1];
  }

  v2 = sub_1AF0D5194();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDE4720(v2);
  }

  return 0;
}

uint64_t sub_1AF1EC0A4(int a1, int a2)
{
  if (qword_1ED731AF0 != -1)
  {
    sub_1AFDE4764();
  }

  return *(&unk_1ED731630 + 8 * a1 + a2);
}

void sub_1AF1EC0F4()
{
  v0 = 0;
  v1 = &qword_1ED731650;
  v2 = *MEMORY[0x1E695E480];
  do
  {
    v3 = sub_1AF1EC048(v0);
    *(v1 - 4) = v3;
    MutableCopy = CFStringCreateMutableCopy(v2, 0, v3);
    CFStringUppercase(MutableCopy, 0);
    *(v1 - 3) = CFStringCreateWithFormat(v2, 0, @"USE_%@", MutableCopy);
    *(v1 - 2) = CFStringCreateWithFormat(v2, 0, @"USE_%@_COLOR", MutableCopy);
    *(v1 - 1) = CFStringCreateWithFormat(v2, 0, @"USE_%@_INTENSITY", MutableCopy);
    *v1 = CFStringCreateWithFormat(v2, 0, @"USE_%@_TEXTURE_COMPONENT", MutableCopy);
    v1[1] = CFStringCreateWithFormat(v2, 0, @"USE_%@TEXCOORD", MutableCopy);
    v1[2] = CFStringCreateWithFormat(v2, 0, @"USE_%@_MAP", MutableCopy);
    v1[3] = CFStringCreateWithFormat(v2, 0, @"USE_%@_CUBEMAP", MutableCopy);
    CFRelease(MutableCopy);
    ++v0;
    v1 += 8;
  }

  while (v0 != 19);
}

uint64_t sub_1AF1ECB20(uint64_t a1, const char *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  if (objc_msgSend_hasPrefix_(a4, a2, @"texture", a4) & 1) != 0 || (objc_msgSend_hasPrefix_(a4, v8, @"depth", v9))
  {
    v10 = 168;
    if (v6)
    {
      v10 = 176;
    }

    v11 = *(a1 + v10);
    if (!objc_msgSend_hasSuffix_(a4, v8, @">", v9))
    {
      return objc_msgSend_appendFormat_(v11, v12, @", %@<float> %@\n", v13, a4, a3);
    }

    return objc_msgSend_appendFormat_(v11, v12, @", %@ %@\n", v13, a4, a3);
  }

  hasPrefix = objc_msgSend_hasPrefix_(a4, v8, @"sampler", v9);
  v16 = 168;
  if (v6)
  {
    v16 = 176;
  }

  v11 = *(a1 + v16);
  if (hasPrefix)
  {
    return objc_msgSend_appendFormat_(v11, v12, @", %@ %@\n", v13, a4, a3);
  }

  if (objc_msgSend_hasSuffix_(a4, v12, @"*", v13))
  {
    return objc_msgSend_appendFormat_(v11, v17, @", device %@ %@\n", v18, a4, a3);
  }

  else
  {
    return objc_msgSend_appendFormat_(v11, v17, @", constant %@& %@\n", v18, a4, a3);
  }
}

uint64_t sub_1AF1ECC2C(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  if (objc_msgSend_hasPrefix_(a3, a2, @"texture", a4) & 1) != 0 || (objc_msgSend_hasPrefix_(a3, v7, @"depth", v8))
  {
    objc_msgSend_appendFormat_(*(a1 + 160), v7, @"_lightingContribution.%@ = %@;\n", v8, a2, a2);
    hasSuffix = objc_msgSend_hasSuffix_(a3, v9, @">", v10);
    v14 = *(a1 + 152);
    if (!hasSuffix)
    {
      return objc_msgSend_appendFormat_(v14, v11, @"%@<float> %@;\n", v12, a3, a2);
    }
  }

  else
  {
    objc_msgSend_hasPrefix_(a3, v7, @"sampler", v8);
    objc_msgSend_appendFormat_(*(a1 + 160), v16, @"_lightingContribution.%@ = %@;\n", v17, a2, a2);
    v14 = *(a1 + 152);
  }

  return objc_msgSend_appendFormat_(v14, v11, @"%@ %@;\n", v12, a3, a2);
}

uint64_t sub_1AF1ECD04(uint64_t result, uint64_t *a2, uint64_t a3)
{
  *&v11[5] = *MEMORY[0x1E69E9840];
  if (a3 >= 1)
  {
    v3 = a3;
    v5 = result;
    do
    {
      v6 = *a2;
      if (!*a2)
      {
        v7 = sub_1AF0D5194();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDE48AC(v10, v11, v7);
        }
      }

      result = sub_1AF1488DC(v6);
      if (result)
      {
        result = objc_msgSend_addEntriesFromDictionary_(v5, v8, result, v9);
      }

      ++a2;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1AF1ECDD4(uint64_t a1, uint64_t a2, char a3)
{
  result = sub_1AF148894(a2);
  if (result)
  {
    v7 = result;
    v8 = sub_1AF148D18(a2);
    if (v8 > 3)
    {
      v11 = 0;
    }

    else
    {
      v11 = off_1E7A7C5E0[v8];
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1AF1ECE98;
    v12[3] = &unk_1E7A7C490;
    v13 = a3;
    v12[4] = v11;
    v12[5] = a1;
    return objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v7, v9, v12, v10);
  }

  return result;
}

unint64_t sub_1AF1ECE98(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  result = sub_1AF1F1B4C(a3, a2, a3, a4);
  if (result > 0x3A || ((1 << result) & 0x400000000000003) == 0)
  {
    return objc_msgSend_appendFormat_(*(*(a1 + 40) + 8 * *(a1 + 48) + 40), v8, @"const %@ %@ = %@.%@;\n", v9, a3, a2, *(a1 + 32), a2);
  }

  return result;
}

void sub_1AF1ECF18(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(&v35[1] + 4) = *MEMORY[0x1E69E9840];
  if (a3 >= 1)
  {
    v3 = a3;
    v25 = v33;
    while (1)
    {
      v6 = *a2;
      if (!*a2)
      {
        v7 = sub_1AF0D5194();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDE48AC(v34, v35, v7);
        }
      }

      v8 = sub_1AF148894(v6);
      if (!v8)
      {
        goto LABEL_29;
      }

      v9 = sub_1AF148D18(v6);
      v12 = v9;
      if (!v9)
      {
        goto LABEL_11;
      }

      if (v9 == 3)
      {
        break;
      }

      v13 = 1;
LABEL_13:
      v14 = 0;
      if (v9 <= 1u)
      {
        if (v9)
        {
          if (v9 == 1)
          {
            v14 = @"vfx_modifiers_params_surface_t";
            v15 = @"u_shaderModifierParametersSurface";
          }

          else
          {
            v15 = 0;
          }
        }

        else
        {
          v14 = @"vfx_modifiers_params_geometry_t";
          v15 = @"u_shaderModifierParametersGeometry";
        }

        goto LABEL_23;
      }

      if (v9 == 2)
      {
        v14 = @"vfx_modifiers_params_fragment_t";
        v15 = @"u_shaderModifierParametersFragment";
        goto LABEL_23;
      }

      v15 = 0;
      if (v9 == 3)
      {
        goto LABEL_19;
      }

LABEL_23:
      v29 = 0;
      v30 = &v29;
      v31 = 0x3052000000;
      v32 = sub_1AF1ED1F8;
      v33[0] = sub_1AF1ED208;
      v33[1] = 0;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = sub_1AF1ED214;
      v26[3] = &unk_1E7A7C4B8;
      v26[5] = &v29;
      v26[6] = a1;
      v27 = v9;
      v26[4] = v15;
      v28 = v13;
      objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v8, v10, v26, v11);
      v18 = v30[5];
      if (v18)
      {
        objc_msgSend_appendFormat_(v18, v16, @"} %@;\n\n", v17, v14);
        objc_msgSend_appendString_(*(a1 + 32), v19, v30[5], v20);

        v23 = 168;
        if (v13)
        {
          v23 = 176;
        }

        objc_msgSend_appendFormat_(*(a1 + v23), v21, @", constant %@& %@\n", v22, v14, v15, v25);
        if (v12 == 3)
        {
          sub_1AF1ECC2C(a1, v15, v14, v24);
        }
      }

      _Block_object_dispose(&v29, 8);
LABEL_29:
      ++a2;
      if (!--v3)
      {
        return;
      }
    }

    if (*(a1 + 195))
    {
      v13 = 1;
LABEL_19:
      v14 = @"vfx_modifiers_params_lighting_t";
      v15 = @"u_shaderModifierParametersLighting";
      goto LABEL_23;
    }

LABEL_11:
    v13 = 0;
    goto LABEL_13;
  }
}

void sub_1AF1ED1D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1AF1ED214(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  v7 = sub_1AF1F1B4C(a3, a2, a3, a4);
  if (v7 > 0x3A || ((1 << v7) & 0x400000000000003) == 0)
  {
    v14 = *(*(*(a1 + 40) + 8) + 40);
    if (!v14)
    {
      v15 = objc_alloc(MEMORY[0x1E696AD60]);
      *(*(*(a1 + 40) + 8) + 40) = objc_msgSend_initWithString_(v15, v16, @"typedef struct {\n", v17);
      v14 = *(*(*(a1 + 40) + 8) + 40);
    }

    objc_msgSend_appendFormat_(v14, v8, @"    %@ %@;\n", v9, a3, a2);
    return objc_msgSend_appendFormat_(*(*(a1 + 48) + 8 * *(a1 + 56) + 40), v18, @"const %@ %@ = %@.%@;\n", v19, a3, a2, *(a1 + 32), a2);
  }

  else
  {
    result = sub_1AF1ECB20(*(a1 + 48), *(a1 + 57), a2, a3);
    if (*(a1 + 56) == 3)
    {
      v13 = *(a1 + 48);

      return sub_1AF1ECC2C(v13, a2, a3, v12);
    }
  }

  return result;
}

uint64_t sub_1AF1ED338(void **a1, int a2, uint64_t a3)
{
  v6 = sub_1AF13E414(a3);
  result = sub_1AF13E588(a3);
  if ((v6 & 0x20) != 0 && a2)
  {
    v8 = result;
    v9 = 0x2000010000;
    if ((v6 & 0x80) == 0)
    {
      v9 = 0x2000000000;
    }

    a1[25] = sub_1AF1735B8(result & 0xFFFFFEFF | (((v6 >> 6) & 1) << 8) | v9, (v6 >> 8) & 0x7FFFF, a1[1]);
    a1[26] = sub_1AF173490(v8, v10);
    v11 = MEMORY[0x1E696AEC0];
    v12 = sub_1AF1733C8();
    v13 = sub_1AF28A7E4(@"CFX-OpenSubdiv-Utils.h");
    v14 = sub_1AF28A7E4(@"CFX-OpenSubdiv-Utils.metal");
    a1[27] = objc_msgSend_stringWithFormat_(v11, v15, @"%@%@%@", v16, v12, v13, v14);
    a1[25] = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(a1[25], v17, @"#line", @"// #line");
    a1[26] = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(a1[26], v18, @"#line", @"// #line");
    result = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(a1[27], v19, @"#line", @"// #line");
    a1[27] = result;
  }

  else
  {
    a1[25] = &stru_1F2575650;
    a1[26] = &stru_1F2575650;
    a1[27] = &stru_1F2575650;
  }

  return result;
}

uint64_t sub_1AF1ED48C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], a2, a3, a4);
  v8 = objc_msgSend_bundleIdentifier(v4, v5, v6, v7);
  if (objc_msgSend_hasPrefix_(v8, v9, @"com.apple.mobileslideshow", v10))
  {
    result = 1;
  }

  else
  {
    v15 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v11, v12, v13);
    v19 = objc_msgSend_bundleIdentifier(v15, v16, v17, v18);
    result = objc_msgSend_hasPrefix_(v19, v20, @"com.apple.Photos", v21);
  }

  byte_1EB654CC0 = result;
  return result;
}

uint64_t sub_1AF1F00B0(uint64_t a1, unsigned int a2, int a3, int a4)
{
  v8 = sub_1AF1EC0A4(a3, 0);
  v9 = sub_1AF1EC0A4(a3, 1);
  result = sub_1AF1EC0A4(a3, 5);
  v13 = result;
  *(a1 + 24) = 0;
  if (a4)
  {
    result = sub_1AF13E474(*a1, a2);
    if (result)
    {
      v14 = *(a1 + 8);
      if (a3 == 6)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v14, v11, &unk_1F25D4390, v9);
      }

      else
      {
        objc_msgSend_setObject_forKeyedSubscript_(v14, v11, &stru_1F2575650, v9);
      }

      if (sub_1AF13E464(*a1, a2))
      {
        if (sub_1AF13E484(*a1, a2) == 4)
        {
          v15 = 7;
        }

        else
        {
          v15 = 6;
        }

        v16 = sub_1AF1EC0A4(a3, v15);
        objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 8), v17, &stru_1F2575650, v16);
        *(a1 + 24) = 1;
        objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 8), v18, &stru_1F2575650, v13);
        result = sub_1AF13E458(*a1, a2);
        v19 = result;
        if ((result & 0x1000) != 0)
        {
          v20 = sub_1AF1EC0A4(a3, 3);
          result = objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 8), v21, &stru_1F2575650, v20);
        }

        v22 = (v19 >> 13) & 0xF;
        if (v22 && v22 != 15)
        {
          v23 = sub_1AF1EC0A4(a3, 4);
          v26 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v24, @"%d", v25, v22);
          result = objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 8), v27, v26, v23);
        }
      }

      else
      {
        v28 = sub_1AF1EC0A4(a3, 2);
        result = objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 8), v29, &stru_1F2575650, v28);
      }
    }
  }

  v30 = *(a1 + 16);
  if (v30)
  {
    v31 = sub_1AF1EC0A4(a3, 1);
    objc_msgSend_addObject_(v30, v32, v31, v33);
    v34 = *(a1 + 16);
    v35 = sub_1AF1EC0A4(a3, 2);
    objc_msgSend_addObject_(v34, v36, v35, v37);
    v38 = *(a1 + 16);
    v39 = sub_1AF1EC0A4(a3, 3);
    objc_msgSend_addObject_(v38, v40, v39, v41);
    v42 = *(a1 + 16);
    v43 = sub_1AF1EC0A4(a3, 4);
    objc_msgSend_addObject_(v42, v44, v43, v45);
    v46 = *(a1 + 16);
    v47 = sub_1AF1EC0A4(a3, 5);
    objc_msgSend_addObject_(v46, v48, v47, v49);
    v50 = *(a1 + 16);
    v51 = sub_1AF1EC0A4(a3, 6);
    objc_msgSend_addObject_(v50, v52, v51, v53);
    v54 = *(a1 + 16);
    v55 = sub_1AF1EC0A4(a3, 7);
    result = objc_msgSend_addObject_(v54, v56, v55, v57);
  }

  if (a3 != 3)
  {
    result = objc_msgSend_objectForKeyedSubscript_(*(a1 + 8), v11, v13, v12);
    if (result)
    {
      result = sub_1AF13E458(*a1, a2);
      v59 = (result >> 17) & 0xF;
      if (v59 != 15)
      {
        if (a3 == 18)
        {
          v60 = sub_1AF13E594(*a1, v59);
          v63 = v60;
          v64 = HIBYTE(v60);
          v65 = *(a1 + 104);
          if (v64 <= 0xFE)
          {
            return objc_msgSend_appendFormat_(v65, v61, @"float2 _%@Texcoord = (vfx_commonprofile.textureTransforms[%d] * float4(_geometry.texcoords[%d], 0., 1.)).xy;\n", v62, v8, (*(a1 + 120) - 1), v63);
          }

          else
          {
            return objc_msgSend_appendFormat_(v65, v61, @"float2 _%@Texcoord = _geometry.texcoords[%d].xy;\n", v62, v8, v63);
          }
        }

        else
        {
          return objc_msgSend_appendFormat_(*(a1 + 112), v59, @"    _surface.%@Texcoord = in.texcoord%d;\n", v58, v8, v59);
        }
      }
    }
  }

  return result;
}

void sub_1AF1F084C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

unint64_t sub_1AF1F0898(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_rangeValue(a2, a2, a3, a4);
  v9 = v7;
  if (result >= *(*(a1 + 32) + 56))
  {
    if (result >= *(a1 + 56))
    {
      return result;
    }

    v10 = 40;
  }

  else
  {
    v10 = 32;
  }

  v11 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 40), v7, a3, v8);
  result = objc_msgSend_length(v11, v12, v13, v14);
  *(*(*(a1 + 48) + 8) + v10) += result - v9;
  return result;
}

void *sub_1AF1F0F74(uint64_t a1, int a2, uint64_t *a3)
{
  v5 = *a3;
  if (sub_1AF148D18(*a3) != a2)
  {
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE4AA0(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = sub_1AF148804(v5);
  if (v14)
  {
    objc_msgSend_appendString_(*(a1 + 32), v15, v14, v16);
  }

  v17 = sub_1AF148924(v5);
  if (v17)
  {
    objc_msgSend_appendString_(*(a1 + 8 * a2 + 40), v18, v17, v19);
  }

  else
  {
    v20 = sub_1AF0D5194();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDE4B18();
    }
  }

  v21 = sub_1AF14896C(v5);
  if (v21)
  {
    CFDictionaryApplyFunction(v21, sub_1AF1F1190, *(a1 + 8));
  }

  result = sub_1AF14884C(v5);
  if (result)
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = sub_1AF1F11A0;
    v25[3] = &unk_1E7A7C540;
    v25[4] = a1;
    return objc_msgSend_enumerateKeysAndObjectsUsingBlock_(result, v23, v25, v24);
  }

  return result;
}

uint64_t sub_1AF1F10C4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = sub_1AF1F1118(a2, a2, a3, a4);
  if (result)
  {
    v8 = result;
    v9 = *(*(a1 + 32) + 16);

    return objc_msgSend_addObject_(v9, v6, v8, v7);
  }

  return result;
}

uint64_t sub_1AF1F1118(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (!objc_msgSend_hasPrefix_(a1, a2, @"vfx_node.", a4))
  {
    return 0;
  }

  v8 = objc_msgSend_length(@"vfx_node.", v5, v6, v7);
  v11 = objc_msgSend_substringFromIndex_(a1, v9, v8, v10);
  v16 = objc_msgSend_uppercaseString(v11, v12, v13, v14);

  return objc_msgSend_stringByAppendingString_(@"USE_", v15, v16, v17);
}

uint64_t sub_1AF1F11A0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = sub_1AF1F1118(a2, a2, a3, a4);
  if (result)
  {
    v7 = result;
    v8 = *(*(a1 + 32) + 8);

    return objc_msgSend_setObject_forKeyedSubscript_(v8, v6, &stru_1F2575650, v7);
  }

  return result;
}

uint64_t sub_1AF1F11FC(unsigned int a1)
{
  if (a1 >= 8)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE4C3C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return qword_1AFE22120[a1];
}

uint64_t sub_1AF1F1250(unsigned int a1)
{
  if (a1 >= 3)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE4CB4(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return qword_1AFE22160[a1];
}

uint64_t sub_1AF1F12A4(unsigned int a1)
{
  if (a1 >= 2)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE4D2C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return qword_1AFE22178[a1];
}

uint64_t sub_1AF1F12F8(unsigned int a1)
{
  if (a1 >= 0xF)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE4DA4(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return qword_1AFE22188[a1];
}

uint64_t sub_1AF1F134C(unsigned int a1)
{
  if (a1 >= 5)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE4E1C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return qword_1AFE22200[a1];
}

uint64_t sub_1AF1F13A0(unsigned int a1)
{
  if (a1 >= 8)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE4E94(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return qword_1AFE22228[a1];
}

uint64_t sub_1AF1F13F4(uint64_t a1)
{
  if ((a1 & 0xF8) != 0)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE4F0C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return byte_1AFE22268[a1];
}

uint64_t sub_1AF1F1448(unsigned int a1)
{
  if (a1 >= 8)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE4E94(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return qword_1AFE22270[a1];
}

uint64_t sub_1AF1F149C(unsigned int a1)
{
  if (a1 >= 8)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE4F84(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return qword_1AFE222B0[a1];
}

uint64_t sub_1AF1F14F0(uint64_t a1)
{
  if ((a1 & 0xF8) != 0)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE4FFC(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return byte_1AFE222F0[a1];
}

uint64_t sub_1AF1F1584(int a1)
{
  if (a1 <= 1)
  {
    v2 = 4;
    if (a1 != 1)
    {
      v2 = 0;
    }

    if (a1)
    {
      return v2;
    }

    else
    {
      return 3;
    }
  }

  else
  {
    if (a1 == 5)
    {
      v3 = sub_1AF0D5194();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDE50EC(v3, v4, v5, v6, v7, v8, v9, v10);
      }
    }

    else
    {
      if (a1 != 4)
      {
        return a1 == 2;
      }

      v11 = sub_1AF0D5194();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDE5074(v11, v12, v13, v14, v15, v16, v17, v18);
      }
    }

    return 0;
  }
}

uint64_t sub_1AF1F1624(uint64_t a1, uint64_t a2, CGContextRef context, char a4)
{
  v38 = *MEMORY[0x1E69E9840];
  BitmapInfo = CGBitmapContextGetBitmapInfo(context);
  ColorSpace = CGBitmapContextGetColorSpace(context);
  v10 = BitmapInfo & 0x7000;
  if ((BitmapInfo & 0x1B) == 2)
  {
    v11 = 0;
    v12 = v10 != 4096 && v10 != 0x2000;
LABEL_14:
    if ((BitmapInfo & 0x100) != 0)
    {
      goto LABEL_30;
    }

    goto LABEL_15;
  }

  if ((BitmapInfo & 0x1B) != 1)
  {
    v11 = 0;
    goto LABEL_29;
  }

  v11 = 1;
  if ((BitmapInfo & 0x7000) == 0 || v10 == 12288)
  {
LABEL_29:
    v12 = 1;
    if ((BitmapInfo & 0x100) != 0)
    {
      goto LABEL_30;
    }

    goto LABEL_15;
  }

  v12 = 1;
  if (v10 == 0x4000)
  {
    goto LABEL_14;
  }

  v11 = 0;
  if ((BitmapInfo & 0x100) != 0)
  {
LABEL_30:
    if (a2 == 32)
    {
      switch(a1)
      {
        case 1:
          return 55;
        case 4:
          return 125;
        case 2:
          return 105;
      }
    }

    else if (a2 == 16)
    {
      switch(a1)
      {
        case 1:
          return 25;
        case 4:
          return 115;
        case 2:
          return 65;
      }
    }

    goto LABEL_59;
  }

LABEL_15:
  if (ColorSpace == sub_1AF164490() || ColorSpace == sub_1AF164458() || (v14 = sub_1AF164B3C(), (a4 & 1) != 0) || ColorSpace == v14)
  {
    if (a2 == 16)
    {
      if (a1 == 1)
      {
        return 20;
      }

      if (a1 == 4 && (v11 & 1) != 0)
      {
        return 110;
      }
    }

    else if (a2 == 8)
    {
      if (a1 == 1)
      {
        return 10;
      }

      if (a1 == 2)
      {
        return 30;
      }

      if (a1 == 4 && v11 == 1)
      {
        return 70;
      }

      if (a1 == 4 && !v12)
      {
        return 80;
      }
    }
  }

  else if (a2 == 8)
  {
    if (a1 == 1)
    {
      return 11;
    }

    if (a1 == 2)
    {
      return 31;
    }

    if (a1 == 4 && v11 == 1)
    {
      return 71;
    }

    if (a1 == 4 && !v12)
    {
      return 81;
    }
  }

LABEL_59:
  v16 = sub_1AF0D5194();
  if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    return 70;
  }

  v18 = (BitmapInfo >> 12) & 7;
  if (v18 > 4)
  {
    v19 = @"byteOrderUnknown";
  }

  else
  {
    v19 = off_1E7A7C938[v18];
  }

  if ((BitmapInfo & 0x1F) > 7)
  {
    v20 = @"alphaUnknown";
  }

  else
  {
    v20 = off_1E7A7C960[BitmapInfo & 0x1F];
  }

  v21 = @"yes";
  v22 = 138414082;
  v23 = context;
  v24 = 1024;
  if ((BitmapInfo & 0x100) == 0)
  {
    v21 = @"no";
  }

  v25 = a1;
  v26 = 1024;
  v27 = a2;
  v28 = 1024;
  v29 = BitmapInfo;
  v30 = 2112;
  v31 = v19;
  v32 = 2112;
  v33 = v20;
  v34 = 2112;
  v35 = v21;
  v36 = 2112;
  v37 = ColorSpace;
  v15 = 70;
  _os_log_error_impl(&dword_1AF0CE000, v16, OS_LOG_TYPE_ERROR, "Error: Failed to create Metal pixel format for %@ [%d components, %d bits per component, bitmap info: %u (%@|%@), float components: %@, color space: %@]", &v22, 0x46u);
  return v15;
}

uint64_t sub_1AF1F1980(unint64_t a1)
{
  if (a1 >= 0x36)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE5164(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return word_1AFE222F8[a1];
}

uint64_t sub_1AF1F19D4(int a1)
{
  if (a1 >= 46)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE51DC(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return qword_1AFE22368[a1];
}

uint64_t sub_1AF1F1A28(int a1)
{
  if (a1 >= 46)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE51DC(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return qword_1AFE224D8[a1];
}

uint64_t sub_1AF1F1B4C(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (objc_msgSend_hasPrefix_(a1, a2, @"texture", a4))
  {
    return 58;
  }

  v7 = 0;
  while ((objc_msgSend_isEqualToString_(a1, v5, off_1E7A7C600[v7], v6) & 1) == 0)
  {
    if (++v7 == 57)
    {
      return 0;
    }
  }

  return v7;
}

__CFString *sub_1AF1F1BCC(uint64_t a1)
{
  if (a1 <= 122)
  {
    switch(a1)
    {
      case '5':
        result = @"R32Uint";
        break;
      case '6':
        result = @"R32Sint";
        break;
      case '7':
        result = @"R32Float";
        break;
      case '8':
      case '9':
      case ':':
      case ';':
      case '=':
      case 'B':
      case 'C':
      case 'D':
      case 'E':
      case 'K':
      case 'L':
      case 'M':
      case 'N':
      case 'O':
      case 'R':
      case 'S':
      case 'T':
      case 'U':
      case 'V':
      case 'W':
      case 'X':
      case 'Y':
      case '\\':
      case ']':
      case '_':
      case 'a':
      case 'b':
      case 'c':
      case 'd':
      case 'e':
      case 'f':
      case 'j':
      case 'k':
      case 'l':
      case 'm':
      case 'o':
        goto LABEL_28;
      case '<':
        result = @"RG16Unorm";
        break;
      case '>':
        result = @"RG16Snorm";
        break;
      case '?':
        result = @"RG16Uint";
        break;
      case '@':
        result = @"RG16Sint";
        break;
      case 'A':
        result = @"RG16Float";
        break;
      case 'F':
        result = @"RGBA8Unorm";
        break;
      case 'G':
        result = @"RGBA8Unorm_sRGB";
        break;
      case 'H':
        result = @"RGBA8Snorm";
        break;
      case 'I':
        result = @"RGBA8Uint";
        break;
      case 'J':
        result = @"RGBA8Sint";
        break;
      case 'P':
        result = @"BGRA8Unorm";
        break;
      case 'Q':
        result = @"BGRA8Unorm_sRGB";
        break;
      case 'Z':
        result = @"RGB10A2Unorm";
        break;
      case '[':
        result = @"RGB10A2Uint";
        break;
      case '^':
        result = @"BGR10A2Unorm";
        break;
      case 'g':
        result = @"RG32Uint";
        break;
      case 'h':
        result = @"RG32Sint";
        break;
      case 'i':
        result = @"RG32Float";
        break;
      case 'n':
        result = @"RGBA16Unorm";
        break;
      case 'p':
        result = @"RGBA16Snorm";
        break;
      case 'q':
        result = @"RGBA16Uint";
        break;
      case 'r':
        result = @"RGBA16Sint";
        break;
      case 's':
        result = @"RGBA16Float";
        break;
      default:
        result = @"Invalid";
        switch(a1)
        {
          case 0:
            return result;
          case 1:
            result = @"A8Unorm";
            break;
          case 10:
            result = @"R8Unorm";
            break;
          case 11:
            result = @"R8Unorm_sRGB";
            break;
          case 12:
            result = @"R8Snorm";
            break;
          case 13:
            result = @"R8Uint";
            break;
          case 14:
            result = @"R8Sint";
            break;
          case 20:
            result = @"R16Unorm";
            break;
          case 22:
            result = @"R16Snorm";
            break;
          case 23:
            result = @"R16Uint";
            break;
          case 24:
            result = @"R16Sint";
            break;
          case 25:
            result = @"R16Float";
            break;
          case 30:
            result = @"RG8Unorm";
            break;
          case 31:
            result = @"RG8Unorm_sRGB";
            break;
          case 32:
            result = @"RG8Snorm";
            break;
          case 33:
            result = @"RG8Uint";
            break;
          case 34:
            result = @"RG8Sint";
            break;
          default:
            goto LABEL_28;
        }

        break;
    }
  }

  else
  {
    if (a1 > 252)
    {
      if (a1 <= 552)
      {
        if (a1 == 253)
        {
          return @"Stencil8";
        }

        if (a1 == 552)
        {
          return @"BGRA10_XR";
        }
      }

      else
      {
        switch(a1)
        {
          case 553:
            return @"BGRA10_XR_sRGB";
          case 554:
            return @"BGR10_XR";
          case 555:
            return @"BGR10_XR_sRGB";
        }
      }
    }

    else
    {
      if (a1 <= 124)
      {
        if (a1 == 123)
        {
          return @"RGBA32Uint";
        }

        else
        {
          return @"RGBA32Sint";
        }
      }

      switch(a1)
      {
        case 125:
          return @"RGBA32Float";
        case 250:
          return @"Depth16Unorm";
        case 252:
          return @"Depth32Float";
      }
    }

LABEL_28:
    v4 = MEMORY[0x1E696AEC0];
    Name = MTLPixelFormatGetName();
    v7 = objc_msgSend_stringWithCString_encoding_(v4, v6, Name, 1);

    return objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v7, v8, @"MTLPixelFormat", &stru_1F2575650);
  }

  return result;
}

uint64_t sub_1AF1F1F6C(uint64_t a1)
{
  switch(a1)
  {
    case 1:
      return 0;
    case 3:
      v2 = sub_1AF0D5194();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDE5254();
      }

      break;
    case 2:
      return 1;
    default:
      v3 = sub_1AF0D5194();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDE5288();
      }

      break;
  }

  return 2;
}

uint64_t sub_1AF1F1FF4(uint64_t a1)
{
  v1 = 2;
  if (a1 != 4)
  {
    v1 = a1;
  }

  if (a1 == 8)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

__CFString *sub_1AF1F2010(unint64_t a1)
{
  if (a1 > 9)
  {
    return @"Unkown";
  }

  else
  {
    return off_1E7A7C9A0[a1];
  }
}

uint64_t sub_1AF1F2034(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_textureType(a1, a2, a3, a4);
  if (v5 < 8 && ((0xA5u >> v5) & 1) != 0)
  {
    return (0x301040101020101uLL >> (8 * v5));
  }

  else
  {
    v7 = sub_1AF0D5194();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    LOBYTE(v6) = 0;
    if (v8)
    {
      v13[0] = 67109120;
      v13[1] = objc_msgSend_textureType(a1, v9, v10, v11);
      _os_log_impl(&dword_1AF0CE000, v7, OS_LOG_TYPE_DEFAULT, "Warning: unsupported texture type %d", v13, 8u);
      LOBYTE(v6) = 0;
    }
  }

  return v6;
}

BOOL sub_1AF1F2118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v64 = *MEMORY[0x1E69E9840];
  v6 = sub_1AF1CDAAC(a1);
  v7 = sub_1AF1CDA60(a1);
  v10 = v7;
  switch(a2)
  {
    case 3:
      result = 0;
      if (v6 <= 0xCu)
      {
        if (v6 <= 2u)
        {
          if (v6 == 1)
          {
            v20 = *v10->i32;
            goto LABEL_171;
          }

          if (v6 == 2)
          {
            v20 = v10->i32[0];
LABEL_171:
            *a3 = v20;
            return 1;
          }

          return result;
        }

        if (v6 != 3)
        {
          if (v6 == 6)
          {
            v20 = *v10->i32;
            goto LABEL_171;
          }

          return result;
        }

        LOBYTE(v8) = v10->i8[0];
LABEL_170:
        v20 = v8;
        goto LABEL_171;
      }

      if (v6 > 0xFu)
      {
        if (v6 != 16)
        {
          if (v6 == 45)
          {
            v20 = *v10;
            goto LABEL_171;
          }

          return result;
        }

        LOWORD(v8) = v10->i16[0];
        goto LABEL_170;
      }

      if (v6 == 13)
      {
        v20 = v10->i16[0];
        goto LABEL_171;
      }

      if (v6 == 14)
      {
        v20 = sub_1AF1F2AC4(v10->u16[0]);
        goto LABEL_171;
      }

      return result;
    case 4:
      result = 0;
      if (v6 <= 0x1Bu)
      {
        if (v6 == 7)
        {
          goto LABEL_111;
        }

        if (v6 == 17)
        {
          v36 = vcvt_f32_s32(*v10);
          goto LABEL_112;
        }

        return result;
      }

      switch(v6)
      {
        case 0x1Cu:
          LOWORD(v8) = v10->i16[0];
          *&v25 = v8;
          v9.i16[0] = v10->i16[1];
          *v9.i32 = v9.u32[0];
          break;
        case 0x1Fu:
          *&v25 = v10->i16[0];
          *v9.i32 = v10->i16[1];
          break;
        case 0x2Au:
          v51 = sub_1AF1F2AC4(v10->u16[0]);
          *a3 = __PAIR64__(COERCE_UNSIGNED_INT(sub_1AF1F2AC4(v10->u16[1])), LODWORD(v51));
          return 1;
        default:
          return result;
      }

      HIDWORD(v25) = v9.i32[0];
      goto LABEL_152;
    case 5:
      result = 0;
      if (v6 > 0x1Cu)
      {
        if (v6 == 29)
        {
          v9 = vmovl_u16(*v10);
          *v9.i8 = vcvt_f32_u32(*v9.i8);
          v28 = WORD2(*v10);
LABEL_156:
          *&v9.i32[2] = v28;
          goto LABEL_157;
        }

        if (v6 != 32)
        {
          if (v6 != 43)
          {
            return result;
          }

          v52 = *v10;
          *v27.i32 = sub_1AF1F2AC4(v10->u16[0]);
          v48 = v27;
          v46 = sub_1AF1F2AC4(v52.u16[1]);
          v28 = sub_1AF1F2AC4(v52.u16[2]);
          v9 = v48;
          *&v9.i32[1] = v46;
          goto LABEL_156;
        }

        v9 = vmovl_s16(*v10);
        *v9.i8 = vcvt_f32_s32(*v9.i8);
        v21 = WORD2(*v10);
      }

      else
      {
        if (v6 == 8 || v6 == 9)
        {
LABEL_100:
          v22 = *v10->i8;
LABEL_101:
          *a3 = v22;
          return 1;
        }

        if (v6 != 18)
        {
          return result;
        }

        *v9.i8 = vcvt_f32_s32(*v10);
        v21 = v10[1];
      }

      v28 = v21;
      goto LABEL_156;
    case 6:
      result = 0;
      if (v6 <= 0x1Du)
      {
        if (v6 == 9)
        {
          goto LABEL_100;
        }

        if (v6 != 19)
        {
          return result;
        }

        v29 = *v10->i8;
      }

      else
      {
        if (v6 == 30)
        {
          v22 = vcvtq_f32_u32(vmovl_u16(*v10));
          goto LABEL_101;
        }

        if (v6 != 33)
        {
          if (v6 != 44)
          {
            return result;
          }

          v50 = *v10;
          v47 = sub_1AF1F2AC4(v10->u16[0]);
          v45 = sub_1AF1F2AC4(v50.u16[1]);
          v44 = sub_1AF1F2AC4(v50.u16[2]);
          v19 = sub_1AF1F2AC4(v50.u16[3]);
          v9.i64[0] = __PAIR64__(LODWORD(v45), LODWORD(v47));
          v9.i64[1] = __PAIR64__(LODWORD(v19), LODWORD(v44));
LABEL_157:
          *a3 = v9;
          return 1;
        }

        v29 = vmovl_s16(*v10);
      }

      v22 = vcvtq_f32_s32(v29);
      goto LABEL_101;
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
      goto LABEL_24;
    case 15:
      if (v6 != 10)
      {
        return 0;
      }

      v22 = *v7->i8;
      v23 = *v7[2].i8;
      v24 = *v7[6].i8;
      *(a3 + 32) = *v7[4].i8;
      *(a3 + 48) = v24;
      *(a3 + 16) = v23;
      goto LABEL_101;
    case 16:
      result = 0;
      if (v6 > 0xCu)
      {
        if (v6 <= 0xFu)
        {
          if (v6 != 13)
          {
            if (v6 != 14)
            {
              return result;
            }

            *a3 = v10->i16[0];
            return 1;
          }

          v15 = v10->i16[0];
LABEL_165:
          *a3 = sub_1AF1F2B14(v15);
          return 1;
        }

        if (v6 != 16)
        {
          if (v6 != 45)
          {
            return result;
          }

          v15 = *v10;
          goto LABEL_165;
        }

        LOWORD(v8) = v10->i16[0];
      }

      else
      {
        if (v6 <= 2u)
        {
          if (v6 == 1)
          {
            v15 = *v10->i32;
          }

          else
          {
            if (v6 != 2)
            {
              return result;
            }

            v15 = v10->i32[0];
          }

          goto LABEL_165;
        }

        if (v6 != 3)
        {
          if (v6 != 6)
          {
            return result;
          }

          v15 = *v10->i32;
          goto LABEL_165;
        }

        LOBYTE(v8) = v10->i8[0];
      }

      v15 = v8;
      goto LABEL_165;
    case 17:
      result = 0;
      if (v6 > 0x1Bu)
      {
        switch(v6)
        {
          case 0x1Cu:
            LOWORD(v8) = v10->i16[0];
            v38 = sub_1AF1F2B14(v8);
            LOWORD(v39) = v10->i16[1];
            v40 = v39;
            break;
          case 0x1Fu:
            v38 = sub_1AF1F2B14(v10->i16[0]);
            v40 = v10->i16[1];
            break;
          case 0x2Au:
LABEL_45:
            v12 = v10->i32[0];
LABEL_74:
            *a3 = v12;
            return 1;
          default:
            return result;
        }

        *(a3 + 2) = sub_1AF1F2B14(v40);
        *a3 = v38;
        return 1;
      }

      if (v6 == 7)
      {
        LODWORD(v61) = HIDWORD(*v10);
        v30 = sub_1AF1F2B14(COERCE_FLOAT(*v10));
        v31 = v61;
      }

      else
      {
        if (v6 != 17)
        {
          return result;
        }

        v60 = HIDWORD(*v10);
        v30 = sub_1AF1F2B14(v10->i32[0]);
        v31 = v60;
      }

      *(a3 + 2) = sub_1AF1F2B14(v31);
      *a3 = v30;
      return 1;
    case 18:
      result = 0;
      if (v6 > 0x1Cu)
      {
        if (v6 != 29)
        {
          if (v6 != 32)
          {
            if (v6 == 43)
            {
              goto LABEL_111;
            }

            return result;
          }

          v59 = *v10;
          v16 = sub_1AF1F2B14(v10->i16[0]);
          v17 = sub_1AF1F2B14(v59.i16[1]);
          v18 = v59.i16[2];
          goto LABEL_150;
        }

        v58 = *v10;
        v16 = sub_1AF1F2B14(v10->u16[0]);
        v17 = sub_1AF1F2B14(v58.u16[1]);
        v37 = v58.u16[2];
      }

      else
      {
        if (v6 != 8 && v6 != 9)
        {
          if (v6 != 18)
          {
            return result;
          }

          v49 = *v10->i8;
          v16 = sub_1AF1F2B14(*v10->i8);
          v17 = sub_1AF1F2B14(SDWORD1(v49));
          v18 = DWORD2(v49);
LABEL_150:
          v37 = v18;
          goto LABEL_151;
        }

        v54 = *v10->i8;
        v16 = sub_1AF1F2B14(COERCE_FLOAT(*v10->i8));
        v17 = sub_1AF1F2B14(*(&v54 + 1));
        v37 = *(&v54 + 2);
      }

LABEL_151:
      v43 = sub_1AF1F2B14(v37);
      LOWORD(v25) = v16;
      WORD1(v25) = v17;
      WORD2(v25) = v43;
      goto LABEL_152;
    case 19:
      result = 0;
      if (v6 <= 0x1Du)
      {
        if (v6 == 9)
        {
          v57 = *v10->i8;
          v32 = sub_1AF1F2B14(COERCE_FLOAT(*v10->i8));
          v33 = sub_1AF1F2B14(*(&v57 + 1));
          v34 = sub_1AF1F2B14(*(&v57 + 2));
          v41 = *(&v57 + 3);
          goto LABEL_147;
        }

        if (v6 != 19)
        {
          return result;
        }

        v53 = *v10->i8;
        v32 = sub_1AF1F2B14(*v10->i8);
        v33 = sub_1AF1F2B14(SDWORD1(v53));
        v34 = sub_1AF1F2B14(SDWORD2(v53));
        v35 = HIDWORD(v53);
      }

      else
      {
        if (v6 == 30)
        {
          v55 = *v10;
          v32 = sub_1AF1F2B14(v10->u16[0]);
          v33 = sub_1AF1F2B14(v55.u16[1]);
          v34 = sub_1AF1F2B14(v55.u16[2]);
          v41 = v55.u16[3];
LABEL_147:
          v42 = sub_1AF1F2B14(v41);
          LOWORD(v25) = v32;
          WORD1(v25) = v33;
          WORD2(v25) = v34;
          HIWORD(v25) = v42;
          goto LABEL_152;
        }

        if (v6 != 33)
        {
          if (v6 == 44)
          {
            goto LABEL_111;
          }

          return result;
        }

        v56 = *v10;
        v32 = sub_1AF1F2B14(v10->i16[0]);
        v33 = sub_1AF1F2B14(v56.i16[1]);
        v34 = sub_1AF1F2B14(v56.i16[2]);
        v35 = v56.i16[3];
      }

      v41 = v35;
      goto LABEL_147;
    case 29:
    case 33:
      result = 0;
      if (v6 > 0xCu)
      {
        if (v6 == 13 || v6 == 16)
        {
          v12 = v10->i16[0];
          goto LABEL_74;
        }
      }

      else
      {
        if (v6 == 2)
        {
          goto LABEL_45;
        }

        if (v6 == 3)
        {
          v12 = v10->u8[0];
          goto LABEL_74;
        }
      }

      return result;
    case 30:
    case 34:
      if (v6 == 31 || v6 == 28)
      {
        LODWORD(v25) = v7->i16[0];
        HIDWORD(v25) = v7->i16[1];
LABEL_152:
        *a3 = v25;
      }

      else
      {
        if (v6 != 17)
        {
          return 0;
        }

LABEL_111:
        v36 = *v10;
LABEL_112:
        *a3 = v36;
      }

      return 1;
    case 31:
    case 35:
      if (v6 == 32 || v6 == 29)
      {
        goto LABEL_69;
      }

      if (v6 == 18)
      {
        goto LABEL_100;
      }

      return 0;
    case 32:
    case 36:
      if (v6 == 33 || v6 == 30)
      {
LABEL_69:
        v22 = vmovl_s16(*v7);
        goto LABEL_101;
      }

      if (v6 == 19)
      {
        goto LABEL_100;
      }

      return 0;
    default:
      if (a2 == 81)
      {
        result = 0;
        if (v6 <= 0xCu)
        {
          if (v6 == 2)
          {
            v26 = v10->i32[0];
          }

          else
          {
            if (v6 != 3)
            {
              return result;
            }

            v26 = v10->u8[0];
          }
        }

        else if (v6 == 13 || v6 == 16)
        {
          v26 = v10->i16[0];
        }

        else
        {
          if (v6 != 45)
          {
            return result;
          }

          v26 = *v10;
        }

        *a3 = v26;
        return 1;
      }

      if (a2 == 53)
      {
        if (v6 == 16 || v6 == 13)
        {
          v13 = v7->i16[0] != 0;
          goto LABEL_114;
        }

        if (v6 == 3)
        {
          v13 = v7->i8[0];
LABEL_114:
          *a3 = v13;
          return 1;
        }
      }

      else
      {
LABEL_24:
        v14 = sub_1AF0D5194();
        result = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
        if (!result)
        {
          return result;
        }

        *buf = 138412290;
        v63 = MTLDataTypeString();
        _os_log_impl(&dword_1AF0CE000, v14, OS_LOG_TYPE_DEFAULT, "Warning: CFXValueWriteToMTLData - Unsupported data type %@", buf, 0xCu);
      }

      return 0;
  }
}

float sub_1AF1F2AC4(unsigned int a1)
{
  v1 = (a1 >> 10) & 0x1F;
  if (v1 && v1 != 31)
  {
    v1 = (v1 << 23) + 939524096;
  }

  else if (v1 == 31)
  {
    v1 = 2139095040;
  }

  LODWORD(result) = (a1 << 16) & 0x80000000 | (a1 >> 7) & 7 | (8 * (a1 & 0x3FF)) & 0x1FFF | ((a1 & 0x3FF) << 13) | v1;
  return result;
}

uint64_t sub_1AF1F2B14(float a1)
{
  v1 = HIWORD(LODWORD(a1)) & 0x8000;
  v2 = (LODWORD(a1) >> 23);
  v3 = v2 - 112;
  v4 = v2 - 113;
  v5 = v1 | 0x7BFF;
  if ((LODWORD(a1) & 0x7FFFFF) != 0)
  {
    LOWORD(v6) = v1 + 1;
  }

  else
  {
    v6 = HIWORD(LODWORD(a1)) & 0x8000;
  }

  v7 = v6 | 0x7C00;
  if (v2 == 255)
  {
    v5 = v7;
  }

  if (v2 >= 0x71)
  {
    v8 = v5;
  }

  else
  {
    v8 = HIWORD(a1) & 0x8000;
  }

  v9 = HIWORD(LODWORD(a1)) & 0x8000 | (LODWORD(a1) >> 13) & 0x3FF | (v3 << 10);
  if (v4 > 0x1D)
  {
    LOWORD(v9) = v8;
  }

  return v9;
}

void sub_1AF1F2B68(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = objc_msgSend_offset(a2, a2, a3, a4);
  v11 = objc_msgSend_dataType(a2, v8, v9, v10);
  if (!sub_1AF1F2118(a1, v11, a3 + v7))
  {
    v12 = sub_1AF0D5194();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13[0] = 67109378;
      v13[1] = sub_1AF1CDAAC(a1);
      v14 = 2112;
      v15 = a2;
      _os_log_impl(&dword_1AF0CE000, v12, OS_LOG_TYPE_DEFAULT, "Warning: value unsupported %d of member %@", v13, 0x12u);
    }
  }
}

uint64_t sub_1AF1F2C50(char a1)
{
  v1 = 81;
  if ((a1 & 8) == 0)
  {
    v1 = 551;
  }

  if ((a1 & 0x10) == 0)
  {
    v1 = 555;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 81;
  }
}

CGImageRef sub_1AF1F2C7C(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_pixelFormat(a1, a2, a3, a4);
  if (v5 > 79)
  {
    if ((v5 - 80) < 2)
    {
      v9 = 8194;
      goto LABEL_9;
    }

    if (v5 == 125)
    {
      v9 = 16641;
      v10 = 32;
      goto LABEL_10;
    }

    if (v5 == 115)
    {
      v9 = 12545;
      v10 = 16;
LABEL_10:
      v11 = (v10 * objc_msgSend_width(a1, v6, v7, v8)) >> 1;
      v15 = objc_msgSend_height(a1, v12, v13, v14);
      v16 = v11 & 0xFFFFFFFC;
      v17 = malloc_type_malloc(v16 * v15, 0x100004077774924uLL);
      v21 = objc_msgSend_width(a1, v18, v19, v20);
      v25 = objc_msgSend_height(a1, v22, v23, v24);
      v26 = sub_1AF164420();
      v27 = CGBitmapContextCreate(v17, v21, v25, v10, v16, v26, v9);
      if (objc_msgSend_storageMode(a1, v28, v29, v30) == 2)
      {
        v34 = MEMORY[0x1E69741C0];
        v35 = objc_msgSend_pixelFormat(a1, v31, v32, v33);
        v39 = objc_msgSend_width(a1, v36, v37, v38);
        v43 = objc_msgSend_height(a1, v40, v41, v42);
        v45 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(v34, v44, v35, v39, v43, 0);
        v49 = objc_msgSend_device(a1, v46, v47, v48);
        v52 = objc_msgSend_newTextureWithDescriptor_(v49, v50, v45, v51);
        v56 = objc_msgSend_device(a1, v53, v54, v55);
        v60 = objc_msgSend_newCommandQueue(v56, v57, v58, v59);
        v64 = objc_msgSend_commandBuffer(v60, v61, v62, v63);
        v68 = objc_msgSend_blitCommandEncoder(v64, v65, v66, v67);
        objc_msgSend_copyFromTexture_toTexture_(v68, v69, a1, v52);
        objc_msgSend_endEncoding(v68, v70, v71, v72);
        objc_msgSend_commit(v64, v73, v74, v75);
        objc_msgSend_waitUntilCompleted(v64, v76, v77, v78);

        v95 = 0;
        v96 = 0;
        v97 = 0;
        v98 = objc_msgSend_width(a1, v79, v80, v81);
        v99 = objc_msgSend_height(a1, v82, v83, v84);
        v100 = 1;
        objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(v52, v85, v17, v16, &v95, 0);
      }

      else
      {
        v95 = 0;
        v96 = 0;
        v97 = 0;
        v98 = objc_msgSend_width(a1, v31, v32, v33);
        v99 = objc_msgSend_height(a1, v86, v87, v88);
        v100 = 1;
        objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(a1, v89, v17, v16, &v95, 0);
      }

      Image = CGBitmapContextCreateImage(v27);
      CGContextRelease(v27);
      free(v17);
      return Image;
    }
  }

  else if ((v5 - 70) < 5)
  {
    v9 = 16385;
LABEL_9:
    v10 = 8;
    goto LABEL_10;
  }

  v92 = sub_1AF0D5194();
  if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDE52BC(a1, v92, v93, v94);
  }

  return 0;
}

uint64_t sub_1AF1F2F0C(__int16 a1, const void *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a2 && (v12 = sub_1AF0D5194(), os_log_type_enabled(v12, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDE5348(v12, v13, v14, v15, v16, v17, v18, v19);
    if (a3)
    {
      goto LABEL_6;
    }
  }

  else if (a3)
  {
    goto LABEL_6;
  }

  v20 = sub_1AF0D5194();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDE53C0(v20, v21, v22, v23, v24, v25, v26, v27);
  }

LABEL_6:
  v28 = sub_1AF1F1980(a3);
  v29 = sub_1AF28844C(v28);
  v30 = sub_1AF2884B4(v28);
  v31 = sub_1AF1CAE64(v29, v30, a4, a5, a6);
  v34 = sub_1AF1ADD44(v31, a1);
  if (!v34)
  {
    v35 = sub_1AF0D5194();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB710(v35, v36, v32, v33, v37, v38, v39, v40);
    }
  }

  sub_1AF1CB108(v31, v34, v32, v33);
  if (v31)
  {
    CFRelease(v31);
  }

  *(v34 + 72) = CFRetain(a2);
  *(v34 + 80) = a3;
  return v34;
}

__IOSurface *sub_1AF1F3034(__IOSurface *result, const char *a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v4 = a2;
    v5 = result;
    v6 = a3;
    do
    {
      result = objc_msgSend_iosurface(*v4, a2, a3, a4);
      if (result)
      {
        v7 = result;
        IOSurfaceIncrementUseCount(result);
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = sub_1AF1F3100;
        v10[3] = &unk_1E7A7C918;
        v10[4] = v7;
        result = objc_msgSend_addCompletedHandler_(v5, v8, v10, v9);
      }

      ++v4;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_1AF1F31D4(unint64_t a1)
{
  v1 = a1;
  if (a1 < 3)
  {
    return qword_1AFE228E0[a1];
  }

  v3 = sub_1AF0D5194();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDE5438(v1, v3);
  }

  return 1;
}

uint64_t sub_1AF1F3234(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 2)
  {
    return 1;
  }

  v15 = v5;
  v16 = v4;
  v17 = v6;
  v18 = v7;
  v9 = (a2 - 1) | ((a2 - 1) >> 1);
  v10 = v9 | (v9 >> 2) | ((v9 | (v9 >> 2)) >> 4);
  v11 = (((v10 | (v10 >> 8)) >> 16) | v10 | (v10 >> 8)) + 1;
  if (v11 >= 2)
  {
    while ((objc_msgSend_supportsTextureSampleCount_(a1, a2, v11, a4, v15, v16, v17, v18) & 1) == 0)
    {
      v13 = v11 >> 1;
      v14 = v11 > 3;
      v11 >>= 1;
      if (!v14)
      {
        return v13;
      }
    }
  }

  return v11;
}

uint64_t sub_1AF1F32F0()
{
  if (qword_1ED731B08 != -1)
  {
    sub_1AFDE54B0();
  }

  return 0x20000;
}

void sub_1AF1F39FC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CFRelease(v1);
  }

  _Unwind_Resume(exception_object);
}

double sub_1AF1F3A28(uint64_t a1, __n128 *a2, void *a3, void *a4, __n128 *a5, int a6, double result)
{
  v36[1] = *MEMORY[0x1E69E9840];
  if (a6)
  {
    v15 = MEMORY[0x1EEE9AC00](a1, a2);
    v17 = v36 - v16;
    if (v18 >= 1)
    {
      v19.i64[0] = 0x8000000080000000;
      v19.i64[1] = 0x8000000080000000;
      v20 = v14;
      v21 = a2;
      v22 = v17;
      do
      {
        v23 = *v21++;
        v24 = v23;
        v25 = vmulq_f32(v15, v23);
        *v25.i32 = v15.f32[3] + (*&v25.i32[2] + vaddv_f32(*v25.i8));
        *v24.i32 = fmaxf(fabsf(*v25.i32) - v23.f32[3], 0.0);
        *v22++ = vbslq_s8(v19, v24, v25).u32[0];
        --v20;
      }

      while (v20);
    }

    MEMORY[0x1EEE9AC00](v12, v13);
    v28 = (v36 - v27);
    v29 = 0;
    v30 = (v36 + 2 * a6 - v27);
    v31 = vdupq_n_s64((a6 + 0x7FFFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFFLL);
    v32 = (&v36[1] - v27);
    do
    {
      v33 = vdupq_n_s64(v29);
      v34 = vmovn_s64(vcgeq_u64(v31, vorrq_s8(v33, xmmword_1AFE21110)));
      if (vuzp1_s8(vuzp1_s16(v34, *v31.i8), *v31.i8).u8[0])
      {
        *(v32 - 4) = v29;
      }

      if (vuzp1_s8(vuzp1_s16(v34, *&v31), *&v31).i8[1])
      {
        *(v32 - 3) = v29 | 1;
      }

      if (vuzp1_s8(vuzp1_s16(*&v31, vmovn_s64(vcgeq_u64(v31, vorrq_s8(v33, xmmword_1AFE21100)))), *&v31).i8[2])
      {
        *(v32 - 2) = v29 | 2;
        *(v32 - 1) = v29 | 3;
      }

      v35 = vmovn_s64(vcgeq_u64(v31, vorrq_s8(v33, xmmword_1AFE22910)));
      if (vuzp1_s8(*&v31, vuzp1_s16(v35, *&v31)).i32[1])
      {
        *v32 = v29 | 4;
      }

      if (vuzp1_s8(*&v31, vuzp1_s16(v35, *&v31)).i8[5])
      {
        v32[1] = v29 | 5;
      }

      if (vuzp1_s8(*&v31, vuzp1_s16(*&v31, vmovn_s64(vcgeq_u64(v31, vorrq_s8(v33, xmmword_1AFE22900))))).i8[6])
      {
        v32[2] = v29 | 6;
        v32[3] = v29 | 7;
      }

      v29 += 8;
      v32 += 8;
    }

    while (((a6 + 0x7FFFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFFLL) - ((a6 - 1) & 7) + 8 != v29);
    v36[0] = v26;
    sub_1AF1F90BC(v28, v30, v36, 126 - 2 * __clz(a6), 1);
    sub_1AF1F3D14(a3, v28, a6);
    sub_1AF1F3D14(a4, v28, a6);
    sub_1AF1F3DF0(a2, v28, a6);
    *&result = sub_1AF1F3DF0(a5, v28, a6).n128_u64[0];
  }

  return result;
}

void *sub_1AF1F3D14(void *a1, __int16 *a2, int a3)
{
  v4 = a2;
  v5 = a1;
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = v13 - v8;
  if (v7 >= 0x200)
  {
    v10 = 512;
  }

  else
  {
    v10 = v7;
  }

  bzero(v13 - v8, v10);
  result = memcpy(v9, v5, 8 * a3);
  if (a3 >= 1)
  {
    do
    {
      v12 = *v4++;
      *v5++ = *&v9[8 * v12];
      --v6;
    }

    while (v6);
  }

  return result;
}

__n128 sub_1AF1F3DF0(__n128 *a1, __int16 *a2, int a3)
{
  v4 = a2;
  v5 = a1;
  v10[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v10[-2 * v6];
  memcpy(v7, v5, 16 * a3);
  if (a3 >= 1)
  {
    do
    {
      v9 = *v4++;
      result = *&v7[2 * v9];
      *v5++ = result;
      --v6;
    }

    while (v6);
  }

  return result;
}

double sub_1AF1F3EA8(uint64_t a1, float32x4_t *a2, void *a3, void *a4, int a5, double result)
{
  v52[1] = *MEMORY[0x1E69E9840];
  if (a5)
  {
    v13 = MEMORY[0x1EEE9AC00](a1, a2);
    v16 = (v52 - v15);
    if (v17 >= 1)
    {
      v18 = vextq_s8(vuzp1q_s32(v13, v13), v13, 0xCuLL);
      v19 = vnegq_f32(v13);
      v20 = vdup_laneq_s32(v13, 3);
      v21 = a2 + 2;
      v22 = v12;
      v23 = v16;
      do
      {
        v24 = v21[-2];
        v25 = v21[-1];
        v26 = vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL);
        v27 = v21->f32[0];
        v14.i32[0] = v21->i32[1];
        v21 += 3;
        v28 = vmlaq_f32(vmulq_f32(v26, v19), v25, v18);
        v29 = vextq_s8(vuzp1q_s32(v28, v28), v28, 0xCuLL);
        v30 = vmlaq_f32(vmulq_f32(v26, vnegq_f32(v29)), v25, vextq_s8(vuzp1q_s32(v29, v29), v29, 0xCuLL));
        v31 = vmulq_f32(v30, v30);
        v32 = vmulq_f32(v13, v24);
        v31.f32[0] = v31.f32[1] + (v31.f32[2] + v31.f32[0]);
        v33 = vdupq_lane_s32(*v31.f32, 0);
        v34 = vextq_s8(vuzp1q_s32(v30, v30), v30, 0xCuLL);
        v33.i32[3] = 0;
        v35 = vrsqrteq_f32(v33);
        v36 = vmulq_f32(v35, vrsqrtsq_f32(v33, vmulq_f32(v35, v35)));
        v37 = v31.f32[0] != 0.0;
        v38 = vmulq_f32(v36, vrsqrtsq_f32(v33, vmulq_f32(v36, v36)));
        v39 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v37)), 0x1FuLL));
        v39.i32[3] = 0;
        v40 = vmulq_f32(v13, vmlsq_lane_f32(vmlaq_n_f32(v24, v25, v27), vbslq_s8(vcltzq_s32(v39), vmulq_f32(v34, v38), v34), v14, 0));
        *v40.i8 = vadd_f32(v20, vadd_f32(vzip1_s32(*&vextq_s8(v32, v32, 8uLL), *&vextq_s8(v40, v40, 8uLL)), vadd_f32(vzip1_s32(*v32.i8, *v40.i8), vzip2_s32(*v32.i8, *v40.i8))));
        v34.f32[0] = vmuls_lane_f32(*v40.i32, *v40.i8, 1);
        v41 = fminf(*v40.i32, *&v40.i32[1]);
        if (v34.f32[0] < 0.0)
        {
          v41 = 0.0;
        }

        *v23++ = v41;
        --v22;
      }

      while (v22);
    }

    MEMORY[0x1EEE9AC00](v10, v11);
    v44 = (v52 - v43);
    v45 = 0;
    v46 = (v52 + 2 * a5 - v43);
    v47 = vdupq_n_s64((a5 + 0x7FFFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFFLL);
    v48 = (&v52[1] - v43);
    do
    {
      v49 = vdupq_n_s64(v45);
      v50 = vmovn_s64(vcgeq_u64(v47, vorrq_s8(v49, xmmword_1AFE21110)));
      if (vuzp1_s8(vuzp1_s16(v50, *v47.i8), *v47.i8).u8[0])
      {
        *(v48 - 4) = v45;
      }

      if (vuzp1_s8(vuzp1_s16(v50, *&v47), *&v47).i8[1])
      {
        *(v48 - 3) = v45 | 1;
      }

      if (vuzp1_s8(vuzp1_s16(*&v47, vmovn_s64(vcgeq_u64(v47, vorrq_s8(v49, xmmword_1AFE21100)))), *&v47).i8[2])
      {
        *(v48 - 2) = v45 | 2;
        *(v48 - 1) = v45 | 3;
      }

      v51 = vmovn_s64(vcgeq_u64(v47, vorrq_s8(v49, xmmword_1AFE22910)));
      if (vuzp1_s8(*&v47, vuzp1_s16(v51, *&v47)).i32[1])
      {
        *v48 = v45 | 4;
      }

      if (vuzp1_s8(*&v47, vuzp1_s16(v51, *&v47)).i8[5])
      {
        v48[1] = v45 | 5;
      }

      if (vuzp1_s8(*&v47, vuzp1_s16(*&v47, vmovn_s64(vcgeq_u64(v47, vorrq_s8(v49, xmmword_1AFE22900))))).i8[6])
      {
        v48[2] = v45 | 6;
        v48[3] = v45 | 7;
      }

      v45 += 8;
      v48 += 8;
    }

    while (((a5 + 0x7FFFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFFLL) - ((a5 - 1) & 7) + 8 != v45);
    v52[0] = v42;
    sub_1AF1F90BC(v44, v46, v52, 126 - 2 * __clz(a5), 1);
    sub_1AF1F3D14(a3, v44, a5);
    sub_1AF1F3D14(a4, v44, a5);
    *&result = sub_1AF1F4234(a2, v44, a5).n128_u64[0];
  }

  return result;
}

__n128 sub_1AF1F4234(_OWORD *a1, __int16 *a2, int a3)
{
  v4 = a2;
  v5 = a1;
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v14[-2 * v7];
  memcpy(v8, v5, 48 * v9);
  if (a3 >= 1)
  {
    do
    {
      v11 = *v4++;
      v12 = &v8[6 * v11];
      v13 = *(v12 + 1);
      *v5 = *v12;
      v5[1] = v13;
      result = *(v12 + 2);
      v5[2] = result;
      v5 += 3;
      --v6;
    }

    while (v6);
  }

  return result;
}

double sub_1AF1F430C(float32x4_t *a1, void *a2, void *a3, int a4, double result)
{
  v29[1] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    MEMORY[0x1EEE9AC00](a1, a2);
    v13 = (v29 - v12);
    if (v14 >= 1)
    {
      v15 = a1 + 4;
      v16 = v11;
      v17 = v13;
      do
      {
        v18 = *v15;
        v15 += 5;
        *v17++ = vmuls_lane_f32(vmuls_lane_f32(v18.f32[0], *v18.f32, 1), v18, 2) * 8.0;
        --v16;
      }

      while (v16);
    }

    MEMORY[0x1EEE9AC00](v9, v10);
    v21 = (v29 - v20);
    v22 = 0;
    v23 = (v29 + 2 * a4 - v20);
    v24 = vdupq_n_s64((a4 + 0x7FFFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFFLL);
    v25 = (&v29[1] - v20);
    do
    {
      v26 = vdupq_n_s64(v22);
      v27 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(v26, xmmword_1AFE21110)));
      if (vuzp1_s8(vuzp1_s16(v27, *v24.i8), *v24.i8).u8[0])
      {
        *(v25 - 4) = v22;
      }

      if (vuzp1_s8(vuzp1_s16(v27, *&v24), *&v24).i8[1])
      {
        *(v25 - 3) = v22 | 1;
      }

      if (vuzp1_s8(vuzp1_s16(*&v24, vmovn_s64(vcgeq_u64(v24, vorrq_s8(v26, xmmword_1AFE21100)))), *&v24).i8[2])
      {
        *(v25 - 2) = v22 | 2;
        *(v25 - 1) = v22 | 3;
      }

      v28 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(v26, xmmword_1AFE22910)));
      if (vuzp1_s8(*&v24, vuzp1_s16(v28, *&v24)).i32[1])
      {
        *v25 = v22 | 4;
      }

      if (vuzp1_s8(*&v24, vuzp1_s16(v28, *&v24)).i8[5])
      {
        v25[1] = v22 | 5;
      }

      if (vuzp1_s8(*&v24, vuzp1_s16(*&v24, vmovn_s64(vcgeq_u64(v24, vorrq_s8(v26, xmmword_1AFE22900))))).i8[6])
      {
        v25[2] = v22 | 6;
        v25[3] = v22 | 7;
      }

      v22 += 8;
      v25 += 8;
    }

    while (((a4 + 0x7FFFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFFLL) - ((a4 - 1) & 7) + 8 != v22);
    v29[0] = v19;
    sub_1AF1FA324(v21, v23, v29, 126 - 2 * __clz(a4), 1);
    sub_1AF1F3D14(a2, v21, a4);
    sub_1AF1F3D14(a3, v21, a4);
    *&result = sub_1AF1F45B4(a1, v21, a4).n128_u64[0];
  }

  return result;
}

__n128 sub_1AF1F45B4(_OWORD *a1, __int16 *a2, int a3)
{
  v4 = a2;
  v5 = a1;
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v14[-2 * v7];
  memcpy(v8, v5, 80 * v9);
  if (a3 >= 1)
  {
    do
    {
      v11 = *v4++;
      v12 = &v8[10 * v11];
      v13 = *(v12 + 3);
      v5[2] = *(v12 + 2);
      v5[3] = v13;
      v5[4] = *(v12 + 4);
      result = *(v12 + 1);
      *v5 = *v12;
      v5[1] = result;
      v5 += 5;
      --v6;
    }

    while (v6);
  }

  return result;
}

void sub_1AF1F4690(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1, a2);
  v277 = v2;
  v281 = v3;
  v5 = v4;
  v7 = v6;
  v344 = *MEMORY[0x1E69E9840];
  v10 = v8[1];
  v9 = v8[2];
  v278 = *v8;
  v11 = v8[4];
  v12 = v8[5];
  v236 = v8;
  v13 = v8[6];
  v248 = sub_1AF12DDCC(v10);
  memset(v343, 0, 512);
  memset(v342, 0, 512);
  v323 = 0;
  v324 = &v323;
  v325 = 0x2020000000;
  v326 = 0;
  v322[0] = MEMORY[0x1E69E9820];
  v322[1] = 3221225472;
  v322[2] = sub_1AF1F5B38;
  v322[3] = &unk_1E7A7C9F8;
  v322[4] = &v323;
  v322[5] = v342;
  v322[6] = v343;
  v238 = v10;
  sub_1AF13656C(v9, v10, v322);
  v14 = *(v324 + 6);
  v310[0] = MEMORY[0x1E69E9820];
  v310[1] = 3221225472;
  v310[2] = sub_1AF1F5B98;
  v310[3] = &unk_1E7A7CA20;
  v15 = v7[3];
  v313 = v7[2];
  v314 = v15;
  v16 = v7[5];
  v315 = v7[4];
  v316 = v16;
  v17 = v7[1];
  v311 = *v7;
  v312 = v17;
  v317 = &v323;
  v247 = v11;
  v318 = v11;
  v321 = v14;
  v319 = v342;
  v320 = v343;
  v245 = v9;
  sub_1AF138EE0(v9, v310);
  LODWORD(v18) = v14;
  HIDWORD(v18) = *(v324 + 6) - v14;
  *(v277 + 72) = v18;
  sub_1AF12EE9C(v238, 0);
  v19 = v7[3];
  v337 = v7[2];
  v338 = v19;
  v20 = v7[5];
  v339 = v7[4];
  v340 = v20;
  v21 = v7[1];
  v335 = *v7;
  v336 = v21;
  sub_1AF1F3A28(&v335, v11, v343 + v14, v342 + v14, &v341[v14], *(v277 + 76), *&v335);
  v240 = v14;
  v22 = *(v324 + 6);
  v298[0] = MEMORY[0x1E69E9820];
  v298[1] = 3221225472;
  v298[2] = sub_1AF1F5C74;
  v298[3] = &unk_1E7A7CA48;
  v23 = v7[3];
  v301 = v7[2];
  v302 = v23;
  v24 = v7[5];
  v303 = v7[4];
  v304 = v24;
  v25 = v7[1];
  v299 = *v7;
  v300 = v25;
  v305 = &v323;
  v306 = v12;
  v309 = v22;
  v307 = v342;
  v308 = v343;
  sub_1AF139038(v9, v298);
  v26 = *(v324 + 6) - v22;
  *(v277 + 80) = __PAIR64__(v26, v22);
  v27 = v7[3];
  v337 = v7[2];
  v338 = v27;
  v28 = v7[5];
  v339 = v7[4];
  v340 = v28;
  v29 = v7[1];
  v335 = *v7;
  v336 = v29;
  sub_1AF1F3EA8(&v335, v12, v343 + v22, v342 + v22, v26, *&v335);
  v30 = *(v324 + 6);
  v286[0] = MEMORY[0x1E69E9820];
  v286[1] = 3221225472;
  v286[2] = sub_1AF1F5EAC;
  v286[3] = &unk_1E7A7CA70;
  v31 = v7[3];
  v289 = v7[2];
  v290 = v31;
  v32 = v7[5];
  v291 = v7[4];
  v292 = v32;
  v33 = v7[1];
  v287 = *v7;
  v288 = v33;
  v294 = v13;
  v293 = &v323;
  v297 = v30;
  v295 = v342;
  v296 = v343;
  sub_1AF13AE20(v9, v286);
  v34 = *(v324 + 6) - v30;
  *(v277 + 88) = __PAIR64__(v34, v30);
  sub_1AF1F430C(v13, v343 + v30, v342 + v30, v34, COERCE_DOUBLE(__PAIR64__(v34, v30)));
  v241 = sub_1AF12E2AC(v238);
  v244 = objc_msgSend_resourceManager(v241, v35, v36, v37);
  v280 = v5;
  if (v5)
  {
    v38 = (v278 + (v281 << 6) + 0x2000);
    v39 = v334;
    v40 = &v335;
    v41 = v333;
    v42 = v5;
    do
    {
      v43 = v38[1];
      *v40 = *v38;
      v40[1] = v43;
      v44 = v38[3];
      v40[2] = v38[2];
      v40[3] = v44;
      v345 = *v40->i8;
      v282 = *v40;
      v275 = v345.columns[1];
      v279 = v345.columns[2];
      v346 = __invert_f4(*v40->f32);
      v45 = v275;
      v46 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v279, v279), v279, 0xCuLL), vnegq_f32(v275)), v279, vextq_s8(vuzp1q_s32(v45, v45), v275, 0xCuLL));
      v47 = vextq_s8(vuzp1q_s32(v46, v46), v46, 0xCuLL);
      v48 = vmulq_f32(v282, v282);
      v49 = vmulq_f32(v45, v45);
      v50 = vmulq_f32(v282, v47);
      v51 = vadd_f32(vzip1_s32(*v48.i8, *v49.i8), vzip2_s32(*v48.i8, *v49.i8));
      v52 = vextq_s8(v48, v48, 8uLL);
      *v52.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v52.f32, *&vextq_s8(v49, v49, 8uLL)), v51));
      _NF = (v50.f32[2] + vaddv_f32(*v50.f32)) < 0.0;
      v54 = vmulq_f32(v279, v279);
      v55 = sqrtf(v54.f32[2] + vaddv_f32(*v54.f32));
      if (_NF)
      {
        v56 = -1.0;
      }

      else
      {
        v56 = 1.0;
      }

      v52.f32[2] = v55;
      v57 = vabsq_f32(vmulq_n_f32(v52, v56));
      *v41++ = fmaxf(fmaxf(v57.f32[0], v57.f32[2]), v57.f32[1]);
      *(v39 - 32) = v346;
      v39 += 64;
      v40 += 4;
      v38 += 4;
      --v42;
    }

    while (v42);
  }

  v58 = *(v324 + 6);
  if (v58 <= 1)
  {
    v58 = 1;
  }

  *(v277 + 112) = v58;
  CFXBufferAllocatorPerFrameAllocateWithLength(v236[3], 368 * v5 * v58);
  *(v277 + 96) = v59;
  *(v277 + 104) = v60;
  v61 = sub_1AF13AE54(v245);
  if (v61)
  {
    *(v277 + 120) = sub_1AF130664(v238, v61);
  }

  CPUPointer = CFXBufferSliceGetCPUPointer(*(v277 + 96), *(v277 + 104), v62, v63);
  v64 = v324;
  if (!*(v324 + 6))
  {
    goto LABEL_112;
  }

  v65 = 0;
  v283 = 0;
  v242 = v277 + 192;
  v243 = v277 + 128;
  __asm { FMOV            V0.4S, #1.0 }

  v246 = DWORD2(_Q0);
  v237 = v5;
  do
  {
    if (!v5)
    {
      goto LABEL_111;
    }

    v69 = 0;
    v239 = v65;
    do
    {
      v70 = *(v342 + v283);
      v71 = *(v343 + v283);
      v72 = CPUPointer + 368 * (v283 * v280 + v69);
      v73 = *(v277 + 88);
      if (v283 >= v73 && v283 < (v73 + HIDWORD(*(v277 + 88))))
      {
        *(v72 + 52) = 4;
        if (v70)
        {
          if (sub_1AF19CBB4(v70) != 4)
          {
            v97 = sub_1AF0D5194();
            if (os_log_type_enabled(v97, OS_LOG_TYPE_FAULT))
            {
              sub_1AFDE57F0(v331, &v332, v97);
            }
          }

          v98 = sub_1AF19B558(v70, 0);
          if (v98)
          {
            v99 = sub_1AF166598(v98);
          }

          else
          {
            v99 = 1.0;
          }

          *v72 = v99 * sub_1AF19C510(v70);
          v102 = sub_1AF19DF68(v70);
          *(v72 + 128) = v102;
          if (v102 < 0)
          {
            v103 = sub_1AF0D5194();
            if (os_log_type_enabled(v103, OS_LOG_TYPE_FAULT))
            {
              sub_1AFDE5834(v329, &v330, v103);
            }
          }

          *(v72 + 64) = sub_1AF19DEB0(v70);
          v104 = sub_1AF19DDEC(v70);
          v105.i64[0] = 0x3F0000003F000000;
          v105.i64[1] = 0x3F0000003F000000;
          v273 = vmulq_f32(v104, v105);
          v106 = v273;
          v106.f32[3] = fmaxf(fmaxf(v273.f32[0], v273.f32[2]), v273.f32[1]) * 0.1;
          *(v72 + 80) = v106;
          *(v72 + 132) = sub_1AF19DB90(v70);
          v107 = vmulq_f32(v273, sub_1AF19DC58(v70));
          *(v72 + 104) = v107.i32[2];
          *(v72 + 96) = v107.i64[0];
          v108 = vmulq_f32(v273, sub_1AF19DD18(v70));
          *(v72 + 120) = v108.i32[2];
          *(v72 + 112) = v108.i64[0];
          v109 = sub_1AF1B9B04(v71);
          v265 = v109[1];
          v267 = *v109;
          v261 = v109[3];
          v263 = v109[2];
          *(v72 + 16) = v261;
          v110 = (&v335 + 4 * v69);
          v272 = v110[1];
          v274 = *v110;
          v270 = v110[3];
          v271 = v110[2];
          *v111.i64 = sub_1AF1D0EBC(v248);
          v249 = v113;
          v251 = v112;
          v254 = v114;
          v257 = v111;
          v115 = 0;
          v328.columns[0] = v267;
          v328.columns[1] = v265;
          v328.columns[2] = v263;
          v328.columns[3] = v261;
          do
          {
            v284[0].columns[v115] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v274, COERCE_FLOAT(*&v328.columns[v115])), v272, *v328.columns[v115].f32, 1), v271, v328.columns[v115], 2), v270, v328.columns[v115], 3);
            ++v115;
          }

          while (v115 != 4);
          v347 = __invert_f4(v284[0]);
          v116 = 0;
          v328 = v347;
          do
          {
            v284[0].columns[v116] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v257, COERCE_FLOAT(*&v328.columns[v116])), v254, *v328.columns[v116].f32, 1), v251, v328.columns[v116], 2), v249, v328.columns[v116], 3);
            ++v116;
          }

          while (v116 != 4);
          v269 = v284[0];
        }

        *(v72 + 192) = v269.columns[0];
        *(v72 + 208) = v269.columns[1];
        *(v72 + 224) = v269.columns[2];
        *(v72 + 240) = v269.columns[3];
        *(v72 + 352) = sub_1AF19C3BC(v70);
        goto LABEL_108;
      }

      if (!v70)
      {
        *v72 = v341[v283];
        v100 = v247[(v283 - v240)];
        *(v72 + 16) = vaddq_f32(*(&v338 + 4 * v69), vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*(&v335 + 4 * v69), v100.f32[0]), *(&v335 + 4 * v69 + 1), *v100.f32, 1), *(&v337 + 4 * v69), v100, 2));
        v100.i32[0] = v100.i32[3];
        if (v100.f32[3] <= 0.01)
        {
          v100.f32[0] = INFINITY;
        }

        DWORD2(v101) = v246;
        *&v101 = -1.0 / v100.f32[3];
        *(&v101 + 1) = ((-1.0 / v100.f32[3]) * -0.0) + 1.0;
        *(&v101 + 3) = 1.0 / (v100.f32[0] * v100.f32[0]);
        *(v72 + 64) = v101;
        goto LABEL_108;
      }

      v75 = sub_1AF19CBB4(*(v342 + v283));
      sub_1AF19D69C(v70, v76, v77);
      *&v79 = v78;
      DWORD2(v79) = v80;
      HIDWORD(v79) = *(v72 + 12);
      *v72 = v79;
      *(v72 + 12) = sub_1AF19BDC0(v70);
      v81 = sub_1AF1B9B04(v71);
      v82 = 0;
      v83 = *(v81 + 16);
      v84 = *(v81 + 32);
      v85 = *(v81 + 48);
      v86 = (&v335 + 4 * v69);
      v87 = *v86;
      v88 = v86[1];
      v89 = v86[2];
      v90 = v86[3];
      v91 = CPUPointer + 128 + 368 * v65;
      v328.columns[0] = *v81;
      v328.columns[1] = v83;
      v328.columns[2] = v84;
      v328.columns[3] = v85;
      do
      {
        v284[0].columns[v82] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v87, COERCE_FLOAT(*&v328.columns[v82])), v88, *v328.columns[v82].f32, 1), v89, v328.columns[v82], 2), v90, v328.columns[v82], 3);
        ++v82;
      }

      while (v82 != 4);
      v260 = v284[0];
      v92 = vmulq_f32(v284[0].columns[2], v284[0].columns[2]);
      *&v93 = v92.f32[2] + vaddv_f32(*v92.f32);
      *v92.f32 = vrsqrte_f32(v93);
      *v92.f32 = vmul_f32(*v92.f32, vrsqrts_f32(v93, vmul_f32(*v92.f32, *v92.f32)));
      v94 = vmulq_n_f32(v284[0].columns[2], vmul_f32(*v92.f32, vrsqrts_f32(v93, vmul_f32(*v92.f32, *v92.f32))).f32[0]);
      *(v72 + 16) = v284[0].columns[3];
      *(v72 + 32) = v94;
      *&v95 = sub_1AF19C038(v70, 1, *&v333[v69]);
      *(v72 + 64) = v95;
      *(v72 + 352) = sub_1AF19C3BC(v70);
      if (v75 != 5)
      {
        if (v75 == 3)
        {
          sub_1AF19C0B8(v70);
          *(v72 + 80) = v96;
        }

        goto LABEL_56;
      }

      v117 = *(v70 + 320);
      if (v117 > 1)
      {
        if (v117 != 2)
        {
          if (v117 == 3)
          {
            *(v72 + 64) = *(v70 + 336);
          }

          else if (v117 == 4)
          {
            *(v72 + 68) = (*(v70 + 304) & 1);
            *(v72 + 64) = *(v70 + 352);
          }

          goto LABEL_55;
        }

LABEL_52:
        *(v72 + 72) = (*(v70 + 304) & 1);
        *(v72 + 64) = *(v70 + 336);
        goto LABEL_55;
      }

      if (!*(v70 + 320))
      {
        *(v72 + 64) = *(v70 + 336);
        goto LABEL_55;
      }

      if (v117 == 1)
      {
        goto LABEL_52;
      }

LABEL_55:
      *(v72 + 192) = v260;
LABEL_56:
      *(v72 + 52) = v75;
      *(v72 + 53) = sub_1AF19B9DC(v70);
      if (v283 > 7)
      {
        goto LABEL_108;
      }

      if (sub_1AF19B994(v70))
      {
        v118 = sub_1AF19B944(v70);
      }

      else
      {
        v118 = 0;
      }

      v255 = sub_1AF19B934(v70);
      v258 = sub_1AF19D618(v70);
      if (v118)
      {
        v119 = sub_1AF13AE5C(v245, v71);
        if (v119)
        {
          v120 = sub_1AF13AEA0(v245, v119);
          v121 = sub_1AF19ECC8(v70);
          v122 = sub_1AF19ED10(v70);
          v123 = memcpy((v72 + 256), v121, 16 * v122);
          v131 = *(v120 + 64);
          v132 = *(v120 + 80);
          v133 = *(v120 + 96);
          v134 = *(v120 + 112);
          if (v75 == 1)
          {
            v135 = 0;
            v136 = &v333[16 * v69 + 16];
            v137 = v136[1];
            v138 = v136[2];
            v139 = v136[3];
            v328.columns[0] = *v136;
            v328.columns[1] = v137;
            v328.columns[2] = v138;
            v328.columns[3] = v139;
            do
            {
              v284[0].columns[v135] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v131, COERCE_FLOAT(*&v328.columns[v135])), v132, *v328.columns[v135].f32, 1), v133, v328.columns[v135], 2), v134, v328.columns[v135], 3);
              ++v135;
            }

            while (v135 != 4);
            v140 = v284[0].columns[1];
            v141 = v284[0].columns[2];
            v142 = v284[0].columns[3];
            *(v72 + 192) = v284[0].columns[0];
            *(v72 + 208) = v140;
            *(v72 + 224) = v141;
            *(v72 + 240) = v142;
            *v143.i64 = sub_1AF1391F8();
            v147 = 0;
            v148 = *(v120 + 144);
            v149 = *(v120 + 160);
            v150 = *(v120 + 176);
            v328.columns[0] = *(v120 + 128);
            v328.columns[1] = v148;
            v328.columns[2] = v149;
            v328.columns[3] = v150;
            do
            {
              v284[0].columns[v147] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v143, COERCE_FLOAT(*&v328.columns[v147])), v144, *v328.columns[v147].f32, 1), v145, v328.columns[v147], 2), v146, v328.columns[v147], 3);
              ++v147;
            }

            while (v147 != 4);
            v151 = v284[0].columns[1];
            v152 = v284[0].columns[2];
            v153 = v284[0].columns[3];
            *(v72 + 80) = v284[0].columns[0];
            *(v72 + 96) = v151;
            *(v72 + 112) = v152;
            *(v72 + 128) = v153;
            *(v72 + 144) = *(v120 + 200);
          }

          else
          {
            *&v154 = sub_1AF13920C(v131, v132, v133, v134, *(v120 + 128), *(v120 + 144), *(v120 + 160), *(v120 + 176), v123, v124, v125, v126, v127, v128, v129, v130, *&v333[16 * v69 + 16], *&v333[16 * v69 + 20], *&v333[16 * v69 + 24], *&v334[64 * v69 + 16]);
            *(v72 + 192) = v154;
            *(v72 + 208) = v155;
            *(v72 + 224) = v156;
            *(v72 + 240) = v157;
            if (v75 == 2)
            {
              v158 = sub_1AF19BAD0(v70);
              if (v158)
              {
                v159 = v158;
                v160 = (v120 + 208);
                do
                {
                  v161 = *(v160 - 1);
                  HIDWORD(v161) = *(v91 - 52);
                  *(v91 - 64) = v161;
                  v162 = *v160;
                  HIDWORD(v162) = *(v91 + 12);
                  *v91 = v162;
                  v91 += 16;
                  v160 += 24;
                  --v159;
                }

                while (v159);
              }
            }
          }
        }

        if (*(v72 + 53) >= 2u)
        {
          v252 = sub_1AF19C6A4(v70);
          v163 = sub_1AF19BA38(v70);
          v164 = *(&v252 + 1);
          if (*&v252 >= *(&v252 + 1))
          {
            v164 = *&v252;
          }

          *(v72 + 48) = v163 / fmaxf(v164, 1.0);
        }

        v165 = sub_1AF19EC18(v70);
        if (v165 != 0.0)
        {
          *(v72 + 12) = v165;
        }
      }

      if (v258)
      {
        *v166.i32 = (180.0 / sub_1AF19BF64(v70)) * 0.5;
        *(v72 + 80) = vdup_lane_s32(v166, 0);
        v348 = __invert_f4(v260);
        v348.columns[3] = vmulq_f32(v348.columns[0], v348.columns[0]);
        v167 = vmulq_f32(v348.columns[1], v348.columns[1]);
        v168 = vmulq_f32(v348.columns[2], v348.columns[2]);
        v169 = vzip2q_s32(v348.columns[3], v168);
        v170 = vzip1q_s32(vzip1q_s32(v348.columns[3], v168), v167);
        v348.columns[3] = vtrn2q_s32(v348.columns[3], v167);
        v348.columns[3].i32[2] = v168.i32[1];
        v171 = vaddq_f32(vzip1q_s32(v169, vdupq_laneq_s32(v167, 2)), vaddq_f32(v170, v348.columns[3]));
        v348.columns[3].i64[0] = 0x80000000800000;
        v348.columns[3].i64[1] = 0x80000000800000;
        v172 = vcgeq_f32(v348.columns[3], v171);
        v171.i32[3] = 0;
        v173 = vrsqrteq_f32(v171);
        v174 = vmulq_f32(v173, vrsqrtsq_f32(v171, vmulq_f32(v173, v173)));
        v175 = v172;
        v175.i32[3] = 0;
        v176 = vbslq_s8(vcltzq_s32(v175), v171, vmulq_f32(v174, vrsqrtsq_f32(v171, vmulq_f32(v174, v174))));
        v177 = vmulq_n_f32(v348.columns[0], v176.f32[0]);
        v178 = vmulq_lane_f32(v348.columns[1], *v176.f32, 1);
        v179 = vmulq_laneq_f32(v348.columns[2], v176, 2);
        v180 = vuzp1q_s32(v179, v179);
        v181 = vuzp1q_s32(v178, v178);
        v182 = v177;
        if (v172.i32[0])
        {
          v183 = vmlaq_f32(vmulq_f32(vextq_s8(v180, v179, 0xCuLL), vnegq_f32(v178)), v179, vextq_s8(v181, v178, 0xCuLL));
          v182 = vextq_s8(vuzp1q_s32(v183, v183), v183, 0xCuLL);
        }

        v184 = vuzp1q_s32(v177, v177);
        v185 = v178;
        if (v172.i32[1])
        {
          v186 = vmlaq_f32(vmulq_f32(vextq_s8(v184, v177, 0xCuLL), vnegq_f32(v179)), v177, vextq_s8(v180, v179, 0xCuLL));
          v185 = vextq_s8(vuzp1q_s32(v186, v186), v186, 0xCuLL);
        }

        if (v172.i32[2])
        {
          v187 = vmlaq_f32(vmulq_f32(vextq_s8(v181, v178, 0xCuLL), vnegq_f32(v177)), v178, vextq_s8(v184, v177, 0xCuLL));
          v179 = vextq_s8(vuzp1q_s32(v187, v187), v187, 0xCuLL);
        }

        v188 = (*v182.i32 + *&v185.i32[1]) + v179.f32[2];
        if (v188 > 0.0)
        {
          v189 = sqrtf(v188 + 1.0);
          *v190.f32 = vsub_f32(*&vzip2q_s32(v185, vuzp1q_s32(v185, v179)), *&vtrn2q_s32(v179, vzip2q_s32(v179, v182)));
          v190.f32[2] = *&v182.i32[1] - *v185.i32;
          v190.f32[3] = v189 * v189;
          v191 = 0.5 / v189;
          goto LABEL_87;
        }

        if (*v182.i32 >= *&v185.i32[1] && *v182.i32 >= v179.f32[2])
        {
          v207 = sqrtf(((*v182.i32 + 1.0) - *&v185.i32[1]) - v179.f32[2]);
          v211.f32[0] = v207 * v207;
          v208 = *&v182.i32[1] + *v185.i32;
          v209 = vzip2q_s32(v182, v185).u64[0];
          LODWORD(v210) = vadd_f32(v209, *v179.f32).u32[0];
          HIDWORD(v210) = vsub_f32(v209, *&v179).i32[1];
          v211.f32[1] = v208;
          v211.i64[1] = v210;
          goto LABEL_102;
        }

        if (*&v185.i32[1] <= v179.f32[2])
        {
          v218 = vzip2q_s32(v182, v185).u64[0];
          v219 = __PAIR64__(v182.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v179.f32[2] + 1.0) - *v182.i32) - *&v185.i32[1])));
          v220 = vdup_lane_s32(*v185.i8, 0);
          *v190.f32 = vadd_f32(v218, *v179.f32);
          v221 = vsub_f32(*v182.i8, v220);
          v220.i32[0] = v219.i32[0];
          v220.i32[0] = vmul_f32(v219, v220).u32[0];
          v220.i32[1] = v221.i32[1];
          *&v190.u32[2] = v220;
          v191 = 0.5 / v219.f32[0];
LABEL_87:
          v192 = vmulq_n_f32(v190, v191);
        }

        else
        {
          v207 = sqrtf(((*&v185.i32[1] + 1.0) - *v182.i32) - v179.f32[2]);
          v211.f32[0] = *&v182.i32[1] + *v185.i32;
          v206 = vzip2q_s32(v182, v185).u64[0];
          v211.f32[1] = v207 * v207;
          *&v211.u32[2] = vext_s8(vadd_f32(*v179.f32, v206), vsub_f32(*v179.f32, v206), 4uLL);
LABEL_102:
          v192 = vmulq_n_f32(v211, 0.5 / v207);
        }

        *(v72 + 96) = v192;
        v212 = sub_1AF19BEF0(v70);
        *(v243 + 8 * v283) = objc_msgSend_iesTextureForProfile_renderContext_(v244, v213, v212, v241);
        *(v242 + 8 * v283) = 0;
        goto LABEL_108;
      }

      if (v255)
      {
        v285 = 0;
        v285 = sub_1AF0D839C();
        *(v243 + 8 * v283) = sub_1AF1306C0(v238, *(v70 + 272), &v285);
        *(v242 + 8 * v283) = sub_1AFDE8554(v244);
        sub_1AF19BC90(v70, v284);
        v193 = sub_1AF15E62C(v284, 0);
        v256 = *v193;
        v259 = *(v193 + 1);
        v250 = *(v193 + 3);
        v253 = *(v193 + 2);
        v349 = __invert_f4(v260);
        v194 = 0;
        v327 = v349;
        do
        {
          v328.columns[v194] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v256, COERCE_FLOAT(*&v327.columns[v194])), v259, *v327.columns[v194].f32, 1), v253, v327.columns[v194], 2), v250, v327.columns[v194], 3);
          ++v194;
        }

        while (v194 != 4);
        v266 = v328.columns[1];
        v268 = v328.columns[0];
        v262 = v328.columns[3];
        v264 = v328.columns[2];
        if (sub_1AF167434(*(v70 + 272)))
        {
          v195 = sub_1AF167220(*(v70 + 272));
          v196 = 0;
          v197 = *v195;
          v198 = v195[1];
          v199 = v195[2];
          v200 = v195[3];
          v327.columns[0] = v268;
          v327.columns[1] = v266;
          v327.columns[2] = v264;
          v327.columns[3] = v262;
          do
          {
            v328.columns[v196] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v197, COERCE_FLOAT(*&v327.columns[v196])), v198, *v327.columns[v196].f32, 1), v199, v327.columns[v196], 2), v200, v327.columns[v196], 3);
            ++v196;
          }

          while (v196 != 4);
          v201 = v328.columns[0];
          v202 = v328.columns[1];
          v203 = v328.columns[2];
          v204 = v328.columns[3];
        }

        else
        {
          v202 = v266;
          v201 = v268;
          v204 = v262;
          v203 = v264;
        }

        v214 = 0;
        v327.columns[0] = v201;
        v327.columns[1] = v202;
        v327.columns[2] = v203;
        v327.columns[3] = v204;
        do
        {
          v328.columns[v214] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE21120, COERCE_FLOAT(*&v327.columns[v214])), xmmword_1AFE21130, *v327.columns[v214].f32, 1), xmmword_1AFE20180, v327.columns[v214], 2), xmmword_1AFE21140, v327.columns[v214], 3);
          ++v214;
        }

        while (v214 != 4);
        v215 = v328.columns[1];
        v216 = v328.columns[2];
        v217 = v328.columns[3];
        *(v72 + 192) = v328.columns[0];
        *(v72 + 208) = v215;
        *(v72 + 224) = v216;
        *(v72 + 240) = v217;
        *(v72 + 12) = sub_1AF166598(*(v70 + 272));
      }

LABEL_108:
      ++v69;
      ++v65;
    }

    while (v69 != v280);
    v64 = v324;
    v5 = v237;
    v65 = v239;
LABEL_111:
    v65 += v5;
    ++v283;
  }

  while (v283 < *(v64 + 6));
LABEL_112:
  CFXBufferSliceDidModify(*(v277 + 96), *(v277 + 104));
  if (!v240)
  {
    goto LABEL_125;
  }

  v222 = 0;
  v223 = v342;
  v224 = v240;
  do
  {
    v225 = *v223;
    if (sub_1AF19CBB4(*v223) == 5 && *(v225 + 320) == 4)
    {
      v222 += 8 * *(v225 + 352);
    }

    ++v223;
    --v224;
  }

  while (v224);
  if (v222)
  {
    CFXBufferAllocatorPerFrameAllocateWithLength(v236[3], v222);
    v227 = v226;
    v229 = v228;
    v232 = CFXBufferSliceGetCPUPointer(v226, v228, v230, v231);
    v233 = (v277 + 272);
    v234 = v342;
    do
    {
      v235 = *v234;
      if (sub_1AF19CBB4(*v234) == 5 && *(v235 + 320) == 4)
      {
        memcpy((v232 + *v233), *(v235 + 360), 8 * *(v235 + 352));
      }

      ++v234;
      ++v233;
      --v240;
    }

    while (v240);
    CFXBufferSliceDidModify(v227, v229);
    *(v277 + 256) = CFXBufferSliceGetMTLBuffer(v227, v229);
    *(v277 + 264) = v229;
  }

  else
  {
LABEL_125:
    *(v277 + 256) = 0;
  }

  _Block_object_dispose(&v323, 8);
}

void *sub_1AF1F5B38(void *result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v4 = 0;
    v5 = 1;
    do
    {
      v6 = *(*(result[4] + 8) + 24);
      if (v6 > 0xFF)
      {
        break;
      }

      *(result[5] + 8 * v6) = *(a4 + 8 * v4);
      v7 = *(a3 + 8 * v4);
      v8 = result[6];
      v9 = *(result[4] + 8);
      v10 = *(v9 + 24);
      *(v9 + 24) = v10 + 1;
      *(v8 + 8 * v10) = v7;
      v4 = v5++;
    }

    while (v4 < a2);
  }

  return result;
}

uint64_t sub_1AF1F5B98(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    for (i = 0; i != a2; ++i)
    {
      v6 = 0;
      v7 = *(a5 + 16 * i);
      v8 = *(result + 80);
      v17[2] = *(result + 64);
      v17[3] = v8;
      v9 = *(result + 112);
      v17[4] = *(result + 96);
      v17[5] = v9;
      v10 = *(result + 48);
      v17[0] = *(result + 32);
      v17[1] = v10;
      while (1)
      {
        v11 = vmulq_f32(v7, v17[v6]);
        if ((COERCE_FLOAT(HIDWORD(v17[v6])) + (v11.f32[2] + vaddv_f32(*v11.f32))) < -v7.f32[3])
        {
          break;
        }

        if (++v6 == 6)
        {
          v12 = *(*(*(result + 128) + 8) + 24);
          if (v12 > 0xFF)
          {
            return result;
          }

          *(*(result + 136) + 16 * (v12 - *(result + 160))) = v7;
          *(*(result + 144) + 8 * *(*(*(result + 128) + 8) + 24)) = *(a4 + 8 * i);
          v13 = *(a3 + 8 * i);
          v14 = *(result + 152);
          v15 = *(*(result + 128) + 8);
          v16 = *(v15 + 24);
          *(v15 + 24) = v16 + 1;
          *(v14 + 8 * v16) = v13;
          break;
        }
      }
    }
  }

  return result;
}

void sub_1AF1F5C74(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v9 = 0;
    v10 = a2;
    do
    {
      if ((sub_1AF19B994(*(a4 + 8 * v9)) & 1) == 0 && (sub_1AF19B934(*(a4 + 8 * v9)) & 1) == 0 && sub_1AF19C1FC(*(a4 + 8 * v9)) > 0.0)
      {
        v11 = 0;
        v12 = a5 + 48 * v9;
        v13 = *v12;
        v14 = *(v12 + 16);
        v15 = *(v12 + 32);
        v16 = *(v12 + 40);
        v17 = *(a1 + 80);
        v42[2] = *(a1 + 64);
        v42[3] = v17;
        v18 = *(a1 + 112);
        v42[4] = *(a1 + 96);
        v42[5] = v18;
        v19 = *(a1 + 48);
        v42[0] = *(a1 + 32);
        v42[1] = v19;
        v20 = vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL);
        v21 = vdupq_lane_s32(v15, 1);
        v22 = vmlaq_n_f32(v13, v14, *v15.i32);
        while (1)
        {
          v23 = v42[v11];
          v24 = vmulq_f32(v13, v23);
          v25 = vmlaq_f32(vmulq_f32(v20, vnegq_f32(v23)), v14, vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL));
          v26 = vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL);
          v27 = vmlaq_f32(vmulq_f32(v20, vnegq_f32(v26)), v14, vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL));
          v28 = vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL);
          v29 = vmulq_f32(v27, v27);
          v29.f32[0] = v29.f32[1] + (v29.f32[2] + v29.f32[0]);
          v30 = vdupq_lane_s32(*v29.f32, 0);
          v30.i32[3] = 0;
          v31 = vrsqrteq_f32(v30);
          v32 = vmulq_f32(v31, vrsqrtsq_f32(v30, vmulq_f32(v31, v31)));
          v33 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v29.f32[0] != 0.0)), 0x1FuLL));
          v33.i32[3] = 0;
          v34 = vmulq_f32(v23, vmlsq_f32(v22, v21, vbslq_s8(vcltzq_s32(v33), vmulq_f32(vmulq_f32(v32, vrsqrtsq_f32(v30, vmulq_f32(v32, v32))), v28), v28)));
          v35 = vadd_f32(vdup_laneq_s32(v23, 3), vadd_f32(vzip1_s32(*&vextq_s8(v24, v24, 8uLL), *&vextq_s8(v34, v34, 8uLL)), vadd_f32(vzip1_s32(*v24.i8, *v34.i8), vzip2_s32(*v24.i8, *v34.i8))));
          if (vmuls_lane_f32(v35.f32[0], v35, 1) >= 0.0 && fminf(v35.f32[0], v35.f32[1]) < 0.0)
          {
            break;
          }

          if (++v11 == 6)
          {
            v36 = *(*(*(a1 + 128) + 8) + 24);
            if (v36 > 0xFF)
            {
              return;
            }

            v37 = *(a1 + 136) + 48 * (v36 - *(a1 + 160));
            *v37 = v13;
            *(v37 + 16) = v14;
            *(v37 + 32) = v15;
            *(v37 + 40) = v16;
            *(*(a1 + 144) + 8 * *(*(*(a1 + 128) + 8) + 24)) = *(a4 + 8 * v9);
            v38 = *(a3 + 8 * v9);
            v39 = *(a1 + 152);
            v40 = *(*(a1 + 128) + 8);
            v41 = *(v40 + 24);
            *(v40 + 24) = v41 + 1;
            *(v39 + 8 * v41) = v38;
            break;
          }
        }
      }

      ++v9;
    }

    while (v9 != v10);
  }
}

void sub_1AF1F5EAC(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v43[5] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v9 = 0;
    v10 = a2;
    do
    {
      if (sub_1AF19D968(*(a4 + 8 * v9)) != 1)
      {
        v11 = sub_1AF0D5194();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDE5878(v42, v43, v11);
        }
      }

      if (sub_1AF19C46C(*(a4 + 8 * v9)) > 0.0)
      {
        v12 = sub_1AF19B558(*(a4 + 8 * v9), 0);
        if (!v12 || sub_1AF166598(v12) > 0.0)
        {
          v14 = 0;
          v15 = (a5 + 80 * v9);
          v16 = *v15;
          v17 = v15[1];
          v18 = v15[2];
          v19 = v15[3];
          v20 = v15[4];
          *v13.i32 = fmaxf(fmaxf(v20.f32[0], COERCE_FLOAT(v15[4].i64[1])), COERCE_FLOAT(HIDWORD(v15[4].i64[0]))) * 0.1;
          v21 = vaddq_f32(v20, vdupq_lane_s32(v13, 0));
          v21.i32[3] = v20.i32[3];
          v22 = *(a1 + 80);
          v41[2] = *(a1 + 64);
          v41[3] = v22;
          v23 = *(a1 + 112);
          v41[4] = *(a1 + 96);
          v41[5] = v23;
          v24 = *(a1 + 48);
          v41[0] = *(a1 + 32);
          v41[1] = v24;
          while (1)
          {
            v25 = v41[v14];
            v26 = vmulq_f32(v17, v25);
            v27 = vmulq_f32(v18, v25);
            v28 = vmulq_f32(v19, v25);
            v29 = vmulq_f32(v16, v25);
            v30 = vzip1q_s32(v26, v28);
            v31 = vzip2q_s32(v26, v28);
            v32 = vzip1q_s32(v27, v29);
            v33 = vzip2q_s32(v27, v29);
            v34 = vaddq_f32(vzip2q_s32(v31, v33), vaddq_f32(vzip1q_s32(v31, v33), vaddq_f32(vzip1q_s32(v30, v32), vzip2q_s32(v30, v32))));
            v35 = vabsq_f32(vmulq_f32(v21, v34));
            if (v34.f32[3] <= -(v35.f32[2] + vaddv_f32(*v35.f32)))
            {
              break;
            }

            if (++v14 == 6)
            {
              v36 = (*(a1 + 136) + 80 * (*(*(*(a1 + 128) + 8) + 24) - *(a1 + 160)));
              *v36 = v16;
              v36[1] = v17;
              v36[2] = v18;
              v36[3] = v19;
              v36[4] = v21;
              *(*(a1 + 144) + 8 * *(*(*(a1 + 128) + 8) + 24)) = *(a4 + 8 * v9);
              v37 = *(a3 + 8 * v9);
              v38 = *(a1 + 152);
              v39 = *(*(a1 + 128) + 8);
              v40 = *(v39 + 24);
              *(v39 + 24) = v40 + 1;
              *(v38 + 8 * v40) = v37;
              if (*(*(*(a1 + 128) + 8) + 24) > 0xFFu)
              {
                return;
              }

              break;
            }
          }
        }
      }

      ++v9;
    }

    while (v9 != v10);
  }
}

float32x4_t sub_1AF1F60F4(float32x4_t *a1, unsigned int a2, unsigned int a3, unsigned __int32 a4, float32x4_t *a5, uint32x4_t a6)
{
  a6.i64[0] = __PAIR64__(a3, a2);
  a6.i32[2] = a4;
  v6 = a1[1];
  v7 = vmulq_f32(v6, vcvtq_f32_u32(a6));
  result = vaddq_f32(v6, v7);
  v9 = vmlaq_laneq_f32(a1[35], vsubq_f32(a1[39], a1[35]), v7, 2);
  v10 = vmlaq_laneq_f32(a1[36], vsubq_f32(a1[40], a1[36]), v7, 2);
  v11 = vsubq_f32(vmlaq_laneq_f32(a1[33], vsubq_f32(a1[37], a1[33]), v7, 2), v9);
  v12 = vmlaq_lane_f32(v9, v11, *v7.f32, 1);
  v13 = vsubq_f32(vmlaq_laneq_f32(a1[34], vsubq_f32(a1[38], a1[34]), v7, 2), v10);
  v14 = vmlaq_lane_f32(v9, v11, *result.f32, 1);
  v15 = vsubq_f32(vmlaq_lane_f32(v10, v13, *v7.f32, 1), v12);
  *a5 = vmlaq_n_f32(v12, v15, v7.f32[0]);
  a5[1] = vmlaq_n_f32(v12, v15, result.f32[0]);
  v16 = vsubq_f32(vmlaq_lane_f32(v10, v13, *result.f32, 1), v14);
  a5[2] = vmlaq_n_f32(v14, v16, v7.f32[0]);
  a5[3] = vmlaq_n_f32(v14, v16, result.f32[0]);
  v17 = vmlaq_laneq_f32(a1[35], vsubq_f32(a1[39], a1[35]), result, 2);
  v18 = vmlaq_laneq_f32(a1[36], vsubq_f32(a1[40], a1[36]), result, 2);
  v19 = vsubq_f32(vmlaq_laneq_f32(a1[33], vsubq_f32(a1[37], a1[33]), result, 2), v17);
  v20 = vmlaq_lane_f32(v17, v19, *v7.f32, 1);
  v21 = vsubq_f32(vmlaq_laneq_f32(a1[34], vsubq_f32(a1[38], a1[34]), result, 2), v18);
  v22 = vmlaq_lane_f32(v17, v19, *result.f32, 1);
  v23 = vsubq_f32(vmlaq_lane_f32(v18, v21, *v7.f32, 1), v20);
  a5[4] = vmlaq_n_f32(v20, v23, v7.f32[0]);
  a5[5] = vmlaq_n_f32(v20, v23, result.f32[0]);
  v24 = vsubq_f32(vmlaq_lane_f32(v18, v21, *result.f32, 1), v22);
  a5[6] = vmlaq_n_f32(v22, v24, v7.f32[0]);
  a5[7] = vmlaq_n_f32(v22, v24, result.f32[0]);
  return result;
}

uint64_t sub_1AF1F6204(uint64_t a1, void *__src, size_t __n)
{
  v3 = __n;
  *&v35[5] = *MEMORY[0x1E69E9840];
  v6 = __n;
  v7 = *(a1 + 512);
  v8 = v7 + __n;
  v9 = *(a1 + 516);
  v10 = v7;
  if (v8 >= v9)
  {
    if (v9)
    {
      v11 = *(a1 + 516);
    }

    else
    {
      v11 = 4096;
    }

    do
    {
      v12 = v11;
      v11 *= 2;
    }

    while (v12 < v8);
    *(a1 + 504) = CStackAllocatorReallocate(*(a1 + 2784), *(a1 + 504), v9, v12, 16);
    *(a1 + 656) = CStackAllocatorReallocate(*(a1 + 2784), *(a1 + 656), 4 * *(a1 + 516), 4 * v12, 16);
    *(a1 + 516) = v12;
    v10 = *(a1 + 512);
  }

  memcpy((*(a1 + 504) + v10), __src, v6);
  v13 = *(a1 + 512);
  if (v13 < v8)
  {
    v14 = a1 + 664;
    v15 = a1 + 1688;
    v16 = v7 + v3 - v13;
    do
    {
      v17 = *(a1 + 504);
      v18 = *(v17 + v13);
      v19 = *(v14 + 4 * *(v17 + v13));
      if (v19)
      {
        if (*(v17 + (v19 - 1)) != v18)
        {
          v20 = sub_1AF0D5194();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDE58BC(v34, v35, v20);
          }
        }

        v21 = *(v15 + 4 * v18);
        if (!v21)
        {
          v22 = sub_1AF0D5194();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDE5900(v32, &v33, v22);
          }
        }

        v23 = v21 - 1;
        if (*(*(a1 + 504) + v23) != v18)
        {
          v24 = sub_1AF0D5194();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDE5944(v30, &v31, v24);
          }
        }

        v25 = *(a1 + 656);
        *(v25 + 4 * v23) = v13 + 1;
        *(v25 + 4 * v13) = 0;
        *(v15 + 4 * v18) = v13 + 1;
        if (*(v25 + 4 * v13) > v8)
        {
          v26 = sub_1AF0D5194();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDE5988(v28, &v29, v26);
          }
        }
      }

      else
      {
        *(v14 + 4 * *(v17 + v13)) = v13 + 1;
        *(v15 + 4 * v18) = v13 + 1;
        *(*(a1 + 656) + 4 * v13) = 0;
      }

      ++v13;
      --v16;
    }

    while (v16);
    LODWORD(v13) = *(a1 + 512);
  }

  *(a1 + 512) = v8;
  return v13;
}

uint64_t sub_1AF1F6464(uint64_t a1, unsigned __int8 *__src, size_t __n)
{
  *&v16[5] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 4 * *__src + 664);
  if (v6)
  {
    v7 = *(a1 + 512);
    v8 = __n;
    while (1)
    {
      v9 = v6 - 1;
      if (__n < 2)
      {
        v11 = 1;
      }

      else
      {
        v10 = v6 <= v7 ? v7 : v6;
        v11 = v10 - v6 + 1;
        v12 = 1;
        while (v10 != v6)
        {
          if (*(*(a1 + 504) + v6) != __src[v12])
          {
            v11 = v12;
            break;
          }

          ++v12;
          ++v6;
          if (v8 == v12)
          {
            return v9;
          }
        }
      }

      if (v11 == __n)
      {
        break;
      }

      if (*(*(a1 + 656) + 4 * v9) > v7)
      {
        v13 = sub_1AF0D5194();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDE59CC(v15, v16, v13);
        }
      }

      v6 = *(*(a1 + 656) + 4 * v9);
      if (!v6)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
LABEL_19:
    LOWORD(v9) = sub_1AF1F6204(a1, __src, __n);
  }

  return v9;
}

uint64_t sub_1AF1F65B8(uint64_t *a1, char **a2, void *__src, size_t __n)
{
  v4 = __n;
  v8 = *(a2 + 2);
  v7 = *(a2 + 3);
  v9 = v8 + __n;
  if (v8 + __n >= v7)
  {
    if (v7)
    {
      v11 = *(a2 + 3);
    }

    else
    {
      v11 = 4096;
    }

    do
    {
      v12 = v11;
      v11 *= 2;
    }

    while (v12 < v9);
    v10 = CStackAllocatorReallocate(a1, *a2, v7, v12, 16);
    *a2 = v10;
    *(a2 + 3) = v12;
    v8 = *(a2 + 2);
  }

  else
  {
    v10 = *a2;
  }

  memcpy(&v10[v8], __src, v4);
  result = *(a2 + 4);
  *(a2 + 2) = v9;
  return result;
}

_DWORD *sub_1AF1F6658(uint64_t *a1, unsigned int *a2, unsigned int *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = *a3;
  bzero(v19, 0x400uLL);
  v7 = 0;
  if (v6)
  {
    v8 = v6;
    v9 = a2;
    do
    {
      v11 = *v9++;
      v10 = v11;
      if (v11)
      {
        ++v7;
      }

      ++v19[v10];
      --v8;
    }

    while (v8);
  }

  bzero(v18, 0x400uLL);
  v12 = 0;
  v13 = 0;
  do
  {
    v13 += v19[v12];
    v18[++v12] = v13;
  }

  while (v12 != 255);
  result = CStackAllocatorAllocate(a1, 4 * v7);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      v16 = a2[i];
      if (v16)
      {
        v17 = v18[v16];
        v18[v16] = v17 + 1;
        result[(v6 + ~v17)] = i;
      }
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1AF1F678C(uint64_t a1, uint64_t a2, int a3)
{
  *&v27[5] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 8);
  v7 = *a1 * HIDWORD(*a1);
  v8 = (v7 * v6);
  v25 = v7 * v6;
  v9 = CStackAllocatorAllocate(*(a1 + 2784), 4 * v8);
  v10 = v9;
  if (v8)
  {
    v11 = (a2 + 2);
    v12 = (a2 + 4);
    v13 = v9;
    do
    {
      if (a3 == 8)
      {
        v14 = HIBYTE(*(v12 - 1)) + *(v12 - 1) + *v12;
      }

      else
      {
        v14 = HIBYTE(*v11) + *v11;
      }

      *v13++ = v14;
      v11 += 2;
      v12 += 8;
      --v8;
    }

    while (v8);
  }

  result = sub_1AF1F6658(*(a1 + 2784), v9, &v25);
  v16 = v25;
  if (v25)
  {
    v17 = result;
    do
    {
      v19 = *v17++;
      v18 = v19;
      v20 = v10[v19];
      if (!v20)
      {
        v21 = sub_1AF0D5194();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDE5A10(v26, v27, v21);
        }
      }

      v22 = *(a1 + 488);
      if (a3 == 8)
      {
        v23 = 8 * v18;
        v24 = (v22 + *(a2 + 8 * v18));
      }

      else
      {
        v23 = 4 * v18;
        v24 = (v22 + *(a2 + 4 * v18));
      }

      result = sub_1AF1F6464(a1, v24, v20);
      *(a2 + v23) = result;
      --v16;
    }

    while (v16);
  }

  return result;
}

float32x4_t *sub_1AF1F6920(float32x4_t *result, int a2)
{
  v3 = &result->i32[a2 & 3];
  v4 = *v3;
  if (*v3)
  {
    v5 = result;
    v6 = 0;
    v7 = (v3 + 4);
    v8 = vld1q_dup_f32(v7);
    v53 = v8;
    v54 = result[((2 * a2) | 1u) + 2];
    v9 = 0uLL;
    v52 = vsubq_f32(vnegq_f32(result[(2 * a2) + 2]), v54);
    v10 = vmlaq_f32(v54, 0, v52);
    v11 = vmulq_f32(v10, v10);
    v8.f32[0] = v11.f32[2] + vaddv_f32(*v11.f32);
    *v11.f32 = vrsqrte_f32(v8.u32[0]);
    *v11.f32 = vmul_f32(*v11.f32, vrsqrts_f32(v8.u32[0], vmul_f32(*v11.f32, *v11.f32)));
    v12 = vmulq_n_f32(v10, vmul_f32(*v11.f32, vrsqrts_f32(v8.u32[0], vmul_f32(*v11.f32, *v11.f32))).f32[0]);
    v13 = result + 171;
    v14 = result[9].i64[0] + 32;
    do
    {
      v15 = v13->i64[a2];
      v16 = v5[173].i32[2];
      v57 = v12;
      v58 = vaddq_f32(v53, v9);
      v17 = vmlaq_f32(v54, v52, v58);
      v18 = vmulq_f32(v17, v17);
      *&v19 = v18.f32[2] + vaddv_f32(*v18.f32);
      *v18.f32 = vrsqrte_f32(v19);
      *v18.f32 = vmul_f32(*v18.f32, vrsqrts_f32(v19, vmul_f32(*v18.f32, *v18.f32)));
      v20 = vmulq_n_f32(v17, vmul_f32(*v18.f32, vrsqrts_f32(v19, vmul_f32(*v18.f32, *v18.f32))).f32[0]);
      v55 = vnegq_f32(v20);
      v56 = v20;
      v60[0] = vdupq_lane_s32(*v12.i8, 0);
      v60[1] = vdupq_lane_s32(*v12.i8, 1);
      v60[2] = vdupq_laneq_s32(v12, 2);
      v60[3] = vdupq_laneq_s32(v12, 3);
      v21 = (v15 + 4 * (v16 * v6));
      v59[0] = vdupq_lane_s32(*v55.f32, 0);
      v59[1] = vdupq_lane_s32(*v55.f32, 1);
      v59[2] = vdupq_laneq_s32(v55, 2);
      v59[3] = vdupq_laneq_s32(v55, 3);
      bzero(v21, (4 * v16));
      sub_1AF1DAA58(v5[9].i64[1], v5[10].i32[0], v60, v59, v5[10].i64[1]);
      memcpy(&v21[4 * v5[169].i64[1]], v5[10].i64[1], v5[11].u32[0]);
      sub_1AF1DA710(v5[11].i64[1], v5[12].i32[0], v60, v59, v5[12].i64[1]);
      result = memcpy(&v21[4 * v5[170].i64[0]], v5[12].i64[1], v5[13].u32[0]);
      v22 = v5[170].u32[3];
      if (v22 >= 1)
      {
        v23 = 0;
        v24 = v14;
        do
        {
          v25 = v24[-2];
          v26 = v24[-1];
          v27 = v24[1];
          v28 = v24[2];
          v29 = vmulq_f32(v57, v26);
          v30 = vmulq_f32(v57, *v24);
          v31 = vmulq_f32(v57, v27);
          v32 = vmulq_f32(v57, v25);
          v33 = vzip1q_s32(v29, v31);
          v34 = vzip2q_s32(v29, v31);
          v35 = vzip1q_s32(v30, v32);
          v36 = vzip2q_s32(v30, v32);
          v37 = vaddq_f32(vzip2q_s32(v34, v36), vaddq_f32(vzip1q_s32(v34, v36), vaddq_f32(vzip1q_s32(v33, v35), vzip2q_s32(v33, v35))));
          v38 = vabsq_f32(vmulq_f32(v28, v37));
          v50 = v37.f32[3] > -(v38.f32[2] + vaddv_f32(*v38.f32));
          v39 = vmulq_f32(v26, v55);
          v40 = vmulq_f32(*v24, v55);
          v41 = vmulq_f32(v27, v55);
          v42 = vmulq_f32(v25, v55);
          v43 = vzip1q_s32(v39, v41);
          v44 = vzip2q_s32(v39, v41);
          v45 = vzip1q_s32(v40, v42);
          v46 = vzip2q_s32(v40, v42);
          v47 = vaddq_f32(vzip2q_s32(v44, v46), vaddq_f32(vzip1q_s32(v44, v46), vaddq_f32(vzip1q_s32(v43, v45), vzip2q_s32(v43, v45))));
          v48 = vabsq_f32(vmulq_f32(v28, v47));
          v49 = -(v48.f32[2] + vaddv_f32(*v48.f32));
          v50 = v50 && v47.f32[3] > v49;
          if (v50)
          {
            v51 = &v21[4 * v5[170].i64[1]];
            v51[v23 >> 3] |= 1 << (v23 & 7);
          }

          ++v23;
          v24 += 5;
        }

        while (v22 != v23);
      }

      ++v6;
      v12 = v56;
      v9 = v58;
    }

    while (v6 != v4);
  }

  return result;
}

double sub_1AF1F6C30(uint64_t a1)
{
  *a1 = xmmword_1AFE22920;
  *(a1 + 16) = 0x4000000040;
  *&result = 0x40000000400;
  *(a1 + 32) = xmmword_1AFE22930;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  return result;
}

id *sub_1AF1F6C5C(id *a1)
{
  for (i = 0; i != 7; ++i)
  {
    v3 = &a1[i];
    v4 = a1[i + 9];
    if (v4)
    {
      CFRelease(v4);
      v3[9] = 0;
    }

    v5 = v3[16];
    if (v5)
    {
      CFRelease(v5);
      v3[16] = 0;
    }
  }

  return a1;
}

void sub_1AF1F6CD8(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1EEE9AC00](a1, a2);
  v5 = v3;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v226 = v4;
  v12 = v2;
  v14 = v13;
  *(&v302[2] + 4) = *MEMORY[0x1E69E9840];
  v13[19] = 0u;
  v13[20] = 0u;
  v13[17] = 0u;
  v13[18] = 0u;
  v13[15] = 0u;
  v13[16] = 0u;
  v13[13] = 0u;
  v13[14] = 0u;
  v13[11] = 0u;
  v13[12] = 0u;
  v13[9] = 0u;
  v13[10] = 0u;
  v13[7] = 0u;
  v13[8] = 0u;
  v13[5] = 0u;
  v13[6] = 0u;
  v13[3] = 0u;
  v13[4] = 0u;
  v13[1] = 0u;
  v13[2] = 0u;
  *v13 = 0u;
  v15 = *(v8 + 14696);
  v17 = (v8 + 96 * v16);
  v18 = v17[99];
  v239 = v17[98];
  v240 = v18;
  v19 = v17[101];
  v241 = v17[100];
  v242 = v19;
  v20 = v17[97];
  v237 = v17[96];
  v238 = v20;
  v230 = v8;
  v231 = v15;
  v232 = v6;
  v233 = v3;
  if (v3)
  {
    v2 = CFRetain(v3);
  }

  cf = v5;
  v234 = v296;
  v235 = v295;
  v236 = v294;
  v260 = v239;
  v261 = v240;
  v262 = v241;
  v263 = v242;
  v258 = v237;
  v259 = v238;
  sub_1AF1F4690(v2, &v258);
  if (sub_1AF138684(v7))
  {
    v21 = sub_1AF12F518(v15);
    CStackAllocatorPushFrame(v21);
    v184 = v21;
    v23 = vcvtq_f32_u32(*v12);
    v24 = v12[1].i64[0];
    if (v24)
    {
      v25 = v24 * v11;
      *(v14 + 16) = v25;
      v22 = v226;
      v26.f32[0] = v226.n128_u32[0] / v25;
      v26.i32[1] = v23.i32[1];
      v26.i64[1] = v23.i64[1];
      v22.n128_u32[0] = (v25 * ceilf(v26.f32[0]));
      v226.n128_u64[0] = v22.n128_u64[0];
      v23 = v26;
    }

    if (HIDWORD(v24))
    {
      v27 = HIDWORD(v24) * v11;
      v29.i32[0] = v226.n128_u32[0];
      v28.i32[0] = v23.i32[0];
      v28.f32[1] = v226.n128_u32[1] / v27;
      *(v14 + 17) = v27;
      v28.i64[1] = v23.i64[1];
      v29.i32[1] = (v27 * ceilf(v28.f32[1]));
      v23 = v28;
    }

    else
    {
      v29 = v226.n128_u64[0];
    }

    v22.n128_u64[0] = vcvt_u32_f32(vrndp_f32(*v23.f32));
    __asm { FMOV            V1.4S, #1.0 }

    v35 = vdivq_f32(_Q1, v23);
    _Q1.f32[0] = *(v9 + 14704);
    v36 = *(v9 + 14712);
    *v37.f32 = vcvt_f32_u32(v22.n128_u64[0]);
    *v38.f32 = vcvt_f32_u32(v29);
    v37.i64[1] = __PAIR64__(COERCE_UNSIGNED_INT(vmuls_lane_f32(_Q1.f32[0], v23, 2)), vextq_s8(v23, v23, 8uLL).u32[0]);
    v38.f32[2] = _Q1.f32[0] - v36;
    v38.f32[3] = _Q1.f32[0] - v36;
    v222 = v35;
    v224 = v22;
    v14[2] = v35;
    v14[3] = vdivq_f32(v37, v38);
    v186 = v23.f32[2];
    v190 = v22.n128_u32[1];
    v39 = v22.n128_u32[0];
    v194 = *(v14 + 23);
    if (v194)
    {
      v40 = 8;
    }

    else
    {
      v40 = 4;
    }

    v181 = v40;
    if (v194)
    {
      v41 = 3;
    }

    else
    {
      v41 = 2;
    }

    v42 = (v22.n128_u32[1] * v23.f32[2] * v22.n128_u32[0]) << v41;
    CFXBufferAllocatorPerFrameAllocateWithLength(cf, v42);
    v44 = v43;
    v46 = v45;
    *v14 = v43;
    *(v14 + 1) = v45;
    CPUPointer = CFXBufferSliceGetCPUPointer(v43, v45, v47, v48);
    v50 = v224;
    v50.i32[2] = v186;
    v227 = v50;
    bzero(CPUPointer, v42);
    bzero(&v268, 0xA60uLL);
    v258 = v227;
    v259 = v222;
    v262 = v239;
    v263 = v240;
    v264 = v241;
    v265 = v242;
    v260 = v237;
    v261 = v238;
    v266 = v296;
    v267 = v295;
    v268 = v294;
    *v293 = v184;
    v51 = *(v14 + 9);
    v223 = v51;
    v52 = HIDWORD(v51);
    v270 = (HIDWORD(v51) + 3) >> 2;
    if ((HIDWORD(v51) + 3) >= 4)
    {
      Aligned = CStackAllocatorAllocateAligned(v184, ((HIDWORD(v51) + 3) >> 2) << 6, 16, 2);
      sub_1AF1DA990(Aligned, v266, v52);
      v272 = (v270 + 1) >> 1;
      v271 = CStackAllocatorAllocateAligned(v184, v272, 16, 2);
    }

    v53 = *(v14 + 10);
    v54 = HIDWORD(v53);
    v274 = (HIDWORD(v53) + 3) >> 2;
    v221 = v53;
    if ((HIDWORD(v53) + 3) >= 4)
    {
      v273 = CStackAllocatorAllocateAligned(v184, ((HIDWORD(v53) + 3) >> 2) << 7, 16, 2);
      sub_1AF1DA5E0(v273, v295, v54);
      v276 = (v274 + 1) >> 1;
      v275 = CStackAllocatorAllocateAligned(v184, v276, 16, 2);
      HIDWORD(v53) = HIDWORD(v221);
    }

    v179 = v46;
    v180 = v44;
    v55 = 0;
    HIDWORD(v56) = HIDWORD(v223);
    LODWORD(v56) = 0;
    LODWORD(v53) = (v52 + 31) >> 5;
    v285 = v56;
    v286 = v53;
    v57 = *(v14 + 11);
    v220 = v57;
    LODWORD(v57) = ((v54 + 31) >> 5) + v53;
    v287 = v57;
    v292 = v57 + ((HIDWORD(v57) + 31) >> 5);
    v58 = 4 * v292;
    do
    {
      v229 = v227;
      v288[v55] = CStackAllocatorAllocateZero(v184, (*(&v229 & 0xFFFFFFFFFFFFFFF3 | (4 * (v55 & 3))) * v58));
      v290 = CStackAllocatorAllocate(v184, v58);
      v291 = CStackAllocatorAllocate(v184, v58);
      sub_1AF1F6920(&v258, v55++);
    }

    while (v55 != 3);
    v182 = v14;
    sub_1AF1F7BAC(&v237, v284);
    if (v186)
    {
      v191 = 0;
      v59.i64[1] = v224.n128_i64[1];
      *v59.f32 = vceqz_s32(v224.n128_u64[0]);
      v218 = *(v14 + 13);
      v219 = *(v14 + 12);
      v185 = v59.i8[4];
      v189 = v59.i8[0];
      v193 = v39;
      v192 = CPUPointer;
      do
      {
        if (v292)
        {
          if (*(v289 + 4 * v292 * v191))
          {
            goto LABEL_29;
          }

          v60 = 1;
          do
          {
            v61 = v60;
            if (v292 == v60)
            {
              break;
            }
          }

          while (!*(v289 + 4 * v292 * v191 + 4 * v60++));
          if (v61 < v292)
          {
LABEL_29:
            v59 = sub_1AF1F60F4(&v258, 0, 0, v191, &v250, v59);
            if ((v185 & 1) == 0)
            {
              v207 = 0;
              v203 = v250;
              v204 = v251;
              v201 = v255;
              v202 = vsubq_f32(v251, v250);
              v198 = v252;
              v199 = vsubq_f32(v255, v254);
              v195 = v257;
              v200 = v254;
              v196 = v256;
              v197 = v253;
              v59 = vsubq_f32(v256, v254);
              v187 = v59;
              v188 = vsubq_f32(v252, v250);
              do
              {
                v65 = v292;
                if (v292)
                {
                  v66 = 0;
                  v67 = v291;
                  v68 = (v289 + 4 * v191 * v292);
                  v69 = (v288[1] + 4 * v292 * v207);
                  do
                  {
                    v71 = *v69++;
                    v70 = v71;
                    v72 = *v68++;
                    v73 = v72 & v70;
                    *v67++ = v73;
                    v66 |= v73;
                    --v65;
                  }

                  while (v65);
                  if (v66 && (v189 & 1) == 0)
                  {
                    v74 = 0;
                    v59 = vmulq_n_f32(v187, v207);
                    v205 = v59;
                    v206 = vmulq_n_f32(v188, v207);
                    v75 = (v207 + v191 * v190) * v39;
                    do
                    {
                      v76 = v292;
                      if (v292)
                      {
                        v77 = 0;
                        v78 = v290;
                        v79 = v291;
                        v80 = (v288[0] + 4 * v292 * v74);
                        v81 = v290;
                        do
                        {
                          v83 = *v79++;
                          v82 = v83;
                          v84 = *v80++;
                          v85 = v84 & v82;
                          *v81++ = v85;
                          v77 |= v85;
                          --v76;
                        }

                        while (v76);
                        if (v77)
                        {
                          v208 = v75;
                          v209 = v74;
                          v86 = vmlaq_n_f32(v206, v202, v74);
                          v87 = vmlaq_n_f32(v205, v199, v74);
                          v88 = vaddq_f32(v203, v86);
                          *v243 = v88;
                          *&v243[16] = vaddq_f32(v204, v86);
                          v244 = vaddq_f32(v198, v86);
                          v245 = vaddq_f32(v86, v197);
                          v246 = vaddq_f32(v200, v87);
                          v247 = vaddq_f32(v201, v87);
                          v248 = vaddq_f32(v196, v87);
                          v249 = vaddq_f32(v87, v195);
                          v88.i32[3] = 0;
                          v89 = 16;
                          v90 = v88;
                          do
                          {
                            v91 = *&v243[v89];
                            v91.i32[3] = 0;
                            v88 = vminnmq_f32(v88, v91);
                            v90 = vmaxnmq_f32(v90, v91);
                            v89 += 16;
                          }

                          while (v89 != 128);
                          v92.i64[0] = 0x3F0000003F000000;
                          v92.i64[1] = 0x3F0000003F000000;
                          v96 = vmulq_f32(vaddq_f32(v90, v88), v92);
                          v93 = vmulq_f32(vsubq_f32(v90, v88), v92);
                          v94 = vmulq_f32(v93, v93);
                          v95 = sqrtf(v94.f32[2] + vaddv_f32(*v94.f32));
                          *&v96.i32[3] = v95;
                          v225 = v95;
                          v228 = v96;
                          v281 = 0;
                          v97 = HIDWORD(v287);
                          if ((HIDWORD(v287) + 31) >= 0x20)
                          {
                            v211 = &v78[v287];
                            v212 = 0;
                            v210 = (HIDWORD(v287) + 31) >> 5;
                            v102 = v95 * v95;
                            v215 = vdupq_laneq_s32(v96, 3);
                            while (1)
                            {
                              v103 = v211[v212];
                              if (v103)
                              {
                                break;
                              }

LABEL_56:
                              if (++v212 == v210)
                              {
                                goto LABEL_44;
                              }
                            }

                            v104 = 32 * v212;
                            while (1)
                            {
                              v105 = __clz(__rbit32(v103));
                              v106 = v105 | v104;
                              if ((v105 | v104) >= v97)
                              {
                                v107 = sub_1AF0D5194();
                                if (os_log_type_enabled(v107, OS_LOG_TYPE_FAULT))
                                {
                                  sub_1AFDE5A54(v297, &v298, v107);
                                }
                              }

                              v108 = &v294[5 * v106];
                              v109 = vsubq_f32(v228, *v108);
                              v110 = vmulq_f32(v108[1], v109);
                              v111 = vmulq_f32(v109, v108[2]);
                              v112 = vmulq_f32(v109, v108[3]);
                              v113 = vzip2q_s32(v110, v112);
                              v114 = vzip1q_s32(vzip1q_s32(v110, v112), v111);
                              v115 = vtrn2q_s32(v110, v111);
                              v115.i32[2] = v112.i32[1];
                              v116 = vsubq_f32(vabsq_f32(vaddq_f32(vzip1q_s32(v113, vdupq_laneq_s32(v111, 2)), vaddq_f32(v114, v115))), v108[4]);
                              v116.i32[3] = 0;
                              v117 = vmaxnmq_f32(v116, 0);
                              v118 = vmulq_f32(v117, v117);
                              if ((v118.f32[2] + vaddv_f32(*v118.f32)) <= v102)
                              {
                                v119 = v281++;
                                v277[v119] = v106 + v220;
                                if (*(CFXBufferSliceGetCPUPointer(v219, v218, v63, v64) + 368 * (v106 + v220)) >= 1.0)
                                {
                                  v121 = v294[5 * v106 + 4];
                                  *v120.i32 = fmaxf(fmaxf(v121.f32[0], COERCE_FLOAT(*(&v294[5 * v106 + 4] + 1))), COERCE_FLOAT(HIDWORD(*&v294[5 * v106 + 4]))) * 0.090909;
                                  v122 = vsubq_f32(v121, vdupq_lane_s32(v120, 0));
                                  v123 = vsubq_f32(v228, *v108);
                                  v124 = vmulq_f32(v108[1], v123);
                                  v125 = vmulq_f32(v123, v108[2]);
                                  v126 = vmulq_f32(v123, v108[3]);
                                  v127 = vzip2q_s32(v124, v126);
                                  v128 = vzip1q_s32(vzip1q_s32(v124, v126), v125);
                                  v129 = vtrn2q_s32(v124, v125);
                                  v129.i32[2] = v126.i32[1];
                                  v130 = vcgeq_f32(vsubq_f32(v122, vabsq_f32(vaddq_f32(vzip1q_s32(v127, vdupq_laneq_s32(v125, 2)), vaddq_f32(v128, v129)))), v215);
                                  v130.i32[3] = v130.i32[2];
                                  if ((vminvq_u32(v130) & 0x80000000) != 0)
                                  {
                                    break;
                                  }
                                }
                              }

                              v103 &= ~(1 << v105);
                              if (!v103)
                              {
                                goto LABEL_56;
                              }
                            }
                          }

LABEL_44:
                          v98 = &v277[v281];
                          v279 = 0;
                          v99 = v290;
                          v100 = HIDWORD(v285);
                          if ((HIDWORD(v285) + 31) >= 0x20)
                          {
                            v131 = 0;
                            v213 = (HIDWORD(v285) + 31) >> 5;
                            v216 = &v290[v285];
                            do
                            {
                              v132 = *&v216[4 * v131];
                              if (v132)
                              {
                                v133 = 32 * v131;
                                do
                                {
                                  v134 = __clz(__rbit32(v132));
                                  v135 = v134 | v133;
                                  if ((v134 | v133) >= v100)
                                  {
                                    v136 = sub_1AF0D5194();
                                    if (os_log_type_enabled(v136, OS_LOG_TYPE_FAULT))
                                    {
                                      sub_1AFDE5A54(v299, &v300, v136);
                                    }
                                  }

                                  v137 = v225 + COERCE_FLOAT(HIDWORD(v296[v135]));
                                  v138 = vsubq_f32(v296[v135], v228);
                                  v139 = vmulq_f32(v138, v138);
                                  if ((v139.f32[2] + vaddv_f32(*v139.f32)) <= (v137 * v137))
                                  {
                                    v140 = v279++;
                                    v98[v140] = v223 + v135;
                                  }

                                  v132 &= ~(1 << v134);
                                }

                                while (v132);
                              }

                              ++v131;
                            }

                            while (v131 != v213);
                            v101 = v279;
                            v99 = v290;
                          }

                          else
                          {
                            v101 = 0;
                          }

                          v280 = 0;
                          v141 = HIDWORD(v286);
                          if ((HIDWORD(v286) + 31) >= 0x20)
                          {
                            v143 = 0;
                            v144 = &v98[v101];
                            v214 = (HIDWORD(v286) + 31) >> 5;
                            v217 = &v99[v286];
                            do
                            {
                              v145 = v217[v143];
                              if (v145)
                              {
                                v146 = 32 * v143;
                                do
                                {
                                  v147 = __clz(__rbit32(v145));
                                  v148 = v147 | v146;
                                  if ((v147 | v146) >= v141)
                                  {
                                    v149 = sub_1AF0D5194();
                                    if (os_log_type_enabled(v149, OS_LOG_TYPE_FAULT))
                                    {
                                      sub_1AFDE5A54(v301, v302, v149);
                                    }
                                  }

                                  v150 = &v295[3 * v148];
                                  v151 = v150[2].f32[0];
                                  v152 = vsubq_f32(v228, *v150);
                                  v153 = vmulq_f32(v152, v152);
                                  v154 = v153.f32[2] + vaddv_f32(*v153.f32);
                                  if (v154 <= ((v225 + v151) * (v225 + v151)))
                                  {
                                    v155 = v150[2].f32[2];
                                    v156 = vmulq_f32(v152, v150[1]);
                                    v157 = v156.f32[2] + vaddv_f32(*v156.f32);
                                    v158 = sqrtf(v154 - (v157 * v157));
                                    v159 = v150[2].f32[3] * v155;
                                    v160 = (v159 * v157) - (v155 * v158);
                                    if (v160 >= 0.0 || (v161 = ((v155 * v157) + (v159 * v158)) - fminf(fmaxf((v155 * v157) + (v159 * v158), 0.0), v151), ((v160 * v160) + (v161 * v161)) <= (v225 * v225)))
                                    {
                                      v162 = v280++;
                                      v144[v162] = v148 + v221;
                                    }
                                  }

                                  v145 &= ~(1 << v147);
                                }

                                while (v145);
                              }

                              ++v143;
                            }

                            while (v143 != v214);
                            v142 = v280;
                            v101 = v279;
                          }

                          else
                          {
                            v142 = 0;
                          }

                          v39 = v193;
                          CPUPointer = v192;
                          v74 = v209;
                          v75 = v208;
                          v64 = v281 + v142 + v101;
                          if (v281 + v142 + v101)
                          {
                            v163 = sub_1AF1F65B8(*v293, v282, v277, v64);
                            v59.i32[3] = 0;
                            v59.i16[0] = v163;
                            v59.i16[1] = v279 | (v280 << 8);
                            *(v59.i64 + 4) = v281;
                          }

                          else
                          {
                            v59 = 0uLL;
                          }

                          if (v194)
                          {
                            *&v192[8 * v208] = v59.i64[0];
                          }

                          else
                          {
                            v59 = vmovl_u16(*v59.f32);
                            v164 = &v192[4 * v208];
                            *(v164 + 1) = v59.i16[2];
                            *v164 = v59.i16[0];
                          }
                        }
                      }

                      ++v74;
                      ++v75;
                    }

                    while (v74 != v39);
                  }
                }

                ++v207;
              }

              while (v207 != v190);
            }
          }
        }

        ++v191;
      }

      while (v191 != v186);
    }

    sub_1AF1F678C(&v258, CPUPointer, v181);
    v165 = v283;
    if (v283 <= 1)
    {
      v166 = 1;
    }

    else
    {
      v166 = v283;
    }

    v167 = (v166 - 1) | ((v166 - 1) >> 1) | (((v166 - 1) | ((v166 - 1) >> 1)) >> 2);
    v168 = v167 | (v167 >> 4) | ((v167 | (v167 >> 4)) >> 8);
    memset(v243, 0, 24);
    CFXTextureDescriptorMake1D(((v168 >> 16) | v168) + 1, 0xDu, v243);
    *&v243[12] = *&v243[12] & 0xFFFF8F00FFFFFFFFLL | 0x100000000;
    v169 = sub_1AF12E2AC(v15);
    v173 = objc_msgSend_frameTexturePool(v169, v170, v171, v172);
    v250 = *v243;
    v251.i64[0] = *&v243[16];
    v174 = CFXTextureAllocatorPerFrameAllocate(v173, &v250);
    *(v182 + 3) = v174;
    if (v165)
    {
      v250 = 0uLL;
      v251.i64[0] = 0;
      v251.i64[1] = v165;
      v252 = vdupq_n_s64(1uLL);
      objc_msgSend_replaceRegion_mipmapLevel_withBytes_bytesPerRow_(v174, v175, &v250, 0, v282[2], v283);
    }

    if (v194)
    {
      v176 = 113;
    }

    else
    {
      v176 = 63;
    }

    v250 = 0uLL;
    v251.i64[0] = 0;
    CFXTextureDescriptorMake3D(v39, v190, v186, v176, &v250);
    v251.i8[0] = 1;
    v177 = sub_1AF12E2AC(v15);
    *v243 = v250;
    *&v243[16] = v251.i64[0];
    *(v182 + 2) = objc_msgSend_allocateWithStagingBuffer_desc_forceCPUBlit_(v177, v178, v180, v179, v243, 1);
    CStackAllocatorPopFrame(v184);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_1AF1F7B4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

float32x4_t sub_1AF1F7BAC(uint64_t a1, float32x4_t *a2)
{
  v2 = *(a1 + 80);
  v4 = *(a1 + 16);
  v3 = *(a1 + 32);
  v5 = vextq_s8(vextq_s8(v3, v3, 0xCuLL), v3, 8uLL);
  v6 = vextq_s8(vuzp1q_s32(v3, v3), v3, 0xCuLL);
  v7 = vmulq_f32(v2, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v4, v4, 0xCuLL), v4, 8uLL), vnegq_f32(v6)), vextq_s8(vuzp1q_s32(v4, v4), v4, 0xCuLL), v5));
  v7.f32[0] = v7.f32[2] + vaddv_f32(*v7.f32);
  if (v7.f32[0] != 0.0)
  {
    v8 = *(a1 + 80);
    v8.f32[0] = -v2.f32[3];
    v9 = *(a1 + 32);
    *v9.i32 = -*&v3.i32[3];
    v10 = *(a1 + 16);
    *v10.i32 = -*&v4.i32[3];
    v11 = vmulq_f32(v8, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v10, v10, 0xCuLL), v10, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL))), vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL), vextq_s8(vextq_s8(v9, v9, 0xCuLL), v9, 8uLL)));
    v12 = *(a1 + 80);
    v12.f32[1] = -v2.f32[3];
    v13 = *(a1 + 32);
    *&v13.i32[1] = -*&v3.i32[3];
    v11.f32[0] = v11.f32[2] + vaddv_f32(*v11.f32);
    v14 = *(a1 + 16);
    *&v14.i32[1] = -*&v4.i32[3];
    v15 = vmulq_f32(v12, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v14, v14, 0xCuLL), v14, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v13, v13), v13, 0xCuLL))), vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL), vextq_s8(vextq_s8(v13, v13, 0xCuLL), v13, 8uLL)));
    v2.f32[2] = -v2.f32[3];
    *&v3.i32[2] = -*&v3.i32[3];
    *&v4.i32[2] = -*&v4.i32[3];
    v16 = vmulq_f32(v2, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v4, v4, 0xCuLL), v4, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v3, v3), v3, 0xCuLL))), vextq_s8(vuzp1q_s32(v4, v4), v4, 0xCuLL), vextq_s8(vextq_s8(v3, v3, 0xCuLL), v3, 8uLL)));
    v11.f32[1] = v15.f32[2] + vaddv_f32(*v15.f32);
    v11.f32[2] = v16.f32[2] + vaddv_f32(*v16.f32);
    *a2 = vdivq_f32(v11, vdupq_lane_s32(*v7.f32, 0));
    v2 = *(a1 + 80);
    v3 = *(a1 + 32);
    v6 = vextq_s8(vuzp1q_s32(v3, v3), v3, 0xCuLL);
    v5 = vextq_s8(vextq_s8(v3, v3, 0xCuLL), v3, 8uLL);
  }

  v17 = *a1;
  v18 = vmulq_f32(v2, vmlaq_f32(vmulq_f32(v5, vnegq_f32(vextq_s8(vuzp1q_s32(v17, v17), *a1, 0xCuLL))), v6, vextq_s8(vextq_s8(v17, v17, 0xCuLL), *a1, 8uLL)));
  v18.f32[0] = v18.f32[2] + vaddv_f32(*v18.f32);
  if (v18.f32[0] != 0.0)
  {
    v19 = v2;
    v19.f32[0] = -v2.f32[3];
    v20 = *a1;
    *v20.i32 = -*&v17.i32[3];
    v21 = v3;
    *v21.i32 = -*&v3.i32[3];
    v22 = vmulq_f32(v19, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v21, v21, 0xCuLL), v21, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v20, v20), v20, 0xCuLL))), vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL), vextq_s8(vextq_s8(v20, v20, 0xCuLL), v20, 8uLL)));
    v22.f32[0] = v22.f32[2] + vaddv_f32(*v22.f32);
    v23 = v2;
    v23.f32[1] = -v2.f32[3];
    v24 = *a1;
    *&v24.i32[1] = -*&v17.i32[3];
    v25 = v3;
    *&v25.i32[1] = -*&v3.i32[3];
    v26 = vmulq_f32(v23, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v25, v25, 0xCuLL), v25, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL))), vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL), vextq_s8(vextq_s8(v24, v24, 0xCuLL), v24, 8uLL)));
    v2.f32[2] = -v2.f32[3];
    *&v17.i32[2] = -*&v17.i32[3];
    *&v3.i32[2] = -*&v3.i32[3];
    v27 = vmulq_f32(v2, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v3, v3, 0xCuLL), v3, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL))), vextq_s8(vuzp1q_s32(v3, v3), v3, 0xCuLL), vextq_s8(vextq_s8(v17, v17, 0xCuLL), v17, 8uLL)));
    v22.f32[1] = v26.f32[2] + vaddv_f32(*v26.f32);
    v22.f32[2] = v27.f32[2] + vaddv_f32(*v27.f32);
    a2[1] = vdivq_f32(v22, vdupq_lane_s32(*v18.f32, 0));
    v2 = *(a1 + 80);
  }

  v28 = *(a1 + 16);
  v29 = *(a1 + 48);
  v30 = vextq_s8(vuzp1q_s32(v29, v29), v29, 0xCuLL);
  v31 = vextq_s8(vextq_s8(v29, v29, 0xCuLL), v29, 8uLL);
  v32 = vmulq_f32(v2, vmlaq_f32(vmulq_f32(v31, vnegq_f32(vextq_s8(vuzp1q_s32(v28, v28), v28, 0xCuLL))), v30, vextq_s8(vextq_s8(v28, v28, 0xCuLL), v28, 8uLL)));
  v32.f32[0] = v32.f32[2] + vaddv_f32(*v32.f32);
  if (v32.f32[0] != 0.0)
  {
    v33 = v2;
    v33.f32[0] = -v2.f32[3];
    v34 = *(a1 + 16);
    *v34.i32 = -*&v28.i32[3];
    v35 = *(a1 + 48);
    *v35.i32 = -*&v29.i32[3];
    v36 = vmulq_f32(v33, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v35, v35, 0xCuLL), v35, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL))), vextq_s8(vuzp1q_s32(v35, v35), v35, 0xCuLL), vextq_s8(vextq_s8(v34, v34, 0xCuLL), v34, 8uLL)));
    v37 = v2;
    v37.f32[1] = -v2.f32[3];
    v38 = *(a1 + 16);
    *&v38.i32[1] = -*&v28.i32[3];
    v36.f32[0] = v36.f32[2] + vaddv_f32(*v36.f32);
    v39 = *(a1 + 48);
    *&v39.i32[1] = -*&v29.i32[3];
    v40 = vmulq_f32(v37, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v39, v39, 0xCuLL), v39, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v38, v38), v38, 0xCuLL))), vextq_s8(vuzp1q_s32(v39, v39), v39, 0xCuLL), vextq_s8(vextq_s8(v38, v38, 0xCuLL), v38, 8uLL)));
    v2.f32[2] = -v2.f32[3];
    *&v28.i32[2] = -*&v28.i32[3];
    *&v29.i32[2] = -*&v29.i32[3];
    v41 = vmulq_f32(v2, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v29, v29, 0xCuLL), v29, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v28, v28), v28, 0xCuLL))), vextq_s8(vuzp1q_s32(v29, v29), v29, 0xCuLL), vextq_s8(vextq_s8(v28, v28, 0xCuLL), v28, 8uLL)));
    v36.f32[1] = v40.f32[2] + vaddv_f32(*v40.f32);
    v36.f32[2] = v41.f32[2] + vaddv_f32(*v41.f32);
    a2[2] = vdivq_f32(v36, vdupq_lane_s32(*v32.f32, 0));
    v2 = *(a1 + 80);
    v29 = *(a1 + 48);
    v31 = vextq_s8(vextq_s8(v29, v29, 0xCuLL), v29, 8uLL);
    v30 = vextq_s8(vuzp1q_s32(v29, v29), v29, 0xCuLL);
  }

  v42 = *a1;
  v43 = vmulq_f32(v2, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v42, v42, 0xCuLL), *a1, 8uLL), vnegq_f32(v30)), vextq_s8(vuzp1q_s32(v42, v42), *a1, 0xCuLL), v31));
  v43.f32[0] = v43.f32[2] + vaddv_f32(*v43.f32);
  if (v43.f32[0] != 0.0)
  {
    v44 = v2;
    v44.f32[0] = -v2.f32[3];
    v45 = v29;
    *v45.i32 = -*&v29.i32[3];
    v46 = *a1;
    *v46.i32 = -*&v42.i32[3];
    v47 = vmulq_f32(v44, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v46, v46, 0xCuLL), v46, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v45, v45), v45, 0xCuLL))), vextq_s8(vuzp1q_s32(v46, v46), v46, 0xCuLL), vextq_s8(vextq_s8(v45, v45, 0xCuLL), v45, 8uLL)));
    v48 = v2;
    v48.f32[1] = -v2.f32[3];
    v49 = v29;
    *&v49.i32[1] = -*&v29.i32[3];
    v47.f32[0] = v47.f32[2] + vaddv_f32(*v47.f32);
    v50 = *a1;
    *&v50.i32[1] = -*&v42.i32[3];
    v51 = vmulq_f32(v48, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v50, v50, 0xCuLL), v50, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v49, v49), v49, 0xCuLL))), vextq_s8(vuzp1q_s32(v50, v50), v50, 0xCuLL), vextq_s8(vextq_s8(v49, v49, 0xCuLL), v49, 8uLL)));
    v2.f32[2] = -v2.f32[3];
    *&v29.i32[2] = -*&v29.i32[3];
    *&v42.i32[2] = -*&v42.i32[3];
    v52 = vmulq_f32(v2, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v42, v42, 0xCuLL), v42, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v29, v29), v29, 0xCuLL))), vextq_s8(vuzp1q_s32(v42, v42), v42, 0xCuLL), vextq_s8(vextq_s8(v29, v29, 0xCuLL), v29, 8uLL)));
    v47.f32[1] = v51.f32[2] + vaddv_f32(*v51.f32);
    v47.f32[2] = v52.f32[2] + vaddv_f32(*v52.f32);
    a2[3] = vdivq_f32(v47, vdupq_lane_s32(*v43.f32, 0));
  }

  result = *(a1 + 64);
  v55 = *(a1 + 16);
  v54 = *(a1 + 32);
  v56 = vextq_s8(vextq_s8(v54, v54, 0xCuLL), v54, 8uLL);
  v57 = vextq_s8(vuzp1q_s32(v54, v54), v54, 0xCuLL);
  v58 = vmulq_f32(result, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v55, v55, 0xCuLL), v55, 8uLL), vnegq_f32(v57)), vextq_s8(vuzp1q_s32(v55, v55), v55, 0xCuLL), v56));
  v58.f32[0] = v58.f32[2] + vaddv_f32(*v58.f32);
  if (v58.f32[0] != 0.0)
  {
    v59 = *(a1 + 64);
    v59.f32[0] = -result.f32[3];
    v60 = *(a1 + 32);
    *v60.i32 = -*&v54.i32[3];
    v61 = *(a1 + 16);
    *v61.i32 = -*&v55.i32[3];
    v62 = vmulq_f32(v59, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v61, v61, 0xCuLL), v61, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v60, v60), v60, 0xCuLL))), vextq_s8(vuzp1q_s32(v61, v61), v61, 0xCuLL), vextq_s8(vextq_s8(v60, v60, 0xCuLL), v60, 8uLL)));
    v63 = *(a1 + 64);
    v63.f32[1] = -result.f32[3];
    v64 = *(a1 + 32);
    *&v64.i32[1] = -*&v54.i32[3];
    v62.f32[0] = v62.f32[2] + vaddv_f32(*v62.f32);
    v65 = *(a1 + 16);
    *&v65.i32[1] = -*&v55.i32[3];
    v66 = vmulq_f32(v63, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v65, v65, 0xCuLL), v65, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v64, v64), v64, 0xCuLL))), vextq_s8(vuzp1q_s32(v65, v65), v65, 0xCuLL), vextq_s8(vextq_s8(v64, v64, 0xCuLL), v64, 8uLL)));
    result.f32[2] = -result.f32[3];
    *&v54.i32[2] = -*&v54.i32[3];
    *&v55.i32[2] = -*&v55.i32[3];
    v67 = vmulq_f32(result, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v55, v55, 0xCuLL), v55, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v54, v54), v54, 0xCuLL))), vextq_s8(vuzp1q_s32(v55, v55), v55, 0xCuLL), vextq_s8(vextq_s8(v54, v54, 0xCuLL), v54, 8uLL)));
    v62.f32[1] = v66.f32[2] + vaddv_f32(*v66.f32);
    v62.f32[2] = v67.f32[2] + vaddv_f32(*v67.f32);
    a2[4] = vdivq_f32(v62, vdupq_lane_s32(*v58.f32, 0));
    result = *(a1 + 64);
    v54 = *(a1 + 32);
    v57 = vextq_s8(vuzp1q_s32(v54, v54), v54, 0xCuLL);
    v56 = vextq_s8(vextq_s8(v54, v54, 0xCuLL), v54, 8uLL);
  }

  v68 = *a1;
  v69 = vmulq_f32(result, vmlaq_f32(vmulq_f32(v56, vnegq_f32(vextq_s8(vuzp1q_s32(v68, v68), *a1, 0xCuLL))), v57, vextq_s8(vextq_s8(v68, v68, 0xCuLL), *a1, 8uLL)));
  v69.f32[0] = v69.f32[2] + vaddv_f32(*v69.f32);
  if (v69.f32[0] != 0.0)
  {
    v70 = result;
    v70.f32[0] = -result.f32[3];
    v71 = *a1;
    *v71.i32 = -*&v68.i32[3];
    v72 = v54;
    *v72.i32 = -*&v54.i32[3];
    v73 = vmulq_f32(v70, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v72, v72, 0xCuLL), v72, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v71, v71), v71, 0xCuLL))), vextq_s8(vuzp1q_s32(v72, v72), v72, 0xCuLL), vextq_s8(vextq_s8(v71, v71, 0xCuLL), v71, 8uLL)));
    v73.f32[0] = v73.f32[2] + vaddv_f32(*v73.f32);
    v74 = result;
    v74.f32[1] = -result.f32[3];
    v75 = *a1;
    *&v75.i32[1] = -*&v68.i32[3];
    v76 = v54;
    *&v76.i32[1] = -*&v54.i32[3];
    v77 = vmulq_f32(v74, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v76, v76, 0xCuLL), v76, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v75, v75), v75, 0xCuLL))), vextq_s8(vuzp1q_s32(v76, v76), v76, 0xCuLL), vextq_s8(vextq_s8(v75, v75, 0xCuLL), v75, 8uLL)));
    result.f32[2] = -result.f32[3];
    *&v68.i32[2] = -*&v68.i32[3];
    *&v54.i32[2] = -*&v54.i32[3];
    v78 = vmulq_f32(result, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v54, v54, 0xCuLL), v54, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v68, v68), v68, 0xCuLL))), vextq_s8(vuzp1q_s32(v54, v54), v54, 0xCuLL), vextq_s8(vextq_s8(v68, v68, 0xCuLL), v68, 8uLL)));
    v73.f32[1] = v77.f32[2] + vaddv_f32(*v77.f32);
    v73.f32[2] = v78.f32[2] + vaddv_f32(*v78.f32);
    a2[5] = vdivq_f32(v73, vdupq_lane_s32(*v69.f32, 0));
    result = *(a1 + 64);
  }

  v79 = *(a1 + 16);
  v80 = *(a1 + 48);
  v81 = vextq_s8(vuzp1q_s32(v80, v80), v80, 0xCuLL);
  v82 = vextq_s8(vextq_s8(v80, v80, 0xCuLL), v80, 8uLL);
  v83 = vmulq_f32(result, vmlaq_f32(vmulq_f32(v82, vnegq_f32(vextq_s8(vuzp1q_s32(v79, v79), v79, 0xCuLL))), v81, vextq_s8(vextq_s8(v79, v79, 0xCuLL), v79, 8uLL)));
  v83.f32[0] = v83.f32[2] + vaddv_f32(*v83.f32);
  if (v83.f32[0] != 0.0)
  {
    v84 = result;
    v84.f32[0] = -result.f32[3];
    v85 = *(a1 + 16);
    *v85.i32 = -*&v79.i32[3];
    v86 = *(a1 + 48);
    *v86.i32 = -*&v80.i32[3];
    v87 = vmulq_f32(v84, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v86, v86, 0xCuLL), v86, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v85, v85), v85, 0xCuLL))), vextq_s8(vuzp1q_s32(v86, v86), v86, 0xCuLL), vextq_s8(vextq_s8(v85, v85, 0xCuLL), v85, 8uLL)));
    v88 = result;
    v88.f32[1] = -result.f32[3];
    v89 = *(a1 + 16);
    *&v89.i32[1] = -*&v79.i32[3];
    v87.f32[0] = v87.f32[2] + vaddv_f32(*v87.f32);
    v90 = *(a1 + 48);
    *&v90.i32[1] = -*&v80.i32[3];
    v91 = vmulq_f32(v88, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v90, v90, 0xCuLL), v90, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v89, v89), v89, 0xCuLL))), vextq_s8(vuzp1q_s32(v90, v90), v90, 0xCuLL), vextq_s8(vextq_s8(v89, v89, 0xCuLL), v89, 8uLL)));
    result.f32[2] = -result.f32[3];
    *&v79.i32[2] = -*&v79.i32[3];
    *&v80.i32[2] = -*&v80.i32[3];
    v92 = vmulq_f32(result, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v80, v80, 0xCuLL), v80, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v79, v79), v79, 0xCuLL))), vextq_s8(vuzp1q_s32(v80, v80), v80, 0xCuLL), vextq_s8(vextq_s8(v79, v79, 0xCuLL), v79, 8uLL)));
    v87.f32[1] = v91.f32[2] + vaddv_f32(*v91.f32);
    v87.f32[2] = v92.f32[2] + vaddv_f32(*v92.f32);
    a2[6] = vdivq_f32(v87, vdupq_lane_s32(*v83.f32, 0));
    v80 = *(a1 + 48);
    result = *(a1 + 64);
    v82 = vextq_s8(vextq_s8(v80, v80, 0xCuLL), v80, 8uLL);
    v81 = vextq_s8(vuzp1q_s32(v80, v80), v80, 0xCuLL);
  }

  v93 = *a1;
  v94 = vmulq_f32(result, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v93, v93, 0xCuLL), *a1, 8uLL), vnegq_f32(v81)), vextq_s8(vuzp1q_s32(v93, v93), *a1, 0xCuLL), v82));
  v94.f32[0] = v94.f32[2] + vaddv_f32(*v94.f32);
  if (v94.f32[0] != 0.0)
  {
    v95 = result;
    v95.f32[0] = -result.f32[3];
    v96 = v80;
    *v96.i32 = -*&v80.i32[3];
    v97 = *a1;
    *v97.i32 = -*&v93.i32[3];
    v98 = vmulq_f32(v95, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v97, v97, 0xCuLL), v97, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v96, v96), v96, 0xCuLL))), vextq_s8(vuzp1q_s32(v97, v97), v97, 0xCuLL), vextq_s8(vextq_s8(v96, v96, 0xCuLL), v96, 8uLL)));
    v99 = result;
    v99.f32[1] = -result.f32[3];
    v100 = v80;
    *&v100.i32[1] = -*&v80.i32[3];
    v98.f32[0] = v98.f32[2] + vaddv_f32(*v98.f32);
    v101 = *a1;
    *&v101.i32[1] = -*&v93.i32[3];
    v102 = vmulq_f32(v99, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v101, v101, 0xCuLL), v101, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v100, v100), v100, 0xCuLL))), vextq_s8(vuzp1q_s32(v101, v101), v101, 0xCuLL), vextq_s8(vextq_s8(v100, v100, 0xCuLL), v100, 8uLL)));
    result.f32[2] = -result.f32[3];
    *&v80.i32[2] = -*&v80.i32[3];
    *&v93.i32[2] = -*&v93.i32[3];
    v103 = vmulq_f32(result, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v93, v93, 0xCuLL), v93, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v80, v80), v80, 0xCuLL))), vextq_s8(vuzp1q_s32(v93, v93), v93, 0xCuLL), vextq_s8(vextq_s8(v80, v80, 0xCuLL), v80, 8uLL)));
    v98.f32[1] = v102.f32[2] + vaddv_f32(*v102.f32);
    v98.f32[2] = v103.f32[2] + vaddv_f32(*v103.f32);
    result = vdivq_f32(v98, vdupq_lane_s32(*v94.f32, 0));
    a2[7] = result;
  }

  return result;
}

void sub_1AF1F8704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v221 = *MEMORY[0x1E69E9840];
  v181 = sub_1AF12EE9C(a3, 0);
  if (!v181 || !*(a5 + 16))
  {
    return;
  }

  v164 = a4;
  v165 = a3;
  v174 = sub_1AF12E2AC(a3);
  v173 = objc_msgSend_resourceManager(v174, v9, v10, v11);
  v15 = objc_msgSend_width(*(a5 + 16), v12, v13, v14);
  v19 = objc_msgSend_height(*(a5 + 16), v16, v17, v18);
  v23 = objc_msgSend_depth(*(a5 + 16), v20, v21, v22);
  v24 = 0;
  v163 = *(a5 + 32);
  v166 = v23;
  v167 = (a5 + 80);
  v25 = (a5 + 72);
  v26 = (a1 + 128);
  v180 = v19;
  v168 = (a5 + 72);
  v169 = a5;
  do
  {
    v27 = v25;
    if (v24 != 1)
    {
      if (v24 != 3)
      {
        goto LABEL_24;
      }

      v27 = v167;
    }

    v28 = *v27;
    v29 = WORD2(*v27);
    if (v29 >= 1)
    {
      v172 = v29;
      if (*v26)
      {
        goto LABEL_14;
      }

      if (v24 == 3)
      {
        v176 = v28;
        v30 = sub_1AF225D84(0, 12, 1, 0.0, 1.0, 1.0);
      }

      else
      {
        if (v24 != 1)
        {
          goto LABEL_14;
        }

        v176 = v28;
        v30 = sub_1AF225470(0, 12, 1, 1.0, 1.0);
      }

      *v26 = v30;
      LOWORD(v28) = v176;
LABEL_14:
      if (*(v26 - 7))
      {
        goto LABEL_20;
      }

      if (v24 == 1)
      {
        v177 = v28;
        v31 = @"debug_omni_vert";
      }

      else
      {
        if (v24 != 3)
        {
          goto LABEL_20;
        }

        v177 = v28;
        v31 = @"debug_spot_vert";
      }

      *(v26 - 7) = sub_1AF1D534C(v31, @"debug_light_frag");
      LOWORD(v28) = v177;
LABEL_20:
      v178 = v28;
      v32 = sub_1AF20E1F8(v173, *v26, 1);
      v33 = *(v26 - 7);
      v34 = sub_1AF15BBC4();
      v35 = sub_1AFDEA004(v32);
      v171 = v32;
      v36 = sub_1AFDEA078(v32);
      *&v217 = 0;
      v215 = 0u;
      v216 = 0u;
      v213 = 0u;
      v214 = 0u;
      v212 = 0u;
      v40 = objc_msgSend_currentRenderPassDescriptor(v174, v37, v38, v39);
      sub_1AF218EA4(v40, v41, v42, v43, &v212);
      v188.i64[0] = 0;
      v188.i64[1] = v33;
      v189 = 0uLL;
      *&v190 = 0;
      *(&v190 + 1) = v34;
      *&v191 = 16777231;
      *(&v191 + 1) = v35;
      *&v192[0] = v36;
      memset(v192 + 8, 0, 40);
      v45 = objc_msgSend_renderResourceForProgramDesc_renderPassDesc_(v173, v44, &v188, &v212);
      v49 = objc_msgSend_state(v45, v46, v47, v48);
      objc_msgSend_setRenderPipelineState_(*(a2 + 16), v50, v49, v51);
      objc_msgSend__setWorldBufferAtVertexIndex_fragmentIndex_(v174, v52, 0, -1);
      a5 = v169;
      MTLBuffer = CFXBufferSliceGetMTLBuffer(*(v169 + 96), *(v169 + 104));
      objc_msgSend_setVertexBuffer_offset_atIndex_(*(a2 + 16), v54, MTLBuffer, *(v169 + 104) + 368 * v178, 1);
      v55 = sub_1AF1A516C(*v26, 1);
      if (v55 && CFArrayGetValueAtIndex(v55, 0))
      {
        v56 = sub_1AFDE7F98(v173);
        objc_msgSend__setMeshBuffers_(v174, v57, v171, v58);
        objc_msgSend__drawMeshElement_instanceCount_(v174, v59, v56, v172);
      }

      v19 = v180;
      v25 = v168;
    }

LABEL_24:
    ++v24;
    ++v26;
  }

  while (v24 != 7);
  v60 = sub_1AF12F2FC(v165);
  if (!v60 || v60 == sub_1AF12F10C(v165))
  {
    *&v217 = 0;
    v215 = 0u;
    v216 = 0u;
    v213 = 0u;
    v214 = 0u;
    v212 = 0u;
    v85 = objc_msgSend_currentRenderPassDescriptor(v174, v61, v62, v63, v163, v164);
    v92 = sub_1AF218EA4(v85, v86, v87, v88, &v212);
    v93 = *(a1 + 48);
    if (!v93 || (v94 = objc_msgSend_currentRenderPassDescriptor(v174, v89, v90, v91, v92), (objc_msgSend_matchesRenderPassDescriptor_(v93, v95, v94, v96) & 1) == 0))
    {
      v100 = sub_1AFDE868C(v173);
      v104 = objc_msgSend_frameworkLibrary(v100, v101, v102, v103);
      v184 = v214;
      v185 = v215;
      v186 = v216;
      v187 = v217;
      v182 = v212;
      v183 = v213;
      v105 = sub_1AF15BBC4();

      v196 = v184;
      v197 = v185;
      v198 = v186;
      v194 = v182;
      v191 = 0u;
      memset(v192, 0, sizeof(v192));
      v189 = 0u;
      v190 = 0u;
      v188 = 0u;
      v193 = v104;
      v199 = v187;
      v200 = v105;
      v195 = v183;
      v204 = 0u;
      v205 = 0u;
      v206 = 0;
      v203 = 0u;
      v202 = 0u;
      v201 = 0u;
      v207 = @"vfx_draw_fullscreen_quad_vertex";
      v208 = @"debug_cluster_frag";
      v209 = 0u;
      v210 = 0u;
      *(a1 + 48) = objc_msgSend_newRenderPipelineStateWithDesc_(v173, v106, &v188, v107);
    }

    v108 = *(a1 + 56);
    if (!v108 || (v109 = objc_msgSend_currentRenderPassDescriptor(v174, v97, v98, v99), (objc_msgSend_matchesRenderPassDescriptor_(v108, v110, v109, v111) & 1) == 0))
    {
      v112 = sub_1AFDE868C(v173);
      v116 = objc_msgSend_frameworkLibrary(v112, v113, v114, v115);
      v184 = v214;
      v185 = v215;
      v186 = v216;
      v187 = v217;
      v182 = v212;
      v183 = v213;
      v117 = sub_1AF15BBC4();

      v196 = v184;
      v197 = v185;
      v198 = v186;
      v194 = v182;
      v191 = 0u;
      memset(v192, 0, sizeof(v192));
      v189 = 0u;
      v190 = 0u;
      v188 = 0u;
      v193 = v116;
      v199 = v187;
      v200 = v117;
      v195 = v183;
      v204 = 0u;
      v205 = 0u;
      v206 = 0;
      v203 = 0u;
      v202 = 0u;
      v201 = 0u;
      v207 = @"vfx_draw_fullscreen_quad_VR_pos_vertex";
      v208 = @"debug_light_indices_8_buffer_frag";
      v209 = 0u;
      v210 = 0u;
      *(a1 + 56) = objc_msgSend_newRenderPipelineStateWithDesc_(v173, v118, &v188, v119);
    }

    v120 = sub_1AFDE8620(v173);
    objc_msgSend_setDepthStencilState_(*(a2 + 16), v121, v120, v122);
    v126 = *(a1 + 64);
    if (!v126 || (v127 = objc_msgSend_currentRenderPassDescriptor(v174, v123, v124, v125), (objc_msgSend_matchesRenderPassDescriptor_(v126, v128, v127, v129) & 1) == 0))
    {
      v133 = sub_1AFDE868C(v173);
      v137 = objc_msgSend_frameworkLibrary(v133, v134, v135, v136);
      v184 = v214;
      v185 = v215;
      v186 = v216;
      v187 = v217;
      v182 = v212;
      v183 = v213;
      v138 = sub_1AF15BBC4();

      v196 = v184;
      v197 = v185;
      v198 = v186;
      v194 = v182;
      v191 = 0u;
      memset(v192, 0, sizeof(v192));
      v189 = 0u;
      v190 = 0u;
      v188 = 0u;
      v193 = v137;
      v199 = v187;
      v200 = v138;
      v195 = v183;
      v204 = 0u;
      v205 = 0u;
      v206 = 0;
      v203 = 0u;
      v202 = 0u;
      v201 = 0u;
      v207 = @"vfx_draw_fullscreen_quad_VR_pos_vertex";
      v208 = @"debug_cluster_slices_frag";
      v209 = 0u;
      v210 = 0u;
      *(a1 + 64) = objc_msgSend_newRenderPipelineStateWithDesc_(v173, v139, &v188, v140);
    }

    if (objc_msgSend_state(*(a1 + 48), v130, v131, v132))
    {
      v144 = objc_msgSend_state(*(a1 + 48), v141, v142, v143);
      objc_msgSend_setRenderPipelineState_(*(a2 + 16), v145, v144, v146);
      sub_1AF1F8FCC(a2, *(a5 + 16), 0, v147);
      objc_msgSend__setWorldBufferAtVertexIndex_fragmentIndex_(v174, v148, -1, 0);
      sub_1AF1F905C(a2, (a5 + 64), 8uLL, 1);
      objc_msgSend_drawPrimitives_vertexStart_vertexCount_(*(a2 + 16), v149, 4, 0, 4);
    }

    if (objc_msgSend_state(*(a1 + 64), v141, v142, v143))
    {
      v153 = objc_msgSend_state(*(a1 + 64), v150, v151, v152);
      objc_msgSend_setRenderPipelineState_(*(a2 + 16), v154, v153, v155);
      v159 = objc_msgSend_depth(*(a5 + 16), v156, v157, v158);
      v160.i32[0] = 0.5;
      v160.f32[1] = 0.5 / v159;
      v160.i32[2] = 0;
      v160.f32[3] = 1.0 - v160.f32[1];
      v188 = v160;
      sub_1AF176E98(a2, &v188, 0x10uLL, 0);
      sub_1AF1F8FCC(a2, *(a5 + 16), 0, v161);
      objc_msgSend_drawPrimitives_vertexStart_vertexCount_(*(a2 + 16), v162, 4, 0, 4);
    }
  }

  else
  {
    v218 = xmmword_1AFE229B0;
    v219 = *"fff?333?";
    v220 = xmmword_1AFE229D0;
    v214 = xmmword_1AFE22970;
    v215 = unk_1AFE22980;
    v216 = xmmword_1AFE22990;
    v217 = unk_1AFE229A0;
    v212 = *"333?333?333?";
    v213 = unk_1AFE22960;
    sub_1AF1F7BAC(v164, v211);
    v189 = v163;
    v64 = *(a5 + 92);
    CPUPointer = CFXBufferSliceGetCPUPointer(*a5, *(a5 + 8), v65, v66);
    v69 = v166;
    if (v166)
    {
      v70 = CPUPointer;
      v179 = 0;
      v71 = 0;
      v175 = v19 * v15;
      do
      {
        v72 = *(a1 + 40);
        if ((v72 == v71 || v72 >= v69) && v19 != 0)
        {
          v75 = 0;
          v76 = v179;
          do
          {
            v77 = *(a1 + 36);
            if ((v77 == v75 || v77 >= v19) && v15 != 0)
            {
              v80 = 0;
              do
              {
                v81 = *(a1 + 32);
                if (v81 >= v15 || v80 == v81)
                {
                  v83 = v76 + v80;
                  v68 = sub_1AF1F60F4(&v188, v80, v75, v71, &v182, v68);
                  if (v64)
                  {
                    v68.i64[0] = *(v70 + 8 * v83);
                  }

                  else
                  {
                    v68.i64[0] = *(v70 + 4 * v83);
                  }

                  v84 = v68.u8[3];
                  if (v68.u8[2] > ((v68.i16[1] & 0xFF00) >> 8))
                  {
                    v84 = v68.u8[2];
                  }

                  if (v84)
                  {
                    if (v84 >= 8)
                    {
                      v84 = 8;
                    }

                    sub_1AF0FFC70(v181, &v182, 0, &v212.f32[4 * v84]);
                  }
                }

                ++v80;
              }

              while (v15 != v80);
            }

            ++v75;
            v76 += v15;
            v19 = v180;
          }

          while (v75 != v180);
        }

        ++v71;
        v179 += v175;
        v69 = v166;
      }

      while (v71 != v166);
    }
  }
}