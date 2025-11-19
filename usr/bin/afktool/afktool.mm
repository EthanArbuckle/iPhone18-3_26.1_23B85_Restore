void sub_100000B30(unsigned __int8 *a1, unint64_t a2, const char *a3, int a4)
{
  v5 = a1;
  v20 = a3;
  v21 = a1;
  do
  {
    v6 = 16;
    if (a2 < 0x10)
    {
      v6 = a2;
    }

    if (v6 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }

    if (!a2)
    {
      break;
    }

    v8 = a3 ? &__str[snprintf(__str, 0x100uLL, "%s ", a3)] : __str;
    v9 = v7 - 1;
    v10 = 0;
    v11 = &v8[snprintf(v8, 0x100uLL, "%08x: ", v5 - v21)];
    do
    {
      v11 += snprintf(v11, 0x100uLL, "%02x ", v5[v10]);
      if (v10 == 7)
      {
        *v11++ = 32;
      }

      ++v10;
    }

    while (v7 != v10);
    if (a2 <= 0xF)
    {
      do
      {
        *v11 = 2105376;
        if (v9 == 6)
        {
          *(v11 + 3) = 32;
          v11 += 4;
        }

        else
        {
          v11 += 3;
        }

        ++v9;
      }

      while (v9 < 0xF);
    }

    *v11 = 2128928;
    v12 = v11 + 3;
    v13 = 7;
    do
    {
      v14 = *v5;
      if ((v14 - 33) >= 0x5E)
      {
        LOBYTE(v14) = 46;
      }

      *v12 = v14;
      v12[1] = 0;
      if (v13)
      {
        ++v12;
      }

      else
      {
        *(v12 + 1) = 32;
        v12 += 2;
      }

      ++v5;
      --v13;
    }

    while (v7 + v13 != 7);
    if (a4)
    {
      v15 = _AFKUserLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v24 = __str;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
      }
    }

    else
    {
      v16 = strlen(__str);
      v17 = sub_100000E1C(&std::cout, __str, v16);
      std::ios_base::getloc((v17 + *(*v17 - 24)));
      v18 = std::locale::use_facet(buf, &std::ctype<char>::id);
      (v18->__vftable[2].~facet_0)(v18, 10);
      std::locale::~locale(buf);
      std::ostream::put();
      std::ostream::flush();
    }

    v19 = a2 > 0xF;
    a2 -= 16;
    a3 = v20;
  }

  while (v19);
}

void *sub_100000E1C(void *a1, uint64_t a2, uint64_t a3)
{
  std::ostream::sentry::sentry();
  if (v13 == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, &std::ctype<char>::id);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!sub_100000FC4(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  std::ostream::sentry::~sentry();
  return a1;
}

void sub_100000F5C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  std::ostream::sentry::~sentry();
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x100000F3CLL);
}

uint64_t sub_100000FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_1000011C0();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_100001190(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000011D8(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_100001234(exception, a1);
}

std::logic_error *sub_100001234(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

uint64_t sub_100001268(const void ***a1)
{
  sub_100001368(__p, "FILENAME");
  v11 = __p;
  v2 = *(sub_100004688(a1, __p) + 56);
  if (v10 < 0)
  {
    operator delete(__p[0]);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = v7;
    sub_100004B60(v7, a1);
    v4 = sub_1000015D4(v7);
    goto LABEL_6;
  }

  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = v8;
  sub_100004B60(v8, a1);
  v4 = sub_100001420(v8);
LABEL_6:
  v5 = v4;
  sub_10000532C(v3, v3[1]);
  return v5;
}

_BYTE *sub_100001368(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000011C0();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

uint64_t sub_100001420(uint64_t a1)
{
  sub_100001368(__p, "FILENAME");
  v15 = __p;
  v2 = sub_100004688(a1, __p);
  sub_1000033D4((v2 + 56), 3u);
  v3 = (v2 + 64);
  if (*(v2 + 87) < 0)
  {
    v3 = *v3;
  }

  v4 = [NSString stringWithUTF8String:v3];
  v5 = [NSData dataWithContentsOfFile:v4];

  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  v12 = 0;
  v6 = [NSPropertyListSerialization propertyListWithData:v5 options:0 format:0 error:&v12];
  v7 = v12;
  v8 = v7;
  if (v7)
  {
    NSLog(@"ERROR! NSPropertyListSerialization:%@\n", v7);
LABEL_10:
    v9 = 1;
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = objc_opt_class();
    NSLog(@"ERROR! Unexpected type:%@\n", v10);
    goto LABEL_10;
  }

  sub_1000024F4(v6);
  v9 = 0;
LABEL_11:

  return v9;
}

uint64_t sub_1000015D4(uint64_t a1)
{
  v74 = objc_opt_new();
  v75 = objc_opt_new();
  v93 = 0;
  v94 = &v93;
  v95 = 0x2020000000;
  v96 = 0;
  sub_100001368(__p, "--hex");
  v89[0] = __p;
  v2 = sub_100004688(a1, __p);
  sub_1000033D4((v2 + 56), 1u);
  v3 = *(v2 + 64);
  if ((v92 & 0x80000000) == 0)
  {
    if (!*(v2 + 64))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  operator delete(__p[0]);
  if (v3)
  {
LABEL_3:
    byte_100010208 = 1;
  }

LABEL_4:
  sub_100001368(__p, "--archive");
  v89[0] = __p;
  v4 = sub_100004688(a1, __p);
  sub_1000033D4((v4 + 56), 1u);
  v5 = *(v4 + 64);
  if (v92 < 0)
  {
    operator delete(__p[0]);
  }

  sub_100001368(__p, "--format");
  v89[0] = __p;
  v6 = *(sub_100004688(a1, __p) + 56);
  if (v92 < 0)
  {
    operator delete(__p[0]);
    if (!v6)
    {
LABEL_26:
      v14 = 100;
      goto LABEL_27;
    }
  }

  else if (!v6)
  {
    goto LABEL_26;
  }

  sub_100001368(__p, "--format");
  v89[0] = __p;
  v7 = sub_100004688(a1, __p);
  sub_1000033D4((v7 + 56), 3u);
  v8 = (v7 + 64);
  v9 = *(v7 + 87);
  if (v9 < 0)
  {
    if (*(v7 + 72) != 3)
    {
LABEL_23:
      v13 = 0;
      goto LABEL_24;
    }

    v8 = *v8;
  }

  else if (v9 != 3)
  {
    goto LABEL_23;
  }

  v10 = *v8;
  v11 = *(v8 + 2);
  v13 = v10 == 28024 && v11 == 108;
LABEL_24:
  if (v92 < 0)
  {
    operator delete(__p[0]);
    if (v13)
    {
      goto LABEL_26;
    }
  }

  else if (v13)
  {
    goto LABEL_26;
  }

  sub_100001368(__p, "--format");
  v89[0] = __p;
  v19 = sub_100004688(a1, __p);
  sub_1000033D4((v19 + 56), 3u);
  v20 = (v19 + 64);
  v21 = *(v19 + 87);
  if (v21 < 0)
  {
    if (*(v19 + 72) != 3)
    {
LABEL_63:
      v33 = 0;
      goto LABEL_64;
    }

    v20 = *v20;
  }

  else if (v21 != 3)
  {
    goto LABEL_63;
  }

  v30 = *v20;
  v31 = *(v20 + 2);
  v33 = v30 == 26978 && v31 == 110;
LABEL_64:
  if (v92 < 0)
  {
    operator delete(__p[0]);
    if (v33)
    {
      goto LABEL_66;
    }

LABEL_68:
    v34 = @"ERROR! Unknown plist format. Options are xml, bin";
    goto LABEL_164;
  }

  if (!v33)
  {
    goto LABEL_68;
  }

LABEL_66:
  v14 = 200;
LABEL_27:
  v76 = v14;
  sub_100001368(__p, "--protocol");
  v89[0] = __p;
  v15 = *(sub_100004688(a1, __p) + 56);
  if (v92 < 0)
  {
    operator delete(__p[0]);
    if (!v15)
    {
      goto LABEL_87;
    }

LABEL_31:
    sub_100001368(__p, "--protocol");
    v89[0] = __p;
    v16 = sub_100004688(a1, __p);
    sub_1000033D4((v16 + 56), 3u);
    v17 = v16 + 64;
    v18 = *(v16 + 87);
    if (v18 < 0)
    {
      if (*(v16 + 72) != 6)
      {
LABEL_46:
        v25 = 0;
        goto LABEL_47;
      }

      v17 = *v17;
    }

    else if (v18 != 6)
    {
      goto LABEL_46;
    }

    v22 = *v17;
    v23 = *(v17 + 4);
    v25 = v22 == 1701999731 && v23 == 28001;
LABEL_47:
    if (v92 < 0)
    {
      operator delete(__p[0]);
      if (v25)
      {
LABEL_49:
        v26 = 2;
        if (!v5)
        {
          goto LABEL_99;
        }

        goto LABEL_88;
      }
    }

    else if (v25)
    {
      goto LABEL_49;
    }

    sub_100001368(__p, "--protocol");
    v89[0] = __p;
    v27 = sub_100004688(a1, __p);
    sub_1000033D4((v27 + 56), 3u);
    v28 = (v27 + 64);
    v29 = *(v27 + 87);
    if (v29 < 0)
    {
      if (*(v27 + 72) != 4)
      {
LABEL_72:
        v35 = 0;
LABEL_73:
        if (v92 < 0)
        {
          operator delete(__p[0]);
          if (v35)
          {
LABEL_75:
            v26 = 1;
            if (!v5)
            {
              goto LABEL_99;
            }

            goto LABEL_88;
          }
        }

        else if (v35)
        {
          goto LABEL_75;
        }

        sub_100001368(__p, "--protocol");
        v89[0] = __p;
        v36 = sub_100004688(a1, __p);
        sub_1000033D4((v36 + 56), 3u);
        v37 = (v36 + 64);
        v38 = *(v36 + 87);
        if (v38 < 0)
        {
          if (*(v36 + 72) != 4)
          {
LABEL_84:
            v39 = 0;
            goto LABEL_85;
          }

          v37 = *v37;
        }

        else if (v38 != 4)
        {
          goto LABEL_84;
        }

        v39 = *v37 == 1869903201;
LABEL_85:
        if (v92 < 0)
        {
          operator delete(__p[0]);
          if (v39)
          {
            goto LABEL_87;
          }
        }

        else if (v39)
        {
          goto LABEL_87;
        }

        v34 = @"ERROR! Unknown registry collection protocol.";
LABEL_164:
        v43 = 0;
        NSLog(&v34->isa);
        v53 = 1;
        v52 = 0;
        goto LABEL_165;
      }

      v28 = *v28;
    }

    else if (v29 != 4)
    {
      goto LABEL_72;
    }

    v35 = *v28 == 1886221668;
    goto LABEL_73;
  }

  if (v15)
  {
    goto LABEL_31;
  }

LABEL_87:
  v26 = 0;
  if (!v5)
  {
    goto LABEL_99;
  }

LABEL_88:
  sub_100001368(__p, "--path");
  v89[0] = __p;
  v40 = *(sub_100004688(a1, __p) + 56);
  if (v92 < 0)
  {
    operator delete(__p[0]);
    if (v40)
    {
      goto LABEL_90;
    }

LABEL_99:
    v43 = 0;
    goto LABEL_100;
  }

  if (!v40)
  {
    goto LABEL_99;
  }

LABEL_90:
  sub_100001368(__p, "--path");
  v89[0] = __p;
  v41 = sub_100004688(a1, __p);
  sub_1000033D4((v41 + 56), 3u);
  v42 = (v41 + 64);
  if (*(v41 + 87) < 0)
  {
    v42 = *v42;
  }

  v43 = [NSString stringWithCString:v42 encoding:1];
  if (v92 < 0)
  {
    operator delete(__p[0]);
  }

  v44 = +[NSFileManager defaultManager];
  v45 = [v44 contentsOfDirectoryAtPath:v43 error:0];
  v46 = v45;
  if (!v45)
  {
    NSLog(@"contentsOfDirectoryAtPath returned nil");
    exit(1);
  }

  if (![v45 count])
  {
    NSLog(@"contentsOfDirectoryAtPath no files ");
  }

LABEL_100:
  sub_100001368(__p, "--buffer");
  v89[0] = __p;
  if (!*(sub_100004688(a1, __p) + 56))
  {
    v48 = 0;
    goto LABEL_109;
  }

  sub_100001368(v89, "--buffer");
  v97 = v89;
  v47 = sub_100004688(a1, v89);
  sub_1000033D4((v47 + 56), 3u);
  if (*(v47 + 87) < 0)
  {
    if (*(v47 + 72))
    {
      goto LABEL_103;
    }
  }

  else if (*(v47 + 87))
  {
LABEL_103:
    v48 = 1;
    goto LABEL_107;
  }

  v48 = 0;
LABEL_107:
  if (v90 < 0)
  {
    operator delete(v89[0]);
  }

LABEL_109:
  if ((v92 & 0x80000000) == 0)
  {
    if (v48)
    {
      goto LABEL_111;
    }

LABEL_116:
    v51 = 0x100000;
    v50 = 0x400000;
    goto LABEL_117;
  }

  operator delete(__p[0]);
  if (!v48)
  {
    goto LABEL_116;
  }

LABEL_111:
  sub_100001368(__p, "--buffer");
  v89[0] = __p;
  v49 = sub_100004688(a1, __p);
  sub_1000033D4((v49 + 56), 3u);
  v50 = std::stoul((v49 + 64), 0, 0);
  if (v92 < 0)
  {
    operator delete(__p[0]);
  }

  v51 = v50;
  if (v50)
  {
LABEL_117:
    sub_100001368(__p, "--matching");
    v89[0] = __p;
    v54 = *(sub_100004688(a1, __p) + 56);
    if (v92 < 0)
    {
      operator delete(__p[0]);
      if (v54)
      {
        goto LABEL_119;
      }
    }

    else if (v54)
    {
LABEL_119:
      NSLog(@"ERROR! '--matching' not allowed");
LABEL_120:
      v52 = 0;
      goto LABEL_137;
    }

    sub_100001368(__p, "--role");
    v89[0] = __p;
    v55 = *(sub_100004688(a1, __p) + 56);
    if (v92 < 0)
    {
      operator delete(__p[0]);
    }

    if (!v55)
    {
      goto LABEL_120;
    }

    sub_100001368(__p, "--role");
    v89[0] = __p;
    v56 = sub_100004688(a1, __p);
    sub_1000033D4((v56 + 56), 3u);
    v57 = (v56 + 64);
    if (*(v56 + 87) < 0)
    {
      v57 = *v57;
    }

    v58 = [NSString stringWithCString:v57 encoding:1];
    if (v92 < 0)
    {
      operator delete(__p[0]);
    }

    v59 = [NSMutableDictionary dictionaryWithObject:&__kCFBooleanTrue forKey:@"system-service"];
    v60 = IOServiceMatching("AFKEndpointInterface");
    if (([v58 isEqualToString:@"all"] & 1) == 0)
    {
      [v59 setObject:v58 forKey:@"role"];
    }

    [(__CFDictionary *)v60 setObject:v59 forKey:@"IOPropertyMatch"];
    sub_100001368(__p, "--name");
    v89[0] = __p;
    v61 = *(sub_100004688(a1, __p) + 56);
    if (v92 < 0)
    {
      operator delete(__p[0]);
      if (!v61)
      {
LABEL_136:
        v52 = v60;

LABEL_137:
        v81[0] = _NSConcreteStackBlock;
        v81[1] = 3221225472;
        v81[2] = sub_10000258C;
        v81[3] = &unk_10000C540;
        v85 = &v93;
        v86 = v51;
        v88 = v26;
        v87 = v50;
        v43 = v43;
        v82 = v43;
        v62 = v75;
        v83 = v62;
        v63 = v74;
        v84 = v63;
        sub_100005B98(v52, v81);
        if (v94[3])
        {
          if (![v62 count] && !objc_msgSend(v63, "count"))
          {
            goto LABEL_157;
          }

          if (v5)
          {
            if ([v62 count] || objc_msgSend(v63, "count"))
            {
              if ([v62 count])
              {
                v79 = 0u;
                v80 = 0u;
                v77 = 0u;
                v78 = 0u;
                v64 = v62;
                v65 = [v64 countByEnumeratingWithState:&v77 objects:v98 count:16];
                if (v65)
                {
                  v66 = *v78;
                  while (2)
                  {
                    for (i = 0; i != v65; i = i + 1)
                    {
                      if (*v78 != v66)
                      {
                        objc_enumerationMutation(v64);
                      }

                      v68 = *(*(&v77 + 1) + 8 * i);
                      v69 = v68;
                      v70 = [v43 stringByAppendingFormat:@"/%s.plist", objc_msgSend(v68, "UTF8String")];
                      v71 = [v64 objectForKeyedSubscript:v68];
                      v72 = sub_1000032D0(v71, v70, v76);

                      if (v72)
                      {
                        v53 = 1;
                        goto LABEL_159;
                      }
                    }

                    v65 = [v64 countByEnumeratingWithState:&v77 objects:v98 count:16];
                    if (v65)
                    {
                      continue;
                    }

                    break;
                  }
                }

                v53 = 0;
LABEL_159:
              }

              else
              {
                v53 = sub_1000032D0(v63, @"/dev/stdout", v76);
              }

              goto LABEL_161;
            }

            goto LABEL_157;
          }

          if (![v63 count])
          {
LABEL_157:
            v53 = 1;
            goto LABEL_161;
          }

          sub_1000024F4(v63);
        }

        else
        {
          NSLog(@"WARNING! No AppleFirmwareKit IOP matched.");
        }

        v53 = 0;
LABEL_161:

        goto LABEL_165;
      }
    }

    else if (!v61)
    {
      goto LABEL_136;
    }

    NSLog(@"ERROR! '--name' not allowed");
    goto LABEL_136;
  }

  NSLog(@"ERROR! Failed to parse buffer size.");
  v52 = 0;
  v53 = 1;
LABEL_165:

  _Block_object_dispose(&v93, 8);
  return v53;
}

void sub_10000228C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, void *a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44, char a45)
{
  _Block_object_dispose(&a45, 8);

  _Unwind_Resume(a1);
}

void sub_1000024F4(void *a1)
{
  v2 = a1;
  v1 = [v2 objectForKeyedSubscript:@"class"];

  if (v1)
  {
    sub_1000039A8(v2, 0, 0, 0);
  }

  else
  {
    [v2 enumerateKeysAndObjectsUsingBlock:&stru_10000C670];
  }
}

void sub_10000258C(uint64_t a1, uint64_t entry)
{
  entryID = 0;
  v3 = *(a1 + 64);
  ++*(*(*(a1 + 56) + 8) + 24);
  IORegistryEntryGetRegistryEntryID(entry, &entryID);
  CFProperty = IORegistryEntryCreateCFProperty(entry, @"role", 0, 0);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = CFProperty;
  }

  else
  {
    v5 = 0;
  }

  v6 = IORegistryEntryCreateCFProperty(entry, @"compartment", 0, 0);

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v51 = [NSString stringWithFormat:@"%@_%@", v5, v6];
  }

  else
  {
    v51 = v5;
  }

  if ((*(a1 + 80) | 2) != 2)
  {
    v48 = IORegistryEntryCreateCFProperty(entry, @"reg-size-inc", 0, 0);

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v48;
      v14 = [v13 unsignedIntValue];
      v15 = [v13 unsignedIntValue];

      v3 = v14;
      v16 = v15;
    }

    else
    {
      v16 = 0x100000;
    }

    v49 = v16;
    while (1)
    {
      if (v3 > *(a1 + 72))
      {
        v40 = 0;
        v21 = 0;
        v41 = v48;
        goto LABEL_55;
      }

      v28 = [AFKEndpointInterface withService:entry];
      v29 = dispatch_semaphore_create(0);
      v72 = 0;
      v73 = &v72;
      v74 = 0x3032000000;
      v75 = sub_1000034E4;
      v76 = sub_1000034F4;
      v77 = 0;
      v55 = 0;
      v56 = &v55;
      v57 = 0x2020000000;
      LODWORD(v58) = 0;
      v30 = dispatch_queue_create("afkregistry", 0);
      [v28 setDispatchQueue:v30];
      v65 = _NSConcreteStackBlock;
      v66 = 3221225472;
      v67 = sub_100003934;
      v68 = &unk_10000C630;
      v70 = &v72;
      v71 = &v55;
      v31 = v29;
      v69 = v31;
      [v28 setResponseHandler:&v65];
      [v28 activate:1];
      LODWORD(v85) = 0;
      LODWORD(v47) = 2;
      v32 = [v28 enqueueCommand:128 timestamp:mach_continuous_time() inputBuffer:0 inputBufferSize:0 outputPayloadSize:v3 context:&v85 options:v47];
      *(v56 + 6) = v32;
      if (v32)
      {
        NSLog(@"enqueueCommand:%x", v32);
      }

      else if (dispatch_semaphore_wait(v31, 0xFFFFFFFFFFFFFFFFLL))
      {
        *(v56 + 6) = -536870186;
      }

      [v28 cancel];
      v33 = *(v56 + 6);
      if (v33 || (v37 = v73[5]) == 0)
      {
        v80[0] = NSDebugDescriptionErrorKey;
        v81[0] = @"Did not receive registry dump AFK Endpoint Interface";
        v34 = [NSDictionary dictionaryWithObjects:v81 forKeys:v80 count:1];
        v35 = [NSError errorWithDomain:@"com.apple.afktool" code:v33 userInfo:v34];
        v36 = v35;

        v37 = v73[5];
      }

      else
      {
        v35 = 0;
      }

      v78[0] = 0;
      v38 = [v37 bytes];
      v21 = sub_100005B58(v38, [v73[5] length], kCFAllocatorDefault, 0, v78);
      if (!v21)
      {
        v61 = 0;
        IORegistryEntryGetRegistryEntryID(entry, &v61);
        NSLog(@"ERROR! Unserialize registry dump for service:0x%llx error:%@", v61, v78[0]);
      }

      _Block_object_dispose(&v55, 8);
      _Block_object_dispose(&v72, 8);

      v39 = v35;
      if (v39)
      {
        v40 = v39;
        NSLog(@"ERROR! Registry dump for service:0x%llx error:%@ buffer:%zu", entryID, v39, v3);
        if ([v40 code] == -536870211)
        {
          v6 = v48;
          goto LABEL_49;
        }
      }

      v3 += v49;
      if (v21)
      {
        v40 = 0;
        v41 = v48;
        goto LABEL_50;
      }
    }
  }

  v50 = entryID;
  v84 = AFKEndpointInterfaceEnsureReportDeliveryKey;
  v85 = &off_10000CE70;
  v7 = [NSDictionary dictionaryWithObjects:&v85 forKeys:&v84 count:1];
  v8 = [AFKEndpointInterface withService:entry properties:v7];

  v9 = dispatch_semaphore_create(0);
  v65 = 0;
  v66 = &v65;
  v67 = 0x3032000000;
  v68 = sub_1000034E4;
  v69 = sub_1000034F4;
  v70 = objc_alloc_init(NSMutableArray);
  v72 = 0;
  v73 = &v72;
  v74 = 0x3032000000;
  v75 = sub_1000034E4;
  v76 = sub_1000034F4;
  v77 = 0;
  v61 = 0;
  v62 = &v61;
  v63 = 0x2020000000;
  v64 = 0;
  v10 = dispatch_queue_create("afkregistry", 0);
  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = sub_1000034E4;
  v59 = sub_1000034F4;
  v60 = 0;
  [v8 setDispatchQueue:v10];
  v81[0] = _NSConcreteStackBlock;
  v81[1] = 3221225472;
  v81[2] = sub_1000034FC;
  v81[3] = &unk_10000C568;
  v83 = &v61;
  v11 = v9;
  v82 = v11;
  [v8 setResponseHandler:v81];
  v80[0] = _NSConcreteStackBlock;
  v80[1] = 3221225472;
  v80[2] = sub_100003510;
  v80[3] = &unk_10000C590;
  v80[4] = &v55;
  v80[5] = &v65;
  [v8 setReportHandler:v80];
  [v8 activate:1];
  v54 = 0;
  LODWORD(v47) = 0;
  v12 = [v8 enqueueCommand:129 timestamp:mach_continuous_time() inputBuffer:0 inputBufferSize:0 outputPayloadSize:16 context:&v54 options:v47];
  *(v62 + 6) = v12;
  if (v12)
  {
    NSLog(@"enqueueCommand:%x", v12);
  }

  else if (dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL))
  {
    *(v62 + 6) = -536870186;
  }

  [v8 cancel];
  v17 = *(v62 + 6);
  if (!v17)
  {
    if ([*(v66 + 40) count])
    {
      for (i = 0; ; ++i)
      {
        v23 = [*(v66 + 40) count];
        v24 = *(v66 + 40);
        if (i >= v23)
        {
          v78[0] = _NSConcreteStackBlock;
          v78[1] = 3221225472;
          v78[2] = sub_100003608;
          v78[3] = &unk_10000C608;
          v78[4] = &v72;
          v78[5] = &v65;
          [v24 enumerateObjectsUsingBlock:v78];
          v21 = v73[5];
          goto LABEL_46;
        }

        v25 = [v24 objectAtIndexedSubscript:i];
        v78[0] = 0;
        v26 = v25;
        v27 = sub_100005B58([v25 bytes], objc_msgSend(v25, "length"), kCFAllocatorDefault, 0, v78);
        if (!v27)
        {
          break;
        }

        [*(v66 + 40) setObject:v27 atIndexedSubscript:i];
      }

      v42 = v25;
      sub_100000B30([v25 bytes], objc_msgSend(v25, "length"), "AFKReg Failed", 1);
      v43 = _AFKUserLog();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
      {
        sub_1000077F4(v50, v43);
      }

      v21 = *(v66 + 40);
LABEL_46:
      v19 = 0;
      goto LABEL_47;
    }

    v17 = *(v62 + 6);
  }

  v79 = NSDebugDescriptionErrorKey;
  v78[0] = @"Did not receive registry dump AFK Endpoint Interface";
  v18 = [NSDictionary dictionaryWithObjects:v78 forKeys:&v79 count:1];
  v19 = [NSError errorWithDomain:@"com.apple.afktool" code:v17 userInfo:v18];
  v20 = v19;

  v21 = 0;
LABEL_47:

  _Block_object_dispose(&v55, 8);
  _Block_object_dispose(&v61, 8);
  _Block_object_dispose(&v72, 8);

  _Block_object_dispose(&v65, 8);
  v44 = v19;
  v40 = v44;
  if (v44)
  {
    NSLog(@"ERROR! Registry dump for service:0x%llx error:%@", entryID, v44);
  }

LABEL_49:
  v41 = v6;
  if (v21)
  {
LABEL_50:
    if (*(a1 + 32))
    {
      if (v51)
      {
        [*(a1 + 40) setObject:v21 forKeyedSubscript:?];
      }

      else
      {
        NSLog(@"ERROR! no role:0x%llx", entryID);
      }
    }

    else
    {
      v45 = *(a1 + 48);
      v46 = [NSString stringWithFormat:@"0x%llx", entryID];
      [v45 setObject:v21 forKeyedSubscript:v46];
    }
  }

LABEL_55:
}

void sub_10000312C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, id a45)
{
  _Block_object_dispose(&a23, 8);

  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a40, 8);

  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000032D0(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [[NSOutputStream alloc] initToFileAtPath:v6 append:1];
  [v7 open];
  v11 = 0;
  [NSPropertyListSerialization writePropertyList:v5 toStream:v7 format:a3 options:0 error:&v11];
  v8 = v11;
  [v7 close];
  if (v8)
  {
    NSLog(@"ERROR! Unable to write registry output, serialization error: %@", v8);
    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

unsigned int *sub_1000033D4(unsigned int *result, unsigned int a2)
{
  if (*result != a2)
  {
    v3 = result;
    sub_100001368(&v8, "Illegal cast to ");
    if (a2 > 4)
    {
      v4 = "unknown";
    }

    else
    {
      v4 = off_10000C6C0[a2];
    }

    std::string::append(&v8, v4);
    std::string::append(&v8, "; type is actually ");
    v5 = *v3;
    if (v5 > 4)
    {
      v6 = "unknown";
    }

    else
    {
      v6 = off_10000C6C0[v5];
    }

    std::string::append(&v8, v6);
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, &v8);
  }

  return result;
}

void sub_1000034B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_free_exception(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000034E4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100003510(uint64_t a1, void *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = a2;
  if (a3 == 130)
  {
    if (a6)
    {
      v10 = *(*(*(a1 + 32) + 8) + 40);
      if (!v10)
      {
        v11 = [[NSMutableData alloc] initWithCapacity:a6];
        v12 = *(*(a1 + 32) + 8);
        v13 = *(v12 + 40);
        *(v12 + 40) = v11;

        v10 = *(*(*(a1 + 32) + 8) + 40);
      }

      [v10 appendBytes:a5 length:a6];
    }

    else
    {
      [*(*(*(a1 + 40) + 8) + 40) addObject:*(*(*(a1 + 32) + 8) + 40)];
      v14 = *(*(a1 + 32) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = 0;
    }
  }
}

void sub_100003608(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = [v4 objectForKeyedSubscript:@"class"];
  if ([v5 isEqual:@"AFKRootService"])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  v6 = [v4 objectForKeyedSubscript:@"children"];
  if (v6)
  {
    v7 = objc_alloc_init(NSMutableArray);
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_10000378C;
    v12 = &unk_10000C5E0;
    v14 = *(a1 + 40);
    v8 = v7;
    v13 = v8;
    [v6 enumerateObjectsUsingBlock:&v9];
    [v4 setObject:v8 forKeyedSubscript:{@"children", v9, v10, v11, v12}];
  }
}

void sub_10000378C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000386C;
  v6[3] = &unk_10000C5B8;
  v7 = v3;
  v8 = *(a1 + 32);
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:v6];
}

void sub_10000386C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  v9 = v6;
  v8 = [v6 objectForKeyedSubscript:@"id"];
  LODWORD(v7) = [v7 isEqual:v8];

  if (v7)
  {
    [*(a1 + 40) addObject:v9];
    *a4 = 1;
  }
}

intptr_t sub_100003934(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a4)
  {
    *(*(a1[6] + 8) + 24) = a4;
  }

  else
  {
    v8 = [NSData dataWithBytes:a6 length:a7];
    v9 = *(a1[5] + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  v11 = a1[4];

  return dispatch_semaphore_signal(v11);
}

void sub_1000039A8(void *a1, int a2, int a3, unint64_t a4)
{
  v7 = a1;
  v34 = [v7 objectForKeyedSubscript:@"children"];
  v8 = [v34 objectEnumerator];
  v9 = [v8 nextObject];
  v10 = (1 << a3) | a4;
  if (!a2)
  {
    v10 = ~(1 << a3) & a4;
  }

  v11 = v9;
  v12 = v10 & ~(2 << a3);
  v13 = v10 | (2 << a3);
  if (v9)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12;
  }

  v15 = v7;
  v16 = [v15 objectForKeyedSubscript:@"properties"];
  v17 = [v16 objectForKeyedSubscript:@"name"];

  if (a3)
  {
    v18 = 0;
    do
    {
      if ((v14 & (1 << v18)) != 0)
      {
        printf("| ");
      }

      else
      {
        printf("  ");
      }

      ++v18;
    }

    while (a3 != v18);
  }

  printf("+-o ");
  printf("%s", [v17 UTF8String]);
  printf("  <class ");
  v32 = [v15 objectForKeyedSubscript:@"class"];
  v33 = v17;
  printf("%s", [v32 UTF8String]);
  v19 = [v15 objectForKeyedSubscript:@"id"];
  printf(", id 0x%llx", [v19 longLongValue]);
  v20 = [v15 objectForKeyedSubscript:@"state"];
  v35 = v19;
  v21 = [v20 longLongValue];

  v22 = "";
  v23 = "!";
  if ((v21 & 0x20) != 0)
  {
    v24 = "";
  }

  else
  {
    v24 = "!";
  }

  if ((v21 & 8) != 0)
  {
    v23 = "";
  }

  if (v21)
  {
    v22 = "in";
  }

  printf(", %sregistered, %sterminated, %sactive", v24, v23, v22);
  puts(">");
  v25 = 0;
  v26 = (a3 + 1);
  do
  {
    if ((v14 & (1 << v25)) != 0)
    {
      printf("| ");
    }

    else
    {
      printf("  ");
    }

    ++v25;
  }

  while (v25 <= v26);
  puts("{");
  v27 = [v15 objectForKeyedSubscript:@"properties"];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3321888768;
  v36[2] = sub_100003EDC;
  v36[3] = &unk_10000C690;
  v28 = v15;
  v37 = v28;
  v38 = a3;
  v39 = v14;
  [v27 enumerateKeysAndObjectsUsingBlock:v36];
  v29 = 0;
  do
  {
    if ((v14 & (1 << v29)) != 0)
    {
      printf("| ");
    }

    else
    {
      printf("  ");
    }

    ++v29;
  }

  while (v29 <= v26);
  puts("}");
  v30 = 0;
  do
  {
    if ((v14 & (1 << v30)) != 0)
    {
      printf("| ");
    }

    else
    {
      printf("  ");
    }

    ++v30;
  }

  while (v30 <= v26);
  putchar(10);

  while (v11)
  {
    v31 = v11;
    v11 = [v8 nextObject];

    sub_1000039A8(v31, v11 != 0, v26, v14);
  }
}

void sub_100003E58(id a1, id a2, id a3, BOOL *a4)
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    sub_1000039A8(v4, 0, 0, 0);
  }
}

void sub_100003EDC(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v14 = a2;
  v7 = a3;
  *a4 = 0;
  if (([v14 isEqualToString:@"children"] & 1) == 0)
  {
    v8 = v14;
    v9 = v7;
    v10 = 0;
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v13 = v11 + 1;
    do
    {
      if ((v12 & (1 << v10)) != 0)
      {
        printf("| ");
      }

      else
      {
        printf("  ");
      }

      ++v10;
    }

    while (v10 <= v13);
    printf("  ");
    sub_100004064(v8);
    printf(" = ");
    sub_100004064(v9);
    putchar(10);
  }
}

__n128 sub_100004024(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

void sub_100004064(const __CFString *a1)
{
  v2 = CFGetTypeID(a1);
  if (v2 == CFArrayGetTypeID())
  {
    context = 1;
    Count = CFArrayGetCount(a1);
    putchar(40);
    v23.location = 0;
    v23.length = Count;
    CFArrayApplyFunction(a1, v23, sub_10000455C, &context);
    v4 = 41;
LABEL_3:
    putchar(v4);
    return;
  }

  if (v2 == CFBooleanGetTypeID())
  {
    if (CFBooleanGetValue(a1))
    {
      v5 = "Yes";
    }

    else
    {
      v5 = "No";
    }

LABEL_9:

    printf(v5);
    return;
  }

  if (v2 == CFDataGetTypeID())
  {
    putchar(60);
    Length = CFDataGetLength(a1);
    BytePtr = CFDataGetBytePtr(a1);
    if (Length >= 1)
    {
      v8 = 0;
      v9 = 0;
      v10 = 0;
LABEL_15:
      if (BytePtr[v8])
      {
        v11 = v8 < Length;
      }

      else
      {
        v11 = 0;
      }

      if (!v11)
      {
        goto LABEL_39;
      }

      while (1)
      {
        v12 = BytePtr[v8];
        if (v12 < 0)
        {
          if (__maskrune(BytePtr[v8], 0x40000uLL))
          {
LABEL_22:
            ++v10;
            goto LABEL_26;
          }
        }

        else if ((_DefaultRuneLocale.__runetype[v12] & 0x40000) != 0)
        {
          goto LABEL_22;
        }

        if (BytePtr[v8] > -2)
        {
          if (BytePtr[v8])
          {
            goto LABEL_39;
          }

          if (++v8 >= Length)
          {
            goto LABEL_39;
          }

          goto LABEL_15;
        }

        ++v9;
LABEL_26:
        if (Length == ++v8)
        {
          v8 = Length;
          goto LABEL_39;
        }
      }
    }

    v10 = 0;
    v9 = 0;
    v8 = 0;
LABEL_39:
    v14 = v9 > v10 >> 2 || Length == 1;
    if ((v14 | byte_100010208))
    {
      v15 = 0;
    }

    else
    {
      v15 = v8;
    }

    if (v10 && v15 >= Length)
    {
      if (Length >= 1)
      {
        v16 = 0;
        for (i = 0; i != Length; ++i)
        {
          while (!BytePtr[i])
          {
            if (v16 == 1)
            {
              putchar(34);
              v16 = 0;
              if (++i != Length)
              {
                continue;
              }
            }

            goto LABEL_65;
          }

          if (!v16)
          {
            if (i)
            {
              printf(",");
            }

            else
            {
              putchar(34);
            }

            v16 = 1;
          }

          putchar(BytePtr[i]);
        }

        putchar(34);
      }
    }

    else if (Length >= 1)
    {
      do
      {
        v18 = *BytePtr++;
        printf("%02x", v18);
        --Length;
      }

      while (Length);
    }

LABEL_65:

    putchar(62);
  }

  else
  {
    if (v2 == CFDictionaryGetTypeID())
    {
      v20 = 1;
      putchar(123);
      CFDictionaryApplyFunction(a1, sub_1000045A8, &v20);
      v4 = 125;
      goto LABEL_3;
    }

    if (v2 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      if (CFNumberGetValue(a1, kCFNumberLongLongType, &valuePtr))
      {
        if (byte_100010208)
        {
          printf("0x%qx");
        }

        else
        {
          printf("%qu");
        }
      }
    }

    else if (v2 == CFSetGetTypeID())
    {

      sub_100004438(a1);
    }

    else
    {
      if (v2 != CFStringGetTypeID())
      {
        v5 = "<unknown object>";
        goto LABEL_9;
      }

      sub_100004494(a1);
    }
  }
}

uint64_t sub_100004438(const __CFSet *a1)
{
  context = 1;
  putchar(91);
  CFSetApplyFunction(a1, sub_100004608, &context);
  return putchar(93);
}

void sub_100004494(const __CFString *a1)
{
  CStringPtr = CFStringGetCStringPtr(a1, 0);
  if (CStringPtr)
  {
    printf("%s", CStringPtr);
  }

  else
  {
    Length = CFStringGetLength(a1);
    v4 = malloc_type_malloc(Length + 1, 0x100004077774924uLL);
    if (v4)
    {
      v5 = v4;
      if (CFStringGetCString(a1, v4, Length + 1, 0))
      {
        printf("%s", v5);
      }

      free(v5);
    }
  }
}

uint64_t sub_10000455C(uint64_t a1, _BYTE *a2)
{
  if (*a2)
  {
    *a2 = 0;
  }

  else
  {
    putchar(44);
  }

  return sub_100004064(a1);
}

uint64_t sub_1000045A8(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (*a3)
  {
    *a3 = 0;
  }

  else
  {
    putchar(44);
  }

  sub_100004064(a1);
  putchar(61);

  return sub_100004064(a2);
}

uint64_t sub_100004608(uint64_t a1, _BYTE *a2)
{
  if (*a2)
  {
    *a2 = 0;
  }

  else
  {
    putchar(44);
  }

  return sub_100004064(a1);
}

void sub_100004654()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

uint64_t sub_100004688(uint64_t a1, const void **a2)
{
  v2 = *sub_100004734(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_100004734(uint64_t a1, uint64_t *a2, const void **a3)
{
  v5 = a1 + 8;
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!sub_100004828(a1, a3, (v4 + 32)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!sub_100004828(a1, (v8 + 32), a3))
      {
        break;
      }

      v5 = v8 + 8;
      v4 = *(v8 + 8);
    }

    while (v4);
  }

  else
  {
    v8 = a1 + 8;
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

uint64_t *sub_1000047D0(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_100004894(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

BOOL sub_100004828(uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a3 + 23);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v4 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v3 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = a3[1];
  }

  if (v3 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (v7 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  v10 = memcmp(v6, v8, v9);
  if (v10)
  {
    return v10 < 0;
  }

  else
  {
    return v5 < v7;
  }
}

uint64_t *sub_100004894(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void sub_100004A30(uint64_t a1, char *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = *(__p + 14);
    if (v3 == 4)
    {
      v4 = (__p + 64);
      sub_100004ABC(&v4);
    }

    else if (v3 == 3 && __p[87] < 0)
    {
      operator delete(*(__p + 8));
    }

    if (__p[55] < 0)
    {
      operator delete(*(__p + 4));
    }

    goto LABEL_11;
  }

  if (__p)
  {
LABEL_11:
    operator delete(__p);
  }
}

void sub_100004ABC(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_100004B10(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_100004B10(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void *sub_100004B60(void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_100004BB8(a1, *a2, a2 + 1);
  return a1;
}

uint64_t sub_100004BB8(uint64_t result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_100004C40(v5, (v5 + 1), v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t sub_100004C40(void *a1, uint64_t a2, const void **a3)
{
  result = *sub_100004CC4(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_100004E68();
  }

  return result;
}

uint64_t sub_100004CC4(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, const void **a5)
{
  v9 = (a1 + 1);
  if (a1 + 1 != a2 && !sub_100004828(a1, a5, (a2 + 32)))
  {
    if (!sub_100004828(a1, (a2 + 32), a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = (a2 + 8);
    v13 = *(a2 + 8);
    if (v13)
    {
      v14 = *(a2 + 8);
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!sub_100004828(a1, a5, v15 + 4))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return v12 + 8;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = *(v11 + 8);
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = *(v16 + 16);
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (sub_100004828(a1, (v12 + 32), a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return sub_100004734(a1, a3, a5);
}

void sub_100004EE0(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_100004A30(v3, v2);
  _Unwind_Resume(a1);
}

void *sub_100004EFC(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005004(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  v5 = *(a2 + 6);
  *(__dst + 6) = v5;
  if (v5 > 2)
  {
    if (v5 == 4)
    {
      __dst[4] = 0;
      __dst[5] = 0;
      __dst[6] = 0;
      sub_1000050A8((__dst + 4), *(a2 + 4), *(a2 + 5), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 5) - *(a2 + 4)) >> 3));
    }

    else if (v5 == 3)
    {
      if (*(a2 + 55) < 0)
      {
        sub_100005004(__dst + 32, *(a2 + 4), *(a2 + 5));
      }

      else
      {
        v6 = a2[2];
        __dst[6] = *(a2 + 6);
        *(__dst + 2) = v6;
      }
    }
  }

  else if (v5 == 1)
  {
    *(__dst + 32) = *(a2 + 32);
  }

  else if (v5 == 2)
  {
    __dst[4] = *(a2 + 4);
  }

  return __dst;
}

void sub_100004FE8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100005004(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_1000011C0();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

uint64_t sub_1000050A8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100005130(result, a4);
  }

  return result;
}

void sub_100005110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_100004ABC(&a9);
  _Unwind_Resume(a1);
}

void sub_100005130(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_100005194(a1, a2);
  }

  sub_10000517C();
}

void sub_100005194(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_100004654();
}

char *sub_1000051EC(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v11 = __dst;
  v12 = __dst;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_100005004(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        *(v4 + 2) = *(v6 + 2);
        *v4 = v7;
      }

      v6 = (v6 + 24);
      v4 += 24;
      v12 = v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_1000052AC(v9);
  return v4;
}

uint64_t sub_1000052AC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1000052E4(a1);
  }

  return a1;
}

void sub_1000052E4(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 1);
    v1 -= 3;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

void sub_10000532C(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_10000532C(a1, *a2);
    sub_10000532C(a1, *(a2 + 1));
    v4 = *(a2 + 14);
    if (v4 == 4)
    {
      v5 = (a2 + 64);
      sub_100004ABC(&v5);
    }

    else if (v4 == 3 && a2[87] < 0)
    {
      operator delete(*(a2 + 8));
    }

    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

const __CFString *sub_1000053C4(char *a1, unint64_t a2, const __CFAllocator *a3, uint64_t a4, void *a5)
{
  v6 = a2;
  if (a5)
  {
    *a5 = 0;
  }

  v8 = 0;
  if (a2 < 4 || (a1 & 3) != 0)
  {
    return v8;
  }

  v9 = *a1;
  if (v9 == 212)
  {
    v57 = a2 >> 2;
    v10 = malloc_type_calloc(a2 >> 2, 8uLL, 0xC0040B8AA526DuLL);
    goto LABEL_12;
  }

  if (v9 == 211)
  {
    if (a1[1])
    {
      return 0;
    }
  }

  else if (211 != v9)
  {
    return 0;
  }

  v57 = 0;
  v10 = 0;
LABEL_12:
  __src = 0;
  v11 = 0;
  v76 = 0;
  key = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v58 = 0;
  v62 = 0;
  v59 = 0;
  v60 = 0;
  v63 = a1;
  v75 = a1 + 4;
  v61 = v10 != 0;
  v16 = 4;
  alloc = a3;
  v65 = v10;
  v69 = v6;
  while (2)
  {
    v17 = v13;
    do
    {
      while (1)
      {
        v18 = v14;
        v19 = v17;
        v70 = v15;
        v20 = v16 + 4;
        if (v16 + 4 > v6)
        {
          goto LABEL_108;
        }

        v21 = v75 + 4;
        v22 = *v75 & 0xFFFFFFLL;
        v23 = *v75 & 0x7F000000;
        v24 = (v23 - 0x1000000) >> 24;
        theSet = v12;
        LODWORD(v74) = *v75;
        if (v24 <= 6)
        {
          if ((v23 - 0x1000000) >> 24 > 1)
          {
            if (v24 != 2)
            {
              if (v24 != 3)
              {
                goto LABEL_108;
              }

              v20 = v16 + 12;
              if (v16 + 12 > v6)
              {
                goto LABEL_108;
              }

              if (v22 < 0x21)
              {
                v28 = kCFNumberSInt32Type;
              }

              else
              {
                v28 = kCFNumberSInt64Type;
              }

              v15 = CFNumberCreate(a3, v28, v21);
              v67 = 0;
              v68 = 0;
              memset(v73, 0, sizeof(v73));
              v29 = 0;
              v21 = v75 + 12;
              goto LABEL_54;
            }

            Mutable = CFSetCreateMutable(a3, v22, &kCFTypeSetCallBacks);
            v67 = 0;
            v68 = 0;
            *v73 = v22 != 0;
            *&v73[4] = Mutable;
          }

          else if (v24)
          {
            if (v24 != 1)
            {
              goto LABEL_108;
            }

            Mutable = CFArrayCreateMutable(a3, v22, &kCFTypeArrayCallBacks);
            v68 = 0;
            *&v73[8] = 0;
            *v73 = v22 != 0;
            v67 = Mutable;
          }

          else
          {
            Mutable = CFDictionaryCreateMutable(a3, v22, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            v67 = 0;
            *&v73[8] = 0;
            *v73 = v22 != 0;
            v68 = Mutable;
          }

          v15 = Mutable;
          v29 = v61;
          goto LABEL_54;
        }

        v25 = (v22 + 3) >> 2;
        if ((v23 - 0x1000000) >> 24 <= 8)
        {
          if (v24 == 7)
          {
            if (!v22)
            {
              goto LABEL_108;
            }

            LODWORD(v22) = v22 - 1;
          }

          else if (v24 != 8)
          {
            goto LABEL_108;
          }

          v20 += 4 * v25;
          if (v20 > v6)
          {
            goto LABEL_108;
          }

          v30 = v10;
          v31 = v11;
          v32 = v22;
          if (v23 == 0x8000000 && v21[v22])
          {
            v8 = 0;
            LODWORD(v11) = v31;
            v10 = v30;
            goto LABEL_109;
          }

          v15 = CFStringCreateWithBytes(alloc, v21, v22, 0x8000100u, 0);
          if (!v15)
          {
            v15 = CFStringCreateWithBytes(alloc, v21, v32, 0, 0);
            CStringPtr = CFStringGetCStringPtr(v15, 0);
            syslog(3, "FIXME: IOUnserialize has detected a string that is not valid UTF-8, %s.", CStringPtr);
          }

          v67 = 0;
          v68 = 0;
          memset(v73, 0, sizeof(v73));
          v29 = 0;
          v21 += 4 * v25;
          v11 = v31;
          v10 = v30;
          a3 = alloc;
        }

        else
        {
          switch(v24)
          {
            case 9u:
              v20 += 4 * v25;
              if (v20 > v6)
              {
                goto LABEL_108;
              }

              v15 = CFDataCreate(a3, v21, v22);
              v67 = 0;
              v68 = 0;
              memset(v73, 0, sizeof(v73));
              v29 = 0;
              v21 += 4 * v25;
              break;
            case 0xAu:
              v15 = (v22 ? kCFBooleanTrue : kCFBooleanFalse);
              CFRetain(v15);
              v67 = 0;
              v68 = 0;
              memset(v73, 0, sizeof(v73));
              v29 = 0;
              break;
            case 0xBu:
              if (v10)
              {
                if (v57 <= v22)
                {
                  goto LABEL_108;
                }

                v26 = &v10[v22];
              }

              else
              {
                if (v22 >= v76)
                {
                  goto LABEL_108;
                }

                v26 = &__src[8 * v22];
              }

              v15 = *v26;
              if (!*v26)
              {
                v8 = 0;
                goto LABEL_109;
              }

              memset(v73, 0, sizeof(v73));
              v67 = 0;
              v68 = 0;
LABEL_76:
              v16 = v20;
              v75 = v21;
              goto LABEL_77;
            default:
              goto LABEL_108;
          }
        }

LABEL_54:
        if (!v15)
        {
          goto LABEL_108;
        }

        if (v76 < v11)
        {
          v34 = v11;
          v35 = __src;
          goto LABEL_64;
        }

        if (!BYTE3(v11))
        {
          v34 = (v11 + 64);
          v37 = malloc_type_malloc((8 * v34), 0xC0040B8AA526DuLL);
          if (v37)
          {
            v35 = v37;
            if (__src)
            {
              memmove(v37, __src, (8 * v11));
              free(__src);
            }

            a3 = alloc;
LABEL_64:
            *&v35[8 * v76] = v15;
            v36 = 1;
            __src = v35;
            v11 = v34;
          }

          else
          {
            v36 = 0;
          }

          v10 = v65;
          if (!v65)
          {
            goto LABEL_67;
          }

LABEL_66:
          v10[(v75 - v63) >> 2] = v15;
          goto LABEL_67;
        }

        v36 = 0;
        if (v10)
        {
          goto LABEL_66;
        }

LABEL_67:
        if (!v36)
        {
          goto LABEL_107;
        }

        ++v76;
        if (!v29)
        {
          goto LABEL_76;
        }

        v16 = v20 + 4;
        if (v20 + 4 > v69)
        {
LABEL_107:
          CFRelease(v15);
          goto LABEL_108;
        }

        v75 = v21 + 4;
LABEL_77:
        v17 = v19;
        v14 = v18;
        if (v18)
        {
          v38 = *&v73[4];
          if (!key)
          {
            TypeID = CFStringGetTypeID();
            v40 = CFGetTypeID(v15);
            key = v15;
            v6 = v69;
            v41 = v74;
            if (TypeID != v40)
            {
              goto LABEL_108;
            }

            goto LABEL_89;
          }

          v6 = v69;
          if (v15 != v14)
          {
            CFDictionarySetValue(v14, key, v15);
          }

          key = 0;
LABEL_88:
          v41 = v74;
          goto LABEL_89;
        }

        v38 = *&v73[4];
        if (v17)
        {
          CFArrayAppendValue(v17, v15);
          v6 = v69;
          goto LABEL_88;
        }

        v6 = v69;
        if (theSet)
        {
          CFSetAddValue(theSet, v15);
          goto LABEL_88;
        }

        v47 = v58 | v70;
        v58 = v15;
        v41 = v74;
        if (v47)
        {
          goto LABEL_108;
        }

LABEL_89:
        if (*v73)
        {
          break;
        }

        v15 = v70;
        v12 = theSet;
        if (v41 < 0)
        {
          v42 = v62;
          if (!v62)
          {
            v8 = v58;
            goto LABEL_109;
          }

          v15 = v60[v62--];
          v43 = CFGetTypeID(v60[v42]);
          v44 = CFDictionaryGetTypeID();
          v12 = 0;
          v17 = 0;
          v14 = v15;
          if (v43 != v44)
          {
            v45 = CFArrayGetTypeID();
            v12 = 0;
            v14 = 0;
            v17 = v15;
            if (v43 != v45)
            {
              v46 = CFSetGetTypeID();
              v17 = 0;
              v14 = 0;
              v8 = 0;
              v12 = v15;
              if (v43 != v46)
              {
                goto LABEL_109;
              }
            }
          }
        }
      }

      v12 = v38;
      v17 = v67;
      v14 = v68;
    }

    while (v41 < 0);
    if (++v62 < v59)
    {
      v48 = v11;
      v49 = v60;
      v50 = v59;
LABEL_106:
      v12 = *&v73[4];
      v13 = v67;
      v14 = v68;
      v49[v62] = v70;
      v59 = v50;
      v60 = v49;
      v11 = v48;
      continue;
    }

    break;
  }

  if (HIWORD(v59))
  {
LABEL_108:
    v8 = 0;
    goto LABEL_109;
  }

  v48 = v11;
  v50 = v59 + 64;
  v51 = malloc_type_malloc(8 * (v59 + 64), 0xC0040B8AA526DuLL);
  if (v51)
  {
    v49 = v51;
    if (v60)
    {
      memmove(v51, v60, 8 * v59);
      free(v60);
    }

    goto LABEL_106;
  }

  v8 = 0;
  LODWORD(v11) = v48;
LABEL_109:
  if (v11)
  {
    v52 = v8 != 0;
    v53 = v76 - v52;
    if (v76 > v52)
    {
      v54 = &__src[8 * (v8 != 0)];
      do
      {
        v55 = *v54++;
        CFRelease(v55);
        --v53;
      }

      while (v53);
    }

    free(__src);
  }

  if (v59)
  {
    free(v60);
  }

  if (v10)
  {
    free(v10);
  }

  return v8;
}

const __CFString *sub_100005B58(char *a1, unint64_t a2, const __CFAllocator *a3, uint64_t a4, void *a5)
{
  if (a5)
  {
    *a5 = 0;
  }

  if (a1 && a2 >= 4 && ((a4 & 1) != 0 || (v5 = *a1, v5 == 212) || v5 == 211 && !a1[1]))
  {
    return sub_1000053C4(a1, a2, a3, a4, a5);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100005B98(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  existing = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    MatchingServices = IOServiceGetMatchingServices(kIOMainPortDefault, v3, &existing);
    if (MatchingServices)
    {
      NSLog(@"Matching returned error: %d", MatchingServices);
      v6 = 0;
      goto LABEL_22;
    }

    while (1)
    {
      v13 = IOIteratorNext(existing);
      if (!v13)
      {
        break;
      }

      v4[2](v4, v13);
      IOObjectRelease(v13);
    }

    IOObjectRelease(existing);
LABEL_19:
    v6 = 1;
    goto LABEL_22;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_19;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v8)
  {
    v9 = *v16;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = IOServiceGetMatchingServices(kIOMainPortDefault, *(*(&v15 + 1) + 8 * v10), &existing);
        if (v11)
        {
          NSLog(@"Matching returned error: %d", v11);
          v6 = 0;
          goto LABEL_21;
        }

        while (1)
        {
          v12 = IOIteratorNext(existing);
          if (!v12)
          {
            break;
          }

          v4[2](v4, v12);
          IOObjectRelease(v12);
        }

        IOObjectRelease(existing);
        v10 = v10 + 1;
      }

      while (v10 != v8);
      v8 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v6 = 1;
LABEL_21:

LABEL_22:
  return v6;
}

id sub_100005E20(void *a1, uint64_t a2)
{
  v3 = a1;
  if (a2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v5 = &off_10000CE88;
  }

  else
  {
    v5 = v3;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 longLongValue];
    if (a2 == 16)
    {
      v7 = @"%#llx";
    }

    else
    {
      v7 = @"%lld";
    }

    v8 = [NSString stringWithFormat:v7, v6];
  }

  else
  {
    v8 = [NSString stringWithFormat:@"%@", v5];
  }

  v9 = v8;

  return v9;
}

id sub_100005F10(uint64_t *a1)
{
  if (*(a1 + 23) >= 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = *a1;
  }

  v2 = [NSMutableString stringWithUTF8String:v1];
  v29 = 0;
  v3 = [NSRegularExpression regularExpressionWithPattern:@"0[xX][0-9a-f]+" options:1 error:&v29];
  v4 = v29;
  v5 = 0;
  v6 = 0;
  while (1)
  {
    v7 = [v3 firstMatchInString:v2 options:0 range:{v6, objc_msgSend(v2, "length") - v6}];

    if (!v7)
    {
      break;
    }

    v8 = [v7 range];
    v10 = [v2 substringWithRange:{v8, v9}];
    v11 = [NSScanner scannerWithString:v10];

    v28 = 0;
    [v11 scanHexLongLong:&v28];
    v12 = [NSString stringWithFormat:@"%llu", v28];
    v13 = [v7 range];
    [v2 replaceCharactersInRange:v13 withString:{v14, v12}];
    v15 = [v7 range];
    v6 = &v15[[v12 length]];

    v5 = v7;
  }

  if (!v2 || ![v2 length])
  {
    v17 = 0;
    goto LABEL_19;
  }

  v16 = [v2 substringToIndex:1];
  if ([v16 isEqual:@"["])
  {

    goto LABEL_13;
  }

  v18 = [v2 substringToIndex:1];
  v19 = [v18 isEqual:@"{"];

  if (v19)
  {
LABEL_13:
    v20 = [v2 dataUsingEncoding:4];
    v27 = 0;
    v21 = [NSJSONSerialization JSONObjectWithData:v20 options:1 error:&v27];
    v22 = v27;

    v17 = v21;
    if (!v22)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v22 = 0;
  v21 = 0;
LABEL_16:
  v23 = [v2 dataUsingEncoding:4];
  v26 = 0;
  v17 = [NSPropertyListSerialization propertyListWithData:v23 options:0 format:0 error:&v26];
  v24 = v26;

  if (v24)
  {
    NSLog(@"ERROR! Failed to parse property string [%@] JSON error: %@ Plist error: %@", v2, v22, v24);
  }

LABEL_19:

  return v17;
}

id sub_1000062D0(unsigned __int8 **a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (v1 == *a1)
  {
    v6 = 0;
  }

  else
  {
    v4 = 0;
    do
    {
      v5 = v2[23];
      if ((v5 & 0x8000000000000000) != 0)
      {
        v5 = *(v2 + 1);
      }

      v4 += (v5 >> 1) + (v5 & 1);
      v2 += 24;
    }

    while (v2 != v1);
    v6 = objc_opt_new();
    [v6 setLength:v4];
    v7 = [v6 mutableBytes];
    v8 = *a1;
    v9 = a1[1];
    if (*a1 != v9)
    {
      v10 = 0;
      do
      {
        v11 = v8[23];
        if (v11 < 0)
        {
          v11 = *(v8 + 1);
        }

        if (v11 >= 1)
        {
          v12 = (v11 - 1) + 2;
          while (1)
          {
            v13 = v8[23];
            v14 = v12 - 2;
            if (v12 == 2)
            {
              break;
            }

            v15 = v8;
            if (v13 < 0)
            {
              v15 = *v8;
            }

            v16 = v15[v12 - 2];
            v17 = v16 - 97;
            v18 = v16 + 9;
            if ((v16 - 65) < 6)
            {
              LOBYTE(v16) = v16 + 9;
            }

            if (v17 <= 5)
            {
              LOBYTE(v16) = v18;
            }

            v19 = v8;
            if (v8[23] < 0)
            {
              v19 = *v8;
            }

            v20 = v16 & 0xF;
            v21 = v19[v12 - 3];
            v22 = v21 - 97;
            v23 = v21 + 9;
            if ((v21 - 65) < 6)
            {
              LOBYTE(v21) = v21 + 9;
            }

            if (v22 <= 5)
            {
              LOBYTE(v21) = v23;
            }

            v7[v10++] = v20 | (16 * v21);
            v12 = v14;
            if (v14 <= 1)
            {
              goto LABEL_34;
            }
          }

          v24 = v8;
          if (v13 < 0)
          {
            v24 = *v8;
          }

          v25 = *v24;
          v26 = v25 - 97;
          v27 = v25 + 9;
          if ((v25 - 65) < 6)
          {
            LOBYTE(v25) = v25 + 9;
          }

          if (v26 <= 5)
          {
            LOBYTE(v25) = v27;
          }

          v7[v10++] = v25 & 0xF;
        }

LABEL_34:
        v8 += 24;
      }

      while (v8 != v9);
    }
  }

  return v6;
}

void sub_100006480(unsigned __int8 *a1, unint64_t a2, int a3)
{
  errorString = 0;
  if (a2)
  {
    if (a3 == 2)
    {

      sub_100000B30(a1, a2, 0, 0);
      return;
    }

    v4 = IOCFUnserializeWithSize(a1, a2, kCFAllocatorDefault, 0, &errorString);
    v5 = v4;
    if (v4)
    {
      switch(a3)
      {
        case 0:
          v11 = 0;
          v10 = [NSPropertyListSerialization dataWithPropertyList:v4 format:100 options:0 error:&v11];
          v7 = v11;
          if (v10)
          {
            printf("%.*s", [v10 length], objc_msgSend(v10, "bytes"));
          }

          else
          {
            NSLog(@"ERROR! Unable to convert to xml\n");
          }

          goto LABEL_26;
        case 1:
          if ([NSJSONSerialization isValidJSONObject:v4])
          {
            v9 = [NSJSONSerialization dataWithJSONObject:v5 options:1 error:0];
            v7 = v9;
            if (v9)
            {
              printf("%.*s\n", [v9 length], objc_msgSend(v9, "bytes"));
LABEL_26:

              break;
            }
          }

          NSLog(@"ERROR! Unable to convert to json\n");
          break;
        case 3:
          v6 = [v4 description];
          v7 = v6;
          if (v6)
          {
            v8 = [v6 UTF8String];
          }

          else
          {
            v8 = "(blank)";
          }

          puts(v8);
          goto LABEL_26;
      }
    }

    else
    {
      NSLog(@"ERROR! Unable to unserialize object\n");
    }

    return;
  }

  puts("(blank)");
}

void sub_1000066D0(io_registry_entry_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    CFProperty = IORegistryEntryCreateCFProperty(a1, @"role", 0, 0);
    v10 = CFProperty;
    v11[0] = @"IOPropertyMatch";
    v9 = @"role";
    v8 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v12[0] = v8;
    v12[1] = @"md-allocator";
    v11[1] = @"IOPropertyExistsMatch";
    v11[2] = @"IOProviderClass";
    v12[2] = @"AFKMemoryDescriptorManager";
    v5 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:3];
  }

  sub_100005B98(v5, v6);
}

void sub_1000067F8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t sub_100006838(uint64_t a1)
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  sub_100001368(__p, "--matching");
  v28 = __p;
  v2 = *(sub_100004688(a1, __p) + 56);
  if ((v23 & 0x80000000) == 0)
  {
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_100001368(__p, "--role");
    v28 = __p;
    v5 = *(sub_100004688(a1, __p) + 56);
    if (v23 < 0)
    {
      operator delete(__p[0]);
      if (v5)
      {
LABEL_8:
        sub_100001368(__p, "--role");
        v28 = __p;
        v6 = sub_100004688(a1, __p);
        sub_1000033D4((v6 + 56), 3u);
        v7 = (v6 + 64);
        if (*(v6 + 87) < 0)
        {
          v7 = *v7;
        }

        v8 = [NSString stringWithCString:v7 encoding:1];
        if (v23 < 0)
        {
          operator delete(__p[0]);
        }

        v4 = IOServiceMatching("AFKEndpointInterface");
        v9 = [NSMutableDictionary dictionaryWithObject:v8 forKey:@"role"];
        sub_100001368(__p, "--name");
        v28 = __p;
        v10 = *(sub_100004688(a1, __p) + 56);
        if (v23 < 0)
        {
          operator delete(__p[0]);
          if (v10)
          {
            goto LABEL_14;
          }
        }

        else if (v10)
        {
LABEL_14:
          sub_100001368(__p, "--name");
          v28 = __p;
          v11 = sub_100004688(a1, __p);
          sub_1000033D4((v11 + 56), 3u);
          v12 = (v11 + 64);
          if (*(v11 + 87) < 0)
          {
            v12 = *v12;
          }

          v13 = [NSString stringWithCString:v12 encoding:1];
          if (v23 < 0)
          {
            operator delete(__p[0]);
          }

          [v4 setObject:v13 forKey:@"IONameMatch"];

          goto LABEL_23;
        }

        [v9 setObject:&__kCFBooleanTrue forKey:@"system-service"];
LABEL_23:
        [v4 setObject:v9 forKey:@"IOPropertyMatch"];

        goto LABEL_24;
      }
    }

    else if (v5)
    {
      goto LABEL_8;
    }

    v4 = 0;
    goto LABEL_24;
  }

  operator delete(__p[0]);
  if (!v2)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_100001368(__p, "--matching");
  v28 = __p;
  v3 = sub_100004688(a1, __p);
  sub_1000033D4((v3 + 56), 3u);
  v4 = sub_100005F10((v3 + 64));
  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_24:
  sub_100001368(__p, "FILENAME");
  v28 = __p;
  v14 = *(sub_100004688(a1, __p) + 56);
  if (v23 < 0)
  {
    operator delete(__p[0]);
    if (v14)
    {
      goto LABEL_26;
    }
  }

  else if (v14)
  {
LABEL_26:
    sub_100001368(__p, "FILENAME");
    v28 = __p;
    v15 = sub_100004688(a1, __p);
    sub_1000033D4((v15 + 56), 3u);
    v16 = (v15 + 64);
    if (*(v15 + 87) < 0)
    {
      v16 = *v16;
    }

    if (v23 < 0)
    {
      operator delete(__p[0]);
    }

    v17 = 0;
    goto LABEL_35;
  }

  sub_100001368(__p, "--reset");
  v28 = __p;
  v17 = *(sub_100004688(a1, __p) + 56) != 0;
  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  v16 = 0;
LABEL_35:
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100006DBC;
  v20[3] = &unk_10000C6F0;
  v21 = v17;
  v20[4] = &v24;
  v20[5] = v16;
  sub_100005B98(v4, v20);
  v18 = *(v25 + 6);
  _Block_object_dispose(&v24, 8);

  return v18;
}

BOOL sub_100006DBC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) == 1)
  {
    result = sub_100006E18(a2);
  }

  else
  {
    result = sub_10000708C(a2, *(a1 + 40));
  }

  *(*(*(a1 + 32) + 8) + 24) |= result;
  return result;
}

BOOL sub_100006E18(uint64_t a1)
{
  v19 = AFKEndpointInterfaceDataQueueSizeKey;
  v20 = &off_10000CEA0;
  v2 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v3 = [AFKEndpointInterface withService:a1 properties:v2];

  v4 = dispatch_semaphore_create(0);
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v5 = dispatch_queue_create("afktool", 0);
  [v3 setDispatchQueue:v5];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100007444;
  v12[3] = &unk_10000C568;
  v14 = &v15;
  v6 = v4;
  v13 = v6;
  [v3 setResponseHandler:v12];
  [v3 activate:1];
  v11 = 0;
  LODWORD(v10) = 0;
  v7 = [v3 enqueueCommand:213 timestamp:mach_continuous_time() inputBuffer:0 inputBufferSize:0 outputPayloadSize:16 context:&v11 options:v10];
  *(v16 + 6) = v7;
  if (v7)
  {
    goto LABEL_5;
  }

  if (dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL))
  {
    v7 = 3758097110;
    *(v16 + 6) = -536870186;
LABEL_5:
    NSLog(@"ERROR!enqueueCommand:%x", v7);
    goto LABEL_6;
  }

  v7 = *(v16 + 6);
  if (v7)
  {
    goto LABEL_5;
  }

LABEL_6:
  [v3 cancel];
  v8 = *(v16 + 6) != 0;

  _Block_object_dispose(&v15, 8);
  return v8;
}

void sub_100007030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, ...)
{
  va_start(va, a10);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_10000708C(uint64_t a1, uint64_t a2)
{
  v29 = AFKEndpointInterfaceDataQueueSizeKey;
  v30 = &off_10000CEA0;
  v4 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  v5 = [AFKEndpointInterface withService:a1 properties:v4];

  v6 = dispatch_semaphore_create(0);
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v7 = dispatch_queue_create("afktool", 0);
  v8 = objc_alloc_init(NSMutableData);
  [v5 setDispatchQueue:v7];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100007458;
  v22[3] = &unk_10000C568;
  v24 = &v25;
  v9 = v6;
  v23 = v9;
  [v5 setResponseHandler:v22];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10000746C;
  v20[3] = &unk_10000C718;
  v10 = v8;
  v21 = v10;
  [v5 setReportHandler:v20];
  [v5 activate:1];
  v19 = 0;
  LODWORD(v17) = 0;
  v11 = [v5 enqueueCommand:211 timestamp:mach_continuous_time() inputBuffer:0 inputBufferSize:0 outputPayloadSize:16 context:&v19 options:v17];
  *(v26 + 6) = v11;
  if (v11)
  {
    NSLog(@"ERROR!enqueueCommand:%x", v11);
  }

  else if (dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL))
  {
    NSLog(@"ERROR!enqueueCommand: timeout");
    *(v26 + 6) = -536870186;
  }

  else
  {
    v12 = [NSString stringWithUTF8String:a2];
    v18 = 0;
    v13 = [v10 writeToFile:v12 options:1 error:&v18];
    v14 = v18;

    if ((v13 & 1) == 0)
    {
      NSLog(@"ERROR! Saving codecoverage data to file:%@", v14);
      *(v26 + 6) = -536870212;
    }
  }

  [v5 cancel];
  v15 = *(v26 + 6) != 0;

  _Block_object_dispose(&v25, 8);
  return v15;
}

void sub_1000073B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id *sub_10000746C(id *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3 == 212)
  {
    return [result[4] appendBytes:a5 length:a6];
  }

  return result;
}

uint64_t start(int a1, uint64_t a2)
{
  sub_100001368(v13, "Usage: afktool (--help | -v...)\n  afktool registry (--role=<role> [--name=<name>] | --matching=<matching>) [-x]  [--archive [--format=<fmt>] [--path=<dir>]] [--buffer=<size>]\n\nOptions:\n  -r --role=<role>           IOP  role\n  -a --archive               Archive output\n  -x --hex                   Output numbers as hexidecimal. This option does not apply when creating an archive from ioreg.\n  --buffer=<value>           The size of the command buffer to use. By default this is 64KB.\n  -f --format=<fmt>          Archive or response output format (xml,bin)\n  -p --path=<dir>            Save output to files at this path instead of stdout (1 file per role)\n  -m --matching=<matching>   Service matching dictionary in json or xml format");
  v11[0] = 0;
  v11[1] = 0;
  v12 = 0;
  sub_1000076C8(v11, a2 + 8, a2 + 8 * a1, (8 * a1 - 8) >> 3);
  sub_100001368(__p, "AppleFirmwareKit ToolvRC_ProjectBuildVersion Oct 10 2025 21:27:44");
  docopt::docopt();
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  __p[0] = v11;
  sub_100004ABC(__p);
  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  sub_100001368(v13, "registry");
  v11[0] = v13;
  if (*(sub_100004688(v15, v13) + 56))
  {
    sub_100001368(v11, "registry");
    __p[0] = v11;
    v4 = sub_100004688(v15, v11);
    sub_1000033D4((v4 + 56), 1u);
    v5 = *(v4 + 64);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(v11[0]);
    }
  }

  else
  {
    v5 = 0;
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
    if (v5)
    {
      goto LABEL_11;
    }

LABEL_13:
    v6 = 1;
    goto LABEL_14;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_11:
  sub_100004B60(v8, v15);
  v6 = sub_100001268(v8);
  sub_10000532C(v8, v8[1]);
LABEL_14:
  sub_10000532C(v15, v15[1]);
  return v6;
}

void sub_100007634(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  sub_10000532C(&a9, a10);
  sub_10000532C(v26 - 48, *(v26 - 40));
  _Unwind_Resume(a1);
}

uint64_t sub_1000076C8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100005130(result, a4);
  }

  return result;
}

void sub_100007730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_100004ABC(&a9);
  _Unwind_Resume(a1);
}

_BYTE *sub_100007750(uint64_t a1, char **a2, char **a3, _BYTE *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_100001368(v4, *v6++);
      v4 = v11 + 24;
      v11 += 24;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_1000052AC(v8);
  return v4;
}

void sub_1000077F4(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "0x%llx: AFKIOCFUnserializeWithSize failed", &v2, 0xCu);
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}