void sub_1AF1CEF34(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFE24(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 260) = a2;
}

BOOL sub_1AF1CEF88(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFE24(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 260) > 0;
}

void sub_1AF1CEFD8(uint64_t a1, uint64_t a2)
{
  *&v36[5] = *MEMORY[0x1E69E9840];
  if (!a1 && (v4 = sub_1AF0D5194(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDDFD68(v4, v5, v6, v7, v8, v9, v10, v11);
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
    sub_1AFDD137C(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  if (!a1)
  {
    goto LABEL_12;
  }

  v20 = *(a2 + 220);
  if ((v20 & 0x2000) != 0)
  {
    sub_1AF1CEC60(a1, a2);
    v20 = *(a2 + 220);
    if ((v20 & 0x40) == 0)
    {
LABEL_9:
      if ((v20 & 0x20000) == 0)
      {
        goto LABEL_10;
      }

LABEL_26:
      sub_1AF1CEE2C(a1, a2);
      if ((*(a2 + 220) & 0x100) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if ((v20 & 0x40) == 0)
  {
    goto LABEL_9;
  }

  sub_1AF364F94(a1, a2);
  v20 = *(a2 + 220);
  if ((v20 & 0x20000) != 0)
  {
    goto LABEL_26;
  }

LABEL_10:
  if ((v20 & 0x100) != 0)
  {
LABEL_11:
    sub_1AF1378D0(*(a1 + 128), a2);
  }

LABEL_12:
  v21 = sub_1AF1BB518(a2);
  if (v21)
  {
    v24 = v21;
    Count = CFArrayGetCount(v21);
    if (Count >= 1)
    {
      v26 = Count;
      for (i = 0; i != v26; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v24, i);
        if (!ValueAtIndex)
        {
          v32 = sub_1AF0D5194();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDDFF14(v35, v36, v32);
          }
        }

        sub_1AF15AB24(ValueAtIndex, v28, v29, v30);
      }
    }
  }

  v33 = *(a1 + 464);
  if (v33)
  {
    sub_1AF108358(v33, a2, v22, v23);
  }

  v34 = *(a1 + 136);
  if (v34)
  {
    sub_1AF143F60(v34, a2);
  }
}

uint64_t sub_1AF1CF194(uint64_t a1, void *key)
{
  if (*(a1 + 168))
  {
    v4 = *(a1 + 184);
    if (v4)
    {
      CFDictionaryRemoveValue(v4, key);
    }
  }

  return sub_1AF1CF1E8(a1, key);
}

uint64_t sub_1AF1CF1E8(uint64_t a1, id *a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 120);
  if (v12)
  {
    sub_1AF133A10(v12, a2);
  }

  if (sub_1AF1BBBCC(a2))
  {
    v13 = sub_1AF1CECF0(a1);
    v14 = CFStringCreateWithFormat(0, 0, @"nodeConstraints-%p", a2);
    sub_1AF158F5C(v13, 0, a2, v14);
    CFRelease(v14);
  }

  if (sub_1AF1BBE50(a2))
  {
    sub_1AF36513C(a1, a2);
  }

  if (sub_1AF1BBE9C(a2))
  {
    sub_1AF1CEEB0(a1, a2);
  }

  if (*(a1 + 128) && sub_1AF1BB0BC(a2))
  {
    sub_1AF137B54(*(a1 + 128), a2);
  }

  sub_1AF1BB79C(a2);
  v17 = *(a1 + 464);
  if (v17)
  {
    sub_1AF108360(v17, a2, v15, v16);
  }

  result = *(a1 + 136);
  if (result)
  {
    return sub_1AF1441EC(result, a2);
  }

  return result;
}

uint64_t sub_1AF1CF31C()
{
  if (qword_1ED73AB60 != -1)
  {
    sub_1AFDDFF64();
  }

  return qword_1ED73AB58;
}

double sub_1AF1CF354()
{
  v0 = _CFRuntimeRegisterClass();
  qword_1ED73AB58 = v0;
  v1 = sub_1AF16CB64();
  sub_1AF1DCFAC(v0, v1);
  sub_1AF1DD02C(@"fogColor", 0x180u, 12, 0);
  sub_1AF1DD02C(@"fogDensityExponent", 0x170u, 1, 0);
  sub_1AF1DD02C(@"fogEndDistance", 0x16Cu, 1, 0);
  sub_1AF1DD02C(@"fogStartDistance", 0x168u, 1, 0);
  sub_1AF1DD02C(@"wantsSSAO", 0x190u, 3, 0);
  sub_1AF1DD02C(@"screenSpaceAmbientOcclusionIntensity", 0x194u, 1, 0);
  sub_1AF1DD02C(@"screenSpaceAmbientOcclusionRadius", 0x198u, 1, 0);
  sub_1AF1DD02C(@"screenSpaceAmbientOcclusionEnableBentNormal", 0x19Cu, 3, 0);
  sub_1AF1DD02C(@"screenSpaceAmbientOcclusionQuality", 0x19Du, 2, 0);
  sub_1AF1DD02C(@"wantsScreenSpaceReflection", 0x19Eu, 3, 0);
  sub_1AF1DD02C(@"screenSpaceReflectionQuality", 0x19Fu, 2, 0);
  sub_1AF1DD02C(@"screenSpaceReflectionThicknessMode", 0x1A0u, 2, 0);
  sub_1AF1DD02C(@"screenSpaceReflectionObjectThickness", 0x1A4u, 1, 0);
  sub_1AF1DD018();
  unk_1ED72E2C8 = xmmword_1F24E8508;
  unk_1ED72E2D8 = unk_1F24E8518;
  qword_1ED72E2E8 = qword_1F24E8528;
  unk_1ED72E2F0 = sub_1AF1D1788;
  qword_1ED72E2B0 = sub_1AF1D1824;
  result = *&xmmword_1F24E8530;
  unk_1ED72E308 = xmmword_1F24E8530;
  return result;
}

uint64_t sub_1AF1CF52C(char a1, const void *a2)
{
  if (qword_1ED73AB60 != -1)
  {
    sub_1AFDDFF64();
  }

  v4 = sub_1AF0D160C(qword_1ED73AB58, 0x1E0uLL);
  v5 = v4;
  if (v4)
  {
    sub_1AF0D169C(v4, a1);
    *(v5 + 224) = 0x3F80000042700000;
    *(v5 + 244) = 1065353216;
    *(v5 + 256) = 1065353216;
    if (a2)
    {
      v6 = CFRetain(a2);
    }

    else
    {
      v6 = 0;
    }

    *(v5 + 80) = v6;
    *(v5 + 360) = 0;
    *(v5 + 368) = 1065353216;
    sub_1AF163FFC((v5 + 384), 1.0, 1.0, 1.0, 1.0);
    *(v5 + 400) = 0;
    *(v5 + 404) = 0x3F8000003F800000;
    *(v5 + 412) = 256;
    *(v5 + 416) = 0;
    *(v5 + 420) = 1048576000;
  }

  return v5;
}

void sub_1AF1CF614(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 64) != a2)
  {
    sub_1AF133C50(*(a1 + 120));
    v12 = *(a1 + 64);
    if (v12)
    {
      if (sub_1AF1C3FAC(v12) == a1)
      {
        sub_1AF1C3A90(*(a1 + 64), a1);
      }

      else
      {
        v13 = sub_1AF0D5194();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *v17 = 0;
          _os_log_impl(&dword_1AF0CE000, v13, OS_LOG_TYPE_DEFAULT, "Warning: CFXWorldSetRootNode - old root node seems to be already connected to another world", v17, 2u);
        }
      }

      v14 = *(a1 + 64);
      if (v14 == a2)
      {
        goto LABEL_19;
      }

      if (v14)
      {
        CFRelease(v14);
        *(a1 + 64) = 0;
      }

      if (!a2)
      {
        v14 = 0;
        goto LABEL_18;
      }
    }

    else if (!a2)
    {
      v14 = 0;
LABEL_19:
      v15 = *(a1 + 432);
      if (v15 != a2)
      {
        if (v15)
        {
          CFRelease(*(a1 + 432));
          *(a1 + 432) = 0;
        }

        if (a2)
        {
          v16 = CFRetain(a2);
        }

        else
        {
          v16 = 0;
        }

        *(a1 + 432) = v16;
        v14 = *(a1 + 64);
      }

      if (v14)
      {
        sub_1AF1C3CB4(v14, a1);
      }

      return;
    }

    v14 = CFRetain(a2);
LABEL_18:
    *(a1 + 64) = v14;
    goto LABEL_19;
  }
}

void sub_1AF1CF760(uint64_t a1, int a2, const void *a3, const void *a4)
{
  if (!a3 && (v8 = sub_1AF0D5194(), os_log_type_enabled(v8, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDDFF78(v8, v9, v10, v11, v12, v13, v14, v15);
    if (!a1)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  v16 = sub_1AF1332F8(*(a1 + 120));
  sub_1AF131578(v16, a2, a3, a4);
}

uint64_t sub_1AF1CF7E8(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 64);
}

uint64_t sub_1AF1CF830(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 88);
}

uint64_t sub_1AF1CF878(uint64_t a1)
{
  result = sub_1AF1CF8AC(a1);
  if (result)
  {

    return sub_1AF0FB884(result);
  }

  return result;
}

uint64_t sub_1AF1CF8AC(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 168);
}

uint64_t sub_1AF1CF8F4(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 80);
}

double sub_1AF1CF93C(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 208);
}

double sub_1AF1CF984(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 216);
}

void sub_1AF1CF9CC(uint64_t a1, double a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 208) = a2;
}

void sub_1AF1CFA20(uint64_t a1, double a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 216) = a2;
}

float sub_1AF1CFA74(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 224);
}

void sub_1AF1CFABC(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 224) = a2;
}

float sub_1AF1CFB10(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 228);
}

void sub_1AF1CFB58(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 228) = a2;
}

float sub_1AF1CFBAC(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 256);
}

void sub_1AF1CFBF4(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 256) = a2;
}

__n128 sub_1AF1CFC48(__n128 *a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return a1[15];
}

void sub_1AF1CFC90(__n128 *a1, __n128 a2)
{
  if (!a1)
  {
    v12 = a2;
    v3 = sub_1AF0D5194();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    a2 = v12;
    if (v4)
    {
      sub_1AFDDFD68(v3, v5, v6, v7, v8, v9, v10, v11);
      a2 = v12;
    }
  }

  a1[15] = a2;
}

void sub_1AF1CFCF4(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  ++*(a1 + 328);
  sub_1AF139158(*(a1 + 128));
  sub_1AF14CED8(*(a1 + 160));
}

void sub_1AF1CFD54(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1AF1CFE48;
  v10[3] = &unk_1E7A7BE60;
  v10[4] = &v11;
  sub_1AF1CEBC8(a1, v10);
  if (*(v12 + 24) == 1)
  {
    sub_1AF14CF24(*(a1 + 160));
  }

  _Block_object_dispose(&v11, 8);
}

void sub_1AF1CFE30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1AF1CFE48(uint64_t a1, uint64_t a2)
{
  result = sub_1AF130540(a2);
  *(*(*(a1 + 32) + 8) + 24) |= result;
  return result;
}

uint64_t sub_1AF1CFE84(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 328);
}

void sub_1AF1CFECC(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  ++*(a1 + 332);
}

uint64_t sub_1AF1CFF1C(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 332);
}

BOOL sub_1AF1CFF64(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  return (a2 & ~*(a1 + 72)) == 0;
}

uint64_t sub_1AF1CFFC0(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 104);
}

uint64_t sub_1AF1D0008(uint64_t a1, int a2)
{
  if (a2 && !*(a1 + 336))
  {
    v3 = sub_1AF16578C(a1, 25);
    *(a1 + 336) = v3;
    v4 = sub_1AF1C4F88();
    sub_1AF1667E4(v3, v4);
  }

  return *(a1 + 336);
}

uint64_t sub_1AF1D005C(uint64_t a1, int a2)
{
  if (a2 && !*(a1 + 344))
  {
    v3 = sub_1AF16578C(a1, 26);
    *(a1 + 344) = v3;
    v4 = sub_1AF1C4F88();
    sub_1AF1667E4(v3, v4);
  }

  return *(a1 + 344);
}

uint64_t sub_1AF1D00B0(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 120);
}

uint64_t sub_1AF1D00F8(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 128);
}

uint64_t sub_1AF1D0140(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 136);
}

uint64_t sub_1AF1D0188(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 144);
}

uint64_t sub_1AF1D01D0(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 152);
}

uint64_t sub_1AF1D0218(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 160);
}

float sub_1AF1D0260(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 368);
}

void sub_1AF1D02A8(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 368) = a2;
}

float sub_1AF1D02FC(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 364);
}

void sub_1AF1D0344(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 364) = a2;
}

float sub_1AF1D0398(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 360);
}

void sub_1AF1D03E0(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 360) = a2;
}

__n128 sub_1AF1D0434(__n128 *a1, __n128 *a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *a2;
  a1[24] = *a2;
  return result;
}

uint64_t sub_1AF1D048C(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return a1 + 384;
}

void sub_1AF1D04D4(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  compute_fog_parameters(*(a1 + 360) * a2, *(a1 + 364) * a2);
}

uint64_t sub_1AF1D053C(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 400);
}

void sub_1AF1D0584(_BYTE *a1, int a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (a1[400] != a2)
  {
    a1[400] = a2;
    sub_1AF1BE334(@"kCFXNotificationEngineContextInvalidatePasses", a1, 0, 1u);
  }
}

float sub_1AF1D0600(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 404);
}

void sub_1AF1D0648(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 404) = a2;
}

float sub_1AF1D069C(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 408);
}

void sub_1AF1D06E4(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 408) = a2;
}

uint64_t sub_1AF1D0738(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 412);
}

void sub_1AF1D0780(_BYTE *a1, int a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (a1[412] != a2)
  {
    a1[412] = a2;
    sub_1AF1BE334(@"kCFXNotificationEngineContextInvalidatePasses", a1, 0, 1u);
  }
}

uint64_t sub_1AF1D07FC(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 413);
}

void sub_1AF1D0844(uint64_t a1, char a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 413) = a2;
}

uint64_t sub_1AF1D0898(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 414);
}

void sub_1AF1D08E0(_BYTE *a1, int a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (a1[414] != a2)
  {
    a1[414] = a2;
    sub_1AF1BE334(@"kCFXNotificationEngineContextInvalidatePasses", a1, 0, 1u);
  }
}

uint64_t sub_1AF1D095C(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 415);
}

void sub_1AF1D09A4(uint64_t a1, char a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 415) = a2;
}

uint64_t sub_1AF1D09F8(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 416);
}

void sub_1AF1D0A40(uint64_t a1, char a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 416) = a2;
}

float sub_1AF1D0A94(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 420);
}

void sub_1AF1D0ADC(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 420) = a2;
}

void sub_1AF1D0B30(__n128 *a1, simd_float4x4 *a2)
{
  v72 = __invert_f4(*a2);
  v62 = v72.columns[2];
  v63 = v72.columns[0];
  v60 = v72.columns[3];
  v61 = v72.columns[1];
  v4 = sub_1AF1CFC48(a1);
  if (v4.n128_f32[2] == 1.0)
  {
    v5 = 0;
    v6 = vrsqrteq_f32(xmmword_1AFE208C0);
    v7 = vmulq_f32(v6, vrsqrtsq_f32(xmmword_1AFE208C0, vmulq_f32(v6, v6)));
    v8 = vmulq_f32(vmulq_f32(v7, vrsqrtsq_f32(xmmword_1AFE208C0, vmulq_f32(v7, v7))), xmmword_1AFE20150);
    v9 = vmulq_f32(v8, v8);
    __asm { FMOV            V0.4S, #1.0 }

    v15 = vmlaq_f32(v9, vdupq_n_s32(0xB33BBD2E), vsubq_f32(_Q0, v9));
    v16 = vmuls_lane_f32(v8.f32[0], *v8.f32, 1);
    v17 = vmuls_lane_f32(v8.f32[0], v8, 2);
    v18 = vmuls_lane_f32(v8.f32[1], v8, 2);
    *&v19 = v8.f32[1] + v17;
    *&v20 = v8.f32[2] + v16;
    v21.f32[0] = v17 - v8.f32[1];
    v21.f32[1] = v8.f32[0] + v18;
    v21.i64[1] = v15.u32[2];
    *&v22 = v18 - v8.f32[0];
    v23.i32[0] = v15.i32[0];
    v23.f32[1] = v16 - v8.f32[2];
    v23.i64[1] = v19;
    v24.i64[0] = __PAIR64__(v15.u32[1], v20);
    v24.i64[1] = v22;
    v64 = v63;
    v65 = v61;
    v66 = v62;
    v67 = v60;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    do
    {
      *(&v68 + v5) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v23, COERCE_FLOAT(*(&v64 + v5))), v24, *&v64.f32[v5 / 4], 1), v21, *(&v64 + v5), 2), xmmword_1AFE201A0, *(&v64 + v5), 3);
      v5 += 16;
    }

    while (v5 != 64);
LABEL_12:
    v27 = v68;
    v25 = v69;
    v28 = v70;
    v26 = v71;
    goto LABEL_13;
  }

  v26 = v60;
  v25 = v61;
  v28 = v62;
  v27 = v63;
  if (v4.n128_f32[2] == -1.0)
  {
    v29 = 0;
    v30 = vrsqrteq_f32(xmmword_1AFE208C0);
    v31 = vmulq_f32(v30, vrsqrtsq_f32(xmmword_1AFE208C0, vmulq_f32(v30, v30)));
    v32 = vmulq_f32(vmulq_f32(v31, vrsqrtsq_f32(xmmword_1AFE208C0, vmulq_f32(v31, v31))), xmmword_1AFE20150);
    v33 = vmulq_f32(v32, v32);
    __asm { FMOV            V1.4S, #1.0 }

    v35 = vmlaq_f32(v33, vdupq_n_s32(0xB33BBD2E), vsubq_f32(_Q1, v33));
    v36 = vmuls_lane_f32(v32.f32[0], *v32.f32, 1);
    v37 = vmuls_lane_f32(v32.f32[0], v32, 2);
    _Q1.f32[0] = vmuls_lane_f32(v32.f32[1], v32, 2);
    v38 = vnegq_f32(v32);
    *&v39 = v38.f32[1] + v37;
    v40.f32[0] = v37 - v38.f32[1];
    v40.f32[1] = v38.f32[0] + _Q1.f32[0];
    v40.i64[1] = v35.u32[2];
    *&v41 = _Q1.f32[0] - v38.f32[0];
    v42.i32[0] = v35.i32[0];
    v42.f32[1] = v36 - v38.f32[2];
    v42.i64[1] = v39;
    v43.f32[0] = v38.f32[2] + v36;
    v43.i32[1] = v35.i32[1];
    v43.i64[1] = v41;
    v64 = v63;
    v65 = v61;
    v66 = v62;
    v67 = v60;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    do
    {
      *(&v68 + v29) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v42, COERCE_FLOAT(*(&v64 + v29))), v43, *&v64.f32[v29 / 4], 1), v40, *(&v64 + v29), 2), xmmword_1AFE201A0, *(&v64 + v29), 3);
      v29 += 16;
    }

    while (v29 != 64);
    goto LABEL_12;
  }

  if (v4.n128_f32[1] == -1.0)
  {
    v44 = 0;
    v45 = vrsqrteq_f32(xmmword_1AFE208C0);
    v46 = vmulq_f32(v45, vrsqrtsq_f32(xmmword_1AFE208C0, vmulq_f32(v45, v45)));
    v47 = vmulq_f32(vmulq_f32(v46, vrsqrtsq_f32(xmmword_1AFE208C0, vmulq_f32(v46, v46))), xmmword_1AFE20150);
    v48 = vmulq_f32(v47, v47);
    __asm
    {
      FMOV            V1.4S, #1.0
      FMOV            V2.4S, #-1.0
    }

    v51 = vmlaq_f32(v48, _Q2, vsubq_f32(_Q1, v48));
    _Q2.f32[0] = vmuls_lane_f32(v47.f32[0], *v47.f32, 1);
    _Q2.f32[0] = _Q2.f32[0] + _Q2.f32[0];
    v52 = vmuls_lane_f32(v47.f32[0], v47, 2);
    v53 = v52 + v52;
    _Q1.f32[0] = vmuls_lane_f32(v47.f32[1], v47, 2);
    _Q1.f32[0] = _Q1.f32[0] + _Q1.f32[0];
    v54 = vmulq_f32(v47, vdupq_n_s32(0x33BBBD2Eu));
    *&v55 = v54.f32[1] + v53;
    v56.f32[0] = v53 - v54.f32[1];
    v56.f32[1] = v54.f32[0] + _Q1.f32[0];
    v56.i64[1] = v51.u32[2];
    *&v57 = _Q1.f32[0] - v54.f32[0];
    v58.i32[0] = v51.i32[0];
    v58.f32[1] = _Q2.f32[0] - v54.f32[2];
    v58.i64[1] = v55;
    v59.f32[0] = v54.f32[2] + _Q2.f32[0];
    v59.i32[1] = v51.i32[1];
    v59.i64[1] = v57;
    v64 = v63;
    v65 = v61;
    v66 = v62;
    v67 = v60;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    do
    {
      *(&v68 + v44) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v58, COERCE_FLOAT(*(&v64 + v44))), v59, *&v64.f32[v44 / 4], 1), v56, *(&v64 + v44), 2), xmmword_1AFE201A0, *(&v64 + v44), 3);
      v44 += 16;
    }

    while (v44 != 64);
    goto LABEL_12;
  }

LABEL_13:
  a2->columns[0] = v27;
  a2->columns[1] = v25;
  a2->columns[2] = v28;
  a2->columns[3] = v26;
}

double sub_1AF1D0EBC(__n128 *a1)
{
  v1 = sub_1AF1CFC48(a1);
  if (v1.n128_f32[2] == 1.0)
  {
    v2 = 0;
    v6 = xmmword_1AFE20150;
    v7 = xmmword_1AFE20160;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v8 = xmmword_1AFE20180;
    v9 = xmmword_1AFE201A0;
    do
    {
      *(&v10 + v2) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, COERCE_FLOAT(*(&v6 + v2))), xmmword_1AFE208E0, *(&v6 + v2), 1), xmmword_1AFE208F0, *(&v6 + v2), 2), xmmword_1AFE201A0, *(&v6 + v2), 3);
      v2 += 16;
    }

    while (v2 != 64);
    return *&v10;
  }

  if (v1.n128_f32[2] == -1.0)
  {
    v3 = 0;
    v6 = xmmword_1AFE20150;
    v7 = xmmword_1AFE20160;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v8 = xmmword_1AFE20180;
    v9 = xmmword_1AFE201A0;
    do
    {
      *(&v10 + v3) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, COERCE_FLOAT(*(&v6 + v3))), xmmword_1AFE20920, *(&v6 + v3), 1), xmmword_1AFE20930, *(&v6 + v3), 2), xmmword_1AFE201A0, *(&v6 + v3), 3);
      v3 += 16;
    }

    while (v3 != 64);
    return *&v10;
  }

  if (v1.n128_f32[1] == -1.0)
  {
    v4 = 0;
    v6 = xmmword_1AFE20150;
    v7 = xmmword_1AFE20160;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v8 = xmmword_1AFE20180;
    v9 = xmmword_1AFE201A0;
    do
    {
      *(&v10 + v4) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, COERCE_FLOAT(*(&v6 + v4))), xmmword_1AFE21DD0, *(&v6 + v4), 1), xmmword_1AFE21DE0, *(&v6 + v4), 2), xmmword_1AFE201A0, *(&v6 + v4), 3);
      v4 += 16;
    }

    while (v4 != 64);
    return *&v10;
  }

  *&result = 1065353216;
  return result;
}

uint64_t sub_1AF1D1084(uint64_t result, const char *a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v4 = result;
    result = *(result + 464);
    if (result)
    {
      v5 = 1;
    }

    else
    {
      v5 = a2 == 0;
    }

    if (!v5)
    {
      result = sub_1AF108308(v4, a2, a3, a4);
      *(v4 + 464) = result;
    }
  }

  return result;
}

void sub_1AF1D10C8(uint64_t a1, int a2, void *cf)
{
  if (!a1)
  {
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  if (a2 >= 4)
  {
    v14 = sub_1AF0D5194();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFFF0();
    }
  }

  v15 = a1 + 432;
  v16 = *(a1 + 432 + 8 * a2);
  if (v16 != cf)
  {
    if (v16)
    {
      CFRelease(v16);
      *(v15 + 8 * a2) = 0;
    }

    if (cf)
    {
      v17 = CFRetain(cf);
    }

    else
    {
      v17 = 0;
    }

    *(v15 + 8 * a2) = v17;
  }

  sub_1AF1BC258(cf, a2);
  if (cf)
  {
    sub_1AF1C3CB4(cf, a1);
  }
}

uint64_t sub_1AF1D1198(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (a2 >= 4)
  {
    v12 = sub_1AF0D5194();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFFF0();
    }
  }

  return *(a1 + 8 * a2 + 432);
}

void sub_1AF1D121C(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  ++*(a1 + 352);
}

uint64_t sub_1AF1D126C(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 352);
}

BOOL sub_1AF1D12B4(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *(a1 + 344);
  if (!v10)
  {
    return 0;
  }

  result = sub_1AF167434(v10);
  if (result)
  {
    return sub_1AF166220(v10);
  }

  return result;
}

uint64_t sub_1AF1D131C(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 356);
}

void sub_1AF1D1364(uint64_t a1, char a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 356) = a2;
}

uint64_t sub_1AF1D13B8(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 472);
}

uint64_t sub_1AF1D1400(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 480);
}

uint64_t sub_1AF1D1448(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 484);
}

CFTypeRef sub_1AF1D1490(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 176);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 176) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 176) = result;
  }

  return result;
}

id sub_1AF1D1514(uint64_t a1)
{
  sub_1AF1BE334(@"kCFXNotificationWorldWillDie", a1, 0, 1u);
  v2 = *(a1 + 152);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 152) = 0;
  }

  v3 = *(a1 + 160);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 160) = 0;
  }

  v4 = *(a1 + 128);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 128) = 0;
  }

  v5 = *(a1 + 136);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 136) = 0;
  }

  v6 = *(a1 + 80);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 80) = 0;
  }

  for (i = 432; i != 464; i += 8)
  {
    v8 = *(a1 + i);
    if (v8)
    {
      if (sub_1AF1C3F64(v8) != *(a1 + 48))
      {
        v9 = sub_1AF0D5194();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *v33 = 0;
          _os_log_impl(&dword_1AF0CE000, v9, OS_LOG_TYPE_DEFAULT, "Warning: RootNode is not retained by the world", v33, 2u);
        }
      }

      sub_1AF1C3A90(*(a1 + i), a1);
    }
  }

  v10 = *(a1 + 96);
  if (v10)
  {
    *(v10 + 24) = 0;
  }

  v11 = sub_1AF1CE864(a1);
  if (v11)
  {
    sub_1AF1C3A90(v11, a1);
  }

  v12 = *(a1 + 64);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 64) = 0;
  }

  v13 = *(a1 + 88);
  if (v13)
  {
    CFRelease(v13);
    *(a1 + 88) = 0;
  }

  v14 = *(a1 + 104);
  if (v14)
  {
    CFRelease(v14);
    *(a1 + 104) = 0;
  }

  v15 = *(a1 + 96);
  if (v15)
  {
    CFRelease(v15);
    *(a1 + 96) = 0;
  }

  v16 = *(a1 + 112);
  if (v16)
  {
    CFRelease(v16);
    *(a1 + 112) = 0;
  }

  v17 = *(a1 + 184);
  if (v17)
  {
    CFRelease(v17);
    *(a1 + 184) = 0;
  }

  v18 = *(a1 + 336);
  if (v18)
  {
    CFRelease(v18);
    *(a1 + 336) = 0;
  }

  v19 = *(a1 + 344);
  if (v19)
  {
    CFRelease(v19);
    *(a1 + 344) = 0;
  }

  v20 = *(a1 + 144);
  if (v20)
  {
    CFRelease(v20);
    *(a1 + 144) = 0;
  }

  v21 = *(a1 + 464);
  if (v21)
  {
    CFRelease(v21);
    *(a1 + 464) = 0;
  }

  for (j = 432; j != 464; j += 8)
  {
    v23 = *(a1 + j);
    if (v23)
    {
      CFRelease(v23);
      *(a1 + j) = 0;
    }
  }

  v24 = *(a1 + 168);
  if (v24)
  {
    v25 = vfx_counters_null();
    sub_1AF14E478(v24, v25, v26, v27);
    sub_1AF14E520(*(a1 + 168), 0, v28, v29);
    v24 = *(a1 + 168);
  }

  v30 = *(a1 + 176);
  if (v30)
  {
    CFRelease(v30);
    *(a1 + 176) = 0;
  }

  v31 = *(a1 + 120);
  if (v31)
  {
    CFRelease(v31);
    *(a1 + 120) = 0;
  }

  if (v24)
  {
    CFRelease(v24);
  }

  *(a1 + 168) = 0;
  pthread_mutex_destroy((a1 + 264));
  vfx_counters_destroy(*(a1 + 472));
  return sub_1AF16C9A4(a1);
}

uint64_t sub_1AF1D1788(uint64_t a1, const void *a2)
{
  v4 = sub_1AF16CCC0(a1);
  if (sub_1AF1D2AE0(v4, a2))
  {
    return a1;
  }

  v6 = sub_1AF1CF7E8(a1);

  return sub_1AF1C4020(v6, a2);
}

void sub_1AF1D17E8()
{
  v0 = sub_1AF0D5194();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDE0070(v0);
  }
}

__CFArray *sub_1AF1D1824(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v3 = MEMORY[0x1E695E9D8];
  v4 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v66 = 2;
  valuePtr = 5;
  v65 = a1 + 64;
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v6 = CFNumberCreate(0, kCFNumberSInt32Type, &v66);
  v7 = CFNumberCreate(0, kCFNumberLongType, &v65);
  CFDictionarySetValue(v4, @"name", @"root");
  CFDictionarySetValue(v4, @"type", v5);
  CFDictionarySetValue(v4, @"address", v7);
  CFDictionarySetValue(v4, @"semantic", v6);
  CFArrayAppendValue(Mutable, v4);
  CFRelease(v6);
  CFRelease(v4);
  CFRelease(v7);
  CFRelease(v5);
  v8 = CFDictionaryCreateMutable(0, 4, v3, MEMORY[0x1E695E9E8]);
  v66 = 0;
  valuePtr = 6;
  v65 = a1 + 208;
  v9 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v10 = CFNumberCreate(0, kCFNumberSInt32Type, &v66);
  v11 = CFNumberCreate(0, kCFNumberLongType, &v65);
  CFDictionarySetValue(v8, @"name", @"startTime");
  CFDictionarySetValue(v8, @"type", v9);
  CFDictionarySetValue(v8, @"address", v11);
  CFDictionarySetValue(v8, @"semantic", v10);
  CFArrayAppendValue(Mutable, v8);
  CFRelease(v10);
  CFRelease(v8);
  CFRelease(v11);
  CFRelease(v9);
  v12 = MEMORY[0x1E695E9E8];
  v13 = CFDictionaryCreateMutable(0, 4, v3, MEMORY[0x1E695E9E8]);
  v66 = 0;
  valuePtr = 6;
  v65 = a1 + 216;
  v14 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v15 = CFNumberCreate(0, kCFNumberSInt32Type, &v66);
  v16 = CFNumberCreate(0, kCFNumberLongType, &v65);
  CFDictionarySetValue(v13, @"name", @"endTime");
  CFDictionarySetValue(v13, @"type", v14);
  CFDictionarySetValue(v13, @"address", v16);
  CFDictionarySetValue(v13, @"semantic", v15);
  CFArrayAppendValue(Mutable, v13);
  CFRelease(v15);
  CFRelease(v13);
  CFRelease(v16);
  CFRelease(v14);
  v17 = CFDictionaryCreateMutable(0, 4, v3, v12);
  v66 = 0;
  valuePtr = 1;
  v65 = a1 + 224;
  v18 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v19 = CFNumberCreate(0, kCFNumberSInt32Type, &v66);
  v20 = CFNumberCreate(0, kCFNumberLongType, &v65);
  CFDictionarySetValue(v17, @"name", @"frameRate");
  CFDictionarySetValue(v17, @"type", v18);
  CFDictionarySetValue(v17, @"address", v20);
  CFDictionarySetValue(v17, @"semantic", v19);
  CFArrayAppendValue(Mutable, v17);
  CFRelease(v19);
  CFRelease(v17);
  CFRelease(v20);
  CFRelease(v18);
  v21 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v66 = 0;
  valuePtr = 1;
  v65 = a1 + 228;
  v22 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v23 = CFNumberCreate(0, kCFNumberSInt32Type, &v66);
  v24 = CFNumberCreate(0, kCFNumberLongType, &v65);
  CFDictionarySetValue(v21, @"name", @"playbackSpeed");
  CFDictionarySetValue(v21, @"type", v22);
  CFDictionarySetValue(v21, @"address", v24);
  CFDictionarySetValue(v21, @"semantic", v23);
  CFArrayAppendValue(Mutable, v21);
  CFRelease(v23);
  CFRelease(v21);
  CFRelease(v24);
  CFRelease(v22);
  v25 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v66 = 2;
  valuePtr = 5;
  v65 = a1 + 232;
  v26 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v27 = CFNumberCreate(0, kCFNumberSInt32Type, &v66);
  v28 = CFNumberCreate(0, kCFNumberLongType, &v65);
  CFDictionarySetValue(v25, @"name", @"attributes");
  CFDictionarySetValue(v25, @"type", v26);
  CFDictionarySetValue(v25, @"address", v28);
  CFDictionarySetValue(v25, @"semantic", v27);
  CFArrayAppendValue(Mutable, v25);
  CFRelease(v27);
  CFRelease(v25);
  CFRelease(v28);
  CFRelease(v26);
  v29 = MEMORY[0x1E695E9D8];
  v30 = MEMORY[0x1E695E9E8];
  v31 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v66 = 0;
  valuePtr = 8;
  v65 = a1 + 240;
  v32 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v33 = CFNumberCreate(0, kCFNumberSInt32Type, &v66);
  v34 = CFNumberCreate(0, kCFNumberLongType, &v65);
  CFDictionarySetValue(v31, @"name", @"upAxis");
  CFDictionarySetValue(v31, @"type", v32);
  CFDictionarySetValue(v31, @"address", v34);
  CFDictionarySetValue(v31, @"semantic", v33);
  CFArrayAppendValue(Mutable, v31);
  CFRelease(v33);
  CFRelease(v31);
  CFRelease(v34);
  CFRelease(v32);
  v35 = CFDictionaryCreateMutable(0, 4, v29, v30);
  v66 = 0;
  valuePtr = 1;
  v65 = a1 + 256;
  v36 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v37 = CFNumberCreate(0, kCFNumberSInt32Type, &v66);
  v38 = CFNumberCreate(0, kCFNumberLongType, &v65);
  CFDictionarySetValue(v35, @"name", @"unit");
  CFDictionarySetValue(v35, @"type", v36);
  CFDictionarySetValue(v35, @"address", v38);
  CFDictionarySetValue(v35, @"semantic", v37);
  CFArrayAppendValue(Mutable, v35);
  CFRelease(v37);
  CFRelease(v35);
  CFRelease(v38);
  CFRelease(v36);
  v39 = CFDictionaryCreateMutable(0, 4, v29, v30);
  v66 = 2;
  valuePtr = 5;
  v65 = a1 + 88;
  v40 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v41 = CFNumberCreate(0, kCFNumberSInt32Type, &v66);
  v42 = CFNumberCreate(0, kCFNumberLongType, &v65);
  CFDictionarySetValue(v39, @"name", @"animationManager");
  CFDictionarySetValue(v39, @"type", v40);
  CFDictionarySetValue(v39, @"address", v42);
  CFDictionarySetValue(v39, @"semantic", v41);
  CFArrayAppendValue(Mutable, v39);
  CFRelease(v41);
  CFRelease(v39);
  CFRelease(v42);
  CFRelease(v40);
  v43 = MEMORY[0x1E695E9E8];
  v44 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v66 = 2;
  valuePtr = 5;
  v65 = a1 + 336;
  v45 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v46 = CFNumberCreate(0, kCFNumberSInt32Type, &v66);
  v47 = CFNumberCreate(0, kCFNumberLongType, &v65);
  CFDictionarySetValue(v44, @"name", @"background");
  CFDictionarySetValue(v44, @"type", v45);
  CFDictionarySetValue(v44, @"address", v47);
  CFDictionarySetValue(v44, @"semantic", v46);
  CFArrayAppendValue(Mutable, v44);
  CFRelease(v46);
  CFRelease(v44);
  CFRelease(v47);
  CFRelease(v45);
  v48 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], v43);
  v66 = 2;
  valuePtr = 5;
  v65 = a1 + 344;
  v49 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v50 = CFNumberCreate(0, kCFNumberSInt32Type, &v66);
  v51 = CFNumberCreate(0, kCFNumberLongType, &v65);
  CFDictionarySetValue(v48, @"name", @"environment");
  CFDictionarySetValue(v48, @"type", v49);
  CFDictionarySetValue(v48, @"address", v51);
  CFDictionarySetValue(v48, @"semantic", v50);
  CFArrayAppendValue(Mutable, v48);
  CFRelease(v50);
  CFRelease(v48);
  CFRelease(v51);
  CFRelease(v49);
  v52 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], v43);
  v66 = 0;
  valuePtr = 5;
  v65 = a1 + 48;
  v53 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v54 = CFNumberCreate(0, kCFNumberSInt32Type, &v66);
  v55 = CFNumberCreate(0, kCFNumberLongType, &v65);
  CFDictionarySetValue(v52, @"name", @"worldRef");
  CFDictionarySetValue(v52, @"type", v53);
  CFDictionarySetValue(v52, @"address", v55);
  CFDictionarySetValue(v52, @"semantic", v54);
  CFArrayAppendValue(Mutable, v52);
  CFRelease(v54);
  CFRelease(v52);
  CFRelease(v55);
  CFRelease(v53);
  v56 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], v43);
  v66 = 2;
  valuePtr = 5;
  v65 = a1 + 128;
  v57 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v58 = CFNumberCreate(0, kCFNumberSInt32Type, &v66);
  v59 = CFNumberCreate(0, kCFNumberLongType, &v65);
  CFDictionarySetValue(v56, @"name", @"lightingSystem");
  CFDictionarySetValue(v56, @"type", v57);
  CFDictionarySetValue(v56, @"address", v59);
  CFDictionarySetValue(v56, @"semantic", v58);
  CFArrayAppendValue(Mutable, v56);
  CFRelease(v58);
  CFRelease(v56);
  CFRelease(v59);
  CFRelease(v57);
  v60 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v66 = 2;
  valuePtr = 5;
  v65 = a1 + 136;
  v61 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v62 = CFNumberCreate(0, kCFNumberSInt32Type, &v66);
  v63 = CFNumberCreate(0, kCFNumberLongType, &v65);
  CFDictionarySetValue(v60, @"name", @"raytracingSystem");
  CFDictionarySetValue(v60, @"type", v61);
  CFDictionarySetValue(v60, @"address", v63);
  CFDictionarySetValue(v60, @"semantic", v62);
  CFArrayAppendValue(Mutable, v60);
  CFRelease(v62);
  CFRelease(v60);
  CFRelease(v63);
  CFRelease(v61);
  return Mutable;
}

uint64_t sub_1AF1D255C()
{
  result = qword_1EB658640;
  if (!qword_1EB658640)
  {
    result = getpagesize();
    qword_1EB658640 = result;
  }

  return result;
}

vm_address_t sub_1AF1D2590(int64_t size)
{
  if (!size)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE00B4(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = qword_1EB658640;
  if (!qword_1EB658640)
  {
    v11 = getpagesize();
    v10 = v11;
    qword_1EB658640 = v11;
  }

  if (size % v10)
  {
    v12 = sub_1AF0D5194();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE012C(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }

  address = 0;
  v20 = vm_allocate(*MEMORY[0x1E69E9A60], &address, size, 1442840577);
  result = address;
  if (v20)
  {
    if (!address)
    {
      v22 = sub_1AF0D5194();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDDC148(v22, v23, v24, v25, v26, v27, v28, v29);
      }
    }

    return 0;
  }

  return result;
}

void sub_1AF1D2694(uint64_t a1)
{
  sub_1AF1D2A38(a1);
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 40) = 0;
  }
}

uint64_t sub_1AF1D26D0()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED739978 = result;
  return result;
}

void *sub_1AF1D26F8(uint64_t a1, uint64_t a2)
{
  if (qword_1ED739980[0] != -1)
  {
    sub_1AFDE01A4();
  }

  v4 = sub_1AF0D160C(qword_1ED739978, 0x38uLL);
  v4[5] = sub_1AF1D2E60();
  v4[2] = a1;
  v4[3] = a2;
  return v4;
}

char *sub_1AF1D2760(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE01B8(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = sub_1AF1D2EB4(*(a1 + 40));
  if (v10 == -1)
  {
    v11 = *(a1 + 48);
    if (v11)
    {
      *(a1 + 48) = v11 + 1;
      v12 = malloc_type_realloc(*(a1 + 32), 16 * (v11 + 1), 0x10800409227ACB4uLL);
      *(a1 + 32) = v12;
      v13 = &v12[16 * v11];
      *v13 = malloc_type_malloc(*(a1 + 24) * *(a1 + 16), 0xFF91E109uLL);
      v15 = *(a1 + 24);
      *(v13 + 2) = v15;
      v16 = *(a1 + 40);
      v17 = v15 * v11;
    }

    else
    {
      v18 = malloc_type_calloc(0x10uLL, 1uLL, 0x15CB7973uLL);
      *(a1 + 32) = v18;
      *v18 = malloc_type_malloc(*(a1 + 24) * *(a1 + 16), 0xFF91E109uLL);
      v15 = *(a1 + 24);
      v18[2] = v15;
      *(a1 + 48) = 1;
      v16 = *(a1 + 40);
      v17 = 0;
    }

    sub_1AF1D3458(v16, v17, v15, v14);
    v10 = sub_1AF1D2EB4(*(a1 + 40));
  }

  sub_1AF1D3E98(*(a1 + 40), v10);
  v19 = *(a1 + 24);
  v20 = *(a1 + 32) + 16 * (v10 / v19);
  --*(v20 + 8);
  v21 = *v20;
  if (!*v20)
  {
    v21 = malloc_type_malloc(*(a1 + 16) * v19, 0xFF91E109uLL);
    *v20 = v21;
    *(v20 + 8) = *(a1 + 24) - 1;
    --*(a1 + 56);
  }

  return &v21[*(a1 + 16) * (v10 % v19)];
}

void sub_1AF1D28EC(uint64_t a1, unint64_t a2, int64x2_t a3)
{
  if (!a1)
  {
    v5 = sub_1AF0D5194();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE01B8(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  v14 = (a1 + 48);
  v13 = *(a1 + 48);
  if (v13 < 1)
  {
LABEL_11:
    v22 = sub_1AF0D5194();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDE0230(v22);
    }
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v17 = *(a1 + 16);
    v18 = *(a1 + 24);
    v19 = (*(a1 + 32) + 8);
    while (1)
    {
      v20 = *(v19 - 1);
      if (v20 <= a2 && v20 + v18 * v17 > a2)
      {
        break;
      }

      ++v16;
      v19 += 4;
      v15 += 16;
      if (!--v13)
      {
        goto LABEL_11;
      }
    }

    sub_1AF1D3E90(*(a1 + 40), (a2 - v20) / v17 + v16 * v18, a3);
    v23 = *v19 + 1;
    *v19 = v23;
    if (*(a1 + 24) == v23 && (!*(a1 + 64) || *v14 >= 2))
    {
      ++*(a1 + 56);
      free(*(*(a1 + 32) + v15));
      v24 = *(a1 + 32);
      *&v24[v15] = 0;
      if (*(a1 + 56) == *(a1 + 48))
      {
        free(v24);
        *(a1 + 32) = 0;
        sub_1AF1D3B54(*(a1 + 40));
        *v14 = 0;
        *(a1 + 56) = 0;
      }
    }
  }
}

void sub_1AF1D2A38(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE01B8(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if (*(a1 + 48) >= 1)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = *(a1 + 32);
      free(*(v12 + v10));
      *(v12 + v10) = 0;
      ++v11;
      v10 += 16;
    }

    while (v11 < *(a1 + 48));
  }

  free(*(a1 + 32));
  *(a1 + 32) = 0;
  sub_1AF1D3B54(*(a1 + 40));
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
}

BOOL sub_1AF1D2AE0(CFTypeRef cf1, const void *a2)
{
  result = 0;
  if (cf1)
  {
    if (a2)
    {
      return CFEqual(cf1, a2) != 0;
    }
  }

  return result;
}

void sub_1AF1D2B1C(uint64_t a1)
{
  if ((*(a1 + 16) & 2) == 0)
  {
    v1 = *(a1 + 24);
    if (v1)
    {
      free(v1);
    }
  }
}

__CFString *sub_1AF1D2B38(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 256);
  v3 = sub_1AF3753A8(a1);
  CFStringAppendFormat(Mutable, 0, @"<%s %p | ", v3, a1);
  if (*(a1 + 16))
  {
    goto LABEL_15;
  }

  if ((*(a1 + 16) & 2) == 0)
  {
    v4 = *(a1 + 24);
    if (*(v4 + 16))
    {
      v5 = *(v4 + 8);
      CFStringAppendFormat(Mutable, 0, @"[number of indexes: %lu (in %lu ranges), indexes: ("), *(v4 + 16), v5;
      if (v5 < 1)
      {
        v10 = @"]>");
        goto LABEL_16;
      }

      v6 = v4 + 56;
      goto LABEL_8;
    }

LABEL_15:
    v10 = @"(no index)";
    goto LABEL_16;
  }

  v7 = *(a1 + 32);
  if (!v7)
  {
    goto LABEL_15;
  }

  v6 = a1 + 24;
  v5 = 1;
  CFStringAppendFormat(Mutable, 0, @"[number of indexes: %lu (in %lu ranges), indexes: ("), v7, 1;
LABEL_8:
  v8 = 0;
  v9 = (v6 + 8);
  v10 = @"]>");
  do
  {
    if (v8)
    {
      CFStringAppend(Mutable, @" ");
    }

    v11 = *(v9 - 1);
    v12 = *v9;
    CFStringAppendFormat(Mutable, 0, @"%lu", v11);
    if (v12 >= 2)
    {
      CFStringAppendFormat(Mutable, 0, @"-%lu", v11 + v12 - 1);
    }

    ++v8;
    v9 += 2;
  }

  while (v5 != v8);
LABEL_16:
  CFStringAppend(Mutable, v10);
  return Mutable;
}

uint64_t sub_1AF1D2CC8()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED739938 = result;
  return result;
}

double sub_1AF1D2CF0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a1 + 16);
    *(a1 + 16) = v4 | 3;
    if ((*(a2 + 16) & 1) == 0)
    {
      if ((*(a2 + 16) & 2) != 0)
      {
        v6 = *(a2 + 24);
        *(a1 + 24) = v6;
        *(a1 + 16) = v4 & 0xFC | 2;
      }

      else
      {
        *(a1 + 16) = v4 & 0xFC | 2;
        if (*(a2 + 16))
        {
          v5 = 0;
        }

        else if ((*(a2 + 16) & 2) != 0)
        {
          v5 = 1;
        }

        else
        {
          v5 = *(*(a2 + 24) + 8);
        }

        *(a1 + 16) = v4 & 0xFC;
        v7 = malloc_type_calloc(16 * v5 + 56, 1uLL, 0xD6968619uLL);
        *(a1 + 24) = v7;
        v8 = a1 + 24;
        v7[6] = 0;
        **(a1 + 24) = v5;
        *(*(a1 + 24) + 8) = v5;
        *(*(a1 + 24) + 16) = 0;
        v9 = a1 + 24;
        if ((*(a1 + 16) & 2) == 0)
        {
          v9 = *v8 + 56;
        }

        v10 = (a2 + 24);
        if ((*(a2 + 16) & 2) == 0)
        {
          v10 = (*v10 + 56);
        }

        if (v5 >= 1)
        {
          v11 = (v9 + 8);
          do
          {
            v12 = *v10;
            v10 += 2;
            *&v6 = v12;
            *(v11 - 1) = v12;
            *&v12 = *v11;
            v11 += 2;
            *(*v8 + 16) += v12;
            --v5;
          }

          while (v5);
        }
      }
    }
  }

  return *&v6;
}

uint64_t sub_1AF1D2E18()
{
  if (qword_1ED739940 != -1)
  {
    sub_1AFDE0274();
  }

  v1 = qword_1ED739938;

  return sub_1AF0D160C(v1, 0x18uLL);
}

uint64_t sub_1AF1D2E60()
{
  result = sub_1AF1D2E18();
  *(result + 16) |= 0xBu;
  return result;
}

uint64_t sub_1AF1D2E88(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return 0;
  }

  if ((*(a1 + 16) & 2) != 0)
  {
    v1 = a1 + 32;
  }

  else
  {
    v1 = *(a1 + 24) + 16;
  }

  return *v1;
}

uint64_t sub_1AF1D2EB4(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    v1 = (a1 + 24);
    if ((*(a1 + 16) & 2) != 0)
    {
      return *v1;
    }

    v2 = *v1;
    if (*(v2 + 8))
    {
      v1 = (v2 + 56);
      return *v1;
    }
  }

  return -1;
}

uint64_t sub_1AF1D2EE4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return 0;
  }

  v1 = (a1 + 24);
  if ((*(a1 + 16) & 2) != 0)
  {
    v4 = 0;
    return v1[2 * v4];
  }

  v2 = *v1;
  v3 = *(v2 + 8);
  if (!v3)
  {
    return 0;
  }

  v1 = (v2 + 56);
  v4 = v3 - 1;
  return v1[2 * v4];
}

uint64_t sub_1AF1D2F34(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (*(a1 + 16))
  {
    return -1;
  }

  v5 = a3;
  v6 = a2;
  if ((*(a1 + 16) & 2) != 0)
  {
    v10 = *(a1 + 24);
    v15 = v10 + *(a1 + 32);
    v16 = (v15 - 1);
    if (a4)
    {
      if (a3)
      {
        if (v10 < a2)
        {
          if (v15 > a2)
          {
            return v6;
          }

          v8 = 0;
LABEL_47:
          v27 = sub_1AF1D3238(a1, v6);
          if (v27 == -1)
          {
            return -1;
          }

          v28 = a1 + 24;
          if ((*(a1 + 16) & 2) != 0)
          {
            v29 = (a1 + 24);
          }

          else
          {
            v29 = v10 + 7;
          }

          v30 = v29[2 * v27];
          if (v6 <= v30)
          {
            v16 = v30;
          }

          else
          {
            v16 = v6;
          }

          if (v10[6] == v8)
          {
            v10[4] = v27;
            *(*v28 + 40) = v16 - v30;
            v26 = *v28;
            goto LABEL_56;
          }

          return v16;
        }
      }

      else if (v10 <= a2)
      {
        if (v16 > a2)
        {
          return a2 + 1;
        }

        v8 = 0;
LABEL_45:
        if (v6 == 0x7FFFFFFFFFFFFFFFLL)
        {
          return -1;
        }

        ++v6;
        goto LABEL_47;
      }

      return *(a1 + 24);
    }

    if (a3)
    {
      if (v16 <= a2)
      {
        return v16;
      }

      v16 = a2;
      if (v10 <= a2)
      {
        return v16;
      }

      goto LABEL_32;
    }

    if (v15 <= a2)
    {
      return v16;
    }

    if (v10 < a2)
    {
      return a2 - 1;
    }

    goto LABEL_30;
  }

  v8 = pthread_self();
  v9 = a1 + 24;
  v10 = *(a1 + 24);
  if (v10[6] == v8 && v10[3] == v6)
  {
    if ((v5 & 1) == 0)
    {
      v11 = v10 + 7;
      if ((*(a1 + 16) & 2) != 0)
      {
        v11 = (a1 + 24);
      }

      if (a4)
      {
        v12 = v10[4];
        if (v11[2 * v12 + 1] - 1 > v10[5])
        {
          v10[3] = v6 + 1;
          v13 = *v9;
          v14 = *(*v9 + 40) + 1;
LABEL_59:
          *(v13 + 40) = v14;
          return *(*v9 + 24);
        }

        if ((*(a1 + 16) & 3) != 0)
        {
          v31 = (*(a1 + 16) & 1) == 0;
        }

        else
        {
          v31 = v10[1];
        }

        v37 = v12 + 1;
        if (v37 < v31)
        {
          v10[4] = v37;
          v38 = v11[2 * *(*v9 + 32)];
          *(*v9 + 40) = 0;
          *(*v9 + 24) = v38;
          return *(*v9 + 24);
        }
      }

      else
      {
        if (v10[5] >= 1)
        {
          v10[3] = v6 - 1;
          v13 = *v9;
          v14 = *(*v9 + 40) - 1;
          goto LABEL_59;
        }

        v32 = v10[4];
        v33 = v32 < 1;
        v34 = v32 - 1;
        if (!v33)
        {
          v10[4] = v34;
          v35 = &v11[2 * *(*v9 + 32)];
          v36 = *v35;
          *(*v9 + 40) = v35[1] - 1;
          *(*v9 + 24) = *(*v9 + 40) + v36;
          return *(*v9 + 24);
        }
      }

      v10[6] = 0;
      return -1;
    }

    return v6;
  }

  if (a4)
  {
    if (v5)
    {
      goto LABEL_47;
    }

    goto LABEL_45;
  }

  if ((v5 & 1) == 0)
  {
LABEL_30:
    if (!v6)
    {
      return -1;
    }

    --v6;
  }

LABEL_32:
  v17 = sub_1AF1D36C0(a1, v6);
  if (v17 == -1)
  {
    return -1;
  }

  v18 = v17;
  v19 = a1 + 24;
  if ((*(a1 + 16) & 2) != 0)
  {
    v20 = (a1 + 24);
  }

  else
  {
    v20 = v10 + 7;
  }

  v21 = &v20[2 * v17];
  v22 = *v21;
  v23 = v21[1] + *v21;
  if (v6 >= v23)
  {
    v16 = v23 - 1;
  }

  else
  {
    v16 = v6;
  }

  v24 = pthread_self();
  v25 = *(a1 + 24);
  if (*(v25 + 48) == v24)
  {
    *(v25 + 32) = v18;
    *(*v19 + 40) = v16 - v22;
    v26 = *v19;
LABEL_56:
    *(v26 + 24) = v16;
  }

  return v16;
}

uint64_t sub_1AF1D3238(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    return -1;
  }

  v2 = (a1 + 24);
  if ((*(a1 + 16) & 2) != 0)
  {
    goto LABEL_6;
  }

  v3 = *v2;
  v4 = *(v3 + 8);
  v5 = v4 == 1;
  v6 = v4 < 1;
  v7 = v4 - 1;
  if (v6)
  {
    return -1;
  }

  v2 = (v3 + 56);
  if (!v5)
  {
    v9 = 0;
    v10 = v7;
    do
    {
      result = (v10 + v9) >> 1;
      v11 = &v2[2 * result];
      if (*v11 <= a2)
      {
        if (v11[1] + *v11 > a2)
        {
          return result;
        }

        v9 = result + 1;
      }

      else
      {
        v10 = (v10 + v9) >> 1;
      }
    }

    while (v9 < v10);
    goto LABEL_7;
  }

LABEL_6:
  v7 = 0;
  v9 = 0;
LABEL_7:
  if (v2[2 * v9 + 1] + v2[2 * v9] > a2)
  {
    return v9;
  }

  if (v9 < v7)
  {
    return v9 + 1;
  }

  return -1;
}

BOOL sub_1AF1D32E4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    return 0;
  }

  v4 = a1 + 24;
  if ((*(a1 + 16) & 2) != 0)
  {
    return *v4 <= a2 && *(a1 + 32) + *v4 > a2;
  }

  else
  {
    v5 = *(*v4 + 48);
    if (v5 != pthread_self())
    {
      v6 = *(a1 + 16);
      goto LABEL_5;
    }

    v12 = *v4;
    if (*(*v4 + 24) != a2)
    {
      v6 = *(a1 + 16);
      v13 = v12 + 56;
      if ((v6 & 2) != 0)
      {
        v13 = v4;
      }

      v14 = (v13 + 16 * *(v12 + 32));
      if (*v14 > a2 || v14[1] + *v14 <= a2)
      {
LABEL_5:
        if ((v6 & 1) == 0)
        {
          if ((v6 & 2) != 0)
          {
            goto LABEL_9;
          }

          v7 = *(*v4 + 8);
          if (v7 >= 1)
          {
            v4 = *v4 + 56;
            v8 = v7 - 1;
            if (v7 != 1)
            {
              v15 = 0;
              do
              {
                v9 = (v15 + v8) >> 1;
                v16 = (v4 + 16 * v9);
                if (*v16 <= a2)
                {
                  if (v16[1] + *v16 > a2)
                  {
                    return v9 != -1;
                  }

                  v15 = v9 + 1;
                }

                else
                {
                  v8 = (v15 + v8) >> 1;
                }
              }

              while (v15 < v8);
              v9 = v15;
LABEL_10:
              v10 = (v4 + 16 * v9);
              if (*v10 <= a2 && v10[1] + *v10 > a2)
              {
                return v9 != -1;
              }

              goto LABEL_12;
            }

LABEL_9:
            v9 = 0;
            goto LABEL_10;
          }
        }

LABEL_12:
        v9 = -1;
        return v9 != -1;
      }
    }

    return 1;
  }
}

int64x2_t sub_1AF1D3458(uint64_t a1, uint64_t a2, uint64_t a3, int64x2_t result)
{
  if (a3)
  {
    v4 = a3;
    v7 = a2 + a3;
    v8 = sub_1AF1D36C0(a1, a2);
    if (v8 == -1)
    {
      v9 = 0;
    }

    else
    {
      v9 = v8;
    }

    v10 = a1 + 24;
    for (i = 16 * v9; ; i += 16)
    {
      v12 = (*(a1 + 16) & 1) == 0;
      if ((*(a1 + 16) & 3) == 0)
      {
        v12 = *(*v10 + 8);
      }

      if (v9 >= v12)
      {
        goto LABEL_25;
      }

      v13 = a1 + 24;
      if ((*(a1 + 16) & 2) == 0)
      {
        v13 = *v10 + 56;
      }

      v14 = (v13 + i);
      v15 = *v14;
      v16 = v7 - *v14;
      if (v7 < *v14)
      {
        break;
      }

      v17 = v14[1] + v15;
      if (a2 < v15)
      {
        v15 = a2;
        if (v7 <= v17)
        {
          v16 = v17 - a2;
        }

        else
        {
          v16 = v4;
        }

        if (v7 <= v17)
        {
          v4 = v17 - a2;
        }

LABEL_24:
        sub_1AF1D3870(a1, v9, v15, v16);
LABEL_25:
        if (*(a1 + 16))
        {
          if (v9)
          {
            goto LABEL_40;
          }

          v19 = 1;
        }

        else
        {
          if ((*(a1 + 16) & 2) == 0)
          {
            v18 = *(*v10 + 8);
            if (v18 == v9)
            {
              v19 = v18 + 1;
              goto LABEL_33;
            }

LABEL_40:
            while (1)
            {
              if (*(a1 + 16))
              {
                v25 = -1;
              }

              else
              {
                v25 = (*(a1 + 16) & 2) != 0 ? 0 : *(*v10 + 8) - 1;
              }

              if (v9 >= v25)
              {
                break;
              }

              v26 = a1 + 24;
              if ((*(a1 + 16) & 2) == 0)
              {
                v26 = *v10 + 56;
              }

              result = *(v26 + 16 * v9);
              v27 = (v26 + 16 * (v9 + 1));
              v28 = vaddvq_s64(result);
              if (v28 < *v27)
              {
                break;
              }

              v29 = v27[1] + *v27;
              if (v28 < v29)
              {
                sub_1AF1D3870(a1, v9, *(v26 + 16 * v9), v29 - result.i64[0]);
                sub_1AF1D3968(a1, ++v9);
              }

              else
              {
                sub_1AF1D3968(a1, v9 + 1);
              }
            }

            return result;
          }

          if (v9 != 1)
          {
            goto LABEL_40;
          }

          v19 = 2;
        }

LABEL_33:
        result.i64[0] = sub_1AF1D3F3C(a1, v19).n128_u64[0];
        v20 = *(a1 + 16);
        if ((v20 & 2) != 0)
        {
          *(a1 + 24) = a2;
          *(a1 + 32) = v4;
        }

        else
        {
          *(*(a1 + 24) + 48) = 0;
          v21 = *(a1 + 24);
          if ((*(a1 + 16) & 2) != 0)
          {
            v22 = a1 + 24;
          }

          else
          {
            v22 = v21 + 56;
          }

          v23 = *(v21 + 8);
          *(v21 + 8) = v23 + 1;
          v24 = (v22 + 16 * v23);
          *v24 = a2;
          v24[1] = v4;
          *(*(a1 + 24) + 16) += v4;
          v20 = *(a1 + 16);
        }

        *(a1 + 16) = v20 & 0xFE;
        goto LABEL_40;
      }

      if (v7 <= v17)
      {
        return result;
      }

      if (v17 >= a2)
      {
        goto LABEL_24;
      }

      ++v9;
    }

    sub_1AF1D375C(a1, a2, v4, v9);
  }

  return result;
}

uint64_t sub_1AF1D36C0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    return -1;
  }

  v2 = (a1 + 24);
  if ((*(a1 + 16) & 2) != 0)
  {
    goto LABEL_5;
  }

  v3 = *v2;
  v4 = *(v3 + 8);
  if (v4 < 1)
  {
    return -1;
  }

  v2 = (v3 + 56);
  v5 = v4 - 1;
  if (v4 != 1)
  {
    v6 = 0;
    do
    {
      result = (v5 + v6) >> 1;
      v10 = &v2[2 * result];
      if (*v10 <= a2)
      {
        if (v10[1] + *v10 > a2)
        {
          return result;
        }

        v6 = result + 1;
      }

      else
      {
        v5 = (v5 + v6) >> 1;
      }
    }

    while (v6 < v5);
    goto LABEL_6;
  }

LABEL_5:
  v6 = 0;
LABEL_6:
  v7 = v2[2 * v6];
  v8 = v6 - 1;
  if (v6 <= 0)
  {
    v8 = -1;
  }

  if (v7 > a2)
  {
    return v8;
  }

  else
  {
    return v6;
  }
}

void sub_1AF1D375C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 16))
  {
    v8 = 0;
  }

  else if ((*(a1 + 16) & 2) != 0)
  {
    v8 = 1;
  }

  else
  {
    v8 = *(*(a1 + 24) + 8);
  }

  if (v8 >= a4)
  {
    sub_1AF1D3F3C(a1, v8 + 1);
    v10 = (a1 + 24);
    if ((*(a1 + 16) & 2) == 0)
    {
      v10 = (*v10 + 56);
    }

    if (v8 > a4)
    {
      v11 = &v10[2 * v8];
      do
      {
        --v8;
        *v11 = *(v11 - 1);
        --v11;
      }

      while (v8 > a4);
    }

    v12 = &v10[2 * a4];
    *v12 = a2;
    v12[1] = a3;
    v13 = *(a1 + 16);
    if ((v13 & 2) == 0)
    {
      *(*(a1 + 24) + 48) = 0;
      ++*(*(a1 + 24) + 8);
      *(*(a1 + 24) + 16) += a3;
      v13 = *(a1 + 16);
    }

    *(a1 + 16) = v13 & 0xFE;
  }

  else
  {
    v9 = sub_1AF0D5194();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDE0288();
    }
  }
}

void sub_1AF1D3870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 16))
  {
    v4 = 0;
  }

  else if ((*(a1 + 16) & 2) != 0)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(*(a1 + 24) + 8);
  }

  if (a4 <= 0)
  {

    sub_1AF1D3968(a1, a2);
  }

  else if (v4 >= a2)
  {
    v6 = a1 + 24;
    v7 = a1 + 24;
    if ((*(a1 + 16) & 2) == 0)
    {
      v7 = *v6 + 56;
    }

    v8 = (v7 + 16 * a2);
    v9 = v8[1];
    *v8 = a3;
    v8[1] = a4;
    if ((*(a1 + 16) & 2) == 0)
    {
      *(*v6 + 48) = 0;
      *(*v6 + 16) -= v9;
      *(*v6 + 16) += a4;
    }
  }

  else
  {
    v5 = sub_1AF0D5194();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDE0288();
    }
  }
}

void sub_1AF1D3968(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = 0;
  }

  else if ((*(a1 + 16) & 2) != 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = *(*(a1 + 24) + 8);
  }

  if (v3 >= a2)
  {
    v5 = (a1 + 24);
    if ((*(a1 + 16) & 2) == 0)
    {
      v5 = (*v5 + 56);
    }

    v6 = &v5[2 * a2];
    v7 = v6[1];
    if (a2 + 1 < v3)
    {
      v8 = v6 + 2;
      v9 = ~a2 + v3;
      do
      {
        *(v8 - 1) = *v8;
        ++v8;
        --v9;
      }

      while (v9);
      v2 = *(a1 + 16);
    }

    if ((v2 & 2) != 0)
    {
      v10 = v2 | 1;
    }

    else
    {
      *(*(a1 + 24) + 48) = 0;
      --*(*(a1 + 24) + 8);
      *(*(a1 + 24) + 16) -= v7;
      v10 = *(a1 + 16) & 0xFE;
      if (!*(*(a1 + 24) + 8))
      {
        ++v10;
      }
    }

    *(a1 + 16) = v10;
  }

  else
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDE0288();
    }
  }
}

void sub_1AF1D3A7C(uint64_t a1, uint64_t a2)
{
  if (a2 && a2 != a1)
  {
    if ((*(a1 + 16) & 1) == 0 && ((*(a1 + 16) & 2) != 0 || *(*(a1 + 24) + 8)))
    {
      if (*(a2 + 16))
      {
        return;
      }

      if ((*(a2 + 16) & 2) != 0)
      {
        v4 = 1;
      }

      else
      {
        v4 = *(*(a2 + 24) + 8);
        if (v4 < 1)
        {
          return;
        }
      }

      for (i = 0; i != v4; ++i)
      {
        v6 = sub_1AF1D3B98(a2, i);
        sub_1AF1D3458(a1, v6, v7, v8);
      }
    }

    else
    {
      sub_1AF1D3B54(a1);

      sub_1AF1D2CF0(a1, a2);
    }
  }
}

void sub_1AF1D3B54(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 2) == 0)
  {
    v3 = *(a1 + 24);
    if (v3)
    {
      free(v3);
      v2 = *(a1 + 16);
    }

    *(a1 + 24) = 0;
  }

  *(a1 + 16) = v2 | 3;
}

uint64_t sub_1AF1D3B98(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    v4 = 0;
  }

  else if ((*(a1 + 16) & 2) != 0)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(*(a1 + 24) + 8);
  }

  if (v4 < a2)
  {
    v5 = sub_1AF0D5194();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDE02F0();
    }
  }

  v6 = (a1 + 24);
  if ((*(a1 + 16) & 2) == 0)
  {
    v6 = (*v6 + 56);
  }

  return v6[2 * a2];
}

void sub_1AF1D3C34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (a2 < 1)
    {
      v6 = 0;
    }

    else
    {
      v6 = sub_1AF1D3238(a1, a2);
      if (v6 == -1)
      {
        return;
      }
    }

    v7 = a2 + a3;
    v8 = a1 + 24;
    while (1)
    {
      if (*(a1 + 16))
      {
        v9 = 0;
      }

      else
      {
        v9 = (*(a1 + 16) & 2) != 0 ? 1 : *(*v8 + 8);
      }

      if (v6 >= v9)
      {
        break;
      }

      v10 = a1 + 24;
      if ((*(a1 + 16) & 2) == 0)
      {
        v10 = *v8 + 56;
      }

      v11 = (v10 + 16 * v6);
      v12 = *v11;
      if (v7 < *v11)
      {
        break;
      }

      v13 = v11[1] + v12;
      if (a2 > v12)
      {
        if (v13 > v7)
        {
          sub_1AF1D3870(a1, v6, v7, v13 - v7);

          sub_1AF1D375C(a1, v12, a2 - v12, v6);
          return;
        }

        if (a2 < v13)
        {
          sub_1AF1D3870(a1, v6, v12, a2 - v12);
        }

        ++v6;
      }

      else
      {
        if (v13 > v7)
        {

          sub_1AF1D3870(a1, v6, v7, v13 - v7);
          return;
        }

        sub_1AF1D3968(a1, v6);
      }
    }
  }
}

void sub_1AF1D3DC0(uint64_t a1, uint64_t a2)
{
  if (a2 && (*(a1 + 16) & 1) == 0 && ((*(a1 + 16) & 2) != 0 || *(*(a1 + 24) + 8) >= 1))
  {
    if (a2 == a1)
    {

      sub_1AF1D3B54(a1);
    }

    else
    {
      if (*(a2 + 16))
      {
        return;
      }

      if ((*(a2 + 16) & 2) != 0)
      {
        v4 = 1;
      }

      else
      {
        v4 = *(*(a2 + 24) + 8);
        if (v4 < 1)
        {
          return;
        }
      }

      for (i = 0; i != v4; ++i)
      {
        v6 = sub_1AF1D3B98(a2, i);
        sub_1AF1D3C34(a1, v6, v7);
      }
    }
  }
}

uint64_t sub_1AF1D3EA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AF1D2E18();
  *(v4 + 16) |= 0xBu;
  v5 = sub_1AF1D2E18();
  v5[16] |= 0xBu;
  sub_1AF1D3A7C(v4, a1);
  sub_1AF1D3A7C(v5, a1);
  sub_1AF1D3DC0(v5, a2);
  sub_1AF1D3DC0(v4, v5);
  CFRelease(v5);
  return v4;
}

__n128 sub_1AF1D3F3C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if ((v3 & 2) != 0)
  {
    v4 = 1;
  }

  else
  {
    v4 = **(a1 + 24);
  }

  if (v4 < a2)
  {
    if (a2 == 1)
    {
      *(a1 + 16) = v3 | 2;
    }

    else
    {
      v5 = 2 * v4;
      if (v5 <= a2)
      {
        v5 = a2;
      }

      if (a2 >= 4)
      {
        v6 = v5;
      }

      else
      {
        v6 = 4;
      }

      if ((*(a1 + 16) & 2) != 0)
      {
        v8 = !(v3 & 1);
        if (*(a1 + 16))
        {
          v9 = 0;
        }

        else
        {
          v9 = *(a1 + 32);
        }

        v10 = (a1 + 24);
        v12 = *(a1 + 24);
        *(a1 + 16) = v3 & 0xFD;
        v11 = malloc_type_calloc(16 * v6 + 56, 1uLL, 0x8A973CD8uLL);
        *(a1 + 24) = v11;
        v11[6] = 0;
        **(a1 + 24) = v6;
        *(*(a1 + 24) + 8) = v8;
        *(*(a1 + 24) + 16) = v9;
        if ((*(a1 + 16) & 2) == 0)
        {
          v10 = (*v10 + 56);
        }

        result = v12;
        *v10 = v12;
      }

      else
      {
        *(a1 + 24) = malloc_type_realloc(*(a1 + 24), 16 * v6 + 56, 0x1080040EA666AC5uLL);
      }
    }
  }

  return result;
}

void sub_1AF1D4080(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_1AF1D40A4(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
    a1[2] = 0;
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
    a1[3] = 0;
  }

  v4 = a1[6];
  if (v4)
  {
    CFRelease(v4);
    a1[6] = 0;
  }

  v5 = a1[8];

  free(v5);
}

uint64_t sub_1AF1D4110()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED739928 = result;
  return result;
}

void *sub_1AF1D4138(uint64_t a1)
{
  if (qword_1ED739930 != -1)
  {
    sub_1AFDE0358();
  }

  v2 = sub_1AF0D160C(qword_1ED739928, 0x40uLL);
  v2[2] = CFDictionaryCreateMutable(0, 0, 0, 0);
  v2[3] = sub_1AF1D2E60();
  v2[4] = 0;
  v2[5] = a1;
  v2[6] = sub_1AF1D26F8(16, 4096);
  sub_1AF1D3458(v2[3], 0, a1, v3);
  return v2;
}

uint64_t sub_1AF1D41CC(uint64_t a1, void *key)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE036C(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  Value = CFDictionaryGetValue(*(a1 + 16), key);
  if (Value)
  {
    return *Value;
  }

  else
  {
    return -1;
  }
}

uint64_t sub_1AF1D4238(uint64_t a1, void *key)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE036C(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  Value = CFDictionaryGetValue(*(a1 + 16), key);
  if (Value)
  {
    v13 = Value;
    result = *Value;
  }

  else
  {
    v13 = sub_1AF1D2760(*(a1 + 48));
    CFDictionaryAddValue(*(a1 + 16), key, v13);
    *(v13 + 1) = 0;
    result = sub_1AF1D42E8(a1);
    *v13 = result;
    ++*(a1 + 72);
  }

  ++*(v13 + 1);
  return result;
}

uint64_t sub_1AF1D42E8(uint64_t a1)
{
  v2 = sub_1AF1D2EB4(*(a1 + 24));
  if (v2 == -1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDE03E4(v4);
    }
  }

  else
  {
    sub_1AF1D3E98(*(a1 + 24), v2);
    v3 = *(a1 + 32);
    if (v3 <= v2)
    {
      v3 = v2;
    }

    *(a1 + 32) = v3;
    *(a1 + 56) = 0;
  }

  return v2;
}

void sub_1AF1D4364(uint64_t a1, void *key)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE036C(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  Value = CFDictionaryGetValue(*(a1 + 16), key);
  if (Value)
  {
    v13 = Value;
    v14 = Value[1] - 1;
    Value[1] = v14;
    if (!v14)
    {
      v15 = *Value;
      CFDictionaryRemoveValue(*(a1 + 16), key);
      sub_1AF1D28EC(*(a1 + 48), v13, v16);
      *(a1 + 56) = 0;
      sub_1AF1D3E90(*(a1 + 24), v15, v17);
      if (*(a1 + 32) == v15)
      {
        v18 = sub_1AF1D2EE4(*(a1 + 24));
        if (v18 <= 1)
        {
          v19 = 1;
        }

        else
        {
          v19 = v18;
        }

        *(a1 + 32) = v19 - 1;
      }

      ++*(a1 + 72);
    }
  }
}

CFIndex sub_1AF1D4434(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE036C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return CFDictionaryGetCount(*(a1 + 16));
}

void sub_1AF1D4480(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE036C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  sub_1AF1D3B54(*(a1 + 24));
  sub_1AF1D3458(*(a1 + 24), 0, *(a1 + 40), v10);
  CFDictionaryRemoveAllValues(*(a1 + 16));
}

uint64_t sub_1AF1D44EC(uint64_t a1, void *key)
{
  *&v15[5] = *MEMORY[0x1E69E9840];
  if ((*(a1 + 56) & 1) == 0)
  {
    Count = CFDictionaryGetCount(*(a1 + 16));
    v5 = *(a1 + 64);
    if (v5)
    {
      free(v5);
      *(a1 + 64) = 0;
    }

    if (Count >= 1)
    {
      v6 = *(a1 + 32);
      *(a1 + 64) = malloc_type_malloc(8 * v6 + 8, 0x100004000313F17uLL);
      v7 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
      CFDictionaryGetKeysAndValues(*(a1 + 16), v7, 0);
      qsort(v7, Count, 8uLL, sub_1AF1D46A0);
      v8 = 0;
      while (1)
      {
        Value = CFDictionaryGetValue(*(a1 + 16), v7[v8]);
        if (!Value)
        {
          break;
        }

        v10 = *Value;
        if (*Value < 0 || v10 > v6)
        {
          goto LABEL_11;
        }

LABEL_13:
        *(*(a1 + 64) + 8 * v10) = v8++;
        if (Count == v8)
        {
          free(v7);
          goto LABEL_15;
        }
      }

      v10 = -1;
LABEL_11:
      v11 = sub_1AF0D5194();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDE0428(v14, v15, v11);
      }

      goto LABEL_13;
    }

LABEL_15:
    *(a1 + 56) = 1;
  }

  result = sub_1AF1D41CC(a1, key);
  if (result != -1)
  {
    v13 = *(a1 + 64);
    if (v13)
    {
      return *(v13 + 8 * result);
    }
  }

  return result;
}

uint64_t sub_1AF1D46A0(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    v2 = -1;
  }

  else
  {
    v2 = 1;
  }

  if (*a1 == *a2)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1AF1D46CC()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED734680 = result;
  return result;
}

uint64_t sub_1AF1D46F4(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (qword_1ED734688 != -1)
  {
    sub_1AFDE0478();
  }

  v4 = sub_1AF0D160C(qword_1ED734680, 0x28uLL);
  *(v4 + 40) = a1;
  *(v4 + 48) = a2;
  *v7 = 0x1000000006;
  v6 = 4;
  if (sysctl(v7, 2u, (v4 + 32), &v6, 0, 0) < 0)
  {
    *(v4 + 32) = 64;
  }

  return v4;
}

void sub_1AF1D47C4(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    free(v2);
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  v5 = *(a1 + 16);
  v4 = (a1 + 16);
  v3 = v5;
  if (v5)
  {
    free(v3);
    *v4 = 0;
    v4[1] = 0;
  }
}

void sub_1AF1D4808(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      sub_1AF1D47C4(*(a1 + 16) + v2);
      ++v3;
      v2 += 40;
    }

    while (v3 < *(a1 + 24));
  }

  free(*(a1 + 16));
  *(a1 + 36) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
}

_DWORD *sub_1AF1D4870(_DWORD *result, uint64_t a2)
{
  v2 = (result[6] - 1);
  result[6] = v2;
  if (v2 != a2)
  {
    return memmove((*(result + 2) + 8 * a2), (*(result + 2) + 8 * a2 + 8), 8 * (v2 - a2));
  }

  return result;
}

void sub_1AF1D48A0(uint64_t a1, unint64_t a2)
{
  v2 = WORD1(a2);
  *&v42[5] = *MEMORY[0x1E69E9840];
  v40 = a2;
  if (!HIDWORD(a2))
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE048C(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v39 = *(a1 + 24);
  if (!v39)
  {
    v17 = 0;
    v14 = 0;
LABEL_22:
    v28 = *(a1 + 28);
    if (v28 < *(a1 + 24) + 1)
    {
      if (*(a1 + 16))
      {
        v29 = 2 * v28;
        *(a1 + 28) = v29;
        if (!v29)
        {
          v30 = sub_1AF0D5194();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDE0554(v30, v31, v32, v33, v34, v35, v36, v37);
          }
        }

        v38 = malloc_type_realloc(*(a1 + 16), 8 * *(a1 + 28), 0x100004000313F17uLL);
      }

      else
      {
        *(a1 + 28) = 8;
        v38 = malloc_type_malloc(0x40uLL, 0x100004000313F17uLL);
      }

      *(a1 + 16) = v38;
    }

    if (HIDWORD(v40) > *(a1 + 32))
    {
      *(a1 + 32) = HIDWORD(v40);
    }

    if (v17)
    {
      memmove((*(a1 + 16) + 8 * v14 + 8), (*(a1 + 16) + 8 * v14), 8 * (v39 - v14));
    }

    *(*(a1 + 16) + 8 * v14) = v40;
    ++*(a1 + 24);
    return;
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = v2;
  v16 = &v40;
  v17 = 1;
  while (1)
  {
    v18 = (*(a1 + 16) + v12);
    v19 = *(v18 + 1);
    v20 = v18[1];
    v21 = *(v16 + 1);
    v22 = *(v16 + 1);
    v23 = v18;
    if (v20 + v19 == v21 || (v23 = v16, v22 + v21 == v19))
    {
      v24 = *v23;
      if (v13 == 1)
      {
        sub_1AF1D4870(a1, v14);
        v18 = v16;
      }

      v25 = v22 + v20;
      *v18 = v24 | (v25 << 32);
      if (v25 + WORD1(v24) > *(a1 + 8))
      {
        v26 = sub_1AF0D5194();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDE0504(buf, v42, v26);
        }
      }

      v27 = v18[1];
      if (v27 > *(a1 + 32))
      {
        *(a1 + 32) = v27;
      }

      if (++v13 == 2)
      {
        return;
      }

      v19 = *(v18 + 1);
      v15 = WORD1(v40);
      v16 = v18;
    }

    if (v19 > v15)
    {
      break;
    }

    v17 = ++v14 < v39;
    v12 += 8;
    if (v39 == v14)
    {
      v14 = v39;
      break;
    }
  }

  if (!v13)
  {
    goto LABEL_22;
  }
}

unint64_t sub_1AF1D4B3C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (*(a1 + 32) < a2)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE05CC(v2, v4);
    }
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    v6 = 0;
    v7 = *(a1 + 16);
    v8 = 2;
    while (1)
    {
      v9 = (v7 + v8);
      v10 = *(v7 + v8 + 2);
      if (v10 >= v2)
      {
        break;
      }

      ++v6;
      v8 += 8;
      if (v5 == v6)
      {
        goto LABEL_8;
      }
    }

    v20 = *(v9 - 1);
    v19 = *v9;
    if (v19 + v2 > *(a1 + 8))
    {
      v22 = sub_1AF0D5194();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDE0658(v22, v23, v24, v25, v26, v27, v28, v29);
      }
    }

    v30 = *(a1 + 16) + v8;
    v31 = *(v30 + 2) - v2;
    if (v31)
    {
      *v30 += v2;
      *(v30 + 2) = v31;
    }

    else
    {
      sub_1AF1D4870(a1, v6);
    }

    if (*(a1 + 32) == v10)
    {
      v32 = *(a1 + 24);
      if (v32)
      {
        v33 = 0;
        v34 = (*(a1 + 16) + 4);
        do
        {
          v36 = *v34;
          v34 += 2;
          v35 = v36;
          if (v36 > v33)
          {
            v33 = v35;
          }

          --v32;
        }

        while (v32);
        *(a1 + 32) = v33;
      }

      else
      {
        *(a1 + 32) = 0;
      }
    }
  }

  else
  {
LABEL_8:
    v11 = sub_1AF0D5194();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE06D0(v11, v12, v13, v14, v15, v16, v17, v18);
    }

    v2 = 0;
    v19 = 0xFFFF;
    v20 = 0xFFFF;
  }

  return (v2 << 32) | (v19 << 16) | v20;
}

void sub_1AF1D4CCC(uint64_t a1, uint64_t a2, int a3, unsigned int a4)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v7 = a4;
  v8 = *(a1 + 40) * a4;
  v9 = malloc_type_malloc(v8, 0x71C34B1EuLL);
  *a2 = v9;
  bzero(v9, v8);
  *(a2 + 8) = a4;
  *(a2 + 12) = a3;

  sub_1AF1D48A0(a2, a3 | (v7 << 32));
}

uint64_t sub_1AF1D4D58(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    *(a1 + 24) = v4 + 1;
    v5 = malloc_type_realloc(*(a1 + 16), 40 * (v4 + 1), 0x10A00408EF24B1CuLL);
    *(a1 + 16) = v5;
  }

  else
  {
    v5 = malloc_type_malloc(0x28uLL, 0x10A00408EF24B1CuLL);
    *(a1 + 16) = v5;
    *(a1 + 24) = 1;
  }

  ++*(a1 + 28);
  v6 = v5 + 40 * v4;
  sub_1AF1D4CCC(a1, v6, v4, a2);
  return v6;
}

unint64_t sub_1AF1D4E00(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *(a1 + 24);
  if (v6)
  {
    v7 = *(a1 + 16);
    v8 = v6;
    while (!*v7 || *(v7 + 32) < a2)
    {
      v7 += 40;
      if (!--v8)
      {
        v9 = 0;
        v7 = 0;
        v10 = 40 * v6;
        do
        {
          v11 = *(a1 + 16);
          v12 = (v11 + v9);
          v13 = *(v11 + v9 + 32);
          if (v13 >= a2)
          {
            if (!*v12)
            {
              sub_1AF1D4CCC(a1, v12, *(v11 + v9 + 12), v13);
            }

            v7 = v12;
          }

          v9 += 40;
        }

        while (v10 != v9);
        if (v7)
        {
          goto LABEL_18;
        }

        goto LABEL_13;
      }
    }

    goto LABEL_18;
  }

LABEL_13:
  if (*(a1 + 48) >= a2)
  {
    v14 = *(a1 + 48);
  }

  else
  {
    v14 = a2;
  }

  if (v14 <= 0x10000)
  {
    v7 = sub_1AF1D4D58(a1, v14);
LABEL_18:
    if (a3)
    {
      *a3 = v7;
    }

    *(a1 + 36) += a2;

    return sub_1AF1D4B3C(v7, a2);
  }

  v16 = sub_1AF0D5194();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDE0748(v16);
  }

  return 0xFFFFFFFFLL;
}

void sub_1AF1D4F38(uint64_t a1, unint64_t a2)
{
  v4 = (*(a1 + 16) + 40 * a2);
  if (v4[3] != a2)
  {
    v5 = sub_1AF0D5194();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE07C8(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  sub_1AF1D48A0(v4, a2);
  if (v4[8] == v4[2] && *(a1 + 28) >= 2u)
  {
    sub_1AF1D47C4(v4);
    --*(a1 + 28);
  }

  *(a1 + 36) -= HIDWORD(a2);
}

uint64_t sub_1AF1D5010(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (!a1)
  {
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE01B8(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  if (a2 >= *(a1 + 24))
  {
    v14 = sub_1AF0D5194();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE0840(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  v22 = *(a1 + 16) + 40 * a2;
  if (*(v22 + 12) != a2 || *(v22 + 8) <= HIWORD(a2))
  {
    v23 = sub_1AF0D5194();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE08B8(v23, v24, v25, v26, v27, v28, v29, v30);
    }
  }

  return *v22 + *(a1 + 40) * (a3 + HIWORD(a2));
}

uint64_t sub_1AF1D50F8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 24);
  if (v2)
  {
    v4 = result;
    for (i = 0; i != v2; ++i)
    {
      v6 = *(v4 + 16) + 40 * i;
      if (*(v6 + 24))
      {
        v7 = *(*(v6 + 16) + 2);
        v8 = *(v6 + 8);
        if (v8)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v8 = *(v6 + 8);
        v7 = v8;
        if (v8)
        {
LABEL_7:
          v9 = 0;
          for (j = 0; j < v8; ++j)
          {
            if (j == v7)
            {
              v11 = *(v6 + 16);
              j = v7 + *(v11 + 8 * v9++ + 4) - 1;
              if (v9 >= *(v6 + 24))
              {
                v7 = v8;
              }

              else
              {
                v7 = *(v11 + 8 * v9 + 2);
              }
            }

            else
            {
              result = (*(a2 + 16))(a2, *v6 + *(v4 + 40) * j);
            }

            v8 = *(v6 + 8);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1AF1D5200()
{
  if (qword_1ED739920 != -1)
  {
    sub_1AFDE0930();
  }

  return qword_1ED739918;
}

uint64_t sub_1AF1D5238()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED739918 = result;
  qword_1ED72DFC0 = sub_1AF1D6124;
  return result;
}

uint64_t sub_1AF1D527C()
{
  if (qword_1ED739920 != -1)
  {
    sub_1AFDE0930();
  }

  result = sub_1AF0D160C(qword_1ED739918, 0xA8uLL);
  if (result)
  {
    *(result + 64) |= 1u;
    *(result + 80) = 0;
    *(result + 88) = 0;
  }

  return result;
}

CFHashCode sub_1AF1D52CC(uint64_t a1, CFTypeRef cf)
{
  if (!cf)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE0944(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = CFHash(cf);
  v13 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * result) ^ ((0x9DDFEA08EB382D69 * result) >> 47));
  *(a1 + 168) = 0x9DDFEA08EB382D69 * (v13 ^ (v13 >> 47));
  return result;
}

uint64_t sub_1AF1D534C(const void *a1, const void *a2)
{
  v4 = sub_1AF1D527C();
  v5 = *(v4 + 80);
  if (v5 != a1)
  {
    if (v5)
    {
      CFRelease(v5);
      *(v4 + 80) = 0;
    }

    if (a1)
    {
      v6 = CFRetain(a1);
    }

    else
    {
      v6 = 0;
    }

    *(v4 + 80) = v6;
  }

  v7 = *(v4 + 88);
  if (v7 != a2)
  {
    if (v7)
    {
      CFRelease(v7);
      *(v4 + 88) = 0;
    }

    if (a2)
    {
      v8 = CFRetain(a2);
    }

    else
    {
      v8 = 0;
    }

    *(v4 + 88) = v8;
  }

  v9 = *(v4 + 96);
  if (v9)
  {
    CFRelease(v9);
    *(v4 + 96) = 0;
  }

  v10 = *(v4 + 104);
  if (v10)
  {
    CFRelease(v10);
    *(v4 + 104) = 0;
  }

  v11 = *(v4 + 112);
  if (v11)
  {
    CFRelease(v11);
    *(v4 + 112) = 0;
  }

  v12 = *(v4 + 120);
  if (v12)
  {
    CFRelease(v12);
    *(v4 + 120) = 0;
  }

  *(v4 + 144) = 0;
  v13 = *(v4 + 152);
  if (v13)
  {
    CFRelease(v13);
    *(v4 + 152) = 0;
  }

  v14 = *(v4 + 160);
  if (v14)
  {
    CFRelease(v14);
    *(v4 + 160) = 0;
  }

  sub_1AF1D5450(v4);
  return v4;
}

CFHashCode sub_1AF1D5450(void *a1)
{
  v2 = a1[19];
  if (v2)
  {
    v3 = 0x9DDFEA08EB382D69 * (*(v2 + 16))();
  }

  else
  {
    v3 = 0;
  }

  v4 = a1[10];
  if (v4)
  {
    v5 = CFHash(v4);
  }

  else
  {
    v5 = 0;
  }

  result = a1[11];
  if (result)
  {
    result = CFHash(result);
  }

  v7 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47))) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47))) >> 47));
  v8 = 0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v5 ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * (v5 ^ v7)));
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
  a1[21] = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v9 ^ ((0x9DDFEA08EB382D69 * (result ^ v9)) >> 47) ^ (0x9DDFEA08EB382D69 * (result ^ v9)))) ^ ((0x9DDFEA08EB382D69 * (v9 ^ ((0x9DDFEA08EB382D69 * (result ^ v9)) >> 47) ^ (0x9DDFEA08EB382D69 * (result ^ v9)))) >> 47));
  return result;
}

uint64_t sub_1AF1D5518(const void *a1, const void *a2, int a3, const void *a4, const void *a5)
{
  v10 = sub_1AF1D527C();
  v11 = *(v10 + 80);
  if (v11 != a1)
  {
    if (v11)
    {
      CFRelease(v11);
      *(v10 + 80) = 0;
    }

    if (a1)
    {
      v12 = CFRetain(a1);
    }

    else
    {
      v12 = 0;
    }

    *(v10 + 80) = v12;
  }

  v13 = *(v10 + 88);
  if (v13 != a2)
  {
    if (v13)
    {
      CFRelease(v13);
      *(v10 + 88) = 0;
    }

    if (a2)
    {
      v14 = CFRetain(a2);
    }

    else
    {
      v14 = 0;
    }

    *(v10 + 88) = v14;
  }

  v15 = *(v10 + 96);
  if (v15)
  {
    CFRelease(v15);
    *(v10 + 96) = 0;
  }

  v16 = *(v10 + 104);
  if (v16)
  {
    CFRelease(v16);
    *(v10 + 104) = 0;
  }

  v17 = *(v10 + 112);
  if (v17)
  {
    CFRelease(v17);
    *(v10 + 112) = 0;
  }

  v18 = *(v10 + 120);
  if (v18)
  {
    CFRelease(v18);
    *(v10 + 120) = 0;
  }

  *(v10 + 144) = a3;
  *(v10 + 152) = _Block_copy(a4);
  *(v10 + 160) = _Block_copy(a5);
  sub_1AF1D5450(v10);
  return v10;
}

uint64_t sub_1AF1D5628(const void *a1, const void *a2, int a3, const void *a4, const void *a5, const void *a6, const void *a7, const void *a8, int a9, char a10)
{
  v18 = sub_1AF1D527C();
  v19 = *(v18 + 80);
  if (v19 != a1)
  {
    if (v19)
    {
      CFRelease(v19);
      *(v18 + 80) = 0;
    }

    if (a1)
    {
      v20 = CFRetain(a1);
    }

    else
    {
      v20 = 0;
    }

    *(v18 + 80) = v20;
  }

  v21 = *(v18 + 88);
  if (v21 != a2)
  {
    if (v21)
    {
      CFRelease(v21);
      *(v18 + 88) = 0;
    }

    if (a2)
    {
      v22 = CFRetain(a2);
    }

    else
    {
      v22 = 0;
    }

    *(v18 + 88) = v22;
  }

  v23 = *(v18 + 96);
  if (v23 != a4)
  {
    if (v23)
    {
      CFRelease(v23);
      *(v18 + 96) = 0;
    }

    if (a4)
    {
      v24 = CFRetain(a4);
    }

    else
    {
      v24 = 0;
    }

    *(v18 + 96) = v24;
  }

  v25 = *(v18 + 104);
  if (v25 != a5)
  {
    if (v25)
    {
      CFRelease(v25);
      *(v18 + 104) = 0;
    }

    if (a5)
    {
      v26 = CFRetain(a5);
    }

    else
    {
      v26 = 0;
    }

    *(v18 + 104) = v26;
  }

  v27 = *(v18 + 112);
  if (v27 != a6)
  {
    if (v27)
    {
      CFRelease(v27);
      *(v18 + 112) = 0;
    }

    if (a6)
    {
      v28 = CFRetain(a6);
    }

    else
    {
      v28 = 0;
    }

    *(v18 + 112) = v28;
  }

  v29 = *(v18 + 120);
  if (v29 != a7)
  {
    if (v29)
    {
      CFRelease(v29);
      *(v18 + 120) = 0;
    }

    if (a7)
    {
      v30 = CFRetain(a7);
    }

    else
    {
      v30 = 0;
    }

    *(v18 + 120) = v30;
  }

  v31 = *(v18 + 128);
  if (v31 != a8)
  {
    if (v31)
    {
      CFRelease(v31);
      *(v18 + 128) = 0;
    }

    if (a8)
    {
      v32 = CFRetain(a8);
    }

    else
    {
      v32 = 0;
    }

    *(v18 + 128) = v32;
  }

  *(v18 + 144) = a3;
  v33 = *(v18 + 152);
  if (v33)
  {
    CFRelease(v33);
    *(v18 + 152) = 0;
  }

  v34 = *(v18 + 160);
  if (v34)
  {
    CFRelease(v34);
    *(v18 + 160) = 0;
  }

  *(v18 + 176) = a9;
  if (a10)
  {
    v44 = 0;
    v45 = &v44;
    v46 = 0x4800000000;
    v48 = 0u;
    v49 = 0u;
    v50 = 0;
    v47 = v18;
    v35 = *(v18 + 80);
    if (v35)
    {
      v35 = CFHash(v35);
    }

    *&v48 = v35;
    v36 = *(v18 + 88);
    if (v36)
    {
      v36 = CFHash(v36);
    }

    *(&v48 + 1) = v36;
    v37 = *(v18 + 96);
    if (v37)
    {
      v37 = CFHash(v37);
    }

    v50 = 0;
    v49 = v37;
    v38 = *(v18 + 112);
    if (v38)
    {
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 0x40000000;
      v43[2] = sub_1AF1D6140;
      v43[3] = &unk_1E7A7BF28;
      v43[4] = &v44;
      sub_1AF28A6DC(v38, v43);
    }

    v39 = 0;
    v40 = 0x3EDF6BA1375BCBF0;
    do
    {
      v41 = v45[v39 + 3];
      ++v39;
      v40 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v41) ^ ((0xC6A4A7935BD1E995 * v41) >> 47))) ^ v40);
    }

    while (v39 != 6);
    *(v18 + 168) = (0xC6A4A7935BD1E995 * (v40 ^ (v40 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v40 ^ (v40 >> 47))) >> 47);
    _Block_object_dispose(&v44, 8);
  }

  return v18;
}

uint64_t sub_1AF1D5940(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE09BC(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  return *(a1 + 8 * a2 + 80);
}

CFHashCode sub_1AF1D5998(void *a1, void *aBlock, const void *a3)
{
  if (!a1)
  {
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE09BC(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = a1[12];
  if (v14)
  {
    CFRelease(v14);
    a1[12] = 0;
  }

  v15 = a1[19];
  if (v15)
  {
    CFRelease(v15);
    a1[19] = 0;
  }

  v16 = a1[20];
  if (v16)
  {
    CFRelease(v16);
    a1[20] = 0;
  }

  a1[19] = _Block_copy(aBlock);
  a1[20] = _Block_copy(a3);
  return sub_1AF1D5450(a1);
}

CFTypeRef sub_1AF1D5A3C(uint64_t a1, int a2, CFTypeRef cf)
{
  if (!a1)
  {
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE09BC(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = a1 + 80;
  result = *(v14 + 8 * a2);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(v14 + 8 * a2) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(v14 + 8 * a2) = result;
  }

  return result;
}

uint64_t sub_1AF1D5AC4(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE09BC(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 96);
}

uint64_t sub_1AF1D5B0C(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE09BC(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 104);
}

uint64_t sub_1AF1D5B54(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE09BC(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 112);
}

uint64_t sub_1AF1D5B9C(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE09BC(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 120);
}

uint64_t sub_1AF1D5BE4(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE09BC(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 176);
}

uint64_t sub_1AF1D5C2C(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE09BC(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 128);
}

uint64_t sub_1AF1D5C74(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE09BC(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 136);
}

void sub_1AF1D5CBC(uint64_t a1, void *key, void *value)
{
  Mutable = *(a1 + 136);
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *(a1 + 136) = Mutable;
  }

  if (value)
  {

    CFDictionarySetValue(Mutable, key, value);
  }

  else
  {

    CFDictionaryRemoveValue(Mutable, key);
  }
}

uint64_t sub_1AF1D5D58(unsigned int *cf)
{
  if (!cf)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE09BC(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = CFGetTypeID(cf);
  if (qword_1ED739920 != -1)
  {
    sub_1AFDE0A34();
  }

  if (v10 != qword_1ED739918)
  {
    v11 = sub_1AF0D5194();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE0A5C(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  return cf[36];
}

uint64_t sub_1AF1D5DFC(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE09BC(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return (*(a1 + 64) >> 1) & 1;
}

void sub_1AF1D5E48(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE09BC(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (a2)
  {
    v12 = 2;
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 64) = *(a1 + 64) & 0xFD | v12;
}

uint64_t sub_1AF1D5EB4(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE09BC(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *(a1 + 72);
  if (!v10)
  {
    return *(a1 + 64) & 1;
  }

  v11 = *(v10 + 24);
  if (!v11)
  {
    return *(a1 + 64) & 1;
  }

  v12 = sub_1AF1D5F64(v10);
  return v11(v12);
}

uint64_t sub_1AF1D5F1C(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE0AD4(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return a1 + 16;
}

uint64_t sub_1AF1D5F64(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE0AD4(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 32);
}

id sub_1AF1D5FB0(void *a1)
{
  v2 = 0;
  v3 = a1 + 10;
  v4 = 1;
  do
  {
    v5 = v4;
    v6 = v3[v2];
    if (v6)
    {
      CFRelease(v6);
    }

    v4 = 0;
    v2 = 1;
  }

  while ((v5 & 1) != 0);
  v7 = a1[17];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = a1[12];
  if (v8)
  {
    CFRelease(v8);
    a1[12] = 0;
  }

  v9 = a1[13];
  if (v9)
  {
    CFRelease(v9);
    a1[13] = 0;
  }

  v10 = a1[14];
  if (v10)
  {
    CFRelease(v10);
    a1[14] = 0;
  }

  v11 = a1[15];
  if (v11)
  {
    CFRelease(v11);
    a1[15] = 0;
  }

  v12 = a1[16];
  if (v12)
  {
    CFRelease(v12);
    a1[16] = 0;
  }

  v13 = a1[19];
  if (v13)
  {
    CFRelease(v13);
    a1[19] = 0;
  }

  v14 = a1[20];
  if (v14)
  {
    CFRelease(v14);
    a1[20] = 0;
  }

  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterPostNotification(LocalCenter, @"kCFXNotificationProgramWillDie", a1, 0, 1u);
  v16 = a1[9];
  if (v16)
  {
    CFRelease(v16);
    a1[9] = 0;
  }

  return sub_1AF16C9A4(a1);
}

CFStringRef sub_1AF1D60C4(void *a1)
{
  v2 = CFGetAllocator(a1);
  v3 = sub_1AF3753A8(a1);
}

CFHashCode sub_1AF1D6140(uint64_t a1, CFTypeRef cf, const void *a3)
{
  v5 = CFHash(cf);
  result = CFHash(a3);
  v7 = *(*(a1 + 32) + 8);
  v8 = 0x9DDFEA08EB382D69 * (*(v7 + 56) ^ ((0x9DDFEA08EB382D69 * (*(v7 + 56) ^ v5)) >> 47) ^ (0x9DDFEA08EB382D69 * (*(v7 + 56) ^ v5)));
  *(v7 + 56) = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 56);
  *(v9 + 56) = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ ((0x9DDFEA08EB382D69 * (v10 ^ result)) >> 47) ^ (0x9DDFEA08EB382D69 * (v10 ^ result)))) ^ ((0x9DDFEA08EB382D69 * (v10 ^ ((0x9DDFEA08EB382D69 * (v10 ^ result)) >> 47) ^ (0x9DDFEA08EB382D69 * (v10 ^ result)))) >> 47));
  return result;
}

uint64_t sub_1AF1D61FC()
{
  result = _CFRuntimeRegisterClass();
  qword_1EB658648 = result;
  return result;
}

uint64_t sub_1AF1D6224()
{
  if (qword_1EB658650 != -1)
  {
    sub_1AFDE0B4C();
  }

  v1 = qword_1EB658648;

  return sub_1AF0D160C(v1, 8uLL);
}

CFTypeRef sub_1AF1D626C(uint64_t a1, CFTypeRef a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE0B60(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 16);
  if (result != a2)
  {
    sub_1AF1C4640(result);
    if (a2)
    {
      result = CFRetain(a2);
    }

    else
    {
      result = 0;
    }

    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_1AF1D62E4(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE0B60(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 16);
}

uint64_t sub_1AF1D632C(uint64_t a1)
{
  if (a1)
  {
    return *a1;
  }

  v2 = sub_1AF0D5194();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDE0BD8(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  return 0;
}

BOOL sub_1AF1D6384(const __CFURL *a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = CFURLCopyScheme(a1);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (CFStringCompare(v4, @"file", 0) == kCFCompareEqualTo)
  {
    CFRelease(v5);
    if (CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
    {
      memset(&v7, 0, sizeof(v7));
      if (!stat(buffer, &v7) && (v7.st_mode & 0xF000) == 0x8000)
      {
        return access(buffer, 4) == 0;
      }
    }

    return 0;
  }

  CFStringCompare(v5, @"http", 0);
  CFRelease(v5);
  return a2;
}

__CFDictionary *sub_1AF1D649C(CFDictionaryRef theDict, const __CFURL *a2)
{
  v3 = *MEMORY[0x1E695E480];
  if (theDict)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, theDict);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v5 = MutableCopy;
  Value = CFDictionaryGetValue(MutableCopy, @"kSceneSourceAssetDirectoryURLs");
  if (Value)
  {
    Mutable = CFArrayCreateMutableCopy(v3, 0, Value);
  }

  else
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  }

  v8 = Mutable;
  CFDictionarySetValue(v5, @"kSceneSourceAssetDirectoryURLs", Mutable);
  CFRelease(v8);
  v9 = CFURLCopyScheme(a2);
  PathComponent = CFURLCreateCopyDeletingLastPathComponent(0, a2);
  if (PathComponent)
  {
    v11 = PathComponent;
    CFDictionarySetValue(v5, @"kEnclosingDirectoryURL", PathComponent);
    v13.length = CFArrayGetCount(v8);
    v13.location = 0;
    if (!CFArrayContainsValue(v8, v13, v11))
    {
      CFArrayAppendValue(v8, v11);
    }

    CFRelease(v11);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v5;
}

uint64_t sub_1AF1D6724(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  memset(&v9, 0, sizeof(v9));
  v4 = objc_msgSend_fileSystemRepresentation(a1, a2, a3, a4);
  if (!stat(v4, &v9) && (v9.st_mode & 0xF000) == 0x8000 && v9.st_size >= 1)
  {
    v6 = open(v4, 0, 511);
    if ((v6 & 0x80000000) == 0)
    {
      v7 = v6;
      if (!fstat(v6, &v9) && (v9.st_mode & 0xF000) == 0x8000 && v9.st_size >= 1)
      {
        return v7;
      }

      close(v7);
    }
  }

  return -1;
}

void sub_1AF1D7A30(uint64_t a1, __CFSet *a2, uint64_t a3)
{
  if (a3 != -1)
  {
    v4 = sub_1AF1A4604(a1, 3, a3, 1);
    if (v4)
    {

      CFSetSetValue(a2, v4);
    }
  }
}

BOOL sub_1AF1D7A8C(uint64_t a1)
{
  result = 1;
  if ((sub_1AF1BB2C8(a1) & 1) == 0)
  {
    v2 = sub_1AF1B75E8(a1);
    if (!v2 || (sub_1AF19CBB4(v2) & 0xFE) != 2)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AF1D7ADC(__n128 *a1, CFDictionaryRef theDict, int *a3, float *a4, float *a5)
{
  if (!theDict || (Value = CFDictionaryGetValue(theDict, @"kSceneSourceConvertToYUpIfNeeded")) == 0)
  {
    v11 = 0;
    if (!a3)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v11 = CFBooleanGetValue(Value) != 0;
  if (a3)
  {
LABEL_6:
    *a3 = 0;
  }

LABEL_7:
  if (a4)
  {
    *a4 = 1.0;
  }

  if (a5)
  {
    *a5 = 0.0;
  }

  if (v11)
  {
    v12 = sub_1AF1CFC48(a1).n128_u64[0];
    v13 = *(&v12 + 1) <= 0.0001;
    if (a3 && *(&v12 + 1) <= 0.0001)
    {
      if (*&v12 <= 0.0001)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      *a3 = v14;
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  valuePtr = 0.0;
  if (theDict)
  {
    v15 = CFDictionaryGetValue(theDict, @"kVFXSceneSourceConvertToUnit");
    if (v15)
    {
      CFNumberGetValue(v15, kCFNumberFloatType, &valuePtr);
      if (valuePtr != 0.0)
      {
        if (a5)
        {
          *a5 = valuePtr;
        }

        v16 = sub_1AF1CFBAC(a1);
        if (v16 != 0.0 && valuePtr != 0.0)
        {
          v17 = valuePtr / v16;
          v18 = fabs(v17 + -1.0);
          if (v18 > 0.0001)
          {
            v13 = 1;
          }

          else
          {
            v13 = v13;
          }

          if (a4 && v18 > 0.0001)
          {
            *a4 = v17;
            return 1;
          }
        }
      }
    }
  }

  return v13;
}

void sub_1AF1D7C54(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a2;
  v6 = a1;
  v295 = *MEMORY[0x1E69E9840];
  v7 = objc_msgSend_worldRef(a1, a2, a3, a4);
  if (v7)
  {
    v8 = v7;
    v9 = sub_1AF1CF7E8(v7);
    if (v9)
    {
      sub_1AF1B94AC(v9, &unk_1F24E8600);
    }

    if (v5)
    {
      Value = CFDictionaryGetValue(v5, @"kSceneSourceCleanupMeshes");
      v249 = v8;
      if (Value)
      {
        if (CFEqual(*MEMORY[0x1E695E4D0], Value))
        {
          v11 = sub_1AF1CF7E8(v8);
          if (v11)
          {
            v12 = sub_1AF1BA4E4(v11, @"model", 0);
            if (v12)
            {
              v13 = v12;
              Count = CFArrayGetCount(v12);
              if (Count <= 0)
              {
                CFRelease(v13);
              }

              else
              {
                v243 = v5;
                v244 = v4;
                v245 = v6;
                v14 = 0;
                allocator = *MEMORY[0x1E695E480];
                v247 = v13;
                do
                {
                  v251 = v14;
                  ValueAtIndex = CFArrayGetValueAtIndex(v13, v14);
                  v16 = sub_1AF1B75A0(ValueAtIndex);
                  v17 = sub_1AF1BB464(ValueAtIndex);
                  v18 = sub_1AF1B92C8(ValueAtIndex);
                  v19 = sub_1AF1B2C1C(v16);
                  if (v19)
                  {
                    v20 = v19;
                    v21 = MEMORY[0x1E695E9F8];
                    Mutable = CFSetCreateMutable(0, 0, MEMORY[0x1E695E9F8]);
                    v250 = CFSetCreateMutable(0, 0, v21);
                    valuePtr.i32[0] = 0;
                    if (v17)
                    {
                      v23 = CFDictionaryGetValue(v17, @"uv_set");
                      if (v23)
                      {
                        CFNumberGetValue(v23, kCFNumberIntType, &valuePtr);
                        v24 = valuePtr.i32[0];
                      }

                      else
                      {
                        v24 = 1;
                        valuePtr.i32[0] = 1;
                      }

                      if (v24 >= sub_1AF1A4DBC(v20, 3))
                      {
                        v26 = sub_1AF0D5194();
                        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                        {
                          buf.i32[0] = 67109120;
                          buf.i32[1] = valuePtr.i32[0];
                          _os_log_impl(&dword_1AF0CE000, v26, OS_LOG_TYPE_DEFAULT, "Warning: light_map uv_set:%d is pointing to an invalid uv_set(no corresponding source) and was reset to 1", &buf, 8u);
                        }

                        valuePtr.i32[0] = 1;
                        v25 = 1;
                      }

                      else
                      {
                        v25 = valuePtr.u32[0];
                      }

                      v27 = sub_1AF1A4604(v20, 3, v25, 0);
                      if (v27)
                      {
                        CFSetSetValue(Mutable, v27);
                      }
                    }

                    v28 = sub_1AF1B1FE0(v16);
                    if (v28 >= 1)
                    {
                      v29 = v28;
                      for (i = 0; i != v29; ++i)
                      {
                        v31 = sub_1AF1B2030(v16, i);
                        v32 = sub_1AF1A1270(v31);
                        if (v32)
                        {
                          v33 = v32;
                          v34 = sub_1AF16664C(v32, 0);
                          sub_1AF1D7A30(v20, Mutable, v34);
                          v35 = sub_1AF16664C(v33, 1);
                          sub_1AF1D7A30(v20, Mutable, v35);
                          v36 = sub_1AF16664C(v33, 2);
                          sub_1AF1D7A30(v20, Mutable, v36);
                          v37 = sub_1AF16664C(v33, 4);
                          sub_1AF1D7A30(v20, Mutable, v37);
                          v38 = sub_1AF16664C(v33, 6);
                          sub_1AF1D7A30(v20, Mutable, v38);
                          v39 = sub_1AF16664C(v33, 7);
                          sub_1AF1D7A30(v20, Mutable, v39);
                          v40 = sub_1AF16664C(v33, 8);
                          sub_1AF1D7A30(v20, Mutable, v40);
                          v41 = sub_1AF16664C(v33, 9);
                          sub_1AF1D7A30(v20, Mutable, v41);
                          v42 = sub_1AF16664C(v33, 10);
                          sub_1AF1D7A30(v20, Mutable, v42);
                          v43 = sub_1AF16664C(v33, 11);
                          sub_1AF1D7A30(v20, Mutable, v43);
                          v44 = sub_1AF16664C(v33, 12);
                          sub_1AF1D7A30(v20, Mutable, v44);
                          v45 = sub_1AF16664C(v33, 13);
                          sub_1AF1D7A30(v20, Mutable, v45);
                          v46 = sub_1AF16664C(v33, 14);
                          sub_1AF1D7A30(v20, Mutable, v46);
                          v47 = sub_1AF16664C(v33, 15);
                          sub_1AF1D7A30(v20, Mutable, v47);
                          v48 = sub_1AF16664C(v33, 16);
                          sub_1AF1D7A30(v20, Mutable, v48);
                          v49 = sub_1AF16664C(v33, 17);
                          sub_1AF1D7A30(v20, Mutable, v49);
                          v50 = sub_1AF16664C(v33, 18);
                          sub_1AF1D7A30(v20, Mutable, v50);
                          v51 = sub_1AF16664C(v33, 19);
                          sub_1AF1D7A30(v20, Mutable, v51);
                        }
                      }
                    }

                    v52 = sub_1AF1A4DBC(v20, 3);
                    v53 = v250;
                    if (v52 >= 1)
                    {
                      v54 = v52;
                      for (j = 0; j != v54; ++j)
                      {
                        v56 = sub_1AF1A4604(v20, 3, j, 0);
                        if (v56)
                        {
                          v57 = v56;
                          if (!CFSetContainsValue(Mutable, v56))
                          {
                            CFSetSetValue(v250, v57);
                          }
                        }
                      }
                    }

                    v278.columns[0].i64[0] = MEMORY[0x1E69E9820];
                    v278.columns[0].i64[1] = 3221225472;
                    v278.columns[1].i64[0] = sub_1AF1D8F3C;
                    v278.columns[1].i64[1] = &unk_1E7A79938;
                    v278.columns[2].i64[0] = v20;
                    sub_1AF28A5A0(v250, &v278);
                    if (!v18)
                    {
                      v58 = sub_1AF1A4CE8(v20, 1);
                      v253 = v20;
                      v59 = sub_1AF1A4CF8(v20, 1);
                      v60 = sub_1AF1AE6EC(v58);
                      v61 = malloc_type_malloc(8 * v60, 0x100004000313F17uLL);
                      v254 = malloc_type_malloc(8 * v60, 0x100004000313F17uLL);
                      v246 = Mutable;
                      v260 = v61;
                      if (v60 < 1)
                      {
                        v63 = 0;
                      }

                      else
                      {
                        memset(v61, 255, 8 * v60);
                        v62 = 0;
                        v63 = 0;
                        v257 = v60;
                        do
                        {
                          if (v60 <= (v62 + 1))
                          {
                            v64 = v62 + 1;
                          }

                          else
                          {
                            v64 = v60;
                          }

                          while (*(v61 + v62) != -1)
                          {
                            if (v64 == ++v62)
                            {
                              v62 = v64 + 1;
                              goto LABEL_54;
                            }
                          }

                          *(v61 + v62) = v63;
                          v65 = v62 + 1;
                          for (k = v63; v65 < v60; ++v65)
                          {
                            if (*(v61 + v65) == -1)
                            {
                              v66 = CFArrayGetCount(v59);
                              if (v66 < 1)
                              {
                                goto LABEL_51;
                              }

                              v67 = v66;
                              v68 = 0;
                              for (m = 0; m != v67; v68 = m >= v67)
                              {
                                v70 = CFArrayGetValueAtIndex(v59, m);
                                v71 = sub_1AF1AF080(v70);
                                if (v71)
                                {
                                  v72 = v71;
                                  v73 = sub_1AF1CAED8(v71);
                                  v74 = sub_1AF288070(v73);
                                  v77 = sub_1AF1CAF40(v72, v62, v75, v76);
                                  v80 = sub_1AF1CAF40(v72, v65, v78, v79);
                                  v81 = sub_1AF1CAED0(v72);
                                  if (memcmp(v77, v80, v81 * v74))
                                  {
                                    break;
                                  }
                                }

                                ++m;
                              }

                              v61 = v260;
                              v63 = k;
                              v60 = v257;
                              if (v68)
                              {
LABEL_51:
                                *(v61 + v65) = v63;
                              }
                            }
                          }

                          v254[v63++] = v62++;
LABEL_54:
                          ;
                        }

                        while (v62 < v60);
                      }

                      v82 = v253;
                      if (CFArrayGetCount(v59) >= 1)
                      {
                        v83 = 0;
                        v263 = v63;
                        do
                        {
                          v84 = CFArrayGetValueAtIndex(v59, v83);
                          v258 = sub_1AF1A44E8(v82, v84, 1);
                          v85 = sub_1AF1AF080(v84);
                          v255 = sub_1AF1CAED8(v85);
                          v86 = sub_1AF288070(v255);
                          v89 = sub_1AF1CAED0(v85) * v86;
                          v90 = v89 * v63;
                          if (v89 * v63)
                          {
                            v91 = malloc_type_malloc(v89 * v63, 0x100004077774924uLL);
                          }

                          else
                          {
                            v91 = 0;
                          }

                          if (v63 >= 1)
                          {
                            v92 = v254;
                            v93 = v91;
                            v94 = v263;
                            do
                            {
                              v95 = *v92++;
                              v96 = sub_1AF1CAF40(v85, v95, v87, v88);
                              memcpy(v93, v96, v89);
                              v93 += v89;
                              --v94;
                            }

                            while (v94);
                          }

                          v97 = CFDataCreate(allocator, v91, v90);
                          v98 = sub_1AF1AE3D8(v84);
                          v99 = sub_1AF1CAED0(v85);
                          v100 = sub_1AF121B74(v85);
                          v101 = sub_1AF1CB564(v85);
                          v63 = v263;
                          v102 = sub_1AF1ADC58(v98, v97, v255, v99, v263, v100, v101);
                          CFRelease(v97);
                          free(v91);
                          v82 = v253;
                          sub_1AF1A44DC(v253, v102, v258);
                          CFRelease(v102);
                          ++v83;
                        }

                        while (v83 < CFArrayGetCount(v59));
                      }

                      Mutable = v246;
                      if (sub_1AF1A3CCC(v82) >= 1)
                      {
                        v103 = 0;
                        do
                        {
                          v104 = sub_1AF1A3D1C(v82, v103, 1);
                          buf.i32[0] = 0;
                          v105 = sub_1AF1A73C0(v104, &buf);
                          v106 = sub_1AF1A7674(v104);
                          v107 = sub_1AF1A71E0(v104) * v106;
                          switch(buf.i32[0])
                          {
                            case 4:
                              BytePtr = CFDataGetBytePtr(v105);
                              if (v107 >= 1)
                              {
                                do
                                {
                                  *BytePtr = *(v260 + *BytePtr);
                                  BytePtr += 4;
                                  --v107;
                                }

                                while (v107);
                              }

                              break;
                            case 2:
                              v109 = CFDataGetBytePtr(v105);
                              if (v107 >= 1)
                              {
                                do
                                {
                                  *v109 = *(v260 + *v109);
                                  v109 += 2;
                                  --v107;
                                }

                                while (v107);
                              }

                              break;
                            case 1:
                              v108 = CFDataGetBytePtr(v105);
                              if (v107 >= 1)
                              {
                                do
                                {
                                  *v108 = *(v260 + *v108);
                                  ++v108;
                                  --v107;
                                }

                                while (v107);
                              }

                              break;
                            default:
                              v111 = sub_1AF0D5194();
                              if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
                              {
                                sub_1AFDE0C50(&v270, v271, v111);
                              }

                              break;
                          }

                          ++v103;
                        }

                        while (v103 < sub_1AF1A3CCC(v82));
                      }

                      CFRelease(v59);
                      free(v260);
                      free(v254);
                      v53 = v250;
                    }

                    CFRelease(v53);
                    CFRelease(Mutable);
                  }

                  v14 = v251 + 1;
                  v13 = v247;
                }

                while (v251 + 1 != Count);
                CFRelease(v247);
                v4 = v244;
                v6 = v245;
                v5 = v243;
              }
            }
          }
        }
      }

      v112 = CFDictionaryGetValue(v5, @"kSceneSourceCreateCameraIfAbsent");
      if (v112)
      {
        if (CFEqual(*MEMORY[0x1E695E4D0], v112))
        {
          v113 = sub_1AF1CF7E8(v249);
          if (v113)
          {
            v114 = sub_1AF1BA4E4(v113, @"kCameraKey", 1);
            if (!v114 || (v115 = v114, v116 = CFArrayGetCount(v114), CFRelease(v115), v116 <= 0))
            {
              v117 = sub_1AF27E5F0(v249, 1);
              if (v117)
              {
                v118 = v117;
                v119 = sub_1AF1CF7E8(v249);
                sub_1AF1B8CE8(v119, v118);
                CFRelease(v118);
              }
            }
          }
        }
      }

      v120 = CFDictionaryGetValue(v5, @"kSceneSourceCreateLightIfAbsent");
      v8 = v249;
      if (v120 && CFBooleanGetValue(v120))
      {
        v121 = sub_1AF1CF7E8(v249);
        if (v121)
        {
          v122 = sub_1AF1BA4E4(v121, @"kLightKey", 0);
          if (v122)
          {
            v123 = v122;
            v124 = CFArrayGetCount(v122);
            if (v124 >= 1)
            {
              v125 = v124;
              v126 = 1;
              do
              {
                v127 = CFArrayGetValueAtIndex(v123, v126 - 1);
                v128 = sub_1AF1B75E8(v127);
                v129 = sub_1AF19CBB4(v128);
                if (v126 >= v125)
                {
                  break;
                }

                ++v126;
              }

              while (!v129);
              if (!v129)
              {
                for (n = 0; n != v125; ++n)
                {
                  v131 = CFArrayGetValueAtIndex(v123, n);
                  v132 = sub_1AF1B75E8(v131);
                  v133 = sub_1AF19BB78(v132);
                  if (((*v133 + v133[1]) + v133[2]) >= 1.5)
                  {
                    v278.columns[0] = 0uLL;
                    sub_1AF163FFC(&v278, 0.0, 0.0, 0.0, 0.0);
                    sub_1AF19B308(v132, &v278);
                  }
                }
              }
            }

            CFRelease(v123);
          }
        }

        v8 = v249;
        sub_1AF1CF610(v249, @"defaultLight", *MEMORY[0x1E695E4D0]);
      }

      v134 = CFDictionaryGetValue(v5, @"kSceneSourceCreateNormalsIfAbsent");
      if (v134)
      {
        if (CFEqual(*MEMORY[0x1E695E4D0], v134))
        {
          v135 = sub_1AF1CF7E8(v8);
          if (v135)
          {
            sub_1AF1B94AC(v135, &unk_1F24E8620);
          }
        }
      }

      v136 = CFDictionaryGetValue(v5, @"kSceneSourceAdjustInvalidClippingPlanes");
      if (v136 && CFEqual(*MEMORY[0x1E695E4D0], v136))
      {
        v137 = sub_1AF1CF7E8(v8);
        if (v137)
        {
          v138 = v137;
          v139 = sub_1AF1BA4E4(v137, @"kCameraKey", 0);
          if (v139)
          {
            v140 = v139;
            v141 = CFArrayGetCount(v139);
            if (v141 > 0)
            {
              v142 = v141;
              v143 = v4;
              v144 = v6;
              v145 = 0;
              v146 = 0;
              while (1)
              {
                v284 = 0u;
                v285 = 0u;
                v282 = 0u;
                v283 = 0u;
                v280 = 0u;
                v281 = 0u;
                v279 = 0u;
                memset(&v278, 0, sizeof(v278));
                v147 = CFArrayGetValueAtIndex(v140, v145);
                if (!v147)
                {
                  goto LABEL_135;
                }

                v148 = v147;
                if (!sub_1AF27F12C(v147, &v278))
                {
                  goto LABEL_135;
                }

                v149 = sub_1AF15E550(&v278);
                if (v149 <= sub_1AF15E508(&v278))
                {
                  break;
                }

                if ((v146 & 1) == 0 && !sub_1AF1C3958(v138, 1, &v293, &v294))
                {
                  goto LABEL_134;
                }

                v291 = 0u;
                v292 = 0u;
                v289 = 0u;
                v290 = 0u;
                buf = 0u;
                v288 = 0u;
                sub_1AF27EE18(v148, &buf, xmmword_1AFE20BF0);
                v150 = v293;
                v151 = v294;
                v150.i32[3] = 1.0;
                v151.i32[3] = 1.0;
                v152.i64[0] = 0x3F0000003F000000;
                v152.i64[1] = 0x3F0000003F000000;
                v275 = v290;
                v276 = v291;
                v277 = v292;
                valuePtr = buf;
                v273 = v288;
                v274 = v289;
                if (vfx_frustum_classify_aabb(&valuePtr, vmulq_f32(vaddq_f32(v150, v151), v152), vmulq_f32(vsubq_f32(v151, v150), v152)) == 1)
                {
                  v153 = sub_1AF0D5194();
                  if (os_log_type_enabled(v153, OS_LOG_TYPE_DEFAULT))
                  {
                    valuePtr.i16[0] = 0;
                    _os_log_impl(&dword_1AF0CE000, v153, OS_LOG_TYPE_DEFAULT, "Warning: invalid zRange detected (whole world clipped)", &valuePtr, 2u);
                  }

LABEL_130:
                  v154 = sub_1AF1BB260(v148);
                  if (v154)
                  {
                    v155 = sub_1AF15E428(v154);
                    if (v155)
                    {
                      v156 = v155;
                      v157 = sub_1AF1B9AB4(v148);
                      v158.i64[0] = 0xBF000000BF000000;
                      v158.i64[1] = 0xBF000000BF000000;
                      v159 = vsubq_f32(v293, v294);
                      v160 = vmulq_f32(v159, v159);
                      v161 = vaddq_f32(v157, vmulq_f32(vaddq_f32(v293, v294), v158));
                      v162 = vmulq_f32(v161, v161);
                      v163 = vaddv_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v160, v160, 8uLL), *&vextq_s8(v162, v162, 8uLL)), vadd_f32(vzip1_s32(*v160.i8, *v162.i8), vzip2_s32(*v160.i8, *v162.i8)))));
                      sub_1AF15E10C(v156, v163);
                      sub_1AF15E220(v156, v163 / 250.0);
                    }
                  }
                }

                v146 = 1;
LABEL_135:
                if (v142 == ++v145)
                {
                  CFRelease(v140);
                  v6 = v144;
                  v4 = v143;
                  goto LABEL_138;
                }
              }

              if ((v146 & 1) == 0 && !sub_1AF1C3958(v138, 1, &v293, &v294))
              {
LABEL_134:
                v146 = 0;
                goto LABEL_135;
              }

              goto LABEL_130;
            }

            CFRelease(v140);
          }
        }

LABEL_138:
        v8 = v249;
      }

      v164 = CFDictionaryGetValue(v5, @"kSceneSourceFlattenWorld");
      if (v164 && CFEqual(*MEMORY[0x1E695E4D0], v164))
      {
        v168 = objc_msgSend_rootNode(v6, v165, v166, v167);
        objc_msgSend_transform(v168, v169, v170, v171);
        v261 = v173;
        v264 = v172;
        v256 = v175;
        v259 = v174;
        objc_msgSend_setTransform_(v168, v176, v177, v178, COERCE_DOUBLE(1065353216), unk_1AFE21EC0, 0.0, unk_1AFE21EE0);
        v182 = objc_msgSend_flattenedClone(v168, v179, v180, v181);
        if (v182)
        {
          v186 = v182;
          v187 = v4;
          v188 = v6;
          objc_msgSend_flush(VFXTransaction, v183, v184, v185);
          v192 = objc_msgSend_childNodes(v168, v189, v190, v191);
          v266 = 0u;
          v267 = 0u;
          v268 = 0u;
          v269 = 0u;
          v194 = objc_msgSend_countByEnumeratingWithState_objects_count_(v192, v193, &v266, v286, 16);
          if (v194)
          {
            v198 = v194;
            v199 = *v267;
            do
            {
              for (ii = 0; ii != v198; ++ii)
              {
                if (*v267 != v199)
                {
                  objc_enumerationMutation(v192);
                }

                objc_msgSend_removeFromParentNode(*(*(&v266 + 1) + 8 * ii), v195, v196, v197);
              }

              v198 = objc_msgSend_countByEnumeratingWithState_objects_count_(v192, v195, &v266, v286, 16);
            }

            while (v198);
          }

          v6 = v188;
          v201 = objc_msgSend_rootNode(v188, v195, v196, v197);
          objc_msgSend_addChildNode_(v201, v202, v186, v203);
          v4 = v187;
        }

        objc_msgSend_setTransform_(v168, v183, v184, v185, v264, v261, v259, v256);
        v8 = v249;
      }
    }

    v293.i32[0] = 0;
    v265 = 0;
    if (sub_1AF1D7ADC(v8, v5, &v293, &v265 + 1, &v265))
    {
      v204 = v293.i32[0];
      v205 = *(&v265 + 1);
      if (v293.i32[0] || *(&v265 + 1) != 1.0)
      {
        if (v4 == 1)
        {
          v206 = sub_1AF0D5194();
          if (os_log_type_enabled(v206, OS_LOG_TYPE_INFO))
          {
            v278.columns[0].i16[0] = 0;
            _os_log_impl(&dword_1AF0CE000, v206, OS_LOG_TYPE_INFO, "Info: VFXWorldLoaderConvertUnitsToMetersKey and VFXWorldLoaderConvertToYUpKey have no effect on compressed assets. Use Xcode's compression options instead", &v278, 2u);
          }
        }

        else
        {
          v207 = *&v265;
          v208 = objc_alloc_init(MEMORY[0x1E695DFA8]);
          v212 = objc_msgSend_rootNode(v6, v209, v210, v211);
          valuePtr.i64[0] = MEMORY[0x1E69E9820];
          valuePtr.i64[1] = 3221225472;
          v273.i64[0] = sub_1AF1D8FFC;
          v273.i64[1] = &unk_1E7A79780;
          v274.i64[1] = __PAIR64__(LODWORD(v205), v204);
          v274.i64[0] = v208;
          LOBYTE(v275) = 0;
          objc_msgSend_enumerateHierarchyUsingBlock_(v212, v213, &valuePtr, v214);

          if (v204 == 1)
          {
            v218 = vrsqrteq_f32(xmmword_1AFE208C0);
            v219 = vmulq_f32(v218, vrsqrtsq_f32(xmmword_1AFE208C0, vmulq_f32(v218, v218)));
            v296.columns[0] = vmulq_f32(vmulq_f32(v219, vrsqrtsq_f32(xmmword_1AFE208C0, vmulq_f32(v219, v219))), xmmword_1AFE20150);
            v220 = vmulq_f32(v296.columns[0], v296.columns[0]);
            __asm { FMOV            V1.4S, #1.0 }

            v225 = vmlaq_f32(v220, vdupq_n_s32(0xB33BBD2E), vsubq_f32(v296.columns[1], v220));
            v226 = vmuls_lane_f32(v296.columns[0].f32[0], *v296.columns[0].f32, 1);
            v227 = vmuls_lane_f32(v296.columns[0].f32[0], v296.columns[0], 2);
            v228 = vmuls_lane_f32(v296.columns[0].f32[1], v296.columns[0], 2);
            *&v229 = v226 - v296.columns[0].f32[2];
            *&v230 = v296.columns[0].f32[1] + v227;
            *&v231 = v296.columns[0].f32[2] + v226;
            *&v232 = v228 - v296.columns[0].f32[0];
            v296.columns[2].f32[0] = v227 - v296.columns[0].f32[1];
            v296.columns[2].f32[1] = v296.columns[0].f32[0] + v228;
            v296.columns[2].i64[1] = v225.u32[2];
            v296.columns[0].i64[0] = __PAIR64__(v229, v225.u32[0]);
            v296.columns[0].i64[1] = v230;
            v296.columns[1].i64[0] = __PAIR64__(v225.u32[1], v231);
            v296.columns[1].i64[1] = v232;
            v296.columns[3] = xmmword_1AFE201A0;
            buf = v296.columns[0];
            v288 = v296.columns[1];
            v289 = v296.columns[2];
            v290 = xmmword_1AFE201A0;
            v278 = __invert_f4(v296);
            v236 = objc_msgSend_rootNode(v6, v233, v234, v235);
            v240 = objc_msgSend_nodeRef(v236, v237, v238, v239);
            sub_1AF1D93E0(v240, &buf, &v278);
          }

          if (v205 != 1.0 && v207 != 0.0)
          {
            v241 = objc_msgSend_worldRef(v6, v215, v216, v217);
            sub_1AF1CFBF4(v241, v207);
          }

          if (v204)
          {
            v242 = objc_msgSend_worldRef(v6, v215, v216, v217);
            sub_1AF1CFC90(v242, xmmword_1AFE20160);
          }
        }
      }
    }
  }
}

uint64_t sub_1AF1D8E6C(const __CFURL *a1, CFDictionaryRef theDict)
{
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"kSceneSourceCheckConsistency");
    if (Value)
    {
      return CFBooleanGetValue(Value) != 0;
    }
  }

  v5 = sub_1AF289E6C(a1);
  v6 = v5;
  if (a1 && (v5 & 1) == 0 && (v7 = CFURLCopyPath(a1)) != 0 && (v8 = v7, HasPrefix = CFStringHasPrefix(v7, @"/System"), CFRelease(v8), HasPrefix))
  {
    return 0;
  }

  else
  {
    return v6 ^ 1u;
  }
}

uint64_t sub_1AF1D8F10(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AF1B75A0(a2);
  if (v2)
  {
    sub_1AF27E0C4(v2, 1);
  }

  return 0;
}

uint64_t sub_1AF1D8F44(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AF1B75A0(a2);
  if (v2)
  {
    v3 = v2;
    if (!sub_1AF170998(v2))
    {
      v4 = sub_1AF1B2C1C(v3);
      if (v4)
      {
        v5 = v4;
        if (!sub_1AF1A4F84(v4, 0))
        {
          if (sub_1AF1A4CE8(v5, 0))
          {
            v7 = sub_1AF27D340(v5, 0, 0);
            if (v7)
            {
              v8 = v7;
              v9 = sub_1AF1A4C6C(v5, 0, 0);
              sub_1AF1A44D4(v5, v8, 0, v9);
              CFRelease(v8);
              v10 = sub_1AF16CDEC(v5);
              objc_msgSend__rebuildMeshSourcesFromPresentation(v10, v11, v12, v13);
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1AF1D8FFC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, float32x4_t a5)
{
  v7 = *(a1 + 40);
  a5.i32[0] = *(a1 + 44);
  v154 = a5;
  objc_msgSend_position(a2, a2, a3, a4);
  if (v7 == 1)
  {
    v12.i64[0] = __PAIR64__(v11.u32[2], v11.u32[0]);
    v12.f32[2] = -v11.f32[1];
  }

  else
  {
    if (v7 != 2)
    {
      goto LABEL_6;
    }

    v12.f32[0] = -v11.f32[1];
    v12.i32[1] = v11.i32[0];
    v12.i32[2] = v11.i32[2];
  }

  v12.i32[3] = v11.i32[3];
  v11 = v12;
LABEL_6:
  v12.i32[0] = 1.0;
  objc_msgSend_setPosition_(a2, v8, v9, v10, *vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v154, v12)), 0), vmulq_n_f32(v11, v154.f32[0]), v11).i64);
  if (v7)
  {
    objc_msgSend_rotation(a2, v13, v14, v15);
    if (v7 == 1)
    {
      HIDWORD(v19) = v20;
      objc_msgSend_setRotation_(a2, v16, v17, v18, v19);
      objc_msgSend_scale(a2, v29, v30, v31);
      objc_msgSend_setScale_(a2, v33, v34, v35, *vuzp1q_s32(v32, vrev64q_s32(v32)).i64);
    }

    else if (v7 == 2)
    {
      *&v21 = -*(&v19 + 1);
      HIDWORD(v21) = LODWORD(v19);
      objc_msgSend_setRotation_(a2, v16, v17, v18, v21);
      objc_msgSend_scale(a2, v22, v23, v24);
      objc_msgSend_setScale_(a2, v26, v27, v28, *vzip1q_s32(vextq_s8(v25, v25, 4uLL), v25).i64);
    }

    else
    {
      objc_msgSend_setRotation_(a2, v16, v17, v18);
      objc_msgSend_scale(a2, v36, v37, v38);
      objc_msgSend_setScale_(a2, v39, v40, v41, v42);
    }
  }

  if (objc_msgSend_model(a2, v13, v14, v15))
  {
    v46 = *(a1 + 32);
    v47 = objc_msgSend_model(a2, v43, v44, v45);
    if ((objc_msgSend_containsObject_(v46, v48, v47, v49) & 1) == 0)
    {
      v50 = *(a1 + 32);
      v51 = objc_msgSend_model(a2, v43, v44, v45);
      objc_msgSend_addObject_(v50, v52, v51, v53);
      v57 = objc_msgSend_model(a2, v54, v55, v56);
      v61 = objc_msgSend_mesh(v57, v58, v59, v60);
      v65 = objc_msgSend_meshRef(v61, v62, v63, v64);
      v66 = *(a1 + 40);
      v67 = *(a1 + 44);
      v159.n128_u64[0] = MEMORY[0x1E69E9820];
      v159.n128_u64[1] = 3221225472;
      v160.n128_u64[0] = sub_1AF1D954C;
      v160.n128_u64[1] = &unk_1E7A7B0C8;
      v161.n128_u64[0] = __PAIR64__(v67, v66);
      sub_1AF1A2BEC(v65, 0, &v159);
      sub_1AF1A270C(v65);
      sub_1AF1A31C4(v65);
    }
  }

  result = objc_msgSend_skinner(a2, v43, v44, v45);
  if (result)
  {
    v72 = *(a1 + 32);
    v73 = objc_msgSend_skinner(a2, v69, v70, v71);
    result = objc_msgSend_containsObject_(v72, v74, v73, v75);
    if ((result & 1) == 0)
    {
      v76 = *(a1 + 32);
      v77 = objc_msgSend_skinner(a2, v69, v70, v71);
      objc_msgSend_addObject_(v76, v78, v77, v79);
      v83 = objc_msgSend_skinner(a2, v80, v81, v82);
      v87 = objc_msgSend_skinnerRef(v83, v84, v85, v86);
      v88 = sub_1AF15B294(v87);
      v89 = *(a1 + 40);
      v90 = *(a1 + 44);
      v91 = sub_1AF1BA1FC(v88);
      v159 = *v91;
      v160 = *(v91 + 16);
      v161 = *(v91 + 32);
      v162 = *(v91 + 48);
      sub_1AF1D9674(&v159, v89, v90);
      sub_1AF1C7934(v88, v159, v160, v161, v162);
      v92 = sub_1AF15B364(v88);
      v93 = sub_1AF1C7940(v88);
      if (v93 >= 1)
      {
        v94 = v93;
        v95 = v92 + 32;
        do
        {
          v163 = __invert_f4(*(v95 - 32));
          v155 = v163.columns[0];
          v156 = v163.columns[1];
          v157 = v163.columns[2];
          v158 = v163.columns[3];
          sub_1AF1D9674(&v155, v89, v90);
          v164.columns[2] = v157;
          v164.columns[3] = v158;
          v164.columns[0] = v155;
          v164.columns[1] = v156;
          *(v95 - 32) = __invert_f4(v164);
          v95 += 64;
          --v94;
        }

        while (v94);
      }

      result = sub_1AF1C74EC(v88);
    }
  }

  if (*(a1 + 44) != 1.0)
  {
    if (objc_msgSend_light(a2, v69, v70, v71))
    {
      v99 = objc_msgSend_light(a2, v96, v97, v98);
      v100 = *(a1 + 44);
      objc_msgSend_zFar(v99, v101, v102, v103);
      *&v105 = v100 * v104;
      objc_msgSend_setZFar_(v99, v106, v107, v108, v105);
      objc_msgSend_zNear(v99, v109, v110, v111);
      *&v113 = v100 * v112;
      objc_msgSend_setZNear_(v99, v114, v115, v116, v113);
      objc_msgSend_attenuationDistance(v99, v117, v118, v119);
      *&v121 = v100 * v120;
      objc_msgSend_setAttenuationDistance_(v99, v122, v123, v124, v121);
    }

    result = objc_msgSend_camera(a2, v96, v97, v98);
    if (result)
    {
      v128 = objc_msgSend_camera(a2, v125, v126, v127);
      v129 = *(a1 + 44);
      objc_msgSend_focusDistance(v128, v130, v131, v132);
      *&v134 = v129 * v133;
      objc_msgSend_setFocusDistance_(v128, v135, v136, v137, v134);
      objc_msgSend_zFar(v128, v138, v139, v140);
      *&v142 = v129 * v141;
      objc_msgSend_setZFar_(v128, v143, v144, v145, v142);
      objc_msgSend_zNear(v128, v146, v147, v148);
      *&v150 = v129 * v149;
      return objc_msgSend_setZNear_(v128, v151, v152, v153, v150);
    }
  }

  return result;
}

uint64_t sub_1AF1D93E0(uint64_t result, _OWORD *a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    if (sub_1AF1D7A8C(result))
    {
      *v6.i64 = sub_1AF1B7F84(v5);
      v10 = 0;
      v11 = a2[1];
      v12 = a2[2];
      v13 = a2[3];
      v16[0] = *a2;
      v16[1] = v11;
      v16[2] = v12;
      v16[3] = v13;
      memset(v17, 0, sizeof(v17));
      do
      {
        *&v17[v10 * 16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v6, COERCE_FLOAT(v16[v10])), v7, *&v16[v10], 1), v8, v16[v10], 2), v9, v16[v10], 3);
        ++v10;
      }

      while (v10 != 4);
      sub_1AF1BA204(v5, v17);
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = sub_1AF1D9D04;
      v15[3] = &unk_1E7A7BFB0;
      v15[4] = a3;
      sub_1AF1B7E14(v5, v15);
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1AF1D9DA4;
    v14[3] = &unk_1E7A7BFD0;
    v14[4] = a2;
    v14[5] = a3;
    return sub_1AF1B7E14(v5, v14);
  }

  return result;
}

void sub_1AF1D954C(uint64_t a1, uint64_t a2, int a3, float32x4_t a4)
{
  if (a3 == 4 || a3 == 1)
  {
    v4 = *(a1 + 32);
    a4.i32[0] = 1.0;
  }

  else
  {
    if (a3)
    {
      return;
    }

    v4 = *(a1 + 32);
    a4.i32[0] = *(a1 + 36);
  }

  sub_1AF1D9584(a2, v4, a4);
}

void sub_1AF1D9584(uint64_t a1, int a2, float32x4_t a3)
{
  v14 = 0u;
  v15 = 0u;
  sub_1AF1AE1A8(a1, &v14);
  if (v15)
  {
    v6 = 0;
    v4.i32[0] = 1.0;
    v7 = a3.f32[0];
    v8 = vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(a3, v4)), 0);
    v12 = v8;
    do
    {
      *v9.i64 = sub_1AF279750(BYTE4(v15), (v14 + v6 * BYTE6(v15)), v8, v7, v5);
      if (a2 == 1)
      {
        v10 = v9;
        v10.i32[1] = v9.i32[2];
        v10.f32[2] = -v9.f32[1];
      }

      else
      {
        v10 = v9;
        if (a2 == 2)
        {
          v10.f32[0] = -v9.f32[1];
          v10.i32[1] = v9.i32[0];
          v10.i32[2] = v9.i32[2];
        }
      }

      v11 = vbslq_s8(v12, vmulq_n_f32(v10, a3.f32[0]), v10);
      v11.i32[3] = v9.i32[3];
      sub_1AF279B88(BYTE4(v15), v14 + v6 * BYTE6(v15), v11);
      ++v6;
    }

    while (v6 < v15);
  }
}

float32x4_t sub_1AF1D9674(float32x4_t *a1, int a2, float32_t a3)
{
  v3.f32[0] = a3;
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL), vnegq_f32(v7)), v8, vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL));
  v10 = vmulq_f32(*a1, vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL));
  v54 = (v10.f32[2] + vaddv_f32(*v10.f32)) < 0.0;
  v11 = 1.0;
  if (v54)
  {
    v11 = -1.0;
  }

  v12 = vmulq_f32(v6, v6);
  v13 = vmulq_f32(v7, v7);
  v14 = vadd_f32(vzip1_s32(*v12.i8, *v13.i8), vzip2_s32(*v12.i8, *v13.i8));
  v15 = vextq_s8(v12, v12, 8uLL);
  *v15.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v15.f32, *&vextq_s8(v13, v13, 8uLL)), v14));
  v16 = vmulq_f32(v8, v8);
  v15.i32[2] = sqrtf(v16.f32[2] + vaddv_f32(*v16.f32));
  v17 = vmulq_n_f32(v15, v11);
  v18 = vcltzq_f32(v17);
  v19 = vmvnq_s8(vorrq_s8(v18, vcgezq_f32(v17)));
  v19.i32[3] = v19.i32[2];
  v19.i32[0] = vmaxvq_u32(v19);
  v18.i32[0] = -1;
  v20 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v19, v18), 0), v17, 0);
  v21 = vceqzq_f32(v20);
  v21.i32[3] = v21.i32[2];
  v111 = v3;
  if ((vmaxvq_u32(v21) & 0x80000000) != 0)
  {
    v109 = 0u;
    v53 = xmmword_1AFE201A0;
    goto LABEL_23;
  }

  v22 = vdivq_f32(v6, vdupq_lane_s32(*v20.f32, 0));
  v23 = vdivq_f32(v7, vdupq_lane_s32(*v20.f32, 1));
  v24 = vdivq_f32(v8, vdupq_laneq_s32(v20, 2));
  v25 = vmulq_f32(v22, v22);
  v26 = vmulq_f32(v23, v23);
  v27 = vmulq_f32(v24, v24);
  v28 = vzip2q_s32(v25, v27);
  v29 = vzip1q_s32(vzip1q_s32(v25, v27), v26);
  v30 = vtrn2q_s32(v25, v26);
  v30.i32[2] = v27.i32[1];
  v31 = vaddq_f32(vzip1q_s32(v28, vdupq_laneq_s32(v26, 2)), vaddq_f32(v29, v30));
  v30.i64[0] = 0x80000000800000;
  v30.i64[1] = 0x80000000800000;
  v32 = vcgeq_f32(v30, v31);
  v31.i32[3] = 0;
  v33 = vrsqrteq_f32(v31);
  v34 = vmulq_f32(v33, vrsqrtsq_f32(v31, vmulq_f32(v33, v33)));
  v35 = v32;
  v35.i32[3] = 0;
  v36 = vbslq_s8(vcltzq_s32(v35), v31, vmulq_f32(v34, vrsqrtsq_f32(v31, vmulq_f32(v34, v34))));
  v37 = vmulq_n_f32(v22, v36.f32[0]);
  v38 = vmulq_lane_f32(v23, *v36.f32, 1);
  v39 = vmulq_laneq_f32(v24, v36, 2);
  v40 = vuzp1q_s32(v39, v39);
  v41 = vuzp1q_s32(v38, v38);
  v42 = v37;
  if (v32.i32[0])
  {
    v43 = vmlaq_f32(vmulq_f32(vextq_s8(v40, v39, 0xCuLL), vnegq_f32(v38)), v39, vextq_s8(v41, v38, 0xCuLL));
    v42 = vextq_s8(vuzp1q_s32(v43, v43), v43, 0xCuLL);
  }

  v44 = vuzp1q_s32(v37, v37);
  v45 = v38;
  if (v32.i32[1])
  {
    v46 = vmlaq_f32(vmulq_f32(vextq_s8(v44, v37, 0xCuLL), vnegq_f32(v39)), v37, vextq_s8(v40, v39, 0xCuLL));
    v45 = vextq_s8(vuzp1q_s32(v46, v46), v46, 0xCuLL);
  }

  if (v32.i32[2])
  {
    v47 = vmlaq_f32(vmulq_f32(vextq_s8(v41, v38, 0xCuLL), vnegq_f32(v37)), v38, vextq_s8(v44, v37, 0xCuLL));
    v39 = vextq_s8(vuzp1q_s32(v47, v47), v47, 0xCuLL);
  }

  v48 = (*v42.i32 + *&v45.i32[1]) + v39.f32[2];
  if (v48 <= 0.0)
  {
    v54 = *v42.i32 < *&v45.i32[1] || *v42.i32 < v39.f32[2];
    if (v54)
    {
      if (*&v45.i32[1] <= v39.f32[2])
      {
        v102 = vzip2q_s32(v42, v45).u64[0];
        v103 = __PAIR64__(v42.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v39.f32[2] + 1.0) - *v42.i32) - *&v45.i32[1])));
        v104 = vdup_lane_s32(*v45.i8, 0);
        v105 = vsub_f32(*v42.i8, v104);
        v104.i32[0] = v103.i32[0];
        v45.i32[0] = vmul_f32(v103, v104).u32[0];
        v45.i32[1] = v105.i32[1];
        *v50.f32 = vadd_f32(v102, *v39.f32);
        v50.i64[1] = v45.i64[0];
        v51 = 0.5 / v103.f32[0];
        goto LABEL_12;
      }

      v56 = sqrtf(((*&v45.i32[1] + 1.0) - *v42.i32) - v39.f32[2]);
      v59.f32[0] = *&v42.i32[1] + *v45.i32;
      v55 = vzip2q_s32(v42, v45).u64[0];
      *v45.i8 = vadd_f32(*v39.f32, v55);
      v59.f32[1] = v56 * v56;
      *&v59.u32[2] = vext_s8(*v45.i8, vsub_f32(*v39.f32, v55), 4uLL);
    }

    else
    {
      v56 = sqrtf(((*v42.i32 + 1.0) - *&v45.i32[1]) - v39.f32[2]);
      v59.f32[0] = v56 * v56;
      v57 = *&v42.i32[1] + *v45.i32;
      v58 = vzip2q_s32(v42, v45).u64[0];
      v45.i32[0] = vadd_f32(v58, *v39.f32).u32[0];
      v45.i32[1] = vsub_f32(v58, *&v39).i32[1];
      v59.f32[1] = v57;
      v59.i64[1] = v45.i64[0];
    }

    v52 = vmulq_n_f32(v59, 0.5 / v56);
    goto LABEL_22;
  }

  v49 = sqrtf(v48 + 1.0);
  *v50.f32 = vsub_f32(*&vzip2q_s32(v45, vuzp1q_s32(v45, v39)), *&vtrn2q_s32(v39, vzip2q_s32(v39, v42)));
  v50.f32[2] = *&v42.i32[1] - *v45.i32;
  v50.f32[3] = v49 * v49;
  v51 = 0.5 / v49;
LABEL_12:
  v52 = vmulq_n_f32(v50, v51);
LABEL_22:
  v60 = vmvnq_s8(vceqq_f32(v52, v52));
  v60.i32[0] = vmaxvq_u32(v60);
  v45.i32[0] = -1;
  v53 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v60, v45), 0), v52, xmmword_1AFE201A0);
  v109 = v20;
LABEL_23:
  v61 = vmulq_f32(v53, v53);
  v61.f32[0] = v61.f32[2] + vaddv_f32(*v61.f32);
  v62 = vdupq_lane_s32(*v61.f32, 0);
  v62.i32[3] = 0;
  v63 = vrsqrteq_f32(v62);
  v64 = vmulq_f32(v63, vrsqrtsq_f32(v62, vmulq_f32(v63, v63)));
  v65 = vmulq_f32(v53, vmulq_f32(v64, vrsqrtsq_f32(v62, vmulq_f32(v64, v64))));
  v66 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v61.f32[0] != 0.0)), 0x1FuLL));
  v66.i32[3] = 0;
  v106 = vbslq_s8(vcltzq_s32(v66), v65, v53);
  v107 = a1[3];
  v67 = atan2f(sqrtf(v61.f32[0]), v53.f32[3]);
  v70.f32[0] = v67 + v67;
  v71 = v106;
  v71.i32[3] = v70.i32[0];
  if (a2 == 1)
  {
    v71.i32[1] = v106.i32[2];
    v71.f32[2] = -*&v106.i32[1];
    v72 = v107;
    v72.i32[1] = v107.i32[2];
    v72.f32[2] = -v107.f32[1];
    goto LABEL_27;
  }

  if (a2 == 2)
  {
    v71.f32[0] = -*&v106.i32[1];
    v71.i32[1] = v106.i32[0];
    v70.f32[0] = -v107.f32[1];
    v70.i32[1] = v107.i32[0];
    v70.i32[2] = v107.i32[2];
    v72 = v70;
LABEL_27:
    v74 = v109;
    v73 = v111;
    goto LABEL_29;
  }

  v74 = v109;
  v73 = v111;
  v72 = v107;
LABEL_29:
  if (a2 == 1)
  {
    v70 = vuzp1q_s32(v74, vrev64q_s32(v74));
    goto LABEL_33;
  }

  if (a2 == 2)
  {
    v70 = vzip1q_s32(vextq_s8(v74, v74, 4uLL), v74);
LABEL_33:
    v70.i32[3] = v74.i32[3];
    v74 = v70;
  }

  v70.i32[0] = 1.0;
  v68.f64[0] = fabs(*v74.i32 + -1.0);
  v69.f64[0] = 0.000001;
  v75 = vdupq_lane_s64(vmvnq_s8(vcgeq_f64(v69, v68)).i64[0], 0);
  v112 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v73, v70)), 0), vmulq_n_f32(v72, v73.f32[0]), v72);
  v76 = v74;
  v76.i32[0] = 1.0;
  v77 = vbslq_s8(v75, v74, v76);
  v78 = v77;
  HIDWORD(v78.f64[1]) = v74.i32[3];
  v75.f64[0] = fabs(*&v77.i32[1] + -1.0);
  v77.i32[1] = 1.0;
  v79 = vbslq_s8(vdupq_lane_s64(vmvnq_s8(vcgeq_f64(v69, v75)).i64[0], 0), v78, v77);
  v78.f64[0] = fabs(*&v79.i32[2] + -1.0);
  v80 = vdupq_lane_s64(vmvnq_s8(vcgeq_f64(v69, v78)).i64[0], 0);
  v81 = v79;
  v81.i32[2] = 1.0;
  v82 = vmulq_f32(v71, v71);
  v82.f32[0] = v82.f32[2] + vaddv_f32(*v82.f32);
  v83 = vdupq_lane_s32(*v82.f32, 0);
  v110 = vbslq_s8(v80, v79, v81);
  v83.i32[3] = 0;
  v84 = vrsqrteq_f32(v83);
  v85 = vmulq_f32(v84, vrsqrtsq_f32(v83, vmulq_f32(v84, v84)));
  v86 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v82.f32[0] != 0.0)), 0x1FuLL));
  v86.i32[3] = 0;
  v108 = vbslq_s8(vcltzq_s32(v86), vmulq_f32(v71, vmulq_f32(v85, vrsqrtsq_f32(v83, vmulq_f32(v85, v85)))), v71);
  v87 = __sincosf_stret(vmuls_lane_f32(0.5, v71, 3));
  v88 = vmulq_n_f32(v108, v87.__sinval);
  v89 = v112;
  v89.i32[3] = 1.0;
  v90 = vabsq_f32(v110);
  v90.i32[3] = 0;
  v91.i64[0] = 0x8000000080000000;
  v91.i64[1] = 0x8000000080000000;
  v92 = vorrq_s8(vandq_s8(v110, v91), vabsq_f32(vmaxnmq_f32(v90, xmmword_1AFE20A30)));
  v93 = vmulq_f32(v88, v88);
  v94 = vmulq_n_f32(v88, v87.__cosval);
  v95 = vmuls_lane_f32(v88.f32[0], *v88.f32, 1);
  v96 = vmuls_lane_f32(v88.f32[1], v88, 2);
  v88.f32[0] = vmuls_lane_f32(v88.f32[0], v88, 2);
  v97 = vaddq_f32(v92, v92);
  v98.i32[3] = 0;
  v98.f32[0] = (0.5 - v93.f32[1]) - v93.f32[2];
  v98.f32[1] = v95 + v94.f32[2];
  v99.i32[3] = 0;
  v98.f32[2] = v88.f32[0] - v94.f32[1];
  v93.f32[0] = 0.5 - v93.f32[0];
  v100.i32[3] = 0;
  v100.f32[0] = v95 - v94.f32[2];
  v100.f32[1] = v93.f32[0] - v93.f32[2];
  v100.f32[2] = v96 + v94.f32[0];
  v99.f32[0] = v88.f32[0] + v94.f32[1];
  v99.f32[1] = v96 - v94.f32[0];
  v99.f32[2] = v93.f32[0] - v93.f32[1];
  *a1 = vmulq_n_f32(v98, v97.f32[0]);
  a1[1] = vmulq_lane_f32(v100, *v97.f32, 1);
  result = vmulq_laneq_f32(v99, v97, 2);
  a1[2] = result;
  a1[3] = v89;
  return result;
}

uint64_t sub_1AF1D9D04(uint64_t a1, uint64_t a2)
{
  *v4.i64 = sub_1AF1B7F84(a2);
  v8 = 0;
  v9 = *(a1 + 32);
  v10 = v9[1];
  v11 = v9[2];
  v12 = v9[3];
  v14[0] = *v9;
  v14[1] = v10;
  v14[2] = v11;
  v14[3] = v12;
  memset(v15, 0, sizeof(v15));
  do
  {
    v15[v8] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v4, COERCE_FLOAT(v14[v8])), v5, *&v14[v8], 1), v6, v14[v8], 2), v7, v14[v8], 3);
    ++v8;
  }

  while (v8 != 4);
  return sub_1AF1BA204(a2, v15);
}

BOOL sub_1AF1D9DB4(uint64_t a1, unsigned int a2, int a3, void *a4)
{
  v8 = a3;
  bzero(a4, 4 * a3);
  if (a2 >= 1)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = (a3 + 1);
    v14 = 4 * a2;
    v15 = 4 * (a2 - 1) * a2;
    v16 = v15 + 4;
    v17 = 1;
    v18 = 0;
    v19 = 0;
    do
    {
      v20 = v19 + 1;
      v21 = v19 * a2;
      v22 = v19;
      if (v19 + 1 < a2)
      {
        v23 = v17;
        v22 = v19;
        do
        {
          if (fabsf(*(a1 + 4 * v10 + 4 * v23)) > fabsf(*(a1 + 4 * v21 + 4 * v22)))
          {
            v22 = v23;
          }

          ++v23;
        }

        while (a2 != v23);
      }

      if (v19 != v22 && v19 <= v8)
      {
        v24 = v18 + 4 * v22;
        v25 = v13;
        v26 = a1;
        do
        {
          v27 = *(v26 + v9);
          *(v26 + v9) = *(v26 + v24);
          *(v26 + v24) = v27;
          v26 += v14;
          --v25;
        }

        while (v25);
      }

      v28 = v19 + v12 * a2;
      if (fabsf(*(a1 + 4 * v28)) >= 0.000001)
      {
        if (v20 < a2)
        {
          v29 = a1 + 4 * v21;
          v30 = v16;
          v31 = v17;
          do
          {
            v32 = a1;
            v33 = a2;
            do
            {
              --v33;
              *(v32 + v30) = *(v32 + v30) - ((*(v32 + v15) * *(v29 + 4 * v31)) / *(a1 + 4 * v28));
              v32 -= 4 * a2;
            }

            while (v33 > v19);
            ++v31;
            v30 += 4;
          }

          while (v31 != a2);
        }
      }

      else if (v19 < v8)
      {
        return v11;
      }

      ++v12;
      --v13;
      ++v17;
      v10 += a2;
      v18 += v14;
      v9 += v14 + 4;
      v16 += 4;
      v15 += 4;
      ++v19;
      v11 = v20 >= a2;
    }

    while (v20 != a2);
  }

  if (a3 >= 1)
  {
    v34 = 0;
    v35 = 4 * a2;
    v36 = a1 + (v35 + 4) * v8 - 4;
    v37 = v8;
    do
    {
      v38 = 0.0;
      if (v37 < v8)
      {
        v39 = v36;
        v40 = v34;
        do
        {
          v38 = v38 + (*v39 * *(a4 + v8 + v40));
          v39 = (v39 + v35);
          ++v40;
        }

        while (v40);
      }

      *(a4 + v37 - 1) = (*(a1 + 4 * (a3 * a2) + 4 * (v37 - 1)) - v38) / *(a1 + 4 * ((a2 + 1) * (v37 - 1)));
      --v34;
      v36 += v35 ^ 0xFFFFFFFFFFFFFFFCLL;
    }

    while (v37-- > 1);
  }

  return 1;
}

float32_t sub_1AF1DA020(__n128 *a1, float32x4_t a2, float32x4_t a3)
{
  if (!a1)
  {
    v8 = a2;
    v9 = a3;
    v4 = sub_1AF0D5194();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT);
    a2 = v8;
    a3 = v9;
    if (v5)
    {
      sub_1AFDE0C90(v4);
      a2 = v8;
      a3 = v9;
    }
  }

  v6 = vmulq_f32(a2, a3);
  result = -(v6.f32[2] + vaddv_f32(*v6.f32));
  a3.f32[3] = result;
  *a1 = a3;
  return result;
}

BOOL sub_1AF1DA094(uint64_t a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4)
{
  v4 = vsubq_f32(*a4, *a2);
  v5 = vsubq_f32(*a3, *a2);
  v6 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v5, v5), v5, 0xCuLL), vnegq_f32(v4)), v5, vextq_s8(vuzp1q_s32(v4, v4), v4, 0xCuLL));
  v7 = vmulq_f32(v6, v6);
  v7.f32[0] = sqrtf(v7.f32[1] + (v7.f32[2] + v7.f32[0]));
  if (v7.f32[0] == 0.0)
  {
    *(a1 + 8) = 0;
    v10 = 0.0;
    *a1 = 0;
  }

  else
  {
    v8 = vdivq_f32(vextq_s8(vuzp1q_s32(v6, v6), v6, 0xCuLL), vdupq_lane_s32(*v7.f32, 0));
    *a1 = v8.i64[0];
    *(a1 + 8) = v8.i32[2];
    v9 = vmulq_f32(v8, *a4);
    v10 = -(v9.f32[2] + vaddv_f32(*v9.f32));
  }

  *(a1 + 12) = v10;
  return v7.f32[0] != 0.0;
}

BOOL sub_1AF1DA13C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AF1DA3C4(a2, 0);
  v5 = sub_1AF1DA3C4(a2, 1u);
  v6 = sub_1AF1DA3C4(a2, 2u);

  return sub_1AF1DA094(a1, v4, v5, v6);
}

__n128 sub_1AF1DA1B4(_OWORD *a1, _OWORD *a2, __n128 *a3)
{
  *a1 = *a2;
  result = *a3;
  a1[1] = *a3;
  return result;
}

void sub_1AF1DA1D0(_OWORD *a1, __int128 *a2, float a3)
{
  if (!a1 && (v10 = a3, v5 = sub_1AF0D5194(), v6 = os_log_type_enabled(v5, OS_LOG_TYPE_FAULT), a3 = v10, v6))
  {
    sub_1AFDE0C90(v5);
    a3 = v10;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v11 = a3;
  v7 = sub_1AF0D5194();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_FAULT);
  a3 = v11;
  if (v8)
  {
    sub_1AFDE0D14(v7);
    a3 = v11;
  }

LABEL_6:
  v9 = *a2;
  *(&v9 + 3) = a3;
  *a1 = v9;
}

float32x4_t *sub_1AF1DA274(float32x4_t *result, float32x4_t *a2, float32x4_t *a3)
{
  v3 = *a2;
  LODWORD(v4) = HIDWORD(*a2);
  if (v4 < 0.0)
  {
    v5 = *a3;
LABEL_5:
    *result = v5;
    return result;
  }

  v6 = *a3;
  LODWORD(v7) = HIDWORD(*a3);
  if (v7 < 0.0)
  {
    v5 = *a2;
    goto LABEL_5;
  }

  v8 = vsubq_f32(v3, v6);
  v9 = vmulq_f32(v8, v8);
  v10 = sqrtf(v9.f32[2] + vaddv_f32(*v9.f32));
  if ((v4 + v10) >= v7)
  {
    if ((v7 + v10) > v4)
    {
      v3 = vmlaq_n_f32(v3, v8, (v4 - (((v4 + v7) + v10) * 0.5)) / v10);
      v3.f32[3] = ((v4 + v7) + v10) * 0.5;
    }

    v6 = v3;
  }

  *result = v6;
  return result;
}

float32x4_t *sub_1AF1DA304(float32x4_t *result, float32x4_t *a2, float32x4_t *a3)
{
  v3 = *result;
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v6, v6), v6, 0xCuLL), vnegq_f32(v5)), v6, vextq_s8(vuzp1q_s32(v5, v5), v5, 0xCuLL));
  v8 = vmulq_f32(*a2, vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL));
  v9 = (v8.f32[2] + vaddv_f32(*v8.f32)) < 0.0;
  v10 = 1.0;
  if (v9)
  {
    v10 = -1.0;
  }

  v11 = vmulq_f32(v4, v4);
  v12 = vmulq_f32(v5, v5);
  v13 = vadd_f32(vzip1_s32(*v11.i8, *v12.i8), vzip2_s32(*v11.i8, *v12.i8));
  v14 = vextq_s8(v11, v11, 8uLL);
  *v14.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v14.f32, *&vextq_s8(v12, v12, 8uLL)), v13));
  v15 = vmulq_f32(v6, v6);
  v14.i32[2] = sqrtf(v15.f32[2] + vaddv_f32(*v15.f32));
  v16 = vmulq_n_f32(v14, v10);
  v17 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(a2[3], v6, v3, 2), v5, *v3.f32, 1), v4, v3.f32[0]);
  v17.i32[3] = vmuls_lane_f32(fmaxf(fmaxf(v16.f32[0], v16.f32[2]), v16.f32[1]), v3, 3);
  *a3 = v17;
  return result;
}

BOOL sub_1AF1DA3CC(_OWORD *a1, __int128 *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = a1[1];
  v11 = *a1;
  v12 = DWORD2(v3);
  v13 = 1065353216;
  v14 = v4;
  v15 = DWORD2(v4);
  v16 = 1065353216;
  v5 = a1[2];
  v17 = *(a1 + 4);
  v18 = DWORD2(v5);
  v19 = 1065353216;
  v6 = *a2;
  v20 = *a2;
  v21 = DWORD2(v6);
  v22 = 1065353216;
  v7 = sub_1AF1D9DB4(&v11, 4u, 3, a3);
  if (!v7)
  {
    v8 = sub_1AF0D5194();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1AF0CE000, v8, OS_LOG_TYPE_DEFAULT, "Warning: CFXTriangle3BarycentricCoordinates: unable to solve the equation", v10, 2u);
    }
  }

  return v7;
}

BOOL sub_1AF1DA4CC(float32x4_t *a1, float32x4_t *a2)
{
  v2 = vsubq_f32(a1[1], *a1);
  v3 = vsubq_f32(a1[2], *a1);
  v4 = vsubq_f32(*a2, *a1);
  v5 = vextq_s8(vuzp1q_s32(v3, v3), v3, 0xCuLL);
  v6 = vextq_s8(vuzp1q_s32(v4, v4), v4, 0xCuLL);
  v7 = vnegq_f32(v3);
  v8 = vmlaq_f32(vmulq_f32(v6, v7), v4, v5);
  v9 = vextq_s8(vuzp1q_s32(v2, v2), v2, 0xCuLL);
  v10 = vmulq_f32(vmlaq_f32(vmulq_f32(v9, v7), v2, v5), v8);
  if ((v10.f32[1] + (v10.f32[2] + v10.f32[0])) < 0.0)
  {
    return 0;
  }

  v11 = vnegq_f32(v2);
  v12 = vmlaq_f32(vmulq_f32(v6, v11), v4, v9);
  v13 = vmlaq_f32(vmulq_f32(v5, v11), v3, v9);
  v14 = vmulq_f32(v13, v12);
  if ((v14.f32[1] + (v14.f32[2] + v14.f32[0])) < 0.0)
  {
    return 0;
  }

  result = 0;
  v16 = vmulq_f32(v13, v13);
  v17 = sqrtf(v16.f32[1] + (v16.f32[2] + v16.f32[0]));
  v18 = vmulq_f32(v8, v8);
  v19 = sqrtf(v18.f32[1] + (v18.f32[2] + v18.f32[0])) / v17;
  if (v19 <= 1.0)
  {
    v20 = vmulq_f32(v12, v12);
    v21 = sqrtf(v20.f32[1] + (v20.f32[2] + v20.f32[0])) / v17;
    if (v21 <= 1.0)
    {
      return (v19 + v21) <= 1.0;
    }
  }

  return result;
}

uint64_t sub_1AF1DA5E0(uint64_t result, int32x4_t *a2, unsigned int a3)
{
  if (a3 + 3 >= 4)
  {
    v3 = 0;
    v4 = a2 + 6;
    v5 = result + 64;
    v6.i64[0] = 0x7F0000007FLL;
    v6.i64[1] = 0x7F0000007FLL;
    v7 = vnegq_f32(v6);
    do
    {
      v8 = 0uLL;
      v9 = 0;
      v10 = 0;
      v11 = v7;
      v12 = 0uLL;
      if (v3 < a3)
      {
        v11 = v4[-6];
        v12 = v4[-5];
        v9.i32[0] = v4[-4].i32[0];
        v10 = v4[-4].i32[1];
      }

      v13 = 0;
      v14 = v7;
      v15 = 0;
      if (v3 + 1 < a3)
      {
        v14 = v4[-3];
        v8 = v4[-2];
        v15 = *v4[-1].i8;
      }

      v16 = 0uLL;
      v17 = 0uLL;
      v18 = v7;
      if (v3 + 2 < a3)
      {
        v18 = *v4;
        v17 = v4[1];
        v13 = v4[2].i64[0];
      }

      v19 = 0;
      v20 = v7;
      if (v3 + 3 < a3)
      {
        v20 = v4[3];
        v16 = v4[4];
        v19 = v4[5].i64[0];
      }

      v21 = vzip1q_s32(v11, v18);
      v32.val[0] = vzip2q_s32(v11, v18).u64[0];
      v22 = vzip1q_s32(v14, v20);
      v32.val[1] = vzip2q_s32(v14, v20).u64[0];
      *&v23 = __PAIR64__(v15.u32[1], v10);
      *(&v23 + 1) = __PAIR64__(HIDWORD(v19), HIDWORD(v13));
      v24 = vzip1q_s32(v12, v17);
      *&v25 = vzip1_s32(v9, v15);
      *(&v25 + 1) = __PAIR64__(v19, v13);
      v26 = (v5 - 64);
      vst2_f32(v26, v21);
      v27 = (v5 - 32);
      vst2_f32(v27, v32);
      v31.val[0] = vzip2q_s32(v12, v17).u64[0];
      v28 = vzip1q_s32(v8, v16);
      v31.val[1] = vzip2q_s32(v8, v16).u64[0];
      v29 = (v5 - 16);
      vst2_f32(v29, v24);
      *(v5 - 48) = vzip2q_s32(v21, v22);
      *v5 = vzip2q_s32(v24, v28);
      v30 = (v5 + 16);
      vst2_f32(v30, v31);
      *(v5 + 32) = v25;
      *(v5 + 48) = v23;
      v3 += 4;
      v4 += 12;
      v5 += 128;
    }

    while (((a3 + 3) & 0xFFFFFFFC) != v3);
  }

  return result;
}

float32x4_t *sub_1AF1DA710(float32x4_t *result, int a2, float32x4_t *a3, float32x4_t *a4, uint64_t a5)
{
  if (a2)
  {
    v5 = 0;
    v6 = *a3;
    v7 = a3[1];
    v8 = a3[2];
    v9 = a3[3];
    v10 = *a4;
    v11 = a4[1];
    v12 = a4[2];
    v13 = a4[3];
    v14 = vnegq_f32(v8);
    v15 = vnegq_f32(*a3);
    v16 = vnegq_f32(v7);
    v17 = vnegq_f32(v12);
    v18 = vnegq_f32(*a4);
    v19 = vnegq_f32(v11);
    v20 = result + 4;
    do
    {
      v21 = v20[-4];
      v22 = v20[-3];
      v23 = v20[-2];
      v24 = v20[2];
      v25 = vnegq_f32(v24);
      v26 = vaddq_f32(v9, vmlaq_f32(vmlaq_f32(vmulq_f32(v7, v22), v21, v6), v23, v8));
      v27 = vaddq_f32(v13, vmlaq_f32(vmlaq_f32(vmulq_f32(v11, v22), v21, v10), v23, v12));
      if ((vminvq_u32(vornq_s8(vmvnq_s8(vcgeq_f32(v26, v25)), vcgeq_f32(v27, v25))) & 0x80000000) != 0)
      {
        if ((v5 & 1) == 0)
        {
          *(a5 + (v5 >> 1)) = 0;
        }
      }

      else
      {
        v28 = v20[3];
        v29 = v20[1];
        v30 = v20[-1];
        v31 = vmlaq_f32(vmulq_f32(*v20, v14), v29, v7);
        v32 = vmlaq_f32(vmulq_f32(v29, v15), v30, v8);
        v33 = vmlaq_f32(vmulq_f32(v30, v16), *v20, v6);
        v34 = vmlaq_f32(vmulq_f32(*v20, vnegq_f32(v33)), v29, v32);
        v35 = vmlaq_f32(vmulq_f32(v29, vnegq_f32(v31)), v30, v33);
        v36 = vmlaq_f32(vmulq_f32(v30, vnegq_f32(v32)), *v20, v31);
        v37 = vmlaq_f32(vmlaq_f32(vmulq_f32(v35, v35), v34, v34), v36, v36);
        v38 = vrsqrteq_f32(v37);
        v39 = vmulq_f32(v38, vrsqrtsq_f32(v37, vmulq_f32(v38, v38)));
        v40 = vbicq_s8(vmulq_f32(v39, vrsqrtsq_f32(v37, vmulq_f32(v39, v39))), vceqzq_f32(v37));
        v41 = vmlaq_f32(v21, v24, v30);
        v42 = vmlaq_f32(v22, v24, *v20);
        v43 = vmlaq_f32(v23, v24, v29);
        v44 = vaddq_f32(v9, vmlaq_f32(vmlaq_f32(vmulq_f32(v7, vmlaq_f32(v42, v28, vmulq_f32(v40, vnegq_f32(v35)))), vmlaq_f32(v41, v28, vmulq_f32(v40, vnegq_f32(v34))), v6), vmlaq_f32(v43, v28, vmulq_f32(v40, vnegq_f32(v36))), v8));
        v45 = vmlaq_f32(vmulq_f32(*v20, v17), v29, v11);
        v46 = vmlaq_f32(vmulq_f32(v29, v18), v30, v12);
        v47 = vmlaq_f32(vmulq_f32(v30, v19), *v20, v10);
        v48 = vmlaq_f32(vmulq_f32(*v20, vnegq_f32(v47)), v29, v46);
        v49 = vmlaq_f32(vmulq_f32(v29, vnegq_f32(v45)), v30, v47);
        v50 = vmlaq_f32(vmulq_f32(v30, vnegq_f32(v46)), *v20, v45);
        v51 = vmlaq_f32(vmlaq_f32(vmulq_f32(v49, v49), v48, v48), v50, v50);
        v52 = vrsqrteq_f32(v51);
        v53 = vmulq_f32(v52, vrsqrtsq_f32(v51, vmulq_f32(v52, v52)));
        v54 = vbicq_s8(vmulq_f32(v53, vrsqrtsq_f32(v51, vmulq_f32(v53, v53))), vceqzq_f32(v51));
        v55 = vaddq_f32(v13, vmlaq_f32(vmlaq_f32(vmulq_f32(v11, vmlaq_f32(v42, v28, vmulq_f32(v54, vnegq_f32(v49)))), vmlaq_f32(v41, v28, vmulq_f32(v54, vnegq_f32(v48))), v10), vmlaq_f32(v43, v28, vmulq_f32(v54, vnegq_f32(v50))), v12));
        v56 = vaddvq_s32(vandq_s8(vandq_s8(vorrq_s8(vcltzq_f32(vmulq_f32(v26, v44)), vcgezq_f32(vminnmq_f32(v26, v44))), vorrq_s8(vcltzq_f32(vmulq_f32(v27, v55)), vcgezq_f32(vminnmq_f32(v27, v55)))), xmmword_1AFE20C60));
        v57 = v5 >> 1;
        if (v5)
        {
          v56 = *(a5 + v57) | (16 * v56);
        }

        *(a5 + v57) = v56;
      }

      ++v5;
      v20 += 8;
    }

    while (a2 != v5);
  }

  return result;
}

uint64_t sub_1AF1DA990(uint64_t result, int32x4_t *a2, unsigned int a3)
{
  if (a3 + 3 >= 4)
  {
    v3 = 0;
    v4 = (result + 32);
    v5 = a2 + 2;
    do
    {
      v6 = xmmword_1AFE21F00;
      if (v3 < a3)
      {
        v6 = v5[-2];
      }

      v7 = xmmword_1AFE21F00;
      if (v3 + 1 < a3)
      {
        v7 = v5[-1];
      }

      v8 = xmmword_1AFE21F00;
      if (v3 + 2 < a3)
      {
        v8 = *v5;
      }

      v9 = xmmword_1AFE21F00;
      if (v3 + 3 < a3)
      {
        v9 = v5[1];
      }

      v10 = vzip1q_s32(v6, v8);
      v16.val[0] = vzip2q_s32(v6, v8).u64[0];
      v11 = vzip1q_s32(v7, v9);
      *&v12 = vuzp2q_s32(vuzp2q_s32(v6, v7), v6).u64[0];
      *(&v12 + 1) = __PAIR64__(v9.u32[3], v8.u32[3]);
      v16.val[1] = vzip2q_s32(v7, v9).u64[0];
      v13 = v4 - 8;
      vst2_f32(v13, v10);
      *(v4 - 1) = vzip2q_s32(v10, v11);
      v14 = v4 + 16;
      vst2_f32(v4, v16);
      v15 = v4 + 4;
      *v15 = v12;
      v3 += 4;
      v5 += 4;
      v4 = v14;
    }

    while (((a3 + 3) & 0xFFFFFFFC) != v3);
  }

  return result;
}

float32x4_t *sub_1AF1DAA58(float32x4_t *result, int a2, float32x4_t *a3, float32x4_t *a4, uint64_t a5)
{
  if (a2)
  {
    v5 = 0;
    v6 = *a3;
    v7 = a3[1];
    v8 = a3[2];
    v9 = a3[3];
    v10 = *a4;
    v11 = a4[1];
    v12 = a4[2];
    v13 = a4[3];
    v14 = result + 2;
    do
    {
      v15 = vnegq_f32(v14[1]);
      v16 = vaddvq_s32(vandq_s8(vandq_s8(vcgeq_f32(vaddq_f32(v9, vmlaq_f32(vmlaq_f32(vmulq_f32(v7, v14[-1]), v14[-2], v6), *v14, v8)), v15), vcgeq_f32(vaddq_f32(v13, vmlaq_f32(vmlaq_f32(vmulq_f32(v11, v14[-1]), v14[-2], v10), *v14, v12)), v15)), xmmword_1AFE20C60));
      v17 = v5 >> 1;
      if (v5)
      {
        v16 = *(a5 + v17) | (16 * v16);
      }

      *(a5 + v17) = v16;
      ++v5;
      v14 += 4;
    }

    while (a2 != v5);
  }

  return result;
}

float32x4_t sub_1AF1DAAEC(float32x4_t *a1, float32x4_t *a2, uint64_t a3, unsigned int a4)
{
  if (a4)
  {
    v4 = (a3 + 32);
    v5 = a2 + 2;
    v6 = a1 + 2;
    v7 = a4;
    do
    {
      v8 = v5[-2];
      v9 = v5[-1];
      v11 = *v5;
      result = v5[1];
      v5 += 4;
      v12 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v8, *(v4 - 8)), v9, *(v4 - 7)), v11, *(v4 - 6)), result, *(v4 - 5));
      v13 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v8, *(v4 - 4)), v9, *(v4 - 3)), v11, *(v4 - 2)), result, *(v4 - 1));
      v14 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v8, *v4), v9, v4[1]), v11, v4[2]), result, v4[3]);
      v15 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v8, v4[4]), v9, v4[5]), v11, v4[6]), result, v4[7]);
      v6[-2] = v12;
      v6[-1] = v13;
      *v6 = v14;
      v6[1] = v15;
      v6 += 4;
      v4 += 16;
      --v7;
    }

    while (v7);
  }

  return result;
}

float32x4_t *sub_1AF1DAB80(float32x4_t *result, uint64_t a2, unsigned int a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, float32x4_t a7)
{
  if (a3)
  {
    v7 = a3;
    v8 = (a2 + 32);
    v9 = result + 2;
    do
    {
      v9[-2] = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(a4, *(v8 - 8)), a5, *(v8 - 7)), a6, *(v8 - 6)), a7, *(v8 - 5));
      v9[-1] = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(a4, *(v8 - 4)), a5, *(v8 - 3)), a6, *(v8 - 2)), a7, *(v8 - 1));
      *v9 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(a4, *v8), a5, v8[1]), a6, v8[2]), a7, v8[3]);
      v9[1] = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(a4, v8[4]), a5, v8[5]), a6, v8[6]), a7, v8[7]);
      v8 += 16;
      v9 += 4;
      --v7;
    }

    while (v7);
  }

  return result;
}

int32x4_t sub_1AF1DAC14(uint64_t a1, int32x4_t *a2, unsigned int a3)
{
  if (a3)
  {
    v3 = a3;
    v4 = (a1 + 32);
    v5 = a2 + 2;
    do
    {
      v6 = v5[-2];
      v7 = v5[-1];
      v8 = *v5;
      v9 = v5[1];
      v5 += 4;
      v10 = v4 - 8;
      v11 = vzip1q_s32(v6, v8);
      v14.val[0] = vzip2q_s32(v6, v8).u64[0];
      v12 = vzip1q_s32(v7, v9);
      v14.val[1] = vzip2q_s32(v7, v9).u64[0];
      result = vzip2q_s32(v11, v12);
      vst2_f32(v10, v11);
      *(v4 - 1) = result;
      vst2_f32(v4, v14);
      v4 += 12;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t vfx_frustum_classify_aabb(float32x4_t *a1, float32x4_t a2, float32x4_t a3)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = vmulq_f32(a2, *a1);
  v7 = vmulq_f32(a2, v3);
  v8 = vmulq_f32(a2, v4);
  v9 = vmulq_f32(a2, v5);
  v10 = vzip1q_s32(v6, v8);
  v11 = vzip2q_s32(v6, v8);
  v12 = vzip1q_s32(v7, v9);
  v13 = vzip2q_s32(v7, v9);
  v14 = vaddq_f32(vzip2q_s32(v11, v13), vaddq_f32(vzip1q_s32(v11, v13), vaddq_f32(vzip1q_s32(v10, v12), vzip2q_s32(v10, v12))));
  v15 = vmulq_f32(a3, vabsq_f32(*a1));
  v16 = vmulq_f32(a3, vabsq_f32(v3));
  v17 = vmulq_f32(a3, vabsq_f32(v4));
  v18 = vmulq_f32(a3, vabsq_f32(v5));
  v19 = vzip1q_s32(v15, v17);
  v20 = vzip2q_s32(v15, v17);
  v21 = vzip1q_s32(v16, v18);
  v22 = vzip2q_s32(v16, v18);
  v23 = vmaxnmq_f32(vsubq_f32(vabsq_f32(v14), vaddq_f32(vzip2q_s32(v20, v22), vaddq_f32(vzip1q_s32(v20, v22), vaddq_f32(vzip1q_s32(v19, v21), vzip2q_s32(v19, v21))))), 0);
  v22.i64[0] = 0x8000000080000000;
  v22.i64[1] = 0x8000000080000000;
  v24 = vorrq_s8(vandq_s8(v14, v22), vabsq_f32(v23));
  if ((vmaxvq_u32(vcltzq_f32(v24)) & 0x80000000) != 0)
  {
    return 1;
  }

  v26 = a1[4];
  v25 = a1[5];
  v27 = vmulq_f32(a2, v26);
  v28 = vmulq_f32(a2, v25);
  v29 = vzip1q_s32(v27, v28);
  v30 = vzip2q_s32(v27, v28);
  *v30.i8 = vadd_f32(*&vextq_s8(v30, v30, 8uLL), vadd_f32(*v30.i8, vadd_f32(*v29.i8, *&vextq_s8(v29, v29, 8uLL))));
  v31 = vmulq_f32(a3, vabsq_f32(v26));
  v32 = vmulq_f32(a3, vabsq_f32(v25));
  v33 = vzip1q_s32(v31, v32);
  v34 = vzip2q_s32(v31, v32);
  v35 = vorr_s8(vand_s8(*v30.i8, 0x8000000080000000), vabs_f32(vmaxnm_f32(vsub_f32(vabs_f32(*v30.i8), vadd_f32(*&vextq_s8(v34, v34, 8uLL), vadd_f32(*v34.i8, vadd_f32(*v33.i8, *&vextq_s8(v33, v33, 8uLL))))), 0)));
  *v34.i8 = vcltz_f32(v35);
  if ((vpmax_u32(*v34.i8, *v34.i8).u32[0] & 0x80000000) != 0)
  {
    return 1;
  }

  *v36.f32 = vmul_f32(*v24.f32, v35);
  v36.i64[1] = vextq_s8(v24, v24, 8uLL).u64[0];
  return (vmaxvq_u32(vceqzq_f32(v36)) >> 30) & 2;
}

double sub_1AF1DADD0(float32x4_t a1)
{
  v1 = __sincosf_stret(0.5 * a1.f32[0]);
  v2 = __sincosf_stret(vmuls_lane_f32(0.5, *a1.f32, 1));
  v3 = __sincosf_stret(vmuls_lane_f32(0.5, a1, 2));
  v4.f32[0] = (v3.__cosval * (v1.__sinval * v2.__sinval)) + ((v1.__cosval * v2.__cosval) * v3.__sinval);
  v4.f32[1] = (v3.__sinval * (v1.__cosval * v2.__sinval)) + ((v1.__sinval * v2.__cosval) * v3.__cosval);
  v4.f32[2] = ((v1.__cosval * v2.__sinval) * v3.__cosval) - ((v1.__sinval * v2.__cosval) * v3.__sinval);
  v11 = v4;
  acosf(((v1.__cosval * v2.__cosval) * v3.__cosval) - ((v1.__sinval * v2.__sinval) * v3.__sinval));
  v5 = vmulq_f32(v11, v11);
  *&v6 = v5.f32[2] + vaddv_f32(*v5.f32);
  v7 = vrsqrte_f32(v6);
  v8 = vmul_f32(v7, vrsqrts_f32(v6, vmul_f32(v7, v7)));
  *&result = vmulq_n_f32(v11, vmul_f32(v8, vrsqrts_f32(v6, vmul_f32(v8, v8))).f32[0]).u64[0];
  return result;
}

void sub_1AF1DAEC4(float32x4_t a1)
{
  v1 = a1.f32[3];
  v2 = __sincosf_stret(a1.f32[3]);
  v3 = 1.0 - v2.__cosval;
  v4 = vmulq_f32(a1, a1);
  v4.f32[0] = v4.f32[2] + vaddv_f32(*v4.f32);
  v5 = vdupq_lane_s32(*v4.f32, 0);
  v5.i32[3] = 0;
  v6 = vrsqrteq_f32(v5);
  v7 = vmulq_f32(v6, vrsqrtsq_f32(v5, vmulq_f32(v6, v6)));
  v8 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v4.f32[0] != 0.0)), 0x1FuLL));
  v8.i32[3] = 0;
  v9 = vbslq_s8(vcltzq_s32(v8), vmulq_f32(vmulq_f32(v7, vrsqrtsq_f32(v5, vmulq_f32(v7, v7))), a1), a1);
  v10 = vmuls_lane_f32(v2.__sinval, v9, 2) + (vmuls_lane_f32(v9.f32[0], *v9.f32, 1) * (1.0 - v2.__cosval));
  v16 = v9.f32[0];
  if (v10 <= 0.998)
  {
    if (v10 >= -0.998)
    {
      v13 = v9.f32[1];
      v14 = v9.f32[2];
      atan2f((v3 * -(v9.f32[0] * v9.f32[2])) + (v9.f32[1] * v2.__sinval), 1.0 - (((v14 * v14) + (v13 * v13)) * v3));
      asinf(v10);
      atan2f((v3 * -(v13 * v14)) + (v16 * v2.__sinval), 1.0 - (((v14 * v14) + (v16 * v16)) * v3));
    }

    else
    {
      v12 = __sincosf_stret(v1 * 0.5);
      atan2f(v12.__sinval * v16, v12.__cosval);
    }
  }

  else
  {
    v11 = __sincosf_stret(v1 * 0.5);
    atan2f(v11.__sinval * v16, v11.__cosval);
  }
}

BOOL sub_1AF1DB074(char *cf, const __CFArray *a2, int a3, int a4, uint64_t a5, int a6)
{
  sub_1AF1DE260(a5, cf);
  if (a3 >= a4)
  {
    *(a5 + 24) = 0;
    *(a5 + 32) = 0;
    return 1;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(a2, a3);
  v13 = sub_1AF1DB1EC(ValueAtIndex);
  if (v13 <= 72)
  {
    if (v13 != 70)
    {
      if (v13 == 71)
      {
        return 0;
      }

LABEL_11:
      if (a6)
      {
        v15 = sub_1AF0D5194();
        result = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          return result;
        }

        sub_1AFDE0D98();
      }

      return 0;
    }

    v16 = sub_1AF166F98(cf);
    sub_1AF1DB234(v16, a2, a3 + 1, a4, a5);
    return 1;
  }

  if (v13 != 73)
  {
    if (v13 == 74)
    {
      *(a5 + 24) = cf + 80;
      result = 1;
      *(a5 + 32) = 1;
      return result;
    }

    goto LABEL_11;
  }

  v17 = sub_1AF167270(cf);
  if (!v17)
  {
    v18[0] = xmmword_1AFE20150;
    v18[1] = xmmword_1AFE20160;
    v18[2] = xmmword_1AFE20180;
    v18[3] = xmmword_1AFE201A0;
    sub_1AF167444(cf, v18);
    v17 = sub_1AF167270(cf);
  }

  return sub_1AF1DB2F8(v17, a2, a3 + 1, a4, a5, a6);
}

const void *sub_1AF1DB1EC(void *key)
{
  if (qword_1ED737BE0 != -1)
  {
    sub_1AFDE0E00();
  }

  return CFDictionaryGetValue(qword_1ED737BE8, key);
}

void sub_1AF1DB234(uint64_t a1, CFArrayRef theArray, int a3, int a4, uint64_t a5)
{
  if (a3 >= a4)
  {
    *(a5 + 24) = a1;
    *(a5 + 32) = 12;
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, a3);
    v8 = sub_1AF1DB1EC(ValueAtIndex);
    *(a5 + 32) = 1;
    v9 = v8 - 13;
    if (v8 - 13 >= 8)
    {
      v12 = sub_1AF0D5194();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDE0E14();
      }
    }

    else
    {
      v10 = 0x302010003020100uLL >> (8 * v9);
      v11 = qword_1AFE21F30[v9];
      *(a5 + 35) = v10;
      *(a5 + 24) = a1 + 4 * v11;
    }
  }
}

BOOL sub_1AF1DB2F8(uint64_t a1, CFArrayRef theArray, int a3, int a4, uint64_t a5, int a6)
{
  *(a5 + 34) = 8;
  *(a5 + 37) = 1;
  if (a3 >= a4)
  {
    *(a5 + 24) = a1;
    *(a5 + 32) = 10;
    return 1;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(theArray, a3);
  v13 = sub_1AF1DB1EC(ValueAtIndex);
  if ((v13 - 21) < 0x10)
  {
    v14 = a1;
    v15 = theArray;
    v16 = a3;
LABEL_4:
    sub_1AF1DBB34(v14, v15, v16, a4, a5);
LABEL_5:
    *(a5 + 24) = a1;
    return 1;
  }

  if (v13 <= 7)
  {
    switch(v13)
    {
      case 5:
        v16 = a3 + 1;
        v14 = a1;
        v15 = theArray;
        goto LABEL_4;
      case 6:
        v22 = 0;
        v21 = 0;
        sub_1AF1DBA68(&v21, theArray, a3 + 1, a4, a5);
        *(a5 + 34) = 6;
        goto LABEL_5;
      case 7:
        v19 = a3 + 1;
        v18 = theArray;
        goto LABEL_16;
    }
  }

  else
  {
    if ((v13 - 11) < 2)
    {
      v18 = theArray;
      v19 = a3;
LABEL_16:
      sub_1AF1DDA5C(v18, v19, a4, a5);
      goto LABEL_5;
    }

    if (v13 == 8)
    {
      *(a5 + 34) = 7;
      *(a5 + 32) = 8;
      *(a5 + 35) = sub_1AF1DDBE0(theArray, a3 + 1, a4, a5);
      goto LABEL_5;
    }
  }

  if (!a6)
  {
    return 0;
  }

  v20 = sub_1AF0D5194();
  result = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_1AFDE0E7C();
    return 0;
  }

  return result;
}

uint64_t sub_1AF1DB4A0(const __CFArray *a1, const void *a2, _BYTE *a3)
{
  if (a1 && CFArrayGetCount(a1) >= 2 && (ValueAtIndex = CFArrayGetValueAtIndex(a1, 0), Length = CFStringGetLength(ValueAtIndex), Length >= 2) && (v8 = Length, CFStringGetCharacterAtIndex(ValueAtIndex, 0) == 47))
  {
    if (a3)
    {
      *a3 = 1;
    }

    v12.length = v8 - 1;
    v12.location = 1;
    v9 = CFStringCreateWithSubstring(0, ValueAtIndex, v12);
    v10 = sub_1AF1C4020(a2, v9);
    CFRelease(v9);
    return v10;
  }

  else
  {
    if (a3)
    {
      *a3 = 0;
    }

    return 0;
  }
}

uint64_t sub_1AF1DB564(void *a1, const __CFArray *a2, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  v5 = a1;
  v12 = 0;
  v6 = sub_1AF1DE1CC(0, 0, 0, 0);
  v7 = sub_1AF1DB4A0(a2, v5, &v12);
  if (v7)
  {
    v5 = v7;
  }

  Count = CFArrayGetCount(a2);
  v9 = Count;
  if (v12 == 1)
  {
    v9 = Count - 1;
    a2 = sub_1AF28A4C4(a2, 1, Count - 1);
  }

  v10 = CFGetTypeID(v5);
  sub_1AF1DBBF0(v5, v10, a2, 0, v9, v6, a3);
  if (*(v6 + 24))
  {
    *(v6 + 36) = sub_1AF288070(*(v6 + 32));
  }

  return v6;
}

const void *sub_1AF1DB654(const void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result)
  {
    v11 = result;
    v12 = CFGetTypeID(result);

    return sub_1AF1DBBF0(v11, v12, a2, a3, a4, a5, a6);
  }

  return result;
}

const __CFString *sub_1AF1DB6D0(void *a1, CFStringRef theString, uint64_t a3)
{
  result = sub_1AF28A40C(theString);
  if (result)
  {
    v6 = result;
    v7 = sub_1AF1DB564(a1, result, a3);
    CFRelease(v6);
    return v7;
  }

  return result;
}

uint64_t sub_1AF1DB72C(const void *a1, const __CFString *a2, const char *a3, int a4)
{
  if (!a1)
  {
    return 0;
  }

  v8 = sub_1AF1DE1CC(0, 0, 0, 0);
  v9 = CFGetTypeID(a1);
  sub_1AF1DCC5C(a1, v9, a2, a3, v8, a4);
  if (*(v8 + 24))
  {
    *(v8 + 36) = sub_1AF288070(*(v8 + 32));
  }

  return v8;
}

uint64_t sub_1AF1DB7C8(const void *a1, const __CFString *a2, void *a3, int a4)
{
  if (!a1)
  {
    return 0;
  }

  v8 = sub_1AF1DE1CC(0, 0, 0, 0);
  v9 = CFGetTypeID(a1);
  sub_1AF1DCDF4(a1, v9, a2, a3, v8, a4);
  if (*(v8 + 24))
  {
    *(v8 + 36) = sub_1AF288070(*(v8 + 32));
  }

  return v8;
}

const void *sub_1AF1DB864(void *key)
{
  Mutable = qword_1ED739AD0;
  if (!qword_1ED739AD0)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]);
    qword_1ED739AD0 = Mutable;
  }

  Value = CFDictionaryGetValue(Mutable, key);
  if (!Value)
  {
    Value = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
    CFDictionarySetValue(qword_1ED739AD0, key, Value);
  }

  return Value;
}

uint64_t sub_1AF1DB904(CFArrayRef theArray, int a2, int a3, uint64_t a4)
{
  result = 0;
  v7 = *(a4 + 32);
  if (v7 > 9)
  {
    if (v7 == 10)
    {
      sub_1AF1DBB34(*(a4 + 24), theArray, a2, a3, a4);
    }

    else
    {
      if (v7 != 12)
      {
        return result;
      }

      sub_1AF1DB234(*(a4 + 24), theArray, a2, a3, a4);
    }
  }

  else if (v7 == 8)
  {
    sub_1AF1DBA68(*(a4 + 24), theArray, a2, a3, a4);
  }

  else
  {
    if (v7 != 9)
    {
      return result;
    }

    if (a2 >= a3)
    {
      *(a4 + 32) = 9;
    }

    else
    {
      v8 = *(a4 + 24);
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, a2);
      v10 = sub_1AF1DB1EC(ValueAtIndex);
      *(a4 + 32) = 1;
      if (v10 > 14)
      {
        if (v10 == 15)
        {
          *(a4 + 24) = v8 + 8;
          v11 = 2;
        }

        else
        {
          if (v10 != 16)
          {
LABEL_18:
            v12 = sub_1AF0D5194();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              sub_1AFDE0EE4();
            }

            return 1;
          }

          *(a4 + 24) = v8 + 12;
          v11 = 3;
        }

        *(a4 + 35) = v11;
      }

      else
      {
        if (v10 != 13)
        {
          if (v10 == 14)
          {
            *(a4 + 24) = v8 + 4;
            result = 1;
            *(a4 + 35) = 1;
            return result;
          }

          goto LABEL_18;
        }

        *(a4 + 24) = v8;
        *(a4 + 35) = 0;
      }
    }
  }

  return 1;
}

void sub_1AF1DBA68(uint64_t a1, CFArrayRef theArray, int a3, int a4, uint64_t a5)
{
  if (a3 >= a4)
  {
    *(a5 + 24) = a1;
    *(a5 + 32) = 8;
    return;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(theArray, a3);
  v8 = sub_1AF1DB1EC(ValueAtIndex);
  *(a5 + 32) = 1;
  switch(v8)
  {
    case 0xDu:
      *(a5 + 24) = a1;
      break;
    case 0xEu:
      *(a5 + 24) = a1 + 4;
      v9 = 1;
      goto LABEL_8;
    case 0xFu:
      *(a5 + 24) = a1 + 8;
      v9 = 2;
LABEL_8:
      *(a5 + 35) = v9;
      return;
    default:
      v10 = sub_1AF0D5194();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDE0F4C();
      }

      break;
  }
}

void sub_1AF1DBB34(uint64_t a1, CFArrayRef theArray, int a3, int a4, uint64_t a5)
{
  if (a3 >= a4)
  {
    *(a5 + 24) = a1;
    *(a5 + 32) = 10;
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, a3);
    v8 = sub_1AF1DB1EC(ValueAtIndex);
    *(a5 + 32) = 1;
    v9 = v8 - 21;
    if (v8 - 21 >= 0x10)
    {
      v12 = sub_1AF0D5194();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDE0FB4();
      }
    }

    else
    {
      v10 = byte_1AFE21F20[v9];
      v11 = qword_1AFE21F70[v9];
      *(a5 + 35) = v10;
      *(a5 + 24) = a1 + 4 * v11;
    }
  }
}

uint64_t sub_1AF1DBBF0(void *a1, void *a2, const __CFArray *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (sub_1AF16CB64() != a2)
  {
    if (sub_1AF1B846C() == a2)
    {
      if (sub_1AF1DC218(a1, a3, a4, a5, a6, a7))
      {
        return 1;
      }

      goto LABEL_24;
    }

    if (sub_1AF1A0AD8() == a2)
    {
      if (sub_1AF1DC52C(a1, a3, a4, a5, a6, a7))
      {
        return 1;
      }

      goto LABEL_24;
    }

    if (sub_1AF19AF4C() == a2)
    {
      if (!a1)
      {
        goto LABEL_24;
      }

      if ((sub_1AF1DC078(a1, a3, a4, a5, a6) & 1) == 0)
      {
        sub_1AF1DE260(a6, a1);
        if (a4 >= a5)
        {
          *(a6 + 24) = 0;
          *(a6 + 32) = 0;
          return 1;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(a3, a4);
        v15 = sub_1AF1DB1EC(ValueAtIndex);
        if (v15 <= 81)
        {
          switch(v15)
          {
            case 'N':
              v16 = 1;
              v30 = sub_1AF19B4EC(a1, 1);
              break;
            case 'O':
              v16 = 1;
              v30 = sub_1AF19B558(a1, 1);
              break;
            case 'Q':
              v16 = 1;
              *(a6 + 32) = 1;
              v17 = (a1 + 84);
LABEL_69:
              *(a6 + 24) = v17;
              return v16;
            default:
              goto LABEL_24;
          }

          sub_1AF1DB074(v30, a3, a4 + 1, a5, a6, a7);
          return v16;
        }

        switch(v15)
        {
          case 'R':
            v16 = 1;
            *(a6 + 32) = 1;
            v17 = (a1 + 308);
            break;
          case 'S':
            v16 = 1;
            *(a6 + 32) = 1;
            v17 = a1 + 38;
            break;
          case 'T':
            v16 = 1;
            *(a6 + 32) = 1;
            v17 = a1 + 39;
            break;
          default:
            goto LABEL_24;
        }

        goto LABEL_69;
      }
    }

    else
    {
      if (sub_1AF1B630C() == a2)
      {
        v18 = sub_1AF15B294(a1);
      }

      else
      {
        if (sub_1AF1B42EC() != a2)
        {
          if (sub_1AF1B2A04() == a2)
          {
            if (sub_1AF1DC800(a1, a3, a4, a5, a6, a7))
            {
              return 1;
            }
          }

          else if (sub_1AF16FA20() == a2)
          {
            if (sub_1AF1DC95C(a1, a3, a4, a5, a6))
            {
              return 1;
            }
          }

          else if (sub_1AF1CF31C() == a2)
          {
            if (sub_1AF1DCA10(a1, a3, a4, a5, a6, a7))
            {
              return 1;
            }
          }

          else if (sub_1AF16A528() == a2 && sub_1AF1DCAE8(a1, a3, a4, a5, a6))
          {
            return 1;
          }

          goto LABEL_24;
        }

        v18 = a1;
      }

      if (!sub_1AF1DC620(v18, a3, a4, a5, a6, a7))
      {
        goto LABEL_24;
      }
    }

    return 1;
  }

  if (sub_1AF1DC078(a1, a3, a4, a5, a6))
  {
    return 1;
  }

LABEL_24:
  os_unfair_lock_lock(&unk_1ED731628);
  v19 = sub_1AF1DB864(a2);
  if (a4 >= a5 || (v20 = v19) == 0)
  {
    os_unfair_lock_unlock(&unk_1ED731628);
LABEL_34:
    v16 = 0;
    if (!a7 || a4 + 1 != a5)
    {
      return v16;
    }

    v28 = sub_1AF0D5194();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDE101C();
    }

    return 0;
  }

  v21 = CFArrayGetValueAtIndex(a3, a4);
  Value = CFDictionaryGetValue(v20, v21);
  os_unfair_lock_unlock(&unk_1ED731628);
  if (!Value)
  {
    v29 = CFDictionaryGetValue(v20, @"superClass");
    if (v29 && (sub_1AF1DBBF0(a1, v29, a3, a4, a5, a6, a7) & 1) != 0)
    {
      return 1;
    }

    goto LABEL_34;
  }

  sub_1AF1DE260(a6, a1);
  v23 = *(Value + 4);
  *(a6 + 32) = v23;
  *(a6 + 34) = Value[10];
  v24 = (a1 + *Value);
  *(a6 + 24) = v24;
  v25 = (a4 + 1);
  if (v25 >= a5)
  {
    return 1;
  }

  if (v23 == 5)
  {
    if (a1)
    {
      v26 = *v24;

      return sub_1AF1DB654(v26, a3, v25, a5, a6, a7);
    }

    return 0;
  }

  return sub_1AF1DB904(a3, a4 + 1, a5, a6);
}

uint64_t sub_1AF1DC078(void *a1, CFArrayRef theArray, int a3, int a4, uint64_t a5)
{
  if (a3 >= a4)
  {
    return 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(theArray, a3);
  v11 = sub_1AF1DB1EC(ValueAtIndex);
  if (v11 == 91)
  {
    if (a3 + 1 < a4)
    {
      v17 = CFArrayGetValueAtIndex(theArray, a3 + 1);
      result = sub_1AF1C3FAC(a1);
      if (result)
      {
        v18 = sub_1AF1CF830(result);
        result = sub_1AF118B34(v18, a1, v17);
        if (result)
        {
          *(a5 + 24) = result + 52;
          sub_1AF1DE260(a5, result);
          result = 1;
          *(a5 + 32) = 1;
          *(a5 + 34) = 0;
        }
      }

      return result;
    }

    return 0;
  }

  if (v11 != 90)
  {
    result = sub_1AF16D5A8(a1);
    if (result)
    {
      sub_1AF16E098(a1);

      return sub_1AF16E56C(a1, theArray, a3, a5);
    }

    return result;
  }

  if (a3 + 1 >= a4)
  {
    return 0;
  }

  v12 = CFArrayGetValueAtIndex(theArray, a3 + 1);
  v13 = sub_1AF16E3F4(a1, v12);
  if (v13)
  {
    v14 = v13;
    v15 = CFGetTypeID(v13);
    if (v15 == sub_1AF1CD8D8())
    {
      sub_1AF1DE260(a5, v14);
      *(a5 + 24) = sub_1AF1CDA60(v14);
      *(a5 + 32) = sub_1AF1CDAAC(v14);
      *(a5 + 34) = 0;
      return 1;
    }
  }

  v19 = sub_1AF0D5194();
  result = os_log_type_enabled(v19, OS_LOG_TYPE_FAULT);
  if (result)
  {
    sub_1AFDE1084(v19, v20, v21, v22, v23, v24, v25, v26);
    return 0;
  }

  return result;
}

uint64_t sub_1AF1DC218(void *a1, const __CFArray *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a1)
  {
    return 0;
  }

  if (sub_1AF1DC078(a1, a2, a3, a4, a5))
  {
    return 1;
  }

  sub_1AF1DE260(a5, a1);
  if (a3 >= a4)
  {
    *(a5 + 24) = 0;
    *(a5 + 32) = 0;
    return 1;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(a2, a3);
  v13 = sub_1AF1DB1EC(ValueAtIndex);
  if (v13 > 36)
  {
    if (v13 <= 85)
    {
      if (v13 > 38)
      {
        if (v13 == 39)
        {
          v14 = sub_1AF1B75A0(a1);
        }

        else
        {
          if (v13 != 75)
          {
            goto LABEL_41;
          }

          v14 = sub_1AF1B75E8(a1);
        }
      }

      else if (v13 == 37)
      {
        v14 = sub_1AF1BB260(a1);
      }

      else
      {
        v14 = sub_1AF1BBFEC(a1);
      }

LABEL_33:
      sub_1AF1DB654(v14, a2, (a3 + 1), a4, a5, a6);
      return 1;
    }

    if (v13 > 87)
    {
      if (v13 == 88)
      {
        v15 = sub_1AF1BC05C(a1);
      }

      else
      {
        if (v13 != 89)
        {
          goto LABEL_41;
        }

        v15 = sub_1AF1BC054(a1);
      }
    }

    else
    {
      if (v13 == 86)
      {
        v14 = sub_1AF1B9158(a1);
        goto LABEL_33;
      }

      v15 = sub_1AF1B83E8(a1);
    }

    sub_1AF1DCAE8(v15, a2, a3 + 1, a4, a5);
    return 1;
  }

  if (v13 > 4)
  {
    if ((v13 - 5) >= 4 && (v13 - 11) >= 2)
    {
      if (v13 == 9)
      {
        *(a5 + 34) = 8;
        v20 = a1[24];
        if (!v20)
        {
          sub_1AF1B87C4(a1, xmmword_1AFE21FF0, unk_1AFE22000, xmmword_1AFE22010, unk_1AFE22020);
          v20 = a1[24];
        }

        sub_1AF1DBB34(v20, a2, a3 + 1, a4, a5);
        return 1;
      }

      goto LABEL_41;
    }

    v16 = a1;
    v17 = a2;
    v18 = a3;
LABEL_22:
    sub_1AF1DDC38(v16, v17, v18, a4, a5, a6);
    return 1;
  }

  switch(v13)
  {
    case 1:
      v18 = a3 + 1;
      v16 = a1;
      v17 = a2;
      goto LABEL_22;
    case 2:
      *(a5 + 24) = a1 + 204;
      v19 = 1;
      *(a5 + 32) = 1;
      return v19;
    case 3:
      *(a5 + 24) = a1 + 25;
      *(a5 + 32) = 3;
      return 1;
  }

LABEL_41:
  cf = 0;
  v24 = 0;
  if (!sub_1AF1DDCFC(a2, a3, a4, &v24, &cf))
  {
LABEL_47:
    if (a6)
    {
      v22 = sub_1AF0D5194();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDE10FC();
      }
    }

    return 0;
  }

  if (sub_1AF1DB1EC(cf) != 10)
  {
    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_47;
  }

  v21 = sub_1AF1B963C(a1, v24);
  if (v21)
  {
    v19 = sub_1AF1DC218(v21, a2, (a3 + 1), a4, a5, a6);
  }

  else
  {
    v19 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v19;
}

uint64_t sub_1AF1DC52C(uint64_t result, const __CFArray *a2, int a3, int a4, uint64_t a5, int a6)
{
  if (result)
  {
    v11 = result;
    if (sub_1AF1DC078(result, a2, a3, a4, a5))
    {
      return 1;
    }

    sub_1AF1DE260(a5, v11);
    if (a3 >= a4)
    {
      *(a5 + 24) = 0;
      *(a5 + 32) = 0;
      return 1;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(a2, a3);
    v13 = sub_1AF1DB1EC(ValueAtIndex);
    v14 = sub_1AF1A1270(v11);
    if (v13 == 42)
    {
      sub_1AF1DDF10(v14, a2, a3 + 1, a4, a5, a6);
      return 1;
    }

    return sub_1AF1DDF10(v14, a2, a3, a4, a5, a6);
  }

  return result;
}

BOOL sub_1AF1DC620(_BOOL8 result, const __CFArray *a2, int a3, int a4, uint64_t a5, int a6)
{
  if (!result)
  {
    return result;
  }

  v11 = result;
  if (sub_1AF1DC078(result, a2, a3, a4, a5))
  {
    return 1;
  }

  sub_1AF1DE260(a5, v11);
  if (a3 >= a4)
  {
    *(a5 + 24) = 0;
    *(a5 + 32) = 0;
    return 1;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(a2, a3);
  v13 = sub_1AF1DB1EC(ValueAtIndex);
  v14 = CFStringFind(ValueAtIndex, @"weights", 0);
  if (v14.length <= 0)
  {
    v15 = 0;
  }

  else
  {
    v15 = -1;
  }

  if (v14.length > 0 || v13 == 85)
  {
    v17 = sub_1AF1B4C94(v11);
    v18 = CFStringFind(ValueAtIndex, @"[", 0);
    if (v18.length >= 1)
    {
      v19 = CFStringFind(ValueAtIndex, @"]", 0);
      if (v19.length >= 1 && v19.location > v18.location + 2)
      {
        v26.location = v18.location + 2;
        v26.length = v19.location - (v18.location + 2);
        v20 = CFStringCreateWithSubstring(0, ValueAtIndex, v26);
        v21 = sub_1AF1B5A20(v11, v20);
        if (v21 != -1)
        {
          v22 = v21;
          sub_1AF1DE260(a5, v17);
          v23 = sub_1AF17032C(v17);
          *(a5 + 24) = sub_1AF1CAFE0(v23, v22, v24, v25);
          *(a5 + 32) = sub_1AF1CAED8(v23);
          if (v20)
          {
            CFRelease(v20);
          }

          return 1;
        }

        if (v20)
        {
          CFRelease(v20);
        }
      }
    }

    if (v17)
    {
      sub_1AF1DC95C(v17, a2, a3 + v15 + 1, a4, a5);
    }

    return 1;
  }

  if (a6)
  {
    v16 = sub_1AF0D5194();
    result = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_1AFDE1164();
  }

  return 0;
}

uint64_t sub_1AF1DC800(CFTypeRef cf, const __CFArray *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!cf)
  {
    return 0;
  }

  sub_1AF1DE260(a5, cf);
  if (a3 >= a4)
  {
    *(a5 + 24) = 0;
    *(a5 + 32) = 0;
    return 1;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(a2, a3);
  if (sub_1AF1DB1EC(ValueAtIndex) == 40)
  {
    if (sub_1AF1B1FE0(cf) >= 1)
    {
      v13 = sub_1AF1B2030(cf, 0);
      sub_1AF1DC52C(v13, a2, a3 + 1, a4, a5, a6);
    }

    return 1;
  }

  cfa = 0;
  v18 = 0;
  v14 = 0;
  if (sub_1AF1DDCFC(a2, a3, a4, &v18, &cfa))
  {
    if (sub_1AF1DB1EC(cfa) == 41 && (v16 = sub_1AF1B1FE0(cf), v16 > v18))
    {
      v17 = sub_1AF1B2030(cf, v18);
      v14 = sub_1AF1DB654(v17, a2, (a3 + 1), a4, a5, a6);
    }

    else
    {
      v14 = 0;
    }

    if (cfa)
    {
      CFRelease(cfa);
    }
  }

  return v14;
}

uint64_t sub_1AF1DC95C(CFTypeRef cf, const __CFArray *a2, int a3, int a4, uint64_t a5)
{
  sub_1AF1DE260(a5, cf);
  if (!cf)
  {
    return 0;
  }

  *(a5 + 24) = 0;
  *(a5 + 32) = 0;
  v15 = 0;
  v10 = sub_1AF1DDCFC(a2, a3, a4, &v15, 0);
  if (v10)
  {
    v11 = sub_1AF17032C(cf);
    *(a5 + 24) = sub_1AF1CAFE0(v11, v15, v12, v13);
    *(a5 + 32) = sub_1AF1CAED8(v11);
  }

  return v10;
}

uint64_t sub_1AF1DCA10(CFTypeRef cf, const __CFArray *a2, int a3, int a4, uint64_t a5, int a6)
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
    v13 = sub_1AF1DB1EC(ValueAtIndex);
    if (v13 == 92)
    {
      v14 = 1;
      v15 = sub_1AF1D0008(cf, 1);
    }

    else
    {
      if (v13 != 93)
      {
        return 0;
      }

      v14 = 1;
      v15 = sub_1AF1D005C(cf, 1);
    }

    sub_1AF1DB074(v15, a2, a3 + 1, a4, a5, a6);
  }

  return v14;
}

BOOL sub_1AF1DCAE8(_BOOL8 result, void *a2, int a3, int a4, uint64_t a5)
{
  if (!result)
  {
    return result;
  }

  v6 = result;
  v7 = a4 - a3;
  v8 = sub_1AF28A4C4(a2, a3, a4 - a3);
  ValueAtIndex = CFArrayGetValueAtIndex(v8, 0);
  if (v7 != 2 || (v11 = CFArrayGetValueAtIndex(v8, 1)) == 0)
  {
    v15 = sub_1AF16AAA0(v6, ValueAtIndex, 0, v9);
    v18 = sub_1AF16A844(v6, ValueAtIndex, v16, v17);
    goto LABEL_14;
  }

  v12 = v11;
  if (CFEqual(v11, @"x"))
  {
    v14 = 0;
LABEL_13:
    v15 = sub_1AF16AAA0(v6, ValueAtIndex, v14, v13);
    v18 = 1;
LABEL_14:
    result = 0;
    if (v15)
    {
      if (v18)
      {
        sub_1AF1DE260(a5, v6);
        *(a5 + 24) = v15;
        *(a5 + 32) = v18;
        result = 1;
        *(a5 + 34) = 0;
      }
    }

    return result;
  }

  if (CFEqual(v12, @"y"))
  {
    v14 = 1;
    goto LABEL_13;
  }

  if (CFEqual(v12, @"z"))
  {
    v14 = 2;
    goto LABEL_13;
  }

  if (CFEqual(v12, @"w"))
  {
    v14 = 3;
    goto LABEL_13;
  }

  v19 = sub_1AF0D5194();
  result = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_1AFDE11CC();
    return 0;
  }

  return result;
}

uint64_t sub_1AF1DCC5C(uint64_t a1, CFTypeID a2, const __CFString *a3, const char *a4, uint64_t a5, int a6)
{
  if (sub_1AF1B630C() == a2)
  {
    v12 = sub_1AF15B294(a1);
LABEL_5:
    sub_1AF1DCD1C(v12, a3, a4, a5, a6);
    return 0;
  }

  if (sub_1AF1B42EC() == a2)
  {
    v12 = a1;
    goto LABEL_5;
  }

  v13 = CFCopyTypeIDDescription(a2);
  v14 = sub_1AF0D5194();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDE1234();
  }

  CFRelease(v13);
  return 0;
}

void sub_1AF1DCD1C(CFTypeRef cf, const __CFString *a2, const char *a3, uint64_t a4, int a5)
{
  if (cf)
  {
    sub_1AF1DE260(a4, cf);
    if (CFStringCompare(a2, @"weights", 0))
    {
      if (a5)
      {
        v10 = sub_1AF0D5194();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDE129C();
        }
      }
    }

    else
    {
      v11 = sub_1AF1B4C94(cf);
      sub_1AF1DE260(a4, v11);
      v12 = sub_1AF17032C(v11);
      *(a4 + 24) = sub_1AF1CAFE0(v12, a3, v13, v14);
      *(a4 + 32) = sub_1AF1CAED8(v12);
    }
  }
}

uint64_t sub_1AF1DCDF4(uint64_t a1, CFTypeID a2, const __CFString *a3, void *a4, uint64_t a5, int a6)
{
  if (sub_1AF1B630C() == a2)
  {
    v12 = sub_1AF15B294(a1);
LABEL_5:
    sub_1AF1DCEB4(v12, a3, a4, a5, a6);
    return 0;
  }

  if (sub_1AF1B42EC() == a2)
  {
    v12 = a1;
    goto LABEL_5;
  }

  v13 = CFCopyTypeIDDescription(a2);
  v14 = sub_1AF0D5194();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDE1234();
  }

  CFRelease(v13);
  return 0;
}