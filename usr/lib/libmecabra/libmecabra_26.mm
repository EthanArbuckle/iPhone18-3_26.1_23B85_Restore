void sub_29932CA20(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_2991EDA10(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29932CA50(uint64_t a1, int a2)
{
  v21 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 104);
  if (v3)
  {
    if (a2)
    {
      v5 = sub_2993652F8(6u);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        Surface = MecabraCandidateGetSurface(*(a1 + 104), v6, v7);
        v14 = *(a1 + 122);
        v15 = 138412802;
        v16 = Surface;
        v17 = 1024;
        v18 = 1;
        v19 = 1024;
        v20 = v14;
        _os_log_debug_impl(&dword_29918C000, v5, OS_LOG_TYPE_DEBUG, "[MecabraLearner::flushAcceptedCandidate] S:%@ performLearning:%d shouldLearn:%d", &v15, 0x18u);
      }

      v8 = *(a1 + 120);
      LOBYTE(a2) = *(a1 + 122);
      v3 = *(a1 + 104);
    }

    else
    {
      v8 = *(a1 + 120);
    }

    v9 = (*(*a1 + 64))(a1, v3, v8 & 1, a2 & 1);
    v10 = *(a1 + 104);
    if (v10)
    {

      *(a1 + 104) = 0;
    }

    *(a1 + 120) = 0;
    *(a1 + 122) = 0;
  }

  else
  {
    v9 = 0;
  }

  v11 = *MEMORY[0x29EDCA608];
  return v9;
}

void sub_29932CB94(uint64_t a1)
{
  v2 = sub_2993652F8(6u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_debug_impl(&dword_29918C000, v2, OS_LOG_TYPE_DEBUG, "[MecabraLearner::resetInternalState]", v5, 2u);
  }

  v3 = *(a1 + 112);
  if (v3)
  {

    *(a1 + 112) = 0;
  }

  v4 = *(a1 + 104);
  if (v4)
  {

    *(a1 + 104) = 0;
  }

  (*(*a1 + 168))(a1);
  CFArrayRemoveAllValues(*(a1 + 56));
  *(a1 + 120) = 0;
  *(a1 + 122) = 0;
}

BOOL sub_29932CC58(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  *&v48[5] = *MEMORY[0x29EDCA608];
  if (!a4 || (v8 = sub_2993652F8(6u), !os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG)))
  {
    if (a2)
    {
      goto LABEL_4;
    }

LABEL_45:
    sub_29932CB94(a1);
    goto LABEL_46;
  }

  if (a2)
  {
    Surface = MecabraCandidateGetSurface(a2, a2, a3);
  }

  else
  {
    Surface = @"NULL";
  }

  *buf = 138412802;
  *&buf[4] = Surface;
  v47 = 1024;
  *v48 = a3;
  v48[2] = 1024;
  *&v48[3] = 1;
  _os_log_debug_impl(&dword_29918C000, v8, OS_LOG_TYPE_DEBUG, "[MecabraLearner::actuallyAcceptCandidate] S:[%@] isPartial:%d performLearning:%d", buf, 0x18u);
  if (!a2)
  {
    goto LABEL_45;
  }

LABEL_4:
  v11 = sub_2992896C0(a2, a2, a3);
  if (*(a1 + 96) && a4 && MecabraCandidateIsEmojiCandidate(a2, v9, v10))
  {
    v12 = (*(*v11 + 59))(v11);
    v13 = (*(*v11 + 3))(v11);
    v14 = sub_2993652F8(6u);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      *&buf[4] = v12;
      v47 = 2112;
      *v48 = v13;
      _os_log_debug_impl(&dword_29918C000, v14, OS_LOG_TYPE_DEBUG, "[MecabraLearner::actuallyAcceptCandidate] key: %@, emoji %@", buf, 0x16u);
      if (!v12)
      {
        goto LABEL_11;
      }
    }

    else if (!v12)
    {
      goto LABEL_11;
    }

    if (v13)
    {
      v15 = (*(*a1 + 152))(a1);
      sub_2992F2FF4(v15, v12, v13);
    }
  }

LABEL_11:
  if (*(a1 + 96) == 1)
  {
    if (sub_2992878A0(a2, v9, v10))
    {
      if (MecabraCandidateGetAnalysisString(a2, v16, v17))
      {
        if (MecabraCandidateGetSurface(a2, v18, v19))
        {
          v20 = CFArrayGetCount(*(a1 + 56)) > 0;
          if ((*(*v11 + 31))(v11, a3, v20))
          {
            if (a4)
            {
              sub_29932D21C(a1, v11, a3);
              if (a3)
              {
                CFArrayAppendValue(*(a1 + 56), a2);
                v21 = sub_2993652F8(6u);
                if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
                {
                  v24 = MecabraCandidateGetSurface(a2, v22, v23);
                  Count = CFArrayGetCount(*(a1 + 56));
                  *buf = 138412546;
                  *&buf[4] = v24;
                  v47 = 2048;
                  *v48 = Count;
                  _os_log_debug_impl(&dword_29918C000, v21, OS_LOG_TYPE_DEBUG, "[MecabraLearner::actuallyAcceptCandidate] adding %@ to partial candidates (total count: %lu)", buf, 0x16u);
                }

                goto LABEL_27;
              }

LABEL_23:
              if (CFArrayGetCount(*(a1 + 56)) >= 1)
              {
                CFArrayAppendValue(*(a1 + 56), a2);
                if (a4)
                {
                  MatchType = MecabraCandidateGetMatchType(a2, v27, v28);
                  (*(*a1 + 240))(a1, MatchType);
                }

                CFArrayRemoveAllValues(*(a1 + 56));
              }

              goto LABEL_27;
            }

            if ((a3 & 1) == 0)
            {
              goto LABEL_23;
            }
          }
        }
      }
    }
  }

LABEL_27:
  v30 = (*(*a1 + 152))(a1);
  if (sub_299277300(v30))
  {
    v31 = 0;
  }

  else
  {
    v31 = a4 == 0;
  }

  if (!v31)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    *buf = Mutable;
    v33 = (*(*a1 + 152))(a1);
    v34 = sub_299277300(v33);
    v35 = sub_2992774EC(v34);
    v36 = CFStringCreateWithCString(0, v35, 0x8000100u);
    v37 = (*(*a1 + 152))(a1);
    v38 = (*(*v11 + 52))(v11);
    v39 = sub_299277514(v37, v38);
    v40 = CFStringCreateWithCString(0, v39, 0x8000100u);
    v41 = *(a1 + 72);
    v42 = *(a1 + 80);
    while (v41 != v42)
    {
      (*(**v41 + 16))(*v41, Mutable, v11, a3);
      ++v41;
    }

    sub_2992BBD18(*(a1 + 64), v36, v40, Mutable);
    if (v40)
    {
      CFRelease(v40);
    }

    if (v36)
    {
      CFRelease(v36);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  v43 = *(a1 + 112);
  if (v43)
  {
  }

  *(a1 + 112) = a2;
LABEL_46:
  result = a2 != 0;
  v45 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29932D1B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14)
{
  if (a2)
  {
    sub_2991EDA10(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29932D21C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x29EDCA608];
  v6 = sub_2993652F8(6u);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v9 = (*(*a2 + 56))(a2);
    v10 = (*(*a2 + 232))(a2);
    v11 = (*(*a2 + 24))(a2);
    v12 = 138413058;
    v13 = v9;
    v14 = 2112;
    v15 = v10;
    v16 = 2112;
    v17 = v11;
    v18 = 1024;
    v19 = a3;
    _os_log_debug_impl(&dword_29918C000, v6, OS_LOG_TYPE_DEBUG, "[MecabraLearner::registerCandidate] AS:%@ DR:%@ S:%@ isPartial:%d", &v12, 0x26u);
  }

  result = (*(*a2 + 48))(a2);
  if (result)
  {
    result = (*(*a1 + 200))(a1, a2, a3);
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_29932D3E4(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2)
  {

    *(a1 + 104) = 0;
  }

  v3 = *(a1 + 112);
  if (v3)
  {

    *(a1 + 112) = 0;
  }

  Count = CFArrayGetCount(*(a1 + 56));
  if (Count >= 1)
  {
    CFArrayRemoveValueAtIndex(*(a1 + 56), Count - 1);
  }

  *(a1 + 120) = CFArrayGetCount(*(a1 + 56)) > 0;
  *(a1 + 122) = 0;
  (*(*a1 + 168))(a1);
  return 1;
}

uint64_t sub_29932D4B8(uint64_t a1)
{
  sub_29932CB94(a1);
  result = *(a1 + 8);
  if (result)
  {

    return sub_2992C8D94(result);
  }

  return result;
}

void sub_29932D500(uint64_t a1)
{
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterPostNotification(LocalCenter, qword_2A145F578, 0, 0, 0);
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 0x40000000;
  v5[2] = sub_2993BCECC;
  v5[3] = &unk_29EF21F78;
  v5[4] = a1;
  sub_2993BC64C("FacemarkLearning", v5, 0, &v3);
  sub_2993BDD24(v3);
  if (v4)
  {
    sub_2991A893C(v4);
  }
}

void sub_29932D5B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_2991A893C(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_29932D5D0(uint64_t a1, uint64_t a2)
{
  v32 = *MEMORY[0x29EDCA608];
  if (!a2)
  {
    v23 = sub_2993652F8(6u);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_16;
    }

    *buf = 0;
    v24 = "[MecabraLearner::sendCandidateNotification] Invalid candidate: candidate shouldn't be null";
LABEL_18:
    _os_log_debug_impl(&dword_29918C000, v23, OS_LOG_TYPE_DEBUG, v24, buf, 2u);
    goto LABEL_16;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!Mutable)
  {
    v23 = sub_2993652F8(6u);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_16;
    }

    *buf = 0;
    v24 = "[MecabraLearner::sendCandidateNotification] Failed to create CFMutableDictionaryRef";
    goto LABEL_18;
  }

  v4 = Mutable;
  v5 = kMecabraLearningValidatorCandidateAnalysisStringKey[0];
  v6 = (*(*a2 + 56))(a2);
  CFDictionaryAddValue(v4, v5, v6);
  v7 = kMecabraLearningValidatorCandidateConvertedAnalysisStringKey[0];
  v8 = (*(*a2 + 224))(a2);
  CFDictionaryAddValue(v4, v7, v8);
  v9 = kMecabraLearningValidatorCandidateSurfaceKey[0];
  v10 = (*(*a2 + 24))(a2);
  CFDictionaryAddValue(v4, v9, v10);
  v11 = kMecabraLearningValidatorCandidateDictionaryReadingKey[0];
  v12 = (*(*a2 + 232))(a2);
  CFDictionaryAddValue(v4, v11, v12);
  v13 = kMecabraLearningValidatorCandidateWordBoundaryKey[0];
  v14 = (*(*a2 + 304))(a2);
  v15 = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
  v16 = *v14;
  if (v14[1] - *v14 != 40)
  {
    v17 = 0;
    v18 = 0;
    v19 = 24;
    do
    {
      v18 += *(v16 + v19);
      valuePtr = v18;
      v20 = CFNumberCreate(0, kCFNumberShortType, &valuePtr);
      *buf = v20;
      CFArrayAppendValue(v15, v20);
      if (v20)
      {
        CFRelease(v20);
      }

      ++v17;
      v16 = *v14;
      v19 += 40;
    }

    while (v17 < 0xCCCCCCCCCCCCCCCDLL * ((v14[1] - *v14) >> 3) - 1);
  }

  CFDictionaryAddValue(v4, v13, v15);
  if (v15)
  {
    CFRelease(v15);
  }

  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterPostNotification(LocalCenter, kMecabraLearningValidatorNotificationName, 0, v4, 1u);
  v22 = sub_2993652F8(6u);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    v26 = (*(*a2 + 232))(a2);
    v27 = (*(*a2 + 24))(a2);
    *buf = 138412546;
    *&buf[4] = v26;
    v30 = 2112;
    v31 = v27;
    _os_log_debug_impl(&dword_29918C000, v22, OS_LOG_TYPE_DEBUG, "[MecabraLearner::sendCandidateNotification] sent notification: reading %@ surface: %@", buf, 0x16u);
  }

  CFRelease(v4);
LABEL_16:
  v25 = *MEMORY[0x29EDCA608];
}

void sub_29932D9E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_299274AE8(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_29932DAEC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F71D70;
  a2[1] = v2;
  return result;
}

uint64_t sub_29932DB18(uint64_t a1)
{
  v1 = (*(**(a1 + 8) + 152))(*(a1 + 8));

  return sub_299277300(v1);
}

uint64_t sub_29932DB64(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F71DE0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29932DC20(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F71E00;
  a2[1] = v2;
  return result;
}

uint64_t sub_29932DC80(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F71E70))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29932DD3C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F71E90;
  a2[1] = v2;
  return result;
}

uint64_t sub_29932DD98(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F71EF0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void **sub_29932DEE0(void ***a1, uint64_t a2, const char *a3)
{
  if (!a2 || (result = sub_299225D3C(a2, kMecabraContextOptionPrivateMode), result != *MEMORY[0x29EDB8F00]))
  {
    v6 = *a1;

    return sub_2992D4884(v6, a3);
  }

  return result;
}

BOOL sub_29932DF58(void ***a1, const char *a2, const __CFString *a3)
{
  if (a2 && sub_299225D3C(a2, kMecabraContextOptionPrivateMode) == *MEMORY[0x29EDB8F00] || (objc_msgSend_containsObject_(**a1, a2, a3) & 1) == 0)
  {
    Length = CFStringGetLength(a3);
    theString = a3;
    v30 = 0;
    v31 = Length;
    CharactersPtr = CFStringGetCharactersPtr(a3);
    CStringPtr = 0;
    v28 = CharactersPtr;
    if (!CharactersPtr)
    {
      CStringPtr = CFStringGetCStringPtr(a3, 0x600u);
    }

    v32 = 0;
    v33 = 0;
    v29 = CStringPtr;
    if (Length >= 1)
    {
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 64;
      while (1)
      {
        if (v11 >= 4)
        {
          v13 = 4;
        }

        else
        {
          v13 = v11;
        }

        v14 = v31;
        if (v31 <= v11)
        {
          v16 = 0;
        }

        else
        {
          if (v28)
          {
            v15 = &v28[v30];
          }

          else
          {
            if (v29)
            {
              v16 = v29[v30 + v11];
              goto LABEL_16;
            }

            if (v33 <= v11 || v9 > v11)
            {
              v21 = v13 + v8;
              v22 = v12 - v13;
              v23 = v11 - v13;
              v24 = v23 + 64;
              if (v23 + 64 >= v31)
              {
                v24 = v31;
              }

              v32 = v23;
              v33 = v24;
              if (v31 >= v22)
              {
                v14 = v22;
              }

              v34.location = v23 + v30;
              v34.length = v14 + v21;
              CFStringGetCharacters(theString, v34, v26);
              v9 = v32;
            }

            v15 = &v26[-v9];
          }

          v16 = v15[v11];
        }

LABEL_16:
        v17 = ~v16;
        v18 = v16 >> 5;
        v19 = 1 << v17;
        if ((v19 & dword_299418058[v18]) != 0 || (dword_29941A058[v18] & v19) != 0 || (dword_29941C058[v18] & v19) != 0)
        {
          v10 = ++v11 >= Length;
          --v8;
          ++v12;
          if (Length != v11)
          {
            continue;
          }
        }

        return v10;
      }
    }
  }

  return 1;
}

void sub_29932E878(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29932E9B0(va);
  v5 = v2[20];
  if (v5)
  {
    sub_2991A893C(v5);
  }

  sub_299219AB4(v3, 0);
  sub_29932C230(v2);
  _Unwind_Resume(a1);
}

uint64_t *sub_29932E960(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_299234FF0(v2 + 8);
    MEMORY[0x29C29BFB0](v2, 0x10A1C400AA0B987);
  }

  return a1;
}

uint64_t *sub_29932E9B0(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_2993326CC(v2 + 8);
    MEMORY[0x29C29BFB0](v2, 0x10A1C400AA0B987);
  }

  return a1;
}

void *sub_29932EA00(uint64_t a1)
{
  *a1 = &unk_2A1F71F10;
  v2 = *(a1 + 144);
  if (v2)
  {
    v3 = sub_2992C8794(v2);
    MEMORY[0x29C29BFB0](v3, 0x10F2C40B10B6BF7);
  }

  v4 = *(a1 + 160);
  if (v4)
  {
    sub_2991A893C(v4);
  }

  sub_299219AB4((a1 + 128), 0);

  return sub_29932C230(a1);
}

BOOL sub_29932EAA0(uint64_t a1)
{
  v28 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  if (v2 && !*(a1 + 8))
  {
    v6 = CFURLGetString(v2);
    v7 = sub_2993652F8(0xDu);
    v8 = os_signpost_id_make_with_pointer(v7, a1);
    v9 = sub_2993652F8(0xDu);
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v10 = v9;
      if (os_signpost_enabled(v9))
      {
        v11 = (*(*a1 + 152))(a1);
        v12 = @"N/A";
        if (v6)
        {
          v12 = v6;
        }

        v25[0] = 67109378;
        v25[1] = v11;
        v26 = 2112;
        v27 = v12;
        _os_signpost_emit_with_name_impl(&dword_29918C000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "SeaweedChineseLearner", "Begin init for learner type [%d] at [%@]", v25, 0x12u);
      }
    }

    v3 = sub_29932C330(a1);
    if (v3)
    {
      if (*(a1 + 8))
      {
        sub_299366744(*(a1 + 136));
        v13 = *(a1 + 8);
        if (v13)
        {
          sub_2993669B8(*(a1 + 136), v13);
        }
      }
    }

    if (*(a1 + 40))
    {
      v14 = (*(*a1 + 160))(a1);
      if (v14)
      {
        v15 = v14;
        Count = CFArrayGetCount(v14);
        if (Count >= 1)
        {
          v17 = Count;
          for (i = 0; i != v17; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v15, i);
            sub_2992EED88(ValueAtIndex, v20, v21);
          }
        }

        CFRelease(v15);
      }
    }

    v22 = (*(*a1 + 152))(a1);
    sub_2992F2FA8(v22, 1);
    v23 = sub_2993652F8(0xDu);
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v24 = v23;
      if (os_signpost_enabled(v23))
      {
        LOWORD(v25[0]) = 0;
        _os_signpost_emit_with_name_impl(&dword_29918C000, v24, OS_SIGNPOST_INTERVAL_END, v8, "SeaweedChineseLearner", &unk_29945DB9F, v25, 2u);
      }
    }
  }

  else
  {
    v3 = 1;
  }

  v4 = *MEMORY[0x29EDCA608];
  return v3;
}

const void **sub_29932ED14(uint64_t a1)
{
  sub_29932C5A0((a1 + 8), 0);
  sub_29921EB70((a1 + 16));
  sub_299366B28(*(a1 + 136));
  v2 = (*(*a1 + 152))(a1);

  return sub_2992F2FA8(v2, 0);
}

void *sub_29932ED8C(void *a1)
{
  if (!a1[1] && a1[5])
  {
    (*(*a1 + 16))(a1);
  }

  v2 = a1[17];

  return sub_299365BCC(v2);
}

void *sub_29932EDF8(uint64_t a1)
{
  result = *(a1 + 136);
  if (result[42])
  {
    v2 = result[41];
    if (v2)
    {
      *(v2 + 24) = *(v2 + 16);
      return sub_299366C24(result);
    }
  }

  return result;
}

uint64_t sub_29932EE1C(uint64_t a1, __CFString *theString, __CFString *a3, __CFString *a4, char a5)
{
  if (*(a1 + 96) != 1)
  {
    return 0;
  }

  if (!theString || (a5 & 1) != 0)
  {
    if (!theString)
    {
      return 0;
    }

LABEL_10:
    v13 = *MEMORY[0x29EDB8ED8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 3, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    CFDictionarySetValue(Mutable, off_2A145F3A8, theString);
    v15 = (*(*a1 + 152))(a1);
    if (a3 | a4)
    {
      v16 = 0;
      v17 = 0;
      if (a3)
      {
LABEL_12:
        if (v15 == 5)
        {
          CFDictionarySetValue(Mutable, off_2A145F350, a3);
          if (!a4)
          {
            goto LABEL_31;
          }

LABEL_28:
          v30 = &off_2A145F358;
LABEL_30:
          CFDictionarySetValue(Mutable, *v30, a4);
          goto LABEL_31;
        }

        CFDictionarySetValue(Mutable, off_2A145F360, a3);
        if (!a4)
        {
          goto LABEL_31;
        }

LABEL_29:
        v30 = &off_2A145F368;
        goto LABEL_30;
      }
    }

    else
    {
      v18 = (*(*a1 + 152))(a1);
      v19 = sub_299277300(v18);
      v20 = sub_2993F7224(theString, v19);
      if (!v20)
      {
        v12 = sub_299366D5C(*(a1 + 136), Mutable);
LABEL_35:
        CFRelease(Mutable);
        return v12;
      }

      v21 = v20;
      v22 = sub_299279A74(v20, v15 == 5);
      if (v22)
      {
        v23 = v22;
        cf = v21;
        v17 = CFStringCreateMutable(v13, 0);
        v16 = CFStringCreateMutable(v13, 0);
        Count = CFArrayGetCount(v23);
        if (Count >= 1)
        {
          v25 = Count;
          for (i = 0; i != v25; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v23, i);
            CFStringAppend(v17, ValueAtIndex);
            Length = CFStringGetLength(ValueAtIndex);
            v29 = CFStringCreateWithFormat(v13, 0, @"%ld", Length);
            CFStringAppend(v16, v29);
            CFRelease(v29);
          }
        }

        CFRelease(v23);
        v21 = cf;
      }

      else
      {
        v16 = 0;
        v17 = 0;
      }

      CFRelease(v21);
      a4 = v16;
      a3 = v17;
      if (v17)
      {
        goto LABEL_12;
      }
    }

    if (!a4)
    {
LABEL_31:
      v12 = sub_299366D5C(*(a1 + 136), Mutable);
      if (v17)
      {
        CFRelease(v17);
      }

      if (v16)
      {
        CFRelease(v16);
      }

      goto LABEL_35;
    }

    if (v15 == 5)
    {
      goto LABEL_28;
    }

    goto LABEL_29;
  }

  v9 = CFStringGetLength(theString);
  v12 = 0;
  if (v9 && v9 <= 15)
  {
    if ((sub_2992EF0B8(theString, v10, v11) & 1) == 0 && (sub_2992364F0(theString) & 1) == 0)
    {
      return 0;
    }

    goto LABEL_10;
  }

  return v12;
}

void sub_29932F128(void *a1, uint64_t a2, const __CFString **a3)
{
  v9[0] = 0;
  v9[1] = 0;
  v8 = v9;
  sub_29932F1F8(&v8, a3[1], a3[2], a3[4], a3[5], 1);
  v7 = 0;
  v5 = sub_2992C888C(a2, &v8, &v7);
  if (a1[18] != a2)
  {
    if (v5 == 1)
    {
      sub_299366E28(a1[17], &v8, v7);
    }

    else if (v5 == 2)
    {
      v6 = a1[1];
      if (v6)
      {
        sub_2993669B8(a1[17], v6);
      }
    }
  }

  sub_299227884(&v8, v9[0]);
}

void sub_29932F1F8(int a1, const __CFString *a2, const __CFString *a3, const __CFString *a4, const __CFString *a5, int a6)
{
  memset(&__p, 0, sizeof(__p));
  if (a2 || a6)
  {
    sub_299248D7C(&__p, off_2A145F3B0[0]);
    sub_2992B7C70(a1, a2);
  }

  if (a3)
  {
    sub_299248D7C(&__p, off_2A145F3B8);
    sub_2992B7C70(a1, a3);
  }

  if (a4)
  {
    sub_299248D7C(&__p, off_2A145F348);
    sub_2992B7C70(a1, a4);
  }

  if (a5)
  {
    sub_299248D7C(&__p, off_2A145F370[0]);
    sub_2992B7C70(a1, a5);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_29932F35C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29932F378(CFArrayRef *a1, unsigned int a2)
{
  v54[16] = *MEMORY[0x29EDCA608];
  if (CFArrayGetCount(a1[7]) < 2)
  {
LABEL_32:
    v46 = *MEMORY[0x29EDCA608];
    return;
  }

  v48 = a2;
  v4 = objc_alloc_init(MEMORY[0x29EDBA050]);
  v5 = objc_alloc_init(MEMORY[0x29EDBA050]);
  v49 = objc_alloc_init(MEMORY[0x29EDBA050]);
  v6 = objc_alloc_init(MEMORY[0x29EDBA050]);
  Count = CFArrayGetCount(a1[7]);
  v8 = a1[7];
  if (Count < 1)
  {
LABEL_14:
    Mutable = CFStringCreateMutable(0, 0);
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v33, &v50, v54, 16);
    if (v36)
    {
      v37 = *v51;
      while (2)
      {
        for (i = 0; i != v36; ++i)
        {
          if (*v51 != v37)
          {
            objc_enumerationMutation(v8);
          }

          v39 = sub_2992896C0(*(*(&v50 + 1) + 8 * i), v34, v35);
          v40 = (*(*v39 + 55))(v39);
          v41 = v40;
          if (v40)
          {
            if (!CFStringGetLength(v40))
            {
              v56.length = CFStringGetLength(Mutable);
              v56.location = 0;
              CFStringDelete(Mutable, v56);
              goto LABEL_26;
            }

            CFStringAppend(Mutable, v41);
            CFRelease(v41);
          }
        }

        v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v34, &v50, v54, 16);
        if (v36)
        {
          continue;
        }

        break;
      }
    }

LABEL_26:
    if (objc_msgSend_length(v4, v34, v35) && objc_msgSend_length(v5, v42, v43))
    {
      v44 = CFArrayGetCount(a1[7]);
      sub_2993320FC(v54, v5, v4, Mutable, v49, v48, v44, 32);
      (*(*a1 + 27))(a1, v54);
      (*(*a1 + 34))(a1, v4, (v48 >> 14) & 1);
      Copy = CFStringCreateCopy(*MEMORY[0x29EDB8ED8], v6);
      sub_299219AB4(a1 + 16, Copy);
      sub_2993322CC(v54);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    goto LABEL_32;
  }

  v9 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v8, v9);
    v13 = objc_msgSend_rawCandidate(ValueAtIndex, v11, v12);
    v14 = (*(*v13 + 32))(v13);
    DictionaryReading = MecabraCandidateGetDictionaryReading(ValueAtIndex, v15, v16);
    if (!DictionaryReading)
    {
      if ((*(*a1 + 19))(a1) == 5)
      {
        DictionaryReading = MecabraCandidateGetAnalysisString(ValueAtIndex, v17, v18);
      }

      else
      {
        DictionaryReading = 0;
      }
    }

    if (!MecabraCandidateGetSurface(ValueAtIndex, v17, v18) || !DictionaryReading)
    {
      break;
    }

    objc_msgSend_appendString_(v4, v20, v14);
    objc_msgSend_appendString_(v5, v21, DictionaryReading);
    v24 = *sub_2992896C0(ValueAtIndex, v22, v23);
    v25 = (*(v24 + 56))();
    objc_msgSend_appendString_(v49, v26, v25);
    v29 = sub_2992896C0(ValueAtIndex, v27, v28);
    if ((*(*v29 + 27))(v29))
    {
      objc_msgSend_appendString_(v6, v30, @"1");
    }

    else
    {
      objc_msgSend_appendString_(v6, v30, v25);
    }

    CFRelease(v25);
    ++v9;
    v31 = CFArrayGetCount(a1[7]);
    v8 = a1[7];
    if (v31 <= v9)
    {
      goto LABEL_14;
    }
  }

  v47 = *MEMORY[0x29EDCA608];
}

void sub_29932F810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_2993322CC(va);
  _Unwind_Resume(a1);
}

CFIndex sub_29932F830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(*a2 + 416))(a2);
  if ((v6 & 0x4800) == 0x800 || (result = (*(*a2 + 232))(a2), v8 = result, (v6 & 0x4000) == 0) && !result)
  {
    result = (*(*a2 + 56))(a2);
    v8 = result;
  }

  if (v8)
  {
    result = CFStringGetLength(v8);
    if (result >= 1)
    {
      (*(*a2 + 496))(a2, v8);
      result = (*(*a1 + 192))(a1, a3);
      if (result)
      {
        v9 = (*(*a2 + 440))(a2);
        v10 = (*(*a2 + 448))(a2);
        v11 = (*(*a2 + 32))(a2);
        if (v9)
        {
          v12 = v9;
        }

        else
        {
          v12 = &stru_2A1F7E6E8;
        }

        v13 = (*(*a2 + 48))(a2);
        v14 = (*(*a2 + 104))(a2);
        sub_2993320FC(v15, v8, v11, v12, v10, v6, v13, v14);
        (*(*a1 + 216))(a1, v15);
        if (v9)
        {
          CFRelease(v9);
        }

        if (v10)
        {
          CFRelease(v10);
        }

        return sub_2993322CC(v15);
      }
    }
  }

  return result;
}

void sub_29932FB04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2993322CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29932FB4C(void *a1, uint64_t a2)
{
  if ((*(a1 + 121) & 1) != 0 || *(a2 + 24) != 1)
  {
    result = (*(*a1 + 280))(a1, a2);
    if (!result)
    {
      return result;
    }

    v5 = *(a2 + 48);
    if ((v5 & 0x800) != 0)
    {
      if (a1[18])
      {
        sub_2993320FC(v7, *(a2 + 8), *(a2 + 16), &stru_2A1F7E6E8, &stru_2A1F7E6E8, v5, *(a2 + 24), 256);
        (*(*a1 + 208))(a1, a1[18], v7);
        sub_2993322CC(v7);
        return 1;
      }
    }

    else
    {
      v6 = a1[1];
      if (v6)
      {
        (*(*a1 + 208))(a1, v6, a2);
        return 1;
      }
    }
  }

  return 0;
}

void sub_29932FC70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2993322CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29932FC84(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v33 = *MEMORY[0x29EDCA608];
  if (!a2 || (v8 = objc_msgSend_rawCandidate(a2, a2, a3), (*(*v8 + 72))(v8) != 7))
  {
    if (MecabraCandidateIsEmojiCandidate(a2, a2, a3))
    {
      v17 = objc_msgSend_rawCandidate(a2, v15, v16);
      if (v17)
      {
        if (((*(*v17 + 104))(v17) & 0x200) != 0)
        {
          v20 = objc_msgSend_rawCandidate(a2, v18, v19);
          if (v20)
          {
            v21 = **v20;
            v22 = __dynamic_cast(v20, &unk_2A1F64300, &unk_2A1F75480, 0);
            if (v22)
            {
              v23 = v22;
              v24 = (*(*v22 + 192))(v22);
              v25 = (*(*v23 + 184))(v23);
              v26 = sub_2993652F8(6u);
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
              {
                v29 = 138412546;
                v30 = v24;
                v31 = 2112;
                v32 = v25;
                _os_log_debug_impl(&dword_29918C000, v26, OS_LOG_TYPE_DEBUG, "[MecabraLearner::engineSpecificCandidateRegistration] key: %@, emoji %@", &v29, 0x16u);
              }

              v27 = (*(*a1 + 152))(a1);
              sub_2992F2FF4(v27, v24, v25);
            }
          }
        }
      }
    }

    sub_299219AB4((a1 + 128), 0);
    result = sub_29932C784(a1, a2, a3, a4);
    goto LABEL_16;
  }

  sub_29932CA50(a1, a4);
  if (*(a1 + 96) != 1)
  {
    result = 0;
LABEL_16:
    v28 = *MEMORY[0x29EDCA608];
    return result;
  }

  v11 = *(a1 + 152);
  v12 = objc_msgSend_surface(a2, v9, v10);
  v13 = *MEMORY[0x29EDCA608];

  return sub_2993BD670(v11, v12, 0);
}

uint64_t sub_29932FF48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  memset(v9, 0, sizeof(v9));
  memset(v8, 0, sizeof(v8));
  v5 = sub_2992C8E20(a2, a3, v9, v8);
  if (*(a1 + 144) != a2)
  {
    v5 = sub_2993668BC(*(a1 + 136), v8, v9);
  }

  v6 = v5;
  v10 = v8;
  sub_2992B9028(&v10);
  return v6;
}

void sub_29932FFDC(_Unwind_Exception *a1)
{
  *(v2 - 40) = v1;
  sub_2992B9028((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t sub_29932FFF4(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a2 || MecabraCandidateIsEmojiCandidate(a2, a2, a3))
  {
    return 0;
  }

  Kind = MecabraCandidateGetKind(a2, v5, v6);
  v11 = 8;
  if (Kind == 84)
  {
    v11 = 144;
  }

  v12 = *(a1 + v11);
  v23[0] = 0;
  v23[1] = 0;
  v22 = v23;
  v13 = sub_2992896C0(a2, v9, v10);
  if (v13)
  {
    v16 = (*(*v13 + 55))(v13);
  }

  else
  {
    v16 = 0;
  }

  DictionaryReading = MecabraCandidateGetDictionaryReading(a2, v14, v15);
  Surface = MecabraCandidateGetSurface(a2, v18, v19);
  sub_29932F1F8(&v22, DictionaryReading, Surface, v16, 0, 0);
  if (v16)
  {
    CFRelease(v16);
  }

  v7 = sub_29932FF48(a1, v12, &v22);
  sub_299227884(&v22, v23[0]);
  return v7;
}

uint64_t sub_299330134(uint64_t a1, const __CFString *a2, const __CFString *a3)
{
  v7[0] = 0;
  v7[1] = 0;
  v6 = v7;
  sub_29932F1F8(&v6, a2, a3, 0, 0, 0);
  v4 = sub_29932FF48(a1, *(a1 + 8), &v6);
  sub_299227884(&v6, v7[0]);
  return v4;
}

void sub_2993301BC(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_2A1461048, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1461048))
  {
    sub_2991C6CA8(byte_2A1461060, off_2A145F3B0[0]);
    dword_2A1461078 = 0;
    word_2A146107C = 1;
    byte_2A146107E = 0;
    sub_2991C6CA8(byte_2A1461080, off_2A145F3B8);
    *(&dword_2A1461098 + 3) = 0;
    dword_2A1461098 = 0;
    sub_2991C6CA8(byte_2A14610A0, off_2A145F348);
    *(&dword_2A14610B8 + 3) = 0;
    dword_2A14610B8 = 0;
    sub_2991C6CA8(byte_2A14610C0, off_2A145F370[0]);
    *(&dword_2A14610D8 + 3) = 0;
    dword_2A14610D8 = 0;
    sub_2991C6CA8(byte_2A14610E0, off_2A145F378[0]);
    dword_2A14610F8 = 0;
    word_2A14610FC = 256;
    byte_2A14610FE = 0;
    sub_2991C6CA8(byte_2A1461100, off_2A145F380[0]);
    dword_2A1461118 = 1;
    word_2A146111C = 256;
    byte_2A146111E = 0;
    __cxa_atexit(sub_29933285C, 0, &dword_29918C000);
    __cxa_guard_release(&qword_2A1461048);
  }

  v3 = 0uLL;
  v4 = 0;
  sub_299332338(&v3, byte_2A1461060, &unk_2A1461120, 6uLL);
  sub_29921EF84(a2);
  *a2 = v3;
  *(a2 + 16) = v4;
  v4 = 0;
  v3 = 0uLL;
  v5 = &v3;
  sub_29921EB1C(&v5);
}

uint64_t sub_2993303E0(uint64_t a1)
{
  result = sub_29932D4B8(a1);
  v3 = *(a1 + 136);
  v4 = v3[39];
  if (v4)
  {
    *(v4 + 24) = *(v4 + 16);
  }

  v5 = v3[40];
  if (v5)
  {
    *(v5 + 24) = *(v5 + 16);
  }

  v6 = v3[41];
  if (v6)
  {
    *(v6 + 24) = *(v6 + 16);
  }

  return result;
}

uint64_t sub_299330438(uint64_t a1, void *a2, uint64_t a3)
{
  result = sub_2992878A0(a2, a2, a3);
  if (result)
  {
    if (a2 && (v7 = objc_msgSend_rawCandidate(a2, v5, v6), (*(*v7 + 72))(v7) == 7))
    {
      return 0;
    }

    else
    {
      v8 = objc_msgSend_rawCandidate(a2, v5, v6);
      return ((*(*v8 + 104))(v8) & 0x100) == 0;
    }
  }

  return result;
}

uint64_t sub_2993304D8(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = sub_2992C84D8(v2);
  }

  else
  {
    v3 = 1;
  }

  return v3 & sub_2993BDA28(*(a1 + 152));
}

BOOL sub_29933051C(void *a1)
{
  (*(*a1 + 88))(a1);
  v2 = a1[19];

  return sub_2993BD960(v2);
}

BOOL sub_299330574(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 16);
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  return !v4 && (CFStringGetLength(v2) - 65) >= 0xFFFFFFFFFFFFFFC0 && (CFStringGetLength(v3) - 1) < 0x10;
}

__CFString *sub_2993305D4(int a1, char **lpsrc)
{
  if (lpsrc && (v2 = **lpsrc, (v3 = __dynamic_cast(lpsrc, &unk_2A1F72C30, &unk_2A1F752F0, 0)) != 0))
  {
    v4 = (*(*v3 + 560))(v3);
    v5 = *v4;
    v6 = v4[1];
    v7 = off_29EF10520;
    if (*v4 != v6)
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = *v5++;
        v9 |= v10 != 2;
        v8 |= v10 == 2;
      }

      while (v5 != v6);
      v11 = off_29EF10528;
      if (v9)
      {
        v11 = off_29EF10530;
      }

      if (v8)
      {
        v7 = v11;
      }
    }
  }

  else
  {
    v7 = off_29EF10520;
  }

  return *v7;
}

void sub_29933089C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29932E960(va);
  sub_29932EA00(v2);
  _Unwind_Resume(a1);
}

BOOL sub_2993308E8(uint64_t a1, uint64_t a2)
{
  result = sub_299330574(a1, a2);
  if (result)
  {
    result = 1;
    if (*(a2 + 52) == 1)
    {
      v5 = *(a2 + 8);
      v6 = *(a2 + 16);
      if (CFStringCompare(v5, v6, 0) == kCFCompareEqualTo)
      {
        if (CFStringGetLength(v6) == 1)
        {
          CharacterAtIndex = CFStringGetCharacterAtIndex(v6, 0);
          if ((CharacterAtIndex - 105) <= 0xD && ((1 << (CharacterAtIndex - 105)) & 0x3001) != 0)
          {
            return 0;
          }
        }

        v9[0] = (*(*a1 + 152))(a1);
        v9[1] = 4;
        if (sub_2993C3E58(v9, v5))
        {
          return 0;
        }
      }
    }
  }

  return result;
}

__CFArray *sub_2993309D0()
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
  CFArrayAppendValue(Mutable, @"DynamicPhraseLexicon_zh_Hans.db");
  CFArrayAppendValue(Mutable, @"PhraseLearning_zh_Hans.db");
  CFArrayAppendValue(Mutable, @"PhraseLearning_zh_Hans.dictionary");
  CFArrayAppendValue(Mutable, @"StructuralPinyinLearning_zh_Hans.db");
  CFArrayAppendValue(Mutable, @"StructuralPinyinLearning_zh_Hans.dictionary");
  CFArrayAppendValue(Mutable, @"facemark.dat");
  return Mutable;
}

__CFArray *sub_299330A84(uint64_t a1, const __CFURL *a2)
{
  if (!a2)
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
  v4 = sub_2992772AC(a2, @"PhraseLearning_zh_Hans.db");
  if (v4)
  {
    v5 = v4;
    CFArrayAppendValue(Mutable, v4);
    CFRelease(v5);
  }

  v6 = sub_2992772AC(a2, @"PhraseLearning_zh_Hans.dictionary");
  if (v6)
  {
    v7 = v6;
    CFArrayAppendValue(Mutable, v6);
    CFRelease(v7);
  }

  v8 = sub_2992772AC(a2, @"StructuralPinyinLearning_zh_Hans.dictionary");
  if (v8)
  {
    v9 = v8;
    CFArrayAppendValue(Mutable, v8);
    CFRelease(v9);
  }

  return Mutable;
}

uint64_t sub_299330B58(unsigned __int8 *a1, uint64_t a2)
{
  v2 = sub_29932C6D4(a1, a2);
  v3 = sub_29925A68C();
  v4 = *(v3 + 48);
  if (v4)
  {
    CFRelease(v4);
    *(v3 + 48) = 0;
  }

  return v2;
}

void sub_299330B98(uint64_t a1, CFStringRef theString, int a3)
{
  v92[16] = *MEMORY[0x29EDCA608];
  if (theString)
  {
    Length = CFStringGetLength(theString);
  }

  else
  {
    Length = 0;
  }

  v7 = *(a1 + 168);
  v8 = *(*(v7 + 88) + 8);
  if (v8)
  {
    v9 = Length - 13 >= 0xFFFFFFFFFFFFFFF5;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
LABEL_94:
    v79 = *MEMORY[0x29EDCA608];
    return;
  }

  if (Length > 3)
  {
LABEL_12:
    v80 = a3;
    __src = 0;
    v86 = 0;
    v87 = 0;
    v81 = a1;
    v10 = *(a1 + 56);
    v83 = *(*(v7 + 88) + 8);
    *__p = 0u;
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    obj = v10;
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, theString, __p, v92, 16, v8);
    if (v13)
    {
      v14 = 0;
      v82 = 0;
      v15 = *v89;
LABEL_14:
      v16 = 0;
      while (1)
      {
        if (*v89 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = objc_msgSend_rawCandidate(*(__p[1] + v16), v11, v12);
        v18 = v17;
        if (!v17)
        {
          break;
        }

        v19 = *v17;
        v20 = **v17;
        v21 = __dynamic_cast(v17, &unk_2A1F64300, &unk_2A1F752F0, 0);
        if (!v21)
        {
          break;
        }

        v22 = v21;
        v23 = (*(v19 + 4))(v18);
        v24 = v23;
        if (!v23)
        {
          break;
        }

        v25 = CFStringGetLength(v23);
        if ((*(*v22 + 96))(v22) == 76)
        {
          if (v25 > 4)
          {
            break;
          }

          if (v25 >= 2 && v25 > v14 && (sub_299322114(v83, v24) & 1) == 0)
          {
            v14 = v25;
            v82 = v24;
            if (v25 == 4)
            {
              goto LABEL_62;
            }
          }
        }

        v27 = (*(*v22 + 568))(v22);
        if (!v27 || (v29 = *v27, v28 = *(v27 + 8), *v27 == v28))
        {
          v36 = v86;
          if (v86 >= v87)
          {
            v38 = __src;
            v39 = v86 - __src;
            v40 = (v86 - __src) >> 3;
            v41 = v40 + 1;
            if ((v40 + 1) >> 61)
            {
LABEL_95:
              sub_299212A8C();
            }

            v42 = v87 - __src;
            if ((v87 - __src) >> 2 > v41)
            {
              v41 = v42 >> 2;
            }

            v9 = v42 >= 0x7FFFFFFFFFFFFFF8;
            v43 = 0x1FFFFFFFFFFFFFFFLL;
            if (!v9)
            {
              v43 = v41;
            }

            if (v43)
            {
              sub_299236FB8(&__src, v43);
            }

            *(8 * v40) = v25;
            v37 = 8 * v40 + 8;
            memcpy(0, v38, v39);
            v44 = __src;
            __src = 0;
            v86 = v37;
            v87 = 0;
            if (v44)
            {
              operator delete(v44);
            }
          }

          else
          {
            *v86 = v25;
            v37 = (v36 + 8);
          }

          v86 = v37;
        }

        else
        {
          v30 = v28 - v29;
          v31 = (v28 - v29) >> 3;
          if (v31 >= 1)
          {
            v32 = v86;
            if ((v87 - v86) >= v30)
            {
              do
              {
                v35 = *v29;
                v29 += 8;
                *v32 = v35;
                v32 += 8;
              }

              while (v29 != v28);
              v86 = v32;
            }

            else
            {
              v33 = v31 + ((v86 - __src) >> 3);
              if (v33 >> 61)
              {
                goto LABEL_95;
              }

              if ((v87 - __src) >> 2 > v33)
              {
                v33 = (v87 - __src) >> 2;
              }

              if (v87 - __src >= 0x7FFFFFFFFFFFFFF8)
              {
                v34 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v34 = v33;
              }

              if (v34)
              {
                sub_299236FB8(&__src, v34);
              }

              v45 = 8 * ((v86 - __src) >> 3);
              v46 = (v45 + v30);
              v47 = v45;
              do
              {
                v48 = *v29;
                v29 += 8;
                *v47++ = v48;
                v30 -= 8;
              }

              while (v30);
              memcpy(v46, v32, v86 - v32);
              v49 = &v46[v86 - v32];
              v50 = v32 - __src;
              v51 = (v45 - (v32 - __src));
              memcpy(v51, __src, v50);
              v52 = __src;
              __src = v51;
              v86 = v49;
              v87 = 0;
              if (v52)
              {
                operator delete(v52);
              }
            }
          }
        }

        if (++v16 == v13)
        {
          v53 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, __p, v92, 16);
          v13 = v53;
          if (!v53)
          {
            v24 = v82;
            if (!v82)
            {
              goto LABEL_63;
            }

LABEL_62:
            v54 = sub_29925A68C();
            sub_29925AA0C(v54, 1, v24, v80);
            break;
          }

          goto LABEL_14;
        }
      }
    }

    else
    {
LABEL_63:
      v55 = __src;
      if (__src == v86)
      {
        v60 = 0;
        v58 = 0;
        v57 = 0;
        v56 = 0;
      }

      else
      {
        v56 = 0;
        v57 = 0;
        v58 = 0;
        v59 = 0;
        v60 = 0;
        do
        {
          v62 = *v55++;
          v61 = v62;
          v63 = v62 + v60;
          v64 = v62 + v59;
          v65 = v60 > 1;
          v66 = v60 > v57;
          v67 = !v65 || !v66;
          if (v65 && v66)
          {
            v68 = v60;
          }

          else
          {
            v68 = v57;
          }

          if (v67)
          {
            v69 = v56;
          }

          else
          {
            v69 = v58;
          }

          v59 = v64;
          if (v61 >= 3)
          {
            v60 = 0;
          }

          else
          {
            v60 = v63;
          }

          if (v61 >= 3)
          {
            v58 = v64;
            v57 = v68;
            v56 = v69;
          }
        }

        while (v55 != v86);
      }

      v72 = v60 > 1;
      v73 = v60 > v57;
      if (v72 && v73)
      {
        v74 = v60;
      }

      else
      {
        v74 = v57;
      }

      if (v72 && v73)
      {
        v75 = v58;
      }

      else
      {
        v75 = v56;
      }

      if (v74)
      {
        if (v75 + v74 <= CFStringGetLength(theString))
        {
          v94.location = v75;
          v94.length = v74;
          v76 = CFStringCreateWithSubstring(*MEMORY[0x29EDB8ED8], theString, v94);
          v77 = v76;
          if (v76)
          {
            v78 = CFStringGetLength(v76);
            (*(**(*(v81 + 168) + 120) + 16))(*(*(v81 + 168) + 120), v77, 0, v78);
            sub_299276A84(v77);
          }
        }
      }
    }

    if (__src)
    {
      v86 = __src;
      operator delete(__src);
    }

    goto LABEL_94;
  }

  if (sub_299322114(*(*(v7 + 88) + 8), theString))
  {
    v7 = *(a1 + 168);
    goto LABEL_12;
  }

  v70 = sub_29925A68C();
  v71 = *MEMORY[0x29EDCA608];

  sub_29925AA0C(v70, 1, theString, a3);
}

void sub_2993319E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__CFArray *sub_299331ABC()
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
  CFArrayAppendValue(Mutable, @"DynamicPhraseLexicon_zh_Hant_pinyin.db");
  CFArrayAppendValue(Mutable, @"PhraseLearning_zh_Hant_pinyin.db");
  CFArrayAppendValue(Mutable, @"PhraseLearning_zh_Hant_pinyin.dictionary");
  CFArrayAppendValue(Mutable, @"StructuralPinyinLearning_zh_Hant_pinyin.db");
  CFArrayAppendValue(Mutable, @"StructuralPinyinLearning_zh_Hant_pinyin.dictionary");
  CFArrayAppendValue(Mutable, @"facemark.dat");
  return Mutable;
}

__CFArray *sub_299331B70(uint64_t a1, const __CFURL *a2)
{
  if (!a2)
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
  v4 = sub_2992772AC(a2, @"PhraseLearning_zh_Hant_pinyin.db");
  if (v4)
  {
    v5 = v4;
    CFArrayAppendValue(Mutable, v4);
    CFRelease(v5);
  }

  v6 = sub_2992772AC(a2, @"PhraseLearning_zh_Hant_pinyin.dictionary");
  if (v6)
  {
    v7 = v6;
    CFArrayAppendValue(Mutable, v6);
    CFRelease(v7);
  }

  v8 = sub_2992772AC(a2, @"StructuralPinyinLearning_zh_Hant_pinyin.dictionary");
  if (v8)
  {
    v9 = v8;
    CFArrayAppendValue(Mutable, v8);
    CFRelease(v9);
  }

  return Mutable;
}

void sub_299331D98(_Unwind_Exception *a1)
{
  MEMORY[0x29C29BFB0](v2, 0x81C40B8603338);
  sub_29932EA00(v1);
  _Unwind_Resume(a1);
}

__CFArray *sub_299331DCC()
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
  CFArrayAppendValue(Mutable, @"DynamicPhraseLexicon_zh_Hant_zhuyin.db");
  CFArrayAppendValue(Mutable, @"PhraseLearning_zh_Hant_zhuyin.db");
  CFArrayAppendValue(Mutable, @"PhraseLearning_zh_Hant_zhuyin.dictionary");
  CFArrayAppendValue(Mutable, @"StructuralZhuyinLearning_zh_Hant_zhuyin.db");
  CFArrayAppendValue(Mutable, @"StructuralZhuyinLearning_zh_Hant_zhuyin.dictionary");
  CFArrayAppendValue(Mutable, @"facemark.dat");
  return Mutable;
}

__CFArray *sub_299331E80(uint64_t a1, const __CFURL *a2)
{
  if (!a2)
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
  v4 = sub_2992772AC(a2, @"PhraseLearning_zh_Hant_zhuyin.db");
  if (v4)
  {
    v5 = v4;
    CFArrayAppendValue(Mutable, v4);
    CFRelease(v5);
  }

  v6 = sub_2992772AC(a2, @"PhraseLearning_zh_Hant_zhuyin.dictionary");
  if (v6)
  {
    v7 = v6;
    CFArrayAppendValue(Mutable, v6);
    CFRelease(v7);
  }

  v8 = sub_2992772AC(a2, @"StructuralZhuyinLearning_zh_Hant_zhuyin.dictionary");
  if (v8)
  {
    v9 = v8;
    CFArrayAppendValue(Mutable, v8);
    CFRelease(v9);
  }

  return Mutable;
}

void sub_299331FE8(uint64_t a1)
{
  sub_29932EA00(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_29933202C(uint64_t a1)
{
  sub_29932EA00(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_299332078(uint64_t a1)
{
  sub_29932EA00(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_2993320BC(uint64_t a1)
{
  sub_29932EA00(a1);

  JUMPOUT(0x29C29BFB0);
}

void *sub_2993320FC(void *a1, const void *a2, const void *a3, const void *a4, const void *a5, int a6, uint64_t a7, int a8)
{
  v13 = sub_29933219C(a1, a2, a3, a7);
  *v13 = &unk_2A1F72720;
  v13[4] = a4;
  v13[5] = a5;
  *(v13 + 12) = a6;
  *(v13 + 13) = a8;
  if (a4)
  {
    CFRetain(a4);
    a5 = a1[5];
  }

  if (a5)
  {
    CFRetain(a5);
  }

  return a1;
}

void *sub_29933219C(void *a1, CFTypeRef cf, CFTypeRef a3, uint64_t a4)
{
  *a1 = &unk_2A1F72768;
  a1[1] = cf;
  a1[2] = a3;
  a1[3] = a4;
  if (cf)
  {
    CFRetain(cf);
    a3 = a1[2];
  }

  if (a3)
  {
    CFRetain(a3);
  }

  return a1;
}

void *sub_2993321FC(void *a1)
{
  *a1 = &unk_2A1F72768;
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    CFRelease(v3);
  }

  return a1;
}

void sub_299332258(void *a1)
{
  sub_2993322CC(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_299332294(void *a1)
{
  sub_2993321FC(a1);

  JUMPOUT(0x29C29BFB0);
}

void *sub_2993322CC(void *a1)
{
  *a1 = &unk_2A1F72720;
  v2 = a1[4];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    CFRelease(v3);
  }

  return sub_2993321FC(a1);
}

uint64_t sub_299332338(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2992C9EDC(result, a4);
  }

  return result;
}

void sub_2993323A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29921EB1C(&a9);
  _Unwind_Resume(a1);
}

char *sub_2993323C0(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v13 = __dst;
  v14 = __dst;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_2991A110C(v4, *v6, *(v6 + 1));
        v8 = v14;
      }

      else
      {
        v7 = *v6;
        *(v4 + 2) = *(v6 + 2);
        *v4 = v7;
        v8 = v4;
      }

      v9 = *(v6 + 6);
      *(v4 + 27) = *(v6 + 27);
      *(v4 + 6) = v9;
      v6 += 2;
      v4 = v8 + 32;
      v14 = v8 + 32;
    }

    while (v6 != a3);
  }

  v12 = 1;
  sub_2992C9FEC(v11);
  return v4;
}

id sub_299332494(uint64_t a1, const char *a2)
{
  result = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x29EDB9F50], a2, @"了着还的我是你不在个有和啊他与她没");
  qword_2A1461050 = result;
  return result;
}

uint64_t sub_299332538(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F727A8;
  a2[1] = v2;
  return result;
}

uint64_t sub_29933258C(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F72818))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_299332648(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F72838;
  a2[1] = v2;
  return result;
}

uint64_t sub_299332680(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F728A8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2993326CC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_2993327BC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F728C8;
  a2[1] = v2;
  return result;
}

uint64_t sub_299332810(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F72928))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29933285C()
{
  v0 = &byte_2A1461117;
  v1 = -192;
  v2 = &byte_2A1461117;
  do
  {
    v3 = *v2;
    v2 -= 32;
    if (v3 < 0)
    {
      operator delete(*(v0 - 23));
    }

    v0 = v2;
    v1 += 32;
  }

  while (v1);
}

int *sub_2993328A4(int *a1, uint64_t a2, uint64_t *a3, const void **a4)
{
  *a1 = a2;
  *(a1 + 6) = 0u;
  v40 = (a1 + 6);
  *(a1 + 2) = 0u;
  *(a1 + 10) = 0u;
  sub_299332E80(a2, 0, a1 + 8);
  if (*(a3 + 23) < 0)
  {
    if (!a3[1])
    {
      return a1;
    }

    a3 = *a3;
  }

  else if (!*(a3 + 23))
  {
    return a1;
  }

  sub_2992BC434(a3, "r", 1, &v44);
  v8 = *&v44.__r_.__value_.__l.__data_;
  *&v44.__r_.__value_.__l.__data_ = 0uLL;
  v9 = *(a1 + 2);
  *(a1 + 2) = v8;
  if (v9)
  {
    sub_2991A893C(v9);
    if (v44.__r_.__value_.__l.__size_)
    {
      sub_2991A893C(v44.__r_.__value_.__l.__size_);
    }
  }

  if (!*(*(a1 + 8) + 8))
  {
    sub_2991BF614(&v44);
    v36 = sub_2991C0E9C(&v44, "Failed to load character map for language ", 42);
    MEMORY[0x29C29BD30](v36, a2);
    exception = __cxa_allocate_exception(0x20uLL);
    sub_2992563AC(&v44, &v42);
    sub_29933383C(exception, &v42);
    __cxa_throw(exception, &unk_2A1F72938, sub_299332FAC);
  }

  if ((*a1 - 1) >= 2 && *a1 != 5)
  {
    sub_2991BF614(&v44);
    v38 = MEMORY[0x29C29BD30](&v44, a2);
    sub_2991C0E9C(v38, " is unsupported language value.", 31);
    v39 = __cxa_allocate_exception(0x20uLL);
    sub_2992563AC(&v44, &v41);
    sub_29933383C(v39, &v41);
    __cxa_throw(v39, &unk_2A1F72938, sub_299332FAC);
  }

  v10 = 0;
  v11 = **(a1 + 1);
  *(a1 + 6) = v11;
  *(a1 + 7) = v11 + *(v11 + 4);
  do
  {
    sub_2991C6CA8(&v51, off_29EF13060[v10]);
    v12 = v53;
    v13 = v53;
    if ((v53 & 0x80u) != 0)
    {
      v12 = v52;
    }

    if (v12)
    {
      if (*(a4 + 23) >= 0)
      {
        v14 = *(a4 + 23);
      }

      else
      {
        v14 = a4[1];
      }

      sub_2991C1C18(&v44, v14 + 1);
      if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v15 = &v44;
      }

      else
      {
        v15 = v44.__r_.__value_.__r.__words[0];
      }

      if (v14)
      {
        if (*(a4 + 23) >= 0)
        {
          v16 = a4;
        }

        else
        {
          v16 = *a4;
        }

        memmove(v15, v16, v14);
      }

      *(&v15->__r_.__value_.__l.__data_ + v14) = 47;
      if ((v53 & 0x80u) == 0)
      {
        v17 = &v51;
      }

      else
      {
        v17 = v51;
      }

      if ((v53 & 0x80u) == 0)
      {
        v18 = v53;
      }

      else
      {
        v18 = v52;
      }

      v19 = std::string::append(&v44, v17, v18);
      v20 = *&v19->__r_.__value_.__l.__data_;
      v50 = v19->__r_.__value_.__r.__words[2];
      v49 = v20;
      v19->__r_.__value_.__l.__size_ = 0;
      v19->__r_.__value_.__r.__words[2] = 0;
      v19->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v44.__r_.__value_.__l.__data_);
      }

      v21 = *a1;
      v44.__r_.__value_.__r.__words[0] = MEMORY[0x29EDCA5F8];
      v44.__r_.__value_.__l.__size_ = 0x40000000;
      v44.__r_.__value_.__r.__words[2] = sub_299234CE0;
      v45 = &unk_29EF0DD50;
      v47 = v21;
      v46 = &v49;
      sub_299234450(&v49, &v44, 0, &v48);
      if (v48)
      {
        v22 = *a1;
        if (*a1 == 1 || v22 == 5 || v22 == 2)
        {
          (*(*v48 + 48))();
        }

        sub_2992B4184(v40, &v48);
      }

      else
      {
        if (!(v10 * 8))
        {
          sub_2991BF614(&v44);
          v32 = sub_2991C0E9C(&v44, "Failed to open dictionary ", 26);
          if (v50 >= 0)
          {
            v33 = &v49;
          }

          else
          {
            v33 = v49;
          }

          if (v50 >= 0)
          {
            v34 = HIBYTE(v50);
          }

          else
          {
            v34 = *(&v49 + 1);
          }

          sub_2991C0E9C(v32, v33, v34);
          v35 = __cxa_allocate_exception(0x20uLL);
          sub_2992563AC(&v44, &v43);
          sub_29933383C(v35, &v43);
          __cxa_throw(v35, &unk_2A1F72938, sub_299332FAC);
        }

        v23 = sub_29930AF10();
        if (v50 >= 0)
        {
          v30 = &v49;
        }

        else
        {
          LOBYTE(v30) = v49;
        }

        sub_29930B600(v23, "Failed to open dictionary : %s", v24, v25, v26, v27, v28, v29, v30);
      }

      if (*(&v48 + 1))
      {
        sub_2991A893C(*(&v48 + 1));
      }

      if (SHIBYTE(v50) < 0)
      {
        operator delete(v49);
      }

      v13 = v53;
    }

    if ((v13 & 0x80) != 0)
    {
      operator delete(v51);
    }

    ++v10;
  }

  while (v10 != 3);
  return a1;
}

void sub_299332D38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((v36 & 1) == 0)
    {
LABEL_6:
      sub_2992568C8(&a30);
      v40 = *(v35 + 72);
      if (v40)
      {
        sub_2991A893C(v40);
      }

      *(v38 - 160) = a11;
      sub_299291260((v38 - 160));
      v41 = *(v35 + 16);
      if (v41)
      {
        sub_2991A893C(v41);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v36)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v37);
  goto LABEL_6;
}

void sub_299332E80(unsigned int a1@<W0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v6 = sub_2992774EC(a1);
  v7 = sub_2991C6CA8(&v15, v6);
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 0x40000000;
  v9[2] = sub_299333C98;
  v9[3] = &unk_29EF13040;
  v9[4] = &v11;
  v10 = a1;
  sub_299333948(v7, v9, 0, a3);
  if (a2 && (v12[3] & 1) == 0)
  {
    v8 = *a3;
    sub_299333D14();
  }

  _Block_object_dispose(&v11, 8);
  if (v16 < 0)
  {
    operator delete(v15);
  }
}

void sub_299332F70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v11 = *(v8 + 8);
  if (v11)
  {
    sub_2991A893C(v11);
  }

  _Block_object_dispose(va, 8);
  if (*(v9 - 33) < 0)
  {
    operator delete(*(v9 - 56));
  }

  _Unwind_Resume(a1);
}

void sub_299332FAC(std::exception *this)
{
  this->__vftable = &unk_2A1F72960;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);
}

void sub_29933300C(int a1@<W0>, _BYTE *a2@<X8>)
{
  v4 = sub_29936C2B8();
  v5 = sub_29936C350(v4, a1, off_2A145F738[0], @"sys.dic");
  v6 = *(v5 + 23);
  if (v6 >= 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = *v5;
  }

  if (v6 >= 0)
  {
    v8 = v5[23];
  }

  else
  {
    v8 = *(v5 + 1);
  }

  v9 = CFURLCreateFromFileSystemRepresentation(0, v7, v8, 0);
  if (v9)
  {
    v10 = v9;
    PathComponent = CFURLCreateCopyDeletingLastPathComponent(0, v9);
    v12 = CFURLCopyFileSystemPath(PathComponent, kCFURLPOSIXPathStyle);
    sub_299278568(v12, a2);
    if (v12)
    {
      CFRelease(v12);
    }

    if (PathComponent)
    {
      CFRelease(PathComponent);
    }

    CFRelease(v10);
  }

  else
  {

    sub_2991C6CA8(a2, "");
  }
}

void sub_2993330F4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

int *sub_299333110(int *a1, uint64_t a2)
{
  v4 = sub_29936C2B8();
  v5 = sub_29936C350(v4, a2, off_2A145F738[0], off_2A145F6C8[0]);
  sub_29933300C(a2, __p);
  sub_2993328A4(a1, a2, v5, __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_2993331A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2993331BC(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    sub_2991A893C(v2);
  }

  v5 = (a1 + 24);
  sub_299291260(&v5);
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_2991A893C(v3);
  }

  return a1;
}

uint64_t sub_299333210(uint64_t a1)
{
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    v1 = *(a1 + 23);
    if (v1 != 7)
    {
      v2 = a1;
      if (v1 != 9)
      {
        if (v1 != 14)
        {
          goto LABEL_38;
        }

        if (*a1 != 0x656D656C70707573 || *(a1 + 6) != 0x6369642E746E656DLL)
        {
          goto LABEL_38;
        }

        return 1;
      }

      goto LABEL_25;
    }

    if (*a1 != 779319667 || *(a1 + 3) != 1667851310)
    {
LABEL_38:
      sub_2991BF614(v19);
      v13 = *(a1 + 23);
      if (v13 >= 0)
      {
        v14 = a1;
      }

      else
      {
        v14 = *a1;
      }

      if (v13 >= 0)
      {
        v15 = *(a1 + 23);
      }

      else
      {
        v15 = *(a1 + 8);
      }

      v16 = sub_2991C0E9C(v19, v14, v15);
      sub_2991C0E9C(v16, " is not a recognized source dictionary name.", 44);
      exception = __cxa_allocate_exception(0x20uLL);
      sub_2992563AC(v19, &v18);
      sub_29933383C(exception, &v18);
      __cxa_throw(exception, &unk_2A1F72938, sub_299332FAC);
    }

    return 0;
  }

  v4 = *(a1 + 8);
  if (v4 == 7)
  {
    if (**a1 != 779319667 || *(*a1 + 3) != 1667851310)
    {
      goto LABEL_38;
    }

    return 0;
  }

  if (v4 != 9)
  {
    if (v4 == 14 && **a1 == 0x656D656C70707573 && *(*a1 + 6) == 0x6369642E746E656DLL)
    {
      return 1;
    }

    goto LABEL_38;
  }

  v2 = *a1;
LABEL_25:
  v8 = *v2;
  v9 = *(v2 + 8);
  if (v8 != 0x69642E646578696DLL || v9 != 99)
  {
    goto LABEL_38;
  }

  return 2;
}

void sub_29933340C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      sub_2992568C8(&a15);
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

uint64_t sub_299333454(char a1, uint64_t a2)
{
  if (a2 >= 0x200000)
  {
    sub_2991BF614(v8);
    v4 = sub_2991C0E9C(v8, "Token offset ", 13);
    v5 = MEMORY[0x29C29BD40](v4, a2);
    sub_2991C0E9C(v5, " is out of range. The max offset value is 0x1FFFFF.", 51);
    exception = __cxa_allocate_exception(0x20uLL);
    sub_2992563AC(v8, &v7);
    sub_29933383C(exception, &v7);
    __cxa_throw(exception, &unk_2A1F72938, sub_299332FAC);
  }

  return ((a1 & 3) << 22) | a2;
}

void sub_299333518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      sub_2992568C8(&a15);
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

BOOL sub_299333560(const char *a1, const void **a2)
{
  __ptr[0] = (a2[1] - *a2) >> 2;
  __ptr[1] = 8;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  v3 = fopen(a1, "w+");
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  if (fwrite(__ptr, 8uLL, 1uLL, v3))
  {
    v5 = *a2;
    v6 = a2[1];
    if (v6 == *a2)
    {
      sub_29920D17C(a2, 1uLL);
      v5 = *a2;
      v6 = a2[1];
    }

    v7 = fwrite(v5, 4uLL, (v6 - v5) >> 2, v4) >= (a2[1] - *a2) >> 2;
  }

  else
  {
    v7 = 0;
  }

  fclose(v4);
  return v7;
}

uint64_t sub_299333634(void *a1, unsigned int *a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = a3;
  v6 = 0;
  do
  {
    v7 = a1[6];
    if (!v7)
    {
      break;
    }

    v9 = *a2++;
    v8 = v9;
    if (*v7 <= v9)
    {
      break;
    }

    v10 = *(a1[7] + 4 * v8);
    v11 = (v10 >> 22) & 3;
    if (!v10 || v11 == 3)
    {
      break;
    }

    sub_2993DFF74(*(a1[3] + 16 * v11), v10 & 0x1FFFFF);
    v6 += v13;
    --v3;
  }

  while (v3);
  return v6;
}

CFStringRef sub_2993336C8(void *a1, unsigned int a2)
{
  v2 = a1[6];
  if (!v2 || *v2 <= a2)
  {
    return 0;
  }

  v4 = *(a1[7] + 4 * a2);
  v5 = (v4 >> 22) & 3;
  if (!v4 || v5 == 3)
  {
    return 0;
  }

  sub_2993DFF74(*(a1[3] + 16 * v5), v4 & 0x1FFFFF);
  if (!v8)
  {
    return 0;
  }

  v9 = *(a1[8] + 8);

  return sub_29922EBB4();
}

CFStringRef sub_299333764(void *a1, unsigned int a2)
{
  v3 = a1[6];
  if (!v3 || *v3 <= a2)
  {
    return 0;
  }

  v4 = *(a1[7] + 4 * a2);
  v5 = (v4 >> 22) & 3;
  if (!v4 || v5 == 3)
  {
    return 0;
  }

  v8 = sub_2993DFF74(*(a1[3] + 16 * v5), v4 & 0x1FFFFF);
  if (!v9)
  {
    return 0;
  }

  return CFStringCreateWithCharacters(0, v8, v9);
}

uint64_t sub_2993337E8(void *a1, unsigned int a2)
{
  v2 = a1[6];
  if (v2 && *v2 > a2 && (v3 = *(a1[7] + 4 * a2), v3) && (v4 = (v3 >> 22) & 3, v5 = ((*(a1[7] + 4 * a2) >> 22) & 3) == 3, v4 != 3))
  {
    return *(*(a1[3] + 16 * v4) + 56) + 12 * (v3 & 0x1FFFFF);
  }

  else
  {
    return 0;
  }
}

void *sub_29933383C(void *a1, __int128 *a2)
{
  *a1 = &unk_2A1F72960;
  v3 = a1 + 1;
  if (*(a2 + 23) < 0)
  {
    sub_2991A110C(v3, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    v3[2] = *(a2 + 2);
    *v3 = v4;
  }

  return a1;
}

void sub_2993338B8(std::exception *this)
{
  this->__vftable = &unk_2A1F72960;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_29933392C(uint64_t a1)
{
  result = a1 + 8;
  if (*(a1 + 31) < 0)
  {
    return *result;
  }

  return result;
}

void sub_299333948(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v25 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A145F588, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A145F588))
  {
    operator new();
  }

  if ((atomic_load_explicit(&qword_2A145F5D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A145F5D0))
  {
    __cxa_atexit(MEMORY[0x29EDC93D8], &stru_2A145F590, &dword_29918C000);
    __cxa_guard_release(&qword_2A145F5D0);
  }

  v22 = 0;
  v23 = 0;
  std::mutex::lock(&stru_2A145F590);
  v8 = sub_29921517C(qword_2A145F580, a1);
  v9 = v8;
  if (!v8 || (v10 = v8[6]) == 0 || (v10->__shared_owners_ != -1 ? (v11 = a3 == 0) : (v11 = 0), !v11))
  {
    v12 = sub_2993652F8(0xDu);
    v13 = os_signpost_id_make_with_pointer(v12, a1);
    v14 = sub_2993652F8(0xDu);
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v15 = v14;
      if (os_signpost_enabled(v14))
      {
        if (*(a1 + 23) >= 0)
        {
          v16 = a1;
        }

        else
        {
          v16 = *a1;
        }

        *buf = 136315138;
        *&buf[4] = v16;
        _os_signpost_emit_with_name_impl(&dword_29918C000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "SingletonResourceManagerLoad", "Load resource with key: [%s]", buf, 0xCu);
      }
    }

    v17 = (*(a2 + 16))(a2);
    sub_299333DA0(&v22, v17);
  }

  v18 = std::__shared_weak_count::lock(v10);
  if (v18)
  {
    v19 = v9[5];
  }

  else
  {
    v19 = 0;
  }

  v22 = v19;
  v23 = v18;
  std::mutex::unlock(&stru_2A145F590);
  v20 = v23;
  *a4 = v22;
  a4[1] = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    if (v23)
    {
      sub_2991A893C(v23);
    }
  }

  v21 = *MEMORY[0x29EDCA608];
}

void sub_299333DE8(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_299333E68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_299333E7C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_299333E7C(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_299333FAC((v2 + 8), 0);
    MEMORY[0x29C29BFB0](v2, 0x1020C40D5A9D86FLL);
  }

  return a1;
}

void sub_299333ED4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_299333F14(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F729D8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_299333F54(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_299333FAC((a2 + 8), 0);

    JUMPOUT(0x29C29BFB0);
  }
}

uint64_t *sub_299333FAC(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    sub_29922ED04(v2 + 24, *(v2 + 32));
    sub_29921B8CC(v2, *(v2 + 8));

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

void sub_2993349F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  MEMORY[0x29C29BFB0](v10, 0x1081C409227ACB4);
  sub_29933D8F0((v9 + 47));
  sub_299273884(v9 + 31);
  v12 = v9[25];
  v9[25] = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = v9[24];
  v9[24] = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  sub_29932C5A0(v9 + 23, 0);
  sub_29932C5A0(v9 + 22, 0);
  sub_29921EB1C(&a9);
  sub_29921EB1C(&a9);
  sub_29932C230(v9);
  _Unwind_Resume(a1);
}

BOOL sub_299334C2C(uint64_t a1)
{
  v12[2] = *MEMORY[0x29EDCA608];
  sub_29932C330(a1);
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_299334D30(a1);
    v3 = 0;
    v12[0] = @"Lexierra_ja_JP-dynamic-text.dat";
    v12[1] = @"LexicalLearning_ja_JP.dat";
    do
    {
      v4 = sub_29927717C(*(a1 + 40), v12[v3]);
      if (v4)
      {
        v5 = v4;
        sub_299279944(v4);
        CFRelease(v5);
      }

      ++v3;
    }

    while (v3 != 2);
    v6 = sub_29927717C(*(a1 + 40), @"Lexierra_ja_JP-dynamic-text.dat");
    if (v6)
    {
      v7 = v6;
      if (sub_299276528(v6))
      {
        sub_2992EED88(v7, v8, v9);
      }

      CFRelease(v7);
    }

    sub_2992F2FA8(1, 1);
  }

  result = v2 != 0;
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_299334D30(uint64_t result)
{
  if (*(result + 96) == 1)
  {
    v1 = result;
    if (!*(result + 176))
    {
      if (!*(result + 8) && *(result + 40))
      {
        (*(*result + 16))(result);
      }

      v2 = *(v1 + 40);
      if (v2)
      {
        v28 = sub_29927717C(v2, @"DynamicBigramPhraseLexicon_ja_JP.db");
        if (v28)
        {
          operator new();
        }

        v2 = *(v1 + 40);
      }

      v28 = sub_29927717C(v2, @"DynamicPersonNameLexicon_ja_JP.db");
      if (v28)
      {
        operator new();
      }

      sub_29933D95C(v1 + 376, *(v1 + 40));
      sub_2992B8778(*(v1 + 8), 0, 0, 0x200u, &v28);
      memset(v27, 0, sizeof(v27));
      memset(v26, 0, sizeof(v26));
      sub_29928EF5C(v27, (v29 - v28) >> 5);
      sub_29928EF5C(v26, (v29 - v28) >> 5);
      v24 = v1;
      v3 = v28;
      v4 = v29;
      if (v28 != v29)
      {
        v25 = v29;
        do
        {
          v5 = sub_2992B8D0C(v3, off_2A145F3B0[0]);
          v6 = sub_2992B8D0C(v3, off_2A145F3B8);
          v7 = sub_2992B8D0C(v3, off_2A145F398[0]);
          v8 = (v5[1] - *v5) >> 1;
          v9 = v7[1] - *v7;
          if (v8 - 6 >= 0xFFFFFFFFFFFFFFFCLL && v9 != 2 && (v8 < 5 || v9 >= 5))
          {
            v13 = *v6;
            v12 = v6[1];
            if (v12 == *v6)
            {
              goto LABEL_32;
            }

            v14 = 0;
            v15 = (v12 - v13) >> 1;
            v16 = 1;
            v17 = v15;
            do
            {
              v18 = *v13++;
              Code = ublock_getCode(v18);
              if ((Code - 58) > 0x25 || ((1 << (Code - 58)) & 0x3000203003) == 0)
              {
                break;
              }

              v14 = v16++ >= v15;
              --v17;
            }

            while (v17);
            v4 = v25;
            if (v14)
            {
LABEL_32:
              sub_299335284(v27, v5);
              sub_299335284(v26, v6);
            }
          }

          v3 += 32;
        }

        while (v3 != v4);
      }

      v21 = *(v24 + 192);
      if (v21)
      {
        sub_29924DE10(v21);
      }

      sub_2992E9E20((v24 + 192), v27, v26, 200);
      v30 = v26;
      sub_29920E060(&v30);
      v26[0] = v27;
      sub_29920E060(v26);
      v27[0] = &v28;
      sub_299225D98(v27);
      v22 = *(v24 + 200);
      if (!v22)
      {
        operator new();
      }

      sub_29924DE10(v22);
      v23 = *(v24 + 200);

      return sub_29924C9E4(v23, 200, 0, 7);
    }
  }

  return result;
}

const void **sub_2993351F8(uint64_t a1)
{
  sub_29932C5A0((a1 + 8), 0);
  sub_29921EB70((a1 + 16));
  sub_29932C5A0((a1 + 176), 0);
  sub_29932C5A0((a1 + 184), 0);
  sub_29932C5A0((a1 + 400), 0);
  sub_29932C5A0((a1 + 408), 0);
  sub_29924DE10(*(a1 + 192));
  sub_29924DE10(*(a1 + 200));

  return sub_2992F2FA8(1, 0);
}

uint64_t sub_299335284(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29933AF54(a1, a2);
  }

  else
  {
    sub_29933AF00(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

__CFArray *sub_2993352D0(uint64_t a1, const __CFURL *a2)
{
  if (!a2)
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
  v4 = sub_2992772AC(a2, @"PhraseLearning_ja_JP.dictionary");
  if (v4)
  {
    CFArrayAppendValue(Mutable, v4);
  }

  v5 = sub_2992772AC(a2, @"PhraseLearning_ja_JP.db");
  if (v4)
  {
    CFRelease(v4);
  }

  if (v5)
  {
    CFArrayAppendValue(Mutable, v5);
  }

  v6 = sub_2992772AC(a2, @"BigramLearning_ja_JP.dictionary");
  if (v5)
  {
    CFRelease(v5);
  }

  if (v6)
  {
    CFArrayAppendValue(Mutable, v6);
  }

  v7 = sub_2992772AC(a2, @"BigramLearning_ja_JP.db");
  if (v6)
  {
    CFRelease(v6);
  }

  if (v7)
  {
    CFArrayAppendValue(Mutable, v7);
    CFRelease(v7);
  }

  return Mutable;
}

void sub_299335408(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29920FE30(va, 0);
  _Unwind_Resume(a1);
}

__CFArray *sub_299335420()
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
  CFArrayAppendValue(Mutable, @"LexicalLearning_ja_JP.db");
  CFArrayAppendValue(Mutable, @"Lexierra_ja_JP-dynamic-text.dat");
  CFArrayAppendValue(Mutable, @"LexicalLearning_ja_JP.dat");
  CFArrayAppendValue(Mutable, @"DynamicBigramPhraseLexicon_ja_JP.db");
  CFArrayAppendValue(Mutable, @"BigramLearning_ja_JP.db");
  CFArrayAppendValue(Mutable, @"BigramLearning_ja_JP.dictionary");
  CFArrayAppendValue(Mutable, @"PhraseLearning_ja_JP.db");
  CFArrayAppendValue(Mutable, @"PhraseLearning_ja_JP.dictionary");
  return Mutable;
}

void *sub_2993354D4(void *a1)
{
  sub_29932D4B8(a1);
  v2 = a1[22];
  if (v2)
  {
    sub_2992C8D94(v2);
  }

  v3 = a1[23];
  if (v3)
  {
    sub_2992C8D94(v3);
  }

  sub_299342E20((a1 + 47));
  result = a1[30];
  if (result)
  {

    return sub_2993F5290(result);
  }

  return result;
}

const __CFString *sub_29933553C(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x29EDCA608];
  if (!*(a1 + 8))
  {
    goto LABEL_23;
  }

  result = *(a2 + 16);
  if (!result)
  {
    goto LABEL_24;
  }

  if (!*(a2 + 8))
  {
LABEL_23:
    result = 0;
    goto LABEL_24;
  }

  Length = CFStringGetLength(result);
  v6 = CFStringGetLength(*(a2 + 8));
  result = 0;
  if ((Length - 33) >= 0xFFFFFFFFFFFFFFE0 && (v6 - 33) >= 0xFFFFFFFFFFFFFFE0)
  {
    v7 = *(a2 + 16);
    if (v7)
    {
      v8 = CFStringGetLength(*(a2 + 16));
      if (v8)
      {
        v9 = v8;
        v10 = 0;
        while (1)
        {
          CharacterAtIndex = CFStringGetCharacterAtIndex(v7, v10);
          if ((CharacterAtIndex - 48) >= 0xA && (CharacterAtIndex + 240) >= 0xAu)
          {
            break;
          }

          if (v9 == ++v10)
          {
            v13 = *(a2 + 8);
            if (v13)
            {
              v14 = CFStringGetLength(*(a2 + 8));
              if (v14)
              {
                v15 = v14;
                v16 = 0;
                while (1)
                {
                  v17 = CFStringGetCharacterAtIndex(v13, v16);
                  if ((v17 - 48) >= 0xA && (v17 + 240) >= 0xAu)
                  {
                    break;
                  }

                  result = 0;
                  if (v15 == ++v16)
                  {
                    goto LABEL_24;
                  }
                }
              }
            }

            break;
          }
        }
      }
    }

    result = sub_2992835E8(*(a2 + 16), *(a2 + 8));
    if (result)
    {
      v20 = sub_2993652F8(6u);
      v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);
      if (v21)
      {
        v23 = *(a2 + 8);
        v22 = *(a2 + 16);
        *buf = 138412546;
        v25 = v22;
        v26 = 2112;
        v27 = v23;
        _os_log_debug_impl(&dword_29918C000, v20, OS_LOG_TYPE_DEBUG, "[MJL::registerToLearningDictionary] Learning phrase %@ (%@)", buf, 0x16u);
      }

      sub_29933595C(v21, *(a1 + 8), a2);
    }
  }

LABEL_24:
  v19 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29933589C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a11)
  {
    MEMORY[0x29C29BF70](a11, 0x1000C80BDFB0063);
  }

  if (v12)
  {
    MEMORY[0x29C29BF70](v12, 0x1000C80BDFB0063);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2993358FC(void *a1)
{
  *a1 = &unk_2A1F72B38;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  return sub_2993321FC(a1);
}

void sub_29933595C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[0] = 0;
  v6[1] = 0;
  v5 = v6;
  v3 = *(a3 + 8);
  sub_2991C6CA8(&__p, off_2A145F3B0[0]);
  sub_2992B7C70(&v5, v3);
}

void sub_299335B30(uint64_t a1)
{
  v36 = *MEMORY[0x29EDCA608];
  if (CFArrayGetCount(*(a1 + 56)) >= 2)
  {
    v2 = 0;
    __p = 0;
    v30 = 0;
    v31 = 0;
    while (1)
    {
      Count = CFArrayGetCount(*(a1 + 56));
      if (v2 >= Count)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 56), v2);
      v7 = sub_2992896C0(ValueAtIndex, v5, v6);
      v8 = v30;
      if (v30 >= v31)
      {
        v10 = (v30 - __p) >> 3;
        if ((v10 + 1) >> 61)
        {
          sub_299212A8C();
        }

        v11 = (v31 - __p) >> 2;
        if (v11 <= v10 + 1)
        {
          v11 = v10 + 1;
        }

        if (v31 - __p >= 0x7FFFFFFFFFFFFFF8)
        {
          v12 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v11;
        }

        if (v12)
        {
          sub_29920B86C(&__p, v12);
        }

        v13 = (8 * v10);
        *v13 = v7;
        v9 = 8 * v10 + 8;
        v14 = v13 - (v30 - __p);
        memcpy(v14, __p, v30 - __p);
        v15 = __p;
        __p = v14;
        v30 = v9;
        v31 = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        *v30 = v7;
        v9 = (v8 + 8);
      }

      v30 = v9;
      ++v2;
    }

    memset(v28, 0, sizeof(v28));
    if (v30 != __p)
    {
      sub_299273C64(v28, (v30 - __p) >> 3);
    }

    v16 = sub_299336024(Count, v28);
    if (v28[0])
    {
      v28[1] = v28[0];
      operator delete(v28[0]);
    }

    v17 = __p;
    v18 = v30;
    v19 = 0.0;
    while (v17 != v18)
    {
      v19 = v19 + (*(**v17 + 392))(*v17);
      v17 += 8;
    }

    (*(v16->isa + 50))(v16, v19);
    (*(v16->isa + 68))(v16);
    if (v20 < 5)
    {
      v22 = sub_2993652F8(6u);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v24 = (*(v16->isa + 3))(v16);
        v25 = (*(v16->isa + 29))(v16);
        *buf = 138412546;
        v33 = v24;
        v34 = 2112;
        v35 = v25;
        _os_log_debug_impl(&dword_29918C000, v22, OS_LOG_TYPE_DEBUG, "[MJL::combinePartialCandidatesAndRegister] Registering as a single phrase: %@ (%@)", buf, 0x16u);
      }

      sub_299336A90(a1, v16, 0, 0, 1, 0);
    }

    else
    {
      sub_2993836D4(a1 + 248);
      CFArrayRemoveAllValues(*(a1 + 56));
      v21 = sub_2993652F8(6u);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        v26 = (*(v16->isa + 3))(v16);
        v27 = (*(v16->isa + 29))(v16);
        *buf = 138412546;
        v33 = v26;
        v34 = 2112;
        v35 = v27;
        _os_log_debug_impl(&dword_29918C000, v21, OS_LOG_TYPE_DEBUG, "[MJL::combinePartialCandidatesAndRegister] Registering as a phrase sequence: %@ (%@)", buf, 0x16u);
      }

      sub_29933664C(a1, v16, 0);
    }

    sub_299337E98(a1, v16, 1);
    (*(v16->isa + 2))(v16);
    if (__p)
    {
      v30 = __p;
      operator delete(__p);
    }
  }

  v23 = *MEMORY[0x29EDCA608];
}

void sub_299335F90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  (*(*v13 + 16))(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_299336024(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = *(a2 + 1);
  v4 = *a2;
  if (*a2 != v3)
  {
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v40 = 0;
    v41 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    __p = 0;
    v29 = 0;
    v30 = 0;
    while (1)
    {
      v5 = *v4;
      if ((*(**v4 + 88))(*v4))
      {
        break;
      }

      v6 = (*(*v5 + 544))(v5);
      v8 = v7;
      v9 = *(v5 + 87);
      if (v9 >= 0)
      {
        v10 = (v5 + 64);
      }

      else
      {
        v10 = *(v5 + 64);
      }

      if (v9 >= 0)
      {
        v11 = *(v5 + 87);
      }

      else
      {
        v11 = *(v5 + 72);
      }

      v12 = (*(*v5 + 552))(v5);
      v14 = v13;
      if (v8)
      {
        v15 = 2 * v8;
        do
        {
          sub_29922E664(&v37, v6++);
          v15 -= 2;
        }

        while (v15);
      }

      if (v11)
      {
        v16 = 2 * v11;
        do
        {
          sub_29922E664(&v43, v10++);
          v16 -= 2;
        }

        while (v16);
      }

      if (v14)
      {
        v17 = 2 * v14;
        do
        {
          sub_29922E664(&v40, v12++);
          v17 -= 2;
        }

        while (v17);
      }

      v18 = (*(*v5 + 304))(v5);
      if (v18[1] != *v18)
      {
        v19 = 0;
        v20 = 0;
        do
        {
          v27 = (*(*v5 + 352))(v5, v20);
          sub_29922E664(&v34, &v27);
          v27 = (*(*v5 + 320))(v5, v20);
          sub_29922E664(&v31, &v27);
          sub_2992DD840(&__p, (*v18 + v19));
          ++v20;
          v19 += 40;
        }

        while (0xCCCCCCCCCCCCCCCDLL * ((v18[1] - *v18) >> 3) > v20);
      }

      v21 = v29;
      if ((*(v29 - 10) - 5) < 0xFFFFFFFE)
      {
        if (v37)
        {
          if (v38 != v37 && *(v38 - 1) == 32)
          {
            v38 -= 2;
            if (*(v29 - 8))
            {
              --*(v29 - 8);
            }
          }
        }

        if (v43)
        {
          if (v44 != v43 && *(v44 - 1) == 32)
          {
            v44 -= 2;
            if (*(v21 - 7))
            {
              --*(v21 - 7);
            }
          }
        }

        if (v40)
        {
          if (v41 != v40 && *(v41 - 1) == 32)
          {
            v41 -= 2;
            if (*(v21 - 6))
            {
              --*(v21 - 6);
            }
          }
        }
      }

      if (++v4 == v3)
      {
        v22 = **a2;
        v23 = *(*(a2 + 1) - 8);
        (*(*v22 + 112))(v22);
        v24 = v22[55];
        (*(*v23 + 408))(v23);
        (*(*v22 + 416))(v22);
        operator new();
      }
    }

    if (__p)
    {
      v29 = __p;
      operator delete(__p);
    }

    if (v31)
    {
      v32 = v31;
      operator delete(v31);
    }

    if (v34)
    {
      v35 = v34;
      operator delete(v34);
    }

    if (v37)
    {
      v38 = v37;
      operator delete(v37);
    }

    if (v40)
    {
      v41 = v40;
      operator delete(v40);
    }

    if (v43)
    {
      v44 = v43;
      operator delete(v43);
    }
  }

  return 0;
}

void sub_29933654C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26)
{
  MEMORY[0x29C29BFB0](v26, 0x10F3C4074548AAFLL);
  if (__p)
  {
    operator delete(__p);
  }

  if (a19)
  {
    operator delete(a19);
  }

  if (a22)
  {
    operator delete(a22);
  }

  if (a25)
  {
    operator delete(a25);
  }

  v29 = *(v27 - 136);
  if (v29)
  {
    *(v27 - 128) = v29;
    operator delete(v29);
  }

  v30 = *(v27 - 112);
  if (v30)
  {
    *(v27 - 104) = v30;
    operator delete(v30);
  }

  _Unwind_Resume(a1);
}

void sub_299336610(uint64_t a1)
{
  sub_2993836D4(a1 + 248);
  v2 = *(a1 + 56);

  CFArrayRemoveAllValues(v2);
}

void sub_29933664C(uint64_t a1, __CFString *a2, char a3)
{
  if ((a3 & 1) != 0 || CFArrayGetCount(*(a1 + 56)) > 0)
  {
    return;
  }

  if ((*sub_299237120() & 1) == 0)
  {
    v6 = sub_299283910(*(a1 + 224), a2);
    if (v6 < 3)
    {
      v9 = 0;
      v5 = 0;
      if (v6 != 2)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v7 = sub_299336A90(a1, a2, 3uLL, 0, 0, 0);
      v8 = v7 | sub_299336A90(a1, a2, 3uLL, 1uLL, 0, 0);
      v9 = v8 | sub_299336A90(a1, a2, 3uLL, 2uLL, 0, 0);
    }

    v10 = sub_299336A90(a1, a2, 2uLL, 0, 0, 0);
    v5 = v9 | v10 | sub_299336A90(a1, a2, 2uLL, 1uLL, 0, 0);
    goto LABEL_10;
  }

  v5 = 0;
LABEL_10:
  if ((*(a2->isa + 59))(a2))
  {
    v11 = (*(a2->isa + 59))(a2);
    if (CFStringGetLength(v11) && ((*(a2->isa + 68))(a2), v12) && (*(a2->isa + 6))(a2))
    {
      v13 = *MEMORY[0x29EDB8ED8];
      v14 = (*(a2->isa + 59))(a2);
      Copy = CFStringCreateCopy(v13, v14);
      v16 = (*(a2->isa + 68))(a2);
      v18 = CFStringCreateWithCharacters(0, v16, v17);
      v20 = *(*(*(a2->isa + 38))(a2) + 30);
      v22 = 0;
      v23 = 0;
      __p = 0;
      sub_2992220D8(&__p, &v20, &__p, 1);
      sub_29933B084(v24, Copy, v18, 0, 0, &__p, 1);
      if (__p)
      {
        v22 = __p;
        operator delete(__p);
      }

      v19 = sub_29933553C(a1, v24);
      v24[0] = &unk_2A1F72B38;
      if (v25)
      {
        v26 = v25;
        operator delete(v25);
      }

      sub_2993321FC(v24);
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = sub_299336A90(a1, a2, 1uLL, 0, 1, 1);
  }

  if ((v5 | v19) == 1 && os_variant_has_internal_diagnostics() && (sub_29933993C(a1, a2) & 1) == 0)
  {
    sub_29932D5D0(a1, a2);
  }

  sub_299337E98(a1, a2, 0);
}

uint64_t sub_299336A90(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, int a5, int a6)
{
  v163 = *MEMORY[0x29EDCA608];
  if (!a2 || ((*(*a2 + 88))(a2) & 1) != 0 || ((*(*a2 + 200))(a2) & 1) != 0)
  {
    v10 = 0;
    goto LABEL_5;
  }

  v128 = a1;
  if (a5)
  {
    v13 = (*(*a2 + 544))(a2);
    (*(*a2 + 544))(a2);
    if (v14)
    {
      v15 = 0;
      v16 = 1;
      v17 = v14;
      do
      {
        v19 = *v13++;
        v18 = v19;
        if ((v19 - 12449) >= 0x5A && v18 != 12540 && v18 != 12316)
        {
          break;
        }

        v15 = v16++ >= v14;
        --v17;
      }

      while (v17);
      if (!v15)
      {
        if ((*(*a2 + 184))(a2))
        {
          goto LABEL_20;
        }

        if ((*(*a2 + 96))(a2) == 79)
        {
          v23 = *(a2 + 119);
          if (v23 < 0)
          {
            v23 = *(a2 + 104);
          }

          if (v23 <= 8u)
          {
            v24 = (*(*a2 + 544))(a2);
            (*(*a2 + 544))(a2);
            if (!v25)
            {
              goto LABEL_20;
            }

            v26 = v25;
            v27 = a3;
            v28 = 0;
            v29 = 1;
            v30 = v25;
            do
            {
              v31 = *v24++;
              Code = ublock_getCode(v31);
              if ((Code - 58) > 0x25 || ((1 << (Code - 58)) & 0x3000203003) == 0)
              {
                break;
              }

              v28 = v29++ >= v26;
              --v30;
            }

            while (v30);
            a3 = v27;
            a1 = v128;
            if (v28)
            {
LABEL_20:
              v22 = (*(*a2 + 24))(a2);
              (*(*a2 + 232))(a2);
              if (*(a1 + 184))
              {
                *&__dst[8] = 0;
                *&__dst[16] = 0;
                *__dst = &__dst[8];
                sub_2991C6CA8(v155, off_2A145F5D8[0]);
                sub_2992B7C70(__dst, v22);
              }
            }
          }
        }
      }
    }

    v34 = (*(*a2 + 96))(a2);
    v35 = (*(*a2 + 408))(a2);
    v36 = (v34 - 65) < 0x15 && ((0x107A01u >> (v34 - 65)) & 1) != 0 || v34 == 80 && v35 == 0;
    v120 = v36;
  }

  else
  {
    v120 = 0;
  }

  v38 = (*(*a2 + 304))(a2);
  v40 = *v38;
  v39 = v38[1];
  v41 = sub_2993652F8(6u);
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
  {
    v105 = (*(*a2 + 24))(a2);
    v106 = (*(*a2 + 56))(a2);
    v107 = (*(*a2 + 232))(a2);
    *__dst = 138414082;
    *&__dst[4] = v105;
    *&__dst[12] = 2112;
    *&__dst[14] = v106;
    *&__dst[22] = 2112;
    v143 = v107;
    v144 = 2048;
    *v145 = a3;
    *&v145[8] = 2048;
    *&v145[10] = a4;
    *&v145[18] = 1024;
    *&v145[20] = a5;
    v146 = 1024;
    v147 = v120;
    v148 = 1024;
    v149 = a6;
    _os_log_debug_impl(&dword_29918C000, v41, OS_LOG_TYPE_DEBUG, "[MJL::registerPhraseSequence] S:%@ AS:%@ DR:%@ phraseSize:%lu skipPhraseCount:%lu NonPhraseLearning:%d lexicalLearning:%d shouldLearnBigram:%d", __dst, 0x46u);
  }

  v42 = (*(*a2 + 544))(a2);
  v45 = (a2 + 96);
  if (*(a2 + 119) < 0)
  {
    v45 = *v45;
  }

  *v155 = v42;
  v156 = 0;
  v158 = 0u;
  v159 = 0u;
  v157 = v45;
  v160 = 0;
  v46 = *(a1 + 112);
  if (v46)
  {
    v47 = *(a1 + 104);
    v48 = objc_msgSend_rawCandidate(*(a1 + 112), v43, v44);
    v49 = (*(*v48 + 88))(v48);
    v52 = v47 ? v49 : 1;
    if ((v52 & 1) == 0)
    {
      v53 = objc_msgSend_rawCandidate(v46, v50, v51);
      if (((*(*v53 + 88))(v53) & 1) == 0)
      {
        v94 = sub_2992896C0(v46, v54, v55);
        v97 = sub_2992896C0(v47, v95, v96);
        MutableCopy = 0;
        if (!v94 || !v97)
        {
          goto LABEL_56;
        }

        v99 = *(a1 + 256);
        v98 = *(a1 + 264);
        if (0xCCCCCCCCCCCCCCCDLL * ((v98 - v99) >> 3) > (*(*v97 + 6))(v97))
        {
          (*(*v94 + 68))(v94);
          if (v100 == 1 && (v101 = *(a1 + 224), v102 = (*(*v94 + 44))(v94, 0), *(v101 + 88) <= v102) && *(v101 + 90) >= v102)
          {
            v109 = *(a1 + 256);
            v108 = *(a1 + 264);
            v110 = (*(*v97 + 6))(v97);
            v111 = *(*(a1 + 328) + 8 * sub_299273C0C((a1 + 248), ~v110 - 0x3333333333333333 * ((v108 - v109) >> 3)));
            v112 = *(a1 + 280);
            v113 = (*(a1 + 288) - v112) >> 1;
            if (v113 <= v111)
            {
              v114 = 0;
            }

            else
            {
              v114 = (v112 + 2 * v111);
            }

            if (v112)
            {
              v115 = v113 - v111;
            }

            else
            {
              v115 = 0;
            }

            if (v113 <= v111)
            {
              v116 = 0;
            }

            else
            {
              v116 = v115;
            }

            (*(*v97 + 68))(v97);
            MutableCopy = 0;
            if (v114 && v116 >= v117)
            {
              MutableCopy = CFStringCreateWithCharacters(0, v114, v116 - v117);
            }
          }

          else
          {
            v103 = (*(*v94 + 3))(v94);
            MutableCopy = CFStringCreateMutableCopy(0, 0, v103);
            if (MutableCopy)
            {
              v104 = MutableCopy;
              CFStringTrimWhitespace(MutableCopy);
              MutableCopy = v104;
            }
          }

          goto LABEL_56;
        }
      }
    }
  }

  MutableCopy = 0;
LABEL_56:
  cf = MutableCopy;
  v139 = MutableCopy;
  v138 = 0;
  v136[0] = 0;
  v136[1] = 0;
  v137 = 0;
  v134[0] = 0;
  v134[1] = 0;
  v135 = 0;
  v57 = (*(*a2 + 48))(a2);
  sub_299383450((a1 + 248), v57, v136, v134, &v138 + 1, &v138);
  if (v39 == v40)
  {
    LOBYTE(v127) = 0;
  }

  else
  {
    v127 = 0;
    v58 = 0;
    v59 = 0xCCCCCCCCCCCCCCCDLL * ((v39 - v40) >> 3);
    v118 = a3 - a4;
    v126 = v59 - 1;
    v119 = 0;
    if (v59 <= 1)
    {
      v59 = 1;
    }

    v122 = v59;
    do
    {
      v60 = a3;
      v61 = sub_2992C77D8(a2, v58);
      v63 = v62;
      v132 = sub_2992C71F4(a2, v58);
      v133 = v64;
      if (!v63 || !v64)
      {
        break;
      }

      v65 = (*(*a2 + 352))(a2, v58);
      v129 = v58 + 1;
      v66 = (*(*a2 + 344))(a2);
      if (sub_299342724(v132, v133, v65))
      {
        if (v65 <= 0x64F)
        {
          v121 = word_299409CC8[v65];
        }

        else
        {
          v121 = 0;
        }

        if (v138 <= 0x64FuLL)
        {
          v67 = word_299409CC8[v138];
        }

        else
        {
          v67 = 0;
        }

        if (HIWORD(v138) <= 0x64FuLL)
        {
          v68 = word_299409CC8[HIWORD(v138)];
        }

        else
        {
          v68 = 0;
        }

        if (v66 <= 0x64F)
        {
          v69 = word_299409CC8[v66];
        }

        else
        {
          v69 = 0;
        }

        memset(buf, 0, sizeof(buf));
        v162 = 0;
        if (v58 < v126)
        {
          v140 = sub_2992C71F4(a2, v129);
          v141[0] = v70;
          sub_29923A9CC(&v140, __dst);
          if (SHIBYTE(v162) < 0)
          {
            operator delete(*buf);
          }

          *buf = *__dst;
          v162 = *&__dst[16];
        }

        sub_29933B184(__dst, v134, v136, xmmword_299417CF0, buf, xmmword_299417CF0, v67, v68, v121, v69, 0);
        v72 = *(a2 + 87);
        v73 = *(a2 + 64);
        if (v72 >= 0)
        {
          v73 = (a2 + 64);
        }

        if (v72 < 0)
        {
          v72 = *(a2 + 72);
        }

        v74 = sub_29933F890(v128 + 376, v61, v63, v132, v133, __dst, v120, v71, v73, v72);
        if (v154 < 0)
        {
          operator delete(__p);
        }

        if (v152 < 0)
        {
          operator delete(v151);
        }

        if (v150 < 0)
        {
          operator delete(*&v145[14]);
        }

        if ((v145[13] & 0x80000000) != 0)
        {
          operator delete(v143);
        }

        if ((__dst[23] & 0x80000000) != 0)
        {
          operator delete(*__dst);
        }

        if (SHIBYTE(v162) < 0)
        {
          operator delete(*buf);
        }

        v127 |= v74;
      }

      if (SHIBYTE(v135) < 0)
      {
        operator delete(v134[0]);
      }

      *v134 = *v136;
      v135 = v137;
      HIBYTE(v137) = 0;
      LOWORD(v136[0]) = 0;
      sub_29923A9CC(&v132, __dst);
      if (SHIBYTE(v137) < 0)
      {
        operator delete(v136[0]);
      }

      *v136 = *__dst;
      v137 = *&__dst[16];
      LOWORD(v138) = HIWORD(v138);
      HIWORD(v138) = v65;
      v75 = v133;
      *__dst = (*(*a2 + 352))(a2, v58);
      v76 = v156 + v75;
      if (!*v155)
      {
        v76 = 0;
      }

      v77 = v157 ? v158 + v63 : 0;
      v156 = v76;
      *&v158 = v77;
      if (v76 > 0x20 || v77 > 0x20)
      {
        break;
      }

      DWORD2(v158) |= 1 << (v76 - 1);
      HIDWORD(v158) |= 1 << (v77 - 1);
      sub_29922E664(&v159, __dst);
      a3 = v60;
      if (v60 || v58 != v126)
      {
        if (!v60 || (sub_299255944(*(v128 + 224), v65, v66) & 1) == 0 && v58 != v126)
        {
          continue;
        }

        ++v119;
        if ((v118 + v119) % v60)
        {
          continue;
        }
      }

      v78 = v156;
      if (v156 < 3 || (v79 = *v155, !sub_299281A24(**v155)) && !sub_299281A24(v79[v78 - 1]))
      {
        if (v60 && v119 <= a4)
        {
          if (cf)
          {
            CFRelease(cf);
          }

          v80 = 0;
          v139 = 0;
        }

        else
        {
          v131 = CFStringCreateWithCharacters(0, v157, v158);
          v130 = CFStringCreateWithCharacters(0, *v155, v156);
          sub_29933B084(__dst, v131, v130, SHIDWORD(v158), SDWORD2(v158), &v159, (*(&v159 + 1) - v159) >> 1);
          if (v143 > 0xFF)
          {
            v81 = 0;
          }

          else
          {
            v81 = sub_29933553C(v128, __dst);
          }

          if (*(v128 + 176) && a6 && cf && v81)
          {
            Length = CFStringGetLength(cf);
            cf = v139;
            if (Length != 1)
            {
              goto LABEL_137;
            }

            CharacterAtIndex = CFStringGetCharacterAtIndex(v139, 0);
            v84 = asc_29945D8FC;
            v85 = 14;
            do
            {
              v86 = v85 >> 1;
              v87 = &v84[v85 >> 1];
              v89 = *v87;
              v88 = v87 + 1;
              v85 += ~(v85 >> 1);
              if (v89 < CharacterAtIndex)
              {
                v84 = v88;
              }

              else
              {
                v85 = v86;
              }
            }

            while (v85);
            if (v84 == &unk_29945D918 || *v84 > CharacterAtIndex)
            {
LABEL_137:
              if (cf)
              {
                if (*(v128 + 176))
                {
                  if (*&__dst[16])
                  {
                    if (*&__dst[8])
                    {
                      v90 = CFStringGetLength(cf);
                      v91 = CFStringGetLength(*&__dst[16]);
                      v92 = CFStringGetLength(*&__dst[8]);
                      if ((v91 - 33) >= 0xFFFFFFFFFFFFFFE0 && (v92 - 33) >= 0xFFFFFFFFFFFFFFE0 && v90 && sub_2992835E8(*&__dst[16], *&__dst[8]))
                      {
                        v141[0] = 0;
                        v141[1] = 0;
                        v140 = v141;
                        sub_2991C6CA8(buf, "FirstSurface");
                        sub_2992B7C70(&v140, cf);
                      }
                    }
                  }
                }
              }
            }
          }

          if (v81)
          {
            v80 = v130;
            v130 = 0;
          }

          else
          {
            v80 = 0;
          }

          if (cf)
          {
            CFRelease(cf);
          }

          v139 = v80;
          *__dst = &unk_2A1F72B38;
          if (*&v145[6])
          {
            *&v145[14] = *&v145[6];
            operator delete(*&v145[6]);
          }

          sub_2993321FC(__dst);
          if (v130)
          {
            CFRelease(v130);
          }

          if (v131)
          {
            CFRelease(v131);
          }

          v127 |= v81;
        }

        *v155 += 2 * v156;
        v156 = 0;
        v93 = &v157[v158];
        v158 = 0uLL;
        v157 = v93;
        *(&v159 + 1) = v159;
        cf = v80;
      }

      v58 = v129;
    }

    while (v129 != v122);
  }

  if (SHIBYTE(v135) < 0)
  {
    operator delete(v134[0]);
  }

  v10 = v127;
  if (SHIBYTE(v137) < 0)
  {
    operator delete(v136[0]);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v159)
  {
    *(&v159 + 1) = v159;
    operator delete(v159);
  }

LABEL_5:
  v11 = *MEMORY[0x29EDCA608];
  return v10 & 1;
}

void sub_299337E98(void *a1, const __CFString *a2, char a3)
{
  v88 = *MEMORY[0x29EDCA608];
  if (!a2)
  {
    goto LABEL_80;
  }

  v4 = a2;
  if ((*(a2->isa + 11))(a2))
  {
    goto LABEL_80;
  }

  v6 = a1[30];
  if (!v6)
  {
    goto LABEL_80;
  }

  v7 = 0xCCCCCCCCCCCCCCCDLL * ((a1[33] - a1[32]) >> 3);
  if (a3)
  {
    v8 = 0;
  }

  else
  {
    v8 = (*(v4->isa + 6))(v4);
    v6 = a1[30];
  }

  v9 = (v7 - v8);
  v10 = v7 - v8 - *(v6 + 32);
  if (v10 < 0)
  {
    v11 = -1;
  }

  else
  {
    v11 = v10;
  }

  v12 = v11 + 1;
  v13 = v9 - v11 - 1;
  v14 = (*(v4->isa + 6))(v4);
  v15 = *MEMORY[0x29EDB8ED8];
  v16 = MEMORY[0x29EDB9000];
  theArray = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], &v13[v14], MEMORY[0x29EDB9000]);
  v79 = theArray;
  v65 = v13;
  Mutable = CFArrayCreateMutable(v15, &v13[v14], v16);
  v78 = Mutable;
  v77 = 1;
  LODWORD(v76[0]) = 32;
  v73 = Mutable;
  alloc = v15;
  if (v9 > v11 + 1)
  {
    str = v9;
    contentsDeallocator = *MEMORY[0x29EDB8EE8];
    v18 = 40 * v11;
    v67 = v4;
    do
    {
      v19 = *(a1[41] + 8 * v12);
      v20 = a1[35];
      if (v19 >= (a1[36] - v20) >> 1)
      {
        v21 = 0;
        v22 = 0;
      }

      else
      {
        v21 = (v20 + 2 * v19);
        if (v20)
        {
          v22 = *(a1[32] + v18 + 64);
        }

        else
        {
          v22 = 0;
        }
      }

      v23 = a1;
      if (v77 >= 0)
      {
        v24 = v77;
      }

      else
      {
        v24 = v76[1];
      }

      v82.__r_.__value_.__r.__words[0] = v21;
      v82.__r_.__value_.__l.__size_ = v22;
      if (v77 >= 0)
      {
        v25 = v76;
      }

      else
      {
        v25 = v76[0];
      }

      v26 = sub_2992FE218(&v82, v25, v24);
      v27 = 0;
      v28 = 0;
      v29 = v22 - v24;
      if (!v21)
      {
        v29 = 0;
      }

      if (v26)
      {
        v22 = v29;
      }

      v30 = *(v23[44] + 8 * v12);
      v31 = v23[38];
      if (v30 < (v23[39] - v31) >> 1)
      {
        v27 = (v31 + 2 * v30);
        if (v31)
        {
          v28 = *(v23[32] + v18 + 68);
        }

        else
        {
          v28 = 0;
        }
      }

      v82.__r_.__value_.__r.__words[0] = v27;
      v82.__r_.__value_.__l.__size_ = v28;
      v32 = sub_2992FE218(&v82, v25, v24);
      v33 = v28 - v24;
      if (!v27)
      {
        v33 = 0;
      }

      if (v32)
      {
        v34 = v33;
      }

      else
      {
        v34 = v28;
      }

      v35 = CFStringCreateWithCharactersNoCopy(alloc, v21, v22, contentsDeallocator);
      v82.__r_.__value_.__r.__words[0] = v35;
      CFArrayAppendValue(theArray, v35);
      a1 = v23;
      v15 = alloc;
      Mutable = v73;
      v4 = v67;
      v36 = CFStringCreateWithCharactersNoCopy(alloc, v27, v34, contentsDeallocator);
      *&__p = v36;
      CFArrayAppendValue(v73, v36);
      if (v36)
      {
        CFRelease(v36);
      }

      if (v35)
      {
        CFRelease(v35);
      }

      ++v12;
      v18 += 40;
    }

    while (v12 < str);
  }

  v37 = (*(v4->isa + 38))(v4);
  v39 = *v37;
  v38 = *(v37 + 1);
  stra = (*(v4->isa + 3))(v4);
  contentsDeallocatora = v37;
  v68 = (*(v4->isa + 29))(v4);
  v64 = a1;
  if (v38 != v39)
  {
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0xCCCCCCCCCCCCCCCDLL * ((v38 - v39) >> 3);
    if (v43 <= 1)
    {
      v43 = 1;
    }

    v66 = v43;
    v44 = 24;
    do
    {
      v45 = *(*contentsDeallocatora + v44);
      v46 = (*(v4->isa + 40))(v4, v42);
      v89.location = v40;
      v89.length = v45;
      v47 = CFStringCreateWithSubstring(v15, stra, v89);
      v90.location = v41;
      v90.length = v46;
      v48 = CFStringCreateWithSubstring(v15, v68, v90);
      CFArrayAppendValue(theArray, v47);
      CFArrayAppendValue(Mutable, v48);
      CFRelease(v47);
      CFRelease(v48);
      v40 += v45;
      v41 += v46;
      ++v42;
      v44 += 40;
      v15 = alloc;
    }

    while (v66 != v42);
  }

  v49 = sub_2993652F8(6u);
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
  {
    v60 = (*(v4->isa + 3))(v4);
    v61 = (*(v4->isa + 7))(v4);
    v62 = (*(v4->isa + 29))(v4);
    LODWORD(v82.__r_.__value_.__l.__data_) = 138413314;
    *(v82.__r_.__value_.__r.__words + 4) = v60;
    WORD2(v82.__r_.__value_.__r.__words[1]) = 2112;
    *(&v82.__r_.__value_.__r.__words[1] + 6) = v61;
    HIWORD(v82.__r_.__value_.__r.__words[2]) = 2112;
    v83 = v62;
    v84 = 2112;
    v85 = @"online";
    v86 = 2048;
    v87 = v65;
    _os_log_debug_impl(&dword_29918C000, v49, OS_LOG_TYPE_DEBUG, "[MJL::incrementUsageCount] %@ (%@/%@) type:%@ contextWordCount:%ld", &v82, 0x34u);
  }

  v50 = sub_2993652F8(6u);
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
  {
    v51 = 0;
    memset(&v82, 0, sizeof(v82));
    while (v51 < CFArrayGetCount(theArray))
    {
      if (v65 == v51)
      {
        std::string::append(&v82, "|| ", 3uLL);
      }

      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v51);
      sub_299278568(ValueAtIndex, &__p);
      if ((v81 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if ((v81 & 0x80u) == 0)
      {
        v54 = v81;
      }

      else
      {
        v54 = *(&__p + 1);
      }

      std::string::append(&v82, p_p, v54);
      if (v81 < 0)
      {
        operator delete(__p);
      }

      std::string::push_back(&v82, 47);
      v55 = CFArrayGetValueAtIndex(v73, v51);
      sub_299278568(v55, &__p);
      if ((v81 & 0x80u) == 0)
      {
        v56 = &__p;
      }

      else
      {
        v56 = __p;
      }

      if ((v81 & 0x80u) == 0)
      {
        v57 = v81;
      }

      else
      {
        v57 = *(&__p + 1);
      }

      std::string::append(&v82, v56, v57);
      if (v81 < 0)
      {
        operator delete(__p);
      }

      std::string::push_back(&v82, 32);
      ++v51;
    }

    v58 = sub_2993652F8(6u);
    Mutable = v73;
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
    {
      v63 = &v82;
      if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v63 = v82.__r_.__value_.__r.__words[0];
      }

      LODWORD(__p) = 136315138;
      *(&__p + 4) = v63;
      _os_log_debug_impl(&dword_29918C000, v58, OS_LOG_TYPE_DEBUG, "[MJL::incrementUsageCount] %s", &__p, 0xCu);
    }

    if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v82.__r_.__value_.__l.__data_);
    }
  }

  sub_29933A230(v64, 0, theArray, Mutable, v65, 0);
  if (v77 < 0)
  {
    operator delete(v76[0]);
    if (!Mutable)
    {
      goto LABEL_78;
    }

    goto LABEL_77;
  }

  if (Mutable)
  {
LABEL_77:
    CFRelease(Mutable);
  }

LABEL_78:
  if (theArray)
  {
    CFRelease(theArray);
  }

LABEL_80:
  v59 = *MEMORY[0x29EDCA608];
}

void sub_299338634(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, const void *a24, const void *a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a38 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  sub_2992530BC(&a24, 0);
  sub_2992530BC(&a25, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_299338718(uint64_t a1, void *a2, uint64_t a3)
{
  result = sub_2992878A0(a2, a2, a3);
  if (result)
  {
    v7 = objc_msgSend_rawCandidate(a2, v5, v6);
    if (v7)
    {
      return (*(*v7 + 88))(v7) ^ 1;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

__CFString *sub_299338780(uint64_t a1, uint64_t a2)
{
  if (((*(*a2 + 416))(a2) & 0x4000000) != 0)
  {
    v5 = off_29EF10540;
  }

  else
  {
    v3 = (*(*a2 + 416))(a2);
    v4 = sub_299322EB0(v3);
    v5 = off_29EF10520;
    if (v4)
    {
      v5 = off_29EF10538;
    }
  }

  return *v5;
}

uint64_t sub_299338830(uint64_t a1, uint64_t a2)
{
  if (a2 && ((*(*a2 + 88))(a2) & 1) == 0 && (*(*a2 + 72))(a2) != 7)
  {
    v32 = (*(*a2 + 48))(a2);
    memset(__p, 0, sizeof(__p));
    v4 = (*(*a2 + 544))(a2);
    v5 = (*(*a2 + 552))(a2);
    if (v32)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = v4;
      v10 = 0;
      v39 = v9;
      v11 = v5;
      do
      {
        v12 = (*(*a2 + 128))(a2, v6);
        v35 = v7;
        v36 = (*(*a2 + 312))(a2, v6);
        v13 = (*(*a2 + 320))(a2, v6);
        v14 = v12;
        v37 = v8;
        v33 = v10;
        v15 = (*(*(*a2 + 304))(a2) + v10);
        v16 = v15[1];
        v34 = *v15;
        v17 = v15[3];
        v18 = (*(*a2 + 344))(a2, v6);
        v19 = (*(*a2 + 352))(a2, v6);
        v40 = 0;
        if (!v17 || (v17 >> 28 ? (v20 = v17 >> 28 == 5) : (v20 = 1), !v20))
        {
          v21 = **(a1 + 512);
          v22 = (*(**(a1 + 208) + 232))(*(a1 + 208));
          sub_299322E10(v21, v22);
          v52[1] = v52;
          v52[2] = 0x2000000000;
          v53 = 0;
          v23 = v13;
          if (!v11)
          {
            v23 = 0;
          }

          v51 = v23;
          v52[0] = 0;
          v24 = v14;
          if (!v39)
          {
            v24 = 0;
          }

          v48 = v39;
          v49 = v24;
          v50 = v11;
          *&v42 = MEMORY[0x29EDCA5F8];
          *(&v42 + 1) = 0x40000000;
          v43 = sub_299339188;
          v44 = &unk_29EF13080;
          v47 = v19;
          v45 = v52;
          v46 = &v40;
          sub_2993E4D48();
        }

        v40 = v16;
        if (!(v18 | v19))
        {
          v25 = (*(*a2 + 24))(a2);
          if (sub_299278154(v25))
          {
            v18 = *(*(a1 + 224) + 50);
            v19 = v18;
          }

          else
          {
            v18 = 0;
            v19 = 0;
          }
        }

        v42 = 0u;
        v43 = 0;
        LOWORD(v44) = v14;
        WORD1(v44) = v36;
        WORD2(v44) = v13;
        HIWORD(v44) = v18;
        v45 = v19;
        DWORD1(v42) = v40;
        v26 = (*(*a2 + 248))(a2, 0, 0);
        BYTE5(v45) = BYTE5(v45) & 0xFE | v26;
        LODWORD(v42) = v34;
        sub_2992DD840(__p, &v42);
        v11 += 2 * v13;
        v39 += 2 * v14;
        v8 = v40 + v37 + (*(**(a1 + 208) + 64))(*(a1 + 208), v35, v18);
        ++v6;
        v10 = v33 + 40;
        v7 = v19;
      }

      while (v32 != v6);
    }

    else
    {
      v19 = 0;
    }

    (*(**(a1 + 208) + 64))(*(a1 + 208), v19, 0);
    v27 = *(a2 + 87);
    if (v27 < 0)
    {
      v28 = *(a2 + 64);
    }

    if (v27 >= 0)
    {
      v29 = *(a2 + 87);
    }

    else
    {
      v29 = *(a2 + 72);
    }

    v30 = *(a2 + 220);
    (*(*a2 + 376))(a2);
    (*(*a2 + 96))(a2);
    (*(*a2 + 408))(a2);
    (*(*a2 + 416))(a2);
    v31 = *(a1 + 216);
    operator new();
  }

  return 0;
}

void sub_2993390CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  MEMORY[0x29C29BFB0](v27, 0x10F3C40C8E81E66);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_299339188(uint64_t result, uint64_t a2, _BYTE *a3)
{
  v3 = *(a2 + 94);
  if (v3 == *(result + 48) && *(a2 + 92) == v3)
  {
    **(result + 40) = *(a2 + 84);
    *a3 = 1;
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

id sub_2993391C8(uint64_t a1, void *a2, uint64_t a3)
{
  v53 = *MEMORY[0x29EDCA608];
  v4 = objc_msgSend_rawCandidate(a2, a2, a3);
  if ((*(*v4 + 88))(v4))
  {
    v7 = a2;
    if (a2)
    {
      v8 = objc_msgSend_rawCandidate(a2, a2, v6);
      v9 = (*(*v8 + 88))(v8);
      v7 = a2;
      if (v9)
      {
        Surface = MecabraCandidateGetSurface(a2, a2, v10);
        sub_299276BDC(Surface, v46);
        AnalysisString = MecabraCandidateGetAnalysisString(a2, v12, v13);
        sub_299276BDC(AnalysisString, &v43);
        __p[0] = 0;
        if ((**(a1 + 512) & 0x20) == 0)
        {
          v17 = MecabraCandidateGetAnalysisString(a2, v15, v16);
          sub_299276A84(v17);
        }

        v35 = MecabraCandidateGetAnalysisString(a2, v15, v16);
        sub_299217634(v35);
      }
    }
  }

  else
  {
    v18 = objc_msgSend_rawCandidate(a2, v5, v6);
    if ((*(*v18 + 72))(v18) == 7)
    {
      v7 = a2;
      if (a2)
      {
        v20 = objc_msgSend_rawCandidate(a2, a2, v19);
        v7 = a2;
        if (v20)
        {
          v22 = objc_msgSend_rawCandidate(a2, a2, v21);
          v23 = (*(*v22 + 72))(v22);
          v7 = a2;
          if (v23 == 7)
          {
            LOWORD(v46[0]) = 9787;
            v44 = 0;
            v45 = 0;
            v43 = 0;
            sub_2992220D8(&v43, v46, v46 + 2, 1);
            v26 = MecabraCandidateGetSurface(a2, v24, v25);
            sub_299276BDC(v26, &v41);
            v52 = 131328;
            v51 = 0;
            memset(v46, 0, sizeof(v46));
            v47 = (v42 - v41) >> 1;
            v48 = (v44 - v43) >> 1;
            v49 = v48;
            v50 = 105317959;
            memset(__p, 0, sizeof(__p));
            sub_2992DBD58(__p, v46, &v53, 1uLL);
            v27 = *(a1 + 512);
            v28 = *(a1 + 216);
            operator new();
          }
        }
      }
    }

    else
    {
      v7 = a2;
      if (a2)
      {
        v29 = objc_msgSend_rawCandidate(a2, a2, v19);
        v30 = (*(*v29 + 88))(v29);
        v7 = a2;
        if ((v30 & 1) == 0)
        {
          v32 = sub_2992896C0(a2, a2, v31);
          v33 = sub_299338830(a1, v32);
          v34 = sub_29928A270(v33);
          v7 = a2;
          if (v34)
          {
            v36 = *MEMORY[0x29EDCA608];
            return v34;
          }
        }
      }
    }
  }

  v38 = *MEMORY[0x29EDCA608];

  return v7;
}

void sub_299339734(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_2993398A8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_rawCandidate(a2, a2, a3);
  if ((*(*v5 + 88))(v5))
  {

    sub_2993836D4(a1 + 248);
  }

  else
  {
    v8 = sub_2992896C0(a2, v6, v7);

    sub_299383210(a1 + 248, v8);
  }
}

uint64_t sub_29933993C(uint64_t a1, void *a2)
{
  v73 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    (*(*a2 + 552))(a2);
    if (!v4)
    {
      goto LABEL_52;
    }

    (*(*a2 + 544))(a2);
    if (!v5 || ((*(*a2 + 176))(a2) & 1) != 0 || (*(*a2 + 96))(a2) == 89 || (*(*a2 + 96))(a2) == 85 || (*(*a2 + 96))(a2) == 76)
    {
      goto LABEL_52;
    }

    for (i = a2[17]; i != a2[18]; i += 10)
    {
      if (*i == 4)
      {
        goto LABEL_52;
      }
    }

    if ((*(*a2 + 96))(a2) == 83 || (*(*a2 + 96))(a2) == 79)
    {
      goto LABEL_52;
    }

    v15 = (*(*a2 + 304))(a2);
    v61 = 0;
    v62 = 0;
    __p = 0;
    sub_29921E8E0(&__p, *v15, v15[1], 0xCCCCCCCCCCCCCCCDLL * ((v15[1] - *v15) >> 3));
    v16 = __p;
    if (v61 == __p)
    {
LABEL_45:
      v38 = 0;
    }

    else
    {
      v17 = 0;
      while (1)
      {
        v18 = v16[10 * v17];
        if (v18)
        {
          v19 = v18 == 10;
        }

        else
        {
          v19 = 1;
        }

        v20 = !v19;
        v59 = v20;
        v21 = sub_2992C71F4(a2, v17);
        numChars = v22;
        v23 = v21;
        chars = sub_2992C77D8(a2, v17);
        v25 = v24;
        if (v24)
        {
          v26 = 0;
          v27 = chars;
          v28 = 1;
          v29 = v24;
          do
          {
            v31 = *v27++;
            v30 = v31;
            if ((v31 - 12353) >= 0x56 && v30 != 12540 && v30 != 12316)
            {
              break;
            }

            v26 = v28++ >= v24;
            --v29;
          }

          while (v29);
          v58 = !v26;
        }

        else
        {
          v58 = 0;
        }

        v34 = *v23;
        v57 = v34 != 9787 && (u_charType(v34) - 19) < 0xB;
        v35 = sub_2993652F8(6u);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          v36 = CFStringCreateWithCharacters(0, v23, numChars);
          v37 = CFStringCreateWithCharacters(0, chars, v25);
          *buf = 134218754;
          v64 = v17 + 1;
          v65 = 2112;
          v66 = v36;
          v67 = 2112;
          v68 = v37;
          v69 = 1024;
          LODWORD(v70) = v18;
          _os_log_debug_impl(&dword_29918C000, v35, OS_LOG_TYPE_DEBUG, "[MecabraJapanese::isValidLearningCandidate] %zu-th Word validation: (%@/%@), kind: %d", buf, 0x26u);
        }

        if ((v59 | v58 | v57))
        {
          break;
        }

        ++v17;
        v16 = __p;
        if (v17 >= 0xCCCCCCCCCCCCCCCDLL * ((v61 - __p) >> 3))
        {
          goto LABEL_45;
        }
      }

      v39 = sub_2993652F8(6u);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        v64 = v17 + 1;
        _os_log_debug_impl(&dword_29918C000, v39, OS_LOG_TYPE_DEBUG, "[MecabraJapanese::isValidLearningCandidate] %zu-th Word validation: skipped.", buf, 0xCu);
      }

      v38 = 1;
      v16 = __p;
    }

    if (v16)
    {
      v61 = v16;
      operator delete(v16);
    }

    if (v38)
    {
LABEL_52:
      v40 = sub_2993652F8(6u);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        v43 = (*(*a2 + 24))(a2);
        v44 = (*(*a2 + 56))(a2);
        v45 = (*(*a2 + 232))(a2);
        v46 = (*(*a2 + 96))(a2);
        *buf = 138413058;
        v64 = v43;
        v65 = 2112;
        v66 = v44;
        v67 = 2112;
        v68 = v45;
        v69 = 1024;
        LODWORD(v70) = v46;
        _os_log_debug_impl(&dword_29918C000, v40, OS_LOG_TYPE_DEBUG, "[MecabraJapanese::isValidLearningCandidate] Skipped validation: %@ (%@/%@), kind: %c", buf, 0x26u);
      }

      v9 = 1;
    }

    else
    {
      if ((atomic_load_explicit(&qword_2A1461128, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1461128))
      {
        qword_2A1461130 = &unk_29945D8EA;
        qword_2A1461138 = 8;
        __cxa_guard_release(&qword_2A1461128);
      }

      v47 = (*(*a2 + 552))(a2);
      if (v48 == qword_2A1461138 && !memcmp(v47, qword_2A1461130, 2 * v48))
      {
        v9 = 0;
      }

      else
      {
        v9 = sub_29933AD08(a1, a2);
      }

      v49 = sub_2993652F8(6u);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
      {
        if (v9)
        {
          v50 = "true";
        }

        else
        {
          v50 = "false";
        }

        v51 = (*(*a2 + 24))(a2);
        v52 = (*(*a2 + 56))(a2);
        v53 = (*(*a2 + 232))(a2);
        v54 = (*(*a2 + 96))(a2);
        *buf = 136316162;
        v64 = v50;
        v65 = 2112;
        v66 = v51;
        v67 = 2112;
        v68 = v52;
        v69 = 2112;
        v70 = v53;
        v71 = 1024;
        v72 = v54;
        _os_log_debug_impl(&dword_29918C000, v49, OS_LOG_TYPE_DEBUG, "[MecabraJapanese::isValidLearningCandidate] %s: %@ (%@/%@), kind: %c", buf, 0x30u);
      }
    }
  }

  else
  {
    v7 = sub_2993652F8(6u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v10 = v8;
      v11 = v8[3](0);
      v12 = v10[7](0);
      v13 = v10[29](0);
      v14 = v10[12](0);
      *buf = 138413058;
      v64 = v11;
      v65 = 2112;
      v66 = v12;
      v67 = 2112;
      v68 = v13;
      v69 = 1024;
      LODWORD(v70) = v14;
      _os_log_debug_impl(&dword_29918C000, v7, OS_LOG_TYPE_DEBUG, "[MecabraJapanese::isValidLearningCandidate] Failed to convert to Japanese Conversion Candidate: %@ (%@/%@), kind: %c", buf, 0x26u);
    }

    v9 = 0;
  }

  v41 = *MEMORY[0x29EDCA608];
  return v9;
}

void sub_29933A1FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29933A230(uint64_t a1, uint64_t a2, const __CFArray *a3, const __CFArray *a4, uint64_t a5, double *a6)
{
  if (!*(a1 + 240))
  {
    return 0;
  }

  sub_29933A3E4(a3, a4, v14);
  v11 = v14[0];
  if (v14[0] != v14[1])
  {
    v12 = sub_29933A6E0(a1, a2, a3, v14, a5, a6) > 0;
    if (!v11)
    {
      return v12;
    }

    goto LABEL_7;
  }

  v12 = 0;
  if (v14[0])
  {
LABEL_7:
    operator delete(v11);
  }

  return v12;
}

void sub_29933A2DC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29933A2F4(uint64_t a1, uint64_t a2, CFArrayRef theArray, uint64_t a4, double *a5)
{
  Count = CFArrayGetCount(theArray);
  Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], Count, MEMORY[0x29EDB9000]);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      v14 = sub_299327878(*(a1 + 232), ValueAtIndex);
      CFArrayAppendValue(Mutable, v14);
      CFRelease(v14);
    }
  }

  v15 = sub_29933A230(a1, a2, theArray, Mutable, a4, a5);
  CFRelease(Mutable);
  return v15;
}

void sub_29933A3E4(const __CFArray *a1@<X2>, const __CFArray *a2@<X3>, uint64_t a3@<X8>)
{
  v10 = *MEMORY[0x29EDCA608];
  __p[0] = 0;
  __p[1] = 0;
  v9 = 0;
  sub_2992141C0(__p, &dword_299417CE8);
  if (CFArrayGetCount(a1) >= 1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, 0);
    CFArrayGetValueAtIndex(a2, 0);
    sub_299276A84(ValueAtIndex);
  }

  sub_2992141C0(__p, &dword_299417CEC);
  *a3 = *__p;
  *(a3 + 16) = v9;
  v6 = *MEMORY[0x29EDCA608];
}

void sub_29933A660(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29933A6E0(uint64_t a1, uint64_t a2, const __CFArray *a3, uint64_t *a4, uint64_t a5, double *a6)
{
  v38 = *MEMORY[0x29EDCA608];
  v10 = sub_2993652F8(7u);
  v33 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
  v11 = *a4;
  v12 = (a4[1] - *a4) >> 2;
  if (v12 > a5)
  {
    v34 = 0;
    while (1)
    {
      if (a2 != 1 || a5 < 1 || a5 >= v12 - 1)
      {
        goto LABEL_8;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(a3, a5 - 1);
      if ((sub_299281EBC(ValueAtIndex) & 1) == 0)
      {
        break;
      }

LABEL_37:
      ++a5;
      v11 = *a4;
      v12 = (a4[1] - *a4) >> 2;
      if (a5 >= v12)
      {
        goto LABEL_43;
      }
    }

    v11 = *a4;
LABEL_8:
    v14 = *(a1 + 240);
    v15 = a5 - *(v14 + 32);
    if (v15 >= -1)
    {
      v16 = v15 + 1;
    }

    else
    {
      v16 = 0;
    }

    v17 = a5 - v16;
    if (v33)
    {
      v18 = sub_2993F62C8(v14, (v11 + 4 * v16), v17 + 1);
      sub_299384428(*(a1 + 240), a2, *(*a4 + 4 * a5), *a4 + 4 * v16, a5 - v16, a6);
      v19 = sub_2993F62C8(*(a1 + 240), (*a4 + 4 * v16), v17 + 1);
      memset(&v35, 0, sizeof(v35));
      if (a5 >= v16)
      {
        do
        {
          v20 = *(*a4 + 4 * v16);
          v21 = sub_2993F52EC(*(a1 + 240));
          sub_299278568(v21, &__p);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = __p.__r_.__value_.__l.__size_;
          }

          std::string::append(&v35, p_p, size);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          std::string::append(&v35, " (", 2uLL);
          std::to_string(&__p, *(*a4 + 4 * v16));
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v24 = &__p;
          }

          else
          {
            v24 = __p.__r_.__value_.__r.__words[0];
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v25 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v25 = __p.__r_.__value_.__l.__size_;
          }

          std::string::append(&v35, v24, v25);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          std::string::append(&v35, ") ", 2uLL);
          if (v21)
          {
            CFRelease(v21);
          }
        }

        while (v16++ < a5);
      }

      v27 = sub_2993652F8(7u);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        v28 = &v35;
        if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v28 = v35.__r_.__value_.__r.__words[0];
        }

        LODWORD(__p.__r_.__value_.__l.__data_) = 136315650;
        *(__p.__r_.__value_.__r.__words + 4) = v28;
        WORD2(__p.__r_.__value_.__r.__words[1]) = 2048;
        *(&__p.__r_.__value_.__r.__words[1] + 6) = v18;
        HIWORD(__p.__r_.__value_.__r.__words[2]) = 2048;
        v37 = v19;
        _os_log_debug_impl(&dword_29918C000, v27, OS_LOG_TYPE_DEBUG, "[MJL::incrementUsageCount] Incrementing usage counts for %s (probability: %lf -> %lf)", &__p, 0x20u);
      }

      if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v35.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      sub_299384428(v14, a2, *(v11 + 4 * a5), v11 + 4 * v16, a5 - v16, a6);
    }

    ++v34;
    goto LABEL_37;
  }

  v34 = 0;
LABEL_43:
  v29 = *MEMORY[0x29EDCA608];
  return v34;
}

void sub_29933AA00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29933AA70(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_2A1461120, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1461120))
  {
    sub_2991C6CA8(byte_2A1461140, off_2A145F3B0[0]);
    dword_2A1461158 = 0;
    word_2A146115C = 1;
    byte_2A146115E = 1;
    sub_2991C6CA8(byte_2A1461160, off_2A145F3B8);
    dword_2A1461178 = 0;
    word_2A146117C = 0;
    byte_2A146117E = 1;
    sub_2991C6CA8(byte_2A1461180, off_2A145F390[0]);
    dword_2A1461198 = 1;
    word_2A146119C = 0;
    byte_2A146119E = 1;
    sub_2991C6CA8(byte_2A14611A0, off_2A145F388[0]);
    dword_2A14611B8 = 1;
    word_2A14611BC = 0;
    byte_2A14611BE = 1;
    sub_2991C6CA8(byte_2A14611C0, off_2A145F398[0]);
    dword_2A14611D8 = 0;
    word_2A14611DC = 0;
    byte_2A14611DE = 1;
    __cxa_atexit(sub_29933B54C, 0, &dword_29918C000);
    __cxa_guard_release(&qword_2A1461120);
  }

  v3 = 0uLL;
  v4 = 0;
  sub_299332338(&v3, byte_2A1461140, &qword_2A14611E0, 5uLL);
  sub_29921EF84(a2);
  *a2 = v3;
  *(a2 + 16) = v4;
  v4 = 0;
  v3 = 0uLL;
  v5 = &v3;
  sub_29921EB1C(&v5);
}

uint64_t sub_29933AC80(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = sub_2992C84D8(v2);
  }

  else
  {
    v3 = 1;
  }

  v4 = a1[22];
  if (v4)
  {
    v5 = sub_2992C84D8(v4);
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_2993409F4((a1 + 47));
  v7 = a1[23];
  if (v7)
  {
    v8 = sub_2992C84D8(v7);
  }

  else
  {
    v8 = 1;
  }

  if (v3 && v5)
  {
    return v6 & v8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29933AD08(uint64_t a1, uint64_t a2)
{
  if ((*(*a2 + 48))(a2))
  {
    v12 = sub_2992C77D8(a2, 0);
    v13 = v4;
    v10 = sub_2992C71F4(a2, 0);
    v11 = v5;
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x2000000000;
    v9 = 0;
    v6 = *(a1 + 208);
    sub_2993E4D48();
  }

  return 1;
}

void sub_29933AE74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_29933AE8C(uint64_t result, uint64_t a2, _BYTE *a3)
{
  *a3 = 1;
  *(*(*(result + 32) + 8) + 24) = 1;
  return result;
}

void sub_29933AEA8(uint64_t a1)
{
  sub_29933B398(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_29933AF00(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = sub_299215EC0(v3, *a2, a2[1], (a2[1] - *a2) >> 1);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t sub_29933AF54(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_299212A8C();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    sub_29920DDE0(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  sub_299215EC0(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 1);
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  sub_29920DE38(&v14);
  return v8;
}

void sub_29933B070(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29920DE38(va);
  _Unwind_Resume(a1);
}

void *sub_29933B084(void *a1, const void *a2, const void *a3, int a4, int a5, uint64_t *a6, uint64_t a7)
{
  v11 = sub_29933219C(a1, a2, a3, a7);
  *v11 = &unk_2A1F72B38;
  *(v11 + 8) = a4;
  *(v11 + 9) = a5;
  v11[6] = 0;
  v11[7] = 0;
  v11[5] = 0;
  sub_299215EC0((v11 + 5), *a6, a6[1], (a6[1] - *a6) >> 1);
  return a1;
}

void sub_29933B110(void *a1)
{
  *a1 = &unk_2A1F72B38;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  sub_2993321FC(a1);

  JUMPOUT(0x29C29BFB0);
}

char *sub_29933B184(char *__dst, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5, __int128 *a6, __int16 a7, __int16 a8, __int16 a9, __int16 a10, __int16 a11)
{
  if (*(a3 + 23) < 0)
  {
    sub_29922C89C(__dst, *a3, *(a3 + 1));
  }

  else
  {
    v18 = *a3;
    *(__dst + 2) = *(a3 + 2);
    *__dst = v18;
  }

  if (*(a2 + 23) < 0)
  {
    sub_29922C89C(__dst + 24, *a2, *(a2 + 1));
  }

  else
  {
    v19 = *a2;
    *(__dst + 5) = *(a2 + 2);
    *(__dst + 24) = v19;
  }

  if (*(a4 + 23) < 0)
  {
    sub_29922C89C(__dst + 48, *a4, *(a4 + 1));
  }

  else
  {
    v20 = *a4;
    *(__dst + 8) = *(a4 + 2);
    *(__dst + 3) = v20;
  }

  if (*(a5 + 23) < 0)
  {
    sub_29922C89C(__dst + 72, *a5, *(a5 + 1));
  }

  else
  {
    v21 = *a5;
    *(__dst + 11) = *(a5 + 2);
    *(__dst + 72) = v21;
  }

  if (*(a6 + 23) < 0)
  {
    sub_29922C89C(__dst + 96, *a6, *(a6 + 1));
  }

  else
  {
    v22 = *a6;
    *(__dst + 14) = *(a6 + 2);
    *(__dst + 6) = v22;
  }

  *(__dst + 60) = a9;
  *(__dst + 61) = a8;
  *(__dst + 62) = a7;
  *(__dst + 63) = a10;
  *(__dst + 64) = a11;
  return __dst;
}

void sub_29933B2C0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29933B324(uint64_t a1)
{
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_29933B398(uint64_t a1)
{
  sub_29933D8F0(a1 + 376);
  sub_299273884((a1 + 248));
  v2 = *(a1 + 200);
  *(a1 + 200) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 192);
  *(a1 + 192) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  sub_29932C5A0((a1 + 184), 0);
  sub_29932C5A0((a1 + 176), 0);
  v5 = (a1 + 152);
  sub_29921EB1C(&v5);
  v5 = (a1 + 128);
  sub_29921EB1C(&v5);
  return sub_29932C230(a1);
}

uint64_t sub_29933B500(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F72BD0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29933B54C()
{
  v0 = &byte_2A14611D7;
  v1 = -160;
  v2 = &byte_2A14611D7;
  do
  {
    v3 = *v2;
    v2 -= 32;
    if (v3 < 0)
    {
      operator delete(*(v0 - 23));
    }

    v0 = v2;
    v1 += 32;
  }

  while (v1);
}

void sub_29933B594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v41 = *MEMORY[0x29EDCA608];
  if ((*(*a1 + 24))(a1))
  {
    (*(*a1 + 40))(&v30, a1, a2, a3, a6);
    v12 = v30;
    if (v30 != v31)
    {
      v13 = *(a2 + 48);
      if (*(a2 + 56) != v13)
      {
        v14 = 0;
        do
        {
          v15 = -20.0;
          if (v14 < (v31 - v30) >> 3)
          {
            v15 = *(v30 + v14);
          }

          v16 = *(v13 + 8 * v14);
          v17 = *(a4 + 24);
          *buf = v16[24];
          *&__p.__r_.__value_.__l.__data_ = v15;
          if (!v17)
          {
            sub_2991A2240();
          }

          v18 = (*(*v17 + 48))(v17, buf, &__p);
          (*(*v16 + 400))(v16, v15);
          (*(*v16 + 480))(v16, v18);
          v19 = sub_2993652F8(0xCu);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            v20 = *(v16 + 55);
            if (v20 >= 0)
            {
              v21 = v16 + 8;
            }

            else
            {
              v21 = *(v16 + 4);
            }

            if (v20 >= 0)
            {
              v22 = *(v16 + 55);
            }

            else
            {
              v22 = *(v16 + 5);
            }

            sub_299277B3C(v21, v22, &__p);
            v23 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
            v24 = __p.__r_.__value_.__r.__words[0];
            v25 = v16[24];
            (*(*v16 + 392))(v16);
            ++v14;
            *buf = 134219010;
            p_p = &__p;
            if (v23 < 0)
            {
              p_p = v24;
            }

            *&buf[4] = v14;
            v33 = 2080;
            v34 = p_p;
            v35 = 1024;
            v36 = v18;
            v37 = 2048;
            v38 = v25;
            v39 = 2048;
            v40 = v26;
            _os_log_debug_impl(&dword_29918C000, v19, OS_LOG_TYPE_DEBUG, "%zu: [%s] cost: %d (geometry: %.3f, LM: %.3f)", buf, 0x30u);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }

          else
          {
            ++v14;
          }

          v13 = *(a2 + 48);
        }

        while (v14 < (*(a2 + 56) - v13) >> 3);
      }

      sub_2992AB9D4(a2, a5);
      v12 = v30;
    }

    if (v12)
    {
      v31 = v12;
      operator delete(v12);
    }
  }

  v28 = *MEMORY[0x29EDCA608];
}

void sub_29933B8B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29933B900(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X8>)
{
  v56 = *MEMORY[0x29EDCA608];
  if ((*(a2 + 56) - *(a2 + 48)) >> 3 >= a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = (*(a2 + 56) - *(a2 + 48)) >> 3;
  }

  v8 = *(a1 + 8);
  if (v8 && ((*(*v8 + 48))(v8) & 1) != 0)
  {
    (*(**(a1 + 8) + 40))(*(a1 + 8), a3);
    v48 = 0;
    v49 = 0;
    v50 = 0;
    sub_29928EF5C(&v48, v7);
    if (v7)
    {
      for (i = 0; i != v7; ++i)
      {
        v12 = *(*(a2 + 48) + 8 * i);
        (*(**(a1 + 8) + 16))(__p);
        v13 = v49;
        if (v49 >= v50)
        {
          v14 = 0xAAAAAAAAAAAAAAABLL * ((v49 - v48) >> 3);
          v15 = v14 + 1;
          if (v14 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_299212A8C();
          }

          if (0x5555555555555556 * ((v50 - v48) >> 3) > v15)
          {
            v15 = 0x5555555555555556 * ((v50 - v48) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v50 - v48) >> 3) >= 0x555555555555555)
          {
            v16 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v16 = v15;
          }

          *v53 = &v48;
          if (v16)
          {
            sub_29920DDE0(&v48, v16);
          }

          v17 = (8 * ((v49 - v48) >> 3));
          *v17 = 0;
          v17[1] = 0;
          v17[2] = 0;
          *v17 = *__p;
          v17[2] = v47;
          __p[0] = 0;
          __p[1] = 0;
          v47 = 0;
          v18 = 24 * v14 + 24;
          v19 = (24 * v14 - (v49 - v48));
          memcpy(v17 - (v49 - v48), v48, v49 - v48);
          v20 = v48;
          v21 = *&v50;
          v48 = v19;
          v49 = v18;
          v50 = 0;
          *buf = v20;
          *&buf[16] = v20;
          v52 = v21;
          *&buf[8] = v20;
          sub_29920DE38(buf);
          v49 = v18;
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }
        }

        else
        {
          *v49 = 0;
          *(v13 + 1) = 0;
          *(v13 + 2) = 0;
          *v13 = *__p;
          *(v13 + 2) = v47;
          v49 = v13 + 24;
        }
      }
    }

    (*(**(a1 + 8) + 64))(__p);
    v22 = (*(a2 + 56) - *(a2 + 48)) >> 3;
    *buf = 0;
    sub_2991DEB68(a5, v22);
    v23 = *(a2 + 48);
    if (*(a2 + 56) != v23)
    {
      v24 = 0;
      do
      {
        if (v24 >= v7)
        {
          v31 = 0.0;
          v32 = -20.0;
        }

        else
        {
          v25 = &v48[24 * v24];
          v26 = *v25;
          v27 = *(v25 + 1);
          if (v26 == v27)
          {
            v30 = 0.0;
          }

          else
          {
            v28 = 0;
            do
            {
              if (!*v26++)
              {
                ++v28;
              }
            }

            while (v26 != v27);
            v30 = v28;
          }

          v31 = -v30;
          v32 = *(__p[0] + v24);
        }

        v33 = *(v23 + 8 * v24);
        *(*a5 + 8 * v24) = v32 + v31;
        v34 = sub_2993652F8(0xCu);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG) && v31 != 0.0)
        {
          v35 = sub_2993652F8(0xCu);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
          {
            v38 = *(v33 + 32);
            v37 = v33 + 32;
            v36 = v38;
            v39 = *(v37 + 23);
            if (v39 >= 0)
            {
              v40 = v37;
            }

            else
            {
              v40 = v36;
            }

            if (v39 >= 0)
            {
              v41 = *(v37 + 23);
            }

            else
            {
              v41 = *(v37 + 8);
            }

            sub_299277B3C(v40, v41, &v45);
            v42 = v45.__r_.__value_.__r.__words[0];
            v43 = *(*a5 + 8 * v24);
            if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v42 = &v45;
            }

            *buf = 134219010;
            *&buf[4] = v24 + 1;
            *&buf[12] = 2080;
            *&buf[14] = v42;
            *&buf[22] = 2048;
            v52 = v32;
            *v53 = 2048;
            *&v53[2] = v43;
            v54 = 2048;
            v55 = -v31;
            _os_log_debug_impl(&dword_29918C000, v35, OS_LOG_TYPE_DEBUG, "%zu: [%s] Adjust Static LM Score: %.3f -> %.3f UNK Penalty: %.3f", buf, 0x34u);
            if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v45.__r_.__value_.__l.__data_);
            }
          }
        }

        ++v24;
        v23 = *(a2 + 48);
      }

      while (v24 < (*(a2 + 56) - v23) >> 3);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    *buf = &v48;
    sub_29920E060(buf);
  }

  else
  {
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
  }

  v44 = *MEMORY[0x29EDCA608];
}

void sub_29933BD8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *__p, char *a16, uint64_t a17, char a18)
{
  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  __p = &a18;
  sub_29920E060(&__p);
  _Unwind_Resume(a1);
}

double sub_29933BE18(void *a1)
{
  if (!(*(*a1 + 24))(a1))
  {
    return 0.0;
  }

  v2 = *(a1[1] + 8);
  v3 = *(v2 + 52);
  v4 = *(**(v2 + 8) + 520);

  v4();
  return result;
}

uint64_t sub_29933BEB8(uint64_t result, uint64_t *a2)
{
  v2 = a2[1];
  *result = v2;
  *(result + *(v2 - 32)) = a2[2];
  *(result + 8) = 0;
  *(result + 16) = 0;
  v3 = *a2;
  *result = *a2;
  *(result + *(v3 - 32)) = a2[3];
  return result;
}

uint64_t *sub_29933BFC4(uint64_t *result, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  *result = v3;
  *(result + *(v3 - 32)) = a2[2];
  result[1] = *(a3 + 8);
  v4 = *a2;
  *result = *a2;
  *(result + *(v4 - 32)) = a2[3];
  return result;
}

CFIndex sub_29933C0DC(uint64_t a1)
{
  if (!(*(*a1 + 216))(a1))
  {
    return 0;
  }

  v2 = (*(*a1 + 24))(a1);
  result = CFStringGetLength(v2);
  if (result)
  {
    result -= CFStringGetCharacterAtIndex(v2, 0) == 32;
  }

  return result;
}

BOOL sub_29933C17C(uint64_t a1, uint64_t a2)
{
  if ((*(*a1 + 96))(a1) == 89 && (*(*a2 + 96))(a2) != 89 || (*(*a1 + 96))(a1) != 89 && (*(*a2 + 96))(a2) == 89)
  {
    return 0;
  }

  if ((*(*a1 + 96))(a1) == 89 || (*(*a2 + 96))(a2) == 89)
  {
    v4 = (*(*a1 + 168))(a1);
    v5 = (*(*a2 + 168))(a2);
    if (CFNumberCompare(v4, v5, 0))
    {
      return 0;
    }

    v7 = (*(*a1 + 160))(a1);
    v8 = (*(*a2 + 160))(a2);
    return CFEqual(v7, v8) != 0;
  }

  else
  {

    return sub_29920D5C8(a1, a2);
  }
}

void sub_29933C3C4(void *a1, unsigned int a2, uint64_t a3)
{
  v42 = *MEMORY[0x29EDCA608];
  v6 = sub_2993652F8(a2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = sub_2993652F8(a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v19 = a1[1];
      v18 = (*(*a1 + 24))(a1);
      v9 = (*(*a1 + 56))(a1);
      v10 = (*(*a1 + 232))(a1);
      if ((*(*a1 + 96))(a1) < 32)
      {
        v11 = 63;
      }

      else
      {
        v11 = (*(*a1 + 96))(a1);
      }

      if ((*(*a1 + 408))(a1))
      {
        if ((*(*a1 + 408))(a1) == 2)
        {
          v12 = "prefix";
        }

        else
        {
          v12 = "partial";
        }
      }

      else
      {
        v12 = "exact";
      }

      v13 = (*(*a1 + 112))(a1);
      v14 = (*(*a1 + 384))(a1);
      v15 = (*(*a1 + 392))(a1);
      if (v15 >= -100.0)
      {
        v16 = *&v15;
      }

      else
      {
        v16 = 0xC059000000000000;
      }

      v17 = (*(*a1 + 200))(a1);
      *buf = 136317698;
      v21 = a3;
      v22 = 2048;
      v23 = v19;
      v24 = 2112;
      v25 = v18;
      v26 = 2112;
      v27 = v9;
      v28 = 2112;
      v29 = v10;
      v30 = 1024;
      v31 = v11;
      v32 = 2080;
      v33 = v12;
      v34 = 1024;
      v35 = v13;
      v36 = 1024;
      v37 = v14;
      v38 = 2048;
      v39 = v16;
      v40 = 1024;
      v41 = v17;
      _os_log_debug_impl(&dword_29918C000, v7, OS_LOG_TYPE_DEBUG, "%s (%ld): [%@] (%@/%@), type: %c, length: %s, cost: %d, base-cost: %d, prob: %3.3lf, autocorrected: %d", buf, 0x60u);
    }
  }

  v8 = *MEMORY[0x29EDCA608];
}

uint64_t IndexedSearchDictionaryBuild(int a1, void *a2)
{
  v79 = *MEMORY[0x29EDCA608];
  v4 = objc_alloc_init(MEMORY[0x29EDB9F38]);
  NSLog(&cfstr_BuildingDictio.isa, a2[3]);
  if (a1 != 4)
  {
    NSLog(&cfstr_SUsageTemplate.isa, *a2);
LABEL_24:
    result = 0xFFFFFFFFLL;
    goto LABEL_25;
  }

  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x29EDBA0F8], v5, a2[1]);
  v8 = objc_msgSend_dictionaryWithContentsOfFile_(MEMORY[0x29EDB8DC0], v7, v6);
  if (!v8)
  {
    NSLog(&cfstr_CanTReadTempla.isa, v6);
    goto LABEL_24;
  }

  v10 = v8;
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x29EDBA0F8], v9, a2[3]);
  isDirectory = objc_msgSend_fileURLWithPath_isDirectory_(MEMORY[0x29EDB8E70], v12, v11, 0);
  if (!isDirectory)
  {
    NSLog(&cfstr_CanTCreateUrlF.isa, v11);
    goto LABEL_24;
  }

  v14 = isDirectory;
  if (!sub_299243C48(isDirectory, v10))
  {
LABEL_22:

LABEL_23:
    NSLog(&cfstr_ErrorBuildingD.isa, v69);
    goto LABEL_24;
  }

  v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x29EDBA0F8], v15, a2[2]);
  v17 = sub_2992432B4(0, v14, 0);
  v19 = objc_msgSend_objectForKeyedSubscript_(v10, v18, @"CFBundleIdentifier");
  hasSuffix = objc_msgSend_hasSuffix_(v19, v20, @"Wubixing");
  v74 = 0;
  v75 = 0;
  v22 = objc_msgSend_stringWithContentsOfFile_usedEncoding_error_(MEMORY[0x29EDBA0F8], v21, v16, &v75, &v74);
  if (!v22)
  {
    NSLog(&cfstr_ReadingDiction.isa, v16, v74);
    CFRelease(v17);
    goto LABEL_22;
  }

  v24 = v22;
  v25 = objc_msgSend_arrayWithCapacity_(MEMORY[0x29EDB8DE8], v23, 0);
  v27 = objc_msgSend_arrayWithCapacity_(MEMORY[0x29EDB8DE8], v26, 0);
  v30 = objc_msgSend_length(v24, v28, v29);
  if (v30 >= 2)
  {
    v32 = v30;
    v33 = 0;
    v34 = 1;
    do
    {
      v72 = 0;
      v73 = 0;
      v71 = 0;
      objc_msgSend_getLineStart_end_contentsEnd_forRange_(v24, v31, &v73, &v72, &v71, v34, 1);
      v36 = objc_msgSend_substringWithRange_(v24, v35, v73, v71 - v73);
      v38 = objc_msgSend_componentsSeparatedByString_(v36, v37, @"\t");
      if (objc_msgSend_count(v38, v39, v40) < 3)
      {
        NSLog(&cfstr_BadDictionaryD.isa, v36);
      }

      else
      {
        v42 = objc_msgSend_objectAtIndex_(v38, v41, 0);
        objc_msgSend_addObject_(v25, v43, v42);
        v45 = objc_msgSend_objectAtIndexedSubscript_(v38, v44, 2);
        v47 = objc_msgSend_dataUsingEncoding_(v45, v46, 4);
        v49 = objc_msgSend_objectAtIndexedSubscript_(v38, v48, 1);
        if (hasSuffix)
        {
          v52 = objc_msgSend_intValue(v49, v50, v51);
          if (v52 >= 0x10)
          {
            fwrite("Wrong originalFlag. \n", 0x15uLL, 1uLL, *MEMORY[0x29EDCA610]);
            exit(1);
          }

          v76 = v47;
          v77 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x29EDBA070], v53, v52 | (16 * v33));
          v55 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v54, &v76, 2);
          v57 = objc_msgSend_dictionaryWithObjects_forKeys_(MEMORY[0x29EDB8DC0], v56, v55, &unk_2A1F837A8);
        }

        else
        {
          v58 = objc_msgSend_rangeOfString_(v49, v50, @"1") != 0x7FFFFFFFFFFFFFFFLL;
          v76 = v47;
          v77 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x29EDBA070], v59, v33);
          v78 = objc_msgSend_numberWithShort_(MEMORY[0x29EDBA070], v60, v58);
          v62 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v61, &v76, 3);
          v57 = objc_msgSend_dictionaryWithObjects_forKeys_(MEMORY[0x29EDB8DC0], v63, v62, &unk_2A1F837C0);
        }

        v64 = sub_299243978(v17, v57);
        objc_msgSend_addObject_(v27, v65, v64);

        ++v33;
      }

      v34 = v72;
    }

    while (v72 < v32);
  }

  v66 = sub_299243B9C(v17, v25, v27, 0);
  CFRelease(v17);

  if (!v66)
  {
    goto LABEL_23;
  }

  NSLog(&cfstr_DictionaryWasB.isa);
  result = 0;
LABEL_25:
  v68 = *MEMORY[0x29EDCA608];
  return result;
}

unint64_t sub_29933CB60(unsigned int a1, unint64_t *a2, int a3)
{
  v3 = *a2;
  if (*a2 == -1)
  {
    return 0;
  }

  if (a3)
  {
    v4 = 0x80000000;
  }

  else
  {
    v4 = 1;
  }

  if (v3 <= 0x20)
  {
    v5 = 32;
  }

  else
  {
    v5 = *a2;
  }

  v6 = *a2;
  while (v5 != v6)
  {
    v7 = a1 << v6;
    if (!a3)
    {
      v7 = a1 >> v6;
    }

    ++v6;
    if ((v7 & v4) != 0)
    {
      goto LABEL_16;
    }
  }

  v6 = -1;
LABEL_16:
  *a2 = v6;
  if (v3 || !a3)
  {
    v10 = v6;
    v6 = v3;
  }

  else
  {
    v9 = 32;
    if (v6 > 0x20)
    {
      v9 = v6;
    }

    v10 = v6;
    while (v9 != v10)
    {
      v11 = a1 << v10++;
      if (v11 < 0)
      {
        goto LABEL_26;
      }
    }

    v10 = -1;
LABEL_26:
    *a2 = v10;
  }

  if (v10 == -1 && a3)
  {
    return 33 - v6;
  }

  v12 = v10 - v6;
  if (v10 == -1)
  {
    return 0;
  }

  else
  {
    return v12;
  }
}

uint64_t sub_29933CC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v74[20] = *MEMORY[0x29EDCA608];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  v20 = a1 + 40;
  v19 = a1 + 64;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 1065353216;
  *(a1 + 128) = 0xFF1FFF0130013002;
  sub_2991C6CA8(buf, "Reading");
  v38 = 0;
  v39 = 1;
  v40 = 1;
  sub_2991C6CA8(v41, "Surface");
  v42 = 0;
  v43 = 0;
  v44 = 1;
  sub_2991C6CA8(v45, "LeftSurface1");
  v46 = 0;
  v47 = 0;
  v48 = 1;
  sub_2991C6CA8(v49, "LeftSurface2");
  v50 = 0;
  v51 = 0;
  v52 = 1;
  sub_2991C6CA8(v53, "RightSurface1");
  v54 = 0;
  v55 = 0;
  v56 = 1;
  sub_2991C6CA8(v57, "POS");
  v58 = 1;
  v59 = 0;
  v60 = 1;
  sub_2991C6CA8(v61, "LeftPOS1");
  v62 = 1;
  v63 = 0;
  v64 = 1;
  sub_2991C6CA8(v65, "LeftPOS2");
  v66 = 1;
  v67 = 0;
  v68 = 1;
  sub_2991C6CA8(v69, "RightPOS1");
  v70 = 1;
  v71 = 0;
  v72 = 1;
  __dst[1] = 0;
  v23 = 0;
  __dst[0] = 0;
  sub_299332338(__dst, buf, &v73, 9uLL);
  sub_29921EF84(v20);
  *(a1 + 40) = *__dst;
  *(a1 + 56) = v23;
  __dst[1] = 0;
  v23 = 0;
  __dst[0] = 0;
  v33.__locale_ = __dst;
  sub_29921EB1C(&v33);
  v4 = 36;
  do
  {
    if (SHIBYTE(v34[v4 + 2]) < 0)
    {
      operator delete(v34[v4]);
    }

    v4 -= 4;
  }

  while (v4 * 8);
  sub_2991C6CA8(buf, "Key");
  v38 = 0;
  v39 = 1;
  v40 = 1;
  sub_2991C6CA8(v41, "Feature");
  v42 = 0;
  v43 = 0;
  v44 = 1;
  sub_2991C6CA8(v45, "IntValue");
  v46 = 1;
  v47 = 0;
  v48 = 1;
  sub_2991C6CA8(v49, "StrValue");
  v50 = 0;
  v51 = 0;
  v52 = 1;
  __dst[1] = 0;
  v23 = 0;
  __dst[0] = 0;
  sub_299332338(__dst, buf, v53, 4uLL);
  sub_29921EF84(v19);
  *(a1 + 64) = *__dst;
  *(a1 + 80) = v23;
  __dst[1] = 0;
  v23 = 0;
  __dst[0] = 0;
  v33.__locale_ = __dst;
  sub_29921EB1C(&v33);
  for (i = 0; i != -128; i -= 32)
  {
    if (v49[i + 23] < 0)
    {
      operator delete(*&v49[i]);
    }
  }

  v6 = sub_29936C2B8();
  v7 = sub_29936C3FC(v6, 0, off_2A145F738[0], off_2A145F728[0], 0);
  v8 = sub_2993652F8(9u);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    if (v7[23] >= 0)
    {
      v18 = v7;
    }

    else
    {
      v18 = *v7;
    }

    *buf = 138412546;
    *&buf[4] = off_2A145F728[0];
    v36 = 2080;
    v37 = v18;
    _os_log_debug_impl(&dword_29918C000, v8, OS_LOG_TYPE_DEBUG, "[JLPL::loadLexicalRules] Loading %@ (%s)", buf, 0x16u);
  }

  if (v7[23] < 0)
  {
    v9 = *v7;
  }

  sub_2991C70DC(buf);
  __p[0] = 0;
  __p[1] = 0;
  v32 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v10 = MEMORY[0x29EDC93D0];
  std::ios_base::getloc(&buf[*(*buf - 24)]);
  v11 = std::locale::use_facet(&v33, v10);
  v12 = (v11->__vftable[2].~facet_0)(v11, 10);
  std::locale::~locale(&v33);
  v13 = sub_2991EAC8C(buf, &v25, v12);
  if ((*(v13 + *(*v13 - 24) + 32) & 5) == 0)
  {
    if (v27 >= 0)
    {
      v14 = &v25;
    }

    else
    {
      v14 = v25;
    }

    if (v27 >= 0)
    {
      v15 = HIBYTE(v27);
    }

    else
    {
      v15 = v26;
    }

    sub_29927806C(v14, 9, v15, &v24);
    sub_299276D80(v24);
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(v25);
  }

  if (v28 != v29)
  {
    sub_299343B68((a1 + 88), __p);
  }

  __dst[0] = &v28;
  sub_2993432E8(__dst);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p[0]);
  }

  *buf = *MEMORY[0x29EDC9518];
  *&buf[*(*buf - 24)] = *(MEMORY[0x29EDC9518] + 24);
  MEMORY[0x29C29BBF0](&v37 + 2);
  std::istream::~istream();
  MEMORY[0x29C29BF00](v74);
  v16 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_29933D65C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, char a58, uint64_t a59, uint64_t a60, void *__p, uint64_t a62, int a63)
{
  a29 = &a58;
  sub_2993432E8(&a29);
  if (a66 < 0)
  {
    operator delete(__p);
  }

  sub_2991D64B0(&a72, MEMORY[0x29EDC9518]);
  MEMORY[0x29C29BF00](&STACK[0x388]);
  sub_299344150(a13 + 88);
  a29 = a11;
  sub_29921EB1C(&a29);
  a29 = a12;
  sub_29921EB1C(&a29);
  sub_29932C5A0((a13 + 32), 0);
  sub_29932C5A0(a10, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_29933D8F0(uint64_t a1)
{
  sub_299344150(a1 + 88);
  v3 = (a1 + 64);
  sub_29921EB1C(&v3);
  v3 = (a1 + 40);
  sub_29921EB1C(&v3);
  sub_29932C5A0((a1 + 32), 0);
  sub_29932C5A0((a1 + 24), 0);
  return a1;
}

uint64_t sub_29933D95C(uint64_t a1, const __CFURL *a2)
{
  if (a2)
  {
    v3 = sub_29927717C(a2, @"LexicalLearning_ja_JP.db");
    v4 = sub_29927717C(a2, @"NonLexicalLearning_ja_JP.db");
    if (v3)
    {
      if (v4)
      {
        operator new();
      }

      CFRelease(v3);
    }

    else if (v4)
    {
      CFRelease(v4);
    }
  }

  return 0;
}

void sub_29933DAD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  MEMORY[0x29C29BFB0](v10, 0x10F2C40B10B6BF7);
  sub_29920FE30(&a9, 0);
  sub_29920FE30(&a10, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_29933DB28(uint64_t a1, unsigned __int16 a2)
{
  v6 = a2;
  v2 = &v6;
  sub_2992B8778(*(a1 + 32), &v6, 1uLL, 0, v5);
  if (v5[1] != v5[0])
  {
    v2 = *sub_2992B8D0C(v5[0], "StrValue");
  }

  v3 = *v2;
  v7 = v5;
  sub_299225D98(&v7);
  return v3;
}

void sub_29933DBA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  *(v10 - 24) = &a10;
  sub_299225D98((v10 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_29933DBBC(uint64_t a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4, unsigned __int16 *a5, uint64_t a6)
{
  __p[5] = *MEMORY[0x29EDCA608];
  if (*(a1 + 32))
  {
    v6 = a3 == 1;
  }

  else
  {
    v6 = 0;
  }

  if (!v6 || a6 != 1 || *(a4 + 126))
  {
    goto LABEL_28;
  }

  v7 = *a2;
  v8 = *a5;
  if (v8 > 0xFF00)
  {
    if (v8 == 65281)
    {
      if (v7 != 65281 && v7 != 33)
      {
        goto LABEL_28;
      }

      *(a1 + 132) = v7;
    }

    else
    {
      if (v8 != 65311 || v7 != 65311 && v7 != 63)
      {
        goto LABEL_28;
      }

      *(a1 + 134) = v7;
    }

LABEL_27:
    sub_2991C6CA8(__p, "Key");
    sub_2992B7B08();
  }

  if (v8 == 12289)
  {
    if (v7 != 44 && v7 != 65292 && v7 != 12289)
    {
      goto LABEL_28;
    }

    *(a1 + 130) = v7;
    goto LABEL_27;
  }

  if (v8 == 12290 && (v7 == 46 || v7 == 65294 || v7 == 12290))
  {
    *(a1 + 128) = v7;
    goto LABEL_27;
  }

LABEL_28:
  v9 = *MEMORY[0x29EDCA608];
  return 0;
}

void sub_29933DEF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a2)
  {
    sub_2991EDA10(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29933DF7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v69[6] = *MEMORY[0x29EDCA608];
  if (!*(a1 + 32))
  {
    goto LABEL_31;
  }

  v31 = 0;
  if (!sub_299281F40(a4, a5, &v31, 1) || !v31)
  {
    goto LABEL_31;
  }

  if (v31 != a5)
  {
    sub_2993439DC(&v28);
  }

  if ((atomic_load_explicit(&qword_2A14611E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14611E0))
  {
    sub_299217DF0(__dst, L"日");
    sub_299217DF0(&__p, L"日");
    sub_299217DF0(v62, "\bg");
    memset(v44, 0, sizeof(v44));
    sub_299273D44(v44, &__p, &v63, 2uLL);
    sub_2993433BC(v64, __dst, v44);
    sub_299217DF0(v42, "\bg");
    sub_299217DF0(v59, L"日");
    sub_299217DF0(v60, "\bg");
    memset(v41, 0, sizeof(v41));
    sub_299273D44(v41, v59, &__p, 2uLL);
    sub_2993433BC(&v65, v42, v41);
    sub_299217DF0(v39, L"時");
    sub_299217DF0(&v55, L"時");
    sub_299217DF0(v57, word_29945CB74);
    sub_299217DF0(v58, byte_29945D91A);
    memset(v38, 0, sizeof(v38));
    sub_299273D44(v38, &v55, v59, 3uLL);
    sub_2993433BC(&v67, v39, v38);
    sub_299217DF0(v36, word_29945CB74);
    sub_299217DF0(v51, L"時");
    sub_299217DF0(v53, word_29945CB74);
    sub_299217DF0(v54, byte_29945D91A);
    memset(v35, 0, sizeof(v35));
    sub_299273D44(v35, v51, &v55, 3uLL);
    sub_2993433BC(v68, v36, v35);
    sub_299217DF0(v33, byte_29945D91A);
    sub_299217DF0(&v48, L"時");
    sub_299217DF0(v49, word_29945CB74);
    sub_299217DF0(v50, byte_29945D91A);
    memset(v32, 0, sizeof(v32));
    sub_299273D44(v32, &v48, v51, 3uLL);
    sub_2993433BC(v69, v33, v32);
    sub_299343454(v64, 5);
    for (i = 24; i != -6; i -= 6)
    {
      sub_29934336C(&v64[i]);
    }

    v47 = v32;
    sub_299212B90(&v47);
    for (j = 0; j != -72; j -= 24)
    {
      if (v50[j + 23] < 0)
      {
        operator delete(*&v50[j]);
      }
    }

    if (v34 < 0)
    {
      operator delete(v33[0]);
    }

    v48 = v35;
    sub_299212B90(&v48);
    for (k = 0; k != -72; k -= 24)
    {
      if (v54[k + 23] < 0)
      {
        operator delete(*&v54[k]);
      }
    }

    if (v37 < 0)
    {
      operator delete(v36[0]);
    }

    v51[0] = v38;
    sub_299212B90(v51);
    for (m = 0; m != -72; m -= 24)
    {
      if (v58[m + 23] < 0)
      {
        operator delete(*&v58[m]);
      }
    }

    if (v40 < 0)
    {
      operator delete(v39[0]);
    }

    *&v55 = v41;
    sub_299212B90(&v55);
    for (n = 0; n != -48; n -= 24)
    {
      if (v60[n + 23] < 0)
      {
        operator delete(*&v59[n + 24]);
      }
    }

    if (v43 < 0)
    {
      operator delete(v42[0]);
    }

    *&v55 = v44;
    sub_299212B90(&v55);
    for (ii = 0; ii != -48; ii -= 24)
    {
      if (v62[ii + 23] < 0)
      {
        operator delete(*&v62[ii]);
      }
    }

    if (v46 < 0)
    {
      operator delete(__dst[0]);
    }

    __cxa_atexit(sub_2993433B8, &xmmword_2A14611F8, &dword_29918C000);
    __cxa_guard_release(&qword_2A14611E0);
  }

  v9 = sub_29923AF34(&xmmword_2A14611F8, a6 + 72);
  v10 = *(&xmmword_2A14611F8 + 1);
  if (!*(&xmmword_2A14611F8 + 1))
  {
    goto LABEL_24;
  }

  v11 = v9;
  v12 = vcnt_s8(*(&xmmword_2A14611F8 + 8));
  v12.i16[0] = vaddlv_u8(v12);
  v13 = v12.u32[0];
  if (v12.u32[0] > 1uLL)
  {
    v14 = v9;
    if (v9 >= *(&xmmword_2A14611F8 + 1))
    {
      v14 = v9 % *(&xmmword_2A14611F8 + 1);
    }
  }

  else
  {
    v14 = (*(&xmmword_2A14611F8 + 1) - 1) & v9;
  }

  v15 = *(xmmword_2A14611F8 + 8 * v14);
  if (!v15 || (v16 = *v15) == 0)
  {
LABEL_24:
    sub_2993439DC(&v28);
  }

  while (1)
  {
    v17 = *(v16 + 1);
    if (v11 == v17)
    {
      break;
    }

    if (v13 > 1)
    {
      if (v17 >= v10)
      {
        v17 %= v10;
      }
    }

    else
    {
      v17 &= v10 - 1;
    }

    if (v17 != v14)
    {
      goto LABEL_24;
    }

LABEL_23:
    v16 = *v16;
    if (!v16)
    {
      goto LABEL_24;
    }
  }

  if (!sub_29923AF78(&xmmword_2A14611F8, v16 + 8, (a6 + 72)))
  {
    goto LABEL_23;
  }

  v28 = 0;
  v29 = 0;
  v30 = 0;
  sub_299308CE0(&v28, *(v16 + 5), *(v16 + 6), 0xAAAAAAAAAAAAAAABLL * ((*(v16 + 6) - *(v16 + 5)) >> 3));
  if (v29 != v28)
  {
    sub_29933B184(v64, (a6 + 24), a6, &xmmword_299417F70, v28, &xmmword_299417F88, *(a6 + 124), *(a6 + 122), *(a6 + 120), *(a6 + 126), *(a6 + 128));
    v51[0] = 0;
    v51[1] = 0;
    v52 = 0;
    if (a5 == v31)
    {
      HIBYTE(v52) = 0;
      LOWORD(v51[0]) = 0;
      v18 = L"NW:RS1=";
      v19 = &v66;
    }

    else
    {
      sub_29925851C(&v55, (a4 + 2 * v31), a5 - v31);
      *v51 = v55;
      v52 = v56;
      v19 = v51;
      v18 = L"NW:SFX=";
    }

    sub_299343A98(&v48, v18, v19);
    *(&v55 + 1) = 0;
    v56 = 0;
    *&v55 = &v55 + 8;
    sub_2991C6CA8(&__p, "Key");
    sub_2992B7B08();
  }

  v64[0] = &v28;
  sub_299212B90(v64);
LABEL_31:
  v20 = *MEMORY[0x29EDCA608];
  return 0;
}

void sub_29933E8FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, char a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, char a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, char a57, uint64_t a58, uint64_t a59, void *a60, uint64_t a61, int a62, __int16 a63)
{
  v77 = -240;
  v78 = v75;
  do
  {
    v78 = sub_29934336C(v78) - 48;
    v77 += 48;
  }

  while (v77);
  a66 = &a21;
  sub_299212B90(&a66);
  v79 = &a72;
  v80 = -72;
  v81 = &a72;
  while (1)
  {
    v82 = *v81;
    v81 -= 24;
    if (v82 < 0)
    {
      operator delete(*(v79 - 23));
    }

    v79 = v81;
    v80 += 24;
    if (!v80)
    {
      if (a29 < 0)
      {
        operator delete(__p);
      }

      a67 = &a30;
      sub_299212B90(&a67);
      v83 = &a74;
      v84 = -72;
      v85 = &a74;
      while (1)
      {
        v86 = *v85;
        v85 -= 24;
        if (v86 < 0)
        {
          operator delete(*(v83 - 23));
        }

        v83 = v85;
        v84 += 24;
        if (!v84)
        {
          if (a38 < 0)
          {
            operator delete(a33);
          }

          a73 = &a39;
          sub_299212B90(&a73);
          v87 = &STACK[0x22F];
          v88 = -72;
          v89 = &STACK[0x22F];
          while (1)
          {
            v90 = *v89;
            v89 -= 3;
            if (v90 < 0)
            {
              operator delete(*(v87 - 23));
            }

            v87 = v89;
            v88 += 24;
            if (!v88)
            {
              if (a47 < 0)
              {
                operator delete(a42);
              }

              a75 = &a48;
              sub_299212B90(&a75);
              v91 = &STACK[0x25F];
              v92 = -48;
              v93 = &STACK[0x25F];
              while (1)
              {
                v94 = *v93;
                v93 -= 3;
                if (v94 < 0)
                {
                  operator delete(*(v91 - 23));
                }

                v91 = v93;
                v92 += 24;
                if (!v92)
                {
                  if (a56 < 0)
                  {
                    operator delete(a51);
                  }

                  a75 = &a57;
                  sub_299212B90(&a75);
                  v95 = &STACK[0x28F];
                  v96 = -48;
                  v97 = &STACK[0x28F];
                  while (1)
                  {
                    v98 = *v97;
                    v97 -= 3;
                    if (v98 < 0)
                    {
                      operator delete(*(v95 - 23));
                    }

                    v95 = v97;
                    v96 += 24;
                    if (!v96)
                    {
                      if (a65 < 0)
                      {
                        operator delete(a60);
                      }

                      __cxa_guard_abort(&qword_2A14611E0);
                      _Unwind_Resume(a1);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_29933ED18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int16 *a6)
{
  v14 = *MEMORY[0x29EDCA608];
  if (*(a1 + 24))
  {
    v10 = 0;
    v11 = 256;
    v12 = 0;
    sub_29933F4F8(*a1, a6, &v10);
    v9[0] = 0;
    v9[1] = 0;
    v8 = v9;
    sub_2991C6CA8(__p, "Reading");
    sub_2992B7B08();
  }

  v6 = *MEMORY[0x29EDCA608];
  return 0;
}

void sub_29933F3C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, __int16 a16, char a17, char a18, int a19, __int16 a20, char a21, char a22, int a23, __int16 a24, char a25, char a26, int a27, __int16 a28, char a29, char a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (a2)
  {
    sub_2991EDA10(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int16 *sub_29933F4F8(unsigned __int16 *result, unsigned __int16 *a2, _BYTE *a3)
{
  v3 = a2[60];
  if (v3 <= 0x24E)
  {
    v4 = word_29940982A[v3];
  }

  else
  {
    v4 = 0;
  }

  v5 = a2[61];
  if (v5 <= 0x24E)
  {
    v6 = word_29940982A[v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = a2[62];
  if (v7 <= 0x24E)
  {
    v8 = word_29940982A[v7];
  }

  else
  {
    v8 = 0;
  }

  v9 = a2[63];
  if (v9 <= 0x24E)
  {
    v10 = word_29940982A[v9];
  }

  else
  {
    v10 = 0;
  }

  v11 = (&off_29EF0DFF0 + 2 * word_299403FCA[7 * v4]);
  v12 = *v11;
  v13 = v11[1];
  if (v13 == 2)
  {
    v16 = 0;
    v15 = 6;
    v17 = v12;
    v18 = L"記号";
    while (1)
    {
      v19 = v16;
      if (*v18 != *v17)
      {
        break;
      }

      ++v17;
      ++v18;
      v16 = 1;
      if (v19)
      {
        goto LABEL_71;
      }
    }
  }

  else if (v13 == 4)
  {
    v14 = 0;
    v15 = 6;
    while (asc_29945B9D8[v14] == v12[v14])
    {
      if (++v14 == 4)
      {
        goto LABEL_71;
      }
    }
  }

  v20 = result[38];
  if (v20 > v4 || result[39] < v4)
  {
    v21 = result[36];
    if (v21 <= v4 && result[37] >= v4)
    {
      if (result[44] <= v10 && result[45] >= v10 || v20 <= v10 && result[39] >= v10)
      {
        a3[8] = 1;
      }

      v27 = (&off_29EF0DFF0 + 2 * word_299403FCA[7 * v4 + 1]);
      if (v27[1] == 4)
      {
        v28 = 0;
        v29 = *v27;
        while (asc_29945B3B2[v28] == *(v29 + v28 * 2))
        {
          if (++v28 == 4)
          {
            v30 = (&off_29EF0DFF0 + 2 * word_299403FCA[7 * v6 + 1]);
            if (v30[1] == 3)
            {
              v31 = 0;
              v32 = *v30;
              while (asc_29945AEEE[v31] == *(v32 + v31 * 2))
              {
                if (++v31 == 3)
                {
                  v33 = &off_29EF0DFF0 + 2 * word_299403FCA[7 * v6 + 6];
                  if (v33[1] == 1 && **v33 == 12398)
                  {
                    v15 = 2;
                    v34 = 6;
                    goto LABEL_70;
                  }

                  return result;
                }
              }
            }

            return result;
          }
        }
      }
    }

    else if (v13 == 3)
    {
      v22 = 0;
      while (asc_29945B866[v22] == v12[v22])
      {
        if (++v22 == 3)
        {
          if (v21 <= v6 && result[37] >= v6)
          {
            goto LABEL_64;
          }

          if (result[44] <= v6 && result[45] >= v6 && v21 <= v8 && result[37] >= v8)
          {
            goto LABEL_69;
          }

          return result;
        }
      }
    }

    return result;
  }

  v23 = result[36];
  if (v23 <= v6 && result[37] >= v6)
  {
LABEL_64:
    v15 = 6;
    v34 = 1;
  }

  else
  {
    if (result[44] > v6 || result[45] < v6 || v23 > v8 || result[37] < v8)
    {
      if (result[42] <= v4 && result[43] >= v4)
      {
        v24 = (&off_29EF0DFF0 + 2 * word_299403FCA[7 * v6 + 1]);
        if (v24[1] == 4)
        {
          v25 = 0;
          v26 = *v24;
          v15 = 6;
          while (asc_29945AE74[v25] == *(v26 + v25 * 2))
          {
            if (++v25 == 4)
            {
              goto LABEL_71;
            }
          }
        }
      }

      return result;
    }

    a3[1] = 1;
LABEL_69:
    a3[6] = 1;
    v15 = 7;
    v34 = 2;
  }

LABEL_70:
  a3[v34] = 1;
LABEL_71:
  a3[v15] = 1;
  return result;
}

uint64_t sub_29933F890(uint64_t a1, uint64_t a2, uint64_t a3, UniChar *chars, CFIndex numChars, unsigned __int16 *a6, int a7, int a8, unsigned __int16 *a9, uint64_t a10)
{
  v17 = CFStringCreateWithCharactersNoCopy(*MEMORY[0x29EDB8ED8], chars, numChars, *MEMORY[0x29EDB8EE8]);
  if (CEMStringIsSingleEmoji())
  {
    v18 = 0;
  }

  else if (sub_29933DBBC(a1, chars, numChars, a6, a9, a10))
  {
    v18 = 1;
  }

  else
  {
    v18 = sub_29933DF7C(a1, v19, v20, chars, numChars, a6);
    if (((v18 | a7 ^ 1) & 1) == 0)
    {
      v18 = sub_29933ED18(a1, a2, a3, chars, numChars, a6);
    }
  }

  if (v17)
  {
    CFRelease(v17);
  }

  return v18;
}

void sub_29933F9A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_299219AB4(va, 0);
  _Unwind_Resume(a1);
}

BOOL sub_29933F9C0(unsigned __int16 **a1, unsigned __int16 *a2, void **a3, void **a4, void **a5, void **a6, void **a7, int a8, unsigned __int16 a9, unsigned __int16 a10, unsigned __int16 a11, unsigned __int16 a12, char a13)
{
  v13 = a8;
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = a2;
  v20 = a10;
  v184 = *MEMORY[0x29EDCA608];
  v177 = 0;
  *v178 = 256;
  *&v178[2] = 0;
  if (a13)
  {
    LOBYTE(v177) = *a5 != a5[1];
    BYTE1(v177) = *a4 != a4[1];
    BYTE2(v177) = *a3 != a3[1];
    HIBYTE(v177) = *a6 != a6[1];
    v178[0] = *a7 != a7[1];
    v21.i16[0] = a10;
    v21.i16[1] = a9;
    v21.i16[2] = a8;
    v21.i16[3] = a11;
    v22 = vbic_s8(0x1000100010001, vceqz_s16(v21));
    *&v178[1] = vuzp1_s8(v22, v22).u32[0];
    v178[5] = a12 != 0;
  }

  else
  {
    sub_29933F4F8(*a1, a2, &v177);
    v20 = a10;
  }

  v23 = v19[60];
  if (v23 <= 0x24E)
  {
    v24 = word_29940982A[v23];
  }

  else
  {
    v24 = 0;
  }

  if (v20 <= 0x24E)
  {
    v25 = word_29940982A[v20];
  }

  else
  {
    v25 = 0;
  }

  v26 = &word_299403FCA[7 * v24];
  v27 = (&off_29EF0DFF0 + 2 * *v26);
  v28 = &word_299403FCA[7 * v25];
  v29 = (&off_29EF0DFF0 + 2 * *v28);
  v157 = *v29;
  __src = *v27;
  v159 = v29[1];
  v160 = v27[1];
  v30 = (&off_29EF0DFF0 + 2 * v26[1]);
  v32 = *v30;
  v31 = v30[1];
  v33 = (&off_29EF0DFF0 + 2 * v28[1]);
  v161 = v31;
  v162 = *v33;
  v156 = v33[1];
  v34 = sub_2993652F8(6u);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
  {
    sub_2991D7954(v171);
    v155 = v32;
    v154 = v13;
    sub_2991D7954(v165);
    v35 = sub_2991C0E9C(&v172, "[", 1);
    v36 = *(v19 + 71);
    if (v36 >= 0)
    {
      v37 = v19 + 24;
    }

    else
    {
      v37 = *(v19 + 6);
    }

    if (v36 >= 0)
    {
      v38 = *(v19 + 71);
    }

    else
    {
      v38 = *(v19 + 7);
    }

    sub_299277B3C(v37, v38, &v179);
    if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v39 = &v179;
    }

    else
    {
      v39 = v179.__r_.__value_.__r.__words[0];
    }

    if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v179.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v179.__r_.__value_.__l.__size_;
    }

    v41 = sub_2991C0E9C(v35, v39, size);
    if (SHIBYTE(v179.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v179.__r_.__value_.__l.__data_);
    }

    sub_2991C0E9C(v41, "] ", 2);
    v42 = sub_2991C0E9C(&v166, "[", 1);
    sub_299277B3C(*v16, (v16[1] - *v16) >> 1, &v179);
    if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v43 = &v179;
    }

    else
    {
      v43 = v179.__r_.__value_.__r.__words[0];
    }

    if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v44 = HIBYTE(v179.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v44 = v179.__r_.__value_.__l.__size_;
    }

    v45 = sub_2991C0E9C(v42, v43, v44);
    if (SHIBYTE(v179.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v179.__r_.__value_.__l.__data_);
    }

    sub_2991C0E9C(v45, "] ", 2);
    v153 = v178[1];
    if (v178[1] == 1)
    {
      v46 = sub_2991C0E9C(&v172, "POS:(", 5);
      v47 = MEMORY[0x29C29BD70](v46, v19[60]);
      v48 = sub_2991C0E9C(v47, ")", 1);
      sub_299277B3C(__src, v160, &v179);
      if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v49 = &v179;
      }

      else
      {
        v49 = v179.__r_.__value_.__r.__words[0];
      }

      if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v50 = HIBYTE(v179.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v50 = v179.__r_.__value_.__l.__size_;
      }

      v51 = sub_2991C0E9C(v48, v49, v50);
      if (SHIBYTE(v179.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v179.__r_.__value_.__l.__data_);
      }

      v52 = sub_2991C0E9C(v51, ",", 1);
      sub_299277B3C(v155, v161, &v179);
      if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v53 = &v179;
      }

      else
      {
        v53 = v179.__r_.__value_.__r.__words[0];
      }

      if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v54 = HIBYTE(v179.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v54 = v179.__r_.__value_.__l.__size_;
      }

      v55 = sub_2991C0E9C(v52, v53, v54);
      if (SHIBYTE(v179.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v179.__r_.__value_.__l.__data_);
      }

      sub_2991C0E9C(v55, " ", 1);
      v56 = sub_2991C0E9C(&v166, "POS:(", 5);
      v57 = MEMORY[0x29C29BD70](v56, a10);
      v58 = sub_2991C0E9C(v57, ")", 1);
      sub_299277B3C(v157, v159, &v179);
      if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v59 = &v179;
      }

      else
      {
        v59 = v179.__r_.__value_.__r.__words[0];
      }

      if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v60 = HIBYTE(v179.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v60 = v179.__r_.__value_.__l.__size_;
      }

      v61 = sub_2991C0E9C(v58, v59, v60);
      if (SHIBYTE(v179.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v179.__r_.__value_.__l.__data_);
      }

      v62 = sub_2991C0E9C(v61, ",", 1);
      sub_299277B3C(v162, v156, &v179);
      if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v63 = &v179;
      }

      else
      {
        v63 = v179.__r_.__value_.__r.__words[0];
      }

      if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v64 = HIBYTE(v179.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v64 = v179.__r_.__value_.__l.__size_;
      }

      v65 = sub_2991C0E9C(v62, v63, v64);
      if (SHIBYTE(v179.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v179.__r_.__value_.__l.__data_);
      }

      sub_2991C0E9C(v65, " ", 1);
    }

    if (v178[2] == 1)
    {
      v66 = sub_2991C0E9C(&v172, "LeftPOS1:", 9);
      v67 = MEMORY[0x29C29BD70](v66, v19[61]);
      sub_2991C0E9C(v67, " ", 1);
      v68 = sub_2991C0E9C(&v166, "LeftPOS1:", 9);
      v69 = MEMORY[0x29C29BD70](v68, a9);
      sub_2991C0E9C(v69, " ", 1);
    }

    if (v178[3] == 1)
    {
      v70 = sub_2991C0E9C(&v172, "LeftPOS2:", 9);
      v71 = MEMORY[0x29C29BD70](v70, v19[62]);
      sub_2991C0E9C(v71, " ", 1);
      v72 = sub_2991C0E9C(&v166, "LeftPOS2:", 9);
      v73 = MEMORY[0x29C29BD70](v72, v154);
      sub_2991C0E9C(v73, " ", 1);
    }

    if (v178[4] == 1)
    {
      v74 = sub_2991C0E9C(&v172, "RightPOS1:", 10);
      v75 = MEMORY[0x29C29BD70](v74, v19[63]);
      sub_2991C0E9C(v75, " ", 1);
      v76 = sub_2991C0E9C(&v166, "RightPOS1:", 10);
      v77 = MEMORY[0x29C29BD70](v76, a11);
      sub_2991C0E9C(v77, " ", 1);
    }

    if (v178[5] == 1)
    {
      v78 = sub_2991C0E9C(&v172, "RightPOS2:", 10);
      v79 = MEMORY[0x29C29BD70](v78, v19[64]);
      sub_2991C0E9C(v79, " ", 1);
      v80 = sub_2991C0E9C(&v166, "RightPOS2:", 10);
      v81 = MEMORY[0x29C29BD70](v80, a12);
      sub_2991C0E9C(v81, " ", 1);
    }

    if (BYTE1(v177) == 1)
    {
      v82 = sub_2991C0E9C(&v172, "LeftSurface1:", 13);
      v83 = *(v19 + 23);
      if (v83 >= 0)
      {
        v84 = v19;
      }

      else
      {
        v84 = *v19;
      }

      if (v83 >= 0)
      {
        v85 = *(v19 + 23);
      }

      else
      {
        v85 = *(v19 + 1);
      }

      sub_299277B3C(v84, v85, &v179);
      if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v86 = &v179;
      }

      else
      {
        v86 = v179.__r_.__value_.__r.__words[0];
      }

      if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v87 = HIBYTE(v179.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v87 = v179.__r_.__value_.__l.__size_;
      }

      v88 = sub_2991C0E9C(v82, v86, v87);
      if (SHIBYTE(v179.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v179.__r_.__value_.__l.__data_);
      }

      sub_2991C0E9C(v88, " ", 1);
      v89 = sub_2991C0E9C(&v166, "LeftSurface1:", 13);
      sub_299277B3C(*v17, (v17[1] - *v17) >> 1, &v179);
      if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v90 = &v179;
      }

      else
      {
        v90 = v179.__r_.__value_.__r.__words[0];
      }

      if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v91 = HIBYTE(v179.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v91 = v179.__r_.__value_.__l.__size_;
      }

      v92 = sub_2991C0E9C(v89, v90, v91);
      if (SHIBYTE(v179.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v179.__r_.__value_.__l.__data_);
      }

      sub_2991C0E9C(v92, " ", 1);
    }

    if (BYTE2(v177) == 1)
    {
      v93 = sub_2991C0E9C(&v172, "LeftSurface2:", 13);
      v94 = *(v19 + 47);
      if (v94 >= 0)
      {
        v95 = v19 + 12;
      }

      else
      {
        v95 = *(v19 + 3);
      }

      if (v94 >= 0)
      {
        v96 = *(v19 + 47);
      }

      else
      {
        v96 = *(v19 + 4);
      }

      sub_299277B3C(v95, v96, &v179);
      if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v97 = &v179;
      }

      else
      {
        v97 = v179.__r_.__value_.__r.__words[0];
      }

      if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v98 = HIBYTE(v179.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v98 = v179.__r_.__value_.__l.__size_;
      }

      v99 = sub_2991C0E9C(v93, v97, v98);
      if (SHIBYTE(v179.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v179.__r_.__value_.__l.__data_);
      }

      sub_2991C0E9C(v99, " ", 1);
      v100 = sub_2991C0E9C(&v166, "LeftSurface2:", 13);
      sub_299277B3C(*v18, (v18[1] - *v18) >> 1, &v179);
      if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v101 = &v179;
      }

      else
      {
        v101 = v179.__r_.__value_.__r.__words[0];
      }

      if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v102 = HIBYTE(v179.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v102 = v179.__r_.__value_.__l.__size_;
      }

      v103 = sub_2991C0E9C(v100, v101, v102);
      if (SHIBYTE(v179.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v179.__r_.__value_.__l.__data_);
      }

      sub_2991C0E9C(v103, " ", 1);
    }

    if (HIBYTE(v177) == 1)
    {
      v104 = sub_2991C0E9C(&v172, "RightSurface1:", 14);
      v105 = *(v19 + 95);
      if (v105 >= 0)
      {
        v106 = v19 + 36;
      }

      else
      {
        v106 = *(v19 + 9);
      }

      if (v105 >= 0)
      {
        v107 = *(v19 + 95);
      }

      else
      {
        v107 = *(v19 + 10);
      }

      sub_299277B3C(v106, v107, &v179);
      if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v108 = &v179;
      }

      else
      {
        v108 = v179.__r_.__value_.__r.__words[0];
      }

      if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v109 = HIBYTE(v179.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v109 = v179.__r_.__value_.__l.__size_;
      }

      v110 = sub_2991C0E9C(v104, v108, v109);
      if (SHIBYTE(v179.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v179.__r_.__value_.__l.__data_);
      }

      sub_2991C0E9C(v110, " ", 1);
      v111 = sub_2991C0E9C(&v166, "RightSurface1:", 14);
      sub_299277B3C(*v15, (v15[1] - *v15) >> 1, &v179);
      if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v112 = &v179;
      }

      else
      {
        v112 = v179.__r_.__value_.__r.__words[0];
      }

      if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v113 = HIBYTE(v179.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v113 = v179.__r_.__value_.__l.__size_;
      }

      v114 = sub_2991C0E9C(v111, v112, v113);
      if (SHIBYTE(v179.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v179.__r_.__value_.__l.__data_);
      }

      sub_2991C0E9C(v114, " ", 1);
    }

    if (v178[0] == 1)
    {
      v115 = sub_2991C0E9C(&v172, "RightSurface2:", 14);
      v116 = *(v19 + 119);
      if (v116 >= 0)
      {
        v117 = v19 + 48;
      }

      else
      {
        v117 = *(v19 + 12);
      }

      if (v116 >= 0)
      {
        v118 = *(v19 + 119);
      }

      else
      {
        v118 = *(v19 + 13);
      }

      sub_299277B3C(v117, v118, &v179);
      if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v119 = &v179;
      }

      else
      {
        v119 = v179.__r_.__value_.__r.__words[0];
      }

      if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v120 = HIBYTE(v179.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v120 = v179.__r_.__value_.__l.__size_;
      }

      v121 = sub_2991C0E9C(v115, v119, v120);
      if (SHIBYTE(v179.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v179.__r_.__value_.__l.__data_);
      }

      sub_2991C0E9C(v121, " ", 1);
      v122 = sub_2991C0E9C(&v166, "RightSurface2:", 14);
      sub_299277B3C(*v14, (v14[1] - *v14) >> 1, &v179);
      if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v123 = &v179;
      }

      else
      {
        v123 = v179.__r_.__value_.__r.__words[0];
      }

      if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v124 = HIBYTE(v179.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v124 = v179.__r_.__value_.__l.__size_;
      }

      v125 = sub_2991C0E9C(v122, v123, v124);
      if (SHIBYTE(v179.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v179.__r_.__value_.__l.__data_);
      }

      sub_2991C0E9C(v125, " ", 1);
    }

    v126 = sub_2993652F8(6u);
    v151 = v16;
    v152 = v17;
    if (os_log_type_enabled(v126, OS_LOG_TYPE_DEBUG))
    {
      v143 = v18;
      v144 = v15;
      v145 = v19;
      v146 = v14;
      sub_29927989C(v171, &v179);
      v147 = SHIBYTE(v179.__r_.__value_.__r.__words[2]);
      v148 = v179.__r_.__value_.__r.__words[0];
      sub_29927989C(v165, v163);
      v149 = &v179;
      if (v147 < 0)
      {
        v149 = v148;
      }

      if (v164 >= 0)
      {
        v150 = v163;
      }

      else
      {
        v150 = v163[0];
      }

      *buf = 136315394;
      v181 = v149;
      v182 = 2080;
      v183 = v150;
      _os_log_debug_impl(&dword_29918C000, v126, OS_LOG_TYPE_DEBUG, "[LPL::matchFeature] Comparing(%s) with(%s)", buf, 0x16u);
      if (v164 < 0)
      {
        operator delete(v163[0]);
      }

      v14 = v146;
      v19 = v145;
      v15 = v144;
      v18 = v143;
      if (SHIBYTE(v179.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v179.__r_.__value_.__l.__data_);
      }
    }

    v127 = v18;
    v128 = v15;
    v129 = v19;
    v130 = v14;
    v165[0] = *MEMORY[0x29EDC9528];
    v131 = v165[0];
    v132 = *(MEMORY[0x29EDC9528] + 72);
    v133 = *(MEMORY[0x29EDC9528] + 64);
    *(v165 + *(v165[0] - 24)) = v133;
    v134 = v132;
    v166 = v132;
    v167 = MEMORY[0x29EDC9570] + 16;
    if (v169 < 0)
    {
      operator delete(v168[7].__locale_);
    }

    v167 = MEMORY[0x29EDC9568] + 16;
    std::locale::~locale(v168);
    std::iostream::~basic_iostream();
    MEMORY[0x29C29BF00](&v170);
    v171[0] = v131;
    *(v171 + *(v131 - 24)) = v133;
    v172 = v134;
    v173 = MEMORY[0x29EDC9570] + 16;
    if (v175 < 0)
    {
      operator delete(v174[7].__locale_);
    }

    v173 = MEMORY[0x29EDC9568] + 16;
    std::locale::~locale(v174);
    std::iostream::~basic_iostream();
    MEMORY[0x29C29BF00](&v176);
    v14 = v130;
    v19 = v129;
    v15 = v128;
    v18 = v127;
    v16 = v151;
    v17 = v152;
    v13 = v154;
    v32 = v155;
    v135 = v162;
    if (!v153)
    {
      goto LABEL_189;
    }
  }

  else
  {
    v135 = v162;
    if ((v178[1] & 1) == 0)
    {
      goto LABEL_189;
    }
  }

  if (a10 != 407 && v19[60] == 407)
  {
    goto LABEL_203;
  }

  v136 = v160;
  if (v160 != v159)
  {
    goto LABEL_203;
  }

  v138 = v157;
  v137 = __src;
  if (v160)
  {
    while (*v138 == *v137)
    {
      ++v137;
      ++v138;
      if (!--v136)
      {
        goto LABEL_185;
      }
    }

    goto LABEL_203;
  }

LABEL_185:
  if (v161 != v156)
  {
LABEL_203:
    result = 0;
    goto LABEL_204;
  }

  if (v161)
  {
    while (*v135 == *v32)
    {
      ++v32;
      ++v135;
      if (!--v161)
      {
        goto LABEL_189;
      }
    }

    goto LABEL_203;
  }

LABEL_189:
  if (v178[2] == 1 && v19[61] != a9)
  {
    goto LABEL_203;
  }

  v140 = v178[3] != 1 || v19[62] == v13;
  if (!v140 || v178[4] == 1 && v19[63] != a11 || v178[5] == 1 && v19[64] != a12)
  {
    goto LABEL_203;
  }

  if ((v177 != 1 || (result = sub_299340988(v19 + 6, *v16, v16[1]))) && (BYTE1(v177) != 1 || (result = sub_299340988(v19, *v17, v17[1]))) && (BYTE2(v177) != 1 || (result = sub_299340988(v19 + 3, *v18, v18[1]))) && (HIBYTE(v177) != 1 || (result = sub_299340988(v19 + 9, *v15, v15[1]))) && (v178[0] != 1 || (result = sub_299340988(v19 + 12, *v14, v14[1]))))
  {
    result = 1;
  }

LABEL_204:
  v142 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_299340904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  if (*(v63 - 129) < 0)
  {
    operator delete(*(v63 - 152));
  }

  sub_2992510CC(&a28);
  sub_2992510CC(&a63);
  _Unwind_Resume(a1);
}

BOOL sub_299340988(void *a1, _BYTE *a2, _BYTE *a3)
{
  v3 = *(a1 + 23);
  if ((v3 & 0x8000000000000000) == 0)
  {
    if (*(a1 + 23))
    {
      v4 = a3 - a2;
      if (v3 != v4 >> 1)
      {
        return 0;
      }

      return memcmp(a1, a2, v4) == 0;
    }

    return a3 == a2;
  }

  v5 = a1[1];
  if (!v5)
  {
    return a3 == a2;
  }

  v4 = a3 - a2;
  if (v5 == v4 >> 1)
  {
    a1 = *a1;
    return memcmp(a1, a2, v4) == 0;
  }

  return 0;
}

uint64_t sub_2993409F4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = sub_2992C84D8(v2);
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = sub_2992C84D8(v4);
  }

  else
  {
    v5 = 1;
  }

  return v3 & v5;
}

uint64_t sub_299340A44(uint64_t a1, char *a2, uint64_t a3, void *a4, int a5, char a6, char a7)
{
  v231 = *MEMORY[0x29EDCA608];
  if (!a2 || ((*(*a2 + 88))(a2) & 1) != 0 || (*(*a2 + 96))(a2) == 80 || (*(*a2 + 96))(a2) == 89)
  {
    goto LABEL_5;
  }

  v13 = (*(*a2 + 304))(a2);
  v15 = *v13;
  v14 = v13[1];
  v172 = v13;
  v16 = (*(*a2 + 544))(a2);
  v18 = v17;
  __s1 = v16;
  v212[0] = v16;
  v212[1] = v17;
  v19 = (a2 + 96);
  v181 = a2;
  if (a2[119] < 0)
  {
    v19 = *v19;
  }

  if (a5 && v17 && *v16 == 32 && sub_299342610(v212))
  {
LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v206 = *(a1 + 8);
  v207 = 0u;
  v208 = 0u;
  v209 = 0u;
  v210 = 0u;
  v211 = 0u;
  v205 = 0;
  memset(&v204, 0, sizeof(v204));
  memset(&v203, 0, sizeof(v203));
  sub_299383450(a4, 0, &v204, &v203.__r_.__value_.__l.__data_, &v205 + 1, &v205);
  if (HIWORD(v205) <= 0x64FuLL)
  {
    v177 = word_299409CC8[HIWORD(v205)];
  }

  else
  {
    v177 = 0;
  }

  if (v205 <= 0x64FuLL)
  {
    v20 = word_299409CC8[v205];
  }

  else
  {
    v20 = 0;
  }

  sub_29925851C(&__dst, __s1, v18);
  if (0xCCCCCCCCCCCCCCCDLL * ((v172[1] - *v172) >> 3) < 2)
  {
    v199 = 0uLL;
    v200 = 0;
  }

  else
  {
    sub_29925851C(&v199, &__s1[2 * *(*v172 + 24)], *(*v172 + 64));
  }

  __p = 0uLL;
  v198 = 0;
  if (v14 == v15)
  {
LABEL_382:
    v10 = 0;
    goto LABEL_383;
  }

  v173 = 0;
  v171 = 0;
  v21 = 0;
  v162 = v14 - v15;
  v22 = 0xCCCCCCCCCCCCCCCDLL * ((v14 - v15) >> 3);
  if (v22 <= 1)
  {
    v22 = 1;
  }

  v164 = v22;
  do
  {
    v176 = v177;
    v23 = v181;
    v167 = (*(*v181 + 312))(v181, v21);
    v180 = (*(*v23 + 320))(v23, v21);
    v183 = *(*v172 + 40 * v21 + 24);
    v169 = (*(*v23 + 352))(v23, v21);
    v182 = v21;
    v24 = (*(*v23 + 344))(v23, v21);
    v168 = v24;
    if (v24 <= 0x64F)
    {
      v177 = word_299409CC8[v24];
    }

    else
    {
      v177 = 0;
    }

    v170 = v21 + 1;
    v25 = (*(*v181 + 344))(v181);
    if (v25 <= 0x64F)
    {
      v26 = word_299409CC8[v25];
    }

    else
    {
      v26 = 0;
    }

    v27 = v182 + 2;
    v28 = (*(*v181 + 344))(v181, v182 + 2);
    if (v28 <= 0x64F)
    {
      v29 = word_299409CC8[v28];
    }

    else
    {
      v29 = 0;
    }

    if (v27 >= 0xCCCCCCCCCCCCCCCDLL * ((v172[1] - *v172) >> 3))
    {
      v185[0] = 0;
      v185[1] = 0;
      v186 = 0;
    }

    else
    {
      sub_29925851C(v185, &__s1[2 * *(*v172 + 40 * v182 + 24) + 2 * *(*v172 + 40 * v182 + 64)], *(*v172 + 40 * v27 + 24));
    }

    if (SHIBYTE(v198) < 0)
    {
      operator delete(__p);
    }

    __p = *v185;
    v198 = v186;
    sub_29933B184(v185, &v203, &v204, &__dst, &v199, &__p, v20, v176, v177, v26, v29);
    __src = v19;
    v30 = *(*(*v181 + 560))(v181, v182) - 3;
    if (v30 < 2 || (a6 & 1) != 0)
    {
      goto LABEL_58;
    }

    v163 = v30;
    v31 = *(a1 + 24);
    if (v31)
    {
      if (!v180)
      {
        goto LABEL_48;
      }

      v32 = v19;
      if ((**(a1 + 16) & 0x4000000) == 0 || *v19 == 9787)
      {
        goto LABEL_49;
      }

      if ((u_charType(*v19) - 19) >= 0xB)
      {
        v31 = *(a1 + 24);
LABEL_48:
        v32 = v19;
LABEL_49:
        if (v32)
        {
          v33 = v180;
        }

        else
        {
          v33 = 0;
        }

        v161 = v33;
        sub_2992B8778(v31, v32, v33, 0, &v220);
        size = v220.__r_.__value_.__l.__size_;
        v34 = v220.__r_.__value_.__r.__words[0];
        if (v220.__r_.__value_.__r.__words[0] != v220.__r_.__value_.__l.__size_)
        {
          v35 = 15;
          do
          {
            v174 = sub_2992B8D0C(v34, "Surface");
            v36 = sub_2992B8D0C(v34, "Reading");
            v37 = sub_2992B8D0C(v34, "Surface");
            v38 = sub_2992B8D0C(v34, "LeftSurface1");
            v39 = sub_2992B8D0C(v34, "LeftSurface2");
            v40 = sub_2992B8D0C(v34, "RightSurface1");
            v41 = sub_2992B8DA4(v34, "POS");
            v42 = sub_2992B8DA4(v34, "LeftPOS1");
            v43 = sub_2992B8DA4(v34, "LeftPOS2");
            v44 = sub_2992B8DA4(v34, "RightPOS1");
            if (sub_29933F9C0(a1, v185, v39, v38, v37, v40, &unk_299417FA0, v43, v42, v41, v44, 0, 0))
            {
              sub_2992738F8(&v206, *v174, (*(v174 + 8) - *v174) >> 1, v167, *v36, (*(v36 + 8) - *v36) >> 1, v169, v168);
              v56 = __src;
              v64 = sub_2993652F8(6u);
              if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
              {
                if (__s1)
                {
                  v103 = v183;
                }

                else
                {
                  v103 = 0;
                }

                sub_299277B3C(__s1, v103, &v218);
                if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v104 = &v218;
                }

                else
                {
                  v104 = v218.__r_.__value_.__r.__words[0];
                }

                sub_299277B3C(__src, v161, &v217);
                v105 = SHIBYTE(v217.__r_.__value_.__r.__words[2]);
                v106 = v217.__r_.__value_.__r.__words[0];
                sub_299277B3C(*v174, (*(v174 + 8) - *v174) >> 1, &v216);
                v107 = &v217;
                if (v105 < 0)
                {
                  v107 = v106;
                }

                v108 = &v216;
                if ((v216.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v108 = v216.__r_.__value_.__r.__words[0];
                }

                LODWORD(buf.__r_.__value_.__l.__data_) = 136316674;
                *(buf.__r_.__value_.__r.__words + 4) = v104;
                WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
                *(&buf.__r_.__value_.__r.__words[1] + 6) = v107;
                HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
                v222 = v108;
                v223 = 1024;
                v224 = v169;
                v225 = 1024;
                v226 = v168;
                v227 = 1024;
                v228 = v195;
                v229 = 1024;
                v230 = v196;
                _os_log_debug_impl(&dword_29918C000, v64, OS_LOG_TYPE_DEBUG, "[LPL::applyLexicalPreferences] %s (%s) => %s (lc:%d rc:%d f-lc:%d f-rc:%d)", &buf, 0x38u);
                if (SHIBYTE(v216.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v216.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v217.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v217.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v218.__r_.__value_.__l.__data_);
                }
              }

              buf.__r_.__value_.__r.__words[0] = &v220;
              sub_299225D98(&buf);
              goto LABEL_300;
            }

            if (!v35)
            {
              break;
            }

            v34 += 32;
            --v35;
          }

          while (v34 != size);
        }

        buf.__r_.__value_.__r.__words[0] = &v220;
        sub_299225D98(&buf);
        v30 = v163;
LABEL_58:
        if (v30 < 2)
        {
          goto LABEL_81;
        }
      }
    }

    sub_29925851C(&v215, __src, v180);
    v45 = sub_29923AF34(a1 + 88, &v215);
    v46 = *(a1 + 96);
    if (!*&v46)
    {
      goto LABEL_76;
    }

    v47 = v45;
    v48 = vcnt_s8(v46);
    v48.i16[0] = vaddlv_u8(v48);
    v49 = v48.u32[0];
    if (v48.u32[0] > 1uLL)
    {
      v50 = v45;
      if (v45 >= *&v46)
      {
        v50 = v45 % *&v46;
      }
    }

    else
    {
      v50 = (*&v46 - 1) & v45;
    }

    v51 = *(*(a1 + 88) + 8 * v50);
    if (!v51 || (v52 = *v51) == 0)
    {
LABEL_75:
      v46.i8[0] = 0;
      goto LABEL_76;
    }

    while (1)
    {
      v53 = *(v52 + 1);
      if (v47 == v53)
      {
        break;
      }

      if (v49 > 1)
      {
        if (v53 >= *&v46)
        {
          v53 %= *&v46;
        }
      }

      else
      {
        v53 &= *&v46 - 1;
      }

      if (v53 != v50)
      {
        goto LABEL_75;
      }

LABEL_74:
      v52 = *v52;
      if (!v52)
      {
        goto LABEL_75;
      }
    }

    if (!sub_29923AF78(a1 + 88, v52 + 8, &v215))
    {
      goto LABEL_74;
    }

    v69 = *(v52 + 5);
    v68 = *(v52 + 6);
    while (1)
    {
      if (v69 == v68)
      {
        v86 = 0;
        goto LABEL_222;
      }

      v70 = *(v69 + 95);
      if (v70 >= 0)
      {
        v71 = v69 + 72;
      }

      else
      {
        v71 = *(v69 + 72);
      }

      if (v70 >= 0)
      {
        v72 = *(v69 + 95);
      }

      else
      {
        v72 = *(v69 + 80);
      }

      memset(&buf, 0, sizeof(buf));
      sub_2992A4CD0(&buf, v71, v71 + 2 * v72, v72);
      v73 = *(v69 + 47);
      if (v73 >= 0)
      {
        v74 = v69 + 24;
      }

      else
      {
        v74 = *(v69 + 24);
      }

      if (v73 >= 0)
      {
        v75 = *(v69 + 47);
      }

      else
      {
        v75 = *(v69 + 32);
      }

      memset(&v220, 0, sizeof(v220));
      sub_2992A4CD0(&v220, v74, v74 + 2 * v75, v75);
      v76 = *(v69 + 71);
      if (v76 >= 0)
      {
        v77 = v69 + 48;
      }

      else
      {
        v77 = *(v69 + 48);
      }

      if (v76 >= 0)
      {
        v78 = *(v69 + 71);
      }

      else
      {
        v78 = *(v69 + 56);
      }

      memset(&v218, 0, sizeof(v218));
      sub_2992A4CD0(&v218, v77, v77 + 2 * v78, v78);
      v79 = *(v69 + 119);
      if (v79 >= 0)
      {
        v80 = v69 + 96;
      }

      else
      {
        v80 = *(v69 + 96);
      }

      if (v79 >= 0)
      {
        v81 = *(v69 + 119);
      }

      else
      {
        v81 = *(v69 + 104);
      }

      memset(&v217, 0, sizeof(v217));
      sub_2992A4CD0(&v217, v80, v80 + 2 * v81, v81);
      v82 = *(v69 + 143);
      if (v82 >= 0)
      {
        v83 = v69 + 120;
      }

      else
      {
        v83 = *(v69 + 120);
      }

      if (v82 >= 0)
      {
        v84 = *(v69 + 143);
      }

      else
      {
        v84 = *(v69 + 128);
      }

      memset(&v216, 0, sizeof(v216));
      sub_2992A4CD0(&v216, v83, v83 + 2 * v84, v84);
      v85 = sub_29933F9C0(a1, v185, &v218.__r_.__value_.__l.__data_, &v220.__r_.__value_.__l.__data_, &buf.__r_.__value_.__l.__data_, &v217.__r_.__value_.__l.__data_, &v216.__r_.__value_.__l.__data_, *(v69 + 148), *(v69 + 146), *(v69 + 144), *(v69 + 150), *(v69 + 152), 1);
      if (v216.__r_.__value_.__r.__words[0])
      {
        v216.__r_.__value_.__l.__size_ = v216.__r_.__value_.__r.__words[0];
        operator delete(v216.__r_.__value_.__l.__data_);
      }

      if (v217.__r_.__value_.__r.__words[0])
      {
        v217.__r_.__value_.__l.__size_ = v217.__r_.__value_.__r.__words[0];
        operator delete(v217.__r_.__value_.__l.__data_);
      }

      if (v218.__r_.__value_.__r.__words[0])
      {
        v218.__r_.__value_.__l.__size_ = v218.__r_.__value_.__r.__words[0];
        operator delete(v218.__r_.__value_.__l.__data_);
      }

      if (v220.__r_.__value_.__r.__words[0])
      {
        v220.__r_.__value_.__l.__size_ = v220.__r_.__value_.__r.__words[0];
        operator delete(v220.__r_.__value_.__l.__data_);
      }

      if (buf.__r_.__value_.__r.__words[0])
      {
        buf.__r_.__value_.__l.__size_ = buf.__r_.__value_.__r.__words[0];
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      if (v85)
      {
        break;
      }

      v69 += 160;
    }

    v97 = *(v69 + 23);
    if (v97 < 0)
    {
      v102 = *v69;
      v98 = *(v69 + 8);
      if (v98 == v183 && !memcmp(__s1, *v69, 2 * v183))
      {
        goto LABEL_229;
      }

      v99 = HIBYTE(v215.__r_.__value_.__r.__words[2]);
      v100 = (v215.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0;
      if ((v215.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v101 = &v215;
      }

      else
      {
        v101 = v215.__r_.__value_.__r.__words[0];
      }

LABEL_217:
      if (v100)
      {
        v109 = v215.__r_.__value_.__l.__size_;
      }

      else
      {
        v109 = v99;
      }

      sub_2992738F8(&v206, v102, v98, v167, v101, v109, v169, v168);
      v110 = sub_2993652F8(6u);
      if (os_log_type_enabled(v110, OS_LOG_TYPE_DEBUG))
      {
        if (__s1)
        {
          v140 = v183;
        }

        else
        {
          v140 = 0;
        }

        sub_299277B3C(__s1, v140, &v220);
        if ((v220.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v141 = &v220;
        }

        else
        {
          v141 = v220.__r_.__value_.__r.__words[0];
        }

        if (__src)
        {
          v142 = v180;
        }

        else
        {
          v142 = 0;
        }

        sub_299277B3C(__src, v142, &v218);
        v143 = SHIBYTE(v218.__r_.__value_.__r.__words[2]);
        v144 = v218.__r_.__value_.__r.__words[0];
        v145 = *(v69 + 23);
        if (v145 >= 0)
        {
          v146 = v69;
        }

        else
        {
          v146 = *v69;
        }

        if (v145 >= 0)
        {
          v147 = *(v69 + 23);
        }

        else
        {
          v147 = *(v69 + 8);
        }

        sub_299277B3C(v146, v147, &v217);
        v148 = &v218;
        if (v143 < 0)
        {
          v148 = v144;
        }

        v149 = &v217;
        if ((v217.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v149 = v217.__r_.__value_.__r.__words[0];
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
        *(buf.__r_.__value_.__r.__words + 4) = v141;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v148;
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
        v222 = v149;
        _os_log_debug_impl(&dword_29918C000, v110, OS_LOG_TYPE_DEBUG, "[LPL::applyLexicalRules] Rewriting %s (%s) => %s", &buf, 0x20u);
        if (SHIBYTE(v217.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v217.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v218.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v220.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v220.__r_.__value_.__l.__data_);
        }

        v86 = 1;
        v54 = 1;
      }

      else
      {
        v86 = 1;
        v54 = 1;
      }
    }

    else
    {
      if (v183 != v97 || memcmp(__s1, v69, 2 * (*(v69 + 23) & 0x7F)))
      {
        v98 = v97;
        v99 = HIBYTE(v215.__r_.__value_.__r.__words[2]);
        v100 = (v215.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0;
        if ((v215.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v101 = &v215;
        }

        else
        {
          v101 = v215.__r_.__value_.__r.__words[0];
        }

        v102 = v69;
        goto LABEL_217;
      }

LABEL_229:
      v54 = 0;
      v86 = 1;
    }

LABEL_222:
    v46.i8[0] = v86 & v54;
LABEL_76:
    if (SHIBYTE(v215.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v215.__r_.__value_.__l.__data_);
      if ((v46.i8[0] & 1) == 0)
      {
        goto LABEL_81;
      }

LABEL_80:
      v55 = 1;
      v56 = __src;
      goto LABEL_301;
    }

    if (v46.i8[0])
    {
      goto LABEL_80;
    }

LABEL_81:
    if (a7)
    {
      goto LABEL_272;
    }

    if (!*(a1 + 32))
    {
      goto LABEL_272;
    }

    v219 = 0;
    v57 = sub_299281F40(__s1, v183, &v219, 1);
    if (!v57)
    {
      goto LABEL_272;
    }

    v58 = v219;
    if (!v219)
    {
      goto LABEL_272;
    }

    if ((v192 & 0x80u) == 0)
    {
      v59 = v192;
    }

    else
    {
      v59 = v191[1];
    }

    if ((atomic_load_explicit(&qword_2A14611F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14611F0))
    {
      qword_2A14611E8 = sub_299237120();
      __cxa_guard_release(&qword_2A14611F0);
    }

    if (v58 == v183 && !v59 && (*qword_2A14611E8 & 1) == 0)
    {
      v60 = sub_299281F40(__src, v180, 0, 0);
      if ((v57 - 3) >= 0xFFFFFFFE && v60 == v57)
      {
        goto LABEL_272;
      }
    }

    memset(&v218, 0, sizeof(v218));
    if (v183 == v219)
    {
      *(&v218.__r_.__value_.__s + 23) = 0;
      LOWORD(v218.__r_.__value_.__l.__data_) = 0;
      v61 = L"NW:RS1=";
      v62 = v191;
      v63 = __src;
    }

    else
    {
      sub_29925851C(&buf, &__s1[2 * v219], v183 - v219);
      v63 = __src;
      if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v218.__r_.__value_.__l.__data_);
      }

      v218 = buf;
      v62 = &v218;
      v61 = L"NW:SFX=";
    }

    sub_299343A98(&v217, v61, &v62->__r_.__value_.__l.__data_);
    if ((v217.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v65 = &v217;
    }

    else
    {
      v65 = v217.__r_.__value_.__r.__words[0];
    }

    if ((v217.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v66 = SHIBYTE(v217.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v66 = v217.__r_.__value_.__l.__size_;
    }

    sub_2992B8778(*(a1 + 32), v65, v66, 0, &v216);
    if (v216.__r_.__value_.__l.__size_ == v216.__r_.__value_.__r.__words[0] || (v67 = sub_2992B8DA4(v216.__r_.__value_.__l.__data_, "IntValue"), v67 == v57))
    {
      buf.__r_.__value_.__r.__words[0] = &v216;
      sub_299225D98(&buf);
      if (SHIBYTE(v217.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v217.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v218.__r_.__value_.__l.__data_);
      }

      goto LABEL_272;
    }

    sub_29925851C(&v215, __s1, v183);
    if (v57 == 2)
    {
      sub_299281268(&v215);
      v214.__r_.__value_.__r.__words[0] = 0;
      goto LABEL_168;
    }

    v214.__r_.__value_.__r.__words[0] = 0;
    if (v57 != 3)
    {
LABEL_168:
      if (sub_299281750(&v215, &v214))
      {
        goto LABEL_169;
      }

LABEL_253:
      v114 = 0;
      goto LABEL_265;
    }

    if ((v215.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v87 = &v215;
    }

    else
    {
      v87 = v215.__r_.__value_.__r.__words[0];
    }

    if ((v215.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v88 = HIBYTE(v215.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v88 = v215.__r_.__value_.__l.__size_;
    }

    if ((sub_29928182C(v87, v88, &v214) & 1) == 0)
    {
      goto LABEL_253;
    }

LABEL_169:
    v89 = SHIBYTE(v215.__r_.__value_.__r.__words[2]);
    v90 = v215.__r_.__value_.__r.__words[0];
    if ((v215.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v90 = &v215;
    }

    v91 = 0;
    if ((v215.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v89 = v215.__r_.__value_.__l.__size_;
    }

    if (v89)
    {
      while (1)
      {
        v92 = *(&v90->__r_.__value_.__l.__data_ + v91);
        v93 = v92 == 48 || v92 == 65296;
        if (!v93 && v92 != 12295)
        {
          break;
        }

        if (v89 == ++v91)
        {
          v91 = v89;
          break;
        }
      }
    }

    v95 = v214.__r_.__value_.__r.__words[0] == 0;
    sub_299217DF0(&buf, byte_29945C656);
    v96 = v91 - v95;
    switch(v67)
    {
      case 3:
        if (SHIBYTE(v215.__r_.__value_.__r.__words[2]) < 0)
        {
          *v215.__r_.__value_.__l.__data_ = 0;
          v215.__r_.__value_.__l.__size_ = 0;
        }

        else
        {
          LOWORD(v215.__r_.__value_.__l.__data_) = 0;
          *(&v215.__r_.__value_.__s + 23) = 0;
        }

        if (v96)
        {
          v111 = 0;
        }

        else
        {
          v111 = sub_299281198(v214.__r_.__value_.__l.__data_, &v215);
        }

        break;
      case 2:
        if (SHIBYTE(v215.__r_.__value_.__r.__words[2]) < 0)
        {
          *v215.__r_.__value_.__l.__data_ = 0;
          v215.__r_.__value_.__l.__size_ = 0;
        }

        else
        {
          LOWORD(v215.__r_.__value_.__l.__data_) = 0;
          *(&v215.__r_.__value_.__s + 23) = 0;
        }

        if (sub_2992815B4(v214.__r_.__value_.__l.__data_, &v215))
        {
          v111 = sub_299281394(&v215);
        }

        else
        {
          v111 = 0;
        }

        if (v96)
        {
          do
          {
            sub_2992174C4(&buf, 65296);
            --v96;
          }

          while (v96);
LABEL_244:
          sub_2992C3A78(&buf.__r_.__value_.__l.__data_, &v215.__r_.__value_.__l.__data_, &v220);
          if (SHIBYTE(v215.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v215.__r_.__value_.__l.__data_);
          }

          v215 = v220;
        }

        break;
      case 1:
        if (SHIBYTE(v215.__r_.__value_.__r.__words[2]) < 0)
        {
          *v215.__r_.__value_.__l.__data_ = 0;
          v215.__r_.__value_.__l.__size_ = 0;
        }

        else
        {
          LOWORD(v215.__r_.__value_.__l.__data_) = 0;
          *(&v215.__r_.__value_.__s + 23) = 0;
        }

        v111 = sub_2992815B4(v214.__r_.__value_.__l.__data_, &v215);
        if (v96)
        {
          do
          {
            sub_2992174C4(&buf, 48);
            --v96;
          }

          while (v96);
          goto LABEL_244;
        }

        break;
      default:
        v111 = 0;
        if (v96)
        {
          goto LABEL_244;
        }

        break;
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    if ((v111 & 1) == 0)
    {
      goto LABEL_253;
    }

    v112 = SHIBYTE(v218.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v218.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      v112 = v218.__r_.__value_.__l.__size_;
      if (v218.__r_.__value_.__l.__size_)
      {
        v113 = v218.__r_.__value_.__r.__words[0];
LABEL_256:
        sub_29922C614(&v215, v113, v112);
      }
    }

    else if (*(&v218.__r_.__value_.__s + 23))
    {
      v113 = &v218;
      goto LABEL_256;
    }

    if ((v215.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v115 = &v215;
    }

    else
    {
      v115 = v215.__r_.__value_.__r.__words[0];
    }

    if ((v215.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v116 = HIBYTE(v215.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v116 = v215.__r_.__value_.__l.__size_;
    }

    sub_2992738F8(&v206, v115, v116, v167, v63, v180, v169, v168);
    v117 = sub_2993652F8(6u);
    if (os_log_type_enabled(v117, OS_LOG_TYPE_DEBUG))
    {
      if (__s1)
      {
        v150 = v183;
      }

      else
      {
        v150 = 0;
      }

      sub_299277B3C(__s1, v150, &v220);
      if ((v220.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v151 = &v220;
      }

      else
      {
        v151 = v220.__r_.__value_.__r.__words[0];
      }

      if (v63)
      {
        v152 = v180;
      }

      else
      {
        v152 = 0;
      }

      sub_299277B3C(v63, v152, &v214);
      v153 = SHIBYTE(v214.__r_.__value_.__r.__words[2]);
      v154 = v214.__r_.__value_.__r.__words[0];
      if ((v215.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v155 = &v215;
      }

      else
      {
        v155 = v215.__r_.__value_.__r.__words[0];
      }

      if ((v215.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v156 = SHIBYTE(v215.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v156 = v215.__r_.__value_.__l.__size_;
      }

      sub_299277B3C(v155, v156, &v213);
      v157 = &v214;
      if (v153 < 0)
      {
        v157 = v154;
      }

      v158 = &v213;
      if ((v213.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v158 = v213.__r_.__value_.__r.__words[0];
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136316674;
      *(buf.__r_.__value_.__r.__words + 4) = v151;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v157;
      HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
      v222 = v158;
      v223 = 1024;
      v224 = v169;
      v225 = 1024;
      v226 = v168;
      v227 = 1024;
      v228 = v195;
      v229 = 1024;
      v230 = v196;
      _os_log_debug_impl(&dword_29918C000, v117, OS_LOG_TYPE_DEBUG, "[LPL::applyNonLexicalPreferences] %s (%s) => %s (lc:%d rc:%d f-lc:%d f-rc:%d)", &buf, 0x38u);
      if (SHIBYTE(v213.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v213.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v214.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v214.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v220.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v220.__r_.__value_.__l.__data_);
      }
    }

    v114 = 1;
LABEL_265:
    if (SHIBYTE(v215.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v215.__r_.__value_.__l.__data_);
    }

    buf.__r_.__value_.__r.__words[0] = &v216;
    sub_299225D98(&buf);
    if (SHIBYTE(v217.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v217.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v218.__r_.__value_.__l.__data_);
    }

    if (v114)
    {
      goto LABEL_80;
    }

LABEL_272:
    v118 = sub_299322EB0(**(a1 + 16)) ^ 1;
    if (v162 != 40)
    {
      LOBYTE(v118) = 1;
    }

    if (v118)
    {
      goto LABEL_297;
    }

    if (v183)
    {
      v119 = 0;
      v120 = __s1;
      v121 = 1;
      v122 = v183;
      do
      {
        v123 = *v120++;
        v124 = (v123 + 191);
        v125 = v123 + 223;
        v126 = ((v123 & 0xFFDF) - 65) >= 0x1Au && v124 >= 0x1A;
        if (v126 && v125 > 0x19u)
        {
          break;
        }

        v119 = v121++ >= v183;
        --v122;
      }

      while (v122);
      if (!v119)
      {
        goto LABEL_297;
      }
    }

    if (!v180)
    {
      goto LABEL_297;
    }

    v128 = 0;
    for (i = 0; i != v180; v128 = ++i >= v180)
    {
      v130 = __src[i];
      v126 = ((v130 & 0xFFDF) - 65) >= 0x1Au;
      v131 = (v130 + 191);
      v132 = v130 + 223;
      if (v126 && v131 >= 0x1A && v132 > 0x19u)
      {
        break;
      }
    }

    if (v128)
    {
LABEL_297:
      sub_2992738F8(&v206, __s1, v183, v167, __src, v180, v169, v168);
      v55 = 0;
      v56 = __src;
      goto LABEL_301;
    }

    sub_299279CA4(__src, v180, &buf);
    v56 = __src;
    sub_2992738F8(&v206, buf.__r_.__value_.__l.__data_, (buf.__r_.__value_.__l.__size_ - buf.__r_.__value_.__r.__words[0]) >> 1, v167, __src, v180, v169, v168);
    if (buf.__r_.__value_.__r.__words[0])
    {
      buf.__r_.__value_.__l.__size_ = buf.__r_.__value_.__r.__words[0];
      operator delete(buf.__r_.__value_.__l.__data_);
    }

LABEL_300:
    v55 = 1;
LABEL_301:
    if (SHIBYTE(v203.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v203.__r_.__value_.__l.__data_);
    }

    v203 = v204;
    *(&v204.__r_.__value_.__s + 23) = 0;
    LOWORD(v204.__r_.__value_.__l.__data_) = 0;
    v135 = v182;
    if (v182)
    {
      LODWORD(v135) = 0;
      v136 = (v210 + 24);
      v137 = v173;
      do
      {
        v138 = *v136;
        v136 += 20;
        LODWORD(v135) = v135 + v138;
        v137 -= 40;
      }

      while (v137);
      v135 = v135;
    }

    if (v207)
    {
      v139 = *(v210 + 40 * v182 + 24);
    }

    else
    {
      v139 = 0;
    }

    sub_29925851C(&buf, (v207 + 2 * v135), v139);
    if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v204.__r_.__value_.__l.__data_);
    }

    v204 = buf;
    if (SHIBYTE(v202) < 0)
    {
      operator delete(__dst);
    }

    __dst = v199;
    v202 = v200;
    v199 = __p;
    v200 = v198;
    HIBYTE(v198) = 0;
    LOWORD(__p) = 0;
    if (v194 < 0)
    {
      operator delete(v193);
    }

    if (v192 < 0)
    {
      operator delete(v191[0]);
    }

    if (v190 < 0)
    {
      operator delete(v189);
    }

    if (v188 < 0)
    {
      operator delete(v187);
    }

    if (SHIBYTE(v186) < 0)
    {
      operator delete(v185[0]);
    }

    v171 |= v55;
    v19 = &v56[v180];
    v173 += 40;
    v20 = v176;
    __s1 += 2 * v183;
    v21 = v170;
  }

  while (v170 != v164);
  if ((v171 & 1) == 0)
  {
    goto LABEL_382;
  }

  (*(*v181 + 112))(v181);
  v159 = v181[55];
  (*(*v181 + 96))(v181);
  (*(*v181 + 408))(v181);
  v10 = sub_299273A90(&v206);
  if (v10)
  {
    v160 = (*(*v181 + 200))(v181);
    (*(*v10 + 512))(v10, v160);
  }

LABEL_383:
  if (SHIBYTE(v198) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v200) < 0)
  {
    operator delete(v199);
  }

  if (SHIBYTE(v202) < 0)
  {
    operator delete(__dst);
  }

  if (SHIBYTE(v203.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v203.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v204.__r_.__value_.__l.__data_);
  }

  if (*(&v211 + 1))
  {
    CFRelease(*(&v211 + 1));
  }

  *(&v211 + 1) = 0;
  if (v210)
  {
    *(&v210 + 1) = v210;
    operator delete(v210);
  }

  if (*(&v208 + 1))
  {
    *&v209 = *(&v208 + 1);
    operator delete(*(&v208 + 1));
  }

  if (v207)
  {
    *(&v207 + 1) = v207;
    operator delete(v207);
  }

LABEL_6:
  v11 = *MEMORY[0x29EDCA608];
  return v10;
}