const void *sub_1B0191100(const char **a1, int *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  sub_1B0191658(0);
  if (!sub_1B01916AC(a1, 1))
  {
    sub_1B0191658(5);
    v8 = 0;
    v6 = 0;
    goto LABEL_14;
  }

  v4 = sub_1B01916AC(a1, 1);
  if (!v4)
  {
    v6 = 0;
LABEL_7:
    if (qword_1EB6D0170 != -1)
    {
      sub_1B01F0338();
    }

    if (!CFSetContainsValue(qword_1EB6D0148, a1))
    {
      goto LABEL_13;
    }

    v8 = sub_1B01BCB00(a1);
    if (!v8 || (sub_1B0193670(a1, v8, v6) & 1) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v5 = v4;
  v6 = *(v4 + 39);
  v7 = sub_1B0191A80(v4);
  if (v7)
  {
    v8 = v7;
    goto LABEL_14;
  }

  if (!*(v5 + 8))
  {
    goto LABEL_7;
  }

  if ((byte_1EB6D0190 & 1) == 0)
  {
    v11 = getpid();
    if (sub_1B01933A0(v5, v11, 0))
    {
      if (qword_1ED446D30 != -1)
      {
        sub_1B0194F64();
      }

      if ((byte_1EB6D0190 & 1) == 0)
      {
        sub_1B0191658(0);
        v15 = *(off_1EB6CFEC0 + 29);
        if (!v15)
        {
          v15 = sub_1B0193150(29, 2);
        }

        v8 = v15(a1);
        if (v8 && (sub_1B0193670(a1, v8, v6) & 1) == 0)
        {
          CFRelease(v8);
          sub_1B0191658(7);
          v8 = 0;
        }

        if (sub_1B0193624() == 9)
        {
          v16 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
          v22 = v16 ? v16 + 1 : "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
          _MGLog(v22, 779, @"no access to %@ (see <rdar://problem/11744455>)", v17, v18, v19, v20, v21, a1);
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = a1;
            _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "no access to %@ (see <rdar://problem/11744455>)", buf, 0xCu);
          }
        }

        goto LABEL_52;
      }
    }
  }

  if (*(v5 + 152))
  {
    if (v6 <= 6)
    {
      if (v6 == 5)
      {
        *buf = (*(v5 + 8))();
        v12 = kCFNumberSInt32Type;
        goto LABEL_51;
      }

      if (v6 == 6)
      {
        *buf = (*(v5 + 8))();
        v12 = kCFNumberSInt64Type;
LABEL_51:
        v8 = CFNumberCreate(0, v12, buf);
        goto LABEL_52;
      }

      goto LABEL_47;
    }

    if (v6 == 7)
    {
      *buf = (*(v5 + 8))();
      v12 = kCFNumberFloat32Type;
      goto LABEL_51;
    }

    if (v6 != 11)
    {
LABEL_47:
      v23 = sub_1B019C840("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c");
      _MGLog(v23, 814, @"can't convert type %d for %@", v24, v25, v26, v27, v28, v6);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109378;
        *&buf[4] = v6;
        *&buf[8] = 2112;
        *&buf[10] = a1;
        _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "can't convert type %d for %@", buf, 0x12u);
      }

      goto LABEL_13;
    }

    v13 = (*(v5 + 8))();
    v14 = MEMORY[0x1E695E4D0];
    if (!v13)
    {
      v14 = MEMORY[0x1E695E4C0];
    }

    v8 = *v14;
LABEL_52:
    if (!v8)
    {
      goto LABEL_14;
    }

    goto LABEL_53;
  }

  v8 = (*(v5 + 8))();
  if (!v8)
  {
    goto LABEL_14;
  }

  if ((sub_1B0193670(a1, v8, v6) & 1) == 0)
  {
LABEL_12:
    CFRelease(v8);
    sub_1B0191658(7);
LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

LABEL_53:
  if (*(v5 + 154) != -1)
  {
    sub_1B0194218(v5, v8);
  }

LABEL_14:
  if (a2)
  {
    *a2 = v6;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

BOOL sub_1B01914DC(const char **a1, int a2, int a3, CFNumberType a4, void *a5)
{
  v35 = *MEMORY[0x1E69E9840];
  v26 = 0;
  v10 = sub_1B0191100(a1, &v26);
  if (v26 != a2 && v26 != a3)
  {
    v15 = sub_1B019C840("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c");
    v16 = qword_1E7A92830[a2];
    v17 = qword_1E7A92830[a3];
    v25 = qword_1E7A92830[v26];
    _MGLog(v15, 972, @"%@ does not return %s or %s, actually returns %s", v18, v19, v20, v21, v22, a1);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v24 = qword_1E7A92830[v26];
      *buf = 138413058;
      v28 = a1;
      v29 = 2080;
      v30 = v16;
      v31 = 2080;
      v32 = v17;
      v33 = 2080;
      v34 = v24;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%@ does not return %s or %s, actually returns %s", buf, 0x2Au);
    }

    abort();
  }

  v12 = v10;
  if (v10)
  {
    if (!CFNumberGetValue(v10, a4, a5))
    {
      sub_1B01F0514(a2, a1, v12);
    }

    CFRelease(v12);
  }

  result = v12 != 0;
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0191658(int a1)
{
  if (qword_1ED446E98 != -1)
  {
    sub_1B01921CC();
  }

  v2 = qword_1ED446E90;

  return pthread_setspecific(v2, a1);
}

const char **sub_1B01916AC(const char **result, int a2)
{
  v41 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    *buffer = 0u;
    v33 = 0u;
    if (!CFStringGetCString(result, buffer, 66, 0x8000100u))
    {
      if (!a2)
      {
        goto LABEL_30;
      }

      v6 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
      v12 = v6 ? v6 + 1 : "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
      _MGLog(v12, 256, @"string %@ is too long to be a valid gestalt question", v7, v8, v9, v10, v11, v3);
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_30;
      }

      *__str = 138412290;
      v38 = v3;
      v13 = MEMORY[0x1E69E9C10];
      v14 = "string %@ is too long to be a valid gestalt question";
LABEL_29:
      _os_log_impl(&dword_1B0190000, v13, OS_LOG_TYPE_DEFAULT, v14, __str, 0xCu);
      goto LABEL_30;
    }

    v4 = strlen(buffer);
    result = sub_1B019199C(buffer, v4);
    if (!result)
    {
      v30 = 0u;
      v31 = 0u;
      v5 = snprintf(__str, 0x5EuLL, "%s%s", "MGCopyAnswer", buffer);
      if ((v5 & 0x80000000) != 0)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *md = 136315138;
          v40 = buffer;
          _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Obfuscation error for %s", md, 0xCu);
        }
      }

      else
      {
        CC_MD5(__str, v5, md);
        if (!CNEncode())
        {
          BYTE6(v31) = 0;
          result = sub_1B019199C(&v30, 22);
          goto LABEL_22;
        }
      }

      if ((a2 & 1) == 0)
      {
LABEL_30:
        result = 0;
        goto LABEL_31;
      }

      v15 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
      if (v15)
      {
        v21 = v15 + 1;
      }

      else
      {
        v21 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
      }

      _MGLog(v21, 269, @"failed to transform %@", v16, v17, v18, v19, v20, v3);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *__str = 138412290;
        v38 = v3;
        _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "failed to transform %@", __str, 0xCu);
      }

      result = 0;
LABEL_22:
      if (!result && a2)
      {
        v22 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
        if (v22)
        {
          v28 = v22 + 1;
        }

        else
        {
          v28 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
        }

        _MGLog(v28, 274, @"string %@ is not a valid gestalt question", v23, v24, v25, v26, v27, v3);
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_30;
        }

        *__str = 138412290;
        v38 = v3;
        v13 = MEMORY[0x1E69E9C10];
        v14 = "string %@ is not a valid gestalt question";
        goto LABEL_29;
      }
    }
  }

LABEL_31:
  v29 = *MEMORY[0x1E69E9840];
  return result;
}

const char **sub_1B019199C(const char *a1, int a2)
{
  if (a2 != 22)
  {
    return 0;
  }

  v2 = *a1;
  v3 = word_1B01FE87C[*(a1 + 9)] + word_1B01FE87C[v2] + word_1B01FE87C[*(a1 + 4) + 20] + 22;
  if (v3 > 0x866)
  {
    return 0;
  }

  v4 = (&unk_1F25E3220 + 160 * v3);
  v5 = *v4;
  if (!*v4 || v2 != *v5 || strcmp(a1 + 1, v5 + 1))
  {
    return 0;
  }

  return v4;
}

void *sub_1B0191A80(uint64_t a1)
{
  if (qword_1ED446E88 != -1)
  {
    sub_1B0192964();
  }

  if (*(a1 + 154) <= 0x2B1u)
  {
    os_unfair_lock_lock(&unk_1ED446D88);
    v3 = *(a1 + 154);
    if (*(&unk_1ED4471E0 + v3 + 5520) != 1)
    {
      v2 = 0;
LABEL_21:
      os_unfair_lock_unlock(&unk_1ED446D88);
      return v2;
    }

    v4 = *(a1 + 156);
    v5 = (&unk_1ED4471E0 + 8 * v3);
    if (v4 > 6)
    {
      if (v4 == 7)
      {
        v6 = kCFNumberFloat32Type;
        goto LABEL_19;
      }

      if (v4 == 11)
      {
        v7 = MEMORY[0x1E695E4D0];
        if (!*v5)
        {
          v7 = MEMORY[0x1E695E4C0];
        }

        v2 = *v7;
        goto LABEL_21;
      }
    }

    else
    {
      if (v4 == 5)
      {
        v6 = kCFNumberSInt32Type;
        goto LABEL_19;
      }

      if (v4 == 6)
      {
        v6 = kCFNumberSInt64Type;
LABEL_19:
        v8 = CFNumberCreate(0, v6, v5);
        goto LABEL_20;
      }
    }

    v8 = CFRetain(*v5);
LABEL_20:
    v2 = v8;
    goto LABEL_21;
  }

  return 0;
}

BOOL MGGetBoolAnswer(const char **a1)
{
  v5 = 0;
  v2 = sub_1B0191100(a1, &v5);
  if (v5 != 11 && sub_1B0193624() != 5)
  {
    sub_1B01F0448(&v5, a1, v2);
  }

  if (!v2)
  {
    return 0;
  }

  v3 = v2 == *MEMORY[0x1E695E4D0];
  CFRelease(v2);
  return v3;
}

const void *sub_1B0191C2C(const char *a1, int a2)
{
  v93 = *MEMORY[0x1E69E9840];
  memset(&v88, 0, sizeof(v88));
  error = 0;
  v4 = open(a1, 0);
  if (v4 != -1)
  {
    v5 = v4;
    if (fstat(v4, &v88) == -1)
    {
      if (!a2)
      {
        goto LABEL_38;
      }

      v30 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/utility.c";
      v31 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/utility.c", 47);
      if (v31)
      {
        v30 = v31 + 1;
      }

      v32 = __error();
      strerror(*v32);
      _MGLog(v30, 83, @"Could not fstat %s: %s", v33, v34, v35, v36, v37, a1);
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_38;
      }

      v38 = __error();
      v39 = strerror(*v38);
      *buf = 136315394;
      v90 = a1;
      v91 = 2080;
      v92 = v39;
      v40 = MEMORY[0x1E69E9C10];
      v41 = "Could not fstat %s: %s";
      v42 = 22;
    }

    else
    {
      st_size = v88.st_size;
      v7 = malloc_type_malloc(v88.st_size, 0xB92C4131uLL);
      if (v7)
      {
        v8 = v7;
        if (read(v5, v7, st_size) == st_size)
        {
          v9 = *MEMORY[0x1E695E480];
          v10 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v8, st_size, *MEMORY[0x1E695E498]);
          if (v10)
          {
            v11 = v10;
            v12 = CFPropertyListCreateWithData(v9, v10, 0, 0, &error);
            if (v12)
            {
              v13 = v12;
              v14 = CFGetTypeID(v12);
              TypeID = CFDictionaryGetTypeID();
              v16 = v14 == TypeID;
              if (v14 == TypeID)
              {
                v17 = 0;
              }

              else
              {
                v17 = v13;
              }

              if (v14 == TypeID)
              {
                v18 = v13;
              }

              else
              {
                v18 = 0;
              }

              if (v16 || a2 == 0)
              {
                v13 = v17;
                goto LABEL_68;
              }

              v79 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/utility.c", 47);
              if (v79)
              {
                v85 = v79 + 1;
              }

              else
              {
                v85 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/utility.c";
              }

              _MGLog(v85, 127, @"File contents are not a CFDictionary", v80, v81, v82, v83, v84, v86);
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "File contents are not a CFDictionary", buf, 2u);
              }
            }

            else
            {
              if (a2)
              {
                v72 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/utility.c", 47);
                v78 = v72 ? v72 + 1 : "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/utility.c";
                _MGLog(v78, 120, @"Could not create dictionary from file contents: %@", v73, v74, v75, v76, v77, error);
                if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v90 = error;
                  _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Could not create dictionary from file contents: %@", buf, 0xCu);
                }
              }

              v13 = 0;
            }

            v18 = 0;
LABEL_68:
            close(v5);
            CFRelease(v11);
            if (v13)
            {
              CFRelease(v13);
            }

            goto LABEL_40;
          }

          if (!a2)
          {
            goto LABEL_39;
          }

          v65 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/utility.c", 47);
          v71 = v65 ? v65 + 1 : "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/utility.c";
          _MGLog(v71, 108, @"Could not create CFData with file data", v66, v67, v68, v69, v70, v86);
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_39;
          }

          *buf = 0;
          v62 = MEMORY[0x1E69E9C10];
          v63 = "Could not create CFData with file data";
          v64 = 2;
        }

        else
        {
          if (!a2)
          {
            goto LABEL_39;
          }

          v52 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/utility.c";
          v53 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/utility.c", 47);
          if (v53)
          {
            v52 = v53 + 1;
          }

          v54 = __error();
          strerror(*v54);
          _MGLog(v52, 100, @"Could not read %s: %s", v55, v56, v57, v58, v59, a1);
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_39;
          }

          v60 = __error();
          v61 = strerror(*v60);
          *buf = 136315394;
          v90 = a1;
          v91 = 2080;
          v92 = v61;
          v62 = MEMORY[0x1E69E9C10];
          v63 = "Could not read %s: %s";
          v64 = 22;
        }

        _os_log_impl(&dword_1B0190000, v62, OS_LOG_TYPE_DEFAULT, v63, buf, v64);
LABEL_39:
        close(v5);
        v18 = 0;
        goto LABEL_40;
      }

      if (!a2 || ((v43 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/utility.c", 47)) != 0 ? (v49 = v43 + 1) : (v49 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/utility.c"), _MGLog(v49, 93, @"Could not malloc buffer for file data", v44, v45, v46, v47, v48, v86), !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT)))
      {
LABEL_38:
        v8 = 0;
        goto LABEL_39;
      }

      *buf = 0;
      v40 = MEMORY[0x1E69E9C10];
      v41 = "Could not malloc buffer for file data";
      v42 = 2;
    }

    _os_log_impl(&dword_1B0190000, v40, OS_LOG_TYPE_DEFAULT, v41, buf, v42);
    goto LABEL_38;
  }

  if (!a2)
  {
    v8 = 0;
    v18 = 0;
    goto LABEL_42;
  }

  v20 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/utility.c";
  v21 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/utility.c", 47);
  if (v21)
  {
    v20 = v21 + 1;
  }

  v22 = __error();
  strerror(*v22);
  _MGLog(v20, 75, @"Could not open %s: %s", v23, v24, v25, v26, v27, a1);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v28 = __error();
    v29 = strerror(*v28);
    *buf = 136315394;
    v90 = a1;
    v91 = 2080;
    v92 = v29;
    _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Could not open %s: %s", buf, 0x16u);
  }

  v18 = 0;
  v8 = 0;
LABEL_40:
  if (error)
  {
    CFRelease(error);
    error = 0;
  }

LABEL_42:
  free(v8);
  v50 = *MEMORY[0x1E69E9840];
  return v18;
}

uint64_t sub_1B01921F0(int a1)
{
  v117 = *MEMORY[0x1E69E9840];
  v109 = 0;
  v110 = &v109;
  v111 = 0x2000000000;
  v112 = 0;
  v2 = sub_1B01921E8("/private/var/containers/Shared/SystemGroup/systemgroup.com.apple.mobilegestaltcache/Library/Caches/com.apple.MobileGestalt.plist");
  if (!v2)
  {
    goto LABEL_84;
  }

  v3 = v2;
  v4 = sub_1B0192B9C(*MEMORY[0x1E695E1E8], 1);
  if (!v4)
  {
    v19 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestaltCache.c", 47);
    if (v19)
    {
      v25 = v19 + 1;
    }

    else
    {
      v25 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestaltCache.c";
    }

    _MGLog(v25, 61, @"can't validate cache version since _kCFSystemVersionBuildVersionKey is missing", v20, v21, v22, v23, v24, v106);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "can't validate cache version since _kCFSystemVersionBuildVersionKey is missing", buf, 2u);
    }

    goto LABEL_83;
  }

  v5 = v4;
  Value = CFDictionaryGetValue(v3, @"CacheExtra");
  if (!Value)
  {
    v26 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestaltCache.c", 47);
    if (v26)
    {
      v32 = v26 + 1;
    }

    else
    {
      v32 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestaltCache.c";
    }

    _MGLog(v32, 68, @"cache extra is missing", v27, v28, v29, v30, v31, v106);
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    *buf = 0;
    v17 = MEMORY[0x1E69E9C10];
    v18 = "cache extra is missing";
    goto LABEL_22;
  }

  v7 = Value;
  v8 = sub_1B01A1978(@"ReleaseType", 0);
  v9 = CFDictionaryGetValue(v7, @"9UCjT7Qfi4xLVvPAKIzTCQ");
  if (v8 | v9)
  {
    if (!v8 && v9)
    {
      v10 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestaltCache.c", 47);
      if (v10)
      {
        v16 = v10 + 1;
      }

      else
      {
        v16 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestaltCache.c";
      }

      _MGLog(v16, 114, @"moving from non-GM to release, invalidate cache", v11, v12, v13, v14, v15, v106);
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
      }

      *buf = 0;
      v17 = MEMORY[0x1E69E9C10];
      v18 = "moving from non-GM to release, invalidate cache";
LABEL_22:
      _os_log_impl(&dword_1B0190000, v17, OS_LOG_TYPE_DEFAULT, v18, buf, 2u);
LABEL_23:
      v8 = 0;
      goto LABEL_82;
    }

    if (v8 && !v9)
    {
      v33 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestaltCache.c", 47);
      if (v33)
      {
        v39 = v33 + 1;
      }

      else
      {
        v39 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestaltCache.c";
      }

      _MGLog(v39, 119, @"moving from release to non-GM, invalidate cache", v34, v35, v36, v37, v38, v106);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v40 = MEMORY[0x1E69E9C10];
        v41 = "moving from release to non-GM, invalidate cache";
LABEL_80:
        v95 = 2;
        goto LABEL_81;
      }

      goto LABEL_82;
    }

    if (v8 && v9 && !CFEqual(v9, v8))
    {
      v96 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestaltCache.c", 47);
      if (v96)
      {
        v102 = v96 + 1;
      }

      else
      {
        v102 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestaltCache.c";
      }

      _MGLog(v102, 129, @"we're switching release types, invalidate cache", v97, v98, v99, v100, v101, v106);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v40 = MEMORY[0x1E69E9C10];
        v41 = "we're switching release types, invalidate cache";
        goto LABEL_80;
      }

      goto LABEL_82;
    }
  }

  v42 = CFDictionaryGetValue(v3, @"CacheVersion");
  if (v42)
  {
    v43 = v42;
    if (CFEqual(v42, v5))
    {
      v44 = CFDictionaryGetValue(v3, @"CacheUUID");
      if (!v44)
      {
        v74 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestaltCache.c", 47);
        if (v74)
        {
          v80 = v74 + 1;
        }

        else
        {
          v80 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestaltCache.c";
        }

        _MGLog(v80, 148, @"can't validate cache since uuid is missing", v75, v76, v77, v78, v79, v106);
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v40 = MEMORY[0x1E69E9C10];
          v41 = "can't validate cache since uuid is missing";
          goto LABEL_80;
        }

        goto LABEL_82;
      }

      v45 = v44;
      if (CFEqual(v44, @"CEEA7316-5800-454A-AA6A-834513AAC59B"))
      {
        v46 = CFDictionaryGetValue(v3, @"CacheData");
        if (v46 && (v47 = v46, v48 = CFGetTypeID(v46), v48 == CFDataGetTypeID()) && CFDataGetLength(v47) == 6210)
        {
          if (a1)
          {
            os_unfair_lock_lock(&unk_1ED446D88);
            BytePtr = CFDataGetBytePtr(v47);
            memcpy(qword_1ED4471E0, BytePtr, 0x1842uLL);
          }

          *(v110 + 24) = 1;
          v107[0] = MEMORY[0x1E69E9820];
          v107[1] = 0x40000000;
          v107[2] = sub_1B0192C84;
          v107[3] = &unk_1E7A93340;
          v108 = a1;
          v107[4] = &v109;
          sub_1B0192BA4(v7, v107);
          if (a1)
          {
            v50 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestaltCache.c";
            v51 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestaltCache.c", 47);
            if (v51)
            {
              v50 = v51 + 1;
            }

            Length = CFDataGetLength(v47);
            CFDictionaryGetCount(v7);
            _MGLog(v50, 206, @"Cache loaded with %zu pre-cached in CacheData and %ld items in CacheExtra.", v53, v54, v55, v56, v57, Length);
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              v58 = CFDataGetLength(v47);
              Count = CFDictionaryGetCount(v7);
              *buf = 134218240;
              v114 = v58;
              v115 = 2048;
              v116 = Count;
              _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Cache loaded with %zu pre-cached in CacheData and %ld items in CacheExtra.", buf, 0x16u);
            }

            os_unfair_lock_unlock(&unk_1ED446D88);
          }
        }

        else
        {
          v81 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestaltCache.c", 47);
          if (v81)
          {
            v87 = v81 + 1;
          }

          else
          {
            v87 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestaltCache.c";
          }

          _MGLog(v87, 159, @"cache data is invalid", v82, v83, v84, v85, v86, v106);
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v40 = MEMORY[0x1E69E9C10];
            v41 = "cache data is invalid";
            goto LABEL_80;
          }
        }

        goto LABEL_82;
      }

      v88 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestaltCache.c", 47);
      if (v88)
      {
        v94 = v88 + 1;
      }

      else
      {
        v94 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestaltCache.c";
      }

      _MGLog(v94, 153, @"cache UUID %@ doesn't match build UUID %@", v89, v90, v91, v92, v93, v45);
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_82;
      }

      *buf = 138412546;
      v114 = v45;
      v115 = 2112;
      v116 = @"CEEA7316-5800-454A-AA6A-834513AAC59B";
      v40 = MEMORY[0x1E69E9C10];
      v41 = "cache UUID %@ doesn't match build UUID %@";
    }

    else
    {
      v67 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestaltCache.c", 47);
      if (v67)
      {
        v73 = v67 + 1;
      }

      else
      {
        v73 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestaltCache.c";
      }

      _MGLog(v73, 142, @"cache %@ doesn't match OS %@", v68, v69, v70, v71, v72, v43);
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_82;
      }

      *buf = 138412546;
      v114 = v43;
      v115 = 2112;
      v116 = v5;
      v40 = MEMORY[0x1E69E9C10];
      v41 = "cache %@ doesn't match OS %@";
    }

    v95 = 22;
LABEL_81:
    _os_log_impl(&dword_1B0190000, v40, OS_LOG_TYPE_DEFAULT, v41, buf, v95);
    goto LABEL_82;
  }

  v60 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestaltCache.c", 47);
  if (v60)
  {
    v66 = v60 + 1;
  }

  else
  {
    v66 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestaltCache.c";
  }

  _MGLog(v66, 137, @"can't validate cache version since cacheVers is missing", v61, v62, v63, v64, v65, v106);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v40 = MEMORY[0x1E69E9C10];
    v41 = "can't validate cache version since cacheVers is missing";
    goto LABEL_80;
  }

LABEL_82:
  CFRelease(v3);
  CFRelease(v5);
  v3 = v8;
  if (v8)
  {
LABEL_83:
    CFRelease(v3);
  }

LABEL_84:
  v103 = *(v110 + 24);
  _Block_object_dispose(&v109, 8);
  v104 = *MEMORY[0x1E69E9840];
  return v103;
}

void _MGLog(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = *MEMORY[0x1E695E480];
  v10 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"libMobileGestalt %s:%d: %@", a1, a2, a3, 0);
  v11 = CFStringCreateWithFormatAndArguments(v9, 0, v10, &a9);
  Length = CFStringGetLength(v11);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v14 = malloc_type_calloc(1uLL, MaximumSizeForEncoding + 1, 0x100004077774924uLL);
  if (v14)
  {
    if (CFStringGetCString(v11, v14, MaximumSizeForEncoding + 1, 0x8000100u) == 1 && off_1EB6D00A8 != 0)
    {
      off_1EB6D00A8(v14);
    }
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  free(v14);
}

uint64_t MGIsDeviceOneOfType(const UInt8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (!a1)
  {
    return 0;
  }

  if (MGIsDeviceOfType(a1))
  {
    return 1;
  }

  v12 = &a9;
  do
  {
    v10 = v12++;
    v9 = *v10 != 0;
  }

  while (*v10 && !MGIsDeviceOfType(*v10));
  return v9;
}

const UInt8 *sub_1B0192B00()
{
  if (qword_1ED446D80 != -1)
  {
    sub_1B01930B4();
  }

  result = qword_1ED446D78;
  if (qword_1ED446D78)
  {

    return CFDataGetBytePtr(result);
  }

  return result;
}

const UInt8 *MGIsDeviceOfType(const UInt8 *result)
{
  if (result)
  {
    v1 = result;
    result = sub_1B0192B00();
    if (result)
    {
      return (*v1 == *result && *(v1 + 1) == *(result + 1) && *(v1 + 4) == *(result + 4));
    }
  }

  return result;
}

void sub_1B0192BA4(const __CFDictionary *a1, uint64_t a2)
{
  if (a1)
  {
    Count = CFDictionaryGetCount(a1);
    v5 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
    CFDictionaryGetKeysAndValues(a1, v5, 0);
    v6 = Count - 1;
    if (Count >= 1)
    {
      v7 = v5;
      do
      {
        v8 = v6;
        v11 = 0;
        v9 = *v7++;
        Value = CFDictionaryGetValue(a1, v9);
        (*(a2 + 16))(a2, v9, Value, &v11);
        if (v11)
        {
          break;
        }

        v6 = v8 - 1;
      }

      while (v8);
    }

    free(v5);
  }
}

void sub_1B0192C84(uint64_t a1, const char **a2, const void *a3, _BYTE *a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v8 = sub_1B0192C7C(a2);
  if (!v8)
  {
    v19 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestaltCache.c", 47);
    if (v19)
    {
      v25 = v19 + 1;
    }

    else
    {
      v25 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestaltCache.c";
    }

    _MGLog(v25, 178, @"cache extra has invalid question %@", v20, v21, v22, v23, v24, a2);
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    *buf = 138412290;
    v37 = a2;
    v17 = MEMORY[0x1E69E9C10];
    v18 = "cache extra has invalid question %@";
LABEL_13:
    v26 = 12;
LABEL_14:
    _os_log_impl(&dword_1B0190000, v17, OS_LOG_TYPE_DEFAULT, v18, buf, v26);
LABEL_15:
    *(*(*(a1 + 32) + 8) + 24) = 0;
    goto LABEL_16;
  }

  v9 = v8;
  if ((v8[19] & 0x10) == 0)
  {
    v10 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestaltCache.c", 47);
    if (v10)
    {
      v16 = v10 + 1;
    }

    else
    {
      v16 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestaltCache.c";
    }

    _MGLog(v16, 183, @"%@ is not precacheable", v11, v12, v13, v14, v15, a2);
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    *buf = 138412290;
    v37 = a2;
    v17 = MEMORY[0x1E69E9C10];
    v18 = "%@ is not precacheable";
    goto LABEL_13;
  }

  if (*(v8 + 77) >= 0x2B2u)
  {
    v28 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestaltCache.c", 47);
    if (v28)
    {
      v34 = v28 + 1;
    }

    else
    {
      v34 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestaltCache.c";
    }

    _MGLog(v34, 188, @"index %d is illegal", v29, v30, v31, v32, v33, *(v9 + 77));
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v35 = *(v9 + 77);
    *buf = 67109120;
    LODWORD(v37) = v35;
    v17 = MEMORY[0x1E69E9C10];
    v18 = "index %d is illegal";
    v26 = 8;
    goto LABEL_14;
  }

  if (*(a1 + 40) != 1)
  {
    goto LABEL_17;
  }

  qword_1ED4471E0[*(v8 + 77)] = CFRetain(a3);
  a4 = &qword_1ED4471E0[690] + *(v9 + 77);
LABEL_16:
  *a4 = 1;
LABEL_17:
  v27 = *MEMORY[0x1E69E9840];
}

uint64_t MGGetSInt32Answer(const char **a1, unsigned int a2)
{
  v4 = a2;
  if (sub_1B01914DC(a1, 5, 5, kCFNumberSInt32Type, &v4))
  {
    return v4;
  }

  else
  {
    return a2;
  }
}

CFTypeRef sub_1B0192F20(char *path, const __CFString *a2, int a3)
{
  v5 = IORegistryEntryFromPath(*MEMORY[0x1E696CD60], path);
  if (v5)
  {
    v6 = v5;
    if (!a3)
    {
      CFProperty = IORegistryEntryCreateCFProperty(v5, a2, 0, 0);
      goto LABEL_7;
    }

    v7 = IORegistryEntryCreateCFProperty(v5, @"IORegistryEntryPropertyKeys", 0, 0);
    if (v7)
    {
      v8 = v7;
      CFProperty = sub_1B0198148(v6, v7, a2, a3);
      CFRelease(v8);
LABEL_7:
      IOObjectRelease(v6);
      return CFProperty;
    }
  }

  return 0;
}

void sub_1B0192FDC()
{
  v0 = sub_1B0192F20("IODeviceTree:/product", @"product-id", 0);
  qword_1ED446D78 = v0;
  if (!v0 || (v1 = v0, v2 = CFGetTypeID(v0), v2 != CFDataGetTypeID()) || CFDataGetLength(v1) != 20)
  {
    v3 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/device_map.c", 47);
    if (v3)
    {
      v9 = v3 + 1;
    }

    else
    {
      v9 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/device_map.c";
    }

    _MGLog(v9, 58, @"invalid product id '%@'", v4, v5, v6, v7, v8, qword_1ED446D78);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      sub_1B01F01FC();
    }

    if (qword_1ED446D78)
    {
      CFRelease(qword_1ED446D78);
    }

    qword_1ED446D78 = 0;
  }
}

uint64_t sub_1B0193150(uint64_t a1, uint64_t a2)
{
  if (qword_1ED446D70 != -1)
  {
    sub_1B019313C();
  }

  if (byte_1ED446D68 == 1)
  {
    v4 = *(off_1EB6CFEC0 + 41);

    return v4(a1, a2);
  }

  else
  {
    pthread_mutex_lock(&stru_1ED446CB8);
    v6 = &unk_1EB6D0198;
    if (a2 != 1)
    {
      v6 = 0;
    }

    if (a2 == 2)
    {
      v7 = sub_1B01A3304;
    }

    else
    {
      v7 = v6;
    }

    *(off_1EB6CFEC0 + a1) = v7;
    pthread_mutex_unlock(&stru_1ED446CB8);
    return v7;
  }
}

void sub_1B0193224()
{
  if (getenv("DISABLE_GESTALT_DLOPEN"))
  {
    v0 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
    if (v0)
    {
      v6 = v0 + 1;
    }

    else
    {
      v6 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
    }

    _MGLog(v6, 206, @"disabling external functions", v1, v2, v3, v4, v5, v17[0]);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "disabling external functions", buf, 2u);
    }
  }

  else
  {
    v7 = dlopen("/usr/lib/libMobileGestaltExtensions.dylib", 1);
    if (v7)
    {
      v8 = dlsym(v7, "_MGSSetLazyFuncs");
      if (v8)
      {
        v8(off_1EB6CFEC0, sub_1B0191658, &stru_1ED446CB8);
        v9 = &byte_1ED446D68;
        goto LABEL_17;
      }
    }
  }

  if (byte_1ED446D68)
  {
    return;
  }

  v10 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
  if (v10)
  {
    v16 = v10 + 1;
  }

  else
  {
    v16 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
  }

  _MGLog(v16, 219, @"couldn't load support library", v11, v12, v13, v14, v15, v17[0]);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 0;
    _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "couldn't load support library", v17, 2u);
  }

  v9 = &byte_1EB6D0190;
LABEL_17:
  *v9 = 1;
}

uint64_t sub_1B01933A0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (byte_1EB6D0190)
  {
    goto LABEL_15;
  }

  if (a1[18])
  {
    getpid();
    v17 = a1[18];
    if (sandbox_check())
    {
      if (qword_1ED446D60 != -1)
      {
        sub_1B0193E90();
      }

      v6 = qword_1ED446D58;
      if (os_log_type_enabled(qword_1ED446D58, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *a1;
        *buf = 136315138;
        v19 = v7;
        v8 = "elided IOKit fast path for key: %s";
LABEL_14:
        _os_log_impl(&dword_1B0190000, v6, OS_LOG_TYPE_DEFAULT, v8, buf, 0xCu);
        goto LABEL_15;
      }

      goto LABEL_15;
    }

    if (qword_1ED446D60 != -1)
    {
      sub_1B0193E90();
    }

    v12 = qword_1ED446D58;
    result = os_log_type_enabled(qword_1ED446D58, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      v13 = *a1;
      *buf = 136315138;
      v19 = v13;
      v14 = "taking IOKit fast path for key: %s";
LABEL_27:
      _os_log_impl(&dword_1B0190000, v12, OS_LOG_TYPE_DEFAULT, v14, buf, 0xCu);
      goto LABEL_28;
    }
  }

  else
  {
    if ((a1[19] & 0x20) == 0)
    {
      goto LABEL_15;
    }

    getpid();
    if (sandbox_check())
    {
      if (qword_1ED446D60 != -1)
      {
        sub_1B0193E90();
      }

      v6 = qword_1ED446D58;
      if (os_log_type_enabled(qword_1ED446D58, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *a1;
        *buf = 136315138;
        v19 = v9;
        v8 = "elided platform fast path for key: %s";
        goto LABEL_14;
      }

LABEL_15:
      if ((a1[19] & 2) != 0)
      {
        result = 1;
        goto LABEL_29;
      }

      v10 = a1[2];
      if (v10)
      {
        result = v10(a2, a3);
        goto LABEL_29;
      }

LABEL_28:
      result = 0;
      goto LABEL_29;
    }

    if (qword_1ED446D60 != -1)
    {
      sub_1B0193E90();
    }

    v12 = qword_1ED446D58;
    result = os_log_type_enabled(qword_1ED446D58, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      v15 = *a1;
      *buf = 136315138;
      v19 = v15;
      v14 = "taking platform fast path for key: %s";
      goto LABEL_27;
    }
  }

LABEL_29:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

const void *MGCopyAnswerWithError(const char **a1, uint64_t a2, _DWORD *a3)
{
  v4 = sub_1B0191100(a1, 0);
  if (a3)
  {
    *a3 = sub_1B0193624();
  }

  return v4;
}

void *sub_1B0193624()
{
  if (qword_1ED446E98 != -1)
  {
    sub_1B01921CC();
  }

  return pthread_getspecific(qword_1ED446E90);
}

uint64_t sub_1B0193670(uint64_t a1, CFTypeRef cf, int a3)
{
  v33 = *MEMORY[0x1E69E9840];
  if (qword_1ED446D90 != -1)
  {
    sub_1B019365C();
  }

  if (a3 <= 5)
  {
    if (a3 < 2)
    {
      goto LABEL_5;
    }

    if (a3 == 5)
    {
      v13 = *MEMORY[0x1E69E9840];
      v9 = a1;
      v10 = cf;
      v11 = 5;
      v12 = kCFNumberSInt32Type;
      goto LABEL_22;
    }

LABEL_14:
    v15 = CFGetTypeID(cf);
    v16 = qword_1ED446D98[a3];
    if (v15 != v16)
    {
      v17 = CFCopyTypeIDDescription(v15);
      v18 = CFCopyTypeIDDescription(v16);
      v19 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
      if (v19)
      {
        v25 = v19 + 1;
      }

      else
      {
        v25 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
      }

      _MGLog(v25, 605, @"Value for %@ has incorrect type (should be %@, is %@)", v20, v21, v22, v23, v24, a1);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v28 = a1;
        v29 = 2112;
        v30 = v18;
        v31 = 2112;
        v32 = v17;
        _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Value for %@ has incorrect type (should be %@, is %@)", buf, 0x20u);
      }

      CFRelease(v17);
      CFRelease(v18);
      result = 0;
      goto LABEL_6;
    }

LABEL_5:
    result = 1;
LABEL_6:
    v7 = *MEMORY[0x1E69E9840];
    return result;
  }

  if (a3 == 6)
  {
    v14 = *MEMORY[0x1E69E9840];
    v9 = a1;
    v10 = cf;
    v11 = 6;
    v12 = kCFNumberSInt64Type;
    goto LABEL_22;
  }

  if (a3 == 7)
  {
    v26 = *MEMORY[0x1E69E9840];
    v9 = a1;
    v10 = cf;
    v11 = 7;
    v12 = kCFNumberFloat32Type;
    goto LABEL_22;
  }

  if (a3 != 8)
  {
    goto LABEL_14;
  }

  v8 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = cf;
  v11 = 8;
  v12 = kCFNumberFloat64Type;
LABEL_22:

  return sub_1B0197F38(v9, v10, v11, v12);
}

CFTypeID sub_1B01938CC()
{
  qword_1ED446DA8 = CFDictionaryGetTypeID();
  qword_1ED446DB0 = CFArrayGetTypeID();
  qword_1ED446DB8 = CFNumberGetTypeID();
  qword_1ED446DC0 = CFNumberGetTypeID();
  qword_1ED446DC8 = CFNumberGetTypeID();
  qword_1ED446DD0 = CFNumberGetTypeID();
  qword_1ED446DD8 = CFNumberGetTypeID();
  qword_1ED446DE0 = CFStringGetTypeID();
  qword_1ED446DE8 = CFDataGetTypeID();
  result = CFBooleanGetTypeID();
  qword_1ED446DF0 = result;
  return result;
}

char *sub_1B0193940(const char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  *__s1 = 0u;
  v8 = 0u;
  v4 = 128;
  if (sysctlbyname(a1, __s1, &v4, 0, 0) == -1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v6 = a1;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Could not lookup %s", buf, 0xCu);
    }

    result = 0;
  }

  else
  {
    result = strdup(__s1);
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B0193A3C()
{
  v13 = *MEMORY[0x1E69E9840];
  v0 = sub_1B0193CB4();
  v1 = v0;
  if (v0)
  {
    if (!strncmp(v0, "iPhone", 6uLL))
    {
      v2 = 1;
      goto LABEL_33;
    }

    if (!strncmp(v1, "iPod", 4uLL))
    {
      goto LABEL_23;
    }

    if (!strncmp(v1, "iPad", 4uLL))
    {
      v2 = 3;
      goto LABEL_33;
    }

    if (!strncmp(v1, "AppleTV", 7uLL))
    {
      v2 = 4;
      goto LABEL_33;
    }

    v2 = 5;
    if (!strncmp(v1, "iFPGA", 5uLL))
    {
LABEL_33:
      dword_1ED446CB0 = v2;
      goto LABEL_34;
    }

    if (!strncmp(v1, "Watch", 5uLL))
    {
      v2 = 6;
      goto LABEL_33;
    }

    if (!strncmp(v1, "AudioAccessory", 0xEuLL))
    {
      v2 = 7;
      goto LABEL_33;
    }

    if (!strncmp(v1, "iBridge", 7uLL))
    {
      v2 = 8;
      goto LABEL_33;
    }

    if (!strncmp(v1, "AppleDisplay", 0xCuLL))
    {
      v2 = 10;
      goto LABEL_33;
    }

    if (!strncmp(v1, "RealityDevice", 0xDuLL))
    {
      v2 = 11;
      goto LABEL_33;
    }

    if (!strncmp(v1, "ComputeModule", 0xDuLL))
    {
      v2 = 12;
      goto LABEL_33;
    }

    if (*v1 == 77 && v1[1] == 97 && v1[2] == 99)
    {
      v2 = 9;
      goto LABEL_33;
    }
  }

  if (dword_1ED446CB0 == -1)
  {
    v3 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/utility.c", 47);
    if (v3)
    {
      v9 = v3 + 1;
    }

    else
    {
      v9 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/utility.c";
    }

    _MGLog(v9, 409, @"Did not recognize DeviceClass: %s", v4, v5, v6, v7, v8, v1);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v12 = v1;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Did not recognize DeviceClass: %s", buf, 0xCu);
    }

LABEL_23:
    v2 = 2;
    goto LABEL_33;
  }

LABEL_34:
  v10 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B0193CB4()
{
  if (qword_1ED446D40 != -1)
  {
    sub_1B0193A28();
  }

  return qword_1ED446D48;
}

char *sub_1B0193CEC()
{
  result = sub_1B0193940("hw.product");
  qword_1ED446D48 = result;
  return result;
}

uint64_t sub_1B0193D14()
{
  if (qword_1ED446D50 != -1)
  {
    sub_1B0193D4C();
  }

  return dword_1ED446CB0;
}

uint64_t sub_1B0193D60()
{
  v15 = *MEMORY[0x1E69E9840];
  v0 = *(off_1EB6CFEC0 + 95);
  if (!v0)
  {
    v0 = sub_1B0193150(95, 2);
  }

  v1 = v0(0);
  v2 = v1;
  if (v1 >= 4)
  {
    v4 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
    if (v4)
    {
      v10 = v4 + 1;
    }

    else
    {
      v10 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
    }

    _MGLog(v10, 4752, @"MKBGetDeviceLockState returned unknown state %d", v5, v6, v7, v8, v9, v2);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v14 = v2;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "MKBGetDeviceLockState returned unknown state %d", buf, 8u);
    }

    LOBYTE(v3) = 1;
  }

  else
  {
    v3 = 6u >> (v1 & 0xF);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v3 & 1;
}

os_log_t sub_1B0193EA4()
{
  result = os_log_create("com.apple.MobileGestalt", "fast-path");
  qword_1ED446D58 = result;
  return result;
}

uint64_t sub_1B0193ED4(char *a1, const __CFString *a2, int a3, uint64_t a4, int a5)
{
  v55 = *MEMORY[0x1E69E9840];
  v9 = sub_1B0192F20(a1, a2, a3);
  if (v9)
  {
    v10 = v9;
    v11 = CFGetTypeID(v9);
    if (v11 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      if (CFNumberGetValue(v10, kCFNumberIntType, &valuePtr))
      {
        a4 = valuePtr;
LABEL_31:
        CFRelease(v10);
        goto LABEL_32;
      }

      v31 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/MGIOKitSupport.c", 47);
      if (v31)
      {
        v37 = v31 + 1;
      }

      else
      {
        v37 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/MGIOKitSupport.c";
      }

      _MGLog(v37, 463, @"Error getting int value for key %@ (%@)!", v32, v33, v34, v35, v36, a2);
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_31;
      }

      *buf = 138412546;
      v50 = a2;
      v51 = 2112;
      v52 = v10;
      v29 = MEMORY[0x1E69E9C10];
      v30 = "Error getting int value for key %@ (%@)!";
    }

    else
    {
      v19 = CFGetTypeID(v10);
      if (v19 == CFDataGetTypeID())
      {
        v20 = CFGetTypeID(v10);
        if (v20 == CFDataGetTypeID() && CFDataGetLength(v10) == 4)
        {
          a4 = *CFDataGetBytePtr(v10);
          goto LABEL_31;
        }

        v39 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/MGIOKitSupport.c", 47);
        if (v39)
        {
          v45 = v39 + 1;
        }

        else
        {
          v45 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/MGIOKitSupport.c";
        }

        _MGLog(v45, 469, @"value for %@ property of %s is invalid (%@)", v40, v41, v42, v43, v44, a2);
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_31;
        }

        *buf = 138412802;
        v50 = a2;
        v51 = 2080;
        v52 = a1;
        v53 = 2112;
        v54 = v10;
        v29 = MEMORY[0x1E69E9C10];
        v30 = "value for %@ property of %s is invalid (%@)";
        v38 = 32;
LABEL_30:
        _os_log_impl(&dword_1B0190000, v29, OS_LOG_TYPE_DEFAULT, v30, buf, v38);
        goto LABEL_31;
      }

      v21 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/MGIOKitSupport.c";
      v22 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/MGIOKitSupport.c", 47);
      if (v22)
      {
        v21 = v22 + 1;
      }

      v23 = CFGetTypeID(v10);
      _MGLog(v21, 473, @"invalid CFTypeID %lu for key %@", v24, v25, v26, v27, v28, v23);
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_31;
      }

      *buf = 134218242;
      v50 = CFGetTypeID(v10);
      v51 = 2112;
      v52 = a2;
      v29 = MEMORY[0x1E69E9C10];
      v30 = "invalid CFTypeID %lu for key %@";
    }

    v38 = 22;
    goto LABEL_30;
  }

  if (a5)
  {
    v12 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/MGIOKitSupport.c", 47);
    v18 = v12 ? v12 + 1 : "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/MGIOKitSupport.c";
    _MGLog(v18, 478, @"missing value for property %@", v13, v14, v15, v16, v17, a2);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v50 = a2;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "missing value for property %@", buf, 0xCu);
    }
  }

LABEL_32:
  v46 = *MEMORY[0x1E69E9840];
  return a4;
}

void sub_1B0194218(uint64_t a1, const __CFBoolean *a2)
{
  if (*(a1 + 154) > 0x2B1u)
  {
    return;
  }

  os_unfair_lock_lock(&unk_1ED446D88);
  v5 = *(a1 + 154);
  if ((*(&unk_1ED4471E0 + v5 + 5520) & 1) == 0)
  {
    v6 = *(a1 + 156);
    if (v6 > 6)
    {
      if (v6 == 7)
      {
        v7 = &unk_1ED4471E0 + 8 * v5;
        v8 = a2;
        v9 = kCFNumberFloat32Type;
        goto LABEL_13;
      }

      if (v6 == 11)
      {
        *(&unk_1ED4471E0 + 8 * *(a1 + 154)) = CFBooleanGetValue(a2) != 0;
LABEL_14:
        *(&unk_1ED4471E0 + *(a1 + 154) + 5520) = 1;
        goto LABEL_15;
      }
    }

    else
    {
      if (v6 == 5)
      {
        v7 = &unk_1ED4471E0 + 8 * v5;
        v8 = a2;
        v9 = kCFNumberSInt32Type;
        goto LABEL_13;
      }

      if (v6 == 6)
      {
        v7 = &unk_1ED4471E0 + 8 * v5;
        v8 = a2;
        v9 = kCFNumberSInt64Type;
LABEL_13:
        CFNumberGetValue(v8, v9, v7);
        goto LABEL_14;
      }
    }

    *(&unk_1ED4471E0 + *(a1 + 154)) = CFRetain(a2);
    goto LABEL_14;
  }

LABEL_15:

  os_unfair_lock_unlock(&unk_1ED446D88);
}

uint64_t sub_1B0194338()
{
  v0 = sub_1B0193D14();
  if (v0 == 2)
  {
    v3 = @"iPod";
  }

  else
  {
    if (v0 == 4)
    {
      v1 = *(off_1EB6CFEC0 + 31);
      if (!v1)
      {
        v1 = sub_1B0193150(31, 2);
      }

      return v1("/Applications/PineBoard.app", @"DeviceName", @"Apple TV", 0);
    }

    v3 = sub_1B0194428();
  }

  v4 = *(off_1EB6CFEC0 + 31);
  if (!v4)
  {
    v4 = sub_1B0193150(31, 2);
  }

  v5 = v4("/System/Library/CoreServices/SpringBoard.app", v3, 0, @"SpringBoard");
  if (v5)
  {
    v6 = v5;
    CFRelease(v3);
    return v6;
  }

  return v3;
}

__CFString *sub_1B0194428()
{
  v0 = sub_1B0193D14() - 1;
  if (v0 > 0xA)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_1E7A92DF8 + v0);
  }
}

const void *MGGetStringAnswer(const char **a1)
{
  v5 = 0;
  v1 = sub_1B0191100(a1, &v5);
  v2 = v1;
  if (v1)
  {
    v3 = CFGetTypeID(v1);
    if (v3 != CFStringGetTypeID())
    {
      CFRelease(v2);
      return 0;
    }
  }

  return v2;
}

uint64_t MGRegisterForBulkUpdates(const __CFArray *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v70 = *MEMORY[0x1E69E9840];
  Count = CFArrayGetCount(a1);
  if (Count >= 1)
  {
    v8 = 0;
    Mutable = 0;
    v10 = MEMORY[0x1E695E9C0];
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v8);
      if (!sub_1B01916AC(ValueAtIndex, 1))
      {
        if (!Mutable)
        {
          Mutable = CFArrayCreateMutable(0, 0, v10);
        }

        CFArrayAppendValue(Mutable, ValueAtIndex);
      }

      ++v8;
    }

    while (Count != v8);
    if (Mutable)
    {
      v12 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
      if (v12)
      {
        v18 = v12 + 1;
      }

      else
      {
        v18 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
      }

      _MGLog(v18, 1107, @"no registration performed because invalid questions were passed in: %@", v13, v14, v15, v16, v17, Mutable);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v69 = Mutable;
        _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "no registration performed because invalid questions were passed in: %@", buf, 0xCu);
      }

      CFRelease(Mutable);
LABEL_60:
      v21 = -1;
      goto LABEL_61;
    }
  }

  v19 = *(off_1EB6CFEC0 + 33);
  if (!v19)
  {
    v19 = sub_1B0193150(33, 2);
  }

  v20 = v19(a3, a4);
  if (!v20)
  {
    v50 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
    if (v50)
    {
      v56 = v50 + 1;
    }

    else
    {
      v56 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
    }

    _MGLog(v56, 1114, @"failed to create notification object", v51, v52, v53, v54, v55, v67);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "failed to create notification object", buf, 2u);
    }

    goto LABEL_60;
  }

  v21 = v20;
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      v23 = CFArrayGetValueAtIndex(a1, i);
      v24 = sub_1B01916AC(v23, 1);
      if (*(v24 + 8))
      {
        v25 = 0;
        v26 = v24 + 9;
        while (1)
        {
          v27 = v26 + 4 * v25;
          v28 = *(v27 - 10);
          if (v28)
          {
            v29 = *(off_1EB6CFEC0 + 46);
            if (!v29)
            {
              v29 = sub_1B0193150(46, 2);
              v28 = *(v27 - 10);
            }

            if ((v29(v21, v28, v26[v25], v23) & 1) == 0)
            {
              break;
            }
          }

          if (++v25 == 9)
          {
            goto LABEL_37;
          }
        }

        v57 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
        if (v57)
        {
          v63 = v57 + 1;
        }

        else
        {
          v63 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
        }

        _MGLog(v63, 1133, @"notification registration for %@ failed", v58, v59, v60, v61, v62, v23);
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v69 = v23;
          v48 = MEMORY[0x1E69E9C10];
          v49 = "notification registration for %@ failed";
LABEL_56:
          _os_log_impl(&dword_1B0190000, v48, OS_LOG_TYPE_DEFAULT, v49, buf, 0xCu);
        }

        goto LABEL_57;
      }

      v30 = *(v24 + 152);
      v31 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
      if (v31)
      {
        v37 = v31 + 1;
      }

      else
      {
        v37 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
      }

      if ((v30 & 8) != 0)
      {
        _MGLog(v37, 1124, @"%@ is static and will never generate a notification", v32, v33, v34, v35, v36, v23);
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v69 = v23;
          v38 = MEMORY[0x1E69E9C10];
          v39 = "%@ is static and will never generate a notification";
          goto LABEL_36;
        }
      }

      else
      {
        _MGLog(v37, 1126, @"%@ cannot generate notifications yet", v32, v33, v34, v35, v36, v23);
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v69 = v23;
          v38 = MEMORY[0x1E69E9C10];
          v39 = "%@ cannot generate notifications yet";
LABEL_36:
          _os_log_impl(&dword_1B0190000, v38, OS_LOG_TYPE_DEFAULT, v39, buf, 0xCu);
        }
      }

LABEL_37:
      ;
    }
  }

  v40 = *(off_1EB6CFEC0 + 49);
  if (!v40)
  {
    v40 = sub_1B0193150(49, 2);
  }

  if ((v40(v21) & 1) == 0)
  {
    v41 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
    if (v41)
    {
      v47 = v41 + 1;
    }

    else
    {
      v47 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
    }

    _MGLog(v47, 1143, @"can't start notifications for %@", v42, v43, v44, v45, v46, a1);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v69 = a1;
      v48 = MEMORY[0x1E69E9C10];
      v49 = "can't start notifications for %@";
      goto LABEL_56;
    }

LABEL_57:
    v64 = *(off_1EB6CFEC0 + 28);
    if (!v64)
    {
      v64 = sub_1B0193150(28, 2);
    }

    v64(v21);
    goto LABEL_60;
  }

LABEL_61:
  v65 = *MEMORY[0x1E69E9840];
  return v21;
}

BOOL sub_1B0194994(char *a1, const __CFString *a2, int a3)
{
  v3 = sub_1B0192F20(a1, a2, a3);
  v4 = v3;
  if (v3)
  {
    CFRelease(v3);
  }

  return v4 != 0;
}

__CFString *sub_1B01949CC(const __CFData *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    BytePtr = CFDataGetBytePtr(a1);
    Length = CFDataGetLength(a1);
    if (Length == 20)
    {
      v4 = CFStringCreateWithFormat(0, 0, @"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x", *BytePtr, BytePtr[1], BytePtr[2], BytePtr[3], BytePtr[4], BytePtr[5], BytePtr[6], BytePtr[7], BytePtr[8], BytePtr[9], BytePtr[10], BytePtr[11], BytePtr[12], BytePtr[13], BytePtr[14], BytePtr[15], BytePtr[16], BytePtr[17], BytePtr[18], BytePtr[19]);
      if (!v4)
      {
        v5 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
        if (v5)
        {
          v11 = v5 + 1;
        }

        else
        {
          v11 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
        }

        _MGLog(v11, 3539, @"copyHex20String failed", v6, v7, v8, v9, v10, buf[0]);
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "copyHex20String failed", buf, 2u);
        }

        v12 = 0;
        goto LABEL_19;
      }
    }

    else
    {
      v13 = Length;
      v4 = CFStringCreateFromExternalRepresentation(0, a1, 0x8000100u);
      if (!v4)
      {
        MEMORY[0x1EEE9AC00]();
        memcpy(&buf[-((v13 + 16) & 0xFFFFFFFFFFFFFFF0)], BytePtr, v13);
        buf[v13 - ((v13 + 16) & 0xFFFFFFFFFFFFFFF0)] = 0;
        v14 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
        if (v14)
        {
          v20 = v14 + 1;
        }

        else
        {
          v20 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
        }

        _MGLog(v20, 3548, @"CFStringCreateFromExternalRepresentation %s failed", v15, v16, v17, v18, v19, &buf[-((v13 + 16) & 0xF0)]);
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v24 = &buf[-((v13 + 16) & 0xFFFFFFFFFFFFFFF0)];
          _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "CFStringCreateFromExternalRepresentation %s failed", buf, 0xCu);
        }

        v12 = @"FFFFFFFF-FFFFFFFFFFFFFFFF";
        goto LABEL_19;
      }
    }

    v12 = v4;
LABEL_19:
    CFRelease(a1);
    goto LABEL_20;
  }

  v12 = @"ffffffffffffffffffffffffffffffffffffffff";
LABEL_20:
  v21 = *MEMORY[0x1E69E9840];
  return v12;
}

BOOL sub_1B0194C88(uint64_t a1, uint64_t a2, __CFString **a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = *MEMORY[0x1E69E9BD0];
  v7 = sandbox_check();
  v8 = v7;
  if (a3 && v7)
  {
    bzero(buffer, 0x401uLL);
    Mutable = CFStringCreateMutable(0, 0);
    *a3 = Mutable;
    v10 = sub_1B0197908(a1, buffer, 1025);
    CFStringAppendFormat(Mutable, 0, @"pid %d (%s) does not have sandbox access for %@", a1, v10, a2);
  }

  result = v8 == 0;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

__CFString *sub_1B0194D7C()
{
  v0 = sub_1B0191100(@"nFRqKto/RuQAV1P+0/qkBA", 0);

  return sub_1B01949CC(v0);
}

BOOL sub_1B0194DB0(const __CFString *a1, const void *a2, int a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6 = CFGetTypeID(a1);
    if (v6 == CFStringGetTypeID())
    {
      if (CFStringGetLength(a1))
      {
        if (CFStringGetCharacterAtIndex(a1, 0) == a3)
        {
          v7 = sub_1B0197D30(a1);
          if (v7)
          {
            v8 = v7;
            *cStr = 0u;
            v16 = 0u;
            v9 = snprintf(__str, 0x5EuLL, "%s%s", "MGCopyAnswer", v7);
            if ((v9 & 0x80000000) != 0)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
              {
                *md = 136315138;
                v19 = v8;
                _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Obfuscation error for %s", md, 0xCu);
              }
            }

            else
            {
              CC_MD5(__str, v9, md);
              if (!CNEncode())
              {
                BYTE6(v16) = 0;
                v10 = CFStringCreateWithCString(0, cStr, 0x8000100u);
                if (v10)
                {
                  v11 = v10;
                  v12 = CFEqual(a2, v10) != 0;
                  CFRelease(v11);
LABEL_15:
                  free(v8);
                  goto LABEL_11;
                }
              }
            }

            v12 = 0;
            goto LABEL_15;
          }
        }
      }
    }
  }

  v12 = 0;
LABEL_11:
  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

void sub_1B0194F78()
{
  v0 = *(off_1EB6CFEC0 + 29);
  if (!v0)
  {
    v0 = sub_1B0193150(29, 2);
  }

  if (v0 == sub_1B01A3304)
  {
    v1 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
    if (v1)
    {
      v7 = v1 + 1;
    }

    else
    {
      v7 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
    }

    _MGLog(v7, 757, @"_MGSCopyAnswerFromServer can't be loaded", v2, v3, v4, v5, v6, v8[0]);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "_MGSCopyAnswerFromServer can't be loaded", v8, 2u);
    }

    byte_1EB6D0190 = 1;
  }
}

const void *_MGServerCopyAnswerWithError(uint64_t a1, const char **a2, unsigned int *a3, CFTypeRef *a4)
{
  v60 = *MEMORY[0x1E69E9840];
  cf = 0;
  if ((byte_1EB6D0190 & 1) == 0)
  {
    v15 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
    if (v15)
    {
      v21 = v15 + 1;
    }

    else
    {
      v21 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
    }

    _MGLog(v21, 359, @"_MGServerCopyAnswer(%@) called outside of server", v16, v17, v18, v19, v20, a2);
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_32;
    }

    *buf = 138412290;
    v57 = a2;
    v22 = MEMORY[0x1E69E9C10];
    v23 = "_MGServerCopyAnswer(%@) called outside of server";
    v24 = 12;
    goto LABEL_31;
  }

  v8 = *(off_1EB6CFEC0 + 35);
  if (!v8)
  {
    v8 = sub_1B0193150(35, 2);
  }

  v9 = v8(a1);
  v10 = sub_1B01916AC(a2, 1);
  if (v10)
  {
    v11 = v10;
    if (sub_1B01933A0(v10, v9, &cf))
    {
      v12 = v11[3];
      if (!v12 || (v12(a1, &cf) & 1) != 0)
      {
        v13 = sub_1B0191100(a2, 0);
        v14 = sub_1B0193624();
        goto LABEL_33;
      }

      v39 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
      if (v39)
      {
        v45 = v39 + 1;
      }

      else
      {
        v45 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
      }

      _MGLog(v45, 379, @"server_access_check denied access to question %@ for pid %d", v40, v41, v42, v43, v44, a2);
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_32;
      }

      *buf = 138412546;
      v57 = a2;
      v58 = 1024;
      v59 = v9;
      v22 = MEMORY[0x1E69E9C10];
      v23 = "server_access_check denied access to question %@ for pid %d";
    }

    else
    {
      v32 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
      if (v32)
      {
        v38 = v32 + 1;
      }

      else
      {
        v38 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
      }

      _MGLog(v38, 372, @"server asked to answer non-server question %@ for pid %d", v33, v34, v35, v36, v37, a2);
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_32;
      }

      *buf = 138412546;
      v57 = a2;
      v58 = 1024;
      v59 = v9;
      v22 = MEMORY[0x1E69E9C10];
      v23 = "server asked to answer non-server question %@ for pid %d";
    }

    v24 = 18;
LABEL_31:
    _os_log_impl(&dword_1B0190000, v22, OS_LOG_TYPE_DEFAULT, v23, buf, v24);
LABEL_32:
    v13 = 0;
    v14 = 9;
    goto LABEL_33;
  }

  v25 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
  if (v25)
  {
    v31 = v25 + 1;
  }

  else
  {
    v31 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
  }

  _MGLog(v31, 367, @"server asked to answer unknown question %@ for pid %d", v26, v27, v28, v29, v30, a2);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v57 = a2;
    v58 = 1024;
    v59 = v9;
    _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "server asked to answer unknown question %@ for pid %d", buf, 0x12u);
  }

  v13 = 0;
  v14 = 5;
LABEL_33:
  if (a4)
  {
    *a4 = cf;
  }

  else if (cf)
  {
    v46 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
    if (v46)
    {
      v52 = v46 + 1;
    }

    else
    {
      v52 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
    }

    _MGLog(v52, 393, @"%@", v47, v48, v49, v50, v51, cf);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v57 = cf;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }

    CFRelease(cf);
  }

  if (a3)
  {
    *a3 = v14;
  }

  v53 = *MEMORY[0x1E69E9840];
  return v13;
}

const char **_MGServerQuestionIsPlatform(const char **a1)
{
  result = sub_1B01916AC(a1, 1);
  if (result)
  {
    return ((result[19] & 0x20) == 0);
  }

  return result;
}

uint64_t MGRegisterForUpdates(const __CFArray *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = sub_1B01A3520;
  v5[3] = &unk_1E7A928C0;
  v5[4] = a4;
  return MGRegisterForBulkUpdates(a1, a2, a3, v5);
}

uint64_t MGGetSInt64Answer(const char **a1, uint64_t a2)
{
  v4 = a2;
  if (sub_1B01914DC(a1, 5, 6, kCFNumberSInt64Type, &v4))
  {
    return v4;
  }

  else
  {
    return a2;
  }
}

uint64_t sub_1B0195528()
{
  result = MGGetBoolAnswer(@"AJFQheZDyUbvI6RmBMT9Cg");
  if (result)
  {
    result = sub_1B0194994("IODeviceTree:/product/facetime", @"bitrate-3g", 0);
    if (result)
    {
      v1 = 0;
      result = sub_1B0196DF4(@"AllowFaceTimeOverCellular", &v1);
      if ((v1 & 1) == 0)
      {
        return sub_1B019645C();
      }
    }
  }

  return result;
}

CFNumberRef sub_1B0195590(int a1)
{
  v40 = *MEMORY[0x1E69E9840];
  if (sub_1B0193D14() == 4)
  {
    if (a1 > 6)
    {
      goto LABEL_6;
    }

    if (((1 << a1) & 6) != 0)
    {
      v37 = -1;
      *buf = -1;
      v23 = *(off_1EB6CFEC0 + 34);
      if (!v23)
      {
        v23 = sub_1B0193150(34, 2);
      }

      if (!v23(buf, &v37))
      {
        goto LABEL_33;
      }

      if (a1 == 1)
      {
        v24 = buf;
      }

      else
      {
        v24 = &v37;
      }

      v22 = CFNumberCreate(0, kCFNumberSInt32Type, v24);
      goto LABEL_34;
    }

    if (((1 << a1) & 0x30) == 0)
    {
      if (((1 << a1) & 0x48) != 0)
      {
LABEL_33:
        v22 = 0;
        goto LABEL_34;
      }

LABEL_6:
      v2 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MGIOMFBSupport.c", 47);
      if (v2)
      {
        v8 = v2 + 1;
      }

      else
      {
        v8 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MGIOMFBSupport.c";
      }

      _MGLog(v8, 237, @"request for unknown screen param %d", v3, v4, v5, v6, v7, a1);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        sub_1B01F017C(a1);
      }

      goto LABEL_33;
    }
  }

  v9 = MGCopyAnswer(@"oBbtJ8x+s1q0OkaiocPuog");
  v10 = v9;
  if (v9)
  {
    v11 = CFGetTypeID(v9);
    if (v11 == CFDataGetTypeID() && CFDataGetLength(v10) == 24)
    {
      BytePtr = CFDataGetBytePtr(v10);
      v13 = BytePtr;
      if (a1 <= 3)
      {
        switch(a1)
        {
          case 1:
            v14 = *BytePtr;
            break;
          case 2:
            v13 = BytePtr + 4;
            v14 = *(BytePtr + 1);
            break;
          case 3:
            v13 = BytePtr + 8;
            v14 = *(BytePtr + 2);
            break;
          default:
LABEL_41:
            v28 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MGIOMFBSupport.c", 47);
            if (v28)
            {
              v34 = v28 + 1;
            }

            else
            {
              v34 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MGIOMFBSupport.c";
            }

            _MGLog(v34, 266, @"request for unknown screen param %d", v29, v30, v31, v32, v33, a1);
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109120;
              v39 = a1;
              _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "request for unknown screen param %d", buf, 8u);
            }

            goto LABEL_53;
        }

LABEL_47:
        if (v14 != -1)
        {
          v35 = kCFNumberSInt32Type;
LABEL_52:
          v22 = CFNumberCreate(0, v35, v13);
LABEL_25:
          CFRelease(v10);
          goto LABEL_34;
        }

        goto LABEL_53;
      }

      switch(a1)
      {
        case 4:
          v13 = BytePtr + 12;
          v27 = *(BytePtr + 3);
          break;
        case 5:
          v13 = BytePtr + 16;
          v27 = *(BytePtr + 4);
          break;
        case 6:
          v13 = BytePtr + 20;
          v14 = *(BytePtr + 5);
          goto LABEL_47;
        default:
          goto LABEL_41;
      }

      if (v27 != -1.0)
      {
        v35 = kCFNumberFloatType;
        goto LABEL_52;
      }

LABEL_53:
      v22 = 0;
      goto LABEL_25;
    }
  }

  v15 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MGIOMFBSupport.c", 47);
  if (v15)
  {
    v21 = v15 + 1;
  }

  else
  {
    v21 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MGIOMFBSupport.c";
  }

  _MGLog(v21, 244, @"failed to get static screen info", v16, v17, v18, v19, v20, v36);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "failed to get static screen info", buf, 2u);
  }

  v22 = 0;
  if (v10)
  {
    goto LABEL_25;
  }

LABEL_34:
  v25 = *MEMORY[0x1E69E9840];
  return v22;
}

uint64_t sub_1B01958D0()
{
  v1 = *(off_1EB6CFEC0 + 38);
  if (v1)
  {
  }

  else
  {
    v1 = sub_1B0193150(38, 2);
  }

  return v1();
}

__CFDictionary *MGCopyMultipleAnswers(const __CFArray *a1, const __CFDictionary *a2)
{
  Count = CFArrayGetCount(a1);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
      if (a2)
      {
        CFDictionaryGetValue(a2, ValueAtIndex);
      }

      v8 = sub_1B0191100(ValueAtIndex, 0);
      if (v8)
      {
        v9 = v8;
        CFDictionaryAddValue(Mutable, ValueAtIndex, v8);
        CFRelease(v9);
      }
    }
  }

  return Mutable;
}

unint64_t sub_1B01959FC(__CFString *cf1)
{
  v1 = cf1;
  v32 = *MEMORY[0x1E69E9840];
  if (!cf1)
  {
    goto LABEL_30;
  }

  if (CFEqual(cf1, @"<GERMANY>"))
  {
    if (qword_1ED446D50 != -1)
    {
      sub_1B0193D4C();
    }

    v2 = @"D";
    switch(dword_1ED446CB0)
    {
      case 1:
        v3 = 0;
        v4 = 0;
        v1 = @"DN";
        v5 = @"ZD";
        goto LABEL_14;
      case 3:
      case 2:
        v5 = 0;
        v3 = dword_1ED446CB0 != 2;
        if (dword_1ED446CB0 != 2)
        {
          v2 = 0;
        }

        break;
      case 6:
        v3 = 0;
        v5 = 0;
        break;
      default:
        v22 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/utility.c", 47);
        if (v22)
        {
          v28 = v22 + 1;
        }

        else
        {
          v28 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/utility.c";
        }

        _MGLog(v28, 884, @"Unsupported device type for Germany Region Code check", v23, v24, v25, v26, v27, v29);
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_29;
        }

        *buf = 0;
        v17 = MEMORY[0x1E69E9C10];
        v18 = "Unsupported device type for Germany Region Code check";
        v19 = 2;
        goto LABEL_28;
    }

    v1 = @"FD";
  }

  else
  {
    v2 = 0;
    v5 = 0;
    v3 = 1;
  }

  v4 = 1;
LABEL_14:
  v6 = MGCopyAnswer(@"h63QSdBCiT/z0WU6rdQv6Q");
  if (!v6)
  {
    v10 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/utility.c", 47);
    if (v10)
    {
      v16 = v10 + 1;
    }

    else
    {
      v16 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/utility.c";
    }

    _MGLog(v16, 900, @"Could not get region code; assuming device is not in region %@", v11, v12, v13, v14, v15, v1);
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_29;
    }

    *buf = 138412290;
    v31 = v1;
    v17 = MEMORY[0x1E69E9C10];
    v18 = "Could not get region code; assuming device is not in region %@";
    v19 = 12;
LABEL_28:
    _os_log_impl(&dword_1B0190000, v17, OS_LOG_TYPE_DEFAULT, v18, buf, v19);
LABEL_29:
    v1 = 0;
    goto LABEL_30;
  }

  v7 = v6;
  v8 = CFEqual(v1, v6);
  v1 = v8 != 0;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = v4;
  }

  if ((v9 & 1) == 0)
  {
    v1 = CFEqual(v5, v7) != 0;
  }

  if (((v3 | v1) & 1) == 0)
  {
    v1 = CFEqual(v2, v7) != 0;
  }

  CFRelease(v7);
LABEL_30:
  v20 = *MEMORY[0x1E69E9840];
  return v1;
}

void sub_1B0195C84()
{
  v101 = *MEMORY[0x1E69E9840];
  v100 = 0;
  v99 = 0u;
  v98 = 0u;
  *buffer = 0u;
  memcpy(__dst, "/Library/RegionFeatures/RegionFeatures_", sizeof(__dst));
  memcpy(v95, "/System/Library/RegionFeatures/RegionFeatures_", sizeof(v95));
  memset(&v90, 0, sizeof(v90));
  v0 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MGSWBehaviors.c";
  if (stat("/Library/RegionFeatures", &v90) || (v90.st_mode & 0xF000) != 0x4000)
  {
    v2 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MGSWBehaviors.c", 47);
    if (v2)
    {
      v8 = v2 + 1;
    }

    else
    {
      v8 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MGSWBehaviors.c";
    }

    _MGLog(v8, 96, @"RegionFeatures directory not found, using legacy path", v3, v4, v5, v6, v7, v88);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "RegionFeatures directory not found, using legacy path", buf, 2u);
    }

    v1 = v95;
  }

  else
  {
    v1 = __dst;
  }

  v9 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v11 = sub_1B0193D14();
  v12 = MEMORY[0x1E695E4C0];
  if (v11 == 4)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = MEMORY[0x1E695E4C0];
    goto LABEL_53;
  }

  v17 = sub_1B0192F20("IODeviceTree:/chosen", @"software-behavior", 0);
  v13 = v17;
  if (!v17 || (v18 = CFGetTypeID(v17), v18 != CFDataGetTypeID()) || CFDataGetLength(v13) <= 3)
  {
    v20 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MGSWBehaviors.c", 47);
    if (v20)
    {
      v26 = v20 + 1;
    }

    else
    {
      v26 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MGSWBehaviors.c";
    }

    _MGLog(v26, 113, @"Could not get software behavior data from the registry\n", v21, v22, v23, v24, v25, v88);
    v19 = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Could not get software behavior data from the registry\n", buf, 2u);
      v19 = 0;
    }

LABEL_22:
    CFDictionarySetValue(Mutable, @"SwBHValid", *v12);
    v27 = MGCopyAnswer(@"h63QSdBCiT/z0WU6rdQv6Q");
    v14 = v27;
    if (!v27 || !CFStringGetCString(v27, buffer, 50, 0x8000100u))
    {
      v33 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MGSWBehaviors.c", 47);
      if (v33)
      {
        v39 = v33 + 1;
      }

      else
      {
        v39 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MGSWBehaviors.c";
      }

      _MGLog(v39, 127, @"Could not convert region code\n", v34, v35, v36, v37, v38, v88);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Could not convert region code\n", buf, 2u);
      }

      v15 = 0;
      goto LABEL_47;
    }

    v28 = strlen(buffer);
    buffer[v28] = 9;
    v29 = v28 + 1;
    buffer[v28 + 1] = 0;
    v30 = sub_1B0193D14() - 1;
    if (v30 < 0xB && ((0x477u >> v30) & 1) != 0)
    {
      v31 = off_1E7A926D8[v30];
      __strcat_chk();
      v32 = fopen(v1, "r");
      if (v32)
      {
        v15 = v32;
        while (1)
        {
          if (feof(v15))
          {
            goto LABEL_46;
          }

          if (!fgets(v1, 1024, v15))
          {
            break;
          }

          if (!strncmp(v1, buffer, v29))
          {
            v89 = 0;
            if (sscanf(v1, "%*s\t0x%x", &v89) == 1)
            {
              v19 = v89;
              goto LABEL_46;
            }

            v80 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MGSWBehaviors.c", 47);
            if (v80)
            {
              v86 = v80 + 1;
            }

            else
            {
              v86 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MGSWBehaviors.c";
            }

            _MGLog(v86, 184, @"Error parsing line: '%s'\n", v81, v82, v83, v84, v85, v1);
            v87 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
            v12 = MEMORY[0x1E695E4C0];
            if (v87)
            {
              *buf = 136315138;
              *&buf[4] = v1;
              v78 = MEMORY[0x1E69E9C10];
              v79 = "Error parsing line: '%s'\n";
              goto LABEL_81;
            }

            goto LABEL_47;
          }
        }

        v67 = feof(v15);
        v12 = MEMORY[0x1E695E4C0];
        if (!v67)
        {
          v68 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MGSWBehaviors.c", 47);
          if (v68)
          {
            v0 = v68 + 1;
          }

          v69 = __error();
          v70 = strerror(*v69);
          _MGLog(v0, 176, @"Error reading file: %s\n", v71, v72, v73, v74, v75, v70);
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            v76 = __error();
            v77 = strerror(*v76);
            *buf = 136315138;
            *&buf[4] = v77;
            v78 = MEMORY[0x1E69E9C10];
            v79 = "Error reading file: %s\n";
LABEL_81:
            _os_log_impl(&dword_1B0190000, v78, OS_LOG_TYPE_DEFAULT, v79, buf, 0xCu);
            goto LABEL_47;
          }
        }

        goto LABEL_47;
      }

      v57 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MGSWBehaviors.c", 47);
      if (v57)
      {
        v58 = v57 + 1;
      }

      else
      {
        v58 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MGSWBehaviors.c";
      }

      v59 = __error();
      strerror(*v59);
      _MGLog(v58, 169, @"Could not open %s: %s\n", v60, v61, v62, v63, v64, v1);
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_45;
      }

      v65 = __error();
      v66 = strerror(*v65);
      *buf = 136315394;
      *&buf[4] = v1;
      *&buf[12] = 2080;
      *&buf[14] = v66;
      v47 = MEMORY[0x1E69E9C10];
      v48 = "Could not open %s: %s\n";
      v49 = 22;
    }

    else
    {
      v40 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MGSWBehaviors.c", 47);
      if (v40)
      {
        v46 = v40 + 1;
      }

      else
      {
        v46 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MGSWBehaviors.c";
      }

      _MGLog(v46, 162, @"device class not supported", v41, v42, v43, v44, v45, v88);
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
LABEL_45:
        v15 = 0;
LABEL_46:
        v12 = MEMORY[0x1E695E4C0];
        goto LABEL_47;
      }

      *buf = 0;
      v47 = MEMORY[0x1E69E9C10];
      v48 = "device class not supported";
      v49 = 2;
    }

    _os_log_impl(&dword_1B0190000, v47, OS_LOG_TYPE_DEFAULT, v48, buf, v49);
    goto LABEL_45;
  }

  v19 = *CFDataGetBytePtr(v13);
  if ((v19 & 1) == 0)
  {
    goto LABEL_22;
  }

  CFDictionarySetValue(Mutable, @"SwBHValid", *MEMORY[0x1E695E4D0]);
  v15 = 0;
  v14 = 0;
LABEL_47:
  if (v19)
  {
    v50 = v19;
    v51 = v12;
    *&buf[4] = 0;
    *&buf[12] = 0;
    *buf = v50;
    v52 = CFDataCreate(v9, buf, 16);
    CFDictionarySetValue(Mutable, @"SoftwareBehavior", v52);
    CFRelease(v52);
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = sub_1B01967A0;
    v92 = &unk_1E7A92610;
    v93 = Mutable;
    v94 = v50;
    v53 = off_1E7A92638;
    v54 = -10;
    v16 = MEMORY[0x1E695E4D0];
    do
    {
      (*&buf[16])(buf, (v54 + 11), *(v53 - 1), *v53);
      v53 += 2;
    }

    while (!__CFADD__(v54++, 1));
    v12 = v51;
  }

  else
  {
    v16 = MEMORY[0x1E695E4C0];
  }

LABEL_53:
  CFDictionarySetValue(Mutable, @"RegionalBehaviorValid", *v16);
  if (sub_1B01959FC(@"CH"))
  {
    CFDictionarySetValue(Mutable, @"RegionalBehaviorGB18030", *MEMORY[0x1E695E4D0]);
  }

  if (sub_1B01959FC(@"KH"))
  {
    CFDictionarySetValue(Mutable, @"RegionalBehaviorNoPasscodeLocationTiles", *MEMORY[0x1E695E4D0]);
  }

  if (sub_1B0193D14() == 7)
  {
    CFDictionarySetValue(Mutable, @"RegionalBehaviorEUVolumeLimit", *v12);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v15)
  {
    fclose(v15);
  }

  qword_1ED446D18 = Mutable;
  v56 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B019645C()
{
  v40 = *MEMORY[0x1E69E9840];
  if (sub_1B0193D14() == 4)
  {
    v0 = 1;
  }

  else
  {
    v35 = 0;
    v1 = sub_1B0196DF4(@"AllowsFaceTime", &v35);
    if (v35)
    {
      v0 = v1;
    }

    else
    {
      v2 = sub_1B01921E8("/System/Library/CoreServices/OverrideSoftwareBehaviors.plist");
      v0 = sub_1B0197020();
      v3 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
      if (v3)
      {
        v9 = v3 + 1;
      }

      else
      {
        v9 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
      }

      _MGLog(v9, 4486, @"Determined that voip capability is: %d", v4, v5, v6, v7, v8, v0);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *v37 = v0;
        _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Determined that voip capability is: %d", buf, 8u);
      }

      if (v2)
      {
        v10 = sub_1B0191100(@"h63QSdBCiT/z0WU6rdQv6Q", 0);
        if (v10)
        {
          v11 = v10;
          if (CFDictionaryContainsKey(v2, v10))
          {
            Value = CFDictionaryGetValue(v2, v11);
            if (Value)
            {
              v13 = Value;
              v14 = CFGetTypeID(Value);
              if (v14 == CFDictionaryGetTypeID())
              {
                if (CFDictionaryContainsKey(v13, @"voip"))
                {
                  v15 = CFDictionaryGetValue(v13, @"voip");
                  if (v15)
                  {
                    v16 = v15;
                    v17 = CFGetTypeID(v15);
                    if (v17 == CFBooleanGetTypeID() && v16 == *MEMORY[0x1E695E4D0])
                    {
                      v18 = sub_1B019C840("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c");
                      _MGLog(v18, 4513, @"Found the override for regionCode: %@", v19, v20, v21, v22, v23, v11);
                      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138412290;
                        *v37 = v11;
                        _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Found the override for regionCode: %@", buf, 0xCu);
                      }

                      v34 = 0;
                      LODWORD(v0) = sub_1B0196DF4(@"AllowsVoIP", &v34);
                      v24 = *(off_1EB6CFEC0 + 40);
                      if (!v24)
                      {
                        v24 = sub_1B0193150(40, 2);
                      }

                      v25 = v24(@"disablevoipforlocale");
                      v26 = sub_1B019C840("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c");
                      _MGLog(v26, 4528, @"Determined carrier_override_present: %d, carrier_override: %d, springboard_locale_override: %d ", v27, v28, v29, v30, v31, v34);
                      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 67109632;
                        *v37 = v34;
                        *&v37[4] = 1024;
                        *&v37[6] = v0;
                        v38 = 1024;
                        v39 = v25;
                        _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Determined carrier_override_present: %d, carrier_override: %d, springboard_locale_override: %d ", buf, 0x14u);
                      }

                      if (v34)
                      {
                        v0 = v0;
                      }

                      else
                      {
                        v0 = v25 ^ 1u;
                      }
                    }
                  }
                }
              }
            }
          }

          CFRelease(v11);
        }

        CFRelease(@"voip");
        CFRelease(v2);
      }
    }
  }

  v32 = *MEMORY[0x1E69E9840];
  return v0;
}

void sub_1B01967A0(uint64_t a1, char a2, int a3, void *key)
{
  v4 = *(a1 + 32);
  if ((*(a1 + 40) >> a2))
  {
    v5 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v5 = MEMORY[0x1E695E4C0];
  }

  CFDictionarySetValue(*(a1 + 32), key, *v5);
}

id MobileGestalt_copy_hwModelDescriptionForCamera_obj()
{
  v0 = MGCopyAnswer(@"yAfB6E2v0++rHtdW7SDg8w");

  return v0;
}

uint64_t sub_1B0196830()
{
  v0 = sub_1B0194994("IODeviceTree:/product", @"assistant", 0);
  v1 = MEMORY[0x1E695E4D0];
  if (!v0)
  {
    v1 = MEMORY[0x1E695E4C0];
  }

  return *v1;
}

CFTypeRef sub_1B0196878(uint64_t a1, uint64_t a2, CFTypeID a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = sub_1B0196D3C;
  v4[3] = &unk_1E7A92F28;
  v4[4] = a2;
  return sub_1B019697C(a1, v4, a3);
}

uint64_t sub_1B01968E4()
{
  valuePtr = 0;
  v0 = *(off_1EB6CFEC0 + 6);
  if (!v0)
  {
    v0 = sub_1B0193150(6, 2);
  }

  TypeID = CFNumberGetTypeID();
  v2 = sub_1B0196878("_CTServerConnectionCopyDualSimCapability", v0, TypeID);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  if (CFNumberGetValue(v2, kCFNumberIntType, &valuePtr))
  {
    v4 = valuePtr == 3;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  CFRelease(v3);
  return v5;
}

CFTypeRef sub_1B019697C(uint64_t a1, uint64_t a2, CFTypeID a3)
{
  v60[2] = *MEMORY[0x1E69E9840];
  cf = 0;
  v6 = *(off_1EB6CFEC0 + 19);
  if (!v6)
  {
    v6 = sub_1B0193150(19, 2);
  }

  v7 = *MEMORY[0x1E695E480];
  global_queue = dispatch_get_global_queue(0, 0);
  v9 = v6(v7, @"com.apple.mobilegestalt", global_queue, 0);
  if (v9)
  {
    v10 = v9;
    v11 = (*(a2 + 16))(a2, v9, &cf);
    v12 = v11;
    if (!v11)
    {
      if (cf)
      {
        v24 = CFGetTypeID(cf);
        if (v24 == a3)
        {
          v22 = cf;
          cf = 0;
          goto LABEL_27;
        }

        v44 = v24;
        v45 = CFCopyTypeIDDescription(a3);
        v46 = CFCopyTypeIDDescription(v44);
        v47 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MGBasebandSupport.c", 47);
        if (v47)
        {
          v53 = v47 + 1;
        }

        else
        {
          v53 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MGBasebandSupport.c";
        }

        _MGLog(v53, 67, @"%s: CommCenter result should have been %@ but was %@", v48, v49, v50, v51, v52, a1);
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v57 = a1;
          v58 = 2112;
          *v59 = v45;
          *&v59[8] = 2112;
          v60[0] = v46;
          _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s: CommCenter result should have been %@ but was %@", buf, 0x20u);
        }

        if (v45)
        {
          CFRelease(v45);
        }

        if (v46)
        {
          CFRelease(v46);
        }

LABEL_26:
        v22 = 0;
LABEL_27:
        CFRelease(v10);
        if (cf)
        {
          CFRelease(cf);
        }

        goto LABEL_29;
      }

      v37 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MGBasebandSupport.c", 47);
      if (v37)
      {
        v43 = v37 + 1;
      }

      else
      {
        v43 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MGBasebandSupport.c";
      }

      _MGLog(v43, 58, @"%s: CommCenter failed to provide info but returned no error", v38, v39, v40, v41, v42, a1);
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_26;
      }

      *buf = 136315138;
      v57 = a1;
      v32 = MEMORY[0x1E69E9C10];
      v33 = "%s: CommCenter failed to provide info but returned no error";
      v34 = 12;
LABEL_25:
      _os_log_impl(&dword_1B0190000, v32, OS_LOG_TYPE_DEFAULT, v33, buf, v34);
      goto LABEL_26;
    }

    v13 = HIDWORD(v11);
    if (v11 == 2)
    {
      v14 = mach_error_string(SHIDWORD(v11));
    }

    else
    {
      if (v11 != 1)
      {
        v23 = "Unknown";
        goto LABEL_20;
      }

      v14 = strerror(SHIDWORD(v11));
    }

    v23 = v14;
LABEL_20:
    v25 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MGBasebandSupport.c", 47);
    if (v25)
    {
      v31 = v25 + 1;
    }

    else
    {
      v31 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MGBasebandSupport.c";
    }

    _MGLog(v31, 53, @"%s: CommCenter error: %d:%d (%s)", v26, v27, v28, v29, v30, a1);
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    *buf = 136315906;
    v57 = a1;
    v58 = 1024;
    *v59 = v12;
    *&v59[4] = 1024;
    *&v59[6] = v13;
    LOWORD(v60[0]) = 2080;
    *(v60 + 2) = v23;
    v32 = MEMORY[0x1E69E9C10];
    v33 = "%s: CommCenter error: %d:%d (%s)";
    v34 = 34;
    goto LABEL_25;
  }

  v15 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MGBasebandSupport.c", 47);
  if (v15)
  {
    v21 = v15 + 1;
  }

  else
  {
    v21 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MGBasebandSupport.c";
  }

  _MGLog(v21, 41, @"could not establish connection to CommCenter", v16, v17, v18, v19, v20, v54);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "could not establish connection to CommCenter", buf, 2u);
  }

  v22 = 0;
LABEL_29:
  v35 = *MEMORY[0x1E69E9840];
  return v22;
}

uint64_t sub_1B0196D4C()
{
  if (qword_1ED446D20 != -1)
  {
    sub_1B01967D4();
  }

  v0 = qword_1ED446D18;
  if (qword_1ED446D18)
  {
    CFRetain(qword_1ED446D18);
  }

  return v0;
}

BOOL sub_1B0196D98(uint64_t a1, const void *a2)
{
  v3 = sub_1B0196D4C();
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = CFDictionaryGetValue(v3, a2) == *MEMORY[0x1E695E4D0];
  CFRelease(v4);
  return v5;
}

BOOL sub_1B0196DF4(uint64_t a1, _BYTE *a2)
{
  v7 = 0;
  if (!a2)
  {
    sub_1B01F0150();
  }

  v4 = 1;
  if (sub_1B0196E7C(a1, 1, &v7 + 1))
  {
    v5 = 0;
  }

  else
  {
    v4 = sub_1B0196E7C(a1, 2, &v7);
    v5 = v7;
  }

  *a2 = (HIBYTE(v7) | v5) & 1;
  return v4;
}

BOOL sub_1B0196E7C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v11 = 0;
  if (!a3)
  {
    sub_1B01F0124();
  }

  v6 = CFStringCreateWithFormat(0, 0, @"com.apple.carrier_%d", a2);
  v7 = sub_1B0196F74(@"/var/mobile/Library/Carrier Bundles", v6, a1, &v11 + 1);
  if (v6)
  {
    CFRelease(v6);
  }

  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v9 = CFStringCreateWithFormat(0, 0, @"com.apple.country.carrier_%d", a2);
    v8 = sub_1B0196F74(@"/var/mobile/Library/CountryBundles/", v9, a1, &v11);
    if (v9)
    {
      CFRelease(v9);
    }
  }

  *a3 = (HIBYTE(v11) | v11) & 1;
  return v8;
}

BOOL sub_1B0196F74(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (!a4)
  {
    sub_1B01F00F8();
  }

  *a4 = 0;
  v5 = *MEMORY[0x1E695E8B8];
  v6 = *MEMORY[0x1E695E898];
  v7 = _CFPreferencesCopyValueWithContainer();
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = CFGetTypeID(v7);
  if (v9 == CFBooleanGetTypeID())
  {
    *a4 = 1;
    v10 = CFBooleanGetValue(v8) != 0;
  }

  else
  {
    v10 = 0;
  }

  CFRelease(v8);
  return v10;
}

uint64_t sub_1B0197020()
{
  v2 = 0;
  result = sub_1B0196DF4(@"AllowsVoIP", &v2);
  if ((v2 & 1) == 0)
  {
    if (MGGetBoolAnswer(@"6MnVtR+c9LeR46bMxvR5Yw"))
    {
      if (MGGetBoolAnswer(@"L5al7b+7JATD/izSJeH0aQ"))
      {
        return 0;
      }

      else
      {
        v1 = *(off_1EB6CFEC0 + 40);
        if (!v1)
        {
          v1 = sub_1B0193150(40, 2);
        }

        return v1(@"voip");
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

CFStringRef sub_1B01970CC(char *a1, const __CFString *a2, int a3)
{
  result = sub_1B0192F20(a1, a2, a3);
  if (result)
  {
    v5 = result;
    v6 = sub_1B0197110(result, a2);
    CFRelease(v5);
    return v6;
  }

  return result;
}

CFStringRef sub_1B0197110(const void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = CFGetTypeID(a1);
  if (v4 == CFStringGetTypeID())
  {

    return CFRetain(a1);
  }

  v6 = CFGetTypeID(a1);
  if (v6 != CFDataGetTypeID() || CFDataGetLength(a1) < 1)
  {
    v10 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/MGIOKitSupport.c", 47);
    if (v10)
    {
      v16 = v10 + 1;
    }

    else
    {
      v16 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/MGIOKitSupport.c";
    }

    _MGLog(v16, 553, @"Unexpected type returned for key %@.", v11, v12, v13, v14, v15, a2);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      sub_1B01F1260(a2);
    }

    return 0;
  }

  BytePtr = CFDataGetBytePtr(a1);
  if (BytePtr[CFDataGetLength(a1) - 1])
  {
    v8 = CFDataGetBytePtr(a1);
    Length = CFDataGetLength(a1);

    return CFStringCreateWithBytes(0, v8, Length, 0x8000100u, 0);
  }

  else
  {

    return CFStringCreateWithCString(0, BytePtr, 0x8000100u);
  }
}

BOOL sub_1B01972A4()
{
  v0 = sub_1B01970CC("IODeviceTree:/chosen", @"osenvironment", 0);
  if (v0)
  {
    v1 = v0;
    v2 = CFStringCompare(v0, @"diagnostics", 0);
    CFRelease(v1);
    if (v2 == kCFCompareEqualTo)
    {
      return 1;
    }
  }

  return sub_1B0194994("IODeviceTree:/product", @"boot-ios-diagnostics", 0);
}

CFStringRef sub_1B0197334()
{
  result = SCDynamicStoreCopyComputerName(0, 0);
  if (!result)
  {
    v1 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
    if (v1)
    {
      v7 = v1 + 1;
    }

    else
    {
      v7 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
    }

    _MGLog(v7, 5921, @"Failed to get Computer Name, returning device name", v2, v3, v4, v5, v6, v8[0]);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to get Computer Name, returning device name", v8, 2u);
    }

    return sub_1B0191100(@"vme9Buk6XiWFCXoHApxNFA", 0);
  }

  return result;
}

const UInt8 *sub_1B01973F8()
{
  result = sub_1B0192B00();
  if (result)
  {
    v1 = 0;
    for (i = &qword_1B01F9458; ; i += 4)
    {
      v3 = *result == *i && *(result + 1) == i[1];
      if (v3 && *(result + 4) == *(i + 4))
      {
        break;
      }

      if (++v1 == 501)
      {
        return result;
      }
    }

    dword_1ED446CAC = v1;
  }

  return result;
}

uint64_t MGGetProductType()
{
  if (qword_1ED446D38 != -1)
  {
    sub_1B01973E4();
  }

  if (dword_1ED446CAC == -1)
  {
    return -1;
  }

  else
  {
    return qword_1B01F9458[4 * dword_1ED446CAC + 3];
  }
}

uint64_t _MGCacheValid()
{
  v26 = *MEMORY[0x1E69E9840];
  if (unlink("/var/mobile/Library/Caches/com.apple.MobileGestalt.plist"))
  {
    if (*__error() != 2)
    {
      v0 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestaltCache.c";
      v1 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestaltCache.c", 47);
      if (v1)
      {
        v0 = v1 + 1;
      }

      v2 = __error();
      v3 = strerror(*v2);
      _MGLog(v0, 226, @"Failed to delete legacy gestalt cache: %s", v4, v5, v6, v7, v8, v3);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v9 = __error();
        v10 = strerror(*v9);
        *buf = 136315138;
        v25 = v10;
        v11 = MEMORY[0x1E69E9C10];
        v12 = "Failed to delete legacy gestalt cache: %s";
        v13 = 12;
LABEL_12:
        _os_log_impl(&dword_1B0190000, v11, OS_LOG_TYPE_DEFAULT, v12, buf, v13);
      }
    }
  }

  else
  {
    v14 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestaltCache.c", 47);
    if (v14)
    {
      v20 = v14 + 1;
    }

    else
    {
      v20 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestaltCache.c";
    }

    _MGLog(v20, 229, @"Successfully deleted legacy gestalt cache", v15, v16, v17, v18, v19, v23);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v11 = MEMORY[0x1E69E9C10];
      v12 = "Successfully deleted legacy gestalt cache";
      v13 = 2;
      goto LABEL_12;
    }
  }

  result = sub_1B01921F0(0);
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

float MobileGestalt_get_mainScreenScale(void *a1)
{
  v1 = a1;
  valuePtr = -1082130432;
  v2 = MGCopyAnswer(@"main-screen-scale");
  if (v2)
  {
    v3 = v2;
    v4 = CFGetTypeID(v2);
    if (v4 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v3, kCFNumberFloat32Type, &valuePtr))
      {
LABEL_10:
        CFRelease(v3);
        v6 = *&valuePtr;
        goto LABEL_11;
      }

      v5 = [v1 log];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v5 = [v1 log];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F4268();
      }
    }

    goto LABEL_10;
  }

  v6 = -1.0;
LABEL_11:

  return v6;
}

__CFString *sub_1B0197730()
{
  if (sub_1B0193D14() == 3)
  {
    if (dyld_program_sdk_at_least())
    {
      return @"iPadOS";
    }

    else
    {
      return @"iOS";
    }
  }

  if ((sub_1B0193D14() == 1 || sub_1B0193D14() == 2 || sub_1B0193D14() == 3) && !sub_1B01978E8())
  {
    return @"iOS";
  }

  if (sub_1B0193D14() == 6)
  {
    return @"watchOS";
  }

  if (sub_1B0193D14() == 8)
  {
    return @"bridgeOS";
  }

  if (sub_1B0193D14() == 4 || sub_1B0193D14() == 7)
  {
    v1 = sub_1B0191100(@"h63QSdBCiT/z0WU6rdQv6Q", 0);
    v2 = CFLocaleCopyCurrent();
    Value = CFLocaleGetValue(v2, *MEMORY[0x1E695E6D0]);
    if (v1 && CFEqual(v1, @"CH"))
    {
      v0 = @"Apple TVOS";
    }

    else
    {
      if (Value && CFEqual(Value, @"CH"))
      {
        v0 = @"Apple TVOS";
      }

      else
      {
        v0 = @"tvOS";
      }

      if (!v1)
      {
        goto LABEL_25;
      }
    }

    CFRelease(v1);
LABEL_25:
    if (v2)
    {
      CFRelease(v2);
    }

    return v0;
  }

  if (sub_1B0193D14() == 11)
  {
    return @"visionOS";
  }

  return sub_1B0191100(@"ivIu8YTDnBSrYv/SN4G8Ag", 0);
}

const char *sub_1B0197908(int a1, void *buffer, int buffersize)
{
  if (proc_pidinfo(a1, 11, 1uLL, buffer, buffersize))
  {
    return "unknown pid";
  }

  v5 = rindex(buffer, 47);
  if (v5)
  {
    return v5 + 1;
  }

  else
  {
    return buffer;
  }
}

BOOL sub_1B0197974(uint64_t a1, const void *a2, int a3, CFMutableStringRef *a4)
{
  v38 = *MEMORY[0x1E69E9840];
  bzero(buffer, 0x401uLL);
  v8 = *(off_1EB6CFEC0 + 30);
  if (!v8)
  {
    v8 = sub_1B0193150(30, 2);
  }

  v9 = v8(a1, "com.apple.private.MobileGestalt.AllowedProtectedKeys");
  v10 = v9;
  if (!v9)
  {
LABEL_16:
    v12 = 0;
    if (!a4)
    {
      goto LABEL_33;
    }

    goto LABEL_17;
  }

  v11 = CFGetTypeID(v9);
  if (v11 != CFArrayGetTypeID())
  {
    v13 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
    v14 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
    if (v14)
    {
      v13 = v14 + 1;
    }

    v15 = *(off_1EB6CFEC0 + 35);
    if (!v15)
    {
      v15 = sub_1B0193150(35, 2);
    }

    v16 = v15(a1);
    _MGLog(v13, 466, @"pid %d entitlement is not an array", v17, v18, v19, v20, v21, v16);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(off_1EB6CFEC0 + 35);
      if (!v22)
      {
        v22 = sub_1B0193150(35, 2);
      }

      *buf = 67109120;
      v36 = v22(a1);
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "pid %d entitlement is not an array", buf, 8u);
    }

    goto LABEL_16;
  }

  v39.length = CFArrayGetCount(v10);
  v39.location = 0;
  if (CFArrayContainsValue(v10, v39, a2))
  {
    v12 = 1;
    if (!a4)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v12 = sub_1B0197C58(v10, a2, a3);
    if (!a4)
    {
      goto LABEL_33;
    }
  }

LABEL_17:
  v23 = *(off_1EB6CFEC0 + 35);
  if (!v23)
  {
    v23 = sub_1B0193150(35, 2);
  }

  v24 = v23(a1);
  if (!v12)
  {
    if (*a4)
    {
      CFStringAppendFormat(*a4, 0, @" and IS NOT appropriately entitled", v31);
      goto LABEL_33;
    }

    Mutable = CFStringCreateMutable(0, 0);
    *a4 = Mutable;
    v33 = sub_1B0197908(v24, buffer, 1025);
    v34 = a2;
    v32 = v24;
    v28 = @"pid %d (%s) IS NOT appropriately entitled to fetch %@";
    goto LABEL_32;
  }

  v25 = MGGetBoolAnswer(@"LBJfwOEzExRxzlAnSuI7eg");
  v26 = *a4;
  if (v25)
  {
    if (v26)
    {
      CFStringAppendFormat(v26, 0, @" but IS appropriately entitled; NO SANDBOX BUGS need be filed", v31);
      goto LABEL_33;
    }

    Mutable = CFStringCreateMutable(0, 0);
    *a4 = Mutable;
    v33 = sub_1B0197908(v24, buffer, 1025);
    v34 = a2;
    v32 = v24;
    v28 = @"pid %d (%s) IS appropriately entitled to fetch %@";
LABEL_32:
    CFStringAppendFormat(Mutable, 0, v28, v32, v33, v34);
    goto LABEL_33;
  }

  if (v26)
  {
    CFRelease(v26);
  }

  *a4 = 0;
LABEL_33:
  if (v10)
  {
    CFRelease(v10);
  }

  v29 = *MEMORY[0x1E69E9840];
  return v12;
}

BOOL sub_1B0197C58(_BOOL8 result, const void *a2, int a3)
{
  if (result)
  {
    v5 = result;
    v6 = CFGetTypeID(result);
    if (v6 == CFArrayGetTypeID() && (Count = CFArrayGetCount(v5), v8 = Count - 1, Count >= 1))
    {
      v9 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v5, v9);
        result = sub_1B0194DB0(ValueAtIndex, a2, a3);
        if (result)
        {
          break;
        }
      }

      while (v8 != v9++);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

OS_MobileGestalt *MobileGestalt_get_current_device()
{
  v0 = objc_alloc_init(OS_MobileGestalt);

  return v0;
}

char *sub_1B0197D30(const __CFString *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
LABEL_15:
    v5 = 0;
    goto LABEL_16;
  }

  Length = CFStringGetLength(a1);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v4 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x26854177uLL);
  if (!v4)
  {
    v13 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/utility.c", 47);
    if (v13)
    {
      v19 = v13 + 1;
    }

    else
    {
      v19 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/utility.c";
    }

    _MGLog(v19, 948, @"failed to allocate string buffer", v14, v15, v16, v17, v18, v22);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "failed to allocate string buffer", buf, 2u);
    }

    goto LABEL_15;
  }

  v5 = v4;
  if (!CFStringGetCString(a1, v4, MaximumSizeForEncoding + 1, 0x8000100u))
  {
    v6 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/utility.c", 47);
    if (v6)
    {
      v12 = v6 + 1;
    }

    else
    {
      v12 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/utility.c";
    }

    _MGLog(v12, 952, @"CFStringGetCString failed for '%@'", v7, v8, v9, v10, v11, a1);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = a1;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "CFStringGetCString failed for '%@'", buf, 0xCu);
    }

    free(v5);
    goto LABEL_15;
  }

LABEL_16:
  v20 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t sub_1B0197ED4()
{
  result = sub_1B0193ED4("IODeviceTree:/product", @"udid-version", 0, 0xFFFFFFFFLL, 1);
  dword_1ED446CA8 = result;
  return result;
}

uint64_t sub_1B0197F38(uint64_t a1, CFTypeRef cf, int a3, CFNumberType a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v8 = CFGetTypeID(cf);
  if (v8 != CFNumberGetTypeID())
  {
    v10 = CFGetTypeID(cf);
    v11 = CFCopyTypeIDDescription(v10);
    v12 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
    if (v12)
    {
      v18 = v12 + 1;
    }

    else
    {
      v18 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
    }

    _MGLog(v18, 553, @"Value for %@ has incorrect type (should be CFNumber, is %@)", v13, v14, v15, v16, v17, a1);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      valuePtr = 138412546;
      v36 = a1;
      v37 = 2112;
      v38 = v11;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Value for %@ has incorrect type (should be CFNumber, is %@)", &valuePtr, 0x16u);
    }

    CFRelease(v11);
    goto LABEL_10;
  }

  if (CFNumberGetValue(cf, a4, &valuePtr))
  {
    result = 1;
    goto LABEL_11;
  }

  v20 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
  if (v20)
  {
    v26 = v20 + 1;
  }

  else
  {
    v26 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
  }

  v27 = qword_1E7A92830[a3];
  _MGLog(v26, 560, @"Value %@ for %@ cannot be represented as %s", v21, v22, v23, v24, v25, cf);
  v28 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v28)
  {
    *buf = 138412802;
    v30 = cf;
    v31 = 2112;
    v32 = a1;
    v33 = 2080;
    v34 = v27;
    _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Value %@ for %@ cannot be represented as %s", buf, 0x20u);
LABEL_10:
    result = 0;
  }

LABEL_11:
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

CFTypeRef sub_1B0198148(io_registry_entry_t a1, CFTypeRef cf, const void *a3, int a4)
{
  if (!cf)
  {
    return 0;
  }

  v8 = CFGetTypeID(cf);
  if (v8 != CFArrayGetTypeID())
  {
    return 0;
  }

  Count = CFArrayGetCount(cf);
  if (Count < 1)
  {
    return 0;
  }

  v10 = Count;
  v11 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(cf, v11);
    if (sub_1B0194DB0(ValueAtIndex, a3, a4))
    {
      break;
    }

    if (v10 == ++v11)
    {
      return 0;
    }
  }

  return IORegistryEntryCreateCFProperty(a1, ValueAtIndex, 0, 0);
}

CFDataRef sub_1B019823C()
{
  v154 = *MEMORY[0x1E69E9840];
  *md = 0;
  v152 = 0;
  v153 = 0;
  valuePtr = 0;
  v148 = 0;
  if (sub_1B0198CA8())
  {
    v0 = sub_1B0191100(@"sjGZBQzow3yV/IOa0wCeoQ", 0);
    if (v0)
    {
      v1 = v0;
      v2 = 0;
      v3 = 0;
LABEL_36:
      v29 = 0;
      v10 = 0;
      v12 = &stru_1F2640028;
      v8 = &stru_1F2640028;
      goto LABEL_116;
    }
  }

  v4 = sub_1B0198D50();
  if (v4 > 0)
  {
    v5 = v4;
    v6 = sub_1B0191100(@"TF31PAB6aO8KAbPyNKSxKA", 0);
    if (v6)
    {
      v2 = v6;
      if (CFNumberGetValue(v6, kCFNumberSInt64Type, &valuePtr))
      {
        v145 = valuePtr;
        v7 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%qi");
        if (!v7)
        {
          v46 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
          if (v46)
          {
            v52 = v46 + 1;
          }

          else
          {
            v52 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
          }

          _MGLog(v52, 3396, @"CFStringCreateWithFormat failed", v47, v48, v49, v50, v51, v145);
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "CFStringCreateWithFormat failed", buf, 2u);
          }

          CFRelease(&stru_1F2640028);
          v10 = 0;
          v29 = 0;
          v1 = 0;
          v3 = 0;
          goto LABEL_117;
        }

        v8 = v7;
        if (v5 == 2)
        {
          v9 = sub_1B0191100(@"566JrJVMlDfnslGpwUzNlQ", 0);
          if (v9)
          {
            v10 = v9;
            if (CFNumberGetValue(v9, kCFNumberSInt64Type, &v148))
            {
              v99 = CFStringCreateWithFormat(0, 0, @"%08llX-%016llX", v148, valuePtr);
              if (v99)
              {
                v3 = v99;
                ExternalRepresentation = CFStringCreateExternalRepresentation(0, v99, 0x8000100u, 0xFFu);
                if (ExternalRepresentation)
                {
                  v1 = ExternalRepresentation;
LABEL_100:
                  v29 = 0;
                  goto LABEL_101;
                }

                v130 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
                if (v130)
                {
                  v136 = v130 + 1;
                }

                else
                {
                  v136 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
                }

                _MGLog(v136, 3482, @"CFStringCreateExternalRepresentation failed", v131, v132, v133, v134, v135, v146);
                if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "CFStringCreateExternalRepresentation failed", buf, 2u);
                }

LABEL_99:
                v1 = 0;
                goto LABEL_100;
              }

              v107 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
              if (v107)
              {
                v113 = v107 + 1;
              }

              else
              {
                v113 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
              }

              _MGLog(v113, 3477, @"Could not create CFString", v108, v109, v110, v111, v112, v146);
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                v114 = MEMORY[0x1E69E9C10];
                v115 = "Could not create CFString";
LABEL_97:
                _os_log_impl(&dword_1B0190000, v114, OS_LOG_TYPE_DEFAULT, v115, buf, 2u);
              }
            }

            else
            {
              v116 = sub_1B019C840("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c");
              _MGLog(v116, 3407, @"Could not extract ECID as integer", v117, v118, v119, v120, v121, v145);
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                v114 = MEMORY[0x1E69E9C10];
                v115 = "Could not extract ECID as integer";
                goto LABEL_97;
              }
            }

            v3 = 0;
            goto LABEL_99;
          }

          v93 = sub_1B019C840("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c");
          _MGLog(v93, 3403, @"Could not get ChipID", v94, v95, v96, v97, v98, v145);
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
LABEL_83:
            v3 = 0;
            v1 = 0;
            v29 = 0;
            v10 = 0;
LABEL_101:
            v12 = &stru_1F2640028;
            goto LABEL_116;
          }

          *buf = 0;
          v60 = MEMORY[0x1E69E9C10];
          v61 = "Could not get ChipID";
          v62 = 2;
LABEL_82:
          _os_log_impl(&dword_1B0190000, v60, OS_LOG_TYPE_DEFAULT, v61, buf, v62);
          goto LABEL_83;
        }

        if (v5 >= 3)
        {
          v53 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
          if (v53)
          {
            v59 = v53 + 1;
          }

          else
          {
            v59 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
          }

          _MGLog(v59, 3411, @"Unsupported UDID version %d", v54, v55, v56, v57, v58, v5);
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_83;
          }

          *buf = 67109120;
          v150 = v5;
          v60 = MEMORY[0x1E69E9C10];
          v61 = "Unsupported UDID version %d";
          v62 = 8;
          goto LABEL_82;
        }

        v12 = &stru_1F2640028;
LABEL_22:
        v20 = sub_1B0191100(@"VasUgeSzVyHdB27g2XpN0g", 0);
        if (v20)
        {
          v21 = v20;
          v22 = sub_1B0191100(@"gI6iODv8MZuiP0IA+efJCw", 0);
          if (v22)
          {
            v23 = v22;
            v24 = sub_1B0191100(@"k5lVWbXuiZHLA17KGiVUAA", 0);
            if (v24)
            {
              v25 = CFStringCreateWithFormat(0, 0, @"%@%@%@%@%@");
              if (v25)
              {
                v3 = v25;
                Length = CFStringGetLength(v25);
                MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
                v28 = malloc_type_calloc(1uLL, MaximumSizeForEncoding + 1, 0x57D44190uLL);
                if (!v28)
                {
                  v101 = sub_1B019C840("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c");
                  _MGLog(v101, 3459, @"calloc failed", v102, v103, v104, v105, v106, v21);
                  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "calloc failed", buf, 2u);
                  }

                  v29 = 0;
                  goto LABEL_112;
                }

                v29 = v28;
                if (CFStringGetCString(v3, v28, MaximumSizeForEncoding + 1, 0x8000100u))
                {
                  v30 = strlen(v29);
                  CC_SHA1(v29, v30, md);
                  v31 = CFDataCreate(0, md, 20);
                  if (v31)
                  {
                    v1 = v31;
                    goto LABEL_113;
                  }

                  v137 = sub_1B019C840("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c");
                  _MGLog(v137, 3470, @"CFDataCreate failed", v138, v139, v140, v141, v142, v21);
                  if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_112;
                  }

                  *buf = 0;
                  v128 = MEMORY[0x1E69E9C10];
                  v129 = "CFDataCreate failed";
                }

                else
                {
                  v122 = sub_1B019C840("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c");
                  _MGLog(v122, 3463, @"couldn't extract string to hash", v123, v124, v125, v126, v127, v21);
                  if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                  {
LABEL_112:
                    v1 = 0;
LABEL_113:
                    CFRelease(v21);
                    CFRelease(v23);
                    if (v24)
                    {
                      CFRelease(v24);
                    }

                    goto LABEL_115;
                  }

                  *buf = 0;
                  v128 = MEMORY[0x1E69E9C10];
                  v129 = "couldn't extract string to hash";
                }

                _os_log_impl(&dword_1B0190000, v128, OS_LOG_TYPE_DEFAULT, v129, buf, 2u);
                goto LABEL_112;
              }

              v86 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
              if (v86)
              {
                v92 = v86 + 1;
              }

              else
              {
                v92 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
              }

              _MGLog(v92, 3452, @"Could not create a mutable CFString", v87, v88, v89, v90, v91, v21);
              if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
              {
LABEL_79:
                v29 = 0;
                v1 = 0;
                v3 = 0;
                goto LABEL_113;
              }

              *buf = 0;
              v84 = MEMORY[0x1E69E9C10];
              v85 = "Could not create a mutable CFString";
            }

            else
            {
              v77 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
              if (v77)
              {
                v83 = v77 + 1;
              }

              else
              {
                v83 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
              }

              _MGLog(v83, 3439, @"Could not get bluetooth address", v78, v79, v80, v81, v82, v145);
              if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_79;
              }

              *buf = 0;
              v84 = MEMORY[0x1E69E9C10];
              v85 = "Could not get bluetooth address";
            }

            _os_log_impl(&dword_1B0190000, v84, OS_LOG_TYPE_DEFAULT, v85, buf, 2u);
            goto LABEL_79;
          }

          v63 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
          if (v63)
          {
            v69 = v63 + 1;
          }

          else
          {
            v69 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
          }

          _MGLog(v69, 3429, @"Could not get wifi address", v64, v65, v66, v67, v68, v145);
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Could not get wifi address", buf, 2u);
          }

          CFRelease(v21);
        }

        else
        {
          v39 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
          if (v39)
          {
            v45 = v39 + 1;
          }

          else
          {
            v45 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
          }

          _MGLog(v45, 3420, @"Could not get serial number", v40, v41, v42, v43, v44, v145);
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Could not get serial number", buf, 2u);
          }
        }

        v3 = 0;
        v1 = 0;
        v29 = 0;
LABEL_115:
        v10 = 0;
LABEL_116:
        CFRelease(v12);
        CFRelease(v8);
        if (!v2)
        {
LABEL_118:
          if (v3)
          {
            CFRelease(v3);
          }

          if (v10)
          {
            CFRelease(v10);
          }

          if (v29)
          {
            free(v29);
          }

          goto LABEL_124;
        }

LABEL_117:
        CFRelease(v2);
        goto LABEL_118;
      }

      v32 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
      if (v32)
      {
        v38 = v32 + 1;
      }

      else
      {
        v38 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
      }

      _MGLog(v38, 3390, @"Could not extract ECID as integer", v33, v34, v35, v36, v37, v145);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Could not extract ECID as integer", buf, 2u);
      }
    }

    else
    {
      v13 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
      if (v13)
      {
        v19 = v13 + 1;
      }

      else
      {
        v19 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
      }

      _MGLog(v19, 3386, @"Could not get unique chip ID", v14, v15, v16, v17, v18, v145);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Could not get unique chip ID", buf, 2u);
      }

      v2 = 0;
    }

    v3 = 0;
    v1 = 0;
    goto LABEL_36;
  }

  if (!MGGetBoolAnswer(@"AJFQheZDyUbvI6RmBMT9Cg"))
  {
    v2 = 0;
    v12 = &stru_1F2640028;
    v8 = &stru_1F2640028;
    goto LABEL_22;
  }

  v11 = sub_1B0191100(@"QZgogo2DypSAZfkRW4dP/A", 0);
  if (v11)
  {
    v12 = v11;
    v2 = 0;
    v8 = &stru_1F2640028;
    goto LABEL_22;
  }

  v70 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
  if (v70)
  {
    v76 = v70 + 1;
  }

  else
  {
    v76 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
  }

  _MGLog(v76, 3378, @"Could not get IMEI", v71, v72, v73, v74, v75, v145);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Could not get IMEI", buf, 2u);
  }

  CFRelease(&stru_1F2640028);
  v1 = 0;
LABEL_124:
  v143 = *MEMORY[0x1E69E9840];
  return v1;
}

uint64_t sub_1B0198CA8()
{
  if (qword_1ED446D10 != -1)
  {
    sub_1B0198228();
  }

  return byte_1ED446CF8;
}

uint64_t sub_1B0198CE0()
{
  v2 = 0;
  v1 = 4;
  result = sysctlbyname("kern.hv_vmm_present", &v2, &v1, 0, 0);
  if (!result)
  {
    byte_1ED446CF8 = v2 != 0;
  }

  return result;
}

uint64_t sub_1B0198D50()
{
  if (qword_1ED446D28 != -1)
  {
    sub_1B0198D3C();
  }

  return dword_1ED446CA8;
}

CFNumberRef sub_1B0198DB0(char *a1, const __CFString *a2, int a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = sub_1B0192F20(a1, a2, a3);
  if (v5)
  {
    v6 = v5;
    v7 = CFGetTypeID(v5);
    if (v7 == CFDataGetTypeID())
    {
      Length = CFDataGetLength(v6);
      if ((Length - 1) <= 3)
      {
        BytePtr = CFDataGetBytePtr(v6);
        v10 = kCFNumberSInt32Type;
LABEL_15:
        v11 = CFNumberCreate(0, v10, BytePtr);
        goto LABEL_16;
      }

      if ((Length - 1) <= 7)
      {
        BytePtr = CFDataGetBytePtr(v6);
        v10 = kCFNumberSInt64Type;
        goto LABEL_15;
      }

      v24 = Length;
      v25 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/MGIOKitSupport.c", 47);
      if (v25)
      {
        v31 = v25 + 1;
      }

      else
      {
        v31 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/MGIOKitSupport.c";
      }

      _MGLog(v31, 514, @"can't create number from data %s %@ of length %llu\n", v26, v27, v28, v29, v30, a1);
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
LABEL_12:
        v11 = 0;
LABEL_16:
        CFRelease(v6);
        goto LABEL_17;
      }

      *buf = 136315650;
      v33 = a1;
      v34 = 2112;
      v35 = a2;
      v36 = 2048;
      v37 = v24;
      v19 = MEMORY[0x1E69E9C10];
      v20 = "can't create number from data %s %@ of length %llu\n";
      v21 = 32;
    }

    else
    {
      v12 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/MGIOKitSupport.c", 47);
      if (v12)
      {
        v18 = v12 + 1;
      }

      else
      {
        v18 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/MGIOKitSupport.c";
      }

      _MGLog(v18, 517, @"can't create number from %s %@", v13, v14, v15, v16, v17, a1);
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }

      *buf = 136315394;
      v33 = a1;
      v34 = 2112;
      v35 = a2;
      v19 = MEMORY[0x1E69E9C10];
      v20 = "can't create number from %s %@";
      v21 = 22;
    }

    _os_log_impl(&dword_1B0190000, v19, OS_LOG_TYPE_DEFAULT, v20, buf, v21);
    goto LABEL_12;
  }

  v11 = 0;
LABEL_17:
  v22 = *MEMORY[0x1E69E9840];
  return v11;
}

id MobileGestalt_copy_uniqueDeviceID_obj()
{
  v0 = MGCopyAnswer(@"UniqueDeviceID");

  return v0;
}

uint64_t MobileGestalt_get_deviceClassNumber(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"DeviceClassNumber");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F29E8();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

uint64_t MGCancelNotifications(uint64_t result)
{
  if ((result + 1) >= 2)
  {
    v2 = result;
    v3 = *(off_1EB6CFEC0 + 28);
    if (!v3)
    {
      v3 = sub_1B0193150(28, 2);
    }

    return v3(v2);
  }

  return result;
}

uint64_t sub_1B01991F8()
{
  v13 = *MEMORY[0x1E69E9840];
  if (sub_1B0193D14() == 3 || sub_1B0193D14() == 1 || sub_1B0193D14() == 2)
  {
    v12 = 1032708406;
    v11 = xmmword_1B01FDE04;
    v10 = 729903963;
    v9 = xmmword_1B01FDE18;
    result = MGIsDeviceOneOfType(&v11, v0, v1, v2, v3, v4, v5, v6, &v9) ^ 1;
  }

  else
  {
    result = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B01992FC()
{
  if (sub_1B0193D14() != 1 || !sub_1B01998E0("IODeviceTree:/product", @"supports-lotx", 0))
  {
    return 0;
  }

  return sub_1B0199354();
}

uint64_t sub_1B0199354()
{
  v0 = CFLocaleCopyCurrent();
  if (!v0)
  {
    sub_1B01F0E68(&v12);
    return v12;
  }

  v1 = v0;
  Value = CFLocaleGetValue(v0, *MEMORY[0x1E695E6D0]);
  if (!Value)
  {
    sub_1B01F0DFC();
LABEL_17:
    CFRelease(v1);
    return 0;
  }

  v3 = Value;
  v4 = CFGetTypeID(Value);
  if (v4 != CFStringGetTypeID())
  {
    sub_1B01F0D24();
    goto LABEL_17;
  }

  v5 = sub_1B0197D30(v3);
  if (!v5)
  {
    sub_1B01F0D90();
    goto LABEL_17;
  }

  v6 = v5;
  if (!strcmp(v5, "AT"))
  {
    v10 = 1;
  }

  else
  {
    v7 = 0;
    do
    {
      v8 = v7;
      if (v7 == 30)
      {
        break;
      }

      v9 = strcmp(v6, off_1E7A92AD0[v7 + 1]);
      v7 = v8 + 1;
    }

    while (v9);
    v10 = v8 < 0x1E;
  }

  CFRelease(v1);
  free(v6);
  return v10;
}

CFTypeRef sub_1B0199464()
{
  v0 = sub_1B0194994("IODeviceTree:/product", @"bluetooth-le", 0);
  v1 = MEMORY[0x1E695E4D0];
  if (!v0)
  {
    v1 = MEMORY[0x1E695E4C0];
  }

  v2 = *v1;
  if (*v1)
  {
    CFRetain(*v1);
  }

  return v2;
}

uint64_t sub_1B0199538()
{
  if (sub_1B0193D14() == 1 || sub_1B0193D14() == 2 || sub_1B0193D14() == 3)
  {
    v0 = sub_1B0194994("IODeviceTree:/product/camera", @"photos-live-video-rendering", 0);
  }

  else
  {
    v0 = sub_1B0193D14() == 11;
  }

  v1 = MEMORY[0x1E695E4D0];
  if (!v0)
  {
    v1 = MEMORY[0x1E695E4C0];
  }

  return *v1;
}

uint64_t sub_1B01995B4()
{
  v0 = sub_1B0193D14() - 1;
  if (v0 < 0xC)
  {
    return *(&off_1E7A92E50 + v0);
  }

  v2 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
  if (v2)
  {
    v8 = v2 + 1;
  }

  else
  {
    v8 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
  }

  _MGLog(v8, 2285, @"Unknown DeviceClass", v3, v4, v5, v6, v7, v9);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    sub_1B01F0BE0();
  }

  return 0;
}

uint64_t sub_1B019963C()
{
  v0 = *MEMORY[0x1E695E4C0];
  v1 = sub_1B01995B4();
  if (v1)
  {
    v2 = v1;
    if (!CFEqual(v1, @"Watch"))
    {
      v3 = sub_1B01997C0(@"H4");
      v4 = *MEMORY[0x1E695E4D0];
      if (v3)
      {
        v0 = *MEMORY[0x1E695E4D0];
      }
    }

    CFRelease(v2);
  }

  return v0;
}

CFStringRef sub_1B01996AC()
{
  v0 = sub_1B0192F20("IODeviceTree:/arm-io", @"soc-generation", 0);
  v1 = v0;
  if (v0)
  {
    v2 = CFGetTypeID(v0);
    if (v2 == CFDataGetTypeID() && CFDataGetLength(v1) >= 1)
    {
      BytePtr = CFDataGetBytePtr(v1);
      v4 = CFStringCreateWithCString(0, BytePtr, 0x8000100u);
LABEL_11:
      CFRelease(v1);
      return v4;
    }
  }

  v5 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/utility.c", 47);
  if (v5)
  {
    v11 = v5 + 1;
  }

  else
  {
    v11 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/utility.c";
  }

  _MGLog(v11, 429, @"Failed to copyDeviceTreeProperty(IODeviceTree:/arm-io soc-generation)", v6, v7, v8, v9, v10, v13[0]);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to copyDeviceTreeProperty(IODeviceTree:/arm-io soc-generation)", v13, 2u);
  }

  v4 = 0;
  result = 0;
  if (v1)
  {
    goto LABEL_11;
  }

  return result;
}

BOOL sub_1B01997C0(_BOOL8 a1)
{
  v2 = sub_1B01996AC();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  if (a1)
  {
    a1 = CFStringCompare(v2, a1, 1uLL) == kCFCompareEqualTo;
  }

  CFRelease(v3);
  return a1;
}

const void *sub_1B019981C()
{
  v0 = sub_1B0193ED4("IODeviceTree:/arm-io/disp0", @"supports-apt", 0, 0xFFFFFFFFLL, 0);
  if ((v0 & 0x80000000) == 0)
  {
    v1 = MEMORY[0x1E695E4D0];
    if (!v0)
    {
      v1 = MEMORY[0x1E695E4C0];
    }

    return *v1;
  }

  v2 = sub_1B019BAC0(0, "AppleCLCD", @"APTDevice");
  if (!v2)
  {
LABEL_8:
    v1 = MEMORY[0x1E695E4C0];
    return *v1;
  }

  v3 = v2;
  TypeID = CFBooleanGetTypeID();
  if (TypeID != CFGetTypeID(v3))
  {
    CFRelease(v3);
    goto LABEL_8;
  }

  return v3;
}

const void *sub_1B0199908(char *a1, const __CFString *a2, int a3)
{
  v3 = sub_1B0192F20(a1, a2, a3);
  v4 = v3;
  if (v3)
  {
    v5 = CFGetTypeID(v3);
    if (v5 != CFDataGetTypeID())
    {
      CFRelease(v4);
      return 0;
    }
  }

  return v4;
}

float sub_1B0199958()
{
  v46 = *MEMORY[0x1E69E9840];
  v0 = sub_1B0199908("IODeviceTree:/product", @"display-corner-radius", 0);
  v1 = v0;
  if (v0)
  {
    if (CFDataGetLength(v0) == 8)
    {
      BytePtr = CFDataGetBytePtr(v1);
      v10 = BytePtr[1];
      if (v10)
      {
        v11 = *BytePtr / v10;
      }

      else
      {
        v11 = 0.0;
      }
    }

    else
    {
      v19 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
      v20 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
      if (v20)
      {
        v19 = v20 + 1;
      }

      Length = CFDataGetLength(v1);
      _MGLog(v19, 8183, @"Property copyDeviceTreeProperty(IODeviceTree:/product display-corner-radius) had an unexpected size of %zu instead of %zu.", v22, v23, v24, v25, v26, Length);
      v11 = 0.0;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v43 = CFDataGetLength(v1);
        v44 = 2048;
        v45 = 8;
        _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Property copyDeviceTreeProperty(IODeviceTree:/product display-corner-radius) had an unexpected size of %zu instead of %zu.", buf, 0x16u);
      }
    }

    if (v11)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v12 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
    if (v12)
    {
      v18 = v12 + 1;
    }

    else
    {
      v18 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
    }

    _MGLog(v18, 8174, @"Failed to copyDeviceTreeProperty(IODeviceTree:/product display-corner-radius)", v13, v14, v15, v16, v17, v36);
    v11 = 0.0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to copyDeviceTreeProperty(IODeviceTree:/product display-corner-radius)", buf, 2u);
    }
  }

  v41 = -337121064;
  v40 = xmmword_1B01FDBD4;
  v39 = 450980336;
  v38 = xmmword_1B01FDBE8;
  if (MGIsDeviceOneOfType(&v40, v3, v4, v5, v6, v7, v8, v9, &v38))
  {
    v27 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
    if (v27)
    {
      v33 = v27 + 1;
    }

    else
    {
      v33 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
    }

    _MGLog(v33, 8197, @"DeviceCornerRadius fallback to legacy fixed value.", v28, v29, v30, v31, v32, v37);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "DeviceCornerRadius fallback to legacy fixed value.", buf, 2u);
    }

    v11 = 39.0;
  }

  if (v1)
  {
LABEL_24:
    CFRelease(v1);
  }

  v34 = *MEMORY[0x1E69E9840];
  return v11;
}

const void *sub_1B0199C08()
{
  v104 = *MEMORY[0x1E69E9840];
  if (sub_1B0193D14() == 6)
  {
    goto LABEL_10;
  }

  if (sub_1B0193D14() == 2)
  {
    goto LABEL_10;
  }

  if (sub_1B0193D14() == 7)
  {
    goto LABEL_10;
  }

  v103 = 1789837692;
  v102 = xmmword_1B01FDF08;
  v101 = -1239654590;
  v100 = xmmword_1B01FDF1C;
  v99 = -1579092758;
  v98 = xmmword_1B01FDF30;
  v97 = 48355600;
  v96 = xmmword_1B01FDF44;
  v95 = -679691073;
  v94 = xmmword_1B01FDF58;
  v93 = 1430379884;
  v92 = xmmword_1B01FDF6C;
  if (MGIsDeviceOneOfType(&v102, v0, v1, v2, v3, v4, v5, v6, &v100))
  {
    goto LABEL_10;
  }

  v91 = -121925081;
  v90 = xmmword_1B01FE4D0;
  if (MGIsDeviceOneOfType(&v90, v7, v8, v9, v10, v11, v12, v13, 0))
  {
    goto LABEL_10;
  }

  v89 = 414393924;
  v88 = xmmword_1B01FE0C0;
  v87 = 897736383;
  v86 = xmmword_1B01FE0D4;
  v85 = -996295886;
  v84 = xmmword_1B01FDBFC;
  v83 = -453987047;
  v82 = xmmword_1B01FDC10;
  if (MGIsDeviceOneOfType(&v88, v14, v15, v16, v17, v18, v19, v20, &v86))
  {
    goto LABEL_10;
  }

  v81 = 1602014129;
  v80 = xmmword_1B01FDECC;
  v79 = -810116762;
  v78 = xmmword_1B01FDEE0;
  v77 = -1195351767;
  v76 = xmmword_1B01FDEF4;
  v75 = -199226823;
  v74 = xmmword_1B01FDC24;
  v73 = 1412427398;
  v72 = xmmword_1B01FDC38;
  v71 = -1283070668;
  v70 = xmmword_1B01FDC4C;
  v69 = 160260070;
  v68 = xmmword_1B01FDC60;
  if (MGIsDeviceOneOfType(&v80, v21, v22, v23, v24, v25, v26, v27, &v78))
  {
    goto LABEL_10;
  }

  v67 = 28030256;
  v66 = xmmword_1B01FE2A0;
  v65 = 1214363620;
  v64 = xmmword_1B01FE2B4;
  v63 = -798153473;
  v62 = xmmword_1B01FE2C8;
  v61 = -776721724;
  v60 = xmmword_1B01FE2DC;
  v59 = -1403227947;
  v58 = xmmword_1B01FE304;
  v57 = 729118884;
  v56 = xmmword_1B01FE2F0;
  v55 = 1046806126;
  v54 = xmmword_1B01FE318;
  v53 = -188760945;
  v52 = xmmword_1B01FE32C;
  v51 = -489993439;
  v50 = xmmword_1B01FE278;
  v49 = 886875686;
  v48 = xmmword_1B01FE28C;
  if (MGIsDeviceOneOfType(&v66, v28, v29, v30, v31, v32, v33, v34, &v64) || (v47 = -350584140, v46 = xmmword_1B01FE340, v45 = -1418383976, v44 = xmmword_1B01FE368, MGIsDeviceOneOfType(&v46, v35, v36, v37, v38, v39, v40, v41, &v44)))
  {
LABEL_10:
    result = *MEMORY[0x1E695E4C0];
  }

  else
  {
    result = sub_1B0191100(@"pFpC81KCZegLf4FenQZ2OA", 0);
  }

  v43 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B019A128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_opt_new();
  if ([v5 createTreeIterator:"IODeviceTree"] && (v6 = objc_msgSend(v5, "copyDeviceTreeStructureNext:withFirstChar:", a2, a3)) != 0)
  {
    IOObjectRelease(v6);
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t _MGGetFastPathLog()
{
  if (qword_1ED446D60 != -1)
  {
    sub_1B0193E90();
  }

  return qword_1ED446D58;
}

const char *sub_1B019A220()
{
  result = sub_1B0193CB4();
  if (result)
  {

    return CFStringCreateWithCString(0, result, 0x8000100u);
  }

  return result;
}

uint64_t sub_1B019A2A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v57 = *MEMORY[0x1E69E9840];
  v56 = 28030256;
  v55 = xmmword_1B01FE2A0;
  v54 = 1214363620;
  v53 = xmmword_1B01FE2B4;
  if (MGIsDeviceOneOfType(&v55, a2, a3, a4, a5, a6, a7, a8, &v53))
  {
    goto LABEL_5;
  }

  v52 = 886875686;
  v51 = xmmword_1B01FE28C;
  v50 = -489993439;
  v49 = xmmword_1B01FE278;
  v48 = -1403227947;
  v47 = xmmword_1B01FE304;
  v46 = 729118884;
  v45 = xmmword_1B01FE2F0;
  v44 = 1046806126;
  v43 = xmmword_1B01FE318;
  v42 = -188760945;
  v41 = xmmword_1B01FE32C;
  if (MGIsDeviceOneOfType(&v51, v8, v9, v10, v11, v12, v13, v14, &v49))
  {
    goto LABEL_5;
  }

  v40 = -798153473;
  v39 = xmmword_1B01FE2C8;
  v38 = -776721724;
  v37 = xmmword_1B01FE2DC;
  if (MGIsDeviceOneOfType(&v39, v15, v16, v17, v18, v19, v20, v21, &v37) || (v36 = -38605833, v35 = xmmword_1B01FE390, v34 = -894965712, v33 = xmmword_1B01FE3A4, MGIsDeviceOneOfType(&v35, v22, v23, v24, v25, v26, v27, v28, &v33)))
  {
LABEL_5:
    v29 = MEMORY[0x1E695E4C0];
  }

  else
  {
    v32 = sub_1B0193D14();
    v29 = MEMORY[0x1E695E4C0];
    if (v32 == 1)
    {
      v29 = MEMORY[0x1E695E4D0];
    }
  }

  result = *v29;
  v31 = *MEMORY[0x1E69E9840];
  return result;
}

__CFDictionary *sub_1B019A54C()
{
  v55 = *MEMORY[0x1E69E9840];
  memset(&v54, 0, 512);
  if (statfs("/", &v54) == -1)
  {
    v2 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
    v3 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
    if (v3)
    {
      v2 = v3 + 1;
    }

    v4 = __error();
    strerror(*v4);
    _MGLog(v2, 4207, @"statfs(%s): %s", v5, v6, v7, v8, v9, "/");
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    v10 = __error();
    v11 = strerror(*v10);
    *buf = 136315394;
    *&buf[4] = "/";
    v52 = 2080;
    v53 = v11;
    v12 = MEMORY[0x1E69E9C10];
    goto LABEL_21;
  }

  v0 = sub_1B019B958(&v54.f_bsize);
  v1 = v0 + v54.f_bavail * v54.f_bsize;
  bzero(&v54, 0x878uLL);
  if (statfs("/mnt4", &v54) == -1)
  {
    v13 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
    v14 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
    if (v14)
    {
      v13 = v14 + 1;
    }

    v15 = __error();
    strerror(*v15);
    _MGLog(v13, 4220, @"statfs(%s): %s", v16, v17, v18, v19, v20, "/mnt4");
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v21 = __error();
      v22 = strerror(*v21);
      *buf = 136315394;
      *&buf[4] = "/mnt4";
      v52 = 2080;
      v53 = v22;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "statfs(%s): %s", buf, 0x16u);
    }
  }

  else
  {
    v1 += sub_1B019B958(&v54.f_bsize);
  }

  bzero(&v54, 0x878uLL);
  if (statfs("/private/var", &v54) == -1)
  {
    v39 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
    v40 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
    if (v40)
    {
      v39 = v40 + 1;
    }

    v41 = __error();
    strerror(*v41);
    _MGLog(v39, 4230, @"statfs(%s): %s", v42, v43, v44, v45, v46, "/private/var");
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    v47 = __error();
    v48 = strerror(*v47);
    *buf = 136315394;
    *&buf[4] = "/private/var";
    v52 = 2080;
    v53 = v48;
    v12 = MEMORY[0x1E69E9C10];
LABEL_21:
    _os_log_impl(&dword_1B0190000, v12, OS_LOG_TYPE_DEFAULT, "statfs(%s): %s", buf, 0x16u);
LABEL_22:
    Mutable = 0;
    goto LABEL_23;
  }

  v23 = v54.f_blocks * v54.f_bsize - v0;
  v24 = v23 - sub_1B019B958(&v54.f_bsize);
  v25 = sub_1B019AA7C();
  v26 = v54.f_bavail * v54.f_bsize;
  v27 = v26 >= 0xC800000;
  v28 = v26 - 209715200;
  if (v27)
  {
    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *buf = v0;
  v31 = CFNumberCreate(0, kCFNumberSInt64Type, buf);
  CFDictionarySetValue(Mutable, @"TotalSystemCapacity", v31);
  CFRelease(v31);
  *buf = 0;
  v32 = CFNumberCreate(0, kCFNumberSInt64Type, buf);
  CFDictionarySetValue(Mutable, @"TotalSystemAvailable", v32);
  CFRelease(v32);
  *buf = v23;
  v33 = CFNumberCreate(0, kCFNumberSInt64Type, buf);
  CFDictionarySetValue(Mutable, @"TotalDataCapacity", v33);
  CFRelease(v33);
  *buf = v24;
  v34 = CFNumberCreate(0, kCFNumberSInt64Type, buf);
  CFDictionarySetValue(Mutable, @"TotalDataAvailable", v34);
  CFRelease(v34);
  *buf = v25;
  v35 = CFNumberCreate(0, kCFNumberSInt64Type, buf);
  CFDictionarySetValue(Mutable, @"TotalDiskCapacity", v35);
  CFRelease(v35);
  *buf = 209715200;
  v36 = CFNumberCreate(0, kCFNumberSInt64Type, buf);
  CFDictionarySetValue(Mutable, @"AmountDataReserved", v36);
  CFRelease(v36);
  *buf = v29;
  v37 = CFNumberCreate(0, kCFNumberSInt64Type, buf);
  CFDictionarySetValue(Mutable, @"AmountDataAvailable", v37);
  CFRelease(v37);
  *buf = v1;
  v38 = CFNumberCreate(0, kCFNumberSInt64Type, buf);
  CFDictionarySetValue(Mutable, @"AmountRestoreAvailable", v38);
  CFRelease(v38);
LABEL_23:
  v49 = *MEMORY[0x1E69E9840];
  return Mutable;
}

uint64_t sub_1B019AA7C()
{
  v42 = *MEMORY[0x1E69E9840];
  valuePtr = -1;
  v0 = *MEMORY[0x1E696CD60];
  v1 = IOBSDNameMatching(*MEMORY[0x1E696CD60], 0, "disk0");
  MatchingService = IOServiceGetMatchingService(v0, v1);
  if (MatchingService)
  {
    v3 = MatchingService;
    CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"Size", *MEMORY[0x1E695E480], 0);
    if (!CFProperty)
    {
      v24 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
      if (v24)
      {
        v30 = v24 + 1;
      }

      else
      {
        v30 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
      }

      _MGLog(v30, 4060, @"%s: No kIOMediaSizeKey found for disk0!", v25, v26, v27, v28, v29, "SInt64 NANDSize(void)");
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v41 = "SInt64 NANDSize(void)";
        _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s: No kIOMediaSizeKey found for disk0!", buf, 0xCu);
      }

      goto LABEL_28;
    }

    v5 = CFProperty;
    v6 = CFGetTypeID(CFProperty);
    if (v6 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v5, kCFNumberSInt64Type, &valuePtr))
      {
        goto LABEL_27;
      }

      v7 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
      v13 = v7 ? v7 + 1 : "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
      _MGLog(v13, 4053, @"%s: Could not get SInt64 value for kIOMediaSizeKey!", v8, v9, v10, v11, v12, "SInt64 NANDSize(void)");
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      *buf = 136315138;
      v41 = "SInt64 NANDSize(void)";
      v14 = MEMORY[0x1E69E9C10];
      v15 = "%s: Could not get SInt64 value for kIOMediaSizeKey!";
    }

    else
    {
      v31 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
      if (v31)
      {
        v37 = v31 + 1;
      }

      else
      {
        v37 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
      }

      _MGLog(v37, 4056, @"%s: kIOMediaSizeKey for disk0 not a CFNumber!", v32, v33, v34, v35, v36, "SInt64 NANDSize(void)");
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      *buf = 136315138;
      v41 = "SInt64 NANDSize(void)";
      v14 = MEMORY[0x1E69E9C10];
      v15 = "%s: kIOMediaSizeKey for disk0 not a CFNumber!";
    }

    _os_log_impl(&dword_1B0190000, v14, OS_LOG_TYPE_DEFAULT, v15, buf, 0xCu);
LABEL_27:
    CFRelease(v5);
LABEL_28:
    IOObjectRelease(v3);
    result = valuePtr;
    goto LABEL_29;
  }

  v16 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
  if (v16)
  {
    v22 = v16 + 1;
  }

  else
  {
    v22 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
  }

  _MGLog(v22, 4045, @"%s: IOServiceGetMatchingService() for disk0 failed!", v17, v18, v19, v20, v21, "SInt64 NANDSize(void)");
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v41 = "SInt64 NANDSize(void)";
    _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s: IOServiceGetMatchingService() for disk0 failed!", buf, 0xCu);
  }

  result = -1;
LABEL_29:
  v38 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1B019ADD0()
{
  result = MGGetBoolAnswer(@"yRZv0s7Dpj8ZBk0S+0+nMA");
  if (result)
  {

    return sub_1B01959FC(@"CH");
  }

  return result;
}

uint64_t sub_1B019AE24()
{
  if (!sub_1B0198CA8())
  {
    return sub_1B019AFD8() >> 33 != 0;
  }

  result = os_variant_has_internal_content();
  if (result)
  {
    result = sub_1B01998E0("IODeviceTree:/product", @"vm-supports-generative-models", 0);
    if (result)
    {
      return sub_1B019AFD8() >> 33 != 0;
    }
  }

  return result;
}

BOOL sub_1B019AE8C(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_new();
  if (([v4 createTreeIterator:"IODeviceTree"] & 1) == 0)
  {

    goto LABEL_11;
  }

  v5 = [v4 deviceTreeNodeIsPresent:a1 withExactName:1 withNodeClass:a2];

  if (!v5)
  {
LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  Count = CFDictionaryGetCount(v5);
  v7 = Count > 0;
  if (Count >= 1)
  {
    v8 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/MGIOKitHelper.m", 47);
    if (v8)
    {
      v14 = v8 + 1;
    }

    else
    {
      v14 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/MGIOKitHelper.m";
    }

    _MGLog(v14, 632, @"Node %@ found", v9, v10, v11, v12, v13, a1);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = a1;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Node %@ found", buf, 0xCu);
    }
  }

  CFRelease(v5);
LABEL_12:
  v15 = *MEMORY[0x1E69E9840];
  return v7;
}

CFDataRef sub_1B019B000()
{
  memset(v1, 0, sizeof(v1));
  if (sub_1B019B054(@"volume-up-button-location", 0, v1))
  {
    return CFDataCreate(0, v1, 32);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B019B054(const __CFString *a1, int a2, uint64_t *a3)
{
  v55 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    sub_1B01F0FB4(buf);
LABEL_23:
    v14 = buf[0];
    goto LABEL_20;
  }

  *a3 = 0;
  a3[1] = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(a3 + 1) = _Q0;
  v11 = sub_1B0192F20("IODeviceTree:/product", a1, 0);
  if (!v11)
  {
    sub_1B019C778(a1, buf);
    goto LABEL_23;
  }

  v12 = v11;
  Length = CFDataGetLength(v11);
  v14 = Length == 20;
  if (Length == 20)
  {
    BytePtr = CFDataGetBytePtr(v12);
    v16 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
    if (v16)
    {
      v22 = v16 + 1;
    }

    else
    {
      v22 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
    }

    v46 = *(BytePtr + 3);
    v48 = *(BytePtr + 4);
    v43 = *(BytePtr + 1);
    v44 = *(BytePtr + 2);
    _MGLog(v22, 7555, @"Button info %d - %d - %d - %d - %d", v17, v18, v19, v20, v21, *BytePtr);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v23 = *BytePtr;
      v24 = *(BytePtr + 1);
      v25 = *(BytePtr + 2);
      v26 = *(BytePtr + 3);
      v27 = *(BytePtr + 4);
      *buf = 67110144;
      *v50 = v23;
      *&v50[4] = 1024;
      *&v50[6] = v24;
      LOWORD(v51) = 1024;
      *(&v51 + 2) = v25;
      HIWORD(v51) = 1024;
      *v52 = v26;
      *&v52[4] = 1024;
      *&v52[6] = v27;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Button info %d - %d - %d - %d - %d", buf, 0x20u);
    }

    if (sub_1B0193D14() == 1)
    {
      v28 = 1.0;
      if (!a2)
      {
        v28 = 0.0;
      }

      *a3 = v28;
      v29 = *(BytePtr + 1);
      *(a3 + 1) = (*(BytePtr + 2) / v29);
      a3[2] = 0;
      *(a3 + 3) = (*(BytePtr + 3) / v29);
    }

    v30 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
    if (v30)
    {
      v36 = v30 + 1;
    }

    else
    {
      v36 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
    }

    v45 = a3[2];
    v47 = a3[3];
    _MGLog(v36, 7571, @"Normalized Rect %f - %f - %f - %f", v31, v32, v33, v34, v35, *a3);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v37 = *a3;
      v38 = a3[1];
      v39 = a3[2];
      v40 = a3[3];
      *buf = 134218752;
      *v50 = v37;
      *&v50[8] = 2048;
      v51 = v38;
      *v52 = 2048;
      *&v52[2] = v39;
      v53 = 2048;
      v54 = v40;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Normalized Rect %f - %f - %f - %f", buf, 0x2Au);
    }
  }

  else
  {
    sub_1B01F0EE4(Length, a1);
  }

  CFRelease(v12);
LABEL_20:
  v41 = *MEMORY[0x1E69E9840];
  return v14;
}

CFDataRef sub_1B019B2F4()
{
  memset(v1, 0, sizeof(v1));
  if (sub_1B019B054(@"volume-down-button-location", 0, v1))
  {
    return CFDataCreate(0, v1, 32);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B019B348(uint64_t *a1)
{
  v76 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  a1[1] = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(a1 + 1) = _Q0;
  v7 = sub_1B0192F20("IODeviceTree:/product", @"side-button-location", 0);
  if (v7)
  {
    v8 = v7;
    Length = CFDataGetLength(v7);
    v10 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
    if (v10)
    {
      v16 = v10 + 1;
    }

    else
    {
      v16 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
    }

    _MGLog(v16, 7433, @"Size of side-button-location %lu", v11, v12, v13, v14, v15, Length);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *v71 = Length;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Size of side-button-location %lu", buf, 0xCu);
    }

    if (Length == 20)
    {
      BytePtr = CFDataGetBytePtr(v8);
      v18 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
      if (v18)
      {
        v24 = v18 + 1;
      }

      else
      {
        v24 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
      }

      v67 = *(BytePtr + 3);
      v69 = *(BytePtr + 4);
      v64 = *(BytePtr + 1);
      v65 = *(BytePtr + 2);
      _MGLog(v24, 7446, @"Button info %d - %d - %d - %d - %d", v19, v20, v21, v22, v23, *BytePtr);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v25 = *BytePtr;
        v26 = *(BytePtr + 1);
        v27 = *(BytePtr + 2);
        v28 = *(BytePtr + 3);
        v29 = *(BytePtr + 4);
        *buf = 67110144;
        *v71 = v25;
        *&v71[4] = 1024;
        *&v71[6] = v26;
        LOWORD(v72) = 1024;
        *(&v72 + 2) = v27;
        HIWORD(v72) = 1024;
        *v73 = v28;
        *&v73[4] = 1024;
        *&v73[6] = v29;
        _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Button info %d - %d - %d - %d - %d", buf, 0x20u);
      }

      if (sub_1B0193D14() == 1)
      {
        *a1 = 0x3FF0000000000000;
        v30 = *(BytePtr + 1);
        *(a1 + 1) = (*(BytePtr + 2) / v30);
        a1[2] = 0;
        v31 = (*(BytePtr + 3) / v30);
      }

      else
      {
        if (sub_1B0193D14() != 3)
        {
LABEL_30:
          v50 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
          if (v50)
          {
            v56 = v50 + 1;
          }

          else
          {
            v56 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
          }

          v66 = a1[2];
          v68 = a1[3];
          _MGLog(v56, 7464, @"Normalized Rect %f - %f - %f - %f", v51, v52, v53, v54, v55, *a1);
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            v57 = *a1;
            v58 = a1[1];
            v59 = a1[2];
            v60 = a1[3];
            *buf = 134218752;
            *v71 = v57;
            *&v71[8] = 2048;
            v72 = v58;
            *v73 = 2048;
            *&v73[2] = v59;
            v74 = 2048;
            v75 = v60;
            _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Normalized Rect %f - %f - %f - %f", buf, 0x2Au);
          }

          CFRelease(v8);
          result = 1;
          goto LABEL_36;
        }

        v48 = *BytePtr;
        v49 = *(BytePtr + 3);
        *a1 = ((*BytePtr - (*(BytePtr + 2) + v49)) / *BytePtr);
        a1[1] = 0;
        *(a1 + 2) = (v49 / v48);
        v31 = 0.0;
      }

      *(a1 + 3) = v31;
      goto LABEL_30;
    }

    v41 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
    if (v41)
    {
      v47 = v41 + 1;
    }

    else
    {
      v47 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
    }

    _MGLog(v47, 7442, @"Property copyDeviceTreeProperty(IODeviceTree:/product side-button-location) had unexpected size", v42, v43, v44, v45, v46, v63);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Property copyDeviceTreeProperty(IODeviceTree:/product side-button-location) had unexpected size", buf, 2u);
    }

    CFRelease(v8);
LABEL_26:
    result = 0;
    goto LABEL_36;
  }

  v32 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
  if (v32)
  {
    v38 = v32 + 1;
  }

  else
  {
    v38 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
  }

  _MGLog(v38, 7427, @"Failed to copyDeviceTreeProperty(IODeviceTree:/product side-button-location)", v33, v34, v35, v36, v37, v62);
  v39 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v39)
  {
    *buf = 0;
    _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to copyDeviceTreeProperty(IODeviceTree:/product side-button-location)", buf, 2u);
    goto LABEL_26;
  }

LABEL_36:
  v61 = *MEMORY[0x1E69E9840];
  return result;
}

CFDataRef sub_1B019B764()
{
  memset(v1, 0, sizeof(v1));
  if (sub_1B019B348(v1))
  {
    return CFDataCreate(0, v1, 32);
  }

  else
  {
    return 0;
  }
}

CFTypeRef sub_1B019B7DC()
{
  v0 = sub_1B0191100(@"zHeENZu+wbg7PUprwNwBWg", 0);
  if (v0)
  {
    v1 = v0;
    ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(*MEMORY[0x1E695E480], v0, @"/");
    if (ArrayBySeparatingStrings)
    {
      v3 = ArrayBySeparatingStrings;
      if (CFArrayGetCount(ArrayBySeparatingStrings) < 2)
      {
        v5 = 0;
      }

      else
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v3, 0);
        v5 = CFRetain(ValueAtIndex);
      }

      CFRelease(v3);
    }

    else
    {
      v5 = 0;
    }

    CFRelease(v1);
  }

  else
  {
    v6 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
    if (v6)
    {
      v12 = v6 + 1;
    }

    else
    {
      v12 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
    }

    _MGLog(v12, 2127, @"Could not retrieve region info", v7, v8, v9, v10, v11, v14[0]);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Could not retrieve region info", v14, 2u);
    }

    return 0;
  }

  return v5;
}

CFStringRef sub_1B019B914(int a1, char *a2, const __CFString *a3)
{
  result = sub_1B019BAC0(a1, a2, a3);
  if (result)
  {
    v5 = result;
    v6 = sub_1B0197110(result, a3);
    CFRelease(v5);
    return v6;
  }

  return result;
}

uint64_t sub_1B019B958(unsigned int *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v15[2] = 0;
  v15[0] = 5;
  v15[1] = 2155872256;
  memset(v14, 0, 12);
  v2 = a1 + 22;
  if (getattrlist(a1 + 88, v15, v14, 0xCuLL, 0))
  {
    v3 = *__error();
    v4 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
    v5 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
    if (v5)
    {
      v4 = v5 + 1;
    }

    strerror(v3);
    _MGLog(v4, 4176, @"getattrlist(%s, ATTR_VOL_SPACEUSED): %s", v6, v7, v8, v9, v10, v2);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v11 = strerror(v3);
      *buf = 136315394;
      v17 = v2;
      v18 = 2080;
      v19 = v11;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "getattrlist(%s, ATTR_VOL_SPACEUSED): %s", buf, 0x16u);
    }

    if (v3 == 45)
    {
      result = (*(a1 + 1) - *(a1 + 2)) * *a1;
    }

    else
    {
      result = -1;
    }
  }

  else
  {
    result = *(v14 + 4);
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

CFTypeRef sub_1B019BAC0(int a1, char *a2, const __CFString *a3)
{
  v4 = sub_1B019BB1C(a1, a2);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  CFProperty = IORegistryEntryCreateCFProperty(v4, a3, *MEMORY[0x1E695E480], 0);
  IOObjectRelease(v5);
  return CFProperty;
}

uint64_t sub_1B019BB1C(int a1, char *name)
{
  if (a1)
  {
    v2 = IOServiceNameMatching(name);
  }

  else
  {
    v2 = IOServiceMatching(name);
  }

  v3 = v2;
  if (v2)
  {
    v4 = *MEMORY[0x1E696CD60];

    return IOServiceGetMatchingService(v4, v3);
  }

  else
  {
    v6 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/MGIOKitSupport.c", 47);
    if (v6)
    {
      v12 = v6 + 1;
    }

    else
    {
      v12 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/MGIOKitSupport.c";
    }

    _MGLog(v12, 91, @"Can't create matching dict", v7, v8, v9, v10, v11, v13[0]);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Can't create matching dict", v13, 2u);
    }

    return 0;
  }
}

__CFDictionary *sub_1B019BC34()
{
  v0 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    valuePtr = 32401;
    v32 = 2;
    v30 = 0;
    v2 = sub_1B019C184();
    if (dyld_get_active_platform() == 6)
    {
      v3 = sub_1B01AB820();
      v4 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      v5 = CFNumberCreate(0, kCFNumberIntType, &v32);
      v6 = CFNumberCreate(0, kCFNumberIntType, &v30);
      if (v3)
      {
        CFDictionaryAddValue(Mutable, @"ArtworkDeviceProductDescription", v3);
        CFRelease(v3);
      }

      CFDictionaryAddValue(Mutable, @"ArtworkDeviceIdiom", @"pad");
      CFRelease(@"pad");
      if (v4)
      {
        CFDictionaryAddValue(Mutable, @"ArtworkDeviceSubType", v4);
        CFRelease(v4);
      }

      if (v5)
      {
        CFDictionaryAddValue(Mutable, @"ArtworkDeviceScaleFactor", v5);
        CFRelease(v5);
      }

      if (v2)
      {
        CFDictionaryAddValue(Mutable, @"ArtworkDisplayGamut", v2);
        CFRelease(v2);
      }

      CFDictionaryAddValue(Mutable, @"ArtworkDynamicDisplayMode", @"0");
      CFRelease(@"0");
      if (v6)
      {
        CFDictionaryAddValue(Mutable, @"DevicePerformanceMemoryClass", v6);
        CFRelease(v6);
      }

      CFDictionaryAddValue(Mutable, @"GraphicsFeatureSetClass", @"APPLE4");
      CFRelease(@"APPLE4");
      CFDictionaryAddValue(Mutable, @"GraphicsFeatureSetFallbacks", @"APPLE3:APPLE3v1:APPLE2:APPLE1:GLES2,0");
      CFRelease(@"APPLE3:APPLE3v1:APPLE2:APPLE1:GLES2,0");
      CFDictionaryAddValue(Mutable, @"CompatibleDeviceFallback", @"0");
      v7 = @"0";
    }

    else
    {
      v29 = v0;
      v15 = sub_1B01970CC("IODeviceTree:/product", @"product-description", 0);
      v16 = sub_1B01970CC("IODeviceTree:/product", @"artwork-device-idiom", 0);
      v17 = sub_1B0198DB0("IODeviceTree:/product", @"artwork-device-subtype", 0);
      v18 = sub_1B0198DB0("IODeviceTree:/product", @"artwork-scale-factor", 0);
      v19 = sub_1B01970CC("IODeviceTree:/product", @"artwork-dynamic-displaymode", 0);
      v20 = sub_1B0198DB0("IODeviceTree:/product", @"device-perf-memory-class", 0);
      valuea = sub_1B01970CC("IODeviceTree:/product", @"graphics-featureset-class", 0);
      v21 = sub_1B01970CC("IODeviceTree:/product", @"graphics-featureset-fallbacks", 0);
      v22 = sub_1B01970CC("IODeviceTree:/product", @"compatible-device-fallback", 0);
      if (v15)
      {
        CFDictionaryAddValue(Mutable, @"ArtworkDeviceProductDescription", v15);
        CFRelease(v15);
      }

      if (v16)
      {
        CFDictionaryAddValue(Mutable, @"ArtworkDeviceIdiom", v16);
        CFRelease(v16);
      }

      if (v17)
      {
        CFDictionaryAddValue(Mutable, @"ArtworkDeviceSubType", v17);
        CFRelease(v17);
      }

      if (v18)
      {
        CFDictionaryAddValue(Mutable, @"ArtworkDeviceScaleFactor", v18);
        CFRelease(v18);
      }

      if (v2)
      {
        CFDictionaryAddValue(Mutable, @"ArtworkDisplayGamut", v2);
        CFRelease(v2);
      }

      if (v19)
      {
        CFDictionaryAddValue(Mutable, @"ArtworkDynamicDisplayMode", v19);
        CFRelease(v19);
      }

      if (v20)
      {
        CFDictionaryAddValue(Mutable, @"DevicePerformanceMemoryClass", v20);
        CFRelease(v20);
      }

      if (valuea)
      {
        CFDictionaryAddValue(Mutable, @"GraphicsFeatureSetClass", valuea);
        CFRelease(valuea);
      }

      v0 = v29;
      if (v21)
      {
        CFDictionaryAddValue(Mutable, @"GraphicsFeatureSetFallbacks", v21);
        CFRelease(v21);
      }

      if (!v22)
      {
        goto LABEL_40;
      }

      CFDictionaryAddValue(Mutable, @"CompatibleDeviceFallback", v22);
      v7 = v22;
    }

    CFRelease(v7);
LABEL_40:
    if (!CFDictionaryGetValue(Mutable, @"ArtworkDeviceScaleFactor"))
    {
      *buf = -1082130432;
      v23 = sub_1B01914DC(@"SNfDJgQFV2Xj7+WnozcJPw", 7, 7, kCFNumberFloat32Type, buf);
      v24 = *buf;
      if (!v23)
      {
        v24 = -1.0;
      }

      *buf = v24;
      v25 = CFNumberCreate(v0, kCFNumberFloatType, buf);
      CFDictionarySetValue(Mutable, @"ArtworkDeviceScaleFactor", v25);
      if (v25)
      {
        CFRelease(v25);
      }
    }

    return Mutable;
  }

  v8 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
  if (v8)
  {
    v14 = v8 + 1;
  }

  else
  {
    v14 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
  }

  _MGLog(v14, 6013, @"Failed to create dictionary", v9, v10, v11, v12, v13, value);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to create dictionary", buf, 2u);
  }

  return Mutable;
}

CFStringRef sub_1B019C184()
{
  active_platform = dyld_get_active_platform();
  result = @"P3";
  if (active_platform != 6)
  {
    result = sub_1B01970CC("IODeviceTree:/product", @"artwork-display-gamut", 0);
    if (!result)
    {
      if (sub_1B01A1B30())
      {
        return @"P3";
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_1B019C1E4(void *a1, const __CFString *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v8 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
    if (v8)
    {
      v14 = v8 + 1;
    }

    else
    {
      v14 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
    }

    _MGLog(v14, 7966, @"Offset_struct was nil", v9, v10, v11, v12, v13, v40);
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_25;
    }

    *buf = 0;
    v15 = MEMORY[0x1E69E9C10];
    v16 = "Offset_struct was nil";
    v17 = 2;
LABEL_15:
    _os_log_impl(&dword_1B0190000, v15, OS_LOG_TYPE_DEFAULT, v16, buf, v17);
    goto LABEL_25;
  }

  v4 = sub_1B0199908("IODeviceTree:/product", a2, 0);
  if (!v4)
  {
    v18 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
    if (v18)
    {
      v24 = v18 + 1;
    }

    else
    {
      v24 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
    }

    _MGLog(v24, 7973, @"Failed to copyDeviceTreeProperty(IODeviceTree:/product %@)", v19, v20, v21, v22, v23, a2);
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_25;
    }

    *buf = 138412290;
    *&buf[4] = a2;
    v15 = MEMORY[0x1E69E9C10];
    v16 = "Failed to copyDeviceTreeProperty(IODeviceTree:/product %@)";
    v17 = 12;
    goto LABEL_15;
  }

  v5 = v4;
  if (CFDataGetLength(v4) == 20)
  {
    BytePtr = CFDataGetBytePtr(v5);
    Length = CFDataGetLength(v5);
    memcpy(a1, BytePtr, Length);
  }

  else
  {
    v25 = CFDataGetLength(v5);
    v26 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
    v27 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
    if (v27)
    {
      v26 = v27 + 1;
    }

    if (v25 == 16)
    {
      _MGLog(v26, 7982, @"Taking legacy CameraOffset_2D path", v28, v29, v30, v31, v32, v40);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Taking legacy CameraOffset_2D path", buf, 2u);
      }

      *buf = 0;
      *&buf[8] = 0;
      CFDataGetBytePtr(v5);
      CFDataGetLength(v5);
      __memcpy_chk();
      v33 = *&buf[8];
      *a1 = *buf;
      *(a1 + 2) = 0;
      *(a1 + 12) = v33;
    }

    else
    {
      CFDataGetLength(v5);
      _MGLog(v26, 7992, @"Property copyDeviceTreeProperty(IODeviceTree:/product %@) had an unexpected size of %zu instead of %zu or %zu.", v34, v35, v36, v37, v38, a2);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413058;
        *&buf[4] = a2;
        *&buf[12] = 2048;
        *&buf[14] = CFDataGetLength(v5);
        v42 = 2048;
        v43 = 20;
        v44 = 2048;
        v45 = 16;
        _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Property copyDeviceTreeProperty(IODeviceTree:/product %@) had an unexpected size of %zu instead of %zu or %zu.", buf, 0x2Au);
      }
    }
  }

  CFRelease(v5);
LABEL_25:
  v39 = *MEMORY[0x1E69E9840];
}

CFArrayRef sub_1B019C4F8()
{
  v7[0] = 0;
  v7[1] = 0;
  v8 = 0;
  sub_1B019C1E4(v7, @"front-cam-offset-from-center");
  return sub_1B019C538(v7, 1, v0, v1, v2, v3, v4, v5);
}

CFArrayRef sub_1B019C538(int32x2_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1[1].u32[1];
  if (v8)
  {
    v9 = vabs_s32(*a1);
    v10 = a2 | vcgt_u32(v9, vdup_lane_s32(v9, 1)).u8[0];
    v11 = HIDWORD(*a1);
    v12 = (v10 & 1) == 0;
    if (v10)
    {
      v13 = HIDWORD(*a1);
    }

    else
    {
      v13 = *a1;
    }

    if (!v12)
    {
      v11 = *a1;
    }

    v14 = v11 / v8;
    v15 = a1[1].i32[0] / v8;
    return sub_1B019C648(a1, a2, a3, a4, a5, a6, a7, a8, COERCE__INT64(v14));
  }

  else
  {
    v17 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
    if (v17)
    {
      v23 = v17 + 1;
    }

    else
    {
      v23 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
    }

    _MGLog(v23, 8025, @"Unexpected camera_offset scale, malformed data provided", v18, v19, v20, v21, v22, v24);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Unexpected camera_offset scale, malformed data provided", buf, 2u);
    }

    return 0;
  }
}

CFArrayRef sub_1B019C648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = &a9;
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v10 = 3;
  do
  {
    v11 = v18++;
    v12 = *v11;
    valuePtr = v12;
    v13 = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
    if (v13)
    {
      v14 = v13;
      CFArrayAppendValue(Mutable, v13);
      CFRelease(v14);
    }

    --v10;
  }

  while (v10);
  if (!Mutable)
  {
    return 0;
  }

  Copy = CFArrayCreateCopy(0, Mutable);
  CFRelease(Mutable);
  return Copy;
}

CFDataRef sub_1B019C724()
{
  memset(v1, 0, sizeof(v1));
  if (sub_1B019B054(@"camera-button-location", 1, v1))
  {
    return CFDataCreate(0, v1, 32);
  }

  else
  {
    return 0;
  }
}

void sub_1B019C778(uint64_t a1, _BYTE *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = sub_1B019C840("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c");
  _MGLog(v4, 7547, @"Failed to copy EDT property for %@", v5, v6, v7, v8, v9, a1);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = a1;
    _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to copy EDT property for %@", buf, 0xCu);
  }

  *a2 = 0;
  v10 = *MEMORY[0x1E69E9840];
}

char *sub_1B019C840(char *a1)
{
  v1 = a1;
  if (a1 && (*a1 != 47 || a1[1]))
  {
    v2 = rindex(a1, 47);
    if (v2)
    {
      return v2 + 1;
    }
  }

  return v1;
}

BOOL sub_1B019C8B0(const __CFString *a1)
{
  v2 = sub_1B019BC34();
  Value = CFDictionaryGetValue(v2, @"GraphicsFeatureSetClass");
  v4 = CFDictionaryGetValue(v2, @"GraphicsFeatureSetFallbacks");
  if (!a1 || !Value)
  {
    goto LABEL_7;
  }

  v5 = v4;
  v6 = 1;
  if (CFStringCompare(Value, a1, 1uLL) == kCFCompareEqualTo)
  {
    goto LABEL_8;
  }

  if (v5)
  {
    ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(*MEMORY[0x1E695E480], v5, @":");
    v9.length = CFArrayGetCount(ArrayBySeparatingStrings);
    v9.location = 0;
    v6 = CFArrayContainsValue(ArrayBySeparatingStrings, v9, a1) != 0;
    if (ArrayBySeparatingStrings)
    {
      CFRelease(ArrayBySeparatingStrings);
    }
  }

  else
  {
LABEL_7:
    v6 = 0;
  }

LABEL_8:
  if (v2)
  {
    CFRelease(v2);
  }

  return v6;
}

BOOL sub_1B019C994()
{
  if (sub_1B019C8B0(@"APPLE2"))
  {
    return 1;
  }

  return sub_1B019C8B0(@"MTL2,2");
}

__CFString *sub_1B019C9DC()
{
  result = sub_1B0192B9C(@"ReleaseType", 0);
  if (!result)
  {
    if (os_variant_has_internal_content())
    {
      return @"Internal";
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL sub_1B019CA20()
{
  v0 = sub_1B019C9DC();
  if (v0)
  {
    v7 = v0;
    v8 = sub_1B019CB70(v0, @"Internal", v1, v2, v3, v4, v5, v6, @"Lite Internal");
    v15 = sub_1B019CB70(@"Internal", v7, v9, v10, v11, v12, v13, v14, 0);
    CFRelease(v7);
    return v8 || v15;
  }

  else
  {

    return MGGetBoolAnswer(@"Oji6HRoPi7rH7HPdWVakuw");
  }
}

uint64_t sub_1B019CAD0()
{
  v0 = sub_1B01998E0("IODeviceTree:/product", @"disable-chamois", 0);
  v1 = sub_1B0193D14();
  v2 = MEMORY[0x1E695E4C0];
  if (v1 == 3 && !v0)
  {
    if ((sub_1B0198CA8() & 1) != 0 || sub_1B019AFD8() >> 33 && (sub_1B019D140(@"H14") || sub_1B019D228(@"t8103", 0)))
    {
      v2 = MEMORY[0x1E695E4D0];
    }

    else
    {
      v2 = MEMORY[0x1E695E4C0];
    }
  }

  return *v2;
}

BOOL sub_1B019CB70(_BOOL8 stringToFind, CFStringRef theString, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (stringToFind)
  {
    v9 = stringToFind;
    v13 = &a9;
    do
    {
      location = CFStringFind(theString, v9, 0).location;
      v11 = location == -1;
      stringToFind = location != -1;
      if (!v11)
      {
        break;
      }

      v12 = v13++;
      theString = *v12;
    }

    while (*v12);
  }

  return stringToFind;
}

BOOL sub_1B019CBD8()
{
  v0 = sub_1B019C184();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = CFEqual(v0, @"P3") != 0;
  CFRelease(v1);
  return v2;
}

uint64_t sub_1B019CC58()
{
  v0 = sub_1B0198CA8();
  v1 = MEMORY[0x1E695E4D0];
  if (!v0)
  {
    v1 = MEMORY[0x1E695E4C0];
  }

  return *v1;
}

__CFDictionary *sub_1B019CC8C()
{
  if (sub_1B01978E8())
  {
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(0, 6, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  for (i = 0; i != 6; ++i)
  {
    v2 = off_1E7A92A78[i];
    v3 = sub_1B0191100(v2, 0);
    if (v3)
    {
      v4 = v3;
      CFDictionarySetValue(Mutable, v2, v3);
      CFRelease(v4);
    }
  }

  if (!CFDictionaryGetCount(Mutable))
  {
    CFRelease(Mutable);
    return 0;
  }

  return Mutable;
}

__CFDictionary *sub_1B019CD44()
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    v40 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
    if (v40)
    {
      v46 = v40 + 1;
    }

    else
    {
      v46 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
    }

    _MGLog(v46, 8512, @"Allocation failed for IOSurface dictionary.", v41, v42, v43, v44, v45, v58);
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      return Mutable;
    }

    v60 = 0;
    v47 = MEMORY[0x1E69E9C10];
    v48 = "Allocation failed for IOSurface dictionary.";
    v49 = &v60;
LABEL_36:
    _os_log_impl(&dword_1B0190000, v47, OS_LOG_TYPE_DEFAULT, v48, v49, 2u);
    return Mutable;
  }

  v1 = sub_1B01996AC();
  if (!v1)
  {
    v50 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
    if (v50)
    {
      v56 = v50 + 1;
    }

    else
    {
      v56 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
    }

    _MGLog(v56, 8518, @"Failed to get current SOC Generation string", v51, v52, v53, v54, v55, v58);
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      return Mutable;
    }

    *buf = 0;
    v47 = MEMORY[0x1E69E9C10];
    v48 = "Failed to get current SOC Generation string";
    v49 = buf;
    goto LABEL_36;
  }

  v8 = v1;
  v9 = *MEMORY[0x1E695E4C0];
  v10 = sub_1B019CB70(v1, @"H10", v2, v3, v4, v5, v6, v7, @"H11");
  v11 = *MEMORY[0x1E695E4D0];
  if (v10)
  {
    v12 = *MEMORY[0x1E695E4D0];
  }

  else
  {
    v12 = v9;
  }

  CFDictionaryAddValue(Mutable, @"media-compression", v12);
  if (sub_1B019CB70(v8, @"H11", v13, v14, v15, v16, v17, v18, @"H12"))
  {
    v19 = v11;
  }

  else
  {
    v19 = v9;
  }

  CFDictionaryAddValue(Mutable, @"buffer-compression", v19);
  if (sub_1B019CB70(v8, @"H12", v20, v21, v22, v23, v24, v25, @"H11") || (v26 = sub_1B0198CA8(), v27 = v11, v26))
  {
    v27 = v9;
  }

  CFDictionaryAddValue(Mutable, @"universal-buffer-compression", v27);
  if (sub_1B019CB70(v8, @"H13", v28, v29, v30, v31, v32, v33, @"H12") || (v34 = sub_1B0198CA8(), v35 = v11, v34))
  {
    v35 = v9;
  }

  CFDictionaryAddValue(Mutable, @"universal-lossy-buffer-compression", v35);
  v36 = sub_1B019D140(@"H15");
  if (sub_1B019D140(@"M11") || v36)
  {
    v37 = v11;
  }

  else
  {
    v37 = v9;
  }

  CFDictionaryAddValue(Mutable, @"universal-multislice-buffer-compression", v37);
  v38 = sub_1B019D140(@"H16");
  v39 = v9;
  if (v38)
  {
    if (sub_1B019D228(@"t8130", 0))
    {
      v39 = v9;
    }

    else
    {
      v39 = v11;
    }
  }

  CFDictionaryAddValue(Mutable, @"universal-pARGB10101010-buffer-compression", v39);
  if (sub_1B019D140(@"H17") && !sub_1B019D228(@"t8140", 0))
  {
    v9 = v11;
  }

  CFDictionaryAddValue(Mutable, @"universal-buffer-compression-requires-plane-alignment-2048", v9);
  CFRelease(v8);
  return Mutable;
}

BOOL sub_1B019D140(_BOOL8 a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = sub_1B01996AC();
    if (v2)
    {
      v3 = v2;
      CharacterAtIndex = CFStringGetCharacterAtIndex(v2, 0);
      if (CFStringGetCharacterAtIndex(v1, 0) != CharacterAtIndex)
      {
        v1 = 0;
      }

      else
      {
        v5 = sub_1B019D1D4(v3);
        v1 = v5 >= sub_1B019D1D4(v1);
      }

      CFRelease(v3);
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

uint64_t sub_1B019D1D4(const __CFString *a1)
{
  v5.length = CFStringGetLength(a1) - 1;
  v5.location = 1;
  v2 = CFStringCreateWithSubstring(0, a1, v5);
  IntValue = CFStringGetIntValue(v2);
  if (v2)
  {
    CFRelease(v2);
  }

  return IntValue;
}

BOOL sub_1B019D228(_BOOL8 a1, int a2)
{
  v2 = a1;
  if (a1)
  {
    v4 = MGCopyAnswer(@"5pYKlGnYYBzGvAlIU8RjEQ");
    if (v4)
    {
      v5 = v4;
      v6 = CFGetTypeID(v4);
      if (v6 == CFStringGetTypeID())
      {
        if (a2)
        {
          v2 = sub_1B0194DB0(v5, v2, a2);
        }

        else
        {
          v2 = CFEqual(v2, v5) != 0;
        }
      }

      else
      {
        v2 = 0;
      }

      CFRelease(v5);
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t sub_1B019D2D0()
{
  v68 = *MEMORY[0x1E69E9840];
  if (sub_1B0193D14() != 3)
  {
    goto LABEL_4;
  }

  v67 = 1789837692;
  v66 = xmmword_1B01FDF08;
  v65 = -1239654590;
  v64 = xmmword_1B01FDF1C;
  v63 = -1579092758;
  v62 = xmmword_1B01FDF30;
  v61 = 48355600;
  v60 = xmmword_1B01FDF44;
  v59 = -679691073;
  v58 = xmmword_1B01FDF58;
  v57 = 1430379884;
  v56 = xmmword_1B01FDF6C;
  if (MGIsDeviceOneOfType(&v66, v0, v1, v2, v3, v4, v5, v6, &v64) & 1) != 0 || (v55 = -926344036, v54 = xmmword_1B01FE138, v53 = -954998212, v52 = xmmword_1B01FE14C, v51 = 436612651, v50 = xmmword_1B01FE160, (MGIsDeviceOneOfType(&v54, v7, v8, v9, v10, v11, v12, v13, &v52)))
  {
LABEL_4:
    v21 = MEMORY[0x1E695E4C0];
  }

  else
  {
    v49 = 1602014129;
    v48 = xmmword_1B01FDECC;
    v47 = -810116762;
    v46 = xmmword_1B01FDEE0;
    v45 = -1195351767;
    v44 = xmmword_1B01FDEF4;
    v43 = -199226823;
    v42 = xmmword_1B01FDC24;
    v41 = 1412427398;
    v40 = xmmword_1B01FDC38;
    v39 = -1283070668;
    v38 = xmmword_1B01FDC4C;
    v37 = 160260070;
    v36 = xmmword_1B01FDC60;
    v24 = MGIsDeviceOneOfType(&v48, v14, v15, v16, v17, v18, v19, v20, &v46);
    v21 = MEMORY[0x1E695E4C0];
    if ((v24 & 1) == 0)
    {
      v35 = -1639077591;
      v34 = xmmword_1B01FDE2C;
      v33 = 338555555;
      v32 = xmmword_1B01FDE40;
      if (!MGIsDeviceOneOfType(&v34, v25, v26, v27, v28, v29, v30, v31, &v32))
      {
        v21 = MEMORY[0x1E695E4D0];
      }
    }
  }

  result = *v21;
  v23 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B019D62C()
{
  if (sub_1B0193D14() == 6 || sub_1B01997C0(@"H4"))
  {
    v0 = MEMORY[0x1E695E4C0];
  }

  else
  {
    v1 = sub_1B01997C0(@"H5");
    v0 = MEMORY[0x1E695E4C0];
    if (!v1)
    {
      v0 = MEMORY[0x1E695E4D0];
    }
  }

  return *v0;
}

uint64_t sub_1B019D690()
{
  if (sub_1B0193D14() == 6 || sub_1B01997C0(@"H6") || sub_1B01997C0(@"H5") || sub_1B01997C0(@"H7"))
  {
    v0 = MEMORY[0x1E695E4C0];
  }

  else
  {
    v2 = sub_1B01997C0(@"H4");
    v0 = MEMORY[0x1E695E4C0];
    if (!v2)
    {
      v0 = MEMORY[0x1E695E4D0];
    }
  }

  return *v0;
}

uint64_t sub_1B019D714()
{
  v3 = -1;
  v0 = sub_1B01914DC(@"eJGhnVvylF3dMOHBKJzeiw", 5, 5, kCFNumberSInt32Type, &v3);
  if (v0 && v3 > 0)
  {
    v1 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v1 = MEMORY[0x1E695E4C0];
  }

  return *v1;
}

CFNumberRef sub_1B019D77C()
{
  v0 = *MEMORY[0x1E696CD60];
  v1 = IOServiceMatching("IOPlatformExpertDevice");
  MatchingService = IOServiceGetMatchingService(v0, v1);
  if (!MatchingService)
  {
    return 0;
  }

  v3 = IORegistryEntrySearchCFProperty(MatchingService, "IODeviceTree", @"ane-type", *MEMORY[0x1E695E480], 1u);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  BytePtr = CFDataGetBytePtr(v3);
  v6 = CFNumberCreate(0, kCFNumberSInt32Type, BytePtr);
  CFRelease(v4);
  return v6;
}

const __CFNumber *sub_1B019D850()
{
  valuePtr = 0;
  result = sub_1B0198DB0("IODeviceTree:/options", @"emu", 0);
  if (result)
  {
    v1 = result;
    CFNumberGetValue(result, kCFNumberIntType, &valuePtr);
    CFRelease(v1);
    return (valuePtr != 0);
  }

  return result;
}

uint64_t sub_1B019D8B8()
{
  v13 = *MEMORY[0x1E69E9840];
  v0 = IOPSGetPercentRemaining();
  if (v0)
  {
    v1 = v0;
    v2 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
    if (v2)
    {
      v8 = v2 + 1;
    }

    else
    {
      v8 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
    }

    _MGLog(v8, 4280, @"Failed to get battery level with error %03X", v3, v4, v5, v6, v7, v1);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v12 = v1;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to get battery level with error %03X", buf, 8u);
    }
  }

  result = 101;
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_1B019D9C0()
{
  v0 = *(off_1EB6CFEC0 + 95);
  if (!v0)
  {
    v0 = sub_1B0193150(95, 2);
  }

  return v0(0) != 3;
}

CFNumberRef sub_1B019DA28()
{
  valuePtr = 0;
  v0 = sub_1B0198DB0("IODeviceTree:/buttons", @"home-button-type", 0);
  if (v0)
  {
    v1 = v0;
    if (!CFNumberGetValue(v0, kCFNumberSInt32Type, &valuePtr))
    {
      valuePtr = 0;
    }

    CFRelease(v1);
  }

  return CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
}

uint64_t sub_1B019DAA4()
{
  v44 = *MEMORY[0x1E69E9840];
  v0 = sub_1B019BAC0(0, "IOPMPowerSource", @"BatteryInstalled");
  if (v0)
  {
    v1 = v0;
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(v1))
    {
      if (CFBooleanGetValue(v1))
      {
        CFRelease(v1);
LABEL_24:
        result = 1;
        goto LABEL_25;
      }

      v20 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
      if (v20)
      {
        v26 = v20 + 1;
      }

      else
      {
        v26 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
      }

      _MGLog(v26, 3039, @"BatteryInstalledKey: false", v21, v22, v23, v24, v25, v40);
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_21;
      }

      *buf = 0;
      v17 = MEMORY[0x1E69E9C10];
      v18 = "BatteryInstalledKey: false";
      v19 = 2;
    }

    else
    {
      v10 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
      if (v10)
      {
        v16 = v10 + 1;
      }

      else
      {
        v16 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
      }

      _MGLog(v16, 3042, @"Unsupported type %@ from copyIORegistryServiceProperty BatteryInstalledKey", v11, v12, v13, v14, v15, v1);
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_21;
      }

      *buf = 138412290;
      v43 = v1;
      v17 = MEMORY[0x1E69E9C10];
      v18 = "Unsupported type %@ from copyIORegistryServiceProperty BatteryInstalledKey";
      v19 = 12;
    }

    _os_log_impl(&dword_1B0190000, v17, OS_LOG_TYPE_DEFAULT, v18, buf, v19);
LABEL_21:
    CFRelease(v1);
    goto LABEL_22;
  }

  v3 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
  if (v3)
  {
    v9 = v3 + 1;
  }

  else
  {
    v9 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
  }

  _MGLog(v9, 3046, @"No PowerSource service property BatteryInstalledKey", v4, v5, v6, v7, v8, v40);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "No PowerSource service property BatteryInstalledKey", buf, 2u);
  }

LABEL_22:
  v27 = *MEMORY[0x1E696CD60];
  v28 = IOServiceMatching("AppleHDQGasGaugeControl");
  MatchingService = IOServiceGetMatchingService(v27, v28);
  if (MatchingService)
  {
    IOObjectRelease(MatchingService);
    goto LABEL_24;
  }

  v32 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
  if (v32)
  {
    v38 = v32 + 1;
  }

  else
  {
    v38 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
  }

  _MGLog(v38, 3056, @"No service matching AppleHDQGasGaugeControl", v33, v34, v35, v36, v37, v41);
  v39 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v39)
  {
    *buf = 0;
    _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "No service matching AppleHDQGasGaugeControl", buf, 2u);
    result = 0;
  }

LABEL_25:
  v31 = *MEMORY[0x1E69E9840];
  return result;
}

CFDataRef sub_1B019DD64()
{
  v0 = sub_1B019BAC0(1, "als", @"als-colorCfg");
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFDataGetTypeID() && CFDataGetLength(v1) > 0)
    {
      return v1;
    }

    CFRelease(v1);
  }

  return sub_1B019E354(0x436C7243u);
}

CFNumberRef sub_1B019DDF4(int a1)
{
  v34 = *MEMORY[0x1E69E9840];
  valuePtr = -1;
  v2 = sub_1B0192F20("IODeviceTree:/product", @"device-colors", 0);
  if (v2)
  {
    v3 = v2;
    v4 = CFGetTypeID(v2);
    if (v4 == CFDataGetTypeID() && CFDataGetLength(v3) == 16)
    {
      BytePtr = CFDataGetBytePtr(v3);
      v6 = 5;
      if (!a1)
      {
        v6 = 9;
      }

      v7 = 6;
      if (!a1)
      {
        v7 = 10;
      }

      v8 = 8;
      if (a1)
      {
        v8 = 4;
      }

      v9 = BytePtr[v8];
      v10 = BytePtr[v7];
      v11 = BytePtr[v6];
      v12 = BytePtr[1];
      if (v12 == 2)
      {
        v13 = v9 | (v10 << 16);
        goto LABEL_19;
      }

      if (v12 == 1)
      {
        v13 = v10 | (v9 << 16);
LABEL_19:
        v15 = v13 | (v11 << 8);
        valuePtr = v15;
LABEL_26:
        CFRelease(v3);
        goto LABEL_27;
      }

      v16 = BytePtr;
      v17 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
      if (v17)
      {
        v23 = v17 + 1;
      }

      else
      {
        v23 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
      }

      v28 = *v16;
      _MGLog(v23, 2993, @"unknown dclr version %u.%u", v18, v19, v20, v21, v22, v16[1]);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v24 = v16[1];
        v25 = *v16;
        *buf = 67109376;
        v31 = v24;
        v32 = 1024;
        v33 = v25;
        _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "unknown dclr version %u.%u", buf, 0xEu);
      }
    }

    v15 = -1;
    goto LABEL_26;
  }

  if (a1)
  {
    v14 = sub_1B019E004();
  }

  else
  {
    v14 = sub_1B01BA6FC();
  }

  if (v14 > 8)
  {
    goto LABEL_29;
  }

  v15 = *(&off_1E7A92940 + 4 * v14 + 2);
  valuePtr = v15;
LABEL_27:
  if (v15 == -1)
  {
LABEL_29:
    result = 0;
    goto LABEL_30;
  }

  result = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
LABEL_30:
  v27 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B019E004()
{
  v0 = sub_1B019BAC0(1, "als", @"noMultiColorSupport");
  v1 = v0;
  if (v0)
  {
    v2 = CFGetTypeID(v0);
    if (v2 != CFDataGetTypeID() || CFDataGetLength(v1) != 4 || *CFDataGetBytePtr(v1))
    {
      v3 = 0xFFFFFFFFLL;
      goto LABEL_12;
    }
  }

  v4 = sub_1B019DD64();
  if (!v4)
  {
    sub_1B0191658(1);
    v3 = 0xFFFFFFFFLL;
    if (!v1)
    {
      return v3;
    }

    goto LABEL_12;
  }

  v5 = v4;
  v6 = CFGetTypeID(v4);
  if (v6 == CFDataGetTypeID() && CFDataGetLength(v5) > 1)
  {
    v3 = CFDataGetBytePtr(v5)[1];
  }

  else
  {
    sub_1B0191658(1);
    v3 = 0xFFFFFFFFLL;
  }

  CFRelease(v5);
  if (v1)
  {
LABEL_12:
    CFRelease(v1);
  }

  return v3;
}

CFDataRef sub_1B019E100(unsigned int a1, CFIndex a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (MGGetBoolAnswer(@"8DHlxr5ECKhTSL3HmlZQGQ"))
  {
    v4 = sub_1B01BF148();
  }

  else
  {
    v28 = 0;
    v4 = MGCopyAnswerWithError(@"9/J7LY7zuYSGW1BcSTRpOw", 0, &v28);
    if (!v4)
    {
      v5 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c", 47);
      v11 = v5 ? v5 + 1 : "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c";
      _MGLog(v11, 567, @"Failed to copy the SysCfgDict MG key with error: %d", v6, v7, v8, v9, v10, v28);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v30) = v28;
        _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to copy the SysCfgDict MG key with error: %d", buf, 8u);
      }
    }
  }

  if (!v4)
  {
    v18 = 0;
    goto LABEL_19;
  }

  *buf = bswap32(a1);
  v12 = CFStringCreateWithBytes(0, buf, 4, 0x8000100u, 0);
  Value = CFDictionaryGetValue(v4, v12);
  if (!Value)
  {
    v21 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c", 47);
    if (v21)
    {
      v27 = v21 + 1;
    }

    else
    {
      v27 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c";
    }

    _MGLog(v27, 586, @"Failed to find key %@", v22, v23, v24, v25, v26, v12);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v30 = v12;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to find key %@", buf, 0xCu);
    }

    v18 = 0;
    if (!v12)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v14 = Value;
  Length = CFDataGetLength(Value);
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (Length >= a2)
    {
      goto LABEL_15;
    }

    Length = CFDataGetLength(v14);
  }

  a2 = Length;
LABEL_15:
  v16 = *MEMORY[0x1E695E480];
  BytePtr = CFDataGetBytePtr(v14);
  v18 = CFDataCreate(v16, BytePtr, a2);
  if (v12)
  {
LABEL_16:
    CFRelease(v12);
  }

LABEL_17:
  CFRelease(v4);
LABEL_19:
  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

BOOL sub_1B019E360()
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = 255;
  v5 = 4;
  if (sysctlbyname("kern.exclaves_status", &v6, &v5, 0, 0) == -1)
  {
    v1 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v1)
    {
      v2 = __error();
      v3 = strerror(*v2);
      *buf = 136315138;
      v8 = v3;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "sysctlbyname(kern.exclaves_status): %s", buf, 0xCu);
      result = 0;
    }
  }

  else
  {
    result = v6 == 1;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

CFTypeRef sub_1B019E450()
{
  v0 = *(off_1EB6CFEC0 + 12);
  if (!v0)
  {
    v0 = sub_1B0193150(12, 2);
  }

  TypeID = CFStringGetTypeID();

  return sub_1B0196878("_CTServerConnectionCopyFirmwareVersion", v0, TypeID);
}

BOOL sub_1B019E4B0()
{
  v0 = sub_1B019E504(@"com.apple.radios.plist", @"AirplaneMode");
  v1 = v0;
  v2 = *MEMORY[0x1E695E4D0];
  if (v0)
  {
    CFRelease(v0);
  }

  return v1 == v2;
}

CFPropertyListRef sub_1B019E504(CFStringRef prefsID, const __CFString *a2)
{
  v3 = SCPreferencesCreate(0, @"MobileGestalt", prefsID);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  Value = SCPreferencesGetValue(v3, a2);
  v6 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  CFRelease(v4);
  return v6;
}

int8x16_t *sub_1B019E5B0(int8x16_t *a1, int8x16_t *a2, uint64_t a3, int8x16_t *a4, int8x16_t *a5, uint64_t a6)
{
  v6 = a5[15].i32[0];
  v7 = vqtbl1q_s8(*a4, *qword_1B019E5A0);
  v9 = __OFSUB__(a3, 128);
  v8 = a3 - 128 < 0;
  v10 = a3 - 128;
  if (v8 != v9)
  {
    return sub_1B019EA4C(a1, a2, v10, a4, a5, a6, v6);
  }

  else
  {
    return sub_1B019E600(a1, a2, v10, a4, a5, a6, v6);
  }
}

uint64_t sub_1B019E600(_OWORD *a1, int8x16_t *a2, uint64_t a3, uint64_t a4, int8x16_t *a5, uint64_t a6, int a7)
{
  do
  {
    v8 = vaddq_s64(v7, vaddq_s64(v7, vaddq_s64(v7, vaddq_s64(v7, v8))));
    _Q20 = *a5;
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a5[1];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a5[2];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a5[3];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a5[4];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a5[5];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a5[6];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a5[7];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a5[8];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a5[9];
    v167 = a5[10];
    if (a7 > 160)
    {
      __asm
      {
        AESE            V22.16B, V20.16B
        AESMC           V22.16B, V22.16B
        AESE            V23.16B, V20.16B
        AESMC           V23.16B, V23.16B
        AESE            V24.16B, V20.16B
        AESMC           V24.16B, V24.16B
        AESE            V25.16B, V20.16B
        AESMC           V25.16B, V25.16B
        AESE            V26.16B, V20.16B
        AESMC           V26.16B, V26.16B
        AESE            V27.16B, V20.16B
        AESMC           V27.16B, V27.16B
        AESE            V28.16B, V20.16B
        AESMC           V28.16B, V28.16B
        AESE            V29.16B, V20.16B
        AESMC           V29.16B, V29.16B
      }

      _Q20 = a5[10];
      __asm
      {
        AESE            V22.16B, V20.16B
        AESMC           V22.16B, V22.16B
        AESE            V23.16B, V20.16B
        AESMC           V23.16B, V23.16B
        AESE            V24.16B, V20.16B
        AESMC           V24.16B, V24.16B
        AESE            V25.16B, V20.16B
        AESMC           V25.16B, V25.16B
        AESE            V26.16B, V20.16B
        AESMC           V26.16B, V26.16B
        AESE            V27.16B, V20.16B
        AESMC           V27.16B, V27.16B
        AESE            V28.16B, V20.16B
        AESMC           V28.16B, V28.16B
        AESE            V29.16B, V20.16B
        AESMC           V29.16B, V29.16B
      }

      _Q20 = a5[11];
      v167 = a5[12];
      if (a7 > 192)
      {
        __asm
        {
          AESE            V22.16B, V20.16B
          AESMC           V22.16B, V22.16B
          AESE            V23.16B, V20.16B
          AESMC           V23.16B, V23.16B
          AESE            V24.16B, V20.16B
          AESMC           V24.16B, V24.16B
          AESE            V25.16B, V20.16B
          AESMC           V25.16B, V25.16B
          AESE            V26.16B, V20.16B
          AESMC           V26.16B, V26.16B
          AESE            V27.16B, V20.16B
          AESMC           V27.16B, V27.16B
          AESE            V28.16B, V20.16B
          AESMC           V28.16B, V28.16B
          AESE            V29.16B, V20.16B
          AESMC           V29.16B, V29.16B
        }

        _Q20 = a5[12];
        __asm
        {
          AESE            V22.16B, V20.16B
          AESMC           V22.16B, V22.16B
          AESE            V23.16B, V20.16B
          AESMC           V23.16B, V23.16B
          AESE            V24.16B, V20.16B
          AESMC           V24.16B, V24.16B
          AESE            V25.16B, V20.16B
          AESMC           V25.16B, V25.16B
          AESE            V26.16B, V20.16B
          AESMC           V26.16B, V26.16B
          AESE            V27.16B, V20.16B
          AESMC           V27.16B, V27.16B
          AESE            V28.16B, V20.16B
          AESMC           V28.16B, V28.16B
          AESE            V29.16B, V20.16B
          AESMC           V29.16B, V29.16B
        }

        _Q20 = a5[13];
        v167 = a5[14];
      }
    }

    v235 = *a1;
    v236 = *(a1 + 1);
    v237 = *(a1 + 2);
    v238 = *(a1 + 3);
    v234 = a1 + 4;
    __asm
    {
      AESE            V22.16B, V20.16B
      AESE            V23.16B, V20.16B
      AESE            V24.16B, V20.16B
      AESE            V25.16B, V20.16B
    }

    v243 = veorq_s8(v235, veorq_s8(_Q22, v167));
    v244 = veorq_s8(v236, veorq_s8(_Q23, v167));
    v245 = veorq_s8(v237, veorq_s8(_Q24, v167));
    v246 = veorq_s8(v238, veorq_s8(_Q25, v167));
    v247 = *v234;
    v248 = *(v234 + 1);
    v249 = *(v234 + 2);
    v250 = *(v234 + 3);
    a1 = v234 + 4;
    __asm
    {
      AESE            V26.16B, V20.16B
      AESE            V27.16B, V20.16B
      AESE            V28.16B, V20.16B
      AESE            V29.16B, V20.16B
    }

    *a2 = v243;
    a2[1] = v244;
    a2[2] = v245;
    a2[3] = v246;
    v255 = a2 + 4;
    *v255 = veorq_s8(v247, veorq_s8(_Q26, v167));
    v255[1] = veorq_s8(v248, veorq_s8(_Q27, v167));
    v255[2] = veorq_s8(v249, veorq_s8(_Q28, v167));
    v255[3] = veorq_s8(v250, veorq_s8(_Q29, v167));
    a2 = v255 + 4;
    _VF = __OFSUB__(a3, 128);
    _NF = a3 - 128 < 0;
    a3 -= 128;
  }

  while (_NF == _VF);
  return sub_1B019EA4C();
}

int8x16_t *sub_1B019EA4C(int8x16_t *result, int8x16_t *a2, uint64_t a3, int8x16_t *a4, int8x16_t *a5, uint64_t a6, int a7)
{
  v10 = a3 < -112;
  for (i = a3 + 112; !v10; i -= 16)
  {
    _Q4 = *a5;
    _Q5 = a5[1];
    _Q6 = a5[2];
    v9 = vaddq_s64(v7, v9);
    __asm
    {
      AESE            V7.16B, V4.16B
      AESMC           V7.16B, V7.16B
      AESE            V7.16B, V5.16B
      AESMC           V7.16B, V7.16B
      AESE            V7.16B, V6.16B
      AESMC           V7.16B, V7.16B
    }

    _Q4 = a5[3];
    _Q5 = a5[4];
    _Q6 = a5[5];
    __asm
    {
      AESE            V7.16B, V4.16B
      AESMC           V7.16B, V7.16B
      AESE            V7.16B, V5.16B
      AESMC           V7.16B, V7.16B
      AESE            V7.16B, V6.16B
      AESMC           V7.16B, V7.16B
    }

    _Q4 = a5[6];
    _Q5 = a5[7];
    _Q6 = a5[8];
    __asm
    {
      AESE            V7.16B, V4.16B
      AESMC           V7.16B, V7.16B
      AESE            V7.16B, V5.16B
      AESMC           V7.16B, V7.16B
      AESE            V7.16B, V6.16B
      AESMC           V7.16B, V7.16B
    }

    _Q20 = a5[9];
    _Q21 = a5[10];
    if (a7 > 160)
    {
      __asm
      {
        AESE            V7.16B, V20.16B
        AESMC           V7.16B, V7.16B
        AESE            V7.16B, V21.16B
        AESMC           V7.16B, V7.16B
      }

      _Q20 = a5[11];
      _Q21 = a5[12];
      if (a7 > 192)
      {
        __asm
        {
          AESE            V7.16B, V20.16B
          AESMC           V7.16B, V7.16B
          AESE            V7.16B, V21.16B
          AESMC           V7.16B, V7.16B
        }

        _Q20 = a5[13];
        _Q21 = a5[14];
      }
    }

    __asm { AESE            V7.16B, V20.16B }

    v54 = *result++;
    *a2++ = veorq_s8(v54, veorq_s8(_Q7, _Q21));
    v10 = i < 16;
  }

  *a4 = vqtbl1q_s8(v9, v8);
  return result;
}

__CFString *sub_1B019EB18()
{
  v522 = *MEMORY[0x1E69E9840];
  v521 = 1459208360;
  *buf = xmmword_1B01F91C4;
  if (MGIsDeviceOfType(buf))
  {
    v0 = MGCopyAnswer(@"97JDvERpVwO+GHtthIh7hA");
    if (v0)
    {
      v1 = v0;
      v2 = @"A";
      if (!CFEqual(@"A3260", v0))
      {
        if (!CFEqual(@"A3516", v1))
        {
          if (!CFEqual(@"A3517", v1))
          {
            v3 = @"A3518";
LABEL_50:
            v10 = CFEqual(v3, v1);
            v11 = @"D";
            goto LABEL_51;
          }

          goto LABEL_43;
        }

        goto LABEL_29;
      }

LABEL_53:
      CFRelease(v1);
      goto LABEL_54;
    }

    goto LABEL_31;
  }

  v519 = 1223847566;
  v518 = xmmword_1B01F91D8;
  if (MGIsDeviceOfType(&v518))
  {
    v4 = MGCopyAnswer(@"97JDvERpVwO+GHtthIh7hA");
    if (v4)
    {
      v1 = v4;
      v2 = @"A";
      if (CFEqual(@"A3081", v4))
      {
        goto LABEL_53;
      }

      if (!CFEqual(@"A3286", v1))
      {
        if (!CFEqual(@"A3287", v1))
        {
          v3 = @"A3288";
          goto LABEL_50;
        }

        goto LABEL_43;
      }

LABEL_29:
      v2 = @"B";
      goto LABEL_53;
    }

LABEL_31:
    v2 = @"A";
    goto LABEL_54;
  }

  v517 = 185580364;
  v516 = xmmword_1B01F91EC;
  if (MGIsDeviceOfType(&v516))
  {
    v5 = MGCopyAnswer(@"97JDvERpVwO+GHtthIh7hA");
    if (!v5)
    {
      goto LABEL_31;
    }

    v1 = v5;
    v2 = @"A";
    if (CFEqual(@"A3082", v5))
    {
      goto LABEL_53;
    }

    if (CFEqual(@"A3289", v1))
    {
      goto LABEL_29;
    }

    if (!CFEqual(@"A3290", v1))
    {
      v3 = @"A3291";
      goto LABEL_50;
    }

LABEL_43:
    v2 = @"C";
    goto LABEL_53;
  }

  v515 = 1214880059;
  v514 = xmmword_1B01F9200;
  if (MGIsDeviceOfType(&v514))
  {
    v6 = MGCopyAnswer(@"97JDvERpVwO+GHtthIh7hA");
    if (!v6)
    {
      goto LABEL_31;
    }

    v1 = v6;
    v2 = @"A";
    if (CFEqual(@"A3083", v6))
    {
      goto LABEL_53;
    }

    if (CFEqual(@"A3292", v1))
    {
      goto LABEL_29;
    }

    if (!CFEqual(@"A3293", v1))
    {
      v3 = @"A3294";
      goto LABEL_50;
    }

    goto LABEL_43;
  }

  v513 = 426359977;
  v512 = xmmword_1B01F9214;
  if (MGIsDeviceOfType(&v512))
  {
    v7 = MGCopyAnswer(@"97JDvERpVwO+GHtthIh7hA");
    if (!v7)
    {
      goto LABEL_31;
    }

    v1 = v7;
    v2 = @"A";
    if (CFEqual(@"A3084", v7))
    {
      goto LABEL_53;
    }

    if (CFEqual(@"A3295", v1))
    {
      goto LABEL_29;
    }

    if (!CFEqual(@"A3296", v1))
    {
      v3 = @"A3297";
      goto LABEL_50;
    }

    goto LABEL_43;
  }

  v511 = -773054213;
  v510 = xmmword_1B01F9228;
  if (MGIsDeviceOfType(&v510))
  {
    goto LABEL_31;
  }

  v509 = -1204420428;
  v508 = xmmword_1B01F923C;
  if (MGIsDeviceOfType(&v508))
  {
    v8 = MGCopyAnswer(@"97JDvERpVwO+GHtthIh7hA");
    if (!v8)
    {
      goto LABEL_31;
    }

    v1 = v8;
    v2 = @"A";
    if (CFEqual(@"A2995", v8))
    {
      goto LABEL_53;
    }

    v9 = @"A2996";
LABEL_36:
    v10 = CFEqual(v9, v1);
    v11 = @"B";
    goto LABEL_51;
  }

  v507 = -1231738393;
  v506 = xmmword_1B01F9250;
  if (MGIsDeviceOfType(&v506))
  {
    goto LABEL_31;
  }

  v505 = 164967128;
  v504 = xmmword_1B01F9264;
  if (MGIsDeviceOfType(&v504))
  {
    v12 = MGCopyAnswer(@"97JDvERpVwO+GHtthIh7hA");
    if (!v12)
    {
      goto LABEL_31;
    }

    v1 = v12;
    v2 = @"A";
    if (CFEqual(@"A3355", v12))
    {
      goto LABEL_53;
    }

    v9 = @"A3356";
    goto LABEL_36;
  }

  v503 = 958549802;
  v502 = xmmword_1B01F9278;
  if (MGIsDeviceOfType(&v502))
  {
    goto LABEL_31;
  }

  v501 = -12497897;
  v500 = xmmword_1B01F928C;
  if (MGIsDeviceOfType(&v500))
  {
    v13 = MGCopyAnswer(@"97JDvERpVwO+GHtthIh7hA");
    if (!v13)
    {
      goto LABEL_31;
    }

    v1 = v13;
    v2 = @"A";
    if (CFEqual(@"A2903", v13))
    {
      goto LABEL_53;
    }

    v9 = @"A2904";
    goto LABEL_36;
  }

  v499 = 1377540371;
  v498 = xmmword_1B01F92A0;
  if (MGIsDeviceOfType(&v498))
  {
    goto LABEL_31;
  }

  v497 = -518121279;
  v496 = xmmword_1B01F92B4;
  if (MGIsDeviceOfType(&v496))
  {
    v16 = MGCopyAnswer(@"97JDvERpVwO+GHtthIh7hA");
    if (!v16)
    {
      goto LABEL_31;
    }

    v1 = v16;
    v2 = @"A";
    if (CFEqual(@"A2899", v16))
    {
      goto LABEL_53;
    }

    v9 = @"A2900";
    goto LABEL_36;
  }

  v495 = -1047119348;
  v494 = xmmword_1B01F92C8;
  if (MGIsDeviceOfType(&v494))
  {
    goto LABEL_31;
  }

  v493 = -1346985080;
  v492 = xmmword_1B01F92DC;
  if (MGIsDeviceOfType(&v492))
  {
    v17 = MGCopyAnswer(@"97JDvERpVwO+GHtthIh7hA");
    if (!v17)
    {
      goto LABEL_31;
    }

    v1 = v17;
    v2 = @"A";
    if (CFEqual(@"A3267", v17))
    {
      goto LABEL_53;
    }

    v9 = @"A3270";
    goto LABEL_36;
  }

  v491 = -1243071412;
  v490 = xmmword_1B01F92F0;
  if (MGIsDeviceOfType(&v490))
  {
    goto LABEL_31;
  }

  v489 = 2017356181;
  v488 = xmmword_1B01F9304;
  if (MGIsDeviceOfType(&v488))
  {
    v18 = MGCopyAnswer(@"97JDvERpVwO+GHtthIh7hA");
    if (!v18)
    {
      goto LABEL_31;
    }

    v1 = v18;
    v2 = @"A";
    if (CFEqual(@"A3269", v18))
    {
      goto LABEL_53;
    }

    v9 = @"A3271";
    goto LABEL_36;
  }

  v487 = 802516499;
  v486 = xmmword_1B01F9318;
  if (MGIsDeviceOfType(&v486))
  {
    goto LABEL_31;
  }

  v485 = -1919324456;
  v484 = xmmword_1B01F932C;
  if (MGIsDeviceOfType(&v484))
  {
    v19 = MGCopyAnswer(@"97JDvERpVwO+GHtthIh7hA");
    if (!v19)
    {
      goto LABEL_31;
    }

    v1 = v19;
    v2 = @"A";
    if (CFEqual(@"A2837", v19))
    {
      goto LABEL_53;
    }

    v9 = @"A3006";
    goto LABEL_36;
  }

  v483 = 1127969586;
  v482 = xmmword_1B01F9340;
  if (MGIsDeviceOfType(&v482))
  {
    goto LABEL_31;
  }

  v481 = 1292009573;
  v480 = xmmword_1B01F9354;
  if (MGIsDeviceOfType(&v480))
  {
    v20 = MGCopyAnswer(@"97JDvERpVwO+GHtthIh7hA");
    if (!v20)
    {
      goto LABEL_31;
    }

    v1 = v20;
    v2 = @"A";
    if (CFEqual(@"A2926", v20))
    {
      goto LABEL_53;
    }

    v9 = @"A3007";
    goto LABEL_36;
  }

  v479 = 1656760039;
  v478 = xmmword_1B01F9368;
  if (MGIsDeviceOfType(&v478))
  {
    goto LABEL_31;
  }

  v477 = -2071977621;
  v476 = xmmword_1B01F937C;
  if (MGIsDeviceOfType(&v476))
  {
    v21 = MGCopyAnswer(@"97JDvERpVwO+GHtthIh7hA");
    if (!v21)
    {
      goto LABEL_31;
    }

    v1 = v21;
    v2 = @"A";
    if (CFEqual(@"A3358", v21))
    {
      goto LABEL_53;
    }

    v9 = @"A3359";
    goto LABEL_36;
  }

  v475 = -543210860;
  v474 = xmmword_1B01F9390;
  if (MGIsDeviceOfType(&v474))
  {
    goto LABEL_31;
  }

  v473 = -1597604211;
  v472 = xmmword_1B01F93A4;
  if (MGIsDeviceOfType(&v472))
  {
    v22 = MGCopyAnswer(@"97JDvERpVwO+GHtthIh7hA");
    if (!v22)
    {
      goto LABEL_31;
    }

    v1 = v22;
    v2 = @"A";
    if (CFEqual(@"A3361", v22))
    {
      goto LABEL_53;
    }

    v9 = @"A3362";
    goto LABEL_36;
  }

  v471 = -1354433901;
  v470 = xmmword_1B01F93B8;
  if (MGIsDeviceOfType(&v470))
  {
    v23 = MGCopyAnswer(@"97JDvERpVwO+GHtthIh7hA");
    if (!v23)
    {
      goto LABEL_31;
    }

    v1 = v23;
    v2 = @"A";
    if (CFEqual(@"A3256", v23))
    {
      goto LABEL_53;
    }

    if (CFEqual(@"A3522", v1))
    {
      goto LABEL_29;
    }

    if (!CFEqual(@"A3523", v1))
    {
      v3 = @"A3524";
      goto LABEL_50;
    }

    goto LABEL_43;
  }

  v469 = 1021543808;
  v468 = xmmword_1B01F93CC;
  if (MGIsDeviceOfType(&v468))
  {
    v24 = MGCopyAnswer(@"97JDvERpVwO+GHtthIh7hA");
    if (!v24)
    {
      goto LABEL_31;
    }

    v1 = v24;
    v2 = @"A";
    if (CFEqual(@"A3257", v24))
    {
      goto LABEL_53;
    }

    if (CFEqual(@"A3525", v1))
    {
      goto LABEL_29;
    }

    if (!CFEqual(@"A3526", v1))
    {
      v3 = @"A3527";
      goto LABEL_50;
    }

    goto LABEL_43;
  }

  v467 = -1379821877;
  v466 = xmmword_1B01F93E0;
  if (MGIsDeviceOfType(&v466))
  {
    v25 = MGCopyAnswer(@"97JDvERpVwO+GHtthIh7hA");
    if (!v25)
    {
      goto LABEL_31;
    }

    v1 = v25;
    v2 = @"A";
    if (CFEqual(@"A3258", v25))
    {
      goto LABEL_53;
    }

    if (CFEqual(@"A3519", v1))
    {
      goto LABEL_29;
    }

    if (!CFEqual(@"A3520", v1))
    {
      v3 = @"A3521";
      goto LABEL_50;
    }

    goto LABEL_43;
  }

  v465 = 169342588;
  v464 = xmmword_1B01F93F4;
  if (MGIsDeviceOfType(&v464))
  {
    v33 = MGCopyAnswer(@"97JDvERpVwO+GHtthIh7hA");
    if (!v33)
    {
      goto LABEL_31;
    }

    v1 = v33;
    v2 = @"A";
    if (CFEqual(@"A3212", v33))
    {
      goto LABEL_53;
    }

    if (CFEqual(@"A3408", v1))
    {
      goto LABEL_29;
    }

    if (!CFEqual(@"A3409", v1))
    {
      v3 = @"A3410";
      goto LABEL_50;
    }

    goto LABEL_43;
  }

  v463 = -1403227947;
  v462 = xmmword_1B01F8AD0;
  v460 = xmmword_1B01F8AE4;
  v461 = 729118884;
  v458 = xmmword_1B01F8AF8;
  v459 = -489993439;
  v456 = xmmword_1B01F8B0C;
  v457 = 886875686;
  if (MGIsDeviceOneOfType(&v462, v26, v27, v28, v29, v30, v31, v32, &v460))
  {
    v41 = MGCopyAnswer(@"97JDvERpVwO+GHtthIh7hA");
    if (!v41)
    {
      goto LABEL_31;
    }

    v1 = v41;
    if (CFEqual(@"A1633", v41) || CFEqual(@"A1634", v1))
    {
      goto LABEL_406;
    }

    if (CFEqual(@"A1687", v1) || CFEqual(@"A1688", v1))
    {
      goto LABEL_29;
    }

    if (CFEqual(@"A1690", v1) || CFEqual(@"A1691", v1))
    {
      goto LABEL_122;
    }

    if (CFEqual(@"A1699", v1))
    {
      goto LABEL_43;
    }

    v50 = @"A1700";
    goto LABEL_128;
  }

  v455 = 1046806126;
  v454 = xmmword_1B01F8B20;
  v453 = -188760945;
  v452 = xmmword_1B01F8B34;
  if (MGIsDeviceOneOfType(&v454, v34, v35, v36, v37, v38, v39, v40, &v452))
  {
    v49 = MGCopyAnswer(@"97JDvERpVwO+GHtthIh7hA");
    if (!v49)
    {
      goto LABEL_31;
    }

    v1 = v49;
    if (CFEqual(@"A1662", v49))
    {
      goto LABEL_406;
    }

    if (CFEqual(@"A1723", v1))
    {
      goto LABEL_29;
    }

    v50 = @"A1724";
    goto LABEL_128;
  }

  v451 = -1527788847;
  v450 = xmmword_1B01F8B48;
  v449 = 1532898719;
  v448 = xmmword_1B01F8B5C;
  if (MGIsDeviceOneOfType(&v450, v42, v43, v44, v45, v46, v47, v48, &v448))
  {
    v58 = MGCopyAnswer(@"97JDvERpVwO+GHtthIh7hA");
    if (!v58)
    {
      goto LABEL_31;
    }

    v1 = v58;
    if (CFEqual(@"A1673", v58) || CFEqual(@"A1674", v1))
    {
      goto LABEL_406;
    }

    v59 = @"A1675";
LABEL_135:
    if (CFEqual(v59, v1))
    {
      goto LABEL_29;
    }

    goto LABEL_406;
  }

  v447 = -350584140;
  v446 = xmmword_1B01F8B70;
  v445 = -1418383976;
  v444 = xmmword_1B01F8B84;
  v443 = 368778837;
  v442 = xmmword_1B01F8B98;
  v441 = -1213485500;
  v440 = xmmword_1B01F8BAC;
  if (MGIsDeviceOneOfType(&v446, v51, v52, v53, v54, v55, v56, v57, &v444))
  {
    v67 = MGCopyAnswer(@"97JDvERpVwO+GHtthIh7hA");
    if (!v67)
    {
      goto LABEL_31;
    }

    v1 = v67;
    if (CFEqual(@"A1660", v67) || CFEqual(@"A1661", v1) || CFEqual(@"A1778", v1) || CFEqual(@"A1784", v1))
    {
      goto LABEL_406;
    }

    if (CFEqual(@"A1779", v1) || CFEqual(@"A1785", v1))
    {
      goto LABEL_29;
    }

    if (CFEqual(@"A1780", v1))
    {
      goto LABEL_43;
    }

    v50 = @"A1786";
    goto LABEL_128;
  }

  v439 = 996646949;
  v438 = xmmword_1B01F8BC0;
  v437 = -563086000;
  v436 = xmmword_1B01F8BD4;
  if (MGIsDeviceOneOfType(&v438, v60, v61, v62, v63, v64, v65, v66, &v436))
  {
    v75 = MGCopyAnswer(@"97JDvERpVwO+GHtthIh7hA");
    if (!v75)
    {
      goto LABEL_31;
    }

    v1 = v75;
    if (CFEqual(@"A1701", v75) || CFEqual(@"A1709", v1))
    {
      goto LABEL_406;
    }

    v59 = @"A1852";
    goto LABEL_135;
  }

  v435 = -1022451852;
  v434 = xmmword_1B01F8BE8;
  v433 = 1729782187;
  v432 = xmmword_1B01F8BFC;
  if (MGIsDeviceOneOfType(&v434, v68, v69, v70, v71, v72, v73, v74, &v432))
  {
    v83 = MGCopyAnswer(@"97JDvERpVwO+GHtthIh7hA");
    if (!v83)
    {
      goto LABEL_31;
    }

    v1 = v83;
    if (CFEqual(@"A1670", v83) || CFEqual(@"A1671", v1))
    {
      goto LABEL_406;
    }

    v59 = @"A1821";
    goto LABEL_135;
  }

  v431 = 414393924;
  v430 = xmmword_1B01F8C10;
  v429 = 897736383;
  v428 = xmmword_1B01F8C24;
  if (MGIsDeviceOneOfType(&v430, v76, v77, v78, v79, v80, v81, v82, &v428))
  {
    v91 = MGCopyAnswer(@"97JDvERpVwO+GHtthIh7hA");
    if (!v91)
    {
      goto LABEL_31;
    }

    v1 = v91;
    if (CFEqual(@"A1863", v91) || CFEqual(@"A1905", v1))
    {
      goto LABEL_406;
    }

    if (CFEqual(@"A1906", v1))
    {
      goto LABEL_29;
    }

    if (CFEqual(@"A1907", v1))
    {
      goto LABEL_43;
    }

    v50 = @"A1908";
    goto LABEL_128;
  }

  v427 = -996295886;
  v426 = xmmword_1B01F8C38;
  v425 = -453987047;
  v424 = xmmword_1B01F8C4C;
  if (MGIsDeviceOneOfType(&v426, v84, v85, v86, v87, v88, v89, v90, &v424))
  {
    v99 = MGCopyAnswer(@"97JDvERpVwO+GHtthIh7hA");
    if (!v99)
    {
      goto LABEL_31;
    }

    v1 = v99;
    if (CFEqual(@"A1864", v99) || CFEqual(@"A1897", v1))
    {
      goto LABEL_406;
    }

    if (CFEqual(@"A1898", v1))
    {
      goto LABEL_29;
    }

    if (CFEqual(@"A1899", v1))
    {
      goto LABEL_43;
    }

    v50 = @"A1900";
    goto LABEL_128;
  }

  v423 = -337121064;
  v422 = xmmword_1B01F8C60;
  v421 = 450980336;
  v420 = xmmword_1B01F8C74;
  if (MGIsDeviceOneOfType(&v422, v92, v93, v94, v95, v96, v97, v98, &v420))
  {
    v107 = MGCopyAnswer(@"97JDvERpVwO+GHtthIh7hA");
    if (!v107)
    {
      goto LABEL_31;
    }

    v1 = v107;
    if (CFEqual(@"A1865", v107) || CFEqual(@"A1901", v1))
    {
      goto LABEL_406;
    }

    if (CFEqual(@"A1902", v1))
    {
      goto LABEL_29;
    }

    if (CFEqual(@"A1903", v1))
    {
      goto LABEL_43;
    }

    v50 = @"A1904";
    goto LABEL_128;
  }

  v419 = -232427879;
  v418 = xmmword_1B01F8C88;
  v417 = -427474227;
  v416 = xmmword_1B01F8C9C;
  v415 = 1477534141;
  v414 = xmmword_1B01F8CB0;
  v413 = -1843102369;
  v412 = xmmword_1B01F8CC4;
  if (MGIsDeviceOneOfType(&v418, v100, v101, v102, v103, v104, v105, v106, &v416))
  {
    v115 = MGCopyAnswer(@"97JDvERpVwO+GHtthIh7hA");
    if (!v115)
    {
      goto LABEL_31;
    }

    v1 = v115;
    if (CFEqual(@"A1920", v115) || CFEqual(@"A1921", v1) || CFEqual(@"A1984", v1))
    {
      goto LABEL_406;
    }

    if (CFEqual(@"A2098", v1) || CFEqual(@"A2102", v1) || CFEqual(@"A2106", v1))
    {
      goto LABEL_29;
    }

    if (CFEqual(@"A2099", v1) || CFEqual(@"A2103", v1) || CFEqual(@"A2107", v1))
    {
      goto LABEL_43;
    }

    if (!CFEqual(@"A2100", v1) && !CFEqual(@"A2104", v1) && !CFEqual(@"A2108", v1))
    {
      if (CFEqual(@"A2097", v1) || CFEqual(@"A2101", v1))
      {
        goto LABEL_370;
      }

      v116 = @"A2105";
      goto LABEL_369;
    }

LABEL_122:
    v2 = @"D";
    goto LABEL_53;
  }

  v411 = 2030516999;
  v410 = xmmword_1B01F8CD8;
  v409 = -1276010597;
  v408 = xmmword_1B01F8CEC;
  v407 = -762483149;
  v406 = xmmword_1B01F8D00;
  v405 = -1926937532;
  v404 = xmmword_1B01F8D14;
  v403 = -1902732724;
  v402 = xmmword_1B01F8D28;
  v401 = -342357580;
  v400 = xmmword_1B01F8D3C;
  v399 = 300442574;
  v398 = xmmword_1B01F8D50;
  v397 = -1294188889;
  v396 = xmmword_1B01F8D64;
  if (MGIsDeviceOneOfType(&v410, v108, v109, v110, v111, v112, v113, v114, &v408))
  {
    v124 = MGCopyAnswer(@"97JDvERpVwO+GHtthIh7hA");
    if (!v124)
    {
      goto LABEL_31;
    }

    v1 = v124;
    if (CFEqual(@"A1876", v124) || CFEqual(@"A1895", v1) || CFEqual(@"A1934", v1) || CFEqual(@"A1980", v1))
    {
      goto LABEL_406;
    }

    if (CFEqual(@"A2013", v1) || CFEqual(@"A2014", v1))
    {
      goto LABEL_29;
    }

    if (CFEqual(@"A1979", v1))
    {
      goto LABEL_43;
    }

    v50 = @"A1983";
    goto LABEL_128;
  }

  v395 = 1278131292;
  v394 = xmmword_1B01F8D78;
  v393 = -1841712216;
  v392 = xmmword_1B01F8D8C;
  v391 = 659506830;
  v390 = xmmword_1B01F8DA0;
  v389 = 213746202;
  v388 = xmmword_1B01F8DB4;
  if (MGIsDeviceOneOfType(&v394, v117, v118, v119, v120, v121, v122, v123, &v392))
  {
    v132 = MGCopyAnswer(@"97JDvERpVwO+GHtthIh7hA");
    if (!v132)
    {
      goto LABEL_31;
    }

    v1 = v132;
    if (CFEqual(@"A2133", v132) || CFEqual(@"A2126", v1) || CFEqual(@"A2152", v1) || CFEqual(@"A2153", v1))
    {
      goto LABEL_406;
    }

    if (CFEqual(@"A2124", v1) || CFEqual(@"A2123", v1))
    {
      goto LABEL_29;
    }

    if (CFEqual(@"A2125", v1))
    {
      goto LABEL_43;
    }

    v50 = @"A2154";
    goto LABEL_128;
  }

  v387 = -61007701;
  v386 = xmmword_1B01F8DC8;
  v385 = -235416490;
  v384 = xmmword_1B01F8DDC;
  v383 = -820493242;
  v382 = xmmword_1B01F8DF0;
  if (MGIsDeviceOneOfType(&v386, v125, v126, v127, v128, v129, v130, v131, &v384))
  {
    v140 = MGCopyAnswer(@"97JDvERpVwO+GHtthIh7hA");
    if (!v140)
    {
      goto LABEL_31;
    }

    v1 = v140;
    if (CFEqual(@"A2160", v140) || CFEqual(@"A2161", v1) || CFEqual(@"A2111", v1))
    {
      goto LABEL_406;
    }

    if (CFEqual(@"A2215", v1) || CFEqual(@"A2218", v1) || CFEqual(@"A2221", v1))
    {
      goto LABEL_29;
    }

    if (CFEqual(@"A2216", v1) || CFEqual(@"A2219", v1) || CFEqual(@"A2222", v1))
    {
      goto LABEL_43;
    }

    if (CFEqual(@"A2217", v1) || CFEqual(@"A2220", v1))
    {
      goto LABEL_122;
    }

    v141 = @"A2223";
LABEL_243:
    if (CFEqual(v141, v1))
    {
      goto LABEL_122;
    }

LABEL_406:
    v2 = @"A";
    goto LABEL_53;
  }

  v381 = -1157300313;
  v380 = xmmword_1B01F8E04;
  v379 = -2132668294;
  v378 = xmmword_1B01F8E18;
  if (MGIsDeviceOneOfType(&v380, v133, v134, v135, v136, v137, v138, v139, &v378))
  {
    v142 = MGCopyAnswer(@"97JDvERpVwO+GHtthIh7hA");
    if (!v142)
    {
      goto LABEL_31;
    }

    v1 = v142;
    if (CFEqual(@"A2197", v142) || CFEqual(@"A2200", v1))
    {
      goto LABEL_406;
    }

    if (CFEqual(@"A2198", v1))
    {
      goto LABEL_29;
    }

    v50 = @"A2199";
    goto LABEL_128;
  }

  v377 = -121925081;
  v376 = xmmword_1B01F8E2C;
  if (MGIsDeviceOfType(&v376))
  {
    v150 = MGCopyAnswer(@"97JDvERpVwO+GHtthIh7hA");
    if (!v150)
    {
      goto LABEL_31;
    }

    v1 = v150;
    if (CFEqual(@"A2275", v150))
    {
      goto LABEL_406;
    }

    if (CFEqual(@"A2296", v1))
    {
      goto LABEL_29;
    }

    if (CFEqual(@"A2297", v1))
    {
      goto LABEL_43;
    }

    v141 = @"A2298";
    goto LABEL_243;
  }

  v375 = 1126727276;
  v374 = xmmword_1B01F8E40;
  v373 = 300130091;
  v372 = xmmword_1B01F8E54;
  v371 = 343814884;
  v370 = xmmword_1B01F8E68;
  v369 = -1675932945;
  v368 = xmmword_1B01F8E7C;
  if (MGIsDeviceOneOfType(&v374, v143, v144, v145, v146, v147, v148, v149, &v372))
  {
    v158 = MGCopyAnswer(@"97JDvERpVwO+GHtthIh7hA");
    if (!v158)
    {
      goto LABEL_31;
    }

    v1 = v158;
    if (CFEqual(@"A2228", v158) || CFEqual(@"A2068", v1) || CFEqual(@"A2229", v1) || CFEqual(@"A2069", v1))
    {
      goto LABEL_406;
    }

    if (CFEqual(@"A2230", v1) || CFEqual(@"A2232", v1))
    {
      goto LABEL_29;
    }

    if (CFEqual(@"A2231", v1))
    {
      goto LABEL_43;
    }

    v50 = @"A2233";
    goto LABEL_128;
  }

  v367 = 372777383;
  v366 = xmmword_1B01F8E90;
  v365 = -858079590;
  v364 = xmmword_1B01F8EA4;
  if (MGIsDeviceOneOfType(&v366, v151, v152, v153, v154, v155, v156, v157, &v364))
  {
    v166 = MGCopyAnswer(@"97JDvERpVwO+GHtthIh7hA");
    if (!v166)
    {
      goto LABEL_31;
    }

    v1 = v166;
    if (CFEqual(@"A2270", v166) || CFEqual(@"A2428", v1))
    {
      goto LABEL_406;
    }

    if (CFEqual(@"A2429", v1))
    {
      goto LABEL_29;
    }

    v50 = @"A2430";
    goto LABEL_128;
  }

  v363 = 345196535;
  v362 = xmmword_1B01F8EB8;
  v361 = 440949464;
  v360 = xmmword_1B01F8ECC;
  if (MGIsDeviceOneOfType(&v362, v159, v160, v161, v162, v163, v164, v165, &v360))
  {
    v174 = MGCopyAnswer(@"97JDvERpVwO+GHtthIh7hA");
    if (!v174)
    {
      goto LABEL_31;
    }

    v1 = v174;
    if (CFEqual(@"A2316", v174) || CFEqual(@"A2324", v1))
    {
      goto LABEL_406;
    }

    if (CFEqual(@"A2072", v1))
    {
      goto LABEL_29;
    }

    v50 = @"A2325";
    goto LABEL_128;
  }

  v359 = 1071957977;
  v358 = xmmword_1B01F8EE0;
  v357 = 438437663;
  v356 = xmmword_1B01F8EF4;
  v355 = -382792827;
  v354 = xmmword_1B01F8F08;
  v353 = 1575123478;
  v352 = xmmword_1B01F8F1C;
  if (MGIsDeviceOneOfType(&v358, v167, v168, v169, v170, v171, v172, v173, &v356))
  {
    v182 = MGCopyAnswer(@"97JDvERpVwO+GHtthIh7hA");
    if (!v182)
    {
      goto LABEL_31;
    }

    v1 = v182;
    if (CFEqual(@"A2176", v182) || CFEqual(@"A2172", v1) || CFEqual(@"A2341", v1) || CFEqual(@"A2342", v1))
    {
      goto LABEL_406;
    }

    if (CFEqual(@"A2398", v1) || CFEqual(@"A2402", v1) || CFEqual(@"A2406", v1) || CFEqual(@"A2410", v1))
    {
      goto LABEL_29;
    }

    if (CFEqual(@"A2399", v1) || CFEqual(@"A2403", v1) || CFEqual(@"A2407", v1) || CFEqual(@"A2411", v1))
    {
      goto LABEL_43;
    }

    if (CFEqual(@"A2400", v1) || CFEqual(@"A2404", v1) || CFEqual(@"A2408", v1) || CFEqual(@"A2412", v1))
    {
      goto LABEL_122;
    }

    if (CFEqual(@"A2401", v1) || CFEqual(@"A2405", v1) || CFEqual(@"A2409", v1))
    {
      goto LABEL_370;
    }

    v116 = @"A2413";
LABEL_369:
    if (!CFEqual(v116, v1))
    {
      goto LABEL_406;
    }

LABEL_370:
    v2 = @"E";
    goto LABEL_53;
  }

  v351 = -695298128;
  v350 = xmmword_1B01F8F30;
  v349 = 804488105;
  v348 = xmmword_1B01F8F44;
  v347 = 1614584579;
  v346 = xmmword_1B01F8F58;
  v345 = 324288768;
  v344 = xmmword_1B01F8F6C;
  v343 = 460218192;
  v342 = xmmword_1B01F8F80;
  v341 = 2144905009;
  v340 = xmmword_1B01F8F94;
  v339 = 127894440;
  v338 = xmmword_1B01F8FA8;
  v337 = 1070997468;
  v336 = xmmword_1B01F8FBC;
  if (MGIsDeviceOneOfType(&v350, v175, v176, v177, v178, v179, v180, v181, &v348))
  {
    v190 = MGCopyAnswer(@"97JDvERpVwO+GHtthIh7hA");
    if (v190)
    {
      v1 = v190;
      if (CFEqual(@"A2377", v190) || CFEqual(@"A2301", v1) || CFEqual(@"A2378", v1))
      {
        goto LABEL_406;
      }

      v2 = @"A";
      if (CFEqual(@"A2379", v1))
      {
        goto LABEL_53;
      }

      if (CFEqual(@"A2459", v1) || CFEqual(@"A2461", v1))
      {
        goto LABEL_29;
      }

      if (!CFEqual(@"A2460", v1))
      {
        v191 = @"A2462";
        goto LABEL_419;
      }

      goto LABEL_417;
    }

    goto LABEL_407;
  }

  v335 = 123138233;
  v334 = xmmword_1B01F8FD0;
  v333 = 681511593;
  v332 = xmmword_1B01F8FE4;
  v331 = 713503427;
  v330 = xmmword_1B01F8FF8;
  v329 = -1632750650;
  v328 = xmmword_1B01F900C;
  if (MGIsDeviceOneOfType(&v334, v183, v184, v185, v186, v187, v188, v189, &v332))
  {
    v199 = MGCopyAnswer(@"97JDvERpVwO+GHtthIh7hA");
    if (!v199)
    {
      goto LABEL_31;
    }

    v1 = v199;
    if (CFEqual(@"A2481", v199) || CFEqual(@"A2482", v1) || CFEqual(@"A2483", v1) || CFEqual(@"A2484", v1))
    {
      goto LABEL_406;
    }

    if (CFEqual(@"A2626", v1) || CFEqual(@"A2631", v1) || CFEqual(@"A2636", v1) || CFEqual(@"A2641", v1))
    {
      goto LABEL_29;
    }

    if (CFEqual(@"A2628", v1) || CFEqual(@"A2633", v1) || CFEqual(@"A2638", v1) || CFEqual(@"A2643", v1))
    {
      goto LABEL_43;
    }

    if (CFEqual(@"A2629", v1) || CFEqual(@"A2634", v1) || CFEqual(@"A2639", v1) || CFEqual(@"A2644", v1))
    {
      goto LABEL_122;
    }

    if (CFEqual(@"A2630", v1) || CFEqual(@"A2635", v1) || CFEqual(@"A2640", v1))
    {
      goto LABEL_370;
    }

    v116 = @"A2645";
    goto LABEL_369;
  }

  v327 = -212523443;
  v326 = xmmword_1B01F9020;
  v325 = 646100384;
  v324 = xmmword_1B01F9034;
  if (MGIsDeviceOneOfType(&v326, v192, v193, v194, v195, v196, v197, v198, &v324))
  {
    v207 = MGCopyAnswer(@"97JDvERpVwO+GHtthIh7hA");
    if (!v207)
    {
      goto LABEL_31;
    }

    v1 = v207;
    if (CFEqual(@"A2602", v207) || CFEqual(@"A2603", v1))
    {
      goto LABEL_406;
    }

    if (CFEqual(@"A2604", v1))
    {
      goto LABEL_29;
    }

    v50 = @"A2605";
    goto LABEL_128;
  }

  v323 = 688565114;
  v322 = xmmword_1B01F9048;
  v321 = -493418906;
  v320 = xmmword_1B01F905C;
  if (MGIsDeviceOneOfType(&v322, v200, v201, v202, v203, v204, v205, v206, &v320))
  {
    v215 = MGCopyAnswer(@"97JDvERpVwO+GHtthIh7hA");
    if (!v215)
    {
      goto LABEL_31;
    }

    v1 = v215;
    if (CFEqual(@"A2567", v215) || CFEqual(@"A2568", v1))
    {
      goto LABEL_406;
    }

    if (CFEqual(@"A2569", v1))
    {
      goto LABEL_29;
    }

    v50 = @"A2714";
LABEL_128:
    if (CFEqual(v50, v1))
    {
      goto LABEL_43;
    }

    goto LABEL_406;
  }

  v319 = -545612308;
  v318 = xmmword_1B01F9070;
  v317 = 1178062702;
  v316 = xmmword_1B01F9084;
  if (MGIsDeviceOneOfType(&v318, v208, v209, v210, v211, v212, v213, v214, &v316))
  {
    v216 = MGCopyAnswer(@"97JDvERpVwO+GHtthIh7hA");
    if (!v216)
    {
      goto LABEL_31;
    }

    v1 = v216;
    if (CFEqual(@"A2588", v216) || CFEqual(@"A2589", v1))
    {
      goto LABEL_406;
    }

    v59 = @"A2591";
    goto LABEL_135;
  }

  v315 = -1431778695;
  v314 = xmmword_1B01F9098;
  if (MGIsDeviceOfType(&v314))
  {
    v224 = MGCopyAnswer(@"97JDvERpVwO+GHtthIh7hA");
    if (!v224)
    {
      goto LABEL_31;
    }

    v1 = v224;
    if (CFEqual(@"A2595", v224))
    {
      goto LABEL_406;
    }

    if (CFEqual(@"A2782", v1))
    {
      goto LABEL_29;
    }

    if (CFEqual(@"A2783", v1))
    {
      goto LABEL_43;
    }

    if (CFEqual(@"A2784", v1))
    {
      goto LABEL_122;
    }

    v116 = @"A2785";
    goto LABEL_369;
  }

  v313 = 533419158;
  v312 = xmmword_1B01F90AC;
  v311 = 1106979518;
  v310 = xmmword_1B01F90C0;
  if (MGIsDeviceOneOfType(&v312, v217, v218, v219, v220, v221, v222, v223, &v310))
  {
    v232 = MGCopyAnswer(@"97JDvERpVwO+GHtthIh7hA");
    if (!v232)
    {
      goto LABEL_31;
    }

    v1 = v232;
    if (CFEqual(@"A2649", v232) || CFEqual(@"A2632", v1))
    {
      goto LABEL_406;
    }

    if (CFEqual(@"A2881", v1) || CFEqual(@"A2885", v1))
    {
      goto LABEL_29;
    }

    if (CFEqual(@"A2882", v1) || CFEqual(@"A2886", v1))
    {
      goto LABEL_43;
    }

    if (CFEqual(@"A2883", v1) || CFEqual(@"A2887", v1))
    {
      goto LABEL_122;
    }

    if (CFEqual(@"A2884", v1))
    {
      goto LABEL_370;
    }

    v116 = @"A2888";
    goto LABEL_369;
  }

  v309 = -1820426635;
  v308 = xmmword_1B01F90D4;
  v307 = -937652876;
  v306 = xmmword_1B01F90E8;
  if (MGIsDeviceOneOfType(&v308, v225, v226, v227, v228, v229, v230, v231, &v306))
  {
    v240 = MGCopyAnswer(@"97JDvERpVwO+GHtthIh7hA");
    if (!v240)
    {
      goto LABEL_31;
    }

    v1 = v240;
    if (CFEqual(@"A2650", v240) || CFEqual(@"A2651", v1))
    {
      goto LABEL_406;
    }

    if (CFEqual(@"A2889", v1) || CFEqual(@"A2893", v1))
    {
      goto LABEL_29;
    }

    if (CFEqual(@"A2890", v1) || CFEqual(@"A2894", v1))
    {
      goto LABEL_43;
    }

    if (!CFEqual(@"A2891", v1) && !CFEqual(@"A2895", v1))
    {
      if (CFEqual(@"A2892", v1))
      {
        goto LABEL_370;
      }

      v116 = @"A2896";
      goto LABEL_369;
    }

    goto LABEL_122;
  }

  v305 = -609570151;
  v304 = xmmword_1B01F90FC;
  if (MGIsDeviceOneOfType(&v304, v233, v234, v235, v236, v237, v238, v239, 0))
  {
    v248 = MGCopyAnswer(@"97JDvERpVwO+GHtthIh7hA");
    if (!v248)
    {
      goto LABEL_31;
    }

    v1 = v248;
    if (CFEqual(@"A2846", v248))
    {
      goto LABEL_406;
    }

    if (CFEqual(@"A3089", v1))
    {
      goto LABEL_29;
    }

    if (CFEqual(@"A3090", v1))
    {
      goto LABEL_43;
    }

    v141 = @"A3092";
    goto LABEL_243;
  }

  v303 = -874769875;
  v302 = xmmword_1B01F9110;
  if (MGIsDeviceOneOfType(&v302, v241, v242, v243, v244, v245, v246, v247, 0))
  {
    v256 = MGCopyAnswer(@"97JDvERpVwO+GHtthIh7hA");
    if (!v256)
    {
      goto LABEL_31;
    }

    v1 = v256;
    if (CFEqual(@"A2847", v256))
    {
      goto LABEL_406;
    }

    if (CFEqual(@"A3093", v1))
    {
      goto LABEL_29;
    }

    if (CFEqual(@"A3094", v1))
    {
      goto LABEL_43;
    }

    v141 = @"A3096";
    goto LABEL_243;
  }

  v301 = 1874287171;
  v300 = xmmword_1B01F9124;
  if (MGIsDeviceOneOfType(&v300, v249, v250, v251, v252, v253, v254, v255, 0))
  {
    v264 = MGCopyAnswer(@"97JDvERpVwO+GHtthIh7hA");
    if (!v264)
    {
      goto LABEL_31;
    }

    v1 = v264;
    if (CFEqual(@"A2848", v264))
    {
      goto LABEL_406;
    }

    if (CFEqual(@"A3101", v1))
    {
      goto LABEL_29;
    }

    if (CFEqual(@"A3102", v1))
    {
      goto LABEL_43;
    }

    v141 = @"A3104";
    goto LABEL_243;
  }

  v299 = -781324731;
  v298 = xmmword_1B01F9138;
  if (MGIsDeviceOneOfType(&v298, v257, v258, v259, v260, v261, v262, v263, 0))
  {
    v272 = MGCopyAnswer(@"97JDvERpVwO+GHtthIh7hA");
    if (!v272)
    {
      goto LABEL_31;
    }

    v1 = v272;
    if (CFEqual(@"A2849", v272))
    {
      goto LABEL_406;
    }

    if (CFEqual(@"A3105", v1))
    {
      goto LABEL_29;
    }

    if (CFEqual(@"A3106", v1))
    {
      goto LABEL_43;
    }

    v141 = @"A3108";
    goto LABEL_243;
  }

  v297 = -340360463;
  v296 = xmmword_1B01F914C;
  v295 = 1605231531;
  v294 = xmmword_1B01F9160;
  if (MGIsDeviceOneOfType(&v296, v265, v266, v267, v268, v269, v270, v271, &v294))
  {
    v280 = MGCopyAnswer(@"97JDvERpVwO+GHtthIh7hA");
    if (v280)
    {
      v1 = v280;
      if (!CFEqual(@"A2696", v280))
      {
        v2 = @"A";
        if (CFEqual(@"A2757", v1))
        {
          goto LABEL_53;
        }

        if (!CFEqual(@"A2777", v1))
        {
          v10 = CFEqual(@"A3162", v1);
          v11 = @"C";
LABEL_51:
          if (v10)
          {
            v2 = v11;
          }

          goto LABEL_53;
        }

        goto LABEL_29;
      }

      goto LABEL_406;
    }
  }

  else
  {
    v293 = 1878025452;
    v292 = xmmword_1B01F9174;
    v291 = 1725957070;
    v290 = xmmword_1B01F9188;
    if (!MGIsDeviceOneOfType(&v292, v273, v274, v275, v276, v277, v278, v279, &v290))
    {
      goto LABEL_31;
    }

    v281 = MGCopyAnswer(@"97JDvERpVwO+GHtthIh7hA");
    if (v281)
    {
      v1 = v281;
      if (CFEqual(@"A2759", v281) || CFEqual(@"A2435", v1) || CFEqual(@"A2436", v1))
      {
        goto LABEL_406;
      }

      v2 = @"A";
      if (CFEqual(@"A2764", v1))
      {
        goto LABEL_53;
      }

      if (CFEqual(@"A2761", v1) || CFEqual(@"A2437", v1))
      {
        goto LABEL_29;
      }

      if (!CFEqual(@"A2762", v1))
      {
        v191 = @"A2766";
LABEL_419:
        if (CFEqual(v191, v1))
        {
          v2 = @"C";
        }

        goto LABEL_53;
      }

LABEL_417:
      v2 = @"C";
      goto LABEL_53;
    }
  }

LABEL_407:
  v282 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/variants.c", 47);
  if (v282)
  {
    v288 = v282 + 1;
  }

  else
  {
    v288 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/variants.c";
  }

  _MGLog(v288, 2561, @"unknown variant\n", v283, v284, v285, v286, v287, v289);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "unknown variant\n", buf, 2u);
  }

  v2 = 0;
LABEL_54:
  v14 = *MEMORY[0x1E69E9840];
  return v2;
}