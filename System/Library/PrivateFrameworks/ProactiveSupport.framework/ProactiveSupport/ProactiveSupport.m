uint64_t unlockedSinceBoot()
{
  v0 = atomic_load(unlockedSinceBoot_haveSeenUnlocked);
  if (v0)
  {
    return 1;
  }

  result = MKBDeviceUnlockedSinceBoot();
  if (result != 1)
  {
    return 0;
  }

  atomic_store(1u, unlockedSinceBoot_haveSeenUnlocked);
  return result;
}

uint64_t deviceLockState()
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = MKBGetDeviceLockState();
  if (v0 >= 4)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v3[0] = 67109120;
      v3[1] = v0;
      _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "AKS: Error: Locked: %u", v3, 8u);
    }

    v0 = 1;
  }

  v1 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t registerForAKSEvents(uint64_t a1, void *a2)
{
  v2 = a2;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __registerForAKSEvents_block_invoke;
  v10 = &unk_1E77F2360;
  v3 = v2;
  v11 = v3;
  v4 = AKSEventsRegister();
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v6 = 0;
    _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed register: AKSEventsRegister", v6, 2u);
  }

  return v4;
}

void unregisterForAKSEvents(uint64_t a1)
{
  if (a1)
  {
    v2 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __unregisterForAKSEvents_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = a1;
    dispatch_async(v2, block);
  }
}

__CFString *_PASJoinStrings(void *a1, void *a2)
{
  v92 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [v3 count];
  if (!v5)
  {
    v11 = &stru_1F1B24B60;
    goto LABEL_76;
  }

  v6 = v5;
  v7 = v5 - 1;
  if (v5 != 1)
  {
    v84 = objc_autoreleasePoolPush();
    v13 = [v4 length];
    v14 = v13 * v7;
    v89 = v13;
    v85 = v4;
    if (v13)
    {
      v15 = [v4 canBeConvertedToEncoding:1];
    }

    else
    {
      v4 = 0;
      v15 = 1;
    }

    v16 = v4;
    v17 = 0;
    for (i = 0; i != v6; ++i)
    {
      v19 = [v3 objectAtIndexedSubscript:i];
      v20 = [v19 description];
      if (v20 != v19)
      {
        if (!v17)
        {
          v17 = [v3 mutableCopy];
        }

        [v17 setObject:v20 atIndexedSubscript:i];
      }

      v21 = [v20 length];
      if (v21)
      {
        v22 = v21;
        if (!v16)
        {
          v16 = v20;
        }

        v14 += v22;
        if (v15)
        {
          v15 = [v20 canBeConvertedToEncoding:1];
        }

        else
        {
          v15 = 0;
        }
      }
    }

    if (!v14)
    {
      v11 = &stru_1F1B24B60;
LABEL_73:
      v4 = v85;
      goto LABEL_74;
    }

    v4 = v85;
    if (v14 == [v16 length])
    {
      v11 = [v16 copy];
LABEL_74:

      v12 = v84;
      goto LABEL_75;
    }

    if (v17)
    {
      v23 = v17;
    }

    else
    {
      v23 = v3;
    }

    v24 = v23;
    v88 = v24;
    if (v15)
    {
      memptr = 0;
      v91 = 0;
      v25 = v89;
      v86 = v14 + 1;
      if (v14 + 1 <= 0x400)
      {
        MEMORY[0x1EEE9AC00](v24);
        v27 = &v81 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
        bzero(v27, v26);
        memptr = v27;
        LOBYTE(v91) = 1;
        goto LABEL_30;
      }

      v78 = malloc_type_posix_memalign(&memptr, 8uLL, v14 + 1, 0x9A775E0EuLL);
      LOBYTE(v91) = 0;
      if (!v78)
      {
        v25 = v89;
        v27 = memptr;
LABEL_30:
        v28 = v91;
        v29 = [v88 objectAtIndexedSubscript:0];
        v30 = [v29 length];
        v31 = v29;
        v32 = v31;
        v87 = v30;
        if (v30)
        {
          CStringPtr = CFStringGetCStringPtr(v31, 0x600u);
          if (v87 > v14)
          {
            goto LABEL_79;
          }

          v34.location = CStringPtr;
          if (CStringPtr)
          {
            memcpy(v27, CStringPtr, v30);
          }

          else
          {
            v34.length = v30;
            CFStringGetBytes(v32, v34, 0x600u, 0, 0, v27, v30, 0);
          }
        }

        v83 = v32;

        v45 = v85;
        v46 = v45;
        if (!v25)
        {
          goto LABEL_51;
        }

        v47 = CFStringGetCStringPtr(v45, 0x600u);
        v30 = &v87[v25];
        if (&v87[v25] <= v14)
        {
          v48.location = v47;
          if (v47)
          {
            memcpy(&v87[v27], v47, v25);
          }

          else
          {
            v48.length = v25;
            CFStringGetBytes(v46, v48, 0x600u, 0, 0, &v87[v27], v25, 0);
          }

LABEL_51:
          v82 = v28;

          v53 = 1;
          while (1)
          {
            v54 = [v88 objectAtIndexedSubscript:v53];
            v55 = [v54 length];
            v56 = v54;
            v57 = v56;
            if (v55)
            {
              v58 = CFStringGetCStringPtr(v56, 0x600u);
              v59 = &v30[v55];
              if (&v30[v55] > v14)
              {
                goto LABEL_79;
              }

              v60.location = v58;
              if (v58)
              {
                memcpy(&v30[v27], v58, v55);
              }

              else
              {
                v60.length = v55;
                CFStringGetBytes(v57, v60, 0x600u, 0, 0, &v30[v27], v55, 0);
              }
            }

            else
            {
              v59 = v30;
            }

            v61 = v89;
            if (v59 == v14)
            {
              break;
            }

            ++v53;
            memcpy(&v59[v27], &v87[v27], v89);
            v30 = &v59[v61];
          }

          v27[v14] = 0;
          v62 = MEMORY[0x1E696AEC0];
          v63 = v27;
          v64 = v82;
          v65 = v86;
          v66 = 1;
          v67 = 1;
LABEL_72:
          v11 = [v62 _pas_stringWithConsumedAllocaDescrNoCopy:v63 bufferSize:v64 encoding:v65 nullTerminated:v66 isExternalRepresentation:{v67, 0}];

          goto LABEL_73;
        }

LABEL_79:
        __assert_rtn("appendASCII", "_PASStringUtil.m", 362, "*destCursor + len <= destLen");
      }

LABEL_85:
      v80 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA18] reason:@"malloc failed" userInfo:0];
      objc_exception_throw(v80);
    }

    memptr = 0;
    v91 = 0;
    v35 = v89;
    v82 = 2 * v14;
    if (((2 * v14) | 1) > 0x400)
    {
      v79 = malloc_type_posix_memalign(&memptr, 8uLL, 2 * v14, 0x958294E9uLL);
      LOBYTE(v91) = 0;
      if (v79)
      {
        goto LABEL_85;
      }

      v35 = v89;
      v37 = memptr;
    }

    else
    {
      MEMORY[0x1EEE9AC00](v24);
      v37 = &v81 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v37, v36);
      memptr = v37;
      LOBYTE(v91) = 1;
    }

    v38 = v91;
    v39 = [v88 objectAtIndexedSubscript:0];
    v40 = [v39 length];
    v41 = v39;
    v42 = v41;
    if (v40)
    {
      CharactersPtr = CFStringGetCharactersPtr(v41);
      if (v40 > v14)
      {
        goto LABEL_80;
      }

      v44.location = CharactersPtr;
      if (CharactersPtr)
      {
        memcpy(v37, CharactersPtr, 2 * v40);
      }

      else
      {
        v44.length = v40;
        CFStringGetCharacters(v42, v44, v37);
      }
    }

    v83 = v42;

    v49 = v85;
    v50 = v49;
    v86 = 2 * v35;
    v87 = &v37[2 * v40];
    if (!v35)
    {
      goto LABEL_62;
    }

    v51 = CFStringGetCharactersPtr(v49);
    v40 += v35;
    if (v40 <= v14)
    {
      v52.location = v51;
      if (v51)
      {
        memcpy(v87, v51, v86);
      }

      else
      {
        v52.length = v35;
        CFStringGetCharacters(v50, v52, v87);
      }

LABEL_62:
      v81 = v38;

      v68 = 1;
      while (1)
      {
        v69 = [v88 objectAtIndexedSubscript:v68];
        v70 = [v69 length];
        v71 = v69;
        v72 = v71;
        if (v70)
        {
          v73 = CFStringGetCharactersPtr(v71);
          v74 = v70 + v40;
          if (v70 + v40 > v14)
          {
            goto LABEL_80;
          }

          v75.location = v73;
          if (v73)
          {
            memcpy(&v37[2 * v40], v73, 2 * v70);
          }

          else
          {
            v75.length = v70;
            CFStringGetCharacters(v72, v75, &v37[2 * v40]);
          }
        }

        else
        {
          v74 = v40;
        }

        if (v74 == v14)
        {
          break;
        }

        ++v68;
        memcpy(&v37[2 * v74], v87, v86);
        v40 = v74 + v89;
      }

      v62 = MEMORY[0x1E696AEC0];
      v63 = v37;
      v64 = v81;
      v65 = v82;
      v66 = 2483028224;
      v67 = 0;
      goto LABEL_72;
    }

LABEL_80:
    __assert_rtn("appendUnicode", "_PASStringUtil.m", 380, "*destCursor + len <= destLen");
  }

  v8 = objc_autoreleasePoolPush();
  v9 = [v3 objectAtIndexedSubscript:0];
  v10 = [v9 description];
  v11 = [v10 copy];

  v12 = v8;
LABEL_75:
  objc_autoreleasePoolPop(v12);
LABEL_76:

  v76 = *MEMORY[0x1E69E9840];

  return v11;
}

void sub_1A7F4A290(void *a1)
{
  objc_begin_catch(a1);
  pthread_mutex_unlock((v1 + 16));
  objc_exception_rethrow();
}

void **_PASCompactStringArrayDestroy(void **result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    if (v2)
    {
      v1[1] = v2;
      operator delete(v2);
    }

    JUMPOUT(0x1AC566470);
  }

  return result;
}

uint64_t _indexForBindParam(sqlite3_stmt *a1, char *zName)
{
  if (a1)
  {
    if (zName)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"int _indexForBindParam(sqlite3_stmt *, const char *)"}];
    [v6 handleFailureInFunction:v7 file:@"_PASSqliteStatement.m" lineNumber:252 description:{@"Invalid parameter not satisfying: %@", @"stmt"}];

    if (zName)
    {
      goto LABEL_3;
    }
  }

  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"int _indexForBindParam(sqlite3_stmt *, const char *)"}];
  [v8 handleFailureInFunction:v9 file:@"_PASSqliteStatement.m" lineNumber:253 description:{@"Invalid parameter not satisfying: %@", @"name"}];

LABEL_3:
  v4 = sqlite3_bind_parameter_index(a1, zName);
  if (v4 <= 0)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"int _indexForBindParam(sqlite3_stmt *, const char *)"}];
    [v10 handleFailureInFunction:v11 file:@"_PASSqliteStatement.m" lineNumber:255 description:{@"Unknown bind parameter %s", zName}];
  }

  return v4;
}

uint64_t _PAS_sqlite3_bind_nsstring(sqlite3_stmt *a1, int a2, void *a3)
{
  v5 = a3;
  if (!v5)
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"int _PAS_sqlite3_bind_nsstring(sqlite3_stmt * _Nonnull, int, NSString * _Nonnull __strong)"}];
    [v24 handleFailureInFunction:v25 file:@"_PASSqliteDatabase.m" lineNumber:76 description:{@"Invalid parameter not satisfying: %@", @"str != nil"}];
  }

  v38 = 0;
  v6 = [v5 _pas_fastUTF8StringPtrWithOptions:0 encodedLength:&v38];
  if (!v6)
  {
    v14 = [v5 _fastCharacterContents];
    if (v14)
    {
      v15 = v14;
      v9 = [v5 lengthOfBytesUsingEncoding:10];
      v10 = a1;
      v11 = a2;
      v12 = v15;
      v13 = -1;
LABEL_8:
      v16 = 4;
LABEL_18:
      v17 = sqlite3_bind_text64(v10, v11, v12, v9, v13, v16);
      goto LABEL_19;
    }

    v38 = [v5 lengthOfBytesUsingEncoding:4];
    if (v38)
    {
      v18 = [v5 length];
      if (!v18)
      {
        __assert_rtn("_PAS_sqlite3_bind_nsstring", "_PASSqliteDatabase.m", 128, "length > 0");
      }

      v19 = v18;
      v20 = sqlite3_malloc64(v38);
      if (v20)
      {
        v21 = v20;
        v31 = 0;
        v32 = 0;
        [v5 getBytes:v20 maxLength:v38 usedLength:0 encoding:4 options:0 range:0 remainingRange:{v19, &v31}];
        if (v32)
        {
          __assert_rtn("_PAS_sqlite3_bind_nsstring", "_PASSqliteDatabase.m", 133, "remainingRange.length == 0");
        }

        v9 = v38;
        v13 = MEMORY[0x1E69E59A0];
        v10 = a1;
        v11 = a2;
        v12 = v21;
        goto LABEL_17;
      }
    }

    else
    {
      v26 = [v5 lengthOfBytesUsingEncoding:10];
      if (!v26)
      {
        __assert_rtn("_PAS_sqlite3_bind_nsstring", "_PASSqliteDatabase.m", 114, "utf16Size != 0");
      }

      v27 = v26;
      v28 = sqlite3_malloc64(v26);
      if (v28)
      {
        v29 = v28;
        [v5 getCharacters:v28];
        v13 = MEMORY[0x1E69E59A0];
        v10 = a1;
        v11 = a2;
        v12 = v29;
        v9 = v27;
        goto LABEL_8;
      }
    }

    v30 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA18] reason:@"malloc failed" userInfo:0];
    objc_exception_throw(v30);
  }

  v7 = v6;
  v8 = _NSIsNSCFConstantString();
  v9 = v38;
  if (v8)
  {
    v10 = a1;
    v11 = a2;
    v12 = v7;
    v13 = 0;
LABEL_17:
    v16 = 1;
    goto LABEL_18;
  }

  if (v38 - 17 > 0x7FFFFFED)
  {
    v10 = a1;
    v11 = a2;
    v12 = v7;
    v13 = -1;
    goto LABEL_17;
  }

  CFRetain(v5);
  v33 = MEMORY[0x1E69E9820];
  v34 = 3221225472;
  v35 = ___PAS_sqlite3_bind_nsstring_block_invoke;
  v36 = &__block_descriptor_40_e9_v16__0_v8l;
  v37 = v5;
  v17 = sqlite3_bind_text_b();
LABEL_19:
  v22 = v17;

  return v22;
}

void sub_1A7F4B000(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *_PASFullwidthLatinToHalfwidth(void *a1)
{
  v1 = a1;
  v2 = [(__CFString *)v1 length];
  if (!v2)
  {
    goto LABEL_28;
  }

  v3 = v2;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  theString = v1;
  v50 = 0;
  v51 = v2;
  CharactersPtr = CFStringGetCharactersPtr(v1);
  CStringPtr = 0;
  v48 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(v1, 0x600u);
  }

  v52 = 0;
  v53 = 0;
  v49 = CStringPtr;
  if (v3 < 1)
  {
LABEL_28:
    v19 = v1;
    goto LABEL_29;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 64;
  while (1)
  {
    if (v8 >= 4)
    {
      v10 = 4;
    }

    else
    {
      v10 = v8;
    }

    v11 = v51;
    if (v51 <= v8)
    {
      goto LABEL_16;
    }

    if (v48)
    {
      v12 = &v48[v50];
LABEL_12:
      v13 = v12[v8];
      goto LABEL_15;
    }

    if (!v49)
    {
      if (v53 <= v8 || v7 > v8)
      {
        v15 = v10 + v6;
        v16 = v9 - v10;
        v17 = v8 - v10;
        v18 = v17 + 64;
        if (v17 + 64 >= v51)
        {
          v18 = v51;
        }

        v52 = v17;
        v53 = v18;
        if (v51 >= v16)
        {
          v11 = v16;
        }

        v55.location = v17 + v50;
        v55.length = v11 + v15;
        CFStringGetCharacters(theString, v55, &v39);
        v7 = v52;
      }

      v12 = &v39 - v7;
      goto LABEL_12;
    }

    v13 = v49[v50 + v8];
LABEL_15:
    if ((v13 + 255) < 0x5Eu)
    {
      break;
    }

LABEL_16:
    ++v8;
    --v6;
    ++v9;
    if (v3 == v8)
    {
      goto LABEL_28;
    }
  }

  v22 = malloc_type_malloc(2 * v3, 0x1000040BDFB0063uLL);
  if (!v22)
  {
    v38 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA18] reason:@"malloc failed" userInfo:{0, v39, v40, v41, v42, v43, v44, v45, v46}];
    objc_exception_throw(v38);
  }

  v23 = v22;
  v24 = 0;
  v25 = 0;
  v26 = 64;
  while (2)
  {
    if (v25 >= 4)
    {
      v27 = 4;
    }

    else
    {
      v27 = v25;
    }

    v28 = v51;
    if (v51 <= v25)
    {
      v30 = 0;
    }

    else
    {
      if (v48)
      {
        v29 = &v48[v50];
        goto LABEL_40;
      }

      if (v49)
      {
        v30 = v49[v50 + v25];
      }

      else
      {
        v31 = v52;
        if (v53 <= v25 || v52 > v25)
        {
          v33 = v27 + v24;
          v34 = v26 - v27;
          v35 = v25 - v27;
          v36 = v35 + 64;
          if (v35 + 64 >= v51)
          {
            v36 = v51;
          }

          v52 = v35;
          v53 = v36;
          if (v51 >= v34)
          {
            v28 = v34;
          }

          v56.location = v35 + v50;
          v56.length = v28 + v33;
          CFStringGetCharacters(theString, v56, &v39);
          v31 = v52;
        }

        v29 = &v39 - v31;
LABEL_40:
        v30 = v29[v25];
      }
    }

    if ((v30 + 255) < 0x5Eu)
    {
      v30 += 288;
    }

    v23[v25++] = v30;
    --v24;
    ++v26;
    if (v3 != v25)
    {
      continue;
    }

    break;
  }

  v37 = objc_alloc(MEMORY[0x1E696AEC0]);
  v19 = [v37 initWithCharactersNoCopy:v23 length:v3 freeWhenDone:{1, v39, v40, v41, v42, v43, v44, v45, v46}];
LABEL_29:
  v20 = v19;

  return v20;
}

__CFString *_PASTryToConvertPhoneNumberToASCII(void *a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [(__CFString *)v1 length];
  if (!v2)
  {
    goto LABEL_50;
  }

  v3 = v2;
  if (CFStringGetFastestEncoding(v1) == 1536)
  {
    goto LABEL_50;
  }

  if (v3 > 0x1FF)
  {
    v4 = malloc_type_malloc(v3, 0x100004077774924uLL);
  }

  else
  {
    MEMORY[0x1EEE9AC00]();
    v4 = buffer - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v4, v3);
  }

  v5 = v1;
  v6 = objc_opt_self();

  if (!v6)
  {

    v10 = v4;
    goto LABEL_47;
  }

  memset(buffer, 0, sizeof(buffer));
  Length = CFStringGetLength(v5);
  v28 = v5;
  v31 = 0;
  v32 = Length;
  CharactersPtr = CFStringGetCharactersPtr(v5);
  CStringPtr = 0;
  v29 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(v5, 0x600u);
  }

  v33 = 0;
  v34 = 0;
  v10 = v4;
  v30 = CStringPtr;
  if (Length < 1)
  {
LABEL_45:

LABEL_47:
    v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v4 length:v10 - v4 encoding:1];
    goto LABEL_48;
  }

  v11 = 0;
  v12 = 0;
  v13 = 64;
  v10 = v4;
  while (1)
  {
    if (v12 >= 4)
    {
      v14 = 4;
    }

    else
    {
      v14 = v12;
    }

    v15 = v32;
    if (v32 <= v12)
    {
      LOBYTE(v17) = 0;
      goto LABEL_19;
    }

    if (v29)
    {
      v16 = &v29[v31];
LABEL_17:
      v17 = v16[v12];
      goto LABEL_22;
    }

    if (!v30)
    {
      v18 = v33;
      if (v34 <= v12 || v33 > v12)
      {
        v20 = v14 + v11;
        v21 = v13 - v14;
        v22 = v12 - v14;
        v23 = v22 + 64;
        if (v22 + 64 >= v32)
        {
          v23 = v32;
        }

        v33 = v22;
        v34 = v23;
        if (v32 >= v21)
        {
          v15 = v21;
        }

        v36.location = v22 + v31;
        v36.length = v15 + v20;
        CFStringGetCharacters(v28, v36, buffer);
        v18 = v33;
      }

      v16 = buffer - v18;
      goto LABEL_17;
    }

    v17 = v30[v31 + v12];
LABEL_22:
    if (v17 > 0x2029u)
    {
      break;
    }

    if (v17 == 160)
    {
      goto LABEL_30;
    }

    if (v17 != 8211)
    {
      goto LABEL_41;
    }

    LOBYTE(v17) = 45;
LABEL_19:
    *v10++ = v17;
LABEL_24:
    ++v12;
    --v11;
    ++v13;
    if (Length == v12)
    {
      goto LABEL_45;
    }
  }

  if (v17 - 8234 < 5)
  {
    goto LABEL_24;
  }

  if (v17 == 12288)
  {
LABEL_30:
    LOBYTE(v17) = 32;
    goto LABEL_19;
  }

LABEL_41:
  if (v17 - 65281 < 0x5E)
  {
    LOBYTE(v17) = v17 + 32;
    goto LABEL_19;
  }

  if (v17 < 0x80u)
  {
    goto LABEL_19;
  }

  v1 = v5;
LABEL_48:

  if (v3 >= 0x200)
  {
    free(v4);
  }

LABEL_50:
  v24 = v1;

  v25 = *MEMORY[0x1E69E9840];
  return v1;
}

id _PASKeepOnlyCharacterSet(void *a1, const __CFCharacterSet *a2)
{
  v3 = a1;
  v4 = [v3 length];
  if (v4)
  {
    v5 = v4;
    v6 = malloc_type_malloc(2 * v4, 0x1000040BDFB0063uLL);
    v7 = v3;
    v8 = objc_opt_self();

    if (v8)
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      *buffer = 0u;
      v31 = 0u;
      Length = CFStringGetLength(v7);
      theString = v7;
      v41 = 0;
      v42 = Length;
      CharactersPtr = CFStringGetCharactersPtr(v7);
      CStringPtr = 0;
      v39 = CharactersPtr;
      if (!CharactersPtr)
      {
        CStringPtr = CFStringGetCStringPtr(v7, 0x600u);
      }

      v29 = v3;
      v43 = 0;
      v44 = 0;
      v40 = CStringPtr;
      if (Length >= 1)
      {
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 64;
        while (1)
        {
          if (v13 >= 4)
          {
            v16 = 4;
          }

          else
          {
            v16 = v13;
          }

          v17 = v42;
          if (v42 <= v13)
          {
            v19 = 0;
          }

          else
          {
            if (v39)
            {
              v18 = &v39[v41];
            }

            else
            {
              if (v40)
              {
                v19 = v40[v41 + v13];
                goto LABEL_15;
              }

              v20 = v43;
              if (v44 <= v13 || v43 > v13)
              {
                v22 = v16 + v12;
                v23 = v15 - v16;
                v24 = v13 - v16;
                v25 = v24 + 64;
                if (v24 + 64 >= v42)
                {
                  v25 = v42;
                }

                v43 = v24;
                v44 = v25;
                if (v42 >= v23)
                {
                  v17 = v23;
                }

                v46.location = v24 + v41;
                v46.length = v17 + v22;
                CFStringGetCharacters(theString, v46, buffer);
                v20 = v43;
              }

              v18 = &buffer[-v20];
            }

            v19 = v18[v13];
          }

LABEL_15:
          if (CFCharacterSetIsCharacterMember(a2, v19))
          {
            v6[v14++] = v19;
          }

          ++v13;
          --v12;
          ++v15;
          if (Length == v13)
          {
            goto LABEL_34;
          }
        }
      }

      v14 = 0;
LABEL_34:
      v3 = v29;
    }

    else
    {
      v14 = 0;
    }

    if (v14 == v5)
    {
      free(v6);
      v26 = [(__CFString *)v7 copy];
    }

    else
    {
      v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCharactersNoCopy:v6 length:v14 freeWhenDone:1];
    }
  }

  else
  {
    v26 = v3;
  }

  v27 = v26;

  return v27;
}

uint64_t _PAS_sqlite3_bind_nsdata(sqlite3_stmt *a1, int a2, void *a3)
{
  v5 = a3;
  if (!v5)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"int _PAS_sqlite3_bind_nsdata(sqlite3_stmt * _Nonnull, int, NSData *__strong _Nonnull)"}];
    [v12 handleFailureInFunction:v13 file:@"_PASSqliteDatabase.m" lineNumber:169 description:{@"Invalid parameter not satisfying: %@", @"data != nil"}];
  }

  v6 = [v5 _pas_dataWithNonnullBytes];

  v7 = [v6 length];
  if (v7 - 17 > 0x7FFFFFED)
  {
    BytePtr = CFDataGetBytePtr(v6);
    v8 = sqlite3_bind_blob64(a1, a2, BytePtr, v7, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    CFRetain(v6);
    CFDataGetBytePtr(v6);
    v8 = sqlite3_bind_blob_b();
  }

  v10 = v8;

  return v10;
}

id _PAS_sqlite3_column_nsdata(sqlite3_stmt *a1, int a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__3437;
  v9 = __Block_byref_object_dispose__3438;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = ___PAS_sqlite3_column_nsdata_block_invoke;
  v4[3] = &unk_1E77F2540;
  v4[4] = &v5;
  _PAS_sqlite3_column_blob_bytes_block(a1, a2, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void sub_1A7F4C414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _PAS_sqlite3_column_blob_bytes_block(sqlite3_stmt *a1, int a2, void *a3)
{
  v8 = a3;
  v5 = sqlite3_column_bytes(a1, a2);
  if (v5 >= 1)
  {
    BytePtr = sqlite3_column_blob(a1, a2);
LABEL_5:
    v7 = BytePtr;
    goto LABEL_6;
  }

  if (sqlite3_column_type(a1, a2) == 4)
  {
    BytePtr = CFDataGetBytePtr(&unk_1EE71B5D8);
    goto LABEL_5;
  }

  v7 = 0;
LABEL_6:
  v8[2](v8, v7, v5);
}

uint64_t xBestIndex(uint64_t a1, uint64_t a2)
{
  v71 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 24);
  v4 = objc_opt_self();
  v5 = [v3 isSubclassOfClass:v4];

  if ((v5 & 1) == 0)
  {
    v61 = [MEMORY[0x1E696AAA8] currentHandler];
    v62 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"int xBestIndex(sqlite3_vtab *, sqlite3_index_info *)"}];
    [v61 handleFailureInFunction:v62 file:@"_PASSqliteCollections.m" lineNumber:1391 description:{@"Invalid parameter not satisfying: %@", @"[cursorClass isSubclassOfClass:[_PASSqliteCollectionsCursor self]]"}];
  }

  v6 = [v3 hasKey];
  if (v6)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    *v70 = v3;
    _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "#passqlitecollections Beginning xBestIndex for %@", buf, 0xCu);
  }

  *(a2 + 40) = 0;
  if (*a2 < 1)
  {
    goto LABEL_14;
  }

  v8 = 0;
  v9 = v6 - 1;
  v10 = (*(a2 + 8) + 5);
  v11 = 1;
  v12 = *a2;
  v13 = 1;
  while (*(v10 - 1) != 2 || *(v10 - 5) != v7 || !*v10)
  {
    v13 = v11 < *a2;
    v8 += 8;
    ++v11;
    v10 += 12;
    if (!--v12)
    {
      goto LABEL_14;
    }
  }

  v16 = *(a2 + 32) + v8;
  *v16 = 1;
  *(v16 + 4) = 1;
  if (!v13)
  {
LABEL_14:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      *v70 = v3;
      _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "#passqlitecollections Ending xBestIndex for %@: pointer constraint missing", buf, 0xCu);
    }

    goto LABEL_16;
  }

  [v3 baseEstimatedRows];
  v18 = v17;
  [v3 baseEstimatedCost];
  v20 = v19;
  v68 = objc_opt_new();
  v21 = *a2;
  if (*a2 >= 1)
  {
    v22 = 0;
    v23 = *(a2 + 8);
    v24 = @"rowId";
    if (v6)
    {
      v24 = @"key";
    }

    v66 = v24;
    v25 = -8;
    v26 = 1;
    v67 = v3;
    do
    {
      if (*(v23 + 5))
      {
        v27 = *v23;
        v28 = *v23 == v9 || v27 == v6;
        if (v28)
        {
          v29 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG);
          if (v27 == v6)
          {
            if (v29)
            {
              v46 = *(v23 + 4);
              *buf = 67109378;
              *v70 = v46;
              *&v70[4] = 2112;
              *&v70[6] = v3;
              _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "#passqlitecollections Considering value->%hhu for %@", buf, 0x12u);
            }

            v30 = [v3 planningInfoForValueConstraint:*(v23 + 4)];
          }

          else
          {
            if (v29)
            {
              v47 = *(v23 + 4);
              *buf = 138412802;
              *v70 = v66;
              *&v70[8] = 1024;
              *&v70[10] = v47;
              *&v70[14] = 2112;
              *&v70[16] = v3;
              _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "#passqlitecollections Considering %@->%hhu for %@", buf, 0x1Cu);
            }

            v33 = *(v23 + 4);
            if (v6)
            {
              [v3 planningInfoForKeyConstraint:v33];
            }

            else
            {
              [v3 planningInfoForRowIdConstraint:v33];
            }
            v30 = ;
          }

          v31 = v30;
          if (v30)
          {
            v34 = *(v30 + 9);
            v35 = *(v30 + 8);
            v36 = *(a2 + 8) + 12 * v22;
            v37 = *v36;
            v38 = *(v36 + 4);
            v28 = v37 == v6 - 1;
            v39 = 118;
            if (v28)
            {
              v39 = 107;
            }

            [v68 appendFormat:@"%c%03d", v39, v38];
            v40 = *(a2 + 32);
            v41 = v40 + 8 * v22;
            *v41 = 2;
            if (v22)
            {
              v42 = (v40 + v25);
              v43 = v26;
              while (--v43 >= 1)
              {
                v45 = *v42;
                v42 -= 2;
                v44 = v45;
                if (v45 >= 2)
                {
                  *v41 = v44 + 1;
                  break;
                }
              }
            }

            if (v34)
            {
              *(v41 + 4) = 1;
            }

            if (v35)
            {
              *(a2 + 80) |= 1u;
            }

            v18 = v18 * v31[2];
            v20 = v20 * v31[3];
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
            {
              *buf = 134218498;
              *v70 = v20;
              *&v70[8] = 2048;
              *&v70[10] = v18;
              *&v70[18] = 2112;
              v3 = v67;
              *&v70[20] = v67;
              _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "#passqlitecollections Estimated cost now %f, estimated rows now %f for %@", buf, 0x20u);
            }

            else
            {
              v3 = v67;
            }
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
            {
              v48 = *(v23 + 4);
              *buf = 67109378;
              *v70 = v48;
              *&v70[4] = 2112;
              *&v70[6] = v3;
              _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "#passqlitecollections No optimization: %hhu for %@", buf, 0x12u);
            }

            v31 = 0;
          }

          goto LABEL_57;
        }

        if (v27 != v7)
        {
          v31 = [MEMORY[0x1E696AAA8] currentHandler];
          v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"int xBestIndex(sqlite3_vtab *, sqlite3_index_info *)"}];
          [v31 handleFailureInFunction:v32 file:@"_PASSqliteCollections.m" lineNumber:1444 description:{@"Invalid parameter not satisfying: %@", @"constraint->iColumn == pointerColumn"}];

LABEL_57:
          v21 = *a2;
          v9 = v6 - 1;
        }
      }

      ++v22;
      v23 += 3;
      v25 += 8;
      ++v26;
    }

    while (v22 < v21);
  }

  if (*(a2 + 16) != 1)
  {
    goto LABEL_83;
  }

  v49 = *(a2 + 24);
  if (*v49 == v9)
  {
    v50 = *(v49 + 4) != 0;
    if (v6)
    {
      if (([v3 canOrderByKey:v50] & 1) == 0)
      {
        goto LABEL_65;
      }
    }

    else if (![v3 canOrderByRowId:v50])
    {
LABEL_65:
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        *v70 = v3;
        v51 = MEMORY[0x1E69E9C10];
        v52 = "#passqlitecollections unable to optimize rowid/key ORDER BY for %@";
LABEL_82:
        _os_log_debug_impl(&dword_1A7F47000, v51, OS_LOG_TYPE_DEBUG, v52, buf, 0xCu);
        goto LABEL_83;
      }

      goto LABEL_83;
    }

    *(a2 + 60) = 1;
    if (*(v49 + 4))
    {
      v54 = 1;
    }

    else
    {
      v54 = 2;
    }

    *(a2 + 40) = v54;
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_83;
    }

    *buf = 138412290;
    *v70 = v3;
    v51 = MEMORY[0x1E69E9C10];
    v52 = "#passqlitecollections will optimize rowid/key ORDER BY for %@";
    goto LABEL_82;
  }

  if (*v49 == v6)
  {
    if ([v3 canOrderByValue:*(v49 + 4) != 0])
    {
      *(a2 + 60) = 1;
      if (*(v49 + 4))
      {
        v53 = 3;
      }

      else
      {
        v53 = 4;
      }

      *(a2 + 40) = v53;
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_83;
      }

      *buf = 138412290;
      *v70 = v3;
      v51 = MEMORY[0x1E69E9C10];
      v52 = "#passqlitecollections will optimize value ORDER BY for %@";
      goto LABEL_82;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      *v70 = v3;
      v51 = MEMORY[0x1E69E9C10];
      v52 = "#passqlitecollections unable to optimize value ORDER BY for %@";
      goto LABEL_82;
    }
  }

LABEL_83:
  *(a2 + 64) = v20;
  v55 = 1.0;
  if (v18 >= 1.0)
  {
    v55 = v18;
  }

  *(a2 + 72) = v55;
  v56 = [v68 lengthOfBytesUsingEncoding:1];
  v57 = v56 + 1;
  v58 = sqlite3_malloc(v56 + 1);
  if (!v58)
  {
    v65 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA18] reason:@"malloc failed" userInfo:0];
    objc_exception_throw(v65);
  }

  *(a2 + 48) = v58;
  if (([v68 getCString:v58 maxLength:v57 encoding:1] & 1) == 0)
  {
    v63 = [MEMORY[0x1E696AAA8] currentHandler];
    v64 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"int xBestIndex(sqlite3_vtab *, sqlite3_index_info *)"}];
    [v63 handleFailureInFunction:v64 file:@"_PASSqliteCollections.m" lineNumber:1475 description:{@"Invalid parameter not satisfying: %@", @"[indexString getCString:info->idxStr maxLength:indexStringLength encoding:NSASCIIStringEncoding]"}];
  }

  *(a2 + 56) = 1;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v59 = *(a2 + 64);
    v60 = *(a2 + 72);
    *buf = 134218498;
    *v70 = v59;
    *&v70[8] = 2048;
    *&v70[10] = v60;
    *&v70[18] = 2112;
    *&v70[20] = v3;
    _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "#passqlitecollections Ending xBestIndex (estimatedCost: %f, estimatedRows: %lld) for %@", buf, 0x20u);
  }

LABEL_16:
  v14 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t _PASSQLCallback(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = a1;
    if (a3)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithCString:a3 encoding:4];
      if (a4)
      {
LABEL_4:
        v10 = [MEMORY[0x1E696AEC0] stringWithCString:a4 encoding:4];
LABEL_7:
        [v8 createEventLogForQueryOpCode:a2 argumentOneValue:v9 argumentTwoValue:v10];

        return 0;
      }
    }

    else
    {
      v9 = &stru_1F1B24B60;
      if (a4)
      {
        goto LABEL_4;
      }
    }

    v10 = &stru_1F1B24B60;
    goto LABEL_7;
  }

  return 0;
}

void releaseObjcObject(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v4 = 138412546;
    v5 = objc_opt_class();
    v6 = 2048;
    v7 = a1;
    v3 = v5;
    _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "#passqlitestatement Releasing %@ %p", &v4, 0x16u);
  }

  v2 = *MEMORY[0x1E69E9840];
}

uint64_t xOpen(uint64_t a1, void *a2)
{
  v3 = sqlite3_malloc64(0x10uLL);
  if (!v3)
  {
    return 7;
  }

  v4 = v3;
  result = 0;
  *v4 = 0;
  v4[1] = 0;
  *a2 = v4;
  return result;
}

uint64_t xEof(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  [(_PASSqliteCollectionsCursor *)v2 stayOnOrStepToOutputRow];
  v3 = v2[9];

  return v3;
}

uint64_t xFilter(void *a1, int a2, unsigned __int8 *a3, int a4, sqlite3_value **a5)
{
  v35 = *MEMORY[0x1E69E9840];
  v10 = *(*a1 + 24);
  v11 = sqlite3_value_pointer(*a5, [v10 sqliteMethodName]);
  if (!v11)
  {
    *(*a1 + 16) = sqlite3_mprintf("Object of incorrect type passed to %s", [v10 sqliteMethodName]);
    result = 1;
    goto LABEL_28;
  }

  v12 = v11;
  v13 = objc_opt_new();
  v14 = CFRetain(v12);
  [v13 setCollection:v14];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = a3;
    *&buf[12] = 1024;
    *&buf[14] = a2;
    *&buf[18] = 2112;
    *&buf[20] = objc_opt_class();
    _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "#passqlitecollections xFilter idxStr:%s idxNum:%d for %@", buf, 0x1Cu);
  }

  v15 = [objc_opt_class() hasKey];
  v16 = a1[1];
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = v13;
  a1[1] = v17;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  *&buf[24] = 1;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v27 = __xFilter_block_invoke;
  v28 = &unk_1E77F23D8;
  v30 = buf;
  v31 = a5;
  v33 = v15;
  v18 = v17;
  v29 = v18;
  v32 = a4;
  v19 = v26;
  while (1)
  {
    v20 = *a3;
    if (v20 != 107)
    {
      break;
    }

    v21 = 1;
LABEL_11:
    v27(v19, v21, (10 * a3[2] + 100 * a3[1] + a3[3] + 48));
    a3 += 4;
  }

  if (v20 == 118)
  {
    v21 = 0;
    goto LABEL_11;
  }

  if (*a3)
  {
    goto LABEL_29;
  }

  if (a2 <= 1)
  {
    if (!a2)
    {
      goto LABEL_27;
    }

    if (a2 != 1)
    {
      goto LABEL_29;
    }

    if (v15)
    {
      goto LABEL_27;
    }

    v24 = 1;
LABEL_24:
    [v18 applyRowIdSort:v24];
    goto LABEL_27;
  }

  if (a2 == 2)
  {
    v24 = 0;
    goto LABEL_24;
  }

  if (a2 != 3)
  {
    if (a2 == 4)
    {
      v22 = 0;
      goto LABEL_26;
    }

LABEL_29:
    __break(1u);
  }

  v22 = 1;
LABEL_26:
  [v18 applyValueSort:v22];
LABEL_27:
  [v18 finalizeConstraints];

  _Block_object_dispose(buf, 8);
  result = 0;
LABEL_28:
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1A7F4D46C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t xClose(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
    a1[1] = 0;
  }

  sqlite3_free(a1);
  return 0;
}

uint64_t xColumn(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a1 + 8);
  if (![objc_opt_class() hasKey])
  {
    if (a3 != 1)
    {
      if (a3)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      goto LABEL_15;
    }

    v11 = 0;
    v8 = MEMORY[0x1E69E9C10];
    v9 = &v11;
LABEL_18:
    _os_log_fault_impl(&dword_1A7F47000, v8, OS_LOG_TYPE_FAULT, "#passqlitecollections xColumn accessing pointer for some reason", v9, 2u);
    goto LABEL_15;
  }

  if (a3 == 2)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      goto LABEL_15;
    }

    *buf = 0;
    v8 = MEMORY[0x1E69E9C10];
    v9 = buf;
    goto LABEL_18;
  }

  if (a3 == 1)
  {
LABEL_8:
    v5 = [(_PASSqliteCollectionsCursor *)v4 outputValue];
    goto LABEL_9;
  }

  if (a3)
  {
    goto LABEL_11;
  }

  v5 = [v4 outputKey];
LABEL_9:
  v6 = v5;
  if (v5)
  {
    _PASSqliteSetResult();

LABEL_15:
    v7 = 0;
    goto LABEL_16;
  }

LABEL_11:
  v7 = 1;
LABEL_16:

  return v7;
}

void _PASSqliteSetResult()
{
  v0 = MEMORY[0x1EEE9AC00]();
  valuePtr[512] = *MEMORY[0x1E69E9840];
  v2 = v1;
  if (!v2)
  {
    v29 = [MEMORY[0x1E696AAA8] currentHandler];
    v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _PASSqliteSetResult(sqlite3_context * _Nonnull, __strong id _Nonnull)"}];
    [v29 handleFailureInFunction:v30 file:@"_PASSqliteDatabase.m" lineNumber:348 description:{@"Invalid parameter not satisfying: %@", @"objcObject"}];
  }

  v3 = CFGetTypeID(v2);
  if (v3 == CFNumberGetTypeID() || v3 == CFBooleanGetTypeID())
  {
    v4 = v2;
    if (CFNumberIsFloatType(v4))
    {
      [v4 doubleValue];
      sqlite3_result_double(v0, v5);
    }

    else
    {
      valuePtr[0] = 0;
      CFNumberGetValue(v4, kCFNumberSInt64Type, valuePtr);
      sqlite3_result_int64(v0, valuePtr[0]);
    }

    goto LABEL_24;
  }

  if (v3 == CFStringGetTypeID())
  {
    v4 = v2;
    v36 = 0;
    v6 = [v4 _pas_fastUTF8StringPtrWithOptions:0 encodedLength:&v36];
    if (v6)
    {
      v7 = v6;
      v8 = _NSIsNSCFConstantString() - 1;
      v9 = v36;
      v10 = v0;
      v11 = v7;
LABEL_11:
      v12 = 1;
LABEL_23:
      sqlite3_result_text64(v10, v11, v9, v8, v12);
      goto LABEL_24;
    }

    v19 = [v4 _fastCharacterContents];
    if (v19)
    {
      v20 = v19;
      v9 = [v4 lengthOfBytesUsingEncoding:10];
      v10 = v0;
      v11 = v20;
      v8 = -1;
LABEL_22:
      v12 = 4;
      goto LABEL_23;
    }

    v24 = [v4 length];
    v34 = 0;
    v35 = 0;
    v25 = [v4 maximumLengthOfBytesUsingEncoding:4];
    if (v25 <= 0x1000)
    {
      [v4 getBytes:valuePtr maxLength:v25 usedLength:&v36 encoding:4 options:0 range:0 remainingRange:{v24, &v34}];
      if (!v35)
      {
        v9 = v36;
        v11 = valuePtr;
        v10 = v0;
        v8 = -1;
        goto LABEL_11;
      }
    }

    v26 = [v4 lengthOfBytesUsingEncoding:4];
    v36 = v26;
    if (v26)
    {
      v27 = sqlite3_malloc64(v26);
      if (v27)
      {
        v28 = v27;
        [v4 getBytes:v27 maxLength:v36 usedLength:0 encoding:4 options:0 range:0 remainingRange:{v24, &v34}];
        if (v35)
        {
          __assert_rtn("_PASSqliteSetResult", "_PASSqliteDatabase.m", 408, "remainingRange.length == 0");
        }

        v9 = v36;
        v8 = MEMORY[0x1E69E59A0];
        v10 = v0;
        v11 = v28;
        goto LABEL_11;
      }
    }

    else
    {
      v31 = sqlite3_malloc64([v4 lengthOfBytesUsingEncoding:10]);
      if (v31)
      {
        v32 = v31;
        [v4 getCharacters:v31];
        v9 = [v4 lengthOfBytesUsingEncoding:10];
        v8 = MEMORY[0x1E69E59A0];
        v10 = v0;
        v11 = v32;
        goto LABEL_22;
      }
    }

LABEL_40:
    v33 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA18] reason:@"malloc failed" userInfo:0];
    objc_exception_throw(v33);
  }

  if (v3 == CFDateGetTypeID())
  {
    v4 = v2;
    v13 = objc_autoreleasePoolPush();
    if (_PASSqliteSetResult__pasOnceToken9 != -1)
    {
      dispatch_once(&_PASSqliteSetResult__pasOnceToken9, &__block_literal_global_3596);
    }

    v14 = [_PASSqliteSetResult__pasExprOnceResult stringFromDate:v4];
    objc_autoreleasePoolPop(v13);
    _PASSqliteSetResult(v0, v14);

    goto LABEL_24;
  }

  if (v3 == CFDataGetTypeID())
  {
    v4 = v2;
    v15 = [v4 length];
    if (!v15)
    {
      sqlite3_result_zeroblob64(v0, 0);
      goto LABEL_24;
    }

    v16 = v15;
    v17 = sqlite3_malloc64(v15);
    if (v17)
    {
      v18 = v17;
      [v4 getBytes:v17 length:v16];
      sqlite3_result_blob64(v0, v18, v16, MEMORY[0x1E69E59A0]);
LABEL_24:

      goto LABEL_25;
    }

    goto LABEL_40;
  }

  if (v3 != CFNullGetTypeID())
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _PASSqliteSetResult(sqlite3_context * _Nonnull, __strong id _Nonnull)"}];
    [v22 handleFailureInFunction:v23 file:@"_PASSqliteDatabase.m" lineNumber:439 description:{@"unsupported sql type %@", objc_opt_class()}];
  }

  sqlite3_result_null(v0);
LABEL_25:

  v21 = *MEMORY[0x1E69E9840];
}

uint64_t xNext(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    if (v1[9] == 1)
    {
      v4 = [MEMORY[0x1E696AAA8] currentHandler];
      [v4 handleFailureInMethod:sel_stepOutputRow object:v1 file:@"_PASSqliteCollections.m" lineNumber:367 description:{@"Invalid parameter not satisfying: %@", @"!_eof"}];
    }

    v2 = objc_autoreleasePoolPush();
    [v1 stepIndexedRow];
    [(_PASSqliteCollectionsCursor *)v1 stayOnOrStepToOutputRow];
    objc_autoreleasePoolPop(v2);
  }

  return 0;
}

uint64_t __registerForAKSEvents_block_invoke(uint64_t result, int a2, CFDictionaryRef theDict)
{
  if (a2 == 1)
  {
    value[5] = v3;
    value[6] = v4;
    v6 = result;
    value[0] = 0;
    if (CFDictionaryGetValueIfPresent(theDict, *MEMORY[0x1E698C3C0], value))
    {
      v7 = CFGetTypeID(value[0]);
      if (v7 == CFBooleanGetTypeID())
      {
        if (CFBooleanGetValue(value[0]))
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "AKS: Cx expiring", buf, 2u);
          }

          return (*(*(v6 + 32) + 16))(*(v6 + 32));
        }
      }
    }

    if (CFDictionaryGetValueIfPresent(theDict, *MEMORY[0x1E698C3B8], value))
    {
      v8 = CFGetTypeID(value[0]);
      if (v8 == CFBooleanGetTypeID())
      {
        if (CFBooleanGetValue(value[0]))
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "AKS: Cx expired", buf, 2u);
          }

          return (*(*(v6 + 32) + 16))(*(v6 + 32));
        }
      }
    }

    *buf = 0;
    result = CFDictionaryGetValueIfPresent(theDict, *MEMORY[0x1E698C3C8], value);
    if (result)
    {
      v9 = CFGetTypeID(value[0]);
      result = CFNumberGetTypeID();
      if (v9 == result)
      {
        result = CFNumberGetValue(value[0], kCFNumberLongLongType, buf);
        if (result)
        {
          if (*buf > 1)
          {
            if (*buf != 2)
            {
              if (*buf != 3)
              {
                return result;
              }

              if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
              {
                return (*(*(v6 + 32) + 16))(*(v6 + 32));
              }

              *v12 = 0;
              v10 = MEMORY[0x1E69E9C10];
              v11 = "AKS: Disabled";
              goto LABEL_30;
            }

            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              *v12 = 0;
              v10 = MEMORY[0x1E69E9C10];
              v11 = "AKS: Locking";
              goto LABEL_30;
            }
          }

          else
          {
            if (*buf)
            {
              if (*buf != 1)
              {
                return result;
              }

              if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
              {
                return (*(*(v6 + 32) + 16))(*(v6 + 32));
              }

              *v12 = 0;
              v10 = MEMORY[0x1E69E9C10];
              v11 = "AKS: Locked";
              goto LABEL_30;
            }

            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              *v12 = 0;
              v10 = MEMORY[0x1E69E9C10];
              v11 = "AKS: Unlocked";
LABEL_30:
              _os_log_impl(&dword_1A7F47000, v10, OS_LOG_TYPE_DEFAULT, v11, v12, 2u);
            }
          }

          return (*(*(v6 + 32) + 16))(*(v6 + 32));
        }
      }
    }
  }

  return result;
}

uint64_t __registerForLockStateChanges_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = MKBGetDeviceLockState();
  if (v2 >= 4)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  v4 = *(v1 + 16);

  return v4(v1, v3);
}

void sub_1A7F4E674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t lockState()
{
  LODWORD(result) = MKBGetDeviceLockState();
  if (result >= 4)
  {
    return 1;
  }

  else
  {
    return result;
  }
}

void _PASIterateLongChars(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    *buffer = 0u;
    v24 = 0u;
    Length = CFStringGetLength(v3);
    v31 = v3;
    v34 = 0;
    v35 = Length;
    CharactersPtr = CFStringGetCharactersPtr(v3);
    CStringPtr = 0;
    v32 = CharactersPtr;
    if (!CharactersPtr)
    {
      CStringPtr = CFStringGetCStringPtr(v3, 0x600u);
    }

    v33 = CStringPtr;
    v36 = 0;
    v37 = 0;
    if (Length >= 1)
    {
      v8 = 0;
      do
      {
        if (v8 < 0 || (v9 = v35, v35 <= v8))
        {
          v10 = 0;
        }

        else if (v32)
        {
          v10 = v32[v34 + v8];
        }

        else if (v33)
        {
          v10 = v33[v34 + v8];
        }

        else
        {
          if (v37 <= v8 || (v17 = v36, v36 > v8))
          {
            v18 = v8 - 4;
            if (v8 < 4)
            {
              v18 = 0;
            }

            if (v18 + 64 < v35)
            {
              v9 = v18 + 64;
            }

            v36 = v18;
            v37 = v9;
            v38.length = v9 - v18;
            v38.location = v34 + v18;
            CFStringGetCharacters(v31, v38, buffer);
            v17 = v36;
          }

          v10 = buffer[v8 - v17];
        }

        v21 = v10;
        v22 = 0;
        v11 = v10;
        if (v10 >> 10 == 54 && v8 < Length - 1 && v8 >= -1 && (v12 = v8 + 1, v13 = v35, v35 > v8 + 1))
        {
          if (v32)
          {
            v14 = v32[v34 + v12];
          }

          else if (v33)
          {
            v14 = v33[v34 + v12];
          }

          else
          {
            if (v37 <= v12 || (v19 = v36, v36 > v12))
            {
              v20 = v8 - 3;
              if (v12 < 4)
              {
                v20 = 0;
              }

              if (v20 + 64 < v35)
              {
                v13 = v20 + 64;
              }

              v36 = v20;
              v37 = v13;
              v39.length = v13 - v20;
              v39.location = v34 + v20;
              CFStringGetCharacters(v31, v39, buffer);
              v19 = v36;
            }

            v14 = buffer[v12 - v19];
          }

          v22 = v14;
          v15 = v8;
          if (v14 >> 10 == 55)
          {
            v11 = (v21 << 10) + v14 - 56613888;
            v15 = v8 + 1;
          }
        }

        else
        {
          v15 = v8;
        }

        v16 = v15 + 1;
        v4[2](v4, v11, &v21, v8, v15 + 1 - v8);
        v8 = v16;
      }

      while (v16 < Length);
    }
  }
}

uint64_t AsyncFIFOQueue.__allocating_init(priority:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  AsyncFIFOQueue.init(priority:)(a1);
  return v5;
}

uint64_t sub_1A7F4EC88(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A7F4ECE8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A7F51870;

  return sub_1A7F4EDA0(a1, v5);
}

uint64_t sub_1A7F4EDA0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A7F510CC;

  return v7(a1);
}

uint64_t sub_1A7F4EE98(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2DCA20, &qword_1A7FB1740) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A7F5177C;

  return sub_1A7F4EF94(a1, v6, v7, v1 + v5);
}

uint64_t sub_1A7F4EF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2DCA48, &unk_1A7FB1820);
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v7 = *(v6 + 64) + 15;
  v4[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A7F4F060, 0, 0);
}

uint64_t sub_1A7F4F060()
{
  v1 = v0[7];
  v2 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2DCA20, &qword_1A7FB1740);
  sub_1A7FAB9E8();
  v3 = *(MEMORY[0x1E69E8678] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_1A7F51680;
  v5 = v0[7];
  v6 = v0[5];

  return MEMORY[0x1EEE6D9C8](v0 + 2, 0, 0, v6);
}

uint64_t sub_1A7F4F134(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t AsyncFIFOQueue.init(priority:)(uint64_t a1)
{
  v38 = a1;
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2DCA10, &qword_1A7FB1730) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x1EEE9AC00])();
  v37 = &v34 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2DCA18, &qword_1A7FB1738);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x1EEE9AC00])();
  v8 = &v34 - v7;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2DCA20, &qword_1A7FB1740);
  v9 = *(v36 - 8);
  v10 = *(v9 + 64);
  v11 = (MEMORY[0x1EEE9AC00])();
  v34 = v12;
  v35 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v34 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2DCA28, &qword_1A7FB1748);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v34 - v20;
  v39 = v1;
  swift_defaultActor_initialize();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2DCA30, &qword_1A7FB1750);
  v23 = *(v22 - 8);
  (*(v23 + 56))(v21, 1, 1, v22);
  v40 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2DCA38, &qword_1A7FB1758);
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8650], v4);
  v24 = v14;
  sub_1A7FABA08();
  sub_1A7F4F134(v21, v19, &qword_1EB2DCA28, &qword_1A7FB1748);
  result = (*(v23 + 48))(v19, 1, v22);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v26 = v39;
    (*(v23 + 32))(v39 + OBJC_IVAR____TtC16ProactiveSupport14AsyncFIFOQueue__streamContinuation, v19, v22);
    v27 = v37;
    v28 = v38;
    sub_1A7F4F134(v38, v37, &qword_1EB2DCA10, &qword_1A7FB1730);
    v30 = v35;
    v29 = v36;
    (*(v9 + 16))(v35, v24, v36);
    v31 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = 0;
    *(v32 + 24) = 0;
    (*(v9 + 32))(v32 + v31, v30, v29);
    v33 = sub_1A7F534A4(0, 0, v27, &unk_1A7FB1768, v32);
    sub_1A7F4EC88(v28, &qword_1EB2DCA10, &qword_1A7FB1730);
    (*(v9 + 8))(v24, v29);
    *(v26 + OBJC_IVAR____TtC16ProactiveSupport14AsyncFIFOQueue__task) = v33;
    sub_1A7F4EC88(v21, &qword_1EB2DCA28, &qword_1A7FB1748);
    return v26;
  }

  return result;
}

uint64_t sub_1A7F4F630()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2DCA20, &qword_1A7FB1740);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1A7F4F700(uint64_t a1, uint64_t a2)
{
  sub_1A7F4EC88(a2, &qword_1EB2DCA28, &qword_1A7FB1748);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2DCA30, &qword_1A7FB1750);
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

void sub_1A7F4F950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double _PASCompactStringArrayResetSearchHint(_DWORD *a1)
{
  if (!a1)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _PASCompactStringArrayResetSearchHint(const struct _PASCompactStringArray * _Nonnull)"];
    [v4 handleFailureInFunction:v5 file:@"_PASCompactStringArray.mm" lineNumber:116 description:{@"Invalid parameter not satisfying: %@", @"array"}];
  }

  v2 = a1[8];
  if (v2 != -1)
  {
    v3 = a1[9];
    a1[6] = v2;
    a1[7] = v3;
    result = NAN;
    *(a1 + 4) = -1;
  }

  return result;
}

id _PAS_sqlite3_column_nsstring(sqlite3_stmt *a1, int a2)
{
  v4 = sqlite3_column_text(a1, a2);
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v4 length:sqlite3_column_bytes(a1 encoding:{a2), 4}];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
LABEL_6:
      v9 = v7;

      goto LABEL_8;
    }

    v8 = sqlite3_column_text16(a1, a2);
    if (v8)
    {
      v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCharacters:v8 length:{sqlite3_column_bytes16(a1, a2) >> 1}];
      goto LABEL_6;
    }
  }

  v9 = 0;
LABEL_8:

  return v9;
}

void _PASCompactStringArrayAppendString(uint64_t a1, char *__s)
{
  if (a1)
  {
    if (__s)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _PASCompactStringArrayAppendString(struct _PASCompactStringArray * _Nonnull, const char * _Nonnull)"}];
    [v7 handleFailureInFunction:v8 file:@"_PASCompactStringArray.mm" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"array"}];

    if (__s)
    {
      goto LABEL_3;
    }
  }

  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _PASCompactStringArrayAppendString(struct _PASCompactStringArray * _Nonnull, const char * _Nonnull)"}];
  [v9 handleFailureInFunction:v10 file:@"_PASCompactStringArray.mm" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"string"}];

LABEL_3:
  v4 = strlen(__s);
  v5 = v4;
  v6 = *(a1 + 8);
  if (&v6[v4 - *a1 - 4294967292u] <= 0xFFFFFFFEFFFFFFFFLL)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _PASCompactStringArrayAppendString(struct _PASCompactStringArray * _Nonnull, const char * _Nonnull)"}];
    [v11 handleFailureInFunction:v12 file:@"_PASCompactStringArray.mm" lineNumber:45 description:{@"Invalid parameter not satisfying: %@", @"array->buffer.size() + szStringSize + sizeof(uint32_t) <= UINT32_MAX"}];

    v6 = *(a1 + 8);
  }

  __src = v5;
  std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a1, v6, &__src, &v14, 4);
  std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a1, *(a1 + 8), __s, &__s[v5], v5);
}

void std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(uint64_t a1, char *__dst, char *__src, char *a4, int64_t a5)
{
  if (a5 >= 1)
  {
    v10 = *(a1 + 8);
    v9 = *(a1 + 16);
    if (v9 - v10 >= a5)
    {
      v16 = v10 - __dst;
      if (v10 - __dst >= a5)
      {
        v20 = &__dst[a5];
        v21 = &v10[-a5];
        v22 = *(a1 + 8);
        if (v10 >= a5)
        {
          do
          {
            v23 = *v21++;
            *v22++ = v23;
          }

          while (v21 != v10);
        }

        *(a1 + 8) = v22;
        if (v10 != v20)
        {
          memmove(&__dst[a5], __dst, v10 - v20);
        }

        v24 = __dst;
        v25 = __src;
        v26 = a5;
      }

      else
      {
        v17 = &__src[v16];
        v18 = *(a1 + 8);
        while (v17 != a4)
        {
          v19 = *v17++;
          *v18++ = v19;
        }

        *(a1 + 8) = v18;
        if (v16 < 1)
        {
          return;
        }

        v27 = &__dst[a5];
        v28 = &v18[-a5];
        v29 = v18;
        if (&v18[-a5] < v10)
        {
          do
          {
            v30 = *v28++;
            *v29++ = v30;
          }

          while (v28 != v10);
        }

        *(a1 + 8) = v29;
        if (v18 != v27)
        {
          memmove(&__dst[a5], __dst, v18 - v27);
        }

        v24 = __dst;
        v25 = __src;
        v26 = v10 - __dst;
      }

      memmove(v24, v25, v26);
    }

    else
    {
      v11 = *a1;
      v12 = &v10[a5 - *a1];
      if (v12 < 0)
      {
        std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
      }

      v13 = (__dst - v11);
      v14 = v9 - v11;
      if (2 * v14 > v12)
      {
        v12 = 2 * v14;
      }

      if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v15 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v12;
      }

      if (v15)
      {
        operator new();
      }

      v31 = (__dst - v11);
      memcpy(v13, __src, a5);
      v32 = &v13[a5];
      v33 = v10 - __dst;
      memcpy(v32, __dst, v10 - __dst);
      *(a1 + 8) = __dst;
      v34 = &v13[v11 - __dst];
      memcpy(v34, v11, v31);
      *a1 = v34;
      *(a1 + 8) = &v32[v33];
      *(a1 + 16) = 0;
      if (v11)
      {

        operator delete(v11);
      }
    }
  }
}

void std::vector<unsigned char>::shrink_to_fit(char **a1)
{
  v1 = a1[1];
  v2 = *a1;
  v3 = a1[2] - *a1;
  v4 = (v1 - *a1);
  if (v3 > v4)
  {
    if (v1 != v2)
    {
      v6 = (v1 - *a1);
      operator new();
    }

    if (v4 < v3)
    {
      v7 = (v1 - *a1);
      v8 = a1[1];
      v9 = &v4[v2 - v8];
      memcpy(v9, v2, v8 - v2);
      *a1 = v9;
      a1[1] = v7;
      a1[2] = v7;
      if (v2)
      {

        operator delete(v2);
      }
    }
  }
}

uint64_t _PASCompactStringArrayFindStringWithSize(uint64_t *a1, void *__s1, size_t __n)
{
  if (a1)
  {
    if (__s1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"size_t _PASCompactStringArrayFindStringWithSize(const struct _PASCompactStringArray * _Nonnull, const char * _Nonnull, size_t)"}];
    [v18 handleFailureInFunction:v19 file:@"_PASCompactStringArray.mm" lineNumber:62 description:{@"Invalid parameter not satisfying: %@", @"array"}];

    if (__s1)
    {
      goto LABEL_3;
    }
  }

  v20 = [MEMORY[0x1E696AAA8] currentHandler];
  v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"size_t _PASCompactStringArrayFindStringWithSize(const struct _PASCompactStringArray * _Nonnull, const char * _Nonnull, size_t)"}];
  [v20 handleFailureInFunction:v21 file:@"_PASCompactStringArray.mm" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"string"}];

LABEL_3:
  v7 = *a1;
  v6 = a1[1];
  v8 = v6 - *a1;
  if (v6 == *a1)
  {
    return -1;
  }

  v10 = *(a1 + 6);
  v9 = *(a1 + 7);
  v11 = v10;
  while (1)
  {
    v12 = (v7 + v11);
    v13 = *v12;
    if (v13 == __n && !memcmp(__s1, v12 + 1, __n))
    {
      break;
    }

    v14 = v11 + v13 + 4;
    if (v8 == v14)
    {
      v9 = 0;
    }

    else
    {
      ++v9;
    }

    if (v8 == v14)
    {
      v11 = 0;
    }

    else
    {
      v11 += v13 + 4;
    }

    if (v11 == v10)
    {
      return -1;
    }
  }

  if (*(a1 + 8) == -1)
  {
    *(a1 + 8) = v11;
    *(a1 + 9) = v9;
  }

  v16 = v11 + v13 + 4;
  if (v8 == v16)
  {
    v17 = 0;
  }

  else
  {
    v17 = v9 + 1;
  }

  if (v8 == v16)
  {
    LODWORD(v16) = 0;
  }

  *(a1 + 6) = v16;
  *(a1 + 7) = v17;
  return v9;
}

__CFString *_PASRepairString(void *a1)
{
  v1 = a1;
  if (![(__CFString *)v1 length]|| (v2 = [(__CFString *)v1 fastestEncoding], v2 == 4) || v2 == 1)
  {
    v3 = v1;
LABEL_5:
    v4 = v3;
    goto LABEL_6;
  }

  CStringPtr = CFStringGetCStringPtr(v1, 4u);
  v7 = v1;
  v8 = v7;
  if (CStringPtr)
  {
    v4 = v7;
    goto LABEL_6;
  }

  v9 = objc_opt_self();

  if (!v9)
  {
    goto LABEL_40;
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  *buffer = 0u;
  v54 = 0u;
  Length = CFStringGetLength(v8);
  v61 = v8;
  v64 = 0;
  v65 = Length;
  CharactersPtr = CFStringGetCharactersPtr(v8);
  v12 = 0;
  v62 = CharactersPtr;
  if (!CharactersPtr)
  {
    v12 = CFStringGetCStringPtr(v8, 0x600u);
  }

  v63 = v12;
  v66 = 0;
  v67 = 0;
  if (Length <= 0)
  {
LABEL_40:

LABEL_41:
    v3 = v8;
    goto LABEL_5;
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 64;
  do
  {
    if (v16 >= 4)
    {
      v18 = 4;
    }

    else
    {
      v18 = v16;
    }

    v19 = v15 >> 10;
    if (v65 <= v16)
    {
      if (v19 == 54)
      {
        goto LABEL_42;
      }

      v15 = 0;
      goto LABEL_28;
    }

    if (v62)
    {
      v20 = &v62[v64];
LABEL_22:
      v15 = v20[v16];
      goto LABEL_27;
    }

    if (!v63)
    {
      if (v67 <= v16 || v14 > v16)
      {
        v22 = v18 + v13;
        v23 = v17 - v18;
        v24 = v16 - v18;
        v25 = v24 + 64;
        if (v24 + 64 >= v65)
        {
          v25 = v65;
        }

        v66 = v24;
        v67 = v25;
        if (v65 < v23)
        {
          v23 = v65;
        }

        v69.location = v24 + v64;
        v69.length = v23 + v22;
        CFStringGetCharacters(v61, v69, buffer);
        v14 = v66;
      }

      v20 = &buffer[-v14];
      goto LABEL_22;
    }

    v15 = v63[v64 + v16];
LABEL_27:
    if ((v19 == 54) != (v15 >> 10 == 55))
    {
LABEL_42:

      goto LABEL_44;
    }

LABEL_28:
    ++v16;
    --v13;
    ++v17;
  }

  while (Length != v16);
  v26 = v15 >> 10;

  if (v26 != 54)
  {
    goto LABEL_41;
  }

LABEL_44:
  v4 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:{-[__CFString length](v8, "length")}];
  v27 = v8;
  v28 = objc_opt_self();

  if (v28)
  {
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    *buffer = 0u;
    v54 = 0u;
    v29 = CFStringGetLength(v27);
    v61 = v27;
    v64 = 0;
    v65 = v29;
    v30 = CFStringGetCharactersPtr(v27);
    v31 = 0;
    v62 = v30;
    if (!v30)
    {
      v31 = CFStringGetCStringPtr(v27, 0x600u);
    }

    v50 = v27;
    v63 = v31;
    v66 = 0;
    v67 = 0;
    if (v29 >= 1)
    {
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 64;
      do
      {
        if (v34 >= 4)
        {
          v37 = 4;
        }

        else
        {
          v37 = v34;
        }

        v38 = v65;
        if (v65 <= v34)
        {
          v35 = 0;
          v52 = 0;
          goto LABEL_57;
        }

        if (v62)
        {
          v39 = &v62[v64];
        }

        else
        {
          if (v63)
          {
            v40 = v63[v64 + v34];
            goto LABEL_60;
          }

          v44 = v66;
          if (v67 <= v34 || v66 > v34)
          {
            v46 = v37 + v32;
            v47 = v36 - v37;
            v48 = v34 - v37;
            v49 = v48 + 64;
            if (v48 + 64 >= v65)
            {
              v49 = v65;
            }

            v66 = v48;
            v67 = v49;
            if (v65 >= v47)
            {
              v38 = v47;
            }

            v70.location = v48 + v64;
            v70.length = v38 + v46;
            CFStringGetCharacters(v61, v70, buffer);
            v44 = v66;
          }

          v39 = &buffer[-v44];
        }

        v40 = v39[v34];
LABEL_60:
        v52 = v40;
        if (v35 && (v40 & 0xFC00) == 56320)
        {
          v51[0] = v33;
          v51[1] = v40;
          v42 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCharacters:v51 length:2];
          [(__CFString *)v4 appendString:v42];

          v35 = 0;
          goto LABEL_63;
        }

        v43 = v40 & 0xFC00;
        v35 = v43 == 55296;
        if ((v43 | 0x400) == 0xDC00)
        {
          goto LABEL_63;
        }

LABEL_57:
        v41 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCharacters:&v52 length:1];
        [(__CFString *)v4 appendString:v41];

LABEL_63:
        v33 = v52;
        ++v34;
        --v32;
        ++v36;
      }

      while (v29 != v34);
    }

    v27 = v50;
  }

LABEL_6:

  return v4;
}

uint64_t sub_1A7F50F80(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t AsyncFIFOQueue.__deallocating_deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2DCA30, &qword_1A7FB1750);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - v5;
  v7 = OBJC_IVAR____TtC16ProactiveSupport14AsyncFIFOQueue__streamContinuation;
  (*(v3 + 16))(&v11 - v5, v1 + OBJC_IVAR____TtC16ProactiveSupport14AsyncFIFOQueue__streamContinuation, v2);
  sub_1A7FAB9C8();
  v8 = *(v3 + 8);
  v8(v6, v2);
  v8((v1 + v7), v2);
  v9 = *(v1 + OBJC_IVAR____TtC16ProactiveSupport14AsyncFIFOQueue__task);

  swift_defaultActor_destroy();
  return swift_defaultActor_deallocate();
}

uint64_t sub_1A7F510CC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1A7F511C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2DCA40, &qword_1A7FB1770);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v11 - v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v11[0] = &unk_1A7FB1780;
  v11[1] = v9;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2DCA30, &qword_1A7FB1750);
  sub_1A7FAB9B8();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1A7F51304()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A7F51364()
{
  v1 = v0[2];
  v2 = v0[3];
  v0[9] = v1;
  v0[10] = v2;
  if (!v1)
  {
    (*(v0[6] + 8))(v0[7], v0[5]);
    goto LABEL_5;
  }

  if (sub_1A7FABA28())
  {
    (*(v0[6] + 8))(v0[7], v0[5]);
    sub_1A7F50F80(v1);
LABEL_5:
    v3 = v0[7];

    v4 = v0[1];

    return v4();
  }

  v8 = (v1 + *v1);
  v6 = v1[1];
  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_1A7F51874;

  return v8();
}

uint64_t sub_1A7F514E0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A7F51870;

  return sub_1A7F51598(a1, v5);
}

uint64_t sub_1A7F51598(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A7F5177C;

  return v6();
}

uint64_t sub_1A7F51680()
{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A7F51364, 0, 0);
}

uint64_t sub_1A7F5177C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1A7F51874()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 72);
  v5 = *v0;

  sub_1A7F50F80(v4);
  v6 = *(MEMORY[0x1E69E8678] + 4);
  v7 = swift_task_alloc();
  v1[8] = v7;
  *v7 = v5;
  v7[1] = sub_1A7F51680;
  v8 = v1[7];
  v9 = v1[5];

  return MEMORY[0x1EEE6D9C8](v1 + 2, 0, 0, v9);
}

uint64_t type metadata accessor for AsyncFIFOQueue()
{
  result = qword_1EB2DCA00;
  if (!qword_1EB2DCA00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t hashBufferDescr(uint64_t *a1)
{
  v1 = *(a1 + 2);
  if (v1 >= 0x20)
  {
    v2 = 32;
  }

  else
  {
    v2 = v1;
  }

  v3 = *a1;
  v4 = _PASMurmur3_x86_32(*a1, v2, v1 + *(a1 + 12));
  if (v1 >= 0x21)
  {
    if ((v1 - 32) >= 0x20)
    {
      v5 = 32;
    }

    else
    {
      v5 = v1 - 32;
    }

    v4 ^= _PASMurmur3_x86_32((v3 + v1 - v5), v5, 0);
  }

  return v4;
}

uint64_t _PASMurmur3_x86_32(_DWORD *a1, unint64_t a2, int a3)
{
  if (a2 < 4)
  {
    v3 = a1;
    if (a2 != 1)
    {
      if (a2 != 2)
      {
        if (a2 != 3)
        {
          goto LABEL_16;
        }

        goto LABEL_14;
      }

LABEL_13:
      v9 = *v3;
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  v5 = *a1;
  v4 = a1 + 1;
  HIDWORD(v6) = (461845907 * ((380141568 * v5) | ((-862048943 * v5) >> 17))) ^ a3;
  LODWORD(v6) = HIDWORD(v6);
  a3 = 5 * (v6 >> 19) - 430675100;
  v3 = (v4 + (a2 & 0xFFFFFFFFFFFFFFFCLL) - 4);
  while (v4 < v3)
  {
    v7 = *v4++;
    HIDWORD(v8) = (461845907 * ((380141568 * v7) | ((-862048943 * v7) >> 17))) ^ a3;
    LODWORD(v8) = HIDWORD(v8);
    a3 = 5 * (v8 >> 19) - 430675100;
  }

  if ((a2 & 3) > 1)
  {
    if ((a2 & 3) != 2)
    {
LABEL_14:
      v9 = *v3 | (*(v3 + 2) << 16);
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if ((a2 & 3) != 0)
  {
LABEL_11:
    v9 = *v3;
LABEL_15:
    a3 ^= 461845907 * ((380141568 * v9) | ((-862048943 * v9) >> 17));
  }

LABEL_16:
  v10 = -2048144789 * (a3 ^ a2 ^ ((a3 ^ a2) >> 16));
  return (-1028477387 * (v10 ^ (v10 >> 13))) ^ ((-1028477387 * (v10 ^ (v10 >> 13))) >> 16);
}

uint64_t bumpChecked(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 24);
  if (*(a1 + 8) - result < a2)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void *bumpChecked(_PASLPAllocContext * _Nonnull, size_t)"}];
    [v5 handleFailureInFunction:v6 file:@"_PASLPWriterV1.m" lineNumber:142 description:{@"Invalid parameter not satisfying: %@", @"offset(allocContext->bumpp, allocContext->endp) >= (ptrdiff_t)byteCount"}];

    result = *(a1 + 24);
  }

  *(a1 + 24) = result + a2;
  return result;
}

uint64_t kSqlEventFired_block_invoke(uint64_t *a1, const void *a2, uint64_t a3)
{
  v6 = *a1;
  v7 = a3 & 0xFFFFFF0000000000 | (BYTE4(a3) << 32) | a3;
  v12[0] = a2;
  v12[1] = v7;
  Value = CFSetGetValue(*(v6 + 16), v12);
  if (Value)
  {
    v9 = *Value;
  }

  else
  {
    v10 = a3;
    alignChecked(*a1, BYTE4(a3));
    v9 = bumpChecked(*a1, a3);
    memcpy(v9, a2, v10);
    cacheBuffer(*(*a1 + 16), *(*a1 + 32), v9, v7);
  }

  return (v9 - **a1);
}

void alignChecked(void *a1, unint64_t a2)
{
  v3 = a1[3];
  v4 = &v3[-*a1];
  v5 = &v4[a2 - 1] / a2 * a2;
  v6 = *a1 + v5;
  if (v6 >= a1[1])
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void *alignChecked(_PASLPAllocContext * _Nonnull, size_t)"}];
    [v7 handleFailureInFunction:v8 file:@"_PASLPWriterV1.m" lineNumber:154 description:{@"Invalid parameter not satisfying: %@", @"alignedPtr < allocContext->endp"}];

    v3 = a1[3];
  }

  bzero(v3, v5 - v4);
  a1[3] = v6;
}

__n128 retainBufferDescr(uint64_t a1, __n128 *a2)
{
  v3 = MEMORY[0x1AC565D00](a1, 16, 0x10C0040EA531592, 0);
  if (!v3)
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA18] reason:@"malloc failed" userInfo:0];
    objc_exception_throw(v5);
  }

  result = *a2;
  *v3 = *a2;
  return result;
}

void cacheBuffer(__CFSet *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[0] = a3;
  v5[1] = a4;
  ++*(a2 + 120);
  if (CFSetGetCount(a1) < 0x2000)
  {
    CFSetAddValue(a1, v5);
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1A7F534A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2DCA10, &qword_1A7FB1730) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v11 = v26 - v10;
  sub_1A7F4F134(a3, v26 - v10, &qword_1EB2DCA10, &qword_1A7FB1730);
  v12 = sub_1A7FAB9A8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1A7F4EC88(v11, &qword_1EB2DCA10, &qword_1A7FB1730);
  }

  else
  {
    sub_1A7FAB998();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1A7FAB988();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1A7FAB918() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_1A7F4EC88(a3, &qword_1EB2DCA10, &qword_1A7FB1730);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1A7F4EC88(a3, &qword_1EB2DCA10, &qword_1A7FB1730);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t AsyncFIFOQueue.__allocating_init()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2DCA10, &qword_1A7FB1730);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v10 - v2;
  v4 = sub_1A7FAB9A8();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = type metadata accessor for AsyncFIFOQueue();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  AsyncFIFOQueue.init(priority:)(v3);
  return v8;
}

uint64_t AsyncFIFOQueue.deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2DCA30, &qword_1A7FB1750);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - v5;
  v7 = OBJC_IVAR____TtC16ProactiveSupport14AsyncFIFOQueue__streamContinuation;
  (*(v3 + 16))(&v11 - v5, v1 + OBJC_IVAR____TtC16ProactiveSupport14AsyncFIFOQueue__streamContinuation, v2);
  sub_1A7FAB9C8();
  v8 = *(v3 + 8);
  v8(v6, v2);
  v8((v1 + v7), v2);
  v9 = *(v1 + OBJC_IVAR____TtC16ProactiveSupport14AsyncFIFOQueue__task);

  swift_defaultActor_destroy();
  return v1;
}

void sub_1A7F539EC()
{
  sub_1A7F53AE4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1A7F53AE4()
{
  if (!qword_1EB2DC9E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB2DCA38, &qword_1A7FB1758);
    v0 = sub_1A7FAB9D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB2DC9E8);
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1A7F53B90(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A7F5177C;

  return sub_1A7F4EDA0(a1, v5);
}

uint64_t sub_1A7F53C48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *&v32 = a4;
  *(&v32 + 1) = a5;
  v10 = sub_1A7FABA88();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v28 - v13;
  v33 = MEMORY[0x1E69E7CC0];
  v34 = MEMORY[0x1E69E7CC0] + 32;
  v35 = xmmword_1A7FB1830;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2DCA50, &qword_1A7FB1840);
  v16 = sub_1A7F5ACEC();
  sub_1A7FAB8C8();
  (*(v11 + 16))(v14, a6, v10);
  v17 = (*(*(a2 - 8) + 48))(v14, 1, a2);
  (*(v11 + 8))(v14, v10);
  if (v17 != 1 && sub_1A7FAB888() == 1 || (MEMORY[0x1AC5658E0](a1, v15, a2, v16) & 1) != 0)
  {

    v33 = a2;
    v34 = a3;
    v35 = v32;
    result = type metadata accessor for StringTrieNode(0, &v33);
    *(a6 + *(result + 52)) = 0;
  }

  else
  {
    v33 = a1;
    sub_1A7FAB8A8();
    v19 = sub_1A7FAB868();
    v29 = v28;
    v41 = v19;
    MEMORY[0x1EEE9AC00](v19);
    v28[-4] = a2;
    v28[-3] = a3;
    v20 = v32;
    *&v28[-2] = v32;
    v28[1] = sub_1A7FAB8A8();
    v31 = MEMORY[0x1E69E5E50];
    swift_getWitnessTable();
    sub_1A7FAB928();
    v30 = 0;

    v29 = v40;
    v39 = v40;
    v21 = MEMORY[0x1E69E7230];
    v33 = MEMORY[0x1E69E7230];
    v34 = a2;
    *&v35 = MEMORY[0x1E69E7250];
    *(&v35 + 1) = MEMORY[0x1E69E7238];
    v22 = MEMORY[0x1E69E7240];
    v36 = MEMORY[0x1E69E7240];
    v37 = a3;
    v38 = v20;
    v23 = type metadata accessor for StandardTrieNode(255, &v33);
    swift_getTupleTypeMetadata2();
    v24 = sub_1A7FAB938();
    v25 = sub_1A7F5AA00(v24, v21, v23, v22);

    v28[0] = v28;
    v33 = v25;
    MEMORY[0x1EEE9AC00](v26);
    v28[-4] = a2;
    v28[-3] = a3;
    *&v28[-2] = v20;
    sub_1A7FAB8A8();
    swift_getWitnessTable();
    sub_1A7FAB928();

    v27 = v41;
    v33 = a2;
    v34 = a3;
    v35 = v20;
    result = type metadata accessor for StringTrieNode(0, &v33);
    *(a6 + *(result + 52)) = v27;
  }

  return result;
}

uint64_t sub_1A7F54098(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v53 = a5;
  v54 = a6;
  v59 = a4;
  v57 = a1;
  v8 = sub_1A7FABA88();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v58 = &v48 - v10;
  v50 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB2DCA50, &qword_1A7FB1840);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = *(TupleTypeMetadata2 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v16 = (&v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v48 - v17;
  v51 = *(v12 + 16);
  v52 = a2;
  v51(&v48 - v17, a2, TupleTypeMetadata2);
  v19 = *(v18 + 1);
  v56 = *v18;
  v20 = *(v18 + 2);
  v21 = *(v18 + 3);
  v22 = *(a3 - 8);
  (*(v22 + 8))(&v18[*(TupleTypeMetadata2 + 48)], a3);
  if (v20 == v21 >> 1)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v20 >= (v21 >> 1))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v49 = v21;
  v23 = v19;
  v55 = *(v19 + v20);
  v48 = v20 + 1;
  v24 = swift_allocObject();
  v25 = v59;
  v24[2] = a3;
  v24[3] = v25;
  v26 = v53;
  v27 = v54;
  v24[4] = v53;
  v24[5] = v27;
  v51(v16, v52, TupleTypeMetadata2);
  v28 = *v16;
  v29 = v56;
  swift_unknownObjectRetain_n();
  swift_unknownObjectRelease();
  v30 = v16 + *(TupleTypeMetadata2 + 48);
  v31 = v58;
  (*(v22 + 32))(v58, v30, a3);
  (*(v22 + 56))(v31, 0, 1, a3);
  v61 = v29;
  v62 = v23;
  v63 = v48;
  v64 = v49;
  v32 = swift_allocObject();
  v33 = v59;
  v32[2] = a3;
  v32[3] = v33;
  v32[4] = v26;
  v32[5] = v27;
  v32[6] = sub_1A7F5BDAC;
  v32[7] = v24;
  v34 = v57;
  v35 = *v57;
  swift_isUniquelyReferenced_nonNull_native();
  v65 = *v34;
  v36 = v65;
  v37 = sub_1A7F5A764(v55);
  if (__OFADD__(*(v36 + 16), (v38 & 1) == 0))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v39 = v37;
  v40 = v38;
  sub_1A7F5ACEC();
  sub_1A7FAB8A8();
  sub_1A7FABB18();
  v41 = sub_1A7FABAF8();
  v42 = v65;
  if (v41)
  {
    v43 = sub_1A7F5A764(v55);
    if ((v40 & 1) == (v44 & 1))
    {
      v39 = v43;
      goto LABEL_7;
    }

LABEL_13:
    result = sub_1A7FABBF8();
    __break(1u);
    return result;
  }

LABEL_7:
  *v57 = v42;
  if ((v40 & 1) == 0)
  {
    v45 = v32[7];
    v65 = (v32[6])();
    v60 = v55;
    sub_1A7FABB08();
  }

  v46 = *(v42 + 56) + 8 * v39;
  sub_1A7FAB8D8();

  return swift_unknownObjectRelease_n();
}

uint64_t sub_1A7F544D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB2DCA50, &qword_1A7FB1840);
  swift_getTupleTypeMetadata2();
  v3 = sub_1A7FAB938();
  v4 = sub_1A7F5ACEC();
  v5 = sub_1A7F5AA00(v3, v2, a1, v4);

  return v5;
}

uint64_t sub_1A7F54564(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21[1] = a1;
  v22[0] = MEMORY[0x1E69E7230];
  v22[1] = a3;
  v22[2] = MEMORY[0x1E69E7250];
  v22[3] = MEMORY[0x1E69E7238];
  v11 = MEMORY[0x1E69E7240];
  v22[4] = MEMORY[0x1E69E7240];
  v22[5] = a4;
  v22[6] = a5;
  v22[7] = a6;
  v12 = type metadata accessor for StandardTrieNode(255, v22);
  v13 = sub_1A7FABA88();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v21 - v15;
  v17 = *a2;
  v18 = *(a2 + 1);

  sub_1A7F546F8(v19, MEMORY[0x1E69E7230], a3, MEMORY[0x1E69E7250], MEMORY[0x1E69E7238], v11, a4, a5, v16, a6);
  (*(*(v12 - 8) + 56))(v16, 0, 1, v12);
  LOBYTE(v22[0]) = v17;
  sub_1A7FAB8A8();
  return sub_1A7FAB8D8();
}

uint64_t sub_1A7F546F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v46 = a7;
  v47 = a8;
  v45 = a5;
  v42 = a4;
  v41 = a1;
  v48 = a10;
  v14 = sub_1A7FABA88();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v40 - v17;
  v59 = sub_1A7FAB878();
  sub_1A7FAB978();
  swift_getWitnessTable();
  sub_1A7FAB8F8();

  v44 = v50;
  v57 = v50;
  v58 = v51;
  v19 = sub_1A7FABAA8();
  v43 = a6;
  v56 = a6;
  v20 = v41;
  WitnessTable = swift_getWitnessTable();
  sub_1A7FAB8C8();
  swift_unknownObjectRelease();
  v22 = *(v15 + 16);
  *&v44 = a9;
  v22(v18, a9, v14);
  v23 = (*(*(a3 - 8) + 48))(v18, 1, a3);
  (*(v15 + 8))(v18, v14);
  if (v23 != 1 && sub_1A7FAB888() == 1 || (MEMORY[0x1AC5658E0](v20, v19, a3, WitnessTable) & 1) != 0)
  {

    *&v50 = a2;
    *(&v50 + 1) = a3;
    *&v51 = v42;
    *(&v51 + 1) = v45;
    v52 = v43;
    v53 = v46;
    v54 = v47;
    v55 = v48;
    result = type metadata accessor for StandardTrieNode(0, &v50);
    *(v44 + *(result + 84)) = 0;
  }

  else
  {
    *&v50 = v20;
    sub_1A7FAB8A8();
    v25 = v43;
    v59 = sub_1A7FAB868();
    MEMORY[0x1EEE9AC00](v59);
    v40[-8] = a2;
    v40[-7] = a3;
    v26 = v42;
    v40[-6] = v42;
    v27 = v26;
    v28 = v46;
    v40[-5] = v45;
    v40[-4] = v25;
    v30 = v47;
    v29 = v48;
    v40[-3] = v28;
    v40[-2] = v30;
    v40[-1] = v29;
    v40[2] = sub_1A7FAB8A8();
    v40[4] = MEMORY[0x1E69E5E50];
    swift_getWitnessTable();
    sub_1A7FAB928();
    v40[3] = 0;

    v41 = v57;
    v59 = v57;
    *&v50 = a2;
    *(&v50 + 1) = a3;
    v31 = v27;
    v32 = v45;
    v33 = v46;
    *&v51 = v27;
    *(&v51 + 1) = v45;
    v52 = v25;
    v53 = v46;
    v34 = v47;
    v54 = v47;
    v55 = v48;
    v35 = type metadata accessor for StandardTrieNode(255, &v50);
    swift_getTupleTypeMetadata2();
    v36 = sub_1A7FAB938();
    v37 = sub_1A7F5AA00(v36, a2, v35, v25);

    v40[1] = v40;
    v49 = v37;
    MEMORY[0x1EEE9AC00](v38);
    v40[-8] = a2;
    v40[-7] = a3;
    v40[-6] = v31;
    v40[-5] = v32;
    v40[-4] = v25;
    v40[-3] = v33;
    v39 = v48;
    v40[-2] = v34;
    v40[-1] = v39;
    sub_1A7FAB8A8();
    swift_getWitnessTable();
    sub_1A7FAB928();

    *(v44 + *(v35 + 84)) = v50;
  }

  return result;
}

uint64_t sub_1A7F54C50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v40 = a6;
  v11 = sub_1A7FABA88();
  v32 = *(v11 - 8);
  v33 = v11;
  v12 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v38 = &v32 - v13;
  v14 = *(a5 + 16);
  v15 = sub_1A7FABA88();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v32 - v19;
  v21 = *(v14 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v39 = &v32 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a3;
  v36 = a1;
  v46 = a1;
  v47 = a2;
  v34 = a2;
  v48 = a3;
  v49 = a4;
  v37 = a4;
  sub_1A7FABAA8();
  swift_getWitnessTable();
  sub_1A7FABA48();
  if ((*(v21 + 48))(v20, 1, v14) == 1)
  {
    (*(v16 + 8))(v20, v15);
    v24 = *(a5 + 24);
    v25 = sub_1A7FABA88();
    return (*(*(v25 - 8) + 16))(v40, v41, v25);
  }

  v27 = v39;
  v28 = v40;
  (*(v21 + 32))(v39, v20, v14);
  if (!*(v41 + *(a5 + 84)))
  {
    (*(v21 + 8))(v27, v14);
    return (*(*(*(a5 + 24) - 8) + 56))(v28, 1, 1);
  }

  v29 = *(a5 + 48);
  v30 = v38;
  sub_1A7FAB8C8();
  v31 = *(a5 - 8);
  if ((*(v31 + 48))(v30, 1, a5) == 1)
  {
    (*(v21 + 8))(v27, v14);
    (*(v32 + 8))(v30, v33);
    return (*(*(*(a5 + 24) - 8) + 56))(v28, 1, 1);
  }

  v42 = v36;
  v43 = v34;
  v44 = v35;
  v45 = v37;
  swift_unknownObjectRetain();
  sub_1A7FABA78();
  sub_1A7F54C50(v46, v47, v48, v49, a5);
  swift_unknownObjectRelease();
  (*(v21 + 8))(v27, v14);
  return (*(v31 + 8))(v30, a5);
}

uint64_t sub_1A7F55094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v46 = a6;
  v42 = a4;
  v43 = a5;
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v39 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A7FABA88();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v47 = &v38 - v15;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v44 = *(TupleTypeMetadata2 - 8);
  v17 = *(v44 + 64);
  v18 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v20 = &v38 - v19;
  v21 = *(v18 + 48);
  v45 = v13;
  v22 = *(v13 + 16);
  v40 = a1;
  v22(&v38 - v19, a1, v12);
  v41 = a2;
  v22(&v20[v21], a2, v12);
  v23 = v9;
  v24 = *(v9 + 48);
  if (v24(v20, 1, a3) != 1)
  {
    v22(v47, v20, v12);
    if (v24(&v20[v21], 1, a3) != 1)
    {
      v27 = &v20[v21];
      v28 = v39;
      (*(v9 + 32))(v39, v27, a3);
      v25 = v46;
      v29 = v47;
      v30 = sub_1A7FAB908();
      v31 = *(v23 + 8);
      v31(v28, a3);
      v31(v29, a3);
      (*(v45 + 8))(v20, v12);
      if ((v30 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_10;
    }

    (*(v9 + 8))(v47, a3);
LABEL_6:
    (*(v44 + 8))(v20, TupleTypeMetadata2);
    return 0;
  }

  if (v24(&v20[v21], 1, a3) != 1)
  {
    goto LABEL_6;
  }

  (*(v45 + 8))(v20, v12);
  v25 = v46;
LABEL_10:
  v33 = v42;
  v32 = v43;
  v48 = a3;
  v49 = v42;
  v50 = v43;
  v51 = v25;
  v34 = *(type metadata accessor for StringTrieNode(0, &v48) + 52);
  v35 = *(v41 + v34);
  if (*(v40 + v34))
  {
    if (v35)
    {
      v36 = *(v41 + v34);

      v48 = MEMORY[0x1E69E7230];
      v49 = a3;
      v50 = MEMORY[0x1E69E7250];
      v51 = MEMORY[0x1E69E7238];
      v52 = MEMORY[0x1E69E7240];
      v53 = v33;
      v54 = v32;
      v55 = v25;
      type metadata accessor for StandardTrieNode(0, &v48);
      swift_getWitnessTable();
      v37 = sub_1A7FAB8B8();

      if (v37)
      {
        return 1;
      }
    }
  }

  else if (!v35)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1A7F554DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_1A7FABBE8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6156627573 && a2 == 0xE900000000000073)
  {

    return 1;
  }

  else
  {
    v6 = sub_1A7FABBE8();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1A7F555AC(char a1)
{
  sub_1A7FABC18();
  MEMORY[0x1AC565C70](a1 & 1);
  return sub_1A7FABC38();
}

uint64_t sub_1A7F555F4(char a1)
{
  if (a1)
  {
    return 0x65756C6156627573;
  }

  else
  {
    return 0x65756C6176;
  }
}

BOOL sub_1A7F5562C(unsigned __int8 *a1, unsigned __int8 *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  return sub_1A7F53424(*a1, *a2);
}

uint64_t sub_1A7F55644(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_1A7F555AC(*v1);
}

uint64_t sub_1A7F55658(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  return sub_1A7F53434(a1, *v2);
}

uint64_t sub_1A7F5566C(uint64_t a1, void *a2)
{
  sub_1A7FABC18();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  sub_1A7F53434(v9, *v2);
  return sub_1A7FABC38();
}

uint64_t sub_1A7F556B8(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_1A7F555F4(*v1);
}

uint64_t sub_1A7F556CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  result = sub_1A7F554DC(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1A7F5570C@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  result = sub_1A7F5BC44();
  *a2 = result;
  return result;
}

uint64_t sub_1A7F55740(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1A7F55794(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1A7F557E8(void *a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  v6 = *(a2 + 40);
  v24 = *(a2 + 32);
  v25 = v5;
  v30 = v5;
  v31 = v4;
  v22 = v6;
  v23 = v4;
  v32 = v24;
  v33 = v6;
  type metadata accessor for StringTrieNode.CodingKeys(255, &v30);
  swift_getWitnessTable();
  v7 = sub_1A7FABBD8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = v7;
  v14 = v24;
  sub_1A7FABC58();
  LOBYTE(v30) = 0;
  v15 = v26;
  v16 = v25;
  v17 = v27;
  sub_1A7FABBB8();
  if (v17)
  {
    return (*(v8 + 8))(v11, v13);
  }

  v27 = v8;
  v39 = *(v15 + *(a2 + 52));
  v38 = 1;
  v30 = MEMORY[0x1E69E7230];
  v31 = v16;
  v19 = MEMORY[0x1E69E7238];
  v32 = MEMORY[0x1E69E7250];
  v33 = MEMORY[0x1E69E7238];
  v34 = MEMORY[0x1E69E7240];
  v35 = v23;
  v36 = v14;
  v37 = v22;
  type metadata accessor for StandardTrieNode(255, &v30);
  sub_1A7FAB8A8();
  WitnessTable = swift_getWitnessTable();
  v28 = v19;
  v29 = WitnessTable;
  swift_getWitnessTable();
  sub_1A7FABBB8();
  return (*(v27 + 8))(v11, v13);
}

uint64_t sub_1A7F55A7C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a6;
  v11 = sub_1A7FABA88();
  v42 = *(v11 - 8);
  v43 = v11;
  v12 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v39 = &v34 - v13;
  v49 = a2;
  v50 = a3;
  v51 = a4;
  v52 = a5;
  type metadata accessor for StringTrieNode.CodingKeys(255, &v49);
  swift_getWitnessTable();
  v45 = sub_1A7FABB98();
  v41 = *(v45 - 8);
  v14 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v16 = &v34 - v15;
  v49 = a2;
  v50 = a3;
  v44 = a3;
  v37 = a5;
  v38 = a4;
  v51 = a4;
  v52 = a5;
  v17 = type metadata accessor for StringTrieNode(0, &v49);
  v35 = *(v17 - 8);
  v18 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v34 - v19;
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v40 = v16;
  v22 = v46;
  sub_1A7FABC48();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = v38;
  v34 = v20;
  v46 = a1;
  v24 = v42;
  v25 = v43;
  LOBYTE(v49) = 0;
  v27 = v39;
  v26 = v40;
  sub_1A7FABB68();
  (*(v24 + 32))(v34, v27, v25);
  v49 = MEMORY[0x1E69E7230];
  v50 = a2;
  v28 = MEMORY[0x1E69E7250];
  v51 = MEMORY[0x1E69E7250];
  v52 = MEMORY[0x1E69E7238];
  v53 = MEMORY[0x1E69E7240];
  v54 = v44;
  v55 = v23;
  v56 = v37;
  type metadata accessor for StandardTrieNode(255, &v49);
  sub_1A7FAB8A8();
  LOBYTE(v49) = 1;
  v29 = v45;
  WitnessTable = swift_getWitnessTable();
  v47 = v28;
  v48 = WitnessTable;
  swift_getWitnessTable();
  sub_1A7FABB68();
  (*(v41 + 8))(v26, v29);
  v31 = v34;
  *&v34[*(v17 + 52)] = v57;
  v32 = v35;
  (*(v35 + 16))(v36, v31, v17);
  __swift_destroy_boxed_opaque_existential_1(v46);
  return (*(v32 + 8))(v31, v17);
}

uint64_t sub_1A7F55F4C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v93 = a8;
  v85 = a7;
  v91 = a5;
  v92 = a6;
  v86 = a1;
  v13 = sub_1A7FABA88();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v87 = v76 - v15;
  v84 = sub_1A7FABA88();
  v83 = *(v84 - 8);
  v16 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v84);
  v18 = v76 - v17;
  v19 = sub_1A7FABAA8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v21 = *(*(TupleTypeMetadata2 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v81 = v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = (v76 - v25);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = v76 - v28;
  v30 = *(a3 - 8);
  v31 = *(v30 + 64);
  v32 = MEMORY[0x1EEE9AC00](v27);
  v79 = v76 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v97 = v76 - v34;
  v36 = *(v35 + 16);
  v90 = a2;
  v89 = v35 + 16;
  v88 = v36;
  v36(v29, a2, TupleTypeMetadata2);
  *&v95 = *(TupleTypeMetadata2 + 48);
  v37 = *(v29 + 1);
  v94 = *v29;
  v101 = v94;
  v102 = v37;
  WitnessTable = swift_getWitnessTable();
  v82 = v19;
  v80 = WitnessTable;
  sub_1A7FABA48();
  v39 = *(v30 + 48);
  v96 = a3;
  if (v39(v18, 1, a3) == 1)
  {
    (*(v83 + 8))(v18, v84);
    swift_unknownObjectRelease();
    return (*(*(a4 - 8) + 8))(&v29[v95], a4);
  }

  *&v94 = a10;
  v84 = a9;
  v77 = v30;
  (*(v30 + 32))(v97, v18, v96);
  swift_unknownObjectRelease();
  v78 = *(a4 - 8);
  v41 = *(v78 + 8);
  v41(&v29[v95], a4);
  v88(v26, v90, TupleTypeMetadata2);
  v43 = *v26;
  v42 = v26[1];
  v44 = v26[2];
  v45 = v26[3];
  v41(v26 + *(TupleTypeMetadata2 + 48), a4);
  v46 = v85;
  v47 = swift_allocObject();
  v47[2] = v96;
  v47[3] = a4;
  v83 = a4;
  v48 = v92;
  v47[4] = v91;
  v47[5] = v48;
  v49 = v93;
  v47[6] = v46;
  v47[7] = v49;
  v50 = v94;
  v47[8] = v84;
  v47[9] = v50;
  *&v99 = v43;
  *(&v99 + 1) = v42;
  *&v100 = v44;
  *(&v100 + 1) = v45;
  swift_unknownObjectRetain();
  v76[1] = v43;
  v51 = sub_1A7FABA98();
  if (__OFADD__(v51, 1))
  {
    __break(1u);
    goto LABEL_12;
  }

  v103 = v51 + 1;
  sub_1A7FABA58();
  v52 = v102;
  v95 = v101;
  v53 = v81;
  v88(v81, v90, TupleTypeMetadata2);
  v54 = *v53;
  swift_unknownObjectRelease();
  v55 = v78;
  v56 = v53 + *(TupleTypeMetadata2 + 48);
  v57 = v87;
  v58 = v83;
  (*(v78 + 32))(v87, v56, v83);
  (*(v55 + 56))(v57, 0, 1, v58);
  v99 = v95;
  v100 = v52;
  v59 = swift_allocObject();
  v60 = v96;
  v59[2] = v96;
  v59[3] = v58;
  v61 = v92;
  v59[4] = v91;
  v59[5] = v61;
  v62 = v93;
  v59[6] = v46;
  v59[7] = v62;
  v63 = v94;
  v59[8] = v84;
  v59[9] = v63;
  v59[10] = sub_1A7F5BD58;
  v59[11] = v47;
  v64 = v86;
  v65 = *v86;
  LODWORD(v94) = swift_isUniquelyReferenced_nonNull_native();
  v66 = *v64;
  v103 = v66;
  *&v95 = sub_1A7F5A7AC(v97, v60, v46);
  if (__OFADD__(*(v66 + 16), (v67 & 1) == 0))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    result = sub_1A7FABBF8();
    __break(1u);
    return result;
  }

  v68 = v67;
  v98 = v46;
  swift_getWitnessTable();
  sub_1A7FAB8A8();
  sub_1A7FABB18();
  v69 = sub_1A7FABAF8();
  v70 = v103;
  if (v69)
  {
    *&v95 = sub_1A7F5A7AC(v97, v60, v46);
    if ((v68 & 1) != (v71 & 1))
    {
      goto LABEL_13;
    }
  }

  v72 = v77;
  v73 = v97;
  *v86 = v70;
  if ((v68 & 1) == 0)
  {
    v74 = v59[11];
    v103 = (v59[10])();
    (*(v72 + 16))(v79, v73, v60);
    sub_1A7FABB08();
  }

  v75 = *(v70 + 56) + 8 * v95;
  sub_1A7FAB8D8();
  swift_unknownObjectRelease();
  (*(v72 + 8))(v73, v60);
}

uint64_t sub_1A7F5675C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1A7FABAA8();
  swift_getTupleTypeMetadata2();
  v4 = sub_1A7FAB938();
  WitnessTable = swift_getWitnessTable();
  v6 = sub_1A7F5AA00(v4, v3, a2, WitnessTable);

  return v6;
}

uint64_t sub_1A7F56810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v37 = a1;
  v35 = a6;
  v36 = a8;
  v31 = a7;
  v32 = a10;
  v33 = a9;
  v34 = a5;
  v38[0] = a3;
  v38[1] = a4;
  v30 = a4;
  v38[2] = a5;
  v38[3] = a6;
  v38[4] = a7;
  v38[5] = a8;
  v38[6] = a9;
  v38[7] = a10;
  v13 = type metadata accessor for StandardTrieNode(255, v38);
  v14 = sub_1A7FABA88();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v29 - v16;
  sub_1A7FABAA8();
  v38[9] = a7;
  swift_getWitnessTable();
  sub_1A7FAB8A8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v19 = *(TupleTypeMetadata2 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v23 = &v29 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v29 - v24;
  v26 = *(v19 + 16);
  v26(&v29 - v24, a2, TupleTypeMetadata2);
  v27 = *&v25[*(TupleTypeMetadata2 + 48)];

  v26(v23, a2, TupleTypeMetadata2);
  sub_1A7F546F8(*&v23[*(TupleTypeMetadata2 + 48)], a3, v30, v34, v35, v31, v36, v33, v32);
  (*(*(a3 - 8) + 8))(v23, a3);
  (*(*(v13 - 8) + 56))(v17, 0, 1, v13);
  sub_1A7FAB8A8();
  return sub_1A7FAB8D8();
}

uint64_t sub_1A7F56ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v42 = a6;
  v43 = a8;
  v46 = a3;
  v47 = a7;
  v41 = a5;
  v13 = *(a4 - 8);
  v14 = *(v13 + 64);
  v52 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1A7FABA88();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v49 = &v40 - v19;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v48 = *(TupleTypeMetadata2 - 8);
  v21 = *(v48 + 64);
  v22 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v24 = &v40 - v23;
  v25 = *(v22 + 48);
  v50 = v17;
  v26 = *(v17 + 16);
  v44 = a1;
  v26(&v40 - v23, a1, v16);
  v45 = a2;
  v26(&v24[v25], a2, v16);
  v51 = v13;
  v27 = *(v13 + 48);
  if (v27(v24, 1, a4) != 1)
  {
    v29 = v49;
    v26(v49, v24, v16);
    if (v27(&v24[v25], 1, a4) != 1)
    {
      v31 = v51;
      v32 = &v24[v25];
      v33 = v40;
      (*(v51 + 32))(v40, v32, a4);
      v28 = v52;
      v34 = sub_1A7FAB908();
      v35 = *(v31 + 8);
      v35(v33, a4);
      v35(v29, a4);
      (*(v50 + 8))(v24, v16);
      if ((v34 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_10;
    }

    (*(v51 + 8))(v29, a4);
LABEL_6:
    (*(v48 + 8))(v24, TupleTypeMetadata2);
    return 0;
  }

  if (v27(&v24[v25], 1, a4) != 1)
  {
    goto LABEL_6;
  }

  (*(v50 + 8))(v24, v16);
  v28 = v52;
LABEL_10:
  v53[0] = v46;
  v53[1] = a4;
  v53[2] = v41;
  v53[3] = v42;
  v53[4] = v47;
  v53[5] = v43;
  v53[6] = a9;
  v53[7] = v28;
  v36 = *(type metadata accessor for StandardTrieNode(0, v53) + 84);
  v37 = *(v45 + v36);
  if (*(v44 + v36))
  {
    if (v37)
    {
      v38 = *(v45 + v36);

      swift_getWitnessTable();
      v39 = sub_1A7FAB8B8();

      if (v39)
      {
        return 1;
      }
    }
  }

  else if (!v37)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1A7F56F14(void *a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v17 = *(a2 + 16);
  v18 = v4;
  v25 = v17;
  v20 = *(a2 + 24);
  v26 = v20;
  v27 = v4;
  v5 = *(a2 + 48);
  v19 = *(a2 + 64);
  v16 = v5;
  v28 = v5;
  v29 = v19;
  type metadata accessor for StandardTrieNode.CodingKeys(255, &v25);
  swift_getWitnessTable();
  v6 = sub_1A7FABBD8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = v21;
  sub_1A7FABC58();
  LOBYTE(v25) = 0;
  v13 = v22;
  sub_1A7FABBB8();
  if (!v13)
  {
    v25 = *(v12 + *(a2 + 84));
    v30 = 1;
    sub_1A7FAB8A8();
    WitnessTable = swift_getWitnessTable();
    v23 = v18;
    v24 = WitnessTable;
    swift_getWitnessTable();
    sub_1A7FABBB8();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1A7F57160@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v48 = a8;
  v47 = a5;
  v36 = a9;
  v46 = a10;
  v39 = sub_1A7FABA88();
  v38 = *(v39 - 8);
  v18 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v44 = &v35 - v19;
  v52 = a2;
  v53 = a3;
  v54 = a4;
  v55 = a5;
  v56 = a6;
  v57 = a7;
  v58 = a8;
  v59 = a10;
  type metadata accessor for StandardTrieNode.CodingKeys(255, &v52);
  swift_getWitnessTable();
  v45 = sub_1A7FABB98();
  v43 = *(v45 - 8);
  v20 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v22 = &v35 - v21;
  v40 = a2;
  v41 = a4;
  v52 = a2;
  v53 = a3;
  v42 = a3;
  v54 = a4;
  v55 = v47;
  v37 = a6;
  v56 = a6;
  v57 = a7;
  v47 = a7;
  v58 = v48;
  v59 = v46;
  v23 = type metadata accessor for StandardTrieNode(0, &v52);
  v46 = *(v23 - 8);
  v24 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v35 - v25;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v48 = v22;
  v28 = v49;
  sub_1A7FABC48();
  if (v28)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v49 = a1;
  v29 = v41;
  v30 = v38;
  v31 = v39;
  LOBYTE(v52) = 0;
  sub_1A7FABB68();
  (*(v30 + 32))(v26, v44, v31);
  sub_1A7FAB8A8();
  v60 = 1;
  WitnessTable = swift_getWitnessTable();
  v50 = v29;
  v51 = WitnessTable;
  swift_getWitnessTable();
  sub_1A7FABB68();
  (*(v43 + 8))(v48, v45);
  *&v26[*(v23 + 84)] = v52;
  v33 = v46;
  (*(v46 + 16))(v36, v26, v23);
  __swift_destroy_boxed_opaque_existential_1(v49);
  return (*(v33 + 8))(v26, v23);
}

uint64_t sub_1A7F575E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v62 = a1;
  v63 = a2;
  v64 = a4;
  v65 = a8;
  v66 = a9;
  v67 = a10;
  v16 = type metadata accessor for StringTrieNode(0, &v64);
  v57 = *(v16 - 8);
  v58 = v16;
  v17 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v49 = &v47 - v18;
  v64 = a3;
  v65 = a4;
  v66 = a5;
  v67 = a6;
  v68 = a7;
  v69 = a8;
  v70 = a9;
  v71 = a10;
  v19 = type metadata accessor for StandardTrieNode(0, &v64);
  v55 = *(v19 - 8);
  v56 = v19;
  v20 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v48 = &v47 - v21;
  v50 = a3;
  v64 = a3;
  v65 = a4;
  v60 = a4;
  v61 = a8;
  v51 = a5;
  v52 = a6;
  v66 = a5;
  v67 = a6;
  v53 = a7;
  v68 = a7;
  v69 = a8;
  v70 = a9;
  v71 = a10;
  v59 = a10;
  v22 = type metadata accessor for Trie.RootNode(0, &v64);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v47 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v47 - v28;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v54 = *(TupleTypeMetadata2 - 8);
  v31 = *(v54 + 64);
  v32 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v34 = &v47 - v33;
  v35 = *(v32 + 48);
  v36 = *(v23 + 16);
  v36(&v47 - v33, v62, v22);
  v36(&v34[v35], v63, v22);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v36(v27, v34, v22);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v38 = v57;
      v37 = v58;
      v39 = v49;
      (*(v57 + 32))(v49, &v34[v35], v58);
      v40 = sub_1A7F55094(v27, v39, v60, v61, a9, v59);
      v41 = *(v38 + 8);
      v41(v39, v37);
      v41(v27, v37);
      goto LABEL_10;
    }

    (*(v57 + 8))(v27, v58);
LABEL_7:
    v40 = 0;
    v23 = v54;
    v22 = TupleTypeMetadata2;
    goto LABEL_10;
  }

  v36(v29, v34, v22);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v55 + 8))(v29, v56);
    goto LABEL_7;
  }

  v43 = v55;
  v42 = v56;
  v44 = v48;
  (*(v55 + 32))(v48, &v34[v35], v56);
  v40 = sub_1A7F56ADC(v29, v44, v50, v60, v51, v52, v53, v61, a9, v59);
  v45 = *(v43 + 8);
  v45(v44, v42);
  v45(v29, v42);
LABEL_10:
  (*(v23 + 8))(v34, v22);
  return v40 & 1;
}

uint64_t sub_1A7F57A88(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x647261646E617473 && a2 == 0xE800000000000000;
  if (v4 || (sub_1A7FABBE8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E69727473 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1A7FABBE8();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1A7F57B50(char a1)
{
  if (a1)
  {
    return 0x676E69727473;
  }

  else
  {
    return 0x647261646E617473;
  }
}

uint64_t sub_1A7F57B84(uint64_t a1, uint64_t a2)
{
  if (a1 == 1701080942 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1A7FABBE8();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1A7F57BFC(void *a1, void *a2)
{
  v78 = a2;
  v2 = a2[2];
  v3 = a2[3];
  v4 = a2[4];
  v67 = a2[5];
  v68 = a1;
  v5 = a2[7];
  v66 = a2[6];
  v7 = a2[8];
  v6 = a2[9];
  v70 = v2;
  v71 = v3;
  v72 = v4;
  v73 = v67;
  v8 = v4;
  v74 = v66;
  v75 = v5;
  v76 = v7;
  v77 = v6;
  v9 = v6;
  v58 = type metadata accessor for Trie.RootNode.StringCodingKeys(255, &v70);
  WitnessTable = swift_getWitnessTable();
  v10 = sub_1A7FABBD8();
  v62 = *(v10 - 8);
  v63 = v10;
  v11 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v60 = v49 - v12;
  v70 = v3;
  v71 = v5;
  v72 = v7;
  v73 = v9;
  v13 = v9;
  v61 = type metadata accessor for StringTrieNode(0, &v70);
  v59 = *(v61 - 8);
  v14 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v56 = v49 - v15;
  v70 = v2;
  v71 = v3;
  v64 = v3;
  v65 = v2;
  v72 = v8;
  v16 = v8;
  v18 = v66;
  v17 = v67;
  v73 = v67;
  v74 = v66;
  v75 = v5;
  v76 = v7;
  v77 = v13;
  v19 = v13;
  v20 = type metadata accessor for Trie.RootNode.StandardCodingKeys(255, &v70);
  v21 = swift_getWitnessTable();
  v51 = v20;
  v49[1] = v21;
  v55 = sub_1A7FABBD8();
  v54 = *(v55 - 8);
  v22 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v53 = v49 - v23;
  v70 = v2;
  v71 = v3;
  v72 = v16;
  v73 = v17;
  v24 = v17;
  v74 = v18;
  v75 = v5;
  v25 = v18;
  v76 = v7;
  v77 = v19;
  v52 = type metadata accessor for StandardTrieNode(0, &v70);
  v50 = *(v52 - 8);
  v26 = *(v50 + 64);
  v27 = MEMORY[0x1EEE9AC00](v52);
  v49[0] = v49 - v28;
  v29 = *(v78 - 1);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v32 = v49 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = v65;
  v71 = v64;
  v72 = v16;
  v73 = v24;
  v74 = v25;
  v75 = v5;
  v76 = v7;
  v77 = v19;
  type metadata accessor for Trie.RootNode.CodingKeys(255, &v70);
  swift_getWitnessTable();
  v33 = sub_1A7FABBD8();
  v67 = *(v33 - 8);
  v34 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v36 = v49 - v35;
  v37 = v68[4];
  __swift_project_boxed_opaque_existential_1(v68, v68[3]);
  sub_1A7FABC58();
  (*(v29 + 16))(v32, v69, v78);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v38 = v59;
    v39 = v56;
    v40 = v61;
    (*(v59 + 32))(v56, v32, v61);
    LOBYTE(v70) = 1;
    v41 = v60;
    sub_1A7FABBA8();
    swift_getWitnessTable();
    v42 = v63;
    sub_1A7FABBC8();
    (*(v62 + 8))(v41, v42);
    (*(v38 + 8))(v39, v40);
  }

  else
  {
    v43 = v50;
    v44 = v49[0];
    v45 = v52;
    (*(v50 + 32))(v49[0], v32, v52);
    LOBYTE(v70) = 0;
    v46 = v53;
    sub_1A7FABBA8();
    swift_getWitnessTable();
    v47 = v55;
    sub_1A7FABBC8();
    (*(v54 + 8))(v46, v47);
    (*(v43 + 8))(v44, v45);
  }

  return (*(v67 + 8))(v36, v33);
}

uint64_t sub_1A7F582AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  v98 = a1;
  v83 = a9;
  *&v92 = a2;
  *(&v92 + 1) = a3;
  *&v93 = a4;
  *(&v93 + 1) = a5;
  v94 = a6;
  v95 = a7;
  v96 = a8;
  v97 = a10;
  v81 = type metadata accessor for Trie.RootNode.StringCodingKeys(255, &v92);
  WitnessTable = swift_getWitnessTable();
  v74 = sub_1A7FABB98();
  v71 = *(v74 - 8);
  v17 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v84 = &v63 - v18;
  *&v92 = a2;
  *(&v92 + 1) = a3;
  *&v93 = a4;
  *(&v93 + 1) = a5;
  v94 = a6;
  v95 = a7;
  v96 = a8;
  v97 = a10;
  v19 = type metadata accessor for Trie.RootNode.StandardCodingKeys(255, &v92);
  v20 = swift_getWitnessTable();
  v78 = v19;
  v77 = v20;
  v68 = sub_1A7FABB98();
  v67 = *(v68 - 8);
  v21 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v79 = &v63 - v22;
  *&v92 = a2;
  *(&v92 + 1) = a3;
  *&v93 = a4;
  *(&v93 + 1) = a5;
  v94 = a6;
  v95 = a7;
  v96 = a8;
  v97 = a10;
  type metadata accessor for Trie.RootNode.CodingKeys(255, &v92);
  v88 = swift_getWitnessTable();
  v23 = sub_1A7FABB98();
  v86 = *(v23 - 8);
  v87 = v23;
  v24 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v69 = a2;
  *&v92 = a2;
  *(&v92 + 1) = a3;
  v75 = a3;
  v26 = &v63 - v25;
  v70 = a4;
  *&v93 = a4;
  *(&v93 + 1) = a5;
  v72 = a5;
  v73 = a6;
  v94 = a6;
  v95 = a7;
  v82 = a7;
  v85 = a8;
  v96 = a8;
  v97 = a10;
  v76 = a10;
  v27 = type metadata accessor for Trie.RootNode(0, &v92);
  v66 = *(v27 - 8);
  v28 = *(v66 + 64);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = &v63 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v29);
  v34 = &v63 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v63 - v35;
  v37 = v98[4];
  __swift_project_boxed_opaque_existential_1(v98, v98[3]);
  v38 = v89;
  sub_1A7FABC48();
  if (!v38)
  {
    v65 = v31;
    v88 = v34;
    v64 = v36;
    v89 = v27;
    v40 = v84;
    v39 = v85;
    *&v92 = sub_1A7FABB88();
    sub_1A7FAB978();
    swift_getWitnessTable();
    *&v90 = sub_1A7FABAB8();
    *(&v90 + 1) = v41;
    *&v91 = v42;
    *(&v91 + 1) = v43;
    sub_1A7FABAA8();
    swift_getWitnessTable();
    sub_1A7FABA38();
    v44 = v92;
    if (v92 == 2 || (v63 = v90, v92 = v90, v93 = v91, (sub_1A7FABA68() & 1) == 0))
    {
      v48 = sub_1A7FABAE8();
      swift_allocError();
      v50 = v49;
      v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB2DCAE0, qword_1A7FB1BE8) + 48);
      *v50 = v89;
      v52 = v87;
      sub_1A7FABB58();
      sub_1A7FABAD8();
      (*(*(v48 - 8) + 104))(v50, *MEMORY[0x1E69E6AF8], v48);
      swift_willThrow();
      (*(v86 + 8))(v26, v52);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v44)
      {
        LOBYTE(v92) = 1;
        v45 = v40;
        v46 = v87;
        sub_1A7FABB48();
        v47 = v83;
        *&v92 = v75;
        *(&v92 + 1) = v82;
        *&v93 = v39;
        *(&v93 + 1) = v76;
        type metadata accessor for StringTrieNode(0, &v92);
        swift_getWitnessTable();
        v56 = v65;
        v57 = v74;
        sub_1A7FABB78();
        v58 = v86;
        (*(v71 + 8))(v45, v57);
        (*(v58 + 8))(v26, v46);
      }

      else
      {
        LOBYTE(v92) = 0;
        v53 = v79;
        v54 = v87;
        sub_1A7FABB48();
        v47 = v83;
        *&v92 = v69;
        *(&v92 + 1) = v75;
        *&v93 = v70;
        *(&v93 + 1) = v72;
        v94 = v73;
        v95 = v82;
        v96 = v39;
        v97 = v76;
        type metadata accessor for StandardTrieNode(0, &v92);
        swift_getWitnessTable();
        v56 = v88;
        v55 = v68;
        sub_1A7FABB78();
        (*(v67 + 8))(v53, v55);
        (*(v86 + 8))(v26, v54);
      }

      swift_unknownObjectRelease();
      v60 = v89;
      swift_storeEnumTagMultiPayload();
      v61 = *(v66 + 32);
      v62 = v64;
      v61(v64, v56, v60);
      v61(v47, v62, v60);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v98);
}

uint64_t sub_1A7F58C8C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1A7F58CE0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1A7F58DDC(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  v10 = a1[9];
  return sub_1A7F555AC(*v1);
}

uint64_t sub_1A7F58E5C(uint64_t a1, void *a2, uint64_t a3, void (*a4)(_BYTE *, void, void, void, void, void, void, void, void, void))
{
  sub_1A7FABC18();
  a4(v8, *v4, a2[2], a2[3], a2[4], a2[5], a2[6], a2[7], a2[8], a2[9]);
  return sub_1A7FABC38();
}

uint64_t sub_1A7F58F38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, void, void, void, void, void, void, void, void)@<X4>, _BYTE *a5@<X8>)
{
  result = a4(a1, a2, a3[2], a3[3], a3[4], a3[5], a3[6], a3[7], a3[8], a3[9]);
  *a5 = result;
  return result;
}

uint64_t sub_1A7F58F88@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void, void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5], a1[6], a1[7], a1[8], a1[9]);
  *a3 = result;
  return result;
}

uint64_t sub_1A7F58FCC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1A7F59020(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1A7F590A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1A7F590F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1A7F5914C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  v9 = a3[6];
  v10 = a3[7];
  v12 = a3[8];
  v13 = a3[9];
  result = sub_1A7F57B84(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_1A7F59198(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1A7F591EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t Trie.init(dictionary:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v23[10] = a1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB2DCA50, &qword_1A7FB1840);
  swift_getTupleTypeMetadata2();
  v16 = sub_1A7FAB938();
  v17 = sub_1A7F5ACEC();
  v18 = sub_1A7F5AA00(v16, v15, a3, v17);

  v23[9] = v18;
  sub_1A7FAB8A8();
  sub_1A7FAB8A8();
  swift_getWitnessTable();
  sub_1A7FAB928();

  sub_1A7F53C48(v23[0], a3, a7, a8, a10, a9);
  v23[0] = a2;
  v23[1] = a3;
  v23[2] = a4;
  v23[3] = a5;
  v23[4] = a6;
  v23[5] = a7;
  v23[6] = a8;
  v23[7] = a10;
  type metadata accessor for Trie.RootNode(0, v23);
  return swift_storeEnumTagMultiPayload();
}

{
  v23[12] = a1;
  v14 = sub_1A7FABAA8();
  swift_getTupleTypeMetadata2();
  v15 = sub_1A7FAB938();
  v23[11] = a6;
  WitnessTable = swift_getWitnessTable();
  v17 = sub_1A7F5AA00(v15, v14, a3, WitnessTable);

  v23[10] = v17;
  sub_1A7FAB978();
  v23[8] = a6;
  swift_getWitnessTable();
  sub_1A7FAB8A8();
  sub_1A7FAB8A8();
  swift_getWitnessTable();
  sub_1A7FAB928();

  sub_1A7F546F8(v23[0], a2, a3, a4, a5, a6, a7, a8, a9, a10);
  v23[0] = a2;
  v23[1] = a3;
  v23[2] = a4;
  v23[3] = a5;
  v23[4] = a6;
  v23[5] = a7;
  v23[6] = a8;
  v23[7] = a10;
  type metadata accessor for Trie.RootNode(0, v23);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A7F59474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a1;
  v6 = sub_1A7FABA88();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v28 = &v27 - v8;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = *(TupleTypeMetadata2 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v27 - v15;
  v17 = *(v10 + 16);
  v17(&v27 - v15, a2, TupleTypeMetadata2);
  v18 = *v16;
  v19 = *(v16 + 1);
  v29 = *(TupleTypeMetadata2 + 48);
  v20 = sub_1A7FAB918();

  v21 = *(v20 + 16);
  v27 = v20 + 32;
  v22 = (2 * v21) | 1;
  v17(v14, a2, TupleTypeMetadata2);
  v23 = *(v14 + 1);

  v24 = *(a4 - 8);
  v25 = v28;
  (*(v24 + 32))(v28, &v14[*(TupleTypeMetadata2 + 48)], a4);
  (*(v24 + 56))(v25, 0, 1, a4);
  v31 = v20;
  v32 = v27;
  v33 = 0;
  v34 = v22;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB2DCA50, &qword_1A7FB1840);
  sub_1A7F5ACEC();
  sub_1A7FAB8A8();
  sub_1A7FAB8D8();
  return (*(v24 + 8))(&v16[v29], a4);
}

uint64_t sub_1A7F5993C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = a1;
  v33 = a3;
  v34 = a7;
  v30 = a2;
  v9 = sub_1A7FABA88();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v31 = &v29 - v11;
  sub_1A7FAB978();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = *(TupleTypeMetadata2 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v17 = (&v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v29 - v18;
  v20 = *(v13 + 16);
  v20(&v29 - v18, a2, TupleTypeMetadata2);
  v21 = *v19;
  v32 = *(TupleTypeMetadata2 + 48);
  v43 = v21;
  swift_getWitnessTable();
  sub_1A7FAB8F8();

  v22 = v41;
  v23 = v42;
  v29 = v40;
  v20(v17, v30, TupleTypeMetadata2);
  v24 = *v17;

  v25 = *(a4 - 8);
  v26 = v17 + *(TupleTypeMetadata2 + 48);
  v27 = v31;
  (*(v25 + 32))(v31, v26, a4);
  (*(v25 + 56))(v27, 0, 1, a4);
  v37 = v29;
  v38 = v22;
  v39 = v23;
  sub_1A7FABAA8();
  v36 = v34;
  swift_getWitnessTable();
  sub_1A7FAB8A8();
  sub_1A7FAB8D8();
  return (*(v25 + 8))(&v19[v32], a4);
}

uint64_t Trie.subscript.getter@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a3;
  v23 = a1;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  v8 = a2[6];
  v7 = a2[7];
  v9 = a2[8];
  v10 = a2[9];
  v28 = a2[2];
  v3 = v28;
  v29 = v4;
  v30 = v5;
  v31 = v6;
  v32 = v8;
  v33 = v7;
  v34 = v9;
  v35 = v10;
  v11 = type metadata accessor for StandardTrieNode(0, &v28);
  v24 = *(v11 - 8);
  v12 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  v28 = v3;
  v29 = v4;
  v30 = v5;
  v31 = v6;
  v32 = v8;
  v33 = v7;
  v34 = v9;
  v35 = v10;
  v15 = type metadata accessor for Trie.RootNode(0, &v28);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v22 - v18;
  (*(v16 + 16))(&v22 - v18, v25, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(v4 - 8) + 56))(v26, 1, 1, v4);
    return (*(v16 + 8))(v19, v15);
  }

  else
  {
    v21 = v24;
    (*(v24 + 32))(v14, v19, v11);
    v27 = v23;
    sub_1A7FAB978();
    swift_getWitnessTable();
    sub_1A7FAB8F8();
    sub_1A7F54C50(v28, v29, v30, v31, v11, v26);
    swift_unknownObjectRelease();
    return (*(v21 + 8))(v14, v11);
  }
}

uint64_t sub_1A7F59EF8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65646F4E746F6F72 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1A7FABBE8();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1A7F59F70()
{
  sub_1A7FABC18();
  MEMORY[0x1AC565C70](0);
  return sub_1A7FABC38();
}

uint64_t sub_1A7F59FB4()
{
  sub_1A7FABC18();
  MEMORY[0x1AC565C70](0);
  return sub_1A7FABC38();
}

uint64_t sub_1A7F5A00C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  v9 = a3[6];
  v10 = a3[7];
  v12 = a3[8];
  v13 = a3[9];
  result = sub_1A7F59EF8(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_1A7F5A058@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void, void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5], a1[6], a1[7], a1[8], a1[9]);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1A7F5A0A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1A7F5A0F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t Trie.encode(to:)(void *a1, void *a2)
{
  v4 = a2[2];
  v3 = a2[3];
  v5 = a2[5];
  v20 = a2[4];
  v21 = v3;
  v6 = a2[7];
  v18 = a2[6];
  v19 = v5;
  v7 = a2[9];
  v16 = a2[8];
  v17 = v6;
  v15 = v7;
  v22 = v4;
  v23 = v3;
  v24 = v20;
  v25 = v5;
  v26 = v18;
  v27 = v6;
  v28 = v16;
  v29 = v7;
  type metadata accessor for Trie.CodingKeys(255, &v22);
  swift_getWitnessTable();
  v8 = sub_1A7FABBD8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A7FABC58();
  v22 = v4;
  v23 = v21;
  v24 = v20;
  v25 = v19;
  v26 = v18;
  v27 = v17;
  v28 = v16;
  v29 = v15;
  type metadata accessor for Trie.RootNode(0, &v22);
  swift_getWitnessTable();
  sub_1A7FABBC8();
  return (*(v9 + 8))(v12, v8);
}

uint64_t Trie.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v44 = a1;
  v45 = a2;
  v36 = a9;
  v46 = a3;
  v47 = a4;
  v48 = a5;
  v49 = a6;
  v50 = a7;
  v51 = a8;
  v42 = a8;
  v52 = a10;
  v17 = type metadata accessor for Trie.RootNode(0, &v45);
  v38 = *(v17 - 8);
  v39 = v17;
  v18 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v40 = &v35 - v19;
  v45 = a2;
  v46 = a3;
  v47 = a4;
  v48 = a5;
  v49 = a6;
  v50 = a7;
  v51 = a8;
  v52 = a10;
  type metadata accessor for Trie.CodingKeys(255, &v45);
  WitnessTable = swift_getWitnessTable();
  v41 = sub_1A7FABB98();
  v37 = *(v41 - 8);
  v20 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v22 = &v35 - v21;
  v45 = a2;
  v46 = a3;
  v47 = a4;
  v48 = a5;
  v49 = a6;
  v50 = a7;
  v51 = v42;
  v52 = a10;
  v23 = v44;
  v24 = type metadata accessor for Trie(0, &v45);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v35 - v27;
  v29 = v23[4];
  __swift_project_boxed_opaque_existential_1(v23, v23[3]);
  v42 = v22;
  v30 = v53;
  sub_1A7FABC48();
  if (!v30)
  {
    WitnessTable = v24;
    v53 = v25;
    v31 = v37;
    v32 = v38;
    v33 = v39;
    swift_getWitnessTable();
    sub_1A7FABB78();
    (*(v31 + 8))(v42, v41);
    (*(v32 + 32))(v28, v40, v33);
    (*(v53 + 32))(v36, v28, WitnessTable);
  }

  return __swift_destroy_boxed_opaque_existential_1(v23);
}

unint64_t sub_1A7F5A764(unsigned __int8 a1)
{
  v3 = MEMORY[0x1AC565C50](*(v1 + 40), a1, 1);

  return sub_1A7F5A808(a1, v3);
}

unint64_t sub_1A7F5A7AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = sub_1A7FAB8E8();

  return sub_1A7F5A878(a1, v9, a2, a3);
}

unint64_t sub_1A7F5A808(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1A7F5A878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a1;
  v24 = a4;
  v6 = *(*(a3 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v23[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v7 + 16);
    v14 = v7 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v25 + 48) + v17 * v12, a3);
      v20 = *(v24 + 8);
      v21 = sub_1A7FAB908();
      (*v18)(v9, a3);
      if (v21)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v23[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t sub_1A7F5AA00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_1A7FAB958())
  {
    sub_1A7FABB38();
    v13 = sub_1A7FABB28();
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC8];
  }

  result = sub_1A7FAB958();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_1A7FAB948())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_1A7FABAC8();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_1A7F5A7AC(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

unint64_t sub_1A7F5ACEC()
{
  result = qword_1EB2DCA58[0];
  if (!qword_1EB2DCA58[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB2DCA50, &qword_1A7FB1840);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2DCA58);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1A7F5AEB0(_OWORD *a1)
{
  v1 = a1[2];
  v5[0] = a1[1];
  v5[1] = v1;
  v2 = a1[4];
  v5[2] = a1[3];
  v5[3] = v2;
  result = type metadata accessor for Trie.RootNode(319, v5);
  if (v4 <= 0x3F)
  {
    v6 = 0;
    *&v5[0] = result;
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A7F5AF44(void *a1)
{
  v2 = a1[3];
  result = sub_1A7FABA88();
  if (v4 <= 0x3F)
  {
    v5 = a1[2];
    v6 = a1[6];
    sub_1A7FAB8A8();
    result = sub_1A7FABA88();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A7F5AFE4(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(*(*(a3 + 24) - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_33:
    if (v6 < 0x7FFFFFFE)
    {
      v19 = *((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      if ((v19 + 1) >= 2)
      {
        return v19;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v18 = (*(v4 + 48))(a1, v5);
      if (v18 >= 2)
      {
        return v18 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

void sub_1A7F5B15C(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  v7 = v6 - 1;
  if (!v6)
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(*(*(a4 + 24) - 8) + 64);
  if (!v6)
  {
    ++v9;
  }

  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 > v8)
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      v17 = a1;
      bzero(a1, v10);
      a1 = v17;
      *v17 = v16;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        *(a1 + v10) = v15;
      }

      else
      {
        *(a1 + v10) = v15;
      }
    }

    else if (v14)
    {
      *(a1 + v10) = v15;
    }

    return;
  }

  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *(a1 + v10) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_40;
    }

    *(a1 + v10) = 0;
LABEL_39:
    if (!a2)
    {
      return;
    }

    goto LABEL_40;
  }

  if (!v14)
  {
    goto LABEL_39;
  }

  *(a1 + v10) = 0;
  if (!a2)
  {
    return;
  }

LABEL_40:
  if (v7 < 0x7FFFFFFE)
  {
    v22 = ((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (a2 > 0x7FFFFFFE)
    {
      *v22 = 0;
      *v22 = a2 - 0x7FFFFFFF;
    }

    else
    {
      *v22 = a2;
    }
  }

  else if (v7 >= a2)
  {
    v23 = *(v5 + 56);

    v23();
  }

  else
  {
    if (v9 <= 3)
    {
      v18 = ~(-1 << (8 * v9));
    }

    else
    {
      v18 = -1;
    }

    if (v9)
    {
      v19 = v18 & (~v7 + a2);
      if (v9 <= 3)
      {
        v20 = v9;
      }

      else
      {
        v20 = 4;
      }

      v21 = a1;
      bzero(a1, v9);
      if (v20 > 2)
      {
        if (v20 == 3)
        {
          *v21 = v19;
          *(v21 + 2) = BYTE2(v19);
        }

        else
        {
          *v21 = v19;
        }
      }

      else if (v20 == 1)
      {
        *v21 = v19;
      }

      else
      {
        *v21 = v19;
      }
    }
  }
}

uint64_t sub_1A7F5B3B8(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = *(a1 + 64);
  v3 = *(a1 + 72);
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  v9 = v7;
  v10 = *(a1 + 40);
  v11 = v1;
  v12 = v2;
  v13 = v3;
  result = type metadata accessor for StandardTrieNode(319, &v8);
  if (v5 <= 0x3F)
  {
    v14 = result;
    v8 = v7;
    *&v9 = v1;
    *(&v9 + 1) = v2;
    *&v10 = v3;
    result = type metadata accessor for StringTrieNode(319, &v8);
    if (v6 <= 0x3F)
    {
      v15 = result;
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A7F5B478(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 24) - 8);
  if (*(v3 + 84))
  {
    v4 = *(v3 + 64);
  }

  else
  {
    v4 = *(v3 + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v5 = (v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (a2 < 0xFF)
  {
    goto LABEL_28;
  }

  v6 = v5 + 9;
  if ((v5 + 9) <= 3)
  {
    v7 = ((a2 + 1) >> 8) + 1;
  }

  else
  {
    v7 = 2;
  }

  if (v7 >= 0x10000)
  {
    v8 = 4;
  }

  else
  {
    v8 = 2;
  }

  if (v7 < 0x100)
  {
    v8 = 1;
  }

  if (v7 >= 2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v10 = *&a1[v6];
      if (*&a1[v6])
      {
        goto LABEL_24;
      }
    }

    else
    {
      v10 = *&a1[v6];
      if (v10)
      {
        goto LABEL_24;
      }
    }

LABEL_28:
    v14 = a1[v5 + 8];
    if (v14 >= 2)
    {
      return (v14 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v9)
  {
    goto LABEL_28;
  }

  v10 = a1[v6];
  if (!a1[v6])
  {
    goto LABEL_28;
  }

LABEL_24:
  v12 = (v10 - 1) << (8 * v6);
  if (v6 <= 3)
  {
    v13 = *a1;
  }

  else
  {
    v12 = 0;
    v13 = *a1;
  }

  return (v13 | v12) + 255;
}

void sub_1A7F5B590(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  if (*(v5 + 84))
  {
    v6 = *(v5 + 64);
  }

  else
  {
    v6 = *(v5 + 64) + 1;
  }

  v7 = (v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v7 + 9;
  if (a3 < 0xFF)
  {
    v11 = 0;
    if (a2 > 0xFE)
    {
      goto LABEL_17;
    }

LABEL_25:
    if (v11 > 1)
    {
      if (v11 != 2)
      {
        *&a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_35;
      }

      *&a1[v8] = 0;
    }

    else if (v11)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

LABEL_35:
      a1[v7 + 8] = -a2;
      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  if (v8 <= 3)
  {
    v9 = ((a3 + 1) >> 8) + 1;
  }

  else
  {
    v9 = 2;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (a2 <= 0xFE)
  {
    goto LABEL_25;
  }

LABEL_17:
  v12 = a2 - 255;
  v13 = (a2 - 255) >> 8;
  bzero(a1, v7 + 9);
  if (v8 <= 3)
  {
    v14 = v13 + 1;
  }

  else
  {
    v14 = 1;
  }

  if (v8 <= 3)
  {
    *a1 = v12;
    if (v11 > 1)
    {
LABEL_22:
      if (v11 == 2)
      {
        *&a1[v8] = v14;
      }

      else
      {
        *&a1[v8] = v14;
      }

      return;
    }
  }

  else
  {
    *a1 = v12;
    if (v11 > 1)
    {
      goto LABEL_22;
    }
  }

  if (v11)
  {
    a1[v8] = v14;
  }
}

uint64_t sub_1A7F5B728(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_1A7FABA88();
  if (v4 <= 0x3F)
  {
    v10 = 0;
    v12 = result;
    v5 = *(a1 + 40);
    v7[0] = MEMORY[0x1E69E7230];
    v7[1] = v2;
    v7[2] = MEMORY[0x1E69E7250];
    v7[3] = MEMORY[0x1E69E7238];
    v7[4] = MEMORY[0x1E69E7240];
    v8 = *(a1 + 24);
    v9 = v5;
    type metadata accessor for StandardTrieNode(255, v7);
    sub_1A7FAB8A8();
    result = sub_1A7FABA88();
    if (v6 <= 0x3F)
    {
      v11 = 0;
      v13 = result;
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A7F5B81C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_33:
    if (v6 < 0x7FFFFFFE)
    {
      v19 = *((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      if ((v19 + 1) >= 2)
      {
        return v19;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v18 = (*(v4 + 48))(a1, v5);
      if (v18 >= 2)
      {
        return v18 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

void sub_1A7F5B994(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = v6 - 1;
  if (!v6)
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  if (!v6)
  {
    ++v9;
  }

  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 > v8)
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      v17 = a1;
      bzero(a1, v10);
      a1 = v17;
      *v17 = v16;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        *(a1 + v10) = v15;
      }

      else
      {
        *(a1 + v10) = v15;
      }
    }

    else if (v14)
    {
      *(a1 + v10) = v15;
    }

    return;
  }

  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *(a1 + v10) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_40;
    }

    *(a1 + v10) = 0;
LABEL_39:
    if (!a2)
    {
      return;
    }

    goto LABEL_40;
  }

  if (!v14)
  {
    goto LABEL_39;
  }

  *(a1 + v10) = 0;
  if (!a2)
  {
    return;
  }

LABEL_40:
  if (v7 < 0x7FFFFFFE)
  {
    v22 = ((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (a2 > 0x7FFFFFFE)
    {
      *v22 = 0;
      *v22 = a2 - 0x7FFFFFFF;
    }

    else
    {
      *v22 = a2;
    }
  }

  else if (v7 >= a2)
  {
    v23 = *(v5 + 56);

    v23();
  }

  else
  {
    if (v9 <= 3)
    {
      v18 = ~(-1 << (8 * v9));
    }

    else
    {
      v18 = -1;
    }

    if (v9)
    {
      v19 = v18 & (~v7 + a2);
      if (v9 <= 3)
      {
        v20 = v9;
      }

      else
      {
        v20 = 4;
      }

      v21 = a1;
      bzero(a1, v9);
      if (v20 > 2)
      {
        if (v20 == 3)
        {
          *v21 = v19;
          *(v21 + 2) = BYTE2(v19);
        }

        else
        {
          *v21 = v19;
        }
      }

      else if (v20 == 1)
      {
        *v21 = v19;
      }

      else
      {
        *v21 = v19;
      }
    }
  }
}

uint64_t sub_1A7F5BD58()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[9];
  return sub_1A7F5675C(v0[2], v0[3]);
}

uint64_t sub_1A7F5BDAC()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  return sub_1A7F544D4(v0[2]);
}

uint64_t sub_1A7F5BDCC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1A7F5BE5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1A7F5BF0C(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *sub_1A7F5BF5C(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

id corruptionError(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = objc_opt_new();
  v6 = v5;
  if (v3)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"The lazy plist archive is corrupt: %@", v3];
    [v6 setObject:v7 forKeyedSubscript:*MEMORY[0x1E696A578]];
  }

  else
  {
    [v5 setObject:@"The lazy plist archive is corrupt." forKeyedSubscript:*MEMORY[0x1E696A578]];
  }

  [v6 setObject:v3 forKeyedSubscript:*MEMORY[0x1E696A588]];

  [v6 setObject:v4 forKeyedSubscript:*MEMORY[0x1E696A368]];
  v8 = objc_alloc(MEMORY[0x1E696ABC0]);
  v9 = [v6 copy];
  v10 = [v8 initWithDomain:@"_PASLazyPlistErrorDomain" code:4 userInfo:v9];

  return v10;
}

void sub_1A7F5F9F8(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 192), 8);
  _Block_object_dispose((v1 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A7F60C18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1A7F60E7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1A7F613F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id notPLPlistError(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = objc_opt_new();
  v6 = v5;
  if (v3)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"The file is not a lazy plist archive: %@", v3];
    [v6 setObject:v7 forKeyedSubscript:*MEMORY[0x1E696A578]];
  }

  else
  {
    [v5 setObject:@"The file is not a lazy plist archive." forKeyedSubscript:*MEMORY[0x1E696A578]];
  }

  [v6 setObject:v3 forKeyedSubscript:*MEMORY[0x1E696A588]];

  [v6 setObject:v4 forKeyedSubscript:*MEMORY[0x1E696A368]];
  v8 = objc_alloc(MEMORY[0x1E696ABC0]);
  v9 = [v6 copy];
  v10 = [v8 initWithDomain:@"_PASLazyPlistErrorDomain" code:2 userInfo:v9];

  return v10;
}

void sub_1A7F62714(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 184), 8);
  _Block_object_dispose((v1 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_1A7F62A8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _PASEnumerateSimpleLinesInString(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  if (![v5 length])
  {
    goto LABEL_38;
  }

  v7 = v5;
  v8 = objc_opt_self();

  if (!v8)
  {
    goto LABEL_37;
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  *buffer = 0u;
  v36 = 0u;
  Length = CFStringGetLength(v7);
  theString = v7;
  v46 = 0;
  v47 = Length;
  CharactersPtr = CFStringGetCharactersPtr(v7);
  CStringPtr = 0;
  v44 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(v7, 0x600u);
  }

  v48 = 0;
  v49 = 0;
  v45 = CStringPtr;
  if (Length <= 0)
  {
LABEL_37:

    goto LABEL_38;
  }

  v32 = v7;
  v33 = v5;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v34 = v6;
  v16 = 64;
  do
  {
    if (v15 >= 4)
    {
      v17 = 4;
    }

    else
    {
      v17 = v15;
    }

    v18 = v47;
    if (v47 <= v15)
    {
      ++v14;
      goto LABEL_22;
    }

    if (v44)
    {
      v19 = &v44[v46];
LABEL_13:
      v20 = v19[v15];
      goto LABEL_17;
    }

    if (!v45)
    {
      v25 = v48;
      if (v49 <= v15 || v48 > v15)
      {
        v27 = v17 + v12;
        v28 = v16 - v17;
        v29 = v15 - v17;
        v30 = v29 + 64;
        if (v29 + 64 >= v47)
        {
          v30 = v47;
        }

        v48 = v29;
        v49 = v30;
        if (v47 >= v28)
        {
          v18 = v28;
        }

        v50.location = v29 + v46;
        v50.length = v18 + v27;
        CFStringGetCharacters(theString, v50, buffer);
        v25 = v48;
      }

      v19 = &buffer[-v25];
      goto LABEL_13;
    }

    v20 = v45[v46 + v15];
LABEL_17:
    ++v14;
    if (v20 == 10)
    {
      if ((a3 & 1) != 0 || v14 - v13 >= 2)
      {
        v21 = a3;
        v22 = objc_autoreleasePoolPush();
        v23 = v34[2](v34, v13, v14 - v13);
        v24 = v22;
        a3 = v21;
        objc_autoreleasePoolPop(v24);
        v13 = v14;
        if ((v23 & 1) == 0)
        {
          v7 = v32;
          v5 = v33;
          v6 = v34;
          goto LABEL_37;
        }
      }

      else
      {
        v13 = v14;
      }
    }

LABEL_22:
    ++v15;
    --v12;
    ++v16;
  }

  while (Length != v15);

  v5 = v33;
  v6 = v34;
  if (v14 > v13)
  {
    v31 = objc_autoreleasePoolPush();
    v34[2](v34, v13, v14 - v13);
    v6 = v34;
    objc_autoreleasePoolPop(v31);
  }

LABEL_38:
}

void _PASEnumerateSimpleLinesInUTF8Data(void *a1, void *a2, char a3)
{
  v18 = a1;
  v5 = a2;
  if (![v18 length])
  {
    goto LABEL_14;
  }

  v6 = v18;
  v7 = [v18 bytes];
  v8 = [v18 length];
  if (!v8)
  {
    goto LABEL_14;
  }

  v9 = v8;
  v10 = 0;
  v11 = 0;
  do
  {
    v12 = v11 + 1;
    if (*(v7 + v11) != 10)
    {
      v13 = v10;
LABEL_10:
      v10 = v13;
      goto LABEL_11;
    }

    v13 = v11 + 1;
    v14 = v11 - v10 + 1;
    if ((a3 & 1) == 0 && v14 < 2)
    {
      goto LABEL_10;
    }

    v15 = objc_autoreleasePoolPush();
    v16 = v5[2](v5, v10, v14);
    objc_autoreleasePoolPop(v15);
    if (v16)
    {
      goto LABEL_10;
    }

LABEL_11:
    v11 = v12;
  }

  while (v9 != v12);
  if (v9 > v10)
  {
    v17 = objc_autoreleasePoolPush();
    v5[2](v5, v10, v9 - v10);
    objc_autoreleasePoolPop(v17);
  }

LABEL_14:
}

id _PASBytesToHex(char *a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = a2;
    v3 = a1;
    v4 = (2 * a2) | 1;
    memptr = 0;
    v22 = 0;
    if (v4 > 0x400)
    {
      v18 = malloc_type_posix_memalign(&memptr, 8uLL, v4, 0xB02EA422uLL);
      LOBYTE(v22) = 0;
      if (v18)
      {
        v19 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA18] reason:@"malloc failed" userInfo:0];
        objc_exception_throw(v19);
      }

      v5 = memptr;
    }

    else
    {
      MEMORY[0x1EEE9AC00](a1);
      v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v5, v4);
      memptr = v5;
      LOBYTE(v22) = 1;
    }

    v6 = 2 * v2;
    v7 = v22;
    if (v2)
    {
      v8 = v5 + 1;
      do
      {
        if (*v3 >= 0xA0u)
        {
          v9 = (*v3 >> 4) + 87;
        }

        else
        {
          v9 = (*v3 >> 4) | 0x30;
        }

        *(v8 - 1) = v9;
        v10 = *v3++;
        v11 = v10 & 0xF;
        v12 = v10 & 0xF | 0x30;
        v13 = v11 + 87;
        if (v11 < 0xA)
        {
          v13 = v12;
        }

        *v8 = v13;
        v8 += 2;
        --v2;
      }

      while (v2);
    }

    v5[v6] = 0;
    v14 = objc_autoreleasePoolPush();
    v15 = [MEMORY[0x1E696AEC0] _pas_stringWithConsumedAllocaDescrNoCopy:v5 bufferSize:v7 encoding:v4 nullTerminated:1 isExternalRepresentation:{1, 0}];
    objc_autoreleasePoolPop(v14);
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

_BYTE *_PASHexToBytes(_BYTE *result, unint64_t a2, size_t *a3)
{
  if (result)
  {
    v4 = result;
    v5 = a2 >> 1;
    if (a3)
    {
      *a3 = v5;
    }

    result = malloc_type_malloc(v5, 0x5F9CEFA9uLL);
    if (!result)
    {
      v16 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA18] reason:@"malloc failed" userInfo:0];
      objc_exception_throw(v16);
    }

    if (a2)
    {
      v6 = 0;
      v7 = v4 + 1;
      do
      {
        v8 = *(v7 - 1);
        if (v8 >= 58)
        {
          v9 = 9;
        }

        else
        {
          v9 = 0;
        }

        v10 = v9 + v8;
        v12 = *v7;
        v7 += 2;
        v11 = v12;
        v13 = v12;
        if (v12 >= 0x47)
        {
          v14 = -87;
        }

        else
        {
          v14 = -55;
        }

        if (v13 >= 58)
        {
          v15 = v14;
        }

        else
        {
          v15 = -48;
        }

        result[v6++] = v15 + v11 + 16 * v10;
      }

      while (((a2 - 1) >> 1) + 1 != v6);
    }
  }

  return result;
}

uint64_t _PASIsAllDigits(void *a1)
{
  v1 = a1;
  v2 = objc_opt_self();

  if (v2)
  {
    memset(v21, 0, sizeof(v21));
    Length = CFStringGetLength(v1);
    theString = v1;
    v25 = 0;
    v26 = Length;
    CharactersPtr = CFStringGetCharactersPtr(v1);
    CStringPtr = 0;
    v23 = CharactersPtr;
    if (!CharactersPtr)
    {
      CStringPtr = CFStringGetCStringPtr(v1, 0x600u);
    }

    v27 = 0;
    v28 = 0;
    v24 = CStringPtr;
    if (Length >= 1)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 64;
      while (1)
      {
        if (v8 >= 4)
        {
          v10 = 4;
        }

        else
        {
          v10 = v8;
        }

        v11 = v26;
        if (v26 <= v8)
        {
LABEL_29:
          v19 = 0;
          goto LABEL_30;
        }

        if (v23)
        {
          break;
        }

        if (!v24)
        {
          if (v28 <= v8 || v7 > v8)
          {
            v15 = v10 + v6;
            v16 = v9 - v10;
            v17 = v8 - v10;
            v18 = v17 + 64;
            if (v17 + 64 >= v26)
            {
              v18 = v26;
            }

            v27 = v17;
            v28 = v18;
            if (v26 >= v16)
            {
              v11 = v16;
            }

            v29.location = v17 + v25;
            v29.length = v11 + v15;
            CFStringGetCharacters(theString, v29, v21);
            v7 = v27;
          }

          v12 = v21 - v7;
          goto LABEL_12;
        }

        v13 = v24[v25 + v8];
LABEL_15:
        if ((v13 - 48) >= 0xAu)
        {
          goto LABEL_29;
        }

        ++v8;
        --v6;
        ++v9;
        if (Length == v8)
        {
          goto LABEL_28;
        }
      }

      v12 = &v23[v25];
LABEL_12:
      v13 = v12[v8];
      goto LABEL_15;
    }
  }

LABEL_28:
  v19 = 1;
LABEL_30:

  return v19;
}

uint64_t _PASIsAllUppercase(void *a1)
{
  v1 = a1;
  Predefined = CFCharacterSetGetPredefined(kCFCharacterSetLowercaseLetter);
  v3 = v1;
  v4 = objc_opt_self();

  if (v4)
  {
    memset(v23, 0, sizeof(v23));
    Length = CFStringGetLength(v3);
    theString = v3;
    v27 = 0;
    v28 = Length;
    CharactersPtr = CFStringGetCharactersPtr(v3);
    CStringPtr = 0;
    v25 = CharactersPtr;
    if (!CharactersPtr)
    {
      CStringPtr = CFStringGetCStringPtr(v3, 0x600u);
    }

    v29 = 0;
    v30 = 0;
    v26 = CStringPtr;
    if (Length >= 1)
    {
      v8 = 0;
      v9 = 0;
      v10 = 64;
      do
      {
        if (v9 >= 4)
        {
          v11 = 4;
        }

        else
        {
          v11 = v9;
        }

        v12 = v28;
        if (v28 <= v9)
        {
          v14 = 0;
        }

        else
        {
          if (v25)
          {
            v13 = &v25[v27];
LABEL_12:
            v14 = v13[v9];
            goto LABEL_14;
          }

          if (!v26)
          {
            v15 = v29;
            if (v30 <= v9 || v29 > v9)
            {
              v17 = v11 + v8;
              v18 = v10 - v11;
              v19 = v9 - v11;
              v20 = v19 + 64;
              if (v19 + 64 >= v28)
              {
                v20 = v28;
              }

              v29 = v19;
              v30 = v20;
              if (v28 >= v18)
              {
                v12 = v18;
              }

              v31.location = v19 + v27;
              v31.length = v12 + v17;
              CFStringGetCharacters(theString, v31, v23);
              v15 = v29;
            }

            v13 = v23 - v15;
            goto LABEL_12;
          }

          v14 = v26[v27 + v9];
        }

LABEL_14:
        if (CFCharacterSetIsCharacterMember(Predefined, v14))
        {
          v21 = 0;
          goto LABEL_30;
        }

        ++v9;
        --v8;
        ++v10;
      }

      while (Length != v9);
    }
  }

  v21 = 1;
LABEL_30:

  return v21;
}

uint64_t _PASLooksLikeNumber(void *a1)
{
  v1 = a1;
  v2 = objc_opt_self();

  if (v2)
  {
    memset(v21, 0, sizeof(v21));
    Length = CFStringGetLength(v1);
    theString = v1;
    v25 = 0;
    v26 = Length;
    CharactersPtr = CFStringGetCharactersPtr(v1);
    CStringPtr = 0;
    v23 = CharactersPtr;
    if (!CharactersPtr)
    {
      CStringPtr = CFStringGetCStringPtr(v1, 0x600u);
    }

    v27 = 0;
    v28 = 0;
    v24 = CStringPtr;
    if (Length >= 1)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 64;
      while (1)
      {
        if (v8 >= 4)
        {
          v11 = 4;
        }

        else
        {
          v11 = v8;
        }

        v12 = v26;
        if (v26 <= v8)
        {
          break;
        }

        if (v23)
        {
          v13 = &v23[v25];
        }

        else
        {
          if (v24)
          {
            v14 = v24[v25 + v8];
            goto LABEL_15;
          }

          if (v28 <= v8 || v7 > v8)
          {
            v16 = v11 + v6;
            v17 = v10 - v11;
            v18 = v8 - v11;
            v19 = v18 + 64;
            if (v18 + 64 >= v26)
            {
              v19 = v26;
            }

            v27 = v18;
            v28 = v19;
            if (v26 >= v17)
            {
              v12 = v17;
            }

            v29.location = v18 + v25;
            v29.length = v12 + v16;
            CFStringGetCharacters(theString, v29, v21);
            v7 = v27;
          }

          v13 = v21 - v7;
        }

        v14 = v13[v8];
LABEL_15:
        if (v14 - 48 >= 0xA)
        {
          if (v14 - 44 > 2)
          {
            break;
          }
        }

        else
        {
          v9 = 1;
        }

        ++v8;
        --v6;
        ++v10;
        if (Length == v8)
        {
          goto LABEL_31;
        }
      }
    }
  }

  v9 = 0;
LABEL_31:

  return v9 & 1;
}

uint64_t _PASInsensitiveStringContainsString(void *a1, void *a2)
{
  if (!a1 || !a2)
  {
    return 0;
  }

  v3 = a2;
  v4 = _PASNormalizeUnicodeString(a1, 1);
  v5 = _PASNormalizeUnicodeString(v3, 1);

  v6 = [v4 containsString:v5];
  return v6;
}

id _PASNormalizeUnicodeString(void *a1, int a2)
{
  v3 = a1;
  v4 = fastNormalizeUnicodeString(v3);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = _PASSimpleICUTransform(@"[^…] NFKD Latin-ASCII; [[:Nonspacing Mark:]&[:Zinh:]] Remove; NFC; Lower", v3, a2);;
  }

  v7 = v6;

  return v7;
}

__CFString *fastNormalizeUnicodeString(void *a1)
{
  v79 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (CFStringGetFastestEncoding(v1) == 1536)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = [(__CFString *)v1 lowercaseString];
    v4 = v2;
LABEL_3:
    objc_autoreleasePoolPop(v4);
    goto LABEL_40;
  }

  v5 = [(__CFString *)v1 length];
  v6 = v1;
  v7 = objc_opt_self();

  if (!v7)
  {
    goto LABEL_38;
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v65 = 0u;
  buffer = 0u;
  Length = CFStringGetLength(v6);
  v72 = v6;
  v75 = 0;
  v76 = Length;
  CharactersPtr = CFStringGetCharactersPtr(v6);
  CStringPtr = 0;
  v73 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(v6, 0x600u);
  }

  v77 = 0;
  v78 = 0;
  v74 = CStringPtr;
  if (Length <= 0)
  {
LABEL_38:

    goto LABEL_39;
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 64;
  while (1)
  {
    v16 = v14 >= 4 ? 4 : v14;
    v17 = v76;
    if (v76 > v14)
    {
      break;
    }

LABEL_35:
    ++v14;
    --v11;
    ++v15;
    if (Length == v14)
    {

      if (v13)
      {
        v28 = 2 * v5;
        buffer = 0uLL;
        if (((2 * v5) | 1uLL) > 0x400)
        {
          v60 = malloc_type_posix_memalign(&buffer, 8uLL, 2 * v5, 0x9A42C891uLL);
          BYTE8(buffer) = 0;
          if (v60)
          {
            v61 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA18] reason:@"malloc failed" userInfo:0];
            objc_exception_throw(v61);
          }

          v30 = buffer;
        }

        else
        {
          MEMORY[0x1EEE9AC00](v27);
          v30 = &v62 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
          bzero(v30, v29);
          *&buffer = v30;
          BYTE8(buffer) = 1;
        }

        v31 = *(&buffer + 1);
        v32 = v6;
        v33 = objc_opt_self();

        if (v33)
        {
          v63 = v28;
          v70 = 0u;
          v71 = 0u;
          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          v65 = 0u;
          buffer = 0u;
          v34 = CFStringGetLength(v32);
          v72 = v32;
          v75 = 0;
          v76 = v34;
          v35 = CFStringGetCharactersPtr(v32);
          v36 = 0;
          v73 = v35;
          if (!v35)
          {
            v36 = CFStringGetCStringPtr(v32, 0x600u);
          }

          v77 = 0;
          v78 = 0;
          v74 = v36;
          if (v34 >= 1)
          {
            v37 = 0;
            v38 = 0;
            v39 = 0;
            v40 = 64;
            while (1)
            {
              v41 = v38 >= 4 ? 4 : v38;
              v42 = v76;
              if (v76 > v38)
              {
                break;
              }

              v44 = 0;
LABEL_59:
              *&v30[2 * v39] = v44;
LABEL_60:
              ++v39;
LABEL_61:
              ++v38;
              --v37;
              ++v40;
              if (v34 == v38)
              {
                goto LABEL_150;
              }
            }

            if (v73)
            {
              v43 = &v73[v75];
            }

            else
            {
              if (v74)
              {
                v44 = v74[v75 + v38];
                goto LABEL_65;
              }

              v45 = v77;
              if (v78 <= v38 || v77 > v38)
              {
                v47 = v41 + v37;
                v48 = v40 - v41;
                v49 = v38 - v41;
                v50 = v49 + 64;
                if (v49 + 64 >= v76)
                {
                  v50 = v76;
                }

                v77 = v49;
                v78 = v50;
                if (v76 >= v48)
                {
                  v42 = v48;
                }

                v82.location = v49 + v75;
                v82.length = v42 + v47;
                CFStringGetCharacters(v72, v82, &buffer);
                v45 = v77;
              }

              v43 = &buffer - v45;
            }

            v44 = v43[v38];
LABEL_65:
            switch(v44)
            {
              case 65:
              case 170:
              case 192:
              case 193:
              case 194:
              case 195:
              case 196:
              case 197:
              case 224:
              case 225:
              case 226:
              case 227:
              case 228:
              case 229:
                v44 = 97;
                goto LABEL_59;
              case 66:
                v44 = 98;
                goto LABEL_59;
              case 67:
              case 199:
              case 231:
                v44 = 99;
                goto LABEL_59;
              case 68:
              case 208:
              case 240:
                v44 = 100;
                goto LABEL_59;
              case 69:
              case 200:
              case 201:
              case 202:
              case 203:
              case 232:
              case 233:
              case 234:
              case 235:
                v44 = 101;
                goto LABEL_59;
              case 70:
                v44 = 102;
                goto LABEL_59;
              case 71:
                v44 = 103;
                goto LABEL_59;
              case 72:
                v44 = 104;
                goto LABEL_59;
              case 73:
              case 204:
              case 205:
              case 206:
              case 207:
              case 236:
              case 237:
              case 238:
              case 239:
                v44 = 105;
                goto LABEL_59;
              case 74:
                v44 = 106;
                goto LABEL_59;
              case 75:
                v44 = 107;
                goto LABEL_59;
              case 76:
                v44 = 108;
                goto LABEL_59;
              case 77:
                v44 = 109;
                goto LABEL_59;
              case 78:
              case 209:
              case 241:
                v44 = 110;
                goto LABEL_59;
              case 79:
              case 186:
              case 210:
              case 211:
              case 212:
              case 213:
              case 214:
              case 216:
              case 242:
              case 243:
              case 244:
              case 245:
              case 246:
              case 248:
                v44 = 111;
                goto LABEL_59;
              case 80:
                v44 = 112;
                goto LABEL_59;
              case 81:
                v44 = 113;
                goto LABEL_59;
              case 82:
                v44 = 114;
                goto LABEL_59;
              case 83:
                v44 = 115;
                goto LABEL_59;
              case 84:
                v44 = 116;
                goto LABEL_59;
              case 85:
              case 217:
              case 218:
              case 219:
              case 220:
              case 249:
              case 250:
              case 251:
              case 252:
                v44 = 117;
                goto LABEL_59;
              case 86:
                v44 = 118;
                goto LABEL_59;
              case 87:
                v44 = 119;
                goto LABEL_59;
              case 88:
                v44 = 120;
                goto LABEL_59;
              case 89:
              case 221:
              case 253:
              case 255:
                v44 = 121;
                goto LABEL_59;
              case 90:
                v44 = 122;
                goto LABEL_59;
              case 91:
              case 92:
              case 93:
              case 94:
              case 95:
              case 96:
              case 97:
              case 98:
              case 99:
              case 100:
              case 101:
              case 102:
              case 103:
              case 104:
              case 105:
              case 106:
              case 107:
              case 108:
              case 109:
              case 110:
              case 111:
              case 112:
              case 113:
              case 114:
              case 115:
              case 116:
              case 117:
              case 118:
              case 119:
              case 120:
              case 121:
              case 122:
              case 123:
              case 124:
              case 125:
              case 126:
              case 127:
              case 128:
              case 129:
              case 130:
              case 131:
              case 132:
              case 133:
              case 134:
              case 135:
              case 136:
              case 137:
              case 138:
              case 139:
              case 140:
              case 141:
              case 142:
              case 143:
              case 144:
              case 145:
              case 146:
              case 147:
              case 148:
              case 149:
              case 150:
              case 151:
              case 152:
              case 153:
              case 154:
              case 155:
              case 156:
              case 157:
              case 158:
              case 159:
              case 162:
              case 163:
              case 164:
              case 165:
              case 166:
              case 167:
              case 172:
              case 176:
              case 182:
              case 183:
                goto LABEL_59;
              case 160:
              case 168:
              case 175:
              case 180:
              case 184:
LABEL_68:
                *&v30[2 * v39] = 32;
                goto LABEL_60;
              case 161:
                v44 = 33;
                goto LABEL_59;
              case 169:
                v53 = &v30[2 * v39];
                v55 = 6488104;
                goto LABEL_113;
              case 171:
                v51 = 2 * v39;
                v52 = 3932220;
                goto LABEL_147;
              case 173:
LABEL_83:
                v44 = 45;
                goto LABEL_59;
              case 174:
                v53 = &v30[2 * v39];
                v55 = 7471144;
LABEL_113:
                *v53 = v55;
                v39 += 3;
                v54 = 41;
                goto LABEL_140;
              case 177:
                v53 = &v30[2 * v39];
                *v53 = 3080235;
                v39 += 3;
                v54 = 45;
                goto LABEL_140;
              case 178:
                v44 = 50;
                goto LABEL_59;
              case 179:
                v44 = 51;
                goto LABEL_59;
              case 181:
                v44 = 956;
                goto LABEL_59;
              case 185:
                v44 = 49;
                goto LABEL_59;
              case 187:
                v51 = 2 * v39;
                v52 = 4063294;
                goto LABEL_147;
              case 188:
                v53 = &v30[2 * v39];
                v56 = 49;
                goto LABEL_125;
              case 189:
                v53 = &v30[2 * v39];
                *v53 = 3080241;
                v39 += 3;
                v54 = 50;
                goto LABEL_140;
              case 190:
                v53 = &v30[2 * v39];
                v56 = 51;
LABEL_125:
                *v53 = v56 | 0x2F0000;
                v39 += 3;
                v54 = 52;
LABEL_140:
                *(v53 + 2) = v54;
                goto LABEL_61;
              case 191:
                v44 = 63;
                goto LABEL_59;
              case 198:
              case 230:
                v51 = 2 * v39;
                v52 = 6619233;
                goto LABEL_147;
              case 215:
LABEL_92:
                v44 = 42;
                goto LABEL_59;
              case 222:
              case 254:
                v51 = 2 * v39;
                v52 = 6815860;
                goto LABEL_147;
              case 223:
                v51 = 2 * v39;
                v52 = 7536755;
LABEL_147:
                *&v30[v51] = v52;
                v39 += 2;
                goto LABEL_61;
              case 247:
LABEL_93:
                v44 = 47;
                goto LABEL_59;
              default:
                switch(v44)
                {
                  case 8192:
                  case 8193:
                  case 8194:
                  case 8195:
                  case 8196:
                  case 8197:
                  case 8198:
                  case 8199:
                  case 8200:
                  case 8201:
                  case 8202:
                  case 8215:
                  case 8239:
                  case 8254:
                  case 8287:
                    goto LABEL_68;
                  case 8208:
                  case 8209:
                  case 8210:
                  case 8211:
                  case 8212:
                  case 8213:
                    goto LABEL_83;
                  case 8214:
                    v51 = 2 * v39;
                    v52 = 8126588;
                    goto LABEL_147;
                  case 8216:
                  case 8217:
                  case 8219:
                  case 8242:
                    v44 = 39;
                    goto LABEL_59;
                  case 8218:
                    v44 = 44;
                    goto LABEL_59;
                  case 8220:
                  case 8221:
                  case 8223:
                    v44 = 34;
                    goto LABEL_59;
                  case 8222:
                    v51 = 2 * v39;
                    v52 = 2883628;
                    goto LABEL_147;
                  case 8228:
                    v44 = 46;
                    goto LABEL_59;
                  case 8229:
                    v51 = 2 * v39;
                    v52 = 3014702;
                    goto LABEL_147;
                  case 8243:
                    v51 = 2 * v39;
                    v52 = 2555943;
                    goto LABEL_147;
                  case 8244:
                    v53 = &v30[2 * v39];
                    *v53 = 2555943;
                    v39 += 3;
                    v54 = 39;
                    goto LABEL_140;
                  case 8246:
                    v51 = 2 * v39;
                    v52 = 540352565;
                    goto LABEL_147;
                  case 8247:
                    v53 = &v30[2 * v39];
                    *v53 = 540352565;
                    v39 += 3;
                    v54 = 8245;
                    goto LABEL_140;
                  case 8249:
                    v44 = 60;
                    goto LABEL_59;
                  case 8250:
                    v44 = 62;
                    goto LABEL_59;
                  case 8252:
                    v51 = 2 * v39;
                    v57 = 33;
                    goto LABEL_146;
                  case 8260:
                    goto LABEL_93;
                  case 8261:
                    v44 = 91;
                    goto LABEL_59;
                  case 8262:
                    v44 = 93;
                    goto LABEL_59;
                  case 8263:
                    v51 = 2 * v39;
                    v52 = 4128831;
                    goto LABEL_147;
                  case 8264:
                    v51 = 2 * v39;
                    v57 = 63;
LABEL_146:
                    v52 = v57 | 0x210000;
                    goto LABEL_147;
                  case 8265:
                    v51 = 2 * v39;
                    v52 = 4128801;
                    goto LABEL_147;
                  case 8270:
                    goto LABEL_92;
                  case 8279:
                    v58 = 2 * v39;
                    v39 += 4;
                    *&v30[v58] = 0x27002700270027;
                    goto LABEL_61;
                  default:
                    goto LABEL_59;
                }
            }
          }

LABEL_150:
          v28 = v63;
        }

        v59 = objc_autoreleasePoolPush();
        v3 = [MEMORY[0x1E696AEC0] _pas_stringWithConsumedAllocaDescrNoCopy:v30 bufferSize:v31 encoding:v28 nullTerminated:2483028224 isExternalRepresentation:{0, 0}];
        v4 = v59;
        goto LABEL_3;
      }

LABEL_39:
      v3 = v6;
      goto LABEL_40;
    }
  }

  if (v73)
  {
    v18 = &v73[v75];
  }

  else
  {
    if (v74)
    {
      v19 = v74[v75 + v14];
      goto LABEL_18;
    }

    if (v78 <= v14 || v12 > v14)
    {
      v21 = v16 + v11;
      v22 = v15 - v16;
      v23 = v14 - v16;
      v24 = v23 + 64;
      if (v23 + 64 >= v76)
      {
        v24 = v76;
      }

      v77 = v23;
      v78 = v24;
      if (v76 >= v22)
      {
        v17 = v22;
      }

      v81.location = v23 + v75;
      v81.length = v17 + v21;
      CFStringGetCharacters(v72, v81, &buffer);
      v12 = v77;
    }

    v18 = &buffer - v12;
  }

  v19 = v18[v14];
LABEL_18:
  if (v19 < 0x100u || (v19 - 0x2000) <= 0x6Fu)
  {
    switch(v19)
    {
      case 0x41u:
      case 0x42u:
      case 0x43u:
      case 0x44u:
      case 0x45u:
      case 0x46u:
      case 0x47u:
      case 0x48u:
      case 0x49u:
      case 0x4Au:
      case 0x4Bu:
      case 0x4Cu:
      case 0x4Du:
      case 0x4Eu:
      case 0x4Fu:
      case 0x50u:
      case 0x51u:
      case 0x52u:
      case 0x53u:
      case 0x54u:
      case 0x55u:
      case 0x56u:
      case 0x57u:
      case 0x58u:
      case 0x59u:
      case 0x5Au:
      case 0xA0u:
      case 0xA1u:
      case 0xA8u:
      case 0xAAu:
      case 0xADu:
      case 0xAFu:
      case 0xB2u:
      case 0xB3u:
      case 0xB4u:
      case 0xB5u:
      case 0xB8u:
      case 0xB9u:
      case 0xBAu:
      case 0xBFu:
      case 0xC0u:
      case 0xC1u:
      case 0xC2u:
      case 0xC3u:
      case 0xC4u:
      case 0xC5u:
      case 0xC7u:
      case 0xC8u:
      case 0xC9u:
      case 0xCAu:
      case 0xCBu:
      case 0xCCu:
      case 0xCDu:
      case 0xCEu:
      case 0xCFu:
      case 0xD0u:
      case 0xD1u:
      case 0xD2u:
      case 0xD3u:
      case 0xD4u:
      case 0xD5u:
      case 0xD6u:
      case 0xD7u:
      case 0xD8u:
      case 0xD9u:
      case 0xDAu:
      case 0xDBu:
      case 0xDCu:
      case 0xDDu:
      case 0xE0u:
      case 0xE1u:
      case 0xE2u:
      case 0xE3u:
      case 0xE4u:
      case 0xE5u:
      case 0xE7u:
      case 0xE8u:
      case 0xE9u:
      case 0xEAu:
      case 0xEBu:
      case 0xECu:
      case 0xEDu:
      case 0xEEu:
      case 0xEFu:
      case 0xF0u:
      case 0xF1u:
      case 0xF2u:
      case 0xF3u:
      case 0xF4u:
      case 0xF5u:
      case 0xF6u:
      case 0xF7u:
      case 0xF8u:
      case 0xF9u:
      case 0xFAu:
      case 0xFBu:
      case 0xFCu:
      case 0xFDu:
      case 0xFFu:
        goto LABEL_34;
      case 0x5Bu:
      case 0x5Cu:
      case 0x5Du:
      case 0x5Eu:
      case 0x5Fu:
      case 0x60u:
      case 0x61u:
      case 0x62u:
      case 0x63u:
      case 0x64u:
      case 0x65u:
      case 0x66u:
      case 0x67u:
      case 0x68u:
      case 0x69u:
      case 0x6Au:
      case 0x6Bu:
      case 0x6Cu:
      case 0x6Du:
      case 0x6Eu:
      case 0x6Fu:
      case 0x70u:
      case 0x71u:
      case 0x72u:
      case 0x73u:
      case 0x74u:
      case 0x75u:
      case 0x76u:
      case 0x77u:
      case 0x78u:
      case 0x79u:
      case 0x7Au:
      case 0x7Bu:
      case 0x7Cu:
      case 0x7Du:
      case 0x7Eu:
      case 0x7Fu:
      case 0x80u:
      case 0x81u:
      case 0x82u:
      case 0x83u:
      case 0x84u:
      case 0x85u:
      case 0x86u:
      case 0x87u:
      case 0x88u:
      case 0x89u:
      case 0x8Au:
      case 0x8Bu:
      case 0x8Cu:
      case 0x8Du:
      case 0x8Eu:
      case 0x8Fu:
      case 0x90u:
      case 0x91u:
      case 0x92u:
      case 0x93u:
      case 0x94u:
      case 0x95u:
      case 0x96u:
      case 0x97u:
      case 0x98u:
      case 0x99u:
      case 0x9Au:
      case 0x9Bu:
      case 0x9Cu:
      case 0x9Du:
      case 0x9Eu:
      case 0x9Fu:
      case 0xA2u:
      case 0xA3u:
      case 0xA4u:
      case 0xA5u:
      case 0xA6u:
      case 0xA7u:
      case 0xACu:
      case 0xB0u:
      case 0xB6u:
      case 0xB7u:
        goto LABEL_35;
      case 0xA9u:
      case 0xAEu:
      case 0xB1u:
      case 0xBCu:
      case 0xBDu:
      case 0xBEu:
LABEL_33:
        v5 += 2;
        goto LABEL_34;
      case 0xABu:
      case 0xBBu:
      case 0xC6u:
      case 0xDEu:
      case 0xDFu:
      case 0xE6u:
      case 0xFEu:
LABEL_22:
        ++v5;
LABEL_34:
        v13 = 1;
        break;
      default:
        switch(v19)
        {
          case 0x2000u:
          case 0x2001u:
          case 0x2002u:
          case 0x2003u:
          case 0x2004u:
          case 0x2005u:
          case 0x2006u:
          case 0x2007u:
          case 0x2008u:
          case 0x2009u:
          case 0x200Au:
          case 0x2010u:
          case 0x2011u:
          case 0x2012u:
          case 0x2013u:
          case 0x2014u:
          case 0x2015u:
          case 0x2017u:
          case 0x2018u:
          case 0x2019u:
          case 0x201Au:
          case 0x201Bu:
          case 0x201Cu:
          case 0x201Du:
          case 0x201Fu:
          case 0x2024u:
          case 0x202Fu:
          case 0x2032u:
          case 0x2039u:
          case 0x203Au:
          case 0x203Eu:
          case 0x2044u:
          case 0x2045u:
          case 0x2046u:
          case 0x204Eu:
          case 0x205Fu:
            goto LABEL_34;
          case 0x2016u:
          case 0x201Eu:
          case 0x2025u:
          case 0x2033u:
          case 0x2036u:
          case 0x203Cu:
          case 0x2047u:
          case 0x2048u:
          case 0x2049u:
            goto LABEL_22;
          case 0x2034u:
          case 0x2037u:
            goto LABEL_33;
          case 0x2057u:
            v5 += 3;
            goto LABEL_34;
          default:
            goto LABEL_35;
        }
    }

    goto LABEL_35;
  }

  v3 = 0;
LABEL_40:

  v25 = *MEMORY[0x1E69E9840];

  return v3;
}

id _PASSimpleICUTransform(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (!v5 || !v6)
  {
    v7 = v6;
    v11 = v7;
    goto LABEL_29;
  }

  if ([(__CFString *)v6 _pas_retainsConmingledBackingStore])
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:v7];

    v7 = v8;
  }

  pthread_mutex_lock(&icuLock);
  if (!a3)
  {
    v9 = 0;
LABEL_10:
    v48 = 0;
    v49 = &v48;
    v50 = 0x2020000000;
    v51 = 0;
    v44 = 0;
    v45 = &v44;
    v46 = 0x2020000000;
    v47 = 0;
    v12 = _getIcuTransformCache();
    if ([v12 count] >= 0x65)
    {
      _destroyIcuTransformCache();
    }

    v13 = [v12 objectForKeyedSubscript:v5];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 pointerValue];
      v49[3] = v15;
    }

    else
    {
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = ___PASSimpleICUTransform_block_invoke;
      v40[3] = &unk_1E77F2310;
      v18 = v5;
      v41 = v18;
      v42 = &v48;
      v43 = &v44;
      _PASMemoryHeavyOperation(v40);
      if (v45[6] > 0)
      {
        v19 = v41;
        goto LABEL_23;
      }

      v23 = [MEMORY[0x1E696B098] valueWithPointer:v49[3]];
      [v12 setObject:v23 forKeyedSubscript:v18];
    }

    MutableCopy = CFStringCreateMutableCopy(0, 0, v7);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v36 = 0u;
    v24 = MutableCopy;
    Length = CFStringGetLength(MutableCopy);
    v34 = MutableCopy;
    v37 = Length;
    CharactersPtr = CFStringGetCharactersPtr(MutableCopy);
    if (CharactersPtr)
    {
      CStringPtr = 0;
    }

    else
    {
      CStringPtr = CFStringGetCStringPtr(MutableCopy, 0x600u);
    }

    *&v36 = CStringPtr;
    v38 = 0;
    cf = 0;
    v45[6] = 0;
    v20 = v49[3];
    utrans_trans();
    if (v45[6] >= 1)
    {
      CFRelease(MutableCopy);
      if (!a3)
      {
        goto LABEL_27;
      }

      goto LABEL_24;
    }

    v19 = v7;
    v7 = MutableCopy;
LABEL_23:

    if (!a3)
    {
LABEL_27:
      pthread_mutex_unlock(&icuLock);
      v7 = v7;

      _Block_object_dispose(&v44, 8);
      _Block_object_dispose(&v48, 8);
      v11 = v7;
      goto LABEL_28;
    }

LABEL_24:
    v21 = _getIcuTransformResultCache();
    if ([v21 count] >= 0x19)
    {
      [v21 removeAllObjects];
    }

    [v21 setObject:v7 forKeyedSubscript:{v9, v24, Length, v26, v27, v28, v29, v30, v31, v32, v33, v34, CharactersPtr, v36, v37, v38, cf}];

    goto LABEL_27;
  }

  v9 = [[_PASTuple2 alloc] initWithFirst:v5 second:v7];
  v10 = _getIcuTransformResultCache();
  v11 = [v10 objectForKeyedSubscript:v9];

  if (!v11)
  {
    goto LABEL_10;
  }

  pthread_mutex_unlock(&icuLock);
LABEL_28:

LABEL_29:

  return v11;
}

void sub_1A7F64520(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 144), 8);
  _Block_object_dispose((v1 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t _getIcuTransformResultCache()
{
  if (_getIcuTransformResultCache__pasOnceToken14 != -1)
  {
    dispatch_once(&_getIcuTransformResultCache__pasOnceToken14, &__block_literal_global_45);
  }

  v1 = _getIcuTransformResultCache__pasExprOnceResult;

  return [v1 result];
}

id _getIcuTransformCache()
{
  if (_getIcuTransformCache__pasOnceToken13 != -1)
  {
    dispatch_once(&_getIcuTransformCache__pasOnceToken13, &__block_literal_global_52);
  }

  v1 = _getIcuTransformCache__pasExprOnceResult;

  return v1;
}